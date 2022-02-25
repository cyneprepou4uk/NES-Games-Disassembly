.segment "BANK_06"
.include "bank_ram.inc"
.include "bank_val.inc"
; 0x018010-0x019CE7

; !!! bzk .org control commands here
; take them into account when making
; changes inside this file



.export loc_0x01804E
.export sub_0x01809C
.export sub_0x018119
.export sub_0x01A090



tbl_8000:
- D 0 - - - 0x018010 06:8000: 00 84     .word _off009_8400_00
- D 0 - - - 0x018012 06:8002: 00 87     .word _off009_8700_01
- D 0 - - - 0x018014 06:8004: 00 87     .word _off009_8700_02
- D 0 - - - 0x018016 06:8006: 00 87     .word _off009_8700_03
- D 0 - - - 0x018018 06:8008: 00 87     .word _off009_8700_04
- D 0 - - - 0x01801A 06:800A: 00 87     .word _off009_8700_05
- D 0 - - - 0x01801C 06:800C: 00 87     .word _off009_8700_06
- D 0 - - - 0x01801E 06:800E: 00 8A     .word _off009_8A00_07
- D 0 - - - 0x018020 06:8010: 00 8A     .word _off009_8A00_08
- D 0 - - - 0x018022 06:8012: 00 8A     .word _off009_8A00_09



tbl_8014:
- D 0 - - - 0x018024 06:8014: 00 93     .word _off010_9300_00
- D 0 - - - 0x018026 06:8016: FC 93     .word _off010_93FC_01
- D 0 - - - 0x018028 06:8018: F8 94     .word _off010_94F8_02
- D 0 - - - 0x01802A 06:801A: F4 95     .word _off010_95F4_03
- D 0 - - - 0x01802C 06:801C: F0 96     .word _off010_96F0_04
- D 0 - - - 0x01802E 06:801E: EC 97     .word _off010_97EC_05
- D 0 - - - 0x018030 06:8020: E8 98     .word _off010_98E8_06
- D 0 - - - 0x018032 06:8022: E4 99     .word _off010_99E4_07
- D 0 - - - 0x018034 06:8024: E0 9A     .word _off010_9AE0_08
- D 0 - - - 0x018036 06:8026: DC 9B     .word _off010_9BDC_09



tbl_8028_bat_table_location:
- D 0 - - - 0x018038 06:8028: D8 9C     .word ofs_9CD8_bank_s1_asm_export



tbl_802A:
- D 0 - - - 0x01803A 06:802A: 00 84     .word _off011_8400_00
- D 0 - - - 0x01803C 06:802C: 00 8D     .word _off011_8D00_01
- D 0 - - - 0x01803E 06:802E: 00 8D     .word _off011_8D00_02
- D 0 - - - 0x018040 06:8030: 00 8D     .word _off011_8D00_03
- D 0 - - - 0x018042 06:8032: 00 8D     .word _off011_8D00_04
- D 0 - - - 0x018044 06:8034: 00 8D     .word _off011_8D00_05
- D 0 - - - 0x018046 06:8036: 00 8D     .word _off011_8D00_06
- D 0 - - - 0x018048 06:8038: 00 90     .word _off011_9000_07
- D 0 - - - 0x01804A 06:803A: 00 90     .word _off011_9000_08
- D 0 - - - 0x01804C 06:803C: 00 90     .word _off011_9000_09



loc_0x01804E:
C D 0 - - - 0x01804E 06:803E: A5 13     LDA ram_game_mode_sub
C - - - - - 0x018050 06:8040: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- D 0 - I - 0x018053 06:8043: 47 80     .word ofs_027_8047_00
- D 0 - I - 0x018055 06:8045: 70 80     .word ofs_027_8070_01



ofs_027_8047_00:
C - - J - - 0x018057 06:8047: A5 10     LDA ram_0010
C - - - - - 0x018059 06:8049: 0A        ASL
C - - - - - 0x01805A 06:804A: AA        TAX
C - - - - - 0x01805B 06:804B: A4 16     LDY ram_cur_save_slot
C - - - - - 0x01805D 06:804D: B9 2D 06  LDA ram_current_quest,Y
C - - - - - 0x018060 06:8050: D0 0C     BNE bra_805E_2nd_quest
; if 1st quest
C - - - - - 0x018062 06:8052: BD 00 80  LDA tbl_8000,X
C - - - - - 0x018065 06:8055: 85 00     STA ram_0000
C - - - - - 0x018067 06:8057: E8        INX
C - - - - - 0x018068 06:8058: BD 00 80  LDA tbl_8000,X
C - - - - - 0x01806B 06:805B: 4C 67 80  JMP loc_8067
bra_805E_2nd_quest:
C - - - - - 0x01806E 06:805E: BD 2A 80  LDA tbl_802A,X
C - - - - - 0x018071 06:8061: 85 00     STA ram_0000
C - - - - - 0x018073 06:8063: E8        INX
C - - - - - 0x018074 06:8064: BD 2A 80  LDA tbl_802A,X
loc_8067:
C D 0 - - - 0x018077 06:8067: 85 01     STA ram_0001
C - - - - - 0x018079 06:8069: 20 A4 80  JSR sub_80A4_set_copy_range_687E_6B7D
C - - - - - 0x01807C 06:806C: 20 D7 80  JSR sub_80D7_copy_bat_table_to_bat
C - - - - - 0x01807F 06:806F: 60        RTS



ofs_027_8070_01:
C - - J - - 0x018080 06:8070: A5 10     LDA ram_0010
C - - - - - 0x018082 06:8072: 0A        ASL
C - - - - - 0x018083 06:8073: AA        TAX
C - - - - - 0x018084 06:8074: BD 14 80  LDA tbl_8014,X
C - - - - - 0x018087 06:8077: 85 00     STA ram_0000
C - - - - - 0x018089 06:8079: E8        INX
C - - - - - 0x01808A 06:807A: BD 14 80  LDA tbl_8014,X
C - - - - - 0x01808D 06:807D: 85 01     STA ram_0001
C - - - - - 0x01808F 06:807F: 20 B5 80  JSR sub_80B5_set_copy_range_6B7E_6C7D
C - - - - - 0x018092 06:8082: 20 D7 80  JSR sub_80D7_copy_bat_table_to_bat
C - - - - - 0x018095 06:8085: A9 00     LDA #$00
C - - - - - 0x018097 06:8087: 85 13     STA ram_game_mode_sub
C - - - - - 0x018099 06:8089: E6 11     INC ram_0011
C - - - - - 0x01809B 06:808B: 60        RTS



sub_0x01809C:
C - - - - - 0x01809C 06:808C: A2 00     LDX #$00    ; bzk optimize, no loop here, X is not needed
C - - - - - 0x01809E 06:808E: BD 28 80  LDA tbl_8028_bat_table_location,X
C - - - - - 0x0180A1 06:8091: 85 00     STA ram_0000
C - - - - - 0x0180A3 06:8093: E8        INX
C - - - - - 0x0180A4 06:8094: BD 28 80  LDA tbl_8028_bat_table_location,X
C - - - - - 0x0180A7 06:8097: 85 01     STA ram_0001
C - - - - - 0x0180A9 06:8099: 20 C6 80  JSR sub_80C6
C - - - - - 0x0180AC 06:809C: 20 D7 80  JSR sub_80D7_copy_bat_table_to_bat
C - - - - - 0x0180AF 06:809F: A9 00     LDA #$00
C - - - - - 0x0180B1 06:80A1: 85 13     STA ram_game_mode_sub
C - - - - - 0x0180B3 06:80A3: 60        RTS



sub_80A4_set_copy_range_687E_6B7D:
.scope
tmp_copy_start = ram_687E_map_data
tmp_copy_end   = ram_687E_map_data + $300 - 1
C - - - - - 0x0180B4 06:80A4: A9 7E     LDA #< tmp_copy_start
C - - - - - 0x0180B6 06:80A6: 85 02     STA ram_0002
C - - - - - 0x0180B8 06:80A8: A9 68     LDA #> tmp_copy_start
C - - - - - 0x0180BA 06:80AA: 85 03     STA ram_0003
C - - - - - 0x0180BC 06:80AC: A9 7D     LDA #< tmp_copy_end
C - - - - - 0x0180BE 06:80AE: 85 04     STA ram_0004
C - - - - - 0x0180C0 06:80B0: A9 6B     LDA #> tmp_copy_end
C - - - - - 0x0180C2 06:80B2: 85 05     STA ram_0005
C - - - - - 0x0180C4 06:80B4: 60        RTS
.endscope



sub_80B5_set_copy_range_6B7E_6C7D:
.scope
tmp_copy_start = ram_6B7E_unk_data
tmp_copy_end   = ram_6B7E_unk_data + $100 - 1
C - - - - - 0x0180C5 06:80B5: A9 7E     LDA #< tmp_copy_start
C - - - - - 0x0180C7 06:80B7: 85 02     STA ram_0002
C - - - - - 0x0180C9 06:80B9: A9 6B     LDA #> tmp_copy_start
C - - - - - 0x0180CB 06:80BB: 85 03     STA ram_0003
C - - - - - 0x0180CD 06:80BD: A9 7D     LDA #< tmp_copy_end
C - - - - - 0x0180CF 06:80BF: 85 04     STA ram_0004
C - - - - - 0x0180D1 06:80C1: A9 6C     LDA #> tmp_copy_end
C - - - - - 0x0180D3 06:80C3: 85 05     STA ram_0005
C - - - - - 0x0180D5 06:80C5: 60        RTS
.endscope



sub_80C6:
C - - - - - 0x0180D6 06:80C6: A9 F0     LDA #< ofs_bat_67F0_bank_s1_asm_import
C - - - - - 0x0180D8 06:80C8: 85 02     STA ram_0002
C - - - - - 0x0180DA 06:80CA: A9 67     LDA #> ofs_bat_67F0_bank_s1_asm_import
C - - - - - 0x0180DC 06:80CC: 85 03     STA ram_0003
C - - - - - 0x0180DE 06:80CE: A9 7D     LDA #< ram_687D
C - - - - - 0x0180E0 06:80D0: 85 04     STA ram_0004
C - - - - - 0x0180E2 06:80D2: A9 68     LDA #> ram_687D
C - - - - - 0x0180E4 06:80D4: 85 05     STA ram_0005
C - - - - - 0x0180E6 06:80D6: 60        RTS



sub_80D7_copy_bat_table_to_bat:
C - - - - - 0x0180E7 06:80D7: A0 00     LDY #$00
loc_80D9_loop:
C D 0 - - - 0x0180E9 06:80D9: B1 00     LDA (ram_0000),Y
C - - - - - 0x0180EB 06:80DB: 91 02     STA (ram_0002),Y
C - - - - - 0x0180ED 06:80DD: A5 02     LDA ram_0002
C - - - - - 0x0180EF 06:80DF: C5 04     CMP ram_0004    ; max addr lo
C - - - - - 0x0180F1 06:80E1: D0 09     BNE bra_80EC_not_finished
C - - - - - 0x0180F3 06:80E3: A5 03     LDA ram_0003
C - - - - - 0x0180F5 06:80E5: C5 05     CMP ram_0005    ; max addr hi
C - - - - - 0x0180F7 06:80E7: D0 03     BNE bra_80EC_not_finished
C - - - - - 0x0180F9 06:80E9: E6 13     INC ram_game_mode_sub
C - - - - - 0x0180FB 06:80EB: 60        RTS
bra_80EC_not_finished:
; bzk optimize, INC lo + BNE check + INC hi if needed
C - - - - - 0x0180FC 06:80EC: A5 02     LDA ram_0002
C - - - - - 0x0180FE 06:80EE: 18        CLC
C - - - - - 0x0180FF 06:80EF: 69 01     ADC #$01
C - - - - - 0x018101 06:80F1: 85 02     STA ram_0002
C - - - - - 0x018103 06:80F3: A5 03     LDA ram_0003
C - - - - - 0x018105 06:80F5: 69 00     ADC #$00
C - - - - - 0x018107 06:80F7: 85 03     STA ram_0003
C - - - - - 0x018109 06:80F9: A5 00     LDA ram_0000
C - - - - - 0x01810B 06:80FB: 18        CLC
C - - - - - 0x01810C 06:80FC: 69 01     ADC #$01
C - - - - - 0x01810E 06:80FE: 85 00     STA ram_0000
C - - - - - 0x018110 06:8100: A5 01     LDA ram_0001
C - - - - - 0x018112 06:8102: 69 00     ADC #$00
C - - - - - 0x018114 06:8104: 85 01     STA ram_0001
C - - - - - 0x018116 06:8106: 4C D9 80  JMP loc_80D9_loop



sub_0x018119:
C - - - - - 0x018119 06:8109: A4 16     LDY ram_cur_save_slot
C - - - - - 0x01811B 06:810B: B9 2D 06  LDA ram_current_quest,Y
C - - - - - 0x01811E 06:810E: F0 1C     BEQ bra_812C_RTS
; if 2nd quest
C - - - - - 0x018120 06:8110: A5 10     LDA ram_0010
C - - - - - 0x018122 06:8112: F0 19     BEQ bra_812D
C - - - - - 0x018124 06:8114: AA        TAX
C - - - - - 0x018125 06:8115: 0A        ASL
C - - - - - 0x018126 06:8116: A8        TAY
C - - - - - 0x018127 06:8117: B9 A2 83  LDA tbl_83A4 - 2,Y
C - - - - - 0x01812A 06:811A: 85 00     STA ram_0000
C - - - - - 0x01812C 06:811C: B9 A3 83  LDA tbl_83A4 - 1,Y
C - - - - - 0x01812F 06:811F: 85 01     STA ram_0001
C - - - - - 0x018131 06:8121: BC B5 83  LDY tbl_83B6 - 1,X
bra_8124_loop:
C - - - - - 0x018134 06:8124: B1 00     LDA (ram_0000),Y
C - - - - - 0x018136 06:8126: 99 A7 6B  STA ram_6BA7,Y
C - - - - - 0x018139 06:8129: 88        DEY
C - - - - - 0x01813A 06:812A: 10 F8     BPL bra_8124_loop
bra_812C_RTS:
C - - - - - 0x01813C 06:812C: 60        RTS
bra_812D:
C - - - - - 0x01813D 06:812D: A0 07     LDY #$07
bra_812F_loop:
C - - - - - 0x01813F 06:812F: BE 5F 81  LDX tbl_815F,Y
C - - - - - 0x018142 06:8132: B9 67 81  LDA tbl_8167,Y
C - - - - - 0x018145 06:8135: 9D FE 68  STA ram_68FE_map_data,X     ; bzk uncomfortable pointers
C - - - - - 0x018148 06:8138: 88        DEY
C - - - - - 0x018149 06:8139: 10 F4     BPL bra_812F_loop
C - - - - - 0x01814B 06:813B: A9 7B     LDA #$7B
C - - - - - 0x01814D 06:813D: 8D 09 6A  STA ram_69FE_map_data + $0B
C - - - - - 0x018150 06:8140: A9 7B     LDA #$7B
C - - - - - 0x018152 06:8142: 8D 3A 6A  STA ram_69FE_map_data + $3C
C - - - - - 0x018155 06:8145: A9 5A     LDA #$5A
C - - - - - 0x018157 06:8147: 8D 72 6A  STA ram_69FE_map_data + $74
C - - - - - 0x01815A 06:814A: A9 72     LDA #$72
C - - - - - 0x01815C 06:814C: 8D BA 68  STA ram_687E_map_data + $3C
C - - - - - 0x01815F 06:814F: A9 72     LDA #$72
C - - - - - 0x018161 06:8151: 8D F2 68  STA ram_687E_map_data + $74
C - - - - - 0x018164 06:8154: A9 01     LDA #$01
C - - - - - 0x018166 06:8156: 8D 3A 6B  STA ram_6AFE_map_data + $3C
C - - - - - 0x018169 06:8159: A9 00     LDA #$00
C - - - - - 0x01816B 06:815B: 8D 72 6B  STA ram_6AFE_map_data + $74
C - - - - - 0x01816E 06:815E: 60        RTS



tbl_815F:
- D 0 - - - 0x01816F 06:815F: 0E        .byte $0E   ; 00 ram_690C
- D 0 - - - 0x018170 06:8160: 0F        .byte $0F   ; 01 ram_690D
- D 0 - - - 0x018171 06:8161: 22        .byte $22   ; 02 ram_6920
- D 0 - - - 0x018172 06:8162: 34        .byte $34   ; 03 ram_6932
- D 0 - - - 0x018173 06:8163: 3C        .byte $3C   ; 04 ram_693A
- D 0 - - - 0x018174 06:8164: 45        .byte $45   ; 05 ram_6943
- D 0 - - - 0x018175 06:8165: 74        .byte $74   ; 06 ram_6972
- D 0 - - - 0x018176 06:8166: 8B        .byte $8B   ; 07 ram_6989



tbl_8167:
- D 0 - - - 0x018177 06:8167: 7B        .byte $7B   ; 
- D 0 - - - 0x018178 06:8168: 83        .byte $83   ; 
- D 0 - - - 0x018179 06:8169: 84        .byte $84   ; 
- D 0 - - - 0x01817A 06:816A: 0F        .byte $0F   ; 
- D 0 - - - 0x01817B 06:816B: 0B        .byte $0B   ; 
- D 0 - - - 0x01817C 06:816C: 12        .byte $12   ; 
- D 0 - - - 0x01817D 06:816D: 7A        .byte $7A   ; 
- D 0 - - - 0x01817E 06:816E: 2F        .byte $2F   ; 



_off012_816F_00:
- D 0 - I - 0x01817F 06:816F: C9        .byte $C9   ; 
- D 0 - I - 0x018180 06:8170: AC        .byte $AC   ; 
- D 0 - I - 0x018181 06:8171: 89        .byte $89   ; 
- D 0 - I - 0x018182 06:8172: B7        .byte $B7   ; 
- D 0 - I - 0x018183 06:8173: 00        .byte $00   ; 
- D 0 - I - 0x018184 06:8174: E0        .byte $E0   ; 
- D 0 - I - 0x018185 06:8175: 77        .byte $77   ; 
- D 0 - I - 0x018186 06:8176: 08        .byte $08   ; 
- D 0 - I - 0x018187 06:8177: FF        .byte $FF   ; 
- D 0 - I - 0x018188 06:8178: 06        .byte $06   ; 
- D 0 - I - 0x018189 06:8179: 01        .byte $01   ; 
- D 0 - I - 0x01818A 06:817A: 28        .byte $28   ; 
- D 0 - I - 0x01818B 06:817B: FF        .byte $FF   ; 
- D 0 - I - 0x01818C 06:817C: FF        .byte $FF   ; 
- D 0 - I - 0x01818D 06:817D: FF        .byte $FF   ; 
- D 0 - I - 0x01818E 06:817E: FF        .byte $FF   ; 
- D 0 - I - 0x01818F 06:817F: FF        .byte $FF   ; 
- D 0 - I - 0x018190 06:8180: FF        .byte $FF   ; 
- D 0 - I - 0x018191 06:8181: FF        .byte $FF   ; 
- D 0 - I - 0x018192 06:8182: FF        .byte $FF   ; 
- D 0 - I - 0x018193 06:8183: FF        .byte $FF   ; 
- D 0 - I - 0x018194 06:8184: 07        .byte $07   ; 
- D 0 - I - 0x018195 06:8185: 00        .byte $00   ; 
- D 0 - I - 0x018196 06:8186: 00        .byte $00   ; 
- D 0 - I - 0x018197 06:8187: 00        .byte $00   ; 
- D 0 - I - 0x018198 06:8188: 00        .byte $00   ; 
- D 0 - I - 0x018199 06:8189: 00        .byte $00   ; 
- D 0 - I - 0x01819A 06:818A: 00        .byte $00   ; 
- D 0 - I - 0x01819B 06:818B: 00        .byte $00   ; 
- D 0 - I - 0x01819C 06:818C: FF        .byte $FF   ; 
- D 0 - I - 0x01819D 06:818D: DB        .byte $DB   ; 
- D 0 - I - 0x01819E 06:818E: 00        .byte $00   ; 
- D 0 - I - 0x01819F 06:818F: 00        .byte $00   ; 
- D 0 - I - 0x0181A0 06:8190: 00        .byte $00   ; 
- D 0 - I - 0x0181A1 06:8191: 00        .byte $00   ; 
- D 0 - I - 0x0181A2 06:8192: 00        .byte $00   ; 
- D 0 - I - 0x0181A3 06:8193: 00        .byte $00   ; 
- D 0 - I - 0x0181A4 06:8194: 00        .byte $00   ; 
- D 0 - I - 0x0181A5 06:8195: 20        .byte $20   ; 
- D 0 - I - 0x0181A6 06:8196: 65        .byte $65   ; 
- D 0 - I - 0x0181A7 06:8197: 42        .byte $42   ; 
- D 0 - I - 0x0181A8 06:8198: FF        .byte $FF   ; 
- D 0 - I - 0x0181A9 06:8199: 20        .byte $20   ; 
- D 0 - I - 0x0181AA 06:819A: 85        .byte $85   ; 
- D 0 - I - 0x0181AB 06:819B: 02        .byte $02   ; 
- D 0 - I - 0x0181AC 06:819C: FF        .byte $FF   ; 
- D 0 - I - 0x0181AD 06:819D: FB        .byte $FB   ; 
- D 0 - I - 0x0181AE 06:819E: 20        .byte $20   ; 
- D 0 - I - 0x0181AF 06:819F: A5        .byte $A5   ; 
- D 0 - I - 0x0181B0 06:81A0: 02        .byte $02   ; 
- D 0 - I - 0x0181B1 06:81A1: FF        .byte $FF   ; 
- D 0 - I - 0x0181B2 06:81A2: 67        .byte $67   ; 
- D 0 - I - 0x0181B3 06:81A3: 20        .byte $20   ; 
- D 0 - I - 0x0181B4 06:81A4: C5        .byte $C5   ; 
- D 0 - I - 0x0181B5 06:81A5: 42        .byte $42   ; 
- D 0 - I - 0x0181B6 06:81A6: FF        .byte $FF   ; 
- D 0 - I - 0x0181B7 06:81A7: FF        .byte $FF   ; 



_off012_81A8_01:
- D 0 - I - 0x0181B8 06:81A8: C9        .byte $C9   ; 
- D 0 - I - 0x0181B9 06:81A9: AC        .byte $AC   ; 
- D 0 - I - 0x0181BA 06:81AA: 89        .byte $89   ; 
- D 0 - I - 0x0181BB 06:81AB: 87        .byte $87   ; 
- D 0 - I - 0x0181BC 06:81AC: 05        .byte $05   ; 
- D 0 - I - 0x0181BD 06:81AD: 00        .byte $00   ; 
- D 0 - I - 0x0181BE 06:81AE: 75        .byte $75   ; 
- D 0 - I - 0x0181BF 06:81AF: 20        .byte $20   ; 
- D 0 - I - 0x0181C0 06:81B0: FF        .byte $FF   ; 
- D 0 - I - 0x0181C1 06:81B1: 06        .byte $06   ; 
- D 0 - I - 0x0181C2 06:81B2: 03        .byte $03   ; 
- D 0 - I - 0x0181C3 06:81B3: 56        .byte $56   ; 
- D 0 - I - 0x0181C4 06:81B4: FF        .byte $FF   ; 
- D 0 - I - 0x0181C5 06:81B5: FF        .byte $FF   ; 
- D 0 - I - 0x0181C6 06:81B6: FF        .byte $FF   ; 
- D 0 - I - 0x0181C7 06:81B7: FF        .byte $FF   ; 
- D 0 - I - 0x0181C8 06:81B8: FF        .byte $FF   ; 
- D 0 - I - 0x0181C9 06:81B9: FF        .byte $FF   ; 
- D 0 - I - 0x0181CA 06:81BA: FF        .byte $FF   ; 
- D 0 - I - 0x0181CB 06:81BB: FF        .byte $FF   ; 
- D 0 - I - 0x0181CC 06:81BC: FF        .byte $FF   ; 
- D 0 - I - 0x0181CD 06:81BD: 30        .byte $30   ; 
- D 0 - I - 0x0181CE 06:81BE: 00        .byte $00   ; 
- D 0 - I - 0x0181CF 06:81BF: 00        .byte $00   ; 
- D 0 - I - 0x0181D0 06:81C0: 00        .byte $00   ; 
- D 0 - I - 0x0181D1 06:81C1: 00        .byte $00   ; 
- D 0 - I - 0x0181D2 06:81C2: 00        .byte $00   ; 
- D 0 - I - 0x0181D3 06:81C3: 30        .byte $30   ; 
- D 0 - I - 0x0181D4 06:81C4: 00        .byte $00   ; 
- D 0 - I - 0x0181D5 06:81C5: 00        .byte $00   ; 
- D 0 - I - 0x0181D6 06:81C6: 00        .byte $00   ; 
- D 0 - I - 0x0181D7 06:81C7: 00        .byte $00   ; 
- D 0 - I - 0x0181D8 06:81C8: 7F        .byte $7F   ; 
- D 0 - I - 0x0181D9 06:81C9: 03        .byte $03   ; 
- D 0 - I - 0x0181DA 06:81CA: 00        .byte $00   ; 
- D 0 - I - 0x0181DB 06:81CB: 00        .byte $00   ; 
- D 0 - I - 0x0181DC 06:81CC: 00        .byte $00   ; 
- D 0 - I - 0x0181DD 06:81CD: 00        .byte $00   ; 
- D 0 - I - 0x0181DE 06:81CE: 20        .byte $20   ; 
- D 0 - I - 0x0181DF 06:81CF: 67        .byte $67   ; 
- D 0 - I - 0x0181E0 06:81D0: 01        .byte $01   ; 
- D 0 - I - 0x0181E1 06:81D1: FB        .byte $FB   ; 
- D 0 - I - 0x0181E2 06:81D2: 20        .byte $20   ; 
- D 0 - I - 0x0181E3 06:81D3: 82        .byte $82   ; 
- D 0 - I - 0x0181E4 06:81D4: 01        .byte $01   ; 
- D 0 - I - 0x0181E5 06:81D5: FF        .byte $FF   ; 
- D 0 - I - 0x0181E6 06:81D6: 20        .byte $20   ; 
- D 0 - I - 0x0181E7 06:81D7: 87        .byte $87   ; 
- D 0 - I - 0x0181E8 06:81D8: C3        .byte $C3   ; 
- D 0 - I - 0x0181E9 06:81D9: FF        .byte $FF   ; 
- D 0 - I - 0x0181EA 06:81DA: 20        .byte $20   ; 
- D 0 - I - 0x0181EB 06:81DB: C8        .byte $C8   ; 
- D 0 - I - 0x0181EC 06:81DC: 01        .byte $01   ; 
- D 0 - I - 0x0181ED 06:81DD: FF        .byte $FF   ; 
- D 0 - I - 0x0181EE 06:81DE: FF        .byte $FF   ; 



_off012_81DF_02:
- D 0 - I - 0x0181EF 06:81DF: C9        .byte $C9   ; 
- D 0 - I - 0x0181F0 06:81E0: AC        .byte $AC   ; 
- D 0 - I - 0x0181F1 06:81E1: 89        .byte $89   ; 
- D 0 - I - 0x0181F2 06:81E2: 37        .byte $37   ; 
- D 0 - I - 0x0181F3 06:81E3: 0D        .byte $0D   ; 
- D 0 - I - 0x0181F4 06:81E4: C8        .byte $C8   ; 
- D 0 - I - 0x0181F5 06:81E5: 79        .byte $79   ; 
- D 0 - I - 0x0181F6 06:81E6: 1B        .byte $1B   ; 
- D 0 - I - 0x0181F7 06:81E7: FF        .byte $FF   ; 
- D 0 - I - 0x0181F8 06:81E8: 06        .byte $06   ; 
- D 0 - I - 0x0181F9 06:81E9: 02        .byte $02   ; 
- D 0 - I - 0x0181FA 06:81EA: 09        .byte $09   ; 
- D 0 - I - 0x0181FB 06:81EB: 0B        .byte $0B   ; 
- D 0 - I - 0x0181FC 06:81EC: FF        .byte $FF   ; 
- D 0 - I - 0x0181FD 06:81ED: FF        .byte $FF   ; 
- D 0 - I - 0x0181FE 06:81EE: FF        .byte $FF   ; 
- D 0 - I - 0x0181FF 06:81EF: FF        .byte $FF   ; 
- D 0 - I - 0x018200 06:81F0: FF        .byte $FF   ; 
- D 0 - I - 0x018201 06:81F1: FF        .byte $FF   ; 
- D 0 - I - 0x018202 06:81F2: FF        .byte $FF   ; 
- D 0 - I - 0x018203 06:81F3: FF        .byte $FF   ; 
- D 0 - I - 0x018204 06:81F4: 2B        .byte $2B   ; 
- D 0 - I - 0x018205 06:81F5: 00        .byte $00   ; 
- D 0 - I - 0x018206 06:81F6: 00        .byte $00   ; 
- D 0 - I - 0x018207 06:81F7: 00        .byte $00   ; 
- D 0 - I - 0x018208 06:81F8: 00        .byte $00   ; 
- D 0 - I - 0x018209 06:81F9: 00        .byte $00   ; 
- D 0 - I - 0x01820A 06:81FA: 00        .byte $00   ; 
- D 0 - I - 0x01820B 06:81FB: 7F        .byte $7F   ; 
- D 0 - I - 0x01820C 06:81FC: EC        .byte $EC   ; 
- D 0 - I - 0x01820D 06:81FD: 7F        .byte $7F   ; 
- D 0 - I - 0x01820E 06:81FE: 00        .byte $00   ; 
- D 0 - I - 0x01820F 06:81FF: 00        .byte $00   ; 
- D 0 - I - 0x018210 06:8200: 00        .byte $00   ; 
- D 0 - I - 0x018211 06:8201: 00        .byte $00   ; 
- D 0 - I - 0x018212 06:8202: 00        .byte $00   ; 
- D 0 - I - 0x018213 06:8203: 00        .byte $00   ; 
- D 0 - I - 0x018214 06:8204: 00        .byte $00   ; 
- D 0 - I - 0x018215 06:8205: 20        .byte $20   ; 
- D 0 - I - 0x018216 06:8206: 64        .byte $64   ; 
- D 0 - I - 0x018217 06:8207: 03        .byte $03   ; 
- D 0 - I - 0x018218 06:8208: FB        .byte $FB   ; 
- D 0 - I - 0x018219 06:8209: FF        .byte $FF   ; 
- D 0 - I - 0x01821A 06:820A: FB        .byte $FB   ; 
- D 0 - I - 0x01821B 06:820B: 20        .byte $20   ; 
- D 0 - I - 0x01821C 06:820C: 84        .byte $84   ; 
- D 0 - I - 0x01821D 06:820D: 03        .byte $03   ; 
- D 0 - I - 0x01821E 06:820E: FF        .byte $FF   ; 
- D 0 - I - 0x01821F 06:820F: 67        .byte $67   ; 
- D 0 - I - 0x018220 06:8210: FF        .byte $FF   ; 
- D 0 - I - 0x018221 06:8211: 20        .byte $20   ; 
- D 0 - I - 0x018222 06:8212: A4        .byte $A4   ; 
- D 0 - I - 0x018223 06:8213: 43        .byte $43   ; 
- D 0 - I - 0x018224 06:8214: FF        .byte $FF   ; 
- D 0 - I - 0x018225 06:8215: 20        .byte $20   ; 
- D 0 - I - 0x018226 06:8216: C4        .byte $C4   ; 
- D 0 - I - 0x018227 06:8217: 03        .byte $03   ; 
- D 0 - I - 0x018228 06:8218: FF        .byte $FF   ; 
- D 0 - I - 0x018229 06:8219: 24        .byte $24   ; 
- D 0 - I - 0x01822A 06:821A: FF        .byte $FF   ; 
- D 0 - I - 0x01822B 06:821B: FF        .byte $FF   ; 



_off012_821C_03:
- D 0 - I - 0x01822C 06:821C: C9        .byte $C9   ; 
- D 0 - I - 0x01822D 06:821D: AC        .byte $AC   ; 
- D 0 - I - 0x01822E 06:821E: 89        .byte $89   ; 
- D 0 - I - 0x01822F 06:821F: 86        .byte $86   ; 
- D 0 - I - 0x018230 06:8220: 06        .byte $06   ; 
- D 0 - I - 0x018231 06:8221: 10        .byte $10   ; 
- D 0 - I - 0x018232 06:8222: 72        .byte $72   ; 
- D 0 - I - 0x018233 06:8223: 00        .byte $00   ; 
- D 0 - I - 0x018234 06:8224: FF        .byte $FF   ; 
- D 0 - I - 0x018235 06:8225: 06        .byte $06   ; 
- D 0 - I - 0x018236 06:8226: 05        .byte $05   ; 
- D 0 - I - 0x018237 06:8227: 21        .byte $21   ; 
- D 0 - I - 0x018238 06:8228: 58        .byte $58   ; 
- D 0 - I - 0x018239 06:8229: 7A        .byte $7A   ; 
- D 0 - I - 0x01823A 06:822A: FF        .byte $FF   ; 
- D 0 - I - 0x01823B 06:822B: FF        .byte $FF   ; 
- D 0 - I - 0x01823C 06:822C: FF        .byte $FF   ; 
- D 0 - I - 0x01823D 06:822D: FF        .byte $FF   ; 
- D 0 - I - 0x01823E 06:822E: FF        .byte $FF   ; 
- D 0 - I - 0x01823F 06:822F: FF        .byte $FF   ; 
- D 0 - I - 0x018240 06:8230: FF        .byte $FF   ; 
- D 0 - I - 0x018241 06:8231: 10        .byte $10   ; 
- D 0 - I - 0x018242 06:8232: 00        .byte $00   ; 
- D 0 - I - 0x018243 06:8233: 00        .byte $00   ; 
- D 0 - I - 0x018244 06:8234: 00        .byte $00   ; 
- D 0 - I - 0x018245 06:8235: 00        .byte $00   ; 
- D 0 - I - 0x018246 06:8236: 00        .byte $00   ; 
- D 0 - I - 0x018247 06:8237: 00        .byte $00   ; 
- D 0 - I - 0x018248 06:8238: CF        .byte $CF   ; 
- D 0 - I - 0x018249 06:8239: DB        .byte $DB   ; 
- D 0 - I - 0x01824A 06:823A: F3        .byte $F3   ; 
- D 0 - I - 0x01824B 06:823B: 00        .byte $00   ; 
- D 0 - I - 0x01824C 06:823C: 00        .byte $00   ; 
- D 0 - I - 0x01824D 06:823D: 00        .byte $00   ; 
- D 0 - I - 0x01824E 06:823E: 00        .byte $00   ; 
- D 0 - I - 0x01824F 06:823F: 00        .byte $00   ; 
- D 0 - I - 0x018250 06:8240: 00        .byte $00   ; 
- D 0 - I - 0x018251 06:8241: 00        .byte $00   ; 
- D 0 - I - 0x018252 06:8242: 20        .byte $20   ; 
- D 0 - I - 0x018253 06:8243: 64        .byte $64   ; 
- D 0 - I - 0x018254 06:8244: 43        .byte $43   ; 
- D 0 - I - 0x018255 06:8245: FF        .byte $FF   ; 
- D 0 - I - 0x018256 06:8246: 20        .byte $20   ; 
- D 0 - I - 0x018257 06:8247: 85        .byte $85   ; 
- D 0 - I - 0x018258 06:8248: 02        .byte $02   ; 
- D 0 - I - 0x018259 06:8249: FB        .byte $FB   ; 
- D 0 - I - 0x01825A 06:824A: FF        .byte $FF   ; 
- D 0 - I - 0x01825B 06:824B: 20        .byte $20   ; 
- D 0 - I - 0x01825C 06:824C: A4        .byte $A4   ; 
- D 0 - I - 0x01825D 06:824D: 02        .byte $02   ; 
- D 0 - I - 0x01825E 06:824E: FF        .byte $FF   ; 
- D 0 - I - 0x01825F 06:824F: 67        .byte $67   ; 
- D 0 - I - 0x018260 06:8250: 20        .byte $20   ; 
- D 0 - I - 0x018261 06:8251: C4        .byte $C4   ; 
- D 0 - I - 0x018262 06:8252: 43        .byte $43   ; 
- D 0 - I - 0x018263 06:8253: FF        .byte $FF   ; 
- D 0 - I - 0x018264 06:8254: FF        .byte $FF   ; 



_off012_8255_04:
- D 0 - I - 0x018265 06:8255: C9        .byte $C9   ; 
- D 0 - I - 0x018266 06:8256: AC        .byte $AC   ; 
- D 0 - I - 0x018267 06:8257: 89        .byte $89   ; 
- D 0 - I - 0x018268 06:8258: 87        .byte $87   ; 
- D 0 - I - 0x018269 06:8259: 0A        .byte $0A   ; 
- D 0 - I - 0x01826A 06:825A: B0        .byte $B0   ; 
- D 0 - I - 0x01826B 06:825B: 7D        .byte $7D   ; 
- D 0 - I - 0x01826C 06:825C: 4F        .byte $4F   ; 
- D 0 - I - 0x01826D 06:825D: FF        .byte $FF   ; 
- D 0 - I - 0x01826E 06:825E: 06        .byte $06   ; 
- D 0 - I - 0x01826F 06:825F: 04        .byte $04   ; 
- D 0 - I - 0x018270 06:8260: 0F        .byte $0F   ; 
- D 0 - I - 0x018271 06:8261: 6A        .byte $6A   ; 
- D 0 - I - 0x018272 06:8262: 7F        .byte $7F   ; 
- D 0 - I - 0x018273 06:8263: FF        .byte $FF   ; 
- D 0 - I - 0x018274 06:8264: FF        .byte $FF   ; 
- D 0 - I - 0x018275 06:8265: FF        .byte $FF   ; 
- D 0 - I - 0x018276 06:8266: FF        .byte $FF   ; 
- D 0 - I - 0x018277 06:8267: FF        .byte $FF   ; 
- D 0 - I - 0x018278 06:8268: FF        .byte $FF   ; 
- D 0 - I - 0x018279 06:8269: FF        .byte $FF   ; 
- D 0 - I - 0x01827A 06:826A: 5F        .byte $5F   ; 
- D 0 - I - 0x01827B 06:826B: 00        .byte $00   ; 
- D 0 - I - 0x01827C 06:826C: 00        .byte $00   ; 
- D 0 - I - 0x01827D 06:826D: 00        .byte $00   ; 
- D 0 - I - 0x01827E 06:826E: 00        .byte $00   ; 
- D 0 - I - 0x01827F 06:826F: 00        .byte $00   ; 
- D 0 - I - 0x018280 06:8270: 00        .byte $00   ; 
- D 0 - I - 0x018281 06:8271: FF        .byte $FF   ; 
- D 0 - I - 0x018282 06:8272: FF        .byte $FF   ; 
- D 0 - I - 0x018283 06:8273: E7        .byte $E7   ; 
- D 0 - I - 0x018284 06:8274: 7E        .byte $7E   ; 
- D 0 - I - 0x018285 06:8275: 00        .byte $00   ; 
- D 0 - I - 0x018286 06:8276: 00        .byte $00   ; 
- D 0 - I - 0x018287 06:8277: 00        .byte $00   ; 
- D 0 - I - 0x018288 06:8278: 00        .byte $00   ; 
- D 0 - I - 0x018289 06:8279: 00        .byte $00   ; 
- D 0 - I - 0x01828A 06:827A: 00        .byte $00   ; 
- D 0 - I - 0x01828B 06:827B: 20        .byte $20   ; 
- D 0 - I - 0x01828C 06:827C: 64        .byte $64   ; 
- D 0 - I - 0x01828D 06:827D: 04        .byte $04   ; 
- D 0 - I - 0x01828E 06:827E: FF        .byte $FF   ; 
- D 0 - I - 0x01828F 06:827F: FF        .byte $FF   ; 
- D 0 - I - 0x018290 06:8280: FF        .byte $FF   ; 
- D 0 - I - 0x018291 06:8281: FB        .byte $FB   ; 
- D 0 - I - 0x018292 06:8282: 20        .byte $20   ; 
- D 0 - I - 0x018293 06:8283: 84        .byte $84   ; 
- D 0 - I - 0x018294 06:8284: 04        .byte $04   ; 
- D 0 - I - 0x018295 06:8285: FF        .byte $FF   ; 
- D 0 - I - 0x018296 06:8286: FF        .byte $FF   ; 
- D 0 - I - 0x018297 06:8287: 67        .byte $67   ; 
- D 0 - I - 0x018298 06:8288: FF        .byte $FF   ; 
- D 0 - I - 0x018299 06:8289: 20        .byte $20   ; 
- D 0 - I - 0x01829A 06:828A: A4        .byte $A4   ; 
- D 0 - I - 0x01829B 06:828B: 04        .byte $04   ; 
- D 0 - I - 0x01829C 06:828C: FF        .byte $FF   ; 
- D 0 - I - 0x01829D 06:828D: FF        .byte $FF   ; 
- D 0 - I - 0x01829E 06:828E: FB        .byte $FB   ; 
- D 0 - I - 0x01829F 06:828F: FF        .byte $FF   ; 
- D 0 - I - 0x0182A0 06:8290: 20        .byte $20   ; 
- D 0 - I - 0x0182A1 06:8291: C4        .byte $C4   ; 
- D 0 - I - 0x0182A2 06:8292: 04        .byte $04   ; 
- D 0 - I - 0x0182A3 06:8293: FF        .byte $FF   ; 
- D 0 - I - 0x0182A4 06:8294: FF        .byte $FF   ; 
- D 0 - I - 0x0182A5 06:8295: FF        .byte $FF   ; 
- D 0 - I - 0x0182A6 06:8296: 67        .byte $67   ; 
- D 0 - I - 0x0182A7 06:8297: FF        .byte $FF   ; 



_off012_8298_05:
- D 0 - I - 0x0182A8 06:8298: 49        .byte $49   ; 
- D 0 - I - 0x0182A9 06:8299: 79        .byte $79   ; 
- D 0 - I - 0x0182AA 06:829A: 89        .byte $89   ; 
- D 0 - I - 0x0182AB 06:829B: 56        .byte $56   ; 
- D 0 - I - 0x0182AC 06:829C: 04        .byte $04   ; 
- D 0 - I - 0x0182AD 06:829D: 00        .byte $00   ; 
- D 0 - I - 0x0182AE 06:829E: 74        .byte $74   ; 
- D 0 - I - 0x0182AF 06:829F: 16        .byte $16   ; 
- D 0 - I - 0x0182B0 06:82A0: FF        .byte $FF   ; 
- D 0 - I - 0x0182B1 06:82A1: 06        .byte $06   ; 
- D 0 - I - 0x0182B2 06:82A2: 06        .byte $06   ; 
- D 0 - I - 0x0182B3 06:82A3: 03        .byte $03   ; 
- D 0 - I - 0x0182B4 06:82A4: 73        .byte $73   ; 
- D 0 - I - 0x0182B5 06:82A5: 46        .byte $46   ; 
- D 0 - I - 0x0182B6 06:82A6: FF        .byte $FF   ; 
- D 0 - I - 0x0182B7 06:82A7: FF        .byte $FF   ; 
- D 0 - I - 0x0182B8 06:82A8: FF        .byte $FF   ; 
- D 0 - I - 0x0182B9 06:82A9: FF        .byte $FF   ; 
- D 0 - I - 0x0182BA 06:82AA: FF        .byte $FF   ; 
- D 0 - I - 0x0182BB 06:82AB: FF        .byte $FF   ; 
- D 0 - I - 0x0182BC 06:82AC: FF        .byte $FF   ; 
- D 0 - I - 0x0182BD 06:82AD: 26        .byte $26   ; 
- D 0 - I - 0x0182BE 06:82AE: 00        .byte $00   ; 
- D 0 - I - 0x0182BF 06:82AF: 00        .byte $00   ; 
- D 0 - I - 0x0182C0 06:82B0: 00        .byte $00   ; 
- D 0 - I - 0x0182C1 06:82B1: 00        .byte $00   ; 
- D 0 - I - 0x0182C2 06:82B2: 00        .byte $00   ; 
- D 0 - I - 0x0182C3 06:82B3: 04        .byte $04   ; 
- D 0 - I - 0x0182C4 06:82B4: 0C        .byte $0C   ; 
- D 0 - I - 0x0182C5 06:82B5: 7E        .byte $7E   ; 
- D 0 - I - 0x0182C6 06:82B6: FF        .byte $FF   ; 
- D 0 - I - 0x0182C7 06:82B7: 80        .byte $80   ; 
- D 0 - I - 0x0182C8 06:82B8: F0        .byte $F0   ; 
- D 0 - I - 0x0182C9 06:82B9: 00        .byte $00   ; 
- D 0 - I - 0x0182CA 06:82BA: 00        .byte $00   ; 
- D 0 - I - 0x0182CB 06:82BB: 00        .byte $00   ; 
- D 0 - I - 0x0182CC 06:82BC: 00        .byte $00   ; 
- D 0 - I - 0x0182CD 06:82BD: 00        .byte $00   ; 
- D 0 - I - 0x0182CE 06:82BE: 20        .byte $20   ; 
- D 0 - I - 0x0182CF 06:82BF: 65        .byte $65   ; 
- D 0 - I - 0x0182D0 06:82C0: 03        .byte $03   ; 
- D 0 - I - 0x0182D1 06:82C1: FB        .byte $FB   ; 
- D 0 - I - 0x0182D2 06:82C2: FF        .byte $FF   ; 
- D 0 - I - 0x0182D3 06:82C3: 67        .byte $67   ; 
- D 0 - I - 0x0182D4 06:82C4: 20        .byte $20   ; 
- D 0 - I - 0x0182D5 06:82C5: 68        .byte $68   ; 
- D 0 - I - 0x0182D6 06:82C6: C2        .byte $C2   ; 
- D 0 - I - 0x0182D7 06:82C7: FF        .byte $FF   ; 
- D 0 - I - 0x0182D8 06:82C8: 20        .byte $20   ; 
- D 0 - I - 0x0182D9 06:82C9: 86        .byte $86   ; 
- D 0 - I - 0x0182DA 06:82CA: C3        .byte $C3   ; 
- D 0 - I - 0x0182DB 06:82CB: FF        .byte $FF   ; 
- D 0 - I - 0x0182DC 06:82CC: 20        .byte $20   ; 
- D 0 - I - 0x0182DD 06:82CD: 85        .byte $85   ; 
- D 0 - I - 0x0182DE 06:82CE: 83        .byte $83   ; 
- D 0 - I - 0x0182DF 06:82CF: FF        .byte $FF   ; 
- D 0 - I - 0x0182E0 06:82D0: FF        .byte $FF   ; 
- D 0 - I - 0x0182E1 06:82D1: 67        .byte $67   ; 
- D 0 - I - 0x0182E2 06:82D2: 20        .byte $20   ; 
- D 0 - I - 0x0182E3 06:82D3: A3        .byte $A3   ; 
- D 0 - I - 0x0182E4 06:82D4: 02        .byte $02   ; 
- D 0 - I - 0x0182E5 06:82D5: FB        .byte $FB   ; 
- D 0 - I - 0x0182E6 06:82D6: FF        .byte $FF   ; 
- D 0 - I - 0x0182E7 06:82D7: FF        .byte $FF   ; 



_off012_82D8_06:
- D 0 - I - 0x0182E8 06:82D8: C9        .byte $C9   ; 
- D 0 - I - 0x0182E9 06:82D9: AC        .byte $AC   ; 
- D 0 - I - 0x0182EA 06:82DA: 89        .byte $89   ; 
- D 0 - I - 0x0182EB 06:82DB: 79        .byte $79   ; 
- D 0 - I - 0x0182EC 06:82DC: 0C        .byte $0C   ; 
- D 0 - I - 0x0182ED 06:82DD: C0        .byte $C0   ; 
- D 0 - I - 0x0182EE 06:82DE: 7F        .byte $7F   ; 
- D 0 - I - 0x0182EF 06:82DF: 2D        .byte $2D   ; 
- D 0 - I - 0x0182F0 06:82E0: 7F        .byte $7F   ; 
- D 0 - I - 0x0182F1 06:82E1: 07        .byte $07   ; 
- D 0 - I - 0x0182F2 06:82E2: 08        .byte $08   ; 
- D 0 - I - 0x0182F3 06:82E3: 02        .byte $02   ; 
- D 0 - I - 0x0182F4 06:82E4: 03        .byte $03   ; 
- D 0 - I - 0x0182F5 06:82E5: 04        .byte $04   ; 
- D 0 - I - 0x0182F6 06:82E6: 05        .byte $05   ; 
- D 0 - I - 0x0182F7 06:82E7: 20        .byte $20   ; 
- D 0 - I - 0x0182F8 06:82E8: 21        .byte $21   ; 
- D 0 - I - 0x0182F9 06:82E9: 26        .byte $26   ; 
- D 0 - I - 0x0182FA 06:82EA: 2B        .byte $2B   ; 
- D 0 - I - 0x0182FB 06:82EB: 2C        .byte $2C   ; 
- D 0 - I - 0x0182FC 06:82EC: FF        .byte $FF   ; 
- D 0 - I - 0x0182FD 06:82ED: 3D        .byte $3D   ; 
- D 0 - I - 0x0182FE 06:82EE: 00        .byte $00   ; 
- D 0 - I - 0x0182FF 06:82EF: 00        .byte $00   ; 
- D 0 - I - 0x018300 06:82F0: 00        .byte $00   ; 
- D 0 - I - 0x018301 06:82F1: 00        .byte $00   ; 
- D 0 - I - 0x018302 06:82F2: FE        .byte $FE   ; 
- D 0 - I - 0x018303 06:82F3: FE        .byte $FE   ; 
- D 0 - I - 0x018304 06:82F4: 82        .byte $82   ; 
- D 0 - I - 0x018305 06:82F5: 82        .byte $82   ; 
- D 0 - I - 0x018306 06:82F6: 82        .byte $82   ; 
- D 0 - I - 0x018307 06:82F7: BE        .byte $BE   ; 
- D 0 - I - 0x018308 06:82F8: 80        .byte $80   ; 
- D 0 - I - 0x018309 06:82F9: FF        .byte $FF   ; 
- D 0 - I - 0x01830A 06:82FA: 00        .byte $00   ; 
- D 0 - I - 0x01830B 06:82FB: 00        .byte $00   ; 
- D 0 - I - 0x01830C 06:82FC: 00        .byte $00   ; 
- D 0 - I - 0x01830D 06:82FD: 00        .byte $00   ; 
- D 0 - I - 0x01830E 06:82FE: 20        .byte $20   ; 
- D 0 - I - 0x01830F 06:82FF: 62        .byte $62   ; 
- D 0 - I - 0x018310 06:8300: C3        .byte $C3   ; 
- D 0 - I - 0x018311 06:8301: FF        .byte $FF   ; 
- D 0 - I - 0x018312 06:8302: 20        .byte $20   ; 
- D 0 - I - 0x018313 06:8303: 63        .byte $63   ; 
- D 0 - I - 0x018314 06:8304: C3        .byte $C3   ; 
- D 0 - I - 0x018315 06:8305: FF        .byte $FF   ; 
- D 0 - I - 0x018316 06:8306: 20        .byte $20   ; 
- D 0 - I - 0x018317 06:8307: 64        .byte $64   ; 
- D 0 - I - 0x018318 06:8308: 45        .byte $45   ; 
- D 0 - I - 0x018319 06:8309: 67        .byte $67   ; 
- D 0 - I - 0x01831A 06:830A: 20        .byte $20   ; 
- D 0 - I - 0x01831B 06:830B: 69        .byte $69   ; 
- D 0 - I - 0x01831C 06:830C: C4        .byte $C4   ; 
- D 0 - I - 0x01831D 06:830D: FF        .byte $FF   ; 
- D 0 - I - 0x01831E 06:830E: 20        .byte $20   ; 
- D 0 - I - 0x01831F 06:830F: 87        .byte $87   ; 
- D 0 - I - 0x018320 06:8310: C2        .byte $C2   ; 
- D 0 - I - 0x018321 06:8311: FF        .byte $FF   ; 
- D 0 - I - 0x018322 06:8312: 20        .byte $20   ; 
- D 0 - I - 0x018323 06:8313: C2        .byte $C2   ; 
- D 0 - I - 0x018324 06:8314: 46        .byte $46   ; 
- D 0 - I - 0x018325 06:8315: 67        .byte $67   ; 
- D 0 - I - 0x018326 06:8316: FF        .byte $FF   ; 



_off012_8317_07:
- D 0 - I - 0x018327 06:8317: C9        .byte $C9   ; 
- D 0 - I - 0x018328 06:8318: AC        .byte $AC   ; 
- D 0 - I - 0x018329 06:8319: 89        .byte $89   ; 
- D 0 - I - 0x01832A 06:831A: 57        .byte $57   ; 
- D 0 - I - 0x01832B 06:831B: 0C        .byte $0C   ; 
- D 0 - I - 0x01832C 06:831C: C0        .byte $C0   ; 
- D 0 - I - 0x01832D 06:831D: 79        .byte $79   ; 
- D 0 - I - 0x01832E 06:831E: 1B        .byte $1B   ; 
- D 0 - I - 0x01832F 06:831F: 7F        .byte $7F   ; 
- D 0 - I - 0x018330 06:8320: 07        .byte $07   ; 
- D 0 - I - 0x018331 06:8321: 07        .byte $07   ; 
- D 0 - I - 0x018332 06:8322: 27        .byte $27   ; 
- D 0 - I - 0x018333 06:8323: 30        .byte $30   ; 
- D 0 - I - 0x018334 06:8324: 37        .byte $37   ; 
- D 0 - I - 0x018335 06:8325: 60        .byte $60   ; 
- D 0 - I - 0x018336 06:8326: 67        .byte $67   ; 
- D 0 - I - 0x018337 06:8327: 70        .byte $70   ; 
- D 0 - I - 0x018338 06:8328: FF        .byte $FF   ; 
- D 0 - I - 0x018339 06:8329: FF        .byte $FF   ; 
- D 0 - I - 0x01833A 06:832A: FF        .byte $FF   ; 
- D 0 - I - 0x01833B 06:832B: FF        .byte $FF   ; 
- D 0 - I - 0x01833C 06:832C: 1C        .byte $1C   ; 
- D 0 - I - 0x01833D 06:832D: 00        .byte $00   ; 
- D 0 - I - 0x01833E 06:832E: 00        .byte $00   ; 
- D 0 - I - 0x01833F 06:832F: 00        .byte $00   ; 
- D 0 - I - 0x018340 06:8330: 00        .byte $00   ; 
- D 0 - I - 0x018341 06:8331: 01        .byte $01   ; 
- D 0 - I - 0x018342 06:8332: 01        .byte $01   ; 
- D 0 - I - 0x018343 06:8333: 7D        .byte $7D   ; 
- D 0 - I - 0x018344 06:8334: 5D        .byte $5D   ; 
- D 0 - I - 0x018345 06:8335: 5D        .byte $5D   ; 
- D 0 - I - 0x018346 06:8336: 41        .byte $41   ; 
- D 0 - I - 0x018347 06:8337: 7F        .byte $7F   ; 
- D 0 - I - 0x018348 06:8338: 00        .byte $00   ; 
- D 0 - I - 0x018349 06:8339: 00        .byte $00   ; 
- D 0 - I - 0x01834A 06:833A: 00        .byte $00   ; 
- D 0 - I - 0x01834B 06:833B: 00        .byte $00   ; 
- D 0 - I - 0x01834C 06:833C: 00        .byte $00   ; 
- D 0 - I - 0x01834D 06:833D: 20        .byte $20   ; 
- D 0 - I - 0x01834E 06:833E: 64        .byte $64   ; 
- D 0 - I - 0x01834F 06:833F: 45        .byte $45   ; 
- D 0 - I - 0x018350 06:8340: FB        .byte $FB   ; 
- D 0 - I - 0x018351 06:8341: 20        .byte $20   ; 
- D 0 - I - 0x018352 06:8342: 84        .byte $84   ; 
- D 0 - I - 0x018353 06:8343: 05        .byte $05   ; 
- D 0 - I - 0x018354 06:8344: FF        .byte $FF   ; 
- D 0 - I - 0x018355 06:8345: FB        .byte $FB   ; 
- D 0 - I - 0x018356 06:8346: FB        .byte $FB   ; 
- D 0 - I - 0x018357 06:8347: 24        .byte $24   ; 
- D 0 - I - 0x018358 06:8348: FF        .byte $FF   ; 
- D 0 - I - 0x018359 06:8349: 20        .byte $20   ; 
- D 0 - I - 0x01835A 06:834A: A4        .byte $A4   ; 
- D 0 - I - 0x01835B 06:834B: 43        .byte $43   ; 
- D 0 - I - 0x01835C 06:834C: FF        .byte $FF   ; 
- D 0 - I - 0x01835D 06:834D: 20        .byte $20   ; 
- D 0 - I - 0x01835E 06:834E: A8        .byte $A8   ; 
- D 0 - I - 0x01835F 06:834F: 01        .byte $01   ; 
- D 0 - I - 0x018360 06:8350: FF        .byte $FF   ; 
- D 0 - I - 0x018361 06:8351: 20        .byte $20   ; 
- D 0 - I - 0x018362 06:8352: C2        .byte $C2   ; 
- D 0 - I - 0x018363 06:8353: 46        .byte $46   ; 
- D 0 - I - 0x018364 06:8354: FB        .byte $FB   ; 
- D 0 - I - 0x018365 06:8355: 20        .byte $20   ; 
- D 0 - I - 0x018366 06:8356: C8        .byte $C8   ; 
- D 0 - I - 0x018367 06:8357: 01        .byte $01   ; 
- D 0 - I - 0x018368 06:8358: FF        .byte $FF   ; 
- D 0 - I - 0x018369 06:8359: FF        .byte $FF   ; 



_off012_835A_08:
- D 0 - I - 0x01836A 06:835A: C9        .byte $C9   ; 
- D 0 - I - 0x01836B 06:835B: AC        .byte $AC   ; 
- D 0 - I - 0x01836C 06:835C: 89        .byte $89   ; 
- D 0 - I - 0x01836D 06:835D: B6        .byte $B6   ; 
- D 0 - I - 0x01836E 06:835E: 04        .byte $04   ; 
- D 0 - I - 0x01836F 06:835F: 00        .byte $00   ; 
- D 0 - I - 0x018370 06:8360: 74        .byte $74   ; 
- D 0 - I - 0x018371 06:8361: 07        .byte $07   ; 
- D 0 - I - 0x018372 06:8362: 7F        .byte $7F   ; 
- D 0 - I - 0x018373 06:8363: 07        .byte $07   ; 
- D 0 - I - 0x018374 06:8364: 09        .byte $09   ; 
- D 0 - I - 0x018375 06:8365: 71        .byte $71   ; 
- D 0 - I - 0x018376 06:8366: 72        .byte $72   ; 
- D 0 - I - 0x018377 06:8367: 75        .byte $75   ; 
- D 0 - I - 0x018378 06:8368: 76        .byte $76   ; 
- D 0 - I - 0x018379 06:8369: 77        .byte $77   ; 
- D 0 - I - 0x01837A 06:836A: FF        .byte $FF   ; 
- D 0 - I - 0x01837B 06:836B: FF        .byte $FF   ; 
- D 0 - I - 0x01837C 06:836C: FF        .byte $FF   ; 
- D 0 - I - 0x01837D 06:836D: FF        .byte $FF   ; 
- D 0 - I - 0x01837E 06:836E: FF        .byte $FF   ; 
- D 0 - I - 0x01837F 06:836F: 17        .byte $17   ; 
- D 0 - I - 0x018380 06:8370: 00        .byte $00   ; 
- D 0 - I - 0x018381 06:8371: 00        .byte $00   ; 
- D 0 - I - 0x018382 06:8372: 00        .byte $00   ; 
- D 0 - I - 0x018383 06:8373: 00        .byte $00   ; 
- D 0 - I - 0x018384 06:8374: CC        .byte $CC   ; 
- D 0 - I - 0x018385 06:8375: DE        .byte $DE   ; 
- D 0 - I - 0x018386 06:8376: 76        .byte $76   ; 
- D 0 - I - 0x018387 06:8377: 7F        .byte $7F   ; 
- D 0 - I - 0x018388 06:8378: 7F        .byte $7F   ; 
- D 0 - I - 0x018389 06:8379: 76        .byte $76   ; 
- D 0 - I - 0x01838A 06:837A: DE        .byte $DE   ; 
- D 0 - I - 0x01838B 06:837B: CC        .byte $CC   ; 
- D 0 - I - 0x01838C 06:837C: 00        .byte $00   ; 
- D 0 - I - 0x01838D 06:837D: 00        .byte $00   ; 
- D 0 - I - 0x01838E 06:837E: 00        .byte $00   ; 
- D 0 - I - 0x01838F 06:837F: 00        .byte $00   ; 
- D 0 - I - 0x018390 06:8380: 20        .byte $20   ; 
- D 0 - I - 0x018391 06:8381: 62        .byte $62   ; 
- D 0 - I - 0x018392 06:8382: 48        .byte $48   ; 
- D 0 - I - 0x018393 06:8383: FF        .byte $FF   ; 
- D 0 - I - 0x018394 06:8384: 20        .byte $20   ; 
- D 0 - I - 0x018395 06:8385: 64        .byte $64   ; 
- D 0 - I - 0x018396 06:8386: 44        .byte $44   ; 
- D 0 - I - 0x018397 06:8387: FB        .byte $FB   ; 
- D 0 - I - 0x018398 06:8388: 20        .byte $20   ; 
- D 0 - I - 0x018399 06:8389: 83        .byte $83   ; 
- D 0 - I - 0x01839A 06:838A: 46        .byte $46   ; 
- D 0 - I - 0x01839B 06:838B: FB        .byte $FB   ; 
- D 0 - I - 0x01839C 06:838C: 20        .byte $20   ; 
- D 0 - I - 0x01839D 06:838D: 84        .byte $84   ; 
- D 0 - I - 0x01839E 06:838E: 44        .byte $44   ; 
- D 0 - I - 0x01839F 06:838F: FF        .byte $FF   ; 
- D 0 - I - 0x0183A0 06:8390: 20        .byte $20   ; 
- D 0 - I - 0x0183A1 06:8391: A2        .byte $A2   ; 
- D 0 - I - 0x0183A2 06:8392: 08        .byte $08   ; 
- D 0 - I - 0x0183A3 06:8393: FF        .byte $FF   ; 
- D 0 - I - 0x0183A4 06:8394: FF        .byte $FF   ; 
- D 0 - I - 0x0183A5 06:8395: FB        .byte $FB   ; 
- D 0 - I - 0x0183A6 06:8396: FF        .byte $FF   ; 
- D 0 - I - 0x0183A7 06:8397: FF        .byte $FF   ; 
- D 0 - I - 0x0183A8 06:8398: FB        .byte $FB   ; 
- D 0 - I - 0x0183A9 06:8399: FF        .byte $FF   ; 
- D 0 - I - 0x0183AA 06:839A: FF        .byte $FF   ; 
- D 0 - I - 0x0183AB 06:839B: 20        .byte $20   ; 
- D 0 - I - 0x0183AC 06:839C: C3        .byte $C3   ; 
- D 0 - I - 0x0183AD 06:839D: 46        .byte $46   ; 
- D 0 - I - 0x0183AE 06:839E: 67        .byte $67   ; 
- D 0 - I - 0x0183AF 06:839F: 20        .byte $20   ; 
- D 0 - I - 0x0183B0 06:83A0: C5        .byte $C5   ; 
- D 0 - I - 0x0183B1 06:83A1: 42        .byte $42   ; 
- D 0 - I - 0x0183B2 06:83A2: FF        .byte $FF   ; 
- D 0 - I - 0x0183B3 06:83A3: FF        .byte $FF   ; 


tbl_83A4:
- D 0 - - - 0x0183B4 06:83A4: 6F 81     .word _off012_816F_00
- D 0 - - - 0x0183B6 06:83A6: A8 81     .word _off012_81A8_01
- D 0 - - - 0x0183B8 06:83A8: DF 81     .word _off012_81DF_02
- D 0 - - - 0x0183BA 06:83AA: 1C 82     .word _off012_821C_03
- D 0 - - - 0x0183BC 06:83AC: 55 82     .word _off012_8255_04
- D 0 - - - 0x0183BE 06:83AE: 98 82     .word _off012_8298_05
- D 0 - - - 0x0183C0 06:83B0: D8 82     .word _off012_82D8_06
- D 0 - - - 0x0183C2 06:83B2: 17 83     .word _off012_8317_07
- D 0 - - - 0x0183C4 06:83B4: 5A 83     .word _off012_835A_08



tbl_83B6:
- D 0 - - - 0x0183C6 06:83B6: 39        .byte $39   ; 
- D 0 - - - 0x0183C7 06:83B7: 37        .byte $37   ; 
- D 0 - - - 0x0183C8 06:83B8: 3D        .byte $3D   ; 
- D 0 - - - 0x0183C9 06:83B9: 39        .byte $39   ; 
- D 0 - - - 0x0183CA 06:83BA: 43        .byte $43   ; 
- D 0 - - - 0x0183CB 06:83BB: 40        .byte $40   ; 
- D 0 - - - 0x0183CC 06:83BC: 3F        .byte $3F   ; 
- D 0 - - - 0x0183CD 06:83BD: 43        .byte $43   ; 
- D 0 - - - 0x0183CE 06:83BE: 4A        .byte $4A   ; 


; bzk garbage
- - - - - - 0x0183CF 06:83BF: FF        .byte $FF   ; 
- - - - - - 0x0183D0 06:83C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0183E0 06:83D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0183F0 06:83E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x018400 06:83F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



_off009_8400_00:
_off011_8400_00:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018410 06:8400: A3        .byte $A3, $93, $63, $73, $C3, $53, $B3, $A3, $03, $93, $2B, $73, $83, $93, $57, $87   ; 00
- D 0 - I - 0x018420 06:8410: 93        .byte $93, $53, $83, $23, $C3, $C3, $63, $0B, $CB, $4B, $6B, $93, $33, $27, $CF, $67   ; 10
- D 0 - I - 0x018430 06:8420: 50        .byte $50, $50, $73, $43, $03, $A3, $3B, $EB, $EB, $B3, $03, $B3, $93, $5F, $0F, $60   ; 20
- D 0 - I - 0x018440 06:8430: 70        .byte $70, $70, $03, $A3, $43, $0B, $0B, $73, $0B, $03, $C3, $63, $72, $92, $0F, $0F   ; 30
- D 0 - I - 0x018450 06:8440: 00        .byte $00, $00, $63, $03, $4B, $83, $8A, $BA, $BA, $32, $B2, $C2, $02, $C2, $72, $0F   ; 40
- D 0 - I - 0x018460 06:8450: 00        .byte $00, $A3, $03, $83, $0A, $0A, $BA, $02, $C2, $0A, $0A, $32, $02, $02, $72, $0F   ; 50
- D 0 - I - 0x018470 06:8460: C3        .byte $C3, $03, $63, $73, $72, $0A, $72, $72, $32, $0A, $DA, $52, $42, $62, $C2, $3F   ; 60
- D 0 - I - 0x018480 06:8470: B3        .byte $B3, $53, $43, $03, $82, $2A, $62, $42, $52, $63, $03, $9F, $6F, $6F, $0F, $0F   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018490 06:8480: 27        .byte $27, $5F, $6B, $5F, $6B, $27, $47, $5F, $03, $4F, $4B, $17, $7B, $6B, $63, $8B   ; 00
- D 0 - I - 0x0184A0 06:8490: 5B        .byte $5B, $63, $7F, $87, $5F, $7B, $5B, $03, $6B, $1F, $6F, $17, $57, $53, $5F, $5A   ; 10
- D 0 - I - 0x0184B0 06:84A0: 44        .byte $44, $4C, $18, $53, $03, $77, $7F, $6B, $86, $6B, $03, $8F, $47, $87, $03, $44   ; 20
- D 0 - I - 0x0184C0 06:84B0: 18        .byte $18, $00, $03, $68, $83, $03, $03, $07, $03, $02, $47, $03, $0A, $86, $03, $03   ; 30
- D 0 - I - 0x0184D0 06:84C0: 00        .byte $00, $00, $1F, $02, $76, $12, $7E, $46, $86, $52, $76, $6A, $02, $7E, $8E, $03   ; 40
- D 0 - I - 0x0184E0 06:84D0: 00        .byte $00, $8F, $03, $8A, $02, $02, $8E, $02, $86, $02, $02, $8E, $02, $02, $7A, $03   ; 50
- D 0 - I - 0x0184F0 06:84E0: 5B        .byte $5B, $03, $8B, $5F, $6A, $03, $7B, $86, $5E, $02, $5E, $8A, $22, $22, $8E, $77   ; 60
- D 0 - I - 0x018500 06:84F0: 73        .byte $73, $87, $5F, $03, $0F, $66, $5A, $42, $6A, $53, $03, $47, $5B, $5F, $03, $03   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018510 06:8500: 00        .byte $00, $42, $42, $1F, $C1, $E6, $E4, $02, $1F, $00, $01, $10, $CE, $CE, $00, $00   ; 00
- D 0 - I - 0x018520 06:8510: 41        .byte $41, $E4, $C1, $65, $42, $E4, $1F, $1F, $1F, $1F, $CE, $00, $00, $DA, $CE, $DA   ; 10
- D 0 - I - 0x018530 06:8520: 21        .byte $21, $21, $02, $42, $00, $5A, $DA, $DA, $DA, $50, $CF, $E7, $4E, $AA, $49, $00   ; 20
- D 0 - I - 0x018540 06:8530: 21        .byte $21, $21, $E4, $00, $4F, $00, $00, $08, $E8, $2F, $E7, $4F, $0A, $43, $AA, $09   ; 30
- D 0 - I - 0x018550 06:8540: 21        .byte $21, $21, $04, $2F, $47, $1A, $00, $00, $50, $E8, $CD, $C4, $AA, $43, $43, $AB   ; 40
- D 0 - I - 0x018560 06:8550: 82        .byte $82, $83, $63, $A2, $69, $07, $47, $69, $69, $5A, $47, $63, $43, $43, $83, $AA   ; 50
- D 0 - I - 0x018570 06:8560: E4        .byte $E4, $83, $83, $EC, $AA, $69, $69, $47, $47, $47, $69, $EC, $44, $44, $EC, $A8   ; 60
- D 0 - I - 0x018580 06:8570: 5A        .byte $5A, $83, $62, $43, $0E, $E7, $4E, $00, $47, $8D, $4D, $D0, $D0, $49, $48, $09   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018590 06:8580: 00        .byte $00, $01, $02, $03, $04, $85, $86, $07, $06, $08, $09, $0A, $0B, $0C, $0D, $0E   ; 00
- D 0 - I - 0x0185A0 06:8590: 0F        .byte $0F, $90, $11, $92, $13, $94, $15, $16, $17, $18, $19, $1A, $1B, $1C, $1D, $1E   ; 10
- D 0 - I - 0x0185B0 06:85A0: 1F        .byte $1F, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $AA, $2B, $AC, $2D, $2E   ; 20
- D 0 - I - 0x0185C0 06:85B0: 2F        .byte $2F, $30, $B1, $32, $33, $34, $35, $36, $B7, $38, $B9, $3A, $0A, $3B, $BC, $3D   ; 30
- D 0 - I - 0x0185D0 06:85C0: 3E        .byte $3E, $3F, $38, $38, $40, $41, $42, $43, $44, $C5, $46, $47, $C8, $49, $4A, $CB   ; 40
- D 0 - I - 0x0185E0 06:85D0: 4C        .byte $4C, $4D, $CE, $CF, $D0, $51, $52, $D3, $D4, $55, $56, $D7, $58, $59, $5A, $CB   ; 50
- D 0 - I - 0x0185F0 06:85E0: DB        .byte $DB, $5C, $5D, $DE, $DF, $E0, $E1, $62, $63, $64, $E5, $E6, $67, $68, $E9, $EA   ; 60
- D 0 - I - 0x018600 06:85F0: 6B        .byte $6B, $6C, $ED, $6E, $6F, $F0, $71, $72, $73, $74, $06, $75, $76, $76, $77, $78   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018610 06:8600: 3F        .byte $3F, $01, $7F, $20, $3F, $5A, $7F, $02, $7F, $7F, $03, $7F, $3F, $3F, $3F, $3F   ; 00
- D 0 - I - 0x018620 06:8610: 3F        .byte $3F, $3F, $98, $98, $D8, $3F, $3F, $3F, $3F, $15, $7F, $3F, $3F, $3F, $1F, $3F   ; 10
- D 0 - I - 0x018630 06:8620: E0        .byte $E0, $98, $58, $D8, $98, $58, $D8, $1C, $00, $C8, $1C, $19, $C6, $1C, $04, $E2   ; 20
- D 0 - I - 0x018640 06:8630: 19        .byte $19, $12, $C4, $3F, $98, $7F, $3F, $98, $7F, $3F, $98, $7F, $00, $00, $00, $00   ; 30
- D 0 - I - 0x018650 06:8640: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0A, $0A   ; 40
- D 0 - I - 0x018660 06:8650: 0A        .byte $0A, $00, $00, $00, $00, $00, $00, $00, $00, $00, $28, $00, $44, $05, $0A, $14   ; 50
- D 0 - I - 0x018670 06:8660: 0A        .byte $0A, $1E, $32, $82, $14, $50, $A0, $64, $3C, $5A, $64, $0A, $50, $FA, $3C, $00   ; 60
- D 0 - I - 0x018680 06:8670: 1E        .byte $1E, $00, $00, $64, $00, $00, $0A, $00, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018690 06:8680: 83        .byte $83, $00, $83, $03, $00, $45, $84, $03, $00, $A4, $00, $03, $00, $00, $0B, $03   ; 00
- D 0 - I - 0x0186A0 06:8690: 00        .byte $00, $A4, $00, $00, $00, $80, $00, $00, $82, $82, $03, $A4, $02, $02, $00, $03   ; 10
- D 0 - I - 0x0186B0 06:86A0: B3        .byte $B3, $62, $03, $11, $00, $00, $00, $40, $05, $84, $00, $84, $45, $00, $00, $03   ; 20
- D 0 - I - 0x0186C0 06:86B0: 84        .byte $84, $04, $00, $00, $02, $00, $00, $03, $00, $80, $84, $02, $03, $02, $00, $00   ; 30
- D 0 - I - 0x0186D0 06:86C0: 00        .byte $00, $00, $01, $00, $00, $03, $06, $45, $02, $02, $00, $09, $00, $0C, $0A, $00   ; 40
- D 0 - I - 0x0186E0 06:86D0: 00        .byte $00, $05, $08, $85, $00, $00, $06, $08, $8C, $00, $00, $0D, $08, $08, $00, $00   ; 50
- D 0 - I - 0x0186F0 06:86E0: 84        .byte $84, $08, $4B, $05, $00, $00, $00, $40, $0C, $00, $05, $4D, $89, $49, $84, $00   ; 60
- D 0 - I - 0x018700 06:86F0: 00        .byte $00, $48, $8C, $08, $03, $00, $00, $00, $0C, $22, $00, $40, $00, $00, $00, $00   ; 70



_off009_8700_01:
_off009_8700_02:
_off009_8700_03:
_off009_8700_04:
_off009_8700_05:
_off009_8700_06:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018710 06:8700: 22        .byte $22, $32, $22, $22, $05, $26, $36, $64, $3A, $36, $3E, $22, $22, $26, $22, $69   ; 00
- D 0 - I - 0x018720 06:8710: FE        .byte $FE, $92, $06, $E6, $22, $32, $A6, $26, $3E, $B6, $06, $E6, $F6, $22, $FE, $22   ; 10
- D 0 - I - 0x018730 06:8720: 16        .byte $16, $96, $26, $36, $E2, $86, $26, $22, $1E, $A2, $26, $22, $A2, $06, $E2, $12   ; 20
- D 0 - I - 0x018740 06:8730: A2        .byte $A2, $A6, $26, $A2, $E6, $36, $26, $02, $FE, $E6, $26, $F6, $E6, $22, $02, $92   ; 30
- D 0 - I - 0x018750 06:8740: 02        .byte $02, $26, $36, $12, $32, $A6, $36, $02, $02, $22, $22, $A2, $22, $FE, $1E, $92   ; 40
- D 0 - I - 0x018760 06:8750: 06        .byte $06, $22, $A6, $82, $86, $22, $A2, $06, $E2, $1E, $06, $02, $06, $E6, $02, $92   ; 50
- D 0 - I - 0x018770 06:8760: 32        .byte $32, $02, $26, $16, $26, $E6, $E2, $32, $02, $06, $36, $02, $26, $22, $02, $86   ; 60
- D 0 - I - 0x018780 06:8770: 26        .byte $26, $02, $26, $A2, $26, $09, $02, $86, $06, $22, $A6, $06, $22, $02, $06, $22   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018790 06:8780: 34        .byte $34, $A3, $07, $26, $05, $36, $A6, $06, $1D, $32, $92, $84, $26, $22, $E6, $69   ; 00
- D 0 - I - 0x0187A0 06:8790: 32        .byte $32, $92, $9E, $E6, $26, $24, $33, $84, $3E, $03, $03, $06, $26, $26, $32, $84   ; 10
- D 0 - I - 0x0187B0 06:87A0: 23        .byte $23, $07, $36, $A7, $36, $A2, $17, $A7, $32, $87, $3E, $04, $22, $07, $36, $A6   ; 20
- D 0 - I - 0x0187C0 06:87B0: 37        .byte $37, $BF, $06, $27, $26, $3E, $06, $27, $26, $3F, $06, $26, $27, $26, $21, $06   ; 30
- D 0 - I - 0x0187D0 06:87C0: 27        .byte $27, $20, $E2, $16, $A2, $06, $23, $07, $26, $22, $16, $B6, $B2, $85, $22, $06   ; 40
- D 0 - I - 0x0187E0 06:87D0: 23        .byte $23, $06, $3E, $02, $06, $3F, $E2, $07, $27, $36, $A2, $12, $9E, $E6, $36, $A6   ; 50
- D 0 - I - 0x0187F0 06:87E0: 32        .byte $32, $36, $A7, $26, $32, $92, $97, $A4, $26, $26, $24, $26, $22, $E2, $16, $A6   ; 60
- D 0 - I - 0x018800 06:87F0: 22        .byte $22, $07, $22, $03, $06, $09, $23, $06, $36, $A3, $07, $22, $07, $23, $06, $22   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018810 06:8800: 0E        .byte $0E, $DB, $09, $00, $98, $8C, $00, $69, $69, $7B, $B3, $0C, $00, $00, $32, $68   ; 00
- D 0 - I - 0x018820 06:8810: 3C        .byte $3C, $35, $52, $03, $00, $0D, $DB, $0F, $04, $B3, $A4, $FC, $34, $B3, $46, $0B   ; 10
- D 0 - I - 0x018830 06:8820: 52        .byte $52, $55, $0A, $06, $39, $56, $70, $B0, $7B, $7B, $DB, $0B, $F7, $72, $E8, $55   ; 20
- D 0 - I - 0x018840 06:8830: 72        .byte $72, $52, $B3, $2A, $B0, $3D, $00, $0B, $FC, $52, $FC, $AD, $7B, $00, $01, $EE   ; 30
- D 0 - I - 0x018850 06:8840: 53        .byte $53, $0C, $15, $55, $06, $E7, $00, $70, $09, $EF, $5B, $13, $AD, $3C, $68, $05   ; 40
- D 0 - I - 0x018860 06:8850: 52        .byte $52, $DB, $9B, $6A, $DB, $53, $31, $53, $DB, $4B, $EE, $0B, $0B, $EF, $46, $55   ; 50
- D 0 - I - 0x018870 06:8860: CB        .byte $CB, $12, $52, $2A, $4C, $70, $30, $0E, $53, $CB, $0D, $53, $A8, $68, $28, $95   ; 60
- D 0 - I - 0x018880 06:8870: DB        .byte $DB, $00, $1B, $00, $6A, $C8, $00, $56, $64, $00, $64, $93, $00, $00, $68, $6A   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018890 06:8880: A6        .byte $A6, $16, $81, $29, $3F, $62, $5A, $3E, $3E, $CA, $8A, $A6, $29, $29, $25, $3F   ; 00
- D 0 - I - 0x0188A0 06:8890: 06        .byte $06, $26, $4A, $85, $29, $A6, $18, $A6, $85, $93, $18, $83, $06, $9B, $0D, $A6   ; 10
- D 0 - I - 0x0188B0 06:88A0: 15        .byte $15, $12, $DA, $15, $24, $07, $14, $95, $8D, $94, $1D, $A6, $80, $93, $1D, $00   ; 20
- D 0 - I - 0x0188C0 06:88B0: 98        .byte $98, $17, $CA, $17, $1E, $04, $29, $17, $CA, $13, $E2, $CA, $97, $29, $A5, $80   ; 30
- D 0 - I - 0x0188D0 06:88C0: 15        .byte $15, $A6, $62, $1F, $02, $0D, $12, $15, $81, $80, $0F, $08, $80, $25, $02, $24   ; 40
- D 0 - I - 0x0188E0 06:88D0: 11        .byte $11, $03, $1E, $02, $03, $13, $00, $17, $24, $1D, $80, $00, $1F, $9E, $1F, $03   ; 50
- D 0 - I - 0x0188F0 06:88E0: 3F        .byte $3F, $02, $0C, $1E, $5A, $02, $18, $A6, $1D, $1B, $A6, $11, $00, $03, $0D, $1E   ; 60
- D 0 - I - 0x018900 06:88F0: 00        .byte $00, $21, $00, $21, $1D, $3F, $21, $1D, $1F, $21, $03, $03, $21, $21, $00, $3F   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018910 06:8900: 03        .byte $03, $99, $83, $1B, $05, $03, $03, $03, $03, $03, $03, $03, $1B, $1B, $1A, $0C   ; 00
- D 0 - I - 0x018920 06:8910: 03        .byte $03, $03, $23, $1A, $1B, $03, $19, $03, $03, $17, $99, $43, $1A, $43, $40, $03   ; 10
- D 0 - I - 0x018930 06:8920: 03        .byte $03, $97, $03, $19, $1A, $63, $19, $99, $0F, $99, $19, $03, $43, $99, $03, $0F   ; 20
- D 0 - I - 0x018940 06:8930: 83        .byte $83, $03, $03, $19, $63, $1A, $1B, $96, $03, $83, $03, $03, $80, $1B, $19, $00   ; 30
- D 0 - I - 0x018950 06:8940: 99        .byte $99, $03, $03, $17, $1D, $39, $97, $19, $03, $19, $00, $19, $77, $1A, $19, $1E   ; 40
- D 0 - I - 0x018960 06:8950: 83        .byte $83, $19, $03, $19, $16, $19, $00, $8F, $19, $03, $16, $00, $03, $6F, $03, $17   ; 50
- D 0 - I - 0x018970 06:8960: 0D        .byte $0D, $03, $96, $03, $03, $00, $99, $03, $16, $00, $03, $19, $19, $03, $03, $16   ; 60
- D 0 - I - 0x018980 06:8970: 19        .byte $19, $03, $19, $03, $19, $10, $03, $19, $03, $03, $99, $19, $03, $03, $19, $0A   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018990 06:8980: 00        .byte $00, $20, $00, $30, $30, $05, $00, $00, $00, $05, $01, $00, $00, $00, $07, $00   ; 00
- D 0 - I - 0x0189A0 06:8990: 01        .byte $01, $00, $04, $07, $30, $00, $20, $00, $01, $07, $00, $01, $07, $00, $17, $00   ; 10
- D 0 - I - 0x0189B0 06:89A0: 00        .byte $00, $00, $20, $37, $07, $00, $27, $20, $17, $00, $01, $00, $00, $07, $01, $07   ; 20
- D 0 - I - 0x0189C0 06:89B0: 10        .byte $10, $01, $05, $20, $01, $07, $20, $27, $04, $01, $05, $04, $07, $00, $07, $00   ; 30
- D 0 - I - 0x0189D0 06:89C0: 20        .byte $20, $00, $04, $00, $37, $10, $20, $27, $00, $00, $07, $07, $00, $07, $07, $07   ; 40
- D 0 - I - 0x0189E0 06:89D0: 00        .byte $00, $10, $01, $37, $00, $27, $07, $27, $07, $01, $00, $07, $11, $27, $02, $00   ; 50
- D 0 - I - 0x0189F0 06:89E0: 30        .byte $30, $00, $20, $00, $00, $10, $11, $00, $07, $07, $00, $07, $00, $01, $00, $10   ; 60
- D 0 - I - 0x018A00 06:89F0: 17        .byte $17, $00, $17, $00, $00, $00, $00, $27, $02, $00, $07, $00, $00, $00, $07, $20   ; 70



_off009_8A00_07:
_off009_8A00_08:
_off009_8A00_09:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018A10 06:8A00: 07        .byte $07, $3E, $22, $26, $26, $26, $36, $32, $32, $3E, $26, $36, $22, $26, $3E, $1F   ; 00
- D 0 - I - 0x018A20 06:8A10: 32        .byte $32, $1E, $F6, $36, $22, $32, $A2, $92, $9E, $E6, $26, $A6, $E6, $22, $F6, $26   ; 10
- D 0 - I - 0x018A30 06:8A20: 86        .byte $86, $1E, $A6, $B6, $02, $92, $16, $92, $16, $26, $26, $26, $22, $06, $B2, $4C   ; 20
- D 0 - I - 0x018A40 06:8A30: 36        .byte $36, $1E, $3E, $A6, $06, $86, $A6, $82, $A6, $22, $26, $22, $F2, $22, $96, $26   ; 30
- D 0 - I - 0x018A50 06:8A40: B6        .byte $B6, $1E, $FE, $32, $22, $32, $22, $02, $36, $E2, $1A, $06, $86, $E2, $A2, $10   ; 40
- D 0 - I - 0x018A60 06:8A50: A6        .byte $A6, $02, $E6, $96, $02, $92, $02, $06, $A2, $12, $32, $22, $26, $06, $F2, $26   ; 50
- D 0 - I - 0x018A70 06:8A60: 14        .byte $14, $02, $26, $B6, $06, $86, $E2, $30, $02, $82, $82, $E6, $26, $26, $82, $7C   ; 60
- D 0 - I - 0x018A80 06:8A70: 63        .byte $63, $06, $71, $A6, $26, $20, $02, $52, $06, $02, $06, $29, $26, $26, $02, $26   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018A90 06:8A80: 07        .byte $07, $37, $A4, $32, $86, $32, $84, $26, $32, $9E, $E6, $25, $33, $86, $26, $1F   ; 00
- D 0 - I - 0x018AA0 06:8A90: 26        .byte $26, $26, $36, $A7, $36, $A3, $06, $26, $37, $B2, $92, $96, $A6, $32, $9F, $06   ; 10
- D 0 - I - 0x018AB0 06:8AA0: 26        .byte $26, $32, $96, $B3, $87, $36, $B2, $86, $24, $32, $9E, $06, $26, $32, $86, $3F   ; 20
- D 0 - I - 0x018AC0 06:8AB0: 32        .byte $32, $86, $26, $33, $87, $26, $32, $86, $3E, $13, $86, $30, $86, $24, $3F, $E6   ; 30
- D 0 - I - 0x018AD0 06:8AC0: 27        .byte $27, $27, $27, $24, $22, $02, $06, $26, $24, $27, $1A, $3F, $E6, $36, $A6, $10   ; 40
- D 0 - I - 0x018AE0 06:8AD0: 3F        .byte $3F, $E6, $26, $27, $32, $92, $87, $27, $22, $1E, $07, $24, $22, $03, $F7, $A7   ; 50
- D 0 - I - 0x018AF0 06:8AE0: 55        .byte $55, $22, $16, $A6, $22, $03, $E4, $04, $32, $83, $03, $02, $02, $07, $26, $7C   ; 60
- D 0 - I - 0x018B00 06:8AF0: 05        .byte $05, $26, $74, $36, $A6, $61, $26, $03, $26, $23, $06, $0D, $22, $E3, $03, $07   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018B10 06:8B00: 69        .byte $69, $EF, $0E, $B3, $F7, $7B, $0D, $F1, $35, $BA, $45, $01, $31, $F9, $4B, $69   ; 00
- D 0 - I - 0x018B20 06:8B10: F1        .byte $F1, $3B, $3A, $B3, $57, $23, $08, $FC, $F5, $85, $BA, $85, $38, $56, $33, $B8   ; 10
- D 0 - I - 0x018B30 06:8B20: 7B        .byte $7B, $07, $B3, $D5, $52, $B3, $D5, $08, $36, $BA, $3D, $00, $00, $35, $3C, $77   ; 20
- D 0 - I - 0x018B40 06:8B30: F7        .byte $F7, $FC, $37, $D5, $DB, $7B, $EF, $92, $BA, $38, $01, $10, $05, $0F, $8C, $F4   ; 30
- D 0 - I - 0x018B50 06:8B40: 7B        .byte $7B, $F6, $3E, $0C, $A4, $FC, $A3, $F1, $0F, $F5, $69, $8B, $D6, $33, $F4, $69   ; 40
- D 0 - I - 0x018B60 06:8B50: 53        .byte $53, $97, $07, $FC, $7B, $3A, $B3, $7B, $31, $BA, $EA, $10, $0B, $B0, $4C, $D6   ; 50
- D 0 - I - 0x018B70 06:8B60: 69        .byte $69, $07, $DB, $53, $FC, $F1, $0B, $C6, $EE, $45, $DB, $85, $39, $EA, $3C, $69   ; 60
- D 0 - I - 0x018B80 06:8B70: A9        .byte $A9, $00, $69, $F1, $3B, $69, $00, $69, $68, $00, $01, $69, $F4, $3C, $00, $EF   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018B90 06:8B80: 3F        .byte $3F, $93, $A6, $DA, $DA, $CA, $A6, $DA, $26, $8A, $24, $A5, $23, $C8, $00, $3F   ; 00
- D 0 - I - 0x018BA0 06:8B90: C8        .byte $C8, $25, $26, $80, $1C, $14, $8A, $9F, $96, $1F, $DA, $00, $24, $11, $24, $DA   ; 10
- D 0 - I - 0x018BB0 06:8BA0: DA        .byte $DA, $A5, $9D, $12, $17, $8E, $03, $8A, $26, $DA, $04, $29, $29, $26, $00, $3E   ; 20
- D 0 - I - 0x018BC0 06:8BB0: CA        .byte $CA, $A5, $27, $19, $14, $A6, $80, $63, $8D, $24, $A5, $A6, $85, $A6, $23, $9B   ; 30
- D 0 - I - 0x018BD0 06:8BC0: 96        .byte $96, $80, $28, $A6, $00, $80, $25, $9E, $A6, $98, $3F, $23, $1C, $25, $80, $3F   ; 40
- D 0 - I - 0x018BE0 06:8BD0: 14        .byte $14, $11, $9B, $A3, $8C, $5A, $99, $94, $00, $82, $19, $A6, $24, $91, $24, $18   ; 50
- D 0 - I - 0x018BF0 06:8BE0: 3E        .byte $3E, $DA, $26, $1B, $9F, $98, $A6, $3E, $80, $23, $09, $1E, $24, $13, $25, $3F   ; 60
- D 0 - I - 0x018C00 06:8BF0: 3E        .byte $3E, $1B, $3E, $9F, $5A, $3E, $21, $3E, $23, $21, $9D, $3E, $DA, $23, $21, $96   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018C10 06:8C00: 13        .byte $13, $83, $03, $03, $03, $03, $03, $03, $03, $0F, $19, $00, $00, $03, $00, $0B   ; 00
- D 0 - I - 0x018C20 06:8C10: 03        .byte $03, $00, $0F, $83, $03, $8F, $00, $03, $97, $03, $23, $00, $03, $00, $03, $03   ; 10
- D 0 - I - 0x018C30 06:8C20: 03        .byte $03, $03, $03, $00, $83, $00, $0F, $17, $03, $23, $1A, $1B, $1B, $03, $17, $03   ; 20
- D 0 - I - 0x018C40 06:8C30: 03        .byte $03, $03, $03, $83, $0F, $16, $03, $00, $0F, $03, $39, $23, $1A, $23, $03, $00   ; 30
- D 0 - I - 0x018C50 06:8C40: 0F        .byte $0F, $A3, $8E, $23, $0F, $03, $03, $19, $03, $03, $07, $99, $39, $03, $0F, $09   ; 40
- D 0 - I - 0x018C60 06:8C50: 83        .byte $83, $03, $23, $03, $03, $03, $19, $99, $0F, $03, $96, $03, $19, $99, $19, $96   ; 50
- D 0 - I - 0x018C70 06:8C60: 03        .byte $03, $19, $0F, $03, $03, $83, $03, $03, $00, $00, $83, $03, $00, $19, $0F, $11   ; 60
- D 0 - I - 0x018C80 06:8C70: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $19, $03, $00, $03, $03, $0F, $03, $99   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018C90 06:8C80: 00        .byte $00, $00, $00, $00, $00, $05, $00, $00, $00, $07, $01, $07, $07, $05, $07, $00   ; 00
- D 0 - I - 0x018CA0 06:8C90: 05        .byte $05, $07, $07, $00, $00, $07, $07, $10, $01, $01, $00, $07, $01, $07, $01, $01   ; 10
- D 0 - I - 0x018CB0 06:8CA0: 00        .byte $00, $20, $00, $10, $00, $07, $07, $07, $00, $00, $07, $00, $00, $00, $07, $00   ; 20
- D 0 - I - 0x018CC0 06:8CB0: 05        .byte $05, $00, $01, $00, $07, $07, $00, $07, $17, $00, $07, $00, $37, $00, $01, $07   ; 30
- D 0 - I - 0x018CD0 06:8CC0: 07        .byte $07, $00, $03, $00, $07, $00, $00, $10, $10, $01, $00, $01, $11, $01, $07, $00   ; 40
- D 0 - I - 0x018CE0 06:8CD0: 01        .byte $01, $01, $01, $00, $00, $00, $07, $07, $07, $01, $00, $00, $07, $00, $07, $00   ; 50
- D 0 - I - 0x018CF0 06:8CE0: 00        .byte $00, $10, $07, $00, $00, $00, $00, $00, $07, $07, $02, $01, $07, $00, $07, $00   ; 60
- D 0 - I - 0x018D00 06:8CF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $00, $10, $07, $00, $00   ; 70



_off011_8D00_01:
_off011_8D00_02:
_off011_8D00_03:
_off011_8D00_04:
_off011_8D00_05:
_off011_8D00_06:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018D10 06:8D00: 22        .byte $22, $26, $22, $04, $32, $26, $26, $32, $26, $3B, $36, $3A, $2A, $32, $26, $0E   ; 00
- D 0 - I - 0x018D20 06:8D10: E6        .byte $E6, $26, $06, $22, $82, $36, $22, $86, $26, $22, $A2, $22, $52, $82, $22, $22   ; 10
- D 0 - I - 0x018D30 06:8D20: 22        .byte $22, $01, $22, $02, $02, $A2, $FE, $3E, $18, $E2, $0A, $F6, $82, $02, $E6, $FE   ; 20
- D 0 - I - 0x018D40 06:8D30: E6        .byte $E6, $22, $E6, $0A, $12, $02, $06, $02, $3E, $1E, $46, $A6, $1E, $06, $26, $EA   ; 30
- D 0 - I - 0x018D50 06:8D40: 3E        .byte $3E, $06, $36, $46, $92, $E2, $51, $02, $E6, $02, $32, $22, $1E, $26, $26, $42   ; 40
- D 0 - I - 0x018D60 06:8D50: 1E        .byte $1E, $26, $A6, $22, $82, $02, $30, $02, $11, $1E, $86, $02, $E2, $26, $46, $F6   ; 50
- D 0 - I - 0x018D70 06:8D60: 06        .byte $06, $36, $22, $06, $02, $02, $36, $02, $32, $02, $1F, $FE, $06, $22, $22, $A6   ; 60
- D 0 - I - 0x018D80 06:8D70: 26        .byte $26, $A6, $02, $06, $02, $02, $A6, $02, $86, $02, $12, $06, $26, $02, $06, $5E   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018D90 06:8D80: 26        .byte $26, $3E, $06, $24, $36, $BE, $06, $3E, $06, $7B, $27, $3A, $28, $5C, $06, $6F   ; 00
- D 0 - I - 0x018DA0 06:8D90: 36        .byte $36, $A6, $26, $3F, $E7, $26, $26, $37, $A6, $22, $06, $26, $2B, $47, $27, $06   ; 10
- D 0 - I - 0x018DB0 06:8DA0: 26        .byte $26, $71, $26, $2B, $46, $24, $27, $26, $68, $33, $86, $26, $23, $12, $87, $27   ; 20
- D 0 - I - 0x018DC0 06:8DB0: 26        .byte $26, $23, $05, $33, $86, $27, $26, $36, $A6, $26, $46, $26, $23, $12, $86, $27   ; 30
- D 0 - I - 0x018DD0 06:8DC0: 22        .byte $22, $E6, $30, $83, $07, $27, $51, $23, $07, $37, $A2, $06, $36, $AA, $44, $46   ; 40
- D 0 - I - 0x018DE0 06:8DD0: 27        .byte $27, $22, $17, $A3, $07, $26, $76, $26, $22, $36, $B2, $87, $37, $BE, $06, $27   ; 50
- D 0 - I - 0x018DF0 06:8DE0: 23        .byte $23, $02, $07, $23, $07, $36, $A6, $32, $86, $26, $1F, $26, $22, $E3, $06, $26   ; 60
- D 0 - I - 0x018E00 06:8DF0: 2B        .byte $2B, $46, $27, $36, $27, $27, $26, $23, $06, $27, $12, $26, $23, $03, $06, $5E   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018E10 06:8E00: 00        .byte $00, $63, $33, $69, $DB, $03, $6D, $3D, $00, $68, $AD, $68, $12, $11, $2C, $6B   ; 00
- D 0 - I - 0x018E20 06:8E10: 04        .byte $04, $52, $2D, $7B, $7B, $86, $00, $05, $F9, $3C, $4B, $00, $FE, $DB, $8C, $B8   ; 10
- D 0 - I - 0x018E30 06:8E20: 00        .byte $00, $68, $DD, $52, $2C, $36, $33, $01, $6A, $DB, $DB, $03, $53, $00, $32, $31   ; 20
- D 0 - I - 0x018E40 06:8E30: 86        .byte $86, $FC, $3C, $FD, $DB, $AA, $3C, $D5, $32, $70, $00, $0B, $AD, $B0, $35, $0B   ; 30
- D 0 - I - 0x018E50 06:8E40: F7        .byte $F7, $53, $12, $F6, $F1, $45, $69, $05, $EE, $DB, $B0, $4B, $8C, $4B, $0F, $00   ; 40
- D 0 - I - 0x018E60 06:8E50: FD        .byte $FD, $09, $FC, $72, $FC, $A8, $69, $6A, $68, $13, $0B, $EE, $FE, $3D, $B0, $38   ; 50
- D 0 - I - 0x018E70 06:8E60: 72        .byte $72, $F6, $AD, $FD, $7B, $86, $31, $06, $9B, $70, $6A, $13, $B8, $38, $6C, $2D   ; 60
- D 0 - I - 0x018E80 06:8E70: DD        .byte $DD, $FD, $00, $6A, $00, $C0, $E7, $00, $46, $00, $69, $70, $EF, $00, $6D, $6A   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018E90 06:8E80: 29        .byte $29, $5C, $06, $3E, $1C, $85, $46, $04, $29, $3E, $A3, $3F, $A6, $A6, $5F, $3E   ; 00
- D 0 - I - 0x018EA0 06:8E90: 85        .byte $85, $1B, $1B, $A4, $8B, $03, $29, $24, $9B, $00, $02, $29, $95, $13, $23, $CC   ; 10
- D 0 - I - 0x018EB0 06:8EA0: 29        .byte $29, $3E, $1C, $19, $47, $26, $24, $9D, $3E, $23, $0E, $85, $17, $60, $24, $24   ; 20
- D 0 - I - 0x018EC0 06:8EB0: 1B        .byte $1B, $98, $25, $93, $0E, $23, $4A, $1E, $25, $07, $1C, $1B, $95, $83, $26, $23   ; 30
- D 0 - I - 0x018ED0 06:8EC0: 8D        .byte $8D, $26, $A6, $94, $98, $24, $3F, $15, $98, $23, $8D, $0A, $06, $0A, $A6, $29   ; 40
- D 0 - I - 0x018EE0 06:8ED0: 95        .byte $95, $C1, $A3, $95, $A4, $11, $3E, $1F, $3E, $4A, $1E, $A3, $9F, $04, $CD, $24   ; 50
- D 0 - I - 0x018EF0 06:8EE0: 97        .byte $97, $9D, $A3, $96, $8C, $0D, $25, $23, $5A, $10, $3F, $11, $9D, $23, $1F, $1B   ; 60
- D 0 - I - 0x018F00 06:8EF0: 00        .byte $00, $9B, $21, $3E, $21, $21, $48, $21, $02, $21, $3F, $1B, $91, $21, $00, $3F   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018F10 06:8F00: 1B        .byte $1B, $03, $19, $03, $03, $0F, $03, $1A, $1B, $03, $17, $05, $03, $03, $03, $03   ; 00
- D 0 - I - 0x018F20 06:8F10: 1A        .byte $1A, $23, $03, $00, $19, $1E, $1B, $23, $19, $19, $03, $1B, $83, $99, $17, $03   ; 10
- D 0 - I - 0x018F30 06:8F20: 1B        .byte $1B, $03, $03, $03, $03, $03, $1A, $03, $03, $03, $39, $1A, $80, $03, $03, $03   ; 20
- D 0 - I - 0x018F40 06:8F30: 19        .byte $19, $19, $0F, $03, $16, $19, $43, $0F, $03, $03, $03, $20, $03, $19, $03, $03   ; 30
- D 0 - I - 0x018F50 06:8F40: 03        .byte $03, $16, $03, $17, $03, $17, $0D, $00, $17, $19, $19, $00, $19, $00, $03, $1B   ; 40
- D 0 - I - 0x018F60 06:8F50: 83        .byte $83, $0F, $0F, $03, $03, $00, $03, $16, $03, $03, $16, $19, $83, $03, $63, $1A   ; 50
- D 0 - I - 0x018F70 06:8F60: 97        .byte $97, $0F, $83, $99, $80, $03, $1A, $19, $03, $19, $0C, $19, $16, $03, $03, $63   ; 60
- D 0 - I - 0x018F80 06:8F70: 99        .byte $99, $03, $03, $03, $03, $03, $16, $03, $1D, $03, $0A, $0F, $99, $03, $03, $11   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x018F90 06:8F80: 20        .byte $20, $04, $17, $00, $00, $07, $05, $07, $20, $00, $27, $20, $00, $06, $05, $00   ; 00
- D 0 - I - 0x018FA0 06:8F90: 07        .byte $07, $02, $00, $27, $31, $37, $20, $00, $27, $27, $02, $20, $00, $07, $27, $05   ; 10
- D 0 - I - 0x018FB0 06:8FA0: 20        .byte $20, $00, $02, $00, $05, $00, $37, $01, $00, $01, $30, $07, $27, $00, $01, $01   ; 20
- D 0 - I - 0x018FC0 06:8FB0: 01        .byte $01, $30, $07, $00, $00, $27, $05, $07, $01, $01, $00, $27, $00, $27, $06, $01   ; 30
- D 0 - I - 0x018FD0 06:8FC0: 01        .byte $01, $27, $00, $17, $00, $21, $20, $17, $31, $20, $17, $27, $27, $27, $00, $20   ; 40
- D 0 - I - 0x018FE0 06:8FD0: 01        .byte $01, $35, $27, $00, $00, $27, $00, $17, $00, $04, $17, $27, $01, $01, $05, $07   ; 50
- D 0 - I - 0x018FF0 06:8FE0: 27        .byte $27, $07, $00, $10, $27, $00, $17, $27, $00, $17, $20, $17, $27, $01, $00, $00   ; 60
- D 0 - I - 0x019000 06:8FF0: 27        .byte $27, $00, $00, $00, $00, $00, $25, $00, $27, $00, $20, $27, $27, $00, $00, $20   ; 70



_off011_9000_07:
_off011_9000_08:
_off011_9000_09:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x019010 06:9000: 26        .byte $26, $22, $18, $29, $19, $49, $26, $3E, $22, $26, $26, $26, $26, $26, $26, $22   ; 00
- D 0 - I - 0x019020 06:9010: 26        .byte $26, $06, $26, $3E, $22, $22, $46, $E6, $EA, $26, $22, $26, $26, $26, $26, $02   ; 10
- D 0 - I - 0x019030 06:9020: 08        .byte $08, $6A, $32, $02, $02, $02, $69, $78, $56, $32, $06, $38, $48, $22, $22, $02   ; 20
- D 0 - I - 0x019040 06:9030: 5B        .byte $5B, $3E, $92, $F6, $12, $06, $3E, $5C, $A6, $86, $3E, $3E, $3E, $F6, $E2, $02   ; 30
- D 0 - I - 0x019050 06:9040: 22        .byte $22, $16, $8A, $A2, $82, $52, $12, $2A, $26, $22, $16, $1E, $1E, $B2, $1E, $02   ; 40
- D 0 - I - 0x019060 06:9050: 06        .byte $06, $B6, $22, $02, $02, $82, $82, $46, $2A, $EA, $A6, $06, $06, $82, $E2, $02   ; 50
- D 0 - I - 0x019070 06:9060: 4A        .byte $4A, $A6, $06, $12, $E2, $06, $26, $1A, $46, $46, $26, $26, $26, $06, $02, $02   ; 60
- D 0 - I - 0x019080 06:9070: 2A        .byte $2A, $73, $01, $86, $02, $06, $45, $00, $26, $22, $26, $26, $26, $26, $06, $02   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x019090 06:9080: 2A        .byte $2A, $46, $6F, $5F, $4F, $0A, $26, $26, $32, $87, $22, $F7, $B3, $9F, $FE, $E7   ; 00
- D 0 - I - 0x0190A0 06:9090: 3F        .byte $3F, $E3, $0B, $48, $22, $12, $9F, $E7, $22, $E6, $26, $22, $FE, $F7, $A6, $27   ; 10
- D 0 - I - 0x0190B0 06:90A0: 58        .byte $58, $4D, $37, $A3, $E3, $06, $3F, $3A, $23, $E6, $26, $38, $48, $26, $26, $24   ; 20
- D 0 - I - 0x0190C0 06:90B0: 2E        .byte $2E, $22, $03, $E2, $02, $26, $06, $1E, $26, $27, $3E, $04, $27, $27, $27, $26   ; 30
- D 0 - I - 0x0190D0 06:90C0: 32        .byte $32, $9E, $02, $3F, $E7, $2A, $53, $87, $36, $A6, $3E, $02, $E4, $26, $27, $27   ; 40
- D 0 - I - 0x0190E0 06:90D0: 37        .byte $37, $A7, $26, $27, $2B, $4B, $5E, $06, $3E, $06, $27, $26, $26, $26, $27, $26   ; 50
- D 0 - I - 0x0190F0 06:90E0: 7D        .byte $7D, $23, $1F, $E3, $FC, $03, $07, $7C, $23, $16, $A6, $20, $E2, $E6, $27, $26   ; 60
- D 0 - I - 0x019100 06:90F0: 2A        .byte $2A, $35, $15, $22, $27, $57, $45, $00, $22, $03, $03, $E3, $02, $FE, $07, $27   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x019110 06:9100: 3B        .byte $3B, $07, $69, $69, $69, $69, $EC, $37, $01, $31, $AD, $31, $FF, $38, $85, $45   ; 00
- D 0 - I - 0x019120 06:9110: 72        .byte $72, $F1, $F6, $0D, $ED, $7B, $08, $3E, $86, $6C, $DB, $00, $05, $4C, $FE, $EE   ; 10
- D 0 - I - 0x019130 06:9120: 69        .byte $69, $39, $A3, $FC, $00, $00, $C5, $39, $31, $F5, $B8, $39, $69, $00, $EE, $36   ; 20
- D 0 - I - 0x019140 06:9130: 6A        .byte $6A, $F7, $FD, $00, $00, $2D, $72, $69, $FF, $45, $2D, $11, $3C, $31, $33, $38   ; 30
- D 0 - I - 0x019150 06:9140: AD        .byte $AD, $00, $53, $A4, $08, $7B, $07, $B3, $AA, $FF, $F0, $00, $11, $01, $8C, $85   ; 40
- D 0 - I - 0x019160 06:9150: 3A        .byte $3A, $DD, $F1, $F7, $AD, $DD, $7B, $FD, $E8, $00, $8C, $CC, $8C, $BA, $4C, $E8   ; 50
- D 0 - I - 0x019170 06:9160: 69        .byte $69, $52, $F6, $3B, $0B, $7B, $FC, $69, $F5, $DB, $85, $0F, $FF, $3D, $FE, $AD   ; 60
- D 0 - I - 0x019180 06:9170: 39        .byte $39, $38, $C5, $FD, $00, $B5, $CA, $46, $AD, $00, $B8, $FE, $F4, $3C, $FE, $00   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x019190 06:9180: 4A        .byte $4A, $CA, $3E, $3E, $3E, $3E, $62, $27, $DA, $24, $5F, $24, $95, $24, $0C, $23   ; 00
- D 0 - I - 0x0191A0 06:9190: 95        .byte $95, $A3, $99, $A6, $00, $CE, $A3, $28, $62, $4A, $5A, $29, $85, $24, $9B, $96   ; 10
- D 0 - I - 0x0191B0 06:91A0: 3E        .byte $3E, $3E, $23, $96, $60, $60, $3E, $3E, $23, $CD, $DF, $3F, $3F, $29, $C1, $26   ; 20
- D 0 - I - 0x0191C0 06:91B0: 3E        .byte $3E, $81, $A3, $60, $60, $4A, $88, $3E, $C8, $23, $62, $A6, $24, $24, $23, $46   ; 30
- D 0 - I - 0x0191D0 06:91C0: 23        .byte $23, $60, $26, $12, $A3, $E2, $A4, $A3, $51, $C8, $4A, $60, $A6, $C7, $23, $18   ; 40
- D 0 - I - 0x0191E0 06:91D0: 24        .byte $24, $0D, $83, $94, $96, $0F, $8C, $DF, $62, $60, $23, $5F, $51, $9E, $24, $51   ; 50
- D 0 - I - 0x0191F0 06:91E0: 3E        .byte $3E, $23, $A3, $1D, $A6, $95, $A3, $3E, $96, $0F, $5A, $A6, $C8, $04, $98, $4A   ; 60
- D 0 - I - 0x019200 06:91F0: 3F        .byte $3F, $3E, $3E, $9D, $21, $3E, $3F, $3F, $DF, $21, $A3, $93, $D1, $46, $95, $21   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x019210 06:9200: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $03, $19, $19, $03, $80, $0F, $03, $19   ; 00
- D 0 - I - 0x019220 06:9210: 0F        .byte $0F, $03, $03, $03, $03, $03, $23, $8E, $03, $03, $03, $1B, $1A, $20, $03, $96   ; 10
- D 0 - I - 0x019230 06:9220: 03        .byte $03, $03, $03, $03, $83, $03, $03, $03, $03, $03, $19, $10, $0B, $1B, $19, $03   ; 20
- D 0 - I - 0x019240 06:9230: 03        .byte $03, $03, $19, $03, $03, $03, $03, $03, $03, $17, $03, $03, $0F, $1A, $03, $03   ; 30
- D 0 - I - 0x019250 06:9240: 03        .byte $03, $03, $16, $03, $0F, $03, $17, $03, $03, $03, $03, $03, $03, $43, $03, $03   ; 40
- D 0 - I - 0x019260 06:9250: 00        .byte $00, $83, $03, $03, $83, $8F, $03, $03, $03, $03, $00, $03, $03, $0F, $0F, $03   ; 50
- D 0 - I - 0x019270 06:9260: 03        .byte $03, $0F, $03, $80, $03, $83, $0F, $03, $0F, $03, $00, $03, $03, $03, $97, $03   ; 60
- D 0 - I - 0x019280 06:9270: 07        .byte $07, $03, $03, $03, $03, $03, $09, $13, $16, $03, $03, $83, $03, $03, $83, $03   ; 70

;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x019290 06:9280: 05        .byte $05, $05, $00, $00, $00, $00, $05, $20, $00, $27, $15, $01, $17, $17, $01, $27   ; 00
- D 0 - I - 0x0192A0 06:9290: 17        .byte $17, $01, $00, $00, $00, $05, $01, $03, $05, $05, $00, $20, $17, $27, $00, $37   ; 10
- D 0 - I - 0x0192B0 06:92A0: 00        .byte $00, $20, $00, $10, $00, $00, $00, $00, $00, $05, $05, $20, $20, $20, $25, $00   ; 20
- D 0 - I - 0x0192C0 06:92B0: 00        .byte $00, $01, $27, $00, $00, $05, $00, $00, $05, $27, $05, $06, $07, $07, $01, $05   ; 30
- D 0 - I - 0x0192D0 06:92C0: 00        .byte $00, $00, $17, $01, $27, $05, $27, $00, $05, $05, $05, $00, $06, $05, $01, $00   ; 40
- D 0 - I - 0x0192E0 06:92D0: 17        .byte $17, $00, $00, $00, $00, $37, $00, $05, $05, $00, $27, $05, $05, $17, $27, $05   ; 50
- D 0 - I - 0x0192F0 06:92E0: 00        .byte $00, $17, $01, $27, $00, $00, $27, $00, $37, $00, $17, $00, $04, $01, $37, $05   ; 60
- D 0 - I - 0x019300 06:92F0: 20        .byte $20, $00, $00, $00, $00, $00, $20, $20, $15, $00, $00, $01, $05, $04, $00, $00   ; 70



_off010_9300_00:
- D 0 - I - 0x019310 06:9300: 3F        .byte $3F   ; 
- D 0 - I - 0x019311 06:9301: 00        .byte $00   ; 
- D 0 - I - 0x019312 06:9302: 20        .byte $20   ; 
- D 0 - I - 0x019313 06:9303: 0F        .byte $0F   ; 
- D 0 - I - 0x019314 06:9304: 30        .byte $30   ; 
- D 0 - I - 0x019315 06:9305: 00        .byte $00   ; 
- D 0 - I - 0x019316 06:9306: 12        .byte $12   ; 
- D 0 - I - 0x019317 06:9307: 0F        .byte $0F   ; 
- D 0 - I - 0x019318 06:9308: 16        .byte $16   ; 
- D 0 - I - 0x019319 06:9309: 27        .byte $27   ; 
- D 0 - I - 0x01931A 06:930A: 36        .byte $36   ; 
- D 0 - I - 0x01931B 06:930B: 0F        .byte $0F   ; 
- D 0 - I - 0x01931C 06:930C: 1A        .byte $1A   ; 
- D 0 - I - 0x01931D 06:930D: 37        .byte $37   ; 
- D 0 - I - 0x01931E 06:930E: 12        .byte $12   ; 
- D 0 - I - 0x01931F 06:930F: 0F        .byte $0F   ; 
- D 0 - I - 0x019320 06:9310: 17        .byte $17   ; 
- D 0 - I - 0x019321 06:9311: 37        .byte $37   ; 
- D 0 - I - 0x019322 06:9312: 12        .byte $12   ; 
- D 0 - I - 0x019323 06:9313: 0F        .byte $0F   ; 
- D 0 - I - 0x019324 06:9314: 29        .byte $29   ; 
- D 0 - I - 0x019325 06:9315: 27        .byte $27   ; 
- D 0 - I - 0x019326 06:9316: 17        .byte $17   ; 
- D 0 - I - 0x019327 06:9317: 0F        .byte $0F   ; 
- D 0 - I - 0x019328 06:9318: 02        .byte $02   ; 
- D 0 - I - 0x019329 06:9319: 22        .byte $22   ; 
- D 0 - I - 0x01932A 06:931A: 30        .byte $30   ; 
- D 0 - I - 0x01932B 06:931B: 0F        .byte $0F   ; 
- D 0 - I - 0x01932C 06:931C: 16        .byte $16   ; 
- D 0 - I - 0x01932D 06:931D: 27        .byte $27   ; 
- D 0 - I - 0x01932E 06:931E: 30        .byte $30   ; 
- D 0 - I - 0x01932F 06:931F: 0F        .byte $0F   ; 
- D 0 - I - 0x019330 06:9320: 0C        .byte $0C   ; 
- D 0 - I - 0x019331 06:9321: 1C        .byte $1C   ; 
- D 0 - I - 0x019332 06:9322: 2C        .byte $2C   ; 
- D 0 - I - 0x019333 06:9323: FF        .byte $FF   ; 
- D 0 - I - 0x019334 06:9324: 01        .byte $01   ; 
- D 0 - I - 0x019335 06:9325: 04        .byte $04   ; 
- D 0 - I - 0x019336 06:9326: 05        .byte $05   ; 
- D 0 - I - 0x019337 06:9327: 06        .byte $06   ; 
- D 0 - I - 0x019338 06:9328: 8D        .byte $8D   ; 
- D 0 - I - 0x019339 06:9329: 57        .byte $57   ; 
- D 0 - I - 0x01933A 06:932A: 49        .byte $49   ; 
- D 0 - I - 0x01933B 06:932B: 99        .byte $99   ; 
- D 0 - I - 0x01933C 06:932C: 69        .byte $69   ; 
- D 0 - I - 0x01933D 06:932D: 00        .byte $00   ; 
- D 0 - I - 0x01933E 06:932E: 00        .byte $00   ; 
- D 0 - I - 0x01933F 06:932F: 77        .byte $77   ; 
- D 0 - I - 0x019340 06:9330: 2A        .byte $2A   ; 
- D 0 - I - 0x019341 06:9331: 7F        .byte $7F   ; 
- D 0 - I - 0x019342 06:9332: 06        .byte $06   ; 
- D 0 - I - 0x019343 06:9333: 00        .byte $00   ; 
- D 0 - I - 0x019344 06:9334: 1D        .byte $1D   ; 
- D 0 - I - 0x019345 06:9335: 23        .byte $23   ; 
- D 0 - I - 0x019346 06:9336: 49        .byte $49   ; 
- D 0 - I - 0x019347 06:9337: 79        .byte $79   ; 
- D 0 - I - 0x019348 06:9338: FF        .byte $FF   ; 
- D 0 - I - 0x019349 06:9339: FF        .byte $FF   ; 
- D 0 - I - 0x01934A 06:933A: FF        .byte $FF   ; 
- D 0 - I - 0x01934B 06:933B: FF        .byte $FF   ; 
- D 0 - I - 0x01934C 06:933C: FF        .byte $FF   ; 
- D 0 - I - 0x01934D 06:933D: FF        .byte $FF   ; 
- D 0 - I - 0x01934E 06:933E: 2A        .byte $2A   ; 
- D 0 - I - 0x01934F 06:933F: FF        .byte $FF   ; 
- D 0 - I - 0x019350 06:9340: FF        .byte $FF   ; 
- D 0 - I - 0x019351 06:9341: FF        .byte $FF   ; 
- D 0 - I - 0x019352 06:9342: FF        .byte $FF   ; 
- D 0 - I - 0x019353 06:9343: FF        .byte $FF   ; 
- D 0 - I - 0x019354 06:9344: FF        .byte $FF   ; 
- D 0 - I - 0x019355 06:9345: FF        .byte $FF   ; 
- D 0 - I - 0x019356 06:9346: FF        .byte $FF   ; 
- D 0 - I - 0x019357 06:9347: FF        .byte $FF   ; 
- D 0 - I - 0x019358 06:9348: FF        .byte $FF   ; 
- D 0 - I - 0x019359 06:9349: FF        .byte $FF   ; 
- D 0 - I - 0x01935A 06:934A: FF        .byte $FF   ; 
- D 0 - I - 0x01935B 06:934B: FF        .byte $FF   ; 
- D 0 - I - 0x01935C 06:934C: FF        .byte $FF   ; 
- D 0 - I - 0x01935D 06:934D: FF        .byte $FF   ; 
- D 0 - I - 0x01935E 06:934E: FF        .byte $FF   ; 
- D 0 - I - 0x01935F 06:934F: 20        .byte $20   ; 
- D 0 - I - 0x019360 06:9350: 62        .byte $62   ; 
- D 0 - I - 0x019361 06:9351: 48        .byte $48   ; 
- D 0 - I - 0x019362 06:9352: F5        .byte $F5   ; 
- D 0 - I - 0x019363 06:9353: 20        .byte $20   ; 
- D 0 - I - 0x019364 06:9354: 82        .byte $82   ; 
- D 0 - I - 0x019365 06:9355: 48        .byte $48   ; 
- D 0 - I - 0x019366 06:9356: F5        .byte $F5   ; 
- D 0 - I - 0x019367 06:9357: 20        .byte $20   ; 
- D 0 - I - 0x019368 06:9358: A2        .byte $A2   ; 
- D 0 - I - 0x019369 06:9359: 48        .byte $48   ; 
- D 0 - I - 0x01936A 06:935A: F5        .byte $F5   ; 
- D 0 - I - 0x01936B 06:935B: 20        .byte $20   ; 
- D 0 - I - 0x01936C 06:935C: C2        .byte $C2   ; 
- D 0 - I - 0x01936D 06:935D: 48        .byte $48   ; 
- D 0 - I - 0x01936E 06:935E: F5        .byte $F5   ; 
- D 0 - I - 0x01936F 06:935F: FF        .byte $FF   ; 
- D 0 - I - 0x019370 06:9360: FF        .byte $FF   ; 
- D 0 - I - 0x019371 06:9361: FF        .byte $FF   ; 
- D 0 - I - 0x019372 06:9362: FF        .byte $FF   ; 
- D 0 - I - 0x019373 06:9363: FF        .byte $FF   ; 
- D 0 - I - 0x019374 06:9364: FF        .byte $FF   ; 
- D 0 - I - 0x019375 06:9365: FF        .byte $FF   ; 
- D 0 - I - 0x019376 06:9366: FF        .byte $FF   ; 
- D 0 - I - 0x019377 06:9367: FF        .byte $FF   ; 
- D 0 - I - 0x019378 06:9368: FF        .byte $FF   ; 
- D 0 - I - 0x019379 06:9369: FF        .byte $FF   ; 
- D 0 - I - 0x01937A 06:936A: FF        .byte $FF   ; 
- D 0 - I - 0x01937B 06:936B: FF        .byte $FF   ; 
- D 0 - I - 0x01937C 06:936C: FF        .byte $FF   ; 
- D 0 - I - 0x01937D 06:936D: FF        .byte $FF   ; 
- D 0 - I - 0x01937E 06:936E: FF        .byte $FF   ; 
- D 0 - I - 0x01937F 06:936F: FF        .byte $FF   ; 
- D 0 - I - 0x019380 06:9370: FF        .byte $FF   ; 
- D 0 - I - 0x019381 06:9371: FF        .byte $FF   ; 
- D 0 - I - 0x019382 06:9372: FF        .byte $FF   ; 
- D 0 - I - 0x019383 06:9373: FF        .byte $FF   ; 
- D 0 - I - 0x019384 06:9374: FF        .byte $FF   ; 
- D 0 - I - 0x019385 06:9375: FF        .byte $FF   ; 
- D 0 - I - 0x019386 06:9376: FF        .byte $FF   ; 
- D 0 - I - 0x019387 06:9377: FF        .byte $FF   ; 
- D 0 - I - 0x019388 06:9378: FF        .byte $FF   ; 
- D 0 - I - 0x019389 06:9379: FF        .byte $FF   ; 
- D 0 - I - 0x01938A 06:937A: FF        .byte $FF   ; 
- D 0 - I - 0x01938B 06:937B: FF        .byte $FF   ; 
- D 0 - I - 0x01938C 06:937C: FF        .byte $FF   ; 
- D 0 - I - 0x01938D 06:937D: FF        .byte $FF   ; 
- D 0 - I - 0x01938E 06:937E: FF        .byte $FF   ; 
- D 0 - I - 0x01938F 06:937F: FF        .byte $FF   ; 
- D 0 - I - 0x019390 06:9380: FF        .byte $FF   ; 
- D 0 - I - 0x019391 06:9381: FF        .byte $FF   ; 
- D 0 - I - 0x019392 06:9382: FF        .byte $FF   ; 
- D 0 - I - 0x019393 06:9383: FF        .byte $FF   ; 
- D 0 - I - 0x019394 06:9384: FF        .byte $FF   ; 
- D 0 - I - 0x019395 06:9385: FF        .byte $FF   ; 
- D 0 - I - 0x019396 06:9386: FF        .byte $FF   ; 
- D 0 - I - 0x019397 06:9387: FF        .byte $FF   ; 
- D 0 - I - 0x019398 06:9388: FF        .byte $FF   ; 
- D 0 - I - 0x019399 06:9389: FF        .byte $FF   ; 
- D 0 - I - 0x01939A 06:938A: FF        .byte $FF   ; 
- D 0 - I - 0x01939B 06:938B: FF        .byte $FF   ; 
- D 0 - I - 0x01939C 06:938C: FF        .byte $FF   ; 
- D 0 - I - 0x01939D 06:938D: FF        .byte $FF   ; 
- D 0 - I - 0x01939E 06:938E: FF        .byte $FF   ; 
- D 0 - I - 0x01939F 06:938F: FF        .byte $FF   ; 
- D 0 - I - 0x0193A0 06:9390: FF        .byte $FF   ; 
- D 0 - I - 0x0193A1 06:9391: FF        .byte $FF   ; 
- D 0 - I - 0x0193A2 06:9392: FF        .byte $FF   ; 
- D 0 - I - 0x0193A3 06:9393: FF        .byte $FF   ; 
- D 0 - I - 0x0193A4 06:9394: FF        .byte $FF   ; 
- D 0 - I - 0x0193A5 06:9395: FF        .byte $FF   ; 
- D 0 - I - 0x0193A6 06:9396: FF        .byte $FF   ; 
- D 0 - I - 0x0193A7 06:9397: FF        .byte $FF   ; 
- D 0 - I - 0x0193A8 06:9398: FF        .byte $FF   ; 
- D 0 - I - 0x0193A9 06:9399: FF        .byte $FF   ; 
- D 0 - I - 0x0193AA 06:939A: FF        .byte $FF   ; 
- D 0 - I - 0x0193AB 06:939B: FF        .byte $FF   ; 
- D 0 - I - 0x0193AC 06:939C: FF        .byte $FF   ; 
- D 0 - I - 0x0193AD 06:939D: FF        .byte $FF   ; 
- D 0 - I - 0x0193AE 06:939E: FF        .byte $FF   ; 
- D 0 - I - 0x0193AF 06:939F: FF        .byte $FF   ; 
- D 0 - I - 0x0193B0 06:93A0: FF        .byte $FF   ; 
- D 0 - I - 0x0193B1 06:93A1: FF        .byte $FF   ; 
- D 0 - I - 0x0193B2 06:93A2: FF        .byte $FF   ; 
- D 0 - I - 0x0193B3 06:93A3: FF        .byte $FF   ; 
- D 0 - I - 0x0193B4 06:93A4: FF        .byte $FF   ; 
- D 0 - I - 0x0193B5 06:93A5: FF        .byte $FF   ; 
- D 0 - I - 0x0193B6 06:93A6: FF        .byte $FF   ; 
- D 0 - I - 0x0193B7 06:93A7: FF        .byte $FF   ; 
- D 0 - I - 0x0193B8 06:93A8: FF        .byte $FF   ; 
- D 0 - I - 0x0193B9 06:93A9: FF        .byte $FF   ; 
- D 0 - I - 0x0193BA 06:93AA: FF        .byte $FF   ; 
- D 0 - I - 0x0193BB 06:93AB: FF        .byte $FF   ; 
- D 0 - I - 0x0193BC 06:93AC: FF        .byte $FF   ; 
- D 0 - I - 0x0193BD 06:93AD: FF        .byte $FF   ; 
- D 0 - I - 0x0193BE 06:93AE: FF        .byte $FF   ; 
- D 0 - I - 0x0193BF 06:93AF: FF        .byte $FF   ; 
- D 0 - I - 0x0193C0 06:93B0: FF        .byte $FF   ; 
- D 0 - I - 0x0193C1 06:93B1: FF        .byte $FF   ; 
- D 0 - I - 0x0193C2 06:93B2: FF        .byte $FF   ; 
- D 0 - I - 0x0193C3 06:93B3: FF        .byte $FF   ; 
- D 0 - I - 0x0193C4 06:93B4: FF        .byte $FF   ; 
- D 0 - I - 0x0193C5 06:93B5: FF        .byte $FF   ; 
- D 0 - I - 0x0193C6 06:93B6: FF        .byte $FF   ; 
- D 0 - I - 0x0193C7 06:93B7: FF        .byte $FF   ; 
- D 0 - I - 0x0193C8 06:93B8: FF        .byte $FF   ; 
- D 0 - I - 0x0193C9 06:93B9: FF        .byte $FF   ; 
- D 0 - I - 0x0193CA 06:93BA: FF        .byte $FF   ; 
- D 0 - I - 0x0193CB 06:93BB: FF        .byte $FF   ; 
- D 0 - I - 0x0193CC 06:93BC: FF        .byte $FF   ; 
- D 0 - I - 0x0193CD 06:93BD: FF        .byte $FF   ; 
- D 0 - I - 0x0193CE 06:93BE: FF        .byte $FF   ; 
- D 0 - I - 0x0193CF 06:93BF: FF        .byte $FF   ; 
- D 0 - I - 0x0193D0 06:93C0: FF        .byte $FF   ; 
- D 0 - I - 0x0193D1 06:93C1: FF        .byte $FF   ; 
- D 0 - I - 0x0193D2 06:93C2: FF        .byte $FF   ; 
- D 0 - I - 0x0193D3 06:93C3: FF        .byte $FF   ; 
- D 0 - I - 0x0193D4 06:93C4: FF        .byte $FF   ; 
- D 0 - I - 0x0193D5 06:93C5: FF        .byte $FF   ; 
- D 0 - I - 0x0193D6 06:93C6: FF        .byte $FF   ; 
- D 0 - I - 0x0193D7 06:93C7: FF        .byte $FF   ; 
- D 0 - I - 0x0193D8 06:93C8: FF        .byte $FF   ; 
- D 0 - I - 0x0193D9 06:93C9: FF        .byte $FF   ; 
- D 0 - I - 0x0193DA 06:93CA: FF        .byte $FF   ; 
- D 0 - I - 0x0193DB 06:93CB: FF        .byte $FF   ; 
- D 0 - I - 0x0193DC 06:93CC: FF        .byte $FF   ; 
- D 0 - I - 0x0193DD 06:93CD: FF        .byte $FF   ; 
- D 0 - I - 0x0193DE 06:93CE: FF        .byte $FF   ; 
- D 0 - I - 0x0193DF 06:93CF: FF        .byte $FF   ; 
- D 0 - I - 0x0193E0 06:93D0: FF        .byte $FF   ; 
- D 0 - I - 0x0193E1 06:93D1: FF        .byte $FF   ; 
- D 0 - I - 0x0193E2 06:93D2: FF        .byte $FF   ; 
- D 0 - I - 0x0193E3 06:93D3: FF        .byte $FF   ; 
- D 0 - I - 0x0193E4 06:93D4: FF        .byte $FF   ; 
- D 0 - I - 0x0193E5 06:93D5: FF        .byte $FF   ; 
- D 0 - I - 0x0193E6 06:93D6: FF        .byte $FF   ; 
- D 0 - I - 0x0193E7 06:93D7: FF        .byte $FF   ; 
- D 0 - I - 0x0193E8 06:93D8: FF        .byte $FF   ; 
- D 0 - I - 0x0193E9 06:93D9: FF        .byte $FF   ; 
- D 0 - I - 0x0193EA 06:93DA: FF        .byte $FF   ; 
- D 0 - I - 0x0193EB 06:93DB: FF        .byte $FF   ; 
- D 0 - I - 0x0193EC 06:93DC: 0F        .byte $0F   ; 
- D 0 - I - 0x0193ED 06:93DD: 06        .byte $06   ; 
- D 0 - I - 0x0193EE 06:93DE: 17        .byte $17   ; 
- D 0 - I - 0x0193EF 06:93DF: 16        .byte $16   ; 
- D 0 - I - 0x0193F0 06:93E0: 0F        .byte $0F   ; 
- D 0 - I - 0x0193F1 06:93E1: 06        .byte $06   ; 
- D 0 - I - 0x0193F2 06:93E2: 17        .byte $17   ; 
- D 0 - I - 0x0193F3 06:93E3: 16        .byte $16   ; 
- D 0 - I - 0x0193F4 06:93E4: 0F        .byte $0F   ; 
- D 0 - I - 0x0193F5 06:93E5: 07        .byte $07   ; 
- D 0 - I - 0x0193F6 06:93E6: 06        .byte $06   ; 
- D 0 - I - 0x0193F7 06:93E7: 16        .byte $16   ; 
- D 0 - I - 0x0193F8 06:93E8: 0F        .byte $0F   ; 
- D 0 - I - 0x0193F9 06:93E9: 07        .byte $07   ; 
- D 0 - I - 0x0193FA 06:93EA: 06        .byte $06   ; 
- D 0 - I - 0x0193FB 06:93EB: 16        .byte $16   ; 
- D 0 - I - 0x0193FC 06:93EC: 0F        .byte $0F   ; 
- D 0 - I - 0x0193FD 06:93ED: 0F        .byte $0F   ; 
- D 0 - I - 0x0193FE 06:93EE: 07        .byte $07   ; 
- D 0 - I - 0x0193FF 06:93EF: 06        .byte $06   ; 
- D 0 - I - 0x019400 06:93F0: 0F        .byte $0F   ; 
- D 0 - I - 0x019401 06:93F1: 0F        .byte $0F   ; 
- D 0 - I - 0x019402 06:93F2: 07        .byte $07   ; 
- D 0 - I - 0x019403 06:93F3: 06        .byte $06   ; 
- D 0 - I - 0x019404 06:93F4: 0F        .byte $0F   ; 
- D 0 - I - 0x019405 06:93F5: 0F        .byte $0F   ; 
- D 0 - I - 0x019406 06:93F6: 0F        .byte $0F   ; 
- D 0 - I - 0x019407 06:93F7: 0F        .byte $0F   ; 
- D 0 - I - 0x019408 06:93F8: 0F        .byte $0F   ; 
- D 0 - I - 0x019409 06:93F9: 0F        .byte $0F   ; 
- D 0 - I - 0x01940A 06:93FA: 0F        .byte $0F   ; 
- D 0 - I - 0x01940B 06:93FB: 0F        .byte $0F   ; 



_off010_93FC_01:
- D 0 - I - 0x01940C 06:93FC: 3F        .byte $3F   ; 
- D 0 - I - 0x01940D 06:93FD: 00        .byte $00   ; 
- D 0 - I - 0x01940E 06:93FE: 20        .byte $20   ; 
- D 0 - I - 0x01940F 06:93FF: 0F        .byte $0F   ; 
- D 0 - I - 0x019410 06:9400: 30        .byte $30   ; 
- D 0 - I - 0x019411 06:9401: 00        .byte $00   ; 
- D 0 - I - 0x019412 06:9402: 12        .byte $12   ; 
- D 0 - I - 0x019413 06:9403: 0F        .byte $0F   ; 
- D 0 - I - 0x019414 06:9404: 16        .byte $16   ; 
- D 0 - I - 0x019415 06:9405: 27        .byte $27   ; 
- D 0 - I - 0x019416 06:9406: 36        .byte $36   ; 
- D 0 - I - 0x019417 06:9407: 0F        .byte $0F   ; 
- D 0 - I - 0x019418 06:9408: 0C        .byte $0C   ; 
- D 0 - I - 0x019419 06:9409: 1C        .byte $1C   ; 
- D 0 - I - 0x01941A 06:940A: 2C        .byte $2C   ; 
- D 0 - I - 0x01941B 06:940B: 0F        .byte $0F   ; 
- D 0 - I - 0x01941C 06:940C: 12        .byte $12   ; 
- D 0 - I - 0x01941D 06:940D: 1C        .byte $1C   ; 
- D 0 - I - 0x01941E 06:940E: 2C        .byte $2C   ; 
- D 0 - I - 0x01941F 06:940F: 0F        .byte $0F   ; 
- D 0 - I - 0x019420 06:9410: 29        .byte $29   ; 
- D 0 - I - 0x019421 06:9411: 27        .byte $27   ; 
- D 0 - I - 0x019422 06:9412: 17        .byte $17   ; 
- D 0 - I - 0x019423 06:9413: 0F        .byte $0F   ; 
- D 0 - I - 0x019424 06:9414: 02        .byte $02   ; 
- D 0 - I - 0x019425 06:9415: 22        .byte $22   ; 
- D 0 - I - 0x019426 06:9416: 30        .byte $30   ; 
- D 0 - I - 0x019427 06:9417: 0F        .byte $0F   ; 
- D 0 - I - 0x019428 06:9418: 16        .byte $16   ; 
- D 0 - I - 0x019429 06:9419: 27        .byte $27   ; 
- D 0 - I - 0x01942A 06:941A: 30        .byte $30   ; 
- D 0 - I - 0x01942B 06:941B: 0F        .byte $0F   ; 
- D 0 - I - 0x01942C 06:941C: 0C        .byte $0C   ; 
- D 0 - I - 0x01942D 06:941D: 1C        .byte $1C   ; 
- D 0 - I - 0x01942E 06:941E: 2C        .byte $2C   ; 
- D 0 - I - 0x01942F 06:941F: FF        .byte $FF   ; 
- D 0 - I - 0x019430 06:9420: 03        .byte $03   ; 
- D 0 - I - 0x019431 06:9421: 05        .byte $05   ; 
- D 0 - I - 0x019432 06:9422: 06        .byte $06   ; 
- D 0 - I - 0x019433 06:9423: 08        .byte $08   ; 
- D 0 - I - 0x019434 06:9424: DD        .byte $DD   ; 
- D 0 - I - 0x019435 06:9425: C9        .byte $C9   ; 
- D 0 - I - 0x019436 06:9426: AC        .byte $AC   ; 
- D 0 - I - 0x019437 06:9427: 89        .byte $89   ; 
- D 0 - I - 0x019438 06:9428: 87        .byte $87   ; 
- D 0 - I - 0x019439 06:9429: 04        .byte $04   ; 
- D 0 - I - 0x01943A 06:942A: 00        .byte $00   ; 
- D 0 - I - 0x01943B 06:942B: 73        .byte $73   ; 
- D 0 - I - 0x01943C 06:942C: 36        .byte $36   ; 
- D 0 - I - 0x01943D 06:942D: FF        .byte $FF   ; 
- D 0 - I - 0x01943E 06:942E: 06        .byte $06   ; 
- D 0 - I - 0x01943F 06:942F: 01        .byte $01   ; 
- D 0 - I - 0x019440 06:9430: 7F        .byte $7F   ; 
- D 0 - I - 0x019441 06:9431: FF        .byte $FF   ; 
- D 0 - I - 0x019442 06:9432: FF        .byte $FF   ; 
- D 0 - I - 0x019443 06:9433: FF        .byte $FF   ; 
- D 0 - I - 0x019444 06:9434: FF        .byte $FF   ; 
- D 0 - I - 0x019445 06:9435: FF        .byte $FF   ; 
- D 0 - I - 0x019446 06:9436: FF        .byte $FF   ; 
- D 0 - I - 0x019447 06:9437: FF        .byte $FF   ; 
- D 0 - I - 0x019448 06:9438: FF        .byte $FF   ; 
- D 0 - I - 0x019449 06:9439: FF        .byte $FF   ; 
- D 0 - I - 0x01944A 06:943A: 35        .byte $35   ; 
- D 0 - I - 0x01944B 06:943B: 00        .byte $00   ; 
- D 0 - I - 0x01944C 06:943C: 00        .byte $00   ; 
- D 0 - I - 0x01944D 06:943D: 00        .byte $00   ; 
- D 0 - I - 0x01944E 06:943E: 00        .byte $00   ; 
- D 0 - I - 0x01944F 06:943F: 00        .byte $00   ; 
- D 0 - I - 0x019450 06:9440: 08        .byte $08   ; 
- D 0 - I - 0x019451 06:9441: 2D        .byte $2D   ; 
- D 0 - I - 0x019452 06:9442: 3F        .byte $3F   ; 
- D 0 - I - 0x019453 06:9443: 0D        .byte $0D   ; 
- D 0 - I - 0x019454 06:9444: 18        .byte $18   ; 
- D 0 - I - 0x019455 06:9445: 10        .byte $10   ; 
- D 0 - I - 0x019456 06:9446: 00        .byte $00   ; 
- D 0 - I - 0x019457 06:9447: 00        .byte $00   ; 
- D 0 - I - 0x019458 06:9448: 00        .byte $00   ; 
- D 0 - I - 0x019459 06:9449: 00        .byte $00   ; 
- D 0 - I - 0x01945A 06:944A: 00        .byte $00   ; 
- D 0 - I - 0x01945B 06:944B: 20        .byte $20   ; 
- D 0 - I - 0x01945C 06:944C: 84        .byte $84   ; 
- D 0 - I - 0x01945D 06:944D: 05        .byte $05   ; 
- D 0 - I - 0x01945E 06:944E: 67        .byte $67   ; 
- D 0 - I - 0x01945F 06:944F: FF        .byte $FF   ; 
- D 0 - I - 0x019460 06:9450: 24        .byte $24   ; 
- D 0 - I - 0x019461 06:9451: FB        .byte $FB   ; 
- D 0 - I - 0x019462 06:9452: FB        .byte $FB   ; 
- D 0 - I - 0x019463 06:9453: 20        .byte $20   ; 
- D 0 - I - 0x019464 06:9454: A3        .byte $A3   ; 
- D 0 - I - 0x019465 06:9455: 05        .byte $05   ; 
- D 0 - I - 0x019466 06:9456: 67        .byte $67   ; 
- D 0 - I - 0x019467 06:9457: FF        .byte $FF   ; 
- D 0 - I - 0x019468 06:9458: FF        .byte $FF   ; 
- D 0 - I - 0x019469 06:9459: FF        .byte $FF   ; 
- D 0 - I - 0x01946A 06:945A: 67        .byte $67   ; 
- D 0 - I - 0x01946B 06:945B: 20        .byte $20   ; 
- D 0 - I - 0x01946C 06:945C: C4        .byte $C4   ; 
- D 0 - I - 0x01946D 06:945D: 03        .byte $03   ; 
- D 0 - I - 0x01946E 06:945E: FB        .byte $FB   ; 
- D 0 - I - 0x01946F 06:945F: FF        .byte $FF   ; 
- D 0 - I - 0x019470 06:9460: FB        .byte $FB   ; 
- D 0 - I - 0x019471 06:9461: FF        .byte $FF   ; 
- D 0 - I - 0x019472 06:9462: FF        .byte $FF   ; 
- D 0 - I - 0x019473 06:9463: FF        .byte $FF   ; 
- D 0 - I - 0x019474 06:9464: FF        .byte $FF   ; 
- D 0 - I - 0x019475 06:9465: FF        .byte $FF   ; 
- D 0 - I - 0x019476 06:9466: FF        .byte $FF   ; 
- D 0 - I - 0x019477 06:9467: FF        .byte $FF   ; 
- D 0 - I - 0x019478 06:9468: FF        .byte $FF   ; 
- D 0 - I - 0x019479 06:9469: FF        .byte $FF   ; 
- D 0 - I - 0x01947A 06:946A: FF        .byte $FF   ; 
- D 0 - I - 0x01947B 06:946B: FF        .byte $FF   ; 
- D 0 - I - 0x01947C 06:946C: FF        .byte $FF   ; 
- D 0 - I - 0x01947D 06:946D: FF        .byte $FF   ; 
- D 0 - I - 0x01947E 06:946E: FF        .byte $FF   ; 
- D 0 - I - 0x01947F 06:946F: FF        .byte $FF   ; 
- D 0 - I - 0x019480 06:9470: FF        .byte $FF   ; 
- D 0 - I - 0x019481 06:9471: FF        .byte $FF   ; 
- D 0 - I - 0x019482 06:9472: FF        .byte $FF   ; 
- D 0 - I - 0x019483 06:9473: FF        .byte $FF   ; 
- D 0 - I - 0x019484 06:9474: FF        .byte $FF   ; 
- D 0 - I - 0x019485 06:9475: FF        .byte $FF   ; 
- D 0 - I - 0x019486 06:9476: FF        .byte $FF   ; 
- D 0 - I - 0x019487 06:9477: FF        .byte $FF   ; 
- D 0 - I - 0x019488 06:9478: 0F        .byte $0F   ; 
- D 0 - I - 0x019489 06:9479: 0C        .byte $0C   ; 
- D 0 - I - 0x01948A 06:947A: 1C        .byte $1C   ; 
- D 0 - I - 0x01948B 06:947B: 2C        .byte $2C   ; 
- D 0 - I - 0x01948C 06:947C: 0F        .byte $0F   ; 
- D 0 - I - 0x01948D 06:947D: 12        .byte $12   ; 
- D 0 - I - 0x01948E 06:947E: 1C        .byte $1C   ; 
- D 0 - I - 0x01948F 06:947F: 2C        .byte $2C   ; 
- D 0 - I - 0x019490 06:9480: 0F        .byte $0F   ; 
- D 0 - I - 0x019491 06:9481: 0C        .byte $0C   ; 
- D 0 - I - 0x019492 06:9482: 0C        .byte $0C   ; 
- D 0 - I - 0x019493 06:9483: 1C        .byte $1C   ; 
- D 0 - I - 0x019494 06:9484: 0F        .byte $0F   ; 
- D 0 - I - 0x019495 06:9485: 11        .byte $11   ; 
- D 0 - I - 0x019496 06:9486: 0C        .byte $0C   ; 
- D 0 - I - 0x019497 06:9487: 1C        .byte $1C   ; 
- D 0 - I - 0x019498 06:9488: 0F        .byte $0F   ; 
- D 0 - I - 0x019499 06:9489: 0F        .byte $0F   ; 
- D 0 - I - 0x01949A 06:948A: 0C        .byte $0C   ; 
- D 0 - I - 0x01949B 06:948B: 0C        .byte $0C   ; 
- D 0 - I - 0x01949C 06:948C: 0F        .byte $0F   ; 
- D 0 - I - 0x01949D 06:948D: 02        .byte $02   ; 
- D 0 - I - 0x01949E 06:948E: 0C        .byte $0C   ; 
- D 0 - I - 0x01949F 06:948F: 0C        .byte $0C   ; 
- D 0 - I - 0x0194A0 06:9490: 0F        .byte $0F   ; 
- D 0 - I - 0x0194A1 06:9491: 0F        .byte $0F   ; 
- D 0 - I - 0x0194A2 06:9492: 0F        .byte $0F   ; 
- D 0 - I - 0x0194A3 06:9493: 0F        .byte $0F   ; 
- D 0 - I - 0x0194A4 06:9494: 0F        .byte $0F   ; 
- D 0 - I - 0x0194A5 06:9495: 0F        .byte $0F   ; 
- D 0 - I - 0x0194A6 06:9496: 0F        .byte $0F   ; 
- D 0 - I - 0x0194A7 06:9497: 0F        .byte $0F   ; 
- D 0 - I - 0x0194A8 06:9498: 0F        .byte $0F   ; 
- D 0 - I - 0x0194A9 06:9499: 00        .byte $00   ; 
- D 0 - I - 0x0194AA 06:949A: 10        .byte $10   ; 
- D 0 - I - 0x0194AB 06:949B: 30        .byte $30   ; 
- D 0 - I - 0x0194AC 06:949C: 0F        .byte $0F   ; 
- D 0 - I - 0x0194AD 06:949D: 00        .byte $00   ; 
- D 0 - I - 0x0194AE 06:949E: 10        .byte $10   ; 
- D 0 - I - 0x0194AF 06:949F: 30        .byte $30   ; 
- D 0 - I - 0x0194B0 06:94A0: 0F        .byte $0F   ; 
- D 0 - I - 0x0194B1 06:94A1: 00        .byte $00   ; 
- D 0 - I - 0x0194B2 06:94A2: 00        .byte $00   ; 
- D 0 - I - 0x0194B3 06:94A3: 10        .byte $10   ; 
- D 0 - I - 0x0194B4 06:94A4: 0F        .byte $0F   ; 
- D 0 - I - 0x0194B5 06:94A5: 00        .byte $00   ; 
- D 0 - I - 0x0194B6 06:94A6: 00        .byte $00   ; 
- D 0 - I - 0x0194B7 06:94A7: 10        .byte $10   ; 
- D 0 - I - 0x0194B8 06:94A8: 0F        .byte $0F   ; 
- D 0 - I - 0x0194B9 06:94A9: 0F        .byte $0F   ; 
- D 0 - I - 0x0194BA 06:94AA: 00        .byte $00   ; 
- D 0 - I - 0x0194BB 06:94AB: 00        .byte $00   ; 
- D 0 - I - 0x0194BC 06:94AC: 0F        .byte $0F   ; 
- D 0 - I - 0x0194BD 06:94AD: 0F        .byte $0F   ; 
- D 0 - I - 0x0194BE 06:94AE: 00        .byte $00   ; 
- D 0 - I - 0x0194BF 06:94AF: 00        .byte $00   ; 
- D 0 - I - 0x0194C0 06:94B0: 0F        .byte $0F   ; 
- D 0 - I - 0x0194C1 06:94B1: 0F        .byte $0F   ; 
- D 0 - I - 0x0194C2 06:94B2: 0F        .byte $0F   ; 
- D 0 - I - 0x0194C3 06:94B3: 0F        .byte $0F   ; 
- D 0 - I - 0x0194C4 06:94B4: 0F        .byte $0F   ; 
- D 0 - I - 0x0194C5 06:94B5: 0F        .byte $0F   ; 
- D 0 - I - 0x0194C6 06:94B6: 0F        .byte $0F   ; 
- D 0 - I - 0x0194C7 06:94B7: 0F        .byte $0F   ; 
- D 0 - I - 0x0194C8 06:94B8: 0F        .byte $0F   ; 
- D 0 - I - 0x0194C9 06:94B9: 0C        .byte $0C   ; 
- D 0 - I - 0x0194CA 06:94BA: 1C        .byte $1C   ; 
- D 0 - I - 0x0194CB 06:94BB: 2C        .byte $2C   ; 
- D 0 - I - 0x0194CC 06:94BC: 0F        .byte $0F   ; 
- D 0 - I - 0x0194CD 06:94BD: 12        .byte $12   ; 
- D 0 - I - 0x0194CE 06:94BE: 1C        .byte $1C   ; 
- D 0 - I - 0x0194CF 06:94BF: 2C        .byte $2C   ; 
- D 0 - I - 0x0194D0 06:94C0: 0F        .byte $0F   ; 
- D 0 - I - 0x0194D1 06:94C1: 0C        .byte $0C   ; 
- D 0 - I - 0x0194D2 06:94C2: 0C        .byte $0C   ; 
- D 0 - I - 0x0194D3 06:94C3: 1C        .byte $1C   ; 
- D 0 - I - 0x0194D4 06:94C4: 0F        .byte $0F   ; 
- D 0 - I - 0x0194D5 06:94C5: 11        .byte $11   ; 
- D 0 - I - 0x0194D6 06:94C6: 0C        .byte $0C   ; 
- D 0 - I - 0x0194D7 06:94C7: 1C        .byte $1C   ; 
- D 0 - I - 0x0194D8 06:94C8: 0F        .byte $0F   ; 
- D 0 - I - 0x0194D9 06:94C9: 0F        .byte $0F   ; 
- D 0 - I - 0x0194DA 06:94CA: 0C        .byte $0C   ; 
- D 0 - I - 0x0194DB 06:94CB: 0C        .byte $0C   ; 
- D 0 - I - 0x0194DC 06:94CC: 0F        .byte $0F   ; 
- D 0 - I - 0x0194DD 06:94CD: 02        .byte $02   ; 
- D 0 - I - 0x0194DE 06:94CE: 0C        .byte $0C   ; 
- D 0 - I - 0x0194DF 06:94CF: 0C        .byte $0C   ; 
- D 0 - I - 0x0194E0 06:94D0: 0F        .byte $0F   ; 
- D 0 - I - 0x0194E1 06:94D1: 0F        .byte $0F   ; 
- D 0 - I - 0x0194E2 06:94D2: 0F        .byte $0F   ; 
- D 0 - I - 0x0194E3 06:94D3: 0C        .byte $0C   ; 
- D 0 - I - 0x0194E4 06:94D4: 0F        .byte $0F   ; 
- D 0 - I - 0x0194E5 06:94D5: 0F        .byte $0F   ; 
- D 0 - I - 0x0194E6 06:94D6: 0F        .byte $0F   ; 
- D 0 - I - 0x0194E7 06:94D7: 0F        .byte $0F   ; 
- D 0 - I - 0x0194E8 06:94D8: 0F        .byte $0F   ; 
- D 0 - I - 0x0194E9 06:94D9: 06        .byte $06   ; 
- D 0 - I - 0x0194EA 06:94DA: 17        .byte $17   ; 
- D 0 - I - 0x0194EB 06:94DB: 16        .byte $16   ; 
- D 0 - I - 0x0194EC 06:94DC: 0F        .byte $0F   ; 
- D 0 - I - 0x0194ED 06:94DD: 06        .byte $06   ; 
- D 0 - I - 0x0194EE 06:94DE: 17        .byte $17   ; 
- D 0 - I - 0x0194EF 06:94DF: 16        .byte $16   ; 
- D 0 - I - 0x0194F0 06:94E0: 0F        .byte $0F   ; 
- D 0 - I - 0x0194F1 06:94E1: 07        .byte $07   ; 
- D 0 - I - 0x0194F2 06:94E2: 06        .byte $06   ; 
- D 0 - I - 0x0194F3 06:94E3: 16        .byte $16   ; 
- D 0 - I - 0x0194F4 06:94E4: 0F        .byte $0F   ; 
- D 0 - I - 0x0194F5 06:94E5: 07        .byte $07   ; 
- D 0 - I - 0x0194F6 06:94E6: 06        .byte $06   ; 
- D 0 - I - 0x0194F7 06:94E7: 16        .byte $16   ; 
- D 0 - I - 0x0194F8 06:94E8: 0F        .byte $0F   ; 
- D 0 - I - 0x0194F9 06:94E9: 0F        .byte $0F   ; 
- D 0 - I - 0x0194FA 06:94EA: 07        .byte $07   ; 
- D 0 - I - 0x0194FB 06:94EB: 06        .byte $06   ; 
- D 0 - I - 0x0194FC 06:94EC: 0F        .byte $0F   ; 
- D 0 - I - 0x0194FD 06:94ED: 0F        .byte $0F   ; 
- D 0 - I - 0x0194FE 06:94EE: 07        .byte $07   ; 
- D 0 - I - 0x0194FF 06:94EF: 06        .byte $06   ; 
- D 0 - I - 0x019500 06:94F0: 0F        .byte $0F   ; 
- D 0 - I - 0x019501 06:94F1: 0F        .byte $0F   ; 
- D 0 - I - 0x019502 06:94F2: 0F        .byte $0F   ; 
- D 0 - I - 0x019503 06:94F3: 0F        .byte $0F   ; 
- D 0 - I - 0x019504 06:94F4: 0F        .byte $0F   ; 
- D 0 - I - 0x019505 06:94F5: 0F        .byte $0F   ; 
- D 0 - I - 0x019506 06:94F6: 0F        .byte $0F   ; 
- D 0 - I - 0x019507 06:94F7: 0F        .byte $0F   ; 



_off010_94F8_02:
- D 0 - I - 0x019508 06:94F8: 3F        .byte $3F   ; 
- D 0 - I - 0x019509 06:94F9: 00        .byte $00   ; 
- D 0 - I - 0x01950A 06:94FA: 20        .byte $20   ; 
- D 0 - I - 0x01950B 06:94FB: 0F        .byte $0F   ; 
- D 0 - I - 0x01950C 06:94FC: 30        .byte $30   ; 
- D 0 - I - 0x01950D 06:94FD: 00        .byte $00   ; 
- D 0 - I - 0x01950E 06:94FE: 12        .byte $12   ; 
- D 0 - I - 0x01950F 06:94FF: 0F        .byte $0F   ; 
- D 0 - I - 0x019510 06:9500: 16        .byte $16   ; 
- D 0 - I - 0x019511 06:9501: 27        .byte $27   ; 
- D 0 - I - 0x019512 06:9502: 36        .byte $36   ; 
- D 0 - I - 0x019513 06:9503: 0F        .byte $0F   ; 
- D 0 - I - 0x019514 06:9504: 02        .byte $02   ; 
- D 0 - I - 0x019515 06:9505: 12        .byte $12   ; 
- D 0 - I - 0x019516 06:9506: 22        .byte $22   ; 
- D 0 - I - 0x019517 06:9507: 0F        .byte $0F   ; 
- D 0 - I - 0x019518 06:9508: 16        .byte $16   ; 
- D 0 - I - 0x019519 06:9509: 12        .byte $12   ; 
- D 0 - I - 0x01951A 06:950A: 22        .byte $22   ; 
- D 0 - I - 0x01951B 06:950B: 0F        .byte $0F   ; 
- D 0 - I - 0x01951C 06:950C: 29        .byte $29   ; 
- D 0 - I - 0x01951D 06:950D: 27        .byte $27   ; 
- D 0 - I - 0x01951E 06:950E: 17        .byte $17   ; 
- D 0 - I - 0x01951F 06:950F: 0F        .byte $0F   ; 
- D 0 - I - 0x019520 06:9510: 02        .byte $02   ; 
- D 0 - I - 0x019521 06:9511: 22        .byte $22   ; 
- D 0 - I - 0x019522 06:9512: 30        .byte $30   ; 
- D 0 - I - 0x019523 06:9513: 0F        .byte $0F   ; 
- D 0 - I - 0x019524 06:9514: 16        .byte $16   ; 
- D 0 - I - 0x019525 06:9515: 27        .byte $27   ; 
- D 0 - I - 0x019526 06:9516: 30        .byte $30   ; 
- D 0 - I - 0x019527 06:9517: 0F        .byte $0F   ; 
- D 0 - I - 0x019528 06:9518: 02        .byte $02   ; 
- D 0 - I - 0x019529 06:9519: 12        .byte $12   ; 
- D 0 - I - 0x01952A 06:951A: 22        .byte $22   ; 
- D 0 - I - 0x01952B 06:951B: FF        .byte $FF   ; 
- D 0 - I - 0x01952C 06:951C: 03        .byte $03   ; 
- D 0 - I - 0x01952D 06:951D: 05        .byte $05   ; 
- D 0 - I - 0x01952E 06:951E: 06        .byte $06   ; 
- D 0 - I - 0x01952F 06:951F: 08        .byte $08   ; 
- D 0 - I - 0x019530 06:9520: DD        .byte $DD   ; 
- D 0 - I - 0x019531 06:9521: 89        .byte $89   ; 
- D 0 - I - 0x019532 06:9522: D6        .byte $D6   ; 
- D 0 - I - 0x019533 06:9523: 26        .byte $26   ; 
- D 0 - I - 0x019534 06:9524: 2C        .byte $2C   ; 
- D 0 - I - 0x019535 06:9525: 0A        .byte $0A   ; 
- D 0 - I - 0x019536 06:9526: B0        .byte $B0   ; 
- D 0 - I - 0x019537 06:9527: 7D        .byte $7D   ; 
- D 0 - I - 0x019538 06:9528: 0D        .byte $0D   ; 
- D 0 - I - 0x019539 06:9529: FF        .byte $FF   ; 
- D 0 - I - 0x01953A 06:952A: 06        .byte $06   ; 
- D 0 - I - 0x01953B 06:952B: 02        .byte $02   ; 
- D 0 - I - 0x01953C 06:952C: FF        .byte $FF   ; 
- D 0 - I - 0x01953D 06:952D: FF        .byte $FF   ; 
- D 0 - I - 0x01953E 06:952E: FF        .byte $FF   ; 
- D 0 - I - 0x01953F 06:952F: FF        .byte $FF   ; 
- D 0 - I - 0x019540 06:9530: FF        .byte $FF   ; 
- D 0 - I - 0x019541 06:9531: FF        .byte $FF   ; 
- D 0 - I - 0x019542 06:9532: FF        .byte $FF   ; 
- D 0 - I - 0x019543 06:9533: FF        .byte $FF   ; 
- D 0 - I - 0x019544 06:9534: FF        .byte $FF   ; 
- D 0 - I - 0x019545 06:9535: FF        .byte $FF   ; 
- D 0 - I - 0x019546 06:9536: 0E        .byte $0E   ; 
- D 0 - I - 0x019547 06:9537: 00        .byte $00   ; 
- D 0 - I - 0x019548 06:9538: 00        .byte $00   ; 
- D 0 - I - 0x019549 06:9539: 00        .byte $00   ; 
- D 0 - I - 0x01954A 06:953A: 00        .byte $00   ; 
- D 0 - I - 0x01954B 06:953B: 00        .byte $00   ; 
- D 0 - I - 0x01954C 06:953C: 00        .byte $00   ; 
- D 0 - I - 0x01954D 06:953D: 02        .byte $02   ; 
- D 0 - I - 0x01954E 06:953E: 83        .byte $83   ; 
- D 0 - I - 0x01954F 06:953F: FF        .byte $FF   ; 
- D 0 - I - 0x019550 06:9540: 7E        .byte $7E   ; 
- D 0 - I - 0x019551 06:9541: 00        .byte $00   ; 
- D 0 - I - 0x019552 06:9542: 00        .byte $00   ; 
- D 0 - I - 0x019553 06:9543: 00        .byte $00   ; 
- D 0 - I - 0x019554 06:9544: 00        .byte $00   ; 
- D 0 - I - 0x019555 06:9545: 00        .byte $00   ; 
- D 0 - I - 0x019556 06:9546: 00        .byte $00   ; 
- D 0 - I - 0x019557 06:9547: 20        .byte $20   ; 
- D 0 - I - 0x019558 06:9548: 65        .byte $65   ; 
- D 0 - I - 0x019559 06:9549: 03        .byte $03   ; 
- D 0 - I - 0x01955A 06:954A: 67        .byte $67   ; 
- D 0 - I - 0x01955B 06:954B: FF        .byte $FF   ; 
- D 0 - I - 0x01955C 06:954C: FB        .byte $FB   ; 
- D 0 - I - 0x01955D 06:954D: 20        .byte $20   ; 
- D 0 - I - 0x01955E 06:954E: 86        .byte $86   ; 
- D 0 - I - 0x01955F 06:954F: 02        .byte $02   ; 
- D 0 - I - 0x019560 06:9550: FF        .byte $FF   ; 
- D 0 - I - 0x019561 06:9551: FF        .byte $FF   ; 
- D 0 - I - 0x019562 06:9552: 20        .byte $20   ; 
- D 0 - I - 0x019563 06:9553: A6        .byte $A6   ; 
- D 0 - I - 0x019564 06:9554: 02        .byte $02   ; 
- D 0 - I - 0x019565 06:9555: FF        .byte $FF   ; 
- D 0 - I - 0x019566 06:9556: FF        .byte $FF   ; 
- D 0 - I - 0x019567 06:9557: 20        .byte $20   ; 
- D 0 - I - 0x019568 06:9558: C4        .byte $C4   ; 
- D 0 - I - 0x019569 06:9559: 04        .byte $04   ; 
- D 0 - I - 0x01956A 06:955A: 67        .byte $67   ; 
- D 0 - I - 0x01956B 06:955B: FF        .byte $FF   ; 
- D 0 - I - 0x01956C 06:955C: FF        .byte $FF   ; 
- D 0 - I - 0x01956D 06:955D: 67        .byte $67   ; 
- D 0 - I - 0x01956E 06:955E: FF        .byte $FF   ; 
- D 0 - I - 0x01956F 06:955F: FF        .byte $FF   ; 
- D 0 - I - 0x019570 06:9560: FF        .byte $FF   ; 
- D 0 - I - 0x019571 06:9561: FF        .byte $FF   ; 
- D 0 - I - 0x019572 06:9562: FF        .byte $FF   ; 
- D 0 - I - 0x019573 06:9563: FF        .byte $FF   ; 
- D 0 - I - 0x019574 06:9564: FF        .byte $FF   ; 
- D 0 - I - 0x019575 06:9565: FF        .byte $FF   ; 
- D 0 - I - 0x019576 06:9566: FF        .byte $FF   ; 
- D 0 - I - 0x019577 06:9567: FF        .byte $FF   ; 
- D 0 - I - 0x019578 06:9568: FF        .byte $FF   ; 
- D 0 - I - 0x019579 06:9569: FF        .byte $FF   ; 
- D 0 - I - 0x01957A 06:956A: FF        .byte $FF   ; 
- D 0 - I - 0x01957B 06:956B: FF        .byte $FF   ; 
- D 0 - I - 0x01957C 06:956C: FF        .byte $FF   ; 
- D 0 - I - 0x01957D 06:956D: FF        .byte $FF   ; 
- D 0 - I - 0x01957E 06:956E: FF        .byte $FF   ; 
- D 0 - I - 0x01957F 06:956F: FF        .byte $FF   ; 
- D 0 - I - 0x019580 06:9570: FF        .byte $FF   ; 
- D 0 - I - 0x019581 06:9571: FF        .byte $FF   ; 
- D 0 - I - 0x019582 06:9572: FF        .byte $FF   ; 
- D 0 - I - 0x019583 06:9573: FF        .byte $FF   ; 
- D 0 - I - 0x019584 06:9574: 0F        .byte $0F   ; 
- D 0 - I - 0x019585 06:9575: 02        .byte $02   ; 
- D 0 - I - 0x019586 06:9576: 12        .byte $12   ; 
- D 0 - I - 0x019587 06:9577: 22        .byte $22   ; 
- D 0 - I - 0x019588 06:9578: 0F        .byte $0F   ; 
- D 0 - I - 0x019589 06:9579: 16        .byte $16   ; 
- D 0 - I - 0x01958A 06:957A: 12        .byte $12   ; 
- D 0 - I - 0x01958B 06:957B: 22        .byte $22   ; 
- D 0 - I - 0x01958C 06:957C: 0F        .byte $0F   ; 
- D 0 - I - 0x01958D 06:957D: 01        .byte $01   ; 
- D 0 - I - 0x01958E 06:957E: 02        .byte $02   ; 
- D 0 - I - 0x01958F 06:957F: 12        .byte $12   ; 
- D 0 - I - 0x019590 06:9580: 0F        .byte $0F   ; 
- D 0 - I - 0x019591 06:9581: 17        .byte $17   ; 
- D 0 - I - 0x019592 06:9582: 02        .byte $02   ; 
- D 0 - I - 0x019593 06:9583: 12        .byte $12   ; 
- D 0 - I - 0x019594 06:9584: 0F        .byte $0F   ; 
- D 0 - I - 0x019595 06:9585: 0F        .byte $0F   ; 
- D 0 - I - 0x019596 06:9586: 01        .byte $01   ; 
- D 0 - I - 0x019597 06:9587: 02        .byte $02   ; 
- D 0 - I - 0x019598 06:9588: 0F        .byte $0F   ; 
- D 0 - I - 0x019599 06:9589: 06        .byte $06   ; 
- D 0 - I - 0x01959A 06:958A: 01        .byte $01   ; 
- D 0 - I - 0x01959B 06:958B: 02        .byte $02   ; 
- D 0 - I - 0x01959C 06:958C: 0F        .byte $0F   ; 
- D 0 - I - 0x01959D 06:958D: 0F        .byte $0F   ; 
- D 0 - I - 0x01959E 06:958E: 0F        .byte $0F   ; 
- D 0 - I - 0x01959F 06:958F: 0F        .byte $0F   ; 
- D 0 - I - 0x0195A0 06:9590: 0F        .byte $0F   ; 
- D 0 - I - 0x0195A1 06:9591: 0F        .byte $0F   ; 
- D 0 - I - 0x0195A2 06:9592: 0F        .byte $0F   ; 
- D 0 - I - 0x0195A3 06:9593: 0F        .byte $0F   ; 
- D 0 - I - 0x0195A4 06:9594: 0F        .byte $0F   ; 
- D 0 - I - 0x0195A5 06:9595: 00        .byte $00   ; 
- D 0 - I - 0x0195A6 06:9596: 10        .byte $10   ; 
- D 0 - I - 0x0195A7 06:9597: 30        .byte $30   ; 
- D 0 - I - 0x0195A8 06:9598: 0F        .byte $0F   ; 
- D 0 - I - 0x0195A9 06:9599: 00        .byte $00   ; 
- D 0 - I - 0x0195AA 06:959A: 10        .byte $10   ; 
- D 0 - I - 0x0195AB 06:959B: 30        .byte $30   ; 
- D 0 - I - 0x0195AC 06:959C: 0F        .byte $0F   ; 
- D 0 - I - 0x0195AD 06:959D: 00        .byte $00   ; 
- D 0 - I - 0x0195AE 06:959E: 00        .byte $00   ; 
- D 0 - I - 0x0195AF 06:959F: 10        .byte $10   ; 
- D 0 - I - 0x0195B0 06:95A0: 0F        .byte $0F   ; 
- D 0 - I - 0x0195B1 06:95A1: 00        .byte $00   ; 
- D 0 - I - 0x0195B2 06:95A2: 00        .byte $00   ; 
- D 0 - I - 0x0195B3 06:95A3: 10        .byte $10   ; 
- D 0 - I - 0x0195B4 06:95A4: 0F        .byte $0F   ; 
- D 0 - I - 0x0195B5 06:95A5: 0F        .byte $0F   ; 
- D 0 - I - 0x0195B6 06:95A6: 00        .byte $00   ; 
- D 0 - I - 0x0195B7 06:95A7: 00        .byte $00   ; 
- D 0 - I - 0x0195B8 06:95A8: 0F        .byte $0F   ; 
- D 0 - I - 0x0195B9 06:95A9: 0F        .byte $0F   ; 
- D 0 - I - 0x0195BA 06:95AA: 00        .byte $00   ; 
- D 0 - I - 0x0195BB 06:95AB: 00        .byte $00   ; 
- D 0 - I - 0x0195BC 06:95AC: 0F        .byte $0F   ; 
- D 0 - I - 0x0195BD 06:95AD: 0F        .byte $0F   ; 
- D 0 - I - 0x0195BE 06:95AE: 0F        .byte $0F   ; 
- D 0 - I - 0x0195BF 06:95AF: 0F        .byte $0F   ; 
- D 0 - I - 0x0195C0 06:95B0: 0F        .byte $0F   ; 
- D 0 - I - 0x0195C1 06:95B1: 0F        .byte $0F   ; 
- D 0 - I - 0x0195C2 06:95B2: 0F        .byte $0F   ; 
- D 0 - I - 0x0195C3 06:95B3: 0F        .byte $0F   ; 
- D 0 - I - 0x0195C4 06:95B4: 0F        .byte $0F   ; 
- D 0 - I - 0x0195C5 06:95B5: 02        .byte $02   ; 
- D 0 - I - 0x0195C6 06:95B6: 12        .byte $12   ; 
- D 0 - I - 0x0195C7 06:95B7: 22        .byte $22   ; 
- D 0 - I - 0x0195C8 06:95B8: 0F        .byte $0F   ; 
- D 0 - I - 0x0195C9 06:95B9: 16        .byte $16   ; 
- D 0 - I - 0x0195CA 06:95BA: 12        .byte $12   ; 
- D 0 - I - 0x0195CB 06:95BB: 22        .byte $22   ; 
- D 0 - I - 0x0195CC 06:95BC: 0F        .byte $0F   ; 
- D 0 - I - 0x0195CD 06:95BD: 01        .byte $01   ; 
- D 0 - I - 0x0195CE 06:95BE: 02        .byte $02   ; 
- D 0 - I - 0x0195CF 06:95BF: 12        .byte $12   ; 
- D 0 - I - 0x0195D0 06:95C0: 0F        .byte $0F   ; 
- D 0 - I - 0x0195D1 06:95C1: 17        .byte $17   ; 
- D 0 - I - 0x0195D2 06:95C2: 02        .byte $02   ; 
- D 0 - I - 0x0195D3 06:95C3: 12        .byte $12   ; 
- D 0 - I - 0x0195D4 06:95C4: 0F        .byte $0F   ; 
- D 0 - I - 0x0195D5 06:95C5: 0F        .byte $0F   ; 
- D 0 - I - 0x0195D6 06:95C6: 01        .byte $01   ; 
- D 0 - I - 0x0195D7 06:95C7: 02        .byte $02   ; 
- D 0 - I - 0x0195D8 06:95C8: 0F        .byte $0F   ; 
- D 0 - I - 0x0195D9 06:95C9: 06        .byte $06   ; 
- D 0 - I - 0x0195DA 06:95CA: 01        .byte $01   ; 
- D 0 - I - 0x0195DB 06:95CB: 02        .byte $02   ; 
- D 0 - I - 0x0195DC 06:95CC: 0F        .byte $0F   ; 
- D 0 - I - 0x0195DD 06:95CD: 0F        .byte $0F   ; 
- D 0 - I - 0x0195DE 06:95CE: 0F        .byte $0F   ; 
- D 0 - I - 0x0195DF 06:95CF: 01        .byte $01   ; 
- D 0 - I - 0x0195E0 06:95D0: 0F        .byte $0F   ; 
- D 0 - I - 0x0195E1 06:95D1: 0F        .byte $0F   ; 
- D 0 - I - 0x0195E2 06:95D2: 0F        .byte $0F   ; 
- D 0 - I - 0x0195E3 06:95D3: 0F        .byte $0F   ; 
- D 0 - I - 0x0195E4 06:95D4: 0F        .byte $0F   ; 
- D 0 - I - 0x0195E5 06:95D5: 06        .byte $06   ; 
- D 0 - I - 0x0195E6 06:95D6: 17        .byte $17   ; 
- D 0 - I - 0x0195E7 06:95D7: 16        .byte $16   ; 
- D 0 - I - 0x0195E8 06:95D8: 0F        .byte $0F   ; 
- D 0 - I - 0x0195E9 06:95D9: 06        .byte $06   ; 
- D 0 - I - 0x0195EA 06:95DA: 17        .byte $17   ; 
- D 0 - I - 0x0195EB 06:95DB: 16        .byte $16   ; 
- D 0 - I - 0x0195EC 06:95DC: 0F        .byte $0F   ; 
- D 0 - I - 0x0195ED 06:95DD: 07        .byte $07   ; 
- D 0 - I - 0x0195EE 06:95DE: 06        .byte $06   ; 
- D 0 - I - 0x0195EF 06:95DF: 16        .byte $16   ; 
- D 0 - I - 0x0195F0 06:95E0: 0F        .byte $0F   ; 
- D 0 - I - 0x0195F1 06:95E1: 07        .byte $07   ; 
- D 0 - I - 0x0195F2 06:95E2: 06        .byte $06   ; 
- D 0 - I - 0x0195F3 06:95E3: 16        .byte $16   ; 
- D 0 - I - 0x0195F4 06:95E4: 0F        .byte $0F   ; 
- D 0 - I - 0x0195F5 06:95E5: 0F        .byte $0F   ; 
- D 0 - I - 0x0195F6 06:95E6: 07        .byte $07   ; 
- D 0 - I - 0x0195F7 06:95E7: 06        .byte $06   ; 
- D 0 - I - 0x0195F8 06:95E8: 0F        .byte $0F   ; 
- D 0 - I - 0x0195F9 06:95E9: 0F        .byte $0F   ; 
- D 0 - I - 0x0195FA 06:95EA: 07        .byte $07   ; 
- D 0 - I - 0x0195FB 06:95EB: 06        .byte $06   ; 
- D 0 - I - 0x0195FC 06:95EC: 0F        .byte $0F   ; 
- D 0 - I - 0x0195FD 06:95ED: 0F        .byte $0F   ; 
- D 0 - I - 0x0195FE 06:95EE: 0F        .byte $0F   ; 
- D 0 - I - 0x0195FF 06:95EF: 0F        .byte $0F   ; 
- D 0 - I - 0x019600 06:95F0: 0F        .byte $0F   ; 
- D 0 - I - 0x019601 06:95F1: 0F        .byte $0F   ; 
- D 0 - I - 0x019602 06:95F2: 0F        .byte $0F   ; 
- D 0 - I - 0x019603 06:95F3: 0F        .byte $0F   ; 



_off010_95F4_03:
- D 0 - I - 0x019604 06:95F4: 3F        .byte $3F   ; 
- D 0 - I - 0x019605 06:95F5: 00        .byte $00   ; 
- D 0 - I - 0x019606 06:95F6: 20        .byte $20   ; 
- D 0 - I - 0x019607 06:95F7: 0F        .byte $0F   ; 
- D 0 - I - 0x019608 06:95F8: 30        .byte $30   ; 
- D 0 - I - 0x019609 06:95F9: 00        .byte $00   ; 
- D 0 - I - 0x01960A 06:95FA: 12        .byte $12   ; 
- D 0 - I - 0x01960B 06:95FB: 0F        .byte $0F   ; 
- D 0 - I - 0x01960C 06:95FC: 16        .byte $16   ; 
- D 0 - I - 0x01960D 06:95FD: 27        .byte $27   ; 
- D 0 - I - 0x01960E 06:95FE: 36        .byte $36   ; 
- D 0 - I - 0x01960F 06:95FF: 0F        .byte $0F   ; 
- D 0 - I - 0x019610 06:9600: 0B        .byte $0B   ; 
- D 0 - I - 0x019611 06:9601: 1B        .byte $1B   ; 
- D 0 - I - 0x019612 06:9602: 2B        .byte $2B   ; 
- D 0 - I - 0x019613 06:9603: 0F        .byte $0F   ; 
- D 0 - I - 0x019614 06:9604: 16        .byte $16   ; 
- D 0 - I - 0x019615 06:9605: 1B        .byte $1B   ; 
- D 0 - I - 0x019616 06:9606: 2B        .byte $2B   ; 
- D 0 - I - 0x019617 06:9607: 0F        .byte $0F   ; 
- D 0 - I - 0x019618 06:9608: 29        .byte $29   ; 
- D 0 - I - 0x019619 06:9609: 37        .byte $37   ; 
- D 0 - I - 0x01961A 06:960A: 17        .byte $17   ; 
- D 0 - I - 0x01961B 06:960B: 0F        .byte $0F   ; 
- D 0 - I - 0x01961C 06:960C: 02        .byte $02   ; 
- D 0 - I - 0x01961D 06:960D: 22        .byte $22   ; 
- D 0 - I - 0x01961E 06:960E: 30        .byte $30   ; 
- D 0 - I - 0x01961F 06:960F: 0F        .byte $0F   ; 
- D 0 - I - 0x019620 06:9610: 16        .byte $16   ; 
- D 0 - I - 0x019621 06:9611: 27        .byte $27   ; 
- D 0 - I - 0x019622 06:9612: 30        .byte $30   ; 
- D 0 - I - 0x019623 06:9613: 0F        .byte $0F   ; 
- D 0 - I - 0x019624 06:9614: 0B        .byte $0B   ; 
- D 0 - I - 0x019625 06:9615: 1B        .byte $1B   ; 
- D 0 - I - 0x019626 06:9616: 2B        .byte $2B   ; 
- D 0 - I - 0x019627 06:9617: FF        .byte $FF   ; 
- D 0 - I - 0x019628 06:9618: 03        .byte $03   ; 
- D 0 - I - 0x019629 06:9619: 05        .byte $05   ; 
- D 0 - I - 0x01962A 06:961A: 06        .byte $06   ; 
- D 0 - I - 0x01962B 06:961B: 08        .byte $08   ; 
- D 0 - I - 0x01962C 06:961C: DD        .byte $DD   ; 
- D 0 - I - 0x01962D 06:961D: 89        .byte $89   ; 
- D 0 - I - 0x01962E 06:961E: D6        .byte $D6   ; 
- D 0 - I - 0x01962F 06:961F: 26        .byte $26   ; 
- D 0 - I - 0x019630 06:9620: 2C        .byte $2C   ; 
- D 0 - I - 0x019631 06:9621: 0C        .byte $0C   ; 
- D 0 - I - 0x019632 06:9622: C0        .byte $C0   ; 
- D 0 - I - 0x019633 06:9623: 7C        .byte $7C   ; 
- D 0 - I - 0x019634 06:9624: 3D        .byte $3D   ; 
- D 0 - I - 0x019635 06:9625: FF        .byte $FF   ; 
- D 0 - I - 0x019636 06:9626: 06        .byte $06   ; 
- D 0 - I - 0x019637 06:9627: 03        .byte $03   ; 
- D 0 - I - 0x019638 06:9628: FF        .byte $FF   ; 
- D 0 - I - 0x019639 06:9629: FF        .byte $FF   ; 
- D 0 - I - 0x01963A 06:962A: FF        .byte $FF   ; 
- D 0 - I - 0x01963B 06:962B: FF        .byte $FF   ; 
- D 0 - I - 0x01963C 06:962C: FF        .byte $FF   ; 
- D 0 - I - 0x01963D 06:962D: FF        .byte $FF   ; 
- D 0 - I - 0x01963E 06:962E: FF        .byte $FF   ; 
- D 0 - I - 0x01963F 06:962F: FF        .byte $FF   ; 
- D 0 - I - 0x019640 06:9630: FF        .byte $FF   ; 
- D 0 - I - 0x019641 06:9631: FF        .byte $FF   ; 
- D 0 - I - 0x019642 06:9632: 4D        .byte $4D   ; 
- D 0 - I - 0x019643 06:9633: 00        .byte $00   ; 
- D 0 - I - 0x019644 06:9634: 00        .byte $00   ; 
- D 0 - I - 0x019645 06:9635: 00        .byte $00   ; 
- D 0 - I - 0x019646 06:9636: 00        .byte $00   ; 
- D 0 - I - 0x019647 06:9637: 00        .byte $00   ; 
- D 0 - I - 0x019648 06:9638: 0E        .byte $0E   ; 
- D 0 - I - 0x019649 06:9639: 2C        .byte $2C   ; 
- D 0 - I - 0x01964A 06:963A: 3F        .byte $3F   ; 
- D 0 - I - 0x01964B 06:963B: 0D        .byte $0D   ; 
- D 0 - I - 0x01964C 06:963C: 1C        .byte $1C   ; 
- D 0 - I - 0x01964D 06:963D: 00        .byte $00   ; 
- D 0 - I - 0x01964E 06:963E: 00        .byte $00   ; 
- D 0 - I - 0x01964F 06:963F: 00        .byte $00   ; 
- D 0 - I - 0x019650 06:9640: 00        .byte $00   ; 
- D 0 - I - 0x019651 06:9641: 00        .byte $00   ; 
- D 0 - I - 0x019652 06:9642: 00        .byte $00   ; 
- D 0 - I - 0x019653 06:9643: 20        .byte $20   ; 
- D 0 - I - 0x019654 06:9644: 84        .byte $84   ; 
- D 0 - I - 0x019655 06:9645: 04        .byte $04   ; 
- D 0 - I - 0x019656 06:9646: 67        .byte $67   ; 
- D 0 - I - 0x019657 06:9647: FF        .byte $FF   ; 
- D 0 - I - 0x019658 06:9648: 24        .byte $24   ; 
- D 0 - I - 0x019659 06:9649: FB        .byte $FB   ; 
- D 0 - I - 0x01965A 06:964A: 20        .byte $20   ; 
- D 0 - I - 0x01965B 06:964B: A3        .byte $A3   ; 
- D 0 - I - 0x01965C 06:964C: 05        .byte $05   ; 
- D 0 - I - 0x01965D 06:964D: FF        .byte $FF   ; 
- D 0 - I - 0x01965E 06:964E: FF        .byte $FF   ; 
- D 0 - I - 0x01965F 06:964F: FF        .byte $FF   ; 
- D 0 - I - 0x019660 06:9650: FF        .byte $FF   ; 
- D 0 - I - 0x019661 06:9651: FF        .byte $FF   ; 
- D 0 - I - 0x019662 06:9652: 20        .byte $20   ; 
- D 0 - I - 0x019663 06:9653: C3        .byte $C3   ; 
- D 0 - I - 0x019664 06:9654: 04        .byte $04   ; 
- D 0 - I - 0x019665 06:9655: 67        .byte $67   ; 
- D 0 - I - 0x019666 06:9656: 24        .byte $24   ; 
- D 0 - I - 0x019667 06:9657: FF        .byte $FF   ; 
- D 0 - I - 0x019668 06:9658: FB        .byte $FB   ; 
- D 0 - I - 0x019669 06:9659: FF        .byte $FF   ; 
- D 0 - I - 0x01966A 06:965A: FF        .byte $FF   ; 
- D 0 - I - 0x01966B 06:965B: FF        .byte $FF   ; 
- D 0 - I - 0x01966C 06:965C: FF        .byte $FF   ; 
- D 0 - I - 0x01966D 06:965D: FF        .byte $FF   ; 
- D 0 - I - 0x01966E 06:965E: FF        .byte $FF   ; 
- D 0 - I - 0x01966F 06:965F: FF        .byte $FF   ; 
- D 0 - I - 0x019670 06:9660: FF        .byte $FF   ; 
- D 0 - I - 0x019671 06:9661: FF        .byte $FF   ; 
- D 0 - I - 0x019672 06:9662: FF        .byte $FF   ; 
- D 0 - I - 0x019673 06:9663: FF        .byte $FF   ; 
- D 0 - I - 0x019674 06:9664: FF        .byte $FF   ; 
- D 0 - I - 0x019675 06:9665: FF        .byte $FF   ; 
- D 0 - I - 0x019676 06:9666: FF        .byte $FF   ; 
- D 0 - I - 0x019677 06:9667: FF        .byte $FF   ; 
- D 0 - I - 0x019678 06:9668: FF        .byte $FF   ; 
- D 0 - I - 0x019679 06:9669: FF        .byte $FF   ; 
- D 0 - I - 0x01967A 06:966A: FF        .byte $FF   ; 
- D 0 - I - 0x01967B 06:966B: FF        .byte $FF   ; 
- D 0 - I - 0x01967C 06:966C: FF        .byte $FF   ; 
- D 0 - I - 0x01967D 06:966D: FF        .byte $FF   ; 
- D 0 - I - 0x01967E 06:966E: FF        .byte $FF   ; 
- D 0 - I - 0x01967F 06:966F: FF        .byte $FF   ; 
- D 0 - I - 0x019680 06:9670: 0F        .byte $0F   ; 
- D 0 - I - 0x019681 06:9671: 0B        .byte $0B   ; 
- D 0 - I - 0x019682 06:9672: 1B        .byte $1B   ; 
- D 0 - I - 0x019683 06:9673: 2B        .byte $2B   ; 
- D 0 - I - 0x019684 06:9674: 0F        .byte $0F   ; 
- D 0 - I - 0x019685 06:9675: 16        .byte $16   ; 
- D 0 - I - 0x019686 06:9676: 1B        .byte $1B   ; 
- D 0 - I - 0x019687 06:9677: 2B        .byte $2B   ; 
- D 0 - I - 0x019688 06:9678: 0F        .byte $0F   ; 
- D 0 - I - 0x019689 06:9679: 0B        .byte $0B   ; 
- D 0 - I - 0x01968A 06:967A: 0B        .byte $0B   ; 
- D 0 - I - 0x01968B 06:967B: 1B        .byte $1B   ; 
- D 0 - I - 0x01968C 06:967C: 0F        .byte $0F   ; 
- D 0 - I - 0x01968D 06:967D: 17        .byte $17   ; 
- D 0 - I - 0x01968E 06:967E: 0B        .byte $0B   ; 
- D 0 - I - 0x01968F 06:967F: 1B        .byte $1B   ; 
- D 0 - I - 0x019690 06:9680: 0F        .byte $0F   ; 
- D 0 - I - 0x019691 06:9681: 0F        .byte $0F   ; 
- D 0 - I - 0x019692 06:9682: 0B        .byte $0B   ; 
- D 0 - I - 0x019693 06:9683: 0B        .byte $0B   ; 
- D 0 - I - 0x019694 06:9684: 0F        .byte $0F   ; 
- D 0 - I - 0x019695 06:9685: 06        .byte $06   ; 
- D 0 - I - 0x019696 06:9686: 0B        .byte $0B   ; 
- D 0 - I - 0x019697 06:9687: 0B        .byte $0B   ; 
- D 0 - I - 0x019698 06:9688: 0F        .byte $0F   ; 
- D 0 - I - 0x019699 06:9689: 0F        .byte $0F   ; 
- D 0 - I - 0x01969A 06:968A: 0F        .byte $0F   ; 
- D 0 - I - 0x01969B 06:968B: 0F        .byte $0F   ; 
- D 0 - I - 0x01969C 06:968C: 0F        .byte $0F   ; 
- D 0 - I - 0x01969D 06:968D: 0F        .byte $0F   ; 
- D 0 - I - 0x01969E 06:968E: 0F        .byte $0F   ; 
- D 0 - I - 0x01969F 06:968F: 0F        .byte $0F   ; 
- D 0 - I - 0x0196A0 06:9690: 0F        .byte $0F   ; 
- D 0 - I - 0x0196A1 06:9691: 00        .byte $00   ; 
- D 0 - I - 0x0196A2 06:9692: 10        .byte $10   ; 
- D 0 - I - 0x0196A3 06:9693: 30        .byte $30   ; 
- D 0 - I - 0x0196A4 06:9694: 0F        .byte $0F   ; 
- D 0 - I - 0x0196A5 06:9695: 00        .byte $00   ; 
- D 0 - I - 0x0196A6 06:9696: 10        .byte $10   ; 
- D 0 - I - 0x0196A7 06:9697: 30        .byte $30   ; 
- D 0 - I - 0x0196A8 06:9698: 0F        .byte $0F   ; 
- D 0 - I - 0x0196A9 06:9699: 00        .byte $00   ; 
- D 0 - I - 0x0196AA 06:969A: 00        .byte $00   ; 
- D 0 - I - 0x0196AB 06:969B: 10        .byte $10   ; 
- D 0 - I - 0x0196AC 06:969C: 0F        .byte $0F   ; 
- D 0 - I - 0x0196AD 06:969D: 00        .byte $00   ; 
- D 0 - I - 0x0196AE 06:969E: 00        .byte $00   ; 
- D 0 - I - 0x0196AF 06:969F: 10        .byte $10   ; 
- D 0 - I - 0x0196B0 06:96A0: 0F        .byte $0F   ; 
- D 0 - I - 0x0196B1 06:96A1: 0F        .byte $0F   ; 
- D 0 - I - 0x0196B2 06:96A2: 00        .byte $00   ; 
- D 0 - I - 0x0196B3 06:96A3: 00        .byte $00   ; 
- D 0 - I - 0x0196B4 06:96A4: 0F        .byte $0F   ; 
- D 0 - I - 0x0196B5 06:96A5: 0F        .byte $0F   ; 
- D 0 - I - 0x0196B6 06:96A6: 00        .byte $00   ; 
- D 0 - I - 0x0196B7 06:96A7: 00        .byte $00   ; 
- D 0 - I - 0x0196B8 06:96A8: 0F        .byte $0F   ; 
- D 0 - I - 0x0196B9 06:96A9: 0F        .byte $0F   ; 
- D 0 - I - 0x0196BA 06:96AA: 0F        .byte $0F   ; 
- D 0 - I - 0x0196BB 06:96AB: 0F        .byte $0F   ; 
- D 0 - I - 0x0196BC 06:96AC: 0F        .byte $0F   ; 
- D 0 - I - 0x0196BD 06:96AD: 0F        .byte $0F   ; 
- D 0 - I - 0x0196BE 06:96AE: 0F        .byte $0F   ; 
- D 0 - I - 0x0196BF 06:96AF: 0F        .byte $0F   ; 
- D 0 - I - 0x0196C0 06:96B0: 0F        .byte $0F   ; 
- D 0 - I - 0x0196C1 06:96B1: 0B        .byte $0B   ; 
- D 0 - I - 0x0196C2 06:96B2: 1B        .byte $1B   ; 
- D 0 - I - 0x0196C3 06:96B3: 2B        .byte $2B   ; 
- D 0 - I - 0x0196C4 06:96B4: 0F        .byte $0F   ; 
- D 0 - I - 0x0196C5 06:96B5: 16        .byte $16   ; 
- D 0 - I - 0x0196C6 06:96B6: 1B        .byte $1B   ; 
- D 0 - I - 0x0196C7 06:96B7: 2B        .byte $2B   ; 
- D 0 - I - 0x0196C8 06:96B8: 0F        .byte $0F   ; 
- D 0 - I - 0x0196C9 06:96B9: 0B        .byte $0B   ; 
- D 0 - I - 0x0196CA 06:96BA: 0B        .byte $0B   ; 
- D 0 - I - 0x0196CB 06:96BB: 1B        .byte $1B   ; 
- D 0 - I - 0x0196CC 06:96BC: 0F        .byte $0F   ; 
- D 0 - I - 0x0196CD 06:96BD: 17        .byte $17   ; 
- D 0 - I - 0x0196CE 06:96BE: 0B        .byte $0B   ; 
- D 0 - I - 0x0196CF 06:96BF: 1B        .byte $1B   ; 
- D 0 - I - 0x0196D0 06:96C0: 0F        .byte $0F   ; 
- D 0 - I - 0x0196D1 06:96C1: 0F        .byte $0F   ; 
- D 0 - I - 0x0196D2 06:96C2: 0B        .byte $0B   ; 
- D 0 - I - 0x0196D3 06:96C3: 0B        .byte $0B   ; 
- D 0 - I - 0x0196D4 06:96C4: 0F        .byte $0F   ; 
- D 0 - I - 0x0196D5 06:96C5: 06        .byte $06   ; 
- D 0 - I - 0x0196D6 06:96C6: 0B        .byte $0B   ; 
- D 0 - I - 0x0196D7 06:96C7: 0B        .byte $0B   ; 
- D 0 - I - 0x0196D8 06:96C8: 0F        .byte $0F   ; 
- D 0 - I - 0x0196D9 06:96C9: 0F        .byte $0F   ; 
- D 0 - I - 0x0196DA 06:96CA: 0F        .byte $0F   ; 
- D 0 - I - 0x0196DB 06:96CB: 0B        .byte $0B   ; 
- D 0 - I - 0x0196DC 06:96CC: 0F        .byte $0F   ; 
- D 0 - I - 0x0196DD 06:96CD: 0F        .byte $0F   ; 
- D 0 - I - 0x0196DE 06:96CE: 0F        .byte $0F   ; 
- D 0 - I - 0x0196DF 06:96CF: 0F        .byte $0F   ; 
- D 0 - I - 0x0196E0 06:96D0: 0F        .byte $0F   ; 
- D 0 - I - 0x0196E1 06:96D1: 06        .byte $06   ; 
- D 0 - I - 0x0196E2 06:96D2: 17        .byte $17   ; 
- D 0 - I - 0x0196E3 06:96D3: 16        .byte $16   ; 
- D 0 - I - 0x0196E4 06:96D4: 0F        .byte $0F   ; 
- D 0 - I - 0x0196E5 06:96D5: 06        .byte $06   ; 
- D 0 - I - 0x0196E6 06:96D6: 17        .byte $17   ; 
- D 0 - I - 0x0196E7 06:96D7: 16        .byte $16   ; 
- D 0 - I - 0x0196E8 06:96D8: 0F        .byte $0F   ; 
- D 0 - I - 0x0196E9 06:96D9: 07        .byte $07   ; 
- D 0 - I - 0x0196EA 06:96DA: 06        .byte $06   ; 
- D 0 - I - 0x0196EB 06:96DB: 16        .byte $16   ; 
- D 0 - I - 0x0196EC 06:96DC: 0F        .byte $0F   ; 
- D 0 - I - 0x0196ED 06:96DD: 07        .byte $07   ; 
- D 0 - I - 0x0196EE 06:96DE: 06        .byte $06   ; 
- D 0 - I - 0x0196EF 06:96DF: 16        .byte $16   ; 
- D 0 - I - 0x0196F0 06:96E0: 0F        .byte $0F   ; 
- D 0 - I - 0x0196F1 06:96E1: 0F        .byte $0F   ; 
- D 0 - I - 0x0196F2 06:96E2: 07        .byte $07   ; 
- D 0 - I - 0x0196F3 06:96E3: 06        .byte $06   ; 
- D 0 - I - 0x0196F4 06:96E4: 0F        .byte $0F   ; 
- D 0 - I - 0x0196F5 06:96E5: 0F        .byte $0F   ; 
- D 0 - I - 0x0196F6 06:96E6: 07        .byte $07   ; 
- D 0 - I - 0x0196F7 06:96E7: 06        .byte $06   ; 
- D 0 - I - 0x0196F8 06:96E8: 0F        .byte $0F   ; 
- D 0 - I - 0x0196F9 06:96E9: 0F        .byte $0F   ; 
- D 0 - I - 0x0196FA 06:96EA: 0F        .byte $0F   ; 
- D 0 - I - 0x0196FB 06:96EB: 0F        .byte $0F   ; 
- D 0 - I - 0x0196FC 06:96EC: 0F        .byte $0F   ; 
- D 0 - I - 0x0196FD 06:96ED: 0F        .byte $0F   ; 
- D 0 - I - 0x0196FE 06:96EE: 0F        .byte $0F   ; 
- D 0 - I - 0x0196FF 06:96EF: 0F        .byte $0F   ; 



_off010_96F0_04:
- D 0 - I - 0x019700 06:96F0: 3F        .byte $3F   ; 
- D 0 - I - 0x019701 06:96F1: 00        .byte $00   ; 
- D 0 - I - 0x019702 06:96F2: 20        .byte $20   ; 
- D 0 - I - 0x019703 06:96F3: 0F        .byte $0F   ; 
- D 0 - I - 0x019704 06:96F4: 30        .byte $30   ; 
- D 0 - I - 0x019705 06:96F5: 00        .byte $00   ; 
- D 0 - I - 0x019706 06:96F6: 12        .byte $12   ; 
- D 0 - I - 0x019707 06:96F7: 0F        .byte $0F   ; 
- D 0 - I - 0x019708 06:96F8: 16        .byte $16   ; 
- D 0 - I - 0x019709 06:96F9: 27        .byte $27   ; 
- D 0 - I - 0x01970A 06:96FA: 36        .byte $36   ; 
- D 0 - I - 0x01970B 06:96FB: 0F        .byte $0F   ; 
- D 0 - I - 0x01970C 06:96FC: 08        .byte $08   ; 
- D 0 - I - 0x01970D 06:96FD: 18        .byte $18   ; 
- D 0 - I - 0x01970E 06:96FE: 28        .byte $28   ; 
- D 0 - I - 0x01970F 06:96FF: 0F        .byte $0F   ; 
- D 0 - I - 0x019710 06:9700: 12        .byte $12   ; 
- D 0 - I - 0x019711 06:9701: 18        .byte $18   ; 
- D 0 - I - 0x019712 06:9702: 28        .byte $28   ; 
- D 0 - I - 0x019713 06:9703: 0F        .byte $0F   ; 
- D 0 - I - 0x019714 06:9704: 29        .byte $29   ; 
- D 0 - I - 0x019715 06:9705: 27        .byte $27   ; 
- D 0 - I - 0x019716 06:9706: 17        .byte $17   ; 
- D 0 - I - 0x019717 06:9707: 0F        .byte $0F   ; 
- D 0 - I - 0x019718 06:9708: 02        .byte $02   ; 
- D 0 - I - 0x019719 06:9709: 22        .byte $22   ; 
- D 0 - I - 0x01971A 06:970A: 30        .byte $30   ; 
- D 0 - I - 0x01971B 06:970B: 0F        .byte $0F   ; 
- D 0 - I - 0x01971C 06:970C: 16        .byte $16   ; 
- D 0 - I - 0x01971D 06:970D: 27        .byte $27   ; 
- D 0 - I - 0x01971E 06:970E: 30        .byte $30   ; 
- D 0 - I - 0x01971F 06:970F: 0F        .byte $0F   ; 
- D 0 - I - 0x019720 06:9710: 0F        .byte $0F   ; 
- D 0 - I - 0x019721 06:9711: 18        .byte $18   ; 
- D 0 - I - 0x019722 06:9712: 28        .byte $28   ; 
- D 0 - I - 0x019723 06:9713: FF        .byte $FF   ; 
- D 0 - I - 0x019724 06:9714: 03        .byte $03   ; 
- D 0 - I - 0x019725 06:9715: 05        .byte $05   ; 
- D 0 - I - 0x019726 06:9716: 06        .byte $06   ; 
- D 0 - I - 0x019727 06:9717: 08        .byte $08   ; 
- D 0 - I - 0x019728 06:9718: DD        .byte $DD   ; 
- D 0 - I - 0x019729 06:9719: DC        .byte $DC   ; 
- D 0 - I - 0x01972A 06:971A: 99        .byte $99   ; 
- D 0 - I - 0x01972B 06:971B: 88        .byte $88   ; 
- D 0 - I - 0x01972C 06:971C: 89        .byte $89   ; 
- D 0 - I - 0x01972D 06:971D: 06        .byte $06   ; 
- D 0 - I - 0x01972E 06:971E: 10        .byte $10   ; 
- D 0 - I - 0x01972F 06:971F: 71        .byte $71   ; 
- D 0 - I - 0x019730 06:9720: 03        .byte $03   ; 
- D 0 - I - 0x019731 06:9721: FF        .byte $FF   ; 
- D 0 - I - 0x019732 06:9722: 06        .byte $06   ; 
- D 0 - I - 0x019733 06:9723: 04        .byte $04   ; 
- D 0 - I - 0x019734 06:9724: 60        .byte $60   ; 
- D 0 - I - 0x019735 06:9725: FF        .byte $FF   ; 
- D 0 - I - 0x019736 06:9726: FF        .byte $FF   ; 
- D 0 - I - 0x019737 06:9727: FF        .byte $FF   ; 
- D 0 - I - 0x019738 06:9728: FF        .byte $FF   ; 
- D 0 - I - 0x019739 06:9729: FF        .byte $FF   ; 
- D 0 - I - 0x01973A 06:972A: FF        .byte $FF   ; 
- D 0 - I - 0x01973B 06:972B: FF        .byte $FF   ; 
- D 0 - I - 0x01973C 06:972C: FF        .byte $FF   ; 
- D 0 - I - 0x01973D 06:972D: FF        .byte $FF   ; 
- D 0 - I - 0x01973E 06:972E: 13        .byte $13   ; 
- D 0 - I - 0x01973F 06:972F: 00        .byte $00   ; 
- D 0 - I - 0x019740 06:9730: 00        .byte $00   ; 
- D 0 - I - 0x019741 06:9731: 00        .byte $00   ; 
- D 0 - I - 0x019742 06:9732: 00        .byte $00   ; 
- D 0 - I - 0x019743 06:9733: 00        .byte $00   ; 
- D 0 - I - 0x019744 06:9734: 00        .byte $00   ; 
- D 0 - I - 0x019745 06:9735: FD        .byte $FD   ; 
- D 0 - I - 0x019746 06:9736: B7        .byte $B7   ; 
- D 0 - I - 0x019747 06:9737: D2        .byte $D2   ; 
- D 0 - I - 0x019748 06:9738: C0        .byte $C0   ; 
- D 0 - I - 0x019749 06:9739: 00        .byte $00   ; 
- D 0 - I - 0x01974A 06:973A: 00        .byte $00   ; 
- D 0 - I - 0x01974B 06:973B: 00        .byte $00   ; 
- D 0 - I - 0x01974C 06:973C: 00        .byte $00   ; 
- D 0 - I - 0x01974D 06:973D: 00        .byte $00   ; 
- D 0 - I - 0x01974E 06:973E: 00        .byte $00   ; 
- D 0 - I - 0x01974F 06:973F: 20        .byte $20   ; 
- D 0 - I - 0x019750 06:9740: 64        .byte $64   ; 
- D 0 - I - 0x019751 06:9741: 04        .byte $04   ; 
- D 0 - I - 0x019752 06:9742: FF        .byte $FF   ; 
- D 0 - I - 0x019753 06:9743: 67        .byte $67   ; 
- D 0 - I - 0x019754 06:9744: FF        .byte $FF   ; 
- D 0 - I - 0x019755 06:9745: FF        .byte $FF   ; 
- D 0 - I - 0x019756 06:9746: 20        .byte $20   ; 
- D 0 - I - 0x019757 06:9747: 84        .byte $84   ; 
- D 0 - I - 0x019758 06:9748: 03        .byte $03   ; 
- D 0 - I - 0x019759 06:9749: FF        .byte $FF   ; 
- D 0 - I - 0x01975A 06:974A: FF        .byte $FF   ; 
- D 0 - I - 0x01975B 06:974B: FB        .byte $FB   ; 
- D 0 - I - 0x01975C 06:974C: 20        .byte $20   ; 
- D 0 - I - 0x01975D 06:974D: A4        .byte $A4   ; 
- D 0 - I - 0x01975E 06:974E: 02        .byte $02   ; 
- D 0 - I - 0x01975F 06:974F: FF        .byte $FF   ; 
- D 0 - I - 0x019760 06:9750: FB        .byte $FB   ; 
- D 0 - I - 0x019761 06:9751: 20        .byte $20   ; 
- D 0 - I - 0x019762 06:9752: C4        .byte $C4   ; 
- D 0 - I - 0x019763 06:9753: 03        .byte $03   ; 
- D 0 - I - 0x019764 06:9754: FB        .byte $FB   ; 
- D 0 - I - 0x019765 06:9755: FF        .byte $FF   ; 
- D 0 - I - 0x019766 06:9756: 67        .byte $67   ; 
- D 0 - I - 0x019767 06:9757: FF        .byte $FF   ; 
- D 0 - I - 0x019768 06:9758: FF        .byte $FF   ; 
- D 0 - I - 0x019769 06:9759: FF        .byte $FF   ; 
- D 0 - I - 0x01976A 06:975A: FF        .byte $FF   ; 
- D 0 - I - 0x01976B 06:975B: FF        .byte $FF   ; 
- D 0 - I - 0x01976C 06:975C: FF        .byte $FF   ; 
- D 0 - I - 0x01976D 06:975D: FF        .byte $FF   ; 
- D 0 - I - 0x01976E 06:975E: FF        .byte $FF   ; 
- D 0 - I - 0x01976F 06:975F: FF        .byte $FF   ; 
- D 0 - I - 0x019770 06:9760: FF        .byte $FF   ; 
- D 0 - I - 0x019771 06:9761: FF        .byte $FF   ; 
- D 0 - I - 0x019772 06:9762: FF        .byte $FF   ; 
- D 0 - I - 0x019773 06:9763: FF        .byte $FF   ; 
- D 0 - I - 0x019774 06:9764: FF        .byte $FF   ; 
- D 0 - I - 0x019775 06:9765: FF        .byte $FF   ; 
- D 0 - I - 0x019776 06:9766: FF        .byte $FF   ; 
- D 0 - I - 0x019777 06:9767: FF        .byte $FF   ; 
- D 0 - I - 0x019778 06:9768: FF        .byte $FF   ; 
- D 0 - I - 0x019779 06:9769: FF        .byte $FF   ; 
- D 0 - I - 0x01977A 06:976A: FF        .byte $FF   ; 
- D 0 - I - 0x01977B 06:976B: FF        .byte $FF   ; 
- D 0 - I - 0x01977C 06:976C: 0F        .byte $0F   ; 
- D 0 - I - 0x01977D 06:976D: 08        .byte $08   ; 
- D 0 - I - 0x01977E 06:976E: 18        .byte $18   ; 
- D 0 - I - 0x01977F 06:976F: 28        .byte $28   ; 
- D 0 - I - 0x019780 06:9770: 0F        .byte $0F   ; 
- D 0 - I - 0x019781 06:9771: 12        .byte $12   ; 
- D 0 - I - 0x019782 06:9772: 18        .byte $18   ; 
- D 0 - I - 0x019783 06:9773: 28        .byte $28   ; 
- D 0 - I - 0x019784 06:9774: 0F        .byte $0F   ; 
- D 0 - I - 0x019785 06:9775: 08        .byte $08   ; 
- D 0 - I - 0x019786 06:9776: 08        .byte $08   ; 
- D 0 - I - 0x019787 06:9777: 18        .byte $18   ; 
- D 0 - I - 0x019788 06:9778: 0F        .byte $0F   ; 
- D 0 - I - 0x019789 06:9779: 11        .byte $11   ; 
- D 0 - I - 0x01978A 06:977A: 08        .byte $08   ; 
- D 0 - I - 0x01978B 06:977B: 18        .byte $18   ; 
- D 0 - I - 0x01978C 06:977C: 0F        .byte $0F   ; 
- D 0 - I - 0x01978D 06:977D: 0F        .byte $0F   ; 
- D 0 - I - 0x01978E 06:977E: 08        .byte $08   ; 
- D 0 - I - 0x01978F 06:977F: 08        .byte $08   ; 
- D 0 - I - 0x019790 06:9780: 0F        .byte $0F   ; 
- D 0 - I - 0x019791 06:9781: 02        .byte $02   ; 
- D 0 - I - 0x019792 06:9782: 08        .byte $08   ; 
- D 0 - I - 0x019793 06:9783: 08        .byte $08   ; 
- D 0 - I - 0x019794 06:9784: 0F        .byte $0F   ; 
- D 0 - I - 0x019795 06:9785: 0F        .byte $0F   ; 
- D 0 - I - 0x019796 06:9786: 0F        .byte $0F   ; 
- D 0 - I - 0x019797 06:9787: 0F        .byte $0F   ; 
- D 0 - I - 0x019798 06:9788: 0F        .byte $0F   ; 
- D 0 - I - 0x019799 06:9789: 0F        .byte $0F   ; 
- D 0 - I - 0x01979A 06:978A: 0F        .byte $0F   ; 
- D 0 - I - 0x01979B 06:978B: 0F        .byte $0F   ; 
- D 0 - I - 0x01979C 06:978C: 0F        .byte $0F   ; 
- D 0 - I - 0x01979D 06:978D: 00        .byte $00   ; 
- D 0 - I - 0x01979E 06:978E: 10        .byte $10   ; 
- D 0 - I - 0x01979F 06:978F: 30        .byte $30   ; 
- D 0 - I - 0x0197A0 06:9790: 0F        .byte $0F   ; 
- D 0 - I - 0x0197A1 06:9791: 00        .byte $00   ; 
- D 0 - I - 0x0197A2 06:9792: 10        .byte $10   ; 
- D 0 - I - 0x0197A3 06:9793: 30        .byte $30   ; 
- D 0 - I - 0x0197A4 06:9794: 0F        .byte $0F   ; 
- D 0 - I - 0x0197A5 06:9795: 00        .byte $00   ; 
- D 0 - I - 0x0197A6 06:9796: 00        .byte $00   ; 
- D 0 - I - 0x0197A7 06:9797: 10        .byte $10   ; 
- D 0 - I - 0x0197A8 06:9798: 0F        .byte $0F   ; 
- D 0 - I - 0x0197A9 06:9799: 00        .byte $00   ; 
- D 0 - I - 0x0197AA 06:979A: 00        .byte $00   ; 
- D 0 - I - 0x0197AB 06:979B: 10        .byte $10   ; 
- D 0 - I - 0x0197AC 06:979C: 0F        .byte $0F   ; 
- D 0 - I - 0x0197AD 06:979D: 0F        .byte $0F   ; 
- D 0 - I - 0x0197AE 06:979E: 00        .byte $00   ; 
- D 0 - I - 0x0197AF 06:979F: 00        .byte $00   ; 
- D 0 - I - 0x0197B0 06:97A0: 0F        .byte $0F   ; 
- D 0 - I - 0x0197B1 06:97A1: 0F        .byte $0F   ; 
- D 0 - I - 0x0197B2 06:97A2: 00        .byte $00   ; 
- D 0 - I - 0x0197B3 06:97A3: 00        .byte $00   ; 
- D 0 - I - 0x0197B4 06:97A4: 0F        .byte $0F   ; 
- D 0 - I - 0x0197B5 06:97A5: 0F        .byte $0F   ; 
- D 0 - I - 0x0197B6 06:97A6: 0F        .byte $0F   ; 
- D 0 - I - 0x0197B7 06:97A7: 0F        .byte $0F   ; 
- D 0 - I - 0x0197B8 06:97A8: 0F        .byte $0F   ; 
- D 0 - I - 0x0197B9 06:97A9: 0F        .byte $0F   ; 
- D 0 - I - 0x0197BA 06:97AA: 0F        .byte $0F   ; 
- D 0 - I - 0x0197BB 06:97AB: 0F        .byte $0F   ; 
- D 0 - I - 0x0197BC 06:97AC: 0F        .byte $0F   ; 
- D 0 - I - 0x0197BD 06:97AD: 08        .byte $08   ; 
- D 0 - I - 0x0197BE 06:97AE: 18        .byte $18   ; 
- D 0 - I - 0x0197BF 06:97AF: 28        .byte $28   ; 
- D 0 - I - 0x0197C0 06:97B0: 0F        .byte $0F   ; 
- D 0 - I - 0x0197C1 06:97B1: 12        .byte $12   ; 
- D 0 - I - 0x0197C2 06:97B2: 18        .byte $18   ; 
- D 0 - I - 0x0197C3 06:97B3: 28        .byte $28   ; 
- D 0 - I - 0x0197C4 06:97B4: 0F        .byte $0F   ; 
- D 0 - I - 0x0197C5 06:97B5: 08        .byte $08   ; 
- D 0 - I - 0x0197C6 06:97B6: 08        .byte $08   ; 
- D 0 - I - 0x0197C7 06:97B7: 18        .byte $18   ; 
- D 0 - I - 0x0197C8 06:97B8: 0F        .byte $0F   ; 
- D 0 - I - 0x0197C9 06:97B9: 11        .byte $11   ; 
- D 0 - I - 0x0197CA 06:97BA: 08        .byte $08   ; 
- D 0 - I - 0x0197CB 06:97BB: 18        .byte $18   ; 
- D 0 - I - 0x0197CC 06:97BC: 0F        .byte $0F   ; 
- D 0 - I - 0x0197CD 06:97BD: 0F        .byte $0F   ; 
- D 0 - I - 0x0197CE 06:97BE: 08        .byte $08   ; 
- D 0 - I - 0x0197CF 06:97BF: 08        .byte $08   ; 
- D 0 - I - 0x0197D0 06:97C0: 0F        .byte $0F   ; 
- D 0 - I - 0x0197D1 06:97C1: 02        .byte $02   ; 
- D 0 - I - 0x0197D2 06:97C2: 08        .byte $08   ; 
- D 0 - I - 0x0197D3 06:97C3: 08        .byte $08   ; 
- D 0 - I - 0x0197D4 06:97C4: 0F        .byte $0F   ; 
- D 0 - I - 0x0197D5 06:97C5: 0F        .byte $0F   ; 
- D 0 - I - 0x0197D6 06:97C6: 0F        .byte $0F   ; 
- D 0 - I - 0x0197D7 06:97C7: 08        .byte $08   ; 
- D 0 - I - 0x0197D8 06:97C8: 0F        .byte $0F   ; 
- D 0 - I - 0x0197D9 06:97C9: 0F        .byte $0F   ; 
- D 0 - I - 0x0197DA 06:97CA: 0F        .byte $0F   ; 
- D 0 - I - 0x0197DB 06:97CB: 0F        .byte $0F   ; 
- D 0 - I - 0x0197DC 06:97CC: 0F        .byte $0F   ; 
- D 0 - I - 0x0197DD 06:97CD: 06        .byte $06   ; 
- D 0 - I - 0x0197DE 06:97CE: 17        .byte $17   ; 
- D 0 - I - 0x0197DF 06:97CF: 16        .byte $16   ; 
- D 0 - I - 0x0197E0 06:97D0: 0F        .byte $0F   ; 
- D 0 - I - 0x0197E1 06:97D1: 06        .byte $06   ; 
- D 0 - I - 0x0197E2 06:97D2: 17        .byte $17   ; 
- D 0 - I - 0x0197E3 06:97D3: 16        .byte $16   ; 
- D 0 - I - 0x0197E4 06:97D4: 0F        .byte $0F   ; 
- D 0 - I - 0x0197E5 06:97D5: 07        .byte $07   ; 
- D 0 - I - 0x0197E6 06:97D6: 06        .byte $06   ; 
- D 0 - I - 0x0197E7 06:97D7: 16        .byte $16   ; 
- D 0 - I - 0x0197E8 06:97D8: 0F        .byte $0F   ; 
- D 0 - I - 0x0197E9 06:97D9: 07        .byte $07   ; 
- D 0 - I - 0x0197EA 06:97DA: 06        .byte $06   ; 
- D 0 - I - 0x0197EB 06:97DB: 16        .byte $16   ; 
- D 0 - I - 0x0197EC 06:97DC: 0F        .byte $0F   ; 
- D 0 - I - 0x0197ED 06:97DD: 0F        .byte $0F   ; 
- D 0 - I - 0x0197EE 06:97DE: 07        .byte $07   ; 
- D 0 - I - 0x0197EF 06:97DF: 06        .byte $06   ; 
- D 0 - I - 0x0197F0 06:97E0: 0F        .byte $0F   ; 
- D 0 - I - 0x0197F1 06:97E1: 0F        .byte $0F   ; 
- D 0 - I - 0x0197F2 06:97E2: 07        .byte $07   ; 
- D 0 - I - 0x0197F3 06:97E3: 06        .byte $06   ; 
- D 0 - I - 0x0197F4 06:97E4: 0F        .byte $0F   ; 
- D 0 - I - 0x0197F5 06:97E5: 0F        .byte $0F   ; 
- D 0 - I - 0x0197F6 06:97E6: 0F        .byte $0F   ; 
- D 0 - I - 0x0197F7 06:97E7: 0F        .byte $0F   ; 
- D 0 - I - 0x0197F8 06:97E8: 0F        .byte $0F   ; 
- D 0 - I - 0x0197F9 06:97E9: 0F        .byte $0F   ; 
- D 0 - I - 0x0197FA 06:97EA: 0F        .byte $0F   ; 
- D 0 - I - 0x0197FB 06:97EB: 0F        .byte $0F   ; 



_off010_97EC_05:
- D 0 - I - 0x0197FC 06:97EC: 3F        .byte $3F   ; 
- D 0 - I - 0x0197FD 06:97ED: 00        .byte $00   ; 
- D 0 - I - 0x0197FE 06:97EE: 20        .byte $20   ; 
- D 0 - I - 0x0197FF 06:97EF: 0F        .byte $0F   ; 
- D 0 - I - 0x019800 06:97F0: 30        .byte $30   ; 
- D 0 - I - 0x019801 06:97F1: 00        .byte $00   ; 
- D 0 - I - 0x019802 06:97F2: 12        .byte $12   ; 
- D 0 - I - 0x019803 06:97F3: 0F        .byte $0F   ; 
- D 0 - I - 0x019804 06:97F4: 16        .byte $16   ; 
- D 0 - I - 0x019805 06:97F5: 27        .byte $27   ; 
- D 0 - I - 0x019806 06:97F6: 36        .byte $36   ; 
- D 0 - I - 0x019807 06:97F7: 0F        .byte $0F   ; 
- D 0 - I - 0x019808 06:97F8: 0A        .byte $0A   ; 
- D 0 - I - 0x019809 06:97F9: 1A        .byte $1A   ; 
- D 0 - I - 0x01980A 06:97FA: 2A        .byte $2A   ; 
- D 0 - I - 0x01980B 06:97FB: 0F        .byte $0F   ; 
- D 0 - I - 0x01980C 06:97FC: 16        .byte $16   ; 
- D 0 - I - 0x01980D 06:97FD: 1A        .byte $1A   ; 
- D 0 - I - 0x01980E 06:97FE: 2A        .byte $2A   ; 
- D 0 - I - 0x01980F 06:97FF: 0F        .byte $0F   ; 
- D 0 - I - 0x019810 06:9800: 29        .byte $29   ; 
- D 0 - I - 0x019811 06:9801: 27        .byte $27   ; 
- D 0 - I - 0x019812 06:9802: 17        .byte $17   ; 
- D 0 - I - 0x019813 06:9803: 0F        .byte $0F   ; 
- D 0 - I - 0x019814 06:9804: 02        .byte $02   ; 
- D 0 - I - 0x019815 06:9805: 22        .byte $22   ; 
- D 0 - I - 0x019816 06:9806: 30        .byte $30   ; 
- D 0 - I - 0x019817 06:9807: 0F        .byte $0F   ; 
- D 0 - I - 0x019818 06:9808: 16        .byte $16   ; 
- D 0 - I - 0x019819 06:9809: 27        .byte $27   ; 
- D 0 - I - 0x01981A 06:980A: 30        .byte $30   ; 
- D 0 - I - 0x01981B 06:980B: 0F        .byte $0F   ; 
- D 0 - I - 0x01981C 06:980C: 0A        .byte $0A   ; 
- D 0 - I - 0x01981D 06:980D: 1A        .byte $1A   ; 
- D 0 - I - 0x01981E 06:980E: 2A        .byte $2A   ; 
- D 0 - I - 0x01981F 06:980F: FF        .byte $FF   ; 
- D 0 - I - 0x019820 06:9810: 03        .byte $03   ; 
- D 0 - I - 0x019821 06:9811: 05        .byte $05   ; 
- D 0 - I - 0x019822 06:9812: 06        .byte $06   ; 
- D 0 - I - 0x019823 06:9813: 08        .byte $08   ; 
- D 0 - I - 0x019824 06:9814: DD        .byte $DD   ; 
- D 0 - I - 0x019825 06:9815: 87        .byte $87   ; 
- D 0 - I - 0x019826 06:9816: C8        .byte $C8   ; 
- D 0 - I - 0x019827 06:9817: 8A        .byte $8A   ; 
- D 0 - I - 0x019828 06:9818: 89        .byte $89   ; 
- D 0 - I - 0x019829 06:9819: 02        .byte $02   ; 
- D 0 - I - 0x01982A 06:981A: F0        .byte $F0   ; 
- D 0 - I - 0x01982B 06:981B: 76        .byte $76   ; 
- D 0 - I - 0x01982C 06:981C: 14        .byte $14   ; 
- D 0 - I - 0x01982D 06:981D: FF        .byte $FF   ; 
- D 0 - I - 0x01982E 06:981E: 06        .byte $06   ; 
- D 0 - I - 0x01982F 06:981F: 05        .byte $05   ; 
- D 0 - I - 0x019830 06:9820: 07        .byte $07   ; 
- D 0 - I - 0x019831 06:9821: 04        .byte $04   ; 
- D 0 - I - 0x019832 06:9822: FF        .byte $FF   ; 
- D 0 - I - 0x019833 06:9823: FF        .byte $FF   ; 
- D 0 - I - 0x019834 06:9824: FF        .byte $FF   ; 
- D 0 - I - 0x019835 06:9825: FF        .byte $FF   ; 
- D 0 - I - 0x019836 06:9826: FF        .byte $FF   ; 
- D 0 - I - 0x019837 06:9827: FF        .byte $FF   ; 
- D 0 - I - 0x019838 06:9828: FF        .byte $FF   ; 
- D 0 - I - 0x019839 06:9829: FF        .byte $FF   ; 
- D 0 - I - 0x01983A 06:982A: 24        .byte $24   ; 
- D 0 - I - 0x01983B 06:982B: 00        .byte $00   ; 
- D 0 - I - 0x01983C 06:982C: 00        .byte $00   ; 
- D 0 - I - 0x01983D 06:982D: 00        .byte $00   ; 
- D 0 - I - 0x01983E 06:982E: 00        .byte $00   ; 
- D 0 - I - 0x01983F 06:982F: 00        .byte $00   ; 
- D 0 - I - 0x019840 06:9830: 00        .byte $00   ; 
- D 0 - I - 0x019841 06:9831: 72        .byte $72   ; 
- D 0 - I - 0x019842 06:9832: A6        .byte $A6   ; 
- D 0 - I - 0x019843 06:9833: EF        .byte $EF   ; 
- D 0 - I - 0x019844 06:9834: 7F        .byte $7F   ; 
- D 0 - I - 0x019845 06:9835: 00        .byte $00   ; 
- D 0 - I - 0x019846 06:9836: 00        .byte $00   ; 
- D 0 - I - 0x019847 06:9837: 00        .byte $00   ; 
- D 0 - I - 0x019848 06:9838: 00        .byte $00   ; 
- D 0 - I - 0x019849 06:9839: 00        .byte $00   ; 
- D 0 - I - 0x01984A 06:983A: 00        .byte $00   ; 
- D 0 - I - 0x01984B 06:983B: 20        .byte $20   ; 
- D 0 - I - 0x01984C 06:983C: 64        .byte $64   ; 
- D 0 - I - 0x01984D 06:983D: 04        .byte $04   ; 
- D 0 - I - 0x01984E 06:983E: FB        .byte $FB   ; 
- D 0 - I - 0x01984F 06:983F: 67        .byte $67   ; 
- D 0 - I - 0x019850 06:9840: FF        .byte $FF   ; 
- D 0 - I - 0x019851 06:9841: FB        .byte $FB   ; 
- D 0 - I - 0x019852 06:9842: 20        .byte $20   ; 
- D 0 - I - 0x019853 06:9843: 84        .byte $84   ; 
- D 0 - I - 0x019854 06:9844: 04        .byte $04   ; 
- D 0 - I - 0x019855 06:9845: FF        .byte $FF   ; 
- D 0 - I - 0x019856 06:9846: 67        .byte $67   ; 
- D 0 - I - 0x019857 06:9847: 67        .byte $67   ; 
- D 0 - I - 0x019858 06:9848: FF        .byte $FF   ; 
- D 0 - I - 0x019859 06:9849: 20        .byte $20   ; 
- D 0 - I - 0x01985A 06:984A: A5        .byte $A5   ; 
- D 0 - I - 0x01985B 06:984B: 03        .byte $03   ; 
- D 0 - I - 0x01985C 06:984C: FB        .byte $FB   ; 
- D 0 - I - 0x01985D 06:984D: FF        .byte $FF   ; 
- D 0 - I - 0x01985E 06:984E: FF        .byte $FF   ; 
- D 0 - I - 0x01985F 06:984F: 20        .byte $20   ; 
- D 0 - I - 0x019860 06:9850: C4        .byte $C4   ; 
- D 0 - I - 0x019861 06:9851: 04        .byte $04   ; 
- D 0 - I - 0x019862 06:9852: 67        .byte $67   ; 
- D 0 - I - 0x019863 06:9853: 67        .byte $67   ; 
- D 0 - I - 0x019864 06:9854: FF        .byte $FF   ; 
- D 0 - I - 0x019865 06:9855: FF        .byte $FF   ; 
- D 0 - I - 0x019866 06:9856: FF        .byte $FF   ; 
- D 0 - I - 0x019867 06:9857: FF        .byte $FF   ; 
- D 0 - I - 0x019868 06:9858: FF        .byte $FF   ; 
- D 0 - I - 0x019869 06:9859: FF        .byte $FF   ; 
- D 0 - I - 0x01986A 06:985A: FF        .byte $FF   ; 
- D 0 - I - 0x01986B 06:985B: FF        .byte $FF   ; 
- D 0 - I - 0x01986C 06:985C: FF        .byte $FF   ; 
- D 0 - I - 0x01986D 06:985D: FF        .byte $FF   ; 
- D 0 - I - 0x01986E 06:985E: FF        .byte $FF   ; 
- D 0 - I - 0x01986F 06:985F: FF        .byte $FF   ; 
- D 0 - I - 0x019870 06:9860: FF        .byte $FF   ; 
- D 0 - I - 0x019871 06:9861: FF        .byte $FF   ; 
- D 0 - I - 0x019872 06:9862: FF        .byte $FF   ; 
- D 0 - I - 0x019873 06:9863: FF        .byte $FF   ; 
- D 0 - I - 0x019874 06:9864: FF        .byte $FF   ; 
- D 0 - I - 0x019875 06:9865: FF        .byte $FF   ; 
- D 0 - I - 0x019876 06:9866: FF        .byte $FF   ; 
- D 0 - I - 0x019877 06:9867: FF        .byte $FF   ; 
- D 0 - I - 0x019878 06:9868: 0F        .byte $0F   ; 
- D 0 - I - 0x019879 06:9869: 0A        .byte $0A   ; 
- D 0 - I - 0x01987A 06:986A: 1A        .byte $1A   ; 
- D 0 - I - 0x01987B 06:986B: 2A        .byte $2A   ; 
- D 0 - I - 0x01987C 06:986C: 0F        .byte $0F   ; 
- D 0 - I - 0x01987D 06:986D: 16        .byte $16   ; 
- D 0 - I - 0x01987E 06:986E: 1A        .byte $1A   ; 
- D 0 - I - 0x01987F 06:986F: 2A        .byte $2A   ; 
- D 0 - I - 0x019880 06:9870: 0F        .byte $0F   ; 
- D 0 - I - 0x019881 06:9871: 0A        .byte $0A   ; 
- D 0 - I - 0x019882 06:9872: 0A        .byte $0A   ; 
- D 0 - I - 0x019883 06:9873: 1A        .byte $1A   ; 
- D 0 - I - 0x019884 06:9874: 0F        .byte $0F   ; 
- D 0 - I - 0x019885 06:9875: 17        .byte $17   ; 
- D 0 - I - 0x019886 06:9876: 0A        .byte $0A   ; 
- D 0 - I - 0x019887 06:9877: 1A        .byte $1A   ; 
- D 0 - I - 0x019888 06:9878: 0F        .byte $0F   ; 
- D 0 - I - 0x019889 06:9879: 0F        .byte $0F   ; 
- D 0 - I - 0x01988A 06:987A: 0A        .byte $0A   ; 
- D 0 - I - 0x01988B 06:987B: 0A        .byte $0A   ; 
- D 0 - I - 0x01988C 06:987C: 0F        .byte $0F   ; 
- D 0 - I - 0x01988D 06:987D: 06        .byte $06   ; 
- D 0 - I - 0x01988E 06:987E: 0A        .byte $0A   ; 
- D 0 - I - 0x01988F 06:987F: 0A        .byte $0A   ; 
- D 0 - I - 0x019890 06:9880: 0F        .byte $0F   ; 
- D 0 - I - 0x019891 06:9881: 0F        .byte $0F   ; 
- D 0 - I - 0x019892 06:9882: 0F        .byte $0F   ; 
- D 0 - I - 0x019893 06:9883: 0F        .byte $0F   ; 
- D 0 - I - 0x019894 06:9884: 0F        .byte $0F   ; 
- D 0 - I - 0x019895 06:9885: 0F        .byte $0F   ; 
- D 0 - I - 0x019896 06:9886: 0F        .byte $0F   ; 
- D 0 - I - 0x019897 06:9887: 0F        .byte $0F   ; 
- D 0 - I - 0x019898 06:9888: 0F        .byte $0F   ; 
- D 0 - I - 0x019899 06:9889: 00        .byte $00   ; 
- D 0 - I - 0x01989A 06:988A: 10        .byte $10   ; 
- D 0 - I - 0x01989B 06:988B: 30        .byte $30   ; 
- D 0 - I - 0x01989C 06:988C: 0F        .byte $0F   ; 
- D 0 - I - 0x01989D 06:988D: 00        .byte $00   ; 
- D 0 - I - 0x01989E 06:988E: 10        .byte $10   ; 
- D 0 - I - 0x01989F 06:988F: 30        .byte $30   ; 
- D 0 - I - 0x0198A0 06:9890: 0F        .byte $0F   ; 
- D 0 - I - 0x0198A1 06:9891: 00        .byte $00   ; 
- D 0 - I - 0x0198A2 06:9892: 00        .byte $00   ; 
- D 0 - I - 0x0198A3 06:9893: 10        .byte $10   ; 
- D 0 - I - 0x0198A4 06:9894: 0F        .byte $0F   ; 
- D 0 - I - 0x0198A5 06:9895: 00        .byte $00   ; 
- D 0 - I - 0x0198A6 06:9896: 00        .byte $00   ; 
- D 0 - I - 0x0198A7 06:9897: 10        .byte $10   ; 
- D 0 - I - 0x0198A8 06:9898: 0F        .byte $0F   ; 
- D 0 - I - 0x0198A9 06:9899: 0F        .byte $0F   ; 
- D 0 - I - 0x0198AA 06:989A: 00        .byte $00   ; 
- D 0 - I - 0x0198AB 06:989B: 00        .byte $00   ; 
- D 0 - I - 0x0198AC 06:989C: 0F        .byte $0F   ; 
- D 0 - I - 0x0198AD 06:989D: 0F        .byte $0F   ; 
- D 0 - I - 0x0198AE 06:989E: 00        .byte $00   ; 
- D 0 - I - 0x0198AF 06:989F: 00        .byte $00   ; 
- D 0 - I - 0x0198B0 06:98A0: 0F        .byte $0F   ; 
- D 0 - I - 0x0198B1 06:98A1: 0F        .byte $0F   ; 
- D 0 - I - 0x0198B2 06:98A2: 0F        .byte $0F   ; 
- D 0 - I - 0x0198B3 06:98A3: 0F        .byte $0F   ; 
- D 0 - I - 0x0198B4 06:98A4: 0F        .byte $0F   ; 
- D 0 - I - 0x0198B5 06:98A5: 0F        .byte $0F   ; 
- D 0 - I - 0x0198B6 06:98A6: 0F        .byte $0F   ; 
- D 0 - I - 0x0198B7 06:98A7: 0F        .byte $0F   ; 
- D 0 - I - 0x0198B8 06:98A8: 0F        .byte $0F   ; 
- D 0 - I - 0x0198B9 06:98A9: 0A        .byte $0A   ; 
- D 0 - I - 0x0198BA 06:98AA: 1A        .byte $1A   ; 
- D 0 - I - 0x0198BB 06:98AB: 2A        .byte $2A   ; 
- D 0 - I - 0x0198BC 06:98AC: 0F        .byte $0F   ; 
- D 0 - I - 0x0198BD 06:98AD: 16        .byte $16   ; 
- D 0 - I - 0x0198BE 06:98AE: 1A        .byte $1A   ; 
- D 0 - I - 0x0198BF 06:98AF: 2A        .byte $2A   ; 
- D 0 - I - 0x0198C0 06:98B0: 0F        .byte $0F   ; 
- D 0 - I - 0x0198C1 06:98B1: 0A        .byte $0A   ; 
- D 0 - I - 0x0198C2 06:98B2: 0A        .byte $0A   ; 
- D 0 - I - 0x0198C3 06:98B3: 1A        .byte $1A   ; 
- D 0 - I - 0x0198C4 06:98B4: 0F        .byte $0F   ; 
- D 0 - I - 0x0198C5 06:98B5: 17        .byte $17   ; 
- D 0 - I - 0x0198C6 06:98B6: 0A        .byte $0A   ; 
- D 0 - I - 0x0198C7 06:98B7: 1A        .byte $1A   ; 
- D 0 - I - 0x0198C8 06:98B8: 0F        .byte $0F   ; 
- D 0 - I - 0x0198C9 06:98B9: 0F        .byte $0F   ; 
- D 0 - I - 0x0198CA 06:98BA: 0A        .byte $0A   ; 
- D 0 - I - 0x0198CB 06:98BB: 0A        .byte $0A   ; 
- D 0 - I - 0x0198CC 06:98BC: 0F        .byte $0F   ; 
- D 0 - I - 0x0198CD 06:98BD: 06        .byte $06   ; 
- D 0 - I - 0x0198CE 06:98BE: 0A        .byte $0A   ; 
- D 0 - I - 0x0198CF 06:98BF: 0A        .byte $0A   ; 
- D 0 - I - 0x0198D0 06:98C0: 0F        .byte $0F   ; 
- D 0 - I - 0x0198D1 06:98C1: 0F        .byte $0F   ; 
- D 0 - I - 0x0198D2 06:98C2: 0F        .byte $0F   ; 
- D 0 - I - 0x0198D3 06:98C3: 0A        .byte $0A   ; 
- D 0 - I - 0x0198D4 06:98C4: 0F        .byte $0F   ; 
- D 0 - I - 0x0198D5 06:98C5: 0F        .byte $0F   ; 
- D 0 - I - 0x0198D6 06:98C6: 0F        .byte $0F   ; 
- D 0 - I - 0x0198D7 06:98C7: 0F        .byte $0F   ; 
- D 0 - I - 0x0198D8 06:98C8: 0F        .byte $0F   ; 
- D 0 - I - 0x0198D9 06:98C9: 06        .byte $06   ; 
- D 0 - I - 0x0198DA 06:98CA: 17        .byte $17   ; 
- D 0 - I - 0x0198DB 06:98CB: 16        .byte $16   ; 
- D 0 - I - 0x0198DC 06:98CC: 0F        .byte $0F   ; 
- D 0 - I - 0x0198DD 06:98CD: 06        .byte $06   ; 
- D 0 - I - 0x0198DE 06:98CE: 17        .byte $17   ; 
- D 0 - I - 0x0198DF 06:98CF: 16        .byte $16   ; 
- D 0 - I - 0x0198E0 06:98D0: 0F        .byte $0F   ; 
- D 0 - I - 0x0198E1 06:98D1: 07        .byte $07   ; 
- D 0 - I - 0x0198E2 06:98D2: 06        .byte $06   ; 
- D 0 - I - 0x0198E3 06:98D3: 16        .byte $16   ; 
- D 0 - I - 0x0198E4 06:98D4: 0F        .byte $0F   ; 
- D 0 - I - 0x0198E5 06:98D5: 07        .byte $07   ; 
- D 0 - I - 0x0198E6 06:98D6: 06        .byte $06   ; 
- D 0 - I - 0x0198E7 06:98D7: 16        .byte $16   ; 
- D 0 - I - 0x0198E8 06:98D8: 0F        .byte $0F   ; 
- D 0 - I - 0x0198E9 06:98D9: 0F        .byte $0F   ; 
- D 0 - I - 0x0198EA 06:98DA: 07        .byte $07   ; 
- D 0 - I - 0x0198EB 06:98DB: 06        .byte $06   ; 
- D 0 - I - 0x0198EC 06:98DC: 0F        .byte $0F   ; 
- D 0 - I - 0x0198ED 06:98DD: 0F        .byte $0F   ; 
- D 0 - I - 0x0198EE 06:98DE: 07        .byte $07   ; 
- D 0 - I - 0x0198EF 06:98DF: 06        .byte $06   ; 
- D 0 - I - 0x0198F0 06:98E0: 0F        .byte $0F   ; 
- D 0 - I - 0x0198F1 06:98E1: 0F        .byte $0F   ; 
- D 0 - I - 0x0198F2 06:98E2: 0F        .byte $0F   ; 
- D 0 - I - 0x0198F3 06:98E3: 0F        .byte $0F   ; 
- D 0 - I - 0x0198F4 06:98E4: 0F        .byte $0F   ; 
- D 0 - I - 0x0198F5 06:98E5: 0F        .byte $0F   ; 
- D 0 - I - 0x0198F6 06:98E6: 0F        .byte $0F   ; 
- D 0 - I - 0x0198F7 06:98E7: 0F        .byte $0F   ; 



_off010_98E8_06:
- D 0 - I - 0x0198F8 06:98E8: 3F        .byte $3F   ; 
- D 0 - I - 0x0198F9 06:98E9: 00        .byte $00   ; 
- D 0 - I - 0x0198FA 06:98EA: 20        .byte $20   ; 
- D 0 - I - 0x0198FB 06:98EB: 0F        .byte $0F   ; 
- D 0 - I - 0x0198FC 06:98EC: 30        .byte $30   ; 
- D 0 - I - 0x0198FD 06:98ED: 00        .byte $00   ; 
- D 0 - I - 0x0198FE 06:98EE: 12        .byte $12   ; 
- D 0 - I - 0x0198FF 06:98EF: 0F        .byte $0F   ; 
- D 0 - I - 0x019900 06:98F0: 16        .byte $16   ; 
- D 0 - I - 0x019901 06:98F1: 27        .byte $27   ; 
- D 0 - I - 0x019902 06:98F2: 36        .byte $36   ; 
- D 0 - I - 0x019903 06:98F3: 0F        .byte $0F   ; 
- D 0 - I - 0x019904 06:98F4: 08        .byte $08   ; 
- D 0 - I - 0x019905 06:98F5: 18        .byte $18   ; 
- D 0 - I - 0x019906 06:98F6: 28        .byte $28   ; 
- D 0 - I - 0x019907 06:98F7: 0F        .byte $0F   ; 
- D 0 - I - 0x019908 06:98F8: 16        .byte $16   ; 
- D 0 - I - 0x019909 06:98F9: 18        .byte $18   ; 
- D 0 - I - 0x01990A 06:98FA: 28        .byte $28   ; 
- D 0 - I - 0x01990B 06:98FB: 0F        .byte $0F   ; 
- D 0 - I - 0x01990C 06:98FC: 29        .byte $29   ; 
- D 0 - I - 0x01990D 06:98FD: 27        .byte $27   ; 
- D 0 - I - 0x01990E 06:98FE: 17        .byte $17   ; 
- D 0 - I - 0x01990F 06:98FF: 0F        .byte $0F   ; 
- D 0 - I - 0x019910 06:9900: 02        .byte $02   ; 
- D 0 - I - 0x019911 06:9901: 22        .byte $22   ; 
- D 0 - I - 0x019912 06:9902: 30        .byte $30   ; 
- D 0 - I - 0x019913 06:9903: 0F        .byte $0F   ; 
- D 0 - I - 0x019914 06:9904: 16        .byte $16   ; 
- D 0 - I - 0x019915 06:9905: 27        .byte $27   ; 
- D 0 - I - 0x019916 06:9906: 30        .byte $30   ; 
- D 0 - I - 0x019917 06:9907: 0F        .byte $0F   ; 
- D 0 - I - 0x019918 06:9908: 08        .byte $08   ; 
- D 0 - I - 0x019919 06:9909: 18        .byte $18   ; 
- D 0 - I - 0x01991A 06:990A: 28        .byte $28   ; 
- D 0 - I - 0x01991B 06:990B: FF        .byte $FF   ; 
- D 0 - I - 0x01991C 06:990C: 03        .byte $03   ; 
- D 0 - I - 0x01991D 06:990D: 05        .byte $05   ; 
- D 0 - I - 0x01991E 06:990E: 06        .byte $06   ; 
- D 0 - I - 0x01991F 06:990F: 08        .byte $08   ; 
- D 0 - I - 0x019920 06:9910: DD        .byte $DD   ; 
- D 0 - I - 0x019921 06:9911: 89        .byte $89   ; 
- D 0 - I - 0x019922 06:9912: D6        .byte $D6   ; 
- D 0 - I - 0x019923 06:9913: 26        .byte $26   ; 
- D 0 - I - 0x019924 06:9914: 2C        .byte $2C   ; 
- D 0 - I - 0x019925 06:9915: 0D        .byte $0D   ; 
- D 0 - I - 0x019926 06:9916: C8        .byte $C8   ; 
- D 0 - I - 0x019927 06:9917: 79        .byte $79   ; 
- D 0 - I - 0x019928 06:9918: 0C        .byte $0C   ; 
- D 0 - I - 0x019929 06:9919: FF        .byte $FF   ; 
- D 0 - I - 0x01992A 06:991A: 06        .byte $06   ; 
- D 0 - I - 0x01992B 06:991B: 06        .byte $06   ; 
- D 0 - I - 0x01992C 06:991C: 08        .byte $08   ; 
- D 0 - I - 0x01992D 06:991D: 75        .byte $75   ; 
- D 0 - I - 0x01992E 06:991E: FF        .byte $FF   ; 
- D 0 - I - 0x01992F 06:991F: FF        .byte $FF   ; 
- D 0 - I - 0x019930 06:9920: FF        .byte $FF   ; 
- D 0 - I - 0x019931 06:9921: FF        .byte $FF   ; 
- D 0 - I - 0x019932 06:9922: FF        .byte $FF   ; 
- D 0 - I - 0x019933 06:9923: FF        .byte $FF   ; 
- D 0 - I - 0x019934 06:9924: FF        .byte $FF   ; 
- D 0 - I - 0x019935 06:9925: FF        .byte $FF   ; 
- D 0 - I - 0x019936 06:9926: 1C        .byte $1C   ; 
- D 0 - I - 0x019937 06:9927: 00        .byte $00   ; 
- D 0 - I - 0x019938 06:9928: 00        .byte $00   ; 
- D 0 - I - 0x019939 06:9929: 00        .byte $00   ; 
- D 0 - I - 0x01993A 06:992A: 00        .byte $00   ; 
- D 0 - I - 0x01993B 06:992B: 00        .byte $00   ; 
- D 0 - I - 0x01993C 06:992C: 7F        .byte $7F   ; 
- D 0 - I - 0x01993D 06:992D: F1        .byte $F1   ; 
- D 0 - I - 0x01993E 06:992E: D3        .byte $D3   ; 
- D 0 - I - 0x01993F 06:992F: C0        .byte $C0   ; 
- D 0 - I - 0x019940 06:9930: F0        .byte $F0   ; 
- D 0 - I - 0x019941 06:9931: 60        .byte $60   ; 
- D 0 - I - 0x019942 06:9932: 00        .byte $00   ; 
- D 0 - I - 0x019943 06:9933: 00        .byte $00   ; 
- D 0 - I - 0x019944 06:9934: 00        .byte $00   ; 
- D 0 - I - 0x019945 06:9935: 00        .byte $00   ; 
- D 0 - I - 0x019946 06:9936: 00        .byte $00   ; 
- D 0 - I - 0x019947 06:9937: 20        .byte $20   ; 
- D 0 - I - 0x019948 06:9938: 63        .byte $63   ; 
- D 0 - I - 0x019949 06:9939: 06        .byte $06   ; 
- D 0 - I - 0x01994A 06:993A: FB        .byte $FB   ; 
- D 0 - I - 0x01994B 06:993B: FF        .byte $FF   ; 
- D 0 - I - 0x01994C 06:993C: FF        .byte $FF   ; 
- D 0 - I - 0x01994D 06:993D: FF        .byte $FF   ; 
- D 0 - I - 0x01994E 06:993E: FF        .byte $FF   ; 
- D 0 - I - 0x01994F 06:993F: FB        .byte $FB   ; 
- D 0 - I - 0x019950 06:9940: 20        .byte $20   ; 
- D 0 - I - 0x019951 06:9941: 83        .byte $83   ; 
- D 0 - I - 0x019952 06:9942: 06        .byte $06   ; 
- D 0 - I - 0x019953 06:9943: FF        .byte $FF   ; 
- D 0 - I - 0x019954 06:9944: FF        .byte $FF   ; 
- D 0 - I - 0x019955 06:9945: FB        .byte $FB   ; 
- D 0 - I - 0x019956 06:9946: 24        .byte $24   ; 
- D 0 - I - 0x019957 06:9947: FF        .byte $FF   ; 
- D 0 - I - 0x019958 06:9948: 67        .byte $67   ; 
- D 0 - I - 0x019959 06:9949: 20        .byte $20   ; 
- D 0 - I - 0x01995A 06:994A: A3        .byte $A3   ; 
- D 0 - I - 0x01995B 06:994B: 01        .byte $01   ; 
- D 0 - I - 0x01995C 06:994C: FF        .byte $FF   ; 
- D 0 - I - 0x01995D 06:994D: 20        .byte $20   ; 
- D 0 - I - 0x01995E 06:994E: C3        .byte $C3   ; 
- D 0 - I - 0x01995F 06:994F: 03        .byte $03   ; 
- D 0 - I - 0x019960 06:9950: FF        .byte $FF   ; 
- D 0 - I - 0x019961 06:9951: FB        .byte $FB   ; 
- D 0 - I - 0x019962 06:9952: FF        .byte $FF   ; 
- D 0 - I - 0x019963 06:9953: FF        .byte $FF   ; 
- D 0 - I - 0x019964 06:9954: FF        .byte $FF   ; 
- D 0 - I - 0x019965 06:9955: FF        .byte $FF   ; 
- D 0 - I - 0x019966 06:9956: FF        .byte $FF   ; 
- D 0 - I - 0x019967 06:9957: FF        .byte $FF   ; 
- D 0 - I - 0x019968 06:9958: FF        .byte $FF   ; 
- D 0 - I - 0x019969 06:9959: FF        .byte $FF   ; 
- D 0 - I - 0x01996A 06:995A: FF        .byte $FF   ; 
- D 0 - I - 0x01996B 06:995B: FF        .byte $FF   ; 
- D 0 - I - 0x01996C 06:995C: FF        .byte $FF   ; 
- D 0 - I - 0x01996D 06:995D: FF        .byte $FF   ; 
- D 0 - I - 0x01996E 06:995E: FF        .byte $FF   ; 
- D 0 - I - 0x01996F 06:995F: FF        .byte $FF   ; 
- D 0 - I - 0x019970 06:9960: FF        .byte $FF   ; 
- D 0 - I - 0x019971 06:9961: FF        .byte $FF   ; 
- D 0 - I - 0x019972 06:9962: FF        .byte $FF   ; 
- D 0 - I - 0x019973 06:9963: FF        .byte $FF   ; 
- D 0 - I - 0x019974 06:9964: 0F        .byte $0F   ; 
- D 0 - I - 0x019975 06:9965: 08        .byte $08   ; 
- D 0 - I - 0x019976 06:9966: 18        .byte $18   ; 
- D 0 - I - 0x019977 06:9967: 28        .byte $28   ; 
- D 0 - I - 0x019978 06:9968: 0F        .byte $0F   ; 
- D 0 - I - 0x019979 06:9969: 16        .byte $16   ; 
- D 0 - I - 0x01997A 06:996A: 18        .byte $18   ; 
- D 0 - I - 0x01997B 06:996B: 28        .byte $28   ; 
- D 0 - I - 0x01997C 06:996C: 0F        .byte $0F   ; 
- D 0 - I - 0x01997D 06:996D: 08        .byte $08   ; 
- D 0 - I - 0x01997E 06:996E: 08        .byte $08   ; 
- D 0 - I - 0x01997F 06:996F: 18        .byte $18   ; 
- D 0 - I - 0x019980 06:9970: 0F        .byte $0F   ; 
- D 0 - I - 0x019981 06:9971: 17        .byte $17   ; 
- D 0 - I - 0x019982 06:9972: 08        .byte $08   ; 
- D 0 - I - 0x019983 06:9973: 18        .byte $18   ; 
- D 0 - I - 0x019984 06:9974: 0F        .byte $0F   ; 
- D 0 - I - 0x019985 06:9975: 0F        .byte $0F   ; 
- D 0 - I - 0x019986 06:9976: 08        .byte $08   ; 
- D 0 - I - 0x019987 06:9977: 08        .byte $08   ; 
- D 0 - I - 0x019988 06:9978: 0F        .byte $0F   ; 
- D 0 - I - 0x019989 06:9979: 06        .byte $06   ; 
- D 0 - I - 0x01998A 06:997A: 08        .byte $08   ; 
- D 0 - I - 0x01998B 06:997B: 08        .byte $08   ; 
- D 0 - I - 0x01998C 06:997C: 0F        .byte $0F   ; 
- D 0 - I - 0x01998D 06:997D: 0F        .byte $0F   ; 
- D 0 - I - 0x01998E 06:997E: 0F        .byte $0F   ; 
- D 0 - I - 0x01998F 06:997F: 0F        .byte $0F   ; 
- D 0 - I - 0x019990 06:9980: 0F        .byte $0F   ; 
- D 0 - I - 0x019991 06:9981: 0F        .byte $0F   ; 
- D 0 - I - 0x019992 06:9982: 0F        .byte $0F   ; 
- D 0 - I - 0x019993 06:9983: 0F        .byte $0F   ; 
- D 0 - I - 0x019994 06:9984: 0F        .byte $0F   ; 
- D 0 - I - 0x019995 06:9985: 00        .byte $00   ; 
- D 0 - I - 0x019996 06:9986: 10        .byte $10   ; 
- D 0 - I - 0x019997 06:9987: 30        .byte $30   ; 
- D 0 - I - 0x019998 06:9988: 0F        .byte $0F   ; 
- D 0 - I - 0x019999 06:9989: 00        .byte $00   ; 
- D 0 - I - 0x01999A 06:998A: 10        .byte $10   ; 
- D 0 - I - 0x01999B 06:998B: 30        .byte $30   ; 
- D 0 - I - 0x01999C 06:998C: 0F        .byte $0F   ; 
- D 0 - I - 0x01999D 06:998D: 00        .byte $00   ; 
- D 0 - I - 0x01999E 06:998E: 00        .byte $00   ; 
- D 0 - I - 0x01999F 06:998F: 10        .byte $10   ; 
- D 0 - I - 0x0199A0 06:9990: 0F        .byte $0F   ; 
- D 0 - I - 0x0199A1 06:9991: 00        .byte $00   ; 
- D 0 - I - 0x0199A2 06:9992: 00        .byte $00   ; 
- D 0 - I - 0x0199A3 06:9993: 10        .byte $10   ; 
- D 0 - I - 0x0199A4 06:9994: 0F        .byte $0F   ; 
- D 0 - I - 0x0199A5 06:9995: 0F        .byte $0F   ; 
- D 0 - I - 0x0199A6 06:9996: 00        .byte $00   ; 
- D 0 - I - 0x0199A7 06:9997: 00        .byte $00   ; 
- D 0 - I - 0x0199A8 06:9998: 0F        .byte $0F   ; 
- D 0 - I - 0x0199A9 06:9999: 0F        .byte $0F   ; 
- D 0 - I - 0x0199AA 06:999A: 00        .byte $00   ; 
- D 0 - I - 0x0199AB 06:999B: 00        .byte $00   ; 
- D 0 - I - 0x0199AC 06:999C: 0F        .byte $0F   ; 
- D 0 - I - 0x0199AD 06:999D: 0F        .byte $0F   ; 
- D 0 - I - 0x0199AE 06:999E: 0F        .byte $0F   ; 
- D 0 - I - 0x0199AF 06:999F: 0F        .byte $0F   ; 
- D 0 - I - 0x0199B0 06:99A0: 0F        .byte $0F   ; 
- D 0 - I - 0x0199B1 06:99A1: 0F        .byte $0F   ; 
- D 0 - I - 0x0199B2 06:99A2: 0F        .byte $0F   ; 
- D 0 - I - 0x0199B3 06:99A3: 0F        .byte $0F   ; 
- D 0 - I - 0x0199B4 06:99A4: 0F        .byte $0F   ; 
- D 0 - I - 0x0199B5 06:99A5: 08        .byte $08   ; 
- D 0 - I - 0x0199B6 06:99A6: 18        .byte $18   ; 
- D 0 - I - 0x0199B7 06:99A7: 28        .byte $28   ; 
- D 0 - I - 0x0199B8 06:99A8: 0F        .byte $0F   ; 
- D 0 - I - 0x0199B9 06:99A9: 16        .byte $16   ; 
- D 0 - I - 0x0199BA 06:99AA: 18        .byte $18   ; 
- D 0 - I - 0x0199BB 06:99AB: 28        .byte $28   ; 
- D 0 - I - 0x0199BC 06:99AC: 0F        .byte $0F   ; 
- D 0 - I - 0x0199BD 06:99AD: 08        .byte $08   ; 
- D 0 - I - 0x0199BE 06:99AE: 08        .byte $08   ; 
- D 0 - I - 0x0199BF 06:99AF: 18        .byte $18   ; 
- D 0 - I - 0x0199C0 06:99B0: 0F        .byte $0F   ; 
- D 0 - I - 0x0199C1 06:99B1: 17        .byte $17   ; 
- D 0 - I - 0x0199C2 06:99B2: 08        .byte $08   ; 
- D 0 - I - 0x0199C3 06:99B3: 18        .byte $18   ; 
- D 0 - I - 0x0199C4 06:99B4: 0F        .byte $0F   ; 
- D 0 - I - 0x0199C5 06:99B5: 0F        .byte $0F   ; 
- D 0 - I - 0x0199C6 06:99B6: 08        .byte $08   ; 
- D 0 - I - 0x0199C7 06:99B7: 08        .byte $08   ; 
- D 0 - I - 0x0199C8 06:99B8: 0F        .byte $0F   ; 
- D 0 - I - 0x0199C9 06:99B9: 06        .byte $06   ; 
- D 0 - I - 0x0199CA 06:99BA: 08        .byte $08   ; 
- D 0 - I - 0x0199CB 06:99BB: 08        .byte $08   ; 
- D 0 - I - 0x0199CC 06:99BC: 0F        .byte $0F   ; 
- D 0 - I - 0x0199CD 06:99BD: 0F        .byte $0F   ; 
- D 0 - I - 0x0199CE 06:99BE: 0F        .byte $0F   ; 
- D 0 - I - 0x0199CF 06:99BF: 08        .byte $08   ; 
- D 0 - I - 0x0199D0 06:99C0: 0F        .byte $0F   ; 
- D 0 - I - 0x0199D1 06:99C1: 0F        .byte $0F   ; 
- D 0 - I - 0x0199D2 06:99C2: 0F        .byte $0F   ; 
- D 0 - I - 0x0199D3 06:99C3: 0F        .byte $0F   ; 
- D 0 - I - 0x0199D4 06:99C4: 0F        .byte $0F   ; 
- D 0 - I - 0x0199D5 06:99C5: 06        .byte $06   ; 
- D 0 - I - 0x0199D6 06:99C6: 17        .byte $17   ; 
- D 0 - I - 0x0199D7 06:99C7: 16        .byte $16   ; 
- D 0 - I - 0x0199D8 06:99C8: 0F        .byte $0F   ; 
- D 0 - I - 0x0199D9 06:99C9: 06        .byte $06   ; 
- D 0 - I - 0x0199DA 06:99CA: 17        .byte $17   ; 
- D 0 - I - 0x0199DB 06:99CB: 16        .byte $16   ; 
- D 0 - I - 0x0199DC 06:99CC: 0F        .byte $0F   ; 
- D 0 - I - 0x0199DD 06:99CD: 07        .byte $07   ; 
- D 0 - I - 0x0199DE 06:99CE: 06        .byte $06   ; 
- D 0 - I - 0x0199DF 06:99CF: 16        .byte $16   ; 
- D 0 - I - 0x0199E0 06:99D0: 0F        .byte $0F   ; 
- D 0 - I - 0x0199E1 06:99D1: 07        .byte $07   ; 
- D 0 - I - 0x0199E2 06:99D2: 06        .byte $06   ; 
- D 0 - I - 0x0199E3 06:99D3: 16        .byte $16   ; 
- D 0 - I - 0x0199E4 06:99D4: 0F        .byte $0F   ; 
- D 0 - I - 0x0199E5 06:99D5: 0F        .byte $0F   ; 
- D 0 - I - 0x0199E6 06:99D6: 07        .byte $07   ; 
- D 0 - I - 0x0199E7 06:99D7: 06        .byte $06   ; 
- D 0 - I - 0x0199E8 06:99D8: 0F        .byte $0F   ; 
- D 0 - I - 0x0199E9 06:99D9: 0F        .byte $0F   ; 
- D 0 - I - 0x0199EA 06:99DA: 07        .byte $07   ; 
- D 0 - I - 0x0199EB 06:99DB: 06        .byte $06   ; 
- D 0 - I - 0x0199EC 06:99DC: 0F        .byte $0F   ; 
- D 0 - I - 0x0199ED 06:99DD: 0F        .byte $0F   ; 
- D 0 - I - 0x0199EE 06:99DE: 0F        .byte $0F   ; 
- D 0 - I - 0x0199EF 06:99DF: 0F        .byte $0F   ; 
- D 0 - I - 0x0199F0 06:99E0: 0F        .byte $0F   ; 
- D 0 - I - 0x0199F1 06:99E1: 0F        .byte $0F   ; 
- D 0 - I - 0x0199F2 06:99E2: 0F        .byte $0F   ; 
- D 0 - I - 0x0199F3 06:99E3: 0F        .byte $0F   ; 



_off010_99E4_07:
- D 0 - I - 0x0199F4 06:99E4: 3F        .byte $3F   ; 
- D 0 - I - 0x0199F5 06:99E5: 00        .byte $00   ; 
- D 0 - I - 0x0199F6 06:99E6: 20        .byte $20   ; 
- D 0 - I - 0x0199F7 06:99E7: 0F        .byte $0F   ; 
- D 0 - I - 0x0199F8 06:99E8: 30        .byte $30   ; 
- D 0 - I - 0x0199F9 06:99E9: 00        .byte $00   ; 
- D 0 - I - 0x0199FA 06:99EA: 12        .byte $12   ; 
- D 0 - I - 0x0199FB 06:99EB: 0F        .byte $0F   ; 
- D 0 - I - 0x0199FC 06:99EC: 16        .byte $16   ; 
- D 0 - I - 0x0199FD 06:99ED: 27        .byte $27   ; 
- D 0 - I - 0x0199FE 06:99EE: 36        .byte $36   ; 
- D 0 - I - 0x0199FF 06:99EF: 0F        .byte $0F   ; 
- D 0 - I - 0x019A00 06:99F0: 0A        .byte $0A   ; 
- D 0 - I - 0x019A01 06:99F1: 1A        .byte $1A   ; 
- D 0 - I - 0x019A02 06:99F2: 2A        .byte $2A   ; 
- D 0 - I - 0x019A03 06:99F3: 0F        .byte $0F   ; 
- D 0 - I - 0x019A04 06:99F4: 12        .byte $12   ; 
- D 0 - I - 0x019A05 06:99F5: 1A        .byte $1A   ; 
- D 0 - I - 0x019A06 06:99F6: 2A        .byte $2A   ; 
- D 0 - I - 0x019A07 06:99F7: 0F        .byte $0F   ; 
- D 0 - I - 0x019A08 06:99F8: 29        .byte $29   ; 
- D 0 - I - 0x019A09 06:99F9: 27        .byte $27   ; 
- D 0 - I - 0x019A0A 06:99FA: 17        .byte $17   ; 
- D 0 - I - 0x019A0B 06:99FB: 0F        .byte $0F   ; 
- D 0 - I - 0x019A0C 06:99FC: 02        .byte $02   ; 
- D 0 - I - 0x019A0D 06:99FD: 22        .byte $22   ; 
- D 0 - I - 0x019A0E 06:99FE: 30        .byte $30   ; 
- D 0 - I - 0x019A0F 06:99FF: 0F        .byte $0F   ; 
- D 0 - I - 0x019A10 06:9A00: 16        .byte $16   ; 
- D 0 - I - 0x019A11 06:9A01: 27        .byte $27   ; 
- D 0 - I - 0x019A12 06:9A02: 30        .byte $30   ; 
- D 0 - I - 0x019A13 06:9A03: 0F        .byte $0F   ; 
- D 0 - I - 0x019A14 06:9A04: 0A        .byte $0A   ; 
- D 0 - I - 0x019A15 06:9A05: 1A        .byte $1A   ; 
- D 0 - I - 0x019A16 06:9A06: 2A        .byte $2A   ; 
- D 0 - I - 0x019A17 06:9A07: FF        .byte $FF   ; 
- D 0 - I - 0x019A18 06:9A08: 03        .byte $03   ; 
- D 0 - I - 0x019A19 06:9A09: 05        .byte $05   ; 
- D 0 - I - 0x019A1A 06:9A0A: 06        .byte $06   ; 
- D 0 - I - 0x019A1B 06:9A0B: 08        .byte $08   ; 
- D 0 - I - 0x019A1C 06:9A0C: DD        .byte $DD   ; 
- D 0 - I - 0x019A1D 06:9A0D: 89        .byte $89   ; 
- D 0 - I - 0x019A1E 06:9A0E: D6        .byte $D6   ; 
- D 0 - I - 0x019A1F 06:9A0F: 26        .byte $26   ; 
- D 0 - I - 0x019A20 06:9A10: 2C        .byte $2C   ; 
- D 0 - I - 0x019A21 06:9A11: 0D        .byte $0D   ; 
- D 0 - I - 0x019A22 06:9A12: C8        .byte $C8   ; 
- D 0 - I - 0x019A23 06:9A13: 79        .byte $79   ; 
- D 0 - I - 0x019A24 06:9A14: 2B        .byte $2B   ; 
- D 0 - I - 0x019A25 06:9A15: 7F        .byte $7F   ; 
- D 0 - I - 0x019A26 06:9A16: 07        .byte $07   ; 
- D 0 - I - 0x019A27 06:9A17: 07        .byte $07   ; 
- D 0 - I - 0x019A28 06:9A18: 7B        .byte $7B   ; 
- D 0 - I - 0x019A29 06:9A19: 4A        .byte $4A   ; 
- D 0 - I - 0x019A2A 06:9A1A: FF        .byte $FF   ; 
- D 0 - I - 0x019A2B 06:9A1B: FF        .byte $FF   ; 
- D 0 - I - 0x019A2C 06:9A1C: FF        .byte $FF   ; 
- D 0 - I - 0x019A2D 06:9A1D: FF        .byte $FF   ; 
- D 0 - I - 0x019A2E 06:9A1E: FF        .byte $FF   ; 
- D 0 - I - 0x019A2F 06:9A1F: FF        .byte $FF   ; 
- D 0 - I - 0x019A30 06:9A20: FF        .byte $FF   ; 
- D 0 - I - 0x019A31 06:9A21: FF        .byte $FF   ; 
- D 0 - I - 0x019A32 06:9A22: 2A        .byte $2A   ; 
- D 0 - I - 0x019A33 06:9A23: 00        .byte $00   ; 
- D 0 - I - 0x019A34 06:9A24: 00        .byte $00   ; 
- D 0 - I - 0x019A35 06:9A25: 00        .byte $00   ; 
- D 0 - I - 0x019A36 06:9A26: 00        .byte $00   ; 
- D 0 - I - 0x019A37 06:9A27: 00        .byte $00   ; 
- D 0 - I - 0x019A38 06:9A28: 7F        .byte $7F   ; 
- D 0 - I - 0x019A39 06:9A29: FF        .byte $FF   ; 
- D 0 - I - 0x019A3A 06:9A2A: B7        .byte $B7   ; 
- D 0 - I - 0x019A3B 06:9A2B: E6        .byte $E6   ; 
- D 0 - I - 0x019A3C 06:9A2C: C2        .byte $C2   ; 
- D 0 - I - 0x019A3D 06:9A2D: 82        .byte $82   ; 
- D 0 - I - 0x019A3E 06:9A2E: 00        .byte $00   ; 
- D 0 - I - 0x019A3F 06:9A2F: 00        .byte $00   ; 
- D 0 - I - 0x019A40 06:9A30: 00        .byte $00   ; 
- D 0 - I - 0x019A41 06:9A31: 00        .byte $00   ; 
- D 0 - I - 0x019A42 06:9A32: 00        .byte $00   ; 
- D 0 - I - 0x019A43 06:9A33: 20        .byte $20   ; 
- D 0 - I - 0x019A44 06:9A34: 63        .byte $63   ; 
- D 0 - I - 0x019A45 06:9A35: 06        .byte $06   ; 
- D 0 - I - 0x019A46 06:9A36: FB        .byte $FB   ; 
- D 0 - I - 0x019A47 06:9A37: FF        .byte $FF   ; 
- D 0 - I - 0x019A48 06:9A38: 67        .byte $67   ; 
- D 0 - I - 0x019A49 06:9A39: FF        .byte $FF   ; 
- D 0 - I - 0x019A4A 06:9A3A: FF        .byte $FF   ; 
- D 0 - I - 0x019A4B 06:9A3B: 67        .byte $67   ; 
- D 0 - I - 0x019A4C 06:9A3C: 20        .byte $20   ; 
- D 0 - I - 0x019A4D 06:9A3D: 83        .byte $83   ; 
- D 0 - I - 0x019A4E 06:9A3E: 04        .byte $04   ; 
- D 0 - I - 0x019A4F 06:9A3F: FF        .byte $FF   ; 
- D 0 - I - 0x019A50 06:9A40: FF        .byte $FF   ; 
- D 0 - I - 0x019A51 06:9A41: FF        .byte $FF   ; 
- D 0 - I - 0x019A52 06:9A42: 67        .byte $67   ; 
- D 0 - I - 0x019A53 06:9A43: 20        .byte $20   ; 
- D 0 - I - 0x019A54 06:9A44: A3        .byte $A3   ; 
- D 0 - I - 0x019A55 06:9A45: 04        .byte $04   ; 
- D 0 - I - 0x019A56 06:9A46: FF        .byte $FF   ; 
- D 0 - I - 0x019A57 06:9A47: FF        .byte $FF   ; 
- D 0 - I - 0x019A58 06:9A48: FB        .byte $FB   ; 
- D 0 - I - 0x019A59 06:9A49: FB        .byte $FB   ; 
- D 0 - I - 0x019A5A 06:9A4A: 20        .byte $20   ; 
- D 0 - I - 0x019A5B 06:9A4B: C3        .byte $C3   ; 
- D 0 - I - 0x019A5C 06:9A4C: 06        .byte $06   ; 
- D 0 - I - 0x019A5D 06:9A4D: FF        .byte $FF   ; 
- D 0 - I - 0x019A5E 06:9A4E: FF        .byte $FF   ; 
- D 0 - I - 0x019A5F 06:9A4F: FF        .byte $FF   ; 
- D 0 - I - 0x019A60 06:9A50: 67        .byte $67   ; 
- D 0 - I - 0x019A61 06:9A51: 67        .byte $67   ; 
- D 0 - I - 0x019A62 06:9A52: 67        .byte $67   ; 
- D 0 - I - 0x019A63 06:9A53: FF        .byte $FF   ; 
- D 0 - I - 0x019A64 06:9A54: FF        .byte $FF   ; 
- D 0 - I - 0x019A65 06:9A55: FF        .byte $FF   ; 
- D 0 - I - 0x019A66 06:9A56: FF        .byte $FF   ; 
- D 0 - I - 0x019A67 06:9A57: FF        .byte $FF   ; 
- D 0 - I - 0x019A68 06:9A58: FF        .byte $FF   ; 
- D 0 - I - 0x019A69 06:9A59: FF        .byte $FF   ; 
- D 0 - I - 0x019A6A 06:9A5A: FF        .byte $FF   ; 
- D 0 - I - 0x019A6B 06:9A5B: FF        .byte $FF   ; 
- D 0 - I - 0x019A6C 06:9A5C: FF        .byte $FF   ; 
- D 0 - I - 0x019A6D 06:9A5D: FF        .byte $FF   ; 
- D 0 - I - 0x019A6E 06:9A5E: FF        .byte $FF   ; 
- D 0 - I - 0x019A6F 06:9A5F: FF        .byte $FF   ; 
- D 0 - I - 0x019A70 06:9A60: 0F        .byte $0F   ; 
- D 0 - I - 0x019A71 06:9A61: 0A        .byte $0A   ; 
- D 0 - I - 0x019A72 06:9A62: 1A        .byte $1A   ; 
- D 0 - I - 0x019A73 06:9A63: 2A        .byte $2A   ; 
- D 0 - I - 0x019A74 06:9A64: 0F        .byte $0F   ; 
- D 0 - I - 0x019A75 06:9A65: 12        .byte $12   ; 
- D 0 - I - 0x019A76 06:9A66: 1A        .byte $1A   ; 
- D 0 - I - 0x019A77 06:9A67: 2A        .byte $2A   ; 
- D 0 - I - 0x019A78 06:9A68: 0F        .byte $0F   ; 
- D 0 - I - 0x019A79 06:9A69: 0A        .byte $0A   ; 
- D 0 - I - 0x019A7A 06:9A6A: 0A        .byte $0A   ; 
- D 0 - I - 0x019A7B 06:9A6B: 1A        .byte $1A   ; 
- D 0 - I - 0x019A7C 06:9A6C: 0F        .byte $0F   ; 
- D 0 - I - 0x019A7D 06:9A6D: 11        .byte $11   ; 
- D 0 - I - 0x019A7E 06:9A6E: 0A        .byte $0A   ; 
- D 0 - I - 0x019A7F 06:9A6F: 1A        .byte $1A   ; 
- D 0 - I - 0x019A80 06:9A70: 0F        .byte $0F   ; 
- D 0 - I - 0x019A81 06:9A71: 0F        .byte $0F   ; 
- D 0 - I - 0x019A82 06:9A72: 0A        .byte $0A   ; 
- D 0 - I - 0x019A83 06:9A73: 0A        .byte $0A   ; 
- D 0 - I - 0x019A84 06:9A74: 0F        .byte $0F   ; 
- D 0 - I - 0x019A85 06:9A75: 02        .byte $02   ; 
- D 0 - I - 0x019A86 06:9A76: 0A        .byte $0A   ; 
- D 0 - I - 0x019A87 06:9A77: 0A        .byte $0A   ; 
- D 0 - I - 0x019A88 06:9A78: 0F        .byte $0F   ; 
- D 0 - I - 0x019A89 06:9A79: 0F        .byte $0F   ; 
- D 0 - I - 0x019A8A 06:9A7A: 0F        .byte $0F   ; 
- D 0 - I - 0x019A8B 06:9A7B: 0F        .byte $0F   ; 
- D 0 - I - 0x019A8C 06:9A7C: 0F        .byte $0F   ; 
- D 0 - I - 0x019A8D 06:9A7D: 0F        .byte $0F   ; 
- D 0 - I - 0x019A8E 06:9A7E: 0F        .byte $0F   ; 
- D 0 - I - 0x019A8F 06:9A7F: 0F        .byte $0F   ; 
- D 0 - I - 0x019A90 06:9A80: 0F        .byte $0F   ; 
- D 0 - I - 0x019A91 06:9A81: 00        .byte $00   ; 
- D 0 - I - 0x019A92 06:9A82: 10        .byte $10   ; 
- D 0 - I - 0x019A93 06:9A83: 30        .byte $30   ; 
- D 0 - I - 0x019A94 06:9A84: 0F        .byte $0F   ; 
- D 0 - I - 0x019A95 06:9A85: 00        .byte $00   ; 
- D 0 - I - 0x019A96 06:9A86: 10        .byte $10   ; 
- D 0 - I - 0x019A97 06:9A87: 30        .byte $30   ; 
- D 0 - I - 0x019A98 06:9A88: 0F        .byte $0F   ; 
- D 0 - I - 0x019A99 06:9A89: 00        .byte $00   ; 
- D 0 - I - 0x019A9A 06:9A8A: 00        .byte $00   ; 
- D 0 - I - 0x019A9B 06:9A8B: 10        .byte $10   ; 
- D 0 - I - 0x019A9C 06:9A8C: 0F        .byte $0F   ; 
- D 0 - I - 0x019A9D 06:9A8D: 00        .byte $00   ; 
- D 0 - I - 0x019A9E 06:9A8E: 00        .byte $00   ; 
- D 0 - I - 0x019A9F 06:9A8F: 10        .byte $10   ; 
- D 0 - I - 0x019AA0 06:9A90: 0F        .byte $0F   ; 
- D 0 - I - 0x019AA1 06:9A91: 0F        .byte $0F   ; 
- D 0 - I - 0x019AA2 06:9A92: 00        .byte $00   ; 
- D 0 - I - 0x019AA3 06:9A93: 00        .byte $00   ; 
- D 0 - I - 0x019AA4 06:9A94: 0F        .byte $0F   ; 
- D 0 - I - 0x019AA5 06:9A95: 0F        .byte $0F   ; 
- D 0 - I - 0x019AA6 06:9A96: 00        .byte $00   ; 
- D 0 - I - 0x019AA7 06:9A97: 00        .byte $00   ; 
- D 0 - I - 0x019AA8 06:9A98: 0F        .byte $0F   ; 
- D 0 - I - 0x019AA9 06:9A99: 0F        .byte $0F   ; 
- D 0 - I - 0x019AAA 06:9A9A: 0F        .byte $0F   ; 
- D 0 - I - 0x019AAB 06:9A9B: 0F        .byte $0F   ; 
- D 0 - I - 0x019AAC 06:9A9C: 0F        .byte $0F   ; 
- D 0 - I - 0x019AAD 06:9A9D: 0F        .byte $0F   ; 
- D 0 - I - 0x019AAE 06:9A9E: 0F        .byte $0F   ; 
- D 0 - I - 0x019AAF 06:9A9F: 0F        .byte $0F   ; 
- D 0 - I - 0x019AB0 06:9AA0: 0F        .byte $0F   ; 
- D 0 - I - 0x019AB1 06:9AA1: 0A        .byte $0A   ; 
- D 0 - I - 0x019AB2 06:9AA2: 1A        .byte $1A   ; 
- D 0 - I - 0x019AB3 06:9AA3: 2A        .byte $2A   ; 
- D 0 - I - 0x019AB4 06:9AA4: 0F        .byte $0F   ; 
- D 0 - I - 0x019AB5 06:9AA5: 12        .byte $12   ; 
- D 0 - I - 0x019AB6 06:9AA6: 1A        .byte $1A   ; 
- D 0 - I - 0x019AB7 06:9AA7: 2A        .byte $2A   ; 
- D 0 - I - 0x019AB8 06:9AA8: 0F        .byte $0F   ; 
- D 0 - I - 0x019AB9 06:9AA9: 0A        .byte $0A   ; 
- D 0 - I - 0x019ABA 06:9AAA: 0A        .byte $0A   ; 
- D 0 - I - 0x019ABB 06:9AAB: 1A        .byte $1A   ; 
- D 0 - I - 0x019ABC 06:9AAC: 0F        .byte $0F   ; 
- D 0 - I - 0x019ABD 06:9AAD: 11        .byte $11   ; 
- D 0 - I - 0x019ABE 06:9AAE: 0A        .byte $0A   ; 
- D 0 - I - 0x019ABF 06:9AAF: 1A        .byte $1A   ; 
- D 0 - I - 0x019AC0 06:9AB0: 0F        .byte $0F   ; 
- D 0 - I - 0x019AC1 06:9AB1: 0F        .byte $0F   ; 
- D 0 - I - 0x019AC2 06:9AB2: 0A        .byte $0A   ; 
- D 0 - I - 0x019AC3 06:9AB3: 0A        .byte $0A   ; 
- D 0 - I - 0x019AC4 06:9AB4: 0F        .byte $0F   ; 
- D 0 - I - 0x019AC5 06:9AB5: 02        .byte $02   ; 
- D 0 - I - 0x019AC6 06:9AB6: 0A        .byte $0A   ; 
- D 0 - I - 0x019AC7 06:9AB7: 0A        .byte $0A   ; 
- D 0 - I - 0x019AC8 06:9AB8: 0F        .byte $0F   ; 
- D 0 - I - 0x019AC9 06:9AB9: 0F        .byte $0F   ; 
- D 0 - I - 0x019ACA 06:9ABA: 0F        .byte $0F   ; 
- D 0 - I - 0x019ACB 06:9ABB: 0A        .byte $0A   ; 
- D 0 - I - 0x019ACC 06:9ABC: 0F        .byte $0F   ; 
- D 0 - I - 0x019ACD 06:9ABD: 0F        .byte $0F   ; 
- D 0 - I - 0x019ACE 06:9ABE: 0F        .byte $0F   ; 
- D 0 - I - 0x019ACF 06:9ABF: 0F        .byte $0F   ; 
- D 0 - I - 0x019AD0 06:9AC0: 0F        .byte $0F   ; 
- D 0 - I - 0x019AD1 06:9AC1: 06        .byte $06   ; 
- D 0 - I - 0x019AD2 06:9AC2: 17        .byte $17   ; 
- D 0 - I - 0x019AD3 06:9AC3: 16        .byte $16   ; 
- D 0 - I - 0x019AD4 06:9AC4: 0F        .byte $0F   ; 
- D 0 - I - 0x019AD5 06:9AC5: 06        .byte $06   ; 
- D 0 - I - 0x019AD6 06:9AC6: 17        .byte $17   ; 
- D 0 - I - 0x019AD7 06:9AC7: 16        .byte $16   ; 
- D 0 - I - 0x019AD8 06:9AC8: 0F        .byte $0F   ; 
- D 0 - I - 0x019AD9 06:9AC9: 07        .byte $07   ; 
- D 0 - I - 0x019ADA 06:9ACA: 06        .byte $06   ; 
- D 0 - I - 0x019ADB 06:9ACB: 16        .byte $16   ; 
- D 0 - I - 0x019ADC 06:9ACC: 0F        .byte $0F   ; 
- D 0 - I - 0x019ADD 06:9ACD: 07        .byte $07   ; 
- D 0 - I - 0x019ADE 06:9ACE: 06        .byte $06   ; 
- D 0 - I - 0x019ADF 06:9ACF: 16        .byte $16   ; 
- D 0 - I - 0x019AE0 06:9AD0: 0F        .byte $0F   ; 
- D 0 - I - 0x019AE1 06:9AD1: 0F        .byte $0F   ; 
- D 0 - I - 0x019AE2 06:9AD2: 07        .byte $07   ; 
- D 0 - I - 0x019AE3 06:9AD3: 06        .byte $06   ; 
- D 0 - I - 0x019AE4 06:9AD4: 0F        .byte $0F   ; 
- D 0 - I - 0x019AE5 06:9AD5: 0F        .byte $0F   ; 
- D 0 - I - 0x019AE6 06:9AD6: 07        .byte $07   ; 
- D 0 - I - 0x019AE7 06:9AD7: 06        .byte $06   ; 
- D 0 - I - 0x019AE8 06:9AD8: 0F        .byte $0F   ; 
- D 0 - I - 0x019AE9 06:9AD9: 0F        .byte $0F   ; 
- D 0 - I - 0x019AEA 06:9ADA: 0F        .byte $0F   ; 
- D 0 - I - 0x019AEB 06:9ADB: 0F        .byte $0F   ; 
- D 0 - I - 0x019AEC 06:9ADC: 0F        .byte $0F   ; 
- D 0 - I - 0x019AED 06:9ADD: 0F        .byte $0F   ; 
- D 0 - I - 0x019AEE 06:9ADE: 0F        .byte $0F   ; 
- D 0 - I - 0x019AEF 06:9ADF: 0F        .byte $0F   ; 



_off010_9AE0_08:
- D 0 - I - 0x019AF0 06:9AE0: 3F        .byte $3F   ; 
- D 0 - I - 0x019AF1 06:9AE1: 00        .byte $00   ; 
- D 0 - I - 0x019AF2 06:9AE2: 20        .byte $20   ; 
- D 0 - I - 0x019AF3 06:9AE3: 0F        .byte $0F   ; 
- D 0 - I - 0x019AF4 06:9AE4: 30        .byte $30   ; 
- D 0 - I - 0x019AF5 06:9AE5: 00        .byte $00   ; 
- D 0 - I - 0x019AF6 06:9AE6: 12        .byte $12   ; 
- D 0 - I - 0x019AF7 06:9AE7: 0F        .byte $0F   ; 
- D 0 - I - 0x019AF8 06:9AE8: 16        .byte $16   ; 
- D 0 - I - 0x019AF9 06:9AE9: 27        .byte $27   ; 
- D 0 - I - 0x019AFA 06:9AEA: 36        .byte $36   ; 
- D 0 - I - 0x019AFB 06:9AEB: 0F        .byte $0F   ; 
- D 0 - I - 0x019AFC 06:9AEC: 00        .byte $00   ; 
- D 0 - I - 0x019AFD 06:9AED: 10        .byte $10   ; 
- D 0 - I - 0x019AFE 06:9AEE: 30        .byte $30   ; 
- D 0 - I - 0x019AFF 06:9AEF: 0F        .byte $0F   ; 
- D 0 - I - 0x019B00 06:9AF0: 22        .byte $22   ; 
- D 0 - I - 0x019B01 06:9AF1: 10        .byte $10   ; 
- D 0 - I - 0x019B02 06:9AF2: 30        .byte $30   ; 
- D 0 - I - 0x019B03 06:9AF3: 0F        .byte $0F   ; 
- D 0 - I - 0x019B04 06:9AF4: 29        .byte $29   ; 
- D 0 - I - 0x019B05 06:9AF5: 27        .byte $27   ; 
- D 0 - I - 0x019B06 06:9AF6: 17        .byte $17   ; 
- D 0 - I - 0x019B07 06:9AF7: 0F        .byte $0F   ; 
- D 0 - I - 0x019B08 06:9AF8: 02        .byte $02   ; 
- D 0 - I - 0x019B09 06:9AF9: 22        .byte $22   ; 
- D 0 - I - 0x019B0A 06:9AFA: 30        .byte $30   ; 
- D 0 - I - 0x019B0B 06:9AFB: 0F        .byte $0F   ; 
- D 0 - I - 0x019B0C 06:9AFC: 16        .byte $16   ; 
- D 0 - I - 0x019B0D 06:9AFD: 27        .byte $27   ; 
- D 0 - I - 0x019B0E 06:9AFE: 30        .byte $30   ; 
- D 0 - I - 0x019B0F 06:9AFF: 0F        .byte $0F   ; 
- D 0 - I - 0x019B10 06:9B00: 00        .byte $00   ; 
- D 0 - I - 0x019B11 06:9B01: 10        .byte $10   ; 
- D 0 - I - 0x019B12 06:9B02: 30        .byte $30   ; 
- D 0 - I - 0x019B13 06:9B03: FF        .byte $FF   ; 
- D 0 - I - 0x019B14 06:9B04: 03        .byte $03   ; 
- D 0 - I - 0x019B15 06:9B05: 05        .byte $05   ; 
- D 0 - I - 0x019B16 06:9B06: 06        .byte $06   ; 
- D 0 - I - 0x019B17 06:9B07: 08        .byte $08   ; 
- D 0 - I - 0x019B18 06:9B08: DD        .byte $DD   ; 
- D 0 - I - 0x019B19 06:9B09: 89        .byte $89   ; 
- D 0 - I - 0x019B1A 06:9B0A: D6        .byte $D6   ; 
- D 0 - I - 0x019B1B 06:9B0B: 26        .byte $26   ; 
- D 0 - I - 0x019B1C 06:9B0C: 2C        .byte $2C   ; 
- D 0 - I - 0x019B1D 06:9B0D: 0A        .byte $0A   ; 
- D 0 - I - 0x019B1E 06:9B0E: B0        .byte $B0   ; 
- D 0 - I - 0x019B1F 06:9B0F: 7E        .byte $7E   ; 
- D 0 - I - 0x019B20 06:9B10: 2C        .byte $2C   ; 
- D 0 - I - 0x019B21 06:9B11: 7F        .byte $7F   ; 
- D 0 - I - 0x019B22 06:9B12: 07        .byte $07   ; 
- D 0 - I - 0x019B23 06:9B13: 08        .byte $08   ; 
- D 0 - I - 0x019B24 06:9B14: 2F        .byte $2F   ; 
- D 0 - I - 0x019B25 06:9B15: 0F        .byte $0F   ; 
- D 0 - I - 0x019B26 06:9B16: 6F        .byte $6F   ; 
- D 0 - I - 0x019B27 06:9B17: FF        .byte $FF   ; 
- D 0 - I - 0x019B28 06:9B18: FF        .byte $FF   ; 
- D 0 - I - 0x019B29 06:9B19: FF        .byte $FF   ; 
- D 0 - I - 0x019B2A 06:9B1A: FF        .byte $FF   ; 
- D 0 - I - 0x019B2B 06:9B1B: FF        .byte $FF   ; 
- D 0 - I - 0x019B2C 06:9B1C: FF        .byte $FF   ; 
- D 0 - I - 0x019B2D 06:9B1D: FF        .byte $FF   ; 
- D 0 - I - 0x019B2E 06:9B1E: 3C        .byte $3C   ; 
- D 0 - I - 0x019B2F 06:9B1F: 00        .byte $00   ; 
- D 0 - I - 0x019B30 06:9B20: 00        .byte $00   ; 
- D 0 - I - 0x019B31 06:9B21: 00        .byte $00   ; 
- D 0 - I - 0x019B32 06:9B22: 00        .byte $00   ; 
- D 0 - I - 0x019B33 06:9B23: 00        .byte $00   ; 
- D 0 - I - 0x019B34 06:9B24: 18        .byte $18   ; 
- D 0 - I - 0x019B35 06:9B25: 3D        .byte $3D   ; 
- D 0 - I - 0x019B36 06:9B26: 5D        .byte $5D   ; 
- D 0 - I - 0x019B37 06:9B27: FF        .byte $FF   ; 
- D 0 - I - 0x019B38 06:9B28: 55        .byte $55   ; 
- D 0 - I - 0x019B39 06:9B29: 00        .byte $00   ; 
- D 0 - I - 0x019B3A 06:9B2A: 00        .byte $00   ; 
- D 0 - I - 0x019B3B 06:9B2B: 00        .byte $00   ; 
- D 0 - I - 0x019B3C 06:9B2C: 00        .byte $00   ; 
- D 0 - I - 0x019B3D 06:9B2D: 00        .byte $00   ; 
- D 0 - I - 0x019B3E 06:9B2E: 00        .byte $00   ; 
- D 0 - I - 0x019B3F 06:9B2F: 20        .byte $20   ; 
- D 0 - I - 0x019B40 06:9B30: 65        .byte $65   ; 
- D 0 - I - 0x019B41 06:9B31: 03        .byte $03   ; 
- D 0 - I - 0x019B42 06:9B32: FB        .byte $FB   ; 
- D 0 - I - 0x019B43 06:9B33: FF        .byte $FF   ; 
- D 0 - I - 0x019B44 06:9B34: FB        .byte $FB   ; 
- D 0 - I - 0x019B45 06:9B35: 20        .byte $20   ; 
- D 0 - I - 0x019B46 06:9B36: 83        .byte $83   ; 
- D 0 - I - 0x019B47 06:9B37: 05        .byte $05   ; 
- D 0 - I - 0x019B48 06:9B38: FB        .byte $FB   ; 
- D 0 - I - 0x019B49 06:9B39: FF        .byte $FF   ; 
- D 0 - I - 0x019B4A 06:9B3A: FB        .byte $FB   ; 
- D 0 - I - 0x019B4B 06:9B3B: FF        .byte $FF   ; 
- D 0 - I - 0x019B4C 06:9B3C: FB        .byte $FB   ; 
- D 0 - I - 0x019B4D 06:9B3D: 20        .byte $20   ; 
- D 0 - I - 0x019B4E 06:9B3E: A3        .byte $A3   ; 
- D 0 - I - 0x019B4F 06:9B3F: 05        .byte $05   ; 
- D 0 - I - 0x019B50 06:9B40: 67        .byte $67   ; 
- D 0 - I - 0x019B51 06:9B41: FF        .byte $FF   ; 
- D 0 - I - 0x019B52 06:9B42: FF        .byte $FF   ; 
- D 0 - I - 0x019B53 06:9B43: FF        .byte $FF   ; 
- D 0 - I - 0x019B54 06:9B44: FB        .byte $FB   ; 
- D 0 - I - 0x019B55 06:9B45: 20        .byte $20   ; 
- D 0 - I - 0x019B56 06:9B46: C4        .byte $C4   ; 
- D 0 - I - 0x019B57 06:9B47: 04        .byte $04   ; 
- D 0 - I - 0x019B58 06:9B48: FB        .byte $FB   ; 
- D 0 - I - 0x019B59 06:9B49: FB        .byte $FB   ; 
- D 0 - I - 0x019B5A 06:9B4A: FF        .byte $FF   ; 
- D 0 - I - 0x019B5B 06:9B4B: FB        .byte $FB   ; 
- D 0 - I - 0x019B5C 06:9B4C: FF        .byte $FF   ; 
- D 0 - I - 0x019B5D 06:9B4D: FF        .byte $FF   ; 
- D 0 - I - 0x019B5E 06:9B4E: FF        .byte $FF   ; 
- D 0 - I - 0x019B5F 06:9B4F: FF        .byte $FF   ; 
- D 0 - I - 0x019B60 06:9B50: FF        .byte $FF   ; 
- D 0 - I - 0x019B61 06:9B51: FF        .byte $FF   ; 
- D 0 - I - 0x019B62 06:9B52: FF        .byte $FF   ; 
- D 0 - I - 0x019B63 06:9B53: FF        .byte $FF   ; 
- D 0 - I - 0x019B64 06:9B54: FF        .byte $FF   ; 
- D 0 - I - 0x019B65 06:9B55: FF        .byte $FF   ; 
- D 0 - I - 0x019B66 06:9B56: FF        .byte $FF   ; 
- D 0 - I - 0x019B67 06:9B57: FF        .byte $FF   ; 
- D 0 - I - 0x019B68 06:9B58: FF        .byte $FF   ; 
- D 0 - I - 0x019B69 06:9B59: FF        .byte $FF   ; 
- D 0 - I - 0x019B6A 06:9B5A: FF        .byte $FF   ; 
- D 0 - I - 0x019B6B 06:9B5B: FF        .byte $FF   ; 
- D 0 - I - 0x019B6C 06:9B5C: 0F        .byte $0F   ; 
- D 0 - I - 0x019B6D 06:9B5D: 00        .byte $00   ; 
- D 0 - I - 0x019B6E 06:9B5E: 10        .byte $10   ; 
- D 0 - I - 0x019B6F 06:9B5F: 30        .byte $30   ; 
- D 0 - I - 0x019B70 06:9B60: 0F        .byte $0F   ; 
- D 0 - I - 0x019B71 06:9B61: 22        .byte $22   ; 
- D 0 - I - 0x019B72 06:9B62: 10        .byte $10   ; 
- D 0 - I - 0x019B73 06:9B63: 30        .byte $30   ; 
- D 0 - I - 0x019B74 06:9B64: 0F        .byte $0F   ; 
- D 0 - I - 0x019B75 06:9B65: 00        .byte $00   ; 
- D 0 - I - 0x019B76 06:9B66: 00        .byte $00   ; 
- D 0 - I - 0x019B77 06:9B67: 10        .byte $10   ; 
- D 0 - I - 0x019B78 06:9B68: 0F        .byte $0F   ; 
- D 0 - I - 0x019B79 06:9B69: 12        .byte $12   ; 
- D 0 - I - 0x019B7A 06:9B6A: 00        .byte $00   ; 
- D 0 - I - 0x019B7B 06:9B6B: 10        .byte $10   ; 
- D 0 - I - 0x019B7C 06:9B6C: 0F        .byte $0F   ; 
- D 0 - I - 0x019B7D 06:9B6D: 0F        .byte $0F   ; 
- D 0 - I - 0x019B7E 06:9B6E: 00        .byte $00   ; 
- D 0 - I - 0x019B7F 06:9B6F: 00        .byte $00   ; 
- D 0 - I - 0x019B80 06:9B70: 0F        .byte $0F   ; 
- D 0 - I - 0x019B81 06:9B71: 02        .byte $02   ; 
- D 0 - I - 0x019B82 06:9B72: 00        .byte $00   ; 
- D 0 - I - 0x019B83 06:9B73: 00        .byte $00   ; 
- D 0 - I - 0x019B84 06:9B74: 0F        .byte $0F   ; 
- D 0 - I - 0x019B85 06:9B75: 0F        .byte $0F   ; 
- D 0 - I - 0x019B86 06:9B76: 0F        .byte $0F   ; 
- D 0 - I - 0x019B87 06:9B77: 0F        .byte $0F   ; 
- D 0 - I - 0x019B88 06:9B78: 0F        .byte $0F   ; 
- D 0 - I - 0x019B89 06:9B79: 0F        .byte $0F   ; 
- D 0 - I - 0x019B8A 06:9B7A: 0F        .byte $0F   ; 
- D 0 - I - 0x019B8B 06:9B7B: 0F        .byte $0F   ; 
- D 0 - I - 0x019B8C 06:9B7C: 0F        .byte $0F   ; 
- D 0 - I - 0x019B8D 06:9B7D: 00        .byte $00   ; 
- D 0 - I - 0x019B8E 06:9B7E: 10        .byte $10   ; 
- D 0 - I - 0x019B8F 06:9B7F: 30        .byte $30   ; 
- D 0 - I - 0x019B90 06:9B80: 0F        .byte $0F   ; 
- D 0 - I - 0x019B91 06:9B81: 00        .byte $00   ; 
- D 0 - I - 0x019B92 06:9B82: 10        .byte $10   ; 
- D 0 - I - 0x019B93 06:9B83: 30        .byte $30   ; 
- D 0 - I - 0x019B94 06:9B84: 0F        .byte $0F   ; 
- D 0 - I - 0x019B95 06:9B85: 00        .byte $00   ; 
- D 0 - I - 0x019B96 06:9B86: 00        .byte $00   ; 
- D 0 - I - 0x019B97 06:9B87: 10        .byte $10   ; 
- D 0 - I - 0x019B98 06:9B88: 0F        .byte $0F   ; 
- D 0 - I - 0x019B99 06:9B89: 00        .byte $00   ; 
- D 0 - I - 0x019B9A 06:9B8A: 00        .byte $00   ; 
- D 0 - I - 0x019B9B 06:9B8B: 10        .byte $10   ; 
- D 0 - I - 0x019B9C 06:9B8C: 0F        .byte $0F   ; 
- D 0 - I - 0x019B9D 06:9B8D: 0F        .byte $0F   ; 
- D 0 - I - 0x019B9E 06:9B8E: 00        .byte $00   ; 
- D 0 - I - 0x019B9F 06:9B8F: 00        .byte $00   ; 
- D 0 - I - 0x019BA0 06:9B90: 0F        .byte $0F   ; 
- D 0 - I - 0x019BA1 06:9B91: 0F        .byte $0F   ; 
- D 0 - I - 0x019BA2 06:9B92: 00        .byte $00   ; 
- D 0 - I - 0x019BA3 06:9B93: 00        .byte $00   ; 
- D 0 - I - 0x019BA4 06:9B94: 0F        .byte $0F   ; 
- D 0 - I - 0x019BA5 06:9B95: 0F        .byte $0F   ; 
- D 0 - I - 0x019BA6 06:9B96: 0F        .byte $0F   ; 
- D 0 - I - 0x019BA7 06:9B97: 0F        .byte $0F   ; 
- D 0 - I - 0x019BA8 06:9B98: 0F        .byte $0F   ; 
- D 0 - I - 0x019BA9 06:9B99: 0F        .byte $0F   ; 
- D 0 - I - 0x019BAA 06:9B9A: 0F        .byte $0F   ; 
- D 0 - I - 0x019BAB 06:9B9B: 0F        .byte $0F   ; 
- D 0 - I - 0x019BAC 06:9B9C: 0F        .byte $0F   ; 
- D 0 - I - 0x019BAD 06:9B9D: 00        .byte $00   ; 
- D 0 - I - 0x019BAE 06:9B9E: 10        .byte $10   ; 
- D 0 - I - 0x019BAF 06:9B9F: 30        .byte $30   ; 
- D 0 - I - 0x019BB0 06:9BA0: 0F        .byte $0F   ; 
- D 0 - I - 0x019BB1 06:9BA1: 22        .byte $22   ; 
- D 0 - I - 0x019BB2 06:9BA2: 10        .byte $10   ; 
- D 0 - I - 0x019BB3 06:9BA3: 30        .byte $30   ; 
- D 0 - I - 0x019BB4 06:9BA4: 0F        .byte $0F   ; 
- D 0 - I - 0x019BB5 06:9BA5: 00        .byte $00   ; 
- D 0 - I - 0x019BB6 06:9BA6: 00        .byte $00   ; 
- D 0 - I - 0x019BB7 06:9BA7: 10        .byte $10   ; 
- D 0 - I - 0x019BB8 06:9BA8: 0F        .byte $0F   ; 
- D 0 - I - 0x019BB9 06:9BA9: 12        .byte $12   ; 
- D 0 - I - 0x019BBA 06:9BAA: 00        .byte $00   ; 
- D 0 - I - 0x019BBB 06:9BAB: 10        .byte $10   ; 
- D 0 - I - 0x019BBC 06:9BAC: 0F        .byte $0F   ; 
- D 0 - I - 0x019BBD 06:9BAD: 0F        .byte $0F   ; 
- D 0 - I - 0x019BBE 06:9BAE: 00        .byte $00   ; 
- D 0 - I - 0x019BBF 06:9BAF: 00        .byte $00   ; 
- D 0 - I - 0x019BC0 06:9BB0: 0F        .byte $0F   ; 
- D 0 - I - 0x019BC1 06:9BB1: 02        .byte $02   ; 
- D 0 - I - 0x019BC2 06:9BB2: 00        .byte $00   ; 
- D 0 - I - 0x019BC3 06:9BB3: 00        .byte $00   ; 
- D 0 - I - 0x019BC4 06:9BB4: 0F        .byte $0F   ; 
- D 0 - I - 0x019BC5 06:9BB5: 0F        .byte $0F   ; 
- D 0 - I - 0x019BC6 06:9BB6: 0F        .byte $0F   ; 
- D 0 - I - 0x019BC7 06:9BB7: 00        .byte $00   ; 
- D 0 - I - 0x019BC8 06:9BB8: 0F        .byte $0F   ; 
- D 0 - I - 0x019BC9 06:9BB9: 0F        .byte $0F   ; 
- D 0 - I - 0x019BCA 06:9BBA: 0F        .byte $0F   ; 
- D 0 - I - 0x019BCB 06:9BBB: 0F        .byte $0F   ; 
- D 0 - I - 0x019BCC 06:9BBC: 0F        .byte $0F   ; 
- D 0 - I - 0x019BCD 06:9BBD: 06        .byte $06   ; 
- D 0 - I - 0x019BCE 06:9BBE: 17        .byte $17   ; 
- D 0 - I - 0x019BCF 06:9BBF: 16        .byte $16   ; 
- D 0 - I - 0x019BD0 06:9BC0: 0F        .byte $0F   ; 
- D 0 - I - 0x019BD1 06:9BC1: 06        .byte $06   ; 
- D 0 - I - 0x019BD2 06:9BC2: 17        .byte $17   ; 
- D 0 - I - 0x019BD3 06:9BC3: 16        .byte $16   ; 
- D 0 - I - 0x019BD4 06:9BC4: 0F        .byte $0F   ; 
- D 0 - I - 0x019BD5 06:9BC5: 07        .byte $07   ; 
- D 0 - I - 0x019BD6 06:9BC6: 06        .byte $06   ; 
- D 0 - I - 0x019BD7 06:9BC7: 16        .byte $16   ; 
- D 0 - I - 0x019BD8 06:9BC8: 0F        .byte $0F   ; 
- D 0 - I - 0x019BD9 06:9BC9: 07        .byte $07   ; 
- D 0 - I - 0x019BDA 06:9BCA: 06        .byte $06   ; 
- D 0 - I - 0x019BDB 06:9BCB: 16        .byte $16   ; 
- D 0 - I - 0x019BDC 06:9BCC: 0F        .byte $0F   ; 
- D 0 - I - 0x019BDD 06:9BCD: 0F        .byte $0F   ; 
- D 0 - I - 0x019BDE 06:9BCE: 07        .byte $07   ; 
- D 0 - I - 0x019BDF 06:9BCF: 06        .byte $06   ; 
- D 0 - I - 0x019BE0 06:9BD0: 0F        .byte $0F   ; 
- D 0 - I - 0x019BE1 06:9BD1: 0F        .byte $0F   ; 
- D 0 - I - 0x019BE2 06:9BD2: 07        .byte $07   ; 
- D 0 - I - 0x019BE3 06:9BD3: 06        .byte $06   ; 
- D 0 - I - 0x019BE4 06:9BD4: 0F        .byte $0F   ; 
- D 0 - I - 0x019BE5 06:9BD5: 0F        .byte $0F   ; 
- D 0 - I - 0x019BE6 06:9BD6: 0F        .byte $0F   ; 
- D 0 - I - 0x019BE7 06:9BD7: 0F        .byte $0F   ; 
- D 0 - I - 0x019BE8 06:9BD8: 0F        .byte $0F   ; 
- D 0 - I - 0x019BE9 06:9BD9: 0F        .byte $0F   ; 
- D 0 - I - 0x019BEA 06:9BDA: 0F        .byte $0F   ; 
- D 0 - I - 0x019BEB 06:9BDB: 0F        .byte $0F   ; 



_off010_9BDC_09:
- D 0 - I - 0x019BEC 06:9BDC: 3F        .byte $3F   ; 
- D 0 - I - 0x019BED 06:9BDD: 00        .byte $00   ; 
- D 0 - I - 0x019BEE 06:9BDE: 20        .byte $20   ; 
- D 0 - I - 0x019BEF 06:9BDF: 0F        .byte $0F   ; 
- D 0 - I - 0x019BF0 06:9BE0: 30        .byte $30   ; 
- D 0 - I - 0x019BF1 06:9BE1: 00        .byte $00   ; 
- D 0 - I - 0x019BF2 06:9BE2: 12        .byte $12   ; 
- D 0 - I - 0x019BF3 06:9BE3: 0F        .byte $0F   ; 
- D 0 - I - 0x019BF4 06:9BE4: 16        .byte $16   ; 
- D 0 - I - 0x019BF5 06:9BE5: 27        .byte $27   ; 
- D 0 - I - 0x019BF6 06:9BE6: 36        .byte $36   ; 
- D 0 - I - 0x019BF7 06:9BE7: 0F        .byte $0F   ; 
- D 0 - I - 0x019BF8 06:9BE8: 00        .byte $00   ; 
- D 0 - I - 0x019BF9 06:9BE9: 10        .byte $10   ; 
- D 0 - I - 0x019BFA 06:9BEA: 30        .byte $30   ; 
- D 0 - I - 0x019BFB 06:9BEB: 0F        .byte $0F   ; 
- D 0 - I - 0x019BFC 06:9BEC: 16        .byte $16   ; 
- D 0 - I - 0x019BFD 06:9BED: 10        .byte $10   ; 
- D 0 - I - 0x019BFE 06:9BEE: 30        .byte $30   ; 
- D 0 - I - 0x019BFF 06:9BEF: 0F        .byte $0F   ; 
- D 0 - I - 0x019C00 06:9BF0: 29        .byte $29   ; 
- D 0 - I - 0x019C01 06:9BF1: 27        .byte $27   ; 
- D 0 - I - 0x019C02 06:9BF2: 17        .byte $17   ; 
- D 0 - I - 0x019C03 06:9BF3: 0F        .byte $0F   ; 
- D 0 - I - 0x019C04 06:9BF4: 02        .byte $02   ; 
- D 0 - I - 0x019C05 06:9BF5: 22        .byte $22   ; 
- D 0 - I - 0x019C06 06:9BF6: 30        .byte $30   ; 
- D 0 - I - 0x019C07 06:9BF7: 0F        .byte $0F   ; 
- D 0 - I - 0x019C08 06:9BF8: 16        .byte $16   ; 
- D 0 - I - 0x019C09 06:9BF9: 27        .byte $27   ; 
- D 0 - I - 0x019C0A 06:9BFA: 30        .byte $30   ; 
- D 0 - I - 0x019C0B 06:9BFB: 0F        .byte $0F   ; 
- D 0 - I - 0x019C0C 06:9BFC: 0F        .byte $0F   ; 
- D 0 - I - 0x019C0D 06:9BFD: 10        .byte $10   ; 
- D 0 - I - 0x019C0E 06:9BFE: 30        .byte $30   ; 
- D 0 - I - 0x019C0F 06:9BFF: FF        .byte $FF   ; 
- D 0 - I - 0x019C10 06:9C00: 03        .byte $03   ; 
- D 0 - I - 0x019C11 06:9C01: 05        .byte $05   ; 
- D 0 - I - 0x019C12 06:9C02: 06        .byte $06   ; 
- D 0 - I - 0x019C13 06:9C03: 08        .byte $08   ; 
- D 0 - I - 0x019C14 06:9C04: DD        .byte $DD   ; 
- D 0 - I - 0x019C15 06:9C05: 89        .byte $89   ; 
- D 0 - I - 0x019C16 06:9C06: D6        .byte $D6   ; 
- D 0 - I - 0x019C17 06:9C07: 26        .byte $26   ; 
- D 0 - I - 0x019C18 06:9C08: 2C        .byte $2C   ; 
- D 0 - I - 0x019C19 06:9C09: 04        .byte $04   ; 
- D 0 - I - 0x019C1A 06:9C0A: 00        .byte $00   ; 
- D 0 - I - 0x019C1B 06:9C0B: 76        .byte $76   ; 
- D 0 - I - 0x019C1C 06:9C0C: 32        .byte $32   ; 
- D 0 - I - 0x019C1D 06:9C0D: 7F        .byte $7F   ; 
- D 0 - I - 0x019C1E 06:9C0E: 07        .byte $07   ; 
- D 0 - I - 0x019C1F 06:9C0F: 09        .byte $09   ; 
- D 0 - I - 0x019C20 06:9C10: 60        .byte $60   ; 
- D 0 - I - 0x019C21 06:9C11: 70        .byte $70   ; 
- D 0 - I - 0x019C22 06:9C12: 72        .byte $72   ; 
- D 0 - I - 0x019C23 06:9C13: 75        .byte $75   ; 
- D 0 - I - 0x019C24 06:9C14: 67        .byte $67   ; 
- D 0 - I - 0x019C25 06:9C15: 77        .byte $77   ; 
- D 0 - I - 0x019C26 06:9C16: 00        .byte $00   ; 
- D 0 - I - 0x019C27 06:9C17: 4F        .byte $4F   ; 
- D 0 - I - 0x019C28 06:9C18: FF        .byte $FF   ; 
- D 0 - I - 0x019C29 06:9C19: FF        .byte $FF   ; 
- D 0 - I - 0x019C2A 06:9C1A: 42        .byte $42   ; 
- D 0 - I - 0x019C2B 06:9C1B: 00        .byte $00   ; 
- D 0 - I - 0x019C2C 06:9C1C: 00        .byte $00   ; 
- D 0 - I - 0x019C2D 06:9C1D: 00        .byte $00   ; 
- D 0 - I - 0x019C2E 06:9C1E: 00        .byte $00   ; 
- D 0 - I - 0x019C2F 06:9C1F: 7C        .byte $7C   ; 
- D 0 - I - 0x019C30 06:9C20: FF        .byte $FF   ; 
- D 0 - I - 0x019C31 06:9C21: EE        .byte $EE   ; 
- D 0 - I - 0x019C32 06:9C22: FF        .byte $FF   ; 
- D 0 - I - 0x019C33 06:9C23: FF        .byte $FF   ; 
- D 0 - I - 0x019C34 06:9C24: EE        .byte $EE   ; 
- D 0 - I - 0x019C35 06:9C25: FF        .byte $FF   ; 
- D 0 - I - 0x019C36 06:9C26: 7C        .byte $7C   ; 
- D 0 - I - 0x019C37 06:9C27: 00        .byte $00   ; 
- D 0 - I - 0x019C38 06:9C28: 00        .byte $00   ; 
- D 0 - I - 0x019C39 06:9C29: 00        .byte $00   ; 
- D 0 - I - 0x019C3A 06:9C2A: 00        .byte $00   ; 
- D 0 - I - 0x019C3B 06:9C2B: 20        .byte $20   ; 
- D 0 - I - 0x019C3C 06:9C2C: 62        .byte $62   ; 
- D 0 - I - 0x019C3D 06:9C2D: 08        .byte $08   ; 
- D 0 - I - 0x019C3E 06:9C2E: FB        .byte $FB   ; 
- D 0 - I - 0x019C3F 06:9C2F: FF        .byte $FF   ; 
- D 0 - I - 0x019C40 06:9C30: FF        .byte $FF   ; 
- D 0 - I - 0x019C41 06:9C31: FF        .byte $FF   ; 
- D 0 - I - 0x019C42 06:9C32: FF        .byte $FF   ; 
- D 0 - I - 0x019C43 06:9C33: FF        .byte $FF   ; 
- D 0 - I - 0x019C44 06:9C34: FF        .byte $FF   ; 
- D 0 - I - 0x019C45 06:9C35: FB        .byte $FB   ; 
- D 0 - I - 0x019C46 06:9C36: 20        .byte $20   ; 
- D 0 - I - 0x019C47 06:9C37: 82        .byte $82   ; 
- D 0 - I - 0x019C48 06:9C38: 08        .byte $08   ; 
- D 0 - I - 0x019C49 06:9C39: FF        .byte $FF   ; 
- D 0 - I - 0x019C4A 06:9C3A: FF        .byte $FF   ; 
- D 0 - I - 0x019C4B 06:9C3B: 67        .byte $67   ; 
- D 0 - I - 0x019C4C 06:9C3C: FF        .byte $FF   ; 
- D 0 - I - 0x019C4D 06:9C3D: FF        .byte $FF   ; 
- D 0 - I - 0x019C4E 06:9C3E: 67        .byte $67   ; 
- D 0 - I - 0x019C4F 06:9C3F: FF        .byte $FF   ; 
- D 0 - I - 0x019C50 06:9C40: FF        .byte $FF   ; 
- D 0 - I - 0x019C51 06:9C41: 20        .byte $20   ; 
- D 0 - I - 0x019C52 06:9C42: A2        .byte $A2   ; 
- D 0 - I - 0x019C53 06:9C43: 48        .byte $48   ; 
- D 0 - I - 0x019C54 06:9C44: FF        .byte $FF   ; 
- D 0 - I - 0x019C55 06:9C45: 20        .byte $20   ; 
- D 0 - I - 0x019C56 06:9C46: C3        .byte $C3   ; 
- D 0 - I - 0x019C57 06:9C47: 06        .byte $06   ; 
- D 0 - I - 0x019C58 06:9C48: FF        .byte $FF   ; 
- D 0 - I - 0x019C59 06:9C49: 67        .byte $67   ; 
- D 0 - I - 0x019C5A 06:9C4A: FF        .byte $FF   ; 
- D 0 - I - 0x019C5B 06:9C4B: FF        .byte $FF   ; 
- D 0 - I - 0x019C5C 06:9C4C: 67        .byte $67   ; 
- D 0 - I - 0x019C5D 06:9C4D: FF        .byte $FF   ; 
- D 0 - I - 0x019C5E 06:9C4E: FF        .byte $FF   ; 
- D 0 - I - 0x019C5F 06:9C4F: FF        .byte $FF   ; 
- D 0 - I - 0x019C60 06:9C50: FF        .byte $FF   ; 
- D 0 - I - 0x019C61 06:9C51: FF        .byte $FF   ; 
- D 0 - I - 0x019C62 06:9C52: FF        .byte $FF   ; 
- D 0 - I - 0x019C63 06:9C53: FF        .byte $FF   ; 
- D 0 - I - 0x019C64 06:9C54: FF        .byte $FF   ; 
- D 0 - I - 0x019C65 06:9C55: FF        .byte $FF   ; 
- D 0 - I - 0x019C66 06:9C56: FF        .byte $FF   ; 
- D 0 - I - 0x019C67 06:9C57: FF        .byte $FF   ; 
- D 0 - I - 0x019C68 06:9C58: 0F        .byte $0F   ; 
- D 0 - I - 0x019C69 06:9C59: 00        .byte $00   ; 
- D 0 - I - 0x019C6A 06:9C5A: 10        .byte $10   ; 
- D 0 - I - 0x019C6B 06:9C5B: 30        .byte $30   ; 
- D 0 - I - 0x019C6C 06:9C5C: 0F        .byte $0F   ; 
- D 0 - I - 0x019C6D 06:9C5D: 16        .byte $16   ; 
- D 0 - I - 0x019C6E 06:9C5E: 10        .byte $10   ; 
- D 0 - I - 0x019C6F 06:9C5F: 30        .byte $30   ; 
- D 0 - I - 0x019C70 06:9C60: 0F        .byte $0F   ; 
- D 0 - I - 0x019C71 06:9C61: 00        .byte $00   ; 
- D 0 - I - 0x019C72 06:9C62: 00        .byte $00   ; 
- D 0 - I - 0x019C73 06:9C63: 10        .byte $10   ; 
- D 0 - I - 0x019C74 06:9C64: 0F        .byte $0F   ; 
- D 0 - I - 0x019C75 06:9C65: 17        .byte $17   ; 
- D 0 - I - 0x019C76 06:9C66: 00        .byte $00   ; 
- D 0 - I - 0x019C77 06:9C67: 10        .byte $10   ; 
- D 0 - I - 0x019C78 06:9C68: 0F        .byte $0F   ; 
- D 0 - I - 0x019C79 06:9C69: 0F        .byte $0F   ; 
- D 0 - I - 0x019C7A 06:9C6A: 00        .byte $00   ; 
- D 0 - I - 0x019C7B 06:9C6B: 00        .byte $00   ; 
- D 0 - I - 0x019C7C 06:9C6C: 0F        .byte $0F   ; 
- D 0 - I - 0x019C7D 06:9C6D: 06        .byte $06   ; 
- D 0 - I - 0x019C7E 06:9C6E: 00        .byte $00   ; 
- D 0 - I - 0x019C7F 06:9C6F: 00        .byte $00   ; 
- D 0 - I - 0x019C80 06:9C70: 0F        .byte $0F   ; 
- D 0 - I - 0x019C81 06:9C71: 0F        .byte $0F   ; 
- D 0 - I - 0x019C82 06:9C72: 0F        .byte $0F   ; 
- D 0 - I - 0x019C83 06:9C73: 0F        .byte $0F   ; 
- D 0 - I - 0x019C84 06:9C74: 0F        .byte $0F   ; 
- D 0 - I - 0x019C85 06:9C75: 0F        .byte $0F   ; 
- D 0 - I - 0x019C86 06:9C76: 0F        .byte $0F   ; 
- D 0 - I - 0x019C87 06:9C77: 0F        .byte $0F   ; 
- D 0 - I - 0x019C88 06:9C78: 0F        .byte $0F   ; 
- D 0 - I - 0x019C89 06:9C79: 00        .byte $00   ; 
- D 0 - I - 0x019C8A 06:9C7A: 10        .byte $10   ; 
- D 0 - I - 0x019C8B 06:9C7B: 30        .byte $30   ; 
- D 0 - I - 0x019C8C 06:9C7C: 0F        .byte $0F   ; 
- D 0 - I - 0x019C8D 06:9C7D: 00        .byte $00   ; 
- D 0 - I - 0x019C8E 06:9C7E: 10        .byte $10   ; 
- D 0 - I - 0x019C8F 06:9C7F: 30        .byte $30   ; 
- D 0 - I - 0x019C90 06:9C80: 0F        .byte $0F   ; 
- D 0 - I - 0x019C91 06:9C81: 00        .byte $00   ; 
- D 0 - I - 0x019C92 06:9C82: 00        .byte $00   ; 
- D 0 - I - 0x019C93 06:9C83: 10        .byte $10   ; 
- D 0 - I - 0x019C94 06:9C84: 0F        .byte $0F   ; 
- D 0 - I - 0x019C95 06:9C85: 00        .byte $00   ; 
- D 0 - I - 0x019C96 06:9C86: 00        .byte $00   ; 
- D 0 - I - 0x019C97 06:9C87: 10        .byte $10   ; 
- D 0 - I - 0x019C98 06:9C88: 0F        .byte $0F   ; 
- D 0 - I - 0x019C99 06:9C89: 0F        .byte $0F   ; 
- D 0 - I - 0x019C9A 06:9C8A: 00        .byte $00   ; 
- D 0 - I - 0x019C9B 06:9C8B: 00        .byte $00   ; 
- D 0 - I - 0x019C9C 06:9C8C: 0F        .byte $0F   ; 
- D 0 - I - 0x019C9D 06:9C8D: 0F        .byte $0F   ; 
- D 0 - I - 0x019C9E 06:9C8E: 00        .byte $00   ; 
- D 0 - I - 0x019C9F 06:9C8F: 00        .byte $00   ; 
- D 0 - I - 0x019CA0 06:9C90: 0F        .byte $0F   ; 
- D 0 - I - 0x019CA1 06:9C91: 0F        .byte $0F   ; 
- D 0 - I - 0x019CA2 06:9C92: 0F        .byte $0F   ; 
- D 0 - I - 0x019CA3 06:9C93: 0F        .byte $0F   ; 
- D 0 - I - 0x019CA4 06:9C94: 0F        .byte $0F   ; 
- D 0 - I - 0x019CA5 06:9C95: 0F        .byte $0F   ; 
- D 0 - I - 0x019CA6 06:9C96: 0F        .byte $0F   ; 
- D 0 - I - 0x019CA7 06:9C97: 0F        .byte $0F   ; 
- D 0 - I - 0x019CA8 06:9C98: 0F        .byte $0F   ; 
- D 0 - I - 0x019CA9 06:9C99: 00        .byte $00   ; 
- D 0 - I - 0x019CAA 06:9C9A: 10        .byte $10   ; 
- D 0 - I - 0x019CAB 06:9C9B: 30        .byte $30   ; 
- D 0 - I - 0x019CAC 06:9C9C: 0F        .byte $0F   ; 
- D 0 - I - 0x019CAD 06:9C9D: 16        .byte $16   ; 
- D 0 - I - 0x019CAE 06:9C9E: 10        .byte $10   ; 
- D 0 - I - 0x019CAF 06:9C9F: 30        .byte $30   ; 
- D 0 - I - 0x019CB0 06:9CA0: 0F        .byte $0F   ; 
- D 0 - I - 0x019CB1 06:9CA1: 00        .byte $00   ; 
- D 0 - I - 0x019CB2 06:9CA2: 00        .byte $00   ; 
- D 0 - I - 0x019CB3 06:9CA3: 10        .byte $10   ; 
- D 0 - I - 0x019CB4 06:9CA4: 0F        .byte $0F   ; 
- D 0 - I - 0x019CB5 06:9CA5: 17        .byte $17   ; 
- D 0 - I - 0x019CB6 06:9CA6: 00        .byte $00   ; 
- D 0 - I - 0x019CB7 06:9CA7: 10        .byte $10   ; 
- D 0 - I - 0x019CB8 06:9CA8: 0F        .byte $0F   ; 
- D 0 - I - 0x019CB9 06:9CA9: 0F        .byte $0F   ; 
- D 0 - I - 0x019CBA 06:9CAA: 00        .byte $00   ; 
- D 0 - I - 0x019CBB 06:9CAB: 00        .byte $00   ; 
- D 0 - I - 0x019CBC 06:9CAC: 0F        .byte $0F   ; 
- D 0 - I - 0x019CBD 06:9CAD: 06        .byte $06   ; 
- D 0 - I - 0x019CBE 06:9CAE: 00        .byte $00   ; 
- D 0 - I - 0x019CBF 06:9CAF: 00        .byte $00   ; 
- D 0 - I - 0x019CC0 06:9CB0: 0F        .byte $0F   ; 
- D 0 - I - 0x019CC1 06:9CB1: 0F        .byte $0F   ; 
- D 0 - I - 0x019CC2 06:9CB2: 0F        .byte $0F   ; 
- D 0 - I - 0x019CC3 06:9CB3: 00        .byte $00   ; 
- D 0 - I - 0x019CC4 06:9CB4: 0F        .byte $0F   ; 
- D 0 - I - 0x019CC5 06:9CB5: 0F        .byte $0F   ; 
- D 0 - I - 0x019CC6 06:9CB6: 0F        .byte $0F   ; 
- D 0 - I - 0x019CC7 06:9CB7: 0F        .byte $0F   ; 
- D 0 - I - 0x019CC8 06:9CB8: 0F        .byte $0F   ; 
- D 0 - I - 0x019CC9 06:9CB9: 06        .byte $06   ; 
- D 0 - I - 0x019CCA 06:9CBA: 17        .byte $17   ; 
- D 0 - I - 0x019CCB 06:9CBB: 16        .byte $16   ; 
- D 0 - I - 0x019CCC 06:9CBC: 0F        .byte $0F   ; 
- D 0 - I - 0x019CCD 06:9CBD: 06        .byte $06   ; 
- D 0 - I - 0x019CCE 06:9CBE: 17        .byte $17   ; 
- D 0 - I - 0x019CCF 06:9CBF: 16        .byte $16   ; 
- D 0 - I - 0x019CD0 06:9CC0: 0F        .byte $0F   ; 
- D 0 - I - 0x019CD1 06:9CC1: 07        .byte $07   ; 
- D 0 - I - 0x019CD2 06:9CC2: 06        .byte $06   ; 
- D 0 - I - 0x019CD3 06:9CC3: 16        .byte $16   ; 
- D 0 - I - 0x019CD4 06:9CC4: 0F        .byte $0F   ; 
- D 0 - I - 0x019CD5 06:9CC5: 07        .byte $07   ; 
- D 0 - I - 0x019CD6 06:9CC6: 06        .byte $06   ; 
- D 0 - I - 0x019CD7 06:9CC7: 16        .byte $16   ; 
- D 0 - I - 0x019CD8 06:9CC8: 0F        .byte $0F   ; 
- D 0 - I - 0x019CD9 06:9CC9: 0F        .byte $0F   ; 
- D 0 - I - 0x019CDA 06:9CCA: 07        .byte $07   ; 
- D 0 - I - 0x019CDB 06:9CCB: 06        .byte $06   ; 
- D 0 - I - 0x019CDC 06:9CCC: 0F        .byte $0F   ; 
- D 0 - I - 0x019CDD 06:9CCD: 0F        .byte $0F   ; 
- D 0 - I - 0x019CDE 06:9CCE: 07        .byte $07   ; 
- D 0 - I - 0x019CDF 06:9CCF: 06        .byte $06   ; 
- D 0 - I - 0x019CE0 06:9CD0: 0F        .byte $0F   ; 
- D 0 - I - 0x019CE1 06:9CD1: 0F        .byte $0F   ; 
- D 0 - I - 0x019CE2 06:9CD2: 0F        .byte $0F   ; 
- D 0 - I - 0x019CE3 06:9CD3: 0F        .byte $0F   ; 
- D 0 - I - 0x019CE4 06:9CD4: 0F        .byte $0F   ; 
- D 0 - I - 0x019CE5 06:9CD5: 0F        .byte $0F   ; 
- D 0 - I - 0x019CE6 06:9CD6: 0F        .byte $0F   ; 
- D 0 - I - 0x019CE7 06:9CD7: 0F        .byte $0F   ; 



ofs_9CD8_bank_s1_asm_export:
.include "copy_bank_s1.asm"



; 0x019D76-0x01C00F
.org $9D66



; bzk garbage
- - - - - - 0x019D76 06:9D66: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019D80 06:9D70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019D90 06:9D80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019DA0 06:9D90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019DB0 06:9DA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019DC0 06:9DB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019DD0 06:9DC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019DE0 06:9DD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019DF0 06:9DE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019E00 06:9DF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019E10 06:9E00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019E20 06:9E10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019E30 06:9E20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019E40 06:9E30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019E50 06:9E40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019E60 06:9E50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019E70 06:9E60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019E80 06:9E70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019E90 06:9E80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019EA0 06:9E90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019EB0 06:9EA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019EC0 06:9EB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019ED0 06:9EC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019EE0 06:9ED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019EF0 06:9EE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019F00 06:9EF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019F10 06:9F00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019F20 06:9F10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019F30 06:9F20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019F40 06:9F30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019F50 06:9F40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019F60 06:9F50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019F70 06:9F60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019F80 06:9F70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019F90 06:9F80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019FA0 06:9F90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019FB0 06:9FA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019FC0 06:9FB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019FD0 06:9FC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019FE0 06:9FD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019FF0 06:9FE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01A000 06:9FF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



tbl_A000:
- D 1 - - - 0x01A010 06:A000: 02 03     .word ram_0302
- D 1 - - - 0x01A012 06:A002: FE A3     .word _off000_A3FE_01
- D 1 - - - 0x01A014 06:A004: B4 A2     .word _off000_A2B4_02
- D 1 - - - 0x01A016 06:A006: 14 68     .word _off000_bat_6814_03
- D 1 - - - 0x01A018 06:A008: 8E A2     .word _off000_A28E_04
- D 1 - - - 0x01A01A 06:A00A: 96 A2     .word _off000_A296_05
- D 1 - - - 0x01A01C 06:A00C: 1C 68     .word _off000_bat_681C_06
- D 1 - - - 0x01A01E 06:A00E: D3 A2     .word _off000_A2D3_07
- D 1 - - - 0x01A020 06:A010: 69 A8     .word _off000_A869_08
- D 1 - - - 0x01A022 06:A012: F0 67     .word _off000_bat_67F0_09
- D 1 - - - 0x01A024 06:A014: 00 A1     .word _off000_A100_0A
- D 1 - - - 0x01A026 06:A016: 83 A1     .word _off000_A183_0B
- D 1 - - - 0x01A028 06:A018: 7E 6B     .word ram_6B7E_unk_data
- - - - - - 0x01A02A 06:A01A: 02 03     .word ram_0302
- - - - - - 0x01A02C 06:A01C: 02 03     .word ram_0302
- D 1 - - - 0x01A02E 06:A01E: 1D A2     .word _off000_A21D_0F
- D 1 - - - 0x01A030 06:A020: 45 A2     .word _off000_A245_10
- - - - - - 0x01A032 06:A022: 4D A2     .word _off000_A24D_11
- D 1 - - - 0x01A034 06:A024: 55 A2     .word _off000_A255_12
- D 1 - - - 0x01A036 06:A026: 69 A2     .word _off000_A269_13
- - - - - - 0x01A038 06:A028: 02 03     .word ram_0302
- D 1 - - - 0x01A03A 06:A02A: 26 A2     .word _off000_A226_15
- D 1 - - - 0x01A03C 06:A02C: C8 A3     .word _off000_A3C8_16
- - - - - - 0x01A03E 06:A02E: 1C 68     .word _off000_bat_681C_17
- D 1 - - - 0x01A040 06:A030: 16 A3     .word _off000_A316_18
- D 1 - - - 0x01A042 06:A032: 23 A3     .word _off000_A323_19
- D 1 - - - 0x01A044 06:A034: 37 A3     .word _off000_A337_1A
- D 1 - - - 0x01A046 06:A036: 02 A2     .word _off000_A202_1B
- D 1 - - - 0x01A048 06:A038: 48 A3     .word _off000_A348_1C
- D 1 - - - 0x01A04A 06:A03A: 50 A3     .word _off000_A350_1D
- D 1 - - - 0x01A04C 06:A03C: 60 A3     .word _off000_A360_1E
- D 1 - - - 0x01A04E 06:A03E: 5D A2     .word _off000_A25D_1F
- D 1 - - - 0x01A050 06:A040: 78 A3     .word _off000_A378_20
- D 1 - - - 0x01A052 06:A042: 9C A3     .word _off000_A39C_21
- D 1 - - - 0x01A054 06:A044: CD 6B     .word ram_6BCD
- D 1 - - - 0x01A056 06:A046: D0 A3     .word _off000_A3D0_23
- D 1 - - - 0x01A058 06:A048: B0 A3     .word _off000_A3B0_24
- D 1 - - - 0x01A05A 06:A04A: B9 A3     .word _off000_A3B9_25
- D 1 - - - 0x01A05C 06:A04C: BE A3     .word _off000_A3BE_26
- D 1 - - - 0x01A05E 06:A04E: C3 A3     .word _off000_A3C3_27
- D 1 - - - 0x01A060 06:A050: 2F A2     .word _off000_A22F_28
- D 1 - - - 0x01A062 06:A052: 47 68     .word _off000_bat_6847_29
- D 1 - - - 0x01A064 06:A054: 4F 68     .word _off000_bat_684F_2A
- D 1 - - - 0x01A066 06:A056: 59 68     .word _off000_bat_6859_2B
- D 1 - - - 0x01A068 06:A058: 65 68     .word _off000_bat_6865_2C
- D 1 - - - 0x01A06A 06:A05A: 35 A2     .word _off000_A235_2D
- D 1 - - - 0x01A06C 06:A05C: 73 68     .word _off000_bat_6873_2E
- D 1 - - - 0x01A06E 06:A05E: E8 A3     .word _off000_A3E8_2F
- D 1 - - - 0x01A070 06:A060: F4 A3     .word _off000_A3F4_30
- D 1 - - - 0x01A072 06:A062: F9 A3     .word _off000_A3F9_31
- - - - - - 0x01A074 06:A064: 02 03     .word ram_0302
- - - - - - 0x01A076 06:A066: 02 03     .word ram_0302
- - - - - - 0x01A078 06:A068: 02 03     .word ram_0302
- D 1 - - - 0x01A07A 06:A06A: 0A A2     .word _off000_A20A_35
- D 1 - - - 0x01A07C 06:A06C: 9E A2     .word _off000_A29E_36
- - - - - - 0x01A07E 06:A06E: 02 03     .word ram_0302
- - - - - - 0x01A080 06:A070: 02 03     .word ram_0302
- - - - - - 0x01A082 06:A072: 02 03     .word ram_0302
- - - - - - 0x01A084 06:A074: 02 03     .word ram_0302
- D 1 - - - 0x01A086 06:A076: A6 A2     .word _off000_A2A6_3B
- D 1 - - - 0x01A088 06:A078: 72 A2     .word _off000_A272_3C
- D 1 - - - 0x01A08A 06:A07A: 7E A2     .word _off000_A27E_3D
- D 1 - - - 0x01A08C 06:A07C: 86 A2     .word _off000_A286_3E
- - - - - - 0x01A08E 06:A07E: 02 03     .word ram_0302



sub_0x01A090:
C - - - - - 0x01A090 06:A080: A6 14     LDX ram_0014
C - - - - - 0x01A092 06:A082: BD 00 A0  LDA tbl_A000,X
C - - - - - 0x01A095 06:A085: 85 00     STA ram_0000
C - - - - - 0x01A097 06:A087: BD 01 A0  LDA tbl_A000 + 1,X
C - - - - - 0x01A09A 06:A08A: 85 01     STA ram_0001
C - - - - - 0x01A09C 06:A08C: 20 F6 A0  JSR sub_A0F6_write_to_ppu
C - - - - - 0x01A09F 06:A08F: A9 3F     LDA #$3F
C - - - - - 0x01A0A1 06:A091: 8D 00 03  STA ram_0300
C - - - - - 0x01A0A4 06:A094: A2 00     LDX #$00
C - - - - - 0x01A0A6 06:A096: 86 14     STX ram_0014
C - - - - - 0x01A0A8 06:A098: 86 5C     STX ram_005C
C - - - - - 0x01A0AA 06:A09A: 8E 01 03  STX ram_0301
C - - - - - 0x01A0AD 06:A09D: CA        DEX ; FF
C - - - - - 0x01A0AE 06:A09E: 8E 02 03  STX ram_0302
C - - - - - 0x01A0B1 06:A0A1: 60        RTS



bra_A0A2_loop:
C - - - - - 0x01A0B2 06:A0A2: 48        PHA ; push ppu_hi
C - - - - - 0x01A0B3 06:A0A3: 8D 06 20  STA $2006
C - - - - - 0x01A0B6 06:A0A6: C8        INY
C - - - - - 0x01A0B7 06:A0A7: B1 00     LDA (ram_0000),Y
C - - - - - 0x01A0B9 06:A0A9: 8D 06 20  STA $2006
C - - - - - 0x01A0BC 06:A0AC: C8        INY
C - - - - - 0x01A0BD 06:A0AD: B1 00     LDA (ram_0000),Y
C - - - - - 0x01A0BF 06:A0AF: 0A        ASL
C - - - - - 0x01A0C0 06:A0B0: 48        PHA
C - - - - - 0x01A0C1 06:A0B1: A5 FF     LDA ram_for_2000
C - - - - - 0x01A0C3 06:A0B3: 09 04     ORA #$04    ; write vertically
C - - - - - 0x01A0C5 06:A0B5: B0 02     BCS bra_A0B9
C - - - - - 0x01A0C7 06:A0B7: 29 FB     AND #$FB    ; write horisontally
bra_A0B9:
C - - - - - 0x01A0C9 06:A0B9: 8D 00 20  STA $2000
C - - - - - 0x01A0CC 06:A0BC: 85 FF     STA ram_for_2000
C - - - - - 0x01A0CE 06:A0BE: 68        PLA
C - - - - - 0x01A0CF 06:A0BF: 0A        ASL
C - - - - - 0x01A0D0 06:A0C0: 08        PHP
C - - - - - 0x01A0D1 06:A0C1: 90 03     BCC bra_A0C6
C - - - - - 0x01A0D3 06:A0C3: 09 02     ORA #$02
C - - - - - 0x01A0D5 06:A0C5: C8        INY
bra_A0C6:
C - - - - - 0x01A0D6 06:A0C6: 28        PLP
C - - - - - 0x01A0D7 06:A0C7: 18        CLC
C - - - - - 0x01A0D8 06:A0C8: D0 01     BNE bra_A0CB
- - - - - - 0x01A0DA 06:A0CA: 38        SEC
bra_A0CB:
C - - - - - 0x01A0DB 06:A0CB: 6A        ROR
C - - - - - 0x01A0DC 06:A0CC: 4A        LSR
C - - - - - 0x01A0DD 06:A0CD: AA        TAX
bra_A0CE_loop:
C - - - - - 0x01A0DE 06:A0CE: B0 01     BCS bra_A0D1_write_the_same_byte
C - - - - - 0x01A0E0 06:A0D0: C8        INY
bra_A0D1_write_the_same_byte:
C - - - - - 0x01A0E1 06:A0D1: B1 00     LDA (ram_0000),Y
C - - - - - 0x01A0E3 06:A0D3: 8D 07 20  STA $2007
C - - - - - 0x01A0E6 06:A0D6: CA        DEX
C - - - - - 0x01A0E7 06:A0D7: D0 F5     BNE bra_A0CE_loop
C - - - - - 0x01A0E9 06:A0D9: 68        PLA ; pull ppu_hi
C - - - - - 0x01A0EA 06:A0DA: C9 3F     CMP #$3F
C - - - - - 0x01A0EC 06:A0DC: D0 0C     BNE bra_A0EA_not_palette
C - - - - - 0x01A0EE 06:A0DE: 8D 06 20  STA $2006
C - - - - - 0x01A0F1 06:A0E1: 8E 06 20  STX $2006
C - - - - - 0x01A0F4 06:A0E4: 8E 06 20  STX $2006
C - - - - - 0x01A0F7 06:A0E7: 8E 06 20  STX $2006
bra_A0EA_not_palette:
C - - - - - 0x01A0FA 06:A0EA: 38        SEC
C - - - - - 0x01A0FB 06:A0EB: 98        TYA
C - - - - - 0x01A0FC 06:A0EC: 65 00     ADC ram_0000
C - - - - - 0x01A0FE 06:A0EE: 85 00     STA ram_0000
C - - - - - 0x01A100 06:A0F0: A9 00     LDA #$00
C - - - - - 0x01A102 06:A0F2: 65 01     ADC ram_0001
C - - - - - 0x01A104 06:A0F4: 85 01     STA ram_0001
sub_A0F6_write_to_ppu:
C - - - - - 0x01A106 06:A0F6: AE 02 20  LDX $2002
C - - - - - 0x01A109 06:A0F9: A0 00     LDY #$00
C - - - - - 0x01A10B 06:A0FB: B1 00     LDA (ram_0000),Y
C - - - - - 0x01A10D 06:A0FD: 10 A3     BPL bra_A0A2_loop
C - - - - - 0x01A10F 06:A0FF: 60        RTS



_off000_A100_0A:
- D 1 - I - 0x01A110 06:A100: 23 C0     .dbyt $23C0
- D 1 - I - 0x01A112 06:A102: 7F        .byte $00 + $40 + $3F   ; 
- D 1 - I - 0x01A113 06:A103: 00        .byte $00   ; 

- D 1 - I - 0x01A114 06:A104: 23 D4     .dbyt $23D4
- D 1 - I - 0x01A116 06:A106: 03        .byte $00 + $00 + $03   ; 
- D 1 - I - 0x01A117 06:A107: 40        .byte $40, $50, $50   ; 

- D 1 - I - 0x01A11A 06:A10A: 23 DC     .dbyt $23DC
- D 1 - I - 0x01A11C 06:A10C: 03        .byte $00 + $00 + $03   ; 
- D 1 - I - 0x01A11D 06:A10D: 44        .byte $44, $55, $55   ; 

- D 1 - I - 0x01A120 06:A110: 23 E4     .dbyt $23E4
- D 1 - I - 0x01A122 06:A112: 03        .byte $00 + $00 + $03   ; 
- D 1 - I - 0x01A123 06:A113: 44        .byte $44, $55, $55   ; 

- D 1 - I - 0x01A126 06:A116: 20 A8     .dbyt $20A8
- D 1 - I - 0x01A128 06:A118: 0F        .byte $0F   ; 
- D 1 - I - 0x01A129 06:A119: 62        .byte $62, $24, $1C, $24, $0E, $24, $15, $24, $0E, $24, $0C, $24, $1D, $24, $62   ; 

- D 1 - I - 0x01A138 06:A128: 21 03     .dbyt $2103
- D 1 - I - 0x01A13A 06:A12A: 01        .byte $01   ; 
- D 1 - I - 0x01A13B 06:A12B: 69        .byte $69   ; 

- D 1 - I - 0x01A13C 06:A12C: 21 04     .dbyt $2104
- D 1 - I - 0x01A13E 06:A12E: 58        .byte $00 + $40 + $18   ; 
- D 1 - I - 0x01A13F 06:A12F: 6A        .byte $6A   ; 

- D 1 - I - 0x01A140 06:A130: 21 1C     .dbyt $211C
- D 1 - I - 0x01A142 06:A132: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A143 06:A133: 6B        .byte $6B   ; 

- D 1 - I - 0x01A144 06:A134: 21 23     .dbyt $2123
- D 1 - I - 0x01A146 06:A136: D0        .byte $80 + $40 + $10   ; 
- D 1 - I - 0x01A147 06:A137: 6C        .byte $6C   ; 

- D 1 - I - 0x01A148 06:A138: 21 3C     .dbyt $213C
- D 1 - I - 0x01A14A 06:A13A: D0        .byte $80 + $40 + $10   ; 
- D 1 - I - 0x01A14B 06:A13B: 6C        .byte $6C   ; 

- D 1 - I - 0x01A14C 06:A13C: 23 23     .dbyt $2323
- D 1 - I - 0x01A14E 06:A13E: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A14F 06:A13F: 6E        .byte $6E   ; 

- D 1 - I - 0x01A150 06:A140: 23 24     .dbyt $2324
- D 1 - I - 0x01A152 06:A142: 58        .byte $00 + $40 + $18   ; 
- D 1 - I - 0x01A153 06:A143: 6A        .byte $6A   ; 

- D 1 - I - 0x01A154 06:A144: 23 3C     .dbyt $233C
- D 1 - I - 0x01A156 06:A146: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A157 06:A147: 6D        .byte $6D   ; 

- D 1 - I - 0x01A158 06:A148: 21 0A     .dbyt $210A
- D 1 - I - 0x01A15A 06:A14A: 06        .byte $00 + $00 + $06   ; 
- D 1 - I - 0x01A15B 06:A14B: 24        .byte $24, $17, $0A, $16, $0E, $24   ; 

- D 1 - I - 0x01A161 06:A151: 21 13     .dbyt $2113
- D 1 - I - 0x01A163 06:A153: 06        .byte $00 + $00 + $06   ; 
- D 1 - I - 0x01A164 06:A154: 24        .byte $24, $15, $12, $0F, $0E, $24   ; 

- D 1 - I - 0x01A16A 06:A15A: 22 A6     .dbyt $22A6
- D 1 - I - 0x01A16C 06:A15C: 12        .byte $00 + $00 + $12   ; 
- D 1 - I - 0x01A16D 06:A15D: 1B        .byte $1B, $0E, $10, $12, $1C, $1D, $0E, $1B, $24, $22, $18, $1E, $1B, $24, $17, $0A   ; 
- D 1 - I - 0x01A17D 06:A16D: 16        .byte $16, $0E   ; 

- D 1 - I - 0x01A17F 06:A16F: 22 E6     .dbyt $22E6
- D 1 - I - 0x01A181 06:A171: 10        .byte $00 + $00 + $10   ; 
- D 1 - I - 0x01A182 06:A172: 0E        .byte $0E, $15, $12, $16, $12, $17, $0A, $1D, $12, $18, $17, $24, $16, $18, $0D, $0E   ; 

- D 1 - I - 0x01A192 06:A182: FF        .byte $FF   ; 



_off000_A183_0B:
- D 1 - I - 0x01A193 06:A183: 22 05     .dbyt $2205
- D 1 - I - 0x01A195 06:A185: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A196 06:A186: 69        .byte $69   ; 

- D 1 - I - 0x01A197 06:A187: 22 06     .dbyt $2206
- D 1 - I - 0x01A199 06:A189: 55        .byte $00 + $40 + $15   ; 
- D 1 - I - 0x01A19A 06:A18A: 6A        .byte $6A   ; 

- D 1 - I - 0x01A19B 06:A18B: 22 1B     .dbyt $221B
- D 1 - I - 0x01A19D 06:A18D: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A19E 06:A18E: 6B        .byte $6B   ; 

- D 1 - I - 0x01A19F 06:A18F: 22 25     .dbyt $2225
- D 1 - I - 0x01A1A1 06:A191: C7        .byte $80 + $40 + $07   ; 
- D 1 - I - 0x01A1A2 06:A192: 6C        .byte $6C   ; 

- D 1 - I - 0x01A1A3 06:A193: 22 3B     .dbyt $223B
- D 1 - I - 0x01A1A5 06:A195: C7        .byte $80 + $40 + $07   ; 
- D 1 - I - 0x01A1A6 06:A196: 6C        .byte $6C   ; 

- D 1 - I - 0x01A1A7 06:A197: 23 05     .dbyt $2305
- D 1 - I - 0x01A1A9 06:A199: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A1AA 06:A19A: 6E        .byte $6E   ; 

- D 1 - I - 0x01A1AB 06:A19B: 23 06     .dbyt $2306
- D 1 - I - 0x01A1AD 06:A19D: 55        .byte $00 + $40 + $15   ; 
- D 1 - I - 0x01A1AE 06:A19E: 6A        .byte $6A   ; 

- D 1 - I - 0x01A1AF 06:A19F: 23 1B     .dbyt $231B
- D 1 - I - 0x01A1B1 06:A1A1: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A1B2 06:A1A2: 6D        .byte $6D   ; 

- D 1 - I - 0x01A1B3 06:A1A3: 22 26     .dbyt $2226
- D 1 - I - 0x01A1B5 06:A1A5: 15        .byte $00 + $00 + $15   ; 
- D 1 - I - 0x01A1B6 06:A1A6: 0A        .byte $0A, $24, $0B, $24, $0C, $24, $0D, $24, $0E, $24, $0F, $24, $10, $24, $11, $24   ; 
- D 1 - I - 0x01A1C6 06:A1B6: 12        .byte $12, $24, $13, $24, $14   ; 

- D 1 - I - 0x01A1CB 06:A1BB: 22 66     .dbyt $2266
- D 1 - I - 0x01A1CD 06:A1BD: 15        .byte $00 + $00 + $15   ; 
- D 1 - I - 0x01A1CE 06:A1BE: 15        .byte $15, $24, $16, $24, $17, $24, $18, $24, $19, $24, $1A, $24, $1B, $24, $1C, $24   ; 
- D 1 - I - 0x01A1DE 06:A1CE: 1D        .byte $1D, $24, $1E, $24, $1F   ; 

- D 1 - I - 0x01A1E3 06:A1D3: 22 A6     .dbyt $22A6
- D 1 - I - 0x01A1E5 06:A1D5: 15        .byte $00 + $00 + $15   ; 
- D 1 - I - 0x01A1E6 06:A1D6: 20        .byte $20, $24, $21, $24, $22, $24, $23, $24, $62, $24, $63, $24, $28, $24, $29, $24   ; 
- D 1 - I - 0x01A1F6 06:A1E6: 2A        .byte $2A, $24, $2B, $24, $2C   ; 

- D 1 - I - 0x01A1FB 06:A1EB: 22 E6     .dbyt $22E6
- D 1 - I - 0x01A1FD 06:A1ED: 13        .byte $00 + $00 + $13   ; 
- D 1 - I - 0x01A1FE 06:A1EE: 00        .byte $00, $24, $01, $24, $02, $24, $03, $24, $04, $24, $05, $24, $06, $24, $07, $24   ; 
- D 1 - I - 0x01A20E 06:A1FE: 08        .byte $08, $24, $09   ; 

- D 1 - I - 0x01A211 06:A201: FF        .byte $FF   ; 



_off000_A202_1B:
- D 1 - I - 0x01A212 06:A202: 3F 1C     .dbyt $3F1C
- D 1 - I - 0x01A214 06:A204: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A215 06:A205: 0F        .byte $0F, $16, $2C, $3C   ; 

- D 1 - I - 0x01A219 06:A209: FF        .byte $FF   ; 



_off000_A20A_35:
- D 1 - I - 0x01A21A 06:A20A: 3F 08     .dbyt $3F08
- D 1 - I - 0x01A21C 06:A20C: 08        .byte $00 + $00 + $08   ; 
- D 1 - I - 0x01A21D 06:A20D: 0F        .byte $0F, $22, $10, $00   ; 
- D 1 - I - 0x01A221 06:A211: 0F        .byte $0F, $2A, $10, $00   ; 

- D 1 - I - 0x01A225 06:A215: 3F 1C     .dbyt $3F1C
- D 1 - I - 0x01A227 06:A217: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A228 06:A218: 0F        .byte $0F, $27, $06, $16   ; 

- D 1 - I - 0x01A22C 06:A21C: FF        .byte $FF   ; 



_off000_A21D_0F:
- D 1 - I - 0x01A22D 06:A21D: 21 A4     .dbyt $21A4
- D 1 - I - 0x01A22F 06:A21F: 58        .byte $00 + $40 + $18   ; 
- D 1 - I - 0x01A230 06:A220: 24        .byte $24   ; 

- D 1 - I - 0x01A231 06:A221: 21 C4     .dbyt $21C4
- D 1 - I - 0x01A233 06:A223: 58        .byte $00 + $40 + $18   ; 
- D 1 - I - 0x01A234 06:A224: 24        .byte $24   ; 

- D 1 - I - 0x01A235 06:A225: FF        .byte $FF   ; 



_off000_A226_15:
- D 1 - I - 0x01A236 06:A226: 21 E4     .dbyt $21E4
- D 1 - I - 0x01A238 06:A228: 58        .byte $00 + $40 + $18   ; 
- D 1 - I - 0x01A239 06:A229: 24        .byte $24   ; 

- D 1 - I - 0x01A23A 06:A22A: 22 C8     .dbyt $22C8
- D 1 - I - 0x01A23C 06:A22C: 4D        .byte $00 + $40 + $0D   ; 
- D 1 - I - 0x01A23D 06:A22D: 24        .byte $24   ; 

- D 1 - I - 0x01A23E 06:A22E: FF        .byte $FF   ; 



_off000_A22F_28:
- D 1 - I - 0x01A23F 06:A22F: 2A CF     .dbyt $2ACF
- D 1 - I - 0x01A241 06:A231: 02        .byte $00 + $00 + $02   ; 
- D 1 - I - 0x01A242 06:A232: ED        .byte $ED, $EE   ; 

- D 1 - I - 0x01A244 06:A234: FF        .byte $FF   ; 



_off000_A235_2D:
- D 1 - I - 0x01A245 06:A235: 2B 6A     .dbyt $2B6A
- D 1 - I - 0x01A247 06:A237: 0C        .byte $00 + $00 + $0C   ; 
- D 1 - I - 0x01A248 06:A238: EB        .byte $EB, $EF, $F1, $F1, $F1, $F1, $F1, $F1, $F1, $F1, $F0, $EC   ; 

- D 1 - I - 0x01A254 06:A244: FF        .byte $FF   ; 



_off000_A245_10:
- D 1 - I - 0x01A255 06:A245: 3F 1C     .dbyt $3F1C
- D 1 - I - 0x01A257 06:A247: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A258 06:A248: 0F        .byte $0F, $30, $00, $12   ; 

- D 1 - I - 0x01A25C 06:A24C: FF        .byte $FF   ; 



_off000_A24D_11:
- - - - - - 0x01A25D 06:A24D: 3F 1C     .dbyt $3F1C
- - - - - - 0x01A25F 06:A24F: 04        .byte $00 + $00 + $04   ; 
- - - - - - 0x01A260 06:A250: 0F        .byte $0F, $1A, $37, $12   ; 

- - - - - - 0x01A264 06:A254: FF        .byte $FF   ; 



_off000_A255_12:
- D 1 - I - 0x01A265 06:A255: 3F 1C     .dbyt $3F1C
- D 1 - I - 0x01A267 06:A257: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A268 06:A258: 0F        .byte $0F, $17, $37, $12   ; 

- D 1 - I - 0x01A26C 06:A25C: FF        .byte $FF   ; 



_off000_A25D_1F:
- D 1 - I - 0x01A26D 06:A25D: 3F 08     .dbyt $3F08
- D 1 - I - 0x01A26F 06:A25F: 08        .byte $00 + $00 + $08   ; 
- D 1 - I - 0x01A270 06:A260: 0F        .byte $0F, $30, $00, $12   ; 
- D 1 - I - 0x01A274 06:A264: 0F        .byte $0F, $07, $0F, $17   ; 

- D 1 - I - 0x01A278 06:A268: FF        .byte $FF   ; 



_off000_A269_13:
- D 1 - I - 0x01A279 06:A269: 23 D0     .dbyt $23D0
- D 1 - I - 0x01A27B 06:A26B: 60        .byte $00 + $40 + $20   ; 
- D 1 - I - 0x01A27C 06:A26C: AA        .byte $AA   ; 

- D 1 - I - 0x01A27D 06:A26D: 23 F0     .dbyt $23F0
- D 1 - I - 0x01A27F 06:A26F: 50        .byte $00 + $40 + $10   ; 
- D 1 - I - 0x01A280 06:A270: AA        .byte $AA   ; 

- D 1 - I - 0x01A281 06:A271: FF        .byte $FF   ; 



_off000_A272_3C:
- D 1 - I - 0x01A282 06:A272: 3F 08     .dbyt $3F08
- D 1 - I - 0x01A284 06:A274: 08        .byte $00 + $00 + $08   ; 
- D 1 - I - 0x01A285 06:A275: 0F        .byte $0F, $30, $30, $30   ; 
- D 1 - I - 0x01A289 06:A279: 0F        .byte $0F, $30, $30, $30   ; 

- D 1 - I - 0x01A28D 06:A27D: FF        .byte $FF   ; 



_off000_A27E_3D:
- D 1 - I - 0x01A28E 06:A27E: 3F 1C     .dbyt $3F1C
- D 1 - I - 0x01A290 06:A280: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A291 06:A281: 0F        .byte $0F, $0F, $1C, $16   ; 

- D 1 - I - 0x01A295 06:A285: FF        .byte $FF   ; 



_off000_A286_3E:
- D 1 - I - 0x01A296 06:A286: 3F 1C     .dbyt $3F1C
- D 1 - I - 0x01A298 06:A288: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A299 06:A289: 0F        .byte $0F, $2A, $1A, $0C   ; 

- D 1 - I - 0x01A29D 06:A28D: FF        .byte $FF   ; 



_off000_A28E_04:
- D 1 - I - 0x01A29E 06:A28E: 3F 1C     .dbyt $3F1C
- D 1 - I - 0x01A2A0 06:A290: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A2A1 06:A291: 0F        .byte $0F, $0A, $29, $30   ; 

- D 1 - I - 0x01A2A5 06:A295: FF        .byte $FF   ; 



_off000_A296_05:
- D 1 - I - 0x01A2A6 06:A296: 3F 1C     .dbyt $3F1C
- D 1 - I - 0x01A2A8 06:A298: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A2A9 06:A299: 0F        .byte $0F, $17, $27, $30   ; 

- D 1 - I - 0x01A2AD 06:A29D: FF        .byte $FF   ; 



_off000_A29E_36:
- D 1 - I - 0x01A2AE 06:A29E: 22 CD     .dbyt $22CD
- D 1 - I - 0x01A2B0 06:A2A0: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A2B1 06:A2A1: 62        .byte $62, $01, $00, $00   ; 

- D 1 - I - 0x01A2B5 06:A2A5: FF        .byte $FF   ; 



_off000_A2A6_3B:
- D 1 - I - 0x01A2B6 06:A2A6: 22 CB     .dbyt $22CB
- D 1 - I - 0x01A2B8 06:A2A8: 0A        .byte $00 + $00 + $0A   ; 
- D 1 - I - 0x01A2B9 06:A2A9: 62        .byte $62, $01, $24, $24, $24, $24, $24, $62, $05, $00   ; 

- D 1 - I - 0x01A2C3 06:A2B3: FF        .byte $FF   ; 



_off000_A2B4_02:
- D 1 - I - 0x01A2C4 06:A2B4: 23 C0     .dbyt $23C0
- D 1 - I - 0x01A2C6 06:A2B6: 7F        .byte $00 + $40 + $3F   ; 
- D 1 - I - 0x01A2C7 06:A2B7: 00        .byte $00   ; 

- D 1 - I - 0x01A2C8 06:A2B8: 21 4A     .dbyt $214A
- D 1 - I - 0x01A2CA 06:A2BA: 08        .byte $00 + $00 + $08   ; 
- D 1 - I - 0x01A2CB 06:A2BB: 0C        .byte $0C, $18, $17, $1D, $12, $17, $1E, $0E   ; 

- D 1 - I - 0x01A2D3 06:A2C3: 21 AA     .dbyt $21AA
- D 1 - I - 0x01A2D5 06:A2C5: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A2D6 06:A2C6: 1C        .byte $1C, $0A, $1F, $0E   ; 

- D 1 - I - 0x01A2DA 06:A2CA: 22 0A     .dbyt $220A
- D 1 - I - 0x01A2DC 06:A2CC: 05        .byte $00 + $00 + $05   ; 
- D 1 - I - 0x01A2DD 06:A2CD: 1B        .byte $1B, $0E, $1D, $1B, $22   ; 

- D 1 - I - 0x01A2E2 06:A2D2: FF        .byte $FF   ; 



_off000_A2D3_07:
- D 1 - I - 0x01A2E3 06:A2D3: 23 C2     .dbyt $23C2
- D 1 - I - 0x01A2E5 06:A2D5: 0E        .byte $00 + $00 + $0E   ; 
- D 1 - I - 0x01A2E6 06:A2D6: 40        .byte $40, $00, $00, $44, $55, $55, $00, $00, $04, $00, $00, $44, $55, $55   ; 

- D 1 - I - 0x01A2F4 06:A2E4: 20 6F     .dbyt $206F
- D 1 - I - 0x01A2F6 06:A2E6: 0E        .byte $00 + $00 + $0E   ; 
- D 1 - I - 0x01A2F7 06:A2E7: 69        .byte $69, $0B, $6B, $69, $0A, $6B, $24, $24, $62, $15, $12, $0F, $0E, $62   ; 

- D 1 - I - 0x01A305 06:A2F5: 20 CF     .dbyt $20CF
- D 1 - I - 0x01A307 06:A2F7: 06        .byte $00 + $00 + $06   ; 
- D 1 - I - 0x01A308 06:A2F8: 6E        .byte $6E, $6A, $6D, $6E, $6A, $6D   ; 

- D 1 - I - 0x01A30E 06:A2FE: 20 8F     .dbyt $208F
- D 1 - I - 0x01A310 06:A300: C2        .byte $80 + $40 + $02   ; 
- D 1 - I - 0x01A311 06:A301: 6C        .byte $6C   ; 

- D 1 - I - 0x01A312 06:A302: 20 91     .dbyt $2091
- D 1 - I - 0x01A314 06:A304: C2        .byte $80 + $40 + $02   ; 
- D 1 - I - 0x01A315 06:A305: 6C        .byte $6C   ; 

- D 1 - I - 0x01A316 06:A306: 20 92     .dbyt $2092
- D 1 - I - 0x01A318 06:A308: C2        .byte $80 + $40 + $02   ; 
- D 1 - I - 0x01A319 06:A309: 6C        .byte $6C   ; 

- D 1 - I - 0x01A31A 06:A30A: 20 94     .dbyt $2094
- D 1 - I - 0x01A31C 06:A30C: C2        .byte $80 + $40 + $02   ; 
- D 1 - I - 0x01A31D 06:A30D: 6C        .byte $6C   ; 

- D 1 - I - 0x01A31E 06:A30E: 20 6B     .dbyt $206B
- D 1 - I - 0x01A320 06:A310: 84        .byte $80 + $00 + $04   ; 
- D 1 - I - 0x01A321 06:A311: F7        .byte $F7, $24, $F9, $61   ; 

- D 1 - I - 0x01A325 06:A315: FF        .byte $FF   ; 



_off000_A316_18:
- D 1 - I - 0x01A326 06:A316: 29 84     .dbyt $2984
- D 1 - I - 0x01A328 06:A318: 09        .byte $00 + $00 + $09   ; 
- D 1 - I - 0x01A329 06:A319: 12        .byte $12, $17, $1F, $0E, $17, $1D, $18, $1B, $22   ; 

- D 1 - I - 0x01A332 06:A322: FF        .byte $FF   ; 



_off000_A323_19:
- D 1 - I - 0x01A333 06:A323: 29 C7     .dbyt $29C7
- D 1 - I - 0x01A335 06:A325: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A336 06:A326: 69        .byte $69, $6A, $6A, $6B   ; 

- D 1 - I - 0x01A33A 06:A32A: 29 CF     .dbyt $29CF
- D 1 - I - 0x01A33C 06:A32C: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A33D 06:A32D: 69        .byte $69   ; 

- D 1 - I - 0x01A33E 06:A32E: 29 D0     .dbyt $29D0
- D 1 - I - 0x01A340 06:A330: 4B        .byte $00 + $40 + $0B   ; 
- D 1 - I - 0x01A341 06:A331: 6A        .byte $6A   ; 

- D 1 - I - 0x01A342 06:A332: 29 DB     .dbyt $29DB
- D 1 - I - 0x01A344 06:A334: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A345 06:A335: 6B        .byte $6B   ; 

- D 1 - I - 0x01A346 06:A336: FF        .byte $FF   ; 



_off000_A337_1A:
- D 1 - I - 0x01A347 06:A337: 29 E7     .dbyt $29E7
- D 1 - I - 0x01A349 06:A339: C2        .byte $80 + $40 + $02   ; 
- D 1 - I - 0x01A34A 06:A33A: 6C        .byte $6C   ; 

- D 1 - I - 0x01A34B 06:A33B: 29 EA     .dbyt $29EA
- D 1 - I - 0x01A34D 06:A33D: C2        .byte $80 + $40 + $02   ; 
- D 1 - I - 0x01A34E 06:A33E: 6C        .byte $6C   ; 

- D 1 - I - 0x01A34F 06:A33F: 29 EF     .dbyt $29EF
- D 1 - I - 0x01A351 06:A341: C4        .byte $80 + $40 + $04   ; 
- D 1 - I - 0x01A352 06:A342: 6C        .byte $6C   ; 

- D 1 - I - 0x01A353 06:A343: 29 FB     .dbyt $29FB
- D 1 - I - 0x01A355 06:A345: C4        .byte $80 + $40 + $04   ; 
- D 1 - I - 0x01A356 06:A346: 6C        .byte $6C   ; 

- D 1 - I - 0x01A357 06:A347: FF        .byte $FF   ; 



_off000_A348_1C:
- D 1 - I - 0x01A358 06:A348: 2A 27     .dbyt $2A27
- D 1 - I - 0x01A35A 06:A34A: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A35B 06:A34B: 6E        .byte $6E, $6A, $6A, $6D   ; 
- D 1 - I - 0x01A35F 06:A34F: FF        .byte $FF   ; 



_off000_A350_1D:
- D 1 - I - 0x01A360 06:A350: 2A 42     .dbyt $2A42
- D 1 - I - 0x01A362 06:A352: 0C        .byte $00 + $00 + $0C   ; 
- D 1 - I - 0x01A363 06:A353: 1E        .byte $1E, $1C, $0E, $24, $0B, $24, $0B, $1E, $1D, $1D, $18, $17   ; 

- D 1 - I - 0x01A36F 06:A35F: FF        .byte $FF   ; 



_off000_A360_1E:
- D 1 - I - 0x01A370 06:A360: 2A 64     .dbyt $2A64
- D 1 - I - 0x01A372 06:A362: 08        .byte $00 + $00 + $08   ; 
- D 1 - I - 0x01A373 06:A363: 0F        .byte $0F, $18, $1B, $24, $1D, $11, $12, $1C   ; 

- D 1 - I - 0x01A37B 06:A36B: 2A 6F     .dbyt $2A6F
- D 1 - I - 0x01A37D 06:A36D: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A37E 06:A36E: 6E        .byte $6E   ; 

- D 1 - I - 0x01A37F 06:A36F: 2A 70     .dbyt $2A70
- D 1 - I - 0x01A381 06:A371: 4B        .byte $00 + $40 + $0B   ; 
- D 1 - I - 0x01A382 06:A372: 6A        .byte $6A   ; 

- D 1 - I - 0x01A383 06:A373: 2A 7B     .dbyt $2A7B
- D 1 - I - 0x01A385 06:A375: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A386 06:A376: 6D        .byte $6D   ; 

- D 1 - I - 0x01A387 06:A377: FF        .byte $FF   ; 



_off000_A378_20:
- D 1 - I - 0x01A388 06:A378: 2B 43     .dbyt $2B43
- D 1 - I - 0x01A38A 06:A37A: 07        .byte $00 + $00 + $07   ; 
- D 1 - I - 0x01A38B 06:A37B: 0C        .byte $0C, $18, $16, $19, $0A, $1C, $1C   ; 

- D 1 - I - 0x01A392 06:A382: 2A A5     .dbyt $2AA5
- D 1 - I - 0x01A394 06:A384: 03        .byte $00 + $00 + $03   ; 
- D 1 - I - 0x01A395 06:A385: 16        .byte $16, $0A, $19   ; 

- D 1 - I - 0x01A398 06:A388: 2A 8C     .dbyt $2A8C
- D 1 - I - 0x01A39A 06:A38A: 10        .byte $00 + $00 + $10   ; 
- D 1 - I - 0x01A39B 06:A38B: F5        .byte $F5, $F5, $FD, $F5, $F5, $FD, $F5, $F5, $FD, $F5, $F5, $F5, $FD, $F5, $F5, $F5   ; 

- D 1 - I - 0x01A3AB 06:A39B: FF        .byte $FF   ; 



_off000_A39C_21:
- D 1 - I - 0x01A3AC 06:A39C: 2B AC     .dbyt $2BAC
- D 1 - I - 0x01A3AE 06:A39E: 10        .byte $00 + $00 + $10   ; 
- D 1 - I - 0x01A3AF 06:A39F: F5        .byte $F5, $FE, $F5, $F5, $F5, $FE, $F5, $F5, $F5, $F5, $FE, $F5, $F5, $F5, $FE, $F5   ; 

- D 1 - I - 0x01A3BF 06:A3AF: FF        .byte $FF   ; 



_off000_A3B0_24:
- D 1 - I - 0x01A3C0 06:A3B0: 2B D9     .dbyt $2BD9
- D 1 - I - 0x01A3C2 06:A3B2: 43        .byte $00 + $40 + $03   ; 
- D 1 - I - 0x01A3C3 06:A3B3: 05        .byte $05   ; 

- D 1 - I - 0x01A3C4 06:A3B4: 2B DC     .dbyt $2BDC
- D 1 - I - 0x01A3C6 06:A3B6: 4B        .byte $00 + $40 + $0B   ; 
- D 1 - I - 0x01A3C7 06:A3B7: 00        .byte $00   ; 

- D 1 - I - 0x01A3C8 06:A3B8: FF        .byte $FF   ; 



_off000_A3B9_25:
- D 1 - I - 0x01A3C9 06:A3B9: 2B E9     .dbyt $2BE9
- D 1 - I - 0x01A3CB 06:A3BB: 56        .byte $00 + $40 + $16   ; 
- D 1 - I - 0x01A3CC 06:A3BC: 55        .byte $55   ; 

- D 1 - I - 0x01A3CD 06:A3BD: FF        .byte $FF   ; 



_off000_A3BE_26:
- D 1 - I - 0x01A3CE 06:A3BE: 2B A0     .dbyt $2BA0
- D 1 - I - 0x01A3D0 06:A3C0: 60        .byte $00 + $40 + $20   ; 
- D 1 - I - 0x01A3D1 06:A3C1: 24        .byte $24   ; 

- D 1 - I - 0x01A3D2 06:A3C2: FF        .byte $FF   ; 



_off000_A3C3_27:
- D 1 - I - 0x01A3D3 06:A3C3: 28 E0     .dbyt $28E0
- D 1 - I - 0x01A3D5 06:A3C5: 60        .byte $00 + $40 + $20   ; 
- D 1 - I - 0x01A3D6 06:A3C6: 24        .byte $24   ; 

- D 1 - I - 0x01A3D7 06:A3C7: FF        .byte $FF   ; 



_off000_A3C8_16:
- D 1 - I - 0x01A3D8 06:A3C8: 3F 10     .dbyt $3F10
- D 1 - I - 0x01A3DA 06:A3CA: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A3DB 06:A3CB: 0F        .byte $0F, $10, $30, $00   ; 
- D 1 - I - 0x01A3DF 06:A3CF: FF        .byte $FF   ; 



_off000_A3D0_23:
- D 1 - I - 0x01A3E0 06:A3D0: 23 E3     .dbyt $23E3
- D 1 - I - 0x01A3E2 06:A3D2: 03        .byte $00 + $00 + $03   ; 
- D 1 - I - 0x01A3E3 06:A3D3: 0F        .byte $0F, $0F, $CF   ; 

- D 1 - I - 0x01A3E6 06:A3D6: 22 4C     .dbyt $224C
- D 1 - I - 0x01A3E8 06:A3D8: 0A        .byte $00 + $00 + $0A   ; 
- D 1 - I - 0x01A3E9 06:A3D9: 10        .byte $10, $0A, $16, $0E, $24, $18, $1F, $0E, $1B, $24   ; 

- D 1 - I - 0x01A3F3 06:A3E3: 22 6C     .dbyt $226C
- D 1 - I - 0x01A3F5 06:A3E5: 4A        .byte $00 + $40 + $0A   ; 
- D 1 - I - 0x01A3F6 06:A3E6: 24        .byte $24   ; 

- D 1 - I - 0x01A3F7 06:A3E7: FF        .byte $FF   ; 



_off000_A3E8_2F:
- D 1 - I - 0x01A3F8 06:A3E8: 3F 08     .dbyt $3F08
- D 1 - I - 0x01A3FA 06:A3EA: 08        .byte $00 + $00 + $08   ; 

- D 1 - I - 0x01A3FB 06:A3EB: 0F        .byte $0F, $17, $16, $26   ; 
- D 1 - I - 0x01A3FF 06:A3EF: 0F        .byte $0F, $17, $16, $26   ; 

- D 1 - I - 0x01A403 06:A3F3: FF        .byte $FF   ; 



_off000_A3F4_30:
- D 1 - I - 0x01A404 06:A3F4: 23 D0     .dbyt $23D0
- D 1 - I - 0x01A406 06:A3F6: 58        .byte $00 + $40 + $18   ; 
- D 1 - I - 0x01A407 06:A3F7: FF        .byte $FF   ; 

- D 1 - I - 0x01A408 06:A3F8: FF        .byte $FF   ; 



_off000_A3F9_31:
- D 1 - I - 0x01A409 06:A3F9: 23 E8     .dbyt $23E8
- D 1 - I - 0x01A40B 06:A3FB: 58        .byte $00 + $40 + $18   ; 
- D 1 - I - 0x01A40C 06:A3FC: FF        .byte $FF   ; 

- D 1 - I - 0x01A40D 06:A3FD: FF        .byte $FF   ; 



_off000_A3FE_01:
- D 1 - I - 0x01A40E 06:A3FE: 20 00     .dbyt $2000
- D 1 - I - 0x01A410 06:A400: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A411 06:A401: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A421 06:A411: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 

- D 1 - I - 0x01A431 06:A421: 20 20     .dbyt $2020
- D 1 - I - 0x01A433 06:A423: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A434 06:A424: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A444 06:A434: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 

- D 1 - I - 0x01A454 06:A444: 20 40     .dbyt $2040
- D 1 - I - 0x01A456 06:A446: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A457 06:A447: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A467 06:A457: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 

- D 1 - I - 0x01A477 06:A467: 20 60     .dbyt $2060
- D 1 - I - 0x01A479 06:A469: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A47A 06:A46A: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A48A 06:A47A: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 

- D 1 - I - 0x01A49A 06:A48A: 20 80     .dbyt $2080
- D 1 - I - 0x01A49C 06:A48C: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A49D 06:A48D: 24        .byte $24, $24, $E6, $E4, $E5, $24, $1D, $11, $0E, $24, $15, $0E, $10, $0E, $17, $0D   ; 
- D 1 - I - 0x01A4AD 06:A49D: 24        .byte $24, $18, $0F, $24, $23, $0E, $15, $0D, $0A, $24, $E5, $E4, $E5, $E6, $24, $24   ; 

- D 1 - I - 0x01A4BD 06:A4AD: 20 A0     .dbyt $20A0
- D 1 - I - 0x01A4BF 06:A4AF: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A4C0 06:A4B0: 24        .byte $24, $24, $E2, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A4D0 06:A4C0: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A4E0 06:A4D0: 20 C0     .dbyt $20C0
- D 1 - I - 0x01A4E2 06:A4D2: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A4E3 06:A4D3: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A4F3 06:A4E3: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A503 06:A4F3: 20 E0     .dbyt $20E0
- D 1 - I - 0x01A505 06:A4F5: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A506 06:A4F6: 24        .byte $24, $24, $E2, $24, $16, $0A, $17, $22, $24, $24, $22, $0E, $0A, $1B, $1C, $24   ; 
- D 1 - I - 0x01A516 06:A506: 24        .byte $24, $0A, $10, $18, $24, $24, $19, $1B, $12, $17, $0C, $0E, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A526 06:A516: 21 00     .dbyt $2100
- D 1 - I - 0x01A528 06:A518: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A529 06:A519: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $F8, $24, $24   ; 
- D 1 - I - 0x01A539 06:A529: 24        .byte $24, $24, $24, $24, $24, $F8, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A549 06:A539: 21 20     .dbyt $2120
- D 1 - I - 0x01A54B 06:A53B: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A54C 06:A53C: 24        .byte $24, $24, $E2, $24, $0D, $0A, $1B, $14, $17, $0E, $1C, $1C, $24, $24, $24, $10   ; 
- D 1 - I - 0x01A55C 06:A54C: 0A        .byte $0A, $17, $17, $18, $17, $24, $24, $1C, $1D, $18, $15, $0E, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A56C 06:A55C: 21 40     .dbyt $2140
- D 1 - I - 0x01A56E 06:A55E: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A56F 06:A55F: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A57F 06:A56F: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A58F 06:A57F: 21 60     .dbyt $2160
- D 1 - I - 0x01A591 06:A581: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A592 06:A582: 24        .byte $24, $24, $E2, $24, $18, $17, $0E, $24, $18, $0F, $24, $1D, $11, $0E, $24, $1D   ; 
- D 1 - I - 0x01A5A2 06:A592: 1B        .byte $1B, $12, $0F, $18, $1B, $0C, $0E, $24, $20, $12, $1D, $11, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A5B2 06:A5A2: 21 80     .dbyt $2180
- D 1 - I - 0x01A5B4 06:A5A4: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A5B5 06:A5A5: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A5C5 06:A5B5: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A5D5 06:A5C5: 21 A0     .dbyt $21A0
- D 1 - I - 0x01A5D7 06:A5C7: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A5D8 06:A5C8: 24        .byte $24, $24, $E2, $24, $19, $18, $20, $0E, $1B, $63, $24, $24, $24, $24, $19, $1B   ; 
- D 1 - I - 0x01A5E8 06:A5D8: 12        .byte $12, $17, $0C, $0E, $1C, $1C, $24, $23, $0E, $15, $0D, $0A, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A5F8 06:A5E8: 21 C0     .dbyt $21C0
- D 1 - I - 0x01A5FA 06:A5EA: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A5FB 06:A5EB: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A60B 06:A5FB: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A61B 06:A60B: 21 E0     .dbyt $21E0
- D 1 - I - 0x01A61D 06:A60D: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A61E 06:A60E: 24        .byte $24, $24, $E2, $24, $11, $0A, $0D, $24, $24, $18, $17, $0E, $24, $18, $0F, $24   ; 
- D 1 - I - 0x01A62E 06:A61E: 1D        .byte $1D, $11, $0E, $24, $1D, $1B, $12, $0F, $18, $1B, $0C, $0E, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A63E 06:A62E: 22 00     .dbyt $2200
- D 1 - I - 0x01A640 06:A630: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A641 06:A631: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A651 06:A641: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A661 06:A651: 22 20     .dbyt $2220
- D 1 - I - 0x01A663 06:A653: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A664 06:A654: 24        .byte $24, $24, $E2, $24, $20, $12, $1D, $11, $24, $20, $12, $1C, $0D, $18, $16, $63   ; 
- D 1 - I - 0x01A674 06:A664: 24        .byte $24, $1C, $11, $0E, $24, $0D, $12, $1F, $12, $0D, $0E, $0D, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A684 06:A674: 22 40     .dbyt $2240
- D 1 - I - 0x01A686 06:A676: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A687 06:A677: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $F8, $24, $24, $F8, $24   ; 
- D 1 - I - 0x01A697 06:A687: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A6A7 06:A697: 22 60     .dbyt $2260
- D 1 - I - 0x01A6A9 06:A699: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A6AA 06:A69A: 24        .byte $24, $24, $E2, $24, $12, $1D, $24, $12, $17, $1D, $18, $24, $24, $08, $24, $1E   ; 
- D 1 - I - 0x01A6BA 06:A6AA: 17        .byte $17, $12, $1D, $1C, $24, $1D, $18, $24, $11, $12, $0D, $0E, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A6CA 06:A6BA: 22 80     .dbyt $2280
- D 1 - I - 0x01A6CC 06:A6BC: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A6CD 06:A6BD: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $F8, $24, $24, $24   ; 
- D 1 - I - 0x01A6DD 06:A6CD: 24        .byte $24, $24, $24, $24, $F8, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A6ED 06:A6DD: 22 A0     .dbyt $22A0
- D 1 - I - 0x01A6EF 06:A6DF: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A6F0 06:A6E0: 24        .byte $24, $24, $E2, $24, $12, $1D, $24, $0F, $1B, $18, $16, $24, $24, $24, $10, $0A   ; 
- D 1 - I - 0x01A700 06:A6F0: 17        .byte $17, $17, $18, $17, $24, $24, $0B, $0E, $0F, $18, $1B, $0E, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A710 06:A700: 22 C0     .dbyt $22C0
- D 1 - I - 0x01A712 06:A702: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A713 06:A703: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A723 06:A713: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A733 06:A723: 22 E0     .dbyt $22E0
- D 1 - I - 0x01A735 06:A725: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A736 06:A726: 24        .byte $24, $24, $E2, $24, $1C, $11, $0E, $24, $20, $0A, $1C, $24, $0C, $0A, $19, $1D   ; 
- D 1 - I - 0x01A746 06:A736: 1E        .byte $1E, $1B, $0E, $0D, $63, $24, $24, $24, $24, $24, $24, $24, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A756 06:A746: 23 00     .dbyt $2300
- D 1 - I - 0x01A758 06:A748: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A759 06:A749: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A769 06:A759: 24        .byte $24, $F8, $24, $24, $F8, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A779 06:A769: 23 20     .dbyt $2320
- D 1 - I - 0x01A77B 06:A76B: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A77C 06:A76C: 24        .byte $24, $24, $E2, $24, $24, $24, $10, $18, $24, $0F, $12, $17, $0D, $24, $1D, $11   ; 
- D 1 - I - 0x01A78C 06:A77C: 0E        .byte $0E, $24, $24, $08, $24, $1E, $17, $12, $1D, $1C, $24, $24, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A79C 06:A78C: 23 40     .dbyt $2340
- D 1 - I - 0x01A79E 06:A78E: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A79F 06:A78F: 24        .byte $24, $24, $E3, $24, $24, $24, $F8, $24, $24, $24, $24, $24, $F8, $24, $24, $24   ; 
- D 1 - I - 0x01A7AF 06:A79F: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A7BF 06:A7AF: 23 60     .dbyt $2360
- D 1 - I - 0x01A7C1 06:A7B1: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A7C2 06:A7B2: 24        .byte $24, $24, $E2, $24, $24, $24, $24, $24, $15, $12, $17, $14, $24, $24, $1D, $18   ; 
- D 1 - I - 0x01A7D2 06:A7C2: 24        .byte $24, $1C, $0A, $1F, $0E, $24, $11, $0E, $1B, $63, $24, $24, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A7E2 06:A7D2: 23 80     .dbyt $2380
- D 1 - I - 0x01A7E4 06:A7D4: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A7E5 06:A7D5: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A7F5 06:A7E5: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A805 06:A7F5: 23 A0     .dbyt $23A0
- D 1 - I - 0x01A807 06:A7F7: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A808 06:A7F8: 24        .byte $24, $24, $E6, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4   ; 
- D 1 - I - 0x01A818 06:A808: E5        .byte $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E6, $24, $24   ; 

- D 1 - I - 0x01A828 06:A818: 23 C0     .dbyt $23C0
- D 1 - I - 0x01A82A 06:A81A: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A82B 06:A81B: FF        .byte $FF, $FF, $00, $00, $00, $00, $FF, $FF, $FF, $0B, $0A, $0A, $0A, $0A, $0E, $FF   ; 
- D 1 - I - 0x01A83B 06:A82B: FF        .byte $FF, $00, $00, $4A, $5A, $52, $00, $FF, $FF, $00, $00, $00, $00, $58, $5A, $FF   ; 

- D 1 - I - 0x01A84B 06:A83B: 23 E0     .dbyt $23E0
- D 1 - I - 0x01A84D 06:A83D: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A84E 06:A83E: FF        .byte $FF, $00, $00, $10, $00, $00, $00, $FF, $FF, $00, $00, $0A, $0A, $02, $00, $FF   ; 
- D 1 - I - 0x01A85E 06:A84E: FF        .byte $FF, $FA, $FA, $BA, $AA, $AA, $AA, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 

- D 1 - I - 0x01A86E 06:A85E: 2B D0     .dbyt $2BD0
- D 1 - I - 0x01A870 06:A860: 02        .byte $00 + $00 + $02   ; 
- D 1 - I - 0x01A871 06:A861: FF        .byte $FF, $FF   ; 

- D 1 - I - 0x01A873 06:A863: 2B D6     .dbyt $2BD6
- D 1 - I - 0x01A875 06:A865: 02        .byte $00 + $00 + $02   ; 
- D 1 - I - 0x01A876 06:A866: FF        .byte $FF, $FF   ; 

- D 1 - I - 0x01A878 06:A868: FF        .byte $FF   ; 



_off000_A869_08:
- D 1 - I - 0x01A879 06:A869: 20 00     .dbyt $2000
- D 1 - I - 0x01A87B 06:A86B: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A87C 06:A86C: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A88C 06:A87C: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 

- D 1 - I - 0x01A89C 06:A88C: 20 20     .dbyt $2020
- D 1 - I - 0x01A89E 06:A88E: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A89F 06:A88F: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A8AF 06:A89F: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 

- D 1 - I - 0x01A8BF 06:A8AF: 20 40     .dbyt $2040
- D 1 - I - 0x01A8C1 06:A8B1: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A8C2 06:A8B2: E0        .byte $E0, $D5, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A8D2 06:A8C2: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $D4, $E0   ; 

- D 1 - I - 0x01A8E2 06:A8D2: 20 60     .dbyt $2060
- D 1 - I - 0x01A8E4 06:A8D4: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A8E5 06:A8D5: DC        .byte $DC, $D7, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A8F5 06:A8E5: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $D6, $DD   ; 

- D 1 - I - 0x01A905 06:A8F5: 20 80     .dbyt $2080
- D 1 - I - 0x01A907 06:A8F7: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A908 06:A8F8: DC        .byte $DC, $EE, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A918 06:A908: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $D6, $DB   ; 

- D 1 - I - 0x01A928 06:A918: 20 A0     .dbyt $20A0
- D 1 - I - 0x01A92A 06:A91A: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A92B 06:A91B: DE        .byte $DE, $D7, $24, $24, $24, $E6, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5   ; 
- D 1 - I - 0x01A93B 06:A92B: E4        .byte $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E6, $24, $24, $24, $D6, $DB   ; 

- D 1 - I - 0x01A94B 06:A93B: 20 C0     .dbyt $20C0
- D 1 - I - 0x01A94D 06:A93D: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A94E 06:A93E: DC        .byte $DC, $D7, $24, $24, $24, $E2, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A95E 06:A94E: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E3, $24, $24, $24, $D6, $DF   ; 

- D 1 - I - 0x01A96E 06:A95E: 20 E0     .dbyt $20E0
- D 1 - I - 0x01A970 06:A960: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A971 06:A961: DE        .byte $DE, $EE, $24, $24, $24, $E3, $24, $24, $71, $72, $73, $74, $75, $76, $77, $78   ; 
- D 1 - I - 0x01A981 06:A971: 79        .byte $79, $79, $79, $7A, $7B, $24, $24, $24, $24, $24, $E2, $24, $24, $24, $D6, $DB   ; 

- D 1 - I - 0x01A991 06:A981: 21 00     .dbyt $2100
- D 1 - I - 0x01A993 06:A983: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A994 06:A984: DE        .byte $DE, $D8, $EF, $24, $24, $E2, $24, $7C, $7D, $7E, $7F, $80, $81, $82, $83, $84   ; 
- D 1 - I - 0x01A9A4 06:A994: 85        .byte $85, $86, $87, $88, $89, $8A, $8B, $24, $24, $24, $E3, $24, $24, $24, $D6, $DF   ; 

- D 1 - I - 0x01A9B4 06:A9A4: 21 20     .dbyt $2120
- D 1 - I - 0x01A9B6 06:A9A6: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A9B7 06:A9A7: DC        .byte $DC, $DA, $D7, $24, $24, $E3, $24, $8C, $8D, $8E, $8F, $90, $91, $92, $93, $94   ; 
- D 1 - I - 0x01A9C7 06:A9B7: 95        .byte $95, $96, $97, $98, $99, $9A, $9B, $9C, $24, $24, $E2, $24, $24, $D4, $D9, $DB   ; 

- D 1 - I - 0x01A9D7 06:A9C7: 21 40     .dbyt $2140
- D 1 - I - 0x01A9D9 06:A9C9: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A9DA 06:A9CA: DC        .byte $DC, $D9, $EE, $24, $24, $E2, $24, $9D, $9E, $9F, $A0, $A1, $A2, $A3, $A4, $A5   ; 
- D 1 - I - 0x01A9EA 06:A9DA: A6        .byte $A6, $A7, $A8, $A9, $AA, $AB, $AC, $AD, $AE, $24, $E3, $24, $24, $D6, $DB, $DF   ; 

- D 1 - I - 0x01A9FA 06:A9EA: 21 60     .dbyt $2160
- D 1 - I - 0x01A9FC 06:A9EC: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A9FD 06:A9ED: DE        .byte $DE, $DB, $D7, $24, $24, $E3, $70, $AF, $B0, $B1, $B2, $B3, $B4, $B5, $B6, $B7   ; 
- D 1 - I - 0x01AA0D 06:A9FD: B8        .byte $B8, $B9, $BA, $BB, $BC, $BD, $BE, $BF, $C0, $24, $E2, $24, $24, $D6, $DB, $DB   ; 

- D 1 - I - 0x01AA1D 06:AA0D: 21 80     .dbyt $2180
- D 1 - I - 0x01AA1F 06:AA0F: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AA20 06:AA10: DC        .byte $DC, $DD, $D7, $24, $24, $E2, $24, $24, $24, $24, $24, $24, $24, $C1, $C2, $C3   ; 
- D 1 - I - 0x01AA30 06:AA20: C4        .byte $C4, $C5, $24, $24, $24, $24, $24, $24, $24, $24, $E3, $24, $24, $D6, $DB, $DF   ; 

- D 1 - I - 0x01AA40 06:AA30: 21 A0     .dbyt $21A0
- D 1 - I - 0x01AA42 06:AA32: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AA43 06:AA33: DE        .byte $DE, $DB, $EE, $24, $24, $E3, $24, $C6, $C7, $C8, $C8, $C8, $24, $C9, $CA, $CB   ; 
- D 1 - I - 0x01AA53 06:AA43: CC        .byte $CC, $CD, $C8, $C8, $C8, $C8, $E8, $E9, $D3, $24, $E2, $24, $24, $D6, $DB, $DB   ; 

- D 1 - I - 0x01AA63 06:AA53: 21 C0     .dbyt $21C0
- D 1 - I - 0x01AA65 06:AA55: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AA66 06:AA56: DC        .byte $DC, $DB, $D7, $24, $24, $E2, $24, $24, $24, $24, $24, $24, $24, $24, $24, $CE   ; 
- D 1 - I - 0x01AA76 06:AA66: CF        .byte $CF, $24, $24, $24, $24, $24, $EA, $EB, $EC, $24, $E3, $24, $24, $D6, $DB, $DF   ; 

- D 1 - I - 0x01AA86 06:AA76: 21 E0     .dbyt $21E0
- D 1 - I - 0x01AA88 06:AA78: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AA89 06:AA79: DC        .byte $DC, $DB, $D7, $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $D1   ; 
- D 1 - I - 0x01AA99 06:AA89: D2        .byte $D2, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24, $D6, $DB, $DB   ; 

- D 1 - I - 0x01AAA9 06:AA99: 22 00     .dbyt $2200
- D 1 - I - 0x01AAAB 06:AA9B: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AAAC 06:AA9C: DC        .byte $DC, $D8, $E1, $D5, $24, $E6, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5   ; 
- D 1 - I - 0x01AABC 06:AAAC: E4        .byte $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E6, $24, $D4, $E1, $D9, $DD   ; 

- D 1 - I - 0x01AACC 06:AABC: 22 20     .dbyt $2220
- D 1 - I - 0x01AACE 06:AABE: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AACF 06:AABF: DC        .byte $DC, $DA, $DC, $D7, $24, $24, $24, $24, $24, $24, $24, $24, $24, $F0, $01, $09   ; 
- D 1 - I - 0x01AADF 06:AACF: 08        .byte $08, $06, $24, $17, $12, $17, $1D, $0E, $17, $0D, $18, $24, $D6, $DC, $DB, $DF   ; 

- D 1 - I - 0x01AAEF 06:AADF: 22 40     .dbyt $2240
- D 1 - I - 0x01AAF1 06:AAE1: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AAF2 06:AAE2: DC        .byte $DC, $DA, $DC, $EE, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01AB02 06:AAF2: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $D6, $DE, $ED, $DD   ; 

- D 1 - I - 0x01AB12 06:AB02: 22 60     .dbyt $2260
- D 1 - I - 0x01AB14 06:AB04: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AB15 06:AB05: DC        .byte $DC, $DA, $DE, $D7, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01AB25 06:AB15: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $D6, $DE, $DB, $DD   ; 

- D 1 - I - 0x01AB35 06:AB25: 22 80     .dbyt $2280
- D 1 - I - 0x01AB37 06:AB27: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AB38 06:AB28: E1        .byte $E1, $D9, $DC, $ED, $E0, $EF, $24, $24, $19, $1E, $1C, $11, $24, $1C, $1D, $0A   ; 
- D 1 - I - 0x01AB48 06:AB38: 1B        .byte $1B, $1D, $24, $0B, $1E, $1D, $1D, $18, $17, $24, $24, $24, $D6, $D8, $E1, $D9   ; 

- D 1 - I - 0x01AB58 06:AB48: 22 A0     .dbyt $22A0
- D 1 - I - 0x01AB5A 06:AB4A: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AB5B 06:AB4B: DD        .byte $DD, $ED, $DE, $D8, $E1, $E1, $D5, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01AB6B 06:AB5B: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $D6, $DA, $DD, $ED   ; 

- D 1 - I - 0x01AB7B 06:AB6B: 22 C0     .dbyt $22C0
- D 1 - I - 0x01AB7D 06:AB6D: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AB7E 06:AB6E: DD        .byte $DD, $DB, $DE, $DA, $DC, $DD, $D8, $E0, $E0, $EF, $24, $24, $24, $24, $D4, $E0   ; 
- D 1 - I - 0x01AB8E 06:AB7E: E0        .byte $E0, $D5, $24, $24, $24, $24, $24, $24, $24, $24, $D4, $EF, $DA, $DA, $DF, $DB   ; 

- D 1 - I - 0x01AB9E 06:AB8E: 22 E0     .dbyt $22E0
- D 1 - I - 0x01ABA0 06:AB90: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01ABA1 06:AB91: DF        .byte $DF, $DB, $DC, $DA, $DE, $DF, $DA, $DC, $DD, $DB, $26, $26, $26, $26, $DA, $DC   ; 
- D 1 - I - 0x01ABB1 06:ABA1: DD        .byte $DD, $ED, $E0, $E0, $EF, $24, $D4, $E0, $E0, $E0, $D9, $DB, $DA, $DA, $DF, $DB   ; 

- D 1 - I - 0x01ABC1 06:ABB1: 23 00     .dbyt $2300
- D 1 - I - 0x01ABC3 06:ABB3: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01ABC4 06:ABB4: ED        .byte $ED, $D8, $E1, $D9, $DE, $D8, $E1, $D9, $DF, $DB, $26, $26, $26, $26, $DA, $DC   ; 
- D 1 - I - 0x01ABD4 06:ABC4: D8        .byte $D8, $E1, $D9, $DC, $D8, $E0, $D9, $DC, $DD, $DD, $D8, $E1, $E1, $D9, $DD, $ED   ; 

- D 1 - I - 0x01ABE4 06:ABD4: 23 20     .dbyt $2320
- D 1 - I - 0x01ABE6 06:ABD6: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01ABE7 06:ABD7: ED        .byte $ED, $DA, $DD, $ED, $DE, $DA, $DC, $DB, $DD, $DB, $26, $26, $26, $26, $DA, $DE   ; 
- D 1 - I - 0x01ABF7 06:ABE7: DA        .byte $DA, $DC, $DB, $DE, $DA, $DD, $ED, $DC, $DC, $DD, $DA, $DC, $DC, $DB, $DD, $ED   ; 

- D 1 - I - 0x01AC07 06:ABF7: 23 40     .dbyt $2340
- D 1 - I - 0x01AC09 06:ABF9: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AC0A 06:ABFA: ED        .byte $ED, $DA, $DD, $D8, $E1, $DA, $DC, $DB, $DF, $DB, $26, $26, $26, $26, $DA, $D8   ; 
- D 1 - I - 0x01AC1A 06:AC0A: D9        .byte $D9, $DC, $DB, $DC, $DA, $D8, $E1, $D9, $DE, $DF, $DA, $D8, $E1, $E1, $D9, $E1   ; 

- D 1 - I - 0x01AC2A 06:AC1A: 23 60     .dbyt $2360
- D 1 - I - 0x01AC2C 06:AC1C: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AC2D 06:AC1D: ED        .byte $ED, $D9, $DF, $DA, $DC, $DA, $DE, $DB, $DD, $DB, $26, $26, $26, $26, $DA, $DA   ; 
- D 1 - I - 0x01AC3D 06:AC2D: ED        .byte $ED, $DE, $D8, $E1, $E1, $D9, $DC, $DB, $DE, $D8, $E1, $D9, $DD, $DD, $DB, $DC   ; 

- D 1 - I - 0x01AC4D 06:AC3D: 23 80     .dbyt $2380
- D 1 - I - 0x01AC4F 06:AC3F: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AC50 06:AC40: DF        .byte $DF, $DB, $DF, $DA, $DC, $DB, $DE, $DB, $DD, $DB, $26, $26, $26, $26, $DA, $DA   ; 
- D 1 - I - 0x01AC60 06:AC50: DB        .byte $DB, $DD, $DA, $DE, $D8, $E1, $D9, $DB, $DE, $DA, $DD, $DB, $DE, $DF, $D8, $E1   ; 

- D 1 - I - 0x01AC70 06:AC60: 23 A0     .dbyt $23A0
- D 1 - I - 0x01AC72 06:AC62: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AC73 06:AC63: DF        .byte $DF, $DB, $DF, $DA, $DC, $DB, $DE, $DB, $DD, $DB, $26, $26, $26, $26, $DA, $DA   ; 
- D 1 - I - 0x01AC83 06:AC73: DB        .byte $DB, $DD, $DA, $DE, $DA, $DD, $DB, $DB, $DE, $DA, $DD, $DB, $DE, $DF, $DC, $DF   ; 

- D 1 - I - 0x01AC93 06:AC83: 23 C0     .dbyt $23C0
- D 1 - I - 0x01AC95 06:AC85: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AC96 06:AC86: 05        .byte $05, $05, $05, $05, $05, $05, $05, $05, $08, $6A, $5A, $5A, $5A, $5A, $9A, $22   ; 
- D 1 - I - 0x01ACA6 06:AC96: 00        .byte $00, $66, $55, $55, $55, $55, $99, $00, $00, $6E, $5F, $55, $5D, $DF, $BB, $00   ; 

- D 1 - I - 0x01ACB6 06:ACA6: 23 E0     .dbyt $23E0
- D 1 - I - 0x01ACB8 06:ACA8: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01ACB9 06:ACA9: 00        .byte $00, $0A, $0A, $0A, $0A, $0A, $0A, $00, $00, $00, $C0, $30, $00, $00, $00, $00   ; 
- D 1 - I - 0x01ACC9 06:ACB9: 00        .byte $00, $00, $CC, $33, $00, $00, $00, $00, $00, $20, $FC, $F3, $00, $00, $F0, $F0   ; 

- D 1 - I - 0x01ACD9 06:ACC9: FF        .byte $FF   ; 


; bzk garbage
- - - - - - 0x01ACDA 06:ACCA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01ACE0 06:ACD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01ACF0 06:ACE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AD00 06:ACF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AD10 06:AD00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AD20 06:AD10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AD30 06:AD20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AD40 06:AD30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AD50 06:AD40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AD60 06:AD50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AD70 06:AD60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AD80 06:AD70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AD90 06:AD80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01ADA0 06:AD90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01ADB0 06:ADA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01ADC0 06:ADB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01ADD0 06:ADC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01ADE0 06:ADD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01ADF0 06:ADE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AE00 06:ADF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AE10 06:AE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AE20 06:AE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AE30 06:AE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AE40 06:AE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AE50 06:AE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AE60 06:AE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AE70 06:AE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AE80 06:AE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AE90 06:AE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AEA0 06:AE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AEB0 06:AEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AEC0 06:AEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AED0 06:AEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AEE0 06:AED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AEF0 06:AEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AF00 06:AEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AF10 06:AF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AF20 06:AF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AF30 06:AF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AF40 06:AF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AF50 06:AF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AF60 06:AF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AF70 06:AF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AF80 06:AF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AF90 06:AF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AFA0 06:AF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AFB0 06:AFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AFC0 06:AFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AFD0 06:AFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AFE0 06:AFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01AFF0 06:AFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B000 06:AFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B010 06:B000: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B020 06:B010: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B030 06:B020: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B040 06:B030: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B050 06:B040: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B060 06:B050: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B070 06:B060: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B080 06:B070: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B090 06:B080: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B0A0 06:B090: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B0B0 06:B0A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B0C0 06:B0B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B0D0 06:B0C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B0E0 06:B0D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B0F0 06:B0E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B100 06:B0F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B110 06:B100: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B120 06:B110: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B130 06:B120: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B140 06:B130: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B150 06:B140: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B160 06:B150: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B170 06:B160: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B180 06:B170: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B190 06:B180: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B1A0 06:B190: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B1B0 06:B1A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B1C0 06:B1B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B1D0 06:B1C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B1E0 06:B1D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B1F0 06:B1E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B200 06:B1F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B210 06:B200: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B220 06:B210: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B230 06:B220: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B240 06:B230: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B250 06:B240: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B260 06:B250: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B270 06:B260: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B280 06:B270: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B290 06:B280: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B2A0 06:B290: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B2B0 06:B2A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B2C0 06:B2B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B2D0 06:B2C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B2E0 06:B2D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B2F0 06:B2E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B300 06:B2F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B310 06:B300: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B320 06:B310: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B330 06:B320: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B340 06:B330: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B350 06:B340: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B360 06:B350: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B370 06:B360: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B380 06:B370: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B390 06:B380: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B3A0 06:B390: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B3B0 06:B3A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B3C0 06:B3B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B3D0 06:B3C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B3E0 06:B3D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B3F0 06:B3E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B400 06:B3F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B410 06:B400: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B420 06:B410: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B430 06:B420: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B440 06:B430: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B450 06:B440: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B460 06:B450: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B470 06:B460: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B480 06:B470: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B490 06:B480: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B4A0 06:B490: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B4B0 06:B4A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B4C0 06:B4B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B4D0 06:B4C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B4E0 06:B4D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B4F0 06:B4E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B500 06:B4F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B510 06:B500: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B520 06:B510: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B530 06:B520: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B540 06:B530: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B550 06:B540: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B560 06:B550: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B570 06:B560: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B580 06:B570: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B590 06:B580: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B5A0 06:B590: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B5B0 06:B5A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B5C0 06:B5B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B5D0 06:B5C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B5E0 06:B5D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B5F0 06:B5E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B600 06:B5F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B610 06:B600: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B620 06:B610: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B630 06:B620: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B640 06:B630: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B650 06:B640: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B660 06:B650: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B670 06:B660: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B680 06:B670: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B690 06:B680: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B6A0 06:B690: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B6B0 06:B6A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B6C0 06:B6B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B6D0 06:B6C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B6E0 06:B6D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B6F0 06:B6E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B700 06:B6F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B710 06:B700: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B720 06:B710: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B730 06:B720: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B740 06:B730: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B750 06:B740: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B760 06:B750: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B770 06:B760: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B780 06:B770: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B790 06:B780: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B7A0 06:B790: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B7B0 06:B7A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B7C0 06:B7B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B7D0 06:B7C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B7E0 06:B7D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B7F0 06:B7E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B800 06:B7F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B810 06:B800: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B820 06:B810: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B830 06:B820: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B840 06:B830: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B850 06:B840: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B860 06:B850: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B870 06:B860: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B880 06:B870: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B890 06:B880: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B8A0 06:B890: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B8B0 06:B8A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B8C0 06:B8B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B8D0 06:B8C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B8E0 06:B8D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B8F0 06:B8E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B900 06:B8F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B910 06:B900: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B920 06:B910: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B930 06:B920: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B940 06:B930: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B950 06:B940: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B960 06:B950: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B970 06:B960: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B980 06:B970: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B990 06:B980: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B9A0 06:B990: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B9B0 06:B9A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B9C0 06:B9B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B9D0 06:B9C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B9E0 06:B9D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01B9F0 06:B9E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BA00 06:B9F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BA10 06:BA00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BA20 06:BA10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BA30 06:BA20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BA40 06:BA30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BA50 06:BA40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BA60 06:BA50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BA70 06:BA60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BA80 06:BA70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BA90 06:BA80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BAA0 06:BA90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BAB0 06:BAA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BAC0 06:BAB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BAD0 06:BAC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BAE0 06:BAD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BAF0 06:BAE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BB00 06:BAF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BB10 06:BB00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BB20 06:BB10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BB30 06:BB20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BB40 06:BB30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BB50 06:BB40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BB60 06:BB50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BB70 06:BB60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BB80 06:BB70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BB90 06:BB80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BBA0 06:BB90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BBB0 06:BBA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BBC0 06:BBB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BBD0 06:BBC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BBE0 06:BBD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BBF0 06:BBE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BC00 06:BBF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BC10 06:BC00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BC20 06:BC10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BC30 06:BC20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BC40 06:BC30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BC50 06:BC40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BC60 06:BC50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BC70 06:BC60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BC80 06:BC70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BC90 06:BC80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BCA0 06:BC90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BCB0 06:BCA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BCC0 06:BCB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BCD0 06:BCC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BCE0 06:BCD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BCF0 06:BCE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BD00 06:BCF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BD10 06:BD00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BD20 06:BD10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BD30 06:BD20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BD40 06:BD30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BD50 06:BD40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BD60 06:BD50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BD70 06:BD60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BD80 06:BD70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BD90 06:BD80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BDA0 06:BD90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BDB0 06:BDA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BDC0 06:BDB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BDD0 06:BDC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BDE0 06:BDD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BDF0 06:BDE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BE00 06:BDF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BE10 06:BE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BE20 06:BE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BE30 06:BE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BE40 06:BE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BE50 06:BE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BE60 06:BE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BE70 06:BE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BE80 06:BE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BE90 06:BE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BEA0 06:BE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BEB0 06:BEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BEC0 06:BEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BED0 06:BEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BEE0 06:BED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BEF0 06:BEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BF00 06:BEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BF10 06:BF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BF20 06:BF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BF30 06:BF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BF40 06:BF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01BF50 06:BF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.org $BF50
.segment "BANK_06i"
.include "copy_bank___BF50_BFFF.asm"
