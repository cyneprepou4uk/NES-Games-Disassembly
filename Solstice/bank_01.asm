.segment "BANK_01"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $8000  ; for listing file
; 0x008010-0x01000F



con_include_bank = $01



.export ofs_0x008010_0E_check_if_room_was_visited
.export ofs_0x00801A_0C_set_room_visited_flag
.export ofs_0x00802A_0D_clear_room_visited_flag
.export ofs_0x00806B_14_check_if_bonus_was_picked
.export ofs_0x008075_12_set_bonus_picked_flag
.export ofs_0x008085_13_clear_bonus_picked_flag
.export ofs_0x008140_08
.export ofs_0x00817A_07
.export ofs_0x0081A2_09
.export ofs_0x0081E0_0A
.export ofs_0x008203_01
.export ofs_0x00822D_02
.export ofs_0x00825C_03
.export ofs_0x008266_04
.export ofs_0x00828B_05
.export ofs_0x008299_06
.export ofs_0x0082C3_00
.export ofs_0x008531_20_draw_static_screen
.export ofs_0x00BCD4_23
.export ofs_0x00BE26_26
.export tbl_0x00BE86_ending_credits
.export tbl_0x00C4BA



ofs_0x008010_0E_check_if_room_was_visited:
C - - - - - 0x008010 02:8000: 20 2A 80  JSR sub_802A_calculate_room_ppu_addr
C - - - - - 0x008013 02:8003: CD 07 20  CMP $2007   ; dummy read
C - - - - - 0x008016 02:8006: 2D 07 20  AND $2007   ; actual read
C - - - - - 0x008019 02:8009: 60        RTS



ofs_0x00801A_0C_set_room_visited_flag:
C - - - - - 0x00801A 02:800A: 20 2A 80  JSR sub_802A_calculate_room_ppu_addr
C - - - - - 0x00801D 02:800D: CD 07 20  CMP $2007   ; dummy read
C - - - - - 0x008020 02:8010: 0D 07 20  ORA $2007   ; actual read
C - - - - - 0x008023 02:8013: 20 46 80  JSR sub_8046_set_2006
C - - - - - 0x008026 02:8016: 8D 07 20  STA $2007
C - - - - - 0x008029 02:8019: 60        RTS



ofs_0x00802A_0D_clear_room_visited_flag:
C - - - - - 0x00802A 02:801A: 20 2A 80  JSR sub_802A_calculate_room_ppu_addr
C - - - - - 0x00802D 02:801D: CD 07 20  CMP $2007   ; dummy read
C - - - - - 0x008030 02:8020: 2D 07 20  AND $2007   ; actual read
C - - - - - 0x008033 02:8023: 20 46 80  JSR sub_8046_set_2006
C - - - - - 0x008036 02:8026: 8D 07 20  STA $2007
C - - - - - 0x008039 02:8029: 60        RTS



sub_802A_calculate_room_ppu_addr:
C - - - - - 0x00803A 02:802A: 86 09     STX ram_0009
C - - - - - 0x00803C 02:802C: 48        PHA
C - - - - - 0x00803D 02:802D: 4A        LSR
C - - - - - 0x00803E 02:802E: 4A        LSR
C - - - - - 0x00803F 02:802F: 4A        LSR
C - - - - - 0x008040 02:8030: 18        CLC
C - - - - - 0x008041 02:8031: 69 D0     ADC #< $1FD0
C - - - - - 0x008043 02:8033: 85 26     STA ram_0026    ; ppu lo
C - - - - - 0x008045 02:8035: 68        PLA
C - - - - - 0x008046 02:8036: 29 07     AND #$07
C - - - - - 0x008048 02:8038: AA        TAX
C - - - - - 0x008049 02:8039: BD 53 80  LDA tbl_8053_bits,X
C - - - - - 0x00804C 02:803C: 85 2C     STA ram_002C
C - - - - - 0x00804E 02:803E: 20 46 80  JSR sub_8046_set_2006
C - - - - - 0x008051 02:8041: A6 09     LDX ram_0009
C - - - - - 0x008053 02:8043: A5 2C     LDA ram_002C
C - - - - - 0x008055 02:8045: 60        RTS



sub_8046_set_2006:
; bzk optimize, same as 0x0080B1
C - - - - - 0x008056 02:8046: 48        PHA
C - - - - - 0x008057 02:8047: A9 1F     LDA #$1F
C - - - - - 0x008059 02:8049: 8D 06 20  STA $2006
C - - - - - 0x00805C 02:804C: A5 26     LDA ram_0026
C - - - - - 0x00805E 02:804E: 8D 06 20  STA $2006
C - - - - - 0x008061 02:8051: 68        PLA
C - - - - - 0x008062 02:8052: 60        RTS



tbl_8053_bits:
- D 0 - - - 0x008063 02:8053: 80        .byte $80   ; 00
- D 0 - - - 0x008064 02:8054: 40        .byte $40   ; 01
- D 0 - - - 0x008065 02:8055: 20        .byte $20   ; 02
- D 0 - - - 0x008066 02:8056: 10        .byte $10   ; 03
- D 0 - - - 0x008067 02:8057: 08        .byte $08   ; 04
- D 0 - - - 0x008068 02:8058: 04        .byte $04   ; 05
- D 0 - - - 0x008069 02:8059: 02        .byte $02   ; 06
- D 0 - - - 0x00806A 02:805A: 01        .byte $01   ; 07



ofs_0x00806B_14_check_if_bonus_was_picked:
C - - - - - 0x00806B 02:805B: 20 85 80  JSR sub_8085_calculate_bonus_ppu_addr
C - - - - - 0x00806E 02:805E: CD 07 20  CMP $2007   ; dummy read
C - - - - - 0x008071 02:8061: 2D 07 20  AND $2007   ; actual read
C - - - - - 0x008074 02:8064: 60        RTS



ofs_0x008075_12_set_bonus_picked_flag:
C - - - - - 0x008075 02:8065: 20 85 80  JSR sub_8085_calculate_bonus_ppu_addr
C - - - - - 0x008078 02:8068: CD 07 20  CMP $2007   ; dummy read
C - - - - - 0x00807B 02:806B: 0D 07 20  ORA $2007   ; actual read
C - - - - - 0x00807E 02:806E: 20 A1 80  JSR sub_80A1_set_2006
C - - - - - 0x008081 02:8071: 8D 07 20  STA $2007
C - - - - - 0x008084 02:8074: 60        RTS



ofs_0x008085_13_clear_bonus_picked_flag:
C - - - - - 0x008085 02:8075: 20 85 80  JSR sub_8085_calculate_bonus_ppu_addr
C - - - - - 0x008088 02:8078: CD 07 20  CMP $2007   ; dummy read
C - - - - - 0x00808B 02:807B: 2D 07 20  AND $2007   ; actual read
C - - - - - 0x00808E 02:807E: 20 A1 80  JSR sub_80A1_set_2006
C - - - - - 0x008091 02:8081: 8D 07 20  STA $2007
C - - - - - 0x008094 02:8084: 60        RTS



sub_8085_calculate_bonus_ppu_addr:
C - - - - - 0x008095 02:8085: 86 09     STX ram_0009
C - - - - - 0x008097 02:8087: 48        PHA
C - - - - - 0x008098 02:8088: 4A        LSR
C - - - - - 0x008099 02:8089: 4A        LSR
C - - - - - 0x00809A 02:808A: 4A        LSR
C - - - - - 0x00809B 02:808B: 18        CLC
C - - - - - 0x00809C 02:808C: 69 C8     ADC #< $1FC8
C - - - - - 0x00809E 02:808E: 85 26     STA ram_0026    ; ppu lo
C - - - - - 0x0080A0 02:8090: 68        PLA
C - - - - - 0x0080A1 02:8091: 29 07     AND #$07
C - - - - - 0x0080A3 02:8093: AA        TAX
C - - - - - 0x0080A4 02:8094: BD 53 80  LDA tbl_8053_bits,X
C - - - - - 0x0080A7 02:8097: 85 2C     STA ram_002C
C - - - - - 0x0080A9 02:8099: 20 A1 80  JSR sub_80A1_set_2006
C - - - - - 0x0080AC 02:809C: A6 09     LDX ram_0009
C - - - - - 0x0080AE 02:809E: A5 2C     LDA ram_002C
C - - - - - 0x0080B0 02:80A0: 60        RTS



sub_80A1_set_2006:
C - - - - - 0x0080B1 02:80A1: 48        PHA
C - - - - - 0x0080B2 02:80A2: A9 1F     LDA #$1F
C - - - - - 0x0080B4 02:80A4: 8D 06 20  STA $2006
C - - - - - 0x0080B7 02:80A7: A5 26     LDA ram_0026
C - - - - - 0x0080B9 02:80A9: 8D 06 20  STA $2006
C - - - - - 0x0080BC 02:80AC: 68        PLA
C - - - - - 0x0080BD 02:80AD: 60        RTS



tbl_80AE:
- D 0 - - - 0x0080BE 02:80AE: 0E        .byte $0E   ; 00
- D 0 - - - 0x0080BF 02:80AF: 0E        .byte $0E   ; 01
- D 0 - - - 0x0080C0 02:80B0: 0C        .byte $0C   ; 02
- D 0 - - - 0x0080C1 02:80B1: 0A        .byte $0A   ; 03
- D 0 - - - 0x0080C2 02:80B2: 08        .byte $08   ; 04
- D 0 - - - 0x0080C3 02:80B3: 06        .byte $06   ; 05
- D 0 - - - 0x0080C4 02:80B4: 04        .byte $04   ; 06
- D 0 - - - 0x0080C5 02:80B5: 04        .byte $04   ; 07
- D 0 - - - 0x0080C6 02:80B6: 04        .byte $04   ; 08
- D 0 - - - 0x0080C7 02:80B7: 04        .byte $04   ; 09
- D 0 - - - 0x0080C8 02:80B8: 04        .byte $04   ; 0A
- D 0 - - - 0x0080C9 02:80B9: 04        .byte $04   ; 0B
- D 0 - - - 0x0080CA 02:80BA: 04        .byte $04   ; 0C
- D 0 - - - 0x0080CB 02:80BB: 04        .byte $04   ; 0D
- D 0 - - - 0x0080CC 02:80BC: 04        .byte $04   ; 0E
- D 0 - - - 0x0080CD 02:80BD: 06        .byte $06   ; 0F
- D 0 - - - 0x0080CE 02:80BE: 08        .byte $08   ; 10
- D 0 - - - 0x0080CF 02:80BF: 0A        .byte $0A   ; 11
- D 0 - - - 0x0080D0 02:80C0: 0C        .byte $0C   ; 12
- D 0 - - - 0x0080D1 02:80C1: 0E        .byte $0E   ; 13

tbl_80C2_offset:
- D 0 - - - 0x0080D2 02:80C2: 04        .byte $04   ; 00
- D 0 - - - 0x0080D3 02:80C3: 04        .byte $04   ; 01
- D 0 - - - 0x0080D4 02:80C4: 08        .byte $08   ; 02
- D 0 - - - 0x0080D5 02:80C5: 0C        .byte $0C   ; 03
- D 0 - - - 0x0080D6 02:80C6: 10        .byte $10   ; 04
- D 0 - - - 0x0080D7 02:80C7: 14        .byte $14   ; 05
- D 0 - - - 0x0080D8 02:80C8: 18        .byte $18   ; 06
- D 0 - - - 0x0080D9 02:80C9: 18        .byte $18   ; 07
- D 0 - - - 0x0080DA 02:80CA: 18        .byte $18   ; 08
- D 0 - - - 0x0080DB 02:80CB: 18        .byte $18   ; 09
- D 0 - - - 0x0080DC 02:80CC: 18        .byte $18   ; 0A
- D 0 - - - 0x0080DD 02:80CD: 18        .byte $18   ; 0B
- D 0 - - - 0x0080DE 02:80CE: 18        .byte $18   ; 0C
- D 0 - - - 0x0080DF 02:80CF: 18        .byte $18   ; 0D
- D 0 - - - 0x0080E0 02:80D0: 18        .byte $18   ; 0E
- D 0 - - - 0x0080E1 02:80D1: 14        .byte $14   ; 0F
- D 0 - - - 0x0080E2 02:80D2: 10        .byte $10   ; 10
- D 0 - - - 0x0080E3 02:80D3: 0C        .byte $0C   ; 11
- D 0 - - - 0x0080E4 02:80D4: 08        .byte $08   ; 12
- D 0 - - - 0x0080E5 02:80D5: 04        .byte $04   ; 13

tbl_80D6_lo:
- D 0 - - - 0x0080E6 02:80D6: 80        .byte < ( ram_0480         )    ; 00 0480
- D 0 - - - 0x0080E7 02:80D7: 84        .byte < ( ram_0480 + $0004 )    ; 01 0484
- D 0 - - - 0x0080E8 02:80D8: 88        .byte < ( ram_0480 + $0008 )    ; 02 0488
- D 0 - - - 0x0080E9 02:80D9: 90        .byte < ( ram_0480 + $0010 )    ; 03 0490
- D 0 - - - 0x0080EA 02:80DA: 9C        .byte < ( ram_0480 + $001C )    ; 04 049C
- D 0 - - - 0x0080EB 02:80DB: AC        .byte < ( ram_0480 + $002C )    ; 05 04AC
- D 0 - - - 0x0080EC 02:80DC: C0        .byte < ( ram_0480 + $0040 )    ; 06 04C0
- D 0 - - - 0x0080ED 02:80DD: D8        .byte < ( ram_0480 + $0058 )    ; 07 04D8
- D 0 - - - 0x0080EE 02:80DE: F0        .byte < ( ram_0480 + $0070 )    ; 08 04F0
- D 0 - - - 0x0080EF 02:80DF: 08        .byte < ( ram_0480 + $0088 )    ; 09 0508
- D 0 - - - 0x0080F0 02:80E0: 20        .byte < ( ram_0480 + $00A0 )    ; 0A 0520
- D 0 - - - 0x0080F1 02:80E1: 38        .byte < ( ram_0480 + $00B8 )    ; 0B 0538
- D 0 - - - 0x0080F2 02:80E2: 50        .byte < ( ram_0480 + $00D0 )    ; 0C 0550
- D 0 - - - 0x0080F3 02:80E3: 68        .byte < ( ram_0480 + $00E8 )    ; 0D 0568
- D 0 - - - 0x0080F4 02:80E4: 80        .byte < ( ram_0480 + $0100 )    ; 0E 0580
- D 0 - - - 0x0080F5 02:80E5: 98        .byte < ( ram_0480 + $0118 )    ; 0F 0598
- D 0 - - - 0x0080F6 02:80E6: AC        .byte < ( ram_0480 + $012C )    ; 10 05AC
- D 0 - - - 0x0080F7 02:80E7: BC        .byte < ( ram_0480 + $013C )    ; 11 05BC
- D 0 - - - 0x0080F8 02:80E8: C8        .byte < ( ram_0480 + $0148 )    ; 12 05C8
- D 0 - - - 0x0080F9 02:80E9: D0        .byte < ( ram_0480 + $0150 )    ; 13 05D0

tbl_80EA_hi:
- D 0 - - - 0x0080FA 02:80EA: 04        .byte > ( ram_0480         )    ; 00 0480
- D 0 - - - 0x0080FB 02:80EB: 04        .byte > ( ram_0480 + $0004 )    ; 01 0484
- D 0 - - - 0x0080FC 02:80EC: 04        .byte > ( ram_0480 + $0008 )    ; 02 0488
- D 0 - - - 0x0080FD 02:80ED: 04        .byte > ( ram_0480 + $0010 )    ; 03 0490
- D 0 - - - 0x0080FE 02:80EE: 04        .byte > ( ram_0480 + $001C )    ; 04 049C
- D 0 - - - 0x0080FF 02:80EF: 04        .byte > ( ram_0480 + $002C )    ; 05 04AC
- D 0 - - - 0x008100 02:80F0: 04        .byte > ( ram_0480 + $0040 )    ; 06 04C0
- D 0 - - - 0x008101 02:80F1: 04        .byte > ( ram_0480 + $0058 )    ; 07 04D8
- D 0 - - - 0x008102 02:80F2: 04        .byte > ( ram_0480 + $0070 )    ; 08 04F0
- D 0 - - - 0x008103 02:80F3: 05        .byte > ( ram_0480 + $0088 )    ; 09 0508
- D 0 - - - 0x008104 02:80F4: 05        .byte > ( ram_0480 + $00A0 )    ; 0A 0520
- D 0 - - - 0x008105 02:80F5: 05        .byte > ( ram_0480 + $00B8 )    ; 0B 0538
- D 0 - - - 0x008106 02:80F6: 05        .byte > ( ram_0480 + $00D0 )    ; 0C 0550
- D 0 - - - 0x008107 02:80F7: 05        .byte > ( ram_0480 + $00E8 )    ; 0D 0568
- D 0 - - - 0x008108 02:80F8: 05        .byte > ( ram_0480 + $0100 )    ; 0E 0580
- D 0 - - - 0x008109 02:80F9: 05        .byte > ( ram_0480 + $0118 )    ; 0F 0598
- D 0 - - - 0x00810A 02:80FA: 05        .byte > ( ram_0480 + $012C )    ; 10 05AC
- D 0 - - - 0x00810B 02:80FB: 05        .byte > ( ram_0480 + $013C )    ; 11 05BC
- D 0 - - - 0x00810C 02:80FC: 05        .byte > ( ram_0480 + $0148 )    ; 12 05C8
- D 0 - - - 0x00810D 02:80FD: 05        .byte > ( ram_0480 + $0150 )    ; 13 05D0



tbl_80FE:
- D 0 - - - 0x00810E 02:80FE: 0E        .byte $0E   ; 00
- D 0 - - - 0x00810F 02:80FF: 10        .byte $10   ; 01
- - - - - - 0x008110 02:8100: 0C        .byte $0C   ; 02
- D 0 - - - 0x008111 02:8101: 10        .byte $10   ; 03
- D 0 - - - 0x008112 02:8102: 0C        .byte $0C   ; 04
- - - - - - 0x008113 02:8103: 10        .byte $10   ; 05
- D 0 - - - 0x008114 02:8104: 0C        .byte $0C   ; 06
- D 0 - - - 0x008115 02:8105: 12        .byte $12   ; 07
- D 0 - - - 0x008116 02:8106: 0A        .byte $0A   ; 08
- D 0 - - - 0x008117 02:8107: 0E        .byte $0E   ; 09
- - - - - - 0x008118 02:8108: 0F        .byte $0F   ; 0A
- D 0 - - - 0x008119 02:8109: 0D        .byte $0D   ; 0B
- D 0 - - - 0x00811A 02:810A: 10        .byte $10   ; 0C
- D 0 - - - 0x00811B 02:810B: 0C        .byte $0C   ; 0D
- D 0 - - - 0x00811C 02:810C: 11        .byte $11   ; 0E
- D 0 - - - 0x00811D 02:810D: 0B        .byte $0B   ; 0F
- D 0 - - - 0x00811E 02:810E: 0E        .byte $0E   ; 10
- D 0 - - - 0x00811F 02:810F: 0F        .byte $0F   ; 11
- D 0 - - - 0x008120 02:8110: 0D        .byte $0D   ; 12
- D 0 - - - 0x008121 02:8111: 10        .byte $10   ; 13
- D 0 - - - 0x008122 02:8112: 0C        .byte $0C   ; 14
- D 0 - - - 0x008123 02:8113: 0E        .byte $0E   ; 15
- D 0 - - - 0x008124 02:8114: 0F        .byte $0F   ; 16
- D 0 - - - 0x008125 02:8115: 0D        .byte $0D   ; 17
- D 0 - - - 0x008126 02:8116: 0E        .byte $0E   ; 18

tbl_8117:
- D 0 - - - 0x008127 02:8117: 05        .byte $05   ; 00
- D 0 - - - 0x008128 02:8118: 05        .byte $05   ; 01
- - - - - - 0x008129 02:8119: 06        .byte $06   ; 02
- D 0 - - - 0x00812A 02:811A: 06        .byte $06   ; 03
- D 0 - - - 0x00812B 02:811B: 06        .byte $06   ; 04
- - - - - - 0x00812C 02:811C: 06        .byte $06   ; 05
- D 0 - - - 0x00812D 02:811D: 06        .byte $06   ; 06
- D 0 - - - 0x00812E 02:811E: 07        .byte $07   ; 07
- D 0 - - - 0x00812F 02:811F: 07        .byte $07   ; 08
- D 0 - - - 0x008130 02:8120: 06        .byte $06   ; 09
- - - - - - 0x008131 02:8121: 06        .byte $06   ; 0A
- D 0 - - - 0x008132 02:8122: 07        .byte $07   ; 0B
- D 0 - - - 0x008133 02:8123: 07        .byte $07   ; 0C
- D 0 - - - 0x008134 02:8124: 07        .byte $07   ; 0D
- D 0 - - - 0x008135 02:8125: 07        .byte $07   ; 0E
- D 0 - - - 0x008136 02:8126: 08        .byte $08   ; 0F
- D 0 - - - 0x008137 02:8127: 07        .byte $07   ; 10
- D 0 - - - 0x008138 02:8128: 07        .byte $07   ; 11
- D 0 - - - 0x008139 02:8129: 08        .byte $08   ; 12
- D 0 - - - 0x00813A 02:812A: 08        .byte $08   ; 13
- D 0 - - - 0x00813B 02:812B: 08        .byte $08   ; 14
- D 0 - - - 0x00813C 02:812C: 08        .byte $08   ; 15
- D 0 - - - 0x00813D 02:812D: 08        .byte $08   ; 16
- D 0 - - - 0x00813E 02:812E: 09        .byte $09   ; 17
- D 0 - - - 0x00813F 02:812F: 09        .byte $09   ; 18



ofs_0x008140_08:
C - - - - - 0x008140 02:8130: A6 13     LDX ram_0013
C - - - - - 0x008142 02:8132: A4 14     LDY ram_0014
C - - - - - 0x008144 02:8134: 20 56 82  JSR sub_8256
C - - - - - 0x008147 02:8137: 10 05     BPL bra_813E
C - - - - - 0x008149 02:8139: AA        TAX
C - - - - - 0x00814A 02:813A: BD 80 03  LDA ram_0380,X
C - - - - - 0x00814D 02:813D: 2C        .byte $2C   ; BIT opcode
bra_813E:
C - - - - - 0x00814E 02:813E: 2C A9 00  LDA #$00
C - - - - - 0x008150 02:8140: A2 00     LDX #$00
C - - - - - 0x008152 02:8142: 86 27     STX ram_0027
C - - - - - 0x008154 02:8144: 0A        ASL
C - - - - - 0x008155 02:8145: 26 27     ROL ram_0027
C - - - - - 0x008157 02:8147: 0A        ASL
C - - - - - 0x008158 02:8148: 26 27     ROL ram_0027
C - - - - - 0x00815A 02:814A: 0A        ASL
C - - - - - 0x00815B 02:814B: 26 27     ROL ram_0027
C - - - - - 0x00815D 02:814D: 18        CLC
C - - - - - 0x00815E 02:814E: 69 EB     ADC #< tbl_F0EB
C - - - - - 0x008160 02:8150: 85 26     STA ram_0026
C - - - - - 0x008162 02:8152: A5 27     LDA ram_0027
C - - - - - 0x008164 02:8154: 69 F0     ADC #> tbl_F0EB
C - - - - - 0x008166 02:8156: 85 27     STA ram_0027
C - - - - - 0x008168 02:8158: A0 07     LDY #$07
bra_815A_loop:
C - - - - - 0x00816A 02:815A: B1 26     LDA (ram_0026),Y
C - - - - - 0x00816C 02:815C: 39 9D 00  AND ram_009D,Y
C - - - - - 0x00816F 02:815F: 99 AD 00  STA ram_00AD,Y
C - - - - - 0x008172 02:8162: 88        DEY
C - - - - - 0x008173 02:8163: 10 F5     BPL bra_815A_loop
C - - - - - 0x008175 02:8165: 20 92 81  JSR sub_8192
C - - - - - 0x008178 02:8168: AA        TAX
C - - - - - 0x008179 02:8169: 60        RTS



ofs_0x00817A_07:
C - - - - - 0x00817A 02:816A: A0 00     LDY #$00
C - - - - - 0x00817C 02:816C: 84 04     STY ram_0004
C - - - - - 0x00817E 02:816E: 0A        ASL
C - - - - - 0x00817F 02:816F: 26 04     ROL ram_0004
C - - - - - 0x008181 02:8171: 0A        ASL
C - - - - - 0x008182 02:8172: 26 04     ROL ram_0004
C - - - - - 0x008184 02:8174: 0A        ASL
C - - - - - 0x008185 02:8175: 26 04     ROL ram_0004
C - - - - - 0x008187 02:8177: 18        CLC
C - - - - - 0x008188 02:8178: 69 EB     ADC #< tbl_F0EB
C - - - - - 0x00818A 02:817A: 85 03     STA ram_0003
C - - - - - 0x00818C 02:817C: A5 04     LDA ram_0004
C - - - - - 0x00818E 02:817E: 69 F0     ADC #> tbl_F0EB
C - - - - - 0x008190 02:8180: 85 04     STA ram_0004
C - - - - - 0x008192 02:8182: A0 07     LDY #$07
bra_8184_loop:
C - - - - - 0x008194 02:8184: B1 03     LDA (ram_0003),Y
C - - - - - 0x008196 02:8186: D9 AD 00  CMP ram_00AD,Y
C - - - - - 0x008199 02:8189: D0 05     BNE bra_8190
C - - - - - 0x00819B 02:818B: 88        DEY
C - - - - - 0x00819C 02:818C: 10 F6     BPL bra_8184_loop
C - - - - - 0x00819E 02:818E: 18        CLC
C - - - - - 0x00819F 02:818F: 60        RTS
bra_8190:
C - - - - - 0x0081A0 02:8190: 38        SEC
C - - - - - 0x0081A1 02:8191: 60        RTS



sub_8192:
ofs_0x0081A2_09:
; code tries to find a 8 bytes match and returns index
C - - - - - 0x0081A2 02:8192: A2 00     LDX #$00
C - - - - - 0x0081A4 02:8194: A9 EB     LDA #< tbl_F0EB
C - - - - - 0x0081A6 02:8196: 85 22     STA ram_0022
C - - - - - 0x0081A8 02:8198: A9 F0     LDA #> tbl_F0EB
C - - - - - 0x0081AA 02:819A: 85 23     STA ram_0023
bra_819C_search_loop:
C - - - - - 0x0081AC 02:819C: A0 07     LDY #$07
bra_819E_compare_loop:
C - - - - - 0x0081AE 02:819E: B9 AD 00  LDA ram_00AD,Y
C - - - - - 0x0081B1 02:81A1: D1 22     CMP (ram_0022),Y
C - - - - - 0x0081B3 02:81A3: D0 05     BNE bra_81AA_check_failed
C - - - - - 0x0081B5 02:81A5: 88        DEY
C - - - - - 0x0081B6 02:81A6: 10 F6     BPL bra_819E_compare_loop
; if perfect match
C - - - - - 0x0081B8 02:81A8: 8A        TXA
C - - - - - 0x0081B9 02:81A9: 60        RTS
bra_81AA_check_failed:
; try next 8 bytes
C - - - - - 0x0081BA 02:81AA: A5 22     LDA ram_0022
C - - - - - 0x0081BC 02:81AC: 18        CLC
C - - - - - 0x0081BD 02:81AD: 69 08     ADC #$08
C - - - - - 0x0081BF 02:81AF: 85 22     STA ram_0022
C - - - - - 0x0081C1 02:81B1: 90 02     BCC bra_81B5_not_overflow
C - - - - - 0x0081C3 02:81B3: E6 23     INC ram_0023
bra_81B5_not_overflow:
C - - - - - 0x0081C5 02:81B5: E8        INX
C - - - - - 0x0081C6 02:81B6: EC EA F0  CPX tbl_F0EA_max_index
C - - - - - 0x0081C9 02:81B9: D0 E1     BNE bra_819C_search_loop
; bzk optimize, rts was never used, and the F0EB table goes only up to EA
; so the game obviously can find what it's looking for before it runs out of options
- - - - - - 0x0081CB 02:81BB: 60        RTS


; bzk garbage
- - - - - - 0x0081CC 02:81BC: A0 07     LDY #$07
bra_81BE_loop:
- - - - - - 0x0081CE 02:81BE: B9 AD 00  LDA ram_00AD,Y
- - - - - - 0x0081D1 02:81C1: 91 22     STA (ram_0022),Y
- - - - - - 0x0081D3 02:81C3: 88        DEY
- - - - - - 0x0081D4 02:81C4: 10 F8     BPL bra_81BE_loop
- - - - - - 0x0081D6 02:81C6: 8A        TXA
- - - - - - 0x0081D7 02:81C7: EE EA F0  INC tbl_F0EA_max_index
- - - - - - 0x0081DA 02:81CA: F0 01     BEQ bra_81CD
- - - - - - 0x0081DC 02:81CC: 60        RTS
bra_81CD:
- - - - - - 0x0081DD 02:81CD: 4C 06 50  JMP $5006



ofs_0x0081E0_0A:
C - - - - - 0x0081E0 02:81D0: A0 00     LDY #$00
C - - - - - 0x0081E2 02:81D2: 84 04     STY ram_0004
C - - - - - 0x0081E4 02:81D4: 0A        ASL
C - - - - - 0x0081E5 02:81D5: 26 04     ROL ram_0004
C - - - - - 0x0081E7 02:81D7: 0A        ASL
C - - - - - 0x0081E8 02:81D8: 26 04     ROL ram_0004
C - - - - - 0x0081EA 02:81DA: 0A        ASL
C - - - - - 0x0081EB 02:81DB: 26 04     ROL ram_0004
C - - - - - 0x0081ED 02:81DD: 18        CLC
C - - - - - 0x0081EE 02:81DE: 69 EB     ADC #< tbl_F0EB
C - - - - - 0x0081F0 02:81E0: 85 03     STA ram_0003
C - - - - - 0x0081F2 02:81E2: A5 04     LDA ram_0004
C - - - - - 0x0081F4 02:81E4: 69 F0     ADC #> tbl_F0EB
C - - - - - 0x0081F6 02:81E6: 85 04     STA ram_0004
C - - - - - 0x0081F8 02:81E8: A0 07     LDY #$07
bra_81EA_loop:
C - - - - - 0x0081FA 02:81EA: B1 03     LDA (ram_0003),Y
C - - - - - 0x0081FC 02:81EC: 99 9D 00  STA ram_009D,Y
C - - - - - 0x0081FF 02:81EF: 88        DEY
C - - - - - 0x008200 02:81F0: 10 F8     BPL bra_81EA_loop
C - - - - - 0x008202 02:81F2: 60        RTS



ofs_0x008203_01:
C - - - - - 0x008203 02:81F3: A9 20     LDA #> $2080
C - - - - - 0x008205 02:81F5: 8D 06 20  STA $2006
C - - - - - 0x008208 02:81F8: A9 80     LDA #< $2080
C - - - - - 0x00820A 02:81FA: 8D 06 20  STA $2006
C - - - - - 0x00820D 02:81FD: CD 07 20  CMP $2007   ; dummy read
C - - - - - 0x008210 02:8200: A0 00     LDY #$00
bra_8202_loop:
C - - - - - 0x008212 02:8202: A2 00     LDX #$00
bra_8204_loop:
C - - - - - 0x008214 02:8204: AD 07 20  LDA $2007
C - - - - - 0x008217 02:8207: 86 05     STX ram_0005
C - - - - - 0x008219 02:8209: 84 06     STY ram_0006
C - - - - - 0x00821B 02:820B: 20 4C 82  JSR sub_824C
C - - - - - 0x00821E 02:820E: A6 05     LDX ram_0005
C - - - - - 0x008220 02:8210: A4 06     LDY ram_0006
C - - - - - 0x008222 02:8212: E8        INX
C - - - - - 0x008223 02:8213: E0 20     CPX #$20
C - - - - - 0x008225 02:8215: D0 ED     BNE bra_8204_loop
C - - - - - 0x008227 02:8217: C8        INY
C - - - - - 0x008228 02:8218: C0 14     CPY #$14
C - - - - - 0x00822A 02:821A: D0 E6     BNE bra_8202_loop
C - - - - - 0x00822C 02:821C: 60        RTS



ofs_0x00822D_02:
- - - - - - 0x00822D 02:821D: A9 20     LDA #> $2080
- - - - - - 0x00822F 02:821F: 8D 06 20  STA $2006
- - - - - - 0x008232 02:8222: A9 80     LDA #< $2080
- - - - - - 0x008234 02:8224: 8D 06 20  STA $2006
- - - - - - 0x008237 02:8227: A0 00     LDY #$00
bra_8229_loop:
- - - - - - 0x008239 02:8229: A2 00     LDX #$00
bra_822B_loop:
- - - - - - 0x00823B 02:822B: 86 05     STX ram_0005
- - - - - - 0x00823D 02:822D: 84 06     STY ram_0006
- - - - - - 0x00823F 02:822F: 20 56 82  JSR sub_8256
- - - - - - 0x008242 02:8232: 90 06     BCC bra_823A
- - - - - - 0x008244 02:8234: AD 07 20  LDA $2007
- - - - - - 0x008247 02:8237: 4C 3D 82  JMP loc_823D
bra_823A:
- - - - - - 0x00824A 02:823A: 8D 07 20  STA $2007
loc_823D:
- - - - - - 0x00824D 02:823D: A6 05     LDX ram_0005
- - - - - - 0x00824F 02:823F: A4 06     LDY ram_0006
- - - - - - 0x008251 02:8241: E8        INX
- - - - - - 0x008252 02:8242: E0 20     CPX #$20
- - - - - - 0x008254 02:8244: D0 E5     BNE bra_822B_loop
- - - - - - 0x008256 02:8246: C8        INY
- - - - - - 0x008257 02:8247: C0 14     CPY #$14
- - - - - - 0x008259 02:8249: D0 DE     BNE bra_8229_loop
- - - - - - 0x00825B 02:824B: 60        RTS



sub_824C:
ofs_0x00825C_03:
C - - - - - 0x00825C 02:824C: 48        PHA
C - - - - - 0x00825D 02:824D: 20 56 82  JSR sub_8256
C - - - - - 0x008260 02:8250: 68        PLA
C - - - - - 0x008261 02:8251: B0 02     BCS bra_8255_RTS
C - - - - - 0x008263 02:8253: 91 26     STA (ram_0026),Y
bra_8255_RTS:
C - - - - - 0x008265 02:8255: 60        RTS



sub_8256:
ofs_0x008266_04:
C - - - - - 0x008266 02:8256: C0 14     CPY #$14
C - - - - - 0x008268 02:8258: B0 1D     BCS bra_8277
; 00-13
C - - - - - 0x00826A 02:825A: 8A        TXA
C - - - - - 0x00826B 02:825B: 38        SEC
C - - - - - 0x00826C 02:825C: F9 AE 80  SBC tbl_80AE,Y
C - - - - - 0x00826F 02:825F: 30 16     BMI bra_8277
C - - - - - 0x008271 02:8261: D9 C2 80  CMP tbl_80C2_offset,Y
C - - - - - 0x008274 02:8264: B0 11     BCS bra_8277
C - - - - - 0x008276 02:8266: AA        TAX
C - - - - - 0x008277 02:8267: B9 D6 80  LDA tbl_80D6_lo,Y
C - - - - - 0x00827A 02:826A: 85 26     STA ram_0026
C - - - - - 0x00827C 02:826C: B9 EA 80  LDA tbl_80EA_hi,Y
C - - - - - 0x00827F 02:826F: 85 27     STA ram_0027
C - - - - - 0x008281 02:8271: 8A        TXA
C - - - - - 0x008282 02:8272: A8        TAY
C - - - - - 0x008283 02:8273: B1 26     LDA (ram_0026),Y
C - - - - - 0x008285 02:8275: 18        CLC
C - - - - - 0x008286 02:8276: 60        RTS
bra_8277:
C - - - - - 0x008287 02:8277: A9 00     LDA #$00
C - - - - - 0x008289 02:8279: 38        SEC
C - - - - - 0x00828A 02:827A: 60        RTS



