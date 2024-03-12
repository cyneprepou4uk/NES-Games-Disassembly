.segment "BANK_05"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x014010-0x01800F



.export sub_0x014010_update_music_engine
.export sub_0x014013_prepare_new_sfx
.export off_0x017010_chr
.export off_0x017510_chr
.export off_0x017B10_chr
.export off_0x017C10_chr



sub_0x014010_update_music_engine:
C - - - - - 0x014010 05:8000: 4C 6C 80  JMP loc_806C_update_music_engine



sub_0x014013_prepare_new_sfx:
C - - - - - 0x014013 05:8003: 4C FE 80  JMP loc_80FE_prepare_new_sfx



sub_8006:
C - - - - - 0x014016 05:8006: A9 00     LDA #$00
C - - - - - 0x014018 05:8008: 85 C2     STA ram_music_data + $01
C - - - - - 0x01401A 05:800A: A0 08     LDY #$08
bra_800C_loop:
C - - - - - 0x01401C 05:800C: 06 C2     ASL ram_music_data + $01
C - - - - - 0x01401E 05:800E: 26 C1     ROL ram_music_data
C - - - - - 0x014020 05:8010: 90 0D     BCC bra_801F
C - - - - - 0x014022 05:8012: 18        CLC
C - - - - - 0x014023 05:8013: A5 C2     LDA ram_music_data + $01
C - - - - - 0x014025 05:8015: 65 C4     ADC ram_00C4
C - - - - - 0x014027 05:8017: 85 C2     STA ram_music_data + $01
C - - - - - 0x014029 05:8019: A5 C1     LDA ram_music_data
C - - - - - 0x01402B 05:801B: 69 00     ADC #$00
C - - - - - 0x01402D 05:801D: 85 C1     STA ram_music_data
bra_801F:
C - - - - - 0x01402F 05:801F: 88        DEY
C - - - - - 0x014030 05:8020: D0 EA     BNE bra_800C_loop
C - - - - - 0x014032 05:8022: 60        RTS



sub_8023_jump_to_pointers_after_jsr:
C - - - - - 0x014033 05:8023: 0A        ASL
C - - - - - 0x014034 05:8024: A8        TAY
C - - - - - 0x014035 05:8025: C8        INY
C - - - - - 0x014036 05:8026: 68        PLA
C - - - - - 0x014037 05:8027: 85 C1     STA ram_music_data
C - - - - - 0x014039 05:8029: 68        PLA
C - - - - - 0x01403A 05:802A: 85 C2     STA ram_music_data + $01
C - - - - - 0x01403C 05:802C: B1 C1     LDA (ram_music_data),Y
C - - - - - 0x01403E 05:802E: 48        PHA
C - - - - - 0x01403F 05:802F: C8        INY
C - - - - - 0x014040 05:8030: B1 C1     LDA (ram_music_data),Y
C - - - - - 0x014042 05:8032: 85 C2     STA ram_music_data + $01
C - - - - - 0x014044 05:8034: 68        PLA
C - - - - - 0x014045 05:8035: 85 C1     STA ram_music_data
C - - - - - 0x014047 05:8037: 6C C1 00  JMP (ram_music_data)



sub_803A_set_pointer_and_read_music_data:
loc_803A_set_pointer_and_read_music_data:
C D 0 - - - 0x01404A 05:803A: 84 C1     STY ram_music_data
C - - - - - 0x01404C 05:803C: A0 00     LDY #$00
C - - - - - 0x01404E 05:803E: C9 C0     CMP #$C0
; bzk optimize, useless check for high byte >= C0xx
; because music data is not stored near C000
C - - - - - 0x014050 05:8040: B0 05     BCS bra_8047_C0_FF
; 00-BF
C - - - - - 0x014052 05:8042: 85 C2     STA ram_music_data + $01
C - - - - - 0x014054 05:8044: B1 C1     LDA (ram_music_data),Y
C - - - - - 0x014056 05:8046: 60        RTS
bra_8047_C0_FF:
; bzk garbage
- - - - - - 0x014057 05:8047: 38        SEC
- - - - - - 0x014058 05:8048: E9 20     SBC #$20
- - - - - - 0x01405A 05:804A: 85 C2     STA ram_music_data + $01
- - - - - - 0x01405C 05:804C: A9 07     LDA #$07
- - - - - - 0x01405E 05:804E: 8D 00 80  STA $8000
- - - - - - 0x014061 05:8051: A9 18     LDA #$18
- - - - - - 0x014063 05:8053: 8D 01 80  STA $8001
- - - - - - 0x014066 05:8056: B1 C1     LDA (ram_music_data),Y
- - - - - - 0x014068 05:8058: 48        PHA
- - - - - - 0x014069 05:8059: A9 07     LDA #$07
- - - - - - 0x01406B 05:805B: 8D 00 80  STA $8000
- - - - - - 0x01406E 05:805E: A9 17     LDA #$17
- - - - - - 0x014070 05:8060: 8D 01 80  STA $8001
- - - - - - 0x014073 05:8063: A9 20     LDA #$20
- - - - - - 0x014075 05:8065: 18        CLC
- - - - - - 0x014076 05:8066: 65 C2     ADC ram_music_data + $01
- - - - - - 0x014078 05:8068: 85 C2     STA ram_music_data + $01
- - - - - - 0x01407A 05:806A: 68        PLA
- - - - - - 0x01407B 05:806B: 60        RTS



loc_806C_update_music_engine:
C D 0 - - - 0x01407C 05:806C: A5 C0     LDA ram_00C0
C - - - - - 0x01407E 05:806E: 4A        LSR
C - - - - - 0x01407F 05:806F: B0 66     BCS bra_80D7_RTS
C - - - - - 0x014081 05:8071: A5 D0     LDA ram_00D0
C - - - - - 0x014083 05:8073: 05 D1     ORA ram_00D1
C - - - - - 0x014085 05:8075: F0 03     BEQ bra_807A
C - - - - - 0x014087 05:8077: 20 52 82  JSR sub_8252
bra_807A:
C - - - - - 0x01408A 05:807A: 18        CLC
C - - - - - 0x01408B 05:807B: A5 CA     LDA ram_00CA
C - - - - - 0x01408D 05:807D: 65 C8     ADC ram_00C8
C - - - - - 0x01408F 05:807F: 85 C8     STA ram_00C8
C - - - - - 0x014091 05:8081: A5 C9     LDA ram_00C9
C - - - - - 0x014093 05:8083: 69 00     ADC #$00
C - - - - - 0x014095 05:8085: 85 C7     STA ram_00C7
C - - - - - 0x014097 05:8087: A5 CF     LDA ram_00CF
C - - - - - 0x014099 05:8089: 48        PHA
C - - - - - 0x01409A 05:808A: A2 03     LDX #$03
bra_808C_loop:
C - - - - - 0x01409C 05:808C: 46 CF     LSR ram_00CF
C - - - - - 0x01409E 05:808E: 90 09     BCC bra_8099
C - - - - - 0x0140A0 05:8090: A5 CF     LDA ram_00CF
C - - - - - 0x0140A2 05:8092: 09 80     ORA #$80
C - - - - - 0x0140A4 05:8094: 85 CF     STA ram_00CF
C - - - - - 0x0140A6 05:8096: 20 DE 82  JSR sub_82DE
bra_8099:
C - - - - - 0x0140A9 05:8099: A5 C0     LDA ram_00C0
C - - - - - 0x0140AB 05:809B: 29 02     AND #$02
C - - - - - 0x0140AD 05:809D: D0 07     BNE bra_80A6
C - - - - - 0x0140AF 05:809F: 8A        TXA
C - - - - - 0x0140B0 05:80A0: 48        PHA
C - - - - - 0x0140B1 05:80A1: 20 93 83  JSR sub_8393
C - - - - - 0x0140B4 05:80A4: 68        PLA
C - - - - - 0x0140B5 05:80A5: AA        TAX
bra_80A6:
C - - - - - 0x0140B6 05:80A6: CA        DEX
C - - - - - 0x0140B7 05:80A7: 10 E3     BPL bra_808C_loop
C - - - - - 0x0140B9 05:80A9: 68        PLA
C - - - - - 0x0140BA 05:80AA: 85 CF     STA ram_00CF
C - - - - - 0x0140BC 05:80AC: 46 C0     LSR ram_00C0
C - - - - - 0x0140BE 05:80AE: 06 C0     ASL ram_00C0
C - - - - - 0x0140C0 05:80B0: A5 CC     LDA ram_00CC
C - - - - - 0x0140C2 05:80B2: 29 7F     AND #$7F
C - - - - - 0x0140C4 05:80B4: F0 21     BEQ bra_80D7_RTS
- - - - - - 0x0140C6 05:80B6: A0 00     LDY #$00
- - - - - - 0x0140C8 05:80B8: 84 C1     STY ram_music_data
- - - - - - 0x0140CA 05:80BA: A0 04     LDY #$04
bra_80BC_loop:
- - - - - - 0x0140CC 05:80BC: 0A        ASL
- - - - - - 0x0140CD 05:80BD: 26 C1     ROL ram_music_data
- - - - - - 0x0140CF 05:80BF: 88        DEY
- - - - - - 0x0140D0 05:80C0: D0 FA     BNE bra_80BC_loop
- - - - - - 0x0140D2 05:80C2: 18        CLC
- - - - - - 0x0140D3 05:80C3: 65 C0     ADC ram_00C0
- - - - - - 0x0140D5 05:80C5: 85 C0     STA ram_00C0
- - - - - - 0x0140D7 05:80C7: A5 C1     LDA ram_music_data
- - - - - - 0x0140D9 05:80C9: 65 CD     ADC ram_00CD
- - - - - - 0x0140DB 05:80CB: 90 08     BCC bra_80D5
- - - - - - 0x0140DD 05:80CD: A5 CC     LDA ram_00CC
- - - - - - 0x0140DF 05:80CF: 29 80     AND #$80
- - - - - - 0x0140E1 05:80D1: 85 CC     STA ram_00CC
- - - - - - 0x0140E3 05:80D3: A9 FF     LDA #$FF
bra_80D5:
- - - - - - 0x0140E5 05:80D5: 85 CD     STA ram_00CD
bra_80D7_RTS:
C - - - - - 0x0140E7 05:80D7: 60        RTS



sub_80D8:
loc_80D8:
C D 0 - - - 0x0140E8 05:80D8: 8A        TXA
C - - - - - 0x0140E9 05:80D9: 29 03     AND #$03
C - - - - - 0x0140EB 05:80DB: 49 03     EOR #$03
C - - - - - 0x0140ED 05:80DD: 0A        ASL
C - - - - - 0x0140EE 05:80DE: 0A        ASL
C - - - - - 0x0140EF 05:80DF: A8        TAY
C - - - - - 0x0140F0 05:80E0: A9 30     LDA #$30
C - - - - - 0x0140F2 05:80E2: C0 08     CPY #$08
C - - - - - 0x0140F4 05:80E4: D0 02     BNE bra_80E8
C - - - - - 0x0140F6 05:80E6: A9 00     LDA #$00
bra_80E8:
C - - - - - 0x0140F8 05:80E8: 99 00 40  STA $4000,Y ; 4000 4004 4008 400C
C - - - - - 0x0140FB 05:80EB: 60        RTS



sub_80EC:
C - - - - - 0x0140FC 05:80EC: 48        PHA
C - - - - - 0x0140FD 05:80ED: 8A        TXA
C - - - - - 0x0140FE 05:80EE: 29 03     AND #$03
C - - - - - 0x014100 05:80F0: 49 03     EOR #$03
C - - - - - 0x014102 05:80F2: 0A        ASL
C - - - - - 0x014103 05:80F3: 0A        ASL
C - - - - - 0x014104 05:80F4: 84 C4     STY ram_00C4
C - - - - - 0x014106 05:80F6: 05 C4     ORA ram_00C4
C - - - - - 0x014108 05:80F8: A8        TAY
C - - - - - 0x014109 05:80F9: 68        PLA
C - - - - - 0x01410A 05:80FA: 99 00 40  STA $4000,Y
C - - - - - 0x01410D 05:80FD: 60        RTS



loc_80FE_prepare_new_sfx:
C D 0 - - - 0x01410E 05:80FE: E6 C0     INC ram_00C0
C - - - - - 0x014110 05:8100: 20 06 81  JSR sub_8106
C - - - - - 0x014113 05:8103: C6 C0     DEC ram_00C0
C - - - - - 0x014115 05:8105: 60        RTS



sub_8106:
C - - - - - 0x014116 05:8106: C9 F0     CMP #$F0
C - - - - - 0x014118 05:8108: 90 03     BCC bra_810D
C - - - - - 0x01411A 05:810A: 4C AE 81  JMP loc_81AE_engine_control_bytes_F0_F7
bra_810D:
bra_810D_loop:
C - - - - - 0x01411D 05:810D: CD 40 8A  CMP tbl_8A40_overflow_music_id
C - - - - - 0x014120 05:8110: 90 06     BCC bra_8118
- - - - - - 0x014122 05:8112: 38        SEC
- - - - - - 0x014123 05:8113: ED 40 8A  SBC tbl_8A40_overflow_music_id
- - - - - - 0x014126 05:8116: B0 F5     BCS bra_810D_loop
bra_8118:
sub_8118:
C - - - - - 0x014128 05:8118: 0A        ASL
C - - - - - 0x014129 05:8119: AA        TAX
C - - - - - 0x01412A 05:811A: BC 44 8A  LDY tbl_8A43_music_pointers + $01,X
C - - - - - 0x01412D 05:811D: 98        TYA
C - - - - - 0x01412E 05:811E: 1D 43 8A  ORA tbl_8A43_music_pointers,X
C - - - - - 0x014131 05:8121: F0 4B     BEQ bra_816E_RTS
C - - - - - 0x014133 05:8123: BD 43 8A  LDA tbl_8A43_music_pointers,X
C - - - - - 0x014136 05:8126: 20 3A 80  JSR sub_803A_set_pointer_and_read_music_data
C - - - - - 0x014139 05:8129: A8        TAY
C - - - - - 0x01413A 05:812A: F0 43     BEQ bra_816F_00
; 01-FF
C - - - - - 0x01413C 05:812C: A0 00     LDY #$00
C - - - - - 0x01413E 05:812E: E8        INX
C - - - - - 0x01413F 05:812F: 85 C4     STA ram_00C4
C - - - - - 0x014141 05:8131: 29 7F     AND #$7F
C - - - - - 0x014143 05:8133: C5 CE     CMP ram_00CE
C - - - - - 0x014145 05:8135: 90 37     BCC bra_816E_RTS
C - - - - - 0x014147 05:8137: 85 CE     STA ram_00CE
C - - - - - 0x014149 05:8139: D0 0A     BNE bra_8145
C - - - - - 0x01414B 05:813B: A5 D6     LDA ram_00D6
C - - - - - 0x01414D 05:813D: 10 06     BPL bra_8145
- - - - - - 0x01414F 05:813F: A5 C4     LDA ram_00C4
- - - - - - 0x014151 05:8141: 30 02     BMI bra_8145
- - - - - - 0x014153 05:8143: 84 D7     STY ram_00D7
bra_8145:
C - - - - - 0x014155 05:8145: 84 D6     STY ram_00D6
C - - - - - 0x014157 05:8147: 06 C4     ASL ram_00C4
C - - - - - 0x014159 05:8149: 66 D6     ROR ram_00D6
C - - - - - 0x01415B 05:814B: 10 02     BPL bra_814F
- - - - - - 0x01415D 05:814D: 86 D7     STX ram_00D7
bra_814F:
C - - - - - 0x01415F 05:814F: E6 C1     INC ram_music_data
C - - - - - 0x014161 05:8151: A5 C1     LDA ram_music_data
C - - - - - 0x014163 05:8153: 85 D0     STA ram_00D0
C - - - - - 0x014165 05:8155: D0 02     BNE bra_8159
- - - - - - 0x014167 05:8157: E6 C2     INC ram_music_data + $01
bra_8159:
C - - - - - 0x014169 05:8159: A5 C2     LDA ram_music_data + $01
C - - - - - 0x01416B 05:815B: 85 D1     STA ram_00D1
C - - - - - 0x01416D 05:815D: 98        TYA
C - - - - - 0x01416E 05:815E: 85 D2     STA ram_00D2
C - - - - - 0x014170 05:8160: 85 D3     STA ram_00D3
C - - - - - 0x014172 05:8162: 85 D4     STA ram_00D4
C - - - - - 0x014174 05:8164: 85 D5     STA ram_00D5
C - - - - - 0x014176 05:8166: A0 27     LDY #$27
bra_8168_loop:
C - - - - - 0x014178 05:8168: 99 00 07  STA ram_0700,Y
C - - - - - 0x01417B 05:816B: 88        DEY
C - - - - - 0x01417C 05:816C: 10 FA     BPL bra_8168_loop
bra_816E_RTS:
C - - - - - 0x01417E 05:816E: 60        RTS
bra_816F_00:
C - - - - - 0x01417F 05:816F: A2 01     LDX #$01
C - - - - - 0x014181 05:8171: 86 C9     STX ram_00C9
C - - - - - 0x014183 05:8173: A2 99     LDX #$99
C - - - - - 0x014185 05:8175: 86 CA     STX ram_00CA
C - - - - - 0x014187 05:8177: 85 C8     STA ram_00C8
C - - - - - 0x014189 05:8179: 85 CB     STA ram_00CB
C - - - - - 0x01418B 05:817B: 85 CC     STA ram_00CC
C - - - - - 0x01418D 05:817D: 85 CD     STA ram_00CD
C - - - - - 0x01418F 05:817F: A2 53     LDX #$53
bra_8181_loop:
C - - - - - 0x014191 05:8181: 9D 28 07  STA ram_0728,X
C - - - - - 0x014194 05:8184: CA        DEX
C - - - - - 0x014195 05:8185: 10 FA     BPL bra_8181_loop
C - - - - - 0x014197 05:8187: A2 03     LDX #$03
bra_8189_loop:
C - - - - - 0x014199 05:8189: E6 C1     INC ram_music_data
C - - - - - 0x01419B 05:818B: D0 02     BNE bra_818F
- - - - - - 0x01419D 05:818D: E6 C2     INC ram_music_data + $01
bra_818F:
C - - - - - 0x01419F 05:818F: A4 C1     LDY ram_music_data
C - - - - - 0x0141A1 05:8191: A5 C2     LDA ram_music_data + $01
C - - - - - 0x0141A3 05:8193: 20 3A 80  JSR sub_803A_set_pointer_and_read_music_data
C - - - - - 0x0141A6 05:8196: 9D 54 07  STA ram_0754,X
C - - - - - 0x0141A9 05:8199: E6 C1     INC ram_music_data
C - - - - - 0x0141AB 05:819B: D0 02     BNE bra_819F_not_overflow
- - - - - - 0x0141AD 05:819D: E6 C2     INC ram_music_data + $01
bra_819F_not_overflow:
C - - - - - 0x0141AF 05:819F: A4 C1     LDY ram_music_data
C - - - - - 0x0141B1 05:81A1: A5 C2     LDA ram_music_data + $01
C - - - - - 0x0141B3 05:81A3: 20 3A 80  JSR sub_803A_set_pointer_and_read_music_data
C - - - - - 0x0141B6 05:81A6: 9D 50 07  STA ram_0750,X
C - - - - - 0x0141B9 05:81A9: CA        DEX
C - - - - - 0x0141BA 05:81AA: 10 DD     BPL bra_8189_loop
C - - - - - 0x0141BC 05:81AC: 30 43     BMI bra_81F1   ; jmp



loc_81AE_engine_control_bytes_F0_F7:
C D 0 - - - 0x0141BE 05:81AE: 84 C3     STY ram_00C3
C - - - - - 0x0141C0 05:81B0: 29 07     AND #$07
C - - - - - 0x0141C2 05:81B2: 20 23 80  JSR sub_8023_jump_to_pointers_after_jsr
- D 0 - I - 0x0141C5 05:81B5: C5 81     .word ofs_000_81C5_F0
- - - - - - 0x0141C7 05:81B7: C8 81     .word ofs_000_81C8_F1
- D 0 - I - 0x0141C9 05:81B9: E4 81     .word ofs_000_81E4_F2
- D 0 - I - 0x0141CB 05:81BB: 1E 82     .word ofs_000_821E_F3
- D 0 - I - 0x0141CD 05:81BD: 26 82     .word ofs_000_8226_F4
- - - - - - 0x0141CF 05:81BF: 2D 82     .word ofs_000_822D_F5
- - - - - - 0x0141D1 05:81C1: 34 82     .word ofs_000_8234_F6
- - - - - - 0x0141D3 05:81C3: 4A 82     .word ofs_000_824A_F7



ofs_000_81C5_F0:
C - - J - - 0x0141D5 05:81C5: 20 E4 81  JSR sub_81E4
loc_81C8:
ofs_000_81C8_F1:
C D 0 - - - 0x0141D8 05:81C8: A9 00     LDA #$00
C - - - - - 0x0141DA 05:81CA: 85 CE     STA ram_00CE
C - - - - - 0x0141DC 05:81CC: 85 D0     STA ram_00D0
C - - - - - 0x0141DE 05:81CE: 85 D1     STA ram_00D1
C - - - - - 0x0141E0 05:81D0: 85 D7     STA ram_00D7
C - - - - - 0x0141E2 05:81D2: 85 D8     STA ram_00D8
sub_81D4:
C - - - - - 0x0141E4 05:81D4: A5 CF     LDA ram_00CF
C - - - - - 0x0141E6 05:81D6: F0 0B     BEQ bra_81E3_RTS
C - - - - - 0x0141E8 05:81D8: 49 0F     EOR #$0F
C - - - - - 0x0141EA 05:81DA: 85 CF     STA ram_00CF
C - - - - - 0x0141EC 05:81DC: 20 F1 81  JSR sub_81F1
C - - - - - 0x0141EF 05:81DF: A9 00     LDA #$00
C - - - - - 0x0141F1 05:81E1: 85 CF     STA ram_00CF
bra_81E3_RTS:
C - - - - - 0x0141F3 05:81E3: 60        RTS



sub_81E4:
ofs_000_81E4_F2:
C - - J - - 0x0141F4 05:81E4: A9 00     LDA #$00
C - - - - - 0x0141F6 05:81E6: A2 03     LDX #$03
bra_81E8_loop:
C - - - - - 0x0141F8 05:81E8: 9D 54 07  STA ram_0754,X
C - - - - - 0x0141FB 05:81EB: 9D 50 07  STA ram_0750,X
C - - - - - 0x0141FE 05:81EE: CA        DEX
C - - - - - 0x0141FF 05:81EF: 10 F7     BPL bra_81E8_loop
bra_81F1:
sub_81F1:
C - - - - - 0x014201 05:81F1: A5 CF     LDA ram_00CF
C - - - - - 0x014203 05:81F3: 48        PHA
C - - - - - 0x014204 05:81F4: A2 03     LDX #$03
bra_81F6_loop:
C - - - - - 0x014206 05:81F6: 46 CF     LSR ram_00CF
C - - - - - 0x014208 05:81F8: B0 10     BCS bra_820A
C - - - - - 0x01420A 05:81FA: 20 D8 80  JSR sub_80D8
C - - - - - 0x01420D 05:81FD: BD 54 07  LDA ram_0754,X
C - - - - - 0x014210 05:8200: 1D 50 07  ORA ram_0750,X
C - - - - - 0x014213 05:8203: F0 05     BEQ bra_820A
C - - - - - 0x014215 05:8205: A9 FF     LDA #$FF
C - - - - - 0x014217 05:8207: 9D 7C 07  STA ram_077C,X
bra_820A:
C - - - - - 0x01421A 05:820A: CA        DEX
C - - - - - 0x01421B 05:820B: 10 E9     BPL bra_81F6_loop
C - - - - - 0x01421D 05:820D: 68        PLA
C - - - - - 0x01421E 05:820E: 85 CF     STA ram_00CF
C - - - - - 0x014220 05:8210: A9 08     LDA #$08
C - - - - - 0x014222 05:8212: 8D 01 40  STA $4001
C - - - - - 0x014225 05:8215: 8D 05 40  STA $4005
C - - - - - 0x014228 05:8218: A9 0F     LDA #$0F
C - - - - - 0x01422A 05:821A: 8D 15 40  STA $4015
C - - - - - 0x01422D 05:821D: 60        RTS



ofs_000_821E_F3:
C - - J - - 0x01422E 05:821E: A5 C0     LDA ram_00C0
C - - - - - 0x014230 05:8220: 09 02     ORA #$02
C - - - - - 0x014232 05:8222: 85 C0     STA ram_00C0
C - - - - - 0x014234 05:8224: D0 CB     BNE bra_81F1   ; jmp



ofs_000_8226_F4:
C - - J - - 0x014236 05:8226: A5 C0     LDA ram_00C0
C - - - - - 0x014238 05:8228: 29 FD     AND #$FD
C - - - - - 0x01423A 05:822A: 85 C0     STA ram_00C0
C - - - - - 0x01423C 05:822C: 60        RTS



ofs_000_822D_F5:
- - - - - - 0x01423D 05:822D: 06 C3     ASL ram_00C3
- - - - - - 0x01423F 05:822F: F0 03     BEQ bra_8234
- - - - - - 0x014241 05:8231: 38        SEC
- - - - - - 0x014242 05:8232: 66 C3     ROR ram_00C3
bra_8234:
ofs_000_8234_F6:
- - - - - - 0x014244 05:8234: A5 C0     LDA ram_00C0
- - - - - - 0x014246 05:8236: 29 0F     AND #$0F
- - - - - - 0x014248 05:8238: 85 C0     STA ram_00C0
- - - - - - 0x01424A 05:823A: A4 C3     LDY ram_00C3
- - - - - - 0x01424C 05:823C: 84 CC     STY ram_00CC
- - - - - - 0x01424E 05:823E: F0 07     BEQ bra_8247
- - - - - - 0x014250 05:8240: A0 FF     LDY #$FF
- - - - - - 0x014252 05:8242: C4 CD     CPY ram_00CD
- - - - - - 0x014254 05:8244: D0 03     BNE bra_8249_RTS
- - - - - - 0x014256 05:8246: C8        INY
bra_8247:
- - - - - - 0x014257 05:8247: 84 CD     STY ram_00CD
bra_8249_RTS:
- - - - - - 0x014259 05:8249: 60        RTS



ofs_000_824A_F7:
- - - - - - 0x01425A 05:824A: A9 00     LDA #$00
- - - - - - 0x01425C 05:824C: 38        SEC
- - - - - - 0x01425D 05:824D: E5 C3     SBC ram_00C3
- - - - - - 0x01425F 05:824F: 85 D8     STA ram_00D8
- - - - - - 0x014261 05:8251: 60        RTS



sub_8252:
C - - - - - 0x014262 05:8252: A5 D3     LDA ram_00D3
C - - - - - 0x014264 05:8254: F0 05     BEQ bra_825B
C - - - - - 0x014266 05:8256: C6 D3     DEC ram_00D3
C - - - - - 0x014268 05:8258: C6 D5     DEC ram_00D5
C - - - - - 0x01426A 05:825A: 60        RTS
bra_825B:
loc_825B_loop:
bra_825B_loop:
C - - - - - 0x01426B 05:825B: 20 86 83  JSR sub_8386_increase_pointer_and_read_music_data_1
C - - - - - 0x01426E 05:825E: 85 C4     STA ram_00C4
C - - - - - 0x014270 05:8260: 0A        ASL
C - - - - - 0x014271 05:8261: 90 10     BCC bra_8273
C - - - - - 0x014273 05:8263: 84 CE     STY ram_00CE
C - - - - - 0x014275 05:8265: A5 D7     LDA ram_00D7
C - - - - - 0x014277 05:8267: 4A        LSR
C - - - - - 0x014278 05:8268: 90 06     BCC bra_8270
- - - - - - 0x01427A 05:826A: 20 18 81  JSR sub_8118
- - - - - - 0x01427D 05:826D: 4C 5B 82  JMP loc_825B_loop
bra_8270:
C - - - - - 0x014280 05:8270: 4C C8 81  JMP loc_81C8
bra_8273:
C - - - - - 0x014283 05:8273: 46 C4     LSR ram_00C4
C - - - - - 0x014285 05:8275: 90 2F     BCC bra_82A6
C - - - - - 0x014287 05:8277: 20 86 83  JSR sub_8386_increase_pointer_and_read_music_data_1
C - - - - - 0x01428A 05:827A: 0A        ASL
C - - - - - 0x01428B 05:827B: F0 0C     BEQ bra_8289
C - - - - - 0x01428D 05:827D: 06 D6     ASL ram_00D6
C - - - - - 0x01428F 05:827F: 08        PHP
C - - - - - 0x014290 05:8280: C5 D6     CMP ram_00D6
C - - - - - 0x014292 05:8282: F0 12     BEQ bra_8296
C - - - - - 0x014294 05:8284: 28        PLP
C - - - - - 0x014295 05:8285: 66 D6     ROR ram_00D6
C - - - - - 0x014297 05:8287: E6 D6     INC ram_00D6
bra_8289:
C - - - - - 0x014299 05:8289: 20 86 83  JSR sub_8386_increase_pointer_and_read_music_data_1
C - - - - - 0x01429C 05:828C: AA        TAX
C - - - - - 0x01429D 05:828D: 20 86 83  JSR sub_8386_increase_pointer_and_read_music_data_1
C - - - - - 0x0142A0 05:8290: 85 D0     STA ram_00D0
C - - - - - 0x0142A2 05:8292: 86 D1     STX ram_00D1
C - - - - - 0x0142A4 05:8294: D0 C5     BNE bra_825B_loop    ; jmp always?
bra_8296:
C - - - - - 0x0142A6 05:8296: 98        TYA
C - - - - - 0x0142A7 05:8297: 28        PLP
C - - - - - 0x0142A8 05:8298: 6A        ROR
C - - - - - 0x0142A9 05:8299: 85 D6     STA ram_00D6
C - - - - - 0x0142AB 05:829B: 18        CLC
C - - - - - 0x0142AC 05:829C: A9 02     LDA #$02
C - - - - - 0x0142AE 05:829E: 65 D0     ADC ram_00D0
C - - - - - 0x0142B0 05:82A0: 85 D0     STA ram_00D0
C - - - - - 0x0142B2 05:82A2: 90 02     BCC bra_82A6
- - - - - - 0x0142B4 05:82A4: E6 D1     INC ram_00D1
bra_82A6:
C - - - - - 0x0142B6 05:82A6: 46 C4     LSR ram_00C4
C - - - - - 0x0142B8 05:82A8: 90 05     BCC bra_82AF
C - - - - - 0x0142BA 05:82AA: 20 86 83  JSR sub_8386_increase_pointer_and_read_music_data_1
C - - - - - 0x0142BD 05:82AD: 85 D4     STA ram_00D4
bra_82AF:
C - - - - - 0x0142BF 05:82AF: 46 C4     LSR ram_00C4
C - - - - - 0x0142C1 05:82B1: 90 05     BCC bra_82B8
- - - - - - 0x0142C3 05:82B3: 20 86 83  JSR sub_8386_increase_pointer_and_read_music_data_1
- - - - - - 0x0142C6 05:82B6: 85 D2     STA ram_00D2
bra_82B8:
C - - - - - 0x0142C8 05:82B8: 20 86 83  JSR sub_8386_increase_pointer_and_read_music_data_1
C - - - - - 0x0142CB 05:82BB: 85 D3     STA ram_00D3
C - - - - - 0x0142CD 05:82BD: 85 C1     STA ram_music_data
C - - - - - 0x0142CF 05:82BF: A5 D4     LDA ram_00D4
C - - - - - 0x0142D1 05:82C1: 85 C4     STA ram_00C4
C - - - - - 0x0142D3 05:82C3: 20 06 80  JSR sub_8006
C - - - - - 0x0142D6 05:82C6: A4 C1     LDY ram_music_data
C - - - - - 0x0142D8 05:82C8: C8        INY
C - - - - - 0x0142D9 05:82C9: 84 D5     STY ram_00D5
C - - - - - 0x0142DB 05:82CB: E6 C0     INC ram_00C0
C - - - - - 0x0142DD 05:82CD: 20 86 83  JSR sub_8386_increase_pointer_and_read_music_data_1
C - - - - - 0x0142E0 05:82D0: 48        PHA
C - - - - - 0x0142E1 05:82D1: 45 CF     EOR ram_00CF
C - - - - - 0x0142E3 05:82D3: F0 05     BEQ bra_82DA
C - - - - - 0x0142E5 05:82D5: 85 CF     STA ram_00CF
C - - - - - 0x0142E7 05:82D7: 20 D4 81  JSR sub_81D4
bra_82DA:
C - - - - - 0x0142EA 05:82DA: 68        PLA
C - - - - - 0x0142EB 05:82DB: 85 CF     STA ram_00CF
C - - - - - 0x0142ED 05:82DD: 60        RTS



sub_82DE:
C - - - - - 0x0142EE 05:82DE: BC 00 07  LDY ram_0700,X
C - - - - - 0x0142F1 05:82E1: F0 03     BEQ bra_82E6
C - - - - - 0x0142F3 05:82E3: 20 84 86  JSR sub_8684
bra_82E6:
C - - - - - 0x0142F6 05:82E6: A5 C0     LDA ram_00C0
C - - - - - 0x0142F8 05:82E8: 4A        LSR
C - - - - - 0x0142F9 05:82E9: B0 1F     BCS bra_830A
C - - - - - 0x0142FB 05:82EB: 20 BA 86  JSR sub_86BA
C - - - - - 0x0142FE 05:82EE: A5 D3     LDA ram_00D3
C - - - - - 0x014300 05:82F0: F0 08     BEQ bra_82FA_RTS
C - - - - - 0x014302 05:82F2: E0 01     CPX #$01
C - - - - - 0x014304 05:82F4: F0 05     BEQ bra_82FB
C - - - - - 0x014306 05:82F6: A5 D5     LDA ram_00D5
C - - - - - 0x014308 05:82F8: F0 06     BEQ bra_8300
bra_82FA_RTS:
C - - - - - 0x01430A 05:82FA: 60        RTS
bra_82FB:
C - - - - - 0x01430B 05:82FB: DE 10 07  DEC ram_0710,X
C - - - - - 0x01430E 05:82FE: D0 FA     BNE bra_82FA_RTS
bra_8300:
C - - - - - 0x014310 05:8300: BD 04 07  LDA ram_0704,X
C - - - - - 0x014313 05:8303: 29 04     AND #$04
C - - - - - 0x014315 05:8305: D0 F3     BNE bra_82FA_RTS
C - - - - - 0x014317 05:8307: 4C A3 85  JMP loc_85A3
bra_830A:
C - - - - - 0x01431A 05:830A: A9 00     LDA #$00
C - - - - - 0x01431C 05:830C: 85 C4     STA ram_00C4
C - - - - - 0x01431E 05:830E: 20 86 83  JSR sub_8386_increase_pointer_and_read_music_data_1
bra_8311_loop:
C - - - - - 0x014321 05:8311: 4A        LSR
C - - - - - 0x014322 05:8312: 90 0C     BCC bra_8320
C - - - - - 0x014324 05:8314: 48        PHA
C - - - - - 0x014325 05:8315: 20 86 83  JSR sub_8386_increase_pointer_and_read_music_data_1
C - - - - - 0x014328 05:8318: 85 C3     STA ram_00C3
C - - - - - 0x01432A 05:831A: A5 C4     LDA ram_00C4
C - - - - - 0x01432C 05:831C: 20 26 83  JSR sub_8326
C - - - - - 0x01432F 05:831F: 68        PLA
bra_8320:
C - - - - - 0x014330 05:8320: F0 11     BEQ bra_8333
C - - - - - 0x014332 05:8322: E6 C4     INC ram_00C4
C - - - - - 0x014334 05:8324: D0 EB     BNE bra_8311_loop    ; jmp always?



sub_8326:
C - - - - - 0x014336 05:8326: 20 23 80  JSR sub_8023_jump_to_pointers_after_jsr
- D 0 - I - 0x014339 05:8329: 6F 86     .word ofs_001_866F_00
- D 0 - I - 0x01433B 05:832B: AD 86     .word ofs_001_86AD_01
- D 0 - I - 0x01433D 05:832D: 5A 86     .word ofs_001_865A_02
- D 0 - I - 0x01433F 05:832F: A7 86     .word ofs_001_86A7_03
- - - - - - 0x014341 05:8331: A1 86     .word ofs_001_86A1_04



bra_8333:
C - - - - - 0x014343 05:8333: 20 86 83  JSR sub_8386_increase_pointer_and_read_music_data_1
C - - - - - 0x014346 05:8336: A8        TAY
C - - - - - 0x014347 05:8337: D0 10     BNE bra_8349
- - - - - - 0x014349 05:8339: 9D 10 07  STA ram_0710,X
- - - - - - 0x01434C 05:833C: BD 04 07  LDA ram_0704,X
- - - - - - 0x01434F 05:833F: 29 F8     AND #$F8
- - - - - - 0x014351 05:8341: 09 04     ORA #$04
- - - - - - 0x014353 05:8343: 9D 04 07  STA ram_0704,X
- - - - - - 0x014356 05:8346: 4C D8 80  JMP loc_80D8
bra_8349:
C - - - - - 0x014359 05:8349: BD 04 07  LDA ram_0704,X
C - - - - - 0x01435C 05:834C: 09 20     ORA #$20
C - - - - - 0x01435E 05:834E: 9D 04 07  STA ram_0704,X
C - - - - - 0x014361 05:8351: BD 18 07  LDA ram_0718,X
C - - - - - 0x014364 05:8354: 0A        ASL
C - - - - - 0x014365 05:8355: A9 54     LDA #$54
C - - - - - 0x014367 05:8357: B0 02     BCS bra_835B
C - - - - - 0x014369 05:8359: A9 0A     LDA #$0A
bra_835B:
C - - - - - 0x01436B 05:835B: 9D 1C 07  STA ram_071C,X
C - - - - - 0x01436E 05:835E: 98        TYA
C - - - - - 0x01436F 05:835F: 10 0A     BPL bra_836B
- - - - - - 0x014371 05:8361: E0 01     CPX #$01
- - - - - - 0x014373 05:8363: D0 03     BNE bra_8368
- - - - - - 0x014375 05:8365: 20 AE 85  JSR sub_85AE
bra_8368:
- - - - - - 0x014378 05:8368: 4C 44 86  JMP loc_8644
bra_836B:
C - - - - - 0x01437B 05:836B: 20 AE 85  JSR sub_85AE
C - - - - - 0x01437E 05:836E: A9 FF     LDA #$FF
C - - - - - 0x014380 05:8370: 9D 7C 07  STA ram_077C,X
C - - - - - 0x014383 05:8373: 88        DEY
C - - - - - 0x014384 05:8374: 8A        TXA
C - - - - - 0x014385 05:8375: D0 08     BNE bra_837F
C - - - - - 0x014387 05:8377: 85 C3     STA ram_00C3
C - - - - - 0x014389 05:8379: 98        TYA
C - - - - - 0x01438A 05:837A: 49 0F     EOR #$0F
C - - - - - 0x01438C 05:837C: 4C 36 86  JMP loc_8636
bra_837F:
C - - - - - 0x01438F 05:837F: 98        TYA
C - - - - - 0x014390 05:8380: 18        CLC
C - - - - - 0x014391 05:8381: 65 D2     ADC ram_00D2
C - - - - - 0x014393 05:8383: 4C DE 85  JMP loc_85DE



sub_8386_increase_pointer_and_read_music_data_1:
C - - - - - 0x014396 05:8386: A4 D0     LDY ram_00D0
C - - - - - 0x014398 05:8388: A5 D1     LDA ram_00D1
C - - - - - 0x01439A 05:838A: E6 D0     INC ram_00D0
C - - - - - 0x01439C 05:838C: D0 02     BNE bra_8390_not_overflow
C - - - - - 0x01439E 05:838E: E6 D1     INC ram_00D1
bra_8390_not_overflow:
C - - - - - 0x0143A0 05:8390: 4C 3A 80  JMP loc_803A_set_pointer_and_read_music_data



sub_8393:
C - - - - - 0x0143A3 05:8393: 8A        TXA
C - - - - - 0x0143A4 05:8394: 09 28     ORA #$28
C - - - - - 0x0143A6 05:8396: AA        TAX
C - - - - - 0x0143A7 05:8397: BD 28 07  LDA ram_0728,X
C - - - - - 0x0143AA 05:839A: 1D 2C 07  ORA ram_072C,X
C - - - - - 0x0143AD 05:839D: F0 2D     BEQ bra_83CC_RTS
C - - - - - 0x0143AF 05:839F: BD 38 07  LDA ram_0738,X
C - - - - - 0x0143B2 05:83A2: F0 29     BEQ bra_83CD
C - - - - - 0x0143B4 05:83A4: BC 00 07  LDY ram_0700,X
C - - - - - 0x0143B7 05:83A7: F0 06     BEQ bra_83AF
C - - - - - 0x0143B9 05:83A9: 20 84 86  JSR sub_8684
C - - - - - 0x0143BC 05:83AC: 20 BA 86  JSR sub_86BA
bra_83AF:
C - - - - - 0x0143BF 05:83AF: BD 40 07  LDA ram_0740,X
C - - - - - 0x0143C2 05:83B2: 38        SEC
C - - - - - 0x0143C3 05:83B3: E5 C7     SBC ram_00C7
C - - - - - 0x0143C5 05:83B5: 9D 40 07  STA ram_0740,X
C - - - - - 0x0143C8 05:83B8: F0 02     BEQ bra_83BC
C - - - - - 0x0143CA 05:83BA: B0 03     BCS bra_83BF
bra_83BC:
C - - - - - 0x0143CC 05:83BC: 20 A3 85  JSR sub_85A3
bra_83BF:
C - - - - - 0x0143CF 05:83BF: BD 38 07  LDA ram_0738,X
C - - - - - 0x0143D2 05:83C2: 38        SEC
C - - - - - 0x0143D3 05:83C3: E5 C7     SBC ram_00C7
C - - - - - 0x0143D5 05:83C5: 9D 38 07  STA ram_0738,X
C - - - - - 0x0143D8 05:83C8: F0 03     BEQ bra_83CD
C - - - - - 0x0143DA 05:83CA: 90 01     BCC bra_83CD
bra_83CC_RTS:
C - - - - - 0x0143DC 05:83CC: 60        RTS
bra_83CD:
loc_83CD_loop:
C D 0 - - - 0x0143DD 05:83CD: 20 92 85  JSR sub_8592_increase_pointer_and_read_music_data_2
C - - - - - 0x0143E0 05:83D0: C9 20     CMP #$20
C - - - - - 0x0143E2 05:83D2: B0 06     BCS bra_83DA_20_FF
; 00-1F
C - - - - - 0x0143E4 05:83D4: 20 97 84  JSR sub_8497_music_control_bytes
C - - - - - 0x0143E7 05:83D7: 4C CD 83  JMP loc_83CD_loop
bra_83DA_20_FF:
C - - - - - 0x0143EA 05:83DA: 48        PHA
C - - - - - 0x0143EB 05:83DB: 2A        ROL
C - - - - - 0x0143EC 05:83DC: 2A        ROL
C - - - - - 0x0143ED 05:83DD: 2A        ROL
C - - - - - 0x0143EE 05:83DE: 2A        ROL
C - - - - - 0x0143EF 05:83DF: 29 07     AND #$07
C - - - - - 0x0143F1 05:83E1: A8        TAY
C - - - - - 0x0143F2 05:83E2: 88        DEY
C - - - - - 0x0143F3 05:83E3: BD 30 07  LDA ram_0730,X
C - - - - - 0x0143F6 05:83E6: 0A        ASL
C - - - - - 0x0143F7 05:83E7: 0A        ASL
C - - - - - 0x0143F8 05:83E8: 10 05     BPL bra_83EF
C - - - - - 0x0143FA 05:83EA: B9 15 89  LDA tbl_8915,Y
C - - - - - 0x0143FD 05:83ED: D0 17     BNE bra_8406    ; jmp
bra_83EF:
C - - - - - 0x0143FF 05:83EF: 0A        ASL
C - - - - - 0x014400 05:83F0: 0A        ASL
C - - - - - 0x014401 05:83F1: B9 1C 89  LDA tbl_891C,Y
C - - - - - 0x014404 05:83F4: 90 10     BCC bra_8406
C - - - - - 0x014406 05:83F6: 85 C3     STA ram_00C3
C - - - - - 0x014408 05:83F8: BD 30 07  LDA ram_0730,X
C - - - - - 0x01440B 05:83FB: 29 EF     AND #$EF
C - - - - - 0x01440D 05:83FD: 9D 30 07  STA ram_0730,X
C - - - - - 0x014410 05:8400: A5 C3     LDA ram_00C3
C - - - - - 0x014412 05:8402: 4A        LSR
C - - - - - 0x014413 05:8403: 18        CLC
C - - - - - 0x014414 05:8404: 65 C3     ADC ram_00C3
bra_8406:
C - - - - - 0x014416 05:8406: 18        CLC
C - - - - - 0x014417 05:8407: 7D 38 07  ADC ram_0738,X
C - - - - - 0x01441A 05:840A: 9D 38 07  STA ram_0738,X
C - - - - - 0x01441D 05:840D: A8        TAY
C - - - - - 0x01441E 05:840E: 68        PLA
C - - - - - 0x01441F 05:840F: 29 1F     AND #$1F
C - - - - - 0x014421 05:8411: D0 06     BNE bra_8419
C - - - - - 0x014423 05:8413: 20 A3 85  JSR sub_85A3
C - - - - - 0x014426 05:8416: 4C 91 84  JMP loc_8491
bra_8419:
C - - - - - 0x014429 05:8419: 48        PHA
C - - - - - 0x01442A 05:841A: 84 C4     STY ram_00C4
C - - - - - 0x01442C 05:841C: BD 3C 07  LDA ram_073C,X
C - - - - - 0x01442F 05:841F: 85 C1     STA ram_music_data
C - - - - - 0x014431 05:8421: 20 06 80  JSR sub_8006
C - - - - - 0x014434 05:8424: A5 C1     LDA ram_music_data
C - - - - - 0x014436 05:8426: D0 02     BNE bra_842A
C - - - - - 0x014438 05:8428: A9 01     LDA #$01
bra_842A:
C - - - - - 0x01443A 05:842A: 9D 40 07  STA ram_0740,X
C - - - - - 0x01443D 05:842D: 68        PLA
C - - - - - 0x01443E 05:842E: A8        TAY
C - - - - - 0x01443F 05:842F: 88        DEY
C - - - - - 0x014440 05:8430: BD 30 07  LDA ram_0730,X
C - - - - - 0x014443 05:8433: 10 0B     BPL bra_8440
C - - - - - 0x014445 05:8435: BD 18 07  LDA ram_0718,X
C - - - - - 0x014448 05:8438: D0 1A     BNE bra_8454
C - - - - - 0x01444A 05:843A: 20 44 86  JSR sub_8644
C - - - - - 0x01444D 05:843D: 4C 7E 84  JMP loc_847E
bra_8440:
C - - - - - 0x014450 05:8440: 20 AE 85  JSR sub_85AE
C - - - - - 0x014453 05:8443: A5 CF     LDA ram_00CF
C - - - - - 0x014455 05:8445: 30 0D     BMI bra_8454
C - - - - - 0x014457 05:8447: 84 C3     STY ram_00C3
C - - - - - 0x014459 05:8449: 8A        TXA
C - - - - - 0x01445A 05:844A: 29 03     AND #$03
C - - - - - 0x01445C 05:844C: A8        TAY
C - - - - - 0x01445D 05:844D: A9 FF     LDA #$FF
C - - - - - 0x01445F 05:844F: 99 7C 07  STA ram_077C,Y
C - - - - - 0x014462 05:8452: A4 C3     LDY ram_00C3
bra_8454:
C - - - - - 0x014464 05:8454: 8A        TXA
C - - - - - 0x014465 05:8455: 29 03     AND #$03
C - - - - - 0x014467 05:8457: D0 0D     BNE bra_8466
C - - - - - 0x014469 05:8459: 85 C3     STA ram_00C3
C - - - - - 0x01446B 05:845B: 98        TYA
C - - - - - 0x01446C 05:845C: 29 0F     AND #$0F
C - - - - - 0x01446E 05:845E: 49 0F     EOR #$0F
C - - - - - 0x014470 05:8460: 20 36 86  JSR sub_8636
C - - - - - 0x014473 05:8463: 4C 7E 84  JMP loc_847E
bra_8466:
C - - - - - 0x014476 05:8466: 84 C3     STY ram_00C3
C - - - - - 0x014478 05:8468: BD 30 07  LDA ram_0730,X
C - - - - - 0x01447B 05:846B: 29 0F     AND #$0F
C - - - - - 0x01447D 05:846D: A8        TAY
C - - - - - 0x01447E 05:846E: B9 23 89  LDA tbl_8923,Y
C - - - - - 0x014481 05:8471: 18        CLC
C - - - - - 0x014482 05:8472: 65 C3     ADC ram_00C3
C - - - - - 0x014484 05:8474: 18        CLC
C - - - - - 0x014485 05:8475: 65 CB     ADC ram_00CB
C - - - - - 0x014487 05:8477: 18        CLC
C - - - - - 0x014488 05:8478: 7D 34 07  ADC ram_0734,X
C - - - - - 0x01448B 05:847B: 20 DE 85  JSR sub_85DE
loc_847E:
C D 0 - - - 0x01448E 05:847E: BD 30 07  LDA ram_0730,X
C - - - - - 0x014491 05:8481: A8        TAY
C - - - - - 0x014492 05:8482: 29 40     AND #$40
C - - - - - 0x014494 05:8484: 0A        ASL
C - - - - - 0x014495 05:8485: 85 C4     STA ram_00C4
C - - - - - 0x014497 05:8487: 98        TYA
C - - - - - 0x014498 05:8488: 29 7F     AND #$7F
C - - - - - 0x01449A 05:848A: 05 C4     ORA ram_00C4
C - - - - - 0x01449C 05:848C: 9D 30 07  STA ram_0730,X
C - - - - - 0x01449F 05:848F: 10 05     BPL bra_8496_RTS
loc_8491:
C D 0 - - - 0x0144A1 05:8491: A9 FF     LDA #$FF
C - - - - - 0x0144A3 05:8493: 9D 40 07  STA ram_0740,X
bra_8496_RTS:
C - - - - - 0x0144A6 05:8496: 60        RTS



sub_8497_music_control_bytes:
C - - - - - 0x0144A7 05:8497: C9 04     CMP #$04
C - - - - - 0x0144A9 05:8499: 90 09     BCC bra_84A4
; 04-1F
C - - - - - 0x0144AB 05:849B: 85 C4     STA ram_00C4
C - - - - - 0x0144AD 05:849D: 20 92 85  JSR sub_8592_increase_pointer_and_read_music_data_2
C - - - - - 0x0144B0 05:84A0: 85 C3     STA ram_00C3
C - - - - - 0x0144B2 05:84A2: A5 C4     LDA ram_00C4
bra_84A4:   ; 00-03
C - - - - - 0x0144B4 05:84A4: 20 23 80  JSR sub_8023_jump_to_pointers_after_jsr
- D 0 - I - 0x0144B7 05:84A7: D9 84     .word ofs_002_84D9_00
- D 0 - I - 0x0144B9 05:84A9: DD 84     .word ofs_002_84DD_01
- D 0 - I - 0x0144BB 05:84AB: E1 84     .word ofs_002_84E1_02
- D 0 - I - 0x0144BD 05:84AD: E8 84     .word ofs_002_84E8_03
- D 0 - I - 0x0144BF 05:84AF: 75 85     .word ofs_002_8575_04
- D 0 - I - 0x0144C1 05:84B1: F1 84     .word ofs_002_84F1_05
- D 0 - I - 0x0144C3 05:84B3: FF 84     .word ofs_002_84FF_06
- D 0 - I - 0x0144C5 05:84B5: 5A 86     .word ofs_002_865A_07
- D 0 - I - 0x0144C7 05:84B7: 6F 86     .word ofs_002_866F_08
- D 0 - I - 0x0144C9 05:84B9: 05 85     .word ofs_002_8505_09
- D 0 - I - 0x0144CB 05:84BB: 10 85     .word ofs_002_8510_0A
- - - - - - 0x0144CD 05:84BD: 15 85     .word ofs_002_8515_0B
- D 0 - I - 0x0144CF 05:84BF: A1 86     .word ofs_002_86A1_0C
- - - - - - 0x0144D1 05:84C1: A7 86     .word ofs_002_86A7_0D
- D 0 - I - 0x0144D3 05:84C3: 1B 85     .word ofs_002_851B_0E
- D 0 - I - 0x0144D5 05:84C5: 1F 85     .word ofs_002_851F_0F
- D 0 - I - 0x0144D7 05:84C7: 23 85     .word ofs_002_8523_10
- - - - - - 0x0144D9 05:84C9: 27 85     .word ofs_002_8527_11
- D 0 - I - 0x0144DB 05:84CB: 1B 85     .word ofs_002_851B_12
- D 0 - I - 0x0144DD 05:84CD: 1F 85     .word ofs_002_851F_13
- - - - - - 0x0144DF 05:84CF: 23 85     .word ofs_002_8523_14
- - - - - - 0x0144E1 05:84D1: 27 85     .word ofs_002_8527_15
- D 0 - I - 0x0144E3 05:84D3: 5A 85     .word ofs_002_855A_16_jump
- D 0 - I - 0x0144E5 05:84D5: 80 85     .word ofs_002_8580_17_stop
- D 0 - I - 0x0144E7 05:84D7: AD 86     .word ofs_002_86AD_18



ofs_002_84D9_00:
C - - J - - 0x0144E9 05:84D9: A9 20     LDA #$20
C - - - - - 0x0144EB 05:84DB: D0 0D     BNE bra_84EA   ; jmp



ofs_002_84DD_01:
C - - J - - 0x0144ED 05:84DD: A9 40     LDA #$40
C - - - - - 0x0144EF 05:84DF: D0 09     BNE bra_84EA   ; jmp



ofs_002_84E1_02:
C - - J - - 0x0144F1 05:84E1: A9 10     LDA #$10
C - - - - - 0x0144F3 05:84E3: 1D 30 07  ORA ram_0730,X
C - - - - - 0x0144F6 05:84E6: D0 05     BNE bra_84ED   ; jmp



ofs_002_84E8_03:
C - - J - - 0x0144F8 05:84E8: A9 08     LDA #$08
bra_84EA:
C - - - - - 0x0144FA 05:84EA: 5D 30 07  EOR ram_0730,X
bra_84ED:
C - - - - - 0x0144FD 05:84ED: 9D 30 07  STA ram_0730,X
C - - - - - 0x014500 05:84F0: 60        RTS



ofs_002_84F1_05:
C - - J - - 0x014501 05:84F1: A9 00     LDA #$00
C - - - - - 0x014503 05:84F3: 85 C8     STA ram_00C8
C - - - - - 0x014505 05:84F5: 20 92 85  JSR sub_8592_increase_pointer_and_read_music_data_2
C - - - - - 0x014508 05:84F8: A4 C3     LDY ram_00C3
C - - - - - 0x01450A 05:84FA: 85 CA     STA ram_00CA
C - - - - - 0x01450C 05:84FC: 84 C9     STY ram_00C9
C - - - - - 0x01450E 05:84FE: 60        RTS



ofs_002_84FF_06:
C - - J - - 0x01450F 05:84FF: A5 C3     LDA ram_00C3
C - - - - - 0x014511 05:8501: 9D 3C 07  STA ram_073C,X
C - - - - - 0x014514 05:8504: 60        RTS



ofs_002_8505_09:
C - - J - - 0x014515 05:8505: BD 30 07  LDA ram_0730,X
C - - - - - 0x014518 05:8508: 29 F8     AND #$F8
C - - - - - 0x01451A 05:850A: 05 C3     ORA ram_00C3
C - - - - - 0x01451C 05:850C: 9D 30 07  STA ram_0730,X
C - - - - - 0x01451F 05:850F: 60        RTS



ofs_002_8510_0A:
C - - J - - 0x014520 05:8510: A5 C3     LDA ram_00C3
C - - - - - 0x014522 05:8512: 85 CB     STA ram_00CB
C - - - - - 0x014524 05:8514: 60        RTS



ofs_002_8515_0B:
- - - - - - 0x014525 05:8515: A5 C3     LDA ram_00C3
- - - - - - 0x014527 05:8517: 9D 34 07  STA ram_0734,X
- - - - - - 0x01452A 05:851A: 60        RTS



ofs_002_851B_0E:
ofs_002_851B_12:
C - - J - - 0x01452B 05:851B: A9 00     LDA #$00
C - - - - - 0x01452D 05:851D: F0 0A     BEQ bra_8529   ; jmp



ofs_002_851F_0F:
ofs_002_851F_13:
C - - J - - 0x01452F 05:851F: A9 04     LDA #$04
C - - - - - 0x014531 05:8521: D0 06     BNE bra_8529   ; jmp



ofs_002_8523_10:
ofs_002_8523_14:
C - - J - - 0x014533 05:8523: A9 08     LDA #$08
C - - - - - 0x014535 05:8525: D0 02     BNE bra_8529   ; jmp



ofs_002_8527_11:
ofs_002_8527_15:
- - - - - - 0x014537 05:8527: A9 0C     LDA #$0C
bra_8529:
C - - - - - 0x014539 05:8529: 85 C2     STA ram_music_data + $01
C - - - - - 0x01453B 05:852B: 8A        TXA
C - - - - - 0x01453C 05:852C: 18        CLC
C - - - - - 0x01453D 05:852D: 65 C2     ADC ram_music_data + $01
C - - - - - 0x01453F 05:852F: A8        TAY
C - - - - - 0x014540 05:8530: A5 C4     LDA ram_00C4
C - - - - - 0x014542 05:8532: C9 12     CMP #$12
C - - - - - 0x014544 05:8534: B0 11     BCS bra_8547_12_15
; 0E-11
C - - - - - 0x014546 05:8536: B9 44 07  LDA ram_0744,Y
C - - - - - 0x014549 05:8539: 38        SEC
C - - - - - 0x01454A 05:853A: E9 01     SBC #$01
C - - - - - 0x01454C 05:853C: B0 02     BCS bra_8540
C - - - - - 0x01454E 05:853E: A5 C3     LDA ram_00C3
bra_8540:
C - - - - - 0x014550 05:8540: 99 44 07  STA ram_0744,Y
C - - - - - 0x014553 05:8543: F0 21     BEQ bra_8566
C - - - - - 0x014555 05:8545: D0 0E     BNE bra_8555   ; jmp
bra_8547_12_15:
C - - - - - 0x014557 05:8547: B9 44 07  LDA ram_0744,Y
C - - - - - 0x01455A 05:854A: 38        SEC
C - - - - - 0x01455B 05:854B: E9 01     SBC #$01
C - - - - - 0x01455D 05:854D: D0 17     BNE bra_8566
C - - - - - 0x01455F 05:854F: 99 44 07  STA ram_0744,Y
C - - - - - 0x014562 05:8552: 20 75 85  JSR sub_8575
bra_8555:
C - - - - - 0x014565 05:8555: 20 92 85  JSR sub_8592_increase_pointer_and_read_music_data_2
C - - - - - 0x014568 05:8558: 85 C3     STA ram_00C3
ofs_002_855A_16_jump:
C - - J - - 0x01456A 05:855A: 20 92 85  JSR sub_8592_increase_pointer_and_read_music_data_2
C - - - - - 0x01456D 05:855D: 9D 28 07  STA ram_0728,X
C - - - - - 0x014570 05:8560: A5 C3     LDA ram_00C3
C - - - - - 0x014572 05:8562: 9D 2C 07  STA ram_072C,X
C - - - - - 0x014575 05:8565: 60        RTS
bra_8566:
C - - - - - 0x014576 05:8566: A9 02     LDA #$02
C - - - - - 0x014578 05:8568: 18        CLC
C - - - - - 0x014579 05:8569: 7D 28 07  ADC ram_0728,X
C - - - - - 0x01457C 05:856C: 9D 28 07  STA ram_0728,X
C - - - - - 0x01457F 05:856F: 90 03     BCC bra_8574_RTS   ; if not overflow
- - - - - - 0x014581 05:8571: FE 2C 07  INC ram_072C,X
bra_8574_RTS:
C - - - - - 0x014584 05:8574: 60        RTS



sub_8575:
ofs_002_8575_04:
C - - J - - 0x014585 05:8575: BD 30 07  LDA ram_0730,X
C - - - - - 0x014588 05:8578: 29 97     AND #$97
C - - - - - 0x01458A 05:857A: 05 C3     ORA ram_00C3
C - - - - - 0x01458C 05:857C: 9D 30 07  STA ram_0730,X
C - - - - - 0x01458F 05:857F: 60        RTS



ofs_002_8580_17_stop:
C - - J - - 0x014590 05:8580: 68        PLA
C - - - - - 0x014591 05:8581: 68        PLA
C - - - - - 0x014592 05:8582: A9 00     LDA #$00
C - - - - - 0x014594 05:8584: 9D 28 07  STA ram_0728,X
C - - - - - 0x014597 05:8587: 9D 2C 07  STA ram_072C,X
C - - - - - 0x01459A 05:858A: A5 CF     LDA ram_00CF
C - - - - - 0x01459C 05:858C: 30 03     BMI bra_8591_RTS
C - - - - - 0x01459E 05:858E: 4C D8 80  JMP loc_80D8
bra_8591_RTS:
C - - - - - 0x0145A1 05:8591: 60        RTS



sub_8592_increase_pointer_and_read_music_data_2:
C - - - - - 0x0145A2 05:8592: BC 28 07  LDY ram_0728,X
C - - - - - 0x0145A5 05:8595: BD 2C 07  LDA ram_072C,X
C - - - - - 0x0145A8 05:8598: FE 28 07  INC ram_0728,X
C - - - - - 0x0145AB 05:859B: D0 03     BNE bra_85A0_not_overflow
C - - - - - 0x0145AD 05:859D: FE 2C 07  INC ram_072C,X
bra_85A0_not_overflow:
C - - - - - 0x0145B0 05:85A0: 4C 3A 80  JMP loc_803A_set_pointer_and_read_music_data



loc_85A3:
sub_85A3:
C D 0 - - - 0x0145B3 05:85A3: BD 04 07  LDA ram_0704,X
C - - - - - 0x0145B6 05:85A6: 29 F8     AND #$F8
C - - - - - 0x0145B8 05:85A8: 09 03     ORA #$03
C - - - - - 0x0145BA 05:85AA: 9D 04 07  STA ram_0704,X
C - - - - - 0x0145BD 05:85AD: 60        RTS



sub_85AE:
C - - - - - 0x0145BE 05:85AE: 98        TYA
C - - - - - 0x0145BF 05:85AF: 48        PHA
C - - - - - 0x0145C0 05:85B0: A0 00     LDY #$00
C - - - - - 0x0145C2 05:85B2: BD 04 07  LDA ram_0704,X
C - - - - - 0x0145C5 05:85B5: 29 F8     AND #$F8
C - - - - - 0x0145C7 05:85B7: 9D 04 07  STA ram_0704,X
C - - - - - 0x0145CA 05:85BA: E0 29     CPX #$29
C - - - - - 0x0145CC 05:85BC: F0 12     BEQ bra_85D0
C - - - - - 0x0145CE 05:85BE: E0 01     CPX #$01
C - - - - - 0x0145D0 05:85C0: D0 15     BNE bra_85D7
C - - - - - 0x0145D2 05:85C2: A5 D3     LDA ram_00D3
C - - - - - 0x0145D4 05:85C4: 85 C1     STA ram_music_data
C - - - - - 0x0145D6 05:85C6: BD 0C 07  LDA ram_070C,X
C - - - - - 0x0145D9 05:85C9: 85 C4     STA ram_00C4
C - - - - - 0x0145DB 05:85CB: 20 06 80  JSR sub_8006
C - - - - - 0x0145DE 05:85CE: A4 C1     LDY ram_music_data
bra_85D0:
C - - - - - 0x0145E0 05:85D0: C8        INY
C - - - - - 0x0145E1 05:85D1: FE 04 07  INC ram_0704,X
C - - - - - 0x0145E4 05:85D4: FE 04 07  INC ram_0704,X
bra_85D7:
C - - - - - 0x0145E7 05:85D7: 98        TYA
C - - - - - 0x0145E8 05:85D8: 9D 10 07  STA ram_0710,X
C - - - - - 0x0145EB 05:85DB: 68        PLA
C - - - - - 0x0145EC 05:85DC: A8        TAY
C - - - - - 0x0145ED 05:85DD: 60        RTS



loc_85DE:
sub_85DE:
C D 0 - - - 0x0145EE 05:85DE: C9 60     CMP #$60
C - - - - - 0x0145F0 05:85E0: 90 02     BCC bra_85E4
- - - - - - 0x0145F2 05:85E2: A9 5F     LDA #$5F
bra_85E4:
C - - - - - 0x0145F4 05:85E4: 85 C3     STA ram_00C3
C - - - - - 0x0145F6 05:85E6: E6 C3     INC ram_00C3
C - - - - - 0x0145F8 05:85E8: E0 28     CPX #$28
C - - - - - 0x0145FA 05:85EA: 90 3E     BCC bra_862A
C - - - - - 0x0145FC 05:85EC: BD 1C 07  LDA ram_071C,X
C - - - - - 0x0145FF 05:85EF: F0 2C     BEQ bra_861D
C - - - - - 0x014601 05:85F1: C5 C3     CMP ram_00C3
C - - - - - 0x014603 05:85F3: D0 07     BNE bra_85FC
C - - - - - 0x014605 05:85F5: BD 30 07  LDA ram_0730,X
C - - - - - 0x014608 05:85F8: 10 23     BPL bra_861D
- - - - - - 0x01460A 05:85FA: 30 48     BMI bra_8644
bra_85FC:
C - - - - - 0x01460C 05:85FC: BD 18 07  LDA ram_0718,X
C - - - - - 0x01460F 05:85FF: F0 1C     BEQ bra_861D
- - - - - - 0x014611 05:8601: B0 04     BCS bra_8607
- - - - - - 0x014613 05:8603: 09 80     ORA #$80
- - - - - - 0x014615 05:8605: D0 02     BNE bra_8609
bra_8607:
- - - - - - 0x014617 05:8607: 29 7F     AND #$7F
bra_8609:
- - - - - - 0x014619 05:8609: 9D 18 07  STA ram_0718,X
- - - - - - 0x01461C 05:860C: BD 04 07  LDA ram_0704,X
- - - - - - 0x01461F 05:860F: 09 20     ORA #$20
- - - - - - 0x014621 05:8611: 9D 04 07  STA ram_0704,X
- - - - - - 0x014624 05:8614: A5 C3     LDA ram_00C3
- - - - - - 0x014626 05:8616: BC 1C 07  LDY ram_071C,X
- - - - - - 0x014629 05:8619: 84 C3     STY ram_00C3
- - - - - - 0x01462B 05:861B: D0 0A     BNE bra_8627
bra_861D:
C - - - - - 0x01462D 05:861D: BD 04 07  LDA ram_0704,X
C - - - - - 0x014630 05:8620: 29 DF     AND #$DF
C - - - - - 0x014632 05:8622: 9D 04 07  STA ram_0704,X
C - - - - - 0x014635 05:8625: A5 C3     LDA ram_00C3
bra_8627:
C - - - - - 0x014637 05:8627: 9D 1C 07  STA ram_071C,X
bra_862A:
C - - - - - 0x01463A 05:862A: 06 C3     ASL ram_00C3
C - - - - - 0x01463C 05:862C: A4 C3     LDY ram_00C3
C - - - - - 0x01463E 05:862E: B9 59 89  LDA tbl_895B - $02,Y
C - - - - - 0x014641 05:8631: 85 C3     STA ram_00C3
C - - - - - 0x014643 05:8633: B9 5A 89  LDA tbl_895B - $01,Y
loc_8636:
sub_8636:
C D 0 - - - 0x014646 05:8636: 9D 24 07  STA ram_0724,X
C - - - - - 0x014649 05:8639: A5 C3     LDA ram_00C3
C - - - - - 0x01464B 05:863B: 9D 20 07  STA ram_0720,X
C - - - - - 0x01464E 05:863E: A0 04     LDY #$04
C - - - - - 0x014650 05:8640: B1 C5     LDA (ram_00C5),Y
C - - - - - 0x014652 05:8642: 30 08     BMI bra_864C
sub_8644:
bra_8644:
loc_8644:
C - - - - - 0x014654 05:8644: BD 04 07  LDA ram_0704,X
C - - - - - 0x014657 05:8647: 29 08     AND #$08
C - - - - - 0x014659 05:8649: D0 01     BNE bra_864C
C - - - - - 0x01465B 05:864B: 60        RTS
bra_864C:
C - - - - - 0x01465C 05:864C: A9 00     LDA #$00
C - - - - - 0x01465E 05:864E: 9D 08 07  STA ram_0708,X
C - - - - - 0x014661 05:8651: BD 04 07  LDA ram_0704,X
C - - - - - 0x014664 05:8654: 29 37     AND #$37
C - - - - - 0x014666 05:8656: 9D 04 07  STA ram_0704,X
C - - - - - 0x014669 05:8659: 60        RTS



ofs_001_865A_02:
ofs_002_865A_07:
C - - J - - 0x01466A 05:865A: E0 01     CPX #$01
C - - - - - 0x01466C 05:865C: D0 04     BNE bra_8662
C - - - - - 0x01466E 05:865E: A5 C3     LDA ram_00C3
C - - - - - 0x014670 05:8660: D0 09     BNE bra_866B
bra_8662:
C - - - - - 0x014672 05:8662: BD 0C 07  LDA ram_070C,X
C - - - - - 0x014675 05:8665: 29 C0     AND #$C0
C - - - - - 0x014677 05:8667: 05 C3     ORA ram_00C3
C - - - - - 0x014679 05:8669: 09 30     ORA #$30
bra_866B:
C - - - - - 0x01467B 05:866B: 9D 0C 07  STA ram_070C,X
C - - - - - 0x01467E 05:866E: 60        RTS



ofs_001_866F_00:
ofs_002_866F_08:
C - - J - - 0x01467F 05:866F: E6 C3     INC ram_00C3
C - - - - - 0x014681 05:8671: A5 C3     LDA ram_00C3
C - - - - - 0x014683 05:8673: DD 00 07  CMP ram_0700,X
C - - - - - 0x014686 05:8676: F0 28     BEQ bra_86A0_RTS
C - - - - - 0x014688 05:8678: 9D 00 07  STA ram_0700,X
C - - - - - 0x01468B 05:867B: A8        TAY
C - - - - - 0x01468C 05:867C: BD 04 07  LDA ram_0704,X
C - - - - - 0x01468F 05:867F: 09 08     ORA #$08
C - - - - - 0x014691 05:8681: 9D 04 07  STA ram_0704,X
sub_8684:
; Y = 01-35
C - - - - - 0x014694 05:8684: 88        DEY
C - - - - - 0x014695 05:8685: A9 00     LDA #$00
C - - - - - 0x014697 05:8687: 85 C3     STA ram_00C3
C - - - - - 0x014699 05:8689: 98        TYA
; * 08
C - - - - - 0x01469A 05:868A: 0A        ASL
C - - - - - 0x01469B 05:868B: 26 C3     ROL ram_00C3
C - - - - - 0x01469D 05:868D: 0A        ASL
C - - - - - 0x01469E 05:868E: 26 C3     ROL ram_00C3
C - - - - - 0x0146A0 05:8690: 0A        ASL
C - - - - - 0x0146A1 05:8691: 26 C3     ROL ram_00C3
C - - - - - 0x0146A3 05:8693: 18        CLC
C - - - - - 0x0146A4 05:8694: 6D 42 8A  ADC tbl_8A41 + $01
C - - - - - 0x0146A7 05:8697: 85 C5     STA ram_00C5
C - - - - - 0x0146A9 05:8699: A5 C3     LDA ram_00C3
C - - - - - 0x0146AB 05:869B: 6D 41 8A  ADC tbl_8A41
C - - - - - 0x0146AE 05:869E: 85 C6     STA ram_00C6
bra_86A0_RTS:
C - - - - - 0x0146B0 05:86A0: 60        RTS



ofs_001_86A1_04:
ofs_002_86A1_0C:
C - - J - - 0x0146B1 05:86A1: A5 C3     LDA ram_00C3
C - - - - - 0x0146B3 05:86A3: 9D 14 07  STA ram_0714,X
C - - - - - 0x0146B6 05:86A6: 60        RTS



ofs_001_86A7_03:
ofs_002_86A7_0D:
C - - J - - 0x0146B7 05:86A7: A5 C3     LDA ram_00C3
C - - - - - 0x0146B9 05:86A9: 9D 18 07  STA ram_0718,X
C - - - - - 0x0146BC 05:86AC: 60        RTS



ofs_001_86AD_01:
ofs_002_86AD_18:
C - - J - - 0x0146BD 05:86AD: BD 0C 07  LDA ram_070C,X
C - - - - - 0x0146C0 05:86B0: 29 0F     AND #$0F
C - - - - - 0x0146C2 05:86B2: 05 C3     ORA ram_00C3
C - - - - - 0x0146C4 05:86B4: 09 30     ORA #$30
C - - - - - 0x0146C6 05:86B6: 9D 0C 07  STA ram_070C,X
C - - - - - 0x0146C9 05:86B9: 60        RTS



sub_86BA:
C - - - - - 0x0146CA 05:86BA: BD 10 07  LDA ram_0710,X
C - - - - - 0x0146CD 05:86BD: 85 C4     STA ram_00C4
C - - - - - 0x0146CF 05:86BF: BD 04 07  LDA ram_0704,X
C - - - - - 0x0146D2 05:86C2: 29 07     AND #$07
C - - - - - 0x0146D4 05:86C4: 20 23 80  JSR sub_8023_jump_to_pointers_after_jsr
- D 0 - I - 0x0146D7 05:86C7: D1 86     .word ofs_003_86D1_00
- D 0 - I - 0x0146D9 05:86C9: E6 86     .word ofs_003_86E6_01
- D 0 - I - 0x0146DB 05:86CB: 20 87     .word ofs_003_8720_02
- D 0 - I - 0x0146DD 05:86CD: 02 87     .word ofs_003_8702_03
- D 0 - I - 0x0146DF 05:86CF: 14 89     .word ofs_003_8914_04_RTS



ofs_003_86D1_00:
C - - J - - 0x0146E1 05:86D1: A0 00     LDY #$00
C - - - - - 0x0146E3 05:86D3: B1 C5     LDA (ram_00C5),Y
C - - - - - 0x0146E5 05:86D5: A8        TAY
C - - - - - 0x0146E6 05:86D6: A5 C4     LDA ram_00C4
C - - - - - 0x0146E8 05:86D8: 18        CLC
C - - - - - 0x0146E9 05:86D9: 79 33 89  ADC tbl_8933,Y
C - - - - - 0x0146EC 05:86DC: B0 04     BCS bra_86E2
C - - - - - 0x0146EE 05:86DE: C9 F0     CMP #$F0
C - - - - - 0x0146F0 05:86E0: 90 3B     BCC bra_871D
bra_86E2:
C - - - - - 0x0146F2 05:86E2: A9 F0     LDA #$F0
C - - - - - 0x0146F4 05:86E4: D0 34     BNE bra_871A   ; jmp



ofs_003_86E6_01:
C - - J - - 0x0146F6 05:86E6: A0 01     LDY #$01
C - - - - - 0x0146F8 05:86E8: B1 C5     LDA (ram_00C5),Y
C - - - - - 0x0146FA 05:86EA: F0 0F     BEQ bra_86FB
C - - - - - 0x0146FC 05:86EC: A8        TAY
C - - - - - 0x0146FD 05:86ED: A5 C4     LDA ram_00C4
C - - - - - 0x0146FF 05:86EF: 38        SEC
C - - - - - 0x014700 05:86F0: F9 33 89  SBC tbl_8933,Y
C - - - - - 0x014703 05:86F3: 90 06     BCC bra_86FB
C - - - - - 0x014705 05:86F5: A0 02     LDY #$02
C - - - - - 0x014707 05:86F7: D1 C5     CMP (ram_00C5),Y
C - - - - - 0x014709 05:86F9: B0 22     BCS bra_871D
bra_86FB:
C - - - - - 0x01470B 05:86FB: A0 02     LDY #$02
C - - - - - 0x01470D 05:86FD: B1 C5     LDA (ram_00C5),Y
C - - - - - 0x01470F 05:86FF: 4C 1A 87  JMP loc_871A



ofs_003_8702_03:
C - - J - - 0x014712 05:8702: 8A        TXA
C - - - - - 0x014713 05:8703: 29 03     AND #$03
C - - - - - 0x014715 05:8705: C9 01     CMP #$01
C - - - - - 0x014717 05:8707: F0 0F     BEQ bra_8718
C - - - - - 0x014719 05:8709: A0 03     LDY #$03
C - - - - - 0x01471B 05:870B: B1 C5     LDA (ram_00C5),Y
C - - - - - 0x01471D 05:870D: F0 11     BEQ bra_8720
C - - - - - 0x01471F 05:870F: A8        TAY
C - - - - - 0x014720 05:8710: A5 C4     LDA ram_00C4
C - - - - - 0x014722 05:8712: 38        SEC
C - - - - - 0x014723 05:8713: F9 33 89  SBC tbl_8933,Y
C - - - - - 0x014726 05:8716: B0 05     BCS bra_871D
bra_8718:
C - - - - - 0x014728 05:8718: A9 00     LDA #$00
bra_871A:
loc_871A:
C D 0 - - - 0x01472A 05:871A: FE 04 07  INC ram_0704,X
bra_871D:
C - - - - - 0x01472D 05:871D: 9D 10 07  STA ram_0710,X
bra_8720:
ofs_003_8720_02:
C - - - - - 0x014730 05:8720: E0 28     CPX #$28
C - - - - - 0x014732 05:8722: 90 13     BCC bra_8737
C - - - - - 0x014734 05:8724: A5 CF     LDA ram_00CF
C - - - - - 0x014736 05:8726: 10 03     BPL bra_872B
C - - - - - 0x014738 05:8728: 4C A0 88  JMP loc_88A0
bra_872B:
C - - - - - 0x01473B 05:872B: A5 CD     LDA ram_00CD
C - - - - - 0x01473D 05:872D: A4 CC     LDY ram_00CC
C - - - - - 0x01473F 05:872F: 30 02     BMI bra_8733
C - - - - - 0x014741 05:8731: 49 FF     EOR #$FF
bra_8733:
C - - - - - 0x014743 05:8733: C9 FF     CMP #$FF
C - - - - - 0x014745 05:8735: D0 09     BNE bra_8740
bra_8737:
C - - - - - 0x014747 05:8737: 8A        TXA
C - - - - - 0x014748 05:8738: 29 03     AND #$03
C - - - - - 0x01474A 05:873A: C9 01     CMP #$01
C - - - - - 0x01474C 05:873C: D0 22     BNE bra_8760
C - - - - - 0x01474E 05:873E: F0 12     BEQ bra_8752   ; jmp
bra_8740:
- - - - - - 0x014750 05:8740: E0 29     CPX #$29
- - - - - - 0x014752 05:8742: D0 17     BNE bra_875B
- - - - - - 0x014754 05:8744: 85 C4     STA ram_00C4
- - - - - - 0x014756 05:8746: BD 40 07  LDA ram_0740,X
- - - - - - 0x014759 05:8749: 85 C1     STA ram_music_data
- - - - - - 0x01475B 05:874B: 20 06 80  JSR sub_8006
- - - - - - 0x01475E 05:874E: A5 C1     LDA ram_music_data
- - - - - - 0x014760 05:8750: F0 58     BEQ bra_87AA
bra_8752:
C - - - - - 0x014762 05:8752: BD 10 07  LDA ram_0710,X
C - - - - - 0x014765 05:8755: F0 53     BEQ bra_87AA
C - - - - - 0x014767 05:8757: A9 FF     LDA #$FF
C - - - - - 0x014769 05:8759: D0 4F     BNE bra_87AA   ; jmp
bra_875B:
- - - - - - 0x01476B 05:875B: DD 10 07  CMP ram_0710,X
- - - - - - 0x01476E 05:875E: 90 03     BCC bra_8763
bra_8760:
C - - - - - 0x014770 05:8760: BD 10 07  LDA ram_0710,X
bra_8763:
C - - - - - 0x014773 05:8763: 4A        LSR
C - - - - - 0x014774 05:8764: 4A        LSR
C - - - - - 0x014775 05:8765: 4A        LSR
C - - - - - 0x014776 05:8766: 4A        LSR
C - - - - - 0x014777 05:8767: 49 0F     EOR #$0F
C - - - - - 0x014779 05:8769: 85 C3     STA ram_00C3
C - - - - - 0x01477B 05:876B: A0 06     LDY #$06
C - - - - - 0x01477D 05:876D: B1 C5     LDA (ram_00C5),Y
C - - - - - 0x01477F 05:876F: C9 05     CMP #$05
C - - - - - 0x014781 05:8771: 90 24     BCC bra_8797
C - - - - - 0x014783 05:8773: 85 C4     STA ram_00C4
C - - - - - 0x014785 05:8775: BC 08 07  LDY ram_0708,X
C - - - - - 0x014788 05:8778: BD 04 07  LDA ram_0704,X
C - - - - - 0x01478B 05:877B: 0A        ASL
C - - - - - 0x01478C 05:877C: 0A        ASL
C - - - - - 0x01478D 05:877D: 98        TYA
C - - - - - 0x01478E 05:877E: 90 02     BCC bra_8782
C - - - - - 0x014790 05:8780: 49 FF     EOR #$FF
bra_8782:
C - - - - - 0x014792 05:8782: F0 13     BEQ bra_8797
C - - - - - 0x014794 05:8784: 85 C1     STA ram_music_data
C - - - - - 0x014796 05:8786: 20 06 80  JSR sub_8006
C - - - - - 0x014799 05:8789: A5 C1     LDA ram_music_data
C - - - - - 0x01479B 05:878B: 4A        LSR
C - - - - - 0x01479C 05:878C: 4A        LSR
C - - - - - 0x01479D 05:878D: C9 10     CMP #$10
C - - - - - 0x01479F 05:878F: B0 14     BCS bra_87A5
C - - - - - 0x0147A1 05:8791: C5 C3     CMP ram_00C3
C - - - - - 0x0147A3 05:8793: 90 02     BCC bra_8797
C - - - - - 0x0147A5 05:8795: 85 C3     STA ram_00C3
bra_8797:
C - - - - - 0x0147A7 05:8797: A9 10     LDA #$10
C - - - - - 0x0147A9 05:8799: 85 C4     STA ram_00C4
C - - - - - 0x0147AB 05:879B: BD 0C 07  LDA ram_070C,X
C - - - - - 0x0147AE 05:879E: 38        SEC
C - - - - - 0x0147AF 05:879F: E5 C3     SBC ram_00C3
C - - - - - 0x0147B1 05:87A1: 24 C4     BIT ram_00C4
C - - - - - 0x0147B3 05:87A3: D0 05     BNE bra_87AA
bra_87A5:
C - - - - - 0x0147B5 05:87A5: BD 0C 07  LDA ram_070C,X
C - - - - - 0x0147B8 05:87A8: 29 F0     AND #$F0
bra_87AA:
C - - - - - 0x0147BA 05:87AA: A0 00     LDY #$00
C - - - - - 0x0147BC 05:87AC: 20 EC 80  JSR sub_80EC
C - - - - - 0x0147BF 05:87AF: 8A        TXA
C - - - - - 0x0147C0 05:87B0: 29 03     AND #$03
C - - - - - 0x0147C2 05:87B2: A8        TAY
C - - - - - 0x0147C3 05:87B3: B9 7C 07  LDA ram_077C,Y
C - - - - - 0x0147C6 05:87B6: 30 54     BMI bra_880C
C - - - - - 0x0147C8 05:87B8: A0 05     LDY #$05
C - - - - - 0x0147CA 05:87BA: B1 C5     LDA (ram_00C5),Y
C - - - - - 0x0147CC 05:87BC: F0 4E     BEQ bra_880C
C - - - - - 0x0147CE 05:87BE: 85 C4     STA ram_00C4
C - - - - - 0x0147D0 05:87C0: BC 08 07  LDY ram_0708,X
C - - - - - 0x0147D3 05:87C3: BD 04 07  LDA ram_0704,X
C - - - - - 0x0147D6 05:87C6: 0A        ASL
C - - - - - 0x0147D7 05:87C7: 0A        ASL
C - - - - - 0x0147D8 05:87C8: 98        TYA
C - - - - - 0x0147D9 05:87C9: 90 02     BCC bra_87CD
C - - - - - 0x0147DB 05:87CB: 49 FF     EOR #$FF
bra_87CD:
C - - - - - 0x0147DD 05:87CD: F0 3D     BEQ bra_880C
C - - - - - 0x0147DF 05:87CF: 85 C1     STA ram_music_data
C - - - - - 0x0147E1 05:87D1: 20 06 80  JSR sub_8006
C - - - - - 0x0147E4 05:87D4: A5 C1     LDA ram_music_data
C - - - - - 0x0147E6 05:87D6: 4A        LSR
C - - - - - 0x0147E7 05:87D7: 66 C2     ROR ram_music_data + $01
C - - - - - 0x0147E9 05:87D9: 4A        LSR
C - - - - - 0x0147EA 05:87DA: 66 C2     ROR ram_music_data + $01
C - - - - - 0x0147EC 05:87DC: 4A        LSR
C - - - - - 0x0147ED 05:87DD: 66 C2     ROR ram_music_data + $01
C - - - - - 0x0147EF 05:87DF: 4A        LSR
C - - - - - 0x0147F0 05:87E0: 66 C2     ROR ram_music_data + $01
C - - - - - 0x0147F2 05:87E2: A8        TAY
C - - - - - 0x0147F3 05:87E3: 05 C2     ORA ram_music_data + $01
C - - - - - 0x0147F5 05:87E5: F0 25     BEQ bra_880C
C - - - - - 0x0147F7 05:87E7: BD 04 07  LDA ram_0704,X
C - - - - - 0x0147FA 05:87EA: 30 0E     BMI bra_87FA
C - - - - - 0x0147FC 05:87EC: 18        CLC
C - - - - - 0x0147FD 05:87ED: A5 C2     LDA ram_music_data + $01
C - - - - - 0x0147FF 05:87EF: 7D 20 07  ADC ram_0720,X
C - - - - - 0x014802 05:87F2: 85 C2     STA ram_music_data + $01
C - - - - - 0x014804 05:87F4: 98        TYA
C - - - - - 0x014805 05:87F5: 7D 24 07  ADC ram_0724,X
C - - - - - 0x014808 05:87F8: D0 0F     BNE bra_8809
bra_87FA:
C - - - - - 0x01480A 05:87FA: 38        SEC
C - - - - - 0x01480B 05:87FB: BD 20 07  LDA ram_0720,X
C - - - - - 0x01480E 05:87FE: E5 C2     SBC ram_music_data + $01
C - - - - - 0x014810 05:8800: 85 C2     STA ram_music_data + $01
C - - - - - 0x014812 05:8802: BD 24 07  LDA ram_0724,X
C - - - - - 0x014815 05:8805: 84 C1     STY ram_music_data
C - - - - - 0x014817 05:8807: E5 C1     SBC ram_music_data
bra_8809:
C - - - - - 0x014819 05:8809: A8        TAY
C - - - - - 0x01481A 05:880A: D0 08     BNE bra_8814
bra_880C:
C - - - - - 0x01481C 05:880C: BD 20 07  LDA ram_0720,X
C - - - - - 0x01481F 05:880F: 85 C2     STA ram_music_data + $01
C - - - - - 0x014821 05:8811: BC 24 07  LDY ram_0724,X
bra_8814:
C - - - - - 0x014824 05:8814: E0 28     CPX #$28
C - - - - - 0x014826 05:8816: B0 1D     BCS bra_8835
C - - - - - 0x014828 05:8818: A5 D6     LDA ram_00D6
C - - - - - 0x01482A 05:881A: 10 19     BPL bra_8835
- - - - - - 0x01482C 05:881C: A5 D8     LDA ram_00D8
- - - - - - 0x01482E 05:881E: F0 15     BEQ bra_8835
- - - - - - 0x014830 05:8820: 85 C4     STA ram_00C4
- - - - - - 0x014832 05:8822: 84 C1     STY ram_music_data
- - - - - - 0x014834 05:8824: A5 C2     LDA ram_music_data + $01
- - - - - - 0x014836 05:8826: 48        PHA
- - - - - - 0x014837 05:8827: 20 06 80  JSR sub_8006
- - - - - - 0x01483A 05:882A: 68        PLA
- - - - - - 0x01483B 05:882B: 18        CLC
- - - - - - 0x01483C 05:882C: 65 C2     ADC ram_music_data + $01
- - - - - - 0x01483E 05:882E: 85 C2     STA ram_music_data + $01
- - - - - - 0x014840 05:8830: A9 00     LDA #$00
- - - - - - 0x014842 05:8832: 65 C1     ADC ram_music_data
- - - - - - 0x014844 05:8834: A8        TAY
bra_8835:
C - - - - - 0x014845 05:8835: 8A        TXA
C - - - - - 0x014846 05:8836: 29 03     AND #$03
C - - - - - 0x014848 05:8838: D0 0F     BNE bra_8849
; 00
C - - - - - 0x01484A 05:883A: 98        TYA
C - - - - - 0x01484B 05:883B: 29 0F     AND #$0F
C - - - - - 0x01484D 05:883D: A0 07     LDY #$07
C - - - - - 0x01484F 05:883F: 11 C5     ORA (ram_00C5),Y
C - - - - - 0x014851 05:8841: 85 C2     STA ram_music_data + $01
C - - - - - 0x014853 05:8843: A9 00     LDA #$00
C - - - - - 0x014855 05:8845: 85 C1     STA ram_music_data
C - - - - - 0x014857 05:8847: F0 3B     BEQ bra_8884   ; jmp
bra_8849:
C - - - - - 0x014859 05:8849: 98        TYA
C - - - - - 0x01485A 05:884A: A0 08     LDY #$08
bra_884C_loop:
C - - - - - 0x01485C 05:884C: 88        DEY
C - - - - - 0x01485D 05:884D: D9 53 89  CMP tbl_8953,Y
C - - - - - 0x014860 05:8850: 90 FA     BCC bra_884C_loop
C - - - - - 0x014862 05:8852: 85 C1     STA ram_music_data
C - - - - - 0x014864 05:8854: 98        TYA
C - - - - - 0x014865 05:8855: 18        CLC
C - - - - - 0x014866 05:8856: 65 C1     ADC ram_music_data
C - - - - - 0x014868 05:8858: A8        TAY
C - - - - - 0x014869 05:8859: 29 07     AND #$07
C - - - - - 0x01486B 05:885B: 18        CLC
C - - - - - 0x01486C 05:885C: 69 07     ADC #$07
C - - - - - 0x01486E 05:885E: 85 C1     STA ram_music_data
C - - - - - 0x014870 05:8860: 98        TYA
C - - - - - 0x014871 05:8861: 29 38     AND #$38
C - - - - - 0x014873 05:8863: 49 38     EOR #$38
C - - - - - 0x014875 05:8865: F0 09     BEQ bra_8870
bra_8867_loop:
C - - - - - 0x014877 05:8867: 46 C1     LSR ram_music_data
C - - - - - 0x014879 05:8869: 66 C2     ROR ram_music_data + $01
C - - - - - 0x01487B 05:886B: 38        SEC
C - - - - - 0x01487C 05:886C: E9 08     SBC #$08
C - - - - - 0x01487E 05:886E: D0 F7     BNE bra_8867_loop
bra_8870:
C - - - - - 0x014880 05:8870: A0 00     LDY #$00
C - - - - - 0x014882 05:8872: BD 14 07  LDA ram_0714,X
C - - - - - 0x014885 05:8875: F0 0D     BEQ bra_8884
C - - - - - 0x014887 05:8877: 10 01     BPL bra_887A
- - - - - - 0x014889 05:8879: 88        DEY
bra_887A:
C - - - - - 0x01488A 05:887A: 18        CLC
C - - - - - 0x01488B 05:887B: 65 C2     ADC ram_music_data + $01
C - - - - - 0x01488D 05:887D: 85 C2     STA ram_music_data + $01
C - - - - - 0x01488F 05:887F: 98        TYA
C - - - - - 0x014890 05:8880: 65 C1     ADC ram_music_data
C - - - - - 0x014892 05:8882: 85 C1     STA ram_music_data
bra_8884:
C - - - - - 0x014894 05:8884: A0 02     LDY #$02
C - - - - - 0x014896 05:8886: A5 C2     LDA ram_music_data + $01
C - - - - - 0x014898 05:8888: 20 EC 80  JSR sub_80EC
C - - - - - 0x01489B 05:888B: 8A        TXA
C - - - - - 0x01489C 05:888C: 29 03     AND #$03
C - - - - - 0x01489E 05:888E: A8        TAY
C - - - - - 0x01489F 05:888F: A5 C1     LDA ram_music_data
C - - - - - 0x0148A1 05:8891: D9 7C 07  CMP ram_077C,Y
C - - - - - 0x0148A4 05:8894: F0 0A     BEQ bra_88A0
C - - - - - 0x0148A6 05:8896: 99 7C 07  STA ram_077C,Y
C - - - - - 0x0148A9 05:8899: 09 08     ORA #$08
C - - - - - 0x0148AB 05:889B: A0 03     LDY #$03
C - - - - - 0x0148AD 05:889D: 20 EC 80  JSR sub_80EC
bra_88A0:
loc_88A0:
C D 0 - - - 0x0148B0 05:88A0: BD 04 07  LDA ram_0704,X
C - - - - - 0x0148B3 05:88A3: 29 20     AND #$20
C - - - - - 0x0148B5 05:88A5: F0 53     BEQ bra_88FA
C - - - - - 0x0148B7 05:88A7: BD 18 07  LDA ram_0718,X
C - - - - - 0x0148BA 05:88AA: F0 46     BEQ bra_88F2
C - - - - - 0x0148BC 05:88AC: A0 00     LDY #$00
C - - - - - 0x0148BE 05:88AE: 0A        ASL
C - - - - - 0x0148BF 05:88AF: 08        PHP
C - - - - - 0x0148C0 05:88B0: 90 06     BCC bra_88B8
C - - - - - 0x0148C2 05:88B2: 49 FF     EOR #$FF
C - - - - - 0x0148C4 05:88B4: 18        CLC
C - - - - - 0x0148C5 05:88B5: 69 01     ADC #$01
C - - - - - 0x0148C7 05:88B7: 88        DEY
bra_88B8:
C - - - - - 0x0148C8 05:88B8: 18        CLC
C - - - - - 0x0148C9 05:88B9: 7D 20 07  ADC ram_0720,X
C - - - - - 0x0148CC 05:88BC: 9D 20 07  STA ram_0720,X
C - - - - - 0x0148CF 05:88BF: 98        TYA
C - - - - - 0x0148D0 05:88C0: 7D 24 07  ADC ram_0724,X
C - - - - - 0x0148D3 05:88C3: 9D 24 07  STA ram_0724,X
C - - - - - 0x0148D6 05:88C6: BD 1C 07  LDA ram_071C,X
C - - - - - 0x0148D9 05:88C9: 0A        ASL
C - - - - - 0x0148DA 05:88CA: A8        TAY
C - - - - - 0x0148DB 05:88CB: 38        SEC
C - - - - - 0x0148DC 05:88CC: BD 20 07  LDA ram_0720,X
C - - - - - 0x0148DF 05:88CF: F9 59 89  SBC tbl_895B - $02,Y
C - - - - - 0x0148E2 05:88D2: BD 24 07  LDA ram_0724,X
C - - - - - 0x0148E5 05:88D5: 29 3F     AND #$3F
C - - - - - 0x0148E7 05:88D7: F9 5A 89  SBC tbl_895B - $01,Y
C - - - - - 0x0148EA 05:88DA: A9 FF     LDA #$FF
C - - - - - 0x0148EC 05:88DC: 69 00     ADC #$00
C - - - - - 0x0148EE 05:88DE: 28        PLP
C - - - - - 0x0148EF 05:88DF: 69 00     ADC #$00
C - - - - - 0x0148F1 05:88E1: D0 17     BNE bra_88FA
C - - - - - 0x0148F3 05:88E3: 8A        TXA
C - - - - - 0x0148F4 05:88E4: F0 14     BEQ bra_88FA
- - - - - - 0x0148F6 05:88E6: B9 59 89  LDA tbl_895B - $02,Y
- - - - - - 0x0148F9 05:88E9: 9D 20 07  STA ram_0720,X
- - - - - - 0x0148FC 05:88EC: B9 5A 89  LDA tbl_895B - $01,Y
- - - - - - 0x0148FF 05:88EF: 9D 24 07  STA ram_0724,X
bra_88F2:
C - - - - - 0x014902 05:88F2: BD 04 07  LDA ram_0704,X
C - - - - - 0x014905 05:88F5: 29 DF     AND #$DF
C - - - - - 0x014907 05:88F7: 9D 04 07  STA ram_0704,X
bra_88FA:
C - - - - - 0x01490A 05:88FA: A0 04     LDY #$04
C - - - - - 0x01490C 05:88FC: B1 C5     LDA (ram_00C5),Y
C - - - - - 0x01490E 05:88FE: 29 7F     AND #$7F
C - - - - - 0x014910 05:8900: F0 12     BEQ bra_8914_RTS
C - - - - - 0x014912 05:8902: 18        CLC
C - - - - - 0x014913 05:8903: 7D 08 07  ADC ram_0708,X
C - - - - - 0x014916 05:8906: 9D 08 07  STA ram_0708,X
C - - - - - 0x014919 05:8909: 90 09     BCC bra_8914_RTS
C - - - - - 0x01491B 05:890B: BD 04 07  LDA ram_0704,X
C - - - - - 0x01491E 05:890E: 18        CLC
C - - - - - 0x01491F 05:890F: 69 40     ADC #$40
C - - - - - 0x014921 05:8911: 9D 04 07  STA ram_0704,X
bra_8914_RTS:
ofs_003_8914_04_RTS:
C - - - - - 0x014924 05:8914: 60        RTS



tbl_8915:
- - - - - - 0x014925 05:8915: 02        .byte $02   ; 
- D 0 - - - 0x014926 05:8916: 04        .byte $04   ; 
- D 0 - - - 0x014927 05:8917: 08        .byte $08   ; 
- D 0 - - - 0x014928 05:8918: 10        .byte $10   ; 
- - - - - - 0x014929 05:8919: 20        .byte $20   ; 
- - - - - - 0x01492A 05:891A: 40        .byte $40   ; 
- - - - - - 0x01492B 05:891B: 80        .byte $80   ; 

tbl_891C:
- D 0 - - - 0x01492C 05:891C: 03        .byte $03   ; 
- D 0 - - - 0x01492D 05:891D: 06        .byte $06   ; 
- D 0 - - - 0x01492E 05:891E: 0C        .byte $0C   ; 
- D 0 - - - 0x01492F 05:891F: 18        .byte $18   ; 
- D 0 - - - 0x014930 05:8920: 30        .byte $30   ; 
- D 0 - - - 0x014931 05:8921: 60        .byte $60   ; 
- D 0 - - - 0x014932 05:8922: C0        .byte $C0   ; 



tbl_8923:
- - - - - - 0x014933 05:8923: 00        .byte $00   ; 00
- D 0 - - - 0x014934 05:8924: 0C        .byte $0C   ; 01
- D 0 - - - 0x014935 05:8925: 18        .byte $18   ; 02
- D 0 - - - 0x014936 05:8926: 24        .byte $24   ; 03
- - - - - - 0x014937 05:8927: 30        .byte $30   ; 04
- - - - - - 0x014938 05:8928: 3C        .byte $3C   ; 05
- - - - - - 0x014939 05:8929: 48        .byte $48   ; 06
- - - - - - 0x01493A 05:892A: 54        .byte $54   ; 07
- D 0 - - - 0x01493B 05:892B: 18        .byte $18   ; 08
- D 0 - - - 0x01493C 05:892C: 24        .byte $24   ; 09
- D 0 - - - 0x01493D 05:892D: 30        .byte $30   ; 0A
- D 0 - - - 0x01493E 05:892E: 3C        .byte $3C   ; 0B
- - - - - - 0x01493F 05:892F: 48        .byte $48   ; 0C
- - - - - - 0x014940 05:8930: 54        .byte $54   ; 0D
- - - - - - 0x014941 05:8931: 60        .byte $60   ; 0E
- - - - - - 0x014942 05:8932: 6C        .byte $6C   ; 0F



tbl_8933:
- - - - - - 0x014943 05:8933: 00        .byte $00   ; 00
- D 0 - - - 0x014944 05:8934: 01        .byte $01   ; 01
- D 0 - - - 0x014945 05:8935: 02        .byte $02   ; 02
- D 0 - - - 0x014946 05:8936: 03        .byte $03   ; 03
- D 0 - - - 0x014947 05:8937: 04        .byte $04   ; 04
- D 0 - - - 0x014948 05:8938: 05        .byte $05   ; 05
- - - - - - 0x014949 05:8939: 06        .byte $06   ; 06
- D 0 - - - 0x01494A 05:893A: 07        .byte $07   ; 07
- D 0 - - - 0x01494B 05:893B: 08        .byte $08   ; 08
- D 0 - - - 0x01494C 05:893C: 09        .byte $09   ; 09
- D 0 - - - 0x01494D 05:893D: 0A        .byte $0A   ; 0A
- - - - - - 0x01494E 05:893E: 0B        .byte $0B   ; 0B
- D 0 - - - 0x01494F 05:893F: 0C        .byte $0C   ; 0C
- D 0 - - - 0x014950 05:8940: 0E        .byte $0E   ; 0D
- D 0 - - - 0x014951 05:8941: 0F        .byte $0F   ; 0E
- D 0 - - - 0x014952 05:8942: 10        .byte $10   ; 0F
- D 0 - - - 0x014953 05:8943: 12        .byte $12   ; 10
- D 0 - - - 0x014954 05:8944: 13        .byte $13   ; 11
- D 0 - - - 0x014955 05:8945: 14        .byte $14   ; 12
- - - - - - 0x014956 05:8946: 16        .byte $16   ; 13
- D 0 - - - 0x014957 05:8947: 18        .byte $18   ; 14
- - - - - - 0x014958 05:8948: 1B        .byte $1B   ; 15
- D 0 - - - 0x014959 05:8949: 1E        .byte $1E   ; 16
- - - - - - 0x01495A 05:894A: 23        .byte $23   ; 17
- D 0 - - - 0x01495B 05:894B: 28        .byte $28   ; 18
- D 0 - - - 0x01495C 05:894C: 30        .byte $30   ; 19
- - - - - - 0x01495D 05:894D: 3C        .byte $3C   ; 1A
- D 0 - - - 0x01495E 05:894E: 50        .byte $50   ; 1B
- D 0 - - - 0x01495F 05:894F: 7E        .byte $7E   ; 1C
- D 0 - - - 0x014960 05:8950: 7F        .byte $7F   ; 1D
- D 0 - - - 0x014961 05:8951: FE        .byte $FE   ; 1E
- D 0 - - - 0x014962 05:8952: FF        .byte $FF   ; 1F



tbl_8953:
- D 0 - - - 0x014963 05:8953: 00        .byte $00   ; 00
- D 0 - - - 0x014964 05:8954: 07        .byte $07   ; 01
- D 0 - - - 0x014965 05:8955: 0E        .byte $0E   ; 02
- D 0 - - - 0x014966 05:8956: 15        .byte $15   ; 03
- D 0 - - - 0x014967 05:8957: 1C        .byte $1C   ; 04
- D 0 - - - 0x014968 05:8958: 23        .byte $23   ; 05
- D 0 - - - 0x014969 05:8959: 2A        .byte $2A   ; 06
- D 0 - - - 0x01496A 05:895A: 31        .byte $31   ; 07



tbl_895B:
- - - - - - 0x01496B 05:895B: 5C        .byte $5C, $37   ; 01
- - - - - - 0x01496D 05:895D: 9C        .byte $9C, $36   ; 02
- - - - - - 0x01496F 05:895F: E7        .byte $E7, $35   ; 03
- - - - - - 0x014971 05:8961: 3C        .byte $3C, $35   ; 04
- - - - - - 0x014973 05:8963: 9B        .byte $9B, $34   ; 05
- - - - - - 0x014975 05:8965: 02        .byte $02, $34   ; 06
- - - - - - 0x014977 05:8967: 72        .byte $72, $33   ; 07
- - - - - - 0x014979 05:8969: EA        .byte $EA, $32   ; 08
- - - - - - 0x01497B 05:896B: 6A        .byte $6A, $32   ; 09
- D 0 - - - 0x01497D 05:896D: F1        .byte $F1, $31   ; 0A
- - - - - - 0x01497F 05:896F: 80        .byte $80, $31   ; 0B
- - - - - - 0x014981 05:8971: 14        .byte $14, $31   ; 0C
- - - - - - 0x014983 05:8973: 5C        .byte $5C, $30   ; 0D
- - - - - - 0x014985 05:8975: 9C        .byte $9C, $2F   ; 0E
- - - - - - 0x014987 05:8977: E7        .byte $E7, $2E   ; 0F
- - - - - - 0x014989 05:8979: 3C        .byte $3C, $2E   ; 10
- - - - - - 0x01498B 05:897B: 9B        .byte $9B, $2D   ; 11
- - - - - - 0x01498D 05:897D: 02        .byte $02, $2D   ; 12
- - - - - - 0x01498F 05:897F: 72        .byte $72, $2C   ; 13
- - - - - - 0x014991 05:8981: EA        .byte $EA, $2B   ; 14
- - - - - - 0x014993 05:8983: 6A        .byte $6A, $2B   ; 15
- - - - - - 0x014995 05:8985: F1        .byte $F1, $2A   ; 16
- - - - - - 0x014997 05:8987: 80        .byte $80, $2A   ; 17
- - - - - - 0x014999 05:8989: 14        .byte $14, $2A   ; 18
- - - - - - 0x01499B 05:898B: 5C        .byte $5C, $29   ; 19
- - - - - - 0x01499D 05:898D: 9C        .byte $9C, $28   ; 1A
- - - - - - 0x01499F 05:898F: E7        .byte $E7, $27   ; 1B
- D 0 - - - 0x0149A1 05:8991: 3C        .byte $3C, $27   ; 1C
- D 0 - - - 0x0149A3 05:8993: 9B        .byte $9B, $26   ; 1D
- D 0 - - - 0x0149A5 05:8995: 02        .byte $02, $26   ; 1E
- D 0 - - - 0x0149A7 05:8997: 72        .byte $72, $25   ; 1F
- D 0 - - - 0x0149A9 05:8999: EA        .byte $EA, $24   ; 20
- D 0 - - - 0x0149AB 05:899B: 6A        .byte $6A, $24   ; 21
- D 0 - - - 0x0149AD 05:899D: F1        .byte $F1, $23   ; 22
- D 0 - - - 0x0149AF 05:899F: 80        .byte $80, $23   ; 23
- D 0 - - - 0x0149B1 05:89A1: 14        .byte $14, $23   ; 24
- D 0 - - - 0x0149B3 05:89A3: 5C        .byte $5C, $22   ; 25
- D 0 - - - 0x0149B5 05:89A5: 9C        .byte $9C, $21   ; 26
- D 0 - - - 0x0149B7 05:89A7: E7        .byte $E7, $20   ; 27
- D 0 - - - 0x0149B9 05:89A9: 3C        .byte $3C, $20   ; 28
- D 0 - - - 0x0149BB 05:89AB: 9B        .byte $9B, $1F   ; 29
- D 0 - - - 0x0149BD 05:89AD: 02        .byte $02, $1F   ; 2A
- D 0 - - - 0x0149BF 05:89AF: 72        .byte $72, $1E   ; 2B
- D 0 - - - 0x0149C1 05:89B1: EA        .byte $EA, $1D   ; 2C
- D 0 - - - 0x0149C3 05:89B3: 6A        .byte $6A, $1D   ; 2D
- D 0 - - - 0x0149C5 05:89B5: F1        .byte $F1, $1C   ; 2E
- D 0 - - - 0x0149C7 05:89B7: 80        .byte $80, $1C   ; 2F
- D 0 - - - 0x0149C9 05:89B9: 14        .byte $14, $1C   ; 30
- D 0 - - - 0x0149CB 05:89BB: 5C        .byte $5C, $1B   ; 31
- D 0 - - - 0x0149CD 05:89BD: 9C        .byte $9C, $1A   ; 32
- D 0 - - - 0x0149CF 05:89BF: E7        .byte $E7, $19   ; 33
- D 0 - - - 0x0149D1 05:89C1: 3C        .byte $3C, $19   ; 34
- D 0 - - - 0x0149D3 05:89C3: 9B        .byte $9B, $18   ; 35
- D 0 - - - 0x0149D5 05:89C5: 02        .byte $02, $18   ; 36
- D 0 - - - 0x0149D7 05:89C7: 72        .byte $72, $17   ; 37
- D 0 - - - 0x0149D9 05:89C9: EA        .byte $EA, $16   ; 38
- D 0 - - - 0x0149DB 05:89CB: 6A        .byte $6A, $16   ; 39
- D 0 - - - 0x0149DD 05:89CD: F1        .byte $F1, $15   ; 3A
- D 0 - - - 0x0149DF 05:89CF: 80        .byte $80, $15   ; 3B
- D 0 - - - 0x0149E1 05:89D1: 14        .byte $14, $15   ; 3C
- D 0 - - - 0x0149E3 05:89D3: 5C        .byte $5C, $14   ; 3D
- D 0 - - - 0x0149E5 05:89D5: 9C        .byte $9C, $13   ; 3E
- D 0 - - - 0x0149E7 05:89D7: E7        .byte $E7, $12   ; 3F
- D 0 - - - 0x0149E9 05:89D9: 3C        .byte $3C, $12   ; 40
- D 0 - - - 0x0149EB 05:89DB: 9B        .byte $9B, $11   ; 41
- D 0 - - - 0x0149ED 05:89DD: 02        .byte $02, $11   ; 42
- D 0 - - - 0x0149EF 05:89DF: 72        .byte $72, $10   ; 43
- D 0 - - - 0x0149F1 05:89E1: EA        .byte $EA, $0F   ; 44
- D 0 - - - 0x0149F3 05:89E3: 6A        .byte $6A, $0F   ; 45
- D 0 - - - 0x0149F5 05:89E5: F1        .byte $F1, $0E   ; 46
- D 0 - - - 0x0149F7 05:89E7: 80        .byte $80, $0E   ; 47
- D 0 - - - 0x0149F9 05:89E9: 14        .byte $14, $0E   ; 48
- D 0 - - - 0x0149FB 05:89EB: 5C        .byte $5C, $0D   ; 49
- D 0 - - - 0x0149FD 05:89ED: 9C        .byte $9C, $0C   ; 4A
- D 0 - - - 0x0149FF 05:89EF: E7        .byte $E7, $0B   ; 4B
- D 0 - - - 0x014A01 05:89F1: 3C        .byte $3C, $0B   ; 4C
- D 0 - - - 0x014A03 05:89F3: 9B        .byte $9B, $0A   ; 4D
- D 0 - - - 0x014A05 05:89F5: 02        .byte $02, $0A   ; 4E
- - - - - - 0x014A07 05:89F7: 72        .byte $72, $09   ; 4F
- - - - - - 0x014A09 05:89F9: EA        .byte $EA, $08   ; 50
- D 0 - - - 0x014A0B 05:89FB: 6A        .byte $6A, $08   ; 51
- - - - - - 0x014A0D 05:89FD: F1        .byte $F1, $07   ; 52
- - - - - - 0x014A0F 05:89FF: 80        .byte $80, $07   ; 53
- D 0 - - - 0x014A11 05:8A01: 14        .byte $14, $07   ; 54
- - - - - - 0x014A13 05:8A03: 5C        .byte $5C, $06   ; 55
- - - - - - 0x014A15 05:8A05: 9C        .byte $9C, $05   ; 56
- - - - - - 0x014A17 05:8A07: E7        .byte $E7, $04   ; 57
- - - - - - 0x014A19 05:8A09: 3C        .byte $3C, $04   ; 58
- - - - - - 0x014A1B 05:8A0B: 9B        .byte $9B, $03   ; 59
- - - - - - 0x014A1D 05:8A0D: 02        .byte $02, $03   ; 5A
- - - - - - 0x014A1F 05:8A0F: 72        .byte $72, $02   ; 5B
- - - - - - 0x014A21 05:8A11: EA        .byte $EA, $01   ; 5C
- - - - - - 0x014A23 05:8A13: 6A        .byte $6A, $01   ; 5D
- - - - - - 0x014A25 05:8A15: F1        .byte $F1, $00   ; 5E
- - - - - - 0x014A27 05:8A17: 80        .byte $80, $00   ; 5F
- - - - - - 0x014A29 05:8A19: 14        .byte $14, $00   ; 60
; bzk don't know how long this table actually is,
; but there is an odd number of bytes left,
; so some of them are probably garbage
- - - - - - 0x014A2B 05:8A1B: 00        .byte $00   ; 
- - - - - - 0x014A2C 05:8A1C: 00        .byte $00   ; 
- - - - - - 0x014A2D 05:8A1D: 00        .byte $00   ; 
- - - - - - 0x014A2E 05:8A1E: 00        .byte $00   ; 
- - - - - - 0x014A2F 05:8A1F: 00        .byte $00   ; 
- - - - - - 0x014A30 05:8A20: 00        .byte $00   ; 
- - - - - - 0x014A31 05:8A21: 00        .byte $00   ; 
- - - - - - 0x014A32 05:8A22: 00        .byte $00   ; 
- - - - - - 0x014A33 05:8A23: 00        .byte $00   ; 
- - - - - - 0x014A34 05:8A24: 00        .byte $00   ; 
- - - - - - 0x014A35 05:8A25: 00        .byte $00   ; 
- - - - - - 0x014A36 05:8A26: 00        .byte $00   ; 
- - - - - - 0x014A37 05:8A27: 00        .byte $00   ; 
- - - - - - 0x014A38 05:8A28: 00        .byte $00   ; 
- - - - - - 0x014A39 05:8A29: 00        .byte $00   ; 
- - - - - - 0x014A3A 05:8A2A: 00        .byte $00   ; 
- - - - - - 0x014A3B 05:8A2B: 00        .byte $00   ; 
- - - - - - 0x014A3C 05:8A2C: 00        .byte $00   ; 
- - - - - - 0x014A3D 05:8A2D: 00        .byte $00   ; 
- - - - - - 0x014A3E 05:8A2E: 00        .byte $00   ; 
- - - - - - 0x014A3F 05:8A2F: 00        .byte $00   ; 
- - - - - - 0x014A40 05:8A30: 00        .byte $00   ; 
- - - - - - 0x014A41 05:8A31: 00        .byte $00   ; 
- - - - - - 0x014A42 05:8A32: 00        .byte $00   ; 
- - - - - - 0x014A43 05:8A33: 00        .byte $00   ; 
- - - - - - 0x014A44 05:8A34: 00        .byte $00   ; 
- - - - - - 0x014A45 05:8A35: 00        .byte $00   ; 
- - - - - - 0x014A46 05:8A36: 00        .byte $00   ; 
- - - - - - 0x014A47 05:8A37: 00        .byte $00   ; 
- - - - - - 0x014A48 05:8A38: 00        .byte $00   ; 
- - - - - - 0x014A49 05:8A39: 00        .byte $00   ; 
- - - - - - 0x014A4A 05:8A3A: 00        .byte $00   ; 
- - - - - - 0x014A4B 05:8A3B: 00        .byte $00   ; 
- - - - - - 0x014A4C 05:8A3C: 00        .byte $00   ; 
- - - - - - 0x014A4D 05:8A3D: 00        .byte $00   ; 
- - - - - - 0x014A4E 05:8A3E: 00        .byte $00   ; 
- - - - - - 0x014A4F 05:8A3F: 00        .byte $00   ; 



tbl_8A40_overflow_music_id:
- D 0 - - - 0x014A50 05:8A40: 24        .byte $24   ; 



tbl_8A41:
- D 0 - - - 0x014A51 05:8A41: 8A 8B     .dbyt tbl_8A8B



tbl_8A43_music_pointers:
- D 0 - - - 0x014A53 05:8A43: 8C 33     .dbyt _music_8C33_00_title_screen
- D 0 - - - 0x014A55 05:8A45: 92 F6     .dbyt _music_92F6_01_cutscene_00
- D 0 - - - 0x014A57 05:8A47: 96 27     .dbyt _music_9627_02_stage_00
- D 0 - - - 0x014A59 05:8A49: 98 67     .dbyt _music_9867_03_stage_01
- D 0 - - - 0x014A5B 05:8A4B: 9A E3     .dbyt _music_9AE3_04_stage_02
- D 0 - - - 0x014A5D 05:8A4D: 9C F6     .dbyt _music_9CF6_05_stage_03
- D 0 - - - 0x014A5F 05:8A4F: 9E AD     .dbyt _music_9EAD_06_stage_04
- D 0 - - - 0x014A61 05:8A51: A1 24     .dbyt _music_A124_07_stage_coplete
- D 0 - - - 0x014A63 05:8A53: A1 7C     .dbyt _music_A17C_08_boss_fight
- D 0 - - - 0x014A65 05:8A55: A3 08     .dbyt _music_A308_09_stage_05_final_boss_fight
- D 0 - - - 0x014A67 05:8A57: A5 01     .dbyt _music_A501_0A_cutscene_01
- D 0 - - - 0x014A69 05:8A59: A5 F3     .dbyt _music_A5F3_0B_game_over
- D 0 - - - 0x014A6B 05:8A5B: A6 43     .dbyt _music_A643_0C_stage_preview
- - - - - - 0x014A6D 05:8A5D: 00 00     .dbyt $0000     ; 0D
- - - - - - 0x014A6F 05:8A5F: 00 00     .dbyt $0000     ; 0E
- - - - - - 0x014A71 05:8A61: 00 00     .dbyt $0000     ; 0F
- - - - - - 0x014A73 05:8A63: 00 00     .dbyt $0000     ; 10
- D 0 - - - 0x014A75 05:8A65: A6 AC     .dbyt _sfx_A6AC_11
- D 0 - - - 0x014A77 05:8A67: A6 BE     .dbyt _sfx_A6BE_12_shoot
- D 0 - - - 0x014A79 05:8A69: A6 CA     .dbyt _sfx_A6CA_13_bubble_hit
- D 0 - - - 0x014A7B 05:8A6B: A6 D6     .dbyt _sfx_A6D6_14_bubble_burst
- D 0 - - - 0x014A7D 05:8A6D: A6 EA     .dbyt _sfx_A6EA_15
- D 0 - - - 0x014A7F 05:8A6F: A6 FE     .dbyt _sfx_A6FE_16
- D 0 - - - 0x014A81 05:8A71: A7 0A     .dbyt _sfx_A70A_17
- D 0 - - - 0x014A83 05:8A73: A7 1C     .dbyt _sfx_A71C_18
- D 0 - - - 0x014A85 05:8A75: A7 30     .dbyt _sfx_A730_19_item_pickup
- D 0 - - - 0x014A87 05:8A77: A7 5B     .dbyt _sfx_A75B_1A
- D 0 - - - 0x014A89 05:8A79: A7 66     .dbyt _sfx_A766_1B
- D 0 - - - 0x014A8B 05:8A7B: A7 8F     .dbyt _sfx_A78F_1C_pause_menu
- D 0 - - - 0x014A8D 05:8A7D: A7 BB     .dbyt _sfx_A7BB_1D_get_hit
- D 0 - - - 0x014A8F 05:8A7F: A7 D3     .dbyt _sfx_A7D3_1E_option_select
- D 0 - - - 0x014A91 05:8A81: A7 DE     .dbyt _sfx_A7DE_1F
- - - - - - 0x014A93 05:8A83: 00 00     .dbyt $0000
- D 0 - - - 0x014A95 05:8A85: A8 A4     .dbyt _sfx_A8A4_21_sand
- D 0 - - - 0x014A97 05:8A87: A8 AF     .dbyt _sfx_A8AF_22
- D 0 - - - 0x014A99 05:8A89: A8 C0     .dbyt _sfx_A8C0_23



; see 0x0144B7
con_00                                  = $00 ; 
con_01                                  = $01 ; 
con_02                                  = $02 ; 
con_03                                  = $03 ; 
con_04                                  = $04 ; 
con_05                                  = $05 ; 
con_06                                  = $06 ; 
con_07                                  = $07 ; 
con_08                                  = $08 ; 
con_09                                  = $09 ; 
con_0A                                  = $0A ; 
; con_0B                                = $0B ; 
con_0C                                  = $0C ; 
; con_0D                                = $0D ; 
con_0E                                  = $0E ; loop?
con_0F                                  = $0F ; loop?
con_10                                  = $10 ; loop?
; con_11                                = $11 ; 
con_12                                  = $12 ; jmp/jsr? in pair with 0E?
con_13                                  = $13 ; jmp/jsr? in pair with 0F?
; con_14                                = $14 ; 
; con_15                                = $15 ; 
con_jump                                = $16 ; 
con_stop                                = $17 ; 
con_18                                  = $18 ; 



tbl_8A8B:
; 01
- D 0 - I - 0x014A9B 05:8A8B: 1F        .byte $1F   ; 
- D 0 - I - 0x014A9C 05:8A8C: 11        .byte $11   ; 
- D 0 - I - 0x014A9D 05:8A8D: A0        .byte $A0   ; 
- D 0 - I - 0x014A9E 05:8A8E: 04        .byte $04   ; 
- D 0 - I - 0x014A9F 05:8A8F: 00        .byte $00   ; 
- D 0 - I - 0x014AA0 05:8A90: 00        .byte $00   ; 
- D 0 - I - 0x014AA1 05:8A91: 00        .byte $00   ; 
- - - - - - 0x014AA2 05:8A92: 00        .byte $00   ; 
; 02
- D 0 - I - 0x014AA3 05:8A93: 1F        .byte $1F   ; 
- D 0 - I - 0x014AA4 05:8A94: 1C        .byte $1C   ; 
- D 0 - I - 0x014AA5 05:8A95: B0        .byte $B0   ; 
- D 0 - I - 0x014AA6 05:8A96: 04        .byte $04   ; 
- D 0 - I - 0x014AA7 05:8A97: 00        .byte $00   ; 
- D 0 - I - 0x014AA8 05:8A98: 00        .byte $00   ; 
- D 0 - I - 0x014AA9 05:8A99: 00        .byte $00   ; 
- - - - - - 0x014AAA 05:8A9A: 00        .byte $00   ; 
; 03
- D 0 - I - 0x014AAB 05:8A9B: 1F        .byte $1F   ; 
- D 0 - I - 0x014AAC 05:8A9C: 0E        .byte $0E   ; 
- D 0 - I - 0x014AAD 05:8A9D: C0        .byte $C0   ; 
- - - - - - 0x014AAE 05:8A9E: 05        .byte $05   ; 
- D 0 - I - 0x014AAF 05:8A9F: CE        .byte $CE   ; 
- D 0 - I - 0x014AB0 05:8AA0: 07        .byte $07   ; 
- D 0 - I - 0x014AB1 05:8AA1: 00        .byte $00   ; 
- D 0 - I - 0x014AB2 05:8AA2: 00        .byte $00   ; 
; 04
- D 0 - I - 0x014AB3 05:8AA3: 1F        .byte $1F   ; 
- D 0 - I - 0x014AB4 05:8AA4: 12        .byte $12   ; 
- D 0 - I - 0x014AB5 05:8AA5: 90        .byte $90   ; 
- D 0 - I - 0x014AB6 05:8AA6: 02        .byte $02   ; 
- D 0 - I - 0x014AB7 05:8AA7: CE        .byte $CE   ; 
- D 0 - I - 0x014AB8 05:8AA8: 00        .byte $00   ; 
- D 0 - I - 0x014AB9 05:8AA9: 7D        .byte $7D   ; 
- - - - - - 0x014ABA 05:8AAA: 00        .byte $00   ; 
; 05
- D 0 - I - 0x014ABB 05:8AAB: 1B        .byte $1B   ; 
- D 0 - I - 0x014ABC 05:8AAC: 0D        .byte $0D   ; 
- D 0 - I - 0x014ABD 05:8AAD: B0        .byte $B0   ; 
- D 0 - I - 0x014ABE 05:8AAE: 05        .byte $05   ; 
- D 0 - I - 0x014ABF 05:8AAF: 00        .byte $00   ; 
- D 0 - I - 0x014AC0 05:8AB0: 00        .byte $00   ; 
- D 0 - I - 0x014AC1 05:8AB1: 00        .byte $00   ; 
- - - - - - 0x014AC2 05:8AB2: 00        .byte $00   ; 
; 06
- D 0 - I - 0x014AC3 05:8AB3: 1F        .byte $1F   ; 
- D 0 - I - 0x014AC4 05:8AB4: 16        .byte $16   ; 
- D 0 - I - 0x014AC5 05:8AB5: B0        .byte $B0   ; 
- D 0 - I - 0x014AC6 05:8AB6: 02        .byte $02   ; 
- D 0 - I - 0x014AC7 05:8AB7: 00        .byte $00   ; 
- D 0 - I - 0x014AC8 05:8AB8: 00        .byte $00   ; 
- D 0 - I - 0x014AC9 05:8AB9: 00        .byte $00   ; 
- D 0 - I - 0x014ACA 05:8ABA: 00        .byte $00   ; 
; 07
- D 0 - I - 0x014ACB 05:8ABB: 1F        .byte $1F   ; 
- D 0 - I - 0x014ACC 05:8ABC: 1B        .byte $1B   ; 
- D 0 - I - 0x014ACD 05:8ABD: 80        .byte $80   ; 
- D 0 - I - 0x014ACE 05:8ABE: 0F        .byte $0F   ; 
- D 0 - I - 0x014ACF 05:8ABF: 00        .byte $00   ; 
- D 0 - I - 0x014AD0 05:8AC0: 00        .byte $00   ; 
- D 0 - I - 0x014AD1 05:8AC1: 00        .byte $00   ; 
- - - - - - 0x014AD2 05:8AC2: 00        .byte $00   ; 
; 08
- - - - - - 0x014AD3 05:8AC3: 1F        .byte $1F   ; 
- - - - - - 0x014AD4 05:8AC4: 1C        .byte $1C   ; 
- - - - - - 0x014AD5 05:8AC5: 90        .byte $90   ; 
- - - - - - 0x014AD6 05:8AC6: 03        .byte $03   ; 
- - - - - - 0x014AD7 05:8AC7: 00        .byte $00   ; 
- - - - - - 0x014AD8 05:8AC8: 00        .byte $00   ; 
- - - - - - 0x014AD9 05:8AC9: 00        .byte $00   ; 
- - - - - - 0x014ADA 05:8ACA: 00        .byte $00   ; 
; 09
- - - - - - 0x014ADB 05:8ACB: 1F        .byte $1F   ; 
- - - - - - 0x014ADC 05:8ACC: 1E        .byte $1E   ; 
- - - - - - 0x014ADD 05:8ACD: C0        .byte $C0   ; 
- - - - - - 0x014ADE 05:8ACE: 01        .byte $01   ; 
- - - - - - 0x014ADF 05:8ACF: D0        .byte $D0   ; 
- - - - - - 0x014AE0 05:8AD0: 00        .byte $00   ; 
- - - - - - 0x014AE1 05:8AD1: 57        .byte $57   ; 
- - - - - - 0x014AE2 05:8AD2: 00        .byte $00   ; 
; 0A
- D 0 - I - 0x014AE3 05:8AD3: 1F        .byte $1F   ; 
- D 0 - I - 0x014AE4 05:8AD4: 1E        .byte $1E   ; 
- D 0 - I - 0x014AE5 05:8AD5: B0        .byte $B0   ; 
- D 0 - I - 0x014AE6 05:8AD6: 02        .byte $02   ; 
- D 0 - I - 0x014AE7 05:8AD7: DA        .byte $DA   ; 
- D 0 - I - 0x014AE8 05:8AD8: 04        .byte $04   ; 
- D 0 - I - 0x014AE9 05:8AD9: 23        .byte $23   ; 
- - - - - - 0x014AEA 05:8ADA: 00        .byte $00   ; 
; 0B
- D 0 - I - 0x014AEB 05:8ADB: 1F        .byte $1F   ; 
- D 0 - I - 0x014AEC 05:8ADC: 1E        .byte $1E   ; 
- D 0 - I - 0x014AED 05:8ADD: A0        .byte $A0   ; 
- D 0 - I - 0x014AEE 05:8ADE: 0C        .byte $0C   ; 
- D 0 - I - 0x014AEF 05:8ADF: 00        .byte $00   ; 
- D 0 - I - 0x014AF0 05:8AE0: 00        .byte $00   ; 
- D 0 - I - 0x014AF1 05:8AE1: 00        .byte $00   ; 
- D 0 - I - 0x014AF2 05:8AE2: 00        .byte $00   ; 
; 0C
- D 0 - I - 0x014AF3 05:8AE3: 1F        .byte $1F   ; 
- D 0 - I - 0x014AF4 05:8AE4: 1F        .byte $1F   ; 
- D 0 - I - 0x014AF5 05:8AE5: A0        .byte $A0   ; 
- D 0 - I - 0x014AF6 05:8AE6: 01        .byte $01   ; 
- D 0 - I - 0x014AF7 05:8AE7: E4        .byte $E4   ; 
- D 0 - I - 0x014AF8 05:8AE8: 00        .byte $00   ; 
- D 0 - I - 0x014AF9 05:8AE9: 39        .byte $39   ; 
- D 0 - I - 0x014AFA 05:8AEA: 00        .byte $00   ; 
; 0D
- D 0 - I - 0x014AFB 05:8AEB: 1F        .byte $1F   ; 
- D 0 - I - 0x014AFC 05:8AEC: 1E        .byte $1E   ; 
- D 0 - I - 0x014AFD 05:8AED: B0        .byte $B0   ; 
- D 0 - I - 0x014AFE 05:8AEE: 01        .byte $01   ; 
- D 0 - I - 0x014AFF 05:8AEF: 00        .byte $00   ; 
- D 0 - I - 0x014B00 05:8AF0: 00        .byte $00   ; 
- D 0 - I - 0x014B01 05:8AF1: 00        .byte $00   ; 
- - - - - - 0x014B02 05:8AF2: 00        .byte $00   ; 
; 0E
- D 0 - I - 0x014B03 05:8AF3: 1F        .byte $1F   ; 
- D 0 - I - 0x014B04 05:8AF4: 1D        .byte $1D   ; 
- D 0 - I - 0x014B05 05:8AF5: C0        .byte $C0   ; 
- D 0 - I - 0x014B06 05:8AF6: 01        .byte $01   ; 
- D 0 - I - 0x014B07 05:8AF7: CB        .byte $CB   ; 
- D 0 - I - 0x014B08 05:8AF8: 00        .byte $00   ; 
- D 0 - I - 0x014B09 05:8AF9: 37        .byte $37   ; 
- - - - - - 0x014B0A 05:8AFA: 00        .byte $00   ; 
; 0F
- - - - - - 0x014B0B 05:8AFB: 1F        .byte $1F   ; 
- - - - - - 0x014B0C 05:8AFC: 1F        .byte $1F   ; 
- - - - - - 0x014B0D 05:8AFD: F0        .byte $F0   ; 
- - - - - - 0x014B0E 05:8AFE: 1F        .byte $1F   ; 
- D 0 - I - 0x014B0F 05:8AFF: D0        .byte $D0   ; 
- D 0 - I - 0x014B10 05:8B00: 05        .byte $05   ; 
- - - - - - 0x014B11 05:8B01: 00        .byte $00   ; 
- - - - - - 0x014B12 05:8B02: 00        .byte $00   ; 
; 10
- D 0 - I - 0x014B13 05:8B03: 19        .byte $19   ; 
- D 0 - I - 0x014B14 05:8B04: 0A        .byte $0A   ; 
- D 0 - I - 0x014B15 05:8B05: A0        .byte $A0   ; 
- D 0 - I - 0x014B16 05:8B06: 02        .byte $02   ; 
- D 0 - I - 0x014B17 05:8B07: 00        .byte $00   ; 
- D 0 - I - 0x014B18 05:8B08: 00        .byte $00   ; 
- D 0 - I - 0x014B19 05:8B09: 00        .byte $00   ; 
- - - - - - 0x014B1A 05:8B0A: 00        .byte $00   ; 
; 11
- D 0 - I - 0x014B1B 05:8B0B: 1F        .byte $1F   ; 
- D 0 - I - 0x014B1C 05:8B0C: 1D        .byte $1D   ; 
- D 0 - I - 0x014B1D 05:8B0D: D0        .byte $D0   ; 
- D 0 - I - 0x014B1E 05:8B0E: 07        .byte $07   ; 
- D 0 - I - 0x014B1F 05:8B0F: E0        .byte $E0   ; 
- D 0 - I - 0x014B20 05:8B10: 00        .byte $00   ; 
- D 0 - I - 0x014B21 05:8B11: 2A        .byte $2A   ; 
- - - - - - 0x014B22 05:8B12: 00        .byte $00   ; 
; 12
- - - - - - 0x014B23 05:8B13: 1F        .byte $1F   ; 
- - - - - - 0x014B24 05:8B14: 1D        .byte $1D   ; 
- - - - - - 0x014B25 05:8B15: 90        .byte $90   ; 
- - - - - - 0x014B26 05:8B16: 07        .byte $07   ; 
- - - - - - 0x014B27 05:8B17: E4        .byte $E4   ; 
- - - - - - 0x014B28 05:8B18: 00        .byte $00   ; 
- - - - - - 0x014B29 05:8B19: 32        .byte $32   ; 
- - - - - - 0x014B2A 05:8B1A: 00        .byte $00   ; 
; 13
- D 0 - I - 0x014B2B 05:8B1B: 1F        .byte $1F   ; 
- D 0 - I - 0x014B2C 05:8B1C: 1E        .byte $1E   ; 
- D 0 - I - 0x014B2D 05:8B1D: B0        .byte $B0   ; 
- D 0 - I - 0x014B2E 05:8B1E: 03        .byte $03   ; 
- D 0 - I - 0x014B2F 05:8B1F: 00        .byte $00   ; 
- D 0 - I - 0x014B30 05:8B20: 00        .byte $00   ; 
- D 0 - I - 0x014B31 05:8B21: 00        .byte $00   ; 
- - - - - - 0x014B32 05:8B22: 00        .byte $00   ; 
; 14
- - - - - - 0x014B33 05:8B23: 1F        .byte $1F   ; 
- - - - - - 0x014B34 05:8B24: 1D        .byte $1D   ; 
- - - - - - 0x014B35 05:8B25: D0        .byte $D0   ; 
- - - - - - 0x014B36 05:8B26: 06        .byte $06   ; 
- - - - - - 0x014B37 05:8B27: E4        .byte $E4   ; 
- - - - - - 0x014B38 05:8B28: 00        .byte $00   ; 
- - - - - - 0x014B39 05:8B29: 32        .byte $32   ; 
- - - - - - 0x014B3A 05:8B2A: 00        .byte $00   ; 
; 15
- - - - - - 0x014B3B 05:8B2B: 1F        .byte $1F   ; 
- - - - - - 0x014B3C 05:8B2C: 16        .byte $16   ; 
- - - - - - 0x014B3D 05:8B2D: 60        .byte $60   ; 
- - - - - - 0x014B3E 05:8B2E: 02        .byte $02   ; 
- - - - - - 0x014B3F 05:8B2F: DC        .byte $DC   ; 
- - - - - - 0x014B40 05:8B30: 00        .byte $00   ; 
- - - - - - 0x014B41 05:8B31: 38        .byte $38   ; 
- - - - - - 0x014B42 05:8B32: 00        .byte $00   ; 
; 16
- D 0 - I - 0x014B43 05:8B33: 1F        .byte $1F   ; 
- D 0 - I - 0x014B44 05:8B34: 16        .byte $16   ; 
- D 0 - I - 0x014B45 05:8B35: 20        .byte $20   ; 
- D 0 - I - 0x014B46 05:8B36: 01        .byte $01   ; 
- D 0 - I - 0x014B47 05:8B37: DA        .byte $DA   ; 
- D 0 - I - 0x014B48 05:8B38: 00        .byte $00   ; 
- D 0 - I - 0x014B49 05:8B39: 3C        .byte $3C   ; 
- - - - - - 0x014B4A 05:8B3A: 00        .byte $00   ; 
; 17
- D 0 - I - 0x014B4B 05:8B3B: 1F        .byte $1F   ; 
- D 0 - I - 0x014B4C 05:8B3C: 1C        .byte $1C   ; 
- D 0 - I - 0x014B4D 05:8B3D: C0        .byte $C0   ; 
- D 0 - I - 0x014B4E 05:8B3E: 14        .byte $14   ; 
- D 0 - I - 0x014B4F 05:8B3F: 00        .byte $00   ; 
- D 0 - I - 0x014B50 05:8B40: 00        .byte $00   ; 
- D 0 - I - 0x014B51 05:8B41: 00        .byte $00   ; 
- D 0 - I - 0x014B52 05:8B42: 00        .byte $00   ; 
; 18
- D 0 - I - 0x014B53 05:8B43: 1F        .byte $1F   ; 
- D 0 - I - 0x014B54 05:8B44: 1B        .byte $1B   ; 
- D 0 - I - 0x014B55 05:8B45: B0        .byte $B0   ; 
- D 0 - I - 0x014B56 05:8B46: 03        .byte $03   ; 
- D 0 - I - 0x014B57 05:8B47: C8        .byte $C8   ; 
- D 0 - I - 0x014B58 05:8B48: 00        .byte $00   ; 
- D 0 - I - 0x014B59 05:8B49: 6A        .byte $6A   ; 
- - - - - - 0x014B5A 05:8B4A: 00        .byte $00   ; 
; 19
- D 0 - I - 0x014B5B 05:8B4B: 1F        .byte $1F   ; 
- D 0 - I - 0x014B5C 05:8B4C: 1E        .byte $1E   ; 
- D 0 - I - 0x014B5D 05:8B4D: A0        .byte $A0   ; 
- D 0 - I - 0x014B5E 05:8B4E: 02        .byte $02   ; 
- D 0 - I - 0x014B5F 05:8B4F: DB        .byte $DB   ; 
- D 0 - I - 0x014B60 05:8B50: 02        .byte $02   ; 
- D 0 - I - 0x014B61 05:8B51: 00        .byte $00   ; 
- - - - - - 0x014B62 05:8B52: 00        .byte $00   ; 
; 1A
- - - - - - 0x014B63 05:8B53: 1B        .byte $1B   ; 
- - - - - - 0x014B64 05:8B54: 18        .byte $18   ; 
- - - - - - 0x014B65 05:8B55: 40        .byte $40   ; 
- - - - - - 0x014B66 05:8B56: 01        .byte $01   ; 
- - - - - - 0x014B67 05:8B57: 00        .byte $00   ; 
- - - - - - 0x014B68 05:8B58: 00        .byte $00   ; 
- - - - - - 0x014B69 05:8B59: 00        .byte $00   ; 
- - - - - - 0x014B6A 05:8B5A: 00        .byte $00   ; 
; 1B
- - - - - - 0x014B6B 05:8B5B: 1F        .byte $1F   ; 
- - - - - - 0x014B6C 05:8B5C: 1D        .byte $1D   ; 
- - - - - - 0x014B6D 05:8B5D: B0        .byte $B0   ; 
- - - - - - 0x014B6E 05:8B5E: 03        .byte $03   ; 
- - - - - - 0x014B6F 05:8B5F: 00        .byte $00   ; 
- - - - - - 0x014B70 05:8B60: 00        .byte $00   ; 
- - - - - - 0x014B71 05:8B61: 00        .byte $00   ; 
- - - - - - 0x014B72 05:8B62: 00        .byte $00   ; 
; 1C
- - - - - - 0x014B73 05:8B63: 00        .byte $00   ; 
- - - - - - 0x014B74 05:8B64: 00        .byte $00   ; 
- - - - - - 0x014B75 05:8B65: 00        .byte $00   ; 
- - - - - - 0x014B76 05:8B66: 00        .byte $00   ; 
- - - - - - 0x014B77 05:8B67: 00        .byte $00   ; 
- - - - - - 0x014B78 05:8B68: 00        .byte $00   ; 
- - - - - - 0x014B79 05:8B69: 00        .byte $00   ; 
- - - - - - 0x014B7A 05:8B6A: 00        .byte $00   ; 
; 1D
- - - - - - 0x014B7B 05:8B6B: 00        .byte $00   ; 
- - - - - - 0x014B7C 05:8B6C: 00        .byte $00   ; 
- - - - - - 0x014B7D 05:8B6D: 00        .byte $00   ; 
- - - - - - 0x014B7E 05:8B6E: 00        .byte $00   ; 
- - - - - - 0x014B7F 05:8B6F: 00        .byte $00   ; 
- - - - - - 0x014B80 05:8B70: 00        .byte $00   ; 
- - - - - - 0x014B81 05:8B71: 00        .byte $00   ; 
- - - - - - 0x014B82 05:8B72: 00        .byte $00   ; 
; 1E
- - - - - - 0x014B83 05:8B73: 00        .byte $00   ; 
- - - - - - 0x014B84 05:8B74: 00        .byte $00   ; 
- - - - - - 0x014B85 05:8B75: 00        .byte $00   ; 
- - - - - - 0x014B86 05:8B76: 00        .byte $00   ; 
- - - - - - 0x014B87 05:8B77: 00        .byte $00   ; 
- - - - - - 0x014B88 05:8B78: 00        .byte $00   ; 
- - - - - - 0x014B89 05:8B79: 00        .byte $00   ; 
- - - - - - 0x014B8A 05:8B7A: 00        .byte $00   ; 
; 1F
- D 0 - I - 0x014B8B 05:8B7B: 1F        .byte $1F   ; 
- D 0 - I - 0x014B8C 05:8B7C: 1F        .byte $1F   ; 
- D 0 - I - 0x014B8D 05:8B7D: F0        .byte $F0   ; 
- D 0 - I - 0x014B8E 05:8B7E: 1F        .byte $1F   ; 
- D 0 - I - 0x014B8F 05:8B7F: 00        .byte $00   ; 
- D 0 - I - 0x014B90 05:8B80: 00        .byte $00   ; 
- D 0 - I - 0x014B91 05:8B81: 00        .byte $00   ; 
- - - - - - 0x014B92 05:8B82: 80        .byte $80   ; 
; 20
- D 0 - I - 0x014B93 05:8B83: 1F        .byte $1F   ; 
- D 0 - I - 0x014B94 05:8B84: 1C        .byte $1C   ; 
- D 0 - I - 0x014B95 05:8B85: B0        .byte $B0   ; 
- D 0 - I - 0x014B96 05:8B86: 0E        .byte $0E   ; 
- D 0 - I - 0x014B97 05:8B87: 00        .byte $00   ; 
- D 0 - I - 0x014B98 05:8B88: 00        .byte $00   ; 
- D 0 - I - 0x014B99 05:8B89: 00        .byte $00   ; 
- D 0 - I - 0x014B9A 05:8B8A: 00        .byte $00   ; 
; 21
- D 0 - I - 0x014B9B 05:8B8B: 1F        .byte $1F   ; 
- D 0 - I - 0x014B9C 05:8B8C: 1F        .byte $1F   ; 
- D 0 - I - 0x014B9D 05:8B8D: F0        .byte $F0   ; 
- D 0 - I - 0x014B9E 05:8B8E: 1F        .byte $1F   ; 
- D 0 - I - 0x014B9F 05:8B8F: FF        .byte $FF   ; 
- D 0 - I - 0x014BA0 05:8B90: 50        .byte $50   ; 
- D 0 - I - 0x014BA1 05:8B91: 00        .byte $00   ; 
- - - - - - 0x014BA2 05:8B92: 00        .byte $00   ; 
; 22
- D 0 - I - 0x014BA3 05:8B93: 1F        .byte $1F   ; 
- D 0 - I - 0x014BA4 05:8B94: 1F        .byte $1F   ; 
- D 0 - I - 0x014BA5 05:8B95: F0        .byte $F0   ; 
- - - - - - 0x014BA6 05:8B96: 1F        .byte $1F   ; 
- D 0 - I - 0x014BA7 05:8B97: CD        .byte $CD   ; 
- D 0 - I - 0x014BA8 05:8B98: 7F        .byte $7F   ; 
- D 0 - I - 0x014BA9 05:8B99: 4E        .byte $4E   ; 
- - - - - - 0x014BAA 05:8B9A: 00        .byte $00   ; 
; 23
- - - - - - 0x014BAB 05:8B9B: 1F        .byte $1F   ; 
- - - - - - 0x014BAC 05:8B9C: 1F        .byte $1F   ; 
- - - - - - 0x014BAD 05:8B9D: C0        .byte $C0   ; 
- - - - - - 0x014BAE 05:8B9E: 15        .byte $15   ; 
- - - - - - 0x014BAF 05:8B9F: FF        .byte $FF   ; 
- - - - - - 0x014BB0 05:8BA0: 00        .byte $00   ; 
- - - - - - 0x014BB1 05:8BA1: 7F        .byte $7F   ; 
- - - - - - 0x014BB2 05:8BA2: 00        .byte $00   ; 
; 24
- D 0 - I - 0x014BB3 05:8BA3: 18        .byte $18   ; 
- D 0 - I - 0x014BB4 05:8BA4: 1F        .byte $1F   ; 
- D 0 - I - 0x014BB5 05:8BA5: F0        .byte $F0   ; 
- - - - - - 0x014BB6 05:8BA6: 1F        .byte $1F   ; 
- D 0 - I - 0x014BB7 05:8BA7: F8        .byte $F8   ; 
- D 0 - I - 0x014BB8 05:8BA8: 24        .byte $24   ; 
- D 0 - I - 0x014BB9 05:8BA9: 55        .byte $55   ; 
- - - - - - 0x014BBA 05:8BAA: 00        .byte $00   ; 
; 25
- D 0 - I - 0x014BBB 05:8BAB: 14        .byte $14   ; 
- D 0 - I - 0x014BBC 05:8BAC: 1F        .byte $1F   ; 
- D 0 - I - 0x014BBD 05:8BAD: F0        .byte $F0   ; 
- D 0 - I - 0x014BBE 05:8BAE: 10        .byte $10   ; 
- D 0 - I - 0x014BBF 05:8BAF: FF        .byte $FF   ; 
- D 0 - I - 0x014BC0 05:8BB0: 13        .byte $13   ; 
- D 0 - I - 0x014BC1 05:8BB1: 2B        .byte $2B   ; 
- D 0 - I - 0x014BC2 05:8BB2: 00        .byte $00   ; 
; 26
- D 0 - I - 0x014BC3 05:8BB3: 1F        .byte $1F   ; 
- D 0 - I - 0x014BC4 05:8BB4: 18        .byte $18   ; 
- D 0 - I - 0x014BC5 05:8BB5: 80        .byte $80   ; 
- D 0 - I - 0x014BC6 05:8BB6: 05        .byte $05   ; 
- D 0 - I - 0x014BC7 05:8BB7: 00        .byte $00   ; 
- D 0 - I - 0x014BC8 05:8BB8: 00        .byte $00   ; 
- D 0 - I - 0x014BC9 05:8BB9: 00        .byte $00   ; 
- - - - - - 0x014BCA 05:8BBA: 00        .byte $00   ; 
; 27
- D 0 - I - 0x014BCB 05:8BBB: 1B        .byte $1B   ; 
- D 0 - I - 0x014BCC 05:8BBC: 1B        .byte $1B   ; 
- D 0 - I - 0x014BCD 05:8BBD: 70        .byte $70   ; 
- - - - - - 0x014BCE 05:8BBE: 0B        .byte $0B   ; 
- D 0 - I - 0x014BCF 05:8BBF: CD        .byte $CD   ; 
- D 0 - I - 0x014BD0 05:8BC0: 7F        .byte $7F   ; 
- D 0 - I - 0x014BD1 05:8BC1: 00        .byte $00   ; 
- - - - - - 0x014BD2 05:8BC2: 00        .byte $00   ; 
; 28
- D 0 - I - 0x014BD3 05:8BC3: 16        .byte $16   ; 
- D 0 - I - 0x014BD4 05:8BC4: 18        .byte $18   ; 
- D 0 - I - 0x014BD5 05:8BC5: 90        .byte $90   ; 
- - - - - - 0x014BD6 05:8BC6: 0E        .byte $0E   ; 
- D 0 - I - 0x014BD7 05:8BC7: D1        .byte $D1   ; 
- D 0 - I - 0x014BD8 05:8BC8: 76        .byte $76   ; 
- D 0 - I - 0x014BD9 05:8BC9: 00        .byte $00   ; 
- - - - - - 0x014BDA 05:8BCA: 00        .byte $00   ; 
; 29
- D 0 - I - 0x014BDB 05:8BCB: 1F        .byte $1F   ; 
- D 0 - I - 0x014BDC 05:8BCC: 0C        .byte $0C   ; 
- D 0 - I - 0x014BDD 05:8BCD: 10        .byte $10   ; 
- - - - - - 0x014BDE 05:8BCE: 18        .byte $18   ; 
- D 0 - I - 0x014BDF 05:8BCF: 00        .byte $00   ; 
- D 0 - I - 0x014BE0 05:8BD0: 00        .byte $00   ; 
- D 0 - I - 0x014BE1 05:8BD1: 00        .byte $00   ; 
- D 0 - I - 0x014BE2 05:8BD2: 00        .byte $00   ; 
; 2A
- - - - - - 0x014BE3 05:8BD3: 1F        .byte $1F   ; 
- - - - - - 0x014BE4 05:8BD4: 1F        .byte $1F   ; 
- - - - - - 0x014BE5 05:8BD5: F0        .byte $F0   ; 
- - - - - - 0x014BE6 05:8BD6: 1F        .byte $1F   ; 
- D 0 - I - 0x014BE7 05:8BD7: A3        .byte $A3   ; 
- D 0 - I - 0x014BE8 05:8BD8: 7F        .byte $7F   ; 
- - - - - - 0x014BE9 05:8BD9: 00        .byte $00   ; 
- - - - - - 0x014BEA 05:8BDA: 00        .byte $00   ; 
; 2B
- D 0 - I - 0x014BEB 05:8BDB: 1F        .byte $1F   ; 
- D 0 - I - 0x014BEC 05:8BDC: 1E        .byte $1E   ; 
- D 0 - I - 0x014BED 05:8BDD: 50        .byte $50   ; 
- D 0 - I - 0x014BEE 05:8BDE: 01        .byte $01   ; 
- D 0 - I - 0x014BEF 05:8BDF: 00        .byte $00   ; 
- D 0 - I - 0x014BF0 05:8BE0: 00        .byte $00   ; 
- D 0 - I - 0x014BF1 05:8BE1: 00        .byte $00   ; 
- - - - - - 0x014BF2 05:8BE2: 00        .byte $00   ; 
; 2C
- - - - - - 0x014BF3 05:8BE3: 1E        .byte $1E   ; 
- - - - - - 0x014BF4 05:8BE4: 1E        .byte $1E   ; 
- - - - - - 0x014BF5 05:8BE5: 90        .byte $90   ; 
- - - - - - 0x014BF6 05:8BE6: 04        .byte $04   ; 
- - - - - - 0x014BF7 05:8BE7: 80        .byte $80   ; 
- - - - - - 0x014BF8 05:8BE8: 00        .byte $00   ; 
- - - - - - 0x014BF9 05:8BE9: 00        .byte $00   ; 
- - - - - - 0x014BFA 05:8BEA: 00        .byte $00   ; 
; 2D
- - - - - - 0x014BFB 05:8BEB: 1F        .byte $1F   ; 
- - - - - - 0x014BFC 05:8BEC: 1F        .byte $1F   ; 
- - - - - - 0x014BFD 05:8BED: F0        .byte $F0   ; 
- - - - - - 0x014BFE 05:8BEE: 1F        .byte $1F   ; 
- - - - - - 0x014BFF 05:8BEF: FF        .byte $FF   ; 
- - - - - - 0x014C00 05:8BF0: 00        .byte $00   ; 
- - - - - - 0x014C01 05:8BF1: 3C        .byte $3C   ; 
- - - - - - 0x014C02 05:8BF2: 80        .byte $80   ; 
; 2E
- - - - - - 0x014C03 05:8BF3: 1B        .byte $1B   ; 
- - - - - - 0x014C04 05:8BF4: 1F        .byte $1F   ; 
- - - - - - 0x014C05 05:8BF5: F0        .byte $F0   ; 
- - - - - - 0x014C06 05:8BF6: 1F        .byte $1F   ; 
- - - - - - 0x014C07 05:8BF7: FF        .byte $FF   ; 
- - - - - - 0x014C08 05:8BF8: 32        .byte $32   ; 
- - - - - - 0x014C09 05:8BF9: 24        .byte $24   ; 
- - - - - - 0x014C0A 05:8BFA: 00        .byte $00   ; 
; 2F
- - - - - - 0x014C0B 05:8BFB: 1F        .byte $1F   ; 
- - - - - - 0x014C0C 05:8BFC: 1E        .byte $1E   ; 
- - - - - - 0x014C0D 05:8BFD: B0        .byte $B0   ; 
- - - - - - 0x014C0E 05:8BFE: 14        .byte $14   ; 
- - - - - - 0x014C0F 05:8BFF: E4        .byte $E4   ; 
- - - - - - 0x014C10 05:8C00: 00        .byte $00   ; 
- - - - - - 0x014C11 05:8C01: 30        .byte $30   ; 
- - - - - - 0x014C12 05:8C02: 80        .byte $80   ; 
; 30
- D 0 - I - 0x014C13 05:8C03: 1F        .byte $1F   ; 
- D 0 - I - 0x014C14 05:8C04: 1C        .byte $1C   ; 
- D 0 - I - 0x014C15 05:8C05: 90        .byte $90   ; 
- D 0 - I - 0x014C16 05:8C06: 09        .byte $09   ; 
- D 0 - I - 0x014C17 05:8C07: 00        .byte $00   ; 
- D 0 - I - 0x014C18 05:8C08: 00        .byte $00   ; 
- D 0 - I - 0x014C19 05:8C09: 00        .byte $00   ; 
- D 0 - I - 0x014C1A 05:8C0A: 00        .byte $00   ; 
; 31
- D 0 - I - 0x014C1B 05:8C0B: 1F        .byte $1F   ; 
- D 0 - I - 0x014C1C 05:8C0C: 1F        .byte $1F   ; 
- D 0 - I - 0x014C1D 05:8C0D: F0        .byte $F0   ; 
- - - - - - 0x014C1E 05:8C0E: 1F        .byte $1F   ; 
- D 0 - I - 0x014C1F 05:8C0F: FF        .byte $FF   ; 
- D 0 - I - 0x014C20 05:8C10: 00        .byte $00   ; 
- D 0 - I - 0x014C21 05:8C11: 3C        .byte $3C   ; 
- D 0 - I - 0x014C22 05:8C12: 00        .byte $00   ; 
; 32
- - - - - - 0x014C23 05:8C13: 1B        .byte $1B   ; 
- - - - - - 0x014C24 05:8C14: 1F        .byte $1F   ; 
- - - - - - 0x014C25 05:8C15: F0        .byte $F0   ; 
- - - - - - 0x014C26 05:8C16: 1F        .byte $1F   ; 
- - - - - - 0x014C27 05:8C17: FD        .byte $FD   ; 
- - - - - - 0x014C28 05:8C18: 32        .byte $32   ; 
- - - - - - 0x014C29 05:8C19: 41        .byte $41   ; 
- - - - - - 0x014C2A 05:8C1A: 00        .byte $00   ; 
; 33
- D 0 - I - 0x014C2B 05:8C1B: 08        .byte $08   ; 
- D 0 - I - 0x014C2C 05:8C1C: 10        .byte $10   ; 
- D 0 - I - 0x014C2D 05:8C1D: F0        .byte $F0   ; 
- - - - - - 0x014C2E 05:8C1E: 00        .byte $00   ; 
- D 0 - I - 0x014C2F 05:8C1F: FF        .byte $FF   ; 
- D 0 - I - 0x014C30 05:8C20: 7F        .byte $7F   ; 
- D 0 - I - 0x014C31 05:8C21: 00        .byte $00   ; 
- - - - - - 0x014C32 05:8C22: 80        .byte $80   ; 
; 34
- D 0 - I - 0x014C33 05:8C23: 08        .byte $08   ; 
- D 0 - I - 0x014C34 05:8C24: 10        .byte $10   ; 
- D 0 - I - 0x014C35 05:8C25: F0        .byte $F0   ; 
- - - - - - 0x014C36 05:8C26: 00        .byte $00   ; 
- D 0 - I - 0x014C37 05:8C27: FF        .byte $FF   ; 
- D 0 - I - 0x014C38 05:8C28: 00        .byte $00   ; 
- D 0 - I - 0x014C39 05:8C29: 6E        .byte $6E   ; 
- D 0 - I - 0x014C3A 05:8C2A: 80        .byte $80   ; 
; 35
- D 0 - I - 0x014C3B 05:8C2B: 1F        .byte $1F   ; 
- D 0 - I - 0x014C3C 05:8C2C: 1F        .byte $1F   ; 
- D 0 - I - 0x014C3D 05:8C2D: F0        .byte $F0   ; 
- - - - - - 0x014C3E 05:8C2E: 1F        .byte $1F   ; 
- D 0 - I - 0x014C3F 05:8C2F: B5        .byte $B5   ; 
- D 0 - I - 0x014C40 05:8C30: 27        .byte $27   ; 
- D 0 - I - 0x014C41 05:8C31: 00        .byte $00   ; 
- D 0 - I - 0x014C42 05:8C32: 00        .byte $00   ; 



_music_8C33_00_title_screen:
- D 0 - I - 0x014C43 05:8C33: 00        .byte $00   ; 
- D 0 - I - 0x014C44 05:8C34: 8C 3C     .dbyt _off019_00_8C3C_00
- D 0 - I - 0x014C46 05:8C36: 8E A3     .dbyt _off019_00_8EA3_01
- D 0 - I - 0x014C48 05:8C38: 90 F3     .dbyt _off019_00_90F3_02
- D 0 - I - 0x014C4A 05:8C3A: 92 F5     .dbyt _off019_00_92F5_03_disable



_off019_00_8C3C_00:
loc_16_8C3C:
- D 0 - I - 0x014C4C 05:8C3C: 04        .byte con_04, $00   ; 
- D 0 - I - 0x014C4E 05:8C3E: 05        .byte con_05, $02, $D2   ; 
- D 0 - I - 0x014C51 05:8C41: 06        .byte con_06, $78   ; 
- D 0 - I - 0x014C53 05:8C43: 07        .byte con_07, $09   ; 
- D 0 - I - 0x014C55 05:8C45: 08        .byte con_08, $00   ; 
- D 0 - I - 0x014C57 05:8C47: 09        .byte con_09, $02   ; 
- D 0 - I - 0x014C59 05:8C49: 18        .byte con_18, $80   ; 
off_0E_8C4B:
- D 0 - I - 0x014C5B 05:8C4B: 04        .byte con_04, $00   ; 

- D 0 - I - 0x014C5D 05:8C4D: 9B        .byte $9B, $9E   ; 

- D 0 - I - 0x014C5F 05:8C4F: 03        .byte con_03   ; 

- D 0 - I - 0x014C60 05:8C50: 8B        .byte $8B   ; 
- D 0 - I - 0x014C61 05:8C51: AF        .byte $AF   ; 
- D 0 - I - 0x014C62 05:8C52: AF        .byte $AF   ; 
- D 0 - I - 0x014C63 05:8C53: 86        .byte $86   ; 
- D 0 - I - 0x014C64 05:8C54: AD        .byte $AD   ; 
- D 0 - I - 0x014C65 05:8C55: B0        .byte $B0   ; 
- D 0 - I - 0x014C66 05:8C56: AF        .byte $AF   ; 
- D 0 - I - 0x014C67 05:8C57: AB        .byte $AB   ; 

- D 0 - I - 0x014C68 05:8C58: 03        .byte con_03   ; 

- D 0 - I - 0x014C69 05:8C59: 97        .byte $97   ; 
- D 0 - I - 0x014C6A 05:8C5A: 9B        .byte $9B   ; 
- D 0 - I - 0x014C6B 05:8C5B: 9E        .byte $9E   ; 

- D 0 - I - 0x014C6C 05:8C5C: 03        .byte con_03   ; 

- D 0 - I - 0x014C6D 05:8C5D: AB        .byte $AB   ; 
- D 0 - I - 0x014C6E 05:8C5E: AB        .byte $AB   ; 
- D 0 - I - 0x014C6F 05:8C5F: 81        .byte $81   ; 
- D 0 - I - 0x014C70 05:8C60: AA        .byte $AA   ; 
- D 0 - I - 0x014C71 05:8C61: AD        .byte $AD   ; 
- D 0 - I - 0x014C72 05:8C62: AB        .byte $AB   ; 
- D 0 - I - 0x014C73 05:8C63: A0        .byte $A0   ; 

- D 0 - I - 0x014C74 05:8C64: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x014C76 05:8C66: 8C 4B     .dbyt off_0E_8C4B
off_0F_8C68:
- D 0 - I - 0x014C78 05:8C68: 04        .byte con_04, $00   ; 
- D 0 - I - 0x014C7A 05:8C6A: 08        .byte con_08, $05   ; 
off_0E_8C6C:
- D 0 - I - 0x014C7C 05:8C6C: 04        .byte con_04, $00   ; 

- D 0 - I - 0x014C7E 05:8C6E: A0        .byte $A0   ; 

- D 0 - I - 0x014C7F 05:8C6F: 03        .byte con_03   ; 

- D 0 - I - 0x014C80 05:8C70: 8B        .byte $8B   ; 
- D 0 - I - 0x014C81 05:8C71: AB        .byte $AB   ; 
- D 0 - I - 0x014C82 05:8C72: AB        .byte $AB   ; 
- D 0 - I - 0x014C83 05:8C73: 8B        .byte $8B   ; 
- D 0 - I - 0x014C84 05:8C74: AA        .byte $AA   ; 
- D 0 - I - 0x014C85 05:8C75: AD        .byte $AD   ; 
- D 0 - I - 0x014C86 05:8C76: AB        .byte $AB   ; 
- D 0 - I - 0x014C87 05:8C77: A6        .byte $A6   ; 
- D 0 - I - 0x014C88 05:8C78: A0        .byte $A0   ; 
- D 0 - I - 0x014C89 05:8C79: 83        .byte $83   ; 
- D 0 - I - 0x014C8A 05:8C7A: A6        .byte $A6   ; 
- D 0 - I - 0x014C8B 05:8C7B: A6        .byte $A6   ; 
- D 0 - I - 0x014C8C 05:8C7C: 83        .byte $83   ; 
- D 0 - I - 0x014C8D 05:8C7D: A1        .byte $A1   ; 
- D 0 - I - 0x014C8E 05:8C7E: A6        .byte $A6   ; 
- D 0 - I - 0x014C8F 05:8C7F: A3        .byte $A3   ; 
- D 0 - I - 0x014C90 05:8C80: A0        .byte $A0   ; 

- D 0 - I - 0x014C91 05:8C81: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x014C93 05:8C83: 8C 6C     .dbyt off_0E_8C6C
off_0E_8C85:
- D 0 - I - 0x014C95 05:8C85: 04        .byte con_04, $00   ; 

- D 0 - I - 0x014C97 05:8C87: A0        .byte $A0   ; 

- D 0 - I - 0x014C98 05:8C88: 03        .byte con_03   ; 

- D 0 - I - 0x014C99 05:8C89: 88        .byte $88   ; 
- D 0 - I - 0x014C9A 05:8C8A: AB        .byte $AB   ; 
- D 0 - I - 0x014C9B 05:8C8B: AB        .byte $AB   ; 
- D 0 - I - 0x014C9C 05:8C8C: 88        .byte $88   ; 
- D 0 - I - 0x014C9D 05:8C8D: A6        .byte $A6   ; 
- D 0 - I - 0x014C9E 05:8C8E: AB        .byte $AB   ; 
- D 0 - I - 0x014C9F 05:8C8F: A6        .byte $A6   ; 
- D 0 - I - 0x014CA0 05:8C90: AB        .byte $AB   ; 
- D 0 - I - 0x014CA1 05:8C91: A0        .byte $A0   ; 
- D 0 - I - 0x014CA2 05:8C92: 8A        .byte $8A   ; 
- D 0 - I - 0x014CA3 05:8C93: AD        .byte $AD   ; 
- D 0 - I - 0x014CA4 05:8C94: AD        .byte $AD   ; 
- D 0 - I - 0x014CA5 05:8C95: 8B        .byte $8B   ; 
- D 0 - I - 0x014CA6 05:8C96: AF        .byte $AF   ; 
- D 0 - I - 0x014CA7 05:8C97: AD        .byte $AD   ; 

- D 0 - I - 0x014CA8 05:8C98: 12        .byte con_12, $08   ; 
- D 0 - I - 0x014CAA 05:8C9A: 8C A2     .dbyt off_12_8CA2

- D 0 - I - 0x014CAC 05:8C9C: AB        .byte $AB   ; 
- D 0 - I - 0x014CAD 05:8C9D: A0        .byte $A0   ; 

- D 0 - I - 0x014CAE 05:8C9E: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x014CB0 05:8CA0: 8C 85     .dbyt off_0E_8C85
off_12_8CA2:
- D 0 - I - 0x014CB2 05:8CA2: 03        .byte con_03   ; 

- D 0 - I - 0x014CB3 05:8CA3: 97        .byte $97   ; 

- D 0 - I - 0x014CB4 05:8CA4: 03        .byte con_03   ; 

- D 0 - I - 0x014CB5 05:8CA5: 8B        .byte $8B   ; 
- D 0 - I - 0x014CB6 05:8CA6: 8B        .byte $8B   ; 
- D 0 - I - 0x014CB7 05:8CA7: 8B        .byte $8B   ; 
- D 0 - I - 0x014CB8 05:8CA8: AB        .byte $AB   ; 
- D 0 - I - 0x014CB9 05:8CA9: 80        .byte $80   ; 
- D 0 - I - 0x014CBA 05:8CAA: AF        .byte $AF   ; 
- D 0 - I - 0x014CBB 05:8CAB: 8D        .byte $8D   ; 
- D 0 - I - 0x014CBC 05:8CAC: AB        .byte $AB   ; 
- D 0 - I - 0x014CBD 05:8CAD: A8        .byte $A8   ; 

- D 0 - I - 0x014CBE 05:8CAE: 02        .byte con_02   ; 

- D 0 - I - 0x014CBF 05:8CAF: C0        .byte $C0   ; 

- D 0 - I - 0x014CC0 05:8CB0: 02        .byte con_02   ; 

- D 0 - I - 0x014CC1 05:8CB1: A0        .byte $A0   ; 
- D 0 - I - 0x014CC2 05:8CB2: AF        .byte $AF   ; 
- D 0 - I - 0x014CC3 05:8CB3: 8D        .byte $8D   ; 
- D 0 - I - 0x014CC4 05:8CB4: AB        .byte $AB   ; 
- D 0 - I - 0x014CC5 05:8CB5: AD        .byte $AD   ; 

- D 0 - I - 0x014CC6 05:8CB6: 02        .byte con_02   ; 

- D 0 - I - 0x014CC7 05:8CB7: C0        .byte $C0   ; 

- D 0 - I - 0x014CC8 05:8CB8: 02        .byte con_02   ; 

- D 0 - I - 0x014CC9 05:8CB9: A0        .byte $A0   ; 
- D 0 - I - 0x014CCA 05:8CBA: AF        .byte $AF   ; 
- D 0 - I - 0x014CCB 05:8CBB: 8D        .byte $8D   ; 
- D 0 - I - 0x014CCC 05:8CBC: AB        .byte $AB   ; 
- D 0 - I - 0x014CCD 05:8CBD: 88        .byte $88   ; 
- D 0 - I - 0x014CCE 05:8CBE: A6        .byte $A6   ; 
- D 0 - I - 0x014CCF 05:8CBF: AF        .byte $AF   ; 
- D 0 - I - 0x014CD0 05:8CC0: 8D        .byte $8D   ; 
- D 0 - I - 0x014CD1 05:8CC1: AB        .byte $AB   ; 
- D 0 - I - 0x014CD2 05:8CC2: 88        .byte $88   ; 
- D 0 - I - 0x014CD3 05:8CC3: A6        .byte $A6   ; 
- D 0 - I - 0x014CD4 05:8CC4: AF        .byte $AF   ; 
- D 0 - I - 0x014CD5 05:8CC5: 8D        .byte $8D   ; 
- D 0 - I - 0x014CD6 05:8CC6: AB        .byte $AB   ; 
- D 0 - I - 0x014CD7 05:8CC7: EF        .byte $EF   ; 

- D 0 - I - 0x014CD8 05:8CC8: 02        .byte con_02   ; 

- D 0 - I - 0x014CD9 05:8CC9: A0        .byte $A0   ; 
- D 0 - I - 0x014CDA 05:8CCA: AF        .byte $AF   ; 
- D 0 - I - 0x014CDB 05:8CCB: AD        .byte $AD   ; 
- D 0 - I - 0x014CDC 05:8CCC: 8B        .byte $8B   ; 
- D 0 - I - 0x014CDD 05:8CCD: A8        .byte $A8   ; 
- D 0 - I - 0x014CDE 05:8CCE: 8B        .byte $8B   ; 
- D 0 - I - 0x014CDF 05:8CCF: AB        .byte $AB   ; 
- D 0 - I - 0x014CE0 05:8CD0: 88        .byte $88   ; 
- D 0 - I - 0x014CE1 05:8CD1: AD        .byte $AD   ; 

- D 0 - I - 0x014CE2 05:8CD2: 02        .byte con_02   ; 

- D 0 - I - 0x014CE3 05:8CD3: A0        .byte $A0   ; 
- D 0 - I - 0x014CE4 05:8CD4: AD        .byte $AD   ; 
- D 0 - I - 0x014CE5 05:8CD5: AD        .byte $AD   ; 
- D 0 - I - 0x014CE6 05:8CD6: 8B        .byte $8B   ; 
- D 0 - I - 0x014CE7 05:8CD7: AF        .byte $AF   ; 
- D 0 - I - 0x014CE8 05:8CD8: 8D        .byte $8D   ; 
- D 0 - I - 0x014CE9 05:8CD9: AB        .byte $AB   ; 
- D 0 - I - 0x014CEA 05:8CDA: 8F        .byte $8F   ; 
- D 0 - I - 0x014CEB 05:8CDB: AB        .byte $AB   ; 

- D 0 - I - 0x014CEC 05:8CDC: 02        .byte con_02   ; 

- D 0 - I - 0x014CED 05:8CDD: A0        .byte $A0   ; 
- D 0 - I - 0x014CEE 05:8CDE: AF        .byte $AF   ; 
- D 0 - I - 0x014CEF 05:8CDF: 8D        .byte $8D   ; 
- D 0 - I - 0x014CF0 05:8CE0: AB        .byte $AB   ; 
- D 0 - I - 0x014CF1 05:8CE1: 88        .byte $88   ; 
- D 0 - I - 0x014CF2 05:8CE2: A6        .byte $A6   ; 
- D 0 - I - 0x014CF3 05:8CE3: AF        .byte $AF   ; 
- D 0 - I - 0x014CF4 05:8CE4: 8D        .byte $8D   ; 
- D 0 - I - 0x014CF5 05:8CE5: AB        .byte $AB   ; 
- D 0 - I - 0x014CF6 05:8CE6: 88        .byte $88   ; 
- D 0 - I - 0x014CF7 05:8CE7: A6        .byte $A6   ; 
- D 0 - I - 0x014CF8 05:8CE8: AF        .byte $AF   ; 
- D 0 - I - 0x014CF9 05:8CE9: 8D        .byte $8D   ; 
- D 0 - I - 0x014CFA 05:8CEA: AB        .byte $AB   ; 

- D 0 - I - 0x014CFB 05:8CEB: 13        .byte con_13, $08   ; 
- D 0 - I - 0x014CFD 05:8CED: 8D 09     .dbyt off_13_8D09

- D 0 - I - 0x014CFF 05:8CEF: 8B        .byte $8B   ; 
- D 0 - I - 0x014D00 05:8CF0: 86        .byte $86   ; 
- D 0 - I - 0x014D01 05:8CF1: 8B        .byte $8B   ; 
- D 0 - I - 0x014D02 05:8CF2: AF        .byte $AF   ; 
- D 0 - I - 0x014D03 05:8CF3: AF        .byte $AF   ; 
- D 0 - I - 0x014D04 05:8CF4: 86        .byte $86   ; 
- D 0 - I - 0x014D05 05:8CF5: AD        .byte $AD   ; 
- D 0 - I - 0x014D06 05:8CF6: B0        .byte $B0   ; 
- D 0 - I - 0x014D07 05:8CF7: AF        .byte $AF   ; 
- D 0 - I - 0x014D08 05:8CF8: AB        .byte $AB   ; 

- D 0 - I - 0x014D09 05:8CF9: 03        .byte con_03   ; 

- D 0 - I - 0x014D0A 05:8CFA: 97        .byte $97   ; 
- D 0 - I - 0x014D0B 05:8CFB: 9B        .byte $9B   ; 
- D 0 - I - 0x014D0C 05:8CFC: 9E        .byte $9E   ; 

- D 0 - I - 0x014D0D 05:8CFD: 03        .byte con_03   ; 

- D 0 - I - 0x014D0E 05:8CFE: AB        .byte $AB   ; 
- D 0 - I - 0x014D0F 05:8CFF: AB        .byte $AB   ; 
- D 0 - I - 0x014D10 05:8D00: 81        .byte $81   ; 
- D 0 - I - 0x014D11 05:8D01: AA        .byte $AA   ; 
- D 0 - I - 0x014D12 05:8D02: AD        .byte $AD   ; 
- D 0 - I - 0x014D13 05:8D03: AB        .byte $AB   ; 
- D 0 - I - 0x014D14 05:8D04: A0        .byte $A0   ; 

- D 0 - I - 0x014D15 05:8D05: 0F        .byte con_0F, $01   ; 
- D 0 - I - 0x014D17 05:8D07: 8C 68     .dbyt off_0F_8C68
off_13_8D09:
- D 0 - I - 0x014D19 05:8D09: E8        .byte $E8   ; 

- D 0 - I - 0x014D1A 05:8D0A: 02        .byte con_02   ; 

- D 0 - I - 0x014D1B 05:8D0B: A0        .byte $A0   ; 
- D 0 - I - 0x014D1C 05:8D0C: AF        .byte $AF   ; 
- D 0 - I - 0x014D1D 05:8D0D: 8D        .byte $8D   ; 
- D 0 - I - 0x014D1E 05:8D0E: AB        .byte $AB   ; 
- D 0 - I - 0x014D1F 05:8D0F: ED        .byte $ED   ; 

- D 0 - I - 0x014D20 05:8D10: 02        .byte con_02   ; 

- D 0 - I - 0x014D21 05:8D11: A0        .byte $A0   ; 
- D 0 - I - 0x014D22 05:8D12: AF        .byte $AF   ; 
- D 0 - I - 0x014D23 05:8D13: AD        .byte $AD   ; 
- D 0 - I - 0x014D24 05:8D14: 8B        .byte $8B   ; 
- D 0 - I - 0x014D25 05:8D15: 88        .byte $88   ; 
- D 0 - I - 0x014D26 05:8D16: A6        .byte $A6   ; 
- D 0 - I - 0x014D27 05:8D17: AF        .byte $AF   ; 
- D 0 - I - 0x014D28 05:8D18: 8D        .byte $8D   ; 
- D 0 - I - 0x014D29 05:8D19: AB        .byte $AB   ; 
- D 0 - I - 0x014D2A 05:8D1A: 88        .byte $88   ; 
- D 0 - I - 0x014D2B 05:8D1B: A6        .byte $A6   ; 
- D 0 - I - 0x014D2C 05:8D1C: AF        .byte $AF   ; 
- D 0 - I - 0x014D2D 05:8D1D: 8D        .byte $8D   ; 
- D 0 - I - 0x014D2E 05:8D1E: AB        .byte $AB   ; 
- D 0 - I - 0x014D2F 05:8D1F: EF        .byte $EF   ; 

- D 0 - I - 0x014D30 05:8D20: 02        .byte con_02   ; 

- D 0 - I - 0x014D31 05:8D21: A0        .byte $A0   ; 
- D 0 - I - 0x014D32 05:8D22: AF        .byte $AF   ; 
- D 0 - I - 0x014D33 05:8D23: 8D        .byte $8D   ; 
- D 0 - I - 0x014D34 05:8D24: AB        .byte $AB   ; 
- D 0 - I - 0x014D35 05:8D25: A8        .byte $A8   ; 
- D 0 - I - 0x014D36 05:8D26: 8B        .byte $8B   ; 
- D 0 - I - 0x014D37 05:8D27: AB        .byte $AB   ; 
- D 0 - I - 0x014D38 05:8D28: 88        .byte $88   ; 
- D 0 - I - 0x014D39 05:8D29: AD        .byte $AD   ; 

- D 0 - I - 0x014D3A 05:8D2A: 02        .byte con_02   ; 

- D 0 - I - 0x014D3B 05:8D2B: A0        .byte $A0   ; 
- D 0 - I - 0x014D3C 05:8D2C: AD        .byte $AD   ; 
- D 0 - I - 0x014D3D 05:8D2D: AD        .byte $AD   ; 
- D 0 - I - 0x014D3E 05:8D2E: 8B        .byte $8B   ; 
- D 0 - I - 0x014D3F 05:8D2F: AF        .byte $AF   ; 
- D 0 - I - 0x014D40 05:8D30: 8D        .byte $8D   ; 
- D 0 - I - 0x014D41 05:8D31: AB        .byte $AB   ; 
- D 0 - I - 0x014D42 05:8D32: 8F        .byte $8F   ; 
- D 0 - I - 0x014D43 05:8D33: AB        .byte $AB   ; 

- D 0 - I - 0x014D44 05:8D34: 02        .byte con_02   ; 

- D 0 - I - 0x014D45 05:8D35: A0        .byte $A0   ; 
- D 0 - I - 0x014D46 05:8D36: AF        .byte $AF   ; 
- D 0 - I - 0x014D47 05:8D37: AD        .byte $AD   ; 
- D 0 - I - 0x014D48 05:8D38: 8B        .byte $8B   ; 
- D 0 - I - 0x014D49 05:8D39: 88        .byte $88   ; 
- D 0 - I - 0x014D4A 05:8D3A: A6        .byte $A6   ; 
- D 0 - I - 0x014D4B 05:8D3B: AF        .byte $AF   ; 
- D 0 - I - 0x014D4C 05:8D3C: AD        .byte $AD   ; 
- D 0 - I - 0x014D4D 05:8D3D: 8B        .byte $8B   ; 
- D 0 - I - 0x014D4E 05:8D3E: 88        .byte $88   ; 
- D 0 - I - 0x014D4F 05:8D3F: A6        .byte $A6   ; 
- D 0 - I - 0x014D50 05:8D40: AF        .byte $AF   ; 
- D 0 - I - 0x014D51 05:8D41: 8D        .byte $8D   ; 
- D 0 - I - 0x014D52 05:8D42: AB        .byte $AB   ; 

- D 0 - I - 0x014D53 05:8D43: 02        .byte con_02   ; 

- D 0 - I - 0x014D54 05:8D44: AB        .byte $AB   ; 
- D 0 - I - 0x014D55 05:8D45: AF        .byte $AF   ; 
- D 0 - I - 0x014D56 05:8D46: AF        .byte $AF   ; 
- D 0 - I - 0x014D57 05:8D47: 80        .byte $80   ; 
- D 0 - I - 0x014D58 05:8D48: AD        .byte $AD   ; 
- D 0 - I - 0x014D59 05:8D49: B0        .byte $B0   ; 
- D 0 - I - 0x014D5A 05:8D4A: AF        .byte $AF   ; 
- D 0 - I - 0x014D5B 05:8D4B: 8B        .byte $8B   ; 

- D 0 - I - 0x014D5C 05:8D4C: 18        .byte con_18, $40   ; 
- D 0 - I - 0x014D5E 05:8D4E: 01        .byte con_01   ; 

- D 0 - I - 0x014D5F 05:8D4F: 8A        .byte $8A   ; 
off_0E_8D50:
- D 0 - I - 0x014D60 05:8D50: 04        .byte con_04, $08   ; 

- D 0 - I - 0x014D62 05:8D52: 8A        .byte $8A   ; 
- D 0 - I - 0x014D63 05:8D53: AA        .byte $AA   ; 
- D 0 - I - 0x014D64 05:8D54: 8A        .byte $8A   ; 
- D 0 - I - 0x014D65 05:8D55: AA        .byte $AA   ; 
- D 0 - I - 0x014D66 05:8D56: 88        .byte $88   ; 

- D 0 - I - 0x014D67 05:8D57: 01        .byte con_01   ; 

- D 0 - I - 0x014D68 05:8D58: 86        .byte $86   ; 

- D 0 - I - 0x014D69 05:8D59: 01        .byte con_01   ; 

- D 0 - I - 0x014D6A 05:8D5A: 86        .byte $86   ; 
- D 0 - I - 0x014D6B 05:8D5B: A6        .byte $A6   ; 
- D 0 - I - 0x014D6C 05:8D5C: 86        .byte $86   ; 
- D 0 - I - 0x014D6D 05:8D5D: A6        .byte $A6   ; 
- D 0 - I - 0x014D6E 05:8D5E: 8B        .byte $8B   ; 

- D 0 - I - 0x014D6F 05:8D5F: 01        .byte con_01   ; 

- D 0 - I - 0x014D70 05:8D60: 8A        .byte $8A   ; 

- D 0 - I - 0x014D71 05:8D61: 01        .byte con_01   ; 

- D 0 - I - 0x014D72 05:8D62: 8A        .byte $8A   ; 
- D 0 - I - 0x014D73 05:8D63: AA        .byte $AA   ; 
- D 0 - I - 0x014D74 05:8D64: 8A        .byte $8A   ; 
- D 0 - I - 0x014D75 05:8D65: AA        .byte $AA   ; 
- D 0 - I - 0x014D76 05:8D66: 88        .byte $88   ; 

- D 0 - I - 0x014D77 05:8D67: 01        .byte con_01   ; 

- D 0 - I - 0x014D78 05:8D68: 86        .byte $86   ; 

- D 0 - I - 0x014D79 05:8D69: 01        .byte con_01   ; 

- D 0 - I - 0x014D7A 05:8D6A: 86        .byte $86   ; 
- D 0 - I - 0x014D7B 05:8D6B: A6        .byte $A6   ; 
- D 0 - I - 0x014D7C 05:8D6C: 86        .byte $86   ; 
- D 0 - I - 0x014D7D 05:8D6D: A6        .byte $A6   ; 
- D 0 - I - 0x014D7E 05:8D6E: 86        .byte $86   ; 

- D 0 - I - 0x014D7F 05:8D6F: 01        .byte con_01   ; 

- D 0 - I - 0x014D80 05:8D70: 88        .byte $88   ; 

- D 0 - I - 0x014D81 05:8D71: 01        .byte con_01   ; 

- D 0 - I - 0x014D82 05:8D72: 88        .byte $88   ; 
- D 0 - I - 0x014D83 05:8D73: A8        .byte $A8   ; 
- D 0 - I - 0x014D84 05:8D74: 88        .byte $88   ; 
- D 0 - I - 0x014D85 05:8D75: AB        .byte $AB   ; 
- D 0 - I - 0x014D86 05:8D76: 88        .byte $88   ; 

- D 0 - I - 0x014D87 05:8D77: 01        .byte con_01   ; 

- D 0 - I - 0x014D88 05:8D78: 86        .byte $86   ; 

- D 0 - I - 0x014D89 05:8D79: 01        .byte con_01   ; 

- D 0 - I - 0x014D8A 05:8D7A: 86        .byte $86   ; 
- D 0 - I - 0x014D8B 05:8D7B: A6        .byte $A6   ; 
- D 0 - I - 0x014D8C 05:8D7C: 86        .byte $86   ; 
- D 0 - I - 0x014D8D 05:8D7D: AB        .byte $AB   ; 

- D 0 - I - 0x014D8E 05:8D7E: 12        .byte con_12, $08   ; 
- D 0 - I - 0x014D90 05:8D80: 8D 94     .dbyt off_12_8D94

- D 0 - I - 0x014D92 05:8D82: 8B        .byte $8B   ; 

- D 0 - I - 0x014D93 05:8D83: 01        .byte con_01   ; 

- D 0 - I - 0x014D94 05:8D84: 8A        .byte $8A   ; 

- D 0 - I - 0x014D95 05:8D85: 01        .byte con_01   ; 

- D 0 - I - 0x014D96 05:8D86: 8A        .byte $8A   ; 
- D 0 - I - 0x014D97 05:8D87: AA        .byte $AA   ; 
- D 0 - I - 0x014D98 05:8D88: 8A        .byte $8A   ; 
- D 0 - I - 0x014D99 05:8D89: AD        .byte $AD   ; 
- D 0 - I - 0x014D9A 05:8D8A: AA        .byte $AA   ; 
- D 0 - I - 0x014D9B 05:8D8B: AB        .byte $AB   ; 
- D 0 - I - 0x014D9C 05:8D8C: C0        .byte $C0   ; 
- D 0 - I - 0x014D9D 05:8D8D: 8B        .byte $8B   ; 

- D 0 - I - 0x014D9E 05:8D8E: 01        .byte con_01   ; 

- D 0 - I - 0x014D9F 05:8D8F: 8A        .byte $8A   ; 

- D 0 - I - 0x014DA0 05:8D90: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x014DA2 05:8D92: 8D 50     .dbyt off_0E_8D50
off_12_8D94:
- D 0 - I - 0x014DA4 05:8D94: 80        .byte $80   ; 
- D 0 - I - 0x014DA5 05:8D95: 86        .byte $86   ; 
- D 0 - I - 0x014DA6 05:8D96: AA        .byte $AA   ; 
- D 0 - I - 0x014DA7 05:8D97: AA        .byte $AA   ; 
- D 0 - I - 0x014DA8 05:8D98: AD        .byte $AD   ; 
- D 0 - I - 0x014DA9 05:8D99: AA        .byte $AA   ; 
- D 0 - I - 0x014DAA 05:8D9A: AB        .byte $AB   ; 
- D 0 - I - 0x014DAB 05:8D9B: 80        .byte $80   ; 

- D 0 - I - 0x014DAC 05:8D9C: 08        .byte con_08, $0F   ; 

- D 0 - I - 0x014DAE 05:8D9E: AF        .byte $AF   ; 
- D 0 - I - 0x014DAF 05:8D9F: AD        .byte $AD   ; 
- D 0 - I - 0x014DB0 05:8DA0: 8B        .byte $8B   ; 
- D 0 - I - 0x014DB1 05:8DA1: E8        .byte $E8   ; 

- D 0 - I - 0x014DB2 05:8DA2: 02        .byte con_02   ; 

- D 0 - I - 0x014DB3 05:8DA3: A6        .byte $A6   ; 
- D 0 - I - 0x014DB4 05:8DA4: AF        .byte $AF   ; 
- D 0 - I - 0x014DB5 05:8DA5: AD        .byte $AD   ; 
- D 0 - I - 0x014DB6 05:8DA6: 8B        .byte $8B   ; 
- D 0 - I - 0x014DB7 05:8DA7: ED        .byte $ED   ; 

- D 0 - I - 0x014DB8 05:8DA8: 02        .byte con_02   ; 

- D 0 - I - 0x014DB9 05:8DA9: A6        .byte $A6   ; 
- D 0 - I - 0x014DBA 05:8DAA: AF        .byte $AF   ; 
- D 0 - I - 0x014DBB 05:8DAB: AD        .byte $AD   ; 
- D 0 - I - 0x014DBC 05:8DAC: 8B        .byte $8B   ; 

- D 0 - I - 0x014DBD 05:8DAD: 02        .byte con_02   ; 

- D 0 - I - 0x014DBE 05:8DAE: A8        .byte $A8   ; 

- D 0 - I - 0x014DBF 05:8DAF: 08        .byte con_08, $01   ; 
- D 0 - I - 0x014DC1 05:8DB1: 18        .byte con_18, $80   ; 

- D 0 - I - 0x014DC3 05:8DB3: AF        .byte $AF   ; 
- D 0 - I - 0x014DC4 05:8DB4: AD        .byte $AD   ; 
- D 0 - I - 0x014DC5 05:8DB5: 8B        .byte $8B   ; 
- D 0 - I - 0x014DC6 05:8DB6: AA        .byte $AA   ; 

- D 0 - I - 0x014DC7 05:8DB7: 02        .byte con_02   ; 

- D 0 - I - 0x014DC8 05:8DB8: C6        .byte $C6   ; 

- D 0 - I - 0x014DC9 05:8DB9: 08        .byte con_08, $0F   ; 
- D 0 - I - 0x014DCB 05:8DBB: 18        .byte con_18, $40   ; 

- D 0 - I - 0x014DCD 05:8DBD: 86        .byte $86   ; 
- D 0 - I - 0x014DCE 05:8DBE: A8        .byte $A8   ; 
- D 0 - I - 0x014DCF 05:8DBF: 8B        .byte $8B   ; 
- D 0 - I - 0x014DD0 05:8DC0: 80        .byte $80   ; 

- D 0 - I - 0x014DD1 05:8DC1: 09        .byte con_09, $02   ; 
- D 0 - I - 0x014DD3 05:8DC3: 08        .byte con_08, $01   ; 
- D 0 - I - 0x014DD5 05:8DC5: 18        .byte con_18, $80   ; 

- D 0 - I - 0x014DD7 05:8DC7: 86        .byte $86   ; 
- D 0 - I - 0x014DD8 05:8DC8: 88        .byte $88   ; 
- D 0 - I - 0x014DD9 05:8DC9: 8B        .byte $8B   ; 
- D 0 - I - 0x014DDA 05:8DCA: 90        .byte $90   ; 
- D 0 - I - 0x014DDB 05:8DCB: 8F        .byte $8F   ; 
- D 0 - I - 0x014DDC 05:8DCC: 90        .byte $90   ; 
- D 0 - I - 0x014DDD 05:8DCD: 8F        .byte $8F   ; 
- D 0 - I - 0x014DDE 05:8DCE: 90        .byte $90   ; 
- D 0 - I - 0x014DDF 05:8DCF: 92        .byte $92   ; 
- D 0 - I - 0x014DE0 05:8DD0: 8F        .byte $8F   ; 
- D 0 - I - 0x014DE1 05:8DD1: 8B        .byte $8B   ; 
- D 0 - I - 0x014DE2 05:8DD2: A8        .byte $A8   ; 
- D 0 - I - 0x014DE3 05:8DD3: 8B        .byte $8B   ; 
- D 0 - I - 0x014DE4 05:8DD4: AB        .byte $AB   ; 
- D 0 - I - 0x014DE5 05:8DD5: 88        .byte $88   ; 
- D 0 - I - 0x014DE6 05:8DD6: AD        .byte $AD   ; 

- D 0 - I - 0x014DE7 05:8DD7: 01        .byte con_01   ; 

- D 0 - I - 0x014DE8 05:8DD8: CA        .byte $CA   ; 

- D 0 - I - 0x014DE9 05:8DD9: 01        .byte con_01   ; 

- D 0 - I - 0x014DEA 05:8DDA: 8A        .byte $8A   ; 
- D 0 - I - 0x014DEB 05:8DDB: 86        .byte $86   ; 
- D 0 - I - 0x014DEC 05:8DDC: 8A        .byte $8A   ; 
- D 0 - I - 0x014DED 05:8DDD: 8D        .byte $8D   ; 

- D 0 - I - 0x014DEE 05:8DDE: 02        .byte con_02   ; 

- D 0 - I - 0x014DEF 05:8DDF: AF        .byte $AF   ; 

- D 0 - I - 0x014DF0 05:8DE0: 02        .byte con_02   ; 

- D 0 - I - 0x014DF1 05:8DE1: AD        .byte $AD   ; 
- D 0 - I - 0x014DF2 05:8DE2: AB        .byte $AB   ; 
- D 0 - I - 0x014DF3 05:8DE3: C8        .byte $C8   ; 
- D 0 - I - 0x014DF4 05:8DE4: 8F        .byte $8F   ; 
- D 0 - I - 0x014DF5 05:8DE5: 8D        .byte $8D   ; 
- D 0 - I - 0x014DF6 05:8DE6: AB        .byte $AB   ; 
- D 0 - I - 0x014DF7 05:8DE7: A8        .byte $A8   ; 
- D 0 - I - 0x014DF8 05:8DE8: A4        .byte $A4   ; 
- D 0 - I - 0x014DF9 05:8DE9: 8F        .byte $8F   ; 
- D 0 - I - 0x014DFA 05:8DEA: 8D        .byte $8D   ; 
- D 0 - I - 0x014DFB 05:8DEB: AB        .byte $AB   ; 
- D 0 - I - 0x014DFC 05:8DEC: A8        .byte $A8   ; 
- D 0 - I - 0x014DFD 05:8DED: C6        .byte $C6   ; 
- D 0 - I - 0x014DFE 05:8DEE: A8        .byte $A8   ; 
- D 0 - I - 0x014DFF 05:8DEF: 8B        .byte $8B   ; 
- D 0 - I - 0x014E00 05:8DF0: 86        .byte $86   ; 
- D 0 - I - 0x014E01 05:8DF1: 8B        .byte $8B   ; 
- D 0 - I - 0x014E02 05:8DF2: AF        .byte $AF   ; 
- D 0 - I - 0x014E03 05:8DF3: AF        .byte $AF   ; 
- D 0 - I - 0x014E04 05:8DF4: 86        .byte $86   ; 
- D 0 - I - 0x014E05 05:8DF5: AD        .byte $AD   ; 
- D 0 - I - 0x014E06 05:8DF6: B0        .byte $B0   ; 
- D 0 - I - 0x014E07 05:8DF7: AF        .byte $AF   ; 
- D 0 - I - 0x014E08 05:8DF8: AB        .byte $AB   ; 

- D 0 - I - 0x014E09 05:8DF9: 03        .byte con_03   ; 

- D 0 - I - 0x014E0A 05:8DFA: 97        .byte $97   ; 
- D 0 - I - 0x014E0B 05:8DFB: 9B        .byte $9B   ; 
- D 0 - I - 0x014E0C 05:8DFC: 9E        .byte $9E   ; 

- D 0 - I - 0x014E0D 05:8DFD: 03        .byte con_03   ; 

- D 0 - I - 0x014E0E 05:8DFE: AB        .byte $AB   ; 
- D 0 - I - 0x014E0F 05:8DFF: AB        .byte $AB   ; 
- D 0 - I - 0x014E10 05:8E00: 81        .byte $81   ; 
- D 0 - I - 0x014E11 05:8E01: AA        .byte $AA   ; 
- D 0 - I - 0x014E12 05:8E02: AD        .byte $AD   ; 
- D 0 - I - 0x014E13 05:8E03: AB        .byte $AB   ; 
- D 0 - I - 0x014E14 05:8E04: A0        .byte $A0   ; 
- D 0 - I - 0x014E15 05:8E05: 85        .byte $85   ; 
- D 0 - I - 0x014E16 05:8E06: 88        .byte $88   ; 
- D 0 - I - 0x014E17 05:8E07: 8D        .byte $8D   ; 
- D 0 - I - 0x014E18 05:8E08: B1        .byte $B1   ; 
- D 0 - I - 0x014E19 05:8E09: B1        .byte $B1   ; 
- D 0 - I - 0x014E1A 05:8E0A: 88        .byte $88   ; 
- D 0 - I - 0x014E1B 05:8E0B: AF        .byte $AF   ; 
- D 0 - I - 0x014E1C 05:8E0C: B2        .byte $B2   ; 
- D 0 - I - 0x014E1D 05:8E0D: B1        .byte $B1   ; 
- D 0 - I - 0x014E1E 05:8E0E: AD        .byte $AD   ; 

- D 0 - I - 0x014E1F 05:8E0F: 02        .byte con_02   ; 

- D 0 - I - 0x014E20 05:8E10: A1        .byte $A1   ; 

- D 0 - I - 0x014E21 05:8E11: 02        .byte con_02   ; 

- D 0 - I - 0x014E22 05:8E12: A5        .byte $A5   ; 

- D 0 - I - 0x014E23 05:8E13: 01        .byte con_01   ; 

- D 0 - I - 0x014E24 05:8E14: A8        .byte $A8   ; 

- D 0 - I - 0x014E25 05:8E15: 01        .byte con_01   ; 

- D 0 - I - 0x014E26 05:8E16: 88        .byte $88   ; 
- D 0 - I - 0x014E27 05:8E17: 8D        .byte $8D   ; 
- D 0 - I - 0x014E28 05:8E18: AD        .byte $AD   ; 
- D 0 - I - 0x014E29 05:8E19: 91        .byte $91   ; 
- D 0 - I - 0x014E2A 05:8E1A: 8F        .byte $8F   ; 
- D 0 - I - 0x014E2B 05:8E1B: AD        .byte $AD   ; 
- D 0 - I - 0x014E2C 05:8E1C: CA        .byte $CA   ; 
- D 0 - I - 0x014E2D 05:8E1D: C0        .byte $C0   ; 
- D 0 - I - 0x014E2E 05:8E1E: 02        .byte con_02   ; 

- D 0 - I - 0x014E2F 05:8E1F: A8        .byte $A8   ; 
- D 0 - I - 0x014E30 05:8E20: B1        .byte $B1   ; 
- D 0 - I - 0x014E31 05:8E21: 8F        .byte $8F   ; 
- D 0 - I - 0x014E32 05:8E22: AD        .byte $AD   ; 
- D 0 - I - 0x014E33 05:8E23: CF        .byte $CF   ; 
- D 0 - I - 0x014E34 05:8E24: C0        .byte $C0   ; 

- D 0 - I - 0x014E35 05:8E25: 02        .byte con_02   ; 

- D 0 - I - 0x014E36 05:8E26: A0        .byte $A0   ; 
- D 0 - I - 0x014E37 05:8E27: B1        .byte $B1   ; 
- D 0 - I - 0x014E38 05:8E28: 8F        .byte $8F   ; 
- D 0 - I - 0x014E39 05:8E29: AD        .byte $AD   ; 
- D 0 - I - 0x014E3A 05:8E2A: 8A        .byte $8A   ; 
- D 0 - I - 0x014E3B 05:8E2B: A8        .byte $A8   ; 
- D 0 - I - 0x014E3C 05:8E2C: B1        .byte $B1   ; 
- D 0 - I - 0x014E3D 05:8E2D: AF        .byte $AF   ; 
- D 0 - I - 0x014E3E 05:8E2E: 8D        .byte $8D   ; 
- D 0 - I - 0x014E3F 05:8E2F: 8A        .byte $8A   ; 
- D 0 - I - 0x014E40 05:8E30: A8        .byte $A8   ; 
- D 0 - I - 0x014E41 05:8E31: B1        .byte $B1   ; 
- D 0 - I - 0x014E42 05:8E32: 8F        .byte $8F   ; 
- D 0 - I - 0x014E43 05:8E33: AD        .byte $AD   ; 
- D 0 - I - 0x014E44 05:8E34: F1        .byte $F1   ; 

- D 0 - I - 0x014E45 05:8E35: 02        .byte con_02   ; 

- D 0 - I - 0x014E46 05:8E36: AB        .byte $AB   ; 
- D 0 - I - 0x014E47 05:8E37: B1        .byte $B1   ; 
- D 0 - I - 0x014E48 05:8E38: 8F        .byte $8F   ; 
- D 0 - I - 0x014E49 05:8E39: AD        .byte $AD   ; 
- D 0 - I - 0x014E4A 05:8E3A: AA        .byte $AA   ; 
- D 0 - I - 0x014E4B 05:8E3B: 8D        .byte $8D   ; 
- D 0 - I - 0x014E4C 05:8E3C: AD        .byte $AD   ; 
- D 0 - I - 0x014E4D 05:8E3D: 8A        .byte $8A   ; 
- D 0 - I - 0x014E4E 05:8E3E: AF        .byte $AF   ; 

- D 0 - I - 0x014E4F 05:8E3F: 02        .byte con_02   ; 

- D 0 - I - 0x014E50 05:8E40: AC        .byte $AC   ; 
- D 0 - I - 0x014E51 05:8E41: AF        .byte $AF   ; 
- D 0 - I - 0x014E52 05:8E42: AD        .byte $AD   ; 
- D 0 - I - 0x014E53 05:8E43: 8C        .byte $8C   ; 
- D 0 - I - 0x014E54 05:8E44: B1        .byte $B1   ; 
- D 0 - I - 0x014E55 05:8E45: 91        .byte $91   ; 
- D 0 - I - 0x014E56 05:8E46: AF        .byte $AF   ; 
- D 0 - I - 0x014E57 05:8E47: 91        .byte $91   ; 
- D 0 - I - 0x014E58 05:8E48: AF        .byte $AF   ; 
- D 0 - I - 0x014E59 05:8E49: AD        .byte $AD   ; 
- D 0 - I - 0x014E5A 05:8E4A: 80        .byte $80   ; 
- D 0 - I - 0x014E5B 05:8E4B: B1        .byte $B1   ; 
- D 0 - I - 0x014E5C 05:8E4C: 8F        .byte $8F   ; 
- D 0 - I - 0x014E5D 05:8E4D: AD        .byte $AD   ; 
- D 0 - I - 0x014E5E 05:8E4E: 8A        .byte $8A   ; 
- D 0 - I - 0x014E5F 05:8E4F: A8        .byte $A8   ; 
- D 0 - I - 0x014E60 05:8E50: B1        .byte $B1   ; 
- D 0 - I - 0x014E61 05:8E51: 8F        .byte $8F   ; 
- D 0 - I - 0x014E62 05:8E52: 8D        .byte $8D   ; 

- D 0 - I - 0x014E63 05:8E53: 01        .byte con_01   ; 

- D 0 - I - 0x014E64 05:8E54: 8A        .byte $8A   ; 

- D 0 - I - 0x014E65 05:8E55: 01        .byte con_01   ; 

- D 0 - I - 0x014E66 05:8E56: 8A        .byte $8A   ; 
- D 0 - I - 0x014E67 05:8E57: A8        .byte $A8   ; 
- D 0 - I - 0x014E68 05:8E58: B1        .byte $B1   ; 
- D 0 - I - 0x014E69 05:8E59: 8F        .byte $8F   ; 
- D 0 - I - 0x014E6A 05:8E5A: AD        .byte $AD   ; 
- D 0 - I - 0x014E6B 05:8E5B: 85        .byte $85   ; 
- D 0 - I - 0x014E6C 05:8E5C: 88        .byte $88   ; 
- D 0 - I - 0x014E6D 05:8E5D: 8D        .byte $8D   ; 
- D 0 - I - 0x014E6E 05:8E5E: B1        .byte $B1   ; 
- D 0 - I - 0x014E6F 05:8E5F: B1        .byte $B1   ; 
- D 0 - I - 0x014E70 05:8E60: 88        .byte $88   ; 
- D 0 - I - 0x014E71 05:8E61: AF        .byte $AF   ; 
- D 0 - I - 0x014E72 05:8E62: B2        .byte $B2   ; 
- D 0 - I - 0x014E73 05:8E63: 91        .byte $91   ; 
- D 0 - I - 0x014E74 05:8E64: 8F        .byte $8F   ; 
- D 0 - I - 0x014E75 05:8E65: AD        .byte $AD   ; 
- D 0 - I - 0x014E76 05:8E66: 8A        .byte $8A   ; 
- D 0 - I - 0x014E77 05:8E67: A8        .byte $A8   ; 
- D 0 - I - 0x014E78 05:8E68: B1        .byte $B1   ; 
- D 0 - I - 0x014E79 05:8E69: 8F        .byte $8F   ; 
- D 0 - I - 0x014E7A 05:8E6A: AD        .byte $AD   ; 
- D 0 - I - 0x014E7B 05:8E6B: 8A        .byte $8A   ; 
- D 0 - I - 0x014E7C 05:8E6C: A8        .byte $A8   ; 
- D 0 - I - 0x014E7D 05:8E6D: B1        .byte $B1   ; 
- D 0 - I - 0x014E7E 05:8E6E: 8F        .byte $8F   ; 
- D 0 - I - 0x014E7F 05:8E6F: AD        .byte $AD   ; 
- D 0 - I - 0x014E80 05:8E70: 85        .byte $85   ; 
- D 0 - I - 0x014E81 05:8E71: 88        .byte $88   ; 
- D 0 - I - 0x014E82 05:8E72: 8D        .byte $8D   ; 
- D 0 - I - 0x014E83 05:8E73: B1        .byte $B1   ; 
- D 0 - I - 0x014E84 05:8E74: B1        .byte $B1   ; 
- D 0 - I - 0x014E85 05:8E75: 88        .byte $88   ; 
- D 0 - I - 0x014E86 05:8E76: AF        .byte $AF   ; 
- D 0 - I - 0x014E87 05:8E77: B2        .byte $B2   ; 
- D 0 - I - 0x014E88 05:8E78: 91        .byte $91   ; 
- D 0 - I - 0x014E89 05:8E79: AF        .byte $AF   ; 
- D 0 - I - 0x014E8A 05:8E7A: 8D        .byte $8D   ; 
off_0E_8E7B:
- D 0 - I - 0x014E8B 05:8E7B: 04        .byte con_04, $08   ; 

- D 0 - I - 0x014E8D 05:8E7D: 8A        .byte $8A   ; 
- D 0 - I - 0x014E8E 05:8E7E: A8        .byte $A8   ; 
- D 0 - I - 0x014E8F 05:8E7F: B1        .byte $B1   ; 
- D 0 - I - 0x014E90 05:8E80: AF        .byte $AF   ; 
- D 0 - I - 0x014E91 05:8E81: 8D        .byte $8D   ; 

- D 0 - I - 0x014E92 05:8E82: 0E        .byte con_0E, $04   ; 
- D 0 - I - 0x014E94 05:8E84: 8E 7B     .dbyt off_0E_8E7B

- D 0 - I - 0x014E96 05:8E86: 8A        .byte $8A   ; 
- D 0 - I - 0x014E97 05:8E87: A8        .byte $A8   ; 
- D 0 - I - 0x014E98 05:8E88: B1        .byte $B1   ; 
- D 0 - I - 0x014E99 05:8E89: 8F        .byte $8F   ; 
- D 0 - I - 0x014E9A 05:8E8A: AD        .byte $AD   ; 

- D 0 - I - 0x014E9B 05:8E8B: 06        .byte con_06, $FA   ; 
- D 0 - I - 0x014E9D 05:8E8D: 01        .byte con_01   ; 

- D 0 - I - 0x014E9E 05:8E8E: ED        .byte $ED   ; 

- D 0 - I - 0x014E9F 05:8E8F: 01        .byte con_01   ; 

- D 0 - I - 0x014EA0 05:8E90: ED        .byte $ED   ; 

- D 0 - I - 0x014EA1 05:8E91: 06        .byte con_06, $78   ; 

- D 0 - I - 0x014EA3 05:8E93: 85        .byte $85   ; 
- D 0 - I - 0x014EA4 05:8E94: 88        .byte $88   ; 
- D 0 - I - 0x014EA5 05:8E95: 8D        .byte $8D   ; 
- D 0 - I - 0x014EA6 05:8E96: B1        .byte $B1   ; 
- D 0 - I - 0x014EA7 05:8E97: B1        .byte $B1   ; 
- D 0 - I - 0x014EA8 05:8E98: 88        .byte $88   ; 
- D 0 - I - 0x014EA9 05:8E99: AF        .byte $AF   ; 
- D 0 - I - 0x014EAA 05:8E9A: B2        .byte $B2   ; 
- D 0 - I - 0x014EAB 05:8E9B: B1        .byte $B1   ; 

- D 0 - I - 0x014EAC 05:8E9C: 09        .byte con_09, $03   ; 

- D 0 - I - 0x014EAE 05:8E9E: B1        .byte $B1   ; 

- D 0 - I - 0x014EAF 05:8E9F: 16        .byte con_jump   ; 
- D 0 - I - 0x014EB0 05:8EA0: 8C 3C     .dbyt loc_16_8C3C


; bzk garbage
- - - - - - 0x014EB2 05:8EA2: 17        .byte con_stop   ; 



_off019_00_8EA3_01:
loc_16_8EA3:
- D 0 - I - 0x014EB3 05:8EA3: 04        .byte con_04, $00   ; 
- D 0 - I - 0x014EB5 05:8EA5: 06        .byte con_06, $78   ; 
- D 0 - I - 0x014EB7 05:8EA7: 07        .byte con_07, $08   ; 
- D 0 - I - 0x014EB9 05:8EA9: 08        .byte con_08, $00   ; 
- D 0 - I - 0x014EBB 05:8EAB: 09        .byte con_09, $02   ; 
- D 0 - I - 0x014EBD 05:8EAD: 18        .byte con_18, $80   ; 
off_0E_8EAF:
- D 0 - I - 0x014EBF 05:8EAF: 04        .byte con_04, $00   ; 

- D 0 - I - 0x014EC1 05:8EB1: 97        .byte $97   ; 
- D 0 - I - 0x014EC2 05:8EB2: 9B        .byte $9B   ; 
- D 0 - I - 0x014EC3 05:8EB3: 9E        .byte $9E   ; 

- D 0 - I - 0x014EC4 05:8EB4: 03        .byte con_03   ; 

- D 0 - I - 0x014EC5 05:8EB5: AB        .byte $AB   ; 
- D 0 - I - 0x014EC6 05:8EB6: AB        .byte $AB   ; 
- D 0 - I - 0x014EC7 05:8EB7: 80        .byte $80   ; 
- D 0 - I - 0x014EC8 05:8EB8: AA        .byte $AA   ; 
- D 0 - I - 0x014EC9 05:8EB9: AD        .byte $AD   ; 
- D 0 - I - 0x014ECA 05:8EBA: AB        .byte $AB   ; 
- D 0 - I - 0x014ECB 05:8EBB: A6        .byte $A6   ; 

- D 0 - I - 0x014ECC 05:8EBC: 03        .byte con_03   ; 

- D 0 - I - 0x014ECD 05:8EBD: 92        .byte $92   ; 
- D 0 - I - 0x014ECE 05:8EBE: 97        .byte $97   ; 
- D 0 - I - 0x014ECF 05:8EBF: 9B        .byte $9B   ; 
- D 0 - I - 0x014ED0 05:8EC0: BE        .byte $BE   ; 
- D 0 - I - 0x014ED1 05:8EC1: BE        .byte $BE   ; 
- D 0 - I - 0x014ED2 05:8EC2: 80        .byte $80   ; 
- D 0 - I - 0x014ED3 05:8EC3: BE        .byte $BE   ; 
- D 0 - I - 0x014ED4 05:8EC4: BC        .byte $BC   ; 
- D 0 - I - 0x014ED5 05:8EC5: BB        .byte $BB   ; 
- D 0 - I - 0x014ED6 05:8EC6: A0        .byte $A0   ; 

- D 0 - I - 0x014ED7 05:8EC7: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x014ED9 05:8EC9: 8E AF     .dbyt off_0E_8EAF
off_0F_8ECB:
- D 0 - I - 0x014EDB 05:8ECB: 04        .byte con_04, $00   ; 
- D 0 - I - 0x014EDD 05:8ECD: 09        .byte con_09, $01   ; 
- D 0 - I - 0x014EDF 05:8ECF: 18        .byte con_18, $40   ; 
- D 0 - I - 0x014EE1 05:8ED1: 08        .byte con_08, $01   ; 
off_0E_8ED3:
- D 0 - I - 0x014EE3 05:8ED3: 04        .byte con_04, $00   ; 

- D 0 - I - 0x014EE5 05:8ED5: 97        .byte $97   ; 
- D 0 - I - 0x014EE6 05:8ED6: 9B        .byte $9B   ; 
- D 0 - I - 0x014EE7 05:8ED7: 9E        .byte $9E   ; 
- D 0 - I - 0x014EE8 05:8ED8: 9B        .byte $9B   ; 
- D 0 - I - 0x014EE9 05:8ED9: 80        .byte $80   ; 
- D 0 - I - 0x014EEA 05:8EDA: 9B        .byte $9B   ; 
- D 0 - I - 0x014EEB 05:8EDB: 80        .byte $80   ; 
- D 0 - I - 0x014EEC 05:8EDC: 9B        .byte $9B   ; 
- D 0 - I - 0x014EED 05:8EDD: D9        .byte $D9   ; 
- D 0 - I - 0x014EEE 05:8EDE: B7        .byte $B7   ; 
- D 0 - I - 0x014EEF 05:8EDF: A0        .byte $A0   ; 
- D 0 - I - 0x014EF0 05:8EE0: 97        .byte $97   ; 
- D 0 - I - 0x014EF1 05:8EE1: 9B        .byte $9B   ; 
- D 0 - I - 0x014EF2 05:8EE2: 9E        .byte $9E   ; 
- D 0 - I - 0x014EF3 05:8EE3: 9B        .byte $9B   ; 
- D 0 - I - 0x014EF4 05:8EE4: 80        .byte $80   ; 
- D 0 - I - 0x014EF5 05:8EE5: 9B        .byte $9B   ; 
- D 0 - I - 0x014EF6 05:8EE6: 80        .byte $80   ; 
- D 0 - I - 0x014EF7 05:8EE7: 9B        .byte $9B   ; 

- D 0 - I - 0x014EF8 05:8EE8: 03        .byte con_03   ; 

- D 0 - I - 0x014EF9 05:8EE9: CA        .byte $CA   ; 
- D 0 - I - 0x014EFA 05:8EEA: AB        .byte $AB   ; 
- D 0 - I - 0x014EFB 05:8EEB: A0        .byte $A0   ; 

- D 0 - I - 0x014EFC 05:8EEC: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x014EFE 05:8EEE: 8E D3     .dbyt off_0E_8ED3

- D 0 - I - 0x014F00 05:8EF0: 08        .byte con_08, $0F   ; 
- D 0 - I - 0x014F02 05:8EF2: 07        .byte con_07, $08   ; 
- D 0 - I - 0x014F04 05:8EF4: 06        .byte con_06, $FA   ; 
- D 0 - I - 0x014F06 05:8EF6: 09        .byte con_09, $02   ; 

- D 0 - I - 0x014F08 05:8EF8: E4        .byte $E4   ; 
- D 0 - I - 0x014F09 05:8EF9: E3        .byte $E3   ; 

- D 0 - I - 0x014F0A 05:8EFA: 02        .byte con_02   ; 
- D 0 - I - 0x014F0B 05:8EFB: 03        .byte con_03   ; 

- D 0 - I - 0x014F0C 05:8EFC: B6        .byte $B6   ; 

- D 0 - I - 0x014F0D 05:8EFD: 02        .byte con_02   ; 

- D 0 - I - 0x014F0E 05:8EFE: B7        .byte $B7   ; 
- D 0 - I - 0x014F0F 05:8EFF: B9        .byte $B9   ; 
- D 0 - I - 0x014F10 05:8F00: F7        .byte $F7   ; 
- D 0 - I - 0x014F11 05:8F01: FC        .byte $FC   ; 
- D 0 - I - 0x014F12 05:8F02: FB        .byte $FB   ; 

- D 0 - I - 0x014F13 05:8F03: 02        .byte con_02   ; 

- D 0 - I - 0x014F14 05:8F04: B6        .byte $B6   ; 

- D 0 - I - 0x014F15 05:8F05: 02        .byte con_02   ; 

- D 0 - I - 0x014F16 05:8F06: B7        .byte $B7   ; 
- D 0 - I - 0x014F17 05:8F07: B9        .byte $B9   ; 

- D 0 - I - 0x014F18 05:8F08: 01        .byte con_01   ; 

- D 0 - I - 0x014F19 05:8F09: DB        .byte $DB   ; 

- D 0 - I - 0x014F1A 05:8F0A: 01        .byte con_01   ; 

- D 0 - I - 0x014F1B 05:8F0B: 9B        .byte $9B   ; 

- D 0 - I - 0x014F1C 05:8F0C: 08        .byte con_08, $0B   ; 
- D 0 - I - 0x014F1E 05:8F0E: 07        .byte con_07, $0A   ; 
- D 0 - I - 0x014F20 05:8F10: 06        .byte con_06, $78   ; 
- D 0 - I - 0x014F22 05:8F12: 03        .byte con_03   ; 

- D 0 - I - 0x014F23 05:8F13: 92        .byte $92   ; 
- D 0 - I - 0x014F24 05:8F14: 92        .byte $92   ; 
- D 0 - I - 0x014F25 05:8F15: 92        .byte $92   ; 
- D 0 - I - 0x014F26 05:8F16: B2        .byte $B2   ; 

- D 0 - I - 0x014F27 05:8F17: 02        .byte con_02   ; 

- D 0 - I - 0x014F28 05:8F18: C0        .byte $C0   ; 

- D 0 - I - 0x014F29 05:8F19: 08        .byte con_08, $01   ; 
- D 0 - I - 0x014F2B 05:8F1B: 09        .byte con_09, $01   ; 
- D 0 - I - 0x014F2D 05:8F1D: 02        .byte con_02   ; 

- D 0 - I - 0x014F2E 05:8F1E: A4        .byte $A4   ; 
- D 0 - I - 0x014F2F 05:8F1F: 90        .byte $90   ; 
- D 0 - I - 0x014F30 05:8F20: 94        .byte $94   ; 
- D 0 - I - 0x014F31 05:8F21: 92        .byte $92   ; 
- D 0 - I - 0x014F32 05:8F22: 90        .byte $90   ; 

- D 0 - I - 0x014F33 05:8F23: 01        .byte con_01   ; 

- D 0 - I - 0x014F34 05:8F24: 92        .byte $92   ; 

- D 0 - I - 0x014F35 05:8F25: 01        .byte con_01   ; 

- D 0 - I - 0x014F36 05:8F26: F2        .byte $F2   ; 

- D 0 - I - 0x014F37 05:8F27: 02        .byte con_02   ; 

- D 0 - I - 0x014F38 05:8F28: AA        .byte $AA   ; 
- D 0 - I - 0x014F39 05:8F29: 8A        .byte $8A   ; 
- D 0 - I - 0x014F3A 05:8F2A: 8D        .byte $8D   ; 
- D 0 - I - 0x014F3B 05:8F2B: 8B        .byte $8B   ; 
- D 0 - I - 0x014F3C 05:8F2C: 8A        .byte $8A   ; 

- D 0 - I - 0x014F3D 05:8F2D: 01        .byte con_01   ; 

- D 0 - I - 0x014F3E 05:8F2E: 92        .byte $92   ; 

- D 0 - I - 0x014F3F 05:8F2F: 01        .byte con_01   ; 

- D 0 - I - 0x014F40 05:8F30: F2        .byte $F2   ; 

- D 0 - I - 0x014F41 05:8F31: 08        .byte con_08, $0F   ; 
- D 0 - I - 0x014F43 05:8F33: 06        .byte con_06, $FA   ; 

- D 0 - I - 0x014F45 05:8F35: EB        .byte $EB   ; 
- D 0 - I - 0x014F46 05:8F36: ED        .byte $ED   ; 
- D 0 - I - 0x014F47 05:8F37: E6        .byte $E6   ; 
- D 0 - I - 0x014F48 05:8F38: E9        .byte $E9   ; 
- D 0 - I - 0x014F49 05:8F39: E4        .byte $E4   ; 
- D 0 - I - 0x014F4A 05:8F3A: E6        .byte $E6   ; 

- D 0 - I - 0x014F4B 05:8F3B: 08        .byte con_08, $00   ; 
- D 0 - I - 0x014F4D 05:8F3D: 02        .byte con_02   ; 

- D 0 - I - 0x014F4E 05:8F3E: AB        .byte $AB   ; 

- D 0 - I - 0x014F4F 05:8F3F: 06        .byte con_06, $78   ; 

- D 0 - I - 0x014F51 05:8F41: 97        .byte $97   ; 
- D 0 - I - 0x014F52 05:8F42: 96        .byte $96   ; 
- D 0 - I - 0x014F53 05:8F43: 94        .byte $94   ; 
- D 0 - I - 0x014F54 05:8F44: 8F        .byte $8F   ; 

- D 0 - I - 0x014F55 05:8F45: 01        .byte con_01   ; 

- D 0 - I - 0x014F56 05:8F46: 85        .byte $85   ; 

- D 0 - I - 0x014F57 05:8F47: 01        .byte con_01   ; 

- D 0 - I - 0x014F58 05:8F48: E5        .byte $E5   ; 

- D 0 - I - 0x014F59 05:8F49: 06        .byte con_06, $FA   ; 
- D 0 - I - 0x014F5B 05:8F4B: 08        .byte con_08, $0F   ; 
- D 0 - I - 0x014F5D 05:8F4D: 03        .byte con_03   ; 

- D 0 - I - 0x014F5E 05:8F4E: F7        .byte $F7   ; 
- D 0 - I - 0x014F5F 05:8F4F: F9        .byte $F9   ; 

- D 0 - I - 0x014F60 05:8F50: 08        .byte con_08, $01   ; 
- D 0 - I - 0x014F62 05:8F52: 06        .byte con_06, $78   ; 
- D 0 - I - 0x014F64 05:8F54: 09        .byte con_09, $02   ; 

- D 0 - I - 0x014F66 05:8F56: 13        .byte con_13, $00   ; 
- D 0 - I - 0x014F68 05:8F58: 8F 74     .dbyt off_13_8F74

- D 0 - I - 0x014F6A 05:8F5A: 97        .byte $97   ; 
- D 0 - I - 0x014F6B 05:8F5B: 9B        .byte $9B   ; 
- D 0 - I - 0x014F6C 05:8F5C: 9E        .byte $9E   ; 

- D 0 - I - 0x014F6D 05:8F5D: 03        .byte con_03   ; 

- D 0 - I - 0x014F6E 05:8F5E: AB        .byte $AB   ; 
- D 0 - I - 0x014F6F 05:8F5F: AB        .byte $AB   ; 
- D 0 - I - 0x014F70 05:8F60: 80        .byte $80   ; 
- D 0 - I - 0x014F71 05:8F61: AA        .byte $AA   ; 
- D 0 - I - 0x014F72 05:8F62: AD        .byte $AD   ; 
- D 0 - I - 0x014F73 05:8F63: AB        .byte $AB   ; 
- D 0 - I - 0x014F74 05:8F64: A6        .byte $A6   ; 

- D 0 - I - 0x014F75 05:8F65: 03        .byte con_03   ; 

- D 0 - I - 0x014F76 05:8F66: 92        .byte $92   ; 
- D 0 - I - 0x014F77 05:8F67: 97        .byte $97   ; 
- D 0 - I - 0x014F78 05:8F68: 9B        .byte $9B   ; 
- D 0 - I - 0x014F79 05:8F69: BE        .byte $BE   ; 
- D 0 - I - 0x014F7A 05:8F6A: BE        .byte $BE   ; 
- D 0 - I - 0x014F7B 05:8F6B: 80        .byte $80   ; 
- D 0 - I - 0x014F7C 05:8F6C: BE        .byte $BE   ; 
- D 0 - I - 0x014F7D 05:8F6D: BC        .byte $BC   ; 
- D 0 - I - 0x014F7E 05:8F6E: BB        .byte $BB   ; 
- D 0 - I - 0x014F7F 05:8F6F: A0        .byte $A0   ; 

- D 0 - I - 0x014F80 05:8F70: 0F        .byte con_0F, $01   ; 
- D 0 - I - 0x014F82 05:8F72: 8E CB     .dbyt off_0F_8ECB
off_13_8F74:
- D 0 - I - 0x014F84 05:8F74: 08        .byte con_08, $01   ; 
- D 0 - I - 0x014F86 05:8F76: 09        .byte con_09, $01   ; 
- D 0 - I - 0x014F88 05:8F78: 06        .byte con_06, $96   ; 

- D 0 - I - 0x014F8A 05:8F7A: 90        .byte $90   ; 
- D 0 - I - 0x014F8B 05:8F7B: 97        .byte $97   ; 
- D 0 - I - 0x014F8C 05:8F7C: 9C        .byte $9C   ; 

- D 0 - I - 0x014F8D 05:8F7D: 03        .byte con_03   ; 

- D 0 - I - 0x014F8E 05:8F7E: A8        .byte $A8   ; 
- D 0 - I - 0x014F8F 05:8F7F: A4        .byte $A4   ; 

- D 0 - I - 0x014F90 05:8F80: 03        .byte con_03   ; 

- D 0 - I - 0x014F91 05:8F81: 97        .byte $97   ; 
- D 0 - I - 0x014F92 05:8F82: FE        .byte $FE   ; 
- D 0 - I - 0x014F93 05:8F83: 92        .byte $92   ; 
- D 0 - I - 0x014F94 05:8F84: 9C        .byte $9C   ; 

- D 0 - I - 0x014F95 05:8F85: 03        .byte con_03   ; 

- D 0 - I - 0x014F96 05:8F86: 8A        .byte $8A   ; 
- D 0 - I - 0x014F97 05:8F87: AD        .byte $AD   ; 
- D 0 - I - 0x014F98 05:8F88: AA        .byte $AA   ; 
- D 0 - I - 0x014F99 05:8F89: 84        .byte $84   ; 
- D 0 - I - 0x014F9A 05:8F8A: C3        .byte $C3   ; 
- D 0 - I - 0x014F9B 05:8F8B: C6        .byte $C6   ; 

- D 0 - I - 0x014F9C 05:8F8C: 08        .byte con_08, $0F   ; 
- D 0 - I - 0x014F9E 05:8F8E: 06        .byte con_06, $FA   ; 
- D 0 - I - 0x014FA0 05:8F90: 03        .byte con_03   ; 

- D 0 - I - 0x014FA1 05:8F91: F7        .byte $F7   ; 
- D 0 - I - 0x014FA2 05:8F92: F9        .byte $F9   ; 
- D 0 - I - 0x014FA3 05:8F93: FE        .byte $FE   ; 

- D 0 - I - 0x014FA4 05:8F94: 03        .byte con_03   ; 

- D 0 - I - 0x014FA5 05:8F95: E9        .byte $E9   ; 
- D 0 - I - 0x014FA6 05:8F96: E4        .byte $E4   ; 
- D 0 - I - 0x014FA7 05:8F97: E6        .byte $E6   ; 
- D 0 - I - 0x014FA8 05:8F98: EB        .byte $EB   ; 
- D 0 - I - 0x014FA9 05:8F99: E5        .byte $E5   ; 

- D 0 - I - 0x014FAA 05:8F9A: 03        .byte con_03   ; 

- D 0 - I - 0x014FAB 05:8F9B: F7        .byte $F7   ; 
- D 0 - I - 0x014FAC 05:8F9C: F9        .byte $F9   ; 

- D 0 - I - 0x014FAD 05:8F9D: 08        .byte con_08, $01   ; 
- D 0 - I - 0x014FAF 05:8F9F: 06        .byte con_06, $78   ; 
- D 0 - I - 0x014FB1 05:8FA1: 09        .byte con_09, $02   ; 

- D 0 - I - 0x014FB3 05:8FA3: 9B        .byte $9B   ; 
- D 0 - I - 0x014FB4 05:8FA4: 9E        .byte $9E   ; 

- D 0 - I - 0x014FB5 05:8FA5: 03        .byte con_03   ; 

- D 0 - I - 0x014FB6 05:8FA6: 8B        .byte $8B   ; 
- D 0 - I - 0x014FB7 05:8FA7: AB        .byte $AB   ; 
- D 0 - I - 0x014FB8 05:8FA8: AB        .byte $AB   ; 
- D 0 - I - 0x014FB9 05:8FA9: 86        .byte $86   ; 
- D 0 - I - 0x014FBA 05:8FAA: AA        .byte $AA   ; 
- D 0 - I - 0x014FBB 05:8FAB: AD        .byte $AD   ; 
- D 0 - I - 0x014FBC 05:8FAC: AB        .byte $AB   ; 
- D 0 - I - 0x014FBD 05:8FAD: A0        .byte $A0   ; 
off_0F_8FAE:
- D 0 - I - 0x014FBE 05:8FAE: 04        .byte con_04, $00   ; 
- D 0 - I - 0x014FC0 05:8FB0: 08        .byte con_08, $01   ; 
- D 0 - I - 0x014FC2 05:8FB2: 06        .byte con_06, $78   ; 
off_0E_8FB4:
- D 0 - I - 0x014FC4 05:8FB4: 04        .byte con_04, $00   ; 

- D 0 - I - 0x014FC6 05:8FB6: B9        .byte $B9   ; 
- D 0 - I - 0x014FC7 05:8FB7: 9E        .byte $9E   ; 
- D 0 - I - 0x014FC8 05:8FB8: B2        .byte $B2   ; 
- D 0 - I - 0x014FC9 05:8FB9: B6        .byte $B6   ; 

- D 0 - I - 0x014FCA 05:8FBA: 01        .byte con_01   ; 

- D 0 - I - 0x014FCB 05:8FBB: 97        .byte $97   ; 

- D 0 - I - 0x014FCC 05:8FBC: 01        .byte con_01   ; 

- D 0 - I - 0x014FCD 05:8FBD: 97        .byte $97   ; 
- D 0 - I - 0x014FCE 05:8FBE: BE        .byte $BE   ; 
- D 0 - I - 0x014FCF 05:8FBF: 92        .byte $92   ; 
- D 0 - I - 0x014FD0 05:8FC0: B7        .byte $B7   ; 
- D 0 - I - 0x014FD1 05:8FC1: BE        .byte $BE   ; 

- D 0 - I - 0x014FD2 05:8FC2: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x014FD4 05:8FC4: 8F B4     .dbyt off_0E_8FB4

- D 0 - I - 0x014FD6 05:8FC6: 02        .byte con_02   ; 

- D 0 - I - 0x014FD7 05:8FC7: B0        .byte $B0   ; 
- D 0 - I - 0x014FD8 05:8FC8: 97        .byte $97   ; 

- D 0 - I - 0x014FD9 05:8FC9: 02        .byte con_02   ; 

- D 0 - I - 0x014FDA 05:8FCA: BC        .byte $BC   ; 
- D 0 - I - 0x014FDB 05:8FCB: 9B        .byte $9B   ; 
- D 0 - I - 0x014FDC 05:8FCC: 80        .byte $80   ; 
- D 0 - I - 0x014FDD 05:8FCD: 9B        .byte $9B   ; 
- D 0 - I - 0x014FDE 05:8FCE: 80        .byte $80   ; 
- D 0 - I - 0x014FDF 05:8FCF: 99        .byte $99   ; 
- D 0 - I - 0x014FE0 05:8FD0: D7        .byte $D7   ; 

- D 0 - I - 0x014FE1 05:8FD1: 13        .byte con_13, $00   ; 
- D 0 - I - 0x014FE3 05:8FD3: 8F E3     .dbyt off_13_8FE3

- D 0 - I - 0x014FE5 05:8FD5: 08        .byte con_08, $0F   ; 
- D 0 - I - 0x014FE7 05:8FD7: 06        .byte con_06, $FA   ; 
- D 0 - I - 0x014FE9 05:8FD9: 02        .byte con_02   ; 

- D 0 - I - 0x014FEA 05:8FDA: B6        .byte $B6   ; 
- D 0 - I - 0x014FEB 05:8FDB: 99        .byte $99   ; 

- D 0 - I - 0x014FEC 05:8FDC: 03        .byte con_03   ; 

- D 0 - I - 0x014FED 05:8FDD: C8        .byte $C8   ; 
- D 0 - I - 0x014FEE 05:8FDE: E6        .byte $E6   ; 

- D 0 - I - 0x014FEF 05:8FDF: 0F        .byte con_0F, $01   ; 
- D 0 - I - 0x014FF1 05:8FE1: 8F AE     .dbyt off_0F_8FAE
off_13_8FE3:
- D 0 - I - 0x014FF3 05:8FE3: B9        .byte $B9   ; 
- D 0 - I - 0x014FF4 05:8FE4: B9        .byte $B9   ; 
- D 0 - I - 0x014FF5 05:8FE5: BC        .byte $BC   ; 
- D 0 - I - 0x014FF6 05:8FE6: B9        .byte $B9   ; 
- D 0 - I - 0x014FF7 05:8FE7: BB        .byte $BB   ; 
- D 0 - I - 0x014FF8 05:8FE8: 80        .byte $80   ; 

- D 0 - I - 0x014FF9 05:8FE9: 08        .byte con_08, $0F   ; 

- D 0 - I - 0x014FFB 05:8FEB: BE        .byte $BE   ; 
- D 0 - I - 0x014FFC 05:8FEC: BC        .byte $BC   ; 
- D 0 - I - 0x014FFD 05:8FED: 9B        .byte $9B   ; 
- D 0 - I - 0x014FFE 05:8FEE: FC        .byte $FC   ; 

- D 0 - I - 0x014FFF 05:8FEF: 02        .byte con_02   ; 

- D 0 - I - 0x015000 05:8FF0: BB        .byte $BB   ; 
- D 0 - I - 0x015001 05:8FF1: BE        .byte $BE   ; 
- D 0 - I - 0x015002 05:8FF2: BC        .byte $BC   ; 
- D 0 - I - 0x015003 05:8FF3: 9B        .byte $9B   ; 
- D 0 - I - 0x015004 05:8FF4: FC        .byte $FC   ; 

- D 0 - I - 0x015005 05:8FF5: 02        .byte con_02   ; 

- D 0 - I - 0x015006 05:8FF6: BB        .byte $BB   ; 
- D 0 - I - 0x015007 05:8FF7: BE        .byte $BE   ; 
- D 0 - I - 0x015008 05:8FF8: BC        .byte $BC   ; 
- D 0 - I - 0x015009 05:8FF9: 9B        .byte $9B   ; 
- D 0 - I - 0x01500A 05:8FFA: FC        .byte $FC   ; 
- D 0 - I - 0x01500B 05:8FFB: F9        .byte $F9   ; 
- D 0 - I - 0x01500C 05:8FFC: 9B        .byte $9B   ; 
- D 0 - I - 0x01500D 05:8FFD: BC        .byte $BC   ; 
- D 0 - I - 0x01500E 05:8FFE: 9E        .byte $9E   ; 
- D 0 - I - 0x01500F 05:8FFF: C0        .byte $C0   ; 

- D 0 - I - 0x015010 05:9000: 02        .byte con_02   ; 

- D 0 - I - 0x015011 05:9001: BB        .byte $BB   ; 

- D 0 - I - 0x015012 05:9002: 02        .byte con_02   ; 

- D 0 - I - 0x015013 05:9003: BC        .byte $BC   ; 
- D 0 - I - 0x015014 05:9004: BE        .byte $BE   ; 
- D 0 - I - 0x015015 05:9005: BC        .byte $BC   ; 

- D 0 - I - 0x015016 05:9006: 03        .byte con_03   ; 

- D 0 - I - 0x015017 05:9007: 88        .byte $88   ; 
- D 0 - I - 0x015018 05:9008: A8        .byte $A8   ; 
- D 0 - I - 0x015019 05:9009: 84        .byte $84   ; 
- D 0 - I - 0x01501A 05:900A: AA        .byte $AA   ; 
- D 0 - I - 0x01501B 05:900B: E6        .byte $E6   ; 

- D 0 - I - 0x01501C 05:900C: 02        .byte con_02   ; 

- D 0 - I - 0x01501D 05:900D: B2        .byte $B2   ; 

- D 0 - I - 0x01501E 05:900E: 02        .byte con_02   ; 

- D 0 - I - 0x01501F 05:900F: B0        .byte $B0   ; 
- D 0 - I - 0x015020 05:9010: AF        .byte $AF   ; 
- D 0 - I - 0x015021 05:9011: E5        .byte $E5   ; 

- D 0 - I - 0x015022 05:9012: 18        .byte con_18, $40   ; 
- D 0 - I - 0x015024 05:9014: 08        .byte con_08, $01   ; 
- D 0 - I - 0x015026 05:9016: 03        .byte con_03   ; 

- D 0 - I - 0x015027 05:9017: 90        .byte $90   ; 
- D 0 - I - 0x015028 05:9018: 97        .byte $97   ; 
- D 0 - I - 0x015029 05:9019: 9C        .byte $9C   ; 

- D 0 - I - 0x01502A 05:901A: 03        .byte con_03   ; 

- D 0 - I - 0x01502B 05:901B: AB        .byte $AB   ; 
- D 0 - I - 0x01502C 05:901C: A8        .byte $A8   ; 
- D 0 - I - 0x01502D 05:901D: 84        .byte $84   ; 

- D 0 - I - 0x01502E 05:901E: 03        .byte con_03   ; 

- D 0 - I - 0x01502F 05:901F: 92        .byte $92   ; 
- D 0 - I - 0x015030 05:9020: 97        .byte $97   ; 
- D 0 - I - 0x015031 05:9021: 99        .byte $99   ; 
- D 0 - I - 0x015032 05:9022: BE        .byte $BE   ; 
- D 0 - I - 0x015033 05:9023: B9        .byte $B9   ; 
- D 0 - I - 0x015034 05:9024: 96        .byte $96   ; 
- D 0 - I - 0x015035 05:9025: 97        .byte $97   ; 
- D 0 - I - 0x015036 05:9026: 9B        .byte $9B   ; 
- D 0 - I - 0x015037 05:9027: 9E        .byte $9E   ; 

- D 0 - I - 0x015038 05:9028: 03        .byte con_03   ; 

- D 0 - I - 0x015039 05:9029: AB        .byte $AB   ; 
- D 0 - I - 0x01503A 05:902A: AB        .byte $AB   ; 
- D 0 - I - 0x01503B 05:902B: 80        .byte $80   ; 
- D 0 - I - 0x01503C 05:902C: AA        .byte $AA   ; 
- D 0 - I - 0x01503D 05:902D: AD        .byte $AD   ; 
- D 0 - I - 0x01503E 05:902E: AB        .byte $AB   ; 
- D 0 - I - 0x01503F 05:902F: A6        .byte $A6   ; 

- D 0 - I - 0x015040 05:9030: 03        .byte con_03   ; 

- D 0 - I - 0x015041 05:9031: 92        .byte $92   ; 
- D 0 - I - 0x015042 05:9032: 97        .byte $97   ; 
- D 0 - I - 0x015043 05:9033: 9B        .byte $9B   ; 
- D 0 - I - 0x015044 05:9034: BE        .byte $BE   ; 
- D 0 - I - 0x015045 05:9035: BE        .byte $BE   ; 
- D 0 - I - 0x015046 05:9036: 80        .byte $80   ; 
- D 0 - I - 0x015047 05:9037: BE        .byte $BE   ; 
- D 0 - I - 0x015048 05:9038: BC        .byte $BC   ; 
- D 0 - I - 0x015049 05:9039: BB        .byte $BB   ; 
- D 0 - I - 0x01504A 05:903A: A0        .byte $A0   ; 
- D 0 - I - 0x01504B 05:903B: 99        .byte $99   ; 
- D 0 - I - 0x01504C 05:903C: 9D        .byte $9D   ; 

- D 0 - I - 0x01504D 05:903D: 03        .byte con_03   ; 

- D 0 - I - 0x01504E 05:903E: 88        .byte $88   ; 
- D 0 - I - 0x01504F 05:903F: AD        .byte $AD   ; 
- D 0 - I - 0x015050 05:9040: AD        .byte $AD   ; 
- D 0 - I - 0x015051 05:9041: 80        .byte $80   ; 
- D 0 - I - 0x015052 05:9042: A8        .byte $A8   ; 
- D 0 - I - 0x015053 05:9043: AF        .byte $AF   ; 
- D 0 - I - 0x015054 05:9044: AD        .byte $AD   ; 
- D 0 - I - 0x015055 05:9045: A0        .byte $A0   ; 

- D 0 - I - 0x015056 05:9046: 09        .byte con_09, $01   ; 
- D 0 - I - 0x015058 05:9048: 06        .byte con_06, $96   ; 
- D 0 - I - 0x01505A 05:904A: 02        .byte con_02   ; 
- D 0 - I - 0x01505B 05:904B: 03        .byte con_03   ; 

- D 0 - I - 0x01505C 05:904C: B4        .byte $B4   ; 

- D 0 - I - 0x01505D 05:904D: 02        .byte con_02   ; 

- D 0 - I - 0x01505E 05:904E: B9        .byte $B9   ; 

- D 0 - I - 0x01505F 05:904F: 01        .byte con_01   ; 

- D 0 - I - 0x015060 05:9050: BD        .byte $BD   ; 

- D 0 - I - 0x015061 05:9051: 01        .byte con_01   ; 

- D 0 - I - 0x015062 05:9052: 9D        .byte $9D   ; 

- D 0 - I - 0x015063 05:9053: 03        .byte con_03   ; 

- D 0 - I - 0x015064 05:9054: 88        .byte $88   ; 
- D 0 - I - 0x015065 05:9055: A8        .byte $A8   ; 
- D 0 - I - 0x015066 05:9056: 8D        .byte $8D   ; 
- D 0 - I - 0x015067 05:9057: 88        .byte $88   ; 
- D 0 - I - 0x015068 05:9058: A5        .byte $A5   ; 

- D 0 - I - 0x015069 05:9059: 02        .byte con_02   ; 

- D 0 - I - 0x01506A 05:905A: AA        .byte $AA   ; 
- D 0 - I - 0x01506B 05:905B: B2        .byte $B2   ; 
- D 0 - I - 0x01506C 05:905C: 91        .byte $91   ; 
- D 0 - I - 0x01506D 05:905D: AF        .byte $AF   ; 
- D 0 - I - 0x01506E 05:905E: E8        .byte $E8   ; 

- D 0 - I - 0x01506F 05:905F: 02        .byte con_02   ; 

- D 0 - I - 0x015070 05:9060: AC        .byte $AC   ; 
- D 0 - I - 0x015071 05:9061: AF        .byte $AF   ; 
- D 0 - I - 0x015072 05:9062: 8D        .byte $8D   ; 
- D 0 - I - 0x015073 05:9063: AC        .byte $AC   ; 

- D 0 - I - 0x015074 05:9064: 08        .byte con_08, $0F   ; 
- D 0 - I - 0x015076 05:9066: 06        .byte con_06, $FA   ; 

- D 0 - I - 0x015078 05:9068: ED        .byte $ED   ; 
- D 0 - I - 0x015079 05:9069: E1        .byte $E1   ; 

- D 0 - I - 0x01507A 05:906A: 03        .byte con_03   ; 

- D 0 - I - 0x01507B 05:906B: F4        .byte $F4   ; 

- D 0 - I - 0x01507C 05:906C: 03        .byte con_03   ; 

- D 0 - I - 0x01507D 05:906D: E8        .byte $E8   ; 
- D 0 - I - 0x01507E 05:906E: EB        .byte $EB   ; 
- D 0 - I - 0x01507F 05:906F: E1        .byte $E1   ; 
- D 0 - I - 0x015080 05:9070: E8        .byte $E8   ; 
- D 0 - I - 0x015081 05:9071: EA        .byte $EA   ; 
- D 0 - I - 0x015082 05:9072: E7        .byte $E7   ; 
- D 0 - I - 0x015083 05:9073: E1        .byte $E1   ; 

- D 0 - I - 0x015084 05:9074: 03        .byte con_03   ; 

- D 0 - I - 0x015085 05:9075: F8        .byte $F8   ; 

- D 0 - I - 0x015086 05:9076: 08        .byte con_08, $00   ; 
- D 0 - I - 0x015088 05:9078: 09        .byte con_09, $02   ; 
- D 0 - I - 0x01508A 05:907A: 18        .byte con_18, $80   ; 
- D 0 - I - 0x01508C 05:907C: 06        .byte con_06, $78   ; 

- D 0 - I - 0x01508E 05:907E: 99        .byte $99   ; 
- D 0 - I - 0x01508F 05:907F: 9D        .byte $9D   ; 

- D 0 - I - 0x015090 05:9080: 03        .byte con_03   ; 

- D 0 - I - 0x015091 05:9081: 88        .byte $88   ; 
- D 0 - I - 0x015092 05:9082: A8        .byte $A8   ; 
- D 0 - I - 0x015093 05:9083: A8        .byte $A8   ; 
- D 0 - I - 0x015094 05:9084: 80        .byte $80   ; 
- D 0 - I - 0x015095 05:9085: AC        .byte $AC   ; 
- D 0 - I - 0x015096 05:9086: AF        .byte $AF   ; 
- D 0 - I - 0x015097 05:9087: 8D        .byte $8D   ; 

- D 0 - I - 0x015098 05:9088: 02        .byte con_02   ; 

- D 0 - I - 0x015099 05:9089: A0        .byte $A0   ; 

- D 0 - I - 0x01509A 05:908A: 08        .byte con_08, $0F   ; 
- D 0 - I - 0x01509C 05:908C: 18        .byte con_18, $40   ; 
- D 0 - I - 0x01509E 05:908E: 06        .byte con_06, $FA   ; 

- D 0 - I - 0x0150A0 05:9090: E1        .byte $E1   ; 

- D 0 - I - 0x0150A1 05:9091: 03        .byte con_03   ; 

- D 0 - I - 0x0150A2 05:9092: F8        .byte $F8   ; 

- D 0 - I - 0x0150A3 05:9093: 08        .byte con_08, $01   ; 
- D 0 - I - 0x0150A5 05:9095: 18        .byte con_18, $80   ; 
- D 0 - I - 0x0150A7 05:9097: 06        .byte con_06, $78   ; 

- D 0 - I - 0x0150A9 05:9099: 99        .byte $99   ; 
- D 0 - I - 0x0150AA 05:909A: 9D        .byte $9D   ; 

- D 0 - I - 0x0150AB 05:909B: 03        .byte con_03   ; 

- D 0 - I - 0x0150AC 05:909C: 88        .byte $88   ; 
- D 0 - I - 0x0150AD 05:909D: A8        .byte $A8   ; 
- D 0 - I - 0x0150AE 05:909E: A8        .byte $A8   ; 
- D 0 - I - 0x0150AF 05:909F: 80        .byte $80   ; 
- D 0 - I - 0x0150B0 05:90A0: AC        .byte $AC   ; 
- D 0 - I - 0x0150B1 05:90A1: AF        .byte $AF   ; 
- D 0 - I - 0x0150B2 05:90A2: 8D        .byte $8D   ; 

- D 0 - I - 0x0150B3 05:90A3: 02        .byte con_02   ; 

- D 0 - I - 0x0150B4 05:90A4: A0        .byte $A0   ; 

- D 0 - I - 0x0150B5 05:90A5: 09        .byte con_09, $01   ; 
- D 0 - I - 0x0150B7 05:90A7: 03        .byte con_03   ; 

- D 0 - I - 0x0150B8 05:90A8: 92        .byte $92   ; 
- D 0 - I - 0x0150B9 05:90A9: 99        .byte $99   ; 
- D 0 - I - 0x0150BA 05:90AA: 9E        .byte $9E   ; 

- D 0 - I - 0x0150BB 05:90AB: 03        .byte con_03   ; 

- D 0 - I - 0x0150BC 05:90AC: AA        .byte $AA   ; 
- D 0 - I - 0x0150BD 05:90AD: A6        .byte $A6   ; 
- D 0 - I - 0x0150BE 05:90AE: 81        .byte $81   ; 

- D 0 - I - 0x0150BF 05:90AF: 03        .byte con_03   ; 

- D 0 - I - 0x0150C0 05:90B0: 94        .byte $94   ; 
- D 0 - I - 0x0150C1 05:90B1: 98        .byte $98   ; 
- D 0 - I - 0x0150C2 05:90B2: 9B        .byte $9B   ; 

- D 0 - I - 0x0150C3 05:90B3: 03        .byte con_03   ; 

- D 0 - I - 0x0150C4 05:90B4: AA        .byte $AA   ; 
- D 0 - I - 0x0150C5 05:90B5: A3        .byte $A3   ; 

- D 0 - I - 0x0150C6 05:90B6: 03        .byte con_03   ; 

- D 0 - I - 0x0150C7 05:90B7: 98        .byte $98   ; 
- D 0 - I - 0x0150C8 05:90B8: 96        .byte $96   ; 
- D 0 - I - 0x0150C9 05:90B9: 99        .byte $99   ; 
- D 0 - I - 0x0150CA 05:90BA: 9D        .byte $9D   ; 

- D 0 - I - 0x0150CB 05:90BB: 03        .byte con_03   ; 

- D 0 - I - 0x0150CC 05:90BC: AA        .byte $AA   ; 
- D 0 - I - 0x0150CD 05:90BD: A5        .byte $A5   ; 
- D 0 - I - 0x0150CE 05:90BE: 81        .byte $81   ; 

- D 0 - I - 0x0150CF 05:90BF: 03        .byte con_03   ; 

- D 0 - I - 0x0150D0 05:90C0: 93        .byte $93   ; 
- D 0 - I - 0x0150D1 05:90C1: 96        .byte $96   ; 
- D 0 - I - 0x0150D2 05:90C2: 99        .byte $99   ; 
- D 0 - I - 0x0150D3 05:90C3: BD        .byte $BD   ; 
- D 0 - I - 0x0150D4 05:90C4: B9        .byte $B9   ; 
- D 0 - I - 0x0150D5 05:90C5: 96        .byte $96   ; 
- D 0 - I - 0x0150D6 05:90C6: 92        .byte $92   ; 
- D 0 - I - 0x0150D7 05:90C7: 99        .byte $99   ; 
- D 0 - I - 0x0150D8 05:90C8: 9E        .byte $9E   ; 

- D 0 - I - 0x0150D9 05:90C9: 03        .byte con_03   ; 

- D 0 - I - 0x0150DA 05:90CA: AA        .byte $AA   ; 
- D 0 - I - 0x0150DB 05:90CB: A6        .byte $A6   ; 
- D 0 - I - 0x0150DC 05:90CC: 81        .byte $81   ; 

- D 0 - I - 0x0150DD 05:90CD: 03        .byte con_03   ; 

- D 0 - I - 0x0150DE 05:90CE: 94        .byte $94   ; 
- D 0 - I - 0x0150DF 05:90CF: 99        .byte $99   ; 
- D 0 - I - 0x0150E0 05:90D0: 9B        .byte $9B   ; 

- D 0 - I - 0x0150E1 05:90D1: 03        .byte con_03   ; 

- D 0 - I - 0x0150E2 05:90D2: A8        .byte $A8   ; 
- D 0 - I - 0x0150E3 05:90D3: A3        .byte $A3   ; 

- D 0 - I - 0x0150E4 05:90D4: 03        .byte con_03   ; 

- D 0 - I - 0x0150E5 05:90D5: 98        .byte $98   ; 
- D 0 - I - 0x0150E6 05:90D6: 9D        .byte $9D   ; 

- D 0 - I - 0x0150E7 05:90D7: 03        .byte con_03   ; 

- D 0 - I - 0x0150E8 05:90D8: 88        .byte $88   ; 
- D 0 - I - 0x0150E9 05:90D9: 8D        .byte $8D   ; 
- D 0 - I - 0x0150EA 05:90DA: B1        .byte $B1   ; 
- D 0 - I - 0x0150EB 05:90DB: B1        .byte $B1   ; 
- D 0 - I - 0x0150EC 05:90DC: 88        .byte $88   ; 
- D 0 - I - 0x0150ED 05:90DD: AF        .byte $AF   ; 
- D 0 - I - 0x0150EE 05:90DE: B2        .byte $B2   ; 
- D 0 - I - 0x0150EF 05:90DF: B1        .byte $B1   ; 
- D 0 - I - 0x0150F0 05:90E0: AD        .byte $AD   ; 

- D 0 - I - 0x0150F1 05:90E1: 09        .byte con_09, $02   ; 

- D 0 - I - 0x0150F3 05:90E3: 81        .byte $81   ; 
- D 0 - I - 0x0150F4 05:90E4: 85        .byte $85   ; 
- D 0 - I - 0x0150F5 05:90E5: 88        .byte $88   ; 
- D 0 - I - 0x0150F6 05:90E6: A8        .byte $A8   ; 
- D 0 - I - 0x0150F7 05:90E7: A8        .byte $A8   ; 
- D 0 - I - 0x0150F8 05:90E8: 80        .byte $80   ; 
- D 0 - I - 0x0150F9 05:90E9: A8        .byte $A8   ; 
- D 0 - I - 0x0150FA 05:90EA: AC        .byte $AC   ; 
- D 0 - I - 0x0150FB 05:90EB: A8        .byte $A8   ; 

- D 0 - I - 0x0150FC 05:90EC: 09        .byte con_09, $03   ; 

- D 0 - I - 0x0150FE 05:90EE: A8        .byte $A8   ; 

- D 0 - I - 0x0150FF 05:90EF: 16        .byte con_jump   ; 
- D 0 - I - 0x015100 05:90F0: 8E A3     .dbyt loc_16_8EA3


; bzk garbage
- - - - - - 0x015102 05:90F2: 17        .byte con_stop   ; 



_off019_00_90F3_02:
loc_16_90F3:
- D 0 - I - 0x015103 05:90F3: 04        .byte con_04, $00   ; 
- D 0 - I - 0x015105 05:90F5: 06        .byte con_06, $C8   ; 
- D 0 - I - 0x015107 05:90F7: 08        .byte con_08, $01   ; 
- D 0 - I - 0x015109 05:90F9: 09        .byte con_09, $02   ; 
off_0E_90FB:
- D 0 - I - 0x01510B 05:90FB: 04        .byte con_04, $00   ; 

- D 0 - I - 0x01510D 05:90FD: 97        .byte $97   ; 
- D 0 - I - 0x01510E 05:90FE: A0        .byte $A0   ; 
- D 0 - I - 0x01510F 05:90FF: 97        .byte $97   ; 
- D 0 - I - 0x015110 05:9100: 80        .byte $80   ; 
- D 0 - I - 0x015111 05:9101: 97        .byte $97   ; 
- D 0 - I - 0x015112 05:9102: 80        .byte $80   ; 
- D 0 - I - 0x015113 05:9103: 97        .byte $97   ; 
- D 0 - I - 0x015114 05:9104: B2        .byte $B2   ; 
- D 0 - I - 0x015115 05:9105: B2        .byte $B2   ; 
- D 0 - I - 0x015116 05:9106: B7        .byte $B7   ; 
- D 0 - I - 0x015117 05:9107: A0        .byte $A0   ; 

- D 0 - I - 0x015118 05:9108: 0E        .byte con_0E, $03   ; 
- D 0 - I - 0x01511A 05:910A: 90 FB     .dbyt off_0E_90FB
off_0F_910C:
- D 0 - I - 0x01511C 05:910C: 04        .byte con_04, $00   ; 
off_0E_910E:
- D 0 - I - 0x01511E 05:910E: 04        .byte con_04, $00   ; 
- D 0 - I - 0x015120 05:9110: 02        .byte con_02   ; 

- D 0 - I - 0x015121 05:9111: B7        .byte $B7   ; 
- D 0 - I - 0x015122 05:9112: 9B        .byte $9B   ; 
- D 0 - I - 0x015123 05:9113: 80        .byte $80   ; 
- D 0 - I - 0x015124 05:9114: 9B        .byte $9B   ; 
- D 0 - I - 0x015125 05:9115: A0        .byte $A0   ; 
- D 0 - I - 0x015126 05:9116: B2        .byte $B2   ; 
- D 0 - I - 0x015127 05:9117: B2        .byte $B2   ; 
- D 0 - I - 0x015128 05:9118: B7        .byte $B7   ; 
- D 0 - I - 0x015129 05:9119: B7        .byte $B7   ; 

- D 0 - I - 0x01512A 05:911A: 0E        .byte con_0E, $03   ; 
- D 0 - I - 0x01512C 05:911C: 91 0E     .dbyt off_0E_910E

- D 0 - I - 0x01512E 05:911E: 02        .byte con_02   ; 

- D 0 - I - 0x01512F 05:911F: B0        .byte $B0   ; 

- D 0 - I - 0x015130 05:9120: 02        .byte con_02   ; 

- D 0 - I - 0x015131 05:9121: B4        .byte $B4   ; 
- D 0 - I - 0x015132 05:9122: B7        .byte $B7   ; 
- D 0 - I - 0x015133 05:9123: CF        .byte $CF   ; 
- D 0 - I - 0x015134 05:9124: D7        .byte $D7   ; 

- D 0 - I - 0x015135 05:9125: 02        .byte con_02   ; 

- D 0 - I - 0x015136 05:9126: B2        .byte $B2   ; 

- D 0 - I - 0x015137 05:9127: 02        .byte con_02   ; 

- D 0 - I - 0x015138 05:9128: B6        .byte $B6   ; 
- D 0 - I - 0x015139 05:9129: B9        .byte $B9   ; 
- D 0 - I - 0x01513A 05:912A: D7        .byte $D7   ; 
- D 0 - I - 0x01513B 05:912B: D7        .byte $D7   ; 

- D 0 - I - 0x01513C 05:912C: 02        .byte con_02   ; 

- D 0 - I - 0x01513D 05:912D: B0        .byte $B0   ; 

- D 0 - I - 0x01513E 05:912E: 02        .byte con_02   ; 

- D 0 - I - 0x01513F 05:912F: B4        .byte $B4   ; 
- D 0 - I - 0x015140 05:9130: B7        .byte $B7   ; 
- D 0 - I - 0x015141 05:9131: CF        .byte $CF   ; 
- D 0 - I - 0x015142 05:9132: D7        .byte $D7   ; 

- D 0 - I - 0x015143 05:9133: 02        .byte con_02   ; 

- D 0 - I - 0x015144 05:9134: B2        .byte $B2   ; 

- D 0 - I - 0x015145 05:9135: 02        .byte con_02   ; 

- D 0 - I - 0x015146 05:9136: B6        .byte $B6   ; 
- D 0 - I - 0x015147 05:9137: B9        .byte $B9   ; 
- D 0 - I - 0x015148 05:9138: D7        .byte $D7   ; 
- D 0 - I - 0x015149 05:9139: B7        .byte $B7   ; 
- D 0 - I - 0x01514A 05:913A: B7        .byte $B7   ; 
- D 0 - I - 0x01514B 05:913B: B7        .byte $B7   ; 

- D 0 - I - 0x01514C 05:913C: 02        .byte con_02   ; 

- D 0 - I - 0x01514D 05:913D: C0        .byte $C0   ; 

- D 0 - I - 0x01514E 05:913E: 02        .byte con_02   ; 

- D 0 - I - 0x01514F 05:913F: B0        .byte $B0   ; 

- D 0 - I - 0x015150 05:9140: 02        .byte con_02   ; 

- D 0 - I - 0x015151 05:9141: B4        .byte $B4   ; 
- D 0 - I - 0x015152 05:9142: B7        .byte $B7   ; 
- D 0 - I - 0x015153 05:9143: B7        .byte $B7   ; 
- D 0 - I - 0x015154 05:9144: AB        .byte $AB   ; 
- D 0 - I - 0x015155 05:9145: AF        .byte $AF   ; 
- D 0 - I - 0x015156 05:9146: B2        .byte $B2   ; 

- D 0 - I - 0x015157 05:9147: 02        .byte con_02   ; 

- D 0 - I - 0x015158 05:9148: B2        .byte $B2   ; 

- D 0 - I - 0x015159 05:9149: 02        .byte con_02   ; 

- D 0 - I - 0x01515A 05:914A: B6        .byte $B6   ; 
- D 0 - I - 0x01515B 05:914B: B9        .byte $B9   ; 
- D 0 - I - 0x01515C 05:914C: B7        .byte $B7   ; 
- D 0 - I - 0x01515D 05:914D: B7        .byte $B7   ; 
- D 0 - I - 0x01515E 05:914E: B4        .byte $B4   ; 
- D 0 - I - 0x01515F 05:914F: B2        .byte $B2   ; 

- D 0 - I - 0x015160 05:9150: 02        .byte con_02   ; 

- D 0 - I - 0x015161 05:9151: B0        .byte $B0   ; 

- D 0 - I - 0x015162 05:9152: 02        .byte con_02   ; 

- D 0 - I - 0x015163 05:9153: B4        .byte $B4   ; 
- D 0 - I - 0x015164 05:9154: B7        .byte $B7   ; 
- D 0 - I - 0x015165 05:9155: B2        .byte $B2   ; 
- D 0 - I - 0x015166 05:9156: B2        .byte $B2   ; 
- D 0 - I - 0x015167 05:9157: B6        .byte $B6   ; 
- D 0 - I - 0x015168 05:9158: B9        .byte $B9   ; 

- D 0 - I - 0x015169 05:9159: 02        .byte con_02   ; 

- D 0 - I - 0x01516A 05:915A: B7        .byte $B7   ; 

- D 0 - I - 0x01516B 05:915B: 02        .byte con_02   ; 

- D 0 - I - 0x01516C 05:915C: BB        .byte $BB   ; 
- D 0 - I - 0x01516D 05:915D: BE        .byte $BE   ; 
- D 0 - I - 0x01516E 05:915E: B7        .byte $B7   ; 
- D 0 - I - 0x01516F 05:915F: B7        .byte $B7   ; 
- D 0 - I - 0x015170 05:9160: B4        .byte $B4   ; 
- D 0 - I - 0x015171 05:9161: B2        .byte $B2   ; 

- D 0 - I - 0x015172 05:9162: 02        .byte con_02   ; 

- D 0 - I - 0x015173 05:9163: B0        .byte $B0   ; 

- D 0 - I - 0x015174 05:9164: 02        .byte con_02   ; 

- D 0 - I - 0x015175 05:9165: B4        .byte $B4   ; 
- D 0 - I - 0x015176 05:9166: B7        .byte $B7   ; 

- D 0 - I - 0x015177 05:9167: 02        .byte con_02   ; 

- D 0 - I - 0x015178 05:9168: B2        .byte $B2   ; 

- D 0 - I - 0x015179 05:9169: 02        .byte con_02   ; 

- D 0 - I - 0x01517A 05:916A: B6        .byte $B6   ; 
- D 0 - I - 0x01517B 05:916B: B9        .byte $B9   ; 

- D 0 - I - 0x01517C 05:916C: 02        .byte con_02   ; 

- D 0 - I - 0x01517D 05:916D: B4        .byte $B4   ; 

- D 0 - I - 0x01517E 05:916E: 02        .byte con_02   ; 

- D 0 - I - 0x01517F 05:916F: B7        .byte $B7   ; 
- D 0 - I - 0x015180 05:9170: BB        .byte $BB   ; 

- D 0 - I - 0x015181 05:9171: 02        .byte con_02   ; 

- D 0 - I - 0x015182 05:9172: AB        .byte $AB   ; 

- D 0 - I - 0x015183 05:9173: 02        .byte con_02   ; 

- D 0 - I - 0x015184 05:9174: B1        .byte $B1   ; 
- D 0 - I - 0x015185 05:9175: B4        .byte $B4   ; 

- D 0 - I - 0x015186 05:9176: 02        .byte con_02   ; 

- D 0 - I - 0x015187 05:9177: B0        .byte $B0   ; 

- D 0 - I - 0x015188 05:9178: 02        .byte con_02   ; 

- D 0 - I - 0x015189 05:9179: B4        .byte $B4   ; 
- D 0 - I - 0x01518A 05:917A: B7        .byte $B7   ; 

- D 0 - I - 0x01518B 05:917B: 02        .byte con_02   ; 

- D 0 - I - 0x01518C 05:917C: B2        .byte $B2   ; 

- D 0 - I - 0x01518D 05:917D: 02        .byte con_02   ; 

- D 0 - I - 0x01518E 05:917E: B6        .byte $B6   ; 
- D 0 - I - 0x01518F 05:917F: B9        .byte $B9   ; 

- D 0 - I - 0x015190 05:9180: 13        .byte con_13, $00   ; 
- D 0 - I - 0x015192 05:9182: 91 95     .dbyt off_13_9195

- D 0 - I - 0x015194 05:9184: B7        .byte $B7   ; 

- D 0 - I - 0x015195 05:9185: 02        .byte con_02   ; 

- D 0 - I - 0x015196 05:9186: C0        .byte $C0   ; 

- D 0 - I - 0x015197 05:9187: 02        .byte con_02   ; 

- D 0 - I - 0x015198 05:9188: C0        .byte $C0   ; 
- D 0 - I - 0x015199 05:9189: B2        .byte $B2   ; 
- D 0 - I - 0x01519A 05:918A: B7        .byte $B7   ; 

- D 0 - I - 0x01519B 05:918B: 02        .byte con_02   ; 

- D 0 - I - 0x01519C 05:918C: C0        .byte $C0   ; 
- D 0 - I - 0x01519D 05:918D: A0        .byte $A0   ; 
- D 0 - I - 0x01519E 05:918E: B2        .byte $B2   ; 
- D 0 - I - 0x01519F 05:918F: B7        .byte $B7   ; 
- D 0 - I - 0x0151A0 05:9190: A0        .byte $A0   ; 

- D 0 - I - 0x0151A1 05:9191: 0F        .byte con_0F, $01   ; 
- D 0 - I - 0x0151A3 05:9193: 91 0C     .dbyt off_0F_910C
off_13_9195:
- D 0 - I - 0x0151A5 05:9195: 02        .byte con_02   ; 

- D 0 - I - 0x0151A6 05:9196: B0        .byte $B0   ; 

- D 0 - I - 0x0151A7 05:9197: 02        .byte con_02   ; 

- D 0 - I - 0x0151A8 05:9198: B4        .byte $B4   ; 
- D 0 - I - 0x0151A9 05:9199: B7        .byte $B7   ; 

- D 0 - I - 0x0151AA 05:919A: 02        .byte con_02   ; 

- D 0 - I - 0x0151AB 05:919B: AB        .byte $AB   ; 

- D 0 - I - 0x0151AC 05:919C: 02        .byte con_02   ; 

- D 0 - I - 0x0151AD 05:919D: AF        .byte $AF   ; 
- D 0 - I - 0x0151AE 05:919E: B2        .byte $B2   ; 

- D 0 - I - 0x0151AF 05:919F: 02        .byte con_02   ; 

- D 0 - I - 0x0151B0 05:91A0: B2        .byte $B2   ; 

- D 0 - I - 0x0151B1 05:91A1: 02        .byte con_02   ; 

- D 0 - I - 0x0151B2 05:91A2: B6        .byte $B6   ; 
- D 0 - I - 0x0151B3 05:91A3: B9        .byte $B9   ; 
- D 0 - I - 0x0151B4 05:91A4: B7        .byte $B7   ; 
- D 0 - I - 0x0151B5 05:91A5: AB        .byte $AB   ; 
- D 0 - I - 0x0151B6 05:91A6: AF        .byte $AF   ; 
- D 0 - I - 0x0151B7 05:91A7: B2        .byte $B2   ; 

- D 0 - I - 0x0151B8 05:91A8: 02        .byte con_02   ; 

- D 0 - I - 0x0151B9 05:91A9: B0        .byte $B0   ; 

- D 0 - I - 0x0151BA 05:91AA: 02        .byte con_02   ; 

- D 0 - I - 0x0151BB 05:91AB: B4        .byte $B4   ; 
- D 0 - I - 0x0151BC 05:91AC: B7        .byte $B7   ; 

- D 0 - I - 0x0151BD 05:91AD: 02        .byte con_02   ; 

- D 0 - I - 0x0151BE 05:91AE: B2        .byte $B2   ; 

- D 0 - I - 0x0151BF 05:91AF: 02        .byte con_02   ; 

- D 0 - I - 0x0151C0 05:91B0: B6        .byte $B6   ; 
- D 0 - I - 0x0151C1 05:91B1: B9        .byte $B9   ; 

- D 0 - I - 0x0151C2 05:91B2: 02        .byte con_02   ; 

- D 0 - I - 0x0151C3 05:91B3: B7        .byte $B7   ; 

- D 0 - I - 0x0151C4 05:91B4: 02        .byte con_02   ; 

- D 0 - I - 0x0151C5 05:91B5: BB        .byte $BB   ; 
- D 0 - I - 0x0151C6 05:91B6: BE        .byte $BE   ; 
- D 0 - I - 0x0151C7 05:91B7: B7        .byte $B7   ; 
- D 0 - I - 0x0151C8 05:91B8: B7        .byte $B7   ; 
- D 0 - I - 0x0151C9 05:91B9: B4        .byte $B4   ; 
- D 0 - I - 0x0151CA 05:91BA: B2        .byte $B2   ; 

- D 0 - I - 0x0151CB 05:91BB: 02        .byte con_02   ; 

- D 0 - I - 0x0151CC 05:91BC: B0        .byte $B0   ; 

- D 0 - I - 0x0151CD 05:91BD: 02        .byte con_02   ; 

- D 0 - I - 0x0151CE 05:91BE: B4        .byte $B4   ; 
- D 0 - I - 0x0151CF 05:91BF: B7        .byte $B7   ; 

- D 0 - I - 0x0151D0 05:91C0: 02        .byte con_02   ; 

- D 0 - I - 0x0151D1 05:91C1: B2        .byte $B2   ; 

- D 0 - I - 0x0151D2 05:91C2: 02        .byte con_02   ; 

- D 0 - I - 0x0151D3 05:91C3: B6        .byte $B6   ; 
- D 0 - I - 0x0151D4 05:91C4: B9        .byte $B9   ; 

- D 0 - I - 0x0151D5 05:91C5: 02        .byte con_02   ; 

- D 0 - I - 0x0151D6 05:91C6: B4        .byte $B4   ; 

- D 0 - I - 0x0151D7 05:91C7: 02        .byte con_02   ; 

- D 0 - I - 0x0151D8 05:91C8: B7        .byte $B7   ; 
- D 0 - I - 0x0151D9 05:91C9: BB        .byte $BB   ; 

- D 0 - I - 0x0151DA 05:91CA: 02        .byte con_02   ; 

- D 0 - I - 0x0151DB 05:91CB: AD        .byte $AD   ; 

- D 0 - I - 0x0151DC 05:91CC: 02        .byte con_02   ; 

- D 0 - I - 0x0151DD 05:91CD: B1        .byte $B1   ; 
- D 0 - I - 0x0151DE 05:91CE: B4        .byte $B4   ; 

- D 0 - I - 0x0151DF 05:91CF: 02        .byte con_02   ; 

- D 0 - I - 0x0151E0 05:91D0: B0        .byte $B0   ; 

- D 0 - I - 0x0151E1 05:91D1: 02        .byte con_02   ; 

- D 0 - I - 0x0151E2 05:91D2: B4        .byte $B4   ; 
- D 0 - I - 0x0151E3 05:91D3: B7        .byte $B7   ; 

- D 0 - I - 0x0151E4 05:91D4: 02        .byte con_02   ; 

- D 0 - I - 0x0151E5 05:91D5: B2        .byte $B2   ; 

- D 0 - I - 0x0151E6 05:91D6: 02        .byte con_02   ; 

- D 0 - I - 0x0151E7 05:91D7: B6        .byte $B6   ; 
- D 0 - I - 0x0151E8 05:91D8: B9        .byte $B9   ; 

- D 0 - I - 0x0151E9 05:91D9: 02        .byte con_02   ; 

- D 0 - I - 0x0151EA 05:91DA: B7        .byte $B7   ; 

- D 0 - I - 0x0151EB 05:91DB: 02        .byte con_02   ; 

- D 0 - I - 0x0151EC 05:91DC: B7        .byte $B7   ; 
- D 0 - I - 0x0151ED 05:91DD: B7        .byte $B7   ; 
- D 0 - I - 0x0151EE 05:91DE: B2        .byte $B2   ; 
- D 0 - I - 0x0151EF 05:91DF: B2        .byte $B2   ; 
- D 0 - I - 0x0151F0 05:91E0: B7        .byte $B7   ; 
- D 0 - I - 0x0151F1 05:91E1: A0        .byte $A0   ; 
off_0E_91E2:
- D 0 - I - 0x0151F2 05:91E2: 04        .byte con_04, $00   ; 
off_10_91E4:
- D 0 - I - 0x0151F4 05:91E4: 04        .byte con_04, $00   ; 
- D 0 - I - 0x0151F6 05:91E6: 02        .byte con_02   ; 

- D 0 - I - 0x0151F7 05:91E7: B2        .byte $B2   ; 
- D 0 - I - 0x0151F8 05:91E8: 96        .byte $96   ; 

- D 0 - I - 0x0151F9 05:91E9: 02        .byte con_02   ; 

- D 0 - I - 0x0151FA 05:91EA: B6        .byte $B6   ; 
- D 0 - I - 0x0151FB 05:91EB: 97        .byte $97   ; 
- D 0 - I - 0x0151FC 05:91EC: 80        .byte $80   ; 
- D 0 - I - 0x0151FD 05:91ED: 97        .byte $97   ; 
- D 0 - I - 0x0151FE 05:91EE: 80        .byte $80   ; 
- D 0 - I - 0x0151FF 05:91EF: 9B        .byte $9B   ; 
- D 0 - I - 0x015200 05:91F0: DB        .byte $DB   ; 

- D 0 - I - 0x015201 05:91F1: 10        .byte con_10, $01   ; 
- D 0 - I - 0x015203 05:91F3: 91 E4     .dbyt off_10_91E4

- D 0 - I - 0x015205 05:91F5: 02        .byte con_02   ; 

- D 0 - I - 0x015206 05:91F6: BC        .byte $BC   ; 
- D 0 - I - 0x015207 05:91F7: 97        .byte $97   ; 

- D 0 - I - 0x015208 05:91F8: 02        .byte con_02   ; 

- D 0 - I - 0x015209 05:91F9: B7        .byte $B7   ; 
- D 0 - I - 0x01520A 05:91FA: 9B        .byte $9B   ; 
- D 0 - I - 0x01520B 05:91FB: 80        .byte $80   ; 
- D 0 - I - 0x01520C 05:91FC: 9B        .byte $9B   ; 
- D 0 - I - 0x01520D 05:91FD: 80        .byte $80   ; 
- D 0 - I - 0x01520E 05:91FE: 97        .byte $97   ; 
- D 0 - I - 0x01520F 05:91FF: D7        .byte $D7   ; 

- D 0 - I - 0x015210 05:9200: 12        .byte con_12, $00   ; 
- D 0 - I - 0x015212 05:9202: 92 13     .dbyt off_12_9213

- D 0 - I - 0x015214 05:9204: 02        .byte con_02   ; 

- D 0 - I - 0x015215 05:9205: B2        .byte $B2   ; 
- D 0 - I - 0x015216 05:9206: 96        .byte $96   ; 

- D 0 - I - 0x015217 05:9207: 02        .byte con_02   ; 

- D 0 - I - 0x015218 05:9208: B6        .byte $B6   ; 
- D 0 - I - 0x015219 05:9209: 97        .byte $97   ; 
- D 0 - I - 0x01521A 05:920A: 80        .byte $80   ; 
- D 0 - I - 0x01521B 05:920B: 97        .byte $97   ; 
- D 0 - I - 0x01521C 05:920C: 80        .byte $80   ; 
- D 0 - I - 0x01521D 05:920D: 8B        .byte $8B   ; 
- D 0 - I - 0x01521E 05:920E: CB        .byte $CB   ; 

- D 0 - I - 0x01521F 05:920F: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x015221 05:9211: 91 E2     .dbyt off_0E_91E2
off_12_9213:
- D 0 - I - 0x015223 05:9213: B2        .byte $B2   ; 
- D 0 - I - 0x015224 05:9214: B2        .byte $B2   ; 
- D 0 - I - 0x015225 05:9215: B6        .byte $B6   ; 
- D 0 - I - 0x015226 05:9216: B2        .byte $B2   ; 
- D 0 - I - 0x015227 05:9217: B7        .byte $B7   ; 

- D 0 - I - 0x015228 05:9218: 02        .byte con_02   ; 

- D 0 - I - 0x015229 05:9219: C0        .byte $C0   ; 

- D 0 - I - 0x01522A 05:921A: 02        .byte con_02   ; 

- D 0 - I - 0x01522B 05:921B: B0        .byte $B0   ; 

- D 0 - I - 0x01522C 05:921C: 02        .byte con_02   ; 

- D 0 - I - 0x01522D 05:921D: B4        .byte $B4   ; 
- D 0 - I - 0x01522E 05:921E: B7        .byte $B7   ; 

- D 0 - I - 0x01522F 05:921F: 02        .byte con_02   ; 

- D 0 - I - 0x015230 05:9220: AB        .byte $AB   ; 

- D 0 - I - 0x015231 05:9221: 02        .byte con_02   ; 

- D 0 - I - 0x015232 05:9222: B4        .byte $B4   ; 
- D 0 - I - 0x015233 05:9223: B2        .byte $B2   ; 

- D 0 - I - 0x015234 05:9224: 02        .byte con_02   ; 

- D 0 - I - 0x015235 05:9225: B2        .byte $B2   ; 

- D 0 - I - 0x015236 05:9226: 02        .byte con_02   ; 

- D 0 - I - 0x015237 05:9227: B6        .byte $B6   ; 
- D 0 - I - 0x015238 05:9228: B9        .byte $B9   ; 

- D 0 - I - 0x015239 05:9229: 02        .byte con_02   ; 

- D 0 - I - 0x01523A 05:922A: B7        .byte $B7   ; 

- D 0 - I - 0x01523B 05:922B: 02        .byte con_02   ; 

- D 0 - I - 0x01523C 05:922C: B4        .byte $B4   ; 
- D 0 - I - 0x01523D 05:922D: B2        .byte $B2   ; 

- D 0 - I - 0x01523E 05:922E: 02        .byte con_02   ; 

- D 0 - I - 0x01523F 05:922F: B0        .byte $B0   ; 

- D 0 - I - 0x015240 05:9230: 02        .byte con_02   ; 

- D 0 - I - 0x015241 05:9231: B4        .byte $B4   ; 
- D 0 - I - 0x015242 05:9232: B7        .byte $B7   ; 

- D 0 - I - 0x015243 05:9233: 02        .byte con_02   ; 

- D 0 - I - 0x015244 05:9234: B2        .byte $B2   ; 

- D 0 - I - 0x015245 05:9235: 02        .byte con_02   ; 

- D 0 - I - 0x015246 05:9236: B6        .byte $B6   ; 
- D 0 - I - 0x015247 05:9237: B9        .byte $B9   ; 

- D 0 - I - 0x015248 05:9238: 02        .byte con_02   ; 

- D 0 - I - 0x015249 05:9239: B7        .byte $B7   ; 

- D 0 - I - 0x01524A 05:923A: 02        .byte con_02   ; 

- D 0 - I - 0x01524B 05:923B: B4        .byte $B4   ; 
- D 0 - I - 0x01524C 05:923C: B2        .byte $B2   ; 
- D 0 - I - 0x01524D 05:923D: B7        .byte $B7   ; 
- D 0 - I - 0x01524E 05:923E: B7        .byte $B7   ; 
- D 0 - I - 0x01524F 05:923F: B2        .byte $B2   ; 
- D 0 - I - 0x015250 05:9240: B7        .byte $B7   ; 

- D 0 - I - 0x015251 05:9241: 02        .byte con_02   ; 

- D 0 - I - 0x015252 05:9242: B0        .byte $B0   ; 

- D 0 - I - 0x015253 05:9243: 02        .byte con_02   ; 

- D 0 - I - 0x015254 05:9244: B4        .byte $B4   ; 
- D 0 - I - 0x015255 05:9245: B7        .byte $B7   ; 

- D 0 - I - 0x015256 05:9246: 02        .byte con_02   ; 

- D 0 - I - 0x015257 05:9247: B2        .byte $B2   ; 

- D 0 - I - 0x015258 05:9248: 02        .byte con_02   ; 

- D 0 - I - 0x015259 05:9249: B6        .byte $B6   ; 
- D 0 - I - 0x01525A 05:924A: B9        .byte $B9   ; 

- D 0 - I - 0x01525B 05:924B: 02        .byte con_02   ; 

- D 0 - I - 0x01525C 05:924C: B4        .byte $B4   ; 

- D 0 - I - 0x01525D 05:924D: 02        .byte con_02   ; 

- D 0 - I - 0x01525E 05:924E: B7        .byte $B7   ; 
- D 0 - I - 0x01525F 05:924F: BB        .byte $BB   ; 

- D 0 - I - 0x015260 05:9250: 02        .byte con_02   ; 

- D 0 - I - 0x015261 05:9251: B9        .byte $B9   ; 

- D 0 - I - 0x015262 05:9252: 02        .byte con_02   ; 

- D 0 - I - 0x015263 05:9253: B1        .byte $B1   ; 
- D 0 - I - 0x015264 05:9254: B4        .byte $B4   ; 

- D 0 - I - 0x015265 05:9255: 02        .byte con_02   ; 

- D 0 - I - 0x015266 05:9256: B0        .byte $B0   ; 

- D 0 - I - 0x015267 05:9257: 02        .byte con_02   ; 

- D 0 - I - 0x015268 05:9258: B4        .byte $B4   ; 
- D 0 - I - 0x015269 05:9259: B7        .byte $B7   ; 
- D 0 - I - 0x01526A 05:925A: B2        .byte $B2   ; 
- D 0 - I - 0x01526B 05:925B: B2        .byte $B2   ; 
- D 0 - I - 0x01526C 05:925C: B6        .byte $B6   ; 
- D 0 - I - 0x01526D 05:925D: B9        .byte $B9   ; 
- D 0 - I - 0x01526E 05:925E: B7        .byte $B7   ; 

- D 0 - I - 0x01526F 05:925F: 02        .byte con_02   ; 

- D 0 - I - 0x015270 05:9260: C0        .byte $C0   ; 

- D 0 - I - 0x015271 05:9261: 02        .byte con_02   ; 

- D 0 - I - 0x015272 05:9262: C0        .byte $C0   ; 
- D 0 - I - 0x015273 05:9263: B2        .byte $B2   ; 
- D 0 - I - 0x015274 05:9264: B7        .byte $B7   ; 

- D 0 - I - 0x015275 05:9265: 02        .byte con_02   ; 

- D 0 - I - 0x015276 05:9266: C0        .byte $C0   ; 
- D 0 - I - 0x015277 05:9267: B2        .byte $B2   ; 
- D 0 - I - 0x015278 05:9268: B2        .byte $B2   ; 
- D 0 - I - 0x015279 05:9269: B7        .byte $B7   ; 
- D 0 - I - 0x01527A 05:926A: A0        .byte $A0   ; 
- D 0 - I - 0x01527B 05:926B: AD        .byte $AD   ; 

- D 0 - I - 0x01527C 05:926C: 02        .byte con_02   ; 

- D 0 - I - 0x01527D 05:926D: C0        .byte $C0   ; 

- D 0 - I - 0x01527E 05:926E: 02        .byte con_02   ; 

- D 0 - I - 0x01527F 05:926F: C0        .byte $C0   ; 
- D 0 - I - 0x015280 05:9270: B4        .byte $B4   ; 

- D 0 - I - 0x015281 05:9271: 02        .byte con_02   ; 

- D 0 - I - 0x015282 05:9272: AD        .byte $AD   ; 

- D 0 - I - 0x015283 05:9273: 02        .byte con_02   ; 

- D 0 - I - 0x015284 05:9274: B1        .byte $B1   ; 

- D 0 - I - 0x015285 05:9275: 01        .byte con_01   ; 

- D 0 - I - 0x015286 05:9276: B4        .byte $B4   ; 

- D 0 - I - 0x015287 05:9277: 01        .byte con_01   ; 

- D 0 - I - 0x015288 05:9278: 94        .byte $94   ; 
- D 0 - I - 0x015289 05:9279: 99        .byte $99   ; 
- D 0 - I - 0x01528A 05:927A: B9        .byte $B9   ; 
- D 0 - I - 0x01528B 05:927B: B9        .byte $B9   ; 
- D 0 - I - 0x01528C 05:927C: A0        .byte $A0   ; 

- D 0 - I - 0x01528D 05:927D: 02        .byte con_02   ; 

- D 0 - I - 0x01528E 05:927E: B2        .byte $B2   ; 

- D 0 - I - 0x01528F 05:927F: 02        .byte con_02   ; 

- D 0 - I - 0x015290 05:9280: B6        .byte $B6   ; 
- D 0 - I - 0x015291 05:9281: B9        .byte $B9   ; 
- D 0 - I - 0x015292 05:9282: B1        .byte $B1   ; 
- D 0 - I - 0x015293 05:9283: AD        .byte $AD   ; 
- D 0 - I - 0x015294 05:9284: B1        .byte $B1   ; 
- D 0 - I - 0x015295 05:9285: B4        .byte $B4   ; 

- D 0 - I - 0x015296 05:9286: 02        .byte con_02   ; 

- D 0 - I - 0x015297 05:9287: B4        .byte $B4   ; 

- D 0 - I - 0x015298 05:9288: 02        .byte con_02   ; 

- D 0 - I - 0x015299 05:9289: B8        .byte $B8   ; 
- D 0 - I - 0x01529A 05:928A: BB        .byte $BB   ; 
- D 0 - I - 0x01529B 05:928B: B9        .byte $B9   ; 
- D 0 - I - 0x01529C 05:928C: B9        .byte $B9   ; 
- D 0 - I - 0x01529D 05:928D: B6        .byte $B6   ; 
- D 0 - I - 0x01529E 05:928E: B4        .byte $B4   ; 

- D 0 - I - 0x01529F 05:928F: 02        .byte con_02   ; 

- D 0 - I - 0x0152A0 05:9290: B2        .byte $B2   ; 

- D 0 - I - 0x0152A1 05:9291: 02        .byte con_02   ; 

- D 0 - I - 0x0152A2 05:9292: B6        .byte $B6   ; 
- D 0 - I - 0x0152A3 05:9293: B9        .byte $B9   ; 

- D 0 - I - 0x0152A4 05:9294: 02        .byte con_02   ; 

- D 0 - I - 0x0152A5 05:9295: B4        .byte $B4   ; 

- D 0 - I - 0x0152A6 05:9296: 02        .byte con_02   ; 

- D 0 - I - 0x0152A7 05:9297: B8        .byte $B8   ; 
- D 0 - I - 0x0152A8 05:9298: BB        .byte $BB   ; 

- D 0 - I - 0x0152A9 05:9299: 02        .byte con_02   ; 

- D 0 - I - 0x0152AA 05:929A: B9        .byte $B9   ; 

- D 0 - I - 0x0152AB 05:929B: 02        .byte con_02   ; 

- D 0 - I - 0x0152AC 05:929C: B1        .byte $B1   ; 
- D 0 - I - 0x0152AD 05:929D: B4        .byte $B4   ; 
- D 0 - I - 0x0152AE 05:929E: AD        .byte $AD   ; 
- D 0 - I - 0x0152AF 05:929F: AD        .byte $AD   ; 
- D 0 - I - 0x0152B0 05:92A0: B1        .byte $B1   ; 
- D 0 - I - 0x0152B1 05:92A1: B4        .byte $B4   ; 

- D 0 - I - 0x0152B2 05:92A2: 02        .byte con_02   ; 

- D 0 - I - 0x0152B3 05:92A3: B2        .byte $B2   ; 

- D 0 - I - 0x0152B4 05:92A4: 02        .byte con_02   ; 

- D 0 - I - 0x0152B5 05:92A5: B6        .byte $B6   ; 
- D 0 - I - 0x0152B6 05:92A6: B9        .byte $B9   ; 

- D 0 - I - 0x0152B7 05:92A7: 02        .byte con_02   ; 

- D 0 - I - 0x0152B8 05:92A8: B4        .byte $B4   ; 

- D 0 - I - 0x0152B9 05:92A9: 02        .byte con_02   ; 

- D 0 - I - 0x0152BA 05:92AA: B8        .byte $B8   ; 
- D 0 - I - 0x0152BB 05:92AB: BB        .byte $BB   ; 

- D 0 - I - 0x0152BC 05:92AC: 02        .byte con_02   ; 

- D 0 - I - 0x0152BD 05:92AD: B6        .byte $B6   ; 

- D 0 - I - 0x0152BE 05:92AE: 02        .byte con_02   ; 

- D 0 - I - 0x0152BF 05:92AF: B9        .byte $B9   ; 
- D 0 - I - 0x0152C0 05:92B0: BD        .byte $BD   ; 
- D 0 - I - 0x0152C1 05:92B1: BB        .byte $BB   ; 
- D 0 - I - 0x0152C2 05:92B2: AF        .byte $AF   ; 
- D 0 - I - 0x0152C3 05:92B3: B3        .byte $B3   ; 
- D 0 - I - 0x0152C4 05:92B4: B6        .byte $B6   ; 
off_0E_92B5:
- D 0 - I - 0x0152C5 05:92B5: 04        .byte con_04, $00   ; 
- D 0 - I - 0x0152C7 05:92B7: 02        .byte con_02   ; 

- D 0 - I - 0x0152C8 05:92B8: B2        .byte $B2   ; 

- D 0 - I - 0x0152C9 05:92B9: 02        .byte con_02   ; 

- D 0 - I - 0x0152CA 05:92BA: B6        .byte $B6   ; 
- D 0 - I - 0x0152CB 05:92BB: B9        .byte $B9   ; 

- D 0 - I - 0x0152CC 05:92BC: 02        .byte con_02   ; 

- D 0 - I - 0x0152CD 05:92BD: B4        .byte $B4   ; 

- D 0 - I - 0x0152CE 05:92BE: 02        .byte con_02   ; 

- D 0 - I - 0x0152CF 05:92BF: B8        .byte $B8   ; 
- D 0 - I - 0x0152D0 05:92C0: BB        .byte $BB   ; 
- D 0 - I - 0x0152D1 05:92C1: B9        .byte $B9   ; 

- D 0 - I - 0x0152D2 05:92C2: 02        .byte con_02   ; 

- D 0 - I - 0x0152D3 05:92C3: C0        .byte $C0   ; 

- D 0 - I - 0x0152D4 05:92C4: 02        .byte con_02   ; 

- D 0 - I - 0x0152D5 05:92C5: C0        .byte $C0   ; 
- D 0 - I - 0x0152D6 05:92C6: B9        .byte $B9   ; 

- D 0 - I - 0x0152D7 05:92C7: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x0152D9 05:92C9: 92 B5     .dbyt off_0E_92B5

- D 0 - I - 0x0152DB 05:92CB: 02        .byte con_02   ; 

- D 0 - I - 0x0152DC 05:92CC: B2        .byte $B2   ; 

- D 0 - I - 0x0152DD 05:92CD: 02        .byte con_02   ; 

- D 0 - I - 0x0152DE 05:92CE: B6        .byte $B6   ; 
- D 0 - I - 0x0152DF 05:92CF: B9        .byte $B9   ; 

- D 0 - I - 0x0152E0 05:92D0: 02        .byte con_02   ; 

- D 0 - I - 0x0152E1 05:92D1: B4        .byte $B4   ; 

- D 0 - I - 0x0152E2 05:92D2: 02        .byte con_02   ; 

- D 0 - I - 0x0152E3 05:92D3: B8        .byte $B8   ; 
- D 0 - I - 0x0152E4 05:92D4: BB        .byte $BB   ; 

- D 0 - I - 0x0152E5 05:92D5: 02        .byte con_02   ; 

- D 0 - I - 0x0152E6 05:92D6: B6        .byte $B6   ; 

- D 0 - I - 0x0152E7 05:92D7: 02        .byte con_02   ; 

- D 0 - I - 0x0152E8 05:92D8: B9        .byte $B9   ; 
- D 0 - I - 0x0152E9 05:92D9: BD        .byte $BD   ; 
- D 0 - I - 0x0152EA 05:92DA: BB        .byte $BB   ; 
- D 0 - I - 0x0152EB 05:92DB: AF        .byte $AF   ; 
- D 0 - I - 0x0152EC 05:92DC: B3        .byte $B3   ; 
- D 0 - I - 0x0152ED 05:92DD: B6        .byte $B6   ; 

- D 0 - I - 0x0152EE 05:92DE: 02        .byte con_02   ; 

- D 0 - I - 0x0152EF 05:92DF: B2        .byte $B2   ; 

- D 0 - I - 0x0152F0 05:92E0: 02        .byte con_02   ; 

- D 0 - I - 0x0152F1 05:92E1: B6        .byte $B6   ; 
- D 0 - I - 0x0152F2 05:92E2: B9        .byte $B9   ; 
- D 0 - I - 0x0152F3 05:92E3: B4        .byte $B4   ; 
- D 0 - I - 0x0152F4 05:92E4: B4        .byte $B4   ; 
- D 0 - I - 0x0152F5 05:92E5: B8        .byte $B8   ; 
- D 0 - I - 0x0152F6 05:92E6: BB        .byte $BB   ; 
- D 0 - I - 0x0152F7 05:92E7: F9        .byte $F9   ; 
- D 0 - I - 0x0152F8 05:92E8: D4        .byte $D4   ; 
- D 0 - I - 0x0152F9 05:92E9: B9        .byte $B9   ; 
- D 0 - I - 0x0152FA 05:92EA: B4        .byte $B4   ; 
- D 0 - I - 0x0152FB 05:92EB: F9        .byte $F9   ; 
- D 0 - I - 0x0152FC 05:92EC: D4        .byte $D4   ; 
- D 0 - I - 0x0152FD 05:92ED: AD        .byte $AD   ; 

- D 0 - I - 0x0152FE 05:92EE: 09        .byte con_09, $03   ; 

- D 0 - I - 0x015300 05:92F0: AD        .byte $AD   ; 

- D 0 - I - 0x015301 05:92F1: 16        .byte con_jump   ; 
- D 0 - I - 0x015302 05:92F2: 90 F3     .dbyt loc_16_90F3


; bzk garbage
- - - - - - 0x015304 05:92F4: 17        .byte con_stop   ; 



_off019_00_92F5_03_disable:
- D 0 - I - 0x015305 05:92F5: 17        .byte con_stop   ; 



_music_92F6_01_cutscene_00:
- D 0 - I - 0x015306 05:92F6: 00        .byte $00   ; 
- D 0 - I - 0x015307 05:92F7: 92 FF     .dbyt _off019_01_92FF_00
- D 0 - I - 0x015309 05:92F9: 93 F8     .dbyt _off019_01_93F8_01
- D 0 - I - 0x01530B 05:92FB: 95 78     .dbyt _off019_01_9578_02
- D 0 - I - 0x01530D 05:92FD: 96 26     .dbyt _off019_01_9626_03_disable



_off019_01_92FF_00:
- D 0 - I - 0x01530F 05:92FF: 05        .byte con_05, $00, $F5   ; 
- D 0 - I - 0x015312 05:9302: 0A        .byte con_0A, $05   ; 
- D 0 - I - 0x015314 05:9304: 06        .byte con_06, $64   ; 
- D 0 - I - 0x015316 05:9306: 08        .byte con_08, $06   ; 
- D 0 - I - 0x015318 05:9308: 07        .byte con_07, $0A   ; 
- D 0 - I - 0x01531A 05:930A: 09        .byte con_09, $02   ; 
- D 0 - I - 0x01531C 05:930C: 18        .byte con_18, $40   ; 
- D 0 - I - 0x01531E 05:930E: 00        .byte con_00   ; 
- D 0 - I - 0x01531F 05:930F: 03        .byte con_03   ; 

- D 0 - I - 0x015320 05:9310: 54        .byte $54   ; 
- D 0 - I - 0x015321 05:9311: 52        .byte $52   ; 
- D 0 - I - 0x015322 05:9312: 51        .byte $51   ; 
- D 0 - I - 0x015323 05:9313: 4F        .byte $4F   ; 
- D 0 - I - 0x015324 05:9314: 4D        .byte $4D   ; 
- D 0 - I - 0x015325 05:9315: 4C        .byte $4C   ; 
- D 0 - I - 0x015326 05:9316: 4A        .byte $4A   ; 
- D 0 - I - 0x015327 05:9317: 48        .byte $48   ; 
- D 0 - I - 0x015328 05:9318: 46        .byte $46   ; 
- D 0 - I - 0x015329 05:9319: 45        .byte $45   ; 
- D 0 - I - 0x01532A 05:931A: 43        .byte $43   ; 
- D 0 - I - 0x01532B 05:931B: 41        .byte $41   ; 

- D 0 - I - 0x01532C 05:931C: 03        .byte con_03   ; 

- D 0 - I - 0x01532D 05:931D: 58        .byte $58   ; 
- D 0 - I - 0x01532E 05:931E: 56        .byte $56   ; 
- D 0 - I - 0x01532F 05:931F: 54        .byte $54   ; 
- D 0 - I - 0x015330 05:9320: 52        .byte $52   ; 
- D 0 - I - 0x015331 05:9321: 51        .byte $51   ; 
- D 0 - I - 0x015332 05:9322: 4F        .byte $4F   ; 
- D 0 - I - 0x015333 05:9323: 4D        .byte $4D   ; 
- D 0 - I - 0x015334 05:9324: 4C        .byte $4C   ; 
- D 0 - I - 0x015335 05:9325: 4A        .byte $4A   ; 
- D 0 - I - 0x015336 05:9326: 48        .byte $48   ; 
- D 0 - I - 0x015337 05:9327: 46        .byte $46   ; 
- D 0 - I - 0x015338 05:9328: 45        .byte $45   ; 
loc_16_9329:
- D 0 - I - 0x015339 05:9329: 04        .byte con_04, $00   ; 
- D 0 - I - 0x01533B 05:932B: 08        .byte con_08, $18   ; 
- D 0 - I - 0x01533D 05:932D: 07        .byte con_07, $0B   ; 
- D 0 - I - 0x01533F 05:932F: 09        .byte con_09, $01   ; 

- D 0 - I - 0x015341 05:9331: A0        .byte $A0   ; 
- D 0 - I - 0x015342 05:9332: 7D        .byte $7D   ; 
- D 0 - I - 0x015343 05:9333: 7E        .byte $7E   ; 

- D 0 - I - 0x015344 05:9334: 03        .byte con_03   ; 

- D 0 - I - 0x015345 05:9335: 68        .byte $68   ; 
- D 0 - I - 0x015346 05:9336: 6D        .byte $6D   ; 

- D 0 - I - 0x015347 05:9337: 01        .byte con_01   ; 

- D 0 - I - 0x015348 05:9338: 6B        .byte $6B   ; 

- D 0 - I - 0x015349 05:9339: 01        .byte con_01   ; 

- D 0 - I - 0x01534A 05:933A: AB        .byte $AB   ; 
- D 0 - I - 0x01534B 05:933B: 69        .byte $69   ; 
- D 0 - I - 0x01534C 05:933C: 68        .byte $68   ; 
- D 0 - I - 0x01534D 05:933D: 66        .byte $66   ; 
- D 0 - I - 0x01534E 05:933E: E8        .byte $E8   ; 
- D 0 - I - 0x01534F 05:933F: A0        .byte $A0   ; 
- D 0 - I - 0x015350 05:9340: 65        .byte $65   ; 
- D 0 - I - 0x015351 05:9341: 66        .byte $66   ; 
- D 0 - I - 0x015352 05:9342: 68        .byte $68   ; 
- D 0 - I - 0x015353 05:9343: 6D        .byte $6D   ; 

- D 0 - I - 0x015354 05:9344: 01        .byte con_01   ; 

- D 0 - I - 0x015355 05:9345: 6B        .byte $6B   ; 

- D 0 - I - 0x015356 05:9346: 01        .byte con_01   ; 

- D 0 - I - 0x015357 05:9347: AB        .byte $AB   ; 
- D 0 - I - 0x015358 05:9348: 69        .byte $69   ; 
- D 0 - I - 0x015359 05:9349: 6B        .byte $6B   ; 
- D 0 - I - 0x01535A 05:934A: 6D        .byte $6D   ; 
- D 0 - I - 0x01535B 05:934B: E8        .byte $E8   ; 
- D 0 - I - 0x01535C 05:934C: A0        .byte $A0   ; 
- D 0 - I - 0x01535D 05:934D: 6B        .byte $6B   ; 
- D 0 - I - 0x01535E 05:934E: 6D        .byte $6D   ; 
- D 0 - I - 0x01535F 05:934F: 6E        .byte $6E   ; 
- D 0 - I - 0x015360 05:9350: 70        .byte $70   ; 

- D 0 - I - 0x015361 05:9351: 01        .byte con_01   ; 

- D 0 - I - 0x015362 05:9352: 6D        .byte $6D   ; 

- D 0 - I - 0x015363 05:9353: 01        .byte con_01   ; 

- D 0 - I - 0x015364 05:9354: AD        .byte $AD   ; 
- D 0 - I - 0x015365 05:9355: 6D        .byte $6D   ; 
- D 0 - I - 0x015366 05:9356: 6E        .byte $6E   ; 
- D 0 - I - 0x015367 05:9357: 70        .byte $70   ; 
- D 0 - I - 0x015368 05:9358: B0        .byte $B0   ; 
- D 0 - I - 0x015369 05:9359: 70        .byte $70   ; 
- D 0 - I - 0x01536A 05:935A: 72        .byte $72   ; 
- D 0 - I - 0x01536B 05:935B: 73        .byte $73   ; 
- D 0 - I - 0x01536C 05:935C: 75        .byte $75   ; 
- D 0 - I - 0x01536D 05:935D: 92        .byte $92   ; 
- D 0 - I - 0x01536E 05:935E: 8B        .byte $8B   ; 
- D 0 - I - 0x01536F 05:935F: 8C        .byte $8C   ; 
- D 0 - I - 0x015370 05:9360: 8B        .byte $8B   ; 

- D 0 - I - 0x015371 05:9361: 01        .byte con_01   ; 

- D 0 - I - 0x015372 05:9362: 70        .byte $70   ; 

- D 0 - I - 0x015373 05:9363: 01        .byte con_01   ; 

- D 0 - I - 0x015374 05:9364: B0        .byte $B0   ; 
- D 0 - I - 0x015375 05:9365: 75        .byte $75   ; 
- D 0 - I - 0x015376 05:9366: 6B        .byte $6B   ; 
- D 0 - I - 0x015377 05:9367: 6A        .byte $6A   ; 

- D 0 - I - 0x015378 05:9368: 01        .byte con_01   ; 

- D 0 - I - 0x015379 05:9369: 69        .byte $69   ; 

- D 0 - I - 0x01537A 05:936A: 01        .byte con_01   ; 

- D 0 - I - 0x01537B 05:936B: A9        .byte $A9   ; 
- D 0 - I - 0x01537C 05:936C: 6D        .byte $6D   ; 
- D 0 - I - 0x01537D 05:936D: 6E        .byte $6E   ; 
- D 0 - I - 0x01537E 05:936E: 70        .byte $70   ; 

- D 0 - I - 0x01537F 05:936F: 01        .byte con_01   ; 

- D 0 - I - 0x015380 05:9370: 72        .byte $72   ; 

- D 0 - I - 0x015381 05:9371: 01        .byte con_01   ; 

- D 0 - I - 0x015382 05:9372: B2        .byte $B2   ; 
- D 0 - I - 0x015383 05:9373: 72        .byte $72   ; 
- D 0 - I - 0x015384 05:9374: 71        .byte $71   ; 
- D 0 - I - 0x015385 05:9375: 6F        .byte $6F   ; 
- D 0 - I - 0x015386 05:9376: D2        .byte $D2   ; 
- D 0 - I - 0x015387 05:9377: A0        .byte $A0   ; 
- D 0 - I - 0x015388 05:9378: 68        .byte $68   ; 
- D 0 - I - 0x015389 05:9379: 6A        .byte $6A   ; 
- D 0 - I - 0x01538A 05:937A: 6C        .byte $6C   ; 
- D 0 - I - 0x01538B 05:937B: 6D        .byte $6D   ; 

- D 0 - I - 0x01538C 05:937C: 02        .byte con_02   ; 

- D 0 - I - 0x01538D 05:937D: A8        .byte $A8   ; 
- D 0 - I - 0x01538E 05:937E: 85        .byte $85   ; 

- D 0 - I - 0x01538F 05:937F: 02        .byte con_02   ; 

- D 0 - I - 0x015390 05:9380: A6        .byte $A6   ; 
- D 0 - I - 0x015391 05:9381: 8D        .byte $8D   ; 
- D 0 - I - 0x015392 05:9382: CD        .byte $CD   ; 

- D 0 - I - 0x015393 05:9383: 01        .byte con_01   ; 

- D 0 - I - 0x015394 05:9384: 6D        .byte $6D   ; 

- D 0 - I - 0x015395 05:9385: 01        .byte con_01   ; 

- D 0 - I - 0x015396 05:9386: AD        .byte $AD   ; 
- D 0 - I - 0x015397 05:9387: 6D        .byte $6D   ; 
- D 0 - I - 0x015398 05:9388: 6C        .byte $6C   ; 
- D 0 - I - 0x015399 05:9389: 6D        .byte $6D   ; 
- D 0 - I - 0x01539A 05:938A: 91        .byte $91   ; 
- D 0 - I - 0x01539B 05:938B: 8F        .byte $8F   ; 
- D 0 - I - 0x01539C 05:938C: 8C        .byte $8C   ; 
- D 0 - I - 0x01539D 05:938D: 88        .byte $88   ; 

- D 0 - I - 0x01539E 05:938E: 01        .byte con_01   ; 

- D 0 - I - 0x01539F 05:938F: 70        .byte $70   ; 

- D 0 - I - 0x0153A0 05:9390: 01        .byte con_01   ; 

- D 0 - I - 0x0153A1 05:9391: B0        .byte $B0   ; 
- D 0 - I - 0x0153A2 05:9392: 70        .byte $70   ; 
- D 0 - I - 0x0153A3 05:9393: 6F        .byte $6F   ; 
- D 0 - I - 0x0153A4 05:9394: 6D        .byte $6D   ; 

- D 0 - I - 0x0153A5 05:9395: 02        .byte con_02   ; 

- D 0 - I - 0x0153A6 05:9396: 91        .byte $91   ; 
- D 0 - I - 0x0153A7 05:9397: 52        .byte $52   ; 
- D 0 - I - 0x0153A8 05:9398: 51        .byte $51   ; 
- D 0 - I - 0x0153A9 05:9399: AF        .byte $AF   ; 

- D 0 - I - 0x0153AA 05:939A: 01        .byte con_01   ; 

- D 0 - I - 0x0153AB 05:939B: 71        .byte $71   ; 

- D 0 - I - 0x0153AC 05:939C: 01        .byte con_01   ; 

- D 0 - I - 0x0153AD 05:939D: B1        .byte $B1   ; 
- D 0 - I - 0x0153AE 05:939E: 71        .byte $71   ; 
- D 0 - I - 0x0153AF 05:939F: 72        .byte $72   ; 
- D 0 - I - 0x0153B0 05:93A0: 74        .byte $74   ; 

- D 0 - I - 0x0153B1 05:93A1: 01        .byte con_01   ; 

- D 0 - I - 0x0153B2 05:93A2: 71        .byte $71   ; 

- D 0 - I - 0x0153B3 05:93A3: 01        .byte con_01   ; 

- D 0 - I - 0x0153B4 05:93A4: B1        .byte $B1   ; 
- D 0 - I - 0x0153B5 05:93A5: 71        .byte $71   ; 
- D 0 - I - 0x0153B6 05:93A6: 72        .byte $72   ; 
- D 0 - I - 0x0153B7 05:93A7: 74        .byte $74   ; 

- D 0 - I - 0x0153B8 05:93A8: 01        .byte con_01   ; 

- D 0 - I - 0x0153B9 05:93A9: 74        .byte $74   ; 

- D 0 - I - 0x0153BA 05:93AA: 01        .byte con_01   ; 

- D 0 - I - 0x0153BB 05:93AB: B4        .byte $B4   ; 
- D 0 - I - 0x0153BC 05:93AC: 74        .byte $74   ; 
- D 0 - I - 0x0153BD 05:93AD: 72        .byte $72   ; 
- D 0 - I - 0x0153BE 05:93AE: 71        .byte $71   ; 

- D 0 - I - 0x0153BF 05:93AF: 02        .byte con_02   ; 

- D 0 - I - 0x0153C0 05:93B0: AF        .byte $AF   ; 
- D 0 - I - 0x0153C1 05:93B1: 89        .byte $89   ; 

- D 0 - I - 0x0153C2 05:93B2: 01        .byte con_01   ; 

- D 0 - I - 0x0153C3 05:93B3: 68        .byte $68   ; 

- D 0 - I - 0x0153C4 05:93B4: 01        .byte con_01   ; 

- D 0 - I - 0x0153C5 05:93B5: A8        .byte $A8   ; 
- D 0 - I - 0x0153C6 05:93B6: 68        .byte $68   ; 
- D 0 - I - 0x0153C7 05:93B7: 6F        .byte $6F   ; 
- D 0 - I - 0x0153C8 05:93B8: 6C        .byte $6C   ; 

- D 0 - I - 0x0153C9 05:93B9: 01        .byte con_01   ; 

- D 0 - I - 0x0153CA 05:93BA: 6E        .byte $6E   ; 

- D 0 - I - 0x0153CB 05:93BB: 01        .byte con_01   ; 

- D 0 - I - 0x0153CC 05:93BC: AE        .byte $AE   ; 
- D 0 - I - 0x0153CD 05:93BD: 71        .byte $71   ; 
- D 0 - I - 0x0153CE 05:93BE: 72        .byte $72   ; 
- D 0 - I - 0x0153CF 05:93BF: 74        .byte $74   ; 
- D 0 - I - 0x0153D0 05:93C0: B4        .byte $B4   ; 
- D 0 - I - 0x0153D1 05:93C1: AA        .byte $AA   ; 

- D 0 - I - 0x0153D2 05:93C2: 01        .byte con_01   ; 

- D 0 - I - 0x0153D3 05:93C3: 6C        .byte $6C   ; 

- D 0 - I - 0x0153D4 05:93C4: 02        .byte con_02   ; 
- D 0 - I - 0x0153D5 05:93C5: 01        .byte con_01   ; 

- D 0 - I - 0x0153D6 05:93C6: 8C        .byte $8C   ; 

- D 0 - I - 0x0153D7 05:93C7: 00        .byte con_00   ; 

- D 0 - I - 0x0153D8 05:93C8: 80        .byte $80   ; 
- D 0 - I - 0x0153D9 05:93C9: 8D        .byte $8D   ; 
- D 0 - I - 0x0153DA 05:93CA: 8F        .byte $8F   ; 

- D 0 - I - 0x0153DB 05:93CB: 00        .byte con_00   ; 

- D 0 - I - 0x0153DC 05:93CC: D1        .byte $D1   ; 
- D 0 - I - 0x0153DD 05:93CD: B2        .byte $B2   ; 
- D 0 - I - 0x0153DE 05:93CE: B1        .byte $B1   ; 

- D 0 - I - 0x0153DF 05:93CF: 01        .byte con_01   ; 

- D 0 - I - 0x0153E0 05:93D0: 76        .byte $76   ; 

- D 0 - I - 0x0153E1 05:93D1: 01        .byte con_01   ; 

- D 0 - I - 0x0153E2 05:93D2: B6        .byte $B6   ; 
- D 0 - I - 0x0153E3 05:93D3: 76        .byte $76   ; 
- D 0 - I - 0x0153E4 05:93D4: 74        .byte $74   ; 
- D 0 - I - 0x0153E5 05:93D5: 72        .byte $72   ; 

- D 0 - I - 0x0153E6 05:93D6: 01        .byte con_01   ; 

- D 0 - I - 0x0153E7 05:93D7: 75        .byte $75   ; 

- D 0 - I - 0x0153E8 05:93D8: 01        .byte con_01   ; 

- D 0 - I - 0x0153E9 05:93D9: B5        .byte $B5   ; 
- D 0 - I - 0x0153EA 05:93DA: 75        .byte $75   ; 
- D 0 - I - 0x0153EB 05:93DB: 74        .byte $74   ; 
- D 0 - I - 0x0153EC 05:93DC: 72        .byte $72   ; 

- D 0 - I - 0x0153ED 05:93DD: 01        .byte con_01   ; 

- D 0 - I - 0x0153EE 05:93DE: 71        .byte $71   ; 

- D 0 - I - 0x0153EF 05:93DF: 01        .byte con_01   ; 

- D 0 - I - 0x0153F0 05:93E0: B1        .byte $B1   ; 
- D 0 - I - 0x0153F1 05:93E1: 71        .byte $71   ; 
- D 0 - I - 0x0153F2 05:93E2: 72        .byte $72   ; 
- D 0 - I - 0x0153F3 05:93E3: 74        .byte $74   ; 
- D 0 - I - 0x0153F4 05:93E4: 8B        .byte $8B   ; 
- D 0 - I - 0x0153F5 05:93E5: 8A        .byte $8A   ; 
- D 0 - I - 0x0153F6 05:93E6: 94        .byte $94   ; 
- D 0 - I - 0x0153F7 05:93E7: 91        .byte $91   ; 

- D 0 - I - 0x0153F8 05:93E8: 01        .byte con_01   ; 

- D 0 - I - 0x0153F9 05:93E9: 72        .byte $72   ; 

- D 0 - I - 0x0153FA 05:93EA: 01        .byte con_01   ; 

- D 0 - I - 0x0153FB 05:93EB: B2        .byte $B2   ; 
- D 0 - I - 0x0153FC 05:93EC: 72        .byte $72   ; 
- D 0 - I - 0x0153FD 05:93ED: 71        .byte $71   ; 
- D 0 - I - 0x0153FE 05:93EE: 6A        .byte $6A   ; 
- D 0 - I - 0x0153FF 05:93EF: 8D        .byte $8D   ; 
- D 0 - I - 0x015400 05:93F0: 8C        .byte $8C   ; 
- D 0 - I - 0x015401 05:93F1: 8A        .byte $8A   ; 
- D 0 - I - 0x015402 05:93F2: 8C        .byte $8C   ; 
- D 0 - I - 0x015403 05:93F3: ED        .byte $ED   ; 

- D 0 - I - 0x015404 05:93F4: 16        .byte con_jump   ; 
- D 0 - I - 0x015405 05:93F5: 93 29     .dbyt loc_16_9329


; bzk garbage
- - - - - - 0x015407 05:93F7: 17        .byte con_stop   ; 



_off019_01_93F8_01:
- D 0 - I - 0x015408 05:93F8: 06        .byte con_06, $64   ; 
- D 0 - I - 0x01540A 05:93FA: 07        .byte con_07, $09   ; 
- D 0 - I - 0x01540C 05:93FC: 08        .byte con_08, $06   ; 
- D 0 - I - 0x01540E 05:93FE: 09        .byte con_09, $02   ; 
- D 0 - I - 0x015410 05:9400: 18        .byte con_18, $40   ; 
- D 0 - I - 0x015412 05:9402: 02        .byte con_02   ; 

- D 0 - I - 0x015413 05:9403: 40        .byte $40   ; 

- D 0 - I - 0x015414 05:9404: 00        .byte con_00   ; 
- D 0 - I - 0x015415 05:9405: 03        .byte con_03   ; 

- D 0 - I - 0x015416 05:9406: 54        .byte $54   ; 
- D 0 - I - 0x015417 05:9407: 52        .byte $52   ; 
- D 0 - I - 0x015418 05:9408: 51        .byte $51   ; 
- D 0 - I - 0x015419 05:9409: 4F        .byte $4F   ; 
- D 0 - I - 0x01541A 05:940A: 4D        .byte $4D   ; 
- D 0 - I - 0x01541B 05:940B: 4C        .byte $4C   ; 
- D 0 - I - 0x01541C 05:940C: 4A        .byte $4A   ; 
- D 0 - I - 0x01541D 05:940D: 48        .byte $48   ; 
- D 0 - I - 0x01541E 05:940E: 46        .byte $46   ; 
- D 0 - I - 0x01541F 05:940F: 45        .byte $45   ; 
- D 0 - I - 0x015420 05:9410: 43        .byte $43   ; 
- D 0 - I - 0x015421 05:9411: 41        .byte $41   ; 

- D 0 - I - 0x015422 05:9412: 03        .byte con_03   ; 

- D 0 - I - 0x015423 05:9413: 58        .byte $58   ; 
- D 0 - I - 0x015424 05:9414: 56        .byte $56   ; 
- D 0 - I - 0x015425 05:9415: 54        .byte $54   ; 
- D 0 - I - 0x015426 05:9416: 52        .byte $52   ; 
- D 0 - I - 0x015427 05:9417: 51        .byte $51   ; 
- D 0 - I - 0x015428 05:9418: 4F        .byte $4F   ; 
- D 0 - I - 0x015429 05:9419: 4D        .byte $4D   ; 
- D 0 - I - 0x01542A 05:941A: 4C        .byte $4C   ; 
- D 0 - I - 0x01542B 05:941B: 4A        .byte $4A   ; 

- D 0 - I - 0x01542C 05:941C: 00        .byte con_00   ; 

- D 0 - I - 0x01542D 05:941D: 28        .byte $28   ; 
loc_16_941E:
- D 0 - I - 0x01542E 05:941E: 04        .byte con_04, $00   ; 
- D 0 - I - 0x015430 05:9420: 06        .byte con_06, $64   ; 
- D 0 - I - 0x015432 05:9422: 09        .byte con_09, $02   ; 
- D 0 - I - 0x015434 05:9424: 07        .byte con_07, $09   ; 
- D 0 - I - 0x015436 05:9426: 08        .byte con_08, $17   ; 
- D 0 - I - 0x015438 05:9428: 18        .byte con_18, $80   ; 
off_0E_942A:
- D 0 - I - 0x01543A 05:942A: 04        .byte con_04, $00   ; 

- D 0 - I - 0x01543C 05:942C: 6D        .byte $6D   ; 
- D 0 - I - 0x01543D 05:942D: 71        .byte $71   ; 
- D 0 - I - 0x01543E 05:942E: 74        .byte $74   ; 
- D 0 - I - 0x01543F 05:942F: 78        .byte $78   ; 
- D 0 - I - 0x015440 05:9430: 79        .byte $79   ; 
- D 0 - I - 0x015441 05:9431: 7D        .byte $7D   ; 

- D 0 - I - 0x015442 05:9432: 03        .byte con_03   ; 

- D 0 - I - 0x015443 05:9433: 68        .byte $68   ; 
- D 0 - I - 0x015444 05:9434: 71        .byte $71   ; 
- D 0 - I - 0x015445 05:9435: 6D        .byte $6D   ; 
- D 0 - I - 0x015446 05:9436: 69        .byte $69   ; 
- D 0 - I - 0x015447 05:9437: 66        .byte $66   ; 
- D 0 - I - 0x015448 05:9438: 62        .byte $62   ; 
- D 0 - I - 0x015449 05:9439: 61        .byte $61   ; 

- D 0 - I - 0x01544A 05:943A: 03        .byte con_03   ; 

- D 0 - I - 0x01544B 05:943B: 75        .byte $75   ; 
- D 0 - I - 0x01544C 05:943C: 72        .byte $72   ; 
- D 0 - I - 0x01544D 05:943D: 6E        .byte $6E   ; 

- D 0 - I - 0x01544E 05:943E: 0E        .byte con_0E, $03   ; 
- D 0 - I - 0x015450 05:9440: 94 2A     .dbyt off_0E_942A

- D 0 - I - 0x015452 05:9442: 70        .byte $70   ; 
- D 0 - I - 0x015453 05:9443: 73        .byte $73   ; 
- D 0 - I - 0x015454 05:9444: 77        .byte $77   ; 
- D 0 - I - 0x015455 05:9445: 7A        .byte $7A   ; 
- D 0 - I - 0x015456 05:9446: 7C        .byte $7C   ; 
- D 0 - I - 0x015457 05:9447: 7F        .byte $7F   ; 

- D 0 - I - 0x015458 05:9448: 03        .byte con_03   ; 

- D 0 - I - 0x015459 05:9449: 6B        .byte $6B   ; 
- D 0 - I - 0x01545A 05:944A: 6E        .byte $6E   ; 
- D 0 - I - 0x01545B 05:944B: 6D        .byte $6D   ; 
- D 0 - I - 0x01545C 05:944C: 69        .byte $69   ; 
- D 0 - I - 0x01545D 05:944D: 67        .byte $67   ; 
- D 0 - I - 0x01545E 05:944E: 64        .byte $64   ; 
- D 0 - I - 0x01545F 05:944F: 61        .byte $61   ; 

- D 0 - I - 0x015460 05:9450: 03        .byte con_03   ; 

- D 0 - I - 0x015461 05:9451: 75        .byte $75   ; 
- D 0 - I - 0x015462 05:9452: 73        .byte $73   ; 
- D 0 - I - 0x015463 05:9453: 70        .byte $70   ; 
- D 0 - I - 0x015464 05:9454: 72        .byte $72   ; 
- D 0 - I - 0x015465 05:9455: 75        .byte $75   ; 
- D 0 - I - 0x015466 05:9456: 79        .byte $79   ; 
- D 0 - I - 0x015467 05:9457: 7C        .byte $7C   ; 
- D 0 - I - 0x015468 05:9458: 7E        .byte $7E   ; 

- D 0 - I - 0x015469 05:9459: 03        .byte con_03   ; 

- D 0 - I - 0x01546A 05:945A: 69        .byte $69   ; 
- D 0 - I - 0x01546B 05:945B: 6D        .byte $6D   ; 
- D 0 - I - 0x01546C 05:945C: 70        .byte $70   ; 
- D 0 - I - 0x01546D 05:945D: 6F        .byte $6F   ; 
- D 0 - I - 0x01546E 05:945E: 6B        .byte $6B   ; 
- D 0 - I - 0x01546F 05:945F: 69        .byte $69   ; 
- D 0 - I - 0x015470 05:9460: 66        .byte $66   ; 
- D 0 - I - 0x015471 05:9461: 63        .byte $63   ; 

- D 0 - I - 0x015472 05:9462: 03        .byte con_03   ; 

- D 0 - I - 0x015473 05:9463: 77        .byte $77   ; 
- D 0 - I - 0x015474 05:9464: 75        .byte $75   ; 
- D 0 - I - 0x015475 05:9465: 72        .byte $72   ; 
- D 0 - I - 0x015476 05:9466: 70        .byte $70   ; 
- D 0 - I - 0x015477 05:9467: 73        .byte $73   ; 
- D 0 - I - 0x015478 05:9468: 77        .byte $77   ; 
- D 0 - I - 0x015479 05:9469: 7A        .byte $7A   ; 
- D 0 - I - 0x01547A 05:946A: 7C        .byte $7C   ; 
- D 0 - I - 0x01547B 05:946B: 7F        .byte $7F   ; 

- D 0 - I - 0x01547C 05:946C: 03        .byte con_03   ; 

- D 0 - I - 0x01547D 05:946D: 6B        .byte $6B   ; 
- D 0 - I - 0x01547E 05:946E: 6E        .byte $6E   ; 
- D 0 - I - 0x01547F 05:946F: 6D        .byte $6D   ; 
- D 0 - I - 0x015480 05:9470: 69        .byte $69   ; 
- D 0 - I - 0x015481 05:9471: 67        .byte $67   ; 
- D 0 - I - 0x015482 05:9472: 64        .byte $64   ; 
- D 0 - I - 0x015483 05:9473: 61        .byte $61   ; 

- D 0 - I - 0x015484 05:9474: 03        .byte con_03   ; 

- D 0 - I - 0x015485 05:9475: 75        .byte $75   ; 
- D 0 - I - 0x015486 05:9476: 73        .byte $73   ; 
- D 0 - I - 0x015487 05:9477: 70        .byte $70   ; 
- D 0 - I - 0x015488 05:9478: 6F        .byte $6F   ; 
- D 0 - I - 0x015489 05:9479: 72        .byte $72   ; 
- D 0 - I - 0x01548A 05:947A: 76        .byte $76   ; 
- D 0 - I - 0x01548B 05:947B: 79        .byte $79   ; 
- D 0 - I - 0x01548C 05:947C: 7B        .byte $7B   ; 
- D 0 - I - 0x01548D 05:947D: 7E        .byte $7E   ; 

- D 0 - I - 0x01548E 05:947E: 03        .byte con_03   ; 

- D 0 - I - 0x01548F 05:947F: 6A        .byte $6A   ; 
- D 0 - I - 0x015490 05:9480: 66        .byte $66   ; 
- D 0 - I - 0x015491 05:9481: 6C        .byte $6C   ; 
- D 0 - I - 0x015492 05:9482: 68        .byte $68   ; 
- D 0 - I - 0x015493 05:9483: 66        .byte $66   ; 
- D 0 - I - 0x015494 05:9484: 63        .byte $63   ; 

- D 0 - I - 0x015495 05:9485: 03        .byte con_03   ; 

- D 0 - I - 0x015496 05:9486: 78        .byte $78   ; 
- D 0 - I - 0x015497 05:9487: 74        .byte $74   ; 
- D 0 - I - 0x015498 05:9488: 72        .byte $72   ; 
- D 0 - I - 0x015499 05:9489: 6F        .byte $6F   ; 
- D 0 - I - 0x01549A 05:948A: 6D        .byte $6D   ; 
- D 0 - I - 0x01549B 05:948B: 71        .byte $71   ; 
- D 0 - I - 0x01549C 05:948C: 74        .byte $74   ; 
- D 0 - I - 0x01549D 05:948D: 78        .byte $78   ; 
- D 0 - I - 0x01549E 05:948E: 79        .byte $79   ; 
- D 0 - I - 0x01549F 05:948F: 7D        .byte $7D   ; 

- D 0 - I - 0x0154A0 05:9490: 03        .byte con_03   ; 

- D 0 - I - 0x0154A1 05:9491: 68        .byte $68   ; 
- D 0 - I - 0x0154A2 05:9492: 6D        .byte $6D   ; 
- D 0 - I - 0x0154A3 05:9493: 6C        .byte $6C   ; 
- D 0 - I - 0x0154A4 05:9494: 68        .byte $68   ; 
- D 0 - I - 0x0154A5 05:9495: 65        .byte $65   ; 
- D 0 - I - 0x0154A6 05:9496: 61        .byte $61   ; 

- D 0 - I - 0x0154A7 05:9497: 03        .byte con_03   ; 

- D 0 - I - 0x0154A8 05:9498: 78        .byte $78   ; 
- D 0 - I - 0x0154A9 05:9499: 74        .byte $74   ; 
- D 0 - I - 0x0154AA 05:949A: 71        .byte $71   ; 
- D 0 - I - 0x0154AB 05:949B: 6D        .byte $6D   ; 
- D 0 - I - 0x0154AC 05:949C: 6F        .byte $6F   ; 
- D 0 - I - 0x0154AD 05:949D: 72        .byte $72   ; 
- D 0 - I - 0x0154AE 05:949E: 76        .byte $76   ; 
- D 0 - I - 0x0154AF 05:949F: 79        .byte $79   ; 
- D 0 - I - 0x0154B0 05:94A0: 7B        .byte $7B   ; 
- D 0 - I - 0x0154B1 05:94A1: 7E        .byte $7E   ; 

- D 0 - I - 0x0154B2 05:94A2: 03        .byte con_03   ; 

- D 0 - I - 0x0154B3 05:94A3: 6A        .byte $6A   ; 
- D 0 - I - 0x0154B4 05:94A4: 6D        .byte $6D   ; 
- D 0 - I - 0x0154B5 05:94A5: 72        .byte $72   ; 
- D 0 - I - 0x0154B6 05:94A6: 71        .byte $71   ; 
- D 0 - I - 0x0154B7 05:94A7: 6F        .byte $6F   ; 
- D 0 - I - 0x0154B8 05:94A8: 6D        .byte $6D   ; 
- D 0 - I - 0x0154B9 05:94A9: 6C        .byte $6C   ; 
- D 0 - I - 0x0154BA 05:94AA: 6A        .byte $6A   ; 
- D 0 - I - 0x0154BB 05:94AB: 66        .byte $66   ; 
- D 0 - I - 0x0154BC 05:94AC: 63        .byte $63   ; 

- D 0 - I - 0x0154BD 05:94AD: 03        .byte con_03   ; 

- D 0 - I - 0x0154BE 05:94AE: 68        .byte $68   ; 
- D 0 - I - 0x0154BF 05:94AF: 6C        .byte $6C   ; 
- D 0 - I - 0x0154C0 05:94B0: 6F        .byte $6F   ; 
- D 0 - I - 0x0154C1 05:94B1: 72        .byte $72   ; 
- D 0 - I - 0x0154C2 05:94B2: 74        .byte $74   ; 
- D 0 - I - 0x0154C3 05:94B3: 79        .byte $79   ; 
- D 0 - I - 0x0154C4 05:94B4: 7B        .byte $7B   ; 
- D 0 - I - 0x0154C5 05:94B5: 7D        .byte $7D   ; 

- D 0 - I - 0x0154C6 05:94B6: 03        .byte con_03   ; 

- D 0 - I - 0x0154C7 05:94B7: 68        .byte $68   ; 
- D 0 - I - 0x0154C8 05:94B8: 66        .byte $66   ; 
- D 0 - I - 0x0154C9 05:94B9: 63        .byte $63   ; 

- D 0 - I - 0x0154CA 05:94BA: 03        .byte con_03   ; 

- D 0 - I - 0x0154CB 05:94BB: 78        .byte $78   ; 
- D 0 - I - 0x0154CC 05:94BC: 74        .byte $74   ; 
- D 0 - I - 0x0154CD 05:94BD: 72        .byte $72   ; 
- D 0 - I - 0x0154CE 05:94BE: 6F        .byte $6F   ; 
- D 0 - I - 0x0154CF 05:94BF: 6C        .byte $6C   ; 
- D 0 - I - 0x0154D0 05:94C0: 72        .byte $72   ; 
- D 0 - I - 0x0154D1 05:94C1: 75        .byte $75   ; 
- D 0 - I - 0x0154D2 05:94C2: 79        .byte $79   ; 
- D 0 - I - 0x0154D3 05:94C3: 7C        .byte $7C   ; 
- D 0 - I - 0x0154D4 05:94C4: 7E        .byte $7E   ; 

- D 0 - I - 0x0154D5 05:94C5: 03        .byte con_03   ; 

- D 0 - I - 0x0154D6 05:94C6: 69        .byte $69   ; 
- D 0 - I - 0x0154D7 05:94C7: 6D        .byte $6D   ; 
- D 0 - I - 0x0154D8 05:94C8: 70        .byte $70   ; 

- D 0 - I - 0x0154D9 05:94C9: 03        .byte con_03   ; 

- D 0 - I - 0x0154DA 05:94CA: 74        .byte $74   ; 
- D 0 - I - 0x0154DB 05:94CB: 79        .byte $79   ; 
- D 0 - I - 0x0154DC 05:94CC: 7D        .byte $7D   ; 
- D 0 - I - 0x0154DD 05:94CD: 7E        .byte $7E   ; 

- D 0 - I - 0x0154DE 05:94CE: 03        .byte con_03   ; 

- D 0 - I - 0x0154DF 05:94CF: 6C        .byte $6C   ; 
- D 0 - I - 0x0154E0 05:94D0: 68        .byte $68   ; 
- D 0 - I - 0x0154E1 05:94D1: 66        .byte $66   ; 
- D 0 - I - 0x0154E2 05:94D2: 63        .byte $63   ; 

- D 0 - I - 0x0154E3 05:94D3: 03        .byte con_03   ; 

- D 0 - I - 0x0154E4 05:94D4: 6D        .byte $6D   ; 
- D 0 - I - 0x0154E5 05:94D5: 71        .byte $71   ; 
- D 0 - I - 0x0154E6 05:94D6: 74        .byte $74   ; 
- D 0 - I - 0x0154E7 05:94D7: 78        .byte $78   ; 
- D 0 - I - 0x0154E8 05:94D8: 79        .byte $79   ; 
- D 0 - I - 0x0154E9 05:94D9: 7D        .byte $7D   ; 

- D 0 - I - 0x0154EA 05:94DA: 03        .byte con_03   ; 

- D 0 - I - 0x0154EB 05:94DB: 68        .byte $68   ; 
- D 0 - I - 0x0154EC 05:94DC: 6C        .byte $6C   ; 

- D 0 - I - 0x0154ED 05:94DD: 03        .byte con_03   ; 

- D 0 - I - 0x0154EE 05:94DE: 6D        .byte $6D   ; 
- D 0 - I - 0x0154EF 05:94DF: 71        .byte $71   ; 
- D 0 - I - 0x0154F0 05:94E0: 74        .byte $74   ; 
- D 0 - I - 0x0154F1 05:94E1: 78        .byte $78   ; 
- D 0 - I - 0x0154F2 05:94E2: 7A        .byte $7A   ; 
- D 0 - I - 0x0154F3 05:94E3: 7D        .byte $7D   ; 

- D 0 - I - 0x0154F4 05:94E4: 03        .byte con_03   ; 

- D 0 - I - 0x0154F5 05:94E5: 68        .byte $68   ; 
- D 0 - I - 0x0154F6 05:94E6: 6B        .byte $6B   ; 

- D 0 - I - 0x0154F7 05:94E7: 03        .byte con_03   ; 

- D 0 - I - 0x0154F8 05:94E8: 72        .byte $72   ; 
- D 0 - I - 0x0154F9 05:94E9: 76        .byte $76   ; 
- D 0 - I - 0x0154FA 05:94EA: 79        .byte $79   ; 
- D 0 - I - 0x0154FB 05:94EB: 7D        .byte $7D   ; 
- D 0 - I - 0x0154FC 05:94EC: 7E        .byte $7E   ; 

- D 0 - I - 0x0154FD 05:94ED: 03        .byte con_03   ; 

- D 0 - I - 0x0154FE 05:94EE: 6A        .byte $6A   ; 
- D 0 - I - 0x0154FF 05:94EF: 6D        .byte $6D   ; 
- D 0 - I - 0x015500 05:94F0: 71        .byte $71   ; 
- D 0 - I - 0x015501 05:94F1: 89        .byte $89   ; 

- D 0 - I - 0x015502 05:94F2: 02        .byte con_02   ; 

- D 0 - I - 0x015503 05:94F3: A0        .byte $A0   ; 

- D 0 - I - 0x015504 05:94F4: 03        .byte con_03   ; 

- D 0 - I - 0x015505 05:94F5: 71        .byte $71   ; 
- D 0 - I - 0x015506 05:94F6: 74        .byte $74   ; 
- D 0 - I - 0x015507 05:94F7: 78        .byte $78   ; 
- D 0 - I - 0x015508 05:94F8: 7B        .byte $7B   ; 
- D 0 - I - 0x015509 05:94F9: 7D        .byte $7D   ; 

- D 0 - I - 0x01550A 05:94FA: 03        .byte con_03   ; 

- D 0 - I - 0x01550B 05:94FB: 68        .byte $68   ; 
- D 0 - I - 0x01550C 05:94FC: 6C        .byte $6C   ; 
- D 0 - I - 0x01550D 05:94FD: 6F        .byte $6F   ; 

- D 0 - I - 0x01550E 05:94FE: 03        .byte con_03   ; 

- D 0 - I - 0x01550F 05:94FF: 71        .byte $71   ; 
- D 0 - I - 0x015510 05:9500: 74        .byte $74   ; 
- D 0 - I - 0x015511 05:9501: 76        .byte $76   ; 
- D 0 - I - 0x015512 05:9502: 7A        .byte $7A   ; 
- D 0 - I - 0x015513 05:9503: 7D        .byte $7D   ; 

- D 0 - I - 0x015514 05:9504: 03        .byte con_03   ; 

- D 0 - I - 0x015515 05:9505: 68        .byte $68   ; 
- D 0 - I - 0x015516 05:9506: 6A        .byte $6A   ; 
- D 0 - I - 0x015517 05:9507: 6E        .byte $6E   ; 

- D 0 - I - 0x015518 05:9508: 03        .byte con_03   ; 

- D 0 - I - 0x015519 05:9509: 6F        .byte $6F   ; 
- D 0 - I - 0x01551A 05:950A: 72        .byte $72   ; 
- D 0 - I - 0x01551B 05:950B: 76        .byte $76   ; 
- D 0 - I - 0x01551C 05:950C: 79        .byte $79   ; 
- D 0 - I - 0x01551D 05:950D: 7B        .byte $7B   ; 
- D 0 - I - 0x01551E 05:950E: 7E        .byte $7E   ; 

- D 0 - I - 0x01551F 05:950F: 03        .byte con_03   ; 

- D 0 - I - 0x015520 05:9510: 6A        .byte $6A   ; 
- D 0 - I - 0x015521 05:9511: 6D        .byte $6D   ; 

- D 0 - I - 0x015522 05:9512: 03        .byte con_03   ; 

- D 0 - I - 0x015523 05:9513: 6F        .byte $6F   ; 
- D 0 - I - 0x015524 05:9514: 72        .byte $72   ; 
- D 0 - I - 0x015525 05:9515: 74        .byte $74   ; 
- D 0 - I - 0x015526 05:9516: 78        .byte $78   ; 
- D 0 - I - 0x015527 05:9517: 7B        .byte $7B   ; 
- D 0 - I - 0x015528 05:9518: 7E        .byte $7E   ; 

- D 0 - I - 0x015529 05:9519: 03        .byte con_03   ; 

- D 0 - I - 0x01552A 05:951A: 68        .byte $68   ; 
- D 0 - I - 0x01552B 05:951B: 6C        .byte $6C   ; 

- D 0 - I - 0x01552C 05:951C: 03        .byte con_03   ; 

- D 0 - I - 0x01552D 05:951D: 6D        .byte $6D   ; 
- D 0 - I - 0x01552E 05:951E: 71        .byte $71   ; 
- D 0 - I - 0x01552F 05:951F: 74        .byte $74   ; 
- D 0 - I - 0x015530 05:9520: 78        .byte $78   ; 
- D 0 - I - 0x015531 05:9521: 79        .byte $79   ; 
- D 0 - I - 0x015532 05:9522: 7D        .byte $7D   ; 

- D 0 - I - 0x015533 05:9523: 03        .byte con_03   ; 

- D 0 - I - 0x015534 05:9524: 68        .byte $68   ; 
- D 0 - I - 0x015535 05:9525: 6C        .byte $6C   ; 
- D 0 - I - 0x015536 05:9526: 6B        .byte $6B   ; 
- D 0 - I - 0x015537 05:9527: 68        .byte $68   ; 
- D 0 - I - 0x015538 05:9528: 65        .byte $65   ; 
- D 0 - I - 0x015539 05:9529: 61        .byte $61   ; 

- D 0 - I - 0x01553A 05:952A: 03        .byte con_03   ; 

- D 0 - I - 0x01553B 05:952B: 77        .byte $77   ; 
- D 0 - I - 0x01553C 05:952C: 74        .byte $74   ; 
- D 0 - I - 0x01553D 05:952D: 71        .byte $71   ; 
- D 0 - I - 0x01553E 05:952E: 6D        .byte $6D   ; 
- D 0 - I - 0x01553F 05:952F: 72        .byte $72   ; 
- D 0 - I - 0x015540 05:9530: 76        .byte $76   ; 
- D 0 - I - 0x015541 05:9531: 79        .byte $79   ; 
- D 0 - I - 0x015542 05:9532: 7D        .byte $7D   ; 
- D 0 - I - 0x015543 05:9533: 7E        .byte $7E   ; 

- D 0 - I - 0x015544 05:9534: 03        .byte con_03   ; 

- D 0 - I - 0x015545 05:9535: 6A        .byte $6A   ; 
- D 0 - I - 0x015546 05:9536: 6D        .byte $6D   ; 
- D 0 - I - 0x015547 05:9537: 6A        .byte $6A   ; 
- D 0 - I - 0x015548 05:9538: 71        .byte $71   ; 
- D 0 - I - 0x015549 05:9539: 6C        .byte $6C   ; 
- D 0 - I - 0x01554A 05:953A: 69        .byte $69   ; 
- D 0 - I - 0x01554B 05:953B: 66        .byte $66   ; 
- D 0 - I - 0x01554C 05:953C: 65        .byte $65   ; 

- D 0 - I - 0x01554D 05:953D: 03        .byte con_03   ; 

- D 0 - I - 0x01554E 05:953E: 78        .byte $78   ; 
- D 0 - I - 0x01554F 05:953F: 75        .byte $75   ; 
- D 0 - I - 0x015550 05:9540: 72        .byte $72   ; 
- D 0 - I - 0x015551 05:9541: 71        .byte $71   ; 
- D 0 - I - 0x015552 05:9542: 74        .byte $74   ; 
- D 0 - I - 0x015553 05:9543: 78        .byte $78   ; 
- D 0 - I - 0x015554 05:9544: 7B        .byte $7B   ; 
- D 0 - I - 0x015555 05:9545: 7D        .byte $7D   ; 

- D 0 - I - 0x015556 05:9546: 03        .byte con_03   ; 

- D 0 - I - 0x015557 05:9547: 68        .byte $68   ; 
- D 0 - I - 0x015558 05:9548: 6C        .byte $6C   ; 
- D 0 - I - 0x015559 05:9549: 6F        .byte $6F   ; 
- D 0 - I - 0x01555A 05:954A: 6E        .byte $6E   ; 
- D 0 - I - 0x01555B 05:954B: 6A        .byte $6A   ; 
- D 0 - I - 0x01555C 05:954C: 68        .byte $68   ; 
- D 0 - I - 0x01555D 05:954D: 65        .byte $65   ; 
- D 0 - I - 0x01555E 05:954E: 62        .byte $62   ; 

- D 0 - I - 0x01555F 05:954F: 03        .byte con_03   ; 

- D 0 - I - 0x015560 05:9550: 76        .byte $76   ; 
- D 0 - I - 0x015561 05:9551: 74        .byte $74   ; 
- D 0 - I - 0x015562 05:9552: 71        .byte $71   ; 
- D 0 - I - 0x015563 05:9553: 6F        .byte $6F   ; 
- D 0 - I - 0x015564 05:9554: 72        .byte $72   ; 
- D 0 - I - 0x015565 05:9555: 76        .byte $76   ; 
- D 0 - I - 0x015566 05:9556: 79        .byte $79   ; 
- D 0 - I - 0x015567 05:9557: 7B        .byte $7B   ; 
- D 0 - I - 0x015568 05:9558: 7E        .byte $7E   ; 

- D 0 - I - 0x015569 05:9559: 03        .byte con_03   ; 

- D 0 - I - 0x01556A 05:955A: 6A        .byte $6A   ; 
- D 0 - I - 0x01556B 05:955B: 6D        .byte $6D   ; 
- D 0 - I - 0x01556C 05:955C: 6C        .byte $6C   ; 
- D 0 - I - 0x01556D 05:955D: 68        .byte $68   ; 
- D 0 - I - 0x01556E 05:955E: 66        .byte $66   ; 
- D 0 - I - 0x01556F 05:955F: 63        .byte $63   ; 

- D 0 - I - 0x015570 05:9560: 03        .byte con_03   ; 

- D 0 - I - 0x015571 05:9561: 78        .byte $78   ; 
- D 0 - I - 0x015572 05:9562: 74        .byte $74   ; 
- D 0 - I - 0x015573 05:9563: 72        .byte $72   ; 
- D 0 - I - 0x015574 05:9564: 6F        .byte $6F   ; 
- D 0 - I - 0x015575 05:9565: 72        .byte $72   ; 
- D 0 - I - 0x015576 05:9566: 76        .byte $76   ; 
- D 0 - I - 0x015577 05:9567: 79        .byte $79   ; 
- D 0 - I - 0x015578 05:9568: 7D        .byte $7D   ; 
- D 0 - I - 0x015579 05:9569: 7E        .byte $7E   ; 

- D 0 - I - 0x01557A 05:956A: 03        .byte con_03   ; 

- D 0 - I - 0x01557B 05:956B: 6A        .byte $6A   ; 
- D 0 - I - 0x01557C 05:956C: 6D        .byte $6D   ; 
- D 0 - I - 0x01557D 05:956D: 71        .byte $71   ; 

- D 0 - I - 0x01557E 05:956E: 09        .byte con_09, $03   ; 

- D 0 - I - 0x015580 05:9570: 6D        .byte $6D   ; 
- D 0 - I - 0x015581 05:9571: 60        .byte $60   ; 

- D 0 - I - 0x015582 05:9572: 02        .byte con_02   ; 

- D 0 - I - 0x015583 05:9573: A0        .byte $A0   ; 

- D 0 - I - 0x015584 05:9574: 16        .byte con_jump   ; 
- D 0 - I - 0x015585 05:9575: 94 1E     .dbyt loc_16_941E


; bzk garbage
- - - - - - 0x015587 05:9577: 17        .byte con_stop   ; 



_off019_01_9578_02:
- D 0 - I - 0x015588 05:9578: C0        .byte $C0   ; 
loc_16_9579:
- D 0 - I - 0x015589 05:9579: 04        .byte con_04, $00   ; 
- D 0 - I - 0x01558B 05:957B: 08        .byte con_08, $01   ; 
- D 0 - I - 0x01558D 05:957D: 06        .byte con_06, $E6   ; 
- D 0 - I - 0x01558F 05:957F: 09        .byte con_09, $02   ; 

- D 0 - I - 0x015591 05:9581: AD        .byte $AD   ; 
- D 0 - I - 0x015592 05:9582: B1        .byte $B1   ; 

- D 0 - I - 0x015593 05:9583: 02        .byte con_02   ; 

- D 0 - I - 0x015594 05:9584: B2        .byte $B2   ; 
- D 0 - I - 0x015595 05:9585: 74        .byte $74   ; 
- D 0 - I - 0x015596 05:9586: 72        .byte $72   ; 

- D 0 - I - 0x015597 05:9587: 02        .byte con_02   ; 

- D 0 - I - 0x015598 05:9588: B1        .byte $B1   ; 
- D 0 - I - 0x015599 05:9589: 91        .byte $91   ; 
- D 0 - I - 0x01559A 05:958A: B2        .byte $B2   ; 
- D 0 - I - 0x01559B 05:958B: AC        .byte $AC   ; 
- D 0 - I - 0x01559C 05:958C: AD        .byte $AD   ; 
- D 0 - I - 0x01559D 05:958D: B1        .byte $B1   ; 

- D 0 - I - 0x01559E 05:958E: 02        .byte con_02   ; 

- D 0 - I - 0x01559F 05:958F: B2        .byte $B2   ; 
- D 0 - I - 0x0155A0 05:9590: 74        .byte $74   ; 
- D 0 - I - 0x0155A1 05:9591: 72        .byte $72   ; 

- D 0 - I - 0x0155A2 05:9592: 02        .byte con_02   ; 

- D 0 - I - 0x0155A3 05:9593: B1        .byte $B1   ; 
- D 0 - I - 0x0155A4 05:9594: 91        .byte $91   ; 
- D 0 - I - 0x0155A5 05:9595: B2        .byte $B2   ; 
- D 0 - I - 0x0155A6 05:9596: AC        .byte $AC   ; 

- D 0 - I - 0x0155A7 05:9597: 02        .byte con_02   ; 

- D 0 - I - 0x0155A8 05:9598: B0        .byte $B0   ; 
- D 0 - I - 0x0155A9 05:9599: 6E        .byte $6E   ; 
- D 0 - I - 0x0155AA 05:959A: 6D        .byte $6D   ; 
- D 0 - I - 0x0155AB 05:959B: B5        .byte $B5   ; 
- D 0 - I - 0x0155AC 05:959C: B3        .byte $B3   ; 

- D 0 - I - 0x0155AD 05:959D: 02        .byte con_02   ; 

- D 0 - I - 0x0155AE 05:959E: B2        .byte $B2   ; 
- D 0 - I - 0x0155AF 05:959F: 70        .byte $70   ; 
- D 0 - I - 0x0155B0 05:95A0: 6F        .byte $6F   ; 
- D 0 - I - 0x0155B1 05:95A1: B7        .byte $B7   ; 
- D 0 - I - 0x0155B2 05:95A2: B5        .byte $B5   ; 

- D 0 - I - 0x0155B3 05:95A3: 01        .byte con_01   ; 

- D 0 - I - 0x0155B4 05:95A4: 70        .byte $70   ; 

- D 0 - I - 0x0155B5 05:95A5: 01        .byte con_01   ; 

- D 0 - I - 0x0155B6 05:95A6: B0        .byte $B0   ; 
- D 0 - I - 0x0155B7 05:95A7: 70        .byte $70   ; 
- D 0 - I - 0x0155B8 05:95A8: 72        .byte $72   ; 
- D 0 - I - 0x0155B9 05:95A9: 73        .byte $73   ; 
- D 0 - I - 0x0155BA 05:95AA: B5        .byte $B5   ; 
- D 0 - I - 0x0155BB 05:95AB: B3        .byte $B3   ; 

- D 0 - I - 0x0155BC 05:95AC: 02        .byte con_02   ; 

- D 0 - I - 0x0155BD 05:95AD: AF        .byte $AF   ; 
- D 0 - I - 0x0155BE 05:95AE: 6F        .byte $6F   ; 
- D 0 - I - 0x0155BF 05:95AF: 71        .byte $71   ; 
- D 0 - I - 0x0155C0 05:95B0: B2        .byte $B2   ; 
- D 0 - I - 0x0155C1 05:95B1: 7B        .byte $7B   ; 
- D 0 - I - 0x0155C2 05:95B2: 78        .byte $78   ; 
- D 0 - I - 0x0155C3 05:95B3: 76        .byte $76   ; 
- D 0 - I - 0x0155C4 05:95B4: 75        .byte $75   ; 

- D 0 - I - 0x0155C5 05:95B5: 02        .byte con_02   ; 

- D 0 - I - 0x0155C6 05:95B6: B4        .byte $B4   ; 
- D 0 - I - 0x0155C7 05:95B7: 6D        .byte $6D   ; 
- D 0 - I - 0x0155C8 05:95B8: 60        .byte $60   ; 

- D 0 - I - 0x0155C9 05:95B9: 02        .byte con_02   ; 

- D 0 - I - 0x0155CA 05:95BA: B4        .byte $B4   ; 
- D 0 - I - 0x0155CB 05:95BB: 6D        .byte $6D   ; 
- D 0 - I - 0x0155CC 05:95BC: 60        .byte $60   ; 

- D 0 - I - 0x0155CD 05:95BD: 02        .byte con_02   ; 

- D 0 - I - 0x0155CE 05:95BE: AF        .byte $AF   ; 
- D 0 - I - 0x0155CF 05:95BF: 6D        .byte $6D   ; 
- D 0 - I - 0x0155D0 05:95C0: 6C        .byte $6C   ; 

- D 0 - I - 0x0155D1 05:95C1: 02        .byte con_02   ; 

- D 0 - I - 0x0155D2 05:95C2: AF        .byte $AF   ; 
- D 0 - I - 0x0155D3 05:95C3: 88        .byte $88   ; 

- D 0 - I - 0x0155D4 05:95C4: 02        .byte con_02   ; 

- D 0 - I - 0x0155D5 05:95C5: B4        .byte $B4   ; 
- D 0 - I - 0x0155D6 05:95C6: 72        .byte $72   ; 
- D 0 - I - 0x0155D7 05:95C7: 71        .byte $71   ; 

- D 0 - I - 0x0155D8 05:95C8: 02        .byte con_02   ; 

- D 0 - I - 0x0155D9 05:95C9: B4        .byte $B4   ; 
- D 0 - I - 0x0155DA 05:95CA: 72        .byte $72   ; 
- D 0 - I - 0x0155DB 05:95CB: 71        .byte $71   ; 

- D 0 - I - 0x0155DC 05:95CC: 02        .byte con_02   ; 

- D 0 - I - 0x0155DD 05:95CD: B0        .byte $B0   ; 
- D 0 - I - 0x0155DE 05:95CE: 6F        .byte $6F   ; 
- D 0 - I - 0x0155DF 05:95CF: 6D        .byte $6D   ; 
- D 0 - I - 0x0155E0 05:95D0: B1        .byte $B1   ; 
- D 0 - I - 0x0155E1 05:95D1: AC        .byte $AC   ; 

- D 0 - I - 0x0155E2 05:95D2: 02        .byte con_02   ; 

- D 0 - I - 0x0155E3 05:95D3: AD        .byte $AD   ; 
- D 0 - I - 0x0155E4 05:95D4: 6D        .byte $6D   ; 
- D 0 - I - 0x0155E5 05:95D5: 60        .byte $60   ; 

- D 0 - I - 0x0155E6 05:95D6: 02        .byte con_02   ; 

- D 0 - I - 0x0155E7 05:95D7: AB        .byte $AB   ; 
- D 0 - I - 0x0155E8 05:95D8: 6B        .byte $6B   ; 
- D 0 - I - 0x0155E9 05:95D9: 60        .byte $60   ; 

- D 0 - I - 0x0155EA 05:95DA: 01        .byte con_01   ; 

- D 0 - I - 0x0155EB 05:95DB: 72        .byte $72   ; 

- D 0 - I - 0x0155EC 05:95DC: 01        .byte con_01   ; 

- D 0 - I - 0x0155ED 05:95DD: B2        .byte $B2   ; 
- D 0 - I - 0x0155EE 05:95DE: 72        .byte $72   ; 
- D 0 - I - 0x0155EF 05:95DF: 74        .byte $74   ; 
- D 0 - I - 0x0155F0 05:95E0: 76        .byte $76   ; 

- D 0 - I - 0x0155F1 05:95E1: 06        .byte con_06, $C8   ; 

- D 0 - I - 0x0155F3 05:95E3: 92        .byte $92   ; 

- D 0 - I - 0x0155F4 05:95E4: 02        .byte con_02   ; 

- D 0 - I - 0x0155F5 05:95E5: A0        .byte $A0   ; 

- D 0 - I - 0x0155F6 05:95E6: 02        .byte con_02   ; 

- D 0 - I - 0x0155F7 05:95E7: B1        .byte $B1   ; 
- D 0 - I - 0x0155F8 05:95E8: 71        .byte $71   ; 
- D 0 - I - 0x0155F9 05:95E9: 60        .byte $60   ; 

- D 0 - I - 0x0155FA 05:95EA: 06        .byte con_06, $E6   ; 

- D 0 - I - 0x0155FC 05:95EC: B6        .byte $B6   ; 
- D 0 - I - 0x0155FD 05:95ED: B4        .byte $B4   ; 

- D 0 - I - 0x0155FE 05:95EE: 01        .byte con_01   ; 

- D 0 - I - 0x0155FF 05:95EF: 6F        .byte $6F   ; 

- D 0 - I - 0x015600 05:95F0: 01        .byte con_01   ; 

- D 0 - I - 0x015601 05:95F1: AF        .byte $AF   ; 
- D 0 - I - 0x015602 05:95F2: 6F        .byte $6F   ; 
- D 0 - I - 0x015603 05:95F3: 71        .byte $71   ; 
- D 0 - I - 0x015604 05:95F4: 72        .byte $72   ; 
- D 0 - I - 0x015605 05:95F5: B4        .byte $B4   ; 

- D 0 - I - 0x015606 05:95F6: 00        .byte con_00   ; 

- D 0 - I - 0x015607 05:95F7: 80        .byte $80   ; 
- D 0 - I - 0x015608 05:95F8: 94        .byte $94   ; 
- D 0 - I - 0x015609 05:95F9: 92        .byte $92   ; 

- D 0 - I - 0x01560A 05:95FA: 00        .byte con_00   ; 
- D 0 - I - 0x01560B 05:95FB: 01        .byte con_01   ; 

- D 0 - I - 0x01560C 05:95FC: 71        .byte $71   ; 

- D 0 - I - 0x01560D 05:95FD: 01        .byte con_01   ; 

- D 0 - I - 0x01560E 05:95FE: B1        .byte $B1   ; 
- D 0 - I - 0x01560F 05:95FF: 71        .byte $71   ; 
- D 0 - I - 0x015610 05:9600: 72        .byte $72   ; 
- D 0 - I - 0x015611 05:9601: 74        .byte $74   ; 
- D 0 - I - 0x015612 05:9602: B7        .byte $B7   ; 
- D 0 - I - 0x015613 05:9603: B6        .byte $B6   ; 

- D 0 - I - 0x015614 05:9604: 01        .byte con_01   ; 

- D 0 - I - 0x015615 05:9605: 72        .byte $72   ; 

- D 0 - I - 0x015616 05:9606: 01        .byte con_01   ; 

- D 0 - I - 0x015617 05:9607: B2        .byte $B2   ; 
- D 0 - I - 0x015618 05:9608: 72        .byte $72   ; 
- D 0 - I - 0x015619 05:9609: 6D        .byte $6D   ; 
- D 0 - I - 0x01561A 05:960A: 6C        .byte $6C   ; 
- D 0 - I - 0x01561B 05:960B: D2        .byte $D2   ; 

- D 0 - I - 0x01561C 05:960C: 01        .byte con_01   ; 

- D 0 - I - 0x01561D 05:960D: 71        .byte $71   ; 

- D 0 - I - 0x01561E 05:960E: 01        .byte con_01   ; 

- D 0 - I - 0x01561F 05:960F: B1        .byte $B1   ; 
- D 0 - I - 0x015620 05:9610: 71        .byte $71   ; 
- D 0 - I - 0x015621 05:9611: 6F        .byte $6F   ; 
- D 0 - I - 0x015622 05:9612: 6D        .byte $6D   ; 
- D 0 - I - 0x015623 05:9613: 94        .byte $94   ; 
- D 0 - I - 0x015624 05:9614: 8A        .byte $8A   ; 
- D 0 - I - 0x015625 05:9615: 8F        .byte $8F   ; 
- D 0 - I - 0x015626 05:9616: 91        .byte $91   ; 
- D 0 - I - 0x015627 05:9617: AF        .byte $AF   ; 
- D 0 - I - 0x015628 05:9618: 91        .byte $91   ; 
- D 0 - I - 0x015629 05:9619: 92        .byte $92   ; 
- D 0 - I - 0x01562A 05:961A: B4        .byte $B4   ; 
- D 0 - I - 0x01562B 05:961B: AC        .byte $AC   ; 

- D 0 - I - 0x01562C 05:961C: 02        .byte con_02   ; 

- D 0 - I - 0x01562D 05:961D: 92        .byte $92   ; 

- D 0 - I - 0x01562E 05:961E: 02        .byte con_02   ; 

- D 0 - I - 0x01562F 05:961F: 91        .byte $91   ; 
- D 0 - I - 0x015630 05:9620: 8F        .byte $8F   ; 
- D 0 - I - 0x015631 05:9621: CD        .byte $CD   ; 

- D 0 - I - 0x015632 05:9622: 16        .byte con_jump   ; 
- D 0 - I - 0x015633 05:9623: 95 79     .dbyt loc_16_9579


; bzk garbage
- - - - - - 0x015635 05:9625: 17        .byte con_stop   ; 



_off019_01_9626_03_disable:
- D 0 - I - 0x015636 05:9626: 17        .byte con_stop   ; 



_music_9627_02_stage_00:
- D 0 - I - 0x015637 05:9627: 00        .byte $00   ; 
- D 0 - I - 0x015638 05:9628: 96 30     .dbyt _off019_02_9630_00
- D 0 - I - 0x01563A 05:962A: 97 0B     .dbyt _off019_02_970B_01
- D 0 - I - 0x01563C 05:962C: 97 D7     .dbyt _off019_02_97D7_02
- D 0 - I - 0x01563E 05:962E: 98 66     .dbyt _off019_02_9866_03_disable



_off019_02_9630_00:
- D 0 - I - 0x015640 05:9630: 05        .byte con_05, $01, $C7   ; 
- D 0 - I - 0x015643 05:9633: 06        .byte con_06, $64   ; 
- D 0 - I - 0x015645 05:9635: 07        .byte con_07, $08   ; 
- D 0 - I - 0x015647 05:9637: 18        .byte con_18, $40   ; 
- D 0 - I - 0x015649 05:9639: 08        .byte con_08, $00   ; 
- D 0 - I - 0x01564B 05:963B: 09        .byte con_09, $02   ; 

- D 0 - I - 0x01564D 05:963D: 79        .byte $79   ; 
- D 0 - I - 0x01564E 05:963E: 7D        .byte $7D   ; 

- D 0 - I - 0x01564F 05:963F: 03        .byte con_03   ; 

- D 0 - I - 0x015650 05:9640: 68        .byte $68   ; 
- D 0 - I - 0x015651 05:9641: 8D        .byte $8D   ; 
- D 0 - I - 0x015652 05:9642: 8C        .byte $8C   ; 
- D 0 - I - 0x015653 05:9643: 8F        .byte $8F   ; 
- D 0 - I - 0x015654 05:9644: 88        .byte $88   ; 
- D 0 - I - 0x015655 05:9645: 69        .byte $69   ; 
- D 0 - I - 0x015656 05:9646: 8A        .byte $8A   ; 
- D 0 - I - 0x015657 05:9647: 8C        .byte $8C   ; 

- D 0 - I - 0x015658 05:9648: 05        .byte con_05, $01, $B6   ; 
- D 0 - I - 0x01565B 05:964B: 06        .byte con_06, $FF   ; 

- D 0 - I - 0x01565D 05:964D: 6D        .byte $6D   ; 
- D 0 - I - 0x01565E 05:964E: 6D        .byte $6D   ; 
- D 0 - I - 0x01565F 05:964F: 6D        .byte $6D   ; 
- D 0 - I - 0x015660 05:9650: 80        .byte $80   ; 

- D 0 - I - 0x015661 05:9651: 00        .byte con_00   ; 

- D 0 - I - 0x015662 05:9652: 8D        .byte $8D   ; 
- D 0 - I - 0x015663 05:9653: 8D        .byte $8D   ; 
- D 0 - I - 0x015664 05:9654: 8D        .byte $8D   ; 

- D 0 - I - 0x015665 05:9655: 02        .byte con_02   ; 
- D 0 - I - 0x015666 05:9656: 00        .byte con_00   ; 

- D 0 - I - 0x015667 05:9657: 80        .byte $80   ; 

- D 0 - I - 0x015668 05:9658: 08        .byte con_08, $01   ; 

- D 0 - I - 0x01566A 05:965A: 30        .byte $30   ; 
- D 0 - I - 0x01566B 05:965B: 2F        .byte $2F   ; 
- D 0 - I - 0x01566C 05:965C: 2E        .byte $2E   ; 
- D 0 - I - 0x01566D 05:965D: 2D        .byte $2D   ; 
- D 0 - I - 0x01566E 05:965E: 2C        .byte $2C   ; 
- D 0 - I - 0x01566F 05:965F: 2B        .byte $2B   ; 
- D 0 - I - 0x015670 05:9660: 2A        .byte $2A   ; 
- D 0 - I - 0x015671 05:9661: 29        .byte $29   ; 
- D 0 - I - 0x015672 05:9662: 28        .byte $28   ; 
- D 0 - I - 0x015673 05:9663: 27        .byte $27   ; 
- D 0 - I - 0x015674 05:9664: 26        .byte $26   ; 
- D 0 - I - 0x015675 05:9665: 25        .byte $25   ; 
- D 0 - I - 0x015676 05:9666: 24        .byte $24   ; 
- D 0 - I - 0x015677 05:9667: 23        .byte $23   ; 
- D 0 - I - 0x015678 05:9668: 22        .byte $22   ; 
- D 0 - I - 0x015679 05:9669: 21        .byte $21   ; 
loc_16_966A:
- D 0 - I - 0x01567A 05:966A: 04        .byte con_04, $00   ; 
off_0E_966C:
- D 0 - I - 0x01567C 05:966C: 04        .byte con_04, $00   ; 
- D 0 - I - 0x01567E 05:966E: 07        .byte con_07, $09   ; 
- D 0 - I - 0x015680 05:9670: 06        .byte con_06, $64   ; 

- D 0 - I - 0x015682 05:9672: 91        .byte $91   ; 
- D 0 - I - 0x015683 05:9673: 94        .byte $94   ; 
- D 0 - I - 0x015684 05:9674: B6        .byte $B6   ; 
- D 0 - I - 0x015685 05:9675: 71        .byte $71   ; 
- D 0 - I - 0x015686 05:9676: 94        .byte $94   ; 

- D 0 - I - 0x015687 05:9677: 02        .byte con_02   ; 

- D 0 - I - 0x015688 05:9678: 96        .byte $96   ; 
- D 0 - I - 0x015689 05:9679: 7D        .byte $7D   ; 
- D 0 - I - 0x01568A 05:967A: 7E        .byte $7E   ; 

- D 0 - I - 0x01568B 05:967B: 03        .byte con_03   ; 

- D 0 - I - 0x01568C 05:967C: 88        .byte $88   ; 
- D 0 - I - 0x01568D 05:967D: 66        .byte $66   ; 
- D 0 - I - 0x01568E 05:967E: 86        .byte $86   ; 
- D 0 - I - 0x01568F 05:967F: 83        .byte $83   ; 
- D 0 - I - 0x015690 05:9680: 83        .byte $83   ; 

- D 0 - I - 0x015691 05:9681: 03        .byte con_03   ; 

- D 0 - I - 0x015692 05:9682: 98        .byte $98   ; 
- D 0 - I - 0x015693 05:9683: 78        .byte $78   ; 
- D 0 - I - 0x015694 05:9684: 98        .byte $98   ; 
- D 0 - I - 0x015695 05:9685: 94        .byte $94   ; 
- D 0 - I - 0x015696 05:9686: 8F        .byte $8F   ; 
- D 0 - I - 0x015697 05:9687: 92        .byte $92   ; 
- D 0 - I - 0x015698 05:9688: B4        .byte $B4   ; 
- D 0 - I - 0x015699 05:9689: 6F        .byte $6F   ; 
- D 0 - I - 0x01569A 05:968A: 92        .byte $92   ; 

- D 0 - I - 0x01569B 05:968B: 01        .byte con_01   ; 

- D 0 - I - 0x01569C 05:968C: 94        .byte $94   ; 
- D 0 - I - 0x01569D 05:968D: 74        .byte $74   ; 

- D 0 - I - 0x01569E 05:968E: 12        .byte con_12, $40   ; 
- D 0 - I - 0x0156A0 05:9690: 96 A1     .dbyt off_12_96A1

- D 0 - I - 0x0156A2 05:9692: 74        .byte $74   ; 

- D 0 - I - 0x0156A3 05:9693: 01        .byte con_01   ; 

- D 0 - I - 0x0156A4 05:9694: 74        .byte $74   ; 
- D 0 - I - 0x0156A5 05:9695: 9D        .byte $9D   ; 
- D 0 - I - 0x0156A6 05:9696: 99        .byte $99   ; 
- D 0 - I - 0x0156A7 05:9697: 79        .byte $79   ; 
- D 0 - I - 0x0156A8 05:9698: 94        .byte $94   ; 

- D 0 - I - 0x0156A9 05:9699: 01        .byte con_01   ; 

- D 0 - I - 0x0156AA 05:969A: D4        .byte $D4   ; 

- D 0 - I - 0x0156AB 05:969B: 01        .byte con_01   ; 

- D 0 - I - 0x0156AC 05:969C: 74        .byte $74   ; 

- D 0 - I - 0x0156AD 05:969D: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x0156AF 05:969F: 96 6C     .dbyt off_0E_966C
off_12_96A1:
- D 0 - I - 0x0156B1 05:96A1: 01        .byte con_01   ; 

- D 0 - I - 0x0156B2 05:96A2: 78        .byte $78   ; 
- D 0 - I - 0x0156B3 05:96A3: 79        .byte $79   ; 
- D 0 - I - 0x0156B4 05:96A4: 9B        .byte $9B   ; 
- D 0 - I - 0x0156B5 05:96A5: 99        .byte $99   ; 
- D 0 - I - 0x0156B6 05:96A6: 7B        .byte $7B   ; 
- D 0 - I - 0x0156B7 05:96A7: 9D        .byte $9D   ; 

- D 0 - I - 0x0156B8 05:96A8: 01        .byte con_01   ; 

- D 0 - I - 0x0156B9 05:96A9: D9        .byte $D9   ; 

- D 0 - I - 0x0156BA 05:96AA: 01        .byte con_01   ; 

- D 0 - I - 0x0156BB 05:96AB: 79        .byte $79   ; 
off_0E_96AC:
- D 0 - I - 0x0156BC 05:96AC: 04        .byte con_04, $00   ; 

- D 0 - I - 0x0156BE 05:96AE: 72        .byte $72   ; 
- D 0 - I - 0x0156BF 05:96AF: 76        .byte $76   ; 
- D 0 - I - 0x0156C0 05:96B0: 79        .byte $79   ; 
- D 0 - I - 0x0156C1 05:96B1: 9E        .byte $9E   ; 
- D 0 - I - 0x0156C2 05:96B2: 9D        .byte $9D   ; 

- D 0 - I - 0x0156C3 05:96B3: 03        .byte con_03   ; 

- D 0 - I - 0x0156C4 05:96B4: 88        .byte $88   ; 
- D 0 - I - 0x0156C5 05:96B5: 86        .byte $86   ; 
- D 0 - I - 0x0156C6 05:96B6: 63        .byte $63   ; 
- D 0 - I - 0x0156C7 05:96B7: 03        .byte con_03   ; 

- D 0 - I - 0x0156C8 05:96B8: 98        .byte $98   ; 
- D 0 - I - 0x0156C9 05:96B9: 94        .byte $94   ; 

- D 0 - I - 0x0156CA 05:96BA: 12        .byte con_12, $00   ; 
- D 0 - I - 0x0156CC 05:96BC: 96 CC     .dbyt off_12_96CC

- D 0 - I - 0x0156CE 05:96BE: 99        .byte $99   ; 

- D 0 - I - 0x0156CF 05:96BF: 03        .byte con_03   ; 

- D 0 - I - 0x0156D0 05:96C0: 88        .byte $88   ; 
- D 0 - I - 0x0156D1 05:96C1: AD        .byte $AD   ; 
- D 0 - I - 0x0156D2 05:96C2: 61        .byte $61   ; 
- D 0 - I - 0x0156D3 05:96C3: 88        .byte $88   ; 

- D 0 - I - 0x0156D4 05:96C4: 01        .byte con_01   ; 

- D 0 - I - 0x0156D5 05:96C5: AD        .byte $AD   ; 

- D 0 - I - 0x0156D6 05:96C6: 01        .byte con_01   ; 

- D 0 - I - 0x0156D7 05:96C7: 6D        .byte $6D   ; 

- D 0 - I - 0x0156D8 05:96C8: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x0156DA 05:96CA: 96 AC     .dbyt off_0E_96AC
off_12_96CC:
- D 0 - I - 0x0156DC 05:96CC: 99        .byte $99   ; 
- D 0 - I - 0x0156DD 05:96CD: 79        .byte $79   ; 
- D 0 - I - 0x0156DE 05:96CE: 9B        .byte $9B   ; 
- D 0 - I - 0x0156DF 05:96CF: 9B        .byte $9B   ; 
- D 0 - I - 0x0156E0 05:96D0: 9D        .byte $9D   ; 

- D 0 - I - 0x0156E1 05:96D1: 03        .byte con_03   ; 

- D 0 - I - 0x0156E2 05:96D2: 88        .byte $88   ; 
- D 0 - I - 0x0156E3 05:96D3: 66        .byte $66   ; 
- D 0 - I - 0x0156E4 05:96D4: 85        .byte $85   ; 
- D 0 - I - 0x0156E5 05:96D5: 83        .byte $83   ; 

- D 0 - I - 0x0156E6 05:96D6: 03        .byte con_03   ; 

- D 0 - I - 0x0156E7 05:96D7: 72        .byte $72   ; 
- D 0 - I - 0x0156E8 05:96D8: 76        .byte $76   ; 
- D 0 - I - 0x0156E9 05:96D9: 79        .byte $79   ; 
- D 0 - I - 0x0156EA 05:96DA: 9E        .byte $9E   ; 
- D 0 - I - 0x0156EB 05:96DB: 9D        .byte $9D   ; 

- D 0 - I - 0x0156EC 05:96DC: 03        .byte con_03   ; 

- D 0 - I - 0x0156ED 05:96DD: 88        .byte $88   ; 
- D 0 - I - 0x0156EE 05:96DE: 86        .byte $86   ; 
- D 0 - I - 0x0156EF 05:96DF: 63        .byte $63   ; 

- D 0 - I - 0x0156F0 05:96E0: 03        .byte con_03   ; 

- D 0 - I - 0x0156F1 05:96E1: 98        .byte $98   ; 
- D 0 - I - 0x0156F2 05:96E2: 94        .byte $94   ; 
- D 0 - I - 0x0156F3 05:96E3: 99        .byte $99   ; 

- D 0 - I - 0x0156F4 05:96E4: 03        .byte con_03   ; 

- D 0 - I - 0x0156F5 05:96E5: 88        .byte $88   ; 
- D 0 - I - 0x0156F6 05:96E6: AD        .byte $AD   ; 
- D 0 - I - 0x0156F7 05:96E7: 61        .byte $61   ; 
- D 0 - I - 0x0156F8 05:96E8: 88        .byte $88   ; 

- D 0 - I - 0x0156F9 05:96E9: 01        .byte con_01   ; 

- D 0 - I - 0x0156FA 05:96EA: AD        .byte $AD   ; 

- D 0 - I - 0x0156FB 05:96EB: 01        .byte con_01   ; 

- D 0 - I - 0x0156FC 05:96EC: 6D        .byte $6D   ; 

- D 0 - I - 0x0156FD 05:96ED: 03        .byte con_03   ; 

- D 0 - I - 0x0156FE 05:96EE: 72        .byte $72   ; 
- D 0 - I - 0x0156FF 05:96EF: 76        .byte $76   ; 
- D 0 - I - 0x015700 05:96F0: 79        .byte $79   ; 
- D 0 - I - 0x015701 05:96F1: 9E        .byte $9E   ; 
- D 0 - I - 0x015702 05:96F2: 9D        .byte $9D   ; 

- D 0 - I - 0x015703 05:96F3: 03        .byte con_03   ; 

- D 0 - I - 0x015704 05:96F4: 88        .byte $88   ; 

- D 0 - I - 0x015705 05:96F5: 03        .byte con_03   ; 

- D 0 - I - 0x015706 05:96F6: 94        .byte $94   ; 
- D 0 - I - 0x015707 05:96F7: 78        .byte $78   ; 
- D 0 - I - 0x015708 05:96F8: 99        .byte $99   ; 
- D 0 - I - 0x015709 05:96F9: 9B        .byte $9B   ; 

- D 0 - I - 0x01570A 05:96FA: 03        .byte con_03   ; 

- D 0 - I - 0x01570B 05:96FB: 6D        .byte $6D   ; 
- D 0 - I - 0x01570C 05:96FC: 6D        .byte $6D   ; 
- D 0 - I - 0x01570D 05:96FD: 6D        .byte $6D   ; 
- D 0 - I - 0x01570E 05:96FE: 80        .byte $80   ; 

- D 0 - I - 0x01570F 05:96FF: 00        .byte con_00   ; 

- D 0 - I - 0x015710 05:9700: 8D        .byte $8D   ; 
- D 0 - I - 0x015711 05:9701: 8D        .byte $8D   ; 
- D 0 - I - 0x015712 05:9702: 8D        .byte $8D   ; 

- D 0 - I - 0x015713 05:9703: 00        .byte con_00   ; 

- D 0 - I - 0x015714 05:9704: A0        .byte $A0   ; 

- D 0 - I - 0x015715 05:9705: 02        .byte con_02   ; 

- D 0 - I - 0x015716 05:9706: 80        .byte $80   ; 

- D 0 - I - 0x015717 05:9707: 16        .byte con_jump   ; 
- D 0 - I - 0x015718 05:9708: 96 6A     .dbyt loc_16_966A


; bzk garbage
- - - - - - 0x01571A 05:970A: 17        .byte con_stop   ; 



_off019_02_970B_01:
- D 0 - I - 0x01571B 05:970B: 06        .byte con_06, $64   ; 
- D 0 - I - 0x01571D 05:970D: 07        .byte con_07, $08   ; 
- D 0 - I - 0x01571F 05:970F: 09        .byte con_09, $01   ; 
- D 0 - I - 0x015721 05:9711: 18        .byte con_18, $40   ; 
- D 0 - I - 0x015723 05:9713: 0C        .byte con_0C, $02   ; 
- D 0 - I - 0x015725 05:9715: 08        .byte con_08, $00   ; 

- D 0 - I - 0x015727 05:9717: 79        .byte $79   ; 
- D 0 - I - 0x015728 05:9718: 7D        .byte $7D   ; 

- D 0 - I - 0x015729 05:9719: 03        .byte con_03   ; 

- D 0 - I - 0x01572A 05:971A: 68        .byte $68   ; 
- D 0 - I - 0x01572B 05:971B: 8D        .byte $8D   ; 
- D 0 - I - 0x01572C 05:971C: 8C        .byte $8C   ; 
- D 0 - I - 0x01572D 05:971D: 8F        .byte $8F   ; 
- D 0 - I - 0x01572E 05:971E: 88        .byte $88   ; 
- D 0 - I - 0x01572F 05:971F: 69        .byte $69   ; 
- D 0 - I - 0x015730 05:9720: 8A        .byte $8A   ; 
- D 0 - I - 0x015731 05:9721: 8C        .byte $8C   ; 

- D 0 - I - 0x015732 05:9722: 06        .byte con_06, $FF   ; 

- D 0 - I - 0x015734 05:9724: 6D        .byte $6D   ; 
- D 0 - I - 0x015735 05:9725: 6D        .byte $6D   ; 
- D 0 - I - 0x015736 05:9726: 6D        .byte $6D   ; 
- D 0 - I - 0x015737 05:9727: 80        .byte $80   ; 

- D 0 - I - 0x015738 05:9728: 00        .byte con_00   ; 

- D 0 - I - 0x015739 05:9729: 8D        .byte $8D   ; 
- D 0 - I - 0x01573A 05:972A: 8D        .byte $8D   ; 
- D 0 - I - 0x01573B 05:972B: 8D        .byte $8D   ; 

- D 0 - I - 0x01573C 05:972C: 02        .byte con_02   ; 
- D 0 - I - 0x01573D 05:972D: 00        .byte con_00   ; 

- D 0 - I - 0x01573E 05:972E: 80        .byte $80   ; 
- D 0 - I - 0x01573F 05:972F: A0        .byte $A0   ; 
loc_16_9730:
- D 0 - I - 0x015740 05:9730: 04        .byte con_04, $08   ; 
off_0E_9732:
- D 0 - I - 0x015742 05:9732: 04        .byte con_04, $08   ; 
- D 0 - I - 0x015744 05:9734: 0C        .byte con_0C, $00   ; 
- D 0 - I - 0x015746 05:9736: 07        .byte con_07, $08   ; 
- D 0 - I - 0x015748 05:9738: 08        .byte con_08, $01   ; 
- D 0 - I - 0x01574A 05:973A: 06        .byte con_06, $64   ; 
- D 0 - I - 0x01574C 05:973C: 18        .byte con_18, $80   ; 

- D 0 - I - 0x01574E 05:973E: 88        .byte $88   ; 
- D 0 - I - 0x01574F 05:973F: 61        .byte $61   ; 
- D 0 - I - 0x015750 05:9740: 8A        .byte $8A   ; 
- D 0 - I - 0x015751 05:9741: 81        .byte $81   ; 
- D 0 - I - 0x015752 05:9742: 8C        .byte $8C   ; 
- D 0 - I - 0x015753 05:9743: 81        .byte $81   ; 
- D 0 - I - 0x015754 05:9744: 6A        .byte $6A   ; 
- D 0 - I - 0x015755 05:9745: 8A        .byte $8A   ; 
- D 0 - I - 0x015756 05:9746: 81        .byte $81   ; 
- D 0 - I - 0x015757 05:9747: 88        .byte $88   ; 

- D 0 - I - 0x015758 05:9748: 03        .byte con_03   ; 

- D 0 - I - 0x015759 05:9749: 78        .byte $78   ; 

- D 0 - I - 0x01575A 05:974A: 03        .byte con_03   ; 

- D 0 - I - 0x01575B 05:974B: 89        .byte $89   ; 

- D 0 - I - 0x01575C 05:974C: 03        .byte con_03   ; 

- D 0 - I - 0x01575D 05:974D: 98        .byte $98   ; 

- D 0 - I - 0x01575E 05:974E: 03        .byte con_03   ; 

- D 0 - I - 0x01575F 05:974F: 8A        .byte $8A   ; 

- D 0 - I - 0x015760 05:9750: 03        .byte con_03   ; 

- D 0 - I - 0x015761 05:9751: 98        .byte $98   ; 

- D 0 - I - 0x015762 05:9752: 03        .byte con_03   ; 

- D 0 - I - 0x015763 05:9753: 69        .byte $69   ; 
- D 0 - I - 0x015764 05:9754: 89        .byte $89   ; 

- D 0 - I - 0x015765 05:9755: 03        .byte con_03   ; 

- D 0 - I - 0x015766 05:9756: 98        .byte $98   ; 
- D 0 - I - 0x015767 05:9757: 9E        .byte $9E   ; 
- D 0 - I - 0x015768 05:9758: 78        .byte $78   ; 

- D 0 - I - 0x015769 05:9759: 03        .byte con_03   ; 

- D 0 - I - 0x01576A 05:975A: 88        .byte $88   ; 

- D 0 - I - 0x01576B 05:975B: 03        .byte con_03   ; 

- D 0 - I - 0x01576C 05:975C: 98        .byte $98   ; 

- D 0 - I - 0x01576D 05:975D: 03        .byte con_03   ; 

- D 0 - I - 0x01576E 05:975E: 8C        .byte $8C   ; 

- D 0 - I - 0x01576F 05:975F: 03        .byte con_03   ; 

- D 0 - I - 0x015770 05:9760: 98        .byte $98   ; 

- D 0 - I - 0x015771 05:9761: 03        .byte con_03   ; 

- D 0 - I - 0x015772 05:9762: 68        .byte $68   ; 
- D 0 - I - 0x015773 05:9763: 88        .byte $88   ; 

- D 0 - I - 0x015774 05:9764: 03        .byte con_03   ; 

- D 0 - I - 0x015775 05:9765: 98        .byte $98   ; 

- D 0 - I - 0x015776 05:9766: 03        .byte con_03   ; 

- D 0 - I - 0x015777 05:9767: 88        .byte $88   ; 
- D 0 - I - 0x015778 05:9768: 61        .byte $61   ; 
- D 0 - I - 0x015779 05:9769: 8A        .byte $8A   ; 
- D 0 - I - 0x01577A 05:976A: 81        .byte $81   ; 
- D 0 - I - 0x01577B 05:976B: 8C        .byte $8C   ; 
- D 0 - I - 0x01577C 05:976C: 81        .byte $81   ; 
- D 0 - I - 0x01577D 05:976D: 6A        .byte $6A   ; 
- D 0 - I - 0x01577E 05:976E: 8A        .byte $8A   ; 
- D 0 - I - 0x01577F 05:976F: 81        .byte $81   ; 

- D 0 - I - 0x015780 05:9770: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x015782 05:9772: 97 32     .dbyt off_0E_9732
off_0E_9774:
- D 0 - I - 0x015784 05:9774: 04        .byte con_04, $00   ; 
- D 0 - I - 0x015786 05:9776: 18        .byte con_18, $80   ; 
- D 0 - I - 0x015788 05:9778: 09        .byte con_09, $02   ; 

- D 0 - I - 0x01578A 05:977A: 99        .byte $99   ; 
- D 0 - I - 0x01578B 05:977B: 72        .byte $72   ; 
- D 0 - I - 0x01578C 05:977C: 9B        .byte $9B   ; 
- D 0 - I - 0x01578D 05:977D: 92        .byte $92   ; 

- D 0 - I - 0x01578E 05:977E: 03        .byte con_03   ; 

- D 0 - I - 0x01578F 05:977F: 88        .byte $88   ; 

- D 0 - I - 0x015790 05:9780: 03        .byte con_03   ; 

- D 0 - I - 0x015791 05:9781: 98        .byte $98   ; 

- D 0 - I - 0x015792 05:9782: 03        .byte con_03   ; 

- D 0 - I - 0x015793 05:9783: 68        .byte $68   ; 
- D 0 - I - 0x015794 05:9784: 88        .byte $88   ; 

- D 0 - I - 0x015795 05:9785: 03        .byte con_03   ; 

- D 0 - I - 0x015796 05:9786: 94        .byte $94   ; 

- D 0 - I - 0x015797 05:9787: 03        .byte con_03   ; 

- D 0 - I - 0x015798 05:9788: 68        .byte $68   ; 
- D 0 - I - 0x015799 05:9789: 65        .byte $65   ; 
- D 0 - I - 0x01579A 05:978A: 61        .byte $61   ; 
- D 0 - I - 0x01579B 05:978B: 6A        .byte $6A   ; 
- D 0 - I - 0x01579C 05:978C: 67        .byte $67   ; 
- D 0 - I - 0x01579D 05:978D: 68        .byte $68   ; 
- D 0 - I - 0x01579E 05:978E: 65        .byte $65   ; 
- D 0 - I - 0x01579F 05:978F: 61        .byte $61   ; 
- D 0 - I - 0x0157A0 05:9790: 68        .byte $68   ; 
- D 0 - I - 0x0157A1 05:9791: 65        .byte $65   ; 
- D 0 - I - 0x0157A2 05:9792: 61        .byte $61   ; 
- D 0 - I - 0x0157A3 05:9793: 6A        .byte $6A   ; 
- D 0 - I - 0x0157A4 05:9794: 67        .byte $67   ; 
- D 0 - I - 0x0157A5 05:9795: 68        .byte $68   ; 
- D 0 - I - 0x0157A6 05:9796: 65        .byte $65   ; 
- D 0 - I - 0x0157A7 05:9797: 61        .byte $61   ; 
- D 0 - I - 0x0157A8 05:9798: 81        .byte $81   ; 

- D 0 - I - 0x0157A9 05:9799: 03        .byte con_03   ; 

- D 0 - I - 0x0157AA 05:979A: 72        .byte $72   ; 
- D 0 - I - 0x0157AB 05:979B: 9B        .byte $9B   ; 
- D 0 - I - 0x0157AC 05:979C: 92        .byte $92   ; 

- D 0 - I - 0x0157AD 05:979D: 03        .byte con_03   ; 

- D 0 - I - 0x0157AE 05:979E: 88        .byte $88   ; 

- D 0 - I - 0x0157AF 05:979F: 03        .byte con_03   ; 

- D 0 - I - 0x0157B0 05:97A0: 98        .byte $98   ; 

- D 0 - I - 0x0157B1 05:97A1: 03        .byte con_03   ; 

- D 0 - I - 0x0157B2 05:97A2: 68        .byte $68   ; 
- D 0 - I - 0x0157B3 05:97A3: 88        .byte $88   ; 

- D 0 - I - 0x0157B4 05:97A4: 03        .byte con_03   ; 

- D 0 - I - 0x0157B5 05:97A5: 94        .byte $94   ; 

- D 0 - I - 0x0157B6 05:97A6: 12        .byte con_12, $00   ; 
- D 0 - I - 0x0157B8 05:97A8: 97 BC     .dbyt off_12_97BC

- D 0 - I - 0x0157BA 05:97AA: 18        .byte con_18, $40   ; 
- D 0 - I - 0x0157BC 05:97AC: 09        .byte con_09, $01   ; 
- D 0 - I - 0x0157BE 05:97AE: 03        .byte con_03   ; 

- D 0 - I - 0x0157BF 05:97AF: 88        .byte $88   ; 
- D 0 - I - 0x0157C0 05:97B0: 68        .byte $68   ; 
- D 0 - I - 0x0157C1 05:97B1: 86        .byte $86   ; 
- D 0 - I - 0x0157C2 05:97B2: 86        .byte $86   ; 
- D 0 - I - 0x0157C3 05:97B3: 85        .byte $85   ; 
- D 0 - I - 0x0157C4 05:97B4: 85        .byte $85   ; 
- D 0 - I - 0x0157C5 05:97B5: 61        .byte $61   ; 
- D 0 - I - 0x0157C6 05:97B6: 81        .byte $81   ; 
- D 0 - I - 0x0157C7 05:97B7: 83        .byte $83   ; 

- D 0 - I - 0x0157C8 05:97B8: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x0157CA 05:97BA: 97 74     .dbyt off_0E_9774
off_12_97BC:
- D 0 - I - 0x0157CC 05:97BC: 18        .byte con_18, $40   ; 
- D 0 - I - 0x0157CE 05:97BE: 09        .byte con_09, $01   ; 
- D 0 - I - 0x0157D0 05:97C0: 03        .byte con_03   ; 

- D 0 - I - 0x0157D1 05:97C1: 6D        .byte $6D   ; 
- D 0 - I - 0x0157D2 05:97C2: 6D        .byte $6D   ; 
- D 0 - I - 0x0157D3 05:97C3: 6D        .byte $6D   ; 
- D 0 - I - 0x0157D4 05:97C4: 80        .byte $80   ; 

- D 0 - I - 0x0157D5 05:97C5: 00        .byte con_00   ; 

- D 0 - I - 0x0157D6 05:97C6: 8D        .byte $8D   ; 
- D 0 - I - 0x0157D7 05:97C7: 8D        .byte $8D   ; 

- D 0 - I - 0x0157D8 05:97C8: 18        .byte con_18, $80   ; 
- D 0 - I - 0x0157DA 05:97CA: 07        .byte con_07, $0D   ; 
- D 0 - I - 0x0157DC 05:97CC: 08        .byte con_08, $03   ; 

- D 0 - I - 0x0157DE 05:97CE: 8D        .byte $8D   ; 

- D 0 - I - 0x0157DF 05:97CF: 00        .byte con_00   ; 

- D 0 - I - 0x0157E0 05:97D0: A0        .byte $A0   ; 

- D 0 - I - 0x0157E1 05:97D1: 02        .byte con_02   ; 

- D 0 - I - 0x0157E2 05:97D2: 80        .byte $80   ; 

- D 0 - I - 0x0157E3 05:97D3: 16        .byte con_jump   ; 
- D 0 - I - 0x0157E4 05:97D4: 97 30     .dbyt loc_16_9730


; bzk garbage
- - - - - - 0x0157E6 05:97D6: 17        .byte con_stop   ; 



_off019_02_97D7_02:
- D 0 - I - 0x0157E7 05:97D7: 06        .byte con_06, $C8   ; 
- D 0 - I - 0x0157E9 05:97D9: 08        .byte con_08, $00   ; 
- D 0 - I - 0x0157EB 05:97DB: 09        .byte con_09, $02   ; 

- D 0 - I - 0x0157ED 05:97DD: 6D        .byte $6D   ; 
- D 0 - I - 0x0157EE 05:97DE: 71        .byte $71   ; 
- D 0 - I - 0x0157EF 05:97DF: 74        .byte $74   ; 
- D 0 - I - 0x0157F0 05:97E0: 99        .byte $99   ; 
- D 0 - I - 0x0157F1 05:97E1: 98        .byte $98   ; 
- D 0 - I - 0x0157F2 05:97E2: 9B        .byte $9B   ; 
- D 0 - I - 0x0157F3 05:97E3: 94        .byte $94   ; 
- D 0 - I - 0x0157F4 05:97E4: 75        .byte $75   ; 
- D 0 - I - 0x0157F5 05:97E5: 96        .byte $96   ; 
- D 0 - I - 0x0157F6 05:97E6: 98        .byte $98   ; 
- D 0 - I - 0x0157F7 05:97E7: 79        .byte $79   ; 
- D 0 - I - 0x0157F8 05:97E8: 79        .byte $79   ; 
- D 0 - I - 0x0157F9 05:97E9: 79        .byte $79   ; 
- D 0 - I - 0x0157FA 05:97EA: 80        .byte $80   ; 

- D 0 - I - 0x0157FB 05:97EB: 00        .byte con_00   ; 

- D 0 - I - 0x0157FC 05:97EC: 99        .byte $99   ; 
- D 0 - I - 0x0157FD 05:97ED: 99        .byte $99   ; 
- D 0 - I - 0x0157FE 05:97EE: 99        .byte $99   ; 

- D 0 - I - 0x0157FF 05:97EF: 00        .byte con_00   ; 

- D 0 - I - 0x015800 05:97F0: A0        .byte $A0   ; 

- D 0 - I - 0x015801 05:97F1: 02        .byte con_02   ; 

- D 0 - I - 0x015802 05:97F2: 80        .byte $80   ; 
loc_16_97F3:
- D 0 - I - 0x015803 05:97F3: 04        .byte con_04, $00   ; 
off_0E_97F5:
- D 0 - I - 0x015805 05:97F5: 04        .byte con_04, $00   ; 
- D 0 - I - 0x015807 05:97F7: 02        .byte con_02   ; 

- D 0 - I - 0x015808 05:97F8: 8D        .byte $8D   ; 
- D 0 - I - 0x015809 05:97F9: 74        .byte $74   ; 

- D 0 - I - 0x01580A 05:97FA: 02        .byte con_02   ; 

- D 0 - I - 0x01580B 05:97FB: 94        .byte $94   ; 
- D 0 - I - 0x01580C 05:97FC: 96        .byte $96   ; 
- D 0 - I - 0x01580D 05:97FD: 96        .byte $96   ; 
- D 0 - I - 0x01580E 05:97FE: 74        .byte $74   ; 
- D 0 - I - 0x01580F 05:97FF: 94        .byte $94   ; 
- D 0 - I - 0x015810 05:9800: 8D        .byte $8D   ; 

- D 0 - I - 0x015811 05:9801: 02        .byte con_02   ; 

- D 0 - I - 0x015812 05:9802: 8C        .byte $8C   ; 
- D 0 - I - 0x015813 05:9803: 74        .byte $74   ; 

- D 0 - I - 0x015814 05:9804: 02        .byte con_02   ; 

- D 0 - I - 0x015815 05:9805: 94        .byte $94   ; 
- D 0 - I - 0x015816 05:9806: 96        .byte $96   ; 
- D 0 - I - 0x015817 05:9807: 96        .byte $96   ; 
- D 0 - I - 0x015818 05:9808: 74        .byte $74   ; 
- D 0 - I - 0x015819 05:9809: 94        .byte $94   ; 
- D 0 - I - 0x01581A 05:980A: 8D        .byte $8D   ; 

- D 0 - I - 0x01581B 05:980B: 02        .byte con_02   ; 

- D 0 - I - 0x01581C 05:980C: 8C        .byte $8C   ; 
- D 0 - I - 0x01581D 05:980D: 74        .byte $74   ; 

- D 0 - I - 0x01581E 05:980E: 02        .byte con_02   ; 

- D 0 - I - 0x01581F 05:980F: 94        .byte $94   ; 
- D 0 - I - 0x015820 05:9810: 96        .byte $96   ; 
- D 0 - I - 0x015821 05:9811: 96        .byte $96   ; 
- D 0 - I - 0x015822 05:9812: 74        .byte $74   ; 
- D 0 - I - 0x015823 05:9813: 94        .byte $94   ; 
- D 0 - I - 0x015824 05:9814: 98        .byte $98   ; 

- D 0 - I - 0x015825 05:9815: 02        .byte con_02   ; 

- D 0 - I - 0x015826 05:9816: 8D        .byte $8D   ; 
- D 0 - I - 0x015827 05:9817: 74        .byte $74   ; 

- D 0 - I - 0x015828 05:9818: 02        .byte con_02   ; 

- D 0 - I - 0x015829 05:9819: 94        .byte $94   ; 
- D 0 - I - 0x01582A 05:981A: 96        .byte $96   ; 
- D 0 - I - 0x01582B 05:981B: 96        .byte $96   ; 
- D 0 - I - 0x01582C 05:981C: 74        .byte $74   ; 
- D 0 - I - 0x01582D 05:981D: 73        .byte $73   ; 
- D 0 - I - 0x01582E 05:981E: 74        .byte $74   ; 
- D 0 - I - 0x01582F 05:981F: 6D        .byte $6D   ; 
- D 0 - I - 0x015830 05:9820: 78        .byte $78   ; 

- D 0 - I - 0x015831 05:9821: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x015833 05:9823: 97 F5     .dbyt off_0E_97F5
off_0E_9825:
- D 0 - I - 0x015835 05:9825: 04        .byte con_04, $00   ; 
- D 0 - I - 0x015837 05:9827: 02        .byte con_02   ; 

- D 0 - I - 0x015838 05:9828: 92        .byte $92   ; 
- D 0 - I - 0x015839 05:9829: 79        .byte $79   ; 

- D 0 - I - 0x01583A 05:982A: 02        .byte con_02   ; 

- D 0 - I - 0x01583B 05:982B: 99        .byte $99   ; 
- D 0 - I - 0x01583C 05:982C: 94        .byte $94   ; 
- D 0 - I - 0x01583D 05:982D: 9B        .byte $9B   ; 
- D 0 - I - 0x01583E 05:982E: 7D        .byte $7D   ; 
- D 0 - I - 0x01583F 05:982F: 99        .byte $99   ; 
- D 0 - I - 0x015840 05:9830: 98        .byte $98   ; 

- D 0 - I - 0x015841 05:9831: 02        .byte con_02   ; 

- D 0 - I - 0x015842 05:9832: 99        .byte $99   ; 
- D 0 - I - 0x015843 05:9833: 78        .byte $78   ; 

- D 0 - I - 0x015844 05:9834: 02        .byte con_02   ; 

- D 0 - I - 0x015845 05:9835: 98        .byte $98   ; 
- D 0 - I - 0x015846 05:9836: 99        .byte $99   ; 
- D 0 - I - 0x015847 05:9837: 99        .byte $99   ; 
- D 0 - I - 0x015848 05:9838: 78        .byte $78   ; 
- D 0 - I - 0x015849 05:9839: 98        .byte $98   ; 
- D 0 - I - 0x01584A 05:983A: 99        .byte $99   ; 

- D 0 - I - 0x01584B 05:983B: 02        .byte con_02   ; 

- D 0 - I - 0x01584C 05:983C: 92        .byte $92   ; 
- D 0 - I - 0x01584D 05:983D: 79        .byte $79   ; 

- D 0 - I - 0x01584E 05:983E: 02        .byte con_02   ; 

- D 0 - I - 0x01584F 05:983F: 99        .byte $99   ; 
- D 0 - I - 0x015850 05:9840: 94        .byte $94   ; 
- D 0 - I - 0x015851 05:9841: 9B        .byte $9B   ; 
- D 0 - I - 0x015852 05:9842: 7D        .byte $7D   ; 
- D 0 - I - 0x015853 05:9843: 99        .byte $99   ; 
- D 0 - I - 0x015854 05:9844: 98        .byte $98   ; 

- D 0 - I - 0x015855 05:9845: 12        .byte con_12, $00   ; 
- D 0 - I - 0x015857 05:9847: 98 56     .dbyt off_12_9856

- D 0 - I - 0x015859 05:9849: 99        .byte $99   ; 
- D 0 - I - 0x01585A 05:984A: 79        .byte $79   ; 
- D 0 - I - 0x01585B 05:984B: 98        .byte $98   ; 
- D 0 - I - 0x01585C 05:984C: 98        .byte $98   ; 
- D 0 - I - 0x01585D 05:984D: 97        .byte $97   ; 
- D 0 - I - 0x01585E 05:984E: 97        .byte $97   ; 
- D 0 - I - 0x01585F 05:984F: 76        .byte $76   ; 
- D 0 - I - 0x015860 05:9850: 92        .byte $92   ; 
- D 0 - I - 0x015861 05:9851: 94        .byte $94   ; 

- D 0 - I - 0x015862 05:9852: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x015864 05:9854: 98 25     .dbyt off_0E_9825
off_12_9856:
- D 0 - I - 0x015866 05:9856: 79        .byte $79   ; 
- D 0 - I - 0x015867 05:9857: 79        .byte $79   ; 
- D 0 - I - 0x015868 05:9858: 79        .byte $79   ; 
- D 0 - I - 0x015869 05:9859: 80        .byte $80   ; 

- D 0 - I - 0x01586A 05:985A: 00        .byte con_00   ; 

- D 0 - I - 0x01586B 05:985B: 99        .byte $99   ; 
- D 0 - I - 0x01586C 05:985C: 99        .byte $99   ; 
- D 0 - I - 0x01586D 05:985D: 99        .byte $99   ; 

- D 0 - I - 0x01586E 05:985E: 00        .byte con_00   ; 

- D 0 - I - 0x01586F 05:985F: A0        .byte $A0   ; 

- D 0 - I - 0x015870 05:9860: 02        .byte con_02   ; 

- D 0 - I - 0x015871 05:9861: 80        .byte $80   ; 

- D 0 - I - 0x015872 05:9862: 16        .byte $16   ; 
- D 0 - I - 0x015873 05:9863: 97 F3     .dbyt loc_16_97F3


; bzk garbage
- - - - - - 0x015875 05:9865: 17        .byte con_stop   ; 



_off019_02_9866_03_disable:
- D 0 - I - 0x015876 05:9866: 17        .byte con_stop   ; 



_music_9867_03_stage_01:
- D 0 - I - 0x015877 05:9867: 00        .byte $00   ; 
- D 0 - I - 0x015878 05:9868: 98 70     .dbyt _off019_03_9870_00
- D 0 - I - 0x01587A 05:986A: 99 3D     .dbyt _off019_03_993D_01
- D 0 - I - 0x01587C 05:986C: 9A 3D     .dbyt _off019_03_9A3D_02
- D 0 - I - 0x01587E 05:986E: 9A E2     .dbyt _off019_03_9AE2_03_disable



_off019_03_9870_00:
- D 0 - I - 0x015880 05:9870: 05        .byte con_05, $01, $74   ; 
- D 0 - I - 0x015883 05:9873: 06        .byte con_06, $78   ; 
- D 0 - I - 0x015885 05:9875: 07        .byte con_07, $08   ; 
- D 0 - I - 0x015887 05:9877: 08        .byte con_08, $01   ; 
loc_16_9879:
- D 0 - I - 0x015889 05:9879: 04        .byte con_04, $08   ; 
off_0E_987B:
- D 0 - I - 0x01588B 05:987B: 04        .byte con_04, $08   ; 
- D 0 - I - 0x01588D 05:987D: 18        .byte con_18, $00   ; 
- D 0 - I - 0x01588F 05:987F: 09        .byte con_09, $01   ; 

- D 0 - I - 0x015891 05:9881: 91        .byte $91   ; 
- D 0 - I - 0x015892 05:9882: 6F        .byte $6F   ; 
- D 0 - I - 0x015893 05:9883: 72        .byte $72   ; 
- D 0 - I - 0x015894 05:9884: 60        .byte $60   ; 
- D 0 - I - 0x015895 05:9885: 6F        .byte $6F   ; 
- D 0 - I - 0x015896 05:9886: 60        .byte $60   ; 
- D 0 - I - 0x015897 05:9887: 71        .byte $71   ; 
- D 0 - I - 0x015898 05:9888: 60        .byte $60   ; 
- D 0 - I - 0x015899 05:9889: 71        .byte $71   ; 
- D 0 - I - 0x01589A 05:988A: 60        .byte $60   ; 
- D 0 - I - 0x01589B 05:988B: 6F        .byte $6F   ; 
- D 0 - I - 0x01589C 05:988C: 72        .byte $72   ; 
- D 0 - I - 0x01589D 05:988D: 60        .byte $60   ; 
- D 0 - I - 0x01589E 05:988E: 6F        .byte $6F   ; 
- D 0 - I - 0x01589F 05:988F: 60        .byte $60   ; 
- D 0 - I - 0x0158A0 05:9890: 94        .byte $94   ; 
- D 0 - I - 0x0158A1 05:9891: 72        .byte $72   ; 
- D 0 - I - 0x0158A2 05:9892: 71        .byte $71   ; 
- D 0 - I - 0x0158A3 05:9893: 60        .byte $60   ; 
- D 0 - I - 0x0158A4 05:9894: 6F        .byte $6F   ; 
- D 0 - I - 0x0158A5 05:9895: 60        .byte $60   ; 
- D 0 - I - 0x0158A6 05:9896: 6B        .byte $6B   ; 
- D 0 - I - 0x0158A7 05:9897: 6D        .byte $6D   ; 

- D 0 - I - 0x0158A8 05:9898: 09        .byte con_09, $02   ; 

- D 0 - I - 0x0158AA 05:989A: 12        .byte con_12, $08   ; 
- D 0 - I - 0x0158AC 05:989C: 98 A9     .dbyt off_12_98A9

- D 0 - I - 0x0158AE 05:989E: 6D        .byte $6D   ; 
- D 0 - I - 0x0158AF 05:989F: 70        .byte $70   ; 
- D 0 - I - 0x0158B0 05:98A0: 71        .byte $71   ; 
- D 0 - I - 0x0158B1 05:98A1: 72        .byte $72   ; 
- D 0 - I - 0x0158B2 05:98A2: 71        .byte $71   ; 
- D 0 - I - 0x0158B3 05:98A3: 70        .byte $70   ; 
- D 0 - I - 0x0158B4 05:98A4: 6D        .byte $6D   ; 

- D 0 - I - 0x0158B5 05:98A5: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x0158B7 05:98A7: 98 7B     .dbyt off_0E_987B
off_12_98A9:
- D 0 - I - 0x0158B9 05:98A9: 74        .byte $74   ; 
- D 0 - I - 0x0158BA 05:98AA: 72        .byte $72   ; 
- D 0 - I - 0x0158BB 05:98AB: 71        .byte $71   ; 
- D 0 - I - 0x0158BC 05:98AC: 72        .byte $72   ; 
- D 0 - I - 0x0158BD 05:98AD: 6D        .byte $6D   ; 
- D 0 - I - 0x0158BE 05:98AE: 6B        .byte $6B   ; 
- D 0 - I - 0x0158BF 05:98AF: 6D        .byte $6D   ; 
off_0E_98B0:
- D 0 - I - 0x0158C0 05:98B0: 04        .byte con_04, $08   ; 
- D 0 - I - 0x0158C2 05:98B2: 18        .byte con_18, $40   ; 
- D 0 - I - 0x0158C4 05:98B4: 09        .byte con_09, $01   ; 

- D 0 - I - 0x0158C6 05:98B6: 8D        .byte $8D   ; 
- D 0 - I - 0x0158C7 05:98B7: 91        .byte $91   ; 
- D 0 - I - 0x0158C8 05:98B8: B4        .byte $B4   ; 
- D 0 - I - 0x0158C9 05:98B9: 6D        .byte $6D   ; 
- D 0 - I - 0x0158CA 05:98BA: 91        .byte $91   ; 

- D 0 - I - 0x0158CB 05:98BB: 01        .byte con_01   ; 

- D 0 - I - 0x0158CC 05:98BC: 74        .byte $74   ; 

- D 0 - I - 0x0158CD 05:98BD: 01        .byte con_01   ; 

- D 0 - I - 0x0158CE 05:98BE: B4        .byte $B4   ; 
- D 0 - I - 0x0158CF 05:98BF: 92        .byte $92   ; 
- D 0 - I - 0x0158D0 05:98C0: 8F        .byte $8F   ; 
- D 0 - I - 0x0158D1 05:98C1: 8C        .byte $8C   ; 
- D 0 - I - 0x0158D2 05:98C2: 6C        .byte $6C   ; 

- D 0 - I - 0x0158D3 05:98C3: 12        .byte con_12, $08   ; 
- D 0 - I - 0x0158D5 05:98C5: 98 D3     .dbyt off_12_98D3

- D 0 - I - 0x0158D7 05:98C7: 6A        .byte $6A   ; 
- D 0 - I - 0x0158D8 05:98C8: 68        .byte $68   ; 
- D 0 - I - 0x0158D9 05:98C9: 6A        .byte $6A   ; 
- D 0 - I - 0x0158DA 05:98CA: 60        .byte $60   ; 

- D 0 - I - 0x0158DB 05:98CB: 01        .byte con_01   ; 

- D 0 - I - 0x0158DC 05:98CC: 68        .byte $68   ; 

- D 0 - I - 0x0158DD 05:98CD: 01        .byte con_01   ; 

- D 0 - I - 0x0158DE 05:98CE: A8        .byte $A8   ; 

- D 0 - I - 0x0158DF 05:98CF: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x0158E1 05:98D1: 98 B0     .dbyt off_0E_98B0
off_12_98D3:
- D 0 - I - 0x0158E3 05:98D3: 96        .byte $96   ; 
- D 0 - I - 0x0158E4 05:98D4: 96        .byte $96   ; 
- D 0 - I - 0x0158E5 05:98D5: 74        .byte $74   ; 
- D 0 - I - 0x0158E6 05:98D6: B4        .byte $B4   ; 

- D 0 - I - 0x0158E7 05:98D7: 08        .byte con_08, $05   ; 
- D 0 - I - 0x0158E9 05:98D9: 02        .byte con_02   ; 

- D 0 - I - 0x0158EA 05:98DA: 94        .byte $94   ; 

- D 0 - I - 0x0158EB 05:98DB: 02        .byte con_02   ; 

- D 0 - I - 0x0158EC 05:98DC: 92        .byte $92   ; 
- D 0 - I - 0x0158ED 05:98DD: 91        .byte $91   ; 

- D 0 - I - 0x0158EE 05:98DE: 02        .byte con_02   ; 

- D 0 - I - 0x0158EF 05:98DF: 8F        .byte $8F   ; 

- D 0 - I - 0x0158F0 05:98E0: 02        .byte con_02   ; 

- D 0 - I - 0x0158F1 05:98E1: 8D        .byte $8D   ; 
- D 0 - I - 0x0158F2 05:98E2: 8C        .byte $8C   ; 
- D 0 - I - 0x0158F3 05:98E3: 6C        .byte $6C   ; 
- D 0 - I - 0x0158F4 05:98E4: 6D        .byte $6D   ; 
- D 0 - I - 0x0158F5 05:98E5: 6C        .byte $6C   ; 
- D 0 - I - 0x0158F6 05:98E6: 6D        .byte $6D   ; 
- D 0 - I - 0x0158F7 05:98E7: A0        .byte $A0   ; 
- D 0 - I - 0x0158F8 05:98E8: 6C        .byte $6C   ; 
- D 0 - I - 0x0158F9 05:98E9: 6D        .byte $6D   ; 
- D 0 - I - 0x0158FA 05:98EA: 6C        .byte $6C   ; 
- D 0 - I - 0x0158FB 05:98EB: 6D        .byte $6D   ; 
- D 0 - I - 0x0158FC 05:98EC: A0        .byte $A0   ; 

- D 0 - I - 0x0158FD 05:98ED: 02        .byte con_02   ; 

- D 0 - I - 0x0158FE 05:98EE: 94        .byte $94   ; 

- D 0 - I - 0x0158FF 05:98EF: 02        .byte con_02   ; 

- D 0 - I - 0x015900 05:98F0: 92        .byte $92   ; 
- D 0 - I - 0x015901 05:98F1: 91        .byte $91   ; 

- D 0 - I - 0x015902 05:98F2: 02        .byte con_02   ; 

- D 0 - I - 0x015903 05:98F3: 8F        .byte $8F   ; 

- D 0 - I - 0x015904 05:98F4: 02        .byte con_02   ; 

- D 0 - I - 0x015905 05:98F5: 8D        .byte $8D   ; 
- D 0 - I - 0x015906 05:98F6: 8C        .byte $8C   ; 
- D 0 - I - 0x015907 05:98F7: 71        .byte $71   ; 
- D 0 - I - 0x015908 05:98F8: 72        .byte $72   ; 
- D 0 - I - 0x015909 05:98F9: 71        .byte $71   ; 
- D 0 - I - 0x01590A 05:98FA: 6D        .byte $6D   ; 
- D 0 - I - 0x01590B 05:98FB: A0        .byte $A0   ; 
- D 0 - I - 0x01590C 05:98FC: 71        .byte $71   ; 
- D 0 - I - 0x01590D 05:98FD: 72        .byte $72   ; 
- D 0 - I - 0x01590E 05:98FE: 71        .byte $71   ; 
- D 0 - I - 0x01590F 05:98FF: 6D        .byte $6D   ; 
- D 0 - I - 0x015910 05:9900: A0        .byte $A0   ; 

- D 0 - I - 0x015911 05:9901: 02        .byte con_02   ; 

- D 0 - I - 0x015912 05:9902: 88        .byte $88   ; 

- D 0 - I - 0x015913 05:9903: 02        .byte con_02   ; 

- D 0 - I - 0x015914 05:9904: 8D        .byte $8D   ; 
- D 0 - I - 0x015915 05:9905: 8C        .byte $8C   ; 
- D 0 - I - 0x015916 05:9906: 6F        .byte $6F   ; 
- D 0 - I - 0x015917 05:9907: 6D        .byte $6D   ; 
- D 0 - I - 0x015918 05:9908: 6C        .byte $6C   ; 

- D 0 - I - 0x015919 05:9909: 01        .byte con_01   ; 

- D 0 - I - 0x01591A 05:990A: 6A        .byte $6A   ; 

- D 0 - I - 0x01591B 05:990B: 01        .byte con_01   ; 

- D 0 - I - 0x01591C 05:990C: AA        .byte $AA   ; 

- D 0 - I - 0x01591D 05:990D: 02        .byte con_02   ; 

- D 0 - I - 0x01591E 05:990E: 91        .byte $91   ; 

- D 0 - I - 0x01591F 05:990F: 02        .byte con_02   ; 

- D 0 - I - 0x015920 05:9910: 8F        .byte $8F   ; 
- D 0 - I - 0x015921 05:9911: 8A        .byte $8A   ; 
- D 0 - I - 0x015922 05:9912: 6C        .byte $6C   ; 
- D 0 - I - 0x015923 05:9913: 6D        .byte $6D   ; 
- D 0 - I - 0x015924 05:9914: 6C        .byte $6C   ; 
- D 0 - I - 0x015925 05:9915: 6A        .byte $6A   ; 
- D 0 - I - 0x015926 05:9916: 60        .byte $60   ; 

- D 0 - I - 0x015927 05:9917: 02        .byte con_02   ; 

- D 0 - I - 0x015928 05:9918: 88        .byte $88   ; 

- D 0 - I - 0x015929 05:9919: 02        .byte con_02   ; 

- D 0 - I - 0x01592A 05:991A: 94        .byte $94   ; 

- D 0 - I - 0x01592B 05:991B: 02        .byte con_02   ; 

- D 0 - I - 0x01592C 05:991C: 92        .byte $92   ; 
- D 0 - I - 0x01592D 05:991D: 90        .byte $90   ; 
- D 0 - I - 0x01592E 05:991E: 6F        .byte $6F   ; 
- D 0 - I - 0x01592F 05:991F: 70        .byte $70   ; 
- D 0 - I - 0x015930 05:9920: 6F        .byte $6F   ; 
- D 0 - I - 0x015931 05:9921: 6D        .byte $6D   ; 
- D 0 - I - 0x015932 05:9922: 60        .byte $60   ; 

- D 0 - I - 0x015933 05:9923: 02        .byte con_02   ; 

- D 0 - I - 0x015934 05:9924: 8B        .byte $8B   ; 
off_0E_9925:
- D 0 - I - 0x015935 05:9925: 04        .byte con_04, $08   ; 
- D 0 - I - 0x015937 05:9927: 08        .byte con_08, $01   ; 

- D 0 - I - 0x015939 05:9929: 8D        .byte $8D   ; 
- D 0 - I - 0x01593A 05:992A: 6D        .byte $6D   ; 
- D 0 - I - 0x01593B 05:992B: 68        .byte $68   ; 
- D 0 - I - 0x01593C 05:992C: 6B        .byte $6B   ; 
- D 0 - I - 0x01593D 05:992D: 8D        .byte $8D   ; 
- D 0 - I - 0x01593E 05:992E: 8D        .byte $8D   ; 
- D 0 - I - 0x01593F 05:992F: 8D        .byte $8D   ; 
- D 0 - I - 0x015940 05:9930: 68        .byte $68   ; 
- D 0 - I - 0x015941 05:9931: 6B        .byte $6B   ; 
- D 0 - I - 0x015942 05:9932: 70        .byte $70   ; 
- D 0 - I - 0x015943 05:9933: 6F        .byte $6F   ; 
- D 0 - I - 0x015944 05:9934: 6B        .byte $6B   ; 

- D 0 - I - 0x015945 05:9935: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x015947 05:9937: 99 25     .dbyt off_0E_9925

- D 0 - I - 0x015949 05:9939: 16        .byte con_jump   ; 
- D 0 - I - 0x01594A 05:993A: 98 79     .dbyt loc_16_9879


; bzk garbage
- - - - - - 0x01594C 05:993C: 17        .byte con_stop   ; 



_off019_03_993D_01:
- D 0 - I - 0x01594D 05:993D: 06        .byte con_06, $78   ; 
- D 0 - I - 0x01594F 05:993F: 07        .byte con_07, $08   ; 
loc_16_9941:
- D 0 - I - 0x015951 05:9941: 04        .byte con_04, $00   ; 
off_0E_9943:
- D 0 - I - 0x015953 05:9943: 04        .byte con_04, $00   ; 
- D 0 - I - 0x015955 05:9945: 08        .byte con_08, $01   ; 
- D 0 - I - 0x015957 05:9947: 0C        .byte con_0C, $00   ; 
- D 0 - I - 0x015959 05:9949: 18        .byte con_18, $40   ; 
- D 0 - I - 0x01595B 05:994B: 09        .byte con_09, $02   ; 

- D 0 - I - 0x01595D 05:994D: 99        .byte $99   ; 
- D 0 - I - 0x01595E 05:994E: 77        .byte $77   ; 
- D 0 - I - 0x01595F 05:994F: 7B        .byte $7B   ; 
- D 0 - I - 0x015960 05:9950: 60        .byte $60   ; 
- D 0 - I - 0x015961 05:9951: 77        .byte $77   ; 
- D 0 - I - 0x015962 05:9952: 60        .byte $60   ; 
- D 0 - I - 0x015963 05:9953: 79        .byte $79   ; 
- D 0 - I - 0x015964 05:9954: 60        .byte $60   ; 
- D 0 - I - 0x015965 05:9955: 79        .byte $79   ; 
- D 0 - I - 0x015966 05:9956: 60        .byte $60   ; 
- D 0 - I - 0x015967 05:9957: 77        .byte $77   ; 
- D 0 - I - 0x015968 05:9958: 7B        .byte $7B   ; 
- D 0 - I - 0x015969 05:9959: 60        .byte $60   ; 
- D 0 - I - 0x01596A 05:995A: 77        .byte $77   ; 
- D 0 - I - 0x01596B 05:995B: 60        .byte $60   ; 
- D 0 - I - 0x01596C 05:995C: 9D        .byte $9D   ; 
- D 0 - I - 0x01596D 05:995D: 7B        .byte $7B   ; 
- D 0 - I - 0x01596E 05:995E: 79        .byte $79   ; 
- D 0 - I - 0x01596F 05:995F: 60        .byte $60   ; 
- D 0 - I - 0x015970 05:9960: 74        .byte $74   ; 
- D 0 - I - 0x015971 05:9961: 60        .byte $60   ; 
- D 0 - I - 0x015972 05:9962: 74        .byte $74   ; 
- D 0 - I - 0x015973 05:9963: 71        .byte $71   ; 

- D 0 - I - 0x015974 05:9964: 09        .byte con_09, $02   ; 
- D 0 - I - 0x015976 05:9966: 18        .byte con_18, $80   ; 

- D 0 - I - 0x015978 05:9968: 12        .byte con_12, $00   ; 
- D 0 - I - 0x01597A 05:996A: 99 7C     .dbyt off_12_997C

- D 0 - I - 0x01597C 05:996C: 20        .byte $20   ; 

- D 0 - I - 0x01597D 05:996D: 0C        .byte con_0C, $02   ; 
- D 0 - I - 0x01597F 05:996F: 03        .byte con_03   ; 

- D 0 - I - 0x015980 05:9970: 6D        .byte $6D   ; 
- D 0 - I - 0x015981 05:9971: 70        .byte $70   ; 
- D 0 - I - 0x015982 05:9972: 71        .byte $71   ; 
- D 0 - I - 0x015983 05:9973: 72        .byte $72   ; 
- D 0 - I - 0x015984 05:9974: 71        .byte $71   ; 
- D 0 - I - 0x015985 05:9975: 70        .byte $70   ; 

- D 0 - I - 0x015986 05:9976: 02        .byte con_02   ; 

- D 0 - I - 0x015987 05:9977: 4D        .byte $4D   ; 

- D 0 - I - 0x015988 05:9978: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x01598A 05:997A: 99 43     .dbyt off_0E_9943
off_12_997C:
- D 0 - I - 0x01598C 05:997C: 03        .byte con_03   ; 

- D 0 - I - 0x01598D 05:997D: 71        .byte $71   ; 
- D 0 - I - 0x01598E 05:997E: 6F        .byte $6F   ; 
- D 0 - I - 0x01598F 05:997F: 6D        .byte $6D   ; 

- D 0 - I - 0x015990 05:9980: 00        .byte con_00   ; 

- D 0 - I - 0x015991 05:9981: 72        .byte $72   ; 
- D 0 - I - 0x015992 05:9982: 6D        .byte $6D   ; 
- D 0 - I - 0x015993 05:9983: 6C        .byte $6C   ; 
- D 0 - I - 0x015994 05:9984: 6B        .byte $6B   ; 
- D 0 - I - 0x015995 05:9985: 68        .byte $68   ; 
- D 0 - I - 0x015996 05:9986: 67        .byte $67   ; 
off_0E_9987:
- D 0 - I - 0x015997 05:9987: 04        .byte con_04, $08   ; 
- D 0 - I - 0x015999 05:9989: 09        .byte con_09, $00   ; 
- D 0 - I - 0x01599B 05:998B: 07        .byte con_07, $07   ; 
- D 0 - I - 0x01599D 05:998D: 09        .byte con_09, $01   ; 
- D 0 - I - 0x01599F 05:998F: 08        .byte con_08, $05   ; 

- D 0 - I - 0x0159A1 05:9991: 8D        .byte $8D   ; 
- D 0 - I - 0x0159A2 05:9992: 91        .byte $91   ; 
- D 0 - I - 0x0159A3 05:9993: 88        .byte $88   ; 
- D 0 - I - 0x0159A4 05:9994: 6C        .byte $6C   ; 
- D 0 - I - 0x0159A5 05:9995: 8D        .byte $8D   ; 
- D 0 - I - 0x0159A6 05:9996: 8D        .byte $8D   ; 
- D 0 - I - 0x0159A7 05:9997: 71        .byte $71   ; 
- D 0 - I - 0x0159A8 05:9998: 68        .byte $68   ; 
- D 0 - I - 0x0159A9 05:9999: 68        .byte $68   ; 
- D 0 - I - 0x0159AA 05:999A: 68        .byte $68   ; 
- D 0 - I - 0x0159AB 05:999B: 60        .byte $60   ; 
- D 0 - I - 0x0159AC 05:999C: 8B        .byte $8B   ; 
- D 0 - I - 0x0159AD 05:999D: 8C        .byte $8C   ; 
- D 0 - I - 0x0159AE 05:999E: 8F        .byte $8F   ; 
- D 0 - I - 0x0159AF 05:999F: 6F        .byte $6F   ; 
- D 0 - I - 0x0159B0 05:99A0: 93        .byte $93   ; 
- D 0 - I - 0x0159B1 05:99A1: 93        .byte $93   ; 
- D 0 - I - 0x0159B2 05:99A2: 74        .byte $74   ; 
- D 0 - I - 0x0159B3 05:99A3: 73        .byte $73   ; 
- D 0 - I - 0x0159B4 05:99A4: 74        .byte $74   ; 
- D 0 - I - 0x0159B5 05:99A5: 73        .byte $73   ; 
- D 0 - I - 0x0159B6 05:99A6: 74        .byte $74   ; 

- D 0 - I - 0x0159B7 05:99A7: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x0159B9 05:99A9: 99 87     .dbyt off_0E_9987
off_0E_99AB:
- D 0 - I - 0x0159BB 05:99AB: 04        .byte con_04, $00   ; 
- D 0 - I - 0x0159BD 05:99AD: 09        .byte con_09, $01   ; 

- D 0 - I - 0x0159BF 05:99AF: 7E        .byte $7E   ; 
- D 0 - I - 0x0159C0 05:99B0: 03        .byte con_03   ; 


- D 0 - I - 0x0159C1 05:99B1: 6A        .byte $6A   ; 
- D 0 - I - 0x0159C2 05:99B2: 6D        .byte $6D   ; 
- D 0 - I - 0x0159C3 05:99B3: 92        .byte $92   ; 

- D 0 - I - 0x0159C4 05:99B4: 09        .byte con_09, $02   ; 

- D 0 - I - 0x0159C6 05:99B6: 72        .byte $72   ; 
- D 0 - I - 0x0159C7 05:99B7: 6D        .byte $6D   ; 
- D 0 - I - 0x0159C8 05:99B8: 6A        .byte $6A   ; 

- D 0 - I - 0x0159C9 05:99B9: 09        .byte con_09, $01   ; 

- D 0 - I - 0x0159CB 05:99BB: 68        .byte $68   ; 
- D 0 - I - 0x0159CC 05:99BC: 6C        .byte $6C   ; 
- D 0 - I - 0x0159CD 05:99BD: 6F        .byte $6F   ; 
- D 0 - I - 0x0159CE 05:99BE: 94        .byte $94   ; 

- D 0 - I - 0x0159CF 05:99BF: 09        .byte con_09, $02   ; 

- D 0 - I - 0x0159D1 05:99C1: 74        .byte $74   ; 
- D 0 - I - 0x0159D2 05:99C2: 6F        .byte $6F   ; 
- D 0 - I - 0x0159D3 05:99C3: 6C        .byte $6C   ; 

- D 0 - I - 0x0159D4 05:99C4: 09        .byte con_09, $01   ; 


- D 0 - I - 0x0159D6 05:99C6: 12        .byte con_12, $08   ; 
- D 0 - I - 0x0159D8 05:99C8: 99 E4     .dbyt off_12_99E4

- D 0 - I - 0x0159DA 05:99CA: 61        .byte $61   ; 
- D 0 - I - 0x0159DB 05:99CB: 63        .byte $63   ; 
- D 0 - I - 0x0159DC 05:99CC: 61        .byte $61   ; 
- D 0 - I - 0x0159DD 05:99CD: 68        .byte $68   ; 
- D 0 - I - 0x0159DE 05:99CE: 60        .byte $60   ; 

- D 0 - I - 0x0159DF 05:99CF: 09        .byte con_09, $02   ; 

- D 0 - I - 0x0159E1 05:99D1: 76        .byte $76   ; 
- D 0 - I - 0x0159E2 05:99D2: 74        .byte $74   ; 
- D 0 - I - 0x0159E3 05:99D3: 72        .byte $72   ; 

- D 0 - I - 0x0159E4 05:99D4: 09        .byte con_09, $01   ; 

- D 0 - I - 0x0159E6 05:99D6: 61        .byte $61   ; 
- D 0 - I - 0x0159E7 05:99D7: 63        .byte $63   ; 
- D 0 - I - 0x0159E8 05:99D8: 61        .byte $61   ; 
- D 0 - I - 0x0159E9 05:99D9: 68        .byte $68   ; 
- D 0 - I - 0x0159EA 05:99DA: 60        .byte $60   ; 

- D 0 - I - 0x0159EB 05:99DB: 09        .byte con_09, $02   ; 

- D 0 - I - 0x0159ED 05:99DD: 71        .byte $71   ; 
- D 0 - I - 0x0159EE 05:99DE: 6D        .byte $6D   ; 
- D 0 - I - 0x0159EF 05:99DF: 68        .byte $68   ; 

- D 0 - I - 0x0159F0 05:99E0: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x0159F2 05:99E2: 99 AB     .dbyt off_0E_99AB
off_12_99E4:
- D 0 - I - 0x0159F4 05:99E4: 68        .byte $68   ; 
- D 0 - I - 0x0159F5 05:99E5: 65        .byte $65   ; 
- D 0 - I - 0x0159F6 05:99E6: 66        .byte $66   ; 
- D 0 - I - 0x0159F7 05:99E7: 68        .byte $68   ; 
- D 0 - I - 0x0159F8 05:99E8: 60        .byte $60   ; 
- D 0 - I - 0x0159F9 05:99E9: 74        .byte $74   ; 
- D 0 - I - 0x0159FA 05:99EA: 71        .byte $71   ; 
- D 0 - I - 0x0159FB 05:99EB: 6D        .byte $6D   ; 
- D 0 - I - 0x0159FC 05:99EC: 68        .byte $68   ; 
- D 0 - I - 0x0159FD 05:99ED: 65        .byte $65   ; 
- D 0 - I - 0x0159FE 05:99EE: 66        .byte $66   ; 
- D 0 - I - 0x0159FF 05:99EF: 68        .byte $68   ; 
- D 0 - I - 0x015A00 05:99F0: 74        .byte $74   ; 
- D 0 - I - 0x015A01 05:99F1: 73        .byte $73   ; 
- D 0 - I - 0x015A02 05:99F2: 74        .byte $74   ; 
- D 0 - I - 0x015A03 05:99F3: 6D        .byte $6D   ; 
- D 0 - I - 0x015A04 05:99F4: 65        .byte $65   ; 

- D 0 - I - 0x015A05 05:99F5: 03        .byte con_03   ; 

- D 0 - I - 0x015A06 05:99F6: 74        .byte $74   ; 
- D 0 - I - 0x015A07 05:99F7: 79        .byte $79   ; 
- D 0 - I - 0x015A08 05:99F8: 74        .byte $74   ; 
- D 0 - I - 0x015A09 05:99F9: 7D        .byte $7D   ; 
- D 0 - I - 0x015A0A 05:99FA: 74        .byte $74   ; 
- D 0 - I - 0x015A0B 05:99FB: 79        .byte $79   ; 
- D 0 - I - 0x015A0C 05:99FC: 9E        .byte $9E   ; 
- D 0 - I - 0x015A0D 05:99FD: 76        .byte $76   ; 
- D 0 - I - 0x015A0E 05:99FE: 79        .byte $79   ; 
- D 0 - I - 0x015A0F 05:99FF: 76        .byte $76   ; 
- D 0 - I - 0x015A10 05:9A00: 7E        .byte $7E   ; 
- D 0 - I - 0x015A11 05:9A01: 76        .byte $76   ; 
- D 0 - I - 0x015A12 05:9A02: 79        .byte $79   ; 
- D 0 - I - 0x015A13 05:9A03: 7E        .byte $7E   ; 

- D 0 - I - 0x015A14 05:9A04: 03        .byte con_03   ; 

- D 0 - I - 0x015A15 05:9A05: 6A        .byte $6A   ; 
- D 0 - I - 0x015A16 05:9A06: 63        .byte $63   ; 
- D 0 - I - 0x015A17 05:9A07: 67        .byte $67   ; 
- D 0 - I - 0x015A18 05:9A08: 63        .byte $63   ; 
- D 0 - I - 0x015A19 05:9A09: 6A        .byte $6A   ; 
- D 0 - I - 0x015A1A 05:9A0A: 63        .byte $63   ; 
- D 0 - I - 0x015A1B 05:9A0B: 67        .byte $67   ; 
- D 0 - I - 0x015A1C 05:9A0C: 8C        .byte $8C   ; 
- D 0 - I - 0x015A1D 05:9A0D: 63        .byte $63   ; 
- D 0 - I - 0x015A1E 05:9A0E: 68        .byte $68   ; 
- D 0 - I - 0x015A1F 05:9A0F: 63        .byte $63   ; 
- D 0 - I - 0x015A20 05:9A10: 6C        .byte $6C   ; 
- D 0 - I - 0x015A21 05:9A11: 63        .byte $63   ; 
- D 0 - I - 0x015A22 05:9A12: 68        .byte $68   ; 
- D 0 - I - 0x015A23 05:9A13: 6C        .byte $6C   ; 
- D 0 - I - 0x015A24 05:9A14: 6D        .byte $6D   ; 
- D 0 - I - 0x015A25 05:9A15: 64        .byte $64   ; 
- D 0 - I - 0x015A26 05:9A16: 69        .byte $69   ; 
- D 0 - I - 0x015A27 05:9A17: 64        .byte $64   ; 
- D 0 - I - 0x015A28 05:9A18: 6D        .byte $6D   ; 
- D 0 - I - 0x015A29 05:9A19: 64        .byte $64   ; 
- D 0 - I - 0x015A2A 05:9A1A: 69        .byte $69   ; 
- D 0 - I - 0x015A2B 05:9A1B: 8F        .byte $8F   ; 
- D 0 - I - 0x015A2C 05:9A1C: 66        .byte $66   ; 
- D 0 - I - 0x015A2D 05:9A1D: 6B        .byte $6B   ; 
- D 0 - I - 0x015A2E 05:9A1E: 66        .byte $66   ; 
- D 0 - I - 0x015A2F 05:9A1F: 6F        .byte $6F   ; 
- D 0 - I - 0x015A30 05:9A20: 66        .byte $66   ; 
- D 0 - I - 0x015A31 05:9A21: 6B        .byte $6B   ; 
- D 0 - I - 0x015A32 05:9A22: 6F        .byte $6F   ; 
off_0E_9A23:
- D 0 - I - 0x015A33 05:9A23: 04        .byte con_04, $00   ; 
- D 0 - I - 0x015A35 05:9A25: 07        .byte con_07, $08   ; 

- D 0 - I - 0x015A37 05:9A27: 9D        .byte $9D   ; 
- D 0 - I - 0x015A38 05:9A28: 7D        .byte $7D   ; 
- D 0 - I - 0x015A39 05:9A29: 79        .byte $79   ; 
- D 0 - I - 0x015A3A 05:9A2A: 7B        .byte $7B   ; 
- D 0 - I - 0x015A3B 05:9A2B: 7D        .byte $7D   ; 
- D 0 - I - 0x015A3C 05:9A2C: 60        .byte $60   ; 
- D 0 - I - 0x015A3D 05:9A2D: 9D        .byte $9D   ; 
- D 0 - I - 0x015A3E 05:9A2E: 9D        .byte $9D   ; 
- D 0 - I - 0x015A3F 05:9A2F: 79        .byte $79   ; 
- D 0 - I - 0x015A40 05:9A30: 7B        .byte $7B   ; 

- D 0 - I - 0x015A41 05:9A31: 03        .byte con_03   ; 

- D 0 - I - 0x015A42 05:9A32: 68        .byte $68   ; 
- D 0 - I - 0x015A43 05:9A33: 66        .byte $66   ; 
- D 0 - I - 0x015A44 05:9A34: 63        .byte $63   ; 

- D 0 - I - 0x015A45 05:9A35: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x015A47 05:9A37: 9A 23     .dbyt off_0E_9A23

- D 0 - I - 0x015A49 05:9A39: 16        .byte con_jump   ; 
- D 0 - I - 0x015A4A 05:9A3A: 99 41     .dbyt loc_16_9941


; bzk garbage
- - - - - - 0x015A4C 05:9A3C: 17        .byte con_stop   ; 



_off019_03_9A3D_02:
- D 0 - I - 0x015A4D 05:9A3D: 06        .byte con_06, $C8   ; 
- D 0 - I - 0x015A4F 05:9A3F: 08        .byte con_08, $00   ; 
- D 0 - I - 0x015A51 05:9A41: 09        .byte con_09, $03   ; 
loc_16_9A43:
- D 0 - I - 0x015A53 05:9A43: 04        .byte con_04, $00   ; 
off_0E_9A45:
- D 0 - I - 0x015A55 05:9A45: 04        .byte con_04, $00   ; 

- D 0 - I - 0x015A57 05:9A47: 8D        .byte $8D   ; 
- D 0 - I - 0x015A58 05:9A48: 79        .byte $79   ; 
- D 0 - I - 0x015A59 05:9A49: 6D        .byte $6D   ; 
- D 0 - I - 0x015A5A 05:9A4A: 8B        .byte $8B   ; 
- D 0 - I - 0x015A5B 05:9A4B: 77        .byte $77   ; 
- D 0 - I - 0x015A5C 05:9A4C: 6D        .byte $6D   ; 
- D 0 - I - 0x015A5D 05:9A4D: 60        .byte $60   ; 
- D 0 - I - 0x015A5E 05:9A4E: 6D        .byte $6D   ; 
- D 0 - I - 0x015A5F 05:9A4F: 79        .byte $79   ; 
- D 0 - I - 0x015A60 05:9A50: 6D        .byte $6D   ; 
- D 0 - I - 0x015A61 05:9A51: 6B        .byte $6B   ; 
- D 0 - I - 0x015A62 05:9A52: 6B        .byte $6B   ; 
- D 0 - I - 0x015A63 05:9A53: 77        .byte $77   ; 
- D 0 - I - 0x015A64 05:9A54: 60        .byte $60   ; 

- D 0 - I - 0x015A65 05:9A55: 0E        .byte con_0E, $03   ; 
- D 0 - I - 0x015A67 05:9A57: 9A 45     .dbyt off_0E_9A45
off_0E_9A59:
- D 0 - I - 0x015A69 05:9A59: 04        .byte con_04, $00   ; 

- D 0 - I - 0x015A6B 05:9A5B: 8D        .byte $8D   ; 
- D 0 - I - 0x015A6C 05:9A5C: 79        .byte $79   ; 
- D 0 - I - 0x015A6D 05:9A5D: 6D        .byte $6D   ; 
- D 0 - I - 0x015A6E 05:9A5E: 6D        .byte $6D   ; 
- D 0 - I - 0x015A6F 05:9A5F: 6D        .byte $6D   ; 
- D 0 - I - 0x015A70 05:9A60: 79        .byte $79   ; 
- D 0 - I - 0x015A71 05:9A61: 6D        .byte $6D   ; 
- D 0 - I - 0x015A72 05:9A62: 6D        .byte $6D   ; 
- D 0 - I - 0x015A73 05:9A63: 6D        .byte $6D   ; 
- D 0 - I - 0x015A74 05:9A64: 79        .byte $79   ; 
- D 0 - I - 0x015A75 05:9A65: 6D        .byte $6D   ; 
- D 0 - I - 0x015A76 05:9A66: 60        .byte $60   ; 
- D 0 - I - 0x015A77 05:9A67: 6D        .byte $6D   ; 
- D 0 - I - 0x015A78 05:9A68: 79        .byte $79   ; 
- D 0 - I - 0x015A79 05:9A69: 6D        .byte $6D   ; 
- D 0 - I - 0x015A7A 05:9A6A: 88        .byte $88   ; 
- D 0 - I - 0x015A7B 05:9A6B: 74        .byte $74   ; 
- D 0 - I - 0x015A7C 05:9A6C: 68        .byte $68   ; 
- D 0 - I - 0x015A7D 05:9A6D: 68        .byte $68   ; 
- D 0 - I - 0x015A7E 05:9A6E: 68        .byte $68   ; 
- D 0 - I - 0x015A7F 05:9A6F: 74        .byte $74   ; 
- D 0 - I - 0x015A80 05:9A70: 68        .byte $68   ; 
- D 0 - I - 0x015A81 05:9A71: 68        .byte $68   ; 
- D 0 - I - 0x015A82 05:9A72: 68        .byte $68   ; 
- D 0 - I - 0x015A83 05:9A73: 74        .byte $74   ; 
- D 0 - I - 0x015A84 05:9A74: 68        .byte $68   ; 
- D 0 - I - 0x015A85 05:9A75: 60        .byte $60   ; 
- D 0 - I - 0x015A86 05:9A76: 68        .byte $68   ; 
- D 0 - I - 0x015A87 05:9A77: 74        .byte $74   ; 
- D 0 - I - 0x015A88 05:9A78: 68        .byte $68   ; 

- D 0 - I - 0x015A89 05:9A79: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x015A8B 05:9A7B: 9A 59     .dbyt off_0E_9A59
off_0E_9A7D:
- D 0 - I - 0x015A8D 05:9A7D: 04        .byte con_04, $00   ; 

- D 0 - I - 0x015A8F 05:9A7F: 86        .byte $86   ; 
- D 0 - I - 0x015A90 05:9A80: 72        .byte $72   ; 
- D 0 - I - 0x015A91 05:9A81: 66        .byte $66   ; 
- D 0 - I - 0x015A92 05:9A82: 86        .byte $86   ; 
- D 0 - I - 0x015A93 05:9A83: 72        .byte $72   ; 
- D 0 - I - 0x015A94 05:9A84: 68        .byte $68   ; 
- D 0 - I - 0x015A95 05:9A85: 60        .byte $60   ; 
- D 0 - I - 0x015A96 05:9A86: 68        .byte $68   ; 
- D 0 - I - 0x015A97 05:9A87: 74        .byte $74   ; 
- D 0 - I - 0x015A98 05:9A88: 68        .byte $68   ; 
- D 0 - I - 0x015A99 05:9A89: 68        .byte $68   ; 
- D 0 - I - 0x015A9A 05:9A8A: 68        .byte $68   ; 
- D 0 - I - 0x015A9B 05:9A8B: 74        .byte $74   ; 
- D 0 - I - 0x015A9C 05:9A8C: 68        .byte $68   ; 
- D 0 - I - 0x015A9D 05:9A8D: 8D        .byte $8D   ; 
- D 0 - I - 0x015A9E 05:9A8E: 79        .byte $79   ; 
- D 0 - I - 0x015A9F 05:9A8F: 6D        .byte $6D   ; 
- D 0 - I - 0x015AA0 05:9A90: 8B        .byte $8B   ; 
- D 0 - I - 0x015AA1 05:9A91: 77        .byte $77   ; 
- D 0 - I - 0x015AA2 05:9A92: 6D        .byte $6D   ; 
- D 0 - I - 0x015AA3 05:9A93: 60        .byte $60   ; 
- D 0 - I - 0x015AA4 05:9A94: 6D        .byte $6D   ; 
- D 0 - I - 0x015AA5 05:9A95: 79        .byte $79   ; 
- D 0 - I - 0x015AA6 05:9A96: 6D        .byte $6D   ; 
- D 0 - I - 0x015AA7 05:9A97: 6B        .byte $6B   ; 
- D 0 - I - 0x015AA8 05:9A98: 6B        .byte $6B   ; 
- D 0 - I - 0x015AA9 05:9A99: 77        .byte $77   ; 
- D 0 - I - 0x015AAA 05:9A9A: 6B        .byte $6B   ; 

- D 0 - I - 0x015AAB 05:9A9B: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x015AAD 05:9A9D: 9A 7D     .dbyt off_0E_9A7D

- D 0 - I - 0x015AAF 05:9A9F: 85        .byte $85   ; 
- D 0 - I - 0x015AB0 05:9AA0: 71        .byte $71   ; 
- D 0 - I - 0x015AB1 05:9AA1: 65        .byte $65   ; 
- D 0 - I - 0x015AB2 05:9AA2: 60        .byte $60   ; 
- D 0 - I - 0x015AB3 05:9AA3: 65        .byte $65   ; 
- D 0 - I - 0x015AB4 05:9AA4: 71        .byte $71   ; 
- D 0 - I - 0x015AB5 05:9AA5: 65        .byte $65   ; 
- D 0 - I - 0x015AB6 05:9AA6: 86        .byte $86   ; 
- D 0 - I - 0x015AB7 05:9AA7: 72        .byte $72   ; 
- D 0 - I - 0x015AB8 05:9AA8: 66        .byte $66   ; 
- D 0 - I - 0x015AB9 05:9AA9: 60        .byte $60   ; 
- D 0 - I - 0x015ABA 05:9AAA: 66        .byte $66   ; 
- D 0 - I - 0x015ABB 05:9AAB: 72        .byte $72   ; 
- D 0 - I - 0x015ABC 05:9AAC: 66        .byte $66   ; 
- D 0 - I - 0x015ABD 05:9AAD: 87        .byte $87   ; 
- D 0 - I - 0x015ABE 05:9AAE: 73        .byte $73   ; 
- D 0 - I - 0x015ABF 05:9AAF: 67        .byte $67   ; 
- D 0 - I - 0x015AC0 05:9AB0: 60        .byte $60   ; 
- D 0 - I - 0x015AC1 05:9AB1: 67        .byte $67   ; 
- D 0 - I - 0x015AC2 05:9AB2: 73        .byte $73   ; 
- D 0 - I - 0x015AC3 05:9AB3: 67        .byte $67   ; 
- D 0 - I - 0x015AC4 05:9AB4: 88        .byte $88   ; 
- D 0 - I - 0x015AC5 05:9AB5: 74        .byte $74   ; 
- D 0 - I - 0x015AC6 05:9AB6: 68        .byte $68   ; 
- D 0 - I - 0x015AC7 05:9AB7: 60        .byte $60   ; 
- D 0 - I - 0x015AC8 05:9AB8: 68        .byte $68   ; 
- D 0 - I - 0x015AC9 05:9AB9: 74        .byte $74   ; 
- D 0 - I - 0x015ACA 05:9ABA: 68        .byte $68   ; 
- D 0 - I - 0x015ACB 05:9ABB: 89        .byte $89   ; 
- D 0 - I - 0x015ACC 05:9ABC: 75        .byte $75   ; 
- D 0 - I - 0x015ACD 05:9ABD: 69        .byte $69   ; 
- D 0 - I - 0x015ACE 05:9ABE: 60        .byte $60   ; 
- D 0 - I - 0x015ACF 05:9ABF: 69        .byte $69   ; 
- D 0 - I - 0x015AD0 05:9AC0: 75        .byte $75   ; 
- D 0 - I - 0x015AD1 05:9AC1: 69        .byte $69   ; 
- D 0 - I - 0x015AD2 05:9AC2: 8B        .byte $8B   ; 
- D 0 - I - 0x015AD3 05:9AC3: 77        .byte $77   ; 
- D 0 - I - 0x015AD4 05:9AC4: 6B        .byte $6B   ; 
- D 0 - I - 0x015AD5 05:9AC5: 60        .byte $60   ; 
- D 0 - I - 0x015AD6 05:9AC6: 6B        .byte $6B   ; 
- D 0 - I - 0x015AD7 05:9AC7: 77        .byte $77   ; 
- D 0 - I - 0x015AD8 05:9AC8: 6B        .byte $6B   ; 
off_0E_9AC9:
- D 0 - I - 0x015AD9 05:9AC9: 04        .byte con_04, $00   ; 

- D 0 - I - 0x015ADB 05:9ACB: 8D        .byte $8D   ; 
- D 0 - I - 0x015ADC 05:9ACC: 79        .byte $79   ; 
- D 0 - I - 0x015ADD 05:9ACD: 6D        .byte $6D   ; 
- D 0 - I - 0x015ADE 05:9ACE: 68        .byte $68   ; 
- D 0 - I - 0x015ADF 05:9ACF: 68        .byte $68   ; 
- D 0 - I - 0x015AE0 05:9AD0: 74        .byte $74   ; 
- D 0 - I - 0x015AE1 05:9AD1: 6D        .byte $6D   ; 
- D 0 - I - 0x015AE2 05:9AD2: 60        .byte $60   ; 
- D 0 - I - 0x015AE3 05:9AD3: 6D        .byte $6D   ; 
- D 0 - I - 0x015AE4 05:9AD4: 79        .byte $79   ; 
- D 0 - I - 0x015AE5 05:9AD5: 6D        .byte $6D   ; 
- D 0 - I - 0x015AE6 05:9AD6: 68        .byte $68   ; 
- D 0 - I - 0x015AE7 05:9AD7: 68        .byte $68   ; 
- D 0 - I - 0x015AE8 05:9AD8: 74        .byte $74   ; 
- D 0 - I - 0x015AE9 05:9AD9: 68        .byte $68   ; 

- D 0 - I - 0x015AEA 05:9ADA: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x015AEC 05:9ADC: 9A C9     .dbyt off_0E_9AC9

- D 0 - I - 0x015AEE 05:9ADE: 16        .byte con_jump   ; 
- D 0 - I - 0x015AEF 05:9ADF: 9A 43     .dbyt loc_16_9A43


; bzk garbage
- - - - - - 0x015AF1 05:9AE1: 17        .byte con_stop   ; 



_off019_03_9AE2_03_disable:
- D 0 - I - 0x015AF2 05:9AE2: 17        .byte con_stop   ; 



_music_9AE3_04_stage_02:
- D 0 - I - 0x015AF3 05:9AE3: 00        .byte $00   ; 
- D 0 - I - 0x015AF4 05:9AE4: 9A EC     .dbyt _off019_04_9AEC_00
- D 0 - I - 0x015AF6 05:9AE6: 9B 93     .dbyt _off019_04_9B93_01
- D 0 - I - 0x015AF8 05:9AE8: 9C 62     .dbyt _off019_04_9C62_02
- D 0 - I - 0x015AFA 05:9AEA: 9C F5     .dbyt _off019_04_9CF5_03_disable



_off019_04_9AEC_00:
- D 0 - I - 0x015AFC 05:9AEC: 05        .byte con_05, $01, $55   ; 
- D 0 - I - 0x015AFF 05:9AEF: 06        .byte con_06, $E6   ; 
- D 0 - I - 0x015B01 05:9AF1: 07        .byte con_07, $08   ; 
- D 0 - I - 0x015B03 05:9AF3: 08        .byte con_08, $05   ; 
- D 0 - I - 0x015B05 05:9AF5: 18        .byte con_18, $40   ; 
- D 0 - I - 0x015B07 05:9AF7: 09        .byte con_09, $02   ; 
- D 0 - I - 0x015B09 05:9AF9: 03        .byte con_03   ; 

- D 0 - I - 0x015B0A 05:9AFA: 8C        .byte $8C   ; 
- D 0 - I - 0x015B0B 05:9AFB: 8F        .byte $8F   ; 
- D 0 - I - 0x015B0C 05:9AFC: 88        .byte $88   ; 
- D 0 - I - 0x015B0D 05:9AFD: 8C        .byte $8C   ; 
- D 0 - I - 0x015B0E 05:9AFE: 6D        .byte $6D   ; 
- D 0 - I - 0x015B0F 05:9AFF: 6C        .byte $6C   ; 
- D 0 - I - 0x015B10 05:9B00: 6A        .byte $6A   ; 
- D 0 - I - 0x015B11 05:9B01: 68        .byte $68   ; 

- D 0 - I - 0x015B12 05:9B02: 00        .byte con_00   ; 

- D 0 - I - 0x015B13 05:9B03: 48        .byte $48   ; 
- D 0 - I - 0x015B14 05:9B04: 4A        .byte $4A   ; 
- D 0 - I - 0x015B15 05:9B05: 48        .byte $48   ; 
- D 0 - I - 0x015B16 05:9B06: 4A        .byte $4A   ; 
- D 0 - I - 0x015B17 05:9B07: 48        .byte $48   ; 
- D 0 - I - 0x015B18 05:9B08: 4A        .byte $4A   ; 

- D 0 - I - 0x015B19 05:9B09: 00        .byte con_00   ; 

- D 0 - I - 0x015B1A 05:9B0A: 87        .byte $87   ; 
loc_16_9B0B:
- D 0 - I - 0x015B1B 05:9B0B: 04        .byte con_04, $00   ; 
off_0E_9B0D:
- D 0 - I - 0x015B1D 05:9B0D: 04        .byte con_04, $00   ; 
- D 0 - I - 0x015B1F 05:9B0F: 06        .byte con_06, $64   ; 
- D 0 - I - 0x015B21 05:9B11: 08        .byte con_08, $05   ; 
- D 0 - I - 0x015B23 05:9B13: 18        .byte con_18, $80   ; 

- D 0 - I - 0x015B25 05:9B15: 7D        .byte $7D   ; 
- D 0 - I - 0x015B26 05:9B16: 7D        .byte $7D   ; 
- D 0 - I - 0x015B27 05:9B17: 7B        .byte $7B   ; 
- D 0 - I - 0x015B28 05:9B18: 79        .byte $79   ; 
- D 0 - I - 0x015B29 05:9B19: 74        .byte $74   ; 
- D 0 - I - 0x015B2A 05:9B1A: 80        .byte $80   ; 
- D 0 - I - 0x015B2B 05:9B1B: 9D        .byte $9D   ; 
- D 0 - I - 0x015B2C 05:9B1C: 7D        .byte $7D   ; 
- D 0 - I - 0x015B2D 05:9B1D: 7B        .byte $7B   ; 
- D 0 - I - 0x015B2E 05:9B1E: 79        .byte $79   ; 
- D 0 - I - 0x015B2F 05:9B1F: 74        .byte $74   ; 

- D 0 - I - 0x015B30 05:9B20: 02        .byte con_02   ; 

- D 0 - I - 0x015B31 05:9B21: 80        .byte $80   ; 

- D 0 - I - 0x015B32 05:9B22: 03        .byte con_03   ; 

- D 0 - I - 0x015B33 05:9B23: 68        .byte $68   ; 
- D 0 - I - 0x015B34 05:9B24: 68        .byte $68   ; 
- D 0 - I - 0x015B35 05:9B25: 66        .byte $66   ; 
- D 0 - I - 0x015B36 05:9B26: 65        .byte $65   ; 
- D 0 - I - 0x015B37 05:9B27: 62        .byte $62   ; 
- D 0 - I - 0x015B38 05:9B28: 60        .byte $60   ; 

- D 0 - I - 0x015B39 05:9B29: 03        .byte con_03   ; 

- D 0 - I - 0x015B3A 05:9B2A: 76        .byte $76   ; 
- D 0 - I - 0x015B3B 05:9B2B: 7E        .byte $7E   ; 
- D 0 - I - 0x015B3C 05:9B2C: 60        .byte $60   ; 

- D 0 - I - 0x015B3D 05:9B2D: 03        .byte con_03   ; 

- D 0 - I - 0x015B3E 05:9B2E: 68        .byte $68   ; 
- D 0 - I - 0x015B3F 05:9B2F: 60        .byte $60   ; 

- D 0 - I - 0x015B40 05:9B30: 01        .byte con_01   ; 

- D 0 - I - 0x015B41 05:9B31: 6A        .byte $6A   ; 

- D 0 - I - 0x015B42 05:9B32: 01        .byte con_01   ; 

- D 0 - I - 0x015B43 05:9B33: AA        .byte $AA   ; 
- D 0 - I - 0x015B44 05:9B34: 8C        .byte $8C   ; 
- D 0 - I - 0x015B45 05:9B35: 6D        .byte $6D   ; 
- D 0 - I - 0x015B46 05:9B36: 88        .byte $88   ; 
- D 0 - I - 0x015B47 05:9B37: 8D        .byte $8D   ; 
- D 0 - I - 0x015B48 05:9B38: 8C        .byte $8C   ; 
- D 0 - I - 0x015B49 05:9B39: 8D        .byte $8D   ; 
- D 0 - I - 0x015B4A 05:9B3A: 88        .byte $88   ; 

- D 0 - I - 0x015B4B 05:9B3B: 02        .byte con_02   ; 

- D 0 - I - 0x015B4C 05:9B3C: 8D        .byte $8D   ; 

- D 0 - I - 0x015B4D 05:9B3D: 12        .byte con_12, $08   ; 
- D 0 - I - 0x015B4F 05:9B3F: 9B 52     .dbyt off_12_9B52

- D 0 - I - 0x015B51 05:9B41: 8F        .byte $8F   ; 
- D 0 - I - 0x015B52 05:9B42: 6A        .byte $6A   ; 
- D 0 - I - 0x015B53 05:9B43: 8C        .byte $8C   ; 
- D 0 - I - 0x015B54 05:9B44: 8D        .byte $8D   ; 
- D 0 - I - 0x015B55 05:9B45: 74        .byte $74   ; 
- D 0 - I - 0x015B56 05:9B46: 60        .byte $60   ; 
- D 0 - I - 0x015B57 05:9B47: 74        .byte $74   ; 
- D 0 - I - 0x015B58 05:9B48: 60        .byte $60   ; 
- D 0 - I - 0x015B59 05:9B49: 74        .byte $74   ; 
- D 0 - I - 0x015B5A 05:9B4A: 74        .byte $74   ; 
- D 0 - I - 0x015B5B 05:9B4B: 72        .byte $72   ; 
- D 0 - I - 0x015B5C 05:9B4C: 71        .byte $71   ; 
- D 0 - I - 0x015B5D 05:9B4D: 6F        .byte $6F   ; 

- D 0 - I - 0x015B5E 05:9B4E: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x015B60 05:9B50: 9B 0D     .dbyt off_0E_9B0D
off_12_9B52:
- D 0 - I - 0x015B62 05:9B52: 8F        .byte $8F   ; 
- D 0 - I - 0x015B63 05:9B53: 6D        .byte $6D   ; 
- D 0 - I - 0x015B64 05:9B54: 6C        .byte $6C   ; 
- D 0 - I - 0x015B65 05:9B55: 60        .byte $60   ; 
- D 0 - I - 0x015B66 05:9B56: 6A        .byte $6A   ; 
- D 0 - I - 0x015B67 05:9B57: 60        .byte $60   ; 
- D 0 - I - 0x015B68 05:9B58: 6C        .byte $6C   ; 
- D 0 - I - 0x015B69 05:9B59: 6F        .byte $6F   ; 
- D 0 - I - 0x015B6A 05:9B5A: 6D        .byte $6D   ; 
- D 0 - I - 0x015B6B 05:9B5B: 6C        .byte $6C   ; 
- D 0 - I - 0x015B6C 05:9B5C: 6D        .byte $6D   ; 
- D 0 - I - 0x015B6D 05:9B5D: A0        .byte $A0   ; 

- D 0 - I - 0x015B6E 05:9B5E: 08        .byte con_08, $04   ; 
- D 0 - I - 0x015B70 05:9B60: 06        .byte con_06, $E6   ; 
- D 0 - I - 0x015B72 05:9B62: 02        .byte con_02   ; 

- D 0 - I - 0x015B73 05:9B63: 8A        .byte $8A   ; 

- D 0 - I - 0x015B74 05:9B64: 02        .byte con_02   ; 

- D 0 - I - 0x015B75 05:9B65: 8D        .byte $8D   ; 
- D 0 - I - 0x015B76 05:9B66: 8C        .byte $8C   ; 

- D 0 - I - 0x015B77 05:9B67: 02        .byte con_02   ; 

- D 0 - I - 0x015B78 05:9B68: 8D        .byte $8D   ; 

- D 0 - I - 0x015B79 05:9B69: 01        .byte con_01   ; 

- D 0 - I - 0x015B7A 05:9B6A: 68        .byte $68   ; 

- D 0 - I - 0x015B7B 05:9B6B: 01        .byte con_01   ; 

- D 0 - I - 0x015B7C 05:9B6C: A8        .byte $A8   ; 

- D 0 - I - 0x015B7D 05:9B6D: 02        .byte con_02   ; 

- D 0 - I - 0x015B7E 05:9B6E: 86        .byte $86   ; 

- D 0 - I - 0x015B7F 05:9B6F: 02        .byte con_02   ; 

- D 0 - I - 0x015B80 05:9B70: 8D        .byte $8D   ; 
- D 0 - I - 0x015B81 05:9B71: 8C        .byte $8C   ; 
- D 0 - I - 0x015B82 05:9B72: 6F        .byte $6F   ; 
- D 0 - I - 0x015B83 05:9B73: 6D        .byte $6D   ; 
- D 0 - I - 0x015B84 05:9B74: 6C        .byte $6C   ; 

- D 0 - I - 0x015B85 05:9B75: 01        .byte con_01   ; 

- D 0 - I - 0x015B86 05:9B76: 6D        .byte $6D   ; 

- D 0 - I - 0x015B87 05:9B77: 01        .byte con_01   ; 

- D 0 - I - 0x015B88 05:9B78: AD        .byte $AD   ; 

- D 0 - I - 0x015B89 05:9B79: 02        .byte con_02   ; 

- D 0 - I - 0x015B8A 05:9B7A: 8A        .byte $8A   ; 

- D 0 - I - 0x015B8B 05:9B7B: 02        .byte con_02   ; 

- D 0 - I - 0x015B8C 05:9B7C: 8C        .byte $8C   ; 
- D 0 - I - 0x015B8D 05:9B7D: 8D        .byte $8D   ; 

- D 0 - I - 0x015B8E 05:9B7E: 02        .byte con_02   ; 

- D 0 - I - 0x015B8F 05:9B7F: 88        .byte $88   ; 

- D 0 - I - 0x015B90 05:9B80: 02        .byte con_02   ; 

- D 0 - I - 0x015B91 05:9B81: 8C        .byte $8C   ; 
- D 0 - I - 0x015B92 05:9B82: 8D        .byte $8D   ; 

- D 0 - I - 0x015B93 05:9B83: 02        .byte con_02   ; 

- D 0 - I - 0x015B94 05:9B84: 87        .byte $87   ; 

- D 0 - I - 0x015B95 05:9B85: 02        .byte con_02   ; 

- D 0 - I - 0x015B96 05:9B86: 8A        .byte $8A   ; 
- D 0 - I - 0x015B97 05:9B87: 8C        .byte $8C   ; 
- D 0 - I - 0x015B98 05:9B88: 6D        .byte $6D   ; 
- D 0 - I - 0x015B99 05:9B89: 6C        .byte $6C   ; 
- D 0 - I - 0x015B9A 05:9B8A: 6D        .byte $6D   ; 

- D 0 - I - 0x015B9B 05:9B8B: 01        .byte con_01   ; 

- D 0 - I - 0x015B9C 05:9B8C: 74        .byte $74   ; 

- D 0 - I - 0x015B9D 05:9B8D: 01        .byte con_01   ; 

- D 0 - I - 0x015B9E 05:9B8E: B4        .byte $B4   ; 

- D 0 - I - 0x015B9F 05:9B8F: 16        .byte con_jump   ; 
- D 0 - I - 0x015BA0 05:9B90: 9B 0B     .dbyt loc_16_9B0B


; bzk garbage
- - - - - - 0x015BA2 05:9B92: 17        .byte con_stop   ; 



_off019_04_9B93_01:
- D 0 - I - 0x015BA3 05:9B93: 06        .byte con_06, $64   ; 
- D 0 - I - 0x015BA5 05:9B95: 07        .byte con_07, $08   ; 
- D 0 - I - 0x015BA7 05:9B97: 08        .byte con_08, $01   ; 
off_0E_9B99:
- D 0 - I - 0x015BA9 05:9B99: 04        .byte con_04, $08   ; 

- D 0 - I - 0x015BAB 05:9B9B: 54        .byte $54   ; 
- D 0 - I - 0x015BAC 05:9B9C: 53        .byte $53   ; 
- D 0 - I - 0x015BAD 05:9B9D: 54        .byte $54   ; 
- D 0 - I - 0x015BAE 05:9B9E: 56        .byte $56   ; 

- D 0 - I - 0x015BAF 05:9B9F: 0E        .byte con_0E, $05   ; 
- D 0 - I - 0x015BB1 05:9BA1: 9B 99     .dbyt off_0E_9B99

- D 0 - I - 0x015BB3 05:9BA3: 58        .byte $58   ; 
- D 0 - I - 0x015BB4 05:9BA4: 56        .byte $56   ; 
- D 0 - I - 0x015BB5 05:9BA5: 54        .byte $54   ; 
- D 0 - I - 0x015BB6 05:9BA6: 52        .byte $52   ; 
- D 0 - I - 0x015BB7 05:9BA7: 51        .byte $51   ; 
- D 0 - I - 0x015BB8 05:9BA8: 4F        .byte $4F   ; 
- D 0 - I - 0x015BB9 05:9BA9: 4D        .byte $4D   ; 
- D 0 - I - 0x015BBA 05:9BAA: 4C        .byte $4C   ; 
loc_16_9BAB:
- D 0 - I - 0x015BBB 05:9BAB: 04        .byte con_04, $00   ; 
- D 0 - I - 0x015BBD 05:9BAD: 08        .byte con_08, $05   ; 
- D 0 - I - 0x015BBF 05:9BAF: 18        .byte con_18, $80   ; 
- D 0 - I - 0x015BC1 05:9BB1: 09        .byte con_09, $01   ; 
off_0E_9BB3:
- D 0 - I - 0x015BC3 05:9BB3: 04        .byte con_04, $00   ; 

- D 0 - I - 0x015BC5 05:9BB5: 79        .byte $79   ; 
- D 0 - I - 0x015BC6 05:9BB6: 78        .byte $78   ; 
- D 0 - I - 0x015BC7 05:9BB7: 79        .byte $79   ; 

- D 0 - I - 0x015BC8 05:9BB8: 03        .byte con_03   ; 

- D 0 - I - 0x015BC9 05:9BB9: 68        .byte $68   ; 
- D 0 - I - 0x015BCA 05:9BBA: 60        .byte $60   ; 

- D 0 - I - 0x015BCB 05:9BBB: 03        .byte con_03   ; 

- D 0 - I - 0x015BCC 05:9BBC: 74        .byte $74   ; 
- D 0 - I - 0x015BCD 05:9BBD: 78        .byte $78   ; 
- D 0 - I - 0x015BCE 05:9BBE: 79        .byte $79   ; 
- D 0 - I - 0x015BCF 05:9BBF: 79        .byte $79   ; 
- D 0 - I - 0x015BD0 05:9BC0: 78        .byte $78   ; 
- D 0 - I - 0x015BD1 05:9BC1: 79        .byte $79   ; 

- D 0 - I - 0x015BD2 05:9BC2: 03        .byte con_03   ; 

- D 0 - I - 0x015BD3 05:9BC3: 68        .byte $68   ; 
- D 0 - I - 0x015BD4 05:9BC4: 60        .byte $60   ; 

- D 0 - I - 0x015BD5 05:9BC5: 03        .byte con_03   ; 

- D 0 - I - 0x015BD6 05:9BC6: 74        .byte $74   ; 
- D 0 - I - 0x015BD7 05:9BC7: 78        .byte $78   ; 
- D 0 - I - 0x015BD8 05:9BC8: 79        .byte $79   ; 
- D 0 - I - 0x015BD9 05:9BC9: 7D        .byte $7D   ; 
- D 0 - I - 0x015BDA 05:9BCA: 76        .byte $76   ; 
- D 0 - I - 0x015BDB 05:9BCB: 7A        .byte $7A   ; 
- D 0 - I - 0x015BDC 05:9BCC: 7E        .byte $7E   ; 
- D 0 - I - 0x015BDD 05:9BCD: 60        .byte $60   ; 
- D 0 - I - 0x015BDE 05:9BCE: 76        .byte $76   ; 
- D 0 - I - 0x015BDF 05:9BCF: 7A        .byte $7A   ; 
- D 0 - I - 0x015BE0 05:9BD0: 7D        .byte $7D   ; 

- D 0 - I - 0x015BE1 05:9BD1: 03        .byte con_03   ; 

- D 0 - I - 0x015BE2 05:9BD2: 6F        .byte $6F   ; 
- D 0 - I - 0x015BE3 05:9BD3: 6A        .byte $6A   ; 
- D 0 - I - 0x015BE4 05:9BD4: 6E        .byte $6E   ; 
- D 0 - I - 0x015BE5 05:9BD5: 6A        .byte $6A   ; 
- D 0 - I - 0x015BE6 05:9BD6: 6F        .byte $6F   ; 
- D 0 - I - 0x015BE7 05:9BD7: 6A        .byte $6A   ; 
- D 0 - I - 0x015BE8 05:9BD8: 6E        .byte $6E   ; 
- D 0 - I - 0x015BE9 05:9BD9: 6A        .byte $6A   ; 
- D 0 - I - 0x015BEA 05:9BDA: 68        .byte $68   ; 

- D 0 - I - 0x015BEB 05:9BDB: 03        .byte con_03   ; 

- D 0 - I - 0x015BEC 05:9BDC: 78        .byte $78   ; 
- D 0 - I - 0x015BED 05:9BDD: 7B        .byte $7B   ; 

- D 0 - I - 0x015BEE 05:9BDE: 03        .byte con_03   ; 

- D 0 - I - 0x015BEF 05:9BDF: 68        .byte $68   ; 
- D 0 - I - 0x015BF0 05:9BE0: 60        .byte $60   ; 

- D 0 - I - 0x015BF1 05:9BE1: 03        .byte con_03   ; 

- D 0 - I - 0x015BF2 05:9BE2: 78        .byte $78   ; 
- D 0 - I - 0x015BF3 05:9BE3: 7B        .byte $7B   ; 

- D 0 - I - 0x015BF4 05:9BE4: 03        .byte con_03   ; 

- D 0 - I - 0x015BF5 05:9BE5: 68        .byte $68   ; 
- D 0 - I - 0x015BF6 05:9BE6: 65        .byte $65   ; 

- D 0 - I - 0x015BF7 05:9BE7: 03        .byte con_03   ; 

- D 0 - I - 0x015BF8 05:9BE8: 74        .byte $74   ; 
- D 0 - I - 0x015BF9 05:9BE9: 79        .byte $79   ; 
- D 0 - I - 0x015BFA 05:9BEA: 7D        .byte $7D   ; 
- D 0 - I - 0x015BFB 05:9BEB: 60        .byte $60   ; 
- D 0 - I - 0x015BFC 05:9BEC: 74        .byte $74   ; 
- D 0 - I - 0x015BFD 05:9BED: 79        .byte $79   ; 
- D 0 - I - 0x015BFE 05:9BEE: 7D        .byte $7D   ; 

- D 0 - I - 0x015BFF 05:9BEF: 12        .byte con_12, $00   ; 
- D 0 - I - 0x015C01 05:9BF1: 9C 08     .dbyt off_12_9C08

- D 0 - I - 0x015C03 05:9BF3: 03        .byte con_03   ; 

- D 0 - I - 0x015C04 05:9BF4: 6F        .byte $6F   ; 
- D 0 - I - 0x015C05 05:9BF5: 66        .byte $66   ; 
- D 0 - I - 0x015C06 05:9BF6: 6A        .byte $6A   ; 
- D 0 - I - 0x015C07 05:9BF7: 6F        .byte $6F   ; 
- D 0 - I - 0x015C08 05:9BF8: 60        .byte $60   ; 
- D 0 - I - 0x015C09 05:9BF9: 66        .byte $66   ; 
- D 0 - I - 0x015C0A 05:9BFA: 6A        .byte $6A   ; 
- D 0 - I - 0x015C0B 05:9BFB: 6F        .byte $6F   ; 
- D 0 - I - 0x015C0C 05:9BFC: 6D        .byte $6D   ; 
- D 0 - I - 0x015C0D 05:9BFD: 6C        .byte $6C   ; 
- D 0 - I - 0x015C0E 05:9BFE: 6B        .byte $6B   ; 
- D 0 - I - 0x015C0F 05:9BFF: 6A        .byte $6A   ; 
- D 0 - I - 0x015C10 05:9C00: 69        .byte $69   ; 
- D 0 - I - 0x015C11 05:9C01: 68        .byte $68   ; 
- D 0 - I - 0x015C12 05:9C02: 67        .byte $67   ; 
- D 0 - I - 0x015C13 05:9C03: 66        .byte $66   ; 

- D 0 - I - 0x015C14 05:9C04: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x015C16 05:9C06: 9B B3     .dbyt off_0E_9BB3
off_12_9C08:
- D 0 - I - 0x015C18 05:9C08: 03        .byte con_03   ; 

- D 0 - I - 0x015C19 05:9C09: 6C        .byte $6C   ; 
- D 0 - I - 0x015C1A 05:9C0A: 66        .byte $66   ; 
- D 0 - I - 0x015C1B 05:9C0B: 68        .byte $68   ; 
- D 0 - I - 0x015C1C 05:9C0C: 6C        .byte $6C   ; 
- D 0 - I - 0x015C1D 05:9C0D: 60        .byte $60   ; 
- D 0 - I - 0x015C1E 05:9C0E: 66        .byte $66   ; 
- D 0 - I - 0x015C1F 05:9C0F: 68        .byte $68   ; 
- D 0 - I - 0x015C20 05:9C10: 6C        .byte $6C   ; 
- D 0 - I - 0x015C21 05:9C11: 6D        .byte $6D   ; 
- D 0 - I - 0x015C22 05:9C12: 68        .byte $68   ; 
- D 0 - I - 0x015C23 05:9C13: 6C        .byte $6C   ; 
- D 0 - I - 0x015C24 05:9C14: 6D        .byte $6D   ; 
- D 0 - I - 0x015C25 05:9C15: 60        .byte $60   ; 
- D 0 - I - 0x015C26 05:9C16: 68        .byte $68   ; 
- D 0 - I - 0x015C27 05:9C17: 6C        .byte $6C   ; 
- D 0 - I - 0x015C28 05:9C18: 6D        .byte $6D   ; 

- D 0 - I - 0x015C29 05:9C19: 18        .byte con_18, $40   ; 

- D 0 - I - 0x015C2B 05:9C1B: 71        .byte $71   ; 
- D 0 - I - 0x015C2C 05:9C1C: 6A        .byte $6A   ; 
- D 0 - I - 0x015C2D 05:9C1D: 6D        .byte $6D   ; 
- D 0 - I - 0x015C2E 05:9C1E: 6A        .byte $6A   ; 
- D 0 - I - 0x015C2F 05:9C1F: 71        .byte $71   ; 
- D 0 - I - 0x015C30 05:9C20: 6A        .byte $6A   ; 
- D 0 - I - 0x015C31 05:9C21: 6D        .byte $6D   ; 
- D 0 - I - 0x015C32 05:9C22: 6A        .byte $6A   ; 
- D 0 - I - 0x015C33 05:9C23: A8        .byte $A8   ; 
- D 0 - I - 0x015C34 05:9C24: 54        .byte $54   ; 
- D 0 - I - 0x015C35 05:9C25: 52        .byte $52   ; 
- D 0 - I - 0x015C36 05:9C26: 51        .byte $51   ; 
- D 0 - I - 0x015C37 05:9C27: 4F        .byte $4F   ; 
- D 0 - I - 0x015C38 05:9C28: 4D        .byte $4D   ; 
- D 0 - I - 0x015C39 05:9C29: 4C        .byte $4C   ; 
- D 0 - I - 0x015C3A 05:9C2A: 4A        .byte $4A   ; 
- D 0 - I - 0x015C3B 05:9C2B: 48        .byte $48   ; 

- D 0 - I - 0x015C3C 05:9C2C: 06        .byte con_06, $E6   ; 
- D 0 - I - 0x015C3E 05:9C2E: 02        .byte con_02   ; 

- D 0 - I - 0x015C3F 05:9C2F: 8A        .byte $8A   ; 

- D 0 - I - 0x015C40 05:9C30: 02        .byte con_02   ; 

- D 0 - I - 0x015C41 05:9C31: 88        .byte $88   ; 
- D 0 - I - 0x015C42 05:9C32: 8F        .byte $8F   ; 

- D 0 - I - 0x015C43 05:9C33: 02        .byte con_02   ; 

- D 0 - I - 0x015C44 05:9C34: 91        .byte $91   ; 

- D 0 - I - 0x015C45 05:9C35: 02        .byte con_02   ; 

- D 0 - I - 0x015C46 05:9C36: 92        .byte $92   ; 
- D 0 - I - 0x015C47 05:9C37: 94        .byte $94   ; 

- D 0 - I - 0x015C48 05:9C38: 06        .byte con_06, $64   ; 

- D 0 - I - 0x015C4A 05:9C3A: 71        .byte $71   ; 
- D 0 - I - 0x015C4B 05:9C3B: 6A        .byte $6A   ; 
- D 0 - I - 0x015C4C 05:9C3C: 6D        .byte $6D   ; 
- D 0 - I - 0x015C4D 05:9C3D: 71        .byte $71   ; 
- D 0 - I - 0x015C4E 05:9C3E: 60        .byte $60   ; 
- D 0 - I - 0x015C4F 05:9C3F: 6A        .byte $6A   ; 
- D 0 - I - 0x015C50 05:9C40: 6D        .byte $6D   ; 
- D 0 - I - 0x015C51 05:9C41: 71        .byte $71   ; 
- D 0 - I - 0x015C52 05:9C42: 6D        .byte $6D   ; 
- D 0 - I - 0x015C53 05:9C43: 68        .byte $68   ; 
- D 0 - I - 0x015C54 05:9C44: 6C        .byte $6C   ; 
- D 0 - I - 0x015C55 05:9C45: 6D        .byte $6D   ; 
- D 0 - I - 0x015C56 05:9C46: 4A        .byte $4A   ; 
- D 0 - I - 0x015C57 05:9C47: 4C        .byte $4C   ; 
- D 0 - I - 0x015C58 05:9C48: 4D        .byte $4D   ; 
- D 0 - I - 0x015C59 05:9C49: 4F        .byte $4F   ; 
- D 0 - I - 0x015C5A 05:9C4A: 51        .byte $51   ; 
- D 0 - I - 0x015C5B 05:9C4B: 52        .byte $52   ; 
- D 0 - I - 0x015C5C 05:9C4C: 54        .byte $54   ; 
- D 0 - I - 0x015C5D 05:9C4D: 56        .byte $56   ; 

- D 0 - I - 0x015C5E 05:9C4E: 06        .byte con_06, $96   ; 
- D 0 - I - 0x015C60 05:9C50: 02        .byte con_02   ; 

- D 0 - I - 0x015C61 05:9C51: 98        .byte $98   ; 

- D 0 - I - 0x015C62 05:9C52: 02        .byte con_02   ; 

- D 0 - I - 0x015C63 05:9C53: 8F        .byte $8F   ; 
- D 0 - I - 0x015C64 05:9C54: 94        .byte $94   ; 
- D 0 - I - 0x015C65 05:9C55: 6F        .byte $6F   ; 
- D 0 - I - 0x015C66 05:9C56: 68        .byte $68   ; 
- D 0 - I - 0x015C67 05:9C57: 6C        .byte $6C   ; 
- D 0 - I - 0x015C68 05:9C58: 63        .byte $63   ; 
- D 0 - I - 0x015C69 05:9C59: 68        .byte $68   ; 

- D 0 - I - 0x015C6A 05:9C5A: 03        .byte con_03   ; 

- D 0 - I - 0x015C6B 05:9C5B: 78        .byte $78   ; 
- D 0 - I - 0x015C6C 05:9C5C: 7B        .byte $7B   ; 
- D 0 - I - 0x015C6D 05:9C5D: 74        .byte $74   ; 

- D 0 - I - 0x015C6E 05:9C5E: 16        .byte con_jump   ; 
- D 0 - I - 0x015C6F 05:9C5F: 9B AB     .dbyt loc_16_9BAB


; bzk garbage
- - - - - - 0x015C71 05:9C61: 17        .byte con_stop   ; 



_off019_04_9C62_02:
- D 0 - I - 0x015C72 05:9C62: 06        .byte con_06, $C8   ; 
- D 0 - I - 0x015C74 05:9C64: 08        .byte con_08, $00   ; 
- D 0 - I - 0x015C76 05:9C66: 09        .byte con_09, $02   ; 

- D 0 - I - 0x015C78 05:9C68: 74        .byte $74   ; 
- D 0 - I - 0x015C79 05:9C69: 74        .byte $74   ; 

- D 0 - I - 0x015C7A 05:9C6A: 03        .byte con_03   ; 

- D 0 - I - 0x015C7B 05:9C6B: 68        .byte $68   ; 

- D 0 - I - 0x015C7C 05:9C6C: 03        .byte con_03   ; 

- D 0 - I - 0x015C7D 05:9C6D: 74        .byte $74   ; 
- D 0 - I - 0x015C7E 05:9C6E: 72        .byte $72   ; 
- D 0 - I - 0x015C7F 05:9C6F: 72        .byte $72   ; 
- D 0 - I - 0x015C80 05:9C70: 7E        .byte $7E   ; 
- D 0 - I - 0x015C81 05:9C71: 72        .byte $72   ; 
- D 0 - I - 0x015C82 05:9C72: 71        .byte $71   ; 
- D 0 - I - 0x015C83 05:9C73: 71        .byte $71   ; 
- D 0 - I - 0x015C84 05:9C74: 7D        .byte $7D   ; 
- D 0 - I - 0x015C85 05:9C75: 71        .byte $71   ; 
- D 0 - I - 0x015C86 05:9C76: 6F        .byte $6F   ; 
- D 0 - I - 0x015C87 05:9C77: 6F        .byte $6F   ; 
- D 0 - I - 0x015C88 05:9C78: 7B        .byte $7B   ; 
- D 0 - I - 0x015C89 05:9C79: 6F        .byte $6F   ; 
loc_16_9C7A:
- D 0 - I - 0x015C8A 05:9C7A: 04        .byte con_04, $00   ; 
off_0E_9C7C:
- D 0 - I - 0x015C8C 05:9C7C: 04        .byte con_04, $00   ; 

- D 0 - I - 0x015C8E 05:9C7E: 8D        .byte $8D   ; 
- D 0 - I - 0x015C8F 05:9C7F: 79        .byte $79   ; 
- D 0 - I - 0x015C90 05:9C80: 6D        .byte $6D   ; 
- D 0 - I - 0x015C91 05:9C81: 60        .byte $60   ; 
- D 0 - I - 0x015C92 05:9C82: 6D        .byte $6D   ; 
- D 0 - I - 0x015C93 05:9C83: 99        .byte $99   ; 
- D 0 - I - 0x015C94 05:9C84: 8D        .byte $8D   ; 
- D 0 - I - 0x015C95 05:9C85: 79        .byte $79   ; 
- D 0 - I - 0x015C96 05:9C86: 6D        .byte $6D   ; 
- D 0 - I - 0x015C97 05:9C87: 60        .byte $60   ; 
- D 0 - I - 0x015C98 05:9C88: 6D        .byte $6D   ; 
- D 0 - I - 0x015C99 05:9C89: 99        .byte $99   ; 
- D 0 - I - 0x015C9A 05:9C8A: 8E        .byte $8E   ; 
- D 0 - I - 0x015C9B 05:9C8B: 7A        .byte $7A   ; 
- D 0 - I - 0x015C9C 05:9C8C: 6E        .byte $6E   ; 
- D 0 - I - 0x015C9D 05:9C8D: 60        .byte $60   ; 
- D 0 - I - 0x015C9E 05:9C8E: 6E        .byte $6E   ; 
- D 0 - I - 0x015C9F 05:9C8F: 9A        .byte $9A   ; 
- D 0 - I - 0x015CA0 05:9C90: 8F        .byte $8F   ; 
- D 0 - I - 0x015CA1 05:9C91: 7B        .byte $7B   ; 
- D 0 - I - 0x015CA2 05:9C92: 6F        .byte $6F   ; 
- D 0 - I - 0x015CA3 05:9C93: 60        .byte $60   ; 
- D 0 - I - 0x015CA4 05:9C94: 6F        .byte $6F   ; 
- D 0 - I - 0x015CA5 05:9C95: 9B        .byte $9B   ; 
- D 0 - I - 0x015CA6 05:9C96: 88        .byte $88   ; 
- D 0 - I - 0x015CA7 05:9C97: 74        .byte $74   ; 
- D 0 - I - 0x015CA8 05:9C98: 68        .byte $68   ; 
- D 0 - I - 0x015CA9 05:9C99: 60        .byte $60   ; 
- D 0 - I - 0x015CAA 05:9C9A: 68        .byte $68   ; 
- D 0 - I - 0x015CAB 05:9C9B: 94        .byte $94   ; 
- D 0 - I - 0x015CAC 05:9C9C: 8D        .byte $8D   ; 
- D 0 - I - 0x015CAD 05:9C9D: 79        .byte $79   ; 
- D 0 - I - 0x015CAE 05:9C9E: 6D        .byte $6D   ; 
- D 0 - I - 0x015CAF 05:9C9F: 60        .byte $60   ; 
- D 0 - I - 0x015CB0 05:9CA0: 6D        .byte $6D   ; 
- D 0 - I - 0x015CB1 05:9CA1: 99        .byte $99   ; 

- D 0 - I - 0x015CB2 05:9CA2: 12        .byte con_12, $00   ; 
- D 0 - I - 0x015CB4 05:9CA4: 9C B6     .dbyt off_12_9CB6

- D 0 - I - 0x015CB6 05:9CA6: 8F        .byte $8F   ; 
- D 0 - I - 0x015CB7 05:9CA7: 72        .byte $72   ; 
- D 0 - I - 0x015CB8 05:9CA8: 6F        .byte $6F   ; 
- D 0 - I - 0x015CB9 05:9CA9: 60        .byte $60   ; 
- D 0 - I - 0x015CBA 05:9CAA: 6F        .byte $6F   ; 
- D 0 - I - 0x015CBB 05:9CAB: 92        .byte $92   ; 
- D 0 - I - 0x015CBC 05:9CAC: 88        .byte $88   ; 
- D 0 - I - 0x015CBD 05:9CAD: 74        .byte $74   ; 
- D 0 - I - 0x015CBE 05:9CAE: 68        .byte $68   ; 
- D 0 - I - 0x015CBF 05:9CAF: 60        .byte $60   ; 
- D 0 - I - 0x015CC0 05:9CB0: 68        .byte $68   ; 
- D 0 - I - 0x015CC1 05:9CB1: 94        .byte $94   ; 

- D 0 - I - 0x015CC2 05:9CB2: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x015CC4 05:9CB4: 9C 7C     .dbyt off_0E_9C7C
off_12_9CB6:
- D 0 - I - 0x015CC6 05:9CB6: 88        .byte $88   ; 
- D 0 - I - 0x015CC7 05:9CB7: 74        .byte $74   ; 
- D 0 - I - 0x015CC8 05:9CB8: 68        .byte $68   ; 
- D 0 - I - 0x015CC9 05:9CB9: 60        .byte $60   ; 
- D 0 - I - 0x015CCA 05:9CBA: 68        .byte $68   ; 
- D 0 - I - 0x015CCB 05:9CBB: 94        .byte $94   ; 
- D 0 - I - 0x015CCC 05:9CBC: 8D        .byte $8D   ; 
- D 0 - I - 0x015CCD 05:9CBD: 79        .byte $79   ; 
- D 0 - I - 0x015CCE 05:9CBE: 6D        .byte $6D   ; 
- D 0 - I - 0x015CCF 05:9CBF: 60        .byte $60   ; 
- D 0 - I - 0x015CD0 05:9CC0: 6D        .byte $6D   ; 
- D 0 - I - 0x015CD1 05:9CC1: 99        .byte $99   ; 
off_0E_9CC2:
- D 0 - I - 0x015CD2 05:9CC2: 04        .byte con_04, $00   ; 

- D 0 - I - 0x015CD4 05:9CC4: 92        .byte $92   ; 
- D 0 - I - 0x015CD5 05:9CC5: 7E        .byte $7E   ; 
- D 0 - I - 0x015CD6 05:9CC6: 72        .byte $72   ; 
- D 0 - I - 0x015CD7 05:9CC7: 60        .byte $60   ; 
- D 0 - I - 0x015CD8 05:9CC8: 72        .byte $72   ; 
- D 0 - I - 0x015CD9 05:9CC9: 9E        .byte $9E   ; 
- D 0 - I - 0x015CDA 05:9CCA: 91        .byte $91   ; 
- D 0 - I - 0x015CDB 05:9CCB: 7D        .byte $7D   ; 
- D 0 - I - 0x015CDC 05:9CCC: 71        .byte $71   ; 
- D 0 - I - 0x015CDD 05:9CCD: 60        .byte $60   ; 
- D 0 - I - 0x015CDE 05:9CCE: 71        .byte $71   ; 
- D 0 - I - 0x015CDF 05:9CCF: 9D        .byte $9D   ; 

- D 0 - I - 0x015CE0 05:9CD0: 12        .byte con_12, $00   ; 
- D 0 - I - 0x015CE2 05:9CD2: 9C E4     .dbyt off_12_9CE4

- D 0 - I - 0x015CE4 05:9CD4: 8F        .byte $8F   ; 
- D 0 - I - 0x015CE5 05:9CD5: 7B        .byte $7B   ; 
- D 0 - I - 0x015CE6 05:9CD6: 6F        .byte $6F   ; 
- D 0 - I - 0x015CE7 05:9CD7: 60        .byte $60   ; 
- D 0 - I - 0x015CE8 05:9CD8: 6F        .byte $6F   ; 
- D 0 - I - 0x015CE9 05:9CD9: 9B        .byte $9B   ; 
- D 0 - I - 0x015CEA 05:9CDA: 8D        .byte $8D   ; 
- D 0 - I - 0x015CEB 05:9CDB: 79        .byte $79   ; 
- D 0 - I - 0x015CEC 05:9CDC: 6D        .byte $6D   ; 
- D 0 - I - 0x015CED 05:9CDD: 60        .byte $60   ; 
- D 0 - I - 0x015CEE 05:9CDE: 6D        .byte $6D   ; 
- D 0 - I - 0x015CEF 05:9CDF: 99        .byte $99   ; 

- D 0 - I - 0x015CF0 05:9CE0: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x015CF2 05:9CE2: 9C C2     .dbyt off_0E_9CC2
off_12_9CE4:
- D 0 - I - 0x015CF4 05:9CE4: 90        .byte $90   ; 
- D 0 - I - 0x015CF5 05:9CE5: 7C        .byte $7C   ; 
- D 0 - I - 0x015CF6 05:9CE6: 70        .byte $70   ; 
- D 0 - I - 0x015CF7 05:9CE7: 60        .byte $60   ; 
- D 0 - I - 0x015CF8 05:9CE8: 70        .byte $70   ; 
- D 0 - I - 0x015CF9 05:9CE9: 9C        .byte $9C   ; 
- D 0 - I - 0x015CFA 05:9CEA: 6F        .byte $6F   ; 
- D 0 - I - 0x015CFB 05:9CEB: 6F        .byte $6F   ; 
- D 0 - I - 0x015CFC 05:9CEC: 6F        .byte $6F   ; 

- D 0 - I - 0x015CFD 05:9CED: 01        .byte con_01   ; 

- D 0 - I - 0x015CFE 05:9CEE: 68        .byte $68   ; 

- D 0 - I - 0x015CFF 05:9CEF: 01        .byte con_01   ; 

- D 0 - I - 0x015D00 05:9CF0: A8        .byte $A8   ; 

- D 0 - I - 0x015D01 05:9CF1: 16        .byte con_jump   ; 
- D 0 - I - 0x015D02 05:9CF2: 9C 7A     .dbyt loc_16_9C7A


; bzk garbage
- - - - - - 0x015D04 05:9CF4: 17        .byte con_stop   ; 



_off019_04_9CF5_03_disable:
- D 0 - I - 0x015D05 05:9CF5: 17        .byte con_stop   ; 



_music_9CF6_05_stage_03:
- D 0 - I - 0x015D06 05:9CF6: 00        .byte $00   ; 
- D 0 - I - 0x015D07 05:9CF7: 9C FF     .dbyt _off019_05_9CFF_00
- D 0 - I - 0x015D09 05:9CF9: 9D 88     .dbyt _off019_05_9D88_01
- D 0 - I - 0x015D0B 05:9CFB: 9E 0B     .dbyt _off019_05_9E0B_02
- D 0 - I - 0x015D0D 05:9CFD: 9E AC     .dbyt _off019_05_9EAC_03_disable



_off019_05_9CFF_00:
- D 0 - I - 0x015D0F 05:9CFF: 05        .byte con_05, $01, $C7   ; 
- D 0 - I - 0x015D12 05:9D02: 06        .byte con_06, $78   ; 
- D 0 - I - 0x015D14 05:9D04: 07        .byte con_07, $08   ; 
- D 0 - I - 0x015D16 05:9D06: 09        .byte con_09, $02   ; 
- D 0 - I - 0x015D18 05:9D08: 08        .byte con_08, $12   ; 
- D 0 - I - 0x015D1A 05:9D0A: 18        .byte con_18, $40   ; 

- D 0 - I - 0x015D1C 05:9D0C: 79        .byte $79   ; 
- D 0 - I - 0x015D1D 05:9D0D: 79        .byte $79   ; 
- D 0 - I - 0x015D1E 05:9D0E: 7D        .byte $7D   ; 
- D 0 - I - 0x015D1F 05:9D0F: 7D        .byte $7D   ; 

- D 0 - I - 0x015D20 05:9D10: 03        .byte con_03   ; 

- D 0 - I - 0x015D21 05:9D11: 68        .byte $68   ; 
- D 0 - I - 0x015D22 05:9D12: 68        .byte $68   ; 
- D 0 - I - 0x015D23 05:9D13: 6D        .byte $6D   ; 
- D 0 - I - 0x015D24 05:9D14: 6D        .byte $6D   ; 
- D 0 - I - 0x015D25 05:9D15: 6C        .byte $6C   ; 
- D 0 - I - 0x015D26 05:9D16: 6C        .byte $6C   ; 
- D 0 - I - 0x015D27 05:9D17: 68        .byte $68   ; 
- D 0 - I - 0x015D28 05:9D18: 68        .byte $68   ; 
- D 0 - I - 0x015D29 05:9D19: 6A        .byte $6A   ; 
- D 0 - I - 0x015D2A 05:9D1A: 6A        .byte $6A   ; 
- D 0 - I - 0x015D2B 05:9D1B: 6C        .byte $6C   ; 
- D 0 - I - 0x015D2C 05:9D1C: 6C        .byte $6C   ; 

- D 0 - I - 0x015D2D 05:9D1D: 08        .byte con_08, $0C   ; 
- D 0 - I - 0x015D2F 05:9D1F: 18        .byte con_18, $40   ; 

- D 0 - I - 0x015D31 05:9D21: AD        .byte $AD   ; 
- D 0 - I - 0x015D32 05:9D22: 8F        .byte $8F   ; 
- D 0 - I - 0x015D33 05:9D23: 60        .byte $60   ; 
- D 0 - I - 0x015D34 05:9D24: AD        .byte $AD   ; 
- D 0 - I - 0x015D35 05:9D25: A0        .byte $A0   ; 
- D 0 - I - 0x015D36 05:9D26: 60        .byte $60   ; 
loc_16_9D27:
- D 0 - I - 0x015D37 05:9D27: 04        .byte con_04, $08   ; 
off_0E_9D29:
- D 0 - I - 0x015D39 05:9D29: 04        .byte con_04, $08   ; 
- D 0 - I - 0x015D3B 05:9D2B: 18        .byte con_18, $80   ; 
- D 0 - I - 0x015D3D 05:9D2D: 09        .byte con_09, $02   ; 

- D 0 - I - 0x015D3F 05:9D2F: B1        .byte $B1   ; 
- D 0 - I - 0x015D40 05:9D30: AD        .byte $AD   ; 
- D 0 - I - 0x015D41 05:9D31: A8        .byte $A8   ; 
- D 0 - I - 0x015D42 05:9D32: A5        .byte $A5   ; 
- D 0 - I - 0x015D43 05:9D33: 8B        .byte $8B   ; 
- D 0 - I - 0x015D44 05:9D34: 8A        .byte $8A   ; 
- D 0 - I - 0x015D45 05:9D35: 6A        .byte $6A   ; 
- D 0 - I - 0x015D46 05:9D36: 88        .byte $88   ; 
- D 0 - I - 0x015D47 05:9D37: A8        .byte $A8   ; 
- D 0 - I - 0x015D48 05:9D38: A0        .byte $A0   ; 
- D 0 - I - 0x015D49 05:9D39: 60        .byte $60   ; 

- D 0 - I - 0x015D4A 05:9D3A: 02        .byte con_02   ; 

- D 0 - I - 0x015D4B 05:9D3B: 86        .byte $86   ; 

- D 0 - I - 0x015D4C 05:9D3C: 02        .byte con_02   ; 

- D 0 - I - 0x015D4D 05:9D3D: 85        .byte $85   ; 
- D 0 - I - 0x015D4E 05:9D3E: A1        .byte $A1   ; 
- D 0 - I - 0x015D4F 05:9D3F: A0        .byte $A0   ; 
- D 0 - I - 0x015D50 05:9D40: 81        .byte $81   ; 

- D 0 - I - 0x015D51 05:9D41: 02        .byte con_02   ; 

- D 0 - I - 0x015D52 05:9D42: 84        .byte $84   ; 

- D 0 - I - 0x015D53 05:9D43: 02        .byte con_02   ; 

- D 0 - I - 0x015D54 05:9D44: 83        .byte $83   ; 
- D 0 - I - 0x015D55 05:9D45: 81        .byte $81   ; 

- D 0 - I - 0x015D56 05:9D46: 03        .byte con_03   ; 

- D 0 - I - 0x015D57 05:9D47: B7        .byte $B7   ; 
- D 0 - I - 0x015D58 05:9D48: B9        .byte $B9   ; 

- D 0 - I - 0x015D59 05:9D49: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x015D5B 05:9D4B: 9D 29     .dbyt off_0E_9D29

- D 0 - I - 0x015D5D 05:9D4D: 03        .byte con_03   ; 

- D 0 - I - 0x015D5E 05:9D4E: AA        .byte $AA   ; 
- D 0 - I - 0x015D5F 05:9D4F: B2        .byte $B2   ; 
- D 0 - I - 0x015D60 05:9D50: 74        .byte $74   ; 
- D 0 - I - 0x015D61 05:9D51: 92        .byte $92   ; 
- D 0 - I - 0x015D62 05:9D52: 71        .byte $71   ; 
- D 0 - I - 0x015D63 05:9D53: 8F        .byte $8F   ; 
- D 0 - I - 0x015D64 05:9D54: 8D        .byte $8D   ; 
- D 0 - I - 0x015D65 05:9D55: 8F        .byte $8F   ; 
- D 0 - I - 0x015D66 05:9D56: 8D        .byte $8D   ; 
- D 0 - I - 0x015D67 05:9D57: 6F        .byte $6F   ; 
- D 0 - I - 0x015D68 05:9D58: 91        .byte $91   ; 
- D 0 - I - 0x015D69 05:9D59: A8        .byte $A8   ; 
- D 0 - I - 0x015D6A 05:9D5A: A0        .byte $A0   ; 
- D 0 - I - 0x015D6B 05:9D5B: 60        .byte $60   ; 
- D 0 - I - 0x015D6C 05:9D5C: AA        .byte $AA   ; 
- D 0 - I - 0x015D6D 05:9D5D: B2        .byte $B2   ; 
- D 0 - I - 0x015D6E 05:9D5E: 74        .byte $74   ; 
- D 0 - I - 0x015D6F 05:9D5F: 92        .byte $92   ; 
- D 0 - I - 0x015D70 05:9D60: 71        .byte $71   ; 
- D 0 - I - 0x015D71 05:9D61: 8F        .byte $8F   ; 
- D 0 - I - 0x015D72 05:9D62: 8D        .byte $8D   ; 

- D 0 - I - 0x015D73 05:9D63: 02        .byte con_02   ; 

- D 0 - I - 0x015D74 05:9D64: 91        .byte $91   ; 

- D 0 - I - 0x015D75 05:9D65: 02        .byte con_02   ; 

- D 0 - I - 0x015D76 05:9D66: 92        .byte $92   ; 
- D 0 - I - 0x015D77 05:9D67: B4        .byte $B4   ; 
- D 0 - I - 0x015D78 05:9D68: A0        .byte $A0   ; 
- D 0 - I - 0x015D79 05:9D69: 94        .byte $94   ; 

- D 0 - I - 0x015D7A 05:9D6A: 09        .byte con_09, $03   ; 

- D 0 - I - 0x015D7C 05:9D6C: AA        .byte $AA   ; 

- D 0 - I - 0x015D7D 05:9D6D: 02        .byte con_02   ; 

- D 0 - I - 0x015D7E 05:9D6E: 8D        .byte $8D   ; 
- D 0 - I - 0x015D7F 05:9D6F: 8C        .byte $8C   ; 
- D 0 - I - 0x015D80 05:9D70: 8C        .byte $8C   ; 
- D 0 - I - 0x015D81 05:9D71: 6A        .byte $6A   ; 
- D 0 - I - 0x015D82 05:9D72: 8C        .byte $8C   ; 
- D 0 - I - 0x015D83 05:9D73: 8D        .byte $8D   ; 
- D 0 - I - 0x015D84 05:9D74: A8        .byte $A8   ; 

- D 0 - I - 0x015D85 05:9D75: 02        .byte con_02   ; 

- D 0 - I - 0x015D86 05:9D76: 8D        .byte $8D   ; 
- D 0 - I - 0x015D87 05:9D77: 8C        .byte $8C   ; 
- D 0 - I - 0x015D88 05:9D78: 8C        .byte $8C   ; 
- D 0 - I - 0x015D89 05:9D79: 6A        .byte $6A   ; 
- D 0 - I - 0x015D8A 05:9D7A: 8C        .byte $8C   ; 
- D 0 - I - 0x015D8B 05:9D7B: 8D        .byte $8D   ; 
- D 0 - I - 0x015D8C 05:9D7C: AA        .byte $AA   ; 
- D 0 - I - 0x015D8D 05:9D7D: A0        .byte $A0   ; 
- D 0 - I - 0x015D8E 05:9D7E: 80        .byte $80   ; 
- D 0 - I - 0x015D8F 05:9D7F: 8A        .byte $8A   ; 
- D 0 - I - 0x015D90 05:9D80: 8C        .byte $8C   ; 
- D 0 - I - 0x015D91 05:9D81: 8D        .byte $8D   ; 
- D 0 - I - 0x015D92 05:9D82: CA        .byte $CA   ; 
- D 0 - I - 0x015D93 05:9D83: C8        .byte $C8   ; 

- D 0 - I - 0x015D94 05:9D84: 16        .byte con_jump   ; 
- D 0 - I - 0x015D95 05:9D85: 9D 27     .dbyt loc_16_9D27


; bzk garbage
- - - - - - 0x015D97 05:9D87: 17        .byte con_stop   ; 



_off019_05_9D88_01:
- D 0 - I - 0x015D98 05:9D88: 06        .byte con_06, $78   ; 
- D 0 - I - 0x015D9A 05:9D8A: 07        .byte con_07, $08   ; 
- D 0 - I - 0x015D9C 05:9D8C: 09        .byte con_09, $02   ; 
- D 0 - I - 0x015D9E 05:9D8E: 08        .byte con_08, $10   ; 
- D 0 - I - 0x015DA0 05:9D90: 18        .byte con_18, $40   ; 

- D 0 - I - 0x015DA2 05:9D92: 71        .byte $71   ; 
- D 0 - I - 0x015DA3 05:9D93: 71        .byte $71   ; 
- D 0 - I - 0x015DA4 05:9D94: 74        .byte $74   ; 
- D 0 - I - 0x015DA5 05:9D95: 74        .byte $74   ; 
- D 0 - I - 0x015DA6 05:9D96: 79        .byte $79   ; 
- D 0 - I - 0x015DA7 05:9D97: 79        .byte $79   ; 
- D 0 - I - 0x015DA8 05:9D98: 7D        .byte $7D   ; 
- D 0 - I - 0x015DA9 05:9D99: 7D        .byte $7D   ; 
- D 0 - I - 0x015DAA 05:9D9A: 7B        .byte $7B   ; 
- D 0 - I - 0x015DAB 05:9D9B: 7B        .byte $7B   ; 
- D 0 - I - 0x015DAC 05:9D9C: 78        .byte $78   ; 
- D 0 - I - 0x015DAD 05:9D9D: 78        .byte $78   ; 
- D 0 - I - 0x015DAE 05:9D9E: 79        .byte $79   ; 
- D 0 - I - 0x015DAF 05:9D9F: 79        .byte $79   ; 
- D 0 - I - 0x015DB0 05:9DA0: 7B        .byte $7B   ; 
- D 0 - I - 0x015DB1 05:9DA1: 7B        .byte $7B   ; 

- D 0 - I - 0x015DB2 05:9DA2: 08        .byte con_08, $0C   ; 

- D 0 - I - 0x015DB4 05:9DA4: BD        .byte $BD   ; 
- D 0 - I - 0x015DB5 05:9DA5: 9E        .byte $9E   ; 
- D 0 - I - 0x015DB6 05:9DA6: 60        .byte $60   ; 
- D 0 - I - 0x015DB7 05:9DA7: BD        .byte $BD   ; 
- D 0 - I - 0x015DB8 05:9DA8: A0        .byte $A0   ; 
- D 0 - I - 0x015DB9 05:9DA9: 60        .byte $60   ; 
loc_16_9DAA:
- D 0 - I - 0x015DBA 05:9DAA: 04        .byte con_04, $00   ; 
off_0E_9DAC:
- D 0 - I - 0x015DBC 05:9DAC: 04        .byte con_04, $00   ; 

- D 0 - I - 0x015DBE 05:9DAE: 99        .byte $99   ; 
- D 0 - I - 0x015DBF 05:9DAF: 74        .byte $74   ; 
- D 0 - I - 0x015DC0 05:9DB0: 96        .byte $96   ; 
- D 0 - I - 0x015DC1 05:9DB1: 94        .byte $94   ; 
- D 0 - I - 0x015DC2 05:9DB2: 99        .byte $99   ; 
- D 0 - I - 0x015DC3 05:9DB3: 94        .byte $94   ; 
- D 0 - I - 0x015DC4 05:9DB4: 76        .byte $76   ; 
- D 0 - I - 0x015DC5 05:9DB5: 96        .byte $96   ; 
- D 0 - I - 0x015DC6 05:9DB6: 94        .byte $94   ; 

- D 0 - I - 0x015DC7 05:9DB7: 0E        .byte con_0E, $07   ; 
- D 0 - I - 0x015DC9 05:9DB9: 9D AC     .dbyt off_0E_9DAC

- D 0 - I - 0x015DCB 05:9DBB: 9E        .byte $9E   ; 
- D 0 - I - 0x015DCC 05:9DBC: 7E        .byte $7E   ; 
- D 0 - I - 0x015DCD 05:9DBD: 9B        .byte $9B   ; 
- D 0 - I - 0x015DCE 05:9DBE: 9B        .byte $9B   ; 
- D 0 - I - 0x015DCF 05:9DBF: 98        .byte $98   ; 
- D 0 - I - 0x015DD0 05:9DC0: 98        .byte $98   ; 
- D 0 - I - 0x015DD1 05:9DC1: 74        .byte $74   ; 
- D 0 - I - 0x015DD2 05:9DC2: 94        .byte $94   ; 
- D 0 - I - 0x015DD3 05:9DC3: 94        .byte $94   ; 
- D 0 - I - 0x015DD4 05:9DC4: 9D        .byte $9D   ; 
- D 0 - I - 0x015DD5 05:9DC5: 7D        .byte $7D   ; 
- D 0 - I - 0x015DD6 05:9DC6: 99        .byte $99   ; 
- D 0 - I - 0x015DD7 05:9DC7: 99        .byte $99   ; 
- D 0 - I - 0x015DD8 05:9DC8: 94        .byte $94   ; 
- D 0 - I - 0x015DD9 05:9DC9: 94        .byte $94   ; 
- D 0 - I - 0x015DDA 05:9DCA: 71        .byte $71   ; 
- D 0 - I - 0x015DDB 05:9DCB: 91        .byte $91   ; 
- D 0 - I - 0x015DDC 05:9DCC: 8D        .byte $8D   ; 
- D 0 - I - 0x015DDD 05:9DCD: 9E        .byte $9E   ; 
- D 0 - I - 0x015DDE 05:9DCE: 7E        .byte $7E   ; 
- D 0 - I - 0x015DDF 05:9DCF: 9B        .byte $9B   ; 
- D 0 - I - 0x015DE0 05:9DD0: 9B        .byte $9B   ; 
- D 0 - I - 0x015DE1 05:9DD1: 98        .byte $98   ; 
- D 0 - I - 0x015DE2 05:9DD2: 98        .byte $98   ; 
- D 0 - I - 0x015DE3 05:9DD3: 74        .byte $74   ; 
- D 0 - I - 0x015DE4 05:9DD4: 94        .byte $94   ; 
- D 0 - I - 0x015DE5 05:9DD5: 94        .byte $94   ; 
- D 0 - I - 0x015DE6 05:9DD6: 99        .byte $99   ; 

- D 0 - I - 0x015DE7 05:9DD7: 03        .byte con_03   ; 

- D 0 - I - 0x015DE8 05:9DD8: 68        .byte $68   ; 
- D 0 - I - 0x015DE9 05:9DD9: 8D        .byte $8D   ; 
- D 0 - I - 0x015DEA 05:9DDA: 8C        .byte $8C   ; 
- D 0 - I - 0x015DEB 05:9DDB: 8B        .byte $8B   ; 
- D 0 - I - 0x015DEC 05:9DDC: 88        .byte $88   ; 
- D 0 - I - 0x015DED 05:9DDD: 65        .byte $65   ; 
- D 0 - I - 0x015DEE 05:9DDE: 81        .byte $81   ; 

- D 0 - I - 0x015DEF 05:9DDF: 03        .byte con_03   ; 

- D 0 - I - 0x015DF0 05:9DE0: 94        .byte $94   ; 
- D 0 - I - 0x015DF1 05:9DE1: 99        .byte $99   ; 
- D 0 - I - 0x015DF2 05:9DE2: 79        .byte $79   ; 
- D 0 - I - 0x015DF3 05:9DE3: 98        .byte $98   ; 
- D 0 - I - 0x015DF4 05:9DE4: 99        .byte $99   ; 
- D 0 - I - 0x015DF5 05:9DE5: 94        .byte $94   ; 
- D 0 - I - 0x015DF6 05:9DE6: 99        .byte $99   ; 
- D 0 - I - 0x015DF7 05:9DE7: 78        .byte $78   ; 
- D 0 - I - 0x015DF8 05:9DE8: 99        .byte $99   ; 
- D 0 - I - 0x015DF9 05:9DE9: 94        .byte $94   ; 
- D 0 - I - 0x015DFA 05:9DEA: 99        .byte $99   ; 
- D 0 - I - 0x015DFB 05:9DEB: 79        .byte $79   ; 
- D 0 - I - 0x015DFC 05:9DEC: 98        .byte $98   ; 
- D 0 - I - 0x015DFD 05:9DED: 99        .byte $99   ; 
- D 0 - I - 0x015DFE 05:9DEE: 93        .byte $93   ; 
- D 0 - I - 0x015DFF 05:9DEF: 93        .byte $93   ; 
- D 0 - I - 0x015E00 05:9DF0: 76        .byte $76   ; 
- D 0 - I - 0x015E01 05:9DF1: 98        .byte $98   ; 
- D 0 - I - 0x015E02 05:9DF2: 99        .byte $99   ; 

- D 0 - I - 0x015E03 05:9DF3: 03        .byte con_03   ; 

- D 0 - I - 0x015E04 05:9DF4: 8D        .byte $8D   ; 
- D 0 - I - 0x015E05 05:9DF5: 6D        .byte $6D   ; 
- D 0 - I - 0x015E06 05:9DF6: 8A        .byte $8A   ; 
- D 0 - I - 0x015E07 05:9DF7: 8A        .byte $8A   ; 
- D 0 - I - 0x015E08 05:9DF8: 87        .byte $87   ; 
- D 0 - I - 0x015E09 05:9DF9: 87        .byte $87   ; 
- D 0 - I - 0x015E0A 05:9DFA: 63        .byte $63   ; 
- D 0 - I - 0x015E0B 05:9DFB: 83        .byte $83   ; 
- D 0 - I - 0x015E0C 05:9DFC: 81        .byte $81   ; 
- D 0 - I - 0x015E0D 05:9DFD: 86        .byte $86   ; 
- D 0 - I - 0x015E0E 05:9DFE: 66        .byte $66   ; 
- D 0 - I - 0x015E0F 05:9DFF: 85        .byte $85   ; 

- D 0 - I - 0x015E10 05:9E00: 03        .byte con_03   ; 

- D 0 - I - 0x015E11 05:9E01: 96        .byte $96   ; 
- D 0 - I - 0x015E12 05:9E02: 9B        .byte $9B   ; 
- D 0 - I - 0x015E13 05:9E03: 9D        .byte $9D   ; 
- D 0 - I - 0x015E14 05:9E04: 7B        .byte $7B   ; 
- D 0 - I - 0x015E15 05:9E05: 99        .byte $99   ; 
- D 0 - I - 0x015E16 05:9E06: 98        .byte $98   ; 

- D 0 - I - 0x015E17 05:9E07: 16        .byte con_jump   ; 
- D 0 - I - 0x015E18 05:9E08: 9D AA     .dbyt loc_16_9DAA


; bzk garbage
- - - - - - 0x015E1A 05:9E0A: 17        .byte con_stop   ; 



_off019_05_9E0B_02:
- D 0 - I - 0x015E1B 05:9E0B: 06        .byte con_06, $C8   ; 
- D 0 - I - 0x015E1D 05:9E0D: 08        .byte con_08, $01   ; 
- D 0 - I - 0x015E1F 05:9E0F: 09        .byte con_09, $02   ; 

- D 0 - I - 0x015E21 05:9E11: 6D        .byte $6D   ; 
- D 0 - I - 0x015E22 05:9E12: 6D        .byte $6D   ; 
- D 0 - I - 0x015E23 05:9E13: 71        .byte $71   ; 
- D 0 - I - 0x015E24 05:9E14: 71        .byte $71   ; 
- D 0 - I - 0x015E25 05:9E15: 74        .byte $74   ; 
- D 0 - I - 0x015E26 05:9E16: 74        .byte $74   ; 
- D 0 - I - 0x015E27 05:9E17: 71        .byte $71   ; 
- D 0 - I - 0x015E28 05:9E18: 71        .byte $71   ; 
- D 0 - I - 0x015E29 05:9E19: 74        .byte $74   ; 
- D 0 - I - 0x015E2A 05:9E1A: 74        .byte $74   ; 
- D 0 - I - 0x015E2B 05:9E1B: 78        .byte $78   ; 
- D 0 - I - 0x015E2C 05:9E1C: 78        .byte $78   ; 
- D 0 - I - 0x015E2D 05:9E1D: 7B        .byte $7B   ; 
- D 0 - I - 0x015E2E 05:9E1E: 7B        .byte $7B   ; 
- D 0 - I - 0x015E2F 05:9E1F: 78        .byte $78   ; 
- D 0 - I - 0x015E30 05:9E20: 78        .byte $78   ; 
- D 0 - I - 0x015E31 05:9E21: B9        .byte $B9   ; 
- D 0 - I - 0x015E32 05:9E22: 78        .byte $78   ; 
- D 0 - I - 0x015E33 05:9E23: 79        .byte $79   ; 
- D 0 - I - 0x015E34 05:9E24: 7B        .byte $7B   ; 
- D 0 - I - 0x015E35 05:9E25: 99        .byte $99   ; 
- D 0 - I - 0x015E36 05:9E26: 99        .byte $99   ; 
- D 0 - I - 0x015E37 05:9E27: 74        .byte $74   ; 
- D 0 - I - 0x015E38 05:9E28: 96        .byte $96   ; 
- D 0 - I - 0x015E39 05:9E29: 98        .byte $98   ; 
loc_16_9E2A:
- D 0 - I - 0x015E3A 05:9E2A: 04        .byte con_04, $00   ; 
off_0E_9E2C:
- D 0 - I - 0x015E3C 05:9E2C: 04        .byte con_04, $00   ; 
- D 0 - I - 0x015E3E 05:9E2E: 02        .byte con_02   ; 

- D 0 - I - 0x015E3F 05:9E2F: 8D        .byte $8D   ; 
- D 0 - I - 0x015E40 05:9E30: 74        .byte $74   ; 

- D 0 - I - 0x015E41 05:9E31: 02        .byte con_02   ; 

- D 0 - I - 0x015E42 05:9E32: 96        .byte $96   ; 
- D 0 - I - 0x015E43 05:9E33: 99        .byte $99   ; 
- D 0 - I - 0x015E44 05:9E34: 99        .byte $99   ; 
- D 0 - I - 0x015E45 05:9E35: 74        .byte $74   ; 
- D 0 - I - 0x015E46 05:9E36: B6        .byte $B6   ; 

- D 0 - I - 0x015E47 05:9E37: 02        .byte con_02   ; 

- D 0 - I - 0x015E48 05:9E38: 8B        .byte $8B   ; 
- D 0 - I - 0x015E49 05:9E39: 72        .byte $72   ; 

- D 0 - I - 0x015E4A 05:9E3A: 02        .byte con_02   ; 

- D 0 - I - 0x015E4B 05:9E3B: 94        .byte $94   ; 
- D 0 - I - 0x015E4C 05:9E3C: 97        .byte $97   ; 
- D 0 - I - 0x015E4D 05:9E3D: 97        .byte $97   ; 
- D 0 - I - 0x015E4E 05:9E3E: 72        .byte $72   ; 
- D 0 - I - 0x015E4F 05:9E3F: B4        .byte $B4   ; 

- D 0 - I - 0x015E50 05:9E40: 02        .byte con_02   ; 

- D 0 - I - 0x015E51 05:9E41: 8A        .byte $8A   ; 
- D 0 - I - 0x015E52 05:9E42: 6F        .byte $6F   ; 

- D 0 - I - 0x015E53 05:9E43: 02        .byte con_02   ; 

- D 0 - I - 0x015E54 05:9E44: 91        .byte $91   ; 
- D 0 - I - 0x015E55 05:9E45: 96        .byte $96   ; 
- D 0 - I - 0x015E56 05:9E46: 96        .byte $96   ; 
- D 0 - I - 0x015E57 05:9E47: 6F        .byte $6F   ; 
- D 0 - I - 0x015E58 05:9E48: B1        .byte $B1   ; 

- D 0 - I - 0x015E59 05:9E49: 02        .byte con_02   ; 

- D 0 - I - 0x015E5A 05:9E4A: 89        .byte $89   ; 
- D 0 - I - 0x015E5B 05:9E4B: 6E        .byte $6E   ; 

- D 0 - I - 0x015E5C 05:9E4C: 02        .byte con_02   ; 

- D 0 - I - 0x015E5D 05:9E4D: 90        .byte $90   ; 
- D 0 - I - 0x015E5E 05:9E4E: 95        .byte $95   ; 
- D 0 - I - 0x015E5F 05:9E4F: 95        .byte $95   ; 
- D 0 - I - 0x015E60 05:9E50: 6E        .byte $6E   ; 
- D 0 - I - 0x015E61 05:9E51: B0        .byte $B0   ; 

- D 0 - I - 0x015E62 05:9E52: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x015E64 05:9E54: 9E 2C     .dbyt off_0E_9E2C

- D 0 - I - 0x015E66 05:9E56: 02        .byte con_02   ; 

- D 0 - I - 0x015E67 05:9E57: 92        .byte $92   ; 

- D 0 - I - 0x015E68 05:9E58: 02        .byte con_02   ; 

- D 0 - I - 0x015E69 05:9E59: 99        .byte $99   ; 
- D 0 - I - 0x015E6A 05:9E5A: 92        .byte $92   ; 

- D 0 - I - 0x015E6B 05:9E5B: 02        .byte con_02   ; 

- D 0 - I - 0x015E6C 05:9E5C: 94        .byte $94   ; 

- D 0 - I - 0x015E6D 05:9E5D: 02        .byte con_02   ; 

- D 0 - I - 0x015E6E 05:9E5E: 9B        .byte $9B   ; 
- D 0 - I - 0x015E6F 05:9E5F: 94        .byte $94   ; 

- D 0 - I - 0x015E70 05:9E60: 02        .byte con_02   ; 

- D 0 - I - 0x015E71 05:9E61: 8D        .byte $8D   ; 
- D 0 - I - 0x015E72 05:9E62: 79        .byte $79   ; 
- D 0 - I - 0x015E73 05:9E63: 99        .byte $99   ; 
- D 0 - I - 0x015E74 05:9E64: 6D        .byte $6D   ; 
- D 0 - I - 0x015E75 05:9E65: 8D        .byte $8D   ; 
- D 0 - I - 0x015E76 05:9E66: 8D        .byte $8D   ; 
- D 0 - I - 0x015E77 05:9E67: 79        .byte $79   ; 
- D 0 - I - 0x015E78 05:9E68: 99        .byte $99   ; 
- D 0 - I - 0x015E79 05:9E69: 8D        .byte $8D   ; 

- D 0 - I - 0x015E7A 05:9E6A: 02        .byte con_02   ; 

- D 0 - I - 0x015E7B 05:9E6B: 92        .byte $92   ; 

- D 0 - I - 0x015E7C 05:9E6C: 02        .byte con_02   ; 

- D 0 - I - 0x015E7D 05:9E6D: 99        .byte $99   ; 
- D 0 - I - 0x015E7E 05:9E6E: 92        .byte $92   ; 

- D 0 - I - 0x015E7F 05:9E6F: 02        .byte con_02   ; 

- D 0 - I - 0x015E80 05:9E70: 94        .byte $94   ; 

- D 0 - I - 0x015E81 05:9E71: 02        .byte con_02   ; 

- D 0 - I - 0x015E82 05:9E72: 9B        .byte $9B   ; 
- D 0 - I - 0x015E83 05:9E73: 94        .byte $94   ; 

- D 0 - I - 0x015E84 05:9E74: 02        .byte con_02   ; 

- D 0 - I - 0x015E85 05:9E75: 8D        .byte $8D   ; 
- D 0 - I - 0x015E86 05:9E76: 79        .byte $79   ; 
- D 0 - I - 0x015E87 05:9E77: 99        .byte $99   ; 
- D 0 - I - 0x015E88 05:9E78: 6D        .byte $6D   ; 
- D 0 - I - 0x015E89 05:9E79: 8B        .byte $8B   ; 
- D 0 - I - 0x015E8A 05:9E7A: 8B        .byte $8B   ; 
- D 0 - I - 0x015E8B 05:9E7B: 77        .byte $77   ; 
- D 0 - I - 0x015E8C 05:9E7C: 97        .byte $97   ; 
- D 0 - I - 0x015E8D 05:9E7D: 8B        .byte $8B   ; 

- D 0 - I - 0x015E8E 05:9E7E: 02        .byte con_02   ; 

- D 0 - I - 0x015E8F 05:9E7F: 92        .byte $92   ; 
- D 0 - I - 0x015E90 05:9E80: 79        .byte $79   ; 

- D 0 - I - 0x015E91 05:9E81: 02        .byte con_02   ; 

- D 0 - I - 0x015E92 05:9E82: 99        .byte $99   ; 
- D 0 - I - 0x015E93 05:9E83: 72        .byte $72   ; 

- D 0 - I - 0x015E94 05:9E84: 02        .byte con_02   ; 

- D 0 - I - 0x015E95 05:9E85: 94        .byte $94   ; 
- D 0 - I - 0x015E96 05:9E86: 7B        .byte $7B   ; 
- D 0 - I - 0x015E97 05:9E87: 9B        .byte $9B   ; 
- D 0 - I - 0x015E98 05:9E88: 94        .byte $94   ; 

- D 0 - I - 0x015E99 05:9E89: 02        .byte con_02   ; 

- D 0 - I - 0x015E9A 05:9E8A: 8D        .byte $8D   ; 
- D 0 - I - 0x015E9B 05:9E8B: 79        .byte $79   ; 

- D 0 - I - 0x015E9C 05:9E8C: 02        .byte con_02   ; 

- D 0 - I - 0x015E9D 05:9E8D: 99        .byte $99   ; 
- D 0 - I - 0x015E9E 05:9E8E: 70        .byte $70   ; 

- D 0 - I - 0x015E9F 05:9E8F: 02        .byte con_02   ; 

- D 0 - I - 0x015EA0 05:9E90: 90        .byte $90   ; 
- D 0 - I - 0x015EA1 05:9E91: 7C        .byte $7C   ; 
- D 0 - I - 0x015EA2 05:9E92: 9C        .byte $9C   ; 
- D 0 - I - 0x015EA3 05:9E93: 90        .byte $90   ; 

- D 0 - I - 0x015EA4 05:9E94: 02        .byte con_02   ; 

- D 0 - I - 0x015EA5 05:9E95: 92        .byte $92   ; 
- D 0 - I - 0x015EA6 05:9E96: 79        .byte $79   ; 
- D 0 - I - 0x015EA7 05:9E97: 99        .byte $99   ; 
- D 0 - I - 0x015EA8 05:9E98: 72        .byte $72   ; 
- D 0 - I - 0x015EA9 05:9E99: 93        .byte $93   ; 
- D 0 - I - 0x015EAA 05:9E9A: 93        .byte $93   ; 
- D 0 - I - 0x015EAB 05:9E9B: 7A        .byte $7A   ; 
- D 0 - I - 0x015EAC 05:9E9C: 9A        .byte $9A   ; 
- D 0 - I - 0x015EAD 05:9E9D: 93        .byte $93   ; 

- D 0 - I - 0x015EAE 05:9E9E: 02        .byte con_02   ; 

- D 0 - I - 0x015EAF 05:9E9F: 94        .byte $94   ; 
- D 0 - I - 0x015EB0 05:9EA0: 72        .byte $72   ; 
- D 0 - I - 0x015EB1 05:9EA1: 92        .byte $92   ; 
- D 0 - I - 0x015EB2 05:9EA2: 6F        .byte $6F   ; 
- D 0 - I - 0x015EB3 05:9EA3: 94        .byte $94   ; 
- D 0 - I - 0x015EB4 05:9EA4: 94        .byte $94   ; 
- D 0 - I - 0x015EB5 05:9EA5: 78        .byte $78   ; 
- D 0 - I - 0x015EB6 05:9EA6: 98        .byte $98   ; 
- D 0 - I - 0x015EB7 05:9EA7: 94        .byte $94   ; 

- D 0 - I - 0x015EB8 05:9EA8: 16        .byte con_jump   ; 
- D 0 - I - 0x015EB9 05:9EA9: 9E 2A     .dbyt loc_16_9E2A


; bzk garbage
- - - - - - 0x015EBB 05:9EAB: 17        .byte con_stop   ; 



_off019_05_9EAC_03_disable:
- D 0 - I - 0x015EBC 05:9EAC: 17        .byte con_stop   ; 



_music_9EAD_06_stage_04:
- D 0 - I - 0x015EBD 05:9EAD: 00        .byte $00   ; 
- D 0 - I - 0x015EBE 05:9EAE: 9E B6     .dbyt _off019_06_9EB6_00
- D 0 - I - 0x015EC0 05:9EB0: 9F BB     .dbyt _off019_06_9FBB_01
- D 0 - I - 0x015EC2 05:9EB2: A0 92     .dbyt _off019_06_A092_02
- D 0 - I - 0x015EC4 05:9EB4: A1 23     .dbyt _off019_06_A123_03_disable



_off019_06_9EB6_00:
- D 0 - I - 0x015EC6 05:9EB6: 05        .byte con_05, $01, $B6   ; 
- D 0 - I - 0x015EC9 05:9EB9: 0A        .byte con_0A, $03   ; 
- D 0 - I - 0x015ECB 05:9EBB: 08        .byte con_08, $05   ; 
- D 0 - I - 0x015ECD 05:9EBD: 07        .byte con_07, $08   ; 
- D 0 - I - 0x015ECF 05:9EBF: 09        .byte con_09, $02   ; 
- D 0 - I - 0x015ED1 05:9EC1: 06        .byte con_06, $64   ; 
- D 0 - I - 0x015ED3 05:9EC3: 18        .byte con_18, $40   ; 
- D 0 - I - 0x015ED5 05:9EC5: 03        .byte con_03   ; 

- D 0 - I - 0x015ED6 05:9EC6: 8D        .byte $8D   ; 
- D 0 - I - 0x015ED7 05:9EC7: 68        .byte $68   ; 
- D 0 - I - 0x015ED8 05:9EC8: 8A        .byte $8A   ; 
- D 0 - I - 0x015ED9 05:9EC9: 88        .byte $88   ; 
- D 0 - I - 0x015EDA 05:9ECA: 8D        .byte $8D   ; 
- D 0 - I - 0x015EDB 05:9ECB: 88        .byte $88   ; 
- D 0 - I - 0x015EDC 05:9ECC: 6A        .byte $6A   ; 
- D 0 - I - 0x015EDD 05:9ECD: 8A        .byte $8A   ; 
- D 0 - I - 0x015EDE 05:9ECE: 88        .byte $88   ; 
- D 0 - I - 0x015EDF 05:9ECF: 8D        .byte $8D   ; 
- D 0 - I - 0x015EE0 05:9ED0: 68        .byte $68   ; 
- D 0 - I - 0x015EE1 05:9ED1: 8C        .byte $8C   ; 
- D 0 - I - 0x015EE2 05:9ED2: 88        .byte $88   ; 
- D 0 - I - 0x015EE3 05:9ED3: 8D        .byte $8D   ; 
- D 0 - I - 0x015EE4 05:9ED4: 88        .byte $88   ; 
- D 0 - I - 0x015EE5 05:9ED5: 6C        .byte $6C   ; 
- D 0 - I - 0x015EE6 05:9ED6: 8D        .byte $8D   ; 

- D 0 - I - 0x015EE7 05:9ED7: 02        .byte con_02   ; 

- D 0 - I - 0x015EE8 05:9ED8: 80        .byte $80   ; 
loc_16_9ED9:
- D 0 - I - 0x015EE9 05:9ED9: 04        .byte con_04, $08   ; 
- D 0 - I - 0x015EEB 05:9EDB: 09        .byte con_09, $02   ; 
- D 0 - I - 0x015EED 05:9EDD: 18        .byte con_18, $80   ; 
off_0E_9EDF:
- D 0 - I - 0x015EEF 05:9EDF: 04        .byte con_04, $08   ; 

- D 0 - I - 0x015EF1 05:9EE1: 68        .byte $68   ; 
- D 0 - I - 0x015EF2 05:9EE2: 67        .byte $67   ; 
- D 0 - I - 0x015EF3 05:9EE3: 68        .byte $68   ; 
- D 0 - I - 0x015EF4 05:9EE4: 6A        .byte $6A   ; 
- D 0 - I - 0x015EF5 05:9EE5: 68        .byte $68   ; 
- D 0 - I - 0x015EF6 05:9EE6: 80        .byte $80   ; 
- D 0 - I - 0x015EF7 05:9EE7: 88        .byte $88   ; 
- D 0 - I - 0x015EF8 05:9EE8: 67        .byte $67   ; 
- D 0 - I - 0x015EF9 05:9EE9: 68        .byte $68   ; 
- D 0 - I - 0x015EFA 05:9EEA: 6A        .byte $6A   ; 
- D 0 - I - 0x015EFB 05:9EEB: 68        .byte $68   ; 

- D 0 - I - 0x015EFC 05:9EEC: 02        .byte con_02   ; 

- D 0 - I - 0x015EFD 05:9EED: 80        .byte $80   ; 

- D 0 - I - 0x015EFE 05:9EEE: 12        .byte con_12, $08   ; 
- D 0 - I - 0x015F00 05:9EF0: 9F 06     .dbyt off_12_9F06

- D 0 - I - 0x015F02 05:9EF2: 68        .byte $68   ; 
- D 0 - I - 0x015F03 05:9EF3: 67        .byte $67   ; 
- D 0 - I - 0x015F04 05:9EF4: 68        .byte $68   ; 
- D 0 - I - 0x015F05 05:9EF5: 6A        .byte $6A   ; 
- D 0 - I - 0x015F06 05:9EF6: 67        .byte $67   ; 
- D 0 - I - 0x015F07 05:9EF7: 68        .byte $68   ; 
- D 0 - I - 0x015F08 05:9EF8: 6A        .byte $6A   ; 
- D 0 - I - 0x015F09 05:9EF9: 72        .byte $72   ; 
- D 0 - I - 0x015F0A 05:9EFA: 60        .byte $60   ; 
- D 0 - I - 0x015F0B 05:9EFB: 72        .byte $72   ; 
- D 0 - I - 0x015F0C 05:9EFC: 60        .byte $60   ; 
- D 0 - I - 0x015F0D 05:9EFD: 72        .byte $72   ; 
- D 0 - I - 0x015F0E 05:9EFE: 72        .byte $72   ; 
- D 0 - I - 0x015F0F 05:9EFF: 71        .byte $71   ; 
- D 0 - I - 0x015F10 05:9F00: 6F        .byte $6F   ; 
- D 0 - I - 0x015F11 05:9F01: 6D        .byte $6D   ; 

- D 0 - I - 0x015F12 05:9F02: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x015F14 05:9F04: 9E DF     .dbyt off_0E_9EDF
off_12_9F06:
- D 0 - I - 0x015F16 05:9F06: 68        .byte $68   ; 
- D 0 - I - 0x015F17 05:9F07: 67        .byte $67   ; 
- D 0 - I - 0x015F18 05:9F08: 68        .byte $68   ; 
- D 0 - I - 0x015F19 05:9F09: 6A        .byte $6A   ; 
- D 0 - I - 0x015F1A 05:9F0A: 67        .byte $67   ; 
- D 0 - I - 0x015F1B 05:9F0B: 68        .byte $68   ; 
- D 0 - I - 0x015F1C 05:9F0C: 6A        .byte $6A   ; 
- D 0 - I - 0x015F1D 05:9F0D: 68        .byte $68   ; 
- D 0 - I - 0x015F1E 05:9F0E: 60        .byte $60   ; 
- D 0 - I - 0x015F1F 05:9F0F: 6C        .byte $6C   ; 
- D 0 - I - 0x015F20 05:9F10: 60        .byte $60   ; 

- D 0 - I - 0x015F21 05:9F11: 01        .byte con_01   ; 

- D 0 - I - 0x015F22 05:9F12: 74        .byte $74   ; 

- D 0 - I - 0x015F23 05:9F13: 01        .byte con_01   ; 

- D 0 - I - 0x015F24 05:9F14: B4        .byte $B4   ; 
off_0E_9F15:
- D 0 - I - 0x015F25 05:9F15: 04        .byte con_04, $08   ; 

- D 0 - I - 0x015F27 05:9F17: 68        .byte $68   ; 
- D 0 - I - 0x015F28 05:9F18: 67        .byte $67   ; 
- D 0 - I - 0x015F29 05:9F19: 68        .byte $68   ; 
- D 0 - I - 0x015F2A 05:9F1A: 6A        .byte $6A   ; 
- D 0 - I - 0x015F2B 05:9F1B: 68        .byte $68   ; 
- D 0 - I - 0x015F2C 05:9F1C: 80        .byte $80   ; 
- D 0 - I - 0x015F2D 05:9F1D: 88        .byte $88   ; 
- D 0 - I - 0x015F2E 05:9F1E: 67        .byte $67   ; 
- D 0 - I - 0x015F2F 05:9F1F: 68        .byte $68   ; 
- D 0 - I - 0x015F30 05:9F20: 6A        .byte $6A   ; 
- D 0 - I - 0x015F31 05:9F21: 68        .byte $68   ; 

- D 0 - I - 0x015F32 05:9F22: 02        .byte con_02   ; 

- D 0 - I - 0x015F33 05:9F23: 80        .byte $80   ; 

- D 0 - I - 0x015F34 05:9F24: 12        .byte con_12, $08   ; 
- D 0 - I - 0x015F36 05:9F26: 9F 3C     .dbyt off_12_9F3C

- D 0 - I - 0x015F38 05:9F28: 68        .byte $68   ; 
- D 0 - I - 0x015F39 05:9F29: 67        .byte $67   ; 
- D 0 - I - 0x015F3A 05:9F2A: 68        .byte $68   ; 
- D 0 - I - 0x015F3B 05:9F2B: 6A        .byte $6A   ; 
- D 0 - I - 0x015F3C 05:9F2C: 67        .byte $67   ; 
- D 0 - I - 0x015F3D 05:9F2D: 68        .byte $68   ; 
- D 0 - I - 0x015F3E 05:9F2E: 6A        .byte $6A   ; 
- D 0 - I - 0x015F3F 05:9F2F: 72        .byte $72   ; 
- D 0 - I - 0x015F40 05:9F30: 60        .byte $60   ; 
- D 0 - I - 0x015F41 05:9F31: 72        .byte $72   ; 
- D 0 - I - 0x015F42 05:9F32: 60        .byte $60   ; 
- D 0 - I - 0x015F43 05:9F33: 72        .byte $72   ; 
- D 0 - I - 0x015F44 05:9F34: 72        .byte $72   ; 
- D 0 - I - 0x015F45 05:9F35: 71        .byte $71   ; 
- D 0 - I - 0x015F46 05:9F36: 6F        .byte $6F   ; 
- D 0 - I - 0x015F47 05:9F37: 6D        .byte $6D   ; 

- D 0 - I - 0x015F48 05:9F38: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x015F4A 05:9F3A: 9F 15     .dbyt off_0E_9F15
off_12_9F3C:
- D 0 - I - 0x015F4C 05:9F3C: 88        .byte $88   ; 
- D 0 - I - 0x015F4D 05:9F3D: 6D        .byte $6D   ; 
- D 0 - I - 0x015F4E 05:9F3E: 86        .byte $86   ; 
- D 0 - I - 0x015F4F 05:9F3F: 8C        .byte $8C   ; 
- D 0 - I - 0x015F50 05:9F40: 6F        .byte $6F   ; 
- D 0 - I - 0x015F51 05:9F41: 60        .byte $60   ; 
- D 0 - I - 0x015F52 05:9F42: 6F        .byte $6F   ; 
- D 0 - I - 0x015F53 05:9F43: 60        .byte $60   ; 
- D 0 - I - 0x015F54 05:9F44: 6D        .byte $6D   ; 
- D 0 - I - 0x015F55 05:9F45: 6D        .byte $6D   ; 

- D 0 - I - 0x015F56 05:9F46: 02        .byte con_02   ; 

- D 0 - I - 0x015F57 05:9F47: 80        .byte $80   ; 
off_0E_9F48:
- D 0 - I - 0x015F58 05:9F48: 04        .byte con_04, $08   ; 
- D 0 - I - 0x015F5A 05:9F4A: 09        .byte con_09, $02   ; 
- D 0 - I - 0x015F5C 05:9F4C: 08        .byte con_08, $04   ; 
- D 0 - I - 0x015F5E 05:9F4E: 06        .byte con_06, $C8   ; 
- D 0 - I - 0x015F60 05:9F50: 18        .byte con_18, $40   ; 
- D 0 - I - 0x015F62 05:9F52: 02        .byte con_02   ; 

- D 0 - I - 0x015F63 05:9F53: 88        .byte $88   ; 

- D 0 - I - 0x015F64 05:9F54: 02        .byte con_02   ; 

- D 0 - I - 0x015F65 05:9F55: 86        .byte $86   ; 

- D 0 - I - 0x015F66 05:9F56: 02        .byte con_02   ; 

- D 0 - I - 0x015F67 05:9F57: 85        .byte $85   ; 

- D 0 - I - 0x015F68 05:9F58: 02        .byte con_02   ; 

- D 0 - I - 0x015F69 05:9F59: 83        .byte $83   ; 
- D 0 - I - 0x015F6A 05:9F5A: 61        .byte $61   ; 
- D 0 - I - 0x015F6B 05:9F5B: 60        .byte $60   ; 

- D 0 - I - 0x015F6C 05:9F5C: 03        .byte con_03   ; 

- D 0 - I - 0x015F6D 05:9F5D: 76        .byte $76   ; 
- D 0 - I - 0x015F6E 05:9F5E: 60        .byte $60   ; 

- D 0 - I - 0x015F6F 05:9F5F: 02        .byte con_02   ; 

- D 0 - I - 0x015F70 05:9F60: 9E        .byte $9E   ; 

- D 0 - I - 0x015F71 05:9F61: 02        .byte con_02   ; 

- D 0 - I - 0x015F72 05:9F62: 9D        .byte $9D   ; 

- D 0 - I - 0x015F73 05:9F63: 02        .byte con_02   ; 

- D 0 - I - 0x015F74 05:9F64: 9B        .byte $9B   ; 

- D 0 - I - 0x015F75 05:9F65: 02        .byte con_02   ; 

- D 0 - I - 0x015F76 05:9F66: 99        .byte $99   ; 
- D 0 - I - 0x015F77 05:9F67: 78        .byte $78   ; 
- D 0 - I - 0x015F78 05:9F68: 60        .byte $60   ; 
- D 0 - I - 0x015F79 05:9F69: 79        .byte $79   ; 
- D 0 - I - 0x015F7A 05:9F6A: 60        .byte $60   ; 

- D 0 - I - 0x015F7B 05:9F6B: 12        .byte con_12, $00   ; 
- D 0 - I - 0x015F7D 05:9F6D: 9F 95     .dbyt off_12_9F95

- D 0 - I - 0x015F7F 05:9F6F: 08        .byte con_08, $12   ; 
- D 0 - I - 0x015F81 05:9F71: 06        .byte con_06, $64   ; 

- D 0 - I - 0x015F83 05:9F73: 79        .byte $79   ; 
- D 0 - I - 0x015F84 05:9F74: 7D        .byte $7D   ; 

- D 0 - I - 0x015F85 05:9F75: 03        .byte con_03   ; 

- D 0 - I - 0x015F86 05:9F76: 68        .byte $68   ; 
- D 0 - I - 0x015F87 05:9F77: 6D        .byte $6D   ; 
- D 0 - I - 0x015F88 05:9F78: 60        .byte $60   ; 
- D 0 - I - 0x015F89 05:9F79: 6C        .byte $6C   ; 
- D 0 - I - 0x015F8A 05:9F7A: 60        .byte $60   ; 
- D 0 - I - 0x015F8B 05:9F7B: 6D        .byte $6D   ; 
- D 0 - I - 0x015F8C 05:9F7C: 60        .byte $60   ; 
- D 0 - I - 0x015F8D 05:9F7D: 6A        .byte $6A   ; 
- D 0 - I - 0x015F8E 05:9F7E: 60        .byte $60   ; 
- D 0 - I - 0x015F8F 05:9F7F: 6D        .byte $6D   ; 
- D 0 - I - 0x015F90 05:9F80: 68        .byte $68   ; 
- D 0 - I - 0x015F91 05:9F81: 60        .byte $60   ; 
- D 0 - I - 0x015F92 05:9F82: 6D        .byte $6D   ; 
- D 0 - I - 0x015F93 05:9F83: 60        .byte $60   ; 
- D 0 - I - 0x015F94 05:9F84: 66        .byte $66   ; 
- D 0 - I - 0x015F95 05:9F85: 60        .byte $60   ; 
- D 0 - I - 0x015F96 05:9F86: 6D        .byte $6D   ; 
- D 0 - I - 0x015F97 05:9F87: 65        .byte $65   ; 
- D 0 - I - 0x015F98 05:9F88: 60        .byte $60   ; 
- D 0 - I - 0x015F99 05:9F89: 6D        .byte $6D   ; 
- D 0 - I - 0x015F9A 05:9F8A: 60        .byte $60   ; 
- D 0 - I - 0x015F9B 05:9F8B: 63        .byte $63   ; 
- D 0 - I - 0x015F9C 05:9F8C: 60        .byte $60   ; 
- D 0 - I - 0x015F9D 05:9F8D: 6D        .byte $6D   ; 
- D 0 - I - 0x015F9E 05:9F8E: 60        .byte $60   ; 
- D 0 - I - 0x015F9F 05:9F8F: 61        .byte $61   ; 
- D 0 - I - 0x015FA0 05:9F90: A1        .byte $A1   ; 

- D 0 - I - 0x015FA1 05:9F91: 0E        .byte con_0E, $01   ; 
- D 0 - I - 0x015FA3 05:9F93: 9F 48     .dbyt off_0E_9F48
off_12_9F95:
- D 0 - I - 0x015FA5 05:9F95: 08        .byte con_08, $05   ; 

- D 0 - I - 0x015FA7 05:9F97: 74        .byte $74   ; 
- D 0 - I - 0x015FA8 05:9F98: 60        .byte $60   ; 
- D 0 - I - 0x015FA9 05:9F99: 7D        .byte $7D   ; 
- D 0 - I - 0x015FAA 05:9F9A: 79        .byte $79   ; 
- D 0 - I - 0x015FAB 05:9F9B: 60        .byte $60   ; 

- D 0 - I - 0x015FAC 05:9F9C: 03        .byte con_03   ; 

- D 0 - I - 0x015FAD 05:9F9D: 68        .byte $68   ; 
- D 0 - I - 0x015FAE 05:9F9E: 60        .byte $60   ; 
- D 0 - I - 0x015FAF 05:9F9F: 65        .byte $65   ; 
- D 0 - I - 0x015FB0 05:9FA0: 60        .byte $60   ; 
- D 0 - I - 0x015FB1 05:9FA1: 6D        .byte $6D   ; 
- D 0 - I - 0x015FB2 05:9FA2: 60        .byte $60   ; 
- D 0 - I - 0x015FB3 05:9FA3: 68        .byte $68   ; 
- D 0 - I - 0x015FB4 05:9FA4: 71        .byte $71   ; 
- D 0 - I - 0x015FB5 05:9FA5: 60        .byte $60   ; 
- D 0 - I - 0x015FB6 05:9FA6: 6D        .byte $6D   ; 
- D 0 - I - 0x015FB7 05:9FA7: 60        .byte $60   ; 
- D 0 - I - 0x015FB8 05:9FA8: 74        .byte $74   ; 
- D 0 - I - 0x015FB9 05:9FA9: 60        .byte $60   ; 
- D 0 - I - 0x015FBA 05:9FAA: 74        .byte $74   ; 
- D 0 - I - 0x015FBB 05:9FAB: 60        .byte $60   ; 
- D 0 - I - 0x015FBC 05:9FAC: 6C        .byte $6C   ; 
- D 0 - I - 0x015FBD 05:9FAD: 6C        .byte $6C   ; 
- D 0 - I - 0x015FBE 05:9FAE: 60        .byte $60   ; 
- D 0 - I - 0x015FBF 05:9FAF: 6D        .byte $6D   ; 
- D 0 - I - 0x015FC0 05:9FB0: 60        .byte $60   ; 
- D 0 - I - 0x015FC1 05:9FB1: 71        .byte $71   ; 
- D 0 - I - 0x015FC2 05:9FB2: 60        .byte $60   ; 
- D 0 - I - 0x015FC3 05:9FB3: 6F        .byte $6F   ; 
- D 0 - I - 0x015FC4 05:9FB4: 6D        .byte $6D   ; 

- D 0 - I - 0x015FC5 05:9FB5: 02        .byte con_02   ; 

- D 0 - I - 0x015FC6 05:9FB6: 80        .byte $80   ; 

- D 0 - I - 0x015FC7 05:9FB7: 16        .byte con_jump   ; 
- D 0 - I - 0x015FC8 05:9FB8: 9E D9     .dbyt loc_16_9ED9


; bzk garbage
- - - - - - 0x015FCA 05:9FBA: 17        .byte con_stop   ; 



_off019_06_9FBB_01:
- D 0 - I - 0x015FCB 05:9FBB: 08        .byte con_08, $05   ; 
- D 0 - I - 0x015FCD 05:9FBD: 06        .byte con_06, $64   ; 
- D 0 - I - 0x015FCF 05:9FBF: 07        .byte con_07, $08   ; 
- D 0 - I - 0x015FD1 05:9FC1: 09        .byte con_09, $01   ; 
- D 0 - I - 0x015FD3 05:9FC3: 18        .byte con_18, $40   ; 
- D 0 - I - 0x015FD5 05:9FC5: 0C        .byte con_0C, $02   ; 
- D 0 - I - 0x015FD7 05:9FC7: 03        .byte con_03   ; 

- D 0 - I - 0x015FD8 05:9FC8: 8D        .byte $8D   ; 
- D 0 - I - 0x015FD9 05:9FC9: 68        .byte $68   ; 
- D 0 - I - 0x015FDA 05:9FCA: 8A        .byte $8A   ; 
- D 0 - I - 0x015FDB 05:9FCB: 88        .byte $88   ; 
- D 0 - I - 0x015FDC 05:9FCC: 8D        .byte $8D   ; 
- D 0 - I - 0x015FDD 05:9FCD: 88        .byte $88   ; 
- D 0 - I - 0x015FDE 05:9FCE: 6A        .byte $6A   ; 
- D 0 - I - 0x015FDF 05:9FCF: 8A        .byte $8A   ; 
- D 0 - I - 0x015FE0 05:9FD0: 88        .byte $88   ; 

- D 0 - I - 0x015FE1 05:9FD1: 0C        .byte con_0C, $00   ; 
- D 0 - I - 0x015FE3 05:9FD3: 09        .byte con_09, $02   ; 

- D 0 - I - 0x015FE5 05:9FD5: 85        .byte $85   ; 
- D 0 - I - 0x015FE6 05:9FD6: 61        .byte $61   ; 
- D 0 - I - 0x015FE7 05:9FD7: 83        .byte $83   ; 
- D 0 - I - 0x015FE8 05:9FD8: 81        .byte $81   ; 
- D 0 - I - 0x015FE9 05:9FD9: 85        .byte $85   ; 
- D 0 - I - 0x015FEA 05:9FDA: 81        .byte $81   ; 
- D 0 - I - 0x015FEB 05:9FDB: 63        .byte $63   ; 

- D 0 - I - 0x015FEC 05:9FDC: 08        .byte con_08, $10   ; 
- D 0 - I - 0x015FEE 05:9FDE: 00        .byte con_00   ; 
- D 0 - I - 0x015FEF 05:9FDF: 03        .byte con_03   ; 

- D 0 - I - 0x015FF0 05:9FE0: 6D        .byte $6D   ; 
- D 0 - I - 0x015FF1 05:9FE1: 71        .byte $71   ; 
- D 0 - I - 0x015FF2 05:9FE2: 74        .byte $74   ; 
- D 0 - I - 0x015FF3 05:9FE3: 79        .byte $79   ; 
- D 0 - I - 0x015FF4 05:9FE4: 7D        .byte $7D   ; 

- D 0 - I - 0x015FF5 05:9FE5: 03        .byte con_03   ; 

- D 0 - I - 0x015FF6 05:9FE6: 68        .byte $68   ; 
- D 0 - I - 0x015FF7 05:9FE7: 4D        .byte $4D   ; 
- D 0 - I - 0x015FF8 05:9FE8: 51        .byte $51   ; 
- D 0 - I - 0x015FF9 05:9FE9: 54        .byte $54   ; 
loc_16_9FEA:
- D 0 - I - 0x015FFA 05:9FEA: 04        .byte con_04, $00   ; 
- D 0 - I - 0x015FFC 05:9FEC: 08        .byte con_08, $0C   ; 
- D 0 - I - 0x015FFE 05:9FEE: 18        .byte con_18, $40   ; 
off_0E_9FF0:
- D 0 - I - 0x016000 05:9FF0: 04        .byte con_04, $00   ; 

- D 0 - I - 0x016002 05:9FF2: 9D        .byte $9D   ; 
- D 0 - I - 0x016003 05:9FF3: 9D        .byte $9D   ; 
- D 0 - I - 0x016004 05:9FF4: 79        .byte $79   ; 
- D 0 - I - 0x016005 05:9FF5: 80        .byte $80   ; 
- D 0 - I - 0x016006 05:9FF6: 7D        .byte $7D   ; 
- D 0 - I - 0x016007 05:9FF7: 60        .byte $60   ; 
- D 0 - I - 0x016008 05:9FF8: 7D        .byte $7D   ; 
- D 0 - I - 0x016009 05:9FF9: 60        .byte $60   ; 
- D 0 - I - 0x01600A 05:9FFA: 7D        .byte $7D   ; 
- D 0 - I - 0x01600B 05:9FFB: 79        .byte $79   ; 

- D 0 - I - 0x01600C 05:9FFC: 02        .byte con_02   ; 

- D 0 - I - 0x01600D 05:9FFD: 80        .byte $80   ; 

- D 0 - I - 0x01600E 05:9FFE: 12        .byte con_12, $00   ; 
- D 1 - I - 0x016010 05:A000: A0 12     .dbyt off_12_A012

- D 1 - I - 0x016012 05:A002: 9D        .byte $9D   ; 
- D 1 - I - 0x016013 05:A003: 9D        .byte $9D   ; 
- D 1 - I - 0x016014 05:A004: 79        .byte $79   ; 
- D 1 - I - 0x016015 05:A005: 80        .byte $80   ; 
- D 1 - I - 0x016016 05:A006: 7B        .byte $7B   ; 
- D 1 - I - 0x016017 05:A007: 60        .byte $60   ; 
- D 1 - I - 0x016018 05:A008: 7B        .byte $7B   ; 
- D 1 - I - 0x016019 05:A009: 60        .byte $60   ; 
- D 1 - I - 0x01601A 05:A00A: 74        .byte $74   ; 
- D 1 - I - 0x01601B 05:A00B: 74        .byte $74   ; 

- D 1 - I - 0x01601C 05:A00C: 02        .byte con_02   ; 

- D 1 - I - 0x01601D 05:A00D: 80        .byte $80   ; 

- D 1 - I - 0x01601E 05:A00E: 0E        .byte con_0E, $03   ; 
- D 1 - I - 0x016020 05:A010: 9F F0     .dbyt off_0E_9FF0
off_12_A012:
- D 1 - I - 0x016022 05:A012: 9D        .byte $9D   ; 
- D 1 - I - 0x016023 05:A013: 7D        .byte $7D   ; 
- D 1 - I - 0x016024 05:A014: 98        .byte $98   ; 
- D 1 - I - 0x016025 05:A015: 98        .byte $98   ; 
- D 1 - I - 0x016026 05:A016: 7E        .byte $7E   ; 
- D 1 - I - 0x016027 05:A017: 60        .byte $60   ; 
- D 1 - I - 0x016028 05:A018: 7E        .byte $7E   ; 
- D 1 - I - 0x016029 05:A019: 60        .byte $60   ; 
- D 1 - I - 0x01602A 05:A01A: 7D        .byte $7D   ; 
- D 1 - I - 0x01602B 05:A01B: 7D        .byte $7D   ; 

- D 1 - I - 0x01602C 05:A01C: 02        .byte con_02   ; 

- D 1 - I - 0x01602D 05:A01D: 80        .byte $80   ; 
off_0E_A01E:
- D 1 - I - 0x01602E 05:A01E: 04        .byte con_04, $00   ; 
- D 1 - I - 0x016030 05:A020: 08        .byte con_08, $15   ; 
- D 1 - I - 0x016032 05:A022: 18        .byte con_18, $80   ; 
- D 1 - I - 0x016034 05:A024: 07        .byte con_07, $06   ; 
- D 1 - I - 0x016036 05:A026: 09        .byte con_09, $02   ; 

- D 1 - I - 0x016038 05:A028: 6D        .byte $6D   ; 
- D 1 - I - 0x016039 05:A029: 6F        .byte $6F   ; 
- D 1 - I - 0x01603A 05:A02A: 71        .byte $71   ; 
- D 1 - I - 0x01603B 05:A02B: 72        .byte $72   ; 
- D 1 - I - 0x01603C 05:A02C: 74        .byte $74   ; 
- D 1 - I - 0x01603D 05:A02D: 76        .byte $76   ; 
- D 1 - I - 0x01603E 05:A02E: 78        .byte $78   ; 
- D 1 - I - 0x01603F 05:A02F: 79        .byte $79   ; 
- D 1 - I - 0x016040 05:A030: 7B        .byte $7B   ; 
- D 1 - I - 0x016041 05:A031: 7D        .byte $7D   ; 
- D 1 - I - 0x016042 05:A032: 7E        .byte $7E   ; 

- D 1 - I - 0x016043 05:A033: 03        .byte con_03   ; 

- D 1 - I - 0x016044 05:A034: 68        .byte $68   ; 
- D 1 - I - 0x016045 05:A035: 6A        .byte $6A   ; 
- D 1 - I - 0x016046 05:A036: 6C        .byte $6C   ; 
- D 1 - I - 0x016047 05:A037: 6D        .byte $6D   ; 
- D 1 - I - 0x016048 05:A038: 6F        .byte $6F   ; 

- D 1 - I - 0x016049 05:A039: 03        .byte con_03   ; 

- D 1 - I - 0x01604A 05:A03A: 6F        .byte $6F   ; 
- D 1 - I - 0x01604B 05:A03B: 71        .byte $71   ; 
- D 1 - I - 0x01604C 05:A03C: 72        .byte $72   ; 
- D 1 - I - 0x01604D 05:A03D: 74        .byte $74   ; 
- D 1 - I - 0x01604E 05:A03E: 76        .byte $76   ; 
- D 1 - I - 0x01604F 05:A03F: 78        .byte $78   ; 
- D 1 - I - 0x016050 05:A040: 79        .byte $79   ; 
- D 1 - I - 0x016051 05:A041: 7B        .byte $7B   ; 
- D 1 - I - 0x016052 05:A042: 7D        .byte $7D   ; 
- D 1 - I - 0x016053 05:A043: 7E        .byte $7E   ; 

- D 1 - I - 0x016054 05:A044: 03        .byte con_03   ; 

- D 1 - I - 0x016055 05:A045: 68        .byte $68   ; 
- D 1 - I - 0x016056 05:A046: 6A        .byte $6A   ; 
- D 1 - I - 0x016057 05:A047: 6C        .byte $6C   ; 
- D 1 - I - 0x016058 05:A048: 6D        .byte $6D   ; 
- D 1 - I - 0x016059 05:A049: 6F        .byte $6F   ; 
- D 1 - I - 0x01605A 05:A04A: 74        .byte $74   ; 

- D 1 - I - 0x01605B 05:A04B: 08        .byte con_08, $12   ; 
- D 1 - I - 0x01605D 05:A04D: 07        .byte con_07, $08   ; 

- D 1 - I - 0x01605F 05:A04F: 12        .byte con_12, $08   ; 
- D 1 - I - 0x016061 05:A051: A0 6B     .dbyt off_12_A06B

- D 1 - I - 0x016063 05:A053: 09        .byte con_09, $01   ; 
- D 1 - I - 0x016065 05:A055: 65        .byte $65   ; 
- D 1 - I - 0x016066 05:A056: 68        .byte $68   ; 
- D 1 - I - 0x016067 05:A057: 6C        .byte $6C   ; 
- D 1 - I - 0x016068 05:A058: 91        .byte $91   ; 
- D 1 - I - 0x016069 05:A059: 8F        .byte $8F   ; 
- D 1 - I - 0x01606A 05:A05A: 91        .byte $91   ; 
- D 1 - I - 0x01606B 05:A05B: 8D        .byte $8D   ; 
- D 1 - I - 0x01606C 05:A05C: 71        .byte $71   ; 
- D 1 - I - 0x01606D 05:A05D: 8C        .byte $8C   ; 
- D 1 - I - 0x01606E 05:A05E: 91        .byte $91   ; 
- D 1 - I - 0x01606F 05:A05F: 8A        .byte $8A   ; 
- D 1 - I - 0x016070 05:A060: 71        .byte $71   ; 
- D 1 - I - 0x016071 05:A061: 88        .byte $88   ; 
- D 1 - I - 0x016072 05:A062: 91        .byte $91   ; 
- D 1 - I - 0x016073 05:A063: 86        .byte $86   ; 
- D 1 - I - 0x016074 05:A064: 91        .byte $91   ; 
- D 1 - I - 0x016075 05:A065: 65        .byte $65   ; 
- D 1 - I - 0x016076 05:A066: A5        .byte $A5   ; 

- D 1 - I - 0x016077 05:A067: 0E        .byte con_0E, $01   ; 
- D 1 - I - 0x016079 05:A069: A0 1E     .dbyt off_0E_A01E
off_12_A06B:
- D 1 - I - 0x01607B 05:A06B: 08        .byte con_08, $05   ; 
- D 1 - I - 0x01607D 05:A06D: 03        .byte con_03   ; 

- D 1 - I - 0x01607E 05:A06E: 6D        .byte $6D   ; 
- D 1 - I - 0x01607F 05:A06F: 60        .byte $60   ; 
- D 1 - I - 0x016080 05:A070: 74        .byte $74   ; 
- D 1 - I - 0x016081 05:A071: 71        .byte $71   ; 
- D 1 - I - 0x016082 05:A072: 60        .byte $60   ; 
- D 1 - I - 0x016083 05:A073: 79        .byte $79   ; 
- D 1 - I - 0x016084 05:A074: 60        .byte $60   ; 
- D 1 - I - 0x016085 05:A075: 74        .byte $74   ; 
- D 1 - I - 0x016086 05:A076: 60        .byte $60   ; 
- D 1 - I - 0x016087 05:A077: 7D        .byte $7D   ; 
- D 1 - I - 0x016088 05:A078: 60        .byte $60   ; 
- D 1 - I - 0x016089 05:A079: 79        .byte $79   ; 

- D 1 - I - 0x01608A 05:A07A: 03        .byte con_03   ; 

- D 1 - I - 0x01608B 05:A07B: 68        .byte $68   ; 
- D 1 - I - 0x01608C 05:A07C: 60        .byte $60   ; 
- D 1 - I - 0x01608D 05:A07D: 65        .byte $65   ; 
- D 1 - I - 0x01608E 05:A07E: 60        .byte $60   ; 
- D 1 - I - 0x01608F 05:A07F: 6D        .byte $6D   ; 
- D 1 - I - 0x016090 05:A080: 60        .byte $60   ; 
- D 1 - I - 0x016091 05:A081: 6D        .byte $6D   ; 
- D 1 - I - 0x016092 05:A082: 60        .byte $60   ; 
- D 1 - I - 0x016093 05:A083: 65        .byte $65   ; 
- D 1 - I - 0x016094 05:A084: 65        .byte $65   ; 
- D 1 - I - 0x016095 05:A085: 60        .byte $60   ; 
- D 1 - I - 0x016096 05:A086: 68        .byte $68   ; 
- D 1 - I - 0x016097 05:A087: 60        .byte $60   ; 
- D 1 - I - 0x016098 05:A088: 6D        .byte $6D   ; 
- D 1 - I - 0x016099 05:A089: 60        .byte $60   ; 
- D 1 - I - 0x01609A 05:A08A: 6A        .byte $6A   ; 
- D 1 - I - 0x01609B 05:A08B: 68        .byte $68   ; 

- D 1 - I - 0x01609C 05:A08C: 02        .byte con_02   ; 

- D 1 - I - 0x01609D 05:A08D: 80        .byte $80   ; 

- D 1 - I - 0x01609E 05:A08E: 16        .byte con_jump   ; 
- D 1 - I - 0x01609F 05:A08F: 9F EA     .dbyt loc_16_9FEA


; bzk garbage
- - - - - - 0x0160A1 05:A091: 17        .byte con_stop   ; 



_off019_06_A092_02:
- D 1 - I - 0x0160A2 05:A092: 06        .byte con_06, $C8   ; 
- D 1 - I - 0x0160A4 05:A094: 08        .byte con_08, $01   ; 
- D 1 - I - 0x0160A6 05:A096: 09        .byte con_09, $02   ; 

- D 1 - I - 0x0160A8 05:A098: 8D        .byte $8D   ; 
- D 1 - I - 0x0160A9 05:A099: 6D        .byte $6D   ; 
- D 1 - I - 0x0160AA 05:A09A: 8F        .byte $8F   ; 
- D 1 - I - 0x0160AB 05:A09B: 8F        .byte $8F   ; 
- D 1 - I - 0x0160AC 05:A09C: 91        .byte $91   ; 
- D 1 - I - 0x0160AD 05:A09D: 91        .byte $91   ; 
- D 1 - I - 0x0160AE 05:A09E: 72        .byte $72   ; 
- D 1 - I - 0x0160AF 05:A09F: 92        .byte $92   ; 
- D 1 - I - 0x0160B0 05:A0A0: 92        .byte $92   ; 
- D 1 - I - 0x0160B1 05:A0A1: 94        .byte $94   ; 
- D 1 - I - 0x0160B2 05:A0A2: 74        .byte $74   ; 
- D 1 - I - 0x0160B3 05:A0A3: 92        .byte $92   ; 
- D 1 - I - 0x0160B4 05:A0A4: 92        .byte $92   ; 
- D 1 - I - 0x0160B5 05:A0A5: 91        .byte $91   ; 
- D 1 - I - 0x0160B6 05:A0A6: 91        .byte $91   ; 
- D 1 - I - 0x0160B7 05:A0A7: 71        .byte $71   ; 
- D 1 - I - 0x0160B8 05:A0A8: 8D        .byte $8D   ; 

- D 1 - I - 0x0160B9 05:A0A9: 02        .byte con_02   ; 

- D 1 - I - 0x0160BA 05:A0AA: 80        .byte $80   ; 
loc_16_A0AB:
- D 1 - I - 0x0160BB 05:A0AB: 04        .byte con_04, $00   ; 
off_0E_A0AD:
- D 1 - I - 0x0160BD 05:A0AD: 04        .byte con_04, $00   ; 
- D 1 - I - 0x0160BF 05:A0AF: 09        .byte con_09, $02   ; 
- D 1 - I - 0x0160C1 05:A0B1: 02        .byte con_02   ; 

- D 1 - I - 0x0160C2 05:A0B2: 8D        .byte $8D   ; 
- D 1 - I - 0x0160C3 05:A0B3: 74        .byte $74   ; 

- D 1 - I - 0x0160C4 05:A0B4: 02        .byte con_02   ; 

- D 1 - I - 0x0160C5 05:A0B5: 94        .byte $94   ; 
- D 1 - I - 0x0160C6 05:A0B6: 79        .byte $79   ; 

- D 1 - I - 0x0160C7 05:A0B7: 02        .byte con_02   ; 

- D 1 - I - 0x0160C8 05:A0B8: 99        .byte $99   ; 
- D 1 - I - 0x0160C9 05:A0B9: 74        .byte $74   ; 
- D 1 - I - 0x0160CA 05:A0BA: 94        .byte $94   ; 
- D 1 - I - 0x0160CB 05:A0BB: 8D        .byte $8D   ; 

- D 1 - I - 0x0160CC 05:A0BC: 12        .byte con_12, $00   ; 
- D 1 - I - 0x0160CE 05:A0BE: A0 CF     .dbyt off_12_A0CF

- D 1 - I - 0x0160D0 05:A0C0: 02        .byte con_02   ; 

- D 1 - I - 0x0160D1 05:A0C1: 8D        .byte $8D   ; 
- D 1 - I - 0x0160D2 05:A0C2: 74        .byte $74   ; 

- D 1 - I - 0x0160D3 05:A0C3: 02        .byte con_02   ; 

- D 1 - I - 0x0160D4 05:A0C4: 94        .byte $94   ; 
- D 1 - I - 0x0160D5 05:A0C5: 78        .byte $78   ; 

- D 1 - I - 0x0160D6 05:A0C6: 02        .byte con_02   ; 

- D 1 - I - 0x0160D7 05:A0C7: 98        .byte $98   ; 
- D 1 - I - 0x0160D8 05:A0C8: 74        .byte $74   ; 
- D 1 - I - 0x0160D9 05:A0C9: 94        .byte $94   ; 
- D 1 - I - 0x0160DA 05:A0CA: 8C        .byte $8C   ; 

- D 1 - I - 0x0160DB 05:A0CB: 0E        .byte con_0E, $03   ; 
- D 1 - I - 0x0160DD 05:A0CD: A0 AD     .dbyt off_0E_A0AD
off_12_A0CF:
- D 1 - I - 0x0160DF 05:A0CF: 02        .byte con_02   ; 

- D 1 - I - 0x0160E0 05:A0D0: 88        .byte $88   ; 
- D 1 - I - 0x0160E1 05:A0D1: 6C        .byte $6C   ; 

- D 1 - I - 0x0160E2 05:A0D2: 02        .byte con_02   ; 

- D 1 - I - 0x0160E3 05:A0D3: 8C        .byte $8C   ; 
- D 1 - I - 0x0160E4 05:A0D4: 6C        .byte $6C   ; 
- D 1 - I - 0x0160E5 05:A0D5: 60        .byte $60   ; 
- D 1 - I - 0x0160E6 05:A0D6: 6C        .byte $6C   ; 
- D 1 - I - 0x0160E7 05:A0D7: 60        .byte $60   ; 
- D 1 - I - 0x0160E8 05:A0D8: 6D        .byte $6D   ; 
- D 1 - I - 0x0160E9 05:A0D9: AD        .byte $AD   ; 
off_0E_A0DA:
- D 1 - I - 0x0160EA 05:A0DA: 04        .byte con_04, $00   ; 

- D 1 - I - 0x0160EC 05:A0DC: 86        .byte $86   ; 
- D 1 - I - 0x0160ED 05:A0DD: 92        .byte $92   ; 
- D 1 - I - 0x0160EE 05:A0DE: 86        .byte $86   ; 
- D 1 - I - 0x0160EF 05:A0DF: 72        .byte $72   ; 
- D 1 - I - 0x0160F0 05:A0E0: 66        .byte $66   ; 
- D 1 - I - 0x0160F1 05:A0E1: 60        .byte $60   ; 
- D 1 - I - 0x0160F2 05:A0E2: 66        .byte $66   ; 
- D 1 - I - 0x0160F3 05:A0E3: 60        .byte $60   ; 
- D 1 - I - 0x0160F4 05:A0E4: 72        .byte $72   ; 
- D 1 - I - 0x0160F5 05:A0E5: 86        .byte $86   ; 
- D 1 - I - 0x0160F6 05:A0E6: 92        .byte $92   ; 
- D 1 - I - 0x0160F7 05:A0E7: 88        .byte $88   ; 
- D 1 - I - 0x0160F8 05:A0E8: 94        .byte $94   ; 
- D 1 - I - 0x0160F9 05:A0E9: 88        .byte $88   ; 
- D 1 - I - 0x0160FA 05:A0EA: 74        .byte $74   ; 
- D 1 - I - 0x0160FB 05:A0EB: 68        .byte $68   ; 
- D 1 - I - 0x0160FC 05:A0EC: 60        .byte $60   ; 
- D 1 - I - 0x0160FD 05:A0ED: 68        .byte $68   ; 
- D 1 - I - 0x0160FE 05:A0EE: 60        .byte $60   ; 
- D 1 - I - 0x0160FF 05:A0EF: 74        .byte $74   ; 
- D 1 - I - 0x016100 05:A0F0: 88        .byte $88   ; 
- D 1 - I - 0x016101 05:A0F1: 94        .byte $94   ; 

- D 1 - I - 0x016102 05:A0F2: 02        .byte con_02   ; 

- D 1 - I - 0x016103 05:A0F3: 8D        .byte $8D   ; 

- D 1 - I - 0x016104 05:A0F4: 02        .byte con_02   ; 

- D 1 - I - 0x016105 05:A0F5: 8C        .byte $8C   ; 

- D 1 - I - 0x016106 05:A0F6: 02        .byte con_02   ; 

- D 1 - I - 0x016107 05:A0F7: 8A        .byte $8A   ; 

- D 1 - I - 0x016108 05:A0F8: 02        .byte con_02   ; 

- D 1 - I - 0x016109 05:A0F9: 88        .byte $88   ; 
- D 1 - I - 0x01610A 05:A0FA: 67        .byte $67   ; 
- D 1 - I - 0x01610B 05:A0FB: 60        .byte $60   ; 
- D 1 - I - 0x01610C 05:A0FC: 68        .byte $68   ; 
- D 1 - I - 0x01610D 05:A0FD: 60        .byte $60   ; 

- D 1 - I - 0x01610E 05:A0FE: 12        .byte con_12, $00   ; 
- D 1 - I - 0x016110 05:A100: A1 12     .dbyt off_12_A112

- D 1 - I - 0x016112 05:A102: 02        .byte con_02   ; 

- D 1 - I - 0x016113 05:A103: 8D        .byte $8D   ; 

- D 1 - I - 0x016114 05:A104: 02        .byte con_02   ; 

- D 1 - I - 0x016115 05:A105: 8C        .byte $8C   ; 

- D 1 - I - 0x016116 05:A106: 02        .byte con_02   ; 

- D 1 - I - 0x016117 05:A107: 8A        .byte $8A   ; 

- D 1 - I - 0x016118 05:A108: 02        .byte con_02   ; 

- D 1 - I - 0x016119 05:A109: 88        .byte $88   ; 
- D 1 - I - 0x01611A 05:A10A: 67        .byte $67   ; 
- D 1 - I - 0x01611B 05:A10B: 60        .byte $60   ; 
- D 1 - I - 0x01611C 05:A10C: 68        .byte $68   ; 
- D 1 - I - 0x01611D 05:A10D: 60        .byte $60   ; 

- D 1 - I - 0x01611E 05:A10E: 0E        .byte con_0E, $01   ; 
- D 1 - I - 0x016120 05:A110: A0 DA     .dbyt off_0E_A0DA
off_12_A112:
- D 1 - I - 0x016122 05:A112: 66        .byte $66   ; 
- D 1 - I - 0x016123 05:A113: 60        .byte $60   ; 
- D 1 - I - 0x016124 05:A114: 66        .byte $66   ; 
- D 1 - I - 0x016125 05:A115: 60        .byte $60   ; 
- D 1 - I - 0x016126 05:A116: 68        .byte $68   ; 
- D 1 - I - 0x016127 05:A117: 68        .byte $68   ; 
- D 1 - I - 0x016128 05:A118: 60        .byte $60   ; 
- D 1 - I - 0x016129 05:A119: 6D        .byte $6D   ; 
- D 1 - I - 0x01612A 05:A11A: 60        .byte $60   ; 
- D 1 - I - 0x01612B 05:A11B: 6D        .byte $6D   ; 
- D 1 - I - 0x01612C 05:A11C: 60        .byte $60   ; 
- D 1 - I - 0x01612D 05:A11D: 6D        .byte $6D   ; 
- D 1 - I - 0x01612E 05:A11E: AD        .byte $AD   ; 

- D 1 - I - 0x01612F 05:A11F: 16        .byte con_jump   ; 
- D 1 - I - 0x016130 05:A120: A0 AB     .dbyt loc_16_A0AB


; bzk garbage
- - - - - - 0x016132 05:A122: 17        .byte con_stop   ; 



_off019_06_A123_03_disable:
- D 1 - I - 0x016133 05:A123: 17        .byte con_stop   ; 



_music_A124_07_stage_coplete:
- D 1 - I - 0x016134 05:A124: 00        .byte $00   ; 
- D 1 - I - 0x016135 05:A125: A1 2D     .dbyt _off019_07_A12D_00
- D 1 - I - 0x016137 05:A127: A1 4C     .dbyt _off019_07_A14C_01
- D 1 - I - 0x016139 05:A129: A1 66     .dbyt _off019_07_A166_02
- D 1 - I - 0x01613B 05:A12B: A1 7B     .dbyt _off019_07_A17B_03_disable



_off019_07_A12D_00:
- D 1 - I - 0x01613D 05:A12D: 05        .byte con_05, $01, $D8   ; 
- D 1 - I - 0x016140 05:A130: 06        .byte con_06, $C8   ; 
- D 1 - I - 0x016142 05:A132: 07        .byte con_07, $08   ; 
- D 1 - I - 0x016144 05:A134: 08        .byte con_08, $01   ; 
- D 1 - I - 0x016146 05:A136: 09        .byte con_09, $02   ; 
- D 1 - I - 0x016148 05:A138: 18        .byte con_18, $40   ; 

- D 1 - I - 0x01614A 05:A13A: 7E        .byte $7E   ; 
- D 1 - I - 0x01614B 05:A13B: 60        .byte $60   ; 
- D 1 - I - 0x01614C 05:A13C: 7E        .byte $7E   ; 
- D 1 - I - 0x01614D 05:A13D: 7E        .byte $7E   ; 
- D 1 - I - 0x01614E 05:A13E: 7E        .byte $7E   ; 
- D 1 - I - 0x01614F 05:A13F: 60        .byte $60   ; 

- D 1 - I - 0x016150 05:A140: 03        .byte con_03   ; 

- D 1 - I - 0x016151 05:A141: 68        .byte $68   ; 
- D 1 - I - 0x016152 05:A142: 60        .byte $60   ; 
- D 1 - I - 0x016153 05:A143: 63        .byte $63   ; 
- D 1 - I - 0x016154 05:A144: 60        .byte $60   ; 

- D 1 - I - 0x016155 05:A145: 03        .byte con_03   ; 

- D 1 - I - 0x016156 05:A146: 78        .byte $78   ; 
- D 1 - I - 0x016157 05:A147: 60        .byte $60   ; 

- D 1 - I - 0x016158 05:A148: 02        .byte con_02   ; 
- D 1 - I - 0x016159 05:A149: 03        .byte con_03   ; 

- D 1 - I - 0x01615A 05:A14A: CA        .byte $CA   ; 

- D 1 - I - 0x01615B 05:A14B: 17        .byte con_stop   ; 



_off019_07_A14C_01:
- D 1 - I - 0x01615C 05:A14C: 06        .byte con_06, $C8   ; 
- D 1 - I - 0x01615E 05:A14E: 07        .byte con_07, $08   ; 
- D 1 - I - 0x016160 05:A150: 08        .byte con_08, $01   ; 
- D 1 - I - 0x016162 05:A152: 09        .byte con_09, $01   ; 
- D 1 - I - 0x016164 05:A154: 18        .byte con_18, $40   ; 
- D 1 - I - 0x016166 05:A156: 03        .byte con_03   ; 

- D 1 - I - 0x016167 05:A157: 6A        .byte $6A   ; 
- D 1 - I - 0x016168 05:A158: 60        .byte $60   ; 
- D 1 - I - 0x016169 05:A159: 6A        .byte $6A   ; 
- D 1 - I - 0x01616A 05:A15A: 6A        .byte $6A   ; 
- D 1 - I - 0x01616B 05:A15B: 6A        .byte $6A   ; 
- D 1 - I - 0x01616C 05:A15C: 60        .byte $60   ; 
- D 1 - I - 0x01616D 05:A15D: 6C        .byte $6C   ; 
- D 1 - I - 0x01616E 05:A15E: 60        .byte $60   ; 
- D 1 - I - 0x01616F 05:A15F: 68        .byte $68   ; 
- D 1 - I - 0x016170 05:A160: 60        .byte $60   ; 
- D 1 - I - 0x016171 05:A161: 63        .byte $63   ; 
- D 1 - I - 0x016172 05:A162: 60        .byte $60   ; 

- D 1 - I - 0x016173 05:A163: 02        .byte con_02   ; 

- D 1 - I - 0x016174 05:A164: CE        .byte $CE   ; 

- D 1 - I - 0x016175 05:A165: 17        .byte con_stop   ; 



_off019_07_A166_02:
- D 1 - I - 0x016176 05:A166: 06        .byte con_06, $C8   ; 
- D 1 - I - 0x016178 05:A168: 08        .byte con_08, $01   ; 
- D 1 - I - 0x01617A 05:A16A: 09        .byte con_09, $02   ; 

- D 1 - I - 0x01617C 05:A16C: 79        .byte $79   ; 
- D 1 - I - 0x01617D 05:A16D: 60        .byte $60   ; 
- D 1 - I - 0x01617E 05:A16E: 79        .byte $79   ; 
- D 1 - I - 0x01617F 05:A16F: 79        .byte $79   ; 
- D 1 - I - 0x016180 05:A170: 79        .byte $79   ; 
- D 1 - I - 0x016181 05:A171: 60        .byte $60   ; 
- D 1 - I - 0x016182 05:A172: 7B        .byte $7B   ; 
- D 1 - I - 0x016183 05:A173: 60        .byte $60   ; 
- D 1 - I - 0x016184 05:A174: 78        .byte $78   ; 
- D 1 - I - 0x016185 05:A175: 60        .byte $60   ; 
- D 1 - I - 0x016186 05:A176: 74        .byte $74   ; 
- D 1 - I - 0x016187 05:A177: 60        .byte $60   ; 

- D 1 - I - 0x016188 05:A178: 02        .byte con_02   ; 

- D 1 - I - 0x016189 05:A179: DD        .byte $DD   ; 

- D 1 - I - 0x01618A 05:A17A: 17        .byte con_stop   ; 



_off019_07_A17B_03_disable:
- D 1 - I - 0x01618B 05:A17B: 17        .byte con_stop   ; 



_music_A17C_08_boss_fight:
- D 1 - I - 0x01618C 05:A17C: 00        .byte $00   ; 
- D 1 - I - 0x01618D 05:A17D: A1 85     .dbyt _off019_08_A185_00
- D 1 - I - 0x01618F 05:A17F: A2 1D     .dbyt _off019_08_A21D_01
- D 1 - I - 0x016191 05:A181: A2 B9     .dbyt _off019_08_A2B9_02
- D 1 - I - 0x016193 05:A183: A3 07     .dbyt _off019_08_A307_03_disable



_off019_08_A185_00:
- D 1 - I - 0x016195 05:A185: 05        .byte con_05, $02, $00   ; 
- D 1 - I - 0x016198 05:A188: 0A        .byte con_0A, $04   ; 
- D 1 - I - 0x01619A 05:A18A: 06        .byte con_06, $64   ; 
- D 1 - I - 0x01619C 05:A18C: 07        .byte con_07, $08   ; 
- D 1 - I - 0x01619E 05:A18E: 08        .byte con_08, $01   ; 
- D 1 - I - 0x0161A0 05:A190: 09        .byte con_09, $01   ; 
- D 1 - I - 0x0161A2 05:A192: 18        .byte con_18, $40   ; 
- D 1 - I - 0x0161A4 05:A194: 03        .byte con_03   ; 

- D 1 - I - 0x0161A5 05:A195: 6B        .byte $6B   ; 
- D 1 - I - 0x0161A6 05:A196: 6A        .byte $6A   ; 
- D 1 - I - 0x0161A7 05:A197: 6B        .byte $6B   ; 
- D 1 - I - 0x0161A8 05:A198: 6D        .byte $6D   ; 
- D 1 - I - 0x0161A9 05:A199: 6B        .byte $6B   ; 

- D 1 - I - 0x0161AA 05:A19A: 02        .byte con_02   ; 

- D 1 - I - 0x0161AB 05:A19B: 80        .byte $80   ; 
- D 1 - I - 0x0161AC 05:A19C: 6B        .byte $6B   ; 
- D 1 - I - 0x0161AD 05:A19D: 6A        .byte $6A   ; 
- D 1 - I - 0x0161AE 05:A19E: 6B        .byte $6B   ; 
- D 1 - I - 0x0161AF 05:A19F: 6D        .byte $6D   ; 
- D 1 - I - 0x0161B0 05:A1A0: 6B        .byte $6B   ; 

- D 1 - I - 0x0161B1 05:A1A1: 02        .byte con_02   ; 

- D 1 - I - 0x0161B2 05:A1A2: 80        .byte $80   ; 
- D 1 - I - 0x0161B3 05:A1A3: 6B        .byte $6B   ; 
- D 1 - I - 0x0161B4 05:A1A4: 6A        .byte $6A   ; 
- D 1 - I - 0x0161B5 05:A1A5: 6B        .byte $6B   ; 
- D 1 - I - 0x0161B6 05:A1A6: 6D        .byte $6D   ; 
- D 1 - I - 0x0161B7 05:A1A7: 6A        .byte $6A   ; 
- D 1 - I - 0x0161B8 05:A1A8: 6B        .byte $6B   ; 
- D 1 - I - 0x0161B9 05:A1A9: 6D        .byte $6D   ; 
- D 1 - I - 0x0161BA 05:A1AA: 74        .byte $74   ; 
- D 1 - I - 0x0161BB 05:A1AB: 60        .byte $60   ; 
- D 1 - I - 0x0161BC 05:A1AC: 74        .byte $74   ; 
- D 1 - I - 0x0161BD 05:A1AD: 60        .byte $60   ; 
- D 1 - I - 0x0161BE 05:A1AE: 74        .byte $74   ; 
- D 1 - I - 0x0161BF 05:A1AF: 76        .byte $76   ; 
- D 1 - I - 0x0161C0 05:A1B0: 32        .byte $32   ; 
- D 1 - I - 0x0161C1 05:A1B1: 30        .byte $30   ; 
- D 1 - I - 0x0161C2 05:A1B2: 2F        .byte $2F   ; 
- D 1 - I - 0x0161C3 05:A1B3: 2D        .byte $2D   ; 
- D 1 - I - 0x0161C4 05:A1B4: 2B        .byte $2B   ; 
- D 1 - I - 0x0161C5 05:A1B5: 2A        .byte $2A   ; 
- D 1 - I - 0x0161C6 05:A1B6: 28        .byte $28   ; 
- D 1 - I - 0x0161C7 05:A1B7: 26        .byte $26   ; 
- D 1 - I - 0x0161C8 05:A1B8: 24        .byte $24   ; 
- D 1 - I - 0x0161C9 05:A1B9: 23        .byte $23   ; 
- D 1 - I - 0x0161CA 05:A1BA: 21        .byte $21   ; 

- D 1 - I - 0x0161CB 05:A1BB: 03        .byte con_03   ; 

- D 1 - I - 0x0161CC 05:A1BC: 37        .byte $37   ; 
loc_16_A1BD:
- D 1 - I - 0x0161CD 05:A1BD: 04        .byte con_04, $08   ; 
off_0E_A1BF:
- D 1 - I - 0x0161CF 05:A1BF: 04        .byte con_04, $08   ; 
- D 1 - I - 0x0161D1 05:A1C1: 09        .byte con_09, $01   ; 

- D 1 - I - 0x0161D3 05:A1C3: 6C        .byte $6C   ; 
- D 1 - I - 0x0161D4 05:A1C4: 6D        .byte $6D   ; 
- D 1 - I - 0x0161D5 05:A1C5: 6F        .byte $6F   ; 
- D 1 - I - 0x0161D6 05:A1C6: 68        .byte $68   ; 
- D 1 - I - 0x0161D7 05:A1C7: 67        .byte $67   ; 
- D 1 - I - 0x0161D8 05:A1C8: 68        .byte $68   ; 
- D 1 - I - 0x0161D9 05:A1C9: 60        .byte $60   ; 

- D 1 - I - 0x0161DA 05:A1CA: 02        .byte con_02   ; 

- D 1 - I - 0x0161DB 05:A1CB: 92        .byte $92   ; 
- D 1 - I - 0x0161DC 05:A1CC: 91        .byte $91   ; 
- D 1 - I - 0x0161DD 05:A1CD: 8F        .byte $8F   ; 
- D 1 - I - 0x0161DE 05:A1CE: 8D        .byte $8D   ; 
- D 1 - I - 0x0161DF 05:A1CF: 8C        .byte $8C   ; 
- D 1 - I - 0x0161E0 05:A1D0: 6D        .byte $6D   ; 
- D 1 - I - 0x0161E1 05:A1D1: 6F        .byte $6F   ; 
- D 1 - I - 0x0161E2 05:A1D2: 60        .byte $60   ; 
- D 1 - I - 0x0161E3 05:A1D3: 68        .byte $68   ; 
- D 1 - I - 0x0161E4 05:A1D4: 67        .byte $67   ; 
- D 1 - I - 0x0161E5 05:A1D5: 68        .byte $68   ; 

- D 1 - I - 0x0161E6 05:A1D6: 12        .byte con_12, $08   ; 
- D 1 - I - 0x0161E8 05:A1D8: A1 E2     .dbyt off_12_A1E2

- D 1 - I - 0x0161EA 05:A1DA: 8B        .byte $8B   ; 
- D 1 - I - 0x0161EB 05:A1DB: 8A        .byte $8A   ; 
- D 1 - I - 0x0161EC 05:A1DC: 88        .byte $88   ; 
- D 1 - I - 0x0161ED 05:A1DD: 84        .byte $84   ; 

- D 1 - I - 0x0161EE 05:A1DE: 0E        .byte con_0E, $01   ; 
- D 1 - I - 0x0161F0 05:A1E0: A1 BF     .dbyt off_0E_A1BF
off_12_A1E2:
- D 1 - I - 0x0161F2 05:A1E2: 94        .byte $94   ; 
- D 1 - I - 0x0161F3 05:A1E3: 90        .byte $90   ; 
- D 1 - I - 0x0161F4 05:A1E4: 96        .byte $96   ; 
- D 1 - I - 0x0161F5 05:A1E5: 92        .byte $92   ; 
off_0E_A1E6:
- D 1 - I - 0x0161F6 05:A1E6: 04        .byte con_04, $08   ; 
- D 1 - I - 0x0161F8 05:A1E8: 02        .byte con_02   ; 

- D 1 - I - 0x0161F9 05:A1E9: 8F        .byte $8F   ; 

- D 1 - I - 0x0161FA 05:A1EA: 02        .byte con_02   ; 

- D 1 - I - 0x0161FB 05:A1EB: 93        .byte $93   ; 
- D 1 - I - 0x0161FC 05:A1EC: 96        .byte $96   ; 

- D 1 - I - 0x0161FD 05:A1ED: 02        .byte con_02   ; 

- D 1 - I - 0x0161FE 05:A1EE: 90        .byte $90   ; 

- D 1 - I - 0x0161FF 05:A1EF: 02        .byte con_02   ; 

- D 1 - I - 0x016200 05:A1F0: 94        .byte $94   ; 
- D 1 - I - 0x016201 05:A1F1: 97        .byte $97   ; 

- D 1 - I - 0x016202 05:A1F2: 02        .byte con_02   ; 

- D 1 - I - 0x016203 05:A1F3: 96        .byte $96   ; 

- D 1 - I - 0x016204 05:A1F4: 02        .byte con_02   ; 

- D 1 - I - 0x016205 05:A1F5: 92        .byte $92   ; 

- D 1 - I - 0x016206 05:A1F6: 12        .byte con_12, $08   ; 
- D 1 - I - 0x016208 05:A1F8: A2 06     .dbyt off_12_A206

- D 1 - I - 0x01620A 05:A1FA: 8F        .byte $8F   ; 
- D 1 - I - 0x01620B 05:A1FB: 74        .byte $74   ; 
- D 1 - I - 0x01620C 05:A1FC: 72        .byte $72   ; 
- D 1 - I - 0x01620D 05:A1FD: 74        .byte $74   ; 
- D 1 - I - 0x01620E 05:A1FE: 77        .byte $77   ; 
- D 1 - I - 0x01620F 05:A1FF: 60        .byte $60   ; 

- D 1 - I - 0x016210 05:A200: 02        .byte con_02   ; 

- D 1 - I - 0x016211 05:A201: 94        .byte $94   ; 

- D 1 - I - 0x016212 05:A202: 0E        .byte con_0E, $01   ; 
- D 1 - I - 0x016214 05:A204: A1 E6     .dbyt off_0E_A1E6
off_12_A206:
- D 1 - I - 0x016216 05:A206: 96        .byte $96   ; 

- D 1 - I - 0x016217 05:A207: 09        .byte con_09, $02   ; 

- D 1 - I - 0x016219 05:A209: 6D        .byte $6D   ; 
- D 1 - I - 0x01621A 05:A20A: 6C        .byte $6C   ; 
- D 1 - I - 0x01621B 05:A20B: 6A        .byte $6A   ; 

- D 1 - I - 0x01621C 05:A20C: 01        .byte con_01   ; 

- D 1 - I - 0x01621D 05:A20D: 6C        .byte $6C   ; 

- D 1 - I - 0x01621E 05:A20E: 01        .byte con_01   ; 

- D 1 - I - 0x01621F 05:A20F: 8C        .byte $8C   ; 
- D 1 - I - 0x016220 05:A210: 2A        .byte $2A   ; 
- D 1 - I - 0x016221 05:A211: 28        .byte $28   ; 
- D 1 - I - 0x016222 05:A212: 27        .byte $27   ; 
- D 1 - I - 0x016223 05:A213: 25        .byte $25   ; 
- D 1 - I - 0x016224 05:A214: 23        .byte $23   ; 
- D 1 - I - 0x016225 05:A215: 21        .byte $21   ; 

- D 1 - I - 0x016226 05:A216: 03        .byte con_03   ; 

- D 1 - I - 0x016227 05:A217: 38        .byte $38   ; 
- D 1 - I - 0x016228 05:A218: 36        .byte $36   ; 

- D 1 - I - 0x016229 05:A219: 16        .byte con_jump   ; 
- D 1 - I - 0x01622A 05:A21A: A1 BD     .dbyt loc_16_A1BD


; bzk garbage
- - - - - - 0x01622C 05:A21C: 17        .byte con_stop   ; 



_off019_08_A21D_01:
- D 1 - I - 0x01622D 05:A21D: 06        .byte con_06, $64   ; 
- D 1 - I - 0x01622F 05:A21F: 07        .byte con_07, $04   ; 
- D 1 - I - 0x016231 05:A221: 08        .byte con_08, $00   ; 
- D 1 - I - 0x016233 05:A223: 09        .byte con_09, $02   ; 
- D 1 - I - 0x016235 05:A225: 18        .byte con_18, $80   ; 
off_0E_A227:
- D 1 - I - 0x016237 05:A227: 04        .byte con_04, $08   ; 

- D 1 - I - 0x016239 05:A229: 4F        .byte $4F   ; 
- D 1 - I - 0x01623A 05:A22A: 51        .byte $51   ; 

- D 1 - I - 0x01623B 05:A22B: 0E        .byte con_0E, $07   ; 
- D 1 - I - 0x01623D 05:A22D: A2 27     .dbyt off_0E_A227
off_0E_A22F:
- D 1 - I - 0x01623F 05:A22F: 04        .byte con_04, $08   ; 

- D 1 - I - 0x016241 05:A231: 54        .byte $54   ; 
- D 1 - I - 0x016242 05:A232: 56        .byte $56   ; 

- D 1 - I - 0x016243 05:A233: 0E        .byte con_0E, $07   ; 
- D 1 - I - 0x016245 05:A235: A2 2F     .dbyt off_0E_A22F

- D 1 - I - 0x016247 05:A237: 07        .byte con_07, $06   ; 
- D 1 - I - 0x016249 05:A239: 09        .byte con_09, $03   ; 

- D 1 - I - 0x01624B 05:A23B: 74        .byte $74   ; 
- D 1 - I - 0x01624C 05:A23C: 71        .byte $71   ; 
- D 1 - I - 0x01624D 05:A23D: 6D        .byte $6D   ; 
- D 1 - I - 0x01624E 05:A23E: 6B        .byte $6B   ; 
- D 1 - I - 0x01624F 05:A23F: 68        .byte $68   ; 
- D 1 - I - 0x016250 05:A240: 65        .byte $65   ; 
- D 1 - I - 0x016251 05:A241: 61        .byte $61   ; 

- D 1 - I - 0x016252 05:A242: 03        .byte con_03   ; 

- D 1 - I - 0x016253 05:A243: 77        .byte $77   ; 

- D 1 - I - 0x016254 05:A244: 09        .byte con_09, $01   ; 
- D 1 - I - 0x016256 05:A246: 03        .byte con_03   ; 

- D 1 - I - 0x016257 05:A247: 77        .byte $77   ; 
- D 1 - I - 0x016258 05:A248: 74        .byte $74   ; 
- D 1 - I - 0x016259 05:A249: 70        .byte $70   ; 
- D 1 - I - 0x01625A 05:A24A: 6D        .byte $6D   ; 
- D 1 - I - 0x01625B 05:A24B: 6A        .byte $6A   ; 
- D 1 - I - 0x01625C 05:A24C: 66        .byte $66   ; 
- D 1 - I - 0x01625D 05:A24D: 61        .byte $61   ; 

- D 1 - I - 0x01625E 05:A24E: 03        .byte con_03   ; 

- D 1 - I - 0x01625F 05:A24F: 76        .byte $76   ; 
loc_16_A250:
- D 1 - I - 0x016260 05:A250: 04        .byte con_04, $08   ; 
off_0E_A252:
- D 1 - I - 0x016262 05:A252: 04        .byte con_04, $08   ; 
- D 1 - I - 0x016264 05:A254: 07        .byte con_07, $05   ; 

- D 1 - I - 0x016266 05:A256: 6F        .byte $6F   ; 
- D 1 - I - 0x016267 05:A257: 71        .byte $71   ; 
- D 1 - I - 0x016268 05:A258: 6D        .byte $6D   ; 
- D 1 - I - 0x016269 05:A259: 6F        .byte $6F   ; 
- D 1 - I - 0x01626A 05:A25A: 6C        .byte $6C   ; 
- D 1 - I - 0x01626B 05:A25B: 6D        .byte $6D   ; 
- D 1 - I - 0x01626C 05:A25C: 6A        .byte $6A   ; 
- D 1 - I - 0x01626D 05:A25D: 6C        .byte $6C   ; 
- D 1 - I - 0x01626E 05:A25E: 68        .byte $68   ; 
- D 1 - I - 0x01626F 05:A25F: 6A        .byte $6A   ; 
- D 1 - I - 0x016270 05:A260: 67        .byte $67   ; 
- D 1 - I - 0x016271 05:A261: 68        .byte $68   ; 
- D 1 - I - 0x016272 05:A262: 65        .byte $65   ; 
- D 1 - I - 0x016273 05:A263: 67        .byte $67   ; 
- D 1 - I - 0x016274 05:A264: 63        .byte $63   ; 
- D 1 - I - 0x016275 05:A265: 65        .byte $65   ; 
- D 1 - I - 0x016276 05:A266: 61        .byte $61   ; 
- D 1 - I - 0x016277 05:A267: 63        .byte $63   ; 

- D 1 - I - 0x016278 05:A268: 03        .byte con_03   ; 

- D 1 - I - 0x016279 05:A269: 78        .byte $78   ; 
- D 1 - I - 0x01627A 05:A26A: 79        .byte $79   ; 
- D 1 - I - 0x01627B 05:A26B: 76        .byte $76   ; 
- D 1 - I - 0x01627C 05:A26C: 78        .byte $78   ; 
- D 1 - I - 0x01627D 05:A26D: 74        .byte $74   ; 
- D 1 - I - 0x01627E 05:A26E: 76        .byte $76   ; 
- D 1 - I - 0x01627F 05:A26F: 73        .byte $73   ; 
- D 1 - I - 0x016280 05:A270: 74        .byte $74   ; 
- D 1 - I - 0x016281 05:A271: 71        .byte $71   ; 
- D 1 - I - 0x016282 05:A272: 73        .byte $73   ; 
- D 1 - I - 0x016283 05:A273: 6F        .byte $6F   ; 
- D 1 - I - 0x016284 05:A274: 71        .byte $71   ; 
- D 1 - I - 0x016285 05:A275: 6F        .byte $6F   ; 
- D 1 - I - 0x016286 05:A276: 6E        .byte $6E   ; 

- D 1 - I - 0x016287 05:A277: 0E        .byte con_0E, $01   ; 
- D 1 - I - 0x016289 05:A279: A2 52     .dbyt off_0E_A252
off_0E_A27B:
- D 1 - I - 0x01628B 05:A27B: 04        .byte con_04, $08   ; 

- D 1 - I - 0x01628D 05:A27D: 6F        .byte $6F   ; 
- D 1 - I - 0x01628E 05:A27E: 6F        .byte $6F   ; 
- D 1 - I - 0x01628F 05:A27F: 6A        .byte $6A   ; 
- D 1 - I - 0x016290 05:A280: 6A        .byte $6A   ; 
- D 1 - I - 0x016291 05:A281: 67        .byte $67   ; 
- D 1 - I - 0x016292 05:A282: 67        .byte $67   ; 
- D 1 - I - 0x016293 05:A283: 63        .byte $63   ; 
- D 1 - I - 0x016294 05:A284: 63        .byte $63   ; 
- D 1 - I - 0x016295 05:A285: 70        .byte $70   ; 
- D 1 - I - 0x016296 05:A286: 70        .byte $70   ; 
- D 1 - I - 0x016297 05:A287: 6B        .byte $6B   ; 
- D 1 - I - 0x016298 05:A288: 6B        .byte $6B   ; 
- D 1 - I - 0x016299 05:A289: 68        .byte $68   ; 
- D 1 - I - 0x01629A 05:A28A: 68        .byte $68   ; 
- D 1 - I - 0x01629B 05:A28B: 64        .byte $64   ; 
- D 1 - I - 0x01629C 05:A28C: 64        .byte $64   ; 
- D 1 - I - 0x01629D 05:A28D: 72        .byte $72   ; 
- D 1 - I - 0x01629E 05:A28E: 72        .byte $72   ; 
- D 1 - I - 0x01629F 05:A28F: 6D        .byte $6D   ; 
- D 1 - I - 0x0162A0 05:A290: 6D        .byte $6D   ; 
- D 1 - I - 0x0162A1 05:A291: 6A        .byte $6A   ; 
- D 1 - I - 0x0162A2 05:A292: 6A        .byte $6A   ; 
- D 1 - I - 0x0162A3 05:A293: 66        .byte $66   ; 
- D 1 - I - 0x0162A4 05:A294: 66        .byte $66   ; 

- D 1 - I - 0x0162A5 05:A295: 12        .byte con_12, $08   ; 
- D 1 - I - 0x0162A7 05:A297: A2 A6     .dbyt off_12_A2A6

- D 1 - I - 0x0162A9 05:A299: 6B        .byte $6B   ; 
- D 1 - I - 0x0162AA 05:A29A: 6B        .byte $6B   ; 
- D 1 - I - 0x0162AB 05:A29B: 68        .byte $68   ; 
- D 1 - I - 0x0162AC 05:A29C: 68        .byte $68   ; 
- D 1 - I - 0x0162AD 05:A29D: 63        .byte $63   ; 
- D 1 - I - 0x0162AE 05:A29E: 63        .byte $63   ; 

- D 1 - I - 0x0162AF 05:A29F: 03        .byte con_03   ; 

- D 1 - I - 0x0162B0 05:A2A0: 77        .byte $77   ; 
- D 1 - I - 0x0162B1 05:A2A1: 77        .byte $77   ; 

- D 1 - I - 0x0162B2 05:A2A2: 0E        .byte con_0E, $01   ; 
- D 1 - I - 0x0162B4 05:A2A4: A2 7B     .dbyt off_0E_A27B
off_12_A2A6:
- D 1 - I - 0x0162B6 05:A2A6: 71        .byte $71   ; 
- D 1 - I - 0x0162B7 05:A2A7: 6F        .byte $6F   ; 
- D 1 - I - 0x0162B8 05:A2A8: 6D        .byte $6D   ; 

- D 1 - I - 0x0162B9 05:A2A9: 01        .byte con_01   ; 

- D 1 - I - 0x0162BA 05:A2AA: 6F        .byte $6F   ; 

- D 1 - I - 0x0162BB 05:A2AB: 01        .byte con_01   ; 

- D 1 - I - 0x0162BC 05:A2AC: 8F        .byte $8F   ; 
- D 1 - I - 0x0162BD 05:A2AD: 2D        .byte $2D   ; 
- D 1 - I - 0x0162BE 05:A2AE: 2C        .byte $2C   ; 
- D 1 - I - 0x0162BF 05:A2AF: 2A        .byte $2A   ; 
- D 1 - I - 0x0162C0 05:A2B0: 28        .byte $28   ; 
- D 1 - I - 0x0162C1 05:A2B1: 27        .byte $27   ; 
- D 1 - I - 0x0162C2 05:A2B2: 25        .byte $25   ; 
- D 1 - I - 0x0162C3 05:A2B3: 23        .byte $23   ; 
- D 1 - I - 0x0162C4 05:A2B4: 21        .byte $21   ; 

- D 1 - I - 0x0162C5 05:A2B5: 16        .byte con_jump   ; 
- D 1 - I - 0x0162C6 05:A2B6: A2 50     .dbyt loc_16_A250


; bzk garbage
- - - - - - 0x0162C8 05:A2B8: 17        .byte con_stop   ; 



_off019_08_A2B9_02:
- D 1 - I - 0x0162C9 05:A2B9: 06        .byte con_06, $C8   ; 
- D 1 - I - 0x0162CB 05:A2BB: 08        .byte con_08, $01   ; 
- D 1 - I - 0x0162CD 05:A2BD: 09        .byte con_09, $02   ; 

- D 1 - I - 0x0162CF 05:A2BF: 94        .byte $94   ; 
- D 1 - I - 0x0162D0 05:A2C0: 94        .byte $94   ; 
- D 1 - I - 0x0162D1 05:A2C1: 94        .byte $94   ; 
- D 1 - I - 0x0162D2 05:A2C2: 94        .byte $94   ; 
- D 1 - I - 0x0162D3 05:A2C3: 92        .byte $92   ; 
- D 1 - I - 0x0162D4 05:A2C4: 92        .byte $92   ; 
- D 1 - I - 0x0162D5 05:A2C5: 92        .byte $92   ; 
- D 1 - I - 0x0162D6 05:A2C6: 92        .byte $92   ; 
- D 1 - I - 0x0162D7 05:A2C7: 91        .byte $91   ; 
- D 1 - I - 0x0162D8 05:A2C8: 91        .byte $91   ; 
- D 1 - I - 0x0162D9 05:A2C9: 91        .byte $91   ; 
- D 1 - I - 0x0162DA 05:A2CA: 91        .byte $91   ; 
- D 1 - I - 0x0162DB 05:A2CB: 90        .byte $90   ; 
- D 1 - I - 0x0162DC 05:A2CC: 90        .byte $90   ; 
- D 1 - I - 0x0162DD 05:A2CD: 92        .byte $92   ; 
- D 1 - I - 0x0162DE 05:A2CE: 92        .byte $92   ; 
loc_16_A2CF:
- D 1 - I - 0x0162DF 05:A2CF: 04        .byte con_04, $00   ; 
off_0E_A2D1:
- D 1 - I - 0x0162E1 05:A2D1: 04        .byte con_04, $00   ; 

- D 1 - I - 0x0162E3 05:A2D3: 88        .byte $88   ; 
- D 1 - I - 0x0162E4 05:A2D4: 94        .byte $94   ; 
- D 1 - I - 0x0162E5 05:A2D5: 88        .byte $88   ; 
- D 1 - I - 0x0162E6 05:A2D6: 94        .byte $94   ; 
- D 1 - I - 0x0162E7 05:A2D7: 86        .byte $86   ; 
- D 1 - I - 0x0162E8 05:A2D8: 92        .byte $92   ; 
- D 1 - I - 0x0162E9 05:A2D9: 86        .byte $86   ; 
- D 1 - I - 0x0162EA 05:A2DA: 92        .byte $92   ; 
- D 1 - I - 0x0162EB 05:A2DB: 85        .byte $85   ; 
- D 1 - I - 0x0162EC 05:A2DC: 91        .byte $91   ; 
- D 1 - I - 0x0162ED 05:A2DD: 85        .byte $85   ; 
- D 1 - I - 0x0162EE 05:A2DE: 91        .byte $91   ; 
- D 1 - I - 0x0162EF 05:A2DF: 84        .byte $84   ; 
- D 1 - I - 0x0162F0 05:A2E0: 90        .byte $90   ; 

- D 1 - I - 0x0162F1 05:A2E1: 12        .byte con_12, $00   ; 
- D 1 - I - 0x0162F3 05:A2E3: A2 EB     .dbyt off_12_A2EB

- D 1 - I - 0x0162F5 05:A2E5: 84        .byte $84   ; 
- D 1 - I - 0x0162F6 05:A2E6: 90        .byte $90   ; 

- D 1 - I - 0x0162F7 05:A2E7: 0E        .byte con_0E, $01   ; 
- D 1 - I - 0x0162F9 05:A2E9: A2 D1     .dbyt off_0E_A2D1
off_12_A2EB:
- D 1 - I - 0x0162FB 05:A2EB: 86        .byte $86   ; 
- D 1 - I - 0x0162FC 05:A2EC: 92        .byte $92   ; 
off_0E_A2ED:
- D 1 - I - 0x0162FD 05:A2ED: 04        .byte con_04, $00   ; 

- D 1 - I - 0x0162FF 05:A2EF: 83        .byte $83   ; 
- D 1 - I - 0x016300 05:A2F0: 8F        .byte $8F   ; 
- D 1 - I - 0x016301 05:A2F1: 83        .byte $83   ; 
- D 1 - I - 0x016302 05:A2F2: 8F        .byte $8F   ; 
- D 1 - I - 0x016303 05:A2F3: 84        .byte $84   ; 
- D 1 - I - 0x016304 05:A2F4: 90        .byte $90   ; 
- D 1 - I - 0x016305 05:A2F5: 84        .byte $84   ; 
- D 1 - I - 0x016306 05:A2F6: 90        .byte $90   ; 
- D 1 - I - 0x016307 05:A2F7: 86        .byte $86   ; 
- D 1 - I - 0x016308 05:A2F8: 92        .byte $92   ; 
- D 1 - I - 0x016309 05:A2F9: 86        .byte $86   ; 
- D 1 - I - 0x01630A 05:A2FA: 92        .byte $92   ; 
- D 1 - I - 0x01630B 05:A2FB: 88        .byte $88   ; 
- D 1 - I - 0x01630C 05:A2FC: 94        .byte $94   ; 
- D 1 - I - 0x01630D 05:A2FD: 88        .byte $88   ; 
- D 1 - I - 0x01630E 05:A2FE: 94        .byte $94   ; 

- D 1 - I - 0x01630F 05:A2FF: 0E        .byte con_0E, $01   ; 
- D 1 - I - 0x016311 05:A301: A2 ED     .dbyt off_0E_A2ED

- D 1 - I - 0x016313 05:A303: 16        .byte con_jump   ; 
- D 1 - I - 0x016314 05:A304: A2 CF     .dbyt loc_16_A2CF


; bzk garbage
- - - - - - 0x016316 05:A306: 17        .byte con_stop   ; 



_off019_08_A307_03_disable:
- D 1 - I - 0x016317 05:A307: 17        .byte con_stop   ; 



_music_A308_09_stage_05_final_boss_fight:
- D 1 - I - 0x016318 05:A308: 00        .byte $00   ; 
- D 1 - I - 0x016319 05:A309: A3 11     .dbyt _off019_09_A311_00
- D 1 - I - 0x01631B 05:A30B: A3 9A     .dbyt _off019_09_A39A_01
- D 1 - I - 0x01631D 05:A30D: A4 4C     .dbyt _off019_09_A44C_02
- D 1 - I - 0x01631F 05:A30F: A4 9D     .dbyt _off019_09_A49D_03



_off019_09_A311_00:
- D 1 - I - 0x016321 05:A311: 05        .byte con_05, $01, $69   ; 
- D 1 - I - 0x016324 05:A314: 06        .byte con_06, $64   ; 
- D 1 - I - 0x016326 05:A316: 07        .byte con_07, $08   ; 
- D 1 - I - 0x016328 05:A318: 08        .byte con_08, $01   ; 
- D 1 - I - 0x01632A 05:A31A: 09        .byte con_09, $02   ; 
off_0E_A31C:
- D 1 - I - 0x01632C 05:A31C: 04        .byte con_04, $08   ; 

- D 1 - I - 0x01632E 05:A31E: 69        .byte $69   ; 
- D 1 - I - 0x01632F 05:A31F: 6A        .byte $6A   ; 
- D 1 - I - 0x016330 05:A320: 6B        .byte $6B   ; 
- D 1 - I - 0x016331 05:A321: 6C        .byte $6C   ; 

- D 1 - I - 0x016332 05:A322: 0E        .byte con_0E, $03   ; 
- D 1 - I - 0x016334 05:A324: A3 1C     .dbyt off_0E_A31C
loc_16_A326:
- D 1 - I - 0x016336 05:A326: 04        .byte con_04, $08   ; 
- D 1 - I - 0x016338 05:A328: 09        .byte con_09, $01   ; 
- D 1 - I - 0x01633A 05:A32A: 08        .byte con_08, $05   ; 
- D 1 - I - 0x01633C 05:A32C: 18        .byte con_18, $40   ; 
- D 1 - I - 0x01633E 05:A32E: 06        .byte con_06, $64   ; 
off_0E_A330:
- D 1 - I - 0x016340 05:A330: 04        .byte con_04, $08   ; 

- D 1 - I - 0x016342 05:A332: 6A        .byte $6A   ; 
- D 1 - I - 0x016343 05:A333: 6D        .byte $6D   ; 
- D 1 - I - 0x016344 05:A334: 90        .byte $90   ; 
- D 1 - I - 0x016345 05:A335: 93        .byte $93   ; 
- D 1 - I - 0x016346 05:A336: 76        .byte $76   ; 
- D 1 - I - 0x016347 05:A337: 54        .byte $54   ; 
- D 1 - I - 0x016348 05:A338: 53        .byte $53   ; 
- D 1 - I - 0x016349 05:A339: 70        .byte $70   ; 
- D 1 - I - 0x01634A 05:A33A: 73        .byte $73   ; 
- D 1 - I - 0x01634B 05:A33B: 8D        .byte $8D   ; 

- D 1 - I - 0x01634C 05:A33C: 02        .byte con_02   ; 

- D 1 - I - 0x01634D 05:A33D: 8A        .byte $8A   ; 
- D 1 - I - 0x01634E 05:A33E: 69        .byte $69   ; 
- D 1 - I - 0x01634F 05:A33F: 6A        .byte $6A   ; 
- D 1 - I - 0x016350 05:A340: 6D        .byte $6D   ; 
- D 1 - I - 0x016351 05:A341: 85        .byte $85   ; 
- D 1 - I - 0x016352 05:A342: 64        .byte $64   ; 
- D 1 - I - 0x016353 05:A343: 6A        .byte $6A   ; 
- D 1 - I - 0x016354 05:A344: 81        .byte $81   ; 
- D 1 - I - 0x016355 05:A345: 69        .byte $69   ; 
- D 1 - I - 0x016356 05:A346: 65        .byte $65   ; 
- D 1 - I - 0x016357 05:A347: 69        .byte $69   ; 
- D 1 - I - 0x016358 05:A348: 65        .byte $65   ; 
- D 1 - I - 0x016359 05:A349: 8A        .byte $8A   ; 

- D 1 - I - 0x01635A 05:A34A: 12        .byte con_12, $08   ; 
- D 1 - I - 0x01635C 05:A34C: A3 53     .dbyt off_12_A353

- D 1 - I - 0x01635E 05:A34E: 80        .byte $80   ; 

- D 1 - I - 0x01635F 05:A34F: 0E        .byte con_0E, $01   ; 
- D 1 - I - 0x016361 05:A351: A3 30     .dbyt off_0E_A330
off_12_A353:
- D 1 - I - 0x016363 05:A353: 6C        .byte $6C   ; 
- D 1 - I - 0x016364 05:A354: 6D        .byte $6D   ; 

- D 1 - I - 0x016365 05:A355: 08        .byte con_08, $09   ; 

- D 1 - I - 0x016367 05:A357: AF        .byte $AF   ; 
- D 1 - I - 0x016368 05:A358: 91        .byte $91   ; 
- D 1 - I - 0x016369 05:A359: 92        .byte $92   ; 
- D 1 - I - 0x01636A 05:A35A: 91        .byte $91   ; 
- D 1 - I - 0x01636B 05:A35B: 8D        .byte $8D   ; 
- D 1 - I - 0x01636C 05:A35C: B0        .byte $B0   ; 
- D 1 - I - 0x01636D 05:A35D: B1        .byte $B1   ; 
- D 1 - I - 0x01636E 05:A35E: 93        .byte $93   ; 
- D 1 - I - 0x01636F 05:A35F: 94        .byte $94   ; 
- D 1 - I - 0x016370 05:A360: 93        .byte $93   ; 
- D 1 - I - 0x016371 05:A361: 91        .byte $91   ; 
- D 1 - I - 0x016372 05:A362: 96        .byte $96   ; 
- D 1 - I - 0x016373 05:A363: 90        .byte $90   ; 
off_0E_A364:
- D 1 - I - 0x016374 05:A364: 04        .byte con_04, $00   ; 
- D 1 - I - 0x016376 05:A366: 09        .byte con_09, $02   ; 
- D 1 - I - 0x016378 05:A368: 08        .byte con_08, $05   ; 
- D 1 - I - 0x01637A 05:A36A: 06        .byte con_06, $64   ; 
- D 1 - I - 0x01637C 05:A36C: 18        .byte con_18, $80   ; 

- D 1 - I - 0x01637E 05:A36E: 9D        .byte $9D   ; 

- D 1 - I - 0x01637F 05:A36F: 03        .byte con_03   ; 

- D 1 - I - 0x016380 05:A370: 91        .byte $91   ; 
- D 1 - I - 0x016381 05:A371: 8B        .byte $8B   ; 
- D 1 - I - 0x016382 05:A372: 8E        .byte $8E   ; 
- D 1 - I - 0x016383 05:A373: 88        .byte $88   ; 
- D 1 - I - 0x016384 05:A374: 6B        .byte $6B   ; 
- D 1 - I - 0x016385 05:A375: 62        .byte $62   ; 
- D 1 - I - 0x016386 05:A376: A0        .byte $A0   ; 

- D 1 - I - 0x016387 05:A377: 0E        .byte con_0E, $01   ; 
- D 1 - I - 0x016389 05:A379: A3 64     .dbyt off_0E_A364

- D 1 - I - 0x01638B 05:A37B: 81        .byte $81   ; 
- D 1 - I - 0x01638C 05:A37C: 8D        .byte $8D   ; 
- D 1 - I - 0x01638D 05:A37D: 87        .byte $87   ; 
- D 1 - I - 0x01638E 05:A37E: 8A        .byte $8A   ; 
- D 1 - I - 0x01638F 05:A37F: 84        .byte $84   ; 
- D 1 - I - 0x016390 05:A380: 67        .byte $67   ; 
- D 1 - I - 0x016391 05:A381: 61        .byte $61   ; 
- D 1 - I - 0x016392 05:A382: A0        .byte $A0   ; 

- D 1 - I - 0x016393 05:A383: 08        .byte con_08, $04   ; 
- D 1 - I - 0x016395 05:A385: 18        .byte con_18, $40   ; 
- D 1 - I - 0x016397 05:A387: 06        .byte con_06, $C8   ; 
- D 1 - I - 0x016399 05:A389: 00        .byte con_00   ; 

- D 1 - I - 0x01639A 05:A38A: 81        .byte $81   ; 
- D 1 - I - 0x01639B 05:A38B: 82        .byte $82   ; 
- D 1 - I - 0x01639C 05:A38C: 83        .byte $83   ; 
- D 1 - I - 0x01639D 05:A38D: 84        .byte $84   ; 
- D 1 - I - 0x01639E 05:A38E: 85        .byte $85   ; 
- D 1 - I - 0x01639F 05:A38F: 86        .byte $86   ; 
- D 1 - I - 0x0163A0 05:A390: 87        .byte $87   ; 
- D 1 - I - 0x0163A1 05:A391: 88        .byte $88   ; 
- D 1 - I - 0x0163A2 05:A392: 89        .byte $89   ; 
- D 1 - I - 0x0163A3 05:A393: 8A        .byte $8A   ; 
- D 1 - I - 0x0163A4 05:A394: 8B        .byte $8B   ; 
- D 1 - I - 0x0163A5 05:A395: 8C        .byte $8C   ; 

- D 1 - I - 0x0163A6 05:A396: 16        .byte con_jump   ; 
- D 1 - I - 0x0163A7 05:A397: A3 26     .dbyt loc_16_A326


; bzk garbage
- - - - - - 0x0163A9 05:A399: 17        .byte con_stop   ; 



_off019_09_A39A_01:
- D 1 - I - 0x0163AA 05:A39A: 06        .byte con_06, $C8   ; 
- D 1 - I - 0x0163AC 05:A39C: 07        .byte con_07, $08   ; 
- D 1 - I - 0x0163AE 05:A39E: 08        .byte con_08, $00   ; 
- D 1 - I - 0x0163B0 05:A3A0: 09        .byte con_09, $01   ; 
off_0E_A3A2:
- D 1 - I - 0x0163B2 05:A3A2: 04        .byte con_04, $00   ; 

- D 1 - I - 0x0163B4 05:A3A4: 7F        .byte $7F   ; 

- D 1 - I - 0x0163B5 05:A3A5: 03        .byte con_03   ; 

- D 1 - I - 0x0163B6 05:A3A6: 68        .byte $68   ; 
- D 1 - I - 0x0163B7 05:A3A7: 69        .byte $69   ; 
- D 1 - I - 0x0163B8 05:A3A8: 6A        .byte $6A   ; 

- D 1 - I - 0x0163B9 05:A3A9: 0E        .byte con_0E, $03   ; 
- D 1 - I - 0x0163BB 05:A3AB: A3 A2     .dbyt off_0E_A3A2
loc_16_A3AD:
- D 1 - I - 0x0163BD 05:A3AD: 04        .byte con_04, $00   ; 
off_0E_A3AF:
- D 1 - I - 0x0163BF 05:A3AF: 04        .byte con_04, $00   ; 
- D 1 - I - 0x0163C1 05:A3B1: 07        .byte con_07, $07   ; 
- D 1 - I - 0x0163C3 05:A3B3: 18        .byte con_18, $80   ; 
- D 1 - I - 0x0163C5 05:A3B5: 09        .byte con_09, $01   ; 
- D 1 - I - 0x0163C7 05:A3B7: 06        .byte con_06, $64   ; 
- D 1 - I - 0x0163C9 05:A3B9: 08        .byte con_08, $05   ; 

- D 1 - I - 0x0163CB 05:A3BB: 7B        .byte $7B   ; 
- D 1 - I - 0x0163CC 05:A3BC: 7C        .byte $7C   ; 
- D 1 - I - 0x0163CD 05:A3BD: 7B        .byte $7B   ; 
- D 1 - I - 0x0163CE 05:A3BE: 7C        .byte $7C   ; 
- D 1 - I - 0x0163CF 05:A3BF: 75        .byte $75   ; 
- D 1 - I - 0x0163D0 05:A3C0: 60        .byte $60   ; 
- D 1 - I - 0x0163D1 05:A3C1: 75        .byte $75   ; 
- D 1 - I - 0x0163D2 05:A3C2: 9B        .byte $9B   ; 
- D 1 - I - 0x0163D3 05:A3C3: 7C        .byte $7C   ; 
- D 1 - I - 0x0163D4 05:A3C4: 7B        .byte $7B   ; 
- D 1 - I - 0x0163D5 05:A3C5: 7C        .byte $7C   ; 
- D 1 - I - 0x0163D6 05:A3C6: 75        .byte $75   ; 

- D 1 - I - 0x0163D7 05:A3C7: 09        .byte con_09, $02   ; 
- D 1 - I - 0x0163D9 05:A3C9: 03        .byte con_03   ; 

- D 1 - I - 0x0163DA 05:A3CA: 69        .byte $69   ; 
- D 1 - I - 0x0163DB 05:A3CB: 6A        .byte $6A   ; 
- D 1 - I - 0x0163DC 05:A3CC: 69        .byte $69   ; 

- D 1 - I - 0x0163DD 05:A3CD: 09        .byte con_09, $01   ; 

- D 1 - I - 0x0163DF 05:A3CF: 63        .byte $63   ; 
- D 1 - I - 0x0163E0 05:A3D0: 64        .byte $64   ; 
- D 1 - I - 0x0163E1 05:A3D1: 63        .byte $63   ; 
- D 1 - I - 0x0163E2 05:A3D2: 64        .byte $64   ; 

- D 1 - I - 0x0163E3 05:A3D3: 03        .byte con_03   ; 

- D 1 - I - 0x0163E4 05:A3D4: 75        .byte $75   ; 
- D 1 - I - 0x0163E5 05:A3D5: 60        .byte $60   ; 
- D 1 - I - 0x0163E6 05:A3D6: 75        .byte $75   ; 

- D 1 - I - 0x0163E7 05:A3D7: 03        .byte con_03   ; 

- D 1 - I - 0x0163E8 05:A3D8: 8C        .byte $8C   ; 
- D 1 - I - 0x0163E9 05:A3D9: 6D        .byte $6D   ; 
- D 1 - I - 0x0163EA 05:A3DA: 6C        .byte $6C   ; 
- D 1 - I - 0x0163EB 05:A3DB: 6D        .byte $6D   ; 

- D 1 - I - 0x0163EC 05:A3DC: 03        .byte con_03   ; 

- D 1 - I - 0x0163ED 05:A3DD: 75        .byte $75   ; 

- D 1 - I - 0x0163EE 05:A3DE: 09        .byte con_09, $02   ; 
- D 1 - I - 0x0163F0 05:A3E0: 03        .byte con_03   ; 

- D 1 - I - 0x0163F1 05:A3E1: 6C        .byte $6C   ; 
- D 1 - I - 0x0163F2 05:A3E2: 6B        .byte $6B   ; 
- D 1 - I - 0x0163F3 05:A3E3: 6A        .byte $6A   ; 

- D 1 - I - 0x0163F4 05:A3E4: 0E        .byte con_0E, $01   ; 
- D 1 - I - 0x0163F6 05:A3E6: A3 AF     .dbyt off_0E_A3AF

- D 1 - I - 0x0163F8 05:A3E8: 18        .byte con_18, $80   ; 
- D 1 - I - 0x0163FA 05:A3EA: 09        .byte con_09, $02   ; 

- D 1 - I - 0x0163FC 05:A3EC: 63        .byte $63   ; 
- D 1 - I - 0x0163FD 05:A3ED: 65        .byte $65   ; 
- D 1 - I - 0x0163FE 05:A3EE: 66        .byte $66   ; 
- D 1 - I - 0x0163FF 05:A3EF: 6D        .byte $6D   ; 
- D 1 - I - 0x016400 05:A3F0: 63        .byte $63   ; 
- D 1 - I - 0x016401 05:A3F1: 65        .byte $65   ; 
- D 1 - I - 0x016402 05:A3F2: 66        .byte $66   ; 
- D 1 - I - 0x016403 05:A3F3: 6D        .byte $6D   ; 
- D 1 - I - 0x016404 05:A3F4: 64        .byte $64   ; 
- D 1 - I - 0x016405 05:A3F5: 65        .byte $65   ; 
- D 1 - I - 0x016406 05:A3F6: 66        .byte $66   ; 
- D 1 - I - 0x016407 05:A3F7: 6C        .byte $6C   ; 
- D 1 - I - 0x016408 05:A3F8: 63        .byte $63   ; 
- D 1 - I - 0x016409 05:A3F9: 64        .byte $64   ; 
- D 1 - I - 0x01640A 05:A3FA: 65        .byte $65   ; 
- D 1 - I - 0x01640B 05:A3FB: 6B        .byte $6B   ; 
- D 1 - I - 0x01640C 05:A3FC: 69        .byte $69   ; 
- D 1 - I - 0x01640D 05:A3FD: 6A        .byte $6A   ; 
- D 1 - I - 0x01640E 05:A3FE: 6B        .byte $6B   ; 
- D 1 - I - 0x01640F 05:A3FF: 71        .byte $71   ; 
- D 1 - I - 0x016410 05:A400: 67        .byte $67   ; 
- D 1 - I - 0x016411 05:A401: 68        .byte $68   ; 
- D 1 - I - 0x016412 05:A402: 69        .byte $69   ; 
- D 1 - I - 0x016413 05:A403: 6F        .byte $6F   ; 
- D 1 - I - 0x016414 05:A404: 68        .byte $68   ; 
- D 1 - I - 0x016415 05:A405: 67        .byte $67   ; 
- D 1 - I - 0x016416 05:A406: 66        .byte $66   ; 
- D 1 - I - 0x016417 05:A407: 67        .byte $67   ; 
- D 1 - I - 0x016418 05:A408: 65        .byte $65   ; 
- D 1 - I - 0x016419 05:A409: 64        .byte $64   ; 
- D 1 - I - 0x01641A 05:A40A: 62        .byte $62   ; 
- D 1 - I - 0x01641B 05:A40B: 64        .byte $64   ; 
off_0E_A40C:
- D 1 - I - 0x01641C 05:A40C: 04        .byte con_04, $08   ; 
- D 1 - I - 0x01641E 05:A40E: 18        .byte con_18, $40   ; 

- D 1 - I - 0x016420 05:A410: 68        .byte $68   ; 
- D 1 - I - 0x016421 05:A411: 69        .byte $69   ; 
- D 1 - I - 0x016422 05:A412: 67        .byte $67   ; 
- D 1 - I - 0x016423 05:A413: 68        .byte $68   ; 
- D 1 - I - 0x016424 05:A414: 66        .byte $66   ; 
- D 1 - I - 0x016425 05:A415: 67        .byte $67   ; 
- D 1 - I - 0x016426 05:A416: 64        .byte $64   ; 
- D 1 - I - 0x016427 05:A417: 88        .byte $88   ; 
- D 1 - I - 0x016428 05:A418: 69        .byte $69   ; 
- D 1 - I - 0x016429 05:A419: 67        .byte $67   ; 
- D 1 - I - 0x01642A 05:A41A: 68        .byte $68   ; 
- D 1 - I - 0x01642B 05:A41B: 66        .byte $66   ; 
- D 1 - I - 0x01642C 05:A41C: 67        .byte $67   ; 
- D 1 - I - 0x01642D 05:A41D: 84        .byte $84   ; 

- D 1 - I - 0x01642E 05:A41E: 0E        .byte con_0E, $01   ; 
- D 1 - I - 0x016430 05:A420: A4 0C     .dbyt off_0E_A40C

- D 1 - I - 0x016432 05:A422: 67        .byte $67   ; 
- D 1 - I - 0x016433 05:A423: 68        .byte $68   ; 
- D 1 - I - 0x016434 05:A424: 66        .byte $66   ; 
- D 1 - I - 0x016435 05:A425: 67        .byte $67   ; 
- D 1 - I - 0x016436 05:A426: 64        .byte $64   ; 
- D 1 - I - 0x016437 05:A427: 67        .byte $67   ; 
- D 1 - I - 0x016438 05:A428: 61        .byte $61   ; 
- D 1 - I - 0x016439 05:A429: 87        .byte $87   ; 
- D 1 - I - 0x01643A 05:A42A: 68        .byte $68   ; 
- D 1 - I - 0x01643B 05:A42B: 66        .byte $66   ; 
- D 1 - I - 0x01643C 05:A42C: 67        .byte $67   ; 
- D 1 - I - 0x01643D 05:A42D: 64        .byte $64   ; 
- D 1 - I - 0x01643E 05:A42E: 67        .byte $67   ; 
- D 1 - I - 0x01643F 05:A42F: 81        .byte $81   ; 

- D 1 - I - 0x016440 05:A430: 08        .byte con_08, $09   ; 
- D 1 - I - 0x016442 05:A432: 07        .byte con_07, $08   ; 
- D 1 - I - 0x016444 05:A434: 06        .byte con_06, $64   ; 
- D 1 - I - 0x016446 05:A436: 18        .byte con_18, $80   ; 

- D 1 - I - 0x016448 05:A438: 61        .byte $61   ; 
- D 1 - I - 0x016449 05:A439: 62        .byte $62   ; 
- D 1 - I - 0x01644A 05:A43A: 63        .byte $63   ; 
- D 1 - I - 0x01644B 05:A43B: 64        .byte $64   ; 
- D 1 - I - 0x01644C 05:A43C: 63        .byte $63   ; 
- D 1 - I - 0x01644D 05:A43D: 64        .byte $64   ; 
- D 1 - I - 0x01644E 05:A43E: 65        .byte $65   ; 
- D 1 - I - 0x01644F 05:A43F: 66        .byte $66   ; 
- D 1 - I - 0x016450 05:A440: 65        .byte $65   ; 
- D 1 - I - 0x016451 05:A441: 66        .byte $66   ; 
- D 1 - I - 0x016452 05:A442: 67        .byte $67   ; 
- D 1 - I - 0x016453 05:A443: 68        .byte $68   ; 
- D 1 - I - 0x016454 05:A444: 67        .byte $67   ; 
- D 1 - I - 0x016455 05:A445: 68        .byte $68   ; 
- D 1 - I - 0x016456 05:A446: 69        .byte $69   ; 
- D 1 - I - 0x016457 05:A447: 6A        .byte $6A   ; 

- D 1 - I - 0x016458 05:A448: 16        .byte con_jump   ; 
- D 1 - I - 0x016459 05:A449: A3 AD     .dbyt loc_16_A3AD


; bzk garbage
- - - - - - 0x01645B 05:A44B: 17        .byte con_stop   ; 



_off019_09_A44C_02:
- D 1 - I - 0x01645C 05:A44C: 06        .byte con_06, $C8   ; 
- D 1 - I - 0x01645E 05:A44E: 08        .byte con_08, $00   ; 
- D 1 - I - 0x016460 05:A450: 09        .byte con_09, $02   ; 

- D 1 - I - 0x016462 05:A452: B6        .byte $B6   ; 
- D 1 - I - 0x016463 05:A453: B0        .byte $B0   ; 
- D 1 - I - 0x016464 05:A454: AF        .byte $AF   ; 
- D 1 - I - 0x016465 05:A455: B3        .byte $B3   ; 
loc_16_A456:
- D 1 - I - 0x016466 05:A456: 04        .byte con_04, $00   ; 
off_0E_A458:
- D 1 - I - 0x016468 05:A458: 04        .byte con_04, $00   ; 

- D 1 - I - 0x01646A 05:A45A: 8A        .byte $8A   ; 
- D 1 - I - 0x01646B 05:A45B: 76        .byte $76   ; 
- D 1 - I - 0x01646C 05:A45C: 6A        .byte $6A   ; 
- D 1 - I - 0x01646D 05:A45D: 60        .byte $60   ; 
- D 1 - I - 0x01646E 05:A45E: 6A        .byte $6A   ; 
- D 1 - I - 0x01646F 05:A45F: 76        .byte $76   ; 
- D 1 - I - 0x016470 05:A460: 6A        .byte $6A   ; 

- D 1 - I - 0x016471 05:A461: 0E        .byte con_0E, $07   ; 
- D 1 - I - 0x016473 05:A463: A4 58     .dbyt off_0E_A458

- D 1 - I - 0x016475 05:A465: 77        .byte $77   ; 
- D 1 - I - 0x016476 05:A466: 77        .byte $77   ; 
- D 1 - I - 0x016477 05:A467: 77        .byte $77   ; 
- D 1 - I - 0x016478 05:A468: 60        .byte $60   ; 
- D 1 - I - 0x016479 05:A469: 79        .byte $79   ; 
- D 1 - I - 0x01647A 05:A46A: 79        .byte $79   ; 
- D 1 - I - 0x01647B 05:A46B: 79        .byte $79   ; 
- D 1 - I - 0x01647C 05:A46C: 60        .byte $60   ; 
- D 1 - I - 0x01647D 05:A46D: 7B        .byte $7B   ; 
- D 1 - I - 0x01647E 05:A46E: 60        .byte $60   ; 
- D 1 - I - 0x01647F 05:A46F: 7B        .byte $7B   ; 
- D 1 - I - 0x016480 05:A470: 60        .byte $60   ; 
- D 1 - I - 0x016481 05:A471: B6        .byte $B6   ; 
- D 1 - I - 0x016482 05:A472: 75        .byte $75   ; 
- D 1 - I - 0x016483 05:A473: 75        .byte $75   ; 
- D 1 - I - 0x016484 05:A474: 75        .byte $75   ; 
- D 1 - I - 0x016485 05:A475: 60        .byte $60   ; 
- D 1 - I - 0x016486 05:A476: 76        .byte $76   ; 
- D 1 - I - 0x016487 05:A477: 76        .byte $76   ; 
- D 1 - I - 0x016488 05:A478: 76        .byte $76   ; 
- D 1 - I - 0x016489 05:A479: 60        .byte $60   ; 
- D 1 - I - 0x01648A 05:A47A: 77        .byte $77   ; 
- D 1 - I - 0x01648B 05:A47B: 60        .byte $60   ; 
- D 1 - I - 0x01648C 05:A47C: 77        .byte $77   ; 
- D 1 - I - 0x01648D 05:A47D: 60        .byte $60   ; 
- D 1 - I - 0x01648E 05:A47E: B8        .byte $B8   ; 
off_0E_A47F:
- D 1 - I - 0x01648F 05:A47F: 04        .byte con_04, $00   ; 

- D 1 - I - 0x016491 05:A481: 8D        .byte $8D   ; 
- D 1 - I - 0x016492 05:A482: 79        .byte $79   ; 
- D 1 - I - 0x016493 05:A483: 6D        .byte $6D   ; 
- D 1 - I - 0x016494 05:A484: 60        .byte $60   ; 
- D 1 - I - 0x016495 05:A485: 6D        .byte $6D   ; 
- D 1 - I - 0x016496 05:A486: 79        .byte $79   ; 
- D 1 - I - 0x016497 05:A487: 6D        .byte $6D   ; 

- D 1 - I - 0x016498 05:A488: 0E        .byte con_0E, $03   ; 
- D 1 - I - 0x01649A 05:A48A: A4 7F     .dbyt off_0E_A47F
off_0E_A48C:
- D 1 - I - 0x01649C 05:A48C: 04        .byte con_04, $00   ; 

- D 1 - I - 0x01649E 05:A48E: 89        .byte $89   ; 
- D 1 - I - 0x01649F 05:A48F: 75        .byte $75   ; 
- D 1 - I - 0x0164A0 05:A490: 69        .byte $69   ; 
- D 1 - I - 0x0164A1 05:A491: 60        .byte $60   ; 
- D 1 - I - 0x0164A2 05:A492: 69        .byte $69   ; 
- D 1 - I - 0x0164A3 05:A493: 75        .byte $75   ; 
- D 1 - I - 0x0164A4 05:A494: 69        .byte $69   ; 

- D 1 - I - 0x0164A5 05:A495: 0E        .byte con_0E, $03   ; 
- D 1 - I - 0x0164A7 05:A497: A4 8C     .dbyt off_0E_A48C

- D 1 - I - 0x0164A9 05:A499: 16        .byte con_jump   ; 
- D 1 - I - 0x0164AA 05:A49A: A4 56     .dbyt loc_16_A456


; bzk garbage
- - - - - - 0x0164AC 05:A49C: 17        .byte con_stop   ; 



_off019_09_A49D_03:
- D 1 - I - 0x0164AD 05:A49D: 06        .byte con_06, $64   ; 
- D 1 - I - 0x0164AF 05:A49F: 07        .byte con_07, $0A   ; 
- D 1 - I - 0x0164B1 05:A4A1: 08        .byte con_08, $0B   ; 

- D 1 - I - 0x0164B3 05:A4A3: AD        .byte $AD   ; 
- D 1 - I - 0x0164B4 05:A4A4: AC        .byte $AC   ; 
- D 1 - I - 0x0164B5 05:A4A5: AA        .byte $AA   ; 
- D 1 - I - 0x0164B6 05:A4A6: A8        .byte $A8   ; 
loc_16_A4A7:
- D 1 - I - 0x0164B7 05:A4A7: 04        .byte con_04, $00   ; 
- D 1 - I - 0x0164B9 05:A4A9: 07        .byte con_07, $08   ; 
off_0E_A4AB:
- D 1 - I - 0x0164BB 05:A4AB: 04        .byte con_04, $00   ; 
- D 1 - I - 0x0164BD 05:A4AD: 08        .byte con_08, $0A   ; 

- D 1 - I - 0x0164BF 05:A4AF: 68        .byte $68   ; 
- D 1 - I - 0x0164C0 05:A4B0: 6F        .byte $6F   ; 
- D 1 - I - 0x0164C1 05:A4B1: 6C        .byte $6C   ; 
- D 1 - I - 0x0164C2 05:A4B2: 68        .byte $68   ; 
- D 1 - I - 0x0164C3 05:A4B3: 6F        .byte $6F   ; 
- D 1 - I - 0x0164C4 05:A4B4: 68        .byte $68   ; 
- D 1 - I - 0x0164C5 05:A4B5: 6C        .byte $6C   ; 
- D 1 - I - 0x0164C6 05:A4B6: 6F        .byte $6F   ; 
- D 1 - I - 0x0164C7 05:A4B7: 68        .byte $68   ; 
- D 1 - I - 0x0164C8 05:A4B8: 68        .byte $68   ; 
- D 1 - I - 0x0164C9 05:A4B9: 6C        .byte $6C   ; 
- D 1 - I - 0x0164CA 05:A4BA: 60        .byte $60   ; 
- D 1 - I - 0x0164CB 05:A4BB: 68        .byte $68   ; 
- D 1 - I - 0x0164CC 05:A4BC: 68        .byte $68   ; 
- D 1 - I - 0x0164CD 05:A4BD: 6C        .byte $6C   ; 
- D 1 - I - 0x0164CE 05:A4BE: 60        .byte $60   ; 

- D 1 - I - 0x0164CF 05:A4BF: 0E        .byte con_0E, $03   ; 
- D 1 - I - 0x0164D1 05:A4C1: A4 AB     .dbyt off_0E_A4AB

- D 1 - I - 0x0164D3 05:A4C3: 08        .byte con_08, $0B   ; 
- D 1 - I - 0x0164D5 05:A4C5: 07        .byte con_07, $0A   ; 

- D 1 - I - 0x0164D7 05:A4C7: AD        .byte $AD   ; 
- D 1 - I - 0x0164D8 05:A4C8: AC        .byte $AC   ; 
- D 1 - I - 0x0164D9 05:A4C9: AA        .byte $AA   ; 
- D 1 - I - 0x0164DA 05:A4CA: A8        .byte $A8   ; 
- D 1 - I - 0x0164DB 05:A4CB: AD        .byte $AD   ; 
- D 1 - I - 0x0164DC 05:A4CC: AC        .byte $AC   ; 
- D 1 - I - 0x0164DD 05:A4CD: AA        .byte $AA   ; 
- D 1 - I - 0x0164DE 05:A4CE: A8        .byte $A8   ; 

- D 1 - I - 0x0164DF 05:A4CF: 08        .byte con_08, $0A   ; 
- D 1 - I - 0x0164E1 05:A4D1: 07        .byte con_07, $08   ; 
off_0E_A4D3:
- D 1 - I - 0x0164E3 05:A4D3: 04        .byte con_04, $00   ; 

- D 1 - I - 0x0164E5 05:A4D5: 68        .byte $68   ; 
- D 1 - I - 0x0164E6 05:A4D6: 6F        .byte $6F   ; 
- D 1 - I - 0x0164E7 05:A4D7: 6C        .byte $6C   ; 
- D 1 - I - 0x0164E8 05:A4D8: 68        .byte $68   ; 
- D 1 - I - 0x0164E9 05:A4D9: 60        .byte $60   ; 
- D 1 - I - 0x0164EA 05:A4DA: 68        .byte $68   ; 
- D 1 - I - 0x0164EB 05:A4DB: 6C        .byte $6C   ; 
- D 1 - I - 0x0164EC 05:A4DC: 68        .byte $68   ; 

- D 1 - I - 0x0164ED 05:A4DD: 0E        .byte con_0E, $05   ; 
- D 1 - I - 0x0164EF 05:A4DF: A4 D3     .dbyt off_0E_A4D3

- D 1 - I - 0x0164F1 05:A4E1: 68        .byte $68   ; 
- D 1 - I - 0x0164F2 05:A4E2: 6F        .byte $6F   ; 
- D 1 - I - 0x0164F3 05:A4E3: 6C        .byte $6C   ; 
- D 1 - I - 0x0164F4 05:A4E4: 6F        .byte $6F   ; 
- D 1 - I - 0x0164F5 05:A4E5: 68        .byte $68   ; 
- D 1 - I - 0x0164F6 05:A4E6: 68        .byte $68   ; 
- D 1 - I - 0x0164F7 05:A4E7: 6C        .byte $6C   ; 
- D 1 - I - 0x0164F8 05:A4E8: 6F        .byte $6F   ; 

- D 1 - I - 0x0164F9 05:A4E9: 08        .byte con_08, $16   ; 
- D 1 - I - 0x0164FB 05:A4EB: 07        .byte con_07, $07   ; 

- D 1 - I - 0x0164FD 05:A4ED: 4C        .byte $4C   ; 
- D 1 - I - 0x0164FE 05:A4EE: 40        .byte $40   ; 
- D 1 - I - 0x0164FF 05:A4EF: 4C        .byte $4C   ; 
- D 1 - I - 0x016500 05:A4F0: 4C        .byte $4C   ; 
- D 1 - I - 0x016501 05:A4F1: 4C        .byte $4C   ; 
- D 1 - I - 0x016502 05:A4F2: 40        .byte $40   ; 
- D 1 - I - 0x016503 05:A4F3: 4C        .byte $4C   ; 
- D 1 - I - 0x016504 05:A4F4: 4C        .byte $4C   ; 
- D 1 - I - 0x016505 05:A4F5: 4C        .byte $4C   ; 
- D 1 - I - 0x016506 05:A4F6: 40        .byte $40   ; 
- D 1 - I - 0x016507 05:A4F7: 4C        .byte $4C   ; 
- D 1 - I - 0x016508 05:A4F8: 4C        .byte $4C   ; 
- D 1 - I - 0x016509 05:A4F9: 4C        .byte $4C   ; 
- D 1 - I - 0x01650A 05:A4FA: 40        .byte $40   ; 
- D 1 - I - 0x01650B 05:A4FB: 4C        .byte $4C   ; 
- D 1 - I - 0x01650C 05:A4FC: 4C        .byte $4C   ; 

- D 1 - I - 0x01650D 05:A4FD: 16        .byte con_jump   ; 
- D 1 - I - 0x01650E 05:A4FE: A4 A7     .dbyt loc_16_A4A7


; bzk garbage
- - - - - - 0x016510 05:A500: 17        .byte con_stop   ; 



_music_A501_0A_cutscene_01:
- D 1 - I - 0x016511 05:A501: 00        .byte $00   ; 
- D 1 - I - 0x016512 05:A502: A5 0A     .dbyt _off019_0A_A50A_00
- D 1 - I - 0x016514 05:A504: A5 65     .dbyt _off019_0A_A565_01
- D 1 - I - 0x016516 05:A506: A5 BD     .dbyt _off019_0A_A5BD_02
- D 1 - I - 0x016518 05:A508: A5 F2     .dbyt _off019_0A_A5F2_03_disable



_off019_0A_A50A_00:
- D 1 - I - 0x01651A 05:A50A: 05        .byte con_05, $01, $99   ; 
- D 1 - I - 0x01651D 05:A50D: 0A        .byte con_0A, $03   ; 
- D 1 - I - 0x01651F 05:A50F: 06        .byte con_06, $64   ; 
- D 1 - I - 0x016521 05:A511: 07        .byte con_07, $0B   ; 
- D 1 - I - 0x016523 05:A513: 08        .byte con_08, $01   ; 
- D 1 - I - 0x016525 05:A515: 09        .byte con_09, $02   ; 
- D 1 - I - 0x016527 05:A517: 18        .byte con_18, $40   ; 
loc_16_A519:
- D 1 - I - 0x016529 05:A519: 04        .byte con_04, $00   ; 

- D 1 - I - 0x01652B 05:A51B: 61        .byte $61   ; 
- D 1 - I - 0x01652C 05:A51C: 65        .byte $65   ; 
- D 1 - I - 0x01652D 05:A51D: 68        .byte $68   ; 
- D 1 - I - 0x01652E 05:A51E: 6C        .byte $6C   ; 
- D 1 - I - 0x01652F 05:A51F: 6D        .byte $6D   ; 
- D 1 - I - 0x016530 05:A520: 71        .byte $71   ; 
- D 1 - I - 0x016531 05:A521: 74        .byte $74   ; 
- D 1 - I - 0x016532 05:A522: 78        .byte $78   ; 
- D 1 - I - 0x016533 05:A523: 79        .byte $79   ; 
- D 1 - I - 0x016534 05:A524: 7D        .byte $7D   ; 

- D 1 - I - 0x016535 05:A525: 03        .byte con_03   ; 

- D 1 - I - 0x016536 05:A526: 68        .byte $68   ; 
- D 1 - I - 0x016537 05:A527: 6C        .byte $6C   ; 
- D 1 - I - 0x016538 05:A528: 6A        .byte $6A   ; 
- D 1 - I - 0x016539 05:A529: 68        .byte $68   ; 
- D 1 - I - 0x01653A 05:A52A: 67        .byte $67   ; 
- D 1 - I - 0x01653B 05:A52B: 68        .byte $68   ; 

- D 1 - I - 0x01653C 05:A52C: 03        .byte con_03   ; 

- D 1 - I - 0x01653D 05:A52D: 63        .byte $63   ; 
- D 1 - I - 0x01653E 05:A52E: 66        .byte $66   ; 
- D 1 - I - 0x01653F 05:A52F: 6A        .byte $6A   ; 
- D 1 - I - 0x016540 05:A530: 6D        .byte $6D   ; 
- D 1 - I - 0x016541 05:A531: 6F        .byte $6F   ; 
- D 1 - I - 0x016542 05:A532: 72        .byte $72   ; 
- D 1 - I - 0x016543 05:A533: 76        .byte $76   ; 
- D 1 - I - 0x016544 05:A534: 79        .byte $79   ; 
- D 1 - I - 0x016545 05:A535: 7B        .byte $7B   ; 
- D 1 - I - 0x016546 05:A536: 7E        .byte $7E   ; 

- D 1 - I - 0x016547 05:A537: 03        .byte con_03   ; 

- D 1 - I - 0x016548 05:A538: 6A        .byte $6A   ; 
- D 1 - I - 0x016549 05:A539: 6F        .byte $6F   ; 
- D 1 - I - 0x01654A 05:A53A: 6D        .byte $6D   ; 
- D 1 - I - 0x01654B 05:A53B: 6C        .byte $6C   ; 
- D 1 - I - 0x01654C 05:A53C: 6A        .byte $6A   ; 
- D 1 - I - 0x01654D 05:A53D: 6C        .byte $6C   ; 

- D 1 - I - 0x01654E 05:A53E: 03        .byte con_03   ; 

- D 1 - I - 0x01654F 05:A53F: 65        .byte $65   ; 
- D 1 - I - 0x016550 05:A540: 68        .byte $68   ; 
- D 1 - I - 0x016551 05:A541: 6C        .byte $6C   ; 
- D 1 - I - 0x016552 05:A542: 6F        .byte $6F   ; 
- D 1 - I - 0x016553 05:A543: 71        .byte $71   ; 
- D 1 - I - 0x016554 05:A544: 74        .byte $74   ; 
- D 1 - I - 0x016555 05:A545: 78        .byte $78   ; 
- D 1 - I - 0x016556 05:A546: 7B        .byte $7B   ; 
- D 1 - I - 0x016557 05:A547: 7D        .byte $7D   ; 

- D 1 - I - 0x016558 05:A548: 03        .byte con_03   ; 

- D 1 - I - 0x016559 05:A549: 68        .byte $68   ; 
- D 1 - I - 0x01655A 05:A54A: 6C        .byte $6C   ; 
- D 1 - I - 0x01655B 05:A54B: 71        .byte $71   ; 
- D 1 - I - 0x01655C 05:A54C: 6F        .byte $6F   ; 
- D 1 - I - 0x01655D 05:A54D: 6D        .byte $6D   ; 
- D 1 - I - 0x01655E 05:A54E: 6C        .byte $6C   ; 
- D 1 - I - 0x01655F 05:A54F: 6D        .byte $6D   ; 

- D 1 - I - 0x016560 05:A550: 03        .byte con_03   ; 

- D 1 - I - 0x016561 05:A551: 64        .byte $64   ; 
- D 1 - I - 0x016562 05:A552: 68        .byte $68   ; 
- D 1 - I - 0x016563 05:A553: 6B        .byte $6B   ; 
- D 1 - I - 0x016564 05:A554: 6F        .byte $6F   ; 
- D 1 - I - 0x016565 05:A555: 70        .byte $70   ; 
- D 1 - I - 0x016566 05:A556: 74        .byte $74   ; 
- D 1 - I - 0x016567 05:A557: 77        .byte $77   ; 
- D 1 - I - 0x016568 05:A558: 7B        .byte $7B   ; 
- D 1 - I - 0x016569 05:A559: 62        .byte $62   ; 
- D 1 - I - 0x01656A 05:A55A: 66        .byte $66   ; 
- D 1 - I - 0x01656B 05:A55B: 69        .byte $69   ; 
- D 1 - I - 0x01656C 05:A55C: 6D        .byte $6D   ; 
- D 1 - I - 0x01656D 05:A55D: 6E        .byte $6E   ; 
- D 1 - I - 0x01656E 05:A55E: 72        .byte $72   ; 
- D 1 - I - 0x01656F 05:A55F: 75        .byte $75   ; 
- D 1 - I - 0x016570 05:A560: 79        .byte $79   ; 

- D 1 - I - 0x016571 05:A561: 16        .byte con_jump   ; 
- D 1 - I - 0x016572 05:A562: A5 19     .dbyt loc_16_A519


; bzk garbage
- - - - - - 0x016574 05:A564: 17        .byte con_stop   ; 



_off019_0A_A565_01:
- D 1 - I - 0x016575 05:A565: 06        .byte con_06, $64   ; 
- D 1 - I - 0x016577 05:A567: 07        .byte con_07, $09   ; 
- D 1 - I - 0x016579 05:A569: 08        .byte con_08, $01   ; 
- D 1 - I - 0x01657B 05:A56B: 09        .byte con_09, $02   ; 
- D 1 - I - 0x01657D 05:A56D: 18        .byte con_18, $40   ; 
- D 1 - I - 0x01657F 05:A56F: 02        .byte con_02   ; 

- D 1 - I - 0x016580 05:A570: 60        .byte $60   ; 
loc_16_A571:
- D 1 - I - 0x016581 05:A571: 04        .byte con_04, $00   ; 

- D 1 - I - 0x016583 05:A573: 61        .byte $61   ; 
- D 1 - I - 0x016584 05:A574: 65        .byte $65   ; 
- D 1 - I - 0x016585 05:A575: 68        .byte $68   ; 
- D 1 - I - 0x016586 05:A576: 6C        .byte $6C   ; 
- D 1 - I - 0x016587 05:A577: 6D        .byte $6D   ; 
- D 1 - I - 0x016588 05:A578: 71        .byte $71   ; 
- D 1 - I - 0x016589 05:A579: 74        .byte $74   ; 
- D 1 - I - 0x01658A 05:A57A: 78        .byte $78   ; 
- D 1 - I - 0x01658B 05:A57B: 79        .byte $79   ; 
- D 1 - I - 0x01658C 05:A57C: 7D        .byte $7D   ; 

- D 1 - I - 0x01658D 05:A57D: 03        .byte con_03   ; 

- D 1 - I - 0x01658E 05:A57E: 68        .byte $68   ; 
- D 1 - I - 0x01658F 05:A57F: 6C        .byte $6C   ; 
- D 1 - I - 0x016590 05:A580: 6A        .byte $6A   ; 
- D 1 - I - 0x016591 05:A581: 68        .byte $68   ; 
- D 1 - I - 0x016592 05:A582: 67        .byte $67   ; 
- D 1 - I - 0x016593 05:A583: 68        .byte $68   ; 

- D 1 - I - 0x016594 05:A584: 03        .byte con_03   ; 

- D 1 - I - 0x016595 05:A585: 63        .byte $63   ; 
- D 1 - I - 0x016596 05:A586: 66        .byte $66   ; 
- D 1 - I - 0x016597 05:A587: 6A        .byte $6A   ; 
- D 1 - I - 0x016598 05:A588: 6D        .byte $6D   ; 
- D 1 - I - 0x016599 05:A589: 6F        .byte $6F   ; 
- D 1 - I - 0x01659A 05:A58A: 72        .byte $72   ; 
- D 1 - I - 0x01659B 05:A58B: 76        .byte $76   ; 
- D 1 - I - 0x01659C 05:A58C: 79        .byte $79   ; 
- D 1 - I - 0x01659D 05:A58D: 7B        .byte $7B   ; 
- D 1 - I - 0x01659E 05:A58E: 7E        .byte $7E   ; 

- D 1 - I - 0x01659F 05:A58F: 03        .byte con_03   ; 

- D 1 - I - 0x0165A0 05:A590: 6A        .byte $6A   ; 
- D 1 - I - 0x0165A1 05:A591: 6F        .byte $6F   ; 
- D 1 - I - 0x0165A2 05:A592: 6D        .byte $6D   ; 
- D 1 - I - 0x0165A3 05:A593: 6C        .byte $6C   ; 
- D 1 - I - 0x0165A4 05:A594: 6A        .byte $6A   ; 
- D 1 - I - 0x0165A5 05:A595: 6C        .byte $6C   ; 

- D 1 - I - 0x0165A6 05:A596: 03        .byte con_03   ; 

- D 1 - I - 0x0165A7 05:A597: 65        .byte $65   ; 
- D 1 - I - 0x0165A8 05:A598: 68        .byte $68   ; 
- D 1 - I - 0x0165A9 05:A599: 6C        .byte $6C   ; 
- D 1 - I - 0x0165AA 05:A59A: 6F        .byte $6F   ; 
- D 1 - I - 0x0165AB 05:A59B: 71        .byte $71   ; 
- D 1 - I - 0x0165AC 05:A59C: 74        .byte $74   ; 
- D 1 - I - 0x0165AD 05:A59D: 78        .byte $78   ; 
- D 1 - I - 0x0165AE 05:A59E: 7B        .byte $7B   ; 
- D 1 - I - 0x0165AF 05:A59F: 7D        .byte $7D   ; 

- D 1 - I - 0x0165B0 05:A5A0: 03        .byte con_03   ; 

- D 1 - I - 0x0165B1 05:A5A1: 68        .byte $68   ; 
- D 1 - I - 0x0165B2 05:A5A2: 6C        .byte $6C   ; 
- D 1 - I - 0x0165B3 05:A5A3: 71        .byte $71   ; 
- D 1 - I - 0x0165B4 05:A5A4: 6F        .byte $6F   ; 
- D 1 - I - 0x0165B5 05:A5A5: 6D        .byte $6D   ; 
- D 1 - I - 0x0165B6 05:A5A6: 6C        .byte $6C   ; 
- D 1 - I - 0x0165B7 05:A5A7: 6D        .byte $6D   ; 

- D 1 - I - 0x0165B8 05:A5A8: 03        .byte con_03   ; 

- D 1 - I - 0x0165B9 05:A5A9: 64        .byte $64   ; 
- D 1 - I - 0x0165BA 05:A5AA: 68        .byte $68   ; 
- D 1 - I - 0x0165BB 05:A5AB: 6B        .byte $6B   ; 
- D 1 - I - 0x0165BC 05:A5AC: 6F        .byte $6F   ; 
- D 1 - I - 0x0165BD 05:A5AD: 70        .byte $70   ; 
- D 1 - I - 0x0165BE 05:A5AE: 74        .byte $74   ; 
- D 1 - I - 0x0165BF 05:A5AF: 77        .byte $77   ; 
- D 1 - I - 0x0165C0 05:A5B0: 7B        .byte $7B   ; 
- D 1 - I - 0x0165C1 05:A5B1: 62        .byte $62   ; 
- D 1 - I - 0x0165C2 05:A5B2: 66        .byte $66   ; 
- D 1 - I - 0x0165C3 05:A5B3: 69        .byte $69   ; 
- D 1 - I - 0x0165C4 05:A5B4: 6D        .byte $6D   ; 
- D 1 - I - 0x0165C5 05:A5B5: 6E        .byte $6E   ; 
- D 1 - I - 0x0165C6 05:A5B6: 72        .byte $72   ; 
- D 1 - I - 0x0165C7 05:A5B7: 75        .byte $75   ; 
- D 1 - I - 0x0165C8 05:A5B8: 79        .byte $79   ; 

- D 1 - I - 0x0165C9 05:A5B9: 16        .byte con_jump   ; 
- D 1 - I - 0x0165CA 05:A5BA: A5 71     .dbyt loc_16_A571


; bzk garbage
- - - - - - 0x0165CC 05:A5BC: 17        .byte con_stop   ; 



_off019_0A_A5BD_02:
- D 1 - I - 0x0165CD 05:A5BD: 06        .byte con_06, $FA   ; 
- D 1 - I - 0x0165CF 05:A5BF: 08        .byte con_08, $00   ; 
- D 1 - I - 0x0165D1 05:A5C1: 09        .byte con_09, $03   ; 
loc_16_A5C3:
- D 1 - I - 0x0165D3 05:A5C3: 04        .byte con_04, $40   ; 

- D 1 - I - 0x0165D5 05:A5C5: BD        .byte $BD   ; 

- D 1 - I - 0x0165D6 05:A5C6: 08        .byte con_08, $0E   ; 
- D 1 - I - 0x0165D8 05:A5C8: 02        .byte con_02   ; 
- D 1 - I - 0x0165D9 05:A5C9: 01        .byte con_01   ; 

- D 1 - I - 0x0165DA 05:A5CA: BD        .byte $BD   ; 

- D 1 - I - 0x0165DB 05:A5CB: 08        .byte con_08, $00   ; 

- D 1 - I - 0x0165DD 05:A5CD: 9B        .byte $9B   ; 
- D 1 - I - 0x0165DE 05:A5CE: 9D        .byte $9D   ; 

- D 1 - I - 0x0165DF 05:A5CF: 03        .byte con_03   ; 

- D 1 - I - 0x0165E0 05:A5D0: 8C        .byte $8C   ; 

- D 1 - I - 0x0165E1 05:A5D1: 01        .byte con_01   ; 

- D 1 - I - 0x0165E2 05:A5D2: C8        .byte $C8   ; 

- D 1 - I - 0x0165E3 05:A5D3: 08        .byte con_08, $0E   ; 
- D 1 - I - 0x0165E5 05:A5D5: 01        .byte con_01   ; 

- D 1 - I - 0x0165E6 05:A5D6: C8        .byte $C8   ; 

- D 1 - I - 0x0165E7 05:A5D7: 08        .byte con_08, $00   ; 

- D 1 - I - 0x0165E9 05:A5D9: 8C        .byte $8C   ; 
- D 1 - I - 0x0165EA 05:A5DA: 8D        .byte $8D   ; 
- D 1 - I - 0x0165EB 05:A5DB: 8F        .byte $8F   ; 
- D 1 - I - 0x0165EC 05:A5DC: 8C        .byte $8C   ; 
- D 1 - I - 0x0165ED 05:A5DD: 88        .byte $88   ; 
- D 1 - I - 0x0165EE 05:A5DE: 85        .byte $85   ; 
- D 1 - I - 0x0165EF 05:A5DF: 85        .byte $85   ; 
- D 1 - I - 0x0165F0 05:A5E0: 80        .byte $80   ; 

- D 1 - I - 0x0165F1 05:A5E1: 01        .byte con_01   ; 

- D 1 - I - 0x0165F2 05:A5E2: 8B        .byte $8B   ; 

- D 1 - I - 0x0165F3 05:A5E3: 08        .byte con_08, $0E   ; 
- D 1 - I - 0x0165F5 05:A5E5: 01        .byte con_01   ; 

- D 1 - I - 0x0165F6 05:A5E6: AB        .byte $AB   ; 

- D 1 - I - 0x0165F7 05:A5E7: 08        .byte con_08, $00   ; 

- D 1 - I - 0x0165F9 05:A5E9: 8A        .byte $8A   ; 
- D 1 - I - 0x0165FA 05:A5EA: 89        .byte $89   ; 
- D 1 - I - 0x0165FB 05:A5EB: 88        .byte $88   ; 
- D 1 - I - 0x0165FC 05:A5EC: 86        .byte $86   ; 
- D 1 - I - 0x0165FD 05:A5ED: 80        .byte $80   ; 

- D 1 - I - 0x0165FE 05:A5EE: 16        .byte con_jump   ; 
- D 1 - I - 0x0165FF 05:A5EF: A5 C3     .dbyt loc_16_A5C3


; bzk garbage
- - - - - - 0x016601 05:A5F1: 17        .byte con_stop   ; 



_off019_0A_A5F2_03_disable:
- D 1 - I - 0x016602 05:A5F2: 17        .byte con_stop   ; 



_music_A5F3_0B_game_over:
- D 1 - I - 0x016603 05:A5F3: 00        .byte $00   ; 
- D 1 - I - 0x016604 05:A5F4: A5 FC     .dbyt _off019_0B_A5FC_00
- D 1 - I - 0x016606 05:A5F6: A6 20     .dbyt _off019_0B_A620_01
- D 1 - I - 0x016608 05:A5F8: A6 36     .dbyt _off019_0B_A636_02
- D 1 - I - 0x01660A 05:A5FA: A6 42     .dbyt _off019_0B_A642_03_disable



_off019_0B_A5FC_00:
- D 1 - I - 0x01660C 05:A5FC: 05        .byte con_05, $01, $99   ; 
- D 1 - I - 0x01660F 05:A5FF: 06        .byte con_06, $64   ; 
- D 1 - I - 0x016611 05:A601: 07        .byte con_07, $08   ; 
- D 1 - I - 0x016613 05:A603: 08        .byte con_08, $0C   ; 
- D 1 - I - 0x016615 05:A605: 09        .byte con_09, $02   ; 
- D 1 - I - 0x016617 05:A607: 18        .byte con_18, $40   ; 
- D 1 - I - 0x016619 05:A609: 03        .byte con_03   ; 

- D 1 - I - 0x01661A 05:A60A: 95        .byte $95   ; 
- D 1 - I - 0x01661B 05:A60B: 91        .byte $91   ; 
- D 1 - I - 0x01661C 05:A60C: 8E        .byte $8E   ; 
- D 1 - I - 0x01661D 05:A60D: 8A        .byte $8A   ; 
- D 1 - I - 0x01661E 05:A60E: 88        .byte $88   ; 

- D 1 - I - 0x01661F 05:A60F: 05        .byte con_05, $01, $33   ; 

- D 1 - I - 0x016622 05:A612: 84        .byte $84   ; 
- D 1 - I - 0x016623 05:A613: 81        .byte $81   ; 

- D 1 - I - 0x016624 05:A614: 05        .byte con_05, $00, $F0   ; 
- D 1 - I - 0x016627 05:A617: 03        .byte con_03   ; 

- D 1 - I - 0x016628 05:A618: 95        .byte $95   ; 

- D 1 - I - 0x016629 05:A619: 05        .byte con_05, $01, $11   ; 
- D 1 - I - 0x01662C 05:A61C: 08        .byte con_08, $0D   ; 

- D 1 - I - 0x01662E 05:A61E: D6        .byte $D6   ; 

- D 1 - I - 0x01662F 05:A61F: 17        .byte con_stop   ; 



_off019_0B_A620_01:
- D 1 - I - 0x016630 05:A620: 06        .byte con_06, $64   ; 
- D 1 - I - 0x016632 05:A622: 07        .byte con_07, $08   ; 
- D 1 - I - 0x016634 05:A624: 08        .byte con_08, $0C   ; 
- D 1 - I - 0x016636 05:A626: 09        .byte con_09, $02   ; 
- D 1 - I - 0x016638 05:A628: 18        .byte con_18, $40   ; 

- D 1 - I - 0x01663A 05:A62A: 96        .byte $96   ; 
- D 1 - I - 0x01663B 05:A62B: 9A        .byte $9A   ; 
- D 1 - I - 0x01663C 05:A62C: 9D        .byte $9D   ; 
- D 1 - I - 0x01663D 05:A62D: 9A        .byte $9A   ; 
- D 1 - I - 0x01663E 05:A62E: 95        .byte $95   ; 
- D 1 - I - 0x01663F 05:A62F: 99        .byte $99   ; 
- D 1 - I - 0x016640 05:A630: 95        .byte $95   ; 
- D 1 - I - 0x016641 05:A631: 92        .byte $92   ; 

- D 1 - I - 0x016642 05:A632: 08        .byte con_08, $0D   ; 

- D 1 - I - 0x016644 05:A634: D8        .byte $D8   ; 

- D 1 - I - 0x016645 05:A635: 17        .byte con_stop   ; 



_off019_0B_A636_02:
- D 1 - I - 0x016646 05:A636: 06        .byte con_06, $F0   ; 
- D 1 - I - 0x016648 05:A638: 08        .byte con_08, $00   ; 
- D 1 - I - 0x01664A 05:A63A: 09        .byte con_09, $02   ; 

- D 1 - I - 0x01664C 05:A63C: D3        .byte $D3   ; 
- D 1 - I - 0x01664D 05:A63D: D2        .byte $D2   ; 

- D 1 - I - 0x01664E 05:A63E: 06        .byte con_06, $C8   ; 

- D 1 - I - 0x016650 05:A640: D4        .byte $D4   ; 

- D 1 - I - 0x016651 05:A641: 17        .byte con_stop   ; 



_off019_0B_A642_03_disable:
- D 1 - I - 0x016652 05:A642: 17        .byte con_stop   ; 



_music_A643_0C_stage_preview:
- D 1 - I - 0x016653 05:A643: 00        .byte $00   ; 
- D 1 - I - 0x016654 05:A644: A6 4C     .dbyt _off019_0C_A64C_00
- D 1 - I - 0x016656 05:A646: A6 6E     .dbyt _off019_0C_A66E_01
- D 1 - I - 0x016658 05:A648: A6 8C     .dbyt _off019_0C_A68C_02
- D 1 - I - 0x01665A 05:A64A: A6 AB     .dbyt _off019_0C_A6AB_03_disable



_off019_0C_A64C_00:
- D 1 - I - 0x01665C 05:A64C: 05        .byte con_05, $01, $99   ; 
- D 1 - I - 0x01665F 05:A64F: 06        .byte con_06, $64   ; 
- D 1 - I - 0x016661 05:A651: 07        .byte con_07, $09   ; 
- D 1 - I - 0x016663 05:A653: 08        .byte con_08, $05   ; 
- D 1 - I - 0x016665 05:A655: 09        .byte con_09, $02   ; 
- D 1 - I - 0x016667 05:A657: 18        .byte con_18, $80   ; 

- D 1 - I - 0x016669 05:A659: 9B        .byte $9B   ; 
- D 1 - I - 0x01666A 05:A65A: 9E        .byte $9E   ; 

- D 1 - I - 0x01666B 05:A65B: 03        .byte con_03   ; 

- D 1 - I - 0x01666C 05:A65C: 6A        .byte $6A   ; 
- D 1 - I - 0x01666D 05:A65D: 66        .byte $66   ; 
- D 1 - I - 0x01666E 05:A65E: 60        .byte $60   ; 
- D 1 - I - 0x01666F 05:A65F: 6F        .byte $6F   ; 
- D 1 - I - 0x016670 05:A660: 60        .byte $60   ; 
- D 1 - I - 0x016671 05:A661: 6C        .byte $6C   ; 
- D 1 - I - 0x016672 05:A662: 60        .byte $60   ; 
- D 1 - I - 0x016673 05:A663: 68        .byte $68   ; 
- D 1 - I - 0x016674 05:A664: 6C        .byte $6C   ; 
- D 1 - I - 0x016675 05:A665: 60        .byte $60   ; 
- D 1 - I - 0x016676 05:A666: 68        .byte $68   ; 
- D 1 - I - 0x016677 05:A667: 60        .byte $60   ; 
- D 1 - I - 0x016678 05:A668: 8D        .byte $8D   ; 
- D 1 - I - 0x016679 05:A669: 8C        .byte $8C   ; 
- D 1 - I - 0x01667A 05:A66A: 6A        .byte $6A   ; 
- D 1 - I - 0x01667B 05:A66B: 8C        .byte $8C   ; 
- D 1 - I - 0x01667C 05:A66C: CD        .byte $CD   ; 
; bzk garbage?
- - - - - - 0x01667D 05:A66D: 17        .byte con_stop   ; 



_off019_0C_A66E_01:
- D 1 - I - 0x01667E 05:A66E: 08        .byte con_08, $05   ; 
- D 1 - I - 0x016680 05:A670: 06        .byte con_06, $64   ; 
- D 1 - I - 0x016682 05:A672: 07        .byte con_07, $09   ; 
- D 1 - I - 0x016684 05:A674: 09        .byte con_09, $02   ; 
- D 1 - I - 0x016686 05:A676: 18        .byte con_18, $40   ; 

- D 1 - I - 0x016688 05:A678: 92        .byte $92   ; 
- D 1 - I - 0x016689 05:A679: 96        .byte $96   ; 
- D 1 - I - 0x01668A 05:A67A: 79        .byte $79   ; 
- D 1 - I - 0x01668B 05:A67B: 76        .byte $76   ; 
- D 1 - I - 0x01668C 05:A67C: 60        .byte $60   ; 
- D 1 - I - 0x01668D 05:A67D: 7E        .byte $7E   ; 
- D 1 - I - 0x01668E 05:A67E: 60        .byte $60   ; 
- D 1 - I - 0x01668F 05:A67F: 7B        .byte $7B   ; 
- D 1 - I - 0x016690 05:A680: 60        .byte $60   ; 
- D 1 - I - 0x016691 05:A681: 78        .byte $78   ; 
- D 1 - I - 0x016692 05:A682: 7B        .byte $7B   ; 
- D 1 - I - 0x016693 05:A683: 60        .byte $60   ; 
- D 1 - I - 0x016694 05:A684: 78        .byte $78   ; 
- D 1 - I - 0x016695 05:A685: 60        .byte $60   ; 
- D 1 - I - 0x016696 05:A686: 9D        .byte $9D   ; 
- D 1 - I - 0x016697 05:A687: 9D        .byte $9D   ; 
- D 1 - I - 0x016698 05:A688: 7E        .byte $7E   ; 
- D 1 - I - 0x016699 05:A689: 9E        .byte $9E   ; 
- D 1 - I - 0x01669A 05:A68A: DD        .byte $DD   ; 
; bzk garbage?
- - - - - - 0x01669B 05:A68B: 17        .byte con_stop   ; 



_off019_0C_A68C_02:
- D 1 - I - 0x01669C 05:A68C: 08        .byte con_08, $01   ; 
- D 1 - I - 0x01669E 05:A68E: 07        .byte con_07, $08   ; 
- D 1 - I - 0x0166A0 05:A690: 06        .byte con_06, $C8   ; 
- D 1 - I - 0x0166A2 05:A692: 09        .byte con_09, $03   ; 

- D 1 - I - 0x0166A4 05:A694: 8F        .byte $8F   ; 
- D 1 - I - 0x0166A5 05:A695: 6F        .byte $6F   ; 
- D 1 - I - 0x0166A6 05:A696: 74        .byte $74   ; 
- D 1 - I - 0x0166A7 05:A697: 6D        .byte $6D   ; 
- D 1 - I - 0x0166A8 05:A698: 6E        .byte $6E   ; 
- D 1 - I - 0x0166A9 05:A699: 6F        .byte $6F   ; 
- D 1 - I - 0x0166AA 05:A69A: 74        .byte $74   ; 
- D 1 - I - 0x0166AB 05:A69B: 60        .byte $60   ; 
- D 1 - I - 0x0166AC 05:A69C: 74        .byte $74   ; 
- D 1 - I - 0x0166AD 05:A69D: 74        .byte $74   ; 
- D 1 - I - 0x0166AE 05:A69E: 7B        .byte $7B   ; 
- D 1 - I - 0x0166AF 05:A69F: 72        .byte $72   ; 
- D 1 - I - 0x0166B0 05:A6A0: 73        .byte $73   ; 
- D 1 - I - 0x0166B1 05:A6A1: 94        .byte $94   ; 
- D 1 - I - 0x0166B2 05:A6A2: 79        .byte $79   ; 
- D 1 - I - 0x0166B3 05:A6A3: 60        .byte $60   ; 
- D 1 - I - 0x0166B4 05:A6A4: 79        .byte $79   ; 
- D 1 - I - 0x0166B5 05:A6A5: 60        .byte $60   ; 
- D 1 - I - 0x0166B6 05:A6A6: 68        .byte $68   ; 
- D 1 - I - 0x0166B7 05:A6A7: 6A        .byte $6A   ; 
- D 1 - I - 0x0166B8 05:A6A8: 6C        .byte $6C   ; 
- D 1 - I - 0x0166B9 05:A6A9: CD        .byte $CD   ; 
; bzk garbage?
- - - - - - 0x0166BA 05:A6AA: 17        .byte con_stop   ; 



_off019_0C_A6AB_03_disable:
- D 1 - I - 0x0166BB 05:A6AB: 17        .byte con_stop   ; 



_sfx_A6AC_11:
- D 1 - I - 0x0166BC 05:A6AC: 06        .byte $06   ; 
- D 1 - I - 0x0166BD 05:A6AD: 02        .byte $02   ; 
- D 1 - I - 0x0166BE 05:A6AE: 5F        .byte $5F   ; 
- D 1 - I - 0x0166BF 05:A6AF: 03        .byte $03   ; 
- D 1 - I - 0x0166C0 05:A6B0: 02        .byte $02   ; 
- D 1 - I - 0x0166C1 05:A6B1: 07        .byte $07   ; 
- D 1 - I - 0x0166C2 05:A6B2: 1E        .byte $1E   ; 
- D 1 - I - 0x0166C3 05:A6B3: 80        .byte $80   ; 
- D 1 - I - 0x0166C4 05:A6B4: 0F        .byte $0F   ; 
- D 1 - I - 0x0166C5 05:A6B5: 43        .byte $43   ; 
- D 1 - I - 0x0166C6 05:A6B6: 02        .byte $02   ; 
- D 1 - I - 0x0166C7 05:A6B7: 4C        .byte $4C   ; 
- D 1 - I - 0x0166C8 05:A6B8: 0F        .byte $0F   ; 
- D 1 - I - 0x0166C9 05:A6B9: 02        .byte $02   ; 
- D 1 - I - 0x0166CA 05:A6BA: 01        .byte $01   ; 
- D 1 - I - 0x0166CB 05:A6BB: 1F        .byte $1F   ; 
- D 1 - I - 0x0166CC 05:A6BC: 46        .byte $46   ; 
- D 1 - I - 0x0166CD 05:A6BD: FF        .byte $FF   ; 



_sfx_A6BE_12_shoot:
- D 1 - I - 0x0166CE 05:A6BE: 07        .byte $07   ; 
- D 1 - I - 0x0166CF 05:A6BF: 02        .byte $02   ; 
- D 1 - I - 0x0166D0 05:A6C0: FF        .byte $FF   ; 
- D 1 - I - 0x0166D1 05:A6C1: 09        .byte $09   ; 
- D 1 - I - 0x0166D2 05:A6C2: 02        .byte $02   ; 
- D 1 - I - 0x0166D3 05:A6C3: 0F        .byte $0F   ; 
- D 1 - I - 0x0166D4 05:A6C4: 26        .byte $26   ; 
- D 1 - I - 0x0166D5 05:A6C5: 80        .byte $80   ; 
- D 1 - I - 0x0166D6 05:A6C6: 0F        .byte $0F   ; 
- D 1 - I - 0x0166D7 05:A6C7: FF        .byte $FF   ; 
- D 1 - I - 0x0166D8 05:A6C8: 41        .byte $41   ; 
- D 1 - I - 0x0166D9 05:A6C9: FF        .byte $FF   ; 



_sfx_A6CA_13_bubble_hit:
- D 1 - I - 0x0166DA 05:A6CA: 07        .byte $07   ; 
- D 1 - I - 0x0166DB 05:A6CB: 02        .byte $02   ; 
- D 1 - I - 0x0166DC 05:A6CC: FF        .byte $FF   ; 
- D 1 - I - 0x0166DD 05:A6CD: 0A        .byte $0A   ; 
- D 1 - I - 0x0166DE 05:A6CE: 02        .byte $02   ; 
- D 1 - I - 0x0166DF 05:A6CF: 0F        .byte $0F   ; 
- D 1 - I - 0x0166E0 05:A6D0: 27        .byte $27   ; 
- D 1 - I - 0x0166E1 05:A6D1: 80        .byte $80   ; 
- D 1 - I - 0x0166E2 05:A6D2: 0F        .byte $0F   ; 
- D 1 - I - 0x0166E3 05:A6D3: 7F        .byte $7F   ; 
- D 1 - I - 0x0166E4 05:A6D4: 3D        .byte $3D   ; 
- D 1 - I - 0x0166E5 05:A6D5: FF        .byte $FF   ; 



_sfx_A6D6_14_bubble_burst:
- D 1 - I - 0x0166E6 05:A6D6: 07        .byte $07   ; 
- D 1 - I - 0x0166E7 05:A6D7: 02        .byte $02   ; 
- D 1 - I - 0x0166E8 05:A6D8: 01        .byte $01   ; 
- D 1 - I - 0x0166E9 05:A6D9: 02        .byte $02   ; 
- D 1 - I - 0x0166EA 05:A6DA: 02        .byte $02   ; 
- D 1 - I - 0x0166EB 05:A6DB: 07        .byte $07   ; 
- D 1 - I - 0x0166EC 05:A6DC: 03        .byte $03   ; 
- D 1 - I - 0x0166ED 05:A6DD: 80        .byte $80   ; 
- D 1 - I - 0x0166EE 05:A6DE: 0F        .byte $0F   ; 
- D 1 - I - 0x0166EF 05:A6DF: 37        .byte $37   ; 
- D 1 - I - 0x0166F0 05:A6E0: 02        .byte $02   ; 
- D 1 - I - 0x0166F1 05:A6E1: FF        .byte $FF   ; 
- D 1 - I - 0x0166F2 05:A6E2: 17        .byte $17   ; 
- D 1 - I - 0x0166F3 05:A6E3: 02        .byte $02   ; 
- D 1 - I - 0x0166F4 05:A6E4: 07        .byte $07   ; 
- D 1 - I - 0x0166F5 05:A6E5: 28        .byte $28   ; 
- D 1 - I - 0x0166F6 05:A6E6: 80        .byte $80   ; 
- D 1 - I - 0x0166F7 05:A6E7: 0F        .byte $0F   ; 
- D 1 - I - 0x0166F8 05:A6E8: 37        .byte $37   ; 
- D 1 - I - 0x0166F9 05:A6E9: FF        .byte $FF   ; 



_sfx_A6EA_15:
- D 1 - I - 0x0166FA 05:A6EA: 07        .byte $07   ; 
- D 1 - I - 0x0166FB 05:A6EB: 02        .byte $02   ; 
- D 1 - I - 0x0166FC 05:A6EC: 5D        .byte $5D   ; 
- D 1 - I - 0x0166FD 05:A6ED: 03        .byte $03   ; 
- D 1 - I - 0x0166FE 05:A6EE: 08        .byte $08   ; 
- D 1 - I - 0x0166FF 05:A6EF: 0D        .byte $0D   ; 
- D 1 - I - 0x016700 05:A6F0: 05        .byte $05   ; 
- D 1 - I - 0x016701 05:A6F1: 0F        .byte $0F   ; 
- D 1 - I - 0x016702 05:A6F2: 7F        .byte $7F   ; 
- D 1 - I - 0x016703 05:A6F3: 0B        .byte $0B   ; 
- D 1 - I - 0x016704 05:A6F4: 02        .byte $02   ; 
- D 1 - I - 0x016705 05:A6F5: 50        .byte $50   ; 
- D 1 - I - 0x016706 05:A6F6: 0F        .byte $0F   ; 
- D 1 - I - 0x016707 05:A6F7: 08        .byte $08   ; 
- D 1 - I - 0x016708 05:A6F8: 0D        .byte $0D   ; 
- D 1 - I - 0x016709 05:A6F9: 1F        .byte $1F   ; 
- D 1 - I - 0x01670A 05:A6FA: 0F        .byte $0F   ; 
- D 1 - I - 0x01670B 05:A6FB: 46        .byte $46   ; 
- D 1 - I - 0x01670C 05:A6FC: 10        .byte $10   ; 
- D 1 - I - 0x01670D 05:A6FD: FF        .byte $FF   ; 



_sfx_A6FE_16:
- D 1 - I - 0x01670E 05:A6FE: 07        .byte $07   ; 
- D 1 - I - 0x01670F 05:A6FF: 02        .byte $02   ; 
- D 1 - I - 0x016710 05:A700: FF        .byte $FF   ; 
- D 1 - I - 0x016711 05:A701: 12        .byte $12   ; 
- D 1 - I - 0x016712 05:A702: 02        .byte $02   ; 
- D 1 - I - 0x016713 05:A703: 0F        .byte $0F   ; 
- D 1 - I - 0x016714 05:A704: 23        .byte $23   ; 
- D 1 - I - 0x016715 05:A705: 40        .byte $40   ; 
- D 1 - I - 0x016716 05:A706: 0F        .byte $0F   ; 
- D 1 - I - 0x016717 05:A707: C6        .byte $C6   ; 
- D 1 - I - 0x016718 05:A708: 33        .byte $33   ; 
- D 1 - I - 0x016719 05:A709: FF        .byte $FF   ; 



_sfx_A70A_17:
- D 1 - I - 0x01671A 05:A70A: 07        .byte $07   ; 
- D 1 - I - 0x01671B 05:A70B: 02        .byte $02   ; 
- D 1 - I - 0x01671C 05:A70C: 7F        .byte $7F   ; 
- D 1 - I - 0x01671D 05:A70D: 04        .byte $04   ; 
- D 1 - I - 0x01671E 05:A70E: 02        .byte $02   ; 
- D 1 - I - 0x01671F 05:A70F: 0F        .byte $0F   ; 
- D 1 - I - 0x016720 05:A710: 20        .byte $20   ; 
- D 1 - I - 0x016721 05:A711: 80        .byte $80   ; 
- D 1 - I - 0x016722 05:A712: 0F        .byte $0F   ; 
- D 1 - I - 0x016723 05:A713: FF        .byte $FF   ; 
- D 1 - I - 0x016724 05:A714: 3C        .byte $3C   ; 
- D 1 - I - 0x016725 05:A715: 02        .byte $02   ; 
- D 1 - I - 0x016726 05:A716: FF        .byte $FF   ; 
- D 1 - I - 0x016727 05:A717: 02        .byte $02   ; 
- D 1 - I - 0x016728 05:A718: 02        .byte $02   ; 
- D 1 - I - 0x016729 05:A719: 00        .byte $00   ; 
- D 1 - I - 0x01672A 05:A71A: 45        .byte $45   ; 
- D 1 - I - 0x01672B 05:A71B: FF        .byte $FF   ; 



_sfx_A71C_18:
- D 1 - I - 0x01672C 05:A71C: 08        .byte $08   ; 
- D 1 - I - 0x01672D 05:A71D: 02        .byte $02   ; 
- D 1 - I - 0x01672E 05:A71E: FF        .byte $FF   ; 
- D 1 - I - 0x01672F 05:A71F: 07        .byte $07   ; 
- D 1 - I - 0x016730 05:A720: 08        .byte $08   ; 
- D 1 - I - 0x016731 05:A721: 0D        .byte $0D   ; 
- D 1 - I - 0x016732 05:A722: 1F        .byte $1F   ; 
- D 1 - I - 0x016733 05:A723: 0F        .byte $0F   ; 
- D 1 - I - 0x016734 05:A724: 7F        .byte $7F   ; 
- D 1 - I - 0x016735 05:A725: 05        .byte $05   ; 
- D 1 - I - 0x016736 05:A726: 02        .byte $02   ; 
- D 1 - I - 0x016737 05:A727: FF        .byte $FF   ; 
- D 1 - I - 0x016738 05:A728: 1D        .byte $1D   ; 
- D 1 - I - 0x016739 05:A729: 08        .byte $08   ; 
- D 1 - I - 0x01673A 05:A72A: 0D        .byte $0D   ; 
- D 1 - I - 0x01673B 05:A72B: 28        .byte $28   ; 
- D 1 - I - 0x01673C 05:A72C: 0F        .byte $0F   ; 
- D 1 - I - 0x01673D 05:A72D: 00        .byte $00   ; 
- D 1 - I - 0x01673E 05:A72E: 04        .byte $04   ; 
- D 1 - I - 0x01673F 05:A72F: FF        .byte $FF   ; 



_sfx_A730_19_item_pickup:
- D 1 - I - 0x016740 05:A730: 07        .byte $07   ; 
- D 1 - I - 0x016741 05:A731: 02        .byte $02   ; 
- D 1 - I - 0x016742 05:A732: FF        .byte $FF   ; 
- D 1 - I - 0x016743 05:A733: 03        .byte $03   ; 
- D 1 - I - 0x016744 05:A734: 02        .byte $02   ; 
- D 1 - I - 0x016745 05:A735: 07        .byte $07   ; 
- D 1 - I - 0x016746 05:A736: 1F        .byte $1F   ; 
- D 1 - I - 0x016747 05:A737: 40        .byte $40   ; 
- D 1 - I - 0x016748 05:A738: 0F        .byte $0F   ; 
- D 1 - I - 0x016749 05:A739: 36        .byte $36   ; 
- D 1 - I - 0x01674A 05:A73A: 02        .byte $02   ; 
- D 1 - I - 0x01674B 05:A73B: FF        .byte $FF   ; 
- D 1 - I - 0x01674C 05:A73C: 03        .byte $03   ; 
- D 1 - I - 0x01674D 05:A73D: 02        .byte $02   ; 
- D 1 - I - 0x01674E 05:A73E: 00        .byte $00   ; 
- D 1 - I - 0x01674F 05:A73F: 31        .byte $31   ; 
- D 1 - I - 0x016750 05:A740: 02        .byte $02   ; 
- D 1 - I - 0x016751 05:A741: FF        .byte $FF   ; 
- D 1 - I - 0x016752 05:A742: 03        .byte $03   ; 
- D 1 - I - 0x016753 05:A743: 02        .byte $02   ; 
- D 1 - I - 0x016754 05:A744: 00        .byte $00   ; 
- D 1 - I - 0x016755 05:A745: 3A        .byte $3A   ; 
- D 1 - I - 0x016756 05:A746: 02        .byte $02   ; 
- D 1 - I - 0x016757 05:A747: FF        .byte $FF   ; 
- D 1 - I - 0x016758 05:A748: 03        .byte $03   ; 
- D 1 - I - 0x016759 05:A749: 02        .byte $02   ; 
- D 1 - I - 0x01675A 05:A74A: 02        .byte $02   ; 
- D 1 - I - 0x01675B 05:A74B: 80        .byte $80   ; 
- D 1 - I - 0x01675C 05:A74C: 3D        .byte $3D   ; 
- D 1 - I - 0x01675D 05:A74D: 02        .byte $02   ; 
- D 1 - I - 0x01675E 05:A74E: FF        .byte $FF   ; 
- D 1 - I - 0x01675F 05:A74F: 03        .byte $03   ; 
- D 1 - I - 0x016760 05:A750: 02        .byte $02   ; 
- D 1 - I - 0x016761 05:A751: 00        .byte $00   ; 
- D 1 - I - 0x016762 05:A752: 46        .byte $46   ; 
- D 1 - I - 0x016763 05:A753: 02        .byte $02   ; 
- D 1 - I - 0x016764 05:A754: 52        .byte $52   ; 
- D 1 - I - 0x016765 05:A755: 20        .byte $20   ; 
- D 1 - I - 0x016766 05:A756: 02        .byte $02   ; 
- D 1 - I - 0x016767 05:A757: 01        .byte $01   ; 
- D 1 - I - 0x016768 05:A758: 25        .byte $25   ; 
- D 1 - I - 0x016769 05:A759: 42        .byte $42   ; 
- D 1 - I - 0x01676A 05:A75A: FF        .byte $FF   ; 



_sfx_A75B_1A:
- D 1 - I - 0x01676B 05:A75B: 15        .byte $15   ; 
- D 1 - I - 0x01676C 05:A75C: 02        .byte $02   ; 
- D 1 - I - 0x01676D 05:A75D: FF        .byte $FF   ; 
- D 1 - I - 0x01676E 05:A75E: 02        .byte $02   ; 
- D 1 - I - 0x01676F 05:A75F: 02        .byte $02   ; 
- D 1 - I - 0x016770 05:A760: 07        .byte $07   ; 
- D 1 - I - 0x016771 05:A761: 21        .byte $21   ; 
- D 1 - I - 0x016772 05:A762: 80        .byte $80   ; 
- D 1 - I - 0x016773 05:A763: 0F        .byte $0F   ; 
- D 1 - I - 0x016774 05:A764: 46        .byte $46   ; 
- D 1 - I - 0x016775 05:A765: FF        .byte $FF   ; 



_sfx_A766_1B:
- D 1 - I - 0x016776 05:A766: 09        .byte $09   ; 
- D 1 - I - 0x016777 05:A767: 02        .byte $02   ; 
- D 1 - I - 0x016778 05:A768: FF        .byte $FF   ; 
- D 1 - I - 0x016779 05:A769: 03        .byte $03   ; 
- D 1 - I - 0x01677A 05:A76A: 02        .byte $02   ; 
- D 1 - I - 0x01677B 05:A76B: 07        .byte $07   ; 
- D 1 - I - 0x01677C 05:A76C: 21        .byte $21   ; 
- D 1 - I - 0x01677D 05:A76D: 80        .byte $80   ; 
- D 1 - I - 0x01677E 05:A76E: 0F        .byte $0F   ; 
- D 1 - I - 0x01677F 05:A76F: 2C        .byte $2C   ; 
- D 1 - I - 0x016780 05:A770: 02        .byte $02   ; 
- D 1 - I - 0x016781 05:A771: FF        .byte $FF   ; 
- D 1 - I - 0x016782 05:A772: 03        .byte $03   ; 
- D 1 - I - 0x016783 05:A773: 02        .byte $02   ; 
- D 1 - I - 0x016784 05:A774: 00        .byte $00   ; 
- D 1 - I - 0x016785 05:A775: 33        .byte $33   ; 
- D 1 - I - 0x016786 05:A776: 02        .byte $02   ; 
- D 1 - I - 0x016787 05:A777: FF        .byte $FF   ; 
- D 1 - I - 0x016788 05:A778: 03        .byte $03   ; 
- D 1 - I - 0x016789 05:A779: 02        .byte $02   ; 
- D 1 - I - 0x01678A 05:A77A: 00        .byte $00   ; 
- D 1 - I - 0x01678B 05:A77B: 38        .byte $38   ; 
- D 1 - I - 0x01678C 05:A77C: 02        .byte $02   ; 
- D 1 - I - 0x01678D 05:A77D: FF        .byte $FF   ; 
- D 1 - I - 0x01678E 05:A77E: 04        .byte $04   ; 
- D 1 - I - 0x01678F 05:A77F: 02        .byte $02   ; 
- D 1 - I - 0x016790 05:A780: 00        .byte $00   ; 
- D 1 - I - 0x016791 05:A781: 3F        .byte $3F   ; 
- D 1 - I - 0x016792 05:A782: 02        .byte $02   ; 
- D 1 - I - 0x016793 05:A783: FF        .byte $FF   ; 
- D 1 - I - 0x016794 05:A784: 04        .byte $04   ; 
- D 1 - I - 0x016795 05:A785: 02        .byte $02   ; 
- D 1 - I - 0x016796 05:A786: 00        .byte $00   ; 
- D 1 - I - 0x016797 05:A787: 44        .byte $44   ; 
- D 1 - I - 0x016798 05:A788: 02        .byte $02   ; 
- D 1 - I - 0x016799 05:A789: FF        .byte $FF   ; 
- D 1 - I - 0x01679A 05:A78A: 04        .byte $04   ; 
- D 1 - I - 0x01679B 05:A78B: 02        .byte $02   ; 
- D 1 - I - 0x01679C 05:A78C: 00        .byte $00   ; 
- D 1 - I - 0x01679D 05:A78D: 4B        .byte $4B   ; 
- D 1 - I - 0x01679E 05:A78E: FF        .byte $FF   ; 



_sfx_A78F_1C_pause_menu:
- D 1 - I - 0x01679F 05:A78F: 10        .byte $10   ; 
off_A790:
- D 1 - I - 0x0167A0 05:A790: 02        .byte $02   ; 
- D 1 - I - 0x0167A1 05:A791: 74        .byte $74   ; 
- D 1 - I - 0x0167A2 05:A792: 02        .byte $02   ; 
- D 1 - I - 0x0167A3 05:A793: 02        .byte $02   ; 
- D 1 - I - 0x0167A4 05:A794: 07        .byte $07   ; 
- D 1 - I - 0x0167A5 05:A795: 00        .byte $00   ; 
- D 1 - I - 0x0167A6 05:A796: C0        .byte $C0   ; 
- D 1 - I - 0x0167A7 05:A797: 0F        .byte $0F   ; 
- D 1 - I - 0x0167A8 05:A798: 35        .byte $35   ; 
- D 1 - I - 0x0167A9 05:A799: 02        .byte $02   ; 
- D 1 - I - 0x0167AA 05:A79A: 70        .byte $70   ; 
- D 1 - I - 0x0167AB 05:A79B: 02        .byte $02   ; 
- D 1 - I - 0x0167AC 05:A79C: 02        .byte $02   ; 
- D 1 - I - 0x0167AD 05:A79D: 00        .byte $00   ; 
- D 1 - I - 0x0167AE 05:A79E: 37        .byte $37   ; 
- D 1 - I - 0x0167AF 05:A79F: 03        .byte $03   ; 
- D 1 - I - 0x0167B0 05:A7A0: 01        .byte $01   ; 
- D 1 - I - 0x0167B1 05:A7A1: A7 90     .dbyt off_A790
- D 1 - I - 0x0167B3 05:A7A3: FF        .byte $FF   ; 
- D 1 - I - 0x0167B4 05:A7A4: 02        .byte $02   ; 
- D 1 - I - 0x0167B5 05:A7A5: 02        .byte $02   ; 
- D 1 - I - 0x0167B6 05:A7A6: 00        .byte $00   ; 
- D 1 - I - 0x0167B7 05:A7A7: 3C        .byte $3C   ; 
- D 1 - I - 0x0167B8 05:A7A8: 02        .byte $02   ; 
- D 1 - I - 0x0167B9 05:A7A9: FF        .byte $FF   ; 
- D 1 - I - 0x0167BA 05:A7AA: 04        .byte $04   ; 
- D 1 - I - 0x0167BB 05:A7AB: 02        .byte $02   ; 
- D 1 - I - 0x0167BC 05:A7AC: 00        .byte $00   ; 
- D 1 - I - 0x0167BD 05:A7AD: 33        .byte $33   ; 
- D 1 - I - 0x0167BE 05:A7AE: 02        .byte $02   ; 
- D 1 - I - 0x0167BF 05:A7AF: FF        .byte $FF   ; 
- D 1 - I - 0x0167C0 05:A7B0: 04        .byte $04   ; 
- D 1 - I - 0x0167C1 05:A7B1: 02        .byte $02   ; 
- D 1 - I - 0x0167C2 05:A7B2: 00        .byte $00   ; 
- D 1 - I - 0x0167C3 05:A7B3: 39        .byte $39   ; 
- D 1 - I - 0x0167C4 05:A7B4: 02        .byte $02   ; 
- D 1 - I - 0x0167C5 05:A7B5: FF        .byte $FF   ; 
- D 1 - I - 0x0167C6 05:A7B6: 04        .byte $04   ; 
- D 1 - I - 0x0167C7 05:A7B7: 02        .byte $02   ; 
- D 1 - I - 0x0167C8 05:A7B8: 00        .byte $00   ; 
- D 1 - I - 0x0167C9 05:A7B9: 3E        .byte $3E   ; 
- D 1 - I - 0x0167CA 05:A7BA: FF        .byte $FF   ; 



_sfx_A7BB_1D_get_hit:
- D 1 - I - 0x0167CB 05:A7BB: 08        .byte $08   ; 
- D 1 - I - 0x0167CC 05:A7BC: 02        .byte $02   ; 
- D 1 - I - 0x0167CD 05:A7BD: FF        .byte $FF   ; 
- D 1 - I - 0x0167CE 05:A7BE: 06        .byte $06   ; 
- D 1 - I - 0x0167CF 05:A7BF: 0C        .byte $0C   ; 
- D 1 - I - 0x0167D0 05:A7C0: 0D        .byte $0D   ; 
- D 1 - I - 0x0167D1 05:A7C1: 29        .byte $29   ; 
- D 1 - I - 0x0167D2 05:A7C2: FF        .byte $FF   ; 
- D 1 - I - 0x0167D3 05:A7C3: FF        .byte $FF   ; 
- D 1 - I - 0x0167D4 05:A7C4: 0A        .byte $0A   ; 
- D 1 - I - 0x0167D5 05:A7C5: 0D        .byte $0D   ; 
- D 1 - I - 0x0167D6 05:A7C6: 02        .byte $02   ; 
- D 1 - I - 0x0167D7 05:A7C7: 0A        .byte $0A   ; 
- D 1 - I - 0x0167D8 05:A7C8: 7F        .byte $7F   ; 
- D 1 - I - 0x0167D9 05:A7C9: 04        .byte $04   ; 
- D 1 - I - 0x0167DA 05:A7CA: 02        .byte $02   ; 
- D 1 - I - 0x0167DB 05:A7CB: FF        .byte $FF   ; 
- D 1 - I - 0x0167DC 05:A7CC: 06        .byte $06   ; 
- D 1 - I - 0x0167DD 05:A7CD: 04        .byte $04   ; 
- D 1 - I - 0x0167DE 05:A7CE: 0C        .byte $0C   ; 
- D 1 - I - 0x0167DF 05:A7CF: FF        .byte $FF   ; 
- D 1 - I - 0x0167E0 05:A7D0: 7F        .byte $7F   ; 
- D 1 - I - 0x0167E1 05:A7D1: 49        .byte $49   ; 
- D 1 - I - 0x0167E2 05:A7D2: FF        .byte $FF   ; 



_sfx_A7D3_1E_option_select:
- D 1 - I - 0x0167E3 05:A7D3: 06        .byte $06   ; 
- D 1 - I - 0x0167E4 05:A7D4: 02        .byte $02   ; 
- D 1 - I - 0x0167E5 05:A7D5: 4B        .byte $4B   ; 
- D 1 - I - 0x0167E6 05:A7D6: 08        .byte $08   ; 
- D 1 - I - 0x0167E7 05:A7D7: 02        .byte $02   ; 
- D 1 - I - 0x0167E8 05:A7D8: 07        .byte $07   ; 
- D 1 - I - 0x0167E9 05:A7D9: 2A        .byte $2A   ; 
- D 1 - I - 0x0167EA 05:A7DA: 80        .byte $80   ; 
- D 1 - I - 0x0167EB 05:A7DB: 0F        .byte $0F   ; 
- D 1 - I - 0x0167EC 05:A7DC: 41        .byte $41   ; 
- D 1 - I - 0x0167ED 05:A7DD: FF        .byte $FF   ; 



_sfx_A7DE_1F:
- D 1 - I - 0x0167EE 05:A7DE: 11        .byte $11   ; 
- D 1 - I - 0x0167EF 05:A7DF: 02        .byte $02   ; 
- D 1 - I - 0x0167F0 05:A7E0: EB        .byte $EB   ; 
- D 1 - I - 0x0167F1 05:A7E1: 08        .byte $08   ; 
- D 1 - I - 0x0167F2 05:A7E2: 08        .byte $08   ; 
- D 1 - I - 0x0167F3 05:A7E3: 05        .byte $05   ; 
- D 1 - I - 0x0167F4 05:A7E4: 34        .byte $34   ; 
- D 1 - I - 0x0167F5 05:A7E5: 0F        .byte $0F   ; 
- D 1 - I - 0x0167F6 05:A7E6: 03        .byte $03   ; 
- D 1 - I - 0x0167F7 05:A7E7: 02        .byte $02   ; 
- D 1 - I - 0x0167F8 05:A7E8: EB        .byte $EB   ; 
- D 1 - I - 0x0167F9 05:A7E9: 08        .byte $08   ; 
- D 1 - I - 0x0167FA 05:A7EA: 08        .byte $08   ; 
- D 1 - I - 0x0167FB 05:A7EB: 00        .byte $00   ; 
- D 1 - I - 0x0167FC 05:A7EC: 03        .byte $03   ; 
- D 1 - I - 0x0167FD 05:A7ED: 02        .byte $02   ; 
- D 1 - I - 0x0167FE 05:A7EE: EB        .byte $EB   ; 
- D 1 - I - 0x0167FF 05:A7EF: 08        .byte $08   ; 
- D 1 - I - 0x016800 05:A7F0: 08        .byte $08   ; 
- D 1 - I - 0x016801 05:A7F1: 04        .byte $04   ; 
- D 1 - I - 0x016802 05:A7F2: 0E        .byte $0E   ; 
- D 1 - I - 0x016803 05:A7F3: 03        .byte $03   ; 
- D 1 - I - 0x016804 05:A7F4: 02        .byte $02   ; 
- D 1 - I - 0x016805 05:A7F5: EB        .byte $EB   ; 
- D 1 - I - 0x016806 05:A7F6: 08        .byte $08   ; 
- D 1 - I - 0x016807 05:A7F7: 08        .byte $08   ; 
- D 1 - I - 0x016808 05:A7F8: 00        .byte $00   ; 
- D 1 - I - 0x016809 05:A7F9: 03        .byte $03   ; 
- D 1 - I - 0x01680A 05:A7FA: 02        .byte $02   ; 
- D 1 - I - 0x01680B 05:A7FB: EB        .byte $EB   ; 
- D 1 - I - 0x01680C 05:A7FC: 08        .byte $08   ; 
- D 1 - I - 0x01680D 05:A7FD: 08        .byte $08   ; 
- D 1 - I - 0x01680E 05:A7FE: 04        .byte $04   ; 
- D 1 - I - 0x01680F 05:A7FF: 0D        .byte $0D   ; 
- D 1 - I - 0x016810 05:A800: 03        .byte $03   ; 
- D 1 - I - 0x016811 05:A801: 02        .byte $02   ; 
- D 1 - I - 0x016812 05:A802: EB        .byte $EB   ; 
- D 1 - I - 0x016813 05:A803: 08        .byte $08   ; 
- D 1 - I - 0x016814 05:A804: 08        .byte $08   ; 
- D 1 - I - 0x016815 05:A805: 00        .byte $00   ; 
- D 1 - I - 0x016816 05:A806: 03        .byte $03   ; 
- D 1 - I - 0x016817 05:A807: 02        .byte $02   ; 
- D 1 - I - 0x016818 05:A808: EB        .byte $EB   ; 
- D 1 - I - 0x016819 05:A809: 08        .byte $08   ; 
- D 1 - I - 0x01681A 05:A80A: 08        .byte $08   ; 
- D 1 - I - 0x01681B 05:A80B: 04        .byte $04   ; 
- D 1 - I - 0x01681C 05:A80C: 0C        .byte $0C   ; 
- D 1 - I - 0x01681D 05:A80D: 03        .byte $03   ; 
- D 1 - I - 0x01681E 05:A80E: 02        .byte $02   ; 
- D 1 - I - 0x01681F 05:A80F: EB        .byte $EB   ; 
- D 1 - I - 0x016820 05:A810: 08        .byte $08   ; 
- D 1 - I - 0x016821 05:A811: 08        .byte $08   ; 
- D 1 - I - 0x016822 05:A812: 00        .byte $00   ; 
- D 1 - I - 0x016823 05:A813: 03        .byte $03   ; 
- D 1 - I - 0x016824 05:A814: 02        .byte $02   ; 
- D 1 - I - 0x016825 05:A815: EB        .byte $EB   ; 
- D 1 - I - 0x016826 05:A816: 08        .byte $08   ; 
- D 1 - I - 0x016827 05:A817: 08        .byte $08   ; 
- D 1 - I - 0x016828 05:A818: 04        .byte $04   ; 
- D 1 - I - 0x016829 05:A819: 0B        .byte $0B   ; 
- D 1 - I - 0x01682A 05:A81A: 03        .byte $03   ; 
- D 1 - I - 0x01682B 05:A81B: 02        .byte $02   ; 
- D 1 - I - 0x01682C 05:A81C: EB        .byte $EB   ; 
- D 1 - I - 0x01682D 05:A81D: 08        .byte $08   ; 
- D 1 - I - 0x01682E 05:A81E: 08        .byte $08   ; 
- D 1 - I - 0x01682F 05:A81F: 00        .byte $00   ; 
- D 1 - I - 0x016830 05:A820: 03        .byte $03   ; 
- D 1 - I - 0x016831 05:A821: 02        .byte $02   ; 
- D 1 - I - 0x016832 05:A822: EB        .byte $EB   ; 
- D 1 - I - 0x016833 05:A823: 08        .byte $08   ; 
- D 1 - I - 0x016834 05:A824: 08        .byte $08   ; 
- D 1 - I - 0x016835 05:A825: 04        .byte $04   ; 
- D 1 - I - 0x016836 05:A826: 0A        .byte $0A   ; 
- D 1 - I - 0x016837 05:A827: 03        .byte $03   ; 
- D 1 - I - 0x016838 05:A828: 02        .byte $02   ; 
- D 1 - I - 0x016839 05:A829: EB        .byte $EB   ; 
- D 1 - I - 0x01683A 05:A82A: 08        .byte $08   ; 
- D 1 - I - 0x01683B 05:A82B: 08        .byte $08   ; 
- D 1 - I - 0x01683C 05:A82C: 00        .byte $00   ; 
- D 1 - I - 0x01683D 05:A82D: 03        .byte $03   ; 
- D 1 - I - 0x01683E 05:A82E: 02        .byte $02   ; 
- D 1 - I - 0x01683F 05:A82F: EB        .byte $EB   ; 
- D 1 - I - 0x016840 05:A830: 08        .byte $08   ; 
- D 1 - I - 0x016841 05:A831: 08        .byte $08   ; 
- D 1 - I - 0x016842 05:A832: 04        .byte $04   ; 
- D 1 - I - 0x016843 05:A833: 09        .byte $09   ; 
- D 1 - I - 0x016844 05:A834: 03        .byte $03   ; 
- D 1 - I - 0x016845 05:A835: 02        .byte $02   ; 
- D 1 - I - 0x016846 05:A836: EB        .byte $EB   ; 
- D 1 - I - 0x016847 05:A837: 08        .byte $08   ; 
- D 1 - I - 0x016848 05:A838: 08        .byte $08   ; 
- D 1 - I - 0x016849 05:A839: 00        .byte $00   ; 
- D 1 - I - 0x01684A 05:A83A: 03        .byte $03   ; 
- D 1 - I - 0x01684B 05:A83B: 02        .byte $02   ; 
- D 1 - I - 0x01684C 05:A83C: EB        .byte $EB   ; 
- D 1 - I - 0x01684D 05:A83D: 08        .byte $08   ; 
- D 1 - I - 0x01684E 05:A83E: 08        .byte $08   ; 
- D 1 - I - 0x01684F 05:A83F: 04        .byte $04   ; 
- D 1 - I - 0x016850 05:A840: 08        .byte $08   ; 
- D 1 - I - 0x016851 05:A841: 03        .byte $03   ; 
- D 1 - I - 0x016852 05:A842: 02        .byte $02   ; 
- D 1 - I - 0x016853 05:A843: EB        .byte $EB   ; 
- D 1 - I - 0x016854 05:A844: 08        .byte $08   ; 
- D 1 - I - 0x016855 05:A845: 08        .byte $08   ; 
- D 1 - I - 0x016856 05:A846: 00        .byte $00   ; 
- D 1 - I - 0x016857 05:A847: 03        .byte $03   ; 
- D 1 - I - 0x016858 05:A848: 02        .byte $02   ; 
- D 1 - I - 0x016859 05:A849: EB        .byte $EB   ; 
- D 1 - I - 0x01685A 05:A84A: 08        .byte $08   ; 
- D 1 - I - 0x01685B 05:A84B: 08        .byte $08   ; 
- D 1 - I - 0x01685C 05:A84C: 04        .byte $04   ; 
- D 1 - I - 0x01685D 05:A84D: 07        .byte $07   ; 
- D 1 - I - 0x01685E 05:A84E: 03        .byte $03   ; 
- D 1 - I - 0x01685F 05:A84F: 02        .byte $02   ; 
- D 1 - I - 0x016860 05:A850: EB        .byte $EB   ; 
- D 1 - I - 0x016861 05:A851: 08        .byte $08   ; 
- D 1 - I - 0x016862 05:A852: 08        .byte $08   ; 
- D 1 - I - 0x016863 05:A853: 00        .byte $00   ; 
- D 1 - I - 0x016864 05:A854: 03        .byte $03   ; 
- D 1 - I - 0x016865 05:A855: 02        .byte $02   ; 
- D 1 - I - 0x016866 05:A856: EB        .byte $EB   ; 
- D 1 - I - 0x016867 05:A857: 08        .byte $08   ; 
- D 1 - I - 0x016868 05:A858: 08        .byte $08   ; 
- D 1 - I - 0x016869 05:A859: 04        .byte $04   ; 
- D 1 - I - 0x01686A 05:A85A: 06        .byte $06   ; 
- D 1 - I - 0x01686B 05:A85B: 03        .byte $03   ; 
- D 1 - I - 0x01686C 05:A85C: 02        .byte $02   ; 
- D 1 - I - 0x01686D 05:A85D: EB        .byte $EB   ; 
- D 1 - I - 0x01686E 05:A85E: 08        .byte $08   ; 
- D 1 - I - 0x01686F 05:A85F: 08        .byte $08   ; 
- D 1 - I - 0x016870 05:A860: 00        .byte $00   ; 
- D 1 - I - 0x016871 05:A861: 03        .byte $03   ; 
- D 1 - I - 0x016872 05:A862: 02        .byte $02   ; 
- D 1 - I - 0x016873 05:A863: EB        .byte $EB   ; 
- D 1 - I - 0x016874 05:A864: 08        .byte $08   ; 
- D 1 - I - 0x016875 05:A865: 08        .byte $08   ; 
- D 1 - I - 0x016876 05:A866: 04        .byte $04   ; 
- D 1 - I - 0x016877 05:A867: 05        .byte $05   ; 
- D 1 - I - 0x016878 05:A868: 03        .byte $03   ; 
- D 1 - I - 0x016879 05:A869: 02        .byte $02   ; 
- D 1 - I - 0x01687A 05:A86A: EB        .byte $EB   ; 
- D 1 - I - 0x01687B 05:A86B: 08        .byte $08   ; 
- D 1 - I - 0x01687C 05:A86C: 08        .byte $08   ; 
- D 1 - I - 0x01687D 05:A86D: 00        .byte $00   ; 
- D 1 - I - 0x01687E 05:A86E: 03        .byte $03   ; 
- D 1 - I - 0x01687F 05:A86F: 02        .byte $02   ; 
- D 1 - I - 0x016880 05:A870: EB        .byte $EB   ; 
- D 1 - I - 0x016881 05:A871: 08        .byte $08   ; 
- D 1 - I - 0x016882 05:A872: 08        .byte $08   ; 
- D 1 - I - 0x016883 05:A873: 04        .byte $04   ; 
- D 1 - I - 0x016884 05:A874: 04        .byte $04   ; 
- D 1 - I - 0x016885 05:A875: 03        .byte $03   ; 
- D 1 - I - 0x016886 05:A876: 02        .byte $02   ; 
- D 1 - I - 0x016887 05:A877: EB        .byte $EB   ; 
- D 1 - I - 0x016888 05:A878: 08        .byte $08   ; 
- D 1 - I - 0x016889 05:A879: 08        .byte $08   ; 
- D 1 - I - 0x01688A 05:A87A: 00        .byte $00   ; 
- D 1 - I - 0x01688B 05:A87B: 03        .byte $03   ; 
- D 1 - I - 0x01688C 05:A87C: 02        .byte $02   ; 
- D 1 - I - 0x01688D 05:A87D: EB        .byte $EB   ; 
- D 1 - I - 0x01688E 05:A87E: 08        .byte $08   ; 
- D 1 - I - 0x01688F 05:A87F: 08        .byte $08   ; 
- D 1 - I - 0x016890 05:A880: 04        .byte $04   ; 
- D 1 - I - 0x016891 05:A881: 03        .byte $03   ; 
- D 1 - I - 0x016892 05:A882: 03        .byte $03   ; 
- D 1 - I - 0x016893 05:A883: 02        .byte $02   ; 
- D 1 - I - 0x016894 05:A884: EB        .byte $EB   ; 
- D 1 - I - 0x016895 05:A885: 08        .byte $08   ; 
- D 1 - I - 0x016896 05:A886: 08        .byte $08   ; 
- D 1 - I - 0x016897 05:A887: 00        .byte $00   ; 
- D 1 - I - 0x016898 05:A888: 03        .byte $03   ; 
- D 1 - I - 0x016899 05:A889: 02        .byte $02   ; 
- D 1 - I - 0x01689A 05:A88A: EB        .byte $EB   ; 
- D 1 - I - 0x01689B 05:A88B: 08        .byte $08   ; 
- D 1 - I - 0x01689C 05:A88C: 08        .byte $08   ; 
- D 1 - I - 0x01689D 05:A88D: 04        .byte $04   ; 
- D 1 - I - 0x01689E 05:A88E: 02        .byte $02   ; 
- D 1 - I - 0x01689F 05:A88F: 03        .byte $03   ; 
- D 1 - I - 0x0168A0 05:A890: 02        .byte $02   ; 
- D 1 - I - 0x0168A1 05:A891: EB        .byte $EB   ; 
- D 1 - I - 0x0168A2 05:A892: 08        .byte $08   ; 
- D 1 - I - 0x0168A3 05:A893: 08        .byte $08   ; 
- D 1 - I - 0x0168A4 05:A894: 00        .byte $00   ; 
- D 1 - I - 0x0168A5 05:A895: 03        .byte $03   ; 
- D 1 - I - 0x0168A6 05:A896: 02        .byte $02   ; 
- D 1 - I - 0x0168A7 05:A897: EB        .byte $EB   ; 
- D 1 - I - 0x0168A8 05:A898: 08        .byte $08   ; 
- D 1 - I - 0x0168A9 05:A899: 08        .byte $08   ; 
- D 1 - I - 0x0168AA 05:A89A: 04        .byte $04   ; 
- D 1 - I - 0x0168AB 05:A89B: 01        .byte $01   ; 
- D 1 - I - 0x0168AC 05:A89C: 03        .byte $03   ; 
- D 1 - I - 0x0168AD 05:A89D: 02        .byte $02   ; 
- D 1 - I - 0x0168AE 05:A89E: EB        .byte $EB   ; 
- D 1 - I - 0x0168AF 05:A89F: 08        .byte $08   ; 
- D 1 - I - 0x0168B0 05:A8A0: 08        .byte $08   ; 
- D 1 - I - 0x0168B1 05:A8A1: 00        .byte $00   ; 
- D 1 - I - 0x0168B2 05:A8A2: 03        .byte $03   ; 
- D 1 - I - 0x0168B3 05:A8A3: FF        .byte $FF   ; 



_sfx_A8A4_21_sand:
- D 1 - I - 0x0168B4 05:A8A4: 07        .byte $07   ; 
- D 1 - I - 0x0168B5 05:A8A5: 02        .byte $02   ; 
- D 1 - I - 0x0168B6 05:A8A6: 85        .byte $85   ; 
- D 1 - I - 0x0168B7 05:A8A7: 29        .byte $29   ; 
- D 1 - I - 0x0168B8 05:A8A8: 08        .byte $08   ; 
- D 1 - I - 0x0168B9 05:A8A9: 0D        .byte $0D   ; 
- D 1 - I - 0x0168BA 05:A8AA: 24        .byte $24   ; 
- D 1 - I - 0x0168BB 05:A8AB: 0F        .byte $0F   ; 
- D 1 - I - 0x0168BC 05:A8AC: 98        .byte $98   ; 
- D 1 - I - 0x0168BD 05:A8AD: 09        .byte $09   ; 
- D 1 - I - 0x0168BE 05:A8AE: FF        .byte $FF   ; 



_sfx_A8AF_22:
- D 1 - I - 0x0168BF 05:A8AF: 08        .byte $08   ; 
- D 1 - I - 0x0168C0 05:A8B0: 02        .byte $02   ; 
- D 1 - I - 0x0168C1 05:A8B1: FF        .byte $FF   ; 
- D 1 - I - 0x0168C2 05:A8B2: 32        .byte $32   ; 
- D 1 - I - 0x0168C3 05:A8B3: 0A        .byte $0A   ; 
- D 1 - I - 0x0168C4 05:A8B4: 0F        .byte $0F   ; 
- D 1 - I - 0x0168C5 05:A8B5: 32        .byte $32   ; 
- D 1 - I - 0x0168C6 05:A8B6: 40        .byte $40   ; 
- D 1 - I - 0x0168C7 05:A8B7: 0C        .byte $0C   ; 
- D 1 - I - 0x0168C8 05:A8B8: 8F        .byte $8F   ; 
- D 1 - I - 0x0168C9 05:A8B9: 3D        .byte $3D   ; 
- D 1 - I - 0x0168CA 05:A8BA: 0D        .byte $0D   ; 
- D 1 - I - 0x0168CB 05:A8BB: 33        .byte $33   ; 
- D 1 - I - 0x0168CC 05:A8BC: 0F        .byte $0F   ; 
- D 1 - I - 0x0168CD 05:A8BD: 88        .byte $88   ; 
- D 1 - I - 0x0168CE 05:A8BE: 08        .byte $08   ; 
- D 1 - I - 0x0168CF 05:A8BF: FF        .byte $FF   ; 



_sfx_A8C0_23:
- D 1 - I - 0x0168D0 05:A8C0: 08        .byte $08   ; 
- D 1 - I - 0x0168D1 05:A8C1: 02        .byte $02   ; 
- D 1 - I - 0x0168D2 05:A8C2: FF        .byte $FF   ; 
- D 1 - I - 0x0168D3 05:A8C3: 05        .byte $05   ; 
- D 1 - I - 0x0168D4 05:A8C4: 08        .byte $08   ; 
- D 1 - I - 0x0168D5 05:A8C5: 0D        .byte $0D   ; 
- D 1 - I - 0x0168D6 05:A8C6: 30        .byte $30   ; 
- D 1 - I - 0x0168D7 05:A8C7: 0F        .byte $0F   ; 
- D 1 - I - 0x0168D8 05:A8C8: FF        .byte $FF   ; 
- D 1 - I - 0x0168D9 05:A8C9: 03        .byte $03   ; 
- D 1 - I - 0x0168DA 05:A8CA: 02        .byte $02   ; 
- D 1 - I - 0x0168DB 05:A8CB: FF        .byte $FF   ; 
- D 1 - I - 0x0168DC 05:A8CC: 05        .byte $05   ; 
- D 1 - I - 0x0168DD 05:A8CD: 08        .byte $08   ; 
- D 1 - I - 0x0168DE 05:A8CE: 00        .byte $00   ; 
- D 1 - I - 0x0168DF 05:A8CF: 02        .byte $02   ; 
- D 1 - I - 0x0168E0 05:A8D0: 02        .byte $02   ; 
- D 1 - I - 0x0168E1 05:A8D1: FF        .byte $FF   ; 
- D 1 - I - 0x0168E2 05:A8D2: 0C        .byte $0C   ; 
- D 1 - I - 0x0168E3 05:A8D3: 08        .byte $08   ; 
- D 1 - I - 0x0168E4 05:A8D4: 09        .byte $09   ; 
- D 1 - I - 0x0168E5 05:A8D5: 2F        .byte $2F   ; 
- D 1 - I - 0x0168E6 05:A8D6: 3A        .byte $3A   ; 
- D 1 - I - 0x0168E7 05:A8D7: 06        .byte $06   ; 
- D 1 - I - 0x0168E8 05:A8D8: 02        .byte $02   ; 
- D 1 - I - 0x0168E9 05:A8D9: 96        .byte $96   ; 
- D 1 - I - 0x0168EA 05:A8DA: 1E        .byte $1E   ; 
- D 1 - I - 0x0168EB 05:A8DB: 08        .byte $08   ; 
- D 1 - I - 0x0168EC 05:A8DC: 08        .byte $08   ; 
- D 1 - I - 0x0168ED 05:A8DD: 00        .byte $00   ; 
- D 1 - I - 0x0168EE 05:A8DE: 02        .byte $02   ; 
- D 1 - I - 0x0168EF 05:A8DF: FF        .byte $FF   ; 


; bzk garbage
- - - - - - 0x0168F0 05:A8E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016900 05:A8F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016910 05:A900: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016920 05:A910: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016930 05:A920: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016940 05:A930: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016950 05:A940: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016960 05:A950: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016970 05:A960: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016980 05:A970: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016990 05:A980: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0169A0 05:A990: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0169B0 05:A9A0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0169C0 05:A9B0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0169D0 05:A9C0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0169E0 05:A9D0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0169F0 05:A9E0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016A00 05:A9F0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016A10 05:AA00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016A20 05:AA10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016A30 05:AA20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016A40 05:AA30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016A50 05:AA40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016A60 05:AA50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016A70 05:AA60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016A80 05:AA70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016A90 05:AA80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016AA0 05:AA90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016AB0 05:AAA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016AC0 05:AAB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016AD0 05:AAC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016AE0 05:AAD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016AF0 05:AAE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016B00 05:AAF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $DF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016B10 05:AB00: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016B20 05:AB10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016B30 05:AB20: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016B40 05:AB30: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016B50 05:AB40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016B60 05:AB50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016B70 05:AB60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016B80 05:AB70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016B90 05:AB80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016BA0 05:AB90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016BB0 05:ABA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016BC0 05:ABB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016BD0 05:ABC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016BE0 05:ABD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016BF0 05:ABE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016C00 05:ABF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016C10 05:AC00: FF        .byte $FF, $FD, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C20 05:AC10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $F7, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C30 05:AC20: FF        .byte $FF, $FB, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C40 05:AC30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C50 05:AC40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C60 05:AC50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C70 05:AC60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C80 05:AC70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C90 05:AC80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016CA0 05:AC90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016CB0 05:ACA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016CC0 05:ACB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016CD0 05:ACC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016CE0 05:ACD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FB, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016CF0 05:ACE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $DF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D00 05:ACF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D10 05:AD00: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016D20 05:AD10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016D30 05:AD20: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016D40 05:AD30: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016D50 05:AD40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016D60 05:AD50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016D70 05:AD60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016D80 05:AD70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016D90 05:AD80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016DA0 05:AD90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016DB0 05:ADA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016DC0 05:ADB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016DD0 05:ADC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016DE0 05:ADD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016DF0 05:ADE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016E00 05:ADF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016E10 05:AE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E20 05:AE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E30 05:AE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E40 05:AE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E50 05:AE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E60 05:AE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E70 05:AE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E80 05:AE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E90 05:AE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016EA0 05:AE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016EB0 05:AEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016EC0 05:AEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016ED0 05:AEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016EE0 05:AED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016EF0 05:AEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F00 05:AEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F10 05:AF00: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016F20 05:AF10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016F30 05:AF20: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016F40 05:AF30: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016F50 05:AF40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016F60 05:AF50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016F70 05:AF60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016F80 05:AF70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016F90 05:AF80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016FA0 05:AF90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016FB0 05:AFA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016FC0 05:AFB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016FD0 05:AFC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016FE0 05:AFD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x016FF0 05:AFE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x017000 05:AFF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



.segment "CHR_05"
.org $B000
; !!! bzk low byte of all chr pointers must be 00
; if you want to read a custom low byte, deal with 0x01C2AC



off_0x017010_chr:   ; reading up to BBFF
    .incbin "incbin/chr/05___B000_B4FF.chr"
off_0x017510_chr:   ; reading up to B7FF only
    .incbin "incbin/chr/05___B500_BAFF.chr"
off_0x017B10_chr:
    .incbin "incbin/chr/05___BB00_BBFF.chr"
 
 
 
off_0x017C10_chr:
    .incbin "incbin/chr/05___BC00_BFFF.chr"



.out .sprintf("Free bytes in bank 05: 0x%X [%d]", ($C000 - *), ($C000 - *))



