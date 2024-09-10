.segment "BANK_04"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x010010-0x01400F



.export sub_0x010010
.export sub_0x010013
.export tbl_0x013010_palette
.export sub_0x013130
.export sub_0x013610_spawn_objects
.export tbl_0x013F90
.export tbl_0x013FB0
.export tbl_0x013FC0
.export tbl_0x013FC8
.export tbl_0x013FD0_lo
.export tbl_0x013FD8_hi
.export tbl_0x013FE0_lo
.export tbl_0x013FE8_hi
.export tbl_0x013FF0_lo
.export tbl_0x013FF8_hi
.export tbl_0x014000_lo
.export tbl_0x014008_hi



sub_0x010010:
C - - - - - 0x010010 04:8000: 4C 3B 81  JMP loc_813B



sub_0x010013:
C - - - - - 0x010013 04:8003: 20 4D 80  JSR sub_804D_display_hearts_with_spr
C - - - - - 0x010016 04:8006: E6 95     INC ram_frm_cnt_2
C - - - - - 0x010018 04:8008: A5 95     LDA ram_frm_cnt_2
C - - - - - 0x01001A 04:800A: 4A        LSR
C - - - - - 0x01001B 04:800B: B0 21     BCS bra_802E
C - - - - - 0x01001D 04:800D: A2 00     LDX #$00
C - - - - - 0x01001F 04:800F: 86 96     STX ram_0096
bra_8011_loop:
C - - - - - 0x010021 04:8011: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x010024 04:8014: 30 0C     BMI bra_8022
C - - - - - 0x010026 04:8016: A9 00     LDA #$00
C - - - - - 0x010028 04:8018: 9D A0 04  STA ram_04A0_obj,X
C - - - - - 0x01002B 04:801B: A9 FF     LDA #$FF
C - - - - - 0x01002D 04:801D: 9D E0 03  STA ram_03E0_obj,X
C - - - - - 0x010030 04:8020: D0 03     BNE bra_8025    ; jmp
bra_8022:
C - - - - - 0x010032 04:8022: 20 84 80  JSR sub_8084
bra_8025:
C - - - - - 0x010035 04:8025: E6 96     INC ram_0096
C - - - - - 0x010037 04:8027: A6 96     LDX ram_0096
C - - - - - 0x010039 04:8029: E0 10     CPX #$10
C - - - - - 0x01003B 04:802B: D0 E4     BNE bra_8011_loop
C - - - - - 0x01003D 04:802D: 60        RTS
bra_802E:
C - - - - - 0x01003E 04:802E: A2 0F     LDX #$0F
C - - - - - 0x010040 04:8030: 86 96     STX ram_0096
bra_8032_loop:
C - - - - - 0x010042 04:8032: BD 00 03  LDA ram_obj_flags,X
C - - - - - 0x010045 04:8035: 30 0C     BMI bra_8043
C - - - - - 0x010047 04:8037: A9 00     LDA #$00
C - - - - - 0x010049 04:8039: 9D A0 04  STA ram_04A0_obj,X
C - - - - - 0x01004C 04:803C: A9 FF     LDA #$FF
C - - - - - 0x01004E 04:803E: 9D E0 03  STA ram_03E0_obj,X
C - - - - - 0x010051 04:8041: D0 03     BNE bra_8046    ; jmp
bra_8043:
C - - - - - 0x010053 04:8043: 20 84 80  JSR sub_8084
bra_8046:
C - - - - - 0x010056 04:8046: C6 96     DEC ram_0096
C - - - - - 0x010058 04:8048: A6 96     LDX ram_0096
C - - - - - 0x01005A 04:804A: 10 E6     BPL bra_8032_loop
C - - - - - 0x01005C 04:804C: 60        RTS



sub_804D_display_hearts_with_spr:
C - - - - - 0x01005D 04:804D: A5 BA     LDA ram_total_hearts
C - - - - - 0x01005F 04:804F: 0A        ASL
C - - - - - 0x010060 04:8050: 0A        ASL
C - - - - - 0x010061 04:8051: 85 97     STA ram_oam_index
C - - - - - 0x010063 04:8053: AA        TAX
bra_8054_loop:
C - - - - - 0x010064 04:8054: BD 6F 80  LDA tbl_8070 - $01,X
C - - - - - 0x010067 04:8057: 9D FF 01  STA ram_oam - $01,X
C - - - - - 0x01006A 04:805A: CA        DEX
C - - - - - 0x01006B 04:805B: D0 F7     BNE bra_8054_loop
; display full hearts
C - - - - - 0x01006D 04:805D: A5 B1     LDA ram_hearts
C - - - - - 0x01006F 04:805F: F0 0E     BEQ bra_806F_RTS
; if not dead
C - - - - - 0x010071 04:8061: 0A        ASL
C - - - - - 0x010072 04:8062: 0A        ASL
C - - - - - 0x010073 04:8063: AA        TAX
bra_8064_loop:
C - - - - - 0x010074 04:8064: A9 98     LDA #$98
C - - - - - 0x010076 04:8066: 9D FD 01  STA ram_spr_T - $04,X
C - - - - - 0x010079 04:8069: CA        DEX
C - - - - - 0x01007A 04:806A: CA        DEX
C - - - - - 0x01007B 04:806B: CA        DEX
C - - - - - 0x01007C 04:806C: CA        DEX
C - - - - - 0x01007D 04:806D: D0 F5     BNE bra_8064_loop
bra_806F_RTS:
C - - - - - 0x01007F 04:806F: 60        RTS



tbl_8070:
- D 0 - - - 0x010080 04:8070: 18        .byte $18, $9F, $00, $10   ; 
- D 0 - - - 0x010084 04:8074: 18        .byte $18, $9F, $00, $18   ; 
- D 0 - - - 0x010088 04:8078: 18        .byte $18, $9F, $00, $20   ; 
- D 0 - - - 0x01008C 04:807C: 18        .byte $18, $9F, $00, $28   ; 
- D 0 - - - 0x010090 04:8080: 18        .byte $18, $9F, $00, $30   ; 



sub_8084:
C - - - - - 0x010094 04:8084: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x010097 04:8087: 85 12     STA ram_0012
C - - - - - 0x010099 04:8089: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x01009C 04:808C: 85 13     STA ram_0013
C - - - - - 0x01009E 04:808E: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x0100A1 04:8091: 29 10     AND #$10
C - - - - - 0x0100A3 04:8093: F0 71     BEQ bra_8106
C - - - - - 0x0100A5 04:8095: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x0100A8 04:8098: 38        SEC
C - - - - - 0x0100A9 04:8099: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x0100AB 04:809B: 85 12     STA ram_0012
C - - - - - 0x0100AD 04:809D: B0 06     BCS bra_80A5
C - - - - - 0x0100AF 04:809F: 08        PHP
C - - - - - 0x0100B0 04:80A0: E9 0F     SBC #$0F
C - - - - - 0x0100B2 04:80A2: 85 12     STA ram_0012
C - - - - - 0x0100B4 04:80A4: 28        PLP
bra_80A5:
C - - - - - 0x0100B5 04:80A5: BD 70 03  LDA ram_pos_Y_hi,X
C - - - - - 0x0100B8 04:80A8: E5 FB     SBC ram_scroll_Y_hi
C - - - - - 0x0100BA 04:80AA: 29 01     AND #$01
C - - - - - 0x0100BC 04:80AC: F0 21     BEQ bra_80CF
C - - - - - 0x0100BE 04:80AE: E0 00     CPX #$00
C - - - - - 0x0100C0 04:80B0: D0 02     BNE bra_80B4
- - - - - - 0x0100C2 04:80B2: F0 2E     BEQ bra_80E2    ; jmp
bra_80B4:
C - - - - - 0x0100C4 04:80B4: BD 10 03  LDA ram_obj_id,X
C - - - - - 0x0100C7 04:80B7: C9 0A     CMP #con_obj_id_octopus
C - - - - - 0x0100C9 04:80B9: D0 37     BNE bra_80F2
C - - - - - 0x0100CB 04:80BB: BD 60 03  LDA ram_pos_Y_lo,X
C - - - - - 0x0100CE 04:80BE: 38        SEC
C - - - - - 0x0100CF 04:80BF: E5 FA     SBC ram_scroll_Y_lo
C - - - - - 0x0100D1 04:80C1: B0 02     BCS bra_80C5
C - - - - - 0x0100D3 04:80C3: E9 0F     SBC #$0F
bra_80C5:
C - - - - - 0x0100D5 04:80C5: C9 30     CMP #$30
C - - - - - 0x0100D7 04:80C7: 90 19     BCC bra_80E2
C - - - - - 0x0100D9 04:80C9: C9 D0     CMP #$D0
C - - - - - 0x0100DB 04:80CB: B0 15     BCS bra_80E2
C - - - - - 0x0100DD 04:80CD: 90 23     BCC bra_80F2   ; jmp
bra_80CF:
C - - - - - 0x0100DF 04:80CF: BD 30 03  LDA ram_pos_X_lo,X
C - - - - - 0x0100E2 04:80D2: 38        SEC
C - - - - - 0x0100E3 04:80D3: E5 FC     SBC ram_scroll_X_lo
C - - - - - 0x0100E5 04:80D5: 85 13     STA ram_0013
C - - - - - 0x0100E7 04:80D7: BD 40 03  LDA ram_pos_X_hi,X
C - - - - - 0x0100EA 04:80DA: E5 FD     SBC ram_scroll_X_hi
C - - - - - 0x0100EC 04:80DC: F0 28     BEQ bra_8106
C - - - - - 0x0100EE 04:80DE: E4 3A     CPX ram_003A
C - - - - - 0x0100F0 04:80E0: D0 10     BNE bra_80F2
bra_80E2:
C - - - - - 0x0100F2 04:80E2: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x0100F5 04:80E5: 29 7F     AND #$7F
C - - - - - 0x0100F7 04:80E7: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x0100FA 04:80EA: 4C 0E 81  JMP loc_810E
- - - - - - 0x0100FD 04:80ED: BD 70 03  LDA ram_pos_Y_hi,X
- - - - - - 0x010100 04:80F0: F0 14     BEQ bra_8106
bra_80F2:
C - - - - - 0x010102 04:80F2: A9 00     LDA #$00
C - - - - - 0x010104 04:80F4: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x010107 04:80F7: 9D A0 04  STA ram_04A0_obj,X
C - - - - - 0x01010A 04:80FA: E4 3A     CPX ram_003A
C - - - - - 0x01010C 04:80FC: D0 02     BNE bra_8100
- - - - - - 0x01010E 04:80FE: 85 3A     STA ram_003A
bra_8100:
C - - - - - 0x010110 04:8100: A9 FF     LDA #$FF
C - - - - - 0x010112 04:8102: 9D E0 03  STA ram_03E0_obj,X
C - - - - - 0x010115 04:8105: 60        RTS
bra_8106:
C - - - - - 0x010116 04:8106: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x010119 04:8109: 09 80     ORA #$80
C - - - - - 0x01011B 04:810B: 9D 00 04  STA ram_0400_obj,X
loc_810E:
C D 0 - - - 0x01011E 04:810E: BD A0 04  LDA ram_04A0_obj,X
C - - - - - 0x010121 04:8111: F0 0D     BEQ bra_8120
C - - - - - 0x010123 04:8113: DE A0 04  DEC ram_04A0_obj,X
C - - - - - 0x010126 04:8116: BD A0 04  LDA ram_04A0_obj,X
C - - - - - 0x010129 04:8119: 29 7F     AND #$7F
C - - - - - 0x01012B 04:811B: D0 03     BNE bra_8120
C - - - - - 0x01012D 04:811D: 9D A0 04  STA ram_04A0_obj,X
bra_8120:
C - - - - - 0x010130 04:8120: A0 00     LDY #$00
C - - - - - 0x010132 04:8122: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x010135 04:8125: 29 40     AND #$40
C - - - - - 0x010137 04:8127: 85 10     STA ram_0010
C - - - - - 0x010139 04:8129: F0 01     BEQ bra_812C
C - - - - - 0x01013B 04:812B: C8        INY ; 01
bra_812C:
C - - - - - 0x01013C 04:812C: 84 11     STY ram_0011
C - - - - - 0x01013E 04:812E: BD 30 04  LDA ram_0430_obj,X
C - - - - - 0x010141 04:8131: C9 51     CMP #$51
C - - - - - 0x010143 04:8133: D0 06     BNE bra_813B
C - - - - - 0x010145 04:8135: A9 00     LDA #$00
C - - - - - 0x010147 04:8137: 85 10     STA ram_0010
C - - - - - 0x010149 04:8139: 85 11     STA ram_0011
bra_813B:
loc_813B:
C D 0 - - - 0x01014B 04:813B: BC 30 04  LDY ram_0430_obj,X
C - - - - - 0x01014E 04:813E: F0 53     BEQ bra_8193
; 01+
C - - - - - 0x010150 04:8140: B9 1C A7  LDA tbl_A71C_lo,Y
C - - - - - 0x010153 04:8143: 85 00     STA ram_0000
C - - - - - 0x010155 04:8145: B9 A7 A7  LDA tbl_A7A7_hi,Y
C - - - - - 0x010158 04:8148: 85 01     STA ram_0001
C - - - - - 0x01015A 04:814A: E0 10     CPX #$10
C - - - - - 0x01015C 04:814C: B0 0B     BCS bra_8159
C - - - - - 0x01015E 04:814E: A5 B1     LDA ram_hearts
C - - - - - 0x010160 04:8150: F0 2E     BEQ bra_8180
; if not dead
C - - - - - 0x010162 04:8152: BD A0 04  LDA ram_04A0_obj,X
C - - - - - 0x010165 04:8155: 30 02     BMI bra_8159
C - - - - - 0x010167 04:8157: D0 27     BNE bra_8180
bra_8159:
C - - - - - 0x010169 04:8159: BD 48 04  LDA ram_0448,X
C - - - - - 0x01016C 04:815C: 30 22     BMI bra_8180
C - - - - - 0x01016E 04:815E: 29 7F     AND #$7F
C - - - - - 0x010170 04:8160: FE 48 04  INC ram_0448,X
C - - - - - 0x010173 04:8163: A0 01     LDY #$01
C - - - - - 0x010175 04:8165: D1 00     CMP (ram_0000),Y
C - - - - - 0x010177 04:8167: D0 17     BNE bra_8180
C - - - - - 0x010179 04:8169: A9 00     LDA #$00
C - - - - - 0x01017B 04:816B: 9D 48 04  STA ram_0448,X
C - - - - - 0x01017E 04:816E: BD 18 04  LDA ram_animation_cnt,X     ; including ram_0428_unk
C - - - - - 0x010181 04:8171: 29 7F     AND #$7F
C - - - - - 0x010183 04:8173: FE 18 04  INC ram_animation_cnt,X     ; including ram_0428_unk
C - - - - - 0x010186 04:8176: 88        DEY ; 00
C - - - - - 0x010187 04:8177: D1 00     CMP (ram_0000),Y
C - - - - - 0x010189 04:8179: D0 05     BNE bra_8180
C - - - - - 0x01018B 04:817B: A9 00     LDA #$00
C - - - - - 0x01018D 04:817D: 9D 18 04  STA ram_animation_cnt,X     ; including ram_0428_unk
bra_8180:
C - - - - - 0x010190 04:8180: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x010193 04:8183: 10 3B     BPL bra_81C0_RTS
C - - - - - 0x010195 04:8185: E0 00     CPX #$00
C - - - - - 0x010197 04:8187: D0 0A     BNE bra_8193
C - - - - - 0x010199 04:8189: A5 3F     LDA ram_003F_timer_00_60
C - - - - - 0x01019B 04:818B: F0 06     BEQ bra_8193
C - - - - - 0x01019D 04:818D: 4A        LSR
C - - - - - 0x01019E 04:818E: 4A        LSR
C - - - - - 0x01019F 04:818F: 29 01     AND #$01
C - - - - - 0x0101A1 04:8191: D0 2D     BNE bra_81C0_RTS
bra_8193:
; bzk bug maybe, refs to 0310-0327, should be 0310-031F only?
C - - - - - 0x0101A3 04:8193: BD 10 03  LDA ram_obj_id,X
C - - - - - 0x0101A6 04:8196: C9 02     CMP #con_obj_id_enemy_inside_bubble
C - - - - - 0x0101A8 04:8198: D0 0F     BNE bra_81A9
C - - - - - 0x0101AA 04:819A: BD 80 04  LDA ram_0480_obj,X
C - - - - - 0x0101AD 04:819D: F0 0A     BEQ bra_81A9
C - - - - - 0x0101AF 04:819F: C9 3C     CMP #$3C
C - - - - - 0x0101B1 04:81A1: B0 06     BCS bra_81A9
C - - - - - 0x0101B3 04:81A3: 4A        LSR
C - - - - - 0x0101B4 04:81A4: 4A        LSR
C - - - - - 0x0101B5 04:81A5: 29 01     AND #$01
C - - - - - 0x0101B7 04:81A7: D0 17     BNE bra_81C0_RTS
bra_81A9:
C - - - - - 0x0101B9 04:81A9: BD A0 04  LDA ram_04A0_obj,X
C - - - - - 0x0101BC 04:81AC: 10 06     BPL bra_81B4
C - - - - - 0x0101BE 04:81AE: 4A        LSR
C - - - - - 0x0101BF 04:81AF: 4A        LSR
C - - - - - 0x0101C0 04:81B0: 29 01     AND #$01
C - - - - - 0x0101C2 04:81B2: D0 0C     BNE bra_81C0_RTS
bra_81B4:
C - - - - - 0x0101C4 04:81B4: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x0101C7 04:81B7: 29 04     AND #$04
C - - - - - 0x0101C9 04:81B9: D0 05     BNE bra_81C0_RTS
C - - - - - 0x0101CB 04:81BB: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x0101CE 04:81BE: 30 01     BMI bra_81C1
bra_81C0_RTS:
C - - - - - 0x0101D0 04:81C0: 60        RTS
bra_81C1:
C - - - - - 0x0101D1 04:81C1: BD 18 04  LDA ram_animation_cnt,X     ; including ram_0428_unk
C - - - - - 0x0101D4 04:81C4: 29 7F     AND #$7F
C - - - - - 0x0101D6 04:81C6: 18        CLC
C - - - - - 0x0101D7 04:81C7: 69 02     ADC #$02
C - - - - - 0x0101D9 04:81C9: A8        TAY
C - - - - - 0x0101DA 04:81CA: B1 00     LDA (ram_0000),Y
C - - - - - 0x0101DC 04:81CC: D0 14     BNE bra_81E2
; 00
C - - - - - 0x0101DE 04:81CE: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x0101E1 04:81D1: 9D A0 04  STA ram_04A0_obj,X
C - - - - - 0x0101E4 04:81D4: A9 FF     LDA #$FF
C - - - - - 0x0101E6 04:81D6: 9D E0 03  STA ram_03E0_obj,X
C - - - - - 0x0101E9 04:81D9: E4 3A     CPX ram_003A
C - - - - - 0x0101EB 04:81DB: D0 04     BNE bra_81E1_RTS
C - - - - - 0x0101ED 04:81DD: A9 00     LDA #$00
C - - - - - 0x0101EF 04:81DF: 85 3A     STA ram_003A
bra_81E1_RTS:
C - - - - - 0x0101F1 04:81E1: 60        RTS
bra_81E2:
C - - - - - 0x0101F2 04:81E2: A8        TAY
C - - - - - 0x0101F3 04:81E3: B9 BB 92  LDA tbl_92BB_lo,Y
C - - - - - 0x0101F6 04:81E6: 85 02     STA ram_0002
C - - - - - 0x0101F8 04:81E8: B9 B6 93  LDA tbl_93B6_hi,Y
C - - - - - 0x0101FB 04:81EB: 85 03     STA ram_0003
C - - - - - 0x0101FD 04:81ED: A0 00     LDY #$00
C - - - - - 0x0101FF 04:81EF: B1 02     LDA (ram_0002),Y
C - - - - - 0x010201 04:81F1: 85 04     STA ram_0004
C - - - - - 0x010203 04:81F3: C8        INY ; 01
C - - - - - 0x010204 04:81F4: B1 02     LDA (ram_0002),Y
C - - - - - 0x010206 04:81F6: 18        CLC
C - - - - - 0x010207 04:81F7: 65 11     ADC ram_0011
C - - - - - 0x010209 04:81F9: 48        PHA
C - - - - - 0x01020A 04:81FA: BD 00 04  LDA ram_0400_obj,X
C - - - - - 0x01020D 04:81FD: 29 20     AND #$20
C - - - - - 0x01020F 04:81FF: 85 11     STA ram_0011
C - - - - - 0x010211 04:8201: 68        PLA
C - - - - - 0x010212 04:8202: AA        TAX
C - - - - - 0x010213 04:8203: BD 1D A3  LDA tbl_A31D_lo,X
C - - - - - 0x010216 04:8206: 38        SEC
C - - - - - 0x010217 04:8207: E9 02     SBC #< $0002
C - - - - - 0x010219 04:8209: 85 05     STA ram_0005
C - - - - - 0x01021B 04:820B: BD D5 A3  LDA tbl_A3D5_hi,X
C - - - - - 0x01021E 04:820E: E9 00     SBC #> $0002
C - - - - - 0x010220 04:8210: 85 06     STA ram_0006
C - - - - - 0x010222 04:8212: A6 97     LDX ram_oam_index
C - - - - - 0x010224 04:8214: F0 40     BEQ bra_8256_RTS
bra_8216_loop:
C - - - - - 0x010226 04:8216: C8        INY
C - - - - - 0x010227 04:8217: B1 02     LDA (ram_0002),Y
C - - - - - 0x010229 04:8219: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x01022C 04:821C: A5 12     LDA ram_0012
C - - - - - 0x01022E 04:821E: 18        CLC
C - - - - - 0x01022F 04:821F: 71 05     ADC (ram_0005),Y
C - - - - - 0x010231 04:8221: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x010234 04:8224: B1 05     LDA (ram_0005),Y
C - - - - - 0x010236 04:8226: 30 04     BMI bra_822C
C - - - - - 0x010238 04:8228: 90 04     BCC bra_822E
- - - - - - 0x01023A 04:822A: B0 2B     BCS bra_8257    ; jmp
bra_822C:
C - - - - - 0x01023C 04:822C: 90 29     BCC bra_8257
bra_822E:
C - - - - - 0x01023E 04:822E: C8        INY
C - - - - - 0x01023F 04:822F: B1 02     LDA (ram_0002),Y
C - - - - - 0x010241 04:8231: 45 10     EOR ram_0010
C - - - - - 0x010243 04:8233: 05 11     ORA ram_0011
C - - - - - 0x010245 04:8235: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x010248 04:8238: A5 13     LDA ram_0013
C - - - - - 0x01024A 04:823A: 18        CLC
C - - - - - 0x01024B 04:823B: 71 05     ADC (ram_0005),Y
C - - - - - 0x01024D 04:823D: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x010250 04:8240: B1 05     LDA (ram_0005),Y
C - - - - - 0x010252 04:8242: 30 04     BMI bra_8248
C - - - - - 0x010254 04:8244: 90 04     BCC bra_824A
C - - - - - 0x010256 04:8246: B0 10     BCS bra_8258   ; jmp
bra_8248:
C - - - - - 0x010258 04:8248: 90 0E     BCC bra_8258
bra_824A:
C - - - - - 0x01025A 04:824A: E8        INX
C - - - - - 0x01025B 04:824B: E8        INX
C - - - - - 0x01025C 04:824C: E8        INX
C - - - - - 0x01025D 04:824D: E8        INX
C - - - - - 0x01025E 04:824E: 86 97     STX ram_oam_index
C - - - - - 0x010260 04:8250: F0 04     BEQ bra_8256_RTS
bra_8252:
C - - - - - 0x010262 04:8252: C6 04     DEC ram_0004
C - - - - - 0x010264 04:8254: 10 C0     BPL bra_8216_loop
bra_8256_RTS:
C - - - - - 0x010266 04:8256: 60        RTS
bra_8257:
C - - - - - 0x010267 04:8257: C8        INY
bra_8258:
C - - - - - 0x010268 04:8258: A9 F8     LDA #$F8
C - - - - - 0x01026A 04:825A: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x01026D 04:825D: D0 F3     BNE bra_8252   ; jmp



_off001_825F_01:
_off001_825F_02:
- D 0 - I - 0x01026F 04:825F: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x010270 04:8260: 00        .byte $00   ; index for YX data
- D 0 - I - 0x010271 04:8261: 0E        .byte $0E, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010273 04:8263: 0F        .byte $0F, $00   ; 01
- D 0 - I - 0x010275 04:8265: 10        .byte $10, $00   ; 02
- D 0 - I - 0x010277 04:8267: 11        .byte $11, $00   ; 03
- D 0 - I - 0x010279 04:8269: 01        .byte $01, $00   ; 04
- D 0 - I - 0x01027B 04:826B: 02        .byte $02, $00   ; 05
- D 0 - I - 0x01027D 04:826D: 03        .byte $03, $00   ; 06
- D 0 - I - 0x01027F 04:826F: 04        .byte $04, $00   ; 07
- D 0 - I - 0x010281 04:8271: 05        .byte $05, $00   ; 08
- D 0 - I - 0x010283 04:8273: 18        .byte $18, $01   ; 09
- D 0 - I - 0x010285 04:8275: 19        .byte $19, $01   ; 0A
- D 0 - I - 0x010287 04:8277: 1A        .byte $1A, $01   ; 0B



_off001_8279_03:
- D 0 - I - 0x010289 04:8279: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x01028A 04:827A: 02        .byte $02   ; index for YX data
- D 0 - I - 0x01028B 04:827B: 0E        .byte $0E, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x01028D 04:827D: 12        .byte $12, $00   ; 01
- D 0 - I - 0x01028F 04:827F: 13        .byte $13, $00   ; 02
- D 0 - I - 0x010291 04:8281: 14        .byte $14, $00   ; 03
- D 0 - I - 0x010293 04:8283: 01        .byte $01, $00   ; 04
- D 0 - I - 0x010295 04:8285: 06        .byte $06, $00   ; 05
- D 0 - I - 0x010297 04:8287: 07        .byte $07, $00   ; 06
- D 0 - I - 0x010299 04:8289: 08        .byte $08, $00   ; 07
- D 0 - I - 0x01029B 04:828B: 09        .byte $09, $00   ; 08
- D 0 - I - 0x01029D 04:828D: 1B        .byte $1B, $01   ; 09
- D 0 - I - 0x01029F 04:828F: 1C        .byte $1C, $01   ; 0A
- D 0 - I - 0x0102A1 04:8291: 1D        .byte $1D, $01   ; 0B



_off001_8293_04:
- D 0 - I - 0x0102A3 04:8293: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x0102A4 04:8294: 04        .byte $04   ; index for YX data
- D 0 - I - 0x0102A5 04:8295: 0E        .byte $0E, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0102A7 04:8297: 15        .byte $15, $00   ; 01
- D 0 - I - 0x0102A9 04:8299: 16        .byte $16, $00   ; 02
- D 0 - I - 0x0102AB 04:829B: 17        .byte $17, $00   ; 03
- D 0 - I - 0x0102AD 04:829D: 01        .byte $01, $00   ; 04
- D 0 - I - 0x0102AF 04:829F: 0A        .byte $0A, $00   ; 05
- D 0 - I - 0x0102B1 04:82A1: 0B        .byte $0B, $00   ; 06
- D 0 - I - 0x0102B3 04:82A3: 0C        .byte $0C, $00   ; 07
- D 0 - I - 0x0102B5 04:82A5: 0D        .byte $0D, $00   ; 08
- D 0 - I - 0x0102B7 04:82A7: 1B        .byte $1B, $01   ; 09
- D 0 - I - 0x0102B9 04:82A9: 1E        .byte $1E, $01   ; 0A
- D 0 - I - 0x0102BB 04:82AB: 1F        .byte $1F, $01   ; 0B



_off001_82AD_05:
- D 0 - I - 0x0102BD 04:82AD: 09        .byte $09   ; spr counter
- D 0 - I - 0x0102BE 04:82AE: 06        .byte $06   ; index for YX data
- D 0 - I - 0x0102BF 04:82AF: 27        .byte $27, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0102C1 04:82B1: 28        .byte $28, $00   ; 01
- D 0 - I - 0x0102C3 04:82B3: 01        .byte $01, $00   ; 02
- D 0 - I - 0x0102C5 04:82B5: 02        .byte $02, $00   ; 03
- D 0 - I - 0x0102C7 04:82B7: 03        .byte $03, $00   ; 04
- D 0 - I - 0x0102C9 04:82B9: 20        .byte $20, $00   ; 05
- D 0 - I - 0x0102CB 04:82BB: 5C        .byte $5C, $00   ; 06
- D 0 - I - 0x0102CD 04:82BD: 05        .byte $05, $00   ; 07
- D 0 - I - 0x0102CF 04:82BF: 23        .byte $23, $01   ; 08
- D 0 - I - 0x0102D1 04:82C1: 1A        .byte $1A, $01   ; 09



_off001_82C3_06:
- D 0 - I - 0x0102D3 04:82C3: 09        .byte $09   ; spr counter
- D 0 - I - 0x0102D4 04:82C4: 08        .byte $08   ; index for YX data
- D 0 - I - 0x0102D5 04:82C5: 2A        .byte $2A, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0102D7 04:82C7: 2B        .byte $2B, $00   ; 01
- D 0 - I - 0x0102D9 04:82C9: 01        .byte $01, $00   ; 02
- D 0 - I - 0x0102DB 04:82CB: 06        .byte $06, $00   ; 03
- D 0 - I - 0x0102DD 04:82CD: 07        .byte $07, $00   ; 04
- D 0 - I - 0x0102DF 04:82CF: 26        .byte $26, $00   ; 05
- D 0 - I - 0x0102E1 04:82D1: 6B        .byte $6B, $00   ; 06
- D 0 - I - 0x0102E3 04:82D3: 09        .byte $09, $00   ; 07
- D 0 - I - 0x0102E5 04:82D5: 24        .byte $24, $01   ; 08
- D 0 - I - 0x0102E7 04:82D7: 1D        .byte $1D, $01   ; 09



_off001_82D9_07:
- D 0 - I - 0x0102E9 04:82D9: 09        .byte $09   ; spr counter
- D 0 - I - 0x0102EA 04:82DA: 06        .byte $06   ; index for YX data
- D 0 - I - 0x0102EB 04:82DB: 27        .byte $27, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0102ED 04:82DD: 28        .byte $28, $00   ; 01
- D 0 - I - 0x0102EF 04:82DF: 01        .byte $01, $00   ; 02
- D 0 - I - 0x0102F1 04:82E1: 0A        .byte $0A, $00   ; 03
- D 0 - I - 0x0102F3 04:82E3: 0B        .byte $0B, $00   ; 04
- D 0 - I - 0x0102F5 04:82E5: 6C        .byte $6C, $00   ; 05
- D 0 - I - 0x0102F7 04:82E7: 6D        .byte $6D, $00   ; 06
- D 0 - I - 0x0102F9 04:82E9: 0D        .byte $0D, $00   ; 07
- D 0 - I - 0x0102FB 04:82EB: 23        .byte $23, $01   ; 08
- D 0 - I - 0x0102FD 04:82ED: 1A        .byte $1A, $01   ; 09



_off001_82EF_08:
- D 0 - I - 0x0102FF 04:82EF: 0A        .byte $0A   ; spr counter
- D 0 - I - 0x010300 04:82F0: 0A        .byte $0A   ; index for YX data
- D 0 - I - 0x010301 04:82F1: 2C        .byte $2C, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010303 04:82F3: 2D        .byte $2D, $00   ; 01
- D 0 - I - 0x010305 04:82F5: 2E        .byte $2E, $00   ; 02
- D 0 - I - 0x010307 04:82F7: 2F        .byte $2F, $00   ; 03
- D 0 - I - 0x010309 04:82F9: 30        .byte $30, $00   ; 04
- D 0 - I - 0x01030B 04:82FB: 31        .byte $31, $00   ; 05
- D 0 - I - 0x01030D 04:82FD: 32        .byte $32, $00   ; 06
- D 0 - I - 0x01030F 04:82FF: 33        .byte $33, $00   ; 07
- D 0 - I - 0x010311 04:8301: 34        .byte $34, $00   ; 08
- D 0 - I - 0x010313 04:8303: 19        .byte $19, $01   ; 09
- D 0 - I - 0x010315 04:8305: 1F        .byte $1F, $81   ; 0A



_off001_8307_09:
- D 0 - I - 0x010317 04:8307: 0A        .byte $0A   ; spr counter
- D 0 - I - 0x010318 04:8308: 0C        .byte $0C   ; index for YX data
- D 0 - I - 0x010319 04:8309: 15        .byte $15, $40   ; 00 spr_T, spr_A
- D 0 - I - 0x01031B 04:830B: 0E        .byte $0E, $40   ; 01
- D 0 - I - 0x01031D 04:830D: 17        .byte $17, $40   ; 02
- D 0 - I - 0x01031F 04:830F: 35        .byte $35, $00   ; 03
- D 0 - I - 0x010321 04:8311: 03        .byte $03, $40   ; 04
- D 0 - I - 0x010323 04:8313: 02        .byte $02, $40   ; 05
- D 0 - I - 0x010325 04:8315: 01        .byte $01, $40   ; 06
- D 0 - I - 0x010327 04:8317: 05        .byte $05, $40   ; 07
- D 0 - I - 0x010329 04:8319: 04        .byte $04, $40   ; 08
- D 0 - I - 0x01032B 04:831B: 1F        .byte $1F, $01   ; 09
- D 0 - I - 0x01032D 04:831D: 1B        .byte $1B, $01   ; 0A



_off001_831F_0A:
- D 0 - I - 0x01032F 04:831F: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x010330 04:8320: 0E        .byte $0E   ; index for YX data
- D 0 - I - 0x010331 04:8321: 3C        .byte $3C, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010333 04:8323: 3D        .byte $3D, $00   ; 01
- D 0 - I - 0x010335 04:8325: 3E        .byte $3E, $00   ; 02
- D 0 - I - 0x010337 04:8327: 3F        .byte $3F, $00   ; 03
- D 0 - I - 0x010339 04:8329: 36        .byte $36, $00   ; 04
- D 0 - I - 0x01033B 04:832B: 37        .byte $37, $00   ; 05
- D 0 - I - 0x01033D 04:832D: 38        .byte $38, $00   ; 06
- D 0 - I - 0x01033F 04:832F: 39        .byte $39, $00   ; 07
- D 0 - I - 0x010341 04:8331: 3A        .byte $3A, $00   ; 08
- D 0 - I - 0x010343 04:8333: 3B        .byte $3B, $00   ; 09
- D 0 - I - 0x010345 04:8335: 40        .byte $40, $01   ; 0A
- D 0 - I - 0x010347 04:8337: 1F        .byte $1F, $01   ; 0B



_off001_8339_0B:
- - - - - - 0x010349 04:8339: 0B        .byte $0B   ; spr counter
- - - - - - 0x01034A 04:833A: 10        .byte $10   ; index for YX data
- - - - - - 0x01034B 04:833B: 25        .byte $25, $00   ; 00 spr_T, spr_A
- - - - - - 0x01034D 04:833D: 29        .byte $29, $00   ; 01
- - - - - - 0x01034F 04:833F: 27        .byte $27, $00   ; 02
- - - - - - 0x010351 04:8341: 28        .byte $28, $00   ; 03
- - - - - - 0x010353 04:8343: 36        .byte $36, $00   ; 04
- - - - - - 0x010355 04:8345: 37        .byte $37, $00   ; 05
- - - - - - 0x010357 04:8347: 38        .byte $38, $00   ; 06
- - - - - - 0x010359 04:8349: 39        .byte $39, $00   ; 07
- - - - - - 0x01035B 04:834B: 3A        .byte $3A, $00   ; 08
- - - - - - 0x01035D 04:834D: 3B        .byte $3B, $00   ; 09
- - - - - - 0x01035F 04:834F: 24        .byte $24, $01   ; 0A
- - - - - - 0x010361 04:8351: 1D        .byte $1D, $01   ; 0B



_off001_8353_0C:
- - - - - - 0x010363 04:8353: 0B        .byte $0B   ; spr counter
- - - - - - 0x010364 04:8354: 12        .byte $12   ; index for YX data
- - - - - - 0x010365 04:8355: 41        .byte $41, $01   ; 00 spr_T, spr_A
- - - - - - 0x010367 04:8357: 1F        .byte $1F, $81   ; 01
- - - - - - 0x010369 04:8359: 25        .byte $25, $00   ; 02
- - - - - - 0x01036B 04:835B: 47        .byte $47, $00   ; 03
- - - - - - 0x01036D 04:835D: 48        .byte $48, $00   ; 04
- - - - - - 0x01036F 04:835F: 49        .byte $49, $00   ; 05
- - - - - - 0x010371 04:8361: 01        .byte $01, $00   ; 06
- - - - - - 0x010373 04:8363: 42        .byte $42, $00   ; 07
- - - - - - 0x010375 04:8365: 43        .byte $43, $00   ; 08
- - - - - - 0x010377 04:8367: 44        .byte $44, $00   ; 09
- - - - - - 0x010379 04:8369: 45        .byte $45, $00   ; 0A
- - - - - - 0x01037B 04:836B: 46        .byte $46, $00   ; 0B



_off001_836D_0D:
- - - - - - 0x01037D 04:836D: 0C        .byte $0C   ; spr counter
- - - - - - 0x01037E 04:836E: 30        .byte $30   ; index for YX data
- - - - - - 0x01037F 04:836F: 25        .byte $25, $00   ; 00 spr_T, spr_A
- - - - - - 0x010381 04:8371: 47        .byte $47, $00   ; 01
- - - - - - 0x010383 04:8373: 4A        .byte $4A, $00   ; 02
- - - - - - 0x010385 04:8375: 49        .byte $49, $00   ; 03
- - - - - - 0x010387 04:8377: 01        .byte $01, $00   ; 04
- - - - - - 0x010389 04:8379: 0A        .byte $0A, $00   ; 05
- - - - - - 0x01038B 04:837B: 0B        .byte $0B, $00   ; 06
- - - - - - 0x01038D 04:837D: 22        .byte $22, $00   ; 07
- - - - - - 0x01038F 04:837F: 0C        .byte $0C, $00   ; 08
- - - - - - 0x010391 04:8381: 0D        .byte $0D, $00   ; 09
- - - - - - 0x010393 04:8383: 4B        .byte $4B, $01   ; 0A
- - - - - - 0x010395 04:8385: 4D        .byte $4D, $01   ; 0B
- - - - - - 0x010397 04:8387: 4C        .byte $4C, $01   ; 0C



_off001_8389_0E:
- D 0 - I - 0x010399 04:8389: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x01039A 04:838A: 16        .byte $16   ; index for YX data
- D 0 - I - 0x01039B 04:838B: 25        .byte $25, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x01039D 04:838D: 47        .byte $47, $00   ; 01
- D 0 - I - 0x01039F 04:838F: 48        .byte $48, $00   ; 02
- D 0 - I - 0x0103A1 04:8391: 49        .byte $49, $00   ; 03
- D 0 - I - 0x0103A3 04:8393: 01        .byte $01, $00   ; 04
- D 0 - I - 0x0103A5 04:8395: 42        .byte $42, $00   ; 05
- D 0 - I - 0x0103A7 04:8397: 43        .byte $43, $00   ; 06
- D 0 - I - 0x0103A9 04:8399: 44        .byte $44, $00   ; 07
- D 0 - I - 0x0103AB 04:839B: 45        .byte $45, $00   ; 08
- D 0 - I - 0x0103AD 04:839D: 46        .byte $46, $00   ; 09
- D 0 - I - 0x0103AF 04:839F: 23        .byte $23, $01   ; 0A
- D 0 - I - 0x0103B1 04:83A1: 1A        .byte $1A, $01   ; 0B



_off001_83A3_0F:
- D 0 - I - 0x0103B3 04:83A3: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x0103B4 04:83A4: 18        .byte $18   ; index for YX data
- D 0 - I - 0x0103B5 04:83A5: 25        .byte $25, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0103B7 04:83A7: 47        .byte $47, $00   ; 01
- D 0 - I - 0x0103B9 04:83A9: 4A        .byte $4A, $00   ; 02
- D 0 - I - 0x0103BB 04:83AB: 49        .byte $49, $00   ; 03
- D 0 - I - 0x0103BD 04:83AD: 01        .byte $01, $00   ; 04
- D 0 - I - 0x0103BF 04:83AF: 0A        .byte $0A, $00   ; 05
- D 0 - I - 0x0103C1 04:83B1: 0B        .byte $0B, $00   ; 06
- D 0 - I - 0x0103C3 04:83B3: 22        .byte $22, $00   ; 07
- D 0 - I - 0x0103C5 04:83B5: 0C        .byte $0C, $00   ; 08
- D 0 - I - 0x0103C7 04:83B7: 0D        .byte $0D, $00   ; 09
- D 0 - I - 0x0103C9 04:83B9: 24        .byte $24, $01   ; 0A
- D 0 - I - 0x0103CB 04:83BB: 1D        .byte $1D, $01   ; 0B



_off001_83BD_10:
- D 0 - I - 0x0103CD 04:83BD: 09        .byte $09   ; spr counter
- D 0 - I - 0x0103CE 04:83BE: 1A        .byte $1A   ; index for YX data
- D 0 - I - 0x0103CF 04:83BF: 2C        .byte $2C, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0103D1 04:83C1: 2D        .byte $2D, $00   ; 01
- D 0 - I - 0x0103D3 04:83C3: 2E        .byte $2E, $00   ; 02
- D 0 - I - 0x0103D5 04:83C5: 2F        .byte $2F, $00   ; 03
- D 0 - I - 0x0103D7 04:83C7: 30        .byte $30, $00   ; 04
- D 0 - I - 0x0103D9 04:83C9: 31        .byte $31, $00   ; 05
- D 0 - I - 0x0103DB 04:83CB: 4E        .byte $4E, $00   ; 06
- D 0 - I - 0x0103DD 04:83CD: 4F        .byte $4F, $00   ; 07
- D 0 - I - 0x0103DF 04:83CF: 34        .byte $34, $00   ; 08
- D 0 - I - 0x0103E1 04:83D1: 1A        .byte $1A, $81   ; 09



_off001_83D3_11:
- D 0 - I - 0x0103E3 04:83D3: 0A        .byte $0A   ; spr counter
- D 0 - I - 0x0103E4 04:83D4: 1C        .byte $1C   ; index for YX data
- D 0 - I - 0x0103E5 04:83D5: 2C        .byte $2C, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0103E7 04:83D7: 2D        .byte $2D, $00   ; 01
- D 0 - I - 0x0103E9 04:83D9: 2E        .byte $2E, $00   ; 02
- D 0 - I - 0x0103EB 04:83DB: 2F        .byte $2F, $00   ; 03
- D 0 - I - 0x0103ED 04:83DD: 30        .byte $30, $00   ; 04
- D 0 - I - 0x0103EF 04:83DF: 31        .byte $31, $00   ; 05
- D 0 - I - 0x0103F1 04:83E1: 4E        .byte $4E, $00   ; 06
- D 0 - I - 0x0103F3 04:83E3: 4F        .byte $4F, $00   ; 07
- D 0 - I - 0x0103F5 04:83E5: 34        .byte $34, $00   ; 08
- D 0 - I - 0x0103F7 04:83E7: 24        .byte $24, $81   ; 09
- D 0 - I - 0x0103F9 04:83E9: 1D        .byte $1D, $81   ; 0A



_off001_83EB_12:
- D 0 - I - 0x0103FB 04:83EB: 0C        .byte $0C   ; spr counter
- D 0 - I - 0x0103FC 04:83EC: 1E        .byte $1E   ; index for YX data
- D 0 - I - 0x0103FD 04:83ED: 4D        .byte $4D, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x0103FF 04:83EF: 50        .byte $50, $01   ; 01
- D 0 - I - 0x010401 04:83F1: 18        .byte $18, $41   ; 02
- D 0 - I - 0x010403 04:83F3: 25        .byte $25, $00   ; 03
- D 0 - I - 0x010405 04:83F5: 29        .byte $29, $00   ; 04
- D 0 - I - 0x010407 04:83F7: 2A        .byte $2A, $00   ; 05
- D 0 - I - 0x010409 04:83F9: 2B        .byte $2B, $00   ; 06
- D 0 - I - 0x01040B 04:83FB: 01        .byte $01, $00   ; 07
- D 0 - I - 0x01040D 04:83FD: 06        .byte $06, $00   ; 08
- D 0 - I - 0x01040F 04:83FF: 07        .byte $07, $00   ; 09
- D 0 - I - 0x010411 04:8401: 22        .byte $22, $00   ; 0A
- D 0 - I - 0x010413 04:8403: 08        .byte $08, $00   ; 0B
- D 0 - I - 0x010415 04:8405: 09        .byte $09, $00   ; 0C



_off001_8407_13:
- D 0 - I - 0x010417 04:8407: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x010418 04:8408: 20        .byte $20   ; index for YX data
- D 0 - I - 0x010419 04:8409: 51        .byte $51, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x01041B 04:840B: 52        .byte $52, $01   ; 01
- D 0 - I - 0x01041D 04:840D: 53        .byte $53, $01   ; 02
- D 0 - I - 0x01041F 04:840F: 68        .byte $68, $00   ; 03
- D 0 - I - 0x010421 04:8411: 69        .byte $69, $00   ; 04
- D 0 - I - 0x010423 04:8413: 2B        .byte $2B, $00   ; 05
- D 0 - I - 0x010425 04:8415: 36        .byte $36, $00   ; 06
- D 0 - I - 0x010427 04:8417: 37        .byte $37, $00   ; 07
- D 0 - I - 0x010429 04:8419: 38        .byte $38, $00   ; 08
- D 0 - I - 0x01042B 04:841B: 6E        .byte $6E, $00   ; 09
- D 0 - I - 0x01042D 04:841D: 6F        .byte $6F, $00   ; 0A
- D 0 - I - 0x01042F 04:841F: 3B        .byte $3B, $00   ; 0B



_off001_8421_14:
- D 0 - I - 0x010431 04:8421: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x010432 04:8422: 22        .byte $22   ; index for YX data
- D 0 - I - 0x010433 04:8423: 25        .byte $25, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010435 04:8425: 47        .byte $47, $00   ; 01
- D 0 - I - 0x010437 04:8427: 48        .byte $48, $00   ; 02
- D 0 - I - 0x010439 04:8429: 49        .byte $49, $00   ; 03
- D 0 - I - 0x01043B 04:842B: 01        .byte $01, $00   ; 04
- D 0 - I - 0x01043D 04:842D: 42        .byte $42, $00   ; 05
- D 0 - I - 0x01043F 04:842F: 43        .byte $43, $00   ; 06
- D 0 - I - 0x010441 04:8431: 44        .byte $44, $00   ; 07
- D 0 - I - 0x010443 04:8433: 45        .byte $45, $00   ; 08
- D 0 - I - 0x010445 04:8435: 46        .byte $46, $00   ; 09
- D 0 - I - 0x010447 04:8437: 23        .byte $23, $01   ; 0A
- D 0 - I - 0x010449 04:8439: 1A        .byte $1A, $01   ; 0B



_off001_843B_15:
- D 0 - I - 0x01044B 04:843B: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x01044C 04:843C: 24        .byte $24   ; index for YX data
- D 0 - I - 0x01044D 04:843D: 25        .byte $25, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x01044F 04:843F: 47        .byte $47, $00   ; 01
- D 0 - I - 0x010451 04:8441: 4A        .byte $4A, $00   ; 02
- D 0 - I - 0x010453 04:8443: 49        .byte $49, $00   ; 03
- D 0 - I - 0x010455 04:8445: 01        .byte $01, $00   ; 04
- D 0 - I - 0x010457 04:8447: 0A        .byte $0A, $00   ; 05
- D 0 - I - 0x010459 04:8449: 0B        .byte $0B, $00   ; 06
- D 0 - I - 0x01045B 04:844B: 22        .byte $22, $00   ; 07
- D 0 - I - 0x01045D 04:844D: 0C        .byte $0C, $00   ; 08
- D 0 - I - 0x01045F 04:844F: 0D        .byte $0D, $00   ; 09
- D 0 - I - 0x010461 04:8451: 24        .byte $24, $01   ; 0A
- D 0 - I - 0x010463 04:8453: 1D        .byte $1D, $01   ; 0B



_off001_8455_16:
- D 0 - I - 0x010465 04:8455: 01        .byte $01   ; spr counter
- D 0 - I - 0x010466 04:8456: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010467 04:8457: 80        .byte $80, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010469 04:8459: 80        .byte $80, $41   ; 01



_off001_845B_17:
- D 0 - I - 0x01046B 04:845B: 01        .byte $01   ; spr counter
- D 0 - I - 0x01046C 04:845C: 26        .byte $26   ; index for YX data
- D 0 - I - 0x01046D 04:845D: 81        .byte $81, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x01046F 04:845F: 81        .byte $81, $41   ; 01



_off001_8461_18:
- D 0 - I - 0x010471 04:8461: 01        .byte $01   ; spr counter
- D 0 - I - 0x010472 04:8462: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010473 04:8463: 82        .byte $82, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010475 04:8465: 82        .byte $82, $41   ; 01



_off001_8467_19:
- D 0 - I - 0x010477 04:8467: 01        .byte $01   ; spr counter
- D 0 - I - 0x010478 04:8468: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010479 04:8469: 83        .byte $83, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x01047B 04:846B: 83        .byte $83, $41   ; 01



_off001_846D_1A:
- D 0 - I - 0x01047D 04:846D: 00        .byte $00   ; spr counter
- D 0 - I - 0x01047E 04:846E: 14        .byte $14   ; index for YX data
- D 0 - I - 0x01047F 04:846F: 84        .byte $84, $01   ; 00 spr_T, spr_A



_off001_8471_1B:
- D 0 - I - 0x010481 04:8471: 00        .byte $00   ; spr counter
- D 0 - I - 0x010482 04:8472: 14        .byte $14   ; index for YX data
- D 0 - I - 0x010483 04:8473: 85        .byte $85, $01   ; 00 spr_T, spr_A



_off001_8475_1C:
- D 0 - I - 0x010485 04:8475: 03        .byte $03   ; spr counter
- D 0 - I - 0x010486 04:8476: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010487 04:8477: 86        .byte $86, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010489 04:8479: 87        .byte $87, $01   ; 01
- D 0 - I - 0x01048B 04:847B: 87        .byte $87, $C1   ; 02
- D 0 - I - 0x01048D 04:847D: 87        .byte $87, $81   ; 03



_off001_847F_1D:
- D 0 - I - 0x01048F 04:847F: 02        .byte $02   ; spr counter
- D 0 - I - 0x010490 04:8480: 94        .byte $94   ; index for YX data
- D 0 - I - 0x010491 04:8481: 85        .byte $85, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010493 04:8483: 85        .byte $85, $01   ; 01
- D 0 - I - 0x010495 04:8485: 85        .byte $85, $01   ; 02



_off001_8487_1E:
- D 0 - I - 0x010497 04:8487: 02        .byte $02   ; spr counter
- D 0 - I - 0x010498 04:8488: 95        .byte $95   ; index for YX data
- D 0 - I - 0x010499 04:8489: 85        .byte $85, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x01049B 04:848B: 85        .byte $85, $01   ; 01
- D 0 - I - 0x01049D 04:848D: 85        .byte $85, $01   ; 02



_off001_848F_1F:
- D 0 - I - 0x01049F 04:848F: 03        .byte $03   ; spr counter
- D 0 - I - 0x0104A0 04:8490: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0104A1 04:8491: A2        .byte $A2, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0104A3 04:8493: A2        .byte $A2, $40   ; 01
- D 0 - I - 0x0104A5 04:8495: A2        .byte $A2, $80   ; 02
- D 0 - I - 0x0104A7 04:8497: A2        .byte $A2, $C0   ; 03



_off001_8499_20:
- D 0 - I - 0x0104A9 04:8499: 03        .byte $03   ; spr counter
- D 0 - I - 0x0104AA 04:849A: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0104AB 04:849B: A3        .byte $A3, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0104AD 04:849D: A3        .byte $A3, $40   ; 01
- D 0 - I - 0x0104AF 04:849F: A3        .byte $A3, $80   ; 02
- D 0 - I - 0x0104B1 04:84A1: A3        .byte $A3, $C0   ; 03



_off001_84A3_21:
- D 0 - I - 0x0104B3 04:84A3: 03        .byte $03   ; spr counter
- D 0 - I - 0x0104B4 04:84A4: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0104B5 04:84A5: A4        .byte $A4, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0104B7 04:84A7: A4        .byte $A4, $40   ; 01
- D 0 - I - 0x0104B9 04:84A9: A4        .byte $A4, $80   ; 02
- D 0 - I - 0x0104BB 04:84AB: A4        .byte $A4, $C0   ; 03



_off001_84AD_22:
- D 0 - I - 0x0104BD 04:84AD: 03        .byte $03   ; spr counter
- D 0 - I - 0x0104BE 04:84AE: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0104BF 04:84AF: A5        .byte $A5, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0104C1 04:84B1: A5        .byte $A5, $40   ; 01
- D 0 - I - 0x0104C3 04:84B3: A5        .byte $A5, $80   ; 02
- D 0 - I - 0x0104C5 04:84B5: A5        .byte $A5, $C0   ; 03



_off001_84B7_23:
- D 0 - I - 0x0104C7 04:84B7: 03        .byte $03   ; spr counter
- D 0 - I - 0x0104C8 04:84B8: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0104C9 04:84B9: A2        .byte $A2, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x0104CB 04:84BB: A2        .byte $A2, $41   ; 01
- D 0 - I - 0x0104CD 04:84BD: A2        .byte $A2, $81   ; 02
- D 0 - I - 0x0104CF 04:84BF: A2        .byte $A2, $C1   ; 03



_off001_84C1_24:
- D 0 - I - 0x0104D1 04:84C1: 03        .byte $03   ; spr counter
- D 0 - I - 0x0104D2 04:84C2: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0104D3 04:84C3: A3        .byte $A3, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x0104D5 04:84C5: A3        .byte $A3, $41   ; 01
- D 0 - I - 0x0104D7 04:84C7: A3        .byte $A3, $81   ; 02
- D 0 - I - 0x0104D9 04:84C9: A3        .byte $A3, $C1   ; 03



_off001_84CB_25:
- D 0 - I - 0x0104DB 04:84CB: 07        .byte $07   ; spr counter
- D 0 - I - 0x0104DC 04:84CC: 2A        .byte $2A   ; index for YX data
- D 0 - I - 0x0104DD 04:84CD: A3        .byte $A3, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x0104DF 04:84CF: A7        .byte $A7, $01   ; 01
- D 0 - I - 0x0104E1 04:84D1: A3        .byte $A3, $41   ; 02
- D 0 - I - 0x0104E3 04:84D3: A6        .byte $A6, $01   ; 03
- D 0 - I - 0x0104E5 04:84D5: A6        .byte $A6, $41   ; 04
- D 0 - I - 0x0104E7 04:84D7: A3        .byte $A3, $81   ; 05
- D 0 - I - 0x0104E9 04:84D9: A7        .byte $A7, $81   ; 06
- D 0 - I - 0x0104EB 04:84DB: A3        .byte $A3, $C1   ; 07



_off001_84DD_26:
- - - - - - 0x0104ED 04:84DD: 03        .byte $03   ; spr counter
- - - - - - 0x0104EE 04:84DE: B6        .byte $B6   ; index for YX data
- - - - - - 0x0104EF 04:84DF: A5        .byte $A5, $01   ; 00 spr_T, spr_A
- - - - - - 0x0104F1 04:84E1: A5        .byte $A5, $41   ; 01
- - - - - - 0x0104F3 04:84E3: A5        .byte $A5, $81   ; 02
- - - - - - 0x0104F5 04:84E5: A5        .byte $A5, $C1   ; 03



_off001_84E7_27:
- D 0 - I - 0x0104F7 04:84E7: 03        .byte $03   ; spr counter
- D 0 - I - 0x0104F8 04:84E8: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0104F9 04:84E9: A2        .byte $A2, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x0104FB 04:84EB: A2        .byte $A2, $41   ; 01
- D 0 - I - 0x0104FD 04:84ED: A2        .byte $A2, $81   ; 02
- D 0 - I - 0x0104FF 04:84EF: A2        .byte $A2, $C1   ; 03



_off001_84F1_28:
- D 0 - I - 0x010501 04:84F1: 03        .byte $03   ; spr counter
- D 0 - I - 0x010502 04:84F2: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010503 04:84F3: A3        .byte $A3, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010505 04:84F5: A3        .byte $A3, $41   ; 01
- D 0 - I - 0x010507 04:84F7: A3        .byte $A3, $81   ; 02
- D 0 - I - 0x010509 04:84F9: A3        .byte $A3, $C1   ; 03



_off001_84FB_29:
- D 0 - I - 0x01050B 04:84FB: 03        .byte $03   ; spr counter
- D 0 - I - 0x01050C 04:84FC: 26        .byte $26   ; index for YX data
- D 0 - I - 0x01050D 04:84FD: A4        .byte $A4, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x01050F 04:84FF: A4        .byte $A4, $41   ; 01
- D 0 - I - 0x010511 04:8501: A4        .byte $A4, $81   ; 02
- D 0 - I - 0x010513 04:8503: A4        .byte $A4, $C1   ; 03



_off001_8505_2A:
- D 0 - I - 0x010515 04:8505: 03        .byte $03   ; spr counter
- D 0 - I - 0x010516 04:8506: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010517 04:8507: A5        .byte $A5, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010519 04:8509: A5        .byte $A5, $41   ; 01
- D 0 - I - 0x01051B 04:850B: A5        .byte $A5, $81   ; 02
- D 0 - I - 0x01051D 04:850D: A5        .byte $A5, $C1   ; 03



_off001_850F_2B:
- D 0 - I - 0x01051F 04:850F: 03        .byte $03   ; spr counter
- D 0 - I - 0x010520 04:8510: 44        .byte $44   ; index for YX data
- D 0 - I - 0x010521 04:8511: C0        .byte $C0, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x010523 04:8513: C1        .byte $C1, $03   ; 01
- D 0 - I - 0x010525 04:8515: C2        .byte $C2, $03   ; 02
- D 0 - I - 0x010527 04:8517: C3        .byte $C3, $03   ; 03



_off001_8519_2C:
- D 0 - I - 0x010529 04:8519: 03        .byte $03   ; spr counter
- D 0 - I - 0x01052A 04:851A: 26        .byte $26   ; index for YX data
- D 0 - I - 0x01052B 04:851B: C4        .byte $C4, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x01052D 04:851D: C5        .byte $C5, $03   ; 01
- D 0 - I - 0x01052F 04:851F: C6        .byte $C6, $03   ; 02
- D 0 - I - 0x010531 04:8521: C7        .byte $C7, $03   ; 03



_off001_8523_2D:
- D 0 - I - 0x010533 04:8523: 03        .byte $03   ; spr counter
- D 0 - I - 0x010534 04:8524: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010535 04:8525: C8        .byte $C8, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010537 04:8527: C8        .byte $C8, $41   ; 01
- D 0 - I - 0x010539 04:8529: C9        .byte $C9, $01   ; 02
- D 0 - I - 0x01053B 04:852B: C9        .byte $C9, $41   ; 03



_off001_852D_2E:
- D 0 - I - 0x01053D 04:852D: 03        .byte $03   ; spr counter
- D 0 - I - 0x01053E 04:852E: 26        .byte $26   ; index for YX data
- D 0 - I - 0x01053F 04:852F: CA        .byte $CA, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010541 04:8531: CB        .byte $CB, $01   ; 01
- D 0 - I - 0x010543 04:8533: CC        .byte $CC, $01   ; 02
- D 0 - I - 0x010545 04:8535: CD        .byte $CD, $01   ; 03



_off001_8537_2F:
- D 0 - I - 0x010547 04:8537: 03        .byte $03   ; spr counter
- D 0 - I - 0x010548 04:8538: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010549 04:8539: CA        .byte $CA, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x01054B 04:853B: CB        .byte $CB, $02   ; 01
- D 0 - I - 0x01054D 04:853D: CA        .byte $CA, $82   ; 02
- D 0 - I - 0x01054F 04:853F: CB        .byte $CB, $82   ; 03



_off001_8541_30:
- D 0 - I - 0x010551 04:8541: 03        .byte $03   ; spr counter
- D 0 - I - 0x010552 04:8542: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010553 04:8543: CC        .byte $CC, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010555 04:8545: CC        .byte $CC, $42   ; 01
- D 0 - I - 0x010557 04:8547: CD        .byte $CD, $02   ; 02
- D 0 - I - 0x010559 04:8549: CD        .byte $CD, $42   ; 03



_off001_854B_31:
- D 0 - I - 0x01055B 04:854B: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x01055C 04:854C: 7C        .byte $7C   ; index for YX data
- D 0 - I - 0x01055D 04:854D: 0E        .byte $0E, $40   ; 00 spr_T, spr_A
- D 0 - I - 0x01055F 04:854F: 0F        .byte $0F, $40   ; 01
- D 0 - I - 0x010561 04:8551: 10        .byte $10, $40   ; 02
- D 0 - I - 0x010563 04:8553: 11        .byte $11, $40   ; 03
- D 0 - I - 0x010565 04:8555: 01        .byte $01, $40   ; 04
- D 0 - I - 0x010567 04:8557: 02        .byte $02, $40   ; 05
- D 0 - I - 0x010569 04:8559: 03        .byte $03, $40   ; 06
- D 0 - I - 0x01056B 04:855B: 04        .byte $04, $40   ; 07
- D 0 - I - 0x01056D 04:855D: 05        .byte $05, $40   ; 08
- D 0 - I - 0x01056F 04:855F: 18        .byte $18, $41   ; 09
- D 0 - I - 0x010571 04:8561: 19        .byte $19, $41   ; 0A
- D 0 - I - 0x010573 04:8563: 1A        .byte $1A, $41   ; 0B



_off001_8565_32:
- D 0 - I - 0x010575 04:8565: 03        .byte $03   ; spr counter
- D 0 - I - 0x010576 04:8566: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010577 04:8567: DB        .byte $DB, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010579 04:8569: DC        .byte $DC, $02   ; 01
- D 0 - I - 0x01057B 04:856B: DD        .byte $DD, $02   ; 02
- D 0 - I - 0x01057D 04:856D: DE        .byte $DE, $02   ; 



_off001_856F_33:
- D 0 - I - 0x01057F 04:856F: 04        .byte $04   ; spr counter
- D 0 - I - 0x010580 04:8570: 48        .byte $48   ; index for YX data
- D 0 - I - 0x010581 04:8571: D1        .byte $D1, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010583 04:8573: D0        .byte $D0, $00   ; 01
- D 0 - I - 0x010585 04:8575: D2        .byte $D2, $00   ; 02
- D 0 - I - 0x010587 04:8577: D3        .byte $D3, $00   ; 03
- D 0 - I - 0x010589 04:8579: D4        .byte $D4, $00   ; 04



_off001_857B_34:
- D 0 - I - 0x01058B 04:857B: 03        .byte $03   ; spr counter
- D 0 - I - 0x01058C 04:857C: 4A        .byte $4A   ; index for YX data
- D 0 - I - 0x01058D 04:857D: D0        .byte $D0, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x01058F 04:857F: D1        .byte $D1, $00   ; 01
- D 0 - I - 0x010591 04:8581: D5        .byte $D5, $00   ; 02
- D 0 - I - 0x010593 04:8583: D6        .byte $D6, $00   ; 03



_off001_8585_35:
- D 0 - I - 0x010595 04:8585: 02        .byte $02   ; spr counter
- D 0 - I - 0x010596 04:8586: A8        .byte $A8   ; index for YX data
- D 0 - I - 0x010597 04:8587: DF        .byte $DF, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010599 04:8589: D7        .byte $D7, $00   ; 01
- D 0 - I - 0x01059B 04:858B: D8        .byte $D8, $00   ; 02



_off001_858D_36:
- D 0 - I - 0x01059D 04:858D: 03        .byte $03   ; spr counter
- D 0 - I - 0x01059E 04:858E: 26        .byte $26   ; index for YX data
- D 0 - I - 0x01059F 04:858F: D9        .byte $D9, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x0105A1 04:8591: D9        .byte $D9, $41   ; 01
- D 0 - I - 0x0105A3 04:8593: DA        .byte $DA, $01   ; 02
- D 0 - I - 0x0105A5 04:8595: DA        .byte $DA, $41   ; 03



_off001_8597_37:
- D 0 - I - 0x0105A7 04:8597: 06        .byte $06   ; spr counter
- D 0 - I - 0x0105A8 04:8598: 4E        .byte $4E   ; index for YX data
- D 0 - I - 0x0105A9 04:8599: DB        .byte $DB, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x0105AB 04:859B: DC        .byte $DC, $02   ; 01
- D 0 - I - 0x0105AD 04:859D: DD        .byte $DD, $02   ; 02
- D 0 - I - 0x0105AF 04:859F: DE        .byte $DE, $02   ; 03
- D 0 - I - 0x0105B1 04:85A1: D2        .byte $D2, $00   ; 04
- D 0 - I - 0x0105B3 04:85A3: D3        .byte $D3, $00   ; 05
- D 0 - I - 0x0105B5 04:85A5: D4        .byte $D4, $00   ; 06



_off001_85A7_38:
- D 0 - I - 0x0105B7 04:85A7: 05        .byte $05   ; spr counter
- D 0 - I - 0x0105B8 04:85A8: 50        .byte $50   ; index for YX data
- D 0 - I - 0x0105B9 04:85A9: DB        .byte $DB, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x0105BB 04:85AB: DC        .byte $DC, $02   ; 01
- D 0 - I - 0x0105BD 04:85AD: DD        .byte $DD, $02   ; 02
- D 0 - I - 0x0105BF 04:85AF: DE        .byte $DE, $02   ; 03
- D 0 - I - 0x0105C1 04:85B1: D5        .byte $D5, $00   ; 04
- D 0 - I - 0x0105C3 04:85B3: D6        .byte $D6, $00   ; 05



_off001_85B5_39:
- D 0 - I - 0x0105C5 04:85B5: 03        .byte $03   ; spr counter
- D 0 - I - 0x0105C6 04:85B6: 50        .byte $50   ; index for YX data
- D 0 - I - 0x0105C7 04:85B7: A8        .byte $A8, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x0105C9 04:85B9: B1        .byte $B1, $01   ; 01
- D 0 - I - 0x0105CB 04:85BB: B2        .byte $B2, $01   ; 02
- D 0 - I - 0x0105CD 04:85BD: B3        .byte $B3, $01   ; 03



_off001_85BF_3A:
- D 0 - I - 0x0105CF 04:85BF: 03        .byte $03   ; spr counter
- D 0 - I - 0x0105D0 04:85C0: 50        .byte $50   ; index for YX data
- D 0 - I - 0x0105D1 04:85C1: B0        .byte $B0, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x0105D3 04:85C3: A9        .byte $A9, $01   ; 01
- D 0 - I - 0x0105D5 04:85C5: AA        .byte $AA, $01   ; 02
- D 0 - I - 0x0105D7 04:85C7: B3        .byte $B3, $01   ; 03



_off001_85C9_3B:
- D 0 - I - 0x0105D9 04:85C9: 03        .byte $03   ; spr counter
- D 0 - I - 0x0105DA 04:85CA: 50        .byte $50   ; index for YX data
- D 0 - I - 0x0105DB 04:85CB: B0        .byte $B0, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x0105DD 04:85CD: B1        .byte $B1, $01   ; 01
- D 0 - I - 0x0105DF 04:85CF: B2        .byte $B2, $01   ; 02
- D 0 - I - 0x0105E1 04:85D1: AB        .byte $AB, $01   ; 03



_off001_85D3_3C:
- D 0 - I - 0x0105E3 04:85D3: 09        .byte $09   ; spr counter
- D 0 - I - 0x0105E4 04:85D4: 14        .byte $14   ; index for YX data
- D 0 - I - 0x0105E5 04:85D5: D8        .byte $D8, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x0105E7 04:85D7: D6        .byte $D6, $01   ; 01
- D 0 - I - 0x0105E9 04:85D9: D7        .byte $D7, $01   ; 02
- D 0 - I - 0x0105EB 04:85DB: D9        .byte $D9, $01   ; 03
- D 0 - I - 0x0105ED 04:85DD: DA        .byte $DA, $01   ; 04
- D 0 - I - 0x0105EF 04:85DF: DB        .byte $DB, $01   ; 05
- D 0 - I - 0x0105F1 04:85E1: DF        .byte $DF, $01   ; 06
- D 0 - I - 0x0105F3 04:85E3: F0        .byte $F0, $01   ; 07
- D 0 - I - 0x0105F5 04:85E5: F1        .byte $F1, $01   ; 08
- D 0 - I - 0x0105F7 04:85E7: F2        .byte $F2, $01   ; 09



_off001_85E9_3D:
- D 0 - I - 0x0105F9 04:85E9: 08        .byte $08   ; spr counter
- D 0 - I - 0x0105FA 04:85EA: 2A        .byte $2A   ; index for YX data
- D 0 - I - 0x0105FB 04:85EB: F3        .byte $F3, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x0105FD 04:85ED: F4        .byte $F4, $01   ; 01
- D 0 - I - 0x0105FF 04:85EF: F5        .byte $F5, $01   ; 02
- D 0 - I - 0x010601 04:85F1: F6        .byte $F6, $01   ; 03
- D 0 - I - 0x010603 04:85F3: F8        .byte $F8, $01   ; 04
- D 0 - I - 0x010605 04:85F5: F9        .byte $F9, $01   ; 05
- D 0 - I - 0x010607 04:85F7: FA        .byte $FA, $01   ; 06
- D 0 - I - 0x010609 04:85F9: FB        .byte $FB, $01   ; 07
- D 0 - I - 0x01060B 04:85FB: F7        .byte $F7, $01   ; 08



_off001_85FD_3E:
- D 0 - I - 0x01060D 04:85FD: 08        .byte $08   ; spr counter
- D 0 - I - 0x01060E 04:85FE: 2A        .byte $2A   ; index for YX data
- D 0 - I - 0x01060F 04:85FF: FC        .byte $FC, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010611 04:8601: FD        .byte $FD, $01   ; 01
- D 0 - I - 0x010613 04:8603: FE        .byte $FE, $01   ; 02
- D 0 - I - 0x010615 04:8605: FF        .byte $FF, $01   ; 03
- D 0 - I - 0x010617 04:8607: E1        .byte $E1, $01   ; 04
- D 0 - I - 0x010619 04:8609: E2        .byte $E2, $01   ; 05
- D 0 - I - 0x01061B 04:860B: E3        .byte $E3, $01   ; 06
- D 0 - I - 0x01061D 04:860D: E4        .byte $E4, $01   ; 07
- D 0 - I - 0x01061F 04:860F: E0        .byte $E0, $01   ; 08



_off001_8611_3F:
- - - - - - 0x010621 04:8611: 0A        .byte $0A   ; spr counter
- - - - - - 0x010622 04:8612: 32        .byte $32   ; index for YX data
- - - - - - 0x010623 04:8613: C0        .byte $C0, $03   ; 00 spr_T, spr_A
- - - - - - 0x010625 04:8615: C1        .byte $C1, $03   ; 01
- - - - - - 0x010627 04:8617: C2        .byte $C2, $03   ; 02
- - - - - - 0x010629 04:8619: C3        .byte $C3, $03   ; 03
- - - - - - 0x01062B 04:861B: C4        .byte $C4, $03   ; 04
- - - - - - 0x01062D 04:861D: C5        .byte $C5, $03   ; 05
- - - - - - 0x01062F 04:861F: C6        .byte $C6, $03   ; 06
- - - - - - 0x010631 04:8621: C7        .byte $C7, $03   ; 07
- - - - - - 0x010633 04:8623: C8        .byte $C8, $03   ; 08
- - - - - - 0x010635 04:8625: C9        .byte $C9, $03   ; 09
- - - - - - 0x010637 04:8627: CA        .byte $CA, $03   ; 0A



_off001_8629_40:
- D 0 - I - 0x010639 04:8629: 07        .byte $07   ; spr counter
- D 0 - I - 0x01063A 04:862A: 3C        .byte $3C   ; index for YX data
- D 0 - I - 0x01063B 04:862B: F1        .byte $F1, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x01063D 04:862D: F0        .byte $F0, $00   ; 01
- D 0 - I - 0x01063F 04:862F: F3        .byte $F3, $00   ; 02
- D 0 - I - 0x010641 04:8631: F2        .byte $F2, $00   ; 03
- D 0 - I - 0x010643 04:8633: F4        .byte $F4, $00   ; 04
- D 0 - I - 0x010645 04:8635: F6        .byte $F6, $00   ; 05
- D 0 - I - 0x010647 04:8637: F5        .byte $F5, $00   ; 06
- D 0 - I - 0x010649 04:8639: F7        .byte $F7, $00   ; 07



_off001_863B_41:
- D 0 - I - 0x01064B 04:863B: 05        .byte $05   ; spr counter
- D 0 - I - 0x01064C 04:863C: A8        .byte $A8   ; index for YX data
- D 0 - I - 0x01064D 04:863D: F9        .byte $F9, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x01064F 04:863F: FC        .byte $FC, $00   ; 01
- D 0 - I - 0x010651 04:8641: FD        .byte $FD, $00   ; 02
- D 0 - I - 0x010653 04:8643: FE        .byte $FE, $00   ; 03
- D 0 - I - 0x010655 04:8645: FA        .byte $FA, $00   ; 04
- D 0 - I - 0x010657 04:8647: FB        .byte $FB, $00   ; 05



_off001_8649_42:
- D 0 - I - 0x010659 04:8649: 04        .byte $04   ; spr counter
- D 0 - I - 0x01065A 04:864A: 4C        .byte $4C   ; index for YX data
- D 0 - I - 0x01065B 04:864B: E0        .byte $E0, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x01065D 04:864D: E1        .byte $E1, $02   ; 01
- D 0 - I - 0x01065F 04:864F: E2        .byte $E2, $02   ; 02
- D 0 - I - 0x010661 04:8651: E3        .byte $E3, $02   ; 03
- D 0 - I - 0x010663 04:8653: E4        .byte $E4, $02   ; 04



_off001_8655_43:
- D 0 - I - 0x010665 04:8655: 04        .byte $04   ; spr counter
- D 0 - I - 0x010666 04:8656: 4C        .byte $4C   ; index for YX data
- D 0 - I - 0x010667 04:8657: E0        .byte $E0, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010669 04:8659: E1        .byte $E1, $02   ; 01
- D 0 - I - 0x01066B 04:865B: E6        .byte $E6, $02   ; 02
- D 0 - I - 0x01066D 04:865D: E7        .byte $E7, $02   ; 03
- D 0 - I - 0x01066F 04:865F: E4        .byte $E4, $02   ; 04



_off001_8661_44:
- D 0 - I - 0x010671 04:8661: 03        .byte $03   ; spr counter
- D 0 - I - 0x010672 04:8662: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010673 04:8663: E8        .byte $E8, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010675 04:8665: E9        .byte $E9, $01   ; 01
- D 0 - I - 0x010677 04:8667: EA        .byte $EA, $01   ; 02
- D 0 - I - 0x010679 04:8669: EB        .byte $EB, $01   ; 03



_off001_866B_45:
- D 0 - I - 0x01067B 04:866B: 03        .byte $03   ; spr counter
- D 0 - I - 0x01067C 04:866C: 26        .byte $26   ; index for YX data
- D 0 - I - 0x01067D 04:866D: EC        .byte $EC, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x01067F 04:866F: EC        .byte $EC, $40   ; 01
- D 0 - I - 0x010681 04:8671: ED        .byte $ED, $00   ; 02
- D 0 - I - 0x010683 04:8673: ED        .byte $ED, $40   ; 03



_off001_8675_46:
- D 0 - I - 0x010685 04:8675: 03        .byte $03   ; spr counter
- D 0 - I - 0x010686 04:8676: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010687 04:8677: EE        .byte $EE, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010689 04:8679: EF        .byte $EF, $00   ; 01
- D 0 - I - 0x01068B 04:867B: EE        .byte $EE, $80   ; 02
- D 0 - I - 0x01068D 04:867D: E5        .byte $E5, $00   ; 03



_off001_867F_47:
- D 0 - I - 0x01068F 04:867F: 03        .byte $03   ; spr counter
- D 0 - I - 0x010690 04:8680: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010691 04:8681: ED        .byte $ED, $80   ; 00 spr_T, spr_A
- D 0 - I - 0x010693 04:8683: ED        .byte $ED, $C0   ; 01
- D 0 - I - 0x010695 04:8685: EC        .byte $EC, $80   ; 02
- D 0 - I - 0x010697 04:8687: EC        .byte $EC, $C0   ; 03



_off001_8689_48:
- D 0 - I - 0x010699 04:8689: 03        .byte $03   ; spr counter
- D 0 - I - 0x01069A 04:868A: 26        .byte $26   ; index for YX data
- D 0 - I - 0x01069B 04:868B: EF        .byte $EF, $40   ; 00 spr_T, spr_A
- D 0 - I - 0x01069D 04:868D: EE        .byte $EE, $40   ; 01
- D 0 - I - 0x01069F 04:868F: E5        .byte $E5, $40   ; 02
- D 0 - I - 0x0106A1 04:8691: EE        .byte $EE, $C0   ; 03



_off001_8693_49:
- D 0 - I - 0x0106A3 04:8693: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x0106A4 04:8694: 32        .byte $32   ; index for YX data
- D 0 - I - 0x0106A5 04:8695: 60        .byte $60, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0106A7 04:8697: 61        .byte $61, $00   ; 01
- D 0 - I - 0x0106A9 04:8699: 63        .byte $63, $00   ; 02
- D 0 - I - 0x0106AB 04:869B: 01        .byte $01, $00   ; 03
- D 0 - I - 0x0106AD 04:869D: 02        .byte $02, $00   ; 04
- D 0 - I - 0x0106AF 04:869F: 03        .byte $03, $00   ; 05
- D 0 - I - 0x0106B1 04:86A1: 04        .byte $04, $00   ; 06
- D 0 - I - 0x0106B3 04:86A3: 05        .byte $05, $00   ; 07
- D 0 - I - 0x0106B5 04:86A5: 1B        .byte $1B, $01   ; 08
- D 0 - I - 0x0106B7 04:86A7: 1C        .byte $1C, $01   ; 09
- D 0 - I - 0x0106B9 04:86A9: 1D        .byte $1D, $01   ; 0A
- D 0 - I - 0x0106BB 04:86AB: 62        .byte $62, $00   ; 0B



_off001_86AD_4A:
- D 0 - I - 0x0106BD 04:86AD: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x0106BE 04:86AE: 32        .byte $32   ; index for YX data
- D 0 - I - 0x0106BF 04:86AF: 60        .byte $60, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0106C1 04:86B1: 64        .byte $64, $00   ; 01
- D 0 - I - 0x0106C3 04:86B3: 63        .byte $63, $00   ; 02
- D 0 - I - 0x0106C5 04:86B5: 01        .byte $01, $00   ; 03
- D 0 - I - 0x0106C7 04:86B7: 06        .byte $06, $00   ; 04
- D 0 - I - 0x0106C9 04:86B9: 07        .byte $07, $00   ; 05
- D 0 - I - 0x0106CB 04:86BB: 08        .byte $08, $00   ; 06
- D 0 - I - 0x0106CD 04:86BD: 09        .byte $09, $00   ; 07
- D 0 - I - 0x0106CF 04:86BF: 1B        .byte $1B, $01   ; 08
- D 0 - I - 0x0106D1 04:86C1: 1C        .byte $1C, $01   ; 09
- D 0 - I - 0x0106D3 04:86C3: 1D        .byte $1D, $01   ; 0A
- D 0 - I - 0x0106D5 04:86C5: 62        .byte $62, $00   ; 0B



_off001_86C7_4B:
- D 0 - I - 0x0106D7 04:86C7: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x0106D8 04:86C8: 32        .byte $32   ; index for YX data
- D 0 - I - 0x0106D9 04:86C9: 60        .byte $60, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0106DB 04:86CB: 65        .byte $65, $00   ; 01
- D 0 - I - 0x0106DD 04:86CD: 63        .byte $63, $00   ; 02
- D 0 - I - 0x0106DF 04:86CF: 01        .byte $01, $00   ; 03
- D 0 - I - 0x0106E1 04:86D1: 0A        .byte $0A, $00   ; 04
- D 0 - I - 0x0106E3 04:86D3: 0B        .byte $0B, $00   ; 05
- D 0 - I - 0x0106E5 04:86D5: 0C        .byte $0C, $00   ; 06
- D 0 - I - 0x0106E7 04:86D7: 0D        .byte $0D, $00   ; 07
- D 0 - I - 0x0106E9 04:86D9: 1B        .byte $1B, $01   ; 08
- D 0 - I - 0x0106EB 04:86DB: 1C        .byte $1C, $01   ; 09
- D 0 - I - 0x0106ED 04:86DD: 1D        .byte $1D, $01   ; 0A
- D 0 - I - 0x0106EF 04:86DF: 62        .byte $62, $00   ; 0B



_off001_86E1_4C:
- D 0 - I - 0x0106F1 04:86E1: 0A        .byte $0A   ; spr counter
- D 0 - I - 0x0106F2 04:86E2: 32        .byte $32   ; index for YX data
- D 0 - I - 0x0106F3 04:86E3: 60        .byte $60, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0106F5 04:86E5: 65        .byte $65, $00   ; 01
- D 0 - I - 0x0106F7 04:86E7: 66        .byte $66, $00   ; 02
- D 0 - I - 0x0106F9 04:86E9: 01        .byte $01, $00   ; 03
- D 0 - I - 0x0106FB 04:86EB: 42        .byte $42, $00   ; 04
- D 0 - I - 0x0106FD 04:86ED: 43        .byte $43, $00   ; 05
- D 0 - I - 0x0106FF 04:86EF: 45        .byte $45, $00   ; 06
- D 0 - I - 0x010701 04:86F1: 46        .byte $46, $00   ; 07
- D 0 - I - 0x010703 04:86F3: 1B        .byte $1B, $01   ; 08
- D 0 - I - 0x010705 04:86F5: 1C        .byte $1C, $01   ; 09
- D 0 - I - 0x010707 04:86F7: 1D        .byte $1D, $01   ; 0A



_off001_86F9_4D:
- D 0 - I - 0x010709 04:86F9: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x01070A 04:86FA: 34        .byte $34   ; index for YX data
- D 0 - I - 0x01070B 04:86FB: 54        .byte $54, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x01070D 04:86FD: 55        .byte $55, $00   ; 01
- D 0 - I - 0x01070F 04:86FF: 56        .byte $56, $00   ; 02
- D 0 - I - 0x010711 04:8701: 57        .byte $57, $00   ; 03
- D 0 - I - 0x010713 04:8703: 01        .byte $01, $00   ; 04
- D 0 - I - 0x010715 04:8705: 02        .byte $02, $00   ; 05
- D 0 - I - 0x010717 04:8707: 03        .byte $03, $00   ; 06
- D 0 - I - 0x010719 04:8709: 04        .byte $04, $00   ; 07
- D 0 - I - 0x01071B 04:870B: 05        .byte $05, $00   ; 08
- D 0 - I - 0x01071D 04:870D: 18        .byte $18, $01   ; 09
- D 0 - I - 0x01071F 04:870F: 19        .byte $19, $01   ; 0A
- D 0 - I - 0x010721 04:8711: 1A        .byte $1A, $01   ; 0B



_off001_8713_4E:
- D 0 - I - 0x010723 04:8713: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x010724 04:8714: 36        .byte $36   ; index for YX data
- D 0 - I - 0x010725 04:8715: 54        .byte $54, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010727 04:8717: 58        .byte $58, $00   ; 01
- D 0 - I - 0x010729 04:8719: 56        .byte $56, $00   ; 02
- D 0 - I - 0x01072B 04:871B: 59        .byte $59, $00   ; 03
- D 0 - I - 0x01072D 04:871D: 01        .byte $01, $00   ; 04
- D 0 - I - 0x01072F 04:871F: 06        .byte $06, $00   ; 05
- D 0 - I - 0x010731 04:8721: 07        .byte $07, $00   ; 06
- D 0 - I - 0x010733 04:8723: 08        .byte $08, $00   ; 07
- D 0 - I - 0x010735 04:8725: 09        .byte $09, $00   ; 08
- D 0 - I - 0x010737 04:8727: 1B        .byte $1B, $01   ; 09
- D 0 - I - 0x010739 04:8729: 1C        .byte $1C, $01   ; 0A
- D 0 - I - 0x01073B 04:872B: 1D        .byte $1D, $01   ; 0B



_off001_872D_4F:
- D 0 - I - 0x01073D 04:872D: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x01073E 04:872E: 38        .byte $38   ; index for YX data
- D 0 - I - 0x01073F 04:872F: 54        .byte $54, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010741 04:8731: 5A        .byte $5A, $00   ; 01
- D 0 - I - 0x010743 04:8733: 56        .byte $56, $00   ; 02
- D 0 - I - 0x010745 04:8735: 5B        .byte $5B, $00   ; 03
- D 0 - I - 0x010747 04:8737: 01        .byte $01, $00   ; 04
- D 0 - I - 0x010749 04:8739: 0A        .byte $0A, $00   ; 05
- D 0 - I - 0x01074B 04:873B: 0B        .byte $0B, $00   ; 06
- D 0 - I - 0x01074D 04:873D: 0C        .byte $0C, $00   ; 07
- D 0 - I - 0x01074F 04:873F: 0D        .byte $0D, $00   ; 08
- D 0 - I - 0x010751 04:8741: 1B        .byte $1B, $01   ; 09
- D 0 - I - 0x010753 04:8743: 1E        .byte $1E, $01   ; 0A
- D 0 - I - 0x010755 04:8745: 1F        .byte $1F, $01   ; 0B



_off001_8747_50:
- D 0 - I - 0x010757 04:8747: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x010758 04:8748: 3A        .byte $3A   ; index for YX data
- D 0 - I - 0x010759 04:8749: 5D        .byte $5D, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x01075B 04:874B: 5E        .byte $5E, $00   ; 01
- D 0 - I - 0x01075D 04:874D: 5F        .byte $5F, $00   ; 02
- D 0 - I - 0x01075F 04:874F: 67        .byte $67, $00   ; 03
- D 0 - I - 0x010761 04:8751: 36        .byte $36, $00   ; 04
- D 0 - I - 0x010763 04:8753: 37        .byte $37, $00   ; 05
- D 0 - I - 0x010765 04:8755: 38        .byte $38, $00   ; 06
- D 0 - I - 0x010767 04:8757: 39        .byte $39, $00   ; 07
- D 0 - I - 0x010769 04:8759: 3A        .byte $3A, $00   ; 08
- D 0 - I - 0x01076B 04:875B: 3B        .byte $3B, $00   ; 09
- D 0 - I - 0x01076D 04:875D: 40        .byte $40, $01   ; 0A
- D 0 - I - 0x01076F 04:875F: 1F        .byte $1F, $01   ; 0B



_off001_8761_51:
- D 0 - I - 0x010771 04:8761: 00        .byte $00   ; spr counter
- D 0 - I - 0x010772 04:8762: 14        .byte $14   ; index for YX data
- D 0 - I - 0x010773 04:8763: 9C        .byte $9C, $01   ; 00 spr_T, spr_A



_off001_8765_52:
- D 0 - I - 0x010775 04:8765: 00        .byte $00   ; spr counter
- D 0 - I - 0x010776 04:8766: 14        .byte $14   ; index for YX data
- D 0 - I - 0x010777 04:8767: 9D        .byte $9D, $01   ; 00 spr_T, spr_A



_off001_8769_53:
- D 0 - I - 0x010779 04:8769: 03        .byte $03   ; spr counter
- D 0 - I - 0x01077A 04:876A: 26        .byte $26   ; index for YX data
- D 0 - I - 0x01077B 04:876B: 8C        .byte $8C, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x01077D 04:876D: 8D        .byte $8D, $01   ; 01
- D 0 - I - 0x01077F 04:876F: 8E        .byte $8E, $01   ; 02
- D 0 - I - 0x010781 04:8771: 8F        .byte $8F, $01   ; 03



_off001_8773_54:
- D 0 - I - 0x010783 04:8773: 03        .byte $03   ; spr counter
- D 0 - I - 0x010784 04:8774: 50        .byte $50   ; index for YX data
- D 0 - I - 0x010785 04:8775: B0        .byte $B0, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010787 04:8777: B1        .byte $B1, $01   ; 01
- D 0 - I - 0x010789 04:8779: B2        .byte $B2, $01   ; 02
- D 0 - I - 0x01078B 04:877B: B3        .byte $B3, $01   ; 03



_off001_877D_55:
- D 0 - I - 0x01078D 04:877D: 03        .byte $03   ; spr counter
- D 0 - I - 0x01078E 04:877E: 26        .byte $26   ; index for YX data
- D 0 - I - 0x01078F 04:877F: B4        .byte $B4, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010791 04:8781: B5        .byte $B5, $00   ; 01
- D 0 - I - 0x010793 04:8783: B6        .byte $B6, $00   ; 02
- D 0 - I - 0x010795 04:8785: B7        .byte $B7, $00   ; 03



_off001_8787_56:
- D 0 - I - 0x010797 04:8787: 08        .byte $08   ; spr counter
- D 0 - I - 0x010798 04:8788: 2A        .byte $2A   ; index for YX data
- D 0 - I - 0x010799 04:8789: BF        .byte $BF, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x01079B 04:878B: B8        .byte $B8, $00   ; 01
- D 0 - I - 0x01079D 04:878D: AC        .byte $AC, $00   ; 02
- D 0 - I - 0x01079F 04:878F: B9        .byte $B9, $00   ; 03
- D 0 - I - 0x0107A1 04:8791: AE        .byte $AE, $00   ; 04
- D 0 - I - 0x0107A3 04:8793: AD        .byte $AD, $00   ; 05
- D 0 - I - 0x0107A5 04:8795: B8        .byte $B8, $80   ; 06
- D 0 - I - 0x0107A7 04:8797: AC        .byte $AC, $80   ; 07
- D 0 - I - 0x0107A9 04:8799: BA        .byte $BA, $00   ; 08



_off001_879B_57:
- D 0 - I - 0x0107AB 04:879B: 08        .byte $08   ; spr counter
- D 0 - I - 0x0107AC 04:879C: 2A        .byte $2A   ; index for YX data
- D 0 - I - 0x0107AD 04:879D: BB        .byte $BB, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0107AF 04:879F: BC        .byte $BC, $00   ; 01
- D 0 - I - 0x0107B1 04:87A1: BB        .byte $BB, $40   ; 02
- D 0 - I - 0x0107B3 04:87A3: BD        .byte $BD, $00   ; 03
- D 0 - I - 0x0107B5 04:87A5: BD        .byte $BD, $40   ; 04
- D 0 - I - 0x0107B7 04:87A7: BB        .byte $BB, $80   ; 05
- D 0 - I - 0x0107B9 04:87A9: BC        .byte $BC, $80   ; 06
- D 0 - I - 0x0107BB 04:87AB: BB        .byte $BB, $C0   ; 07
- D 0 - I - 0x0107BD 04:87AD: BE        .byte $BE, $00   ; 08



_off001_87AF_58:
- D 0 - I - 0x0107BF 04:87AF: 03        .byte $03   ; spr counter
- D 0 - I - 0x0107C0 04:87B0: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0107C1 04:87B1: C0        .byte $C0, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0107C3 04:87B3: C0        .byte $C0, $40   ; 01
- D 0 - I - 0x0107C5 04:87B5: C0        .byte $C0, $80   ; 02
- D 0 - I - 0x0107C7 04:87B7: C0        .byte $C0, $C0   ; 03



_off001_87B9_59:
- - - - - - 0x0107C9 04:87B9: 03        .byte $03   ; spr counter
- - - - - - 0x0107CA 04:87BA: 26        .byte $26   ; index for YX data
- - - - - - 0x0107CB 04:87BB: FF        .byte $FF, $41   ; 00 spr_T, spr_A
- - - - - - 0x0107CD 04:87BD: F8        .byte $F8, $41   ; 01
- - - - - - 0x0107CF 04:87BF: C7        .byte $C7, $41   ; 02
- - - - - - 0x0107D1 04:87C1: C6        .byte $C6, $41   ; 03



_off001_87C3_5A:
- D 0 - I - 0x0107D3 04:87C3: 03        .byte $03   ; spr counter
- D 0 - I - 0x0107D4 04:87C4: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0107D5 04:87C5: 95        .byte $95, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0107D7 04:87C7: 96        .byte $96, $00   ; 01
- D 0 - I - 0x0107D9 04:87C9: 97        .byte $97, $00   ; 02
- D 0 - I - 0x0107DB 04:87CB: 97        .byte $97, $40   ; 03



_off001_87CD_5B:
- D 0 - I - 0x0107DD 04:87CD: 00        .byte $00   ; spr counter
- D 0 - I - 0x0107DE 04:87CE: 14        .byte $14   ; index for YX data
- D 0 - I - 0x0107DF 04:87CF: 98        .byte $98, $00   ; 00 spr_T, spr_A



_off001_87D1_5C:
- D 0 - I - 0x0107E1 04:87D1: 03        .byte $03   ; spr counter
- D 0 - I - 0x0107E2 04:87D2: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0107E3 04:87D3: 7E        .byte $7E, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0107E5 04:87D5: AF        .byte $AF, $00   ; 01
- D 0 - I - 0x0107E7 04:87D7: A0        .byte $A0, $00   ; 02
- D 0 - I - 0x0107E9 04:87D9: A1        .byte $A1, $01   ; 03



_off001_87DB_5D:
- D 0 - I - 0x0107EB 04:87DB: 03        .byte $03   ; spr counter
- D 0 - I - 0x0107EC 04:87DC: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0107ED 04:87DD: 99        .byte $99, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0107EF 04:87DF: 99        .byte $99, $40   ; 01
- D 0 - I - 0x0107F1 04:87E1: 9A        .byte $9A, $00   ; 02
- D 0 - I - 0x0107F3 04:87E3: 9A        .byte $9A, $40   ; 03



_off001_87E5_5E:
- D 0 - I - 0x0107F5 04:87E5: 03        .byte $03   ; spr counter
- D 0 - I - 0x0107F6 04:87E6: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0107F7 04:87E7: 93        .byte $93, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0107F9 04:87E9: 93        .byte $93, $40   ; 01
- D 0 - I - 0x0107FB 04:87EB: 94        .byte $94, $00   ; 02
- D 0 - I - 0x0107FD 04:87ED: 94        .byte $94, $40   ; 03



_off001_87EF_5F:
- D 0 - I - 0x0107FF 04:87EF: 03        .byte $03   ; spr counter
- D 0 - I - 0x010800 04:87F0: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010801 04:87F1: 9B        .byte $9B, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010803 04:87F3: 93        .byte $93, $40   ; 01
- D 0 - I - 0x010805 04:87F5: 9B        .byte $9B, $80   ; 02
- D 0 - I - 0x010807 04:87F7: 94        .byte $94, $40   ; 03



_off001_87F9_60:
- D 0 - I - 0x010809 04:87F9: 03        .byte $03   ; spr counter
- D 0 - I - 0x01080A 04:87FA: 26        .byte $26   ; index for YX data
- D 0 - I - 0x01080B 04:87FB: 9B        .byte $9B, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x01080D 04:87FD: 9B        .byte $9B, $40   ; 01
- D 0 - I - 0x01080F 04:87FF: 9B        .byte $9B, $80   ; 02
- D 0 - I - 0x010811 04:8801: 9B        .byte $9B, $C0   ; 03



_off001_8803_61:
- D 0 - I - 0x010813 04:8803: 03        .byte $03   ; spr counter
- D 0 - I - 0x010814 04:8804: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010815 04:8805: 93        .byte $93, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010817 04:8807: 9B        .byte $9B, $40   ; 01
- D 0 - I - 0x010819 04:8809: 94        .byte $94, $00   ; 02
- D 0 - I - 0x01081B 04:880B: 9B        .byte $9B, $C0   ; 03



_off001_880D_62:
- D 0 - I - 0x01081D 04:880D: 03        .byte $03   ; spr counter
- D 0 - I - 0x01081E 04:880E: 26        .byte $26   ; index for YX data
- D 0 - I - 0x01081F 04:880F: 93        .byte $93, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010821 04:8811: 93        .byte $93, $41   ; 01
- D 0 - I - 0x010823 04:8813: 94        .byte $94, $01   ; 02
- D 0 - I - 0x010825 04:8815: 94        .byte $94, $41   ; 03



_off001_8817_63:
- D 0 - I - 0x010827 04:8817: 03        .byte $03   ; spr counter
- D 0 - I - 0x010828 04:8818: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010829 04:8819: 9B        .byte $9B, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x01082B 04:881B: 93        .byte $93, $41   ; 01
- D 0 - I - 0x01082D 04:881D: 9B        .byte $9B, $81   ; 02
- D 0 - I - 0x01082F 04:881F: 94        .byte $94, $41   ; 03



_off001_8821_64:
- D 0 - I - 0x010831 04:8821: 03        .byte $03   ; spr counter
- D 0 - I - 0x010832 04:8822: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010833 04:8823: 9B        .byte $9B, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010835 04:8825: 9B        .byte $9B, $41   ; 01
- D 0 - I - 0x010837 04:8827: 9B        .byte $9B, $81   ; 02
- D 0 - I - 0x010839 04:8829: 9B        .byte $9B, $C1   ; 03



_off001_882B_65:
- D 0 - I - 0x01083B 04:882B: 03        .byte $03   ; spr counter
- D 0 - I - 0x01083C 04:882C: 26        .byte $26   ; index for YX data
- D 0 - I - 0x01083D 04:882D: 93        .byte $93, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x01083F 04:882F: 9B        .byte $9B, $41   ; 01
- D 0 - I - 0x010841 04:8831: 94        .byte $94, $01   ; 02
- D 0 - I - 0x010843 04:8833: 9B        .byte $9B, $C1   ; 03



_off001_8835_66:
- D 0 - I - 0x010845 04:8835: 03        .byte $03   ; spr counter
- D 0 - I - 0x010846 04:8836: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010847 04:8837: 88        .byte $88, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010849 04:8839: 89        .byte $89, $00   ; 01
- D 0 - I - 0x01084B 04:883B: 8A        .byte $8A, $00   ; 02
- D 0 - I - 0x01084D 04:883D: 8B        .byte $8B, $00   ; 03



_off001_883F_67:
- D 0 - I - 0x01084F 04:883F: 03        .byte $03   ; spr counter
- D 0 - I - 0x010850 04:8840: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010851 04:8841: 7F        .byte $7F, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010853 04:8843: 90        .byte $90, $01   ; 01
- D 0 - I - 0x010855 04:8845: 91        .byte $91, $01   ; 02
- D 0 - I - 0x010857 04:8847: 92        .byte $92, $01   ; 03



_off001_8849_68:
- D 0 - I - 0x010859 04:8849: 03        .byte $03   ; spr counter
- D 0 - I - 0x01085A 04:884A: 26        .byte $26   ; index for YX data
- D 0 - I - 0x01085B 04:884B: C1        .byte $C1, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x01085D 04:884D: C2        .byte $C2, $00   ; 01
- D 0 - I - 0x01085F 04:884F: C1        .byte $C1, $80   ; 02
- D 0 - I - 0x010861 04:8851: C2        .byte $C2, $80   ; 03



_off001_8853_69:
- D 0 - I - 0x010863 04:8853: 03        .byte $03   ; spr counter
- D 0 - I - 0x010864 04:8854: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010865 04:8855: C3        .byte $C3, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010867 04:8857: C4        .byte $C4, $00   ; 01
- D 0 - I - 0x010869 04:8859: C3        .byte $C3, $80   ; 02
- D 0 - I - 0x01086B 04:885B: C4        .byte $C4, $80   ; 03



_off001_885D_6A:
- D 0 - I - 0x01086D 04:885D: 0C        .byte $0C   ; spr counter
- D 0 - I - 0x01086E 04:885E: 62        .byte $62   ; index for YX data
- D 0 - I - 0x01086F 04:885F: E0        .byte $E0, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010871 04:8861: E1        .byte $E1, $00   ; 01
- D 0 - I - 0x010873 04:8863: E2        .byte $E2, $00   ; 02
- D 0 - I - 0x010875 04:8865: E3        .byte $E3, $01   ; 03
- D 0 - I - 0x010877 04:8867: E4        .byte $E4, $01   ; 04
- D 0 - I - 0x010879 04:8869: E5        .byte $E5, $01   ; 05
- D 0 - I - 0x01087B 04:886B: E6        .byte $E6, $01   ; 06
- D 0 - I - 0x01087D 04:886D: E7        .byte $E7, $01   ; 07
- D 0 - I - 0x01087F 04:886F: E8        .byte $E8, $01   ; 08
- D 0 - I - 0x010881 04:8871: E9        .byte $E9, $01   ; 09
- D 0 - I - 0x010883 04:8873: EA        .byte $EA, $01   ; 0A
- D 0 - I - 0x010885 04:8875: EB        .byte $EB, $01   ; 0B
- D 0 - I - 0x010887 04:8877: D3        .byte $D3, $02   ; 0C



_off001_8879_6B:
- D 0 - I - 0x010889 04:8879: 0A        .byte $0A   ; spr counter
- D 0 - I - 0x01088A 04:887A: 3E        .byte $3E   ; index for YX data
- D 0 - I - 0x01088B 04:887B: C1        .byte $C1, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x01088D 04:887D: C2        .byte $C2, $03   ; 01
- D 0 - I - 0x01088F 04:887F: C4        .byte $C4, $03   ; 02
- D 0 - I - 0x010891 04:8881: C5        .byte $C5, $03   ; 03
- D 0 - I - 0x010893 04:8883: C6        .byte $C6, $03   ; 04
- D 0 - I - 0x010895 04:8885: C9        .byte $C9, $03   ; 05
- D 0 - I - 0x010897 04:8887: C3        .byte $C3, $03   ; 06
- D 0 - I - 0x010899 04:8889: C7        .byte $C7, $03   ; 07
- D 0 - I - 0x01089B 04:888B: C8        .byte $C8, $03   ; 08
- D 0 - I - 0x01089D 04:888D: CA        .byte $CA, $03   ; 09
- D 0 - I - 0x01089F 04:888F: C0        .byte $C0, $03   ; 0A



_off001_8891_6C:
- D 0 - I - 0x0108A1 04:8891: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x0108A2 04:8892: 40        .byte $40   ; index for YX data
- D 0 - I - 0x0108A3 04:8893: CB        .byte $CB, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x0108A5 04:8895: CC        .byte $CC, $03   ; 01
- D 0 - I - 0x0108A7 04:8897: CD        .byte $CD, $03   ; 02
- D 0 - I - 0x0108A9 04:8899: CE        .byte $CE, $03   ; 03
- D 0 - I - 0x0108AB 04:889B: CF        .byte $CF, $03   ; 04
- D 0 - I - 0x0108AD 04:889D: D0        .byte $D0, $03   ; 05
- D 0 - I - 0x0108AF 04:889F: D1        .byte $D1, $03   ; 06
- D 0 - I - 0x0108B1 04:88A1: D2        .byte $D2, $03   ; 07
- D 0 - I - 0x0108B3 04:88A3: D3        .byte $D3, $03   ; 08
- D 0 - I - 0x0108B5 04:88A5: D4        .byte $D4, $03   ; 09
- D 0 - I - 0x0108B7 04:88A7: D5        .byte $D5, $03   ; 0A
- D 0 - I - 0x0108B9 04:88A9: D6        .byte $D6, $03   ; 0B



_off001_88AB_6D:
- - - - - - 0x0108BB 04:88AB: 0F        .byte $0F   ; spr counter
- - - - - - 0x0108BC 04:88AC: 28        .byte $28   ; index for YX data
- - - - - - 0x0108BD 04:88AD: F5        .byte $F5, $01   ; 00 spr_T, spr_A
- - - - - - 0x0108BF 04:88AF: D7        .byte $D7, $01   ; 01
- - - - - - 0x0108C1 04:88B1: D8        .byte $D8, $01   ; 02
- - - - - - 0x0108C3 04:88B3: F5        .byte $F5, $41   ; 03
- - - - - - 0x0108C5 04:88B5: D9        .byte $D9, $01   ; 04
- - - - - - 0x0108C7 04:88B7: DC        .byte $DC, $01   ; 05
- - - - - - 0x0108C9 04:88B9: DD        .byte $DD, $01   ; 06
- - - - - - 0x0108CB 04:88BB: F0        .byte $F0, $01   ; 07
- - - - - - 0x0108CD 04:88BD: F1        .byte $F1, $01   ; 08
- - - - - - 0x0108CF 04:88BF: F2        .byte $F2, $01   ; 09
- - - - - - 0x0108D1 04:88C1: F3        .byte $F3, $01   ; 0A
- - - - - - 0x0108D3 04:88C3: F4        .byte $F4, $01   ; 0B
- - - - - - 0x0108D5 04:88C5: DA        .byte $DA, $01   ; 0C
- - - - - - 0x0108D7 04:88C7: DB        .byte $DB, $01   ; 0D
- - - - - - 0x0108D9 04:88C9: DE        .byte $DE, $01   ; 0E
- - - - - - 0x0108DB 04:88CB: DF        .byte $DF, $01   ; 0F



_off001_88CD_6E:
- D 0 - I - 0x0108DD 04:88CD: 07        .byte $07   ; spr counter
- D 0 - I - 0x0108DE 04:88CE: 52        .byte $52   ; index for YX data
- D 0 - I - 0x0108DF 04:88CF: D0        .byte $D0, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x0108E1 04:88D1: D1        .byte $D1, $02   ; 01
- D 0 - I - 0x0108E3 04:88D3: D2        .byte $D2, $02   ; 02
- D 0 - I - 0x0108E5 04:88D5: D3        .byte $D3, $02   ; 03
- D 0 - I - 0x0108E7 04:88D7: D4        .byte $D4, $02   ; 04
- D 0 - I - 0x0108E9 04:88D9: D5        .byte $D5, $02   ; 05
- D 0 - I - 0x0108EB 04:88DB: D6        .byte $D6, $02   ; 06
- D 0 - I - 0x0108ED 04:88DD: D7        .byte $D7, $02   ; 07



_off001_88DF_6F:
- D 0 - I - 0x0108EF 04:88DF: 08        .byte $08   ; spr counter
- D 0 - I - 0x0108F0 04:88E0: 2A        .byte $2A   ; index for YX data
- D 0 - I - 0x0108F1 04:88E1: D0        .byte $D0, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x0108F3 04:88E3: D1        .byte $D1, $02   ; 01
- D 0 - I - 0x0108F5 04:88E5: D2        .byte $D2, $02   ; 02
- D 0 - I - 0x0108F7 04:88E7: D3        .byte $D3, $02   ; 03
- D 0 - I - 0x0108F9 04:88E9: D9        .byte $D9, $02   ; 04
- D 0 - I - 0x0108FB 04:88EB: 00        .byte $00, $02   ; 05
- D 0 - I - 0x0108FD 04:88ED: DA        .byte $DA, $02   ; 06
- D 0 - I - 0x0108FF 04:88EF: DB        .byte $DB, $02   ; 07
- D 0 - I - 0x010901 04:88F1: D8        .byte $D8, $02   ; 08



_off001_88F3_70:
- D 0 - I - 0x010903 04:88F3: 08        .byte $08   ; spr counter
- D 0 - I - 0x010904 04:88F4: 54        .byte $54   ; index for YX data
- D 0 - I - 0x010905 04:88F5: DC        .byte $DC, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010907 04:88F7: DD        .byte $DD, $02   ; 01
- D 0 - I - 0x010909 04:88F9: D2        .byte $D2, $02   ; 02
- D 0 - I - 0x01090B 04:88FB: DE        .byte $DE, $02   ; 03
- D 0 - I - 0x01090D 04:88FD: DF        .byte $DF, $02   ; 04
- D 0 - I - 0x01090F 04:88FF: D9        .byte $D9, $02   ; 05
- D 0 - I - 0x010911 04:8901: F0        .byte $F0, $02   ; 06
- D 0 - I - 0x010913 04:8903: F1        .byte $F1, $02   ; 07
- D 0 - I - 0x010915 04:8905: DB        .byte $DB, $02   ; 08



_off001_8907_71:
- D 0 - I - 0x010917 04:8907: 07        .byte $07   ; spr counter
- D 0 - I - 0x010918 04:8908: 56        .byte $56   ; index for YX data
- D 0 - I - 0x010919 04:8909: F2        .byte $F2, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x01091B 04:890B: F3        .byte $F3, $02   ; 01
- D 0 - I - 0x01091D 04:890D: D2        .byte $D2, $02   ; 02
- D 0 - I - 0x01091F 04:890F: F4        .byte $F4, $02   ; 03
- D 0 - I - 0x010921 04:8911: F5        .byte $F5, $02   ; 04
- D 0 - I - 0x010923 04:8913: F6        .byte $F6, $02   ; 05
- D 0 - I - 0x010925 04:8915: F7        .byte $F7, $02   ; 06
- D 0 - I - 0x010927 04:8917: D7        .byte $D7, $02   ; 07



_off001_8919_72:
- D 0 - I - 0x010929 04:8919: 00        .byte $00   ; spr counter
- D 0 - I - 0x01092A 04:891A: 14        .byte $14   ; index for YX data
- D 0 - I - 0x01092B 04:891B: F8        .byte $F8, $01   ; 00 spr_T, spr_A



_off001_891D_73:
- D 0 - I - 0x01092D 04:891D: 0C        .byte $0C   ; spr counter
- D 0 - I - 0x01092E 04:891E: 62        .byte $62   ; index for YX data
- D 0 - I - 0x01092F 04:891F: E0        .byte $E0, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010931 04:8921: E1        .byte $E1, $00   ; 01
- D 0 - I - 0x010933 04:8923: E2        .byte $E2, $00   ; 02
- D 0 - I - 0x010935 04:8925: E3        .byte $E3, $01   ; 03
- D 0 - I - 0x010937 04:8927: E4        .byte $E4, $01   ; 04
- D 0 - I - 0x010939 04:8929: E5        .byte $E5, $01   ; 05
- D 0 - I - 0x01093B 04:892B: E6        .byte $E6, $01   ; 06
- D 0 - I - 0x01093D 04:892D: E7        .byte $E7, $01   ; 07
- D 0 - I - 0x01093F 04:892F: E8        .byte $E8, $01   ; 08
- D 0 - I - 0x010941 04:8931: EC        .byte $EC, $01   ; 09
- D 0 - I - 0x010943 04:8933: EA        .byte $EA, $01   ; 0A
- D 0 - I - 0x010945 04:8935: EB        .byte $EB, $01   ; 0B
- D 0 - I - 0x010947 04:8937: D3        .byte $D3, $02   ; 0C



_off001_8939_74:
- D 0 - I - 0x010949 04:8939: 02        .byte $02   ; spr counter
- D 0 - I - 0x01094A 04:893A: 5C        .byte $5C   ; index for YX data
- D 0 - I - 0x01094B 04:893B: 70        .byte $70, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x01094D 04:893D: 71        .byte $71, $01   ; 01
- D 0 - I - 0x01094F 04:893F: 72        .byte $72, $01   ; 02



_off001_8941_75:
- D 0 - I - 0x010951 04:8941: 02        .byte $02   ; spr counter
- D 0 - I - 0x010952 04:8942: 5D        .byte $5D   ; index for YX data
- D 0 - I - 0x010953 04:8943: 70        .byte $70, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010955 04:8945: 71        .byte $71, $01   ; 01
- D 0 - I - 0x010957 04:8947: 72        .byte $72, $01   ; 02



_off001_8949_76:
- D 0 - I - 0x010959 04:8949: 01        .byte $01   ; spr counter
- D 0 - I - 0x01095A 04:894A: 5D        .byte $5D   ; index for YX data
- D 0 - I - 0x01095B 04:894B: 71        .byte $71, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x01095D 04:894D: 72        .byte $72, $01   ; 01



_off001_894F_77:
- D 0 - I - 0x01095F 04:894F: 00        .byte $00   ; spr counter
- D 0 - I - 0x010960 04:8950: 5D        .byte $5D   ; index for YX data
- D 0 - I - 0x010961 04:8951: 72        .byte $72, $01   ; 00 spr_T, spr_A



_off001_8953_78:
- D 0 - I - 0x010963 04:8953: 0C        .byte $0C   ; spr counter
- D 0 - I - 0x010964 04:8954: 58        .byte $58   ; index for YX data
- D 0 - I - 0x010965 04:8955: C0        .byte $C0, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x010967 04:8957: C1        .byte $C1, $03   ; 01
- D 0 - I - 0x010969 04:8959: C2        .byte $C2, $03   ; 02
- D 0 - I - 0x01096B 04:895B: C3        .byte $C3, $03   ; 03
- D 0 - I - 0x01096D 04:895D: C4        .byte $C4, $03   ; 04
- D 0 - I - 0x01096F 04:895F: C5        .byte $C5, $03   ; 05
- D 0 - I - 0x010971 04:8961: C6        .byte $C6, $03   ; 06
- D 0 - I - 0x010973 04:8963: C7        .byte $C7, $03   ; 07
- D 0 - I - 0x010975 04:8965: C8        .byte $C8, $03   ; 08
- D 0 - I - 0x010977 04:8967: C9        .byte $C9, $03   ; 09
- D 0 - I - 0x010979 04:8969: CA        .byte $CA, $03   ; 0A
- D 0 - I - 0x01097B 04:896B: CB        .byte $CB, $03   ; 0B
- D 0 - I - 0x01097D 04:896D: CC        .byte $CC, $03   ; 0C



_off001_896F_79:
- D 0 - I - 0x01097F 04:896F: 0D        .byte $0D   ; spr counter
- D 0 - I - 0x010980 04:8970: 5A        .byte $5A   ; index for YX data
- D 0 - I - 0x010981 04:8971: C0        .byte $C0, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x010983 04:8973: CD        .byte $CD, $03   ; 01
- D 0 - I - 0x010985 04:8975: CE        .byte $CE, $03   ; 02
- D 0 - I - 0x010987 04:8977: C3        .byte $C3, $03   ; 03
- D 0 - I - 0x010989 04:8979: C4        .byte $C4, $03   ; 04
- D 0 - I - 0x01098B 04:897B: CF        .byte $CF, $03   ; 05
- D 0 - I - 0x01098D 04:897D: D0        .byte $D0, $03   ; 06
- D 0 - I - 0x01098F 04:897F: C7        .byte $C7, $03   ; 07
- D 0 - I - 0x010991 04:8981: C8        .byte $C8, $03   ; 08
- D 0 - I - 0x010993 04:8983: D1        .byte $D1, $03   ; 09
- D 0 - I - 0x010995 04:8985: D2        .byte $D2, $03   ; 0A
- D 0 - I - 0x010997 04:8987: CA        .byte $CA, $03   ; 0B
- D 0 - I - 0x010999 04:8989: CB        .byte $CB, $03   ; 0C
- D 0 - I - 0x01099B 04:898B: CC        .byte $CC, $03   ; 0D



_off001_898D_7A:
- D 0 - I - 0x01099D 04:898D: 0C        .byte $0C   ; spr counter
- D 0 - I - 0x01099E 04:898E: 58        .byte $58   ; index for YX data
- D 0 - I - 0x01099F 04:898F: D3        .byte $D3, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x0109A1 04:8991: D4        .byte $D4, $03   ; 01
- D 0 - I - 0x0109A3 04:8993: C2        .byte $C2, $03   ; 02
- D 0 - I - 0x0109A5 04:8995: D5        .byte $D5, $03   ; 03
- D 0 - I - 0x0109A7 04:8997: D6        .byte $D6, $03   ; 04
- D 0 - I - 0x0109A9 04:8999: C5        .byte $C5, $03   ; 05
- D 0 - I - 0x0109AB 04:899B: C6        .byte $C6, $03   ; 06
- D 0 - I - 0x0109AD 04:899D: D7        .byte $D7, $03   ; 07
- D 0 - I - 0x0109AF 04:899F: D8        .byte $D8, $03   ; 08
- D 0 - I - 0x0109B1 04:89A1: D9        .byte $D9, $03   ; 09
- D 0 - I - 0x0109B3 04:89A3: DA        .byte $DA, $03   ; 0A
- D 0 - I - 0x0109B5 04:89A5: DB        .byte $DB, $03   ; 0B
- D 0 - I - 0x0109B7 04:89A7: DC        .byte $DC, $03   ; 0C



_off001_89A9_7B:
- D 0 - I - 0x0109B9 04:89A9: 0D        .byte $0D   ; spr counter
- D 0 - I - 0x0109BA 04:89AA: 5A        .byte $5A   ; index for YX data
- D 0 - I - 0x0109BB 04:89AB: D3        .byte $D3, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x0109BD 04:89AD: DD        .byte $DD, $03   ; 01
- D 0 - I - 0x0109BF 04:89AF: CE        .byte $CE, $03   ; 02
- D 0 - I - 0x0109C1 04:89B1: D5        .byte $D5, $03   ; 03
- D 0 - I - 0x0109C3 04:89B3: D6        .byte $D6, $03   ; 04
- D 0 - I - 0x0109C5 04:89B5: CF        .byte $CF, $03   ; 05
- D 0 - I - 0x0109C7 04:89B7: D0        .byte $D0, $03   ; 06
- D 0 - I - 0x0109C9 04:89B9: D7        .byte $D7, $03   ; 07
- D 0 - I - 0x0109CB 04:89BB: D8        .byte $D8, $03   ; 08
- D 0 - I - 0x0109CD 04:89BD: DE        .byte $DE, $03   ; 09
- D 0 - I - 0x0109CF 04:89BF: D2        .byte $D2, $03   ; 0A
- D 0 - I - 0x0109D1 04:89C1: DA        .byte $DA, $03   ; 0B
- D 0 - I - 0x0109D3 04:89C3: DB        .byte $DB, $03   ; 0C
- D 0 - I - 0x0109D5 04:89C5: DC        .byte $DC, $03   ; 0D



_off001_89C7_7C:
- - - - - - 0x0109D7 04:89C7: 10        .byte $10   ; spr counter
- - - - - - 0x0109D8 04:89C8: 28        .byte $28   ; index for YX data
- - - - - - 0x0109D9 04:89C9: FA        .byte $FA, $01   ; 00 spr_T, spr_A
- - - - - - 0x0109DB 04:89CB: FB        .byte $FB, $01   ; 01
- - - - - - 0x0109DD 04:89CD: DF        .byte $DF, $01   ; 02
- - - - - - 0x0109DF 04:89CF: FA        .byte $FA, $41   ; 03
- - - - - - 0x0109E1 04:89D1: F0        .byte $F0, $01   ; 04
- - - - - - 0x0109E3 04:89D3: F3        .byte $F3, $01   ; 05
- - - - - - 0x0109E5 04:89D5: F4        .byte $F4, $01   ; 06
- - - - - - 0x0109E7 04:89D7: F7        .byte $F7, $01   ; 07
- - - - - - 0x0109E9 04:89D9: F8        .byte $F8, $01   ; 08
- - - - - - 0x0109EB 04:89DB: F9        .byte $F9, $01   ; 09
- - - - - - 0x0109ED 04:89DD: F9        .byte $F9, $41   ; 0A
- - - - - - 0x0109EF 04:89DF: F8        .byte $F8, $41   ; 0B
- - - - - - 0x0109F1 04:89E1: F1        .byte $F1, $01   ; 0C
- - - - - - 0x0109F3 04:89E3: F2        .byte $F2, $01   ; 0D
- - - - - - 0x0109F5 04:89E5: F5        .byte $F5, $01   ; 0E
- - - - - - 0x0109F7 04:89E7: F6        .byte $F6, $01   ; 0F
- - - - - - 0x0109F9 04:89E9: FC        .byte $FC, $01   ; 10



_off001_89EB_7D:
- D 0 - I - 0x0109FB 04:89EB: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x0109FC 04:89EC: 5E        .byte $5E   ; index for YX data
- D 0 - I - 0x0109FD 04:89ED: E1        .byte $E1, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x0109FF 04:89EF: E2        .byte $E2, $03   ; 01
- D 0 - I - 0x010A01 04:89F1: E3        .byte $E3, $03   ; 02
- D 0 - I - 0x010A03 04:89F3: E4        .byte $E4, $03   ; 03
- D 0 - I - 0x010A05 04:89F5: E5        .byte $E5, $03   ; 04
- D 0 - I - 0x010A07 04:89F7: E6        .byte $E6, $03   ; 05
- D 0 - I - 0x010A09 04:89F9: E7        .byte $E7, $03   ; 06
- D 0 - I - 0x010A0B 04:89FB: E8        .byte $E8, $03   ; 07
- D 0 - I - 0x010A0D 04:89FD: E9        .byte $E9, $03   ; 08
- D 0 - I - 0x010A0F 04:89FF: EA        .byte $EA, $03   ; 09
- D 0 - I - 0x010A11 04:8A01: EB        .byte $EB, $03   ; 0A
- D 0 - I - 0x010A13 04:8A03: E0        .byte $E0, $03   ; 0B



_off001_8A05_7E:
- D 0 - I - 0x010A15 04:8A05: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x010A16 04:8A06: 5F        .byte $5F   ; index for YX data
- D 0 - I - 0x010A17 04:8A07: EC        .byte $EC, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x010A19 04:8A09: ED        .byte $ED, $03   ; 01
- D 0 - I - 0x010A1B 04:8A0B: EE        .byte $EE, $03   ; 02
- D 0 - I - 0x010A1D 04:8A0D: EF        .byte $EF, $03   ; 03
- D 0 - I - 0x010A1F 04:8A0F: E4        .byte $E4, $03   ; 04
- D 0 - I - 0x010A21 04:8A11: E5        .byte $E5, $03   ; 05
- D 0 - I - 0x010A23 04:8A13: F0        .byte $F0, $03   ; 06
- D 0 - I - 0x010A25 04:8A15: E7        .byte $E7, $03   ; 07
- D 0 - I - 0x010A27 04:8A17: E8        .byte $E8, $03   ; 08
- D 0 - I - 0x010A29 04:8A19: F1        .byte $F1, $03   ; 09
- D 0 - I - 0x010A2B 04:8A1B: F2        .byte $F2, $03   ; 0A
- D 0 - I - 0x010A2D 04:8A1D: F3        .byte $F3, $03   ; 0B



_off001_8A1F_7F:
- D 0 - I - 0x010A2F 04:8A1F: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x010A30 04:8A20: 60        .byte $60   ; index for YX data
- D 0 - I - 0x010A31 04:8A21: EE        .byte $EE, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x010A33 04:8A23: EF        .byte $EF, $03   ; 01
- D 0 - I - 0x010A35 04:8A25: F6        .byte $F6, $03   ; 02
- D 0 - I - 0x010A37 04:8A27: E5        .byte $E5, $03   ; 03
- D 0 - I - 0x010A39 04:8A29: F0        .byte $F0, $03   ; 04
- D 0 - I - 0x010A3B 04:8A2B: F7        .byte $F7, $03   ; 05
- D 0 - I - 0x010A3D 04:8A2D: E8        .byte $E8, $03   ; 06
- D 0 - I - 0x010A3F 04:8A2F: F1        .byte $F1, $03   ; 07
- D 0 - I - 0x010A41 04:8A31: F2        .byte $F2, $03   ; 08
- D 0 - I - 0x010A43 04:8A33: F3        .byte $F3, $03   ; 09
- D 0 - I - 0x010A45 04:8A35: F4        .byte $F4, $03   ; 0A
- D 0 - I - 0x010A47 04:8A37: F5        .byte $F5, $03   ; 0B



_off001_8A39_80:
- D 0 - I - 0x010A49 04:8A39: 0A        .byte $0A   ; spr counter
- D 0 - I - 0x010A4A 04:8A3A: 61        .byte $61   ; index for YX data
- D 0 - I - 0x010A4B 04:8A3B: E2        .byte $E2, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x010A4D 04:8A3D: E3        .byte $E3, $03   ; 01
- D 0 - I - 0x010A4F 04:8A3F: FA        .byte $FA, $03   ; 02
- D 0 - I - 0x010A51 04:8A41: E5        .byte $E5, $03   ; 03
- D 0 - I - 0x010A53 04:8A43: E6        .byte $E6, $03   ; 04
- D 0 - I - 0x010A55 04:8A45: F9        .byte $F9, $03   ; 05
- D 0 - I - 0x010A57 04:8A47: E8        .byte $E8, $03   ; 06
- D 0 - I - 0x010A59 04:8A49: E9        .byte $E9, $03   ; 07
- D 0 - I - 0x010A5B 04:8A4B: EA        .byte $EA, $03   ; 08
- D 0 - I - 0x010A5D 04:8A4D: EB        .byte $EB, $03   ; 09
- D 0 - I - 0x010A5F 04:8A4F: F8        .byte $F8, $03   ; 0A



_off001_8A51_81:
- D 0 - I - 0x010A61 04:8A51: 08        .byte $08   ; spr counter
- D 0 - I - 0x010A62 04:8A52: 2A        .byte $2A   ; index for YX data
- D 0 - I - 0x010A63 04:8A53: E0        .byte $E0, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010A65 04:8A55: E1        .byte $E1, $02   ; 01
- D 0 - I - 0x010A67 04:8A57: E2        .byte $E2, $02   ; 02
- D 0 - I - 0x010A69 04:8A59: E3        .byte $E3, $02   ; 03
- D 0 - I - 0x010A6B 04:8A5B: E5        .byte $E5, $02   ; 04
- D 0 - I - 0x010A6D 04:8A5D: E6        .byte $E6, $02   ; 05
- D 0 - I - 0x010A6F 04:8A5F: E7        .byte $E7, $02   ; 06
- D 0 - I - 0x010A71 04:8A61: E8        .byte $E8, $02   ; 07
- D 0 - I - 0x010A73 04:8A63: E4        .byte $E4, $02   ; 08



_off001_8A65_82:
- D 0 - I - 0x010A75 04:8A65: 08        .byte $08   ; spr counter
- D 0 - I - 0x010A76 04:8A66: 66        .byte $66   ; index for YX data
- D 0 - I - 0x010A77 04:8A67: E0        .byte $E0, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010A79 04:8A69: E1        .byte $E1, $02   ; 01
- D 0 - I - 0x010A7B 04:8A6B: E2        .byte $E2, $02   ; 02
- D 0 - I - 0x010A7D 04:8A6D: E9        .byte $E9, $02   ; 03
- D 0 - I - 0x010A7F 04:8A6F: EA        .byte $EA, $02   ; 04
- D 0 - I - 0x010A81 04:8A71: EB        .byte $EB, $02   ; 05
- D 0 - I - 0x010A83 04:8A73: EC        .byte $EC, $02   ; 06
- D 0 - I - 0x010A85 04:8A75: ED        .byte $ED, $02   ; 07
- D 0 - I - 0x010A87 04:8A77: EE        .byte $EE, $02   ; 08



_off001_8A79_83:
- D 0 - I - 0x010A89 04:8A79: 08        .byte $08   ; spr counter
- D 0 - I - 0x010A8A 04:8A7A: 2A        .byte $2A   ; index for YX data
- D 0 - I - 0x010A8B 04:8A7B: E0        .byte $E0, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010A8D 04:8A7D: E1        .byte $E1, $02   ; 01
- D 0 - I - 0x010A8F 04:8A7F: E2        .byte $E2, $02   ; 02
- D 0 - I - 0x010A91 04:8A81: EF        .byte $EF, $02   ; 03
- D 0 - I - 0x010A93 04:8A83: F1        .byte $F1, $02   ; 04
- D 0 - I - 0x010A95 04:8A85: F2        .byte $F2, $02   ; 05
- D 0 - I - 0x010A97 04:8A87: F3        .byte $F3, $02   ; 06
- D 0 - I - 0x010A99 04:8A89: F4        .byte $F4, $02   ; 07
- D 0 - I - 0x010A9B 04:8A8B: F0        .byte $F0, $02   ; 08



_off001_8A8D_84:
- D 0 - I - 0x010A9D 04:8A8D: 08        .byte $08   ; spr counter
- D 0 - I - 0x010A9E 04:8A8E: 68        .byte $68   ; index for YX data
- D 0 - I - 0x010A9F 04:8A8F: F5        .byte $F5, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010AA1 04:8A91: F6        .byte $F6, $02   ; 01
- D 0 - I - 0x010AA3 04:8A93: F7        .byte $F7, $02   ; 02
- D 0 - I - 0x010AA5 04:8A95: F9        .byte $F9, $02   ; 03
- D 0 - I - 0x010AA7 04:8A97: FA        .byte $FA, $02   ; 04
- D 0 - I - 0x010AA9 04:8A99: FB        .byte $FB, $02   ; 05
- D 0 - I - 0x010AAB 04:8A9B: F8        .byte $F8, $02   ; 06
- D 0 - I - 0x010AAD 04:8A9D: FC        .byte $FC, $02   ; 07
- D 0 - I - 0x010AAF 04:8A9F: FD        .byte $FD, $02   ; 08



_off001_8AA1_85:
- D 0 - I - 0x010AB1 04:8AA1: 08        .byte $08   ; spr counter
- D 0 - I - 0x010AB2 04:8AA2: 69        .byte $69   ; index for YX data
- D 0 - I - 0x010AB3 04:8AA3: F5        .byte $F5, $42   ; 00 spr_T, spr_A
- D 0 - I - 0x010AB5 04:8AA5: F6        .byte $F6, $42   ; 01
- D 0 - I - 0x010AB7 04:8AA7: F7        .byte $F7, $42   ; 02
- D 0 - I - 0x010AB9 04:8AA9: F9        .byte $F9, $42   ; 03
- D 0 - I - 0x010ABB 04:8AAB: FA        .byte $FA, $42   ; 04
- D 0 - I - 0x010ABD 04:8AAD: FB        .byte $FB, $42   ; 05
- D 0 - I - 0x010ABF 04:8AAF: F8        .byte $F8, $42   ; 06
- D 0 - I - 0x010AC1 04:8AB1: FC        .byte $FC, $42   ; 07
- D 0 - I - 0x010AC3 04:8AB3: FD        .byte $FD, $42   ; 08



_off001_8AB5_86:
- D 0 - I - 0x010AC5 04:8AB5: 08        .byte $08   ; spr counter
- D 0 - I - 0x010AC6 04:8AB6: 6B        .byte $6B   ; index for YX data
- D 0 - I - 0x010AC7 04:8AB7: F9        .byte $F9, $82   ; 00 spr_T, spr_A
- D 0 - I - 0x010AC9 04:8AB9: FA        .byte $FA, $82   ; 01
- D 0 - I - 0x010ACB 04:8ABB: FB        .byte $FB, $82   ; 02
- D 0 - I - 0x010ACD 04:8ABD: FC        .byte $FC, $82   ; 03
- D 0 - I - 0x010ACF 04:8ABF: F5        .byte $F5, $82   ; 04
- D 0 - I - 0x010AD1 04:8AC1: F6        .byte $F6, $82   ; 05
- D 0 - I - 0x010AD3 04:8AC3: F7        .byte $F7, $82   ; 06
- D 0 - I - 0x010AD5 04:8AC5: F8        .byte $F8, $82   ; 07
- D 0 - I - 0x010AD7 04:8AC7: FD        .byte $FD, $82   ; 08



_off001_8AC9_87:
- D 0 - I - 0x010AD9 04:8AC9: 08        .byte $08   ; spr counter
- D 0 - I - 0x010ADA 04:8ACA: 6C        .byte $6C   ; index for YX data
- D 0 - I - 0x010ADB 04:8ACB: F9        .byte $F9, $C2   ; 00 spr_T, spr_A
- D 0 - I - 0x010ADD 04:8ACD: FA        .byte $FA, $C2   ; 01
- D 0 - I - 0x010ADF 04:8ACF: FB        .byte $FB, $C2   ; 02
- D 0 - I - 0x010AE1 04:8AD1: FC        .byte $FC, $C2   ; 03
- D 0 - I - 0x010AE3 04:8AD3: F5        .byte $F5, $C2   ; 04
- D 0 - I - 0x010AE5 04:8AD5: F6        .byte $F6, $C2   ; 05
- D 0 - I - 0x010AE7 04:8AD7: F7        .byte $F7, $C2   ; 06
- D 0 - I - 0x010AE9 04:8AD9: F8        .byte $F8, $C2   ; 07
- D 0 - I - 0x010AEB 04:8ADB: FD        .byte $FD, $C2   ; 08



_off001_8ADD_88:
- D 0 - I - 0x010AED 04:8ADD: 0A        .byte $0A   ; spr counter
- D 0 - I - 0x010AEE 04:8ADE: 46        .byte $46   ; index for YX data
- D 0 - I - 0x010AEF 04:8ADF: E0        .byte $E0, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010AF1 04:8AE1: E1        .byte $E1, $02   ; 01
- D 0 - I - 0x010AF3 04:8AE3: E2        .byte $E2, $02   ; 02
- D 0 - I - 0x010AF5 04:8AE5: E3        .byte $E3, $02   ; 03
- D 0 - I - 0x010AF7 04:8AE7: E4        .byte $E4, $02   ; 04
- D 0 - I - 0x010AF9 04:8AE9: E5        .byte $E5, $02   ; 05
- D 0 - I - 0x010AFB 04:8AEB: E5        .byte $E5, $02   ; 06
- D 0 - I - 0x010AFD 04:8AED: E5        .byte $E5, $02   ; 07
- D 0 - I - 0x010AFF 04:8AEF: E5        .byte $E5, $02   ; 08
- D 0 - I - 0x010B01 04:8AF1: E6        .byte $E6, $02   ; 09
- D 0 - I - 0x010B03 04:8AF3: E6        .byte $E6, $42   ; 0A



_off001_8AF5_89:
- D 0 - I - 0x010B05 04:8AF5: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x010B06 04:8AF6: 47        .byte $47   ; index for YX data
- D 0 - I - 0x010B07 04:8AF7: E7        .byte $E7, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010B09 04:8AF9: E8        .byte $E8, $02   ; 01
- D 0 - I - 0x010B0B 04:8AFB: E9        .byte $E9, $02   ; 02
- D 0 - I - 0x010B0D 04:8AFD: EA        .byte $EA, $02   ; 03
- D 0 - I - 0x010B0F 04:8AFF: EB        .byte $EB, $02   ; 04
- D 0 - I - 0x010B11 04:8B01: EC        .byte $EC, $02   ; 05
- D 0 - I - 0x010B13 04:8B03: ED        .byte $ED, $02   ; 06
- D 0 - I - 0x010B15 04:8B05: EE        .byte $EE, $02   ; 07
- D 0 - I - 0x010B17 04:8B07: EE        .byte $EE, $82   ; 08
- D 0 - I - 0x010B19 04:8B09: EE        .byte $EE, $42   ; 09
- D 0 - I - 0x010B1B 04:8B0B: EF        .byte $EF, $02   ; 0A
- D 0 - I - 0x010B1D 04:8B0D: EF        .byte $EF, $42   ; 0B



_off001_8B0F_8A:
- D 0 - I - 0x010B1F 04:8B0F: 0A        .byte $0A   ; spr counter
- D 0 - I - 0x010B20 04:8B10: 70        .byte $70   ; index for YX data
- D 0 - I - 0x010B21 04:8B11: D0        .byte $D0, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x010B23 04:8B13: D2        .byte $D2, $03   ; 01
- D 0 - I - 0x010B25 04:8B15: D3        .byte $D3, $03   ; 02
- D 0 - I - 0x010B27 04:8B17: D4        .byte $D4, $03   ; 03
- D 0 - I - 0x010B29 04:8B19: D5        .byte $D5, $03   ; 04
- D 0 - I - 0x010B2B 04:8B1B: D7        .byte $D7, $03   ; 05
- D 0 - I - 0x010B2D 04:8B1D: D8        .byte $D8, $03   ; 06
- D 0 - I - 0x010B2F 04:8B1F: D9        .byte $D9, $03   ; 07
- D 0 - I - 0x010B31 04:8B21: DA        .byte $DA, $03   ; 08
- D 0 - I - 0x010B33 04:8B23: D1        .byte $D1, $03   ; 09
- D 0 - I - 0x010B35 04:8B25: D6        .byte $D6, $03   ; 0A



_off001_8B27_8B:
- D 0 - I - 0x010B37 04:8B27: 0A        .byte $0A   ; spr counter
- D 0 - I - 0x010B38 04:8B28: 72        .byte $72   ; index for YX data
- D 0 - I - 0x010B39 04:8B29: DC        .byte $DC, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x010B3B 04:8B2B: DD        .byte $DD, $03   ; 01
- D 0 - I - 0x010B3D 04:8B2D: E0        .byte $E0, $03   ; 02
- D 0 - I - 0x010B3F 04:8B2F: E1        .byte $E1, $03   ; 03
- D 0 - I - 0x010B41 04:8B31: DE        .byte $DE, $03   ; 04
- D 0 - I - 0x010B43 04:8B33: E2        .byte $E2, $03   ; 05
- D 0 - I - 0x010B45 04:8B35: DB        .byte $DB, $03   ; 06
- D 0 - I - 0x010B47 04:8B37: D2        .byte $D2, $03   ; 07
- D 0 - I - 0x010B49 04:8B39: D7        .byte $D7, $03   ; 08
- D 0 - I - 0x010B4B 04:8B3B: DF        .byte $DF, $03   ; 09
- D 0 - I - 0x010B4D 04:8B3D: E3        .byte $E3, $03   ; 0A



_off001_8B3F_8C:
- D 0 - I - 0x010B4F 04:8B3F: 09        .byte $09   ; spr counter
- D 0 - I - 0x010B50 04:8B40: 74        .byte $74   ; index for YX data
- D 0 - I - 0x010B51 04:8B41: E4        .byte $E4, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x010B53 04:8B43: E5        .byte $E5, $03   ; 01
- D 0 - I - 0x010B55 04:8B45: E6        .byte $E6, $03   ; 02
- D 0 - I - 0x010B57 04:8B47: E8        .byte $E8, $03   ; 03
- D 0 - I - 0x010B59 04:8B49: E9        .byte $E9, $03   ; 04
- D 0 - I - 0x010B5B 04:8B4B: EA        .byte $EA, $03   ; 05
- D 0 - I - 0x010B5D 04:8B4D: D2        .byte $D2, $03   ; 06
- D 0 - I - 0x010B5F 04:8B4F: D7        .byte $D7, $03   ; 07
- D 0 - I - 0x010B61 04:8B51: E7        .byte $E7, $03   ; 08
- D 0 - I - 0x010B63 04:8B53: EB        .byte $EB, $03   ; 09



_off001_8B55_8D:
- D 0 - I - 0x010B65 04:8B55: 01        .byte $01   ; spr counter
- D 0 - I - 0x010B66 04:8B56: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010B67 04:8B57: EC        .byte $EC, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x010B69 04:8B59: ED        .byte $ED, $03   ; 01



_off001_8B5B_8E:
- D 0 - I - 0x010B6B 04:8B5B: 01        .byte $01   ; spr counter
- D 0 - I - 0x010B6C 04:8B5C: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010B6D 04:8B5D: EE        .byte $EE, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x010B6F 04:8B5F: EF        .byte $EF, $03   ; 01



_off001_8B61_8F:
- D 0 - I - 0x010B71 04:8B61: 03        .byte $03   ; spr counter
- D 0 - I - 0x010B72 04:8B62: 42        .byte $42   ; index for YX data
- D 0 - I - 0x010B73 04:8B63: C2        .byte $C2, $83   ; 00 spr_T, spr_A
- D 0 - I - 0x010B75 04:8B65: C3        .byte $C3, $83   ; 01
- D 0 - I - 0x010B77 04:8B67: C0        .byte $C0, $83   ; 02
- D 0 - I - 0x010B79 04:8B69: C1        .byte $C1, $83   ; 03



_off001_8B6B_90:
- D 0 - I - 0x010B7B 04:8B6B: 03        .byte $03   ; spr counter
- D 0 - I - 0x010B7C 04:8B6C: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010B7D 04:8B6D: CA        .byte $CA, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010B7F 04:8B6F: CB        .byte $CB, $02   ; 01
- D 0 - I - 0x010B81 04:8B71: CA        .byte $CA, $82   ; 02
- D 0 - I - 0x010B83 04:8B73: CB        .byte $CB, $82   ; 03



_off001_8B75_91:
- D 0 - I - 0x010B85 04:8B75: 04        .byte $04   ; spr counter
- D 0 - I - 0x010B86 04:8B76: 76        .byte $76   ; index for YX data
- D 0 - I - 0x010B87 04:8B77: D2        .byte $D2, $80   ; 00 spr_T, spr_A
- D 0 - I - 0x010B89 04:8B79: D3        .byte $D3, $80   ; 01
- D 0 - I - 0x010B8B 04:8B7B: D4        .byte $D4, $80   ; 02
- D 0 - I - 0x010B8D 04:8B7D: D0        .byte $D0, $80   ; 03
- D 0 - I - 0x010B8F 04:8B7F: D1        .byte $D1, $80   ; 04



_off001_8B81_92:
- D 0 - I - 0x010B91 04:8B81: 06        .byte $06   ; spr counter
- D 0 - I - 0x010B92 04:8B82: 78        .byte $78   ; index for YX data
- D 0 - I - 0x010B93 04:8B83: DD        .byte $DD, $82   ; 00 spr_T, spr_A
- D 0 - I - 0x010B95 04:8B85: DE        .byte $DE, $82   ; 01
- D 0 - I - 0x010B97 04:8B87: DB        .byte $DB, $82   ; 02
- D 0 - I - 0x010B99 04:8B89: DC        .byte $DC, $82   ; 03
- D 0 - I - 0x010B9B 04:8B8B: D2        .byte $D2, $80   ; 04
- D 0 - I - 0x010B9D 04:8B8D: D3        .byte $D3, $80   ; 05
- D 0 - I - 0x010B9F 04:8B8F: D4        .byte $D4, $80   ; 06



_off001_8B91_93:
- - - - - - 0x010BA1 04:8B91: 03        .byte $03   ; spr counter
- - - - - - 0x010BA2 04:8B92: 26        .byte $26   ; index for YX data
- - - - - - 0x010BA3 04:8B93: E2        .byte $E2, $80   ; 00 spr_T, spr_A
- - - - - - 0x010BA5 04:8B95: E3        .byte $E3, $80   ; 01
- - - - - - 0x010BA7 04:8B97: E4        .byte $E4, $80   ; 02
- - - - - - 0x010BA9 04:8B99: E5        .byte $E5, $80   ; 03



_off001_8B9B_94:
- - - - - - 0x010BAB 04:8B9B: 03        .byte $03   ; spr counter
- - - - - - 0x010BAC 04:8B9C: 26        .byte $26   ; index for YX data
- - - - - - 0x010BAD 04:8B9D: EC        .byte $EC, $82   ; 00 spr_T, spr_A
- - - - - - 0x010BAF 04:8B9F: EB        .byte $EB, $02   ; 01
- - - - - - 0x010BB1 04:8BA1: EA        .byte $EA, $82   ; 02
- - - - - - 0x010BB3 04:8BA3: EB        .byte $EB, $82   ; 03



_off001_8BA5_95:
- D 0 - I - 0x010BB5 04:8BA5: 05        .byte $05   ; spr counter
- D 0 - I - 0x010BB6 04:8BA6: 3E        .byte $3E   ; index for YX data
- D 0 - I - 0x010BB7 04:8BA7: FC        .byte $FC, $80   ; 00 spr_T, spr_A
- D 0 - I - 0x010BB9 04:8BA9: FD        .byte $FD, $80   ; 01
- D 0 - I - 0x010BBB 04:8BAB: F9        .byte $F9, $80   ; 02
- D 0 - I - 0x010BBD 04:8BAD: FA        .byte $FA, $80   ; 03
- D 0 - I - 0x010BBF 04:8BAF: FB        .byte $FB, $80   ; 04
- D 0 - I - 0x010BC1 04:8BB1: FE        .byte $FE, $80   ; 05



_off001_8BB3_96:
- D 0 - I - 0x010BC3 04:8BB3: 04        .byte $04   ; spr counter
- D 0 - I - 0x010BC4 04:8BB4: 82        .byte $82   ; index for YX data
- D 0 - I - 0x010BC5 04:8BB5: E2        .byte $E2, $82   ; 00 spr_T, spr_A
- D 0 - I - 0x010BC7 04:8BB7: E3        .byte $E3, $82   ; 01
- D 0 - I - 0x010BC9 04:8BB9: E0        .byte $E0, $82   ; 02
- D 0 - I - 0x010BCB 04:8BBB: E1        .byte $E1, $82   ; 03
- D 0 - I - 0x010BCD 04:8BBD: E4        .byte $E4, $82   ; 04



_off001_8BBF_97:
- D 0 - I - 0x010BCF 04:8BBF: 03        .byte $03   ; spr counter
- D 0 - I - 0x010BD0 04:8BC0: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010BD1 04:8BC1: ED        .byte $ED, $80   ; 00 spr_T, spr_A
- D 0 - I - 0x010BD3 04:8BC3: ED        .byte $ED, $C0   ; 01
- D 0 - I - 0x010BD5 04:8BC5: EC        .byte $EC, $80   ; 02
- D 0 - I - 0x010BD7 04:8BC7: EC        .byte $EC, $C0   ; 03



_off001_8BC9_98:
- D 0 - I - 0x010BD9 04:8BC9: 00        .byte $00   ; spr counter
- D 0 - I - 0x010BDA 04:8BCA: 14        .byte $14   ; index for YX data
- D 0 - I - 0x010BDB 04:8BCB: 9C        .byte $9C, $81   ; 00 spr_T, spr_A



_off001_8BCD_99:
- D 0 - I - 0x010BDD 04:8BCD: 0A        .byte $0A   ; spr counter
- D 0 - I - 0x010BDE 04:8BCE: 68        .byte $68   ; index for YX data
- D 0 - I - 0x010BDF 04:8BCF: C7        .byte $C7, $83   ; 00 spr_T, spr_A
- D 0 - I - 0x010BE1 04:8BD1: C8        .byte $C8, $83   ; 01
- D 0 - I - 0x010BE3 04:8BD3: C9        .byte $C9, $83   ; 02
- D 0 - I - 0x010BE5 04:8BD5: C3        .byte $C3, $83   ; 03
- D 0 - I - 0x010BE7 04:8BD7: C4        .byte $C4, $83   ; 04
- D 0 - I - 0x010BE9 04:8BD9: C5        .byte $C5, $83   ; 05
- D 0 - I - 0x010BEB 04:8BDB: CA        .byte $CA, $83   ; 06
- D 0 - I - 0x010BED 04:8BDD: C6        .byte $C6, $83   ; 07
- D 0 - I - 0x010BEF 04:8BDF: C1        .byte $C1, $83   ; 08
- D 0 - I - 0x010BF1 04:8BE1: C2        .byte $C2, $83   ; 09
- D 0 - I - 0x010BF3 04:8BE3: C0        .byte $C0, $83   ; 0A



_off001_8BE5_9A:
- D 0 - I - 0x010BF5 04:8BE5: 07        .byte $07   ; spr counter
- D 0 - I - 0x010BF6 04:8BE6: 7A        .byte $7A   ; index for YX data
- D 0 - I - 0x010BF7 04:8BE7: D6        .byte $D6, $82   ; 00 spr_T, spr_A
- D 0 - I - 0x010BF9 04:8BE9: D7        .byte $D7, $82   ; 01
- D 0 - I - 0x010BFB 04:8BEB: D3        .byte $D3, $82   ; 02
- D 0 - I - 0x010BFD 04:8BED: D4        .byte $D4, $82   ; 03
- D 0 - I - 0x010BFF 04:8BEF: D5        .byte $D5, $82   ; 04
- D 0 - I - 0x010C01 04:8BF1: D0        .byte $D0, $82   ; 05
- D 0 - I - 0x010C03 04:8BF3: D1        .byte $D1, $82   ; 06
- D 0 - I - 0x010C05 04:8BF5: D2        .byte $D2, $82   ; 07



_off001_8BF7_9B:
- D 0 - I - 0x010C07 04:8BF7: 0D        .byte $0D   ; spr counter
- D 0 - I - 0x010C08 04:8BF8: 5A        .byte $5A   ; index for YX data
- D 0 - I - 0x010C09 04:8BF9: DA        .byte $DA, $83   ; 00 spr_T, spr_A
- D 0 - I - 0x010C0B 04:8BFB: DB        .byte $DB, $83   ; 01
- D 0 - I - 0x010C0D 04:8BFD: DC        .byte $DC, $83   ; 02
- D 0 - I - 0x010C0F 04:8BFF: D7        .byte $D7, $83   ; 03
- D 0 - I - 0x010C11 04:8C01: D8        .byte $D8, $83   ; 04
- D 0 - I - 0x010C13 04:8C03: DE        .byte $DE, $83   ; 05
- D 0 - I - 0x010C15 04:8C05: D2        .byte $D2, $83   ; 06
- D 0 - I - 0x010C17 04:8C07: D5        .byte $D5, $83   ; 07
- D 0 - I - 0x010C19 04:8C09: D6        .byte $D6, $83   ; 08
- D 0 - I - 0x010C1B 04:8C0B: CF        .byte $CF, $83   ; 09
- D 0 - I - 0x010C1D 04:8C0D: D0        .byte $D0, $83   ; 0A
- D 0 - I - 0x010C1F 04:8C0F: D3        .byte $D3, $83   ; 0B
- D 0 - I - 0x010C21 04:8C11: DD        .byte $DD, $83   ; 0C
- D 0 - I - 0x010C23 04:8C13: CE        .byte $CE, $83   ; 0D



_off001_8C15_9C:
- D 0 - I - 0x010C25 04:8C15: 05        .byte $05   ; spr counter
- D 0 - I - 0x010C26 04:8C16: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010C27 04:8C17: D6        .byte $D6, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010C29 04:8C19: D7        .byte $D7, $00   ; 01
- D 0 - I - 0x010C2B 04:8C1B: D8        .byte $D8, $00   ; 02
- D 0 - I - 0x010C2D 04:8C1D: D8        .byte $D8, $40   ; 03
- D 0 - I - 0x010C2F 04:8C1F: D4        .byte $D4, $00   ; 04
- D 0 - I - 0x010C31 04:8C21: D5        .byte $D5, $00   ; 05



_off001_8C23_9D:
- D 0 - I - 0x010C33 04:8C23: 09        .byte $09   ; spr counter
- D 0 - I - 0x010C34 04:8C24: AC        .byte $AC   ; index for YX data
- D 0 - I - 0x010C35 04:8C25: E8        .byte $E8, $83   ; 00 spr_T, spr_A
- D 0 - I - 0x010C37 04:8C27: E9        .byte $E9, $83   ; 01
- D 0 - I - 0x010C39 04:8C29: EA        .byte $EA, $83   ; 02
- D 0 - I - 0x010C3B 04:8C2B: E4        .byte $E4, $83   ; 03
- D 0 - I - 0x010C3D 04:8C2D: E5        .byte $E5, $83   ; 04
- D 0 - I - 0x010C3F 04:8C2F: E6        .byte $E6, $83   ; 05
- D 0 - I - 0x010C41 04:8C31: EB        .byte $EB, $83   ; 06
- D 0 - I - 0x010C43 04:8C33: D7        .byte $D7, $83   ; 07
- D 0 - I - 0x010C45 04:8C35: D2        .byte $D2, $83   ; 08
- D 0 - I - 0x010C47 04:8C37: E7        .byte $E7, $83   ; 09



_off001_8C39_9E:
- D 0 - I - 0x010C49 04:8C39: 13        .byte $13   ; spr counter
- D 0 - I - 0x010C4A 04:8C3A: 44        .byte $44   ; index for YX data
- D 0 - I - 0x010C4B 04:8C3B: D4        .byte $D4, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010C4D 04:8C3D: D5        .byte $D5, $02   ; 01
- D 0 - I - 0x010C4F 04:8C3F: DB        .byte $DB, $02   ; 02
- D 0 - I - 0x010C51 04:8C41: DC        .byte $DC, $02   ; 03
- D 0 - I - 0x010C53 04:8C43: D2        .byte $D2, $02   ; 04
- D 0 - I - 0x010C55 04:8C45: D3        .byte $D3, $02   ; 05
- D 0 - I - 0x010C57 04:8C47: D6        .byte $D6, $02   ; 06
- D 0 - I - 0x010C59 04:8C49: D7        .byte $D7, $02   ; 07
- D 0 - I - 0x010C5B 04:8C4B: D8        .byte $D8, $02   ; 08
- D 0 - I - 0x010C5D 04:8C4D: D9        .byte $D9, $02   ; 09
- D 0 - I - 0x010C5F 04:8C4F: DA        .byte $DA, $02   ; 0A
- D 0 - I - 0x010C61 04:8C51: DD        .byte $DD, $02   ; 0B
- D 0 - I - 0x010C63 04:8C53: DE        .byte $DE, $02   ; 0C
- D 0 - I - 0x010C65 04:8C55: DF        .byte $DF, $02   ; 0D
- D 0 - I - 0x010C67 04:8C57: E0        .byte $E0, $02   ; 0E
- D 0 - I - 0x010C69 04:8C59: E1        .byte $E1, $02   ; 0F
- D 0 - I - 0x010C6B 04:8C5B: E2        .byte $E2, $02   ; 10
- D 0 - I - 0x010C6D 04:8C5D: E3        .byte $E3, $02   ; 11
- D 0 - I - 0x010C6F 04:8C5F: D0        .byte $D0, $02   ; 12
- D 0 - I - 0x010C71 04:8C61: D1        .byte $D1, $02   ; 13



_off001_8C63_9F:
- D 0 - I - 0x010C73 04:8C63: 11        .byte $11   ; spr counter
- D 0 - I - 0x010C74 04:8C64: 7E        .byte $7E   ; index for YX data
- D 0 - I - 0x010C75 04:8C65: E6        .byte $E6, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010C77 04:8C67: E7        .byte $E7, $02   ; 01
- D 0 - I - 0x010C79 04:8C69: E8        .byte $E8, $02   ; 02
- D 0 - I - 0x010C7B 04:8C6B: E9        .byte $E9, $02   ; 03
- D 0 - I - 0x010C7D 04:8C6D: EA        .byte $EA, $02   ; 04
- D 0 - I - 0x010C7F 04:8C6F: EB        .byte $EB, $02   ; 05
- D 0 - I - 0x010C81 04:8C71: EC        .byte $EC, $02   ; 06
- D 0 - I - 0x010C83 04:8C73: ED        .byte $ED, $02   ; 07
- D 0 - I - 0x010C85 04:8C75: EE        .byte $EE, $02   ; 08
- D 0 - I - 0x010C87 04:8C77: EF        .byte $EF, $02   ; 09
- D 0 - I - 0x010C89 04:8C79: F0        .byte $F0, $02   ; 0A
- D 0 - I - 0x010C8B 04:8C7B: F1        .byte $F1, $02   ; 0B
- D 0 - I - 0x010C8D 04:8C7D: F2        .byte $F2, $02   ; 0C
- D 0 - I - 0x010C8F 04:8C7F: F3        .byte $F3, $02   ; 0D
- D 0 - I - 0x010C91 04:8C81: F4        .byte $F4, $02   ; 0E
- D 0 - I - 0x010C93 04:8C83: F5        .byte $F5, $02   ; 0F
- D 0 - I - 0x010C95 04:8C85: E4        .byte $E4, $02   ; 10
- D 0 - I - 0x010C97 04:8C87: E5        .byte $E5, $02   ; 11



_off001_8C89_A0:
- D 0 - I - 0x010C99 04:8C89: 11        .byte $11   ; spr counter
- D 0 - I - 0x010C9A 04:8C8A: 7E        .byte $7E   ; index for YX data
- D 0 - I - 0x010C9B 04:8C8B: E6        .byte $E6, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010C9D 04:8C8D: E7        .byte $E7, $02   ; 01
- D 0 - I - 0x010C9F 04:8C8F: E8        .byte $E8, $02   ; 02
- D 0 - I - 0x010CA1 04:8C91: E9        .byte $E9, $02   ; 03
- D 0 - I - 0x010CA3 04:8C93: F7        .byte $F7, $02   ; 04
- D 0 - I - 0x010CA5 04:8C95: F8        .byte $F8, $02   ; 05
- D 0 - I - 0x010CA7 04:8C97: EC        .byte $EC, $02   ; 06
- D 0 - I - 0x010CA9 04:8C99: ED        .byte $ED, $02   ; 07
- D 0 - I - 0x010CAB 04:8C9B: EE        .byte $EE, $02   ; 08
- D 0 - I - 0x010CAD 04:8C9D: EF        .byte $EF, $02   ; 09
- D 0 - I - 0x010CAF 04:8C9F: F9        .byte $F9, $02   ; 0A
- D 0 - I - 0x010CB1 04:8CA1: FA        .byte $FA, $02   ; 0B
- D 0 - I - 0x010CB3 04:8CA3: F2        .byte $F2, $02   ; 0C
- D 0 - I - 0x010CB5 04:8CA5: F3        .byte $F3, $02   ; 0D
- D 0 - I - 0x010CB7 04:8CA7: F4        .byte $F4, $02   ; 0E
- D 0 - I - 0x010CB9 04:8CA9: F5        .byte $F5, $02   ; 0F
- D 0 - I - 0x010CBB 04:8CAB: E4        .byte $E4, $02   ; 10
- D 0 - I - 0x010CBD 04:8CAD: F6        .byte $F6, $02   ; 11



_off001_8CAF_A1:
- D 0 - I - 0x010CBF 04:8CAF: 0F        .byte $0F   ; spr counter
- D 0 - I - 0x010CC0 04:8CB0: 40        .byte $40   ; index for YX data
- D 0 - I - 0x010CC1 04:8CB1: D0        .byte $D0, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010CC3 04:8CB3: D1        .byte $D1, $02   ; 01
- D 0 - I - 0x010CC5 04:8CB5: D3        .byte $D3, $02   ; 02
- D 0 - I - 0x010CC7 04:8CB7: D4        .byte $D4, $02   ; 03
- D 0 - I - 0x010CC9 04:8CB9: D7        .byte $D7, $02   ; 04
- D 0 - I - 0x010CCB 04:8CBB: D8        .byte $D8, $02   ; 05
- D 0 - I - 0x010CCD 04:8CBD: D9        .byte $D9, $02   ; 06
- D 0 - I - 0x010CCF 04:8CBF: DA        .byte $DA, $02   ; 07
- D 0 - I - 0x010CD1 04:8CC1: DC        .byte $DC, $02   ; 08
- D 0 - I - 0x010CD3 04:8CC3: DD        .byte $DD, $02   ; 09
- D 0 - I - 0x010CD5 04:8CC5: DE        .byte $DE, $02   ; 0A
- D 0 - I - 0x010CD7 04:8CC7: DF        .byte $DF, $02   ; 0B
- D 0 - I - 0x010CD9 04:8CC9: D2        .byte $D2, $02   ; 0C
- D 0 - I - 0x010CDB 04:8CCB: D5        .byte $D5, $02   ; 0D
- D 0 - I - 0x010CDD 04:8CCD: D6        .byte $D6, $02   ; 0E
- D 0 - I - 0x010CDF 04:8CCF: DB        .byte $DB, $02   ; 0F



_off001_8CD1_A2:
- D 0 - I - 0x010CE1 04:8CD1: 10        .byte $10   ; spr counter
- D 0 - I - 0x010CE2 04:8CD2: 40        .byte $40   ; index for YX data
- D 0 - I - 0x010CE3 04:8CD3: E1        .byte $E1, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010CE5 04:8CD5: E2        .byte $E2, $02   ; 01
- D 0 - I - 0x010CE7 04:8CD7: E4        .byte $E4, $02   ; 02
- D 0 - I - 0x010CE9 04:8CD9: E5        .byte $E5, $02   ; 03
- D 0 - I - 0x010CEB 04:8CDB: E8        .byte $E8, $02   ; 04
- D 0 - I - 0x010CED 04:8CDD: E9        .byte $E9, $02   ; 05
- D 0 - I - 0x010CEF 04:8CDF: EA        .byte $EA, $02   ; 06
- D 0 - I - 0x010CF1 04:8CE1: EB        .byte $EB, $02   ; 07
- D 0 - I - 0x010CF3 04:8CE3: ED        .byte $ED, $02   ; 08
- D 0 - I - 0x010CF5 04:8CE5: EE        .byte $EE, $02   ; 09
- D 0 - I - 0x010CF7 04:8CE7: EF        .byte $EF, $02   ; 0A
- D 0 - I - 0x010CF9 04:8CE9: F0        .byte $F0, $02   ; 0B
- D 0 - I - 0x010CFB 04:8CEB: E3        .byte $E3, $02   ; 0C
- D 0 - I - 0x010CFD 04:8CED: E6        .byte $E6, $02   ; 0D
- D 0 - I - 0x010CFF 04:8CEF: E7        .byte $E7, $02   ; 0E
- D 0 - I - 0x010D01 04:8CF1: EC        .byte $EC, $02   ; 0F
- D 0 - I - 0x010D03 04:8CF3: E0        .byte $E0, $02   ; 10



_off001_8CF5_A3:
- D 0 - I - 0x010D05 04:8CF5: 0E        .byte $0E   ; spr counter
- D 0 - I - 0x010D06 04:8CF6: 80        .byte $80   ; index for YX data
- D 0 - I - 0x010D07 04:8CF7: F1        .byte $F1, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010D09 04:8CF9: F2        .byte $F2, $02   ; 01
- D 0 - I - 0x010D0B 04:8CFB: F3        .byte $F3, $02   ; 02
- D 0 - I - 0x010D0D 04:8CFD: F4        .byte $F4, $02   ; 03
- D 0 - I - 0x010D0F 04:8CFF: F5        .byte $F5, $02   ; 04
- D 0 - I - 0x010D11 04:8D01: F6        .byte $F6, $02   ; 05
- D 0 - I - 0x010D13 04:8D03: F7        .byte $F7, $02   ; 06
- D 0 - I - 0x010D15 04:8D05: F8        .byte $F8, $02   ; 07
- D 0 - I - 0x010D17 04:8D07: F9        .byte $F9, $02   ; 08
- D 0 - I - 0x010D19 04:8D09: FA        .byte $FA, $02   ; 09
- D 0 - I - 0x010D1B 04:8D0B: FB        .byte $FB, $02   ; 0A
- D 0 - I - 0x010D1D 04:8D0D: FC        .byte $FC, $02   ; 0B
- D 0 - I - 0x010D1F 04:8D0F: FD        .byte $FD, $02   ; 0C
- D 0 - I - 0x010D21 04:8D11: FE        .byte $FE, $02   ; 0D
- D 0 - I - 0x010D23 04:8D13: FF        .byte $FF, $02   ; 0E



_off001_8D15_A4:
- D 0 - I - 0x010D25 04:8D15: 00        .byte $00   ; spr counter
- D 0 - I - 0x010D26 04:8D16: 48        .byte $48   ; index for YX data
- D 0 - I - 0x010D27 04:8D17: FE        .byte $FE, $00   ; 00 spr_T, spr_A



_off001_8D19_A5:
- D 0 - I - 0x010D29 04:8D19: 00        .byte $00   ; spr counter
- D 0 - I - 0x010D2A 04:8D1A: 48        .byte $48   ; index for YX data
- D 0 - I - 0x010D2B 04:8D1B: FF        .byte $FF, $00   ; 00 spr_T, spr_A



_off001_8D1D_A6:
- D 0 - I - 0x010D2D 04:8D1D: 03        .byte $03   ; spr counter
- D 0 - I - 0x010D2E 04:8D1E: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010D2F 04:8D1F: C3        .byte $C3, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x010D31 04:8D21: C4        .byte $C4, $03   ; 01
- D 0 - I - 0x010D33 04:8D23: CA        .byte $CA, $03   ; 02
- D 0 - I - 0x010D35 04:8D25: CB        .byte $CB, $03   ; 03



_off001_8D27_A7:
- D 0 - I - 0x010D37 04:8D27: 06        .byte $06   ; spr counter
- D 0 - I - 0x010D38 04:8D28: 86        .byte $86   ; index for YX data
- D 0 - I - 0x010D39 04:8D29: C3        .byte $C3, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x010D3B 04:8D2B: C4        .byte $C4, $03   ; 01
- D 0 - I - 0x010D3D 04:8D2D: CA        .byte $CA, $03   ; 02
- D 0 - I - 0x010D3F 04:8D2F: CB        .byte $CB, $03   ; 03
- D 0 - I - 0x010D41 04:8D31: E1        .byte $E1, $03   ; 04
- D 0 - I - 0x010D43 04:8D33: E2        .byte $E2, $03   ; 05
- D 0 - I - 0x010D45 04:8D35: E3        .byte $E3, $03   ; 06



_off001_8D37_A8:
- D 0 - I - 0x010D47 04:8D37: 09        .byte $09   ; spr counter
- D 0 - I - 0x010D48 04:8D38: 88        .byte $88   ; index for YX data
- D 0 - I - 0x010D49 04:8D39: C0        .byte $C0, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x010D4B 04:8D3B: C1        .byte $C1, $03   ; 01
- D 0 - I - 0x010D4D 04:8D3D: C3        .byte $C3, $03   ; 02
- D 0 - I - 0x010D4F 04:8D3F: C4        .byte $C4, $03   ; 03
- D 0 - I - 0x010D51 04:8D41: C5        .byte $C5, $03   ; 04
- D 0 - I - 0x010D53 04:8D43: C6        .byte $C6, $03   ; 05
- D 0 - I - 0x010D55 04:8D45: CA        .byte $CA, $03   ; 06
- D 0 - I - 0x010D57 04:8D47: CB        .byte $CB, $03   ; 07
- D 0 - I - 0x010D59 04:8D49: CC        .byte $CC, $03   ; 08
- D 0 - I - 0x010D5B 04:8D4B: CD        .byte $CD, $03   ; 09



_off001_8D4D_A9:
- D 0 - I - 0x010D5D 04:8D4D: 09        .byte $09   ; spr counter
- D 0 - I - 0x010D5E 04:8D4E: 8A        .byte $8A   ; index for YX data
- D 0 - I - 0x010D5F 04:8D4F: C3        .byte $C3, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x010D61 04:8D51: C4        .byte $C4, $03   ; 01
- D 0 - I - 0x010D63 04:8D53: CA        .byte $CA, $03   ; 02
- D 0 - I - 0x010D65 04:8D55: CB        .byte $CB, $03   ; 03
- D 0 - I - 0x010D67 04:8D57: E1        .byte $E1, $03   ; 04
- D 0 - I - 0x010D69 04:8D59: E2        .byte $E2, $03   ; 05
- D 0 - I - 0x010D6B 04:8D5B: E3        .byte $E3, $03   ; 06
- D 0 - I - 0x010D6D 04:8D5D: E4        .byte $E4, $03   ; 07
- D 0 - I - 0x010D6F 04:8D5F: E5        .byte $E5, $03   ; 08
- D 0 - I - 0x010D71 04:8D61: E6        .byte $E6, $03   ; 09



_off001_8D63_AA:
- D 0 - I - 0x010D73 04:8D63: 0C        .byte $0C   ; spr counter
- D 0 - I - 0x010D74 04:8D64: 8C        .byte $8C   ; index for YX data
- D 0 - I - 0x010D75 04:8D65: F4        .byte $F4, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x010D77 04:8D67: F7        .byte $F7, $03   ; 01
- D 0 - I - 0x010D79 04:8D69: F5        .byte $F5, $03   ; 02
- D 0 - I - 0x010D7B 04:8D6B: F8        .byte $F8, $03   ; 03
- D 0 - I - 0x010D7D 04:8D6D: F6        .byte $F6, $03   ; 04
- D 0 - I - 0x010D7F 04:8D6F: F9        .byte $F9, $03   ; 05
- D 0 - I - 0x010D81 04:8D71: FA        .byte $FA, $03   ; 06
- D 0 - I - 0x010D83 04:8D73: FB        .byte $FB, $03   ; 07
- D 0 - I - 0x010D85 04:8D75: FC        .byte $FC, $03   ; 08
- D 0 - I - 0x010D87 04:8D77: EF        .byte $EF, $03   ; 09
- D 0 - I - 0x010D89 04:8D79: F0        .byte $F0, $03   ; 0A
- D 0 - I - 0x010D8B 04:8D7B: F1        .byte $F1, $03   ; 0B
- D 0 - I - 0x010D8D 04:8D7D: FD        .byte $FD, $00   ; 0C



_off001_8D7F_AB:
- D 0 - I - 0x010D8F 04:8D7F: 10        .byte $10   ; spr counter
- D 0 - I - 0x010D90 04:8D80: 8E        .byte $8E   ; index for YX data
- D 0 - I - 0x010D91 04:8D81: C0        .byte $C0, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x010D93 04:8D83: C1        .byte $C1, $03   ; 01
- D 0 - I - 0x010D95 04:8D85: C2        .byte $C2, $03   ; 02
- D 0 - I - 0x010D97 04:8D87: C3        .byte $C3, $03   ; 03
- D 0 - I - 0x010D99 04:8D89: C4        .byte $C4, $03   ; 04
- D 0 - I - 0x010D9B 04:8D8B: C5        .byte $C5, $03   ; 05
- D 0 - I - 0x010D9D 04:8D8D: C6        .byte $C6, $03   ; 06
- D 0 - I - 0x010D9F 04:8D8F: C7        .byte $C7, $03   ; 07
- D 0 - I - 0x010DA1 04:8D91: C8        .byte $C8, $03   ; 08
- D 0 - I - 0x010DA3 04:8D93: C9        .byte $C9, $03   ; 09
- D 0 - I - 0x010DA5 04:8D95: CA        .byte $CA, $03   ; 0A
- D 0 - I - 0x010DA7 04:8D97: CB        .byte $CB, $03   ; 0B
- D 0 - I - 0x010DA9 04:8D99: CC        .byte $CC, $03   ; 0C
- D 0 - I - 0x010DAB 04:8D9B: CD        .byte $CD, $03   ; 0D
- D 0 - I - 0x010DAD 04:8D9D: CE        .byte $CE, $03   ; 0E
- D 0 - I - 0x010DAF 04:8D9F: CF        .byte $CF, $03   ; 0F
- D 0 - I - 0x010DB1 04:8DA1: E0        .byte $E0, $03   ; 10



_off001_8DA3_AC:
- D 0 - I - 0x010DB3 04:8DA3: 0E        .byte $0E   ; spr counter
- D 0 - I - 0x010DB4 04:8DA4: 90        .byte $90   ; index for YX data
- D 0 - I - 0x010DB5 04:8DA5: C3        .byte $C3, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x010DB7 04:8DA7: C4        .byte $C4, $03   ; 01
- D 0 - I - 0x010DB9 04:8DA9: CA        .byte $CA, $03   ; 02
- D 0 - I - 0x010DBB 04:8DAB: CB        .byte $CB, $03   ; 03
- D 0 - I - 0x010DBD 04:8DAD: E1        .byte $E1, $03   ; 04
- D 0 - I - 0x010DBF 04:8DAF: E2        .byte $E2, $03   ; 05
- D 0 - I - 0x010DC1 04:8DB1: E3        .byte $E3, $03   ; 06
- D 0 - I - 0x010DC3 04:8DB3: E4        .byte $E4, $03   ; 07
- D 0 - I - 0x010DC5 04:8DB5: E5        .byte $E5, $03   ; 08
- D 0 - I - 0x010DC7 04:8DB7: E6        .byte $E6, $03   ; 09
- D 0 - I - 0x010DC9 04:8DB9: E7        .byte $E7, $03   ; 0A
- D 0 - I - 0x010DCB 04:8DBB: E8        .byte $E8, $03   ; 0B
- D 0 - I - 0x010DCD 04:8DBD: E9        .byte $E9, $03   ; 0C
- D 0 - I - 0x010DCF 04:8DBF: EA        .byte $EA, $03   ; 0D
- D 0 - I - 0x010DD1 04:8DC1: EB        .byte $EB, $03   ; 0E



_off001_8DC3_AD:
- D 0 - I - 0x010DD3 04:8DC3: 0F        .byte $0F   ; spr counter
- D 0 - I - 0x010DD4 04:8DC4: 92        .byte $92   ; index for YX data
- D 0 - I - 0x010DD5 04:8DC5: C3        .byte $C3, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x010DD7 04:8DC7: C4        .byte $C4, $03   ; 01
- D 0 - I - 0x010DD9 04:8DC9: CA        .byte $CA, $03   ; 02
- D 0 - I - 0x010DDB 04:8DCB: CB        .byte $CB, $03   ; 03
- D 0 - I - 0x010DDD 04:8DCD: EC        .byte $EC, $03   ; 04
- D 0 - I - 0x010DDF 04:8DCF: ED        .byte $ED, $03   ; 05
- D 0 - I - 0x010DE1 04:8DD1: EE        .byte $EE, $03   ; 06
- D 0 - I - 0x010DE3 04:8DD3: EF        .byte $EF, $03   ; 07
- D 0 - I - 0x010DE5 04:8DD5: F0        .byte $F0, $03   ; 08
- D 0 - I - 0x010DE7 04:8DD7: F1        .byte $F1, $03   ; 09
- D 0 - I - 0x010DE9 04:8DD9: F2        .byte $F2, $03   ; 0A
- D 0 - I - 0x010DEB 04:8DDB: F3        .byte $F3, $03   ; 0B
- D 0 - I - 0x010DED 04:8DDD: CF        .byte $CF, $83   ; 0C
- D 0 - I - 0x010DEF 04:8DDF: E0        .byte $E0, $83   ; 0D
- D 0 - I - 0x010DF1 04:8DE1: C8        .byte $C8, $83   ; 0E
- D 0 - I - 0x010DF3 04:8DE3: C9        .byte $C9, $83   ; 0F



_off001_8DE5_AE:
- D 0 - I - 0x010DF5 04:8DE5: 02        .byte $02   ; spr counter
- D 0 - I - 0x010DF6 04:8DE6: 96        .byte $96   ; index for YX data
- D 0 - I - 0x010DF7 04:8DE7: 85        .byte $85, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010DF9 04:8DE9: 85        .byte $85, $01   ; 01
- D 0 - I - 0x010DFB 04:8DEB: 85        .byte $85, $01   ; 02



_off001_8DED_AF:
- D 0 - I - 0x010DFD 04:8DED: 02        .byte $02   ; spr counter
- D 0 - I - 0x010DFE 04:8DEE: 97        .byte $97   ; index for YX data
- D 0 - I - 0x010DFF 04:8DEF: 85        .byte $85, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010E01 04:8DF1: 85        .byte $85, $01   ; 01
- D 0 - I - 0x010E03 04:8DF3: 85        .byte $85, $01   ; 02



_off001_8DF5_B0:
- D 0 - I - 0x010E05 04:8DF5: 03        .byte $03   ; spr counter
- D 0 - I - 0x010E06 04:8DF6: 98        .byte $98   ; index for YX data
- D 0 - I - 0x010E07 04:8DF7: 71        .byte $71, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010E09 04:8DF9: 71        .byte $71, $01   ; 01
- D 0 - I - 0x010E0B 04:8DFB: 70        .byte $70, $01   ; 02
- D 0 - I - 0x010E0D 04:8DFD: 71        .byte $71, $01   ; 03



_off001_8DFF_B1:
- D 0 - I - 0x010E0F 04:8DFF: 02        .byte $02   ; spr counter
- D 0 - I - 0x010E10 04:8E00: 99        .byte $99   ; index for YX data
- D 0 - I - 0x010E11 04:8E01: 71        .byte $71, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010E13 04:8E03: 71        .byte $71, $01   ; 01
- D 0 - I - 0x010E15 04:8E05: 70        .byte $70, $01   ; 02



_off001_8E07_B2:
- D 0 - I - 0x010E17 04:8E07: 03        .byte $03   ; spr counter
- D 0 - I - 0x010E18 04:8E08: 9A        .byte $9A   ; index for YX data
- D 0 - I - 0x010E19 04:8E09: 71        .byte $71, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010E1B 04:8E0B: 71        .byte $71, $01   ; 01
- D 0 - I - 0x010E1D 04:8E0D: 70        .byte $70, $01   ; 02
- D 0 - I - 0x010E1F 04:8E0F: 71        .byte $71, $01   ; 03



_off001_8E11_B3:
- D 0 - I - 0x010E21 04:8E11: 02        .byte $02   ; spr counter
- D 0 - I - 0x010E22 04:8E12: 9B        .byte $9B   ; index for YX data
- D 0 - I - 0x010E23 04:8E13: 70        .byte $70, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010E25 04:8E15: 71        .byte $71, $01   ; 01
- D 0 - I - 0x010E27 04:8E17: 70        .byte $70, $01   ; 02



_off001_8E19_B4:
- D 0 - I - 0x010E29 04:8E19: 03        .byte $03   ; spr counter
- D 0 - I - 0x010E2A 04:8E1A: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010E2B 04:8E1B: 73        .byte $73, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010E2D 04:8E1D: 73        .byte $73, $40   ; 01
- D 0 - I - 0x010E2F 04:8E1F: 74        .byte $74, $00   ; 02
- D 0 - I - 0x010E31 04:8E21: 74        .byte $74, $40   ; 03



_off001_8E23_B5:
- D 0 - I - 0x010E33 04:8E23: 03        .byte $03   ; spr counter
- D 0 - I - 0x010E34 04:8E24: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010E35 04:8E25: 75        .byte $75, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010E37 04:8E27: 9E        .byte $9E, $00   ; 01
- D 0 - I - 0x010E39 04:8E29: 9E        .byte $9E, $C0   ; 02
- D 0 - I - 0x010E3B 04:8E2B: 75        .byte $75, $C0   ; 03



_off001_8E2D_B6:
- D 0 - I - 0x010E3D 04:8E2D: 03        .byte $03   ; spr counter
- D 0 - I - 0x010E3E 04:8E2E: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010E3F 04:8E2F: 74        .byte $74, $80   ; 00 spr_T, spr_A
- D 0 - I - 0x010E41 04:8E31: 74        .byte $74, $C0   ; 01
- D 0 - I - 0x010E43 04:8E33: 73        .byte $73, $80   ; 02
- D 0 - I - 0x010E45 04:8E35: 73        .byte $73, $C0   ; 03



_off001_8E37_B7:
- D 0 - I - 0x010E47 04:8E37: 03        .byte $03   ; spr counter
- D 0 - I - 0x010E48 04:8E38: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010E49 04:8E39: 9E        .byte $9E, $40   ; 00 spr_T, spr_A
- D 0 - I - 0x010E4B 04:8E3B: 75        .byte $75, $40   ; 01
- D 0 - I - 0x010E4D 04:8E3D: 75        .byte $75, $80   ; 02
- D 0 - I - 0x010E4F 04:8E3F: 9E        .byte $9E, $80   ; 03



_off001_8E41_B8:
- D 0 - I - 0x010E51 04:8E41: 09        .byte $09   ; spr counter
- D 0 - I - 0x010E52 04:8E42: 9C        .byte $9C   ; index for YX data
- D 0 - I - 0x010E53 04:8E43: 27        .byte $27, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010E55 04:8E45: 28        .byte $28, $00   ; 01
- D 0 - I - 0x010E57 04:8E47: 01        .byte $01, $00   ; 02
- D 0 - I - 0x010E59 04:8E49: 0A        .byte $0A, $00   ; 03
- D 0 - I - 0x010E5B 04:8E4B: 0B        .byte $0B, $00   ; 04
- D 0 - I - 0x010E5D 04:8E4D: 6C        .byte $6C, $00   ; 05
- D 0 - I - 0x010E5F 04:8E4F: 6D        .byte $6D, $00   ; 06
- D 0 - I - 0x010E61 04:8E51: 0D        .byte $0D, $00   ; 07
- D 0 - I - 0x010E63 04:8E53: 41        .byte $41, $01   ; 08
- D 0 - I - 0x010E65 04:8E55: 1F        .byte $1F, $81   ; 09



_off001_8E57_B9:
- D 0 - I - 0x010E67 04:8E57: 03        .byte $03   ; spr counter
- D 0 - I - 0x010E68 04:8E58: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010E69 04:8E59: C8        .byte $C8, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010E6B 04:8E5B: C8        .byte $C8, $40   ; 01
- D 0 - I - 0x010E6D 04:8E5D: C9        .byte $C9, $00   ; 02
- D 0 - I - 0x010E6F 04:8E5F: C9        .byte $C9, $40   ; 03



_off001_8E61_BA:
- D 0 - I - 0x010E71 04:8E61: 03        .byte $03   ; spr counter
- D 0 - I - 0x010E72 04:8E62: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010E73 04:8E63: D9        .byte $D9, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010E75 04:8E65: D9        .byte $D9, $40   ; 01
- D 0 - I - 0x010E77 04:8E67: DA        .byte $DA, $00   ; 02
- D 0 - I - 0x010E79 04:8E69: DA        .byte $DA, $40   ; 03



_off001_8E6B_BB:
- D 0 - I - 0x010E7B 04:8E6B: 03        .byte $03   ; spr counter
- D 0 - I - 0x010E7C 04:8E6C: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010E7D 04:8E6D: E8        .byte $E8, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010E7F 04:8E6F: E9        .byte $E9, $00   ; 01
- D 0 - I - 0x010E81 04:8E71: EA        .byte $EA, $00   ; 02
- D 0 - I - 0x010E83 04:8E73: EB        .byte $EB, $00   ; 03



_off001_8E75_BC:
- D 0 - I - 0x010E85 04:8E75: 03        .byte $03   ; spr counter
- D 0 - I - 0x010E86 04:8E76: 26        .byte $26   ; index for YX data
- D 0 - I - 0x010E87 04:8E77: 8C        .byte $8C, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010E89 04:8E79: 8D        .byte $8D, $00   ; 01
- D 0 - I - 0x010E8B 04:8E7B: 8E        .byte $8E, $00   ; 02
- D 0 - I - 0x010E8D 04:8E7D: 8F        .byte $8F, $00   ; 03



_off001_8E7F_BD:
- D 0 - I - 0x010E8F 04:8E7F: 0F        .byte $0F   ; spr counter
- D 0 - I - 0x010E90 04:8E80: 28        .byte $28   ; index for YX data
- D 0 - I - 0x010E91 04:8E81: F5        .byte $F5, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010E93 04:8E83: D7        .byte $D7, $00   ; 01
- D 0 - I - 0x010E95 04:8E85: D8        .byte $D8, $00   ; 02
- D 0 - I - 0x010E97 04:8E87: F5        .byte $F5, $40   ; 03
- D 0 - I - 0x010E99 04:8E89: D9        .byte $D9, $00   ; 04
- D 0 - I - 0x010E9B 04:8E8B: DC        .byte $DC, $00   ; 05
- D 0 - I - 0x010E9D 04:8E8D: DD        .byte $DD, $00   ; 06
- D 0 - I - 0x010E9F 04:8E8F: F0        .byte $F0, $00   ; 07
- D 0 - I - 0x010EA1 04:8E91: F1        .byte $F1, $00   ; 08
- D 0 - I - 0x010EA3 04:8E93: F2        .byte $F2, $00   ; 09
- D 0 - I - 0x010EA5 04:8E95: F3        .byte $F3, $00   ; 0A
- D 0 - I - 0x010EA7 04:8E97: F4        .byte $F4, $00   ; 0B
- D 0 - I - 0x010EA9 04:8E99: DA        .byte $DA, $00   ; 0C
- D 0 - I - 0x010EAB 04:8E9B: DB        .byte $DB, $00   ; 0D
- D 0 - I - 0x010EAD 04:8E9D: DE        .byte $DE, $00   ; 0E
- D 0 - I - 0x010EAF 04:8E9F: DF        .byte $DF, $00   ; 0F



_off001_8EA1_BE:
- D 0 - I - 0x010EB1 04:8EA1: 10        .byte $10   ; spr counter
- D 0 - I - 0x010EB2 04:8EA2: 28        .byte $28   ; index for YX data
- D 0 - I - 0x010EB3 04:8EA3: FA        .byte $FA, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010EB5 04:8EA5: FB        .byte $FB, $00   ; 01
- D 0 - I - 0x010EB7 04:8EA7: DF        .byte $DF, $00   ; 02
- D 0 - I - 0x010EB9 04:8EA9: FA        .byte $FA, $40   ; 03
- D 0 - I - 0x010EBB 04:8EAB: F0        .byte $F0, $00   ; 04
- D 0 - I - 0x010EBD 04:8EAD: F3        .byte $F3, $00   ; 05
- D 0 - I - 0x010EBF 04:8EAF: F4        .byte $F4, $00   ; 06
- D 0 - I - 0x010EC1 04:8EB1: F7        .byte $F7, $00   ; 07
- D 0 - I - 0x010EC3 04:8EB3: F8        .byte $F8, $00   ; 08
- D 0 - I - 0x010EC5 04:8EB5: F9        .byte $F9, $00   ; 09
- D 0 - I - 0x010EC7 04:8EB7: F9        .byte $F9, $40   ; 0A
- D 0 - I - 0x010EC9 04:8EB9: F8        .byte $F8, $40   ; 0B
- D 0 - I - 0x010ECB 04:8EBB: F1        .byte $F1, $00   ; 0C
- D 0 - I - 0x010ECD 04:8EBD: F2        .byte $F2, $00   ; 0D
- D 0 - I - 0x010ECF 04:8EBF: F5        .byte $F5, $00   ; 0E
- D 0 - I - 0x010ED1 04:8EC1: F6        .byte $F6, $00   ; 0F
- D 0 - I - 0x010ED3 04:8EC3: FC        .byte $FC, $00   ; 10



_off001_8EC5_BF:
- D 0 - I - 0x010ED5 04:8EC5: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x010ED6 04:8EC6: 9E        .byte $9E   ; index for YX data
- D 0 - I - 0x010ED7 04:8EC7: 76        .byte $76, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010ED9 04:8EC9: 77        .byte $77, $00   ; 01
- D 0 - I - 0x010EDB 04:8ECB: 78        .byte $78, $00   ; 02
- D 0 - I - 0x010EDD 04:8ECD: 79        .byte $79, $00   ; 03
- D 0 - I - 0x010EDF 04:8ECF: 78        .byte $78, $80   ; 04
- D 0 - I - 0x010EE1 04:8ED1: 78        .byte $78, $C0   ; 05
- D 0 - I - 0x010EE3 04:8ED3: 76        .byte $76, $40   ; 06
- D 0 - I - 0x010EE5 04:8ED5: 77        .byte $77, $40   ; 07
- D 0 - I - 0x010EE7 04:8ED7: 77        .byte $77, $80   ; 08
- D 0 - I - 0x010EE9 04:8ED9: 77        .byte $77, $C0   ; 09
- D 0 - I - 0x010EEB 04:8EDB: 76        .byte $76, $80   ; 0A
- D 0 - I - 0x010EED 04:8EDD: 76        .byte $76, $C0   ; 0B



_off001_8EDF_C0:
- D 0 - I - 0x010EEF 04:8EDF: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x010EF0 04:8EE0: A0        .byte $A0   ; index for YX data
- D 0 - I - 0x010EF1 04:8EE1: 7A        .byte $7A, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010EF3 04:8EE3: 7A        .byte $7A, $40   ; 01
- D 0 - I - 0x010EF5 04:8EE5: 7B        .byte $7B, $00   ; 02
- D 0 - I - 0x010EF7 04:8EE7: 7C        .byte $7C, $00   ; 03
- D 0 - I - 0x010EF9 04:8EE9: 7D        .byte $7D, $00   ; 04
- D 0 - I - 0x010EFB 04:8EEB: 7B        .byte $7B, $40   ; 05
- D 0 - I - 0x010EFD 04:8EED: 7B        .byte $7B, $80   ; 06
- D 0 - I - 0x010EFF 04:8EEF: 7D        .byte $7D, $C0   ; 07
- D 0 - I - 0x010F01 04:8EF1: 7D        .byte $7D, $80   ; 08
- D 0 - I - 0x010F03 04:8EF3: 7B        .byte $7B, $C0   ; 09
- D 0 - I - 0x010F05 04:8EF5: 7A        .byte $7A, $80   ; 0A
- D 0 - I - 0x010F07 04:8EF7: 7A        .byte $7A, $C0   ; 0B



_off001_8EF9_C1:
- D 0 - I - 0x010F09 04:8EF9: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x010F0A 04:8EFA: 9E        .byte $9E   ; index for YX data
- D 0 - I - 0x010F0B 04:8EFB: 76        .byte $76, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010F0D 04:8EFD: 77        .byte $77, $00   ; 01
- D 0 - I - 0x010F0F 04:8EFF: 78        .byte $78, $00   ; 02
- D 0 - I - 0x010F11 04:8F01: 78        .byte $78, $40   ; 03
- D 0 - I - 0x010F13 04:8F03: 79        .byte $79, $C0   ; 04
- D 0 - I - 0x010F15 04:8F05: 78        .byte $78, $C0   ; 05
- D 0 - I - 0x010F17 04:8F07: 76        .byte $76, $40   ; 06
- D 0 - I - 0x010F19 04:8F09: 77        .byte $77, $40   ; 07
- D 0 - I - 0x010F1B 04:8F0B: 77        .byte $77, $80   ; 08
- D 0 - I - 0x010F1D 04:8F0D: 77        .byte $77, $C0   ; 09
- D 0 - I - 0x010F1F 04:8F0F: 76        .byte $76, $80   ; 0A
- D 0 - I - 0x010F21 04:8F11: 76        .byte $76, $C0   ; 0B



_off001_8F13_C2:
- D 0 - I - 0x010F23 04:8F13: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x010F24 04:8F14: 9E        .byte $9E   ; index for YX data
- D 0 - I - 0x010F25 04:8F15: 7A        .byte $7A, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010F27 04:8F17: 7B        .byte $7B, $00   ; 01
- D 0 - I - 0x010F29 04:8F19: 7D        .byte $7D, $40   ; 02
- D 0 - I - 0x010F2B 04:8F1B: 7D        .byte $7D, $00   ; 03
- D 0 - I - 0x010F2D 04:8F1D: 7D        .byte $7D, $C0   ; 04
- D 0 - I - 0x010F2F 04:8F1F: 7C        .byte $7C, $C0   ; 05
- D 0 - I - 0x010F31 04:8F21: 7A        .byte $7A, $40   ; 06
- D 0 - I - 0x010F33 04:8F23: 7B        .byte $7B, $40   ; 07
- D 0 - I - 0x010F35 04:8F25: 7B        .byte $7B, $80   ; 08
- D 0 - I - 0x010F37 04:8F27: 7B        .byte $7B, $C0   ; 09
- D 0 - I - 0x010F39 04:8F29: 7A        .byte $7A, $80   ; 0A
- D 0 - I - 0x010F3B 04:8F2B: 7A        .byte $7A, $C0   ; 0B



_off001_8F2D_C3:
- D 0 - I - 0x010F3D 04:8F2D: 01        .byte $01   ; spr counter
- D 0 - I - 0x010F3E 04:8F2E: 4C        .byte $4C   ; index for YX data
- D 0 - I - 0x010F3F 04:8F2F: F0        .byte $F0, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010F41 04:8F31: F0        .byte $F0, $40   ; 01



_off001_8F33_C4:
- D 0 - I - 0x010F43 04:8F33: 03        .byte $03   ; spr counter
- D 0 - I - 0x010F44 04:8F34: 6D        .byte $6D   ; index for YX data
- D 0 - I - 0x010F45 04:8F35: F1        .byte $F1, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010F47 04:8F37: F2        .byte $F2, $00   ; 01
- D 0 - I - 0x010F49 04:8F39: F2        .byte $F2, $40   ; 02
- D 0 - I - 0x010F4B 04:8F3B: F1        .byte $F1, $40   ; 03



_off001_8F3D_C5:
- D 0 - I - 0x010F4D 04:8F3D: 03        .byte $03   ; spr counter
- D 0 - I - 0x010F4E 04:8F3E: 6D        .byte $6D   ; index for YX data
- D 0 - I - 0x010F4F 04:8F3F: F3        .byte $F3, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010F51 04:8F41: F4        .byte $F4, $00   ; 01
- D 0 - I - 0x010F53 04:8F43: F4        .byte $F4, $40   ; 02
- D 0 - I - 0x010F55 04:8F45: F3        .byte $F3, $40   ; 03



_off001_8F47_C6:
- D 0 - I - 0x010F57 04:8F47: 03        .byte $03   ; spr counter
- D 0 - I - 0x010F58 04:8F48: 6D        .byte $6D   ; index for YX data
- D 0 - I - 0x010F59 04:8F49: F5        .byte $F5, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x010F5B 04:8F4B: F6        .byte $F6, $00   ; 01
- D 0 - I - 0x010F5D 04:8F4D: F6        .byte $F6, $40   ; 02
- D 0 - I - 0x010F5F 04:8F4F: F5        .byte $F5, $40   ; 03



_off001_8F51_C7:
- D 0 - I - 0x010F61 04:8F51: 0A        .byte $0A   ; spr counter
- D 0 - I - 0x010F62 04:8F52: A2        .byte $A2   ; index for YX data
- D 0 - I - 0x010F63 04:8F53: E6        .byte $E6, $82   ; 00 spr_T, spr_A
- D 0 - I - 0x010F65 04:8F55: E6        .byte $E6, $C2   ; 01
- D 0 - I - 0x010F67 04:8F57: E5        .byte $E5, $82   ; 02
- D 0 - I - 0x010F69 04:8F59: E5        .byte $E5, $82   ; 03
- D 0 - I - 0x010F6B 04:8F5B: E5        .byte $E5, $82   ; 04
- D 0 - I - 0x010F6D 04:8F5D: E5        .byte $E5, $82   ; 05
- D 0 - I - 0x010F6F 04:8F5F: E4        .byte $E4, $82   ; 06
- D 0 - I - 0x010F71 04:8F61: E2        .byte $E2, $82   ; 07
- D 0 - I - 0x010F73 04:8F63: E3        .byte $E3, $82   ; 08
- D 0 - I - 0x010F75 04:8F65: E0        .byte $E0, $82   ; 09
- D 0 - I - 0x010F77 04:8F67: E1        .byte $E1, $82   ; 0A



_off001_8F69_C8:
- D 0 - I - 0x010F79 04:8F69: 0B        .byte $0B   ; spr counter
- D 0 - I - 0x010F7A 04:8F6A: A3        .byte $A3   ; index for YX data
- D 0 - I - 0x010F7B 04:8F6B: EF        .byte $EF, $82   ; 00 spr_T, spr_A
- D 0 - I - 0x010F7D 04:8F6D: EF        .byte $EF, $C2   ; 01
- D 0 - I - 0x010F7F 04:8F6F: EE        .byte $EE, $C2   ; 02
- D 0 - I - 0x010F81 04:8F71: EE        .byte $EE, $02   ; 03
- D 0 - I - 0x010F83 04:8F73: EE        .byte $EE, $82   ; 04
- D 0 - I - 0x010F85 04:8F75: ED        .byte $ED, $82   ; 05
- D 0 - I - 0x010F87 04:8F77: EA        .byte $EA, $82   ; 06
- D 0 - I - 0x010F89 04:8F79: EB        .byte $EB, $82   ; 07
- D 0 - I - 0x010F8B 04:8F7B: EC        .byte $EC, $82   ; 08
- D 0 - I - 0x010F8D 04:8F7D: E7        .byte $E7, $82   ; 09
- D 0 - I - 0x010F8F 04:8F7F: E8        .byte $E8, $82   ; 0A
- D 0 - I - 0x010F91 04:8F81: E9        .byte $E9, $82   ; 0B



_off001_8F83_C9:
- D 0 - I - 0x010F93 04:8F83: 05        .byte $05   ; spr counter
- D 0 - I - 0x010F94 04:8F84: 9E        .byte $9E   ; index for YX data
- D 0 - I - 0x010F95 04:8F85: D0        .byte $D0, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010F97 04:8F87: D1        .byte $D1, $02   ; 01
- D 0 - I - 0x010F99 04:8F89: D2        .byte $D2, $02   ; 02
- D 0 - I - 0x010F9B 04:8F8B: D3        .byte $D3, $02   ; 03
- D 0 - I - 0x010F9D 04:8F8D: D4        .byte $D4, $02   ; 04
- D 0 - I - 0x010F9F 04:8F8F: D5        .byte $D5, $02   ; 05



_off001_8F91_CA:
- D 0 - I - 0x010FA1 04:8F91: 05        .byte $05   ; spr counter
- D 0 - I - 0x010FA2 04:8F92: A6        .byte $A6   ; index for YX data
- D 0 - I - 0x010FA3 04:8F93: D0        .byte $D0, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010FA5 04:8F95: D1        .byte $D1, $02   ; 01
- D 0 - I - 0x010FA7 04:8F97: D2        .byte $D2, $02   ; 02
- D 0 - I - 0x010FA9 04:8F99: D6        .byte $D6, $02   ; 03
- D 0 - I - 0x010FAB 04:8F9B: D7        .byte $D7, $02   ; 04
- D 0 - I - 0x010FAD 04:8F9D: D8        .byte $D8, $02   ; 05



_off001_8F9F_CB:
- D 0 - I - 0x010FAF 04:8F9F: 03        .byte $03   ; spr counter
- D 0 - I - 0x010FB0 04:8FA0: 6D        .byte $6D   ; index for YX data
- D 0 - I - 0x010FB1 04:8FA1: B0        .byte $B0, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x010FB3 04:8FA3: B1        .byte $B1, $01   ; 01
- D 0 - I - 0x010FB5 04:8FA5: B2        .byte $B2, $01   ; 02
- D 0 - I - 0x010FB7 04:8FA7: B3        .byte $B3, $01   ; 03



_off001_8FA9_CC:
- D 0 - I - 0x010FB9 04:8FA9: 19        .byte $19   ; spr counter
- D 0 - I - 0x010FBA 04:8FAA: A7        .byte $A7   ; index for YX data
- D 0 - I - 0x010FBB 04:8FAB: F3        .byte $F3, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010FBD 04:8FAD: F4        .byte $F4, $02   ; 01
- D 0 - I - 0x010FBF 04:8FAF: F5        .byte $F5, $02   ; 02
- D 0 - I - 0x010FC1 04:8FB1: F5        .byte $F5, $42   ; 03
- D 0 - I - 0x010FC3 04:8FB3: F6        .byte $F6, $02   ; 04
- D 0 - I - 0x010FC5 04:8FB5: F7        .byte $F7, $02   ; 05
- D 0 - I - 0x010FC7 04:8FB7: F7        .byte $F7, $42   ; 06
- D 0 - I - 0x010FC9 04:8FB9: F6        .byte $F6, $42   ; 07
- D 0 - I - 0x010FCB 04:8FBB: F8        .byte $F8, $02   ; 08
- D 0 - I - 0x010FCD 04:8FBD: F9        .byte $F9, $02   ; 09
- D 0 - I - 0x010FCF 04:8FBF: FA        .byte $FA, $02   ; 0A
- D 0 - I - 0x010FD1 04:8FC1: F8        .byte $F8, $42   ; 0B
- D 0 - I - 0x010FD3 04:8FC3: FC        .byte $FC, $02   ; 0C
- D 0 - I - 0x010FD5 04:8FC5: FD        .byte $FD, $02   ; 0D
- D 0 - I - 0x010FD7 04:8FC7: FB        .byte $FB, $02   ; 0E
- D 0 - I - 0x010FD9 04:8FC9: FB        .byte $FB, $42   ; 0F
- D 0 - I - 0x010FDB 04:8FCB: FD        .byte $FD, $42   ; 10
- D 0 - I - 0x010FDD 04:8FCD: FC        .byte $FC, $42   ; 11
- D 0 - I - 0x010FDF 04:8FCF: FE        .byte $FE, $02   ; 12
- D 0 - I - 0x010FE1 04:8FD1: FF        .byte $FF, $02   ; 13
- D 0 - I - 0x010FE3 04:8FD3: FF        .byte $FF, $42   ; 14
- D 0 - I - 0x010FE5 04:8FD5: FE        .byte $FE, $42   ; 15
- D 0 - I - 0x010FE7 04:8FD7: B4        .byte $B4, $01   ; 16
- D 0 - I - 0x010FE9 04:8FD9: B4        .byte $B4, $41   ; 17
- D 0 - I - 0x010FEB 04:8FDB: B5        .byte $B5, $00   ; 18
- D 0 - I - 0x010FED 04:8FDD: B5        .byte $B5, $40   ; 19



_off001_8FDF_CD:
- D 0 - I - 0x010FEF 04:8FDF: 19        .byte $19   ; spr counter
- D 0 - I - 0x010FF0 04:8FE0: A7        .byte $A7   ; index for YX data
- D 0 - I - 0x010FF1 04:8FE1: D0        .byte $D0, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x010FF3 04:8FE3: D1        .byte $D1, $02   ; 01
- D 0 - I - 0x010FF5 04:8FE5: D2        .byte $D2, $02   ; 02
- D 0 - I - 0x010FF7 04:8FE7: D2        .byte $D2, $42   ; 03
- D 0 - I - 0x010FF9 04:8FE9: D3        .byte $D3, $02   ; 04
- D 0 - I - 0x010FFB 04:8FEB: D4        .byte $D4, $02   ; 05
- D 0 - I - 0x010FFD 04:8FED: D4        .byte $D4, $42   ; 06
- D 0 - I - 0x010FFF 04:8FEF: D3        .byte $D3, $42   ; 07
- D 0 - I - 0x011001 04:8FF1: D5        .byte $D5, $02   ; 08
- D 0 - I - 0x011003 04:8FF3: D6        .byte $D6, $02   ; 09
- D 0 - I - 0x011005 04:8FF5: D7        .byte $D7, $02   ; 0A
- D 0 - I - 0x011007 04:8FF7: D5        .byte $D5, $42   ; 0B
- D 0 - I - 0x011009 04:8FF9: D9        .byte $D9, $02   ; 0C
- D 0 - I - 0x01100B 04:8FFB: DA        .byte $DA, $02   ; 0D
- D 0 - I - 0x01100D 04:8FFD: D8        .byte $D8, $02   ; 0E
- D 0 - I - 0x01100F 04:8FFF: D8        .byte $D8, $42   ; 0F
- D 0 - I - 0x011011 04:9001: DA        .byte $DA, $42   ; 10
- D 0 - I - 0x011013 04:9003: D9        .byte $D9, $42   ; 11
- D 0 - I - 0x011015 04:9005: DB        .byte $DB, $02   ; 12
- D 0 - I - 0x011017 04:9007: DC        .byte $DC, $02   ; 13
- D 0 - I - 0x011019 04:9009: DC        .byte $DC, $42   ; 14
- D 0 - I - 0x01101B 04:900B: DB        .byte $DB, $42   ; 15
- D 0 - I - 0x01101D 04:900D: F1        .byte $F1, $01   ; 16
- D 0 - I - 0x01101F 04:900F: F1        .byte $F1, $41   ; 17
- D 0 - I - 0x011021 04:9011: F2        .byte $F2, $00   ; 18
- D 0 - I - 0x011023 04:9013: F2        .byte $F2, $40   ; 19



_off001_9015_CE:
- D 0 - I - 0x011025 04:9015: 19        .byte $19   ; spr counter
- D 0 - I - 0x011026 04:9016: A7        .byte $A7   ; index for YX data
- D 0 - I - 0x011027 04:9017: D0        .byte $D0, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x011029 04:9019: D1        .byte $D1, $01   ; 01
- D 0 - I - 0x01102B 04:901B: D2        .byte $D2, $01   ; 02
- D 0 - I - 0x01102D 04:901D: D2        .byte $D2, $41   ; 03
- D 0 - I - 0x01102F 04:901F: D3        .byte $D3, $01   ; 04
- D 0 - I - 0x011031 04:9021: D4        .byte $D4, $01   ; 05
- D 0 - I - 0x011033 04:9023: D4        .byte $D4, $41   ; 06
- D 0 - I - 0x011035 04:9025: D3        .byte $D3, $41   ; 07
- D 0 - I - 0x011037 04:9027: D5        .byte $D5, $01   ; 08
- D 0 - I - 0x011039 04:9029: D6        .byte $D6, $01   ; 09
- D 0 - I - 0x01103B 04:902B: D7        .byte $D7, $01   ; 0A
- D 0 - I - 0x01103D 04:902D: D5        .byte $D5, $41   ; 0B
- D 0 - I - 0x01103F 04:902F: D9        .byte $D9, $02   ; 0C
- D 0 - I - 0x011041 04:9031: DA        .byte $DA, $02   ; 0D
- D 0 - I - 0x011043 04:9033: D8        .byte $D8, $01   ; 0E
- D 0 - I - 0x011045 04:9035: D8        .byte $D8, $41   ; 0F
- D 0 - I - 0x011047 04:9037: DA        .byte $DA, $42   ; 10
- D 0 - I - 0x011049 04:9039: D9        .byte $D9, $42   ; 11
- D 0 - I - 0x01104B 04:903B: DB        .byte $DB, $02   ; 12
- D 0 - I - 0x01104D 04:903D: DC        .byte $DC, $02   ; 13
- D 0 - I - 0x01104F 04:903F: DC        .byte $DC, $42   ; 14
- D 0 - I - 0x011051 04:9041: DB        .byte $DB, $42   ; 15
- D 0 - I - 0x011053 04:9043: F1        .byte $F1, $01   ; 16
- D 0 - I - 0x011055 04:9045: F1        .byte $F1, $41   ; 17
- D 0 - I - 0x011057 04:9047: F2        .byte $F2, $00   ; 18
- D 0 - I - 0x011059 04:9049: F2        .byte $F2, $40   ; 19



_off001_904B_CF:
- D 0 - I - 0x01105B 04:904B: 03        .byte $03   ; spr counter
- D 0 - I - 0x01105C 04:904C: 6D        .byte $6D   ; index for YX data
- D 0 - I - 0x01105D 04:904D: DD        .byte $DD, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x01105F 04:904F: DE        .byte $DE, $01   ; 01
- D 0 - I - 0x011061 04:9051: DF        .byte $DF, $01   ; 02
- D 0 - I - 0x011063 04:9053: F0        .byte $F0, $01   ; 03



_off001_9055_D0:
- D 0 - I - 0x011065 04:9055: 03        .byte $03   ; spr counter
- D 0 - I - 0x011066 04:9056: 26        .byte $26   ; index for YX data
- D 0 - I - 0x011067 04:9057: B6        .byte $B6, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x011069 04:9059: B6        .byte $B6, $43   ; 01
- D 0 - I - 0x01106B 04:905B: B6        .byte $B6, $83   ; 02
- D 0 - I - 0x01106D 04:905D: B6        .byte $B6, $C3   ; 03



_off001_905F_D1:
- D 0 - I - 0x01106F 04:905F: 03        .byte $03   ; spr counter
- D 0 - I - 0x011070 04:9060: 26        .byte $26   ; index for YX data
- D 0 - I - 0x011071 04:9061: B7        .byte $B7, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x011073 04:9063: B7        .byte $B7, $43   ; 01
- D 0 - I - 0x011075 04:9065: B7        .byte $B7, $83   ; 02
- D 0 - I - 0x011077 04:9067: B7        .byte $B7, $C3   ; 03



_off001_9069_D2:
- D 0 - I - 0x011079 04:9069: 06        .byte $06   ; spr counter
- D 0 - I - 0x01107A 04:906A: 69        .byte $69   ; index for YX data
- D 0 - I - 0x01107B 04:906B: DC        .byte $DC, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x01107D 04:906D: DB        .byte $DB, $00   ; 01
- D 0 - I - 0x01107F 04:906F: DA        .byte $DA, $01   ; 02
- D 0 - I - 0x011081 04:9071: DF        .byte $DF, $00   ; 03
- D 0 - I - 0x011083 04:9073: DE        .byte $DE, $00   ; 04
- D 0 - I - 0x011085 04:9075: DD        .byte $DD, $01   ; 05
- D 0 - I - 0x011087 04:9077: D9        .byte $D9, $01   ; 06



_off001_9079_D3:
- D 0 - I - 0x011089 04:9079: 10        .byte $10   ; spr counter
- D 0 - I - 0x01108A 04:907A: 59        .byte $59   ; index for YX data
- D 0 - I - 0x01108B 04:907B: EF        .byte $EF, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x01108D 04:907D: EE        .byte $EE, $03   ; 01
- D 0 - I - 0x01108F 04:907F: ED        .byte $ED, $03   ; 02
- D 0 - I - 0x011091 04:9081: F4        .byte $F4, $03   ; 03
- D 0 - I - 0x011093 04:9083: F3        .byte $F3, $03   ; 04
- D 0 - I - 0x011095 04:9085: F2        .byte $F2, $03   ; 05
- D 0 - I - 0x011097 04:9087: F1        .byte $F1, $03   ; 06
- D 0 - I - 0x011099 04:9089: F8        .byte $F8, $03   ; 07
- D 0 - I - 0x01109B 04:908B: F7        .byte $F7, $03   ; 08
- D 0 - I - 0x01109D 04:908D: F6        .byte $F6, $03   ; 09
- D 0 - I - 0x01109F 04:908F: FB        .byte $FB, $03   ; 0A
- D 0 - I - 0x0110A1 04:9091: FA        .byte $FA, $03   ; 0B
- D 0 - I - 0x0110A3 04:9093: F9        .byte $F9, $03   ; 0C
- D 0 - I - 0x0110A5 04:9095: F0        .byte $F0, $03   ; 0D
- D 0 - I - 0x0110A7 04:9097: F5        .byte $F5, $03   ; 0E
- D 0 - I - 0x0110A9 04:9099: FE        .byte $FE, $02   ; 0F
- D 0 - I - 0x0110AB 04:909B: FF        .byte $FF, $02   ; 10



_off001_909D_D4:
- D 0 - I - 0x0110AD 04:909D: 03        .byte $03   ; spr counter
- D 0 - I - 0x0110AE 04:909E: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0110AF 04:909F: E0        .byte $E0, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x0110B1 04:90A1: E1        .byte $E1, $03   ; 01
- D 0 - I - 0x0110B3 04:90A3: E2        .byte $E2, $03   ; 02
- D 0 - I - 0x0110B5 04:90A5: E3        .byte $E3, $03   ; 03



_off001_90A7_D5:
- D 0 - I - 0x0110B7 04:90A7: 03        .byte $03   ; spr counter
- D 0 - I - 0x0110B8 04:90A8: 42        .byte $42   ; index for YX data
- D 0 - I - 0x0110B9 04:90A9: E0        .byte $E0, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x0110BB 04:90AB: E1        .byte $E1, $03   ; 01
- D 0 - I - 0x0110BD 04:90AD: E6        .byte $E6, $03   ; 02
- D 0 - I - 0x0110BF 04:90AF: E7        .byte $E7, $03   ; 03



_off001_90B1_D6:
- D 0 - I - 0x0110C1 04:90B1: 03        .byte $03   ; spr counter
- D 0 - I - 0x0110C2 04:90B2: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0110C3 04:90B3: CA        .byte $CA, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x0110C5 04:90B5: CB        .byte $CB, $03   ; 01
- D 0 - I - 0x0110C7 04:90B7: CA        .byte $CA, $83   ; 02
- D 0 - I - 0x0110C9 04:90B9: CB        .byte $CB, $83   ; 03



_off001_90BB_D7:
- D 0 - I - 0x0110CB 04:90BB: 03        .byte $03   ; spr counter
- D 0 - I - 0x0110CC 04:90BC: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0110CD 04:90BD: CC        .byte $CC, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x0110CF 04:90BF: CC        .byte $CC, $43   ; 01
- D 0 - I - 0x0110D1 04:90C1: CD        .byte $CD, $03   ; 02
- D 0 - I - 0x0110D3 04:90C3: CD        .byte $CD, $43   ; 03



_off001_90C5_D8:
- D 0 - I - 0x0110D5 04:90C5: 03        .byte $03   ; spr counter
- D 0 - I - 0x0110D6 04:90C6: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0110D7 04:90C7: EC        .byte $EC, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x0110D9 04:90C9: EC        .byte $EC, $43   ; 01
- D 0 - I - 0x0110DB 04:90CB: ED        .byte $ED, $03   ; 02
- D 0 - I - 0x0110DD 04:90CD: ED        .byte $ED, $43   ; 03



_off001_90CF_D9:
- D 0 - I - 0x0110DF 04:90CF: 03        .byte $03   ; spr counter
- D 0 - I - 0x0110E0 04:90D0: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0110E1 04:90D1: EE        .byte $EE, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x0110E3 04:90D3: EF        .byte $EF, $03   ; 01
- D 0 - I - 0x0110E5 04:90D5: EE        .byte $EE, $83   ; 02
- D 0 - I - 0x0110E7 04:90D7: E5        .byte $E5, $03   ; 03



_off001_90D9_DA:
- D 0 - I - 0x0110E9 04:90D9: 03        .byte $03   ; spr counter
- D 0 - I - 0x0110EA 04:90DA: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0110EB 04:90DB: ED        .byte $ED, $83   ; 00 spr_T, spr_A
- D 0 - I - 0x0110ED 04:90DD: ED        .byte $ED, $C3   ; 01
- D 0 - I - 0x0110EF 04:90DF: EC        .byte $EC, $83   ; 02
- D 0 - I - 0x0110F1 04:90E1: EC        .byte $EC, $C3   ; 03



_off001_90E3_DB:
- D 0 - I - 0x0110F3 04:90E3: 03        .byte $03   ; spr counter
- D 0 - I - 0x0110F4 04:90E4: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0110F5 04:90E5: EF        .byte $EF, $43   ; 00 spr_T, spr_A
- D 0 - I - 0x0110F7 04:90E7: EE        .byte $EE, $43   ; 01
- D 0 - I - 0x0110F9 04:90E9: E5        .byte $E5, $43   ; 02
- D 0 - I - 0x0110FB 04:90EB: EE        .byte $EE, $C3   ; 03



_off001_90ED_DC:
- D 0 - I - 0x0110FD 04:90ED: 03        .byte $03   ; spr counter
- D 0 - I - 0x0110FE 04:90EE: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0110FF 04:90EF: D0        .byte $D0, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x011101 04:90F1: D0        .byte $D0, $41   ; 01
- D 0 - I - 0x011103 04:90F3: D2        .byte $D2, $00   ; 02
- D 0 - I - 0x011105 04:90F5: D2        .byte $D2, $40   ; 03



_off001_90F7_DD:
- D 0 - I - 0x011107 04:90F7: 03        .byte $03   ; spr counter
- D 0 - I - 0x011108 04:90F8: 26        .byte $26   ; index for YX data
- D 0 - I - 0x011109 04:90F9: D0        .byte $D0, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x01110B 04:90FB: D0        .byte $D0, $41   ; 01
- D 0 - I - 0x01110D 04:90FD: D3        .byte $D3, $00   ; 02
- D 0 - I - 0x01110F 04:90FF: D3        .byte $D3, $40   ; 03



_off001_9101_DE:
- D 0 - I - 0x011111 04:9101: 05        .byte $05   ; spr counter
- D 0 - I - 0x011112 04:9102: AA        .byte $AA   ; index for YX data
- D 0 - I - 0x011113 04:9103: D1        .byte $D1, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x011115 04:9105: D1        .byte $D1, $41   ; 01
- D 0 - I - 0x011117 04:9107: D4        .byte $D4, $00   ; 02
- D 0 - I - 0x011119 04:9109: D4        .byte $D4, $40   ; 03
- D 0 - I - 0x01111B 04:910B: D5        .byte $D5, $00   ; 04
- D 0 - I - 0x01111D 04:910D: D5        .byte $D5, $40   ; 05



_off001_910F_DF:
- D 0 - I - 0x01111F 04:910F: 00        .byte $00   ; spr counter
- D 0 - I - 0x011120 04:9110: 14        .byte $14   ; index for YX data
- D 0 - I - 0x011121 04:9111: EF        .byte $EF, $00   ; 00 spr_T, spr_A



_off001_9113_E0:
- D 0 - I - 0x011123 04:9113: 08        .byte $08   ; spr counter
- D 0 - I - 0x011124 04:9114: AB        .byte $AB   ; index for YX data
- D 0 - I - 0x011125 04:9115: DC        .byte $DC, $02   ; 00 spr_T, spr_A
- D 0 - I - 0x011127 04:9117: DC        .byte $DC, $02   ; 01
- D 0 - I - 0x011129 04:9119: DC        .byte $DC, $02   ; 02
- D 0 - I - 0x01112B 04:911B: DC        .byte $DC, $02   ; 03
- D 0 - I - 0x01112D 04:911D: DE        .byte $DE, $02   ; 04
- D 0 - I - 0x01112F 04:911F: DC        .byte $DC, $02   ; 05
- D 0 - I - 0x011131 04:9121: DC        .byte $DC, $02   ; 06
- D 0 - I - 0x011133 04:9123: DD        .byte $DD, $02   ; 07
- D 0 - I - 0x011135 04:9125: DE        .byte $DE, $02   ; 08



_off001_9127_E1:
- D 0 - I - 0x011137 04:9127: 03        .byte $03   ; spr counter
- D 0 - I - 0x011138 04:9128: 26        .byte $26   ; index for YX data
- D 0 - I - 0x011139 04:9129: A2        .byte $A2, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x01113B 04:912B: A2        .byte $A2, $40   ; 01
- D 0 - I - 0x01113D 04:912D: A2        .byte $A2, $80   ; 02
- D 0 - I - 0x01113F 04:912F: A2        .byte $A2, $C0   ; 03



_off001_9131_E2:
- D 0 - I - 0x011141 04:9131: 03        .byte $03   ; spr counter
- D 0 - I - 0x011142 04:9132: 26        .byte $26   ; index for YX data
- D 0 - I - 0x011143 04:9133: A3        .byte $A3, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x011145 04:9135: A3        .byte $A3, $40   ; 01
- D 0 - I - 0x011147 04:9137: A3        .byte $A3, $80   ; 02
- D 0 - I - 0x011149 04:9139: A3        .byte $A3, $C0   ; 03



_off001_913B_E3:
- D 0 - I - 0x01114B 04:913B: 07        .byte $07   ; spr counter
- D 0 - I - 0x01114C 04:913C: 2A        .byte $2A   ; index for YX data
- D 0 - I - 0x01114D 04:913D: A3        .byte $A3, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x01114F 04:913F: A7        .byte $A7, $00   ; 01
- D 0 - I - 0x011151 04:9141: A3        .byte $A3, $40   ; 02
- D 0 - I - 0x011153 04:9143: A6        .byte $A6, $00   ; 03
- D 0 - I - 0x011155 04:9145: A6        .byte $A6, $40   ; 04
- D 0 - I - 0x011157 04:9147: A3        .byte $A3, $80   ; 05
- D 0 - I - 0x011159 04:9149: A7        .byte $A7, $80   ; 06
- D 0 - I - 0x01115B 04:914B: A3        .byte $A3, $C0   ; 07



_off001_914D_E4:
- D 0 - I - 0x01115D 04:914D: 03        .byte $03   ; spr counter
- D 0 - I - 0x01115E 04:914E: B6        .byte $B6   ; index for YX data
- D 0 - I - 0x01115F 04:914F: A5        .byte $A5, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x011161 04:9151: A5        .byte $A5, $40   ; 01
- D 0 - I - 0x011163 04:9153: A5        .byte $A5, $80   ; 02
- D 0 - I - 0x011165 04:9155: A5        .byte $A5, $C0   ; 03



_off001_9157_E5:
- D 0 - I - 0x011167 04:9157: 0F        .byte $0F   ; spr counter
- D 0 - I - 0x011168 04:9158: 59        .byte $59   ; index for YX data
- D 0 - I - 0x011169 04:9159: EF        .byte $EF, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x01116B 04:915B: EE        .byte $EE, $03   ; 01
- D 0 - I - 0x01116D 04:915D: ED        .byte $ED, $03   ; 02
- D 0 - I - 0x01116F 04:915F: F4        .byte $F4, $03   ; 03
- D 0 - I - 0x011171 04:9161: F3        .byte $F3, $03   ; 04
- D 0 - I - 0x011173 04:9163: FC        .byte $FC, $03   ; 05
- D 0 - I - 0x011175 04:9165: F1        .byte $F1, $03   ; 06
- D 0 - I - 0x011177 04:9167: F8        .byte $F8, $03   ; 07
- D 0 - I - 0x011179 04:9169: F7        .byte $F7, $03   ; 08
- D 0 - I - 0x01117B 04:916B: FD        .byte $FD, $03   ; 09
- D 0 - I - 0x01117D 04:916D: FB        .byte $FB, $03   ; 0A
- D 0 - I - 0x01117F 04:916F: FA        .byte $FA, $03   ; 0B
- D 0 - I - 0x011181 04:9171: F9        .byte $F9, $03   ; 0C
- D 0 - I - 0x011183 04:9173: F0        .byte $F0, $03   ; 0D
- D 0 - I - 0x011185 04:9175: F5        .byte $F5, $03   ; 0E
- D 0 - I - 0x011187 04:9177: FE        .byte $FE, $02   ; 0F



_off001_9179_E6:
- D 0 - I - 0x011189 04:9179: 05        .byte $05   ; spr counter
- D 0 - I - 0x01118A 04:917A: 63        .byte $63   ; index for YX data
- D 0 - I - 0x01118B 04:917B: E6        .byte $E6, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x01118D 04:917D: E7        .byte $E7, $00   ; 01
- D 0 - I - 0x01118F 04:917F: E8        .byte $E8, $00   ; 02
- D 0 - I - 0x011191 04:9181: E9        .byte $E9, $00   ; 03
- D 0 - I - 0x011193 04:9183: EA        .byte $EA, $00   ; 04
- D 0 - I - 0x011195 04:9185: F9        .byte $F9, $00   ; 05



_off001_9187_E7:
- D 0 - I - 0x011197 04:9187: 05        .byte $05   ; spr counter
- D 0 - I - 0x011198 04:9188: 63        .byte $63   ; index for YX data
- D 0 - I - 0x011199 04:9189: E6        .byte $E6, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x01119B 04:918B: E7        .byte $E7, $00   ; 01
- D 0 - I - 0x01119D 04:918D: E8        .byte $E8, $00   ; 02
- D 0 - I - 0x01119F 04:918F: E9        .byte $E9, $00   ; 03
- D 0 - I - 0x0111A1 04:9191: EB        .byte $EB, $01   ; 04
- D 0 - I - 0x0111A3 04:9193: EC        .byte $EC, $01   ; 05



_off001_9195_E8:
- D 0 - I - 0x0111A5 04:9195: 13        .byte $13   ; spr counter
- D 0 - I - 0x0111A6 04:9196: 64        .byte $64   ; index for YX data
- D 0 - I - 0x0111A7 04:9197: E6        .byte $E6, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0111A9 04:9199: E7        .byte $E7, $00   ; 01
- D 0 - I - 0x0111AB 04:919B: E8        .byte $E8, $00   ; 02
- D 0 - I - 0x0111AD 04:919D: E9        .byte $E9, $00   ; 03
- D 0 - I - 0x0111AF 04:919F: ED        .byte $ED, $02   ; 04
- D 0 - I - 0x0111B1 04:91A1: EE        .byte $EE, $02   ; 05
- D 0 - I - 0x0111B3 04:91A3: EF        .byte $EF, $02   ; 06
- D 0 - I - 0x0111B5 04:91A5: D9        .byte $D9, $02   ; 07
- D 0 - I - 0x0111B7 04:91A7: DA        .byte $DA, $02   ; 08
- D 0 - I - 0x0111B9 04:91A9: DB        .byte $DB, $02   ; 09
- D 0 - I - 0x0111BB 04:91AB: DC        .byte $DC, $02   ; 0A
- D 0 - I - 0x0111BD 04:91AD: DD        .byte $DD, $02   ; 0B
- D 0 - I - 0x0111BF 04:91AF: DE        .byte $DE, $02   ; 0C
- D 0 - I - 0x0111C1 04:91B1: DF        .byte $DF, $02   ; 0D
- D 0 - I - 0x0111C3 04:91B3: FA        .byte $FA, $02   ; 0E
- D 0 - I - 0x0111C5 04:91B5: FB        .byte $FB, $02   ; 0F
- D 0 - I - 0x0111C7 04:91B7: FC        .byte $FC, $02   ; 10
- D 0 - I - 0x0111C9 04:91B9: FD        .byte $FD, $02   ; 11
- D 0 - I - 0x0111CB 04:91BB: FE        .byte $FE, $02   ; 12
- D 0 - I - 0x0111CD 04:91BD: FF        .byte $FF, $02   ; 13



_off001_91BF_E9:
- D 0 - I - 0x0111CF 04:91BF: 00        .byte $00   ; spr counter
- D 0 - I - 0x0111D0 04:91C0: 14        .byte $14   ; index for YX data
- D 0 - I - 0x0111D1 04:91C1: 70        .byte $70, $01   ; 00 spr_T, spr_A



_off001_91C3_EA:
- D 0 - I - 0x0111D3 04:91C3: 00        .byte $00   ; spr counter
- D 0 - I - 0x0111D4 04:91C4: 14        .byte $14   ; index for YX data
- D 0 - I - 0x0111D5 04:91C5: 71        .byte $71, $01   ; 00 spr_T, spr_A



_off001_91C7_EB:
- D 0 - I - 0x0111D7 04:91C7: 00        .byte $00   ; spr counter
- D 0 - I - 0x0111D8 04:91C8: 14        .byte $14   ; index for YX data
- D 0 - I - 0x0111D9 04:91C9: 72        .byte $72, $01   ; 00 spr_T, spr_A



_off001_91CB_EC:
- D 0 - I - 0x0111DB 04:91CB: 00        .byte $00   ; spr counter
- D 0 - I - 0x0111DC 04:91CC: 14        .byte $14   ; index for YX data
- D 0 - I - 0x0111DD 04:91CD: 00        .byte $00, $01   ; 00 spr_T, spr_A



_off001_91CF_ED:
- D 0 - I - 0x0111DF 04:91CF: 03        .byte $03   ; spr counter
- D 0 - I - 0x0111E0 04:91D0: 26        .byte $26   ; index for YX data
- D 0 - I - 0x0111E1 04:91D1: FF        .byte $FF, $40   ; 00 spr_T, spr_A
- D 0 - I - 0x0111E3 04:91D3: F8        .byte $F8, $40   ; 01
- D 0 - I - 0x0111E5 04:91D5: C7        .byte $C7, $40   ; 02
- D 0 - I - 0x0111E7 04:91D7: C6        .byte $C6, $40   ; 03



_off001_91D9_EE:
- D 0 - I - 0x0111E9 04:91D9: 0C        .byte $0C   ; spr counter
- D 0 - I - 0x0111EA 04:91DA: 6E        .byte $6E   ; index for YX data
- D 0 - I - 0x0111EB 04:91DB: E0        .byte $E0, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x0111ED 04:91DD: E1        .byte $E1, $03   ; 01
- D 0 - I - 0x0111EF 04:91DF: E2        .byte $E2, $03   ; 02
- D 0 - I - 0x0111F1 04:91E1: E3        .byte $E3, $03   ; 03
- D 0 - I - 0x0111F3 04:91E3: E4        .byte $E4, $03   ; 04
- D 0 - I - 0x0111F5 04:91E5: E5        .byte $E5, $03   ; 05
- D 0 - I - 0x0111F7 04:91E7: E6        .byte $E6, $03   ; 06
- D 0 - I - 0x0111F9 04:91E9: E7        .byte $E7, $03   ; 07
- D 0 - I - 0x0111FB 04:91EB: E8        .byte $E8, $03   ; 08
- D 0 - I - 0x0111FD 04:91ED: E9        .byte $E9, $03   ; 09
- D 0 - I - 0x0111FF 04:91EF: EA        .byte $EA, $03   ; 0A
- D 0 - I - 0x011201 04:91F1: EB        .byte $EB, $03   ; 0B
- D 0 - I - 0x011203 04:91F3: EC        .byte $EC, $03   ; 0C



_off001_91F5_EF:
- D 0 - I - 0x011205 04:91F5: 0D        .byte $0D   ; spr counter
- D 0 - I - 0x011206 04:91F6: A4        .byte $A4   ; index for YX data
- D 0 - I - 0x011207 04:91F7: E0        .byte $E0, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x011209 04:91F9: E1        .byte $E1, $03   ; 01
- D 0 - I - 0x01120B 04:91FB: E2        .byte $E2, $03   ; 02
- D 0 - I - 0x01120D 04:91FD: E3        .byte $E3, $03   ; 03
- D 0 - I - 0x01120F 04:91FF: E4        .byte $E4, $03   ; 04
- D 0 - I - 0x011211 04:9201: E5        .byte $E5, $03   ; 05
- D 0 - I - 0x011213 04:9203: ED        .byte $ED, $03   ; 06
- D 0 - I - 0x011215 04:9205: EE        .byte $EE, $03   ; 07
- D 0 - I - 0x011217 04:9207: F0        .byte $F0, $03   ; 08
- D 0 - I - 0x011219 04:9209: F1        .byte $F1, $03   ; 09
- D 0 - I - 0x01121B 04:920B: F2        .byte $F2, $03   ; 0A
- D 0 - I - 0x01121D 04:920D: F3        .byte $F3, $03   ; 0B
- D 0 - I - 0x01121F 04:920F: F4        .byte $F4, $03   ; 0C
- D 0 - I - 0x011221 04:9211: F4        .byte $F4, $43   ; 0D



_off001_9213_F0:
- D 0 - I - 0x011223 04:9213: 09        .byte $09   ; spr counter
- D 0 - I - 0x011224 04:9214: AE        .byte $AE   ; index for YX data
- D 0 - I - 0x011225 04:9215: E0        .byte $E0, $03   ; 00 spr_T, spr_A
- D 0 - I - 0x011227 04:9217: E1        .byte $E1, $03   ; 01
- D 0 - I - 0x011229 04:9219: E2        .byte $E2, $03   ; 02
- D 0 - I - 0x01122B 04:921B: E3        .byte $E3, $03   ; 03
- D 0 - I - 0x01122D 04:921D: E4        .byte $E4, $03   ; 04
- D 0 - I - 0x01122F 04:921F: E5        .byte $E5, $03   ; 05
- D 0 - I - 0x011231 04:9221: F5        .byte $F5, $03   ; 06
- D 0 - I - 0x011233 04:9223: F6        .byte $F6, $03   ; 07
- D 0 - I - 0x011235 04:9225: F7        .byte $F7, $03   ; 08
- D 0 - I - 0x011237 04:9227: F8        .byte $F8, $03   ; 09



_off001_9229_F1:
- D 0 - I - 0x011239 04:9229: 0F        .byte $0F   ; spr counter
- D 0 - I - 0x01123A 04:922A: 26        .byte $26   ; index for YX data
- D 0 - I - 0x01123B 04:922B: FD        .byte $FD, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x01123D 04:922D: FD        .byte $FD, $41   ; 01
- D 0 - I - 0x01123F 04:922F: FF        .byte $FF, $01   ; 02
- D 0 - I - 0x011241 04:9231: FF        .byte $FF, $41   ; 03
- D 0 - I - 0x011243 04:9233: FA        .byte $FA, $01   ; 04
- D 0 - I - 0x011245 04:9235: FB        .byte $FB, $01   ; 05
- D 0 - I - 0x011247 04:9237: FC        .byte $FC, $01   ; 06
- D 0 - I - 0x011249 04:9239: FC        .byte $FC, $41   ; 07
- D 0 - I - 0x01124B 04:923B: FE        .byte $FE, $01   ; 08
- D 0 - I - 0x01124D 04:923D: FE        .byte $FE, $41   ; 09
- D 0 - I - 0x01124F 04:923F: CF        .byte $CF, $01   ; 0A
- D 0 - I - 0x011251 04:9241: CF        .byte $CF, $41   ; 0B
- D 0 - I - 0x011253 04:9243: F9        .byte $F9, $01   ; 0C
- D 0 - I - 0x011255 04:9245: F9        .byte $F9, $41   ; 0D
- D 0 - I - 0x011257 04:9247: CE        .byte $CE, $01   ; 0E
- D 0 - I - 0x011259 04:9249: CE        .byte $CE, $41   ; 0F



_off001_924B_F2:
- D 0 - I - 0x01125B 04:924B: 09        .byte $09   ; spr counter
- D 0 - I - 0x01125C 04:924C: B0        .byte $B0   ; index for YX data
- D 0 - I - 0x01125D 04:924D: F5        .byte $F5, $83   ; 00 spr_T, spr_A
- D 0 - I - 0x01125F 04:924F: F6        .byte $F6, $83   ; 01
- D 0 - I - 0x011261 04:9251: F7        .byte $F7, $83   ; 02
- D 0 - I - 0x011263 04:9253: F8        .byte $F8, $83   ; 03
- D 0 - I - 0x011265 04:9255: E3        .byte $E3, $83   ; 04
- D 0 - I - 0x011267 04:9257: E4        .byte $E4, $83   ; 05
- D 0 - I - 0x011269 04:9259: E5        .byte $E5, $83   ; 06
- D 0 - I - 0x01126B 04:925B: E0        .byte $E0, $83   ; 07
- D 0 - I - 0x01126D 04:925D: E1        .byte $E1, $83   ; 08
- D 0 - I - 0x01126F 04:925F: E2        .byte $E2, $83   ; 09



_off001_9261_F3:
- D 0 - I - 0x011271 04:9261: 0F        .byte $0F   ; spr counter
- D 0 - I - 0x011272 04:9262: 26        .byte $26   ; index for YX data
- D 0 - I - 0x011273 04:9263: FD        .byte $FD, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x011275 04:9265: FD        .byte $FD, $40   ; 01
- D 0 - I - 0x011277 04:9267: FF        .byte $FF, $00   ; 02
- D 0 - I - 0x011279 04:9269: FF        .byte $FF, $40   ; 03
- D 0 - I - 0x01127B 04:926B: FA        .byte $FA, $00   ; 04
- D 0 - I - 0x01127D 04:926D: FB        .byte $FB, $00   ; 05
- D 0 - I - 0x01127F 04:926F: FC        .byte $FC, $00   ; 06
- D 0 - I - 0x011281 04:9271: FC        .byte $FC, $40   ; 07
- D 0 - I - 0x011283 04:9273: FE        .byte $FE, $00   ; 08
- D 0 - I - 0x011285 04:9275: FE        .byte $FE, $40   ; 09
- D 0 - I - 0x011287 04:9277: CF        .byte $CF, $00   ; 0A
- D 0 - I - 0x011289 04:9279: CF        .byte $CF, $40   ; 0B
- D 0 - I - 0x01128B 04:927B: F9        .byte $F9, $00   ; 0C
- D 0 - I - 0x01128D 04:927D: F9        .byte $F9, $40   ; 0D
- D 0 - I - 0x01128F 04:927F: CE        .byte $CE, $00   ; 0E
- D 0 - I - 0x011291 04:9281: CE        .byte $CE, $40   ; 0F



_off001_9283_F4:
- D 0 - I - 0x011293 04:9283: 01        .byte $01   ; spr counter
- D 0 - I - 0x011294 04:9284: 68        .byte $68   ; index for YX data
- D 0 - I - 0x011295 04:9285: E5        .byte $E5, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x011297 04:9287: E6        .byte $E6, $01   ; 01



_off001_9289_F5:
- D 0 - I - 0x011299 04:9289: 01        .byte $01   ; spr counter
- D 0 - I - 0x01129A 04:928A: 68        .byte $68   ; index for YX data
- D 0 - I - 0x01129B 04:928B: E5        .byte $E5, $81   ; 00 spr_T, spr_A
- D 0 - I - 0x01129D 04:928D: E7        .byte $E7, $01   ; 01



_off001_928F_F6:
- D 0 - I - 0x01129F 04:928F: 01        .byte $01   ; spr counter
- D 0 - I - 0x0112A0 04:9290: B2        .byte $B2   ; index for YX data
- D 0 - I - 0x0112A1 04:9291: E8        .byte $E8, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x0112A3 04:9293: E9        .byte $E9, $01   ; 01



_off001_9295_F7:
- D 0 - I - 0x0112A5 04:9295: 01        .byte $01   ; spr counter
- D 0 - I - 0x0112A6 04:9296: B4        .byte $B4   ; index for YX data
- D 0 - I - 0x0112A7 04:9297: E8        .byte $E8, $41   ; 00 spr_T, spr_A
- D 0 - I - 0x0112A9 04:9299: E9        .byte $E9, $41   ; 01



_off001_929B_F8:
- D 0 - I - 0x0112AB 04:929B: 01        .byte $01   ; spr counter
- D 0 - I - 0x0112AC 04:929C: 4C        .byte $4C   ; index for YX data
- D 0 - I - 0x0112AD 04:929D: EA        .byte $EA, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x0112AF 04:929F: EB        .byte $EB, $01   ; 01



_off001_92A1_F9:
- D 0 - I - 0x0112B1 04:92A1: 01        .byte $01   ; spr counter
- D 0 - I - 0x0112B2 04:92A2: 4C        .byte $4C   ; index for YX data
- D 0 - I - 0x0112B3 04:92A3: EC        .byte $EC, $01   ; 00 spr_T, spr_A
- D 0 - I - 0x0112B5 04:92A5: EC        .byte $EC, $C1   ; 01



_off001_92A7_FA:
- D 0 - I - 0x0112B7 04:92A7: 01        .byte $01   ; spr counter
- D 0 - I - 0x0112B8 04:92A8: 4C        .byte $4C   ; index for YX data
- D 0 - I - 0x0112B9 04:92A9: EB        .byte $EB, $C1   ; 00 spr_T, spr_A
- D 0 - I - 0x0112BB 04:92AB: EA        .byte $EA, $C1   ; 01



_off001_92AD_FB:
- D 0 - I - 0x0112BD 04:92AD: 05        .byte $05   ; spr counter
- D 0 - I - 0x0112BE 04:92AE: 65        .byte $65   ; index for YX data
- D 0 - I - 0x0112BF 04:92AF: F6        .byte $F6, $00   ; 00 spr_T, spr_A
- D 0 - I - 0x0112C1 04:92B1: F9        .byte $F9, $00   ; 01
- D 0 - I - 0x0112C3 04:92B3: F7        .byte $F7, $00   ; 02
- D 0 - I - 0x0112C5 04:92B5: F8        .byte $F8, $00   ; 03
- D 0 - I - 0x0112C7 04:92B7: FA        .byte $FA, $00   ; 04
- D 0 - I - 0x0112C9 04:92B9: FB        .byte $FB, $00   ; 05



tbl_92BB_lo:
- - - - - - 0x0112CB 04:92BB: 5F        .byte < _off001_825F_01   ; 
- D 0 - - - 0x0112CC 04:92BC: 5F        .byte < _off001_825F_02   ; 
- D 0 - - - 0x0112CD 04:92BD: 79        .byte < _off001_8279_03   ; 
- D 0 - - - 0x0112CE 04:92BE: 93        .byte < _off001_8293_04   ; 
- D 0 - - - 0x0112CF 04:92BF: AD        .byte < _off001_82AD_05   ; 
- D 0 - - - 0x0112D0 04:92C0: C3        .byte < _off001_82C3_06   ; 
- D 0 - - - 0x0112D1 04:92C1: D9        .byte < _off001_82D9_07   ; 
- D 0 - - - 0x0112D2 04:92C2: EF        .byte < _off001_82EF_08   ; 
- D 0 - - - 0x0112D3 04:92C3: 07        .byte < _off001_8307_09   ; 
- D 0 - - - 0x0112D4 04:92C4: 1F        .byte < _off001_831F_0A   ; 
- - - - - - 0x0112D5 04:92C5: 39        .byte < _off001_8339_0B   ; 
- - - - - - 0x0112D6 04:92C6: 53        .byte < _off001_8353_0C   ; 
- - - - - - 0x0112D7 04:92C7: 6D        .byte < _off001_836D_0D   ; 
- D 0 - - - 0x0112D8 04:92C8: 89        .byte < _off001_8389_0E   ; 
- D 0 - - - 0x0112D9 04:92C9: A3        .byte < _off001_83A3_0F   ; 
- D 0 - - - 0x0112DA 04:92CA: BD        .byte < _off001_83BD_10   ; 
- D 0 - - - 0x0112DB 04:92CB: D3        .byte < _off001_83D3_11   ; 
- D 0 - - - 0x0112DC 04:92CC: EB        .byte < _off001_83EB_12   ; 
- D 0 - - - 0x0112DD 04:92CD: 07        .byte < _off001_8407_13   ; 
- D 0 - - - 0x0112DE 04:92CE: 21        .byte < _off001_8421_14   ; 
- D 0 - - - 0x0112DF 04:92CF: 3B        .byte < _off001_843B_15   ; 
- D 0 - - - 0x0112E0 04:92D0: 55        .byte < _off001_8455_16   ; 
- D 0 - - - 0x0112E1 04:92D1: 5B        .byte < _off001_845B_17   ; 
- D 0 - - - 0x0112E2 04:92D2: 61        .byte < _off001_8461_18   ; 
- D 0 - - - 0x0112E3 04:92D3: 67        .byte < _off001_8467_19   ; 
- D 0 - - - 0x0112E4 04:92D4: 6D        .byte < _off001_846D_1A   ; 
- D 0 - - - 0x0112E5 04:92D5: 71        .byte < _off001_8471_1B   ; 
- D 0 - - - 0x0112E6 04:92D6: 75        .byte < _off001_8475_1C   ; 
- D 0 - - - 0x0112E7 04:92D7: 7F        .byte < _off001_847F_1D   ; 
- D 0 - - - 0x0112E8 04:92D8: 87        .byte < _off001_8487_1E   ; 
- D 0 - - - 0x0112E9 04:92D9: 8F        .byte < _off001_848F_1F   ; 
- D 0 - - - 0x0112EA 04:92DA: 99        .byte < _off001_8499_20   ; 
- D 0 - - - 0x0112EB 04:92DB: A3        .byte < _off001_84A3_21   ; 
- D 0 - - - 0x0112EC 04:92DC: AD        .byte < _off001_84AD_22   ; 
- D 0 - - - 0x0112ED 04:92DD: B7        .byte < _off001_84B7_23   ; 
- D 0 - - - 0x0112EE 04:92DE: C1        .byte < _off001_84C1_24   ; 
- D 0 - - - 0x0112EF 04:92DF: CB        .byte < _off001_84CB_25   ; 
- - - - - - 0x0112F0 04:92E0: DD        .byte < _off001_84DD_26   ; 
- D 0 - - - 0x0112F1 04:92E1: E7        .byte < _off001_84E7_27   ; 
- D 0 - - - 0x0112F2 04:92E2: F1        .byte < _off001_84F1_28   ; 
- D 0 - - - 0x0112F3 04:92E3: FB        .byte < _off001_84FB_29   ; 
- D 0 - - - 0x0112F4 04:92E4: 05        .byte < _off001_8505_2A   ; 
- D 0 - - - 0x0112F5 04:92E5: 0F        .byte < _off001_850F_2B   ; 
- D 0 - - - 0x0112F6 04:92E6: 19        .byte < _off001_8519_2C   ; 
- D 0 - - - 0x0112F7 04:92E7: 23        .byte < _off001_8523_2D   ; 
- D 0 - - - 0x0112F8 04:92E8: 2D        .byte < _off001_852D_2E   ; 
- D 0 - - - 0x0112F9 04:92E9: 37        .byte < _off001_8537_2F   ; 
- D 0 - - - 0x0112FA 04:92EA: 41        .byte < _off001_8541_30   ; 
- D 0 - - - 0x0112FB 04:92EB: 4B        .byte < _off001_854B_31   ; 
- D 0 - - - 0x0112FC 04:92EC: 65        .byte < _off001_8565_32   ; 
- D 0 - - - 0x0112FD 04:92ED: 6F        .byte < _off001_856F_33   ; 
- D 0 - - - 0x0112FE 04:92EE: 7B        .byte < _off001_857B_34   ; 
- D 0 - - - 0x0112FF 04:92EF: 85        .byte < _off001_8585_35   ; 
- D 0 - - - 0x011300 04:92F0: 8D        .byte < _off001_858D_36   ; 
- D 0 - - - 0x011301 04:92F1: 97        .byte < _off001_8597_37   ; 
- D 0 - - - 0x011302 04:92F2: A7        .byte < _off001_85A7_38   ; 
- D 0 - - - 0x011303 04:92F3: B5        .byte < _off001_85B5_39   ; 
- D 0 - - - 0x011304 04:92F4: BF        .byte < _off001_85BF_3A   ; 
- D 0 - - - 0x011305 04:92F5: C9        .byte < _off001_85C9_3B   ; 
- D 0 - - - 0x011306 04:92F6: D3        .byte < _off001_85D3_3C   ; 
- D 0 - - - 0x011307 04:92F7: E9        .byte < _off001_85E9_3D   ; 
- D 0 - - - 0x011308 04:92F8: FD        .byte < _off001_85FD_3E   ; 
- - - - - - 0x011309 04:92F9: 11        .byte < _off001_8611_3F   ; 
- D 0 - - - 0x01130A 04:92FA: 29        .byte < _off001_8629_40   ; 
- D 0 - - - 0x01130B 04:92FB: 3B        .byte < _off001_863B_41   ; 
- D 0 - - - 0x01130C 04:92FC: 49        .byte < _off001_8649_42   ; 
- D 0 - - - 0x01130D 04:92FD: 55        .byte < _off001_8655_43   ; 
- D 0 - - - 0x01130E 04:92FE: 61        .byte < _off001_8661_44   ; 
- D 0 - - - 0x01130F 04:92FF: 6B        .byte < _off001_866B_45   ; 
- D 0 - - - 0x011310 04:9300: 75        .byte < _off001_8675_46   ; 
- D 0 - - - 0x011311 04:9301: 7F        .byte < _off001_867F_47   ; 
- D 0 - - - 0x011312 04:9302: 89        .byte < _off001_8689_48   ; 
- D 0 - - - 0x011313 04:9303: 93        .byte < _off001_8693_49   ; 
- D 0 - - - 0x011314 04:9304: AD        .byte < _off001_86AD_4A   ; 
- D 0 - - - 0x011315 04:9305: C7        .byte < _off001_86C7_4B   ; 
- D 0 - - - 0x011316 04:9306: E1        .byte < _off001_86E1_4C   ; 
- D 0 - - - 0x011317 04:9307: F9        .byte < _off001_86F9_4D   ; 
- D 0 - - - 0x011318 04:9308: 13        .byte < _off001_8713_4E   ; 
- D 0 - - - 0x011319 04:9309: 2D        .byte < _off001_872D_4F   ; 
- D 0 - - - 0x01131A 04:930A: 47        .byte < _off001_8747_50   ; 
- D 0 - - - 0x01131B 04:930B: 61        .byte < _off001_8761_51   ; 
- D 0 - - - 0x01131C 04:930C: 65        .byte < _off001_8765_52   ; 
- D 0 - - - 0x01131D 04:930D: 69        .byte < _off001_8769_53   ; 
- D 0 - - - 0x01131E 04:930E: 73        .byte < _off001_8773_54   ; 
- D 0 - - - 0x01131F 04:930F: 7D        .byte < _off001_877D_55   ; 
- D 0 - - - 0x011320 04:9310: 87        .byte < _off001_8787_56   ; 
- D 0 - - - 0x011321 04:9311: 9B        .byte < _off001_879B_57   ; 
- D 0 - - - 0x011322 04:9312: AF        .byte < _off001_87AF_58   ; 
- - - - - - 0x011323 04:9313: B9        .byte < _off001_87B9_59   ; 
- D 0 - - - 0x011324 04:9314: C3        .byte < _off001_87C3_5A   ; 
- D 0 - - - 0x011325 04:9315: CD        .byte < _off001_87CD_5B   ; 
- D 0 - - - 0x011326 04:9316: D1        .byte < _off001_87D1_5C   ; 
- D 0 - - - 0x011327 04:9317: DB        .byte < _off001_87DB_5D   ; 
- D 0 - - - 0x011328 04:9318: E5        .byte < _off001_87E5_5E   ; 
- D 0 - - - 0x011329 04:9319: EF        .byte < _off001_87EF_5F   ; 
- D 0 - - - 0x01132A 04:931A: F9        .byte < _off001_87F9_60   ; 
- D 0 - - - 0x01132B 04:931B: 03        .byte < _off001_8803_61   ; 
- D 0 - - - 0x01132C 04:931C: 0D        .byte < _off001_880D_62   ; 
- D 0 - - - 0x01132D 04:931D: 17        .byte < _off001_8817_63   ; 
- D 0 - - - 0x01132E 04:931E: 21        .byte < _off001_8821_64   ; 
- D 0 - - - 0x01132F 04:931F: 2B        .byte < _off001_882B_65   ; 
- D 0 - - - 0x011330 04:9320: 35        .byte < _off001_8835_66   ; 
- D 0 - - - 0x011331 04:9321: 3F        .byte < _off001_883F_67   ; 
- D 0 - - - 0x011332 04:9322: 49        .byte < _off001_8849_68   ; 
- D 0 - - - 0x011333 04:9323: 53        .byte < _off001_8853_69   ; 
- D 0 - - - 0x011334 04:9324: 5D        .byte < _off001_885D_6A   ; 
- D 0 - - - 0x011335 04:9325: 79        .byte < _off001_8879_6B   ; 
- D 0 - - - 0x011336 04:9326: 91        .byte < _off001_8891_6C   ; 
- - - - - - 0x011337 04:9327: AB        .byte < _off001_88AB_6D   ; 
- D 0 - - - 0x011338 04:9328: CD        .byte < _off001_88CD_6E   ; 
- D 0 - - - 0x011339 04:9329: DF        .byte < _off001_88DF_6F   ; 
- D 0 - - - 0x01133A 04:932A: F3        .byte < _off001_88F3_70   ; 
- D 0 - - - 0x01133B 04:932B: 07        .byte < _off001_8907_71   ; 
- D 0 - - - 0x01133C 04:932C: 19        .byte < _off001_8919_72   ; 
- D 0 - - - 0x01133D 04:932D: 1D        .byte < _off001_891D_73   ; 
- D 0 - - - 0x01133E 04:932E: 39        .byte < _off001_8939_74   ; 
- D 0 - - - 0x01133F 04:932F: 41        .byte < _off001_8941_75   ; 
- D 0 - - - 0x011340 04:9330: 49        .byte < _off001_8949_76   ; 
- D 0 - - - 0x011341 04:9331: 4F        .byte < _off001_894F_77   ; 
- D 0 - - - 0x011342 04:9332: 53        .byte < _off001_8953_78   ; 
- D 0 - - - 0x011343 04:9333: 6F        .byte < _off001_896F_79   ; 
- D 0 - - - 0x011344 04:9334: 8D        .byte < _off001_898D_7A   ; 
- D 0 - - - 0x011345 04:9335: A9        .byte < _off001_89A9_7B   ; 
- - - - - - 0x011346 04:9336: C7        .byte < _off001_89C7_7C   ; 
- D 0 - - - 0x011347 04:9337: EB        .byte < _off001_89EB_7D   ; 
- D 0 - - - 0x011348 04:9338: 05        .byte < _off001_8A05_7E   ; 
- D 0 - - - 0x011349 04:9339: 1F        .byte < _off001_8A1F_7F   ; 
- D 0 - - - 0x01134A 04:933A: 39        .byte < _off001_8A39_80   ; 
- D 0 - - - 0x01134B 04:933B: 51        .byte < _off001_8A51_81   ; 
- D 0 - - - 0x01134C 04:933C: 65        .byte < _off001_8A65_82   ; 
- D 0 - - - 0x01134D 04:933D: 79        .byte < _off001_8A79_83   ; 
- D 0 - - - 0x01134E 04:933E: 8D        .byte < _off001_8A8D_84   ; 
- D 0 - - - 0x01134F 04:933F: A1        .byte < _off001_8AA1_85   ; 
- D 0 - - - 0x011350 04:9340: B5        .byte < _off001_8AB5_86   ; 
- D 0 - - - 0x011351 04:9341: C9        .byte < _off001_8AC9_87   ; 
- D 0 - - - 0x011352 04:9342: DD        .byte < _off001_8ADD_88   ; 
- D 0 - - - 0x011353 04:9343: F5        .byte < _off001_8AF5_89   ; 
- D 0 - - - 0x011354 04:9344: 0F        .byte < _off001_8B0F_8A   ; 
- D 0 - - - 0x011355 04:9345: 27        .byte < _off001_8B27_8B   ; 
- D 0 - - - 0x011356 04:9346: 3F        .byte < _off001_8B3F_8C   ; 
- D 0 - - - 0x011357 04:9347: 55        .byte < _off001_8B55_8D   ; 
- D 0 - - - 0x011358 04:9348: 5B        .byte < _off001_8B5B_8E   ; 
- D 0 - - - 0x011359 04:9349: 61        .byte < _off001_8B61_8F   ; 
- D 0 - - - 0x01135A 04:934A: 6B        .byte < _off001_8B6B_90   ; 
- D 0 - - - 0x01135B 04:934B: 75        .byte < _off001_8B75_91   ; 
- D 0 - - - 0x01135C 04:934C: 81        .byte < _off001_8B81_92   ; 
- - - - - - 0x01135D 04:934D: 91        .byte < _off001_8B91_93   ; 
- - - - - - 0x01135E 04:934E: 9B        .byte < _off001_8B9B_94   ; 
- D 0 - - - 0x01135F 04:934F: A5        .byte < _off001_8BA5_95   ; 
- D 0 - - - 0x011360 04:9350: B3        .byte < _off001_8BB3_96   ; 
- D 0 - - - 0x011361 04:9351: BF        .byte < _off001_8BBF_97   ; 
- D 0 - - - 0x011362 04:9352: C9        .byte < _off001_8BC9_98   ; 
- D 0 - - - 0x011363 04:9353: CD        .byte < _off001_8BCD_99   ; 
- D 0 - - - 0x011364 04:9354: E5        .byte < _off001_8BE5_9A   ; 
- D 0 - - - 0x011365 04:9355: F7        .byte < _off001_8BF7_9B   ; 
- D 0 - - - 0x011366 04:9356: 15        .byte < _off001_8C15_9C   ; 
- D 0 - - - 0x011367 04:9357: 23        .byte < _off001_8C23_9D   ; 
- D 0 - - - 0x011368 04:9358: 39        .byte < _off001_8C39_9E   ; 
- D 0 - - - 0x011369 04:9359: 63        .byte < _off001_8C63_9F   ; 
- D 0 - - - 0x01136A 04:935A: 89        .byte < _off001_8C89_A0   ; 
- D 0 - - - 0x01136B 04:935B: AF        .byte < _off001_8CAF_A1   ; 
- D 0 - - - 0x01136C 04:935C: D1        .byte < _off001_8CD1_A2   ; 
- D 0 - - - 0x01136D 04:935D: F5        .byte < _off001_8CF5_A3   ; 
- D 0 - - - 0x01136E 04:935E: 15        .byte < _off001_8D15_A4   ; 
- D 0 - - - 0x01136F 04:935F: 19        .byte < _off001_8D19_A5   ; 
- D 0 - - - 0x011370 04:9360: 1D        .byte < _off001_8D1D_A6   ; 
- D 0 - - - 0x011371 04:9361: 27        .byte < _off001_8D27_A7   ; 
- D 0 - - - 0x011372 04:9362: 37        .byte < _off001_8D37_A8   ; 
- D 0 - - - 0x011373 04:9363: 4D        .byte < _off001_8D4D_A9   ; 
- D 0 - - - 0x011374 04:9364: 63        .byte < _off001_8D63_AA   ; 
- D 0 - - - 0x011375 04:9365: 7F        .byte < _off001_8D7F_AB   ; 
- D 0 - - - 0x011376 04:9366: A3        .byte < _off001_8DA3_AC   ; 
- D 0 - - - 0x011377 04:9367: C3        .byte < _off001_8DC3_AD   ; 
- D 0 - - - 0x011378 04:9368: E5        .byte < _off001_8DE5_AE   ; 
- D 0 - - - 0x011379 04:9369: ED        .byte < _off001_8DED_AF   ; 
- D 0 - - - 0x01137A 04:936A: F5        .byte < _off001_8DF5_B0   ; 
- D 0 - - - 0x01137B 04:936B: FF        .byte < _off001_8DFF_B1   ; 
- D 0 - - - 0x01137C 04:936C: 07        .byte < _off001_8E07_B2   ; 
- D 0 - - - 0x01137D 04:936D: 11        .byte < _off001_8E11_B3   ; 
- D 0 - - - 0x01137E 04:936E: 19        .byte < _off001_8E19_B4   ; 
- D 0 - - - 0x01137F 04:936F: 23        .byte < _off001_8E23_B5   ; 
- D 0 - - - 0x011380 04:9370: 2D        .byte < _off001_8E2D_B6   ; 
- D 0 - - - 0x011381 04:9371: 37        .byte < _off001_8E37_B7   ; 
- D 0 - - - 0x011382 04:9372: 41        .byte < _off001_8E41_B8   ; 
- D 0 - - - 0x011383 04:9373: 57        .byte < _off001_8E57_B9   ; 
- D 0 - - - 0x011384 04:9374: 61        .byte < _off001_8E61_BA   ; 
- D 0 - - - 0x011385 04:9375: 6B        .byte < _off001_8E6B_BB   ; 
- D 0 - - - 0x011386 04:9376: 75        .byte < _off001_8E75_BC   ; 
- D 0 - - - 0x011387 04:9377: 7F        .byte < _off001_8E7F_BD   ; 
- D 0 - - - 0x011388 04:9378: A1        .byte < _off001_8EA1_BE   ; 
- D 0 - - - 0x011389 04:9379: C5        .byte < _off001_8EC5_BF   ; 
- D 0 - - - 0x01138A 04:937A: DF        .byte < _off001_8EDF_C0   ; 
- D 0 - - - 0x01138B 04:937B: F9        .byte < _off001_8EF9_C1   ; 
- D 0 - - - 0x01138C 04:937C: 13        .byte < _off001_8F13_C2   ; 
- D 0 - - - 0x01138D 04:937D: 2D        .byte < _off001_8F2D_C3   ; 
- D 0 - - - 0x01138E 04:937E: 33        .byte < _off001_8F33_C4   ; 
- D 0 - - - 0x01138F 04:937F: 3D        .byte < _off001_8F3D_C5   ; 
- D 0 - - - 0x011390 04:9380: 47        .byte < _off001_8F47_C6   ; 
- D 0 - - - 0x011391 04:9381: 51        .byte < _off001_8F51_C7   ; 
- D 0 - - - 0x011392 04:9382: 69        .byte < _off001_8F69_C8   ; 
- D 0 - - - 0x011393 04:9383: 83        .byte < _off001_8F83_C9   ; 
- D 0 - - - 0x011394 04:9384: 91        .byte < _off001_8F91_CA   ; 
- D 0 - - - 0x011395 04:9385: 9F        .byte < _off001_8F9F_CB   ; 
- D 0 - - - 0x011396 04:9386: A9        .byte < _off001_8FA9_CC   ; 
- D 0 - - - 0x011397 04:9387: DF        .byte < _off001_8FDF_CD   ; 
- D 0 - - - 0x011398 04:9388: 15        .byte < _off001_9015_CE   ; 
- D 0 - - - 0x011399 04:9389: 4B        .byte < _off001_904B_CF   ; 
- D 0 - - - 0x01139A 04:938A: 55        .byte < _off001_9055_D0   ; 
- D 0 - - - 0x01139B 04:938B: 5F        .byte < _off001_905F_D1   ; 
- D 0 - - - 0x01139C 04:938C: 69        .byte < _off001_9069_D2   ; 
- D 0 - - - 0x01139D 04:938D: 79        .byte < _off001_9079_D3   ; 
- D 0 - - - 0x01139E 04:938E: 9D        .byte < _off001_909D_D4   ; 
- D 0 - - - 0x01139F 04:938F: A7        .byte < _off001_90A7_D5   ; 
- D 0 - - - 0x0113A0 04:9390: B1        .byte < _off001_90B1_D6   ; 
- D 0 - - - 0x0113A1 04:9391: BB        .byte < _off001_90BB_D7   ; 
- D 0 - - - 0x0113A2 04:9392: C5        .byte < _off001_90C5_D8   ; 
- D 0 - - - 0x0113A3 04:9393: CF        .byte < _off001_90CF_D9   ; 
- D 0 - - - 0x0113A4 04:9394: D9        .byte < _off001_90D9_DA   ; 
- D 0 - - - 0x0113A5 04:9395: E3        .byte < _off001_90E3_DB   ; 
- D 0 - - - 0x0113A6 04:9396: ED        .byte < _off001_90ED_DC   ; 
- D 0 - - - 0x0113A7 04:9397: F7        .byte < _off001_90F7_DD   ; 
- D 0 - - - 0x0113A8 04:9398: 01        .byte < _off001_9101_DE   ; 
- D 0 - - - 0x0113A9 04:9399: 0F        .byte < _off001_910F_DF   ; 
- D 0 - - - 0x0113AA 04:939A: 13        .byte < _off001_9113_E0   ; 
- D 0 - - - 0x0113AB 04:939B: 27        .byte < _off001_9127_E1   ; 
- D 0 - - - 0x0113AC 04:939C: 31        .byte < _off001_9131_E2   ; 
- D 0 - - - 0x0113AD 04:939D: 3B        .byte < _off001_913B_E3   ; 
- D 0 - - - 0x0113AE 04:939E: 4D        .byte < _off001_914D_E4   ; 
- D 0 - - - 0x0113AF 04:939F: 57        .byte < _off001_9157_E5   ; 
- D 0 - - - 0x0113B0 04:93A0: 79        .byte < _off001_9179_E6   ; 
- D 0 - - - 0x0113B1 04:93A1: 87        .byte < _off001_9187_E7   ; 
- D 0 - - - 0x0113B2 04:93A2: 95        .byte < _off001_9195_E8   ; 
- D 0 - - - 0x0113B3 04:93A3: BF        .byte < _off001_91BF_E9   ; 
- D 0 - - - 0x0113B4 04:93A4: C3        .byte < _off001_91C3_EA   ; 
- D 0 - - - 0x0113B5 04:93A5: C7        .byte < _off001_91C7_EB   ; 
- D 0 - - - 0x0113B6 04:93A6: CB        .byte < _off001_91CB_EC   ; 
- D 0 - - - 0x0113B7 04:93A7: CF        .byte < _off001_91CF_ED   ; 
- D 0 - - - 0x0113B8 04:93A8: D9        .byte < _off001_91D9_EE   ; 
- D 0 - - - 0x0113B9 04:93A9: F5        .byte < _off001_91F5_EF   ; 
- D 0 - - - 0x0113BA 04:93AA: 13        .byte < _off001_9213_F0   ; 
- D 0 - - - 0x0113BB 04:93AB: 29        .byte < _off001_9229_F1   ; 
- D 0 - - - 0x0113BC 04:93AC: 4B        .byte < _off001_924B_F2   ; 
- D 0 - - - 0x0113BD 04:93AD: 61        .byte < _off001_9261_F3   ; 
- D 0 - - - 0x0113BE 04:93AE: 83        .byte < _off001_9283_F4   ; 
- D 0 - - - 0x0113BF 04:93AF: 89        .byte < _off001_9289_F5   ; 
- D 0 - - - 0x0113C0 04:93B0: 8F        .byte < _off001_928F_F6   ; 
- D 0 - - - 0x0113C1 04:93B1: 95        .byte < _off001_9295_F7   ; 
- D 0 - - - 0x0113C2 04:93B2: 9B        .byte < _off001_929B_F8   ; 
- D 0 - - - 0x0113C3 04:93B3: A1        .byte < _off001_92A1_F9   ; 
- D 0 - - - 0x0113C4 04:93B4: A7        .byte < _off001_92A7_FA   ; 
- D 0 - - - 0x0113C5 04:93B5: AD        .byte < _off001_92AD_FB   ; 



tbl_93B6_hi:
- - - - - - 0x0113C6 04:93B6: 82        .byte > _off001_825F_01   ; 
- D 0 - - - 0x0113C7 04:93B7: 82        .byte > _off001_825F_02   ; 
- D 0 - - - 0x0113C8 04:93B8: 82        .byte > _off001_8279_03   ; 
- D 0 - - - 0x0113C9 04:93B9: 82        .byte > _off001_8293_04   ; 
- D 0 - - - 0x0113CA 04:93BA: 82        .byte > _off001_82AD_05   ; 
- D 0 - - - 0x0113CB 04:93BB: 82        .byte > _off001_82C3_06   ; 
- D 0 - - - 0x0113CC 04:93BC: 82        .byte > _off001_82D9_07   ; 
- D 0 - - - 0x0113CD 04:93BD: 82        .byte > _off001_82EF_08   ; 
- D 0 - - - 0x0113CE 04:93BE: 83        .byte > _off001_8307_09   ; 
- D 0 - - - 0x0113CF 04:93BF: 83        .byte > _off001_831F_0A   ; 
- - - - - - 0x0113D0 04:93C0: 83        .byte > _off001_8339_0B   ; 
- - - - - - 0x0113D1 04:93C1: 83        .byte > _off001_8353_0C   ; 
- - - - - - 0x0113D2 04:93C2: 83        .byte > _off001_836D_0D   ; 
- D 0 - - - 0x0113D3 04:93C3: 83        .byte > _off001_8389_0E   ; 
- D 0 - - - 0x0113D4 04:93C4: 83        .byte > _off001_83A3_0F   ; 
- D 0 - - - 0x0113D5 04:93C5: 83        .byte > _off001_83BD_10   ; 
- D 0 - - - 0x0113D6 04:93C6: 83        .byte > _off001_83D3_11   ; 
- D 0 - - - 0x0113D7 04:93C7: 83        .byte > _off001_83EB_12   ; 
- D 0 - - - 0x0113D8 04:93C8: 84        .byte > _off001_8407_13   ; 
- D 0 - - - 0x0113D9 04:93C9: 84        .byte > _off001_8421_14   ; 
- D 0 - - - 0x0113DA 04:93CA: 84        .byte > _off001_843B_15   ; 
- D 0 - - - 0x0113DB 04:93CB: 84        .byte > _off001_8455_16   ; 
- D 0 - - - 0x0113DC 04:93CC: 84        .byte > _off001_845B_17   ; 
- D 0 - - - 0x0113DD 04:93CD: 84        .byte > _off001_8461_18   ; 
- D 0 - - - 0x0113DE 04:93CE: 84        .byte > _off001_8467_19   ; 
- D 0 - - - 0x0113DF 04:93CF: 84        .byte > _off001_846D_1A   ; 
- D 0 - - - 0x0113E0 04:93D0: 84        .byte > _off001_8471_1B   ; 
- D 0 - - - 0x0113E1 04:93D1: 84        .byte > _off001_8475_1C   ; 
- D 0 - - - 0x0113E2 04:93D2: 84        .byte > _off001_847F_1D   ; 
- D 0 - - - 0x0113E3 04:93D3: 84        .byte > _off001_8487_1E   ; 
- D 0 - - - 0x0113E4 04:93D4: 84        .byte > _off001_848F_1F   ; 
- D 0 - - - 0x0113E5 04:93D5: 84        .byte > _off001_8499_20   ; 
- D 0 - - - 0x0113E6 04:93D6: 84        .byte > _off001_84A3_21   ; 
- D 0 - - - 0x0113E7 04:93D7: 84        .byte > _off001_84AD_22   ; 
- D 0 - - - 0x0113E8 04:93D8: 84        .byte > _off001_84B7_23   ; 
- D 0 - - - 0x0113E9 04:93D9: 84        .byte > _off001_84C1_24   ; 
- D 0 - - - 0x0113EA 04:93DA: 84        .byte > _off001_84CB_25   ; 
- - - - - - 0x0113EB 04:93DB: 84        .byte > _off001_84DD_26   ; 
- D 0 - - - 0x0113EC 04:93DC: 84        .byte > _off001_84E7_27   ; 
- D 0 - - - 0x0113ED 04:93DD: 84        .byte > _off001_84F1_28   ; 
- D 0 - - - 0x0113EE 04:93DE: 84        .byte > _off001_84FB_29   ; 
- D 0 - - - 0x0113EF 04:93DF: 85        .byte > _off001_8505_2A   ; 
- D 0 - - - 0x0113F0 04:93E0: 85        .byte > _off001_850F_2B   ; 
- D 0 - - - 0x0113F1 04:93E1: 85        .byte > _off001_8519_2C   ; 
- D 0 - - - 0x0113F2 04:93E2: 85        .byte > _off001_8523_2D   ; 
- D 0 - - - 0x0113F3 04:93E3: 85        .byte > _off001_852D_2E   ; 
- D 0 - - - 0x0113F4 04:93E4: 85        .byte > _off001_8537_2F   ; 
- D 0 - - - 0x0113F5 04:93E5: 85        .byte > _off001_8541_30   ; 
- D 0 - - - 0x0113F6 04:93E6: 85        .byte > _off001_854B_31   ; 
- D 0 - - - 0x0113F7 04:93E7: 85        .byte > _off001_8565_32   ; 
- D 0 - - - 0x0113F8 04:93E8: 85        .byte > _off001_856F_33   ; 
- D 0 - - - 0x0113F9 04:93E9: 85        .byte > _off001_857B_34   ; 
- D 0 - - - 0x0113FA 04:93EA: 85        .byte > _off001_8585_35   ; 
- D 0 - - - 0x0113FB 04:93EB: 85        .byte > _off001_858D_36   ; 
- D 0 - - - 0x0113FC 04:93EC: 85        .byte > _off001_8597_37   ; 
- D 0 - - - 0x0113FD 04:93ED: 85        .byte > _off001_85A7_38   ; 
- D 0 - - - 0x0113FE 04:93EE: 85        .byte > _off001_85B5_39   ; 
- D 0 - - - 0x0113FF 04:93EF: 85        .byte > _off001_85BF_3A   ; 
- D 0 - - - 0x011400 04:93F0: 85        .byte > _off001_85C9_3B   ; 
- D 0 - - - 0x011401 04:93F1: 85        .byte > _off001_85D3_3C   ; 
- D 0 - - - 0x011402 04:93F2: 85        .byte > _off001_85E9_3D   ; 
- D 0 - - - 0x011403 04:93F3: 85        .byte > _off001_85FD_3E   ; 
- - - - - - 0x011404 04:93F4: 86        .byte > _off001_8611_3F   ; 
- D 0 - - - 0x011405 04:93F5: 86        .byte > _off001_8629_40   ; 
- D 0 - - - 0x011406 04:93F6: 86        .byte > _off001_863B_41   ; 
- D 0 - - - 0x011407 04:93F7: 86        .byte > _off001_8649_42   ; 
- D 0 - - - 0x011408 04:93F8: 86        .byte > _off001_8655_43   ; 
- D 0 - - - 0x011409 04:93F9: 86        .byte > _off001_8661_44   ; 
- D 0 - - - 0x01140A 04:93FA: 86        .byte > _off001_866B_45   ; 
- D 0 - - - 0x01140B 04:93FB: 86        .byte > _off001_8675_46   ; 
- D 0 - - - 0x01140C 04:93FC: 86        .byte > _off001_867F_47   ; 
- D 0 - - - 0x01140D 04:93FD: 86        .byte > _off001_8689_48   ; 
- D 0 - - - 0x01140E 04:93FE: 86        .byte > _off001_8693_49   ; 
- D 0 - - - 0x01140F 04:93FF: 86        .byte > _off001_86AD_4A   ; 
- D 0 - - - 0x011410 04:9400: 86        .byte > _off001_86C7_4B   ; 
- D 0 - - - 0x011411 04:9401: 86        .byte > _off001_86E1_4C   ; 
- D 0 - - - 0x011412 04:9402: 86        .byte > _off001_86F9_4D   ; 
- D 0 - - - 0x011413 04:9403: 87        .byte > _off001_8713_4E   ; 
- D 0 - - - 0x011414 04:9404: 87        .byte > _off001_872D_4F   ; 
- D 0 - - - 0x011415 04:9405: 87        .byte > _off001_8747_50   ; 
- D 0 - - - 0x011416 04:9406: 87        .byte > _off001_8761_51   ; 
- D 0 - - - 0x011417 04:9407: 87        .byte > _off001_8765_52   ; 
- D 0 - - - 0x011418 04:9408: 87        .byte > _off001_8769_53   ; 
- D 0 - - - 0x011419 04:9409: 87        .byte > _off001_8773_54   ; 
- D 0 - - - 0x01141A 04:940A: 87        .byte > _off001_877D_55   ; 
- D 0 - - - 0x01141B 04:940B: 87        .byte > _off001_8787_56   ; 
- D 0 - - - 0x01141C 04:940C: 87        .byte > _off001_879B_57   ; 
- D 0 - - - 0x01141D 04:940D: 87        .byte > _off001_87AF_58   ; 
- - - - - - 0x01141E 04:940E: 87        .byte > _off001_87B9_59   ; 
- D 0 - - - 0x01141F 04:940F: 87        .byte > _off001_87C3_5A   ; 
- D 0 - - - 0x011420 04:9410: 87        .byte > _off001_87CD_5B   ; 
- D 0 - - - 0x011421 04:9411: 87        .byte > _off001_87D1_5C   ; 
- D 0 - - - 0x011422 04:9412: 87        .byte > _off001_87DB_5D   ; 
- D 0 - - - 0x011423 04:9413: 87        .byte > _off001_87E5_5E   ; 
- D 0 - - - 0x011424 04:9414: 87        .byte > _off001_87EF_5F   ; 
- D 0 - - - 0x011425 04:9415: 87        .byte > _off001_87F9_60   ; 
- D 0 - - - 0x011426 04:9416: 88        .byte > _off001_8803_61   ; 
- D 0 - - - 0x011427 04:9417: 88        .byte > _off001_880D_62   ; 
- D 0 - - - 0x011428 04:9418: 88        .byte > _off001_8817_63   ; 
- D 0 - - - 0x011429 04:9419: 88        .byte > _off001_8821_64   ; 
- D 0 - - - 0x01142A 04:941A: 88        .byte > _off001_882B_65   ; 
- D 0 - - - 0x01142B 04:941B: 88        .byte > _off001_8835_66   ; 
- D 0 - - - 0x01142C 04:941C: 88        .byte > _off001_883F_67   ; 
- D 0 - - - 0x01142D 04:941D: 88        .byte > _off001_8849_68   ; 
- D 0 - - - 0x01142E 04:941E: 88        .byte > _off001_8853_69   ; 
- D 0 - - - 0x01142F 04:941F: 88        .byte > _off001_885D_6A   ; 
- D 0 - - - 0x011430 04:9420: 88        .byte > _off001_8879_6B   ; 
- D 0 - - - 0x011431 04:9421: 88        .byte > _off001_8891_6C   ; 
- - - - - - 0x011432 04:9422: 88        .byte > _off001_88AB_6D   ; 
- D 0 - - - 0x011433 04:9423: 88        .byte > _off001_88CD_6E   ; 
- D 0 - - - 0x011434 04:9424: 88        .byte > _off001_88DF_6F   ; 
- D 0 - - - 0x011435 04:9425: 88        .byte > _off001_88F3_70   ; 
- D 0 - - - 0x011436 04:9426: 89        .byte > _off001_8907_71   ; 
- D 0 - - - 0x011437 04:9427: 89        .byte > _off001_8919_72   ; 
- D 0 - - - 0x011438 04:9428: 89        .byte > _off001_891D_73   ; 
- D 0 - - - 0x011439 04:9429: 89        .byte > _off001_8939_74   ; 
- D 0 - - - 0x01143A 04:942A: 89        .byte > _off001_8941_75   ; 
- D 0 - - - 0x01143B 04:942B: 89        .byte > _off001_8949_76   ; 
- D 0 - - - 0x01143C 04:942C: 89        .byte > _off001_894F_77   ; 
- D 0 - - - 0x01143D 04:942D: 89        .byte > _off001_8953_78   ; 
- D 0 - - - 0x01143E 04:942E: 89        .byte > _off001_896F_79   ; 
- D 0 - - - 0x01143F 04:942F: 89        .byte > _off001_898D_7A   ; 
- D 0 - - - 0x011440 04:9430: 89        .byte > _off001_89A9_7B   ; 
- - - - - - 0x011441 04:9431: 89        .byte > _off001_89C7_7C   ; 
- D 0 - - - 0x011442 04:9432: 89        .byte > _off001_89EB_7D   ; 
- D 0 - - - 0x011443 04:9433: 8A        .byte > _off001_8A05_7E   ; 
- D 0 - - - 0x011444 04:9434: 8A        .byte > _off001_8A1F_7F   ; 
- D 0 - - - 0x011445 04:9435: 8A        .byte > _off001_8A39_80   ; 
- D 0 - - - 0x011446 04:9436: 8A        .byte > _off001_8A51_81   ; 
- D 0 - - - 0x011447 04:9437: 8A        .byte > _off001_8A65_82   ; 
- D 0 - - - 0x011448 04:9438: 8A        .byte > _off001_8A79_83   ; 
- D 0 - - - 0x011449 04:9439: 8A        .byte > _off001_8A8D_84   ; 
- D 0 - - - 0x01144A 04:943A: 8A        .byte > _off001_8AA1_85   ; 
- D 0 - - - 0x01144B 04:943B: 8A        .byte > _off001_8AB5_86   ; 
- D 0 - - - 0x01144C 04:943C: 8A        .byte > _off001_8AC9_87   ; 
- D 0 - - - 0x01144D 04:943D: 8A        .byte > _off001_8ADD_88   ; 
- D 0 - - - 0x01144E 04:943E: 8A        .byte > _off001_8AF5_89   ; 
- D 0 - - - 0x01144F 04:943F: 8B        .byte > _off001_8B0F_8A   ; 
- D 0 - - - 0x011450 04:9440: 8B        .byte > _off001_8B27_8B   ; 
- D 0 - - - 0x011451 04:9441: 8B        .byte > _off001_8B3F_8C   ; 
- D 0 - - - 0x011452 04:9442: 8B        .byte > _off001_8B55_8D   ; 
- D 0 - - - 0x011453 04:9443: 8B        .byte > _off001_8B5B_8E   ; 
- D 0 - - - 0x011454 04:9444: 8B        .byte > _off001_8B61_8F   ; 
- D 0 - - - 0x011455 04:9445: 8B        .byte > _off001_8B6B_90   ; 
- D 0 - - - 0x011456 04:9446: 8B        .byte > _off001_8B75_91   ; 
- D 0 - - - 0x011457 04:9447: 8B        .byte > _off001_8B81_92   ; 
- - - - - - 0x011458 04:9448: 8B        .byte > _off001_8B91_93   ; 
- - - - - - 0x011459 04:9449: 8B        .byte > _off001_8B9B_94   ; 
- D 0 - - - 0x01145A 04:944A: 8B        .byte > _off001_8BA5_95   ; 
- D 0 - - - 0x01145B 04:944B: 8B        .byte > _off001_8BB3_96   ; 
- D 0 - - - 0x01145C 04:944C: 8B        .byte > _off001_8BBF_97   ; 
- D 0 - - - 0x01145D 04:944D: 8B        .byte > _off001_8BC9_98   ; 
- D 0 - - - 0x01145E 04:944E: 8B        .byte > _off001_8BCD_99   ; 
- D 0 - - - 0x01145F 04:944F: 8B        .byte > _off001_8BE5_9A   ; 
- D 0 - - - 0x011460 04:9450: 8B        .byte > _off001_8BF7_9B   ; 
- D 0 - - - 0x011461 04:9451: 8C        .byte > _off001_8C15_9C   ; 
- D 0 - - - 0x011462 04:9452: 8C        .byte > _off001_8C23_9D   ; 
- D 0 - - - 0x011463 04:9453: 8C        .byte > _off001_8C39_9E   ; 
- D 0 - - - 0x011464 04:9454: 8C        .byte > _off001_8C63_9F   ; 
- D 0 - - - 0x011465 04:9455: 8C        .byte > _off001_8C89_A0   ; 
- D 0 - - - 0x011466 04:9456: 8C        .byte > _off001_8CAF_A1   ; 
- D 0 - - - 0x011467 04:9457: 8C        .byte > _off001_8CD1_A2   ; 
- D 0 - - - 0x011468 04:9458: 8C        .byte > _off001_8CF5_A3   ; 
- D 0 - - - 0x011469 04:9459: 8D        .byte > _off001_8D15_A4   ; 
- D 0 - - - 0x01146A 04:945A: 8D        .byte > _off001_8D19_A5   ; 
- D 0 - - - 0x01146B 04:945B: 8D        .byte > _off001_8D1D_A6   ; 
- D 0 - - - 0x01146C 04:945C: 8D        .byte > _off001_8D27_A7   ; 
- D 0 - - - 0x01146D 04:945D: 8D        .byte > _off001_8D37_A8   ; 
- D 0 - - - 0x01146E 04:945E: 8D        .byte > _off001_8D4D_A9   ; 
- D 0 - - - 0x01146F 04:945F: 8D        .byte > _off001_8D63_AA   ; 
- D 0 - - - 0x011470 04:9460: 8D        .byte > _off001_8D7F_AB   ; 
- D 0 - - - 0x011471 04:9461: 8D        .byte > _off001_8DA3_AC   ; 
- D 0 - - - 0x011472 04:9462: 8D        .byte > _off001_8DC3_AD   ; 
- D 0 - - - 0x011473 04:9463: 8D        .byte > _off001_8DE5_AE   ; 
- D 0 - - - 0x011474 04:9464: 8D        .byte > _off001_8DED_AF   ; 
- D 0 - - - 0x011475 04:9465: 8D        .byte > _off001_8DF5_B0   ; 
- D 0 - - - 0x011476 04:9466: 8D        .byte > _off001_8DFF_B1   ; 
- D 0 - - - 0x011477 04:9467: 8E        .byte > _off001_8E07_B2   ; 
- D 0 - - - 0x011478 04:9468: 8E        .byte > _off001_8E11_B3   ; 
- D 0 - - - 0x011479 04:9469: 8E        .byte > _off001_8E19_B4   ; 
- D 0 - - - 0x01147A 04:946A: 8E        .byte > _off001_8E23_B5   ; 
- D 0 - - - 0x01147B 04:946B: 8E        .byte > _off001_8E2D_B6   ; 
- D 0 - - - 0x01147C 04:946C: 8E        .byte > _off001_8E37_B7   ; 
- D 0 - - - 0x01147D 04:946D: 8E        .byte > _off001_8E41_B8   ; 
- D 0 - - - 0x01147E 04:946E: 8E        .byte > _off001_8E57_B9   ; 
- D 0 - - - 0x01147F 04:946F: 8E        .byte > _off001_8E61_BA   ; 
- D 0 - - - 0x011480 04:9470: 8E        .byte > _off001_8E6B_BB   ; 
- D 0 - - - 0x011481 04:9471: 8E        .byte > _off001_8E75_BC   ; 
- D 0 - - - 0x011482 04:9472: 8E        .byte > _off001_8E7F_BD   ; 
- D 0 - - - 0x011483 04:9473: 8E        .byte > _off001_8EA1_BE   ; 
- D 0 - - - 0x011484 04:9474: 8E        .byte > _off001_8EC5_BF   ; 
- D 0 - - - 0x011485 04:9475: 8E        .byte > _off001_8EDF_C0   ; 
- D 0 - - - 0x011486 04:9476: 8E        .byte > _off001_8EF9_C1   ; 
- D 0 - - - 0x011487 04:9477: 8F        .byte > _off001_8F13_C2   ; 
- D 0 - - - 0x011488 04:9478: 8F        .byte > _off001_8F2D_C3   ; 
- D 0 - - - 0x011489 04:9479: 8F        .byte > _off001_8F33_C4   ; 
- D 0 - - - 0x01148A 04:947A: 8F        .byte > _off001_8F3D_C5   ; 
- D 0 - - - 0x01148B 04:947B: 8F        .byte > _off001_8F47_C6   ; 
- D 0 - - - 0x01148C 04:947C: 8F        .byte > _off001_8F51_C7   ; 
- D 0 - - - 0x01148D 04:947D: 8F        .byte > _off001_8F69_C8   ; 
- D 0 - - - 0x01148E 04:947E: 8F        .byte > _off001_8F83_C9   ; 
- D 0 - - - 0x01148F 04:947F: 8F        .byte > _off001_8F91_CA   ; 
- D 0 - - - 0x011490 04:9480: 8F        .byte > _off001_8F9F_CB   ; 
- D 0 - - - 0x011491 04:9481: 8F        .byte > _off001_8FA9_CC   ; 
- D 0 - - - 0x011492 04:9482: 8F        .byte > _off001_8FDF_CD   ; 
- D 0 - - - 0x011493 04:9483: 90        .byte > _off001_9015_CE   ; 
- D 0 - - - 0x011494 04:9484: 90        .byte > _off001_904B_CF   ; 
- D 0 - - - 0x011495 04:9485: 90        .byte > _off001_9055_D0   ; 
- D 0 - - - 0x011496 04:9486: 90        .byte > _off001_905F_D1   ; 
- D 0 - - - 0x011497 04:9487: 90        .byte > _off001_9069_D2   ; 
- D 0 - - - 0x011498 04:9488: 90        .byte > _off001_9079_D3   ; 
- D 0 - - - 0x011499 04:9489: 90        .byte > _off001_909D_D4   ; 
- D 0 - - - 0x01149A 04:948A: 90        .byte > _off001_90A7_D5   ; 
- D 0 - - - 0x01149B 04:948B: 90        .byte > _off001_90B1_D6   ; 
- D 0 - - - 0x01149C 04:948C: 90        .byte > _off001_90BB_D7   ; 
- D 0 - - - 0x01149D 04:948D: 90        .byte > _off001_90C5_D8   ; 
- D 0 - - - 0x01149E 04:948E: 90        .byte > _off001_90CF_D9   ; 
- D 0 - - - 0x01149F 04:948F: 90        .byte > _off001_90D9_DA   ; 
- D 0 - - - 0x0114A0 04:9490: 90        .byte > _off001_90E3_DB   ; 
- D 0 - - - 0x0114A1 04:9491: 90        .byte > _off001_90ED_DC   ; 
- D 0 - - - 0x0114A2 04:9492: 90        .byte > _off001_90F7_DD   ; 
- D 0 - - - 0x0114A3 04:9493: 91        .byte > _off001_9101_DE   ; 
- D 0 - - - 0x0114A4 04:9494: 91        .byte > _off001_910F_DF   ; 
- D 0 - - - 0x0114A5 04:9495: 91        .byte > _off001_9113_E0   ; 
- D 0 - - - 0x0114A6 04:9496: 91        .byte > _off001_9127_E1   ; 
- D 0 - - - 0x0114A7 04:9497: 91        .byte > _off001_9131_E2   ; 
- D 0 - - - 0x0114A8 04:9498: 91        .byte > _off001_913B_E3   ; 
- D 0 - - - 0x0114A9 04:9499: 91        .byte > _off001_914D_E4   ; 
- D 0 - - - 0x0114AA 04:949A: 91        .byte > _off001_9157_E5   ; 
- D 0 - - - 0x0114AB 04:949B: 91        .byte > _off001_9179_E6   ; 
- D 0 - - - 0x0114AC 04:949C: 91        .byte > _off001_9187_E7   ; 
- D 0 - - - 0x0114AD 04:949D: 91        .byte > _off001_9195_E8   ; 
- D 0 - - - 0x0114AE 04:949E: 91        .byte > _off001_91BF_E9   ; 
- D 0 - - - 0x0114AF 04:949F: 91        .byte > _off001_91C3_EA   ; 
- D 0 - - - 0x0114B0 04:94A0: 91        .byte > _off001_91C7_EB   ; 
- D 0 - - - 0x0114B1 04:94A1: 91        .byte > _off001_91CB_EC   ; 
- D 0 - - - 0x0114B2 04:94A2: 91        .byte > _off001_91CF_ED   ; 
- D 0 - - - 0x0114B3 04:94A3: 91        .byte > _off001_91D9_EE   ; 
- D 0 - - - 0x0114B4 04:94A4: 91        .byte > _off001_91F5_EF   ; 
- D 0 - - - 0x0114B5 04:94A5: 92        .byte > _off001_9213_F0   ; 
- D 0 - - - 0x0114B6 04:94A6: 92        .byte > _off001_9229_F1   ; 
- D 0 - - - 0x0114B7 04:94A7: 92        .byte > _off001_924B_F2   ; 
- D 0 - - - 0x0114B8 04:94A8: 92        .byte > _off001_9261_F3   ; 
- D 0 - - - 0x0114B9 04:94A9: 92        .byte > _off001_9283_F4   ; 
- D 0 - - - 0x0114BA 04:94AA: 92        .byte > _off001_9289_F5   ; 
- D 0 - - - 0x0114BB 04:94AB: 92        .byte > _off001_928F_F6   ; 
- D 0 - - - 0x0114BC 04:94AC: 92        .byte > _off001_9295_F7   ; 
- D 0 - - - 0x0114BD 04:94AD: 92        .byte > _off001_929B_F8   ; 
- D 0 - - - 0x0114BE 04:94AE: 92        .byte > _off001_92A1_F9   ; 
- D 0 - - - 0x0114BF 04:94AF: 92        .byte > _off001_92A7_FA   ; 
- D 0 - - - 0x0114C0 04:94B0: 92        .byte > _off001_92AD_FB   ; 



_off002_94B1_00:
- D 0 - I - 0x0114C1 04:94B1: F8        .byte $F8, $F6   ; 00 spr_Y, spr_X
- D 0 - I - 0x0114C3 04:94B3: F8        .byte $F8, $FE   ; 01
- D 0 - I - 0x0114C5 04:94B5: 00        .byte $00, $FB   ; 02
- D 0 - I - 0x0114C7 04:94B7: 00        .byte $00, $03   ; 03
- D 0 - I - 0x0114C9 04:94B9: F0        .byte $F0, $F4   ; 04
- D 0 - I - 0x0114CB 04:94BB: F0        .byte $F0, $FC   ; 05
- D 0 - I - 0x0114CD 04:94BD: F0        .byte $F0, $04   ; 06
- D 0 - I - 0x0114CF 04:94BF: F8        .byte $F8, $FC   ; 07
- D 0 - I - 0x0114D1 04:94C1: F8        .byte $F8, $04   ; 08
- D 0 - I - 0x0114D3 04:94C3: FF        .byte $FF, $FB   ; 09
- D 0 - I - 0x0114D5 04:94C5: 00        .byte $00, $03   ; 0A
- D 0 - I - 0x0114D7 04:94C7: 05        .byte $05, $09   ; 0B



_off002_94C9_01:
- D 0 - I - 0x0114D9 04:94C9: F8        .byte $F8, $02   ; 00 spr_Y, spr_X
- D 0 - I - 0x0114DB 04:94CB: F8        .byte $F8, $FA   ; 01
- D 0 - I - 0x0114DD 04:94CD: 00        .byte $00, $FD   ; 02
- D 0 - I - 0x0114DF 04:94CF: 00        .byte $00, $F5   ; 03
- D 0 - I - 0x0114E1 04:94D1: F0        .byte $F0, $04   ; 04
- D 0 - I - 0x0114E3 04:94D3: F0        .byte $F0, $FC   ; 05
- D 0 - I - 0x0114E5 04:94D5: F0        .byte $F0, $F4   ; 06
- D 0 - I - 0x0114E7 04:94D7: F8        .byte $F8, $FC   ; 07
- D 0 - I - 0x0114E9 04:94D9: F8        .byte $F8, $F4   ; 08
- D 0 - I - 0x0114EB 04:94DB: FF        .byte $FF, $FD   ; 09
- D 0 - I - 0x0114ED 04:94DD: 00        .byte $00, $F5   ; 0A
- D 0 - I - 0x0114EF 04:94DF: 05        .byte $05, $EF   ; 0B



_off002_94E1_02:
- D 0 - I - 0x0114F1 04:94E1: F7        .byte $F7, $F5   ; 00 spr_Y, spr_X
- D 0 - I - 0x0114F3 04:94E3: F7        .byte $F7, $FD   ; 01
- D 0 - I - 0x0114F5 04:94E5: FF        .byte $FF, $FA   ; 02
- D 0 - I - 0x0114F7 04:94E7: FF        .byte $FF, $02   ; 03
- D 0 - I - 0x0114F9 04:94E9: EF        .byte $EF, $F3   ; 04
- D 0 - I - 0x0114FB 04:94EB: EF        .byte $EF, $FB   ; 05
- D 0 - I - 0x0114FD 04:94ED: EF        .byte $EF, $03   ; 06
- D 0 - I - 0x0114FF 04:94EF: F7        .byte $F7, $FB   ; 07
- D 0 - I - 0x011501 04:94F1: F7        .byte $F7, $03   ; 08
- D 0 - I - 0x011503 04:94F3: FD        .byte $FD, $FB   ; 09
- D 0 - I - 0x011505 04:94F5: FF        .byte $FF, $03   ; 0A
- D 0 - I - 0x011507 04:94F7: FF        .byte $FF, $09   ; 0B



_off002_94F9_03:
- D 0 - I - 0x011509 04:94F9: F7        .byte $F7, $03   ; 00 spr_Y, spr_X
- D 0 - I - 0x01150B 04:94FB: F7        .byte $F7, $FB   ; 01
- D 0 - I - 0x01150D 04:94FD: FF        .byte $FF, $FE   ; 02
- D 0 - I - 0x01150F 04:94FF: FF        .byte $FF, $F6   ; 03
- D 0 - I - 0x011511 04:9501: EF        .byte $EF, $05   ; 04
- D 0 - I - 0x011513 04:9503: EF        .byte $EF, $FD   ; 05
- D 0 - I - 0x011515 04:9505: EF        .byte $EF, $F5   ; 06
- D 0 - I - 0x011517 04:9507: F7        .byte $F7, $FD   ; 07
- D 0 - I - 0x011519 04:9509: F7        .byte $F7, $F5   ; 08
- D 0 - I - 0x01151B 04:950B: FD        .byte $FD, $FD   ; 09
- D 0 - I - 0x01151D 04:950D: FF        .byte $FF, $F5   ; 0A
- D 0 - I - 0x01151F 04:950F: FF        .byte $FF, $EF   ; 0B



_off002_9511_04:
- D 0 - I - 0x011521 04:9511: F6        .byte $F6, $F4   ; 00 spr_Y, spr_X
- D 0 - I - 0x011523 04:9513: F6        .byte $F6, $FC   ; 01
- D 0 - I - 0x011525 04:9515: FE        .byte $FE, $F8   ; 02
- D 0 - I - 0x011527 04:9517: FE        .byte $FE, $00   ; 03
- D 0 - I - 0x011529 04:9519: EE        .byte $EE, $F2   ; 04
- D 0 - I - 0x01152B 04:951B: EE        .byte $EE, $FA   ; 05
- D 0 - I - 0x01152D 04:951D: EE        .byte $EE, $02   ; 06
- D 0 - I - 0x01152F 04:951F: F6        .byte $F6, $FA   ; 07
- D 0 - I - 0x011531 04:9521: F6        .byte $F6, $02   ; 08
- D 0 - I - 0x011533 04:9523: FC        .byte $FC, $FC   ; 09
- D 0 - I - 0x011535 04:9525: FE        .byte $FE, $04   ; 0A
- D 0 - I - 0x011537 04:9527: F8        .byte $F8, $0A   ; 0B



_off002_9529_05:
- D 0 - I - 0x011539 04:9529: F6        .byte $F6, $04   ; 00 spr_Y, spr_X
- D 0 - I - 0x01153B 04:952B: F6        .byte $F6, $FC   ; 01
- D 0 - I - 0x01153D 04:952D: FE        .byte $FE, $00   ; 02
- D 0 - I - 0x01153F 04:952F: FE        .byte $FE, $F8   ; 03
- D 0 - I - 0x011541 04:9531: EE        .byte $EE, $06   ; 04
- D 0 - I - 0x011543 04:9533: EE        .byte $EE, $FE   ; 05
- D 0 - I - 0x011545 04:9535: EE        .byte $EE, $F6   ; 06
- D 0 - I - 0x011547 04:9537: F6        .byte $F6, $FE   ; 07
- D 0 - I - 0x011549 04:9539: F6        .byte $F6, $F6   ; 08
- D 0 - I - 0x01154B 04:953B: FC        .byte $FC, $FC   ; 09
- D 0 - I - 0x01154D 04:953D: FE        .byte $FE, $F4   ; 0A
- D 0 - I - 0x01154F 04:953F: F8        .byte $F8, $EE   ; 0B



_off002_9541_06:
- D 0 - I - 0x011551 04:9541: 00        .byte $00, $FA   ; 00 spr_Y, spr_X
- D 0 - I - 0x011553 04:9543: 00        .byte $00, $02   ; 01
- D 0 - I - 0x011555 04:9545: F0        .byte $F0, $F8   ; 02
- D 0 - I - 0x011557 04:9547: F0        .byte $F0, $00   ; 03
- D 0 - I - 0x011559 04:9549: F0        .byte $F0, $08   ; 04
- D 0 - I - 0x01155B 04:954B: F8        .byte $F8, $F8   ; 05
- D 0 - I - 0x01155D 04:954D: F8        .byte $F8, $00   ; 06
- D 0 - I - 0x01155F 04:954F: F8        .byte $F8, $08   ; 07
- D 0 - I - 0x011561 04:9551: 00        .byte $00, $00   ; 08
- D 0 - I - 0x011563 04:9553: 07        .byte $07, $07   ; 09



_off002_9555_07:
- D 0 - I - 0x011565 04:9555: 00        .byte $00, $FE   ; 00 spr_Y, spr_X
- D 0 - I - 0x011567 04:9557: 00        .byte $00, $F6   ; 01
- D 0 - I - 0x011569 04:9559: F0        .byte $F0, $00   ; 02
- D 0 - I - 0x01156B 04:955B: F0        .byte $F0, $F8   ; 03
- D 0 - I - 0x01156D 04:955D: F0        .byte $F0, $F0   ; 04
- D 0 - I - 0x01156F 04:955F: F8        .byte $F8, $00   ; 05
- D 0 - I - 0x011571 04:9561: F8        .byte $F8, $F8   ; 06
- D 0 - I - 0x011573 04:9563: F8        .byte $F8, $F0   ; 07
- D 0 - I - 0x011575 04:9565: 00        .byte $00, $F8   ; 08
- D 0 - I - 0x011577 04:9567: 07        .byte $07, $F1   ; 09



_off002_9569_08:
- D 0 - I - 0x011579 04:9569: 01        .byte $01, $FA   ; 00 spr_Y, spr_X
- D 0 - I - 0x01157B 04:956B: 01        .byte $01, $02   ; 01
- D 0 - I - 0x01157D 04:956D: F1        .byte $F1, $F8   ; 02
- D 0 - I - 0x01157F 04:956F: F1        .byte $F1, $00   ; 03
- D 0 - I - 0x011581 04:9571: F1        .byte $F1, $08   ; 04
- D 0 - I - 0x011583 04:9573: F9        .byte $F9, $F8   ; 05
- D 0 - I - 0x011585 04:9575: F9        .byte $F9, $00   ; 06
- D 0 - I - 0x011587 04:9577: F9        .byte $F9, $08   ; 07
- D 0 - I - 0x011589 04:9579: 03        .byte $03, $01   ; 08
- D 0 - I - 0x01158B 04:957B: 07        .byte $07, $09   ; 09



_off002_957D_09:
- D 0 - I - 0x01158D 04:957D: 01        .byte $01, $FE   ; 00 spr_Y, spr_X
- D 0 - I - 0x01158F 04:957F: 01        .byte $01, $F6   ; 01
- D 0 - I - 0x011591 04:9581: F1        .byte $F1, $00   ; 02
- D 0 - I - 0x011593 04:9583: F1        .byte $F1, $F8   ; 03
- D 0 - I - 0x011595 04:9585: F1        .byte $F1, $F0   ; 04
- D 0 - I - 0x011597 04:9587: F9        .byte $F9, $00   ; 05
- D 0 - I - 0x011599 04:9589: F9        .byte $F9, $F8   ; 06
- D 0 - I - 0x01159B 04:958B: F9        .byte $F9, $F0   ; 07
- D 0 - I - 0x01159D 04:958D: 03        .byte $03, $F7   ; 08
- D 0 - I - 0x01159F 04:958F: 07        .byte $07, $EF   ; 09



_off002_9591_0A:
- D 0 - I - 0x0115A1 04:9591: F0        .byte $F0, $F0   ; 00 spr_Y, spr_X
- D 0 - I - 0x0115A3 04:9593: F0        .byte $F0, $F8   ; 01
- D 0 - I - 0x0115A5 04:9595: F0        .byte $F0, $00   ; 02
- D 0 - I - 0x0115A7 04:9597: F8        .byte $F8, $F0   ; 03
- D 0 - I - 0x0115A9 04:9599: F8        .byte $F8, $F8   ; 04
- D 0 - I - 0x0115AB 04:959B: F8        .byte $F8, $00   ; 05
- D 0 - I - 0x0115AD 04:959D: 00        .byte $00, $F6   ; 06
- D 0 - I - 0x0115AF 04:959F: 00        .byte $00, $FE   ; 07
- D 0 - I - 0x0115B1 04:95A1: 08        .byte $08, $00   ; 08
- D 0 - I - 0x0115B3 04:95A3: FA        .byte $FA, $02   ; 09
- D 0 - I - 0x0115B5 04:95A5: FF        .byte $FF, $08   ; 0A



_off002_95A7_0B:
- D 0 - I - 0x0115B7 04:95A7: F0        .byte $F0, $08   ; 00 spr_Y, spr_X
- D 0 - I - 0x0115B9 04:95A9: F0        .byte $F0, $00   ; 01
- D 0 - I - 0x0115BB 04:95AB: F0        .byte $F0, $F8   ; 02
- D 0 - I - 0x0115BD 04:95AD: F8        .byte $F8, $08   ; 03
- D 0 - I - 0x0115BF 04:95AF: F8        .byte $F8, $00   ; 04
- D 0 - I - 0x0115C1 04:95B1: F8        .byte $F8, $F8   ; 05
- D 0 - I - 0x0115C3 04:95B3: 00        .byte $00, $02   ; 06
- D 0 - I - 0x0115C5 04:95B5: 00        .byte $00, $FA   ; 07
- D 0 - I - 0x0115C7 04:95B7: 08        .byte $08, $F8   ; 08
- D 0 - I - 0x0115C9 04:95B9: FA        .byte $FA, $F6   ; 09
- D 0 - I - 0x0115CB 04:95BB: FF        .byte $FF, $F0   ; 0A



_off002_95BD_0C:
- D 0 - I - 0x0115CD 04:95BD: FE        .byte $FE, $F4   ; 00 spr_Y, spr_X
- D 0 - I - 0x0115CF 04:95BF: FE        .byte $FE, $FC   ; 01
- D 0 - I - 0x0115D1 04:95C1: 06        .byte $06, $F0   ; 02
- D 0 - I - 0x0115D3 04:95C3: 06        .byte $06, $F8   ; 03
- D 0 - I - 0x0115D5 04:95C5: F6        .byte $F6, $EE   ; 04
- D 0 - I - 0x0115D7 04:95C7: F6        .byte $F6, $F6   ; 05
- D 0 - I - 0x0115D9 04:95C9: F6        .byte $F6, $FE   ; 06
- D 0 - I - 0x0115DB 04:95CB: FE        .byte $FE, $EE   ; 07
- D 0 - I - 0x0115DD 04:95CD: FE        .byte $FE, $F6   ; 08
- D 0 - I - 0x0115DF 04:95CF: F2        .byte $F2, $F7   ; 09
- D 0 - I - 0x0115E1 04:95D1: FF        .byte $FF, $F1   ; 0A



_off002_95D3_0D:
- D 0 - I - 0x0115E3 04:95D3: FE        .byte $FE, $04   ; 00 spr_Y, spr_X
- D 0 - I - 0x0115E5 04:95D5: FE        .byte $FE, $FC   ; 01
- D 0 - I - 0x0115E7 04:95D7: 06        .byte $06, $08   ; 02
- D 0 - I - 0x0115E9 04:95D9: 06        .byte $06, $00   ; 03
- D 0 - I - 0x0115EB 04:95DB: F6        .byte $F6, $0A   ; 04
- D 0 - I - 0x0115ED 04:95DD: F6        .byte $F6, $02   ; 05
- D 0 - I - 0x0115EF 04:95DF: F6        .byte $F6, $FA   ; 06
- D 0 - I - 0x0115F1 04:95E1: FE        .byte $FE, $0A   ; 07
- D 0 - I - 0x0115F3 04:95E3: FE        .byte $FE, $02   ; 08
- D 0 - I - 0x0115F5 04:95E5: F2        .byte $F2, $01   ; 09
- D 0 - I - 0x0115F7 04:95E7: FF        .byte $FF, $07   ; 0A



_off002_95E9_0E:
- D 0 - I - 0x0115F9 04:95E9: F8        .byte $F8, $FC   ; 00 spr_Y, spr_X
- D 0 - I - 0x0115FB 04:95EB: F8        .byte $F8, $04   ; 01
- D 0 - I - 0x0115FD 04:95ED: 00        .byte $00, $FC   ; 02
- D 0 - I - 0x0115FF 04:95EF: 00        .byte $00, $04   ; 03
- D 0 - I - 0x011601 04:95F1: F0        .byte $F0, $F8   ; 04
- D 0 - I - 0x011603 04:95F3: F0        .byte $F0, $00   ; 05
- D 0 - I - 0x011605 04:95F5: F0        .byte $F0, $08   ; 06
- D 0 - I - 0x011607 04:95F7: F8        .byte $F8, $F8   ; 07
- D 0 - I - 0x011609 04:95F9: F8        .byte $F8, $00   ; 08
- D 0 - I - 0x01160B 04:95FB: F8        .byte $F8, $08   ; 09
- D 0 - I - 0x01160D 04:95FD: 05        .byte $05, $FC   ; 0A
- D 0 - I - 0x01160F 04:95FF: 02        .byte $02, $04   ; 0B



_off002_9601_0F:
- D 0 - I - 0x011611 04:9601: F8        .byte $F8, $FC   ; 00 spr_Y, spr_X
- D 0 - I - 0x011613 04:9603: F8        .byte $F8, $F4   ; 01
- D 0 - I - 0x011615 04:9605: 00        .byte $00, $FC   ; 02
- D 0 - I - 0x011617 04:9607: 00        .byte $00, $F4   ; 03
- D 0 - I - 0x011619 04:9609: F0        .byte $F0, $00   ; 04
- D 0 - I - 0x01161B 04:960B: F0        .byte $F0, $F8   ; 05
- D 0 - I - 0x01161D 04:960D: F0        .byte $F0, $F0   ; 06
- D 0 - I - 0x01161F 04:960F: F8        .byte $F8, $00   ; 07
- D 0 - I - 0x011621 04:9611: F8        .byte $F8, $F8   ; 08
- D 0 - I - 0x011623 04:9613: F8        .byte $F8, $F0   ; 09
- D 0 - I - 0x011625 04:9615: 05        .byte $05, $FC   ; 0A
- D 0 - I - 0x011627 04:9617: 02        .byte $02, $F4   ; 0B



_off002_9619_10:
- - - - - - 0x011629 04:9619: FA        .byte $FA, $F9   ; 00 spr_Y, spr_X
- - - - - - 0x01162B 04:961B: FA        .byte $FA, $01   ; 01
- - - - - - 0x01162D 04:961D: 02        .byte $02, $F9   ; 02
- - - - - - 0x01162F 04:961F: 02        .byte $02, $01   ; 03
- - - - - - 0x011631 04:9621: F0        .byte $F0, $F5   ; 04
- - - - - - 0x011633 04:9623: F0        .byte $F0, $FD   ; 05
- - - - - - 0x011635 04:9625: F0        .byte $F0, $05   ; 06
- - - - - - 0x011637 04:9627: F8        .byte $F8, $F5   ; 07
- - - - - - 0x011639 04:9629: F8        .byte $F8, $FD   ; 08
- - - - - - 0x01163B 04:962B: F8        .byte $F8, $05   ; 09
- - - - - - 0x01163D 04:962D: 04        .byte $04, $FF   ; 0A
- - - - - - 0x01163F 04:962F: 08        .byte $08, $07   ; 0B



_off002_9631_11:
- - - - - - 0x011641 04:9631: FA        .byte $FA, $FF   ; 00 spr_Y, spr_X
- - - - - - 0x011643 04:9633: FA        .byte $FA, $F7   ; 01
- - - - - - 0x011645 04:9635: 02        .byte $02, $FF   ; 02
- - - - - - 0x011647 04:9637: 02        .byte $02, $F7   ; 03
- - - - - - 0x011649 04:9639: F0        .byte $F0, $03   ; 04
- - - - - - 0x01164B 04:963B: F0        .byte $F0, $FB   ; 05
- - - - - - 0x01164D 04:963D: F0        .byte $F0, $F3   ; 06
- - - - - - 0x01164F 04:963F: F8        .byte $F8, $03   ; 07
- - - - - - 0x011651 04:9641: F8        .byte $F8, $FB   ; 08
- - - - - - 0x011653 04:9643: F8        .byte $F8, $F3   ; 09
- - - - - - 0x011655 04:9645: 04        .byte $04, $F9   ; 0A
- - - - - - 0x011657 04:9647: 08        .byte $08, $F1   ; 0B



_off002_9649_12:
- - - - - - 0x011659 04:9649: 03        .byte $03, $FD   ; 00 spr_Y, spr_X
- - - - - - 0x01165B 04:964B: 0B        .byte $0B, $03   ; 01
- - - - - - 0x01165D 04:964D: F8        .byte $F8, $FA   ; 02
- - - - - - 0x01165F 04:964F: F8        .byte $F8, $02   ; 03
- - - - - - 0x011661 04:9651: 00        .byte $00, $FC   ; 04
- - - - - - 0x011663 04:9653: 00        .byte $00, $04   ; 05
- - - - - - 0x011665 04:9655: F0        .byte $F0, $F8   ; 06
- - - - - - 0x011667 04:9657: F0        .byte $F0, $00   ; 07
- - - - - - 0x011669 04:9659: F0        .byte $F0, $08   ; 08
- - - - - - 0x01166B 04:965B: F8        .byte $F8, $F8   ; 09
- - - - - - 0x01166D 04:965D: F8        .byte $F8, $00   ; 0A
- - - - - - 0x01166F 04:965F: F8        .byte $F8, $08   ; 0B



_off002_9661_13:
- - - - - - 0x011671 04:9661: 03        .byte $03, $FB   ; 00 spr_Y, spr_X
- - - - - - 0x011673 04:9663: 0B        .byte $0B, $F5   ; 01
- - - - - - 0x011675 04:9665: F8        .byte $F8, $FE   ; 02
- - - - - - 0x011677 04:9667: F8        .byte $F8, $F6   ; 03
- - - - - - 0x011679 04:9669: 00        .byte $00, $FC   ; 04
- - - - - - 0x01167B 04:966B: 00        .byte $00, $F4   ; 05
- - - - - - 0x01167D 04:966D: F0        .byte $F0, $00   ; 06
- - - - - - 0x01167F 04:966F: F0        .byte $F0, $F8   ; 07
- - - - - - 0x011681 04:9671: F0        .byte $F0, $F0   ; 08
- - - - - - 0x011683 04:9673: F8        .byte $F8, $00   ; 09
- - - - - - 0x011685 04:9675: F8        .byte $F8, $F8   ; 0A
- - - - - - 0x011687 04:9677: F8        .byte $F8, $F0   ; 0B



_off002_9679_14:
- D 0 - I - 0x011689 04:9679: FC        .byte $FC, $FC   ; 00 spr_Y, spr_X
- D 0 - I - 0x01168B 04:967B: F4        .byte $F4, $FC   ; 01
- D 0 - I - 0x01168D 04:967D: FC        .byte $FC, $F4   ; 02
- D 0 - I - 0x01168F 04:967F: FC        .byte $FC, $04   ; 03
- D 0 - I - 0x011691 04:9681: 04        .byte $04, $F4   ; 04
- D 0 - I - 0x011693 04:9683: 04        .byte $04, $FC   ; 05
- D 0 - I - 0x011695 04:9685: 04        .byte $04, $04   ; 06
- D 0 - I - 0x011697 04:9687: 0C        .byte $0C, $F4   ; 07
- D 0 - I - 0x011699 04:9689: 0C        .byte $0C, $FC   ; 08
- D 0 - I - 0x01169B 04:968B: 0C        .byte $0C, $04   ; 09



_off002_968D_15:
- D 0 - I - 0x01169D 04:968D: FC        .byte $FC, $FC   ; 00 spr_Y, spr_X



_off002_968F_16:
- D 0 - I - 0x01169F 04:968F: 00        .byte $00, $FA   ; 00 spr_Y, spr_X
- D 0 - I - 0x0116A1 04:9691: 00        .byte $00, $02   ; 01
- D 0 - I - 0x0116A3 04:9693: 08        .byte $08, $FC   ; 02
- D 0 - I - 0x0116A5 04:9695: 08        .byte $08, $04   ; 03
- D 0 - I - 0x0116A7 04:9697: F8        .byte $F8, $F8   ; 04
- D 0 - I - 0x0116A9 04:9699: F8        .byte $F8, $00   ; 05
- D 0 - I - 0x0116AB 04:969B: F8        .byte $F8, $08   ; 06
- D 0 - I - 0x0116AD 04:969D: 00        .byte $00, $F8   ; 07
- D 0 - I - 0x0116AF 04:969F: 00        .byte $00, $00   ; 08
- D 0 - I - 0x0116B1 04:96A1: 00        .byte $00, $08   ; 09
- D 0 - I - 0x0116B3 04:96A3: 08        .byte $08, $00   ; 0A
- D 0 - I - 0x0116B5 04:96A5: 0F        .byte $0F, $07   ; 0B



_off002_96A7_17:
- D 0 - I - 0x0116B7 04:96A7: 00        .byte $00, $FE   ; 00 spr_Y, spr_X
- D 0 - I - 0x0116B9 04:96A9: 00        .byte $00, $F6   ; 01
- D 0 - I - 0x0116BB 04:96AB: 08        .byte $08, $FC   ; 02
- D 0 - I - 0x0116BD 04:96AD: 08        .byte $08, $F4   ; 03
- D 0 - I - 0x0116BF 04:96AF: F8        .byte $F8, $00   ; 04
- D 0 - I - 0x0116C1 04:96B1: F8        .byte $F8, $F8   ; 05
- D 0 - I - 0x0116C3 04:96B3: F8        .byte $F8, $F0   ; 06
- D 0 - I - 0x0116C5 04:96B5: 00        .byte $00, $00   ; 07
- D 0 - I - 0x0116C7 04:96B7: 00        .byte $00, $F8   ; 08
- D 0 - I - 0x0116C9 04:96B9: 00        .byte $00, $F0   ; 09
- D 0 - I - 0x0116CB 04:96BB: 08        .byte $08, $F8   ; 0A
- D 0 - I - 0x0116CD 04:96BD: 0F        .byte $0F, $F1   ; 0B



_off002_96BF_18:
- D 0 - I - 0x0116CF 04:96BF: 00        .byte $00, $FA   ; 00 spr_Y, spr_X
- D 0 - I - 0x0116D1 04:96C1: 00        .byte $00, $02   ; 01
- D 0 - I - 0x0116D3 04:96C3: 08        .byte $08, $FC   ; 02
- D 0 - I - 0x0116D5 04:96C5: 08        .byte $08, $04   ; 03
- D 0 - I - 0x0116D7 04:96C7: F8        .byte $F8, $F8   ; 04
- D 0 - I - 0x0116D9 04:96C9: F8        .byte $F8, $00   ; 05
- D 0 - I - 0x0116DB 04:96CB: F8        .byte $F8, $08   ; 06
- D 0 - I - 0x0116DD 04:96CD: 00        .byte $00, $F8   ; 07
- D 0 - I - 0x0116DF 04:96CF: 00        .byte $00, $00   ; 08
- D 0 - I - 0x0116E1 04:96D1: 00        .byte $00, $08   ; 09
- D 0 - I - 0x0116E3 04:96D3: 0A        .byte $0A, $01   ; 0A
- D 0 - I - 0x0116E5 04:96D5: 0E        .byte $0E, $09   ; 0B



_off002_96D7_19:
- D 0 - I - 0x0116E7 04:96D7: 00        .byte $00, $FE   ; 00 spr_Y, spr_X
- D 0 - I - 0x0116E9 04:96D9: 00        .byte $00, $F6   ; 01
- D 0 - I - 0x0116EB 04:96DB: 08        .byte $08, $FC   ; 02
- D 0 - I - 0x0116ED 04:96DD: 08        .byte $08, $F4   ; 03
- D 0 - I - 0x0116EF 04:96DF: F8        .byte $F8, $00   ; 04
- D 0 - I - 0x0116F1 04:96E1: F8        .byte $F8, $F8   ; 05
- D 0 - I - 0x0116F3 04:96E3: F8        .byte $F8, $F0   ; 06
- D 0 - I - 0x0116F5 04:96E5: 00        .byte $00, $00   ; 07
- D 0 - I - 0x0116F7 04:96E7: 00        .byte $00, $F8   ; 08
- D 0 - I - 0x0116F9 04:96E9: 00        .byte $00, $F0   ; 09
- D 0 - I - 0x0116FB 04:96EB: 0A        .byte $0A, $F7   ; 0A
- D 0 - I - 0x0116FD 04:96ED: 0E        .byte $0E, $EF   ; 0B



_off002_96EF_1A:
- D 0 - I - 0x0116FF 04:96EF: F4        .byte $F4, $F4   ; 00 spr_Y, spr_X
- D 0 - I - 0x011701 04:96F1: F4        .byte $F4, $FC   ; 01
- D 0 - I - 0x011703 04:96F3: F4        .byte $F4, $04   ; 02
- D 0 - I - 0x011705 04:96F5: FC        .byte $FC, $F4   ; 03
- D 0 - I - 0x011707 04:96F7: FC        .byte $FC, $FC   ; 04
- D 0 - I - 0x011709 04:96F9: FC        .byte $FC, $04   ; 05
- D 0 - I - 0x01170B 04:96FB: 04        .byte $04, $F8   ; 06
- D 0 - I - 0x01170D 04:96FD: 04        .byte $04, $00   ; 07
- D 0 - I - 0x01170F 04:96FF: 0C        .byte $0C, $FF   ; 08
- D 0 - I - 0x011711 04:9701: EE        .byte $EE, $09   ; 09



_off002_9703_1B:
- D 0 - I - 0x011713 04:9703: F4        .byte $F4, $04   ; 00 spr_Y, spr_X
- D 0 - I - 0x011715 04:9705: F4        .byte $F4, $FC   ; 01
- D 0 - I - 0x011717 04:9707: F4        .byte $F4, $F4   ; 02
- D 0 - I - 0x011719 04:9709: FC        .byte $FC, $04   ; 03
- D 0 - I - 0x01171B 04:970B: FC        .byte $FC, $FC   ; 04
- D 0 - I - 0x01171D 04:970D: FC        .byte $FC, $F4   ; 05
- D 0 - I - 0x01171F 04:970F: 04        .byte $04, $00   ; 06
- D 0 - I - 0x011721 04:9711: 04        .byte $04, $F8   ; 07
- D 0 - I - 0x011723 04:9713: 0C        .byte $0C, $F7   ; 08
- D 0 - I - 0x011725 04:9715: EE        .byte $EE, $EF   ; 09



_off002_9717_1C:
- D 0 - I - 0x011727 04:9717: F4        .byte $F4, $F4   ; 00 spr_Y, spr_X
- D 0 - I - 0x011729 04:9719: F4        .byte $F4, $FC   ; 01
- D 0 - I - 0x01172B 04:971B: F4        .byte $F4, $04   ; 02
- D 0 - I - 0x01172D 04:971D: FC        .byte $FC, $F4   ; 03
- D 0 - I - 0x01172F 04:971F: FC        .byte $FC, $FC   ; 04
- D 0 - I - 0x011731 04:9721: FC        .byte $FC, $04   ; 05
- D 0 - I - 0x011733 04:9723: 04        .byte $04, $F8   ; 06
- D 0 - I - 0x011735 04:9725: 04        .byte $04, $00   ; 07
- D 0 - I - 0x011737 04:9727: 0C        .byte $0C, $FF   ; 08
- D 0 - I - 0x011739 04:9729: F3        .byte $F3, $03   ; 09
- D 0 - I - 0x01173B 04:972B: EF        .byte $EF, $0B   ; 0A



_off002_972D_1D:
- D 0 - I - 0x01173D 04:972D: F4        .byte $F4, $04   ; 00 spr_Y, spr_X
- D 0 - I - 0x01173F 04:972F: F4        .byte $F4, $FC   ; 01
- D 0 - I - 0x011741 04:9731: F4        .byte $F4, $F4   ; 02
- D 0 - I - 0x011743 04:9733: FC        .byte $FC, $04   ; 03
- D 0 - I - 0x011745 04:9735: FC        .byte $FC, $FC   ; 04
- D 0 - I - 0x011747 04:9737: FC        .byte $FC, $F4   ; 05
- D 0 - I - 0x011749 04:9739: 04        .byte $04, $00   ; 06
- D 0 - I - 0x01174B 04:973B: 04        .byte $04, $F8   ; 07
- D 0 - I - 0x01174D 04:973D: 0C        .byte $0C, $F7   ; 08
- D 0 - I - 0x01174F 04:973F: F3        .byte $F3, $F5   ; 09
- D 0 - I - 0x011751 04:9741: EF        .byte $EF, $ED   ; 0A



_off002_9743_1E:
- D 0 - I - 0x011753 04:9743: 03        .byte $03, $F0   ; 00 spr_Y, spr_X
- D 0 - I - 0x011755 04:9745: 03        .byte $03, $F8   ; 01
- D 0 - I - 0x011757 04:9747: 03        .byte $03, $FE   ; 02
- D 0 - I - 0x011759 04:9749: FA        .byte $FA, $FB   ; 03
- D 0 - I - 0x01175B 04:974B: FA        .byte $FA, $03   ; 04
- D 0 - I - 0x01175D 04:974D: 02        .byte $02, $FB   ; 05
- D 0 - I - 0x01175F 04:974F: 02        .byte $02, $03   ; 06
- D 0 - I - 0x011761 04:9751: F2        .byte $F2, $F9   ; 07
- D 0 - I - 0x011763 04:9753: F2        .byte $F2, $01   ; 08
- D 0 - I - 0x011765 04:9755: F2        .byte $F2, $09   ; 09
- D 0 - I - 0x011767 04:9757: FA        .byte $FA, $F8   ; 0A
- D 0 - I - 0x011769 04:9759: FA        .byte $FA, $00   ; 0B
- D 0 - I - 0x01176B 04:975B: FA        .byte $FA, $08   ; 0C



_off002_975D_1F:
- D 0 - I - 0x01176D 04:975D: 03        .byte $03, $08   ; 00 spr_Y, spr_X
- D 0 - I - 0x01176F 04:975F: 03        .byte $03, $00   ; 01
- D 0 - I - 0x011771 04:9761: 03        .byte $03, $FA   ; 02
- D 0 - I - 0x011773 04:9763: FA        .byte $FA, $FD   ; 03
- D 0 - I - 0x011775 04:9765: FA        .byte $FA, $F5   ; 04
- D 0 - I - 0x011777 04:9767: 02        .byte $02, $FD   ; 05
- D 0 - I - 0x011779 04:9769: 02        .byte $02, $F5   ; 06
- D 0 - I - 0x01177B 04:976B: F2        .byte $F2, $FF   ; 07
- D 0 - I - 0x01177D 04:976D: F2        .byte $F2, $F7   ; 08
- D 0 - I - 0x01177F 04:976F: F2        .byte $F2, $EF   ; 09
- D 0 - I - 0x011781 04:9771: FA        .byte $FA, $00   ; 0A
- D 0 - I - 0x011783 04:9773: FA        .byte $FA, $F8   ; 0B
- D 0 - I - 0x011785 04:9775: FA        .byte $FA, $F0   ; 0C



_off002_9777_20:
- D 0 - I - 0x011787 04:9777: FB        .byte $FB, $F6   ; 00 spr_Y, spr_X
- D 0 - I - 0x011789 04:9779: 03        .byte $03, $F6   ; 01
- D 0 - I - 0x01178B 04:977B: 05        .byte $05, $FE   ; 02
- D 0 - I - 0x01178D 04:977D: 03        .byte $03, $F9   ; 03
- D 0 - I - 0x01178F 04:977F: 03        .byte $03, $01   ; 04
- D 0 - I - 0x011791 04:9781: 05        .byte $05, $05   ; 05
- D 0 - I - 0x011793 04:9783: F3        .byte $F3, $F8   ; 06
- D 0 - I - 0x011795 04:9785: F3        .byte $F3, $00   ; 07
- D 0 - I - 0x011797 04:9787: F3        .byte $F3, $08   ; 08
- D 0 - I - 0x011799 04:9789: FB        .byte $FB, $F9   ; 09
- D 0 - I - 0x01179B 04:978B: FB        .byte $FB, $01   ; 0A
- D 0 - I - 0x01179D 04:978D: FB        .byte $FB, $08   ; 0B



_off002_978F_21:
- D 0 - I - 0x01179F 04:978F: FB        .byte $FB, $02   ; 00 spr_Y, spr_X
- D 0 - I - 0x0117A1 04:9791: 03        .byte $03, $02   ; 01
- D 0 - I - 0x0117A3 04:9793: 05        .byte $05, $FA   ; 02
- D 0 - I - 0x0117A5 04:9795: 03        .byte $03, $FF   ; 03
- D 0 - I - 0x0117A7 04:9797: 03        .byte $03, $F7   ; 04
- D 0 - I - 0x0117A9 04:9799: 05        .byte $05, $F3   ; 05
- D 0 - I - 0x0117AB 04:979B: F3        .byte $F3, $00   ; 06
- D 0 - I - 0x0117AD 04:979D: F3        .byte $F3, $F8   ; 07
- D 0 - I - 0x0117AF 04:979F: F3        .byte $F3, $F0   ; 08
- D 0 - I - 0x0117B1 04:97A1: FB        .byte $FB, $FF   ; 09
- D 0 - I - 0x0117B3 04:97A3: FB        .byte $FB, $F7   ; 0A
- D 0 - I - 0x0117B5 04:97A5: FB        .byte $FB, $F0   ; 0B



_off002_97A7_22:
- D 0 - I - 0x0117B7 04:97A7: F8        .byte $F8, $FA   ; 00 spr_Y, spr_X
- D 0 - I - 0x0117B9 04:97A9: F8        .byte $F8, $02   ; 01
- D 0 - I - 0x0117BB 04:97AB: 00        .byte $00, $FC   ; 02
- D 0 - I - 0x0117BD 04:97AD: 00        .byte $00, $04   ; 03
- D 0 - I - 0x0117BF 04:97AF: F0        .byte $F0, $F8   ; 04
- D 0 - I - 0x0117C1 04:97B1: F0        .byte $F0, $00   ; 05
- D 0 - I - 0x0117C3 04:97B3: F0        .byte $F0, $08   ; 06
- D 0 - I - 0x0117C5 04:97B5: F8        .byte $F8, $F8   ; 07
- D 0 - I - 0x0117C7 04:97B7: F8        .byte $F8, $00   ; 08
- D 0 - I - 0x0117C9 04:97B9: F8        .byte $F8, $08   ; 09
- D 0 - I - 0x0117CB 04:97BB: 00        .byte $00, $00   ; 0A
- D 0 - I - 0x0117CD 04:97BD: 07        .byte $07, $07   ; 0B



_off002_97BF_23:
- D 0 - I - 0x0117CF 04:97BF: F8        .byte $F8, $FE   ; 00 spr_Y, spr_X
- D 0 - I - 0x0117D1 04:97C1: F8        .byte $F8, $F6   ; 01
- D 0 - I - 0x0117D3 04:97C3: 00        .byte $00, $FC   ; 02
- D 0 - I - 0x0117D5 04:97C5: 00        .byte $00, $F4   ; 03
- D 0 - I - 0x0117D7 04:97C7: F0        .byte $F0, $00   ; 04
- D 0 - I - 0x0117D9 04:97C9: F0        .byte $F0, $F8   ; 05
- D 0 - I - 0x0117DB 04:97CB: F0        .byte $F0, $F0   ; 06
- D 0 - I - 0x0117DD 04:97CD: F8        .byte $F8, $00   ; 07
- D 0 - I - 0x0117DF 04:97CF: F8        .byte $F8, $F8   ; 08
- D 0 - I - 0x0117E1 04:97D1: F8        .byte $F8, $F0   ; 09
- D 0 - I - 0x0117E3 04:97D3: 00        .byte $00, $F8   ; 0A
- D 0 - I - 0x0117E5 04:97D5: 07        .byte $07, $F1   ; 0B



_off002_97D7_24:
- D 0 - I - 0x0117E7 04:97D7: F8        .byte $F8, $FA   ; 00 spr_Y, spr_X
- D 0 - I - 0x0117E9 04:97D9: F8        .byte $F8, $02   ; 01
- D 0 - I - 0x0117EB 04:97DB: 00        .byte $00, $FC   ; 02
- D 0 - I - 0x0117ED 04:97DD: 00        .byte $00, $04   ; 03
- D 0 - I - 0x0117EF 04:97DF: F0        .byte $F0, $F8   ; 04
- D 0 - I - 0x0117F1 04:97E1: F0        .byte $F0, $00   ; 05
- D 0 - I - 0x0117F3 04:97E3: F0        .byte $F0, $08   ; 06
- D 0 - I - 0x0117F5 04:97E5: F8        .byte $F8, $F8   ; 07
- D 0 - I - 0x0117F7 04:97E7: F8        .byte $F8, $00   ; 08
- D 0 - I - 0x0117F9 04:97E9: F8        .byte $F8, $08   ; 09
- D 0 - I - 0x0117FB 04:97EB: 02        .byte $02, $01   ; 0A
- D 0 - I - 0x0117FD 04:97ED: 06        .byte $06, $09   ; 0B



_off002_97EF_25:
- D 0 - I - 0x0117FF 04:97EF: F8        .byte $F8, $FE   ; 00 spr_Y, spr_X
- D 0 - I - 0x011801 04:97F1: F8        .byte $F8, $F6   ; 01
- D 0 - I - 0x011803 04:97F3: 00        .byte $00, $FC   ; 02
- D 0 - I - 0x011805 04:97F5: 00        .byte $00, $F4   ; 03
- D 0 - I - 0x011807 04:97F7: F0        .byte $F0, $00   ; 04
- D 0 - I - 0x011809 04:97F9: F0        .byte $F0, $F8   ; 05
- D 0 - I - 0x01180B 04:97FB: F0        .byte $F0, $F0   ; 06
- D 0 - I - 0x01180D 04:97FD: F8        .byte $F8, $00   ; 07
- D 0 - I - 0x01180F 04:97FF: F8        .byte $F8, $F8   ; 08
- D 0 - I - 0x011811 04:9801: F8        .byte $F8, $F0   ; 09
- D 0 - I - 0x011813 04:9803: 02        .byte $02, $F7   ; 0A
- D 0 - I - 0x011815 04:9805: 06        .byte $06, $EF   ; 0B



_off002_9807_26:
- D 0 - I - 0x011817 04:9807: F8        .byte $F8, $F8   ; 00 spr_Y, spr_X
- D 0 - I - 0x011819 04:9809: F8        .byte $F8, $00   ; 01
- D 0 - I - 0x01181B 04:980B: 00        .byte $00, $F8   ; 02
- D 0 - I - 0x01181D 04:980D: 00        .byte $00, $00   ; 03
- D 0 - I - 0x01181F 04:980F: F0        .byte $F0, $F8   ; 04
- D 0 - I - 0x011821 04:9811: F0        .byte $F0, $00   ; 05
- D 0 - I - 0x011823 04:9813: F8        .byte $F8, $F0   ; 06
- D 0 - I - 0x011825 04:9815: F8        .byte $F8, $08   ; 07
- D 0 - I - 0x011827 04:9817: 00        .byte $00, $F0   ; 08
- D 0 - I - 0x011829 04:9819: 00        .byte $00, $08   ; 09
- D 0 - I - 0x01182B 04:981B: 08        .byte $08, $F8   ; 0A
- D 0 - I - 0x01182D 04:981D: 08        .byte $08, $00   ; 0B
- D 0 - I - 0x01182F 04:981F: F0        .byte $F0, $F0   ; 0C
- D 0 - I - 0x011831 04:9821: F0        .byte $F0, $08   ; 0D
- D 0 - I - 0x011833 04:9823: 08        .byte $08, $F0   ; 0E
- D 0 - I - 0x011835 04:9825: 08        .byte $08, $08   ; 0F



_off002_9827_27:
- D 0 - I - 0x011837 04:9827: F8        .byte $F8, $00   ; 00 spr_Y, spr_X
- D 0 - I - 0x011839 04:9829: F8        .byte $F8, $F8   ; 01
- D 0 - I - 0x01183B 04:982B: 00        .byte $00, $00   ; 02
- D 0 - I - 0x01183D 04:982D: 00        .byte $00, $F8   ; 03
- D 0 - I - 0x01183F 04:982F: F0        .byte $F0, $00   ; 04
- D 0 - I - 0x011841 04:9831: F0        .byte $F0, $F8   ; 05
- D 0 - I - 0x011843 04:9833: F8        .byte $F8, $08   ; 06
- D 0 - I - 0x011845 04:9835: F8        .byte $F8, $F0   ; 07
- D 0 - I - 0x011847 04:9837: 00        .byte $00, $08   ; 08
- D 0 - I - 0x011849 04:9839: 00        .byte $00, $F0   ; 09
- D 0 - I - 0x01184B 04:983B: 08        .byte $08, $00   ; 0A
- D 0 - I - 0x01184D 04:983D: 08        .byte $08, $F8   ; 0B
- D 0 - I - 0x01184F 04:983F: F0        .byte $F0, $08   ; 0C
- D 0 - I - 0x011851 04:9841: F0        .byte $F0, $F0   ; 0D
- D 0 - I - 0x011853 04:9843: 08        .byte $08, $08   ; 0E
- D 0 - I - 0x011855 04:9845: 08        .byte $08, $F0   ; 0F



_off002_9847_28:
- D 0 - I - 0x011857 04:9847: F0        .byte $F0, $F0   ; 00 spr_Y, spr_X
- D 0 - I - 0x011859 04:9849: F0        .byte $F0, $F8   ; 01
- D 0 - I - 0x01185B 04:984B: F0        .byte $F0, $00   ; 02
- D 0 - I - 0x01185D 04:984D: F0        .byte $F0, $08   ; 03
- D 0 - I - 0x01185F 04:984F: F8        .byte $F8, $F0   ; 04
- D 0 - I - 0x011861 04:9851: F8        .byte $F8, $08   ; 05
- D 0 - I - 0x011863 04:9853: 00        .byte $00, $F0   ; 06
- D 0 - I - 0x011865 04:9855: 00        .byte $00, $08   ; 07
- D 0 - I - 0x011867 04:9857: 08        .byte $08, $F0   ; 08
- D 0 - I - 0x011869 04:9859: 08        .byte $08, $F8   ; 09
- D 0 - I - 0x01186B 04:985B: 08        .byte $08, $00   ; 0A
- D 0 - I - 0x01186D 04:985D: 08        .byte $08, $08   ; 0B
- D 0 - I - 0x01186F 04:985F: F8        .byte $F8, $F8   ; 0C
- D 0 - I - 0x011871 04:9861: F8        .byte $F8, $00   ; 0D
- D 0 - I - 0x011873 04:9863: 00        .byte $00, $F8   ; 0E
- D 0 - I - 0x011875 04:9865: 00        .byte $00, $00   ; 0F
- D 0 - I - 0x011877 04:9867: F4        .byte $F4, $F4   ; 10



_off002_9869_29:
- D 0 - I - 0x011879 04:9869: F0        .byte $F0, $08   ; 00 spr_Y, spr_X
- D 0 - I - 0x01187B 04:986B: F0        .byte $F0, $00   ; 01
- D 0 - I - 0x01187D 04:986D: F0        .byte $F0, $F8   ; 02
- D 0 - I - 0x01187F 04:986F: F0        .byte $F0, $F0   ; 03
- D 0 - I - 0x011881 04:9871: F8        .byte $F8, $08   ; 04
- D 0 - I - 0x011883 04:9873: F8        .byte $F8, $F0   ; 05
- D 0 - I - 0x011885 04:9875: 00        .byte $00, $08   ; 06
- D 0 - I - 0x011887 04:9877: 00        .byte $00, $F0   ; 07
- D 0 - I - 0x011889 04:9879: 08        .byte $08, $08   ; 08
- D 0 - I - 0x01188B 04:987B: 08        .byte $08, $00   ; 09
- D 0 - I - 0x01188D 04:987D: 08        .byte $08, $F8   ; 0A
- D 0 - I - 0x01188F 04:987F: 08        .byte $08, $F0   ; 0B
- D 0 - I - 0x011891 04:9881: F8        .byte $F8, $00   ; 0C
- D 0 - I - 0x011893 04:9883: F8        .byte $F8, $F8   ; 0D
- D 0 - I - 0x011895 04:9885: 00        .byte $00, $00   ; 0E
- D 0 - I - 0x011897 04:9887: 00        .byte $00, $F8   ; 0F
- D 0 - I - 0x011899 04:9889: F4        .byte $F4, $04   ; 10



_off002_988B_2A:
- D 0 - I - 0x01189B 04:988B: F4        .byte $F4, $F4   ; 00 spr_Y, spr_X
- D 0 - I - 0x01189D 04:988D: F4        .byte $F4, $FC   ; 01
- D 0 - I - 0x01189F 04:988F: F4        .byte $F4, $04   ; 02
- D 0 - I - 0x0118A1 04:9891: FC        .byte $FC, $F4   ; 03
- D 0 - I - 0x0118A3 04:9893: FC        .byte $FC, $04   ; 04
- D 0 - I - 0x0118A5 04:9895: 04        .byte $04, $F4   ; 05
- D 0 - I - 0x0118A7 04:9897: 04        .byte $04, $FC   ; 06
- D 0 - I - 0x0118A9 04:9899: 04        .byte $04, $04   ; 07
- D 0 - I - 0x0118AB 04:989B: FC        .byte $FC, $FC   ; 08



_off002_989D_2B:
- D 0 - I - 0x0118AD 04:989D: F4        .byte $F4, $04   ; 00 spr_Y, spr_X
- D 0 - I - 0x0118AF 04:989F: F4        .byte $F4, $FC   ; 01
- D 0 - I - 0x0118B1 04:98A1: F4        .byte $F4, $F4   ; 02
- D 0 - I - 0x0118B3 04:98A3: FC        .byte $FC, $04   ; 03
- D 0 - I - 0x0118B5 04:98A5: FC        .byte $FC, $F4   ; 04
- D 0 - I - 0x0118B7 04:98A7: 04        .byte $04, $04   ; 05
- D 0 - I - 0x0118B9 04:98A9: 04        .byte $04, $FC   ; 06
- D 0 - I - 0x0118BB 04:98AB: 04        .byte $04, $F4   ; 07
- D 0 - I - 0x0118BD 04:98AD: FC        .byte $FC, $FC   ; 08



_off002_98AF_2C:
- - - - - - 0x0118BF 04:98AF: F0        .byte $F0, $FC   ; 00 spr_Y, spr_X
- - - - - - 0x0118C1 04:98B1: F4        .byte $F4, $F4   ; 01
- - - - - - 0x0118C3 04:98B3: F4        .byte $F4, $04   ; 02
- - - - - - 0x0118C5 04:98B5: FC        .byte $FC, $F0   ; 03
- - - - - - 0x0118C7 04:98B7: FC        .byte $FC, $08   ; 04
- - - - - - 0x0118C9 04:98B9: 04        .byte $04, $F4   ; 05
- - - - - - 0x0118CB 04:98BB: 04        .byte $04, $04   ; 06
- - - - - - 0x0118CD 04:98BD: 08        .byte $08, $FC   ; 07



_off002_98BF_2D:
_off002_98BF_2E:
- - - - - - 0x0118CF 04:98BF: EC        .byte $EC, $FC   ; 00 spr_Y, spr_X
- - - - - - 0x0118D1 04:98C1: F4        .byte $F4, $F4   ; 01
- - - - - - 0x0118D3 04:98C3: F4        .byte $F4, $04   ; 02
- - - - - - 0x0118D5 04:98C5: FC        .byte $FC, $EC   ; 03
- - - - - - 0x0118D7 04:98C7: FC        .byte $FC, $0C   ; 04
- - - - - - 0x0118D9 04:98C9: 04        .byte $04, $F4   ; 05
- - - - - - 0x0118DB 04:98CB: 04        .byte $04, $04   ; 06
- - - - - - 0x0118DD 04:98CD: 0C        .byte $0C, $FC   ; 07



_off002_98CF_2F:
- - - - - - 0x0118DF 04:98CF: EC        .byte $EC, $FC   ; 00 spr_Y, spr_X
- - - - - - 0x0118E1 04:98D1: F4        .byte $F4, $04   ; 01
- - - - - - 0x0118E3 04:98D3: F4        .byte $F4, $F4   ; 02
- - - - - - 0x0118E5 04:98D5: FC        .byte $FC, $0C   ; 03
- - - - - - 0x0118E7 04:98D7: FC        .byte $FC, $EC   ; 04
- - - - - - 0x0118E9 04:98D9: 04        .byte $04, $04   ; 05
- - - - - - 0x0118EB 04:98DB: 04        .byte $04, $F4   ; 06
- - - - - - 0x0118ED 04:98DD: 0C        .byte $0C, $FC   ; 07



_off002_98DF_30:
- - - - - - 0x0118EF 04:98DF: F8        .byte $F8, $FA   ; 00 spr_Y, spr_X
- - - - - - 0x0118F1 04:98E1: F8        .byte $F8, $02   ; 01
- - - - - - 0x0118F3 04:98E3: 00        .byte $00, $FC   ; 02
- - - - - - 0x0118F5 04:98E5: 00        .byte $00, $04   ; 03
- - - - - - 0x0118F7 04:98E7: F0        .byte $F0, $F8   ; 04
- - - - - - 0x0118F9 04:98E9: F0        .byte $F0, $00   ; 05
- - - - - - 0x0118FB 04:98EB: F0        .byte $F0, $08   ; 06
- - - - - - 0x0118FD 04:98ED: F8        .byte $F8, $F8   ; 07
- - - - - - 0x0118FF 04:98EF: F8        .byte $F8, $00   ; 08
- - - - - - 0x011901 04:98F1: F8        .byte $F8, $08   ; 09
- - - - - - 0x011903 04:98F3: 00        .byte $00, $00   ; 0A
- - - - - - 0x011905 04:98F5: 0B        .byte $0B, $F8   ; 0B
- - - - - - 0x011907 04:98F7: 08        .byte $08, $00   ; 0C



_off002_98F9_31:
- - - - - - 0x011909 04:98F9: F8        .byte $F8, $FE   ; 00 spr_Y, spr_X
- - - - - - 0x01190B 04:98FB: F8        .byte $F8, $F6   ; 01
- - - - - - 0x01190D 04:98FD: 00        .byte $00, $FC   ; 02
- - - - - - 0x01190F 04:98FF: 00        .byte $00, $F4   ; 03
- - - - - - 0x011911 04:9901: F0        .byte $F0, $00   ; 04
- - - - - - 0x011913 04:9903: F0        .byte $F0, $F8   ; 05
- - - - - - 0x011915 04:9905: F0        .byte $F0, $F0   ; 06
- - - - - - 0x011917 04:9907: F8        .byte $F8, $00   ; 07
- - - - - - 0x011919 04:9909: F8        .byte $F8, $F8   ; 08
- - - - - - 0x01191B 04:990B: F8        .byte $F8, $F0   ; 09
- - - - - - 0x01191D 04:990D: 00        .byte $00, $F8   ; 0A
- - - - - - 0x01191F 04:990F: 0B        .byte $0B, $00   ; 0B
- - - - - - 0x011921 04:9911: 08        .byte $08, $F8   ; 0C



_off002_9913_32:
- D 0 - I - 0x011923 04:9913: F9        .byte $F9, $F2   ; 00 spr_Y, spr_X
- D 0 - I - 0x011925 04:9915: F9        .byte $F9, $FA   ; 01
- D 0 - I - 0x011927 04:9917: 01        .byte $01, $F8   ; 02
- D 0 - I - 0x011929 04:9919: F1        .byte $F1, $F0   ; 03
- D 0 - I - 0x01192B 04:991B: F1        .byte $F1, $F8   ; 04
- D 0 - I - 0x01192D 04:991D: F1        .byte $F1, $00   ; 05
- D 0 - I - 0x01192F 04:991F: F9        .byte $F9, $F8   ; 06
- D 0 - I - 0x011931 04:9921: F9        .byte $F9, $00   ; 07
- D 0 - I - 0x011933 04:9923: FF        .byte $FF, $FA   ; 08
- D 0 - I - 0x011935 04:9925: 01        .byte $01, $02   ; 09
- D 0 - I - 0x011937 04:9927: 01        .byte $01, $08   ; 0A
- D 0 - I - 0x011939 04:9929: 01        .byte $01, $F0   ; 0B



_off002_992B_33:
- D 0 - I - 0x01193B 04:992B: F9        .byte $F9, $06   ; 00 spr_Y, spr_X
- D 0 - I - 0x01193D 04:992D: F9        .byte $F9, $FE   ; 01
- D 0 - I - 0x01193F 04:992F: 01        .byte $01, $00   ; 02
- D 0 - I - 0x011941 04:9931: F1        .byte $F1, $08   ; 03
- D 0 - I - 0x011943 04:9933: F1        .byte $F1, $00   ; 04
- D 0 - I - 0x011945 04:9935: F1        .byte $F1, $F8   ; 05
- D 0 - I - 0x011947 04:9937: F9        .byte $F9, $00   ; 06
- D 0 - I - 0x011949 04:9939: F9        .byte $F9, $F8   ; 07
- D 0 - I - 0x01194B 04:993B: FF        .byte $FF, $FE   ; 08
- D 0 - I - 0x01194D 04:993D: 01        .byte $01, $F6   ; 09
- D 0 - I - 0x01194F 04:993F: 01        .byte $01, $F0   ; 0A
- D 0 - I - 0x011951 04:9941: 01        .byte $01, $08   ; 0B



_off002_9943_34:
- D 0 - I - 0x011953 04:9943: F8        .byte $F8, $F3   ; 00 spr_Y, spr_X
- D 0 - I - 0x011955 04:9945: F8        .byte $F8, $FB   ; 01
- D 0 - I - 0x011957 04:9947: 00        .byte $00, $F3   ; 02
- D 0 - I - 0x011959 04:9949: 00        .byte $00, $FB   ; 03
- D 0 - I - 0x01195B 04:994B: F0        .byte $F0, $F4   ; 04
- D 0 - I - 0x01195D 04:994D: F0        .byte $F0, $FC   ; 05
- D 0 - I - 0x01195F 04:994F: F0        .byte $F0, $04   ; 06
- D 0 - I - 0x011961 04:9951: F8        .byte $F8, $FC   ; 07
- D 0 - I - 0x011963 04:9953: F8        .byte $F8, $04   ; 08
- D 0 - I - 0x011965 04:9955: FF        .byte $FF, $FC   ; 09
- D 0 - I - 0x011967 04:9957: 00        .byte $00, $03   ; 0A
- D 0 - I - 0x011969 04:9959: 05        .byte $05, $09   ; 0B



_off002_995B_35:
- D 0 - I - 0x01196B 04:995B: F8        .byte $F8, $05   ; 00 spr_Y, spr_X
- D 0 - I - 0x01196D 04:995D: F8        .byte $F8, $FD   ; 01
- D 0 - I - 0x01196F 04:995F: 00        .byte $00, $05   ; 02
- D 0 - I - 0x011971 04:9961: 00        .byte $00, $FD   ; 03
- D 0 - I - 0x011973 04:9963: F0        .byte $F0, $04   ; 04
- D 0 - I - 0x011975 04:9965: F0        .byte $F0, $FC   ; 05
- D 0 - I - 0x011977 04:9967: F0        .byte $F0, $F4   ; 06
- D 0 - I - 0x011979 04:9969: F8        .byte $F8, $FC   ; 07
- D 0 - I - 0x01197B 04:996B: F8        .byte $F8, $F4   ; 08
- D 0 - I - 0x01197D 04:996D: FF        .byte $FF, $FC   ; 09
- D 0 - I - 0x01197F 04:996F: 00        .byte $00, $F5   ; 0A
- D 0 - I - 0x011981 04:9971: 05        .byte $05, $EF   ; 0B



_off002_9973_36:
- D 0 - I - 0x011983 04:9973: F7        .byte $F7, $F2   ; 00 spr_Y, spr_X
- D 0 - I - 0x011985 04:9975: F7        .byte $F7, $FA   ; 01
- D 0 - I - 0x011987 04:9977: FF        .byte $FF, $F2   ; 02
- D 0 - I - 0x011989 04:9979: FF        .byte $FF, $FA   ; 03
- D 0 - I - 0x01198B 04:997B: EF        .byte $EF, $F3   ; 04
- D 0 - I - 0x01198D 04:997D: EF        .byte $EF, $FB   ; 05
- D 0 - I - 0x01198F 04:997F: EF        .byte $EF, $03   ; 06
- D 0 - I - 0x011991 04:9981: F7        .byte $F7, $FB   ; 07
- D 0 - I - 0x011993 04:9983: F7        .byte $F7, $03   ; 08
- D 0 - I - 0x011995 04:9985: FD        .byte $FD, $FD   ; 09
- D 0 - I - 0x011997 04:9987: FF        .byte $FF, $05   ; 0A
- D 0 - I - 0x011999 04:9989: FF        .byte $FF, $0B   ; 0B



_off002_998B_37:
- D 0 - I - 0x01199B 04:998B: F7        .byte $F7, $06   ; 00 spr_Y, spr_X
- D 0 - I - 0x01199D 04:998D: F7        .byte $F7, $FE   ; 01
- D 0 - I - 0x01199F 04:998F: FF        .byte $FF, $06   ; 02
- D 0 - I - 0x0119A1 04:9991: FF        .byte $FF, $FE   ; 03
- D 0 - I - 0x0119A3 04:9993: EF        .byte $EF, $05   ; 04
- D 0 - I - 0x0119A5 04:9995: EF        .byte $EF, $FD   ; 05
- D 0 - I - 0x0119A7 04:9997: EF        .byte $EF, $F5   ; 06
- D 0 - I - 0x0119A9 04:9999: F7        .byte $F7, $FD   ; 07
- D 0 - I - 0x0119AB 04:999B: F7        .byte $F7, $F5   ; 08
- D 0 - I - 0x0119AD 04:999D: FD        .byte $FD, $FB   ; 09
- D 0 - I - 0x0119AF 04:999F: FF        .byte $FF, $F3   ; 0A
- D 0 - I - 0x0119B1 04:99A1: FF        .byte $FF, $ED   ; 0B



_off002_99A3_38:
- D 0 - I - 0x0119B3 04:99A3: F6        .byte $F6, $F1   ; 00 spr_Y, spr_X
- D 0 - I - 0x0119B5 04:99A5: F6        .byte $F6, $F9   ; 01
- D 0 - I - 0x0119B7 04:99A7: FE        .byte $FE, $F1   ; 02
- D 0 - I - 0x0119B9 04:99A9: FE        .byte $FE, $F9   ; 03
- D 0 - I - 0x0119BB 04:99AB: EE        .byte $EE, $F2   ; 04
- D 0 - I - 0x0119BD 04:99AD: EE        .byte $EE, $FA   ; 05
- D 0 - I - 0x0119BF 04:99AF: EE        .byte $EE, $02   ; 06
- D 0 - I - 0x0119C1 04:99B1: F6        .byte $F6, $FA   ; 07
- D 0 - I - 0x0119C3 04:99B3: F6        .byte $F6, $02   ; 08
- D 0 - I - 0x0119C5 04:99B5: FC        .byte $FC, $FC   ; 09
- D 0 - I - 0x0119C7 04:99B7: FE        .byte $FE, $04   ; 0A
- D 0 - I - 0x0119C9 04:99B9: F6        .byte $F6, $0A   ; 0B



_off002_99BB_39:
- D 0 - I - 0x0119CB 04:99BB: F6        .byte $F6, $07   ; 00 spr_Y, spr_X
- D 0 - I - 0x0119CD 04:99BD: F6        .byte $F6, $FF   ; 01
- D 0 - I - 0x0119CF 04:99BF: FE        .byte $FE, $07   ; 02
- D 0 - I - 0x0119D1 04:99C1: FE        .byte $FE, $FF   ; 03
- D 0 - I - 0x0119D3 04:99C3: EE        .byte $EE, $06   ; 04
- D 0 - I - 0x0119D5 04:99C5: EE        .byte $EE, $FE   ; 05
- D 0 - I - 0x0119D7 04:99C7: EE        .byte $EE, $F6   ; 06
- D 0 - I - 0x0119D9 04:99C9: F6        .byte $F6, $FE   ; 07
- D 0 - I - 0x0119DB 04:99CB: F6        .byte $F6, $F6   ; 08
- D 0 - I - 0x0119DD 04:99CD: FC        .byte $FC, $FC   ; 09
- D 0 - I - 0x0119DF 04:99CF: FE        .byte $FE, $F4   ; 0A
- D 0 - I - 0x0119E1 04:99D1: F6        .byte $F6, $EE   ; 0B



_off002_99D3_3A:
- D 0 - I - 0x0119E3 04:99D3: F8        .byte $F8, $F8   ; 00 spr_Y, spr_X
- D 0 - I - 0x0119E5 04:99D5: 00        .byte $00, $F3   ; 01
- D 0 - I - 0x0119E7 04:99D7: 00        .byte $00, $FB   ; 02
- D 0 - I - 0x0119E9 04:99D9: 00        .byte $00, $03   ; 03
- D 0 - I - 0x0119EB 04:99DB: F2        .byte $F2, $F2   ; 04
- D 0 - I - 0x0119ED 04:99DD: F2        .byte $F2, $FA   ; 05
- D 0 - I - 0x0119EF 04:99DF: F2        .byte $F2, $02   ; 06
- D 0 - I - 0x0119F1 04:99E1: FA        .byte $FA, $F2   ; 07
- D 0 - I - 0x0119F3 04:99E3: FA        .byte $FA, $FA   ; 08
- D 0 - I - 0x0119F5 04:99E5: FA        .byte $FA, $02   ; 09
- D 0 - I - 0x0119F7 04:99E7: 07        .byte $07, $F9   ; 0A
- D 0 - I - 0x0119F9 04:99E9: 04        .byte $04, $01   ; 0B



_off002_99EB_3B:
- D 0 - I - 0x0119FB 04:99EB: F8        .byte $F8, $00   ; 00 spr_Y, spr_X
- D 0 - I - 0x0119FD 04:99ED: 00        .byte $00, $05   ; 01
- D 0 - I - 0x0119FF 04:99EF: 00        .byte $00, $FD   ; 02
- D 0 - I - 0x011A01 04:99F1: 00        .byte $00, $F5   ; 03
- D 0 - I - 0x011A03 04:99F3: F2        .byte $F2, $06   ; 04
- D 0 - I - 0x011A05 04:99F5: F2        .byte $F2, $FE   ; 05
- D 0 - I - 0x011A07 04:99F7: F2        .byte $F2, $F6   ; 06
- D 0 - I - 0x011A09 04:99F9: FA        .byte $FA, $06   ; 07
- D 0 - I - 0x011A0B 04:99FB: FA        .byte $FA, $FE   ; 08
- D 0 - I - 0x011A0D 04:99FD: FA        .byte $FA, $F6   ; 09
- D 0 - I - 0x011A0F 04:99FF: 07        .byte $07, $FF   ; 0A
- D 0 - I - 0x011A11 04:9A01: 04        .byte $04, $F7   ; 0B



_off002_9A03_3C:
- D 0 - I - 0x011A13 04:9A03: F0        .byte $F0, $07   ; 00 spr_Y, spr_X
- D 0 - I - 0x011A15 04:9A05: F0        .byte $F0, $FF   ; 01
- D 0 - I - 0x011A17 04:9A07: F8        .byte $F8, $07   ; 02
- D 0 - I - 0x011A19 04:9A09: F8        .byte $F8, $FF   ; 03
- D 0 - I - 0x011A1B 04:9A0B: F8        .byte $F8, $F7   ; 04
- D 0 - I - 0x011A1D 04:9A0D: 00        .byte $00, $07   ; 05
- D 0 - I - 0x011A1F 04:9A0F: 00        .byte $00, $FF   ; 06
- D 0 - I - 0x011A21 04:9A11: 00        .byte $00, $F7   ; 07



_off002_9A13_3D:
- D 0 - I - 0x011A23 04:9A13: F0        .byte $F0, $F1   ; 00 spr_Y, spr_X
- D 0 - I - 0x011A25 04:9A15: F0        .byte $F0, $F9   ; 01
- D 0 - I - 0x011A27 04:9A17: F8        .byte $F8, $F1   ; 02
- D 0 - I - 0x011A29 04:9A19: F8        .byte $F8, $F9   ; 03
- D 0 - I - 0x011A2B 04:9A1B: F8        .byte $F8, $01   ; 04
- D 0 - I - 0x011A2D 04:9A1D: 00        .byte $00, $F1   ; 05
- D 0 - I - 0x011A2F 04:9A1F: 00        .byte $00, $F9   ; 06
- D 0 - I - 0x011A31 04:9A21: 00        .byte $00, $01   ; 07



_off002_9A23_3E:
- D 0 - I - 0x011A33 04:9A23: F8        .byte $F8, $F8   ; 00 spr_Y, spr_X
- D 0 - I - 0x011A35 04:9A25: F8        .byte $F8, $00   ; 01
- D 0 - I - 0x011A37 04:9A27: 00        .byte $00, $F8   ; 02
- D 0 - I - 0x011A39 04:9A29: 00        .byte $00, $00   ; 03
- D 0 - I - 0x011A3B 04:9A2B: 00        .byte $00, $08   ; 04
- D 0 - I - 0x011A3D 04:9A2D: 08        .byte $08, $00   ; 05
- D 0 - I - 0x011A3F 04:9A2F: 00        .byte $00, $F0   ; 06
- D 0 - I - 0x011A41 04:9A31: 08        .byte $08, $F0   ; 07
- D 0 - I - 0x011A43 04:9A33: 08        .byte $08, $F8   ; 08
- D 0 - I - 0x011A45 04:9A35: 08        .byte $08, $08   ; 09
- D 0 - I - 0x011A47 04:9A37: F0        .byte $F0, $FC   ; 0A



_off002_9A39_3F:
- D 0 - I - 0x011A49 04:9A39: F8        .byte $F8, $00   ; 00 spr_Y, spr_X
- D 0 - I - 0x011A4B 04:9A3B: F8        .byte $F8, $F8   ; 01
- D 0 - I - 0x011A4D 04:9A3D: 00        .byte $00, $00   ; 02
- D 0 - I - 0x011A4F 04:9A3F: 00        .byte $00, $F8   ; 03
- D 0 - I - 0x011A51 04:9A41: 00        .byte $00, $F0   ; 04
- D 0 - I - 0x011A53 04:9A43: 08        .byte $08, $F8   ; 05
- - - - - - 0x011A55 04:9A45: 00        .byte $00, $08   ; 06
- - - - - - 0x011A57 04:9A47: 08        .byte $08, $08   ; 07
- - - - - - 0x011A59 04:9A49: 08        .byte $08, $00   ; 08
- - - - - - 0x011A5B 04:9A4B: 08        .byte $08, $F0   ; 09
- - - - - - 0x011A5D 04:9A4D: F0        .byte $F0, $FC   ; 0A



_off002_9A4F_40:
- D 0 - I - 0x011A5F 04:9A4F: F0        .byte $F0, $F8   ; 00 spr_Y, spr_X
- D 0 - I - 0x011A61 04:9A51: F0        .byte $F0, $00   ; 01
- D 0 - I - 0x011A63 04:9A53: F8        .byte $F8, $F8   ; 02
- D 0 - I - 0x011A65 04:9A55: F8        .byte $F8, $00   ; 03
- D 0 - I - 0x011A67 04:9A57: 00        .byte $00, $F0   ; 04
- D 0 - I - 0x011A69 04:9A59: 00        .byte $00, $F8   ; 05
- D 0 - I - 0x011A6B 04:9A5B: 00        .byte $00, $00   ; 06
- D 0 - I - 0x011A6D 04:9A5D: 00        .byte $00, $08   ; 07
- D 0 - I - 0x011A6F 04:9A5F: 08        .byte $08, $F0   ; 08
- D 0 - I - 0x011A71 04:9A61: 08        .byte $08, $F8   ; 09
- D 0 - I - 0x011A73 04:9A63: 08        .byte $08, $00   ; 0A
- D 0 - I - 0x011A75 04:9A65: 08        .byte $08, $08   ; 0B
- D 0 - I - 0x011A77 04:9A67: F8        .byte $F8, $F0   ; 0C
- D 0 - I - 0x011A79 04:9A69: F8        .byte $F8, $08   ; 0D
- D 0 - I - 0x011A7B 04:9A6B: F8        .byte $F8, $10   ; 0E
- D 0 - I - 0x011A7D 04:9A6D: 00        .byte $00, $10   ; 0F
- D 0 - I - 0x011A7F 04:9A6F: F0        .byte $F0, $F0   ; 10



_off002_9A71_41:
- D 0 - I - 0x011A81 04:9A71: F0        .byte $F0, $00   ; 00 spr_Y, spr_X
- D 0 - I - 0x011A83 04:9A73: F0        .byte $F0, $F8   ; 01
- D 0 - I - 0x011A85 04:9A75: F8        .byte $F8, $00   ; 02
- D 0 - I - 0x011A87 04:9A77: F8        .byte $F8, $F8   ; 03
- D 0 - I - 0x011A89 04:9A79: 00        .byte $00, $08   ; 04
- D 0 - I - 0x011A8B 04:9A7B: 00        .byte $00, $00   ; 05
- D 0 - I - 0x011A8D 04:9A7D: 00        .byte $00, $F8   ; 06
- D 0 - I - 0x011A8F 04:9A7F: 00        .byte $00, $F0   ; 07
- D 0 - I - 0x011A91 04:9A81: 08        .byte $08, $08   ; 08
- D 0 - I - 0x011A93 04:9A83: 08        .byte $08, $00   ; 09
- D 0 - I - 0x011A95 04:9A85: 08        .byte $08, $F8   ; 0A
- D 0 - I - 0x011A97 04:9A87: 08        .byte $08, $F0   ; 0B
- D 0 - I - 0x011A99 04:9A89: F8        .byte $F8, $08   ; 0C
- D 0 - I - 0x011A9B 04:9A8B: F8        .byte $F8, $F0   ; 0D
- D 0 - I - 0x011A9D 04:9A8D: F8        .byte $F8, $E8   ; 0E
- D 0 - I - 0x011A9F 04:9A8F: 00        .byte $00, $E8   ; 0F
- D 0 - I - 0x011AA1 04:9A91: F0        .byte $F0, $08   ; 10



_off002_9A93_42:
- D 0 - I - 0x011AA3 04:9A93: F9        .byte $F9, $F8   ; 00 spr_Y, spr_X
- D 0 - I - 0x011AA5 04:9A95: F9        .byte $F9, $00   ; 01
- D 0 - I - 0x011AA7 04:9A97: 01        .byte $01, $F8   ; 02
- D 0 - I - 0x011AA9 04:9A99: 01        .byte $01, $00   ; 03



_off002_9A9B_43:
- D 0 - I - 0x011AAB 04:9A9B: F9        .byte $F9, $00   ; 00 spr_Y, spr_X
- D 0 - I - 0x011AAD 04:9A9D: F9        .byte $F9, $F8   ; 01
- D 0 - I - 0x011AAF 04:9A9F: 01        .byte $01, $00   ; 02
- D 0 - I - 0x011AB1 04:9AA1: 01        .byte $01, $F8   ; 03



_off002_9AA3_44:
- D 0 - I - 0x011AB3 04:9AA3: F7        .byte $F7, $F8   ; 00 spr_Y, spr_X
- D 0 - I - 0x011AB5 04:9AA5: F7        .byte $F7, $00   ; 01
- D 0 - I - 0x011AB7 04:9AA7: FF        .byte $FF, $F8   ; 02
- D 0 - I - 0x011AB9 04:9AA9: FF        .byte $FF, $00   ; 03
- D 0 - I - 0x011ABB 04:9AAB: F7        .byte $F7, $E8   ; 04
- D 0 - I - 0x011ABD 04:9AAD: F7        .byte $F7, $F0   ; 05
- D 0 - I - 0x011ABF 04:9AAF: F7        .byte $F7, $08   ; 06
- D 0 - I - 0x011AC1 04:9AB1: F7        .byte $F7, $10   ; 07
- D 0 - I - 0x011AC3 04:9AB3: F7        .byte $F7, $18   ; 08
- D 0 - I - 0x011AC5 04:9AB5: FF        .byte $FF, $E8   ; 09
- D 0 - I - 0x011AC7 04:9AB7: FF        .byte $FF, $F0   ; 0A
- D 0 - I - 0x011AC9 04:9AB9: FF        .byte $FF, $08   ; 0B
- D 0 - I - 0x011ACB 04:9ABB: FF        .byte $FF, $10   ; 0C
- D 0 - I - 0x011ACD 04:9ABD: FF        .byte $FF, $18   ; 0D
- D 0 - I - 0x011ACF 04:9ABF: 07        .byte $07, $F0   ; 0E
- D 0 - I - 0x011AD1 04:9AC1: 07        .byte $07, $F8   ; 0F
- D 0 - I - 0x011AD3 04:9AC3: 07        .byte $07, $00   ; 10
- D 0 - I - 0x011AD5 04:9AC5: 07        .byte $07, $08   ; 11
- D 0 - I - 0x011AD7 04:9AC7: EF        .byte $EF, $00   ; 12
- D 0 - I - 0x011AD9 04:9AC9: EF        .byte $EF, $18   ; 13



_off002_9ACB_45:
- D 0 - I - 0x011ADB 04:9ACB: F7        .byte $F7, $00   ; 00 spr_Y, spr_X
- D 0 - I - 0x011ADD 04:9ACD: F7        .byte $F7, $F8   ; 01
- D 0 - I - 0x011ADF 04:9ACF: FF        .byte $FF, $00   ; 02
- D 0 - I - 0x011AE1 04:9AD1: FF        .byte $FF, $F8   ; 03
- D 0 - I - 0x011AE3 04:9AD3: F7        .byte $F7, $10   ; 04
- D 0 - I - 0x011AE5 04:9AD5: F7        .byte $F7, $08   ; 05
- D 0 - I - 0x011AE7 04:9AD7: F7        .byte $F7, $F0   ; 06
- D 0 - I - 0x011AE9 04:9AD9: F7        .byte $F7, $E8   ; 07
- D 0 - I - 0x011AEB 04:9ADB: F7        .byte $F7, $E0   ; 08
- D 0 - I - 0x011AED 04:9ADD: FF        .byte $FF, $10   ; 09
- D 0 - I - 0x011AEF 04:9ADF: FF        .byte $FF, $08   ; 0A
- D 0 - I - 0x011AF1 04:9AE1: FF        .byte $FF, $F0   ; 0B
- D 0 - I - 0x011AF3 04:9AE3: FF        .byte $FF, $E8   ; 0C
- D 0 - I - 0x011AF5 04:9AE5: FF        .byte $FF, $E0   ; 0D
- D 0 - I - 0x011AF7 04:9AE7: 07        .byte $07, $08   ; 0E
- D 0 - I - 0x011AF9 04:9AE9: 07        .byte $07, $00   ; 0F
- D 0 - I - 0x011AFB 04:9AEB: 07        .byte $07, $F8   ; 10
- D 0 - I - 0x011AFD 04:9AED: 07        .byte $07, $F0   ; 11
- D 0 - I - 0x011AFF 04:9AEF: EF        .byte $EF, $F8   ; 12
- D 0 - I - 0x011B01 04:9AF1: EF        .byte $EF, $E0   ; 13



_off002_9AF3_46:
- D 0 - I - 0x011B03 04:9AF3: E0        .byte $E0, $F8   ; 00 spr_Y, spr_X
- D 0 - I - 0x011B05 04:9AF5: E0        .byte $E0, $00   ; 01
- D 0 - I - 0x011B07 04:9AF7: E8        .byte $E8, $F8   ; 02
- D 0 - I - 0x011B09 04:9AF9: E8        .byte $E8, $00   ; 03
- D 0 - I - 0x011B0B 04:9AFB: F0        .byte $F0, $FB   ; 04
- D 0 - I - 0x011B0D 04:9AFD: F8        .byte $F8, $FC   ; 05
- D 0 - I - 0x011B0F 04:9AFF: 00        .byte $00, $FC   ; 06
- D 0 - I - 0x011B11 04:9B01: 08        .byte $08, $FC   ; 07
- D 0 - I - 0x011B13 04:9B03: 10        .byte $10, $FC   ; 08
- D 0 - I - 0x011B15 04:9B05: 18        .byte $18, $F8   ; 09
- D 0 - I - 0x011B17 04:9B07: 18        .byte $18, $00   ; 0A



_off002_9B09_47:
- D 0 - I - 0x011B19 04:9B09: E8        .byte $E8, $F8   ; 00 spr_Y, spr_X
- D 0 - I - 0x011B1B 04:9B0B: E8        .byte $E8, $00   ; 01
- D 0 - I - 0x011B1D 04:9B0D: E8        .byte $E8, $08   ; 02
- D 0 - I - 0x011B1F 04:9B0F: F0        .byte $F0, $F8   ; 03
- D 0 - I - 0x011B21 04:9B11: F0        .byte $F0, $00   ; 04
- D 0 - I - 0x011B23 04:9B13: F0        .byte $F0, $08   ; 05
- D 0 - I - 0x011B25 04:9B15: F8        .byte $F8, $FD   ; 06
- D 0 - I - 0x011B27 04:9B17: 00        .byte $00, $FF   ; 07
- D 0 - I - 0x011B29 04:9B19: 08        .byte $08, $FF   ; 08
- D 0 - I - 0x011B2B 04:9B1B: 10        .byte $10, $FD   ; 09
- D 0 - I - 0x011B2D 04:9B1D: 18        .byte $18, $F8   ; 0A
- D 0 - I - 0x011B2F 04:9B1F: 18        .byte $18, $00   ; 0B



_off002_9B21_48:
- D 0 - I - 0x011B31 04:9B21: F8        .byte $F8, $00   ; 00 spr_Y, spr_X
- D 0 - I - 0x011B33 04:9B23: F8        .byte $F8, $F8   ; 01
- D 0 - I - 0x011B35 04:9B25: 00        .byte $00, $F4   ; 02
- D 0 - I - 0x011B37 04:9B27: 00        .byte $00, $FC   ; 03
- D 0 - I - 0x011B39 04:9B29: 00        .byte $00, $04   ; 04



_off002_9B2B_49:
- D 0 - I - 0x011B3B 04:9B2B: F8        .byte $F8, $F8   ; 00 spr_Y, spr_X
- D 0 - I - 0x011B3D 04:9B2D: F8        .byte $F8, $00   ; 01
- D 0 - I - 0x011B3F 04:9B2F: 00        .byte $00, $04   ; 02
- D 0 - I - 0x011B41 04:9B31: 00        .byte $00, $FC   ; 03
- D 0 - I - 0x011B43 04:9B33: 00        .byte $00, $F4   ; 04



_off002_9B35_4A:
- D 0 - I - 0x011B45 04:9B35: F9        .byte $F9, $F8   ; 00 spr_Y, spr_X
- D 0 - I - 0x011B47 04:9B37: F9        .byte $F9, $00   ; 01
- D 0 - I - 0x011B49 04:9B39: 01        .byte $01, $F7   ; 02
- D 0 - I - 0x011B4B 04:9B3B: 01        .byte $01, $FF   ; 03



_off002_9B3D_4B:
- D 0 - I - 0x011B4D 04:9B3D: F9        .byte $F9, $00   ; 00 spr_Y, spr_X
- D 0 - I - 0x011B4F 04:9B3F: F9        .byte $F9, $F8   ; 01
- D 0 - I - 0x011B51 04:9B41: 01        .byte $01, $01   ; 02
- D 0 - I - 0x011B53 04:9B43: 01        .byte $01, $F9   ; 03



_off002_9B45_4C:
- D 0 - I - 0x011B55 04:9B45: FC        .byte $FC, $F8   ; 00 spr_Y, spr_X
- D 0 - I - 0x011B57 04:9B47: FC        .byte $FC, $00   ; 01
- D 0 - I - 0x011B59 04:9B49: 04        .byte $04, $F8   ; 02
- D 0 - I - 0x011B5B 04:9B4B: 04        .byte $04, $00   ; 03
- D 0 - I - 0x011B5D 04:9B4D: F4        .byte $F4, $00   ; 04



_off002_9B4F_4D:
- D 0 - I - 0x011B5F 04:9B4F: FC        .byte $FC, $00   ; 00 spr_Y, spr_X
- D 0 - I - 0x011B61 04:9B51: FC        .byte $FC, $F8   ; 01
- D 0 - I - 0x011B63 04:9B53: 04        .byte $04, $00   ; 02
- D 0 - I - 0x011B65 04:9B55: 04        .byte $04, $F8   ; 03
- D 0 - I - 0x011B67 04:9B57: F4        .byte $F4, $F8   ; 04



_off002_9B59_4E:
- D 0 - I - 0x011B69 04:9B59: F3        .byte $F3, $F8   ; 00 spr_Y, spr_X
- D 0 - I - 0x011B6B 04:9B5B: F3        .byte $F3, $00   ; 01
- D 0 - I - 0x011B6D 04:9B5D: FB        .byte $FB, $F8   ; 02
- D 0 - I - 0x011B6F 04:9B5F: FB        .byte $FB, $00   ; 03
- D 0 - I - 0x011B71 04:9B61: 00        .byte $00, $F4   ; 04
- D 0 - I - 0x011B73 04:9B63: 00        .byte $00, $FC   ; 05
- D 0 - I - 0x011B75 04:9B65: 00        .byte $00, $04   ; 06



_off002_9B67_4F:
- D 0 - I - 0x011B77 04:9B67: F3        .byte $F3, $00   ; 00 spr_Y, spr_X
- D 0 - I - 0x011B79 04:9B69: F3        .byte $F3, $F8   ; 01
- D 0 - I - 0x011B7B 04:9B6B: FB        .byte $FB, $00   ; 02
- D 0 - I - 0x011B7D 04:9B6D: FB        .byte $FB, $F8   ; 03
- D 0 - I - 0x011B7F 04:9B6F: 00        .byte $00, $04   ; 04
- D 0 - I - 0x011B81 04:9B71: 00        .byte $00, $FC   ; 05
- D 0 - I - 0x011B83 04:9B73: 00        .byte $00, $F4   ; 06



_off002_9B75_50:
- D 0 - I - 0x011B85 04:9B75: F4        .byte $F4, $F8   ; 00 spr_Y, spr_X
- D 0 - I - 0x011B87 04:9B77: F4        .byte $F4, $00   ; 01
- D 0 - I - 0x011B89 04:9B79: FC        .byte $FC, $F8   ; 02
- D 0 - I - 0x011B8B 04:9B7B: FC        .byte $FC, $00   ; 03
- D 0 - I - 0x011B8D 04:9B7D: 01        .byte $01, $F6   ; 04
- D 0 - I - 0x011B8F 04:9B7F: 01        .byte $01, $FE   ; 05



_off002_9B81_51:
- D 0 - I - 0x011B91 04:9B81: F4        .byte $F4, $00   ; 00 spr_Y, spr_X
- D 0 - I - 0x011B93 04:9B83: F4        .byte $F4, $F8   ; 01
- D 0 - I - 0x011B95 04:9B85: FC        .byte $FC, $00   ; 02
- D 0 - I - 0x011B97 04:9B87: FC        .byte $FC, $F8   ; 03
- D 0 - I - 0x011B99 04:9B89: 01        .byte $01, $02   ; 04
- D 0 - I - 0x011B9B 04:9B8B: 01        .byte $01, $FA   ; 05



_off002_9B8D_52:
- D 0 - I - 0x011B9D 04:9B8D: F3        .byte $F3, $F3   ; 00 spr_Y, spr_X
- D 0 - I - 0x011B9F 04:9B8F: F3        .byte $F3, $FB   ; 01
- D 0 - I - 0x011BA1 04:9B91: F3        .byte $F3, $03   ; 02
- D 0 - I - 0x011BA3 04:9B93: FB        .byte $FB, $F3   ; 03
- D 0 - I - 0x011BA5 04:9B95: FB        .byte $FB, $FB   ; 04
- D 0 - I - 0x011BA7 04:9B97: FB        .byte $FB, $03   ; 05
- D 0 - I - 0x011BA9 04:9B99: 03        .byte $03, $FB   ; 06
- D 0 - I - 0x011BAB 04:9B9B: 03        .byte $03, $03   ; 07



_off002_9B9D_53:
- D 0 - I - 0x011BAD 04:9B9D: F3        .byte $F3, $05   ; 00 spr_Y, spr_X
- D 0 - I - 0x011BAF 04:9B9F: F3        .byte $F3, $FD   ; 01
- D 0 - I - 0x011BB1 04:9BA1: F3        .byte $F3, $F5   ; 02
- D 0 - I - 0x011BB3 04:9BA3: FB        .byte $FB, $05   ; 03
- D 0 - I - 0x011BB5 04:9BA5: FB        .byte $FB, $FD   ; 04
- D 0 - I - 0x011BB7 04:9BA7: FB        .byte $FB, $F5   ; 05
- D 0 - I - 0x011BB9 04:9BA9: 03        .byte $03, $FD   ; 06
- D 0 - I - 0x011BBB 04:9BAB: 03        .byte $03, $F5   ; 07



_off002_9BAD_54:
- D 0 - I - 0x011BBD 04:9BAD: F5        .byte $F5, $F5   ; 00 spr_Y, spr_X
- D 0 - I - 0x011BBF 04:9BAF: F5        .byte $F5, $FD   ; 01
- D 0 - I - 0x011BC1 04:9BB1: F5        .byte $F5, $05   ; 02
- D 0 - I - 0x011BC3 04:9BB3: FD        .byte $FD, $F5   ; 03
- D 0 - I - 0x011BC5 04:9BB5: FD        .byte $FD, $FD   ; 04
- D 0 - I - 0x011BC7 04:9BB7: FD        .byte $FD, $05   ; 05
- D 0 - I - 0x011BC9 04:9BB9: 05        .byte $05, $F5   ; 06
- D 0 - I - 0x011BCB 04:9BBB: 05        .byte $05, $FD   ; 07
- D 0 - I - 0x011BCD 04:9BBD: 05        .byte $05, $05   ; 08



_off002_9BBF_55:
- D 0 - I - 0x011BCF 04:9BBF: F5        .byte $F5, $03   ; 00 spr_Y, spr_X
- D 0 - I - 0x011BD1 04:9BC1: F5        .byte $F5, $FB   ; 01
- D 0 - I - 0x011BD3 04:9BC3: F5        .byte $F5, $F3   ; 02
- D 0 - I - 0x011BD5 04:9BC5: FD        .byte $FD, $03   ; 03
- D 0 - I - 0x011BD7 04:9BC7: FD        .byte $FD, $FB   ; 04
- D 0 - I - 0x011BD9 04:9BC9: FD        .byte $FD, $F3   ; 05
- D 0 - I - 0x011BDB 04:9BCB: 05        .byte $05, $03   ; 06
- D 0 - I - 0x011BDD 04:9BCD: 05        .byte $05, $FB   ; 07
- D 0 - I - 0x011BDF 04:9BCF: 05        .byte $05, $F3   ; 08



_off002_9BD1_56:
- D 0 - I - 0x011BE1 04:9BD1: F2        .byte $F2, $F2   ; 00 spr_Y, spr_X
- D 0 - I - 0x011BE3 04:9BD3: F2        .byte $F2, $FA   ; 01
- D 0 - I - 0x011BE5 04:9BD5: F2        .byte $F2, $02   ; 02
- D 0 - I - 0x011BE7 04:9BD7: FA        .byte $FA, $F2   ; 03
- D 0 - I - 0x011BE9 04:9BD9: FA        .byte $FA, $FA   ; 04
- D 0 - I - 0x011BEB 04:9BDB: FA        .byte $FA, $02   ; 05
- D 0 - I - 0x011BED 04:9BDD: 02        .byte $02, $FA   ; 06
- D 0 - I - 0x011BEF 04:9BDF: 02        .byte $02, $02   ; 07



_off002_9BE1_57:
- D 0 - I - 0x011BF1 04:9BE1: F2        .byte $F2, $06   ; 00 spr_Y, spr_X
- D 0 - I - 0x011BF3 04:9BE3: F2        .byte $F2, $FE   ; 01
- D 0 - I - 0x011BF5 04:9BE5: F2        .byte $F2, $F6   ; 02
- D 0 - I - 0x011BF7 04:9BE7: FA        .byte $FA, $06   ; 03
- D 0 - I - 0x011BF9 04:9BE9: FA        .byte $FA, $FE   ; 04
- D 0 - I - 0x011BFB 04:9BEB: FA        .byte $FA, $F6   ; 05
- D 0 - I - 0x011BFD 04:9BED: 02        .byte $02, $FE   ; 06
- D 0 - I - 0x011BFF 04:9BEF: 02        .byte $02, $F6   ; 07



_off002_9BF1_58:
- D 0 - I - 0x011C01 04:9BF1: F0        .byte $F0, $F0   ; 00 spr_Y, spr_X
- D 0 - I - 0x011C03 04:9BF3: F0        .byte $F0, $F8   ; 01
- D 0 - I - 0x011C05 04:9BF5: F0        .byte $F0, $00   ; 02
- D 0 - I - 0x011C07 04:9BF7: F8        .byte $F8, $F0   ; 03
- D 0 - I - 0x011C09 04:9BF9: F8        .byte $F8, $F8   ; 04
- D 0 - I - 0x011C0B 04:9BFB: F8        .byte $F8, $00   ; 05
- D 0 - I - 0x011C0D 04:9BFD: F8        .byte $F8, $08   ; 06
- D 0 - I - 0x011C0F 04:9BFF: 00        .byte $00, $F0   ; 07
- D 0 - I - 0x011C11 04:9C01: 00        .byte $00, $F8   ; 08
- D 0 - I - 0x011C13 04:9C03: 00        .byte $00, $00   ; 09
- D 0 - I - 0x011C15 04:9C05: 08        .byte $08, $F0   ; 0A
- D 0 - I - 0x011C17 04:9C07: 08        .byte $08, $F8   ; 0B
- D 0 - I - 0x011C19 04:9C09: 08        .byte $08, $00   ; 0C



_off002_9C0B_59:
- D 0 - I - 0x011C1B 04:9C0B: F0        .byte $F0, $08   ; 00 spr_Y, spr_X
- D 0 - I - 0x011C1D 04:9C0D: F0        .byte $F0, $00   ; 01
- D 0 - I - 0x011C1F 04:9C0F: F0        .byte $F0, $F8   ; 02
- D 0 - I - 0x011C21 04:9C11: F8        .byte $F8, $08   ; 03
- D 0 - I - 0x011C23 04:9C13: F8        .byte $F8, $00   ; 04
- D 0 - I - 0x011C25 04:9C15: F8        .byte $F8, $F8   ; 05
- D 0 - I - 0x011C27 04:9C17: F8        .byte $F8, $F0   ; 06
- D 0 - I - 0x011C29 04:9C19: 00        .byte $00, $08   ; 07
- D 0 - I - 0x011C2B 04:9C1B: 00        .byte $00, $00   ; 08
- D 0 - I - 0x011C2D 04:9C1D: 00        .byte $00, $F8   ; 09
- D 0 - I - 0x011C2F 04:9C1F: 08        .byte $08, $08   ; 0A
- D 0 - I - 0x011C31 04:9C21: 08        .byte $08, $00   ; 0B
- D 0 - I - 0x011C33 04:9C23: 08        .byte $08, $F8   ; 0C
- D 0 - I - 0x011C35 04:9C25: F8        .byte $F8, $E8   ; 0D
- D 0 - I - 0x011C37 04:9C27: 00        .byte $00, $F0   ; 0E
- D 0 - I - 0x011C39 04:9C29: F1        .byte $F1, $F8   ; 0F
- D 0 - I - 0x011C3B 04:9C2B: F9        .byte $F9, $F8   ; 10



_off002_9C2D_5A:
- D 0 - I - 0x011C3D 04:9C2D: F0        .byte $F0, $EE   ; 00 spr_Y, spr_X
- D 0 - I - 0x011C3F 04:9C2F: F0        .byte $F0, $F6   ; 01
- D 0 - I - 0x011C41 04:9C31: F0        .byte $F0, $FE   ; 02
- D 0 - I - 0x011C43 04:9C33: F8        .byte $F8, $EE   ; 03
- D 0 - I - 0x011C45 04:9C35: F8        .byte $F8, $F6   ; 04
- D 0 - I - 0x011C47 04:9C37: F8        .byte $F8, $FE   ; 05
- D 0 - I - 0x011C49 04:9C39: F8        .byte $F8, $06   ; 06
- D 0 - I - 0x011C4B 04:9C3B: 00        .byte $00, $EE   ; 07
- D 0 - I - 0x011C4D 04:9C3D: 00        .byte $00, $F6   ; 08
- D 0 - I - 0x011C4F 04:9C3F: 00        .byte $00, $FE   ; 09
- D 0 - I - 0x011C51 04:9C41: 00        .byte $00, $06   ; 0A
- D 0 - I - 0x011C53 04:9C43: 08        .byte $08, $EE   ; 0B
- D 0 - I - 0x011C55 04:9C45: 08        .byte $08, $F6   ; 0C
- D 0 - I - 0x011C57 04:9C47: 08        .byte $08, $FE   ; 0D



_off002_9C49_5B:
- D 0 - I - 0x011C59 04:9C49: F0        .byte $F0, $0A   ; 00 spr_Y, spr_X
- D 0 - I - 0x011C5B 04:9C4B: F0        .byte $F0, $02   ; 01
- D 0 - I - 0x011C5D 04:9C4D: F0        .byte $F0, $FA   ; 02
- D 0 - I - 0x011C5F 04:9C4F: F8        .byte $F8, $0A   ; 03
- D 0 - I - 0x011C61 04:9C51: F8        .byte $F8, $02   ; 04
- D 0 - I - 0x011C63 04:9C53: F8        .byte $F8, $FA   ; 05
- D 0 - I - 0x011C65 04:9C55: F8        .byte $F8, $F2   ; 06
- D 0 - I - 0x011C67 04:9C57: 00        .byte $00, $0A   ; 07
- D 0 - I - 0x011C69 04:9C59: 00        .byte $00, $02   ; 08
- D 0 - I - 0x011C6B 04:9C5B: 00        .byte $00, $FA   ; 09
- D 0 - I - 0x011C6D 04:9C5D: 00        .byte $00, $F2   ; 0A
- D 0 - I - 0x011C6F 04:9C5F: 08        .byte $08, $0A   ; 0B
- D 0 - I - 0x011C71 04:9C61: 08        .byte $08, $02   ; 0C
- D 0 - I - 0x011C73 04:9C63: 08        .byte $08, $FA   ; 0D



_off002_9C65_5C:
- D 0 - I - 0x011C75 04:9C65: FA        .byte $FA, $FA   ; 00 spr_Y, spr_X
- D 0 - I - 0x011C77 04:9C67: 00        .byte $00, $FC   ; 01
- D 0 - I - 0x011C79 04:9C69: FC        .byte $FC, $01   ; 02



_off002_9C6B_5D:
- D 0 - I - 0x011C7B 04:9C6B: FE        .byte $FE, $F8   ; 00 spr_Y, spr_X
- D 0 - I - 0x011C7D 04:9C6D: FA        .byte $FA, $FA   ; 01
- D 0 - I - 0x011C7F 04:9C6F: FC        .byte $FC, $FC   ; 02



_off002_9C71_5E:
- D 0 - I - 0x011C81 04:9C71: F0        .byte $F0, $F4   ; 00 spr_Y, spr_X
- D 0 - I - 0x011C83 04:9C73: F0        .byte $F0, $FC   ; 01
- D 0 - I - 0x011C85 04:9C75: F0        .byte $F0, $04   ; 02
- D 0 - I - 0x011C87 04:9C77: F8        .byte $F8, $F4   ; 03
- D 0 - I - 0x011C89 04:9C79: F8        .byte $F8, $FC   ; 04
- D 0 - I - 0x011C8B 04:9C7B: F8        .byte $F8, $04   ; 05
- D 0 - I - 0x011C8D 04:9C7D: 00        .byte $00, $F4   ; 06
- D 0 - I - 0x011C8F 04:9C7F: 00        .byte $00, $FC   ; 07
- D 0 - I - 0x011C91 04:9C81: 00        .byte $00, $04   ; 08
- D 0 - I - 0x011C93 04:9C83: 08        .byte $08, $F9   ; 09
- D 0 - I - 0x011C95 04:9C85: 08        .byte $08, $01   ; 0A
- D 0 - I - 0x011C97 04:9C87: E8        .byte $E8, $F9   ; 0B



_off002_9C89_5F:
- D 0 - I - 0x011C99 04:9C89: E9        .byte $E9, $F4   ; 00 spr_Y, spr_X
- D 0 - I - 0x011C9B 04:9C8B: F1        .byte $F1, $F4   ; 01
- D 0 - I - 0x011C9D 04:9C8D: F1        .byte $F1, $FC   ; 02
- D 0 - I - 0x011C9F 04:9C8F: F1        .byte $F1, $04   ; 03
- D 0 - I - 0x011CA1 04:9C91: F9        .byte $F9, $F4   ; 04
- D 0 - I - 0x011CA3 04:9C93: F9        .byte $F9, $FC   ; 05
- D 0 - I - 0x011CA5 04:9C95: F9        .byte $F9, $04   ; 06
- D 0 - I - 0x011CA7 04:9C97: 01        .byte $01, $F4   ; 07
- D 0 - I - 0x011CA9 04:9C99: 01        .byte $01, $FC   ; 08
- D 0 - I - 0x011CAB 04:9C9B: 01        .byte $01, $04   ; 09
- D 0 - I - 0x011CAD 04:9C9D: 09        .byte $09, $F9   ; 0A
- D 0 - I - 0x011CAF 04:9C9F: 09        .byte $09, $01   ; 0B



_off002_9CA1_60:
- D 0 - I - 0x011CB1 04:9CA1: F1        .byte $F1, $FC   ; 00 spr_Y, spr_X
- D 0 - I - 0x011CB3 04:9CA3: F1        .byte $F1, $04   ; 01
- D 0 - I - 0x011CB5 04:9CA5: F9        .byte $F9, $F4   ; 02
- D 0 - I - 0x011CB7 04:9CA7: F9        .byte $F9, $FC   ; 03
- D 0 - I - 0x011CB9 04:9CA9: F9        .byte $F9, $04   ; 04
- D 0 - I - 0x011CBB 04:9CAB: 01        .byte $01, $F4   ; 05
- D 0 - I - 0x011CBD 04:9CAD: 01        .byte $01, $FC   ; 06
- D 0 - I - 0x011CBF 04:9CAF: 01        .byte $01, $04   ; 07
- D 0 - I - 0x011CC1 04:9CB1: 09        .byte $09, $F9   ; 08
- D 0 - I - 0x011CC3 04:9CB3: 09        .byte $09, $01   ; 09
- D 0 - I - 0x011CC5 04:9CB5: FD        .byte $FD, $E4   ; 0A
- D 0 - I - 0x011CC7 04:9CB7: FD        .byte $FD, $EC   ; 0B



_off002_9CB9_61:
- D 0 - I - 0x011CC9 04:9CB9: F0        .byte $F0, $FC   ; 00 spr_Y, spr_X
- D 0 - I - 0x011CCB 04:9CBB: F0        .byte $F0, $04   ; 01
- D 0 - I - 0x011CCD 04:9CBD: F8        .byte $F8, $F4   ; 02
- D 0 - I - 0x011CCF 04:9CBF: F8        .byte $F8, $FC   ; 03
- D 0 - I - 0x011CD1 04:9CC1: F8        .byte $F8, $04   ; 04
- D 0 - I - 0x011CD3 04:9CC3: 00        .byte $00, $F4   ; 05
- D 0 - I - 0x011CD5 04:9CC5: 00        .byte $00, $FC   ; 06
- D 0 - I - 0x011CD7 04:9CC7: 00        .byte $00, $04   ; 07
- D 0 - I - 0x011CD9 04:9CC9: 08        .byte $08, $F9   ; 08
- D 0 - I - 0x011CDB 04:9CCB: 08        .byte $08, $01   ; 09
- D 0 - I - 0x011CDD 04:9CCD: 03        .byte $03, $EC   ; 0A



_off002_9CCF_62:
- D 0 - I - 0x011CDF 04:9CCF: 00        .byte $00, $00   ; 00 spr_Y, spr_X
- D 0 - I - 0x011CE1 04:9CD1: 00        .byte $00, $08   ; 01
- D 0 - I - 0x011CE3 04:9CD3: 00        .byte $00, $10   ; 02
- D 0 - I - 0x011CE5 04:9CD5: 08        .byte $08, $00   ; 03
- D 0 - I - 0x011CE7 04:9CD7: 08        .byte $08, $08   ; 04
- D 0 - I - 0x011CE9 04:9CD9: 08        .byte $08, $10   ; 05
- D 0 - I - 0x011CEB 04:9CDB: 10        .byte $10, $FD   ; 06
- D 0 - I - 0x011CED 04:9CDD: 10        .byte $10, $05   ; 07
- D 0 - I - 0x011CEF 04:9CDF: 10        .byte $10, $0D   ; 08
- D 0 - I - 0x011CF1 04:9CE1: 18        .byte $18, $00   ; 09
- D 0 - I - 0x011CF3 04:9CE3: 18        .byte $18, $08   ; 0A
- D 0 - I - 0x011CF5 04:9CE5: 18        .byte $18, $10   ; 0B
- D 0 - I - 0x011CF7 04:9CE7: 10        .byte $10, $00   ; 0C



_off002_9CE9_63:
- D 0 - I - 0x011CF9 04:9CE9: 00        .byte $00, $F0   ; 00 spr_Y, spr_X
- D 0 - I - 0x011CFB 04:9CEB: 00        .byte $00, $F8   ; 01
- D 0 - I - 0x011CFD 04:9CED: 08        .byte $08, $EC   ; 02
- D 0 - I - 0x011CFF 04:9CEF: 08        .byte $08, $F4   ; 03
- D 0 - I - 0x011D01 04:9CF1: 10        .byte $10, $F0   ; 04
- D 0 - I - 0x011D03 04:9CF3: 18        .byte $18, $F0   ; 05



_off002_9CF5_64:
- D 0 - I - 0x011D05 04:9CF5: 00        .byte $00, $F0   ; 00 spr_Y, spr_X
- D 0 - I - 0x011D07 04:9CF7: 00        .byte $00, $F8   ; 01
- D 0 - I - 0x011D09 04:9CF9: 08        .byte $08, $EC   ; 02
- D 0 - I - 0x011D0B 04:9CFB: 08        .byte $08, $F4   ; 03
- D 0 - I - 0x011D0D 04:9CFD: 10        .byte $10, $E8   ; 04
- D 0 - I - 0x011D0F 04:9CFF: 10        .byte $10, $F0   ; 05
- D 0 - I - 0x011D11 04:9D01: 10        .byte $10, $F8   ; 06
- D 0 - I - 0x011D13 04:9D03: 18        .byte $18, $E4   ; 07
- D 0 - I - 0x011D15 04:9D05: 18        .byte $18, $EC   ; 08
- D 0 - I - 0x011D17 04:9D07: 18        .byte $18, $F4   ; 09
- D 0 - I - 0x011D19 04:9D09: 20        .byte $20, $D0   ; 0A
- D 0 - I - 0x011D1B 04:9D0B: 20        .byte $20, $D8   ; 0B
- D 0 - I - 0x011D1D 04:9D0D: 20        .byte $20, $E0   ; 0C
- D 0 - I - 0x011D1F 04:9D0F: 20        .byte $20, $E8   ; 0D
- D 0 - I - 0x011D21 04:9D11: 28        .byte $28, $D0   ; 0E
- D 0 - I - 0x011D23 04:9D13: 28        .byte $28, $D8   ; 0F
- D 0 - I - 0x011D25 04:9D15: 28        .byte $28, $E0   ; 10
- D 0 - I - 0x011D27 04:9D17: 30        .byte $30, $D0   ; 11
- D 0 - I - 0x011D29 04:9D19: 30        .byte $30, $D8   ; 12
- D 0 - I - 0x011D2B 04:9D1B: 30        .byte $30, $E0   ; 13



_off002_9D1D_65:
- D 0 - I - 0x011D2D 04:9D1D: F8        .byte $F8, $E8   ; 00 spr_Y, spr_X
- D 0 - I - 0x011D2F 04:9D1F: F8        .byte $F8, $10   ; 01
- D 0 - I - 0x011D31 04:9D21: 00        .byte $00, $E8   ; 02
- D 0 - I - 0x011D33 04:9D23: 00        .byte $00, $F0   ; 03
- D 0 - I - 0x011D35 04:9D25: 00        .byte $00, $08   ; 04
- D 0 - I - 0x011D37 04:9D27: 00        .byte $00, $10   ; 05



_off002_9D29_66:
- D 0 - I - 0x011D39 04:9D29: F3        .byte $F3, $F4   ; 00 spr_Y, spr_X
- D 0 - I - 0x011D3B 04:9D2B: F3        .byte $F3, $FC   ; 01
- D 0 - I - 0x011D3D 04:9D2D: F3        .byte $F3, $04   ; 02
- D 0 - I - 0x011D3F 04:9D2F: FB        .byte $FB, $F4   ; 03
- D 0 - I - 0x011D41 04:9D31: FB        .byte $FB, $FC   ; 04
- D 0 - I - 0x011D43 04:9D33: FB        .byte $FB, $04   ; 05
- D 0 - I - 0x011D45 04:9D35: 03        .byte $03, $F4   ; 06
- D 0 - I - 0x011D47 04:9D37: 03        .byte $03, $FC   ; 07
- D 0 - I - 0x011D49 04:9D39: 03        .byte $03, $04   ; 08



_off002_9D3B_67:
- D 0 - I - 0x011D4B 04:9D3B: F3        .byte $F3, $04   ; 00 spr_Y, spr_X
- D 0 - I - 0x011D4D 04:9D3D: F3        .byte $F3, $FC   ; 01
- D 0 - I - 0x011D4F 04:9D3F: F3        .byte $F3, $F4   ; 02
- D 0 - I - 0x011D51 04:9D41: FB        .byte $FB, $04   ; 03
- D 0 - I - 0x011D53 04:9D43: FB        .byte $FB, $FC   ; 04
- D 0 - I - 0x011D55 04:9D45: FB        .byte $FB, $F4   ; 05
- D 0 - I - 0x011D57 04:9D47: 03        .byte $03, $04   ; 06
- D 0 - I - 0x011D59 04:9D49: 03        .byte $03, $FC   ; 07
- D 0 - I - 0x011D5B 04:9D4B: 03        .byte $03, $F4   ; 08



_off002_9D4D_68:
- D 0 - I - 0x011D5D 04:9D4D: F8        .byte $F8, $F0   ; 00 spr_Y, spr_X
- D 0 - I - 0x011D5F 04:9D4F: F8        .byte $F8, $F8   ; 01
- D 0 - I - 0x011D61 04:9D51: F8        .byte $F8, $00   ; 02
- D 0 - I - 0x011D63 04:9D53: 00        .byte $00, $F0   ; 03
- D 0 - I - 0x011D65 04:9D55: 00        .byte $00, $F8   ; 04
- D 0 - I - 0x011D67 04:9D57: 00        .byte $00, $00   ; 05
- D 0 - I - 0x011D69 04:9D59: F8        .byte $F8, $08   ; 06
- D 0 - I - 0x011D6B 04:9D5B: 00        .byte $00, $08   ; 07
- D 0 - I - 0x011D6D 04:9D5D: 08        .byte $08, $F8   ; 08
- D 0 - I - 0x011D6F 04:9D5F: 08        .byte $08, $00   ; 09
- D 0 - I - 0x011D71 04:9D61: 10        .byte $10, $FC   ; 0A



_off002_9D63_69:
- D 0 - I - 0x011D73 04:9D63: F8        .byte $F8, $08   ; 00 spr_Y, spr_X
- D 0 - I - 0x011D75 04:9D65: F8        .byte $F8, $00   ; 01
- D 0 - I - 0x011D77 04:9D67: F8        .byte $F8, $F8   ; 02
- D 0 - I - 0x011D79 04:9D69: 00        .byte $00, $08   ; 03
- D 0 - I - 0x011D7B 04:9D6B: 00        .byte $00, $00   ; 04
- D 0 - I - 0x011D7D 04:9D6D: 00        .byte $00, $F8   ; 05
- D 0 - I - 0x011D7F 04:9D6F: F8        .byte $F8, $F0   ; 06
- D 0 - I - 0x011D81 04:9D71: 00        .byte $00, $F0   ; 07
- D 0 - I - 0x011D83 04:9D73: 08        .byte $08, $00   ; 08
- - - - - - 0x011D85 04:9D75: 08        .byte $08, $F8   ; 09
- - - - - - 0x011D87 04:9D77: 10        .byte $10, $FC   ; 0A



_off002_9D79_6A:
- D 0 - I - 0x011D89 04:9D79: F8        .byte $F8, $F0   ; 00 spr_Y, spr_X
- D 0 - I - 0x011D8B 04:9D7B: F8        .byte $F8, $F8   ; 01
- D 0 - I - 0x011D8D 04:9D7D: F8        .byte $F8, $00   ; 02
- D 0 - I - 0x011D8F 04:9D7F: 00        .byte $00, $F0   ; 03
- D 0 - I - 0x011D91 04:9D81: 00        .byte $00, $F8   ; 04
- D 0 - I - 0x011D93 04:9D83: 00        .byte $00, $00   ; 05
- D 0 - I - 0x011D95 04:9D85: F8        .byte $F8, $08   ; 06
- D 0 - I - 0x011D97 04:9D87: 00        .byte $00, $08   ; 07
- D 0 - I - 0x011D99 04:9D89: 08        .byte $08, $F8   ; 08
- - - - - - 0x011D9B 04:9D8B: 08        .byte $08, $00   ; 09
- - - - - - 0x011D9D 04:9D8D: 10        .byte $10, $FC   ; 0A



_off002_9D8F_6B:
- D 0 - I - 0x011D9F 04:9D8F: FC        .byte $FC, $F0   ; 00 spr_Y, spr_X
- D 0 - I - 0x011DA1 04:9D91: FC        .byte $FC, $F8   ; 01
- D 0 - I - 0x011DA3 04:9D93: FC        .byte $FC, $00   ; 02
- D 0 - I - 0x011DA5 04:9D95: FC        .byte $FC, $08   ; 03
- D 0 - I - 0x011DA7 04:9D97: 04        .byte $04, $F0   ; 04
- D 0 - I - 0x011DA9 04:9D99: 04        .byte $04, $F8   ; 05
- D 0 - I - 0x011DAB 04:9D9B: 04        .byte $04, $00   ; 06
- D 0 - I - 0x011DAD 04:9D9D: 04        .byte $04, $08   ; 07
- D 0 - I - 0x011DAF 04:9D9F: F4        .byte $F4, $F8   ; 08



_off002_9DA1_6C:
- D 0 - I - 0x011DB1 04:9DA1: FC        .byte $FC, $08   ; 00 spr_Y, spr_X
- D 0 - I - 0x011DB3 04:9DA3: FC        .byte $FC, $00   ; 01
- D 0 - I - 0x011DB5 04:9DA5: FC        .byte $FC, $F8   ; 02
- D 0 - I - 0x011DB7 04:9DA7: FC        .byte $FC, $F0   ; 03
- D 0 - I - 0x011DB9 04:9DA9: 04        .byte $04, $08   ; 04
- D 0 - I - 0x011DBB 04:9DAB: 04        .byte $04, $00   ; 05
- D 0 - I - 0x011DBD 04:9DAD: 04        .byte $04, $F8   ; 06
- D 0 - I - 0x011DBF 04:9DAF: 04        .byte $04, $F0   ; 07
- D 0 - I - 0x011DC1 04:9DB1: F4        .byte $F4, $00   ; 08



_off002_9DB3_6D:
- D 0 - I - 0x011DC3 04:9DB3: FC        .byte $FC, $F0   ; 00 spr_Y, spr_X
- D 0 - I - 0x011DC5 04:9DB5: FC        .byte $FC, $F8   ; 01
- D 0 - I - 0x011DC7 04:9DB7: FC        .byte $FC, $00   ; 02
- D 0 - I - 0x011DC9 04:9DB9: FC        .byte $FC, $08   ; 03
- D 0 - I - 0x011DCB 04:9DBB: 04        .byte $04, $F0   ; 04
- D 0 - I - 0x011DCD 04:9DBD: 04        .byte $04, $F8   ; 05
- D 0 - I - 0x011DCF 04:9DBF: 04        .byte $04, $00   ; 06
- D 0 - I - 0x011DD1 04:9DC1: 04        .byte $04, $08   ; 07
- D 0 - I - 0x011DD3 04:9DC3: F4        .byte $F4, $F8   ; 08



_off002_9DC5_6E:
- D 0 - I - 0x011DD5 04:9DC5: F0        .byte $F0, $F4   ; 00 spr_Y, spr_X
- D 0 - I - 0x011DD7 04:9DC7: F0        .byte $F0, $FC   ; 01
- D 0 - I - 0x011DD9 04:9DC9: F0        .byte $F0, $04   ; 02
- D 0 - I - 0x011DDB 04:9DCB: F8        .byte $F8, $F4   ; 03
- D 0 - I - 0x011DDD 04:9DCD: F8        .byte $F8, $FC   ; 04
- D 0 - I - 0x011DDF 04:9DCF: F8        .byte $F8, $04   ; 05
- D 0 - I - 0x011DE1 04:9DD1: 00        .byte $00, $EC   ; 06
- D 0 - I - 0x011DE3 04:9DD3: 00        .byte $00, $F4   ; 07
- D 0 - I - 0x011DE5 04:9DD5: 00        .byte $00, $FC   ; 08
- D 0 - I - 0x011DE7 04:9DD7: 00        .byte $00, $04   ; 09
- D 0 - I - 0x011DE9 04:9DD9: 08        .byte $08, $F4   ; 0A
- D 0 - I - 0x011DEB 04:9DDB: 08        .byte $08, $FC   ; 0B
- D 0 - I - 0x011DED 04:9DDD: 08        .byte $08, $04   ; 0C



_off002_9DDF_6F:
- D 0 - I - 0x011DEF 04:9DDF: F0        .byte $F0, $04   ; 00 spr_Y, spr_X
- D 0 - I - 0x011DF1 04:9DE1: F0        .byte $F0, $FC   ; 01
- D 0 - I - 0x011DF3 04:9DE3: F0        .byte $F0, $F4   ; 02
- D 0 - I - 0x011DF5 04:9DE5: F8        .byte $F8, $04   ; 03
- D 0 - I - 0x011DF7 04:9DE7: F8        .byte $F8, $FC   ; 04
- D 0 - I - 0x011DF9 04:9DE9: F8        .byte $F8, $F4   ; 05
- D 0 - I - 0x011DFB 04:9DEB: 00        .byte $00, $0C   ; 06
- D 0 - I - 0x011DFD 04:9DED: 00        .byte $00, $04   ; 07
- D 0 - I - 0x011DFF 04:9DEF: 00        .byte $00, $FC   ; 08
- D 0 - I - 0x011E01 04:9DF1: 00        .byte $00, $F4   ; 09
- D 0 - I - 0x011E03 04:9DF3: 08        .byte $08, $04   ; 0A
- D 0 - I - 0x011E05 04:9DF5: 08        .byte $08, $FC   ; 0B
- D 0 - I - 0x011E07 04:9DF7: 08        .byte $08, $F4   ; 0C



_off002_9DF9_70:
- D 0 - I - 0x011E09 04:9DF9: F0        .byte $F0, $F8   ; 00 spr_Y, spr_X
- D 0 - I - 0x011E0B 04:9DFB: F8        .byte $F8, $F0   ; 01
- D 0 - I - 0x011E0D 04:9DFD: F8        .byte $F8, $F8   ; 02
- D 0 - I - 0x011E0F 04:9DFF: F8        .byte $F8, $00   ; 03
- D 0 - I - 0x011E11 04:9E01: F8        .byte $F8, $08   ; 04
- D 0 - I - 0x011E13 04:9E03: 00        .byte $00, $F0   ; 05
- D 0 - I - 0x011E15 04:9E05: 00        .byte $00, $F8   ; 06
- D 0 - I - 0x011E17 04:9E07: 00        .byte $00, $00   ; 07
- D 0 - I - 0x011E19 04:9E09: 00        .byte $00, $08   ; 08
- D 0 - I - 0x011E1B 04:9E0B: F0        .byte $F0, $00   ; 09
- D 0 - I - 0x011E1D 04:9E0D: F7        .byte $F7, $10   ; 0A



_off002_9E0F_71:
- D 0 - I - 0x011E1F 04:9E0F: F0        .byte $F0, $00   ; 00 spr_Y, spr_X
- D 0 - I - 0x011E21 04:9E11: F8        .byte $F8, $08   ; 01
- D 0 - I - 0x011E23 04:9E13: F8        .byte $F8, $00   ; 02
- D 0 - I - 0x011E25 04:9E15: F8        .byte $F8, $F8   ; 03
- D 0 - I - 0x011E27 04:9E17: F8        .byte $F8, $F0   ; 04
- D 0 - I - 0x011E29 04:9E19: 00        .byte $00, $08   ; 05
- D 0 - I - 0x011E2B 04:9E1B: 00        .byte $00, $00   ; 06
- D 0 - I - 0x011E2D 04:9E1D: 00        .byte $00, $F8   ; 07
- D 0 - I - 0x011E2F 04:9E1F: 00        .byte $00, $F0   ; 08
- D 0 - I - 0x011E31 04:9E21: F0        .byte $F0, $F8   ; 09
- D 0 - I - 0x011E33 04:9E23: F7        .byte $F7, $E8   ; 0A



_off002_9E25_72:
- D 0 - I - 0x011E35 04:9E25: F8        .byte $F8, $F9   ; 00 spr_Y, spr_X
- D 0 - I - 0x011E37 04:9E27: F8        .byte $F8, $01   ; 01
- D 0 - I - 0x011E39 04:9E29: 00        .byte $00, $F9   ; 02
- D 0 - I - 0x011E3B 04:9E2B: 00        .byte $00, $01   ; 03
- D 0 - I - 0x011E3D 04:9E2D: F8        .byte $F8, $09   ; 04
- D 0 - I - 0x011E3F 04:9E2F: 00        .byte $00, $09   ; 05
- D 0 - I - 0x011E41 04:9E31: F0        .byte $F0, $FD   ; 06
- D 0 - I - 0x011E43 04:9E33: F9        .byte $F9, $F1   ; 07
- D 0 - I - 0x011E45 04:9E35: 01        .byte $01, $F1   ; 08
- D 0 - I - 0x011E47 04:9E37: F9        .byte $F9, $11   ; 09



_off002_9E39_73:
- D 0 - I - 0x011E49 04:9E39: F8        .byte $F8, $FF   ; 00 spr_Y, spr_X
- D 0 - I - 0x011E4B 04:9E3B: F8        .byte $F8, $F7   ; 01
- D 0 - I - 0x011E4D 04:9E3D: 00        .byte $00, $FF   ; 02
- D 0 - I - 0x011E4F 04:9E3F: 00        .byte $00, $F7   ; 03
- D 0 - I - 0x011E51 04:9E41: F8        .byte $F8, $EF   ; 04
- D 0 - I - 0x011E53 04:9E43: 00        .byte $00, $EF   ; 05
- D 0 - I - 0x011E55 04:9E45: F0        .byte $F0, $FB   ; 06
- D 0 - I - 0x011E57 04:9E47: F9        .byte $F9, $07   ; 07
- D 0 - I - 0x011E59 04:9E49: 01        .byte $01, $07   ; 08
- D 0 - I - 0x011E5B 04:9E4B: F9        .byte $F9, $E7   ; 09



_off002_9E4D_74:
- D 0 - I - 0x011E5D 04:9E4D: F9        .byte $F9, $FA   ; 00 spr_Y, spr_X
- D 0 - I - 0x011E5F 04:9E4F: F9        .byte $F9, $02   ; 01
- D 0 - I - 0x011E61 04:9E51: F9        .byte $F9, $0A   ; 02
- D 0 - I - 0x011E63 04:9E53: 01        .byte $01, $FA   ; 03
- D 0 - I - 0x011E65 04:9E55: 01        .byte $01, $02   ; 04
- D 0 - I - 0x011E67 04:9E57: 01        .byte $01, $0A   ; 05
- D 0 - I - 0x011E69 04:9E59: FA        .byte $FA, $F2   ; 06
- D 0 - I - 0x011E6B 04:9E5B: 02        .byte $02, $F2   ; 07
- D 0 - I - 0x011E6D 04:9E5D: FD        .byte $FD, $12   ; 08
- D 0 - I - 0x011E6F 04:9E5F: 09        .byte $09, $01   ; 09



_off002_9E61_75:
- D 0 - I - 0x011E71 04:9E61: F9        .byte $F9, $FE   ; 00 spr_Y, spr_X
- D 0 - I - 0x011E73 04:9E63: F9        .byte $F9, $F6   ; 01
- D 0 - I - 0x011E75 04:9E65: F9        .byte $F9, $EE   ; 02
- D 0 - I - 0x011E77 04:9E67: 01        .byte $01, $FE   ; 03
- D 0 - I - 0x011E79 04:9E69: 01        .byte $01, $F6   ; 04
- D 0 - I - 0x011E7B 04:9E6B: 01        .byte $01, $EE   ; 05
- D 0 - I - 0x011E7D 04:9E6D: FA        .byte $FA, $06   ; 06
- D 0 - I - 0x011E7F 04:9E6F: 02        .byte $02, $06   ; 07
- D 0 - I - 0x011E81 04:9E71: FD        .byte $FD, $E6   ; 08
- D 0 - I - 0x011E83 04:9E73: 09        .byte $09, $F7   ; 09



_off002_9E75_76:
- D 0 - I - 0x011E85 04:9E75: F8        .byte $F8, $F4   ; 00 spr_Y, spr_X
- D 0 - I - 0x011E87 04:9E77: F8        .byte $F8, $FC   ; 01
- D 0 - I - 0x011E89 04:9E79: F8        .byte $F8, $04   ; 02
- D 0 - I - 0x011E8B 04:9E7B: 00        .byte $00, $F8   ; 03
- D 0 - I - 0x011E8D 04:9E7D: 00        .byte $00, $00   ; 04



_off002_9E7F_77:
- D 0 - I - 0x011E8F 04:9E7F: F8        .byte $F8, $04   ; 00 spr_Y, spr_X
- D 0 - I - 0x011E91 04:9E81: F8        .byte $F8, $FC   ; 01
- D 0 - I - 0x011E93 04:9E83: F8        .byte $F8, $F4   ; 02
- D 0 - I - 0x011E95 04:9E85: 00        .byte $00, $00   ; 03
- D 0 - I - 0x011E97 04:9E87: 00        .byte $00, $F8   ; 04



_off002_9E89_78:
- D 0 - I - 0x011E99 04:9E89: FD        .byte $FD, $F8   ; 00 spr_Y, spr_X
- D 0 - I - 0x011E9B 04:9E8B: FD        .byte $FD, $00   ; 01
- D 0 - I - 0x011E9D 04:9E8D: 05        .byte $05, $F8   ; 02
- D 0 - I - 0x011E9F 04:9E8F: 05        .byte $05, $00   ; 03
- D 0 - I - 0x011EA1 04:9E91: F8        .byte $F8, $F4   ; 04
- D 0 - I - 0x011EA3 04:9E93: F8        .byte $F8, $FC   ; 05
- D 0 - I - 0x011EA5 04:9E95: F8        .byte $F8, $04   ; 06



_off002_9E97_79:
- D 0 - I - 0x011EA7 04:9E97: FD        .byte $FD, $00   ; 00 spr_Y, spr_X
- D 0 - I - 0x011EA9 04:9E99: FD        .byte $FD, $F8   ; 01
- D 0 - I - 0x011EAB 04:9E9B: 05        .byte $05, $00   ; 02
- D 0 - I - 0x011EAD 04:9E9D: 05        .byte $05, $F8   ; 03
- D 0 - I - 0x011EAF 04:9E9F: F8        .byte $F8, $04   ; 04
- D 0 - I - 0x011EB1 04:9EA1: F8        .byte $F8, $FC   ; 05
- D 0 - I - 0x011EB3 04:9EA3: F8        .byte $F8, $F4   ; 06



_off002_9EA5_7A:
- D 0 - I - 0x011EB5 04:9EA5: F5        .byte $F5, $FB   ; 00 spr_Y, spr_X
- D 0 - I - 0x011EB7 04:9EA7: F5        .byte $F5, $03   ; 01
- D 0 - I - 0x011EB9 04:9EA9: FD        .byte $FD, $F3   ; 02
- D 0 - I - 0x011EBB 04:9EAB: FD        .byte $FD, $FB   ; 03
- D 0 - I - 0x011EBD 04:9EAD: FD        .byte $FD, $03   ; 04
- D 0 - I - 0x011EBF 04:9EAF: 05        .byte $05, $F3   ; 05
- D 0 - I - 0x011EC1 04:9EB1: 05        .byte $05, $FB   ; 06
- D 0 - I - 0x011EC3 04:9EB3: 05        .byte $05, $03   ; 07



_off002_9EB5_7B:
- D 0 - I - 0x011EC5 04:9EB5: F5        .byte $F5, $FD   ; 00 spr_Y, spr_X
- D 0 - I - 0x011EC7 04:9EB7: F5        .byte $F5, $F5   ; 01
- D 0 - I - 0x011EC9 04:9EB9: FD        .byte $FD, $05   ; 02
- D 0 - I - 0x011ECB 04:9EBB: FD        .byte $FD, $FD   ; 03
- D 0 - I - 0x011ECD 04:9EBD: FD        .byte $FD, $F5   ; 04
- D 0 - I - 0x011ECF 04:9EBF: 05        .byte $05, $05   ; 05
- D 0 - I - 0x011ED1 04:9EC1: 05        .byte $05, $FD   ; 06
- D 0 - I - 0x011ED3 04:9EC3: 05        .byte $05, $F5   ; 07



_off002_9EC5_7C:
- D 0 - I - 0x011ED5 04:9EC5: FC        .byte $FC, $02   ; 00 spr_Y, spr_X
- D 0 - I - 0x011ED7 04:9EC7: FC        .byte $FC, $FA   ; 01
- D 0 - I - 0x011ED9 04:9EC9: 04        .byte $04, $FD   ; 02
- D 0 - I - 0x011EDB 04:9ECB: 04        .byte $04, $F5   ; 03
- D 0 - I - 0x011EDD 04:9ECD: F4        .byte $F4, $04   ; 04
- D 0 - I - 0x011EDF 04:9ECF: F4        .byte $F4, $FC   ; 05
- D 0 - I - 0x011EE1 04:9ED1: F4        .byte $F4, $F4   ; 06
- D 0 - I - 0x011EE3 04:9ED3: FC        .byte $FC, $FC   ; 07
- D 0 - I - 0x011EE5 04:9ED5: FC        .byte $FC, $F4   ; 08
- D 0 - I - 0x011EE7 04:9ED7: 03        .byte $03, $FD   ; 09
- D 0 - I - 0x011EE9 04:9ED9: 05        .byte $05, $F5   ; 0A
- D 0 - I - 0x011EEB 04:9EDB: 09        .byte $09, $EF   ; 0B



_off002_9EDD_7D:
- D 0 - I - 0x011EED 04:9EDD: FC        .byte $FC, $F6   ; 00 spr_Y, spr_X
- D 0 - I - 0x011EEF 04:9EDF: FC        .byte $FC, $FE   ; 01
- D 0 - I - 0x011EF1 04:9EE1: 04        .byte $04, $FB   ; 02
- D 0 - I - 0x011EF3 04:9EE3: 04        .byte $04, $03   ; 03
- D 0 - I - 0x011EF5 04:9EE5: F4        .byte $F4, $F4   ; 04
- D 0 - I - 0x011EF7 04:9EE7: F4        .byte $F4, $FC   ; 05
- D 0 - I - 0x011EF9 04:9EE9: F4        .byte $F4, $04   ; 06
- D 0 - I - 0x011EFB 04:9EEB: FC        .byte $FC, $FC   ; 07
- D 0 - I - 0x011EFD 04:9EED: FC        .byte $FC, $04   ; 08
- D 0 - I - 0x011EFF 04:9EEF: 03        .byte $03, $FB   ; 09
- D 0 - I - 0x011F01 04:9EF1: 05        .byte $05, $03   ; 0A
- D 0 - I - 0x011F03 04:9EF3: 09        .byte $09, $09   ; 0B



_off002_9EF5_7E:
- D 0 - I - 0x011F05 04:9EF5: F8        .byte $F8, $E8   ; 00 spr_Y, spr_X
- D 0 - I - 0x011F07 04:9EF7: F8        .byte $F8, $F0   ; 01
- D 0 - I - 0x011F09 04:9EF9: F8        .byte $F8, $F8   ; 02
- D 0 - I - 0x011F0B 04:9EFB: F8        .byte $F8, $00   ; 03
- D 0 - I - 0x011F0D 04:9EFD: F8        .byte $F8, $08   ; 04
- D 0 - I - 0x011F0F 04:9EFF: F8        .byte $F8, $10   ; 05
- D 0 - I - 0x011F11 04:9F01: 00        .byte $00, $E8   ; 06
- D 0 - I - 0x011F13 04:9F03: 00        .byte $00, $F0   ; 07
- D 0 - I - 0x011F15 04:9F05: 00        .byte $00, $F8   ; 08
- D 0 - I - 0x011F17 04:9F07: 00        .byte $00, $00   ; 09
- D 0 - I - 0x011F19 04:9F09: 00        .byte $00, $08   ; 0A
- D 0 - I - 0x011F1B 04:9F0B: 00        .byte $00, $10   ; 0B
- D 0 - I - 0x011F1D 04:9F0D: 08        .byte $08, $F0   ; 0C
- D 0 - I - 0x011F1F 04:9F0F: 08        .byte $08, $F8   ; 0D
- D 0 - I - 0x011F21 04:9F11: 08        .byte $08, $00   ; 0E
- D 0 - I - 0x011F23 04:9F13: 08        .byte $08, $08   ; 0F
- D 0 - I - 0x011F25 04:9F15: F0        .byte $F0, $FE   ; 10
- D 0 - I - 0x011F27 04:9F17: F0        .byte $F0, $10   ; 11



_off002_9F19_7F:
- D 0 - I - 0x011F29 04:9F19: F8        .byte $F8, $10   ; 00 spr_Y, spr_X
- D 0 - I - 0x011F2B 04:9F1B: F8        .byte $F8, $08   ; 01
- D 0 - I - 0x011F2D 04:9F1D: F8        .byte $F8, $00   ; 02
- D 0 - I - 0x011F2F 04:9F1F: F8        .byte $F8, $F8   ; 03
- D 0 - I - 0x011F31 04:9F21: F8        .byte $F8, $F0   ; 04
- D 0 - I - 0x011F33 04:9F23: F8        .byte $F8, $E8   ; 05
- D 0 - I - 0x011F35 04:9F25: 00        .byte $00, $10   ; 06
- D 0 - I - 0x011F37 04:9F27: 00        .byte $00, $08   ; 07
- D 0 - I - 0x011F39 04:9F29: 00        .byte $00, $00   ; 08
- D 0 - I - 0x011F3B 04:9F2B: 00        .byte $00, $F8   ; 09
- D 0 - I - 0x011F3D 04:9F2D: 00        .byte $00, $F0   ; 0A
- D 0 - I - 0x011F3F 04:9F2F: 00        .byte $00, $E8   ; 0B
- D 0 - I - 0x011F41 04:9F31: 08        .byte $08, $08   ; 0C
- D 0 - I - 0x011F43 04:9F33: 08        .byte $08, $00   ; 0D
- D 0 - I - 0x011F45 04:9F35: 08        .byte $08, $F8   ; 0E
- D 0 - I - 0x011F47 04:9F37: 08        .byte $08, $F0   ; 0F
- D 0 - I - 0x011F49 04:9F39: F0        .byte $F0, $FA   ; 10
- D 0 - I - 0x011F4B 04:9F3B: F0        .byte $F0, $E8   ; 11



_off002_9F3D_80:
- D 0 - I - 0x011F4D 04:9F3D: F0        .byte $F0, $F6   ; 00 spr_Y, spr_X
- D 0 - I - 0x011F4F 04:9F3F: F0        .byte $F0, $FE   ; 01
- D 0 - I - 0x011F51 04:9F41: F8        .byte $F8, $EE   ; 02
- D 0 - I - 0x011F53 04:9F43: F8        .byte $F8, $F6   ; 03
- D 0 - I - 0x011F55 04:9F45: F8        .byte $F8, $FE   ; 04
- D 0 - I - 0x011F57 04:9F47: 00        .byte $00, $EE   ; 05
- D 0 - I - 0x011F59 04:9F49: 00        .byte $00, $F6   ; 06
- D 0 - I - 0x011F5B 04:9F4B: 00        .byte $00, $FE   ; 07
- D 0 - I - 0x011F5D 04:9F4D: 00        .byte $00, $06   ; 08
- D 0 - I - 0x011F5F 04:9F4F: 00        .byte $00, $0E   ; 09
- D 0 - I - 0x011F61 04:9F51: 08        .byte $08, $EE   ; 0A
- D 0 - I - 0x011F63 04:9F53: 08        .byte $08, $F6   ; 0B
- D 0 - I - 0x011F65 04:9F55: 08        .byte $08, $FE   ; 0C
- D 0 - I - 0x011F67 04:9F57: 08        .byte $08, $06   ; 0D
- D 0 - I - 0x011F69 04:9F59: 08        .byte $08, $0E   ; 0E



_off002_9F5B_81:
- D 0 - I - 0x011F6B 04:9F5B: F0        .byte $F0, $02   ; 00 spr_Y, spr_X
- D 0 - I - 0x011F6D 04:9F5D: F0        .byte $F0, $FA   ; 01
- D 0 - I - 0x011F6F 04:9F5F: F8        .byte $F8, $0A   ; 02
- D 0 - I - 0x011F71 04:9F61: F8        .byte $F8, $02   ; 03
- D 0 - I - 0x011F73 04:9F63: F8        .byte $F8, $FA   ; 04
- D 0 - I - 0x011F75 04:9F65: 00        .byte $00, $0A   ; 05
- D 0 - I - 0x011F77 04:9F67: 00        .byte $00, $02   ; 06
- D 0 - I - 0x011F79 04:9F69: 00        .byte $00, $FA   ; 07
- D 0 - I - 0x011F7B 04:9F6B: 00        .byte $00, $F2   ; 08
- D 0 - I - 0x011F7D 04:9F6D: 00        .byte $00, $EA   ; 09
- D 0 - I - 0x011F7F 04:9F6F: 08        .byte $08, $0A   ; 0A
- D 0 - I - 0x011F81 04:9F71: 08        .byte $08, $02   ; 0B
- D 0 - I - 0x011F83 04:9F73: 08        .byte $08, $FA   ; 0C
- D 0 - I - 0x011F85 04:9F75: 08        .byte $08, $F2   ; 0D
- D 0 - I - 0x011F87 04:9F77: 08        .byte $08, $EA   ; 0E



_off002_9F79_82:
- D 0 - I - 0x011F89 04:9F79: F4        .byte $F4, $F8   ; 00 spr_Y, spr_X
- D 0 - I - 0x011F8B 04:9F7B: F4        .byte $F4, $00   ; 01
- D 0 - I - 0x011F8D 04:9F7D: FC        .byte $FC, $F8   ; 02
- D 0 - I - 0x011F8F 04:9F7F: FC        .byte $FC, $00   ; 03
- D 0 - I - 0x011F91 04:9F81: 04        .byte $04, $00   ; 04



_off002_9F83_83:
- - - - - - 0x011F93 04:9F83: F4        .byte $F4, $00   ; 00 spr_Y, spr_X
- - - - - - 0x011F95 04:9F85: F4        .byte $F4, $F8   ; 01
- - - - - - 0x011F97 04:9F87: FC        .byte $FC, $00   ; 02
- - - - - - 0x011F99 04:9F89: FC        .byte $FC, $F8   ; 03
- - - - - - 0x011F9B 04:9F8B: 04        .byte $04, $F8   ; 04



_off002_9F8D_84:
_off002_9F8D_85:
_off002_9F8D_86:
- D 0 - I - 0x011F9D 04:9F8D: F8        .byte $F8, $F0   ; 00 spr_Y, spr_X
- D 0 - I - 0x011F9F 04:9F8F: F8        .byte $F8, $F8   ; 01
- D 0 - I - 0x011FA1 04:9F91: 00        .byte $00, $F0   ; 02
- D 0 - I - 0x011FA3 04:9F93: 00        .byte $00, $F8   ; 03
- D 0 - I - 0x011FA5 04:9F95: F2        .byte $F2, $00   ; 04
- D 0 - I - 0x011FA7 04:9F97: FA        .byte $FA, $00   ; 05
- D 0 - I - 0x011FA9 04:9F99: 02        .byte $02, $00   ; 06



_off002_9F9B_87:
- D 0 - I - 0x011FAB 04:9F9B: F8        .byte $F8, $08   ; 00 spr_Y, spr_X
- D 0 - I - 0x011FAD 04:9F9D: F8        .byte $F8, $00   ; 01
- D 0 - I - 0x011FAF 04:9F9F: 00        .byte $00, $08   ; 02
- D 0 - I - 0x011FB1 04:9FA1: 00        .byte $00, $00   ; 03
- D 0 - I - 0x011FB3 04:9FA3: F2        .byte $F2, $F8   ; 04
- D 0 - I - 0x011FB5 04:9FA5: FA        .byte $FA, $F8   ; 05
- D 0 - I - 0x011FB7 04:9FA7: 02        .byte $02, $F8   ; 06



_off002_9FA9_88:
- D 0 - I - 0x011FB9 04:9FA9: F3        .byte $F3, $00   ; 00 spr_Y, spr_X
- D 0 - I - 0x011FBB 04:9FAB: F3        .byte $F3, $08   ; 01
- D 0 - I - 0x011FBD 04:9FAD: FB        .byte $FB, $F0   ; 02
- D 0 - I - 0x011FBF 04:9FAF: FB        .byte $FB, $F8   ; 03
- D 0 - I - 0x011FC1 04:9FB1: FB        .byte $FB, $00   ; 04
- D 0 - I - 0x011FC3 04:9FB3: FB        .byte $FB, $08   ; 05
- D 0 - I - 0x011FC5 04:9FB5: 03        .byte $03, $F0   ; 06
- D 0 - I - 0x011FC7 04:9FB7: 03        .byte $03, $F8   ; 07
- D 0 - I - 0x011FC9 04:9FB9: 03        .byte $03, $00   ; 08
- D 0 - I - 0x011FCB 04:9FBB: 03        .byte $03, $08   ; 09



_off002_9FBD_89:
- D 0 - I - 0x011FCD 04:9FBD: F3        .byte $F3, $F8   ; 00 spr_Y, spr_X
- D 0 - I - 0x011FCF 04:9FBF: F3        .byte $F3, $F0   ; 01
- D 0 - I - 0x011FD1 04:9FC1: FB        .byte $FB, $08   ; 02
- D 0 - I - 0x011FD3 04:9FC3: FB        .byte $FB, $00   ; 03
- D 0 - I - 0x011FD5 04:9FC5: FB        .byte $FB, $F8   ; 04
- D 0 - I - 0x011FD7 04:9FC7: FB        .byte $FB, $F0   ; 05
- D 0 - I - 0x011FD9 04:9FC9: 03        .byte $03, $08   ; 06
- D 0 - I - 0x011FDB 04:9FCB: 03        .byte $03, $00   ; 07
- D 0 - I - 0x011FDD 04:9FCD: 03        .byte $03, $F8   ; 08
- D 0 - I - 0x011FDF 04:9FCF: 03        .byte $03, $F0   ; 09



_off002_9FD1_8A:
- D 0 - I - 0x011FE1 04:9FD1: FA        .byte $FA, $F0   ; 00 spr_Y, spr_X
- D 0 - I - 0x011FE3 04:9FD3: FA        .byte $FA, $F8   ; 01
- D 0 - I - 0x011FE5 04:9FD5: 02        .byte $02, $F0   ; 02
- D 0 - I - 0x011FE7 04:9FD7: 02        .byte $02, $F8   ; 03
- D 0 - I - 0x011FE9 04:9FD9: F4        .byte $F4, $00   ; 04
- D 0 - I - 0x011FEB 04:9FDB: FC        .byte $FC, $00   ; 05
- D 0 - I - 0x011FED 04:9FDD: 04        .byte $04, $00   ; 06
- D 0 - I - 0x011FEF 04:9FDF: F2        .byte $F2, $08   ; 07
- D 0 - I - 0x011FF1 04:9FE1: FA        .byte $FA, $08   ; 08
- D 0 - I - 0x011FF3 04:9FE3: 02        .byte $02, $08   ; 09



_off002_9FE5_8B:
- D 0 - I - 0x011FF5 04:9FE5: FA        .byte $FA, $08   ; 00 spr_Y, spr_X
- D 0 - I - 0x011FF7 04:9FE7: FA        .byte $FA, $00   ; 01
- D 0 - I - 0x011FF9 04:9FE9: 02        .byte $02, $08   ; 02
- D 0 - I - 0x011FFB 04:9FEB: 02        .byte $02, $00   ; 03
- D 0 - I - 0x011FFD 04:9FED: F4        .byte $F4, $F8   ; 04
- D 0 - I - 0x011FFF 04:9FEF: FC        .byte $FC, $F8   ; 05
- D 0 - I - 0x012001 04:9FF1: 04        .byte $04, $F8   ; 06
- D 0 - I - 0x012003 04:9FF3: F2        .byte $F2, $F0   ; 07
- D 0 - I - 0x012005 04:9FF5: FA        .byte $FA, $F0   ; 08
- D 0 - I - 0x012007 04:9FF7: 02        .byte $02, $F0   ; 09



_off002_9FF9_8C:
- D 0 - I - 0x012009 04:9FF9: EB        .byte $EB, $F0   ; 00 spr_Y, spr_X
- D 0 - I - 0x01200B 04:9FFB: EB        .byte $EB, $F8   ; 01
- D 0 - I - 0x01200D 04:9FFD: F3        .byte $F3, $F0   ; 02
- D 0 - I - 0x01200F 04:9FFF: F3        .byte $F3, $F8   ; 03
- D 1 - I - 0x012011 04:A001: FB        .byte $FB, $F0   ; 04
- D 1 - I - 0x012013 04:A003: FB        .byte $FB, $F8   ; 05
- D 1 - I - 0x012015 04:A005: EF        .byte $EF, $00   ; 06
- D 1 - I - 0x012017 04:A007: F7        .byte $F7, $00   ; 07
- D 1 - I - 0x012019 04:A009: FF        .byte $FF, $00   ; 08
- D 1 - I - 0x01201B 04:A00B: F3        .byte $F3, $08   ; 09
- D 1 - I - 0x01201D 04:A00D: FB        .byte $FB, $08   ; 0A
- D 1 - I - 0x01201F 04:A00F: 03        .byte $03, $08   ; 0B
- D 1 - I - 0x012021 04:A011: FA        .byte $FA, $F8   ; 0C



_off002_A013_8D:
- D 1 - I - 0x012023 04:A013: EB        .byte $EB, $08   ; 00 spr_Y, spr_X
- D 1 - I - 0x012025 04:A015: EB        .byte $EB, $00   ; 01
- D 1 - I - 0x012027 04:A017: F3        .byte $F3, $08   ; 02
- D 1 - I - 0x012029 04:A019: F3        .byte $F3, $00   ; 03
- D 1 - I - 0x01202B 04:A01B: FB        .byte $FB, $08   ; 04
- D 1 - I - 0x01202D 04:A01D: FB        .byte $FB, $00   ; 05
- D 1 - I - 0x01202F 04:A01F: EF        .byte $EF, $F8   ; 06
- D 1 - I - 0x012031 04:A021: F7        .byte $F7, $F8   ; 07
- D 1 - I - 0x012033 04:A023: FF        .byte $FF, $F8   ; 08
- D 1 - I - 0x012035 04:A025: F3        .byte $F3, $F0   ; 09
- D 1 - I - 0x012037 04:A027: FB        .byte $FB, $F0   ; 0A
- D 1 - I - 0x012039 04:A029: 03        .byte $03, $F0   ; 0B
- D 1 - I - 0x01203B 04:A02B: FA        .byte $FA, $00   ; 0C



_off002_A02D_8E:
- D 1 - I - 0x01203D 04:A02D: F0        .byte $F0, $F4   ; 00 spr_Y, spr_X
- D 1 - I - 0x01203F 04:A02F: F0        .byte $F0, $FC   ; 01
- D 1 - I - 0x012041 04:A031: F0        .byte $F0, $04   ; 02
- D 1 - I - 0x012043 04:A033: F8        .byte $F8, $E4   ; 03
- D 1 - I - 0x012045 04:A035: F8        .byte $F8, $EC   ; 04
- D 1 - I - 0x012047 04:A037: F8        .byte $F8, $F4   ; 05
- D 1 - I - 0x012049 04:A039: F8        .byte $F8, $FC   ; 06
- D 1 - I - 0x01204B 04:A03B: F8        .byte $F8, $04   ; 07
- D 1 - I - 0x01204D 04:A03D: F8        .byte $F8, $0C   ; 08
- D 1 - I - 0x01204F 04:A03F: F8        .byte $F8, $14   ; 09
- D 1 - I - 0x012051 04:A041: 00        .byte $00, $E4   ; 0A
- D 1 - I - 0x012053 04:A043: 00        .byte $00, $EC   ; 0B
- D 1 - I - 0x012055 04:A045: 00        .byte $00, $F4   ; 0C
- D 1 - I - 0x012057 04:A047: 00        .byte $00, $FC   ; 0D
- D 1 - I - 0x012059 04:A049: 00        .byte $00, $04   ; 0E
- D 1 - I - 0x01205B 04:A04B: 00        .byte $00, $0C   ; 0F
- D 1 - I - 0x01205D 04:A04D: 00        .byte $00, $14   ; 10



_off002_A04F_8F:
- D 1 - I - 0x01205F 04:A04F: F0        .byte $F0, $04   ; 00 spr_Y, spr_X
- D 1 - I - 0x012061 04:A051: F0        .byte $F0, $FC   ; 01
- D 1 - I - 0x012063 04:A053: F0        .byte $F0, $F4   ; 02
- D 1 - I - 0x012065 04:A055: F8        .byte $F8, $14   ; 03
- D 1 - I - 0x012067 04:A057: F8        .byte $F8, $0C   ; 04
- D 1 - I - 0x012069 04:A059: F8        .byte $F8, $04   ; 05
- D 1 - I - 0x01206B 04:A05B: F8        .byte $F8, $FC   ; 06
- D 1 - I - 0x01206D 04:A05D: F8        .byte $F8, $F4   ; 07
- D 1 - I - 0x01206F 04:A05F: F8        .byte $F8, $EC   ; 08
- D 1 - I - 0x012071 04:A061: F8        .byte $F8, $E4   ; 09
- D 1 - I - 0x012073 04:A063: 00        .byte $00, $14   ; 0A
- D 1 - I - 0x012075 04:A065: 00        .byte $00, $0C   ; 0B
- D 1 - I - 0x012077 04:A067: 00        .byte $00, $04   ; 0C
- D 1 - I - 0x012079 04:A069: 00        .byte $00, $FC   ; 0D
- D 1 - I - 0x01207B 04:A06B: 00        .byte $00, $F4   ; 0E
- D 1 - I - 0x01207D 04:A06D: 00        .byte $00, $EC   ; 0F
- D 1 - I - 0x01207F 04:A06F: 00        .byte $00, $E4   ; 10



_off002_A071_90:
- D 1 - I - 0x012081 04:A071: F7        .byte $F7, $E4   ; 00 spr_Y, spr_X
- D 1 - I - 0x012083 04:A073: F7        .byte $F7, $EC   ; 01
- D 1 - I - 0x012085 04:A075: FF        .byte $FF, $E4   ; 02
- D 1 - I - 0x012087 04:A077: FF        .byte $FF, $EC   ; 03
- D 1 - I - 0x012089 04:A079: F1        .byte $F1, $F4   ; 04
- D 1 - I - 0x01208B 04:A07B: F9        .byte $F9, $F4   ; 05
- D 1 - I - 0x01208D 04:A07D: 01        .byte $01, $F4   ; 06
- D 1 - I - 0x01208F 04:A07F: EF        .byte $EF, $FC   ; 07
- D 1 - I - 0x012091 04:A081: F7        .byte $F7, $FC   ; 08
- D 1 - I - 0x012093 04:A083: FF        .byte $FF, $FC   ; 09
- D 1 - I - 0x012095 04:A085: F4        .byte $F4, $04   ; 0A
- D 1 - I - 0x012097 04:A087: FC        .byte $FC, $04   ; 0B
- D 1 - I - 0x012099 04:A089: F7        .byte $F7, $0C   ; 0C
- D 1 - I - 0x01209B 04:A08B: FF        .byte $FF, $0C   ; 0D
- D 1 - I - 0x01209D 04:A08D: FB        .byte $FB, $14   ; 0E



_off002_A08F_91:
- D 1 - I - 0x01209F 04:A08F: F7        .byte $F7, $14   ; 00 spr_Y, spr_X
- D 1 - I - 0x0120A1 04:A091: F7        .byte $F7, $0C   ; 01
- D 1 - I - 0x0120A3 04:A093: FF        .byte $FF, $14   ; 02
- D 1 - I - 0x0120A5 04:A095: FF        .byte $FF, $0C   ; 03
- D 1 - I - 0x0120A7 04:A097: F1        .byte $F1, $04   ; 04
- D 1 - I - 0x0120A9 04:A099: F9        .byte $F9, $04   ; 05
- D 1 - I - 0x0120AB 04:A09B: 01        .byte $01, $04   ; 06
- D 1 - I - 0x0120AD 04:A09D: EF        .byte $EF, $FC   ; 07
- D 1 - I - 0x0120AF 04:A09F: F7        .byte $F7, $FC   ; 08
- D 1 - I - 0x0120B1 04:A0A1: FF        .byte $FF, $FC   ; 09
- D 1 - I - 0x0120B3 04:A0A3: F4        .byte $F4, $F4   ; 0A
- D 1 - I - 0x0120B5 04:A0A5: FC        .byte $FC, $F4   ; 0B
- D 1 - I - 0x0120B7 04:A0A7: F7        .byte $F7, $EC   ; 0C
- D 1 - I - 0x0120B9 04:A0A9: FF        .byte $FF, $EC   ; 0D
- D 1 - I - 0x0120BB 04:A0AB: FB        .byte $FB, $E4   ; 0E



_off002_A0AD_92:
- D 1 - I - 0x0120BD 04:A0AD: F6        .byte $F6, $E4   ; 00 spr_Y, spr_X
- D 1 - I - 0x0120BF 04:A0AF: F6        .byte $F6, $EC   ; 01
- D 1 - I - 0x0120C1 04:A0B1: FE        .byte $FE, $E4   ; 02
- D 1 - I - 0x0120C3 04:A0B3: FE        .byte $FE, $EC   ; 03
- D 1 - I - 0x0120C5 04:A0B5: F2        .byte $F2, $F4   ; 04
- D 1 - I - 0x0120C7 04:A0B7: FA        .byte $FA, $F4   ; 05
- D 1 - I - 0x0120C9 04:A0B9: 02        .byte $02, $F4   ; 06
- D 1 - I - 0x0120CB 04:A0BB: F6        .byte $F6, $FC   ; 07
- D 1 - I - 0x0120CD 04:A0BD: FE        .byte $FE, $FC   ; 08
- D 1 - I - 0x0120CF 04:A0BF: 06        .byte $06, $FC   ; 09
- D 1 - I - 0x0120D1 04:A0C1: FA        .byte $FA, $04   ; 0A
- D 1 - I - 0x0120D3 04:A0C3: 02        .byte $02, $04   ; 0B
- D 1 - I - 0x0120D5 04:A0C5: F8        .byte $F8, $0C   ; 0C
- D 1 - I - 0x0120D7 04:A0C7: F8        .byte $F8, $14   ; 0D
- D 1 - I - 0x0120D9 04:A0C9: 00        .byte $00, $0C   ; 0E
- D 1 - I - 0x0120DB 04:A0CB: 00        .byte $00, $14   ; 0F



_off002_A0CD_93:
- D 1 - I - 0x0120DD 04:A0CD: F6        .byte $F6, $14   ; 00 spr_Y, spr_X
- D 1 - I - 0x0120DF 04:A0CF: F6        .byte $F6, $0C   ; 01
- D 1 - I - 0x0120E1 04:A0D1: FE        .byte $FE, $14   ; 02
- D 1 - I - 0x0120E3 04:A0D3: FE        .byte $FE, $0C   ; 03
- D 1 - I - 0x0120E5 04:A0D5: F2        .byte $F2, $04   ; 04
- D 1 - I - 0x0120E7 04:A0D7: FA        .byte $FA, $04   ; 05
- D 1 - I - 0x0120E9 04:A0D9: 02        .byte $02, $04   ; 06
- D 1 - I - 0x0120EB 04:A0DB: F6        .byte $F6, $FC   ; 07
- D 1 - I - 0x0120ED 04:A0DD: FE        .byte $FE, $FC   ; 08
- D 1 - I - 0x0120EF 04:A0DF: 06        .byte $06, $FC   ; 09
- D 1 - I - 0x0120F1 04:A0E1: FA        .byte $FA, $F4   ; 0A
- D 1 - I - 0x0120F3 04:A0E3: 02        .byte $02, $F4   ; 0B
- D 1 - I - 0x0120F5 04:A0E5: F8        .byte $F8, $EC   ; 0C
- D 1 - I - 0x0120F7 04:A0E7: F8        .byte $F8, $E4   ; 0D
- D 1 - I - 0x0120F9 04:A0E9: 00        .byte $00, $EC   ; 0E
- D 1 - I - 0x0120FB 04:A0EB: 00        .byte $00, $E4   ; 0F



_off002_A0ED_94:
- D 1 - I - 0x0120FD 04:A0ED: F7        .byte $F7, $F4   ; 00 spr_Y, spr_X
- D 1 - I - 0x0120FF 04:A0EF: F7        .byte $F7, $04   ; 01
- D 1 - I - 0x012101 04:A0F1: 06        .byte $06, $FC   ; 02



_off002_A0F3_95:
- D 1 - I - 0x012103 04:A0F3: F4        .byte $F4, $F7   ; 00 spr_Y, spr_X
- D 1 - I - 0x012105 04:A0F5: FC        .byte $FC, $06   ; 01
- D 1 - I - 0x012107 04:A0F7: 04        .byte $04, $F7   ; 02



_off002_A0F9_96:
- D 1 - I - 0x012109 04:A0F9: F4        .byte $F4, $01   ; 00 spr_Y, spr_X
- D 1 - I - 0x01210B 04:A0FB: FC        .byte $FC, $F2   ; 01
- D 1 - I - 0x01210D 04:A0FD: 04        .byte $04, $01   ; 02



_off002_A0FF_97:
- D 1 - I - 0x01210F 04:A0FF: F2        .byte $F2, $FC   ; 00 spr_Y, spr_X
- D 1 - I - 0x012111 04:A101: 00        .byte $00, $F4   ; 01
- D 1 - I - 0x012113 04:A103: 00        .byte $00, $04   ; 02



_off002_A105_98:
- D 1 - I - 0x012115 04:A105: F4        .byte $F4, $F8   ; 00 spr_Y, spr_X
- D 1 - I - 0x012117 04:A107: F4        .byte $F4, $02   ; 01
- D 1 - I - 0x012119 04:A109: FC        .byte $FC, $00   ; 02
- D 1 - I - 0x01211B 04:A10B: 02        .byte $02, $FC   ; 03



_off002_A10D_99:
- D 1 - I - 0x01211D 04:A10D: F6        .byte $F6, $FC   ; 00 spr_Y, spr_X
- D 1 - I - 0x01211F 04:A10F: FC        .byte $FC, $FD   ; 01
- D 1 - I - 0x012121 04:A111: 02        .byte $02, $FC   ; 02



_off002_A113_9A:
- D 1 - I - 0x012123 04:A113: F4        .byte $F4, $F6   ; 00 spr_Y, spr_X
- D 1 - I - 0x012125 04:A115: F4        .byte $F4, $00   ; 01
- D 1 - I - 0x012127 04:A117: FC        .byte $FC, $F8   ; 02
- D 1 - I - 0x012129 04:A119: 02        .byte $02, $FC   ; 03



_off002_A11B_9B:
- D 1 - I - 0x01212B 04:A11B: F2        .byte $F2, $FC   ; 00 spr_Y, spr_X
- D 1 - I - 0x01212D 04:A11D: FA        .byte $FA, $FA   ; 01
- D 1 - I - 0x01212F 04:A11F: 02        .byte $02, $FD   ; 02



_off002_A121_9C:
- D 1 - I - 0x012131 04:A121: 00        .byte $00, $FA   ; 00 spr_Y, spr_X
- D 1 - I - 0x012133 04:A123: 00        .byte $00, $02   ; 01
- D 1 - I - 0x012135 04:A125: F0        .byte $F0, $F8   ; 02
- D 1 - I - 0x012137 04:A127: F0        .byte $F0, $00   ; 03
- D 1 - I - 0x012139 04:A129: F0        .byte $F0, $08   ; 04
- D 1 - I - 0x01213B 04:A12B: F8        .byte $F8, $F8   ; 05
- D 1 - I - 0x01213D 04:A12D: F8        .byte $F8, $00   ; 06
- D 1 - I - 0x01213F 04:A12F: F8        .byte $F8, $08   ; 07
- D 1 - I - 0x012141 04:A131: 03        .byte $03, $FD   ; 08
- D 1 - I - 0x012143 04:A133: 0B        .byte $0B, $04   ; 09



_off002_A135_9D:
- D 1 - I - 0x012145 04:A135: 00        .byte $00, $FE   ; 00 spr_Y, spr_X
- D 1 - I - 0x012147 04:A137: 00        .byte $00, $F6   ; 01
- D 1 - I - 0x012149 04:A139: F0        .byte $F0, $00   ; 02
- D 1 - I - 0x01214B 04:A13B: F0        .byte $F0, $F8   ; 03
- D 1 - I - 0x01214D 04:A13D: F0        .byte $F0, $F0   ; 04
- D 1 - I - 0x01214F 04:A13F: F8        .byte $F8, $00   ; 05
- D 1 - I - 0x012151 04:A141: F8        .byte $F8, $F8   ; 06
- D 1 - I - 0x012153 04:A143: F8        .byte $F8, $F0   ; 07
- D 1 - I - 0x012155 04:A145: 03        .byte $03, $FB   ; 08
- D 1 - I - 0x012157 04:A147: 0B        .byte $0B, $F4   ; 09



_off002_A149_9E:
- D 1 - I - 0x012159 04:A149: F0        .byte $F0, $F8   ; 00 spr_Y, spr_X
- D 1 - I - 0x01215B 04:A14B: F8        .byte $F8, $F0   ; 01
- D 1 - I - 0x01215D 04:A14D: F8        .byte $F8, $F8   ; 02
- D 1 - I - 0x01215F 04:A14F: F8        .byte $F8, $00   ; 03
- D 1 - I - 0x012161 04:A151: 00        .byte $00, $F8   ; 04
- D 1 - I - 0x012163 04:A153: 00        .byte $00, $00   ; 05
- D 1 - I - 0x012165 04:A155: F0        .byte $F0, $00   ; 06
- D 1 - I - 0x012167 04:A157: F8        .byte $F8, $08   ; 07
- D 1 - I - 0x012169 04:A159: 00        .byte $00, $F0   ; 08
- D 1 - I - 0x01216B 04:A15B: 00        .byte $00, $08   ; 09
- D 1 - I - 0x01216D 04:A15D: 08        .byte $08, $F8   ; 0A
- D 1 - I - 0x01216F 04:A15F: 08        .byte $08, $00   ; 0B



_off002_A161_9F:
- D 1 - I - 0x012171 04:A161: F0        .byte $F0, $00   ; 00 spr_Y, spr_X
- D 1 - I - 0x012173 04:A163: F8        .byte $F8, $08   ; 01
- D 1 - I - 0x012175 04:A165: F8        .byte $F8, $00   ; 02
- D 1 - I - 0x012177 04:A167: F8        .byte $F8, $F8   ; 03
- D 1 - I - 0x012179 04:A169: 00        .byte $00, $00   ; 04
- D 1 - I - 0x01217B 04:A16B: 00        .byte $00, $F8   ; 05
- D 1 - I - 0x01217D 04:A16D: F0        .byte $F0, $F8   ; 06
- D 1 - I - 0x01217F 04:A16F: F8        .byte $F8, $F0   ; 07
- D 1 - I - 0x012181 04:A171: 00        .byte $00, $08   ; 08
- D 1 - I - 0x012183 04:A173: 00        .byte $00, $F0   ; 09
- D 1 - I - 0x012185 04:A175: 08        .byte $08, $00   ; 0A
- D 1 - I - 0x012187 04:A177: 08        .byte $08, $F8   ; 0B



_off002_A179_A0:
- D 1 - I - 0x012189 04:A179: EF        .byte $EF, $F8   ; 00 spr_Y, spr_X
- D 1 - I - 0x01218B 04:A17B: EF        .byte $EF, $00   ; 01
- D 1 - I - 0x01218D 04:A17D: F7        .byte $F7, $F0   ; 02
- D 1 - I - 0x01218F 04:A17F: F7        .byte $F7, $F8   ; 03
- D 1 - I - 0x012191 04:A181: F7        .byte $F7, $00   ; 04
- D 1 - I - 0x012193 04:A183: F7        .byte $F7, $08   ; 05
- D 1 - I - 0x012195 04:A185: FF        .byte $FF, $F0   ; 06
- D 1 - I - 0x012197 04:A187: FF        .byte $FF, $F8   ; 07
- D 1 - I - 0x012199 04:A189: FF        .byte $FF, $00   ; 08
- D 1 - I - 0x01219B 04:A18B: FF        .byte $FF, $08   ; 09
- D 1 - I - 0x01219D 04:A18D: 07        .byte $07, $F8   ; 0A
- D 1 - I - 0x01219F 04:A18F: 07        .byte $07, $00   ; 0B



_off002_A191_A1:
- D 1 - I - 0x0121A1 04:A191: EF        .byte $EF, $00   ; 00 spr_Y, spr_X
- D 1 - I - 0x0121A3 04:A193: EF        .byte $EF, $F8   ; 01
- D 1 - I - 0x0121A5 04:A195: F7        .byte $F7, $08   ; 02
- D 1 - I - 0x0121A7 04:A197: F7        .byte $F7, $00   ; 03
- D 1 - I - 0x0121A9 04:A199: F7        .byte $F7, $F8   ; 04
- D 1 - I - 0x0121AB 04:A19B: F7        .byte $F7, $F0   ; 05
- D 1 - I - 0x0121AD 04:A19D: FF        .byte $FF, $08   ; 06
- D 1 - I - 0x0121AF 04:A19F: FF        .byte $FF, $00   ; 07
- D 1 - I - 0x0121B1 04:A1A1: FF        .byte $FF, $F8   ; 08
- D 1 - I - 0x0121B3 04:A1A3: FF        .byte $FF, $F0   ; 09
- D 1 - I - 0x0121B5 04:A1A5: 07        .byte $07, $00   ; 0A
- D 1 - I - 0x0121B7 04:A1A7: 07        .byte $07, $F8   ; 0B



_off002_A1A9_A2:
- D 1 - I - 0x0121B9 04:A1A9: E0        .byte $E0, $F8   ; 00 spr_Y, spr_X
- D 1 - I - 0x0121BB 04:A1AB: E0        .byte $E0, $00   ; 01
- D 1 - I - 0x0121BD 04:A1AD: E8        .byte $E8, $FC   ; 02
- D 1 - I - 0x0121BF 04:A1AF: F0        .byte $F0, $FC   ; 03
- D 1 - I - 0x0121C1 04:A1B1: F8        .byte $F8, $FC   ; 04
- D 1 - I - 0x0121C3 04:A1B3: 00        .byte $00, $FC   ; 05
- D 1 - I - 0x0121C5 04:A1B5: 08        .byte $08, $FB   ; 06
- D 1 - I - 0x0121C7 04:A1B7: 10        .byte $10, $F8   ; 07
- D 1 - I - 0x0121C9 04:A1B9: 10        .byte $10, $00   ; 08
- D 1 - I - 0x0121CB 04:A1BB: 18        .byte $18, $F8   ; 09
- D 1 - I - 0x0121CD 04:A1BD: 18        .byte $18, $00   ; 0A



_off002_A1BF_A3:
- D 1 - I - 0x0121CF 04:A1BF: E0        .byte $E0, $F8   ; 00 spr_Y, spr_X
- D 1 - I - 0x0121D1 04:A1C1: E0        .byte $E0, $00   ; 01
- D 1 - I - 0x0121D3 04:A1C3: E8        .byte $E8, $FD   ; 02
- D 1 - I - 0x0121D5 04:A1C5: F0        .byte $F0, $FF   ; 03
- D 1 - I - 0x0121D7 04:A1C7: F8        .byte $F8, $FF   ; 04
- D 1 - I - 0x0121D9 04:A1C9: 00        .byte $00, $FD   ; 05
- D 1 - I - 0x0121DB 04:A1CB: 08        .byte $08, $F8   ; 06
- D 1 - I - 0x0121DD 04:A1CD: 08        .byte $08, $00   ; 07
- D 1 - I - 0x0121DF 04:A1CF: 08        .byte $08, $08   ; 08
- D 1 - I - 0x0121E1 04:A1D1: 10        .byte $10, $F8   ; 09
- D 1 - I - 0x0121E3 04:A1D3: 10        .byte $10, $00   ; 0A
- D 1 - I - 0x0121E5 04:A1D5: 10        .byte $10, $08   ; 0B



_off002_A1D7_A4:
- D 1 - I - 0x0121E7 04:A1D7: EA        .byte $EA, $F4   ; 00 spr_Y, spr_X
- D 1 - I - 0x0121E9 04:A1D9: EA        .byte $EA, $FC   ; 01
- D 1 - I - 0x0121EB 04:A1DB: EA        .byte $EA, $04   ; 02
- D 1 - I - 0x0121ED 04:A1DD: F2        .byte $F2, $F4   ; 03
- D 1 - I - 0x0121EF 04:A1DF: F2        .byte $F2, $FC   ; 04
- D 1 - I - 0x0121F1 04:A1E1: F2        .byte $F2, $04   ; 05
- D 1 - I - 0x0121F3 04:A1E3: FA        .byte $FA, $EC   ; 06
- D 1 - I - 0x0121F5 04:A1E5: FA        .byte $FA, $F4   ; 07
- D 1 - I - 0x0121F7 04:A1E7: FA        .byte $FA, $FC   ; 08
- D 1 - I - 0x0121F9 04:A1E9: FA        .byte $FA, $04   ; 09
- D 1 - I - 0x0121FB 04:A1EB: 02        .byte $02, $F6   ; 0A
- D 1 - I - 0x0121FD 04:A1ED: 02        .byte $02, $FE   ; 0B
- D 1 - I - 0x0121FF 04:A1EF: 0A        .byte $0A, $F6   ; 0C
- D 1 - I - 0x012201 04:A1F1: 0A        .byte $0A, $FE   ; 0D



_off002_A1F3_A5:
- D 1 - I - 0x012203 04:A1F3: EA        .byte $EA, $04   ; 00 spr_Y, spr_X
- D 1 - I - 0x012205 04:A1F5: EA        .byte $EA, $FC   ; 01
- D 1 - I - 0x012207 04:A1F7: EA        .byte $EA, $F4   ; 02
- D 1 - I - 0x012209 04:A1F9: F2        .byte $F2, $04   ; 03
- D 1 - I - 0x01220B 04:A1FB: F2        .byte $F2, $FC   ; 04
- D 1 - I - 0x01220D 04:A1FD: F2        .byte $F2, $F4   ; 05
- D 1 - I - 0x01220F 04:A1FF: FA        .byte $FA, $0C   ; 06
- D 1 - I - 0x012211 04:A201: FA        .byte $FA, $04   ; 07
- D 1 - I - 0x012213 04:A203: FA        .byte $FA, $FC   ; 08
- D 1 - I - 0x012215 04:A205: FA        .byte $FA, $F4   ; 09
- D 1 - I - 0x012217 04:A207: 02        .byte $02, $02   ; 0A
- D 1 - I - 0x012219 04:A209: 02        .byte $02, $FA   ; 0B
- D 1 - I - 0x01221B 04:A20B: 0A        .byte $0A, $02   ; 0C
- D 1 - I - 0x01221D 04:A20D: 0A        .byte $0A, $FA   ; 0D



_off002_A20F_A6:
- D 1 - I - 0x01221F 04:A20F: F1        .byte $F1, $F9   ; 00 spr_Y, spr_X
- D 1 - I - 0x012221 04:A211: F9        .byte $F9, $F1   ; 01
- D 1 - I - 0x012223 04:A213: F9        .byte $F9, $F9   ; 02
- D 1 - I - 0x012225 04:A215: F9        .byte $F9, $01   ; 03
- D 1 - I - 0x012227 04:A217: 01        .byte $01, $F9   ; 04
- D 1 - I - 0x012229 04:A219: 01        .byte $01, $01   ; 05



_off002_A21B_A7:
- D 1 - I - 0x01222B 04:A21B: E8        .byte $E8, $F8   ; 00 spr_Y, spr_X
- D 1 - I - 0x01222D 04:A21D: E8        .byte $E8, $00   ; 01
- D 1 - I - 0x01222F 04:A21F: F0        .byte $F0, $F8   ; 02
- D 1 - I - 0x012231 04:A221: F0        .byte $F0, $00   ; 03
- D 1 - I - 0x012233 04:A223: F8        .byte $F8, $F0   ; 04
- D 1 - I - 0x012235 04:A225: F8        .byte $F8, $F8   ; 05
- D 1 - I - 0x012237 04:A227: F8        .byte $F8, $00   ; 06
- D 1 - I - 0x012239 04:A229: F8        .byte $F8, $08   ; 07
- D 1 - I - 0x01223B 04:A22B: 00        .byte $00, $F0   ; 08
- D 1 - I - 0x01223D 04:A22D: 00        .byte $00, $F8   ; 09
- D 1 - I - 0x01223F 04:A22F: 00        .byte $00, $00   ; 0A
- D 1 - I - 0x012241 04:A231: 00        .byte $00, $08   ; 0B
- D 1 - I - 0x012243 04:A233: 08        .byte $08, $E0   ; 0C
- D 1 - I - 0x012245 04:A235: 08        .byte $08, $E8   ; 0D
- D 1 - I - 0x012247 04:A237: 08        .byte $08, $F8   ; 0E
- D 1 - I - 0x012249 04:A239: 08        .byte $08, $00   ; 0F
- D 1 - I - 0x01224B 04:A23B: 08        .byte $08, $10   ; 10
- D 1 - I - 0x01224D 04:A23D: 08        .byte $08, $18   ; 11
- D 1 - I - 0x01224F 04:A23F: 10        .byte $10, $E0   ; 12
- D 1 - I - 0x012251 04:A241: 10        .byte $10, $E8   ; 13
- D 1 - I - 0x012253 04:A243: 10        .byte $10, $10   ; 14
- D 1 - I - 0x012255 04:A245: 10        .byte $10, $18   ; 15
- D 1 - I - 0x012257 04:A247: F5        .byte $F5, $F8   ; 16
- D 1 - I - 0x012259 04:A249: F5        .byte $F5, $00   ; 17
- D 1 - I - 0x01225B 04:A24B: FD        .byte $FD, $F8   ; 18
- D 1 - I - 0x01225D 04:A24D: FD        .byte $FD, $00   ; 19



_off002_A24F_A8:
- D 1 - I - 0x01225F 04:A24F: F8        .byte $F8, $F8   ; 00 spr_Y, spr_X
- D 1 - I - 0x012261 04:A251: 00        .byte $00, $F8   ; 01
- D 1 - I - 0x012263 04:A253: 00        .byte $00, $00   ; 02
- D 1 - I - 0x012265 04:A255: F0        .byte $F0, $00   ; 03
- D 1 - I - 0x012267 04:A257: F8        .byte $F8, $00   ; 04
- D 1 - I - 0x012269 04:A259: F8        .byte $F8, $08   ; 05



_off002_A25B_A9:
- D 1 - I - 0x01226B 04:A25B: F8        .byte $F8, $00   ; 00 spr_Y, spr_X
- D 1 - I - 0x01226D 04:A25D: 00        .byte $00, $00   ; 01
- D 1 - I - 0x01226F 04:A25F: 00        .byte $00, $F8   ; 02
- D 1 - I - 0x012271 04:A261: F0        .byte $F0, $F8   ; 03
- D 1 - I - 0x012273 04:A263: F8        .byte $F8, $F8   ; 04
- D 1 - I - 0x012275 04:A265: F8        .byte $F8, $F0   ; 05



_off002_A267_AA:
- D 1 - I - 0x012277 04:A267: F8        .byte $F8, $F8   ; 00 spr_Y, spr_X
- D 1 - I - 0x012279 04:A269: F8        .byte $F8, $00   ; 01
- D 1 - I - 0x01227B 04:A26B: 00        .byte $00, $F8   ; 02
- D 1 - I - 0x01227D 04:A26D: 00        .byte $00, $00   ; 03
- D 1 - I - 0x01227F 04:A26F: 08        .byte $08, $F8   ; 04
- D 1 - I - 0x012281 04:A271: 08        .byte $08, $00   ; 05



_off002_A273_AB:
- D 1 - I - 0x012283 04:A273: D8        .byte $D8, $FC   ; 00 spr_Y, spr_X
- D 1 - I - 0x012285 04:A275: E0        .byte $E0, $FC   ; 01
- D 1 - I - 0x012287 04:A277: E8        .byte $E8, $FC   ; 02
- D 1 - I - 0x012289 04:A279: F0        .byte $F0, $FC   ; 03
- D 1 - I - 0x01228B 04:A27B: F8        .byte $F8, $FC   ; 04
- D 1 - I - 0x01228D 04:A27D: 08        .byte $08, $FC   ; 05
- D 1 - I - 0x01228F 04:A27F: 10        .byte $10, $FC   ; 06
- D 1 - I - 0x012291 04:A281: 18        .byte $18, $FC   ; 07
- D 1 - I - 0x012293 04:A283: 20        .byte $20, $FC   ; 08



_off002_A285_AC:
- D 1 - I - 0x012295 04:A285: F7        .byte $F7, $FA   ; 00 spr_Y, spr_X
- D 1 - I - 0x012297 04:A287: F7        .byte $F7, $02   ; 01
- D 1 - I - 0x012299 04:A289: F7        .byte $F7, $0A   ; 02
- D 1 - I - 0x01229B 04:A28B: FF        .byte $FF, $FA   ; 03
- D 1 - I - 0x01229D 04:A28D: FF        .byte $FF, $02   ; 04
- D 1 - I - 0x01229F 04:A28F: FF        .byte $FF, $0A   ; 05
- D 1 - I - 0x0122A1 04:A291: EF        .byte $EF, $01   ; 06
- D 1 - I - 0x0122A3 04:A293: F6        .byte $F6, $F2   ; 07
- D 1 - I - 0x0122A5 04:A295: FE        .byte $FE, $F2   ; 08
- D 1 - I - 0x0122A7 04:A297: FB        .byte $FB, $12   ; 09



_off002_A299_AD:
- D 1 - I - 0x0122A9 04:A299: F7        .byte $F7, $FE   ; 00 spr_Y, spr_X
- D 1 - I - 0x0122AB 04:A29B: F7        .byte $F7, $F6   ; 01
- D 1 - I - 0x0122AD 04:A29D: F7        .byte $F7, $EE   ; 02
- D 1 - I - 0x0122AF 04:A29F: FF        .byte $FF, $FE   ; 03
- D 1 - I - 0x0122B1 04:A2A1: FF        .byte $FF, $F6   ; 04
- D 1 - I - 0x0122B3 04:A2A3: FF        .byte $FF, $EE   ; 05
- D 1 - I - 0x0122B5 04:A2A5: EF        .byte $EF, $F7   ; 06
- D 1 - I - 0x0122B7 04:A2A7: F6        .byte $F6, $06   ; 07
- D 1 - I - 0x0122B9 04:A2A9: FE        .byte $FE, $06   ; 08
- D 1 - I - 0x0122BB 04:A2AB: FB        .byte $FB, $E6   ; 09



_off002_A2AD_AE:
- D 1 - I - 0x0122BD 04:A2AD: F4        .byte $F4, $F4   ; 00 spr_Y, spr_X
- D 1 - I - 0x0122BF 04:A2AF: F4        .byte $F4, $FC   ; 01
- D 1 - I - 0x0122C1 04:A2B1: F4        .byte $F4, $04   ; 02
- D 1 - I - 0x0122C3 04:A2B3: FC        .byte $FC, $F4   ; 03
- D 1 - I - 0x0122C5 04:A2B5: FC        .byte $FC, $FC   ; 04
- D 1 - I - 0x0122C7 04:A2B7: FC        .byte $FC, $04   ; 05
- D 1 - I - 0x0122C9 04:A2B9: 04        .byte $04, $EE   ; 06
- D 1 - I - 0x0122CB 04:A2BB: 04        .byte $04, $F6   ; 07
- D 1 - I - 0x0122CD 04:A2BD: 04        .byte $04, $FE   ; 08
- D 1 - I - 0x0122CF 04:A2BF: 04        .byte $04, $06   ; 09



_off002_A2C1_AF:
- D 1 - I - 0x0122D1 04:A2C1: F4        .byte $F4, $04   ; 00 spr_Y, spr_X
- D 1 - I - 0x0122D3 04:A2C3: F4        .byte $F4, $FC   ; 01
- D 1 - I - 0x0122D5 04:A2C5: F4        .byte $F4, $F4   ; 02
- D 1 - I - 0x0122D7 04:A2C7: FC        .byte $FC, $04   ; 03
- D 1 - I - 0x0122D9 04:A2C9: FC        .byte $FC, $FC   ; 04
- D 1 - I - 0x0122DB 04:A2CB: FC        .byte $FC, $F4   ; 05
- D 1 - I - 0x0122DD 04:A2CD: 04        .byte $04, $0A   ; 06
- D 1 - I - 0x0122DF 04:A2CF: 04        .byte $04, $02   ; 07
- D 1 - I - 0x0122E1 04:A2D1: 04        .byte $04, $FA   ; 08
- D 1 - I - 0x0122E3 04:A2D3: 04        .byte $04, $F2   ; 09



_off002_A2D5_B0:
- D 1 - I - 0x0122E5 04:A2D5: F4        .byte $F4, $EE   ; 00 spr_Y, spr_X
- D 1 - I - 0x0122E7 04:A2D7: F4        .byte $F4, $F6   ; 01
- D 1 - I - 0x0122E9 04:A2D9: F4        .byte $F4, $FE   ; 02
- D 1 - I - 0x0122EB 04:A2DB: F4        .byte $F4, $06   ; 03
- D 1 - I - 0x0122ED 04:A2DD: FC        .byte $FC, $F4   ; 04
- D 1 - I - 0x0122EF 04:A2DF: FC        .byte $FC, $FC   ; 05
- D 1 - I - 0x0122F1 04:A2E1: FC        .byte $FC, $04   ; 06
- D 1 - I - 0x0122F3 04:A2E3: 04        .byte $04, $F4   ; 07
- D 1 - I - 0x0122F5 04:A2E5: 04        .byte $04, $FC   ; 08
- D 1 - I - 0x0122F7 04:A2E7: 04        .byte $04, $04   ; 09



_off002_A2E9_B1:
- D 1 - I - 0x0122F9 04:A2E9: F4        .byte $F4, $0A   ; 00 spr_Y, spr_X
- D 1 - I - 0x0122FB 04:A2EB: F4        .byte $F4, $02   ; 01
- D 1 - I - 0x0122FD 04:A2ED: F4        .byte $F4, $FA   ; 02
- D 1 - I - 0x0122FF 04:A2EF: F4        .byte $F4, $F2   ; 03
- D 1 - I - 0x012301 04:A2F1: FC        .byte $FC, $04   ; 04
- D 1 - I - 0x012303 04:A2F3: FC        .byte $FC, $FC   ; 05
- D 1 - I - 0x012305 04:A2F5: FC        .byte $FC, $F4   ; 06
- D 1 - I - 0x012307 04:A2F7: 04        .byte $04, $04   ; 07
- D 1 - I - 0x012309 04:A2F9: 04        .byte $04, $FC   ; 08
- D 1 - I - 0x01230B 04:A2FB: 04        .byte $04, $F4   ; 09



_off002_A2FD_B2:
- D 1 - I - 0x01230D 04:A2FD: F0        .byte $F0, $F9   ; 00 spr_Y, spr_X
- D 1 - I - 0x01230F 04:A2FF: F8        .byte $F8, $F9   ; 01



_off002_A301_B3:
- - - - - - 0x012311 04:A301: F0        .byte $F0, $FF   ; 00 spr_Y, spr_X
- - - - - - 0x012313 04:A303: F8        .byte $F8, $FF   ; 01



_off002_A305_B4:
- D 1 - I - 0x012315 04:A305: F0        .byte $F0, $FC   ; 00 spr_Y, spr_X
- D 1 - I - 0x012317 04:A307: F8        .byte $F8, $FC   ; 01



_off002_A309_B5:
- - - - - - 0x012319 04:A309: F0        .byte $F0, $FC   ; 00 spr_Y, spr_X
- - - - - - 0x01231B 04:A30B: F8        .byte $F8, $FC   ; 01



_off002_A30D_B6:
- D 1 - I - 0x01231D 04:A30D: F4        .byte $F4, $F4   ; 00 spr_Y, spr_X
- D 1 - I - 0x01231F 04:A30F: F4        .byte $F4, $04   ; 01
- D 1 - I - 0x012321 04:A311: 04        .byte $04, $F4   ; 02
- D 1 - I - 0x012323 04:A313: 04        .byte $04, $04   ; 03



_off002_A315_B7:
- D 1 - I - 0x012325 04:A315: F4        .byte $F4, $04   ; 00 spr_Y, spr_X
- D 1 - I - 0x012327 04:A317: F4        .byte $F4, $F4   ; 01
- D 1 - I - 0x012329 04:A319: 04        .byte $04, $04   ; 02
- D 1 - I - 0x01232B 04:A31B: 04        .byte $04, $F4   ; 03



tbl_A31D_lo:
- D 1 - - - 0x01232D 04:A31D: B1        .byte < _off002_94B1_00   ; 
- D 1 - - - 0x01232E 04:A31E: C9        .byte < _off002_94C9_01   ; 
- D 1 - - - 0x01232F 04:A31F: E1        .byte < _off002_94E1_02   ; 
- D 1 - - - 0x012330 04:A320: F9        .byte < _off002_94F9_03   ; 
- D 1 - - - 0x012331 04:A321: 11        .byte < _off002_9511_04   ; 
- D 1 - - - 0x012332 04:A322: 29        .byte < _off002_9529_05   ; 
- D 1 - - - 0x012333 04:A323: 41        .byte < _off002_9541_06   ; 
- D 1 - - - 0x012334 04:A324: 55        .byte < _off002_9555_07   ; 
- D 1 - - - 0x012335 04:A325: 69        .byte < _off002_9569_08   ; 
- D 1 - - - 0x012336 04:A326: 7D        .byte < _off002_957D_09   ; 
- D 1 - - - 0x012337 04:A327: 91        .byte < _off002_9591_0A   ; 
- D 1 - - - 0x012338 04:A328: A7        .byte < _off002_95A7_0B   ; 
- D 1 - - - 0x012339 04:A329: BD        .byte < _off002_95BD_0C   ; 
- D 1 - - - 0x01233A 04:A32A: D3        .byte < _off002_95D3_0D   ; 
- D 1 - - - 0x01233B 04:A32B: E9        .byte < _off002_95E9_0E   ; 
- D 1 - - - 0x01233C 04:A32C: 01        .byte < _off002_9601_0F   ; 
- - - - - - 0x01233D 04:A32D: 19        .byte < _off002_9619_10   ; 
- - - - - - 0x01233E 04:A32E: 31        .byte < _off002_9631_11   ; 
- - - - - - 0x01233F 04:A32F: 49        .byte < _off002_9649_12   ; 
- - - - - - 0x012340 04:A330: 61        .byte < _off002_9661_13   ; 
- D 1 - - - 0x012341 04:A331: 79        .byte < _off002_9679_14   ; 
- D 1 - - - 0x012342 04:A332: 8D        .byte < _off002_968D_15   ; 
- D 1 - - - 0x012343 04:A333: 8F        .byte < _off002_968F_16   ; 
- D 1 - - - 0x012344 04:A334: A7        .byte < _off002_96A7_17   ; 
- D 1 - - - 0x012345 04:A335: BF        .byte < _off002_96BF_18   ; 
- D 1 - - - 0x012346 04:A336: D7        .byte < _off002_96D7_19   ; 
- D 1 - - - 0x012347 04:A337: EF        .byte < _off002_96EF_1A   ; 
- D 1 - - - 0x012348 04:A338: 03        .byte < _off002_9703_1B   ; 
- D 1 - - - 0x012349 04:A339: 17        .byte < _off002_9717_1C   ; 
- D 1 - - - 0x01234A 04:A33A: 2D        .byte < _off002_972D_1D   ; 
- D 1 - - - 0x01234B 04:A33B: 43        .byte < _off002_9743_1E   ; 
- D 1 - - - 0x01234C 04:A33C: 5D        .byte < _off002_975D_1F   ; 
- D 1 - - - 0x01234D 04:A33D: 77        .byte < _off002_9777_20   ; 
- D 1 - - - 0x01234E 04:A33E: 8F        .byte < _off002_978F_21   ; 
- D 1 - - - 0x01234F 04:A33F: A7        .byte < _off002_97A7_22   ; 
- D 1 - - - 0x012350 04:A340: BF        .byte < _off002_97BF_23   ; 
- D 1 - - - 0x012351 04:A341: D7        .byte < _off002_97D7_24   ; 
- D 1 - - - 0x012352 04:A342: EF        .byte < _off002_97EF_25   ; 
- D 1 - - - 0x012353 04:A343: 07        .byte < _off002_9807_26   ; 
- D 1 - - - 0x012354 04:A344: 27        .byte < _off002_9827_27   ; 
- D 1 - - - 0x012355 04:A345: 47        .byte < _off002_9847_28   ; 
- D 1 - - - 0x012356 04:A346: 69        .byte < _off002_9869_29   ; 
- D 1 - - - 0x012357 04:A347: 8B        .byte < _off002_988B_2A   ; 
- D 1 - - - 0x012358 04:A348: 9D        .byte < _off002_989D_2B   ; 
- - - - - - 0x012359 04:A349: AF        .byte < _off002_98AF_2C   ; 
- - - - - - 0x01235A 04:A34A: BF        .byte < _off002_98BF_2D   ; 
- - - - - - 0x01235B 04:A34B: BF        .byte < _off002_98BF_2E   ; 
- - - - - - 0x01235C 04:A34C: CF        .byte < _off002_98CF_2F   ; 
- - - - - - 0x01235D 04:A34D: DF        .byte < _off002_98DF_30   ; 
- - - - - - 0x01235E 04:A34E: F9        .byte < _off002_98F9_31   ; 
- D 1 - - - 0x01235F 04:A34F: 13        .byte < _off002_9913_32   ; 
- D 1 - - - 0x012360 04:A350: 2B        .byte < _off002_992B_33   ; 
- D 1 - - - 0x012361 04:A351: 43        .byte < _off002_9943_34   ; 
- D 1 - - - 0x012362 04:A352: 5B        .byte < _off002_995B_35   ; 
- D 1 - - - 0x012363 04:A353: 73        .byte < _off002_9973_36   ; 
- D 1 - - - 0x012364 04:A354: 8B        .byte < _off002_998B_37   ; 
- D 1 - - - 0x012365 04:A355: A3        .byte < _off002_99A3_38   ; 
- D 1 - - - 0x012366 04:A356: BB        .byte < _off002_99BB_39   ; 
- D 1 - - - 0x012367 04:A357: D3        .byte < _off002_99D3_3A   ; 
- D 1 - - - 0x012368 04:A358: EB        .byte < _off002_99EB_3B   ; 
- D 1 - - - 0x012369 04:A359: 03        .byte < _off002_9A03_3C   ; 
- D 1 - - - 0x01236A 04:A35A: 13        .byte < _off002_9A13_3D   ; 
- D 1 - - - 0x01236B 04:A35B: 23        .byte < _off002_9A23_3E   ; 
- D 1 - - - 0x01236C 04:A35C: 39        .byte < _off002_9A39_3F   ; 
- D 1 - - - 0x01236D 04:A35D: 4F        .byte < _off002_9A4F_40   ; 
- D 1 - - - 0x01236E 04:A35E: 71        .byte < _off002_9A71_41   ; 
- D 1 - - - 0x01236F 04:A35F: 93        .byte < _off002_9A93_42   ; 
- D 1 - - - 0x012370 04:A360: 9B        .byte < _off002_9A9B_43   ; 
- D 1 - - - 0x012371 04:A361: A3        .byte < _off002_9AA3_44   ; 
- D 1 - - - 0x012372 04:A362: CB        .byte < _off002_9ACB_45   ; 
- D 1 - - - 0x012373 04:A363: F3        .byte < _off002_9AF3_46   ; 
- D 1 - - - 0x012374 04:A364: 09        .byte < _off002_9B09_47   ; 
- D 1 - - - 0x012375 04:A365: 21        .byte < _off002_9B21_48   ; 
- D 1 - - - 0x012376 04:A366: 2B        .byte < _off002_9B2B_49   ; 
- D 1 - - - 0x012377 04:A367: 35        .byte < _off002_9B35_4A   ; 
- D 1 - - - 0x012378 04:A368: 3D        .byte < _off002_9B3D_4B   ; 
- D 1 - - - 0x012379 04:A369: 45        .byte < _off002_9B45_4C   ; 
- D 1 - - - 0x01237A 04:A36A: 4F        .byte < _off002_9B4F_4D   ; 
- D 1 - - - 0x01237B 04:A36B: 59        .byte < _off002_9B59_4E   ; 
- D 1 - - - 0x01237C 04:A36C: 67        .byte < _off002_9B67_4F   ; 
- D 1 - - - 0x01237D 04:A36D: 75        .byte < _off002_9B75_50   ; 
- D 1 - - - 0x01237E 04:A36E: 81        .byte < _off002_9B81_51   ; 
- D 1 - - - 0x01237F 04:A36F: 8D        .byte < _off002_9B8D_52   ; 
- D 1 - - - 0x012380 04:A370: 9D        .byte < _off002_9B9D_53   ; 
- D 1 - - - 0x012381 04:A371: AD        .byte < _off002_9BAD_54   ; 
- D 1 - - - 0x012382 04:A372: BF        .byte < _off002_9BBF_55   ; 
- D 1 - - - 0x012383 04:A373: D1        .byte < _off002_9BD1_56   ; 
- D 1 - - - 0x012384 04:A374: E1        .byte < _off002_9BE1_57   ; 
- D 1 - - - 0x012385 04:A375: F1        .byte < _off002_9BF1_58   ; 
- D 1 - - - 0x012386 04:A376: 0B        .byte < _off002_9C0B_59   ; 
- D 1 - - - 0x012387 04:A377: 2D        .byte < _off002_9C2D_5A   ; 
- D 1 - - - 0x012388 04:A378: 49        .byte < _off002_9C49_5B   ; 
- D 1 - - - 0x012389 04:A379: 65        .byte < _off002_9C65_5C   ; 
- D 1 - - - 0x01238A 04:A37A: 6B        .byte < _off002_9C6B_5D   ; 
- D 1 - - - 0x01238B 04:A37B: 71        .byte < _off002_9C71_5E   ; 
- D 1 - - - 0x01238C 04:A37C: 89        .byte < _off002_9C89_5F   ; 
- D 1 - - - 0x01238D 04:A37D: A1        .byte < _off002_9CA1_60   ; 
- D 1 - - - 0x01238E 04:A37E: B9        .byte < _off002_9CB9_61   ; 
- D 1 - - - 0x01238F 04:A37F: CF        .byte < _off002_9CCF_62   ; 
- D 1 - - - 0x012390 04:A380: E9        .byte < _off002_9CE9_63   ; 
- D 1 - - - 0x012391 04:A381: F5        .byte < _off002_9CF5_64   ; 
- D 1 - - - 0x012392 04:A382: 1D        .byte < _off002_9D1D_65   ; 
- D 1 - - - 0x012393 04:A383: 29        .byte < _off002_9D29_66   ; 
- D 1 - - - 0x012394 04:A384: 3B        .byte < _off002_9D3B_67   ; 
- D 1 - - - 0x012395 04:A385: 4D        .byte < _off002_9D4D_68   ; 
- D 1 - - - 0x012396 04:A386: 63        .byte < _off002_9D63_69   ; 
- D 1 - - - 0x012397 04:A387: 79        .byte < _off002_9D79_6A   ; 
- D 1 - - - 0x012398 04:A388: 8F        .byte < _off002_9D8F_6B   ; 
- D 1 - - - 0x012399 04:A389: A1        .byte < _off002_9DA1_6C   ; 
- D 1 - - - 0x01239A 04:A38A: B3        .byte < _off002_9DB3_6D   ; 
- D 1 - - - 0x01239B 04:A38B: C5        .byte < _off002_9DC5_6E   ; 
- D 1 - - - 0x01239C 04:A38C: DF        .byte < _off002_9DDF_6F   ; 
- D 1 - - - 0x01239D 04:A38D: F9        .byte < _off002_9DF9_70   ; 
- D 1 - - - 0x01239E 04:A38E: 0F        .byte < _off002_9E0F_71   ; 
- D 1 - - - 0x01239F 04:A38F: 25        .byte < _off002_9E25_72   ; 
- D 1 - - - 0x0123A0 04:A390: 39        .byte < _off002_9E39_73   ; 
- D 1 - - - 0x0123A1 04:A391: 4D        .byte < _off002_9E4D_74   ; 
- D 1 - - - 0x0123A2 04:A392: 61        .byte < _off002_9E61_75   ; 
- D 1 - - - 0x0123A3 04:A393: 75        .byte < _off002_9E75_76   ; 
- D 1 - - - 0x0123A4 04:A394: 7F        .byte < _off002_9E7F_77   ; 
- D 1 - - - 0x0123A5 04:A395: 89        .byte < _off002_9E89_78   ; 
- D 1 - - - 0x0123A6 04:A396: 97        .byte < _off002_9E97_79   ; 
- D 1 - - - 0x0123A7 04:A397: A5        .byte < _off002_9EA5_7A   ; 
- D 1 - - - 0x0123A8 04:A398: B5        .byte < _off002_9EB5_7B   ; 
- D 1 - - - 0x0123A9 04:A399: C5        .byte < _off002_9EC5_7C   ; 
- D 1 - - - 0x0123AA 04:A39A: DD        .byte < _off002_9EDD_7D   ; 
- D 1 - - - 0x0123AB 04:A39B: F5        .byte < _off002_9EF5_7E   ; 
- D 1 - - - 0x0123AC 04:A39C: 19        .byte < _off002_9F19_7F   ; 
- D 1 - - - 0x0123AD 04:A39D: 3D        .byte < _off002_9F3D_80   ; 
- D 1 - - - 0x0123AE 04:A39E: 5B        .byte < _off002_9F5B_81   ; 
- D 1 - - - 0x0123AF 04:A39F: 79        .byte < _off002_9F79_82   ; 
- - - - - - 0x0123B0 04:A3A0: 83        .byte < _off002_9F83_83   ; 
- - - - - - 0x0123B1 04:A3A1: 8D        .byte < _off002_9F8D_84   ; 
- - - - - - 0x0123B2 04:A3A2: 8D        .byte < _off002_9F8D_85   ; 
- D 1 - - - 0x0123B3 04:A3A3: 8D        .byte < _off002_9F8D_86   ; 
- D 1 - - - 0x0123B4 04:A3A4: 9B        .byte < _off002_9F9B_87   ; 
- D 1 - - - 0x0123B5 04:A3A5: A9        .byte < _off002_9FA9_88   ; 
- D 1 - - - 0x0123B6 04:A3A6: BD        .byte < _off002_9FBD_89   ; 
- D 1 - - - 0x0123B7 04:A3A7: D1        .byte < _off002_9FD1_8A   ; 
- D 1 - - - 0x0123B8 04:A3A8: E5        .byte < _off002_9FE5_8B   ; 
- D 1 - - - 0x0123B9 04:A3A9: F9        .byte < _off002_9FF9_8C   ; 
- D 1 - - - 0x0123BA 04:A3AA: 13        .byte < _off002_A013_8D   ; 
- D 1 - - - 0x0123BB 04:A3AB: 2D        .byte < _off002_A02D_8E   ; 
- D 1 - - - 0x0123BC 04:A3AC: 4F        .byte < _off002_A04F_8F   ; 
- D 1 - - - 0x0123BD 04:A3AD: 71        .byte < _off002_A071_90   ; 
- D 1 - - - 0x0123BE 04:A3AE: 8F        .byte < _off002_A08F_91   ; 
- D 1 - - - 0x0123BF 04:A3AF: AD        .byte < _off002_A0AD_92   ; 
- D 1 - - - 0x0123C0 04:A3B0: CD        .byte < _off002_A0CD_93   ; 
- D 1 - - - 0x0123C1 04:A3B1: ED        .byte < _off002_A0ED_94   ; 
- D 1 - - - 0x0123C2 04:A3B2: F3        .byte < _off002_A0F3_95   ; 
- D 1 - - - 0x0123C3 04:A3B3: F9        .byte < _off002_A0F9_96   ; 
- D 1 - - - 0x0123C4 04:A3B4: FF        .byte < _off002_A0FF_97   ; 
- D 1 - - - 0x0123C5 04:A3B5: 05        .byte < _off002_A105_98   ; 
- D 1 - - - 0x0123C6 04:A3B6: 0D        .byte < _off002_A10D_99   ; 
- D 1 - - - 0x0123C7 04:A3B7: 13        .byte < _off002_A113_9A   ; 
- D 1 - - - 0x0123C8 04:A3B8: 1B        .byte < _off002_A11B_9B   ; 
- D 1 - - - 0x0123C9 04:A3B9: 21        .byte < _off002_A121_9C   ; 
- D 1 - - - 0x0123CA 04:A3BA: 35        .byte < _off002_A135_9D   ; 
- D 1 - - - 0x0123CB 04:A3BB: 49        .byte < _off002_A149_9E   ; 
- D 1 - - - 0x0123CC 04:A3BC: 61        .byte < _off002_A161_9F   ; 
- D 1 - - - 0x0123CD 04:A3BD: 79        .byte < _off002_A179_A0   ; 
- D 1 - - - 0x0123CE 04:A3BE: 91        .byte < _off002_A191_A1   ; 
- D 1 - - - 0x0123CF 04:A3BF: A9        .byte < _off002_A1A9_A2   ; 
- D 1 - - - 0x0123D0 04:A3C0: BF        .byte < _off002_A1BF_A3   ; 
- D 1 - - - 0x0123D1 04:A3C1: D7        .byte < _off002_A1D7_A4   ; 
- D 1 - - - 0x0123D2 04:A3C2: F3        .byte < _off002_A1F3_A5   ; 
- D 1 - - - 0x0123D3 04:A3C3: 0F        .byte < _off002_A20F_A6   ; 
- D 1 - - - 0x0123D4 04:A3C4: 1B        .byte < _off002_A21B_A7   ; 
- D 1 - - - 0x0123D5 04:A3C5: 4F        .byte < _off002_A24F_A8   ; 
- D 1 - - - 0x0123D6 04:A3C6: 5B        .byte < _off002_A25B_A9   ; 
- D 1 - - - 0x0123D7 04:A3C7: 67        .byte < _off002_A267_AA   ; 
- D 1 - - - 0x0123D8 04:A3C8: 73        .byte < _off002_A273_AB   ; 
- D 1 - - - 0x0123D9 04:A3C9: 85        .byte < _off002_A285_AC   ; 
- D 1 - - - 0x0123DA 04:A3CA: 99        .byte < _off002_A299_AD   ; 
- D 1 - - - 0x0123DB 04:A3CB: AD        .byte < _off002_A2AD_AE   ; 
- D 1 - - - 0x0123DC 04:A3CC: C1        .byte < _off002_A2C1_AF   ; 
- D 1 - - - 0x0123DD 04:A3CD: D5        .byte < _off002_A2D5_B0   ; 
- D 1 - - - 0x0123DE 04:A3CE: E9        .byte < _off002_A2E9_B1   ; 
- D 1 - - - 0x0123DF 04:A3CF: FD        .byte < _off002_A2FD_B2   ; 
- - - - - - 0x0123E0 04:A3D0: 01        .byte < _off002_A301_B3   ; 
- D 1 - - - 0x0123E1 04:A3D1: 05        .byte < _off002_A305_B4   ; 
- - - - - - 0x0123E2 04:A3D2: 09        .byte < _off002_A309_B5   ; 
- D 1 - - - 0x0123E3 04:A3D3: 0D        .byte < _off002_A30D_B6   ; 
- D 1 - - - 0x0123E4 04:A3D4: 15        .byte < _off002_A315_B7   ; 



tbl_A3D5_hi:
- D 1 - - - 0x0123E5 04:A3D5: 94        .byte > _off002_94B1_00   ; 
- D 1 - - - 0x0123E6 04:A3D6: 94        .byte > _off002_94C9_01   ; 
- D 1 - - - 0x0123E7 04:A3D7: 94        .byte > _off002_94E1_02   ; 
- D 1 - - - 0x0123E8 04:A3D8: 94        .byte > _off002_94F9_03   ; 
- D 1 - - - 0x0123E9 04:A3D9: 95        .byte > _off002_9511_04   ; 
- D 1 - - - 0x0123EA 04:A3DA: 95        .byte > _off002_9529_05   ; 
- D 1 - - - 0x0123EB 04:A3DB: 95        .byte > _off002_9541_06   ; 
- D 1 - - - 0x0123EC 04:A3DC: 95        .byte > _off002_9555_07   ; 
- D 1 - - - 0x0123ED 04:A3DD: 95        .byte > _off002_9569_08   ; 
- D 1 - - - 0x0123EE 04:A3DE: 95        .byte > _off002_957D_09   ; 
- D 1 - - - 0x0123EF 04:A3DF: 95        .byte > _off002_9591_0A   ; 
- D 1 - - - 0x0123F0 04:A3E0: 95        .byte > _off002_95A7_0B   ; 
- D 1 - - - 0x0123F1 04:A3E1: 95        .byte > _off002_95BD_0C   ; 
- D 1 - - - 0x0123F2 04:A3E2: 95        .byte > _off002_95D3_0D   ; 
- D 1 - - - 0x0123F3 04:A3E3: 95        .byte > _off002_95E9_0E   ; 
- D 1 - - - 0x0123F4 04:A3E4: 96        .byte > _off002_9601_0F   ; 
- - - - - - 0x0123F5 04:A3E5: 96        .byte > _off002_9619_10   ; 
- - - - - - 0x0123F6 04:A3E6: 96        .byte > _off002_9631_11   ; 
- - - - - - 0x0123F7 04:A3E7: 96        .byte > _off002_9649_12   ; 
- - - - - - 0x0123F8 04:A3E8: 96        .byte > _off002_9661_13   ; 
- D 1 - - - 0x0123F9 04:A3E9: 96        .byte > _off002_9679_14   ; 
- D 1 - - - 0x0123FA 04:A3EA: 96        .byte > _off002_968D_15   ; 
- D 1 - - - 0x0123FB 04:A3EB: 96        .byte > _off002_968F_16   ; 
- D 1 - - - 0x0123FC 04:A3EC: 96        .byte > _off002_96A7_17   ; 
- D 1 - - - 0x0123FD 04:A3ED: 96        .byte > _off002_96BF_18   ; 
- D 1 - - - 0x0123FE 04:A3EE: 96        .byte > _off002_96D7_19   ; 
- D 1 - - - 0x0123FF 04:A3EF: 96        .byte > _off002_96EF_1A   ; 
- D 1 - - - 0x012400 04:A3F0: 97        .byte > _off002_9703_1B   ; 
- D 1 - - - 0x012401 04:A3F1: 97        .byte > _off002_9717_1C   ; 
- D 1 - - - 0x012402 04:A3F2: 97        .byte > _off002_972D_1D   ; 
- D 1 - - - 0x012403 04:A3F3: 97        .byte > _off002_9743_1E   ; 
- D 1 - - - 0x012404 04:A3F4: 97        .byte > _off002_975D_1F   ; 
- D 1 - - - 0x012405 04:A3F5: 97        .byte > _off002_9777_20   ; 
- D 1 - - - 0x012406 04:A3F6: 97        .byte > _off002_978F_21   ; 
- D 1 - - - 0x012407 04:A3F7: 97        .byte > _off002_97A7_22   ; 
- D 1 - - - 0x012408 04:A3F8: 97        .byte > _off002_97BF_23   ; 
- D 1 - - - 0x012409 04:A3F9: 97        .byte > _off002_97D7_24   ; 
- D 1 - - - 0x01240A 04:A3FA: 97        .byte > _off002_97EF_25   ; 
- D 1 - - - 0x01240B 04:A3FB: 98        .byte > _off002_9807_26   ; 
- D 1 - - - 0x01240C 04:A3FC: 98        .byte > _off002_9827_27   ; 
- D 1 - - - 0x01240D 04:A3FD: 98        .byte > _off002_9847_28   ; 
- D 1 - - - 0x01240E 04:A3FE: 98        .byte > _off002_9869_29   ; 
- D 1 - - - 0x01240F 04:A3FF: 98        .byte > _off002_988B_2A   ; 
- D 1 - - - 0x012410 04:A400: 98        .byte > _off002_989D_2B   ; 
- - - - - - 0x012411 04:A401: 98        .byte > _off002_98AF_2C   ; 
- - - - - - 0x012412 04:A402: 98        .byte > _off002_98BF_2D   ; 
- - - - - - 0x012413 04:A403: 98        .byte > _off002_98BF_2E   ; 
- - - - - - 0x012414 04:A404: 98        .byte > _off002_98CF_2F   ; 
- - - - - - 0x012415 04:A405: 98        .byte > _off002_98DF_30   ; 
- - - - - - 0x012416 04:A406: 98        .byte > _off002_98F9_31   ; 
- D 1 - - - 0x012417 04:A407: 99        .byte > _off002_9913_32   ; 
- D 1 - - - 0x012418 04:A408: 99        .byte > _off002_992B_33   ; 
- D 1 - - - 0x012419 04:A409: 99        .byte > _off002_9943_34   ; 
- D 1 - - - 0x01241A 04:A40A: 99        .byte > _off002_995B_35   ; 
- D 1 - - - 0x01241B 04:A40B: 99        .byte > _off002_9973_36   ; 
- D 1 - - - 0x01241C 04:A40C: 99        .byte > _off002_998B_37   ; 
- D 1 - - - 0x01241D 04:A40D: 99        .byte > _off002_99A3_38   ; 
- D 1 - - - 0x01241E 04:A40E: 99        .byte > _off002_99BB_39   ; 
- D 1 - - - 0x01241F 04:A40F: 99        .byte > _off002_99D3_3A   ; 
- D 1 - - - 0x012420 04:A410: 99        .byte > _off002_99EB_3B   ; 
- D 1 - - - 0x012421 04:A411: 9A        .byte > _off002_9A03_3C   ; 
- D 1 - - - 0x012422 04:A412: 9A        .byte > _off002_9A13_3D   ; 
- D 1 - - - 0x012423 04:A413: 9A        .byte > _off002_9A23_3E   ; 
- D 1 - - - 0x012424 04:A414: 9A        .byte > _off002_9A39_3F   ; 
- D 1 - - - 0x012425 04:A415: 9A        .byte > _off002_9A4F_40   ; 
- D 1 - - - 0x012426 04:A416: 9A        .byte > _off002_9A71_41   ; 
- D 1 - - - 0x012427 04:A417: 9A        .byte > _off002_9A93_42   ; 
- D 1 - - - 0x012428 04:A418: 9A        .byte > _off002_9A9B_43   ; 
- D 1 - - - 0x012429 04:A419: 9A        .byte > _off002_9AA3_44   ; 
- D 1 - - - 0x01242A 04:A41A: 9A        .byte > _off002_9ACB_45   ; 
- D 1 - - - 0x01242B 04:A41B: 9A        .byte > _off002_9AF3_46   ; 
- D 1 - - - 0x01242C 04:A41C: 9B        .byte > _off002_9B09_47   ; 
- D 1 - - - 0x01242D 04:A41D: 9B        .byte > _off002_9B21_48   ; 
- D 1 - - - 0x01242E 04:A41E: 9B        .byte > _off002_9B2B_49   ; 
- D 1 - - - 0x01242F 04:A41F: 9B        .byte > _off002_9B35_4A   ; 
- D 1 - - - 0x012430 04:A420: 9B        .byte > _off002_9B3D_4B   ; 
- D 1 - - - 0x012431 04:A421: 9B        .byte > _off002_9B45_4C   ; 
- D 1 - - - 0x012432 04:A422: 9B        .byte > _off002_9B4F_4D   ; 
- D 1 - - - 0x012433 04:A423: 9B        .byte > _off002_9B59_4E   ; 
- D 1 - - - 0x012434 04:A424: 9B        .byte > _off002_9B67_4F   ; 
- D 1 - - - 0x012435 04:A425: 9B        .byte > _off002_9B75_50   ; 
- D 1 - - - 0x012436 04:A426: 9B        .byte > _off002_9B81_51   ; 
- D 1 - - - 0x012437 04:A427: 9B        .byte > _off002_9B8D_52   ; 
- D 1 - - - 0x012438 04:A428: 9B        .byte > _off002_9B9D_53   ; 
- D 1 - - - 0x012439 04:A429: 9B        .byte > _off002_9BAD_54   ; 
- D 1 - - - 0x01243A 04:A42A: 9B        .byte > _off002_9BBF_55   ; 
- D 1 - - - 0x01243B 04:A42B: 9B        .byte > _off002_9BD1_56   ; 
- D 1 - - - 0x01243C 04:A42C: 9B        .byte > _off002_9BE1_57   ; 
- D 1 - - - 0x01243D 04:A42D: 9B        .byte > _off002_9BF1_58   ; 
- D 1 - - - 0x01243E 04:A42E: 9C        .byte > _off002_9C0B_59   ; 
- D 1 - - - 0x01243F 04:A42F: 9C        .byte > _off002_9C2D_5A   ; 
- D 1 - - - 0x012440 04:A430: 9C        .byte > _off002_9C49_5B   ; 
- D 1 - - - 0x012441 04:A431: 9C        .byte > _off002_9C65_5C   ; 
- D 1 - - - 0x012442 04:A432: 9C        .byte > _off002_9C6B_5D   ; 
- D 1 - - - 0x012443 04:A433: 9C        .byte > _off002_9C71_5E   ; 
- D 1 - - - 0x012444 04:A434: 9C        .byte > _off002_9C89_5F   ; 
- D 1 - - - 0x012445 04:A435: 9C        .byte > _off002_9CA1_60   ; 
- D 1 - - - 0x012446 04:A436: 9C        .byte > _off002_9CB9_61   ; 
- D 1 - - - 0x012447 04:A437: 9C        .byte > _off002_9CCF_62   ; 
- D 1 - - - 0x012448 04:A438: 9C        .byte > _off002_9CE9_63   ; 
- D 1 - - - 0x012449 04:A439: 9C        .byte > _off002_9CF5_64   ; 
- D 1 - - - 0x01244A 04:A43A: 9D        .byte > _off002_9D1D_65   ; 
- D 1 - - - 0x01244B 04:A43B: 9D        .byte > _off002_9D29_66   ; 
- D 1 - - - 0x01244C 04:A43C: 9D        .byte > _off002_9D3B_67   ; 
- D 1 - - - 0x01244D 04:A43D: 9D        .byte > _off002_9D4D_68   ; 
- D 1 - - - 0x01244E 04:A43E: 9D        .byte > _off002_9D63_69   ; 
- D 1 - - - 0x01244F 04:A43F: 9D        .byte > _off002_9D79_6A   ; 
- D 1 - - - 0x012450 04:A440: 9D        .byte > _off002_9D8F_6B   ; 
- D 1 - - - 0x012451 04:A441: 9D        .byte > _off002_9DA1_6C   ; 
- D 1 - - - 0x012452 04:A442: 9D        .byte > _off002_9DB3_6D   ; 
- D 1 - - - 0x012453 04:A443: 9D        .byte > _off002_9DC5_6E   ; 
- D 1 - - - 0x012454 04:A444: 9D        .byte > _off002_9DDF_6F   ; 
- D 1 - - - 0x012455 04:A445: 9D        .byte > _off002_9DF9_70   ; 
- D 1 - - - 0x012456 04:A446: 9E        .byte > _off002_9E0F_71   ; 
- D 1 - - - 0x012457 04:A447: 9E        .byte > _off002_9E25_72   ; 
- D 1 - - - 0x012458 04:A448: 9E        .byte > _off002_9E39_73   ; 
- D 1 - - - 0x012459 04:A449: 9E        .byte > _off002_9E4D_74   ; 
- D 1 - - - 0x01245A 04:A44A: 9E        .byte > _off002_9E61_75   ; 
- D 1 - - - 0x01245B 04:A44B: 9E        .byte > _off002_9E75_76   ; 
- D 1 - - - 0x01245C 04:A44C: 9E        .byte > _off002_9E7F_77   ; 
- D 1 - - - 0x01245D 04:A44D: 9E        .byte > _off002_9E89_78   ; 
- D 1 - - - 0x01245E 04:A44E: 9E        .byte > _off002_9E97_79   ; 
- D 1 - - - 0x01245F 04:A44F: 9E        .byte > _off002_9EA5_7A   ; 
- D 1 - - - 0x012460 04:A450: 9E        .byte > _off002_9EB5_7B   ; 
- D 1 - - - 0x012461 04:A451: 9E        .byte > _off002_9EC5_7C   ; 
- D 1 - - - 0x012462 04:A452: 9E        .byte > _off002_9EDD_7D   ; 
- D 1 - - - 0x012463 04:A453: 9E        .byte > _off002_9EF5_7E   ; 
- D 1 - - - 0x012464 04:A454: 9F        .byte > _off002_9F19_7F   ; 
- D 1 - - - 0x012465 04:A455: 9F        .byte > _off002_9F3D_80   ; 
- D 1 - - - 0x012466 04:A456: 9F        .byte > _off002_9F5B_81   ; 
- D 1 - - - 0x012467 04:A457: 9F        .byte > _off002_9F79_82   ; 
- - - - - - 0x012468 04:A458: 9F        .byte > _off002_9F83_83   ; 
- - - - - - 0x012469 04:A459: 9F        .byte > _off002_9F8D_84   ; 
- - - - - - 0x01246A 04:A45A: 9F        .byte > _off002_9F8D_85   ; 
- D 1 - - - 0x01246B 04:A45B: 9F        .byte > _off002_9F8D_86   ; 
- D 1 - - - 0x01246C 04:A45C: 9F        .byte > _off002_9F9B_87   ; 
- D 1 - - - 0x01246D 04:A45D: 9F        .byte > _off002_9FA9_88   ; 
- D 1 - - - 0x01246E 04:A45E: 9F        .byte > _off002_9FBD_89   ; 
- D 1 - - - 0x01246F 04:A45F: 9F        .byte > _off002_9FD1_8A   ; 
- D 1 - - - 0x012470 04:A460: 9F        .byte > _off002_9FE5_8B   ; 
- D 1 - - - 0x012471 04:A461: 9F        .byte > _off002_9FF9_8C   ; 
- D 1 - - - 0x012472 04:A462: A0        .byte > _off002_A013_8D   ; 
- D 1 - - - 0x012473 04:A463: A0        .byte > _off002_A02D_8E   ; 
- D 1 - - - 0x012474 04:A464: A0        .byte > _off002_A04F_8F   ; 
- D 1 - - - 0x012475 04:A465: A0        .byte > _off002_A071_90   ; 
- D 1 - - - 0x012476 04:A466: A0        .byte > _off002_A08F_91   ; 
- D 1 - - - 0x012477 04:A467: A0        .byte > _off002_A0AD_92   ; 
- D 1 - - - 0x012478 04:A468: A0        .byte > _off002_A0CD_93   ; 
- D 1 - - - 0x012479 04:A469: A0        .byte > _off002_A0ED_94   ; 
- D 1 - - - 0x01247A 04:A46A: A0        .byte > _off002_A0F3_95   ; 
- D 1 - - - 0x01247B 04:A46B: A0        .byte > _off002_A0F9_96   ; 
- D 1 - - - 0x01247C 04:A46C: A0        .byte > _off002_A0FF_97   ; 
- D 1 - - - 0x01247D 04:A46D: A1        .byte > _off002_A105_98   ; 
- D 1 - - - 0x01247E 04:A46E: A1        .byte > _off002_A10D_99   ; 
- D 1 - - - 0x01247F 04:A46F: A1        .byte > _off002_A113_9A   ; 
- D 1 - - - 0x012480 04:A470: A1        .byte > _off002_A11B_9B   ; 
- D 1 - - - 0x012481 04:A471: A1        .byte > _off002_A121_9C   ; 
- D 1 - - - 0x012482 04:A472: A1        .byte > _off002_A135_9D   ; 
- D 1 - - - 0x012483 04:A473: A1        .byte > _off002_A149_9E   ; 
- D 1 - - - 0x012484 04:A474: A1        .byte > _off002_A161_9F   ; 
- D 1 - - - 0x012485 04:A475: A1        .byte > _off002_A179_A0   ; 
- D 1 - - - 0x012486 04:A476: A1        .byte > _off002_A191_A1   ; 
- D 1 - - - 0x012487 04:A477: A1        .byte > _off002_A1A9_A2   ; 
- D 1 - - - 0x012488 04:A478: A1        .byte > _off002_A1BF_A3   ; 
- D 1 - - - 0x012489 04:A479: A1        .byte > _off002_A1D7_A4   ; 
- D 1 - - - 0x01248A 04:A47A: A1        .byte > _off002_A1F3_A5   ; 
- D 1 - - - 0x01248B 04:A47B: A2        .byte > _off002_A20F_A6   ; 
- D 1 - - - 0x01248C 04:A47C: A2        .byte > _off002_A21B_A7   ; 
- D 1 - - - 0x01248D 04:A47D: A2        .byte > _off002_A24F_A8   ; 
- D 1 - - - 0x01248E 04:A47E: A2        .byte > _off002_A25B_A9   ; 
- D 1 - - - 0x01248F 04:A47F: A2        .byte > _off002_A267_AA   ; 
- D 1 - - - 0x012490 04:A480: A2        .byte > _off002_A273_AB   ; 
- D 1 - - - 0x012491 04:A481: A2        .byte > _off002_A285_AC   ; 
- D 1 - - - 0x012492 04:A482: A2        .byte > _off002_A299_AD   ; 
- D 1 - - - 0x012493 04:A483: A2        .byte > _off002_A2AD_AE   ; 
- D 1 - - - 0x012494 04:A484: A2        .byte > _off002_A2C1_AF   ; 
- D 1 - - - 0x012495 04:A485: A2        .byte > _off002_A2D5_B0   ; 
- D 1 - - - 0x012496 04:A486: A2        .byte > _off002_A2E9_B1   ; 
- D 1 - - - 0x012497 04:A487: A2        .byte > _off002_A2FD_B2   ; 
- - - - - - 0x012498 04:A488: A3        .byte > _off002_A301_B3   ; 
- D 1 - - - 0x012499 04:A489: A3        .byte > _off002_A305_B4   ; 
- - - - - - 0x01249A 04:A48A: A3        .byte > _off002_A309_B5   ; 
- D 1 - - - 0x01249B 04:A48B: A3        .byte > _off002_A30D_B6   ; 
- D 1 - - - 0x01249C 04:A48C: A3        .byte > _off002_A315_B7   ; 



_off004_A48D_01:
_off004_A48D_02:
@start:
- D 1 - I - 0x01249D 04:A48D: 03        .byte @end - @start - $03   ; 
- D 1 - I - 0x01249E 04:A48E: 08        .byte $08   ; ??? 001
- D 1 - I - 0x01249F 04:A48F: 01        .byte $01   ; 00 
- D 1 - I - 0x0124A0 04:A490: 02        .byte $02   ; 01 
- D 1 - I - 0x0124A1 04:A491: 03        .byte $03   ; 02 
- D 1 - I - 0x0124A2 04:A492: 02        .byte $02   ; 03 
@end:



_off004_A493_03:
@start:
- D 1 - I - 0x0124A3 04:A493: 03        .byte @end - @start - $03   ; 
- D 1 - I - 0x0124A4 04:A494: 12        .byte $12   ; ??? 001
- D 1 - I - 0x0124A5 04:A495: 04        .byte $04   ; 00 
- D 1 - I - 0x0124A6 04:A496: 05        .byte $05   ; 01 
- D 1 - I - 0x0124A7 04:A497: 06        .byte $06   ; 02 
- D 1 - I - 0x0124A8 04:A498: 05        .byte $05   ; 03 
@end:



_off004_A499_04:
@start:
- D 1 - I - 0x0124A9 04:A499: 02        .byte @end - @start - $03   ; 
- D 1 - I - 0x0124AA 04:A49A: 0A        .byte $0A   ; ??? 001
- D 1 - I - 0x0124AB 04:A49B: 07        .byte $07   ; 00 
- D 1 - I - 0x0124AC 04:A49C: 08        .byte $08   ; 01 
- D 1 - I - 0x0124AD 04:A49D: 30        .byte $30   ; 02 
@end:



_off004_A49E_09:
@start:
- D 1 - I - 0x0124AE 04:A49E: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0124AF 04:A49F: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0124B0 04:A4A0: 4F        .byte $4F   ; 00 
@end:



_off004_A4A1_0A:
@start:
- D 1 - I - 0x0124B1 04:A4A1: 05        .byte @end - @start - $03   ; 
- D 1 - I - 0x0124B2 04:A4A2: 04        .byte $04   ; ??? 001
- D 1 - I - 0x0124B3 04:A4A3: B7        .byte $B7   ; 00 
- D 1 - I - 0x0124B4 04:A4A4: 11        .byte $11   ; 01 
- D 1 - I - 0x0124B5 04:A4A5: 12        .byte $12   ; 02 
- D 1 - I - 0x0124B6 04:A4A6: 11        .byte $11   ; 03 
- D 1 - I - 0x0124B7 04:A4A7: B7        .byte $B7   ; 04 
- D 1 - I - 0x0124B8 04:A4A8: B7        .byte $B7   ; 05 
@end:



_off004_A4A9_0B:
@start:
- D 1 - I - 0x0124B9 04:A4A9: 03        .byte @end - @start - $03   ; 
- D 1 - I - 0x0124BA 04:A4AA: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0124BB 04:A4AB: 4C        .byte $4C   ; 00 
- D 1 - I - 0x0124BC 04:A4AC: 4D        .byte $4D   ; 01 
- D 1 - I - 0x0124BD 04:A4AD: 4E        .byte $4E   ; 02 
- D 1 - I - 0x0124BE 04:A4AE: 4D        .byte $4D   ; 03 
@end:



_off004_A4AF_0C:
@start:
- D 1 - I - 0x0124BF 04:A4AF: 03        .byte @end - @start - $03   ; 
- D 1 - I - 0x0124C0 04:A4B0: 03        .byte $03   ; ??? 001
- D 1 - I - 0x0124C1 04:A4B1: 48        .byte $48   ; 00 
- D 1 - I - 0x0124C2 04:A4B2: 49        .byte $49   ; 01 
- D 1 - I - 0x0124C3 04:A4B3: 4A        .byte $4A   ; 02 
- D 1 - I - 0x0124C4 04:A4B4: 49        .byte $49   ; 03 
@end:



_off004_A4B5_05:
_off004_A4B5_0D:
@start:
- D 1 - I - 0x0124C5 04:A4B5: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x0124C6 04:A4B6: 07        .byte $07   ; ??? 001
- D 1 - I - 0x0124C7 04:A4B7: 09        .byte $09   ; 00 
- D 1 - I - 0x0124C8 04:A4B8: 09        .byte $09   ; 01 
@end:



_off004_A4B9_06:
_off004_A4B9_0E:
@start:
- D 1 - I - 0x0124C9 04:A4B9: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x0124CA 04:A4BA: 06        .byte $06   ; ??? 001
- D 1 - I - 0x0124CB 04:A4BB: 0D        .byte $0D   ; 00 
- D 1 - I - 0x0124CC 04:A4BC: 0E        .byte $0E   ; 01 
@end:



_off004_A4BD_07:
_off004_A4BD_0F:
@start:
- D 1 - I - 0x0124CD 04:A4BD: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0124CE 04:A4BE: 06        .byte $06   ; ??? 001
- D 1 - I - 0x0124CF 04:A4BF: 07        .byte $07   ; 00 
@end:



_off004_A4C0_08:
_off004_A4C0_10:
@start:
- D 1 - I - 0x0124D0 04:A4C0: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x0124D1 04:A4C1: 06        .byte $06   ; ??? 001
- D 1 - I - 0x0124D2 04:A4C2: 0F        .byte $0F   ; 00 
- D 1 - I - 0x0124D3 04:A4C3: 10        .byte $10   ; 01 
@end:



_off004_A4C4_11:
@start:
- D 1 - I - 0x0124D4 04:A4C4: 06        .byte @end - @start - $03   ; 
- D 1 - I - 0x0124D5 04:A4C5: 03        .byte $03   ; ??? 001
- D 1 - I - 0x0124D6 04:A4C6: 26        .byte $26   ; 00 
- D 1 - I - 0x0124D7 04:A4C7: 27        .byte $27   ; 01 
- D 1 - I - 0x0124D8 04:A4C8: 28        .byte $28   ; 02 
- D 1 - I - 0x0124D9 04:A4C9: 28        .byte $28   ; 03 
- D 1 - I - 0x0124DA 04:A4CA: 29        .byte $29   ; 04 
- D 1 - I - 0x0124DB 04:A4CB: 29        .byte $29   ; 05 
- D 1 - I - 0x0124DC 04:A4CC: 00        .byte $00   ; 06 
@end:



_off004_A4CD_12:
@start:
- D 1 - I - 0x0124DD 04:A4CD: 06        .byte @end - @start - $03   ; 
- D 1 - I - 0x0124DE 04:A4CE: 03        .byte $03   ; ??? 001
- D 1 - I - 0x0124DF 04:A4CF: 22        .byte $22   ; 00 
- D 1 - I - 0x0124E0 04:A4D0: 23        .byte $23   ; 01 
- D 1 - I - 0x0124E1 04:A4D1: 24        .byte $24   ; 02 
- D 1 - I - 0x0124E2 04:A4D2: 24        .byte $24   ; 03 
- - - - - - 0x0124E3 04:A4D3: 25        .byte $25   ; 04 
- - - - - - 0x0124E4 04:A4D4: 25        .byte $25   ; 05 
- - - - - - 0x0124E5 04:A4D5: 00        .byte $00   ; 06 
@end:



_off004_A4D6_13:
@start:
- D 1 - I - 0x0124E6 04:A4D6: 02        .byte @end - @start - $03   ; 
- D 1 - I - 0x0124E7 04:A4D7: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0124E8 04:A4D8: 19        .byte $19   ; 00 
- D 1 - I - 0x0124E9 04:A4D9: 1A        .byte $1A   ; 01 
- D 1 - I - 0x0124EA 04:A4DA: 1B        .byte $1B   ; 02 
@end:



_off004_A4DB_14:
@start:
- D 1 - I - 0x0124EB 04:A4DB: 06        .byte @end - @start - $03   ; 
- D 1 - I - 0x0124EC 04:A4DC: 06        .byte $06   ; ??? 001
- D 1 - I - 0x0124ED 04:A4DD: 15        .byte $15   ; 00 
- D 1 - I - 0x0124EE 04:A4DE: 15        .byte $15   ; 01 
- D 1 - I - 0x0124EF 04:A4DF: 16        .byte $16   ; 02 
- D 1 - I - 0x0124F0 04:A4E0: 16        .byte $16   ; 03 
- D 1 - I - 0x0124F1 04:A4E1: 17        .byte $17   ; 04 
- D 1 - I - 0x0124F2 04:A4E2: 18        .byte $18   ; 05 
- D 1 - I - 0x0124F3 04:A4E3: 00        .byte $00   ; 06 
@end:



_off004_A4E4_15:
@start:
- D 1 - I - 0x0124F4 04:A4E4: 04        .byte @end - @start - $03   ; 
- D 1 - I - 0x0124F5 04:A4E5: 06        .byte $06   ; ??? 001
- D 1 - I - 0x0124F6 04:A4E6: 1E        .byte $1E   ; 00 
- D 1 - I - 0x0124F7 04:A4E7: 1F        .byte $1F   ; 01 
- D 1 - I - 0x0124F8 04:A4E8: 20        .byte $20   ; 02 
- D 1 - I - 0x0124F9 04:A4E9: 21        .byte $21   ; 03 
- D 1 - I - 0x0124FA 04:A4EA: 00        .byte $00   ; 04 
@end:



_off004_A4EB_16:
@start:
- D 1 - I - 0x0124FB 04:A4EB: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x0124FC 04:A4EC: 06        .byte $06   ; ??? 001
- D 1 - I - 0x0124FD 04:A4ED: 13        .byte $13   ; 00 
- D 1 - I - 0x0124FE 04:A4EE: 14        .byte $14   ; 01 
@end:



_off004_A4EF_17:
@start:
- D 1 - I - 0x0124FF 04:A4EF: 03        .byte @end - @start - $03   ; 
- D 1 - I - 0x012500 04:A4F0: 05        .byte $05   ; ??? 001
- D 1 - I - 0x012501 04:A4F1: 4B        .byte $4B   ; 00 
- D 1 - I - 0x012502 04:A4F2: 01        .byte $01   ; 01 
- D 1 - I - 0x012503 04:A4F3: 03        .byte $03   ; 02 
- D 1 - I - 0x012504 04:A4F4: 02        .byte $02   ; 03 
@end:



_off004_A4F5_18:
@start:
- D 1 - I - 0x012505 04:A4F5: 03        .byte @end - @start - $03   ; 
- D 1 - I - 0x012506 04:A4F6: 04        .byte $04   ; ??? 001
- D 1 - I - 0x012507 04:A4F7: AF        .byte $AF   ; 00 
- D 1 - I - 0x012508 04:A4F8: B0        .byte $B0   ; 01 
- D 1 - I - 0x012509 04:A4F9: B1        .byte $B1   ; 02 
- D 1 - I - 0x01250A 04:A4FA: B2        .byte $B2   ; 03 
@end:



_off004_A4FB_19:
@start:
- D 1 - I - 0x01250B 04:A4FB: 03        .byte @end - @start - $03   ; 
- D 1 - I - 0x01250C 04:A4FC: 04        .byte $04   ; ??? 001
- D 1 - I - 0x01250D 04:A4FD: 1C        .byte $1C   ; 00 
- D 1 - I - 0x01250E 04:A4FE: 1D        .byte $1D   ; 01 
- D 1 - I - 0x01250F 04:A4FF: AE        .byte $AE   ; 02 
- D 1 - I - 0x012510 04:A500: AD        .byte $AD   ; 03 
@end:



_off004_A501_1A:
@start:
- D 1 - I - 0x012511 04:A501: 03        .byte @end - @start - $03   ; 
- D 1 - I - 0x012512 04:A502: 06        .byte $06   ; ??? 001
- D 1 - I - 0x012513 04:A503: B3        .byte $B3   ; 00 
- D 1 - I - 0x012514 04:A504: B4        .byte $B4   ; 01 
- D 1 - I - 0x012515 04:A505: B5        .byte $B5   ; 02 
- D 1 - I - 0x012516 04:A506: B6        .byte $B6   ; 03 
@end:



_off004_A507_1B:
@start:
- D 1 - I - 0x012517 04:A507: 03        .byte @end - @start - $03   ; 
- D 1 - I - 0x012518 04:A508: 08        .byte $08   ; ??? 001
- D 1 - I - 0x012519 04:A509: E8        .byte $E8   ; 00 
- D 1 - I - 0x01251A 04:A50A: E9        .byte $E9   ; 01 
- D 1 - I - 0x01251B 04:A50B: EA        .byte $EA   ; 02 
- D 1 - I - 0x01251C 04:A50C: EB        .byte $EB   ; 03 
@end:



_off004_A50D_1C:
@start:
- D 1 - I - 0x01251D 04:A50D: 09        .byte @end - @start - $03   ; 
- D 1 - I - 0x01251E 04:A50E: 03        .byte $03   ; ??? 001
- D 1 - I - 0x01251F 04:A50F: E6        .byte $E6   ; 00 
- D 1 - I - 0x012520 04:A510: E7        .byte $E7   ; 01 
- D 1 - I - 0x012521 04:A511: E6        .byte $E6   ; 02 
- D 1 - I - 0x012522 04:A512: E7        .byte $E7   ; 03 
- D 1 - I - 0x012523 04:A513: E6        .byte $E6   ; 04 
- D 1 - I - 0x012524 04:A514: E7        .byte $E7   ; 05 
- D 1 - I - 0x012525 04:A515: E6        .byte $E6   ; 06 
- D 1 - I - 0x012526 04:A516: E7        .byte $E7   ; 07 
- D 1 - I - 0x012527 04:A517: E6        .byte $E6   ; 08 
- D 1 - I - 0x012528 04:A518: E5        .byte $E5   ; 09 
@end:



_off004_A519_1D:
@start:
- D 1 - I - 0x012529 04:A519: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x01252A 04:A51A: 10        .byte $10   ; ??? 001
- D 1 - I - 0x01252B 04:A51B: D2        .byte $D2   ; 00 
- D 1 - I - 0x01252C 04:A51C: E4        .byte $E4   ; 01 
@end:



_off004_A51D_1E:
@start:
- D 1 - I - 0x01252D 04:A51D: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x01252E 04:A51E: 08        .byte $08   ; ??? 001
- D 1 - I - 0x01252F 04:A51F: D1        .byte $D1   ; 00 
@end:



_off004_A520_1F:
@start:
- D 1 - I - 0x012530 04:A520: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x012531 04:A521: 0C        .byte $0C   ; ??? 001
- D 1 - I - 0x012532 04:A522: 36        .byte $36   ; 00 
- D 1 - I - 0x012533 04:A523: 37        .byte $37   ; 01 
@end:



_off004_A524_20:
@start:
- D 1 - I - 0x012534 04:A524: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x012535 04:A525: 08        .byte $08   ; ??? 001
- D 1 - I - 0x012536 04:A526: 31        .byte $31   ; 00 
@end:



_off004_A527_21:
@start:
- D 1 - I - 0x012537 04:A527: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x012538 04:A528: 0C        .byte $0C   ; ??? 001
- D 1 - I - 0x012539 04:A529: 2A        .byte $2A   ; 00 
- D 1 - I - 0x01253A 04:A52A: 2B        .byte $2B   ; 01 
@end:



_off004_A52B_22:
@start:
- - - - - - 0x01253B 04:A52B: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x01253C 04:A52C: 08        .byte $08   ; ??? 001
- D 1 - I - 0x01253D 04:A52D: CA        .byte $CA   ; 00 
- D 1 - I - 0x01253E 04:A52E: CE        .byte $CE   ; 01 
@end:



_off004_A52F_23:
@start:
- D 1 - I - 0x01253F 04:A52F: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x012540 04:A530: 08        .byte $08   ; ??? 001
- D 1 - I - 0x012541 04:A531: 2D        .byte $2D   ; 00 
@end:



_off004_A532_24:
@start:
- D 1 - I - 0x012542 04:A532: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x012543 04:A533: 0C        .byte $0C   ; ??? 001
- D 1 - I - 0x012544 04:A534: 2E        .byte $2E   ; 00 
- D 1 - I - 0x012545 04:A535: 2F        .byte $2F   ; 01 
@end:



_off004_A536_25:
@start:
- - - - - - 0x012546 04:A536: 01        .byte @end - @start - $03   ; 
- - - - - - 0x012547 04:A537: 06        .byte $06   ; ??? 001
- - - - - - 0x012548 04:A538: 2E        .byte $2E   ; 00 
- - - - - - 0x012549 04:A539: 2F        .byte $2F   ; 01 
@end:



_off004_A53A_26:
@start:
- - - - - - 0x01254A 04:A53A: 01        .byte @end - @start - $03   ; 
- - - - - - 0x01254B 04:A53B: 06        .byte $06   ; ??? 001
- - - - - - 0x01254C 04:A53C: 32        .byte $32   ; 00 
- - - - - - 0x01254D 04:A53D: 33        .byte $33   ; 01 
@end:



_off004_A53E_27:
@start:
- D 1 - I - 0x01254E 04:A53E: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x01254F 04:A53F: 0C        .byte $0C   ; ??? 001
- D 1 - I - 0x012550 04:A540: 32        .byte $32   ; 00 
- D 1 - I - 0x012551 04:A541: 33        .byte $33   ; 01 
@end:



_off004_A542_28:
@start:
- D 1 - I - 0x012552 04:A542: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x012553 04:A543: 08        .byte $08   ; ??? 001
- D 1 - I - 0x012554 04:A544: 34        .byte $34   ; 00 
@end:



_off004_A545_29:
@start:
- D 1 - I - 0x012555 04:A545: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x012556 04:A546: 06        .byte $06   ; ??? 001
- D 1 - I - 0x012557 04:A547: CF        .byte $CF   ; 00 
- D 1 - I - 0x012558 04:A548: D0        .byte $D0   ; 01 
@end:



_off004_A549_2A:
@start:
- D 1 - I - 0x012559 04:A549: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x01255A 04:A54A: 10        .byte $10   ; ??? 001
- D 1 - I - 0x01255B 04:A54B: 87        .byte $87   ; 00 
- D 1 - I - 0x01255C 04:A54C: 88        .byte $88   ; 01 
@end:



_off004_A54D_2B:
@start:
- - - - - - 0x01255D 04:A54D: 01        .byte @end - @start - $03   ; 
- - - - - - 0x01255E 04:A54E: 0C        .byte $0C   ; ??? 001
- - - - - - 0x01255F 04:A54F: 38        .byte $38   ; 00 
- - - - - - 0x012560 04:A550: 39        .byte $39   ; 01 
@end:



_off004_A551_2C:
@start:
- - - - - - 0x012561 04:A551: 01        .byte @end - @start - $03   ; 
- - - - - - 0x012562 04:A552: 0C        .byte $0C   ; ??? 001
- - - - - - 0x012563 04:A553: 3A        .byte $3A   ; 00 
- - - - - - 0x012564 04:A554: 38        .byte $38   ; 01 
@end:



_off004_A555_2D:
@start:
- - - - - - 0x012565 04:A555: 00        .byte @end - @start - $03   ; 
- - - - - - 0x012566 04:A556: 08        .byte $08   ; ??? 001
- - - - - - 0x012567 04:A557: 3B        .byte $3B   ; 00 
@end:



_off004_A558_2E:
@start:
- - - - - - 0x012568 04:A558: 01        .byte @end - @start - $03   ; 
- - - - - - 0x012569 04:A559: 0C        .byte $0C   ; ??? 001
- - - - - - 0x01256A 04:A55A: 3D        .byte $3D   ; 00 
- - - - - - 0x01256B 04:A55B: 3D        .byte $3D   ; 01 
@end:



_off004_A55C_2F:
@start:
- - - - - - 0x01256C 04:A55C: 01        .byte @end - @start - $03   ; 
- - - - - - 0x01256D 04:A55D: 0C        .byte $0C   ; ??? 001
- - - - - - 0x01256E 04:A55E: 3C        .byte $3C   ; 00 
- - - - - - 0x01256F 04:A55F: 3C        .byte $3C   ; 01 
@end:



_off004_A560_30:
@start:
- - - - - - 0x012570 04:A560: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x012571 04:A561: 0C        .byte $0C   ; ??? 001
- D 1 - I - 0x012572 04:A562: 3F        .byte $3F   ; 00 
- D 1 - I - 0x012573 04:A563: 40        .byte $40   ; 01 
@end:



_off004_A564_31:
@start:
- D 1 - I - 0x012574 04:A564: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x012575 04:A565: 0C        .byte $0C   ; ??? 001
- D 1 - I - 0x012576 04:A566: 41        .byte $41   ; 00 
- D 1 - I - 0x012577 04:A567: 42        .byte $42   ; 01 
@end:



_off004_A568_32:
@start:
- D 1 - I - 0x012578 04:A568: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x012579 04:A569: 10        .byte $10   ; ??? 001
- D 1 - I - 0x01257A 04:A56A: 69        .byte $69   ; 00 
- D 1 - I - 0x01257B 04:A56B: 72        .byte $72   ; 01 
@end:



_off004_A56C_33:
@start:
- D 1 - I - 0x01257C 04:A56C: 03        .byte @end - @start - $03   ; 
- D 1 - I - 0x01257D 04:A56D: 08        .byte $08   ; ??? 001
- D 1 - I - 0x01257E 04:A56E: 44        .byte $44   ; 00 
- D 1 - I - 0x01257F 04:A56F: 45        .byte $45   ; 01 
- D 1 - I - 0x012580 04:A570: 46        .byte $46   ; 02 
- D 1 - I - 0x012581 04:A571: 47        .byte $47   ; 03 
@end:



_off004_A572_34:
@start:
- D 1 - I - 0x012582 04:A572: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x012583 04:A573: 08        .byte $08   ; ??? 001
- D 1 - I - 0x012584 04:A574: 50        .byte $50   ; 00 
- D 1 - I - 0x012585 04:A575: 51        .byte $51   ; 01 
@end:



_off004_A576_35:
@start:
- D 1 - I - 0x012586 04:A576: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x012587 04:A577: 0C        .byte $0C   ; ??? 001
- D 1 - I - 0x012588 04:A578: D3        .byte $D3   ; 00 
- D 1 - I - 0x012589 04:A579: D4        .byte $D4   ; 01 
@end:



_off004_A57A_36:
@start:
- D 1 - I - 0x01258A 04:A57A: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x01258B 04:A57B: 40        .byte $40   ; ??? 001
- D 1 - I - 0x01258C 04:A57C: 6A        .byte $6A   ; 00 
- D 1 - I - 0x01258D 04:A57D: 6B        .byte $6B   ; 01 
@end:



_off004_A57E_37:
@start:
- D 1 - I - 0x01258E 04:A57E: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x01258F 04:A57F: 0C        .byte $0C   ; ??? 001
- D 1 - I - 0x012590 04:A580: D5        .byte $D5   ; 00 
- D 1 - I - 0x012591 04:A581: D6        .byte $D6   ; 01 
@end:



_off004_A582_38:
@start:
- D 1 - I - 0x012592 04:A582: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x012593 04:A583: 10        .byte $10   ; ??? 001
- D 1 - I - 0x012594 04:A584: 6D        .byte $6D   ; 00 
- D 1 - I - 0x012595 04:A585: 6E        .byte $6E   ; 01 
@end:



_off004_A586_39:
@start:
- D 1 - I - 0x012596 04:A586: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x012597 04:A587: 10        .byte $10   ; ??? 001
- D 1 - I - 0x012598 04:A588: 6F        .byte $6F   ; 00 
- D 1 - I - 0x012599 04:A589: 70        .byte $70   ; 01 
@end:



_off004_A58A_3A:
@start:
- D 1 - I - 0x01259A 04:A58A: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x01259B 04:A58B: 08        .byte $08   ; ??? 001
- D 1 - I - 0x01259C 04:A58C: 71        .byte $71   ; 00 
@end:



_off004_A58D_3B:
@start:
- D 1 - I - 0x01259D 04:A58D: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x01259E 04:A58E: 08        .byte $08   ; ??? 001
- D 1 - I - 0x01259F 04:A58F: 9B        .byte $9B   ; 00 
@end:



_off004_A590_3C:
@start:
- D 1 - I - 0x0125A0 04:A590: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x0125A1 04:A591: 10        .byte $10   ; ??? 001
- D 1 - I - 0x0125A2 04:A592: 77        .byte $77   ; 00 
- D 1 - I - 0x0125A3 04:A593: 78        .byte $78   ; 01 
@end:



_off004_A594_3D:
@start:
- D 1 - I - 0x0125A4 04:A594: 02        .byte @end - @start - $03   ; 
- D 1 - I - 0x0125A5 04:A595: 10        .byte $10   ; ??? 001
- D 1 - I - 0x0125A6 04:A596: 79        .byte $79   ; 00 
- D 1 - I - 0x0125A7 04:A597: 7A        .byte $7A   ; 01 
- D 1 - I - 0x0125A8 04:A598: 7A        .byte $7A   ; 02 
@end:



_off004_A599_3E:
@start:
- D 1 - I - 0x0125A9 04:A599: 03        .byte @end - @start - $03   ; 
- D 1 - I - 0x0125AA 04:A59A: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0125AB 04:A59B: D7        .byte $D7   ; 00 
- D 1 - I - 0x0125AC 04:A59C: D8        .byte $D8   ; 01 
- D 1 - I - 0x0125AD 04:A59D: D9        .byte $D9   ; 02 
- D 1 - I - 0x0125AE 04:A59E: DA        .byte $DA   ; 03 
@end:



_off004_A59F_3F:
@start:
- D 1 - I - 0x0125AF 04:A59F: 02        .byte @end - @start - $03   ; 
- D 1 - I - 0x0125B0 04:A5A0: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0125B1 04:A5A1: 80        .byte $80   ; 00 
- D 1 - I - 0x0125B2 04:A5A2: 81        .byte $81   ; 01 
- D 1 - I - 0x0125B3 04:A5A3: 82        .byte $82   ; 02 
@end:



_off004_A5A4_40:
@start:
- D 1 - I - 0x0125B4 04:A5A4: 03        .byte @end - @start - $03   ; 
- D 1 - I - 0x0125B5 04:A5A5: 04        .byte $04   ; ??? 001
- D 1 - I - 0x0125B6 04:A5A6: 83        .byte $83   ; 00 
- D 1 - I - 0x0125B7 04:A5A7: 84        .byte $84   ; 01 
- D 1 - I - 0x0125B8 04:A5A8: 85        .byte $85   ; 02 
- D 1 - I - 0x0125B9 04:A5A9: 86        .byte $86   ; 03 
@end:



_off004_A5AA_41:
@start:
- D 1 - I - 0x0125BA 04:A5AA: 0A        .byte @end - @start - $03   ; 
- D 1 - I - 0x0125BB 04:A5AB: 05        .byte $05   ; ??? 001
- D 1 - I - 0x0125BC 04:A5AC: 53        .byte $53   ; 00 
- D 1 - I - 0x0125BD 04:A5AD: 53        .byte $53   ; 01 
- D 1 - I - 0x0125BE 04:A5AE: 53        .byte $53   ; 02 
- D 1 - I - 0x0125BF 04:A5AF: 53        .byte $53   ; 03 
- D 1 - I - 0x0125C0 04:A5B0: 53        .byte $53   ; 04 
- D 1 - I - 0x0125C1 04:A5B1: 53        .byte $53   ; 05 
- D 1 - I - 0x0125C2 04:A5B2: 53        .byte $53   ; 06 
- D 1 - I - 0x0125C3 04:A5B3: 53        .byte $53   ; 07 
- D 1 - I - 0x0125C4 04:A5B4: 38        .byte $38   ; 08 
- D 1 - I - 0x0125C5 04:A5B5: 39        .byte $39   ; 09 
- D 1 - I - 0x0125C6 04:A5B6: 3A        .byte $3A   ; 0A 
@end:



_off004_A5B7_42:
@start:
- D 1 - I - 0x0125C7 04:A5B7: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0125C8 04:A5B8: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0125C9 04:A5B9: 54        .byte $54   ; 00 
@end:



_off004_A5BA_43:
@start:
- D 1 - I - 0x0125CA 04:A5BA: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0125CB 04:A5BB: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0125CC 04:A5BC: 55        .byte $55   ; 00 
@end:



_off004_A5BD_44:
@start:
- D 1 - I - 0x0125CD 04:A5BD: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0125CE 04:A5BE: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0125CF 04:A5BF: 56        .byte $56   ; 00 
@end:



_off004_A5C0_45:
@start:
- D 1 - I - 0x0125D0 04:A5C0: 03        .byte @end - @start - $03   ; 
- D 1 - I - 0x0125D1 04:A5C1: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0125D2 04:A5C2: DB        .byte $DB   ; 00 
- D 1 - I - 0x0125D3 04:A5C3: DC        .byte $DC   ; 01 
- D 1 - I - 0x0125D4 04:A5C4: DD        .byte $DD   ; 02 
- D 1 - I - 0x0125D5 04:A5C5: DC        .byte $DC   ; 03 
@end:



_off004_A5C6_46:
@start:
- D 1 - I - 0x0125D6 04:A5C6: 02        .byte @end - @start - $03   ; 
- D 1 - I - 0x0125D7 04:A5C7: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0125D8 04:A5C8: A6        .byte $A6   ; 00 
- D 1 - I - 0x0125D9 04:A5C9: A5        .byte $A5   ; 01 
- D 1 - I - 0x0125DA 04:A5CA: A5        .byte $A5   ; 02 
@end:



_off004_A5CB_47:
@start:
- D 1 - I - 0x0125DB 04:A5CB: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0125DC 04:A5CC: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0125DD 04:A5CD: 59        .byte $59   ; 00 
@end:



_off004_A5CE_48:
@start:
- D 1 - I - 0x0125DE 04:A5CE: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0125DF 04:A5CF: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0125E0 04:A5D0: 5A        .byte $5A   ; 00 
@end:



_off004_A5D1_49:
@start:
- D 1 - I - 0x0125E1 04:A5D1: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0125E2 04:A5D2: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0125E3 04:A5D3: 5B        .byte $5B   ; 00 
@end:



_off004_A5D4_4A:
@start:
- D 1 - I - 0x0125E4 04:A5D4: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0125E5 04:A5D5: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0125E6 04:A5D6: 5C        .byte $5C   ; 00 
@end:



_off004_A5D7_4B:
@start:
- D 1 - I - 0x0125E7 04:A5D7: 0A        .byte @end - @start - $03   ; 
- D 1 - I - 0x0125E8 04:A5D8: 04        .byte $04   ; ??? 001
- D 1 - I - 0x0125E9 04:A5D9: 5D        .byte $5D   ; 00 
- D 1 - I - 0x0125EA 04:A5DA: 5D        .byte $5D   ; 01 
- D 1 - I - 0x0125EB 04:A5DB: 5D        .byte $5D   ; 02 
- D 1 - I - 0x0125EC 04:A5DC: 5D        .byte $5D   ; 03 
- D 1 - I - 0x0125ED 04:A5DD: 5D        .byte $5D   ; 04 
- D 1 - I - 0x0125EE 04:A5DE: 5D        .byte $5D   ; 05 
- D 1 - I - 0x0125EF 04:A5DF: 5D        .byte $5D   ; 06 
- D 1 - I - 0x0125F0 04:A5E0: 5D        .byte $5D   ; 07 
- D 1 - I - 0x0125F1 04:A5E1: 5E        .byte $5E   ; 08 
- D 1 - I - 0x0125F2 04:A5E2: 5F        .byte $5F   ; 09 
- D 1 - I - 0x0125F3 04:A5E3: 60        .byte $60   ; 0A 
@end:



_off004_A5E4_4C:
@start:
- D 1 - I - 0x0125F4 04:A5E4: 0A        .byte @end - @start - $03   ; 
- D 1 - I - 0x0125F5 04:A5E5: 04        .byte $04   ; ??? 001
- D 1 - I - 0x0125F6 04:A5E6: 61        .byte $61   ; 00 
- D 1 - I - 0x0125F7 04:A5E7: 61        .byte $61   ; 01 
- D 1 - I - 0x0125F8 04:A5E8: 61        .byte $61   ; 02 
- D 1 - I - 0x0125F9 04:A5E9: 61        .byte $61   ; 03 
- D 1 - I - 0x0125FA 04:A5EA: 61        .byte $61   ; 04 
- D 1 - I - 0x0125FB 04:A5EB: 61        .byte $61   ; 05 
- D 1 - I - 0x0125FC 04:A5EC: 61        .byte $61   ; 06 
- D 1 - I - 0x0125FD 04:A5ED: 61        .byte $61   ; 07 
- D 1 - I - 0x0125FE 04:A5EE: 62        .byte $62   ; 08 
- D 1 - I - 0x0125FF 04:A5EF: 63        .byte $63   ; 09 
- D 1 - I - 0x012600 04:A5F0: 64        .byte $64   ; 0A 
@end:



_off004_A5F1_4D:
@start:
- D 1 - I - 0x012601 04:A5F1: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x012602 04:A5F2: 08        .byte $08   ; ??? 001
- D 1 - I - 0x012603 04:A5F3: 66        .byte $66   ; 00 
@end:



_off004_A5F4_4E:
@start:
- D 1 - I - 0x012604 04:A5F4: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x012605 04:A5F5: 08        .byte $08   ; ??? 001
- D 1 - I - 0x012606 04:A5F6: 65        .byte $65   ; 00 
@end:



_off004_A5F7_4F:
@start:
- D 1 - I - 0x012607 04:A5F7: 03        .byte @end - @start - $03   ; 
- D 1 - I - 0x012608 04:A5F8: 08        .byte $08   ; ??? 001
- D 1 - I - 0x012609 04:A5F9: BE        .byte $BE   ; 00 
- D 1 - I - 0x01260A 04:A5FA: BF        .byte $BF   ; 01 
- D 1 - I - 0x01260B 04:A5FB: C0        .byte $C0   ; 02 
- D 1 - I - 0x01260C 04:A5FC: C1        .byte $C1   ; 03 
@end:



_off004_A5FD_50:
@start:
- D 1 - I - 0x01260D 04:A5FD: 06        .byte @end - @start - $03   ; 
- D 1 - I - 0x01260E 04:A5FE: 03        .byte $03   ; ??? 001
- D 1 - I - 0x01260F 04:A5FF: E0        .byte $E0   ; 00 
- D 1 - I - 0x012610 04:A600: E1        .byte $E1   ; 01 
- D 1 - I - 0x012611 04:A601: E2        .byte $E2   ; 02 
- D 1 - I - 0x012612 04:A602: E2        .byte $E2   ; 03 
- D 1 - I - 0x012613 04:A603: E3        .byte $E3   ; 04 
- D 1 - I - 0x012614 04:A604: E3        .byte $E3   ; 05 
- D 1 - I - 0x012615 04:A605: 00        .byte $00   ; 06 
@end:



_off004_A606_51:
@start:
- D 1 - I - 0x012616 04:A606: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x012617 04:A607: 10        .byte $10   ; ??? 001
- D 1 - I - 0x012618 04:A608: C6        .byte $C6   ; 00 
- D 1 - I - 0x012619 04:A609: C7        .byte $C7   ; 01 
@end:



_off004_A60A_52:
@start:
- D 1 - I - 0x01261A 04:A60A: 04        .byte @end - @start - $03   ; 
- D 1 - I - 0x01261B 04:A60B: 05        .byte $05   ; ??? 001
- D 1 - I - 0x01261C 04:A60C: 73        .byte $73   ; 00 
- D 1 - I - 0x01261D 04:A60D: 74        .byte $74   ; 01 
- D 1 - I - 0x01261E 04:A60E: 75        .byte $75   ; 02 
- D 1 - I - 0x01261F 04:A60F: 76        .byte $76   ; 03 
- D 1 - I - 0x012620 04:A610: 00        .byte $00   ; 04 
@end:



_off004_A611_53:
@start:
- D 1 - I - 0x012621 04:A611: 02        .byte @end - @start - $03   ; 
- D 1 - I - 0x012622 04:A612: 08        .byte $08   ; ??? 001
- D 1 - I - 0x012623 04:A613: 89        .byte $89   ; 00 
- D 1 - I - 0x012624 04:A614: 8A        .byte $8A   ; 01 
- D 1 - I - 0x012625 04:A615: 8B        .byte $8B   ; 02 
@end:



_off004_A616_54:
@start:
- D 1 - I - 0x012626 04:A616: 02        .byte @end - @start - $03   ; 
- D 1 - I - 0x012627 04:A617: 03        .byte $03   ; ??? 001
- D 1 - I - 0x012628 04:A618: 89        .byte $89   ; 00 
- D 1 - I - 0x012629 04:A619: 8A        .byte $8A   ; 01 
- D 1 - I - 0x01262A 04:A61A: 8B        .byte $8B   ; 02 
@end:



_off004_A61B_55:
@start:
- D 1 - I - 0x01262B 04:A61B: 0A        .byte @end - @start - $03   ; 
- D 1 - I - 0x01262C 04:A61C: 06        .byte $06   ; ??? 001
- D 1 - I - 0x01262D 04:A61D: 8C        .byte $8C   ; 00 
- D 1 - I - 0x01262E 04:A61E: 8C        .byte $8C   ; 01 
- D 1 - I - 0x01262F 04:A61F: 8C        .byte $8C   ; 02 
- D 1 - I - 0x012630 04:A620: 8C        .byte $8C   ; 03 
- D 1 - I - 0x012631 04:A621: 8C        .byte $8C   ; 04 
- D 1 - I - 0x012632 04:A622: 8C        .byte $8C   ; 05 
- D 1 - I - 0x012633 04:A623: 8C        .byte $8C   ; 06 
- D 1 - I - 0x012634 04:A624: 8C        .byte $8C   ; 07 
- D 1 - I - 0x012635 04:A625: 8C        .byte $8C   ; 08 
- D 1 - I - 0x012636 04:A626: 8C        .byte $8C   ; 09 
- D 1 - I - 0x012637 04:A627: 8D        .byte $8D   ; 0A 
@end:



_off004_A628_56:
@start:
- D 1 - I - 0x012638 04:A628: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x012639 04:A629: 10        .byte $10   ; ??? 001
- D 1 - I - 0x01263A 04:A62A: 7C        .byte $7C   ; 00 
- D 1 - I - 0x01263B 04:A62B: 7D        .byte $7D   ; 01 
@end:



_off004_A62C_57:
@start:
- D 1 - I - 0x01263C 04:A62C: 06        .byte @end - @start - $03   ; 
- D 1 - I - 0x01263D 04:A62D: 06        .byte $06   ; ??? 001
- D 1 - I - 0x01263E 04:A62E: 7E        .byte $7E   ; 00 
- D 1 - I - 0x01263F 04:A62F: 7F        .byte $7F   ; 01 
- D 1 - I - 0x012640 04:A630: 7F        .byte $7F   ; 02 
- D 1 - I - 0x012641 04:A631: 7F        .byte $7F   ; 03 
- D 1 - I - 0x012642 04:A632: 7F        .byte $7F   ; 04 
- D 1 - I - 0x012643 04:A633: 7F        .byte $7F   ; 05 
- D 1 - I - 0x012644 04:A634: 7E        .byte $7E   ; 06 
@end:



_off004_A635_58:
@start:
- D 1 - I - 0x012645 04:A635: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x012646 04:A636: 10        .byte $10   ; ??? 001
- D 1 - I - 0x012647 04:A637: A0        .byte $A0   ; 00 
- D 1 - I - 0x012648 04:A638: A1        .byte $A1   ; 01 
@end:



_off004_A639_59:
@start:
- D 1 - I - 0x012649 04:A639: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x01264A 04:A63A: 18        .byte $18   ; ??? 001
- D 1 - I - 0x01264B 04:A63B: A2        .byte $A2   ; 00 
- D 1 - I - 0x01264C 04:A63C: A2        .byte $A2   ; 01 
@end:



_off004_A63D_5A:
@start:
- D 1 - I - 0x01264D 04:A63D: 08        .byte @end - @start - $03   ; 
- D 1 - I - 0x01264E 04:A63E: 08        .byte $08   ; ??? 001
- D 1 - I - 0x01264F 04:A63F: A3        .byte $A3   ; 00 
- D 1 - I - 0x012650 04:A640: A4        .byte $A4   ; 01 
- D 1 - I - 0x012651 04:A641: A4        .byte $A4   ; 02 
- D 1 - I - 0x012652 04:A642: A4        .byte $A4   ; 03 
- D 1 - I - 0x012653 04:A643: A4        .byte $A4   ; 04 
- D 1 - I - 0x012654 04:A644: A4        .byte $A4   ; 05 
- D 1 - I - 0x012655 04:A645: A4        .byte $A4   ; 06 
- D 1 - I - 0x012656 04:A646: A5        .byte $A5   ; 07 
- D 1 - I - 0x012657 04:A647: A6        .byte $A6   ; 08 
@end:



_off004_A648_5B:
@start:
- D 1 - I - 0x012658 04:A648: 02        .byte @end - @start - $03   ; 
- D 1 - I - 0x012659 04:A649: 0A        .byte $0A   ; ??? 001
- D 1 - I - 0x01265A 04:A64A: A7        .byte $A7   ; 00 
- D 1 - I - 0x01265B 04:A64B: A8        .byte $A8   ; 01 
- D 1 - I - 0x01265C 04:A64C: A9        .byte $A9   ; 02 
@end:



_off004_A64D_5C:
@start:
- D 1 - I - 0x01265D 04:A64D: 02        .byte @end - @start - $03   ; 
- D 1 - I - 0x01265E 04:A64E: 06        .byte $06   ; ??? 001
- D 1 - I - 0x01265F 04:A64F: AA        .byte $AA   ; 00 
- D 1 - I - 0x012660 04:A650: AB        .byte $AB   ; 01 
- D 1 - I - 0x012661 04:A651: AC        .byte $AC   ; 02 
@end:



_off004_A652_5D:
@start:
- D 1 - I - 0x012662 04:A652: 09        .byte @end - @start - $03   ; 
- D 1 - I - 0x012663 04:A653: 04        .byte $04   ; ??? 001
- D 1 - I - 0x012664 04:A654: 9D        .byte $9D   ; 00 
- D 1 - I - 0x012665 04:A655: 9D        .byte $9D   ; 01 
- D 1 - I - 0x012666 04:A656: 9E        .byte $9E   ; 02 
- D 1 - I - 0x012667 04:A657: 9E        .byte $9E   ; 03 
- D 1 - I - 0x012668 04:A658: 9E        .byte $9E   ; 04 
- D 1 - I - 0x012669 04:A659: 9D        .byte $9D   ; 05 
- D 1 - I - 0x01266A 04:A65A: 9D        .byte $9D   ; 06 
- D 1 - I - 0x01266B 04:A65B: 9F        .byte $9F   ; 07 
- D 1 - I - 0x01266C 04:A65C: 9F        .byte $9F   ; 08 
- D 1 - I - 0x01266D 04:A65D: 9F        .byte $9F   ; 09 
@end:



_off004_A65E_5E:
@start:
- D 1 - I - 0x01266E 04:A65E: 09        .byte @end - @start - $03   ; 
- D 1 - I - 0x01266F 04:A65F: 02        .byte $02   ; ??? 001
- D 1 - I - 0x012670 04:A660: 9D        .byte $9D   ; 00 
- D 1 - I - 0x012671 04:A661: 9D        .byte $9D   ; 01 
- D 1 - I - 0x012672 04:A662: 9E        .byte $9E   ; 02 
- D 1 - I - 0x012673 04:A663: 9E        .byte $9E   ; 03 
- D 1 - I - 0x012674 04:A664: 9E        .byte $9E   ; 04 
- D 1 - I - 0x012675 04:A665: 9D        .byte $9D   ; 05 
- D 1 - I - 0x012676 04:A666: 9D        .byte $9D   ; 06 
- D 1 - I - 0x012677 04:A667: 9F        .byte $9F   ; 07 
- D 1 - I - 0x012678 04:A668: 9F        .byte $9F   ; 08 
- D 1 - I - 0x012679 04:A669: 9F        .byte $9F   ; 09 
@end:



_off004_A66A_5F:
@start:
- D 1 - I - 0x01267A 04:A66A: 03        .byte @end - @start - $03   ; 
- D 1 - I - 0x01267B 04:A66B: 10        .byte $10   ; ??? 001
- D 1 - I - 0x01267C 04:A66C: 57        .byte $57   ; 00 
- D 1 - I - 0x01267D 04:A66D: 57        .byte $57   ; 01 
- D 1 - I - 0x01267E 04:A66E: 67        .byte $67   ; 02 
- D 1 - I - 0x01267F 04:A66F: 68        .byte $68   ; 03 
@end:



_off004_A670_60:
@start:
- D 1 - I - 0x012680 04:A670: 11        .byte @end - @start - $03   ; 
- D 1 - I - 0x012681 04:A671: 08        .byte $08   ; ??? 001
- D 1 - I - 0x012682 04:A672: C2        .byte $C2   ; 00 
- D 1 - I - 0x012683 04:A673: C2        .byte $C2   ; 01 
- D 1 - I - 0x012684 04:A674: C2        .byte $C2   ; 02 
- D 1 - I - 0x012685 04:A675: C2        .byte $C2   ; 03 
- D 1 - I - 0x012686 04:A676: C2        .byte $C2   ; 04 
- D 1 - I - 0x012687 04:A677: C2        .byte $C2   ; 05 
- D 1 - I - 0x012688 04:A678: C2        .byte $C2   ; 06 
- D 1 - I - 0x012689 04:A679: C2        .byte $C2   ; 07 
- D 1 - I - 0x01268A 04:A67A: C2        .byte $C2   ; 08 
- D 1 - I - 0x01268B 04:A67B: C2        .byte $C2   ; 09 
- D 1 - I - 0x01268C 04:A67C: C2        .byte $C2   ; 0A 
- D 1 - I - 0x01268D 04:A67D: C2        .byte $C2   ; 0B 
- D 1 - I - 0x01268E 04:A67E: C3        .byte $C3   ; 0C 
- D 1 - I - 0x01268F 04:A67F: C4        .byte $C4   ; 0D 
- D 1 - I - 0x012690 04:A680: C5        .byte $C5   ; 0E 
- D 1 - I - 0x012691 04:A681: C5        .byte $C5   ; 0F 
- D 1 - I - 0x012692 04:A682: C4        .byte $C4   ; 10 
- D 1 - I - 0x012693 04:A683: C3        .byte $C3   ; 11 
@end:



_off004_A684_61:
@start:
- D 1 - I - 0x012694 04:A684: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x012695 04:A685: 08        .byte $08   ; ??? 001
- D 1 - I - 0x012696 04:A686: 8E        .byte $8E   ; 00 
@end:



_off004_A687_62:
@start:
- D 1 - I - 0x012697 04:A687: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x012698 04:A688: 08        .byte $08   ; ??? 001
- D 1 - I - 0x012699 04:A689: 8F        .byte $8F   ; 00 
@end:



_off004_A68A_63:
@start:
- D 1 - I - 0x01269A 04:A68A: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x01269B 04:A68B: 08        .byte $08   ; ??? 001
- D 1 - I - 0x01269C 04:A68C: 90        .byte $90   ; 00 
@end:



_off004_A68D_64:
@start:
- D 1 - I - 0x01269D 04:A68D: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x01269E 04:A68E: 08        .byte $08   ; ??? 001
- D 1 - I - 0x01269F 04:A68F: F1        .byte $F1   ; 00 
@end:



_off004_A690_65:
@start:
- D 1 - I - 0x0126A0 04:A690: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126A1 04:A691: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126A2 04:A692: C8        .byte $C8   ; 00 
@end:



_off004_A693_66:
@start:
- D 1 - I - 0x0126A3 04:A693: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126A4 04:A694: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126A5 04:A695: 94        .byte $94   ; 00 
@end:



_off004_A696_67:
@start:
- D 1 - I - 0x0126A6 04:A696: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126A7 04:A697: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126A8 04:A698: 95        .byte $95   ; 00 
@end:



_off004_A699_68:
@start:
- D 1 - I - 0x0126A9 04:A699: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126AA 04:A69A: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126AB 04:A69B: 96        .byte $96   ; 00 
@end:



_off004_A69C_69:
@start:
- D 1 - I - 0x0126AC 04:A69C: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126AD 04:A69D: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126AE 04:A69E: 97        .byte $97   ; 00 
@end:



_off004_A69F_6A:
@start:
- D 1 - I - 0x0126AF 04:A69F: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126B0 04:A6A0: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126B1 04:A6A1: 98        .byte $98   ; 00 
@end:



_off004_A6A2_6B:
@start:
- D 1 - I - 0x0126B2 04:A6A2: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126B3 04:A6A3: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126B4 04:A6A4: 99        .byte $99   ; 00 
@end:



_off004_A6A5_6C:
@start:
- D 1 - I - 0x0126B5 04:A6A5: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126B6 04:A6A6: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126B7 04:A6A7: 9A        .byte $9A   ; 00 
@end:



_off004_A6A8_6D:
@start:
- D 1 - I - 0x0126B8 04:A6A8: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126B9 04:A6A9: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126BA 04:A6AA: 9C        .byte $9C   ; 00 
@end:



_off004_A6AB_6E:
@start:
- D 1 - I - 0x0126BB 04:A6AB: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126BC 04:A6AC: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126BD 04:A6AD: 91        .byte $91   ; 00 
@end:



_off004_A6AE_6F:
@start:
- D 1 - I - 0x0126BE 04:A6AE: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126BF 04:A6AF: 20        .byte $20   ; ??? 001
- D 1 - I - 0x0126C0 04:A6B0: FA        .byte $FA   ; 00 
- D 1 - I - 0x0126C1 04:A6B1: EB        .byte $EB   ; 01 
@end:



_off004_A6B2_70:
@start:
- D 1 - I - 0x0126C2 04:A6B2: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126C3 04:A6B3: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126C4 04:A6B4: B8        .byte $B8   ; 00 
@end:



_off004_A6B5_71:
@start:
- D 1 - I - 0x0126C5 04:A6B5: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126C6 04:A6B6: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126C7 04:A6B7: B9        .byte $B9   ; 00 
@end:



_off004_A6B8_72:
@start:
- D 1 - I - 0x0126C8 04:A6B8: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126C9 04:A6B9: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126CA 04:A6BA: BA        .byte $BA   ; 00 
@end:



_off004_A6BB_73:
@start:
- D 1 - I - 0x0126CB 04:A6BB: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126CC 04:A6BC: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126CD 04:A6BD: BB        .byte $BB   ; 00 
@end:



_off004_A6BE_74:
@start:
- D 1 - I - 0x0126CE 04:A6BE: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126CF 04:A6BF: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126D0 04:A6C0: BC        .byte $BC   ; 00 
@end:



_off004_A6C1_75:
@start:
- D 1 - I - 0x0126D1 04:A6C1: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126D2 04:A6C2: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126D3 04:A6C3: BD        .byte $BD   ; 00 
@end:



_off004_A6C4_76:
@start:
- D 1 - I - 0x0126D4 04:A6C4: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126D5 04:A6C5: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126D6 04:A6C6: EC        .byte $EC   ; 00 
@end:



_off004_A6C7_77:
@start:
- D 1 - I - 0x0126D7 04:A6C7: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126D8 04:A6C8: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126D9 04:A6C9: F2        .byte $F2   ; 00 
@end:



_off004_A6CA_78:
@start:
- D 1 - I - 0x0126DA 04:A6CA: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126DB 04:A6CB: 18        .byte $18   ; ??? 001
- D 1 - I - 0x0126DC 04:A6CC: C9        .byte $C9   ; 00 
- D 1 - I - 0x0126DD 04:A6CD: C9        .byte $C9   ; 01 
@end:



_off004_A6CE_79:
@start:
- D 1 - I - 0x0126DE 04:A6CE: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126DF 04:A6CF: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126E0 04:A6D0: CB        .byte $CB   ; 00 
@end:



_off004_A6D1_7A:
@start:
- D 1 - I - 0x0126E1 04:A6D1: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126E2 04:A6D2: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126E3 04:A6D3: CC        .byte $CC   ; 00 
@end:



_off004_A6D4_7B:
@start:
- D 1 - I - 0x0126E4 04:A6D4: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126E5 04:A6D5: 06        .byte $06   ; ??? 001
- D 1 - I - 0x0126E6 04:A6D6: CC        .byte $CC   ; 00 
- D 1 - I - 0x0126E7 04:A6D7: CD        .byte $CD   ; 01 
@end:



_off004_A6D8_7C:
@start:
- D 1 - I - 0x0126E8 04:A6D8: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126E9 04:A6D9: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126EA 04:A6DA: 2C        .byte $2C   ; 00 
@end:



_off004_A6DB_7D:
@start:
- D 1 - I - 0x0126EB 04:A6DB: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126EC 04:A6DC: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126ED 04:A6DD: 35        .byte $35   ; 00 
@end:



_off004_A6DE_7E:
@start:
- D 1 - I - 0x0126EE 04:A6DE: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126EF 04:A6DF: 0C        .byte $0C   ; ??? 001
- D 1 - I - 0x0126F0 04:A6E0: 43        .byte $43   ; 00 
@end:



_off004_A6E1_7F:
@start:
- D 1 - I - 0x0126F1 04:A6E1: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126F2 04:A6E2: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126F3 04:A6E3: 52        .byte $52   ; 00 
@end:



_off004_A6E4_80:
@start:
- - - - - - 0x0126F4 04:A6E4: 00        .byte @end - @start - $03   ; 
- - - - - - 0x0126F5 04:A6E5: 20        .byte $20   ; ??? 001
- - - - - - 0x0126F6 04:A6E6: 6C        .byte $6C   ; 00 
@end:



_off004_A6E7_81:
@start:
- - - - - - 0x0126F7 04:A6E7: 00        .byte @end - @start - $03   ; 
- - - - - - 0x0126F8 04:A6E8: 08        .byte $08   ; ??? 001
- - - - - - 0x0126F9 04:A6E9: 7B        .byte $7B   ; 00 
@end:



_off004_A6EA_82:
@start:
- - - - - - 0x0126FA 04:A6EA: 00        .byte @end - @start - $03   ; 
- - - - - - 0x0126FB 04:A6EB: 08        .byte $08   ; ??? 001
- - - - - - 0x0126FC 04:A6EC: 58        .byte $58   ; 00 
@end:



_off004_A6ED_83:
@start:
- D 1 - I - 0x0126FD 04:A6ED: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x0126FE 04:A6EE: 08        .byte $08   ; ??? 001
- D 1 - I - 0x0126FF 04:A6EF: F0        .byte $F0   ; 00 
@end:



_off004_A6F0_84:
@start:
- D 1 - I - 0x012700 04:A6F0: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x012701 04:A6F1: 08        .byte $08   ; ??? 001
- D 1 - I - 0x012702 04:A6F2: DF        .byte $DF   ; 00 
@end:



_off004_A6F3_85:
@start:
- D 1 - I - 0x012703 04:A6F3: 02        .byte @end - @start - $03   ; 
- D 1 - I - 0x012704 04:A6F4: 0A        .byte $0A   ; ??? 001
- D 1 - I - 0x012705 04:A6F5: 30        .byte $30   ; 00 
- D 1 - I - 0x012706 04:A6F6: 08        .byte $08   ; 01 
- D 1 - I - 0x012707 04:A6F7: 07        .byte $07   ; 02 
@end:



_off004_A6F8_86:
@start:
- D 1 - I - 0x012708 04:A6F8: 0B        .byte @end - @start - $03   ; 
- D 1 - I - 0x012709 04:A6F9: 02        .byte $02   ; ??? 001
- D 1 - I - 0x01270A 04:A6FA: 3B        .byte $3B   ; 00 
- D 1 - I - 0x01270B 04:A6FB: 3B        .byte $3B   ; 01 
- D 1 - I - 0x01270C 04:A6FC: 3C        .byte $3C   ; 02 
- D 1 - I - 0x01270D 04:A6FD: 3D        .byte $3D   ; 03 
- D 1 - I - 0x01270E 04:A6FE: 3C        .byte $3C   ; 04 
- D 1 - I - 0x01270F 04:A6FF: 3D        .byte $3D   ; 05 
- D 1 - I - 0x012710 04:A700: 3C        .byte $3C   ; 06 
- D 1 - I - 0x012711 04:A701: 3D        .byte $3D   ; 07 
- D 1 - I - 0x012712 04:A702: 3C        .byte $3C   ; 08 
- D 1 - I - 0x012713 04:A703: 3D        .byte $3D   ; 09 
- D 1 - I - 0x012714 04:A704: 3C        .byte $3C   ; 0A 
- D 1 - I - 0x012715 04:A705: 3D        .byte $3D   ; 0B 
@end:



_off004_A706_87:
@start:
- D 1 - I - 0x012716 04:A706: 03        .byte @end - @start - $03   ; 
- D 1 - I - 0x012717 04:A707: 08        .byte $08   ; ??? 001
- D 1 - I - 0x012718 04:A708: EF        .byte $EF   ; 00 
- D 1 - I - 0x012719 04:A709: EE        .byte $EE   ; 01 
- D 1 - I - 0x01271A 04:A70A: EE        .byte $EE   ; 02 
- D 1 - I - 0x01271B 04:A70B: ED        .byte $ED   ; 03 
@end:



_off004_A70C_88:
@start:
- D 1 - I - 0x01271C 04:A70C: 00        .byte @end - @start - $03   ; 
- D 1 - I - 0x01271D 04:A70D: 08        .byte $08   ; ??? 001
- D 1 - I - 0x01271E 04:A70E: DE        .byte $DE   ; 00 
@end:



_off004_A70F_89:
@start:
- D 1 - I - 0x01271F 04:A70F: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x012720 04:A710: 0A        .byte $0A   ; ??? 001
- D 1 - I - 0x012721 04:A711: F5        .byte $F5   ; 00 
- D 1 - I - 0x012722 04:A712: F6        .byte $F6   ; 01 
@end:



_off004_A713_8A:
@start:
- D 1 - I - 0x012723 04:A713: 01        .byte @end - @start - $03   ; 
- D 1 - I - 0x012724 04:A714: 0A        .byte $0A   ; ??? 001
- D 1 - I - 0x012725 04:A715: F3        .byte $F3   ; 00 
- D 1 - I - 0x012726 04:A716: F4        .byte $F4   ; 01 
@end:



_off004_A717_8B:
@start:
- D 1 - I - 0x012727 04:A717: 02        .byte @end - @start - $03   ; 
- D 1 - I - 0x012728 04:A718: 05        .byte $05   ; ??? 001
- D 1 - I - 0x012729 04:A719: F7        .byte $F7   ; 00 
- D 1 - I - 0x01272A 04:A71A: F8        .byte $F8   ; 01 
- D 1 - I - 0x01272B 04:A71B: F9        .byte $F9   ; 02 
@end:



tbl_A71C_lo:
- - - - - - 0x01272C 04:A71C: 8D        .byte < _off004_A48D_01  ; 
- D 1 - - - 0x01272D 04:A71D: 8D        .byte < _off004_A48D_02  ; 
- D 1 - - - 0x01272E 04:A71E: 93        .byte < _off004_A493_03  ; 
- D 1 - - - 0x01272F 04:A71F: 99        .byte < _off004_A499_04  ; 
- D 1 - - - 0x012730 04:A720: B5        .byte < _off004_A4B5_05  ; 
- D 1 - - - 0x012731 04:A721: B9        .byte < _off004_A4B9_06  ; 
- D 1 - - - 0x012732 04:A722: BD        .byte < _off004_A4BD_07  ; 
- D 1 - - - 0x012733 04:A723: C0        .byte < _off004_A4C0_08  ; 
- D 1 - - - 0x012734 04:A724: 9E        .byte < _off004_A49E_09  ; 
- D 1 - - - 0x012735 04:A725: A1        .byte < _off004_A4A1_0A  ; 
- D 1 - - - 0x012736 04:A726: A9        .byte < _off004_A4A9_0B  ; 
- D 1 - - - 0x012737 04:A727: AF        .byte < _off004_A4AF_0C  ; 
- - - - - - 0x012738 04:A728: B5        .byte < _off004_A4B5_0D  ; 
- - - - - - 0x012739 04:A729: B9        .byte < _off004_A4B9_0E  ; 
- - - - - - 0x01273A 04:A72A: BD        .byte < _off004_A4BD_0F  ; 
- - - - - - 0x01273B 04:A72B: C0        .byte < _off004_A4C0_10  ; 
- D 1 - - - 0x01273C 04:A72C: C4        .byte < _off004_A4C4_11  ; 
- D 1 - - - 0x01273D 04:A72D: CD        .byte < _off004_A4CD_12  ; 
- D 1 - - - 0x01273E 04:A72E: D6        .byte < _off004_A4D6_13  ; 
- D 1 - - - 0x01273F 04:A72F: DB        .byte < _off004_A4DB_14  ; 
- D 1 - - - 0x012740 04:A730: E4        .byte < _off004_A4E4_15  ; 
- D 1 - - - 0x012741 04:A731: EB        .byte < _off004_A4EB_16  ; 
- D 1 - - - 0x012742 04:A732: EF        .byte < _off004_A4EF_17  ; 
- D 1 - - - 0x012743 04:A733: F5        .byte < _off004_A4F5_18  ; 
- D 1 - - - 0x012744 04:A734: FB        .byte < _off004_A4FB_19  ; 
- D 1 - - - 0x012745 04:A735: 01        .byte < _off004_A501_1A  ; 
- D 1 - - - 0x012746 04:A736: 07        .byte < _off004_A507_1B  ; 
- D 1 - - - 0x012747 04:A737: 0D        .byte < _off004_A50D_1C  ; 
- D 1 - - - 0x012748 04:A738: 19        .byte < _off004_A519_1D  ; 
- D 1 - - - 0x012749 04:A739: 1D        .byte < _off004_A51D_1E  ; 
- D 1 - - - 0x01274A 04:A73A: 20        .byte < _off004_A520_1F  ; 
- D 1 - - - 0x01274B 04:A73B: 24        .byte < _off004_A524_20  ; 
- D 1 - - - 0x01274C 04:A73C: 27        .byte < _off004_A527_21  ; 
- D 1 - - - 0x01274D 04:A73D: 2B        .byte < _off004_A52B_22  ; 
- D 1 - - - 0x01274E 04:A73E: 2F        .byte < _off004_A52F_23  ; 
- D 1 - - - 0x01274F 04:A73F: 32        .byte < _off004_A532_24  ; 
- - - - - - 0x012750 04:A740: 36        .byte < _off004_A536_25  ; 
- - - - - - 0x012751 04:A741: 3A        .byte < _off004_A53A_26  ; 
- D 1 - - - 0x012752 04:A742: 3E        .byte < _off004_A53E_27  ; 
- D 1 - - - 0x012753 04:A743: 42        .byte < _off004_A542_28  ; 
- D 1 - - - 0x012754 04:A744: 45        .byte < _off004_A545_29  ; 
- D 1 - - - 0x012755 04:A745: 49        .byte < _off004_A549_2A  ; 
- - - - - - 0x012756 04:A746: 4D        .byte < _off004_A54D_2B  ; 
- - - - - - 0x012757 04:A747: 51        .byte < _off004_A551_2C  ; 
- - - - - - 0x012758 04:A748: 55        .byte < _off004_A555_2D  ; 
- - - - - - 0x012759 04:A749: 58        .byte < _off004_A558_2E  ; 
- - - - - - 0x01275A 04:A74A: 5C        .byte < _off004_A55C_2F  ; 
- D 1 - - - 0x01275B 04:A74B: 60        .byte < _off004_A560_30  ; 
- D 1 - - - 0x01275C 04:A74C: 64        .byte < _off004_A564_31  ; 
- D 1 - - - 0x01275D 04:A74D: 68        .byte < _off004_A568_32  ; 
- D 1 - - - 0x01275E 04:A74E: 6C        .byte < _off004_A56C_33  ; 
- D 1 - - - 0x01275F 04:A74F: 72        .byte < _off004_A572_34  ; 
- D 1 - - - 0x012760 04:A750: 76        .byte < _off004_A576_35  ; 
- D 1 - - - 0x012761 04:A751: 7A        .byte < _off004_A57A_36  ; 
- D 1 - - - 0x012762 04:A752: 7E        .byte < _off004_A57E_37  ; 
- D 1 - - - 0x012763 04:A753: 82        .byte < _off004_A582_38  ; 
- D 1 - - - 0x012764 04:A754: 86        .byte < _off004_A586_39  ; 
- D 1 - - - 0x012765 04:A755: 8A        .byte < _off004_A58A_3A  ; 
- D 1 - - - 0x012766 04:A756: 8D        .byte < _off004_A58D_3B  ; 
- D 1 - - - 0x012767 04:A757: 90        .byte < _off004_A590_3C  ; 
- D 1 - - - 0x012768 04:A758: 94        .byte < _off004_A594_3D  ; 
- D 1 - - - 0x012769 04:A759: 99        .byte < _off004_A599_3E  ; 
- D 1 - - - 0x01276A 04:A75A: 9F        .byte < _off004_A59F_3F  ; 
- D 1 - - - 0x01276B 04:A75B: A4        .byte < _off004_A5A4_40  ; 
- D 1 - - - 0x01276C 04:A75C: AA        .byte < _off004_A5AA_41  ; 
- D 1 - - - 0x01276D 04:A75D: B7        .byte < _off004_A5B7_42  ; 
- D 1 - - - 0x01276E 04:A75E: BA        .byte < _off004_A5BA_43  ; 
- D 1 - - - 0x01276F 04:A75F: BD        .byte < _off004_A5BD_44  ; 
- D 1 - - - 0x012770 04:A760: C0        .byte < _off004_A5C0_45  ; 
- D 1 - - - 0x012771 04:A761: C6        .byte < _off004_A5C6_46  ; 
- D 1 - - - 0x012772 04:A762: CB        .byte < _off004_A5CB_47  ; 
- D 1 - - - 0x012773 04:A763: CE        .byte < _off004_A5CE_48  ; 
- D 1 - - - 0x012774 04:A764: D1        .byte < _off004_A5D1_49  ; 
- D 1 - - - 0x012775 04:A765: D4        .byte < _off004_A5D4_4A  ; 
- D 1 - - - 0x012776 04:A766: D7        .byte < _off004_A5D7_4B  ; 
- D 1 - - - 0x012777 04:A767: E4        .byte < _off004_A5E4_4C  ; 
- D 1 - - - 0x012778 04:A768: F1        .byte < _off004_A5F1_4D  ; 
- D 1 - - - 0x012779 04:A769: F4        .byte < _off004_A5F4_4E  ; 
- D 1 - - - 0x01277A 04:A76A: F7        .byte < _off004_A5F7_4F  ; 
- D 1 - - - 0x01277B 04:A76B: FD        .byte < _off004_A5FD_50  ; 
- D 1 - - - 0x01277C 04:A76C: 06        .byte < _off004_A606_51  ; 
- D 1 - - - 0x01277D 04:A76D: 0A        .byte < _off004_A60A_52  ; 
- D 1 - - - 0x01277E 04:A76E: 11        .byte < _off004_A611_53  ; 
- D 1 - - - 0x01277F 04:A76F: 16        .byte < _off004_A616_54  ; 
- D 1 - - - 0x012780 04:A770: 1B        .byte < _off004_A61B_55  ; 
- D 1 - - - 0x012781 04:A771: 28        .byte < _off004_A628_56  ; 
- D 1 - - - 0x012782 04:A772: 2C        .byte < _off004_A62C_57  ; 
- D 1 - - - 0x012783 04:A773: 35        .byte < _off004_A635_58  ; 
- D 1 - - - 0x012784 04:A774: 39        .byte < _off004_A639_59  ; 
- D 1 - - - 0x012785 04:A775: 3D        .byte < _off004_A63D_5A  ; 
- D 1 - - - 0x012786 04:A776: 48        .byte < _off004_A648_5B  ; 
- D 1 - - - 0x012787 04:A777: 4D        .byte < _off004_A64D_5C  ; 
- D 1 - - - 0x012788 04:A778: 52        .byte < _off004_A652_5D  ; 
- D 1 - - - 0x012789 04:A779: 5E        .byte < _off004_A65E_5E  ; 
- D 1 - - - 0x01278A 04:A77A: 6A        .byte < _off004_A66A_5F  ; 
- D 1 - - - 0x01278B 04:A77B: 70        .byte < _off004_A670_60  ; 
- D 1 - - - 0x01278C 04:A77C: 84        .byte < _off004_A684_61  ; 
- D 1 - - - 0x01278D 04:A77D: 87        .byte < _off004_A687_62  ; 
- D 1 - - - 0x01278E 04:A77E: 8A        .byte < _off004_A68A_63  ; 
- D 1 - - - 0x01278F 04:A77F: 8D        .byte < _off004_A68D_64  ; 
- D 1 - - - 0x012790 04:A780: 90        .byte < _off004_A690_65  ; 
- D 1 - - - 0x012791 04:A781: 93        .byte < _off004_A693_66  ; 
- D 1 - - - 0x012792 04:A782: 96        .byte < _off004_A696_67  ; 
- D 1 - - - 0x012793 04:A783: 99        .byte < _off004_A699_68  ; 
- D 1 - - - 0x012794 04:A784: 9C        .byte < _off004_A69C_69  ; 
- D 1 - - - 0x012795 04:A785: 9F        .byte < _off004_A69F_6A  ; 
- D 1 - - - 0x012796 04:A786: A2        .byte < _off004_A6A2_6B  ; 
- D 1 - - - 0x012797 04:A787: A5        .byte < _off004_A6A5_6C  ; 
- D 1 - - - 0x012798 04:A788: A8        .byte < _off004_A6A8_6D  ; 
- D 1 - - - 0x012799 04:A789: AB        .byte < _off004_A6AB_6E  ; 
- D 1 - - - 0x01279A 04:A78A: AE        .byte < _off004_A6AE_6F  ; 
- D 1 - - - 0x01279B 04:A78B: B2        .byte < _off004_A6B2_70  ; 
- D 1 - - - 0x01279C 04:A78C: B5        .byte < _off004_A6B5_71  ; 
- D 1 - - - 0x01279D 04:A78D: B8        .byte < _off004_A6B8_72  ; 
- D 1 - - - 0x01279E 04:A78E: BB        .byte < _off004_A6BB_73  ; 
- D 1 - - - 0x01279F 04:A78F: BE        .byte < _off004_A6BE_74  ; 
- D 1 - - - 0x0127A0 04:A790: C1        .byte < _off004_A6C1_75  ; 
- D 1 - - - 0x0127A1 04:A791: C4        .byte < _off004_A6C4_76  ; 
- D 1 - - - 0x0127A2 04:A792: C7        .byte < _off004_A6C7_77  ; 
- D 1 - - - 0x0127A3 04:A793: CA        .byte < _off004_A6CA_78  ; 
- D 1 - - - 0x0127A4 04:A794: CE        .byte < _off004_A6CE_79  ; 
- D 1 - - - 0x0127A5 04:A795: D1        .byte < _off004_A6D1_7A  ; 
- D 1 - - - 0x0127A6 04:A796: D4        .byte < _off004_A6D4_7B  ; 
- D 1 - - - 0x0127A7 04:A797: D8        .byte < _off004_A6D8_7C  ; 
- D 1 - - - 0x0127A8 04:A798: DB        .byte < _off004_A6DB_7D  ; 
- D 1 - - - 0x0127A9 04:A799: DE        .byte < _off004_A6DE_7E  ; 
- D 1 - - - 0x0127AA 04:A79A: E1        .byte < _off004_A6E1_7F  ; 
- - - - - - 0x0127AB 04:A79B: E4        .byte < _off004_A6E4_80  ; 
- - - - - - 0x0127AC 04:A79C: E7        .byte < _off004_A6E7_81  ; 
- - - - - - 0x0127AD 04:A79D: EA        .byte < _off004_A6EA_82  ; 
- D 1 - - - 0x0127AE 04:A79E: ED        .byte < _off004_A6ED_83  ; 
- D 1 - - - 0x0127AF 04:A79F: F0        .byte < _off004_A6F0_84  ; 
- D 1 - - - 0x0127B0 04:A7A0: F3        .byte < _off004_A6F3_85  ; 
- D 1 - - - 0x0127B1 04:A7A1: F8        .byte < _off004_A6F8_86  ; 
- D 1 - - - 0x0127B2 04:A7A2: 06        .byte < _off004_A706_87  ; 
- D 1 - - - 0x0127B3 04:A7A3: 0C        .byte < _off004_A70C_88  ; 
- D 1 - - - 0x0127B4 04:A7A4: 0F        .byte < _off004_A70F_89  ; 
- D 1 - - - 0x0127B5 04:A7A5: 13        .byte < _off004_A713_8A  ; 
- D 1 - - - 0x0127B6 04:A7A6: 17        .byte < _off004_A717_8B  ; 



tbl_A7A7_hi:
- - - - - - 0x0127B7 04:A7A7: A4        .byte > _off004_A48D_01   ; 
- D 1 - - - 0x0127B8 04:A7A8: A4        .byte > _off004_A48D_02   ; 
- D 1 - - - 0x0127B9 04:A7A9: A4        .byte > _off004_A493_03   ; 
- D 1 - - - 0x0127BA 04:A7AA: A4        .byte > _off004_A499_04   ; 
- D 1 - - - 0x0127BB 04:A7AB: A4        .byte > _off004_A4B5_05   ; 
- D 1 - - - 0x0127BC 04:A7AC: A4        .byte > _off004_A4B9_06   ; 
- D 1 - - - 0x0127BD 04:A7AD: A4        .byte > _off004_A4BD_07   ; 
- D 1 - - - 0x0127BE 04:A7AE: A4        .byte > _off004_A4C0_08   ; 
- D 1 - - - 0x0127BF 04:A7AF: A4        .byte > _off004_A49E_09   ; 
- D 1 - - - 0x0127C0 04:A7B0: A4        .byte > _off004_A4A1_0A   ; 
- D 1 - - - 0x0127C1 04:A7B1: A4        .byte > _off004_A4A9_0B   ; 
- D 1 - - - 0x0127C2 04:A7B2: A4        .byte > _off004_A4AF_0C   ; 
- - - - - - 0x0127C3 04:A7B3: A4        .byte > _off004_A4B5_0D   ; 
- - - - - - 0x0127C4 04:A7B4: A4        .byte > _off004_A4B9_0E   ; 
- - - - - - 0x0127C5 04:A7B5: A4        .byte > _off004_A4BD_0F   ; 
- - - - - - 0x0127C6 04:A7B6: A4        .byte > _off004_A4C0_10   ; 
- D 1 - - - 0x0127C7 04:A7B7: A4        .byte > _off004_A4C4_11   ; 
- D 1 - - - 0x0127C8 04:A7B8: A4        .byte > _off004_A4CD_12   ; 
- D 1 - - - 0x0127C9 04:A7B9: A4        .byte > _off004_A4D6_13   ; 
- D 1 - - - 0x0127CA 04:A7BA: A4        .byte > _off004_A4DB_14   ; 
- D 1 - - - 0x0127CB 04:A7BB: A4        .byte > _off004_A4E4_15   ; 
- D 1 - - - 0x0127CC 04:A7BC: A4        .byte > _off004_A4EB_16   ; 
- D 1 - - - 0x0127CD 04:A7BD: A4        .byte > _off004_A4EF_17   ; 
- D 1 - - - 0x0127CE 04:A7BE: A4        .byte > _off004_A4F5_18   ; 
- D 1 - - - 0x0127CF 04:A7BF: A4        .byte > _off004_A4FB_19   ; 
- D 1 - - - 0x0127D0 04:A7C0: A5        .byte > _off004_A501_1A   ; 
- D 1 - - - 0x0127D1 04:A7C1: A5        .byte > _off004_A507_1B   ; 
- D 1 - - - 0x0127D2 04:A7C2: A5        .byte > _off004_A50D_1C   ; 
- D 1 - - - 0x0127D3 04:A7C3: A5        .byte > _off004_A519_1D   ; 
- D 1 - - - 0x0127D4 04:A7C4: A5        .byte > _off004_A51D_1E   ; 
- D 1 - - - 0x0127D5 04:A7C5: A5        .byte > _off004_A520_1F   ; 
- D 1 - - - 0x0127D6 04:A7C6: A5        .byte > _off004_A524_20   ; 
- D 1 - - - 0x0127D7 04:A7C7: A5        .byte > _off004_A527_21   ; 
- D 1 - - - 0x0127D8 04:A7C8: A5        .byte > _off004_A52B_22   ; 
- D 1 - - - 0x0127D9 04:A7C9: A5        .byte > _off004_A52F_23   ; 
- D 1 - - - 0x0127DA 04:A7CA: A5        .byte > _off004_A532_24   ; 
- - - - - - 0x0127DB 04:A7CB: A5        .byte > _off004_A536_25   ; 
- - - - - - 0x0127DC 04:A7CC: A5        .byte > _off004_A53A_26   ; 
- D 1 - - - 0x0127DD 04:A7CD: A5        .byte > _off004_A53E_27   ; 
- D 1 - - - 0x0127DE 04:A7CE: A5        .byte > _off004_A542_28   ; 
- D 1 - - - 0x0127DF 04:A7CF: A5        .byte > _off004_A545_29   ; 
- D 1 - - - 0x0127E0 04:A7D0: A5        .byte > _off004_A549_2A   ; 
- - - - - - 0x0127E1 04:A7D1: A5        .byte > _off004_A54D_2B   ; 
- - - - - - 0x0127E2 04:A7D2: A5        .byte > _off004_A551_2C   ; 
- - - - - - 0x0127E3 04:A7D3: A5        .byte > _off004_A555_2D   ; 
- - - - - - 0x0127E4 04:A7D4: A5        .byte > _off004_A558_2E   ; 
- - - - - - 0x0127E5 04:A7D5: A5        .byte > _off004_A55C_2F   ; 
- D 1 - - - 0x0127E6 04:A7D6: A5        .byte > _off004_A560_30   ; 
- D 1 - - - 0x0127E7 04:A7D7: A5        .byte > _off004_A564_31   ; 
- D 1 - - - 0x0127E8 04:A7D8: A5        .byte > _off004_A568_32   ; 
- D 1 - - - 0x0127E9 04:A7D9: A5        .byte > _off004_A56C_33   ; 
- D 1 - - - 0x0127EA 04:A7DA: A5        .byte > _off004_A572_34   ; 
- D 1 - - - 0x0127EB 04:A7DB: A5        .byte > _off004_A576_35   ; 
- D 1 - - - 0x0127EC 04:A7DC: A5        .byte > _off004_A57A_36   ; 
- D 1 - - - 0x0127ED 04:A7DD: A5        .byte > _off004_A57E_37   ; 
- D 1 - - - 0x0127EE 04:A7DE: A5        .byte > _off004_A582_38   ; 
- D 1 - - - 0x0127EF 04:A7DF: A5        .byte > _off004_A586_39   ; 
- D 1 - - - 0x0127F0 04:A7E0: A5        .byte > _off004_A58A_3A   ; 
- D 1 - - - 0x0127F1 04:A7E1: A5        .byte > _off004_A58D_3B   ; 
- D 1 - - - 0x0127F2 04:A7E2: A5        .byte > _off004_A590_3C   ; 
- D 1 - - - 0x0127F3 04:A7E3: A5        .byte > _off004_A594_3D   ; 
- D 1 - - - 0x0127F4 04:A7E4: A5        .byte > _off004_A599_3E   ; 
- D 1 - - - 0x0127F5 04:A7E5: A5        .byte > _off004_A59F_3F   ; 
- D 1 - - - 0x0127F6 04:A7E6: A5        .byte > _off004_A5A4_40   ; 
- D 1 - - - 0x0127F7 04:A7E7: A5        .byte > _off004_A5AA_41   ; 
- D 1 - - - 0x0127F8 04:A7E8: A5        .byte > _off004_A5B7_42   ; 
- D 1 - - - 0x0127F9 04:A7E9: A5        .byte > _off004_A5BA_43   ; 
- D 1 - - - 0x0127FA 04:A7EA: A5        .byte > _off004_A5BD_44   ; 
- D 1 - - - 0x0127FB 04:A7EB: A5        .byte > _off004_A5C0_45   ; 
- D 1 - - - 0x0127FC 04:A7EC: A5        .byte > _off004_A5C6_46   ; 
- D 1 - - - 0x0127FD 04:A7ED: A5        .byte > _off004_A5CB_47   ; 
- D 1 - - - 0x0127FE 04:A7EE: A5        .byte > _off004_A5CE_48   ; 
- D 1 - - - 0x0127FF 04:A7EF: A5        .byte > _off004_A5D1_49   ; 
- D 1 - - - 0x012800 04:A7F0: A5        .byte > _off004_A5D4_4A   ; 
- D 1 - - - 0x012801 04:A7F1: A5        .byte > _off004_A5D7_4B   ; 
- D 1 - - - 0x012802 04:A7F2: A5        .byte > _off004_A5E4_4C   ; 
- D 1 - - - 0x012803 04:A7F3: A5        .byte > _off004_A5F1_4D   ; 
- D 1 - - - 0x012804 04:A7F4: A5        .byte > _off004_A5F4_4E   ; 
- D 1 - - - 0x012805 04:A7F5: A5        .byte > _off004_A5F7_4F   ; 
- D 1 - - - 0x012806 04:A7F6: A5        .byte > _off004_A5FD_50   ; 
- D 1 - - - 0x012807 04:A7F7: A6        .byte > _off004_A606_51   ; 
- D 1 - - - 0x012808 04:A7F8: A6        .byte > _off004_A60A_52   ; 
- D 1 - - - 0x012809 04:A7F9: A6        .byte > _off004_A611_53   ; 
- D 1 - - - 0x01280A 04:A7FA: A6        .byte > _off004_A616_54   ; 
- D 1 - - - 0x01280B 04:A7FB: A6        .byte > _off004_A61B_55   ; 
- D 1 - - - 0x01280C 04:A7FC: A6        .byte > _off004_A628_56   ; 
- D 1 - - - 0x01280D 04:A7FD: A6        .byte > _off004_A62C_57   ; 
- D 1 - - - 0x01280E 04:A7FE: A6        .byte > _off004_A635_58   ; 
- D 1 - - - 0x01280F 04:A7FF: A6        .byte > _off004_A639_59   ; 
- D 1 - - - 0x012810 04:A800: A6        .byte > _off004_A63D_5A   ; 
- D 1 - - - 0x012811 04:A801: A6        .byte > _off004_A648_5B   ; 
- D 1 - - - 0x012812 04:A802: A6        .byte > _off004_A64D_5C   ; 
- D 1 - - - 0x012813 04:A803: A6        .byte > _off004_A652_5D   ; 
- D 1 - - - 0x012814 04:A804: A6        .byte > _off004_A65E_5E   ; 
- D 1 - - - 0x012815 04:A805: A6        .byte > _off004_A66A_5F   ; 
- D 1 - - - 0x012816 04:A806: A6        .byte > _off004_A670_60   ; 
- D 1 - - - 0x012817 04:A807: A6        .byte > _off004_A684_61   ; 
- D 1 - - - 0x012818 04:A808: A6        .byte > _off004_A687_62   ; 
- D 1 - - - 0x012819 04:A809: A6        .byte > _off004_A68A_63   ; 
- D 1 - - - 0x01281A 04:A80A: A6        .byte > _off004_A68D_64   ; 
- D 1 - - - 0x01281B 04:A80B: A6        .byte > _off004_A690_65   ; 
- D 1 - - - 0x01281C 04:A80C: A6        .byte > _off004_A693_66   ; 
- D 1 - - - 0x01281D 04:A80D: A6        .byte > _off004_A696_67   ; 
- D 1 - - - 0x01281E 04:A80E: A6        .byte > _off004_A699_68   ; 
- D 1 - - - 0x01281F 04:A80F: A6        .byte > _off004_A69C_69   ; 
- D 1 - - - 0x012820 04:A810: A6        .byte > _off004_A69F_6A   ; 
- D 1 - - - 0x012821 04:A811: A6        .byte > _off004_A6A2_6B   ; 
- D 1 - - - 0x012822 04:A812: A6        .byte > _off004_A6A5_6C   ; 
- D 1 - - - 0x012823 04:A813: A6        .byte > _off004_A6A8_6D   ; 
- D 1 - - - 0x012824 04:A814: A6        .byte > _off004_A6AB_6E   ; 
- D 1 - - - 0x012825 04:A815: A6        .byte > _off004_A6AE_6F   ; 
- D 1 - - - 0x012826 04:A816: A6        .byte > _off004_A6B2_70   ; 
- D 1 - - - 0x012827 04:A817: A6        .byte > _off004_A6B5_71   ; 
- D 1 - - - 0x012828 04:A818: A6        .byte > _off004_A6B8_72   ; 
- D 1 - - - 0x012829 04:A819: A6        .byte > _off004_A6BB_73   ; 
- D 1 - - - 0x01282A 04:A81A: A6        .byte > _off004_A6BE_74   ; 
- D 1 - - - 0x01282B 04:A81B: A6        .byte > _off004_A6C1_75   ; 
- D 1 - - - 0x01282C 04:A81C: A6        .byte > _off004_A6C4_76   ; 
- D 1 - - - 0x01282D 04:A81D: A6        .byte > _off004_A6C7_77   ; 
- D 1 - - - 0x01282E 04:A81E: A6        .byte > _off004_A6CA_78   ; 
- D 1 - - - 0x01282F 04:A81F: A6        .byte > _off004_A6CE_79   ; 
- D 1 - - - 0x012830 04:A820: A6        .byte > _off004_A6D1_7A   ; 
- D 1 - - - 0x012831 04:A821: A6        .byte > _off004_A6D4_7B   ; 
- D 1 - - - 0x012832 04:A822: A6        .byte > _off004_A6D8_7C   ; 
- D 1 - - - 0x012833 04:A823: A6        .byte > _off004_A6DB_7D   ; 
- D 1 - - - 0x012834 04:A824: A6        .byte > _off004_A6DE_7E   ; 
- D 1 - - - 0x012835 04:A825: A6        .byte > _off004_A6E1_7F   ; 
- - - - - - 0x012836 04:A826: A6        .byte > _off004_A6E4_80   ; 
- - - - - - 0x012837 04:A827: A6        .byte > _off004_A6E7_81   ; 
- - - - - - 0x012838 04:A828: A6        .byte > _off004_A6EA_82   ; 
- D 1 - - - 0x012839 04:A829: A6        .byte > _off004_A6ED_83   ; 
- D 1 - - - 0x01283A 04:A82A: A6        .byte > _off004_A6F0_84   ; 
- D 1 - - - 0x01283B 04:A82B: A6        .byte > _off004_A6F3_85   ; 
- D 1 - - - 0x01283C 04:A82C: A6        .byte > _off004_A6F8_86   ; 
- D 1 - - - 0x01283D 04:A82D: A7        .byte > _off004_A706_87   ; 
- D 1 - - - 0x01283E 04:A82E: A7        .byte > _off004_A70C_88   ; 
- D 1 - - - 0x01283F 04:A82F: A7        .byte > _off004_A70F_89   ; 
- D 1 - - - 0x012840 04:A830: A7        .byte > _off004_A713_8A   ; 
- D 1 - - - 0x012841 04:A831: A7        .byte > _off004_A717_8B   ; 


; bzk garbage
- - - - - - 0x012842 04:A832: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012850 04:A840: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012860 04:A850: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FE, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012870 04:A860: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012880 04:A870: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012890 04:A880: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0128A0 04:A890: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0128B0 04:A8A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FE, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0128C0 04:A8B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0128D0 04:A8C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0128E0 04:A8D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0128F0 04:A8E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012900 04:A8F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012910 04:A900: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012920 04:A910: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012930 04:A920: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012940 04:A930: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012950 04:A940: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012960 04:A950: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012970 04:A960: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012980 04:A970: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012990 04:A980: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0129A0 04:A990: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0129B0 04:A9A0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0129C0 04:A9B0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0129D0 04:A9C0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0129E0 04:A9D0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0129F0 04:A9E0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012A00 04:A9F0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012A10 04:AA00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012A20 04:AA10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012A30 04:AA20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012A40 04:AA30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012A50 04:AA40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012A60 04:AA50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012A70 04:AA60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012A80 04:AA70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012A90 04:AA80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012AA0 04:AA90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012AB0 04:AAA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012AC0 04:AAB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012AD0 04:AAC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012AE0 04:AAD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FE, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012AF0 04:AAE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012B00 04:AAF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012B10 04:AB00: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012B20 04:AB10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012B30 04:AB20: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012B40 04:AB30: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012B50 04:AB40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012B60 04:AB50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012B70 04:AB60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012B80 04:AB70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012B90 04:AB80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012BA0 04:AB90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012BB0 04:ABA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012BC0 04:ABB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012BD0 04:ABC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012BE0 04:ABD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012BF0 04:ABE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012C00 04:ABF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012C10 04:AC00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012C20 04:AC10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FD, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012C30 04:AC20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012C40 04:AC30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012C50 04:AC40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012C60 04:AC50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012C70 04:AC60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012C80 04:AC70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $EF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012C90 04:AC80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FE, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012CA0 04:AC90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012CB0 04:ACA0: DF        .byte $DF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012CC0 04:ACB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012CD0 04:ACC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012CE0 04:ACD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012CF0 04:ACE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012D00 04:ACF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012D10 04:AD00: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012D20 04:AD10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012D30 04:AD20: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012D40 04:AD30: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012D50 04:AD40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012D60 04:AD50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012D70 04:AD60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012D80 04:AD70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012D90 04:AD80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012DA0 04:AD90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012DB0 04:ADA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012DC0 04:ADB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012DD0 04:ADC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012DE0 04:ADD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012DF0 04:ADE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012E00 04:ADF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012E10 04:AE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012E20 04:AE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012E30 04:AE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012E40 04:AE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012E50 04:AE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012E60 04:AE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012E70 04:AE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012E80 04:AE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012E90 04:AE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012EA0 04:AE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012EB0 04:AEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012EC0 04:AEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012ED0 04:AEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012EE0 04:AED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012EF0 04:AEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012F00 04:AEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012F10 04:AF00: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012F20 04:AF10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012F30 04:AF20: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012F40 04:AF30: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012F50 04:AF40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012F60 04:AF50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012F70 04:AF60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012F80 04:AF70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012F90 04:AF80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012FA0 04:AF90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012FB0 04:AFA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012FC0 04:AFB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012FD0 04:AFC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012FE0 04:AFD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x012FF0 04:AFE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013000 04:AFF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



tbl_0x013010_palette:
; 00 
; background
- D 1 - I - 0x013010 04:B000: 0F        .byte $0F, $20, $26, $33   ; 
- D 1 - I - 0x013014 04:B004: 0F        .byte $0F, $20, $33, $12   ; 
- D 1 - I - 0x013018 04:B008: 0F        .byte $0F, $28, $38, $12   ; 
- D 1 - I - 0x01301C 04:B00C: 0F        .byte $0F, $36, $26, $12   ; 
; sprites
- D 1 - I - 0x013020 04:B010: 0F        .byte $0F, $05, $15, $35   ; 
- D 1 - I - 0x013024 04:B014: 0F        .byte $0F, $12, $26, $36   ; 
- D 1 - I - 0x013028 04:B018: 0F        .byte $0F, $12, $33, $20   ; 
- D 1 - I - 0x01302C 04:B01C: 0F        .byte $0F, $00, $00, $00   ; 



; 01 
; background
- D 1 - I - 0x013030 04:B020: 0F        .byte $0F, $20, $21, $11   ; 
- D 1 - I - 0x013034 04:B024: 0F        .byte $0F, $36, $16, $11   ; 
- D 1 - I - 0x013038 04:B028: 0F        .byte $0F, $17, $16, $11   ; 
- D 1 - I - 0x01303C 04:B02C: 0F        .byte $0F, $00, $00, $00   ; 
; sprites
- D 1 - I - 0x013040 04:B030: 0F        .byte $0F, $0F, $20, $27   ; 
- D 1 - I - 0x013044 04:B034: 0F        .byte $0F, $0F, $37, $26   ; 
- D 1 - I - 0x013048 04:B038: 0F        .byte $0F, $20, $0F, $16   ; 
- D 1 - I - 0x01304C 04:B03C: 0F        .byte $0F, $35, $16, $06   ; 



; 02 
; background
- D 1 - I - 0x013050 04:B040: 0F        .byte $0F, $20, $24, $34   ; 
- D 1 - I - 0x013054 04:B044: 0F        .byte $0F, $03, $23, $33   ; 
- D 1 - I - 0x013058 04:B048: 0F        .byte $0F, $00, $00, $00   ; 
- D 1 - I - 0x01305C 04:B04C: 0F        .byte $0F, $00, $00, $00   ; 
; sprites
- D 1 - I - 0x013060 04:B050: 0F        .byte $0F, $05, $14, $36   ; 
- D 1 - I - 0x013064 04:B054: 0F        .byte $0F, $0B, $2B, $20   ; 
- D 1 - I - 0x013068 04:B058: 0F        .byte $0F, $03, $23, $33   ; 
- D 1 - I - 0x01306C 04:B05C: 0F        .byte $0F, $03, $23, $33   ; 



; 03 
; background
- D 1 - I - 0x013070 04:B060: 0F        .byte $0F, $20, $36, $23   ; 
- D 1 - I - 0x013074 04:B064: 0F        .byte $0F, $36, $16, $23   ; 
- D 1 - I - 0x013078 04:B068: 0F        .byte $0F, $20, $36, $16   ; 
- D 1 - I - 0x01307C 04:B06C: 0F        .byte $0F, $31, $21, $11   ; 
; sprites
- D 1 - I - 0x013080 04:B070: 0F        .byte $0F, $0F, $20, $27   ; 
- D 1 - I - 0x013084 04:B074: 0F        .byte $0F, $0F, $37, $26   ; 
- D 1 - I - 0x013088 04:B078: 0F        .byte $0F, $20, $0F, $16   ; 
- D 1 - I - 0x01308C 04:B07C: 0F        .byte $0F, $35, $16, $06   ; 



; 04 
; background
- D 1 - I - 0x013090 04:B080: 0F        .byte $0F, $20, $36, $21   ; 
- D 1 - I - 0x013094 04:B084: 0F        .byte $0F, $36, $16, $21   ; 
- D 1 - I - 0x013098 04:B088: 0F        .byte $0F, $20, $36, $16   ; 
- D 1 - I - 0x01309C 04:B08C: 0F        .byte $0F, $36, $2B, $21   ; 
; sprites
- D 1 - I - 0x0130A0 04:B090: 0F        .byte $0F, $00, $00, $00   ; 
- D 1 - I - 0x0130A4 04:B094: 0F        .byte $0F, $00, $00, $00   ; 
- D 1 - I - 0x0130A8 04:B098: 0F        .byte $0F, $20, $0F, $16   ; 
- D 1 - I - 0x0130AC 04:B09C: 0F        .byte $0F, $20, $21, $11   ; 



; 05 
; background
- D 1 - I - 0x0130B0 04:B0A0: 0F        .byte $0F, $20, $2C, $10   ; 
- D 1 - I - 0x0130B4 04:B0A4: 0F        .byte $0F, $20, $2C, $22   ; 
- D 1 - I - 0x0130B8 04:B0A8: 0F        .byte $0F, $36, $27, $2B   ; 
- D 1 - I - 0x0130BC 04:B0AC: 0F        .byte $0F, $3A, $36, $2B   ; 
; sprites
- D 1 - I - 0x0130C0 04:B0B0: 0F        .byte $0F, $05, $14, $36   ; 
- D 1 - I - 0x0130C4 04:B0B4: 0F        .byte $0F, $0B, $2B, $20   ; 
- D 1 - I - 0x0130C8 04:B0B8: 0F        .byte $0F, $15, $26, $37   ; 
- D 1 - I - 0x0130CC 04:B0BC: 0F        .byte $0F, $00, $10, $20   ; 



; 06 
; background
- D 1 - I - 0x0130D0 04:B0C0: 0F        .byte $0F, $20, $36, $34   ; 
- D 1 - I - 0x0130D4 04:B0C4: 0F        .byte $0F, $36, $16, $34   ; 
- D 1 - I - 0x0130D8 04:B0C8: 0F        .byte $0F, $20, $36, $16   ; 
- D 1 - I - 0x0130DC 04:B0CC: 0F        .byte $0F, $00, $00, $00   ; 
; sprites
- D 1 - I - 0x0130E0 04:B0D0: 0F        .byte $0F, $0F, $20, $27   ; 
- D 1 - I - 0x0130E4 04:B0D4: 0F        .byte $0F, $0F, $37, $26   ; 
- D 1 - I - 0x0130E8 04:B0D8: 0F        .byte $0F, $20, $0F, $16   ; 
- D 1 - I - 0x0130EC 04:B0DC: 0F        .byte $0F, $3B, $1B, $1B   ; 



; 07 
; background
- D 1 - I - 0x0130F0 04:B0E0: 0F        .byte $0F, $20, $34, $26   ; 
- D 1 - I - 0x0130F4 04:B0E4: 0F        .byte $0F, $36, $26, $38   ; 
- D 1 - I - 0x0130F8 04:B0E8: 0F        .byte $0F, $20, $26, $38   ; 
- D 1 - I - 0x0130FC 04:B0EC: 0F        .byte $0F, $00, $00, $00   ; 
; sprites
- D 1 - I - 0x013100 04:B0F0: 0F        .byte $0F, $05, $14, $36   ; 
- D 1 - I - 0x013104 04:B0F4: 0F        .byte $0F, $0B, $2B, $20   ; 
- D 1 - I - 0x013108 04:B0F8: 0F        .byte $0F, $16, $26, $38   ; 
- D 1 - I - 0x01310C 04:B0FC: 0F        .byte $0F, $22, $31, $20   ; 



; 08 
; background
- D 1 - I - 0x013110 04:B100: 0F        .byte $0F, $20, $31, $21   ; 
- D 1 - I - 0x013114 04:B104: 0F        .byte $0F, $36, $16, $21   ; 
- D 1 - I - 0x013118 04:B108: 0F        .byte $0F, $00, $00, $00   ; 
- D 1 - I - 0x01311C 04:B10C: 0F        .byte $0F, $00, $00, $00   ; 
; sprites
- D 1 - I - 0x013120 04:B110: 0F        .byte $0F, $0F, $20, $27   ; 
- D 1 - I - 0x013124 04:B114: 0F        .byte $0F, $0F, $37, $26   ; 
- D 1 - I - 0x013128 04:B118: 0F        .byte $0F, $20, $0F, $16   ; 
- D 1 - I - 0x01312C 04:B11C: 0F        .byte $0F, $35, $16, $06   ; 



sub_0x013130:
C - - - - - 0x013130 04:B120: B9 2B B1  LDA tbl_B12B_lo,Y
C - - - - - 0x013133 04:B123: 85 00     STA ram_0000
C - - - - - 0x013135 04:B125: B9 34 B1  LDA tbl_B134_hi,Y
C - - - - - 0x013138 04:B128: 85 01     STA ram_0001
C - - - - - 0x01313A 04:B12A: 60        RTS



tbl_B12B_lo:
- D 1 - - - 0x01313B 04:B12B: 3D        .byte < _off006_B13D_00   ; 
- D 1 - - - 0x01313C 04:B12C: 92        .byte < _off006_B192_01   ; 
- D 1 - - - 0x01313D 04:B12D: B7        .byte < _off006_B1B7_02   ; 
- D 1 - - - 0x01313E 04:B12E: E0        .byte < _off006_B1E0_03   ; 
- D 1 - - - 0x01313F 04:B12F: FD        .byte < _off006_B1FD_04   ; 
- D 1 - - - 0x013140 04:B130: 56        .byte < _off006_B256_05   ; 
- D 1 - - - 0x013141 04:B131: 87        .byte < _off006_B287_06   ; 
- D 1 - - - 0x013142 04:B132: 68        .byte < _off006_B368_07   ; 
- D 1 - - - 0x013143 04:B133: 71        .byte < _off006_B371_08   ; 



tbl_B134_hi:
- D 1 - - - 0x013144 04:B134: B1        .byte > _off006_B13D_00   ; 
- D 1 - - - 0x013145 04:B135: B1        .byte > _off006_B192_01   ; 
- D 1 - - - 0x013146 04:B136: B1        .byte > _off006_B1B7_02   ; 
- D 1 - - - 0x013147 04:B137: B1        .byte > _off006_B1E0_03   ; 
- D 1 - - - 0x013148 04:B138: B1        .byte > _off006_B1FD_04   ; 
- D 1 - - - 0x013149 04:B139: B2        .byte > _off006_B256_05   ; 
- D 1 - - - 0x01314A 04:B13A: B2        .byte > _off006_B287_06   ; 
- D 1 - - - 0x01314B 04:B13B: B3        .byte > _off006_B368_07   ; 
- D 1 - - - 0x01314C 04:B13C: B3        .byte > _off006_B371_08   ; 



_off006_B13D_00:
- D 1 - I - 0x01314D 04:B13D: 44        .byte $44   ; 
- D 1 - I - 0x01314E 04:B13E: C0        .byte $C0   ; 
- D 1 - I - 0x01314F 04:B13F: 00        .byte $00   ; 
- D 1 - I - 0x013150 04:B140: 65        .byte $65   ; 
- D 1 - I - 0x013151 04:B141: 44        .byte $44   ; 
- D 1 - I - 0x013152 04:B142: C1        .byte $C1   ; 
- D 1 - I - 0x013153 04:B143: 00        .byte $00   ; 
- D 1 - I - 0x013154 04:B144: 6D        .byte $6D   ; 
- D 1 - I - 0x013155 04:B145: 4C        .byte $4C   ; 
- D 1 - I - 0x013156 04:B146: C2        .byte $C2   ; 
- D 1 - I - 0x013157 04:B147: 00        .byte $00   ; 
- D 1 - I - 0x013158 04:B148: 5D        .byte $5D   ; 
- D 1 - I - 0x013159 04:B149: 4C        .byte $4C   ; 
- D 1 - I - 0x01315A 04:B14A: C3        .byte $C3   ; 
- D 1 - I - 0x01315B 04:B14B: 00        .byte $00   ; 
- D 1 - I - 0x01315C 04:B14C: 65        .byte $65   ; 
- D 1 - I - 0x01315D 04:B14D: 54        .byte $54   ; 
- D 1 - I - 0x01315E 04:B14E: C4        .byte $C4   ; 
- D 1 - I - 0x01315F 04:B14F: 00        .byte $00   ; 
- D 1 - I - 0x013160 04:B150: 5D        .byte $5D   ; 
- D 1 - I - 0x013161 04:B151: 4F        .byte $4F   ; 
- D 1 - I - 0x013162 04:B152: C5        .byte $C5   ; 
- D 1 - I - 0x013163 04:B153: 02        .byte $02   ; 
- D 1 - I - 0x013164 04:B154: 80        .byte $80   ; 
- D 1 - I - 0x013165 04:B155: 57        .byte $57   ; 
- D 1 - I - 0x013166 04:B156: C6        .byte $C6   ; 
- D 1 - I - 0x013167 04:B157: 02        .byte $02   ; 
- D 1 - I - 0x013168 04:B158: 70        .byte $70   ; 
- D 1 - I - 0x013169 04:B159: 57        .byte $57   ; 
- D 1 - I - 0x01316A 04:B15A: C7        .byte $C7   ; 
- D 1 - I - 0x01316B 04:B15B: 02        .byte $02   ; 
- D 1 - I - 0x01316C 04:B15C: 94        .byte $94   ; 
- D 1 - I - 0x01316D 04:B15D: 5F        .byte $5F   ; 
- D 1 - I - 0x01316E 04:B15E: C8        .byte $C8   ; 
- D 1 - I - 0x01316F 04:B15F: 02        .byte $02   ; 
- D 1 - I - 0x013170 04:B160: 60        .byte $60   ; 
- D 1 - I - 0x013171 04:B161: 67        .byte $67   ; 
- D 1 - I - 0x013172 04:B162: C9        .byte $C9   ; 
- D 1 - I - 0x013173 04:B163: 02        .byte $02   ; 
- D 1 - I - 0x013174 04:B164: 60        .byte $60   ; 
- D 1 - I - 0x013175 04:B165: 67        .byte $67   ; 
- D 1 - I - 0x013176 04:B166: CA        .byte $CA   ; 
- D 1 - I - 0x013177 04:B167: 02        .byte $02   ; 
- D 1 - I - 0x013178 04:B168: 68        .byte $68   ; 
- D 1 - I - 0x013179 04:B169: 5F        .byte $5F   ; 
- D 1 - I - 0x01317A 04:B16A: CB        .byte $CB   ; 
- D 1 - I - 0x01317B 04:B16B: 02        .byte $02   ; 
- D 1 - I - 0x01317C 04:B16C: 88        .byte $88   ; 
- D 1 - I - 0x01317D 04:B16D: 67        .byte $67   ; 
- D 1 - I - 0x01317E 04:B16E: CC        .byte $CC   ; 
- D 1 - I - 0x01317F 04:B16F: 02        .byte $02   ; 
- D 1 - I - 0x013180 04:B170: 88        .byte $88   ; 
- D 1 - I - 0x013181 04:B171: 5F        .byte $5F   ; 
- D 1 - I - 0x013182 04:B172: CD        .byte $CD   ; 
- D 1 - I - 0x013183 04:B173: 01        .byte $01   ; 
- D 1 - I - 0x013184 04:B174: 90        .byte $90   ; 
- D 1 - I - 0x013185 04:B175: 6F        .byte $6F   ; 
- D 1 - I - 0x013186 04:B176: CE        .byte $CE   ; 
- D 1 - I - 0x013187 04:B177: 01        .byte $01   ; 
- D 1 - I - 0x013188 04:B178: 78        .byte $78   ; 
- D 1 - I - 0x013189 04:B179: 6F        .byte $6F   ; 
- D 1 - I - 0x01318A 04:B17A: CF        .byte $CF   ; 
- D 1 - I - 0x01318B 04:B17B: 01        .byte $01   ; 
- D 1 - I - 0x01318C 04:B17C: 80        .byte $80   ; 
- D 1 - I - 0x01318D 04:B17D: 6F        .byte $6F   ; 
- D 1 - I - 0x01318E 04:B17E: FB        .byte $FB   ; 
- D 1 - I - 0x01318F 04:B17F: 01        .byte $01   ; 
- D 1 - I - 0x013190 04:B180: 88        .byte $88   ; 
- D 1 - I - 0x013191 04:B181: 6F        .byte $6F   ; 
- D 1 - I - 0x013192 04:B182: FC        .byte $FC   ; 
- D 1 - I - 0x013193 04:B183: 01        .byte $01   ; 
- D 1 - I - 0x013194 04:B184: 90        .byte $90   ; 
- D 1 - I - 0x013195 04:B185: 77        .byte $77   ; 
- D 1 - I - 0x013196 04:B186: FD        .byte $FD   ; 
- D 1 - I - 0x013197 04:B187: 01        .byte $01   ; 
- D 1 - I - 0x013198 04:B188: 88        .byte $88   ; 
- D 1 - I - 0x013199 04:B189: 77        .byte $77   ; 
- D 1 - I - 0x01319A 04:B18A: FE        .byte $FE   ; 
- D 1 - I - 0x01319B 04:B18B: 01        .byte $01   ; 
- D 1 - I - 0x01319C 04:B18C: 90        .byte $90   ; 
- D 1 - I - 0x01319D 04:B18D: 77        .byte $77   ; 
- D 1 - I - 0x01319E 04:B18E: FF        .byte $FF   ; 
- D 1 - I - 0x01319F 04:B18F: 01        .byte $01   ; 
- D 1 - I - 0x0131A0 04:B190: 6F        .byte $6F   ; 
- D 1 - I - 0x0131A1 04:B191: 00        .byte $00   ; 



_off006_B192_01:
- D 1 - I - 0x0131A2 04:B192: 57        .byte $57   ; 
- D 1 - I - 0x0131A3 04:B193: CD        .byte $CD   ; 
- D 1 - I - 0x0131A4 04:B194: 02        .byte $02   ; 
- D 1 - I - 0x0131A5 04:B195: 69        .byte $69   ; 
- D 1 - I - 0x0131A6 04:B196: 6F        .byte $6F   ; 
- D 1 - I - 0x0131A7 04:B197: C0        .byte $C0   ; 
- D 1 - I - 0x0131A8 04:B198: 03        .byte $03   ; 
- D 1 - I - 0x0131A9 04:B199: 58        .byte $58   ; 
- D 1 - I - 0x0131AA 04:B19A: 6F        .byte $6F   ; 
- D 1 - I - 0x0131AB 04:B19B: C1        .byte $C1   ; 
- D 1 - I - 0x0131AC 04:B19C: 03        .byte $03   ; 
- D 1 - I - 0x0131AD 04:B19D: 60        .byte $60   ; 
- D 1 - I - 0x0131AE 04:B19E: 6F        .byte $6F   ; 
- D 1 - I - 0x0131AF 04:B19F: C2        .byte $C2   ; 
- D 1 - I - 0x0131B0 04:B1A0: 03        .byte $03   ; 
- D 1 - I - 0x0131B1 04:B1A1: 6A        .byte $6A   ; 
- D 1 - I - 0x0131B2 04:B1A2: 77        .byte $77   ; 
- D 1 - I - 0x0131B3 04:B1A3: C3        .byte $C3   ; 
- D 1 - I - 0x0131B4 04:B1A4: 03        .byte $03   ; 
- D 1 - I - 0x0131B5 04:B1A5: 50        .byte $50   ; 
- D 1 - I - 0x0131B6 04:B1A6: 77        .byte $77   ; 
- D 1 - I - 0x0131B7 04:B1A7: C4        .byte $C4   ; 
- D 1 - I - 0x0131B8 04:B1A8: 03        .byte $03   ; 
- D 1 - I - 0x0131B9 04:B1A9: 58        .byte $58   ; 
- D 1 - I - 0x0131BA 04:B1AA: 77        .byte $77   ; 
- D 1 - I - 0x0131BB 04:B1AB: C5        .byte $C5   ; 
- D 1 - I - 0x0131BC 04:B1AC: 03        .byte $03   ; 
- D 1 - I - 0x0131BD 04:B1AD: 60        .byte $60   ; 
- D 1 - I - 0x0131BE 04:B1AE: 77        .byte $77   ; 
- D 1 - I - 0x0131BF 04:B1AF: C6        .byte $C6   ; 
- D 1 - I - 0x0131C0 04:B1B0: 03        .byte $03   ; 
- D 1 - I - 0x0131C1 04:B1B1: 68        .byte $68   ; 
- D 1 - I - 0x0131C2 04:B1B2: 77        .byte $77   ; 
- D 1 - I - 0x0131C3 04:B1B3: C7        .byte $C7   ; 
- D 1 - I - 0x0131C4 04:B1B4: 03        .byte $03   ; 
- D 1 - I - 0x0131C5 04:B1B5: 70        .byte $70   ; 
- D 1 - I - 0x0131C6 04:B1B6: 00        .byte $00   ; 



_off006_B1B7_02:
- D 1 - I - 0x0131C7 04:B1B7: 57        .byte $57   ; 
- D 1 - I - 0x0131C8 04:B1B8: CD        .byte $CD   ; 
- D 1 - I - 0x0131C9 04:B1B9: 02        .byte $02   ; 
- D 1 - I - 0x0131CA 04:B1BA: 69        .byte $69   ; 
- D 1 - I - 0x0131CB 04:B1BB: 4E        .byte $4E   ; 
- D 1 - I - 0x0131CC 04:B1BC: CE        .byte $CE   ; 
- D 1 - I - 0x0131CD 04:B1BD: 02        .byte $02   ; 
- D 1 - I - 0x0131CE 04:B1BE: 90        .byte $90   ; 
- D 1 - I - 0x0131CF 04:B1BF: 6F        .byte $6F   ; 
- D 1 - I - 0x0131D0 04:B1C0: C0        .byte $C0   ; 
- D 1 - I - 0x0131D1 04:B1C1: 03        .byte $03   ; 
- D 1 - I - 0x0131D2 04:B1C2: 58        .byte $58   ; 
- D 1 - I - 0x0131D3 04:B1C3: 6F        .byte $6F   ; 
- D 1 - I - 0x0131D4 04:B1C4: C1        .byte $C1   ; 
- D 1 - I - 0x0131D5 04:B1C5: 03        .byte $03   ; 
- D 1 - I - 0x0131D6 04:B1C6: 60        .byte $60   ; 
- D 1 - I - 0x0131D7 04:B1C7: 6F        .byte $6F   ; 
- D 1 - I - 0x0131D8 04:B1C8: C2        .byte $C2   ; 
- D 1 - I - 0x0131D9 04:B1C9: 03        .byte $03   ; 
- D 1 - I - 0x0131DA 04:B1CA: 6A        .byte $6A   ; 
- D 1 - I - 0x0131DB 04:B1CB: 77        .byte $77   ; 
- D 1 - I - 0x0131DC 04:B1CC: C3        .byte $C3   ; 
- D 1 - I - 0x0131DD 04:B1CD: 03        .byte $03   ; 
- D 1 - I - 0x0131DE 04:B1CE: 50        .byte $50   ; 
- D 1 - I - 0x0131DF 04:B1CF: 77        .byte $77   ; 
- D 1 - I - 0x0131E0 04:B1D0: C4        .byte $C4   ; 
- D 1 - I - 0x0131E1 04:B1D1: 03        .byte $03   ; 
- D 1 - I - 0x0131E2 04:B1D2: 58        .byte $58   ; 
- D 1 - I - 0x0131E3 04:B1D3: 77        .byte $77   ; 
- D 1 - I - 0x0131E4 04:B1D4: C5        .byte $C5   ; 
- D 1 - I - 0x0131E5 04:B1D5: 03        .byte $03   ; 
- D 1 - I - 0x0131E6 04:B1D6: 60        .byte $60   ; 
- D 1 - I - 0x0131E7 04:B1D7: 77        .byte $77   ; 
- D 1 - I - 0x0131E8 04:B1D8: C6        .byte $C6   ; 
- D 1 - I - 0x0131E9 04:B1D9: 03        .byte $03   ; 
- D 1 - I - 0x0131EA 04:B1DA: 68        .byte $68   ; 
- D 1 - I - 0x0131EB 04:B1DB: 77        .byte $77   ; 
- D 1 - I - 0x0131EC 04:B1DC: C7        .byte $C7   ; 
- D 1 - I - 0x0131ED 04:B1DD: 03        .byte $03   ; 
- D 1 - I - 0x0131EE 04:B1DE: 70        .byte $70   ; 
- D 1 - I - 0x0131EF 04:B1DF: 00        .byte $00   ; 



_off006_B1E0_03:
- D 1 - I - 0x0131F0 04:B1E0: 4E        .byte $4E   ; 
- D 1 - I - 0x0131F1 04:B1E1: CF        .byte $CF   ; 
- D 1 - I - 0x0131F2 04:B1E2: 02        .byte $02   ; 
- D 1 - I - 0x0131F3 04:B1E3: 90        .byte $90   ; 
- D 1 - I - 0x0131F4 04:B1E4: 57        .byte $57   ; 
- D 1 - I - 0x0131F5 04:B1E5: D0        .byte $D0   ; 
- D 1 - I - 0x0131F6 04:B1E6: 02        .byte $02   ; 
- D 1 - I - 0x0131F7 04:B1E7: 90        .byte $90   ; 
- D 1 - I - 0x0131F8 04:B1E8: 4F        .byte $4F   ; 
- D 1 - I - 0x0131F9 04:B1E9: C8        .byte $C8   ; 
- D 1 - I - 0x0131FA 04:B1EA: 03        .byte $03   ; 
- D 1 - I - 0x0131FB 04:B1EB: 48        .byte $48   ; 
- D 1 - I - 0x0131FC 04:B1EC: 4F        .byte $4F   ; 
- D 1 - I - 0x0131FD 04:B1ED: C9        .byte $C9   ; 
- D 1 - I - 0x0131FE 04:B1EE: 03        .byte $03   ; 
- D 1 - I - 0x0131FF 04:B1EF: 50        .byte $50   ; 
- D 1 - I - 0x013200 04:B1F0: 57        .byte $57   ; 
- D 1 - I - 0x013201 04:B1F1: CA        .byte $CA   ; 
- D 1 - I - 0x013202 04:B1F2: 03        .byte $03   ; 
- D 1 - I - 0x013203 04:B1F3: 50        .byte $50   ; 
- D 1 - I - 0x013204 04:B1F4: 57        .byte $57   ; 
- D 1 - I - 0x013205 04:B1F5: CB        .byte $CB   ; 
- D 1 - I - 0x013206 04:B1F6: 03        .byte $03   ; 
- D 1 - I - 0x013207 04:B1F7: 58        .byte $58   ; 
- D 1 - I - 0x013208 04:B1F8: 57        .byte $57   ; 
- D 1 - I - 0x013209 04:B1F9: CC        .byte $CC   ; 
- D 1 - I - 0x01320A 04:B1FA: 03        .byte $03   ; 
- D 1 - I - 0x01320B 04:B1FB: 60        .byte $60   ; 
- D 1 - I - 0x01320C 04:B1FC: 00        .byte $00   ; 



_off006_B1FD_04:
- D 1 - I - 0x01320D 04:B1FD: 3F        .byte $3F   ; 
- D 1 - I - 0x01320E 04:B1FE: E4        .byte $E4   ; 
- D 1 - I - 0x01320F 04:B1FF: 02        .byte $02   ; 
- D 1 - I - 0x013210 04:B200: 67        .byte $67   ; 
- D 1 - I - 0x013211 04:B201: 47        .byte $47   ; 
- D 1 - I - 0x013212 04:B202: E5        .byte $E5   ; 
- D 1 - I - 0x013213 04:B203: 02        .byte $02   ; 
- D 1 - I - 0x013214 04:B204: 67        .byte $67   ; 
- D 1 - I - 0x013215 04:B205: 3F        .byte $3F   ; 
- D 1 - I - 0x013216 04:B206: C0        .byte $C0   ; 
- D 1 - I - 0x013217 04:B207: 03        .byte $03   ; 
- D 1 - I - 0x013218 04:B208: 60        .byte $60   ; 
- D 1 - I - 0x013219 04:B209: 47        .byte $47   ; 
- D 1 - I - 0x01321A 04:B20A: C1        .byte $C1   ; 
- D 1 - I - 0x01321B 04:B20B: 03        .byte $03   ; 
- D 1 - I - 0x01321C 04:B20C: 58        .byte $58   ; 
- D 1 - I - 0x01321D 04:B20D: 47        .byte $47   ; 
- D 1 - I - 0x01321E 04:B20E: C2        .byte $C2   ; 
- D 1 - I - 0x01321F 04:B20F: 03        .byte $03   ; 
- D 1 - I - 0x013220 04:B210: 60        .byte $60   ; 
- D 1 - I - 0x013221 04:B211: 47        .byte $47   ; 
- D 1 - I - 0x013222 04:B212: C3        .byte $C3   ; 
- D 1 - I - 0x013223 04:B213: 03        .byte $03   ; 
- D 1 - I - 0x013224 04:B214: 68        .byte $68   ; 
- D 1 - I - 0x013225 04:B215: 4F        .byte $4F   ; 
- D 1 - I - 0x013226 04:B216: C4        .byte $C4   ; 
- D 1 - I - 0x013227 04:B217: 03        .byte $03   ; 
- D 1 - I - 0x013228 04:B218: 48        .byte $48   ; 
- D 1 - I - 0x013229 04:B219: 4F        .byte $4F   ; 
- D 1 - I - 0x01322A 04:B21A: C5        .byte $C5   ; 
- D 1 - I - 0x01322B 04:B21B: 03        .byte $03   ; 
- D 1 - I - 0x01322C 04:B21C: 50        .byte $50   ; 
- D 1 - I - 0x01322D 04:B21D: 4F        .byte $4F   ; 
- D 1 - I - 0x01322E 04:B21E: C6        .byte $C6   ; 
- D 1 - I - 0x01322F 04:B21F: 03        .byte $03   ; 
- D 1 - I - 0x013230 04:B220: 58        .byte $58   ; 
- D 1 - I - 0x013231 04:B221: 4F        .byte $4F   ; 
- D 1 - I - 0x013232 04:B222: C7        .byte $C7   ; 
- D 1 - I - 0x013233 04:B223: 03        .byte $03   ; 
- D 1 - I - 0x013234 04:B224: 60        .byte $60   ; 
- D 1 - I - 0x013235 04:B225: 4F        .byte $4F   ; 
- D 1 - I - 0x013236 04:B226: C8        .byte $C8   ; 
- D 1 - I - 0x013237 04:B227: 03        .byte $03   ; 
- D 1 - I - 0x013238 04:B228: 68        .byte $68   ; 
- D 1 - I - 0x013239 04:B229: 57        .byte $57   ; 
- D 1 - I - 0x01323A 04:B22A: C9        .byte $C9   ; 
- D 1 - I - 0x01323B 04:B22B: 03        .byte $03   ; 
- D 1 - I - 0x01323C 04:B22C: 40        .byte $40   ; 
- D 1 - I - 0x01323D 04:B22D: 57        .byte $57   ; 
- D 1 - I - 0x01323E 04:B22E: CA        .byte $CA   ; 
- D 1 - I - 0x01323F 04:B22F: 03        .byte $03   ; 
- D 1 - I - 0x013240 04:B230: 48        .byte $48   ; 
- D 1 - I - 0x013241 04:B231: 57        .byte $57   ; 
- D 1 - I - 0x013242 04:B232: CB        .byte $CB   ; 
- D 1 - I - 0x013243 04:B233: 03        .byte $03   ; 
- D 1 - I - 0x013244 04:B234: 50        .byte $50   ; 
- D 1 - I - 0x013245 04:B235: 57        .byte $57   ; 
- D 1 - I - 0x013246 04:B236: CC        .byte $CC   ; 
- D 1 - I - 0x013247 04:B237: 03        .byte $03   ; 
- D 1 - I - 0x013248 04:B238: 68        .byte $68   ; 
- D 1 - I - 0x013249 04:B239: 5F        .byte $5F   ; 
- D 1 - I - 0x01324A 04:B23A: CD        .byte $CD   ; 
- D 1 - I - 0x01324B 04:B23B: 03        .byte $03   ; 
- D 1 - I - 0x01324C 04:B23C: 68        .byte $68   ; 
- D 1 - I - 0x01324D 04:B23D: 67        .byte $67   ; 
- D 1 - I - 0x01324E 04:B23E: CE        .byte $CE   ; 
- D 1 - I - 0x01324F 04:B23F: 02        .byte $02   ; 
- D 1 - I - 0x013250 04:B240: 6C        .byte $6C   ; 
- D 1 - I - 0x013251 04:B241: 6D        .byte $6D   ; 
- D 1 - I - 0x013252 04:B242: CF        .byte $CF   ; 
- D 1 - I - 0x013253 04:B243: 03        .byte $03   ; 
- D 1 - I - 0x013254 04:B244: 58        .byte $58   ; 
- D 1 - I - 0x013255 04:B245: 6D        .byte $6D   ; 
- D 1 - I - 0x013256 04:B246: E0        .byte $E0   ; 
- D 1 - I - 0x013257 04:B247: 03        .byte $03   ; 
- D 1 - I - 0x013258 04:B248: 60        .byte $60   ; 
- D 1 - I - 0x013259 04:B249: 6F        .byte $6F   ; 
- D 1 - I - 0x01325A 04:B24A: E1        .byte $E1   ; 
- D 1 - I - 0x01325B 04:B24B: 02        .byte $02   ; 
- D 1 - I - 0x01325C 04:B24C: 68        .byte $68   ; 
- D 1 - I - 0x01325D 04:B24D: 6F        .byte $6F   ; 
- D 1 - I - 0x01325E 04:B24E: E2        .byte $E2   ; 
- D 1 - I - 0x01325F 04:B24F: 02        .byte $02   ; 
- D 1 - I - 0x013260 04:B250: 70        .byte $70   ; 
- D 1 - I - 0x013261 04:B251: 75        .byte $75   ; 
- D 1 - I - 0x013262 04:B252: E3        .byte $E3   ; 
- D 1 - I - 0x013263 04:B253: 03        .byte $03   ; 
- D 1 - I - 0x013264 04:B254: 58        .byte $58   ; 
- D 1 - I - 0x013265 04:B255: 00        .byte $00   ; 



_off006_B256_05:
- D 1 - I - 0x013266 04:B256: 57        .byte $57   ; 
- D 1 - I - 0x013267 04:B257: CD        .byte $CD   ; 
- D 1 - I - 0x013268 04:B258: 02        .byte $02   ; 
- D 1 - I - 0x013269 04:B259: 69        .byte $69   ; 
- D 1 - I - 0x01326A 04:B25A: 5F        .byte $5F   ; 
- D 1 - I - 0x01326B 04:B25B: D2        .byte $D2   ; 
- D 1 - I - 0x01326C 04:B25C: 02        .byte $02   ; 
- D 1 - I - 0x01326D 04:B25D: 68        .byte $68   ; 
- D 1 - I - 0x01326E 04:B25E: 4E        .byte $4E   ; 
- D 1 - I - 0x01326F 04:B25F: CE        .byte $CE   ; 
- D 1 - I - 0x013270 04:B260: 02        .byte $02   ; 
- D 1 - I - 0x013271 04:B261: 90        .byte $90   ; 
- D 1 - I - 0x013272 04:B262: 57        .byte $57   ; 
- D 1 - I - 0x013273 04:B263: D1        .byte $D1   ; 
- D 1 - I - 0x013274 04:B264: 02        .byte $02   ; 
- D 1 - I - 0x013275 04:B265: 90        .byte $90   ; 
- D 1 - I - 0x013276 04:B266: 6F        .byte $6F   ; 
- D 1 - I - 0x013277 04:B267: C0        .byte $C0   ; 
- D 1 - I - 0x013278 04:B268: 03        .byte $03   ; 
- D 1 - I - 0x013279 04:B269: 58        .byte $58   ; 
- D 1 - I - 0x01327A 04:B26A: 6F        .byte $6F   ; 
- D 1 - I - 0x01327B 04:B26B: C1        .byte $C1   ; 
- D 1 - I - 0x01327C 04:B26C: 03        .byte $03   ; 
- D 1 - I - 0x01327D 04:B26D: 60        .byte $60   ; 
- D 1 - I - 0x01327E 04:B26E: 6F        .byte $6F   ; 
- D 1 - I - 0x01327F 04:B26F: C2        .byte $C2   ; 
- D 1 - I - 0x013280 04:B270: 03        .byte $03   ; 
- D 1 - I - 0x013281 04:B271: 6A        .byte $6A   ; 
- D 1 - I - 0x013282 04:B272: 77        .byte $77   ; 
- D 1 - I - 0x013283 04:B273: C3        .byte $C3   ; 
- D 1 - I - 0x013284 04:B274: 03        .byte $03   ; 
- D 1 - I - 0x013285 04:B275: 50        .byte $50   ; 
- D 1 - I - 0x013286 04:B276: 77        .byte $77   ; 
- D 1 - I - 0x013287 04:B277: C4        .byte $C4   ; 
- D 1 - I - 0x013288 04:B278: 03        .byte $03   ; 
- D 1 - I - 0x013289 04:B279: 58        .byte $58   ; 
- D 1 - I - 0x01328A 04:B27A: 77        .byte $77   ; 
- D 1 - I - 0x01328B 04:B27B: C5        .byte $C5   ; 
- D 1 - I - 0x01328C 04:B27C: 03        .byte $03   ; 
- D 1 - I - 0x01328D 04:B27D: 60        .byte $60   ; 
- D 1 - I - 0x01328E 04:B27E: 77        .byte $77   ; 
- D 1 - I - 0x01328F 04:B27F: C6        .byte $C6   ; 
- D 1 - I - 0x013290 04:B280: 03        .byte $03   ; 
- D 1 - I - 0x013291 04:B281: 68        .byte $68   ; 
- D 1 - I - 0x013292 04:B282: 77        .byte $77   ; 
- D 1 - I - 0x013293 04:B283: C7        .byte $C7   ; 
- D 1 - I - 0x013294 04:B284: 03        .byte $03   ; 
- D 1 - I - 0x013295 04:B285: 70        .byte $70   ; 
- D 1 - I - 0x013296 04:B286: 00        .byte $00   ; 



_off006_B287_06:
- D 1 - I - 0x013297 04:B287: 49        .byte $49   ; 
- D 1 - I - 0x013298 04:B288: C0        .byte $C0   ; 
- D 1 - I - 0x013299 04:B289: 01        .byte $01   ; 
- D 1 - I - 0x01329A 04:B28A: 5E        .byte $5E   ; 
- D 1 - I - 0x01329B 04:B28B: 4F        .byte $4F   ; 
- D 1 - I - 0x01329C 04:B28C: C1        .byte $C1   ; 
- D 1 - I - 0x01329D 04:B28D: 03        .byte $03   ; 
- D 1 - I - 0x01329E 04:B28E: 68        .byte $68   ; 
- D 1 - I - 0x01329F 04:B28F: 5F        .byte $5F   ; 
- D 1 - I - 0x0132A0 04:B290: C2        .byte $C2   ; 
- D 1 - I - 0x0132A1 04:B291: 00        .byte $00   ; 
- D 1 - I - 0x0132A2 04:B292: 67        .byte $67   ; 
- D 1 - I - 0x0132A3 04:B293: 61        .byte $61   ; 
- D 1 - I - 0x0132A4 04:B294: C3        .byte $C3   ; 
- D 1 - I - 0x0132A5 04:B295: 00        .byte $00   ; 
- D 1 - I - 0x0132A6 04:B296: 7A        .byte $7A   ; 
- D 1 - I - 0x0132A7 04:B297: 67        .byte $67   ; 
- D 1 - I - 0x0132A8 04:B298: C4        .byte $C4   ; 
- D 1 - I - 0x0132A9 04:B299: 00        .byte $00   ; 
- D 1 - I - 0x0132AA 04:B29A: 88        .byte $88   ; 
- D 1 - I - 0x0132AB 04:B29B: 77        .byte $77   ; 
- D 1 - I - 0x0132AC 04:B29C: C5        .byte $C5   ; 
- D 1 - I - 0x0132AD 04:B29D: 01        .byte $01   ; 
- D 1 - I - 0x0132AE 04:B29E: 5D        .byte $5D   ; 
- D 1 - I - 0x0132AF 04:B29F: 2F        .byte $2F   ; 
- D 1 - I - 0x0132B0 04:B2A0: C7        .byte $C7   ; 
- D 1 - I - 0x0132B1 04:B2A1: 43        .byte $43   ; 
- D 1 - I - 0x0132B2 04:B2A2: 20        .byte $20   ; 
- D 1 - I - 0x0132B3 04:B2A3: 2F        .byte $2F   ; 
- D 1 - I - 0x0132B4 04:B2A4: C7        .byte $C7   ; 
- D 1 - I - 0x0132B5 04:B2A5: 43        .byte $43   ; 
- D 1 - I - 0x0132B6 04:B2A6: 28        .byte $28   ; 
- D 1 - I - 0x0132B7 04:B2A7: 2F        .byte $2F   ; 
- D 1 - I - 0x0132B8 04:B2A8: C6        .byte $C6   ; 
- D 1 - I - 0x0132B9 04:B2A9: 43        .byte $43   ; 
- D 1 - I - 0x0132BA 04:B2AA: 30        .byte $30   ; 
- D 1 - I - 0x0132BB 04:B2AB: 37        .byte $37   ; 
- D 1 - I - 0x0132BC 04:B2AC: C7        .byte $C7   ; 
- D 1 - I - 0x0132BD 04:B2AD: 43        .byte $43   ; 
- D 1 - I - 0x0132BE 04:B2AE: 20        .byte $20   ; 
- D 1 - I - 0x0132BF 04:B2AF: 37        .byte $37   ; 
- D 1 - I - 0x0132C0 04:B2B0: C7        .byte $C7   ; 
- D 1 - I - 0x0132C1 04:B2B1: 43        .byte $43   ; 
- D 1 - I - 0x0132C2 04:B2B2: 28        .byte $28   ; 
- D 1 - I - 0x0132C3 04:B2B3: 37        .byte $37   ; 
- D 1 - I - 0x0132C4 04:B2B4: C6        .byte $C6   ; 
- D 1 - I - 0x0132C5 04:B2B5: 43        .byte $43   ; 
- D 1 - I - 0x0132C6 04:B2B6: 30        .byte $30   ; 
- D 1 - I - 0x0132C7 04:B2B7: 3F        .byte $3F   ; 
- D 1 - I - 0x0132C8 04:B2B8: C7        .byte $C7   ; 
- D 1 - I - 0x0132C9 04:B2B9: 43        .byte $43   ; 
- D 1 - I - 0x0132CA 04:B2BA: 20        .byte $20   ; 
- D 1 - I - 0x0132CB 04:B2BB: 3F        .byte $3F   ; 
- D 1 - I - 0x0132CC 04:B2BC: C7        .byte $C7   ; 
- D 1 - I - 0x0132CD 04:B2BD: 43        .byte $43   ; 
- D 1 - I - 0x0132CE 04:B2BE: 28        .byte $28   ; 
- D 1 - I - 0x0132CF 04:B2BF: 3F        .byte $3F   ; 
- D 1 - I - 0x0132D0 04:B2C0: C6        .byte $C6   ; 
- D 1 - I - 0x0132D1 04:B2C1: 43        .byte $43   ; 
- D 1 - I - 0x0132D2 04:B2C2: 30        .byte $30   ; 
- D 1 - I - 0x0132D3 04:B2C3: 47        .byte $47   ; 
- D 1 - I - 0x0132D4 04:B2C4: CA        .byte $CA   ; 
- D 1 - I - 0x0132D5 04:B2C5: 43        .byte $43   ; 
- D 1 - I - 0x0132D6 04:B2C6: 20        .byte $20   ; 
- D 1 - I - 0x0132D7 04:B2C7: 47        .byte $47   ; 
- D 1 - I - 0x0132D8 04:B2C8: C9        .byte $C9   ; 
- D 1 - I - 0x0132D9 04:B2C9: 43        .byte $43   ; 
- D 1 - I - 0x0132DA 04:B2CA: 28        .byte $28   ; 
- D 1 - I - 0x0132DB 04:B2CB: 47        .byte $47   ; 
- D 1 - I - 0x0132DC 04:B2CC: C8        .byte $C8   ; 
- D 1 - I - 0x0132DD 04:B2CD: 43        .byte $43   ; 
- D 1 - I - 0x0132DE 04:B2CE: 30        .byte $30   ; 
- D 1 - I - 0x0132DF 04:B2CF: 4F        .byte $4F   ; 
- D 1 - I - 0x0132E0 04:B2D0: CD        .byte $CD   ; 
- D 1 - I - 0x0132E1 04:B2D1: 43        .byte $43   ; 
- D 1 - I - 0x0132E2 04:B2D2: 20        .byte $20   ; 
- D 1 - I - 0x0132E3 04:B2D3: 4F        .byte $4F   ; 
- D 1 - I - 0x0132E4 04:B2D4: CC        .byte $CC   ; 
- D 1 - I - 0x0132E5 04:B2D5: 43        .byte $43   ; 
- D 1 - I - 0x0132E6 04:B2D6: 28        .byte $28   ; 
- D 1 - I - 0x0132E7 04:B2D7: 4F        .byte $4F   ; 
- D 1 - I - 0x0132E8 04:B2D8: CB        .byte $CB   ; 
- D 1 - I - 0x0132E9 04:B2D9: 43        .byte $43   ; 
- D 1 - I - 0x0132EA 04:B2DA: 30        .byte $30   ; 
- D 1 - I - 0x0132EB 04:B2DB: 57        .byte $57   ; 
- D 1 - I - 0x0132EC 04:B2DC: CF        .byte $CF   ; 
- D 1 - I - 0x0132ED 04:B2DD: 43        .byte $43   ; 
- D 1 - I - 0x0132EE 04:B2DE: 20        .byte $20   ; 
- D 1 - I - 0x0132EF 04:B2DF: 57        .byte $57   ; 
- D 1 - I - 0x0132F0 04:B2E0: CE        .byte $CE   ; 
- D 1 - I - 0x0132F1 04:B2E1: 43        .byte $43   ; 
- D 1 - I - 0x0132F2 04:B2E2: 28        .byte $28   ; 
- D 1 - I - 0x0132F3 04:B2E3: 5F        .byte $5F   ; 
- D 1 - I - 0x0132F4 04:B2E4: C7        .byte $C7   ; 
- D 1 - I - 0x0132F5 04:B2E5: 43        .byte $43   ; 
- D 1 - I - 0x0132F6 04:B2E6: 20        .byte $20   ; 
- D 1 - I - 0x0132F7 04:B2E7: 5F        .byte $5F   ; 
- D 1 - I - 0x0132F8 04:B2E8: C6        .byte $C6   ; 
- D 1 - I - 0x0132F9 04:B2E9: 43        .byte $43   ; 
- D 1 - I - 0x0132FA 04:B2EA: 28        .byte $28   ; 
- D 1 - I - 0x0132FB 04:B2EB: 67        .byte $67   ; 
- D 1 - I - 0x0132FC 04:B2EC: C7        .byte $C7   ; 
- D 1 - I - 0x0132FD 04:B2ED: 43        .byte $43   ; 
- D 1 - I - 0x0132FE 04:B2EE: 20        .byte $20   ; 
- D 1 - I - 0x0132FF 04:B2EF: 67        .byte $67   ; 
- D 1 - I - 0x013300 04:B2F0: C6        .byte $C6   ; 
- D 1 - I - 0x013301 04:B2F1: 43        .byte $43   ; 
- D 1 - I - 0x013302 04:B2F2: 28        .byte $28   ; 
- D 1 - I - 0x013303 04:B2F3: 6F        .byte $6F   ; 
- D 1 - I - 0x013304 04:B2F4: C9        .byte $C9   ; 
- D 1 - I - 0x013305 04:B2F5: 43        .byte $43   ; 
- D 1 - I - 0x013306 04:B2F6: 20        .byte $20   ; 
- D 1 - I - 0x013307 04:B2F7: 6F        .byte $6F   ; 
- D 1 - I - 0x013308 04:B2F8: C8        .byte $C8   ; 
- D 1 - I - 0x013309 04:B2F9: 43        .byte $43   ; 
- D 1 - I - 0x01330A 04:B2FA: 28        .byte $28   ; 
- D 1 - I - 0x01330B 04:B2FB: 77        .byte $77   ; 
- D 1 - I - 0x01330C 04:B2FC: CC        .byte $CC   ; 
- D 1 - I - 0x01330D 04:B2FD: 43        .byte $43   ; 
- D 1 - I - 0x01330E 04:B2FE: 20        .byte $20   ; 
- D 1 - I - 0x01330F 04:B2FF: 77        .byte $77   ; 
- D 1 - I - 0x013310 04:B300: CB        .byte $CB   ; 
- D 1 - I - 0x013311 04:B301: 43        .byte $43   ; 
- D 1 - I - 0x013312 04:B302: 28        .byte $28   ; 
- D 1 - I - 0x013313 04:B303: 2F        .byte $2F   ; 
- D 1 - I - 0x013314 04:B304: C6        .byte $C6   ; 
- D 1 - I - 0x013315 04:B305: 03        .byte $03   ; 
- D 1 - I - 0x013316 04:B306: C8        .byte $C8   ; 
- D 1 - I - 0x013317 04:B307: 2F        .byte $2F   ; 
- D 1 - I - 0x013318 04:B308: C7        .byte $C7   ; 
- D 1 - I - 0x013319 04:B309: 03        .byte $03   ; 
- D 1 - I - 0x01331A 04:B30A: D0        .byte $D0   ; 
- D 1 - I - 0x01331B 04:B30B: 2F        .byte $2F   ; 
- D 1 - I - 0x01331C 04:B30C: C7        .byte $C7   ; 
- D 1 - I - 0x01331D 04:B30D: 03        .byte $03   ; 
- D 1 - I - 0x01331E 04:B30E: D8        .byte $D8   ; 
- D 1 - I - 0x01331F 04:B30F: 37        .byte $37   ; 
- D 1 - I - 0x013320 04:B310: C6        .byte $C6   ; 
- D 1 - I - 0x013321 04:B311: 03        .byte $03   ; 
- D 1 - I - 0x013322 04:B312: C8        .byte $C8   ; 
- D 1 - I - 0x013323 04:B313: 37        .byte $37   ; 
- D 1 - I - 0x013324 04:B314: C7        .byte $C7   ; 
- D 1 - I - 0x013325 04:B315: 03        .byte $03   ; 
- D 1 - I - 0x013326 04:B316: D0        .byte $D0   ; 
- D 1 - I - 0x013327 04:B317: 37        .byte $37   ; 
- D 1 - I - 0x013328 04:B318: C7        .byte $C7   ; 
- D 1 - I - 0x013329 04:B319: 03        .byte $03   ; 
- D 1 - I - 0x01332A 04:B31A: D8        .byte $D8   ; 
- D 1 - I - 0x01332B 04:B31B: 3F        .byte $3F   ; 
- D 1 - I - 0x01332C 04:B31C: C6        .byte $C6   ; 
- D 1 - I - 0x01332D 04:B31D: 03        .byte $03   ; 
- D 1 - I - 0x01332E 04:B31E: C8        .byte $C8   ; 
- D 1 - I - 0x01332F 04:B31F: 3F        .byte $3F   ; 
- D 1 - I - 0x013330 04:B320: C7        .byte $C7   ; 
- D 1 - I - 0x013331 04:B321: 03        .byte $03   ; 
- D 1 - I - 0x013332 04:B322: D0        .byte $D0   ; 
- D 1 - I - 0x013333 04:B323: 3F        .byte $3F   ; 
- D 1 - I - 0x013334 04:B324: C7        .byte $C7   ; 
- D 1 - I - 0x013335 04:B325: 03        .byte $03   ; 
- D 1 - I - 0x013336 04:B326: D8        .byte $D8   ; 
- D 1 - I - 0x013337 04:B327: 47        .byte $47   ; 
- D 1 - I - 0x013338 04:B328: C8        .byte $C8   ; 
- D 1 - I - 0x013339 04:B329: 03        .byte $03   ; 
- D 1 - I - 0x01333A 04:B32A: C8        .byte $C8   ; 
- D 1 - I - 0x01333B 04:B32B: 47        .byte $47   ; 
- D 1 - I - 0x01333C 04:B32C: C9        .byte $C9   ; 
- D 1 - I - 0x01333D 04:B32D: 03        .byte $03   ; 
- D 1 - I - 0x01333E 04:B32E: D0        .byte $D0   ; 
- D 1 - I - 0x01333F 04:B32F: 47        .byte $47   ; 
- D 1 - I - 0x013340 04:B330: CA        .byte $CA   ; 
- D 1 - I - 0x013341 04:B331: 03        .byte $03   ; 
- D 1 - I - 0x013342 04:B332: D8        .byte $D8   ; 
- D 1 - I - 0x013343 04:B333: 4F        .byte $4F   ; 
- D 1 - I - 0x013344 04:B334: CB        .byte $CB   ; 
- D 1 - I - 0x013345 04:B335: 03        .byte $03   ; 
- D 1 - I - 0x013346 04:B336: C8        .byte $C8   ; 
- D 1 - I - 0x013347 04:B337: 4F        .byte $4F   ; 
- D 1 - I - 0x013348 04:B338: CC        .byte $CC   ; 
- D 1 - I - 0x013349 04:B339: 03        .byte $03   ; 
- D 1 - I - 0x01334A 04:B33A: D0        .byte $D0   ; 
- D 1 - I - 0x01334B 04:B33B: 4F        .byte $4F   ; 
- D 1 - I - 0x01334C 04:B33C: CD        .byte $CD   ; 
- D 1 - I - 0x01334D 04:B33D: 03        .byte $03   ; 
- D 1 - I - 0x01334E 04:B33E: D8        .byte $D8   ; 
- D 1 - I - 0x01334F 04:B33F: 57        .byte $57   ; 
- D 1 - I - 0x013350 04:B340: CE        .byte $CE   ; 
- D 1 - I - 0x013351 04:B341: 03        .byte $03   ; 
- D 1 - I - 0x013352 04:B342: D0        .byte $D0   ; 
- D 1 - I - 0x013353 04:B343: 57        .byte $57   ; 
- D 1 - I - 0x013354 04:B344: CF        .byte $CF   ; 
- D 1 - I - 0x013355 04:B345: 03        .byte $03   ; 
- D 1 - I - 0x013356 04:B346: D8        .byte $D8   ; 
- D 1 - I - 0x013357 04:B347: 5F        .byte $5F   ; 
- D 1 - I - 0x013358 04:B348: C6        .byte $C6   ; 
- D 1 - I - 0x013359 04:B349: 03        .byte $03   ; 
- D 1 - I - 0x01335A 04:B34A: D0        .byte $D0   ; 
- D 1 - I - 0x01335B 04:B34B: 5F        .byte $5F   ; 
- D 1 - I - 0x01335C 04:B34C: C7        .byte $C7   ; 
- D 1 - I - 0x01335D 04:B34D: 03        .byte $03   ; 
- D 1 - I - 0x01335E 04:B34E: D8        .byte $D8   ; 
- D 1 - I - 0x01335F 04:B34F: 67        .byte $67   ; 
- D 1 - I - 0x013360 04:B350: C6        .byte $C6   ; 
- D 1 - I - 0x013361 04:B351: 03        .byte $03   ; 
- D 1 - I - 0x013362 04:B352: D0        .byte $D0   ; 
- D 1 - I - 0x013363 04:B353: 67        .byte $67   ; 
- D 1 - I - 0x013364 04:B354: C7        .byte $C7   ; 
- D 1 - I - 0x013365 04:B355: 03        .byte $03   ; 
- D 1 - I - 0x013366 04:B356: D8        .byte $D8   ; 
- D 1 - I - 0x013367 04:B357: 6F        .byte $6F   ; 
- D 1 - I - 0x013368 04:B358: C8        .byte $C8   ; 
- D 1 - I - 0x013369 04:B359: 03        .byte $03   ; 
- D 1 - I - 0x01336A 04:B35A: D0        .byte $D0   ; 
- D 1 - I - 0x01336B 04:B35B: 6F        .byte $6F   ; 
- D 1 - I - 0x01336C 04:B35C: C9        .byte $C9   ; 
- D 1 - I - 0x01336D 04:B35D: 03        .byte $03   ; 
- D 1 - I - 0x01336E 04:B35E: D8        .byte $D8   ; 
- D 1 - I - 0x01336F 04:B35F: 77        .byte $77   ; 
- D 1 - I - 0x013370 04:B360: CB        .byte $CB   ; 
- D 1 - I - 0x013371 04:B361: 03        .byte $03   ; 
- D 1 - I - 0x013372 04:B362: D0        .byte $D0   ; 
- D 1 - I - 0x013373 04:B363: 77        .byte $77   ; 
- D 1 - I - 0x013374 04:B364: CC        .byte $CC   ; 
- D 1 - I - 0x013375 04:B365: 03        .byte $03   ; 
- D 1 - I - 0x013376 04:B366: D8        .byte $D8   ; 
- D 1 - I - 0x013377 04:B367: 00        .byte $00   ; 



_off006_B368_07:
- D 1 - I - 0x013378 04:B368: 57        .byte $57   ; 
- D 1 - I - 0x013379 04:B369: CD        .byte $CD   ; 
- D 1 - I - 0x01337A 04:B36A: 02        .byte $02   ; 
- D 1 - I - 0x01337B 04:B36B: 69        .byte $69   ; 
- D 1 - I - 0x01337C 04:B36C: F8        .byte $F8   ; 
- D 1 - I - 0x01337D 04:B36D: CD        .byte $CD   ; 
- D 1 - I - 0x01337E 04:B36E: 02        .byte $02   ; 
- D 1 - I - 0x01337F 04:B36F: 69        .byte $69   ; 
- D 1 - I - 0x013380 04:B370: 00        .byte $00   ; 



_off006_B371_08:
- D 1 - I - 0x013381 04:B371: 67        .byte $67   ; 
- D 1 - I - 0x013382 04:B372: B8        .byte $B8   ; 
- D 1 - I - 0x013383 04:B373: 02        .byte $02   ; 
- D 1 - I - 0x013384 04:B374: 68        .byte $68   ; 
- D 1 - I - 0x013385 04:B375: 67        .byte $67   ; 
- D 1 - I - 0x013386 04:B376: B9        .byte $B9   ; 
- D 1 - I - 0x013387 04:B377: 02        .byte $02   ; 
- D 1 - I - 0x013388 04:B378: 70        .byte $70   ; 
- D 1 - I - 0x013389 04:B379: 67        .byte $67   ; 
- D 1 - I - 0x01338A 04:B37A: BA        .byte $BA   ; 
- D 1 - I - 0x01338B 04:B37B: 02        .byte $02   ; 
- D 1 - I - 0x01338C 04:B37C: 78        .byte $78   ; 
- D 1 - I - 0x01338D 04:B37D: 67        .byte $67   ; 
- D 1 - I - 0x01338E 04:B37E: BA        .byte $BA   ; 
- D 1 - I - 0x01338F 04:B37F: 42        .byte $42   ; 
- D 1 - I - 0x013390 04:B380: 80        .byte $80   ; 
- D 1 - I - 0x013391 04:B381: 67        .byte $67   ; 
- D 1 - I - 0x013392 04:B382: B9        .byte $B9   ; 
- D 1 - I - 0x013393 04:B383: 42        .byte $42   ; 
- D 1 - I - 0x013394 04:B384: 88        .byte $88   ; 
- D 1 - I - 0x013395 04:B385: 67        .byte $67   ; 
- D 1 - I - 0x013396 04:B386: B8        .byte $B8   ; 
- D 1 - I - 0x013397 04:B387: 42        .byte $42   ; 
- D 1 - I - 0x013398 04:B388: 90        .byte $90   ; 
- D 1 - I - 0x013399 04:B389: 6F        .byte $6F   ; 
- D 1 - I - 0x01339A 04:B38A: BB        .byte $BB   ; 
- D 1 - I - 0x01339B 04:B38B: 02        .byte $02   ; 
- D 1 - I - 0x01339C 04:B38C: 68        .byte $68   ; 
- D 1 - I - 0x01339D 04:B38D: 6F        .byte $6F   ; 
- D 1 - I - 0x01339E 04:B38E: BC        .byte $BC   ; 
- D 1 - I - 0x01339F 04:B38F: 02        .byte $02   ; 
- D 1 - I - 0x0133A0 04:B390: 70        .byte $70   ; 
- D 1 - I - 0x0133A1 04:B391: 6F        .byte $6F   ; 
- D 1 - I - 0x0133A2 04:B392: BD        .byte $BD   ; 
- D 1 - I - 0x0133A3 04:B393: 02        .byte $02   ; 
- D 1 - I - 0x0133A4 04:B394: 78        .byte $78   ; 
- D 1 - I - 0x0133A5 04:B395: 6F        .byte $6F   ; 
- D 1 - I - 0x0133A6 04:B396: BD        .byte $BD   ; 
- D 1 - I - 0x0133A7 04:B397: 42        .byte $42   ; 
- D 1 - I - 0x0133A8 04:B398: 80        .byte $80   ; 
- D 1 - I - 0x0133A9 04:B399: 6F        .byte $6F   ; 
- D 1 - I - 0x0133AA 04:B39A: BC        .byte $BC   ; 
- D 1 - I - 0x0133AB 04:B39B: 42        .byte $42   ; 
- D 1 - I - 0x0133AC 04:B39C: 88        .byte $88   ; 
- D 1 - I - 0x0133AD 04:B39D: 6F        .byte $6F   ; 
- D 1 - I - 0x0133AE 04:B39E: BB        .byte $BB   ; 
- D 1 - I - 0x0133AF 04:B39F: 42        .byte $42   ; 
- D 1 - I - 0x0133B0 04:B3A0: 90        .byte $90   ; 
- D 1 - I - 0x0133B1 04:B3A1: 00        .byte $00   ; 


; bzk garbage
- - - - - - 0x0133B2 04:B3A2: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0133C0 04:B3B0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0133D0 04:B3C0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0133E0 04:B3D0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0133F0 04:B3E0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013400 04:B3F0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 


; bzk garbage
- - - - - - 0x013410 04:B400: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013420 04:B410: FF        .byte $FF, $FF, $FB, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013430 04:B420: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013440 04:B430: DF        .byte $DF, $FB, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013450 04:B440: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013460 04:B450: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013470 04:B460: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013480 04:B470: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013490 04:B480: FB        .byte $FB, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0134A0 04:B490: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0134B0 04:B4A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0134C0 04:B4B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0134D0 04:B4C0: 7F        .byte $7F, $7F, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0134E0 04:B4D0: BF        .byte $BF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0134F0 04:B4E0: FF        .byte $FF, $BF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013500 04:B4F0: 7F        .byte $7F, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $EF, $FF, $FF, $FF, $FF, $FF, $FF   ; 


; bzk garbage
- - - - - - 0x013510 04:B500: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013520 04:B510: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013530 04:B520: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013540 04:B530: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013550 04:B540: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013560 04:B550: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013570 04:B560: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013580 04:B570: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013590 04:B580: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0135A0 04:B590: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0135B0 04:B5A0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0135C0 04:B5B0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0135D0 04:B5C0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0135E0 04:B5D0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0135F0 04:B5E0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013600 04:B5F0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



sub_0x013610_spawn_objects:
C - - - - - 0x013610 04:B600: A5 FD     LDA ram_scroll_X_hi
C - - - - - 0x013612 04:B602: 18        CLC
C - - - - - 0x013613 04:B603: 65 FB     ADC ram_scroll_Y_hi
C - - - - - 0x013615 04:B605: 85 01     STA ram_0001    ; X_hi + Y_hi
C - - - - - 0x013617 04:B607: A5 50     LDA ram_stage_config
C - - - - - 0x013619 04:B609: 29 C0     AND #$C0
C - - - - - 0x01361B 04:B60B: F0 28     BEQ bra_B635_horisontal
C - - - - - 0x01361D 04:B60D: 30 12     BMI bra_B621_vertical_up
; if vertical down
C - - - - - 0x01361F 04:B60F: A5 FA     LDA ram_scroll_Y_lo
C - - - - - 0x013621 04:B611: 85 00     STA ram_0000
C - - - - - 0x013623 04:B613: 18        CLC
C - - - - - 0x013624 04:B614: 69 FF     ADC #< $00FF
C - - - - - 0x013626 04:B616: 85 02     STA ram_0002
C - - - - - 0x013628 04:B618: A5 01     LDA ram_0001    ; X_hi + Y_hi
C - - - - - 0x01362A 04:B61A: 69 00     ADC #> $00FF
C - - - - - 0x01362C 04:B61C: 85 03     STA ram_0003
C - - - - - 0x01362E 04:B61E: 4C 44 B6  JMP loc_B644
bra_B621_vertical_up:
C - - - - - 0x013631 04:B621: A5 FA     LDA ram_scroll_Y_lo
C - - - - - 0x013633 04:B623: 85 02     STA ram_0002
C - - - - - 0x013635 04:B625: 18        CLC
C - - - - - 0x013636 04:B626: 69 FF     ADC #$FF
C - - - - - 0x013638 04:B628: 85 00     STA ram_0000
C - - - - - 0x01363A 04:B62A: A5 01     LDA ram_0001    ; X_hi + Y_hi
C - - - - - 0x01363C 04:B62C: 85 03     STA ram_0003
C - - - - - 0x01363E 04:B62E: 90 14     BCC bra_B644
C - - - - - 0x013640 04:B630: C6 01     DEC ram_0001    ; X_hi + Y_hi
C - - - - - 0x013642 04:B632: 4C 44 B6  JMP loc_B644
bra_B635_horisontal:
C - - - - - 0x013645 04:B635: A5 FC     LDA ram_scroll_X_lo
C - - - - - 0x013647 04:B637: 85 00     STA ram_0000
C - - - - - 0x013649 04:B639: 18        CLC
C - - - - - 0x01364A 04:B63A: 69 FF     ADC #< $00FF
C - - - - - 0x01364C 04:B63C: 85 02     STA ram_0002
C - - - - - 0x01364E 04:B63E: A5 01     LDA ram_0001    ; X_hi + Y_hi
C - - - - - 0x013650 04:B640: 69 00     ADC #> $00FF
C - - - - - 0x013652 04:B642: 85 03     STA ram_0003
bra_B644:
loc_B644:
C D 1 - - - 0x013654 04:B644: A5 F9     LDA ram_camera_direction
C - - - - - 0x013656 04:B646: 29 01     AND #$01
C - - - - - 0x013658 04:B648: F0 03     BEQ bra_B64D_moving_left_or_down
C - - - - - 0x01365A 04:B64A: 4C D7 B6  JMP loc_B6D7_moving_right_or_up
bra_B64D_moving_left_or_down:
C - - - - - 0x01365D 04:B64D: A5 50     LDA ram_stage_config
C - - - - - 0x01365F 04:B64F: 30 51     BMI bra_B6A2_vertical_up
; if horisontal or vertical down
bra_B651_loop:
C - - - - - 0x013661 04:B651: A4 9F     LDY ram_009F
C - - - - - 0x013663 04:B653: F0 24     BEQ bra_B679
C - - - - - 0x013665 04:B655: 88        DEY
C - - - - - 0x013666 04:B656: B1 72     LDA (ram_0072),Y
C - - - - - 0x013668 04:B658: C5 01     CMP ram_0001
C - - - - - 0x01366A 04:B65A: 90 1D     BCC bra_B679
C - - - - - 0x01366C 04:B65C: D0 14     BNE bra_B672
C - - - - - 0x01366E 04:B65E: A5 50     LDA ram_stage_config
C - - - - - 0x013670 04:B660: 29 40     AND #$40
C - - - - - 0x013672 04:B662: F0 08     BEQ bra_B66C_horisontal
; if vertical down
C - - - - - 0x013674 04:B664: B1 76     LDA (ram_0076),Y
C - - - - - 0x013676 04:B666: C5 00     CMP ram_0000
C - - - - - 0x013678 04:B668: 90 0F     BCC bra_B679
C - - - - - 0x01367A 04:B66A: B0 06     BCS bra_B672   ; jmp
bra_B66C_horisontal:
C - - - - - 0x01367C 04:B66C: B1 74     LDA (ram_0074),Y
C - - - - - 0x01367E 04:B66E: C5 00     CMP ram_0000
C - - - - - 0x013680 04:B670: 90 07     BCC bra_B679
bra_B672:
C - - - - - 0x013682 04:B672: 20 55 B7  JSR sub_B755_spawn_object
C - - - - - 0x013685 04:B675: C6 9F     DEC ram_009F
C - - - - - 0x013687 04:B677: D0 D8     BNE bra_B651_loop
bra_B679:
C - - - - - 0x013689 04:B679: A4 9E     LDY ram_009E
C - - - - - 0x01368B 04:B67B: F0 20     BEQ bra_B69D
bra_B67D_loop:
C - - - - - 0x01368D 04:B67D: 88        DEY
C - - - - - 0x01368E 04:B67E: 30 1C     BMI bra_B69C
C - - - - - 0x013690 04:B680: B1 72     LDA (ram_0072),Y
C - - - - - 0x013692 04:B682: C5 03     CMP ram_0003
C - - - - - 0x013694 04:B684: 90 16     BCC bra_B69C
C - - - - - 0x013696 04:B686: D0 F5     BNE bra_B67D_loop
C - - - - - 0x013698 04:B688: A5 50     LDA ram_stage_config
C - - - - - 0x01369A 04:B68A: 29 40     AND #$40
C - - - - - 0x01369C 04:B68C: F0 08     BEQ bra_B696
; if vertical down
C - - - - - 0x01369E 04:B68E: B1 76     LDA (ram_0076),Y
C - - - - - 0x0136A0 04:B690: C5 02     CMP ram_0002
C - - - - - 0x0136A2 04:B692: 90 08     BCC bra_B69C
C - - - - - 0x0136A4 04:B694: B0 E7     BCS bra_B67D_loop   ; jmp
bra_B696:
C - - - - - 0x0136A6 04:B696: B1 74     LDA (ram_0074),Y
C - - - - - 0x0136A8 04:B698: C5 02     CMP ram_0002
C - - - - - 0x0136AA 04:B69A: B0 E1     BCS bra_B67D_loop
bra_B69C:
C - - - - - 0x0136AC 04:B69C: C8        INY
bra_B69D:
C - - - - - 0x0136AD 04:B69D: 84 9E     STY ram_009E
C - - - - - 0x0136AF 04:B69F: 4C 54 B7  JMP loc_B754_RTS
bra_B6A2_vertical_up:
bra_B6A2_loop:
C - - - - - 0x0136B2 04:B6A2: A4 9F     LDY ram_009F
C - - - - - 0x0136B4 04:B6A4: F0 18     BEQ bra_B6BE
C - - - - - 0x0136B6 04:B6A6: 88        DEY
C - - - - - 0x0136B7 04:B6A7: B1 72     LDA (ram_0072),Y
C - - - - - 0x0136B9 04:B6A9: C5 01     CMP ram_0001
C - - - - - 0x0136BB 04:B6AB: 90 11     BCC bra_B6BE
C - - - - - 0x0136BD 04:B6AD: D0 08     BNE bra_B6B7
C - - - - - 0x0136BF 04:B6AF: B1 76     LDA (ram_0076),Y
C - - - - - 0x0136C1 04:B6B1: C5 00     CMP ram_0000
C - - - - - 0x0136C3 04:B6B3: F0 02     BEQ bra_B6B7
C - - - - - 0x0136C5 04:B6B5: B0 07     BCS bra_B6BE
bra_B6B7:
C - - - - - 0x0136C7 04:B6B7: 20 55 B7  JSR sub_B755_spawn_object
C - - - - - 0x0136CA 04:B6BA: C6 9F     DEC ram_009F
C - - - - - 0x0136CC 04:B6BC: D0 E4     BNE bra_B6A2_loop
bra_B6BE:
C - - - - - 0x0136CE 04:B6BE: A4 9E     LDY ram_009E
C - - - - - 0x0136D0 04:B6C0: F0 12     BEQ bra_B6D4
bra_B6C2_loop:
C - - - - - 0x0136D2 04:B6C2: 88        DEY
C - - - - - 0x0136D3 04:B6C3: 30 0E     BMI bra_B6D3
C - - - - - 0x0136D5 04:B6C5: B1 72     LDA (ram_0072),Y
C - - - - - 0x0136D7 04:B6C7: C5 03     CMP ram_0003
C - - - - - 0x0136D9 04:B6C9: 90 08     BCC bra_B6D3
C - - - - - 0x0136DB 04:B6CB: D0 F5     BNE bra_B6C2_loop
C - - - - - 0x0136DD 04:B6CD: B1 76     LDA (ram_0076),Y
C - - - - - 0x0136DF 04:B6CF: C5 02     CMP ram_0002
C - - - - - 0x0136E1 04:B6D1: 90 EF     BCC bra_B6C2_loop
bra_B6D3:
C - - - - - 0x0136E3 04:B6D3: C8        INY
bra_B6D4:
C - - - - - 0x0136E4 04:B6D4: 84 9E     STY ram_009E
C - - - - - 0x0136E6 04:B6D6: 60        RTS



loc_B6D7_moving_right_or_up:
bra_B6D7_loop:
C D 1 - - - 0x0136E7 04:B6D7: A5 50     LDA ram_stage_config
C - - - - - 0x0136E9 04:B6D9: 30 49     BMI bra_B724_vertical_up
; if horisontal or vertical down
C - - - - - 0x0136EB 04:B6DB: A4 9E     LDY ram_009E
C - - - - - 0x0136ED 04:B6DD: A5 03     LDA ram_0003
C - - - - - 0x0136EF 04:B6DF: D1 72     CMP (ram_0072),Y
C - - - - - 0x0136F1 04:B6E1: 90 1D     BCC bra_B700
C - - - - - 0x0136F3 04:B6E3: D0 14     BNE bra_B6F9
C - - - - - 0x0136F5 04:B6E5: A5 50     LDA ram_stage_config
C - - - - - 0x0136F7 04:B6E7: 29 40     AND #$40
C - - - - - 0x0136F9 04:B6E9: F0 08     BEQ bra_B6F3_horisontal
; if vertical down
C - - - - - 0x0136FB 04:B6EB: A5 02     LDA ram_0002
C - - - - - 0x0136FD 04:B6ED: D1 76     CMP (ram_0076),Y
C - - - - - 0x0136FF 04:B6EF: 90 0F     BCC bra_B700
C - - - - - 0x013701 04:B6F1: B0 06     BCS bra_B6F9   ; jmp
bra_B6F3_horisontal:
C - - - - - 0x013703 04:B6F3: A5 02     LDA ram_0002
C - - - - - 0x013705 04:B6F5: D1 74     CMP (ram_0074),Y
C - - - - - 0x013707 04:B6F7: 90 07     BCC bra_B700
bra_B6F9:
C - - - - - 0x013709 04:B6F9: 20 55 B7  JSR sub_B755_spawn_object
C - - - - - 0x01370C 04:B6FC: E6 9E     INC ram_009E
C - - - - - 0x01370E 04:B6FE: D0 D7     BNE bra_B6D7_loop   ; jmp?
bra_B700:
C - - - - - 0x013710 04:B700: A4 9F     LDY ram_009F
bra_B702_loop:
C - - - - - 0x013712 04:B702: A5 01     LDA ram_0001
C - - - - - 0x013714 04:B704: D1 72     CMP (ram_0072),Y
C - - - - - 0x013716 04:B706: 90 19     BCC bra_B721
C - - - - - 0x013718 04:B708: D0 14     BNE bra_B71E
C - - - - - 0x01371A 04:B70A: A5 50     LDA ram_stage_config
C - - - - - 0x01371C 04:B70C: 29 40     AND #$40
C - - - - - 0x01371E 04:B70E: F0 08     BEQ bra_B718
; if vertical down
C - - - - - 0x013720 04:B710: A5 00     LDA ram_0000
C - - - - - 0x013722 04:B712: D1 76     CMP (ram_0076),Y
C - - - - - 0x013724 04:B714: 90 0B     BCC bra_B721
C - - - - - 0x013726 04:B716: B0 06     BCS bra_B71E   ; jmp
bra_B718:
C - - - - - 0x013728 04:B718: A5 00     LDA ram_0000
C - - - - - 0x01372A 04:B71A: D1 74     CMP (ram_0074),Y
C - - - - - 0x01372C 04:B71C: 90 03     BCC bra_B721
bra_B71E:
C - - - - - 0x01372E 04:B71E: C8        INY
C - - - - - 0x01372F 04:B71F: D0 E1     BNE bra_B702_loop
bra_B721:
C - - - - - 0x013731 04:B721: 84 9F     STY ram_009F
C - - - - - 0x013733 04:B723: 60        RTS
bra_B724_vertical_up:
bra_B724_loop:
C - - - - - 0x013734 04:B724: A4 9E     LDY ram_009E
C - - - - - 0x013736 04:B726: A5 03     LDA ram_0003
C - - - - - 0x013738 04:B728: D1 72     CMP (ram_0072),Y
C - - - - - 0x01373A 04:B72A: 90 11     BCC bra_B73D
C - - - - - 0x01373C 04:B72C: D0 08     BNE bra_B736
C - - - - - 0x01373E 04:B72E: A5 02     LDA ram_0002
C - - - - - 0x013740 04:B730: D1 76     CMP (ram_0076),Y
C - - - - - 0x013742 04:B732: F0 02     BEQ bra_B736
C - - - - - 0x013744 04:B734: B0 07     BCS bra_B73D
bra_B736:
C - - - - - 0x013746 04:B736: 20 55 B7  JSR sub_B755_spawn_object
C - - - - - 0x013749 04:B739: E6 9E     INC ram_009E
C - - - - - 0x01374B 04:B73B: D0 E7     BNE bra_B724_loop   ; jmp?
bra_B73D:
C - - - - - 0x01374D 04:B73D: A4 9F     LDY ram_009F
bra_B73F_loop:
C - - - - - 0x01374F 04:B73F: A5 01     LDA ram_0001
C - - - - - 0x013751 04:B741: D1 72     CMP (ram_0072),Y
C - - - - - 0x013753 04:B743: 90 0D     BCC bra_B752
C - - - - - 0x013755 04:B745: D0 08     BNE bra_B74F
C - - - - - 0x013757 04:B747: A5 00     LDA ram_0000
C - - - - - 0x013759 04:B749: D1 76     CMP (ram_0076),Y
C - - - - - 0x01375B 04:B74B: F0 02     BEQ bra_B74F
C - - - - - 0x01375D 04:B74D: B0 03     BCS bra_B752
bra_B74F:
C - - - - - 0x01375F 04:B74F: C8        INY
C - - - - - 0x013760 04:B750: D0 ED     BNE bra_B73F_loop
bra_B752:
C - - - - - 0x013762 04:B752: 84 9F     STY ram_009F
bra_B754_RTS:
loc_B754_RTS:
C D 1 - - - 0x013764 04:B754: 60        RTS



sub_B755_spawn_object:
C - - - - - 0x013765 04:B755: 98        TYA
C - - - - - 0x013766 04:B756: 85 04     STA ram_0004
C - - - - - 0x013768 04:B758: A2 0F     LDX #$0F
bra_B75A_loop:
C - - - - - 0x01376A 04:B75A: DD E0 03  CMP ram_03E0_obj,X
C - - - - - 0x01376D 04:B75D: F0 F5     BEQ bra_B754_RTS
C - - - - - 0x01376F 04:B75F: CA        DEX
C - - - - - 0x013770 04:B760: D0 F8     BNE bra_B75A_loop
C - - - - - 0x013772 04:B762: 20 44 FE  JSR sub_0x01FE54
C - - - - - 0x013775 04:B765: B0 ED     BCS bra_B754_RTS
C - - - - - 0x013777 04:B767: A5 04     LDA ram_0004
C - - - - - 0x013779 04:B769: 29 07     AND #$07
C - - - - - 0x01377B 04:B76B: A8        TAY
C - - - - - 0x01377C 04:B76C: B9 85 FE  LDA tbl_0x01FE95_bits,Y
C - - - - - 0x01377F 04:B76F: 85 05     STA ram_0005
C - - - - - 0x013781 04:B771: A5 04     LDA ram_0004
; / 08
C - - - - - 0x013783 04:B773: 4A        LSR
C - - - - - 0x013784 04:B774: 4A        LSR
C - - - - - 0x013785 04:B775: 4A        LSR
C - - - - - 0x013786 04:B776: A8        TAY
C - - - - - 0x013787 04:B777: B9 30 01  LDA ram_0130,Y
C - - - - - 0x01378A 04:B77A: 25 05     AND ram_0005
C - - - - - 0x01378C 04:B77C: D0 D6     BNE bra_B754_RTS
C - - - - - 0x01378E 04:B77E: A5 04     LDA ram_0004
C - - - - - 0x013790 04:B780: A8        TAY
C - - - - - 0x013791 04:B781: 9D E0 03  STA ram_03E0_obj,X
C - - - - - 0x013794 04:B784: B1 74     LDA (ram_0074),Y
C - - - - - 0x013796 04:B786: 9D 30 03  STA ram_pos_X_lo,X
C - - - - - 0x013799 04:B789: B1 76     LDA (ram_0076),Y
C - - - - - 0x01379B 04:B78B: 9D 60 03  STA ram_pos_Y_lo,X
C - - - - - 0x01379E 04:B78E: A5 50     LDA ram_stage_config
C - - - - - 0x0137A0 04:B790: 29 C0     AND #$C0
C - - - - - 0x0137A2 04:B792: D0 10     BNE bra_B7A4_vertical
; if horisontal
C - - - - - 0x0137A4 04:B794: A5 FB     LDA ram_scroll_Y_hi
C - - - - - 0x0137A6 04:B796: 9D 70 03  STA ram_pos_Y_hi,X
C - - - - - 0x0137A9 04:B799: B1 72     LDA (ram_0072),Y
C - - - - - 0x0137AB 04:B79B: 38        SEC
C - - - - - 0x0137AC 04:B79C: E5 FB     SBC ram_scroll_Y_hi
C - - - - - 0x0137AE 04:B79E: 9D 40 03  STA ram_pos_X_hi,X
C - - - - - 0x0137B1 04:B7A1: 4C B1 B7  JMP loc_B7B1
bra_B7A4_vertical:
C - - - - - 0x0137B4 04:B7A4: A5 FD     LDA ram_scroll_X_hi
C - - - - - 0x0137B6 04:B7A6: 9D 40 03  STA ram_pos_X_hi,X
C - - - - - 0x0137B9 04:B7A9: B1 72     LDA (ram_0072),Y
C - - - - - 0x0137BB 04:B7AB: 38        SEC
C - - - - - 0x0137BC 04:B7AC: E5 FD     SBC ram_scroll_X_hi
C - - - - - 0x0137BE 04:B7AE: 9D 70 03  STA ram_pos_Y_hi,X
loc_B7B1:
C D 1 - - - 0x0137C1 04:B7B1: B1 78     LDA (ram_0078),Y
C - - - - - 0x0137C3 04:B7B3: A8        TAY
C - - - - - 0x0137C4 04:B7B4: A9 80     LDA #$80
C - - - - - 0x0137C6 04:B7B6: 9D 00 03  STA ram_obj_flags,X
C - - - - - 0x0137C9 04:B7B9: B9 C4 BB  LDA tbl_BBC4,Y
C - - - - - 0x0137CC 04:B7BC: 9D 00 04  STA ram_0400_obj,X
C - - - - - 0x0137CF 04:B7BF: B9 04 BC  LDA tbl_BC04,Y
C - - - - - 0x0137D2 04:B7C2: 9D 10 03  STA ram_obj_id,X
C - - - - - 0x0137D5 04:B7C5: B9 44 BC  LDA tbl_BC44,Y
C - - - - - 0x0137D8 04:B7C8: 9D C0 03  STA ram_03C0_obj,X
C - - - - - 0x0137DB 04:B7CB: B9 C4 BC  LDA tbl_BCC4,Y
C - - - - - 0x0137DE 04:B7CE: 9D F0 03  STA ram_03F0_obj,X
C - - - - - 0x0137E1 04:B7D1: B9 84 BC  LDA tbl_BC84,Y
C - - - - - 0x0137E4 04:B7D4: 20 45 FC  JSR sub_0x01FC55
C - - - - - 0x0137E7 04:B7D7: B9 04 BD  LDA tbl_BD04_index,Y
C - - - - - 0x0137EA 04:B7DA: A8        TAY
C - - - - - 0x0137EB 04:B7DB: B9 44 BD  LDA tbl_BD44_spd_X_lo,Y
C - - - - - 0x0137EE 04:B7DE: 9D 80 03  STA ram_spd_X_lo,X
C - - - - - 0x0137F1 04:B7E1: B9 4B BD  LDA tbl_BD4B_spd_X_hi,Y
C - - - - - 0x0137F4 04:B7E4: 9D 90 03  STA ram_spd_X_hi,X
C - - - - - 0x0137F7 04:B7E7: A9 00     LDA #$00
C - - - - - 0x0137F9 04:B7E9: 9D 20 03  STA ram_pos_X_fr,X
C - - - - - 0x0137FC 04:B7EC: 9D 50 03  STA ram_pos_Y_fr,X
C - - - - - 0x0137FF 04:B7EF: 9D 60 04  STA ram_0460_obj,X
C - - - - - 0x013802 04:B7F2: 9D 70 04  STA ram_obj_timer,X
C - - - - - 0x013805 04:B7F5: 9D 80 04  STA ram_0480_obj,X
C - - - - - 0x013808 04:B7F8: 9D 90 04  STA ram_0490_obj,X
C - - - - - 0x01380B 04:B7FB: 9D A0 04  STA ram_04A0_obj,X
C - - - - - 0x01380E 04:B7FE: 20 99 F9  JSR sub_0x01F9A9
C - - - - - 0x013811 04:B801: 4C 6F FC  JMP loc_0x01FC7F



_off007_B804_00:
- D 1 - I - 0x013814 04:B804: 01        .byte $01   ; 
- D 1 - I - 0x013815 04:B805: 02        .byte $02   ; 
- D 1 - I - 0x013816 04:B806: 02        .byte $02   ; 
- D 1 - I - 0x013817 04:B807: 03        .byte $03   ; 
- D 1 - I - 0x013818 04:B808: 03        .byte $03   ; 
- D 1 - I - 0x013819 04:B809: 04        .byte $04   ; 
- D 1 - I - 0x01381A 04:B80A: 04        .byte $04   ; 
- D 1 - I - 0x01381B 04:B80B: 05        .byte $05   ; 
- D 1 - I - 0x01381C 04:B80C: 06        .byte $06   ; 
- D 1 - I - 0x01381D 04:B80D: 06        .byte $06   ; 
- D 1 - I - 0x01381E 04:B80E: 07        .byte $07   ; 
- D 1 - I - 0x01381F 04:B80F: 07        .byte $07   ; 
- D 1 - I - 0x013820 04:B810: 07        .byte $07   ; 
- D 1 - I - 0x013821 04:B811: 07        .byte $07   ; 
- D 1 - I - 0x013822 04:B812: 07        .byte $07   ; 
- D 1 - I - 0x013823 04:B813: 08        .byte $08   ; 
- D 1 - I - 0x013824 04:B814: 08        .byte $08   ; 
- D 1 - I - 0x013825 04:B815: 09        .byte $09   ; 
- D 1 - I - 0x013826 04:B816: 09        .byte $09   ; 
- D 1 - I - 0x013827 04:B817: 0A        .byte $0A   ; 
- D 1 - I - 0x013828 04:B818: 0A        .byte $0A   ; 
- D 1 - I - 0x013829 04:B819: 0A        .byte $0A   ; 
- D 1 - I - 0x01382A 04:B81A: 0B        .byte $0B   ; 
- D 1 - I - 0x01382B 04:B81B: 0B        .byte $0B   ; 
- D 1 - I - 0x01382C 04:B81C: 0B        .byte $0B   ; 
- D 1 - I - 0x01382D 04:B81D: 0B        .byte $0B   ; 
- D 1 - I - 0x01382E 04:B81E: 0C        .byte $0C   ; 
- D 1 - I - 0x01382F 04:B81F: 0C        .byte $0C   ; 
- D 1 - I - 0x013830 04:B820: 0E        .byte $0E   ; 
- D 1 - I - 0x013831 04:B821: 11        .byte $11   ; 
- D 1 - I - 0x013832 04:B822: FF        .byte $FF   ; 



_off008_B823_00:
- D 1 - I - 0x013833 04:B823: 58        .byte $58   ; 
- D 1 - I - 0x013834 04:B824: 50        .byte $50   ; 
- D 1 - I - 0x013835 04:B825: D0        .byte $D0   ; 
- D 1 - I - 0x013836 04:B826: 78        .byte $78   ; 
- D 1 - I - 0x013837 04:B827: B8        .byte $B8   ; 
- D 1 - I - 0x013838 04:B828: 38        .byte $38   ; 
- D 1 - I - 0x013839 04:B829: F0        .byte $F0   ; 
- D 1 - I - 0x01383A 04:B82A: 58        .byte $58   ; 
- D 1 - I - 0x01383B 04:B82B: 38        .byte $38   ; 
- D 1 - I - 0x01383C 04:B82C: C0        .byte $C0   ; 
- D 1 - I - 0x01383D 04:B82D: 18        .byte $18   ; 
- D 1 - I - 0x01383E 04:B82E: 40        .byte $40   ; 
- D 1 - I - 0x01383F 04:B82F: 78        .byte $78   ; 
- D 1 - I - 0x013840 04:B830: D0        .byte $D0   ; 
- D 1 - I - 0x013841 04:B831: 78        .byte $78   ; 
- D 1 - I - 0x013842 04:B832: 18        .byte $18   ; 
- D 1 - I - 0x013843 04:B833: 68        .byte $68   ; 
- D 1 - I - 0x013844 04:B834: A8        .byte $A8   ; 
- D 1 - I - 0x013845 04:B835: F8        .byte $F8   ; 
- D 1 - I - 0x013846 04:B836: 58        .byte $58   ; 
- D 1 - I - 0x013847 04:B837: C8        .byte $C8   ; 
- D 1 - I - 0x013848 04:B838: D0        .byte $D0   ; 
- D 1 - I - 0x013849 04:B839: 28        .byte $28   ; 
- D 1 - I - 0x01384A 04:B83A: 90        .byte $90   ; 
- D 1 - I - 0x01384B 04:B83B: B0        .byte $B0   ; 
- D 1 - I - 0x01384C 04:B83C: E8        .byte $E8   ; 
- D 1 - I - 0x01384D 04:B83D: 08        .byte $08   ; 
- D 1 - I - 0x01384E 04:B83E: E8        .byte $E8   ; 
- D 1 - I - 0x01384F 04:B83F: F8        .byte $F8   ; 
- D 1 - I - 0x013850 04:B840: D8        .byte $D8   ; 
- - - - - - 0x013851 04:B841: FF        .byte $FF   ; 



_off009_B842_00:
- D 1 - I - 0x013852 04:B842: BC        .byte $BC   ; 
- D 1 - I - 0x013853 04:B843: 7E        .byte $7E   ; 
- D 1 - I - 0x013854 04:B844: B0        .byte $B0   ; 
- D 1 - I - 0x013855 04:B845: 78        .byte $78   ; 
- D 1 - I - 0x013856 04:B846: 98        .byte $98   ; 
- D 1 - I - 0x013857 04:B847: 48        .byte $48   ; 
- D 1 - I - 0x013858 04:B848: 7E        .byte $7E   ; 
- D 1 - I - 0x013859 04:B849: 88        .byte $88   ; 
- D 1 - I - 0x01385A 04:B84A: 3C        .byte $3C   ; 
- D 1 - I - 0x01385B 04:B84B: 20        .byte $20   ; 
- D 1 - I - 0x01385C 04:B84C: D8        .byte $D8   ; 
- D 1 - I - 0x01385D 04:B84D: A0        .byte $A0   ; 
- D 1 - I - 0x01385E 04:B84E: 98        .byte $98   ; 
- D 1 - I - 0x01385F 04:B84F: 70        .byte $70   ; 
- D 1 - I - 0x013860 04:B850: 38        .byte $38   ; 
- D 1 - I - 0x013861 04:B851: 78        .byte $78   ; 
- D 1 - I - 0x013862 04:B852: 28        .byte $28   ; 
- D 1 - I - 0x013863 04:B853: 58        .byte $58   ; 
- D 1 - I - 0x013864 04:B854: 98        .byte $98   ; 
- D 1 - I - 0x013865 04:B855: 5C        .byte $5C   ; 
- D 1 - I - 0x013866 04:B856: A8        .byte $A8   ; 
- D 1 - I - 0x013867 04:B857: 9E        .byte $9E   ; 
- D 1 - I - 0x013868 04:B858: 58        .byte $58   ; 
- D 1 - I - 0x013869 04:B859: B0        .byte $B0   ; 
- D 1 - I - 0x01386A 04:B85A: 9E        .byte $9E   ; 
- D 1 - I - 0x01386B 04:B85B: E8        .byte $E8   ; 
- D 1 - I - 0x01386C 04:B85C: C8        .byte $C8   ; 
- D 1 - I - 0x01386D 04:B85D: 78        .byte $78   ; 
- D 1 - I - 0x01386E 04:B85E: 40        .byte $40   ; 
- D 1 - I - 0x01386F 04:B85F: B8        .byte $B8   ; 
- - - - - - 0x013870 04:B860: FF        .byte $FF   ; 



_off010_B861_00:
- D 1 - I - 0x013871 04:B861: 15        .byte $15   ; 
- D 1 - I - 0x013872 04:B862: 3C        .byte $3C   ; 
- D 1 - I - 0x013873 04:B863: 1D        .byte $1D   ; 
- D 1 - I - 0x013874 04:B864: 10        .byte $10   ; 
- D 1 - I - 0x013875 04:B865: 35        .byte $35   ; 
- D 1 - I - 0x013876 04:B866: 10        .byte $10   ; 
- D 1 - I - 0x013877 04:B867: 3C        .byte $3C   ; 
- D 1 - I - 0x013878 04:B868: 10        .byte $10   ; 
- D 1 - I - 0x013879 04:B869: 15        .byte $15   ; 
- D 1 - I - 0x01387A 04:B86A: 14        .byte $14   ; 
- D 1 - I - 0x01387B 04:B86B: 36        .byte $36   ; 
- D 1 - I - 0x01387C 04:B86C: 14        .byte $14   ; 
- D 1 - I - 0x01387D 04:B86D: 03        .byte $03   ; 
- D 1 - I - 0x01387E 04:B86E: 1E        .byte $1E   ; 
- D 1 - I - 0x01387F 04:B86F: 38        .byte $38   ; 
- D 1 - I - 0x013880 04:B870: 1A        .byte $1A   ; 
- D 1 - I - 0x013881 04:B871: 03        .byte $03   ; 
- D 1 - I - 0x013882 04:B872: 38        .byte $38   ; 
- D 1 - I - 0x013883 04:B873: 10        .byte $10   ; 
- D 1 - I - 0x013884 04:B874: 15        .byte $15   ; 
- D 1 - I - 0x013885 04:B875: 10        .byte $10   ; 
- D 1 - I - 0x013886 04:B876: 20        .byte $20   ; 
- D 1 - I - 0x013887 04:B877: 10        .byte $10   ; 
- D 1 - I - 0x013888 04:B878: 1E        .byte $1E   ; 
- D 1 - I - 0x013889 04:B879: 3C        .byte $3C   ; 
- D 1 - I - 0x01388A 04:B87A: 0C        .byte $0C   ; 
- D 1 - I - 0x01388B 04:B87B: 2D        .byte $2D   ; 
- D 1 - I - 0x01388C 04:B87C: 03        .byte $03   ; 
- D 1 - I - 0x01388D 04:B87D: 25        .byte $25   ; 
- D 1 - I - 0x01388E 04:B87E: 1B        .byte $1B   ; 
- - - - - - 0x01388F 04:B87F: FF        .byte $FF   ; 



_off007_B880_01:
- D 1 - I - 0x013890 04:B880: 01        .byte $01   ; 
- D 1 - I - 0x013891 04:B881: 02        .byte $02   ; 
- D 1 - I - 0x013892 04:B882: 02        .byte $02   ; 
- D 1 - I - 0x013893 04:B883: 02        .byte $02   ; 
- D 1 - I - 0x013894 04:B884: 03        .byte $03   ; 
- D 1 - I - 0x013895 04:B885: 03        .byte $03   ; 
- D 1 - I - 0x013896 04:B886: 03        .byte $03   ; 
- D 1 - I - 0x013897 04:B887: 03        .byte $03   ; 
- D 1 - I - 0x013898 04:B888: 04        .byte $04   ; 
- D 1 - I - 0x013899 04:B889: 04        .byte $04   ; 
- D 1 - I - 0x01389A 04:B88A: 04        .byte $04   ; 
- D 1 - I - 0x01389B 04:B88B: 05        .byte $05   ; 
- D 1 - I - 0x01389C 04:B88C: 05        .byte $05   ; 
- D 1 - I - 0x01389D 04:B88D: 05        .byte $05   ; 
- D 1 - I - 0x01389E 04:B88E: 05        .byte $05   ; 
- D 1 - I - 0x01389F 04:B88F: 05        .byte $05   ; 
- D 1 - I - 0x0138A0 04:B890: 05        .byte $05   ; 
- D 1 - I - 0x0138A1 04:B891: 05        .byte $05   ; 
- D 1 - I - 0x0138A2 04:B892: 06        .byte $06   ; 
- D 1 - I - 0x0138A3 04:B893: 06        .byte $06   ; 
- D 1 - I - 0x0138A4 04:B894: 06        .byte $06   ; 
- D 1 - I - 0x0138A5 04:B895: 06        .byte $06   ; 
- D 1 - I - 0x0138A6 04:B896: 06        .byte $06   ; 
- D 1 - I - 0x0138A7 04:B897: 06        .byte $06   ; 
- D 1 - I - 0x0138A8 04:B898: 06        .byte $06   ; 
- D 1 - I - 0x0138A9 04:B899: 08        .byte $08   ; 
- D 1 - I - 0x0138AA 04:B89A: 08        .byte $08   ; 
- D 1 - I - 0x0138AB 04:B89B: 09        .byte $09   ; 
- D 1 - I - 0x0138AC 04:B89C: 09        .byte $09   ; 
- D 1 - I - 0x0138AD 04:B89D: 0A        .byte $0A   ; 
- D 1 - I - 0x0138AE 04:B89E: 0A        .byte $0A   ; 
- D 1 - I - 0x0138AF 04:B89F: 0A        .byte $0A   ; 
- D 1 - I - 0x0138B0 04:B8A0: 0B        .byte $0B   ; 
- D 1 - I - 0x0138B1 04:B8A1: 0B        .byte $0B   ; 
- D 1 - I - 0x0138B2 04:B8A2: 0C        .byte $0C   ; 
- D 1 - I - 0x0138B3 04:B8A3: 0C        .byte $0C   ; 
- D 1 - I - 0x0138B4 04:B8A4: 0C        .byte $0C   ; 
- D 1 - I - 0x0138B5 04:B8A5: 0C        .byte $0C   ; 
- D 1 - I - 0x0138B6 04:B8A6: 0C        .byte $0C   ; 
- D 1 - I - 0x0138B7 04:B8A7: 0D        .byte $0D   ; 
- D 1 - I - 0x0138B8 04:B8A8: 0D        .byte $0D   ; 
- D 1 - I - 0x0138B9 04:B8A9: 0D        .byte $0D   ; 
- D 1 - I - 0x0138BA 04:B8AA: 0D        .byte $0D   ; 
- D 1 - I - 0x0138BB 04:B8AB: 0D        .byte $0D   ; 
- D 1 - I - 0x0138BC 04:B8AC: 0E        .byte $0E   ; 
- D 1 - I - 0x0138BD 04:B8AD: 0E        .byte $0E   ; 
- D 1 - I - 0x0138BE 04:B8AE: 0E        .byte $0E   ; 
- D 1 - I - 0x0138BF 04:B8AF: 0F        .byte $0F   ; 
- D 1 - I - 0x0138C0 04:B8B0: 10        .byte $10   ; 
- D 1 - I - 0x0138C1 04:B8B1: 10        .byte $10   ; 
- D 1 - I - 0x0138C2 04:B8B2: 10        .byte $10   ; 
- D 1 - I - 0x0138C3 04:B8B3: FF        .byte $FF   ; 



_off008_B8B4_01:
- D 1 - I - 0x0138C4 04:B8B4: 28        .byte $28   ; 
- D 1 - I - 0x0138C5 04:B8B5: 38        .byte $38   ; 
- D 1 - I - 0x0138C6 04:B8B6: 48        .byte $48   ; 
- D 1 - I - 0x0138C7 04:B8B7: B8        .byte $B8   ; 
- D 1 - I - 0x0138C8 04:B8B8: 28        .byte $28   ; 
- D 1 - I - 0x0138C9 04:B8B9: 38        .byte $38   ; 
- D 1 - I - 0x0138CA 04:B8BA: 68        .byte $68   ; 
- D 1 - I - 0x0138CB 04:B8BB: D0        .byte $D0   ; 
- D 1 - I - 0x0138CC 04:B8BC: 68        .byte $68   ; 
- D 1 - I - 0x0138CD 04:B8BD: 78        .byte $78   ; 
- D 1 - I - 0x0138CE 04:B8BE: 98        .byte $98   ; 
- D 1 - I - 0x0138CF 04:B8BF: D8        .byte $D8   ; 
- D 1 - I - 0x0138D0 04:B8C0: B8        .byte $B8   ; 
- D 1 - I - 0x0138D1 04:B8C1: D8        .byte $D8   ; 
- D 1 - I - 0x0138D2 04:B8C2: D0        .byte $D0   ; 
- D 1 - I - 0x0138D3 04:B8C3: 88        .byte $88   ; 
- D 1 - I - 0x0138D4 04:B8C4: 28        .byte $28   ; 
- D 1 - I - 0x0138D5 04:B8C5: 48        .byte $48   ; 
- D 1 - I - 0x0138D6 04:B8C6: 28        .byte $28   ; 
- D 1 - I - 0x0138D7 04:B8C7: 60        .byte $60   ; 
- D 1 - I - 0x0138D8 04:B8C8: 50        .byte $50   ; 
- D 1 - I - 0x0138D9 04:B8C9: B8        .byte $B8   ; 
- D 1 - I - 0x0138DA 04:B8CA: D8        .byte $D8   ; 
- D 1 - I - 0x0138DB 04:B8CB: 30        .byte $30   ; 
- D 1 - I - 0x0138DC 04:B8CC: 98        .byte $98   ; 
- D 1 - I - 0x0138DD 04:B8CD: 98        .byte $98   ; 
- D 1 - I - 0x0138DE 04:B8CE: C8        .byte $C8   ; 
- D 1 - I - 0x0138DF 04:B8CF: 30        .byte $30   ; 
- D 1 - I - 0x0138E0 04:B8D0: 98        .byte $98   ; 
- D 1 - I - 0x0138E1 04:B8D1: 48        .byte $48   ; 
- D 1 - I - 0x0138E2 04:B8D2: D0        .byte $D0   ; 
- D 1 - I - 0x0138E3 04:B8D3: 28        .byte $28   ; 
- D 1 - I - 0x0138E4 04:B8D4: D0        .byte $D0   ; 
- D 1 - I - 0x0138E5 04:B8D5: B8        .byte $B8   ; 
- D 1 - I - 0x0138E6 04:B8D6: 18        .byte $18   ; 
- D 1 - I - 0x0138E7 04:B8D7: C8        .byte $C8   ; 
- D 1 - I - 0x0138E8 04:B8D8: 38        .byte $38   ; 
- D 1 - I - 0x0138E9 04:B8D9: 90        .byte $90   ; 
- D 1 - I - 0x0138EA 04:B8DA: 48        .byte $48   ; 
- D 1 - I - 0x0138EB 04:B8DB: 58        .byte $58   ; 
- D 1 - I - 0x0138EC 04:B8DC: 78        .byte $78   ; 
- D 1 - I - 0x0138ED 04:B8DD: 88        .byte $88   ; 
- D 1 - I - 0x0138EE 04:B8DE: B8        .byte $B8   ; 
- D 1 - I - 0x0138EF 04:B8DF: C8        .byte $C8   ; 
- D 1 - I - 0x0138F0 04:B8E0: 08        .byte $08   ; 
- D 1 - I - 0x0138F1 04:B8E1: A8        .byte $A8   ; 
- D 1 - I - 0x0138F2 04:B8E2: D8        .byte $D8   ; 
- D 1 - I - 0x0138F3 04:B8E3: C8        .byte $C8   ; 
- D 1 - I - 0x0138F4 04:B8E4: D8        .byte $D8   ; 
- D 1 - I - 0x0138F5 04:B8E5: A8        .byte $A8   ; 
- D 1 - I - 0x0138F6 04:B8E6: 78        .byte $78   ; 
- - - - - - 0x0138F7 04:B8E7: FF        .byte $FF   ; 
- - - - - - 0x0138F8 04:B8E8: D8        .byte $D8   ; 
- - - - - - 0x0138F9 04:B8E9: A8        .byte $A8   ; 
- - - - - - 0x0138FA 04:B8EA: 78        .byte $78   ; 
- - - - - - 0x0138FB 04:B8EB: FF        .byte $FF   ; 



_off009_B8EC_01:
- D 1 - I - 0x0138FC 04:B8EC: BC        .byte $BC   ; 
- D 1 - I - 0x0138FD 04:B8ED: 78        .byte $78   ; 
- D 1 - I - 0x0138FE 04:B8EE: C8        .byte $C8   ; 
- D 1 - I - 0x0138FF 04:B8EF: A8        .byte $A8   ; 
- D 1 - I - 0x013900 04:B8F0: C8        .byte $C8   ; 
- D 1 - I - 0x013901 04:B8F1: 48        .byte $48   ; 
- D 1 - I - 0x013902 04:B8F2: C8        .byte $C8   ; 
- D 1 - I - 0x013903 04:B8F3: D0        .byte $D0   ; 
- D 1 - I - 0x013904 04:B8F4: 68        .byte $68   ; 
- D 1 - I - 0x013905 04:B8F5: C8        .byte $C8   ; 
- D 1 - I - 0x013906 04:B8F6: 44        .byte $44   ; 
- D 1 - I - 0x013907 04:B8F7: A8        .byte $A8   ; 
- D 1 - I - 0x013908 04:B8F8: 98        .byte $98   ; 
- D 1 - I - 0x013909 04:B8F9: 98        .byte $98   ; 
- D 1 - I - 0x01390A 04:B8FA: 70        .byte $70   ; 
- D 1 - I - 0x01390B 04:B8FB: 48        .byte $48   ; 
- D 1 - I - 0x01390C 04:B8FC: 18        .byte $18   ; 
- D 1 - I - 0x01390D 04:B8FD: 18        .byte $18   ; 
- D 1 - I - 0x01390E 04:B8FE: E8        .byte $E8   ; 
- D 1 - I - 0x01390F 04:B8FF: E4        .byte $E4   ; 
- D 1 - I - 0x013910 04:B900: 74        .byte $74   ; 
- D 1 - I - 0x013911 04:B901: 58        .byte $58   ; 
- D 1 - I - 0x013912 04:B902: 58        .byte $58   ; 
- D 1 - I - 0x013913 04:B903: 30        .byte $30   ; 
- D 1 - I - 0x013914 04:B904: 18        .byte $18   ; 
- D 1 - I - 0x013915 04:B905: 3C        .byte $3C   ; 
- D 1 - I - 0x013916 04:B906: 88        .byte $88   ; 
- D 1 - I - 0x013917 04:B907: 30        .byte $30   ; 
- D 1 - I - 0x013918 04:B908: A8        .byte $A8   ; 
- D 1 - I - 0x013919 04:B909: 08        .byte $08   ; 
- D 1 - I - 0x01391A 04:B90A: 50        .byte $50   ; 
- D 1 - I - 0x01391B 04:B90B: 5C        .byte $5C   ; 
- D 1 - I - 0x01391C 04:B90C: 10        .byte $10   ; 
- D 1 - I - 0x01391D 04:B90D: 58        .byte $58   ; 
- D 1 - I - 0x01391E 04:B90E: 68        .byte $68   ; 
- D 1 - I - 0x01391F 04:B90F: 78        .byte $78   ; 
- D 1 - I - 0x013920 04:B910: A8        .byte $A8   ; 
- D 1 - I - 0x013921 04:B911: B0        .byte $B0   ; 
- D 1 - I - 0x013922 04:B912: BC        .byte $BC   ; 
- D 1 - I - 0x013923 04:B913: 48        .byte $48   ; 
- D 1 - I - 0x013924 04:B914: 7C        .byte $7C   ; 
- D 1 - I - 0x013925 04:B915: 38        .byte $38   ; 
- D 1 - I - 0x013926 04:B916: 78        .byte $78   ; 
- D 1 - I - 0x013927 04:B917: BC        .byte $BC   ; 
- D 1 - I - 0x013928 04:B918: A8        .byte $A8   ; 
- D 1 - I - 0x013929 04:B919: 88        .byte $88   ; 
- D 1 - I - 0x01392A 04:B91A: 58        .byte $58   ; 
- D 1 - I - 0x01392B 04:B91B: A8        .byte $A8   ; 
- D 1 - I - 0x01392C 04:B91C: 38        .byte $38   ; 
- D 1 - I - 0x01392D 04:B91D: 88        .byte $88   ; 
- D 1 - I - 0x01392E 04:B91E: 28        .byte $28   ; 
- - - - - - 0x01392F 04:B91F: FF        .byte $FF   ; 



_off010_B920_01:
- D 1 - I - 0x013930 04:B920: 2B        .byte $2B   ; 
- D 1 - I - 0x013931 04:B921: 10        .byte $10   ; 
- D 1 - I - 0x013932 04:B922: 37        .byte $37   ; 
- D 1 - I - 0x013933 04:B923: 12        .byte $12   ; 
- D 1 - I - 0x013934 04:B924: 37        .byte $37   ; 
- D 1 - I - 0x013935 04:B925: 03        .byte $03   ; 
- D 1 - I - 0x013936 04:B926: 2D        .byte $2D   ; 
- D 1 - I - 0x013937 04:B927: 1D        .byte $1D   ; 
- D 1 - I - 0x013938 04:B928: 05        .byte $05   ; 
- D 1 - I - 0x013939 04:B929: 10        .byte $10   ; 
- D 1 - I - 0x01393A 04:B92A: 18        .byte $18   ; 
- D 1 - I - 0x01393B 04:B92B: 10        .byte $10   ; 
- D 1 - I - 0x01393C 04:B92C: 38        .byte $38   ; 
- D 1 - I - 0x01393D 04:B92D: 38        .byte $38   ; 
- D 1 - I - 0x01393E 04:B92E: 1E        .byte $1E   ; 
- D 1 - I - 0x01393F 04:B92F: 03        .byte $03   ; 
- D 1 - I - 0x013940 04:B930: 38        .byte $38   ; 
- D 1 - I - 0x013941 04:B931: 38        .byte $38   ; 
- D 1 - I - 0x013942 04:B932: 1B        .byte $1B   ; 
- D 1 - I - 0x013943 04:B933: 18        .byte $18   ; 
- D 1 - I - 0x013944 04:B934: 18        .byte $18   ; 
- D 1 - I - 0x013945 04:B935: 38        .byte $38   ; 
- D 1 - I - 0x013946 04:B936: 34        .byte $34   ; 
- D 1 - I - 0x013947 04:B937: 14        .byte $14   ; 
- D 1 - I - 0x013948 04:B938: 03        .byte $03   ; 
- D 1 - I - 0x013949 04:B939: 15        .byte $15   ; 
- D 1 - I - 0x01394A 04:B93A: 10        .byte $10   ; 
- D 1 - I - 0x01394B 04:B93B: 1D        .byte $1D   ; 
- D 1 - I - 0x01394C 04:B93C: 10        .byte $10   ; 
- D 1 - I - 0x01394D 04:B93D: 02        .byte $02   ; 
- D 1 - I - 0x01394E 04:B93E: 1E        .byte $1E   ; 
- D 1 - I - 0x01394F 04:B93F: 15        .byte $15   ; 
- D 1 - I - 0x013950 04:B940: 14        .byte $14   ; 
- D 1 - I - 0x013951 04:B941: 16        .byte $16   ; 
- D 1 - I - 0x013952 04:B942: 01        .byte $01   ; 
- D 1 - I - 0x013953 04:B943: 37        .byte $37   ; 
- D 1 - I - 0x013954 04:B944: 03        .byte $03   ; 
- D 1 - I - 0x013955 04:B945: 1E        .byte $1E   ; 
- D 1 - I - 0x013956 04:B946: 2B        .byte $2B   ; 
- D 1 - I - 0x013957 04:B947: 37        .byte $37   ; 
- D 1 - I - 0x013958 04:B948: 15        .byte $15   ; 
- D 1 - I - 0x013959 04:B949: 03        .byte $03   ; 
- D 1 - I - 0x01395A 04:B94A: 37        .byte $37   ; 
- D 1 - I - 0x01395B 04:B94B: 2B        .byte $2B   ; 
- D 1 - I - 0x01395C 04:B94C: 12        .byte $12   ; 
- D 1 - I - 0x01395D 04:B94D: 10        .byte $10   ; 
- D 1 - I - 0x01395E 04:B94E: 2D        .byte $2D   ; 
- D 1 - I - 0x01395F 04:B94F: 12        .byte $12   ; 
- D 1 - I - 0x013960 04:B950: 27        .byte $27   ; 
- D 1 - I - 0x013961 04:B951: 28        .byte $28   ; 
- D 1 - I - 0x013962 04:B952: 3A        .byte $3A   ; 
- - - - - - 0x013963 04:B953: FF        .byte $FF   ; 



_off007_B954_02:
- D 1 - I - 0x013964 04:B954: 01        .byte $01   ; 
- D 1 - I - 0x013965 04:B955: 01        .byte $01   ; 
- D 1 - I - 0x013966 04:B956: 02        .byte $02   ; 
- D 1 - I - 0x013967 04:B957: 02        .byte $02   ; 
- D 1 - I - 0x013968 04:B958: 03        .byte $03   ; 
- D 1 - I - 0x013969 04:B959: 04        .byte $04   ; 
- D 1 - I - 0x01396A 04:B95A: 04        .byte $04   ; 
- D 1 - I - 0x01396B 04:B95B: 04        .byte $04   ; 
- D 1 - I - 0x01396C 04:B95C: 04        .byte $04   ; 
- D 1 - I - 0x01396D 04:B95D: 05        .byte $05   ; 
- D 1 - I - 0x01396E 04:B95E: 05        .byte $05   ; 
- D 1 - I - 0x01396F 04:B95F: 05        .byte $05   ; 
- D 1 - I - 0x013970 04:B960: 05        .byte $05   ; 
- D 1 - I - 0x013971 04:B961: 05        .byte $05   ; 
- D 1 - I - 0x013972 04:B962: 05        .byte $05   ; 
- D 1 - I - 0x013973 04:B963: 06        .byte $06   ; 
- D 1 - I - 0x013974 04:B964: 06        .byte $06   ; 
- D 1 - I - 0x013975 04:B965: 06        .byte $06   ; 
- D 1 - I - 0x013976 04:B966: 06        .byte $06   ; 
- D 1 - I - 0x013977 04:B967: 06        .byte $06   ; 
- D 1 - I - 0x013978 04:B968: 06        .byte $06   ; 
- D 1 - I - 0x013979 04:B969: 06        .byte $06   ; 
- D 1 - I - 0x01397A 04:B96A: 06        .byte $06   ; 
- D 1 - I - 0x01397B 04:B96B: 07        .byte $07   ; 
- D 1 - I - 0x01397C 04:B96C: 08        .byte $08   ; 
- D 1 - I - 0x01397D 04:B96D: 08        .byte $08   ; 
- D 1 - I - 0x01397E 04:B96E: 09        .byte $09   ; 
- D 1 - I - 0x01397F 04:B96F: 09        .byte $09   ; 
- D 1 - I - 0x013980 04:B970: 0A        .byte $0A   ; 
- D 1 - I - 0x013981 04:B971: 0A        .byte $0A   ; 
- D 1 - I - 0x013982 04:B972: 0A        .byte $0A   ; 
- D 1 - I - 0x013983 04:B973: 0A        .byte $0A   ; 
- D 1 - I - 0x013984 04:B974: 0B        .byte $0B   ; 
- D 1 - I - 0x013985 04:B975: 0B        .byte $0B   ; 
- D 1 - I - 0x013986 04:B976: 0B        .byte $0B   ; 
- D 1 - I - 0x013987 04:B977: 0B        .byte $0B   ; 
- D 1 - I - 0x013988 04:B978: 0C        .byte $0C   ; 
- D 1 - I - 0x013989 04:B979: 0D        .byte $0D   ; 
- D 1 - I - 0x01398A 04:B97A: 0D        .byte $0D   ; 
- D 1 - I - 0x01398B 04:B97B: 0D        .byte $0D   ; 
- D 1 - I - 0x01398C 04:B97C: 0E        .byte $0E   ; 
- D 1 - I - 0x01398D 04:B97D: 0E        .byte $0E   ; 
- D 1 - I - 0x01398E 04:B97E: 0E        .byte $0E   ; 
- D 1 - I - 0x01398F 04:B97F: 0F        .byte $0F   ; 
- D 1 - I - 0x013990 04:B980: 10        .byte $10   ; 
- D 1 - I - 0x013991 04:B981: 10        .byte $10   ; 
- D 1 - I - 0x013992 04:B982: 10        .byte $10   ; 
- D 1 - I - 0x013993 04:B983: 11        .byte $11   ; 
- D 1 - I - 0x013994 04:B984: 13        .byte $13   ; 
- D 1 - I - 0x013995 04:B985: 13        .byte $13   ; 
- D 1 - I - 0x013996 04:B986: FF        .byte $FF   ; 



_off008_B987_02:
- D 1 - I - 0x013997 04:B987: 28        .byte $28   ; 
- D 1 - I - 0x013998 04:B988: 68        .byte $68   ; 
- D 1 - I - 0x013999 04:B989: 48        .byte $48   ; 
- D 1 - I - 0x01399A 04:B98A: B8        .byte $B8   ; 
- D 1 - I - 0x01399B 04:B98B: C8        .byte $C8   ; 
- D 1 - I - 0x01399C 04:B98C: 38        .byte $38   ; 
- D 1 - I - 0x01399D 04:B98D: 88        .byte $88   ; 
- D 1 - I - 0x01399E 04:B98E: 90        .byte $90   ; 
- D 1 - I - 0x01399F 04:B98F: B8        .byte $B8   ; 
- D 1 - I - 0x0139A0 04:B990: 28        .byte $28   ; 
- D 1 - I - 0x0139A1 04:B991: 38        .byte $38   ; 
- D 1 - I - 0x0139A2 04:B992: 78        .byte $78   ; 
- D 1 - I - 0x0139A3 04:B993: 98        .byte $98   ; 
- D 1 - I - 0x0139A4 04:B994: B8        .byte $B8   ; 
- D 1 - I - 0x0139A5 04:B995: D0        .byte $D0   ; 
- D 1 - I - 0x0139A6 04:B996: 18        .byte $18   ; 
- D 1 - I - 0x0139A7 04:B997: 28        .byte $28   ; 
- D 1 - I - 0x0139A8 04:B998: 48        .byte $48   ; 
- D 1 - I - 0x0139A9 04:B999: 78        .byte $78   ; 
- D 1 - I - 0x0139AA 04:B99A: 88        .byte $88   ; 
- D 1 - I - 0x0139AB 04:B99B: B0        .byte $B0   ; 
- D 1 - I - 0x0139AC 04:B99C: B8        .byte $B8   ; 
- D 1 - I - 0x0139AD 04:B99D: C8        .byte $C8   ; 
- D 1 - I - 0x0139AE 04:B99E: 88        .byte $88   ; 
- D 1 - I - 0x0139AF 04:B99F: 88        .byte $88   ; 
- D 1 - I - 0x0139B0 04:B9A0: 30        .byte $30   ; 
- D 1 - I - 0x0139B1 04:B9A1: C8        .byte $C8   ; 
- D 1 - I - 0x0139B2 04:B9A2: D8        .byte $D8   ; 
- D 1 - I - 0x0139B3 04:B9A3: 78        .byte $78   ; 
- D 1 - I - 0x0139B4 04:B9A4: 90        .byte $90   ; 
- D 1 - I - 0x0139B5 04:B9A5: A8        .byte $A8   ; 
- D 1 - I - 0x0139B6 04:B9A6: C8        .byte $C8   ; 
- D 1 - I - 0x0139B7 04:B9A7: 38        .byte $38   ; 
- D 1 - I - 0x0139B8 04:B9A8: D8        .byte $D8   ; 
- D 1 - I - 0x0139B9 04:B9A9: E8        .byte $E8   ; 
- D 1 - I - 0x0139BA 04:B9AA: F0        .byte $F0   ; 
- D 1 - I - 0x0139BB 04:B9AB: C8        .byte $C8   ; 
- D 1 - I - 0x0139BC 04:B9AC: 88        .byte $88   ; 
- D 1 - I - 0x0139BD 04:B9AD: C8        .byte $C8   ; 
- D 1 - I - 0x0139BE 04:B9AE: B8        .byte $B8   ; 
- D 1 - I - 0x0139BF 04:B9AF: 88        .byte $88   ; 
- D 1 - I - 0x0139C0 04:B9B0: 90        .byte $90   ; 
- D 1 - I - 0x0139C1 04:B9B1: 68        .byte $68   ; 
- D 1 - I - 0x0139C2 04:B9B2: E8        .byte $E8   ; 
- D 1 - I - 0x0139C3 04:B9B3: 38        .byte $38   ; 
- D 1 - I - 0x0139C4 04:B9B4: C8        .byte $C8   ; 
- D 1 - I - 0x0139C5 04:B9B5: E8        .byte $E8   ; 
- D 1 - I - 0x0139C6 04:B9B6: FC        .byte $FC   ; 
- D 1 - I - 0x0139C7 04:B9B7: 70        .byte $70   ; 
- D 1 - I - 0x0139C8 04:B9B8: 30        .byte $30   ; 
- - - - - - 0x0139C9 04:B9B9: FF        .byte $FF   ; 



_off009_B9BA_02:
- D 1 - I - 0x0139CA 04:B9BA: 98        .byte $98   ; 
- D 1 - I - 0x0139CB 04:B9BB: 3C        .byte $3C   ; 
- D 1 - I - 0x0139CC 04:B9BC: D8        .byte $D8   ; 
- D 1 - I - 0x0139CD 04:B9BD: 08        .byte $08   ; 
- D 1 - I - 0x0139CE 04:B9BE: B8        .byte $B8   ; 
- D 1 - I - 0x0139CF 04:B9BF: 58        .byte $58   ; 
- D 1 - I - 0x0139D0 04:B9C0: B8        .byte $B8   ; 
- D 1 - I - 0x0139D1 04:B9C1: 30        .byte $30   ; 
- D 1 - I - 0x0139D2 04:B9C2: 58        .byte $58   ; 
- D 1 - I - 0x0139D3 04:B9C3: B8        .byte $B8   ; 
- D 1 - I - 0x0139D4 04:B9C4: 18        .byte $18   ; 
- D 1 - I - 0x0139D5 04:B9C5: 38        .byte $38   ; 
- D 1 - I - 0x0139D6 04:B9C6: 18        .byte $18   ; 
- D 1 - I - 0x0139D7 04:B9C7: A8        .byte $A8   ; 
- D 1 - I - 0x0139D8 04:B9C8: 70        .byte $70   ; 
- D 1 - I - 0x0139D9 04:B9C9: 58        .byte $58   ; 
- D 1 - I - 0x0139DA 04:B9CA: B8        .byte $B8   ; 
- D 1 - I - 0x0139DB 04:B9CB: 6C        .byte $6C   ; 
- D 1 - I - 0x0139DC 04:B9CC: 38        .byte $38   ; 
- D 1 - I - 0x0139DD 04:B9CD: 48        .byte $48   ; 
- D 1 - I - 0x0139DE 04:B9CE: D0        .byte $D0   ; 
- D 1 - I - 0x0139DF 04:B9CF: B8        .byte $B8   ; 
- D 1 - I - 0x0139E0 04:B9D0: 38        .byte $38   ; 
- D 1 - I - 0x0139E1 04:B9D1: 08        .byte $08   ; 
- D 1 - I - 0x0139E2 04:B9D2: 2C        .byte $2C   ; 
- D 1 - I - 0x0139E3 04:B9D3: D0        .byte $D0   ; 
- D 1 - I - 0x0139E4 04:B9D4: 68        .byte $68   ; 
- D 1 - I - 0x0139E5 04:B9D5: C8        .byte $C8   ; 
- D 1 - I - 0x0139E6 04:B9D6: AC        .byte $AC   ; 
- D 1 - I - 0x0139E7 04:B9D7: D0        .byte $D0   ; 
- D 1 - I - 0x0139E8 04:B9D8: 8C        .byte $8C   ; 
- D 1 - I - 0x0139E9 04:B9D9: 88        .byte $88   ; 
- D 1 - I - 0x0139EA 04:B9DA: 98        .byte $98   ; 
- D 1 - I - 0x0139EB 04:B9DB: 08        .byte $08   ; 
- D 1 - I - 0x0139EC 04:B9DC: B8        .byte $B8   ; 
- D 1 - I - 0x0139ED 04:B9DD: D0        .byte $D0   ; 
- D 1 - I - 0x0139EE 04:B9DE: 98        .byte $98   ; 
- D 1 - I - 0x0139EF 04:B9DF: 9C        .byte $9C   ; 
- D 1 - I - 0x0139F0 04:B9E0: 58        .byte $58   ; 
- D 1 - I - 0x0139F1 04:B9E1: 18        .byte $18   ; 
- D 1 - I - 0x0139F2 04:B9E2: C8        .byte $C8   ; 
- D 1 - I - 0x0139F3 04:B9E3: 50        .byte $50   ; 
- D 1 - I - 0x0139F4 04:B9E4: 38        .byte $38   ; 
- D 1 - I - 0x0139F5 04:B9E5: C8        .byte $C8   ; 
- D 1 - I - 0x0139F6 04:B9E6: B8        .byte $B8   ; 
- D 1 - I - 0x0139F7 04:B9E7: 98        .byte $98   ; 
- D 1 - I - 0x0139F8 04:B9E8: C8        .byte $C8   ; 
- D 1 - I - 0x0139F9 04:B9E9: 40        .byte $40   ; 
- D 1 - I - 0x0139FA 04:B9EA: 54        .byte $54   ; 
- D 1 - I - 0x0139FB 04:B9EB: B0        .byte $B0   ; 
- - - - - - 0x0139FC 04:B9EC: FF        .byte $FF   ; 



_off010_B9ED_02:
- D 1 - I - 0x0139FD 04:B9ED: 10        .byte $10   ; 
- D 1 - I - 0x0139FE 04:B9EE: 15        .byte $15   ; 
- D 1 - I - 0x0139FF 04:B9EF: 10        .byte $10   ; 
- D 1 - I - 0x013A00 04:B9F0: 0D        .byte $0D   ; 
- D 1 - I - 0x013A01 04:B9F1: 11        .byte $11   ; 
- D 1 - I - 0x013A02 04:B9F2: 13        .byte $13   ; 
- D 1 - I - 0x013A03 04:B9F3: 11        .byte $11   ; 
- D 1 - I - 0x013A04 04:B9F4: 1D        .byte $1D   ; 
- D 1 - I - 0x013A05 04:B9F5: 13        .byte $13   ; 
- D 1 - I - 0x013A06 04:B9F6: 2D        .byte $2D   ; 
- D 1 - I - 0x013A07 04:B9F7: 38        .byte $38   ; 
- D 1 - I - 0x013A08 04:B9F8: 03        .byte $03   ; 
- D 1 - I - 0x013A09 04:B9F9: 38        .byte $38   ; 
- D 1 - I - 0x013A0A 04:B9FA: 10        .byte $10   ; 
- D 1 - I - 0x013A0B 04:B9FB: 1E        .byte $1E   ; 
- D 1 - I - 0x013A0C 04:B9FC: 36        .byte $36   ; 
- D 1 - I - 0x013A0D 04:B9FD: 37        .byte $37   ; 
- D 1 - I - 0x013A0E 04:B9FE: 15        .byte $15   ; 
- D 1 - I - 0x013A0F 04:B9FF: 10        .byte $10   ; 
- D 1 - I - 0x013A10 04:BA00: 16        .byte $16   ; 
- D 1 - I - 0x013A11 04:BA01: 1F        .byte $1F   ; 
- D 1 - I - 0x013A12 04:BA02: 11        .byte $11   ; 
- D 1 - I - 0x013A13 04:BA03: 2C        .byte $2C   ; 
- D 1 - I - 0x013A14 04:BA04: 0D        .byte $0D   ; 
- D 1 - I - 0x013A15 04:BA05: 15        .byte $15   ; 
- D 1 - I - 0x013A16 04:BA06: 1E        .byte $1E   ; 
- D 1 - I - 0x013A17 04:BA07: 10        .byte $10   ; 
- D 1 - I - 0x013A18 04:BA08: 11        .byte $11   ; 
- D 1 - I - 0x013A19 04:BA09: 15        .byte $15   ; 
- D 1 - I - 0x013A1A 04:BA0A: 1F        .byte $1F   ; 
- D 1 - I - 0x013A1B 04:BA0B: 15        .byte $15   ; 
- D 1 - I - 0x013A1C 04:BA0C: 10        .byte $10   ; 
- D 1 - I - 0x013A1D 04:BA0D: 11        .byte $11   ; 
- D 1 - I - 0x013A1E 04:BA0E: 0D        .byte $0D   ; 
- D 1 - I - 0x013A1F 04:BA0F: 11        .byte $11   ; 
- D 1 - I - 0x013A20 04:BA10: 1D        .byte $1D   ; 
- D 1 - I - 0x013A21 04:BA11: 10        .byte $10   ; 
- D 1 - I - 0x013A22 04:BA12: 15        .byte $15   ; 
- D 1 - I - 0x013A23 04:BA13: 10        .byte $10   ; 
- D 1 - I - 0x013A24 04:BA14: 10        .byte $10   ; 
- D 1 - I - 0x013A25 04:BA15: 03        .byte $03   ; 
- D 1 - I - 0x013A26 04:BA16: 1E        .byte $1E   ; 
- D 1 - I - 0x013A27 04:BA17: 03        .byte $03   ; 
- D 1 - I - 0x013A28 04:BA18: 10        .byte $10   ; 
- D 1 - I - 0x013A29 04:BA19: 11        .byte $11   ; 
- D 1 - I - 0x013A2A 04:BA1A: 10        .byte $10   ; 
- D 1 - I - 0x013A2B 04:BA1B: 10        .byte $10   ; 
- D 1 - I - 0x013A2C 04:BA1C: 26        .byte $26   ; 
- D 1 - I - 0x013A2D 04:BA1D: 17        .byte $17   ; 
- D 1 - I - 0x013A2E 04:BA1E: 1E        .byte $1E   ; 
- - - - - - 0x013A2F 04:BA1F: FF        .byte $FF   ; 



_off007_BA20_03:
- D 1 - I - 0x013A30 04:BA20: 01        .byte $01   ; 
- D 1 - I - 0x013A31 04:BA21: 01        .byte $01   ; 
- D 1 - I - 0x013A32 04:BA22: 01        .byte $01   ; 
- D 1 - I - 0x013A33 04:BA23: 01        .byte $01   ; 
- D 1 - I - 0x013A34 04:BA24: 02        .byte $02   ; 
- D 1 - I - 0x013A35 04:BA25: 02        .byte $02   ; 
- D 1 - I - 0x013A36 04:BA26: 02        .byte $02   ; 
- D 1 - I - 0x013A37 04:BA27: 03        .byte $03   ; 
- D 1 - I - 0x013A38 04:BA28: 03        .byte $03   ; 
- D 1 - I - 0x013A39 04:BA29: 03        .byte $03   ; 
- D 1 - I - 0x013A3A 04:BA2A: 03        .byte $03   ; 
- D 1 - I - 0x013A3B 04:BA2B: 03        .byte $03   ; 
- D 1 - I - 0x013A3C 04:BA2C: 04        .byte $04   ; 
- D 1 - I - 0x013A3D 04:BA2D: 04        .byte $04   ; 
- D 1 - I - 0x013A3E 04:BA2E: 04        .byte $04   ; 
- D 1 - I - 0x013A3F 04:BA2F: 04        .byte $04   ; 
- D 1 - I - 0x013A40 04:BA30: 05        .byte $05   ; 
- D 1 - I - 0x013A41 04:BA31: 05        .byte $05   ; 
- D 1 - I - 0x013A42 04:BA32: 05        .byte $05   ; 
- D 1 - I - 0x013A43 04:BA33: 05        .byte $05   ; 
- D 1 - I - 0x013A44 04:BA34: 06        .byte $06   ; 
- D 1 - I - 0x013A45 04:BA35: 06        .byte $06   ; 
- D 1 - I - 0x013A46 04:BA36: 07        .byte $07   ; 
- D 1 - I - 0x013A47 04:BA37: 07        .byte $07   ; 
- D 1 - I - 0x013A48 04:BA38: 07        .byte $07   ; 
- D 1 - I - 0x013A49 04:BA39: 07        .byte $07   ; 
- D 1 - I - 0x013A4A 04:BA3A: 08        .byte $08   ; 
- D 1 - I - 0x013A4B 04:BA3B: 08        .byte $08   ; 
- D 1 - I - 0x013A4C 04:BA3C: 08        .byte $08   ; 
- D 1 - I - 0x013A4D 04:BA3D: 09        .byte $09   ; 
- D 1 - I - 0x013A4E 04:BA3E: 0A        .byte $0A   ; 
- D 1 - I - 0x013A4F 04:BA3F: 0B        .byte $0B   ; 
- D 1 - I - 0x013A50 04:BA40: 0B        .byte $0B   ; 
- D 1 - I - 0x013A51 04:BA41: 0C        .byte $0C   ; 
- D 1 - I - 0x013A52 04:BA42: 0C        .byte $0C   ; 
- D 1 - I - 0x013A53 04:BA43: 0C        .byte $0C   ; 
- D 1 - I - 0x013A54 04:BA44: 0D        .byte $0D   ; 
- D 1 - I - 0x013A55 04:BA45: 0D        .byte $0D   ; 
- D 1 - I - 0x013A56 04:BA46: 0D        .byte $0D   ; 
- D 1 - I - 0x013A57 04:BA47: 0D        .byte $0D   ; 
- D 1 - I - 0x013A58 04:BA48: 0F        .byte $0F   ; 
- D 1 - I - 0x013A59 04:BA49: 0F        .byte $0F   ; 
- D 1 - I - 0x013A5A 04:BA4A: 0F        .byte $0F   ; 
- D 1 - I - 0x013A5B 04:BA4B: 11        .byte $11   ; 
- D 1 - I - 0x013A5C 04:BA4C: 11        .byte $11   ; 
- D 1 - I - 0x013A5D 04:BA4D: FF        .byte $FF   ; 



_off008_BA4E_03:
- D 1 - I - 0x013A5E 04:BA4E: 50        .byte $50   ; 
- D 1 - I - 0x013A5F 04:BA4F: 78        .byte $78   ; 
- D 1 - I - 0x013A60 04:BA50: 98        .byte $98   ; 
- D 1 - I - 0x013A61 04:BA51: F0        .byte $F0   ; 
- D 1 - I - 0x013A62 04:BA52: 58        .byte $58   ; 
- D 1 - I - 0x013A63 04:BA53: 78        .byte $78   ; 
- D 1 - I - 0x013A64 04:BA54: D8        .byte $D8   ; 
- D 1 - I - 0x013A65 04:BA55: C8        .byte $C8   ; 
- D 1 - I - 0x013A66 04:BA56: 88        .byte $88   ; 
- D 1 - I - 0x013A67 04:BA57: 68        .byte $68   ; 
- D 1 - I - 0x013A68 04:BA58: 88        .byte $88   ; 
- D 1 - I - 0x013A69 04:BA59: 48        .byte $48   ; 
- D 1 - I - 0x013A6A 04:BA5A: 30        .byte $30   ; 
- D 1 - I - 0x013A6B 04:BA5B: D0        .byte $D0   ; 
- D 1 - I - 0x013A6C 04:BA5C: B8        .byte $B8   ; 
- D 1 - I - 0x013A6D 04:BA5D: A8        .byte $A8   ; 
- D 1 - I - 0x013A6E 04:BA5E: 48        .byte $48   ; 
- D 1 - I - 0x013A6F 04:BA5F: 84        .byte $84   ; 
- D 1 - I - 0x013A70 04:BA60: 5C        .byte $5C   ; 
- D 1 - I - 0x013A71 04:BA61: 70        .byte $70   ; 
- D 1 - I - 0x013A72 04:BA62: 80        .byte $80   ; 
- D 1 - I - 0x013A73 04:BA63: A8        .byte $A8   ; 
- D 1 - I - 0x013A74 04:BA64: 40        .byte $40   ; 
- D 1 - I - 0x013A75 04:BA65: 50        .byte $50   ; 
- D 1 - I - 0x013A76 04:BA66: D8        .byte $D8   ; 
- D 1 - I - 0x013A77 04:BA67: C0        .byte $C0   ; 
- D 1 - I - 0x013A78 04:BA68: 28        .byte $28   ; 
- D 1 - I - 0x013A79 04:BA69: 60        .byte $60   ; 
- D 1 - I - 0x013A7A 04:BA6A: D8        .byte $D8   ; 
- D 1 - I - 0x013A7B 04:BA6B: C8        .byte $C8   ; 
- D 1 - I - 0x013A7C 04:BA6C: 48        .byte $48   ; 
- D 1 - I - 0x013A7D 04:BA6D: C8        .byte $C8   ; 
- D 1 - I - 0x013A7E 04:BA6E: 68        .byte $68   ; 
- D 1 - I - 0x013A7F 04:BA6F: 90        .byte $90   ; 
- D 1 - I - 0x013A80 04:BA70: B8        .byte $B8   ; 
- D 1 - I - 0x013A81 04:BA71: D0        .byte $D0   ; 
- D 1 - I - 0x013A82 04:BA72: 68        .byte $68   ; 
- D 1 - I - 0x013A83 04:BA73: 90        .byte $90   ; 
- D 1 - I - 0x013A84 04:BA74: A8        .byte $A8   ; 
- D 1 - I - 0x013A85 04:BA75: B8        .byte $B8   ; 
- D 1 - I - 0x013A86 04:BA76: 98        .byte $98   ; 
- D 1 - I - 0x013A87 04:BA77: 82        .byte $82   ; 
- D 1 - I - 0x013A88 04:BA78: 9A        .byte $9A   ; 
- D 1 - I - 0x013A89 04:BA79: C8        .byte $C8   ; 
- D 1 - I - 0x013A8A 04:BA7A: 30        .byte $30   ; 
- - - - - - 0x013A8B 04:BA7B: FF        .byte $FF   ; 



_off009_BA7C_03:
- D 1 - I - 0x013A8C 04:BA7C: 88        .byte $88   ; 
- D 1 - I - 0x013A8D 04:BA7D: 88        .byte $88   ; 
- D 1 - I - 0x013A8E 04:BA7E: 98        .byte $98   ; 
- D 1 - I - 0x013A8F 04:BA7F: 68        .byte $68   ; 
- D 1 - I - 0x013A90 04:BA80: A8        .byte $A8   ; 
- D 1 - I - 0x013A91 04:BA81: B8        .byte $B8   ; 
- D 1 - I - 0x013A92 04:BA82: 48        .byte $48   ; 
- D 1 - I - 0x013A93 04:BA83: 28        .byte $28   ; 
- D 1 - I - 0x013A94 04:BA84: 48        .byte $48   ; 
- D 1 - I - 0x013A95 04:BA85: 8C        .byte $8C   ; 
- D 1 - I - 0x013A96 04:BA86: 98        .byte $98   ; 
- D 1 - I - 0x013A97 04:BA87: D8        .byte $D8   ; 
- D 1 - I - 0x013A98 04:BA88: 70        .byte $70   ; 
- D 1 - I - 0x013A99 04:BA89: 70        .byte $70   ; 
- D 1 - I - 0x013A9A 04:BA8A: 88        .byte $88   ; 
- D 1 - I - 0x013A9B 04:BA8B: BC        .byte $BC   ; 
- D 1 - I - 0x013A9C 04:BA8C: 38        .byte $38   ; 
- D 1 - I - 0x013A9D 04:BA8D: 94        .byte $94   ; 
- D 1 - I - 0x013A9E 04:BA8E: A4        .byte $A4   ; 
- D 1 - I - 0x013A9F 04:BA8F: D8        .byte $D8   ; 
- D 1 - I - 0x013AA0 04:BA90: 28        .byte $28   ; 
- D 1 - I - 0x013AA1 04:BA91: B8        .byte $B8   ; 
- D 1 - I - 0x013AA2 04:BA92: 28        .byte $28   ; 
- D 1 - I - 0x013AA3 04:BA93: B0        .byte $B0   ; 
- D 1 - I - 0x013AA4 04:BA94: B8        .byte $B8   ; 
- D 1 - I - 0x013AA5 04:BA95: 28        .byte $28   ; 
- D 1 - I - 0x013AA6 04:BA96: 8C        .byte $8C   ; 
- D 1 - I - 0x013AA7 04:BA97: 48        .byte $48   ; 
- D 1 - I - 0x013AA8 04:BA98: 38        .byte $38   ; 
- D 1 - I - 0x013AA9 04:BA99: 28        .byte $28   ; 
- D 1 - I - 0x013AAA 04:BA9A: 28        .byte $28   ; 
- D 1 - I - 0x013AAB 04:BA9B: 08        .byte $08   ; 
- D 1 - I - 0x013AAC 04:BA9C: A8        .byte $A8   ; 
- D 1 - I - 0x013AAD 04:BA9D: B0        .byte $B0   ; 
- D 1 - I - 0x013AAE 04:BA9E: B8        .byte $B8   ; 
- D 1 - I - 0x013AAF 04:BA9F: 44        .byte $44   ; 
- D 1 - I - 0x013AB0 04:BAA0: E8        .byte $E8   ; 
- D 1 - I - 0x013AB1 04:BAA1: D0        .byte $D0   ; 
- D 1 - I - 0x013AB2 04:BAA2: 78        .byte $78   ; 
- D 1 - I - 0x013AB3 04:BAA3: 28        .byte $28   ; 
- D 1 - I - 0x013AB4 04:BAA4: 04        .byte $04   ; 
- D 1 - I - 0x013AB5 04:BAA5: 81        .byte $81   ; 
- D 1 - I - 0x013AB6 04:BAA6: 91        .byte $91   ; 
- D 1 - I - 0x013AB7 04:BAA7: BC        .byte $BC   ; 
- D 1 - I - 0x013AB8 04:BAA8: B0        .byte $B0   ; 
- - - - - - 0x013AB9 04:BAA9: FF        .byte $FF   ; 



_off010_BAAA_03:
- D 1 - I - 0x013ABA 04:BAAA: 21        .byte $21   ; 
- D 1 - I - 0x013ABB 04:BAAB: 35        .byte $35   ; 
- D 1 - I - 0x013ABC 04:BAAC: 22        .byte $22   ; 
- D 1 - I - 0x013ABD 04:BAAD: 21        .byte $21   ; 
- D 1 - I - 0x013ABE 04:BAAE: 19        .byte $19   ; 
- D 1 - I - 0x013ABF 04:BAAF: 22        .byte $22   ; 
- D 1 - I - 0x013AC0 04:BAB0: 0A        .byte $0A   ; 
- D 1 - I - 0x013AC1 04:BAB1: 0A        .byte $0A   ; 
- D 1 - I - 0x013AC2 04:BAB2: 34        .byte $34   ; 
- D 1 - I - 0x013AC3 04:BAB3: 2B        .byte $2B   ; 
- D 1 - I - 0x013AC4 04:BAB4: 22        .byte $22   ; 
- D 1 - I - 0x013AC5 04:BAB5: 0A        .byte $0A   ; 
- D 1 - I - 0x013AC6 04:BAB6: 1D        .byte $1D   ; 
- D 1 - I - 0x013AC7 04:BAB7: 1F        .byte $1F   ; 
- D 1 - I - 0x013AC8 04:BAB8: 0A        .byte $0A   ; 
- D 1 - I - 0x013AC9 04:BAB9: 15        .byte $15   ; 
- D 1 - I - 0x013ACA 04:BABA: 0A        .byte $0A   ; 
- D 1 - I - 0x013ACB 04:BABB: 17        .byte $17   ; 
- D 1 - I - 0x013ACC 04:BABC: 17        .byte $17   ; 
- D 1 - I - 0x013ACD 04:BABD: 1B        .byte $1B   ; 
- D 1 - I - 0x013ACE 04:BABE: 30        .byte $30   ; 
- D 1 - I - 0x013ACF 04:BABF: 05        .byte $05   ; 
- D 1 - I - 0x013AD0 04:BAC0: 30        .byte $30   ; 
- D 1 - I - 0x013AD1 04:BAC1: 1E        .byte $1E   ; 
- D 1 - I - 0x013AD2 04:BAC2: 0E        .byte $0E   ; 
- D 1 - I - 0x013AD3 04:BAC3: 30        .byte $30   ; 
- D 1 - I - 0x013AD4 04:BAC4: 15        .byte $15   ; 
- D 1 - I - 0x013AD5 04:BAC5: 30        .byte $30   ; 
- D 1 - I - 0x013AD6 04:BAC6: 0A        .byte $0A   ; 
- D 1 - I - 0x013AD7 04:BAC7: 0A        .byte $0A   ; 
- D 1 - I - 0x013AD8 04:BAC8: 0A        .byte $0A   ; 
- D 1 - I - 0x013AD9 04:BAC9: 0A        .byte $0A   ; 
- D 1 - I - 0x013ADA 04:BACA: 0E        .byte $0E   ; 
- D 1 - I - 0x013ADB 04:BACB: 1F        .byte $1F   ; 
- D 1 - I - 0x013ADC 04:BACC: 05        .byte $05   ; 
- D 1 - I - 0x013ADD 04:BACD: 18        .byte $18   ; 
- D 1 - I - 0x013ADE 04:BACE: 0C        .byte $0C   ; 
- D 1 - I - 0x013ADF 04:BACF: 1E        .byte $1E   ; 
- D 1 - I - 0x013AE0 04:BAD0: 16        .byte $16   ; 
- D 1 - I - 0x013AE1 04:BAD1: 0A        .byte $0A   ; 
- D 1 - I - 0x013AE2 04:BAD2: 29        .byte $29   ; 
- D 1 - I - 0x013AE3 04:BAD3: 2A        .byte $2A   ; 
- D 1 - I - 0x013AE4 04:BAD4: 2A        .byte $2A   ; 
- D 1 - I - 0x013AE5 04:BAD5: 15        .byte $15   ; 
- D 1 - I - 0x013AE6 04:BAD6: 1D        .byte $1D   ; 
- - - - - - 0x013AE7 04:BAD7: FF        .byte $FF   ; 



_off007_BAD8_04:
- D 1 - I - 0x013AE8 04:BAD8: 01        .byte $01   ; 
- D 1 - I - 0x013AE9 04:BAD9: 01        .byte $01   ; 
- D 1 - I - 0x013AEA 04:BADA: 02        .byte $02   ; 
- D 1 - I - 0x013AEB 04:BADB: 02        .byte $02   ; 
- D 1 - I - 0x013AEC 04:BADC: 02        .byte $02   ; 
- D 1 - I - 0x013AED 04:BADD: 02        .byte $02   ; 
- D 1 - I - 0x013AEE 04:BADE: 02        .byte $02   ; 
- D 1 - I - 0x013AEF 04:BADF: 03        .byte $03   ; 
- D 1 - I - 0x013AF0 04:BAE0: 03        .byte $03   ; 
- D 1 - I - 0x013AF1 04:BAE1: 04        .byte $04   ; 
- D 1 - I - 0x013AF2 04:BAE2: 06        .byte $06   ; 
- D 1 - I - 0x013AF3 04:BAE3: 06        .byte $06   ; 
- D 1 - I - 0x013AF4 04:BAE4: 07        .byte $07   ; 
- D 1 - I - 0x013AF5 04:BAE5: 07        .byte $07   ; 
- D 1 - I - 0x013AF6 04:BAE6: 07        .byte $07   ; 
- D 1 - I - 0x013AF7 04:BAE7: 07        .byte $07   ; 
- D 1 - I - 0x013AF8 04:BAE8: 08        .byte $08   ; 
- D 1 - I - 0x013AF9 04:BAE9: 08        .byte $08   ; 
- D 1 - I - 0x013AFA 04:BAEA: 08        .byte $08   ; 
- D 1 - I - 0x013AFB 04:BAEB: 08        .byte $08   ; 
- D 1 - I - 0x013AFC 04:BAEC: 08        .byte $08   ; 
- D 1 - I - 0x013AFD 04:BAED: 09        .byte $09   ; 
- D 1 - I - 0x013AFE 04:BAEE: 0A        .byte $0A   ; 
- D 1 - I - 0x013AFF 04:BAEF: 0A        .byte $0A   ; 
- D 1 - I - 0x013B00 04:BAF0: 0A        .byte $0A   ; 
- D 1 - I - 0x013B01 04:BAF1: 0A        .byte $0A   ; 
- D 1 - I - 0x013B02 04:BAF2: 0A        .byte $0A   ; 
- D 1 - I - 0x013B03 04:BAF3: 0A        .byte $0A   ; 
- D 1 - I - 0x013B04 04:BAF4: 0B        .byte $0B   ; 
- D 1 - I - 0x013B05 04:BAF5: 0B        .byte $0B   ; 
- D 1 - I - 0x013B06 04:BAF6: 0C        .byte $0C   ; 
- D 1 - I - 0x013B07 04:BAF7: 0C        .byte $0C   ; 
- D 1 - I - 0x013B08 04:BAF8: 0C        .byte $0C   ; 
- D 1 - I - 0x013B09 04:BAF9: 0C        .byte $0C   ; 
- D 1 - I - 0x013B0A 04:BAFA: 0D        .byte $0D   ; 
- D 1 - I - 0x013B0B 04:BAFB: 0D        .byte $0D   ; 
- D 1 - I - 0x013B0C 04:BAFC: 0D        .byte $0D   ; 
- D 1 - I - 0x013B0D 04:BAFD: 0D        .byte $0D   ; 
- D 1 - I - 0x013B0E 04:BAFE: 0E        .byte $0E   ; 
- D 1 - I - 0x013B0F 04:BAFF: 0E        .byte $0E   ; 
- D 1 - I - 0x013B10 04:BB00: 0E        .byte $0E   ; 
- D 1 - I - 0x013B11 04:BB01: 0F        .byte $0F   ; 
- D 1 - I - 0x013B12 04:BB02: 10        .byte $10   ; 
- D 1 - I - 0x013B13 04:BB03: 11        .byte $11   ; 
- D 1 - I - 0x013B14 04:BB04: 12        .byte $12   ; 
- D 1 - I - 0x013B15 04:BB05: 13        .byte $13   ; 
- D 1 - I - 0x013B16 04:BB06: 14        .byte $14   ; 
- D 1 - I - 0x013B17 04:BB07: 14        .byte $14   ; 
- D 1 - I - 0x013B18 04:BB08: 14        .byte $14   ; 
- D 1 - I - 0x013B19 04:BB09: 14        .byte $14   ; 
- D 1 - I - 0x013B1A 04:BB0A: 15        .byte $15   ; 
- D 1 - I - 0x013B1B 04:BB0B: 15        .byte $15   ; 
- D 1 - I - 0x013B1C 04:BB0C: FF        .byte $FF   ; 



_off008_BB0D_04:
- D 1 - I - 0x013B1D 04:BB0D: 90        .byte $90   ; 
- D 1 - I - 0x013B1E 04:BB0E: D0        .byte $D0   ; 
- D 1 - I - 0x013B1F 04:BB0F: 18        .byte $18   ; 
- D 1 - I - 0x013B20 04:BB10: 58        .byte $58   ; 
- D 1 - I - 0x013B21 04:BB11: 70        .byte $70   ; 
- D 1 - I - 0x013B22 04:BB12: B8        .byte $B8   ; 
- D 1 - I - 0x013B23 04:BB13: D0        .byte $D0   ; 
- D 1 - I - 0x013B24 04:BB14: 88        .byte $88   ; 
- D 1 - I - 0x013B25 04:BB15: A0        .byte $A0   ; 
- D 1 - I - 0x013B26 04:BB16: 48        .byte $48   ; 
- D 1 - I - 0x013B27 04:BB17: 68        .byte $68   ; 
- D 1 - I - 0x013B28 04:BB18: D8        .byte $D8   ; 
- D 1 - I - 0x013B29 04:BB19: 18        .byte $18   ; 
- D 1 - I - 0x013B2A 04:BB1A: 88        .byte $88   ; 
- D 1 - I - 0x013B2B 04:BB1B: B0        .byte $B0   ; 
- D 1 - I - 0x013B2C 04:BB1C: B8        .byte $B8   ; 
- D 1 - I - 0x013B2D 04:BB1D: 08        .byte $08   ; 
- D 1 - I - 0x013B2E 04:BB1E: 08        .byte $08   ; 
- D 1 - I - 0x013B2F 04:BB1F: 38        .byte $38   ; 
- D 1 - I - 0x013B30 04:BB20: 50        .byte $50   ; 
- D 1 - I - 0x013B31 04:BB21: E0        .byte $E0   ; 
- D 1 - I - 0x013B32 04:BB22: F0        .byte $F0   ; 
- D 1 - I - 0x013B33 04:BB23: 48        .byte $48   ; 
- D 1 - I - 0x013B34 04:BB24: 40        .byte $40   ; 
- D 1 - I - 0x013B35 04:BB25: 60        .byte $60   ; 
- D 1 - I - 0x013B36 04:BB26: B0        .byte $B0   ; 
- D 1 - I - 0x013B37 04:BB27: C8        .byte $C8   ; 
- D 1 - I - 0x013B38 04:BB28: F8        .byte $F8   ; 
- D 1 - I - 0x013B39 04:BB29: 30        .byte $30   ; 
- D 1 - I - 0x013B3A 04:BB2A: A0        .byte $A0   ; 
- D 1 - I - 0x013B3B 04:BB2B: 50        .byte $50   ; 
- D 1 - I - 0x013B3C 04:BB2C: B0        .byte $B0   ; 
- D 1 - I - 0x013B3D 04:BB2D: A0        .byte $A0   ; 
- D 1 - I - 0x013B3E 04:BB2E: B0        .byte $B0   ; 
- D 1 - I - 0x013B3F 04:BB2F: 48        .byte $48   ; 
- D 1 - I - 0x013B40 04:BB30: 10        .byte $10   ; 
- D 1 - I - 0x013B41 04:BB31: 40        .byte $40   ; 
- D 1 - I - 0x013B42 04:BB32: F0        .byte $F0   ; 
- D 1 - I - 0x013B43 04:BB33: 48        .byte $48   ; 
- D 1 - I - 0x013B44 04:BB34: 90        .byte $90   ; 
- D 1 - I - 0x013B45 04:BB35: 30        .byte $30   ; 
- D 1 - I - 0x013B46 04:BB36: D0        .byte $D0   ; 
- D 1 - I - 0x013B47 04:BB37: F8        .byte $F8   ; 
- D 1 - I - 0x013B48 04:BB38: C8        .byte $C8   ; 
- D 1 - I - 0x013B49 04:BB39: 88        .byte $88   ; 
- D 1 - I - 0x013B4A 04:BB3A: 78        .byte $78   ; 
- D 1 - I - 0x013B4B 04:BB3B: 68        .byte $68   ; 
- D 1 - I - 0x013B4C 04:BB3C: 78        .byte $78   ; 
- D 1 - I - 0x013B4D 04:BB3D: 98        .byte $98   ; 
- D 1 - I - 0x013B4E 04:BB3E: A8        .byte $A8   ; 
- D 1 - I - 0x013B4F 04:BB3F: 80        .byte $80   ; 
- D 1 - I - 0x013B50 04:BB40: 80        .byte $80   ; 
- - - - - - 0x013B51 04:BB41: FF        .byte $FF   ; 



_off009_BB42_04:
- D 1 - I - 0x013B52 04:BB42: B0        .byte $B0   ; 
- D 1 - I - 0x013B53 04:BB43: B0        .byte $B0   ; 
- D 1 - I - 0x013B54 04:BB44: B8        .byte $B8   ; 
- D 1 - I - 0x013B55 04:BB45: 98        .byte $98   ; 
- D 1 - I - 0x013B56 04:BB46: 74        .byte $74   ; 
- D 1 - I - 0x013B57 04:BB47: A8        .byte $A8   ; 
- D 1 - I - 0x013B58 04:BB48: B0        .byte $B0   ; 
- D 1 - I - 0x013B59 04:BB49: B8        .byte $B8   ; 
- D 1 - I - 0x013B5A 04:BB4A: 87        .byte $87   ; 
- D 1 - I - 0x013B5B 04:BB4B: D8        .byte $D8   ; 
- D 1 - I - 0x013B5C 04:BB4C: B8        .byte $B8   ; 
- D 1 - I - 0x013B5D 04:BB4D: D8        .byte $D8   ; 
- D 1 - I - 0x013B5E 04:BB4E: 3C        .byte $3C   ; 
- D 1 - I - 0x013B5F 04:BB4F: 58        .byte $58   ; 
- D 1 - I - 0x013B60 04:BB50: 30        .byte $30   ; 
- D 1 - I - 0x013B61 04:BB51: A8        .byte $A8   ; 
- D 1 - I - 0x013B62 04:BB52: 58        .byte $58   ; 
- D 1 - I - 0x013B63 04:BB53: 9C        .byte $9C   ; 
- D 1 - I - 0x013B64 04:BB54: A8        .byte $A8   ; 
- D 1 - I - 0x013B65 04:BB55: 90        .byte $90   ; 
- D 1 - I - 0x013B66 04:BB56: 67        .byte $67   ; 
- D 1 - I - 0x013B67 04:BB57: B0        .byte $B0   ; 
- D 1 - I - 0x013B68 04:BB58: B8        .byte $B8   ; 
- D 1 - I - 0x013B69 04:BB59: 94        .byte $94   ; 
- D 1 - I - 0x013B6A 04:BB5A: B4        .byte $B4   ; 
- D 1 - I - 0x013B6B 04:BB5B: B0        .byte $B0   ; 
- D 1 - I - 0x013B6C 04:BB5C: 4C        .byte $4C   ; 
- D 1 - I - 0x013B6D 04:BB5D: 98        .byte $98   ; 
- D 1 - I - 0x013B6E 04:BB5E: B0        .byte $B0   ; 
- D 1 - I - 0x013B6F 04:BB5F: B0        .byte $B0   ; 
- D 1 - I - 0x013B70 04:BB60: D0        .byte $D0   ; 
- D 1 - I - 0x013B71 04:BB61: D0        .byte $D0   ; 
- D 1 - I - 0x013B72 04:BB62: 30        .byte $30   ; 
- D 1 - I - 0x013B73 04:BB63: 14        .byte $14   ; 
- D 1 - I - 0x013B74 04:BB64: 78        .byte $78   ; 
- D 1 - I - 0x013B75 04:BB65: 50        .byte $50   ; 
- D 1 - I - 0x013B76 04:BB66: 50        .byte $50   ; 
- D 1 - I - 0x013B77 04:BB67: 50        .byte $50   ; 
- D 1 - I - 0x013B78 04:BB68: BC        .byte $BC   ; 
- D 1 - I - 0x013B79 04:BB69: 54        .byte $54   ; 
- D 1 - I - 0x013B7A 04:BB6A: 40        .byte $40   ; 
- D 1 - I - 0x013B7B 04:BB6B: 60        .byte $60   ; 
- D 1 - I - 0x013B7C 04:BB6C: 88        .byte $88   ; 
- D 1 - I - 0x013B7D 04:BB6D: 78        .byte $78   ; 
- D 1 - I - 0x013B7E 04:BB6E: A8        .byte $A8   ; 
- D 1 - I - 0x013B7F 04:BB6F: 58        .byte $58   ; 
- D 1 - I - 0x013B80 04:BB70: C8        .byte $C8   ; 
- D 1 - I - 0x013B81 04:BB71: 38        .byte $38   ; 
- D 1 - I - 0x013B82 04:BB72: C8        .byte $C8   ; 
- D 1 - I - 0x013B83 04:BB73: 38        .byte $38   ; 
- D 1 - I - 0x013B84 04:BB74: 30        .byte $30   ; 
- D 1 - I - 0x013B85 04:BB75: 54        .byte $54   ; 
- - - - - - 0x013B86 04:BB76: FF        .byte $FF   ; 



_off010_BB77_04:
- D 1 - I - 0x013B87 04:BB77: 08        .byte $08   ; 
- D 1 - I - 0x013B88 04:BB78: 1D        .byte $1D   ; 
- D 1 - I - 0x013B89 04:BB79: 2B        .byte $2B   ; 
- D 1 - I - 0x013B8A 04:BB7A: 11        .byte $11   ; 
- D 1 - I - 0x013B8B 04:BB7B: 18        .byte $18   ; 
- D 1 - I - 0x013B8C 04:BB7C: 11        .byte $11   ; 
- D 1 - I - 0x013B8D 04:BB7D: 1F        .byte $1F   ; 
- D 1 - I - 0x013B8E 04:BB7E: 11        .byte $11   ; 
- D 1 - I - 0x013B8F 04:BB7F: 04        .byte $04   ; 
- D 1 - I - 0x013B90 04:BB80: 11        .byte $11   ; 
- D 1 - I - 0x013B91 04:BB81: 11        .byte $11   ; 
- D 1 - I - 0x013B92 04:BB82: 11        .byte $11   ; 
- D 1 - I - 0x013B93 04:BB83: 15        .byte $15   ; 
- D 1 - I - 0x013B94 04:BB84: 34        .byte $34   ; 
- D 1 - I - 0x013B95 04:BB85: 08        .byte $08   ; 
- D 1 - I - 0x013B96 04:BB86: 37        .byte $37   ; 
- D 1 - I - 0x013B97 04:BB87: 38        .byte $38   ; 
- D 1 - I - 0x013B98 04:BB88: 15        .byte $15   ; 
- D 1 - I - 0x013B99 04:BB89: 2D        .byte $2D   ; 
- D 1 - I - 0x013B9A 04:BB8A: 08        .byte $08   ; 
- D 1 - I - 0x013B9B 04:BB8B: 3D        .byte $3D   ; 
- D 1 - I - 0x013B9C 04:BB8C: 08        .byte $08   ; 
- D 1 - I - 0x013B9D 04:BB8D: 1B        .byte $1B   ; 
- D 1 - I - 0x013B9E 04:BB8E: 17        .byte $17   ; 
- D 1 - I - 0x013B9F 04:BB8F: 18        .byte $18   ; 
- D 1 - I - 0x013BA0 04:BB90: 1F        .byte $1F   ; 
- D 1 - I - 0x013BA1 04:BB91: 15        .byte $15   ; 
- D 1 - I - 0x013BA2 04:BB92: 11        .byte $11   ; 
- D 1 - I - 0x013BA3 04:BB93: 1E        .byte $1E   ; 
- D 1 - I - 0x013BA4 04:BB94: 08        .byte $08   ; 
- D 1 - I - 0x013BA5 04:BB95: 1E        .byte $1E   ; 
- D 1 - I - 0x013BA6 04:BB96: 1D        .byte $1D   ; 
- D 1 - I - 0x013BA7 04:BB97: 09        .byte $09   ; 
- D 1 - I - 0x013BA8 04:BB98: 17        .byte $17   ; 
- D 1 - I - 0x013BA9 04:BB99: 16        .byte $16   ; 
- D 1 - I - 0x013BAA 04:BB9A: 1E        .byte $1E   ; 
- D 1 - I - 0x013BAB 04:BB9B: 09        .byte $09   ; 
- D 1 - I - 0x013BAC 04:BB9C: 1F        .byte $1F   ; 
- D 1 - I - 0x013BAD 04:BB9D: 15        .byte $15   ; 
- D 1 - I - 0x013BAE 04:BB9E: 18        .byte $18   ; 
- D 1 - I - 0x013BAF 04:BB9F: 09        .byte $09   ; 
- D 1 - I - 0x013BB0 04:BBA0: 09        .byte $09   ; 
- D 1 - I - 0x013BB1 04:BBA1: 11        .byte $11   ; 
- D 1 - I - 0x013BB2 04:BBA2: 11        .byte $11   ; 
- D 1 - I - 0x013BB3 04:BBA3: 11        .byte $11   ; 
- D 1 - I - 0x013BB4 04:BBA4: 11        .byte $11   ; 
- D 1 - I - 0x013BB5 04:BBA5: 0B        .byte $0B   ; 
- D 1 - I - 0x013BB6 04:BBA6: 24        .byte $24   ; 
- D 1 - I - 0x013BB7 04:BBA7: 0B        .byte $0B   ; 
- D 1 - I - 0x013BB8 04:BBA8: 24        .byte $24   ; 
- D 1 - I - 0x013BB9 04:BBA9: 2E        .byte $2E   ; 
- D 1 - I - 0x013BBA 04:BBAA: 2F        .byte $2F   ; 
- - - - - - 0x013BBB 04:BBAB: FF        .byte $FF   ; 



_off007_BBAC_05:
- D 1 - I - 0x013BBC 04:BBAC: 00        .byte $00   ; 
- D 1 - I - 0x013BBD 04:BBAD: 00        .byte $00   ; 
- D 1 - I - 0x013BBE 04:BBAE: 00        .byte $00   ; 
- D 1 - I - 0x013BBF 04:BBAF: 00        .byte $00   ; 
- D 1 - I - 0x013BC0 04:BBB0: 00        .byte $00   ; 
- D 1 - I - 0x013BC1 04:BBB1: FF        .byte $FF   ; 



_off008_BBB2_05:
- D 1 - I - 0x013BC2 04:BBB2: 30        .byte $30   ; 
- D 1 - I - 0x013BC3 04:BBB3: D0        .byte $D0   ; 
- D 1 - I - 0x013BC4 04:BBB4: 4C        .byte $4C   ; 
- D 1 - I - 0x013BC5 04:BBB5: 80        .byte $80   ; 
- D 1 - I - 0x013BC6 04:BBB6: 4C        .byte $4C   ; 
- - - - - - 0x013BC7 04:BBB7: FF        .byte $FF   ; 



_off009_BBB8_05:
- D 1 - I - 0x013BC8 04:BBB8: DF        .byte $DF   ; 
- D 1 - I - 0x013BC9 04:BBB9: DF        .byte $DF   ; 
- D 1 - I - 0x013BCA 04:BBBA: 1B        .byte $1B   ; 
- D 1 - I - 0x013BCB 04:BBBB: 3B        .byte $3B   ; 
- D 1 - I - 0x013BCC 04:BBBC: 57        .byte $57   ; 
- - - - - - 0x013BCD 04:BBBD: FF        .byte $FF   ; 



_off010_BBBE_05:
- D 1 - I - 0x013BCE 04:BBBE: 3B        .byte $3B   ; 
- D 1 - I - 0x013BCF 04:BBBF: 3B        .byte $3B   ; 
- D 1 - I - 0x013BD0 04:BBC0: 32        .byte $32   ; 
- D 1 - I - 0x013BD1 04:BBC1: 31        .byte $31   ; 
- D 1 - I - 0x013BD2 04:BBC2: 33        .byte $33   ; 
- - - - - - 0x013BD3 04:BBC3: FF        .byte $FF   ; 



tbl_BBC4:
- - - - - - 0x013BD4 04:BBC4: 90        .byte $90   ; 00 
- D 1 - - - 0x013BD5 04:BBC5: 90        .byte $90   ; 01 
- D 1 - - - 0x013BD6 04:BBC6: 94        .byte $94   ; 02 
- D 1 - - - 0x013BD7 04:BBC7: 90        .byte $90   ; 03 
- D 1 - - - 0x013BD8 04:BBC8: 90        .byte $90   ; 04 
- D 1 - - - 0x013BD9 04:BBC9: 90        .byte $90   ; 05 
- - - - - - 0x013BDA 04:BBCA: 90        .byte $90   ; 06 
- - - - - - 0x013BDB 04:BBCB: 90        .byte $90   ; 07 
- D 1 - - - 0x013BDC 04:BBCC: 90        .byte $90   ; 08 
- D 1 - - - 0x013BDD 04:BBCD: 90        .byte $90   ; 09 
- D 1 - - - 0x013BDE 04:BBCE: 90        .byte $90   ; 0A 
- D 1 - - - 0x013BDF 04:BBCF: 90        .byte $90   ; 0B 
- D 1 - - - 0x013BE0 04:BBD0: 94        .byte $94   ; 0C 
- D 1 - - - 0x013BE1 04:BBD1: 94        .byte $94   ; 0D 
- D 1 - - - 0x013BE2 04:BBD2: 90        .byte $90   ; 0E 
- - - - - - 0x013BE3 04:BBD3: 90        .byte $90   ; 0F 
- D 1 - - - 0x013BE4 04:BBD4: 90        .byte $90   ; 10 
- D 1 - - - 0x013BE5 04:BBD5: 90        .byte $90   ; 11 
- D 1 - - - 0x013BE6 04:BBD6: 90        .byte $90   ; 12 
- D 1 - - - 0x013BE7 04:BBD7: 90        .byte $90   ; 13 
- D 1 - - - 0x013BE8 04:BBD8: 90        .byte $90   ; 14 
- D 1 - - - 0x013BE9 04:BBD9: 90        .byte $90   ; 15 
- D 1 - - - 0x013BEA 04:BBDA: 90        .byte $90   ; 16 
- D 1 - - - 0x013BEB 04:BBDB: 90        .byte $90   ; 17 
- D 1 - - - 0x013BEC 04:BBDC: 90        .byte $90   ; 18 
- D 1 - - - 0x013BED 04:BBDD: 94        .byte $94   ; 19 
- D 1 - - - 0x013BEE 04:BBDE: 94        .byte $94   ; 1A 
- D 1 - - - 0x013BEF 04:BBDF: 90        .byte $90   ; 1B 
- - - - - - 0x013BF0 04:BBE0: 90        .byte $90   ; 1C 
- D 1 - - - 0x013BF1 04:BBE1: 94        .byte $94   ; 1D 
- D 1 - - - 0x013BF2 04:BBE2: 94        .byte $94   ; 1E 
- D 1 - - - 0x013BF3 04:BBE3: 94        .byte $94   ; 1F 
- D 1 - - - 0x013BF4 04:BBE4: 90        .byte $90   ; 20 
- D 1 - - - 0x013BF5 04:BBE5: 94        .byte $94   ; 21 
- D 1 - - - 0x013BF6 04:BBE6: 90        .byte $90   ; 22 
- - - - - - 0x013BF7 04:BBE7: 94        .byte $94   ; 23 
- D 1 - - - 0x013BF8 04:BBE8: 90        .byte $90   ; 24 
- D 1 - - - 0x013BF9 04:BBE9: 90        .byte $90   ; 25 
- D 1 - - - 0x013BFA 04:BBEA: 90        .byte $90   ; 26 
- D 1 - - - 0x013BFB 04:BBEB: 90        .byte $90   ; 27 
- D 1 - - - 0x013BFC 04:BBEC: 94        .byte $94   ; 28 
- D 1 - - - 0x013BFD 04:BBED: 90        .byte $90   ; 29 
- D 1 - - - 0x013BFE 04:BBEE: 90        .byte $90   ; 2A 
- D 1 - - - 0x013BFF 04:BBEF: 94        .byte $94   ; 2B 
- D 1 - - - 0x013C00 04:BBF0: 94        .byte $94   ; 2C 
- D 1 - - - 0x013C01 04:BBF1: 94        .byte $94   ; 2D 
- D 1 - - - 0x013C02 04:BBF2: 90        .byte $90   ; 2E 
- D 1 - - - 0x013C03 04:BBF3: 90        .byte $90   ; 2F 
- D 1 - - - 0x013C04 04:BBF4: 94        .byte $94   ; 30 
- D 1 - - - 0x013C05 04:BBF5: 90        .byte $90   ; 31 
- D 1 - - - 0x013C06 04:BBF6: 94        .byte $94   ; 32 
- D 1 - - - 0x013C07 04:BBF7: 90        .byte $90   ; 33 
- D 1 - - - 0x013C08 04:BBF8: 94        .byte $94   ; 34 
- D 1 - - - 0x013C09 04:BBF9: 94        .byte $94   ; 35 
- D 1 - - - 0x013C0A 04:BBFA: 94        .byte $94   ; 36 
- D 1 - - - 0x013C0B 04:BBFB: 94        .byte $94   ; 37 
- D 1 - - - 0x013C0C 04:BBFC: 94        .byte $94   ; 38 
- - - - - - 0x013C0D 04:BBFD: D0        .byte $D0   ; 39 
- D 1 - - - 0x013C0E 04:BBFE: 94        .byte $94   ; 3A 
- D 1 - - - 0x013C0F 04:BBFF: 90        .byte $90   ; 3B 
- D 1 - - - 0x013C10 04:BC00: 90        .byte $90   ; 3C 
- D 1 - - - 0x013C11 04:BC01: 94        .byte $94   ; 3D 
- - - - - - 0x013C12 04:BC02: 90        .byte $90   ; 3E 
- - - - - - 0x013C13 04:BC03: 90        .byte $90   ; 3F 



tbl_BC04:
- - - - - - 0x013C14 04:BC04: 00        .byte con_obj_id_00   ; 00 
- D 1 - - - 0x013C15 04:BC05: 10        .byte con_obj_id_sea_urchin_1   ; 01 
- D 1 - - - 0x013C16 04:BC06: 11        .byte con_obj_id_spawner_sea_urchin   ; 02 
- D 1 - - - 0x013C17 04:BC07: 12        .byte con_obj_id_piranha_smart   ; 03 
- D 1 - - - 0x013C18 04:BC08: 00        .byte con_obj_id_00   ; 04 
- D 1 - - - 0x013C19 04:BC09: 15        .byte con_obj_id_crab_naked   ; 05 
- - - - - - 0x013C1A 04:BC0A: 16        .byte con_obj_id_mini_fish_1   ; 06 
- - - - - - 0x013C1B 04:BC0B: 17        .byte $17             ; 07 unused con_obj_id_17 
- D 1 - - - 0x013C1C 04:BC0C: 1C        .byte con_obj_id_sleeping_fish   ; 08 
- D 1 - - - 0x013C1D 04:BC0D: 1E        .byte con_obj_id_mother_fish   ; 09 
- D 1 - - - 0x013C1E 04:BC0E: 20        .byte con_obj_id_shrimp   ; 0A 
- D 1 - - - 0x013C1F 04:BC0F: 21        .byte con_obj_id_green_snake   ; 0B 
- D 1 - - - 0x013C20 04:BC10: 22        .byte con_obj_id_spawner_starfish   ; 0C 
- D 1 - - - 0x013C21 04:BC11: 24        .byte con_obj_id_ice_cube_fish   ; 0D 
- D 1 - - - 0x013C22 04:BC12: 25        .byte con_obj_id_crab_helmet   ; 0E 
- - - - - - 0x013C23 04:BC13: 00        .byte con_obj_id_00   ; 0F 
- D 1 - - - 0x013C24 04:BC14: 03        .byte con_obj_id_piranha_stupid   ; 10 
- D 1 - - - 0x013C25 04:BC15: 05        .byte con_obj_id_seahorse   ; 11 
- D 1 - - - 0x013C26 04:BC16: 06        .byte con_obj_id_piranha_ghost   ; 12 
- D 1 - - - 0x013C27 04:BC17: 08        .byte con_obj_id_shooting_fish   ; 13 
- D 1 - - - 0x013C28 04:BC18: 0A        .byte con_obj_id_octopus   ; 14 
- D 1 - - - 0x013C29 04:BC19: 30        .byte con_obj_id_shell   ; 15 
- D 1 - - - 0x013C2A 04:BC1A: 31        .byte con_obj_id_rock_small   ; 16 
- D 1 - - - 0x013C2B 04:BC1B: 32        .byte con_obj_id_rock_big   ; 17 
- D 1 - - - 0x013C2C 04:BC1C: 33        .byte con_obj_id_barrel   ; 18 
- D 1 - - - 0x013C2D 04:BC1D: 4D        .byte con_obj_id_secret_heart_sand   ; 19 
- D 1 - - - 0x013C2E 04:BC1E: 4E        .byte con_obj_id_secret_heart_left   ; 1A 
- D 1 - - - 0x013C2F 04:BC1F: 36        .byte con_obj_id_extra_life   ; 1B 
- - - - - - 0x013C30 04:BC20: 37        .byte con_obj_id_jar   ; 1C 
- D 1 - - - 0x013C31 04:BC21: 38        .byte con_obj_id_chest_pearl_purple   ; 1D 
- D 1 - - - 0x013C32 04:BC22: 39        .byte con_obj_id_chest_pearl_green   ; 1E 
- D 1 - - - 0x013C33 04:BC23: 40        .byte con_obj_id_chest_empty   ; 1F 
- D 1 - - - 0x013C34 04:BC24: 41        .byte con_obj_id_spawner_mini_fish   ; 20 
- D 1 - - - 0x013C35 04:BC25: 3C        .byte con_obj_id_spawner_volcano_bottom   ; 21 
- D 1 - - - 0x013C36 04:BC26: 45        .byte con_obj_id_sand_fish   ; 22 
- - - - - - 0x013C37 04:BC27: 3F        .byte $3F             ; 23 unused con_obj_id_3F 
- D 1 - - - 0x013C38 04:BC28: 21        .byte con_obj_id_green_snake   ; 24 
- D 1 - - - 0x013C39 04:BC29: 0C        .byte con_obj_id_boss_shark_1   ; 25 
- D 1 - - - 0x013C3A 04:BC2A: 2A        .byte con_obj_id_boss_walrus   ; 26 
- D 1 - - - 0x013C3B 04:BC2B: 2C        .byte con_obj_id_boss_eel_1   ; 27 
- D 1 - - - 0x013C3C 04:BC2C: 2D        .byte con_obj_id_boss_eel_2   ; 28 
- D 1 - - - 0x013C3D 04:BC2D: 2E        .byte con_obj_id_boss_seahorse   ; 29 
- D 1 - - - 0x013C3E 04:BC2E: 0F        .byte con_obj_id_cannon   ; 2A 
- D 1 - - - 0x013C3F 04:BC2F: 30        .byte con_obj_id_shell   ; 2B 
- D 1 - - - 0x013C40 04:BC30: 4F        .byte con_obj_id_secret_heart_right   ; 2C 
- D 1 - - - 0x013C41 04:BC31: 50        .byte con_obj_id_secret_heart_down   ; 2D 
- D 1 - - - 0x013C42 04:BC32: 47        .byte con_obj_id_boss_ursula_small_top   ; 2E 
- D 1 - - - 0x013C43 04:BC33: 4A        .byte con_obj_id_boss_ursula_small_bottom   ; 2F 
- D 1 - - - 0x013C44 04:BC34: 43        .byte con_obj_id_spawner_volcano_top   ; 30 
- D 1 - - - 0x013C45 04:BC35: 57        .byte con_obj_id_boss_ursula_big_alive   ; 31 
- D 1 - - - 0x013C46 04:BC36: 00        .byte con_obj_id_00   ; 32 
- D 1 - - - 0x013C47 04:BC37: 00        .byte con_obj_id_00   ; 33 
- D 1 - - - 0x013C48 04:BC38: 51        .byte con_obj_id_secret_heart_up   ; 34 
- D 1 - - - 0x013C49 04:BC39: 52        .byte con_obj_id_secret_item_sand   ; 35 
- D 1 - - - 0x013C4A 04:BC3A: 53        .byte con_obj_id_secret_item_left   ; 36 
- D 1 - - - 0x013C4B 04:BC3B: 55        .byte con_obj_id_secret_item_down   ; 37 
- D 1 - - - 0x013C4C 04:BC3C: 56        .byte con_obj_id_secret_item_up   ; 38 
- - - - - - 0x013C4D 04:BC3D: 0A        .byte con_obj_id_octopus   ; 39 
- D 1 - - - 0x013C4E 04:BC3E: 5A        .byte con_obj_id_spawner_crabs   ; 3A 
- D 1 - - - 0x013C4F 04:BC3F: 00        .byte con_obj_id_00   ; 3B 
- D 1 - - - 0x013C50 04:BC40: 00        .byte con_obj_id_00   ; 3C 
- D 1 - - - 0x013C51 04:BC41: 5E        .byte con_obj_id_teleport   ; 3D 
- - - - - - 0x013C52 04:BC42: 00        .byte con_obj_id_00   ; 3E 
- - - - - - 0x013C53 04:BC43: 00        .byte con_obj_id_00   ; 3F 



tbl_BC44:
- - - - - - 0x013C54 04:BC44: 00        .byte $00   ; 00 
- D 1 - - - 0x013C55 04:BC45: 40        .byte $40   ; 01 
- D 1 - - - 0x013C56 04:BC46: 00        .byte $00   ; 02 
- D 1 - - - 0x013C57 04:BC47: 60        .byte $60   ; 03 
- D 1 - - - 0x013C58 04:BC48: 00        .byte $00   ; 04 
- D 1 - - - 0x013C59 04:BC49: 60        .byte $60   ; 05 
- - - - - - 0x013C5A 04:BC4A: 61        .byte $61   ; 06 
- - - - - - 0x013C5B 04:BC4B: 61        .byte $61   ; 07 
- D 1 - - - 0x013C5C 04:BC4C: 62        .byte $62   ; 08 
- D 1 - - - 0x013C5D 04:BC4D: 63        .byte $63   ; 09 
- D 1 - - - 0x013C5E 04:BC4E: 60        .byte $60   ; 0A 
- D 1 - - - 0x013C5F 04:BC4F: 4A        .byte $4A   ; 0B 
- D 1 - - - 0x013C60 04:BC50: 40        .byte $40   ; 0C 
- D 1 - - - 0x013C61 04:BC51: 40        .byte $40   ; 0D 
- D 1 - - - 0x013C62 04:BC52: 40        .byte $40   ; 0E 
- - - - - - 0x013C63 04:BC53: 00        .byte $00   ; 0F 
- D 1 - - - 0x013C64 04:BC54: 60        .byte $60   ; 10 
- D 1 - - - 0x013C65 04:BC55: 60        .byte $60   ; 11 
- D 1 - - - 0x013C66 04:BC56: 42        .byte $42   ; 12 
- D 1 - - - 0x013C67 04:BC57: 42        .byte $42   ; 13 
- D 1 - - - 0x013C68 04:BC58: 63        .byte $63   ; 14 
- D 1 - - - 0x013C69 04:BC59: 00        .byte $00   ; 15 
- D 1 - - - 0x013C6A 04:BC5A: 80        .byte $80   ; 16 
- D 1 - - - 0x013C6B 04:BC5B: 82        .byte $82   ; 17 
- D 1 - - - 0x013C6C 04:BC5C: 82        .byte $82   ; 18 
- D 1 - - - 0x013C6D 04:BC5D: 00        .byte $00   ; 19 
- D 1 - - - 0x013C6E 04:BC5E: 00        .byte $00   ; 1A 
- D 1 - - - 0x013C6F 04:BC5F: 00        .byte $00   ; 1B 
- - - - - - 0x013C70 04:BC60: 00        .byte $00   ; 1C 
- D 1 - - - 0x013C71 04:BC61: 00        .byte $00   ; 1D 
- D 1 - - - 0x013C72 04:BC62: 00        .byte $00   ; 1E 
- D 1 - - - 0x013C73 04:BC63: 00        .byte $00   ; 1F 
- D 1 - - - 0x013C74 04:BC64: 44        .byte $44   ; 20 
- D 1 - - - 0x013C75 04:BC65: 00        .byte $00   ; 21 
- D 1 - - - 0x013C76 04:BC66: 05        .byte $05   ; 22 
- - - - - - 0x013C77 04:BC67: 00        .byte $00   ; 23 
- D 1 - - - 0x013C78 04:BC68: 4A        .byte $4A   ; 24 
- D 1 - - - 0x013C79 04:BC69: 46        .byte $46   ; 25 
- D 1 - - - 0x013C7A 04:BC6A: 47        .byte $47   ; 26 
- D 1 - - - 0x013C7B 04:BC6B: 00        .byte $00   ; 27 
- D 1 - - - 0x013C7C 04:BC6C: 00        .byte $00   ; 28 
- D 1 - - - 0x013C7D 04:BC6D: 43        .byte $43   ; 29 
- D 1 - - - 0x013C7E 04:BC6E: 40        .byte $40   ; 2A 
- D 1 - - - 0x013C7F 04:BC6F: 00        .byte $00   ; 2B 
- D 1 - - - 0x013C80 04:BC70: 00        .byte $00   ; 2C 
- D 1 - - - 0x013C81 04:BC71: 00        .byte $00   ; 2D 
- D 1 - - - 0x013C82 04:BC72: 49        .byte $49   ; 2E 
- D 1 - - - 0x013C83 04:BC73: 00        .byte $00   ; 2F 
- D 1 - - - 0x013C84 04:BC74: 00        .byte $00   ; 30 
- D 1 - - - 0x013C85 04:BC75: 48        .byte $48   ; 31 
- D 1 - - - 0x013C86 04:BC76: 00        .byte $00   ; 32 
- D 1 - - - 0x013C87 04:BC77: 00        .byte $00   ; 33 
- D 1 - - - 0x013C88 04:BC78: 00        .byte $00   ; 34 
- D 1 - - - 0x013C89 04:BC79: 00        .byte $00   ; 35 
- D 1 - - - 0x013C8A 04:BC7A: 00        .byte $00   ; 36 
- D 1 - - - 0x013C8B 04:BC7B: 00        .byte $00   ; 37 
- D 1 - - - 0x013C8C 04:BC7C: 00        .byte $00   ; 38 
- - - - - - 0x013C8D 04:BC7D: 40        .byte $40   ; 39 
- D 1 - - - 0x013C8E 04:BC7E: 00        .byte $00   ; 3A 
- D 1 - - - 0x013C8F 04:BC7F: 00        .byte $00   ; 3B 
- D 1 - - - 0x013C90 04:BC80: 00        .byte $00   ; 3C 
- D 1 - - - 0x013C91 04:BC81: 00        .byte $00   ; 3D 
- - - - - - 0x013C92 04:BC82: 00        .byte $00   ; 3E 
- - - - - - 0x013C93 04:BC83: 00        .byte $00   ; 3F 



tbl_BC84:
- - - - - - 0x013C94 04:BC84: 00        .byte $00   ; 00 
- D 1 - - - 0x013C95 04:BC85: 23        .byte $23   ; 01 
- D 1 - - - 0x013C96 04:BC86: 00        .byte $00   ; 02 
- D 1 - - - 0x013C97 04:BC87: 20        .byte $20   ; 03 
- D 1 - - - 0x013C98 04:BC88: 6E        .byte $6E   ; 04 
- D 1 - - - 0x013C99 04:BC89: 26        .byte $26   ; 05 
- - - - - - 0x013C9A 04:BC8A: 33        .byte $33   ; 06 
- - - - - - 0x013C9B 04:BC8B: 33        .byte $33   ; 07 
- D 1 - - - 0x013C9C 04:BC8C: 35        .byte $35   ; 08 
- D 1 - - - 0x013C9D 04:BC8D: 3B        .byte $3B   ; 09 
- D 1 - - - 0x013C9E 04:BC8E: 2F        .byte $2F   ; 0A 
- D 1 - - - 0x013C9F 04:BC8F: 29        .byte $29   ; 0B 
- D 1 - - - 0x013CA0 04:BC90: 00        .byte $00   ; 0C 
- D 1 - - - 0x013CA1 04:BC91: 22        .byte $22   ; 0D 
- D 1 - - - 0x013CA2 04:BC92: 1E        .byte $1E   ; 0E 
- - - - - - 0x013CA3 04:BC93: 00        .byte $00   ; 0F 
- D 1 - - - 0x013CA4 04:BC94: 20        .byte $20   ; 10 
- D 1 - - - 0x013CA5 04:BC95: 30        .byte $30   ; 11 
- D 1 - - - 0x013CA6 04:BC96: 3E        .byte $3E   ; 12 
- D 1 - - - 0x013CA7 04:BC97: 37        .byte $37   ; 13 
- D 1 - - - 0x013CA8 04:BC98: 86        .byte $86   ; 14 
- D 1 - - - 0x013CA9 04:BC99: 40        .byte $40   ; 15 
- D 1 - - - 0x013CAA 04:BC9A: 41        .byte $41   ; 16 
- D 1 - - - 0x013CAB 04:BC9B: 42        .byte $42   ; 17 
- D 1 - - - 0x013CAC 04:BC9C: 43        .byte $43   ; 18 
- D 1 - - - 0x013CAD 04:BC9D: 46        .byte $46   ; 19 
- D 1 - - - 0x013CAE 04:BC9E: 46        .byte $46   ; 1A 
- D 1 - - - 0x013CAF 04:BC9F: 48        .byte $48   ; 1B 
- - - - - - 0x013CB0 04:BCA0: 49        .byte $49   ; 1C 
- D 1 - - - 0x013CB1 04:BCA1: 4A        .byte $4A   ; 1D 
- D 1 - - - 0x013CB2 04:BCA2: 4B        .byte $4B   ; 1E 
- D 1 - - - 0x013CB3 04:BCA3: 00        .byte $00   ; 1F 
- D 1 - - - 0x013CB4 04:BCA4: 5F        .byte $5F   ; 20 
- D 1 - - - 0x013CB5 04:BCA5: 00        .byte $00   ; 21 
- D 1 - - - 0x013CB6 04:BCA6: 54        .byte $54   ; 22 
- - - - - - 0x013CB7 04:BCA7: 12        .byte $12   ; 23 
- D 1 - - - 0x013CB8 04:BCA8: 50        .byte $50   ; 24 
- D 1 - - - 0x013CB9 04:BCA9: 5C        .byte $5C   ; 25 
- D 1 - - - 0x013CBA 04:BCAA: 57        .byte $57   ; 26 
- D 1 - - - 0x013CBB 04:BCAB: 59        .byte $59   ; 27 
- D 1 - - - 0x013CBC 04:BCAC: 59        .byte $59   ; 28 
- D 1 - - - 0x013CBD 04:BCAD: 55        .byte $55   ; 29 
- D 1 - - - 0x013CBE 04:BCAE: 77        .byte $77   ; 2A 
- D 1 - - - 0x013CBF 04:BCAF: 40        .byte $40   ; 2B 
- D 1 - - - 0x013CC0 04:BCB0: 46        .byte $46   ; 2C 
- D 1 - - - 0x013CC1 04:BCB1: 46        .byte $46   ; 2D 
- D 1 - - - 0x013CC2 04:BCB2: 78        .byte $78   ; 2E 
- D 1 - - - 0x013CC3 04:BCB3: 21        .byte $21   ; 2F 
- D 1 - - - 0x013CC4 04:BCB4: 00        .byte $00   ; 30 
- D 1 - - - 0x013CC5 04:BCB5: 44        .byte $44   ; 31 
- D 1 - - - 0x013CC6 04:BCB6: 85        .byte $85   ; 32 
- D 1 - - - 0x013CC7 04:BCB7: 83        .byte $83   ; 33 
- D 1 - - - 0x013CC8 04:BCB8: 46        .byte $46   ; 34 
- D 1 - - - 0x013CC9 04:BCB9: 4C        .byte $4C   ; 35 
- D 1 - - - 0x013CCA 04:BCBA: 4C        .byte $4C   ; 36 
- D 1 - - - 0x013CCB 04:BCBB: 4C        .byte $4C   ; 37 
- D 1 - - - 0x013CCC 04:BCBC: 4C        .byte $4C   ; 38 
- - - - - - 0x013CCD 04:BCBD: 2D        .byte $2D   ; 39 
- D 1 - - - 0x013CCE 04:BCBE: 00        .byte $00   ; 3A 
- D 1 - - - 0x013CCF 04:BCBF: 88        .byte $88   ; 3B 
- D 1 - - - 0x013CD0 04:BCC0: 5F        .byte $5F   ; 3C 
- D 1 - - - 0x013CD1 04:BCC1: 6E        .byte $6E   ; 3D 
- - - - - - 0x013CD2 04:BCC2: 00        .byte $00   ; 3E 
- - - - - - 0x013CD3 04:BCC3: 00        .byte $00   ; 3F 



tbl_BCC4:
- - - - - - 0x013CD4 04:BCC4: 01        .byte $01   ; 00 
- D 1 - - - 0x013CD5 04:BCC5: 01        .byte $01   ; 01 
- D 1 - - - 0x013CD6 04:BCC6: 01        .byte $01   ; 02 
- D 1 - - - 0x013CD7 04:BCC7: 01        .byte $01   ; 03 
- D 1 - - - 0x013CD8 04:BCC8: 01        .byte $01   ; 04 
- D 1 - - - 0x013CD9 04:BCC9: 01        .byte $01   ; 05 
- - - - - - 0x013CDA 04:BCCA: 01        .byte $01   ; 06 
- - - - - - 0x013CDB 04:BCCB: 01        .byte $01   ; 07 
- D 1 - - - 0x013CDC 04:BCCC: 02        .byte $02   ; 08 
- D 1 - - - 0x013CDD 04:BCCD: 02        .byte $02   ; 09 
- D 1 - - - 0x013CDE 04:BCCE: 01        .byte $01   ; 0A 
- D 1 - - - 0x013CDF 04:BCCF: 01        .byte $01   ; 0B 
- D 1 - - - 0x013CE0 04:BCD0: 01        .byte $01   ; 0C 
- D 1 - - - 0x013CE1 04:BCD1: 01        .byte $01   ; 0D 
- D 1 - - - 0x013CE2 04:BCD2: 01        .byte $01   ; 0E 
- - - - - - 0x013CE3 04:BCD3: 01        .byte $01   ; 0F 
- D 1 - - - 0x013CE4 04:BCD4: 01        .byte $01   ; 10 
- D 1 - - - 0x013CE5 04:BCD5: 01        .byte $01   ; 11 
- D 1 - - - 0x013CE6 04:BCD6: 01        .byte $01   ; 12 
- D 1 - - - 0x013CE7 04:BCD7: 01        .byte $01   ; 13 
- D 1 - - - 0x013CE8 04:BCD8: 01        .byte $01   ; 14 
- D 1 - - - 0x013CE9 04:BCD9: 01        .byte $01   ; 15 
- D 1 - - - 0x013CEA 04:BCDA: 01        .byte $01   ; 16 
- D 1 - - - 0x013CEB 04:BCDB: 01        .byte $01   ; 17 
- D 1 - - - 0x013CEC 04:BCDC: 01        .byte $01   ; 18 
- D 1 - - - 0x013CED 04:BCDD: 01        .byte $01   ; 19 
- D 1 - - - 0x013CEE 04:BCDE: 01        .byte $01   ; 1A 
- D 1 - - - 0x013CEF 04:BCDF: 01        .byte $01   ; 1B 
- - - - - - 0x013CF0 04:BCE0: 01        .byte $01   ; 1C 
- D 1 - - - 0x013CF1 04:BCE1: 01        .byte $01   ; 1D 
- D 1 - - - 0x013CF2 04:BCE2: 01        .byte $01   ; 1E 
- D 1 - - - 0x013CF3 04:BCE3: 01        .byte $01   ; 1F 
- D 1 - - - 0x013CF4 04:BCE4: 01        .byte $01   ; 20 
- D 1 - - - 0x013CF5 04:BCE5: 01        .byte $01   ; 21 
- D 1 - - - 0x013CF6 04:BCE6: 01        .byte $01   ; 22 
- - - - - - 0x013CF7 04:BCE7: 01        .byte $01   ; 23 
- D 1 - - - 0x013CF8 04:BCE8: 01        .byte $01   ; 24 
- D 1 - - - 0x013CF9 04:BCE9: 04        .byte $04   ; 25 
- D 1 - - - 0x013CFA 04:BCEA: 04        .byte $04   ; 26 
- D 1 - - - 0x013CFB 04:BCEB: 03        .byte $03   ; 27 
- D 1 - - - 0x013CFC 04:BCEC: 03        .byte $03   ; 28 
- D 1 - - - 0x013CFD 04:BCED: 05        .byte $05   ; 29 
- D 1 - - - 0x013CFE 04:BCEE: 01        .byte $01   ; 2A 
- D 1 - - - 0x013CFF 04:BCEF: 01        .byte $01   ; 2B 
- D 1 - - - 0x013D00 04:BCF0: 01        .byte $01   ; 2C 
- D 1 - - - 0x013D01 04:BCF1: 01        .byte $01   ; 2D 
- D 1 - - - 0x013D02 04:BCF2: 06        .byte $06   ; 2E 
- D 1 - - - 0x013D03 04:BCF3: 01        .byte $01   ; 2F 
- D 1 - - - 0x013D04 04:BCF4: 01        .byte $01   ; 30 
- D 1 - - - 0x013D05 04:BCF5: 07        .byte $07   ; 31 
- D 1 - - - 0x013D06 04:BCF6: 01        .byte $01   ; 32 
- D 1 - - - 0x013D07 04:BCF7: 01        .byte $01   ; 33 
- D 1 - - - 0x013D08 04:BCF8: 01        .byte $01   ; 34 
- D 1 - - - 0x013D09 04:BCF9: 01        .byte $01   ; 35 
- D 1 - - - 0x013D0A 04:BCFA: 01        .byte $01   ; 36 
- D 1 - - - 0x013D0B 04:BCFB: 01        .byte $01   ; 37 
- D 1 - - - 0x013D0C 04:BCFC: 01        .byte $01   ; 38 
- - - - - - 0x013D0D 04:BCFD: 01        .byte $01   ; 39 
- D 1 - - - 0x013D0E 04:BCFE: 01        .byte $01   ; 3A 
- D 1 - - - 0x013D0F 04:BCFF: 01        .byte $01   ; 3B 
- D 1 - - - 0x013D10 04:BD00: 01        .byte $01   ; 3C 
- D 1 - - - 0x013D11 04:BD01: 01        .byte $01   ; 3D 
- - - - - - 0x013D12 04:BD02: 01        .byte $01   ; 3E 
- - - - - - 0x013D13 04:BD03: 01        .byte $01   ; 3F 



tbl_BD04_index:
- - - - - - 0x013D14 04:BD04: 00        .byte $00   ; 00 
- D 1 - - - 0x013D15 04:BD05: 01        .byte $01   ; 01 
- D 1 - - - 0x013D16 04:BD06: 00        .byte $00   ; 02 
- D 1 - - - 0x013D17 04:BD07: 01        .byte $01   ; 03 
- D 1 - - - 0x013D18 04:BD08: 00        .byte $00   ; 04 
- D 1 - - - 0x013D19 04:BD09: 01        .byte $01   ; 05 
- - - - - - 0x013D1A 04:BD0A: 00        .byte $00   ; 06 
- - - - - - 0x013D1B 04:BD0B: 00        .byte $00   ; 07 
- D 1 - - - 0x013D1C 04:BD0C: 00        .byte $00   ; 08 
- D 1 - - - 0x013D1D 04:BD0D: 02        .byte $02   ; 09 
- D 1 - - - 0x013D1E 04:BD0E: 00        .byte $00   ; 0A 
- D 1 - - - 0x013D1F 04:BD0F: 00        .byte $00   ; 0B 
- D 1 - - - 0x013D20 04:BD10: 00        .byte $00   ; 0C 
- D 1 - - - 0x013D21 04:BD11: 01        .byte $01   ; 0D 
- D 1 - - - 0x013D22 04:BD12: 01        .byte $01   ; 0E 
- - - - - - 0x013D23 04:BD13: 00        .byte $00   ; 0F 
- D 1 - - - 0x013D24 04:BD14: 01        .byte $01   ; 10 
- D 1 - - - 0x013D25 04:BD15: 01        .byte $01   ; 11 
- D 1 - - - 0x013D26 04:BD16: 01        .byte $01   ; 12 
- D 1 - - - 0x013D27 04:BD17: 00        .byte $00   ; 13 
- D 1 - - - 0x013D28 04:BD18: 00        .byte $00   ; 14 
- D 1 - - - 0x013D29 04:BD19: 00        .byte $00   ; 15 
- D 1 - - - 0x013D2A 04:BD1A: 00        .byte $00   ; 16 
- D 1 - - - 0x013D2B 04:BD1B: 00        .byte $00   ; 17 
- D 1 - - - 0x013D2C 04:BD1C: 01        .byte $01   ; 18 
- D 1 - - - 0x013D2D 04:BD1D: 00        .byte $00   ; 19 
- D 1 - - - 0x013D2E 04:BD1E: 00        .byte $00   ; 1A 
- D 1 - - - 0x013D2F 04:BD1F: 00        .byte $00   ; 1B 
- - - - - - 0x013D30 04:BD20: 00        .byte $00   ; 1C 
- D 1 - - - 0x013D31 04:BD21: 00        .byte $00   ; 1D 
- D 1 - - - 0x013D32 04:BD22: 00        .byte $00   ; 1E 
- D 1 - - - 0x013D33 04:BD23: 00        .byte $00   ; 1F 
- D 1 - - - 0x013D34 04:BD24: 00        .byte $00   ; 20 
- D 1 - - - 0x013D35 04:BD25: 00        .byte $00   ; 21 
- D 1 - - - 0x013D36 04:BD26: 03        .byte $03   ; 22 
- - - - - - 0x013D37 04:BD27: 00        .byte $00   ; 23 
- D 1 - - - 0x013D38 04:BD28: 00        .byte $00   ; 24 
- D 1 - - - 0x013D39 04:BD29: 01        .byte $01   ; 25 
- D 1 - - - 0x013D3A 04:BD2A: 04        .byte $04   ; 26 
- D 1 - - - 0x013D3B 04:BD2B: 06        .byte $06   ; 27 
- D 1 - - - 0x013D3C 04:BD2C: 06        .byte $06   ; 28 
- D 1 - - - 0x013D3D 04:BD2D: 00        .byte $00   ; 29 
- D 1 - - - 0x013D3E 04:BD2E: 00        .byte $00   ; 2A 
- D 1 - - - 0x013D3F 04:BD2F: 00        .byte $00   ; 2B 
- D 1 - - - 0x013D40 04:BD30: 00        .byte $00   ; 2C 
- D 1 - - - 0x013D41 04:BD31: 00        .byte $00   ; 2D 
- D 1 - - - 0x013D42 04:BD32: 00        .byte $00   ; 2E 
- D 1 - - - 0x013D43 04:BD33: 00        .byte $00   ; 2F 
- D 1 - - - 0x013D44 04:BD34: 00        .byte $00   ; 30 
- D 1 - - - 0x013D45 04:BD35: 00        .byte $00   ; 31 
- D 1 - - - 0x013D46 04:BD36: 00        .byte $00   ; 32 
- D 1 - - - 0x013D47 04:BD37: 00        .byte $00   ; 33 
- D 1 - - - 0x013D48 04:BD38: 00        .byte $00   ; 34 
- D 1 - - - 0x013D49 04:BD39: 00        .byte $00   ; 35 
- D 1 - - - 0x013D4A 04:BD3A: 00        .byte $00   ; 36 
- D 1 - - - 0x013D4B 04:BD3B: 00        .byte $00   ; 37 
- D 1 - - - 0x013D4C 04:BD3C: 00        .byte $00   ; 38 
- - - - - - 0x013D4D 04:BD3D: 00        .byte $00   ; 39 
- D 1 - - - 0x013D4E 04:BD3E: 00        .byte $00   ; 3A 
- D 1 - - - 0x013D4F 04:BD3F: 00        .byte $00   ; 3B 
- D 1 - - - 0x013D50 04:BD40: 00        .byte $00   ; 3C 
- D 1 - - - 0x013D51 04:BD41: 00        .byte $00   ; 3D 
- - - - - - 0x013D52 04:BD42: 00        .byte $00   ; 3E 
- - - - - - 0x013D53 04:BD43: 00        .byte $00   ; 3F 



tbl_BD44_spd_X_lo:
- D 1 - - - 0x013D54 04:BD44: 00        .byte < $0000   ; 00 
- D 1 - - - 0x013D55 04:BD45: 80        .byte < $0080   ; 01 
- D 1 - - - 0x013D56 04:BD46: 00        .byte < $0100   ; 02 
- D 1 - - - 0x013D57 04:BD47: 80        .byte < $0180   ; 03 
- D 1 - - - 0x013D58 04:BD48: 40        .byte < $0040   ; 04 
- - - - - - 0x013D59 04:BD49: 00        .byte < $0400   ; 05 unused, index doesn't exist
- D 1 - - - 0x013D5A 04:BD4A: 00        .byte < $0200   ; 06 



tbl_BD4B_spd_X_hi:
- D 1 - - - 0x013D5B 04:BD4B: 00        .byte > $0000   ; 00 
- D 1 - - - 0x013D5C 04:BD4C: 00        .byte > $0080   ; 01 
- D 1 - - - 0x013D5D 04:BD4D: 01        .byte > $0100   ; 02 
- D 1 - - - 0x013D5E 04:BD4E: 01        .byte > $0180   ; 03 
- D 1 - - - 0x013D5F 04:BD4F: 00        .byte > $0040   ; 04 
- - - - - - 0x013D60 04:BD50: 04        .byte > $0400   ; 05 unused, index doesn't exist
- D 1 - - - 0x013D61 04:BD51: 02        .byte > $0200   ; 06 


; bzk garbage
- - - - - - 0x013D62 04:BD52: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013D70 04:BD60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013D80 04:BD70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013D90 04:BD80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013DA0 04:BD90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013DB0 04:BDA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013DC0 04:BDB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013DD0 04:BDC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013DE0 04:BDD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013DF0 04:BDE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013E00 04:BDF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 


; bzk garbage
- - - - - - 0x013E10 04:BE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E20 04:BE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $DF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E30 04:BE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E40 04:BE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E50 04:BE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E60 04:BE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E70 04:BE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E80 04:BE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013E90 04:BE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013EA0 04:BE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013EB0 04:BEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013EC0 04:BEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013ED0 04:BEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013EE0 04:BED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013EF0 04:BEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F00 04:BEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 


; bzk garbage
- - - - - - 0x013F10 04:BF00: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013F20 04:BF10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013F30 04:BF20: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013F40 04:BF30: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013F50 04:BF40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013F60 04:BF50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013F70 04:BF60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x013F80 04:BF70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



tbl_0x013F90:
- D 1 - - - 0x013F90 04:BF80: 00        .byte $00   ; 00 
- - - - - - 0x013F91 04:BF81: 00        .byte $00   ; 01 
- D 1 - - - 0x013F92 04:BF82: 02        .byte $02   ; 02 
- - - - - - 0x013F93 04:BF83: 07        .byte $07   ; 03 
- D 1 - - - 0x013F94 04:BF84: 09        .byte $09   ; 04 
- - - - - - 0x013F95 04:BF85: 0A        .byte $0A   ; 05 
- D 1 - - - 0x013F96 04:BF86: 0A        .byte $0A   ; 06 
- D 1 - - - 0x013F97 04:BF87: 0C        .byte $0C   ; 07 
- D 1 - - - 0x013F98 04:BF88: 10        .byte $10   ; 08 
- - - - - - 0x013F99 04:BF89: 15        .byte $15   ; 09 
- - - - - - 0x013F9A 04:BF8A: 16        .byte $16   ; 0A 
- - - - - - 0x013F9B 04:BF8B: 1C        .byte $1C   ; 0B 
- - - - - - 0x013F9C 04:BF8C: 1E        .byte $1E   ; 0C 
- - - - - - 0x013F9D 04:BF8D: 22        .byte $22   ; 0D 
- - - - - - 0x013F9E 04:BF8E: 26        .byte $26   ; 0E 
- - - - - - 0x013F9F 04:BF8F: 29        .byte $29   ; 0F 
- D 1 - - - 0x013FA0 04:BF90: 2A        .byte $2A   ; 10 
- D 1 - - - 0x013FA1 04:BF91: 2B        .byte $2B   ; 11 
- D 1 - - - 0x013FA2 04:BF92: 2C        .byte $2C   ; 12 
- D 1 - - - 0x013FA3 04:BF93: 2D        .byte $2D   ; 13 
- - - - - - 0x013FA4 04:BF94: 2E        .byte $2E   ; 14 
- - - - - - 0x013FA5 04:BF95: 32        .byte $32   ; 15 
- - - - - - 0x013FA6 04:BF96: 00        .byte $00   ; 16 
- - - - - - 0x013FA7 04:BF97: 00        .byte $00   ; 17 
- - - - - - 0x013FA8 04:BF98: 00        .byte $00   ; 18 
- - - - - - 0x013FA9 04:BF99: 00        .byte $00   ; 19 
- - - - - - 0x013FAA 04:BF9A: 00        .byte $00   ; 1A 
- - - - - - 0x013FAB 04:BF9B: 00        .byte $00   ; 1B 
- - - - - - 0x013FAC 04:BF9C: 00        .byte $00   ; 1C 
- - - - - - 0x013FAD 04:BF9D: 00        .byte $00   ; 1D 
- - - - - - 0x013FAE 04:BF9E: 00        .byte $00   ; 1E 
- - - - - - 0x013FAF 04:BF9F: 00        .byte $00   ; 1F 



tbl_0x013FB0:
- D 1 - - - 0x013FB0 04:BFA0: 11        .byte $11   ; 00 
- D 1 - - - 0x013FB1 04:BFA1: 27        .byte $27   ; 01 
- D 1 - - - 0x013FB2 04:BFA2: 2B        .byte $2B   ; 02 
- D 1 - - - 0x013FB3 04:BFA3: 28        .byte $28   ; 03 
- D 1 - - - 0x013FB4 04:BFA4: 2E        .byte $2E   ; 04 
- - - - - - 0x013FB5 04:BFA5: 00        .byte $00   ; 05 


; bzk garbage
- - - - - - 0x013FB6 04:BFA6: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



tbl_0x013FC0:
- D 1 - - - 0x013FC0 04:BFB0: 1D        .byte $1D   ; 00 
- - - - - - 0x013FC1 04:BFB1: 00        .byte $00   ; 01 
- D 1 - - - 0x013FC2 04:BFB2: 30        .byte $30   ; 02 
- D 1 - - - 0x013FC3 04:BFB3: 2B        .byte $2B   ; 03 
- - - - - - 0x013FC4 04:BFB4: 00        .byte $00   ; 04 
- - - - - - 0x013FC5 04:BFB5: 00        .byte $00   ; 05 


; bzk garbage
- - - - - - 0x013FC6 04:BFB6: 00        .byte $00, $00   ; 



tbl_0x013FC8:
- D 1 - - - 0x013FC8 04:BFB8: 13        .byte $13   ; 00 
- - - - - - 0x013FC9 04:BFB9: 00        .byte $00   ; 01 
- D 1 - - - 0x013FCA 04:BFBA: 09        .byte $09   ; 02 
- D 1 - - - 0x013FCB 04:BFBB: 16        .byte $16   ; 03 
- - - - - - 0x013FCC 04:BFBC: 00        .byte $00   ; 04 
- - - - - - 0x013FCD 04:BFBD: 00        .byte $00   ; 05 


; bzk garbage
- - - - - - 0x013FCE 04:BFBE: 00        .byte $00, $00   ; 



tbl_0x013FD0_lo:
- D 1 - - - 0x013FD0 04:BFC0: 04        .byte < _off007_B804_00   ; 
- D 1 - - - 0x013FD1 04:BFC1: 80        .byte < _off007_B880_01   ; 
- D 1 - - - 0x013FD2 04:BFC2: 54        .byte < _off007_B954_02   ; 
- D 1 - - - 0x013FD3 04:BFC3: 20        .byte < _off007_BA20_03   ; 
- D 1 - - - 0x013FD4 04:BFC4: D8        .byte < _off007_BAD8_04   ; 
- D 1 - - - 0x013FD5 04:BFC5: AC        .byte < _off007_BBAC_05   ; 


; bzk garbage
- - - - - - 0x013FD6 04:BFC6: 00        .byte $00, $00   ; 



tbl_0x013FD8_hi:
- D 1 - - - 0x013FD8 04:BFC8: B8        .byte > _off007_B804_00   ; 
- D 1 - - - 0x013FD9 04:BFC9: B8        .byte > _off007_B880_01   ; 
- D 1 - - - 0x013FDA 04:BFCA: B9        .byte > _off007_B954_02   ; 
- D 1 - - - 0x013FDB 04:BFCB: BA        .byte > _off007_BA20_03   ; 
- D 1 - - - 0x013FDC 04:BFCC: BA        .byte > _off007_BAD8_04   ; 
- D 1 - - - 0x013FDD 04:BFCD: BB        .byte > _off007_BBAC_05   ; 


; bzk garbage
- - - - - - 0x013FDE 04:BFCE: 00        .byte $00, $00   ; 



tbl_0x013FE0_lo:
- D 1 - - - 0x013FE0 04:BFD0: 23        .byte < _off008_B823_00   ; 
- D 1 - - - 0x013FE1 04:BFD1: B4        .byte < _off008_B8B4_01   ; 
- D 1 - - - 0x013FE2 04:BFD2: 87        .byte < _off008_B987_02   ; 
- D 1 - - - 0x013FE3 04:BFD3: 4E        .byte < _off008_BA4E_03   ; 
- D 1 - - - 0x013FE4 04:BFD4: 0D        .byte < _off008_BB0D_04   ; 
- D 1 - - - 0x013FE5 04:BFD5: B2        .byte < _off008_BBB2_05   ; 


; bzk garbage
- - - - - - 0x013FE6 04:BFD6: 00        .byte $00, $00   ; 



tbl_0x013FE8_hi:
- D 1 - - - 0x013FE8 04:BFD8: B8        .byte > _off008_B823_00   ; 
- D 1 - - - 0x013FE9 04:BFD9: B8        .byte > _off008_B8B4_01   ; 
- D 1 - - - 0x013FEA 04:BFDA: B9        .byte > _off008_B987_02   ; 
- D 1 - - - 0x013FEB 04:BFDB: BA        .byte > _off008_BA4E_03   ; 
- D 1 - - - 0x013FEC 04:BFDC: BB        .byte > _off008_BB0D_04   ; 
- D 1 - - - 0x013FED 04:BFDD: BB        .byte > _off008_BBB2_05   ; 


; bzk garbage
- - - - - - 0x013FEE 04:BFDE: 00        .byte $00, $00   ; 



tbl_0x013FF0_lo:
- D 1 - - - 0x013FF0 04:BFE0: 42        .byte < _off009_B842_00   ; 
- D 1 - - - 0x013FF1 04:BFE1: EC        .byte < _off009_B8EC_01   ; 
- D 1 - - - 0x013FF2 04:BFE2: BA        .byte < _off009_B9BA_02   ; 
- D 1 - - - 0x013FF3 04:BFE3: 7C        .byte < _off009_BA7C_03   ; 
- D 1 - - - 0x013FF4 04:BFE4: 42        .byte < _off009_BB42_04   ; 
- D 1 - - - 0x013FF5 04:BFE5: B8        .byte < _off009_BBB8_05   ; 


; bzk garbage
- - - - - - 0x013FF6 04:BFE6: 00        .byte $00, $00   ; 



tbl_0x013FF8_hi:
- D 1 - - - 0x013FF8 04:BFE8: B8        .byte > _off009_B842_00   ; 
- D 1 - - - 0x013FF9 04:BFE9: B8        .byte > _off009_B8EC_01   ; 
- D 1 - - - 0x013FFA 04:BFEA: B9        .byte > _off009_B9BA_02   ; 
- D 1 - - - 0x013FFB 04:BFEB: BA        .byte > _off009_BA7C_03   ; 
- D 1 - - - 0x013FFC 04:BFEC: BB        .byte > _off009_BB42_04   ; 
- D 1 - - - 0x013FFD 04:BFED: BB        .byte > _off009_BBB8_05   ; 


; bzk garbage
- - - - - - 0x013FFE 04:BFEE: 00        .byte $00, $00   ; 



tbl_0x014000_lo:
- D 1 - - - 0x014000 04:BFF0: 61        .byte < _off010_B861_00   ; 
- D 1 - - - 0x014001 04:BFF1: 20        .byte < _off010_B920_01   ; 
- D 1 - - - 0x014002 04:BFF2: ED        .byte < _off010_B9ED_02   ; 
- D 1 - - - 0x014003 04:BFF3: AA        .byte < _off010_BAAA_03   ; 
- D 1 - - - 0x014004 04:BFF4: 77        .byte < _off010_BB77_04   ; 
- D 1 - - - 0x014005 04:BFF5: BE        .byte < _off010_BBBE_05   ; 



; bzk garbage
- - - - - - 0x014006 04:BFF6: 00        .byte $00, $00   ; 



tbl_0x014008_hi:
- D 1 - - - 0x014008 04:BFF8: B8        .byte > _off010_B861_00   ; 
- D 1 - - - 0x014009 04:BFF9: B9        .byte > _off010_B920_01   ; 
- D 1 - - - 0x01400A 04:BFFA: B9        .byte > _off010_B9ED_02   ; 
- D 1 - - - 0x01400B 04:BFFB: BA        .byte > _off010_BAAA_03   ; 
- D 1 - - - 0x01400C 04:BFFC: BB        .byte > _off010_BB77_04   ; 
- D 1 - - - 0x01400D 04:BFFD: BB        .byte > _off010_BBBE_05   ; 


; bzk garbage
- - - - - - 0x01400E 04:BFFE: 00        .byte $00, $00   ; 



.out .sprintf("Free bytes in bank 04: 0x%04X [%d]", ($C000 - *), ($C000 - *))