ofs_0x00828B_05:
C - - - - - 0x00828B 02:827B: A6 13     LDX ram_0013
C - - - - - 0x00828D 02:827D: A4 14     LDY ram_0014
C - - - - - 0x00828F 02:827F: 48        PHA
C - - - - - 0x008290 02:8280: 20 8D 82  JSR sub_828D
C - - - - - 0x008293 02:8283: 68        PLA
C - - - - - 0x008294 02:8284: B0 02     BCS bra_8288_RTS
C - - - - - 0x008296 02:8286: 91 26     STA (ram_0026),Y
bra_8288_RTS:
C - - - - - 0x008298 02:8288: 60        RTS



sub_8289:
ofs_0x008299_06:
C - - - - - 0x008299 02:8289: A6 13     LDX ram_0013
C - - - - - 0x00829B 02:828B: A4 14     LDY ram_0014
sub_828D:
C - - - - - 0x00829D 02:828D: C0 14     CPY #$14
C - - - - - 0x00829F 02:828F: B0 E6     BCS bra_8277
; 00-13
C - - - - - 0x0082A1 02:8291: 8A        TXA
C - - - - - 0x0082A2 02:8292: 38        SEC
C - - - - - 0x0082A3 02:8293: F9 AE 80  SBC tbl_80AE,Y
C - - - - - 0x0082A6 02:8296: 30 DF     BMI bra_8277
C - - - - - 0x0082A8 02:8298: D9 C2 80  CMP tbl_80C2_offset,Y
C - - - - - 0x0082AB 02:829B: B0 DA     BCS bra_8277
C - - - - - 0x0082AD 02:829D: AA        TAX
C - - - - - 0x0082AE 02:829E: B9 D6 80  LDA tbl_80D6_lo,Y
; 0480-05D3 + 0154 = 05D4-0727
C - - - - - 0x0082B1 02:82A1: 38        SEC
C - - - - - 0x0082B2 02:82A2: E9 AC     SBC #< ((ram_05D4 - ram_0480) ^ $FFFF + $01)
C - - - - - 0x0082B4 02:82A4: 85 26     STA ram_0026
C - - - - - 0x0082B6 02:82A6: B9 EA 80  LDA tbl_80EA_hi,Y
C - - - - - 0x0082B9 02:82A9: E9 FE     SBC #> ((ram_05D4 - ram_0480) ^ $FFFF + $01)
C - - - - - 0x0082BB 02:82AB: 85 27     STA ram_0027
C - - - - - 0x0082BD 02:82AD: 8A        TXA
C - - - - - 0x0082BE 02:82AE: A8        TAY
C - - - - - 0x0082BF 02:82AF: B1 26     LDA (ram_0026),Y
C - - - - - 0x0082C1 02:82B1: 18        CLC
C - - - - - 0x0082C2 02:82B2: 60        RTS



ofs_0x0082C3_00:
C - - - - - 0x0082C3 02:82B3: A5 00     LDA ram_0000
C - - - - - 0x0082C5 02:82B5: 9D 34 07  STA ram_spr_index,X
C - - - - - 0x0082C8 02:82B8: 18        CLC
C - - - - - 0x0082C9 02:82B9: 69 18     ADC #$18
C - - - - - 0x0082CB 02:82BB: 85 00     STA ram_0000
C - - - - - 0x0082CD 02:82BD: A5 45     LDA ram_0045
C - - - - - 0x0082CF 02:82BF: 9D 30 07  STA ram_tile_for_spr,X
C - - - - - 0x0082D2 02:82C2: 18        CLC
C - - - - - 0x0082D3 02:82C3: 69 06     ADC #$06
C - - - - - 0x0082D5 02:82C5: 85 45     STA ram_0045
C - - - - - 0x0082D7 02:82C7: A4 29     LDY ram_0029
C - - - - - 0x0082D9 02:82C9: B9 FE 80  LDA tbl_80FE,Y
C - - - - - 0x0082DC 02:82CC: 0A        ASL
C - - - - - 0x0082DD 02:82CD: 0A        ASL
C - - - - - 0x0082DE 02:82CE: 0A        ASL
C - - - - - 0x0082DF 02:82CF: 18        CLC
C - - - - - 0x0082E0 02:82D0: 75 31     ADC ram_pos_Y_obj,X
C - - - - - 0x0082E2 02:82D2: 38        SEC
C - - - - - 0x0082E3 02:82D3: F5 2D     SBC ram_pos_X_obj,X
C - - - - - 0x0082E5 02:82D5: 18        CLC
C - - - - - 0x0082E6 02:82D6: 69 09     ADC #$09
C - - - - - 0x0082E8 02:82D8: 85 11     STA ram_0011
C - - - - - 0x0082EA 02:82DA: 9D 28 07  STA ram_pos_X_spr,X
C - - - - - 0x0082ED 02:82DD: 4A        LSR
C - - - - - 0x0082EE 02:82DE: 4A        LSR
C - - - - - 0x0082EF 02:82DF: 4A        LSR
C - - - - - 0x0082F0 02:82E0: 85 13     STA ram_0013
C - - - - - 0x0082F2 02:82E2: B9 17 81  LDA tbl_8117,Y
C - - - - - 0x0082F5 02:82E5: 0A        ASL
C - - - - - 0x0082F6 02:82E6: 0A        ASL
C - - - - - 0x0082F7 02:82E7: 0A        ASL
C - - - - - 0x0082F8 02:82E8: 85 2C     STA ram_002C
C - - - - - 0x0082FA 02:82EA: B5 2D     LDA ram_pos_X_obj,X
C - - - - - 0x0082FC 02:82EC: 4A        LSR
C - - - - - 0x0082FD 02:82ED: 18        CLC
C - - - - - 0x0082FE 02:82EE: 65 2C     ADC ram_002C
C - - - - - 0x008300 02:82F0: 85 2C     STA ram_002C
C - - - - - 0x008302 02:82F2: B5 31     LDA ram_pos_Y_obj,X
C - - - - - 0x008304 02:82F4: 4A        LSR
C - - - - - 0x008305 02:82F5: 18        CLC
C - - - - - 0x008306 02:82F6: 65 2C     ADC ram_002C
C - - - - - 0x008308 02:82F8: 38        SEC
C - - - - - 0x008309 02:82F9: F5 35     SBC ram_pos_Z_obj,X
C - - - - - 0x00830B 02:82FB: 18        CLC
C - - - - - 0x00830C 02:82FC: 69 28     ADC #$28
C - - - - - 0x00830E 02:82FE: 85 12     STA ram_0012
C - - - - - 0x008310 02:8300: 9D 2C 07  STA ram_pos_Y_spr,X
C - - - - - 0x008313 02:8303: 4A        LSR
C - - - - - 0x008314 02:8304: 4A        LSR
C - - - - - 0x008315 02:8305: 4A        LSR
C - - - - - 0x008316 02:8306: 38        SEC
C - - - - - 0x008317 02:8307: E9 06     SBC #$06
C - - - - - 0x008319 02:8309: 85 14     STA ram_0014
C - - - - - 0x00831B 02:830B: DE 2C 07  DEC ram_pos_Y_spr,X
C - - - - - 0x00831E 02:830E: BD 38 07  LDA ram_animation_id,X
C - - - - - 0x008321 02:8311: 85 10     STA ram_0010
C - - - - - 0x008323 02:8313: A5 11     LDA ram_0011
C - - - - - 0x008325 02:8315: 29 07     AND #$07
C - - - - - 0x008327 02:8317: C9 04     CMP #$04
C - - - - - 0x008329 02:8319: 90 02     BCC bra_831D
C - - - - - 0x00832B 02:831B: E6 13     INC ram_0013
bra_831D:
C - - - - - 0x00832D 02:831D: A9 9D     LDA #$9D
C - - - - - 0x00832F 02:831F: 85 24     STA ram_0024
C - - - - - 0x008331 02:8321: A9 00     LDA #$00
C - - - - - 0x008333 02:8323: 85 25     STA ram_0025
C - - - - - 0x008335 02:8325: B5 35     LDA ram_pos_Z_obj,X
C - - - - - 0x008337 02:8327: 4A        LSR
C - - - - - 0x008338 02:8328: 4A        LSR
C - - - - - 0x008339 02:8329: 4A        LSR
C - - - - - 0x00833A 02:832A: 85 0D     STA ram_000D
C - - - - - 0x00833C 02:832C: B5 35     LDA ram_pos_Z_obj,X
C - - - - - 0x00833E 02:832E: 18        CLC
C - - - - - 0x00833F 02:832F: 75 41     ADC ram_0041,X
C - - - - - 0x008341 02:8331: 18        CLC
C - - - - - 0x008342 02:8332: 69 11     ADC #$11
C - - - - - 0x008344 02:8334: 4A        LSR
C - - - - - 0x008345 02:8335: 4A        LSR
C - - - - - 0x008346 02:8336: 4A        LSR
C - - - - - 0x008347 02:8337: 85 0E     STA ram_000E
C - - - - - 0x008349 02:8339: B5 2D     LDA ram_pos_X_obj,X
C - - - - - 0x00834B 02:833B: 18        CLC
C - - - - - 0x00834C 02:833C: 75 31     ADC ram_pos_Y_obj,X
C - - - - - 0x00834E 02:833E: 38        SEC
C - - - - - 0x00834F 02:833F: E9 08     SBC #$08
C - - - - - 0x008351 02:8341: 85 0F     STA ram_000F
C - - - - - 0x008353 02:8343: A2 02     LDX #$02
C - - - - - 0x008355 02:8345: 86 09     STX ram_0009
loc_8347_loop:
C D 0 - - - 0x008357 02:8347: A9 03     LDA #$03
C - - - - - 0x008359 02:8349: 85 08     STA ram_0008
bra_834B_loop:
C - - - - - 0x00835B 02:834B: 20 89 82  JSR sub_8289
C - - - - - 0x00835E 02:834E: 85 2C     STA ram_002C
C - - - - - 0x008360 02:8350: 29 07     AND #$07
C - - - - - 0x008362 02:8352: C5 0D     CMP ram_000D
C - - - - - 0x008364 02:8354: 90 42     BCC bra_8398
C - - - - - 0x008366 02:8356: C5 0E     CMP ram_000E
C - - - - - 0x008368 02:8358: B0 08     BCS bra_8362
C - - - - - 0x00836A 02:835A: A5 2C     LDA ram_002C
C - - - - - 0x00836C 02:835C: 29 F8     AND #$F8
C - - - - - 0x00836E 02:835E: C5 0F     CMP ram_000F
C - - - - - 0x008370 02:8360: 90 36     BCC bra_8398
bra_8362:
C - - - - - 0x008372 02:8362: A4 14     LDY ram_0014
C - - - - - 0x008374 02:8364: A6 13     LDX ram_0013
C - - - - - 0x008376 02:8366: 20 56 82  JSR sub_8256
C - - - - - 0x008379 02:8369: 10 2D     BPL bra_8398
C - - - - - 0x00837B 02:836B: A8        TAY
C - - - - - 0x00837C 02:836C: B9 80 03  LDA ram_0380,Y
C - - - - - 0x00837F 02:836F: F0 27     BEQ bra_8398
C - - - - - 0x008381 02:8371: C9 01     CMP #$01
C - - - - - 0x008383 02:8373: F0 26     BEQ bra_839B
C - - - - - 0x008385 02:8375: A0 00     LDY #$00
C - - - - - 0x008387 02:8377: 84 27     STY ram_0027
C - - - - - 0x008389 02:8379: 0A        ASL
C - - - - - 0x00838A 02:837A: 26 27     ROL ram_0027
C - - - - - 0x00838C 02:837C: 0A        ASL
C - - - - - 0x00838D 02:837D: 26 27     ROL ram_0027
C - - - - - 0x00838F 02:837F: 0A        ASL
C - - - - - 0x008390 02:8380: 26 27     ROL ram_0027
C - - - - - 0x008392 02:8382: 18        CLC
C - - - - - 0x008393 02:8383: 69 EB     ADC #< tbl_F0EB
C - - - - - 0x008395 02:8385: 85 26     STA ram_0026
C - - - - - 0x008397 02:8387: A5 27     LDA ram_0027
C - - - - - 0x008399 02:8389: 69 F0     ADC #> tbl_F0EB
C - - - - - 0x00839B 02:838B: 85 27     STA ram_0027
C - - - - - 0x00839D 02:838D: A0 07     LDY #$07
bra_838F_loop:
C - - - - - 0x00839F 02:838F: B1 26     LDA (ram_0026),Y
C - - - - - 0x0083A1 02:8391: 91 24     STA (ram_0024),Y
C - - - - - 0x0083A3 02:8393: 88        DEY
C - - - - - 0x0083A4 02:8394: 10 F9     BPL bra_838F_loop
C - - - - - 0x0083A6 02:8396: 30 0C     BMI bra_83A4    ; jmp
bra_8398:
C - - - - - 0x0083A8 02:8398: A9 FF     LDA #$FF
C - - - - - 0x0083AA 02:839A: 2C        .byte $2C   ; BIT opcode
bra_839B:
C - - - - - 0x0083AB 02:839B: 2C A9 00  LDA #$00
C - - - - - 0x0083AD 02:839D: A0 07     LDY #$07
bra_839F_loop:
C - - - - - 0x0083AF 02:839F: 91 24     STA (ram_0024),Y
C - - - - - 0x0083B1 02:83A1: 88        DEY
C - - - - - 0x0083B2 02:83A2: 10 FB     BPL bra_839F_loop
bra_83A4:
C - - - - - 0x0083B4 02:83A4: A5 24     LDA ram_0024
C - - - - - 0x0083B6 02:83A6: 18        CLC
C - - - - - 0x0083B7 02:83A7: 69 08     ADC #$08
C - - - - - 0x0083B9 02:83A9: 85 24     STA ram_0024
C - - - - - 0x0083BB 02:83AB: E6 14     INC ram_0014
C - - - - - 0x0083BD 02:83AD: C6 08     DEC ram_0008
C - - - - - 0x0083BF 02:83AF: 10 9A     BPL bra_834B_loop
C - - - - - 0x0083C1 02:83B1: A5 14     LDA ram_0014
C - - - - - 0x0083C3 02:83B3: 38        SEC
C - - - - - 0x0083C4 02:83B4: E9 04     SBC #$04
C - - - - - 0x0083C6 02:83B6: 85 14     STA ram_0014
C - - - - - 0x0083C8 02:83B8: A6 09     LDX ram_0009
C - - - - - 0x0083CA 02:83BA: E0 01     CPX #$01
C - - - - - 0x0083CC 02:83BC: D0 0F     BNE bra_83CD
C - - - - - 0x0083CE 02:83BE: A5 11     LDA ram_0011
C - - - - - 0x0083D0 02:83C0: 29 07     AND #$07
C - - - - - 0x0083D2 02:83C2: C9 04     CMP #$04
C - - - - - 0x0083D4 02:83C4: 90 07     BCC bra_83CD
C - - - - - 0x0083D6 02:83C6: A5 13     LDA ram_0013
C - - - - - 0x0083D8 02:83C8: 38        SEC
C - - - - - 0x0083D9 02:83C9: E9 03     SBC #$03
C - - - - - 0x0083DB 02:83CB: 85 13     STA ram_0013
bra_83CD:
C - - - - - 0x0083DD 02:83CD: E6 13     INC ram_0013
C - - - - - 0x0083DF 02:83CF: C6 09     DEC ram_0009
C - - - - - 0x0083E1 02:83D1: 30 03     BMI bra_83D6
C - - - - - 0x0083E3 02:83D3: 4C 47 83  JMP loc_8347_loop
bra_83D6:
C - - - - - 0x0083E6 02:83D6: A6 10     LDX ram_0010
C - - - - - 0x0083E8 02:83D8: BC C5 C0  LDY tbl_C0C5_hi,X
C - - - - - 0x0083EB 02:83DB: 84 23     STY ram_0023
C - - - - - 0x0083ED 02:83DD: BD 40 C0  LDA tbl_C040_lo,X
C - - - - - 0x0083F0 02:83E0: 85 22     STA ram_0022
C - - - - - 0x0083F2 02:83E2: 18        CLC
C - - - - - 0x0083F3 02:83E3: 69 08     ADC #$08
C - - - - - 0x0083F5 02:83E5: 90 02     BCC bra_83E9
- - - - - - 0x0083F7 02:83E7: C8        INY
- - - - - - 0x0083F8 02:83E8: 18        CLC
bra_83E9:
C - - - - - 0x0083F9 02:83E9: 85 24     STA ram_0024
C - - - - - 0x0083FB 02:83EB: 84 25     STY ram_0025
C - - - - - 0x0083FD 02:83ED: 69 08     ADC #$08
C - - - - - 0x0083FF 02:83EF: 90 02     BCC bra_83F3
- - - - - - 0x008401 02:83F1: C8        INY
- - - - - - 0x008402 02:83F2: 18        CLC
bra_83F3:
C - - - - - 0x008403 02:83F3: 85 26     STA ram_0026
C - - - - - 0x008405 02:83F5: 84 27     STY ram_0027
C - - - - - 0x008407 02:83F7: 69 08     ADC #$08
C - - - - - 0x008409 02:83F9: 90 01     BCC bra_83FC
C - - - - - 0x00840B 02:83FB: C8        INY
bra_83FC:
C - - - - - 0x00840C 02:83FC: 85 0D     STA ram_000D
C - - - - - 0x00840E 02:83FE: 84 0E     STY ram_000E
C - - - - - 0x008410 02:8400: A5 12     LDA ram_0012
C - - - - - 0x008412 02:8402: 29 07     AND #$07
C - - - - - 0x008414 02:8404: 85 2C     STA ram_002C
C - - - - - 0x008416 02:8406: A5 11     LDA ram_0011
C - - - - - 0x008418 02:8408: 29 07     AND #$07
C - - - - - 0x00841A 02:840A: C9 04     CMP #$04
C - - - - - 0x00841C 02:840C: 90 2B     BCC bra_8439
C - - - - - 0x00841E 02:840E: A6 2C     LDX ram_002C
C - - - - - 0x008420 02:8410: A0 18     LDY #$18
C - - - - - 0x008422 02:8412: C9 07     CMP #$07
C - - - - - 0x008424 02:8414: F0 17     BEQ bra_842D
bra_8416_loop:
C - - - - - 0x008426 02:8416: B5 DD     LDA ram_00DD,X
C - - - - - 0x008428 02:8418: 6A        ROR
C - - - - - 0x008429 02:8419: 76 9D     ROR ram_009D,X
C - - - - - 0x00842B 02:841B: 76 BD     ROR ram_00BD,X
C - - - - - 0x00842D 02:841D: 6A        ROR
C - - - - - 0x00842E 02:841E: 76 9D     ROR ram_009D,X
C - - - - - 0x008430 02:8420: 76 BD     ROR ram_00BD,X
C - - - - - 0x008432 02:8422: 6A        ROR
C - - - - - 0x008433 02:8423: 76 9D     ROR ram_009D,X
C - - - - - 0x008435 02:8425: 76 BD     ROR ram_00BD,X
C - - - - - 0x008437 02:8427: E8        INX
C - - - - - 0x008438 02:8428: 88        DEY
C - - - - - 0x008439 02:8429: D0 EB     BNE bra_8416_loop
C - - - - - 0x00843B 02:842B: F0 35     BEQ bra_8462    ; jmp
bra_842D:
bra_842D_loop:
C - - - - - 0x00843D 02:842D: 76 DD     ROR ram_00DD,X
C - - - - - 0x00843F 02:842F: 76 9D     ROR ram_009D,X
C - - - - - 0x008441 02:8431: 76 BD     ROR ram_00BD,X
C - - - - - 0x008443 02:8433: E8        INX
C - - - - - 0x008444 02:8434: 88        DEY
C - - - - - 0x008445 02:8435: D0 F6     BNE bra_842D_loop
C - - - - - 0x008447 02:8437: F0 29     BEQ bra_8462    ; jmp
bra_8439:
C - - - - - 0x008449 02:8439: A6 2C     LDX ram_002C
C - - - - - 0x00844B 02:843B: A0 18     LDY #$18
C - - - - - 0x00844D 02:843D: C9 01     CMP #$01
C - - - - - 0x00844F 02:843F: D0 0C     BNE bra_844D
bra_8441_loop:
C - - - - - 0x008451 02:8441: 36 DD     ROL ram_00DD,X
C - - - - - 0x008453 02:8443: 36 BD     ROL ram_00BD,X
C - - - - - 0x008455 02:8445: 36 9D     ROL ram_009D,X
C - - - - - 0x008457 02:8447: E8        INX
C - - - - - 0x008458 02:8448: 88        DEY
C - - - - - 0x008459 02:8449: D0 F6     BNE bra_8441_loop
C - - - - - 0x00845B 02:844B: F0 15     BEQ bra_8462    ; jmp
bra_844D:
bra_844D_loop:
C - - - - - 0x00845D 02:844D: B5 DD     LDA ram_00DD,X
C - - - - - 0x00845F 02:844F: 2A        ROL
C - - - - - 0x008460 02:8450: 36 BD     ROL ram_00BD,X
C - - - - - 0x008462 02:8452: 36 9D     ROL ram_009D,X
C - - - - - 0x008464 02:8454: 2A        ROL
C - - - - - 0x008465 02:8455: 36 BD     ROL ram_00BD,X
C - - - - - 0x008467 02:8457: 36 9D     ROL ram_009D,X
C - - - - - 0x008469 02:8459: 2A        ROL
C - - - - - 0x00846A 02:845A: 36 BD     ROL ram_00BD,X
C - - - - - 0x00846C 02:845C: 36 9D     ROL ram_009D,X
C - - - - - 0x00846E 02:845E: E8        INX
C - - - - - 0x00846F 02:845F: 88        DEY
C - - - - - 0x008470 02:8460: D0 EB     BNE bra_844D_loop
bra_8462:
C - - - - - 0x008472 02:8462: A6 2C     LDX ram_002C
C - - - - - 0x008474 02:8464: A0 00     LDY #$00
C - - - - - 0x008476 02:8466: 20 A8 84  JSR sub_84A8
C - - - - - 0x008479 02:8469: A0 18     LDY #$18
C - - - - - 0x00847B 02:846B: A5 2C     LDA ram_002C
C - - - - - 0x00847D 02:846D: 18        CLC
C - - - - - 0x00847E 02:846E: 69 20     ADC #$20
C - - - - - 0x008480 02:8470: AA        TAX
C - - - - - 0x008481 02:8471: 20 A8 84  JSR sub_84A8
C - - - - - 0x008484 02:8474: A2 00     LDX #$00
C - - - - - 0x008486 02:8476: A0 00     LDY #$00
bra_8478_loop:
C - - - - - 0x008488 02:8478: B5 9D     LDA ram_009D,X
C - - - - - 0x00848A 02:847A: 31 22     AND (ram_0022),Y
C - - - - - 0x00848C 02:847C: 95 CD     STA ram_00CD,X
C - - - - - 0x00848E 02:847E: B5 9D     LDA ram_009D,X
C - - - - - 0x008490 02:8480: 31 24     AND (ram_0024),Y
C - - - - - 0x008492 02:8482: 95 9D     STA ram_009D,X
C - - - - - 0x008494 02:8484: B5 B5     LDA ram_00B5,X
C - - - - - 0x008496 02:8486: 31 26     AND (ram_0026),Y
C - - - - - 0x008498 02:8488: 95 E5     STA ram_00E5,X
C - - - - - 0x00849A 02:848A: B5 B5     LDA ram_00B5,X
C - - - - - 0x00849C 02:848C: 31 0D     AND (ram_000D),Y
C - - - - - 0x00849E 02:848E: 95 B5     STA ram_00B5,X
C - - - - - 0x0084A0 02:8490: C8        INY
C - - - - - 0x0084A1 02:8491: E8        INX
C - - - - - 0x0084A2 02:8492: 8A        TXA
C - - - - - 0x0084A3 02:8493: 29 07     AND #$07
C - - - - - 0x0084A5 02:8495: D0 E1     BNE bra_8478_loop
C - - - - - 0x0084A7 02:8497: E0 18     CPX #$18
C - - - - - 0x0084A9 02:8499: F0 07     BEQ bra_84A2
C - - - - - 0x0084AB 02:849B: 98        TYA
C - - - - - 0x0084AC 02:849C: 18        CLC
C - - - - - 0x0084AD 02:849D: 69 18     ADC #$18
C - - - - - 0x0084AF 02:849F: A8        TAY
C - - - - - 0x0084B0 02:84A0: D0 D6     BNE bra_8478_loop
bra_84A2:
C - - - - - 0x0084B2 02:84A2: A9 01     LDA #$01
C - - - - - 0x0084B4 02:84A4: 8D B7 07  STA ram_07B7
C - - - - - 0x0084B7 02:84A7: 60        RTS



sub_84A8:
C - - - - - 0x0084B8 02:84A8: B5 9D     LDA ram_009D,X
C - - - - - 0x0084BA 02:84AA: 99 9D 00  STA ram_009D,Y
C - - - - - 0x0084BD 02:84AD: B5 9E     LDA ram_009E,X
C - - - - - 0x0084BF 02:84AF: 99 9E 00  STA ram_009E,Y
C - - - - - 0x0084C2 02:84B2: B5 9F     LDA ram_009F,X
C - - - - - 0x0084C4 02:84B4: 99 9F 00  STA ram_009F,Y
C - - - - - 0x0084C7 02:84B7: B5 A0     LDA ram_00A0,X
C - - - - - 0x0084C9 02:84B9: 99 A0 00  STA ram_00A0,Y
C - - - - - 0x0084CC 02:84BC: B5 A1     LDA ram_00A1,X
C - - - - - 0x0084CE 02:84BE: 99 A1 00  STA ram_00A1,Y
C - - - - - 0x0084D1 02:84C1: B5 A2     LDA ram_00A2,X
C - - - - - 0x0084D3 02:84C3: 99 A2 00  STA ram_00A2,Y
C - - - - - 0x0084D6 02:84C6: B5 A3     LDA ram_00A3,X
C - - - - - 0x0084D8 02:84C8: 99 A3 00  STA ram_00A3,Y
C - - - - - 0x0084DB 02:84CB: B5 A4     LDA ram_00A4,X
C - - - - - 0x0084DD 02:84CD: 99 A4 00  STA ram_00A4,Y
C - - - - - 0x0084E0 02:84D0: B5 A5     LDA ram_00A5,X
C - - - - - 0x0084E2 02:84D2: 99 A5 00  STA ram_00A5,Y
C - - - - - 0x0084E5 02:84D5: B5 A6     LDA ram_00A6,X
C - - - - - 0x0084E7 02:84D7: 99 A6 00  STA ram_00A6,Y
C - - - - - 0x0084EA 02:84DA: B5 A7     LDA ram_00A7,X
C - - - - - 0x0084EC 02:84DC: 99 A7 00  STA ram_00A7,Y
C - - - - - 0x0084EF 02:84DF: B5 A8     LDA ram_00A8,X
C - - - - - 0x0084F1 02:84E1: 99 A8 00  STA ram_00A8,Y
C - - - - - 0x0084F4 02:84E4: B5 A9     LDA ram_00A9,X
C - - - - - 0x0084F6 02:84E6: 99 A9 00  STA ram_00A9,Y
C - - - - - 0x0084F9 02:84E9: B5 AA     LDA ram_00AA,X
C - - - - - 0x0084FB 02:84EB: 99 AA 00  STA ram_00AA,Y
C - - - - - 0x0084FE 02:84EE: B5 AB     LDA ram_00AB,X
C - - - - - 0x008500 02:84F0: 99 AB 00  STA ram_00AB,Y
C - - - - - 0x008503 02:84F3: B5 AC     LDA ram_00AC,X
C - - - - - 0x008505 02:84F5: 99 AC 00  STA ram_00AC,Y
C - - - - - 0x008508 02:84F8: B5 AD     LDA ram_00AD,X
C - - - - - 0x00850A 02:84FA: 99 AD 00  STA ram_00AD,Y
C - - - - - 0x00850D 02:84FD: B5 AE     LDA ram_00AE,X
C - - - - - 0x00850F 02:84FF: 99 AE 00  STA ram_00AE,Y
C - - - - - 0x008512 02:8502: B5 AF     LDA ram_00AF,X
C - - - - - 0x008514 02:8504: 99 AF 00  STA ram_00AF,Y
C - - - - - 0x008517 02:8507: B5 B0     LDA ram_00B0,X
C - - - - - 0x008519 02:8509: 99 B0 00  STA ram_00B0,Y
C - - - - - 0x00851C 02:850C: B5 B1     LDA ram_00B1,X
C - - - - - 0x00851E 02:850E: 99 B1 00  STA ram_00B1,Y
C - - - - - 0x008521 02:8511: B5 B2     LDA ram_00B2,X
C - - - - - 0x008523 02:8513: 99 B2 00  STA ram_00B2,Y
C - - - - - 0x008526 02:8516: B5 B3     LDA ram_00B3,X
C - - - - - 0x008528 02:8518: 99 B3 00  STA ram_00B3,Y
C - - - - - 0x00852B 02:851B: B5 B4     LDA ram_00B4,X
C - - - - - 0x00852D 02:851D: 99 B4 00  STA ram_00B4,Y
C - - - - - 0x008530 02:8520: 60        RTS



ofs_0x008531_20_draw_static_screen:
; logo and cutscenes
C - - - - - 0x008531 02:8521: BD 76 87  LDA tbl_8776_chr_lo,X
C - - - - - 0x008534 02:8524: 85 22     STA ram_0022
C - - - - - 0x008536 02:8526: BD 80 87  LDA tbl_8780_chr_hi,X
C - - - - - 0x008539 02:8529: 85 23     STA ram_0023
C - - - - - 0x00853B 02:852B: 86 09     STX ram_0009
C - - - - - 0x00853D 02:852D: BD 6B 87  LDA tbl_876B_ppu_hi,X
C - - - - - 0x008540 02:8530: A2 F8     LDX #$F8
C - - - - - 0x008542 02:8532: 8D 06 20  STA $2006
C - - - - - 0x008545 02:8535: A9 00     LDA #$00
C - - - - - 0x008547 02:8537: 8D 06 20  STA $2006
C - - - - - 0x00854A 02:853A: A0 00     LDY #$00
bra_853C_loop:
C - - - - - 0x00854C 02:853C: B9 C4 BA  LDA tbl_BAC4,Y
C - - - - - 0x00854F 02:853F: 8D 07 20  STA $2007
C - - - - - 0x008552 02:8542: C8        INY
C - - - - - 0x008553 02:8543: C0 90     CPY #$90
C - - - - - 0x008555 02:8545: D0 F5     BNE bra_853C_loop
bra_8547_loop:
C - - - - - 0x008557 02:8547: A0 00     LDY #$00
bra_8549_loop:
C - - - - - 0x008559 02:8549: B1 22     LDA (ram_0022),Y
C - - - - - 0x00855B 02:854B: 8D 07 20  STA $2007
C - - - - - 0x00855E 02:854E: C8        INY
C - - - - - 0x00855F 02:854F: C0 10     CPY #$10
C - - - - - 0x008561 02:8551: D0 F6     BNE bra_8549_loop
C - - - - - 0x008563 02:8553: A5 22     LDA ram_0022
C - - - - - 0x008565 02:8555: 18        CLC
C - - - - - 0x008566 02:8556: 69 10     ADC #$10
C - - - - - 0x008568 02:8558: 85 22     STA ram_0022
C - - - - - 0x00856A 02:855A: 90 02     BCC bra_855E_not_overflow
C - - - - - 0x00856C 02:855C: E6 23     INC ram_0023
bra_855E_not_overflow:
C - - - - - 0x00856E 02:855E: CA        DEX
C - - - - - 0x00856F 02:855F: D0 E6     BNE bra_8547_loop
C - - - - - 0x008571 02:8561: A6 09     LDX ram_0009
C - - - - - 0x008573 02:8563: BD B2 87  LDA tbl_87B2_lo,X
C - - - - - 0x008576 02:8566: 85 22     STA ram_0022
C - - - - - 0x008578 02:8568: BD BC 87  LDA tbl_87BC_hi,X
C - - - - - 0x00857B 02:856B: 85 23     STA ram_0023
C - - - - - 0x00857D 02:856D: 20 0F 87  JSR sub_870F
C - - - - - 0x008580 02:8570: A6 09     LDX ram_0009
C - - - - - 0x008582 02:8572: BD 9E 87  LDA tbl_879E_palette_lo,X
C - - - - - 0x008585 02:8575: 85 22     STA ram_0022
C - - - - - 0x008587 02:8577: BD A8 87  LDA tbl_87A8_palette_hi,X
C - - - - - 0x00858A 02:857A: 85 23     STA ram_0023
C - - - - - 0x00858C 02:857C: A0 1F     LDY #$1F
bra_857E_loop:
C - - - - - 0x00858E 02:857E: B1 22     LDA (ram_0022),Y
C - - - - - 0x008590 02:8580: 99 80 03  STA ram_0380,Y
C - - - - - 0x008593 02:8583: 88        DEY
C - - - - - 0x008594 02:8584: 10 F8     BPL bra_857E_loop
C - - - - - 0x008596 02:8586: BD 8A 87  LDA tbl_878A_screen_data_lo,X
C - - - - - 0x008599 02:8589: 85 22     STA ram_0022
C - - - - - 0x00859B 02:858B: BD 94 87  LDA tbl_8794_screen_data_hi,X
C - - - - - 0x00859E 02:858E: 85 23     STA ram_0023
C - - - - - 0x0085A0 02:8590: A0 00     LDY #$00
C - - - - - 0x0085A2 02:8592: B1 22     LDA (ram_0022),Y
C - - - - - 0x0085A4 02:8594: 85 13     STA ram_0013
C - - - - - 0x0085A6 02:8596: C8        INY
C - - - - - 0x0085A7 02:8597: B1 22     LDA (ram_0022),Y
C - - - - - 0x0085A9 02:8599: 85 14     STA ram_0014
C - - - - - 0x0085AB 02:859B: C8        INY
C - - - - - 0x0085AC 02:859C: B1 22     LDA (ram_0022),Y
C - - - - - 0x0085AE 02:859E: F0 19     BEQ bra_85B9
C - - - - - 0x0085B0 02:85A0: 8D 9D 07  STA ram_079D
bra_85A3_loop:
C - - - - - 0x0085B3 02:85A3: C8        INY
C - - - - - 0x0085B4 02:85A4: B1 22     LDA (ram_0022),Y
C - - - - - 0x0085B6 02:85A6: 85 26     STA ram_0026
C - - - - - 0x0085B8 02:85A8: C8        INY
C - - - - - 0x0085B9 02:85A9: B1 22     LDA (ram_0022),Y
C - - - - - 0x0085BB 02:85AB: 85 27     STA ram_0027
C - - - - - 0x0085BD 02:85AD: 84 08     STY ram_0008
C - - - - - 0x0085BF 02:85AF: 20 9C 86  JSR sub_869C_display_sprites
C - - - - - 0x0085C2 02:85B2: A4 08     LDY ram_0008
C - - - - - 0x0085C4 02:85B4: CE 9D 07  DEC ram_079D
C - - - - - 0x0085C7 02:85B7: D0 EA     BNE bra_85A3_loop
bra_85B9:
C - - - - - 0x0085C9 02:85B9: A9 00     LDA #$00
C - - - - - 0x0085CB 02:85BB: 85 27     STA ram_0027
C - - - - - 0x0085CD 02:85BD: A5 14     LDA ram_0014
C - - - - - 0x0085CF 02:85BF: 0A        ASL
C - - - - - 0x0085D0 02:85C0: 0A        ASL
C - - - - - 0x0085D1 02:85C1: 0A        ASL
C - - - - - 0x0085D2 02:85C2: 26 27     ROL ram_0027
C - - - - - 0x0085D4 02:85C4: 0A        ASL
C - - - - - 0x0085D5 02:85C5: 26 27     ROL ram_0027
C - - - - - 0x0085D7 02:85C7: 0A        ASL
C - - - - - 0x0085D8 02:85C8: 26 27     ROL ram_0027
C - - - - - 0x0085DA 02:85CA: 18        CLC
C - - - - - 0x0085DB 02:85CB: 65 13     ADC ram_0013
C - - - - - 0x0085DD 02:85CD: 85 26     STA ram_0026
C - - - - - 0x0085DF 02:85CF: A5 27     LDA ram_0027
C - - - - - 0x0085E1 02:85D1: 69 20     ADC #$20
C - - - - - 0x0085E3 02:85D3: 85 27     STA ram_0027
C - - - - - 0x0085E5 02:85D5: C8        INY
C - - - - - 0x0085E6 02:85D6: B1 22     LDA (ram_0022),Y
C - - - - - 0x0085E8 02:85D8: 85 0E     STA ram_000E
C - - - - - 0x0085EA 02:85DA: C8        INY
C - - - - - 0x0085EB 02:85DB: B1 22     LDA (ram_0022),Y
C - - - - - 0x0085ED 02:85DD: 85 0D     STA ram_000D
C - - - - - 0x0085EF 02:85DF: C8        INY
C - - - - - 0x0085F0 02:85E0: 98        TYA
C - - - - - 0x0085F1 02:85E1: 18        CLC
C - - - - - 0x0085F2 02:85E2: 65 22     ADC ram_0022
C - - - - - 0x0085F4 02:85E4: 85 22     STA ram_0022
C - - - - - 0x0085F6 02:85E6: 90 02     BCC bra_85EA_not_overflow
C - - - - - 0x0085F8 02:85E8: E6 23     INC ram_0023
bra_85EA_not_overflow:
C - - - - - 0x0085FA 02:85EA: 20 28 86  JSR sub_8628_draw_portrait_tiles_at_the_top
bra_85ED_loop:
C - - - - - 0x0085FD 02:85ED: A0 00     LDY #$00
C - - - - - 0x0085FF 02:85EF: A5 27     LDA ram_0027
C - - - - - 0x008601 02:85F1: 8D 06 20  STA $2006
C - - - - - 0x008604 02:85F4: A5 26     LDA ram_0026
C - - - - - 0x008606 02:85F6: 8D 06 20  STA $2006
bra_85F9_loop:
C - - - - - 0x008609 02:85F9: B1 22     LDA (ram_0022),Y
C - - - - - 0x00860B 02:85FB: F0 03     BEQ bra_8600
C - - - - - 0x00860D 02:85FD: 18        CLC
C - - - - - 0x00860E 02:85FE: 69 08     ADC #con_tile_id + $08
bra_8600:
C - - - - - 0x008610 02:8600: 8D 07 20  STA $2007
C - - - - - 0x008613 02:8603: C8        INY
C - - - - - 0x008614 02:8604: 98        TYA
C - - - - - 0x008615 02:8605: C5 0E     CMP ram_000E
C - - - - - 0x008617 02:8607: D0 F0     BNE bra_85F9_loop
C - - - - - 0x008619 02:8609: 18        CLC
C - - - - - 0x00861A 02:860A: 65 22     ADC ram_0022
C - - - - - 0x00861C 02:860C: 85 22     STA ram_0022
C - - - - - 0x00861E 02:860E: 90 02     BCC bra_8612_not_overflow
C - - - - - 0x008620 02:8610: E6 23     INC ram_0023
bra_8612_not_overflow:
C - - - - - 0x008622 02:8612: 20 51 86  JSR sub_8651_draw_portrait_tiles_on_the_sides
C - - - - - 0x008625 02:8615: A5 26     LDA ram_0026
C - - - - - 0x008627 02:8617: 18        CLC
C - - - - - 0x008628 02:8618: 69 20     ADC #$20
C - - - - - 0x00862A 02:861A: 85 26     STA ram_0026
C - - - - - 0x00862C 02:861C: 90 02     BCC bra_8620_not_overflow
C - - - - - 0x00862E 02:861E: E6 27     INC ram_0027
bra_8620_not_overflow:
C - - - - - 0x008630 02:8620: C6 0D     DEC ram_000D
C - - - - - 0x008632 02:8622: D0 C9     BNE bra_85ED_loop
C - - - - - 0x008634 02:8624: 20 78 86  JSR sub_8678_draw_portrait_tiles_at_the_bottom
C - - - - - 0x008637 02:8627: 60        RTS



