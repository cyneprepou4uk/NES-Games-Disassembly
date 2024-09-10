.segment "BANK_06"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x018010-0x019CE7

; !! bzk .org control commands here
; take them into account when making
; changes inside this file



.export loc_0x01804E
.export sub_0x01809C
.export sub_0x018119
.export sub_0x01A090_write_buffer_to_ppu



tbl_8000_1st_quest:
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



tbl_802A_2nd_quest:
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
C D 0 - - - 0x01804E 06:803E: A5 13     LDA ram_subscript
C - - - - - 0x018050 06:8040: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- D 0 - I - 0x018053 06:8043: 47 80     .word ofs_027_8047_00
- D 0 - I - 0x018055 06:8045: 70 80     .word ofs_027_8070_01



ofs_027_8047_00:
C - - J - - 0x018057 06:8047: A5 10     LDA ram_dungeon_level
C - - - - - 0x018059 06:8049: 0A        ASL
C - - - - - 0x01805A 06:804A: AA        TAX
C - - - - - 0x01805B 06:804B: A4 16     LDY ram_current_save_slot
C - - - - - 0x01805D 06:804D: B9 2D 06  LDA ram_current_quest,Y
C - - - - - 0x018060 06:8050: D0 0C     BNE bra_805E_2nd_quest
; if 1st quest
C - - - - - 0x018062 06:8052: BD 00 80  LDA tbl_8000_1st_quest,X
C - - - - - 0x018065 06:8055: 85 00     STA ram_0000
C - - - - - 0x018067 06:8057: E8        INX
C - - - - - 0x018068 06:8058: BD 00 80  LDA tbl_8000_1st_quest,X
C - - - - - 0x01806B 06:805B: 4C 67 80  JMP loc_8067
bra_805E_2nd_quest:
C - - - - - 0x01806E 06:805E: BD 2A 80  LDA tbl_802A_2nd_quest,X
C - - - - - 0x018071 06:8061: 85 00     STA ram_0000
C - - - - - 0x018073 06:8063: E8        INX
C - - - - - 0x018074 06:8064: BD 2A 80  LDA tbl_802A_2nd_quest,X
loc_8067:
C D 0 - - - 0x018077 06:8067: 85 01     STA ram_0001
C - - - - - 0x018079 06:8069: 20 A4 80  JSR sub_80A4_set_copy_range_687E_6B7D
C - - - - - 0x01807C 06:806C: 20 D7 80  JSR sub_80D7_copy_bat_table_to_bat
C - - - - - 0x01807F 06:806F: 60        RTS



ofs_027_8070_01:
C - - J - - 0x018080 06:8070: A5 10     LDA ram_dungeon_level
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
C - - - - - 0x018097 06:8087: 85 13     STA ram_subscript
C - - - - - 0x018099 06:8089: E6 11     INC ram_0011
C - - - - - 0x01809B 06:808B: 60        RTS



sub_0x01809C:
C - - - - - 0x01809C 06:808C: A2 00     LDX #$00    ; bzk optimize, no loop here, X is not needed
C - - - - - 0x01809E 06:808E: BD 28 80  LDA tbl_8028_bat_table_location,X
C - - - - - 0x0180A1 06:8091: 85 00     STA ram_0000
C - - - - - 0x0180A3 06:8093: E8        INX ; 01
C - - - - - 0x0180A4 06:8094: BD 28 80  LDA tbl_8028_bat_table_location,X
C - - - - - 0x0180A7 06:8097: 85 01     STA ram_0001
C - - - - - 0x0180A9 06:8099: 20 C6 80  JSR sub_80C6
C - - - - - 0x0180AC 06:809C: 20 D7 80  JSR sub_80D7_copy_bat_table_to_bat
C - - - - - 0x0180AF 06:809F: A9 00     LDA #$00
C - - - - - 0x0180B1 06:80A1: 85 13     STA ram_subscript
C - - - - - 0x0180B3 06:80A3: 60        RTS



sub_80A4_set_copy_range_687E_6B7D:
.scope
tmp_copy_start = ram_687E_map_data
tmp_copy_end   = ram_687E_map_data + $300 - $01
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
tmp_copy_start = ram_6B7E_palette_buffer
tmp_copy_end   = ram_6B7E_palette_buffer + $100 - $01
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
C - - - - - 0x0180F9 06:80E9: E6 13     INC ram_subscript
C - - - - - 0x0180FB 06:80EB: 60        RTS
bra_80EC_not_finished:
; bzk optimize, INC lo + BNE check + INC hi if needed
C - - - - - 0x0180FC 06:80EC: A5 02     LDA ram_0002
C - - - - - 0x0180FE 06:80EE: 18        CLC
C - - - - - 0x0180FF 06:80EF: 69 01     ADC #< $0001
C - - - - - 0x018101 06:80F1: 85 02     STA ram_0002
C - - - - - 0x018103 06:80F3: A5 03     LDA ram_0003
C - - - - - 0x018105 06:80F5: 69 00     ADC #> $0001
C - - - - - 0x018107 06:80F7: 85 03     STA ram_0003
C - - - - - 0x018109 06:80F9: A5 00     LDA ram_0000
C - - - - - 0x01810B 06:80FB: 18        CLC
C - - - - - 0x01810C 06:80FC: 69 01     ADC #< $0001
C - - - - - 0x01810E 06:80FE: 85 00     STA ram_0000
C - - - - - 0x018110 06:8100: A5 01     LDA ram_0001
C - - - - - 0x018112 06:8102: 69 00     ADC #> $0001
C - - - - - 0x018114 06:8104: 85 01     STA ram_0001
C - - - - - 0x018116 06:8106: 4C D9 80  JMP loc_80D9_loop



sub_0x018119:
C - - - - - 0x018119 06:8109: A4 16     LDY ram_current_save_slot
C - - - - - 0x01811B 06:810B: B9 2D 06  LDA ram_current_quest,Y
C - - - - - 0x01811E 06:810E: F0 1C     BEQ bra_812C_RTS
; if 2nd quest
C - - - - - 0x018120 06:8110: A5 10     LDA ram_dungeon_level
C - - - - - 0x018122 06:8112: F0 19     BEQ bra_812D    ; if overworld
; if dungeon
C - - - - - 0x018124 06:8114: AA        TAX
C - - - - - 0x018125 06:8115: 0A        ASL
C - - - - - 0x018126 06:8116: A8        TAY
C - - - - - 0x018127 06:8117: B9 A2 83  LDA tbl_83A4 - $02,Y
C - - - - - 0x01812A 06:811A: 85 00     STA ram_0000
C - - - - - 0x01812C 06:811C: B9 A3 83  LDA tbl_83A4 - $01,Y
C - - - - - 0x01812F 06:811F: 85 01     STA ram_0001
C - - - - - 0x018131 06:8121: BC B5 83  LDY tbl_83B6_data_size - $01,X
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
C - - - - - 0x01814B 06:813B: A9 7B     LDA #con_obj_id_7B
C - - - - - 0x01814D 06:813D: 8D 09 6A  STA ram_69FE_map_data + $0B
C - - - - - 0x018150 06:8140: A9 7B     LDA #con_obj_id_7B
C - - - - - 0x018152 06:8142: 8D 3A 6A  STA ram_69FE_map_data + $3C
C - - - - - 0x018155 06:8145: A9 5A     LDA #con_obj_id_5A
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
- D 0 - - - 0x018177 06:8167: 7B        .byte $7B   ; 00 
- D 0 - - - 0x018178 06:8168: 83        .byte $83   ; 01 
- D 0 - - - 0x018179 06:8169: 84        .byte $84   ; 02 
- D 0 - - - 0x01817A 06:816A: 0F        .byte $0F   ; 03 
- D 0 - - - 0x01817B 06:816B: 0B        .byte $0B   ; 04 
- D 0 - - - 0x01817C 06:816C: 12        .byte $12   ; 05 
- D 0 - - - 0x01817D 06:816D: 7A        .byte $7A   ; 06 
- D 0 - - - 0x01817E 06:816E: 2F        .byte $2F   ; 07 



_off012_816F_01:
- D 0 - I - 0x01817F 06:816F: C9        .byte $C9   ; ram_6BA7
- D 0 - I - 0x018180 06:8170: AC        .byte $AC   ; ram_6BA8
- D 0 - I - 0x018181 06:8171: 89        .byte $89   ; ram_6BA9
- D 0 - I - 0x018182 06:8172: B7        .byte $B7   ; ram_6BAA
- D 0 - I - 0x018183 06:8173: 00        .byte $00   ; ram_6BAB
- D 0 - I - 0x018184 06:8174: E0        .byte $E0   ; ram_6BAC
- D 0 - I - 0x018185 06:8175: 77        .byte $77   ; ram_6BAD
- D 0 - I - 0x018186 06:8176: 08        .byte $00 + $08   ; ram_6BAE
- D 0 - I - 0x018187 06:8177: FF 06     .word ram_06FF
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



_off012_81A8_02:
- D 0 - I - 0x0181B8 06:81A8: C9        .byte $C9   ; ram_6BA7
- D 0 - I - 0x0181B9 06:81A9: AC        .byte $AC   ; ram_6BA8
- D 0 - I - 0x0181BA 06:81AA: 89        .byte $89   ; ram_6BA9
- D 0 - I - 0x0181BB 06:81AB: 87        .byte $87   ; ram_6BAA
- D 0 - I - 0x0181BC 06:81AC: 05        .byte $05   ; ram_6BAB
- D 0 - I - 0x0181BD 06:81AD: 00        .byte $00   ; ram_6BAC
- D 0 - I - 0x0181BE 06:81AE: 75        .byte $75   ; ram_6BAD
- D 0 - I - 0x0181BF 06:81AF: 20        .byte $20 + $00   ; ram_6BAE
- D 0 - I - 0x0181C0 06:81B0: FF 06     .word ram_06FF
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



_off012_81DF_03:
- D 0 - I - 0x0181EF 06:81DF: C9        .byte $C9   ; ram_6BA7
- D 0 - I - 0x0181F0 06:81E0: AC        .byte $AC   ; ram_6BA8
- D 0 - I - 0x0181F1 06:81E1: 89        .byte $89   ; ram_6BA9
- D 0 - I - 0x0181F2 06:81E2: 37        .byte $37   ; ram_6BAA
- D 0 - I - 0x0181F3 06:81E3: 0D        .byte $0D   ; ram_6BAB
- D 0 - I - 0x0181F4 06:81E4: C8        .byte $C8   ; ram_6BAC
- D 0 - I - 0x0181F5 06:81E5: 79        .byte $79   ; ram_6BAD
- D 0 - I - 0x0181F6 06:81E6: 1B        .byte $10 + $0B   ; ram_6BAE
- D 0 - I - 0x0181F7 06:81E7: FF 06     .word ram_06FF
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



_off012_821C_04:
- D 0 - I - 0x01822C 06:821C: C9        .byte $C9   ; ram_6BA7
- D 0 - I - 0x01822D 06:821D: AC        .byte $AC   ; ram_6BA8
- D 0 - I - 0x01822E 06:821E: 89        .byte $89   ; ram_6BA9
- D 0 - I - 0x01822F 06:821F: 86        .byte $86   ; ram_6BAA
- D 0 - I - 0x018230 06:8220: 06        .byte $06   ; ram_6BAB
- D 0 - I - 0x018231 06:8221: 10        .byte $10   ; ram_6BAC
- D 0 - I - 0x018232 06:8222: 72        .byte $72   ; ram_6BAD
- D 0 - I - 0x018233 06:8223: 00        .byte $00 + $00   ; ram_6BAE
- D 0 - I - 0x018234 06:8224: FF 06     .word ram_06FF
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



_off012_8255_05:
- D 0 - I - 0x018265 06:8255: C9        .byte $C9   ; ram_6BA7
- D 0 - I - 0x018266 06:8256: AC        .byte $AC   ; ram_6BA8
- D 0 - I - 0x018267 06:8257: 89        .byte $89   ; ram_6BA9
- D 0 - I - 0x018268 06:8258: 87        .byte $87   ; ram_6BAA
- D 0 - I - 0x018269 06:8259: 0A        .byte $0A   ; ram_6BAB
- D 0 - I - 0x01826A 06:825A: B0        .byte $B0   ; ram_6BAC
- D 0 - I - 0x01826B 06:825B: 7D        .byte $7D   ; ram_6BAD
- D 0 - I - 0x01826C 06:825C: 4F        .byte $40 + $0F   ; ram_6BAE
- D 0 - I - 0x01826D 06:825D: FF 06     .word ram_06FF
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



_off012_8298_06:
- D 0 - I - 0x0182A8 06:8298: 49        .byte $49   ; ram_6BA7
- D 0 - I - 0x0182A9 06:8299: 79        .byte $79   ; ram_6BA8
- D 0 - I - 0x0182AA 06:829A: 89        .byte $89   ; ram_6BA9
- D 0 - I - 0x0182AB 06:829B: 56        .byte $56   ; ram_6BAA
- D 0 - I - 0x0182AC 06:829C: 04        .byte $04   ; ram_6BAB
- D 0 - I - 0x0182AD 06:829D: 00        .byte $00   ; ram_6BAC
- D 0 - I - 0x0182AE 06:829E: 74        .byte $74   ; ram_6BAD
- D 0 - I - 0x0182AF 06:829F: 16        .byte $10 + $06   ; ram_6BAE
- D 0 - I - 0x0182B0 06:82A0: FF 06     .word ram_06FF
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



_off012_82D8_07:
- D 0 - I - 0x0182E8 06:82D8: C9        .byte $C9   ; ram_6BA7
- D 0 - I - 0x0182E9 06:82D9: AC        .byte $AC   ; ram_6BA8
- D 0 - I - 0x0182EA 06:82DA: 89        .byte $89   ; ram_6BA9
- D 0 - I - 0x0182EB 06:82DB: 79        .byte $79   ; ram_6BAA
- D 0 - I - 0x0182EC 06:82DC: 0C        .byte $0C   ; ram_6BAB
- D 0 - I - 0x0182ED 06:82DD: C0        .byte $C0   ; ram_6BAC
- D 0 - I - 0x0182EE 06:82DE: 7F        .byte $7F   ; ram_6BAD
- D 0 - I - 0x0182EF 06:82DF: 2D        .byte $20 + $0D   ; ram_6BAE
- D 0 - I - 0x0182F0 06:82E0: 7F 07     .word ram_077F
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



_off012_8317_08:
- D 0 - I - 0x018327 06:8317: C9        .byte $C9   ; ram_6BA7
- D 0 - I - 0x018328 06:8318: AC        .byte $AC   ; ram_6BA8
- D 0 - I - 0x018329 06:8319: 89        .byte $89   ; ram_6BA9
- D 0 - I - 0x01832A 06:831A: 57        .byte $57   ; ram_6BAA
- D 0 - I - 0x01832B 06:831B: 0C        .byte $0C   ; ram_6BAB
- D 0 - I - 0x01832C 06:831C: C0        .byte $C0   ; ram_6BAC
- D 0 - I - 0x01832D 06:831D: 79        .byte $79   ; ram_6BAD
- D 0 - I - 0x01832E 06:831E: 1B        .byte $10 + $0B   ; ram_6BAE
- D 0 - I - 0x01832F 06:831F: 7F 07     .word ram_077F
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



_off012_835A_09:
- D 0 - I - 0x01836A 06:835A: C9        .byte $C9   ; ram_6BA7
- D 0 - I - 0x01836B 06:835B: AC        .byte $AC   ; ram_6BA8
- D 0 - I - 0x01836C 06:835C: 89        .byte $89   ; ram_6BA9
- D 0 - I - 0x01836D 06:835D: B6        .byte $B6   ; ram_6BAA
- D 0 - I - 0x01836E 06:835E: 04        .byte $04   ; ram_6BAB
- D 0 - I - 0x01836F 06:835F: 00        .byte $00   ; ram_6BAC
- D 0 - I - 0x018370 06:8360: 74        .byte $74   ; ram_6BAD
- D 0 - I - 0x018371 06:8361: 07        .byte $00 + $07   ; ram_6BAE
- D 0 - I - 0x018372 06:8362: 7F 07     .word ram_077F
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
- D 0 - - - 0x0183B4 06:83A4: 6F 81     .word _off012_816F_01
- D 0 - - - 0x0183B6 06:83A6: A8 81     .word _off012_81A8_02
- D 0 - - - 0x0183B8 06:83A8: DF 81     .word _off012_81DF_03
- D 0 - - - 0x0183BA 06:83AA: 1C 82     .word _off012_821C_04
- D 0 - - - 0x0183BC 06:83AC: 55 82     .word _off012_8255_05
- D 0 - - - 0x0183BE 06:83AE: 98 82     .word _off012_8298_06
- D 0 - - - 0x0183C0 06:83B0: D8 82     .word _off012_82D8_07
- D 0 - - - 0x0183C2 06:83B2: 17 83     .word _off012_8317_08
- D 0 - - - 0x0183C4 06:83B4: 5A 83     .word _off012_835A_09



tbl_83B6_data_size:
- D 0 - - - 0x0183C6 06:83B6: 39        .byte $39   ; 01 
- D 0 - - - 0x0183C7 06:83B7: 37        .byte $37   ; 02 
- D 0 - - - 0x0183C8 06:83B8: 3D        .byte $3D   ; 03 
- D 0 - - - 0x0183C9 06:83B9: 39        .byte $39   ; 04 
- D 0 - - - 0x0183CA 06:83BA: 43        .byte $43   ; 05 
- D 0 - - - 0x0183CB 06:83BB: 40        .byte $40   ; 06 
- D 0 - - - 0x0183CC 06:83BC: 3F        .byte $3F   ; 07 
- D 0 - - - 0x0183CD 06:83BD: 43        .byte $43   ; 08 
- D 0 - - - 0x0183CE 06:83BE: 4A        .byte $4A   ; 09 


; bzk garbage
- - - - - - 0x0183CF 06:83BF: FF        .byte $FF   ; 
- - - - - - 0x0183D0 06:83C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0183E0 06:83D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0183F0 06:83E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x018400 06:83F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



_off009_8400_00:
_off011_8400_00:
- D 0 - I - 0x018410 06:8400: A3        .byte $A3   ; 00 
- D 0 - I - 0x018411 06:8401: 93        .byte $93   ; 01 
- D 0 - I - 0x018412 06:8402: 63        .byte $63   ; 02 
- D 0 - I - 0x018413 06:8403: 73        .byte $73   ; 03 
- D 0 - I - 0x018414 06:8404: C3        .byte $C3   ; 04 
- D 0 - I - 0x018415 06:8405: 53        .byte $53   ; 05 
- D 0 - I - 0x018416 06:8406: B3        .byte $B3   ; 06 
- D 0 - I - 0x018417 06:8407: A3        .byte $A3   ; 07 
- D 0 - I - 0x018418 06:8408: 03        .byte $03   ; 08 
- D 0 - I - 0x018419 06:8409: 93        .byte $93   ; 09 
- D 0 - I - 0x01841A 06:840A: 2B        .byte $2B   ; 0A 
- D 0 - I - 0x01841B 06:840B: 73        .byte $73   ; 0B 
- D 0 - I - 0x01841C 06:840C: 83        .byte $83   ; 0C 
- D 0 - I - 0x01841D 06:840D: 93        .byte $93   ; 0D 
- D 0 - I - 0x01841E 06:840E: 57        .byte $57   ; 0E 
- D 0 - I - 0x01841F 06:840F: 87        .byte $87   ; 0F 
- D 0 - I - 0x018420 06:8410: 93        .byte $93   ; 10 
- D 0 - I - 0x018421 06:8411: 53        .byte $53   ; 11 
- D 0 - I - 0x018422 06:8412: 83        .byte $83   ; 12 
- D 0 - I - 0x018423 06:8413: 23        .byte $23   ; 13 
- D 0 - I - 0x018424 06:8414: C3        .byte $C3   ; 14 
- D 0 - I - 0x018425 06:8415: C3        .byte $C3   ; 15 
- D 0 - I - 0x018426 06:8416: 63        .byte $63   ; 16 
- D 0 - I - 0x018427 06:8417: 0B        .byte $0B   ; 17 
- D 0 - I - 0x018428 06:8418: CB        .byte $CB   ; 18 
- D 0 - I - 0x018429 06:8419: 4B        .byte $4B   ; 19 
- D 0 - I - 0x01842A 06:841A: 6B        .byte $6B   ; 1A 
- D 0 - I - 0x01842B 06:841B: 93        .byte $93   ; 1B 
- D 0 - I - 0x01842C 06:841C: 33        .byte $33   ; 1C 
- D 0 - I - 0x01842D 06:841D: 27        .byte $27   ; 1D 
- D 0 - I - 0x01842E 06:841E: CF        .byte $CF   ; 1E 
- D 0 - I - 0x01842F 06:841F: 67        .byte $67   ; 1F 
- D 0 - I - 0x018430 06:8420: 50        .byte $50   ; 20 
- D 0 - I - 0x018431 06:8421: 50        .byte $50   ; 21 
- D 0 - I - 0x018432 06:8422: 73        .byte $73   ; 22 
- D 0 - I - 0x018433 06:8423: 43        .byte $43   ; 23 
- D 0 - I - 0x018434 06:8424: 03        .byte $03   ; 24 
- D 0 - I - 0x018435 06:8425: A3        .byte $A3   ; 25 
- D 0 - I - 0x018436 06:8426: 3B        .byte $3B   ; 26 
- D 0 - I - 0x018437 06:8427: EB        .byte $EB   ; 27 
- D 0 - I - 0x018438 06:8428: EB        .byte $EB   ; 28 
- D 0 - I - 0x018439 06:8429: B3        .byte $B3   ; 29 
- D 0 - I - 0x01843A 06:842A: 03        .byte $03   ; 2A 
- D 0 - I - 0x01843B 06:842B: B3        .byte $B3   ; 2B 
- D 0 - I - 0x01843C 06:842C: 93        .byte $93   ; 2C 
- D 0 - I - 0x01843D 06:842D: 5F        .byte $5F   ; 2D 
- D 0 - I - 0x01843E 06:842E: 0F        .byte $0F   ; 2E 
- D 0 - I - 0x01843F 06:842F: 60        .byte $60   ; 2F 
- D 0 - I - 0x018440 06:8430: 70        .byte $70   ; 30 
- D 0 - I - 0x018441 06:8431: 70        .byte $70   ; 31 
- D 0 - I - 0x018442 06:8432: 03        .byte $03   ; 32 
- D 0 - I - 0x018443 06:8433: A3        .byte $A3   ; 33 
- D 0 - I - 0x018444 06:8434: 43        .byte $43   ; 34 
- D 0 - I - 0x018445 06:8435: 0B        .byte $0B   ; 35 
- D 0 - I - 0x018446 06:8436: 0B        .byte $0B   ; 36 
- D 0 - I - 0x018447 06:8437: 73        .byte $73   ; 37 
- D 0 - I - 0x018448 06:8438: 0B        .byte $0B   ; 38 
- D 0 - I - 0x018449 06:8439: 03        .byte $03   ; 39 
- D 0 - I - 0x01844A 06:843A: C3        .byte $C3   ; 3A 
- D 0 - I - 0x01844B 06:843B: 63        .byte $63   ; 3B 
- D 0 - I - 0x01844C 06:843C: 72        .byte $72   ; 3C 
- D 0 - I - 0x01844D 06:843D: 92        .byte $92   ; 3D 
- D 0 - I - 0x01844E 06:843E: 0F        .byte $0F   ; 3E 
- D 0 - I - 0x01844F 06:843F: 0F        .byte $0F   ; 3F 
- D 0 - I - 0x018450 06:8440: 00        .byte $00   ; 40 
- D 0 - I - 0x018451 06:8441: 00        .byte $00   ; 41 
- D 0 - I - 0x018452 06:8442: 63        .byte $63   ; 42 
- D 0 - I - 0x018453 06:8443: 03        .byte $03   ; 43 
- D 0 - I - 0x018454 06:8444: 4B        .byte $4B   ; 44 
- D 0 - I - 0x018455 06:8445: 83        .byte $83   ; 45 
- D 0 - I - 0x018456 06:8446: 8A        .byte $8A   ; 46 
- D 0 - I - 0x018457 06:8447: BA        .byte $BA   ; 47 
- D 0 - I - 0x018458 06:8448: BA        .byte $BA   ; 48 
- D 0 - I - 0x018459 06:8449: 32        .byte $32   ; 49 
- D 0 - I - 0x01845A 06:844A: B2        .byte $B2   ; 4A 
- D 0 - I - 0x01845B 06:844B: C2        .byte $C2   ; 4B 
- D 0 - I - 0x01845C 06:844C: 02        .byte $02   ; 4C 
- D 0 - I - 0x01845D 06:844D: C2        .byte $C2   ; 4D 
- D 0 - I - 0x01845E 06:844E: 72        .byte $72   ; 4E 
- D 0 - I - 0x01845F 06:844F: 0F        .byte $0F   ; 4F 
- D 0 - I - 0x018460 06:8450: 00        .byte $00   ; 50 
- D 0 - I - 0x018461 06:8451: A3        .byte $A3   ; 51 
- D 0 - I - 0x018462 06:8452: 03        .byte $03   ; 52 
- D 0 - I - 0x018463 06:8453: 83        .byte $83   ; 53 
- D 0 - I - 0x018464 06:8454: 0A        .byte $0A   ; 54 
- D 0 - I - 0x018465 06:8455: 0A        .byte $0A   ; 55 
- D 0 - I - 0x018466 06:8456: BA        .byte $BA   ; 56 
- D 0 - I - 0x018467 06:8457: 02        .byte $02   ; 57 
- D 0 - I - 0x018468 06:8458: C2        .byte $C2   ; 58 
- D 0 - I - 0x018469 06:8459: 0A        .byte $0A   ; 59 
- D 0 - I - 0x01846A 06:845A: 0A        .byte $0A   ; 5A 
- D 0 - I - 0x01846B 06:845B: 32        .byte $32   ; 5B 
- D 0 - I - 0x01846C 06:845C: 02        .byte $02   ; 5C 
- D 0 - I - 0x01846D 06:845D: 02        .byte $02   ; 5D 
- D 0 - I - 0x01846E 06:845E: 72        .byte $72   ; 5E 
- D 0 - I - 0x01846F 06:845F: 0F        .byte $0F   ; 5F 
- D 0 - I - 0x018470 06:8460: C3        .byte $C3   ; 60 
- D 0 - I - 0x018471 06:8461: 03        .byte $03   ; 61 
- D 0 - I - 0x018472 06:8462: 63        .byte $63   ; 62 
- D 0 - I - 0x018473 06:8463: 73        .byte $73   ; 63 
- D 0 - I - 0x018474 06:8464: 72        .byte $72   ; 64 
- D 0 - I - 0x018475 06:8465: 0A        .byte $0A   ; 65 
- D 0 - I - 0x018476 06:8466: 72        .byte $72   ; 66 
- D 0 - I - 0x018477 06:8467: 72        .byte $72   ; 67 
- D 0 - I - 0x018478 06:8468: 32        .byte $32   ; 68 
- D 0 - I - 0x018479 06:8469: 0A        .byte $0A   ; 69 
- D 0 - I - 0x01847A 06:846A: DA        .byte $DA   ; 6A 
- D 0 - I - 0x01847B 06:846B: 52        .byte $52   ; 6B 
- D 0 - I - 0x01847C 06:846C: 42        .byte $42   ; 6C 
- D 0 - I - 0x01847D 06:846D: 62        .byte $62   ; 6D 
- D 0 - I - 0x01847E 06:846E: C2        .byte $C2   ; 6E 
- D 0 - I - 0x01847F 06:846F: 3F        .byte $3F   ; 6F 
- D 0 - I - 0x018480 06:8470: B3        .byte $B3   ; 70 
- D 0 - I - 0x018481 06:8471: 53        .byte $53   ; 71 
- D 0 - I - 0x018482 06:8472: 43        .byte $43   ; 72 
- D 0 - I - 0x018483 06:8473: 03        .byte $03   ; 73 
- D 0 - I - 0x018484 06:8474: 82        .byte $82   ; 74 
- D 0 - I - 0x018485 06:8475: 2A        .byte $2A   ; 75 
- D 0 - I - 0x018486 06:8476: 62        .byte $62   ; 76 
- D 0 - I - 0x018487 06:8477: 42        .byte $42   ; 77 
- D 0 - I - 0x018488 06:8478: 52        .byte $52   ; 78 
- D 0 - I - 0x018489 06:8479: 63        .byte $63   ; 79 
- D 0 - I - 0x01848A 06:847A: 03        .byte $03   ; 7A 
- D 0 - I - 0x01848B 06:847B: 9F        .byte $9F   ; 7B 
- D 0 - I - 0x01848C 06:847C: 6F        .byte $6F   ; 7C 
- D 0 - I - 0x01848D 06:847D: 6F        .byte $6F   ; 7D 
- D 0 - I - 0x01848E 06:847E: 0F        .byte $0F   ; 7E 
- D 0 - I - 0x01848F 06:847F: 0F        .byte $0F   ; 7F 

- D 0 - I - 0x018490 06:8480: 27        .byte $27   ; 00 
- D 0 - I - 0x018491 06:8481: 5F        .byte $5F   ; 01 
- D 0 - I - 0x018492 06:8482: 6B        .byte $6B   ; 02 
- D 0 - I - 0x018493 06:8483: 5F        .byte $5F   ; 03 
- D 0 - I - 0x018494 06:8484: 6B        .byte $6B   ; 04 
- D 0 - I - 0x018495 06:8485: 27        .byte $27   ; 05 
- D 0 - I - 0x018496 06:8486: 47        .byte $47   ; 06 
- D 0 - I - 0x018497 06:8487: 5F        .byte $5F   ; 07 
- D 0 - I - 0x018498 06:8488: 03        .byte $03   ; 08 
- D 0 - I - 0x018499 06:8489: 4F        .byte $4F   ; 09 
- D 0 - I - 0x01849A 06:848A: 4B        .byte $4B   ; 0A 
- D 0 - I - 0x01849B 06:848B: 17        .byte $17   ; 0B 
- D 0 - I - 0x01849C 06:848C: 7B        .byte $7B   ; 0C 
- D 0 - I - 0x01849D 06:848D: 6B        .byte $6B   ; 0D 
- D 0 - I - 0x01849E 06:848E: 63        .byte $63   ; 0E 
- D 0 - I - 0x01849F 06:848F: 8B        .byte $8B   ; 0F 
- D 0 - I - 0x0184A0 06:8490: 5B        .byte $5B   ; 10 
- D 0 - I - 0x0184A1 06:8491: 63        .byte $63   ; 11 
- D 0 - I - 0x0184A2 06:8492: 7F        .byte $7F   ; 12 
- D 0 - I - 0x0184A3 06:8493: 87        .byte $87   ; 13 
- D 0 - I - 0x0184A4 06:8494: 5F        .byte $5F   ; 14 
- D 0 - I - 0x0184A5 06:8495: 7B        .byte $7B   ; 15 
- D 0 - I - 0x0184A6 06:8496: 5B        .byte $5B   ; 16 
- D 0 - I - 0x0184A7 06:8497: 03        .byte $03   ; 17 
- D 0 - I - 0x0184A8 06:8498: 6B        .byte $6B   ; 18 
- D 0 - I - 0x0184A9 06:8499: 1F        .byte $1F   ; 19 
- D 0 - I - 0x0184AA 06:849A: 6F        .byte $6F   ; 1A 
- D 0 - I - 0x0184AB 06:849B: 17        .byte $17   ; 1B 
- D 0 - I - 0x0184AC 06:849C: 57        .byte $57   ; 1C 
- D 0 - I - 0x0184AD 06:849D: 53        .byte $53   ; 1D 
- D 0 - I - 0x0184AE 06:849E: 5F        .byte $5F   ; 1E 
- D 0 - I - 0x0184AF 06:849F: 5A        .byte $5A   ; 1F 
- D 0 - I - 0x0184B0 06:84A0: 44        .byte $44   ; 20 
- D 0 - I - 0x0184B1 06:84A1: 4C        .byte $4C   ; 21 
- D 0 - I - 0x0184B2 06:84A2: 18        .byte $18   ; 22 
- D 0 - I - 0x0184B3 06:84A3: 53        .byte $53   ; 23 
- D 0 - I - 0x0184B4 06:84A4: 03        .byte $03   ; 24 
- D 0 - I - 0x0184B5 06:84A5: 77        .byte $77   ; 25 
- D 0 - I - 0x0184B6 06:84A6: 7F        .byte $7F   ; 26 
- D 0 - I - 0x0184B7 06:84A7: 6B        .byte $6B   ; 27 
- D 0 - I - 0x0184B8 06:84A8: 86        .byte $86   ; 28 
- D 0 - I - 0x0184B9 06:84A9: 6B        .byte $6B   ; 29 
- D 0 - I - 0x0184BA 06:84AA: 03        .byte $03   ; 2A 
- D 0 - I - 0x0184BB 06:84AB: 8F        .byte $8F   ; 2B 
- D 0 - I - 0x0184BC 06:84AC: 47        .byte $47   ; 2C 
- D 0 - I - 0x0184BD 06:84AD: 87        .byte $87   ; 2D 
- D 0 - I - 0x0184BE 06:84AE: 03        .byte $03   ; 2E 
- D 0 - I - 0x0184BF 06:84AF: 44        .byte $44   ; 2F 
- D 0 - I - 0x0184C0 06:84B0: 18        .byte $18   ; 30 
- D 0 - I - 0x0184C1 06:84B1: 00        .byte $00   ; 31 
- D 0 - I - 0x0184C2 06:84B2: 03        .byte $03   ; 32 
- D 0 - I - 0x0184C3 06:84B3: 68        .byte $68   ; 33 
- D 0 - I - 0x0184C4 06:84B4: 83        .byte $83   ; 34 
- D 0 - I - 0x0184C5 06:84B5: 03        .byte $03   ; 35 
- D 0 - I - 0x0184C6 06:84B6: 03        .byte $03   ; 36 
- D 0 - I - 0x0184C7 06:84B7: 07        .byte $07   ; 37 
- D 0 - I - 0x0184C8 06:84B8: 03        .byte $03   ; 38 
- D 0 - I - 0x0184C9 06:84B9: 02        .byte $02   ; 39 
- D 0 - I - 0x0184CA 06:84BA: 47        .byte $47   ; 3A 
- D 0 - I - 0x0184CB 06:84BB: 03        .byte $03   ; 3B 
- D 0 - I - 0x0184CC 06:84BC: 0A        .byte $0A   ; 3C 
- D 0 - I - 0x0184CD 06:84BD: 86        .byte $86   ; 3D 
- D 0 - I - 0x0184CE 06:84BE: 03        .byte $03   ; 3E 
- D 0 - I - 0x0184CF 06:84BF: 03        .byte $03   ; 3F 
- D 0 - I - 0x0184D0 06:84C0: 00        .byte $00   ; 40 
- D 0 - I - 0x0184D1 06:84C1: 00        .byte $00   ; 41 
- D 0 - I - 0x0184D2 06:84C2: 1F        .byte $1F   ; 42 
- D 0 - I - 0x0184D3 06:84C3: 02        .byte $02   ; 43 
- D 0 - I - 0x0184D4 06:84C4: 76        .byte $76   ; 44 
- D 0 - I - 0x0184D5 06:84C5: 12        .byte $12   ; 45 
- D 0 - I - 0x0184D6 06:84C6: 7E        .byte $7E   ; 46 
- D 0 - I - 0x0184D7 06:84C7: 46        .byte $46   ; 47 
- D 0 - I - 0x0184D8 06:84C8: 86        .byte $86   ; 48 
- D 0 - I - 0x0184D9 06:84C9: 52        .byte $52   ; 49 
- D 0 - I - 0x0184DA 06:84CA: 76        .byte $76   ; 4A 
- D 0 - I - 0x0184DB 06:84CB: 6A        .byte $6A   ; 4B 
- D 0 - I - 0x0184DC 06:84CC: 02        .byte $02   ; 4C 
- D 0 - I - 0x0184DD 06:84CD: 7E        .byte $7E   ; 4D 
- D 0 - I - 0x0184DE 06:84CE: 8E        .byte $8E   ; 4E 
- D 0 - I - 0x0184DF 06:84CF: 03        .byte $03   ; 4F 
- D 0 - I - 0x0184E0 06:84D0: 00        .byte $00   ; 50 
- D 0 - I - 0x0184E1 06:84D1: 8F        .byte $8F   ; 51 
- D 0 - I - 0x0184E2 06:84D2: 03        .byte $03   ; 52 
- D 0 - I - 0x0184E3 06:84D3: 8A        .byte $8A   ; 53 
- D 0 - I - 0x0184E4 06:84D4: 02        .byte $02   ; 54 
- D 0 - I - 0x0184E5 06:84D5: 02        .byte $02   ; 55 
- D 0 - I - 0x0184E6 06:84D6: 8E        .byte $8E   ; 56 
- D 0 - I - 0x0184E7 06:84D7: 02        .byte $02   ; 57 
- D 0 - I - 0x0184E8 06:84D8: 86        .byte $86   ; 58 
- D 0 - I - 0x0184E9 06:84D9: 02        .byte $02   ; 59 
- D 0 - I - 0x0184EA 06:84DA: 02        .byte $02   ; 5A 
- D 0 - I - 0x0184EB 06:84DB: 8E        .byte $8E   ; 5B 
- D 0 - I - 0x0184EC 06:84DC: 02        .byte $02   ; 5C 
- D 0 - I - 0x0184ED 06:84DD: 02        .byte $02   ; 5D 
- D 0 - I - 0x0184EE 06:84DE: 7A        .byte $7A   ; 5E 
- D 0 - I - 0x0184EF 06:84DF: 03        .byte $03   ; 5F 
- D 0 - I - 0x0184F0 06:84E0: 5B        .byte $5B   ; 60 
- D 0 - I - 0x0184F1 06:84E1: 03        .byte $03   ; 61 
- D 0 - I - 0x0184F2 06:84E2: 8B        .byte $8B   ; 62 
- D 0 - I - 0x0184F3 06:84E3: 5F        .byte $5F   ; 63 
- D 0 - I - 0x0184F4 06:84E4: 6A        .byte $6A   ; 64 
- D 0 - I - 0x0184F5 06:84E5: 03        .byte $03   ; 65 
- D 0 - I - 0x0184F6 06:84E6: 7B        .byte $7B   ; 66 
- D 0 - I - 0x0184F7 06:84E7: 86        .byte $86   ; 67 
- D 0 - I - 0x0184F8 06:84E8: 5E        .byte $5E   ; 68 
- D 0 - I - 0x0184F9 06:84E9: 02        .byte $02   ; 69 
- D 0 - I - 0x0184FA 06:84EA: 5E        .byte $5E   ; 6A 
- D 0 - I - 0x0184FB 06:84EB: 8A        .byte $8A   ; 6B 
- D 0 - I - 0x0184FC 06:84EC: 22        .byte $22   ; 6C 
- D 0 - I - 0x0184FD 06:84ED: 22        .byte $22   ; 6D 
- D 0 - I - 0x0184FE 06:84EE: 8E        .byte $8E   ; 6E 
- D 0 - I - 0x0184FF 06:84EF: 77        .byte $77   ; 6F 
- D 0 - I - 0x018500 06:84F0: 73        .byte $73   ; 70 
- D 0 - I - 0x018501 06:84F1: 87        .byte $87   ; 71 
- D 0 - I - 0x018502 06:84F2: 5F        .byte $5F   ; 72 
- D 0 - I - 0x018503 06:84F3: 03        .byte $03   ; 73 
- D 0 - I - 0x018504 06:84F4: 0F        .byte $0F   ; 74 
- D 0 - I - 0x018505 06:84F5: 66        .byte $66   ; 75 
- D 0 - I - 0x018506 06:84F6: 5A        .byte $5A   ; 76 
- D 0 - I - 0x018507 06:84F7: 42        .byte $42   ; 77 
- D 0 - I - 0x018508 06:84F8: 6A        .byte $6A   ; 78 
- D 0 - I - 0x018509 06:84F9: 53        .byte $53   ; 79 
- D 0 - I - 0x01850A 06:84FA: 03        .byte $03   ; 7A 
- D 0 - I - 0x01850B 06:84FB: 47        .byte $47   ; 7B 
- D 0 - I - 0x01850C 06:84FC: 5B        .byte $5B   ; 7C 
- D 0 - I - 0x01850D 06:84FD: 5F        .byte $5F   ; 7D 
- D 0 - I - 0x01850E 06:84FE: 03        .byte $03   ; 7E 
- D 0 - I - 0x01850F 06:84FF: 03        .byte $03   ; 7F 

- D 0 - I - 0x018510 06:8500: 00        .byte $00   ; 00 
- D 0 - I - 0x018511 06:8501: 42        .byte $42   ; 01 
- D 0 - I - 0x018512 06:8502: 42        .byte $42   ; 02 
- D 0 - I - 0x018513 06:8503: 1F        .byte $1F   ; 03 
- D 0 - I - 0x018514 06:8504: C1        .byte $C1   ; 04 
- D 0 - I - 0x018515 06:8505: E6        .byte $E6   ; 05 
- D 0 - I - 0x018516 06:8506: E4        .byte $E4   ; 06 
- D 0 - I - 0x018517 06:8507: 02        .byte $02   ; 07 
- D 0 - I - 0x018518 06:8508: 1F        .byte $1F   ; 08 
- D 0 - I - 0x018519 06:8509: 00        .byte $00   ; 09 
- D 0 - I - 0x01851A 06:850A: 01        .byte $01   ; 0A 
- D 0 - I - 0x01851B 06:850B: 10        .byte $10   ; 0B 
- D 0 - I - 0x01851C 06:850C: CE        .byte $CE   ; 0C 
- D 0 - I - 0x01851D 06:850D: CE        .byte $CE   ; 0D 
- D 0 - I - 0x01851E 06:850E: 00        .byte $00   ; 0E 
- D 0 - I - 0x01851F 06:850F: 00        .byte $00   ; 0F 
- D 0 - I - 0x018520 06:8510: 41        .byte $41   ; 10 
- D 0 - I - 0x018521 06:8511: E4        .byte $E4   ; 11 
- D 0 - I - 0x018522 06:8512: C1        .byte $C1   ; 12 
- D 0 - I - 0x018523 06:8513: 65        .byte $65   ; 13 
- D 0 - I - 0x018524 06:8514: 42        .byte $42   ; 14 
- D 0 - I - 0x018525 06:8515: E4        .byte $E4   ; 15 
- D 0 - I - 0x018526 06:8516: 1F        .byte $1F   ; 16 
- D 0 - I - 0x018527 06:8517: 1F        .byte $1F   ; 17 
- D 0 - I - 0x018528 06:8518: 1F        .byte $1F   ; 18 
- D 0 - I - 0x018529 06:8519: 1F        .byte $1F   ; 19 
- D 0 - I - 0x01852A 06:851A: CE        .byte $CE   ; 1A 
- D 0 - I - 0x01852B 06:851B: 00        .byte $00   ; 1B 
- D 0 - I - 0x01852C 06:851C: 00        .byte $00   ; 1C 
- D 0 - I - 0x01852D 06:851D: DA        .byte $DA   ; 1D 
- D 0 - I - 0x01852E 06:851E: CE        .byte $CE   ; 1E 
- D 0 - I - 0x01852F 06:851F: DA        .byte $DA   ; 1F 
- D 0 - I - 0x018530 06:8520: 21        .byte $21   ; 20 
- D 0 - I - 0x018531 06:8521: 21        .byte $21   ; 21 
- D 0 - I - 0x018532 06:8522: 02        .byte $02   ; 22 
- D 0 - I - 0x018533 06:8523: 42        .byte $42   ; 23 
- D 0 - I - 0x018534 06:8524: 00        .byte $00   ; 24 
- D 0 - I - 0x018535 06:8525: 5A        .byte $5A   ; 25 
- D 0 - I - 0x018536 06:8526: DA        .byte $DA   ; 26 
- D 0 - I - 0x018537 06:8527: DA        .byte $DA   ; 27 
- D 0 - I - 0x018538 06:8528: DA        .byte $DA   ; 28 
- D 0 - I - 0x018539 06:8529: 50        .byte $50   ; 29 
- D 0 - I - 0x01853A 06:852A: CF        .byte $CF   ; 2A 
- D 0 - I - 0x01853B 06:852B: E7        .byte $E7   ; 2B 
- D 0 - I - 0x01853C 06:852C: 4E        .byte $4E   ; 2C 
- D 0 - I - 0x01853D 06:852D: AA        .byte $AA   ; 2D 
- D 0 - I - 0x01853E 06:852E: 49        .byte $49   ; 2E 
- D 0 - I - 0x01853F 06:852F: 00        .byte $00   ; 2F 
- D 0 - I - 0x018540 06:8530: 21        .byte $21   ; 30 
- D 0 - I - 0x018541 06:8531: 21        .byte $21   ; 31 
- D 0 - I - 0x018542 06:8532: E4        .byte $E4   ; 32 
- D 0 - I - 0x018543 06:8533: 00        .byte $00   ; 33 
- D 0 - I - 0x018544 06:8534: 4F        .byte $4F   ; 34 
- D 0 - I - 0x018545 06:8535: 00        .byte $00   ; 35 
- D 0 - I - 0x018546 06:8536: 00        .byte $00   ; 36 
- D 0 - I - 0x018547 06:8537: 08        .byte $08   ; 37 
- D 0 - I - 0x018548 06:8538: E8        .byte $E8   ; 38 
- D 0 - I - 0x018549 06:8539: 2F        .byte $2F   ; 39 
- D 0 - I - 0x01854A 06:853A: E7        .byte $E7   ; 3A 
- D 0 - I - 0x01854B 06:853B: 4F        .byte $4F   ; 3B 
- D 0 - I - 0x01854C 06:853C: 0A        .byte $0A   ; 3C 
- D 0 - I - 0x01854D 06:853D: 43        .byte $43   ; 3D 
- D 0 - I - 0x01854E 06:853E: AA        .byte $AA   ; 3E 
- D 0 - I - 0x01854F 06:853F: 09        .byte $09   ; 3F 
- D 0 - I - 0x018550 06:8540: 21        .byte $21   ; 40 
- D 0 - I - 0x018551 06:8541: 21        .byte $21   ; 41 
- D 0 - I - 0x018552 06:8542: 04        .byte $04   ; 42 
- D 0 - I - 0x018553 06:8543: 2F        .byte $2F   ; 43 
- D 0 - I - 0x018554 06:8544: 47        .byte $47   ; 44 
- D 0 - I - 0x018555 06:8545: 1A        .byte $1A   ; 45 
- D 0 - I - 0x018556 06:8546: 00        .byte $00   ; 46 
- D 0 - I - 0x018557 06:8547: 00        .byte $00   ; 47 
- D 0 - I - 0x018558 06:8548: 50        .byte $50   ; 48 
- D 0 - I - 0x018559 06:8549: E8        .byte $E8   ; 49 
- D 0 - I - 0x01855A 06:854A: CD        .byte $CD   ; 4A 
- D 0 - I - 0x01855B 06:854B: C4        .byte $C4   ; 4B 
- D 0 - I - 0x01855C 06:854C: AA        .byte $AA   ; 4C 
- D 0 - I - 0x01855D 06:854D: 43        .byte $43   ; 4D 
- D 0 - I - 0x01855E 06:854E: 43        .byte $43   ; 4E 
- D 0 - I - 0x01855F 06:854F: AB        .byte $AB   ; 4F 
- D 0 - I - 0x018560 06:8550: 82        .byte $82   ; 50 
- D 0 - I - 0x018561 06:8551: 83        .byte $83   ; 51 
- D 0 - I - 0x018562 06:8552: 63        .byte $63   ; 52 
- D 0 - I - 0x018563 06:8553: A2        .byte $A2   ; 53 
- D 0 - I - 0x018564 06:8554: 69        .byte $69   ; 54 
- D 0 - I - 0x018565 06:8555: 07        .byte $07   ; 55 
- D 0 - I - 0x018566 06:8556: 47        .byte $47   ; 56 
- D 0 - I - 0x018567 06:8557: 69        .byte $69   ; 57 
- D 0 - I - 0x018568 06:8558: 69        .byte $69   ; 58 
- D 0 - I - 0x018569 06:8559: 5A        .byte $5A   ; 59 
- D 0 - I - 0x01856A 06:855A: 47        .byte $47   ; 5A 
- D 0 - I - 0x01856B 06:855B: 63        .byte $63   ; 5B 
- D 0 - I - 0x01856C 06:855C: 43        .byte $43   ; 5C 
- D 0 - I - 0x01856D 06:855D: 43        .byte $43   ; 5D 
- D 0 - I - 0x01856E 06:855E: 83        .byte $83   ; 5E 
- D 0 - I - 0x01856F 06:855F: AA        .byte $AA   ; 5F 
- D 0 - I - 0x018570 06:8560: E4        .byte $E4   ; 60 
- D 0 - I - 0x018571 06:8561: 83        .byte $83   ; 61 
- D 0 - I - 0x018572 06:8562: 83        .byte $83   ; 62 
- D 0 - I - 0x018573 06:8563: EC        .byte $EC   ; 63 
- D 0 - I - 0x018574 06:8564: AA        .byte $AA   ; 64 
- D 0 - I - 0x018575 06:8565: 69        .byte $69   ; 65 
- D 0 - I - 0x018576 06:8566: 69        .byte $69   ; 66 
- D 0 - I - 0x018577 06:8567: 47        .byte $47   ; 67 
- D 0 - I - 0x018578 06:8568: 47        .byte $47   ; 68 
- D 0 - I - 0x018579 06:8569: 47        .byte $47   ; 69 
- D 0 - I - 0x01857A 06:856A: 69        .byte $69   ; 6A 
- D 0 - I - 0x01857B 06:856B: EC        .byte $EC   ; 6B 
- D 0 - I - 0x01857C 06:856C: 44        .byte $44   ; 6C 
- D 0 - I - 0x01857D 06:856D: 44        .byte $44   ; 6D 
- D 0 - I - 0x01857E 06:856E: EC        .byte $EC   ; 6E 
- D 0 - I - 0x01857F 06:856F: A8        .byte $A8   ; 6F 
- D 0 - I - 0x018580 06:8570: 5A        .byte $5A   ; 70 
- D 0 - I - 0x018581 06:8571: 83        .byte $83   ; 71 
- D 0 - I - 0x018582 06:8572: 62        .byte $62   ; 72 
- D 0 - I - 0x018583 06:8573: 43        .byte $43   ; 73 
- D 0 - I - 0x018584 06:8574: 0E        .byte $0E   ; 74 
- D 0 - I - 0x018585 06:8575: E7        .byte $E7   ; 75 
- D 0 - I - 0x018586 06:8576: 4E        .byte $4E   ; 76 
- D 0 - I - 0x018587 06:8577: 00        .byte $00   ; 77 
- D 0 - I - 0x018588 06:8578: 47        .byte $47   ; 78 
- D 0 - I - 0x018589 06:8579: 8D        .byte $8D   ; 79 
- D 0 - I - 0x01858A 06:857A: 4D        .byte $4D   ; 7A 
- D 0 - I - 0x01858B 06:857B: D0        .byte $D0   ; 7B 
- D 0 - I - 0x01858C 06:857C: D0        .byte $D0   ; 7C 
- D 0 - I - 0x01858D 06:857D: 49        .byte $49   ; 7D 
- D 0 - I - 0x01858E 06:857E: 48        .byte $48   ; 7E 
- D 0 - I - 0x01858F 06:857F: 09        .byte $09   ; 7F 

- D 0 - I - 0x018590 06:8580: 00        .byte $00 + $00 + con_obj_id_null   ; 00 
- D 0 - I - 0x018591 06:8581: 01        .byte $00 + $00 + con_obj_id_01   ; 01 
- D 0 - I - 0x018592 06:8582: 02        .byte $00 + $00 + con_obj_id_02   ; 02 
- D 0 - I - 0x018593 06:8583: 03        .byte $00 + $00 + con_obj_id_03   ; 03 
- D 0 - I - 0x018594 06:8584: 04        .byte $00 + $00 + con_obj_id_04   ; 04 
- D 0 - I - 0x018595 06:8585: 85        .byte $00 + $80 + con_obj_id_45 - $40   ; 05 
- D 0 - I - 0x018596 06:8586: 86        .byte $00 + $80 + con_obj_id_46 - $40   ; 06 
- D 0 - I - 0x018597 06:8587: 07        .byte $00 + $00 + con_obj_id_07   ; 07 
- D 0 - I - 0x018598 06:8588: 06        .byte $00 + $00 + con_obj_id_06   ; 08 
- D 0 - I - 0x018599 06:8589: 08        .byte $00 + $00 + con_obj_id_08   ; 09 
- D 0 - I - 0x01859A 06:858A: 09        .byte $00 + $00 + con_obj_id_09   ; 0A 
- D 0 - I - 0x01859B 06:858B: 0A        .byte $00 + $00 + con_obj_id_0A   ; 0B 
- D 0 - I - 0x01859C 06:858C: 0B        .byte $00 + $00 + con_obj_id_0B   ; 0C 
- D 0 - I - 0x01859D 06:858D: 0C        .byte $00 + $00 + con_obj_id_0C   ; 0D 
- D 0 - I - 0x01859E 06:858E: 0D        .byte $00 + $00 + con_obj_id_0D   ; 0E 
- D 0 - I - 0x01859F 06:858F: 0E        .byte $00 + $00 + con_obj_id_0E   ; 0F 
- D 0 - I - 0x0185A0 06:8590: 0F        .byte $00 + $00 + con_obj_id_0F   ; 10 
- D 0 - I - 0x0185A1 06:8591: 90        .byte $00 + $80 + con_obj_id_50 - $40   ; 11 
- D 0 - I - 0x0185A2 06:8592: 11        .byte $00 + $00 + con_obj_id_11   ; 12 
- D 0 - I - 0x0185A3 06:8593: 92        .byte $00 + $80 + con_obj_id_52 - $40   ; 13 
- D 0 - I - 0x0185A4 06:8594: 13        .byte $00 + $00 + con_obj_id_13   ; 14 
- D 0 - I - 0x0185A5 06:8595: 94        .byte $00 + $80 + con_obj_id_54 - $40   ; 15 
- D 0 - I - 0x0185A6 06:8596: 15        .byte $00 + $00 + con_obj_id_15   ; 16 
- D 0 - I - 0x0185A7 06:8597: 16        .byte $00 + $00 + con_obj_id_16   ; 17 
- D 0 - I - 0x0185A8 06:8598: 17        .byte $00 + $00 + con_obj_id_17   ; 18 
- D 0 - I - 0x0185A9 06:8599: 18        .byte $00 + $00 + con_obj_id_18   ; 19 
- D 0 - I - 0x0185AA 06:859A: 19        .byte $00 + $00 + con_obj_id_19   ; 1A 
- D 0 - I - 0x0185AB 06:859B: 1A        .byte $00 + $00 + con_obj_id_1A   ; 1B 
- D 0 - I - 0x0185AC 06:859C: 1B        .byte $00 + $00 + con_obj_id_1B   ; 1C 
- D 0 - I - 0x0185AD 06:859D: 1C        .byte $00 + $00 + con_obj_id_1C   ; 1D 
- D 0 - I - 0x0185AE 06:859E: 1D        .byte $00 + $00 + con_obj_id_1D   ; 1E 
- D 0 - I - 0x0185AF 06:859F: 1E        .byte $00 + $00 + con_obj_id_1E   ; 1F 
- D 0 - I - 0x0185B0 06:85A0: 1F        .byte $00 + $00 + con_obj_id_1F   ; 20 
- D 0 - I - 0x0185B1 06:85A1: 20        .byte $00 + $00 + con_obj_id_20   ; 21 
- D 0 - I - 0x0185B2 06:85A2: 21        .byte $00 + $00 + con_obj_id_21   ; 22 
- D 0 - I - 0x0185B3 06:85A3: 22        .byte $00 + $00 + con_obj_id_22   ; 23 
- D 0 - I - 0x0185B4 06:85A4: 23        .byte $00 + $00 + con_obj_id_23   ; 24 
- D 0 - I - 0x0185B5 06:85A5: 24        .byte $00 + $00 + con_obj_id_24   ; 25 
- D 0 - I - 0x0185B6 06:85A6: 25        .byte $00 + $00 + con_obj_id_25   ; 26 
- D 0 - I - 0x0185B7 06:85A7: 26        .byte $00 + $00 + con_obj_id_26   ; 27 
- D 0 - I - 0x0185B8 06:85A8: 27        .byte $00 + $00 + con_obj_id_27   ; 28 
- D 0 - I - 0x0185B9 06:85A9: 28        .byte $00 + $00 + con_obj_id_28   ; 29 
- D 0 - I - 0x0185BA 06:85AA: 29        .byte $00 + $00 + con_obj_id_29   ; 2A 
- D 0 - I - 0x0185BB 06:85AB: AA        .byte $00 + $80 + con_obj_id_6A - $40   ; 2B 
- D 0 - I - 0x0185BC 06:85AC: 2B        .byte $00 + $00 + con_obj_id_2B   ; 2C 
- D 0 - I - 0x0185BD 06:85AD: AC        .byte $00 + $80 + con_obj_id_6C - $40   ; 2D 
- D 0 - I - 0x0185BE 06:85AE: 2D        .byte $00 + $00 + con_obj_id_2D   ; 2E 
- D 0 - I - 0x0185BF 06:85AF: 2E        .byte $00 + $00 + con_obj_id_2E   ; 2F 
- D 0 - I - 0x0185C0 06:85B0: 2F        .byte $00 + $00 + con_obj_id_2F   ; 30 
- D 0 - I - 0x0185C1 06:85B1: 30        .byte $00 + $00 + con_obj_id_30   ; 31 
- D 0 - I - 0x0185C2 06:85B2: B1        .byte $00 + $80 + con_obj_id_71 - $40   ; 32 
- D 0 - I - 0x0185C3 06:85B3: 32        .byte $00 + $00 + con_obj_id_32   ; 33 
- D 0 - I - 0x0185C4 06:85B4: 33        .byte $00 + $00 + con_obj_id_33   ; 34 
- D 0 - I - 0x0185C5 06:85B5: 34        .byte $00 + $00 + con_obj_id_34   ; 35 
- D 0 - I - 0x0185C6 06:85B6: 35        .byte $00 + $00 + con_obj_id_35   ; 36 
- D 0 - I - 0x0185C7 06:85B7: 36        .byte $00 + $00 + con_obj_id_36   ; 37 
- D 0 - I - 0x0185C8 06:85B8: B7        .byte $00 + $80 + con_obj_id_77 - $40   ; 38 
- D 0 - I - 0x0185C9 06:85B9: 38        .byte $00 + $00 + con_obj_id_38   ; 39 
- D 0 - I - 0x0185CA 06:85BA: B9        .byte $00 + $80 + con_obj_id_79 - $40   ; 3A 
- D 0 - I - 0x0185CB 06:85BB: 3A        .byte $00 + $00 + con_obj_id_3A   ; 3B 
- D 0 - I - 0x0185CC 06:85BC: 0A        .byte $00 + $00 + con_obj_id_0A   ; 3C 
- D 0 - I - 0x0185CD 06:85BD: 3B        .byte $00 + $00 + con_obj_id_3B   ; 3D 
- D 0 - I - 0x0185CE 06:85BE: BC        .byte $00 + $80 + con_obj_id_7C - $40   ; 3E 
- D 0 - I - 0x0185CF 06:85BF: 3D        .byte $00 + $00 + con_obj_id_3D   ; 3F 
- D 0 - I - 0x0185D0 06:85C0: 3E        .byte $00 + $00 + con_obj_id_3E   ; 40 
- D 0 - I - 0x0185D1 06:85C1: 3F        .byte $00 + $00 + con_obj_id_3F   ; 41 
- D 0 - I - 0x0185D2 06:85C2: 38        .byte $00 + $00 + con_obj_id_38   ; 42 
- D 0 - I - 0x0185D3 06:85C3: 38        .byte $00 + $00 + con_obj_id_38   ; 43 
- D 0 - I - 0x0185D4 06:85C4: 40        .byte $40 + $00 + con_obj_id_null   ; 44 
- D 0 - I - 0x0185D5 06:85C5: 41        .byte $40 + $00 + con_obj_id_01   ; 45 
- D 0 - I - 0x0185D6 06:85C6: 42        .byte $40 + $00 + con_obj_id_02   ; 46 
- D 0 - I - 0x0185D7 06:85C7: 43        .byte $40 + $00 + con_obj_id_03   ; 47 
- D 0 - I - 0x0185D8 06:85C8: 44        .byte $40 + $00 + con_obj_id_04   ; 48 
- D 0 - I - 0x0185D9 06:85C9: C5        .byte $40 + $80 + con_obj_id_45 - $40   ; 49 
- D 0 - I - 0x0185DA 06:85CA: 46        .byte $40 + $00 + con_obj_id_06   ; 4A 
- D 0 - I - 0x0185DB 06:85CB: 47        .byte $40 + $00 + con_obj_id_07   ; 4B 
- D 0 - I - 0x0185DC 06:85CC: C8        .byte $40 + $80 + con_obj_id_48 - $40   ; 4C 
- D 0 - I - 0x0185DD 06:85CD: 49        .byte $40 + $00 + con_obj_id_09   ; 4D 
- D 0 - I - 0x0185DE 06:85CE: 4A        .byte $40 + $00 + con_obj_id_0A   ; 4E 
- D 0 - I - 0x0185DF 06:85CF: CB        .byte $40 + $80 + con_obj_id_4B - $40   ; 4F 
- D 0 - I - 0x0185E0 06:85D0: 4C        .byte $40 + $00 + con_obj_id_0C   ; 50 
- D 0 - I - 0x0185E1 06:85D1: 4D        .byte $40 + $00 + con_obj_id_0D   ; 51 
- D 0 - I - 0x0185E2 06:85D2: CE        .byte $40 + $80 + con_obj_id_4E - $40   ; 52 
- D 0 - I - 0x0185E3 06:85D3: CF        .byte $40 + $80 + con_obj_id_4F - $40   ; 53 
- D 0 - I - 0x0185E4 06:85D4: D0        .byte $40 + $80 + con_obj_id_50 - $40   ; 54 
- D 0 - I - 0x0185E5 06:85D5: 51        .byte $40 + $00 + con_obj_id_11   ; 55 
- D 0 - I - 0x0185E6 06:85D6: 52        .byte $40 + $00 + con_obj_id_12   ; 56 
- D 0 - I - 0x0185E7 06:85D7: D3        .byte $40 + $80 + con_obj_id_53 - $40   ; 57 
- D 0 - I - 0x0185E8 06:85D8: D4        .byte $40 + $80 + con_obj_id_54 - $40   ; 58 
- D 0 - I - 0x0185E9 06:85D9: 55        .byte $40 + $00 + con_obj_id_15   ; 59 
- D 0 - I - 0x0185EA 06:85DA: 56        .byte $40 + $00 + con_obj_id_16   ; 5A 
- D 0 - I - 0x0185EB 06:85DB: D7        .byte $40 + $80 + con_obj_id_57 - $40   ; 5B 
- D 0 - I - 0x0185EC 06:85DC: 58        .byte $40 + $00 + con_obj_id_18   ; 5C 
- D 0 - I - 0x0185ED 06:85DD: 59        .byte $40 + $00 + con_obj_id_19   ; 5D 
- D 0 - I - 0x0185EE 06:85DE: 5A        .byte $40 + $00 + con_obj_id_1A   ; 5E 
- D 0 - I - 0x0185EF 06:85DF: CB        .byte $40 + $80 + con_obj_id_4B - $40   ; 5F 
- D 0 - I - 0x0185F0 06:85E0: DB        .byte $40 + $80 + con_obj_id_5B - $40   ; 60 
- D 0 - I - 0x0185F1 06:85E1: 5C        .byte $40 + $00 + con_obj_id_1C   ; 61 
- D 0 - I - 0x0185F2 06:85E2: 5D        .byte $40 + $00 + con_obj_id_1D   ; 62 
- D 0 - I - 0x0185F3 06:85E3: DE        .byte $40 + $80 + con_obj_id_5E - $40   ; 63 
- D 0 - I - 0x0185F4 06:85E4: DF        .byte $40 + $80 + con_obj_id_5F - $40   ; 64 
- D 0 - I - 0x0185F5 06:85E5: E0        .byte $40 + $80 + con_obj_id_60 - $40   ; 65 
- D 0 - I - 0x0185F6 06:85E6: E1        .byte $40 + $80 + con_obj_id_61 - $40   ; 66 
- D 0 - I - 0x0185F7 06:85E7: 62        .byte $40 + $00 + con_obj_id_22   ; 67 
- D 0 - I - 0x0185F8 06:85E8: 63        .byte $40 + $00 + con_obj_id_23   ; 68 
- D 0 - I - 0x0185F9 06:85E9: 64        .byte $40 + $00 + con_obj_id_24   ; 69 
- D 0 - I - 0x0185FA 06:85EA: E5        .byte $40 + $80 + con_obj_id_65 - $40   ; 6A 
- D 0 - I - 0x0185FB 06:85EB: E6        .byte $40 + $80 + con_obj_id_66 - $40   ; 6B 
- D 0 - I - 0x0185FC 06:85EC: 67        .byte $40 + $00 + con_obj_id_27   ; 6C 
- D 0 - I - 0x0185FD 06:85ED: 68        .byte $40 + $00 + con_obj_id_28   ; 6D 
- D 0 - I - 0x0185FE 06:85EE: E9        .byte $40 + $80 + con_obj_id_69 - $40   ; 6E 
- D 0 - I - 0x0185FF 06:85EF: EA        .byte $40 + $80 + con_obj_id_6A - $40   ; 6F 
- D 0 - I - 0x018600 06:85F0: 6B        .byte $40 + $00 + con_obj_id_2B   ; 70 
- D 0 - I - 0x018601 06:85F1: 6C        .byte $40 + $00 + con_obj_id_2C   ; 71 
- D 0 - I - 0x018602 06:85F2: ED        .byte $40 + $80 + con_obj_id_6D - $40   ; 72 
- D 0 - I - 0x018603 06:85F3: 6E        .byte $40 + $00 + con_obj_id_2E   ; 73 
- D 0 - I - 0x018604 06:85F4: 6F        .byte $40 + $00 + con_obj_id_2F   ; 74 
- D 0 - I - 0x018605 06:85F5: F0        .byte $40 + $80 + con_obj_id_70 - $40   ; 75 
- D 0 - I - 0x018606 06:85F6: 71        .byte $40 + $00 + con_obj_id_31   ; 76 
- D 0 - I - 0x018607 06:85F7: 72        .byte $40 + $00 + con_obj_id_32   ; 77 
- D 0 - I - 0x018608 06:85F8: 73        .byte $40 + $00 + con_obj_id_33   ; 78 
- D 0 - I - 0x018609 06:85F9: 74        .byte $40 + $00 + con_obj_id_34   ; 79 
- D 0 - I - 0x01860A 06:85FA: 06        .byte $00 + $00 + con_obj_id_06   ; 7A 
- D 0 - I - 0x01860B 06:85FB: 75        .byte $40 + $00 + con_obj_id_35   ; 7B 
- D 0 - I - 0x01860C 06:85FC: 76        .byte $40 + $00 + con_obj_id_36   ; 7C 
- D 0 - I - 0x01860D 06:85FD: 76        .byte $40 + $00 + con_obj_id_36   ; 7D 
- D 0 - I - 0x01860E 06:85FE: 77        .byte $40 + $00 + con_obj_id_37   ; 7E 
- D 0 - I - 0x01860F 06:85FF: 78        .byte $40 + $00 + con_obj_id_38   ; 7F 

- D 0 - I - 0x018610 06:8600: 3F        .byte $3F   ; 00 
- D 0 - I - 0x018611 06:8601: 01        .byte $01   ; 01 
- D 0 - I - 0x018612 06:8602: 7F        .byte $7F   ; 02 
- D 0 - I - 0x018613 06:8603: 20        .byte $20   ; 03 
- D 0 - I - 0x018614 06:8604: 3F        .byte $3F   ; 04 
- D 0 - I - 0x018615 06:8605: 5A        .byte $5A   ; 05 
- D 0 - I - 0x018616 06:8606: 7F        .byte $7F   ; 06 
- D 0 - I - 0x018617 06:8607: 02        .byte $02   ; 07 
- D 0 - I - 0x018618 06:8608: 7F        .byte $7F   ; 08 
- D 0 - I - 0x018619 06:8609: 7F        .byte $7F   ; 09 
- D 0 - I - 0x01861A 06:860A: 03        .byte $03   ; 0A 
- D 0 - I - 0x01861B 06:860B: 7F        .byte $7F   ; 0B 
- D 0 - I - 0x01861C 06:860C: 3F        .byte $3F   ; 0C 
- D 0 - I - 0x01861D 06:860D: 3F        .byte $3F   ; 0D 
- D 0 - I - 0x01861E 06:860E: 3F        .byte $3F   ; 0E 
- D 0 - I - 0x01861F 06:860F: 3F        .byte $3F   ; 0F 
- D 0 - I - 0x018620 06:8610: 3F        .byte $3F   ; 10 
- D 0 - I - 0x018621 06:8611: 3F        .byte $3F   ; 11 
- D 0 - I - 0x018622 06:8612: 98        .byte $98   ; 12 
- D 0 - I - 0x018623 06:8613: 98        .byte $98   ; 13 
- D 0 - I - 0x018624 06:8614: D8        .byte $D8   ; 14 
- D 0 - I - 0x018625 06:8615: 3F        .byte $3F   ; 15 
- D 0 - I - 0x018626 06:8616: 3F        .byte $3F   ; 16 
- D 0 - I - 0x018627 06:8617: 3F        .byte $3F   ; 17 
- D 0 - I - 0x018628 06:8618: 3F        .byte $3F   ; 18 
- D 0 - I - 0x018629 06:8619: 15        .byte $15   ; 19 
- D 0 - I - 0x01862A 06:861A: 7F        .byte $7F   ; 1A 
- D 0 - I - 0x01862B 06:861B: 3F        .byte $3F   ; 1B 
- D 0 - I - 0x01862C 06:861C: 3F        .byte $3F   ; 1C 
- D 0 - I - 0x01862D 06:861D: 3F        .byte $3F   ; 1D 
- D 0 - I - 0x01862E 06:861E: 1F        .byte $1F   ; 1E 
- D 0 - I - 0x01862F 06:861F: 3F        .byte $3F   ; 1F 
- D 0 - I - 0x018630 06:8620: E0        .byte $E0   ; 20 
- D 0 - I - 0x018631 06:8621: 98        .byte $98   ; 21 
- D 0 - I - 0x018632 06:8622: 58        .byte $58   ; 22 
- D 0 - I - 0x018633 06:8623: D8        .byte $D8   ; 23 
- D 0 - I - 0x018634 06:8624: 98        .byte $98   ; 24 
- D 0 - I - 0x018635 06:8625: 58        .byte $58   ; 25 
- D 0 - I - 0x018636 06:8626: D8        .byte $D8   ; 26 
- D 0 - I - 0x018637 06:8627: 1C        .byte $1C   ; 27 
- D 0 - I - 0x018638 06:8628: 00        .byte $00   ; 28 
- D 0 - I - 0x018639 06:8629: C8        .byte $C8   ; 29 
- D 0 - I - 0x01863A 06:862A: 1C        .byte $1C   ; 2A 
- D 0 - I - 0x01863B 06:862B: 19        .byte $19   ; 2B 
- D 0 - I - 0x01863C 06:862C: C6        .byte $C6   ; 2C 
- D 0 - I - 0x01863D 06:862D: 1C        .byte $1C   ; 2D 
- D 0 - I - 0x01863E 06:862E: 04        .byte $04   ; 2E 
- D 0 - I - 0x01863F 06:862F: E2        .byte $E2   ; 2F 
- D 0 - I - 0x018640 06:8630: 19        .byte $19   ; 30 
- D 0 - I - 0x018641 06:8631: 12        .byte $12   ; 31 
- D 0 - I - 0x018642 06:8632: C4        .byte $C4   ; 32 
- D 0 - I - 0x018643 06:8633: 3F        .byte $3F   ; 33 
- D 0 - I - 0x018644 06:8634: 98        .byte $98   ; 34 
- D 0 - I - 0x018645 06:8635: 7F        .byte $7F   ; 35 
- D 0 - I - 0x018646 06:8636: 3F        .byte $3F   ; 36 
- D 0 - I - 0x018647 06:8637: 98        .byte $98   ; 37 
- D 0 - I - 0x018648 06:8638: 7F        .byte $7F   ; 38 
- D 0 - I - 0x018649 06:8639: 3F        .byte $3F   ; 39 
- D 0 - I - 0x01864A 06:863A: 98        .byte $98   ; 3A 
- D 0 - I - 0x01864B 06:863B: 7F        .byte $7F   ; 3B 
- D 0 - I - 0x01864C 06:863C: 00        .byte $00   ; 3C 
- D 0 - I - 0x01864D 06:863D: 00        .byte $00   ; 3D 
- D 0 - I - 0x01864E 06:863E: 00        .byte $00   ; 3E 
- D 0 - I - 0x01864F 06:863F: 00        .byte $00   ; 3F 
- D 0 - I - 0x018650 06:8640: 00        .byte $00   ; 40 
- D 0 - I - 0x018651 06:8641: 00        .byte $00   ; 41 
- D 0 - I - 0x018652 06:8642: 00        .byte $00   ; 42 
- D 0 - I - 0x018653 06:8643: 00        .byte $00   ; 43 
- D 0 - I - 0x018654 06:8644: 00        .byte $00   ; 44 
- D 0 - I - 0x018655 06:8645: 00        .byte $00   ; 45 
- D 0 - I - 0x018656 06:8646: 00        .byte $00   ; 46 
- D 0 - I - 0x018657 06:8647: 00        .byte $00   ; 47 
- D 0 - I - 0x018658 06:8648: 00        .byte $00   ; 48 
- D 0 - I - 0x018659 06:8649: 00        .byte $00   ; 49 
- D 0 - I - 0x01865A 06:864A: 00        .byte $00   ; 4A 
- D 0 - I - 0x01865B 06:864B: 00        .byte $00   ; 4B 
- D 0 - I - 0x01865C 06:864C: 00        .byte $00   ; 4C 
- D 0 - I - 0x01865D 06:864D: 00        .byte $00   ; 4D 
- D 0 - I - 0x01865E 06:864E: 0A        .byte $0A   ; 4E 
- D 0 - I - 0x01865F 06:864F: 0A        .byte $0A   ; 4F 
- D 0 - I - 0x018660 06:8650: 0A        .byte $0A   ; 50 
- D 0 - I - 0x018661 06:8651: 00        .byte $00   ; 51 
- D 0 - I - 0x018662 06:8652: 00        .byte $00   ; 52 
- D 0 - I - 0x018663 06:8653: 00        .byte $00   ; 53 
- D 0 - I - 0x018664 06:8654: 00        .byte $00   ; 54 
- D 0 - I - 0x018665 06:8655: 00        .byte $00   ; 55 
- D 0 - I - 0x018666 06:8656: 00        .byte $00   ; 56 
- D 0 - I - 0x018667 06:8657: 00        .byte $00   ; 57 
- D 0 - I - 0x018668 06:8658: 00        .byte $00   ; 58 
- D 0 - I - 0x018669 06:8659: 00        .byte $00   ; 59 
- D 0 - I - 0x01866A 06:865A: 28        .byte $28   ; 5A 
- D 0 - I - 0x01866B 06:865B: 00        .byte $00   ; 5B 
- D 0 - I - 0x01866C 06:865C: 44        .byte $44   ; 5C 
- D 0 - I - 0x01866D 06:865D: 05        .byte $05   ; 5D 
- D 0 - I - 0x01866E 06:865E: 0A        .byte $0A   ; 5E 
- D 0 - I - 0x01866F 06:865F: 14        .byte $14   ; 5F 
- D 0 - I - 0x018670 06:8660: 0A        .byte $0A   ; 60 
- D 0 - I - 0x018671 06:8661: 1E        .byte $1E   ; 61 
- D 0 - I - 0x018672 06:8662: 32        .byte $32   ; 62 
- D 0 - I - 0x018673 06:8663: 82        .byte $82   ; 63 
- D 0 - I - 0x018674 06:8664: 14        .byte $14   ; 64 
- D 0 - I - 0x018675 06:8665: 50        .byte $50   ; 65 
- D 0 - I - 0x018676 06:8666: A0        .byte $A0   ; 66 
- D 0 - I - 0x018677 06:8667: 64        .byte $64   ; 67 
- D 0 - I - 0x018678 06:8668: 3C        .byte $3C   ; 68 
- D 0 - I - 0x018679 06:8669: 5A        .byte $5A   ; 69 
- D 0 - I - 0x01867A 06:866A: 64        .byte $64   ; 6A 
- D 0 - I - 0x01867B 06:866B: 0A        .byte $0A   ; 6B 
- D 0 - I - 0x01867C 06:866C: 50        .byte $50   ; 6C 
- D 0 - I - 0x01867D 06:866D: FA        .byte $FA   ; 6D 
- D 0 - I - 0x01867E 06:866E: 3C        .byte $3C   ; 6E 
- D 0 - I - 0x01867F 06:866F: 00        .byte $00   ; 6F 
- D 0 - I - 0x018680 06:8670: 1E        .byte $1E   ; 70 
- D 0 - I - 0x018681 06:8671: 00        .byte $00   ; 71 
- D 0 - I - 0x018682 06:8672: 00        .byte $00   ; 72 
- D 0 - I - 0x018683 06:8673: 64        .byte $64   ; 73 
- D 0 - I - 0x018684 06:8674: 00        .byte $00   ; 74 
- D 0 - I - 0x018685 06:8675: 00        .byte $00   ; 75 
- D 0 - I - 0x018686 06:8676: 0A        .byte $0A   ; 76 
- D 0 - I - 0x018687 06:8677: 00        .byte $00   ; 77 
- D 0 - I - 0x018688 06:8678: FF        .byte $FF   ; 78 
- D 0 - I - 0x018689 06:8679: FF        .byte $FF   ; 79 
- D 0 - I - 0x01868A 06:867A: FF        .byte $FF   ; 7A 
- D 0 - I - 0x01868B 06:867B: FF        .byte $FF   ; 7B 
- D 0 - I - 0x01868C 06:867C: FF        .byte $FF   ; 7C 
- D 0 - I - 0x01868D 06:867D: FF        .byte $FF   ; 7D 
- D 0 - I - 0x01868E 06:867E: FF        .byte $FF   ; 7E 
- D 0 - I - 0x01868F 06:867F: FF        .byte $FF   ; 7F 

- D 0 - I - 0x018690 06:8680: 83        .byte $83   ; 00 
- D 0 - I - 0x018691 06:8681: 00        .byte $00   ; 01 
- D 0 - I - 0x018692 06:8682: 83        .byte $83   ; 02 
- D 0 - I - 0x018693 06:8683: 03        .byte $03   ; 03 
- D 0 - I - 0x018694 06:8684: 00        .byte $00   ; 04 
- D 0 - I - 0x018695 06:8685: 45        .byte $45   ; 05 
- D 0 - I - 0x018696 06:8686: 84        .byte $84   ; 06 
- D 0 - I - 0x018697 06:8687: 03        .byte $03   ; 07 
- D 0 - I - 0x018698 06:8688: 00        .byte $00   ; 08 
- D 0 - I - 0x018699 06:8689: A4        .byte $A4   ; 09 
- D 0 - I - 0x01869A 06:868A: 00        .byte $00   ; 0A 
- D 0 - I - 0x01869B 06:868B: 03        .byte $03   ; 0B 
- D 0 - I - 0x01869C 06:868C: 00        .byte $00   ; 0C 
- D 0 - I - 0x01869D 06:868D: 00        .byte $00   ; 0D 
- D 0 - I - 0x01869E 06:868E: 0B        .byte $0B   ; 0E 
- D 0 - I - 0x01869F 06:868F: 03        .byte $03   ; 0F 
- D 0 - I - 0x0186A0 06:8690: 00        .byte $00   ; 10 
- D 0 - I - 0x0186A1 06:8691: A4        .byte $A4   ; 11 
- D 0 - I - 0x0186A2 06:8692: 00        .byte $00   ; 12 
- D 0 - I - 0x0186A3 06:8693: 00        .byte $00   ; 13 
- D 0 - I - 0x0186A4 06:8694: 00        .byte $00   ; 14 
- D 0 - I - 0x0186A5 06:8695: 80        .byte $80   ; 15 
- D 0 - I - 0x0186A6 06:8696: 00        .byte $00   ; 16 
- D 0 - I - 0x0186A7 06:8697: 00        .byte $00   ; 17 
- D 0 - I - 0x0186A8 06:8698: 82        .byte $82   ; 18 
- D 0 - I - 0x0186A9 06:8699: 82        .byte $82   ; 19 
- D 0 - I - 0x0186AA 06:869A: 03        .byte $03   ; 1A 
- D 0 - I - 0x0186AB 06:869B: A4        .byte $A4   ; 1B 
- D 0 - I - 0x0186AC 06:869C: 02        .byte $02   ; 1C 
- D 0 - I - 0x0186AD 06:869D: 02        .byte $02   ; 1D 
- D 0 - I - 0x0186AE 06:869E: 00        .byte $00   ; 1E 
- D 0 - I - 0x0186AF 06:869F: 03        .byte $03   ; 1F 
- D 0 - I - 0x0186B0 06:86A0: B3        .byte $B3   ; 20 
- D 0 - I - 0x0186B1 06:86A1: 62        .byte $62   ; 21 
- D 0 - I - 0x0186B2 06:86A2: 03        .byte $03   ; 22 
- D 0 - I - 0x0186B3 06:86A3: 11        .byte $11   ; 23 
- D 0 - I - 0x0186B4 06:86A4: 00        .byte $00   ; 24 
- D 0 - I - 0x0186B5 06:86A5: 00        .byte $00   ; 25 
- D 0 - I - 0x0186B6 06:86A6: 00        .byte $00   ; 26 
- D 0 - I - 0x0186B7 06:86A7: 40        .byte $40   ; 27 
- D 0 - I - 0x0186B8 06:86A8: 05        .byte $05   ; 28 
- D 0 - I - 0x0186B9 06:86A9: 84        .byte $84   ; 29 
- D 0 - I - 0x0186BA 06:86AA: 00        .byte $00   ; 2A 
- D 0 - I - 0x0186BB 06:86AB: 84        .byte $84   ; 2B 
- D 0 - I - 0x0186BC 06:86AC: 45        .byte $45   ; 2C 
- D 0 - I - 0x0186BD 06:86AD: 00        .byte $00   ; 2D 
- D 0 - I - 0x0186BE 06:86AE: 00        .byte $00   ; 2E 
- D 0 - I - 0x0186BF 06:86AF: 03        .byte $03   ; 2F 
- D 0 - I - 0x0186C0 06:86B0: 84        .byte $84   ; 30 
- D 0 - I - 0x0186C1 06:86B1: 04        .byte $04   ; 31 
- D 0 - I - 0x0186C2 06:86B2: 00        .byte $00   ; 32 
- D 0 - I - 0x0186C3 06:86B3: 00        .byte $00   ; 33 
- D 0 - I - 0x0186C4 06:86B4: 02        .byte $02   ; 34 
- D 0 - I - 0x0186C5 06:86B5: 00        .byte $00   ; 35 
- D 0 - I - 0x0186C6 06:86B6: 00        .byte $00   ; 36 
- D 0 - I - 0x0186C7 06:86B7: 03        .byte $03   ; 37 
- D 0 - I - 0x0186C8 06:86B8: 00        .byte $00   ; 38 
- D 0 - I - 0x0186C9 06:86B9: 80        .byte $80   ; 39 
- D 0 - I - 0x0186CA 06:86BA: 84        .byte $84   ; 3A 
- D 0 - I - 0x0186CB 06:86BB: 02        .byte $02   ; 3B 
- D 0 - I - 0x0186CC 06:86BC: 03        .byte $03   ; 3C 
- D 0 - I - 0x0186CD 06:86BD: 02        .byte $02   ; 3D 
- D 0 - I - 0x0186CE 06:86BE: 00        .byte $00   ; 3E 
- D 0 - I - 0x0186CF 06:86BF: 00        .byte $00   ; 3F 
- D 0 - I - 0x0186D0 06:86C0: 00        .byte $00   ; 40 
- D 0 - I - 0x0186D1 06:86C1: 00        .byte $00   ; 41 
- D 0 - I - 0x0186D2 06:86C2: 01        .byte $01   ; 42 
- D 0 - I - 0x0186D3 06:86C3: 00        .byte $00   ; 43 
- D 0 - I - 0x0186D4 06:86C4: 00        .byte $00   ; 44 
- D 0 - I - 0x0186D5 06:86C5: 03        .byte $03   ; 45 
- D 0 - I - 0x0186D6 06:86C6: 06        .byte $06   ; 46 
- D 0 - I - 0x0186D7 06:86C7: 45        .byte $45   ; 47 
- D 0 - I - 0x0186D8 06:86C8: 02        .byte $02   ; 48 
- D 0 - I - 0x0186D9 06:86C9: 02        .byte $02   ; 49 
- D 0 - I - 0x0186DA 06:86CA: 00        .byte $00   ; 4A 
- D 0 - I - 0x0186DB 06:86CB: 09        .byte $09   ; 4B 
- D 0 - I - 0x0186DC 06:86CC: 00        .byte $00   ; 4C 
- D 0 - I - 0x0186DD 06:86CD: 0C        .byte $0C   ; 4D 
- D 0 - I - 0x0186DE 06:86CE: 0A        .byte $0A   ; 4E 
- D 0 - I - 0x0186DF 06:86CF: 00        .byte $00   ; 4F 
- D 0 - I - 0x0186E0 06:86D0: 00        .byte $00   ; 50 
- D 0 - I - 0x0186E1 06:86D1: 05        .byte $05   ; 51 
- D 0 - I - 0x0186E2 06:86D2: 08        .byte $08   ; 52 
- D 0 - I - 0x0186E3 06:86D3: 85        .byte $85   ; 53 
- D 0 - I - 0x0186E4 06:86D4: 00        .byte $00   ; 54 
- D 0 - I - 0x0186E5 06:86D5: 00        .byte $00   ; 55 
- D 0 - I - 0x0186E6 06:86D6: 06        .byte $06   ; 56 
- D 0 - I - 0x0186E7 06:86D7: 08        .byte $08   ; 57 
- D 0 - I - 0x0186E8 06:86D8: 8C        .byte $8C   ; 58 
- D 0 - I - 0x0186E9 06:86D9: 00        .byte $00   ; 59 
- D 0 - I - 0x0186EA 06:86DA: 00        .byte $00   ; 5A 
- D 0 - I - 0x0186EB 06:86DB: 0D        .byte $0D   ; 5B 
- D 0 - I - 0x0186EC 06:86DC: 08        .byte $08   ; 5C 
- D 0 - I - 0x0186ED 06:86DD: 08        .byte $08   ; 5D 
- D 0 - I - 0x0186EE 06:86DE: 00        .byte $00   ; 5E 
- D 0 - I - 0x0186EF 06:86DF: 00        .byte $00   ; 5F 
- D 0 - I - 0x0186F0 06:86E0: 84        .byte $84   ; 60 
- D 0 - I - 0x0186F1 06:86E1: 08        .byte $08   ; 61 
- D 0 - I - 0x0186F2 06:86E2: 4B        .byte $4B   ; 62 
- D 0 - I - 0x0186F3 06:86E3: 05        .byte $05   ; 63 
- D 0 - I - 0x0186F4 06:86E4: 00        .byte $00   ; 64 
- D 0 - I - 0x0186F5 06:86E5: 00        .byte $00   ; 65 
- D 0 - I - 0x0186F6 06:86E6: 00        .byte $00   ; 66 
- D 0 - I - 0x0186F7 06:86E7: 40        .byte $40   ; 67 
- D 0 - I - 0x0186F8 06:86E8: 0C        .byte $0C   ; 68 
- D 0 - I - 0x0186F9 06:86E9: 00        .byte $00   ; 69 
- D 0 - I - 0x0186FA 06:86EA: 05        .byte $05   ; 6A 
- D 0 - I - 0x0186FB 06:86EB: 4D        .byte $4D   ; 6B 
- D 0 - I - 0x0186FC 06:86EC: 89        .byte $89   ; 6C 
- D 0 - I - 0x0186FD 06:86ED: 49        .byte $49   ; 6D 
- D 0 - I - 0x0186FE 06:86EE: 84        .byte $84   ; 6E 
- D 0 - I - 0x0186FF 06:86EF: 00        .byte $00   ; 6F 
- D 0 - I - 0x018700 06:86F0: 00        .byte $00   ; 70 
- D 0 - I - 0x018701 06:86F1: 48        .byte $48   ; 71 
- D 0 - I - 0x018702 06:86F2: 8C        .byte $8C   ; 72 
- D 0 - I - 0x018703 06:86F3: 08        .byte $08   ; 73 
- D 0 - I - 0x018704 06:86F4: 03        .byte $03   ; 74 
- D 0 - I - 0x018705 06:86F5: 00        .byte $00   ; 75 
- D 0 - I - 0x018706 06:86F6: 00        .byte $00   ; 76 
- D 0 - I - 0x018707 06:86F7: 00        .byte $00   ; 77 
- D 0 - I - 0x018708 06:86F8: 0C        .byte $0C   ; 78 
- D 0 - I - 0x018709 06:86F9: 22        .byte $22   ; 79 
- D 0 - I - 0x01870A 06:86FA: 00        .byte $00   ; 7A 
- D 0 - I - 0x01870B 06:86FB: 40        .byte $40   ; 7B 
- D 0 - I - 0x01870C 06:86FC: 00        .byte $00   ; 7C 
- D 0 - I - 0x01870D 06:86FD: 00        .byte $00   ; 7D 
- D 0 - I - 0x01870E 06:86FE: 00        .byte $00   ; 7E 
- D 0 - I - 0x01870F 06:86FF: 00        .byte $00   ; 7F 



_off009_8700_01:
_off009_8700_02:
_off009_8700_03:
_off009_8700_04:
_off009_8700_05:
_off009_8700_06:
- D 0 - I - 0x018710 06:8700: 22        .byte $22   ; 00 
- D 0 - I - 0x018711 06:8701: 32        .byte $32   ; 01 
- D 0 - I - 0x018712 06:8702: 22        .byte $22   ; 02 
- D 0 - I - 0x018713 06:8703: 22        .byte $22   ; 03 
- D 0 - I - 0x018714 06:8704: 05        .byte $05   ; 04 
- D 0 - I - 0x018715 06:8705: 26        .byte $26   ; 05 
- D 0 - I - 0x018716 06:8706: 36        .byte $36   ; 06 
- D 0 - I - 0x018717 06:8707: 64        .byte $64   ; 07 
- D 0 - I - 0x018718 06:8708: 3A        .byte $3A   ; 08 
- D 0 - I - 0x018719 06:8709: 36        .byte $36   ; 09 
- D 0 - I - 0x01871A 06:870A: 3E        .byte $3E   ; 0A 
- D 0 - I - 0x01871B 06:870B: 22        .byte $22   ; 0B 
- D 0 - I - 0x01871C 06:870C: 22        .byte $22   ; 0C 
- D 0 - I - 0x01871D 06:870D: 26        .byte $26   ; 0D 
- D 0 - I - 0x01871E 06:870E: 22        .byte $22   ; 0E 
- D 0 - I - 0x01871F 06:870F: 69        .byte $69   ; 0F 
- D 0 - I - 0x018720 06:8710: FE        .byte $FE   ; 10 
- D 0 - I - 0x018721 06:8711: 92        .byte $92   ; 11 
- D 0 - I - 0x018722 06:8712: 06        .byte $06   ; 12 
- D 0 - I - 0x018723 06:8713: E6        .byte $E6   ; 13 
- D 0 - I - 0x018724 06:8714: 22        .byte $22   ; 14 
- D 0 - I - 0x018725 06:8715: 32        .byte $32   ; 15 
- D 0 - I - 0x018726 06:8716: A6        .byte $A6   ; 16 
- D 0 - I - 0x018727 06:8717: 26        .byte $26   ; 17 
- D 0 - I - 0x018728 06:8718: 3E        .byte $3E   ; 18 
- D 0 - I - 0x018729 06:8719: B6        .byte $B6   ; 19 
- D 0 - I - 0x01872A 06:871A: 06        .byte $06   ; 1A 
- D 0 - I - 0x01872B 06:871B: E6        .byte $E6   ; 1B 
- D 0 - I - 0x01872C 06:871C: F6        .byte $F6   ; 1C 
- D 0 - I - 0x01872D 06:871D: 22        .byte $22   ; 1D 
- D 0 - I - 0x01872E 06:871E: FE        .byte $FE   ; 1E 
- D 0 - I - 0x01872F 06:871F: 22        .byte $22   ; 1F 
- D 0 - I - 0x018730 06:8720: 16        .byte $16   ; 20 
- D 0 - I - 0x018731 06:8721: 96        .byte $96   ; 21 
- D 0 - I - 0x018732 06:8722: 26        .byte $26   ; 22 
- D 0 - I - 0x018733 06:8723: 36        .byte $36   ; 23 
- D 0 - I - 0x018734 06:8724: E2        .byte $E2   ; 24 
- D 0 - I - 0x018735 06:8725: 86        .byte $86   ; 25 
- D 0 - I - 0x018736 06:8726: 26        .byte $26   ; 26 
- D 0 - I - 0x018737 06:8727: 22        .byte $22   ; 27 
- D 0 - I - 0x018738 06:8728: 1E        .byte $1E   ; 28 
- D 0 - I - 0x018739 06:8729: A2        .byte $A2   ; 29 
- D 0 - I - 0x01873A 06:872A: 26        .byte $26   ; 2A 
- D 0 - I - 0x01873B 06:872B: 22        .byte $22   ; 2B 
- D 0 - I - 0x01873C 06:872C: A2        .byte $A2   ; 2C 
- D 0 - I - 0x01873D 06:872D: 06        .byte $06   ; 2D 
- D 0 - I - 0x01873E 06:872E: E2        .byte $E2   ; 2E 
- D 0 - I - 0x01873F 06:872F: 12        .byte $12   ; 2F 
- D 0 - I - 0x018740 06:8730: A2        .byte $A2   ; 30 
- D 0 - I - 0x018741 06:8731: A6        .byte $A6   ; 31 
- D 0 - I - 0x018742 06:8732: 26        .byte $26   ; 32 
- D 0 - I - 0x018743 06:8733: A2        .byte $A2   ; 33 
- D 0 - I - 0x018744 06:8734: E6        .byte $E6   ; 34 
- D 0 - I - 0x018745 06:8735: 36        .byte $36   ; 35 
- D 0 - I - 0x018746 06:8736: 26        .byte $26   ; 36 
- D 0 - I - 0x018747 06:8737: 02        .byte $02   ; 37 
- D 0 - I - 0x018748 06:8738: FE        .byte $FE   ; 38 
- D 0 - I - 0x018749 06:8739: E6        .byte $E6   ; 39 
- D 0 - I - 0x01874A 06:873A: 26        .byte $26   ; 3A 
- D 0 - I - 0x01874B 06:873B: F6        .byte $F6   ; 3B 
- D 0 - I - 0x01874C 06:873C: E6        .byte $E6   ; 3C 
- D 0 - I - 0x01874D 06:873D: 22        .byte $22   ; 3D 
- D 0 - I - 0x01874E 06:873E: 02        .byte $02   ; 3E 
- D 0 - I - 0x01874F 06:873F: 92        .byte $92   ; 3F 
- D 0 - I - 0x018750 06:8740: 02        .byte $02   ; 40 
- D 0 - I - 0x018751 06:8741: 26        .byte $26   ; 41 
- D 0 - I - 0x018752 06:8742: 36        .byte $36   ; 42 
- D 0 - I - 0x018753 06:8743: 12        .byte $12   ; 43 
- D 0 - I - 0x018754 06:8744: 32        .byte $32   ; 44 
- D 0 - I - 0x018755 06:8745: A6        .byte $A6   ; 45 
- D 0 - I - 0x018756 06:8746: 36        .byte $36   ; 46 
- D 0 - I - 0x018757 06:8747: 02        .byte $02   ; 47 
- D 0 - I - 0x018758 06:8748: 02        .byte $02   ; 48 
- D 0 - I - 0x018759 06:8749: 22        .byte $22   ; 49 
- D 0 - I - 0x01875A 06:874A: 22        .byte $22   ; 4A 
- D 0 - I - 0x01875B 06:874B: A2        .byte $A2   ; 4B 
- D 0 - I - 0x01875C 06:874C: 22        .byte $22   ; 4C 
- D 0 - I - 0x01875D 06:874D: FE        .byte $FE   ; 4D 
- D 0 - I - 0x01875E 06:874E: 1E        .byte $1E   ; 4E 
- D 0 - I - 0x01875F 06:874F: 92        .byte $92   ; 4F 
- D 0 - I - 0x018760 06:8750: 06        .byte $06   ; 50 
- D 0 - I - 0x018761 06:8751: 22        .byte $22   ; 51 
- D 0 - I - 0x018762 06:8752: A6        .byte $A6   ; 52 
- D 0 - I - 0x018763 06:8753: 82        .byte $82   ; 53 
- D 0 - I - 0x018764 06:8754: 86        .byte $86   ; 54 
- D 0 - I - 0x018765 06:8755: 22        .byte $22   ; 55 
- D 0 - I - 0x018766 06:8756: A2        .byte $A2   ; 56 
- D 0 - I - 0x018767 06:8757: 06        .byte $06   ; 57 
- D 0 - I - 0x018768 06:8758: E2        .byte $E2   ; 58 
- D 0 - I - 0x018769 06:8759: 1E        .byte $1E   ; 59 
- D 0 - I - 0x01876A 06:875A: 06        .byte $06   ; 5A 
- D 0 - I - 0x01876B 06:875B: 02        .byte $02   ; 5B 
- D 0 - I - 0x01876C 06:875C: 06        .byte $06   ; 5C 
- D 0 - I - 0x01876D 06:875D: E6        .byte $E6   ; 5D 
- D 0 - I - 0x01876E 06:875E: 02        .byte $02   ; 5E 
- D 0 - I - 0x01876F 06:875F: 92        .byte $92   ; 5F 
- D 0 - I - 0x018770 06:8760: 32        .byte $32   ; 60 
- D 0 - I - 0x018771 06:8761: 02        .byte $02   ; 61 
- D 0 - I - 0x018772 06:8762: 26        .byte $26   ; 62 
- D 0 - I - 0x018773 06:8763: 16        .byte $16   ; 63 
- D 0 - I - 0x018774 06:8764: 26        .byte $26   ; 64 
- D 0 - I - 0x018775 06:8765: E6        .byte $E6   ; 65 
- D 0 - I - 0x018776 06:8766: E2        .byte $E2   ; 66 
- D 0 - I - 0x018777 06:8767: 32        .byte $32   ; 67 
- D 0 - I - 0x018778 06:8768: 02        .byte $02   ; 68 
- D 0 - I - 0x018779 06:8769: 06        .byte $06   ; 69 
- D 0 - I - 0x01877A 06:876A: 36        .byte $36   ; 6A 
- D 0 - I - 0x01877B 06:876B: 02        .byte $02   ; 6B 
- D 0 - I - 0x01877C 06:876C: 26        .byte $26   ; 6C 
- D 0 - I - 0x01877D 06:876D: 22        .byte $22   ; 6D 
- D 0 - I - 0x01877E 06:876E: 02        .byte $02   ; 6E 
- D 0 - I - 0x01877F 06:876F: 86        .byte $86   ; 6F 
- D 0 - I - 0x018780 06:8770: 26        .byte $26   ; 70 
- D 0 - I - 0x018781 06:8771: 02        .byte $02   ; 71 
- D 0 - I - 0x018782 06:8772: 26        .byte $26   ; 72 
- D 0 - I - 0x018783 06:8773: A2        .byte $A2   ; 73 
- D 0 - I - 0x018784 06:8774: 26        .byte $26   ; 74 
- D 0 - I - 0x018785 06:8775: 09        .byte $09   ; 75 
- D 0 - I - 0x018786 06:8776: 02        .byte $02   ; 76 
- D 0 - I - 0x018787 06:8777: 86        .byte $86   ; 77 
- D 0 - I - 0x018788 06:8778: 06        .byte $06   ; 78 
- D 0 - I - 0x018789 06:8779: 22        .byte $22   ; 79 
- D 0 - I - 0x01878A 06:877A: A6        .byte $A6   ; 7A 
- D 0 - I - 0x01878B 06:877B: 06        .byte $06   ; 7B 
- D 0 - I - 0x01878C 06:877C: 22        .byte $22   ; 7C 
- D 0 - I - 0x01878D 06:877D: 02        .byte $02   ; 7D 
- D 0 - I - 0x01878E 06:877E: 06        .byte $06   ; 7E 
- D 0 - I - 0x01878F 06:877F: 22        .byte $22   ; 7F 

- D 0 - I - 0x018790 06:8780: 34        .byte $34   ; 00 
- D 0 - I - 0x018791 06:8781: A3        .byte $A3   ; 01 
- D 0 - I - 0x018792 06:8782: 07        .byte $07   ; 02 
- D 0 - I - 0x018793 06:8783: 26        .byte $26   ; 03 
- D 0 - I - 0x018794 06:8784: 05        .byte $05   ; 04 
- D 0 - I - 0x018795 06:8785: 36        .byte $36   ; 05 
- D 0 - I - 0x018796 06:8786: A6        .byte $A6   ; 06 
- D 0 - I - 0x018797 06:8787: 06        .byte $06   ; 07 
- D 0 - I - 0x018798 06:8788: 1D        .byte $1D   ; 08 
- D 0 - I - 0x018799 06:8789: 32        .byte $32   ; 09 
- D 0 - I - 0x01879A 06:878A: 92        .byte $92   ; 0A 
- D 0 - I - 0x01879B 06:878B: 84        .byte $84   ; 0B 
- D 0 - I - 0x01879C 06:878C: 26        .byte $26   ; 0C 
- D 0 - I - 0x01879D 06:878D: 22        .byte $22   ; 0D 
- D 0 - I - 0x01879E 06:878E: E6        .byte $E6   ; 0E 
- D 0 - I - 0x01879F 06:878F: 69        .byte $69   ; 0F 
- D 0 - I - 0x0187A0 06:8790: 32        .byte $32   ; 10 
- D 0 - I - 0x0187A1 06:8791: 92        .byte $92   ; 11 
- D 0 - I - 0x0187A2 06:8792: 9E        .byte $9E   ; 12 
- D 0 - I - 0x0187A3 06:8793: E6        .byte $E6   ; 13 
- D 0 - I - 0x0187A4 06:8794: 26        .byte $26   ; 14 
- D 0 - I - 0x0187A5 06:8795: 24        .byte $24   ; 15 
- D 0 - I - 0x0187A6 06:8796: 33        .byte $33   ; 16 
- D 0 - I - 0x0187A7 06:8797: 84        .byte $84   ; 17 
- D 0 - I - 0x0187A8 06:8798: 3E        .byte $3E   ; 18 
- D 0 - I - 0x0187A9 06:8799: 03        .byte $03   ; 19 
- D 0 - I - 0x0187AA 06:879A: 03        .byte $03   ; 1A 
- D 0 - I - 0x0187AB 06:879B: 06        .byte $06   ; 1B 
- D 0 - I - 0x0187AC 06:879C: 26        .byte $26   ; 1C 
- D 0 - I - 0x0187AD 06:879D: 26        .byte $26   ; 1D 
- D 0 - I - 0x0187AE 06:879E: 32        .byte $32   ; 1E 
- D 0 - I - 0x0187AF 06:879F: 84        .byte $84   ; 1F 
- D 0 - I - 0x0187B0 06:87A0: 23        .byte $23   ; 20 
- D 0 - I - 0x0187B1 06:87A1: 07        .byte $07   ; 21 
- D 0 - I - 0x0187B2 06:87A2: 36        .byte $36   ; 22 
- D 0 - I - 0x0187B3 06:87A3: A7        .byte $A7   ; 23 
- D 0 - I - 0x0187B4 06:87A4: 36        .byte $36   ; 24 
- D 0 - I - 0x0187B5 06:87A5: A2        .byte $A2   ; 25 
- D 0 - I - 0x0187B6 06:87A6: 17        .byte $17   ; 26 
- D 0 - I - 0x0187B7 06:87A7: A7        .byte $A7   ; 27 
- D 0 - I - 0x0187B8 06:87A8: 32        .byte $32   ; 28 
- D 0 - I - 0x0187B9 06:87A9: 87        .byte $87   ; 29 
- D 0 - I - 0x0187BA 06:87AA: 3E        .byte $3E   ; 2A 
- D 0 - I - 0x0187BB 06:87AB: 04        .byte $04   ; 2B 
- D 0 - I - 0x0187BC 06:87AC: 22        .byte $22   ; 2C 
- D 0 - I - 0x0187BD 06:87AD: 07        .byte $07   ; 2D 
- D 0 - I - 0x0187BE 06:87AE: 36        .byte $36   ; 2E 
- D 0 - I - 0x0187BF 06:87AF: A6        .byte $A6   ; 2F 
- D 0 - I - 0x0187C0 06:87B0: 37        .byte $37   ; 30 
- D 0 - I - 0x0187C1 06:87B1: BF        .byte $BF   ; 31 
- D 0 - I - 0x0187C2 06:87B2: 06        .byte $06   ; 32 
- D 0 - I - 0x0187C3 06:87B3: 27        .byte $27   ; 33 
- D 0 - I - 0x0187C4 06:87B4: 26        .byte $26   ; 34 
- D 0 - I - 0x0187C5 06:87B5: 3E        .byte $3E   ; 35 
- D 0 - I - 0x0187C6 06:87B6: 06        .byte $06   ; 36 
- D 0 - I - 0x0187C7 06:87B7: 27        .byte $27   ; 37 
- D 0 - I - 0x0187C8 06:87B8: 26        .byte $26   ; 38 
- D 0 - I - 0x0187C9 06:87B9: 3F        .byte $3F   ; 39 
- D 0 - I - 0x0187CA 06:87BA: 06        .byte $06   ; 3A 
- D 0 - I - 0x0187CB 06:87BB: 26        .byte $26   ; 3B 
- D 0 - I - 0x0187CC 06:87BC: 27        .byte $27   ; 3C 
- D 0 - I - 0x0187CD 06:87BD: 26        .byte $26   ; 3D 
- D 0 - I - 0x0187CE 06:87BE: 21        .byte $21   ; 3E 
- D 0 - I - 0x0187CF 06:87BF: 06        .byte $06   ; 3F 
- D 0 - I - 0x0187D0 06:87C0: 27        .byte $27   ; 40 
- D 0 - I - 0x0187D1 06:87C1: 20        .byte $20   ; 41 
- D 0 - I - 0x0187D2 06:87C2: E2        .byte $E2   ; 42 
- D 0 - I - 0x0187D3 06:87C3: 16        .byte $16   ; 43 
- D 0 - I - 0x0187D4 06:87C4: A2        .byte $A2   ; 44 
- D 0 - I - 0x0187D5 06:87C5: 06        .byte $06   ; 45 
- D 0 - I - 0x0187D6 06:87C6: 23        .byte $23   ; 46 
- D 0 - I - 0x0187D7 06:87C7: 07        .byte $07   ; 47 
- D 0 - I - 0x0187D8 06:87C8: 26        .byte $26   ; 48 
- D 0 - I - 0x0187D9 06:87C9: 22        .byte $22   ; 49 
- D 0 - I - 0x0187DA 06:87CA: 16        .byte $16   ; 4A 
- D 0 - I - 0x0187DB 06:87CB: B6        .byte $B6   ; 4B 
- D 0 - I - 0x0187DC 06:87CC: B2        .byte $B2   ; 4C 
- D 0 - I - 0x0187DD 06:87CD: 85        .byte $85   ; 4D 
- D 0 - I - 0x0187DE 06:87CE: 22        .byte $22   ; 4E 
- D 0 - I - 0x0187DF 06:87CF: 06        .byte $06   ; 4F 
- D 0 - I - 0x0187E0 06:87D0: 23        .byte $23   ; 50 
- D 0 - I - 0x0187E1 06:87D1: 06        .byte $06   ; 51 
- D 0 - I - 0x0187E2 06:87D2: 3E        .byte $3E   ; 52 
- D 0 - I - 0x0187E3 06:87D3: 02        .byte $02   ; 53 
- D 0 - I - 0x0187E4 06:87D4: 06        .byte $06   ; 54 
- D 0 - I - 0x0187E5 06:87D5: 3F        .byte $3F   ; 55 
- D 0 - I - 0x0187E6 06:87D6: E2        .byte $E2   ; 56 
- D 0 - I - 0x0187E7 06:87D7: 07        .byte $07   ; 57 
- D 0 - I - 0x0187E8 06:87D8: 27        .byte $27   ; 58 
- D 0 - I - 0x0187E9 06:87D9: 36        .byte $36   ; 59 
- D 0 - I - 0x0187EA 06:87DA: A2        .byte $A2   ; 5A 
- D 0 - I - 0x0187EB 06:87DB: 12        .byte $12   ; 5B 
- D 0 - I - 0x0187EC 06:87DC: 9E        .byte $9E   ; 5C 
- D 0 - I - 0x0187ED 06:87DD: E6        .byte $E6   ; 5D 
- D 0 - I - 0x0187EE 06:87DE: 36        .byte $36   ; 5E 
- D 0 - I - 0x0187EF 06:87DF: A6        .byte $A6   ; 5F 
- D 0 - I - 0x0187F0 06:87E0: 32        .byte $32   ; 60 
- D 0 - I - 0x0187F1 06:87E1: 36        .byte $36   ; 61 
- D 0 - I - 0x0187F2 06:87E2: A7        .byte $A7   ; 62 
- D 0 - I - 0x0187F3 06:87E3: 26        .byte $26   ; 63 
- D 0 - I - 0x0187F4 06:87E4: 32        .byte $32   ; 64 
- D 0 - I - 0x0187F5 06:87E5: 92        .byte $92   ; 65 
- D 0 - I - 0x0187F6 06:87E6: 97        .byte $97   ; 66 
- D 0 - I - 0x0187F7 06:87E7: A4        .byte $A4   ; 67 
- D 0 - I - 0x0187F8 06:87E8: 26        .byte $26   ; 68 
- D 0 - I - 0x0187F9 06:87E9: 26        .byte $26   ; 69 
- D 0 - I - 0x0187FA 06:87EA: 24        .byte $24   ; 6A 
- D 0 - I - 0x0187FB 06:87EB: 26        .byte $26   ; 6B 
- D 0 - I - 0x0187FC 06:87EC: 22        .byte $22   ; 6C 
- D 0 - I - 0x0187FD 06:87ED: E2        .byte $E2   ; 6D 
- D 0 - I - 0x0187FE 06:87EE: 16        .byte $16   ; 6E 
- D 0 - I - 0x0187FF 06:87EF: A6        .byte $A6   ; 6F 
- D 0 - I - 0x018800 06:87F0: 22        .byte $22   ; 70 
- D 0 - I - 0x018801 06:87F1: 07        .byte $07   ; 71 
- D 0 - I - 0x018802 06:87F2: 22        .byte $22   ; 72 
- D 0 - I - 0x018803 06:87F3: 03        .byte $03   ; 73 
- D 0 - I - 0x018804 06:87F4: 06        .byte $06   ; 74 
- D 0 - I - 0x018805 06:87F5: 09        .byte $09   ; 75 
- D 0 - I - 0x018806 06:87F6: 23        .byte $23   ; 76 
- D 0 - I - 0x018807 06:87F7: 06        .byte $06   ; 77 
- D 0 - I - 0x018808 06:87F8: 36        .byte $36   ; 78 
- D 0 - I - 0x018809 06:87F9: A3        .byte $A3   ; 79 
- D 0 - I - 0x01880A 06:87FA: 07        .byte $07   ; 7A 
- D 0 - I - 0x01880B 06:87FB: 22        .byte $22   ; 7B 
- D 0 - I - 0x01880C 06:87FC: 07        .byte $07   ; 7C 
- D 0 - I - 0x01880D 06:87FD: 23        .byte $23   ; 7D 
- D 0 - I - 0x01880E 06:87FE: 06        .byte $06   ; 7E 
- D 0 - I - 0x01880F 06:87FF: 22        .byte $22   ; 7F 

- D 0 - I - 0x018810 06:8800: 0E        .byte $0E   ; 00 
- D 0 - I - 0x018811 06:8801: DB        .byte $DB   ; 01 
- D 0 - I - 0x018812 06:8802: 09        .byte $09   ; 02 
- D 0 - I - 0x018813 06:8803: 00        .byte $00   ; 03 
- D 0 - I - 0x018814 06:8804: 98        .byte $98   ; 04 
- D 0 - I - 0x018815 06:8805: 8C        .byte $8C   ; 05 
- D 0 - I - 0x018816 06:8806: 00        .byte $00   ; 06 
- D 0 - I - 0x018817 06:8807: 69        .byte $69   ; 07 
- D 0 - I - 0x018818 06:8808: 69        .byte $69   ; 08 
- D 0 - I - 0x018819 06:8809: 7B        .byte $7B   ; 09 
- D 0 - I - 0x01881A 06:880A: B3        .byte $B3   ; 0A 
- D 0 - I - 0x01881B 06:880B: 0C        .byte $0C   ; 0B 
- D 0 - I - 0x01881C 06:880C: 00        .byte $00   ; 0C 
- D 0 - I - 0x01881D 06:880D: 00        .byte $00   ; 0D 
- D 0 - I - 0x01881E 06:880E: 32        .byte $32   ; 0E 
- D 0 - I - 0x01881F 06:880F: 68        .byte $68   ; 0F 
- D 0 - I - 0x018820 06:8810: 3C        .byte $3C   ; 10 
- D 0 - I - 0x018821 06:8811: 35        .byte $35   ; 11 
- D 0 - I - 0x018822 06:8812: 52        .byte $52   ; 12 
- D 0 - I - 0x018823 06:8813: 03        .byte $03   ; 13 
- D 0 - I - 0x018824 06:8814: 00        .byte $00   ; 14 
- D 0 - I - 0x018825 06:8815: 0D        .byte $0D   ; 15 
- D 0 - I - 0x018826 06:8816: DB        .byte $DB   ; 16 
- D 0 - I - 0x018827 06:8817: 0F        .byte $0F   ; 17 
- D 0 - I - 0x018828 06:8818: 04        .byte $04   ; 18 
- D 0 - I - 0x018829 06:8819: B3        .byte $B3   ; 19 
- D 0 - I - 0x01882A 06:881A: A4        .byte $A4   ; 1A 
- D 0 - I - 0x01882B 06:881B: FC        .byte $FC   ; 1B 
- D 0 - I - 0x01882C 06:881C: 34        .byte $34   ; 1C 
- D 0 - I - 0x01882D 06:881D: B3        .byte $B3   ; 1D 
- D 0 - I - 0x01882E 06:881E: 46        .byte $46   ; 1E 
- D 0 - I - 0x01882F 06:881F: 0B        .byte $0B   ; 1F 
- D 0 - I - 0x018830 06:8820: 52        .byte $52   ; 20 
- D 0 - I - 0x018831 06:8821: 55        .byte $55   ; 21 
- D 0 - I - 0x018832 06:8822: 0A        .byte $0A   ; 22 
- D 0 - I - 0x018833 06:8823: 06        .byte $06   ; 23 
- D 0 - I - 0x018834 06:8824: 39        .byte $39   ; 24 
- D 0 - I - 0x018835 06:8825: 56        .byte $56   ; 25 
- D 0 - I - 0x018836 06:8826: 70        .byte $70   ; 26 
- D 0 - I - 0x018837 06:8827: B0        .byte $B0   ; 27 
- D 0 - I - 0x018838 06:8828: 7B        .byte $7B   ; 28 
- D 0 - I - 0x018839 06:8829: 7B        .byte $7B   ; 29 
- D 0 - I - 0x01883A 06:882A: DB        .byte $DB   ; 2A 
- D 0 - I - 0x01883B 06:882B: 0B        .byte $0B   ; 2B 
- D 0 - I - 0x01883C 06:882C: F7        .byte $F7   ; 2C 
- D 0 - I - 0x01883D 06:882D: 72        .byte $72   ; 2D 
- D 0 - I - 0x01883E 06:882E: E8        .byte $E8   ; 2E 
- D 0 - I - 0x01883F 06:882F: 55        .byte $55   ; 2F 
- D 0 - I - 0x018840 06:8830: 72        .byte $72   ; 30 
- D 0 - I - 0x018841 06:8831: 52        .byte $52   ; 31 
- D 0 - I - 0x018842 06:8832: B3        .byte $B3   ; 32 
- D 0 - I - 0x018843 06:8833: 2A        .byte $2A   ; 33 
- D 0 - I - 0x018844 06:8834: B0        .byte $B0   ; 34 
- D 0 - I - 0x018845 06:8835: 3D        .byte $3D   ; 35 
- D 0 - I - 0x018846 06:8836: 00        .byte $00   ; 36 
- D 0 - I - 0x018847 06:8837: 0B        .byte $0B   ; 37 
- D 0 - I - 0x018848 06:8838: FC        .byte $FC   ; 38 
- D 0 - I - 0x018849 06:8839: 52        .byte $52   ; 39 
- D 0 - I - 0x01884A 06:883A: FC        .byte $FC   ; 3A 
- D 0 - I - 0x01884B 06:883B: AD        .byte $AD   ; 3B 
- D 0 - I - 0x01884C 06:883C: 7B        .byte $7B   ; 3C 
- D 0 - I - 0x01884D 06:883D: 00        .byte $00   ; 3D 
- D 0 - I - 0x01884E 06:883E: 01        .byte $01   ; 3E 
- D 0 - I - 0x01884F 06:883F: EE        .byte $EE   ; 3F 
- D 0 - I - 0x018850 06:8840: 53        .byte $53   ; 40 
- D 0 - I - 0x018851 06:8841: 0C        .byte $0C   ; 41 
- D 0 - I - 0x018852 06:8842: 15        .byte $15   ; 42 
- D 0 - I - 0x018853 06:8843: 55        .byte $55   ; 43 
- D 0 - I - 0x018854 06:8844: 06        .byte $06   ; 44 
- D 0 - I - 0x018855 06:8845: E7        .byte $E7   ; 45 
- D 0 - I - 0x018856 06:8846: 00        .byte $00   ; 46 
- D 0 - I - 0x018857 06:8847: 70        .byte $70   ; 47 
- D 0 - I - 0x018858 06:8848: 09        .byte $09   ; 48 
- D 0 - I - 0x018859 06:8849: EF        .byte $EF   ; 49 
- D 0 - I - 0x01885A 06:884A: 5B        .byte $5B   ; 4A 
- D 0 - I - 0x01885B 06:884B: 13        .byte $13   ; 4B 
- D 0 - I - 0x01885C 06:884C: AD        .byte $AD   ; 4C 
- D 0 - I - 0x01885D 06:884D: 3C        .byte $3C   ; 4D 
- D 0 - I - 0x01885E 06:884E: 68        .byte $68   ; 4E 
- D 0 - I - 0x01885F 06:884F: 05        .byte $05   ; 4F 
- D 0 - I - 0x018860 06:8850: 52        .byte $52   ; 50 
- D 0 - I - 0x018861 06:8851: DB        .byte $DB   ; 51 
- D 0 - I - 0x018862 06:8852: 9B        .byte $9B   ; 52 
- D 0 - I - 0x018863 06:8853: 6A        .byte $6A   ; 53 
- D 0 - I - 0x018864 06:8854: DB        .byte $DB   ; 54 
- D 0 - I - 0x018865 06:8855: 53        .byte $53   ; 55 
- D 0 - I - 0x018866 06:8856: 31        .byte $31   ; 56 
- D 0 - I - 0x018867 06:8857: 53        .byte $53   ; 57 
- D 0 - I - 0x018868 06:8858: DB        .byte $DB   ; 58 
- D 0 - I - 0x018869 06:8859: 4B        .byte $4B   ; 59 
- D 0 - I - 0x01886A 06:885A: EE        .byte $EE   ; 5A 
- D 0 - I - 0x01886B 06:885B: 0B        .byte $0B   ; 5B 
- D 0 - I - 0x01886C 06:885C: 0B        .byte $0B   ; 5C 
- D 0 - I - 0x01886D 06:885D: EF        .byte $EF   ; 5D 
- D 0 - I - 0x01886E 06:885E: 46        .byte $46   ; 5E 
- D 0 - I - 0x01886F 06:885F: 55        .byte $55   ; 5F 
- D 0 - I - 0x018870 06:8860: CB        .byte $CB   ; 60 
- D 0 - I - 0x018871 06:8861: 12        .byte $12   ; 61 
- D 0 - I - 0x018872 06:8862: 52        .byte $52   ; 62 
- D 0 - I - 0x018873 06:8863: 2A        .byte $2A   ; 63 
- D 0 - I - 0x018874 06:8864: 4C        .byte $4C   ; 64 
- D 0 - I - 0x018875 06:8865: 70        .byte $70   ; 65 
- D 0 - I - 0x018876 06:8866: 30        .byte $30   ; 66 
- D 0 - I - 0x018877 06:8867: 0E        .byte $0E   ; 67 
- D 0 - I - 0x018878 06:8868: 53        .byte $53   ; 68 
- D 0 - I - 0x018879 06:8869: CB        .byte $CB   ; 69 
- D 0 - I - 0x01887A 06:886A: 0D        .byte $0D   ; 6A 
- D 0 - I - 0x01887B 06:886B: 53        .byte $53   ; 6B 
- D 0 - I - 0x01887C 06:886C: A8        .byte $A8   ; 6C 
- D 0 - I - 0x01887D 06:886D: 68        .byte $68   ; 6D 
- D 0 - I - 0x01887E 06:886E: 28        .byte $28   ; 6E 
- D 0 - I - 0x01887F 06:886F: 95        .byte $95   ; 6F 
- D 0 - I - 0x018880 06:8870: DB        .byte $DB   ; 70 
- D 0 - I - 0x018881 06:8871: 00        .byte $00   ; 71 
- D 0 - I - 0x018882 06:8872: 1B        .byte $1B   ; 72 
- D 0 - I - 0x018883 06:8873: 00        .byte $00   ; 73 
- D 0 - I - 0x018884 06:8874: 6A        .byte $6A   ; 74 
- D 0 - I - 0x018885 06:8875: C8        .byte $C8   ; 75 
- D 0 - I - 0x018886 06:8876: 00        .byte $00   ; 76 
- D 0 - I - 0x018887 06:8877: 56        .byte $56   ; 77 
- D 0 - I - 0x018888 06:8878: 64        .byte $64   ; 78 
- D 0 - I - 0x018889 06:8879: 00        .byte $00   ; 79 
- D 0 - I - 0x01888A 06:887A: 64        .byte $64   ; 7A 
- D 0 - I - 0x01888B 06:887B: 93        .byte $93   ; 7B 
- D 0 - I - 0x01888C 06:887C: 00        .byte $00   ; 7C 
- D 0 - I - 0x01888D 06:887D: 00        .byte $00   ; 7D 
- D 0 - I - 0x01888E 06:887E: 68        .byte $68   ; 7E 
- D 0 - I - 0x01888F 06:887F: 6A        .byte $6A   ; 7F 

- D 0 - I - 0x018890 06:8880: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 00 
- D 0 - I - 0x018891 06:8881: 16        .byte $00 + $00 + con_obj_id_16   ; 01 
- D 0 - I - 0x018892 06:8882: 81        .byte $00 + $80 + con_obj_id_41 - $40   ; 02 
- D 0 - I - 0x018893 06:8883: 29        .byte $00 + $00 + con_obj_id_29   ; 03 
- D 0 - I - 0x018894 06:8884: 3F        .byte $00 + $00 + con_obj_id_3F   ; 04 
- D 0 - I - 0x018895 06:8885: 62        .byte $40 + $00 + con_obj_id_22   ; 05 
- D 0 - I - 0x018896 06:8886: 5A        .byte $40 + $00 + con_obj_id_1A   ; 06 
- D 0 - I - 0x018897 06:8887: 3E        .byte $00 + $00 + con_obj_id_3E   ; 07 
- D 0 - I - 0x018898 06:8888: 3E        .byte $00 + $00 + con_obj_id_3E   ; 08 
- D 0 - I - 0x018899 06:8889: CA        .byte $40 + $80 + con_obj_id_4A - $40   ; 09 
- D 0 - I - 0x01889A 06:888A: 8A        .byte $00 + $80 + con_obj_id_4A - $40   ; 0A 
- D 0 - I - 0x01889B 06:888B: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 0B 
- D 0 - I - 0x01889C 06:888C: 29        .byte $00 + $00 + con_obj_id_29   ; 0C 
- D 0 - I - 0x01889D 06:888D: 29        .byte $00 + $00 + con_obj_id_29   ; 0D 
- D 0 - I - 0x01889E 06:888E: 25        .byte $00 + $00 + con_obj_id_25   ; 0E 
- D 0 - I - 0x01889F 06:888F: 3F        .byte $00 + $00 + con_obj_id_3F   ; 0F 
- D 0 - I - 0x0188A0 06:8890: 06        .byte $00 + $00 + con_obj_id_06   ; 10 
- D 0 - I - 0x0188A1 06:8891: 26        .byte $00 + $00 + con_obj_id_26   ; 11 
- D 0 - I - 0x0188A2 06:8892: 4A        .byte $40 + $00 + con_obj_id_0A   ; 12 
- D 0 - I - 0x0188A3 06:8893: 85        .byte $00 + $80 + con_obj_id_45 - $40   ; 13 
- D 0 - I - 0x0188A4 06:8894: 29        .byte $00 + $00 + con_obj_id_29   ; 14 
- D 0 - I - 0x0188A5 06:8895: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 15 
- D 0 - I - 0x0188A6 06:8896: 18        .byte $00 + $00 + con_obj_id_18   ; 16 
- D 0 - I - 0x0188A7 06:8897: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 17 
- D 0 - I - 0x0188A8 06:8898: 85        .byte $00 + $80 + con_obj_id_45 - $40   ; 18 
- D 0 - I - 0x0188A9 06:8899: 93        .byte $00 + $80 + con_obj_id_53 - $40   ; 19 
- D 0 - I - 0x0188AA 06:889A: 18        .byte $00 + $00 + con_obj_id_18   ; 1A 
- D 0 - I - 0x0188AB 06:889B: 83        .byte $00 + $80 + con_obj_id_43 - $40   ; 1B 
- D 0 - I - 0x0188AC 06:889C: 06        .byte $00 + $00 + con_obj_id_06   ; 1C 
- D 0 - I - 0x0188AD 06:889D: 9B        .byte $00 + $80 + con_obj_id_5B - $40   ; 1D 
- D 0 - I - 0x0188AE 06:889E: 0D        .byte $00 + $00 + con_obj_id_0D   ; 1E 
- D 0 - I - 0x0188AF 06:889F: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 1F 
- D 0 - I - 0x0188B0 06:88A0: 15        .byte $00 + $00 + con_obj_id_15   ; 20 
- D 0 - I - 0x0188B1 06:88A1: 12        .byte $00 + $00 + con_obj_id_12   ; 21 
- D 0 - I - 0x0188B2 06:88A2: DA        .byte $40 + $80 + con_obj_id_5A - $40   ; 22 
- D 0 - I - 0x0188B3 06:88A3: 15        .byte $00 + $00 + con_obj_id_15   ; 23 
- D 0 - I - 0x0188B4 06:88A4: 24        .byte $00 + $00 + con_obj_id_24   ; 24 
- D 0 - I - 0x0188B5 06:88A5: 07        .byte $00 + $00 + con_obj_id_07   ; 25 
- D 0 - I - 0x0188B6 06:88A6: 14        .byte $00 + $00 + con_obj_id_14   ; 26 
- D 0 - I - 0x0188B7 06:88A7: 95        .byte $00 + $80 + con_obj_id_55 - $40   ; 27 
- D 0 - I - 0x0188B8 06:88A8: 8D        .byte $00 + $80 + con_obj_id_4D - $40   ; 28 
- D 0 - I - 0x0188B9 06:88A9: 94        .byte $00 + $80 + con_obj_id_54 - $40   ; 29 
- D 0 - I - 0x0188BA 06:88AA: 1D        .byte $00 + $00 + con_obj_id_1D   ; 2A 
- D 0 - I - 0x0188BB 06:88AB: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 2B 
- D 0 - I - 0x0188BC 06:88AC: 80        .byte $00 + $80 + con_obj_id_40 - $40   ; 2C 
- D 0 - I - 0x0188BD 06:88AD: 93        .byte $00 + $80 + con_obj_id_53 - $40   ; 2D 
- D 0 - I - 0x0188BE 06:88AE: 1D        .byte $00 + $00 + con_obj_id_1D   ; 2E 
- D 0 - I - 0x0188BF 06:88AF: 00        .byte $00 + $00 + con_obj_id_null   ; 2F 
- D 0 - I - 0x0188C0 06:88B0: 98        .byte $00 + $80 + con_obj_id_58 - $40   ; 30 
- D 0 - I - 0x0188C1 06:88B1: 17        .byte $00 + $00 + con_obj_id_17   ; 31 
- D 0 - I - 0x0188C2 06:88B2: CA        .byte $40 + $80 + con_obj_id_4A - $40   ; 32 
- D 0 - I - 0x0188C3 06:88B3: 17        .byte $00 + $00 + con_obj_id_17   ; 33 
- D 0 - I - 0x0188C4 06:88B4: 1E        .byte $00 + $00 + con_obj_id_1E   ; 34 
- D 0 - I - 0x0188C5 06:88B5: 04        .byte $00 + $00 + con_obj_id_04   ; 35 
- D 0 - I - 0x0188C6 06:88B6: 29        .byte $00 + $00 + con_obj_id_29   ; 36 
- D 0 - I - 0x0188C7 06:88B7: 17        .byte $00 + $00 + con_obj_id_17   ; 37 
- D 0 - I - 0x0188C8 06:88B8: CA        .byte $40 + $80 + con_obj_id_4A - $40   ; 38 
- D 0 - I - 0x0188C9 06:88B9: 13        .byte $00 + $00 + con_obj_id_13   ; 39 
- D 0 - I - 0x0188CA 06:88BA: E2        .byte $40 + $80 + con_obj_id_62 - $40   ; 3A 
- D 0 - I - 0x0188CB 06:88BB: CA        .byte $40 + $80 + con_obj_id_4A - $40   ; 3B 
- D 0 - I - 0x0188CC 06:88BC: 97        .byte $00 + $80 + con_obj_id_57 - $40   ; 3C 
- D 0 - I - 0x0188CD 06:88BD: 29        .byte $00 + $00 + con_obj_id_29   ; 3D 
- D 0 - I - 0x0188CE 06:88BE: A5        .byte $00 + $80 + con_obj_id_65 - $40   ; 3E 
- D 0 - I - 0x0188CF 06:88BF: 80        .byte $00 + $80 + con_obj_id_40 - $40   ; 3F 
- D 0 - I - 0x0188D0 06:88C0: 15        .byte $00 + $00 + con_obj_id_15   ; 40 
- D 0 - I - 0x0188D1 06:88C1: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 41 
- D 0 - I - 0x0188D2 06:88C2: 62        .byte $40 + $00 + con_obj_id_22   ; 42 
- D 0 - I - 0x0188D3 06:88C3: 1F        .byte $00 + $00 + con_obj_id_1F   ; 43 
- D 0 - I - 0x0188D4 06:88C4: 02        .byte $00 + $00 + con_obj_id_02   ; 44 
- D 0 - I - 0x0188D5 06:88C5: 0D        .byte $00 + $00 + con_obj_id_0D   ; 45 
- D 0 - I - 0x0188D6 06:88C6: 12        .byte $00 + $00 + con_obj_id_12   ; 46 
- D 0 - I - 0x0188D7 06:88C7: 15        .byte $00 + $00 + con_obj_id_15   ; 47 
- D 0 - I - 0x0188D8 06:88C8: 81        .byte $00 + $80 + con_obj_id_41 - $40   ; 48 
- D 0 - I - 0x0188D9 06:88C9: 80        .byte $00 + $80 + con_obj_id_40 - $40   ; 49 
- D 0 - I - 0x0188DA 06:88CA: 0F        .byte $00 + $00 + con_obj_id_0F   ; 4A 
- D 0 - I - 0x0188DB 06:88CB: 08        .byte $00 + $00 + con_obj_id_08   ; 4B 
- D 0 - I - 0x0188DC 06:88CC: 80        .byte $00 + $80 + con_obj_id_40 - $40   ; 4C 
- D 0 - I - 0x0188DD 06:88CD: 25        .byte $00 + $00 + con_obj_id_25   ; 4D 
- D 0 - I - 0x0188DE 06:88CE: 02        .byte $00 + $00 + con_obj_id_02   ; 4E 
- D 0 - I - 0x0188DF 06:88CF: 24        .byte $00 + $00 + con_obj_id_24   ; 4F 
- D 0 - I - 0x0188E0 06:88D0: 11        .byte $00 + $00 + con_obj_id_11   ; 50 
- D 0 - I - 0x0188E1 06:88D1: 03        .byte $00 + $00 + con_obj_id_03   ; 51 
- D 0 - I - 0x0188E2 06:88D2: 1E        .byte $00 + $00 + con_obj_id_1E   ; 52 
- D 0 - I - 0x0188E3 06:88D3: 02        .byte $00 + $00 + con_obj_id_02   ; 53 
- D 0 - I - 0x0188E4 06:88D4: 03        .byte $00 + $00 + con_obj_id_03   ; 54 
- D 0 - I - 0x0188E5 06:88D5: 13        .byte $00 + $00 + con_obj_id_13   ; 55 
- D 0 - I - 0x0188E6 06:88D6: 00        .byte $00 + $00 + con_obj_id_null   ; 56 
- D 0 - I - 0x0188E7 06:88D7: 17        .byte $00 + $00 + con_obj_id_17   ; 57 
- D 0 - I - 0x0188E8 06:88D8: 24        .byte $00 + $00 + con_obj_id_24   ; 58 
- D 0 - I - 0x0188E9 06:88D9: 1D        .byte $00 + $00 + con_obj_id_1D   ; 59 
- D 0 - I - 0x0188EA 06:88DA: 80        .byte $00 + $80 + con_obj_id_40 - $40   ; 5A 
- D 0 - I - 0x0188EB 06:88DB: 00        .byte $00 + $00 + con_obj_id_null   ; 5B 
- D 0 - I - 0x0188EC 06:88DC: 1F        .byte $00 + $00 + con_obj_id_1F   ; 5C 
- D 0 - I - 0x0188ED 06:88DD: 9E        .byte $00 + $80 + con_obj_id_5E - $40   ; 5D 
- D 0 - I - 0x0188EE 06:88DE: 1F        .byte $00 + $00 + con_obj_id_1F   ; 5E 
- D 0 - I - 0x0188EF 06:88DF: 03        .byte $00 + $00 + con_obj_id_03   ; 5F 
- D 0 - I - 0x0188F0 06:88E0: 3F        .byte $00 + $00 + con_obj_id_3F   ; 60 
- D 0 - I - 0x0188F1 06:88E1: 02        .byte $00 + $00 + con_obj_id_02   ; 61 
- D 0 - I - 0x0188F2 06:88E2: 0C        .byte $00 + $00 + con_obj_id_0C   ; 62 
- D 0 - I - 0x0188F3 06:88E3: 1E        .byte $00 + $00 + con_obj_id_1E   ; 63 
- D 0 - I - 0x0188F4 06:88E4: 5A        .byte $40 + $00 + con_obj_id_1A   ; 64 
- D 0 - I - 0x0188F5 06:88E5: 02        .byte $00 + $00 + con_obj_id_02   ; 65 
- D 0 - I - 0x0188F6 06:88E6: 18        .byte $00 + $00 + con_obj_id_18   ; 66 
- D 0 - I - 0x0188F7 06:88E7: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 67 
- D 0 - I - 0x0188F8 06:88E8: 1D        .byte $00 + $00 + con_obj_id_1D   ; 68 
- D 0 - I - 0x0188F9 06:88E9: 1B        .byte $00 + $00 + con_obj_id_1B   ; 69 
- D 0 - I - 0x0188FA 06:88EA: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 6A 
- D 0 - I - 0x0188FB 06:88EB: 11        .byte $00 + $00 + con_obj_id_11   ; 6B 
- D 0 - I - 0x0188FC 06:88EC: 00        .byte $00 + $00 + con_obj_id_null   ; 6C 
- D 0 - I - 0x0188FD 06:88ED: 03        .byte $00 + $00 + con_obj_id_03   ; 6D 
- D 0 - I - 0x0188FE 06:88EE: 0D        .byte $00 + $00 + con_obj_id_0D   ; 6E 
- D 0 - I - 0x0188FF 06:88EF: 1E        .byte $00 + $00 + con_obj_id_1E   ; 6F 
- D 0 - I - 0x018900 06:88F0: 00        .byte $00 + $00 + con_obj_id_null   ; 70 
- D 0 - I - 0x018901 06:88F1: 21        .byte $00 + $00 + con_obj_id_21   ; 71 
- D 0 - I - 0x018902 06:88F2: 00        .byte $00 + $00 + con_obj_id_null   ; 72 
- D 0 - I - 0x018903 06:88F3: 21        .byte $00 + $00 + con_obj_id_21   ; 73 
- D 0 - I - 0x018904 06:88F4: 1D        .byte $00 + $00 + con_obj_id_1D   ; 74 
- D 0 - I - 0x018905 06:88F5: 3F        .byte $00 + $00 + con_obj_id_3F   ; 75 
- D 0 - I - 0x018906 06:88F6: 21        .byte $00 + $00 + con_obj_id_21   ; 76 
- D 0 - I - 0x018907 06:88F7: 1D        .byte $00 + $00 + con_obj_id_1D   ; 77 
- D 0 - I - 0x018908 06:88F8: 1F        .byte $00 + $00 + con_obj_id_1F   ; 78 
- D 0 - I - 0x018909 06:88F9: 21        .byte $00 + $00 + con_obj_id_21   ; 79 
- D 0 - I - 0x01890A 06:88FA: 03        .byte $00 + $00 + con_obj_id_03   ; 7A 
- D 0 - I - 0x01890B 06:88FB: 03        .byte $00 + $00 + con_obj_id_03   ; 7B 
- D 0 - I - 0x01890C 06:88FC: 21        .byte $00 + $00 + con_obj_id_21   ; 7C 
- D 0 - I - 0x01890D 06:88FD: 21        .byte $00 + $00 + con_obj_id_21   ; 7D 
- D 0 - I - 0x01890E 06:88FE: 00        .byte $00 + $00 + con_obj_id_null   ; 7E 
- D 0 - I - 0x01890F 06:88FF: 3F        .byte $00 + $00 + con_obj_id_3F   ; 7F 

- D 0 - I - 0x018910 06:8900: 03        .byte $03   ; 00 
- D 0 - I - 0x018911 06:8901: 99        .byte $99   ; 01 
- D 0 - I - 0x018912 06:8902: 83        .byte $83   ; 02 
- D 0 - I - 0x018913 06:8903: 1B        .byte $1B   ; 03 
- D 0 - I - 0x018914 06:8904: 05        .byte $05   ; 04 
- D 0 - I - 0x018915 06:8905: 03        .byte $03   ; 05 
- D 0 - I - 0x018916 06:8906: 03        .byte $03   ; 06 
- D 0 - I - 0x018917 06:8907: 03        .byte $03   ; 07 
- D 0 - I - 0x018918 06:8908: 03        .byte $03   ; 08 
- D 0 - I - 0x018919 06:8909: 03        .byte $03   ; 09 
- D 0 - I - 0x01891A 06:890A: 03        .byte $03   ; 0A 
- D 0 - I - 0x01891B 06:890B: 03        .byte $03   ; 0B 
- D 0 - I - 0x01891C 06:890C: 1B        .byte $1B   ; 0C 
- D 0 - I - 0x01891D 06:890D: 1B        .byte $1B   ; 0D 
- D 0 - I - 0x01891E 06:890E: 1A        .byte $1A   ; 0E 
- D 0 - I - 0x01891F 06:890F: 0C        .byte $0C   ; 0F 
- D 0 - I - 0x018920 06:8910: 03        .byte $03   ; 10 
- D 0 - I - 0x018921 06:8911: 03        .byte $03   ; 11 
- D 0 - I - 0x018922 06:8912: 23        .byte $23   ; 12 
- D 0 - I - 0x018923 06:8913: 1A        .byte $1A   ; 13 
- D 0 - I - 0x018924 06:8914: 1B        .byte $1B   ; 14 
- D 0 - I - 0x018925 06:8915: 03        .byte $03   ; 15 
- D 0 - I - 0x018926 06:8916: 19        .byte $19   ; 16 
- D 0 - I - 0x018927 06:8917: 03        .byte $03   ; 17 
- D 0 - I - 0x018928 06:8918: 03        .byte $03   ; 18 
- D 0 - I - 0x018929 06:8919: 17        .byte $17   ; 19 
- D 0 - I - 0x01892A 06:891A: 99        .byte $99   ; 1A 
- D 0 - I - 0x01892B 06:891B: 43        .byte $43   ; 1B 
- D 0 - I - 0x01892C 06:891C: 1A        .byte $1A   ; 1C 
- D 0 - I - 0x01892D 06:891D: 43        .byte $43   ; 1D 
- D 0 - I - 0x01892E 06:891E: 40        .byte $40   ; 1E 
- D 0 - I - 0x01892F 06:891F: 03        .byte $03   ; 1F 
- D 0 - I - 0x018930 06:8920: 03        .byte $03   ; 20 
- D 0 - I - 0x018931 06:8921: 97        .byte $97   ; 21 
- D 0 - I - 0x018932 06:8922: 03        .byte $03   ; 22 
- D 0 - I - 0x018933 06:8923: 19        .byte $19   ; 23 
- D 0 - I - 0x018934 06:8924: 1A        .byte $1A   ; 24 
- D 0 - I - 0x018935 06:8925: 63        .byte $63   ; 25 
- D 0 - I - 0x018936 06:8926: 19        .byte $19   ; 26 
- D 0 - I - 0x018937 06:8927: 99        .byte $99   ; 27 
- D 0 - I - 0x018938 06:8928: 0F        .byte $0F   ; 28 
- D 0 - I - 0x018939 06:8929: 99        .byte $99   ; 29 
- D 0 - I - 0x01893A 06:892A: 19        .byte $19   ; 2A 
- D 0 - I - 0x01893B 06:892B: 03        .byte $03   ; 2B 
- D 0 - I - 0x01893C 06:892C: 43        .byte $43   ; 2C 
- D 0 - I - 0x01893D 06:892D: 99        .byte $99   ; 2D 
- D 0 - I - 0x01893E 06:892E: 03        .byte $03   ; 2E 
- D 0 - I - 0x01893F 06:892F: 0F        .byte $0F   ; 2F 
- D 0 - I - 0x018940 06:8930: 83        .byte $83   ; 30 
- D 0 - I - 0x018941 06:8931: 03        .byte $03   ; 31 
- D 0 - I - 0x018942 06:8932: 03        .byte $03   ; 32 
- D 0 - I - 0x018943 06:8933: 19        .byte $19   ; 33 
- D 0 - I - 0x018944 06:8934: 63        .byte $63   ; 34 
- D 0 - I - 0x018945 06:8935: 1A        .byte $1A   ; 35 
- D 0 - I - 0x018946 06:8936: 1B        .byte $1B   ; 36 
- D 0 - I - 0x018947 06:8937: 96        .byte $96   ; 37 
- D 0 - I - 0x018948 06:8938: 03        .byte $03   ; 38 
- D 0 - I - 0x018949 06:8939: 83        .byte $83   ; 39 
- D 0 - I - 0x01894A 06:893A: 03        .byte $03   ; 3A 
- D 0 - I - 0x01894B 06:893B: 03        .byte $03   ; 3B 
- D 0 - I - 0x01894C 06:893C: 80        .byte $80   ; 3C 
- D 0 - I - 0x01894D 06:893D: 1B        .byte $1B   ; 3D 
- D 0 - I - 0x01894E 06:893E: 19        .byte $19   ; 3E 
- D 0 - I - 0x01894F 06:893F: 00        .byte $00   ; 3F 
- D 0 - I - 0x018950 06:8940: 99        .byte $99   ; 40 
- D 0 - I - 0x018951 06:8941: 03        .byte $03   ; 41 
- D 0 - I - 0x018952 06:8942: 03        .byte $03   ; 42 
- D 0 - I - 0x018953 06:8943: 17        .byte $17   ; 43 
- D 0 - I - 0x018954 06:8944: 1D        .byte $1D   ; 44 
- D 0 - I - 0x018955 06:8945: 39        .byte $39   ; 45 
- D 0 - I - 0x018956 06:8946: 97        .byte $97   ; 46 
- D 0 - I - 0x018957 06:8947: 19        .byte $19   ; 47 
- D 0 - I - 0x018958 06:8948: 03        .byte $03   ; 48 
- D 0 - I - 0x018959 06:8949: 19        .byte $19   ; 49 
- D 0 - I - 0x01895A 06:894A: 00        .byte $00   ; 4A 
- D 0 - I - 0x01895B 06:894B: 19        .byte $19   ; 4B 
- D 0 - I - 0x01895C 06:894C: 77        .byte $77   ; 4C 
- D 0 - I - 0x01895D 06:894D: 1A        .byte $1A   ; 4D 
- D 0 - I - 0x01895E 06:894E: 19        .byte $19   ; 4E 
- D 0 - I - 0x01895F 06:894F: 1E        .byte $1E   ; 4F 
- D 0 - I - 0x018960 06:8950: 83        .byte $83   ; 50 
- D 0 - I - 0x018961 06:8951: 19        .byte $19   ; 51 
- D 0 - I - 0x018962 06:8952: 03        .byte $03   ; 52 
- D 0 - I - 0x018963 06:8953: 19        .byte $19   ; 53 
- D 0 - I - 0x018964 06:8954: 16        .byte $16   ; 54 
- D 0 - I - 0x018965 06:8955: 19        .byte $19   ; 55 
- D 0 - I - 0x018966 06:8956: 00        .byte $00   ; 56 
- D 0 - I - 0x018967 06:8957: 8F        .byte $8F   ; 57 
- D 0 - I - 0x018968 06:8958: 19        .byte $19   ; 58 
- D 0 - I - 0x018969 06:8959: 03        .byte $03   ; 59 
- D 0 - I - 0x01896A 06:895A: 16        .byte $16   ; 5A 
- D 0 - I - 0x01896B 06:895B: 00        .byte $00   ; 5B 
- D 0 - I - 0x01896C 06:895C: 03        .byte $03   ; 5C 
- D 0 - I - 0x01896D 06:895D: 6F        .byte $6F   ; 5D 
- D 0 - I - 0x01896E 06:895E: 03        .byte $03   ; 5E 
- D 0 - I - 0x01896F 06:895F: 17        .byte $17   ; 5F 
- D 0 - I - 0x018970 06:8960: 0D        .byte $0D   ; 60 
- D 0 - I - 0x018971 06:8961: 03        .byte $03   ; 61 
- D 0 - I - 0x018972 06:8962: 96        .byte $96   ; 62 
- D 0 - I - 0x018973 06:8963: 03        .byte $03   ; 63 
- D 0 - I - 0x018974 06:8964: 03        .byte $03   ; 64 
- D 0 - I - 0x018975 06:8965: 00        .byte $00   ; 65 
- D 0 - I - 0x018976 06:8966: 99        .byte $99   ; 66 
- D 0 - I - 0x018977 06:8967: 03        .byte $03   ; 67 
- D 0 - I - 0x018978 06:8968: 16        .byte $16   ; 68 
- D 0 - I - 0x018979 06:8969: 00        .byte $00   ; 69 
- D 0 - I - 0x01897A 06:896A: 03        .byte $03   ; 6A 
- D 0 - I - 0x01897B 06:896B: 19        .byte $19   ; 6B 
- D 0 - I - 0x01897C 06:896C: 19        .byte $19   ; 6C 
- D 0 - I - 0x01897D 06:896D: 03        .byte $03   ; 6D 
- D 0 - I - 0x01897E 06:896E: 03        .byte $03   ; 6E 
- D 0 - I - 0x01897F 06:896F: 16        .byte $16   ; 6F 
- D 0 - I - 0x018980 06:8970: 19        .byte $19   ; 70 
- D 0 - I - 0x018981 06:8971: 03        .byte $03   ; 71 
- D 0 - I - 0x018982 06:8972: 19        .byte $19   ; 72 
- D 0 - I - 0x018983 06:8973: 03        .byte $03   ; 73 
- D 0 - I - 0x018984 06:8974: 19        .byte $19   ; 74 
- D 0 - I - 0x018985 06:8975: 10        .byte $10   ; 75 
- D 0 - I - 0x018986 06:8976: 03        .byte $03   ; 76 
- D 0 - I - 0x018987 06:8977: 19        .byte $19   ; 77 
- D 0 - I - 0x018988 06:8978: 03        .byte $03   ; 78 
- D 0 - I - 0x018989 06:8979: 03        .byte $03   ; 79 
- D 0 - I - 0x01898A 06:897A: 99        .byte $99   ; 7A 
- D 0 - I - 0x01898B 06:897B: 19        .byte $19   ; 7B 
- D 0 - I - 0x01898C 06:897C: 03        .byte $03   ; 7C 
- D 0 - I - 0x01898D 06:897D: 03        .byte $03   ; 7D 
- D 0 - I - 0x01898E 06:897E: 19        .byte $19   ; 7E 
- D 0 - I - 0x01898F 06:897F: 0A        .byte $0A   ; 7F 

- D 0 - I - 0x018990 06:8980: 00        .byte $00   ; 00 
- D 0 - I - 0x018991 06:8981: 20        .byte $20   ; 01 
- D 0 - I - 0x018992 06:8982: 00        .byte $00   ; 02 
- D 0 - I - 0x018993 06:8983: 30        .byte $30   ; 03 
- D 0 - I - 0x018994 06:8984: 30        .byte $30   ; 04 
- D 0 - I - 0x018995 06:8985: 05        .byte $05   ; 05 
- D 0 - I - 0x018996 06:8986: 00        .byte $00   ; 06 
- D 0 - I - 0x018997 06:8987: 00        .byte $00   ; 07 
- D 0 - I - 0x018998 06:8988: 00        .byte $00   ; 08 
- D 0 - I - 0x018999 06:8989: 05        .byte $05   ; 09 
- D 0 - I - 0x01899A 06:898A: 01        .byte $01   ; 0A 
- D 0 - I - 0x01899B 06:898B: 00        .byte $00   ; 0B 
- D 0 - I - 0x01899C 06:898C: 00        .byte $00   ; 0C 
- D 0 - I - 0x01899D 06:898D: 00        .byte $00   ; 0D 
- D 0 - I - 0x01899E 06:898E: 07        .byte $07   ; 0E 
- D 0 - I - 0x01899F 06:898F: 00        .byte $00   ; 0F 
- D 0 - I - 0x0189A0 06:8990: 01        .byte $01   ; 10 
- D 0 - I - 0x0189A1 06:8991: 00        .byte $00   ; 11 
- D 0 - I - 0x0189A2 06:8992: 04        .byte $04   ; 12 
- D 0 - I - 0x0189A3 06:8993: 07        .byte $07   ; 13 
- D 0 - I - 0x0189A4 06:8994: 30        .byte $30   ; 14 
- D 0 - I - 0x0189A5 06:8995: 00        .byte $00   ; 15 
- D 0 - I - 0x0189A6 06:8996: 20        .byte $20   ; 16 
- D 0 - I - 0x0189A7 06:8997: 00        .byte $00   ; 17 
- D 0 - I - 0x0189A8 06:8998: 01        .byte $01   ; 18 
- D 0 - I - 0x0189A9 06:8999: 07        .byte $07   ; 19 
- D 0 - I - 0x0189AA 06:899A: 00        .byte $00   ; 1A 
- D 0 - I - 0x0189AB 06:899B: 01        .byte $01   ; 1B 
- D 0 - I - 0x0189AC 06:899C: 07        .byte $07   ; 1C 
- D 0 - I - 0x0189AD 06:899D: 00        .byte $00   ; 1D 
- D 0 - I - 0x0189AE 06:899E: 17        .byte $17   ; 1E 
- D 0 - I - 0x0189AF 06:899F: 00        .byte $00   ; 1F 
- D 0 - I - 0x0189B0 06:89A0: 00        .byte $00   ; 20 
- D 0 - I - 0x0189B1 06:89A1: 00        .byte $00   ; 21 
- D 0 - I - 0x0189B2 06:89A2: 20        .byte $20   ; 22 
- D 0 - I - 0x0189B3 06:89A3: 37        .byte $37   ; 23 
- D 0 - I - 0x0189B4 06:89A4: 07        .byte $07   ; 24 
- D 0 - I - 0x0189B5 06:89A5: 00        .byte $00   ; 25 
- D 0 - I - 0x0189B6 06:89A6: 27        .byte $27   ; 26 
- D 0 - I - 0x0189B7 06:89A7: 20        .byte $20   ; 27 
- D 0 - I - 0x0189B8 06:89A8: 17        .byte $17   ; 28 
- D 0 - I - 0x0189B9 06:89A9: 00        .byte $00   ; 29 
- D 0 - I - 0x0189BA 06:89AA: 01        .byte $01   ; 2A 
- D 0 - I - 0x0189BB 06:89AB: 00        .byte $00   ; 2B 
- D 0 - I - 0x0189BC 06:89AC: 00        .byte $00   ; 2C 
- D 0 - I - 0x0189BD 06:89AD: 07        .byte $07   ; 2D 
- D 0 - I - 0x0189BE 06:89AE: 01        .byte $01   ; 2E 
- D 0 - I - 0x0189BF 06:89AF: 07        .byte $07   ; 2F 
- D 0 - I - 0x0189C0 06:89B0: 10        .byte $10   ; 30 
- D 0 - I - 0x0189C1 06:89B1: 01        .byte $01   ; 31 
- D 0 - I - 0x0189C2 06:89B2: 05        .byte $05   ; 32 
- D 0 - I - 0x0189C3 06:89B3: 20        .byte $20   ; 33 
- D 0 - I - 0x0189C4 06:89B4: 01        .byte $01   ; 34 
- D 0 - I - 0x0189C5 06:89B5: 07        .byte $07   ; 35 
- D 0 - I - 0x0189C6 06:89B6: 20        .byte $20   ; 36 
- D 0 - I - 0x0189C7 06:89B7: 27        .byte $27   ; 37 
- D 0 - I - 0x0189C8 06:89B8: 04        .byte $04   ; 38 
- D 0 - I - 0x0189C9 06:89B9: 01        .byte $01   ; 39 
- D 0 - I - 0x0189CA 06:89BA: 05        .byte $05   ; 3A 
- D 0 - I - 0x0189CB 06:89BB: 04        .byte $04   ; 3B 
- D 0 - I - 0x0189CC 06:89BC: 07        .byte $07   ; 3C 
- D 0 - I - 0x0189CD 06:89BD: 00        .byte $00   ; 3D 
- D 0 - I - 0x0189CE 06:89BE: 07        .byte $07   ; 3E 
- D 0 - I - 0x0189CF 06:89BF: 00        .byte $00   ; 3F 
- D 0 - I - 0x0189D0 06:89C0: 20        .byte $20   ; 40 
- D 0 - I - 0x0189D1 06:89C1: 00        .byte $00   ; 41 
- D 0 - I - 0x0189D2 06:89C2: 04        .byte $04   ; 42 
- D 0 - I - 0x0189D3 06:89C3: 00        .byte $00   ; 43 
- D 0 - I - 0x0189D4 06:89C4: 37        .byte $37   ; 44 
- D 0 - I - 0x0189D5 06:89C5: 10        .byte $10   ; 45 
- D 0 - I - 0x0189D6 06:89C6: 20        .byte $20   ; 46 
- D 0 - I - 0x0189D7 06:89C7: 27        .byte $27   ; 47 
- D 0 - I - 0x0189D8 06:89C8: 00        .byte $00   ; 48 
- D 0 - I - 0x0189D9 06:89C9: 00        .byte $00   ; 49 
- D 0 - I - 0x0189DA 06:89CA: 07        .byte $07   ; 4A 
- D 0 - I - 0x0189DB 06:89CB: 07        .byte $07   ; 4B 
- D 0 - I - 0x0189DC 06:89CC: 00        .byte $00   ; 4C 
- D 0 - I - 0x0189DD 06:89CD: 07        .byte $07   ; 4D 
- D 0 - I - 0x0189DE 06:89CE: 07        .byte $07   ; 4E 
- D 0 - I - 0x0189DF 06:89CF: 07        .byte $07   ; 4F 
- D 0 - I - 0x0189E0 06:89D0: 00        .byte $00   ; 50 
- D 0 - I - 0x0189E1 06:89D1: 10        .byte $10   ; 51 
- D 0 - I - 0x0189E2 06:89D2: 01        .byte $01   ; 52 
- D 0 - I - 0x0189E3 06:89D3: 37        .byte $37   ; 53 
- D 0 - I - 0x0189E4 06:89D4: 00        .byte $00   ; 54 
- D 0 - I - 0x0189E5 06:89D5: 27        .byte $27   ; 55 
- D 0 - I - 0x0189E6 06:89D6: 07        .byte $07   ; 56 
- D 0 - I - 0x0189E7 06:89D7: 27        .byte $27   ; 57 
- D 0 - I - 0x0189E8 06:89D8: 07        .byte $07   ; 58 
- D 0 - I - 0x0189E9 06:89D9: 01        .byte $01   ; 59 
- D 0 - I - 0x0189EA 06:89DA: 00        .byte $00   ; 5A 
- D 0 - I - 0x0189EB 06:89DB: 07        .byte $07   ; 5B 
- D 0 - I - 0x0189EC 06:89DC: 11        .byte $11   ; 5C 
- D 0 - I - 0x0189ED 06:89DD: 27        .byte $27   ; 5D 
- D 0 - I - 0x0189EE 06:89DE: 02        .byte $02   ; 5E 
- D 0 - I - 0x0189EF 06:89DF: 00        .byte $00   ; 5F 
- D 0 - I - 0x0189F0 06:89E0: 30        .byte $30   ; 60 
- D 0 - I - 0x0189F1 06:89E1: 00        .byte $00   ; 61 
- D 0 - I - 0x0189F2 06:89E2: 20        .byte $20   ; 62 
- D 0 - I - 0x0189F3 06:89E3: 00        .byte $00   ; 63 
- D 0 - I - 0x0189F4 06:89E4: 00        .byte $00   ; 64 
- D 0 - I - 0x0189F5 06:89E5: 10        .byte $10   ; 65 
- D 0 - I - 0x0189F6 06:89E6: 11        .byte $11   ; 66 
- D 0 - I - 0x0189F7 06:89E7: 00        .byte $00   ; 67 
- D 0 - I - 0x0189F8 06:89E8: 07        .byte $07   ; 68 
- D 0 - I - 0x0189F9 06:89E9: 07        .byte $07   ; 69 
- D 0 - I - 0x0189FA 06:89EA: 00        .byte $00   ; 6A 
- D 0 - I - 0x0189FB 06:89EB: 07        .byte $07   ; 6B 
- D 0 - I - 0x0189FC 06:89EC: 00        .byte $00   ; 6C 
- D 0 - I - 0x0189FD 06:89ED: 01        .byte $01   ; 6D 
- D 0 - I - 0x0189FE 06:89EE: 00        .byte $00   ; 6E 
- D 0 - I - 0x0189FF 06:89EF: 10        .byte $10   ; 6F 
- D 0 - I - 0x018A00 06:89F0: 17        .byte $17   ; 70 
- D 0 - I - 0x018A01 06:89F1: 00        .byte $00   ; 71 
- D 0 - I - 0x018A02 06:89F2: 17        .byte $17   ; 72 
- D 0 - I - 0x018A03 06:89F3: 00        .byte $00   ; 73 
- D 0 - I - 0x018A04 06:89F4: 00        .byte $00   ; 74 
- D 0 - I - 0x018A05 06:89F5: 00        .byte $00   ; 75 
- D 0 - I - 0x018A06 06:89F6: 00        .byte $00   ; 76 
- D 0 - I - 0x018A07 06:89F7: 27        .byte $27   ; 77 
- D 0 - I - 0x018A08 06:89F8: 02        .byte $02   ; 78 
- D 0 - I - 0x018A09 06:89F9: 00        .byte $00   ; 79 
- D 0 - I - 0x018A0A 06:89FA: 07        .byte $07   ; 7A 
- D 0 - I - 0x018A0B 06:89FB: 00        .byte $00   ; 7B 
- D 0 - I - 0x018A0C 06:89FC: 00        .byte $00   ; 7C 
- D 0 - I - 0x018A0D 06:89FD: 00        .byte $00   ; 7D 
- D 0 - I - 0x018A0E 06:89FE: 07        .byte $07   ; 7E 
- D 0 - I - 0x018A0F 06:89FF: 20        .byte $20   ; 7F 



_off009_8A00_07:
_off009_8A00_08:
_off009_8A00_09:
- D 0 - I - 0x018A10 06:8A00: 07        .byte $07   ; 00 
- D 0 - I - 0x018A11 06:8A01: 3E        .byte $3E   ; 01 
- D 0 - I - 0x018A12 06:8A02: 22        .byte $22   ; 02 
- D 0 - I - 0x018A13 06:8A03: 26        .byte $26   ; 03 
- D 0 - I - 0x018A14 06:8A04: 26        .byte $26   ; 04 
- D 0 - I - 0x018A15 06:8A05: 26        .byte $26   ; 05 
- D 0 - I - 0x018A16 06:8A06: 36        .byte $36   ; 06 
- D 0 - I - 0x018A17 06:8A07: 32        .byte $32   ; 07 
- D 0 - I - 0x018A18 06:8A08: 32        .byte $32   ; 08 
- D 0 - I - 0x018A19 06:8A09: 3E        .byte $3E   ; 09 
- D 0 - I - 0x018A1A 06:8A0A: 26        .byte $26   ; 0A 
- D 0 - I - 0x018A1B 06:8A0B: 36        .byte $36   ; 0B 
- D 0 - I - 0x018A1C 06:8A0C: 22        .byte $22   ; 0C 
- D 0 - I - 0x018A1D 06:8A0D: 26        .byte $26   ; 0D 
- D 0 - I - 0x018A1E 06:8A0E: 3E        .byte $3E   ; 0E 
- D 0 - I - 0x018A1F 06:8A0F: 1F        .byte $1F   ; 0F 
- D 0 - I - 0x018A20 06:8A10: 32        .byte $32   ; 10 
- D 0 - I - 0x018A21 06:8A11: 1E        .byte $1E   ; 11 
- D 0 - I - 0x018A22 06:8A12: F6        .byte $F6   ; 12 
- D 0 - I - 0x018A23 06:8A13: 36        .byte $36   ; 13 
- D 0 - I - 0x018A24 06:8A14: 22        .byte $22   ; 14 
- D 0 - I - 0x018A25 06:8A15: 32        .byte $32   ; 15 
- D 0 - I - 0x018A26 06:8A16: A2        .byte $A2   ; 16 
- D 0 - I - 0x018A27 06:8A17: 92        .byte $92   ; 17 
- D 0 - I - 0x018A28 06:8A18: 9E        .byte $9E   ; 18 
- D 0 - I - 0x018A29 06:8A19: E6        .byte $E6   ; 19 
- D 0 - I - 0x018A2A 06:8A1A: 26        .byte $26   ; 1A 
- D 0 - I - 0x018A2B 06:8A1B: A6        .byte $A6   ; 1B 
- D 0 - I - 0x018A2C 06:8A1C: E6        .byte $E6   ; 1C 
- D 0 - I - 0x018A2D 06:8A1D: 22        .byte $22   ; 1D 
- D 0 - I - 0x018A2E 06:8A1E: F6        .byte $F6   ; 1E 
- D 0 - I - 0x018A2F 06:8A1F: 26        .byte $26   ; 1F 
- D 0 - I - 0x018A30 06:8A20: 86        .byte $86   ; 20 
- D 0 - I - 0x018A31 06:8A21: 1E        .byte $1E   ; 21 
- D 0 - I - 0x018A32 06:8A22: A6        .byte $A6   ; 22 
- D 0 - I - 0x018A33 06:8A23: B6        .byte $B6   ; 23 
- D 0 - I - 0x018A34 06:8A24: 02        .byte $02   ; 24 
- D 0 - I - 0x018A35 06:8A25: 92        .byte $92   ; 25 
- D 0 - I - 0x018A36 06:8A26: 16        .byte $16   ; 26 
- D 0 - I - 0x018A37 06:8A27: 92        .byte $92   ; 27 
- D 0 - I - 0x018A38 06:8A28: 16        .byte $16   ; 28 
- D 0 - I - 0x018A39 06:8A29: 26        .byte $26   ; 29 
- D 0 - I - 0x018A3A 06:8A2A: 26        .byte $26   ; 2A 
- D 0 - I - 0x018A3B 06:8A2B: 26        .byte $26   ; 2B 
- D 0 - I - 0x018A3C 06:8A2C: 22        .byte $22   ; 2C 
- D 0 - I - 0x018A3D 06:8A2D: 06        .byte $06   ; 2D 
- D 0 - I - 0x018A3E 06:8A2E: B2        .byte $B2   ; 2E 
- D 0 - I - 0x018A3F 06:8A2F: 4C        .byte $4C   ; 2F 
- D 0 - I - 0x018A40 06:8A30: 36        .byte $36   ; 30 
- D 0 - I - 0x018A41 06:8A31: 1E        .byte $1E   ; 31 
- D 0 - I - 0x018A42 06:8A32: 3E        .byte $3E   ; 32 
- D 0 - I - 0x018A43 06:8A33: A6        .byte $A6   ; 33 
- D 0 - I - 0x018A44 06:8A34: 06        .byte $06   ; 34 
- D 0 - I - 0x018A45 06:8A35: 86        .byte $86   ; 35 
- D 0 - I - 0x018A46 06:8A36: A6        .byte $A6   ; 36 
- D 0 - I - 0x018A47 06:8A37: 82        .byte $82   ; 37 
- D 0 - I - 0x018A48 06:8A38: A6        .byte $A6   ; 38 
- D 0 - I - 0x018A49 06:8A39: 22        .byte $22   ; 39 
- D 0 - I - 0x018A4A 06:8A3A: 26        .byte $26   ; 3A 
- D 0 - I - 0x018A4B 06:8A3B: 22        .byte $22   ; 3B 
- D 0 - I - 0x018A4C 06:8A3C: F2        .byte $F2   ; 3C 
- D 0 - I - 0x018A4D 06:8A3D: 22        .byte $22   ; 3D 
- D 0 - I - 0x018A4E 06:8A3E: 96        .byte $96   ; 3E 
- D 0 - I - 0x018A4F 06:8A3F: 26        .byte $26   ; 3F 
- D 0 - I - 0x018A50 06:8A40: B6        .byte $B6   ; 40 
- D 0 - I - 0x018A51 06:8A41: 1E        .byte $1E   ; 41 
- D 0 - I - 0x018A52 06:8A42: FE        .byte $FE   ; 42 
- D 0 - I - 0x018A53 06:8A43: 32        .byte $32   ; 43 
- D 0 - I - 0x018A54 06:8A44: 22        .byte $22   ; 44 
- D 0 - I - 0x018A55 06:8A45: 32        .byte $32   ; 45 
- D 0 - I - 0x018A56 06:8A46: 22        .byte $22   ; 46 
- D 0 - I - 0x018A57 06:8A47: 02        .byte $02   ; 47 
- D 0 - I - 0x018A58 06:8A48: 36        .byte $36   ; 48 
- D 0 - I - 0x018A59 06:8A49: E2        .byte $E2   ; 49 
- D 0 - I - 0x018A5A 06:8A4A: 1A        .byte $1A   ; 4A 
- D 0 - I - 0x018A5B 06:8A4B: 06        .byte $06   ; 4B 
- D 0 - I - 0x018A5C 06:8A4C: 86        .byte $86   ; 4C 
- D 0 - I - 0x018A5D 06:8A4D: E2        .byte $E2   ; 4D 
- D 0 - I - 0x018A5E 06:8A4E: A2        .byte $A2   ; 4E 
- D 0 - I - 0x018A5F 06:8A4F: 10        .byte $10   ; 4F 
- D 0 - I - 0x018A60 06:8A50: A6        .byte $A6   ; 50 
- D 0 - I - 0x018A61 06:8A51: 02        .byte $02   ; 51 
- D 0 - I - 0x018A62 06:8A52: E6        .byte $E6   ; 52 
- D 0 - I - 0x018A63 06:8A53: 96        .byte $96   ; 53 
- D 0 - I - 0x018A64 06:8A54: 02        .byte $02   ; 54 
- D 0 - I - 0x018A65 06:8A55: 92        .byte $92   ; 55 
- D 0 - I - 0x018A66 06:8A56: 02        .byte $02   ; 56 
- D 0 - I - 0x018A67 06:8A57: 06        .byte $06   ; 57 
- D 0 - I - 0x018A68 06:8A58: A2        .byte $A2   ; 58 
- D 0 - I - 0x018A69 06:8A59: 12        .byte $12   ; 59 
- D 0 - I - 0x018A6A 06:8A5A: 32        .byte $32   ; 5A 
- D 0 - I - 0x018A6B 06:8A5B: 22        .byte $22   ; 5B 
- D 0 - I - 0x018A6C 06:8A5C: 26        .byte $26   ; 5C 
- D 0 - I - 0x018A6D 06:8A5D: 06        .byte $06   ; 5D 
- D 0 - I - 0x018A6E 06:8A5E: F2        .byte $F2   ; 5E 
- D 0 - I - 0x018A6F 06:8A5F: 26        .byte $26   ; 5F 
- D 0 - I - 0x018A70 06:8A60: 14        .byte $14   ; 60 
- D 0 - I - 0x018A71 06:8A61: 02        .byte $02   ; 61 
- D 0 - I - 0x018A72 06:8A62: 26        .byte $26   ; 62 
- D 0 - I - 0x018A73 06:8A63: B6        .byte $B6   ; 63 
- D 0 - I - 0x018A74 06:8A64: 06        .byte $06   ; 64 
- D 0 - I - 0x018A75 06:8A65: 86        .byte $86   ; 65 
- D 0 - I - 0x018A76 06:8A66: E2        .byte $E2   ; 66 
- D 0 - I - 0x018A77 06:8A67: 30        .byte $30   ; 67 
- D 0 - I - 0x018A78 06:8A68: 02        .byte $02   ; 68 
- D 0 - I - 0x018A79 06:8A69: 82        .byte $82   ; 69 
- D 0 - I - 0x018A7A 06:8A6A: 82        .byte $82   ; 6A 
- D 0 - I - 0x018A7B 06:8A6B: E6        .byte $E6   ; 6B 
- D 0 - I - 0x018A7C 06:8A6C: 26        .byte $26   ; 6C 
- D 0 - I - 0x018A7D 06:8A6D: 26        .byte $26   ; 6D 
- D 0 - I - 0x018A7E 06:8A6E: 82        .byte $82   ; 6E 
- D 0 - I - 0x018A7F 06:8A6F: 7C        .byte $7C   ; 6F 
- D 0 - I - 0x018A80 06:8A70: 63        .byte $63   ; 70 
- D 0 - I - 0x018A81 06:8A71: 06        .byte $06   ; 71 
- D 0 - I - 0x018A82 06:8A72: 71        .byte $71   ; 72 
- D 0 - I - 0x018A83 06:8A73: A6        .byte $A6   ; 73 
- D 0 - I - 0x018A84 06:8A74: 26        .byte $26   ; 74 
- D 0 - I - 0x018A85 06:8A75: 20        .byte $20   ; 75 
- D 0 - I - 0x018A86 06:8A76: 02        .byte $02   ; 76 
- D 0 - I - 0x018A87 06:8A77: 52        .byte $52   ; 77 
- D 0 - I - 0x018A88 06:8A78: 06        .byte $06   ; 78 
- D 0 - I - 0x018A89 06:8A79: 02        .byte $02   ; 79 
- D 0 - I - 0x018A8A 06:8A7A: 06        .byte $06   ; 7A 
- D 0 - I - 0x018A8B 06:8A7B: 29        .byte $29   ; 7B 
- D 0 - I - 0x018A8C 06:8A7C: 26        .byte $26   ; 7C 
- D 0 - I - 0x018A8D 06:8A7D: 26        .byte $26   ; 7D 
- D 0 - I - 0x018A8E 06:8A7E: 02        .byte $02   ; 7E 
- D 0 - I - 0x018A8F 06:8A7F: 26        .byte $26   ; 7F 

- D 0 - I - 0x018A90 06:8A80: 07        .byte $07   ; 00 
- D 0 - I - 0x018A91 06:8A81: 37        .byte $37   ; 01 
- D 0 - I - 0x018A92 06:8A82: A4        .byte $A4   ; 02 
- D 0 - I - 0x018A93 06:8A83: 32        .byte $32   ; 03 
- D 0 - I - 0x018A94 06:8A84: 86        .byte $86   ; 04 
- D 0 - I - 0x018A95 06:8A85: 32        .byte $32   ; 05 
- D 0 - I - 0x018A96 06:8A86: 84        .byte $84   ; 06 
- D 0 - I - 0x018A97 06:8A87: 26        .byte $26   ; 07 
- D 0 - I - 0x018A98 06:8A88: 32        .byte $32   ; 08 
- D 0 - I - 0x018A99 06:8A89: 9E        .byte $9E   ; 09 
- D 0 - I - 0x018A9A 06:8A8A: E6        .byte $E6   ; 0A 
- D 0 - I - 0x018A9B 06:8A8B: 25        .byte $25   ; 0B 
- D 0 - I - 0x018A9C 06:8A8C: 33        .byte $33   ; 0C 
- D 0 - I - 0x018A9D 06:8A8D: 86        .byte $86   ; 0D 
- D 0 - I - 0x018A9E 06:8A8E: 26        .byte $26   ; 0E 
- D 0 - I - 0x018A9F 06:8A8F: 1F        .byte $1F   ; 0F 
- D 0 - I - 0x018AA0 06:8A90: 26        .byte $26   ; 10 
- D 0 - I - 0x018AA1 06:8A91: 26        .byte $26   ; 11 
- D 0 - I - 0x018AA2 06:8A92: 36        .byte $36   ; 12 
- D 0 - I - 0x018AA3 06:8A93: A7        .byte $A7   ; 13 
- D 0 - I - 0x018AA4 06:8A94: 36        .byte $36   ; 14 
- D 0 - I - 0x018AA5 06:8A95: A3        .byte $A3   ; 15 
- D 0 - I - 0x018AA6 06:8A96: 06        .byte $06   ; 16 
- D 0 - I - 0x018AA7 06:8A97: 26        .byte $26   ; 17 
- D 0 - I - 0x018AA8 06:8A98: 37        .byte $37   ; 18 
- D 0 - I - 0x018AA9 06:8A99: B2        .byte $B2   ; 19 
- D 0 - I - 0x018AAA 06:8A9A: 92        .byte $92   ; 1A 
- D 0 - I - 0x018AAB 06:8A9B: 96        .byte $96   ; 1B 
- D 0 - I - 0x018AAC 06:8A9C: A6        .byte $A6   ; 1C 
- D 0 - I - 0x018AAD 06:8A9D: 32        .byte $32   ; 1D 
- D 0 - I - 0x018AAE 06:8A9E: 9F        .byte $9F   ; 1E 
- D 0 - I - 0x018AAF 06:8A9F: 06        .byte $06   ; 1F 
- D 0 - I - 0x018AB0 06:8AA0: 26        .byte $26   ; 20 
- D 0 - I - 0x018AB1 06:8AA1: 32        .byte $32   ; 21 
- D 0 - I - 0x018AB2 06:8AA2: 96        .byte $96   ; 22 
- D 0 - I - 0x018AB3 06:8AA3: B3        .byte $B3   ; 23 
- D 0 - I - 0x018AB4 06:8AA4: 87        .byte $87   ; 24 
- D 0 - I - 0x018AB5 06:8AA5: 36        .byte $36   ; 25 
- D 0 - I - 0x018AB6 06:8AA6: B2        .byte $B2   ; 26 
- D 0 - I - 0x018AB7 06:8AA7: 86        .byte $86   ; 27 
- D 0 - I - 0x018AB8 06:8AA8: 24        .byte $24   ; 28 
- D 0 - I - 0x018AB9 06:8AA9: 32        .byte $32   ; 29 
- D 0 - I - 0x018ABA 06:8AAA: 9E        .byte $9E   ; 2A 
- D 0 - I - 0x018ABB 06:8AAB: 06        .byte $06   ; 2B 
- D 0 - I - 0x018ABC 06:8AAC: 26        .byte $26   ; 2C 
- D 0 - I - 0x018ABD 06:8AAD: 32        .byte $32   ; 2D 
- D 0 - I - 0x018ABE 06:8AAE: 86        .byte $86   ; 2E 
- D 0 - I - 0x018ABF 06:8AAF: 3F        .byte $3F   ; 2F 
- D 0 - I - 0x018AC0 06:8AB0: 32        .byte $32   ; 30 
- D 0 - I - 0x018AC1 06:8AB1: 86        .byte $86   ; 31 
- D 0 - I - 0x018AC2 06:8AB2: 26        .byte $26   ; 32 
- D 0 - I - 0x018AC3 06:8AB3: 33        .byte $33   ; 33 
- D 0 - I - 0x018AC4 06:8AB4: 87        .byte $87   ; 34 
- D 0 - I - 0x018AC5 06:8AB5: 26        .byte $26   ; 35 
- D 0 - I - 0x018AC6 06:8AB6: 32        .byte $32   ; 36 
- D 0 - I - 0x018AC7 06:8AB7: 86        .byte $86   ; 37 
- D 0 - I - 0x018AC8 06:8AB8: 3E        .byte $3E   ; 38 
- D 0 - I - 0x018AC9 06:8AB9: 13        .byte $13   ; 39 
- D 0 - I - 0x018ACA 06:8ABA: 86        .byte $86   ; 3A 
- D 0 - I - 0x018ACB 06:8ABB: 30        .byte $30   ; 3B 
- D 0 - I - 0x018ACC 06:8ABC: 86        .byte $86   ; 3C 
- D 0 - I - 0x018ACD 06:8ABD: 24        .byte $24   ; 3D 
- D 0 - I - 0x018ACE 06:8ABE: 3F        .byte $3F   ; 3E 
- D 0 - I - 0x018ACF 06:8ABF: E6        .byte $E6   ; 3F 
- D 0 - I - 0x018AD0 06:8AC0: 27        .byte $27   ; 40 
- D 0 - I - 0x018AD1 06:8AC1: 27        .byte $27   ; 41 
- D 0 - I - 0x018AD2 06:8AC2: 27        .byte $27   ; 42 
- D 0 - I - 0x018AD3 06:8AC3: 24        .byte $24   ; 43 
- D 0 - I - 0x018AD4 06:8AC4: 22        .byte $22   ; 44 
- D 0 - I - 0x018AD5 06:8AC5: 02        .byte $02   ; 45 
- D 0 - I - 0x018AD6 06:8AC6: 06        .byte $06   ; 46 
- D 0 - I - 0x018AD7 06:8AC7: 26        .byte $26   ; 47 
- D 0 - I - 0x018AD8 06:8AC8: 24        .byte $24   ; 48 
- D 0 - I - 0x018AD9 06:8AC9: 27        .byte $27   ; 49 
- D 0 - I - 0x018ADA 06:8ACA: 1A        .byte $1A   ; 4A 
- D 0 - I - 0x018ADB 06:8ACB: 3F        .byte $3F   ; 4B 
- D 0 - I - 0x018ADC 06:8ACC: E6        .byte $E6   ; 4C 
- D 0 - I - 0x018ADD 06:8ACD: 36        .byte $36   ; 4D 
- D 0 - I - 0x018ADE 06:8ACE: A6        .byte $A6   ; 4E 
- D 0 - I - 0x018ADF 06:8ACF: 10        .byte $10   ; 4F 
- D 0 - I - 0x018AE0 06:8AD0: 3F        .byte $3F   ; 50 
- D 0 - I - 0x018AE1 06:8AD1: E6        .byte $E6   ; 51 
- D 0 - I - 0x018AE2 06:8AD2: 26        .byte $26   ; 52 
- D 0 - I - 0x018AE3 06:8AD3: 27        .byte $27   ; 53 
- D 0 - I - 0x018AE4 06:8AD4: 32        .byte $32   ; 54 
- D 0 - I - 0x018AE5 06:8AD5: 92        .byte $92   ; 55 
- D 0 - I - 0x018AE6 06:8AD6: 87        .byte $87   ; 56 
- D 0 - I - 0x018AE7 06:8AD7: 27        .byte $27   ; 57 
- D 0 - I - 0x018AE8 06:8AD8: 22        .byte $22   ; 58 
- D 0 - I - 0x018AE9 06:8AD9: 1E        .byte $1E   ; 59 
- D 0 - I - 0x018AEA 06:8ADA: 07        .byte $07   ; 5A 
- D 0 - I - 0x018AEB 06:8ADB: 24        .byte $24   ; 5B 
- D 0 - I - 0x018AEC 06:8ADC: 22        .byte $22   ; 5C 
- D 0 - I - 0x018AED 06:8ADD: 03        .byte $03   ; 5D 
- D 0 - I - 0x018AEE 06:8ADE: F7        .byte $F7   ; 5E 
- D 0 - I - 0x018AEF 06:8ADF: A7        .byte $A7   ; 5F 
- D 0 - I - 0x018AF0 06:8AE0: 55        .byte $55   ; 60 
- D 0 - I - 0x018AF1 06:8AE1: 22        .byte $22   ; 61 
- D 0 - I - 0x018AF2 06:8AE2: 16        .byte $16   ; 62 
- D 0 - I - 0x018AF3 06:8AE3: A6        .byte $A6   ; 63 
- D 0 - I - 0x018AF4 06:8AE4: 22        .byte $22   ; 64 
- D 0 - I - 0x018AF5 06:8AE5: 03        .byte $03   ; 65 
- D 0 - I - 0x018AF6 06:8AE6: E4        .byte $E4   ; 66 
- D 0 - I - 0x018AF7 06:8AE7: 04        .byte $04   ; 67 
- D 0 - I - 0x018AF8 06:8AE8: 32        .byte $32   ; 68 
- D 0 - I - 0x018AF9 06:8AE9: 83        .byte $83   ; 69 
- D 0 - I - 0x018AFA 06:8AEA: 03        .byte $03   ; 6A 
- D 0 - I - 0x018AFB 06:8AEB: 02        .byte $02   ; 6B 
- D 0 - I - 0x018AFC 06:8AEC: 02        .byte $02   ; 6C 
- D 0 - I - 0x018AFD 06:8AED: 07        .byte $07   ; 6D 
- D 0 - I - 0x018AFE 06:8AEE: 26        .byte $26   ; 6E 
- D 0 - I - 0x018AFF 06:8AEF: 7C        .byte $7C   ; 6F 
- D 0 - I - 0x018B00 06:8AF0: 05        .byte $05   ; 70 
- D 0 - I - 0x018B01 06:8AF1: 26        .byte $26   ; 71 
- D 0 - I - 0x018B02 06:8AF2: 74        .byte $74   ; 72 
- D 0 - I - 0x018B03 06:8AF3: 36        .byte $36   ; 73 
- D 0 - I - 0x018B04 06:8AF4: A6        .byte $A6   ; 74 
- D 0 - I - 0x018B05 06:8AF5: 61        .byte $61   ; 75 
- D 0 - I - 0x018B06 06:8AF6: 26        .byte $26   ; 76 
- D 0 - I - 0x018B07 06:8AF7: 03        .byte $03   ; 77 
- D 0 - I - 0x018B08 06:8AF8: 26        .byte $26   ; 78 
- D 0 - I - 0x018B09 06:8AF9: 23        .byte $23   ; 79 
- D 0 - I - 0x018B0A 06:8AFA: 06        .byte $06   ; 7A 
- D 0 - I - 0x018B0B 06:8AFB: 0D        .byte $0D   ; 7B 
- D 0 - I - 0x018B0C 06:8AFC: 22        .byte $22   ; 7C 
- D 0 - I - 0x018B0D 06:8AFD: E3        .byte $E3   ; 7D 
- D 0 - I - 0x018B0E 06:8AFE: 03        .byte $03   ; 7E 
- D 0 - I - 0x018B0F 06:8AFF: 07        .byte $07   ; 7F 

- D 0 - I - 0x018B10 06:8B00: 69        .byte $69   ; 00 
- D 0 - I - 0x018B11 06:8B01: EF        .byte $EF   ; 01 
- D 0 - I - 0x018B12 06:8B02: 0E        .byte $0E   ; 02 
- D 0 - I - 0x018B13 06:8B03: B3        .byte $B3   ; 03 
- D 0 - I - 0x018B14 06:8B04: F7        .byte $F7   ; 04 
- D 0 - I - 0x018B15 06:8B05: 7B        .byte $7B   ; 05 
- D 0 - I - 0x018B16 06:8B06: 0D        .byte $0D   ; 06 
- D 0 - I - 0x018B17 06:8B07: F1        .byte $F1   ; 07 
- D 0 - I - 0x018B18 06:8B08: 35        .byte $35   ; 08 
- D 0 - I - 0x018B19 06:8B09: BA        .byte $BA   ; 09 
- D 0 - I - 0x018B1A 06:8B0A: 45        .byte $45   ; 0A 
- D 0 - I - 0x018B1B 06:8B0B: 01        .byte $01   ; 0B 
- D 0 - I - 0x018B1C 06:8B0C: 31        .byte $31   ; 0C 
- D 0 - I - 0x018B1D 06:8B0D: F9        .byte $F9   ; 0D 
- D 0 - I - 0x018B1E 06:8B0E: 4B        .byte $4B   ; 0E 
- D 0 - I - 0x018B1F 06:8B0F: 69        .byte $69   ; 0F 
- D 0 - I - 0x018B20 06:8B10: F1        .byte $F1   ; 10 
- D 0 - I - 0x018B21 06:8B11: 3B        .byte $3B   ; 11 
- D 0 - I - 0x018B22 06:8B12: 3A        .byte $3A   ; 12 
- D 0 - I - 0x018B23 06:8B13: B3        .byte $B3   ; 13 
- D 0 - I - 0x018B24 06:8B14: 57        .byte $57   ; 14 
- D 0 - I - 0x018B25 06:8B15: 23        .byte $23   ; 15 
- D 0 - I - 0x018B26 06:8B16: 08        .byte $08   ; 16 
- D 0 - I - 0x018B27 06:8B17: FC        .byte $FC   ; 17 
- D 0 - I - 0x018B28 06:8B18: F5        .byte $F5   ; 18 
- D 0 - I - 0x018B29 06:8B19: 85        .byte $85   ; 19 
- D 0 - I - 0x018B2A 06:8B1A: BA        .byte $BA   ; 1A 
- D 0 - I - 0x018B2B 06:8B1B: 85        .byte $85   ; 1B 
- D 0 - I - 0x018B2C 06:8B1C: 38        .byte $38   ; 1C 
- D 0 - I - 0x018B2D 06:8B1D: 56        .byte $56   ; 1D 
- D 0 - I - 0x018B2E 06:8B1E: 33        .byte $33   ; 1E 
- D 0 - I - 0x018B2F 06:8B1F: B8        .byte $B8   ; 1F 
- D 0 - I - 0x018B30 06:8B20: 7B        .byte $7B   ; 20 
- D 0 - I - 0x018B31 06:8B21: 07        .byte $07   ; 21 
- D 0 - I - 0x018B32 06:8B22: B3        .byte $B3   ; 22 
- D 0 - I - 0x018B33 06:8B23: D5        .byte $D5   ; 23 
- D 0 - I - 0x018B34 06:8B24: 52        .byte $52   ; 24 
- D 0 - I - 0x018B35 06:8B25: B3        .byte $B3   ; 25 
- D 0 - I - 0x018B36 06:8B26: D5        .byte $D5   ; 26 
- D 0 - I - 0x018B37 06:8B27: 08        .byte $08   ; 27 
- D 0 - I - 0x018B38 06:8B28: 36        .byte $36   ; 28 
- D 0 - I - 0x018B39 06:8B29: BA        .byte $BA   ; 29 
- D 0 - I - 0x018B3A 06:8B2A: 3D        .byte $3D   ; 2A 
- D 0 - I - 0x018B3B 06:8B2B: 00        .byte $00   ; 2B 
- D 0 - I - 0x018B3C 06:8B2C: 00        .byte $00   ; 2C 
- D 0 - I - 0x018B3D 06:8B2D: 35        .byte $35   ; 2D 
- D 0 - I - 0x018B3E 06:8B2E: 3C        .byte $3C   ; 2E 
- D 0 - I - 0x018B3F 06:8B2F: 77        .byte $77   ; 2F 
- D 0 - I - 0x018B40 06:8B30: F7        .byte $F7   ; 30 
- D 0 - I - 0x018B41 06:8B31: FC        .byte $FC   ; 31 
- D 0 - I - 0x018B42 06:8B32: 37        .byte $37   ; 32 
- D 0 - I - 0x018B43 06:8B33: D5        .byte $D5   ; 33 
- D 0 - I - 0x018B44 06:8B34: DB        .byte $DB   ; 34 
- D 0 - I - 0x018B45 06:8B35: 7B        .byte $7B   ; 35 
- D 0 - I - 0x018B46 06:8B36: EF        .byte $EF   ; 36 
- D 0 - I - 0x018B47 06:8B37: 92        .byte $92   ; 37 
- D 0 - I - 0x018B48 06:8B38: BA        .byte $BA   ; 38 
- D 0 - I - 0x018B49 06:8B39: 38        .byte $38   ; 39 
- D 0 - I - 0x018B4A 06:8B3A: 01        .byte $01   ; 3A 
- D 0 - I - 0x018B4B 06:8B3B: 10        .byte $10   ; 3B 
- D 0 - I - 0x018B4C 06:8B3C: 05        .byte $05   ; 3C 
- D 0 - I - 0x018B4D 06:8B3D: 0F        .byte $0F   ; 3D 
- D 0 - I - 0x018B4E 06:8B3E: 8C        .byte $8C   ; 3E 
- D 0 - I - 0x018B4F 06:8B3F: F4        .byte $F4   ; 3F 
- D 0 - I - 0x018B50 06:8B40: 7B        .byte $7B   ; 40 
- D 0 - I - 0x018B51 06:8B41: F6        .byte $F6   ; 41 
- D 0 - I - 0x018B52 06:8B42: 3E        .byte $3E   ; 42 
- D 0 - I - 0x018B53 06:8B43: 0C        .byte $0C   ; 43 
- D 0 - I - 0x018B54 06:8B44: A4        .byte $A4   ; 44 
- D 0 - I - 0x018B55 06:8B45: FC        .byte $FC   ; 45 
- D 0 - I - 0x018B56 06:8B46: A3        .byte $A3   ; 46 
- D 0 - I - 0x018B57 06:8B47: F1        .byte $F1   ; 47 
- D 0 - I - 0x018B58 06:8B48: 0F        .byte $0F   ; 48 
- D 0 - I - 0x018B59 06:8B49: F5        .byte $F5   ; 49 
- D 0 - I - 0x018B5A 06:8B4A: 69        .byte $69   ; 4A 
- D 0 - I - 0x018B5B 06:8B4B: 8B        .byte $8B   ; 4B 
- D 0 - I - 0x018B5C 06:8B4C: D6        .byte $D6   ; 4C 
- D 0 - I - 0x018B5D 06:8B4D: 33        .byte $33   ; 4D 
- D 0 - I - 0x018B5E 06:8B4E: F4        .byte $F4   ; 4E 
- D 0 - I - 0x018B5F 06:8B4F: 69        .byte $69   ; 4F 
- D 0 - I - 0x018B60 06:8B50: 53        .byte $53   ; 50 
- D 0 - I - 0x018B61 06:8B51: 97        .byte $97   ; 51 
- D 0 - I - 0x018B62 06:8B52: 07        .byte $07   ; 52 
- D 0 - I - 0x018B63 06:8B53: FC        .byte $FC   ; 53 
- D 0 - I - 0x018B64 06:8B54: 7B        .byte $7B   ; 54 
- D 0 - I - 0x018B65 06:8B55: 3A        .byte $3A   ; 55 
- D 0 - I - 0x018B66 06:8B56: B3        .byte $B3   ; 56 
- D 0 - I - 0x018B67 06:8B57: 7B        .byte $7B   ; 57 
- D 0 - I - 0x018B68 06:8B58: 31        .byte $31   ; 58 
- D 0 - I - 0x018B69 06:8B59: BA        .byte $BA   ; 59 
- D 0 - I - 0x018B6A 06:8B5A: EA        .byte $EA   ; 5A 
- D 0 - I - 0x018B6B 06:8B5B: 10        .byte $10   ; 5B 
- D 0 - I - 0x018B6C 06:8B5C: 0B        .byte $0B   ; 5C 
- D 0 - I - 0x018B6D 06:8B5D: B0        .byte $B0   ; 5D 
- D 0 - I - 0x018B6E 06:8B5E: 4C        .byte $4C   ; 5E 
- D 0 - I - 0x018B6F 06:8B5F: D6        .byte $D6   ; 5F 
- D 0 - I - 0x018B70 06:8B60: 69        .byte $69   ; 60 
- D 0 - I - 0x018B71 06:8B61: 07        .byte $07   ; 61 
- D 0 - I - 0x018B72 06:8B62: DB        .byte $DB   ; 62 
- D 0 - I - 0x018B73 06:8B63: 53        .byte $53   ; 63 
- D 0 - I - 0x018B74 06:8B64: FC        .byte $FC   ; 64 
- D 0 - I - 0x018B75 06:8B65: F1        .byte $F1   ; 65 
- D 0 - I - 0x018B76 06:8B66: 0B        .byte $0B   ; 66 
- D 0 - I - 0x018B77 06:8B67: C6        .byte $C6   ; 67 
- D 0 - I - 0x018B78 06:8B68: EE        .byte $EE   ; 68 
- D 0 - I - 0x018B79 06:8B69: 45        .byte $45   ; 69 
- D 0 - I - 0x018B7A 06:8B6A: DB        .byte $DB   ; 6A 
- D 0 - I - 0x018B7B 06:8B6B: 85        .byte $85   ; 6B 
- D 0 - I - 0x018B7C 06:8B6C: 39        .byte $39   ; 6C 
- D 0 - I - 0x018B7D 06:8B6D: EA        .byte $EA   ; 6D 
- D 0 - I - 0x018B7E 06:8B6E: 3C        .byte $3C   ; 6E 
- D 0 - I - 0x018B7F 06:8B6F: 69        .byte $69   ; 6F 
- D 0 - I - 0x018B80 06:8B70: A9        .byte $A9   ; 70 
- D 0 - I - 0x018B81 06:8B71: 00        .byte $00   ; 71 
- D 0 - I - 0x018B82 06:8B72: 69        .byte $69   ; 72 
- D 0 - I - 0x018B83 06:8B73: F1        .byte $F1   ; 73 
- D 0 - I - 0x018B84 06:8B74: 3B        .byte $3B   ; 74 
- D 0 - I - 0x018B85 06:8B75: 69        .byte $69   ; 75 
- D 0 - I - 0x018B86 06:8B76: 00        .byte $00   ; 76 
- D 0 - I - 0x018B87 06:8B77: 69        .byte $69   ; 77 
- D 0 - I - 0x018B88 06:8B78: 68        .byte $68   ; 78 
- D 0 - I - 0x018B89 06:8B79: 00        .byte $00   ; 79 
- D 0 - I - 0x018B8A 06:8B7A: 01        .byte $01   ; 7A 
- D 0 - I - 0x018B8B 06:8B7B: 69        .byte $69   ; 7B 
- D 0 - I - 0x018B8C 06:8B7C: F4        .byte $F4   ; 7C 
- D 0 - I - 0x018B8D 06:8B7D: 3C        .byte $3C   ; 7D 
- D 0 - I - 0x018B8E 06:8B7E: 00        .byte $00   ; 7E 
- D 0 - I - 0x018B8F 06:8B7F: EF        .byte $EF   ; 7F 

- D 0 - I - 0x018B90 06:8B80: 3F        .byte $00 + $00 + con_obj_id_3F   ; 00 
- D 0 - I - 0x018B91 06:8B81: 93        .byte $00 + $80 + con_obj_id_53 - $40   ; 01 
- D 0 - I - 0x018B92 06:8B82: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 02 
- D 0 - I - 0x018B93 06:8B83: DA        .byte $40 + $80 + con_obj_id_5A - $40   ; 03 
- D 0 - I - 0x018B94 06:8B84: DA        .byte $40 + $80 + con_obj_id_5A - $40   ; 04 
- D 0 - I - 0x018B95 06:8B85: CA        .byte $40 + $80 + con_obj_id_4A - $40   ; 05 
- D 0 - I - 0x018B96 06:8B86: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 06 
- D 0 - I - 0x018B97 06:8B87: DA        .byte $40 + $80 + con_obj_id_5A - $40   ; 07 
- D 0 - I - 0x018B98 06:8B88: 26        .byte $00 + $00 + con_obj_id_26   ; 08 
- D 0 - I - 0x018B99 06:8B89: 8A        .byte $00 + $80 + con_obj_id_4A - $40   ; 09 
- D 0 - I - 0x018B9A 06:8B8A: 24        .byte $00 + $00 + con_obj_id_24   ; 0A 
- D 0 - I - 0x018B9B 06:8B8B: A5        .byte $00 + $80 + con_obj_id_65 - $40   ; 0B 
- D 0 - I - 0x018B9C 06:8B8C: 23        .byte $00 + $00 + con_obj_id_23   ; 0C 
- D 0 - I - 0x018B9D 06:8B8D: C8        .byte $40 + $80 + con_obj_id_48 - $40   ; 0D 
- D 0 - I - 0x018B9E 06:8B8E: 00        .byte $00 + $00 + con_obj_id_null   ; 0E 
- D 0 - I - 0x018B9F 06:8B8F: 3F        .byte $00 + $00 + con_obj_id_3F   ; 0F 
- D 0 - I - 0x018BA0 06:8B90: C8        .byte $40 + $80 + con_obj_id_48 - $40   ; 10 
- D 0 - I - 0x018BA1 06:8B91: 25        .byte $00 + $00 + con_obj_id_25   ; 11 
- D 0 - I - 0x018BA2 06:8B92: 26        .byte $00 + $00 + con_obj_id_26   ; 12 
- D 0 - I - 0x018BA3 06:8B93: 80        .byte $00 + $80 + con_obj_id_40 - $40   ; 13 
- D 0 - I - 0x018BA4 06:8B94: 1C        .byte $00 + $00 + con_obj_id_1C   ; 14 
- D 0 - I - 0x018BA5 06:8B95: 14        .byte $00 + $00 + con_obj_id_14   ; 15 
- D 0 - I - 0x018BA6 06:8B96: 8A        .byte $00 + $80 + con_obj_id_4A - $40   ; 16 
- D 0 - I - 0x018BA7 06:8B97: 9F        .byte $00 + $80 + con_obj_id_5F - $40   ; 17 
- D 0 - I - 0x018BA8 06:8B98: 96        .byte $00 + $80 + con_obj_id_56 - $40   ; 18 
- D 0 - I - 0x018BA9 06:8B99: 1F        .byte $00 + $00 + con_obj_id_1F   ; 19 
- D 0 - I - 0x018BAA 06:8B9A: DA        .byte $40 + $80 + con_obj_id_5A - $40   ; 1A 
- D 0 - I - 0x018BAB 06:8B9B: 00        .byte $00 + $00 + con_obj_id_null   ; 1B 
- D 0 - I - 0x018BAC 06:8B9C: 24        .byte $00 + $00 + con_obj_id_24   ; 1C 
- D 0 - I - 0x018BAD 06:8B9D: 11        .byte $00 + $00 + con_obj_id_11   ; 1D 
- D 0 - I - 0x018BAE 06:8B9E: 24        .byte $00 + $00 + con_obj_id_24   ; 1E 
- D 0 - I - 0x018BAF 06:8B9F: DA        .byte $40 + $80 + con_obj_id_5A - $40   ; 1F 
- D 0 - I - 0x018BB0 06:8BA0: DA        .byte $40 + $80 + con_obj_id_5A - $40   ; 20 
- D 0 - I - 0x018BB1 06:8BA1: A5        .byte $00 + $80 + con_obj_id_65 - $40   ; 21 
- D 0 - I - 0x018BB2 06:8BA2: 9D        .byte $00 + $80 + con_obj_id_5D - $40   ; 22 
- D 0 - I - 0x018BB3 06:8BA3: 12        .byte $00 + $00 + con_obj_id_12   ; 23 
- D 0 - I - 0x018BB4 06:8BA4: 17        .byte $00 + $00 + con_obj_id_17   ; 24 
- D 0 - I - 0x018BB5 06:8BA5: 8E        .byte $00 + $80 + con_obj_id_4E - $40   ; 25 
- D 0 - I - 0x018BB6 06:8BA6: 03        .byte $00 + $00 + con_obj_id_03   ; 26 
- D 0 - I - 0x018BB7 06:8BA7: 8A        .byte $00 + $80 + con_obj_id_4A - $40   ; 27 
- D 0 - I - 0x018BB8 06:8BA8: 26        .byte $00 + $00 + con_obj_id_26   ; 28 
- D 0 - I - 0x018BB9 06:8BA9: DA        .byte $40 + $80 + con_obj_id_5A - $40   ; 29 
- D 0 - I - 0x018BBA 06:8BAA: 04        .byte $00 + $00 + con_obj_id_04   ; 2A 
- D 0 - I - 0x018BBB 06:8BAB: 29        .byte $00 + $00 + con_obj_id_29   ; 2B 
- D 0 - I - 0x018BBC 06:8BAC: 29        .byte $00 + $00 + con_obj_id_29   ; 2C 
- D 0 - I - 0x018BBD 06:8BAD: 26        .byte $00 + $00 + con_obj_id_26   ; 2D 
- D 0 - I - 0x018BBE 06:8BAE: 00        .byte $00 + $00 + con_obj_id_null   ; 2E 
- D 0 - I - 0x018BBF 06:8BAF: 3E        .byte $00 + $00 + con_obj_id_3E   ; 2F 
- D 0 - I - 0x018BC0 06:8BB0: CA        .byte $40 + $80 + con_obj_id_4A - $40   ; 30 
- D 0 - I - 0x018BC1 06:8BB1: A5        .byte $00 + $80 + con_obj_id_65 - $40   ; 31 
- D 0 - I - 0x018BC2 06:8BB2: 27        .byte $00 + $00 + con_obj_id_27   ; 32 
- D 0 - I - 0x018BC3 06:8BB3: 19        .byte $00 + $00 + con_obj_id_19   ; 33 
- D 0 - I - 0x018BC4 06:8BB4: 14        .byte $00 + $00 + con_obj_id_14   ; 34 
- D 0 - I - 0x018BC5 06:8BB5: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 35 
- D 0 - I - 0x018BC6 06:8BB6: 80        .byte $00 + $80 + con_obj_id_40 - $40   ; 36 
- D 0 - I - 0x018BC7 06:8BB7: 63        .byte $40 + $00 + con_obj_id_23   ; 37 
- D 0 - I - 0x018BC8 06:8BB8: 8D        .byte $00 + $80 + con_obj_id_4D - $40   ; 38 
- D 0 - I - 0x018BC9 06:8BB9: 24        .byte $00 + $00 + con_obj_id_24   ; 39 
- D 0 - I - 0x018BCA 06:8BBA: A5        .byte $00 + $80 + con_obj_id_65 - $40   ; 3A 
- D 0 - I - 0x018BCB 06:8BBB: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 3B 
- D 0 - I - 0x018BCC 06:8BBC: 85        .byte $00 + $80 + con_obj_id_45 - $40   ; 3C 
- D 0 - I - 0x018BCD 06:8BBD: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 3D 
- D 0 - I - 0x018BCE 06:8BBE: 23        .byte $00 + $00 + con_obj_id_23   ; 3E 
- D 0 - I - 0x018BCF 06:8BBF: 9B        .byte $00 + $80 + con_obj_id_5B - $40   ; 3F 
- D 0 - I - 0x018BD0 06:8BC0: 96        .byte $00 + $80 + con_obj_id_56 - $40   ; 40 
- D 0 - I - 0x018BD1 06:8BC1: 80        .byte $00 + $80 + con_obj_id_40 - $40   ; 41 
- D 0 - I - 0x018BD2 06:8BC2: 28        .byte $00 + $00 + con_obj_id_28   ; 42 
- D 0 - I - 0x018BD3 06:8BC3: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 43 
- D 0 - I - 0x018BD4 06:8BC4: 00        .byte $00 + $00 + con_obj_id_null   ; 44 
- D 0 - I - 0x018BD5 06:8BC5: 80        .byte $00 + $80 + con_obj_id_40 - $40   ; 45 
- D 0 - I - 0x018BD6 06:8BC6: 25        .byte $00 + $00 + con_obj_id_25   ; 46 
- D 0 - I - 0x018BD7 06:8BC7: 9E        .byte $00 + $80 + con_obj_id_5E - $40   ; 47 
- D 0 - I - 0x018BD8 06:8BC8: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 48 
- D 0 - I - 0x018BD9 06:8BC9: 98        .byte $00 + $80 + con_obj_id_58 - $40   ; 49 
- D 0 - I - 0x018BDA 06:8BCA: 3F        .byte $00 + $00 + con_obj_id_3F   ; 4A 
- D 0 - I - 0x018BDB 06:8BCB: 23        .byte $00 + $00 + con_obj_id_23   ; 4B 
- D 0 - I - 0x018BDC 06:8BCC: 1C        .byte $00 + $00 + con_obj_id_1C   ; 4C 
- D 0 - I - 0x018BDD 06:8BCD: 25        .byte $00 + $00 + con_obj_id_25   ; 4D 
- D 0 - I - 0x018BDE 06:8BCE: 80        .byte $00 + $80 + con_obj_id_40 - $40   ; 4E 
- D 0 - I - 0x018BDF 06:8BCF: 3F        .byte $00 + $00 + con_obj_id_3F   ; 4F 
- D 0 - I - 0x018BE0 06:8BD0: 14        .byte $00 + $00 + con_obj_id_14   ; 50 
- D 0 - I - 0x018BE1 06:8BD1: 11        .byte $00 + $00 + con_obj_id_11   ; 51 
- D 0 - I - 0x018BE2 06:8BD2: 9B        .byte $00 + $80 + con_obj_id_5B - $40   ; 52 
- D 0 - I - 0x018BE3 06:8BD3: A3        .byte $00 + $80 + con_obj_id_63 - $40   ; 53 
- D 0 - I - 0x018BE4 06:8BD4: 8C        .byte $00 + $80 + con_obj_id_4C - $40   ; 54 
- D 0 - I - 0x018BE5 06:8BD5: 5A        .byte $40 + $00 + con_obj_id_1A   ; 55 
- D 0 - I - 0x018BE6 06:8BD6: 99        .byte $00 + $80 + con_obj_id_59 - $40   ; 56 
- D 0 - I - 0x018BE7 06:8BD7: 94        .byte $00 + $80 + con_obj_id_54 - $40   ; 57 
- D 0 - I - 0x018BE8 06:8BD8: 00        .byte $00 + $00 + con_obj_id_null   ; 58 
- D 0 - I - 0x018BE9 06:8BD9: 82        .byte $00 + $80 + con_obj_id_42 - $40   ; 59 
- D 0 - I - 0x018BEA 06:8BDA: 19        .byte $00 + $00 + con_obj_id_19   ; 5A 
- D 0 - I - 0x018BEB 06:8BDB: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 5B 
- D 0 - I - 0x018BEC 06:8BDC: 24        .byte $00 + $00 + con_obj_id_24   ; 5C 
- D 0 - I - 0x018BED 06:8BDD: 91        .byte $00 + $80 + con_obj_id_51 - $40   ; 5D 
- D 0 - I - 0x018BEE 06:8BDE: 24        .byte $00 + $00 + con_obj_id_24   ; 5E 
- D 0 - I - 0x018BEF 06:8BDF: 18        .byte $00 + $00 + con_obj_id_18   ; 5F 
- D 0 - I - 0x018BF0 06:8BE0: 3E        .byte $00 + $00 + con_obj_id_3E   ; 60 
- D 0 - I - 0x018BF1 06:8BE1: DA        .byte $40 + $80 + con_obj_id_5A - $40   ; 61 
- D 0 - I - 0x018BF2 06:8BE2: 26        .byte $00 + $00 + con_obj_id_26   ; 62 
- D 0 - I - 0x018BF3 06:8BE3: 1B        .byte $00 + $00 + con_obj_id_1B   ; 63 
- D 0 - I - 0x018BF4 06:8BE4: 9F        .byte $00 + $80 + con_obj_id_5F - $40   ; 64 
- D 0 - I - 0x018BF5 06:8BE5: 98        .byte $00 + $80 + con_obj_id_58 - $40   ; 65 
- D 0 - I - 0x018BF6 06:8BE6: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 66 
- D 0 - I - 0x018BF7 06:8BE7: 3E        .byte $00 + $00 + con_obj_id_3E   ; 67 
- D 0 - I - 0x018BF8 06:8BE8: 80        .byte $00 + $80 + con_obj_id_40 - $40   ; 68 
- D 0 - I - 0x018BF9 06:8BE9: 23        .byte $00 + $00 + con_obj_id_23   ; 69 
- D 0 - I - 0x018BFA 06:8BEA: 09        .byte $00 + $00 + con_obj_id_09   ; 6A 
- D 0 - I - 0x018BFB 06:8BEB: 1E        .byte $00 + $00 + con_obj_id_1E   ; 6B 
- D 0 - I - 0x018BFC 06:8BEC: 24        .byte $00 + $00 + con_obj_id_24   ; 6C 
- D 0 - I - 0x018BFD 06:8BED: 13        .byte $00 + $00 + con_obj_id_13   ; 6D 
- D 0 - I - 0x018BFE 06:8BEE: 25        .byte $00 + $00 + con_obj_id_25   ; 6E 
- D 0 - I - 0x018BFF 06:8BEF: 3F        .byte $00 + $00 + con_obj_id_3F   ; 6F 
- D 0 - I - 0x018C00 06:8BF0: 3E        .byte $00 + $00 + con_obj_id_3E   ; 70 
- D 0 - I - 0x018C01 06:8BF1: 1B        .byte $00 + $00 + con_obj_id_1B   ; 71 
- D 0 - I - 0x018C02 06:8BF2: 3E        .byte $00 + $00 + con_obj_id_3E   ; 72 
- D 0 - I - 0x018C03 06:8BF3: 9F        .byte $00 + $80 + con_obj_id_5F - $40   ; 73 
- D 0 - I - 0x018C04 06:8BF4: 5A        .byte $40 + $00 + con_obj_id_1A   ; 74 
- D 0 - I - 0x018C05 06:8BF5: 3E        .byte $00 + $00 + con_obj_id_3E   ; 75 
- D 0 - I - 0x018C06 06:8BF6: 21        .byte $00 + $00 + con_obj_id_21   ; 76 
- D 0 - I - 0x018C07 06:8BF7: 3E        .byte $00 + $00 + con_obj_id_3E   ; 77 
- D 0 - I - 0x018C08 06:8BF8: 23        .byte $00 + $00 + con_obj_id_23   ; 78 
- D 0 - I - 0x018C09 06:8BF9: 21        .byte $00 + $00 + con_obj_id_21   ; 79 
- D 0 - I - 0x018C0A 06:8BFA: 9D        .byte $00 + $80 + con_obj_id_5D - $40   ; 7A 
- D 0 - I - 0x018C0B 06:8BFB: 3E        .byte $00 + $00 + con_obj_id_3E   ; 7B 
- D 0 - I - 0x018C0C 06:8BFC: DA        .byte $40 + $80 + con_obj_id_5A - $40   ; 7C 
- D 0 - I - 0x018C0D 06:8BFD: 23        .byte $00 + $00 + con_obj_id_23   ; 7D 
- D 0 - I - 0x018C0E 06:8BFE: 21        .byte $00 + $00 + con_obj_id_21   ; 7E 
- D 0 - I - 0x018C0F 06:8BFF: 96        .byte $00 + $80 + con_obj_id_56 - $40   ; 7F 

- D 0 - I - 0x018C10 06:8C00: 13        .byte $13   ; 00 
- D 0 - I - 0x018C11 06:8C01: 83        .byte $83   ; 01 
- D 0 - I - 0x018C12 06:8C02: 03        .byte $03   ; 02 
- D 0 - I - 0x018C13 06:8C03: 03        .byte $03   ; 03 
- D 0 - I - 0x018C14 06:8C04: 03        .byte $03   ; 04 
- D 0 - I - 0x018C15 06:8C05: 03        .byte $03   ; 05 
- D 0 - I - 0x018C16 06:8C06: 03        .byte $03   ; 06 
- D 0 - I - 0x018C17 06:8C07: 03        .byte $03   ; 07 
- D 0 - I - 0x018C18 06:8C08: 03        .byte $03   ; 08 
- D 0 - I - 0x018C19 06:8C09: 0F        .byte $0F   ; 09 
- D 0 - I - 0x018C1A 06:8C0A: 19        .byte $19   ; 0A 
- D 0 - I - 0x018C1B 06:8C0B: 00        .byte $00   ; 0B 
- D 0 - I - 0x018C1C 06:8C0C: 00        .byte $00   ; 0C 
- D 0 - I - 0x018C1D 06:8C0D: 03        .byte $03   ; 0D 
- D 0 - I - 0x018C1E 06:8C0E: 00        .byte $00   ; 0E 
- D 0 - I - 0x018C1F 06:8C0F: 0B        .byte $0B   ; 0F 
- D 0 - I - 0x018C20 06:8C10: 03        .byte $03   ; 10 
- D 0 - I - 0x018C21 06:8C11: 00        .byte $00   ; 11 
- D 0 - I - 0x018C22 06:8C12: 0F        .byte $0F   ; 12 
- D 0 - I - 0x018C23 06:8C13: 83        .byte $83   ; 13 
- D 0 - I - 0x018C24 06:8C14: 03        .byte $03   ; 14 
- D 0 - I - 0x018C25 06:8C15: 8F        .byte $8F   ; 15 
- D 0 - I - 0x018C26 06:8C16: 00        .byte $00   ; 16 
- D 0 - I - 0x018C27 06:8C17: 03        .byte $03   ; 17 
- D 0 - I - 0x018C28 06:8C18: 97        .byte $97   ; 18 
- D 0 - I - 0x018C29 06:8C19: 03        .byte $03   ; 19 
- D 0 - I - 0x018C2A 06:8C1A: 23        .byte $23   ; 1A 
- D 0 - I - 0x018C2B 06:8C1B: 00        .byte $00   ; 1B 
- D 0 - I - 0x018C2C 06:8C1C: 03        .byte $03   ; 1C 
- D 0 - I - 0x018C2D 06:8C1D: 00        .byte $00   ; 1D 
- D 0 - I - 0x018C2E 06:8C1E: 03        .byte $03   ; 1E 
- D 0 - I - 0x018C2F 06:8C1F: 03        .byte $03   ; 1F 
- D 0 - I - 0x018C30 06:8C20: 03        .byte $03   ; 20 
- D 0 - I - 0x018C31 06:8C21: 03        .byte $03   ; 21 
- D 0 - I - 0x018C32 06:8C22: 03        .byte $03   ; 22 
- D 0 - I - 0x018C33 06:8C23: 00        .byte $00   ; 23 
- D 0 - I - 0x018C34 06:8C24: 83        .byte $83   ; 24 
- D 0 - I - 0x018C35 06:8C25: 00        .byte $00   ; 25 
- D 0 - I - 0x018C36 06:8C26: 0F        .byte $0F   ; 26 
- D 0 - I - 0x018C37 06:8C27: 17        .byte $17   ; 27 
- D 0 - I - 0x018C38 06:8C28: 03        .byte $03   ; 28 
- D 0 - I - 0x018C39 06:8C29: 23        .byte $23   ; 29 
- D 0 - I - 0x018C3A 06:8C2A: 1A        .byte $1A   ; 2A 
- D 0 - I - 0x018C3B 06:8C2B: 1B        .byte $1B   ; 2B 
- D 0 - I - 0x018C3C 06:8C2C: 1B        .byte $1B   ; 2C 
- D 0 - I - 0x018C3D 06:8C2D: 03        .byte $03   ; 2D 
- D 0 - I - 0x018C3E 06:8C2E: 17        .byte $17   ; 2E 
- D 0 - I - 0x018C3F 06:8C2F: 03        .byte $03   ; 2F 
- D 0 - I - 0x018C40 06:8C30: 03        .byte $03   ; 30 
- D 0 - I - 0x018C41 06:8C31: 03        .byte $03   ; 31 
- D 0 - I - 0x018C42 06:8C32: 03        .byte $03   ; 32 
- D 0 - I - 0x018C43 06:8C33: 83        .byte $83   ; 33 
- D 0 - I - 0x018C44 06:8C34: 0F        .byte $0F   ; 34 
- D 0 - I - 0x018C45 06:8C35: 16        .byte $16   ; 35 
- D 0 - I - 0x018C46 06:8C36: 03        .byte $03   ; 36 
- D 0 - I - 0x018C47 06:8C37: 00        .byte $00   ; 37 
- D 0 - I - 0x018C48 06:8C38: 0F        .byte $0F   ; 38 
- D 0 - I - 0x018C49 06:8C39: 03        .byte $03   ; 39 
- D 0 - I - 0x018C4A 06:8C3A: 39        .byte $39   ; 3A 
- D 0 - I - 0x018C4B 06:8C3B: 23        .byte $23   ; 3B 
- D 0 - I - 0x018C4C 06:8C3C: 1A        .byte $1A   ; 3C 
- D 0 - I - 0x018C4D 06:8C3D: 23        .byte $23   ; 3D 
- D 0 - I - 0x018C4E 06:8C3E: 03        .byte $03   ; 3E 
- D 0 - I - 0x018C4F 06:8C3F: 00        .byte $00   ; 3F 
- D 0 - I - 0x018C50 06:8C40: 0F        .byte $0F   ; 40 
- D 0 - I - 0x018C51 06:8C41: A3        .byte $A3   ; 41 
- D 0 - I - 0x018C52 06:8C42: 8E        .byte $8E   ; 42 
- D 0 - I - 0x018C53 06:8C43: 23        .byte $23   ; 43 
- D 0 - I - 0x018C54 06:8C44: 0F        .byte $0F   ; 44 
- D 0 - I - 0x018C55 06:8C45: 03        .byte $03   ; 45 
- D 0 - I - 0x018C56 06:8C46: 03        .byte $03   ; 46 
- D 0 - I - 0x018C57 06:8C47: 19        .byte $19   ; 47 
- D 0 - I - 0x018C58 06:8C48: 03        .byte $03   ; 48 
- D 0 - I - 0x018C59 06:8C49: 03        .byte $03   ; 49 
- D 0 - I - 0x018C5A 06:8C4A: 07        .byte $07   ; 4A 
- D 0 - I - 0x018C5B 06:8C4B: 99        .byte $99   ; 4B 
- D 0 - I - 0x018C5C 06:8C4C: 39        .byte $39   ; 4C 
- D 0 - I - 0x018C5D 06:8C4D: 03        .byte $03   ; 4D 
- D 0 - I - 0x018C5E 06:8C4E: 0F        .byte $0F   ; 4E 
- D 0 - I - 0x018C5F 06:8C4F: 09        .byte $09   ; 4F 
- D 0 - I - 0x018C60 06:8C50: 83        .byte $83   ; 50 
- D 0 - I - 0x018C61 06:8C51: 03        .byte $03   ; 51 
- D 0 - I - 0x018C62 06:8C52: 23        .byte $23   ; 52 
- D 0 - I - 0x018C63 06:8C53: 03        .byte $03   ; 53 
- D 0 - I - 0x018C64 06:8C54: 03        .byte $03   ; 54 
- D 0 - I - 0x018C65 06:8C55: 03        .byte $03   ; 55 
- D 0 - I - 0x018C66 06:8C56: 19        .byte $19   ; 56 
- D 0 - I - 0x018C67 06:8C57: 99        .byte $99   ; 57 
- D 0 - I - 0x018C68 06:8C58: 0F        .byte $0F   ; 58 
- D 0 - I - 0x018C69 06:8C59: 03        .byte $03   ; 59 
- D 0 - I - 0x018C6A 06:8C5A: 96        .byte $96   ; 5A 
- D 0 - I - 0x018C6B 06:8C5B: 03        .byte $03   ; 5B 
- D 0 - I - 0x018C6C 06:8C5C: 19        .byte $19   ; 5C 
- D 0 - I - 0x018C6D 06:8C5D: 99        .byte $99   ; 5D 
- D 0 - I - 0x018C6E 06:8C5E: 19        .byte $19   ; 5E 
- D 0 - I - 0x018C6F 06:8C5F: 96        .byte $96   ; 5F 
- D 0 - I - 0x018C70 06:8C60: 03        .byte $03   ; 60 
- D 0 - I - 0x018C71 06:8C61: 19        .byte $19   ; 61 
- D 0 - I - 0x018C72 06:8C62: 0F        .byte $0F   ; 62 
- D 0 - I - 0x018C73 06:8C63: 03        .byte $03   ; 63 
- D 0 - I - 0x018C74 06:8C64: 03        .byte $03   ; 64 
- D 0 - I - 0x018C75 06:8C65: 83        .byte $83   ; 65 
- D 0 - I - 0x018C76 06:8C66: 03        .byte $03   ; 66 
- D 0 - I - 0x018C77 06:8C67: 03        .byte $03   ; 67 
- D 0 - I - 0x018C78 06:8C68: 00        .byte $00   ; 68 
- D 0 - I - 0x018C79 06:8C69: 00        .byte $00   ; 69 
- D 0 - I - 0x018C7A 06:8C6A: 83        .byte $83   ; 6A 
- D 0 - I - 0x018C7B 06:8C6B: 03        .byte $03   ; 6B 
- D 0 - I - 0x018C7C 06:8C6C: 00        .byte $00   ; 6C 
- D 0 - I - 0x018C7D 06:8C6D: 19        .byte $19   ; 6D 
- D 0 - I - 0x018C7E 06:8C6E: 0F        .byte $0F   ; 6E 
- D 0 - I - 0x018C7F 06:8C6F: 11        .byte $11   ; 6F 
- D 0 - I - 0x018C80 06:8C70: 03        .byte $03   ; 70 
- D 0 - I - 0x018C81 06:8C71: 03        .byte $03   ; 71 
- D 0 - I - 0x018C82 06:8C72: 03        .byte $03   ; 72 
- D 0 - I - 0x018C83 06:8C73: 03        .byte $03   ; 73 
- D 0 - I - 0x018C84 06:8C74: 03        .byte $03   ; 74 
- D 0 - I - 0x018C85 06:8C75: 03        .byte $03   ; 75 
- D 0 - I - 0x018C86 06:8C76: 03        .byte $03   ; 76 
- D 0 - I - 0x018C87 06:8C77: 03        .byte $03   ; 77 
- D 0 - I - 0x018C88 06:8C78: 19        .byte $19   ; 78 
- D 0 - I - 0x018C89 06:8C79: 03        .byte $03   ; 79 
- D 0 - I - 0x018C8A 06:8C7A: 00        .byte $00   ; 7A 
- D 0 - I - 0x018C8B 06:8C7B: 03        .byte $03   ; 7B 
- D 0 - I - 0x018C8C 06:8C7C: 03        .byte $03   ; 7C 
- D 0 - I - 0x018C8D 06:8C7D: 0F        .byte $0F   ; 7D 
- D 0 - I - 0x018C8E 06:8C7E: 03        .byte $03   ; 7E 
- D 0 - I - 0x018C8F 06:8C7F: 99        .byte $99   ; 7F 

- D 0 - I - 0x018C90 06:8C80: 00        .byte $00   ; 00 
- D 0 - I - 0x018C91 06:8C81: 00        .byte $00   ; 01 
- D 0 - I - 0x018C92 06:8C82: 00        .byte $00   ; 02 
- D 0 - I - 0x018C93 06:8C83: 00        .byte $00   ; 03 
- D 0 - I - 0x018C94 06:8C84: 00        .byte $00   ; 04 
- D 0 - I - 0x018C95 06:8C85: 05        .byte $05   ; 05 
- D 0 - I - 0x018C96 06:8C86: 00        .byte $00   ; 06 
- D 0 - I - 0x018C97 06:8C87: 00        .byte $00   ; 07 
- D 0 - I - 0x018C98 06:8C88: 00        .byte $00   ; 08 
- D 0 - I - 0x018C99 06:8C89: 07        .byte $07   ; 09 
- D 0 - I - 0x018C9A 06:8C8A: 01        .byte $01   ; 0A 
- D 0 - I - 0x018C9B 06:8C8B: 07        .byte $07   ; 0B 
- D 0 - I - 0x018C9C 06:8C8C: 07        .byte $07   ; 0C 
- D 0 - I - 0x018C9D 06:8C8D: 05        .byte $05   ; 0D 
- D 0 - I - 0x018C9E 06:8C8E: 07        .byte $07   ; 0E 
- D 0 - I - 0x018C9F 06:8C8F: 00        .byte $00   ; 0F 
- D 0 - I - 0x018CA0 06:8C90: 05        .byte $05   ; 10 
- D 0 - I - 0x018CA1 06:8C91: 07        .byte $07   ; 11 
- D 0 - I - 0x018CA2 06:8C92: 07        .byte $07   ; 12 
- D 0 - I - 0x018CA3 06:8C93: 00        .byte $00   ; 13 
- D 0 - I - 0x018CA4 06:8C94: 00        .byte $00   ; 14 
- D 0 - I - 0x018CA5 06:8C95: 07        .byte $07   ; 15 
- D 0 - I - 0x018CA6 06:8C96: 07        .byte $07   ; 16 
- D 0 - I - 0x018CA7 06:8C97: 10        .byte $10   ; 17 
- D 0 - I - 0x018CA8 06:8C98: 01        .byte $01   ; 18 
- D 0 - I - 0x018CA9 06:8C99: 01        .byte $01   ; 19 
- D 0 - I - 0x018CAA 06:8C9A: 00        .byte $00   ; 1A 
- D 0 - I - 0x018CAB 06:8C9B: 07        .byte $07   ; 1B 
- D 0 - I - 0x018CAC 06:8C9C: 01        .byte $01   ; 1C 
- D 0 - I - 0x018CAD 06:8C9D: 07        .byte $07   ; 1D 
- D 0 - I - 0x018CAE 06:8C9E: 01        .byte $01   ; 1E 
- D 0 - I - 0x018CAF 06:8C9F: 01        .byte $01   ; 1F 
- D 0 - I - 0x018CB0 06:8CA0: 00        .byte $00   ; 20 
- D 0 - I - 0x018CB1 06:8CA1: 20        .byte $20   ; 21 
- D 0 - I - 0x018CB2 06:8CA2: 00        .byte $00   ; 22 
- D 0 - I - 0x018CB3 06:8CA3: 10        .byte $10   ; 23 
- D 0 - I - 0x018CB4 06:8CA4: 00        .byte $00   ; 24 
- D 0 - I - 0x018CB5 06:8CA5: 07        .byte $07   ; 25 
- D 0 - I - 0x018CB6 06:8CA6: 07        .byte $07   ; 26 
- D 0 - I - 0x018CB7 06:8CA7: 07        .byte $07   ; 27 
- D 0 - I - 0x018CB8 06:8CA8: 00        .byte $00   ; 28 
- D 0 - I - 0x018CB9 06:8CA9: 00        .byte $00   ; 29 
- D 0 - I - 0x018CBA 06:8CAA: 07        .byte $07   ; 2A 
- D 0 - I - 0x018CBB 06:8CAB: 00        .byte $00   ; 2B 
- D 0 - I - 0x018CBC 06:8CAC: 00        .byte $00   ; 2C 
- D 0 - I - 0x018CBD 06:8CAD: 00        .byte $00   ; 2D 
- D 0 - I - 0x018CBE 06:8CAE: 07        .byte $07   ; 2E 
- D 0 - I - 0x018CBF 06:8CAF: 00        .byte $00   ; 2F 
- D 0 - I - 0x018CC0 06:8CB0: 05        .byte $05   ; 30 
- D 0 - I - 0x018CC1 06:8CB1: 00        .byte $00   ; 31 
- D 0 - I - 0x018CC2 06:8CB2: 01        .byte $01   ; 32 
- D 0 - I - 0x018CC3 06:8CB3: 00        .byte $00   ; 33 
- D 0 - I - 0x018CC4 06:8CB4: 07        .byte $07   ; 34 
- D 0 - I - 0x018CC5 06:8CB5: 07        .byte $07   ; 35 
- D 0 - I - 0x018CC6 06:8CB6: 00        .byte $00   ; 36 
- D 0 - I - 0x018CC7 06:8CB7: 07        .byte $07   ; 37 
- D 0 - I - 0x018CC8 06:8CB8: 17        .byte $17   ; 38 
- D 0 - I - 0x018CC9 06:8CB9: 00        .byte $00   ; 39 
- D 0 - I - 0x018CCA 06:8CBA: 07        .byte $07   ; 3A 
- D 0 - I - 0x018CCB 06:8CBB: 00        .byte $00   ; 3B 
- D 0 - I - 0x018CCC 06:8CBC: 37        .byte $37   ; 3C 
- D 0 - I - 0x018CCD 06:8CBD: 00        .byte $00   ; 3D 
- D 0 - I - 0x018CCE 06:8CBE: 01        .byte $01   ; 3E 
- D 0 - I - 0x018CCF 06:8CBF: 07        .byte $07   ; 3F 
- D 0 - I - 0x018CD0 06:8CC0: 07        .byte $07   ; 40 
- D 0 - I - 0x018CD1 06:8CC1: 00        .byte $00   ; 41 
- D 0 - I - 0x018CD2 06:8CC2: 03        .byte $03   ; 42 
- D 0 - I - 0x018CD3 06:8CC3: 00        .byte $00   ; 43 
- D 0 - I - 0x018CD4 06:8CC4: 07        .byte $07   ; 44 
- D 0 - I - 0x018CD5 06:8CC5: 00        .byte $00   ; 45 
- D 0 - I - 0x018CD6 06:8CC6: 00        .byte $00   ; 46 
- D 0 - I - 0x018CD7 06:8CC7: 10        .byte $10   ; 47 
- D 0 - I - 0x018CD8 06:8CC8: 10        .byte $10   ; 48 
- D 0 - I - 0x018CD9 06:8CC9: 01        .byte $01   ; 49 
- D 0 - I - 0x018CDA 06:8CCA: 00        .byte $00   ; 4A 
- D 0 - I - 0x018CDB 06:8CCB: 01        .byte $01   ; 4B 
- D 0 - I - 0x018CDC 06:8CCC: 11        .byte $11   ; 4C 
- D 0 - I - 0x018CDD 06:8CCD: 01        .byte $01   ; 4D 
- D 0 - I - 0x018CDE 06:8CCE: 07        .byte $07   ; 4E 
- D 0 - I - 0x018CDF 06:8CCF: 00        .byte $00   ; 4F 
- D 0 - I - 0x018CE0 06:8CD0: 01        .byte $01   ; 50 
- D 0 - I - 0x018CE1 06:8CD1: 01        .byte $01   ; 51 
- D 0 - I - 0x018CE2 06:8CD2: 01        .byte $01   ; 52 
- D 0 - I - 0x018CE3 06:8CD3: 00        .byte $00   ; 53 
- D 0 - I - 0x018CE4 06:8CD4: 00        .byte $00   ; 54 
- D 0 - I - 0x018CE5 06:8CD5: 00        .byte $00   ; 55 
- D 0 - I - 0x018CE6 06:8CD6: 07        .byte $07   ; 56 
- D 0 - I - 0x018CE7 06:8CD7: 07        .byte $07   ; 57 
- D 0 - I - 0x018CE8 06:8CD8: 07        .byte $07   ; 58 
- D 0 - I - 0x018CE9 06:8CD9: 01        .byte $01   ; 59 
- D 0 - I - 0x018CEA 06:8CDA: 00        .byte $00   ; 5A 
- D 0 - I - 0x018CEB 06:8CDB: 00        .byte $00   ; 5B 
- D 0 - I - 0x018CEC 06:8CDC: 07        .byte $07   ; 5C 
- D 0 - I - 0x018CED 06:8CDD: 00        .byte $00   ; 5D 
- D 0 - I - 0x018CEE 06:8CDE: 07        .byte $07   ; 5E 
- D 0 - I - 0x018CEF 06:8CDF: 00        .byte $00   ; 5F 
- D 0 - I - 0x018CF0 06:8CE0: 00        .byte $00   ; 60 
- D 0 - I - 0x018CF1 06:8CE1: 10        .byte $10   ; 61 
- D 0 - I - 0x018CF2 06:8CE2: 07        .byte $07   ; 62 
- D 0 - I - 0x018CF3 06:8CE3: 00        .byte $00   ; 63 
- D 0 - I - 0x018CF4 06:8CE4: 00        .byte $00   ; 64 
- D 0 - I - 0x018CF5 06:8CE5: 00        .byte $00   ; 65 
- D 0 - I - 0x018CF6 06:8CE6: 00        .byte $00   ; 66 
- D 0 - I - 0x018CF7 06:8CE7: 00        .byte $00   ; 67 
- D 0 - I - 0x018CF8 06:8CE8: 07        .byte $07   ; 68 
- D 0 - I - 0x018CF9 06:8CE9: 07        .byte $07   ; 69 
- D 0 - I - 0x018CFA 06:8CEA: 02        .byte $02   ; 6A 
- D 0 - I - 0x018CFB 06:8CEB: 01        .byte $01   ; 6B 
- D 0 - I - 0x018CFC 06:8CEC: 07        .byte $07   ; 6C 
- D 0 - I - 0x018CFD 06:8CED: 00        .byte $00   ; 6D 
- D 0 - I - 0x018CFE 06:8CEE: 07        .byte $07   ; 6E 
- D 0 - I - 0x018CFF 06:8CEF: 00        .byte $00   ; 6F 
- D 0 - I - 0x018D00 06:8CF0: 00        .byte $00   ; 70 
- D 0 - I - 0x018D01 06:8CF1: 00        .byte $00   ; 71 
- D 0 - I - 0x018D02 06:8CF2: 00        .byte $00   ; 72 
- D 0 - I - 0x018D03 06:8CF3: 00        .byte $00   ; 73 
- D 0 - I - 0x018D04 06:8CF4: 00        .byte $00   ; 74 
- D 0 - I - 0x018D05 06:8CF5: 00        .byte $00   ; 75 
- D 0 - I - 0x018D06 06:8CF6: 00        .byte $00   ; 76 
- D 0 - I - 0x018D07 06:8CF7: 00        .byte $00   ; 77 
- D 0 - I - 0x018D08 06:8CF8: 00        .byte $00   ; 78 
- D 0 - I - 0x018D09 06:8CF9: 00        .byte $00   ; 79 
- D 0 - I - 0x018D0A 06:8CFA: 07        .byte $07   ; 7A 
- D 0 - I - 0x018D0B 06:8CFB: 00        .byte $00   ; 7B 
- D 0 - I - 0x018D0C 06:8CFC: 10        .byte $10   ; 7C 
- D 0 - I - 0x018D0D 06:8CFD: 07        .byte $07   ; 7D 
- D 0 - I - 0x018D0E 06:8CFE: 00        .byte $00   ; 7E 
- D 0 - I - 0x018D0F 06:8CFF: 00        .byte $00   ; 7F 



_off011_8D00_01:
_off011_8D00_02:
_off011_8D00_03:
_off011_8D00_04:
_off011_8D00_05:
_off011_8D00_06:
- D 0 - I - 0x018D10 06:8D00: 22        .byte $22   ; 00 
- D 0 - I - 0x018D11 06:8D01: 26        .byte $26   ; 01 
- D 0 - I - 0x018D12 06:8D02: 22        .byte $22   ; 02 
- D 0 - I - 0x018D13 06:8D03: 04        .byte $04   ; 03 
- D 0 - I - 0x018D14 06:8D04: 32        .byte $32   ; 04 
- D 0 - I - 0x018D15 06:8D05: 26        .byte $26   ; 05 
- D 0 - I - 0x018D16 06:8D06: 26        .byte $26   ; 06 
- D 0 - I - 0x018D17 06:8D07: 32        .byte $32   ; 07 
- D 0 - I - 0x018D18 06:8D08: 26        .byte $26   ; 08 
- D 0 - I - 0x018D19 06:8D09: 3B        .byte $3B   ; 09 
- D 0 - I - 0x018D1A 06:8D0A: 36        .byte $36   ; 0A 
- D 0 - I - 0x018D1B 06:8D0B: 3A        .byte $3A   ; 0B 
- D 0 - I - 0x018D1C 06:8D0C: 2A        .byte $2A   ; 0C 
- D 0 - I - 0x018D1D 06:8D0D: 32        .byte $32   ; 0D 
- D 0 - I - 0x018D1E 06:8D0E: 26        .byte $26   ; 0E 
- D 0 - I - 0x018D1F 06:8D0F: 0E        .byte $0E   ; 0F 
- D 0 - I - 0x018D20 06:8D10: E6        .byte $E6   ; 10 
- D 0 - I - 0x018D21 06:8D11: 26        .byte $26   ; 11 
- D 0 - I - 0x018D22 06:8D12: 06        .byte $06   ; 12 
- D 0 - I - 0x018D23 06:8D13: 22        .byte $22   ; 13 
- D 0 - I - 0x018D24 06:8D14: 82        .byte $82   ; 14 
- D 0 - I - 0x018D25 06:8D15: 36        .byte $36   ; 15 
- D 0 - I - 0x018D26 06:8D16: 22        .byte $22   ; 16 
- D 0 - I - 0x018D27 06:8D17: 86        .byte $86   ; 17 
- D 0 - I - 0x018D28 06:8D18: 26        .byte $26   ; 18 
- D 0 - I - 0x018D29 06:8D19: 22        .byte $22   ; 19 
- D 0 - I - 0x018D2A 06:8D1A: A2        .byte $A2   ; 1A 
- D 0 - I - 0x018D2B 06:8D1B: 22        .byte $22   ; 1B 
- D 0 - I - 0x018D2C 06:8D1C: 52        .byte $52   ; 1C 
- D 0 - I - 0x018D2D 06:8D1D: 82        .byte $82   ; 1D 
- D 0 - I - 0x018D2E 06:8D1E: 22        .byte $22   ; 1E 
- D 0 - I - 0x018D2F 06:8D1F: 22        .byte $22   ; 1F 
- D 0 - I - 0x018D30 06:8D20: 22        .byte $22   ; 20 
- D 0 - I - 0x018D31 06:8D21: 01        .byte $01   ; 21 
- D 0 - I - 0x018D32 06:8D22: 22        .byte $22   ; 22 
- D 0 - I - 0x018D33 06:8D23: 02        .byte $02   ; 23 
- D 0 - I - 0x018D34 06:8D24: 02        .byte $02   ; 24 
- D 0 - I - 0x018D35 06:8D25: A2        .byte $A2   ; 25 
- D 0 - I - 0x018D36 06:8D26: FE        .byte $FE   ; 26 
- D 0 - I - 0x018D37 06:8D27: 3E        .byte $3E   ; 27 
- D 0 - I - 0x018D38 06:8D28: 18        .byte $18   ; 28 
- D 0 - I - 0x018D39 06:8D29: E2        .byte $E2   ; 29 
- D 0 - I - 0x018D3A 06:8D2A: 0A        .byte $0A   ; 2A 
- D 0 - I - 0x018D3B 06:8D2B: F6        .byte $F6   ; 2B 
- D 0 - I - 0x018D3C 06:8D2C: 82        .byte $82   ; 2C 
- D 0 - I - 0x018D3D 06:8D2D: 02        .byte $02   ; 2D 
- D 0 - I - 0x018D3E 06:8D2E: E6        .byte $E6   ; 2E 
- D 0 - I - 0x018D3F 06:8D2F: FE        .byte $FE   ; 2F 
- D 0 - I - 0x018D40 06:8D30: E6        .byte $E6   ; 30 
- D 0 - I - 0x018D41 06:8D31: 22        .byte $22   ; 31 
- D 0 - I - 0x018D42 06:8D32: E6        .byte $E6   ; 32 
- D 0 - I - 0x018D43 06:8D33: 0A        .byte $0A   ; 33 
- D 0 - I - 0x018D44 06:8D34: 12        .byte $12   ; 34 
- D 0 - I - 0x018D45 06:8D35: 02        .byte $02   ; 35 
- D 0 - I - 0x018D46 06:8D36: 06        .byte $06   ; 36 
- D 0 - I - 0x018D47 06:8D37: 02        .byte $02   ; 37 
- D 0 - I - 0x018D48 06:8D38: 3E        .byte $3E   ; 38 
- D 0 - I - 0x018D49 06:8D39: 1E        .byte $1E   ; 39 
- D 0 - I - 0x018D4A 06:8D3A: 46        .byte $46   ; 3A 
- D 0 - I - 0x018D4B 06:8D3B: A6        .byte $A6   ; 3B 
- D 0 - I - 0x018D4C 06:8D3C: 1E        .byte $1E   ; 3C 
- D 0 - I - 0x018D4D 06:8D3D: 06        .byte $06   ; 3D 
- D 0 - I - 0x018D4E 06:8D3E: 26        .byte $26   ; 3E 
- D 0 - I - 0x018D4F 06:8D3F: EA        .byte $EA   ; 3F 
- D 0 - I - 0x018D50 06:8D40: 3E        .byte $3E   ; 40 
- D 0 - I - 0x018D51 06:8D41: 06        .byte $06   ; 41 
- D 0 - I - 0x018D52 06:8D42: 36        .byte $36   ; 42 
- D 0 - I - 0x018D53 06:8D43: 46        .byte $46   ; 43 
- D 0 - I - 0x018D54 06:8D44: 92        .byte $92   ; 44 
- D 0 - I - 0x018D55 06:8D45: E2        .byte $E2   ; 45 
- D 0 - I - 0x018D56 06:8D46: 51        .byte $51   ; 46 
- D 0 - I - 0x018D57 06:8D47: 02        .byte $02   ; 47 
- D 0 - I - 0x018D58 06:8D48: E6        .byte $E6   ; 48 
- D 0 - I - 0x018D59 06:8D49: 02        .byte $02   ; 49 
- D 0 - I - 0x018D5A 06:8D4A: 32        .byte $32   ; 4A 
- D 0 - I - 0x018D5B 06:8D4B: 22        .byte $22   ; 4B 
- D 0 - I - 0x018D5C 06:8D4C: 1E        .byte $1E   ; 4C 
- D 0 - I - 0x018D5D 06:8D4D: 26        .byte $26   ; 4D 
- D 0 - I - 0x018D5E 06:8D4E: 26        .byte $26   ; 4E 
- D 0 - I - 0x018D5F 06:8D4F: 42        .byte $42   ; 4F 
- D 0 - I - 0x018D60 06:8D50: 1E        .byte $1E   ; 50 
- D 0 - I - 0x018D61 06:8D51: 26        .byte $26   ; 51 
- D 0 - I - 0x018D62 06:8D52: A6        .byte $A6   ; 52 
- D 0 - I - 0x018D63 06:8D53: 22        .byte $22   ; 53 
- D 0 - I - 0x018D64 06:8D54: 82        .byte $82   ; 54 
- D 0 - I - 0x018D65 06:8D55: 02        .byte $02   ; 55 
- D 0 - I - 0x018D66 06:8D56: 30        .byte $30   ; 56 
- D 0 - I - 0x018D67 06:8D57: 02        .byte $02   ; 57 
- D 0 - I - 0x018D68 06:8D58: 11        .byte $11   ; 58 
- D 0 - I - 0x018D69 06:8D59: 1E        .byte $1E   ; 59 
- D 0 - I - 0x018D6A 06:8D5A: 86        .byte $86   ; 5A 
- D 0 - I - 0x018D6B 06:8D5B: 02        .byte $02   ; 5B 
- D 0 - I - 0x018D6C 06:8D5C: E2        .byte $E2   ; 5C 
- D 0 - I - 0x018D6D 06:8D5D: 26        .byte $26   ; 5D 
- D 0 - I - 0x018D6E 06:8D5E: 46        .byte $46   ; 5E 
- D 0 - I - 0x018D6F 06:8D5F: F6        .byte $F6   ; 5F 
- D 0 - I - 0x018D70 06:8D60: 06        .byte $06   ; 60 
- D 0 - I - 0x018D71 06:8D61: 36        .byte $36   ; 61 
- D 0 - I - 0x018D72 06:8D62: 22        .byte $22   ; 62 
- D 0 - I - 0x018D73 06:8D63: 06        .byte $06   ; 63 
- D 0 - I - 0x018D74 06:8D64: 02        .byte $02   ; 64 
- D 0 - I - 0x018D75 06:8D65: 02        .byte $02   ; 65 
- D 0 - I - 0x018D76 06:8D66: 36        .byte $36   ; 66 
- D 0 - I - 0x018D77 06:8D67: 02        .byte $02   ; 67 
- D 0 - I - 0x018D78 06:8D68: 32        .byte $32   ; 68 
- D 0 - I - 0x018D79 06:8D69: 02        .byte $02   ; 69 
- D 0 - I - 0x018D7A 06:8D6A: 1F        .byte $1F   ; 6A 
- D 0 - I - 0x018D7B 06:8D6B: FE        .byte $FE   ; 6B 
- D 0 - I - 0x018D7C 06:8D6C: 06        .byte $06   ; 6C 
- D 0 - I - 0x018D7D 06:8D6D: 22        .byte $22   ; 6D 
- D 0 - I - 0x018D7E 06:8D6E: 22        .byte $22   ; 6E 
- D 0 - I - 0x018D7F 06:8D6F: A6        .byte $A6   ; 6F 
- D 0 - I - 0x018D80 06:8D70: 26        .byte $26   ; 70 
- D 0 - I - 0x018D81 06:8D71: A6        .byte $A6   ; 71 
- D 0 - I - 0x018D82 06:8D72: 02        .byte $02   ; 72 
- D 0 - I - 0x018D83 06:8D73: 06        .byte $06   ; 73 
- D 0 - I - 0x018D84 06:8D74: 02        .byte $02   ; 74 
- D 0 - I - 0x018D85 06:8D75: 02        .byte $02   ; 75 
- D 0 - I - 0x018D86 06:8D76: A6        .byte $A6   ; 76 
- D 0 - I - 0x018D87 06:8D77: 02        .byte $02   ; 77 
- D 0 - I - 0x018D88 06:8D78: 86        .byte $86   ; 78 
- D 0 - I - 0x018D89 06:8D79: 02        .byte $02   ; 79 
- D 0 - I - 0x018D8A 06:8D7A: 12        .byte $12   ; 7A 
- D 0 - I - 0x018D8B 06:8D7B: 06        .byte $06   ; 7B 
- D 0 - I - 0x018D8C 06:8D7C: 26        .byte $26   ; 7C 
- D 0 - I - 0x018D8D 06:8D7D: 02        .byte $02   ; 7D 
- D 0 - I - 0x018D8E 06:8D7E: 06        .byte $06   ; 7E 
- D 0 - I - 0x018D8F 06:8D7F: 5E        .byte $5E   ; 7F 

- D 0 - I - 0x018D90 06:8D80: 26        .byte $26   ; 00 
- D 0 - I - 0x018D91 06:8D81: 3E        .byte $3E   ; 01 
- D 0 - I - 0x018D92 06:8D82: 06        .byte $06   ; 02 
- D 0 - I - 0x018D93 06:8D83: 24        .byte $24   ; 03 
- D 0 - I - 0x018D94 06:8D84: 36        .byte $36   ; 04 
- D 0 - I - 0x018D95 06:8D85: BE        .byte $BE   ; 05 
- D 0 - I - 0x018D96 06:8D86: 06        .byte $06   ; 06 
- D 0 - I - 0x018D97 06:8D87: 3E        .byte $3E   ; 07 
- D 0 - I - 0x018D98 06:8D88: 06        .byte $06   ; 08 
- D 0 - I - 0x018D99 06:8D89: 7B        .byte $7B   ; 09 
- D 0 - I - 0x018D9A 06:8D8A: 27        .byte $27   ; 0A 
- D 0 - I - 0x018D9B 06:8D8B: 3A        .byte $3A   ; 0B 
- D 0 - I - 0x018D9C 06:8D8C: 28        .byte $28   ; 0C 
- D 0 - I - 0x018D9D 06:8D8D: 5C        .byte $5C   ; 0D 
- D 0 - I - 0x018D9E 06:8D8E: 06        .byte $06   ; 0E 
- D 0 - I - 0x018D9F 06:8D8F: 6F        .byte $6F   ; 0F 
- D 0 - I - 0x018DA0 06:8D90: 36        .byte $36   ; 10 
- D 0 - I - 0x018DA1 06:8D91: A6        .byte $A6   ; 11 
- D 0 - I - 0x018DA2 06:8D92: 26        .byte $26   ; 12 
- D 0 - I - 0x018DA3 06:8D93: 3F        .byte $3F   ; 13 
- D 0 - I - 0x018DA4 06:8D94: E7        .byte $E7   ; 14 
- D 0 - I - 0x018DA5 06:8D95: 26        .byte $26   ; 15 
- D 0 - I - 0x018DA6 06:8D96: 26        .byte $26   ; 16 
- D 0 - I - 0x018DA7 06:8D97: 37        .byte $37   ; 17 
- D 0 - I - 0x018DA8 06:8D98: A6        .byte $A6   ; 18 
- D 0 - I - 0x018DA9 06:8D99: 22        .byte $22   ; 19 
- D 0 - I - 0x018DAA 06:8D9A: 06        .byte $06   ; 1A 
- D 0 - I - 0x018DAB 06:8D9B: 26        .byte $26   ; 1B 
- D 0 - I - 0x018DAC 06:8D9C: 2B        .byte $2B   ; 1C 
- D 0 - I - 0x018DAD 06:8D9D: 47        .byte $47   ; 1D 
- D 0 - I - 0x018DAE 06:8D9E: 27        .byte $27   ; 1E 
- D 0 - I - 0x018DAF 06:8D9F: 06        .byte $06   ; 1F 
- D 0 - I - 0x018DB0 06:8DA0: 26        .byte $26   ; 20 
- D 0 - I - 0x018DB1 06:8DA1: 71        .byte $71   ; 21 
- D 0 - I - 0x018DB2 06:8DA2: 26        .byte $26   ; 22 
- D 0 - I - 0x018DB3 06:8DA3: 2B        .byte $2B   ; 23 
- D 0 - I - 0x018DB4 06:8DA4: 46        .byte $46   ; 24 
- D 0 - I - 0x018DB5 06:8DA5: 24        .byte $24   ; 25 
- D 0 - I - 0x018DB6 06:8DA6: 27        .byte $27   ; 26 
- D 0 - I - 0x018DB7 06:8DA7: 26        .byte $26   ; 27 
- D 0 - I - 0x018DB8 06:8DA8: 68        .byte $68   ; 28 
- D 0 - I - 0x018DB9 06:8DA9: 33        .byte $33   ; 29 
- D 0 - I - 0x018DBA 06:8DAA: 86        .byte $86   ; 2A 
- D 0 - I - 0x018DBB 06:8DAB: 26        .byte $26   ; 2B 
- D 0 - I - 0x018DBC 06:8DAC: 23        .byte $23   ; 2C 
- D 0 - I - 0x018DBD 06:8DAD: 12        .byte $12   ; 2D 
- D 0 - I - 0x018DBE 06:8DAE: 87        .byte $87   ; 2E 
- D 0 - I - 0x018DBF 06:8DAF: 27        .byte $27   ; 2F 
- D 0 - I - 0x018DC0 06:8DB0: 26        .byte $26   ; 30 
- D 0 - I - 0x018DC1 06:8DB1: 23        .byte $23   ; 31 
- D 0 - I - 0x018DC2 06:8DB2: 05        .byte $05   ; 32 
- D 0 - I - 0x018DC3 06:8DB3: 33        .byte $33   ; 33 
- D 0 - I - 0x018DC4 06:8DB4: 86        .byte $86   ; 34 
- D 0 - I - 0x018DC5 06:8DB5: 27        .byte $27   ; 35 
- D 0 - I - 0x018DC6 06:8DB6: 26        .byte $26   ; 36 
- D 0 - I - 0x018DC7 06:8DB7: 36        .byte $36   ; 37 
- D 0 - I - 0x018DC8 06:8DB8: A6        .byte $A6   ; 38 
- D 0 - I - 0x018DC9 06:8DB9: 26        .byte $26   ; 39 
- D 0 - I - 0x018DCA 06:8DBA: 46        .byte $46   ; 3A 
- D 0 - I - 0x018DCB 06:8DBB: 26        .byte $26   ; 3B 
- D 0 - I - 0x018DCC 06:8DBC: 23        .byte $23   ; 3C 
- D 0 - I - 0x018DCD 06:8DBD: 12        .byte $12   ; 3D 
- D 0 - I - 0x018DCE 06:8DBE: 86        .byte $86   ; 3E 
- D 0 - I - 0x018DCF 06:8DBF: 27        .byte $27   ; 3F 
- D 0 - I - 0x018DD0 06:8DC0: 22        .byte $22   ; 40 
- D 0 - I - 0x018DD1 06:8DC1: E6        .byte $E6   ; 41 
- D 0 - I - 0x018DD2 06:8DC2: 30        .byte $30   ; 42 
- D 0 - I - 0x018DD3 06:8DC3: 83        .byte $83   ; 43 
- D 0 - I - 0x018DD4 06:8DC4: 07        .byte $07   ; 44 
- D 0 - I - 0x018DD5 06:8DC5: 27        .byte $27   ; 45 
- D 0 - I - 0x018DD6 06:8DC6: 51        .byte $51   ; 46 
- D 0 - I - 0x018DD7 06:8DC7: 23        .byte $23   ; 47 
- D 0 - I - 0x018DD8 06:8DC8: 07        .byte $07   ; 48 
- D 0 - I - 0x018DD9 06:8DC9: 37        .byte $37   ; 49 
- D 0 - I - 0x018DDA 06:8DCA: A2        .byte $A2   ; 4A 
- D 0 - I - 0x018DDB 06:8DCB: 06        .byte $06   ; 4B 
- D 0 - I - 0x018DDC 06:8DCC: 36        .byte $36   ; 4C 
- D 0 - I - 0x018DDD 06:8DCD: AA        .byte $AA   ; 4D 
- D 0 - I - 0x018DDE 06:8DCE: 44        .byte $44   ; 4E 
- D 0 - I - 0x018DDF 06:8DCF: 46        .byte $46   ; 4F 
- D 0 - I - 0x018DE0 06:8DD0: 27        .byte $27   ; 50 
- D 0 - I - 0x018DE1 06:8DD1: 22        .byte $22   ; 51 
- D 0 - I - 0x018DE2 06:8DD2: 17        .byte $17   ; 52 
- D 0 - I - 0x018DE3 06:8DD3: A3        .byte $A3   ; 53 
- D 0 - I - 0x018DE4 06:8DD4: 07        .byte $07   ; 54 
- D 0 - I - 0x018DE5 06:8DD5: 26        .byte $26   ; 55 
- D 0 - I - 0x018DE6 06:8DD6: 76        .byte $76   ; 56 
- D 0 - I - 0x018DE7 06:8DD7: 26        .byte $26   ; 57 
- D 0 - I - 0x018DE8 06:8DD8: 22        .byte $22   ; 58 
- D 0 - I - 0x018DE9 06:8DD9: 36        .byte $36   ; 59 
- D 0 - I - 0x018DEA 06:8DDA: B2        .byte $B2   ; 5A 
- D 0 - I - 0x018DEB 06:8DDB: 87        .byte $87   ; 5B 
- D 0 - I - 0x018DEC 06:8DDC: 37        .byte $37   ; 5C 
- D 0 - I - 0x018DED 06:8DDD: BE        .byte $BE   ; 5D 
- D 0 - I - 0x018DEE 06:8DDE: 06        .byte $06   ; 5E 
- D 0 - I - 0x018DEF 06:8DDF: 27        .byte $27   ; 5F 
- D 0 - I - 0x018DF0 06:8DE0: 23        .byte $23   ; 60 
- D 0 - I - 0x018DF1 06:8DE1: 02        .byte $02   ; 61 
- D 0 - I - 0x018DF2 06:8DE2: 07        .byte $07   ; 62 
- D 0 - I - 0x018DF3 06:8DE3: 23        .byte $23   ; 63 
- D 0 - I - 0x018DF4 06:8DE4: 07        .byte $07   ; 64 
- D 0 - I - 0x018DF5 06:8DE5: 36        .byte $36   ; 65 
- D 0 - I - 0x018DF6 06:8DE6: A6        .byte $A6   ; 66 
- D 0 - I - 0x018DF7 06:8DE7: 32        .byte $32   ; 67 
- D 0 - I - 0x018DF8 06:8DE8: 86        .byte $86   ; 68 
- D 0 - I - 0x018DF9 06:8DE9: 26        .byte $26   ; 69 
- D 0 - I - 0x018DFA 06:8DEA: 1F        .byte $1F   ; 6A 
- D 0 - I - 0x018DFB 06:8DEB: 26        .byte $26   ; 6B 
- D 0 - I - 0x018DFC 06:8DEC: 22        .byte $22   ; 6C 
- D 0 - I - 0x018DFD 06:8DED: E3        .byte $E3   ; 6D 
- D 0 - I - 0x018DFE 06:8DEE: 06        .byte $06   ; 6E 
- D 0 - I - 0x018DFF 06:8DEF: 26        .byte $26   ; 6F 
- D 0 - I - 0x018E00 06:8DF0: 2B        .byte $2B   ; 70 
- D 0 - I - 0x018E01 06:8DF1: 46        .byte $46   ; 71 
- D 0 - I - 0x018E02 06:8DF2: 27        .byte $27   ; 72 
- D 0 - I - 0x018E03 06:8DF3: 36        .byte $36   ; 73 
- D 0 - I - 0x018E04 06:8DF4: 27        .byte $27   ; 74 
- D 0 - I - 0x018E05 06:8DF5: 27        .byte $27   ; 75 
- D 0 - I - 0x018E06 06:8DF6: 26        .byte $26   ; 76 
- D 0 - I - 0x018E07 06:8DF7: 23        .byte $23   ; 77 
- D 0 - I - 0x018E08 06:8DF8: 06        .byte $06   ; 78 
- D 0 - I - 0x018E09 06:8DF9: 27        .byte $27   ; 79 
- D 0 - I - 0x018E0A 06:8DFA: 12        .byte $12   ; 7A 
- D 0 - I - 0x018E0B 06:8DFB: 26        .byte $26   ; 7B 
- D 0 - I - 0x018E0C 06:8DFC: 23        .byte $23   ; 7C 
- D 0 - I - 0x018E0D 06:8DFD: 03        .byte $03   ; 7D 
- D 0 - I - 0x018E0E 06:8DFE: 06        .byte $06   ; 7E 
- D 0 - I - 0x018E0F 06:8DFF: 5E        .byte $5E   ; 7F 

- D 0 - I - 0x018E10 06:8E00: 00        .byte $00   ; 00 
- D 0 - I - 0x018E11 06:8E01: 63        .byte $63   ; 01 
- D 0 - I - 0x018E12 06:8E02: 33        .byte $33   ; 02 
- D 0 - I - 0x018E13 06:8E03: 69        .byte $69   ; 03 
- D 0 - I - 0x018E14 06:8E04: DB        .byte $DB   ; 04 
- D 0 - I - 0x018E15 06:8E05: 03        .byte $03   ; 05 
- D 0 - I - 0x018E16 06:8E06: 6D        .byte $6D   ; 06 
- D 0 - I - 0x018E17 06:8E07: 3D        .byte $3D   ; 07 
- D 0 - I - 0x018E18 06:8E08: 00        .byte $00   ; 08 
- D 0 - I - 0x018E19 06:8E09: 68        .byte $68   ; 09 
- D 0 - I - 0x018E1A 06:8E0A: AD        .byte $AD   ; 0A 
- D 0 - I - 0x018E1B 06:8E0B: 68        .byte $68   ; 0B 
- D 0 - I - 0x018E1C 06:8E0C: 12        .byte $12   ; 0C 
- D 0 - I - 0x018E1D 06:8E0D: 11        .byte $11   ; 0D 
- D 0 - I - 0x018E1E 06:8E0E: 2C        .byte $2C   ; 0E 
- D 0 - I - 0x018E1F 06:8E0F: 6B        .byte $6B   ; 0F 
- D 0 - I - 0x018E20 06:8E10: 04        .byte $04   ; 10 
- D 0 - I - 0x018E21 06:8E11: 52        .byte $52   ; 11 
- D 0 - I - 0x018E22 06:8E12: 2D        .byte $2D   ; 12 
- D 0 - I - 0x018E23 06:8E13: 7B        .byte $7B   ; 13 
- D 0 - I - 0x018E24 06:8E14: 7B        .byte $7B   ; 14 
- D 0 - I - 0x018E25 06:8E15: 86        .byte $86   ; 15 
- D 0 - I - 0x018E26 06:8E16: 00        .byte $00   ; 16 
- D 0 - I - 0x018E27 06:8E17: 05        .byte $05   ; 17 
- D 0 - I - 0x018E28 06:8E18: F9        .byte $F9   ; 18 
- D 0 - I - 0x018E29 06:8E19: 3C        .byte $3C   ; 19 
- D 0 - I - 0x018E2A 06:8E1A: 4B        .byte $4B   ; 1A 
- D 0 - I - 0x018E2B 06:8E1B: 00        .byte $00   ; 1B 
- D 0 - I - 0x018E2C 06:8E1C: FE        .byte $FE   ; 1C 
- D 0 - I - 0x018E2D 06:8E1D: DB        .byte $DB   ; 1D 
- D 0 - I - 0x018E2E 06:8E1E: 8C        .byte $8C   ; 1E 
- D 0 - I - 0x018E2F 06:8E1F: B8        .byte $B8   ; 1F 
- D 0 - I - 0x018E30 06:8E20: 00        .byte $00   ; 20 
- D 0 - I - 0x018E31 06:8E21: 68        .byte $68   ; 21 
- D 0 - I - 0x018E32 06:8E22: DD        .byte $DD   ; 22 
- D 0 - I - 0x018E33 06:8E23: 52        .byte $52   ; 23 
- D 0 - I - 0x018E34 06:8E24: 2C        .byte $2C   ; 24 
- D 0 - I - 0x018E35 06:8E25: 36        .byte $36   ; 25 
- D 0 - I - 0x018E36 06:8E26: 33        .byte $33   ; 26 
- D 0 - I - 0x018E37 06:8E27: 01        .byte $01   ; 27 
- D 0 - I - 0x018E38 06:8E28: 6A        .byte $6A   ; 28 
- D 0 - I - 0x018E39 06:8E29: DB        .byte $DB   ; 29 
- D 0 - I - 0x018E3A 06:8E2A: DB        .byte $DB   ; 2A 
- D 0 - I - 0x018E3B 06:8E2B: 03        .byte $03   ; 2B 
- D 0 - I - 0x018E3C 06:8E2C: 53        .byte $53   ; 2C 
- D 0 - I - 0x018E3D 06:8E2D: 00        .byte $00   ; 2D 
- D 0 - I - 0x018E3E 06:8E2E: 32        .byte $32   ; 2E 
- D 0 - I - 0x018E3F 06:8E2F: 31        .byte $31   ; 2F 
- D 0 - I - 0x018E40 06:8E30: 86        .byte $86   ; 30 
- D 0 - I - 0x018E41 06:8E31: FC        .byte $FC   ; 31 
- D 0 - I - 0x018E42 06:8E32: 3C        .byte $3C   ; 32 
- D 0 - I - 0x018E43 06:8E33: FD        .byte $FD   ; 33 
- D 0 - I - 0x018E44 06:8E34: DB        .byte $DB   ; 34 
- D 0 - I - 0x018E45 06:8E35: AA        .byte $AA   ; 35 
- D 0 - I - 0x018E46 06:8E36: 3C        .byte $3C   ; 36 
- D 0 - I - 0x018E47 06:8E37: D5        .byte $D5   ; 37 
- D 0 - I - 0x018E48 06:8E38: 32        .byte $32   ; 38 
- D 0 - I - 0x018E49 06:8E39: 70        .byte $70   ; 39 
- D 0 - I - 0x018E4A 06:8E3A: 00        .byte $00   ; 3A 
- D 0 - I - 0x018E4B 06:8E3B: 0B        .byte $0B   ; 3B 
- D 0 - I - 0x018E4C 06:8E3C: AD        .byte $AD   ; 3C 
- D 0 - I - 0x018E4D 06:8E3D: B0        .byte $B0   ; 3D 
- D 0 - I - 0x018E4E 06:8E3E: 35        .byte $35   ; 3E 
- D 0 - I - 0x018E4F 06:8E3F: 0B        .byte $0B   ; 3F 
- D 0 - I - 0x018E50 06:8E40: F7        .byte $F7   ; 40 
- D 0 - I - 0x018E51 06:8E41: 53        .byte $53   ; 41 
- D 0 - I - 0x018E52 06:8E42: 12        .byte $12   ; 42 
- D 0 - I - 0x018E53 06:8E43: F6        .byte $F6   ; 43 
- D 0 - I - 0x018E54 06:8E44: F1        .byte $F1   ; 44 
- D 0 - I - 0x018E55 06:8E45: 45        .byte $45   ; 45 
- D 0 - I - 0x018E56 06:8E46: 69        .byte $69   ; 46 
- D 0 - I - 0x018E57 06:8E47: 05        .byte $05   ; 47 
- D 0 - I - 0x018E58 06:8E48: EE        .byte $EE   ; 48 
- D 0 - I - 0x018E59 06:8E49: DB        .byte $DB   ; 49 
- D 0 - I - 0x018E5A 06:8E4A: B0        .byte $B0   ; 4A 
- D 0 - I - 0x018E5B 06:8E4B: 4B        .byte $4B   ; 4B 
- D 0 - I - 0x018E5C 06:8E4C: 8C        .byte $8C   ; 4C 
- D 0 - I - 0x018E5D 06:8E4D: 4B        .byte $4B   ; 4D 
- D 0 - I - 0x018E5E 06:8E4E: 0F        .byte $0F   ; 4E 
- D 0 - I - 0x018E5F 06:8E4F: 00        .byte $00   ; 4F 
- D 0 - I - 0x018E60 06:8E50: FD        .byte $FD   ; 50 
- D 0 - I - 0x018E61 06:8E51: 09        .byte $09   ; 51 
- D 0 - I - 0x018E62 06:8E52: FC        .byte $FC   ; 52 
- D 0 - I - 0x018E63 06:8E53: 72        .byte $72   ; 53 
- D 0 - I - 0x018E64 06:8E54: FC        .byte $FC   ; 54 
- D 0 - I - 0x018E65 06:8E55: A8        .byte $A8   ; 55 
- D 0 - I - 0x018E66 06:8E56: 69        .byte $69   ; 56 
- D 0 - I - 0x018E67 06:8E57: 6A        .byte $6A   ; 57 
- D 0 - I - 0x018E68 06:8E58: 68        .byte $68   ; 58 
- D 0 - I - 0x018E69 06:8E59: 13        .byte $13   ; 59 
- D 0 - I - 0x018E6A 06:8E5A: 0B        .byte $0B   ; 5A 
- D 0 - I - 0x018E6B 06:8E5B: EE        .byte $EE   ; 5B 
- D 0 - I - 0x018E6C 06:8E5C: FE        .byte $FE   ; 5C 
- D 0 - I - 0x018E6D 06:8E5D: 3D        .byte $3D   ; 5D 
- D 0 - I - 0x018E6E 06:8E5E: B0        .byte $B0   ; 5E 
- D 0 - I - 0x018E6F 06:8E5F: 38        .byte $38   ; 5F 
- D 0 - I - 0x018E70 06:8E60: 72        .byte $72   ; 60 
- D 0 - I - 0x018E71 06:8E61: F6        .byte $F6   ; 61 
- D 0 - I - 0x018E72 06:8E62: AD        .byte $AD   ; 62 
- D 0 - I - 0x018E73 06:8E63: FD        .byte $FD   ; 63 
- D 0 - I - 0x018E74 06:8E64: 7B        .byte $7B   ; 64 
- D 0 - I - 0x018E75 06:8E65: 86        .byte $86   ; 65 
- D 0 - I - 0x018E76 06:8E66: 31        .byte $31   ; 66 
- D 0 - I - 0x018E77 06:8E67: 06        .byte $06   ; 67 
- D 0 - I - 0x018E78 06:8E68: 9B        .byte $9B   ; 68 
- D 0 - I - 0x018E79 06:8E69: 70        .byte $70   ; 69 
- D 0 - I - 0x018E7A 06:8E6A: 6A        .byte $6A   ; 6A 
- D 0 - I - 0x018E7B 06:8E6B: 13        .byte $13   ; 6B 
- D 0 - I - 0x018E7C 06:8E6C: B8        .byte $B8   ; 6C 
- D 0 - I - 0x018E7D 06:8E6D: 38        .byte $38   ; 6D 
- D 0 - I - 0x018E7E 06:8E6E: 6C        .byte $6C   ; 6E 
- D 0 - I - 0x018E7F 06:8E6F: 2D        .byte $2D   ; 6F 
- D 0 - I - 0x018E80 06:8E70: DD        .byte $DD   ; 70 
- D 0 - I - 0x018E81 06:8E71: FD        .byte $FD   ; 71 
- D 0 - I - 0x018E82 06:8E72: 00        .byte $00   ; 72 
- D 0 - I - 0x018E83 06:8E73: 6A        .byte $6A   ; 73 
- D 0 - I - 0x018E84 06:8E74: 00        .byte $00   ; 74 
- D 0 - I - 0x018E85 06:8E75: C0        .byte $C0   ; 75 
- D 0 - I - 0x018E86 06:8E76: E7        .byte $E7   ; 76 
- D 0 - I - 0x018E87 06:8E77: 00        .byte $00   ; 77 
- D 0 - I - 0x018E88 06:8E78: 46        .byte $46   ; 78 
- D 0 - I - 0x018E89 06:8E79: 00        .byte $00   ; 79 
- D 0 - I - 0x018E8A 06:8E7A: 69        .byte $69   ; 7A 
- D 0 - I - 0x018E8B 06:8E7B: 70        .byte $70   ; 7B 
- D 0 - I - 0x018E8C 06:8E7C: EF        .byte $EF   ; 7C 
- D 0 - I - 0x018E8D 06:8E7D: 00        .byte $00   ; 7D 
- D 0 - I - 0x018E8E 06:8E7E: 6D        .byte $6D   ; 7E 
- D 0 - I - 0x018E8F 06:8E7F: 6A        .byte $6A   ; 7F 

- D 0 - I - 0x018E90 06:8E80: 29        .byte $00 + $00 + con_obj_id_29   ; 00 
- D 0 - I - 0x018E91 06:8E81: 5C        .byte $40 + $00 + con_obj_id_1C   ; 01 
- D 0 - I - 0x018E92 06:8E82: 06        .byte $00 + $00 + con_obj_id_06   ; 02 
- D 0 - I - 0x018E93 06:8E83: 3E        .byte $00 + $00 + con_obj_id_3E   ; 03 
- D 0 - I - 0x018E94 06:8E84: 1C        .byte $00 + $00 + con_obj_id_1C   ; 04 
- D 0 - I - 0x018E95 06:8E85: 85        .byte $00 + $80 + con_obj_id_45 - $40   ; 05 
- D 0 - I - 0x018E96 06:8E86: 46        .byte $40 + $00 + con_obj_id_06   ; 06 
- D 0 - I - 0x018E97 06:8E87: 04        .byte $00 + $00 + con_obj_id_04   ; 07 
- D 0 - I - 0x018E98 06:8E88: 29        .byte $00 + $00 + con_obj_id_29   ; 08 
- D 0 - I - 0x018E99 06:8E89: 3E        .byte $00 + $00 + con_obj_id_3E   ; 09 
- D 0 - I - 0x018E9A 06:8E8A: A3        .byte $00 + $80 + con_obj_id_63 - $40   ; 0A 
- D 0 - I - 0x018E9B 06:8E8B: 3F        .byte $00 + $00 + con_obj_id_3F   ; 0B 
- D 0 - I - 0x018E9C 06:8E8C: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 0C 
- D 0 - I - 0x018E9D 06:8E8D: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 0D 
- D 0 - I - 0x018E9E 06:8E8E: 5F        .byte $40 + $00 + con_obj_id_1F   ; 0E 
- D 0 - I - 0x018E9F 06:8E8F: 3E        .byte $00 + $00 + con_obj_id_3E   ; 0F 
- D 0 - I - 0x018EA0 06:8E90: 85        .byte $00 + $80 + con_obj_id_45 - $40   ; 10 
- D 0 - I - 0x018EA1 06:8E91: 1B        .byte $00 + $00 + con_obj_id_1B   ; 11 
- D 0 - I - 0x018EA2 06:8E92: 1B        .byte $00 + $00 + con_obj_id_1B   ; 12 
- D 0 - I - 0x018EA3 06:8E93: A4        .byte $00 + $80 + con_obj_id_64 - $40   ; 13 
- D 0 - I - 0x018EA4 06:8E94: 8B        .byte $00 + $80 + con_obj_id_4B - $40   ; 14 
- D 0 - I - 0x018EA5 06:8E95: 03        .byte $00 + $00 + con_obj_id_03   ; 15 
- D 0 - I - 0x018EA6 06:8E96: 29        .byte $00 + $00 + con_obj_id_29   ; 16 
- D 0 - I - 0x018EA7 06:8E97: 24        .byte $00 + $00 + con_obj_id_24   ; 17 
- D 0 - I - 0x018EA8 06:8E98: 9B        .byte $00 + $80 + con_obj_id_5B - $40   ; 18 
- D 0 - I - 0x018EA9 06:8E99: 00        .byte $00 + $00 + con_obj_id_null   ; 19 
- D 0 - I - 0x018EAA 06:8E9A: 02        .byte $00 + $00 + con_obj_id_02   ; 1A 
- D 0 - I - 0x018EAB 06:8E9B: 29        .byte $00 + $00 + con_obj_id_29   ; 1B 
- D 0 - I - 0x018EAC 06:8E9C: 95        .byte $00 + $80 + con_obj_id_55 - $40   ; 1C 
- D 0 - I - 0x018EAD 06:8E9D: 13        .byte $00 + $00 + con_obj_id_13   ; 1D 
- D 0 - I - 0x018EAE 06:8E9E: 23        .byte $00 + $00 + con_obj_id_23   ; 1E 
- D 0 - I - 0x018EAF 06:8E9F: CC        .byte $40 + $80 + con_obj_id_4C - $40   ; 1F 
- D 0 - I - 0x018EB0 06:8EA0: 29        .byte $00 + $00 + con_obj_id_29   ; 20 
- D 0 - I - 0x018EB1 06:8EA1: 3E        .byte $00 + $00 + con_obj_id_3E   ; 21 
- D 0 - I - 0x018EB2 06:8EA2: 1C        .byte $00 + $00 + con_obj_id_1C   ; 22 
- D 0 - I - 0x018EB3 06:8EA3: 19        .byte $00 + $00 + con_obj_id_19   ; 23 
- D 0 - I - 0x018EB4 06:8EA4: 47        .byte $40 + $00 + con_obj_id_07   ; 24 
- D 0 - I - 0x018EB5 06:8EA5: 26        .byte $00 + $00 + con_obj_id_26   ; 25 
- D 0 - I - 0x018EB6 06:8EA6: 24        .byte $00 + $00 + con_obj_id_24   ; 26 
- D 0 - I - 0x018EB7 06:8EA7: 9D        .byte $00 + $80 + con_obj_id_5D - $40   ; 27 
- D 0 - I - 0x018EB8 06:8EA8: 3E        .byte $00 + $00 + con_obj_id_3E   ; 28 
- D 0 - I - 0x018EB9 06:8EA9: 23        .byte $00 + $00 + con_obj_id_23   ; 29 
- D 0 - I - 0x018EBA 06:8EAA: 0E        .byte $00 + $00 + con_obj_id_0E   ; 2A 
- D 0 - I - 0x018EBB 06:8EAB: 85        .byte $00 + $80 + con_obj_id_45 - $40   ; 2B 
- D 0 - I - 0x018EBC 06:8EAC: 17        .byte $00 + $00 + con_obj_id_17   ; 2C 
- D 0 - I - 0x018EBD 06:8EAD: 60        .byte $40 + $00 + con_obj_id_20   ; 2D 
- D 0 - I - 0x018EBE 06:8EAE: 24        .byte $00 + $00 + con_obj_id_24   ; 2E 
- D 0 - I - 0x018EBF 06:8EAF: 24        .byte $00 + $00 + con_obj_id_24   ; 2F 
- D 0 - I - 0x018EC0 06:8EB0: 1B        .byte $00 + $00 + con_obj_id_1B   ; 30 
- D 0 - I - 0x018EC1 06:8EB1: 98        .byte $00 + $80 + con_obj_id_58 - $40   ; 31 
- D 0 - I - 0x018EC2 06:8EB2: 25        .byte $00 + $00 + con_obj_id_25   ; 32 
- D 0 - I - 0x018EC3 06:8EB3: 93        .byte $00 + $80 + con_obj_id_53 - $40   ; 33 
- D 0 - I - 0x018EC4 06:8EB4: 0E        .byte $00 + $00 + con_obj_id_0E   ; 34 
- D 0 - I - 0x018EC5 06:8EB5: 23        .byte $00 + $00 + con_obj_id_23   ; 35 
- D 0 - I - 0x018EC6 06:8EB6: 4A        .byte $40 + $00 + con_obj_id_0A   ; 36 
- D 0 - I - 0x018EC7 06:8EB7: 1E        .byte $00 + $00 + con_obj_id_1E   ; 37 
- D 0 - I - 0x018EC8 06:8EB8: 25        .byte $00 + $00 + con_obj_id_25   ; 38 
- D 0 - I - 0x018EC9 06:8EB9: 07        .byte $00 + $00 + con_obj_id_07   ; 39 
- D 0 - I - 0x018ECA 06:8EBA: 1C        .byte $00 + $00 + con_obj_id_1C   ; 3A 
- D 0 - I - 0x018ECB 06:8EBB: 1B        .byte $00 + $00 + con_obj_id_1B   ; 3B 
- D 0 - I - 0x018ECC 06:8EBC: 95        .byte $00 + $80 + con_obj_id_55 - $40   ; 3C 
- D 0 - I - 0x018ECD 06:8EBD: 83        .byte $00 + $80 + con_obj_id_43 - $40   ; 3D 
- D 0 - I - 0x018ECE 06:8EBE: 26        .byte $00 + $00 + con_obj_id_26   ; 3E 
- D 0 - I - 0x018ECF 06:8EBF: 23        .byte $00 + $00 + con_obj_id_23   ; 3F 
- D 0 - I - 0x018ED0 06:8EC0: 8D        .byte $00 + $80 + con_obj_id_4D - $40   ; 40 
- D 0 - I - 0x018ED1 06:8EC1: 26        .byte $00 + $00 + con_obj_id_26   ; 41 
- D 0 - I - 0x018ED2 06:8EC2: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 42 
- D 0 - I - 0x018ED3 06:8EC3: 94        .byte $00 + $80 + con_obj_id_54 - $40   ; 43 
- D 0 - I - 0x018ED4 06:8EC4: 98        .byte $00 + $80 + con_obj_id_58 - $40   ; 44 
- D 0 - I - 0x018ED5 06:8EC5: 24        .byte $00 + $00 + con_obj_id_24   ; 45 
- D 0 - I - 0x018ED6 06:8EC6: 3F        .byte $00 + $00 + con_obj_id_3F   ; 46 
- D 0 - I - 0x018ED7 06:8EC7: 15        .byte $00 + $00 + con_obj_id_15   ; 47 
- D 0 - I - 0x018ED8 06:8EC8: 98        .byte $00 + $80 + con_obj_id_58 - $40   ; 48 
- D 0 - I - 0x018ED9 06:8EC9: 23        .byte $00 + $00 + con_obj_id_23   ; 49 
- D 0 - I - 0x018EDA 06:8ECA: 8D        .byte $00 + $80 + con_obj_id_4D - $40   ; 4A 
- D 0 - I - 0x018EDB 06:8ECB: 0A        .byte $00 + $00 + con_obj_id_0A   ; 4B 
- D 0 - I - 0x018EDC 06:8ECC: 06        .byte $00 + $00 + con_obj_id_06   ; 4C 
- D 0 - I - 0x018EDD 06:8ECD: 0A        .byte $00 + $00 + con_obj_id_0A   ; 4D 
- D 0 - I - 0x018EDE 06:8ECE: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 4E 
- D 0 - I - 0x018EDF 06:8ECF: 29        .byte $00 + $00 + con_obj_id_29   ; 4F 
- D 0 - I - 0x018EE0 06:8ED0: 95        .byte $00 + $80 + con_obj_id_55 - $40   ; 50 
- D 0 - I - 0x018EE1 06:8ED1: C1        .byte $40 + $80 + con_obj_id_41 - $40   ; 51 
- D 0 - I - 0x018EE2 06:8ED2: A3        .byte $00 + $80 + con_obj_id_63 - $40   ; 52 
- D 0 - I - 0x018EE3 06:8ED3: 95        .byte $00 + $80 + con_obj_id_55 - $40   ; 53 
- D 0 - I - 0x018EE4 06:8ED4: A4        .byte $00 + $80 + con_obj_id_64 - $40   ; 54 
- D 0 - I - 0x018EE5 06:8ED5: 11        .byte $00 + $00 + con_obj_id_11   ; 55 
- D 0 - I - 0x018EE6 06:8ED6: 3E        .byte $00 + $00 + con_obj_id_3E   ; 56 
- D 0 - I - 0x018EE7 06:8ED7: 1F        .byte $00 + $00 + con_obj_id_1F   ; 57 
- D 0 - I - 0x018EE8 06:8ED8: 3E        .byte $00 + $00 + con_obj_id_3E   ; 58 
- D 0 - I - 0x018EE9 06:8ED9: 4A        .byte $40 + $00 + con_obj_id_0A   ; 59 
- D 0 - I - 0x018EEA 06:8EDA: 1E        .byte $00 + $00 + con_obj_id_1E   ; 5A 
- D 0 - I - 0x018EEB 06:8EDB: A3        .byte $00 + $80 + con_obj_id_63 - $40   ; 5B 
- D 0 - I - 0x018EEC 06:8EDC: 9F        .byte $00 + $80 + con_obj_id_5F - $40   ; 5C 
- D 0 - I - 0x018EED 06:8EDD: 04        .byte $00 + $00 + con_obj_id_04   ; 5D 
- D 0 - I - 0x018EEE 06:8EDE: CD        .byte $40 + $80 + con_obj_id_4D - $40   ; 5E 
- D 0 - I - 0x018EEF 06:8EDF: 24        .byte $00 + $00 + con_obj_id_24   ; 5F 
- D 0 - I - 0x018EF0 06:8EE0: 97        .byte $00 + $80 + con_obj_id_57 - $40   ; 60 
- D 0 - I - 0x018EF1 06:8EE1: 9D        .byte $00 + $80 + con_obj_id_5D - $40   ; 61 
- D 0 - I - 0x018EF2 06:8EE2: A3        .byte $00 + $80 + con_obj_id_63 - $40   ; 62 
- D 0 - I - 0x018EF3 06:8EE3: 96        .byte $00 + $80 + con_obj_id_56 - $40   ; 63 
- D 0 - I - 0x018EF4 06:8EE4: 8C        .byte $00 + $80 + con_obj_id_4C - $40   ; 64 
- D 0 - I - 0x018EF5 06:8EE5: 0D        .byte $00 + $00 + con_obj_id_0D   ; 65 
- D 0 - I - 0x018EF6 06:8EE6: 25        .byte $00 + $00 + con_obj_id_25   ; 66 
- D 0 - I - 0x018EF7 06:8EE7: 23        .byte $00 + $00 + con_obj_id_23   ; 67 
- D 0 - I - 0x018EF8 06:8EE8: 5A        .byte $40 + $00 + con_obj_id_1A   ; 68 
- D 0 - I - 0x018EF9 06:8EE9: 10        .byte $00 + $00 + con_obj_id_10   ; 69 
- D 0 - I - 0x018EFA 06:8EEA: 3F        .byte $00 + $00 + con_obj_id_3F   ; 6A 
- D 0 - I - 0x018EFB 06:8EEB: 11        .byte $00 + $00 + con_obj_id_11   ; 6B 
- D 0 - I - 0x018EFC 06:8EEC: 9D        .byte $00 + $80 + con_obj_id_5D - $40   ; 6C 
- D 0 - I - 0x018EFD 06:8EED: 23        .byte $00 + $00 + con_obj_id_23   ; 6D 
- D 0 - I - 0x018EFE 06:8EEE: 1F        .byte $00 + $00 + con_obj_id_1F   ; 6E 
- D 0 - I - 0x018EFF 06:8EEF: 1B        .byte $00 + $00 + con_obj_id_1B   ; 6F 
- D 0 - I - 0x018F00 06:8EF0: 00        .byte $00 + $00 + con_obj_id_null   ; 70 
- D 0 - I - 0x018F01 06:8EF1: 9B        .byte $00 + $80 + con_obj_id_5B - $40   ; 71 
- D 0 - I - 0x018F02 06:8EF2: 21        .byte $00 + $00 + con_obj_id_21   ; 72 
- D 0 - I - 0x018F03 06:8EF3: 3E        .byte $00 + $00 + con_obj_id_3E   ; 73 
- D 0 - I - 0x018F04 06:8EF4: 21        .byte $00 + $00 + con_obj_id_21   ; 74 
- D 0 - I - 0x018F05 06:8EF5: 21        .byte $00 + $00 + con_obj_id_21   ; 75 
- D 0 - I - 0x018F06 06:8EF6: 48        .byte $40 + $00 + con_obj_id_08   ; 76 
- D 0 - I - 0x018F07 06:8EF7: 21        .byte $00 + $00 + con_obj_id_21   ; 77 
- D 0 - I - 0x018F08 06:8EF8: 02        .byte $00 + $00 + con_obj_id_02   ; 78 
- D 0 - I - 0x018F09 06:8EF9: 21        .byte $00 + $00 + con_obj_id_21   ; 79 
- D 0 - I - 0x018F0A 06:8EFA: 3F        .byte $00 + $00 + con_obj_id_3F   ; 7A 
- D 0 - I - 0x018F0B 06:8EFB: 1B        .byte $00 + $00 + con_obj_id_1B   ; 7B 
- D 0 - I - 0x018F0C 06:8EFC: 91        .byte $00 + $80 + con_obj_id_51 - $40   ; 7C 
- D 0 - I - 0x018F0D 06:8EFD: 21        .byte $00 + $00 + con_obj_id_21   ; 7D 
- D 0 - I - 0x018F0E 06:8EFE: 00        .byte $00 + $00 + con_obj_id_null   ; 7E 
- D 0 - I - 0x018F0F 06:8EFF: 3F        .byte $00 + $00 + con_obj_id_3F   ; 7F 

- D 0 - I - 0x018F10 06:8F00: 1B        .byte $1B   ; 00 
- D 0 - I - 0x018F11 06:8F01: 03        .byte $03   ; 01 
- D 0 - I - 0x018F12 06:8F02: 19        .byte $19   ; 02 
- D 0 - I - 0x018F13 06:8F03: 03        .byte $03   ; 03 
- D 0 - I - 0x018F14 06:8F04: 03        .byte $03   ; 04 
- D 0 - I - 0x018F15 06:8F05: 0F        .byte $0F   ; 05 
- D 0 - I - 0x018F16 06:8F06: 03        .byte $03   ; 06 
- D 0 - I - 0x018F17 06:8F07: 1A        .byte $1A   ; 07 
- D 0 - I - 0x018F18 06:8F08: 1B        .byte $1B   ; 08 
- D 0 - I - 0x018F19 06:8F09: 03        .byte $03   ; 09 
- D 0 - I - 0x018F1A 06:8F0A: 17        .byte $17   ; 0A 
- D 0 - I - 0x018F1B 06:8F0B: 05        .byte $05   ; 0B 
- D 0 - I - 0x018F1C 06:8F0C: 03        .byte $03   ; 0C 
- D 0 - I - 0x018F1D 06:8F0D: 03        .byte $03   ; 0D 
- D 0 - I - 0x018F1E 06:8F0E: 03        .byte $03   ; 0E 
- D 0 - I - 0x018F1F 06:8F0F: 03        .byte $03   ; 0F 
- D 0 - I - 0x018F20 06:8F10: 1A        .byte $1A   ; 10 
- D 0 - I - 0x018F21 06:8F11: 23        .byte $23   ; 11 
- D 0 - I - 0x018F22 06:8F12: 03        .byte $03   ; 12 
- D 0 - I - 0x018F23 06:8F13: 00        .byte $00   ; 13 
- D 0 - I - 0x018F24 06:8F14: 19        .byte $19   ; 14 
- D 0 - I - 0x018F25 06:8F15: 1E        .byte $1E   ; 15 
- D 0 - I - 0x018F26 06:8F16: 1B        .byte $1B   ; 16 
- D 0 - I - 0x018F27 06:8F17: 23        .byte $23   ; 17 
- D 0 - I - 0x018F28 06:8F18: 19        .byte $19   ; 18 
- D 0 - I - 0x018F29 06:8F19: 19        .byte $19   ; 19 
- D 0 - I - 0x018F2A 06:8F1A: 03        .byte $03   ; 1A 
- D 0 - I - 0x018F2B 06:8F1B: 1B        .byte $1B   ; 1B 
- D 0 - I - 0x018F2C 06:8F1C: 83        .byte $83   ; 1C 
- D 0 - I - 0x018F2D 06:8F1D: 99        .byte $99   ; 1D 
- D 0 - I - 0x018F2E 06:8F1E: 17        .byte $17   ; 1E 
- D 0 - I - 0x018F2F 06:8F1F: 03        .byte $03   ; 1F 
- D 0 - I - 0x018F30 06:8F20: 1B        .byte $1B   ; 20 
- D 0 - I - 0x018F31 06:8F21: 03        .byte $03   ; 21 
- D 0 - I - 0x018F32 06:8F22: 03        .byte $03   ; 22 
- D 0 - I - 0x018F33 06:8F23: 03        .byte $03   ; 23 
- D 0 - I - 0x018F34 06:8F24: 03        .byte $03   ; 24 
- D 0 - I - 0x018F35 06:8F25: 03        .byte $03   ; 25 
- D 0 - I - 0x018F36 06:8F26: 1A        .byte $1A   ; 26 
- D 0 - I - 0x018F37 06:8F27: 03        .byte $03   ; 27 
- D 0 - I - 0x018F38 06:8F28: 03        .byte $03   ; 28 
- D 0 - I - 0x018F39 06:8F29: 03        .byte $03   ; 29 
- D 0 - I - 0x018F3A 06:8F2A: 39        .byte $39   ; 2A 
- D 0 - I - 0x018F3B 06:8F2B: 1A        .byte $1A   ; 2B 
- D 0 - I - 0x018F3C 06:8F2C: 80        .byte $80   ; 2C 
- D 0 - I - 0x018F3D 06:8F2D: 03        .byte $03   ; 2D 
- D 0 - I - 0x018F3E 06:8F2E: 03        .byte $03   ; 2E 
- D 0 - I - 0x018F3F 06:8F2F: 03        .byte $03   ; 2F 
- D 0 - I - 0x018F40 06:8F30: 19        .byte $19   ; 30 
- D 0 - I - 0x018F41 06:8F31: 19        .byte $19   ; 31 
- D 0 - I - 0x018F42 06:8F32: 0F        .byte $0F   ; 32 
- D 0 - I - 0x018F43 06:8F33: 03        .byte $03   ; 33 
- D 0 - I - 0x018F44 06:8F34: 16        .byte $16   ; 34 
- D 0 - I - 0x018F45 06:8F35: 19        .byte $19   ; 35 
- D 0 - I - 0x018F46 06:8F36: 43        .byte $43   ; 36 
- D 0 - I - 0x018F47 06:8F37: 0F        .byte $0F   ; 37 
- D 0 - I - 0x018F48 06:8F38: 03        .byte $03   ; 38 
- D 0 - I - 0x018F49 06:8F39: 03        .byte $03   ; 39 
- D 0 - I - 0x018F4A 06:8F3A: 03        .byte $03   ; 3A 
- D 0 - I - 0x018F4B 06:8F3B: 20        .byte $20   ; 3B 
- D 0 - I - 0x018F4C 06:8F3C: 03        .byte $03   ; 3C 
- D 0 - I - 0x018F4D 06:8F3D: 19        .byte $19   ; 3D 
- D 0 - I - 0x018F4E 06:8F3E: 03        .byte $03   ; 3E 
- D 0 - I - 0x018F4F 06:8F3F: 03        .byte $03   ; 3F 
- D 0 - I - 0x018F50 06:8F40: 03        .byte $03   ; 40 
- D 0 - I - 0x018F51 06:8F41: 16        .byte $16   ; 41 
- D 0 - I - 0x018F52 06:8F42: 03        .byte $03   ; 42 
- D 0 - I - 0x018F53 06:8F43: 17        .byte $17   ; 43 
- D 0 - I - 0x018F54 06:8F44: 03        .byte $03   ; 44 
- D 0 - I - 0x018F55 06:8F45: 17        .byte $17   ; 45 
- D 0 - I - 0x018F56 06:8F46: 0D        .byte $0D   ; 46 
- D 0 - I - 0x018F57 06:8F47: 00        .byte $00   ; 47 
- D 0 - I - 0x018F58 06:8F48: 17        .byte $17   ; 48 
- D 0 - I - 0x018F59 06:8F49: 19        .byte $19   ; 49 
- D 0 - I - 0x018F5A 06:8F4A: 19        .byte $19   ; 4A 
- D 0 - I - 0x018F5B 06:8F4B: 00        .byte $00   ; 4B 
- D 0 - I - 0x018F5C 06:8F4C: 19        .byte $19   ; 4C 
- D 0 - I - 0x018F5D 06:8F4D: 00        .byte $00   ; 4D 
- D 0 - I - 0x018F5E 06:8F4E: 03        .byte $03   ; 4E 
- D 0 - I - 0x018F5F 06:8F4F: 1B        .byte $1B   ; 4F 
- D 0 - I - 0x018F60 06:8F50: 83        .byte $83   ; 50 
- D 0 - I - 0x018F61 06:8F51: 0F        .byte $0F   ; 51 
- D 0 - I - 0x018F62 06:8F52: 0F        .byte $0F   ; 52 
- D 0 - I - 0x018F63 06:8F53: 03        .byte $03   ; 53 
- D 0 - I - 0x018F64 06:8F54: 03        .byte $03   ; 54 
- D 0 - I - 0x018F65 06:8F55: 00        .byte $00   ; 55 
- D 0 - I - 0x018F66 06:8F56: 03        .byte $03   ; 56 
- D 0 - I - 0x018F67 06:8F57: 16        .byte $16   ; 57 
- D 0 - I - 0x018F68 06:8F58: 03        .byte $03   ; 58 
- D 0 - I - 0x018F69 06:8F59: 03        .byte $03   ; 59 
- D 0 - I - 0x018F6A 06:8F5A: 16        .byte $16   ; 5A 
- D 0 - I - 0x018F6B 06:8F5B: 19        .byte $19   ; 5B 
- D 0 - I - 0x018F6C 06:8F5C: 83        .byte $83   ; 5C 
- D 0 - I - 0x018F6D 06:8F5D: 03        .byte $03   ; 5D 
- D 0 - I - 0x018F6E 06:8F5E: 63        .byte $63   ; 5E 
- D 0 - I - 0x018F6F 06:8F5F: 1A        .byte $1A   ; 5F 
- D 0 - I - 0x018F70 06:8F60: 97        .byte $97   ; 60 
- D 0 - I - 0x018F71 06:8F61: 0F        .byte $0F   ; 61 
- D 0 - I - 0x018F72 06:8F62: 83        .byte $83   ; 62 
- D 0 - I - 0x018F73 06:8F63: 99        .byte $99   ; 63 
- D 0 - I - 0x018F74 06:8F64: 80        .byte $80   ; 64 
- D 0 - I - 0x018F75 06:8F65: 03        .byte $03   ; 65 
- D 0 - I - 0x018F76 06:8F66: 1A        .byte $1A   ; 66 
- D 0 - I - 0x018F77 06:8F67: 19        .byte $19   ; 67 
- D 0 - I - 0x018F78 06:8F68: 03        .byte $03   ; 68 
- D 0 - I - 0x018F79 06:8F69: 19        .byte $19   ; 69 
- D 0 - I - 0x018F7A 06:8F6A: 0C        .byte $0C   ; 6A 
- D 0 - I - 0x018F7B 06:8F6B: 19        .byte $19   ; 6B 
- D 0 - I - 0x018F7C 06:8F6C: 16        .byte $16   ; 6C 
- D 0 - I - 0x018F7D 06:8F6D: 03        .byte $03   ; 6D 
- D 0 - I - 0x018F7E 06:8F6E: 03        .byte $03   ; 6E 
- D 0 - I - 0x018F7F 06:8F6F: 63        .byte $63   ; 6F 
- D 0 - I - 0x018F80 06:8F70: 99        .byte $99   ; 70 
- D 0 - I - 0x018F81 06:8F71: 03        .byte $03   ; 71 
- D 0 - I - 0x018F82 06:8F72: 03        .byte $03   ; 72 
- D 0 - I - 0x018F83 06:8F73: 03        .byte $03   ; 73 
- D 0 - I - 0x018F84 06:8F74: 03        .byte $03   ; 74 
- D 0 - I - 0x018F85 06:8F75: 03        .byte $03   ; 75 
- D 0 - I - 0x018F86 06:8F76: 16        .byte $16   ; 76 
- D 0 - I - 0x018F87 06:8F77: 03        .byte $03   ; 77 
- D 0 - I - 0x018F88 06:8F78: 1D        .byte $1D   ; 78 
- D 0 - I - 0x018F89 06:8F79: 03        .byte $03   ; 79 
- D 0 - I - 0x018F8A 06:8F7A: 0A        .byte $0A   ; 7A 
- D 0 - I - 0x018F8B 06:8F7B: 0F        .byte $0F   ; 7B 
- D 0 - I - 0x018F8C 06:8F7C: 99        .byte $99   ; 7C 
- D 0 - I - 0x018F8D 06:8F7D: 03        .byte $03   ; 7D 
- D 0 - I - 0x018F8E 06:8F7E: 03        .byte $03   ; 7E 
- D 0 - I - 0x018F8F 06:8F7F: 11        .byte $11   ; 7F 

- D 0 - I - 0x018F90 06:8F80: 20        .byte $20   ; 00 
- D 0 - I - 0x018F91 06:8F81: 04        .byte $04   ; 01 
- D 0 - I - 0x018F92 06:8F82: 17        .byte $17   ; 02 
- D 0 - I - 0x018F93 06:8F83: 00        .byte $00   ; 03 
- D 0 - I - 0x018F94 06:8F84: 00        .byte $00   ; 04 
- D 0 - I - 0x018F95 06:8F85: 07        .byte $07   ; 05 
- D 0 - I - 0x018F96 06:8F86: 05        .byte $05   ; 06 
- D 0 - I - 0x018F97 06:8F87: 07        .byte $07   ; 07 
- D 0 - I - 0x018F98 06:8F88: 20        .byte $20   ; 08 
- D 0 - I - 0x018F99 06:8F89: 00        .byte $00   ; 09 
- D 0 - I - 0x018F9A 06:8F8A: 27        .byte $27   ; 0A 
- D 0 - I - 0x018F9B 06:8F8B: 20        .byte $20   ; 0B 
- D 0 - I - 0x018F9C 06:8F8C: 00        .byte $00   ; 0C 
- D 0 - I - 0x018F9D 06:8F8D: 06        .byte $06   ; 0D 
- D 0 - I - 0x018F9E 06:8F8E: 05        .byte $05   ; 0E 
- D 0 - I - 0x018F9F 06:8F8F: 00        .byte $00   ; 0F 
- D 0 - I - 0x018FA0 06:8F90: 07        .byte $07   ; 10 
- D 0 - I - 0x018FA1 06:8F91: 02        .byte $02   ; 11 
- D 0 - I - 0x018FA2 06:8F92: 00        .byte $00   ; 12 
- D 0 - I - 0x018FA3 06:8F93: 27        .byte $27   ; 13 
- D 0 - I - 0x018FA4 06:8F94: 31        .byte $31   ; 14 
- D 0 - I - 0x018FA5 06:8F95: 37        .byte $37   ; 15 
- D 0 - I - 0x018FA6 06:8F96: 20        .byte $20   ; 16 
- D 0 - I - 0x018FA7 06:8F97: 00        .byte $00   ; 17 
- D 0 - I - 0x018FA8 06:8F98: 27        .byte $27   ; 18 
- D 0 - I - 0x018FA9 06:8F99: 27        .byte $27   ; 19 
- D 0 - I - 0x018FAA 06:8F9A: 02        .byte $02   ; 1A 
- D 0 - I - 0x018FAB 06:8F9B: 20        .byte $20   ; 1B 
- D 0 - I - 0x018FAC 06:8F9C: 00        .byte $00   ; 1C 
- D 0 - I - 0x018FAD 06:8F9D: 07        .byte $07   ; 1D 
- D 0 - I - 0x018FAE 06:8F9E: 27        .byte $27   ; 1E 
- D 0 - I - 0x018FAF 06:8F9F: 05        .byte $05   ; 1F 
- D 0 - I - 0x018FB0 06:8FA0: 20        .byte $20   ; 20 
- D 0 - I - 0x018FB1 06:8FA1: 00        .byte $00   ; 21 
- D 0 - I - 0x018FB2 06:8FA2: 02        .byte $02   ; 22 
- D 0 - I - 0x018FB3 06:8FA3: 00        .byte $00   ; 23 
- D 0 - I - 0x018FB4 06:8FA4: 05        .byte $05   ; 24 
- D 0 - I - 0x018FB5 06:8FA5: 00        .byte $00   ; 25 
- D 0 - I - 0x018FB6 06:8FA6: 37        .byte $37   ; 26 
- D 0 - I - 0x018FB7 06:8FA7: 01        .byte $01   ; 27 
- D 0 - I - 0x018FB8 06:8FA8: 00        .byte $00   ; 28 
- D 0 - I - 0x018FB9 06:8FA9: 01        .byte $01   ; 29 
- D 0 - I - 0x018FBA 06:8FAA: 30        .byte $30   ; 2A 
- D 0 - I - 0x018FBB 06:8FAB: 07        .byte $07   ; 2B 
- D 0 - I - 0x018FBC 06:8FAC: 27        .byte $27   ; 2C 
- D 0 - I - 0x018FBD 06:8FAD: 00        .byte $00   ; 2D 
- D 0 - I - 0x018FBE 06:8FAE: 01        .byte $01   ; 2E 
- D 0 - I - 0x018FBF 06:8FAF: 01        .byte $01   ; 2F 
- D 0 - I - 0x018FC0 06:8FB0: 01        .byte $01   ; 30 
- D 0 - I - 0x018FC1 06:8FB1: 30        .byte $30   ; 31 
- D 0 - I - 0x018FC2 06:8FB2: 07        .byte $07   ; 32 
- D 0 - I - 0x018FC3 06:8FB3: 00        .byte $00   ; 33 
- D 0 - I - 0x018FC4 06:8FB4: 00        .byte $00   ; 34 
- D 0 - I - 0x018FC5 06:8FB5: 27        .byte $27   ; 35 
- D 0 - I - 0x018FC6 06:8FB6: 05        .byte $05   ; 36 
- D 0 - I - 0x018FC7 06:8FB7: 07        .byte $07   ; 37 
- D 0 - I - 0x018FC8 06:8FB8: 01        .byte $01   ; 38 
- D 0 - I - 0x018FC9 06:8FB9: 01        .byte $01   ; 39 
- D 0 - I - 0x018FCA 06:8FBA: 00        .byte $00   ; 3A 
- D 0 - I - 0x018FCB 06:8FBB: 27        .byte $27   ; 3B 
- D 0 - I - 0x018FCC 06:8FBC: 00        .byte $00   ; 3C 
- D 0 - I - 0x018FCD 06:8FBD: 27        .byte $27   ; 3D 
- D 0 - I - 0x018FCE 06:8FBE: 06        .byte $06   ; 3E 
- D 0 - I - 0x018FCF 06:8FBF: 01        .byte $01   ; 3F 
- D 0 - I - 0x018FD0 06:8FC0: 01        .byte $01   ; 40 
- D 0 - I - 0x018FD1 06:8FC1: 27        .byte $27   ; 41 
- D 0 - I - 0x018FD2 06:8FC2: 00        .byte $00   ; 42 
- D 0 - I - 0x018FD3 06:8FC3: 17        .byte $17   ; 43 
- D 0 - I - 0x018FD4 06:8FC4: 00        .byte $00   ; 44 
- D 0 - I - 0x018FD5 06:8FC5: 21        .byte $21   ; 45 
- D 0 - I - 0x018FD6 06:8FC6: 20        .byte $20   ; 46 
- D 0 - I - 0x018FD7 06:8FC7: 17        .byte $17   ; 47 
- D 0 - I - 0x018FD8 06:8FC8: 31        .byte $31   ; 48 
- D 0 - I - 0x018FD9 06:8FC9: 20        .byte $20   ; 49 
- D 0 - I - 0x018FDA 06:8FCA: 17        .byte $17   ; 4A 
- D 0 - I - 0x018FDB 06:8FCB: 27        .byte $27   ; 4B 
- D 0 - I - 0x018FDC 06:8FCC: 27        .byte $27   ; 4C 
- D 0 - I - 0x018FDD 06:8FCD: 27        .byte $27   ; 4D 
- D 0 - I - 0x018FDE 06:8FCE: 00        .byte $00   ; 4E 
- D 0 - I - 0x018FDF 06:8FCF: 20        .byte $20   ; 4F 
- D 0 - I - 0x018FE0 06:8FD0: 01        .byte $01   ; 50 
- D 0 - I - 0x018FE1 06:8FD1: 35        .byte $35   ; 51 
- D 0 - I - 0x018FE2 06:8FD2: 27        .byte $27   ; 52 
- D 0 - I - 0x018FE3 06:8FD3: 00        .byte $00   ; 53 
- D 0 - I - 0x018FE4 06:8FD4: 00        .byte $00   ; 54 
- D 0 - I - 0x018FE5 06:8FD5: 27        .byte $27   ; 55 
- D 0 - I - 0x018FE6 06:8FD6: 00        .byte $00   ; 56 
- D 0 - I - 0x018FE7 06:8FD7: 17        .byte $17   ; 57 
- D 0 - I - 0x018FE8 06:8FD8: 00        .byte $00   ; 58 
- D 0 - I - 0x018FE9 06:8FD9: 04        .byte $04   ; 59 
- D 0 - I - 0x018FEA 06:8FDA: 17        .byte $17   ; 5A 
- D 0 - I - 0x018FEB 06:8FDB: 27        .byte $27   ; 5B 
- D 0 - I - 0x018FEC 06:8FDC: 01        .byte $01   ; 5C 
- D 0 - I - 0x018FED 06:8FDD: 01        .byte $01   ; 5D 
- D 0 - I - 0x018FEE 06:8FDE: 05        .byte $05   ; 5E 
- D 0 - I - 0x018FEF 06:8FDF: 07        .byte $07   ; 5F 
- D 0 - I - 0x018FF0 06:8FE0: 27        .byte $27   ; 60 
- D 0 - I - 0x018FF1 06:8FE1: 07        .byte $07   ; 61 
- D 0 - I - 0x018FF2 06:8FE2: 00        .byte $00   ; 62 
- D 0 - I - 0x018FF3 06:8FE3: 10        .byte $10   ; 63 
- D 0 - I - 0x018FF4 06:8FE4: 27        .byte $27   ; 64 
- D 0 - I - 0x018FF5 06:8FE5: 00        .byte $00   ; 65 
- D 0 - I - 0x018FF6 06:8FE6: 17        .byte $17   ; 66 
- D 0 - I - 0x018FF7 06:8FE7: 27        .byte $27   ; 67 
- D 0 - I - 0x018FF8 06:8FE8: 00        .byte $00   ; 68 
- D 0 - I - 0x018FF9 06:8FE9: 17        .byte $17   ; 69 
- D 0 - I - 0x018FFA 06:8FEA: 20        .byte $20   ; 6A 
- D 0 - I - 0x018FFB 06:8FEB: 17        .byte $17   ; 6B 
- D 0 - I - 0x018FFC 06:8FEC: 27        .byte $27   ; 6C 
- D 0 - I - 0x018FFD 06:8FED: 01        .byte $01   ; 6D 
- D 0 - I - 0x018FFE 06:8FEE: 00        .byte $00   ; 6E 
- D 0 - I - 0x018FFF 06:8FEF: 00        .byte $00   ; 6F 
- D 0 - I - 0x019000 06:8FF0: 27        .byte $27   ; 70 
- D 0 - I - 0x019001 06:8FF1: 00        .byte $00   ; 71 
- D 0 - I - 0x019002 06:8FF2: 00        .byte $00   ; 72 
- D 0 - I - 0x019003 06:8FF3: 00        .byte $00   ; 73 
- D 0 - I - 0x019004 06:8FF4: 00        .byte $00   ; 74 
- D 0 - I - 0x019005 06:8FF5: 00        .byte $00   ; 75 
- D 0 - I - 0x019006 06:8FF6: 25        .byte $25   ; 76 
- D 0 - I - 0x019007 06:8FF7: 00        .byte $00   ; 77 
- D 0 - I - 0x019008 06:8FF8: 27        .byte $27   ; 78 
- D 0 - I - 0x019009 06:8FF9: 00        .byte $00   ; 79 
- D 0 - I - 0x01900A 06:8FFA: 20        .byte $20   ; 7A 
- D 0 - I - 0x01900B 06:8FFB: 27        .byte $27   ; 7B 
- D 0 - I - 0x01900C 06:8FFC: 27        .byte $27   ; 7C 
- D 0 - I - 0x01900D 06:8FFD: 00        .byte $00   ; 7D 
- D 0 - I - 0x01900E 06:8FFE: 00        .byte $00   ; 7E 
- D 0 - I - 0x01900F 06:8FFF: 20        .byte $20   ; 7F 



_off011_9000_07:
_off011_9000_08:
_off011_9000_09:
- D 0 - I - 0x019010 06:9000: 26        .byte $26   ; 00 
- D 0 - I - 0x019011 06:9001: 22        .byte $22   ; 01 
- D 0 - I - 0x019012 06:9002: 18        .byte $18   ; 02 
- D 0 - I - 0x019013 06:9003: 29        .byte $29   ; 03 
- D 0 - I - 0x019014 06:9004: 19        .byte $19   ; 04 
- D 0 - I - 0x019015 06:9005: 49        .byte $49   ; 05 
- D 0 - I - 0x019016 06:9006: 26        .byte $26   ; 06 
- D 0 - I - 0x019017 06:9007: 3E        .byte $3E   ; 07 
- D 0 - I - 0x019018 06:9008: 22        .byte $22   ; 08 
- D 0 - I - 0x019019 06:9009: 26        .byte $26   ; 09 
- D 0 - I - 0x01901A 06:900A: 26        .byte $26   ; 0A 
- D 0 - I - 0x01901B 06:900B: 26        .byte $26   ; 0B 
- D 0 - I - 0x01901C 06:900C: 26        .byte $26   ; 0C 
- D 0 - I - 0x01901D 06:900D: 26        .byte $26   ; 0D 
- D 0 - I - 0x01901E 06:900E: 26        .byte $26   ; 0E 
- D 0 - I - 0x01901F 06:900F: 22        .byte $22   ; 0F 
- D 0 - I - 0x019020 06:9010: 26        .byte $26   ; 10 
- D 0 - I - 0x019021 06:9011: 06        .byte $06   ; 11 
- D 0 - I - 0x019022 06:9012: 26        .byte $26   ; 12 
- D 0 - I - 0x019023 06:9013: 3E        .byte $3E   ; 13 
- D 0 - I - 0x019024 06:9014: 22        .byte $22   ; 14 
- D 0 - I - 0x019025 06:9015: 22        .byte $22   ; 15 
- D 0 - I - 0x019026 06:9016: 46        .byte $46   ; 16 
- D 0 - I - 0x019027 06:9017: E6        .byte $E6   ; 17 
- D 0 - I - 0x019028 06:9018: EA        .byte $EA   ; 18 
- D 0 - I - 0x019029 06:9019: 26        .byte $26   ; 19 
- D 0 - I - 0x01902A 06:901A: 22        .byte $22   ; 1A 
- D 0 - I - 0x01902B 06:901B: 26        .byte $26   ; 1B 
- D 0 - I - 0x01902C 06:901C: 26        .byte $26   ; 1C 
- D 0 - I - 0x01902D 06:901D: 26        .byte $26   ; 1D 
- D 0 - I - 0x01902E 06:901E: 26        .byte $26   ; 1E 
- D 0 - I - 0x01902F 06:901F: 02        .byte $02   ; 1F 
- D 0 - I - 0x019030 06:9020: 08        .byte $08   ; 20 
- D 0 - I - 0x019031 06:9021: 6A        .byte $6A   ; 21 
- D 0 - I - 0x019032 06:9022: 32        .byte $32   ; 22 
- D 0 - I - 0x019033 06:9023: 02        .byte $02   ; 23 
- D 0 - I - 0x019034 06:9024: 02        .byte $02   ; 24 
- D 0 - I - 0x019035 06:9025: 02        .byte $02   ; 25 
- D 0 - I - 0x019036 06:9026: 69        .byte $69   ; 26 
- D 0 - I - 0x019037 06:9027: 78        .byte $78   ; 27 
- D 0 - I - 0x019038 06:9028: 56        .byte $56   ; 28 
- D 0 - I - 0x019039 06:9029: 32        .byte $32   ; 29 
- D 0 - I - 0x01903A 06:902A: 06        .byte $06   ; 2A 
- D 0 - I - 0x01903B 06:902B: 38        .byte $38   ; 2B 
- D 0 - I - 0x01903C 06:902C: 48        .byte $48   ; 2C 
- D 0 - I - 0x01903D 06:902D: 22        .byte $22   ; 2D 
- D 0 - I - 0x01903E 06:902E: 22        .byte $22   ; 2E 
- D 0 - I - 0x01903F 06:902F: 02        .byte $02   ; 2F 
- D 0 - I - 0x019040 06:9030: 5B        .byte $5B   ; 30 
- D 0 - I - 0x019041 06:9031: 3E        .byte $3E   ; 31 
- D 0 - I - 0x019042 06:9032: 92        .byte $92   ; 32 
- D 0 - I - 0x019043 06:9033: F6        .byte $F6   ; 33 
- D 0 - I - 0x019044 06:9034: 12        .byte $12   ; 34 
- D 0 - I - 0x019045 06:9035: 06        .byte $06   ; 35 
- D 0 - I - 0x019046 06:9036: 3E        .byte $3E   ; 36 
- D 0 - I - 0x019047 06:9037: 5C        .byte $5C   ; 37 
- D 0 - I - 0x019048 06:9038: A6        .byte $A6   ; 38 
- D 0 - I - 0x019049 06:9039: 86        .byte $86   ; 39 
- D 0 - I - 0x01904A 06:903A: 3E        .byte $3E   ; 3A 
- D 0 - I - 0x01904B 06:903B: 3E        .byte $3E   ; 3B 
- D 0 - I - 0x01904C 06:903C: 3E        .byte $3E   ; 3C 
- D 0 - I - 0x01904D 06:903D: F6        .byte $F6   ; 3D 
- D 0 - I - 0x01904E 06:903E: E2        .byte $E2   ; 3E 
- D 0 - I - 0x01904F 06:903F: 02        .byte $02   ; 3F 
- D 0 - I - 0x019050 06:9040: 22        .byte $22   ; 40 
- D 0 - I - 0x019051 06:9041: 16        .byte $16   ; 41 
- D 0 - I - 0x019052 06:9042: 8A        .byte $8A   ; 42 
- D 0 - I - 0x019053 06:9043: A2        .byte $A2   ; 43 
- D 0 - I - 0x019054 06:9044: 82        .byte $82   ; 44 
- D 0 - I - 0x019055 06:9045: 52        .byte $52   ; 45 
- D 0 - I - 0x019056 06:9046: 12        .byte $12   ; 46 
- D 0 - I - 0x019057 06:9047: 2A        .byte $2A   ; 47 
- D 0 - I - 0x019058 06:9048: 26        .byte $26   ; 48 
- D 0 - I - 0x019059 06:9049: 22        .byte $22   ; 49 
- D 0 - I - 0x01905A 06:904A: 16        .byte $16   ; 4A 
- D 0 - I - 0x01905B 06:904B: 1E        .byte $1E   ; 4B 
- D 0 - I - 0x01905C 06:904C: 1E        .byte $1E   ; 4C 
- D 0 - I - 0x01905D 06:904D: B2        .byte $B2   ; 4D 
- D 0 - I - 0x01905E 06:904E: 1E        .byte $1E   ; 4E 
- D 0 - I - 0x01905F 06:904F: 02        .byte $02   ; 4F 
- D 0 - I - 0x019060 06:9050: 06        .byte $06   ; 50 
- D 0 - I - 0x019061 06:9051: B6        .byte $B6   ; 51 
- D 0 - I - 0x019062 06:9052: 22        .byte $22   ; 52 
- D 0 - I - 0x019063 06:9053: 02        .byte $02   ; 53 
- D 0 - I - 0x019064 06:9054: 02        .byte $02   ; 54 
- D 0 - I - 0x019065 06:9055: 82        .byte $82   ; 55 
- D 0 - I - 0x019066 06:9056: 82        .byte $82   ; 56 
- D 0 - I - 0x019067 06:9057: 46        .byte $46   ; 57 
- D 0 - I - 0x019068 06:9058: 2A        .byte $2A   ; 58 
- D 0 - I - 0x019069 06:9059: EA        .byte $EA   ; 59 
- D 0 - I - 0x01906A 06:905A: A6        .byte $A6   ; 5A 
- D 0 - I - 0x01906B 06:905B: 06        .byte $06   ; 5B 
- D 0 - I - 0x01906C 06:905C: 06        .byte $06   ; 5C 
- D 0 - I - 0x01906D 06:905D: 82        .byte $82   ; 5D 
- D 0 - I - 0x01906E 06:905E: E2        .byte $E2   ; 5E 
- D 0 - I - 0x01906F 06:905F: 02        .byte $02   ; 5F 
- D 0 - I - 0x019070 06:9060: 4A        .byte $4A   ; 60 
- D 0 - I - 0x019071 06:9061: A6        .byte $A6   ; 61 
- D 0 - I - 0x019072 06:9062: 06        .byte $06   ; 62 
- D 0 - I - 0x019073 06:9063: 12        .byte $12   ; 63 
- D 0 - I - 0x019074 06:9064: E2        .byte $E2   ; 64 
- D 0 - I - 0x019075 06:9065: 06        .byte $06   ; 65 
- D 0 - I - 0x019076 06:9066: 26        .byte $26   ; 66 
- D 0 - I - 0x019077 06:9067: 1A        .byte $1A   ; 67 
- D 0 - I - 0x019078 06:9068: 46        .byte $46   ; 68 
- D 0 - I - 0x019079 06:9069: 46        .byte $46   ; 69 
- D 0 - I - 0x01907A 06:906A: 26        .byte $26   ; 6A 
- D 0 - I - 0x01907B 06:906B: 26        .byte $26   ; 6B 
- D 0 - I - 0x01907C 06:906C: 26        .byte $26   ; 6C 
- D 0 - I - 0x01907D 06:906D: 06        .byte $06   ; 6D 
- D 0 - I - 0x01907E 06:906E: 02        .byte $02   ; 6E 
- D 0 - I - 0x01907F 06:906F: 02        .byte $02   ; 6F 
- D 0 - I - 0x019080 06:9070: 2A        .byte $2A   ; 70 
- D 0 - I - 0x019081 06:9071: 73        .byte $73   ; 71 
- D 0 - I - 0x019082 06:9072: 01        .byte $01   ; 72 
- D 0 - I - 0x019083 06:9073: 86        .byte $86   ; 73 
- D 0 - I - 0x019084 06:9074: 02        .byte $02   ; 74 
- D 0 - I - 0x019085 06:9075: 06        .byte $06   ; 75 
- D 0 - I - 0x019086 06:9076: 45        .byte $45   ; 76 
- D 0 - I - 0x019087 06:9077: 00        .byte $00   ; 77 
- D 0 - I - 0x019088 06:9078: 26        .byte $26   ; 78 
- D 0 - I - 0x019089 06:9079: 22        .byte $22   ; 79 
- D 0 - I - 0x01908A 06:907A: 26        .byte $26   ; 7A 
- D 0 - I - 0x01908B 06:907B: 26        .byte $26   ; 7B 
- D 0 - I - 0x01908C 06:907C: 26        .byte $26   ; 7C 
- D 0 - I - 0x01908D 06:907D: 26        .byte $26   ; 7D 
- D 0 - I - 0x01908E 06:907E: 06        .byte $06   ; 7E 
- D 0 - I - 0x01908F 06:907F: 02        .byte $02   ; 7F 

- D 0 - I - 0x019090 06:9080: 2A        .byte $2A   ; 00 
- D 0 - I - 0x019091 06:9081: 46        .byte $46   ; 01 
- D 0 - I - 0x019092 06:9082: 6F        .byte $6F   ; 02 
- D 0 - I - 0x019093 06:9083: 5F        .byte $5F   ; 03 
- D 0 - I - 0x019094 06:9084: 4F        .byte $4F   ; 04 
- D 0 - I - 0x019095 06:9085: 0A        .byte $0A   ; 05 
- D 0 - I - 0x019096 06:9086: 26        .byte $26   ; 06 
- D 0 - I - 0x019097 06:9087: 26        .byte $26   ; 07 
- D 0 - I - 0x019098 06:9088: 32        .byte $32   ; 08 
- D 0 - I - 0x019099 06:9089: 87        .byte $87   ; 09 
- D 0 - I - 0x01909A 06:908A: 22        .byte $22   ; 0A 
- D 0 - I - 0x01909B 06:908B: F7        .byte $F7   ; 0B 
- D 0 - I - 0x01909C 06:908C: B3        .byte $B3   ; 0C 
- D 0 - I - 0x01909D 06:908D: 9F        .byte $9F   ; 0D 
- D 0 - I - 0x01909E 06:908E: FE        .byte $FE   ; 0E 
- D 0 - I - 0x01909F 06:908F: E7        .byte $E7   ; 0F 
- D 0 - I - 0x0190A0 06:9090: 3F        .byte $3F   ; 10 
- D 0 - I - 0x0190A1 06:9091: E3        .byte $E3   ; 11 
- D 0 - I - 0x0190A2 06:9092: 0B        .byte $0B   ; 12 
- D 0 - I - 0x0190A3 06:9093: 48        .byte $48   ; 13 
- D 0 - I - 0x0190A4 06:9094: 22        .byte $22   ; 14 
- D 0 - I - 0x0190A5 06:9095: 12        .byte $12   ; 15 
- D 0 - I - 0x0190A6 06:9096: 9F        .byte $9F   ; 16 
- D 0 - I - 0x0190A7 06:9097: E7        .byte $E7   ; 17 
- D 0 - I - 0x0190A8 06:9098: 22        .byte $22   ; 18 
- D 0 - I - 0x0190A9 06:9099: E6        .byte $E6   ; 19 
- D 0 - I - 0x0190AA 06:909A: 26        .byte $26   ; 1A 
- D 0 - I - 0x0190AB 06:909B: 22        .byte $22   ; 1B 
- D 0 - I - 0x0190AC 06:909C: FE        .byte $FE   ; 1C 
- D 0 - I - 0x0190AD 06:909D: F7        .byte $F7   ; 1D 
- D 0 - I - 0x0190AE 06:909E: A6        .byte $A6   ; 1E 
- D 0 - I - 0x0190AF 06:909F: 27        .byte $27   ; 1F 
- D 0 - I - 0x0190B0 06:90A0: 58        .byte $58   ; 20 
- D 0 - I - 0x0190B1 06:90A1: 4D        .byte $4D   ; 21 
- D 0 - I - 0x0190B2 06:90A2: 37        .byte $37   ; 22 
- D 0 - I - 0x0190B3 06:90A3: A3        .byte $A3   ; 23 
- D 0 - I - 0x0190B4 06:90A4: E3        .byte $E3   ; 24 
- D 0 - I - 0x0190B5 06:90A5: 06        .byte $06   ; 25 
- D 0 - I - 0x0190B6 06:90A6: 3F        .byte $3F   ; 26 
- D 0 - I - 0x0190B7 06:90A7: 3A        .byte $3A   ; 27 
- D 0 - I - 0x0190B8 06:90A8: 23        .byte $23   ; 28 
- D 0 - I - 0x0190B9 06:90A9: E6        .byte $E6   ; 29 
- D 0 - I - 0x0190BA 06:90AA: 26        .byte $26   ; 2A 
- D 0 - I - 0x0190BB 06:90AB: 38        .byte $38   ; 2B 
- D 0 - I - 0x0190BC 06:90AC: 48        .byte $48   ; 2C 
- D 0 - I - 0x0190BD 06:90AD: 26        .byte $26   ; 2D 
- D 0 - I - 0x0190BE 06:90AE: 26        .byte $26   ; 2E 
- D 0 - I - 0x0190BF 06:90AF: 24        .byte $24   ; 2F 
- D 0 - I - 0x0190C0 06:90B0: 2E        .byte $2E   ; 30 
- D 0 - I - 0x0190C1 06:90B1: 22        .byte $22   ; 31 
- D 0 - I - 0x0190C2 06:90B2: 03        .byte $03   ; 32 
- D 0 - I - 0x0190C3 06:90B3: E2        .byte $E2   ; 33 
- D 0 - I - 0x0190C4 06:90B4: 02        .byte $02   ; 34 
- D 0 - I - 0x0190C5 06:90B5: 26        .byte $26   ; 35 
- D 0 - I - 0x0190C6 06:90B6: 06        .byte $06   ; 36 
- D 0 - I - 0x0190C7 06:90B7: 1E        .byte $1E   ; 37 
- D 0 - I - 0x0190C8 06:90B8: 26        .byte $26   ; 38 
- D 0 - I - 0x0190C9 06:90B9: 27        .byte $27   ; 39 
- D 0 - I - 0x0190CA 06:90BA: 3E        .byte $3E   ; 3A 
- D 0 - I - 0x0190CB 06:90BB: 04        .byte $04   ; 3B 
- D 0 - I - 0x0190CC 06:90BC: 27        .byte $27   ; 3C 
- D 0 - I - 0x0190CD 06:90BD: 27        .byte $27   ; 3D 
- D 0 - I - 0x0190CE 06:90BE: 27        .byte $27   ; 3E 
- D 0 - I - 0x0190CF 06:90BF: 26        .byte $26   ; 3F 
- D 0 - I - 0x0190D0 06:90C0: 32        .byte $32   ; 40 
- D 0 - I - 0x0190D1 06:90C1: 9E        .byte $9E   ; 41 
- D 0 - I - 0x0190D2 06:90C2: 02        .byte $02   ; 42 
- D 0 - I - 0x0190D3 06:90C3: 3F        .byte $3F   ; 43 
- D 0 - I - 0x0190D4 06:90C4: E7        .byte $E7   ; 44 
- D 0 - I - 0x0190D5 06:90C5: 2A        .byte $2A   ; 45 
- D 0 - I - 0x0190D6 06:90C6: 53        .byte $53   ; 46 
- D 0 - I - 0x0190D7 06:90C7: 87        .byte $87   ; 47 
- D 0 - I - 0x0190D8 06:90C8: 36        .byte $36   ; 48 
- D 0 - I - 0x0190D9 06:90C9: A6        .byte $A6   ; 49 
- D 0 - I - 0x0190DA 06:90CA: 3E        .byte $3E   ; 4A 
- D 0 - I - 0x0190DB 06:90CB: 02        .byte $02   ; 4B 
- D 0 - I - 0x0190DC 06:90CC: E4        .byte $E4   ; 4C 
- D 0 - I - 0x0190DD 06:90CD: 26        .byte $26   ; 4D 
- D 0 - I - 0x0190DE 06:90CE: 27        .byte $27   ; 4E 
- D 0 - I - 0x0190DF 06:90CF: 27        .byte $27   ; 4F 
- D 0 - I - 0x0190E0 06:90D0: 37        .byte $37   ; 50 
- D 0 - I - 0x0190E1 06:90D1: A7        .byte $A7   ; 51 
- D 0 - I - 0x0190E2 06:90D2: 26        .byte $26   ; 52 
- D 0 - I - 0x0190E3 06:90D3: 27        .byte $27   ; 53 
- D 0 - I - 0x0190E4 06:90D4: 2B        .byte $2B   ; 54 
- D 0 - I - 0x0190E5 06:90D5: 4B        .byte $4B   ; 55 
- D 0 - I - 0x0190E6 06:90D6: 5E        .byte $5E   ; 56 
- D 0 - I - 0x0190E7 06:90D7: 06        .byte $06   ; 57 
- D 0 - I - 0x0190E8 06:90D8: 3E        .byte $3E   ; 58 
- D 0 - I - 0x0190E9 06:90D9: 06        .byte $06   ; 59 
- D 0 - I - 0x0190EA 06:90DA: 27        .byte $27   ; 5A 
- D 0 - I - 0x0190EB 06:90DB: 26        .byte $26   ; 5B 
- D 0 - I - 0x0190EC 06:90DC: 26        .byte $26   ; 5C 
- D 0 - I - 0x0190ED 06:90DD: 26        .byte $26   ; 5D 
- D 0 - I - 0x0190EE 06:90DE: 27        .byte $27   ; 5E 
- D 0 - I - 0x0190EF 06:90DF: 26        .byte $26   ; 5F 
- D 0 - I - 0x0190F0 06:90E0: 7D        .byte $7D   ; 60 
- D 0 - I - 0x0190F1 06:90E1: 23        .byte $23   ; 61 
- D 0 - I - 0x0190F2 06:90E2: 1F        .byte $1F   ; 62 
- D 0 - I - 0x0190F3 06:90E3: E3        .byte $E3   ; 63 
- D 0 - I - 0x0190F4 06:90E4: FC        .byte $FC   ; 64 
- D 0 - I - 0x0190F5 06:90E5: 03        .byte $03   ; 65 
- D 0 - I - 0x0190F6 06:90E6: 07        .byte $07   ; 66 
- D 0 - I - 0x0190F7 06:90E7: 7C        .byte $7C   ; 67 
- D 0 - I - 0x0190F8 06:90E8: 23        .byte $23   ; 68 
- D 0 - I - 0x0190F9 06:90E9: 16        .byte $16   ; 69 
- D 0 - I - 0x0190FA 06:90EA: A6        .byte $A6   ; 6A 
- D 0 - I - 0x0190FB 06:90EB: 20        .byte $20   ; 6B 
- D 0 - I - 0x0190FC 06:90EC: E2        .byte $E2   ; 6C 
- D 0 - I - 0x0190FD 06:90ED: E6        .byte $E6   ; 6D 
- D 0 - I - 0x0190FE 06:90EE: 27        .byte $27   ; 6E 
- D 0 - I - 0x0190FF 06:90EF: 26        .byte $26   ; 6F 
- D 0 - I - 0x019100 06:90F0: 2A        .byte $2A   ; 70 
- D 0 - I - 0x019101 06:90F1: 35        .byte $35   ; 71 
- D 0 - I - 0x019102 06:90F2: 15        .byte $15   ; 72 
- D 0 - I - 0x019103 06:90F3: 22        .byte $22   ; 73 
- D 0 - I - 0x019104 06:90F4: 27        .byte $27   ; 74 
- D 0 - I - 0x019105 06:90F5: 57        .byte $57   ; 75 
- D 0 - I - 0x019106 06:90F6: 45        .byte $45   ; 76 
- D 0 - I - 0x019107 06:90F7: 00        .byte $00   ; 77 
- D 0 - I - 0x019108 06:90F8: 22        .byte $22   ; 78 
- D 0 - I - 0x019109 06:90F9: 03        .byte $03   ; 79 
- D 0 - I - 0x01910A 06:90FA: 03        .byte $03   ; 7A 
- D 0 - I - 0x01910B 06:90FB: E3        .byte $E3   ; 7B 
- D 0 - I - 0x01910C 06:90FC: 02        .byte $02   ; 7C 
- D 0 - I - 0x01910D 06:90FD: FE        .byte $FE   ; 7D 
- D 0 - I - 0x01910E 06:90FE: 07        .byte $07   ; 7E 
- D 0 - I - 0x01910F 06:90FF: 27        .byte $27   ; 7F 

- D 0 - I - 0x019110 06:9100: 3B        .byte $3B   ; 00 
- D 0 - I - 0x019111 06:9101: 07        .byte $07   ; 01 
- D 0 - I - 0x019112 06:9102: 69        .byte $69   ; 02 
- D 0 - I - 0x019113 06:9103: 69        .byte $69   ; 03 
- D 0 - I - 0x019114 06:9104: 69        .byte $69   ; 04 
- D 0 - I - 0x019115 06:9105: 69        .byte $69   ; 05 
- D 0 - I - 0x019116 06:9106: EC        .byte $EC   ; 06 
- D 0 - I - 0x019117 06:9107: 37        .byte $37   ; 07 
- D 0 - I - 0x019118 06:9108: 01        .byte $01   ; 08 
- D 0 - I - 0x019119 06:9109: 31        .byte $31   ; 09 
- D 0 - I - 0x01911A 06:910A: AD        .byte $AD   ; 0A 
- D 0 - I - 0x01911B 06:910B: 31        .byte $31   ; 0B 
- D 0 - I - 0x01911C 06:910C: FF        .byte $FF   ; 0C 
- D 0 - I - 0x01911D 06:910D: 38        .byte $38   ; 0D 
- D 0 - I - 0x01911E 06:910E: 85        .byte $85   ; 0E 
- D 0 - I - 0x01911F 06:910F: 45        .byte $45   ; 0F 
- D 0 - I - 0x019120 06:9110: 72        .byte $72   ; 10 
- D 0 - I - 0x019121 06:9111: F1        .byte $F1   ; 11 
- D 0 - I - 0x019122 06:9112: F6        .byte $F6   ; 12 
- D 0 - I - 0x019123 06:9113: 0D        .byte $0D   ; 13 
- D 0 - I - 0x019124 06:9114: ED        .byte $ED   ; 14 
- D 0 - I - 0x019125 06:9115: 7B        .byte $7B   ; 15 
- D 0 - I - 0x019126 06:9116: 08        .byte $08   ; 16 
- D 0 - I - 0x019127 06:9117: 3E        .byte $3E   ; 17 
- D 0 - I - 0x019128 06:9118: 86        .byte $86   ; 18 
- D 0 - I - 0x019129 06:9119: 6C        .byte $6C   ; 19 
- D 0 - I - 0x01912A 06:911A: DB        .byte $DB   ; 1A 
- D 0 - I - 0x01912B 06:911B: 00        .byte $00   ; 1B 
- D 0 - I - 0x01912C 06:911C: 05        .byte $05   ; 1C 
- D 0 - I - 0x01912D 06:911D: 4C        .byte $4C   ; 1D 
- D 0 - I - 0x01912E 06:911E: FE        .byte $FE   ; 1E 
- D 0 - I - 0x01912F 06:911F: EE        .byte $EE   ; 1F 
- D 0 - I - 0x019130 06:9120: 69        .byte $69   ; 20 
- D 0 - I - 0x019131 06:9121: 39        .byte $39   ; 21 
- D 0 - I - 0x019132 06:9122: A3        .byte $A3   ; 22 
- D 0 - I - 0x019133 06:9123: FC        .byte $FC   ; 23 
- D 0 - I - 0x019134 06:9124: 00        .byte $00   ; 24 
- D 0 - I - 0x019135 06:9125: 00        .byte $00   ; 25 
- D 0 - I - 0x019136 06:9126: C5        .byte $C5   ; 26 
- D 0 - I - 0x019137 06:9127: 39        .byte $39   ; 27 
- D 0 - I - 0x019138 06:9128: 31        .byte $31   ; 28 
- D 0 - I - 0x019139 06:9129: F5        .byte $F5   ; 29 
- D 0 - I - 0x01913A 06:912A: B8        .byte $B8   ; 2A 
- D 0 - I - 0x01913B 06:912B: 39        .byte $39   ; 2B 
- D 0 - I - 0x01913C 06:912C: 69        .byte $69   ; 2C 
- D 0 - I - 0x01913D 06:912D: 00        .byte $00   ; 2D 
- D 0 - I - 0x01913E 06:912E: EE        .byte $EE   ; 2E 
- D 0 - I - 0x01913F 06:912F: 36        .byte $36   ; 2F 
- D 0 - I - 0x019140 06:9130: 6A        .byte $6A   ; 30 
- D 0 - I - 0x019141 06:9131: F7        .byte $F7   ; 31 
- D 0 - I - 0x019142 06:9132: FD        .byte $FD   ; 32 
- D 0 - I - 0x019143 06:9133: 00        .byte $00   ; 33 
- D 0 - I - 0x019144 06:9134: 00        .byte $00   ; 34 
- D 0 - I - 0x019145 06:9135: 2D        .byte $2D   ; 35 
- D 0 - I - 0x019146 06:9136: 72        .byte $72   ; 36 
- D 0 - I - 0x019147 06:9137: 69        .byte $69   ; 37 
- D 0 - I - 0x019148 06:9138: FF        .byte $FF   ; 38 
- D 0 - I - 0x019149 06:9139: 45        .byte $45   ; 39 
- D 0 - I - 0x01914A 06:913A: 2D        .byte $2D   ; 3A 
- D 0 - I - 0x01914B 06:913B: 11        .byte $11   ; 3B 
- D 0 - I - 0x01914C 06:913C: 3C        .byte $3C   ; 3C 
- D 0 - I - 0x01914D 06:913D: 31        .byte $31   ; 3D 
- D 0 - I - 0x01914E 06:913E: 33        .byte $33   ; 3E 
- D 0 - I - 0x01914F 06:913F: 38        .byte $38   ; 3F 
- D 0 - I - 0x019150 06:9140: AD        .byte $AD   ; 40 
- D 0 - I - 0x019151 06:9141: 00        .byte $00   ; 41 
- D 0 - I - 0x019152 06:9142: 53        .byte $53   ; 42 
- D 0 - I - 0x019153 06:9143: A4        .byte $A4   ; 43 
- D 0 - I - 0x019154 06:9144: 08        .byte $08   ; 44 
- D 0 - I - 0x019155 06:9145: 7B        .byte $7B   ; 45 
- D 0 - I - 0x019156 06:9146: 07        .byte $07   ; 46 
- D 0 - I - 0x019157 06:9147: B3        .byte $B3   ; 47 
- D 0 - I - 0x019158 06:9148: AA        .byte $AA   ; 48 
- D 0 - I - 0x019159 06:9149: FF        .byte $FF   ; 49 
- D 0 - I - 0x01915A 06:914A: F0        .byte $F0   ; 4A 
- D 0 - I - 0x01915B 06:914B: 00        .byte $00   ; 4B 
- D 0 - I - 0x01915C 06:914C: 11        .byte $11   ; 4C 
- D 0 - I - 0x01915D 06:914D: 01        .byte $01   ; 4D 
- D 0 - I - 0x01915E 06:914E: 8C        .byte $8C   ; 4E 
- D 0 - I - 0x01915F 06:914F: 85        .byte $85   ; 4F 
- D 0 - I - 0x019160 06:9150: 3A        .byte $3A   ; 50 
- D 0 - I - 0x019161 06:9151: DD        .byte $DD   ; 51 
- D 0 - I - 0x019162 06:9152: F1        .byte $F1   ; 52 
- D 0 - I - 0x019163 06:9153: F7        .byte $F7   ; 53 
- D 0 - I - 0x019164 06:9154: AD        .byte $AD   ; 54 
- D 0 - I - 0x019165 06:9155: DD        .byte $DD   ; 55 
- D 0 - I - 0x019166 06:9156: 7B        .byte $7B   ; 56 
- D 0 - I - 0x019167 06:9157: FD        .byte $FD   ; 57 
- D 0 - I - 0x019168 06:9158: E8        .byte $E8   ; 58 
- D 0 - I - 0x019169 06:9159: 00        .byte $00   ; 59 
- D 0 - I - 0x01916A 06:915A: 8C        .byte $8C   ; 5A 
- D 0 - I - 0x01916B 06:915B: CC        .byte $CC   ; 5B 
- D 0 - I - 0x01916C 06:915C: 8C        .byte $8C   ; 5C 
- D 0 - I - 0x01916D 06:915D: BA        .byte $BA   ; 5D 
- D 0 - I - 0x01916E 06:915E: 4C        .byte $4C   ; 5E 
- D 0 - I - 0x01916F 06:915F: E8        .byte $E8   ; 5F 
- D 0 - I - 0x019170 06:9160: 69        .byte $69   ; 60 
- D 0 - I - 0x019171 06:9161: 52        .byte $52   ; 61 
- D 0 - I - 0x019172 06:9162: F6        .byte $F6   ; 62 
- D 0 - I - 0x019173 06:9163: 3B        .byte $3B   ; 63 
- D 0 - I - 0x019174 06:9164: 0B        .byte $0B   ; 64 
- D 0 - I - 0x019175 06:9165: 7B        .byte $7B   ; 65 
- D 0 - I - 0x019176 06:9166: FC        .byte $FC   ; 66 
- D 0 - I - 0x019177 06:9167: 69        .byte $69   ; 67 
- D 0 - I - 0x019178 06:9168: F5        .byte $F5   ; 68 
- D 0 - I - 0x019179 06:9169: DB        .byte $DB   ; 69 
- D 0 - I - 0x01917A 06:916A: 85        .byte $85   ; 6A 
- D 0 - I - 0x01917B 06:916B: 0F        .byte $0F   ; 6B 
- D 0 - I - 0x01917C 06:916C: FF        .byte $FF   ; 6C 
- D 0 - I - 0x01917D 06:916D: 3D        .byte $3D   ; 6D 
- D 0 - I - 0x01917E 06:916E: FE        .byte $FE   ; 6E 
- D 0 - I - 0x01917F 06:916F: AD        .byte $AD   ; 6F 
- D 0 - I - 0x019180 06:9170: 39        .byte $39   ; 70 
- D 0 - I - 0x019181 06:9171: 38        .byte $38   ; 71 
- D 0 - I - 0x019182 06:9172: C5        .byte $C5   ; 72 
- D 0 - I - 0x019183 06:9173: FD        .byte $FD   ; 73 
- D 0 - I - 0x019184 06:9174: 00        .byte $00   ; 74 
- D 0 - I - 0x019185 06:9175: B5        .byte $B5   ; 75 
- D 0 - I - 0x019186 06:9176: CA        .byte $CA   ; 76 
- D 0 - I - 0x019187 06:9177: 46        .byte $46   ; 77 
- D 0 - I - 0x019188 06:9178: AD        .byte $AD   ; 78 
- D 0 - I - 0x019189 06:9179: 00        .byte $00   ; 79 
- D 0 - I - 0x01918A 06:917A: B8        .byte $B8   ; 7A 
- D 0 - I - 0x01918B 06:917B: FE        .byte $FE   ; 7B 
- D 0 - I - 0x01918C 06:917C: F4        .byte $F4   ; 7C 
- D 0 - I - 0x01918D 06:917D: 3C        .byte $3C   ; 7D 
- D 0 - I - 0x01918E 06:917E: FE        .byte $FE   ; 7E 
- D 0 - I - 0x01918F 06:917F: 00        .byte $00   ; 7F 

- D 0 - I - 0x019190 06:9180: 4A        .byte $40 + $00 + con_obj_id_0A   ; 00 
- D 0 - I - 0x019191 06:9181: CA        .byte $40 + $80 + con_obj_id_4A - $40   ; 01 
- D 0 - I - 0x019192 06:9182: 3E        .byte $00 + $00 + con_obj_id_3E   ; 02 
- D 0 - I - 0x019193 06:9183: 3E        .byte $00 + $00 + con_obj_id_3E   ; 03 
- D 0 - I - 0x019194 06:9184: 3E        .byte $00 + $00 + con_obj_id_3E   ; 04 
- D 0 - I - 0x019195 06:9185: 3E        .byte $00 + $00 + con_obj_id_3E   ; 05 
- D 0 - I - 0x019196 06:9186: 62        .byte $40 + $00 + con_obj_id_22   ; 06 
- D 0 - I - 0x019197 06:9187: 27        .byte $00 + $00 + con_obj_id_27   ; 07 
- D 0 - I - 0x019198 06:9188: DA        .byte $40 + $80 + con_obj_id_5A - $40   ; 08 
- D 0 - I - 0x019199 06:9189: 24        .byte $00 + $00 + con_obj_id_24   ; 09 
- D 0 - I - 0x01919A 06:918A: 5F        .byte $40 + $00 + con_obj_id_1F   ; 0A 
- D 0 - I - 0x01919B 06:918B: 24        .byte $00 + $00 + con_obj_id_24   ; 0B 
- D 0 - I - 0x01919C 06:918C: 95        .byte $00 + $80 + con_obj_id_55 - $40   ; 0C 
- D 0 - I - 0x01919D 06:918D: 24        .byte $00 + $00 + con_obj_id_24   ; 0D 
- D 0 - I - 0x01919E 06:918E: 0C        .byte $00 + $00 + con_obj_id_0C   ; 0E 
- D 0 - I - 0x01919F 06:918F: 23        .byte $00 + $00 + con_obj_id_23   ; 0F 
- D 0 - I - 0x0191A0 06:9190: 95        .byte $00 + $80 + con_obj_id_55 - $40   ; 10 
- D 0 - I - 0x0191A1 06:9191: A3        .byte $00 + $80 + con_obj_id_63 - $40   ; 11 
- D 0 - I - 0x0191A2 06:9192: 99        .byte $00 + $80 + con_obj_id_59 - $40   ; 12 
- D 0 - I - 0x0191A3 06:9193: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 13 
- D 0 - I - 0x0191A4 06:9194: 00        .byte $00 + $00 + con_obj_id_null   ; 14 
- D 0 - I - 0x0191A5 06:9195: CE        .byte $40 + $80 + con_obj_id_4E - $40   ; 15 
- D 0 - I - 0x0191A6 06:9196: A3        .byte $00 + $80 + con_obj_id_63 - $40   ; 16 
- D 0 - I - 0x0191A7 06:9197: 28        .byte $00 + $00 + con_obj_id_28   ; 17 
- D 0 - I - 0x0191A8 06:9198: 62        .byte $40 + $00 + con_obj_id_22   ; 18 
- D 0 - I - 0x0191A9 06:9199: 4A        .byte $40 + $00 + con_obj_id_0A   ; 19 
- D 0 - I - 0x0191AA 06:919A: 5A        .byte $40 + $00 + con_obj_id_1A   ; 1A 
- D 0 - I - 0x0191AB 06:919B: 29        .byte $00 + $00 + con_obj_id_29   ; 1B 
- D 0 - I - 0x0191AC 06:919C: 85        .byte $00 + $80 + con_obj_id_45 - $40   ; 1C 
- D 0 - I - 0x0191AD 06:919D: 24        .byte $00 + $00 + con_obj_id_24   ; 1D 
- D 0 - I - 0x0191AE 06:919E: 9B        .byte $00 + $80 + con_obj_id_5B - $40   ; 1E 
- D 0 - I - 0x0191AF 06:919F: 96        .byte $00 + $80 + con_obj_id_56 - $40   ; 1F 
- D 0 - I - 0x0191B0 06:91A0: 3E        .byte $00 + $00 + con_obj_id_3E   ; 20 
- D 0 - I - 0x0191B1 06:91A1: 3E        .byte $00 + $00 + con_obj_id_3E   ; 21 
- D 0 - I - 0x0191B2 06:91A2: 23        .byte $00 + $00 + con_obj_id_23   ; 22 
- D 0 - I - 0x0191B3 06:91A3: 96        .byte $00 + $80 + con_obj_id_56 - $40   ; 23 
- D 0 - I - 0x0191B4 06:91A4: 60        .byte $40 + $00 + con_obj_id_20   ; 24 
- D 0 - I - 0x0191B5 06:91A5: 60        .byte $40 + $00 + con_obj_id_20   ; 25 
- D 0 - I - 0x0191B6 06:91A6: 3E        .byte $00 + $00 + con_obj_id_3E   ; 26 
- D 0 - I - 0x0191B7 06:91A7: 3E        .byte $00 + $00 + con_obj_id_3E   ; 27 
- D 0 - I - 0x0191B8 06:91A8: 23        .byte $00 + $00 + con_obj_id_23   ; 28 
- D 0 - I - 0x0191B9 06:91A9: CD        .byte $40 + $80 + con_obj_id_4D - $40   ; 29 
- D 0 - I - 0x0191BA 06:91AA: DF        .byte $40 + $80 + con_obj_id_5F - $40   ; 2A 
- D 0 - I - 0x0191BB 06:91AB: 3F        .byte $00 + $00 + con_obj_id_3F   ; 2B 
- D 0 - I - 0x0191BC 06:91AC: 3F        .byte $00 + $00 + con_obj_id_3F   ; 2C 
- D 0 - I - 0x0191BD 06:91AD: 29        .byte $00 + $00 + con_obj_id_29   ; 2D 
- D 0 - I - 0x0191BE 06:91AE: C1        .byte $40 + $80 + con_obj_id_41 - $40   ; 2E 
- D 0 - I - 0x0191BF 06:91AF: 26        .byte $00 + $00 + con_obj_id_26   ; 2F 
- D 0 - I - 0x0191C0 06:91B0: 3E        .byte $00 + $00 + con_obj_id_3E   ; 30 
- D 0 - I - 0x0191C1 06:91B1: 81        .byte $00 + $80 + con_obj_id_41 - $40   ; 31 
- D 0 - I - 0x0191C2 06:91B2: A3        .byte $00 + $80 + con_obj_id_63 - $40   ; 32 
- D 0 - I - 0x0191C3 06:91B3: 60        .byte $40 + $00 + con_obj_id_20   ; 33 
- D 0 - I - 0x0191C4 06:91B4: 60        .byte $40 + $00 + con_obj_id_20   ; 34 
- D 0 - I - 0x0191C5 06:91B5: 4A        .byte $40 + $00 + con_obj_id_0A   ; 35 
- D 0 - I - 0x0191C6 06:91B6: 88        .byte $00 + $80 + con_obj_id_48 - $40   ; 36 
- D 0 - I - 0x0191C7 06:91B7: 3E        .byte $00 + $00 + con_obj_id_3E   ; 37 
- D 0 - I - 0x0191C8 06:91B8: C8        .byte $40 + $80 + con_obj_id_48 - $40   ; 38 
- D 0 - I - 0x0191C9 06:91B9: 23        .byte $00 + $00 + con_obj_id_23   ; 39 
- D 0 - I - 0x0191CA 06:91BA: 62        .byte $40 + $00 + con_obj_id_22   ; 3A 
- D 0 - I - 0x0191CB 06:91BB: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 3B 
- D 0 - I - 0x0191CC 06:91BC: 24        .byte $00 + $00 + con_obj_id_24   ; 3C 
- D 0 - I - 0x0191CD 06:91BD: 24        .byte $00 + $00 + con_obj_id_24   ; 3D 
- D 0 - I - 0x0191CE 06:91BE: 23        .byte $00 + $00 + con_obj_id_23   ; 3E 
- D 0 - I - 0x0191CF 06:91BF: 46        .byte $40 + $00 + con_obj_id_06   ; 3F 
- D 0 - I - 0x0191D0 06:91C0: 23        .byte $00 + $00 + con_obj_id_23   ; 40 
- D 0 - I - 0x0191D1 06:91C1: 60        .byte $40 + $00 + con_obj_id_20   ; 41 
- D 0 - I - 0x0191D2 06:91C2: 26        .byte $00 + $00 + con_obj_id_26   ; 42 
- D 0 - I - 0x0191D3 06:91C3: 12        .byte $00 + $00 + con_obj_id_12   ; 43 
- D 0 - I - 0x0191D4 06:91C4: A3        .byte $00 + $80 + con_obj_id_63 - $40   ; 44 
- D 0 - I - 0x0191D5 06:91C5: E2        .byte $40 + $80 + con_obj_id_62 - $40   ; 45 
- D 0 - I - 0x0191D6 06:91C6: A4        .byte $00 + $80 + con_obj_id_64 - $40   ; 46 
- D 0 - I - 0x0191D7 06:91C7: A3        .byte $00 + $80 + con_obj_id_63 - $40   ; 47 
- D 0 - I - 0x0191D8 06:91C8: 51        .byte $40 + $00 + con_obj_id_11   ; 48 
- D 0 - I - 0x0191D9 06:91C9: C8        .byte $40 + $80 + con_obj_id_48 - $40   ; 49 
- D 0 - I - 0x0191DA 06:91CA: 4A        .byte $40 + $00 + con_obj_id_0A   ; 4A 
- D 0 - I - 0x0191DB 06:91CB: 60        .byte $40 + $00 + con_obj_id_20   ; 4B 
- D 0 - I - 0x0191DC 06:91CC: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 4C 
- D 0 - I - 0x0191DD 06:91CD: C7        .byte $40 + $80 + con_obj_id_47 - $40   ; 4D 
- D 0 - I - 0x0191DE 06:91CE: 23        .byte $00 + $00 + con_obj_id_23   ; 4E 
- D 0 - I - 0x0191DF 06:91CF: 18        .byte $00 + $00 + con_obj_id_18   ; 4F 
- D 0 - I - 0x0191E0 06:91D0: 24        .byte $00 + $00 + con_obj_id_24   ; 50 
- D 0 - I - 0x0191E1 06:91D1: 0D        .byte $00 + $00 + con_obj_id_0D   ; 51 
- D 0 - I - 0x0191E2 06:91D2: 83        .byte $00 + $80 + con_obj_id_43 - $40   ; 52 
- D 0 - I - 0x0191E3 06:91D3: 94        .byte $00 + $80 + con_obj_id_54 - $40   ; 53 
- D 0 - I - 0x0191E4 06:91D4: 96        .byte $00 + $80 + con_obj_id_56 - $40   ; 54 
- D 0 - I - 0x0191E5 06:91D5: 0F        .byte $00 + $00 + con_obj_id_0F   ; 55 
- D 0 - I - 0x0191E6 06:91D6: 8C        .byte $00 + $80 + con_obj_id_4C - $40   ; 56 
- D 0 - I - 0x0191E7 06:91D7: DF        .byte $40 + $80 + con_obj_id_5F - $40   ; 57 
- D 0 - I - 0x0191E8 06:91D8: 62        .byte $40 + $00 + con_obj_id_22   ; 58 
- D 0 - I - 0x0191E9 06:91D9: 60        .byte $40 + $00 + con_obj_id_20   ; 59 
- D 0 - I - 0x0191EA 06:91DA: 23        .byte $00 + $00 + con_obj_id_23   ; 5A 
- D 0 - I - 0x0191EB 06:91DB: 5F        .byte $40 + $00 + con_obj_id_1F   ; 5B 
- D 0 - I - 0x0191EC 06:91DC: 51        .byte $40 + $00 + con_obj_id_11   ; 5C 
- D 0 - I - 0x0191ED 06:91DD: 9E        .byte $00 + $80 + con_obj_id_5E - $40   ; 5D 
- D 0 - I - 0x0191EE 06:91DE: 24        .byte $00 + $00 + con_obj_id_24   ; 5E 
- D 0 - I - 0x0191EF 06:91DF: 51        .byte $40 + $00 + con_obj_id_11   ; 5F 
- D 0 - I - 0x0191F0 06:91E0: 3E        .byte $00 + $00 + con_obj_id_3E   ; 60 
- D 0 - I - 0x0191F1 06:91E1: 23        .byte $00 + $00 + con_obj_id_23   ; 61 
- D 0 - I - 0x0191F2 06:91E2: A3        .byte $00 + $80 + con_obj_id_63 - $40   ; 62 
- D 0 - I - 0x0191F3 06:91E3: 1D        .byte $00 + $00 + con_obj_id_1D   ; 63 
- D 0 - I - 0x0191F4 06:91E4: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 64 
- D 0 - I - 0x0191F5 06:91E5: 95        .byte $00 + $80 + con_obj_id_55 - $40   ; 65 
- D 0 - I - 0x0191F6 06:91E6: A3        .byte $00 + $80 + con_obj_id_63 - $40   ; 66 
- D 0 - I - 0x0191F7 06:91E7: 3E        .byte $00 + $00 + con_obj_id_3E   ; 67 
- D 0 - I - 0x0191F8 06:91E8: 96        .byte $00 + $80 + con_obj_id_56 - $40   ; 68 
- D 0 - I - 0x0191F9 06:91E9: 0F        .byte $00 + $00 + con_obj_id_0F   ; 69 
- D 0 - I - 0x0191FA 06:91EA: 5A        .byte $40 + $00 + con_obj_id_1A   ; 6A 
- D 0 - I - 0x0191FB 06:91EB: A6        .byte $00 + $80 + con_obj_id_66 - $40   ; 6B 
- D 0 - I - 0x0191FC 06:91EC: C8        .byte $40 + $80 + con_obj_id_48 - $40   ; 6C 
- D 0 - I - 0x0191FD 06:91ED: 04        .byte $00 + $00 + con_obj_id_04   ; 6D 
- D 0 - I - 0x0191FE 06:91EE: 98        .byte $00 + $80 + con_obj_id_58 - $40   ; 6E 
- D 0 - I - 0x0191FF 06:91EF: 4A        .byte $40 + $00 + con_obj_id_0A   ; 6F 
- D 0 - I - 0x019200 06:91F0: 3F        .byte $00 + $00 + con_obj_id_3F   ; 70 
- D 0 - I - 0x019201 06:91F1: 3E        .byte $00 + $00 + con_obj_id_3E   ; 71 
- D 0 - I - 0x019202 06:91F2: 3E        .byte $00 + $00 + con_obj_id_3E   ; 72 
- D 0 - I - 0x019203 06:91F3: 9D        .byte $00 + $80 + con_obj_id_5D - $40   ; 73 
- D 0 - I - 0x019204 06:91F4: 21        .byte $00 + $00 + con_obj_id_21   ; 74 
- D 0 - I - 0x019205 06:91F5: 3E        .byte $00 + $00 + con_obj_id_3E   ; 75 
- D 0 - I - 0x019206 06:91F6: 3F        .byte $00 + $00 + con_obj_id_3F   ; 76 
- D 0 - I - 0x019207 06:91F7: 3F        .byte $00 + $00 + con_obj_id_3F   ; 77 
- D 0 - I - 0x019208 06:91F8: DF        .byte $40 + $80 + con_obj_id_5F - $40   ; 78 
- D 0 - I - 0x019209 06:91F9: 21        .byte $00 + $00 + con_obj_id_21   ; 79 
- D 0 - I - 0x01920A 06:91FA: A3        .byte $00 + $80 + con_obj_id_63 - $40   ; 7A 
- D 0 - I - 0x01920B 06:91FB: 93        .byte $00 + $80 + con_obj_id_53 - $40   ; 7B 
- D 0 - I - 0x01920C 06:91FC: D1        .byte $40 + $80 + con_obj_id_51 - $40   ; 7C 
- D 0 - I - 0x01920D 06:91FD: 46        .byte $40 + $00 + con_obj_id_06   ; 7D 
- D 0 - I - 0x01920E 06:91FE: 95        .byte $00 + $80 + con_obj_id_55 - $40   ; 7E 
- D 0 - I - 0x01920F 06:91FF: 21        .byte $00 + $00 + con_obj_id_21   ; 7F 

- D 0 - I - 0x019210 06:9200: 03        .byte $03   ; 00 
- D 0 - I - 0x019211 06:9201: 03        .byte $03   ; 01 
- D 0 - I - 0x019212 06:9202: 03        .byte $03   ; 02 
- D 0 - I - 0x019213 06:9203: 03        .byte $03   ; 03 
- D 0 - I - 0x019214 06:9204: 03        .byte $03   ; 04 
- D 0 - I - 0x019215 06:9205: 03        .byte $03   ; 05 
- D 0 - I - 0x019216 06:9206: 03        .byte $03   ; 06 
- D 0 - I - 0x019217 06:9207: 03        .byte $03   ; 07 
- D 0 - I - 0x019218 06:9208: 03        .byte $03   ; 08 
- D 0 - I - 0x019219 06:9209: 19        .byte $19   ; 09 
- D 0 - I - 0x01921A 06:920A: 19        .byte $19   ; 0A 
- D 0 - I - 0x01921B 06:920B: 03        .byte $03   ; 0B 
- D 0 - I - 0x01921C 06:920C: 80        .byte $80   ; 0C 
- D 0 - I - 0x01921D 06:920D: 0F        .byte $0F   ; 0D 
- D 0 - I - 0x01921E 06:920E: 03        .byte $03   ; 0E 
- D 0 - I - 0x01921F 06:920F: 19        .byte $19   ; 0F 
- D 0 - I - 0x019220 06:9210: 0F        .byte $0F   ; 10 
- D 0 - I - 0x019221 06:9211: 03        .byte $03   ; 11 
- D 0 - I - 0x019222 06:9212: 03        .byte $03   ; 12 
- D 0 - I - 0x019223 06:9213: 03        .byte $03   ; 13 
- D 0 - I - 0x019224 06:9214: 03        .byte $03   ; 14 
- D 0 - I - 0x019225 06:9215: 03        .byte $03   ; 15 
- D 0 - I - 0x019226 06:9216: 23        .byte $23   ; 16 
- D 0 - I - 0x019227 06:9217: 8E        .byte $8E   ; 17 
- D 0 - I - 0x019228 06:9218: 03        .byte $03   ; 18 
- D 0 - I - 0x019229 06:9219: 03        .byte $03   ; 19 
- D 0 - I - 0x01922A 06:921A: 03        .byte $03   ; 1A 
- D 0 - I - 0x01922B 06:921B: 1B        .byte $1B   ; 1B 
- D 0 - I - 0x01922C 06:921C: 1A        .byte $1A   ; 1C 
- D 0 - I - 0x01922D 06:921D: 20        .byte $20   ; 1D 
- D 0 - I - 0x01922E 06:921E: 03        .byte $03   ; 1E 
- D 0 - I - 0x01922F 06:921F: 96        .byte $96   ; 1F 
- D 0 - I - 0x019230 06:9220: 03        .byte $03   ; 20 
- D 0 - I - 0x019231 06:9221: 03        .byte $03   ; 21 
- D 0 - I - 0x019232 06:9222: 03        .byte $03   ; 22 
- D 0 - I - 0x019233 06:9223: 03        .byte $03   ; 23 
- D 0 - I - 0x019234 06:9224: 83        .byte $83   ; 24 
- D 0 - I - 0x019235 06:9225: 03        .byte $03   ; 25 
- D 0 - I - 0x019236 06:9226: 03        .byte $03   ; 26 
- D 0 - I - 0x019237 06:9227: 03        .byte $03   ; 27 
- D 0 - I - 0x019238 06:9228: 03        .byte $03   ; 28 
- D 0 - I - 0x019239 06:9229: 03        .byte $03   ; 29 
- D 0 - I - 0x01923A 06:922A: 19        .byte $19   ; 2A 
- D 0 - I - 0x01923B 06:922B: 10        .byte $10   ; 2B 
- D 0 - I - 0x01923C 06:922C: 0B        .byte $0B   ; 2C 
- D 0 - I - 0x01923D 06:922D: 1B        .byte $1B   ; 2D 
- D 0 - I - 0x01923E 06:922E: 19        .byte $19   ; 2E 
- D 0 - I - 0x01923F 06:922F: 03        .byte $03   ; 2F 
- D 0 - I - 0x019240 06:9230: 03        .byte $03   ; 30 
- D 0 - I - 0x019241 06:9231: 03        .byte $03   ; 31 
- D 0 - I - 0x019242 06:9232: 19        .byte $19   ; 32 
- D 0 - I - 0x019243 06:9233: 03        .byte $03   ; 33 
- D 0 - I - 0x019244 06:9234: 03        .byte $03   ; 34 
- D 0 - I - 0x019245 06:9235: 03        .byte $03   ; 35 
- D 0 - I - 0x019246 06:9236: 03        .byte $03   ; 36 
- D 0 - I - 0x019247 06:9237: 03        .byte $03   ; 37 
- D 0 - I - 0x019248 06:9238: 03        .byte $03   ; 38 
- D 0 - I - 0x019249 06:9239: 17        .byte $17   ; 39 
- D 0 - I - 0x01924A 06:923A: 03        .byte $03   ; 3A 
- D 0 - I - 0x01924B 06:923B: 03        .byte $03   ; 3B 
- D 0 - I - 0x01924C 06:923C: 0F        .byte $0F   ; 3C 
- D 0 - I - 0x01924D 06:923D: 1A        .byte $1A   ; 3D 
- D 0 - I - 0x01924E 06:923E: 03        .byte $03   ; 3E 
- D 0 - I - 0x01924F 06:923F: 03        .byte $03   ; 3F 
- D 0 - I - 0x019250 06:9240: 03        .byte $03   ; 40 
- D 0 - I - 0x019251 06:9241: 03        .byte $03   ; 41 
- D 0 - I - 0x019252 06:9242: 16        .byte $16   ; 42 
- D 0 - I - 0x019253 06:9243: 03        .byte $03   ; 43 
- D 0 - I - 0x019254 06:9244: 0F        .byte $0F   ; 44 
- D 0 - I - 0x019255 06:9245: 03        .byte $03   ; 45 
- D 0 - I - 0x019256 06:9246: 17        .byte $17   ; 46 
- D 0 - I - 0x019257 06:9247: 03        .byte $03   ; 47 
- D 0 - I - 0x019258 06:9248: 03        .byte $03   ; 48 
- D 0 - I - 0x019259 06:9249: 03        .byte $03   ; 49 
- D 0 - I - 0x01925A 06:924A: 03        .byte $03   ; 4A 
- D 0 - I - 0x01925B 06:924B: 03        .byte $03   ; 4B 
- D 0 - I - 0x01925C 06:924C: 03        .byte $03   ; 4C 
- D 0 - I - 0x01925D 06:924D: 43        .byte $43   ; 4D 
- D 0 - I - 0x01925E 06:924E: 03        .byte $03   ; 4E 
- D 0 - I - 0x01925F 06:924F: 03        .byte $03   ; 4F 
- D 0 - I - 0x019260 06:9250: 00        .byte $00   ; 50 
- D 0 - I - 0x019261 06:9251: 83        .byte $83   ; 51 
- D 0 - I - 0x019262 06:9252: 03        .byte $03   ; 52 
- D 0 - I - 0x019263 06:9253: 03        .byte $03   ; 53 
- D 0 - I - 0x019264 06:9254: 83        .byte $83   ; 54 
- D 0 - I - 0x019265 06:9255: 8F        .byte $8F   ; 55 
- D 0 - I - 0x019266 06:9256: 03        .byte $03   ; 56 
- D 0 - I - 0x019267 06:9257: 03        .byte $03   ; 57 
- D 0 - I - 0x019268 06:9258: 03        .byte $03   ; 58 
- D 0 - I - 0x019269 06:9259: 03        .byte $03   ; 59 
- D 0 - I - 0x01926A 06:925A: 00        .byte $00   ; 5A 
- D 0 - I - 0x01926B 06:925B: 03        .byte $03   ; 5B 
- D 0 - I - 0x01926C 06:925C: 03        .byte $03   ; 5C 
- D 0 - I - 0x01926D 06:925D: 0F        .byte $0F   ; 5D 
- D 0 - I - 0x01926E 06:925E: 0F        .byte $0F   ; 5E 
- D 0 - I - 0x01926F 06:925F: 03        .byte $03   ; 5F 
- D 0 - I - 0x019270 06:9260: 03        .byte $03   ; 60 
- D 0 - I - 0x019271 06:9261: 0F        .byte $0F   ; 61 
- D 0 - I - 0x019272 06:9262: 03        .byte $03   ; 62 
- D 0 - I - 0x019273 06:9263: 80        .byte $80   ; 63 
- D 0 - I - 0x019274 06:9264: 03        .byte $03   ; 64 
- D 0 - I - 0x019275 06:9265: 83        .byte $83   ; 65 
- D 0 - I - 0x019276 06:9266: 0F        .byte $0F   ; 66 
- D 0 - I - 0x019277 06:9267: 03        .byte $03   ; 67 
- D 0 - I - 0x019278 06:9268: 0F        .byte $0F   ; 68 
- D 0 - I - 0x019279 06:9269: 03        .byte $03   ; 69 
- D 0 - I - 0x01927A 06:926A: 00        .byte $00   ; 6A 
- D 0 - I - 0x01927B 06:926B: 03        .byte $03   ; 6B 
- D 0 - I - 0x01927C 06:926C: 03        .byte $03   ; 6C 
- D 0 - I - 0x01927D 06:926D: 03        .byte $03   ; 6D 
- D 0 - I - 0x01927E 06:926E: 97        .byte $97   ; 6E 
- D 0 - I - 0x01927F 06:926F: 03        .byte $03   ; 6F 
- D 0 - I - 0x019280 06:9270: 07        .byte $07   ; 70 
- D 0 - I - 0x019281 06:9271: 03        .byte $03   ; 71 
- D 0 - I - 0x019282 06:9272: 03        .byte $03   ; 72 
- D 0 - I - 0x019283 06:9273: 03        .byte $03   ; 73 
- D 0 - I - 0x019284 06:9274: 03        .byte $03   ; 74 
- D 0 - I - 0x019285 06:9275: 03        .byte $03   ; 75 
- D 0 - I - 0x019286 06:9276: 09        .byte $09   ; 76 
- D 0 - I - 0x019287 06:9277: 13        .byte $13   ; 77 
- D 0 - I - 0x019288 06:9278: 16        .byte $16   ; 78 
- D 0 - I - 0x019289 06:9279: 03        .byte $03   ; 79 
- D 0 - I - 0x01928A 06:927A: 03        .byte $03   ; 7A 
- D 0 - I - 0x01928B 06:927B: 83        .byte $83   ; 7B 
- D 0 - I - 0x01928C 06:927C: 03        .byte $03   ; 7C 
- D 0 - I - 0x01928D 06:927D: 03        .byte $03   ; 7D 
- D 0 - I - 0x01928E 06:927E: 83        .byte $83   ; 7E 
- D 0 - I - 0x01928F 06:927F: 03        .byte $03   ; 7F 

- D 0 - I - 0x019290 06:9280: 05        .byte $05   ; 00 
- D 0 - I - 0x019291 06:9281: 05        .byte $05   ; 01 
- D 0 - I - 0x019292 06:9282: 00        .byte $00   ; 02 
- D 0 - I - 0x019293 06:9283: 00        .byte $00   ; 03 
- D 0 - I - 0x019294 06:9284: 00        .byte $00   ; 04 
- D 0 - I - 0x019295 06:9285: 00        .byte $00   ; 05 
- D 0 - I - 0x019296 06:9286: 05        .byte $05   ; 06 
- D 0 - I - 0x019297 06:9287: 20        .byte $20   ; 07 
- D 0 - I - 0x019298 06:9288: 00        .byte $00   ; 08 
- D 0 - I - 0x019299 06:9289: 27        .byte $27   ; 09 
- D 0 - I - 0x01929A 06:928A: 15        .byte $15   ; 0A 
- D 0 - I - 0x01929B 06:928B: 01        .byte $01   ; 0B 
- D 0 - I - 0x01929C 06:928C: 17        .byte $17   ; 0C 
- D 0 - I - 0x01929D 06:928D: 17        .byte $17   ; 0D 
- D 0 - I - 0x01929E 06:928E: 01        .byte $01   ; 0E 
- D 0 - I - 0x01929F 06:928F: 27        .byte $27   ; 0F 
- D 0 - I - 0x0192A0 06:9290: 17        .byte $17   ; 10 
- D 0 - I - 0x0192A1 06:9291: 01        .byte $01   ; 11 
- D 0 - I - 0x0192A2 06:9292: 00        .byte $00   ; 12 
- D 0 - I - 0x0192A3 06:9293: 00        .byte $00   ; 13 
- D 0 - I - 0x0192A4 06:9294: 00        .byte $00   ; 14 
- D 0 - I - 0x0192A5 06:9295: 05        .byte $05   ; 15 
- D 0 - I - 0x0192A6 06:9296: 01        .byte $01   ; 16 
- D 0 - I - 0x0192A7 06:9297: 03        .byte $03   ; 17 
- D 0 - I - 0x0192A8 06:9298: 05        .byte $05   ; 18 
- D 0 - I - 0x0192A9 06:9299: 05        .byte $05   ; 19 
- D 0 - I - 0x0192AA 06:929A: 00        .byte $00   ; 1A 
- D 0 - I - 0x0192AB 06:929B: 20        .byte $20   ; 1B 
- D 0 - I - 0x0192AC 06:929C: 17        .byte $17   ; 1C 
- D 0 - I - 0x0192AD 06:929D: 27        .byte $27   ; 1D 
- D 0 - I - 0x0192AE 06:929E: 00        .byte $00   ; 1E 
- D 0 - I - 0x0192AF 06:929F: 37        .byte $37   ; 1F 
- D 0 - I - 0x0192B0 06:92A0: 00        .byte $00   ; 20 
- D 0 - I - 0x0192B1 06:92A1: 20        .byte $20   ; 21 
- D 0 - I - 0x0192B2 06:92A2: 00        .byte $00   ; 22 
- D 0 - I - 0x0192B3 06:92A3: 10        .byte $10   ; 23 
- D 0 - I - 0x0192B4 06:92A4: 00        .byte $00   ; 24 
- D 0 - I - 0x0192B5 06:92A5: 00        .byte $00   ; 25 
- D 0 - I - 0x0192B6 06:92A6: 00        .byte $00   ; 26 
- D 0 - I - 0x0192B7 06:92A7: 00        .byte $00   ; 27 
- D 0 - I - 0x0192B8 06:92A8: 00        .byte $00   ; 28 
- D 0 - I - 0x0192B9 06:92A9: 05        .byte $05   ; 29 
- D 0 - I - 0x0192BA 06:92AA: 05        .byte $05   ; 2A 
- D 0 - I - 0x0192BB 06:92AB: 20        .byte $20   ; 2B 
- D 0 - I - 0x0192BC 06:92AC: 20        .byte $20   ; 2C 
- D 0 - I - 0x0192BD 06:92AD: 20        .byte $20   ; 2D 
- D 0 - I - 0x0192BE 06:92AE: 25        .byte $25   ; 2E 
- D 0 - I - 0x0192BF 06:92AF: 00        .byte $00   ; 2F 
- D 0 - I - 0x0192C0 06:92B0: 00        .byte $00   ; 30 
- D 0 - I - 0x0192C1 06:92B1: 01        .byte $01   ; 31 
- D 0 - I - 0x0192C2 06:92B2: 27        .byte $27   ; 32 
- D 0 - I - 0x0192C3 06:92B3: 00        .byte $00   ; 33 
- D 0 - I - 0x0192C4 06:92B4: 00        .byte $00   ; 34 
- D 0 - I - 0x0192C5 06:92B5: 05        .byte $05   ; 35 
- D 0 - I - 0x0192C6 06:92B6: 00        .byte $00   ; 36 
- D 0 - I - 0x0192C7 06:92B7: 00        .byte $00   ; 37 
- D 0 - I - 0x0192C8 06:92B8: 05        .byte $05   ; 38 
- D 0 - I - 0x0192C9 06:92B9: 27        .byte $27   ; 39 
- D 0 - I - 0x0192CA 06:92BA: 05        .byte $05   ; 3A 
- D 0 - I - 0x0192CB 06:92BB: 06        .byte $06   ; 3B 
- D 0 - I - 0x0192CC 06:92BC: 07        .byte $07   ; 3C 
- D 0 - I - 0x0192CD 06:92BD: 07        .byte $07   ; 3D 
- D 0 - I - 0x0192CE 06:92BE: 01        .byte $01   ; 3E 
- D 0 - I - 0x0192CF 06:92BF: 05        .byte $05   ; 3F 
- D 0 - I - 0x0192D0 06:92C0: 00        .byte $00   ; 40 
- D 0 - I - 0x0192D1 06:92C1: 00        .byte $00   ; 41 
- D 0 - I - 0x0192D2 06:92C2: 17        .byte $17   ; 42 
- D 0 - I - 0x0192D3 06:92C3: 01        .byte $01   ; 43 
- D 0 - I - 0x0192D4 06:92C4: 27        .byte $27   ; 44 
- D 0 - I - 0x0192D5 06:92C5: 05        .byte $05   ; 45 
- D 0 - I - 0x0192D6 06:92C6: 27        .byte $27   ; 46 
- D 0 - I - 0x0192D7 06:92C7: 00        .byte $00   ; 47 
- D 0 - I - 0x0192D8 06:92C8: 05        .byte $05   ; 48 
- D 0 - I - 0x0192D9 06:92C9: 05        .byte $05   ; 49 
- D 0 - I - 0x0192DA 06:92CA: 05        .byte $05   ; 4A 
- D 0 - I - 0x0192DB 06:92CB: 00        .byte $00   ; 4B 
- D 0 - I - 0x0192DC 06:92CC: 06        .byte $06   ; 4C 
- D 0 - I - 0x0192DD 06:92CD: 05        .byte $05   ; 4D 
- D 0 - I - 0x0192DE 06:92CE: 01        .byte $01   ; 4E 
- D 0 - I - 0x0192DF 06:92CF: 00        .byte $00   ; 4F 
- D 0 - I - 0x0192E0 06:92D0: 17        .byte $17   ; 50 
- D 0 - I - 0x0192E1 06:92D1: 00        .byte $00   ; 51 
- D 0 - I - 0x0192E2 06:92D2: 00        .byte $00   ; 52 
- D 0 - I - 0x0192E3 06:92D3: 00        .byte $00   ; 53 
- D 0 - I - 0x0192E4 06:92D4: 00        .byte $00   ; 54 
- D 0 - I - 0x0192E5 06:92D5: 37        .byte $37   ; 55 
- D 0 - I - 0x0192E6 06:92D6: 00        .byte $00   ; 56 
- D 0 - I - 0x0192E7 06:92D7: 05        .byte $05   ; 57 
- D 0 - I - 0x0192E8 06:92D8: 05        .byte $05   ; 58 
- D 0 - I - 0x0192E9 06:92D9: 00        .byte $00   ; 59 
- D 0 - I - 0x0192EA 06:92DA: 27        .byte $27   ; 5A 
- D 0 - I - 0x0192EB 06:92DB: 05        .byte $05   ; 5B 
- D 0 - I - 0x0192EC 06:92DC: 05        .byte $05   ; 5C 
- D 0 - I - 0x0192ED 06:92DD: 17        .byte $17   ; 5D 
- D 0 - I - 0x0192EE 06:92DE: 27        .byte $27   ; 5E 
- D 0 - I - 0x0192EF 06:92DF: 05        .byte $05   ; 5F 
- D 0 - I - 0x0192F0 06:92E0: 00        .byte $00   ; 60 
- D 0 - I - 0x0192F1 06:92E1: 17        .byte $17   ; 61 
- D 0 - I - 0x0192F2 06:92E2: 01        .byte $01   ; 62 
- D 0 - I - 0x0192F3 06:92E3: 27        .byte $27   ; 63 
- D 0 - I - 0x0192F4 06:92E4: 00        .byte $00   ; 64 
- D 0 - I - 0x0192F5 06:92E5: 00        .byte $00   ; 65 
- D 0 - I - 0x0192F6 06:92E6: 27        .byte $27   ; 66 
- D 0 - I - 0x0192F7 06:92E7: 00        .byte $00   ; 67 
- D 0 - I - 0x0192F8 06:92E8: 37        .byte $37   ; 68 
- D 0 - I - 0x0192F9 06:92E9: 00        .byte $00   ; 69 
- D 0 - I - 0x0192FA 06:92EA: 17        .byte $17   ; 6A 
- D 0 - I - 0x0192FB 06:92EB: 00        .byte $00   ; 6B 
- D 0 - I - 0x0192FC 06:92EC: 04        .byte $04   ; 6C 
- D 0 - I - 0x0192FD 06:92ED: 01        .byte $01   ; 6D 
- D 0 - I - 0x0192FE 06:92EE: 37        .byte $37   ; 6E 
- D 0 - I - 0x0192FF 06:92EF: 05        .byte $05   ; 6F 
- D 0 - I - 0x019300 06:92F0: 20        .byte $20   ; 70 
- D 0 - I - 0x019301 06:92F1: 00        .byte $00   ; 71 
- D 0 - I - 0x019302 06:92F2: 00        .byte $00   ; 72 
- D 0 - I - 0x019303 06:92F3: 00        .byte $00   ; 73 
- D 0 - I - 0x019304 06:92F4: 00        .byte $00   ; 74 
- D 0 - I - 0x019305 06:92F5: 00        .byte $00   ; 75 
- D 0 - I - 0x019306 06:92F6: 20        .byte $20   ; 76 
- D 0 - I - 0x019307 06:92F7: 20        .byte $20   ; 77 
- D 0 - I - 0x019308 06:92F8: 15        .byte $15   ; 78 
- D 0 - I - 0x019309 06:92F9: 00        .byte $00   ; 79 
- D 0 - I - 0x01930A 06:92FA: 00        .byte $00   ; 7A 
- D 0 - I - 0x01930B 06:92FB: 01        .byte $01   ; 7B 
- D 0 - I - 0x01930C 06:92FC: 05        .byte $05   ; 7C 
- D 0 - I - 0x01930D 06:92FD: 04        .byte $04   ; 7D 
- D 0 - I - 0x01930E 06:92FE: 00        .byte $00   ; 7E 
- D 0 - I - 0x01930F 06:92FF: 00        .byte $00   ; 7F 



_off010_9300_00:
; default palette
- D 0 - I - 0x019310 06:9300: 3F        .dbyt $3F00 ; 
- D 0 - I - 0x019312 06:9302: 20        .byte $00 + $20   ; 
- D 0 - I - 0x019313 06:9303: 0F        .byte $0F, $30, $00, $12   ; 
- D 0 - I - 0x019317 06:9307: 0F        .byte $0F, $16, $27, $36   ; 
- D 0 - I - 0x01931B 06:930B: 0F        .byte $0F, $1A, $37, $12   ; 
- D 0 - I - 0x01931F 06:930F: 0F        .byte $0F, $17, $37, $12   ; 

- D 0 - I - 0x019323 06:9313: 0F        .byte $0F, $29, $27, $17   ; 
- D 0 - I - 0x019327 06:9317: 0F        .byte $0F, $02, $22, $30   ; 
- D 0 - I - 0x01932B 06:931B: 0F        .byte $0F, $16, $27, $30   ; 
- D 0 - I - 0x01932F 06:931F: 0F        .byte $0F, $0C, $1C, $2C   ; 

- D 0 - I - 0x019333 06:9323: FF        .byte $FF   ; end token



; enemy counter ram_6BA2 based on ram_69FE_map_data
- D 0 - I - 0x019334 06:9324: 01        .byte $01   ; index 00
- D 0 - I - 0x019335 06:9325: 04        .byte $04   ; index 40
- D 0 - I - 0x019336 06:9326: 05        .byte $05   ; index 80
- D 0 - I - 0x019337 06:9327: 06        .byte $06   ; index C0



- D 0 - I - 0x019338 06:9328: 8D        .byte $8D   ; ram_pos_Y_link



- D 0 - I - 0x019339 06:9329: 57        .byte $57   ; ram_6BA7
- D 0 - I - 0x01933A 06:932A: 49        .byte $49   ; ram_6BA8
- D 0 - I - 0x01933B 06:932B: 99        .byte $99   ; ram_6BA9
- D 0 - I - 0x01933C 06:932C: 69        .byte $69   ; ram_6BAA
- D 0 - I - 0x01933D 06:932D: 00        .byte $00   ; ram_6BAB
- D 0 - I - 0x01933E 06:932E: 00        .byte $00   ; ram_6BAC
- D 0 - I - 0x01933F 06:932F: 77        .byte $77   ; ram_6BAD
- D 0 - I - 0x019340 06:9330: 2A        .byte $20 + $0A   ; ram_6BAE
- D 0 - I - 0x019341 06:9331: 7F 06     .word ram_067F
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



; HUD minimap ram_6BCD
- D 0 - I - 0x01935F 06:934F: 20 62     .dbyt $2062 ; 
- D 0 - I - 0x019361 06:9351: 48        .byte $00 + $40 + $08   ; 
- D 0 - I - 0x019362 06:9352: F5        .byte $F5   ; 

- D 0 - I - 0x019363 06:9353: 20 82     .dbyt $2082 ; 
- D 0 - I - 0x019365 06:9355: 48        .byte $00 + $40 + $08   ; 
- D 0 - I - 0x019366 06:9356: F5        .byte $F5   ; 

- D 0 - I - 0x019367 06:9357: 20 A2     .dbyt $20A2 ; 
- D 0 - I - 0x019369 06:9359: 48        .byte $00 + $40 + $08   ; 
- D 0 - I - 0x01936A 06:935A: F5        .byte $F5   ; 

- D 0 - I - 0x01936B 06:935B: 20 C2     .dbyt $20C2 ; 
- D 0 - I - 0x01936D 06:935D: 48        .byte $00 + $40 + $08   ; 
- D 0 - I - 0x01936E 06:935E: F5        .byte $F5   ; 

- D 0 - I - 0x01936F 06:935F: FF        .byte $FF   ; end token
; filling with FF bytes up to the end of the range
- D 0 - I - 0x019370 06:9360: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x019380 06:9370: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



; custom palette ram_6BFA (see 0x006D4C)
; 00 
- D 0 - I - 0x01938C 06:937C: FF        .byte $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x019390 06:9380: FF        .byte $FF, $FF, $FF, $FF   ; 
; 08 
- D 0 - I - 0x019394 06:9384: FF        .byte $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x019398 06:9388: FF        .byte $FF, $FF, $FF, $FF   ; 
; 10 
- D 0 - I - 0x01939C 06:938C: FF        .byte $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x0193A0 06:9390: FF        .byte $FF, $FF, $FF, $FF   ; 
; 18 
- D 0 - I - 0x0193A4 06:9394: FF        .byte $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x0193A8 06:9398: FF        .byte $FF, $FF, $FF, $FF   ; 
; 20 
- D 0 - I - 0x0193AC 06:939C: FF        .byte $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x0193B0 06:93A0: FF        .byte $FF, $FF, $FF, $FF   ; 
; 28 
- D 0 - I - 0x0193B4 06:93A4: FF        .byte $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x0193B8 06:93A8: FF        .byte $FF, $FF, $FF, $FF   ; 
; 30 
- D 0 - I - 0x0193BC 06:93AC: FF        .byte $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x0193C0 06:93B0: FF        .byte $FF, $FF, $FF, $FF   ; 
; 38 
- D 0 - I - 0x0193C4 06:93B4: FF        .byte $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x0193C8 06:93B8: FF        .byte $FF, $FF, $FF, $FF   ; 
; 40 
- D 0 - I - 0x0193CC 06:93BC: FF        .byte $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x0193D0 06:93C0: FF        .byte $FF, $FF, $FF, $FF   ; 
; 48 
- D 0 - I - 0x0193D4 06:93C4: FF        .byte $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x0193D8 06:93C8: FF        .byte $FF, $FF, $FF, $FF   ; 
; 50 
- D 0 - I - 0x0193DC 06:93CC: FF        .byte $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x0193E0 06:93D0: FF        .byte $FF, $FF, $FF, $FF   ; 
; 58 
- D 0 - I - 0x0193E4 06:93D4: FF        .byte $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x0193E8 06:93D8: FF        .byte $FF, $FF, $FF, $FF   ; 
; 60 
- D 0 - I - 0x0193EC 06:93DC: 0F        .byte $0F, $06, $17, $16   ; 
- D 0 - I - 0x0193F0 06:93E0: 0F        .byte $0F, $06, $17, $16   ; 
; 68 
- D 0 - I - 0x0193F4 06:93E4: 0F        .byte $0F, $07, $06, $16   ; 
- D 0 - I - 0x0193F8 06:93E8: 0F        .byte $0F, $07, $06, $16   ; 
; 70 
- D 0 - I - 0x0193FC 06:93EC: 0F        .byte $0F, $0F, $07, $06   ; 
- D 0 - I - 0x019400 06:93F0: 0F        .byte $0F, $0F, $07, $06   ; 
; 78 
- D 0 - I - 0x019404 06:93F4: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x019408 06:93F8: 0F        .byte $0F, $0F, $0F, $0F   ; 



_off010_93FC_01:
; default palette
- D 0 - I - 0x01940C 06:93FC: 3F        .dbyt $3F00 ; 
- D 0 - I - 0x01940E 06:93FE: 20        .byte $00 + $20   ; 
- D 0 - I - 0x01940F 06:93FF: 0F        .byte $0F, $30, $00, $12   ; 
- D 0 - I - 0x019413 06:9403: 0F        .byte $0F, $16, $27, $36   ; 
- D 0 - I - 0x019417 06:9407: 0F        .byte $0F, $0C, $1C, $2C   ; 
- D 0 - I - 0x01941B 06:940B: 0F        .byte $0F, $12, $1C, $2C   ; 

- D 0 - I - 0x01941F 06:940F: 0F        .byte $0F, $29, $27, $17   ; 
- D 0 - I - 0x019423 06:9413: 0F        .byte $0F, $02, $22, $30   ; 
- D 0 - I - 0x019427 06:9417: 0F        .byte $0F, $16, $27, $30   ; 
- D 0 - I - 0x01942B 06:941B: 0F        .byte $0F, $0C, $1C, $2C   ; 

- D 0 - I - 0x01942F 06:941F: FF        .byte $FF   ; end token



; enemy counter ram_6BA2 based on ram_69FE_map_data
- D 0 - I - 0x019430 06:9420: 03        .byte $03   ; index 00
- D 0 - I - 0x019431 06:9421: 05        .byte $05   ; index 40
- D 0 - I - 0x019432 06:9422: 06        .byte $06   ; index 80
- D 0 - I - 0x019433 06:9423: 08        .byte $08   ; index C0



- D 0 - I - 0x019434 06:9424: DD        .byte $DD   ; ram_pos_Y_link



- D 0 - I - 0x019435 06:9425: C9        .byte $C9   ; ram_6BA7
- D 0 - I - 0x019436 06:9426: AC        .byte $AC   ; ram_6BA8
- D 0 - I - 0x019437 06:9427: 89        .byte $89   ; ram_6BA9
- D 0 - I - 0x019438 06:9428: 87        .byte $87   ; ram_6BAA
- D 0 - I - 0x019439 06:9429: 04        .byte $04   ; ram_6BAB
- D 0 - I - 0x01943A 06:942A: 00        .byte $00   ; ram_6BAC
- D 0 - I - 0x01943B 06:942B: 73        .byte $73   ; ram_6BAD
- D 0 - I - 0x01943C 06:942C: 36        .byte $30 + $06   ; ram_6BAE
- D 0 - I - 0x01943D 06:942D: FF 06     .word ram_06FF
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



; HUD minimap ram_6BCD
- D 0 - I - 0x01945B 06:944B: 20 84     .dbyt $2084 ; 
- D 0 - I - 0x01945D 06:944D: 05        .byte $00 + $00 + $05   ; 
- D 0 - I - 0x01945E 06:944E: 67        .byte $67, $FF, $24, $FB, $FB   ; 

- D 0 - I - 0x019463 06:9453: 20 A3     .dbyt $20A3 ; 
- D 0 - I - 0x019465 06:9455: 05        .byte $00 + $00 + $05   ; 
- D 0 - I - 0x019466 06:9456: 67        .byte $67, $FF, $FF, $FF, $67   ; 

- D 0 - I - 0x01946B 06:945B: 20 C4     .dbyt $20C4 ; 
- D 0 - I - 0x01946D 06:945D: 03        .byte $00 + $00 + $03   ; 
- D 0 - I - 0x01946E 06:945E: FB        .byte $FB, $FF, $FB   ; 

- D 0 - I - 0x019471 06:9461: FF        .byte $FF   ; end token
; filling with FF bytes up to the end of the range
- D 0 - I - 0x019472 06:9462: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x019482 06:9472: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF   ; 



; custom palette ram_6BFA (see 0x006D4C)
; 00 
- D 0 - I - 0x019488 06:9478: 0F        .byte $0F, $0C, $1C, $2C   ; 
- D 0 - I - 0x01948C 06:947C: 0F        .byte $0F, $12, $1C, $2C   ; 
; 08 
- D 0 - I - 0x019490 06:9480: 0F        .byte $0F, $0C, $0C, $1C   ; 
- D 0 - I - 0x019494 06:9484: 0F        .byte $0F, $11, $0C, $1C   ; 
; 10 
- D 0 - I - 0x019498 06:9488: 0F        .byte $0F, $0F, $0C, $0C   ; 
- D 0 - I - 0x01949C 06:948C: 0F        .byte $0F, $02, $0C, $0C   ; 
; 18 
- D 0 - I - 0x0194A0 06:9490: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x0194A4 06:9494: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 20 
- D 0 - I - 0x0194A8 06:9498: 0F        .byte $0F, $00, $10, $30   ; 
- D 0 - I - 0x0194AC 06:949C: 0F        .byte $0F, $00, $10, $30   ; 
; 28 
- D 0 - I - 0x0194B0 06:94A0: 0F        .byte $0F, $00, $00, $10   ; 
- D 0 - I - 0x0194B4 06:94A4: 0F        .byte $0F, $00, $00, $10   ; 
; 30 
- D 0 - I - 0x0194B8 06:94A8: 0F        .byte $0F, $0F, $00, $00   ; 
- D 0 - I - 0x0194BC 06:94AC: 0F        .byte $0F, $0F, $00, $00   ; 
; 38 
- D 0 - I - 0x0194C0 06:94B0: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x0194C4 06:94B4: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 40 
- D 0 - I - 0x0194C8 06:94B8: 0F        .byte $0F, $0C, $1C, $2C   ; 
- D 0 - I - 0x0194CC 06:94BC: 0F        .byte $0F, $12, $1C, $2C   ; 
; 48 
- D 0 - I - 0x0194D0 06:94C0: 0F        .byte $0F, $0C, $0C, $1C   ; 
- D 0 - I - 0x0194D4 06:94C4: 0F        .byte $0F, $11, $0C, $1C   ; 
; 50 
- D 0 - I - 0x0194D8 06:94C8: 0F        .byte $0F, $0F, $0C, $0C   ; 
- D 0 - I - 0x0194DC 06:94CC: 0F        .byte $0F, $02, $0C, $0C   ; 
; 58 
- D 0 - I - 0x0194E0 06:94D0: 0F        .byte $0F, $0F, $0F, $0C   ; 
- D 0 - I - 0x0194E4 06:94D4: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 60 
- D 0 - I - 0x0194E8 06:94D8: 0F        .byte $0F, $06, $17, $16   ; 
- D 0 - I - 0x0194EC 06:94DC: 0F        .byte $0F, $06, $17, $16   ; 
; 68 
- D 0 - I - 0x0194F0 06:94E0: 0F        .byte $0F, $07, $06, $16   ; 
- D 0 - I - 0x0194F4 06:94E4: 0F        .byte $0F, $07, $06, $16   ; 
; 70 
- D 0 - I - 0x0194F8 06:94E8: 0F        .byte $0F, $0F, $07, $06   ; 
- D 0 - I - 0x0194FC 06:94EC: 0F        .byte $0F, $0F, $07, $06   ; 
; 78
- D 0 - I - 0x019500 06:94F0: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x019504 06:94F4: 0F        .byte $0F, $0F, $0F, $0F   ; 



_off010_94F8_02:
; default palette
- D 0 - I - 0x019508 06:94F8: 3F        .dbyt $3F00 ; 
- D 0 - I - 0x01950A 06:94FA: 20        .byte $00 + $20   ; 
- D 0 - I - 0x01950B 06:94FB: 0F        .byte $0F, $30, $00, $12   ; 
- D 0 - I - 0x01950F 06:94FF: 0F        .byte $0F, $16, $27, $36   ; 
- D 0 - I - 0x019513 06:9503: 0F        .byte $0F, $02, $12, $22   ; 
- D 0 - I - 0x019517 06:9507: 0F        .byte $0F, $16, $12, $22   ; 

- D 0 - I - 0x01951B 06:950B: 0F        .byte $0F, $29, $27, $17   ; 
- D 0 - I - 0x01951F 06:950F: 0F        .byte $0F, $02, $22, $30   ; 
- D 0 - I - 0x019523 06:9513: 0F        .byte $0F, $16, $27, $30   ; 
- D 0 - I - 0x019527 06:9517: 0F        .byte $0F, $02, $12, $22   ; 

- D 0 - I - 0x01952B 06:951B: FF        .byte $FF   ; end token



; enemy counter ram_6BA2 based on ram_69FE_map_data
- D 0 - I - 0x01952C 06:951C: 03        .byte $03   ; index 00
- D 0 - I - 0x01952D 06:951D: 05        .byte $05   ; index 40
- D 0 - I - 0x01952E 06:951E: 06        .byte $06   ; index 80
- D 0 - I - 0x01952F 06:951F: 08        .byte $08   ; index C0



- D 0 - I - 0x019530 06:9520: DD        .byte $DD   ; ram_pos_Y_link



- D 0 - I - 0x019531 06:9521: 89        .byte $89   ; ram_6BA7
- D 0 - I - 0x019532 06:9522: D6        .byte $D6   ; ram_6BA8
- D 0 - I - 0x019533 06:9523: 26        .byte $26   ; ram_6BA9
- D 0 - I - 0x019534 06:9524: 2C        .byte $2C   ; ram_6BAA
- D 0 - I - 0x019535 06:9525: 0A        .byte $0A   ; ram_6BAB
- D 0 - I - 0x019536 06:9526: B0        .byte $B0   ; ram_6BAC
- D 0 - I - 0x019537 06:9527: 7D        .byte $7D   ; ram_6BAD
- D 0 - I - 0x019538 06:9528: 0D        .byte $00 + $0D   ; ram_6BAE
- D 0 - I - 0x019539 06:9529: FF 06     .word ram_06FF
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



; HUD minimap ram_6BCD
- D 0 - I - 0x019557 06:9547: 20 65     .dbyt $2065 ; 
- D 0 - I - 0x019559 06:9549: 03        .byte $00 + $00 + $03   ; 
- D 0 - I - 0x01955A 06:954A: 67        .byte $67, $FF, $FB   ; 

- D 0 - I - 0x01955D 06:954D: 20 86     .dbyt $2086 ; 
- D 0 - I - 0x01955F 06:954F: 02        .byte $00 + $00 + $02   ; 
- D 0 - I - 0x019560 06:9550: FF        .byte $FF, $FF   ; 

- D 0 - I - 0x019562 06:9552: 20 A6     .dbyt $20A6 ; 
- D 0 - I - 0x019564 06:9554: 02        .byte $00 + $00 + $02   ; 
- D 0 - I - 0x019565 06:9555: FF        .byte $FF, $FF   ; 

- D 0 - I - 0x019567 06:9557: 20 C4     .dbyt $20C4 ; 
- D 0 - I - 0x019569 06:9559: 04        .byte $00 + $00 + $04   ; 
- D 0 - I - 0x01956A 06:955A: 67        .byte $67, $FF, $FF, $67   ; 

- D 0 - I - 0x01956E 06:955E: FF        .byte $FF   ; end token
; filling with FF bytes up to the end of the range
- D 0 - I - 0x01956F 06:955F: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x01957F 06:956F: FF        .byte $FF, $FF, $FF, $FF, $FF   ; 



; custom palette ram_6BFA (see 0x006D4C)
; 00 
- D 0 - I - 0x019584 06:9574: 0F        .byte $0F, $02, $12, $22   ; 
- D 0 - I - 0x019588 06:9578: 0F        .byte $0F, $16, $12, $22   ; 
; 08 
- D 0 - I - 0x01958C 06:957C: 0F        .byte $0F, $01, $02, $12   ; 
- D 0 - I - 0x019590 06:9580: 0F        .byte $0F, $17, $02, $12   ; 
; 10 
- D 0 - I - 0x019594 06:9584: 0F        .byte $0F, $0F, $01, $02   ; 
- D 0 - I - 0x019598 06:9588: 0F        .byte $0F, $06, $01, $02   ; 
; 18 
- D 0 - I - 0x01959C 06:958C: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x0195A0 06:9590: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 20 
- D 0 - I - 0x0195A4 06:9594: 0F        .byte $0F, $00, $10, $30   ; 
- D 0 - I - 0x0195A8 06:9598: 0F        .byte $0F, $00, $10, $30   ; 
; 28 
- D 0 - I - 0x0195AC 06:959C: 0F        .byte $0F, $00, $00, $10   ; 
- D 0 - I - 0x0195B0 06:95A0: 0F        .byte $0F, $00, $00, $10   ; 
; 30 
- D 0 - I - 0x0195B4 06:95A4: 0F        .byte $0F, $0F, $00, $00   ; 
- D 0 - I - 0x0195B8 06:95A8: 0F        .byte $0F, $0F, $00, $00   ; 
; 38 
- D 0 - I - 0x0195BC 06:95AC: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x0195C0 06:95B0: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 40 
- D 0 - I - 0x0195C4 06:95B4: 0F        .byte $0F, $02, $12, $22   ; 
- D 0 - I - 0x0195C8 06:95B8: 0F        .byte $0F, $16, $12, $22   ; 
; 48 
- D 0 - I - 0x0195CC 06:95BC: 0F        .byte $0F, $01, $02, $12   ; 
- D 0 - I - 0x0195D0 06:95C0: 0F        .byte $0F, $17, $02, $12   ; 
; 50 
- D 0 - I - 0x0195D4 06:95C4: 0F        .byte $0F, $0F, $01, $02   ; 
- D 0 - I - 0x0195D8 06:95C8: 0F        .byte $0F, $06, $01, $02   ; 
; 58 
- D 0 - I - 0x0195DC 06:95CC: 0F        .byte $0F, $0F, $0F, $01   ; 
- D 0 - I - 0x0195E0 06:95D0: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 60 
- D 0 - I - 0x0195E4 06:95D4: 0F        .byte $0F, $06, $17, $16   ; 
- D 0 - I - 0x0195E8 06:95D8: 0F        .byte $0F, $06, $17, $16   ; 
; 68 
- D 0 - I - 0x0195EC 06:95DC: 0F        .byte $0F, $07, $06, $16   ; 
- D 0 - I - 0x0195F0 06:95E0: 0F        .byte $0F, $07, $06, $16   ; 
; 70 
- D 0 - I - 0x0195F4 06:95E4: 0F        .byte $0F, $0F, $07, $06   ; 
- D 0 - I - 0x0195F8 06:95E8: 0F        .byte $0F, $0F, $07, $06   ; 
; 78
- D 0 - I - 0x0195FC 06:95EC: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x019600 06:95F0: 0F        .byte $0F, $0F, $0F, $0F   ; 



_off010_95F4_03:
; default palette
- D 0 - I - 0x019604 06:95F4: 3F        .dbyt $3F00 ; 
- D 0 - I - 0x019606 06:95F6: 20        .byte $00 + $20   ; 
- D 0 - I - 0x019607 06:95F7: 0F        .byte $0F, $30, $00, $12   ; 
- D 0 - I - 0x01960B 06:95FB: 0F        .byte $0F, $16, $27, $36   ; 
- D 0 - I - 0x01960F 06:95FF: 0F        .byte $0F, $0B, $1B, $2B   ; 
- D 0 - I - 0x019613 06:9603: 0F        .byte $0F, $16, $1B, $2B   ; 

- D 0 - I - 0x019617 06:9607: 0F        .byte $0F, $29, $37, $17   ; 
- D 0 - I - 0x01961B 06:960B: 0F        .byte $0F, $02, $22, $30   ; 
- D 0 - I - 0x01961F 06:960F: 0F        .byte $0F, $16, $27, $30   ; 
- D 0 - I - 0x019623 06:9613: 0F        .byte $0F, $0B, $1B, $2B   ; 

- D 0 - I - 0x019627 06:9617: FF        .byte $FF   ; end token



; enemy counter ram_6BA2 based on ram_69FE_map_data
- D 0 - I - 0x019628 06:9618: 03        .byte $03   ; index 00
- D 0 - I - 0x019629 06:9619: 05        .byte $05   ; index 40
- D 0 - I - 0x01962A 06:961A: 06        .byte $06   ; index 80
- D 0 - I - 0x01962B 06:961B: 08        .byte $08   ; index C0



- D 0 - I - 0x01962C 06:961C: DD        .byte $DD   ; ram_pos_Y_link



- D 0 - I - 0x01962D 06:961D: 89        .byte $89   ; ram_6BA7
- D 0 - I - 0x01962E 06:961E: D6        .byte $D6   ; ram_6BA8
- D 0 - I - 0x01962F 06:961F: 26        .byte $26   ; ram_6BA9
- D 0 - I - 0x019630 06:9620: 2C        .byte $2C   ; ram_6BAA
- D 0 - I - 0x019631 06:9621: 0C        .byte $0C   ; ram_6BAB
- D 0 - I - 0x019632 06:9622: C0        .byte $C0   ; ram_6BAC
- D 0 - I - 0x019633 06:9623: 7C        .byte $7C   ; ram_6BAD
- D 0 - I - 0x019634 06:9624: 3D        .byte $30 + $0D   ; ram_6BAE
- D 0 - I - 0x019635 06:9625: FF 06     .word ram_06FF
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



; HUD minimap ram_6BCD
- D 0 - I - 0x019653 06:9643: 20 84     .dbyt $2084 ; 
- D 0 - I - 0x019655 06:9645: 04        .byte $00 + $00 + $04   ; 
- D 0 - I - 0x019656 06:9646: 67        .byte $67, $FF, $24, $FB   ; 

- D 0 - I - 0x01965A 06:964A: 20 A3     .dbyt $20A3 ; 
- D 0 - I - 0x01965C 06:964C: 05        .byte $00 + $00 + $05   ; 
- D 0 - I - 0x01965D 06:964D: FF        .byte $FF, $FF, $FF, $FF, $FF   ; 

- D 0 - I - 0x019662 06:9652: 20 C3     .dbyt $20C3 ; 
- D 0 - I - 0x019664 06:9654: 04        .byte $00 + $00 + $04   ; 
- D 0 - I - 0x019665 06:9655: 67        .byte $67, $24, $FF, $FB   ; 

- D 0 - I - 0x019669 06:9659: FF        .byte $FF   ; end token
; filling with FF bytes up to the end of the range
- D 0 - I - 0x01966A 06:965A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x01967A 06:966A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF   ; 



; custom palette ram_6BFA (see 0x006D4C)
; 00 
- D 0 - I - 0x019680 06:9670: 0F        .byte $0F, $0B, $1B, $2B   ; 
- D 0 - I - 0x019684 06:9674: 0F        .byte $0F, $16, $1B, $2B   ; 
; 08 
- D 0 - I - 0x019688 06:9678: 0F        .byte $0F, $0B, $0B, $1B   ; 
- D 0 - I - 0x01968C 06:967C: 0F        .byte $0F, $17, $0B, $1B   ; 
; 10 
- D 0 - I - 0x019690 06:9680: 0F        .byte $0F, $0F, $0B, $0B   ; 
- D 0 - I - 0x019694 06:9684: 0F        .byte $0F, $06, $0B, $0B   ; 
; 18 
- D 0 - I - 0x019698 06:9688: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x01969C 06:968C: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 20 
- D 0 - I - 0x0196A0 06:9690: 0F        .byte $0F, $00, $10, $30   ; 
- D 0 - I - 0x0196A4 06:9694: 0F        .byte $0F, $00, $10, $30   ; 
; 28 
- D 0 - I - 0x0196A8 06:9698: 0F        .byte $0F, $00, $00, $10   ; 
- D 0 - I - 0x0196AC 06:969C: 0F        .byte $0F, $00, $00, $10   ; 
; 30 
- D 0 - I - 0x0196B0 06:96A0: 0F        .byte $0F, $0F, $00, $00   ; 
- D 0 - I - 0x0196B4 06:96A4: 0F        .byte $0F, $0F, $00, $00   ; 
; 38 
- D 0 - I - 0x0196B8 06:96A8: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x0196BC 06:96AC: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 40 
- D 0 - I - 0x0196C0 06:96B0: 0F        .byte $0F, $0B, $1B, $2B   ; 
- D 0 - I - 0x0196C4 06:96B4: 0F        .byte $0F, $16, $1B, $2B   ; 
; 48 
- D 0 - I - 0x0196C8 06:96B8: 0F        .byte $0F, $0B, $0B, $1B   ; 
- D 0 - I - 0x0196CC 06:96BC: 0F        .byte $0F, $17, $0B, $1B   ; 
; 50 
- D 0 - I - 0x0196D0 06:96C0: 0F        .byte $0F, $0F, $0B, $0B   ; 
- D 0 - I - 0x0196D4 06:96C4: 0F        .byte $0F, $06, $0B, $0B   ; 
; 58 
- D 0 - I - 0x0196D8 06:96C8: 0F        .byte $0F, $0F, $0F, $0B   ; 
- D 0 - I - 0x0196DC 06:96CC: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 60 
- D 0 - I - 0x0196E0 06:96D0: 0F        .byte $0F, $06, $17, $16   ; 
- D 0 - I - 0x0196E4 06:96D4: 0F        .byte $0F, $06, $17, $16   ; 
; 68 
- D 0 - I - 0x0196E8 06:96D8: 0F        .byte $0F, $07, $06, $16   ; 
- D 0 - I - 0x0196EC 06:96DC: 0F        .byte $0F, $07, $06, $16   ; 
; 70 
- D 0 - I - 0x0196F0 06:96E0: 0F        .byte $0F, $0F, $07, $06   ; 
- D 0 - I - 0x0196F4 06:96E4: 0F        .byte $0F, $0F, $07, $06   ; 
; 78
- D 0 - I - 0x0196F8 06:96E8: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x0196FC 06:96EC: 0F        .byte $0F, $0F, $0F, $0F   ; 



_off010_96F0_04:
; default palette
- D 0 - I - 0x019700 06:96F0: 3F        .dbyt $3F00 ; 
- D 0 - I - 0x019702 06:96F2: 20        .byte $00 + $20   ; 
- D 0 - I - 0x019703 06:96F3: 0F        .byte $0F, $30, $00, $12   ; 
- D 0 - I - 0x019707 06:96F7: 0F        .byte $0F, $16, $27, $36   ; 
- D 0 - I - 0x01970B 06:96FB: 0F        .byte $0F, $08, $18, $28   ; 
- D 0 - I - 0x01970F 06:96FF: 0F        .byte $0F, $12, $18, $28   ; 

- D 0 - I - 0x019713 06:9703: 0F        .byte $0F, $29, $27, $17   ; 
- D 0 - I - 0x019717 06:9707: 0F        .byte $0F, $02, $22, $30   ; 
- D 0 - I - 0x01971B 06:970B: 0F        .byte $0F, $16, $27, $30   ; 
- D 0 - I - 0x01971F 06:970F: 0F        .byte $0F, $0F, $18, $28   ; 

- D 0 - I - 0x019723 06:9713: FF        .byte $FF   ; end token



; enemy counter ram_6BA2 based on ram_69FE_map_data
- D 0 - I - 0x019724 06:9714: 03        .byte $03   ; index 00
- D 0 - I - 0x019725 06:9715: 05        .byte $05   ; index 40
- D 0 - I - 0x019726 06:9716: 06        .byte $06   ; index 80
- D 0 - I - 0x019727 06:9717: 08        .byte $08   ; index C0



- D 0 - I - 0x019728 06:9718: DD        .byte $DD   ; ram_pos_Y_link



- D 0 - I - 0x019729 06:9719: DC        .byte $DC   ; ram_6BA7
- D 0 - I - 0x01972A 06:971A: 99        .byte $99   ; ram_6BA8
- D 0 - I - 0x01972B 06:971B: 88        .byte $88   ; ram_6BA9
- D 0 - I - 0x01972C 06:971C: 89        .byte $89   ; ram_6BAA
- D 0 - I - 0x01972D 06:971D: 06        .byte $06   ; ram_6BAB
- D 0 - I - 0x01972E 06:971E: 10        .byte $10   ; ram_6BAC
- D 0 - I - 0x01972F 06:971F: 71        .byte $71   ; ram_6BAD
- D 0 - I - 0x019730 06:9720: 03        .byte $00 + $03   ; ram_6BAE
- D 0 - I - 0x019731 06:9721: FF 06     .word ram_06FF
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



; HUD minimap ram_6BCD
- D 0 - I - 0x01974F 06:973F: 20 64     .dbyt $2064 ; 
- D 0 - I - 0x019751 06:9741: 04        .byte $00 + $00 + $04   ; 
- D 0 - I - 0x019752 06:9742: FF        .byte $FF, $67, $FF, $FF   ; 

- D 0 - I - 0x019756 06:9746: 20 84     .dbyt $2084 ; 
- D 0 - I - 0x019758 06:9748: 03        .byte $00 + $00 + $03   ; 
- D 0 - I - 0x019759 06:9749: FF        .byte $FF, $FF, $FB   ; 

- D 0 - I - 0x01975C 06:974C: 20 A4     .dbyt $20A4 ; 
- D 0 - I - 0x01975E 06:974E: 02        .byte $00 + $00 + $02   ; 
- D 0 - I - 0x01975F 06:974F: FF        .byte $FF, $FB   ; 

- D 0 - I - 0x019761 06:9751: 20 C4     .dbyt $20C4 ; 
- D 0 - I - 0x019763 06:9753: 03        .byte $00 + $00 + $03   ; 
- D 0 - I - 0x019764 06:9754: FB        .byte $FB, $FF, $67   ; 

- D 0 - I - 0x019767 06:9757: FF        .byte $FF   ; end token
; filling with FF bytes up to the end of the range
- D 0 - I - 0x019768 06:9758: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x019778 06:9768: FF        .byte $FF, $FF, $FF, $FF   ; 



; custom palette ram_6BFA (see 0x006D4C)
; 00 
- D 0 - I - 0x01977C 06:976C: 0F        .byte $0F, $08, $18, $28   ; 
- D 0 - I - 0x019780 06:9770: 0F        .byte $0F, $12, $18, $28   ; 
; 08 
- D 0 - I - 0x019784 06:9774: 0F        .byte $0F, $08, $08, $18   ; 
- D 0 - I - 0x019788 06:9778: 0F        .byte $0F, $11, $08, $18   ; 
; 10 
- D 0 - I - 0x01978C 06:977C: 0F        .byte $0F, $0F, $08, $08   ; 
- D 0 - I - 0x019790 06:9780: 0F        .byte $0F, $02, $08, $08   ; 
; 18 
- D 0 - I - 0x019794 06:9784: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x019798 06:9788: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 20 
- D 0 - I - 0x01979C 06:978C: 0F        .byte $0F, $00, $10, $30   ; 
- D 0 - I - 0x0197A0 06:9790: 0F        .byte $0F, $00, $10, $30   ; 
; 28 
- D 0 - I - 0x0197A4 06:9794: 0F        .byte $0F, $00, $00, $10   ; 
- D 0 - I - 0x0197A8 06:9798: 0F        .byte $0F, $00, $00, $10   ; 
; 30 
- D 0 - I - 0x0197AC 06:979C: 0F        .byte $0F, $0F, $00, $00   ; 
- D 0 - I - 0x0197B0 06:97A0: 0F        .byte $0F, $0F, $00, $00   ; 
; 38 
- D 0 - I - 0x0197B4 06:97A4: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x0197B8 06:97A8: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 40 
- D 0 - I - 0x0197BC 06:97AC: 0F        .byte $0F, $08, $18, $28   ; 
- D 0 - I - 0x0197C0 06:97B0: 0F        .byte $0F, $12, $18, $28   ; 
; 48 
- D 0 - I - 0x0197C4 06:97B4: 0F        .byte $0F, $08, $08, $18   ; 
- D 0 - I - 0x0197C8 06:97B8: 0F        .byte $0F, $11, $08, $18   ; 
; 50 
- D 0 - I - 0x0197CC 06:97BC: 0F        .byte $0F, $0F, $08, $08   ; 
- D 0 - I - 0x0197D0 06:97C0: 0F        .byte $0F, $02, $08, $08   ; 
; 58 
- D 0 - I - 0x0197D4 06:97C4: 0F        .byte $0F, $0F, $0F, $08   ; 
- D 0 - I - 0x0197D8 06:97C8: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 60 
- D 0 - I - 0x0197DC 06:97CC: 0F        .byte $0F, $06, $17, $16   ; 
- D 0 - I - 0x0197E0 06:97D0: 0F        .byte $0F, $06, $17, $16   ; 
; 68 
- D 0 - I - 0x0197E4 06:97D4: 0F        .byte $0F, $07, $06, $16   ; 
- D 0 - I - 0x0197E8 06:97D8: 0F        .byte $0F, $07, $06, $16   ; 
; 70 
- D 0 - I - 0x0197EC 06:97DC: 0F        .byte $0F, $0F, $07, $06   ; 
- D 0 - I - 0x0197F0 06:97E0: 0F        .byte $0F, $0F, $07, $06   ; 
; 78
- D 0 - I - 0x0197F4 06:97E4: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x0197F8 06:97E8: 0F        .byte $0F, $0F, $0F, $0F   ; 



_off010_97EC_05:
; default palette
- D 0 - I - 0x0197FC 06:97EC: 3F        .dbyt $3F00 ; 
- D 0 - I - 0x0197FE 06:97EE: 20        .byte $00 + $20   ; 
- D 0 - I - 0x0197FF 06:97EF: 0F        .byte $0F, $30, $00, $12   ; 
- D 0 - I - 0x019803 06:97F3: 0F        .byte $0F, $16, $27, $36   ; 
- D 0 - I - 0x019807 06:97F7: 0F        .byte $0F, $0A, $1A, $2A   ; 
- D 0 - I - 0x01980B 06:97FB: 0F        .byte $0F, $16, $1A, $2A   ; 

- D 0 - I - 0x01980F 06:97FF: 0F        .byte $0F, $29, $27, $17   ; 
- D 0 - I - 0x019813 06:9803: 0F        .byte $0F, $02, $22, $30   ; 
- D 0 - I - 0x019817 06:9807: 0F        .byte $0F, $16, $27, $30   ; 
- D 0 - I - 0x01981B 06:980B: 0F        .byte $0F, $0A, $1A, $2A   ; 

- D 0 - I - 0x01981F 06:980F: FF        .byte $FF   ; end token



; enemy counter ram_6BA2 based on ram_69FE_map_data
- D 0 - I - 0x019820 06:9810: 03        .byte $03   ; index 00
- D 0 - I - 0x019821 06:9811: 05        .byte $05   ; index 40
- D 0 - I - 0x019822 06:9812: 06        .byte $06   ; index 80
- D 0 - I - 0x019823 06:9813: 08        .byte $08   ; index C0



- D 0 - I - 0x019824 06:9814: DD        .byte $DD   ; ram_pos_Y_link



- D 0 - I - 0x019825 06:9815: 87        .byte $87   ; ram_6BA7
- D 0 - I - 0x019826 06:9816: C8        .byte $C8   ; ram_6BA8
- D 0 - I - 0x019827 06:9817: 8A        .byte $8A   ; ram_6BA9
- D 0 - I - 0x019828 06:9818: 89        .byte $89   ; ram_6BAA
- D 0 - I - 0x019829 06:9819: 02        .byte $02   ; ram_6BAB
- D 0 - I - 0x01982A 06:981A: F0        .byte $F0   ; ram_6BAC
- D 0 - I - 0x01982B 06:981B: 76        .byte $76   ; ram_6BAD
- D 0 - I - 0x01982C 06:981C: 14        .byte $10 + $04   ; ram_6BAE
- D 0 - I - 0x01982D 06:981D: FF 06     .word ram_06FF
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



; HUD minimap ram_6BCD
- D 0 - I - 0x01984B 06:983B: 20 64     .dbyt $2064 ; 
- D 0 - I - 0x01984D 06:983D: 04        .byte $00 + $00 + $04   ; 
- D 0 - I - 0x01984E 06:983E: FB        .byte $FB, $67, $FF, $FB   ; 

- D 0 - I - 0x019852 06:9842: 20 84     .dbyt $2084 ; 
- D 0 - I - 0x019854 06:9844: 04        .byte $00 + $00 + $04   ; 
- D 0 - I - 0x019855 06:9845: FF        .byte $FF, $67, $67, $FF   ; 

- D 0 - I - 0x019859 06:9849: 20 A5     .dbyt $20A5 ; 
- D 0 - I - 0x01985B 06:984B: 03        .byte $00 + $00 + $03   ; 
- D 0 - I - 0x01985C 06:984C: FB        .byte $FB, $FF, $FF   ; 

- D 0 - I - 0x01985F 06:984F: 20 C4     .dbyt $20C4 ; 
- D 0 - I - 0x019861 06:9851: 04        .byte $00 + $00 + $04   ; 
- D 0 - I - 0x019862 06:9852: 67        .byte $67, $67, $FF, $FF   ; 

- D 0 - I - 0x019866 06:9856: FF        .byte $FF   ; end token
; filling with FF bytes up to the end of the range
- D 0 - I - 0x019867 06:9857: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x019877 06:9867: FF        .byte $FF   ; 



; custom palette ram_6BFA (see 0x006D4C)
; 00 
- D 0 - I - 0x019878 06:9868: 0F        .byte $0F, $0A, $1A, $2A   ; 
- D 0 - I - 0x01987C 06:986C: 0F        .byte $0F, $16, $1A, $2A   ; 
; 08 
- D 0 - I - 0x019880 06:9870: 0F        .byte $0F, $0A, $0A, $1A   ; 
- D 0 - I - 0x019884 06:9874: 0F        .byte $0F, $17, $0A, $1A   ; 
; 10 
- D 0 - I - 0x019888 06:9878: 0F        .byte $0F, $0F, $0A, $0A   ; 
- D 0 - I - 0x01988C 06:987C: 0F        .byte $0F, $06, $0A, $0A   ; 
; 18 
- D 0 - I - 0x019890 06:9880: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x019894 06:9884: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 20 
- D 0 - I - 0x019898 06:9888: 0F        .byte $0F, $00, $10, $30   ; 
- D 0 - I - 0x01989C 06:988C: 0F        .byte $0F, $00, $10, $30   ; 
; 28 
- D 0 - I - 0x0198A0 06:9890: 0F        .byte $0F, $00, $00, $10   ; 
- D 0 - I - 0x0198A4 06:9894: 0F        .byte $0F, $00, $00, $10   ; 
; 30 
- D 0 - I - 0x0198A8 06:9898: 0F        .byte $0F, $0F, $00, $00   ; 
- D 0 - I - 0x0198AC 06:989C: 0F        .byte $0F, $0F, $00, $00   ; 
; 38 
- D 0 - I - 0x0198B0 06:98A0: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x0198B4 06:98A4: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 40 
- D 0 - I - 0x0198B8 06:98A8: 0F        .byte $0F, $0A, $1A, $2A   ; 
- D 0 - I - 0x0198BC 06:98AC: 0F        .byte $0F, $16, $1A, $2A   ; 
; 48 
- D 0 - I - 0x0198C0 06:98B0: 0F        .byte $0F, $0A, $0A, $1A   ; 
- D 0 - I - 0x0198C4 06:98B4: 0F        .byte $0F, $17, $0A, $1A   ; 
; 50 
- D 0 - I - 0x0198C8 06:98B8: 0F        .byte $0F, $0F, $0A, $0A   ; 
- D 0 - I - 0x0198CC 06:98BC: 0F        .byte $0F, $06, $0A, $0A   ; 
; 58 
- D 0 - I - 0x0198D0 06:98C0: 0F        .byte $0F, $0F, $0F, $0A   ; 
- D 0 - I - 0x0198D4 06:98C4: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 60 
- D 0 - I - 0x0198D8 06:98C8: 0F        .byte $0F, $06, $17, $16   ; 
- D 0 - I - 0x0198DC 06:98CC: 0F        .byte $0F, $06, $17, $16   ; 
; 68 
- D 0 - I - 0x0198E0 06:98D0: 0F        .byte $0F, $07, $06, $16   ; 
- D 0 - I - 0x0198E4 06:98D4: 0F        .byte $0F, $07, $06, $16   ; 
; 70 
- D 0 - I - 0x0198E8 06:98D8: 0F        .byte $0F, $0F, $07, $06   ; 
- D 0 - I - 0x0198EC 06:98DC: 0F        .byte $0F, $0F, $07, $06   ; 
; 78
- D 0 - I - 0x0198F0 06:98E0: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x0198F4 06:98E4: 0F        .byte $0F, $0F, $0F, $0F   ; 



_off010_98E8_06:
; default palette
- D 0 - I - 0x0198F8 06:98E8: 3F        .dbyt $3F00 ; 
- D 0 - I - 0x0198FA 06:98EA: 20        .byte $00 + $20   ; 
- D 0 - I - 0x0198FB 06:98EB: 0F        .byte $0F, $30, $00, $12   ; 
- D 0 - I - 0x0198FF 06:98EF: 0F        .byte $0F, $16, $27, $36   ; 
- D 0 - I - 0x019903 06:98F3: 0F        .byte $0F, $08, $18, $28   ; 
- D 0 - I - 0x019907 06:98F7: 0F        .byte $0F, $16, $18, $28   ; 

- D 0 - I - 0x01990B 06:98FB: 0F        .byte $0F, $29, $27, $17   ; 
- D 0 - I - 0x01990F 06:98FF: 0F        .byte $0F, $02, $22, $30   ; 
- D 0 - I - 0x019913 06:9903: 0F        .byte $0F, $16, $27, $30   ; 
- D 0 - I - 0x019917 06:9907: 0F        .byte $0F, $08, $18, $28   ; 

- D 0 - I - 0x01991B 06:990B: FF        .byte $FF   ; end token



; enemy counter ram_6BA2 based on ram_69FE_map_data
- D 0 - I - 0x01991C 06:990C: 03        .byte $03   ; index 00
- D 0 - I - 0x01991D 06:990D: 05        .byte $05   ; index 40
- D 0 - I - 0x01991E 06:990E: 06        .byte $06   ; index 80
- D 0 - I - 0x01991F 06:990F: 08        .byte $08   ; index C0



- D 0 - I - 0x019920 06:9910: DD        .byte $DD   ; ram_pos_Y_link



- D 0 - I - 0x019921 06:9911: 89        .byte $89   ; ram_6BA7
- D 0 - I - 0x019922 06:9912: D6        .byte $D6   ; ram_6BA8
- D 0 - I - 0x019923 06:9913: 26        .byte $26   ; ram_6BA9
- D 0 - I - 0x019924 06:9914: 2C        .byte $2C   ; ram_6BAA
- D 0 - I - 0x019925 06:9915: 0D        .byte $0D   ; ram_6BAB
- D 0 - I - 0x019926 06:9916: C8        .byte $C8   ; ram_6BAC
- D 0 - I - 0x019927 06:9917: 79        .byte $79   ; ram_6BAD
- D 0 - I - 0x019928 06:9918: 0C        .byte $00 + $0C   ; ram_6BAE
- D 0 - I - 0x019929 06:9919: FF 06     .word ram_06FF
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



; HUD minimap ram_6BCD
- D 0 - I - 0x019947 06:9937: 20 63     .dbyt $2063 ; 
- D 0 - I - 0x019949 06:9939: 06        .byte $00 + $00 + $06   ; 
- D 0 - I - 0x01994A 06:993A: FB        .byte $FB, $FF, $FF, $FF, $FF, $FB   ; 

- D 0 - I - 0x019950 06:9940: 20 83     .dbyt $2083 ; 
- D 0 - I - 0x019952 06:9942: 06        .byte $00 + $00 + $06   ; 
- D 0 - I - 0x019953 06:9943: FF        .byte $FF, $FF, $FB, $24, $FF, $67   ; 

- D 0 - I - 0x019959 06:9949: 20 A3     .dbyt $20A3 ; 
- D 0 - I - 0x01995B 06:994B: 01        .byte $00 + $00 + $01   ; 
- D 0 - I - 0x01995C 06:994C: FF        .byte $FF   ; 

- D 0 - I - 0x01995D 06:994D: 20 C3     .dbyt $20C3 ; 
- D 0 - I - 0x01995F 06:994F: 03        .byte $00 + $00 + $03   ; 
- D 0 - I - 0x019960 06:9950: FF        .byte $FF, $FB, $FF   ; 

- D 0 - I - 0x019963 06:9953: FF        .byte $FF   ; end token
; filling with FF bytes up to the end of the range
- D 0 - I - 0x019964 06:9954: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



; custom palette ram_6BFA (see 0x006D4C)
; 00 
- D 0 - I - 0x019974 06:9964: 0F        .byte $0F, $08, $18, $28   ; 
- D 0 - I - 0x019978 06:9968: 0F        .byte $0F, $16, $18, $28   ; 
; 08 
- D 0 - I - 0x01997C 06:996C: 0F        .byte $0F, $08, $08, $18   ; 
- D 0 - I - 0x019980 06:9970: 0F        .byte $0F, $17, $08, $18   ; 
; 10 
- D 0 - I - 0x019984 06:9974: 0F        .byte $0F, $0F, $08, $08   ; 
- D 0 - I - 0x019988 06:9978: 0F        .byte $0F, $06, $08, $08   ; 
; 18 
- D 0 - I - 0x01998C 06:997C: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x019990 06:9980: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 20 
- D 0 - I - 0x019994 06:9984: 0F        .byte $0F, $00, $10, $30   ; 
- D 0 - I - 0x019998 06:9988: 0F        .byte $0F, $00, $10, $30   ; 
; 28 
- D 0 - I - 0x01999C 06:998C: 0F        .byte $0F, $00, $00, $10   ; 
- D 0 - I - 0x0199A0 06:9990: 0F        .byte $0F, $00, $00, $10   ; 
; 30 
- D 0 - I - 0x0199A4 06:9994: 0F        .byte $0F, $0F, $00, $00   ; 
- D 0 - I - 0x0199A8 06:9998: 0F        .byte $0F, $0F, $00, $00   ; 
; 38 
- D 0 - I - 0x0199AC 06:999C: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x0199B0 06:99A0: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 40 
- D 0 - I - 0x0199B4 06:99A4: 0F        .byte $0F, $08, $18, $28   ; 
- D 0 - I - 0x0199B8 06:99A8: 0F        .byte $0F, $16, $18, $28   ; 
; 48 
- D 0 - I - 0x0199BC 06:99AC: 0F        .byte $0F, $08, $08, $18   ; 
- D 0 - I - 0x0199C0 06:99B0: 0F        .byte $0F, $17, $08, $18   ; 
; 50 
- D 0 - I - 0x0199C4 06:99B4: 0F        .byte $0F, $0F, $08, $08   ; 
- D 0 - I - 0x0199C8 06:99B8: 0F        .byte $0F, $06, $08, $08   ; 
; 58 
- D 0 - I - 0x0199CC 06:99BC: 0F        .byte $0F, $0F, $0F, $08   ; 
- D 0 - I - 0x0199D0 06:99C0: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 60 
- D 0 - I - 0x0199D4 06:99C4: 0F        .byte $0F, $06, $17, $16   ; 
- D 0 - I - 0x0199D8 06:99C8: 0F        .byte $0F, $06, $17, $16   ; 
; 68 
- D 0 - I - 0x0199DC 06:99CC: 0F        .byte $0F, $07, $06, $16   ; 
- D 0 - I - 0x0199E0 06:99D0: 0F        .byte $0F, $07, $06, $16   ; 
; 70 
- D 0 - I - 0x0199E4 06:99D4: 0F        .byte $0F, $0F, $07, $06   ; 
- D 0 - I - 0x0199E8 06:99D8: 0F        .byte $0F, $0F, $07, $06   ; 
; 78
- D 0 - I - 0x0199EC 06:99DC: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x0199F0 06:99E0: 0F        .byte $0F, $0F, $0F, $0F   ; 



_off010_99E4_07:
; default palette
- D 0 - I - 0x0199F4 06:99E4: 3F        .dbyt $3F00 ; 
- D 0 - I - 0x0199F6 06:99E6: 20        .byte $00 + $20   ; 
- D 0 - I - 0x0199F7 06:99E7: 0F        .byte $0F, $30, $00, $12   ; 
- D 0 - I - 0x0199FB 06:99EB: 0F        .byte $0F, $16, $27, $36   ; 
- D 0 - I - 0x0199FF 06:99EF: 0F        .byte $0F, $0A, $1A, $2A   ; 
- D 0 - I - 0x019A03 06:99F3: 0F        .byte $0F, $12, $1A, $2A   ; 

- D 0 - I - 0x019A07 06:99F7: 0F        .byte $0F, $29, $27, $17   ; 
- D 0 - I - 0x019A0B 06:99FB: 0F        .byte $0F, $02, $22, $30   ; 
- D 0 - I - 0x019A0F 06:99FF: 0F        .byte $0F, $16, $27, $30   ; 
- D 0 - I - 0x019A13 06:9A03: 0F        .byte $0F, $0A, $1A, $2A   ; 

- D 0 - I - 0x019A17 06:9A07: FF        .byte $FF   ; end token



; enemy counter ram_6BA2 based on ram_69FE_map_data
- D 0 - I - 0x019A18 06:9A08: 03        .byte $03   ; index 00
- D 0 - I - 0x019A19 06:9A09: 05        .byte $05   ; index 40
- D 0 - I - 0x019A1A 06:9A0A: 06        .byte $06   ; index 80
- D 0 - I - 0x019A1B 06:9A0B: 08        .byte $08   ; index C0



- D 0 - I - 0x019A1C 06:9A0C: DD        .byte $DD   ; ram_pos_Y_link



- D 0 - I - 0x019A1D 06:9A0D: 89        .byte $89   ; ram_6BA7
- D 0 - I - 0x019A1E 06:9A0E: D6        .byte $D6   ; ram_6BA8
- D 0 - I - 0x019A1F 06:9A0F: 26        .byte $26   ; ram_6BA9
- D 0 - I - 0x019A20 06:9A10: 2C        .byte $2C   ; ram_6BAA
- D 0 - I - 0x019A21 06:9A11: 0D        .byte $0D   ; ram_6BAB
- D 0 - I - 0x019A22 06:9A12: C8        .byte $C8   ; ram_6BAC
- D 0 - I - 0x019A23 06:9A13: 79        .byte $79   ; ram_6BAD
- D 0 - I - 0x019A24 06:9A14: 2B        .byte $20 + $0B   ; ram_6BAE
- D 0 - I - 0x019A25 06:9A15: 7F 07     .word ram_077F
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



; HUD minimap ram_6BCD
- D 0 - I - 0x019A43 06:9A33: 20 63     .dbyt $2063 ; 
- D 0 - I - 0x019A45 06:9A35: 06        .byte $00 + $00 + $06   ; 
- D 0 - I - 0x019A46 06:9A36: FB        .byte $FB, $FF, $67, $FF, $FF, $67   ; 

- D 0 - I - 0x019A4C 06:9A3C: 20 83     .dbyt $2083 ; 
- D 0 - I - 0x019A4E 06:9A3E: 04        .byte $00 + $00 + $04   ; 
- D 0 - I - 0x019A4F 06:9A3F: FF        .byte $FF, $FF, $FF, $67   ; 

- D 0 - I - 0x019A53 06:9A43: 20 A3     .dbyt $20A3 ; 
- D 0 - I - 0x019A55 06:9A45: 04        .byte $00 + $00 + $04   ; 
- D 0 - I - 0x019A56 06:9A46: FF        .byte $FF, $FF, $FB, $FB   ; 

- D 0 - I - 0x019A5A 06:9A4A: 20 C3     .dbyt $20C3 ; 
- D 0 - I - 0x019A5C 06:9A4C: 06        .byte $00 + $00 + $06   ; 
- D 0 - I - 0x019A5D 06:9A4D: FF        .byte $FF, $FF, $FF, $67, $67, $67   ; 

- D 0 - I - 0x019A63 06:9A53: FF        .byte $FF   ; end token
; filling with FF bytes up to the end of the range
- D 0 - I - 0x019A64 06:9A54: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



; custom palette ram_6BFA (see 0x006D4C)
; 00 
- D 0 - I - 0x019A70 06:9A60: 0F        .byte $0F, $0A, $1A, $2A   ; 
- D 0 - I - 0x019A74 06:9A64: 0F        .byte $0F, $12, $1A, $2A   ; 
; 08 
- D 0 - I - 0x019A78 06:9A68: 0F        .byte $0F, $0A, $0A, $1A   ; 
- D 0 - I - 0x019A7C 06:9A6C: 0F        .byte $0F, $11, $0A, $1A   ; 
; 10 
- D 0 - I - 0x019A80 06:9A70: 0F        .byte $0F, $0F, $0A, $0A   ; 
- D 0 - I - 0x019A84 06:9A74: 0F        .byte $0F, $02, $0A, $0A   ; 
; 18 
- D 0 - I - 0x019A88 06:9A78: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x019A8C 06:9A7C: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 20 
- D 0 - I - 0x019A90 06:9A80: 0F        .byte $0F, $00, $10, $30   ; 
- D 0 - I - 0x019A94 06:9A84: 0F        .byte $0F, $00, $10, $30   ; 
; 28 
- D 0 - I - 0x019A98 06:9A88: 0F        .byte $0F, $00, $00, $10   ; 
- D 0 - I - 0x019A9C 06:9A8C: 0F        .byte $0F, $00, $00, $10   ; 
; 30 
- D 0 - I - 0x019AA0 06:9A90: 0F        .byte $0F, $0F, $00, $00   ; 
- D 0 - I - 0x019AA4 06:9A94: 0F        .byte $0F, $0F, $00, $00   ; 
; 38 
- D 0 - I - 0x019AA8 06:9A98: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x019AAC 06:9A9C: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 40 
- D 0 - I - 0x019AB0 06:9AA0: 0F        .byte $0F, $0A, $1A, $2A   ; 
- D 0 - I - 0x019AB4 06:9AA4: 0F        .byte $0F, $12, $1A, $2A   ; 
; 48 
- D 0 - I - 0x019AB8 06:9AA8: 0F        .byte $0F, $0A, $0A, $1A   ; 
- D 0 - I - 0x019ABC 06:9AAC: 0F        .byte $0F, $11, $0A, $1A   ; 
; 50 
- D 0 - I - 0x019AC0 06:9AB0: 0F        .byte $0F, $0F, $0A, $0A   ; 
- D 0 - I - 0x019AC4 06:9AB4: 0F        .byte $0F, $02, $0A, $0A   ; 
; 58 
- D 0 - I - 0x019AC8 06:9AB8: 0F        .byte $0F, $0F, $0F, $0A   ; 
- D 0 - I - 0x019ACC 06:9ABC: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 60 
- D 0 - I - 0x019AD0 06:9AC0: 0F        .byte $0F, $06, $17, $16   ; 
- D 0 - I - 0x019AD4 06:9AC4: 0F        .byte $0F, $06, $17, $16   ; 
; 68 
- D 0 - I - 0x019AD8 06:9AC8: 0F        .byte $0F, $07, $06, $16   ; 
- D 0 - I - 0x019ADC 06:9ACC: 0F        .byte $0F, $07, $06, $16   ; 
; 70 
- D 0 - I - 0x019AE0 06:9AD0: 0F        .byte $0F, $0F, $07, $06   ; 
- D 0 - I - 0x019AE4 06:9AD4: 0F        .byte $0F, $0F, $07, $06   ; 
; 78
- D 0 - I - 0x019AE8 06:9AD8: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x019AEC 06:9ADC: 0F        .byte $0F, $0F, $0F, $0F   ; 



_off010_9AE0_08:
; default palette
- D 0 - I - 0x019AF0 06:9AE0: 3F        .dbyt $3F00 ; 
- D 0 - I - 0x019AF2 06:9AE2: 20        .byte $00 + $20   ; 
- D 0 - I - 0x019AF3 06:9AE3: 0F        .byte $0F, $30, $00, $12   ; 
- D 0 - I - 0x019AF7 06:9AE7: 0F        .byte $0F, $16, $27, $36   ; 
- D 0 - I - 0x019AFB 06:9AEB: 0F        .byte $0F, $00, $10, $30   ; 
- D 0 - I - 0x019AFF 06:9AEF: 0F        .byte $0F, $22, $10, $30   ; 

- D 0 - I - 0x019B03 06:9AF3: 0F        .byte $0F, $29, $27, $17   ; 
- D 0 - I - 0x019B07 06:9AF7: 0F        .byte $0F, $02, $22, $30   ; 
- D 0 - I - 0x019B0B 06:9AFB: 0F        .byte $0F, $16, $27, $30   ; 
- D 0 - I - 0x019B0F 06:9AFF: 0F        .byte $0F, $00, $10, $30   ; 

- D 0 - I - 0x019B13 06:9B03: FF        .byte $FF   ; end token



; enemy counter ram_6BA2 based on ram_69FE_map_data
- D 0 - I - 0x019B14 06:9B04: 03        .byte $03   ; index 00
- D 0 - I - 0x019B15 06:9B05: 05        .byte $05   ; index 40
- D 0 - I - 0x019B16 06:9B06: 06        .byte $06   ; index 80
- D 0 - I - 0x019B17 06:9B07: 08        .byte $08   ; index C0



- D 0 - I - 0x019B18 06:9B08: DD        .byte $DD   ; ram_pos_Y_link



- D 0 - I - 0x019B19 06:9B09: 89        .byte $89   ; ram_6BA7
- D 0 - I - 0x019B1A 06:9B0A: D6        .byte $D6   ; ram_6BA8
- D 0 - I - 0x019B1B 06:9B0B: 26        .byte $26   ; ram_6BA9
- D 0 - I - 0x019B1C 06:9B0C: 2C        .byte $2C   ; ram_6BAA
- D 0 - I - 0x019B1D 06:9B0D: 0A        .byte $0A   ; ram_6BAB
- D 0 - I - 0x019B1E 06:9B0E: B0        .byte $B0   ; ram_6BAC
- D 0 - I - 0x019B1F 06:9B0F: 7E        .byte $7E   ; ram_6BAD
- D 0 - I - 0x019B20 06:9B10: 2C        .byte $20 + $0C   ; ram_6BAE
- D 0 - I - 0x019B21 06:9B11: 7F 07     .word ram_077F
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



; HUD minimap ram_6BCD
- D 0 - I - 0x019B3F 06:9B2F: 20 65     .dbyt $2065 ; 
- D 0 - I - 0x019B41 06:9B31: 03        .byte $00 + $00 + $03   ; 
- D 0 - I - 0x019B42 06:9B32: FB        .byte $FB, $FF, $FB   ; 

- D 0 - I - 0x019B45 06:9B35: 20 83     .dbyt $2083 ; 
- D 0 - I - 0x019B47 06:9B37: 05        .byte $00 + $00 + $05   ; 
- D 0 - I - 0x019B48 06:9B38: FB        .byte $FB, $FF, $FB, $FF, $FB   ; 

- D 0 - I - 0x019B4D 06:9B3D: 20 A3     .dbyt $20A3 ; 
- D 0 - I - 0x019B4F 06:9B3F: 05        .byte $00 + $00 + $05   ; 
- D 0 - I - 0x019B50 06:9B40: 67        .byte $67, $FF, $FF, $FF, $FB   ; 

- D 0 - I - 0x019B55 06:9B45: 20 C4     .dbyt $20C4 ; 
- D 0 - I - 0x019B57 06:9B47: 04        .byte $00 + $00 + $04   ; 
- D 0 - I - 0x019B58 06:9B48: FB        .byte $FB, $FB, $FF, $FB   ; 

- D 0 - I - 0x019B5C 06:9B4C: FF        .byte $FF   ; end token
; filling with FF bytes up to the end of the range
- D 0 - I - 0x019B5D 06:9B4D: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



; custom palette ram_6BFA (see 0x006D4C)
; 00 
- D 0 - I - 0x019B6C 06:9B5C: 0F        .byte $0F, $00, $10, $30   ; 
- D 0 - I - 0x019B70 06:9B60: 0F        .byte $0F, $22, $10, $30   ; 
; 08 
- D 0 - I - 0x019B74 06:9B64: 0F        .byte $0F, $00, $00, $10   ; 
- D 0 - I - 0x019B78 06:9B68: 0F        .byte $0F, $12, $00, $10   ; 
; 10 
- D 0 - I - 0x019B7C 06:9B6C: 0F        .byte $0F, $0F, $00, $00   ; 
- D 0 - I - 0x019B80 06:9B70: 0F        .byte $0F, $02, $00, $00   ; 
; 18 
- D 0 - I - 0x019B84 06:9B74: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x019B88 06:9B78: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 20 
- D 0 - I - 0x019B8C 06:9B7C: 0F        .byte $0F, $00, $10, $30   ; 
- D 0 - I - 0x019B90 06:9B80: 0F        .byte $0F, $00, $10, $30   ; 
; 28 
- D 0 - I - 0x019B94 06:9B84: 0F        .byte $0F, $00, $00, $10   ; 
- D 0 - I - 0x019B98 06:9B88: 0F        .byte $0F, $00, $00, $10   ; 
; 30 
- D 0 - I - 0x019B9C 06:9B8C: 0F        .byte $0F, $0F, $00, $00   ; 
- D 0 - I - 0x019BA0 06:9B90: 0F        .byte $0F, $0F, $00, $00   ; 
; 38 
- D 0 - I - 0x019BA4 06:9B94: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x019BA8 06:9B98: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 40 
- D 0 - I - 0x019BAC 06:9B9C: 0F        .byte $0F, $00, $10, $30   ; 
- D 0 - I - 0x019BB0 06:9BA0: 0F        .byte $0F, $22, $10, $30   ; 
; 48 
- D 0 - I - 0x019BB4 06:9BA4: 0F        .byte $0F, $00, $00, $10   ; 
- D 0 - I - 0x019BB8 06:9BA8: 0F        .byte $0F, $12, $00, $10   ; 
; 50 
- D 0 - I - 0x019BBC 06:9BAC: 0F        .byte $0F, $0F, $00, $00   ; 
- D 0 - I - 0x019BC0 06:9BB0: 0F        .byte $0F, $02, $00, $00   ; 
; 58 
- D 0 - I - 0x019BC4 06:9BB4: 0F        .byte $0F, $0F, $0F, $00   ; 
- D 0 - I - 0x019BC8 06:9BB8: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 60 
- D 0 - I - 0x019BCC 06:9BBC: 0F        .byte $0F, $06, $17, $16   ; 
- D 0 - I - 0x019BD0 06:9BC0: 0F        .byte $0F, $06, $17, $16   ; 
; 68 
- D 0 - I - 0x019BD4 06:9BC4: 0F        .byte $0F, $07, $06, $16   ; 
- D 0 - I - 0x019BD8 06:9BC8: 0F        .byte $0F, $07, $06, $16   ; 
; 70 
- D 0 - I - 0x019BDC 06:9BCC: 0F        .byte $0F, $0F, $07, $06   ; 
- D 0 - I - 0x019BE0 06:9BD0: 0F        .byte $0F, $0F, $07, $06   ; 
; 78
- D 0 - I - 0x019BE4 06:9BD4: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x019BE8 06:9BD8: 0F        .byte $0F, $0F, $0F, $0F   ; 



_off010_9BDC_09:
; default palette
- D 0 - I - 0x019BEC 06:9BDC: 3F        .dbyt $3F00 ; 
- D 0 - I - 0x019BEE 06:9BDE: 20        .byte $00 + $20   ; 
- D 0 - I - 0x019BEF 06:9BDF: 0F        .byte $0F, $30, $00, $12   ; 
- D 0 - I - 0x019BF3 06:9BE3: 0F        .byte $0F, $16, $27, $36   ; 
- D 0 - I - 0x019BF7 06:9BE7: 0F        .byte $0F, $00, $10, $30   ; 
- D 0 - I - 0x019BFB 06:9BEB: 0F        .byte $0F, $16, $10, $30   ; 

- D 0 - I - 0x019BFF 06:9BEF: 0F        .byte $0F, $29, $27, $17   ; 
- D 0 - I - 0x019C03 06:9BF3: 0F        .byte $0F, $02, $22, $30   ; 
- D 0 - I - 0x019C07 06:9BF7: 0F        .byte $0F, $16, $27, $30   ; 
- D 0 - I - 0x019C0B 06:9BFB: 0F        .byte $0F, $0F, $10, $30   ; 

- D 0 - I - 0x019C0F 06:9BFF: FF        .byte $FF   ; end token



; enemy counter ram_6BA2 based on ram_69FE_map_data
- D 0 - I - 0x019C10 06:9C00: 03        .byte $03   ; index 00
- D 0 - I - 0x019C11 06:9C01: 05        .byte $05   ; index 40
- D 0 - I - 0x019C12 06:9C02: 06        .byte $06   ; index 80
- D 0 - I - 0x019C13 06:9C03: 08        .byte $08   ; index C0



- D 0 - I - 0x019C14 06:9C04: DD        .byte $DD   ; ram_pos_Y_link



- D 0 - I - 0x019C15 06:9C05: 89        .byte $89   ; ram_6BA7
- D 0 - I - 0x019C16 06:9C06: D6        .byte $D6   ; ram_6BA8
- D 0 - I - 0x019C17 06:9C07: 26        .byte $26   ; ram_6BA9
- D 0 - I - 0x019C18 06:9C08: 2C        .byte $2C   ; ram_6BAA
- D 0 - I - 0x019C19 06:9C09: 04        .byte $04   ; ram_6BAB
- D 0 - I - 0x019C1A 06:9C0A: 00        .byte $00   ; ram_6BAC
- D 0 - I - 0x019C1B 06:9C0B: 76        .byte $76   ; ram_6BAD
- D 0 - I - 0x019C1C 06:9C0C: 32        .byte $30 + $02   ; ram_6BAE
- D 0 - I - 0x019C1D 06:9C0D: 7F 07     .word ram_077F
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



; HUD minimap ram_6BCD
- D 0 - I - 0x019C3B 06:9C2B: 20 62     .dbyt $2062 ; 
- D 0 - I - 0x019C3D 06:9C2D: 08        .byte $00 + $00 + $08   ; 
- D 0 - I - 0x019C3E 06:9C2E: FB        .byte $FB, $FF, $FF, $FF, $FF, $FF, $FF, $FB   ; 

- D 0 - I - 0x019C46 06:9C36: 20 82     .dbyt $2082 ; 
- D 0 - I - 0x019C48 06:9C38: 08        .byte $00 + $00 + $08   ; 
- D 0 - I - 0x019C49 06:9C39: FF        .byte $FF, $FF, $67, $FF, $FF, $67, $FF, $FF   ; 

- D 0 - I - 0x019C51 06:9C41: 20 A2     .dbyt $20A2 ; 
- D 0 - I - 0x019C53 06:9C43: 48        .byte $00 + $40 + $08   ; 
- D 0 - I - 0x019C54 06:9C44: FF        .byte $FF   ; 

- D 0 - I - 0x019C55 06:9C45: 20 C3     .dbyt $20C3 ; 
- D 0 - I - 0x019C57 06:9C47: 06        .byte $00 + $00 + $06   ; 
- D 0 - I - 0x019C58 06:9C48: FF        .byte $FF, $67, $FF, $FF, $67, $FF   ; 

- D 0 - I - 0x019C5E 06:9C4E: FF        .byte $FF   ; end token
; filling with FF bytes up to the end of the range
- D 0 - I - 0x019C5F 06:9C4F: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



; custom palette ram_6BFA (see 0x006D4C)
; 00 
- D 0 - I - 0x019C68 06:9C58: 0F        .byte $0F, $00, $10, $30   ; 
- D 0 - I - 0x019C6C 06:9C5C: 0F        .byte $0F, $16, $10, $30   ; 
; 08 
- D 0 - I - 0x019C70 06:9C60: 0F        .byte $0F, $00, $00, $10   ; 
- D 0 - I - 0x019C74 06:9C64: 0F        .byte $0F, $17, $00, $10   ; 
; 10 
- D 0 - I - 0x019C78 06:9C68: 0F        .byte $0F, $0F, $00, $00   ; 
- D 0 - I - 0x019C7C 06:9C6C: 0F        .byte $0F, $06, $00, $00   ; 
; 18 
- D 0 - I - 0x019C80 06:9C70: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x019C84 06:9C74: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 20 
- D 0 - I - 0x019C88 06:9C78: 0F        .byte $0F, $00, $10, $30   ; 
- D 0 - I - 0x019C8C 06:9C7C: 0F        .byte $0F, $00, $10, $30   ; 
; 28 
- D 0 - I - 0x019C90 06:9C80: 0F        .byte $0F, $00, $00, $10   ; 
- D 0 - I - 0x019C94 06:9C84: 0F        .byte $0F, $00, $00, $10   ; 
; 30 
- D 0 - I - 0x019C98 06:9C88: 0F        .byte $0F, $0F, $00, $00   ; 
- D 0 - I - 0x019C9C 06:9C8C: 0F        .byte $0F, $0F, $00, $00   ; 
; 38 
- D 0 - I - 0x019CA0 06:9C90: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x019CA4 06:9C94: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 40 
- D 0 - I - 0x019CA8 06:9C98: 0F        .byte $0F, $00, $10, $30   ; 
- D 0 - I - 0x019CAC 06:9C9C: 0F        .byte $0F, $16, $10, $30   ; 
; 48 
- D 0 - I - 0x019CB0 06:9CA0: 0F        .byte $0F, $00, $00, $10   ; 
- D 0 - I - 0x019CB4 06:9CA4: 0F        .byte $0F, $17, $00, $10   ; 
; 50 
- D 0 - I - 0x019CB8 06:9CA8: 0F        .byte $0F, $0F, $00, $00   ; 
- D 0 - I - 0x019CBC 06:9CAC: 0F        .byte $0F, $06, $00, $00   ; 
; 58 
- D 0 - I - 0x019CC0 06:9CB0: 0F        .byte $0F, $0F, $0F, $00   ; 
- D 0 - I - 0x019CC4 06:9CB4: 0F        .byte $0F, $0F, $0F, $0F   ; 
; 60 
- D 0 - I - 0x019CC8 06:9CB8: 0F        .byte $0F, $06, $17, $16   ; 
- D 0 - I - 0x019CCC 06:9CBC: 0F        .byte $0F, $06, $17, $16   ; 
; 68 
- D 0 - I - 0x019CD0 06:9CC0: 0F        .byte $0F, $07, $06, $16   ; 
- D 0 - I - 0x019CD4 06:9CC4: 0F        .byte $0F, $07, $06, $16   ; 
; 70 
- D 0 - I - 0x019CD8 06:9CC8: 0F        .byte $0F, $0F, $07, $06   ; 
- D 0 - I - 0x019CDC 06:9CCC: 0F        .byte $0F, $0F, $07, $06   ; 
; 78
- D 0 - I - 0x019CE0 06:9CD0: 0F        .byte $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x019CE4 06:9CD4: 0F        .byte $0F, $0F, $0F, $0F   ; 



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



tbl_A000_ppu_data:
; see con_ppu_buf
- D 1 - - - 0x01A010 06:A000: 02 03     .word ram_0302_ppu_buffer  ; 00
- D 1 - - - 0x01A012 06:A002: FE A3     .word _off000_A3FE_02_guide
- D 1 - - - 0x01A014 06:A004: B4 A2     .word _off000_A2B4_04_continue
- D 1 - - - 0x01A016 06:A006: 14 68     .word _off000_bat_6814_06
- D 1 - - - 0x01A018 06:A008: 8E A2     .word _off000_A28E_08
- D 1 - - - 0x01A01A 06:A00A: 96 A2     .word _off000_A296_0A
- D 1 - - - 0x01A01C 06:A00C: 1C 68     .word _off000_bat_681C_0C_level_text
- D 1 - - - 0x01A01E 06:A00E: D3 A2     .word _off000_A2D3_0E_hud
- D 1 - - - 0x01A020 06:A010: 69 A8     .word _off000_A869_10_title_screen
- D 1 - - - 0x01A022 06:A012: F0 67     .word _off000_bat_67F0_12
- D 1 - - - 0x01A024 06:A014: 00 A1     .word _off000_A100_14
- D 1 - - - 0x01A026 06:A016: 83 A1     .word _off000_A183_16
- D 1 - - - 0x01A028 06:A018: 7E 6B     .word ram_6B7E_palette_buffer ; 18
- - - - - - 0x01A02A 06:A01A: 02 03     .word ram_0302_ppu_buffer  ; 1A unused, index not found
- - - - - - 0x01A02C 06:A01C: 02 03     .word ram_0302_ppu_buffer  ; 1C unused, index not found
- D 1 - - - 0x01A02E 06:A01E: 1D A2     .word _off000_A21D_1E
- D 1 - - - 0x01A030 06:A020: 45 A2     .word _off000_A245_20
- - - - - - 0x01A032 06:A022: 4D A2     .word _off000_A24D_22
- D 1 - - - 0x01A034 06:A024: 55 A2     .word _off000_A255_24
- D 1 - - - 0x01A036 06:A026: 69 A2     .word _off000_A269_26
- - - - - - 0x01A038 06:A028: 02 03     .word ram_0302_ppu_buffer  ; 28 unused, index not found
- D 1 - - - 0x01A03A 06:A02A: 26 A2     .word _off000_A226_2A
- D 1 - - - 0x01A03C 06:A02C: C8 A3     .word _off000_A3C8_2C
- - - - - - 0x01A03E 06:A02E: 1C 68     .word _off000_bat_681C_2E   ; unused, index not found
- D 1 - - - 0x01A040 06:A030: 16 A3     .word _off000_A316_30
- D 1 - - - 0x01A042 06:A032: 23 A3     .word _off000_A323_32
- D 1 - - - 0x01A044 06:A034: 37 A3     .word _off000_A337_34
- D 1 - - - 0x01A046 06:A036: 02 A2     .word _off000_A202_36
- D 1 - - - 0x01A048 06:A038: 48 A3     .word _off000_A348_38
- D 1 - - - 0x01A04A 06:A03A: 50 A3     .word _off000_A350_3A
- D 1 - - - 0x01A04C 06:A03C: 60 A3     .word _off000_A360_3C
- D 1 - - - 0x01A04E 06:A03E: 5D A2     .word _off000_A25D_3E_cave_palette
- D 1 - - - 0x01A050 06:A040: 78 A3     .word _off000_A378_40
- D 1 - - - 0x01A052 06:A042: 9C A3     .word _off000_A39C_42
- D 1 - - - 0x01A054 06:A044: CD 6B     .word ram_6BCD  ; 44
- D 1 - - - 0x01A056 06:A046: D0 A3     .word _off000_A3D0_46_game_over
- D 1 - - - 0x01A058 06:A048: B0 A3     .word _off000_A3B0_48
- D 1 - - - 0x01A05A 06:A04A: B9 A3     .word _off000_A3B9_4A
- D 1 - - - 0x01A05C 06:A04C: BE A3     .word _off000_A3BE_4C
- D 1 - - - 0x01A05E 06:A04E: C3 A3     .word _off000_A3C3_4E
- D 1 - - - 0x01A060 06:A050: 2F A2     .word _off000_A22F_50
- D 1 - - - 0x01A062 06:A052: 47 68     .word _off000_bat_6847_52
- D 1 - - - 0x01A064 06:A054: 4F 68     .word _off000_bat_684F_54
- D 1 - - - 0x01A066 06:A056: 59 68     .word _off000_bat_6859_56
- D 1 - - - 0x01A068 06:A058: 65 68     .word _off000_bat_6865_58
- D 1 - - - 0x01A06A 06:A05A: 35 A2     .word _off000_A235_5A
- D 1 - - - 0x01A06C 06:A05C: 73 68     .word _off000_bat_6873_5C_triforce_text
- D 1 - - - 0x01A06E 06:A05E: E8 A3     .word _off000_A3E8_5E
- D 1 - - - 0x01A070 06:A060: F4 A3     .word _off000_A3F4_60
- D 1 - - - 0x01A072 06:A062: F9 A3     .word _off000_A3F9_62
- - - - - - 0x01A074 06:A064: 02 03     .word ram_0302_ppu_buffer  ; 64 unused, index not found
- - - - - - 0x01A076 06:A066: 02 03     .word ram_0302_ppu_buffer  ; 66 unused, index not found
- - - - - - 0x01A078 06:A068: 02 03     .word ram_0302_ppu_buffer  ; 68 unused, index not found
- D 1 - - - 0x01A07A 06:A06A: 0A A2     .word _off000_A20A_6A
- D 1 - - - 0x01A07C 06:A06C: 9E A2     .word _off000_A29E_6C
- - - - - - 0x01A07E 06:A06E: 02 03     .word ram_0302_ppu_buffer  ; 6E unused, index not found
- - - - - - 0x01A080 06:A070: 02 03     .word ram_0302_ppu_buffer  ; 70 unused, index not found
- - - - - - 0x01A082 06:A072: 02 03     .word ram_0302_ppu_buffer  ; 72 unused, index not found
- - - - - - 0x01A084 06:A074: 02 03     .word ram_0302_ppu_buffer  ; 74 unused, index not found
- D 1 - - - 0x01A086 06:A076: A6 A2     .word _off000_A2A6_76
- D 1 - - - 0x01A088 06:A078: 72 A2     .word _off000_A272_78
- D 1 - - - 0x01A08A 06:A07A: 7E A2     .word _off000_A27E_7A
- D 1 - - - 0x01A08C 06:A07C: 86 A2     .word _off000_A286_7C
- - - - - - 0x01A08E 06:A07E: 02 03     .word ram_0302_ppu_buffer  ; 7E unused, index not found



sub_0x01A090_write_buffer_to_ppu:
C - - - - - 0x01A090 06:A080: A6 14     LDX ram_ppu_load_index
C - - - - - 0x01A092 06:A082: BD 00 A0  LDA tbl_A000_ppu_data,X
C - - - - - 0x01A095 06:A085: 85 00     STA ram_0000
C - - - - - 0x01A097 06:A087: BD 01 A0  LDA tbl_A000_ppu_data + $01,X
C - - - - - 0x01A09A 06:A08A: 85 01     STA ram_0001
C - - - - - 0x01A09C 06:A08C: 20 F6 A0  JSR sub_A0F6_write_to_ppu
C - - - - - 0x01A09F 06:A08F: A9 3F     LDA #$3F
C - - - - - 0x01A0A1 06:A091: 8D 00 03  STA ram_0300
C - - - - - 0x01A0A4 06:A094: A2 00     LDX #$00
C - - - - - 0x01A0A6 06:A096: 86 14     STX ram_ppu_load_index  ; con_ppu_buf_00
C - - - - - 0x01A0A8 06:A098: 86 5C     STX ram_005C
C - - - - - 0x01A0AA 06:A09A: 8E 01 03  STX ram_0301_buffer_index
C - - - - - 0x01A0AD 06:A09D: CA        DEX ; FF
C - - - - - 0x01A0AE 06:A09E: 8E 02 03  STX ram_0302_ppu_buffer
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
; X = 00
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
; FF
C - - - - - 0x01A10F 06:A0FF: 60        RTS



_off000_A100_14:
; con_ppu_buf_14
- D 1 - I - 0x01A110 06:A100: 23 C0     .dbyt $23C0 ; 
- D 1 - I - 0x01A112 06:A102: 7F        .byte $00 + $40 + $3F   ; 
- D 1 - I - 0x01A113 06:A103: 00        .byte $00   ; 

- D 1 - I - 0x01A114 06:A104: 23 D4     .dbyt $23D4 ; 
- D 1 - I - 0x01A116 06:A106: 03        .byte $00 + $00 + $03   ; 
- D 1 - I - 0x01A117 06:A107: 40        .byte $40, $50, $50   ; 

- D 1 - I - 0x01A11A 06:A10A: 23 DC     .dbyt $23DC ; 
- D 1 - I - 0x01A11C 06:A10C: 03        .byte $00 + $00 + $03   ; 
- D 1 - I - 0x01A11D 06:A10D: 44        .byte $44, $55, $55   ; 

- D 1 - I - 0x01A120 06:A110: 23 E4     .dbyt $23E4 ; 
- D 1 - I - 0x01A122 06:A112: 03        .byte $00 + $00 + $03   ; 
- D 1 - I - 0x01A123 06:A113: 44        .byte $44, $55, $55   ; 

- D 1 - I - 0x01A126 06:A116: 20 A8     .dbyt $20A8 ; 
- D 1 - I - 0x01A128 06:A118: 0F        .byte $0F   ; 
- D 1 - I - 0x01A129 06:A119: 62        .byte $62, $24, $1C, $24, $0E, $24, $15, $24, $0E, $24, $0C, $24, $1D, $24, $62   ; 

- D 1 - I - 0x01A138 06:A128: 21 03     .dbyt $2103 ; 
- D 1 - I - 0x01A13A 06:A12A: 01        .byte $01   ; 
- D 1 - I - 0x01A13B 06:A12B: 69        .byte $69   ; 

- D 1 - I - 0x01A13C 06:A12C: 21 04     .dbyt $2104 ; 
- D 1 - I - 0x01A13E 06:A12E: 58        .byte $00 + $40 + $18   ; 
- D 1 - I - 0x01A13F 06:A12F: 6A        .byte $6A   ; 

- D 1 - I - 0x01A140 06:A130: 21 1C     .dbyt $211C ; 
- D 1 - I - 0x01A142 06:A132: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A143 06:A133: 6B        .byte $6B   ; 

- D 1 - I - 0x01A144 06:A134: 21 23     .dbyt $2123 ; 
- D 1 - I - 0x01A146 06:A136: D0        .byte $80 + $40 + $10   ; 
- D 1 - I - 0x01A147 06:A137: 6C        .byte $6C   ; 

- D 1 - I - 0x01A148 06:A138: 21 3C     .dbyt $213C ; 
- D 1 - I - 0x01A14A 06:A13A: D0        .byte $80 + $40 + $10   ; 
- D 1 - I - 0x01A14B 06:A13B: 6C        .byte $6C   ; 

- D 1 - I - 0x01A14C 06:A13C: 23 23     .dbyt $2323 ; 
- D 1 - I - 0x01A14E 06:A13E: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A14F 06:A13F: 6E        .byte $6E   ; 

- D 1 - I - 0x01A150 06:A140: 23 24     .dbyt $2324 ; 
- D 1 - I - 0x01A152 06:A142: 58        .byte $00 + $40 + $18   ; 
- D 1 - I - 0x01A153 06:A143: 6A        .byte $6A   ; 

- D 1 - I - 0x01A154 06:A144: 23 3C     .dbyt $233C ; 
- D 1 - I - 0x01A156 06:A146: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A157 06:A147: 6D        .byte $6D   ; 

- D 1 - I - 0x01A158 06:A148: 21 0A     .dbyt $210A ; 
- D 1 - I - 0x01A15A 06:A14A: 06        .byte $00 + $00 + $06   ; 
- D 1 - I - 0x01A15B 06:A14B: 24        .byte $24, $17, $0A, $16, $0E, $24   ; 

- D 1 - I - 0x01A161 06:A151: 21 13     .dbyt $2113 ; 
- D 1 - I - 0x01A163 06:A153: 06        .byte $00 + $00 + $06   ; 
- D 1 - I - 0x01A164 06:A154: 24        .byte $24, $15, $12, $0F, $0E, $24   ; LIFE

- D 1 - I - 0x01A16A 06:A15A: 22 A6     .dbyt $22A6 ; 
- D 1 - I - 0x01A16C 06:A15C: 12        .byte $00 + $00 + $12   ; 
- D 1 - I - 0x01A16D 06:A15D: 1B        .byte $1B, $0E, $10, $12, $1C, $1D, $0E, $1B, $24, $22, $18, $1E, $1B, $24, $17, $0A   ; 
- D 1 - I - 0x01A17D 06:A16D: 16        .byte $16, $0E   ; 

- D 1 - I - 0x01A17F 06:A16F: 22 E6     .dbyt $22E6 ; 
- D 1 - I - 0x01A181 06:A171: 10        .byte $00 + $00 + $10   ; 
- D 1 - I - 0x01A182 06:A172: 0E        .byte $0E, $15, $12, $16, $12, $17, $0A, $1D, $12, $18, $17, $24, $16, $18, $0D, $0E   ; 

- D 1 - I - 0x01A192 06:A182: FF        .byte $FF   ; end token



_off000_A183_16:
; con_ppu_buf_16
- D 1 - I - 0x01A193 06:A183: 22 05     .dbyt $2205 ; 
- D 1 - I - 0x01A195 06:A185: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A196 06:A186: 69        .byte $69   ; 

- D 1 - I - 0x01A197 06:A187: 22 06     .dbyt $2206 ; 
- D 1 - I - 0x01A199 06:A189: 55        .byte $00 + $40 + $15   ; 
- D 1 - I - 0x01A19A 06:A18A: 6A        .byte $6A   ; 

- D 1 - I - 0x01A19B 06:A18B: 22 1B     .dbyt $221B ; 
- D 1 - I - 0x01A19D 06:A18D: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A19E 06:A18E: 6B        .byte $6B   ; 

- D 1 - I - 0x01A19F 06:A18F: 22 25     .dbyt $2225 ; 
- D 1 - I - 0x01A1A1 06:A191: C7        .byte $80 + $40 + $07   ; 
- D 1 - I - 0x01A1A2 06:A192: 6C        .byte $6C   ; 

- D 1 - I - 0x01A1A3 06:A193: 22 3B     .dbyt $223B ; 
- D 1 - I - 0x01A1A5 06:A195: C7        .byte $80 + $40 + $07   ; 
- D 1 - I - 0x01A1A6 06:A196: 6C        .byte $6C   ; 

- D 1 - I - 0x01A1A7 06:A197: 23 05     .dbyt $2305 ; 
- D 1 - I - 0x01A1A9 06:A199: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A1AA 06:A19A: 6E        .byte $6E   ; 

- D 1 - I - 0x01A1AB 06:A19B: 23 06     .dbyt $2306 ; 
- D 1 - I - 0x01A1AD 06:A19D: 55        .byte $00 + $40 + $15   ; 
- D 1 - I - 0x01A1AE 06:A19E: 6A        .byte $6A   ; 

- D 1 - I - 0x01A1AF 06:A19F: 23 1B     .dbyt $231B ; 
- D 1 - I - 0x01A1B1 06:A1A1: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A1B2 06:A1A2: 6D        .byte $6D   ; 

- D 1 - I - 0x01A1B3 06:A1A3: 22 26     .dbyt $2226 ; 
- D 1 - I - 0x01A1B5 06:A1A5: 15        .byte $00 + $00 + $15   ; 
- D 1 - I - 0x01A1B6 06:A1A6: 0A        .byte $0A, $24, $0B, $24, $0C, $24, $0D, $24, $0E, $24, $0F, $24, $10, $24, $11, $24   ; 
- D 1 - I - 0x01A1C6 06:A1B6: 12        .byte $12, $24, $13, $24, $14   ; 

- D 1 - I - 0x01A1CB 06:A1BB: 22 66     .dbyt $2266 ; 
- D 1 - I - 0x01A1CD 06:A1BD: 15        .byte $00 + $00 + $15   ; 
- D 1 - I - 0x01A1CE 06:A1BE: 15        .byte $15, $24, $16, $24, $17, $24, $18, $24, $19, $24, $1A, $24, $1B, $24, $1C, $24   ; 
- D 1 - I - 0x01A1DE 06:A1CE: 1D        .byte $1D, $24, $1E, $24, $1F   ; 

- D 1 - I - 0x01A1E3 06:A1D3: 22 A6     .dbyt $22A6 ; 
- D 1 - I - 0x01A1E5 06:A1D5: 15        .byte $00 + $00 + $15   ; 
- D 1 - I - 0x01A1E6 06:A1D6: 20        .byte $20, $24, $21, $24, $22, $24, $23, $24, $62, $24, $63, $24, $28, $24, $29, $24   ; 
- D 1 - I - 0x01A1F6 06:A1E6: 2A        .byte $2A, $24, $2B, $24, $2C   ; 

- D 1 - I - 0x01A1FB 06:A1EB: 22 E6     .dbyt $22E6 ; 
- D 1 - I - 0x01A1FD 06:A1ED: 13        .byte $00 + $00 + $13   ; 
- D 1 - I - 0x01A1FE 06:A1EE: 00        .byte $00, $24, $01, $24, $02, $24, $03, $24, $04, $24, $05, $24, $06, $24, $07, $24   ; 
- D 1 - I - 0x01A20E 06:A1FE: 08        .byte $08, $24, $09   ; 

- D 1 - I - 0x01A211 06:A201: FF        .byte $FF   ; end token



_off000_A202_36:
; con_ppu_buf_36
- D 1 - I - 0x01A212 06:A202: 3F 1C     .dbyt $3F1C ; 
- D 1 - I - 0x01A214 06:A204: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A215 06:A205: 0F        .byte $0F, $16, $2C, $3C   ; 

- D 1 - I - 0x01A219 06:A209: FF        .byte $FF   ; end token



_off000_A20A_6A:
; con_ppu_buf_6A
- D 1 - I - 0x01A21A 06:A20A: 3F 08     .dbyt $3F08 ; 
- D 1 - I - 0x01A21C 06:A20C: 08        .byte $00 + $00 + $08   ; 
- D 1 - I - 0x01A21D 06:A20D: 0F        .byte $0F, $22, $10, $00   ; 
- D 1 - I - 0x01A221 06:A211: 0F        .byte $0F, $2A, $10, $00   ; 

- D 1 - I - 0x01A225 06:A215: 3F 1C     .dbyt $3F1C ; 
- D 1 - I - 0x01A227 06:A217: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A228 06:A218: 0F        .byte $0F, $27, $06, $16   ; 

- D 1 - I - 0x01A22C 06:A21C: FF        .byte $FF   ; end token



_off000_A21D_1E:
; con_ppu_buf_1E
- D 1 - I - 0x01A22D 06:A21D: 21 A4     .dbyt $21A4 ; 
- D 1 - I - 0x01A22F 06:A21F: 58        .byte $00 + $40 + $18   ; 
- D 1 - I - 0x01A230 06:A220: 24        .byte $24   ; 

- D 1 - I - 0x01A231 06:A221: 21 C4     .dbyt $21C4 ; 
- D 1 - I - 0x01A233 06:A223: 58        .byte $00 + $40 + $18   ; 
- D 1 - I - 0x01A234 06:A224: 24        .byte $24   ; 

- D 1 - I - 0x01A235 06:A225: FF        .byte $FF   ; end token



_off000_A226_2A:
; con_ppu_buf_2A
- D 1 - I - 0x01A236 06:A226: 21 E4     .dbyt $21E4 ; 
- D 1 - I - 0x01A238 06:A228: 58        .byte $00 + $40 + $18   ; 
- D 1 - I - 0x01A239 06:A229: 24        .byte $24   ; 

- D 1 - I - 0x01A23A 06:A22A: 22 C8     .dbyt $22C8 ; 
- D 1 - I - 0x01A23C 06:A22C: 4D        .byte $00 + $40 + $0D   ; 
- D 1 - I - 0x01A23D 06:A22D: 24        .byte $24   ; 

- D 1 - I - 0x01A23E 06:A22E: FF        .byte $FF   ; end token



_off000_A22F_50:
; con_ppu_buf_50
- D 1 - I - 0x01A23F 06:A22F: 2A CF     .dbyt $2ACF ; 
- D 1 - I - 0x01A241 06:A231: 02        .byte $00 + $00 + $02   ; 
- D 1 - I - 0x01A242 06:A232: ED        .byte $ED, $EE   ; 

- D 1 - I - 0x01A244 06:A234: FF        .byte $FF   ; end token



_off000_A235_5A:
; con_ppu_buf_5A
- D 1 - I - 0x01A245 06:A235: 2B 6A     .dbyt $2B6A ; 
- D 1 - I - 0x01A247 06:A237: 0C        .byte $00 + $00 + $0C   ; 
- D 1 - I - 0x01A248 06:A238: EB        .byte $EB, $EF, $F1, $F1, $F1, $F1, $F1, $F1, $F1, $F1, $F0, $EC   ; 

- D 1 - I - 0x01A254 06:A244: FF        .byte $FF   ; end token



_off000_A245_20:
; con_ppu_buf_20
- D 1 - I - 0x01A255 06:A245: 3F 1C     .dbyt $3F1C ; 
- D 1 - I - 0x01A257 06:A247: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A258 06:A248: 0F        .byte $0F, $30, $00, $12   ; 

- D 1 - I - 0x01A25C 06:A24C: FF        .byte $FF   ; end token



_off000_A24D_22:
; con_ppu_buf_22
- - - - - - 0x01A25D 06:A24D: 3F 1C     .dbyt $3F1C ; 
- - - - - - 0x01A25F 06:A24F: 04        .byte $00 + $00 + $04   ; 
- - - - - - 0x01A260 06:A250: 0F        .byte $0F, $1A, $37, $12   ; 

- - - - - - 0x01A264 06:A254: FF        .byte $FF   ; end token



_off000_A255_24:
; con_ppu_buf_24
- D 1 - I - 0x01A265 06:A255: 3F 1C     .dbyt $3F1C ; 
- D 1 - I - 0x01A267 06:A257: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A268 06:A258: 0F        .byte $0F, $17, $37, $12   ; 

- D 1 - I - 0x01A26C 06:A25C: FF        .byte $FF   ; end token



_off000_A25D_3E_cave_palette:
; con_ppu_buf_cave_palette
- D 1 - I - 0x01A26D 06:A25D: 3F 08     .dbyt $3F08 ; 
- D 1 - I - 0x01A26F 06:A25F: 08        .byte $00 + $00 + $08   ; 
- D 1 - I - 0x01A270 06:A260: 0F        .byte $0F, $30, $00, $12   ; 
- D 1 - I - 0x01A274 06:A264: 0F        .byte $0F, $07, $0F, $17   ; 

- D 1 - I - 0x01A278 06:A268: FF        .byte $FF   ; end token



_off000_A269_26:
; con_ppu_buf_26
- D 1 - I - 0x01A279 06:A269: 23 D0     .dbyt $23D0 ; 
- D 1 - I - 0x01A27B 06:A26B: 60        .byte $00 + $40 + $20   ; 
- D 1 - I - 0x01A27C 06:A26C: AA        .byte $AA   ; 

- D 1 - I - 0x01A27D 06:A26D: 23 F0     .dbyt $23F0 ; 
- D 1 - I - 0x01A27F 06:A26F: 50        .byte $00 + $40 + $10   ; 
- D 1 - I - 0x01A280 06:A270: AA        .byte $AA   ; 

- D 1 - I - 0x01A281 06:A271: FF        .byte $FF   ; end token



_off000_A272_78:
; con_ppu_buf_78
- D 1 - I - 0x01A282 06:A272: 3F 08     .dbyt $3F08 ; 
- D 1 - I - 0x01A284 06:A274: 08        .byte $00 + $00 + $08   ; 
- D 1 - I - 0x01A285 06:A275: 0F        .byte $0F, $30, $30, $30   ; 
- D 1 - I - 0x01A289 06:A279: 0F        .byte $0F, $30, $30, $30   ; 

- D 1 - I - 0x01A28D 06:A27D: FF        .byte $FF   ; end token



_off000_A27E_7A:
; con_ppu_buf_7A
- D 1 - I - 0x01A28E 06:A27E: 3F 1C     .dbyt $3F1C ; 
- D 1 - I - 0x01A290 06:A280: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A291 06:A281: 0F        .byte $0F, $0F, $1C, $16   ; 

- D 1 - I - 0x01A295 06:A285: FF        .byte $FF   ; end token



_off000_A286_7C:
; con_ppu_buf_7C
- D 1 - I - 0x01A296 06:A286: 3F 1C     .dbyt $3F1C ; 
- D 1 - I - 0x01A298 06:A288: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A299 06:A289: 0F        .byte $0F, $2A, $1A, $0C   ; 

- D 1 - I - 0x01A29D 06:A28D: FF        .byte $FF   ; end token



_off000_A28E_08:
; con_ppu_buf_08
- D 1 - I - 0x01A29E 06:A28E: 3F 1C     .dbyt $3F1C ; 
- D 1 - I - 0x01A2A0 06:A290: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A2A1 06:A291: 0F        .byte $0F, $0A, $29, $30   ; 

- D 1 - I - 0x01A2A5 06:A295: FF        .byte $FF   ; end token



_off000_A296_0A:
; con_ppu_buf_0A
- D 1 - I - 0x01A2A6 06:A296: 3F 1C     .dbyt $3F1C ; 
- D 1 - I - 0x01A2A8 06:A298: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A2A9 06:A299: 0F        .byte $0F, $17, $27, $30   ; 

- D 1 - I - 0x01A2AD 06:A29D: FF        .byte $FF   ; end token



_off000_A29E_6C:
; con_ppu_buf_6C
- D 1 - I - 0x01A2AE 06:A29E: 22 CD     .dbyt $22CD ; 
- D 1 - I - 0x01A2B0 06:A2A0: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A2B1 06:A2A1: 62        .byte $62, $01, $00, $00   ; 

- D 1 - I - 0x01A2B5 06:A2A5: FF        .byte $FF   ; end token



_off000_A2A6_76:
; con_ppu_buf_76
- D 1 - I - 0x01A2B6 06:A2A6: 22 CB     .dbyt $22CB ; 
- D 1 - I - 0x01A2B8 06:A2A8: 0A        .byte $00 + $00 + $0A   ; 
- D 1 - I - 0x01A2B9 06:A2A9: 62        .byte $62, $01, $24, $24, $24, $24, $24, $62, $05, $00   ; 

- D 1 - I - 0x01A2C3 06:A2B3: FF        .byte $FF   ; end token



_off000_A2B4_04_continue:
; con_ppu_buf_continue
- D 1 - I - 0x01A2C4 06:A2B4: 23 C0     .dbyt $23C0 ; 
- D 1 - I - 0x01A2C6 06:A2B6: 7F        .byte $00 + $40 + $3F   ; 
- D 1 - I - 0x01A2C7 06:A2B7: 00        .byte $00   ; 

- D 1 - I - 0x01A2C8 06:A2B8: 21 4A     .dbyt $214A ; 
- D 1 - I - 0x01A2CA 06:A2BA: 08        .byte $00 + $00 + $08   ; 
- D 1 - I - 0x01A2CB 06:A2BB: 0C        .byte $0C, $18, $17, $1D, $12, $17, $1E, $0E   ; CONTINUE

- D 1 - I - 0x01A2D3 06:A2C3: 21 AA     .dbyt $21AA ; 
- D 1 - I - 0x01A2D5 06:A2C5: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A2D6 06:A2C6: 1C        .byte $1C, $0A, $1F, $0E   ; SAVE

- D 1 - I - 0x01A2DA 06:A2CA: 22 0A     .dbyt $220A ; 
- D 1 - I - 0x01A2DC 06:A2CC: 05        .byte $00 + $00 + $05   ; 
- D 1 - I - 0x01A2DD 06:A2CD: 1B        .byte $1B, $0E, $1D, $1B, $22   ; RETRY

- D 1 - I - 0x01A2E2 06:A2D2: FF        .byte $FF   ; end token



_off000_A2D3_0E_hud:
; con_ppu_buf_hud
- D 1 - I - 0x01A2E3 06:A2D3: 23 C2     .dbyt $23C2 ; 
- D 1 - I - 0x01A2E5 06:A2D5: 0E        .byte $00 + $00 + $0E   ; 
- D 1 - I - 0x01A2E6 06:A2D6: 40        .byte $40, $00, $00, $44, $55, $55, $00, $00, $04, $00, $00, $44, $55, $55   ; 

- D 1 - I - 0x01A2F4 06:A2E4: 20 6F     .dbyt $206F ; 
- D 1 - I - 0x01A2F6 06:A2E6: 0E        .byte $00 + $00 + $0E   ; 
- D 1 - I - 0x01A2F7 06:A2E7: 69        .byte $69, $0B, $6B, $69, $0A, $6B, $24, $24, $62, $15, $12, $0F, $0E, $62   ; B A -LIFE-

- D 1 - I - 0x01A305 06:A2F5: 20 CF     .dbyt $20CF ; 
- D 1 - I - 0x01A307 06:A2F7: 06        .byte $00 + $00 + $06   ; 
- D 1 - I - 0x01A308 06:A2F8: 6E        .byte $6E, $6A, $6D, $6E, $6A, $6D   ; 

- D 1 - I - 0x01A30E 06:A2FE: 20 8F     .dbyt $208F ; 
- D 1 - I - 0x01A310 06:A300: C2        .byte $80 + $40 + $02   ; 
- D 1 - I - 0x01A311 06:A301: 6C        .byte $6C   ; 

- D 1 - I - 0x01A312 06:A302: 20 91     .dbyt $2091 ; 
- D 1 - I - 0x01A314 06:A304: C2        .byte $80 + $40 + $02   ; 
- D 1 - I - 0x01A315 06:A305: 6C        .byte $6C   ; 

- D 1 - I - 0x01A316 06:A306: 20 92     .dbyt $2092 ; 
- D 1 - I - 0x01A318 06:A308: C2        .byte $80 + $40 + $02   ; 
- D 1 - I - 0x01A319 06:A309: 6C        .byte $6C   ; 

- D 1 - I - 0x01A31A 06:A30A: 20 94     .dbyt $2094 ; 
- D 1 - I - 0x01A31C 06:A30C: C2        .byte $80 + $40 + $02   ; 
- D 1 - I - 0x01A31D 06:A30D: 6C        .byte $6C   ; 

- D 1 - I - 0x01A31E 06:A30E: 20 6B     .dbyt $206B ; 
- D 1 - I - 0x01A320 06:A310: 84        .byte $80 + $00 + $04   ; 
- D 1 - I - 0x01A321 06:A311: F7        .byte $F7, $24, $F9, $61   ; 

- D 1 - I - 0x01A325 06:A315: FF        .byte $FF   ; end token



_off000_A316_30:
; con_ppu_buf_30
- D 1 - I - 0x01A326 06:A316: 29 84     .dbyt $2984 ; 
- D 1 - I - 0x01A328 06:A318: 09        .byte $00 + $00 + $09   ; 
- D 1 - I - 0x01A329 06:A319: 12        .byte $12, $17, $1F, $0E, $17, $1D, $18, $1B, $22   ; 

- D 1 - I - 0x01A332 06:A322: FF        .byte $FF   ; end token



_off000_A323_32:
; con_ppu_buf_32
- D 1 - I - 0x01A333 06:A323: 29 C7     .dbyt $29C7 ; 
- D 1 - I - 0x01A335 06:A325: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A336 06:A326: 69        .byte $69, $6A, $6A, $6B   ; 

- D 1 - I - 0x01A33A 06:A32A: 29 CF     .dbyt $29CF ; 
- D 1 - I - 0x01A33C 06:A32C: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A33D 06:A32D: 69        .byte $69   ; 

- D 1 - I - 0x01A33E 06:A32E: 29 D0     .dbyt $29D0 ; 
- D 1 - I - 0x01A340 06:A330: 4B        .byte $00 + $40 + $0B   ; 
- D 1 - I - 0x01A341 06:A331: 6A        .byte $6A   ; 

- D 1 - I - 0x01A342 06:A332: 29 DB     .dbyt $29DB ; 
- D 1 - I - 0x01A344 06:A334: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A345 06:A335: 6B        .byte $6B   ; 

- D 1 - I - 0x01A346 06:A336: FF        .byte $FF   ; end token



_off000_A337_34:
; con_ppu_buf_34
- D 1 - I - 0x01A347 06:A337: 29 E7     .dbyt $29E7 ; 
- D 1 - I - 0x01A349 06:A339: C2        .byte $80 + $40 + $02   ; 
- D 1 - I - 0x01A34A 06:A33A: 6C        .byte $6C   ; 

- D 1 - I - 0x01A34B 06:A33B: 29 EA     .dbyt $29EA ; 
- D 1 - I - 0x01A34D 06:A33D: C2        .byte $80 + $40 + $02   ; 
- D 1 - I - 0x01A34E 06:A33E: 6C        .byte $6C   ; 

- D 1 - I - 0x01A34F 06:A33F: 29 EF     .dbyt $29EF ; 
- D 1 - I - 0x01A351 06:A341: C4        .byte $80 + $40 + $04   ; 
- D 1 - I - 0x01A352 06:A342: 6C        .byte $6C   ; 

- D 1 - I - 0x01A353 06:A343: 29 FB     .dbyt $29FB ; 
- D 1 - I - 0x01A355 06:A345: C4        .byte $80 + $40 + $04   ; 
- D 1 - I - 0x01A356 06:A346: 6C        .byte $6C   ; 

- D 1 - I - 0x01A357 06:A347: FF        .byte $FF   ; end token



_off000_A348_38:
; con_ppu_buf_38
- D 1 - I - 0x01A358 06:A348: 2A 27     .dbyt $2A27 ; 
- D 1 - I - 0x01A35A 06:A34A: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A35B 06:A34B: 6E        .byte $6E, $6A, $6A, $6D   ; 

- D 1 - I - 0x01A35F 06:A34F: FF        .byte $FF   ; end token



_off000_A350_3A:
; con_ppu_buf_3A
- D 1 - I - 0x01A360 06:A350: 2A 42     .dbyt $2A42 ; 
- D 1 - I - 0x01A362 06:A352: 0C        .byte $00 + $00 + $0C   ; 
- D 1 - I - 0x01A363 06:A353: 1E        .byte $1E, $1C, $0E, $24, $0B, $24, $0B, $1E, $1D, $1D, $18, $17   ; 

- D 1 - I - 0x01A36F 06:A35F: FF        .byte $FF   ; end token



_off000_A360_3C:
; con_ppu_buf_3C
- D 1 - I - 0x01A370 06:A360: 2A 64     .dbyt $2A64 ; 
- D 1 - I - 0x01A372 06:A362: 08        .byte $00 + $00 + $08   ; 
- D 1 - I - 0x01A373 06:A363: 0F        .byte $0F, $18, $1B, $24, $1D, $11, $12, $1C   ; 

- D 1 - I - 0x01A37B 06:A36B: 2A 6F     .dbyt $2A6F ; 
- D 1 - I - 0x01A37D 06:A36D: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A37E 06:A36E: 6E        .byte $6E   ; 

- D 1 - I - 0x01A37F 06:A36F: 2A 70     .dbyt $2A70 ; 
- D 1 - I - 0x01A381 06:A371: 4B        .byte $00 + $40 + $0B   ; 
- D 1 - I - 0x01A382 06:A372: 6A        .byte $6A   ; 

- D 1 - I - 0x01A383 06:A373: 2A 7B     .dbyt $2A7B ; 
- D 1 - I - 0x01A385 06:A375: 01        .byte $00 + $00 + $01   ; 
- D 1 - I - 0x01A386 06:A376: 6D        .byte $6D   ; 

- D 1 - I - 0x01A387 06:A377: FF        .byte $FF   ; end token



_off000_A378_40:
; con_ppu_buf_40
- D 1 - I - 0x01A388 06:A378: 2B 43     .dbyt $2B43 ; 
- D 1 - I - 0x01A38A 06:A37A: 07        .byte $00 + $00 + $07   ; 
- D 1 - I - 0x01A38B 06:A37B: 0C        .byte $0C, $18, $16, $19, $0A, $1C, $1C   ; 

- D 1 - I - 0x01A392 06:A382: 2A A5     .dbyt $2AA5 ; 
- D 1 - I - 0x01A394 06:A384: 03        .byte $00 + $00 + $03   ; 
- D 1 - I - 0x01A395 06:A385: 16        .byte $16, $0A, $19   ; 

- D 1 - I - 0x01A398 06:A388: 2A 8C     .dbyt $2A8C ; 
- D 1 - I - 0x01A39A 06:A38A: 10        .byte $00 + $00 + $10   ; 
- D 1 - I - 0x01A39B 06:A38B: F5        .byte $F5, $F5, $FD, $F5, $F5, $FD, $F5, $F5, $FD, $F5, $F5, $F5, $FD, $F5, $F5, $F5   ; 

- D 1 - I - 0x01A3AB 06:A39B: FF        .byte $FF   ; end token



_off000_A39C_42:
; con_ppu_buf_42
- D 1 - I - 0x01A3AC 06:A39C: 2B AC     .dbyt $2BAC ; 
- D 1 - I - 0x01A3AE 06:A39E: 10        .byte $00 + $00 + $10   ; 
- D 1 - I - 0x01A3AF 06:A39F: F5        .byte $F5, $FE, $F5, $F5, $F5, $FE, $F5, $F5, $F5, $F5, $FE, $F5, $F5, $F5, $FE, $F5   ; 

- D 1 - I - 0x01A3BF 06:A3AF: FF        .byte $FF   ; end token



_off000_A3B0_48:
; con_ppu_buf_48
- D 1 - I - 0x01A3C0 06:A3B0: 2B D9     .dbyt $2BD9 ; 
- D 1 - I - 0x01A3C2 06:A3B2: 43        .byte $00 + $40 + $03   ; 
- D 1 - I - 0x01A3C3 06:A3B3: 05        .byte $05   ; 

- D 1 - I - 0x01A3C4 06:A3B4: 2B DC     .dbyt $2BDC ; 
- D 1 - I - 0x01A3C6 06:A3B6: 4B        .byte $00 + $40 + $0B   ; 
- D 1 - I - 0x01A3C7 06:A3B7: 00        .byte $00   ; 

- D 1 - I - 0x01A3C8 06:A3B8: FF        .byte $FF   ; end token



_off000_A3B9_4A:
; con_ppu_buf_4A
- D 1 - I - 0x01A3C9 06:A3B9: 2B E9     .dbyt $2BE9 ; 
- D 1 - I - 0x01A3CB 06:A3BB: 56        .byte $00 + $40 + $16   ; 
- D 1 - I - 0x01A3CC 06:A3BC: 55        .byte $55   ; 

- D 1 - I - 0x01A3CD 06:A3BD: FF        .byte $FF   ; end token



_off000_A3BE_4C:
; con_ppu_buf_4C
- D 1 - I - 0x01A3CE 06:A3BE: 2B A0     .dbyt $2BA0 ; 
- D 1 - I - 0x01A3D0 06:A3C0: 60        .byte $00 + $40 + $20   ; 
- D 1 - I - 0x01A3D1 06:A3C1: 24        .byte $24   ; 

- D 1 - I - 0x01A3D2 06:A3C2: FF        .byte $FF   ; end token



_off000_A3C3_4E:
; con_ppu_buf_4E
- D 1 - I - 0x01A3D3 06:A3C3: 28 E0     .dbyt $28E0 ; 
- D 1 - I - 0x01A3D5 06:A3C5: 60        .byte $00 + $40 + $20   ; 
- D 1 - I - 0x01A3D6 06:A3C6: 24        .byte $24   ; 

- D 1 - I - 0x01A3D7 06:A3C7: FF        .byte $FF   ; end token



_off000_A3C8_2C:
; con_ppu_buf_2C
- D 1 - I - 0x01A3D8 06:A3C8: 3F 10     .dbyt $3F10 ; 
- D 1 - I - 0x01A3DA 06:A3CA: 04        .byte $00 + $00 + $04   ; 
- D 1 - I - 0x01A3DB 06:A3CB: 0F        .byte $0F, $10, $30, $00   ; 

- D 1 - I - 0x01A3DF 06:A3CF: FF        .byte $FF   ; end token



_off000_A3D0_46_game_over:
; con_ppu_buf_46_game_over
- D 1 - I - 0x01A3E0 06:A3D0: 23 E3     .dbyt $23E3 ; 
- D 1 - I - 0x01A3E2 06:A3D2: 03        .byte $00 + $00 + $03   ; 
- D 1 - I - 0x01A3E3 06:A3D3: 0F        .byte $0F, $0F, $CF   ; 

- D 1 - I - 0x01A3E6 06:A3D6: 22 4C     .dbyt $224C ; 
- D 1 - I - 0x01A3E8 06:A3D8: 0A        .byte $00 + $00 + $0A   ; 
- D 1 - I - 0x01A3E9 06:A3D9: 10        .byte $10, $0A, $16, $0E, $24, $18, $1F, $0E, $1B, $24   ; GAME OVER

- D 1 - I - 0x01A3F3 06:A3E3: 22 6C     .dbyt $226C ; 
- D 1 - I - 0x01A3F5 06:A3E5: 4A        .byte $00 + $40 + $0A   ; 
- D 1 - I - 0x01A3F6 06:A3E6: 24        .byte $24   ; 

- D 1 - I - 0x01A3F7 06:A3E7: FF        .byte $FF   ; end token



_off000_A3E8_5E:
; con_ppu_buf_5E
- D 1 - I - 0x01A3F8 06:A3E8: 3F 08     .dbyt $3F08 ; 
- D 1 - I - 0x01A3FA 06:A3EA: 08        .byte $00 + $00 + $08   ; 

- D 1 - I - 0x01A3FB 06:A3EB: 0F        .byte $0F, $17, $16, $26   ; 
- D 1 - I - 0x01A3FF 06:A3EF: 0F        .byte $0F, $17, $16, $26   ; 

- D 1 - I - 0x01A403 06:A3F3: FF        .byte $FF   ; end token



_off000_A3F4_60:
; con_ppu_buf_60
- D 1 - I - 0x01A404 06:A3F4: 23 D0     .dbyt $23D0 ; 
- D 1 - I - 0x01A406 06:A3F6: 58        .byte $00 + $40 + $18   ; 
- D 1 - I - 0x01A407 06:A3F7: FF        .byte $FF   ; 

- D 1 - I - 0x01A408 06:A3F8: FF        .byte $FF   ; end token



_off000_A3F9_62:
; con_ppu_buf_62
- D 1 - I - 0x01A409 06:A3F9: 23 E8     .dbyt $23E8 ; 
- D 1 - I - 0x01A40B 06:A3FB: 58        .byte $00 + $40 + $18   ; 
- D 1 - I - 0x01A40C 06:A3FC: FF        .byte $FF   ; 

- D 1 - I - 0x01A40D 06:A3FD: FF        .byte $FF   ; end token



_off000_A3FE_02_guide:
; con_ppu_buf_guide
- D 1 - I - 0x01A40E 06:A3FE: 20 00     .dbyt $2000 ; 
- D 1 - I - 0x01A410 06:A400: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A411 06:A401: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A421 06:A411: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 

- D 1 - I - 0x01A431 06:A421: 20 20     .dbyt $2020 ; 
- D 1 - I - 0x01A433 06:A423: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A434 06:A424: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A444 06:A434: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 

- D 1 - I - 0x01A454 06:A444: 20 40     .dbyt $2040 ; 
- D 1 - I - 0x01A456 06:A446: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A457 06:A447: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A467 06:A457: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 

- D 1 - I - 0x01A477 06:A467: 20 60     .dbyt $2060 ; 
- D 1 - I - 0x01A479 06:A469: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A47A 06:A46A: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A48A 06:A47A: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 

- D 1 - I - 0x01A49A 06:A48A: 20 80     .dbyt $2080 ; 
- D 1 - I - 0x01A49C 06:A48C: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A49D 06:A48D: 24        .byte $24, $24, $E6, $E4, $E5, $24, $1D, $11, $0E, $24, $15, $0E, $10, $0E, $17, $0D   ; 
- D 1 - I - 0x01A4AD 06:A49D: 24        .byte $24, $18, $0F, $24, $23, $0E, $15, $0D, $0A, $24, $E5, $E4, $E5, $E6, $24, $24   ; 

- D 1 - I - 0x01A4BD 06:A4AD: 20 A0     .dbyt $20A0 ; 
- D 1 - I - 0x01A4BF 06:A4AF: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A4C0 06:A4B0: 24        .byte $24, $24, $E2, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A4D0 06:A4C0: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A4E0 06:A4D0: 20 C0     .dbyt $20C0 ; 
- D 1 - I - 0x01A4E2 06:A4D2: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A4E3 06:A4D3: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A4F3 06:A4E3: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A503 06:A4F3: 20 E0     .dbyt $20E0 ; 
- D 1 - I - 0x01A505 06:A4F5: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A506 06:A4F6: 24        .byte $24, $24, $E2, $24, $16, $0A, $17, $22, $24, $24, $22, $0E, $0A, $1B, $1C, $24   ; 
- D 1 - I - 0x01A516 06:A506: 24        .byte $24, $0A, $10, $18, $24, $24, $19, $1B, $12, $17, $0C, $0E, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A526 06:A516: 21 00     .dbyt $2100 ; 
- D 1 - I - 0x01A528 06:A518: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A529 06:A519: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $F8, $24, $24   ; 
- D 1 - I - 0x01A539 06:A529: 24        .byte $24, $24, $24, $24, $24, $F8, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A549 06:A539: 21 20     .dbyt $2120 ; 
- D 1 - I - 0x01A54B 06:A53B: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A54C 06:A53C: 24        .byte $24, $24, $E2, $24, $0D, $0A, $1B, $14, $17, $0E, $1C, $1C, $24, $24, $24, $10   ; 
- D 1 - I - 0x01A55C 06:A54C: 0A        .byte $0A, $17, $17, $18, $17, $24, $24, $1C, $1D, $18, $15, $0E, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A56C 06:A55C: 21 40     .dbyt $2140 ; 
- D 1 - I - 0x01A56E 06:A55E: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A56F 06:A55F: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A57F 06:A56F: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A58F 06:A57F: 21 60     .dbyt $2160 ; 
- D 1 - I - 0x01A591 06:A581: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A592 06:A582: 24        .byte $24, $24, $E2, $24, $18, $17, $0E, $24, $18, $0F, $24, $1D, $11, $0E, $24, $1D   ; 
- D 1 - I - 0x01A5A2 06:A592: 1B        .byte $1B, $12, $0F, $18, $1B, $0C, $0E, $24, $20, $12, $1D, $11, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A5B2 06:A5A2: 21 80     .dbyt $2180 ; 
- D 1 - I - 0x01A5B4 06:A5A4: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A5B5 06:A5A5: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A5C5 06:A5B5: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A5D5 06:A5C5: 21 A0     .dbyt $21A0 ; 
- D 1 - I - 0x01A5D7 06:A5C7: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A5D8 06:A5C8: 24        .byte $24, $24, $E2, $24, $19, $18, $20, $0E, $1B, $63, $24, $24, $24, $24, $19, $1B   ; 
- D 1 - I - 0x01A5E8 06:A5D8: 12        .byte $12, $17, $0C, $0E, $1C, $1C, $24, $23, $0E, $15, $0D, $0A, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A5F8 06:A5E8: 21 C0     .dbyt $21C0 ; 
- D 1 - I - 0x01A5FA 06:A5EA: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A5FB 06:A5EB: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A60B 06:A5FB: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A61B 06:A60B: 21 E0     .dbyt $21E0 ; 
- D 1 - I - 0x01A61D 06:A60D: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A61E 06:A60E: 24        .byte $24, $24, $E2, $24, $11, $0A, $0D, $24, $24, $18, $17, $0E, $24, $18, $0F, $24   ; 
- D 1 - I - 0x01A62E 06:A61E: 1D        .byte $1D, $11, $0E, $24, $1D, $1B, $12, $0F, $18, $1B, $0C, $0E, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A63E 06:A62E: 22 00     .dbyt $2200 ; 
- D 1 - I - 0x01A640 06:A630: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A641 06:A631: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A651 06:A641: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A661 06:A651: 22 20     .dbyt $2220 ; 
- D 1 - I - 0x01A663 06:A653: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A664 06:A654: 24        .byte $24, $24, $E2, $24, $20, $12, $1D, $11, $24, $20, $12, $1C, $0D, $18, $16, $63   ; 
- D 1 - I - 0x01A674 06:A664: 24        .byte $24, $1C, $11, $0E, $24, $0D, $12, $1F, $12, $0D, $0E, $0D, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A684 06:A674: 22 40     .dbyt $2240 ; 
- D 1 - I - 0x01A686 06:A676: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A687 06:A677: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $F8, $24, $24, $F8, $24   ; 
- D 1 - I - 0x01A697 06:A687: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A6A7 06:A697: 22 60     .dbyt $2260 ; 
- D 1 - I - 0x01A6A9 06:A699: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A6AA 06:A69A: 24        .byte $24, $24, $E2, $24, $12, $1D, $24, $12, $17, $1D, $18, $24, $24, $08, $24, $1E   ; 
- D 1 - I - 0x01A6BA 06:A6AA: 17        .byte $17, $12, $1D, $1C, $24, $1D, $18, $24, $11, $12, $0D, $0E, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A6CA 06:A6BA: 22 80     .dbyt $2280 ; 
- D 1 - I - 0x01A6CC 06:A6BC: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A6CD 06:A6BD: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $F8, $24, $24, $24   ; 
- D 1 - I - 0x01A6DD 06:A6CD: 24        .byte $24, $24, $24, $24, $F8, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A6ED 06:A6DD: 22 A0     .dbyt $22A0 ; 
- D 1 - I - 0x01A6EF 06:A6DF: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A6F0 06:A6E0: 24        .byte $24, $24, $E2, $24, $12, $1D, $24, $0F, $1B, $18, $16, $24, $24, $24, $10, $0A   ; 
- D 1 - I - 0x01A700 06:A6F0: 17        .byte $17, $17, $18, $17, $24, $24, $0B, $0E, $0F, $18, $1B, $0E, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A710 06:A700: 22 C0     .dbyt $22C0 ; 
- D 1 - I - 0x01A712 06:A702: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A713 06:A703: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A723 06:A713: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A733 06:A723: 22 E0     .dbyt $22E0 ; 
- D 1 - I - 0x01A735 06:A725: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A736 06:A726: 24        .byte $24, $24, $E2, $24, $1C, $11, $0E, $24, $20, $0A, $1C, $24, $0C, $0A, $19, $1D   ; 
- D 1 - I - 0x01A746 06:A736: 1E        .byte $1E, $1B, $0E, $0D, $63, $24, $24, $24, $24, $24, $24, $24, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A756 06:A746: 23 00     .dbyt $2300 ; 
- D 1 - I - 0x01A758 06:A748: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A759 06:A749: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A769 06:A759: 24        .byte $24, $F8, $24, $24, $F8, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A779 06:A769: 23 20     .dbyt $2320 ; 
- D 1 - I - 0x01A77B 06:A76B: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A77C 06:A76C: 24        .byte $24, $24, $E2, $24, $24, $24, $10, $18, $24, $0F, $12, $17, $0D, $24, $1D, $11   ; 
- D 1 - I - 0x01A78C 06:A77C: 0E        .byte $0E, $24, $24, $08, $24, $1E, $17, $12, $1D, $1C, $24, $24, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A79C 06:A78C: 23 40     .dbyt $2340 ; 
- D 1 - I - 0x01A79E 06:A78E: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A79F 06:A78F: 24        .byte $24, $24, $E3, $24, $24, $24, $F8, $24, $24, $24, $24, $24, $F8, $24, $24, $24   ; 
- D 1 - I - 0x01A7AF 06:A79F: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A7BF 06:A7AF: 23 60     .dbyt $2360 ; 
- D 1 - I - 0x01A7C1 06:A7B1: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A7C2 06:A7B2: 24        .byte $24, $24, $E2, $24, $24, $24, $24, $24, $15, $12, $17, $14, $24, $24, $1D, $18   ; 
- D 1 - I - 0x01A7D2 06:A7C2: 24        .byte $24, $1C, $0A, $1F, $0E, $24, $11, $0E, $1B, $63, $24, $24, $24, $E3, $24, $24   ; 

- D 1 - I - 0x01A7E2 06:A7D2: 23 80     .dbyt $2380 ; 
- D 1 - I - 0x01A7E4 06:A7D4: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A7E5 06:A7D5: 24        .byte $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A7F5 06:A7E5: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24   ; 

- D 1 - I - 0x01A805 06:A7F5: 23 A0     .dbyt $23A0 ; 
- D 1 - I - 0x01A807 06:A7F7: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A808 06:A7F8: 24        .byte $24, $24, $E6, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4   ; 
- D 1 - I - 0x01A818 06:A808: E5        .byte $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E6, $24, $24   ; 

- D 1 - I - 0x01A828 06:A818: 23 C0     .dbyt $23C0 ; 
- D 1 - I - 0x01A82A 06:A81A: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A82B 06:A81B: FF        .byte $FF, $FF, $00, $00, $00, $00, $FF, $FF, $FF, $0B, $0A, $0A, $0A, $0A, $0E, $FF   ; 
- D 1 - I - 0x01A83B 06:A82B: FF        .byte $FF, $00, $00, $4A, $5A, $52, $00, $FF, $FF, $00, $00, $00, $00, $58, $5A, $FF   ; 

- D 1 - I - 0x01A84B 06:A83B: 23 E0     .dbyt $23E0 ; 
- D 1 - I - 0x01A84D 06:A83D: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A84E 06:A83E: FF        .byte $FF, $00, $00, $10, $00, $00, $00, $FF, $FF, $00, $00, $0A, $0A, $02, $00, $FF   ; 
- D 1 - I - 0x01A85E 06:A84E: FF        .byte $FF, $FA, $FA, $BA, $AA, $AA, $AA, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 

- D 1 - I - 0x01A86E 06:A85E: 2B D0     .dbyt $2BD0 ; 
- D 1 - I - 0x01A870 06:A860: 02        .byte $00 + $00 + $02   ; 
- D 1 - I - 0x01A871 06:A861: FF        .byte $FF, $FF   ; 

- D 1 - I - 0x01A873 06:A863: 2B D6     .dbyt $2BD6 ; 
- D 1 - I - 0x01A875 06:A865: 02        .byte $00 + $00 + $02   ; 
- D 1 - I - 0x01A876 06:A866: FF        .byte $FF, $FF   ; 

- D 1 - I - 0x01A878 06:A868: FF        .byte $FF   ; end token



_off000_A869_10_title_screen:
; con_ppu_buf_title_screen
- D 1 - I - 0x01A879 06:A869: 20 00     .dbyt $2000 ; 
- D 1 - I - 0x01A87B 06:A86B: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A87C 06:A86C: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A88C 06:A87C: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 

- D 1 - I - 0x01A89C 06:A88C: 20 20     .dbyt $2020 ; 
- D 1 - I - 0x01A89E 06:A88E: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A89F 06:A88F: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A8AF 06:A89F: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 

- D 1 - I - 0x01A8BF 06:A8AF: 20 40     .dbyt $2040 ; 
- D 1 - I - 0x01A8C1 06:A8B1: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A8C2 06:A8B2: E0        .byte $E0, $D5, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A8D2 06:A8C2: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $D4, $E0   ; 

- D 1 - I - 0x01A8E2 06:A8D2: 20 60     .dbyt $2060 ; 
- D 1 - I - 0x01A8E4 06:A8D4: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A8E5 06:A8D5: DC        .byte $DC, $D7, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A8F5 06:A8E5: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $D6, $DD   ; 

- D 1 - I - 0x01A905 06:A8F5: 20 80     .dbyt $2080 ; 
- D 1 - I - 0x01A907 06:A8F7: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A908 06:A8F8: DC        .byte $DC, $EE, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A918 06:A908: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $D6, $DB   ; 

- D 1 - I - 0x01A928 06:A918: 20 A0     .dbyt $20A0 ; 
- D 1 - I - 0x01A92A 06:A91A: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A92B 06:A91B: DE        .byte $DE, $D7, $24, $24, $24, $E6, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5   ; 
- D 1 - I - 0x01A93B 06:A92B: E4        .byte $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E6, $24, $24, $24, $D6, $DB   ; 

- D 1 - I - 0x01A94B 06:A93B: 20 C0     .dbyt $20C0 ; 
- D 1 - I - 0x01A94D 06:A93D: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A94E 06:A93E: DC        .byte $DC, $D7, $24, $24, $24, $E2, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01A95E 06:A94E: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E3, $24, $24, $24, $D6, $DF   ; 

- D 1 - I - 0x01A96E 06:A95E: 20 E0     .dbyt $20E0 ; 
- D 1 - I - 0x01A970 06:A960: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A971 06:A961: DE        .byte $DE, $EE, $24, $24, $24, $E3, $24, $24, $71, $72, $73, $74, $75, $76, $77, $78   ; 
- D 1 - I - 0x01A981 06:A971: 79        .byte $79, $79, $79, $7A, $7B, $24, $24, $24, $24, $24, $E2, $24, $24, $24, $D6, $DB   ; 

- D 1 - I - 0x01A991 06:A981: 21 00     .dbyt $2100 ; 
- D 1 - I - 0x01A993 06:A983: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A994 06:A984: DE        .byte $DE, $D8, $EF, $24, $24, $E2, $24, $7C, $7D, $7E, $7F, $80, $81, $82, $83, $84   ; 
- D 1 - I - 0x01A9A4 06:A994: 85        .byte $85, $86, $87, $88, $89, $8A, $8B, $24, $24, $24, $E3, $24, $24, $24, $D6, $DF   ; 

- D 1 - I - 0x01A9B4 06:A9A4: 21 20     .dbyt $2120 ; 
- D 1 - I - 0x01A9B6 06:A9A6: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A9B7 06:A9A7: DC        .byte $DC, $DA, $D7, $24, $24, $E3, $24, $8C, $8D, $8E, $8F, $90, $91, $92, $93, $94   ; 
- D 1 - I - 0x01A9C7 06:A9B7: 95        .byte $95, $96, $97, $98, $99, $9A, $9B, $9C, $24, $24, $E2, $24, $24, $D4, $D9, $DB   ; 

- D 1 - I - 0x01A9D7 06:A9C7: 21 40     .dbyt $2140 ; 
- D 1 - I - 0x01A9D9 06:A9C9: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A9DA 06:A9CA: DC        .byte $DC, $D9, $EE, $24, $24, $E2, $24, $9D, $9E, $9F, $A0, $A1, $A2, $A3, $A4, $A5   ; 
- D 1 - I - 0x01A9EA 06:A9DA: A6        .byte $A6, $A7, $A8, $A9, $AA, $AB, $AC, $AD, $AE, $24, $E3, $24, $24, $D6, $DB, $DF   ; 

- D 1 - I - 0x01A9FA 06:A9EA: 21 60     .dbyt $2160 ; 
- D 1 - I - 0x01A9FC 06:A9EC: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01A9FD 06:A9ED: DE        .byte $DE, $DB, $D7, $24, $24, $E3, $70, $AF, $B0, $B1, $B2, $B3, $B4, $B5, $B6, $B7   ; 
- D 1 - I - 0x01AA0D 06:A9FD: B8        .byte $B8, $B9, $BA, $BB, $BC, $BD, $BE, $BF, $C0, $24, $E2, $24, $24, $D6, $DB, $DB   ; 

- D 1 - I - 0x01AA1D 06:AA0D: 21 80     .dbyt $2180 ; 
- D 1 - I - 0x01AA1F 06:AA0F: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AA20 06:AA10: DC        .byte $DC, $DD, $D7, $24, $24, $E2, $24, $24, $24, $24, $24, $24, $24, $C1, $C2, $C3   ; 
- D 1 - I - 0x01AA30 06:AA20: C4        .byte $C4, $C5, $24, $24, $24, $24, $24, $24, $24, $24, $E3, $24, $24, $D6, $DB, $DF   ; 

- D 1 - I - 0x01AA40 06:AA30: 21 A0     .dbyt $21A0 ; 
- D 1 - I - 0x01AA42 06:AA32: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AA43 06:AA33: DE        .byte $DE, $DB, $EE, $24, $24, $E3, $24, $C6, $C7, $C8, $C8, $C8, $24, $C9, $CA, $CB   ; 
- D 1 - I - 0x01AA53 06:AA43: CC        .byte $CC, $CD, $C8, $C8, $C8, $C8, $E8, $E9, $D3, $24, $E2, $24, $24, $D6, $DB, $DB   ; 

- D 1 - I - 0x01AA63 06:AA53: 21 C0     .dbyt $21C0 ; 
- D 1 - I - 0x01AA65 06:AA55: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AA66 06:AA56: DC        .byte $DC, $DB, $D7, $24, $24, $E2, $24, $24, $24, $24, $24, $24, $24, $24, $24, $CE   ; 
- D 1 - I - 0x01AA76 06:AA66: CF        .byte $CF, $24, $24, $24, $24, $24, $EA, $EB, $EC, $24, $E3, $24, $24, $D6, $DB, $DF   ; 

- D 1 - I - 0x01AA86 06:AA76: 21 E0     .dbyt $21E0 ; 
- D 1 - I - 0x01AA88 06:AA78: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AA89 06:AA79: DC        .byte $DC, $DB, $D7, $24, $24, $E3, $24, $24, $24, $24, $24, $24, $24, $24, $24, $D1   ; 
- D 1 - I - 0x01AA99 06:AA89: D2        .byte $D2, $24, $24, $24, $24, $24, $24, $24, $24, $24, $E2, $24, $24, $D6, $DB, $DB   ; 

- D 1 - I - 0x01AAA9 06:AA99: 22 00     .dbyt $2200 ; 
- D 1 - I - 0x01AAAB 06:AA9B: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AAAC 06:AA9C: DC        .byte $DC, $D8, $E1, $D5, $24, $E6, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5   ; 
- D 1 - I - 0x01AABC 06:AAAC: E4        .byte $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E4, $E5, $E6, $24, $D4, $E1, $D9, $DD   ; 

- D 1 - I - 0x01AACC 06:AABC: 22 20     .dbyt $2220 ; 
- D 1 - I - 0x01AACE 06:AABE: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AACF 06:AABF: DC        .byte $DC, $DA, $DC, $D7, $24, $24, $24, $24, $24, $24, $24, $24, $24, $F0, $01, $09   ; 
- D 1 - I - 0x01AADF 06:AACF: 08        .byte $08, $06, $24, $17, $12, $17, $1D, $0E, $17, $0D, $18, $24, $D6, $DC, $DB, $DF   ; 

- D 1 - I - 0x01AAEF 06:AADF: 22 40     .dbyt $2240 ; 
- D 1 - I - 0x01AAF1 06:AAE1: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AAF2 06:AAE2: DC        .byte $DC, $DA, $DC, $EE, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01AB02 06:AAF2: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $D6, $DE, $ED, $DD   ; 

- D 1 - I - 0x01AB12 06:AB02: 22 60     .dbyt $2260 ; 
- D 1 - I - 0x01AB14 06:AB04: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AB15 06:AB05: DC        .byte $DC, $DA, $DE, $D7, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01AB25 06:AB15: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $D6, $DE, $DB, $DD   ; 

- D 1 - I - 0x01AB35 06:AB25: 22 80     .dbyt $2280 ; 
- D 1 - I - 0x01AB37 06:AB27: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AB38 06:AB28: E1        .byte $E1, $D9, $DC, $ED, $E0, $EF, $24, $24, $19, $1E, $1C, $11, $24, $1C, $1D, $0A   ; 
- D 1 - I - 0x01AB48 06:AB38: 1B        .byte $1B, $1D, $24, $0B, $1E, $1D, $1D, $18, $17, $24, $24, $24, $D6, $D8, $E1, $D9   ; 

- D 1 - I - 0x01AB58 06:AB48: 22 A0     .dbyt $22A0 ; 
- D 1 - I - 0x01AB5A 06:AB4A: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AB5B 06:AB4B: DD        .byte $DD, $ED, $DE, $D8, $E1, $E1, $D5, $24, $24, $24, $24, $24, $24, $24, $24, $24   ; 
- D 1 - I - 0x01AB6B 06:AB5B: 24        .byte $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $24, $D6, $DA, $DD, $ED   ; 

- D 1 - I - 0x01AB7B 06:AB6B: 22 C0     .dbyt $22C0 ; 
- D 1 - I - 0x01AB7D 06:AB6D: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AB7E 06:AB6E: DD        .byte $DD, $DB, $DE, $DA, $DC, $DD, $D8, $E0, $E0, $EF, $24, $24, $24, $24, $D4, $E0   ; 
- D 1 - I - 0x01AB8E 06:AB7E: E0        .byte $E0, $D5, $24, $24, $24, $24, $24, $24, $24, $24, $D4, $EF, $DA, $DA, $DF, $DB   ; 

- D 1 - I - 0x01AB9E 06:AB8E: 22 E0     .dbyt $22E0 ; 
- D 1 - I - 0x01ABA0 06:AB90: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01ABA1 06:AB91: DF        .byte $DF, $DB, $DC, $DA, $DE, $DF, $DA, $DC, $DD, $DB, $26, $26, $26, $26, $DA, $DC   ; 
- D 1 - I - 0x01ABB1 06:ABA1: DD        .byte $DD, $ED, $E0, $E0, $EF, $24, $D4, $E0, $E0, $E0, $D9, $DB, $DA, $DA, $DF, $DB   ; 

- D 1 - I - 0x01ABC1 06:ABB1: 23 00     .dbyt $2300 ; 
- D 1 - I - 0x01ABC3 06:ABB3: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01ABC4 06:ABB4: ED        .byte $ED, $D8, $E1, $D9, $DE, $D8, $E1, $D9, $DF, $DB, $26, $26, $26, $26, $DA, $DC   ; 
- D 1 - I - 0x01ABD4 06:ABC4: D8        .byte $D8, $E1, $D9, $DC, $D8, $E0, $D9, $DC, $DD, $DD, $D8, $E1, $E1, $D9, $DD, $ED   ; 

- D 1 - I - 0x01ABE4 06:ABD4: 23 20     .dbyt $2320 ; 
- D 1 - I - 0x01ABE6 06:ABD6: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01ABE7 06:ABD7: ED        .byte $ED, $DA, $DD, $ED, $DE, $DA, $DC, $DB, $DD, $DB, $26, $26, $26, $26, $DA, $DE   ; 
- D 1 - I - 0x01ABF7 06:ABE7: DA        .byte $DA, $DC, $DB, $DE, $DA, $DD, $ED, $DC, $DC, $DD, $DA, $DC, $DC, $DB, $DD, $ED   ; 

- D 1 - I - 0x01AC07 06:ABF7: 23 40     .dbyt $2340 ; 
- D 1 - I - 0x01AC09 06:ABF9: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AC0A 06:ABFA: ED        .byte $ED, $DA, $DD, $D8, $E1, $DA, $DC, $DB, $DF, $DB, $26, $26, $26, $26, $DA, $D8   ; 
- D 1 - I - 0x01AC1A 06:AC0A: D9        .byte $D9, $DC, $DB, $DC, $DA, $D8, $E1, $D9, $DE, $DF, $DA, $D8, $E1, $E1, $D9, $E1   ; 

- D 1 - I - 0x01AC2A 06:AC1A: 23 60     .dbyt $2360 ; 
- D 1 - I - 0x01AC2C 06:AC1C: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AC2D 06:AC1D: ED        .byte $ED, $D9, $DF, $DA, $DC, $DA, $DE, $DB, $DD, $DB, $26, $26, $26, $26, $DA, $DA   ; 
- D 1 - I - 0x01AC3D 06:AC2D: ED        .byte $ED, $DE, $D8, $E1, $E1, $D9, $DC, $DB, $DE, $D8, $E1, $D9, $DD, $DD, $DB, $DC   ; 

- D 1 - I - 0x01AC4D 06:AC3D: 23 80     .dbyt $2380 ; 
- D 1 - I - 0x01AC4F 06:AC3F: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AC50 06:AC40: DF        .byte $DF, $DB, $DF, $DA, $DC, $DB, $DE, $DB, $DD, $DB, $26, $26, $26, $26, $DA, $DA   ; 
- D 1 - I - 0x01AC60 06:AC50: DB        .byte $DB, $DD, $DA, $DE, $D8, $E1, $D9, $DB, $DE, $DA, $DD, $DB, $DE, $DF, $D8, $E1   ; 

- D 1 - I - 0x01AC70 06:AC60: 23 A0     .dbyt $23A0 ; 
- D 1 - I - 0x01AC72 06:AC62: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AC73 06:AC63: DF        .byte $DF, $DB, $DF, $DA, $DC, $DB, $DE, $DB, $DD, $DB, $26, $26, $26, $26, $DA, $DA   ; 
- D 1 - I - 0x01AC83 06:AC73: DB        .byte $DB, $DD, $DA, $DE, $DA, $DD, $DB, $DB, $DE, $DA, $DD, $DB, $DE, $DF, $DC, $DF   ; 

- D 1 - I - 0x01AC93 06:AC83: 23 C0     .dbyt $23C0 ; 
- D 1 - I - 0x01AC95 06:AC85: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01AC96 06:AC86: 05        .byte $05, $05, $05, $05, $05, $05, $05, $05, $08, $6A, $5A, $5A, $5A, $5A, $9A, $22   ; 
- D 1 - I - 0x01ACA6 06:AC96: 00        .byte $00, $66, $55, $55, $55, $55, $99, $00, $00, $6E, $5F, $55, $5D, $DF, $BB, $00   ; 

- D 1 - I - 0x01ACB6 06:ACA6: 23 E0     .dbyt $23E0 ; 
- D 1 - I - 0x01ACB8 06:ACA8: 20        .byte $00 + $00 + $20   ; 
- D 1 - I - 0x01ACB9 06:ACA9: 00        .byte $00, $0A, $0A, $0A, $0A, $0A, $0A, $00, $00, $00, $C0, $30, $00, $00, $00, $00   ; 
- D 1 - I - 0x01ACC9 06:ACB9: 00        .byte $00, $00, $CC, $33, $00, $00, $00, $00, $00, $20, $FC, $F3, $00, $00, $F0, $F0   ; 

- D 1 - I - 0x01ACD9 06:ACC9: FF        .byte $FF   ; end token


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
.include "copy_bank___BF50_BFF9.asm"



.out .sprintf("Free bytes in bank 06: 0x%04X [%d]", ($BFFA - *), ($BFFA - *))



.segment "VECTORS_06"
- - - - - - 0x01C00A 06:BFFA: 84 E4     .word vec_0x01E494_NMI
- - - - - - 0x01C00C 06:BFFC: 50 BF     .word vec_inc_0x003F60_RESET
- - - - - - 0x01C00E 06:BFFE: F0 BF     .word $BFF0 ; this game doesn't use IRQ