sub_8628_draw_portrait_tiles_at_the_top:
; draws a horisontal gray line at the top
C - - - - - 0x008638 02:8628: A5 09     LDA ram_0009
C - - - - - 0x00863A 02:862A: F0 24     BEQ bra_8650_RTS    ; if logo
C - - - - - 0x00863C 02:862C: A5 26     LDA ram_0026
C - - - - - 0x00863E 02:862E: 38        SEC
C - - - - - 0x00863F 02:862F: E9 21     SBC #< $0021
C - - - - - 0x008641 02:8631: AA        TAX
C - - - - - 0x008642 02:8632: A5 27     LDA ram_0027
C - - - - - 0x008644 02:8634: E9 00     SBC #> $0021
C - - - - - 0x008646 02:8636: 8D 06 20  STA $2006
C - - - - - 0x008649 02:8639: 8E 06 20  STX $2006
C - - - - - 0x00864C 02:863C: A9 05     LDA #con_tile_id + $05
C - - - - - 0x00864E 02:863E: 8D 07 20  STA $2007
C - - - - - 0x008651 02:8641: A6 0E     LDX ram_000E
C - - - - - 0x008653 02:8643: A9 02     LDA #con_tile_id + $02
bra_8645_loop:
C - - - - - 0x008655 02:8645: 8D 07 20  STA $2007
C - - - - - 0x008658 02:8648: CA        DEX
C - - - - - 0x008659 02:8649: D0 FA     BNE bra_8645_loop
C - - - - - 0x00865B 02:864B: A9 06     LDA #con_tile_id + $06
C - - - - - 0x00865D 02:864D: 8D 07 20  STA $2007
bra_8650_RTS:
C - - - - - 0x008660 02:8650: 60        RTS



sub_8651_draw_portrait_tiles_on_the_sides:
C - - - - - 0x008661 02:8651: A5 09     LDA ram_0009
C - - - - - 0x008663 02:8653: F0 FB     BEQ bra_8650_RTS    ; if logo
C - - - - - 0x008665 02:8655: A6 27     LDX ram_0027
C - - - - - 0x008667 02:8657: 8E 06 20  STX $2006
C - - - - - 0x00866A 02:865A: A6 26     LDX ram_0026
C - - - - - 0x00866C 02:865C: CA        DEX
C - - - - - 0x00866D 02:865D: 8E 06 20  STX $2006
C - - - - - 0x008670 02:8660: A9 01     LDA #con_tile_id + $01
C - - - - - 0x008672 02:8662: 8D 07 20  STA $2007
C - - - - - 0x008675 02:8665: A6 27     LDX ram_0027
C - - - - - 0x008677 02:8667: 8E 06 20  STX $2006
C - - - - - 0x00867A 02:866A: A5 26     LDA ram_0026
C - - - - - 0x00867C 02:866C: 18        CLC
C - - - - - 0x00867D 02:866D: 65 0E     ADC ram_000E
C - - - - - 0x00867F 02:866F: 8D 06 20  STA $2006
C - - - - - 0x008682 02:8672: A9 03     LDA #con_tile_id + $03
C - - - - - 0x008684 02:8674: 8D 07 20  STA $2007
C - - - - - 0x008687 02:8677: 60        RTS



sub_8678_draw_portrait_tiles_at_the_bottom:
C - - - - - 0x008688 02:8678: A5 09     LDA ram_0009
C - - - - - 0x00868A 02:867A: F0 D4     BEQ bra_8650_RTS    ; if logo
C - - - - - 0x00868C 02:867C: A6 26     LDX ram_0026
C - - - - - 0x00868E 02:867E: CA        DEX
C - - - - - 0x00868F 02:867F: A5 27     LDA ram_0027
C - - - - - 0x008691 02:8681: 8D 06 20  STA $2006
C - - - - - 0x008694 02:8684: 8E 06 20  STX $2006
C - - - - - 0x008697 02:8687: A9 08     LDA #con_tile_id + $08
C - - - - - 0x008699 02:8689: 8D 07 20  STA $2007
C - - - - - 0x00869C 02:868C: A6 0E     LDX ram_000E
C - - - - - 0x00869E 02:868E: A9 04     LDA #con_tile_id + $04
bra_8690_loop:
C - - - - - 0x0086A0 02:8690: 8D 07 20  STA $2007
C - - - - - 0x0086A3 02:8693: CA        DEX
C - - - - - 0x0086A4 02:8694: D0 FA     BNE bra_8690_loop
C - - - - - 0x0086A6 02:8696: A9 07     LDA #con_tile_id + $07
C - - - - - 0x0086A8 02:8698: 8D 07 20  STA $2007
C - - - - - 0x0086AB 02:869B: 60        RTS



sub_869C_display_sprites:
C - - - - - 0x0086AC 02:869C: A6 00     LDX ram_0000
C - - - - - 0x0086AE 02:869E: A0 00     LDY #$00
C - - - - - 0x0086B0 02:86A0: B1 26     LDA (ram_0026),Y
C - - - - - 0x0086B2 02:86A2: 85 0D     STA ram_000D
C - - - - - 0x0086B4 02:86A4: C8        INY
C - - - - - 0x0086B5 02:86A5: B1 26     LDA (ram_0026),Y
C - - - - - 0x0086B7 02:86A7: 85 0E     STA ram_000E
C - - - - - 0x0086B9 02:86A9: C8        INY
C - - - - - 0x0086BA 02:86AA: B1 26     LDA (ram_0026),Y
C - - - - - 0x0086BC 02:86AC: 85 0F     STA ram_000F
C - - - - - 0x0086BE 02:86AE: A5 13     LDA ram_0013
C - - - - - 0x0086C0 02:86B0: 0A        ASL
C - - - - - 0x0086C1 02:86B1: 0A        ASL
C - - - - - 0x0086C2 02:86B2: 0A        ASL
C - - - - - 0x0086C3 02:86B3: C8        INY
C - - - - - 0x0086C4 02:86B4: 18        CLC
C - - - - - 0x0086C5 02:86B5: 71 26     ADC (ram_0026),Y
C - - - - - 0x0086C7 02:86B7: 85 10     STA ram_0010
C - - - - - 0x0086C9 02:86B9: A5 14     LDA ram_0014
C - - - - - 0x0086CB 02:86BB: 0A        ASL
C - - - - - 0x0086CC 02:86BC: 0A        ASL
C - - - - - 0x0086CD 02:86BD: 0A        ASL
C - - - - - 0x0086CE 02:86BE: C8        INY
C - - - - - 0x0086CF 02:86BF: 18        CLC
C - - - - - 0x0086D0 02:86C0: 71 26     ADC (ram_0026),Y
C - - - - - 0x0086D2 02:86C2: 85 11     STA ram_0011
bra_86C4_loop:
C - - - - - 0x0086D4 02:86C4: A5 0D     LDA ram_000D
C - - - - - 0x0086D6 02:86C6: 85 12     STA ram_0012
bra_86C8_loop:
C - - - - - 0x0086D8 02:86C8: A5 10     LDA ram_0010
C - - - - - 0x0086DA 02:86CA: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x0086DD 02:86CD: A5 11     LDA ram_0011
C - - - - - 0x0086DF 02:86CF: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x0086E2 02:86D2: A5 0F     LDA ram_000F
C - - - - - 0x0086E4 02:86D4: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x0086E7 02:86D7: C8        INY
C - - - - - 0x0086E8 02:86D8: B1 26     LDA (ram_0026),Y
C - - - - - 0x0086EA 02:86DA: F0 03     BEQ bra_86DF
C - - - - - 0x0086EC 02:86DC: 18        CLC
C - - - - - 0x0086ED 02:86DD: 69 08     ADC #$08
bra_86DF:
C - - - - - 0x0086EF 02:86DF: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x0086F2 02:86E2: F0 04     BEQ bra_86E8
C - - - - - 0x0086F4 02:86E4: E8        INX
C - - - - - 0x0086F5 02:86E5: E8        INX
C - - - - - 0x0086F6 02:86E6: E8        INX
C - - - - - 0x0086F7 02:86E7: E8        INX
bra_86E8:
C - - - - - 0x0086F8 02:86E8: A5 10     LDA ram_0010
C - - - - - 0x0086FA 02:86EA: 18        CLC
C - - - - - 0x0086FB 02:86EB: 69 08     ADC #$08
C - - - - - 0x0086FD 02:86ED: 85 10     STA ram_0010
C - - - - - 0x0086FF 02:86EF: C6 12     DEC ram_0012
C - - - - - 0x008701 02:86F1: D0 D5     BNE bra_86C8_loop
C - - - - - 0x008703 02:86F3: A5 0D     LDA ram_000D
C - - - - - 0x008705 02:86F5: 0A        ASL
C - - - - - 0x008706 02:86F6: 0A        ASL
C - - - - - 0x008707 02:86F7: 0A        ASL
C - - - - - 0x008708 02:86F8: 85 12     STA ram_0012
C - - - - - 0x00870A 02:86FA: A5 10     LDA ram_0010
C - - - - - 0x00870C 02:86FC: 38        SEC
C - - - - - 0x00870D 02:86FD: E5 12     SBC ram_0012
C - - - - - 0x00870F 02:86FF: 85 10     STA ram_0010
C - - - - - 0x008711 02:8701: A5 11     LDA ram_0011
C - - - - - 0x008713 02:8703: 18        CLC
C - - - - - 0x008714 02:8704: 69 08     ADC #$08
C - - - - - 0x008716 02:8706: 85 11     STA ram_0011
C - - - - - 0x008718 02:8708: C6 0E     DEC ram_000E
C - - - - - 0x00871A 02:870A: D0 B8     BNE bra_86C4_loop
C - - - - - 0x00871C 02:870C: 86 00     STX ram_0000
C - - - - - 0x00871E 02:870E: 60        RTS



sub_870F:
C - - - - - 0x00871F 02:870F: A0 00     LDY #$00
loc_8711_loop:
bra_8711_loop:
C D 0 - - - 0x008721 02:8711: B1 22     LDA (ram_0022),Y
C - - - - - 0x008723 02:8713: C9 FF     CMP #$FF
C - - - - - 0x008725 02:8715: F0 53     BEQ bra_876A_RTS
C - - - - - 0x008727 02:8717: C9 FD     CMP #$FD
C - - - - - 0x008729 02:8719: D0 31     BNE bra_874C
; FD = 20h attributes
C - - - - - 0x00872B 02:871B: C8        INY
C - - - - - 0x00872C 02:871C: A2 20     LDX #$20
bra_871E_loop:
C - - - - - 0x00872E 02:871E: B1 22     LDA (ram_0022),Y
C - - - - - 0x008730 02:8720: 8D 07 20  STA $2007
C - - - - - 0x008733 02:8723: C8        INY
C - - - - - 0x008734 02:8724: D0 02     BNE bra_8728_not_overflow
- - - - - - 0x008736 02:8726: E6 23     INC ram_0023
bra_8728_not_overflow:
C - - - - - 0x008738 02:8728: CA        DEX
C - - - - - 0x008739 02:8729: D0 F3     BNE bra_871E_loop
C - - - - - 0x00873B 02:872B: B1 22     LDA (ram_0022),Y
C - - - - - 0x00873D 02:872D: C9 FF     CMP #$FF
C - - - - - 0x00873F 02:872F: F0 10     BEQ bra_8741_FF
; if not FF = another 20h attributes, then quit
C - - - - - 0x008741 02:8731: A2 20     LDX #$20
bra_8733_loop:
C - - - - - 0x008743 02:8733: B1 22     LDA (ram_0022),Y
C - - - - - 0x008745 02:8735: 8D 07 20  STA $2007
C - - - - - 0x008748 02:8738: C8        INY
C - - - - - 0x008749 02:8739: D0 02     BNE bra_873D_not_overflow
- - - - - - 0x00874B 02:873B: E6 23     INC ram_0023
bra_873D_not_overflow:
C - - - - - 0x00874D 02:873D: CA        DEX
C - - - - - 0x00874E 02:873E: D0 F3     BNE bra_8733_loop
C - - - - - 0x008750 02:8740: 60        RTS
bra_8741_FF:
; FF = hardcoded 20h 55 attributes, then quit
C - - - - - 0x008751 02:8741: A2 20     LDX #$20
C - - - - - 0x008753 02:8743: A9 55     LDA #con_tile_id + $55
bra_8745_loop:
C - - - - - 0x008755 02:8745: 8D 07 20  STA $2007
C - - - - - 0x008758 02:8748: CA        DEX
C - - - - - 0x008759 02:8749: D0 FA     BNE bra_8745_loop
C - - - - - 0x00875B 02:874B: 60        RTS
bra_874C:
C - - - - - 0x00875C 02:874C: C9 FE     CMP #$FE
C - - - - - 0x00875E 02:874E: D0 11     BNE bra_8761
; FE = write hi + lo 2006
C - - - - - 0x008760 02:8750: C8        INY
C - - - - - 0x008761 02:8751: B1 22     LDA (ram_0022),Y
C - - - - - 0x008763 02:8753: C8        INY
C - - - - - 0x008764 02:8754: AA        TAX
C - - - - - 0x008765 02:8755: B1 22     LDA (ram_0022),Y
C - - - - - 0x008767 02:8757: C8        INY
C - - - - - 0x008768 02:8758: 8D 06 20  STA $2006
C - - - - - 0x00876B 02:875B: 8E 06 20  STX $2006
C - - - - - 0x00876E 02:875E: 4C 11 87  JMP loc_8711_loop
bra_8761:
C - - - - - 0x008771 02:8761: 18        CLC
C - - - - - 0x008772 02:8762: 69 01     ADC #$01
C - - - - - 0x008774 02:8764: 8D 07 20  STA $2007
C - - - - - 0x008777 02:8767: C8        INY
C - - - - - 0x008778 02:8768: D0 A7     BNE bra_8711_loop
bra_876A_RTS:
C - - - - - 0x00877A 02:876A: 60        RTS



tbl_876B_ppu_hi:
- D 0 - - - 0x00877B 02:876B: 10        .byte > $1000   ; 00
- D 0 - - - 0x00877C 02:876C: 00        .byte > $0000   ; 02
- D 0 - - - 0x00877D 02:876D: 00        .byte > $0000   ; 04
- D 0 - - - 0x00877E 02:876E: 00        .byte > $0000   ; 06
- D 0 - - - 0x00877F 02:876F: 00        .byte > $0000   ; 08
- D 0 - - - 0x008780 02:8770: 00        .byte > $0000   ; 0A
- D 0 - - - 0x008781 02:8771: 00        .byte > $0000   ; 0C
- D 0 - - - 0x008782 02:8772: 00        .byte > $0000   ; 0E
- D 0 - - - 0x008783 02:8773: 00        .byte > $0000   ; 10
- D 0 - - - 0x008784 02:8774: 00        .byte > $0000   ; 12


; bzk garbage
- - - - - - 0x008785 02:8775: 00        .byte $00   ; 



tbl_8776_chr_lo:
- D 0 - - - 0x008786 02:8776: B8        .byte < _off005_ABB8_00   ; 
- D 0 - - - 0x008787 02:8777: C5        .byte < _off005_92C5_02   ; 
- D 0 - - - 0x008788 02:8778: 9F        .byte < _off005_9F9F_04   ; 
- D 0 - - - 0x008789 02:8779: 77        .byte < _off005_8B77_06   ; 
- D 0 - - - 0x00878A 02:877A: 9F        .byte < _off005_9F9F_08   ; 
- D 0 - - - 0x00878B 02:877B: 77        .byte < _off005_8B77_0A   ; 
- D 0 - - - 0x00878C 02:877C: C5        .byte < _off005_92C5_0C   ; 
- D 0 - - - 0x00878D 02:877D: 77        .byte < _off005_8B77_0E   ; 
- D 0 - - - 0x00878E 02:877E: 9F        .byte < _off005_9F9F_10   ; 
- D 0 - - - 0x00878F 02:877F: 90        .byte < _off005_A890_12   ; 

tbl_8780_chr_hi:
- D 0 - - - 0x008790 02:8780: AB        .byte > _off005_ABB8_00   ; 
- D 0 - - - 0x008791 02:8781: 92        .byte > _off005_92C5_02   ; 
- D 0 - - - 0x008792 02:8782: 9F        .byte > _off005_9F9F_04   ; 
- D 0 - - - 0x008793 02:8783: 8B        .byte > _off005_8B77_06   ; 
- D 0 - - - 0x008794 02:8784: 9F        .byte > _off005_9F9F_08   ; 
- D 0 - - - 0x008795 02:8785: 8B        .byte > _off005_8B77_0A   ; 
- D 0 - - - 0x008796 02:8786: 92        .byte > _off005_92C5_0C   ; 
- D 0 - - - 0x008797 02:8787: 8B        .byte > _off005_8B77_0E   ; 
- D 0 - - - 0x008798 02:8788: 9F        .byte > _off005_9F9F_10   ; 
- D 0 - - - 0x008799 02:8789: A8        .byte > _off005_A890_12   ; 



tbl_878A_screen_data_lo:
- D 0 - - - 0x00879A 02:878A: 08        .byte < _off004_B908_00   ; 
- D 0 - - - 0x00879B 02:878B: 25        .byte < _off004_9D25_02   ; 
- D 0 - - - 0x00879C 02:878C: 8F        .byte < _off004_A78F_04   ; 
- D 0 - - - 0x00879D 02:878D: F7        .byte < _off004_91F7_06   ; 
- D 0 - - - 0x00879E 02:878E: 8F        .byte < _off004_A78F_08   ; 
- D 0 - - - 0x00879F 02:878F: F7        .byte < _off004_91F7_0A   ; 
- D 0 - - - 0x0087A0 02:8790: 2D        .byte < _off004_9E2D_0C   ; 
- D 0 - - - 0x0087A1 02:8791: F7        .byte < _off004_91F7_0E   ; 
- D 0 - - - 0x0087A2 02:8792: 8F        .byte < _off004_A78F_10   ; 
- D 0 - - - 0x0087A3 02:8793: 20        .byte < _off004_AB20_12   ; 

tbl_8794_screen_data_hi:
- D 0 - - - 0x0087A4 02:8794: B9        .byte > _off004_B908_00   ; 
- D 0 - - - 0x0087A5 02:8795: 9D        .byte > _off004_9D25_02   ; 
- D 0 - - - 0x0087A6 02:8796: A7        .byte > _off004_A78F_04   ; 
- D 0 - - - 0x0087A7 02:8797: 91        .byte > _off004_91F7_06   ; 
- D 0 - - - 0x0087A8 02:8798: A7        .byte > _off004_A78F_08   ; 
- D 0 - - - 0x0087A9 02:8799: 91        .byte > _off004_91F7_0A   ; 
- D 0 - - - 0x0087AA 02:879A: 9E        .byte > _off004_9E2D_0C   ; 
- D 0 - - - 0x0087AB 02:879B: 91        .byte > _off004_91F7_0E   ; 
- D 0 - - - 0x0087AC 02:879C: A7        .byte > _off004_A78F_10   ; 
- D 0 - - - 0x0087AD 02:879D: AB        .byte > _off004_AB20_12   ; 



tbl_879E_palette_lo:
- D 0 - - - 0x0087AE 02:879E: 57        .byte < _off003_8B57_00   ; 
- D 0 - - - 0x0087AF 02:879F: F7        .byte < _off003_8AF7_02   ; 
- D 0 - - - 0x0087B0 02:87A0: 37        .byte < _off003_8B37_04   ; 
- D 0 - - - 0x0087B1 02:87A1: D7        .byte < _off003_8AD7_06   ; 
- D 0 - - - 0x0087B2 02:87A2: 37        .byte < _off003_8B37_08   ; 
- D 0 - - - 0x0087B3 02:87A3: D7        .byte < _off003_8AD7_0A   ; 
- D 0 - - - 0x0087B4 02:87A4: 17        .byte < _off003_8B17_0C   ; 
- D 0 - - - 0x0087B5 02:87A5: D7        .byte < _off003_8AD7_0E   ; 
- D 0 - - - 0x0087B6 02:87A6: 37        .byte < _off003_8B37_10   ; 
- D 0 - - - 0x0087B7 02:87A7: D7        .byte < _off003_8AD7_12   ; 

tbl_87A8_palette_hi:
- D 0 - - - 0x0087B8 02:87A8: 8B        .byte > _off003_8B57_00   ; 
- D 0 - - - 0x0087B9 02:87A9: 8A        .byte > _off003_8AF7_02   ; 
- D 0 - - - 0x0087BA 02:87AA: 8B        .byte > _off003_8B37_04   ; 
- D 0 - - - 0x0087BB 02:87AB: 8A        .byte > _off003_8AD7_06   ; 
- D 0 - - - 0x0087BC 02:87AC: 8B        .byte > _off003_8B37_08   ; 
- D 0 - - - 0x0087BD 02:87AD: 8A        .byte > _off003_8AD7_0A   ; 
- D 0 - - - 0x0087BE 02:87AE: 8B        .byte > _off003_8B17_0C   ; 
- D 0 - - - 0x0087BF 02:87AF: 8A        .byte > _off003_8AD7_0E   ; 
- D 0 - - - 0x0087C0 02:87B0: 8B        .byte > _off003_8B37_10   ; 
- D 0 - - - 0x0087C1 02:87B1: 8A        .byte > _off003_8AD7_12   ; 



tbl_87B2_lo:
- D 0 - - - 0x0087C2 02:87B2: 92        .byte < _off002_8A92_00   ; 
- D 0 - - - 0x0087C3 02:87B3: 5C        .byte < _off002_885C_02   ; 
- D 0 - - - 0x0087C4 02:87B4: C8        .byte < _off002_88C8_04   ; 
- D 0 - - - 0x0087C5 02:87B5: C6        .byte < _off002_87C6_06   ; 
- D 0 - - - 0x0087C6 02:87B6: 03        .byte < _off002_8903_08   ; 
- D 0 - - - 0x0087C7 02:87B7: 42        .byte < _off002_8942_0A   ; 
- D 0 - - - 0x0087C8 02:87B8: 96        .byte < _off002_8896_0C   ; 
- D 0 - - - 0x0087C9 02:87B9: 09        .byte < _off002_8809_0E   ; 
- D 0 - - - 0x0087CA 02:87BA: 37        .byte < _off002_8A37_10   ; 
- D 0 - - - 0x0087CB 02:87BB: 03        .byte < _off002_8A03_12   ; 

tbl_87BC_hi:
- D 0 - - - 0x0087CC 02:87BC: 8A        .byte > _off002_8A92_00   ; 
- D 0 - - - 0x0087CD 02:87BD: 88        .byte > _off002_885C_02   ; 
- D 0 - - - 0x0087CE 02:87BE: 88        .byte > _off002_88C8_04   ; 
- D 0 - - - 0x0087CF 02:87BF: 87        .byte > _off002_87C6_06   ; 
- D 0 - - - 0x0087D0 02:87C0: 89        .byte > _off002_8903_08   ; 
- D 0 - - - 0x0087D1 02:87C1: 89        .byte > _off002_8942_0A   ; 
- D 0 - - - 0x0087D2 02:87C2: 88        .byte > _off002_8896_0C   ; 
- D 0 - - - 0x0087D3 02:87C3: 88        .byte > _off002_8809_0E   ; 
- D 0 - - - 0x0087D4 02:87C4: 8A        .byte > _off002_8A37_10   ; 
- D 0 - - - 0x0087D5 02:87C5: 8A        .byte > _off002_8A03_12   ; 

;text for intro&ending


;intro, morbious
_off002_87C6_06:
- D 0 - I - 0x0087D6 02:87C6: FE        .byte $FE   ; line break 
- D 0 - I - 0x0087D7 02:87C7: 43 22     .word $2243	;position
;“Princess Eleanor is MINE.”
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x0087D9 02:87C9: 42        .byte                $42, $34, $1C, $13, $18, $0D, $0F, $1D, $1D, $00, $29, $16, $0F   ; 
- D 0 - I - 0x0087E6 02:87D6: 0B        .byte $0B, $18, $19, $1C, $00, $13, $1D, $00, $31, $2D, $32, $29, $40, $43   ; 
- D 0 - I - 0x0087F4 02:87E4: FE        .byte $FE   ; line break
- D 0 - I - 0x0087F5 02:87E5: C0 23     .word $23C0 ;position
- D 0 - I - 0x0087F7 02:87E7: FD        .byte $FD   ; 
;Attribute Table for portait&text
- D 0 - I - 0x0087F8 02:87E8: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $55, $05, $05, $05, $55, $05, $05   ; 
- D 0 - I - 0x008808 02:87F8: 00        .byte $00, $55, $00, $00, $00, $55, $00, $00, $00, $55, $00, $00, $00, $55, $00, $00   ; 

- D 0 - I - 0x008818 02:8808: FF        .byte $FF   ; end


;ending, morbious
_off002_8809_0E:
- D 0 - I - 0x008819 02:8809: FE        .byte $FE   ; line break
- D 0 - I - 0x00881A 02:880A: 45 22     .word $2245 ; position
;“Too late Shadax! The
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x00881C 02:880C: 42        .byte                          $42, $38, $19, $19, $00, $16, $0B, $1E, $0F, $00, $37   ; 
- D 0 - I - 0x008827 02:8817: 12        .byte $12, $0B, $0E, $0B, $22, $41, $00, $38, $12, $0F   ; 
- D 0 - I - 0x008831 02:8821: FE        .byte $FE   ; line break
- D 0 - I - 0x008832 02:8822: 66 22     .word $2266 ; position
;evil has aweakened!”
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x008834 02:8824: 0F        .byte                               $0F, $20, $13, $16, $00, $12, $0B, $1D, $00, $0B   ; 
- D 0 - I - 0x00883E 02:882E: 21        .byte $21, $0B, $15, $0F, $18, $0F, $0E, $41, $43   ; 
- D 0 - I - 0x008847 02:8837: FE        .byte $FE   ; line break
- D 0 - I - 0x008848 02:8838: C0 23     .word $23C0 ;position
- D 0 - I - 0x00884A 02:883A: FD        .byte $FD   ; 
;Attribute Table for portait&text
- D 0 - I - 0x00884B 02:883B: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $55, $05, $05, $05, $55, $05, $05   ; 
- D 0 - I - 0x00885B 02:884B: 00        .byte $00, $55, $00, $00, $00, $55, $00, $00, $00, $55, $00, $00, $00, $55, $00, $00   ; 

- D 0 - I - 0x00886B 02:885B: FF        .byte $FF   ; end


;intro, Princess
_off002_885C_02:
- D 0 - I - 0x00886C 02:885C: FE        .byte $FE   ; line break
- D 0 - I - 0x00886D 02:885D: 45 22     .word $2245 ;postion
;Princess
;“Shadax! help me!”
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x00886F 02:885F: 42        .byte                          $42, $37, $12, $0B, $0E, $0B, $22, $41, $00, $12, $0F   ; 
- D 0 - I - 0x00887A 02:886A: 16        .byte $16, $1A, $00, $17, $0F, $41, $43   ; 
- D 0 - I - 0x008881 02:8871: FE        .byte $FE   ; line break
- D 0 - I - 0x008882 02:8872: C0 23     .word $23C0
- D 0 - I - 0x008884 02:8874: FD        .byte $FD   ; 
;Attribute Table for portait&text
- D 0 - I - 0x008885 02:8875: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $55, $A5, $F5, $05, $55, $05, $05   ; 
- D 0 - I - 0x008895 02:8885: 00        .byte $00, $55, $AA, $0F, $88, $55, $00, $00, $00, $55, $AA, $00, $88, $55, $00, $00   ; 

- D 0 - I - 0x0088A5 02:8895: FF        .byte $FF   ; 


;ending, princess
_off002_8896_0C:
- D 0 - I - 0x0088A6 02:8896: FE        .byte $FE   ; line break 
- D 0 - I - 0x0088A7 02:8897: 49 22     .word $2249 ;position
;“Shadax!!”
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x0088A9 02:8899: 42        .byte                                              $42, $37, $12, $0B, $0E, $0B, $22   ; 
- D 0 - I - 0x0088B0 02:88A0: 41        .byte $41, $41, $43   ; 
- D 0 - I - 0x0088B3 02:88A3: FE        .byte $FE   ; line break
- D 0 - I - 0x0088B4 02:88A4: C0 23     .word $23C0 ;position
- D 0 - I - 0x0088B6 02:88A6: FD        .byte $FD   ; 
;Attribute Table for portait&text
- D 0 - I - 0x0088B7 02:88A7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $55, $A5, $05, $85, $55, $05, $05   ; 
- D 0 - I - 0x0088C7 02:88B7: 00        .byte $00, $55, $AA, $0F, $88, $55, $00, $00, $00, $55, $AA, $00, $88, $55, $00, $00   ; 

- D 0 - I - 0x0088D7 02:88C7: FF        .byte $FF   ; 


;intro, Shadax
_off002_88C8_04:
- D 0 - I - 0x0088D8 02:88C8: FE        .byte $FE   ; line break 
- D 0 - I - 0x0088D9 02:88C9: 46 22     .word $2246 ;position
;“Princess Eleanor!”
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x0088DB 02:88CB: 42        .byte                               $42, $34, $1C, $13, $18, $0D, $0F, $1D, $1D, $00   ; 
- D 0 - I - 0x0088E5 02:88D5: 29        .byte $29, $16, $0F, $0B, $18, $19, $1C, $41, $43   ; 
- D 0 - I - 0x0088EE 02:88DE: FE        .byte $FE   ; line break
- D 0 - I - 0x0088EF 02:88DF: C0 23     .word $23C0 ;position
- D 0 - I - 0x0088F1 02:88E1: FD        .byte $FD   ; 
;Attribute Table for portait&text
- D 0 - I - 0x0088F2 02:88E2: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $55, $05, $05, $05, $55, $05, $05   ; 
- D 0 - I - 0x008902 02:88F2: 00        .byte $00, $55, $C0, $FF, $30, $55, $00, $00, $00, $55, $00, $3F, $00, $55, $00, $00   ; 

- D 0 - I - 0x008912 02:8902: FF        .byte $FF   ; 

;intro, Shadax
_off002_8903_08:
- D 0 - I - 0x008913 02:8903: FE        .byte $FE   ; line break 
- D 0 - I - 0x008914 02:8904: 44 22     .word $2244 ;position
;“Morbius! Release her!”
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x008916 02:8906: 42        .byte                     $42, $31, $19, $1C, $0C, $13, $1F, $1D, $41, $00, $36, $0F   ; 
- D 0 - I - 0x008922 02:8912: 16        .byte $16, $0F, $0B, $1D, $0F, $00, $12, $0F, $1C, $41, $43   ; 

- D 0 - I - 0x00892D 02:891D: FE        .byte $FE   ; line break
- D 0 - I - 0x00892E 02:891E: C0 23     .word $23C0 ;position
- D 0 - I - 0x008930 02:8920: FD        .byte $FD   ; 
;Attribute Table for portait&text
- D 0 - I - 0x008931 02:8921: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $55, $05, $05, $05, $55, $05, $05   ; 
- D 0 - I - 0x008941 02:8931: 00        .byte $00, $55, $C0, $FF, $30, $55, $00, $00, $00, $55, $00, $3F, $00, $55, $00, $00   ; 

- D 0 - I - 0x008951 02:8941: FF        .byte $FF   ; 


;intro, morbious
_off002_8942_0A:
- D 0 - I - 0x008952 02:8942: FE        .byte $FE   ; line break 
- D 0 - I - 0x008953 02:8943: 45 22     .word $2245 ;position
;“Ha! Ha! She is to lose”
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x008955 02:8945: 42        .byte                          $42, $2C, $0B, $41, $00, $2C, $0B, $41, $00, $37, $12   ; 
- D 0 - I - 0x008960 02:8950: 0F        .byte $0F, $00, $13, $1D, $00, $1E, $19, $00, $16, $19, $1D, $0F   ; 
- D 0 - I - 0x00896C 02:895C: FE        .byte $FE   ; line break
- D 0 - I - 0x00896D 02:895D: 66 22     .word $2266 ;position
;her soul that I may$00, $00, $00(did they change dialouge at some point?)
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x00896F 02:895F: 12        .byte                               $12, $0F, $1C, $00, $1D, $19, $1F, $16, $00, $1E   ; 
- D 0 - I - 0x008979 02:8969: 12        .byte $12, $0B, $1E, $00, $2D, $00, $17, $0B, $23, $00, $00, $00   ; 

- D 0 - I - 0x008985 02:8975: FE        .byte $FE   ; line break
- D 0 - I - 0x008986 02:8976: 86 22     .word $2286 ;position
;become powerful beyond
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x008988 02:8978: 0C        .byte                               $0C, $0F, $0D, $19, $17, $0F, $00, $1A, $19, $21   ; 
- D 0 - I - 0x008992 02:8982: 0F        .byte $0F, $1C, $10, $1F, $16, $00, $0C, $0F, $23, $19, $18, $0E   ; 

- D 0 - I - 0x00899E 02:898E: FE        .byte $FE   ; line break
- D 0 - I - 0x00899F 02:898F: A6 22     .word $22A6 ;position
;your comprehension!”
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x0089A1 02:8991: 23        .byte                               $23, $19, $1F, $1C, $00, $0D, $19, $17, $1A, $1C   ; 
- D 0 - I - 0x0089AB 02:899B: 0F        .byte $0F, $12, $0F, $18, $1D, $13, $19, $18, $41, $43   ; 

- D 0 - I - 0x0089B5 02:89A5: FE        .byte $FE   ; line break
- D 0 - I - 0x0089B6 02:89A6: E5 22     .word $22E5 ;position
;“It is the solstice and
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x0089B8 02:89A8: 42        .byte                          $42, $2D, $1E, $00, $13, $1D, $00, $1E, $12, $0F, $00   ; 
- D 0 - I - 0x0089C3 02:89B3: 1D        .byte $1D, $19, $16, $1D, $1E, $13, $0D, $0F, $00, $0B, $18, $0E   ; 

- D 0 - I - 0x0089CF 02:89BF: FE        .byte $FE   ; line break
- D 0 - I - 0x0089D0 02:89C0: 06 23     .word $2306 ;position
;evil shall rise this
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x0089D2 02:89C2: 0F        .byte                               $0F, $20, $13, $16, $00, $1D, $12, $0B, $16, $16   ; 
- D 0 - I - 0x0089DC 02:89CC: 00        .byte $00, $1C, $13, $1D, $0F, $00, $1E, $12, $13, $1D   ; 

- D 0 - I - 0x0089E6 02:89D6: FE        .byte $FE   ; line break
- D 0 - I - 0x0089E7 02:89D7: 26 23     .word $2326 ;position
;day!”
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x0089E9 02:89D9: 0E        .byte                               $0E, $0B, $23, $41, $43   ; 
- D 0 - I - 0x0089EE 02:89DE: FE        .byte $FE   ; line break
- D 0 - I - 0x0089EF 02:89DF: C0 23     .word $23C0 ;position
- D 0 - I - 0x0089F1 02:89E1: FD        .byte $FD   ; 
;Attribute Table for portait&text
- D 0 - I - 0x0089F2 02:89E2: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $55, $05, $05, $05, $55, $05, $05   ; 
- D 0 - I - 0x008A02 02:89F2: 00        .byte $00, $55, $00, $00, $00, $55, $00, $00, $00, $55, $00, $00, $00, $55, $00, $00   ; 

- D 0 - I - 0x008A12 02:8A02: FF        .byte $FF   ; end

;ending, morbious
_off002_8A03_12:
- D 0 - I - 0x008A13 02:8A03: FE        .byte $FE   ; line break
- D 0 - I - 0x008A14 02:8A04: 48 22     .word $2248 ;position
;“No....NO!!”
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x008A16 02:8A06: 42        .byte                                         $42, $32, $19, $40, $40, $40, $40, $32   ; 
- D 0 - I - 0x008A1E 02:8A0E: 33        .byte $33, $41, $41, $43   ; 

- D 0 - I - 0x008A22 02:8A12: FE        .byte $FE   ; line break
- D 0 - I - 0x008A23 02:8A13: C0 23     .word $23C0 ;position
- D 0 - I - 0x008A25 02:8A15: FD        .byte $FD   ; 
;Attribute Table for portait&text
- D 0 - I - 0x008A26 02:8A16: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $55, $05, $05, $05, $55, $05, $05   ; 
- D 0 - I - 0x008A36 02:8A26: 00        .byte $00, $55, $00, $00, $00, $55, $00, $00, $00, $55, $00, $00, $00, $55, $00, $00   ; 

- D 0 - I - 0x008A46 02:8A36: FF        .byte $FF   ; end

;ending, Shadax
_off002_8A37_10:
- D 0 - I - 0x008A47 02:8A37: FE        .byte $FE   ; line break
- D 0 - I - 0x008A48 02:8A38: 46 22     .word $2246 ;position
;“No Morbius! For I
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x008A4A 02:8A3A: 42        .byte                               $42, $32, $19, $00, $31, $19, $1C, $0C, $13, $1F   ; 
- D 0 - I - 0x008A54 02:8A44: 1D        .byte $1D, $41, $00, $2A, $19, $1C, $00, $2D   ; 

- D 0 - I - 0x008A5C 02:8A4C: FE        .byte $FE   ; line break
- D 0 - I - 0x008A5D 02:8A4D: 67 22     .word $2267
;posess the staff of
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x008A5F 02:8A4F: 1A        .byte                                    $1A, $19, $1D, $0F, $1D, $1D, $00, $1E, $12   ; 
- D 0 - I - 0x008A68 02:8A58: 0F        .byte $0F, $00, $1D, $1E, $0B, $10, $10, $00, $19, $10   ; 

- D 0 - I - 0x008A72 02:8A62: FE        .byte $FE   ; line break
- D 0 - I - 0x008A73 02:8A63: 87 22     .word $2287 ;position
;Demnos!”
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x008A75 02:8A65: 28        .byte                                    $28, $0F, $17, $18, $19, $1D, $41, $43   ; 
- D 0 - I - 0x008A7D 02:8A6D: FE        .byte $FE   ; line break
- D 0 - I - 0x008A7E 02:8A6E: C0 23     .word $23C0 ;position
- D 0 - I - 0x008A80 02:8A70: FD        .byte $FD   ; 
;Attribute Table for portait&text
- D 0 - I - 0x008A81 02:8A71: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $55, $05, $05, $05, $55, $05, $05   ; 
- D 0 - I - 0x008A91 02:8A81: 00        .byte $00, $55, $C0, $FF, $30, $55, $00, $00, $00, $55, $00, $3F, $00, $55, $00, $00   ; 

- D 0 - I - 0x008AA1 02:8A91: FF        .byte $FF   ; 


;Attribute Table for title screen logo & Shadax 
_off002_8A92_00:
- D 0 - I - 0x008AA2 02:8A92: FE        .byte $FE   ; line break
- D 0 - I - 0x008AA3 02:8A93: C0 23     .word $23C0 ;position
- D 0 - I - 0x008AA5 02:8A95: FD        .byte $FD   ; 
- D 0 - I - 0x008AA6 02:8A96: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x008AB6 02:8AA6: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50, $55, $55, $55, $55, $55, $55, $55, $55   ; 
- D 0 - I - 0x008AC6 02:8AB6: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55, $A5, $A5, $A5, $A5, $A5, $F5, $F5, $F5   ; 
- D 0 - I - 0x008AD6 02:8AC6: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



; bzk garbage, code already knows it needs to stop reading after 40h attributes
- - - - - - 0x008AE6 02:8AD6: FF        .byte $FF   ; end

;palettes for intro cutscene portaits:

;morbious, intro
_off003_8AD7_06:
_off003_8AD7_0A:
_off003_8AD7_0E:
_off003_8AD7_12:
- D 0 - I - 0x008AE7 02:8AD7: 0F        .byte $0F, $17, $27, $36   ; hand&face
- D 0 - I - 0x008AEB 02:8ADB: 0F        .byte $0F, $00, $10, $20   ; text&border
- D 0 - I - 0x008AEF 02:8ADF: 0F        .byte $0F, $0F, $0F, $0F   ; blank
- D 0 - I - 0x008AF3 02:8AE3: 0F        .byte $0F, $0F, $0F, $0F   ; blank

- D 0 - I - 0x008AF7 02:8AE7: 0F        .byte $0F, $15, $24, $33   ; magic smoke
- D 0 - I - 0x008AFB 02:8AEB: 0F        .byte $0F, $16, $00, $20   ; eyes&teeth overlay
- D 0 - I - 0x008AFF 02:8AEF: 0F        .byte $0F, $00, $00, $20   ; teeth overlay
- D 0 - I - 0x008B03 02:8AF3: 0F        .byte $0F, $0F, $0F, $0F   ; blank


;Prinsess&demons, intro
_off003_8AF7_02:
- D 0 - I - 0x008B07 02:8AF7: 0F        .byte $0F, $20, $1C, $36   ; clothes&skin
- D 0 - I - 0x008B0B 02:8AFB: 0F        .byte $0F, $00, $10, $20   ; Text&border
- D 0 - I - 0x008B0F 02:8AFF: 0F        .byte $0F, $28, $17, $06   ; Princess hair
- D 0 - I - 0x008B13 02:8B03: 0F        .byte $0F, $0F, $15, $36   ; skin&lips

- D 0 - I - 0x008B17 02:8B07: 0F        .byte $0F, $00, $20, $11   ; demons eyes overlay
- D 0 - I - 0x008B1B 02:8B0B: 0F        .byte $0F, $20, $28, $36   ; skin&hair, demons teeth
- D 0 - I - 0x008B1F 02:8B0F: 0F        .byte $0F, $17, $28, $38   ; prinsess hair
- D 0 - I - 0x008B23 02:8B13: 0F        .byte $0F, $00, $10, $0F   ; eyes overlay


;princess, ending
_off003_8B17_0C:
- D 0 - I - 0x008B27 02:8B17: 0F        .byte $0F, $20, $1C, $36   ; clothes&skin
- D 0 - I - 0x008B2B 02:8B1B: 0F        .byte $0F, $00, $10, $20   ; text&border
- D 0 - I - 0x008B2F 02:8B1F: 0F        .byte $0F, $19, $2B, $36   ; breen blocks&skin
- D 0 - I - 0x008B33 02:8B23: 0F        .byte $0F, $0F, $15, $36   ; lips&skin

- D 0 - I - 0x008B37 02:8B27: 0F        .byte $0F, $0F, $1C, $2C   ; jail bars
- D 0 - I - 0x008B3B 02:8B2B: 0F        .byte $0F, $00, $20, $11   ; eyes overlay
- D 0 - I - 0x008B3F 02:8B2F: 0F        .byte $0F, $17, $28, $38   ; hair
- D 0 - I - 0x008B43 02:8B33: 0F        .byte $0F, $00, $10, $0F   ; unused


;Shadax
_off003_8B37_04:
_off003_8B37_08:
_off003_8B37_10:
- D 0 - I - 0x008B47 02:8B37: 0F        .byte $0F, $21, $11, $01   ; hat&moon
- D 0 - I - 0x008B4B 02:8B3B: 0F        .byte $0F, $00, $10, $20   ; text&border
- D 0 - I - 0x008B4F 02:8B3F: 0F        .byte $0F, $21, $26, $01   ; face&hat
- D 0 - I - 0x008B53 02:8B43: 0F        .byte $0F, $36, $26, $16   ; beard

- D 0 - I - 0x008B57 02:8B47: 0F        .byte $0F, $27, $17, $07   ; beard
- D 0 - I - 0x008B5B 02:8B4B: 0F        .byte $0F, $21, $11, $01   ; hat
- D 0 - I - 0x008B5F 02:8B4F: 0F        .byte $0F, $36, $26, $16   ; face
- D 0 - I - 0x008B63 02:8B53: 0F        .byte $0F, $01, $20, $0F   ; eyes, moon overlay

;title screen palette
_off003_8B57_00:
- D 0 - I - 0x008B67 02:8B57: 0F        .byte $0F, $18, $28, $38   ; Soltice logo
- D 0 - I - 0x008B6B 02:8B5B: 0F        .byte $0F, $02, $12, $22   ; Shadax
- D 0 - I - 0x008B6F 02:8B5F: 0F        .byte $0F, $02, $14, $24   ; Blocks&border
- D 0 - I - 0x008B73 02:8B63: 0F        .byte $0F, $04, $14, $24   ; blocks

- D 0 - I - 0x008B77 02:8B67: 0F        .byte $0F, $27, $00, $16   ; face and 'statche
- D 0 - I - 0x008B7B 02:8B6B: 0F        .byte $0F, $1B, $19, $29   ; potion
- D 0 - I - 0x008B7F 02:8B6F: 0F        .byte $0F, $15, $25, $35   ; potion smoke
- D 0 - I - 0x008B83 02:8B73: 0F        .byte $0F, $0F, $0F, $0F   ; blank



_off005_8B77_06:
_off005_8B77_0A:
_off005_8B77_0E:
    .incbin "incbin/chr/01___8B77_91F6.chr"



_off004_91F7_06:
_off004_91F7_0A:
_off004_91F7_0E:
- D 0 - I - 0x009207 02:91F7: 08        .byte $08   ; 
- D 0 - I - 0x009208 02:91F8: 06        .byte $06   ; 

- D 0 - I - 0x009209 02:91F9: 05        .byte (@end - @start) / 2
@start:
- D 0 - I - 0x00920A 02:91FA: 7E 92     .word off_927E_00
- D 0 - I - 0x00920C 02:91FC: 97 92     .word off_9297_01
- D 0 - I - 0x00920E 02:91FE: AC 92     .word off_92AC_02
- D 0 - I - 0x009210 02:9200: B3 92     .word off_92B3_03
- D 0 - I - 0x009212 02:9202: BA 92     .word off_92BA_04
@end:

- D 0 - I - 0x009214 02:9204: 0C        .byte $0C   ; columns
- D 0 - I - 0x009215 02:9205: 0A        .byte $0A   ; rows
- D 0 - I - 0x009216 02:9206: 00        .byte $00, $00, $00, $00, $00, $00, $01, $02, $03, $04, $00, $00   ; 
- D 0 - I - 0x009222 02:9212: 00        .byte $00, $00, $00, $00, $00, $00, $05, $06, $07, $08, $09, $00   ; 
- D 0 - I - 0x00922E 02:921E: 00        .byte $00, $00, $00, $00, $00, $00, $0A, $0B, $0C, $00, $00, $00   ; 
- D 0 - I - 0x00923A 02:922A: 0D        .byte $0D, $00, $00, $00, $00, $00, $0E, $0F, $10, $00, $11, $12   ; 
- D 0 - I - 0x009246 02:9236: 13        .byte $13, $14, $15, $00, $00, $00, $16, $17, $18, $00, $19, $1A   ; 
- D 0 - I - 0x009252 02:9242: 1B        .byte $1B, $1C, $1D, $00, $00, $00, $1E, $1F, $20, $00, $00, $00   ; 
- D 0 - I - 0x00925E 02:924E: 21        .byte $21, $22, $23, $00, $00, $00, $24, $25, $00, $26, $00, $00   ; 
- D 0 - I - 0x00926A 02:925A: 27        .byte $27, $28, $29, $2A, $00, $00, $2B, $2C, $2D, $2E, $00, $00   ; 
- D 0 - I - 0x009276 02:9266: 00        .byte $00, $2F, $30, $31, $32, $33, $34, $35, $36, $00, $00, $00   ; 
- D 0 - I - 0x009282 02:9272: 00        .byte $00, $37, $38, $39, $3A, $3B, $3C, $3D, $3E, $00, $00, $00   ; 



off_927E_00:
- D 0 - I - 0x00928E 02:927E: 04        .byte $04   ; 
- D 0 - I - 0x00928F 02:927F: 05        .byte $05   ; 
- D 0 - I - 0x009290 02:9280: 00        .byte $00   ; 
- D 0 - I - 0x009291 02:9281: 10        .byte $10   ; 
- D 0 - I - 0x009292 02:9282: FF        .byte $FF   ; 
- D 0 - I - 0x009293 02:9283: 3F        .byte $3F   ; 
- D 0 - I - 0x009294 02:9284: 40        .byte $40   ; 
- D 0 - I - 0x009295 02:9285: 41        .byte $41   ; 
- D 0 - I - 0x009296 02:9286: 42        .byte $42   ; 
- D 0 - I - 0x009297 02:9287: 43        .byte $43   ; 
- D 0 - I - 0x009298 02:9288: 44        .byte $44   ; 
- D 0 - I - 0x009299 02:9289: 45        .byte $45   ; 
- D 0 - I - 0x00929A 02:928A: 46        .byte $46   ; 
- D 0 - I - 0x00929B 02:928B: 47        .byte $47   ; 
- D 0 - I - 0x00929C 02:928C: 48        .byte $48   ; 
- D 0 - I - 0x00929D 02:928D: 49        .byte $49   ; 
- D 0 - I - 0x00929E 02:928E: 4A        .byte $4A   ; 
- D 0 - I - 0x00929F 02:928F: 4B        .byte $4B   ; 
- D 0 - I - 0x0092A0 02:9290: 4C        .byte $4C   ; 
- D 0 - I - 0x0092A1 02:9291: 4D        .byte $4D   ; 
- D 0 - I - 0x0092A2 02:9292: 4E        .byte $4E   ; 
- D 0 - I - 0x0092A3 02:9293: 4F        .byte $4F   ; 
- D 0 - I - 0x0092A4 02:9294: 50        .byte $50   ; 
- D 0 - I - 0x0092A5 02:9295: 51        .byte $51   ; 
- D 0 - I - 0x0092A6 02:9296: 52        .byte $52   ; 



off_9297_01:
- D 0 - I - 0x0092A7 02:9297: 04        .byte $04   ; 
- D 0 - I - 0x0092A8 02:9298: 04        .byte $04   ; 
- D 0 - I - 0x0092A9 02:9299: 00        .byte $00   ; 
- D 0 - I - 0x0092AA 02:929A: 11        .byte $11   ; 
- D 0 - I - 0x0092AB 02:929B: 27        .byte $27   ; 
- D 0 - I - 0x0092AC 02:929C: 53        .byte $53   ; 
- D 0 - I - 0x0092AD 02:929D: 54        .byte $54   ; 
- D 0 - I - 0x0092AE 02:929E: 55        .byte $55   ; 
- D 0 - I - 0x0092AF 02:929F: 56        .byte $56   ; 
- D 0 - I - 0x0092B0 02:92A0: 57        .byte $57   ; 
- D 0 - I - 0x0092B1 02:92A1: 58        .byte $58   ; 
- D 0 - I - 0x0092B2 02:92A2: 59        .byte $59   ; 
- D 0 - I - 0x0092B3 02:92A3: 5A        .byte $5A   ; 
- D 0 - I - 0x0092B4 02:92A4: 5B        .byte $5B   ; 
- D 0 - I - 0x0092B5 02:92A5: 5C        .byte $5C   ; 
- D 0 - I - 0x0092B6 02:92A6: 5D        .byte $5D   ; 
- D 0 - I - 0x0092B7 02:92A7: 5E        .byte $5E   ; 
- D 0 - I - 0x0092B8 02:92A8: 00        .byte $00   ; 
- D 0 - I - 0x0092B9 02:92A9: 5F        .byte $5F   ; 
- D 0 - I - 0x0092BA 02:92AA: 60        .byte $60   ; 
- D 0 - I - 0x0092BB 02:92AB: 61        .byte $61   ; 



off_92AC_02:
- D 0 - I - 0x0092BC 02:92AC: 02        .byte $02   ; 
- D 0 - I - 0x0092BD 02:92AD: 01        .byte $01   ; 
- D 0 - I - 0x0092BE 02:92AE: 01        .byte $01   ; 
- D 0 - I - 0x0092BF 02:92AF: 36        .byte $36   ; 
- D 0 - I - 0x0092C0 02:92B0: 0F        .byte $0F   ; 
- D 0 - I - 0x0092C1 02:92B1: 62        .byte $62   ; 
- D 0 - I - 0x0092C2 02:92B2: 63        .byte $63   ; 



off_92B3_03:
- D 0 - I - 0x0092C3 02:92B3: 02        .byte $02   ; 
- D 0 - I - 0x0092C4 02:92B4: 01        .byte $01   ; 
- D 0 - I - 0x0092C5 02:92B5: 41        .byte $41   ; 
- D 0 - I - 0x0092C6 02:92B6: 43        .byte $43   ; 
- D 0 - I - 0x0092C7 02:92B7: 0F        .byte $0F   ; 
- D 0 - I - 0x0092C8 02:92B8: 63        .byte $63   ; 
- D 0 - I - 0x0092C9 02:92B9: 62        .byte $62   ; 



off_92BA_04:
- D 0 - I - 0x0092CA 02:92BA: 03        .byte $03   ; 
- D 0 - I - 0x0092CB 02:92BB: 02        .byte $02   ; 
- D 0 - I - 0x0092CC 02:92BC: 02        .byte $02   ; 
- D 0 - I - 0x0092CD 02:92BD: 3B        .byte $3B   ; 
- D 0 - I - 0x0092CE 02:92BE: 2D        .byte $2D   ; 
- D 0 - I - 0x0092CF 02:92BF: 64        .byte $64   ; 
- D 0 - I - 0x0092D0 02:92C0: 65        .byte $65   ; 
- D 0 - I - 0x0092D1 02:92C1: 66        .byte $66   ; 
- D 0 - I - 0x0092D2 02:92C2: 67        .byte $67   ; 
- D 0 - I - 0x0092D3 02:92C3: 68        .byte $68   ; 
- D 0 - I - 0x0092D4 02:92C4: 00        .byte $00   ; 



_off005_92C5_02:
_off005_92C5_0C:
    .incbin "incbin/chr/01___92C5_9D24.chr"



_off004_9D25_02:
- D 0 - I - 0x009D35 02:9D25: 08        .byte $08   ; 
- D 0 - I - 0x009D36 02:9D26: 06        .byte $06   ; 

- D 0 - I - 0x009D37 02:9D27: 0A        .byte (@end - @start) / 2
@start:
- D 0 - I - 0x009D38 02:9D28: B6 9D     .word off_9DB6_00
- D 0 - I - 0x009D3A 02:9D2A: BC 9D     .word off_9DBC_01
- D 0 - I - 0x009D3C 02:9D2C: C2 9D     .word off_9DC2_02
- D 0 - I - 0x009D3E 02:9D2E: C8 9D     .word off_9DC8_03
- D 0 - I - 0x009D40 02:9D30: CE 9D     .word off_9DCE_04
- D 0 - I - 0x009D42 02:9D32: D4 9D     .word off_9DD4_05
- D 0 - I - 0x009D44 02:9D34: DA 9D     .word off_9DDA_06
- D 0 - I - 0x009D46 02:9D36: E5 9D     .word off_9DE5_07
- D 0 - I - 0x009D48 02:9D38: F2 9D     .word off_9DF2_08
- D 0 - I - 0x009D4A 02:9D3A: 24 9E     .word off_9E24_09
@end:

- D 0 - I - 0x009D4C 02:9D3C: 0C        .byte $0C   ; columns
- D 0 - I - 0x009D4D 02:9D3D: 0A        .byte $0A   ; rows
- D 0 - I - 0x009D4E 02:9D3E: 01        .byte $01, $02, $03, $04, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x009D5A 02:9D4A: 05        .byte $05, $06, $07, $08, $00, $00, $09, $0A, $00, $00, $00, $00   ; 
- D 0 - I - 0x009D66 02:9D56: 0B        .byte $0B, $0C, $0D, $0E, $00, $00, $0F, $10, $11, $00, $00, $00   ; 
- D 0 - I - 0x009D72 02:9D62: 12        .byte $12, $13, $14, $00, $00, $00, $15, $16, $17, $00, $18, $00   ; 
- D 0 - I - 0x009D7E 02:9D6E: 19        .byte $19, $1A, $1B, $1C, $1D, $1E, $1F, $20, $21, $22, $23, $24   ; 
- D 0 - I - 0x009D8A 02:9D7A: 25        .byte $25, $26, $27, $28, $29, $2A, $2B, $2C, $2D, $2E, $2F, $30   ; 
- D 0 - I - 0x009D96 02:9D86: 31        .byte $31, $32, $12, $33, $34, $35, $36, $37, $38, $39, $3A, $3B   ; 
- D 0 - I - 0x009DA2 02:9D92: 00        .byte $00, $00, $00, $00, $3C, $3D, $3E, $3F, $40, $41, $42, $43   ; 
- D 0 - I - 0x009DAE 02:9D9E: 00        .byte $00, $00, $00, $00, $44, $36, $36, $45, $00, $00, $46, $47   ; 
- D 0 - I - 0x009DBA 02:9DAA: 00        .byte $00, $00, $00, $00, $48, $49, $36, $4A, $00, $00, $4B, $4C   ; 



off_9DB6_00:
- D 0 - I - 0x009DC6 02:9DB6: 01        .byte $01   ; 
- D 0 - I - 0x009DC7 02:9DB7: 01        .byte $01   ; 
- D 0 - I - 0x009DC8 02:9DB8: 00        .byte $00   ; 
- D 0 - I - 0x009DC9 02:9DB9: 06        .byte $06   ; 
- D 0 - I - 0x009DCA 02:9DBA: 09        .byte $09   ; 
- D 0 - I - 0x009DCB 02:9DBB: 4D        .byte $4D   ; 



off_9DBC_01:
- D 0 - I - 0x009DCC 02:9DBC: 01        .byte $01   ; 
- D 0 - I - 0x009DCD 02:9DBD: 01        .byte $01   ; 
- D 0 - I - 0x009DCE 02:9DBE: 00        .byte $00   ; 
- D 0 - I - 0x009DCF 02:9DBF: 13        .byte $13   ; 
- D 0 - I - 0x009DD0 02:9DC0: 02        .byte $02   ; 
- D 0 - I - 0x009DD1 02:9DC1: 4E        .byte $4E   ; 



off_9DC2_02:
- D 0 - I - 0x009DD2 02:9DC2: 01        .byte $01   ; 
- D 0 - I - 0x009DD3 02:9DC3: 01        .byte $01   ; 
- D 0 - I - 0x009DD4 02:9DC4: 00        .byte $00   ; 
- D 0 - I - 0x009DD5 02:9DC5: 35        .byte $35   ; 
- D 0 - I - 0x009DD6 02:9DC6: 10        .byte $10   ; 
- D 0 - I - 0x009DD7 02:9DC7: 4F        .byte $4F   ; 



off_9DC8_03:
- D 0 - I - 0x009DD8 02:9DC8: 01        .byte $01   ; 
- D 0 - I - 0x009DD9 02:9DC9: 01        .byte $01   ; 
- D 0 - I - 0x009DDA 02:9DCA: 00        .byte $00   ; 
- D 0 - I - 0x009DDB 02:9DCB: 3D        .byte $3D   ; 
- D 0 - I - 0x009DDC 02:9DCC: 14        .byte $14   ; 
- D 0 - I - 0x009DDD 02:9DCD: 4F        .byte $4F   ; 



off_9DCE_04:
- D 0 - I - 0x009DDE 02:9DCE: 01        .byte $01   ; 
- D 0 - I - 0x009DDF 02:9DCF: 01        .byte $01   ; 
- D 0 - I - 0x009DE0 02:9DD0: 00        .byte $00   ; 
- D 0 - I - 0x009DE1 02:9DD1: 51        .byte $51   ; 
- D 0 - I - 0x009DE2 02:9DD2: 24        .byte $24   ; 
- D 0 - I - 0x009DE3 02:9DD3: 50        .byte $50   ; 



off_9DD4_05:
- D 0 - I - 0x009DE4 02:9DD4: 01        .byte $01   ; 
- D 0 - I - 0x009DE5 02:9DD5: 01        .byte $01   ; 
- D 0 - I - 0x009DE6 02:9DD6: 00        .byte $00   ; 
- D 0 - I - 0x009DE7 02:9DD7: 5C        .byte $5C   ; 
- D 0 - I - 0x009DE8 02:9DD8: 24        .byte $24   ; 
- D 0 - I - 0x009DE9 02:9DD9: 51        .byte $51   ; 



off_9DDA_06:
- D 0 - I - 0x009DEA 02:9DDA: 03        .byte $03   ; 
- D 0 - I - 0x009DEB 02:9DDB: 02        .byte $02   ; 
- D 0 - I - 0x009DEC 02:9DDC: 01        .byte $01   ; 
- D 0 - I - 0x009DED 02:9DDD: 07        .byte $07   ; 
- D 0 - I - 0x009DEE 02:9DDE: 11        .byte $11   ; 
- D 0 - I - 0x009DEF 02:9DDF: 52        .byte $52   ; 
- D 0 - I - 0x009DF0 02:9DE0: 53        .byte $53   ; 
- D 0 - I - 0x009DF1 02:9DE1: 54        .byte $54   ; 
- D 0 - I - 0x009DF2 02:9DE2: 55        .byte $55   ; 
- D 0 - I - 0x009DF3 02:9DE3: 33        .byte $33   ; 
- D 0 - I - 0x009DF4 02:9DE4: 00        .byte $00   ; 



off_9DE5_07:
- D 0 - I - 0x009DF5 02:9DE5: 04        .byte $04   ; 
- D 0 - I - 0x009DF6 02:9DE6: 02        .byte $02   ; 
- D 0 - I - 0x009DF7 02:9DE7: 01        .byte $01   ; 
- D 0 - I - 0x009DF8 02:9DE8: 00        .byte $00   ; 
- D 0 - I - 0x009DF9 02:9DE9: 27        .byte $27   ; 
- D 0 - I - 0x009DFA 02:9DEA: 56        .byte $56   ; 
- D 0 - I - 0x009DFB 02:9DEB: 57        .byte $57   ; 
- D 0 - I - 0x009DFC 02:9DEC: 58        .byte $58   ; 
- D 0 - I - 0x009DFD 02:9DED: 59        .byte $59   ; 
- D 0 - I - 0x009DFE 02:9DEE: 5A        .byte $5A   ; 
- D 0 - I - 0x009DFF 02:9DEF: 5B        .byte $5B   ; 
- D 0 - I - 0x009E00 02:9DF0: 5C        .byte $5C   ; 
- D 0 - I - 0x009E01 02:9DF1: 5D        .byte $5D   ; 



off_9DF2_08:
- D 0 - I - 0x009E02 02:9DF2: 05        .byte $05   ; 
- D 0 - I - 0x009E03 02:9DF3: 09        .byte $09   ; 
- D 0 - I - 0x009E04 02:9DF4: 02        .byte $02   ; 
- D 0 - I - 0x009E05 02:9DF5: 2B        .byte $2B   ; 
- D 0 - I - 0x009E06 02:9DF6: 03        .byte $03   ; 
- D 0 - I - 0x009E07 02:9DF7: 5E        .byte $5E   ; 
- D 0 - I - 0x009E08 02:9DF8: 5F        .byte $5F   ; 
- D 0 - I - 0x009E09 02:9DF9: 60        .byte $60   ; 
- D 0 - I - 0x009E0A 02:9DFA: 61        .byte $61   ; 
- D 0 - I - 0x009E0B 02:9DFB: 00        .byte $00   ; 
- D 0 - I - 0x009E0C 02:9DFC: 62        .byte $62   ; 
- D 0 - I - 0x009E0D 02:9DFD: 00        .byte $00   ; 
- D 0 - I - 0x009E0E 02:9DFE: 63        .byte $63   ; 
- D 0 - I - 0x009E0F 02:9DFF: 64        .byte $64   ; 
- D 0 - I - 0x009E10 02:9E00: 65        .byte $65   ; 
- D 0 - I - 0x009E11 02:9E01: 66        .byte $66   ; 
- D 0 - I - 0x009E12 02:9E02: 00        .byte $00   ; 
- D 0 - I - 0x009E13 02:9E03: 00        .byte $00   ; 
- D 0 - I - 0x009E14 02:9E04: 67        .byte $67   ; 
- D 0 - I - 0x009E15 02:9E05: 68        .byte $68   ; 
- D 0 - I - 0x009E16 02:9E06: 69        .byte $69   ; 
- D 0 - I - 0x009E17 02:9E07: 00        .byte $00   ; 
- D 0 - I - 0x009E18 02:9E08: 6A        .byte $6A   ; 
- D 0 - I - 0x009E19 02:9E09: 6B        .byte $6B   ; 
- D 0 - I - 0x009E1A 02:9E0A: 6C        .byte $6C   ; 
- D 0 - I - 0x009E1B 02:9E0B: 00        .byte $00   ; 
- D 0 - I - 0x009E1C 02:9E0C: 6D        .byte $6D   ; 
- D 0 - I - 0x009E1D 02:9E0D: 6E        .byte $6E   ; 
- D 0 - I - 0x009E1E 02:9E0E: 6F        .byte $6F   ; 
- D 0 - I - 0x009E1F 02:9E0F: 00        .byte $00   ; 
- D 0 - I - 0x009E20 02:9E10: 00        .byte $00   ; 
- D 0 - I - 0x009E21 02:9E11: 70        .byte $70   ; 
- D 0 - I - 0x009E22 02:9E12: 71        .byte $71   ; 
- D 0 - I - 0x009E23 02:9E13: 72        .byte $72   ; 
- D 0 - I - 0x009E24 02:9E14: 00        .byte $00   ; 
- D 0 - I - 0x009E25 02:9E15: 00        .byte $00   ; 
- D 0 - I - 0x009E26 02:9E16: 00        .byte $00   ; 
- D 0 - I - 0x009E27 02:9E17: 73        .byte $73   ; 
- D 0 - I - 0x009E28 02:9E18: 74        .byte $74   ; 
- D 0 - I - 0x009E29 02:9E19: 00        .byte $00   ; 
- D 0 - I - 0x009E2A 02:9E1A: 00        .byte $00   ; 
- D 0 - I - 0x009E2B 02:9E1B: 00        .byte $00   ; 
- D 0 - I - 0x009E2C 02:9E1C: 75        .byte $75   ; 
- D 0 - I - 0x009E2D 02:9E1D: 76        .byte $76   ; 
- D 0 - I - 0x009E2E 02:9E1E: 00        .byte $00   ; 
- D 0 - I - 0x009E2F 02:9E1F: 00        .byte $00   ; 
- D 0 - I - 0x009E30 02:9E20: 00        .byte $00   ; 
- D 0 - I - 0x009E31 02:9E21: 77        .byte $77   ; 
- D 0 - I - 0x009E32 02:9E22: 78        .byte $78   ; 
- D 0 - I - 0x009E33 02:9E23: 79        .byte $79   ; 



off_9E24_09:
- D 0 - I - 0x009E34 02:9E24: 02        .byte $02   ; 
- D 0 - I - 0x009E35 02:9E25: 02        .byte $02   ; 
- D 0 - I - 0x009E36 02:9E26: 01        .byte $01   ; 
- D 0 - I - 0x009E37 02:9E27: 50        .byte $50   ; 
- D 0 - I - 0x009E38 02:9E28: 2D        .byte $2D   ; 
- D 0 - I - 0x009E39 02:9E29: 7A        .byte $7A   ; 
- D 0 - I - 0x009E3A 02:9E2A: 7B        .byte $7B   ; 
- D 0 - I - 0x009E3B 02:9E2B: 7C        .byte $7C   ; 
- D 0 - I - 0x009E3C 02:9E2C: 00        .byte $00   ; 



_off004_9E2D_0C:
- D 0 - I - 0x009E3D 02:9E2D: 08        .byte $08   ; 
- D 0 - I - 0x009E3E 02:9E2E: 06        .byte $06   ; 

- D 0 - I - 0x009E3F 02:9E2F: 11        .byte (@end - @start) / 2
@start:
- D 0 - I - 0x009E40 02:9E30: CC 9E     .word off_9ECC_00
- D 0 - I - 0x009E42 02:9E32: DA 9E     .word off_9EDA_01
- D 0 - I - 0x009E44 02:9E34: E8 9E     .word off_9EE8_02
- D 0 - I - 0x009E46 02:9E36: F6 9E     .word off_9EF6_03
- D 0 - I - 0x009E48 02:9E38: 04 9F     .word off_9F04_04
- D 0 - I - 0x009E4A 02:9E3A: 12 9F     .word off_9F12_05
- D 0 - I - 0x009E4C 02:9E3C: 20 9F     .word off_9F20_06
- D 0 - I - 0x009E4E 02:9E3E: 2E 9F     .word off_9F2E_07
- D 0 - I - 0x009E50 02:9E40: 3C 9F     .word off_9F3C_08
- D 0 - I - 0x009E52 02:9E42: 4A 9F     .word off_9F4A_09
- D 0 - I - 0x009E54 02:9E44: 58 9F     .word off_9F58_0A
- D 0 - I - 0x009E56 02:9E46: 5E 9F     .word off_9F5E_0B
- D 0 - I - 0x009E58 02:9E48: 64 9F     .word off_9F64_0C
- D 0 - I - 0x009E5A 02:9E4A: 6A 9F     .word off_9F6A_0D
- D 0 - I - 0x009E5C 02:9E4C: 8D 9F     .word off_9F8D_0E
- D 0 - I - 0x009E5E 02:9E4E: 93 9F     .word off_9F93_0F
- D 0 - I - 0x009E60 02:9E50: 99 9F     .word off_9F99_10
@end:

- D 0 - I - 0x009E62 02:9E52: 0C        .byte $0C   ; columns
- D 0 - I - 0x009E63 02:9E53: 0A        .byte $0A   ; rows
- D 0 - I - 0x009E64 02:9E54: 7D        .byte $7D, $7E, $7F, $80, $00, $00, $00, $00, $00, $00, $00, $81   ; 
- D 0 - I - 0x009E70 02:9E60: 7E        .byte $7E, $82, $83, $84, $00, $00, $09, $0A, $00, $00, $00, $85   ; 
- D 0 - I - 0x009E7C 02:9E6C: 7E        .byte $7E, $86, $87, $88, $00, $00, $0F, $10, $11, $00, $89, $85   ; 
- D 0 - I - 0x009E88 02:9E78: 8A        .byte $8A, $7F, $8B, $88, $00, $00, $15, $16, $17, $00, $8C, $85   ; 
- D 0 - I - 0x009E94 02:9E84: 8D        .byte $8D, $8E, $8F, $00, $1D, $1E, $1F, $20, $21, $22, $90, $85   ; 
- D 0 - I - 0x009EA0 02:9E90: 91        .byte $91, $92, $93, $94, $29, $2A, $2B, $2C, $2D, $2E, $95, $85   ; 
- D 0 - I - 0x009EAC 02:9E9C: 96        .byte $96, $97, $98, $99, $34, $35, $36, $37, $38, $39, $9A, $85   ; 
- D 0 - I - 0x009EB8 02:9EA8: 9B        .byte $9B, $9C, $9D, $9E, $3C, $3D, $3E, $3F, $40, $41, $9F, $85   ; 
- D 0 - I - 0x009EC4 02:9EB4: 7E        .byte $7E, $7F, $A0, $00, $44, $36, $36, $45, $00, $00, $81, $85   ; 
- D 0 - I - 0x009ED0 02:9EC0: 82        .byte $82, $83, $84, $00, $48, $49, $36, $4A, $00, $00, $85, $85   ; 



off_9ECC_00:
- D 0 - I - 0x009EDC 02:9ECC: 09        .byte $09   ; 
- D 0 - I - 0x009EDD 02:9ECD: 01        .byte $01   ; 
- D 0 - I - 0x009EDE 02:9ECE: 00        .byte $00   ; 
- D 0 - I - 0x009EDF 02:9ECF: 09        .byte $09   ; 
- D 0 - I - 0x009EE0 02:9ED0: FF        .byte $FF   ; 
- D 0 - I - 0x009EE1 02:9ED1: A2        .byte $A2   ; 
- D 0 - I - 0x009EE2 02:9ED2: 00        .byte $00   ; 
- D 0 - I - 0x009EE3 02:9ED3: 00        .byte $00   ; 
- D 0 - I - 0x009EE4 02:9ED4: 00        .byte $00   ; 
- D 0 - I - 0x009EE5 02:9ED5: A2        .byte $A2   ; 
- D 0 - I - 0x009EE6 02:9ED6: 00        .byte $00   ; 
- D 0 - I - 0x009EE7 02:9ED7: 00        .byte $00   ; 
- D 0 - I - 0x009EE8 02:9ED8: 00        .byte $00   ; 
- D 0 - I - 0x009EE9 02:9ED9: A2        .byte $A2   ; 



off_9EDA_01:
- D 0 - I - 0x009EEA 02:9EDA: 09        .byte $09   ; 
- D 0 - I - 0x009EEB 02:9EDB: 01        .byte $01   ; 
- D 0 - I - 0x009EEC 02:9EDC: 00        .byte $00   ; 
- D 0 - I - 0x009EED 02:9EDD: 08        .byte $08   ; 
- D 0 - I - 0x009EEE 02:9EDE: 07        .byte $07   ; 
- D 0 - I - 0x009EEF 02:9EDF: A2        .byte $A2   ; 
- D 0 - I - 0x009EF0 02:9EE0: 00        .byte $00   ; 
- D 0 - I - 0x009EF1 02:9EE1: 00        .byte $00   ; 
- D 0 - I - 0x009EF2 02:9EE2: 00        .byte $00   ; 
- D 0 - I - 0x009EF3 02:9EE3: A2        .byte $A2   ; 
- D 0 - I - 0x009EF4 02:9EE4: 00        .byte $00   ; 
- D 0 - I - 0x009EF5 02:9EE5: 00        .byte $00   ; 
- D 0 - I - 0x009EF6 02:9EE6: 00        .byte $00   ; 
- D 0 - I - 0x009EF7 02:9EE7: A2        .byte $A2   ; 



off_9EE8_02:
- D 0 - I - 0x009EF8 02:9EE8: 09        .byte $09   ; 
- D 0 - I - 0x009EF9 02:9EE9: 01        .byte $01   ; 
- D 0 - I - 0x009EFA 02:9EEA: 00        .byte $00   ; 
- D 0 - I - 0x009EFB 02:9EEB: 07        .byte $07   ; 
- D 0 - I - 0x009EFC 02:9EEC: 0F        .byte $0F   ; 
- D 0 - I - 0x009EFD 02:9EED: A2        .byte $A2   ; 
- D 0 - I - 0x009EFE 02:9EEE: 00        .byte $00   ; 
- D 0 - I - 0x009EFF 02:9EEF: 00        .byte $00   ; 
- D 0 - I - 0x009F00 02:9EF0: 00        .byte $00   ; 
- D 0 - I - 0x009F01 02:9EF1: A2        .byte $A2   ; 
- D 0 - I - 0x009F02 02:9EF2: 00        .byte $00   ; 
- D 0 - I - 0x009F03 02:9EF3: 00        .byte $00   ; 
- D 0 - I - 0x009F04 02:9EF4: 00        .byte $00   ; 
- D 0 - I - 0x009F05 02:9EF5: A2        .byte $A2   ; 



off_9EF6_03:
- D 0 - I - 0x009F06 02:9EF6: 09        .byte $09   ; 
- D 0 - I - 0x009F07 02:9EF7: 01        .byte $01   ; 
- D 0 - I - 0x009F08 02:9EF8: 00        .byte $00   ; 
- D 0 - I - 0x009F09 02:9EF9: 06        .byte $06   ; 
- D 0 - I - 0x009F0A 02:9EFA: 17        .byte $17   ; 
- D 0 - I - 0x009F0B 02:9EFB: A2        .byte $A2   ; 
- D 0 - I - 0x009F0C 02:9EFC: 00        .byte $00   ; 
- D 0 - I - 0x009F0D 02:9EFD: 00        .byte $00   ; 
- D 0 - I - 0x009F0E 02:9EFE: 00        .byte $00   ; 
- D 0 - I - 0x009F0F 02:9EFF: A2        .byte $A2   ; 
- D 0 - I - 0x009F10 02:9F00: 00        .byte $00   ; 
- D 0 - I - 0x009F11 02:9F01: 00        .byte $00   ; 
- D 0 - I - 0x009F12 02:9F02: 00        .byte $00   ; 
- D 0 - I - 0x009F13 02:9F03: A2        .byte $A2   ; 



off_9F04_04:
- D 0 - I - 0x009F14 02:9F04: 09        .byte $09   ; 
- D 0 - I - 0x009F15 02:9F05: 01        .byte $01   ; 
- D 0 - I - 0x009F16 02:9F06: 00        .byte $00   ; 
- D 0 - I - 0x009F17 02:9F07: 05        .byte $05   ; 
- D 0 - I - 0x009F18 02:9F08: 1F        .byte $1F   ; 
- D 0 - I - 0x009F19 02:9F09: 00        .byte $00   ; 
- D 0 - I - 0x009F1A 02:9F0A: 00        .byte $00   ; 
- D 0 - I - 0x009F1B 02:9F0B: 00        .byte $00   ; 
- D 0 - I - 0x009F1C 02:9F0C: 00        .byte $00   ; 
- D 0 - I - 0x009F1D 02:9F0D: A2        .byte $A2   ; 
- D 0 - I - 0x009F1E 02:9F0E: 00        .byte $00   ; 
- D 0 - I - 0x009F1F 02:9F0F: 00        .byte $00   ; 
- D 0 - I - 0x009F20 02:9F10: 00        .byte $00   ; 
- D 0 - I - 0x009F21 02:9F11: A2        .byte $A2   ; 



off_9F12_05:
- D 0 - I - 0x009F22 02:9F12: 09        .byte $09   ; 
- D 0 - I - 0x009F23 02:9F13: 01        .byte $01   ; 
- D 0 - I - 0x009F24 02:9F14: 00        .byte $00   ; 
- D 0 - I - 0x009F25 02:9F15: 04        .byte $04   ; 
- D 0 - I - 0x009F26 02:9F16: 27        .byte $27   ; 
- D 0 - I - 0x009F27 02:9F17: 00        .byte $00   ; 
- D 0 - I - 0x009F28 02:9F18: 00        .byte $00   ; 
- D 0 - I - 0x009F29 02:9F19: 00        .byte $00   ; 
- D 0 - I - 0x009F2A 02:9F1A: 00        .byte $00   ; 
- D 0 - I - 0x009F2B 02:9F1B: A2        .byte $A2   ; 
- D 0 - I - 0x009F2C 02:9F1C: 00        .byte $00   ; 
- D 0 - I - 0x009F2D 02:9F1D: 00        .byte $00   ; 
- D 0 - I - 0x009F2E 02:9F1E: 00        .byte $00   ; 
- D 0 - I - 0x009F2F 02:9F1F: A2        .byte $A2   ; 



off_9F20_06:
- D 0 - I - 0x009F30 02:9F20: 09        .byte $09   ; 
- D 0 - I - 0x009F31 02:9F21: 01        .byte $01   ; 
- D 0 - I - 0x009F32 02:9F22: 00        .byte $00   ; 
- D 0 - I - 0x009F33 02:9F23: 03        .byte $03   ; 
- D 0 - I - 0x009F34 02:9F24: 2F        .byte $2F   ; 
- D 0 - I - 0x009F35 02:9F25: 00        .byte $00   ; 
- D 0 - I - 0x009F36 02:9F26: 00        .byte $00   ; 
- D 0 - I - 0x009F37 02:9F27: 00        .byte $00   ; 
- D 0 - I - 0x009F38 02:9F28: 00        .byte $00   ; 
- D 0 - I - 0x009F39 02:9F29: A2        .byte $A2   ; 
- D 0 - I - 0x009F3A 02:9F2A: 00        .byte $00   ; 
- D 0 - I - 0x009F3B 02:9F2B: 00        .byte $00   ; 
- D 0 - I - 0x009F3C 02:9F2C: 00        .byte $00   ; 
- D 0 - I - 0x009F3D 02:9F2D: A2        .byte $A2   ; 



off_9F2E_07:
- D 0 - I - 0x009F3E 02:9F2E: 09        .byte $09   ; 
- D 0 - I - 0x009F3F 02:9F2F: 01        .byte $01   ; 
- D 0 - I - 0x009F40 02:9F30: 00        .byte $00   ; 
- D 0 - I - 0x009F41 02:9F31: 02        .byte $02   ; 
- D 0 - I - 0x009F42 02:9F32: 37        .byte $37   ; 
- D 0 - I - 0x009F43 02:9F33: A2        .byte $A2   ; 
- D 0 - I - 0x009F44 02:9F34: 00        .byte $00   ; 
- D 0 - I - 0x009F45 02:9F35: 00        .byte $00   ; 
- D 0 - I - 0x009F46 02:9F36: 00        .byte $00   ; 
- D 0 - I - 0x009F47 02:9F37: A2        .byte $A2   ; 
- D 0 - I - 0x009F48 02:9F38: 00        .byte $00   ; 
- D 0 - I - 0x009F49 02:9F39: 00        .byte $00   ; 
- D 0 - I - 0x009F4A 02:9F3A: 00        .byte $00   ; 
- D 0 - I - 0x009F4B 02:9F3B: A2        .byte $A2   ; 



off_9F3C_08:
- D 0 - I - 0x009F4C 02:9F3C: 09        .byte $09   ; 
- D 0 - I - 0x009F4D 02:9F3D: 01        .byte $01   ; 
- D 0 - I - 0x009F4E 02:9F3E: 00        .byte $00   ; 
- D 0 - I - 0x009F4F 02:9F3F: 01        .byte $01   ; 
- D 0 - I - 0x009F50 02:9F40: 3F        .byte $3F   ; 
- D 0 - I - 0x009F51 02:9F41: A2        .byte $A2   ; 
- D 0 - I - 0x009F52 02:9F42: 00        .byte $00   ; 
- D 0 - I - 0x009F53 02:9F43: 00        .byte $00   ; 
- D 0 - I - 0x009F54 02:9F44: 00        .byte $00   ; 
- D 0 - I - 0x009F55 02:9F45: A2        .byte $A2   ; 
- D 0 - I - 0x009F56 02:9F46: 00        .byte $00   ; 
- D 0 - I - 0x009F57 02:9F47: 00        .byte $00   ; 
- D 0 - I - 0x009F58 02:9F48: 00        .byte $00   ; 
- D 0 - I - 0x009F59 02:9F49: A2        .byte $A2   ; 



off_9F4A_09:
- D 0 - I - 0x009F5A 02:9F4A: 09        .byte $09   ; 
- D 0 - I - 0x009F5B 02:9F4B: 01        .byte $01   ; 
- D 0 - I - 0x009F5C 02:9F4C: 00        .byte $00   ; 
- D 0 - I - 0x009F5D 02:9F4D: 00        .byte $00   ; 
- D 0 - I - 0x009F5E 02:9F4E: 47        .byte $47   ; 
- D 0 - I - 0x009F5F 02:9F4F: A2        .byte $A2   ; 
- D 0 - I - 0x009F60 02:9F50: 00        .byte $00   ; 
- D 0 - I - 0x009F61 02:9F51: 00        .byte $00   ; 
- D 0 - I - 0x009F62 02:9F52: 00        .byte $00   ; 
- D 0 - I - 0x009F63 02:9F53: A2        .byte $A2   ; 
- D 0 - I - 0x009F64 02:9F54: 00        .byte $00   ; 
- D 0 - I - 0x009F65 02:9F55: 00        .byte $00   ; 
- D 0 - I - 0x009F66 02:9F56: 00        .byte $00   ; 
- D 0 - I - 0x009F67 02:9F57: A2        .byte $A2   ; 



off_9F58_0A:
- D 0 - I - 0x009F68 02:9F58: 01        .byte $01   ; 
- D 0 - I - 0x009F69 02:9F59: 01        .byte $01   ; 
- D 0 - I - 0x009F6A 02:9F5A: 00        .byte $00   ; 
- D 0 - I - 0x009F6B 02:9F5B: 06        .byte $06   ; 
- D 0 - I - 0x009F6C 02:9F5C: 1F        .byte $1F   ; 
- D 0 - I - 0x009F6D 02:9F5D: A4        .byte $A4   ; 



off_9F5E_0B:
- D 0 - I - 0x009F6E 02:9F5E: 01        .byte $01   ; 
- D 0 - I - 0x009F6F 02:9F5F: 01        .byte $01   ; 
- D 0 - I - 0x009F70 02:9F60: 00        .byte $00   ; 
- D 0 - I - 0x009F71 02:9F61: 05        .byte $05   ; 
- D 0 - I - 0x009F72 02:9F62: 27        .byte $27   ; 
- D 0 - I - 0x009F73 02:9F63: A5        .byte $A5   ; 



off_9F64_0C:
- D 0 - I - 0x009F74 02:9F64: 01        .byte $01   ; 
- D 0 - I - 0x009F75 02:9F65: 01        .byte $01   ; 
- D 0 - I - 0x009F76 02:9F66: 00        .byte $00   ; 
- D 0 - I - 0x009F77 02:9F67: 04        .byte $04   ; 
- D 0 - I - 0x009F78 02:9F68: 2F        .byte $2F   ; 
- D 0 - I - 0x009F79 02:9F69: A6        .byte $A6   ; 



off_9F6A_0D:
- D 0 - I - 0x009F7A 02:9F6A: 05        .byte $05   ; 
- D 0 - I - 0x009F7B 02:9F6B: 06        .byte $06   ; 
- D 0 - I - 0x009F7C 02:9F6C: 02        .byte $02   ; 
- D 0 - I - 0x009F7D 02:9F6D: 2B        .byte $2B   ; 
- D 0 - I - 0x009F7E 02:9F6E: 03        .byte $03   ; 
- D 0 - I - 0x009F7F 02:9F6F: 5E        .byte $5E   ; 
- D 0 - I - 0x009F80 02:9F70: 5F        .byte $5F   ; 
- D 0 - I - 0x009F81 02:9F71: 60        .byte $60   ; 
- D 0 - I - 0x009F82 02:9F72: 61        .byte $61   ; 
- D 0 - I - 0x009F83 02:9F73: 00        .byte $00   ; 
- D 0 - I - 0x009F84 02:9F74: 62        .byte $62   ; 
- D 0 - I - 0x009F85 02:9F75: 00        .byte $00   ; 
- D 0 - I - 0x009F86 02:9F76: 63        .byte $63   ; 
- D 0 - I - 0x009F87 02:9F77: 64        .byte $64   ; 
- D 0 - I - 0x009F88 02:9F78: 65        .byte $65   ; 
- D 0 - I - 0x009F89 02:9F79: 66        .byte $66   ; 
- D 0 - I - 0x009F8A 02:9F7A: 00        .byte $00   ; 
- D 0 - I - 0x009F8B 02:9F7B: 00        .byte $00   ; 
- D 0 - I - 0x009F8C 02:9F7C: 67        .byte $67   ; 
- D 0 - I - 0x009F8D 02:9F7D: 68        .byte $68   ; 
- D 0 - I - 0x009F8E 02:9F7E: 69        .byte $69   ; 
- D 0 - I - 0x009F8F 02:9F7F: 00        .byte $00   ; 
- D 0 - I - 0x009F90 02:9F80: 6A        .byte $6A   ; 
- D 0 - I - 0x009F91 02:9F81: 6B        .byte $6B   ; 
- D 0 - I - 0x009F92 02:9F82: 6C        .byte $6C   ; 
- D 0 - I - 0x009F93 02:9F83: 00        .byte $00   ; 
- D 0 - I - 0x009F94 02:9F84: 6D        .byte $6D   ; 
- D 0 - I - 0x009F95 02:9F85: 6E        .byte $6E   ; 
- D 0 - I - 0x009F96 02:9F86: 6F        .byte $6F   ; 
- D 0 - I - 0x009F97 02:9F87: 00        .byte $00   ; 
- D 0 - I - 0x009F98 02:9F88: 00        .byte $00   ; 
- D 0 - I - 0x009F99 02:9F89: 70        .byte $70   ; 
- D 0 - I - 0x009F9A 02:9F8A: 71        .byte $71   ; 
- D 0 - I - 0x009F9B 02:9F8B: 72        .byte $72   ; 
- D 0 - I - 0x009F9C 02:9F8C: 00        .byte $00   ; 



off_9F8D_0E:
- D 0 - I - 0x009F9D 02:9F8D: 01        .byte $01   ; 
- D 0 - I - 0x009F9E 02:9F8E: 01        .byte $01   ; 
- D 0 - I - 0x009F9F 02:9F8F: 01        .byte $01   ; 
- D 0 - I - 0x009FA0 02:9F90: 18        .byte $18   ; 
- D 0 - I - 0x009FA1 02:9F91: 2D        .byte $2D   ; 
- D 0 - I - 0x009FA2 02:9F92: A3        .byte $A3   ; 



off_9F93_0F:
- D 0 - I - 0x009FA3 02:9F93: 01        .byte $01   ; 
- D 0 - I - 0x009FA4 02:9F94: 01        .byte $01   ; 
- D 0 - I - 0x009FA5 02:9F95: 01        .byte $01   ; 
- D 0 - I - 0x009FA6 02:9F96: 35        .byte $35   ; 
- D 0 - I - 0x009FA7 02:9F97: 0F        .byte $0F   ; 
- D 0 - I - 0x009FA8 02:9F98: A1        .byte $A1   ; 



off_9F99_10:
- D 0 - I - 0x009FA9 02:9F99: 01        .byte $01   ; 
- D 0 - I - 0x009FAA 02:9F9A: 01        .byte $01   ; 
- D 0 - I - 0x009FAB 02:9F9B: 01        .byte $01   ; 
- D 0 - I - 0x009FAC 02:9F9C: 3D        .byte $3D   ; 
- D 0 - I - 0x009FAD 02:9F9D: 13        .byte $13   ; 
- D 0 - I - 0x009FAE 02:9F9E: A1        .byte $A1   ; 



_off005_9F9F_04:
_off005_9F9F_08:
_off005_9F9F_10:
    .incbin "incbin/chr/01___9F9F_A78E.chr"



_off004_A78F_04:
_off004_A78F_08:
_off004_A78F_10:
- D 1 - I - 0x00A79F 02:A78F: 08        .byte $08   ; 
- D 1 - I - 0x00A7A0 02:A790: 06        .byte $06   ; 

- D 1 - I - 0x00A7A1 02:A791: 08        .byte (@end - @start) / 2
@start:
- D 1 - I - 0x00A7A2 02:A792: 1C A8     .word off_A81C_00
- D 1 - I - 0x00A7A4 02:A794: 59 A8     .word off_A859_01
- D 1 - I - 0x00A7A6 02:A796: 5F A8     .word off_A85F_02
- D 1 - I - 0x00A7A8 02:A798: 65 A8     .word off_A865_03
- D 1 - I - 0x00A7AA 02:A79A: 73 A8     .word off_A873_04
- D 1 - I - 0x00A7AC 02:A79C: 7A A8     .word off_A87A_05
- D 1 - I - 0x00A7AE 02:A79E: 83 A8     .word off_A883_06
- D 1 - I - 0x00A7B0 02:A7A0: 89 A8     .word off_A889_07
@end:

- D 1 - I - 0x00A7B2 02:A7A2: 0C        .byte $0C   ; columns
- D 1 - I - 0x00A7B3 02:A7A3: 0A        .byte $0A   ; rows
- D 1 - I - 0x00A7B4 02:A7A4: 01        .byte $01, $02, $03, $01, $04, $05, $06, $07, $08, $01, $09, $0A   ; 
- D 1 - I - 0x00A7C0 02:A7B0: 01        .byte $01, $0B, $0C, $0D, $01, $01, $0E, $0F, $10, $11, $12, $13   ; 
- D 1 - I - 0x00A7CC 02:A7BC: 01        .byte $01, $14, $15, $16, $00, $00, $00, $00, $17, $18, $19, $1A   ; 
- D 1 - I - 0x00A7D8 02:A7C8: 1B        .byte $1B, $00, $00, $00, $1C, $1D, $1E, $1F, $20, $21, $22, $01   ; 
- D 1 - I - 0x00A7E4 02:A7D4: 23        .byte $23, $00, $24, $25, $26, $27, $28, $29, $2A, $00, $2B, $2C   ; 
- D 1 - I - 0x00A7F0 02:A7E0: 2D        .byte $2D, $00, $2E, $2F, $30, $31, $32, $33, $34, $00, $35, $36   ; 
- D 1 - I - 0x00A7FC 02:A7EC: 00        .byte $00, $00, $37, $00, $38, $00, $39, $3A, $3B, $3C, $01, $01   ; 
- D 1 - I - 0x00A808 02:A7F8: 00        .byte $00, $3D, $3E, $00, $00, $3F, $40, $41, $42, $01, $01, $01   ; 
- D 1 - I - 0x00A814 02:A804: 00        .byte $00, $43, $44, $00, $00, $45, $00, $46, $01, $01, $01, $01   ; 
- D 1 - I - 0x00A820 02:A810: 00        .byte $00, $00, $47, $48, $00, $00, $00, $49, $01, $01, $01, $01   ; 



off_A81C_00:
- D 1 - I - 0x00A82C 02:A81C: 08        .byte $08   ; 
- D 1 - I - 0x00A82D 02:A81D: 07        .byte $07   ; 
- D 1 - I - 0x00A82E 02:A81E: 00        .byte $00   ; 
- D 1 - I - 0x00A82F 02:A81F: 08        .byte $08   ; 
- D 1 - I - 0x00A830 02:A820: 17        .byte $17   ; 
- D 1 - I - 0x00A831 02:A821: 5A        .byte $5A   ; 
- D 1 - I - 0x00A832 02:A822: 5B        .byte $5B   ; 
- D 1 - I - 0x00A833 02:A823: 5C        .byte $5C   ; 
- D 1 - I - 0x00A834 02:A824: 5D        .byte $5D   ; 
- D 1 - I - 0x00A835 02:A825: 5E        .byte $5E   ; 
- D 1 - I - 0x00A836 02:A826: 5F        .byte $5F   ; 
- D 1 - I - 0x00A837 02:A827: 00        .byte $00   ; 
- D 1 - I - 0x00A838 02:A828: 60        .byte $60   ; 
- D 1 - I - 0x00A839 02:A829: 61        .byte $61   ; 
- D 1 - I - 0x00A83A 02:A82A: 62        .byte $62   ; 
- D 1 - I - 0x00A83B 02:A82B: 63        .byte $63   ; 
- D 1 - I - 0x00A83C 02:A82C: 00        .byte $00   ; 
- D 1 - I - 0x00A83D 02:A82D: 00        .byte $00   ; 
- D 1 - I - 0x00A83E 02:A82E: 00        .byte $00   ; 
- D 1 - I - 0x00A83F 02:A82F: 64        .byte $64   ; 
- D 1 - I - 0x00A840 02:A830: 65        .byte $65   ; 
- D 1 - I - 0x00A841 02:A831: 66        .byte $66   ; 
- D 1 - I - 0x00A842 02:A832: 67        .byte $67   ; 
- D 1 - I - 0x00A843 02:A833: 68        .byte $68   ; 
- D 1 - I - 0x00A844 02:A834: 00        .byte $00   ; 
- D 1 - I - 0x00A845 02:A835: 00        .byte $00   ; 
- D 1 - I - 0x00A846 02:A836: 00        .byte $00   ; 
- D 1 - I - 0x00A847 02:A837: 00        .byte $00   ; 
- D 1 - I - 0x00A848 02:A838: 00        .byte $00   ; 
- D 1 - I - 0x00A849 02:A839: 69        .byte $69   ; 
- D 1 - I - 0x00A84A 02:A83A: 00        .byte $00   ; 
- D 1 - I - 0x00A84B 02:A83B: 6A        .byte $6A   ; 
- D 1 - I - 0x00A84C 02:A83C: 6B        .byte $6B   ; 
- D 1 - I - 0x00A84D 02:A83D: 6C        .byte $6C   ; 
- D 1 - I - 0x00A84E 02:A83E: 6D        .byte $6D   ; 
- D 1 - I - 0x00A84F 02:A83F: 6E        .byte $6E   ; 
- D 1 - I - 0x00A850 02:A840: 6F        .byte $6F   ; 
- D 1 - I - 0x00A851 02:A841: 00        .byte $00   ; 
- D 1 - I - 0x00A852 02:A842: 00        .byte $00   ; 
- D 1 - I - 0x00A853 02:A843: 70        .byte $70   ; 
- D 1 - I - 0x00A854 02:A844: 71        .byte $71   ; 
- D 1 - I - 0x00A855 02:A845: 72        .byte $72   ; 
- D 1 - I - 0x00A856 02:A846: 73        .byte $73   ; 
- D 1 - I - 0x00A857 02:A847: 74        .byte $74   ; 
- D 1 - I - 0x00A858 02:A848: 75        .byte $75   ; 
- D 1 - I - 0x00A859 02:A849: 00        .byte $00   ; 
- D 1 - I - 0x00A85A 02:A84A: 00        .byte $00   ; 
- D 1 - I - 0x00A85B 02:A84B: 76        .byte $76   ; 
- D 1 - I - 0x00A85C 02:A84C: 77        .byte $77   ; 
- D 1 - I - 0x00A85D 02:A84D: 78        .byte $78   ; 
- D 1 - I - 0x00A85E 02:A84E: 79        .byte $79   ; 
- D 1 - I - 0x00A85F 02:A84F: 7A        .byte $7A   ; 
- D 1 - I - 0x00A860 02:A850: 00        .byte $00   ; 
- D 1 - I - 0x00A861 02:A851: 00        .byte $00   ; 
- D 1 - I - 0x00A862 02:A852: 00        .byte $00   ; 
- D 1 - I - 0x00A863 02:A853: 7B        .byte $7B   ; 
- D 1 - I - 0x00A864 02:A854: 7C        .byte $7C   ; 
- D 1 - I - 0x00A865 02:A855: 7D        .byte $7D   ; 
- D 1 - I - 0x00A866 02:A856: 7E        .byte $7E   ; 
- D 1 - I - 0x00A867 02:A857: 7F        .byte $7F   ; 
- D 1 - I - 0x00A868 02:A858: 00        .byte $00   ; 



off_A859_01:
- D 1 - I - 0x00A869 02:A859: 01        .byte $01   ; 
- D 1 - I - 0x00A86A 02:A85A: 01        .byte $01   ; 
- D 1 - I - 0x00A86B 02:A85B: 03        .byte $03   ; 
- D 1 - I - 0x00A86C 02:A85C: 29        .byte $29   ; 
- D 1 - I - 0x00A86D 02:A85D: 21        .byte $21   ; 
- D 1 - I - 0x00A86E 02:A85E: 4A        .byte $4A   ; 



off_A85F_02:
- D 1 - I - 0x00A86F 02:A85F: 01        .byte $01   ; 
- D 1 - I - 0x00A870 02:A860: 01        .byte $01   ; 
- D 1 - I - 0x00A871 02:A861: 03        .byte $03   ; 
- D 1 - I - 0x00A872 02:A862: 3C        .byte $3C   ; 
- D 1 - I - 0x00A873 02:A863: 25        .byte $25   ; 
- D 1 - I - 0x00A874 02:A864: 4B        .byte $4B   ; 



off_A865_03:
- D 1 - I - 0x00A875 02:A865: 03        .byte $03   ; 
- D 1 - I - 0x00A876 02:A866: 03        .byte $03   ; 
- D 1 - I - 0x00A877 02:A867: 03        .byte $03   ; 
- D 1 - I - 0x00A878 02:A868: 4D        .byte $4D   ; 
- D 1 - I - 0x00A879 02:A869: FF        .byte $FF   ; 
- D 1 - I - 0x00A87A 02:A86A: 00        .byte $00   ; 
- D 1 - I - 0x00A87B 02:A86B: 4C        .byte $4C   ; 
- D 1 - I - 0x00A87C 02:A86C: 00        .byte $00   ; 
- D 1 - I - 0x00A87D 02:A86D: 00        .byte $00   ; 
- D 1 - I - 0x00A87E 02:A86E: 4D        .byte $4D   ; 
- D 1 - I - 0x00A87F 02:A86F: 4E        .byte $4E   ; 
- D 1 - I - 0x00A880 02:A870: 4F        .byte $4F   ; 
- D 1 - I - 0x00A881 02:A871: 50        .byte $50   ; 
- D 1 - I - 0x00A882 02:A872: 00        .byte $00   ; 



off_A873_04:
- D 1 - I - 0x00A883 02:A873: 02        .byte $02   ; 
- D 1 - I - 0x00A884 02:A874: 01        .byte $01   ; 
- D 1 - I - 0x00A885 02:A875: 02        .byte $02   ; 
- D 1 - I - 0x00A886 02:A876: 30        .byte $30   ; 
- D 1 - I - 0x00A887 02:A877: 3F        .byte $3F   ; 
- D 1 - I - 0x00A888 02:A878: 58        .byte $58   ; 
- D 1 - I - 0x00A889 02:A879: 59        .byte $59   ; 



off_A87A_05:
- D 1 - I - 0x00A88A 02:A87A: 04        .byte $04   ; 
- D 1 - I - 0x00A88B 02:A87B: 01        .byte $01   ; 
- D 1 - I - 0x00A88C 02:A87C: 01        .byte $01   ; 
- D 1 - I - 0x00A88D 02:A87D: 20        .byte $20   ; 
- D 1 - I - 0x00A88E 02:A87E: 0F        .byte $0F   ; 
- D 1 - I - 0x00A88F 02:A87F: 51        .byte $51   ; 
- D 1 - I - 0x00A890 02:A880: 52        .byte $52   ; 
- D 1 - I - 0x00A891 02:A881: 53        .byte $53   ; 
- D 1 - I - 0x00A892 02:A882: 54        .byte $54   ; 



off_A883_06:
- D 1 - I - 0x00A893 02:A883: 01        .byte $01   ; 
- D 1 - I - 0x00A894 02:A884: 01        .byte $01   ; 
- D 1 - I - 0x00A895 02:A885: 02        .byte $02   ; 
- D 1 - I - 0x00A896 02:A886: 40        .byte $40   ; 
- D 1 - I - 0x00A897 02:A887: 2F        .byte $2F   ; 
- D 1 - I - 0x00A898 02:A888: 56        .byte $56   ; 



off_A889_07:
- D 1 - I - 0x00A899 02:A889: 03        .byte $03   ; 
- D 1 - I - 0x00A89A 02:A88A: 01        .byte $01   ; 
- D 1 - I - 0x00A89B 02:A88B: 02        .byte $02   ; 
- D 1 - I - 0x00A89C 02:A88C: 40        .byte $40   ; 
- D 1 - I - 0x00A89D 02:A88D: 2F        .byte $2F   ; 
- D 1 - I - 0x00A89E 02:A88E: 55        .byte $55   ; 
- D 1 - I - 0x00A89F 02:A88F: 57        .byte $57   ; 



_off005_A890_12:
    .incbin "incbin/chr/01___A890_AB1F.chr"



_off004_AB20_12:
- D 1 - I - 0x00AB30 02:AB20: 08        .byte $08   ; 
- D 1 - I - 0x00AB31 02:AB21: 06        .byte $06   ; 

- D 1 - I - 0x00AB32 02:AB22: 03        .byte (@end - @start) / 2
@start:
- D 1 - I - 0x00AB33 02:AB23: A3 AB     .word off_ABA3_00
- D 1 - I - 0x00AB35 02:AB25: AA AB     .word off_ABAA_01
- D 1 - I - 0x00AB37 02:AB27: B1 AB     .word off_ABB1_02
@end:

- D 1 - I - 0x00AB39 02:AB29: 0C        .byte $0C   ; columns
- D 1 - I - 0x00AB3A 02:AB2A: 0A        .byte $0A   ; rows
- D 1 - I - 0x00AB3B 02:AB2B: 00        .byte $00, $00, $00, $00, $01, $02, $03, $04, $05, $00, $00, $00   ; 
- D 1 - I - 0x00AB47 02:AB37: 00        .byte $00, $00, $00, $00, $06, $07, $08, $09, $00, $00, $00, $00   ; 
- D 1 - I - 0x00AB53 02:AB43: 00        .byte $00, $00, $00, $00, $0A, $0B, $0C, $0D, $0E, $00, $00, $00   ; 
- D 1 - I - 0x00AB5F 02:AB4F: 00        .byte $00, $00, $00, $00, $0F, $10, $11, $12, $13, $00, $00, $00   ; 
- D 1 - I - 0x00AB6B 02:AB5B: 00        .byte $00, $00, $00, $00, $14, $15, $16, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x00AB77 02:AB67: 00        .byte $00, $00, $00, $00, $17, $18, $19, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x00AB83 02:AB73: 00        .byte $00, $00, $00, $00, $1A, $1B, $1C, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x00AB8F 02:AB7F: 00        .byte $00, $00, $00, $00, $1D, $1E, $1F, $20, $00, $00, $00, $00   ; 
- D 1 - I - 0x00AB9B 02:AB8B: 00        .byte $00, $00, $00, $00, $21, $22, $23, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x00ABA7 02:AB97: 00        .byte $00, $00, $00, $00, $00, $24, $25, $00, $00, $00, $00, $00   ; 



off_ABA3_00:
- D 1 - I - 0x00ABB3 02:ABA3: 02        .byte $02   ; 
- D 1 - I - 0x00ABB4 02:ABA4: 01        .byte $01   ; 
- D 1 - I - 0x00ABB5 02:ABA5: 01        .byte $01   ; 
- D 1 - I - 0x00ABB6 02:ABA6: 28        .byte $28   ; 
- D 1 - I - 0x00ABB7 02:ABA7: 0B        .byte $0B   ; 
- D 1 - I - 0x00ABB8 02:ABA8: 26        .byte $26   ; 
- D 1 - I - 0x00ABB9 02:ABA9: 27        .byte $27   ; 



off_ABAA_01:
- D 1 - I - 0x00ABBA 02:ABAA: 02        .byte $02   ; 
- D 1 - I - 0x00ABBB 02:ABAB: 01        .byte $01   ; 
- D 1 - I - 0x00ABBC 02:ABAC: 41        .byte $41   ; 
- D 1 - I - 0x00ABBD 02:ABAD: 33        .byte $33   ; 
- D 1 - I - 0x00ABBE 02:ABAE: 0B        .byte $0B   ; 
- D 1 - I - 0x00ABBF 02:ABAF: 27        .byte $27   ; 
- D 1 - I - 0x00ABC0 02:ABB0: 26        .byte $26   ; 



off_ABB1_02:
- D 1 - I - 0x00ABC1 02:ABB1: 04        .byte $04   ; 
- D 1 - I - 0x00ABC2 02:ABB2: 01        .byte $01   ; 
- D 1 - I - 0x00ABC3 02:ABB3: 02        .byte $02   ; 
- D 1 - I - 0x00ABC4 02:ABB4: 2F        .byte $2F   ; 
- D 1 - I - 0x00ABC5 02:ABB5: 30        .byte $30   ; 
- D 1 - I - 0x00ABC6 02:ABB6: 28        .byte $28   ; 
- D 1 - I - 0x00ABC7 02:ABB7: 29        .byte $29   ; 



_off005_ABB8_00:
    .incbin "incbin/chr/01___ABB8_B907.chr"



_off004_B908_00:
- D 1 - I - 0x00B918 02:B908: 06        .byte $06   ; 
- D 1 - I - 0x00B919 02:B909: 0A        .byte $0A   ; 

- D 1 - I - 0x00B91A 02:B90A: 05        .byte (@end - @start) / 2
@start:
- D 1 - I - 0x00B91B 02:B90B: 67 BA     .word off_BA67_00
- D 1 - I - 0x00B91D 02:B90D: 6E BA     .word off_BA6E_01
- D 1 - I - 0x00B91F 02:B90F: 7C BA     .word off_BA7C_02
- D 1 - I - 0x00B921 02:B911: 87 BA     .word off_BA87_03
- D 1 - I - 0x00B923 02:B913: 9B BA     .word off_BA9B_04
@end:

- D 1 - I - 0x00B925 02:B915: 10        .byte $10   ; columns
- D 1 - I - 0x00B926 02:B916: 14        .byte $14   ; rows
- D 1 - I - 0x00B927 02:B917: 00        .byte $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x00B937 02:B927: 00        .byte $00, $00, $00, $00, $00, $00, $00, $04, $05, $06, $07, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x00B947 02:B937: 00        .byte $00, $00, $00, $00, $00, $00, $08, $09, $0A, $0B, $0C, $0D, $00, $00, $00, $00   ; 
- D 1 - I - 0x00B957 02:B947: 00        .byte $00, $00, $00, $00, $00, $00, $0E, $0F, $10, $11, $12, $13, $00, $00, $00, $00   ; 
- D 1 - I - 0x00B967 02:B957: 00        .byte $00, $00, $00, $00, $00, $14, $15, $16, $17, $18, $19, $1A, $00, $00, $00, $00   ; 
- D 1 - I - 0x00B977 02:B967: 00        .byte $00, $00, $00, $00, $1B, $1C, $1D, $1E, $1F, $20, $21, $22, $00, $00, $00, $00   ; 
- D 1 - I - 0x00B987 02:B977: 00        .byte $00, $00, $00, $00, $00, $00, $23, $24, $25, $26, $27, $28, $00, $00, $00, $00   ; 
- D 1 - I - 0x00B997 02:B987: 00        .byte $00, $00, $00, $00, $00, $00, $00, $29, $2A, $2B, $2C, $2D, $00, $00, $00, $00   ; 
- D 1 - I - 0x00B9A7 02:B997: 00        .byte $00, $00, $00, $00, $00, $00, $00, $2E, $2F, $30, $31, $32, $00, $00, $00, $00   ; 
- D 1 - I - 0x00B9B7 02:B9A7: 00        .byte $00, $00, $00, $00, $00, $00, $33, $34, $35, $36, $37, $38, $00, $00, $00, $00   ; 
- D 1 - I - 0x00B9C7 02:B9B7: 00        .byte $00, $00, $00, $00, $00, $00, $39, $3A, $3B, $3C, $3D, $3E, $00, $00, $00, $00   ; 
- D 1 - I - 0x00B9D7 02:B9C7: 00        .byte $00, $00, $00, $00, $00, $00, $3F, $40, $41, $42, $43, $44, $00, $00, $00, $00   ; 
- D 1 - I - 0x00B9E7 02:B9D7: 00        .byte $00, $00, $00, $00, $00, $00, $45, $46, $47, $48, $49, $4A, $00, $4B, $4C, $00   ; 
- D 1 - I - 0x00B9F7 02:B9E7: 00        .byte $00, $00, $00, $00, $4D, $4E, $4F, $50, $51, $52, $53, $54, $55, $56, $57, $58   ; 
- D 1 - I - 0x00BA07 02:B9F7: 00        .byte $00, $00, $00, $00, $59, $5A, $5B, $5C, $5D, $5E, $5F, $60, $61, $00, $62, $63   ; 
- D 1 - I - 0x00BA17 02:BA07: 00        .byte $00, $00, $00, $00, $00, $64, $65, $66, $67, $68, $69, $6A, $6B, $6C, $00, $00   ; 
- D 1 - I - 0x00BA27 02:BA17: 00        .byte $00, $00, $00, $6D, $6E, $6F, $70, $71, $72, $73, $74, $75, $76, $77, $00, $00   ; 
- D 1 - I - 0x00BA37 02:BA27: 00        .byte $00, $78, $79, $7A, $7B, $7C, $7D, $7E, $7F, $80, $81, $82, $00, $00, $00, $00   ; 
- D 1 - I - 0x00BA47 02:BA37: 83        .byte $83, $84, $85, $86, $87, $88, $89, $8A, $8B, $8C, $8D, $8E, $00, $00, $00, $00   ; 
- D 1 - I - 0x00BA57 02:BA47: 8F        .byte $8F, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9A, $00, $00, $00, $00   ; 
- D 1 - I - 0x00BA67 02:BA57: 9B        .byte $9B, $9C, $9D, $9E, $9F, $A0, $A1, $A2, $A3, $A4, $A5, $00, $00, $00, $00, $00   ; 



off_BA67_00:
- D 1 - I - 0x00BA77 02:BA67: 02        .byte $02   ; 
- D 1 - I - 0x00BA78 02:BA68: 01        .byte $01   ; 
- D 1 - I - 0x00BA79 02:BA69: 00        .byte $00   ; 
- D 1 - I - 0x00BA7A 02:BA6A: 41        .byte $41   ; 
- D 1 - I - 0x00BA7B 02:BA6B: 15        .byte $15   ; 
- D 1 - I - 0x00BA7C 02:BA6C: A6        .byte $A6   ; 
- D 1 - I - 0x00BA7D 02:BA6D: A7        .byte $A7   ; 



off_BA6E_01:
- D 1 - I - 0x00BA7E 02:BA6E: 03        .byte $03   ; 
- D 1 - I - 0x00BA7F 02:BA6F: 03        .byte $03   ; 
- D 1 - I - 0x00BA80 02:BA70: 00        .byte $00   ; 
- D 1 - I - 0x00BA81 02:BA71: 20        .byte $20   ; 
- D 1 - I - 0x00BA82 02:BA72: 2C        .byte $2C   ; 
- D 1 - I - 0x00BA83 02:BA73: A8        .byte $A8   ; 
- D 1 - I - 0x00BA84 02:BA74: A9        .byte $A9   ; 
- D 1 - I - 0x00BA85 02:BA75: AA        .byte $AA   ; 
- D 1 - I - 0x00BA86 02:BA76: AB        .byte $AB   ; 
- D 1 - I - 0x00BA87 02:BA77: AC        .byte $AC   ; 
- D 1 - I - 0x00BA88 02:BA78: AD        .byte $AD   ; 
- D 1 - I - 0x00BA89 02:BA79: AE        .byte $AE   ; 
- D 1 - I - 0x00BA8A 02:BA7A: AF        .byte $AF   ; 
- D 1 - I - 0x00BA8B 02:BA7B: AF        .byte $AF   ; 



off_BA7C_02:
- D 1 - I - 0x00BA8C 02:BA7C: 02        .byte $02   ; 
- D 1 - I - 0x00BA8D 02:BA7D: 03        .byte $03   ; 
- D 1 - I - 0x00BA8E 02:BA7E: 00        .byte $00   ; 
- D 1 - I - 0x00BA8F 02:BA7F: 5B        .byte $5B   ; 
- D 1 - I - 0x00BA90 02:BA80: 2B        .byte $2B   ; 
- D 1 - I - 0x00BA91 02:BA81: B0        .byte $B0   ; 
- D 1 - I - 0x00BA92 02:BA82: B1        .byte $B1   ; 
- D 1 - I - 0x00BA93 02:BA83: B2        .byte $B2   ; 
- D 1 - I - 0x00BA94 02:BA84: B3        .byte $B3   ; 
- D 1 - I - 0x00BA95 02:BA85: B4        .byte $B4   ; 
- D 1 - I - 0x00BA96 02:BA86: B5        .byte $B5   ; 



off_BA87_03:
- D 1 - I - 0x00BA97 02:BA87: 03        .byte $03   ; 
- D 1 - I - 0x00BA98 02:BA88: 05        .byte $05   ; 
- D 1 - I - 0x00BA99 02:BA89: 01        .byte $01   ; 
- D 1 - I - 0x00BA9A 02:BA8A: 5B        .byte $5B   ; 
- D 1 - I - 0x00BA9B 02:BA8B: 26        .byte $26   ; 
- D 1 - I - 0x00BA9C 02:BA8C: B6        .byte $B6   ; 
- D 1 - I - 0x00BA9D 02:BA8D: B7        .byte $B7   ; 
- D 1 - I - 0x00BA9E 02:BA8E: 00        .byte $00   ; 
- D 1 - I - 0x00BA9F 02:BA8F: B8        .byte $B8   ; 
- D 1 - I - 0x00BAA0 02:BA90: 00        .byte $00   ; 
- D 1 - I - 0x00BAA1 02:BA91: 00        .byte $00   ; 
- D 1 - I - 0x00BAA2 02:BA92: B9        .byte $B9   ; 
- D 1 - I - 0x00BAA3 02:BA93: BA        .byte $BA   ; 
- D 1 - I - 0x00BAA4 02:BA94: BB        .byte $BB   ; 
- D 1 - I - 0x00BAA5 02:BA95: BC        .byte $BC   ; 
- D 1 - I - 0x00BAA6 02:BA96: BD        .byte $BD   ; 
- D 1 - I - 0x00BAA7 02:BA97: BE        .byte $BE   ; 
- D 1 - I - 0x00BAA8 02:BA98: BF        .byte $BF   ; 
- D 1 - I - 0x00BAA9 02:BA99: C0        .byte $C0   ; 
- D 1 - I - 0x00BAAA 02:BA9A: 00        .byte $00   ; 



off_BA9B_04:
- D 1 - I - 0x00BAAB 02:BA9B: 04        .byte $04   ; 
- D 1 - I - 0x00BAAC 02:BA9C: 09        .byte $09   ; 
- D 1 - I - 0x00BAAD 02:BA9D: 02        .byte $02   ; 
- D 1 - I - 0x00BAAE 02:BA9E: 58        .byte $58   ; 
- D 1 - I - 0x00BAAF 02:BA9F: E4        .byte $E4   ; 
- D 1 - I - 0x00BAB0 02:BAA0: 00        .byte $00   ; 
- D 1 - I - 0x00BAB1 02:BAA1: C1        .byte $C1   ; 
- D 1 - I - 0x00BAB2 02:BAA2: 00        .byte $00   ; 
- D 1 - I - 0x00BAB3 02:BAA3: 00        .byte $00   ; 
- D 1 - I - 0x00BAB4 02:BAA4: C2        .byte $C2   ; 
- D 1 - I - 0x00BAB5 02:BAA5: 00        .byte $00   ; 
- D 1 - I - 0x00BAB6 02:BAA6: C3        .byte $C3   ; 
- D 1 - I - 0x00BAB7 02:BAA7: 00        .byte $00   ; 
- D 1 - I - 0x00BAB8 02:BAA8: 00        .byte $00   ; 
- D 1 - I - 0x00BAB9 02:BAA9: C4        .byte $C4   ; 
- D 1 - I - 0x00BABA 02:BAAA: 00        .byte $00   ; 
- D 1 - I - 0x00BABB 02:BAAB: C5        .byte $C5   ; 
- D 1 - I - 0x00BABC 02:BAAC: C6        .byte $C6   ; 
- D 1 - I - 0x00BABD 02:BAAD: C7        .byte $C7   ; 
- D 1 - I - 0x00BABE 02:BAAE: C8        .byte $C8   ; 
- D 1 - I - 0x00BABF 02:BAAF: 00        .byte $00   ; 
- D 1 - I - 0x00BAC0 02:BAB0: C9        .byte $C9   ; 
- D 1 - I - 0x00BAC1 02:BAB1: CA        .byte $CA   ; 
- D 1 - I - 0x00BAC2 02:BAB2: CB        .byte $CB   ; 
- D 1 - I - 0x00BAC3 02:BAB3: 00        .byte $00   ; 
- D 1 - I - 0x00BAC4 02:BAB4: CC        .byte $CC   ; 
- D 1 - I - 0x00BAC5 02:BAB5: CD        .byte $CD   ; 
- D 1 - I - 0x00BAC6 02:BAB6: CE        .byte $CE   ; 
- D 1 - I - 0x00BAC7 02:BAB7: 00        .byte $00   ; 
- D 1 - I - 0x00BAC8 02:BAB8: CF        .byte $CF   ; 
- D 1 - I - 0x00BAC9 02:BAB9: D0        .byte $D0   ; 
- D 1 - I - 0x00BACA 02:BABA: 00        .byte $00   ; 
- D 1 - I - 0x00BACB 02:BABB: 00        .byte $00   ; 
- D 1 - I - 0x00BACC 02:BABC: D1        .byte $D1   ; 
- D 1 - I - 0x00BACD 02:BABD: D2        .byte $D2   ; 
- D 1 - I - 0x00BACE 02:BABE: D3        .byte $D3   ; 
- D 1 - I - 0x00BACF 02:BABF: 00        .byte $00   ; 
- D 1 - I - 0x00BAD0 02:BAC0: D4        .byte $D4   ; 
- D 1 - I - 0x00BAD1 02:BAC1: D5        .byte $D5   ; 
- D 1 - I - 0x00BAD2 02:BAC2: 00        .byte $00   ; 
- D 1 - I - 0x00BAD3 02:BAC3: 00        .byte $00   ; 



tbl_BAC4:
    .incbin "incbin/chr/01___BAC4_BB53.chr"



tbl_BB54:
    .incbin "incbin/chr/01___BB54_BCC3.chr"



ofs_0x00BCD4_23:
C - - - - - 0x00BCD4 02:BCC4: A2 00     LDX #> $0010
C - - - - - 0x00BCD6 02:BCC6: 8E 06 20  STX $2006
C - - - - - 0x00BCD9 02:BCC9: A2 10     LDX #< $0010
C - - - - - 0x00BCDB 02:BCCB: 8E 06 20  STX $2006
C - - - - - 0x00BCDE 02:BCCE: 20 26 FE  JSR sub_inc_FE26_prg_bankswitch
- D 1 - I - 0x00BCE1 02:BCD1: 48        .byte con_bsw_18
bra_BCD2_loop:  ; X = 00
C - - - - - 0x00BCE2 02:BCD2: BD 54 BB  LDA tbl_BB54,X
C - - - - - 0x00BCE5 02:BCD5: 8D 07 20  STA $2007
C - - - - - 0x00BCE8 02:BCD8: E8        INX
C - - - - - 0x00BCE9 02:BCD9: D0 F7     BNE bra_BCD2_loop
bra_BCDB_loop:
C - - - - - 0x00BCEB 02:BCDB: BD 54 BC  LDA tbl_BB54 + $100,X
C - - - - - 0x00BCEE 02:BCDE: 8D 07 20  STA $2007
C - - - - - 0x00BCF1 02:BCE1: E8        INX
C - - - - - 0x00BCF2 02:BCE2: E0 70     CPX #$70
C - - - - - 0x00BCF4 02:BCE4: D0 F5     BNE bra_BCDB_loop
C - - - - - 0x00BCF6 02:BCE6: A9 BF     LDA #< tbl_BDBF
C - - - - - 0x00BCF8 02:BCE8: 85 22     STA ram_0022
C - - - - - 0x00BCFA 02:BCEA: A9 BD     LDA #> tbl_BDBF
C - - - - - 0x00BCFC 02:BCEC: 85 23     STA ram_0023
C - - - - - 0x00BCFE 02:BCEE: 20 0F 87  JSR sub_870F
C - - - - - 0x00BD01 02:BCF1: A9 22     LDA #> $2249
C - - - - - 0x00BD03 02:BCF3: 8D 06 20  STA $2006
C - - - - - 0x00BD06 02:BCF6: A9 49     LDA #< $2249
C - - - - - 0x00BD08 02:BCF8: 8D 06 20  STA $2006
C - - - - - 0x00BD0B 02:BCFB: AD 7C 03  LDA ram_037C
C - - - - - 0x00BD0E 02:BCFE: 18        CLC
C - - - - - 0x00BD0F 02:BCFF: 69 01     ADC #$01
C - - - - - 0x00BD11 02:BD01: 8D 07 20  STA $2007
C - - - - - 0x00BD14 02:BD04: AD 7D 03  LDA ram_037D
C - - - - - 0x00BD17 02:BD07: 18        CLC
C - - - - - 0x00BD18 02:BD08: 69 01     ADC #$01
C - - - - - 0x00BD1A 02:BD0A: 8D 07 20  STA $2007
C - - - - - 0x00BD1D 02:BD0D: CD 07 20  CMP $2007   ; dummy read
C - - - - - 0x00BD20 02:BD10: AD 7F 03  LDA ram_037F
C - - - - - 0x00BD23 02:BD13: 18        CLC
C - - - - - 0x00BD24 02:BD14: 69 01     ADC #$01
C - - - - - 0x00BD26 02:BD16: 8D 07 20  STA $2007
C - - - - - 0x00BD29 02:BD19: AD 80 03  LDA ram_0380
C - - - - - 0x00BD2C 02:BD1C: 18        CLC
C - - - - - 0x00BD2D 02:BD1D: 69 01     ADC #$01
C - - - - - 0x00BD2F 02:BD1F: 8D 07 20  STA $2007
C - - - - - 0x00BD32 02:BD22: A9 21     LDA #> $21EB
C - - - - - 0x00BD34 02:BD24: 8D 06 20  STA $2006
C - - - - - 0x00BD37 02:BD27: A9 EB     LDA #< $21EB
C - - - - - 0x00BD39 02:BD29: 8D 06 20  STA $2006
C - - - - - 0x00BD3C 02:BD2C: AD 56 03  LDA ram_0356
C - - - - - 0x00BD3F 02:BD2F: 18        CLC
C - - - - - 0x00BD40 02:BD30: 69 01     ADC #$01
C - - - - - 0x00BD42 02:BD32: 8D 07 20  STA $2007
C - - - - - 0x00BD45 02:BD35: AD 57 03  LDA ram_0357
C - - - - - 0x00BD48 02:BD38: 18        CLC
C - - - - - 0x00BD49 02:BD39: 69 01     ADC #$01
C - - - - - 0x00BD4B 02:BD3B: 8D 07 20  STA $2007
C - - - - - 0x00BD4E 02:BD3E: AD 58 03  LDA ram_0358
C - - - - - 0x00BD51 02:BD41: 18        CLC
C - - - - - 0x00BD52 02:BD42: 69 01     ADC #$01
C - - - - - 0x00BD54 02:BD44: 8D 07 20  STA $2007
C - - - - - 0x00BD57 02:BD47: A9 22     LDA #> $2248
C - - - - - 0x00BD59 02:BD49: 8D 06 20  STA $2006
C - - - - - 0x00BD5C 02:BD4C: A9 48     LDA #< $2248
C - - - - - 0x00BD5E 02:BD4E: 8D 06 20  STA $2006
C - - - - - 0x00BD61 02:BD51: AD 7B 03  LDA ram_037B
C - - - - - 0x00BD64 02:BD54: C9 02     CMP #$02
C - - - - - 0x00BD66 02:BD56: D0 05     BNE bra_BD5D
C - - - - - 0x00BD68 02:BD58: A9 03     LDA #con_tile_id + $03
C - - - - - 0x00BD6A 02:BD5A: 8D 07 20  STA $2007
bra_BD5D:
; attributes
C - - - - - 0x00BD6D 02:BD5D: A9 C0     LDA #< $23C0
C - - - - - 0x00BD6F 02:BD5F: 85 24     STA ram_0024
C - - - - - 0x00BD71 02:BD61: A2 08     LDX #$08
bra_BD63_loop:
C - - - - - 0x00BD73 02:BD63: A9 23     LDA #> $23C0
C - - - - - 0x00BD75 02:BD65: 8D 06 20  STA $2006
C - - - - - 0x00BD78 02:BD68: A5 24     LDA ram_0024
C - - - - - 0x00BD7A 02:BD6A: 8D 06 20  STA $2006
C - - - - - 0x00BD7D 02:BD6D: A9 55     LDA #con_tile_id + $55
C - - - - - 0x00BD7F 02:BD6F: 8D 07 20  STA $2007
C - - - - - 0x00BD82 02:BD72: A5 24     LDA ram_0024
C - - - - - 0x00BD84 02:BD74: 18        CLC
C - - - - - 0x00BD85 02:BD75: 69 08     ADC #$08
C - - - - - 0x00BD87 02:BD77: 85 24     STA ram_0024
C - - - - - 0x00BD89 02:BD79: CA        DEX
C - - - - - 0x00BD8A 02:BD7A: D0 E7     BNE bra_BD63_loop
C - - - - - 0x00BD8C 02:BD7C: A9 20     LDA #> $2002
C - - - - - 0x00BD8E 02:BD7E: 8D 06 20  STA $2006
C - - - - - 0x00BD91 02:BD81: A9 02     LDA #< $2002
C - - - - - 0x00BD93 02:BD83: 8D 06 20  STA $2006
C - - - - - 0x00BD96 02:BD86: A9 C4     LDA #$C4
C - - - - - 0x00BD98 02:BD88: 8D 00 20  STA $2000
C - - - - - 0x00BD9B 02:BD8B: A2 1E     LDX #$1E
C - - - - - 0x00BD9D 02:BD8D: A9 FF     LDA #con_tile_id + $FF
bra_BD8F_loop:
C - - - - - 0x00BD9F 02:BD8F: 8D 07 20  STA $2007
C - - - - - 0x00BDA2 02:BD92: CA        DEX
C - - - - - 0x00BDA3 02:BD93: D0 FA     BNE bra_BD8F_loop
C - - - - - 0x00BDA5 02:BD95: 8D 01 02  STA ram_spr_T   ; A = FF
C - - - - - 0x00BDA8 02:BD98: A9 DD     LDA #$DD
C - - - - - 0x00BDAA 02:BD9A: 8D 00 02  STA ram_spr_Y
C - - - - - 0x00BDAD 02:BD9D: A9 10     LDA #$10
C - - - - - 0x00BDAF 02:BD9F: 8D 03 02  STA ram_spr_X
C - - - - - 0x00BDB2 02:BDA2: 8D 02 02  STA ram_spr_A
C - - - - - 0x00BDB5 02:BDA5: A9 C8     LDA #$C8
C - - - - - 0x00BDB7 02:BDA7: 8D 00 20  STA $2000
C - - - - - 0x00BDBA 02:BDAA: A2 0F     LDX #$0F
C - - - - - 0x00BDBC 02:BDAC: A9 1F     LDA #> $1FF0
C - - - - - 0x00BDBE 02:BDAE: 8D 06 20  STA $2006
C - - - - - 0x00BDC1 02:BDB1: A9 F0     LDA #< $1FF0
C - - - - - 0x00BDC3 02:BDB3: 8D 06 20  STA $2006
C - - - - - 0x00BDC6 02:BDB6: A9 FF     LDA #con_tile_id + $FF
bra_BDB8_loop:
C - - - - - 0x00BDC8 02:BDB8: 8D 07 20  STA $2007
C - - - - - 0x00BDCB 02:BDBB: CA        DEX
C - - - - - 0x00BDCC 02:BDBC: 10 FA     BPL bra_BDB8_loop
C - - - - - 0x00BDCE 02:BDBE: 60        RTS

;ending stats text

tbl_BDBF:
- D 1 - I - 0x00BDCF 02:BDBF: FE        .byte $FE   ; line break 
- D 1 - I - 0x00BDD0 02:BDC0: 4A 21     .word $214A ; position
;"The end" 16x16 font/text upper
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x00BDD2 02:BDC2: 49        .byte                                                   $49, $4A, $4B, $4C, $4D, $4E   ; 
- D 1 - I - 0x00BDD8 02:BDC8: 4F        .byte $4F, $50, $51, $52, $53   ; 

- D 1 - I - 0x00BDDD 02:BDCD: FE        .byte $FE   ; line break 
- D 1 - I - 0x00BDDE 02:BDCE: 6A 21     .word $216A ; position
;"The end" 16x16 font/text lower
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x00BDE0 02:BDD0: 54        .byte                                                   $54, $55, $56, $57, $58, $59   ; 
- D 1 - I - 0x00BDE6 02:BDD6: 5A        .byte $5A, $5B, $5C, $5D, $5E   ; 
- D 1 - I - 0x00BDEB 02:BDDB: FE        .byte $FE   ; line break 
- D 1 - I - 0x00BDEC 02:BDDC: CA 21     .word $21CA ; position
;You visited
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x00BDEE 02:BDDE: 3D        .byte                                                   $3D, $19, $1F, $00, $20, $13   ; 
- D 1 - I - 0x00BDF4 02:BDE4: 1D        .byte $1D, $13, $1E, $0F, $0E   ; 

- D 1 - I - 0x00BDF9 02:BDE9: FE        .byte $FE   ; line break 
- D 1 - I - 0x00BDFA 02:BDEA: EB 21     .word $21EB ; position
;000 rooms (000 is appreantly placeholder before its overwritten by the actual value)
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x00BDFC 02:BDEC: 01        .byte                                                        $01, $01, $01, $00, $1C   ; 
- D 1 - I - 0x00BE01 02:BDF1: 19        .byte $19, $19, $17, $1D   ; 

- D 1 - I - 0x00BE05 02:BDF5: FE        .byte $FE   ; line break 
- D 1 - I - 0x00BE06 02:BDF6: 29 22     .word $2229 ; position
;You completed
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x00BE08 02:BDF8: 3D        .byte                                              $3D, $19, $1F, $00, $0D, $19, $17   ; 
- D 1 - I - 0x00BE0F 02:BDFF: 1A        .byte $1A, $16, $0F, $1E, $0F, $0E   ; 
- D 1 - I - 0x00BE15 02:BE05: FE        .byte $FE   ; line break 
- D 1 - I - 0x00BE16 02:BE06: 49 22     .word $2249 ; position
;00.00 percent (more placeholder)
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x00BE18 02:BE08: 01        .byte                                              $01, $01, $40, $01, $01, $00, $1A   ; 
- D 1 - I - 0x00BE1F 02:BE0F: 0F        .byte $0F, $1C, $0D, $0F, $18, $1E   ; 

- D 1 - I - 0x00BE25 02:BE15: FF        .byte $FF   ; end



ofs_0x00BE26_26:
C - - - - - 0x00BE26 02:BE16: A5 27     LDA ram_0027
C - - - - - 0x00BE28 02:BE18: 8D 06 20  STA $2006
C - - - - - 0x00BE2B 02:BE1B: A5 26     LDA ram_0026
C - - - - - 0x00BE2D 02:BE1D: 8D 06 20  STA $2006
C - - - - - 0x00BE30 02:BE20: A0 00     LDY #$00
C - - - - - 0x00BE32 02:BE22: A2 17     LDX #$17
C - - - - - 0x00BE34 02:BE24: B1 22     LDA (ram_0022),Y
C - - - - - 0x00BE36 02:BE26: C8        INY
C - - - - - 0x00BE37 02:BE27: C9 FF     CMP #$FF
C - - - - - 0x00BE39 02:BE29: F0 4A     BEQ bra_BE75_RTS
C - - - - - 0x00BE3B 02:BE2B: C9 FE     CMP #$FE
C - - - - - 0x00BE3D 02:BE2D: D0 0B     BNE bra_BE3A
C - - - - - 0x00BE3F 02:BE2F: A9 00     LDA #con_tile_id + $00
bra_BE31_loop:
C - - - - - 0x00BE41 02:BE31: 8D 07 20  STA $2007
C - - - - - 0x00BE44 02:BE34: CA        DEX
C - - - - - 0x00BE45 02:BE35: 10 FA     BPL bra_BE31_loop
C - - - - - 0x00BE47 02:BE37: 4C 4C BE  JMP loc_BE4C
bra_BE3A:
C - - - - - 0x00BE4A 02:BE3A: 18        CLC
C - - - - - 0x00BE4B 02:BE3B: 69 01     ADC #$01
C - - - - - 0x00BE4D 02:BE3D: 8D 07 20  STA $2007
bra_BE40_loop:
C - - - - - 0x00BE50 02:BE40: B1 22     LDA (ram_0022),Y
C - - - - - 0x00BE52 02:BE42: C8        INY
C - - - - - 0x00BE53 02:BE43: 18        CLC
C - - - - - 0x00BE54 02:BE44: 69 01     ADC #$01
C - - - - - 0x00BE56 02:BE46: 8D 07 20  STA $2007
C - - - - - 0x00BE59 02:BE49: CA        DEX
C - - - - - 0x00BE5A 02:BE4A: D0 F4     BNE bra_BE40_loop
loc_BE4C:
C D 1 - - - 0x00BE5C 02:BE4C: 98        TYA
C - - - - - 0x00BE5D 02:BE4D: 18        CLC
C - - - - - 0x00BE5E 02:BE4E: 65 22     ADC ram_0022
C - - - - - 0x00BE60 02:BE50: 85 22     STA ram_0022
C - - - - - 0x00BE62 02:BE52: 90 02     BCC bra_BE56_not_overflow
C - - - - - 0x00BE64 02:BE54: E6 23     INC ram_0023
bra_BE56_not_overflow:
C - - - - - 0x00BE66 02:BE56: A5 26     LDA ram_0026
C - - - - - 0x00BE68 02:BE58: 18        CLC
C - - - - - 0x00BE69 02:BE59: 69 20     ADC #$20
C - - - - - 0x00BE6B 02:BE5B: 85 26     STA ram_0026
C - - - - - 0x00BE6D 02:BE5D: 90 02     BCC bra_BE61
C - - - - - 0x00BE6F 02:BE5F: E6 27     INC ram_0027
bra_BE61:
C - - - - - 0x00BE71 02:BE61: A5 26     LDA ram_0026
C - - - - - 0x00BE73 02:BE63: C9 C4     CMP #$C4
C - - - - - 0x00BE75 02:BE65: D0 0E     BNE bra_BE75_RTS
C - - - - - 0x00BE77 02:BE67: A5 27     LDA ram_0027
C - - - - - 0x00BE79 02:BE69: C9 23     CMP #$23
C - - - - - 0x00BE7B 02:BE6B: D0 08     BNE bra_BE75_RTS
C - - - - - 0x00BE7D 02:BE6D: A9 20     LDA #$20
C - - - - - 0x00BE7F 02:BE6F: 85 27     STA ram_0027
C - - - - - 0x00BE81 02:BE71: A9 04     LDA #$04
C - - - - - 0x00BE83 02:BE73: 85 26     STA ram_0026
bra_BE75_RTS:
C - - - - - 0x00BE85 02:BE75: 60        RTS

;credits text

tbl_0x00BE86_ending_credits:
;       SOLSTICE         |
- D 1 - I - 0x00BE86 02:BE76: 00        .byte $00, $00, $00, $00, $00, $00, $00, $37, $33, $30, $37, $38, $2D, $27, $29, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x00BE9E 02:BE8E: FE        .byte $FE   ; skip line
;    Produced by the     |
- D 1 - I - 0x00BE9F 02:BE8F: 00        .byte $00, $00, $00, $00, $34, $1C, $19, $0E, $1F, $0D, $0F, $0E, $00, $0C, $23, $00, $1E, $12, $0F, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x00BEB7 02:BEA7: FE        .byte $FE   ; skip line
;     Solstice Team      |
- D 1 - I - 0x00BEB8 02:BEA8: 00        .byte $00, $00, $00, $00, $00, $37, $19, $16, $1D, $1E, $13, $0D, $0F, $00, $38, $0F, $0B, $17, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x00BED0 02:BEC0: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BED1 02:BEC1: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BED2 02:BEC2: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BED3 02:BEC3: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BED4 02:BEC4: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BED5 02:BEC5: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BED6 02:BEC6: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BED7 02:BEC7: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BED8 02:BEC8: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BED9 02:BEC9: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BEDA 02:BECA: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BEDB 02:BECB: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BEDC 02:BECC: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BEDD 02:BECD: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BEDE 02:BECE: FE        .byte $FE   ; skip line
; Associate Producers   |
- D 1 - I - 0x00BEDF 02:BECF: 00        .byte $00, $00, $25, $1D, $1D, $19, $0D, $13, $0B, $1E, $0F, $00, $34, $1C, $19, $0E, $1F, $0D, $0F, $1C, $1D, $00, $00, $00   ; 
- D 1 - I - 0x00BEF7 02:BEE7: FE        .byte $FE   ; skip line
;     Los Angeles        |
- D 1 - I - 0x00BEF8 02:BEE8: 00        .byte $00, $00, $00, $00, $00, $30, $19, $1D, $00, $25, $18, $11, $0F, $16, $0F, $1D, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x00BF10 02:BF00: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BF11 02:BF01: FE        .byte $FE   ; skip line
;    Jeff Benjamin       |
- D 1 - I - 0x00BF12 02:BF02: 00        .byte $00, $00, $00, $00, $2E, $0F, $10, $10, $00, $26, $0F, $18, $14, $0B, $17, $13, $18, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x00BF2A 02:BF1A: FE        .byte $FE   ; skip line
;    Larry Castro        |
- D 1 - I - 0x00BF2B 02:BF1B: 00        .byte $00, $00, $00, $00, $30, $0B, $1C, $1C, $23, $00, $27, $0B, $1D, $1E, $1C, $19, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x00BF43 02:BF33: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BF44 02:BF34: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BF45 02:BF35: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BF46 02:BF36: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BF47 02:BF37: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BF48 02:BF38: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BF49 02:BF39: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BF4A 02:BF3A: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BF4B 02:BF3B: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BF4C 02:BF3C: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BF4D 02:BF3D: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BF4E 02:BF3E: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BF4F 02:BF3F: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BF50 02:BF40: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BF51 02:BF41: FE        .byte $FE   ; skip line
;  Associate Producers   |
- D 1 - I - 0x00BF52 02:BF42: 00        .byte $00, $00, $25, $1D, $1D, $19, $0D, $13, $0B, $1E, $0F, $00, $34, $1C, $19, $0E, $1F, $0D, $0F, $1C, $1D, $00, $00, $00   ; 
- D 1 - I - 0x00BF6A 02:BF5A: FE        .byte $FE   ; skip line
;        Tokyo           |
- D 1 - I - 0x00BF6B 02:BF5B: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $38, $19, $15, $23, $19, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x00BF83 02:BF73: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BF84 02:BF74: FE        .byte $FE   ; skip line
;   Yuji Takahashi       |
- D 1 - I - 0x00BF85 02:BF75: 00        .byte $00, $00, $00, $3D, $1F, $14, $13, $00, $38, $0B, $15, $0B, $12, $0B, $1D, $12, $13, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x00BF9D 02:BF8D: FE        .byte $FE   ; skip line
;  Ryotaro Hasegawa      |
- D 1 - I - 0x00BF9E 02:BF8E: 00        .byte $00, $00, $36, $23, $19, $1E, $0B, $1C, $19, $00, $2C, $0B, $1D, $0F, $11, $0B, $21, $0B, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x00BFB6 02:BFA6: FE        .byte $FE   ; skip line
;   Cozy Watanabe        |
- D 1 - I - 0x00BFB7 02:BFA7: 00        .byte $00, $00, $00, $27, $19, $24, $23, $00, $3B, $0B, $1E, $0B, $18, $0B, $0C, $0F, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x00BFCF 02:BFBF: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BFD0 02:BFC0: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BFD1 02:BFC1: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BFD2 02:BFC2: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BFD3 02:BFC3: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BFD4 02:BFC4: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BFD5 02:BFC5: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BFD6 02:BFC6: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BFD7 02:BFC7: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BFD8 02:BFC8: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BFD9 02:BFC9: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BFDA 02:BFCA: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BFDB 02:BFCB: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BFDC 02:BFCC: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BFDD 02:BFCD: FE        .byte $FE   ; skip line
- D 1 - I - 0x00BFDE 02:BFCE: FE        .byte $FE   ; skip line
;  Executive producers   |
- D 1 - I - 0x00BFDF 02:BFCF: 00        .byte $00, $00, $29, $22, $0F, $0D, $1F, $1E, $13, $20, $0F, $00, $1A, $1C, $19, $0E, $1F, $0D, $0F, $1C, $1D, $00, $00, $00   ; 
- D 1 - I - 0x00BFF7 02:BFE7: FE        .byte $FE   ; skip line
; Richard Kay , England  |
- D 1 - I - 0x00BFF8 02:BFE8: 00        .byte $00, $36, $13, $0D, $12, $0B, $1C, $0E, $00, $2F, $0B, $23, $00, $45, $00, $29, $18, $11, $16, $0B, $18, $0E, $00, $00   ; 
- D 2 - I - 0x00C010 03:C000: FE        .byte $FE   ; skip line
;Shigeo Maruyama , Japan |
- D 2 - I - 0x00C011 03:C001: 37        .byte $37, $12, $13, $11, $0F, $19, $00, $31, $0B, $1C, $1F, $23, $0B, $17, $0B, $00, $45, $00, $2E, $0B, $1A, $0B, $18, $00   ; 
- D 2 - I - 0x00C029 03:C019: FE        .byte $FE   ; skip line
; Hiroaki Ishikawa , USA |
- D 2 - I - 0x00C02A 03:C01A: 00        .byte $00, $2C, $13, $1C, $19, $0B, $15, $13, $00, $2D, $1D, $12, $13, $15, $0B, $21, $0B, $00, $45, $00, $39, $37, $25, $00   ; 
- D 2 - I - 0x00C042 03:C032: FE        .byte $FE   ; skip line
- D 2 - I - 0x00C043 03:C033: FE        .byte $FE   ; skip line
- D 2 - I - 0x00C044 03:C034: FE        .byte $FE   ; skip line
- D 2 - I - 0x00C045 03:C035: FE        .byte $FE   ; skip line
- D 2 - I - 0x00C046 03:C036: FE        .byte $FE   ; skip line
- D 2 - I - 0x00C047 03:C037: FE        .byte $FE   ; skip line
- D 2 - I - 0x00C048 03:C038: FE        .byte $FE   ; skip line
- D 2 - I - 0x00C049 03:C039: FE        .byte $FE   ; skip line
- D 2 - I - 0x00C04A 03:C03A: FE        .byte $FE   ; skip line
- D 2 - I - 0x00C04B 03:C03B: FE        .byte $FE   ; skip line
- D 2 - I - 0x00C04C 03:C03C: FE        .byte $FE   ; skip line
- D 2 - I - 0x00C04D 03:C03D: FE        .byte $FE   ; skip line
- D 2 - I - 0x00C04E 03:C03E: FE        .byte $FE   ; skip line
- D 2 - I - 0x00C04F 03:C03F: FF        .byte $FF   ; end token



tbl_C040_lo:
- D 2 - - - 0x00C050 03:C040: 6A        .byte < _off015_C26A_00
- D 2 - - - 0x00C051 03:C041: CA        .byte < _off015_C2CA_01
- D 2 - - - 0x00C052 03:C042: 2A        .byte < _off015_C32A_02
- D 2 - - - 0x00C053 03:C043: 4A        .byte < _off015_C14A_03
- D 2 - - - 0x00C054 03:C044: AA        .byte < _off015_C1AA_04
- D 2 - - - 0x00C055 03:C045: 0A        .byte < _off015_C20A_05
- D 2 - - - 0x00C056 03:C046: AA        .byte < _off015_C4AA_06
- D 2 - - - 0x00C057 03:C047: 0A        .byte < _off015_C50A_07
- D 2 - - - 0x00C058 03:C048: 6A        .byte < _off015_C56A_08
- D 2 - - - 0x00C059 03:C049: 8A        .byte < _off015_C38A_09
- D 2 - - - 0x00C05A 03:C04A: EA        .byte < _off015_C3EA_0A
- D 2 - - - 0x00C05B 03:C04B: 4A        .byte < _off015_C44A_0B
- D 2 - - - 0x00C05C 03:C04C: CA        .byte < _off015_C5CA_0C
- D 2 - - - 0x00C05D 03:C04D: 2A        .byte < _off015_C62A_0D
- D 2 - - - 0x00C05E 03:C04E: 8A        .byte < _off015_C68A_0E
- D 2 - - - 0x00C05F 03:C04F: EA        .byte < _off015_C6EA_0F
- D 2 - - - 0x00C060 03:C050: 4A        .byte < _off015_C74A_10
- D 2 - - - 0x00C061 03:C051: AA        .byte < _off015_C7AA_11
- D 2 - - - 0x00C062 03:C052: 0A        .byte < _off015_C80A_12
- D 2 - - - 0x00C063 03:C053: 6A        .byte < _off015_C86A_13
- D 2 - - - 0x00C064 03:C054: CA        .byte < _off015_C8CA_14
- D 2 - - - 0x00C065 03:C055: 2A        .byte < _off015_C92A_15
- D 2 - - - 0x00C066 03:C056: 8A        .byte < _off015_C98A_16
- D 2 - - - 0x00C067 03:C057: EA        .byte < _off015_C9EA_17
- D 2 - - - 0x00C068 03:C058: 4A        .byte < _off015_CA4A_18
- D 2 - - - 0x00C069 03:C059: AA        .byte < _off015_CAAA_19
- D 2 - - - 0x00C06A 03:C05A: 0A        .byte < _off015_CB0A_1A
- D 2 - - - 0x00C06B 03:C05B: 6A        .byte < _off015_CB6A_1B
- D 2 - - - 0x00C06C 03:C05C: CA        .byte < _off015_CBCA_1C
- D 2 - - - 0x00C06D 03:C05D: 2A        .byte < _off015_CC2A_1D
- D 2 - - - 0x00C06E 03:C05E: 8A        .byte < _off015_CC8A_1E
- D 2 - - - 0x00C06F 03:C05F: EA        .byte < _off015_CCEA_1F
- D 2 - - - 0x00C070 03:C060: 4A        .byte < _off015_CD4A_20
- D 2 - - - 0x00C071 03:C061: AA        .byte < _off015_CDAA_21
- D 2 - - - 0x00C072 03:C062: 0A        .byte < _off015_CE0A_22
- D 2 - - - 0x00C073 03:C063: AA        .byte < _off015_D6AA_23
- D 2 - - - 0x00C074 03:C064: 0A        .byte < _off015_D70A_24
- D 2 - - - 0x00C075 03:C065: 6A        .byte < _off015_D76A_25
- D 2 - - - 0x00C076 03:C066: CA        .byte < _off015_D7CA_26
- D 2 - - - 0x00C077 03:C067: 6A        .byte < _off015_CE6A_27
- D 2 - - - 0x00C078 03:C068: CA        .byte < _off015_CECA_28
- D 2 - - - 0x00C079 03:C069: 2A        .byte < _off015_CF2A_29
- D 2 - - - 0x00C07A 03:C06A: 8A        .byte < _off015_CF8A_2A
- D 2 - - - 0x00C07B 03:C06B: EA        .byte < _off015_CFEA_2B
- D 2 - - - 0x00C07C 03:C06C: 4A        .byte < _off015_D04A_2C
- D 2 - - - 0x00C07D 03:C06D: AA        .byte < _off015_D0AA_2D
- D 2 - - - 0x00C07E 03:C06E: 0A        .byte < _off015_D10A_2E
- D 2 - - - 0x00C07F 03:C06F: 6A        .byte < _off015_D16A_2F
- D 2 - - - 0x00C080 03:C070: CA        .byte < _off015_D1CA_30
- D 2 - - - 0x00C081 03:C071: 2A        .byte < _off015_D22A_31
- D 2 - - - 0x00C082 03:C072: 8A        .byte < _off015_D28A_32
- D 2 - - - 0x00C083 03:C073: EA        .byte < _off015_D2EA_33
- D 2 - - - 0x00C084 03:C074: 4A        .byte < _off015_D34A_34
- D 2 - - - 0x00C085 03:C075: AA        .byte < _off015_D3AA_35
- D 2 - - - 0x00C086 03:C076: 0A        .byte < _off015_D40A_36
- D 2 - - - 0x00C087 03:C077: 6A        .byte < _off015_D46A_37
- D 2 - - - 0x00C088 03:C078: CA        .byte < _off015_D4CA_38
- D 2 - - - 0x00C089 03:C079: 2A        .byte < _off015_D52A_39
- D 2 - - - 0x00C08A 03:C07A: 8A        .byte < _off015_D58A_3A
- D 2 - - - 0x00C08B 03:C07B: EA        .byte < _off015_D5EA_3B
- D 2 - - - 0x00C08C 03:C07C: 4A        .byte < _off015_D64A_3C
- D 2 - - - 0x00C08D 03:C07D: 2A        .byte < _off015_D82A_3D
- D 2 - - - 0x00C08E 03:C07E: 8A        .byte < _off015_D88A_3E
- D 2 - - - 0x00C08F 03:C07F: EA        .byte < _off015_D8EA_3F
- D 2 - - - 0x00C090 03:C080: 4A        .byte < _off015_D94A_40
- D 2 - - - 0x00C091 03:C081: AA        .byte < _off015_D9AA_41
- D 2 - - - 0x00C092 03:C082: 0A        .byte < _off015_DA0A_42
- D 2 - - - 0x00C093 03:C083: 6A        .byte < _off015_DA6A_43
- D 2 - - - 0x00C094 03:C084: CA        .byte < _off015_DACA_44
- D 2 - - - 0x00C095 03:C085: 2A        .byte < _off015_DB2A_45
- D 2 - - - 0x00C096 03:C086: 8A        .byte < _off015_DB8A_46
- D 2 - - - 0x00C097 03:C087: EA        .byte < _off015_DBEA_47
- D 2 - - - 0x00C098 03:C088: EA        .byte < _off015_DBEA_48
- D 2 - - - 0x00C099 03:C089: EA        .byte < _off015_DBEA_49
- D 2 - - - 0x00C09A 03:C08A: 4A        .byte < _off015_DC4A_4A
- D 2 - - - 0x00C09B 03:C08B: AA        .byte < _off015_DCAA_4B
- D 2 - - - 0x00C09C 03:C08C: 0A        .byte < _off015_DD0A_4C
- D 2 - - - 0x00C09D 03:C08D: 6A        .byte < _off015_DD6A_4D
- D 2 - - - 0x00C09E 03:C08E: CA        .byte < _off015_DDCA_4E
- D 2 - - - 0x00C09F 03:C08F: 2A        .byte < _off015_DE2A_4F
- D 2 - - - 0x00C0A0 03:C090: 8A        .byte < _off015_DE8A_50
- D 2 - - - 0x00C0A1 03:C091: EA        .byte < _off015_DEEA_51
- D 2 - - - 0x00C0A2 03:C092: 4A        .byte < _off015_DF4A_52
- D 2 - - - 0x00C0A3 03:C093: AA        .byte < _off015_DFAA_53
- D 2 - - - 0x00C0A4 03:C094: AA        .byte < _off015_DFAA_54
- D 2 - - - 0x00C0A5 03:C095: AA        .byte < _off015_DFAA_55
- D 2 - - - 0x00C0A6 03:C096: AA        .byte < _off015_DFAA_56
- D 2 - - - 0x00C0A7 03:C097: AA        .byte < _off015_DFAA_57
- D 2 - - - 0x00C0A8 03:C098: 0A        .byte < _off015_E00A_58
- D 2 - - - 0x00C0A9 03:C099: 6A        .byte < _off015_E06A_59
- D 2 - - - 0x00C0AA 03:C09A: CA        .byte < _off015_E0CA_5A
- D 2 - - - 0x00C0AB 03:C09B: 2A        .byte < _off015_E12A_5B
- D 2 - - - 0x00C0AC 03:C09C: 8A        .byte < _off015_E18A_5C
- D 2 - - - 0x00C0AD 03:C09D: EA        .byte < _off015_E1EA_5D
- D 2 - - - 0x00C0AE 03:C09E: 4A        .byte < _off015_E24A_5E
- D 2 - - - 0x00C0AF 03:C09F: AA        .byte < _off015_E2AA_5F
- D 2 - - - 0x00C0B0 03:C0A0: 0A        .byte < _off015_E30A_60
- D 2 - - - 0x00C0B1 03:C0A1: 6A        .byte < _off015_E36A_61
- D 2 - - - 0x00C0B2 03:C0A2: CA        .byte < _off015_E3CA_62
- D 2 - - - 0x00C0B3 03:C0A3: 2A        .byte < _off015_E42A_63
- D 2 - - - 0x00C0B4 03:C0A4: 8A        .byte < _off015_E48A_64
- D 2 - - - 0x00C0B5 03:C0A5: EA        .byte < _off015_E4EA_65
- D 2 - - - 0x00C0B6 03:C0A6: 4A        .byte < _off015_E54A_66
- D 2 - - - 0x00C0B7 03:C0A7: AA        .byte < _off015_E5AA_67
- D 2 - - - 0x00C0B8 03:C0A8: 0A        .byte < _off015_E60A_68
- D 2 - - - 0x00C0B9 03:C0A9: 6A        .byte < _off015_E66A_69
- D 2 - - - 0x00C0BA 03:C0AA: CA        .byte < _off015_E6CA_6A
- D 2 - - - 0x00C0BB 03:C0AB: 2A        .byte < _off015_E72A_6B
- D 2 - - - 0x00C0BC 03:C0AC: 8A        .byte < _off015_E78A_6C
- D 2 - - - 0x00C0BD 03:C0AD: EA        .byte < _off015_E7EA_6D
- D 2 - - - 0x00C0BE 03:C0AE: 4A        .byte < _off015_E84A_6E
- D 2 - - - 0x00C0BF 03:C0AF: AA        .byte < _off015_E8AA_6F
- D 2 - - - 0x00C0C0 03:C0B0: 0A        .byte < _off015_E90A_70
- D 2 - - - 0x00C0C1 03:C0B1: 6A        .byte < _off015_E96A_71
- D 2 - - - 0x00C0C2 03:C0B2: CA        .byte < _off015_E9CA_72
- D 2 - - - 0x00C0C3 03:C0B3: 2A        .byte < _off015_EA2A_73
- D 2 - - - 0x00C0C4 03:C0B4: 8A        .byte < _off015_EA8A_74
- D 2 - - - 0x00C0C5 03:C0B5: EA        .byte < _off015_EAEA_75
- D 2 - - - 0x00C0C6 03:C0B6: 4A        .byte < _off015_EB4A_76
- D 2 - - - 0x00C0C7 03:C0B7: AA        .byte < _off015_EBAA_77
- D 2 - - - 0x00C0C8 03:C0B8: 0A        .byte < _off015_EC0A_78
- D 2 - - - 0x00C0C9 03:C0B9: 6A        .byte < _off015_EC6A_79
- D 2 - - - 0x00C0CA 03:C0BA: CA        .byte < _off015_ECCA_7A
- D 2 - - - 0x00C0CB 03:C0BB: 2A        .byte < _off015_ED2A_7B
- D 2 - - - 0x00C0CC 03:C0BC: 8A        .byte < _off015_ED8A_7C
- D 2 - - - 0x00C0CD 03:C0BD: EA        .byte < _off015_EDEA_7D
- D 2 - - - 0x00C0CE 03:C0BE: 4A        .byte < _off015_EE4A_7E
- D 2 - - - 0x00C0CF 03:C0BF: AA        .byte < _off015_EEAA_7F
- D 2 - - - 0x00C0D0 03:C0C0: 0A        .byte < _off015_EF0A_80
- D 2 - - - 0x00C0D1 03:C0C1: 6A        .byte < _off015_EF6A_81
- D 2 - - - 0x00C0D2 03:C0C2: CA        .byte < _off015_EFCA_82
- D 2 - - - 0x00C0D3 03:C0C3: 2A        .byte < _off015_F02A_83
- D 2 - - - 0x00C0D4 03:C0C4: 8A        .byte < _off015_F08A_84



tbl_C0C5_hi:
- D 2 - - - 0x00C0D5 03:C0C5: C2        .byte > _off015_C26A_00
- D 2 - - - 0x00C0D6 03:C0C6: C2        .byte > _off015_C2CA_01
- D 2 - - - 0x00C0D7 03:C0C7: C3        .byte > _off015_C32A_02
- D 2 - - - 0x00C0D8 03:C0C8: C1        .byte > _off015_C14A_03
- D 2 - - - 0x00C0D9 03:C0C9: C1        .byte > _off015_C1AA_04
- D 2 - - - 0x00C0DA 03:C0CA: C2        .byte > _off015_C20A_05
- D 2 - - - 0x00C0DB 03:C0CB: C4        .byte > _off015_C4AA_06
- D 2 - - - 0x00C0DC 03:C0CC: C5        .byte > _off015_C50A_07
- D 2 - - - 0x00C0DD 03:C0CD: C5        .byte > _off015_C56A_08
- D 2 - - - 0x00C0DE 03:C0CE: C3        .byte > _off015_C38A_09
- D 2 - - - 0x00C0DF 03:C0CF: C3        .byte > _off015_C3EA_0A
- D 2 - - - 0x00C0E0 03:C0D0: C4        .byte > _off015_C44A_0B
- D 2 - - - 0x00C0E1 03:C0D1: C5        .byte > _off015_C5CA_0C
- D 2 - - - 0x00C0E2 03:C0D2: C6        .byte > _off015_C62A_0D
- D 2 - - - 0x00C0E3 03:C0D3: C6        .byte > _off015_C68A_0E
- D 2 - - - 0x00C0E4 03:C0D4: C6        .byte > _off015_C6EA_0F
- D 2 - - - 0x00C0E5 03:C0D5: C7        .byte > _off015_C74A_10
- D 2 - - - 0x00C0E6 03:C0D6: C7        .byte > _off015_C7AA_11
- D 2 - - - 0x00C0E7 03:C0D7: C8        .byte > _off015_C80A_12
- D 2 - - - 0x00C0E8 03:C0D8: C8        .byte > _off015_C86A_13
- D 2 - - - 0x00C0E9 03:C0D9: C8        .byte > _off015_C8CA_14
- D 2 - - - 0x00C0EA 03:C0DA: C9        .byte > _off015_C92A_15
- D 2 - - - 0x00C0EB 03:C0DB: C9        .byte > _off015_C98A_16
- D 2 - - - 0x00C0EC 03:C0DC: C9        .byte > _off015_C9EA_17
- D 2 - - - 0x00C0ED 03:C0DD: CA        .byte > _off015_CA4A_18
- D 2 - - - 0x00C0EE 03:C0DE: CA        .byte > _off015_CAAA_19
- D 2 - - - 0x00C0EF 03:C0DF: CB        .byte > _off015_CB0A_1A
- D 2 - - - 0x00C0F0 03:C0E0: CB        .byte > _off015_CB6A_1B
- D 2 - - - 0x00C0F1 03:C0E1: CB        .byte > _off015_CBCA_1C
- D 2 - - - 0x00C0F2 03:C0E2: CC        .byte > _off015_CC2A_1D
- D 2 - - - 0x00C0F3 03:C0E3: CC        .byte > _off015_CC8A_1E
- D 2 - - - 0x00C0F4 03:C0E4: CC        .byte > _off015_CCEA_1F
- D 2 - - - 0x00C0F5 03:C0E5: CD        .byte > _off015_CD4A_20
- D 2 - - - 0x00C0F6 03:C0E6: CD        .byte > _off015_CDAA_21
- D 2 - - - 0x00C0F7 03:C0E7: CE        .byte > _off015_CE0A_22
- D 2 - - - 0x00C0F8 03:C0E8: D6        .byte > _off015_D6AA_23
- D 2 - - - 0x00C0F9 03:C0E9: D7        .byte > _off015_D70A_24
- D 2 - - - 0x00C0FA 03:C0EA: D7        .byte > _off015_D76A_25
- D 2 - - - 0x00C0FB 03:C0EB: D7        .byte > _off015_D7CA_26
- D 2 - - - 0x00C0FC 03:C0EC: CE        .byte > _off015_CE6A_27
- D 2 - - - 0x00C0FD 03:C0ED: CE        .byte > _off015_CECA_28
- D 2 - - - 0x00C0FE 03:C0EE: CF        .byte > _off015_CF2A_29
- D 2 - - - 0x00C0FF 03:C0EF: CF        .byte > _off015_CF8A_2A
- D 2 - - - 0x00C100 03:C0F0: CF        .byte > _off015_CFEA_2B
- D 2 - - - 0x00C101 03:C0F1: D0        .byte > _off015_D04A_2C
- D 2 - - - 0x00C102 03:C0F2: D0        .byte > _off015_D0AA_2D
- D 2 - - - 0x00C103 03:C0F3: D1        .byte > _off015_D10A_2E
- D 2 - - - 0x00C104 03:C0F4: D1        .byte > _off015_D16A_2F
- D 2 - - - 0x00C105 03:C0F5: D1        .byte > _off015_D1CA_30
- D 2 - - - 0x00C106 03:C0F6: D2        .byte > _off015_D22A_31
- D 2 - - - 0x00C107 03:C0F7: D2        .byte > _off015_D28A_32
- D 2 - - - 0x00C108 03:C0F8: D2        .byte > _off015_D2EA_33
- D 2 - - - 0x00C109 03:C0F9: D3        .byte > _off015_D34A_34
- D 2 - - - 0x00C10A 03:C0FA: D3        .byte > _off015_D3AA_35
- D 2 - - - 0x00C10B 03:C0FB: D4        .byte > _off015_D40A_36
- D 2 - - - 0x00C10C 03:C0FC: D4        .byte > _off015_D46A_37
- D 2 - - - 0x00C10D 03:C0FD: D4        .byte > _off015_D4CA_38
- D 2 - - - 0x00C10E 03:C0FE: D5        .byte > _off015_D52A_39
- D 2 - - - 0x00C10F 03:C0FF: D5        .byte > _off015_D58A_3A
- D 2 - - - 0x00C110 03:C100: D5        .byte > _off015_D5EA_3B
- D 2 - - - 0x00C111 03:C101: D6        .byte > _off015_D64A_3C
- D 2 - - - 0x00C112 03:C102: D8        .byte > _off015_D82A_3D
- D 2 - - - 0x00C113 03:C103: D8        .byte > _off015_D88A_3E
- D 2 - - - 0x00C114 03:C104: D8        .byte > _off015_D8EA_3F
- D 2 - - - 0x00C115 03:C105: D9        .byte > _off015_D94A_40
- D 2 - - - 0x00C116 03:C106: D9        .byte > _off015_D9AA_41
- D 2 - - - 0x00C117 03:C107: DA        .byte > _off015_DA0A_42
- D 2 - - - 0x00C118 03:C108: DA        .byte > _off015_DA6A_43
- D 2 - - - 0x00C119 03:C109: DA        .byte > _off015_DACA_44
- D 2 - - - 0x00C11A 03:C10A: DB        .byte > _off015_DB2A_45
- D 2 - - - 0x00C11B 03:C10B: DB        .byte > _off015_DB8A_46
- D 2 - - - 0x00C11C 03:C10C: DB        .byte > _off015_DBEA_47
- D 2 - - - 0x00C11D 03:C10D: DB        .byte > _off015_DBEA_48
- D 2 - - - 0x00C11E 03:C10E: DB        .byte > _off015_DBEA_49
- D 2 - - - 0x00C11F 03:C10F: DC        .byte > _off015_DC4A_4A
- D 2 - - - 0x00C120 03:C110: DC        .byte > _off015_DCAA_4B
- D 2 - - - 0x00C121 03:C111: DD        .byte > _off015_DD0A_4C
- D 2 - - - 0x00C122 03:C112: DD        .byte > _off015_DD6A_4D
- D 2 - - - 0x00C123 03:C113: DD        .byte > _off015_DDCA_4E
- D 2 - - - 0x00C124 03:C114: DE        .byte > _off015_DE2A_4F
- D 2 - - - 0x00C125 03:C115: DE        .byte > _off015_DE8A_50
- D 2 - - - 0x00C126 03:C116: DE        .byte > _off015_DEEA_51
- D 2 - - - 0x00C127 03:C117: DF        .byte > _off015_DF4A_52
- D 2 - - - 0x00C128 03:C118: DF        .byte > _off015_DFAA_53
- D 2 - - - 0x00C129 03:C119: DF        .byte > _off015_DFAA_54
- D 2 - - - 0x00C12A 03:C11A: DF        .byte > _off015_DFAA_55
- D 2 - - - 0x00C12B 03:C11B: DF        .byte > _off015_DFAA_56
- D 2 - - - 0x00C12C 03:C11C: DF        .byte > _off015_DFAA_57
- D 2 - - - 0x00C12D 03:C11D: E0        .byte > _off015_E00A_58
- D 2 - - - 0x00C12E 03:C11E: E0        .byte > _off015_E06A_59
- D 2 - - - 0x00C12F 03:C11F: E0        .byte > _off015_E0CA_5A
- D 2 - - - 0x00C130 03:C120: E1        .byte > _off015_E12A_5B
- D 2 - - - 0x00C131 03:C121: E1        .byte > _off015_E18A_5C
- D 2 - - - 0x00C132 03:C122: E1        .byte > _off015_E1EA_5D
- D 2 - - - 0x00C133 03:C123: E2        .byte > _off015_E24A_5E
- D 2 - - - 0x00C134 03:C124: E2        .byte > _off015_E2AA_5F
- D 2 - - - 0x00C135 03:C125: E3        .byte > _off015_E30A_60
- D 2 - - - 0x00C136 03:C126: E3        .byte > _off015_E36A_61
- D 2 - - - 0x00C137 03:C127: E3        .byte > _off015_E3CA_62
- D 2 - - - 0x00C138 03:C128: E4        .byte > _off015_E42A_63
- D 2 - - - 0x00C139 03:C129: E4        .byte > _off015_E48A_64
- D 2 - - - 0x00C13A 03:C12A: E4        .byte > _off015_E4EA_65
- D 2 - - - 0x00C13B 03:C12B: E5        .byte > _off015_E54A_66
- D 2 - - - 0x00C13C 03:C12C: E5        .byte > _off015_E5AA_67
- D 2 - - - 0x00C13D 03:C12D: E6        .byte > _off015_E60A_68
- D 2 - - - 0x00C13E 03:C12E: E6        .byte > _off015_E66A_69
- D 2 - - - 0x00C13F 03:C12F: E6        .byte > _off015_E6CA_6A
- D 2 - - - 0x00C140 03:C130: E7        .byte > _off015_E72A_6B
- D 2 - - - 0x00C141 03:C131: E7        .byte > _off015_E78A_6C
- D 2 - - - 0x00C142 03:C132: E7        .byte > _off015_E7EA_6D
- D 2 - - - 0x00C143 03:C133: E8        .byte > _off015_E84A_6E
- D 2 - - - 0x00C144 03:C134: E8        .byte > _off015_E8AA_6F
- D 2 - - - 0x00C145 03:C135: E9        .byte > _off015_E90A_70
- D 2 - - - 0x00C146 03:C136: E9        .byte > _off015_E96A_71
- D 2 - - - 0x00C147 03:C137: E9        .byte > _off015_E9CA_72
- D 2 - - - 0x00C148 03:C138: EA        .byte > _off015_EA2A_73
- D 2 - - - 0x00C149 03:C139: EA        .byte > _off015_EA8A_74
- D 2 - - - 0x00C14A 03:C13A: EA        .byte > _off015_EAEA_75
- D 2 - - - 0x00C14B 03:C13B: EB        .byte > _off015_EB4A_76
- D 2 - - - 0x00C14C 03:C13C: EB        .byte > _off015_EBAA_77
- D 2 - - - 0x00C14D 03:C13D: EC        .byte > _off015_EC0A_78
- D 2 - - - 0x00C14E 03:C13E: EC        .byte > _off015_EC6A_79
- D 2 - - - 0x00C14F 03:C13F: EC        .byte > _off015_ECCA_7A
- D 2 - - - 0x00C150 03:C140: ED        .byte > _off015_ED2A_7B
- D 2 - - - 0x00C151 03:C141: ED        .byte > _off015_ED8A_7C
- D 2 - - - 0x00C152 03:C142: ED        .byte > _off015_EDEA_7D
- D 2 - - - 0x00C153 03:C143: EE        .byte > _off015_EE4A_7E
- D 2 - - - 0x00C154 03:C144: EE        .byte > _off015_EEAA_7F
- D 2 - - - 0x00C155 03:C145: EF        .byte > _off015_EF0A_80
- D 2 - - - 0x00C156 03:C146: EF        .byte > _off015_EF6A_81
- D 2 - - - 0x00C157 03:C147: EF        .byte > _off015_EFCA_82
- D 2 - - - 0x00C158 03:C148: F0        .byte > _off015_F02A_83
- D 2 - - - 0x00C159 03:C149: F0        .byte > _off015_F08A_84



_off015_C14A_03:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0000, $60

_off015_C1AA_04:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0060, $60

_off015_C20A_05:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $00C0, $60

_off015_C26A_00:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0120, $60

_off015_C2CA_01:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0180, $60

_off015_C32A_02:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $01E0, $60

_off015_C38A_09:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0240, $60

_off015_C3EA_0A:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $02A0, $60

_off015_C44A_0B:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0300, $60

tbl_0x00C4BA:
_off015_C4AA_06:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0360, $60

_off015_C50A_07:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $03C0, $60

_off015_C56A_08:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0420, $60

_off015_C5CA_0C:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0480, $60

_off015_C62A_0D:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $04E0, $60

_off015_C68A_0E:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0540, $60

_off015_C6EA_0F:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $05A0, $60

_off015_C74A_10:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0600, $60

_off015_C7AA_11:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0660, $60

_off015_C80A_12:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $06C0, $60

_off015_C86A_13:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0720, $60

_off015_C8CA_14:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0780, $60

_off015_C92A_15:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $07E0, $60

_off015_C98A_16:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0840, $60

_off015_C9EA_17:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $08A0, $60

_off015_CA4A_18:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0900, $60

_off015_CAAA_19:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0960, $60

_off015_CB0A_1A:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $09C0, $60

_off015_CB6A_1B:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0A20, $60

_off015_CBCA_1C:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0A80, $60

_off015_CC2A_1D:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0AE0, $60

_off015_CC8A_1E:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0B40, $60

_off015_CCEA_1F:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0BA0, $60

_off015_CD4A_20:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0C00, $60

_off015_CDAA_21:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0C60, $60

_off015_CE0A_22:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0CC0, $60

_off015_CE6A_27:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0D20, $60

_off015_CECA_28:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0D80, $60

_off015_CF2A_29:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0DE0, $60

_off015_CF8A_2A:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0E40, $60

_off015_CFEA_2B:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0EA0, $60

_off015_D04A_2C:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0F00, $60

_off015_D0AA_2D:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0F60, $60

_off015_D10A_2E:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $0FC0, $60

_off015_D16A_2F:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1020, $60

_off015_D1CA_30:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1080, $60

_off015_D22A_31:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $10E0, $60

_off015_D28A_32:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1140, $60

_off015_D2EA_33:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $11A0, $60

_off015_D34A_34:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1200, $60

_off015_D3AA_35:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1260, $60

_off015_D40A_36:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $12C0, $60

_off015_D46A_37:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1320, $60

_off015_D4CA_38:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1380, $60

_off015_D52A_39:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $13E0, $60

_off015_D58A_3A:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1440, $60

_off015_D5EA_3B:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $14A0, $60

_off015_D64A_3C:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1500, $60

_off015_D6AA_23:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1560, $60

_off015_D70A_24:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $15C0, $60

_off015_D76A_25:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1620, $60

_off015_D7CA_26:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1680, $60

_off015_D82A_3D:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $16E0, $60

_off015_D88A_3E:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1740, $60

_off015_D8EA_3F:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $17A0, $60

_off015_D94A_40:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1800, $60

_off015_D9AA_41:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1860, $60

_off015_DA0A_42:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $18C0, $60

_off015_DA6A_43:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1920, $60

_off015_DACA_44:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1980, $60

_off015_DB2A_45:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $19E0, $60

_off015_DB8A_46:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1A40, $60

_off015_DBEA_47:
_off015_DBEA_48:
_off015_DBEA_49:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1AA0, $60

_off015_DC4A_4A:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1B00, $60

_off015_DCAA_4B:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1B60, $60

_off015_DD0A_4C:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1BC0, $60

_off015_DD6A_4D:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1C20, $60

_off015_DDCA_4E:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1C80, $60

_off015_DE2A_4F:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1CE0, $60

_off015_DE8A_50:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1D40, $60

_off015_DEEA_51:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1DA0, $60

_off015_DF4A_52:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1E00, $60

_off015_DFAA_53:
_off015_DFAA_54:
_off015_DFAA_55:
_off015_DFAA_56:
_off015_DFAA_57:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1E60, $60

_off015_E00A_58:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1EC0, $60

_off015_E06A_59:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1F20, $60

_off015_E0CA_5A:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1F80, $60

_off015_E12A_5B:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $1FE0, $60

_off015_E18A_5C:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2040, $60

_off015_E1EA_5D:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $20A0, $60

_off015_E24A_5E:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2100, $60

_off015_E2AA_5F:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2160, $60

_off015_E30A_60:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $21C0, $60

_off015_E36A_61:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2220, $60

_off015_E3CA_62:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2280, $60

_off015_E42A_63:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $22E0, $60

_off015_E48A_64:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2340, $60

_off015_E4EA_65:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $23A0, $60

_off015_E54A_66:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2400, $60

_off015_E5AA_67:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2460, $60

_off015_E60A_68:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $24C0, $60

_off015_E66A_69:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2520, $60

_off015_E6CA_6A:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2580, $60

_off015_E72A_6B:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $25E0, $60

_off015_E78A_6C:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2640, $60

_off015_E7EA_6D:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $26A0, $60

_off015_E84A_6E:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2700, $60

_off015_E8AA_6F:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2760, $60

_off015_E90A_70:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $27C0, $60

_off015_E96A_71:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2820, $60

_off015_E9CA_72:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2880, $60

_off015_EA2A_73:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $28E0, $60

_off015_EA8A_74:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2940, $60

_off015_EAEA_75:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $29A0, $60

_off015_EB4A_76:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2A00, $60

_off015_EBAA_77:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2A60, $60

_off015_EC0A_78:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2AC0, $60

_off015_EC6A_79:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2B20, $60

_off015_ECCA_7A:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2B80, $60

_off015_ED2A_7B:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2BE0, $60

_off015_ED8A_7C:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2C40, $60

_off015_EDEA_7D:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2CA0, $60

_off015_EE4A_7E:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2D00, $60

_off015_EEAA_7F:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2D60, $60

_off015_EF0A_80:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2DC0, $60

_off015_EF6A_81:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2E20, $60

_off015_EFCA_82:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2E80, $60

_off015_F02A_83:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2EE0, $60

_off015_F08A_84:
    .incbin "incbin/chr/01___C14A_F0E9.chr", $2F40, $60



tbl_F0EA_max_index:
- D 3 - - - 0x00F0FA 03:F0EA: EB        .byte $EB   ; 



tbl_F0EB:
- D 3 - I - 0x00F0FB 03:F0EB: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 00
- D 3 - I - 0x00F103 03:F0F3: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 01
- D 3 - I - 0x00F10B 03:F0FB: FF        .byte $FF, $FF, $FF, $FF, $FE, $F8, $E0, $80   ; 02
- D 3 - I - 0x00F113 03:F103: FE        .byte $FE, $F8, $E0, $80, $00, $00, $00, $00   ; 03
- D 3 - I - 0x00F11B 03:F10B: 7F        .byte $7F, $1F, $07, $01, $00, $00, $00, $00   ; 04
- D 3 - I - 0x00F123 03:F113: FF        .byte $FF, $FF, $FF, $FF, $7F, $1F, $07, $01   ; 05
- D 3 - I - 0x00F12B 03:F11B: 00        .byte $00, $80, $E0, $F8, $FE, $FF, $FF, $FF   ; 06
- D 3 - I - 0x00F133 03:F123: 00        .byte $00, $00, $00, $00, $00, $80, $E0, $F8   ; 07
- D 3 - I - 0x00F13B 03:F12B: 00        .byte $00, $00, $00, $00, $00, $01, $07, $1F   ; 08
- D 3 - I - 0x00F143 03:F133: 00        .byte $00, $01, $07, $1F, $7F, $FF, $FF, $FF   ; 09
- D 3 - I - 0x00F14B 03:F13B: FF        .byte $FF, $FF, $FF, $FE, $FC, $F8, $F0, $F0   ; 0A
- D 3 - I - 0x00F153 03:F143: FF        .byte $FF, $F0, $80, $00, $00, $00, $00, $00   ; 0B
- D 3 - I - 0x00F15B 03:F14B: FF        .byte $FF, $0F, $01, $00, $00, $00, $00, $00   ; 0C
- D 3 - I - 0x00F163 03:F153: FF        .byte $FF, $FF, $FF, $7F, $3F, $1F, $0F, $0F   ; 0D
- D 3 - I - 0x00F16B 03:F15B: F0        .byte $F0, $F0, $F0, $F0, $F0, $F8, $F8, $F8   ; 0E
- D 3 - I - 0x00F173 03:F163: 0F        .byte $0F, $0F, $0F, $0F, $0F, $1F, $1F, $1F   ; 0F
- D 3 - I - 0x00F17B 03:F16B: F0        .byte $F0, $F0, $F0, $F8, $FC, $FE, $FF, $FF   ; 10
- D 3 - I - 0x00F183 03:F173: 00        .byte $00, $00, $00, $00, $00, $00, $80, $F0   ; 11
- D 3 - I - 0x00F18B 03:F17B: 00        .byte $00, $00, $00, $00, $00, $00, $01, $0F   ; 12
- D 3 - I - 0x00F193 03:F183: 0F        .byte $0F, $0F, $0F, $1F, $3F, $7F, $FF, $FF   ; 13
- D 3 - I - 0x00F19B 03:F18B: FF        .byte $FF, $FF, $FF, $FE, $F8, $F0, $E0, $E0   ; 14
- D 3 - I - 0x00F1A3 03:F193: FC        .byte $FC, $E0, $80, $00, $00, $00, $00, $00   ; 15
- D 3 - I - 0x00F1AB 03:F19B: 3F        .byte $3F, $07, $01, $00, $00, $00, $00, $00   ; 16
- D 3 - I - 0x00F1B3 03:F1A3: FF        .byte $FF, $FF, $FF, $7F, $1F, $0F, $07, $07   ; 17
- D 3 - I - 0x00F1BB 03:F1AB: C0        .byte $C0, $C0, $C0, $C0, $C0, $C0, $C0, $C0   ; 18
- D 3 - I - 0x00F1C3 03:F1B3: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03   ; 19
- D 3 - I - 0x00F1CB 03:F1BB: E0        .byte $E0, $E0, $F0, $F8, $FE, $FF, $FF, $FF   ; 1A
- D 3 - I - 0x00F1D3 03:F1C3: 00        .byte $00, $00, $00, $00, $00, $80, $E0, $FC   ; 1B
- D 3 - I - 0x00F1DB 03:F1CB: 00        .byte $00, $00, $00, $00, $00, $01, $07, $3F   ; 1C
- D 3 - I - 0x00F1E3 03:F1D3: 07        .byte $07, $07, $0F, $1F, $7F, $FF, $FF, $FF   ; 1D
- D 3 - I - 0x00F1EB 03:F1DB: FF        .byte $FF, $FF, $FF, $FE, $F8, $E0, $C0, $80   ; 1E
- D 3 - I - 0x00F1F3 03:F1E3: F8        .byte $F8, $E0, $80, $00, $00, $00, $00, $00   ; 1F
- D 3 - I - 0x00F1FB 03:F1EB: 1F        .byte $1F, $07, $01, $00, $00, $00, $00, $00   ; 20
- D 3 - I - 0x00F203 03:F1F3: FF        .byte $FF, $FF, $FF, $7F, $1F, $07, $03, $01   ; 21
- D 3 - I - 0x00F20B 03:F1FB: 80        .byte $80, $00, $00, $00, $00, $00, $80, $80   ; 22
- D 3 - I - 0x00F213 03:F203: 01        .byte $01, $00, $00, $00, $00, $00, $01, $01   ; 23
- D 3 - I - 0x00F21B 03:F20B: C0        .byte $C0, $E0, $F8, $FE, $FF, $FF, $FF, $FF   ; 24
- D 3 - I - 0x00F223 03:F213: 00        .byte $00, $00, $00, $00, $80, $E0, $F8, $FF   ; 25
- D 3 - I - 0x00F22B 03:F21B: 00        .byte $00, $00, $00, $00, $01, $07, $1F, $FF   ; 26
- D 3 - I - 0x00F233 03:F223: 03        .byte $03, $07, $1F, $7F, $FF, $FF, $FF, $FF   ; 27
- D 3 - I - 0x00F23B 03:F22B: FF        .byte $FF, $FF, $FF, $FF, $FE, $F8, $E0, $81   ; 28
- D 3 - I - 0x00F243 03:F233: FE        .byte $FE, $F8, $E0, $80, $04, $1C, $7C, $FC   ; 29
- D 3 - I - 0x00F24B 03:F23B: 7F        .byte $7F, $1F, $07, $01, $20, $38, $3E, $3F   ; 2A
- D 3 - I - 0x00F253 03:F243: FF        .byte $FF, $FF, $FF, $FF, $7F, $1F, $07, $81   ; 2B
- D 3 - I - 0x00F25B 03:F24B: 07        .byte $07, $07, $01, $00, $00, $00, $00, $07   ; 2C
- D 3 - I - 0x00F263 03:F253: F8        .byte $F8, $E0, $81, $07, $1F, $07, $01, $80   ; 2D
- D 3 - I - 0x00F26B 03:F25B: 1F        .byte $1F, $07, $81, $E0, $F8, $E0, $80, $01   ; 2E
- D 3 - I - 0x00F273 03:F263: E0        .byte $E0, $E0, $80, $00, $00, $00, $00, $E0   ; 2F
- D 3 - I - 0x00F27B 03:F26B: 07        .byte $07, $81, $E0, $F8, $FE, $FF, $FF, $FF   ; 30
- D 3 - I - 0x00F283 03:F273: E0        .byte $E0, $F8, $7C, $1C, $04, $80, $E0, $F8   ; 31
- D 3 - I - 0x00F28B 03:F27B: 07        .byte $07, $1F, $3E, $38, $20, $01, $07, $1F   ; 32
- D 3 - I - 0x00F293 03:F283: E0        .byte $E0, $81, $07, $1F, $7F, $FF, $FF, $FF   ; 33
- D 3 - I - 0x00F29B 03:F28B: FF        .byte $FF, $FF, $FF, $FF, $FE, $F8, $E0, $C0   ; 34
- D 3 - I - 0x00F2A3 03:F293: FF        .byte $FF, $FF, $FF, $FF, $7F, $1F, $07, $03   ; 35
- - - - - - 0x00F2AB 03:F29B: 80        .byte $80, $00, $00, $80, $80, $80, $00, $00   ; 36
- - - - - - 0x00F2B3 03:F2A3: 01        .byte $01, $00, $00, $01, $01, $01, $00, $00   ; 37
- D 3 - I - 0x00F2BB 03:F2AB: 80        .byte $80, $C0, $E0, $F8, $FE, $FF, $FF, $FF   ; 38
- D 3 - I - 0x00F2C3 03:F2B3: 01        .byte $01, $03, $07, $1F, $7F, $FF, $FF, $FF   ; 39
- D 3 - I - 0x00F2CB 03:F2BB: FF        .byte $FF, $FF, $FC, $F0, $E0, $C0, $80, $00   ; 3A
- D 3 - I - 0x00F2D3 03:F2C3: FF        .byte $FF, $FF, $3F, $0F, $07, $03, $01, $00   ; 3B
- D 3 - I - 0x00F2DB 03:F2CB: FF        .byte $FF, $F8, $E0, $80, $00, $00, $00, $00   ; 3C
- D 3 - I - 0x00F2E3 03:F2D3: FF        .byte $FF, $1F, $07, $01, $00, $00, $00, $00   ; 3D
- D 3 - I - 0x00F2EB 03:F2DB: 00        .byte $00, $00, $00, $00, $80, $E0, $F8, $FE   ; 3E
- D 3 - I - 0x00F2F3 03:F2E3: 00        .byte $00, $00, $00, $00, $01, $07, $1F, $7F   ; 3F
- D 3 - I - 0x00F2FB 03:F2EB: FE        .byte $FE, $FE, $FF, $FF, $FF, $FF, $FF, $FF   ; 40
- D 3 - I - 0x00F303 03:F2F3: 00        .byte $00, $00, $00, $00, $80, $C0, $E0, $F0   ; 41
- D 3 - I - 0x00F30B 03:F2FB: 00        .byte $00, $00, $00, $00, $01, $03, $07, $0F   ; 42
- D 3 - I - 0x00F313 03:F303: 7F        .byte $7F, $7F, $FF, $FF, $FF, $FF, $FF, $FF   ; 43
- D 3 - I - 0x00F31B 03:F30B: FF        .byte $FF, $FF, $FF, $FF, $FE, $FC, $FC, $F8   ; 44
- D 3 - I - 0x00F323 03:F313: FE        .byte $FE, $FC, $FC, $F8, $78, $30, $30, $00   ; 45
- D 3 - I - 0x00F32B 03:F31B: 7F        .byte $7F, $3F, $3F, $1F, $1E, $0C, $0C, $00   ; 46
- D 3 - I - 0x00F333 03:F323: FF        .byte $FF, $FF, $FF, $FF, $7F, $3F, $3F, $1F   ; 47
- D 3 - I - 0x00F33B 03:F32B: F8        .byte $F8, $F0, $F0, $E0, $E0, $C0, $C0, $80   ; 48
- D 3 - I - 0x00F343 03:F333: 1F        .byte $1F, $0F, $0F, $07, $07, $03, $03, $01   ; 49
- D 3 - I - 0x00F34B 03:F33B: FE        .byte $FE, $F8, $E0, $80, $00, $00, $00, $80   ; 4A
- D 3 - I - 0x00F353 03:F343: 7F        .byte $7F, $1F, $07, $01, $00, $00, $00, $01   ; 4B
- D 3 - I - 0x00F35B 03:F34B: C0        .byte $C0, $E0, $F0, $F8, $F8, $F8, $F8, $F8   ; 4C
- D 3 - I - 0x00F363 03:F353: 03        .byte $03, $07, $0F, $1F, $1F, $1F, $1F, $1F   ; 4D
- D 3 - I - 0x00F36B 03:F35B: F8        .byte $F8, $F8, $F8, $F8, $F8, $F8, $F8, $F8   ; 4E
- D 3 - I - 0x00F373 03:F363: 1F        .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F   ; 4F
- D 3 - I - 0x00F37B 03:F36B: F8        .byte $F8, $F8, $F8, $F0, $E0, $E0, $C0, $80   ; 50
- D 3 - I - 0x00F383 03:F373: 1F        .byte $1F, $1F, $1F, $0F, $07, $07, $03, $01   ; 51
- D 3 - I - 0x00F38B 03:F37B: FF        .byte $FF, $FE, $FC, $F8, $F0, $80, $00, $00   ; 52
- D 3 - I - 0x00F393 03:F383: FF        .byte $FF, $7F, $3F, $1F, $0F, $01, $00, $00   ; 53
- D 3 - I - 0x00F39B 03:F38B: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $E7, $C3   ; 54
- D 3 - I - 0x00F3A3 03:F393: C0        .byte $C0, $C0, $C0, $C0, $C0, $C0, $C0, $80   ; 55
- D 3 - I - 0x00F3AB 03:F39B: 03        .byte $03, $03, $03, $03, $03, $03, $03, $01   ; 56
- D 3 - I - 0x00F3B3 03:F3A3: C3        .byte $C3, $C3, $81, $81, $81, $00, $00, $00   ; 57
- D 3 - I - 0x00F3BB 03:F3AB: 80        .byte $80, $80, $80, $80, $80, $80, $80, $80   ; 58
- D 3 - I - 0x00F3C3 03:F3B3: 01        .byte $01, $01, $01, $01, $01, $01, $01, $01   ; 59
- D 3 - I - 0x00F3CB 03:F3BB: 81        .byte $81, $E7, $FF, $FF, $FF, $FF, $FF, $FF   ; 5A
- D 3 - I - 0x00F3D3 03:F3C3: C0        .byte $C0, $E0, $F0, $F0, $F0, $F0, $F8, $FE   ; 5B
- D 3 - I - 0x00F3DB 03:F3CB: 03        .byte $03, $07, $0F, $0F, $0F, $0F, $1F, $7F   ; 5C
- D 3 - I - 0x00F3E3 03:F3D3: FE        .byte $FE, $FC, $F8, $F8, $F0, $F0, $F0, $F0   ; 5D
- D 3 - I - 0x00F3EB 03:F3DB: 7F        .byte $7F, $3F, $1F, $1F, $0F, $0F, $0F, $0F   ; 5E
- D 3 - I - 0x00F3F3 03:F3E3: F0        .byte $F0, $F0, $F0, $F0, $F0, $E0, $E0, $E0   ; 5F
- D 3 - I - 0x00F3FB 03:F3EB: 0F        .byte $0F, $0F, $0F, $0F, $0F, $07, $07, $07   ; 60
- D 3 - I - 0x00F403 03:F3F3: E0        .byte $E0, $E0, $E0, $E0, $E0, $E0, $C0, $C0   ; 61
- D 3 - I - 0x00F40B 03:F3FB: 07        .byte $07, $07, $07, $07, $07, $07, $03, $03   ; 62
- D 3 - I - 0x00F413 03:F403: FF        .byte $FF, $FF, $FF, $FF, $FF, $FE, $F8, $E0   ; 63
- D 3 - I - 0x00F41B 03:F40B: F0        .byte $F0, $E0, $C0, $80, $00, $00, $00, $00   ; 64
- D 3 - I - 0x00F423 03:F413: 7C        .byte $7C, $18, $00, $00, $00, $00, $00, $00   ; 65
- D 3 - I - 0x00F42B 03:F41B: 3F        .byte $3F, $1F, $0F, $07, $07, $03, $03, $03   ; 66
- D 3 - I - 0x00F433 03:F423: 03        .byte $03, $03, $03, $03, $03, $07, $07, $07   ; 67
- D 3 - I - 0x00F43B 03:F42B: C0        .byte $C0, $E0, $F8, $FF, $FF, $FE, $FE, $FF   ; 68
- D 3 - I - 0x00F443 03:F433: 00        .byte $00, $00, $00, $00, $00, $00, $0C, $3E   ; 69
- D 3 - I - 0x00F44B 03:F43B: 00        .byte $00, $00, $00, $00, $00, $00, $30, $7C   ; 6A
- D 3 - I - 0x00F453 03:F443: 0F        .byte $0F, $1F, $3F, $FF, $FF, $7F, $7F, $FF   ; 6B
- D 3 - I - 0x00F45B 03:F44B: FE        .byte $FE, $F8, $C0, $00, $00, $00, $00, $00   ; 6C
- D 3 - I - 0x00F463 03:F453: 7F        .byte $7F, $1F, $03, $00, $00, $00, $00, $00   ; 6D
- D 3 - I - 0x00F46B 03:F45B: 80        .byte $80, $80, $00, $80, $00, $80, $00, $80   ; 6E
- D 3 - I - 0x00F473 03:F463: 01        .byte $01, $01, $00, $01, $00, $01, $00, $01   ; 6F
- D 3 - I - 0x00F47B 03:F46B: 00        .byte $00, $80, $E0, $80, $00, $00, $80, $E0   ; 70
- D 3 - I - 0x00F483 03:F473: 00        .byte $00, $00, $00, $00, $00, $00, $10, $78   ; 71
- D 3 - I - 0x00F48B 03:F47B: FF        .byte $FF, $FF, $FF, $FF, $F3, $C0, $80, $80   ; 72
- D 3 - I - 0x00F493 03:F483: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $33, $01   ; 73
- D 3 - I - 0x00F49B 03:F48B: 80        .byte $80, $80, $C0, $F0, $F8, $F8, $FC, $FF   ; 74
- D 3 - I - 0x00F4A3 03:F493: 01        .byte $01, $01, $01, $01, $01, $01, $03, $FF   ; 75
- D 3 - I - 0x00F4AB 03:F49B: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $CC, $80   ; 76
- D 3 - I - 0x00F4B3 03:F4A3: FF        .byte $FF, $FF, $FF, $FF, $CF, $03, $01, $01   ; 77
- D 3 - I - 0x00F4BB 03:F4AB: 80        .byte $80, $80, $80, $80, $80, $80, $C0, $FF   ; 78
- D 3 - I - 0x00F4C3 03:F4B3: 01        .byte $01, $01, $03, $0F, $1F, $1F, $3F, $FF   ; 79
- D 3 - I - 0x00F4CB 03:F4BB: 03        .byte $03, $03, $03, $03, $03, $00, $00, $00   ; 7A
- D 3 - I - 0x00F4D3 03:F4C3: 00        .byte $00, $00, $00, $00, $00, $00, $00, $03   ; 7B
- D 3 - I - 0x00F4DB 03:F4CB: 00        .byte $00, $00, $00, $00, $00, $00, $00, $80   ; 7C
- D 3 - I - 0x00F4E3 03:F4D3: 00        .byte $00, $00, $00, $00, $00, $00, $00, $01   ; 7D
- D 3 - I - 0x00F4EB 03:F4DB: C0        .byte $C0, $E0, $F8, $FE, $F8, $E0, $C0, $80   ; 7E
- D 3 - I - 0x00F4F3 03:F4E3: 03        .byte $03, $07, $1F, $7F, $1F, $07, $03, $01   ; 7F
- D 3 - I - 0x00F4FB 03:F4EB: 00        .byte $00, $00, $00, $00, $00, $04, $1C, $F8   ; 80
- D 3 - I - 0x00F503 03:F4F3: 02        .byte $02, $04, $1C, $78, $78, $30, $30, $00   ; 81
- D 3 - I - 0x00F50B 03:F4FB: 40        .byte $40, $20, $38, $1E, $18, $00, $00, $00   ; 82
- D 3 - I - 0x00F513 03:F503: 00        .byte $00, $00, $00, $00, $00, $E0, $F8, $FF   ; 83
- D 3 - I - 0x00F51B 03:F50B: 00        .byte $00, $80, $E0, $F8, $FE, $F8, $E0, $80   ; 84
- D 3 - I - 0x00F523 03:F513: 00        .byte $00, $00, $00, $00, $20, $38, $3E, $3F   ; 85
- D 3 - I - 0x00F52B 03:F51B: 78        .byte $78, $30, $30, $00, $00, $00, $00, $00   ; 86
- D 3 - I - 0x00F533 03:F523: 1E        .byte $1E, $0C, $0C, $00, $00, $00, $00, $00   ; 87
- D 3 - I - 0x00F53B 03:F52B: 00        .byte $00, $00, $00, $10, $78, $F8, $FC, $FF   ; 88
- D 3 - I - 0x00F543 03:F533: 07        .byte $07, $07, $01, $00, $00, $00, $00, $01   ; 89
- D 3 - I - 0x00F54B 03:F53B: F8        .byte $F8, $E0, $80, $00, $04, $04, $00, $80   ; 8A
- D 3 - I - 0x00F553 03:F543: 1F        .byte $1F, $07, $01, $00, $20, $20, $00, $01   ; 8B
- D 3 - I - 0x00F55B 03:F54B: E0        .byte $E0, $E0, $80, $00, $00, $00, $00, $80   ; 8C
- D 3 - I - 0x00F563 03:F553: 07        .byte $07, $01, $00, $00, $00, $00, $00, $07   ; 8D
- D 3 - I - 0x00F56B 03:F55B: E0        .byte $E0, $E0, $00, $04, $04, $00, $00, $80   ; 8E
- D 3 - I - 0x00F573 03:F563: 07        .byte $07, $07, $00, $20, $20, $00, $00, $01   ; 8F
- D 3 - I - 0x00F57B 03:F56B: E0        .byte $E0, $80, $00, $00, $00, $00, $00, $E0   ; 90
- D 3 - I - 0x00F583 03:F573: 07        .byte $07, $01, $00, $00, $00, $00, $00, $01   ; 91
- D 3 - I - 0x00F58B 03:F57B: E0        .byte $E0, $E0, $00, $00, $04, $00, $00, $80   ; 92
- D 3 - I - 0x00F593 03:F583: 07        .byte $07, $07, $00, $00, $20, $00, $00, $01   ; 93
- D 3 - I - 0x00F59B 03:F58B: E0        .byte $E0, $80, $00, $00, $00, $00, $00, $80   ; 94
- D 3 - I - 0x00F5A3 03:F593: C0        .byte $C0, $C0, $C0, $C0, $C0, $C0, $00, $00   ; 95
- D 3 - I - 0x00F5AB 03:F59B: 00        .byte $00, $00, $00, $00, $00, $00, $00, $C0   ; 96
- D 3 - I - 0x00F5B3 03:F5A3: 00        .byte $00, $01, $07, $1F, $7F, $1F, $07, $01   ; 97
- D 3 - I - 0x00F5BB 03:F5AB: FF        .byte $FF, $1F, $04, $00, $00, $00, $00, $00   ; 98
- D 3 - I - 0x00F5C3 03:F5B3: 80        .byte $80, $C0, $C0, $C0, $C0, $C0, $C0, $C0   ; 99
- D 3 - I - 0x00F5CB 03:F5BB: 01        .byte $01, $03, $03, $03, $03, $03, $03, $03   ; 9A
- D 3 - I - 0x00F5D3 03:F5C3: 00        .byte $00, $00, $00, $00, $00, $80, $C0, $80   ; 9B
- D 3 - I - 0x00F5DB 03:F5CB: 00        .byte $00, $00, $00, $08, $1E, $1F, $3F, $FF   ; 9C
- D 3 - I - 0x00F5E3 03:F5D3: C0        .byte $C0, $C0, $C0, $C0, $C0, $00, $00, $00   ; 9D
- D 3 - I - 0x00F5EB 03:F5DB: 07        .byte $07, $01, $80, $E0, $F8, $E0, $80, $01   ; 9E
- D 3 - I - 0x00F5F3 03:F5E3: E0        .byte $E0, $E0, $00, $00, $00, $00, $00, $E0   ; 9F
- D 3 - I - 0x00F5FB 03:F5EB: 07        .byte $07, $07, $00, $00, $00, $00, $00, $07   ; A0
- D 3 - I - 0x00F603 03:F5F3: E0        .byte $E0, $80, $01, $07, $1F, $07, $01, $80   ; A1
- D 3 - I - 0x00F60B 03:F5FB: 80        .byte $80, $80, $00, $10, $78, $F8, $FC, $FF   ; A2
- D 3 - I - 0x00F613 03:F603: 00        .byte $00, $00, $00, $00, $00, $01, $03, $01   ; A3
- D 3 - I - 0x00F61B 03:F60B: F0        .byte $F0, $F0, $F0, $F0, $F0, $F8, $F0, $F0   ; A4
- D 3 - I - 0x00F623 03:F613: 0F        .byte $0F, $0F, $0F, $0F, $0F, $1F, $0F, $0F   ; A5
- D 3 - I - 0x00F62B 03:F61B: 7F        .byte $7F, $18, $00, $00, $00, $00, $00, $00   ; A6
- D 3 - I - 0x00F633 03:F623: FF        .byte $FF, $FF, $FC, $F0, $60, $00, $00, $00   ; A7
- D 3 - I - 0x00F63B 03:F62B: 07        .byte $07, $07, $01, $00, $00, $00, $00, $00   ; A8
- D 3 - I - 0x00F643 03:F633: E0        .byte $E0, $E0, $80, $00, $00, $00, $00, $00   ; A9
- D 3 - I - 0x00F64B 03:F63B: 07        .byte $07, $01, $00, $00, $00, $00, $00, $00   ; AA
- D 3 - I - 0x00F653 03:F643: E0        .byte $E0, $E0, $00, $00, $00, $00, $00, $00   ; AB
- D 3 - I - 0x00F65B 03:F64B: 07        .byte $07, $07, $00, $00, $00, $00, $00, $00   ; AC
- D 3 - I - 0x00F663 03:F653: E0        .byte $E0, $80, $00, $00, $00, $00, $00, $00   ; AD
- D 3 - I - 0x00F66B 03:F65B: 00        .byte $00, $00, $00, $00, $00, $00, $00, $20   ; AE
- D 3 - I - 0x00F673 03:F663: 04        .byte $04, $00, $00, $00, $00, $00, $00, $00   ; AF
- D 3 - I - 0x00F67B 03:F66B: 80        .byte $80, $00, $00, $00, $00, $00, $00, $00   ; A0
- D 3 - I - 0x00F683 03:F673: 00        .byte $00, $00, $00, $0E, $1F, $1F, $3F, $FF   ; B1
- D 3 - I - 0x00F68B 03:F67B: E0        .byte $E0, $F8, $7C, $1C, $04, $80, $C0, $80   ; B2
- D 3 - I - 0x00F693 03:F683: 07        .byte $07, $07, $00, $00, $00, $00, $00, $01   ; B3
- D 3 - I - 0x00F69B 03:F68B: 01        .byte $01, $01, $00, $08, $1E, $1F, $3F, $FF   ; B4
- D 3 - I - 0x00F6A3 03:F693: E0        .byte $E0, $E0, $00, $00, $00, $00, $00, $80   ; B5
- D 3 - I - 0x00F6AB 03:F69B: 07        .byte $07, $1F, $3E, $38, $20, $01, $03, $01   ; B6
- D 3 - I - 0x00F6B3 03:F6A3: 7F        .byte $7F, $3F, $3F, $1F, $1E, $08, $00, $00   ; B7
- D 3 - I - 0x00F6BB 03:F6AB: 07        .byte $07, $81, $E0, $F8, $FE, $F8, $E0, $81   ; B8
- D 3 - I - 0x00F6C3 03:F6B3: E0        .byte $E0, $F8, $60, $00, $04, $00, $60, $F8   ; B9
- D 3 - I - 0x00F6CB 03:F6BB: 07        .byte $07, $1F, $06, $00, $20, $00, $06, $1F   ; BA
- D 3 - I - 0x00F6D3 03:F6C3: E0        .byte $E0, $81, $07, $1F, $7F, $1F, $07, $81   ; BB
- D 3 - I - 0x00F6DB 03:F6CB: 00        .byte $00, $80, $E0, $F8, $FE, $F8, $E0, $81   ; BC
- D 3 - I - 0x00F6E3 03:F6D3: 00        .byte $00, $00, $00, $00, $00, $00, $60, $F8   ; BD
- D 3 - I - 0x00F6EB 03:F6DB: 00        .byte $00, $00, $00, $00, $00, $00, $06, $1F   ; BE
- D 3 - I - 0x00F6F3 03:F6E3: 00        .byte $00, $01, $07, $1F, $7F, $1F, $07, $81   ; BF
- D 3 - I - 0x00F6FB 03:F6EB: FF        .byte $FF, $FF, $FF, $FF, $73, $00, $00, $00   ; C0
- D 3 - I - 0x00F703 03:F6F3: 01        .byte $01, $00, $00, $00, $00, $00, $00, $00   ; C1
- D 3 - I - 0x00F70B 03:F6FB: 00        .byte $00, $00, $00, $00, $00, $00, $00, $18   ; C2
- D 3 - I - 0x00F713 03:F703: 70        .byte $70, $10, $00, $00, $00, $00, $00, $00   ; C3
- D 3 - I - 0x00F71B 03:F70B: 0F        .byte $0F, $0F, $0F, $1F, $3F, $1F, $07, $01   ; C4
- D 3 - I - 0x00F723 03:F713: 00        .byte $00, $00, $00, $70, $F8, $F8, $FC, $FF   ; C5
- D 3 - I - 0x00F72B 03:F71B: 20        .byte $20, $00, $00, $00, $00, $00, $00, $00   ; C6
- D 3 - I - 0x00F733 03:F723: 00        .byte $00, $00, $00, $00, $00, $00, $00, $04   ; C7
- D 3 - I - 0x00F73B 03:F72B: 00        .byte $00, $00, $00, $00, $00, $00, $06, $3F   ; C8
- D 3 - I - 0x00F743 03:F733: 07        .byte $07, $07, $0F, $1F, $7F, $1F, $07, $81   ; C9
- D 3 - I - 0x00F74B 03:F73B: 00        .byte $00, $00, $00, $00, $00, $00, $00, $07   ; CA
- D 3 - I - 0x00F753 03:F743: 00        .byte $00, $00, $01, $07, $1F, $07, $01, $80   ; CB
- D 3 - I - 0x00F75B 03:F74B: 1F        .byte $1F, $07, $81, $E0, $F8, $E0, $80, $00   ; CC
- D 3 - I - 0x00F763 03:F753: 0F        .byte $0F, $00, $00, $00, $00, $00, $00, $00   ; CD
- D 3 - I - 0x00F76B 03:F75B: F0        .byte $F0, $00, $00, $00, $00, $00, $00, $00   ; CE
- D 3 - I - 0x00F773 03:F763: 00        .byte $00, $00, $00, $00, $00, $00, $00, $08   ; CF
- D 3 - I - 0x00F77B 03:F76B: 02        .byte $02, $00, $00, $00, $00, $00, $00, $00   ; D0
- D 3 - I - 0x00F783 03:F773: 00        .byte $00, $00, $00, $00, $00, $00, $00, $70   ; D1
- D 3 - I - 0x00F78B 03:F77B: 00        .byte $00, $00, $00, $00, $80, $00, $00, $00   ; D2
- D 3 - I - 0x00F793 03:F783: 00        .byte $00, $00, $03, $0F, $1F, $1F, $3F, $FF   ; D3
- D 3 - I - 0x00F79B 03:F78B: 00        .byte $00, $00, $00, $00, $01, $03, $03, $01   ; D4
- D 3 - I - 0x00F7A3 03:F793: 00        .byte $00, $00, $C0, $F0, $F8, $F8, $FC, $FF   ; D5
- D 3 - I - 0x00F7AB 03:F79B: E0        .byte $E0, $80, $00, $04, $04, $00, $00, $80   ; D6
- D 3 - I - 0x00F7B3 03:F7A3: F0        .byte $F0, $F0, $F0, $F0, $C0, $00, $00, $00   ; D7
- D 3 - I - 0x00F7BB 03:F7AB: 00        .byte $00, $00, $00, $08, $1C, $1E, $3F, $FF   ; D8
- D 3 - I - 0x00F7C3 03:F7B3: 0F        .byte $0F, $0F, $0F, $0F, $03, $00, $00, $00   ; D9
- D 3 - I - 0x00F7CB 03:F7BB: 00        .byte $00, $00, $00, $00, $08, $18, $0C, $0F   ; DA
- D 3 - I - 0x00F7D3 03:F7C3: 1E        .byte $1E, $08, $00, $00, $00, $00, $00, $00   ; DB
- D 3 - I - 0x00F7DB 03:F7CB: 00        .byte $00, $00, $80, $E0, $F8, $E0, $80, $01   ; DC
- D 3 - I - 0x00F7E3 03:F7D3: 00        .byte $00, $00, $00, $00, $00, $00, $00, $E0   ; DD
- D 3 - I - 0x00F7EB 03:F7DB: 78        .byte $78, $10, $00, $00, $00, $00, $00, $00   ; DE
- D 3 - I - 0x00F7F3 03:F7E3: 01        .byte $01, $03, $07, $1F, $7F, $1F, $07, $01   ; DF
- D 3 - I - 0x00F7FB 03:F7EB: 80        .byte $80, $C0, $E0, $F8, $FE, $F8, $E0, $80   ; E0
- D 3 - I - 0x00F803 03:F7F3: 00        .byte $00, $00, $00, $00, $00, $00, $00, $10   ; E1
- D 3 - I - 0x00F80B 03:F7FB: 00        .byte $00, $80, $E0, $F0, $F0, $F8, $F0, $F0   ; E2
- D 3 - I - 0x00F813 03:F803: 00        .byte $00, $01, $07, $0F, $0F, $1F, $0F, $0F   ; E3
- D 3 - I - 0x00F81B 03:F80B: FE        .byte $FE, $F8, $E0, $80, $04, $1C, $04, $00   ; E4
- D 3 - I - 0x00F823 03:F813: 1F        .byte $1F, $07, $01, $00, $18, $00, $00, $00   ; E5
- D 3 - I - 0x00F82B 03:F81B: 00        .byte $00, $01, $07, $07, $07, $03, $03, $01   ; E6
- D 3 - I - 0x00F833 03:F823: F8        .byte $F8, $E0, $80, $00, $04, $04, $00, $00   ; E7
- D 3 - I - 0x00F83B 03:F82B: 00        .byte $00, $00, $00, $00, $00, $00, $04, $18   ; E8
- D 3 - I - 0x00F843 03:F833: 00        .byte $00, $00, $04, $18, $78, $30, $30, $00   ; E9
- D 3 - I - 0x00F84B 03:F83B: 00        .byte $00, $00, $00, $00, $00, $80, $C0, $FC   ; EA


; bzk garbage
- - - - - - 0x00F853 03:F843: 23        .byte $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23   ; 
- - - - - - 0x00F860 03:F850: 23        .byte $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23   ; 
- - - - - - 0x00F870 03:F860: 23        .byte $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23   ; 
- - - - - - 0x00F880 03:F870: 23        .byte $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23   ; 
- - - - - - 0x00F890 03:F880: 23        .byte $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23   ; 
- - - - - - 0x00F8A0 03:F890: 23        .byte $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23   ; 
- - - - - - 0x00F8B0 03:F8A0: 23        .byte $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23   ; 
- - - - - - 0x00F8C0 03:F8B0: 23        .byte $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23   ; 
- - - - - - 0x00F8D0 03:F8C0: 23        .byte $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23   ; 
- - - - - - 0x00F8E0 03:F8D0: 23        .byte $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23   ; 
- - - - - - 0x00F8F0 03:F8E0: 23        .byte $23, $23, $23, $23, $23, $23, $23, $23, $23, $23, $23   ; 


; bzk garbage
- - - - - - 0x00F8FB 03:F8EB: FF        .byte $FF, $FF, $FF, $FF, $FF   ; 
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
- - - - - - 0x00FAB0 03:FAA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FAC0 03:FAB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FAD0 03:FAC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FAE0 03:FAD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FAF0 03:FAE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB00 03:FAF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB10 03:FB00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB20 03:FB10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB30 03:FB20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB40 03:FB30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB50 03:FB40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB60 03:FB50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB70 03:FB60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB80 03:FB70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FB90 03:FB80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FBA0 03:FB90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FBB0 03:FBA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FBC0 03:FBB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FBD0 03:FBC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FBE0 03:FBD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FBF0 03:FBE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC00 03:FBF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC10 03:FC00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC20 03:FC10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC30 03:FC20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC40 03:FC30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC50 03:FC40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC60 03:FC50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC70 03:FC60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC80 03:FC70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC90 03:FC80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FCA0 03:FC90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FCB0 03:FCA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FCC0 03:FCB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FCD0 03:FCC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FCE0 03:FCD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FCF0 03:FCE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD00 03:FCF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD10 03:FD00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD20 03:FD10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD30 03:FD20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD40 03:FD30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD50 03:FD40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD60 03:FD50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD70 03:FD60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD80 03:FD70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD90 03:FD80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FDA0 03:FD90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FDB0 03:FDA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FDC0 03:FDB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FDD0 03:FDC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FDE0 03:FDD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FDF0 03:FDE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE00 03:FDF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.segment "BANK_01_i"
.include "copy_bank___FE00_FFF9.asm"



.segment "VECTORS_01"
- D 3 - - - 0x01000A 03:FFFA: FD 07     .word ram_jmp_xxxx
- - - - - - 0x01000C 03:FFFC: 00 FE     .word vec_inc_FE00_RESET
- - - - - - 0x01000E 03:FFFE: 26 FE     .word vec_inc_FE26_IRQ



