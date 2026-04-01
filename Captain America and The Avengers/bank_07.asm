.segment "BANK_07"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $8000  ; for listing file
; 0x00E010-0x01000F



.export sub_0x00E010_diasable_sound_engine
.export sub_0x00E013_play_sound
.export sub_0x00E016_update_sound_engine



sub_0x00E010_diasable_sound_engine:
; bzk optimize
C - - - - - 0x00E010 03:8000: 4C 11 80  JMP loc_8011_diasable_sound_engine



sub_0x00E013_play_sound:
; bzk optimize
C - - - - - 0x00E013 03:8003: 4C 21 81  JMP loc_8121_play_sound



sub_0x00E016_update_sound_engine:
; bzk optimize
C - - - - - 0x00E016 03:8006: 4C FD 81  JMP loc_81FD_update_sound_engine



tbl_8009_address_lo:
- D 0 - - - 0x00E019 03:8009: B7        .byte < ram_06B7_se_data   ; 00 
- D 0 - - - 0x00E01A 03:800A: BD        .byte < (ram_06B7_se_data + $06)   ; 01 
- - - - - - 0x00E01B 03:800B: C3        .byte < (ram_06B7_se_data + $0C)   ; 02 
- D 0 - - - 0x00E01C 03:800C: C9        .byte < (ram_06B7_se_data + $12)   ; 03 



tbl_800D_address_hi:
; bzk optimize, same bytes
- D 0 - - - 0x00E01D 03:800D: 06        .byte > ram_06B7_se_data   ; 00 
- D 0 - - - 0x00E01E 03:800E: 06        .byte > (ram_06B7_se_data + $06)   ; 01 
- - - - - - 0x00E01F 03:800F: 06        .byte > (ram_06B7_se_data + $0C)   ; 02 
- D 0 - - - 0x00E020 03:8010: 06        .byte > (ram_06B7_se_data + $12)   ; 03 



loc_8011_diasable_sound_engine:
C D 0 - - - 0x00E021 03:8011: A9 0F     LDA #$0F
C - - - - - 0x00E023 03:8013: 8D 15 40  STA $4015
C - - - - - 0x00E026 03:8016: A9 08     LDA #$08
C - - - - - 0x00E028 03:8018: 8D 01 40  STA $4001
C - - - - - 0x00E02B 03:801B: 8D 05 40  STA $4005
C - - - - - 0x00E02E 03:801E: A0 03     LDY #$03
C - - - - - 0x00E030 03:8020: A2 00     LDX #$00
C - - - - - 0x00E032 03:8022: A9 00     LDA #$00
bra_8024_loop:
; clear 0600-06FF
C - - - - - 0x00E034 03:8024: 9D 00 06  STA $0600,X
C - - - - - 0x00E037 03:8027: CA        DEX
C - - - - - 0x00E038 03:8028: D0 FA     BNE bra_8024_loop
bra_802A_loop:
C - - - - - 0x00E03A 03:802A: A9 00     LDA #con_0660_00
C - - - - - 0x00E03C 03:802C: 99 60 06  STA ram_0660_se_flags,Y
C - - - - - 0x00E03F 03:802F: A9 61     LDA #< tbl_8061
C - - - - - 0x00E041 03:8031: 99 40 06  STA ram_0640_se_data_ptr_lo,Y
C - - - - - 0x00E044 03:8034: A9 80     LDA #> tbl_8061
C - - - - - 0x00E046 03:8036: 99 44 06  STA ram_0644_se_data_ptr_hi,Y
C - - - - - 0x00E049 03:8039: 98        TYA
; * 04
C - - - - - 0x00E04A 03:803A: 0A        ASL
C - - - - - 0x00E04B 03:803B: 0A        ASL
; 
C - - - - - 0x00E04C 03:803C: AA        TAX
C - - - - - 0x00E04D 03:803D: A9 80     LDA #$80
C - - - - - 0x00E04F 03:803F: 9D 00 40  STA $4000,X ; 4000 4004 4008 400C 
C - - - - - 0x00E052 03:8042: 88        DEY
C - - - - - 0x00E053 03:8043: 10 E5     BPL bra_802A_loop
C - - - - - 0x00E055 03:8045: A9 00     LDA #$00
C - - - - - 0x00E057 03:8047: 85 F5     STA ram_00F5_se_useless
C - - - - - 0x00E059 03:8049: 85 F6     STA ram_00F5_se_useless + $01
C - - - - - 0x00E05B 03:804B: 8D 04 06  STA ram_0604_se_flag
C - - - - - 0x00E05E 03:804E: A9 FF     LDA #$FF
C - - - - - 0x00E060 03:8050: 8D 05 06  STA ram_0605_se_useless
C - - - - - 0x00E063 03:8053: A9 FF     LDA #$FF
C - - - - - 0x00E065 03:8055: 8D 06 06  STA ram_0606_se_useless
C - - - - - 0x00E068 03:8058: A9 00     LDA #$00
C - - - - - 0x00E06A 03:805A: 8D DC 06  STA ram_06DC_se
C - - - - - 0x00E06D 03:805D: 8D DD 06  STA ram_06DC_se + $01
C - - - - - 0x00E070 03:8060: 60        RTS



tbl_8061:
- D 0 - I - 0x00E071 03:8061: AE 06     .word $06AE ; 00 
- D 0 - I - 0x00E073 03:8063: 4E 06     .word $064E ; 01 
- D 0 - I - 0x00E075 03:8065: F3 05     .word $05F3 ; 02 
- D 0 - I - 0x00E077 03:8067: 9F 05     .word $059F ; 03 
- D 0 - I - 0x00E079 03:8069: 4D 05     .word $054D ; 04 
- D 0 - I - 0x00E07B 03:806B: 01 05     .word $0501 ; 05 
- D 0 - I - 0x00E07D 03:806D: B9 04     .word $04B9 ; 06 
- D 0 - I - 0x00E07F 03:806F: 75 04     .word $0475 ; 07 
- D 0 - I - 0x00E081 03:8071: 35 04     .word $0435 ; 08 
- D 0 - I - 0x00E083 03:8073: F8 03     .word $03F8 ; 09 
- D 0 - I - 0x00E085 03:8075: BF 03     .word $03BF ; 0A 
- D 0 - I - 0x00E087 03:8077: 89 03     .word $0389 ; 0B 
- D 0 - I - 0x00E089 03:8079: 57 03     .word $0357 ; 0C 
- D 0 - I - 0x00E08B 03:807B: 27 03     .word $0327 ; 0D 
- D 0 - I - 0x00E08D 03:807D: F9 02     .word $02F9 ; 0E 
- D 0 - I - 0x00E08F 03:807F: CF 02     .word $02CF ; 0F 
- D 0 - I - 0x00E091 03:8081: A6 02     .word $02A6 ; 10 
- D 0 - I - 0x00E093 03:8083: 80 02     .word $0280 ; 11 
- D 0 - I - 0x00E095 03:8085: 5C 02     .word $025C ; 12 
- D 0 - I - 0x00E097 03:8087: 3A 02     .word $023A ; 13 
- D 0 - I - 0x00E099 03:8089: 1A 02     .word $021A ; 14 
- D 0 - I - 0x00E09B 03:808B: FC 01     .word $01FC ; 15 
- D 0 - I - 0x00E09D 03:808D: DF 01     .word $01DF ; 16 
- D 0 - I - 0x00E09F 03:808F: C4 01     .word $01C4 ; 17 
- D 0 - I - 0x00E0A1 03:8091: AB 01     .word $01AB ; 18 
- D 0 - I - 0x00E0A3 03:8093: 93 01     .word $0193 ; 19 
- D 0 - I - 0x00E0A5 03:8095: 7C 01     .word $017C ; 1A 
- D 0 - I - 0x00E0A7 03:8097: 67 01     .word $0167 ; 1B 
- D 0 - I - 0x00E0A9 03:8099: 53 01     .word $0153 ; 1C 
- D 0 - I - 0x00E0AB 03:809B: 40 01     .word $0140 ; 1D 
- D 0 - I - 0x00E0AD 03:809D: 2E 01     .word $012E ; 1E 
- D 0 - I - 0x00E0AF 03:809F: 1D 01     .word $011D ; 1F 
- D 0 - I - 0x00E0B1 03:80A1: 0D 01     .word $010D ; 20 
- D 0 - I - 0x00E0B3 03:80A3: FE 00     .word $00FE ; 21 
- D 0 - I - 0x00E0B5 03:80A5: EF 00     .word $00EF ; 22 
- D 0 - I - 0x00E0B7 03:80A7: E2 00     .word $00E2 ; 23 
- D 0 - I - 0x00E0B9 03:80A9: D5 00     .word $00D5 ; 24 
- D 0 - I - 0x00E0BB 03:80AB: C9 00     .word $00C9 ; 25 
- D 0 - I - 0x00E0BD 03:80AD: BE 00     .word $00BE ; 26 
- D 0 - I - 0x00E0BF 03:80AF: B3 00     .word $00B3 ; 27 
- D 0 - I - 0x00E0C1 03:80B1: A9 00     .word $00A9 ; 28 
- D 0 - I - 0x00E0C3 03:80B3: A0 00     .word $00A0 ; 29 
- D 0 - I - 0x00E0C5 03:80B5: 97 00     .word $0097 ; 2A 
- D 0 - I - 0x00E0C7 03:80B7: 8E 00     .word $008E ; 2B 
- D 0 - I - 0x00E0C9 03:80B9: 86 00     .word $0086 ; 2C 
- D 0 - I - 0x00E0CB 03:80BB: 7F 00     .word $007F ; 2D 
- D 0 - I - 0x00E0CD 03:80BD: 77 00     .word $0077 ; 2E 
- D 0 - I - 0x00E0CF 03:80BF: 71 00     .word $0071 ; 2F 
- D 0 - I - 0x00E0D1 03:80C1: 6A 00     .word $006A ; 30 
- D 0 - I - 0x00E0D3 03:80C3: 64 00     .word $0064 ; 31 
- D 0 - I - 0x00E0D5 03:80C5: 5F 00     .word $005F ; 32 
- - - - - - 0x00E0D7 03:80C7: 59 00     .word $0059 ; 33 
- D 0 - I - 0x00E0D9 03:80C9: 54 00     .word $0054 ; 34 
- - - - - - 0x00E0DB 03:80CB: 50 00     .word $0050 ; 35 
- - - - - - 0x00E0DD 03:80CD: 4B 00     .word $004B ; 36 
- - - - - - 0x00E0DF 03:80CF: 47 00     .word $0047 ; 37 
- - - - - - 0x00E0E1 03:80D1: 43 00     .word $0043 ; 38 
- - - - - - 0x00E0E3 03:80D3: 3F 00     .word $003F ; 39 
- - - - - - 0x00E0E5 03:80D5: 3B 00     .word $003B ; 3A 
- - - - - - 0x00E0E7 03:80D7: 38 00     .word $0038 ; 3B 
- - - - - - 0x00E0E9 03:80D9: 35 00     .word $0035 ; 3C 
- - - - - - 0x00E0EB 03:80DB: 32 00     .word $0032 ; 3D 
- - - - - - 0x00E0ED 03:80DD: 2F 00     .word $002F ; 3E 
- - - - - - 0x00E0EF 03:80DF: 2C 00     .word $002C ; 3F 
- - - - - - 0x00E0F1 03:80E1: 2A 00     .word $002A ; 40 
- - - - - - 0x00E0F3 03:80E3: 28 00     .word $0028 ; 41 
- - - - - - 0x00E0F5 03:80E5: 25 00     .word $0025 ; 42 
- - - - - - 0x00E0F7 03:80E7: 23 00     .word $0023 ; 43 
- - - - - - 0x00E0F9 03:80E9: 21 00     .word $0021 ; 44 
- - - - - - 0x00E0FB 03:80EB: 1F 00     .word $001F ; 45 
- - - - - - 0x00E0FD 03:80ED: 1D 00     .word $001D ; 46 
- - - - - - 0x00E0FF 03:80EF: 1C 00     .word $001C ; 47 
- - - - - - 0x00E101 03:80F1: 1A 00     .word $001A ; 48 
- - - - - - 0x00E103 03:80F3: 19 00     .word $0019 ; 49 
- - - - - - 0x00E105 03:80F5: 17 00     .word $0017 ; 4A 
- - - - - - 0x00E107 03:80F7: 16 00     .word $0016 ; 4B 
- - - - - - 0x00E109 03:80F9: 15 00     .word $0015 ; 4C 
- - - - - - 0x00E10B 03:80FB: 14 00     .word $0014 ; 4D 
- - - - - - 0x00E10D 03:80FD: 12 00     .word $0012 ; 4E 
- - - - - - 0x00E10F 03:80FF: 11 00     .word $0011 ; 4F 
- - - - - - 0x00E111 03:8101: 10 00     .word $0010 ; 50 
- - - - - - 0x00E113 03:8103: 0F 00     .word $000F ; 51 
- - - - - - 0x00E115 03:8105: 0E 00     .word $000E ; 52 
- - - - - - 0x00E117 03:8107: 0E 00     .word $000E ; 53 
- - - - - - 0x00E119 03:8109: 0D 00     .word $000D ; 54 
- - - - - - 0x00E11B 03:810B: 0C 00     .word $000C ; 55 
- - - - - - 0x00E11D 03:810D: 0B 00     .word $000B ; 56 
- - - - - - 0x00E11F 03:810F: 0B 00     .word $000B ; 57 
- - - - - - 0x00E121 03:8111: 0A 00     .word $000A ; 58 
- - - - - - 0x00E123 03:8113: 0A 00     .word $000A ; 59 
- - - - - - 0x00E125 03:8115: 09 00     .word $0009 ; 5A 
- - - - - - 0x00E127 03:8117: 08 00     .word $0008 ; 5B 
- - - - - - 0x00E129 03:8119: 08 00     .word $0008 ; 5C 
- - - - - - 0x00E12B 03:811B: 07 00     .word $0007 ; 5D 
- - - - - - 0x00E12D 03:811D: 07 00     .word $0007 ; 5E 
- D 0 - I - 0x00E12F 03:811F: 07 00     .word $0007 ; 5F 



loc_8121_play_sound:
; in
    ; A = con_sfx
C D 0 - - - 0x00E131 03:8121: 85 F0     STA ram_00F0_se_sound_id
C - - - - - 0x00E133 03:8123: D0 0D     BNE bra_8132
; A = 00
- - - - - - 0x00E135 03:8125: 8D 00 06  STA ram_0600_se_sound_id
- - - - - - 0x00E138 03:8128: 8D 01 06  STA ram_0601_se
- - - - - - 0x00E13B 03:812B: 8D CF 06  STA ram_06CF_se
- - - - - - 0x00E13E 03:812E: 8D D1 06  STA ram_06D1_se
- - - - - - 0x00E141 03:8131: 60        RTS
bra_8132:
; A = 01+
C - - - - - 0x00E142 03:8132: 48        PHA ; 1
C - - - - - 0x00E143 03:8133: A9 A2     LDA #< (tbl_8AA4_sfx_and_music_data - $02)
C - - - - - 0x00E145 03:8135: 85 F9     STA ram_00F9_se_t01_sound_data_ptr
C - - - - - 0x00E147 03:8137: A9 8A     LDA #> (tbl_8AA4_sfx_and_music_data - $02)
C - - - - - 0x00E149 03:8139: 85 FA     STA ram_00F9_se_t01_sound_data_ptr + $01
C - - - - - 0x00E14B 03:813B: 68        PLA ; 1
; bzk optimize, useless check, all values < 80
C - - - - - 0x00E14C 03:813C: 10 02     BPL bra_8140_00_7F
; 80-FF
- - - - - - 0x00E14E 03:813E: E6 FA     INC ram_00F9_se_t01_sound_data_ptr + $01
bra_8140_00_7F:
C - - - - - 0x00E150 03:8140: 0A        ASL
C - - - - - 0x00E151 03:8141: A8        TAY
C - - - - - 0x00E152 03:8142: B1 F9     LDA (ram_00F9_se_t01_sound_data_ptr),Y
C - - - - - 0x00E154 03:8144: 85 F1     STA ram_00F1_se_t01_sound_data
C - - - - - 0x00E156 03:8146: C8        INY
C - - - - - 0x00E157 03:8147: B1 F9     LDA (ram_00F9_se_t01_sound_data_ptr),Y
C - - - - - 0x00E159 03:8149: 85 F2     STA ram_00F1_se_t01_sound_data + $01
C - - - - - 0x00E15B 03:814B: A0 00     LDY #$00
C - - - - - 0x00E15D 03:814D: B1 F1     LDA (ram_00F1_se_t01_sound_data),Y
C - - - - - 0x00E15F 03:814F: 30 35     BMI bra_8186
C - - - - - 0x00E161 03:8151: AD 00 06  LDA ram_0600_se_sound_id
C - - - - - 0x00E164 03:8154: F0 0B     BEQ bra_8161
; bzk optimize, loading the same A
; A = 01+
C - - - - - 0x00E166 03:8156: AD 00 06  LDA ram_0600_se_sound_id
C - - - - - 0x00E169 03:8159: 20 B8 81  JSR sub_81B8
C - - - - - 0x00E16C 03:815C: 20 D2 81  JSR sub_81D2
C - - - - - 0x00E16F 03:815F: F0 24     BEQ bra_8185_RTS
bra_8161:
C - - - - - 0x00E171 03:8161: A5 F0     LDA ram_00F0_se_sound_id
C - - - - - 0x00E173 03:8163: 8D 00 06  STA ram_0600_se_sound_id
C - - - - - 0x00E176 03:8166: A9 0F     LDA #$0F
C - - - - - 0x00E178 03:8168: 8D CF 06  STA ram_06CF_se
C - - - - - 0x00E17B 03:816B: A9 00     LDA #$00
C - - - - - 0x00E17D 03:816D: 8D D3 06  STA ram_06D3_se
C - - - - - 0x00E180 03:8170: 8D D4 06  STA ram_06D3_se + $01
C - - - - - 0x00E183 03:8173: 8D D5 06  STA ram_06D3_se + $02
C - - - - - 0x00E186 03:8176: 8D D6 06  STA ram_06D3_se + $03
C - - - - - 0x00E189 03:8179: 8D D8 06  STA ram_06D8_se
C - - - - - 0x00E18C 03:817C: 8D D9 06  STA ram_06D8_se + $01
C - - - - - 0x00E18F 03:817F: 8D DA 06  STA ram_06D8_se + $02
C - - - - - 0x00E192 03:8182: 8D DB 06  STA ram_06D8_se + $03
bra_8185_RTS:
C - - - - - 0x00E195 03:8185: 60        RTS
bra_8186:
C - - - - - 0x00E196 03:8186: AD 00 06  LDA ram_0600_se_sound_id
C - - - - - 0x00E199 03:8189: F0 12     BEQ bra_819D
C - - - - - 0x00E19B 03:818B: 20 B8 81  JSR sub_81B8
C - - - - - 0x00E19E 03:818E: A0 00     LDY #$00
C - - - - - 0x00E1A0 03:8190: B1 F1     LDA (ram_00F1_se_t01_sound_data),Y
C - - - - - 0x00E1A2 03:8192: 29 0F     AND #$0F
C - - - - - 0x00E1A4 03:8194: 31 F3     AND (ram_00F3_se_t01_sound_data),Y
C - - - - - 0x00E1A6 03:8196: F0 05     BEQ bra_819D
C - - - - - 0x00E1A8 03:8198: 20 D2 81  JSR sub_81D2
C - - - - - 0x00E1AB 03:819B: F0 1A     BEQ bra_81B7_RTS
bra_819D:
C - - - - - 0x00E1AD 03:819D: AD 01 06  LDA ram_0601_se
C - - - - - 0x00E1B0 03:81A0: F0 0B     BEQ bra_81AD
; bzk optimize, useless LDA
C - - - - - 0x00E1B2 03:81A2: AD 01 06  LDA ram_0601_se
; 
C - - - - - 0x00E1B5 03:81A5: 20 B8 81  JSR sub_81B8
C - - - - - 0x00E1B8 03:81A8: 20 D2 81  JSR sub_81D2
C - - - - - 0x00E1BB 03:81AB: F0 0A     BEQ bra_81B7_RTS
bra_81AD:
C - - - - - 0x00E1BD 03:81AD: A5 F0     LDA ram_00F0_se_sound_id
C - - - - - 0x00E1BF 03:81AF: 8D 01 06  STA ram_0601_se
C - - - - - 0x00E1C2 03:81B2: A9 0F     LDA #$0F
C - - - - - 0x00E1C4 03:81B4: 8D D1 06  STA ram_06D1_se
bra_81B7_RTS:
C - - - - - 0x00E1C7 03:81B7: 60        RTS



sub_81B8:
C - - - - - 0x00E1C8 03:81B8: 48        PHA
C - - - - - 0x00E1C9 03:81B9: A9 A2     LDA #< (tbl_8AA4_sfx_and_music_data - $02)
C - - - - - 0x00E1CB 03:81BB: 85 F9     STA ram_00F9_se_t02_sound_data_ptr
C - - - - - 0x00E1CD 03:81BD: A9 8A     LDA #> (tbl_8AA4_sfx_and_music_data - $02)
C - - - - - 0x00E1CF 03:81BF: 85 FA     STA ram_00F9_se_t02_sound_data_ptr + $01
C - - - - - 0x00E1D1 03:81C1: 68        PLA
; bzk optimize, useless check, all values < 80
C - - - - - 0x00E1D2 03:81C2: 10 02     BPL bra_81C6_00_7F
; 80-FF
- - - - - - 0x00E1D4 03:81C4: E6 FA     INC ram_00F9_se_t02_sound_data_ptr + $01
bra_81C6_00_7F:
C - - - - - 0x00E1D6 03:81C6: 0A        ASL
C - - - - - 0x00E1D7 03:81C7: A8        TAY
C - - - - - 0x00E1D8 03:81C8: B1 F9     LDA (ram_00F9_se_t02_sound_data_ptr),Y
C - - - - - 0x00E1DA 03:81CA: 85 F3     STA ram_00F3_se_t01_sound_data
C - - - - - 0x00E1DC 03:81CC: C8        INY
C - - - - - 0x00E1DD 03:81CD: B1 F9     LDA (ram_00F9_se_t02_sound_data_ptr),Y
C - - - - - 0x00E1DF 03:81CF: 85 F4     STA ram_00F3_se_t01_sound_data + $01
C - - - - - 0x00E1E1 03:81D1: 60        RTS



sub_81D2:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x00E1E2 03:81D2: C6 F0     DEC ram_00F0_se_sound_id
C - - - - - 0x00E1E4 03:81D4: A0 01     LDY #$01
C - - - - - 0x00E1E6 03:81D6: B1 F3     LDA (ram_00F3_se_t01_sound_data),Y
C - - - - - 0x00E1E8 03:81D8: AA        TAX
C - - - - - 0x00E1E9 03:81D9: C8        INY
C - - - - - 0x00E1EA 03:81DA: B1 F3     LDA (ram_00F3_se_t01_sound_data),Y
C - - - - - 0x00E1EC 03:81DC: 86 F3     STX ram_00F3_se_t02_sound_data
C - - - - - 0x00E1EE 03:81DE: 85 F4     STA ram_00F3_se_t02_sound_data + $01
C - - - - - 0x00E1F0 03:81E0: A5 F0     LDA ram_00F0_se_sound_id
; / 08
C - - - - - 0x00E1F2 03:81E2: 4A        LSR
C - - - - - 0x00E1F3 03:81E3: 4A        LSR
C - - - - - 0x00E1F4 03:81E4: 4A        LSR
; 
C - - - - - 0x00E1F5 03:81E5: A8        TAY
C - - - - - 0x00E1F6 03:81E6: B1 F3     LDA (ram_00F3_se_t02_sound_data),Y
C - - - - - 0x00E1F8 03:81E8: A8        TAY
C - - - - - 0x00E1F9 03:81E9: A5 F0     LDA ram_00F0_se_sound_id
C - - - - - 0x00E1FB 03:81EB: 29 07     AND #$07
C - - - - - 0x00E1FD 03:81ED: AA        TAX
C - - - - - 0x00E1FE 03:81EE: 98        TYA
C - - - - - 0x00E1FF 03:81EF: E6 F0     INC ram_00F0_se_sound_id
C - - - - - 0x00E201 03:81F1: 3D F5 81  AND tbl_81F5,X
C - - - - - 0x00E204 03:81F4: 60        RTS



tbl_81F5:
- D 0 - - - 0x00E205 03:81F5: 80        .byte $80   ; 00 
- D 0 - - - 0x00E206 03:81F6: 40        .byte $40   ; 01 
- D 0 - - - 0x00E207 03:81F7: 20        .byte $20   ; 02 
- D 0 - - - 0x00E208 03:81F8: 10        .byte $10   ; 03 



tbl_81F9:
- D 0 - - - 0x00E209 03:81F9: 08        .byte $08   ; 00 
- D 0 - - - 0x00E20A 03:81FA: 04        .byte $04   ; 01 
- D 0 - - - 0x00E20B 03:81FB: 02        .byte $02   ; 02 
- D 0 - - - 0x00E20C 03:81FC: 01        .byte $01   ; 03 



loc_81FD_update_sound_engine:
C D 0 - - - 0x00E20D 03:81FD: 20 F7 82  JSR sub_82F7
C - - - - - 0x00E210 03:8200: 20 AE 82  JSR sub_82AE
C - - - - - 0x00E213 03:8203: A2 03     LDX #$03
loc_8205_loop:
C D 0 - - - 0x00E215 03:8205: 8E 0B 06  STX ram_060B_se_ch_index
C - - - - - 0x00E218 03:8208: AD 0A 06  LDA ram_060A_se
C - - - - - 0x00E21B 03:820B: D0 0E     BNE bra_821B
; A = 00
C - - - - - 0x00E21D 03:820D: 8D 00 06  STA ram_0600_se_sound_id
C - - - - - 0x00E220 03:8210: 8D 02 06  STA ram_0602_se_useless
C - - - - - 0x00E223 03:8213: 8D CF 06  STA ram_06CF_se
C - - - - - 0x00E226 03:8216: 8D D0 06  STA ram_06D0_se
C - - - - - 0x00E229 03:8219: F0 31     BEQ bra_824C    ; jmp
bra_821B:
C - - - - - 0x00E22B 03:821B: 3D F9 81  AND tbl_81F9,X
C - - - - - 0x00E22E 03:821E: F0 2C     BEQ bra_824C
C - - - - - 0x00E230 03:8220: AD 07 06  LDA ram_0607_se_flag
C - - - - - 0x00E233 03:8223: F0 27     BEQ bra_824C
C - - - - - 0x00E235 03:8225: DE 48 06  DEC ram_0648_se,X
C - - - - - 0x00E238 03:8228: D0 22     BNE bra_824C
C - - - - - 0x00E23A 03:822A: BD 60 06  LDA ram_0660_se_flags,X
C - - - - - 0x00E23D 03:822D: 29 10     AND #con_0660_10
C - - - - - 0x00E23F 03:822F: F0 05     BEQ bra_8236
C - - - - - 0x00E241 03:8231: A9 FF     LDA #$FF
C - - - - - 0x00E243 03:8233: 8D 08 06  STA ram_0608_se_useless
bra_8236:
; clear some flags
C - - - - - 0x00E246 03:8236: BD 60 06  LDA ram_0660_se_flags,X
C - - - - - 0x00E249 03:8239: 29 CF     AND #(con_0660_10 + con_0660_20) ^ $FF
C - - - - - 0x00E24B 03:823B: 9D 60 06  STA ram_0660_se_flags,X
; 
C - - - - - 0x00E24E 03:823E: A9 00     LDA #$00
C - - - - - 0x00E250 03:8240: 8D E6 06  STA ram_06E6_se_useless
C - - - - - 0x00E253 03:8243: 20 4C 84  JSR sub_844C
C - - - - - 0x00E256 03:8246: BD 4C 06  LDA ram_064C_se,X
C - - - - - 0x00E259 03:8249: 9D 48 06  STA ram_0648_se,X
bra_824C:
C - - - - - 0x00E25C 03:824C: AD 09 06  LDA ram_0609_se
C - - - - - 0x00E25F 03:824F: D0 0E     BNE bra_825F
; A = 00
C - - - - - 0x00E261 03:8251: 8D 01 06  STA ram_0601_se
C - - - - - 0x00E264 03:8254: 8D 03 06  STA ram_0603_se_useless
C - - - - - 0x00E267 03:8257: 8D D1 06  STA ram_06D1_se
C - - - - - 0x00E26A 03:825A: 8D D2 06  STA ram_06D2_se
C - - - - - 0x00E26D 03:825D: F0 25     BEQ bra_8284    ; jmp
bra_825F:
C - - - - - 0x00E26F 03:825F: 3D F9 81  AND tbl_81F9,X
C - - - - - 0x00E272 03:8262: F0 20     BEQ bra_8284
C - - - - - 0x00E274 03:8264: BD 60 06  LDA ram_0660_se_flags,X
C - - - - - 0x00E277 03:8267: 09 20     ORA #con_0660_20
C - - - - - 0x00E279 03:8269: 9D 60 06  STA ram_0660_se_flags,X
C - - - - - 0x00E27C 03:826C: DE 22 06  DEC ram_0622_se,X
C - - - - - 0x00E27F 03:826F: D0 31     BNE bra_82A2
C - - - - - 0x00E281 03:8271: BD 26 06  LDA ram_0626_se_flags,X
C - - - - - 0x00E284 03:8274: 29 BF     AND #con_0626_40 ^ $FF
C - - - - - 0x00E286 03:8276: 9D 26 06  STA ram_0626_se_flags,X
C - - - - - 0x00E289 03:8279: A9 01     LDA #$01
C - - - - - 0x00E28B 03:827B: 8D E6 06  STA ram_06E6_se_useless
C - - - - - 0x00E28E 03:827E: 20 2B 85  JSR sub_852B
C - - - - - 0x00E291 03:8281: 4C A2 82  JMP loc_82A2
bra_8284:
C - - - - - 0x00E294 03:8284: AD 0A 06  LDA ram_060A_se
C - - - - - 0x00E297 03:8287: 3D F9 81  AND tbl_81F9,X
C - - - - - 0x00E29A 03:828A: F0 16     BEQ bra_82A2
C - - - - - 0x00E29C 03:828C: AD 07 06  LDA ram_0607_se_flag
C - - - - - 0x00E29F 03:828F: F0 11     BEQ bra_82A2
C - - - - - 0x00E2A1 03:8291: BD 48 06  LDA ram_0648_se,X
C - - - - - 0x00E2A4 03:8294: DD 4C 06  CMP ram_064C_se,X
C - - - - - 0x00E2A7 03:8297: D0 06     BNE bra_829F
C - - - - - 0x00E2A9 03:8299: 20 CF 82  JSR sub_82CF
C - - - - - 0x00E2AC 03:829C: 4C A2 82  JMP loc_82A2
bra_829F:
C - - - - - 0x00E2AF 03:829F: 20 6B 86  JSR sub_866B
bra_82A2:
loc_82A2:
C D 0 - - - 0x00E2B2 03:82A2: A9 00     LDA #$00
C - - - - - 0x00E2B4 03:82A4: 8D 08 06  STA ram_0608_se_useless
C - - - - - 0x00E2B7 03:82A7: CA        DEX
C - - - - - 0x00E2B8 03:82A8: 30 03     BMI bra_82AD_RTS
C - - - - - 0x00E2BA 03:82AA: 4C 05 82  JMP loc_8205_loop
bra_82AD_RTS:
C - - - - - 0x00E2BD 03:82AD: 60        RTS



sub_82AE:
C - - - - - 0x00E2BE 03:82AE: A5 F5     LDA ram_00F5_se_useless
C - - - - - 0x00E2C0 03:82B0: 38        SEC
C - - - - - 0x00E2C1 03:82B1: 6D 05 06  ADC ram_0605_se_useless
C - - - - - 0x00E2C4 03:82B4: 85 F5     STA ram_00F5_se_useless
C - - - - - 0x00E2C6 03:82B6: A5 F6     LDA ram_00F5_se_useless + $01
C - - - - - 0x00E2C8 03:82B8: 6D 06 06  ADC ram_0606_se_useless
C - - - - - 0x00E2CB 03:82BB: 85 F6     STA ram_00F5_se_useless + $01
C - - - - - 0x00E2CD 03:82BD: A9 00     LDA #$00
C - - - - - 0x00E2CF 03:82BF: 8D 07 06  STA ram_0607_se_flag
C - - - - - 0x00E2D2 03:82C2: 90 0A     BCC bra_82CE_RTS
C - - - - - 0x00E2D4 03:82C4: AD 04 06  LDA ram_0604_se_flag
C - - - - - 0x00E2D7 03:82C7: D0 05     BNE bra_82CE_RTS
C - - - - - 0x00E2D9 03:82C9: A9 FF     LDA #$FF
C - - - - - 0x00E2DB 03:82CB: 8D 07 06  STA ram_0607_se_flag
bra_82CE_RTS:
C - - - - - 0x00E2DE 03:82CE: 60        RTS



sub_82CF:
C - - - - - 0x00E2DF 03:82CF: BD 60 06  LDA ram_0660_se_flags,X
C - - - - - 0x00E2E2 03:82D2: 29 10     AND #con_0660_10
C - - - - - 0x00E2E4 03:82D4: D0 07     BNE bra_82DD
C - - - - - 0x00E2E6 03:82D6: BD 60 06  LDA ram_0660_se_flags,X
C - - - - - 0x00E2E9 03:82D9: 29 20     AND #con_0660_20
C - - - - - 0x00E2EB 03:82DB: D0 14     BNE bra_82F1
bra_82DD:
C - - - - - 0x00E2ED 03:82DD: 20 E1 85  JSR sub_85E1
C - - - - - 0x00E2F0 03:82E0: E0 02     CPX #$02
C - - - - - 0x00E2F2 03:82E2: D0 07     BNE bra_82EB
C - - - - - 0x00E2F4 03:82E4: A9 FF     LDA #$FF
C - - - - - 0x00E2F6 03:82E6: 8D 08 40  STA $4008
C - - - - - 0x00E2F9 03:82E9: D0 B7     BNE bra_82A2    ; jmp
bra_82EB:
C - - - - - 0x00E2FB 03:82EB: 20 79 85  JSR sub_8579
C - - - - - 0x00E2FE 03:82EE: 4C A2 82  JMP loc_82A2
bra_82F1:
C - - - - - 0x00E301 03:82F1: 20 59 89  JSR sub_8959
C - - - - - 0x00E304 03:82F4: 4C A2 82  JMP loc_82A2



sub_82F7:
C - - - - - 0x00E307 03:82F7: AD 00 06  LDA ram_0600_se_sound_id
C - - - - - 0x00E30A 03:82FA: F0 0B     BEQ bra_8307
C - - - - - 0x00E30C 03:82FC: AD CF 06  LDA ram_06CF_se
C - - - - - 0x00E30F 03:82FF: CD D0 06  CMP ram_06D0_se
C - - - - - 0x00E312 03:8302: F0 03     BEQ bra_8307
C - - - - - 0x00E314 03:8304: 20 18 83  JSR sub_8318
bra_8307:
C - - - - - 0x00E317 03:8307: AD 01 06  LDA ram_0601_se
C - - - - - 0x00E31A 03:830A: F0 0B     BEQ bra_8317_RTS
C - - - - - 0x00E31C 03:830C: AD D1 06  LDA ram_06D1_se
C - - - - - 0x00E31F 03:830F: CD D2 06  CMP ram_06D2_se
C - - - - - 0x00E322 03:8312: F0 03     BEQ bra_8317_RTS
C - - - - - 0x00E324 03:8314: 4C A4 83  JMP loc_83A4
bra_8317_RTS:
C - - - - - 0x00E327 03:8317: 60        RTS



sub_8318:
C - - - - - 0x00E328 03:8318: A2 03     LDX #$03
bra_831A_loop:
C - - - - - 0x00E32A 03:831A: AD 0A 06  LDA ram_060A_se
C - - - - - 0x00E32D 03:831D: 3D F9 81  AND tbl_81F9,X
C - - - - - 0x00E330 03:8320: F0 0E     BEQ bra_8330
C - - - - - 0x00E332 03:8322: AD 09 06  LDA ram_0609_se
C - - - - - 0x00E335 03:8325: 3D F9 81  AND tbl_81F9,X
C - - - - - 0x00E338 03:8328: D0 06     BNE bra_8330
C - - - - - 0x00E33A 03:832A: 8E 0B 06  STX ram_060B_se_ch_index
C - - - - - 0x00E33D 03:832D: 20 59 89  JSR sub_8959
bra_8330:
C - - - - - 0x00E340 03:8330: CA        DEX
C - - - - - 0x00E341 03:8331: 10 E7     BPL bra_831A_loop
C - - - - - 0x00E343 03:8333: AD 00 06  LDA ram_0600_se_sound_id
C - - - - - 0x00E346 03:8336: 48        PHA ; 1
C - - - - - 0x00E347 03:8337: A9 FF     LDA #$FF
C - - - - - 0x00E349 03:8339: 8D CF 06  STA ram_06CF_se
C - - - - - 0x00E34C 03:833C: 8D D0 06  STA ram_06D0_se
C - - - - - 0x00E34F 03:833F: A9 A2     LDA #< (tbl_8AA4_sfx_and_music_data - $02)
C - - - - - 0x00E351 03:8341: 85 F9     STA ram_00F9_se_t03_sound_data_ptr
C - - - - - 0x00E353 03:8343: A9 8A     LDA #> (tbl_8AA4_sfx_and_music_data - $02)
C - - - - - 0x00E355 03:8345: 85 FA     STA ram_00F9_se_t03_sound_data_ptr + $01
C - - - - - 0x00E357 03:8347: 68        PLA ; 1
; bzk optimize, useless check, all values < 80
C - - - - - 0x00E358 03:8348: 10 02     BPL bra_834C_00_7F
; 80-FF
- - - - - - 0x00E35A 03:834A: E6 FA     INC ram_00F9_se_t03_sound_data_ptr + $01
bra_834C_00_7F:
C - - - - - 0x00E35C 03:834C: 0A        ASL
C - - - - - 0x00E35D 03:834D: A8        TAY
C - - - - - 0x00E35E 03:834E: B1 F9     LDA (ram_00F9_se_t03_sound_data_ptr),Y
C - - - - - 0x00E360 03:8350: 85 F7     STA ram_00F7_se_t01_sound_data
C - - - - - 0x00E362 03:8352: C8        INY
C - - - - - 0x00E363 03:8353: B1 F9     LDA (ram_00F9_se_t03_sound_data_ptr),Y
C - - - - - 0x00E365 03:8355: 85 F8     STA ram_00F7_se_t01_sound_data + $01
C - - - - - 0x00E367 03:8357: A0 00     LDY #$00
C - - - - - 0x00E369 03:8359: B1 F7     LDA (ram_00F7_se_t01_sound_data),Y
C - - - - - 0x00E36B 03:835B: 29 7F     AND #$7F
C - - - - - 0x00E36D 03:835D: 8D 0A 06  STA ram_060A_se
C - - - - - 0x00E370 03:8360: 85 FF     STA ram_00FF_se_t10
C - - - - - 0x00E372 03:8362: A2 03     LDX #$03
C - - - - - 0x00E374 03:8364: A0 03     LDY #$03
C - - - - - 0x00E376 03:8366: A9 08     LDA #$08
C - - - - - 0x00E378 03:8368: 8D 75 06  STA ram_0675_se
C - - - - - 0x00E37B 03:836B: 8D 76 06  STA ram_0675_se + $01
bra_836E_loop:
C - - - - - 0x00E37E 03:836E: A5 FF     LDA ram_00FF_se_t10
C - - - - - 0x00E380 03:8370: 4A        LSR
C - - - - - 0x00E381 03:8371: 85 FF     STA ram_00FF_se_t10
C - - - - - 0x00E383 03:8373: 90 2B     BCC bra_83A0
C - - - - - 0x00E385 03:8375: B1 F7     LDA (ram_00F7_se_t01_sound_data),Y
C - - - - - 0x00E387 03:8377: C8        INY
C - - - - - 0x00E388 03:8378: 9D 38 06  STA ram_0638_se_data_ptr_lo,X
C - - - - - 0x00E38B 03:837B: B1 F7     LDA (ram_00F7_se_t01_sound_data),Y
C - - - - - 0x00E38D 03:837D: C8        INY
C - - - - - 0x00E38E 03:837E: 9D 3C 06  STA ram_063C_se_data_ptr_hi,X
C - - - - - 0x00E391 03:8381: A9 00     LDA #$00
C - - - - - 0x00E393 03:8383: 9D E0 06  STA ram_06E0_se,X
C - - - - - 0x00E396 03:8386: 9D 60 06  STA ram_0660_se_flags,X ; con_0660_00
C - - - - - 0x00E399 03:8389: 9D 64 06  STA ram_0664_se,X
C - - - - - 0x00E39C 03:838C: 9D 50 06  STA ram_0650_se,X
C - - - - - 0x00E39F 03:838F: 9D 54 06  STA ram_0654_se,X
C - - - - - 0x00E3A2 03:8392: 9D 58 06  STA ram_0658_se,X
C - - - - - 0x00E3A5 03:8395: 9D 5C 06  STA ram_065C_se,X
C - - - - - 0x00E3A8 03:8398: A9 01     LDA #$01
C - - - - - 0x00E3AA 03:839A: 9D 48 06  STA ram_0648_se,X
C - - - - - 0x00E3AD 03:839D: 9D 4C 06  STA ram_064C_se,X
bra_83A0:
C - - - - - 0x00E3B0 03:83A0: CA        DEX
C - - - - - 0x00E3B1 03:83A1: 10 CB     BPL bra_836E_loop
C - - - - - 0x00E3B3 03:83A3: 60        RTS



loc_83A4:
C D 0 - - - 0x00E3B4 03:83A4: AD 01 06  LDA ram_0601_se
C - - - - - 0x00E3B7 03:83A7: C9 7E     CMP #$7E
C - - - - - 0x00E3B9 03:83A9: D0 05     BNE bra_83B0
- - - - - - 0x00E3BB 03:83AB: A9 FF     LDA #$FF
- - - - - - 0x00E3BD 03:83AD: 8D 04 06  STA ram_0604_se_flag
bra_83B0:
C - - - - - 0x00E3C0 03:83B0: C9 7F     CMP #$7F
C - - - - - 0x00E3C2 03:83B2: D0 05     BNE bra_83B9
- - - - - - 0x00E3C4 03:83B4: A9 00     LDA #$00
- - - - - - 0x00E3C6 03:83B6: 8D 04 06  STA ram_0604_se_flag
bra_83B9:
C - - - - - 0x00E3C9 03:83B9: AD 09 06  LDA ram_0609_se
C - - - - - 0x00E3CC 03:83BC: F0 03     BEQ bra_83C1
C - - - - - 0x00E3CE 03:83BE: 20 38 84  JSR sub_8438
bra_83C1:
C - - - - - 0x00E3D1 03:83C1: AD 01 06  LDA ram_0601_se
C - - - - - 0x00E3D4 03:83C4: 48        PHA
C - - - - - 0x00E3D5 03:83C5: A9 FF     LDA #$FF
C - - - - - 0x00E3D7 03:83C7: 8D D1 06  STA ram_06D1_se
C - - - - - 0x00E3DA 03:83CA: 8D D2 06  STA ram_06D2_se
C - - - - - 0x00E3DD 03:83CD: A9 A2     LDA #< (tbl_8AA4_sfx_and_music_data - $02)
C - - - - - 0x00E3DF 03:83CF: 85 F9     STA ram_00F9_se_t04_sound_data_ptr
C - - - - - 0x00E3E1 03:83D1: A9 8A     LDA #> (tbl_8AA4_sfx_and_music_data - $02)
C - - - - - 0x00E3E3 03:83D3: 85 FA     STA ram_00F9_se_t04_sound_data_ptr + $01
C - - - - - 0x00E3E5 03:83D5: 68        PLA
; bzk optimize, useless check, all values < 80
C - - - - - 0x00E3E6 03:83D6: 10 02     BPL bra_83DA_00_7F
; 80-FF
- - - - - - 0x00E3E8 03:83D8: E6 FA     INC ram_00F9_se_t04_sound_data_ptr + $01
bra_83DA_00_7F:
C - - - - - 0x00E3EA 03:83DA: 0A        ASL
C - - - - - 0x00E3EB 03:83DB: A8        TAY
C - - - - - 0x00E3EC 03:83DC: B1 F9     LDA (ram_00F9_se_t04_sound_data_ptr),Y
C - - - - - 0x00E3EE 03:83DE: 85 F7     STA ram_00F7_se_t02_sound_data
C - - - - - 0x00E3F0 03:83E0: C8        INY
C - - - - - 0x00E3F1 03:83E1: B1 F9     LDA (ram_00F9_se_t04_sound_data_ptr),Y
C - - - - - 0x00E3F3 03:83E3: 85 F8     STA ram_00F7_se_t02_sound_data + $01
C - - - - - 0x00E3F5 03:83E5: A0 00     LDY #$00
C - - - - - 0x00E3F7 03:83E7: B1 F7     LDA (ram_00F7_se_t02_sound_data),Y
C - - - - - 0x00E3F9 03:83E9: 29 7F     AND #$7F
C - - - - - 0x00E3FB 03:83EB: 8D 09 06  STA ram_0609_se
C - - - - - 0x00E3FE 03:83EE: 85 FF     STA ram_00FF_se_t11
C - - - - - 0x00E400 03:83F0: A9 08     LDA #$08
C - - - - - 0x00E402 03:83F2: 8D 01 40  STA $4001
C - - - - - 0x00E405 03:83F5: 8D 05 40  STA $4005
C - - - - - 0x00E408 03:83F8: A2 03     LDX #$03
C - - - - - 0x00E40A 03:83FA: A0 03     LDY #$03
bra_83FC_loop:
C - - - - - 0x00E40C 03:83FC: A5 FF     LDA ram_00FF_se_t11
C - - - - - 0x00E40E 03:83FE: 4A        LSR
C - - - - - 0x00E40F 03:83FF: 85 FF     STA ram_00FF_se_t11
C - - - - - 0x00E411 03:8401: 90 31     BCC bra_8434_skip
C - - - - - 0x00E413 03:8403: B1 F7     LDA (ram_00F7_se_t02_sound_data),Y
C - - - - - 0x00E415 03:8405: C8        INY
C - - - - - 0x00E416 03:8406: 9D 0E 06  STA ram_060E_se_data_ptr,X
C - - - - - 0x00E419 03:8409: B1 F7     LDA (ram_00F7_se_t02_sound_data),Y
C - - - - - 0x00E41B 03:840B: C8        INY
C - - - - - 0x00E41C 03:840C: 9D 12 06  STA ram_0612_se_data_ptr,X
C - - - - - 0x00E41F 03:840F: A9 00     LDA #$00
C - - - - - 0x00E421 03:8411: 9D 1E 06  STA ram_061E_se,X
C - - - - - 0x00E424 03:8414: 9D 16 06  STA ram_0616_se,X
C - - - - - 0x00E427 03:8417: 9D 1A 06  STA ram_061A_se,X
C - - - - - 0x00E42A 03:841A: 9D 2E 06  STA ram_062E_se,X
C - - - - - 0x00E42D 03:841D: A9 01     LDA #$01
C - - - - - 0x00E42F 03:841F: 9D 22 06  STA ram_0622_se,X
C - - - - - 0x00E432 03:8422: E0 02     CPX #$02
C - - - - - 0x00E434 03:8424: B0 0E     BCS bra_8434
C - - - - - 0x00E436 03:8426: A9 02     LDA #$02
C - - - - - 0x00E438 03:8428: 9D 36 06  STA ram_0636_se,X
; bzk optimize, useless check?
C - - - - - 0x00E43B 03:842B: E0 02     CPX #$02
C - - - - - 0x00E43D 03:842D: D0 05     BNE bra_8434
- - - - - - 0x00E43F 03:842F: A9 FF     LDA #$FF
- - - - - - 0x00E441 03:8431: 8D 08 40  STA $4008
bra_8434:
bra_8434_skip:
C - - - - - 0x00E444 03:8434: CA        DEX
C - - - - - 0x00E445 03:8435: 10 C5     BPL bra_83FC_loop
C - - - - - 0x00E447 03:8437: 60        RTS



sub_8438:
C - - - - - 0x00E448 03:8438: A2 03     LDX #$03
bra_843A_loop:
C - - - - - 0x00E44A 03:843A: BD F9 81  LDA tbl_81F9,X
C - - - - - 0x00E44D 03:843D: 2D 09 06  AND ram_0609_se
C - - - - - 0x00E450 03:8440: F0 06     BEQ bra_8448
C - - - - - 0x00E452 03:8442: 8E 0B 06  STX ram_060B_se_ch_index
C - - - - - 0x00E455 03:8445: 20 59 89  JSR sub_8959
bra_8448:
C - - - - - 0x00E458 03:8448: CA        DEX
C - - - - - 0x00E459 03:8449: 10 EF     BPL bra_843A_loop
C - - - - - 0x00E45B 03:844B: 60        RTS



sub_844C:
C - - - - - 0x00E45C 03:844C: BD 38 06  LDA ram_0638_se_data_ptr_lo,X
C - - - - - 0x00E45F 03:844F: 85 F7     STA ram_00F7_se_t03_data
C - - - - - 0x00E461 03:8451: BD 3C 06  LDA ram_063C_se_data_ptr_hi,X
C - - - - - 0x00E464 03:8454: 85 F8     STA ram_00F7_se_t03_data + $01
C - - - - - 0x00E466 03:8456: A0 00     LDY #$00
C - - - - - 0x00E468 03:8458: 20 6F 84  JSR sub_846F
C - - - - - 0x00E46B 03:845B: 20 E2 84  JSR sub_84E2_increase_indirect_pointer
C - - - - - 0x00E46E 03:845E: A5 F7     LDA ram_00F7_se_t03_data
C - - - - - 0x00E470 03:8460: 9D 38 06  STA ram_0638_se_data_ptr_lo,X
C - - - - - 0x00E473 03:8463: A5 F8     LDA ram_00F7_se_t03_data + $01
C - - - - - 0x00E475 03:8465: 9D 3C 06  STA ram_063C_se_data_ptr_hi,X
C - - - - - 0x00E478 03:8468: 60        RTS



bra_8469_loop:
C - - - - - 0x00E479 03:8469: 38        SEC
C - - - - - 0x00E47A 03:846A: E9 90     SBC #$90
C - - - - - 0x00E47C 03:846C: 20 CF 86  JSR sub_86CF_sound_engine_control_bytes
sub_846F:
loc_846F_loop:
C D 0 - - - 0x00E47F 03:846F: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E481 03:8471: 30 07     BMI bra_847A_80_FF
C - - - - - 0x00E483 03:8473: C8        INY
C - - - - - 0x00E484 03:8474: 9D 4C 06  STA ram_064C_se,X
C - - - - - 0x00E487 03:8477: 4C 6F 84  JMP loc_846F_loop
bra_847A_80_FF:
C - - - - - 0x00E48A 03:847A: C8        INY
C - - - - - 0x00E48B 03:847B: C9 90     CMP #$90
C - - - - - 0x00E48D 03:847D: B0 EA     BCS bra_8469_loop
; 80-8F
C - - - - - 0x00E48F 03:847F: 38        SEC
C - - - - - 0x00E490 03:8480: E9 80     SBC #$80
C - - - - - 0x00E492 03:8482: 9D 54 06  STA ram_0654_se,X
C - - - - - 0x00E495 03:8485: BD 5C 06  LDA ram_065C_se,X
C - - - - - 0x00E498 03:8488: 9D 2A 06  STA ram_062A_se,X
C - - - - - 0x00E49B 03:848B: BD 64 06  LDA ram_0664_se,X
C - - - - - 0x00E49E 03:848E: 29 40     AND #$40
C - - - - - 0x00E4A0 03:8490: F0 17     BEQ bra_84A9_RTS
; bzk optimize, useless JMP
C - - - - - 0x00E4A2 03:8492: 4C 95 84  JMP loc_8495



loc_8495:
C D 0 - - - 0x00E4A5 03:8495: BD 64 06  LDA ram_0664_se,X
C - - - - - 0x00E4A8 03:8498: 29 20     AND #$20
C - - - - - 0x00E4AA 03:849A: D0 15     BNE bra_84B1
C - - - - - 0x00E4AC 03:849C: BD 64 06  LDA ram_0664_se,X
C - - - - - 0x00E4AF 03:849F: 29 10     AND #$10
C - - - - - 0x00E4B1 03:84A1: F0 07     BEQ bra_84AA
C - - - - - 0x00E4B3 03:84A3: 20 C9 84  JSR sub_84C9
C - - - - - 0x00E4B6 03:84A6: 9D 6C 06  STA ram_066C_se,X
bra_84A9_RTS:
C - - - - - 0x00E4B9 03:84A9: 60        RTS
bra_84AA:
C - - - - - 0x00E4BA 03:84AA: BD 68 06  LDA ram_0668_se,X
C - - - - - 0x00E4BD 03:84AD: 9D 6C 06  STA ram_066C_se,X
C - - - - - 0x00E4C0 03:84B0: 60        RTS
bra_84B1:
C - - - - - 0x00E4C1 03:84B1: 8A        TXA
C - - - - - 0x00E4C2 03:84B2: C9 02     CMP #$02
C - - - - - 0x00E4C4 03:84B4: F0 F3     BEQ bra_84A9_RTS
C - - - - - 0x00E4C6 03:84B6: BD 64 06  LDA ram_0664_se,X
C - - - - - 0x00E4C9 03:84B9: 29 10     AND #$10
C - - - - - 0x00E4CB 03:84BB: F0 06     BEQ bra_84C3
C - - - - - 0x00E4CD 03:84BD: 20 C9 84  JSR sub_84C9
C - - - - - 0x00E4D0 03:84C0: 9D 68 06  STA ram_0668_se,X
bra_84C3:
C - - - - - 0x00E4D3 03:84C3: A9 00     LDA #$00
C - - - - - 0x00E4D5 03:84C5: 9D 6C 06  STA ram_066C_se,X
C - - - - - 0x00E4D8 03:84C8: 60        RTS



sub_84C9:
C - - - - - 0x00E4D9 03:84C9: BD 4C 06  LDA ram_064C_se,X
; / 04
C - - - - - 0x00E4DC 03:84CC: 4A        LSR
C - - - - - 0x00E4DD 03:84CD: 4A        LSR
; 
C - - - - - 0x00E4DE 03:84CE: 85 FF     STA ram_00FF_se_t12
C - - - - - 0x00E4E0 03:84D0: BD 64 06  LDA ram_0664_se,X
C - - - - - 0x00E4E3 03:84D3: 29 0F     AND #$0F
C - - - - - 0x00E4E5 03:84D5: AA        TAX
C - - - - - 0x00E4E6 03:84D6: A9 00     LDA #$00
bra_84D8_loop:
C - - - - - 0x00E4E8 03:84D8: 18        CLC
C - - - - - 0x00E4E9 03:84D9: 65 FF     ADC ram_00FF_se_t12
C - - - - - 0x00E4EB 03:84DB: CA        DEX
C - - - - - 0x00E4EC 03:84DC: D0 FA     BNE bra_84D8_loop
C - - - - - 0x00E4EE 03:84DE: AE 0B 06  LDX ram_060B_se_ch_index
C - - - - - 0x00E4F1 03:84E1: 60        RTS



sub_84E2_increase_indirect_pointer:
C - - - - - 0x00E4F2 03:84E2: 98        TYA
C - - - - - 0x00E4F3 03:84E3: 18        CLC
C - - - - - 0x00E4F4 03:84E4: 65 F7     ADC ram_00F7_se_t03_data
C - - - - - 0x00E4F6 03:84E6: 85 F7     STA ram_00F7_se_t03_data
C - - - - - 0x00E4F8 03:84E8: A9 00     LDA #$00
C - - - - - 0x00E4FA 03:84EA: 65 F8     ADC ram_00F7_se_t03_data + $01
C - - - - - 0x00E4FC 03:84EC: 85 F8     STA ram_00F7_se_t03_data + $01
C - - - - - 0x00E4FE 03:84EE: 60        RTS



sub_84EF:
C - - - - - 0x00E4FF 03:84EF: BD 0E 06  LDA ram_060E_se_data_ptr,X
C - - - - - 0x00E502 03:84F2: 85 F7     STA ram_00F7_se_t03_data
C - - - - - 0x00E504 03:84F4: BD 12 06  LDA ram_0612_se_data_ptr,X
C - - - - - 0x00E507 03:84F7: 85 F8     STA ram_00F7_se_t03_data + $01
C - - - - - 0x00E509 03:84F9: BD 09 80  LDA tbl_8009_address_lo,X
C - - - - - 0x00E50C 03:84FC: 85 FD     STA ram_00FD_se_t01_data
C - - - - - 0x00E50E 03:84FE: BD 0D 80  LDA tbl_800D_address_hi,X
C - - - - - 0x00E511 03:8501: 85 FE     STA ram_00FD_se_t01_data + $01
C - - - - - 0x00E513 03:8503: A0 00     LDY #$00
C - - - - - 0x00E515 03:8505: 20 16 85  JSR sub_8516
C - - - - - 0x00E518 03:8508: 20 E2 84  JSR sub_84E2_increase_indirect_pointer
C - - - - - 0x00E51B 03:850B: A5 F7     LDA ram_00F7_se_t03_data
C - - - - - 0x00E51D 03:850D: 9D 0E 06  STA ram_060E_se_data_ptr,X
C - - - - - 0x00E520 03:8510: A5 F8     LDA ram_00F7_se_t03_data + $01
C - - - - - 0x00E522 03:8512: 9D 12 06  STA ram_0612_se_data_ptr,X
C - - - - - 0x00E525 03:8515: 60        RTS



sub_8516:
loc_8516:
C D 0 - - - 0x00E526 03:8516: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E528 03:8518: C8        INY
C - - - - - 0x00E529 03:8519: C9 90     CMP #$90
C - - - - - 0x00E52B 03:851B: B0 04     BCS bra_8521_90_FF
; 00-8F
C - - - - - 0x00E52D 03:851D: 9D 22 06  STA ram_0622_se,X
C - - - - - 0x00E530 03:8520: 60        RTS
bra_8521_90_FF:
C - - - - - 0x00E531 03:8521: 38        SEC
C - - - - - 0x00E532 03:8522: E9 90     SBC #$90
C - - - - - 0x00E534 03:8524: 20 CF 86  JSR sub_86CF_sound_engine_control_bytes
C - - - - - 0x00E537 03:8527: 4C 16 85  JMP loc_8516


; bzk garbage
- - - - - - 0x00E53A 03:852A: 00        .byte $00   ; 



sub_852B:
C - - - - - 0x00E53B 03:852B: 20 EF 84  JSR sub_84EF
C - - - - - 0x00E53E 03:852E: E8        INX
C - - - - - 0x00E53F 03:852F: E8        INX
C - - - - - 0x00E540 03:8530: E8        INX
C - - - - - 0x00E541 03:8531: E8        INX
C - - - - - 0x00E542 03:8532: 20 79 85  JSR sub_8579
; bzk optimize, JMP
C - - - - - 0x00E545 03:8535: 20 39 85  JSR sub_8539
C - - - - - 0x00E548 03:8538: 60        RTS



sub_8539:
C - - - - - 0x00E549 03:8539: BD 26 06  LDA ram_0626_se_flags,X
C - - - - - 0x00E54C 03:853C: E0 03     CPX #$03
C - - - - - 0x00E54E 03:853E: F0 2B     BEQ bra_856B
C - - - - - 0x00E550 03:8540: BD 16 06  LDA ram_0616_se,X
C - - - - - 0x00E553 03:8543: 85 FF     STA ram_00FF_se_t01_4002
C - - - - - 0x00E555 03:8545: BD 1A 06  LDA ram_061A_se,X
C - - - - - 0x00E558 03:8548: 09 08     ORA #$08
C - - - - - 0x00E55A 03:854A: 29 0F     AND #$0F
C - - - - - 0x00E55C 03:854C: A8        TAY
C - - - - - 0x00E55D 03:854D: BD 26 06  LDA ram_0626_se_flags,X
C - - - - - 0x00E560 03:8550: 29 40     AND #con_0626_40
C - - - - - 0x00E562 03:8552: 8D 0D 06  STA ram_060D_se_t01_flag
C - - - - - 0x00E565 03:8555: 8A        TXA
; * 04
C - - - - - 0x00E566 03:8556: 0A        ASL
C - - - - - 0x00E567 03:8557: 0A        ASL
; 
C - - - - - 0x00E568 03:8558: AA        TAX
C - - - - - 0x00E569 03:8559: A5 FF     LDA ram_00FF_se_t01_4002
C - - - - - 0x00E56B 03:855B: 9D 02 40  STA $4002,X ; 4002 4006 
C - - - - - 0x00E56E 03:855E: AD 0D 06  LDA ram_060D_se_t01_flag
C - - - - - 0x00E571 03:8561: F0 04     BEQ bra_8567
C - - - - - 0x00E573 03:8563: 98        TYA
C - - - - - 0x00E574 03:8564: 9D 03 40  STA $4003,X ; 4003 4007 
bra_8567:
C - - - - - 0x00E577 03:8567: AE 0B 06  LDX ram_060B_se_ch_index
C - - - - - 0x00E57A 03:856A: 60        RTS
bra_856B:
C - - - - - 0x00E57B 03:856B: BD 16 06  LDA ram_0616_se,X
C - - - - - 0x00E57E 03:856E: 29 FF     AND #$FF
C - - - - - 0x00E580 03:8570: 8D 0E 40  STA $400E
C - - - - - 0x00E583 03:8573: A9 08     LDA #$08
C - - - - - 0x00E585 03:8575: 8D 0F 40  STA $400F
C - - - - - 0x00E588 03:8578: 60        RTS



sub_8579:
loc_8579:
C D 0 - - - 0x00E589 03:8579: 8A        TXA
C - - - - - 0x00E58A 03:857A: 29 03     AND #$03
C - - - - - 0x00E58C 03:857C: C9 02     CMP #$02
C - - - - - 0x00E58E 03:857E: F0 50     BEQ bra_85D0
C - - - - - 0x00E590 03:8580: B0 44     BCS bra_85C6
; also ram_0664_se
C - - - - - 0x00E592 03:8582: BD 60 06  LDA ram_0660_se_flags,X
C - - - - - 0x00E595 03:8585: 29 80     AND #con_0660_80_unused
C - - - - - 0x00E597 03:8587: F0 09     BEQ bra_8592
; bzk optimize, code up to 0x00E59F never used
; also ram_0636_se
- - - - - - 0x00E599 03:8589: BC 32 06  LDY ram_0632_se,X
- - - - - - 0x00E59C 03:858C: B9 DA 85  LDA tbl_85DA,Y
- - - - - - 0x00E59F 03:858F: 4C 98 85  JMP loc_8598
bra_8592:
; also ram_0636_se
C - - - - - 0x00E5A2 03:8592: BD 32 06  LDA ram_0632_se,X
C - - - - - 0x00E5A5 03:8595: 4A        LSR
C - - - - - 0x00E5A6 03:8596: 6A        ROR
C - - - - - 0x00E5A7 03:8597: 6A        ROR
loc_8598:
C - - - - - 0x00E5A8 03:8598: 29 C0     AND #$C0
C - - - - - 0x00E5AA 03:859A: 09 30     ORA #$30
C - - - - - 0x00E5AC 03:859C: E0 04     CPX #$04
C - - - - - 0x00E5AE 03:859E: 90 12     BCC bra_85B2
; X = 04+
C - - - - - 0x00E5B0 03:85A0: 85 FF     STA ram_00FF_se_t02
C - - - - - 0x00E5B2 03:85A2: BD 22 06  LDA ram_0626_se_flags - $04,X
C - - - - - 0x00E5B5 03:85A5: 29 80     AND #con_0626_80
C - - - - - 0x00E5B7 03:85A7: F0 07     BEQ bra_85B0
C - - - - - 0x00E5B9 03:85A9: A9 EF     LDA #$EF
C - - - - - 0x00E5BB 03:85AB: 25 FF     AND ram_00FF_se_t02
C - - - - - 0x00E5BD 03:85AD: 4C B2 85  JMP loc_85B2
bra_85B0:
C - - - - - 0x00E5C0 03:85B0: A5 FF     LDA ram_00FF_se_t02
bra_85B2:
loc_85B2:
; also ram_062E_se
C D 0 - - - 0x00E5C2 03:85B2: 1D 2A 06  ORA ram_062A_se,X
bra_85B5:
C - - - - - 0x00E5C5 03:85B5: 85 FF     STA ram_00FF_se_t03_4000
C - - - - - 0x00E5C7 03:85B7: 8A        TXA
C - - - - - 0x00E5C8 03:85B8: 29 03     AND #$03
; * 04
C - - - - - 0x00E5CA 03:85BA: 0A        ASL
C - - - - - 0x00E5CB 03:85BB: 0A        ASL
; 
C - - - - - 0x00E5CC 03:85BC: AA        TAX
C - - - - - 0x00E5CD 03:85BD: A5 FF     LDA ram_00FF_se_t03_4000
C - - - - - 0x00E5CF 03:85BF: 9D 00 40  STA $4000,X ; 4000 4004 4008 400C 
C - - - - - 0x00E5D2 03:85C2: AE 0B 06  LDX ram_060B_se_ch_index
C - - - - - 0x00E5D5 03:85C5: 60        RTS
bra_85C6:
C - - - - - 0x00E5D6 03:85C6: A9 30     LDA #$30
C - - - - - 0x00E5D8 03:85C8: E0 04     CPX #$04
C - - - - - 0x00E5DA 03:85CA: B0 E6     BCS bra_85B2
C - - - - - 0x00E5DC 03:85CC: A9 30     LDA #$30
C - - - - - 0x00E5DE 03:85CE: D0 E2     BNE bra_85B2    ; jmp
bra_85D0:
C - - - - - 0x00E5E0 03:85D0: BD 2A 06  LDA ram_062A_se,X
C - - - - - 0x00E5E3 03:85D3: F0 01     BEQ bra_85D6
C - - - - - 0x00E5E5 03:85D5: 60        RTS
bra_85D6:
C - - - - - 0x00E5E6 03:85D6: A9 80     LDA #$80
C - - - - - 0x00E5E8 03:85D8: D0 DB     BNE bra_85B5    ; jmp



tbl_85DA:
- - - - - - 0x00E5EA 03:85DA: 00        .byte $00   ; 00 
- - - - - - 0x00E5EB 03:85DB: 40        .byte $40   ; 01 
- - - - - - 0x00E5EC 03:85DC: 00        .byte $00   ; 02 
- - - - - - 0x00E5ED 03:85DD: 40        .byte $40   ; 03 



bra_85DE:
C - - - - - 0x00E5EE 03:85DE: 4C 33 86  JMP loc_8633



sub_85E1:
C - - - - - 0x00E5F1 03:85E1: E0 03     CPX #$03
C - - - - - 0x00E5F3 03:85E3: F0 F9     BEQ bra_85DE
; also ram_0677_se_data_lo if X = 02
; bzk however this value won't be written to register because of 0x00E617
C - - - - - 0x00E5F5 03:85E5: BD 75 06  LDA ram_0675_se,X
; 
C - - - - - 0x00E5F8 03:85E8: 85 FF     STA ram_00FF_se_t04_4001
C - - - - - 0x00E5FA 03:85EA: BD 40 06  LDA ram_0640_se_data_ptr_lo,X
C - - - - - 0x00E5FD 03:85ED: 85 F9     STA ram_00F9_se_t05_data
C - - - - - 0x00E5FF 03:85EF: BD 44 06  LDA ram_0644_se_data_ptr_hi,X
C - - - - - 0x00E602 03:85F2: 85 FA     STA ram_00F9_se_t05_data + $01
C - - - - - 0x00E604 03:85F4: BD 50 06  LDA ram_0650_se,X
C - - - - - 0x00E607 03:85F7: 18        CLC
C - - - - - 0x00E608 03:85F8: 7D 54 06  ADC ram_0654_se,X
C - - - - - 0x00E60B 03:85FB: 0A        ASL
C - - - - - 0x00E60C 03:85FC: A8        TAY
C - - - - - 0x00E60D 03:85FD: BD 58 06  LDA ram_0658_se,X
C - - - - - 0x00E610 03:8600: 8D 0C 06  STA ram_060C_se_t01
C - - - - - 0x00E613 03:8603: 8A        TXA
; * 04
C - - - - - 0x00E614 03:8604: 0A        ASL
C - - - - - 0x00E615 03:8605: 0A        ASL
; 
C - - - - - 0x00E616 03:8606: AA        TAX
C - - - - - 0x00E617 03:8607: E0 02     CPX #$02
C - - - - - 0x00E619 03:8609: F0 05     BEQ bra_8610
C - - - - - 0x00E61B 03:860B: A5 FF     LDA ram_00FF_se_t04_4001
C - - - - - 0x00E61D 03:860D: 9D 01 40  STA $4001,X ; 4001 4005 4009 
bra_8610:
C - - - - - 0x00E620 03:8610: B1 F9     LDA (ram_00F9_se_t05_data),Y
C - - - - - 0x00E622 03:8612: 18        CLC
C - - - - - 0x00E623 03:8613: 6D 0C 06  ADC ram_060C_se_t01
C - - - - - 0x00E626 03:8616: 9D 02 40  STA $4002,X ; 4002 4006 400A 
C - - - - - 0x00E629 03:8619: C8        INY
C - - - - - 0x00E62A 03:861A: AD 0C 06  LDA ram_060C_se_t01
C - - - - - 0x00E62D 03:861D: 30 0A     BMI bra_8629
C - - - - - 0x00E62F 03:861F: B1 F9     LDA (ram_00F9_se_t05_data),Y
C - - - - - 0x00E631 03:8621: 69 00     ADC #$00
C - - - - - 0x00E633 03:8623: 09 08     ORA #$08
; bzk optimize, JMP
C - - - - - 0x00E635 03:8625: 20 41 86  JSR sub_8641
C - - - - - 0x00E638 03:8628: 60        RTS
bra_8629:
C - - - - - 0x00E639 03:8629: B1 F9     LDA (ram_00F9_se_t05_data),Y
C - - - - - 0x00E63B 03:862B: E9 00     SBC #$00
C - - - - - 0x00E63D 03:862D: 09 08     ORA #$08
; bzk optimize, JMP
C - - - - - 0x00E63F 03:862F: 20 41 86  JSR sub_8641
C - - - - - 0x00E642 03:8632: 60        RTS



loc_8633:
C D 0 - - - 0x00E643 03:8633: BD 54 06  LDA ram_0654_se,X
C - - - - - 0x00E646 03:8636: 29 0F     AND #$0F
C - - - - - 0x00E648 03:8638: 8D 0E 40  STA $400E
C - - - - - 0x00E64B 03:863B: A9 08     LDA #$08
C - - - - - 0x00E64D 03:863D: 8D 0F 40  STA $400F
C - - - - - 0x00E650 03:8640: 60        RTS



sub_8641:
; in
    ; A = 
    ; X = register index
C - - - - - 0x00E651 03:8641: 8D D7 06  STA ram_06D7_se_t01_reg_value
C - - - - - 0x00E654 03:8644: 8E 0C 06  STX ram_060C_se_t02_reg_index
C - - - - - 0x00E657 03:8647: AE 0B 06  LDX ram_060B_se_ch_index
C - - - - - 0x00E65A 03:864A: BD D3 06  LDA ram_06D3_se,X
C - - - - - 0x00E65D 03:864D: F0 0C     BEQ bra_865B
C - - - - - 0x00E65F 03:864F: BD DC 06  LDA ram_06DC_se,X
C - - - - - 0x00E662 03:8652: C9 02     CMP #$02
C - - - - - 0x00E664 03:8654: D0 0E     BNE bra_8664
C - - - - - 0x00E666 03:8656: A9 00     LDA #$00
C - - - - - 0x00E668 03:8658: 9D DC 06  STA ram_06DC_se,X
bra_865B:
C - - - - - 0x00E66B 03:865B: AD D7 06  LDA ram_06D7_se_t01_reg_value
C - - - - - 0x00E66E 03:865E: AE 0C 06  LDX ram_060C_se_t02_reg_index
C - - - - - 0x00E671 03:8661: 9D 03 40  STA $4003,X ; 4003 4007 400B 
bra_8664:
; bzk optimize, useless LDA?
C - - - - - 0x00E674 03:8664: AD D7 06  LDA ram_06D7_se_t01_reg_value
; 
C - - - - - 0x00E677 03:8667: AE 0B 06  LDX ram_060B_se_ch_index
C - - - - - 0x00E67A 03:866A: 60        RTS



sub_866B:
C - - - - - 0x00E67B 03:866B: BD 60 06  LDA ram_0660_se_flags,X
C - - - - - 0x00E67E 03:866E: 29 20     AND #con_0660_20
C - - - - - 0x00E680 03:8670: F0 01     BEQ bra_8673
C - - - - - 0x00E682 03:8672: 60        RTS
bra_8673:
C - - - - - 0x00E683 03:8673: BD 64 06  LDA ram_0664_se,X
C - - - - - 0x00E686 03:8676: 29 40     AND #$40
C - - - - - 0x00E688 03:8678: F0 2F     BEQ bra_86A9
C - - - - - 0x00E68A 03:867A: BD 2A 06  LDA ram_062A_se,X
C - - - - - 0x00E68D 03:867D: F0 2A     BEQ bra_86A9
C - - - - - 0x00E68F 03:867F: BD 64 06  LDA ram_0664_se,X
C - - - - - 0x00E692 03:8682: 29 20     AND #$20
C - - - - - 0x00E694 03:8684: D0 0C     BNE bra_8692
C - - - - - 0x00E696 03:8686: DE 6C 06  DEC ram_066C_se,X
C - - - - - 0x00E699 03:8689: D0 1E     BNE bra_86A9
C - - - - - 0x00E69B 03:868B: A9 00     LDA #$00
C - - - - - 0x00E69D 03:868D: 9D 2A 06  STA ram_062A_se,X
C - - - - - 0x00E6A0 03:8690: F0 17     BEQ bra_86A9    ; jmp
bra_8692:
C - - - - - 0x00E6A2 03:8692: BD 6C 06  LDA ram_066C_se,X
C - - - - - 0x00E6A5 03:8695: 18        CLC
C - - - - - 0x00E6A6 03:8696: 7D 5C 06  ADC ram_065C_se,X
bra_8699_loop:
C - - - - - 0x00E6A9 03:8699: DD 68 06  CMP ram_0668_se,X
C - - - - - 0x00E6AC 03:869C: 90 08     BCC bra_86A6
C - - - - - 0x00E6AE 03:869E: FD 68 06  SBC ram_0668_se,X
C - - - - - 0x00E6B1 03:86A1: DE 2A 06  DEC ram_062A_se,X
C - - - - - 0x00E6B4 03:86A4: D0 F3     BNE bra_8699_loop
bra_86A6:
C - - - - - 0x00E6B6 03:86A6: 9D 6C 06  STA ram_066C_se,X
bra_86A9:
C - - - - - 0x00E6B9 03:86A9: E0 02     CPX #$02
C - - - - - 0x00E6BB 03:86AB: B0 15     BCS bra_86C2
; X = 00 01
C - - - - - 0x00E6BD 03:86AD: BD 60 06  LDA ram_0660_se_flags,X
C - - - - - 0x00E6C0 03:86B0: 29 80     AND #con_0660_80_unused
C - - - - - 0x00E6C2 03:86B2: F0 0E     BEQ bra_86C2
; bzk optimize, code up to 0x00E6CF never used
- - - - - - 0x00E6C4 03:86B4: DE 72 06  DEC $0672,X
- - - - - - 0x00E6C7 03:86B7: D0 09     BNE bra_86C2
- - - - - - 0x00E6C9 03:86B9: BD 70 06  LDA $0670,X
- - - - - - 0x00E6CC 03:86BC: 9D 72 06  STA $0672,X
- - - - - - 0x00E6CF 03:86BF: FE 32 06  INC ram_0632_se,X
bra_86C2:
C - - - - - 0x00E6D2 03:86C2: BD 60 06  LDA ram_0660_se_flags,X
C - - - - - 0x00E6D5 03:86C5: 29 40     AND #con_0660_40
C - - - - - 0x00E6D7 03:86C7: F0 03     BEQ bra_86CC
- - - - - - 0x00E6D9 03:86C9: 20 E1 85  JSR sub_85E1
bra_86CC:
C - - - - - 0x00E6DC 03:86CC: 4C 79 85  JMP loc_8579



sub_86CF_sound_engine_control_bytes:
; bzk optimize, useless SEC
C - - - - - 0x00E6DF 03:86CF: 38        SEC
; bzk optimize, useless check, there are no bytes higher than 52 (E2)
C - - - - - 0x00E6E0 03:86D0: C9 55     CMP #$55    ; E5 - 90
C - - - - - 0x00E6E2 03:86D2: B0 12     BCS bra_86E6_RTS
; 
C - - - - - 0x00E6E4 03:86D4: 0A        ASL
C - - - - - 0x00E6E5 03:86D5: AA        TAX
C - - - - - 0x00E6E6 03:86D6: BD E7 86  LDA tbl_86E7,X
C - - - - - 0x00E6E9 03:86D9: 85 FB     STA ram_00FB_se_t01_jmp
C - - - - - 0x00E6EB 03:86DB: BD E8 86  LDA tbl_86E7 + $01,X
C - - - - - 0x00E6EE 03:86DE: 85 FC     STA ram_00FB_se_t01_jmp + $01
C - - - - - 0x00E6F0 03:86E0: AE 0B 06  LDX ram_060B_se_ch_index
C - - - - - 0x00E6F3 03:86E3: 6C FB 00  JMP (ram_00FB_se_t01_jmp)
bra_86E6_RTS:
- - - - - - 0x00E6F6 03:86E6: 60        RTS



tbl_86E7:
; see con_se_cb
- D 0 - - - 0x00E6F7 03:86E7: 8D 87     .word ofs_043_878D_90
- D 0 - - - 0x00E6F9 03:86E9: 98 87     .word ofs_043_8798_91
- D 0 - - - 0x00E6FB 03:86EB: A2 87     .word ofs_043_87A2_92
- D 0 - - - 0x00E6FD 03:86ED: AC 87     .word ofs_043_87AC_93
- - - - - - 0x00E6FF 03:86EF: 00 00     .word $0000 ;      94
- D 0 - - - 0x00E701 03:86F1: B3 87     .word ofs_043_87B3_95
- - - - - - 0x00E703 03:86F3: 00 00     .word $0000 ;      96
- - - - - - 0x00E705 03:86F5: 00 00     .word $0000 ;      97
- - - - - - 0x00E707 03:86F7: 00 00     .word $0000 ;      98
- D 0 - - - 0x00E709 03:86F9: BE 87     .word ofs_043_87BE_99
- D 0 - - - 0x00E70B 03:86FB: C7 87     .word ofs_043_87C7_9A
- D 0 - - - 0x00E70D 03:86FD: D8 87     .word ofs_043_87D8_9B
- D 0 - - - 0x00E70F 03:86FF: E1 87     .word ofs_043_87E1_9C
- - - - - - 0x00E711 03:8701: 00 00     .word $0000 ;      9D
- D 0 - - - 0x00E713 03:8703: ED 87     .word ofs_043_87ED_9E
- - - - - - 0x00E715 03:8705: 00 00     .word $0000 ;      9F
- - - - - - 0x00E717 03:8707: 00 00     .word $0000 ;      A0
- D 0 - - - 0x00E719 03:8709: F4 87     .word ofs_043_87F4_A1
- D 0 - - - 0x00E71B 03:870B: 04 88     .word ofs_043_8804_A2
- D 0 - - - 0x00E71D 03:870D: 22 88     .word ofs_043_8822_A3
- D 0 - - - 0x00E71F 03:870F: 46 88     .word ofs_043_8846_A4
- D 0 - - - 0x00E721 03:8711: 6F 88     .word ofs_043_886F_A5
- - - - - - 0x00E723 03:8713: 7F 88     .word ofs_043_887F_A6
- D 0 - - - 0x00E725 03:8715: 88 88     .word ofs_043_8888_A7
- D 0 - - - 0x00E727 03:8717: 8F 88     .word ofs_043_888F_A8
- D 0 - - - 0x00E729 03:8719: CC 88     .word ofs_043_88CC_A9
- D 0 - - - 0x00E72B 03:871B: D3 88     .word ofs_043_88D3_AA
- D 0 - - - 0x00E72D 03:871D: E1 88     .word ofs_043_88E1_AB
- D 0 - - - 0x00E72F 03:871F: EC 88     .word ofs_043_88EC_AC
- D 0 - - - 0x00E731 03:8721: 09 89     .word ofs_043_8909_AD
- - - - - - 0x00E733 03:8723: 00 00     .word $0000 ;      AE
- - - - - - 0x00E735 03:8725: 00 00     .word $0000 ;      AF
- D 0 - - - 0x00E737 03:8727: 0D 89     .word ofs_043_890D_B0
- D 0 - - - 0x00E739 03:8729: 18 89     .word ofs_043_8918_B1
- D 0 - - - 0x00E73B 03:872B: 35 89     .word ofs_043_8935_B2
- - - - - - 0x00E73D 03:872D: 00 00     .word $0000 ;      B3
- - - - - - 0x00E73F 03:872F: 00 00     .word $0000 ;      B4
- - - - - - 0x00E741 03:8731: 00 00     .word $0000 ;      B5
- D 0 - - - 0x00E743 03:8733: 39 89     .word ofs_043_8939_B6
- D 0 - - - 0x00E745 03:8735: 8E 89     .word ofs_043_898E_B7
- D 0 - - - 0x00E747 03:8737: 97 89     .word ofs_043_8997_B8
- - - - - - 0x00E749 03:8739: 00 00     .word $0000 ;      B9
- - - - - - 0x00E74B 03:873B: 00 00     .word $0000 ;      BA
- D 0 - - - 0x00E74D 03:873D: A0 89     .word ofs_043_89A0_BB
- D 0 - - - 0x00E74F 03:873F: AD 89     .word ofs_043_89AD_BC
- D 0 - - - 0x00E751 03:8741: DD 89     .word ofs_043_89DD_BD
- D 0 - - - 0x00E753 03:8743: 12 8A     .word ofs_043_8A12_BE
- D 0 - - - 0x00E755 03:8745: 44 8A     .word ofs_043_8A44_BF
- - - - - - 0x00E757 03:8747: 00 00     .word $0000 ;      C0
- D 0 - - - 0x00E759 03:8749: 70 8A     .word ofs_043_8A70_C1
- D 0 - - - 0x00E75B 03:874B: 7B 8A     .word ofs_043_8A7B_C2
- D 0 - - - 0x00E75D 03:874D: 81 8A     .word ofs_043_8A81_C3
- - - - - - 0x00E75F 03:874F: 00 00     .word $0000 ;      C4
- D 0 - - - 0x00E761 03:8751: 9B 8A     .word ofs_043_8A9B_C5
- - - - - - 0x00E763 03:8753: 00 00     .word $0000 ;      C6
- - - - - - 0x00E765 03:8755: 00 00     .word $0000 ;      C7
- - - - - - 0x00E767 03:8757: 00 00     .word $0000 ;      C8
- - - - - - 0x00E769 03:8759: 00 00     .word $0000 ;      C9
- - - - - - 0x00E76B 03:875B: 00 00     .word $0000 ;      CA
- - - - - - 0x00E76D 03:875D: 00 00     .word $0000 ;      CB
- - - - - - 0x00E76F 03:875F: 00 00     .word $0000 ;      CC
- - - - - - 0x00E771 03:8761: 00 00     .word $0000 ;      CD
- - - - - - 0x00E773 03:8763: 00 00     .word $0000 ;      CE
- - - - - - 0x00E775 03:8765: 00 00     .word $0000 ;      CF
- - - - - - 0x00E777 03:8767: 87 8A     .word ofs_043_8A87_D0
- D 0 - - - 0x00E779 03:8769: 87 8A     .word ofs_043_8A87_D1
- D 0 - - - 0x00E77B 03:876B: 87 8A     .word ofs_043_8A87_D2
- D 0 - - - 0x00E77D 03:876D: 87 8A     .word ofs_043_8A87_D3
- D 0 - - - 0x00E77F 03:876F: 87 8A     .word ofs_043_8A87_D4
- D 0 - - - 0x00E781 03:8771: 87 8A     .word ofs_043_8A87_D5
- D 0 - - - 0x00E783 03:8773: 87 8A     .word ofs_043_8A87_D6
- D 0 - - - 0x00E785 03:8775: 87 8A     .word ofs_043_8A87_D7
- D 0 - - - 0x00E787 03:8777: 87 8A     .word ofs_043_8A87_D8
- D 0 - - - 0x00E789 03:8779: 87 8A     .word ofs_043_8A87_D9
- D 0 - - - 0x00E78B 03:877B: 87 8A     .word ofs_043_8A87_DA
- D 0 - - - 0x00E78D 03:877D: 87 8A     .word ofs_043_8A87_DB
- D 0 - - - 0x00E78F 03:877F: 87 8A     .word ofs_043_8A87_DC
- D 0 - - - 0x00E791 03:8781: 87 8A     .word ofs_043_8A87_DD
- D 0 - - - 0x00E793 03:8783: 87 8A     .word ofs_043_8A87_DE
- D 0 - - - 0x00E795 03:8785: 87 8A     .word ofs_043_8A87_DF
- D 0 - - - 0x00E797 03:8787: 91 8A     .word ofs_043_8A91_E0
- D 0 - - - 0x00E799 03:8789: 91 8A     .word ofs_043_8A91_E1
- D 0 - - - 0x00E79B 03:878B: 91 8A     .word ofs_043_8A91_E2



ofs_043_878D_90:
C - - J - - 0x00E79D 03:878D: BD 60 06  LDA ram_0660_se_flags,X
C - - - - - 0x00E7A0 03:8790: 09 20     ORA #con_0660_20
C - - - - - 0x00E7A2 03:8792: 9D 60 06  STA ram_0660_se_flags,X
C - - - - - 0x00E7A5 03:8795: 68        PLA
C - - - - - 0x00E7A6 03:8796: 68        PLA
C - - - - - 0x00E7A7 03:8797: 60        RTS



ofs_043_8798_91:
; con_se_cb_91
C - - J - - 0x00E7A8 03:8798: BD 50 06  LDA ram_0650_se,X
C - - - - - 0x00E7AB 03:879B: 18        CLC
C - - - - - 0x00E7AC 03:879C: 69 0C     ADC #$0C
C - - - - - 0x00E7AE 03:879E: 9D 50 06  STA ram_0650_se,X
C - - - - - 0x00E7B1 03:87A1: 60        RTS



ofs_043_87A2_92:
; con_se_cb_92
C - - J - - 0x00E7B2 03:87A2: BD 50 06  LDA ram_0650_se,X
C - - - - - 0x00E7B5 03:87A5: 38        SEC
C - - - - - 0x00E7B6 03:87A6: E9 0C     SBC #$0C
C - - - - - 0x00E7B8 03:87A8: 9D 50 06  STA ram_0650_se,X
C - - - - - 0x00E7BB 03:87AB: 60        RTS



ofs_043_87AC_93:
; con_se_cb_93
C - - J - - 0x00E7BC 03:87AC: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E7BE 03:87AE: C8        INY
C - - - - - 0x00E7BF 03:87AF: 9D 50 06  STA ram_0650_se,X
C - - - - - 0x00E7C2 03:87B2: 60        RTS



ofs_043_87B3_95:
; con_se_cb_95
C - - J - - 0x00E7C3 03:87B3: BD 60 06  LDA ram_0660_se_flags,X
; bzk optimize, ORA 30
C - - - - - 0x00E7C6 03:87B6: 09 10     ORA #con_0660_10
C - - - - - 0x00E7C8 03:87B8: 09 20     ORA #con_0660_20
C - - - - - 0x00E7CA 03:87BA: 9D 60 06  STA ram_0660_se_flags,X
C - - - - - 0x00E7CD 03:87BD: 60        RTS



ofs_043_87BE_99:
; con_se_cb_99
C - - J - - 0x00E7CE 03:87BE: BD 64 06  LDA ram_0664_se,X
C - - - - - 0x00E7D1 03:87C1: 09 40     ORA #$40
C - - - - - 0x00E7D3 03:87C3: 29 CF     AND #$30 ^ $FF
C - - - - - 0x00E7D5 03:87C5: D0 07     BNE bra_87CE    ; jmp



ofs_043_87C7_9A:
; con_se_cb_9A
C - - J - - 0x00E7D7 03:87C7: BD 64 06  LDA ram_0664_se,X
C - - - - - 0x00E7DA 03:87CA: 09 60     ORA #$60
C - - - - - 0x00E7DC 03:87CC: 29 EF     AND #$10 ^ $FF
bra_87CE:
C - - - - - 0x00E7DE 03:87CE: 9D 64 06  STA ram_0664_se,X
C - - - - - 0x00E7E1 03:87D1: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E7E3 03:87D3: C8        INY
C - - - - - 0x00E7E4 03:87D4: 9D 68 06  STA ram_0668_se,X
C - - - - - 0x00E7E7 03:87D7: 60        RTS



ofs_043_87D8_9B:
; con_se_cb_9B
C - - J - - 0x00E7E8 03:87D8: BD 64 06  LDA ram_0664_se,X
C - - - - - 0x00E7EB 03:87DB: 09 50     ORA #$50
C - - - - - 0x00E7ED 03:87DD: 29 DF     AND #$20 ^ $FF
C - - - - - 0x00E7EF 03:87DF: D0 05     BNE bra_87E6    ; jmp



ofs_043_87E1_9C:
; con_se_cb_9C
C - - J - - 0x00E7F1 03:87E1: BD 64 06  LDA ram_0664_se,X
C - - - - - 0x00E7F4 03:87E4: 09 70     ORA #$70
bra_87E6:
C - - - - - 0x00E7F6 03:87E6: 11 F7     ORA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E7F8 03:87E8: C8        INY
C - - - - - 0x00E7F9 03:87E9: 9D 64 06  STA ram_0664_se,X
C - - - - - 0x00E7FC 03:87EC: 60        RTS



ofs_043_87ED_9E:
; con_se_cb_9E
C - - J - - 0x00E7FD 03:87ED: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E7FF 03:87EF: C8        INY
; also ram_0677_se_data_lo if X = 02
; bzk however this value won't be written to register because of 0x00E617
C - - - - - 0x00E800 03:87F0: 9D 75 06  STA ram_0675_se,X
C - - - - - 0x00E803 03:87F3: 60        RTS



ofs_043_87F4_A1:
; con_se_cb_A1_jmp1
C - - J - - 0x00E804 03:87F4: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E806 03:87F6: C8        INY
C - - - - - 0x00E807 03:87F7: 85 FF     STA ram_00FF_se_t05_ptr_lo
C - - - - - 0x00E809 03:87F9: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E80B 03:87FB: 85 F8     STA ram_00F7_se_t03_data + $01
C - - - - - 0x00E80D 03:87FD: A5 FF     LDA ram_00FF_se_t05_ptr_lo
C - - - - - 0x00E80F 03:87FF: 85 F7     STA ram_00F7_se_t03_data
C - - - - - 0x00E811 03:8801: A0 00     LDY #$00
C - - - - - 0x00E813 03:8803: 60        RTS



ofs_043_8804_A2:
; con_se_cb_A2
C - - J - - 0x00E814 03:8804: BD F9 81  LDA tbl_81F9,X
C - - - - - 0x00E817 03:8807: 49 FF     EOR #$FF
C - - - - - 0x00E819 03:8809: 2D 0A 06  AND ram_060A_se
C - - - - - 0x00E81C 03:880C: 8D 0A 06  STA ram_060A_se
C - - - - - 0x00E81F 03:880F: AD 09 06  LDA ram_0609_se
C - - - - - 0x00E822 03:8812: 3D F9 81  AND tbl_81F9,X
C - - - - - 0x00E825 03:8815: D0 03     BNE bra_881A
C - - - - - 0x00E827 03:8817: 20 59 89  JSR sub_8959
bra_881A:
C - - - - - 0x00E82A 03:881A: A9 00     LDA #$00
C - - - - - 0x00E82C 03:881C: 9D D3 06  STA ram_06D3_se,X
C - - - - - 0x00E82F 03:881F: 68        PLA
C - - - - - 0x00E830 03:8820: 68        PLA
C - - - - - 0x00E831 03:8821: 60        RTS



ofs_043_8822_A3:
; con_se_cb_A3
C - - J - - 0x00E832 03:8822: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E834 03:8824: C8        INY
C - - - - - 0x00E835 03:8825: 85 FF     STA ram_00FF_se_t06
C - - - - - 0x00E837 03:8827: 20 E2 84  JSR sub_84E2_increase_indirect_pointer
C - - - - - 0x00E83A 03:882A: BD 1E 06  LDA ram_061E_se,X
C - - - - - 0x00E83D 03:882D: 18        CLC
C - - - - - 0x00E83E 03:882E: 69 03     ADC #$03
C - - - - - 0x00E840 03:8830: 9D 1E 06  STA ram_061E_se,X
C - - - - - 0x00E843 03:8833: A8        TAY
C - - - - - 0x00E844 03:8834: 88        DEY
C - - - - - 0x00E845 03:8835: A5 FF     LDA ram_00FF_se_t06
C - - - - - 0x00E847 03:8837: 91 FD     STA (ram_00FD_se_t01_data),Y
C - - - - - 0x00E849 03:8839: 88        DEY
C - - - - - 0x00E84A 03:883A: A5 F7     LDA ram_00F7_se_t03_data
C - - - - - 0x00E84C 03:883C: 91 FD     STA (ram_00FD_se_t01_data),Y
C - - - - - 0x00E84E 03:883E: 88        DEY
C - - - - - 0x00E84F 03:883F: A5 F8     LDA ram_00F7_se_t03_data + $01
C - - - - - 0x00E851 03:8841: 91 FD     STA (ram_00FD_se_t01_data),Y
C - - - - - 0x00E853 03:8843: A0 00     LDY #$00
C - - - - - 0x00E855 03:8845: 60        RTS



ofs_043_8846_A4:
; con_se_cb_A4
C - - J - - 0x00E856 03:8846: 84 FF     STY ram_00FF_se_t07_save_Y
C - - - - - 0x00E858 03:8848: BC 1E 06  LDY ram_061E_se,X
C - - - - - 0x00E85B 03:884B: 88        DEY
C - - - - - 0x00E85C 03:884C: B1 FD     LDA (ram_00FD_se_t01_data),Y
C - - - - - 0x00E85E 03:884E: 38        SEC
C - - - - - 0x00E85F 03:884F: E9 01     SBC #$01
C - - - - - 0x00E861 03:8851: F0 10     BEQ bra_8863
C - - - - - 0x00E863 03:8853: 91 FD     STA (ram_00FD_se_t01_data),Y
C - - - - - 0x00E865 03:8855: 88        DEY
C - - - - - 0x00E866 03:8856: B1 FD     LDA (ram_00FD_se_t01_data),Y
C - - - - - 0x00E868 03:8858: 88        DEY
C - - - - - 0x00E869 03:8859: 85 F7     STA ram_00F7_se_t03_data
C - - - - - 0x00E86B 03:885B: B1 FD     LDA (ram_00FD_se_t01_data),Y
C - - - - - 0x00E86D 03:885D: 88        DEY
C - - - - - 0x00E86E 03:885E: 85 F8     STA ram_00F7_se_t03_data + $01
C - - - - - 0x00E870 03:8860: A0 00     LDY #$00
C - - - - - 0x00E872 03:8862: 60        RTS
bra_8863:
C - - - - - 0x00E873 03:8863: BD 1E 06  LDA ram_061E_se,X
C - - - - - 0x00E876 03:8866: 38        SEC
C - - - - - 0x00E877 03:8867: E9 03     SBC #$03
C - - - - - 0x00E879 03:8869: 9D 1E 06  STA ram_061E_se,X
C - - - - - 0x00E87C 03:886C: A4 FF     LDY ram_00FF_se_t07_save_Y
C - - - - - 0x00E87E 03:886E: 60        RTS



ofs_043_886F_A5:
; con_se_cb_A5_jmp2
C - - J - - 0x00E87F 03:886F: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E881 03:8871: C8        INY
C - - - - - 0x00E882 03:8872: 85 FF     STA ram_00FF_se_t08_ptr_lo
C - - - - - 0x00E884 03:8874: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E886 03:8876: 85 F8     STA ram_00F7_se_t03_data + $01
C - - - - - 0x00E888 03:8878: A5 FF     LDA ram_00FF_se_t08_ptr_lo
C - - - - - 0x00E88A 03:887A: 85 F7     STA ram_00F7_se_t03_data
C - - - - - 0x00E88C 03:887C: A0 00     LDY #$00
C - - - - - 0x00E88E 03:887E: 60        RTS



ofs_043_887F_A6:
; con_se_cb_A6
- - - - - - 0x00E88F 03:887F: B1 F7     LDA (ram_00F7_se_t03_data),Y
- - - - - - 0x00E891 03:8881: C8        INY
- - - - - - 0x00E892 03:8882: 9D 22 06  STA ram_0622_se,X
- - - - - - 0x00E895 03:8885: 68        PLA
- - - - - - 0x00E896 03:8886: 68        PLA
- - - - - - 0x00E897 03:8887: 60        RTS



ofs_043_8888_A7:
; con_se_cb_A7
C - - J - - 0x00E898 03:8888: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E89A 03:888A: C8        INY
C - - - - - 0x00E89B 03:888B: 9D 2E 06  STA ram_062E_se,X
C - - - - - 0x00E89E 03:888E: 60        RTS



ofs_043_888F_A8:
; con_se_cb_A8
C - - J - - 0x00E89F 03:888F: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E8A1 03:8891: C8        INY
C - - - - - 0x00E8A2 03:8892: 9D 16 06  STA ram_0616_se,X
C - - - - - 0x00E8A5 03:8895: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E8A7 03:8897: C8        INY
C - - - - - 0x00E8A8 03:8898: 9D 1A 06  STA ram_061A_se,X
; 
C - - - - - 0x00E8AB 03:889B: BD 26 06  LDA ram_0626_se_flags,X
C - - - - - 0x00E8AE 03:889E: 09 40     ORA #con_0626_40
C - - - - - 0x00E8B0 03:88A0: 9D 26 06  STA ram_0626_se_flags,X
; 
C - - - - - 0x00E8B3 03:88A3: E0 03     CPX #$03
C - - - - - 0x00E8B5 03:88A5: F0 08     BEQ bra_88AF
C - - - - - 0x00E8B7 03:88A7: A9 03     LDA #$03
C - - - - - 0x00E8B9 03:88A9: 9D DC 06  STA ram_06DC_se,X
C - - - - - 0x00E8BC 03:88AC: 4C CB 88  JMP loc_88CB_RTS
bra_88AF:
C - - - - - 0x00E8BF 03:88AF: 8E 0B 06  STX ram_060B_se_ch_index
C - - - - - 0x00E8C2 03:88B2: A2 02     LDX #$02
bra_88B4_loop:
C - - - - - 0x00E8C4 03:88B4: BD D3 06  LDA ram_06D3_se,X
C - - - - - 0x00E8C7 03:88B7: F0 0C     BEQ bra_88C5
C - - - - - 0x00E8C9 03:88B9: BD DC 06  LDA ram_06DC_se,X
C - - - - - 0x00E8CC 03:88BC: C9 03     CMP #$03
C - - - - - 0x00E8CE 03:88BE: D0 05     BNE bra_88C5
C - - - - - 0x00E8D0 03:88C0: A9 02     LDA #$02
C - - - - - 0x00E8D2 03:88C2: 9D DC 06  STA ram_06DC_se,X
bra_88C5:
C - - - - - 0x00E8D5 03:88C5: CA        DEX
C - - - - - 0x00E8D6 03:88C6: 10 EC     BPL bra_88B4_loop
C - - - - - 0x00E8D8 03:88C8: AE 0B 06  LDX ram_060B_se_ch_index
loc_88CB_RTS:   ; bzk optimize
C D 0 - - - 0x00E8DB 03:88CB: 60        RTS



ofs_043_88CC_A9:
; con_se_cb_A9
C - - J - - 0x00E8DC 03:88CC: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E8DE 03:88CE: C8        INY
C - - - - - 0x00E8DF 03:88CF: 9D 36 06  STA ram_0636_se,X
C - - - - - 0x00E8E2 03:88D2: 60        RTS



ofs_043_88D3_AA:
; con_se_cb_AA
C - - J - - 0x00E8E3 03:88D3: 8A        TXA
; * 04
C - - - - - 0x00E8E4 03:88D4: 0A        ASL
C - - - - - 0x00E8E5 03:88D5: 0A        ASL
; 
C - - - - - 0x00E8E6 03:88D6: AA        TAX
C - - - - - 0x00E8E7 03:88D7: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E8E9 03:88D9: C8        INY
C - - - - - 0x00E8EA 03:88DA: 9D 01 40  STA $4001,X ; 4001 4005 
C - - - - - 0x00E8ED 03:88DD: AE 0B 06  LDX ram_060B_se_ch_index
C - - - - - 0x00E8F0 03:88E0: 60        RTS



ofs_043_88E1_AB:
; con_se_cb_AB
C - - J - - 0x00E8F1 03:88E1: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E8F3 03:88E3: C8        INY
C - - - - - 0x00E8F4 03:88E4: 18        CLC
C - - - - - 0x00E8F5 03:88E5: 7D 2E 06  ADC ram_062E_se,X
C - - - - - 0x00E8F8 03:88E8: 9D 2E 06  STA ram_062E_se,X
C - - - - - 0x00E8FB 03:88EB: 60        RTS



ofs_043_88EC_AC:
; con_se_cb_AC
C - - J - - 0x00E8FC 03:88EC: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E8FE 03:88EE: C8        INY
C - - - - - 0x00E8FF 03:88EF: 18        CLC
C - - - - - 0x00E900 03:88F0: 7D 16 06  ADC ram_0616_se,X
C - - - - - 0x00E903 03:88F3: 9D 16 06  STA ram_0616_se,X
C - - - - - 0x00E906 03:88F6: 90 10     BCC bra_8908_RTS
C - - - - - 0x00E908 03:88F8: A9 00     LDA #$00
C - - - - - 0x00E90A 03:88FA: 7D 1A 06  ADC ram_061A_se,X
C - - - - - 0x00E90D 03:88FD: 9D 1A 06  STA ram_061A_se,X
; 
C - - - - - 0x00E910 03:8900: BD 26 06  LDA ram_0626_se_flags,X
C - - - - - 0x00E913 03:8903: 09 40     ORA #con_0626_40
C - - - - - 0x00E915 03:8905: 9D 26 06  STA ram_0626_se_flags,X
bra_8908_RTS:
C - - - - - 0x00E918 03:8908: 60        RTS



ofs_043_8909_AD:
; con_se_cb_AD
C - - J - - 0x00E919 03:8909: FE 2E 06  INC ram_062E_se,X
C - - - - - 0x00E91C 03:890C: 60        RTS



ofs_043_890D_B0:
; con_se_cb_B0
C - - J - - 0x00E91D 03:890D: BD 2E 06  LDA ram_062E_se,X
C - - - - - 0x00E920 03:8910: 38        SEC
C - - - - - 0x00E921 03:8911: F1 F7     SBC (ram_00F7_se_t03_data),Y
C - - - - - 0x00E923 03:8913: C8        INY
C - - - - - 0x00E924 03:8914: 9D 2E 06  STA ram_062E_se,X
C - - - - - 0x00E927 03:8917: 60        RTS



ofs_043_8918_B1:
; con_se_cb_B1
C - - J - - 0x00E928 03:8918: BD 16 06  LDA ram_0616_se,X
C - - - - - 0x00E92B 03:891B: 38        SEC
C - - - - - 0x00E92C 03:891C: F1 F7     SBC (ram_00F7_se_t03_data),Y
C - - - - - 0x00E92E 03:891E: C8        INY
C - - - - - 0x00E92F 03:891F: 9D 16 06  STA ram_0616_se,X
C - - - - - 0x00E932 03:8922: B0 10     BCS bra_8934_RTS
C - - - - - 0x00E934 03:8924: BD 1A 06  LDA ram_061A_se,X
C - - - - - 0x00E937 03:8927: E9 00     SBC #$00
C - - - - - 0x00E939 03:8929: 9D 1A 06  STA ram_061A_se,X
; 
C - - - - - 0x00E93C 03:892C: BD 26 06  LDA ram_0626_se_flags,X
C - - - - - 0x00E93F 03:892F: 09 40     ORA #con_0626_40
C - - - - - 0x00E941 03:8931: 9D 26 06  STA ram_0626_se_flags,X
bra_8934_RTS:
C - - - - - 0x00E944 03:8934: 60        RTS



ofs_043_8935_B2:
; con_se_cb_B2
C - - J - - 0x00E945 03:8935: DE 2E 06  DEC ram_062E_se,X
C - - - - - 0x00E948 03:8938: 60        RTS



ofs_043_8939_B6:
; con_se_cb_B6_stop
C - - J - - 0x00E949 03:8939: BD F9 81  LDA tbl_81F9,X
C - - - - - 0x00E94C 03:893C: 49 FF     EOR #$FF
C - - - - - 0x00E94E 03:893E: 2D 09 06  AND ram_0609_se
C - - - - - 0x00E951 03:8941: 8D 09 06  STA ram_0609_se
C - - - - - 0x00E954 03:8944: 29 EF     AND #$EF
C - - - - - 0x00E956 03:8946: D0 03     BNE bra_894B
; A = 00
C - - - - - 0x00E958 03:8948: 8D 09 06  STA ram_0609_se
bra_894B:
C - - - - - 0x00E95B 03:894B: BD DC 06  LDA ram_06DC_se,X
C - - - - - 0x00E95E 03:894E: 29 02     AND #$02
C - - - - - 0x00E960 03:8950: 9D DC 06  STA ram_06DC_se,X
C - - - - - 0x00E963 03:8953: 68        PLA
C - - - - - 0x00E964 03:8954: 68        PLA
C - - - - - 0x00E965 03:8955: 68        PLA
C - - - - - 0x00E966 03:8956: 68        PLA
C - - - - - 0x00E967 03:8957: 68        PLA
C - - - - - 0x00E968 03:8958: 68        PLA



sub_8959:
C - - - - - 0x00E969 03:8959: E0 02     CPX #$02
C - - - - - 0x00E96B 03:895B: F0 22     BEQ bra_897F
C - - - - - 0x00E96D 03:895D: 8A        TXA
; * 04
C - - - - - 0x00E96E 03:895E: 0A        ASL
C - - - - - 0x00E96F 03:895F: 0A        ASL
; 
C - - - - - 0x00E970 03:8960: AA        TAX
C - - - - - 0x00E971 03:8961: A9 30     LDA #$30
C - - - - - 0x00E973 03:8963: 9D 00 40  STA $4000,X ; 4000 4004 400C 
C - - - - - 0x00E976 03:8966: A9 08     LDA #$08
C - - - - - 0x00E978 03:8968: 9D 01 40  STA $4001,X ; 4001 4005 400D 
C - - - - - 0x00E97B 03:896B: AE 0B 06  LDX ram_060B_se_ch_index
C - - - - - 0x00E97E 03:896E: 20 E1 85  JSR sub_85E1
C - - - - - 0x00E981 03:8971: AE 0B 06  LDX ram_060B_se_ch_index
C - - - - - 0x00E984 03:8974: AD 09 06  LDA ram_0609_se
C - - - - - 0x00E987 03:8977: 29 0F     AND #$0F
C - - - - - 0x00E989 03:8979: D0 03     BNE bra_897E_RTS
C - - - - - 0x00E98B 03:897B: 8D 09 06  STA ram_0609_se
bra_897E_RTS:
C - - - - - 0x00E98E 03:897E: 60        RTS
bra_897F:
C - - - - - 0x00E98F 03:897F: A9 80     LDA #$80
C - - - - - 0x00E991 03:8981: 8D 08 40  STA $4008
C - - - - - 0x00E994 03:8984: AE 0B 06  LDX ram_060B_se_ch_index
C - - - - - 0x00E997 03:8987: 20 E1 85  JSR sub_85E1
C - - - - - 0x00E99A 03:898A: AE 0B 06  LDX ram_060B_se_ch_index
C - - - - - 0x00E99D 03:898D: 60        RTS



ofs_043_898E_B7:
; con_se_cb_B7
C - - J - - 0x00E99E 03:898E: BD 26 06  LDA ram_0626_se_flags,X
C - - - - - 0x00E9A1 03:8991: 09 80     ORA #con_0626_80
C - - - - - 0x00E9A3 03:8993: 9D 26 06  STA ram_0626_se_flags,X
C - - - - - 0x00E9A6 03:8996: 60        RTS



ofs_043_8997_B8:
; con_se_cb_B8
C - - J - - 0x00E9A7 03:8997: BD 26 06  LDA ram_0626_se_flags,X
C - - - - - 0x00E9AA 03:899A: 29 7F     AND #con_0626_80 ^ $FF
C - - - - - 0x00E9AC 03:899C: 9D 26 06  STA ram_0626_se_flags,X
C - - - - - 0x00E9AF 03:899F: 60        RTS



ofs_043_89A0_BB:
; con_se_cb_BB
C - - J - - 0x00E9B0 03:89A0: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E9B2 03:89A2: C8        INY
C - - - - - 0x00E9B3 03:89A3: 8D 05 06  STA ram_0605_se_useless
C - - - - - 0x00E9B6 03:89A6: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E9B8 03:89A8: C8        INY
C - - - - - 0x00E9B9 03:89A9: 8D 06 06  STA ram_0606_se_useless
C - - - - - 0x00E9BC 03:89AC: 60        RTS



ofs_043_89AD_BC:
; con_se_cb_BC
C - - J - - 0x00E9BD 03:89AD: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00E9BF 03:89AF: C8        INY
C - - - - - 0x00E9C0 03:89B0: 8D E4 06  STA ram_06E4_se_t01_BC_value
C - - - - - 0x00E9C3 03:89B3: 20 E2 84  JSR sub_84E2_increase_indirect_pointer
C - - - - - 0x00E9C6 03:89B6: BD E0 06  LDA ram_06E0_se,X
C - - - - - 0x00E9C9 03:89B9: FE E0 06  INC ram_06E0_se,X
; * 04
C - - - - - 0x00E9CC 03:89BC: 0A        ASL
C - - - - - 0x00E9CD 03:89BD: 0A        ASL
; 
C - - - - - 0x00E9CE 03:89BE: 8D E5 06  STA ram_06E5_se_t01
C - - - - - 0x00E9D1 03:89C1: 8A        TXA
C - - - - - 0x00E9D2 03:89C2: 18        CLC
C - - - - - 0x00E9D3 03:89C3: 6D E5 06  ADC ram_06E5_se_t01
C - - - - - 0x00E9D6 03:89C6: A8        TAY
C - - - - - 0x00E9D7 03:89C7: AD E4 06  LDA ram_06E4_se_t01_BC_value
C - - - - - 0x00E9DA 03:89CA: 99 87 06  STA ram_0687_se,Y
C - - - - - 0x00E9DD 03:89CD: 98        TYA
C - - - - - 0x00E9DE 03:89CE: 0A        ASL
C - - - - - 0x00E9DF 03:89CF: A8        TAY
C - - - - - 0x00E9E0 03:89D0: A5 F7     LDA ram_00F7_se_t03_data
C - - - - - 0x00E9E2 03:89D2: 99 77 06  STA ram_0677_se_data_lo,Y
C - - - - - 0x00E9E5 03:89D5: A5 F8     LDA ram_00F7_se_t03_data + $01
C - - - - - 0x00E9E7 03:89D7: 99 78 06  STA ram_0678_se_data_hi,Y
C - - - - - 0x00E9EA 03:89DA: A0 00     LDY #$00
C - - - - - 0x00E9EC 03:89DC: 60        RTS



ofs_043_89DD_BD:
; con_se_cb_BD
C - - J - - 0x00E9ED 03:89DD: 98        TYA
C - - - - - 0x00E9EE 03:89DE: 48        PHA
C - - - - - 0x00E9EF 03:89DF: BD E0 06  LDA ram_06E0_se,X
C - - - - - 0x00E9F2 03:89E2: A8        TAY
C - - - - - 0x00E9F3 03:89E3: 88        DEY
C - - - - - 0x00E9F4 03:89E4: 98        TYA
; * 04
C - - - - - 0x00E9F5 03:89E5: 0A        ASL
C - - - - - 0x00E9F6 03:89E6: 0A        ASL
; 
C - - - - - 0x00E9F7 03:89E7: 8D E4 06  STA ram_06E4_se_t02_BD_value
C - - - - - 0x00E9FA 03:89EA: 8A        TXA
C - - - - - 0x00E9FB 03:89EB: 18        CLC
C - - - - - 0x00E9FC 03:89EC: 6D E4 06  ADC ram_06E4_se_t02_BD_value
C - - - - - 0x00E9FF 03:89EF: A8        TAY
C - - - - - 0x00EA00 03:89F0: 38        SEC
C - - - - - 0x00EA01 03:89F1: B9 87 06  LDA ram_0687_se,Y
C - - - - - 0x00EA04 03:89F4: E9 01     SBC #$01
C - - - - - 0x00EA06 03:89F6: 99 87 06  STA ram_0687_se,Y
C - - - - - 0x00EA09 03:89F9: F0 11     BEQ bra_8A0C
C - - - - - 0x00EA0B 03:89FB: 98        TYA
C - - - - - 0x00EA0C 03:89FC: 0A        ASL
C - - - - - 0x00EA0D 03:89FD: A8        TAY
C - - - - - 0x00EA0E 03:89FE: B9 77 06  LDA ram_0677_se_data_lo,Y
C - - - - - 0x00EA11 03:8A01: 85 F7     STA ram_00F7_se_t03_data
C - - - - - 0x00EA13 03:8A03: B9 78 06  LDA ram_0678_se_data_hi,Y
C - - - - - 0x00EA16 03:8A06: 85 F8     STA ram_00F7_se_t03_data + $01
C - - - - - 0x00EA18 03:8A08: A0 00     LDY #$00
C - - - - - 0x00EA1A 03:8A0A: 68        PLA
C - - - - - 0x00EA1B 03:8A0B: 60        RTS
bra_8A0C:
C - - - - - 0x00EA1C 03:8A0C: DE E0 06  DEC ram_06E0_se,X
C - - - - - 0x00EA1F 03:8A0F: 68        PLA
C - - - - - 0x00EA20 03:8A10: A8        TAY
C - - - - - 0x00EA21 03:8A11: 60        RTS



loc_8A12:
ofs_043_8A12_BE:
; con_se_cb_BE_jsr
C D 0 - - - 0x00EA22 03:8A12: FE D8 06  INC ram_06D8_se,X
C - - - - - 0x00EA25 03:8A15: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00EA27 03:8A17: C8        INY
C - - - - - 0x00EA28 03:8A18: 85 FF     STA ram_00FF_se_t09_ptr_lo
C - - - - - 0x00EA2A 03:8A1A: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00EA2C 03:8A1C: C8        INY
C - - - - - 0x00EA2D 03:8A1D: 8D 0D 06  STA ram_060D_se_t02_ptr_hi
C - - - - - 0x00EA30 03:8A20: 20 E2 84  JSR sub_84E2_increase_indirect_pointer
C - - - - - 0x00EA33 03:8A23: 20 5F 8A  JSR sub_8A5F
C - - - - - 0x00EA36 03:8A26: 8E 0B 06  STX ram_060B_se_ch_index
C - - - - - 0x00EA39 03:8A29: AA        TAX
C - - - - - 0x00EA3A 03:8A2A: A5 F7     LDA ram_00F7_se_t03_data
C - - - - - 0x00EA3C 03:8A2C: 9D 8F 06  STA ram_068F_se,X
C - - - - - 0x00EA3F 03:8A2F: A5 F8     LDA ram_00F7_se_t03_data + $01
C - - - - - 0x00EA41 03:8A31: 9D 93 06  STA ram_068F_se + $04,X
C - - - - - 0x00EA44 03:8A34: A5 FF     LDA ram_00FF_se_t09_ptr_lo
C - - - - - 0x00EA46 03:8A36: 85 F7     STA ram_00F7_se_t03_data
C - - - - - 0x00EA48 03:8A38: AD 0D 06  LDA ram_060D_se_t02_ptr_hi
C - - - - - 0x00EA4B 03:8A3B: 85 F8     STA ram_00F7_se_t03_data + $01
C - - - - - 0x00EA4D 03:8A3D: AD 0B 06  LDA ram_060B_se_ch_index
C - - - - - 0x00EA50 03:8A40: AA        TAX
C - - - - - 0x00EA51 03:8A41: A0 00     LDY #$00
C - - - - - 0x00EA53 03:8A43: 60        RTS



ofs_043_8A44_BF:
; con_se_cb_BF_rts
C - - J - - 0x00EA54 03:8A44: 20 5F 8A  JSR sub_8A5F
C - - - - - 0x00EA57 03:8A47: 8E 0B 06  STX ram_060B_se_ch_index
C - - - - - 0x00EA5A 03:8A4A: AA        TAX
C - - - - - 0x00EA5B 03:8A4B: BD 8F 06  LDA ram_068F_se,X
C - - - - - 0x00EA5E 03:8A4E: 85 F7     STA ram_00F7_se_t03_data
C - - - - - 0x00EA60 03:8A50: BD 93 06  LDA ram_068F_se + $04,X
C - - - - - 0x00EA63 03:8A53: 85 F8     STA ram_00F7_se_t03_data + $01
C - - - - - 0x00EA65 03:8A55: AD 0B 06  LDA ram_060B_se_ch_index
C - - - - - 0x00EA68 03:8A58: AA        TAX
C - - - - - 0x00EA69 03:8A59: A0 00     LDY #$00
C - - - - - 0x00EA6B 03:8A5B: DE D8 06  DEC ram_06D8_se,X
C - - - - - 0x00EA6E 03:8A5E: 60        RTS



sub_8A5F:
; out
    ; A = (06D8,X - 01) * 08 + X
C - - - - - 0x00EA6F 03:8A5F: BC D8 06  LDY ram_06D8_se,X
; bzk optimize, useless SEC
C - - - - - 0x00EA72 03:8A62: 38        SEC
; 
C - - - - - 0x00EA73 03:8A63: 88        DEY
C - - - - - 0x00EA74 03:8A64: 98        TYA
; * 08
C - - - - - 0x00EA75 03:8A65: 0A        ASL
C - - - - - 0x00EA76 03:8A66: 0A        ASL
C - - - - - 0x00EA77 03:8A67: 0A        ASL
; 
C - - - - - 0x00EA78 03:8A68: 8E D7 06  STX ram_06D7_se_t02_channel_index
C - - - - - 0x00EA7B 03:8A6B: 18        CLC
C - - - - - 0x00EA7C 03:8A6C: 6D D7 06  ADC ram_06D7_se_t02_channel_index
C - - - - - 0x00EA7F 03:8A6F: 60        RTS



ofs_043_8A70_C1:
; con_se_cb_C1
C - - J - - 0x00EA80 03:8A70: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00EA82 03:8A72: C8        INY
C - - - - - 0x00EA83 03:8A73: 9D 58 06  STA ram_0658_se,X
C - - - - - 0x00EA86 03:8A76: 60        RTS


; bzk garbage
- - - - - - 0x00EA87 03:8A77: B1 F7     LDA (ram_00F7_se_t03_data),Y
- - - - - - 0x00EA89 03:8A79: C8        INY
- - - - - - 0x00EA8A 03:8A7A: 60        RTS



ofs_043_8A7B_C2:
; con_se_cb_C2
C - - J - - 0x00EA8B 03:8A7B: A9 FF     LDA #$FF
C - - - - - 0x00EA8D 03:8A7D: 9D D3 06  STA ram_06D3_se,X
C - - - - - 0x00EA90 03:8A80: 60        RTS



ofs_043_8A81_C3:
; con_se_cb_C3
C - - J - - 0x00EA91 03:8A81: A9 00     LDA #$00
C - - - - - 0x00EA93 03:8A83: 9D D3 06  STA ram_06D3_se,X
C - - - - - 0x00EA96 03:8A86: 60        RTS



ofs_043_8A87_D0:
; con_se_cb_D0
ofs_043_8A87_D1:
; con_se_cb_D1
ofs_043_8A87_D2:
; con_se_cb_D2
ofs_043_8A87_D3:
; con_se_cb_D3
ofs_043_8A87_D4:
; con_se_cb_D4
ofs_043_8A87_D5:
; con_se_cb_D5
ofs_043_8A87_D6:
; con_se_cb_D6
ofs_043_8A87_D7:
; con_se_cb_D7
ofs_043_8A87_D8:
; con_se_cb_D8
ofs_043_8A87_D9:
; con_se_cb_D9
ofs_043_8A87_DA:
; con_se_cb_DA
ofs_043_8A87_DB:
; con_se_cb_DB
ofs_043_8A87_DC:
; con_se_cb_DC
ofs_043_8A87_DD:
; con_se_cb_DD
ofs_043_8A87_DE:
; con_se_cb_DE
ofs_043_8A87_DF:
; con_se_cb_DF
C - - J - - 0x00EA97 03:8A87: 88        DEY
C - - - - - 0x00EA98 03:8A88: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00EA9A 03:8A8A: C8        INY
C - - - - - 0x00EA9B 03:8A8B: 29 0F     AND #$0F
C - - - - - 0x00EA9D 03:8A8D: 9D 5C 06  STA ram_065C_se,X
C - - - - - 0x00EAA0 03:8A90: 60        RTS



ofs_043_8A91_E0:
; con_se_cb_E0
ofs_043_8A91_E1:
; con_se_cb_E1
ofs_043_8A91_E2:
; con_se_cb_E2
C - - J - - 0x00EAA1 03:8A91: 88        DEY
C - - - - - 0x00EAA2 03:8A92: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00EAA4 03:8A94: C8        INY
C - - - - - 0x00EAA5 03:8A95: 29 0F     AND #$0F
C - - - - - 0x00EAA7 03:8A97: 9D 32 06  STA ram_0632_se,X
C - - - - - 0x00EAAA 03:8A9A: 60        RTS



ofs_043_8A9B_C5:
; con_se_cb_C5
C - - J - - 0x00EAAB 03:8A9B: B1 F7     LDA (ram_00F7_se_t03_data),Y
C - - - - - 0x00EAAD 03:8A9D: C8        INY
C - - - - - 0x00EAAE 03:8A9E: 9D 50 06  STA ram_0650_se,X
C - - - - - 0x00EAB1 03:8AA1: 4C 12 8A  JMP loc_8A12



tbl_8AA4_sfx_and_music_data:
; see con_sfx / con_music
- D 0 - I - 0x00EAB4 03:8AA4: FC 8A     .word _off026_sfx_8AFC_01_disable_se_1
- D 0 - I - 0x00EAB6 03:8AA6: FF 8A     .word _off026_sfx_8AFF_02_disable_se_2
- D 0 - I - 0x00EAB8 03:8AA8: 04 8B     .word _off026_sfx_8B04_03_shoot_bullet
- D 0 - I - 0x00EABA 03:8AAA: 31 8B     .word _off026_sfx_8B31_04_shield_bounce
- D 0 - I - 0x00EABC 03:8AAC: 53 8B     .word _off026_sfx_8B53_05_lightning
- D 0 - I - 0x00EABE 03:8AAE: A7 8B     .word _off026_sfx_8BA7_06_shoot_laser
- D 0 - I - 0x00EAC0 03:8AB0: C5 8B     .word _off026_sfx_8BC5_07_attack
- D 0 - I - 0x00EAC2 03:8AB2: EA 8B     .word _off026_sfx_8BEA_08_earthquake
- D 0 - I - 0x00EAC4 03:8AB4: 0C 8C     .word _off026_sfx_8C0C_09_shoot_fire
- D 0 - I - 0x00EAC6 03:8AB6: 33 8C     .word _off026_sfx_8C33_0A_land_on_ground
- D 0 - I - 0x00EAC8 03:8AB8: 46 8C     .word _off026_sfx_8C46_0B_capsule_hit
- D 0 - I - 0x00EACA 03:8ABA: 7A 8C     .word _off026_sfx_8C7A_0C_pick_up_drop
- D 0 - I - 0x00EACC 03:8ABC: 99 8C     .word _off026_sfx_8C99_0D_shoot_arrow
- D 0 - I - 0x00EACE 03:8ABE: B9 8C     .word _off026_sfx_8CB9_0E_player_hit
- D 0 - I - 0x00EAD0 03:8AC0: DD 8C     .word _off026_sfx_8CDD_0F_water_splash
- D 0 - I - 0x00EAD2 03:8AC2: FA 8C     .word _off026_sfx_8CFA_10_somersault
- D 0 - I - 0x00EAD4 03:8AC4: 10 8D     .word _off026_sfx_8D10_11_restore_health
- D 0 - I - 0x00EAD6 03:8AC6: 4C 8D     .word _off026_sfx_8D4C_12_exit_found
- D 0 - I - 0x00EAD8 03:8AC8: 60 8D     .word _off026_sfx_8D60_13_move_cursor
- D 0 - I - 0x00EADA 03:8ACA: 72 8D     .word _off026_sfx_8D72_14_dash
- D 0 - I - 0x00EADC 03:8ACC: 90 8D     .word _off026_sfx_8D90_15_throw_shield
- D 0 - I - 0x00EADE 03:8ACE: DA 8D     .word _off026_sfx_8DDA_16_toggle_switch
- D 0 - I - 0x00EAE0 03:8AD0: 09 8E     .word _off026_sfx_8E09_17_open_door
- D 0 - I - 0x00EAE2 03:8AD2: 1C 8E     .word _off026_sfx_8E1C_18_return
- D 0 - I - 0x00EAE4 03:8AD4: 3B 8E     .word _off026_sfx_8E3B_19_game_pause
- D 0 - I - 0x00EAE6 03:8AD6: 56 8E     .word _off026_sfx_8E56_1A_option_selected
- D 0 - I - 0x00EAE8 03:8AD8: 7C 8E     .word _off026_sfx_8E7C_1B_explosion
- D 0 - I - 0x00EAEA 03:8ADA: 09 9B     .word _off026_music_9B09_1C_cutscene
- D 0 - I - 0x00EAEC 03:8ADC: 86 99     .word _off026_music_9986_1D_credits
- D 0 - I - 0x00EAEE 03:8ADE: D2 9D     .word _off026_music_9DD2_1E_game_over
- D 0 - I - 0x00EAF0 03:8AE0: 8A 9A     .word _off026_music_9A8A_1F_player_dead
- D 0 - I - 0x00EAF2 03:8AE2: 30 96     .word _off026_music_9630_20_map
- D 0 - I - 0x00EAF4 03:8AE4: 81 8F     .word _off026_music_8F81_21_ost_captain
- D 0 - I - 0x00EAF6 03:8AE6: D3 91     .word _off026_music_91D3_22_ost_hawk
- D 0 - I - 0x00EAF8 03:8AE8: 1D 99     .word _off026_music_991D_23_red_alert
- D 0 - I - 0x00EAFA 03:8AEA: 17 98     .word _off026_music_9817_24_dialogue_1
- D 0 - I - 0x00EAFC 03:8AEC: 76 9E     .word _off026_music_9E76_25_dialogue_2
- D 0 - I - 0x00EAFE 03:8AEE: C2 93     .word _off026_music_93C2_26_boss_fight
- D 0 - I - 0x00EB00 03:8AF0: 58 8F     .word _off026_sfx_8F58_27_ambush
- D 0 - I - 0x00EB02 03:8AF2: 51 95     .word _off026_music_9551_28_pause_menu
- D 0 - I - 0x00EB04 03:8AF4: EE 8E     .word _off026_sfx_8EEE_29_dive_under_water
- D 0 - I - 0x00EB06 03:8AF6: 1E 9D     .word _off026_music_9D1E_2A_ambush
- D 0 - I - 0x00EB08 03:8AF8: 3E 8F     .word _off026_sfx_8F3E_2B_power_increase
- D 0 - I - 0x00EB0A 03:8AFA: 95 8E     .word _off026_sfx_8E95_2C_resque



_off026_sfx_8AFC_01_disable_se_1:
; con_sfx_disable_se_1
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EB0C 03:8AFC: 00        .byte %00000000   ;  
- - - - - - 0x00EB0D 03:8AFD: 75 8F     .word off_8F75_extra_data_1




_off026_sfx_8AFF_02_disable_se_2:
; con_sfx_disable_se_2
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EB0F 03:8AFF: 88        .byte %10001000   ; 
- D 0 - I - 0x00EB10 03:8B00: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00EB12 03:8B02: 1C 8B     .word off_8B1C_02_ch_03



_off026_sfx_8B04_03_shoot_bullet:
; con_sfx_shoot_bullet
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EB14 03:8B04: 89        .byte %10001001   ; 
- D 0 - I - 0x00EB15 03:8B05: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00EB17 03:8B07: 0B 8B     .word off_8B0B_03_ch_00
- D 0 - I - 0x00EB19 03:8B09: 1D 8B     .word off_8B1D_03_ch_03



off_8B0B_03_ch_00:
- D 0 - I - 0x00EB1B 03:8B0B: A3        .byte con_se_cb_A3, $02   ; 
- D 0 - I - 0x00EB1D 03:8B0D: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EB1F 03:8B0F: A8        .byte con_se_cb_A8, $0A, $00   ; 
- D 0 - I - 0x00EB22 03:8B12: 01        .byte $01   ; 
- D 0 - I - 0x00EB23 03:8B13: B0        .byte con_se_cb_B0, $05   ; 
- D 0 - I - 0x00EB25 03:8B15: B1        .byte con_se_cb_B1, $05   ; 
- D 0 - I - 0x00EB27 03:8B17: 01        .byte $01   ; 
- D 0 - I - 0x00EB28 03:8B18: B0        .byte con_se_cb_B0, $0A   ; 
- D 0 - I - 0x00EB2A 03:8B1A: 02        .byte $02   ; 
- D 0 - I - 0x00EB2B 03:8B1B: A4        .byte con_se_cb_A4   ; 
off_8B1C_02_ch_03:
- D 0 - I - 0x00EB2C 03:8B1C: B6        .byte con_se_cb_B6_stop   ; 



off_8B1D_03_ch_03:
- D 0 - I - 0x00EB2D 03:8B1D: A9        .byte con_se_cb_A9, $02   ; 
- D 0 - I - 0x00EB2F 03:8B1F: B8        .byte con_se_cb_B8   ; 
- D 0 - I - 0x00EB30 03:8B20: A3        .byte con_se_cb_A3, $02   ; 
- D 0 - I - 0x00EB32 03:8B22: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EB34 03:8B24: A8        .byte con_se_cb_A8, $BF, $01   ; 
- D 0 - I - 0x00EB37 03:8B27: 01        .byte $01   ; 
- D 0 - I - 0x00EB38 03:8B28: A8        .byte con_se_cb_A8, $17, $04   ; 
- D 0 - I - 0x00EB3B 03:8B2B: 01        .byte $01   ; 
- D 0 - I - 0x00EB3C 03:8B2C: B0        .byte con_se_cb_B0, $0F   ; 
- D 0 - I - 0x00EB3E 03:8B2E: 02        .byte $02   ; 
- D 0 - I - 0x00EB3F 03:8B2F: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EB40 03:8B30: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8B31_04_shield_bounce:
; con_sfx_shield_bounce
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EB41 03:8B31: 89        .byte %10001001   ; 
- D 0 - I - 0x00EB42 03:8B32: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00EB44 03:8B34: 38 8B     .word off_8B38_04_ch_00
- D 0 - I - 0x00EB46 03:8B36: 43 8B     .word off_8B43_04_ch_03



off_8B38_04_ch_00:
- D 0 - I - 0x00EB48 03:8B38: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EB4A 03:8B3A: A8        .byte con_se_cb_A8, $F9, $FF   ; 
- D 0 - I - 0x00EB4D 03:8B3D: A3        .byte con_se_cb_A3, $0F   ; 
- D 0 - I - 0x00EB4F 03:8B3F: 01        .byte $01   ; 
- D 0 - I - 0x00EB50 03:8B40: B2        .byte con_se_cb_B2   ; 
- D 0 - I - 0x00EB51 03:8B41: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EB52 03:8B42: B6        .byte con_se_cb_B6_stop   ; 



off_8B43_04_ch_03:
- D 0 - I - 0x00EB53 03:8B43: B8        .byte con_se_cb_B8   ; 
- D 0 - I - 0x00EB54 03:8B44: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EB56 03:8B46: A9        .byte con_se_cb_A9, $01   ; 
- D 0 - I - 0x00EB58 03:8B48: A8        .byte con_se_cb_A8, $F7, $00   ; 
- D 0 - I - 0x00EB5B 03:8B4B: A3        .byte con_se_cb_A3, $0F   ; 
- D 0 - I - 0x00EB5D 03:8B4D: 01        .byte $01   ; 
- D 0 - I - 0x00EB5E 03:8B4E: B2        .byte con_se_cb_B2   ; 
- D 0 - I - 0x00EB5F 03:8B4F: AC        .byte con_se_cb_AC, $FF   ; 
- D 0 - I - 0x00EB61 03:8B51: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EB62 03:8B52: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8B53_05_lightning:
; con_sfx_lightning
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EB63 03:8B53: 81        .byte %10000001   ; 
- D 0 - I - 0x00EB64 03:8B54: 7B 8F     .word off_8F7B_extra_data_2

- D 0 - I - 0x00EB66 03:8B56: 58 8B     .word off_8B58_05_ch_00



off_8B58_05_ch_00:
- D 0 - I - 0x00EB68 03:8B58: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EB6A 03:8B5A: A8        .byte con_se_cb_A8, $0E, $00   ; 
- D 0 - I - 0x00EB6D 03:8B5D: 02        .byte $02   ; 
- D 0 - I - 0x00EB6E 03:8B5E: B1        .byte con_se_cb_B1, $03   ; 
- D 0 - I - 0x00EB70 03:8B60: 01        .byte $01   ; 
- D 0 - I - 0x00EB71 03:8B61: AC        .byte con_se_cb_AC, $01   ; 
- D 0 - I - 0x00EB73 03:8B63: 02        .byte $02   ; 
- D 0 - I - 0x00EB74 03:8B64: B1        .byte con_se_cb_B1, $03   ; 
- D 0 - I - 0x00EB76 03:8B66: 02        .byte $02   ; 
- D 0 - I - 0x00EB77 03:8B67: B1        .byte con_se_cb_B1, $02   ; 
- D 0 - I - 0x00EB79 03:8B69: 01        .byte $01   ; 
- D 0 - I - 0x00EB7A 03:8B6A: AC        .byte con_se_cb_AC, $05   ; 
- D 0 - I - 0x00EB7C 03:8B6C: 02        .byte $02   ; 
- D 0 - I - 0x00EB7D 03:8B6D: B1        .byte con_se_cb_B1, $03   ; 
- D 0 - I - 0x00EB7F 03:8B6F: 01        .byte $01   ; 
- D 0 - I - 0x00EB80 03:8B70: AC        .byte con_se_cb_AC, $06   ; 
- D 0 - I - 0x00EB82 03:8B72: 01        .byte $01   ; 
- D 0 - I - 0x00EB83 03:8B73: B1        .byte con_se_cb_B1, $03   ; 
- D 0 - I - 0x00EB85 03:8B75: 02        .byte $02   ; 
- D 0 - I - 0x00EB86 03:8B76: B1        .byte con_se_cb_B1, $04   ; 
- D 0 - I - 0x00EB88 03:8B78: 01        .byte $01   ; 
- D 0 - I - 0x00EB89 03:8B79: AC        .byte con_se_cb_AC, $06   ; 
- D 0 - I - 0x00EB8B 03:8B7B: 01        .byte $01   ; 
- D 0 - I - 0x00EB8C 03:8B7C: B1        .byte con_se_cb_B1, $05   ; 
- D 0 - I - 0x00EB8E 03:8B7E: 02        .byte $02   ; 
- D 0 - I - 0x00EB8F 03:8B7F: AC        .byte con_se_cb_AC, $03   ; 
- D 0 - I - 0x00EB91 03:8B81: 02        .byte $02   ; 
- D 0 - I - 0x00EB92 03:8B82: B1        .byte con_se_cb_B1, $05   ; 
- D 0 - I - 0x00EB94 03:8B84: 01        .byte $01   ; 
- D 0 - I - 0x00EB95 03:8B85: AC        .byte con_se_cb_AC, $02   ; 
- D 0 - I - 0x00EB97 03:8B87: 02        .byte $02   ; 
- D 0 - I - 0x00EB98 03:8B88: A7        .byte con_se_cb_A7, $01   ; 
- D 0 - I - 0x00EB9A 03:8B8A: 02        .byte $02   ; 
- D 0 - I - 0x00EB9B 03:8B8B: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EB9D 03:8B8D: A8        .byte con_se_cb_A8, $0A, $00   ; 
- D 0 - I - 0x00EBA0 03:8B90: A3        .byte con_se_cb_A3, $05   ; 
- D 0 - I - 0x00EBA2 03:8B92: 01        .byte $01   ; 
- D 0 - I - 0x00EBA3 03:8B93: AC        .byte con_se_cb_AC, $01   ; 
- D 0 - I - 0x00EBA5 03:8B95: B2        .byte con_se_cb_B2   ; 
- D 0 - I - 0x00EBA6 03:8B96: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EBA7 03:8B97: A7        .byte con_se_cb_A7, $00   ; 
- D 0 - I - 0x00EBA9 03:8B99: 01        .byte $01   ; 
- D 0 - I - 0x00EBAA 03:8B9A: B1        .byte con_se_cb_B1, $05   ; 
- D 0 - I - 0x00EBAC 03:8B9C: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EBAE 03:8B9E: A3        .byte con_se_cb_A3, $06   ; 
- D 0 - I - 0x00EBB0 03:8BA0: 0F        .byte $0F   ; 
- D 0 - I - 0x00EBB1 03:8BA1: B0        .byte con_se_cb_B0, $02   ; 
- D 0 - I - 0x00EBB3 03:8BA3: AC        .byte con_se_cb_AC, $01   ; 
- D 0 - I - 0x00EBB5 03:8BA5: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EBB6 03:8BA6: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8BA7_06_shoot_laser:
; con_sfx_shoot_laser
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EBB7 03:8BA7: 89        .byte %10001001   ; 
- D 0 - I - 0x00EBB8 03:8BA8: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00EBBA 03:8BAA: AE 8B     .word off_8BAE_06_ch_00
- D 0 - I - 0x00EBBC 03:8BAC: B5 8B     .word off_8BB5_06_ch_03



off_8BAE_06_ch_00:
- D 0 - I - 0x00EBBE 03:8BAE: A7        .byte con_se_cb_A7, $06   ; 
- D 0 - I - 0x00EBC0 03:8BB0: A8        .byte con_se_cb_A8, $07, $00   ; 
- D 0 - I - 0x00EBC3 03:8BB3: 3C        .byte $3C   ; 
- D 0 - I - 0x00EBC4 03:8BB4: B6        .byte con_se_cb_B6_stop   ; 



off_8BB5_06_ch_03:
- D 0 - I - 0x00EBC5 03:8BB5: B8        .byte con_se_cb_B8   ; 
- D 0 - I - 0x00EBC6 03:8BB6: A9        .byte con_se_cb_A9, $00   ; 
- D 0 - I - 0x00EBC8 03:8BB8: A8        .byte con_se_cb_A8, $B5, $01   ; 
- D 0 - I - 0x00EBCB 03:8BBB: A3        .byte con_se_cb_A3, $1E   ; 
- D 0 - I - 0x00EBCD 03:8BBD: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EBCF 03:8BBF: 01        .byte $01   ; 
- D 0 - I - 0x00EBD0 03:8BC0: B0        .byte con_se_cb_B0, $0D   ; 
- D 0 - I - 0x00EBD2 03:8BC2: 01        .byte $01   ; 
- D 0 - I - 0x00EBD3 03:8BC3: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EBD4 03:8BC4: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8BC5_07_attack:
; con_sfx_attack
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EBD5 03:8BC5: 89        .byte %10001001   ; 
- D 0 - I - 0x00EBD6 03:8BC6: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00EBD8 03:8BC8: CC 8B     .word off_8BCC_07_ch_00
- D 0 - I - 0x00EBDA 03:8BCA: D9 8B     .word off_8BD9_07_ch_03



off_8BCC_07_ch_00:
- D 0 - I - 0x00EBDC 03:8BCC: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EBDE 03:8BCE: A8        .byte con_se_cb_A8, $0C, $00   ; 
- D 0 - I - 0x00EBE1 03:8BD1: A3        .byte con_se_cb_A3, $0F   ; 
- D 0 - I - 0x00EBE3 03:8BD3: 01        .byte $01   ; 
- D 0 - I - 0x00EBE4 03:8BD4: AC        .byte con_se_cb_AC, $01   ; 
- D 0 - I - 0x00EBE6 03:8BD6: B2        .byte con_se_cb_B2   ; 
- D 0 - I - 0x00EBE7 03:8BD7: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EBE8 03:8BD8: B6        .byte con_se_cb_B6_stop   ; 



off_8BD9_07_ch_03:
- D 0 - I - 0x00EBE9 03:8BD9: B8        .byte con_se_cb_B8   ; 
- D 0 - I - 0x00EBEA 03:8BDA: A8        .byte con_se_cb_A8, $23, $02   ; 
- D 0 - I - 0x00EBED 03:8BDD: A9        .byte con_se_cb_A9, $01   ; 
- D 0 - I - 0x00EBEF 03:8BDF: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EBF1 03:8BE1: A3        .byte con_se_cb_A3, $08   ; 
- D 0 - I - 0x00EBF3 03:8BE3: 01        .byte $01   ; 
- D 0 - I - 0x00EBF4 03:8BE4: AC        .byte con_se_cb_AC, $C8   ; 
- D 0 - I - 0x00EBF6 03:8BE6: B0        .byte con_se_cb_B0, $02   ; 
- D 0 - I - 0x00EBF8 03:8BE8: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EBF9 03:8BE9: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8BEA_08_earthquake:
; con_sfx_earthquake
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EBFA 03:8BEA: 89        .byte %10001001   ; 
- D 0 - I - 0x00EBFB 03:8BEB: 7B 8F     .word off_8F7B_extra_data_2

- D 0 - I - 0x00EBFD 03:8BED: F1 8B     .word off_8BF1_08_ch_00
- D 0 - I - 0x00EBFF 03:8BEF: FC 8B     .word off_8BFC_08_ch_03



off_8BF1_08_ch_00:
- D 0 - I - 0x00EC01 03:8BF1: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EC03 03:8BF3: A8        .byte con_se_cb_A8, $0F, $00   ; 
loc_A5_8BF6:
- D 0 - I - 0x00EC06 03:8BF6: A3        .byte con_se_cb_A3, $0F   ; 
- D 0 - I - 0x00EC08 03:8BF8: 03        .byte $03   ; 
- D 0 - I - 0x00EC09 03:8BF9: B2        .byte con_se_cb_B2   ; 
- D 0 - I - 0x00EC0A 03:8BFA: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EC0B 03:8BFB: B6        .byte con_se_cb_B6_stop   ; 



off_8BFC_08_ch_03:
- D 0 - I - 0x00EC0C 03:8BFC: B8        .byte con_se_cb_B8   ; 
- D 0 - I - 0x00EC0D 03:8BFD: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EC0F 03:8BFF: A9        .byte con_se_cb_A9, $02   ; 
- D 0 - I - 0x00EC11 03:8C01: A8        .byte con_se_cb_A8, $BF, $01   ; 
- D 0 - I - 0x00EC14 03:8C04: A3        .byte con_se_cb_A3, $0F   ; 
- D 0 - I - 0x00EC16 03:8C06: 01        .byte $01   ; 
- D 0 - I - 0x00EC17 03:8C07: B2        .byte con_se_cb_B2   ; 
- D 0 - I - 0x00EC18 03:8C08: AC        .byte con_se_cb_AC, $64   ; 
- D 0 - I - 0x00EC1A 03:8C0A: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EC1B 03:8C0B: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8C0C_09_shoot_fire:
; con_sfx_shoot_fire
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EC1C 03:8C0C: 81        .byte %10000001   ; 
- D 0 - I - 0x00EC1D 03:8C0D: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00EC1F 03:8C0F: 11 8C     .word off_8C11_09_ch_00



off_8C11_09_ch_00:
- D 0 - I - 0x00EC21 03:8C11: A8        .byte con_se_cb_A8, $0F, $00   ; 
- D 0 - I - 0x00EC24 03:8C14: A7        .byte con_se_cb_A7, $00   ; 
- D 0 - I - 0x00EC26 03:8C16: A3        .byte con_se_cb_A3, $03   ; 
- D 0 - I - 0x00EC28 03:8C18: A3        .byte con_se_cb_A3, $05   ; 
- D 0 - I - 0x00EC2A 03:8C1A: 01        .byte $01   ; 
- D 0 - I - 0x00EC2B 03:8C1B: AD        .byte con_se_cb_AD   ; 
- D 0 - I - 0x00EC2C 03:8C1C: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EC2D 03:8C1D: B1        .byte con_se_cb_B1, $01   ; 
- D 0 - I - 0x00EC2F 03:8C1F: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EC30 03:8C20: 1E        .byte $1E   ; 
- D 0 - I - 0x00EC31 03:8C21: A3        .byte con_se_cb_A3, $05   ; 
- D 0 - I - 0x00EC33 03:8C23: 02        .byte $02   ; 
- D 0 - I - 0x00EC34 03:8C24: B2        .byte con_se_cb_B2   ; 
- D 0 - I - 0x00EC35 03:8C25: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EC36 03:8C26: AC        .byte con_se_cb_AC, $01   ; 
- D 0 - I - 0x00EC38 03:8C28: A3        .byte con_se_cb_A3, $02   ; 
- D 0 - I - 0x00EC3A 03:8C2A: A3        .byte con_se_cb_A3, $05   ; 
- D 0 - I - 0x00EC3C 03:8C2C: 03        .byte $03   ; 
- D 0 - I - 0x00EC3D 03:8C2D: B2        .byte con_se_cb_B2   ; 
- D 0 - I - 0x00EC3E 03:8C2E: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EC3F 03:8C2F: AC        .byte con_se_cb_AC, $01   ; 
- D 0 - I - 0x00EC41 03:8C31: A4        .byte con_se_cb_A4   ; 
- - - - - - 0x00EC42 03:8C32: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8C33_0A_land_on_ground:
; con_sfx_land_on_ground
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EC43 03:8C33: 81        .byte %10000001   ; 
- D 0 - I - 0x00EC44 03:8C34: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00EC46 03:8C36: 38 8C     .word off_8C38_0A_ch_00



off_8C38_0A_ch_00:
- D 0 - I - 0x00EC48 03:8C38: A8        .byte con_se_cb_A8, $0F, $00   ; 
- D 0 - I - 0x00EC4B 03:8C3B: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EC4D 03:8C3D: A3        .byte con_se_cb_A3, $05   ; 
- D 0 - I - 0x00EC4F 03:8C3F: 01        .byte $01   ; 
- D 0 - I - 0x00EC50 03:8C40: B1        .byte con_se_cb_B1, $02   ; 
- D 0 - I - 0x00EC52 03:8C42: B0        .byte con_se_cb_B0, $03   ; 
- D 0 - I - 0x00EC54 03:8C44: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EC55 03:8C45: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8C46_0B_capsule_hit:
; con_sfx_capsule_hit
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EC56 03:8C46: 89        .byte %10001001   ; 
- D 0 - I - 0x00EC57 03:8C47: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00EC59 03:8C49: 4D 8C     .word off_8C4D_0B_ch_00
- D 0 - I - 0x00EC5B 03:8C4B: 5A 8C     .word off_8C5A_0B_ch_03



off_8C4D_0B_ch_00:
- D 0 - I - 0x00EC5D 03:8C4D: A8        .byte con_se_cb_A8, $09, $00   ; 
- D 0 - I - 0x00EC60 03:8C50: A3        .byte con_se_cb_A3, $02   ; 
- D 0 - I - 0x00EC62 03:8C52: A7        .byte con_se_cb_A7, $09   ; 
- D 0 - I - 0x00EC64 03:8C54: 02        .byte $02   ; 
- D 0 - I - 0x00EC65 03:8C55: A7        .byte con_se_cb_A7, $00   ; 
- D 0 - I - 0x00EC67 03:8C57: 04        .byte $04   ; 
- D 0 - I - 0x00EC68 03:8C58: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EC69 03:8C59: B6        .byte con_se_cb_B6_stop   ; 



off_8C5A_0B_ch_03:
- D 0 - I - 0x00EC6A 03:8C5A: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EC6C 03:8C5C: A9        .byte con_se_cb_A9, $02   ; 
- D 0 - I - 0x00EC6E 03:8C5E: A8        .byte con_se_cb_A8, $17, $04   ; 
- D 0 - I - 0x00EC71 03:8C61: A3        .byte con_se_cb_A3, $05   ; 
- D 0 - I - 0x00EC73 03:8C63: 01        .byte $01   ; 
- D 0 - I - 0x00EC74 03:8C64: B0        .byte con_se_cb_B0, $02   ; 
- D 0 - I - 0x00EC76 03:8C66: AC        .byte con_se_cb_AC, $96   ; 
- D 0 - I - 0x00EC78 03:8C68: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EC79 03:8C69: A7        .byte con_se_cb_A7, $00   ; 
- D 0 - I - 0x00EC7B 03:8C6B: 01        .byte $01   ; 
- D 0 - I - 0x00EC7C 03:8C6C: A8        .byte con_se_cb_A8, $BF, $01   ; 
- D 0 - I - 0x00EC7F 03:8C6F: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EC81 03:8C71: A3        .byte con_se_cb_A3, $03   ; 
- D 0 - I - 0x00EC83 03:8C73: 01        .byte $01   ; 
- D 0 - I - 0x00EC84 03:8C74: B0        .byte con_se_cb_B0, $02   ; 
- D 0 - I - 0x00EC86 03:8C76: AC        .byte con_se_cb_AC, $96   ; 
- D 0 - I - 0x00EC88 03:8C78: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EC89 03:8C79: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8C7A_0C_pick_up_drop:
; con_sfx_pick_up_drop
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EC8A 03:8C7A: 88        .byte %10001000   ; 
- D 0 - I - 0x00EC8B 03:8C7B: 7B 8F     .word off_8F7B_extra_data_2

- D 0 - I - 0x00EC8D 03:8C7D: 7F 8C     .word off_8C7F_0C_ch_03



off_8C7F_0C_ch_03:
- D 0 - I - 0x00EC8F 03:8C7F: A8        .byte con_se_cb_A8, $C6, $00   ; 
- D 0 - I - 0x00EC92 03:8C82: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EC94 03:8C84: A9        .byte con_se_cb_A9, $02   ; 
- D 0 - I - 0x00EC96 03:8C86: B8        .byte con_se_cb_B8   ; 
- D 0 - I - 0x00EC97 03:8C87: A3        .byte con_se_cb_A3, $04   ; 
- D 0 - I - 0x00EC99 03:8C89: 02        .byte $02   ; 
- D 0 - I - 0x00EC9A 03:8C8A: B1        .byte con_se_cb_B1, $1E   ; 
- D 0 - I - 0x00EC9C 03:8C8C: B0        .byte con_se_cb_B0, $0C   ; 
- D 0 - I - 0x00EC9E 03:8C8E: 01        .byte $01   ; 
- D 0 - I - 0x00EC9F 03:8C8F: AB        .byte con_se_cb_AB, $0C   ; 
- D 0 - I - 0x00ECA1 03:8C91: A4        .byte con_se_cb_A4   ; 
loc_A5_8C92:
- D 0 - I - 0x00ECA2 03:8C92: A3        .byte con_se_cb_A3, $0E   ; 
- D 0 - I - 0x00ECA4 03:8C94: 01        .byte $01   ; 
- D 0 - I - 0x00ECA5 03:8C95: B2        .byte con_se_cb_B2   ; 
- D 0 - I - 0x00ECA6 03:8C96: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00ECA7 03:8C97: 06        .byte $06   ; 
- D 0 - I - 0x00ECA8 03:8C98: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8C99_0D_shoot_arrow:
; con_sfx_shoot_arrow
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00ECA9 03:8C99: 81        .byte %10000001   ; 
- D 0 - I - 0x00ECAA 03:8C9A: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00ECAC 03:8C9C: 9E 8C     .word off_8C9E_0D_ch_00



off_8C9E_0D_ch_00:
- D 0 - I - 0x00ECAE 03:8C9E: A7        .byte con_se_cb_A7, $08   ; 
- D 0 - I - 0x00ECB0 03:8CA0: A8        .byte con_se_cb_A8, $0B, $00   ; 
- D 0 - I - 0x00ECB3 03:8CA3: 01        .byte $01   ; 
- D 0 - I - 0x00ECB4 03:8CA4: A3        .byte con_se_cb_A3, $02   ; 
- D 0 - I - 0x00ECB6 03:8CA6: AB        .byte con_se_cb_AB, $02   ; 
- D 0 - I - 0x00ECB8 03:8CA8: AC        .byte con_se_cb_AC, $01   ; 
- D 0 - I - 0x00ECBA 03:8CAA: 01        .byte $01   ; 
- D 0 - I - 0x00ECBB 03:8CAB: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00ECBC 03:8CAC: AB        .byte con_se_cb_AB, $03   ; 
- D 0 - I - 0x00ECBE 03:8CAE: AC        .byte con_se_cb_AC, $01   ; 
- D 0 - I - 0x00ECC0 03:8CB0: A3        .byte con_se_cb_A3, $08   ; 
- D 0 - I - 0x00ECC2 03:8CB2: 01        .byte $01   ; 
- D 0 - I - 0x00ECC3 03:8CB3: AC        .byte con_se_cb_AC, $01   ; 
- D 0 - I - 0x00ECC5 03:8CB5: B0        .byte con_se_cb_B0, $02   ; 
- D 0 - I - 0x00ECC7 03:8CB7: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00ECC8 03:8CB8: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8CB9_0E_player_hit:
; con_sfx_player_hit
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00ECC9 03:8CB9: 88        .byte %10001000   ; 
- D 0 - I - 0x00ECCA 03:8CBA: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00ECCC 03:8CBC: BE 8C     .word off_8CBE_0E_ch_03



off_8CBE_0E_ch_03:
- D 0 - I - 0x00ECCE 03:8CBE: A8        .byte con_se_cb_A8, $4F, $03   ; 
- D 0 - I - 0x00ECD1 03:8CC1: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00ECD3 03:8CC3: A9        .byte con_se_cb_A9, $02   ; 
- D 0 - I - 0x00ECD5 03:8CC5: A3        .byte con_se_cb_A3, $04   ; 
- D 0 - I - 0x00ECD7 03:8CC7: 01        .byte $01   ; 
- D 0 - I - 0x00ECD8 03:8CC8: AC        .byte con_se_cb_AC, $50   ; 
- D 0 - I - 0x00ECDA 03:8CCA: B0        .byte con_se_cb_B0, $03   ; 
- D 0 - I - 0x00ECDC 03:8CCC: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00ECDD 03:8CCD: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00ECDF 03:8CCF: A8        .byte con_se_cb_A8, $23, $02   ; 
- D 0 - I - 0x00ECE2 03:8CD2: A9        .byte con_se_cb_A9, $02   ; 
- D 0 - I - 0x00ECE4 03:8CD4: A3        .byte con_se_cb_A3, $04   ; 
- D 0 - I - 0x00ECE6 03:8CD6: 01        .byte $01   ; 
- D 0 - I - 0x00ECE7 03:8CD7: AC        .byte con_se_cb_AC, $96   ; 
- D 0 - I - 0x00ECE9 03:8CD9: B0        .byte con_se_cb_B0, $03   ; 
- D 0 - I - 0x00ECEB 03:8CDB: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00ECEC 03:8CDC: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8CDD_0F_water_splash:
; con_sfx_water_splash
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00ECED 03:8CDD: 81        .byte %10000001   ; 
- D 0 - I - 0x00ECEE 03:8CDE: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00ECF0 03:8CE0: E2 8C     .word off_8CE2_0F_ch_00



off_8CE2_0F_ch_00:
- D 0 - I - 0x00ECF2 03:8CE2: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00ECF4 03:8CE4: A8        .byte con_se_cb_A8, $0A, $00   ; 
- D 0 - I - 0x00ECF7 03:8CE7: A3        .byte con_se_cb_A3, $05   ; 
- D 0 - I - 0x00ECF9 03:8CE9: 01        .byte $01   ; 
- D 0 - I - 0x00ECFA 03:8CEA: B1        .byte con_se_cb_B1, $01   ; 
- D 0 - I - 0x00ECFC 03:8CEC: B2        .byte con_se_cb_B2   ; 
- D 0 - I - 0x00ECFD 03:8CED: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00ECFE 03:8CEE: A7        .byte con_se_cb_A7, $00   ; 
- D 0 - I - 0x00ED00 03:8CF0: 01        .byte $01   ; 
- D 0 - I - 0x00ED01 03:8CF1: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00ED03 03:8CF3: A3        .byte con_se_cb_A3, $0E   ; 
- D 0 - I - 0x00ED05 03:8CF5: 02        .byte $02   ; 
- D 0 - I - 0x00ED06 03:8CF6: B2        .byte con_se_cb_B2   ; 
- D 0 - I - 0x00ED07 03:8CF7: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00ED08 03:8CF8: 0A        .byte $0A   ; 
- D 0 - I - 0x00ED09 03:8CF9: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8CFA_10_somersault:
; con_sfx_somersault
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00ED0A 03:8CFA: 81        .byte %10000001   ; 
- D 0 - I - 0x00ED0B 03:8CFB: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00ED0D 03:8CFD: FF 8C     .word off_8CFF_10_ch_00



off_8CFF_10_ch_00:
- D 0 - I - 0x00ED0F 03:8CFF: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00ED11 03:8D01: A3        .byte con_se_cb_A3, $08   ; 
- D 0 - I - 0x00ED13 03:8D03: A8        .byte con_se_cb_A8, $0A, $00   ; 
- D 0 - I - 0x00ED16 03:8D06: A3        .byte con_se_cb_A3, $05   ; 
- D 0 - I - 0x00ED18 03:8D08: 01        .byte $01   ; 
- D 0 - I - 0x00ED19 03:8D09: B1        .byte con_se_cb_B1, $02   ; 
- D 0 - I - 0x00ED1B 03:8D0B: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00ED1C 03:8D0C: B0        .byte con_se_cb_B0, $02   ; 
- D 0 - I - 0x00ED1E 03:8D0E: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00ED1F 03:8D0F: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8D10_11_restore_health:
; con_sfx_restore_health
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00ED20 03:8D10: 89        .byte %10001001   ; 
- D 0 - I - 0x00ED21 03:8D11: 7B 8F     .word off_8F7B_extra_data_2

- D 0 - I - 0x00ED23 03:8D13: 17 8D     .word off_8D17_11_ch_00
- D 0 - I - 0x00ED25 03:8D15: 2B 8D     .word off_8D2B_11_ch_03



off_8D17_11_ch_00:
- D 0 - I - 0x00ED27 03:8D17: A7        .byte con_se_cb_A7, $00   ; 
- D 0 - I - 0x00ED29 03:8D19: A8        .byte con_se_cb_A8, $0F, $00   ; 
- D 0 - I - 0x00ED2C 03:8D1C: A3        .byte con_se_cb_A3, $07   ; 
- D 0 - I - 0x00ED2E 03:8D1E: 05        .byte $05   ; 
- D 0 - I - 0x00ED2F 03:8D1F: AC        .byte con_se_cb_AC, $01   ; 
- D 0 - I - 0x00ED31 03:8D21: AD        .byte con_se_cb_AD   ; 
- D 0 - I - 0x00ED32 03:8D22: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00ED33 03:8D23: A3        .byte con_se_cb_A3, $08   ; 
- D 0 - I - 0x00ED35 03:8D25: 04        .byte $04   ; 
- D 0 - I - 0x00ED36 03:8D26: AC        .byte con_se_cb_AC, $01   ; 
- D 0 - I - 0x00ED38 03:8D28: B2        .byte con_se_cb_B2   ; 
- D 0 - I - 0x00ED39 03:8D29: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00ED3A 03:8D2A: B6        .byte con_se_cb_B6_stop   ; 



off_8D2B_11_ch_03:
- D 0 - I - 0x00ED3B 03:8D2B: B8        .byte con_se_cb_B8   ; 
- D 0 - I - 0x00ED3C 03:8D2C: A8        .byte con_se_cb_A8, $03, $04   ; 
- D 0 - I - 0x00ED3F 03:8D2F: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00ED41 03:8D31: A9        .byte con_se_cb_A9, $02   ; 
- D 0 - I - 0x00ED43 03:8D33: A3        .byte con_se_cb_A3, $08   ; 
- D 0 - I - 0x00ED45 03:8D35: A3        .byte con_se_cb_A3, $04   ; 
- D 0 - I - 0x00ED47 03:8D37: 01        .byte $01   ; 
- D 0 - I - 0x00ED48 03:8D38: B1        .byte con_se_cb_B1, $49   ; 
- D 0 - I - 0x00ED4A 03:8D3A: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00ED4B 03:8D3B: AC        .byte con_se_cb_AC, $FF   ; 
- D 0 - I - 0x00ED4D 03:8D3D: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00ED4E 03:8D3E: A3        .byte con_se_cb_A3, $08   ; 
- D 0 - I - 0x00ED50 03:8D40: A3        .byte con_se_cb_A3, $04   ; 
- D 0 - I - 0x00ED52 03:8D42: 01        .byte $01   ; 
- D 0 - I - 0x00ED53 03:8D43: B1        .byte con_se_cb_B1, $49   ; 
- D 0 - I - 0x00ED55 03:8D45: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00ED56 03:8D46: AC        .byte con_se_cb_AC, $FF   ; 
- D 0 - I - 0x00ED58 03:8D48: B0        .byte con_se_cb_B0, $02   ; 
- D 0 - I - 0x00ED5A 03:8D4A: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00ED5B 03:8D4B: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8D4C_12_exit_found:
; con_sfx_exit_found
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00ED5C 03:8D4C: 88        .byte %10001000   ; 
- D 0 - I - 0x00ED5D 03:8D4D: 7B 8F     .word off_8F7B_extra_data_2

- D 0 - I - 0x00ED5F 03:8D4F: 51 8D     .word off_8D51_12_ch_03



off_8D51_12_ch_03:
- D 0 - I - 0x00ED61 03:8D51: B7        .byte con_se_cb_B7   ; 
- D 0 - I - 0x00ED62 03:8D52: A9        .byte con_se_cb_A9, $01   ; 
- D 0 - I - 0x00ED64 03:8D54: A8        .byte con_se_cb_A8, $D9, $00   ; 
- D 0 - I - 0x00ED67 03:8D57: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00ED69 03:8D59: A3        .byte con_se_cb_A3, $05   ; 
- D 0 - I - 0x00ED6B 03:8D5B: AA        .byte con_se_cb_AA, $BB   ; 
- D 0 - I - 0x00ED6D 03:8D5D: 0C        .byte $0C   ; 
- D 0 - I - 0x00ED6E 03:8D5E: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00ED6F 03:8D5F: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8D60_13_move_cursor:
; con_sfx_move_cursor
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00ED70 03:8D60: 88        .byte %10001000   ; 
- D 0 - I - 0x00ED71 03:8D61: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00ED73 03:8D63: 65 8D     .word off_8D65_13_ch_03



off_8D65_13_ch_03:
- D 0 - I - 0x00ED75 03:8D65: B8        .byte con_se_cb_B8   ; 
- D 0 - I - 0x00ED76 03:8D66: A8        .byte con_se_cb_A8, $61, $00   ; 
- D 0 - I - 0x00ED79 03:8D69: A9        .byte con_se_cb_A9, $02   ; 
- D 0 - I - 0x00ED7B 03:8D6B: A7        .byte con_se_cb_A7, $0A   ; 
- D 0 - I - 0x00ED7D 03:8D6D: 02        .byte $02   ; 
- D 0 - I - 0x00ED7E 03:8D6E: B0        .byte con_se_cb_B0, $09   ; 
- D 0 - I - 0x00ED80 03:8D70: 03        .byte $03   ; 
- D 0 - I - 0x00ED81 03:8D71: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8D72_14_dash:
; con_sfx_dash
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00ED82 03:8D72: 81        .byte %10000001   ; 
- D 0 - I - 0x00ED83 03:8D73: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00ED85 03:8D75: 77 8D     .word off_8D77_14_ch_00



off_8D77_14_ch_00:
- D 0 - I - 0x00ED87 03:8D77: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00ED89 03:8D79: A8        .byte con_se_cb_A8, $00, $00   ; 
- D 0 - I - 0x00ED8C 03:8D7C: A3        .byte con_se_cb_A3, $08   ; 
- D 0 - I - 0x00ED8E 03:8D7E: 01        .byte $01   ; 
- D 0 - I - 0x00ED8F 03:8D7F: AC        .byte con_se_cb_AC, $01   ; 
- D 0 - I - 0x00ED91 03:8D81: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00ED92 03:8D82: A3        .byte con_se_cb_A3, $08   ; 
- D 0 - I - 0x00ED94 03:8D84: 01        .byte $01   ; 
- D 0 - I - 0x00ED95 03:8D85: B1        .byte con_se_cb_B1, $01   ; 
- D 0 - I - 0x00ED97 03:8D87: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00ED98 03:8D88: 0F        .byte $0F   ; 
- D 0 - I - 0x00ED99 03:8D89: A3        .byte con_se_cb_A3, $0E   ; 
- D 0 - I - 0x00ED9B 03:8D8B: 01        .byte $01   ; 
- D 0 - I - 0x00ED9C 03:8D8C: B2        .byte con_se_cb_B2   ; 
- D 0 - I - 0x00ED9D 03:8D8D: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00ED9E 03:8D8E: 06        .byte $06   ; 
- D 0 - I - 0x00ED9F 03:8D8F: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8D90_15_throw_shield:
; con_sfx_throw_shield
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EDA0 03:8D90: 89        .byte %10001001   ; 
- D 0 - I - 0x00EDA1 03:8D91: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00EDA3 03:8D93: 97 8D     .word off_8D97_15_ch_00
- D 0 - I - 0x00EDA5 03:8D95: C2 8D     .word off_8DC2_15_ch_03



off_8D97_15_ch_00:
- D 0 - I - 0x00EDA7 03:8D97: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EDA9 03:8D99: A8        .byte con_se_cb_A8, $0A, $00   ; 
- D 0 - I - 0x00EDAC 03:8D9C: A3        .byte con_se_cb_A3, $06   ; 
- D 0 - I - 0x00EDAE 03:8D9E: 01        .byte $01   ; 
- D 0 - I - 0x00EDAF 03:8D9F: B1        .byte con_se_cb_B1, $01   ; 
- D 0 - I - 0x00EDB1 03:8DA1: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EDB2 03:8DA2: A3        .byte con_se_cb_A3, $04   ; 
- D 0 - I - 0x00EDB4 03:8DA4: 01        .byte $01   ; 
- D 0 - I - 0x00EDB5 03:8DA5: B0        .byte con_se_cb_B0, $02   ; 
- D 0 - I - 0x00EDB7 03:8DA7: AC        .byte con_se_cb_AC, $01   ; 
- D 0 - I - 0x00EDB9 03:8DA9: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EDBA 03:8DAA: A3        .byte con_se_cb_A3, $0A   ; 
- D 0 - I - 0x00EDBC 03:8DAC: A3        .byte con_se_cb_A3, $03   ; 
- D 0 - I - 0x00EDBE 03:8DAE: 01        .byte $01   ; 
- D 0 - I - 0x00EDBF 03:8DAF: AC        .byte con_se_cb_AC, $01   ; 
- D 0 - I - 0x00EDC1 03:8DB1: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EDC2 03:8DB2: B1        .byte con_se_cb_B1, $03   ; 
- D 0 - I - 0x00EDC4 03:8DB4: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EDC5 03:8DB5: A3        .byte con_se_cb_A3, $08   ; 
- D 0 - I - 0x00EDC7 03:8DB7: A3        .byte con_se_cb_A3, $03   ; 
- D 0 - I - 0x00EDC9 03:8DB9: 01        .byte $01   ; 
- D 0 - I - 0x00EDCA 03:8DBA: AC        .byte con_se_cb_AC, $01   ; 
- D 0 - I - 0x00EDCC 03:8DBC: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EDCD 03:8DBD: B2        .byte con_se_cb_B2   ; 
- D 0 - I - 0x00EDCE 03:8DBE: B1        .byte con_se_cb_B1, $04   ; 
- D 0 - I - 0x00EDD0 03:8DC0: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EDD1 03:8DC1: B6        .byte con_se_cb_B6_stop   ; 



off_8DC2_15_ch_03:
- D 0 - I - 0x00EDD2 03:8DC2: B8        .byte con_se_cb_B8   ; 
- D 0 - I - 0x00EDD3 03:8DC3: A9        .byte con_se_cb_A9, $00   ; 
- D 0 - I - 0x00EDD5 03:8DC5: A8        .byte con_se_cb_A8, $43, $05   ; 
- D 0 - I - 0x00EDD8 03:8DC8: A7        .byte con_se_cb_A7, $00   ; 
- D 0 - I - 0x00EDDA 03:8DCA: A3        .byte con_se_cb_A3, $03   ; 
- D 0 - I - 0x00EDDC 03:8DCC: 01        .byte $01   ; 
- D 0 - I - 0x00EDDD 03:8DCD: B1        .byte con_se_cb_B1, $6E   ; 
- D 0 - I - 0x00EDDF 03:8DCF: AB        .byte con_se_cb_AB, $04   ; 
- D 0 - I - 0x00EDE1 03:8DD1: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EDE2 03:8DD2: A3        .byte con_se_cb_A3, $0C   ; 
- D 0 - I - 0x00EDE4 03:8DD4: 01        .byte $01   ; 
- D 0 - I - 0x00EDE5 03:8DD5: AC        .byte con_se_cb_AC, $32   ; 
- D 0 - I - 0x00EDE7 03:8DD7: B2        .byte con_se_cb_B2   ; 
- D 0 - I - 0x00EDE8 03:8DD8: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EDE9 03:8DD9: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8DDA_16_toggle_switch:
; con_sfx_toggle_switch
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EDEA 03:8DDA: 89        .byte %10001001   ; 
- D 0 - I - 0x00EDEB 03:8DDB: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00EDED 03:8DDD: E1 8D     .word off_8DE1_16_ch_00
- D 0 - I - 0x00EDEF 03:8DDF: F0 8D     .word off_8DF0_16_ch_03



off_8DE1_16_ch_00:
- D 0 - I - 0x00EDF1 03:8DE1: A8        .byte con_se_cb_A8, $FC, $FF   ; 
- D 0 - I - 0x00EDF4 03:8DE4: A3        .byte con_se_cb_A3, $02   ; 
- D 0 - I - 0x00EDF6 03:8DE6: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EDF8 03:8DE8: 02        .byte $02   ; 
- D 0 - I - 0x00EDF9 03:8DE9: B0        .byte con_se_cb_B0, $0B   ; 
- D 0 - I - 0x00EDFB 03:8DEB: 02        .byte $02   ; 
- D 0 - I - 0x00EDFC 03:8DEC: B1        .byte con_se_cb_B1, $04   ; 
- D 0 - I - 0x00EDFE 03:8DEE: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EDFF 03:8DEF: B6        .byte con_se_cb_B6_stop   ; 



off_8DF0_16_ch_03:
- D 0 - I - 0x00EE00 03:8DF0: B8        .byte con_se_cb_B8   ; 
- D 0 - I - 0x00EE01 03:8DF1: A7        .byte con_se_cb_A7, $0C   ; 
- D 0 - I - 0x00EE03 03:8DF3: A9        .byte con_se_cb_A9, $01   ; 
- D 0 - I - 0x00EE05 03:8DF5: A8        .byte con_se_cb_A8, $17, $04   ; 
- D 0 - I - 0x00EE08 03:8DF8: 02        .byte $02   ; 
- D 0 - I - 0x00EE09 03:8DF9: A7        .byte con_se_cb_A7, $00   ; 
- D 0 - I - 0x00EE0B 03:8DFB: 02        .byte $02   ; 
- D 0 - I - 0x00EE0C 03:8DFC: A7        .byte con_se_cb_A7, $0C   ; 
- D 0 - I - 0x00EE0E 03:8DFE: A8        .byte con_se_cb_A8, $FB, $01   ; 
- D 0 - I - 0x00EE11 03:8E01: A3        .byte con_se_cb_A3, $03   ; 
- D 0 - I - 0x00EE13 03:8E03: 01        .byte $01   ; 
- D 0 - I - 0x00EE14 03:8E04: AC        .byte con_se_cb_AC, $32   ; 
- D 0 - I - 0x00EE16 03:8E06: B2        .byte con_se_cb_B2   ; 
- D 0 - I - 0x00EE17 03:8E07: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EE18 03:8E08: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8E09_17_open_door:
; con_sfx_open_door
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EE19 03:8E09: 81        .byte %10000001   ; 
- D 0 - I - 0x00EE1A 03:8E0A: 7B 8F     .word off_8F7B_extra_data_2

- D 0 - I - 0x00EE1C 03:8E0C: 0E 8E     .word off_8E0E_17_ch_00



off_8E0E_17_ch_00:
- D 0 - I - 0x00EE1E 03:8E0E: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EE20 03:8E10: A8        .byte con_se_cb_A8, $00, $00   ; 
- D 0 - I - 0x00EE23 03:8E13: A3        .byte con_se_cb_A3, $0F   ; 
- D 0 - I - 0x00EE25 03:8E15: 02        .byte $02   ; 
- D 0 - I - 0x00EE26 03:8E16: AC        .byte con_se_cb_AC, $01   ; 
- D 0 - I - 0x00EE28 03:8E18: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EE29 03:8E19: A5        .byte con_se_cb_A5_jmp2   ; 
- D 0 - I - 0x00EE2A 03:8E1A: 92 8C     .word loc_A5_8C92



_off026_sfx_8E1C_18_return:
; con_sfx_return
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EE2C 03:8E1C: 8C        .byte %10001100   ; 
- - - - - - 0x00EE2D 03:8E1D: 7B 8F     .word off_8F7B_extra_data_2

- D 0 - I - 0x00EE2F 03:8E1F: 23 8E     .word off_8E23_18_ch_02
- D 0 - I - 0x00EE31 03:8E21: 29 8E     .word off_8E29_18_ch_03



off_8E23_18_ch_02:
- D 0 - I - 0x00EE33 03:8E23: A8        .byte con_se_cb_A8, $91, $00   ; 
- D 0 - I - 0x00EE36 03:8E26: A5        .byte con_se_cb_A5_jmp2   ; 
- D 0 - I - 0x00EE37 03:8E27: 2C 8E     .word loc_A5_8E2C



off_8E29_18_ch_03:
- D 0 - I - 0x00EE39 03:8E29: A8        .byte con_se_cb_A8, $6B, $00   ; 
loc_A5_8E2C:
- D 0 - I - 0x00EE3C 03:8E2C: B8        .byte con_se_cb_B8   ; 
- D 0 - I - 0x00EE3D 03:8E2D: A9        .byte con_se_cb_A9, $02   ; 
- D 0 - I - 0x00EE3F 03:8E2F: A3        .byte con_se_cb_A3, $0F   ; 
- D 0 - I - 0x00EE41 03:8E31: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EE43 03:8E33: 03        .byte $03   ; 
- D 0 - I - 0x00EE44 03:8E34: AC        .byte con_se_cb_AC, $0C   ; 
- D 0 - I - 0x00EE46 03:8E36: A7        .byte con_se_cb_A7, $02   ; 
- D 0 - I - 0x00EE48 03:8E38: 01        .byte $01   ; 
- D 0 - I - 0x00EE49 03:8E39: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EE4A 03:8E3A: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8E3B_19_game_pause:
; con_sfx_game_pause
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EE4B 03:8E3B: 8C        .byte %10001100   ; 
- D 0 - I - 0x00EE4C 03:8E3C: 7B 8F     .word off_8F7B_extra_data_2

- D 0 - I - 0x00EE4E 03:8E3E: 42 8E     .word off_8E42_19_ch_02
- D 0 - I - 0x00EE50 03:8E40: 50 8E     .word off_8E50_19_ch_03



off_8E42_19_ch_02:
- D 0 - I - 0x00EE52 03:8E42: A8        .byte con_se_cb_A8, $F4, $01   ; 
loc_A5_8E45:
- D 0 - I - 0x00EE55 03:8E45: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EE57 03:8E47: A9        .byte con_se_cb_A9, $02   ; 
- D 0 - I - 0x00EE59 03:8E49: B7        .byte con_se_cb_B7   ; 
- D 0 - I - 0x00EE5A 03:8E4A: AA        .byte con_se_cb_AA, $AB   ; 
- D 0 - I - 0x00EE5C 03:8E4C: 2E        .byte $2E   ; 
- D 0 - I - 0x00EE5D 03:8E4D: AA        .byte con_se_cb_AA, $08   ; 
- D 0 - I - 0x00EE5F 03:8E4F: B6        .byte con_se_cb_B6_stop   ; 



off_8E50_19_ch_03:
- D 0 - I - 0x00EE60 03:8E50: A8        .byte con_se_cb_A8, $CD, $07   ; 
- D 0 - I - 0x00EE63 03:8E53: A5        .byte con_se_cb_A5_jmp2   ; 
- D 0 - I - 0x00EE64 03:8E54: 45 8E     .word loc_A5_8E45



_off026_sfx_8E56_1A_option_selected:
; con_sfx_option_selected
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EE66 03:8E56: 8C        .byte %10001100   ; 
- D 0 - I - 0x00EE67 03:8E57: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00EE69 03:8E59: 5D 8E     .word off_8E5D_1A_ch_02
- D 0 - I - 0x00EE6B 03:8E5B: 66 8E     .word off_8E66_1A_ch_03



off_8E5D_1A_ch_02:
- D 0 - I - 0x00EE6D 03:8E5D: A8        .byte con_se_cb_A8, $D4, $00   ; 
- D 0 - I - 0x00EE70 03:8E60: A7        .byte con_se_cb_A7, $00   ; 
- D 0 - I - 0x00EE72 03:8E62: 01        .byte $01   ; 
- D 0 - I - 0x00EE73 03:8E63: A5        .byte con_se_cb_A5_jmp2   ; 
- D 0 - I - 0x00EE74 03:8E64: 69 8E     .word loc_A5_8E69



off_8E66_1A_ch_03:
- D 0 - I - 0x00EE76 03:8E66: A8        .byte con_se_cb_A8, $D6, $00   ; 
loc_A5_8E69:
- D 0 - I - 0x00EE79 03:8E69: A9        .byte con_se_cb_A9, $02   ; 
- D 0 - I - 0x00EE7B 03:8E6B: B7        .byte con_se_cb_B7   ; 
- D 0 - I - 0x00EE7C 03:8E6C: A7        .byte con_se_cb_A7, $07   ; 
- D 0 - I - 0x00EE7E 03:8E6E: 04        .byte $04   ; 
- D 0 - I - 0x00EE7F 03:8E6F: AC        .byte con_se_cb_AC, $48   ; 
- D 0 - I - 0x00EE81 03:8E71: 04        .byte $04   ; 
- D 0 - I - 0x00EE82 03:8E72: B1        .byte con_se_cb_B1, $4A   ; 
- D 0 - I - 0x00EE84 03:8E74: 04        .byte $04   ; 
- D 0 - I - 0x00EE85 03:8E75: B1        .byte con_se_cb_B1, $2C   ; 
- D 0 - I - 0x00EE87 03:8E77: 04        .byte $04   ; 
- D 0 - I - 0x00EE88 03:8E78: AC        .byte con_se_cb_AC, $2C   ; 
- D 0 - I - 0x00EE8A 03:8E7A: 18        .byte $18   ; 
- D 0 - I - 0x00EE8B 03:8E7B: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8E7C_1B_explosion:
; con_sfx_explosion
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EE8C 03:8E7C: 81        .byte %10000001   ; 
- D 0 - I - 0x00EE8D 03:8E7D: 7B 8F     .word off_8F7B_extra_data_2

- D 0 - I - 0x00EE8F 03:8E7F: 81 8E     .word off_8E81_1B_ch_00



off_8E81_1B_ch_00:
- D 0 - I - 0x00EE91 03:8E81: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EE93 03:8E83: A8        .byte con_se_cb_A8, $09, $00   ; 
- D 0 - I - 0x00EE96 03:8E86: A3        .byte con_se_cb_A3, $05   ; 
- D 0 - I - 0x00EE98 03:8E88: 02        .byte $02   ; 
- D 0 - I - 0x00EE99 03:8E89: AC        .byte con_se_cb_AC, $02   ; 
- D 0 - I - 0x00EE9B 03:8E8B: 02        .byte $02   ; 
- D 0 - I - 0x00EE9C 03:8E8C: B1        .byte con_se_cb_B1, $01   ; 
- D 0 - I - 0x00EE9E 03:8E8E: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EE9F 03:8E8F: A8        .byte con_se_cb_A8, $0D, $00   ; 
- D 0 - I - 0x00EEA2 03:8E92: A5        .byte con_se_cb_A5_jmp2   ; 
- D 0 - I - 0x00EEA3 03:8E93: F6 8B     .word loc_A5_8BF6



_off026_sfx_8E95_2C_resque:
; con_sfx_resque
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EEA5 03:8E95: 88        .byte %10001000   ; 
- D 0 - I - 0x00EEA6 03:8E96: 7B 8F     .word off_8F7B_extra_data_2

- D 0 - I - 0x00EEA8 03:8E98: 9A 8E     .word off_8E9A_2C_ch_03



off_8E9A_2C_ch_03:
- D 0 - I - 0x00EEAA 03:8E9A: B8        .byte con_se_cb_B8   ; 
- D 0 - I - 0x00EEAB 03:8E9B: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EEAD 03:8E9D: A9        .byte con_se_cb_A9, $02   ; 
- D 0 - I - 0x00EEAF 03:8E9F: A8        .byte con_se_cb_A8, $B3, $00   ; 
- D 0 - I - 0x00EEB2 03:8EA2: 03        .byte $03   ; 
- D 0 - I - 0x00EEB3 03:8EA3: B0        .byte con_se_cb_B0, $0C   ; 
- D 0 - I - 0x00EEB5 03:8EA5: 03        .byte $03   ; 
- D 0 - I - 0x00EEB6 03:8EA6: AB        .byte con_se_cb_AB, $0C   ; 
- D 0 - I - 0x00EEB8 03:8EA8: B1        .byte con_se_cb_B1, $1D   ; 
- D 0 - I - 0x00EEBA 03:8EAA: 03        .byte $03   ; 
- D 0 - I - 0x00EEBB 03:8EAB: B0        .byte con_se_cb_B0, $0C   ; 
- D 0 - I - 0x00EEBD 03:8EAD: 03        .byte $03   ; 
- D 0 - I - 0x00EEBE 03:8EAE: AB        .byte con_se_cb_AB, $0C   ; 
- D 0 - I - 0x00EEC0 03:8EB0: AC        .byte con_se_cb_AC, $4B   ; 
- D 0 - I - 0x00EEC2 03:8EB2: 03        .byte $03   ; 
- D 0 - I - 0x00EEC3 03:8EB3: B0        .byte con_se_cb_B0, $0C   ; 
- D 0 - I - 0x00EEC5 03:8EB5: 03        .byte $03   ; 
- D 0 - I - 0x00EEC6 03:8EB6: AB        .byte con_se_cb_AB, $0C   ; 
- D 0 - I - 0x00EEC8 03:8EB8: B1        .byte con_se_cb_B1, $18   ; 
- D 0 - I - 0x00EECA 03:8EBA: 03        .byte $03   ; 
- D 0 - I - 0x00EECB 03:8EBB: B0        .byte con_se_cb_B0, $0C   ; 
- D 0 - I - 0x00EECD 03:8EBD: 03        .byte $03   ; 
- D 0 - I - 0x00EECE 03:8EBE: AB        .byte con_se_cb_AB, $0C   ; 
- D 0 - I - 0x00EED0 03:8EC0: B1        .byte con_se_cb_B1, $2A   ; 
- D 0 - I - 0x00EED2 03:8EC2: 03        .byte $03   ; 
- D 0 - I - 0x00EED3 03:8EC3: B0        .byte con_se_cb_B0, $0C   ; 
- D 0 - I - 0x00EED5 03:8EC5: 03        .byte $03   ; 
- D 0 - I - 0x00EED6 03:8EC6: AB        .byte con_se_cb_AB, $0C   ; 
- D 0 - I - 0x00EED8 03:8EC8: B1        .byte con_se_cb_B1, $19   ; 
- D 0 - I - 0x00EEDA 03:8ECA: 03        .byte $03   ; 
- D 0 - I - 0x00EEDB 03:8ECB: B0        .byte con_se_cb_B0, $0C   ; 
- D 0 - I - 0x00EEDD 03:8ECD: 03        .byte $03   ; 
- D 0 - I - 0x00EEDE 03:8ECE: AB        .byte con_se_cb_AB, $0C   ; 
- D 0 - I - 0x00EEE0 03:8ED0: AC        .byte con_se_cb_AC, $08   ; 
- D 0 - I - 0x00EEE2 03:8ED2: 0A        .byte $0A   ; 
- D 0 - I - 0x00EEE3 03:8ED3: B1        .byte con_se_cb_B1, $02   ; 
- D 0 - I - 0x00EEE5 03:8ED5: 03        .byte $03   ; 
- D 0 - I - 0x00EEE6 03:8ED6: A3        .byte con_se_cb_A3, $02   ; 
- D 0 - I - 0x00EEE8 03:8ED8: AC        .byte con_se_cb_AC, $02   ; 
- D 0 - I - 0x00EEEA 03:8EDA: 03        .byte $03   ; 
- D 0 - I - 0x00EEEB 03:8EDB: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EEEC 03:8EDC: B1        .byte con_se_cb_B1, $02   ; 
- D 0 - I - 0x00EEEE 03:8EDE: 03        .byte $03   ; 
- D 0 - I - 0x00EEEF 03:8EDF: B0        .byte con_se_cb_B0, $0D   ; 
- D 0 - I - 0x00EEF1 03:8EE1: B1        .byte con_se_cb_B1, $02   ; 
- D 0 - I - 0x00EEF3 03:8EE3: 03        .byte $03   ; 
- D 0 - I - 0x00EEF4 03:8EE4: A3        .byte con_se_cb_A3, $02   ; 
- D 0 - I - 0x00EEF6 03:8EE6: AC        .byte con_se_cb_AC, $02   ; 
- D 0 - I - 0x00EEF8 03:8EE8: 03        .byte $03   ; 
- D 0 - I - 0x00EEF9 03:8EE9: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EEFA 03:8EEA: B1        .byte con_se_cb_B1, $02   ; 
- D 0 - I - 0x00EEFC 03:8EEC: 03        .byte $03   ; 
- D 0 - I - 0x00EEFD 03:8EED: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8EEE_29_dive_under_water:
; con_sfx_dive_under_water
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EEFE 03:8EEE: 89        .byte %10001001   ; 
- D 0 - I - 0x00EEFF 03:8EEF: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00EF01 03:8EF1: F5 8E     .word off_8EF5_29_ch_00
- D 0 - I - 0x00EF03 03:8EF3: 0F 8F     .word off_8F0F_29_ch_03



off_8EF5_29_ch_00:
- D 0 - I - 0x00EF05 03:8EF5: A7        .byte con_se_cb_A7, $07   ; 
- D 0 - I - 0x00EF07 03:8EF7: A8        .byte con_se_cb_A8, $04, $00   ; 
- D 0 - I - 0x00EF0A 03:8EFA: A3        .byte con_se_cb_A3, $04   ; 
- D 0 - I - 0x00EF0C 03:8EFC: 01        .byte $01   ; 
- D 0 - I - 0x00EF0D 03:8EFD: B1        .byte con_se_cb_B1, $01   ; 
- D 0 - I - 0x00EF0F 03:8EFF: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EF10 03:8F00: A7        .byte con_se_cb_A7, $00   ; 
- D 0 - I - 0x00EF12 03:8F02: 01        .byte $01   ; 
- D 0 - I - 0x00EF13 03:8F03: A7        .byte con_se_cb_A7, $0A   ; 
- D 0 - I - 0x00EF15 03:8F05: A8        .byte con_se_cb_A8, $02, $00   ; 
- D 0 - I - 0x00EF18 03:8F08: A3        .byte con_se_cb_A3, $03   ; 
- D 0 - I - 0x00EF1A 03:8F0A: 01        .byte $01   ; 
- D 0 - I - 0x00EF1B 03:8F0B: B1        .byte con_se_cb_B1, $01   ; 
- D 0 - I - 0x00EF1D 03:8F0D: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EF1E 03:8F0E: B6        .byte con_se_cb_B6_stop   ; 



off_8F0F_29_ch_03:
- D 0 - I - 0x00EF1F 03:8F0F: B8        .byte con_se_cb_B8   ; 
- D 0 - I - 0x00EF20 03:8F10: A9        .byte con_se_cb_A9, $02   ; 
- D 0 - I - 0x00EF22 03:8F12: A7        .byte con_se_cb_A7, $07   ; 
- D 0 - I - 0x00EF24 03:8F14: A8        .byte con_se_cb_A8, $17, $04   ; 
- D 0 - I - 0x00EF27 03:8F17: 01        .byte $01   ; 
- D 0 - I - 0x00EF28 03:8F18: B1        .byte con_se_cb_B1, $3C   ; 
- D 0 - I - 0x00EF2A 03:8F1A: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EF2C 03:8F1C: A3        .byte con_se_cb_A3, $03   ; 
- D 0 - I - 0x00EF2E 03:8F1E: 01        .byte $01   ; 
- D 0 - I - 0x00EF2F 03:8F1F: B1        .byte con_se_cb_B1, $3C   ; 
- D 0 - I - 0x00EF31 03:8F21: B0        .byte con_se_cb_B0, $03   ; 
- D 0 - I - 0x00EF33 03:8F23: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EF34 03:8F24: A7        .byte con_se_cb_A7, $00   ; 
- D 0 - I - 0x00EF36 03:8F26: 01        .byte $01   ; 
- D 0 - I - 0x00EF37 03:8F27: A8        .byte con_se_cb_A8, $BF, $01   ; 
- D 0 - I - 0x00EF3A 03:8F2A: A7        .byte con_se_cb_A7, $0C   ; 
- D 0 - I - 0x00EF3C 03:8F2C: A3        .byte con_se_cb_A3, $03   ; 
- D 0 - I - 0x00EF3E 03:8F2E: 01        .byte $01   ; 
- D 0 - I - 0x00EF3F 03:8F2F: B1        .byte con_se_cb_B1, $14   ; 
- D 0 - I - 0x00EF41 03:8F31: B2        .byte con_se_cb_B2   ; 
- D 0 - I - 0x00EF42 03:8F32: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EF43 03:8F33: B1        .byte con_se_cb_B1, $28   ; 
- D 0 - I - 0x00EF45 03:8F35: A7        .byte con_se_cb_A7, $01   ; 
- D 0 - I - 0x00EF47 03:8F37: A3        .byte con_se_cb_A3, $03   ; 
- D 0 - I - 0x00EF49 03:8F39: 01        .byte $01   ; 
- D 0 - I - 0x00EF4A 03:8F3A: B1        .byte con_se_cb_B1, $14   ; 
- D 0 - I - 0x00EF4C 03:8F3C: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EF4D 03:8F3D: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8F3E_2B_power_increase:
; con_sfx_power_increase
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EF4E 03:8F3E: 88        .byte %10001000   ; 
- D 0 - I - 0x00EF4F 03:8F3F: 7B 8F     .word off_8F7B_extra_data_2

- D 0 - I - 0x00EF51 03:8F41: 43 8F     .word off_8F43_2B_ch_03



off_8F43_2B_ch_03:
- D 0 - I - 0x00EF53 03:8F43: B8        .byte con_se_cb_B8   ; 
- D 0 - I - 0x00EF54 03:8F44: A9        .byte con_se_cb_A9, $02   ; 
- D 0 - I - 0x00EF56 03:8F46: A7        .byte con_se_cb_A7, $0F   ; 
- D 0 - I - 0x00EF58 03:8F48: A8        .byte con_se_cb_A8, $FF, $03   ; 
- D 0 - I - 0x00EF5B 03:8F4B: AA        .byte con_se_cb_AA, $FA   ; 
- D 0 - I - 0x00EF5D 03:8F4D: 20        .byte $20   ; 
- D 0 - I - 0x00EF5E 03:8F4E: B7        .byte con_se_cb_B7   ; 
- D 0 - I - 0x00EF5F 03:8F4F: AA        .byte con_se_cb_AA, $00   ; 
- D 0 - I - 0x00EF61 03:8F51: A7        .byte con_se_cb_A7, $06   ; 
- D 0 - I - 0x00EF63 03:8F53: A8        .byte con_se_cb_A8, $4A, $00   ; 
- D 0 - I - 0x00EF66 03:8F56: 1C        .byte $1C   ; 
- D 0 - I - 0x00EF67 03:8F57: B6        .byte con_se_cb_B6_stop   ; 



_off026_sfx_8F58_27_ambush:
; con_sfx_ambush
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EF68 03:8F58: 81        .byte %10000001   ; 
- D 0 - I - 0x00EF69 03:8F59: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00EF6B 03:8F5B: 5D 8F     .word off_8F5D_27_ch_00



off_8F5D_27_ch_00:
- D 0 - I - 0x00EF6D 03:8F5D: A7        .byte con_se_cb_A7, $09   ; 
- D 0 - I - 0x00EF6F 03:8F5F: A8        .byte con_se_cb_A8, $0A, $00   ; 
- D 0 - I - 0x00EF72 03:8F62: A3        .byte con_se_cb_A3, $03   ; 
- D 0 - I - 0x00EF74 03:8F64: A3        .byte con_se_cb_A3, $02   ; 
- D 0 - I - 0x00EF76 03:8F66: 05        .byte $05   ; 
- D 0 - I - 0x00EF77 03:8F67: B2        .byte con_se_cb_B2   ; 
- D 0 - I - 0x00EF78 03:8F68: B1        .byte con_se_cb_B1, $02   ; 
- D 0 - I - 0x00EF7A 03:8F6A: 05        .byte $05   ; 
- D 0 - I - 0x00EF7B 03:8F6B: AD        .byte con_se_cb_AD   ; 
- D 0 - I - 0x00EF7C 03:8F6C: AC        .byte con_se_cb_AC, $02   ; 
- D 0 - I - 0x00EF7E 03:8F6E: A4        .byte con_se_cb_A4   ; 
- D 0 - I - 0x00EF7F 03:8F6F: AB        .byte con_se_cb_AB, $02   ; 
- D 0 - I - 0x00EF81 03:8F71: B1        .byte con_se_cb_B1, $03   ; 
- D 0 - I - 0x00EF83 03:8F73: A4        .byte con_se_cb_A4   ; 
- - - - - - 0x00EF84 03:8F74: B6        .byte con_se_cb_B6_stop   ; 



off_8F75_extra_data_1:
; for following IDs:
    ; 01, 02, 03, 04, 06, 07, 09, 0A, 0B, 0D, 0E,
    ; 0F, 10, 13, 14, 15, 16, 1A, 29, 27, 21, 22,
    ; 26, 28, 20, 24, 23, 1D, 1F, 1C, 2A, 1E, 25
- D 0 - I - 0x00EF85 03:8F75: FF        .byte $FF   ; 00 
- D 0 - I - 0x00EF86 03:8F76: FF        .byte $FF   ; 08 
- D 0 - I - 0x00EF87 03:8F77: FF        .byte $FF   ; 10 
- D 0 - I - 0x00EF88 03:8F78: FF        .byte $FF   ; 18 
- D 0 - I - 0x00EF89 03:8F79: FF        .byte $FF   ; 20 
- D 0 - I - 0x00EF8A 03:8F7A: FF        .byte $FF   ; 28 



off_8F7B_extra_data_2:
; for following IDs:
    ; 05, 08, 0C, 11, 12, 17, 18, 19, 1B, 2C, 2B
- D 0 - I - 0x00EF8B 03:8F7B: C9        .byte $C9   ; 00 
- D 0 - I - 0x00EF8C 03:8F7C: 10        .byte $10   ; 08 
- D 0 - I - 0x00EF8D 03:8F7D: C3        .byte $C3   ; 10 
- D 0 - I - 0x00EF8E 03:8F7E: BF        .byte $BF   ; 18 
- D 0 - I - 0x00EF8F 03:8F7F: FD        .byte $FD   ; 20 
- D 0 - I - 0x00EF90 03:8F80: 7F        .byte $7F   ; 28 



_off026_music_8F81_21_ost_captain:
; con_music_ost_captain
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00EF91 03:8F81: 0F        .byte %00001111   ;  
- D 0 - I - 0x00EF92 03:8F82: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00EF94 03:8F84: 8C 8F     .word off_8F8C_21_ch_00
- D 0 - I - 0x00EF96 03:8F86: F8 8F     .word off_8FF8_21_ch_01
- D 0 - I - 0x00EF98 03:8F88: 97 90     .word off_9097_21_ch_02
- D 0 - I - 0x00EF9A 03:8F8A: 32 91     .word off_9132_21_ch_03



off_8F8C_21_ch_00:
- D 0 - I - 0x00EF9C 03:8F8C: BB        .byte con_se_cb_BB, $AA, $AA   ; 
- D 0 - I - 0x00EF9F 03:8F8F: 9A        .byte con_se_cb_9A, $03   ; 
- D 0 - I - 0x00EFA1 03:8F91: BC        .byte con_se_cb_BC, $04   ; 
- D 0 - I - 0x00EFA3 03:8F93: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00EFA4 03:8F94: 01        .byte $01   ; 
- D 0 - I - 0x00EFA5 03:8F95: 8D        .byte $8D   ; 
- D 0 - I - 0x00EFA6 03:8F96: D7        .byte con_se_cb_D7   ; 
- D 0 - I - 0x00EFA7 03:8F97: 03        .byte $03   ; 
- D 0 - I - 0x00EFA8 03:8F98: 81        .byte $81   ; 
- D 0 - I - 0x00EFA9 03:8F99: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00EFAB 03:8F9B: DA        .byte con_se_cb_DA   ; 
- D 0 - I - 0x00EFAC 03:8F9C: 01        .byte $01   ; 
- D 0 - I - 0x00EFAD 03:8F9D: 8A        .byte $8A   ; 
- D 0 - I - 0x00EFAE 03:8F9E: D6        .byte con_se_cb_D6   ; 
- D 0 - I - 0x00EFAF 03:8F9F: 03        .byte $03   ; 
- D 0 - I - 0x00EFB0 03:8FA0: 86        .byte $86   ; 
- D 0 - I - 0x00EFB1 03:8FA1: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00EFB2 03:8FA2: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00EFB3 03:8FA3: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00EFB4 03:8FA4: D9 9F     .word sub_BE_9FD9
- D 0 - I - 0x00EFB6 03:8FA6: 02        .byte $02   ; 
- D 0 - I - 0x00EFB7 03:8FA7: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00EFB8 03:8FA8: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00EFB9 03:8FA9: 93 95     .word sub_BE_9593
- D 0 - I - 0x00EFBB 03:8FAB: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00EFBD 03:8FAD: 06        .byte $06   ; 
- D 0 - I - 0x00EFBE 03:8FAE: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00EFBF 03:8FAF: 8D        .byte $8D   ; 
- D 0 - I - 0x00EFC0 03:8FB0: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00EFC1 03:8FB1: D0 9F     .word sub_BE_9FD0
- D 0 - I - 0x00EFC3 03:8FB3: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00EFC4 03:8FB4: D0 9F     .word sub_BE_9FD0
- D 0 - I - 0x00EFC6 03:8FB6: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00EFC8 03:8FB8: 06        .byte $06   ; 
- D 0 - I - 0x00EFC9 03:8FB9: 8D        .byte $8D   ; 
loc_A1_8FBA:
- D 0 - I - 0x00EFCA 03:8FBA: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00EFCC 03:8FBC: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00EFCD 03:8FBD: E6 8F     .word sub_BE_8FE6
- D 0 - I - 0x00EFCF 03:8FBF: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00EFD0 03:8FC0: D9 99     .word sub_BE_99D9
- D 0 - I - 0x00EFD2 03:8FC2: 06        .byte $06   ; 
- D 0 - I - 0x00EFD3 03:8FC3: 80        .byte $80   ; 
- D 0 - I - 0x00EFD4 03:8FC4: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00EFD5 03:8FC5: D9 99     .word sub_BE_99D9
- D 0 - I - 0x00EFD7 03:8FC7: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00EFD8 03:8FC8: D9 99     .word sub_BE_99D9
- D 0 - I - 0x00EFDA 03:8FCA: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00EFDB 03:8FCB: D0 9F     .word sub_BE_9FD0
- D 0 - I - 0x00EFDD 03:8FCD: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00EFDE 03:8FCE: D0 9F     .word sub_BE_9FD0
- D 0 - I - 0x00EFE0 03:8FD0: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00EFE1 03:8FD1: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00EFE2 03:8FD2: E6 8F     .word sub_BE_8FE6
- D 0 - I - 0x00EFE4 03:8FD4: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00EFE6 03:8FD6: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00EFE7 03:8FD7: D9 99     .word sub_BE_99D9
- D 0 - I - 0x00EFE9 03:8FD9: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00EFEA 03:8FDA: EC 9F     .word sub_BE_9FEC
- D 0 - I - 0x00EFEC 03:8FDC: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00EFED 03:8FDD: BC        .byte con_se_cb_BC, $04   ; 
- D 0 - I - 0x00EFEF 03:8FDF: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00EFF0 03:8FE0: D0 9F     .word sub_BE_9FD0
- D 0 - I - 0x00EFF2 03:8FE2: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00EFF3 03:8FE3: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00EFF4 03:8FE4: BA 8F     .word loc_A1_8FBA



sub_BE_8FE6:
- D 0 - I - 0x00EFF6 03:8FE6: BC        .byte con_se_cb_BC, $07   ; 
- D 0 - I - 0x00EFF8 03:8FE8: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00EFF9 03:8FE9: EC 9F     .word sub_BE_9FEC
- D 0 - I - 0x00EFFB 03:8FEB: 06        .byte $06   ; 
- D 0 - I - 0x00EFFC 03:8FEC: 80        .byte $80   ; 
- D 0 - I - 0x00EFFD 03:8FED: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00EFFE 03:8FEE: CD 99     .word sub_BE_99CD
- D 0 - I - 0x00F000 03:8FF0: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F001 03:8FF1: D9 99     .word sub_BE_99D9
- D 0 - I - 0x00F003 03:8FF3: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F004 03:8FF4: EC 9F     .word sub_BE_9FEC
- D 0 - I - 0x00F006 03:8FF6: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F007 03:8FF7: BF        .byte con_se_cb_BF_rts   ; 



off_8FF8_21_ch_01:
- D 0 - I - 0x00F008 03:8FF8: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00F009 03:8FF9: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F00B 03:8FFB: 99        .byte con_se_cb_99, $7F   ; 
- D 0 - I - 0x00F00D 03:8FFD: 04        .byte $04   ; 
- D 0 - I - 0x00F00E 03:8FFE: C5        .byte con_se_cb_C5, $11   ; 
- D 0 - I - 0x00F010 03:9000: 7F 90     .word sub_C5_907F
- D 0 - I - 0x00F012 03:9002: C5        .byte con_se_cb_C5, $15   ; 
- D 0 - I - 0x00F014 03:9004: 7F 90     .word sub_C5_907F
- D 0 - I - 0x00F016 03:9006: 93        .byte con_se_cb_93, $0C   ; 
- D 0 - I - 0x00F018 03:9008: 12        .byte $12   ; 
- D 0 - I - 0x00F019 03:9009: 80        .byte $80   ; 
- D 0 - I - 0x00F01A 03:900A: 0C        .byte $0C   ; 
- D 0 - I - 0x00F01B 03:900B: 8E        .byte $8E   ; 
- D 0 - I - 0x00F01C 03:900C: 06        .byte $06   ; 
- D 0 - I - 0x00F01D 03:900D: 8C        .byte $8C   ; 
- D 0 - I - 0x00F01E 03:900E: 87        .byte $87   ; 
- D 0 - I - 0x00F01F 03:900F: 80        .byte $80   ; 
loc_A1_9010:
- D 0 - I - 0x00F020 03:9010: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00F022 03:9012: 99        .byte con_se_cb_99, $05   ; 
- D 0 - I - 0x00F024 03:9014: C5        .byte con_se_cb_C5, $11   ; 
- D 0 - I - 0x00F026 03:9016: 8E 90     .word sub_C5_908E
- D 0 - I - 0x00F028 03:9018: 12        .byte $12   ; 
- D 0 - I - 0x00F029 03:9019: 85        .byte $85   ; 
- D 0 - I - 0x00F02A 03:901A: 0C        .byte $0C   ; 
- D 0 - I - 0x00F02B 03:901B: 80        .byte $80   ; 
- D 0 - I - 0x00F02C 03:901C: 06        .byte $06   ; 
- D 0 - I - 0x00F02D 03:901D: 85        .byte $85   ; 
- D 0 - I - 0x00F02E 03:901E: 87        .byte $87   ; 
- D 0 - I - 0x00F02F 03:901F: 85        .byte $85   ; 
- D 0 - I - 0x00F030 03:9020: 12        .byte $12   ; 
- D 0 - I - 0x00F031 03:9021: 84        .byte $84   ; 
- D 0 - I - 0x00F032 03:9022: 0C        .byte $0C   ; 
- D 0 - I - 0x00F033 03:9023: 8B        .byte $8B   ; 
- D 0 - I - 0x00F034 03:9024: 06        .byte $06   ; 
- D 0 - I - 0x00F035 03:9025: 84        .byte $84   ; 
- D 0 - I - 0x00F036 03:9026: 86        .byte $86   ; 
- D 0 - I - 0x00F037 03:9027: 88        .byte $88   ; 
- D 0 - I - 0x00F038 03:9028: 12        .byte $12   ; 
- D 0 - I - 0x00F039 03:9029: 89        .byte $89   ; 
- D 0 - I - 0x00F03A 03:902A: 0C        .byte $0C   ; 
- D 0 - I - 0x00F03B 03:902B: 84        .byte $84   ; 
- D 0 - I - 0x00F03C 03:902C: 06        .byte $06   ; 
- D 0 - I - 0x00F03D 03:902D: 89        .byte $89   ; 
- D 0 - I - 0x00F03E 03:902E: 84        .byte $84   ; 
- D 0 - I - 0x00F03F 03:902F: 80        .byte $80   ; 
- D 0 - I - 0x00F040 03:9030: 92        .byte con_se_cb_92   ; 
- D 0 - I - 0x00F041 03:9031: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00F043 03:9033: 12        .byte $12   ; 
- D 0 - I - 0x00F044 03:9034: 85        .byte $85   ; 
- D 0 - I - 0x00F045 03:9035: 0C        .byte $0C   ; 
- D 0 - I - 0x00F046 03:9036: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00F047 03:9037: 80        .byte $80   ; 
- D 0 - I - 0x00F048 03:9038: 06        .byte $06   ; 
- D 0 - I - 0x00F049 03:9039: 89        .byte $89   ; 
- D 0 - I - 0x00F04A 03:903A: 87        .byte $87   ; 
- D 0 - I - 0x00F04B 03:903B: 80        .byte $80   ; 
- D 0 - I - 0x00F04C 03:903C: 93        .byte con_se_cb_93, $07   ; 
- D 0 - I - 0x00F04E 03:903E: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F04F 03:903F: 12        .byte $12   ; 
- D 0 - I - 0x00F050 03:9040: 87        .byte $87   ; 
- D 0 - I - 0x00F051 03:9041: 0C        .byte $0C   ; 
- D 0 - I - 0x00F052 03:9042: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00F053 03:9043: 82        .byte $82   ; 
- D 0 - I - 0x00F054 03:9044: 99        .byte con_se_cb_99, $7F   ; 
- D 0 - I - 0x00F056 03:9046: 8C        .byte $8C   ; 
- D 0 - I - 0x00F057 03:9047: 8B        .byte $8B   ; 
- D 0 - I - 0x00F058 03:9048: 87        .byte $87   ; 
- D 0 - I - 0x00F059 03:9049: 06        .byte $06   ; 
- D 0 - I - 0x00F05A 03:904A: 82        .byte $82   ; 
- D 0 - I - 0x00F05B 03:904B: 89        .byte $89   ; 
- D 0 - I - 0x00F05C 03:904C: 87        .byte $87   ; 
- D 0 - I - 0x00F05D 03:904D: 82        .byte $82   ; 
- D 0 - I - 0x00F05E 03:904E: 92        .byte con_se_cb_92   ; 
- D 0 - I - 0x00F05F 03:904F: 87        .byte $87   ; 
- D 0 - I - 0x00F060 03:9050: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F061 03:9051: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F062 03:9052: 86 90     .word sub_BE_9086
- D 0 - I - 0x00F064 03:9054: 12        .byte $12   ; 
- D 0 - I - 0x00F065 03:9055: 82        .byte $82   ; 
- D 0 - I - 0x00F066 03:9056: 0C        .byte $0C   ; 
- D 0 - I - 0x00F067 03:9057: 89        .byte $89   ; 
- D 0 - I - 0x00F068 03:9058: 99        .byte con_se_cb_99, $7F   ; 
- D 0 - I - 0x00F06A 03:905A: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00F06B 03:905B: 84        .byte $84   ; 
- D 0 - I - 0x00F06C 03:905C: 85        .byte $85   ; 
- D 0 - I - 0x00F06D 03:905D: 84        .byte $84   ; 
- D 0 - I - 0x00F06E 03:905E: 06        .byte $06   ; 
- D 0 - I - 0x00F06F 03:905F: 80        .byte $80   ; 
- D 0 - I - 0x00F070 03:9060: 92        .byte con_se_cb_92   ; 
- D 0 - I - 0x00F071 03:9061: 89        .byte $89   ; 
- D 0 - I - 0x00F072 03:9062: 85        .byte $85   ; 
- D 0 - I - 0x00F073 03:9063: 82        .byte $82   ; 
- D 0 - I - 0x00F074 03:9064: 80        .byte $80   ; 
- D 0 - I - 0x00F075 03:9065: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F076 03:9066: 86 90     .word sub_BE_9086
- D 0 - I - 0x00F078 03:9068: 12        .byte $12   ; 
- D 0 - I - 0x00F079 03:9069: 85        .byte $85   ; 
- D 0 - I - 0x00F07A 03:906A: 0C        .byte $0C   ; 
- D 0 - I - 0x00F07B 03:906B: 8C        .byte $8C   ; 
- D 0 - I - 0x00F07C 03:906C: 06        .byte $06   ; 
- D 0 - I - 0x00F07D 03:906D: 93        .byte con_se_cb_93, $16   ; 
- D 0 - I - 0x00F07F 03:906F: 8C        .byte $8C   ; 
- D 0 - I - 0x00F080 03:9070: 87        .byte $87   ; 
- D 0 - I - 0x00F081 03:9071: 80        .byte $80   ; 
- D 0 - I - 0x00F082 03:9072: 82        .byte $82   ; 
- D 0 - I - 0x00F083 03:9073: 8E        .byte $8E   ; 
- D 0 - I - 0x00F084 03:9074: 82        .byte $82   ; 
- D 0 - I - 0x00F085 03:9075: 93        .byte con_se_cb_93, $1A   ; 
- D 0 - I - 0x00F087 03:9077: 80        .byte $80   ; 
- D 0 - I - 0x00F088 03:9078: 8C        .byte $8C   ; 
- D 0 - I - 0x00F089 03:9079: 80        .byte $80   ; 
- D 0 - I - 0x00F08A 03:907A: 82        .byte $82   ; 
- D 0 - I - 0x00F08B 03:907B: 8E        .byte $8E   ; 
- D 0 - I - 0x00F08C 03:907C: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F08D 03:907D: 10 90     .word loc_A1_9010



sub_C5_907F:
- D 0 - I - 0x00F08F 03:907F: 80        .byte $80   ; 
- D 0 - I - 0x00F090 03:9080: 8C        .byte $8C   ; 
- D 0 - I - 0x00F091 03:9081: 80        .byte $80   ; 
- D 0 - I - 0x00F092 03:9082: 82        .byte $82   ; 
- D 0 - I - 0x00F093 03:9083: 8E        .byte $8E   ; 
- D 0 - I - 0x00F094 03:9084: 82        .byte $82   ; 
- D 0 - I - 0x00F095 03:9085: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9086:
- D 0 - I - 0x00F096 03:9086: 99        .byte con_se_cb_99, $05   ; 
- D 0 - I - 0x00F098 03:9088: C5        .byte con_se_cb_C5, $0F   ; 
- D 0 - I - 0x00F09A 03:908A: 8E 90     .word sub_C5_908E
- D 0 - I - 0x00F09C 03:908C: 93        .byte con_se_cb_93, $11   ; 
sub_C5_908E:
- D 0 - I - 0x00F09E 03:908E: 12        .byte $12   ; 
- D 0 - I - 0x00F09F 03:908F: 80        .byte $80   ; 
- D 0 - I - 0x00F0A0 03:9090: 0C        .byte $0C   ; 
- D 0 - I - 0x00F0A1 03:9091: 87        .byte $87   ; 
- D 0 - I - 0x00F0A2 03:9092: 06        .byte $06   ; 
- D 0 - I - 0x00F0A3 03:9093: 8E        .byte $8E   ; 
- D 0 - I - 0x00F0A4 03:9094: 8C        .byte $8C   ; 
- D 0 - I - 0x00F0A5 03:9095: 87        .byte $87   ; 
- D 0 - I - 0x00F0A6 03:9096: BF        .byte con_se_cb_BF_rts   ; 



off_9097_21_ch_02:
- D 0 - I - 0x00F0A7 03:9097: D9        .byte con_se_cb_D9   ; 
- D 0 - I - 0x00F0A8 03:9098: 93        .byte con_se_cb_93, $1F   ; 
- D 0 - I - 0x00F0AA 03:909A: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00F0AB 03:909B: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F0AD 03:909D: 9C        .byte con_se_cb_9C, $07   ; 
- D 0 - I - 0x00F0AF 03:909F: 04        .byte $04   ; 
- D 0 - I - 0x00F0B0 03:90A0: 83        .byte $83   ; 
- D 0 - I - 0x00F0B1 03:90A1: 80        .byte $80   ; 
- D 0 - I - 0x00F0B2 03:90A2: 83        .byte $83   ; 
- D 0 - I - 0x00F0B3 03:90A3: 85        .byte $85   ; 
- D 0 - I - 0x00F0B4 03:90A4: 82        .byte $82   ; 
- D 0 - I - 0x00F0B5 03:90A5: 85        .byte $85   ; 
- D 0 - I - 0x00F0B6 03:90A6: 87        .byte $87   ; 
- D 0 - I - 0x00F0B7 03:90A7: 84        .byte $84   ; 
- D 0 - I - 0x00F0B8 03:90A8: 87        .byte $87   ; 
- D 0 - I - 0x00F0B9 03:90A9: 89        .byte $89   ; 
- D 0 - I - 0x00F0BA 03:90AA: 86        .byte $86   ; 
- D 0 - I - 0x00F0BB 03:90AB: 89        .byte $89   ; 
- D 0 - I - 0x00F0BC 03:90AC: 8A        .byte $8A   ; 
- D 0 - I - 0x00F0BD 03:90AD: 87        .byte $87   ; 
- D 0 - I - 0x00F0BE 03:90AE: 8A        .byte $8A   ; 
- D 0 - I - 0x00F0BF 03:90AF: C5        .byte con_se_cb_C5, $29   ; 
- D 0 - I - 0x00F0C1 03:90B1: 30 9F     .word sub_C5_9F30
- D 0 - I - 0x00F0C3 03:90B3: D7        .byte con_se_cb_D7   ; 
loc_A1_90B4:
- D 0 - I - 0x00F0C4 03:90B4: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F0C5 03:90B5: FD 90     .word sub_BE_90FD
- D 0 - I - 0x00F0C7 03:90B7: 0C        .byte $0C   ; 
- D 0 - I - 0x00F0C8 03:90B8: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00F0C9 03:90B9: 87        .byte $87   ; 
- D 0 - I - 0x00F0CA 03:90BA: C2        .byte con_se_cb_C2   ; 
- D 0 - I - 0x00F0CB 03:90BB: BC        .byte con_se_cb_BC, $07   ; 
- D 0 - I - 0x00F0CD 03:90BD: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F0CE 03:90BE: 81 9F     .word sub_BE_9F81
- D 0 - I - 0x00F0D0 03:90C0: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F0D1 03:90C1: 12        .byte $12   ; 
- D 0 - I - 0x00F0D2 03:90C2: 87        .byte $87   ; 
- D 0 - I - 0x00F0D3 03:90C3: C3        .byte con_se_cb_C3   ; 
- D 0 - I - 0x00F0D4 03:90C4: 06        .byte $06   ; 
- D 0 - I - 0x00F0D5 03:90C5: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F0D6 03:90C6: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F0D7 03:90C7: FD 90     .word sub_BE_90FD
- D 0 - I - 0x00F0D9 03:90C9: 12        .byte $12   ; 
- D 0 - I - 0x00F0DA 03:90CA: 87        .byte $87   ; 
- D 0 - I - 0x00F0DB 03:90CB: 06        .byte $06   ; 
- D 0 - I - 0x00F0DC 03:90CC: 87        .byte $87   ; 
- D 0 - I - 0x00F0DD 03:90CD: 0C        .byte $0C   ; 
- D 0 - I - 0x00F0DE 03:90CE: 88        .byte $88   ; 
- D 0 - I - 0x00F0DF 03:90CF: 06        .byte $06   ; 
- D 0 - I - 0x00F0E0 03:90D0: 8A        .byte $8A   ; 
- D 0 - I - 0x00F0E1 03:90D1: 12        .byte $12   ; 
- D 0 - I - 0x00F0E2 03:90D2: 8C        .byte $8C   ; 
- D 0 - I - 0x00F0E3 03:90D3: 06        .byte $06   ; 
- D 0 - I - 0x00F0E4 03:90D4: 8C        .byte $8C   ; 
- D 0 - I - 0x00F0E5 03:90D5: 8C        .byte $8C   ; 
- D 0 - I - 0x00F0E6 03:90D6: 8C        .byte $8C   ; 
- D 0 - I - 0x00F0E7 03:90D7: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F0E8 03:90D8: 29 91     .word sub_BE_9129
- D 0 - I - 0x00F0EA 03:90DA: 87        .byte $87   ; 
- D 0 - I - 0x00F0EB 03:90DB: 0C        .byte $0C   ; 
- D 0 - I - 0x00F0EC 03:90DC: 80        .byte $80   ; 
- D 0 - I - 0x00F0ED 03:90DD: 12        .byte $12   ; 
- D 0 - I - 0x00F0EE 03:90DE: 87        .byte $87   ; 
- D 0 - I - 0x00F0EF 03:90DF: C5        .byte con_se_cb_C5, $18   ; 
- D 0 - I - 0x00F0F1 03:90E1: 6F 9C     .word sub_C5_9C6F
- D 0 - I - 0x00F0F3 03:90E3: 06        .byte $06   ; 
- D 0 - I - 0x00F0F4 03:90E4: 89        .byte $89   ; 
- D 0 - I - 0x00F0F5 03:90E5: 8A        .byte $8A   ; 
- D 0 - I - 0x00F0F6 03:90E6: 8C        .byte $8C   ; 
- D 0 - I - 0x00F0F7 03:90E7: C5        .byte con_se_cb_C5, $1A   ; 
- D 0 - I - 0x00F0F9 03:90E9: 29 91     .word sub_C5_9129
- D 0 - I - 0x00F0FB 03:90EB: 8A        .byte $8A   ; 
- D 0 - I - 0x00F0FC 03:90EC: 0C        .byte $0C   ; 
- D 0 - I - 0x00F0FD 03:90ED: 8F        .byte $8F   ; 
- D 0 - I - 0x00F0FE 03:90EE: 1E        .byte $1E   ; 
- D 0 - I - 0x00F0FF 03:90EF: 8C        .byte $8C   ; 
- D 0 - I - 0x00F100 03:90F0: 06        .byte $06   ; 
- D 0 - I - 0x00F101 03:90F1: 8C        .byte $8C   ; 
- D 0 - I - 0x00F102 03:90F2: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00F103 03:90F3: 81        .byte $81   ; 
- D 0 - I - 0x00F104 03:90F4: 83        .byte $83   ; 
- D 0 - I - 0x00F105 03:90F5: 12        .byte $12   ; 
- D 0 - I - 0x00F106 03:90F6: 85        .byte $85   ; 
- D 0 - I - 0x00F107 03:90F7: 84        .byte $84   ; 
- D 0 - I - 0x00F108 03:90F8: 0C        .byte $0C   ; 
- D 0 - I - 0x00F109 03:90F9: 86        .byte $86   ; 
- D 0 - I - 0x00F10A 03:90FA: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F10B 03:90FB: B4 90     .word loc_A1_90B4



sub_BE_90FD:
- D 0 - I - 0x00F10D 03:90FD: 93        .byte con_se_cb_93, $18   ; 
- D 0 - I - 0x00F10F 03:90FF: 13        .byte $13   ; 
- D 0 - I - 0x00F110 03:9100: 80        .byte $80   ; 
- D 0 - I - 0x00F111 03:9101: C5        .byte con_se_cb_C5, $1A   ; 
- D 0 - I - 0x00F113 03:9103: 4B 9F     .word sub_C5_9F4B
- D 0 - I - 0x00F115 03:9105: 05        .byte $05   ; 
- D 0 - I - 0x00F116 03:9106: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F117 03:9107: 06        .byte $06   ; 
- D 0 - I - 0x00F118 03:9108: 87        .byte $87   ; 
- D 0 - I - 0x00F119 03:9109: 82        .byte $82   ; 
- D 0 - I - 0x00F11A 03:910A: 83        .byte $83   ; 
- D 0 - I - 0x00F11B 03:910B: 0C        .byte $0C   ; 
- D 0 - I - 0x00F11C 03:910C: 8A        .byte $8A   ; 
- D 0 - I - 0x00F11D 03:910D: 12        .byte $12   ; 
- D 0 - I - 0x00F11E 03:910E: 85        .byte $85   ; 
- D 0 - I - 0x00F11F 03:910F: 0C        .byte $0C   ; 
- D 0 - I - 0x00F120 03:9110: 88        .byte $88   ; 
- D 0 - I - 0x00F121 03:9111: 06        .byte $06   ; 
- D 0 - I - 0x00F122 03:9112: 87        .byte $87   ; 
- D 0 - I - 0x00F123 03:9113: 0C        .byte $0C   ; 
- D 0 - I - 0x00F124 03:9114: 85        .byte $85   ; 
- D 0 - I - 0x00F125 03:9115: 83        .byte $83   ; 
- D 0 - I - 0x00F126 03:9116: 82        .byte $82   ; 
- D 0 - I - 0x00F127 03:9117: 83        .byte $83   ; 
- D 0 - I - 0x00F128 03:9118: 1E        .byte $1E   ; 
- D 0 - I - 0x00F129 03:9119: 80        .byte $80   ; 
- D 0 - I - 0x00F12A 03:911A: 06        .byte $06   ; 
- D 0 - I - 0x00F12B 03:911B: 80        .byte $80   ; 
- D 0 - I - 0x00F12C 03:911C: 82        .byte $82   ; 
- D 0 - I - 0x00F12D 03:911D: 83        .byte $83   ; 
- D 0 - I - 0x00F12E 03:911E: 1E        .byte $1E   ; 
- D 0 - I - 0x00F12F 03:911F: 82        .byte $82   ; 
- D 0 - I - 0x00F130 03:9120: 06        .byte $06   ; 
- D 0 - I - 0x00F131 03:9121: 82        .byte $82   ; 
- D 0 - I - 0x00F132 03:9122: 83        .byte $83   ; 
- D 0 - I - 0x00F133 03:9123: 85        .byte $85   ; 
- D 0 - I - 0x00F134 03:9124: 0C        .byte $0C   ; 
- D 0 - I - 0x00F135 03:9125: 84        .byte $84   ; 
- D 0 - I - 0x00F136 03:9126: 06        .byte $06   ; 
- D 0 - I - 0x00F137 03:9127: 80        .byte $80   ; 
- D 0 - I - 0x00F138 03:9128: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9129:
sub_C5_9129:
- D 0 - I - 0x00F139 03:9129: 1E        .byte $1E   ; 
- D 0 - I - 0x00F13A 03:912A: 8C        .byte $8C   ; 
- D 0 - I - 0x00F13B 03:912B: 06        .byte $06   ; 
- D 0 - I - 0x00F13C 03:912C: 8A        .byte $8A   ; 
- D 0 - I - 0x00F13D 03:912D: 88        .byte $88   ; 
- D 0 - I - 0x00F13E 03:912E: 8A        .byte $8A   ; 
- D 0 - I - 0x00F13F 03:912F: 12        .byte $12   ; 
- D 0 - I - 0x00F140 03:9130: 8C        .byte $8C   ; 
- D 0 - I - 0x00F141 03:9131: BF        .byte con_se_cb_BF_rts   ; 



off_9132_21_ch_03:
- D 0 - I - 0x00F142 03:9132: D6        .byte con_se_cb_D6   ; 
- D 0 - I - 0x00F143 03:9133: 93        .byte con_se_cb_93, $1B   ; 
- D 0 - I - 0x00F145 03:9135: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00F146 03:9136: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F148 03:9138: 9C        .byte con_se_cb_9C, $07   ; 
- D 0 - I - 0x00F14A 03:913A: 04        .byte $04   ; 
- D 0 - I - 0x00F14B 03:913B: 84        .byte $84   ; 
- D 0 - I - 0x00F14C 03:913C: 80        .byte $80   ; 
- D 0 - I - 0x00F14D 03:913D: 84        .byte $84   ; 
- D 0 - I - 0x00F14E 03:913E: 86        .byte $86   ; 
- D 0 - I - 0x00F14F 03:913F: 82        .byte $82   ; 
- D 0 - I - 0x00F150 03:9140: 86        .byte $86   ; 
- D 0 - I - 0x00F151 03:9141: 88        .byte $88   ; 
- D 0 - I - 0x00F152 03:9142: 84        .byte $84   ; 
- D 0 - I - 0x00F153 03:9143: 88        .byte $88   ; 
- D 0 - I - 0x00F154 03:9144: 8A        .byte $8A   ; 
- D 0 - I - 0x00F155 03:9145: 86        .byte $86   ; 
- D 0 - I - 0x00F156 03:9146: 8A        .byte $8A   ; 
- D 0 - I - 0x00F157 03:9147: 8B        .byte $8B   ; 
- D 0 - I - 0x00F158 03:9148: 87        .byte $87   ; 
- D 0 - I - 0x00F159 03:9149: 8B        .byte $8B   ; 
- D 0 - I - 0x00F15A 03:914A: C5        .byte con_se_cb_C5, $22   ; 
- D 0 - I - 0x00F15C 03:914C: 30 9F     .word sub_C5_9F30
- D 0 - I - 0x00F15E 03:914E: D4        .byte con_se_cb_D4   ; 
loc_A1_914F:
- D 0 - I - 0x00F15F 03:914F: C5        .byte con_se_cb_C5, $11   ; 
- D 0 - I - 0x00F161 03:9151: 9D 91     .word sub_C5_919D
- D 0 - I - 0x00F163 03:9153: 24        .byte $24   ; 
- D 0 - I - 0x00F164 03:9154: 8D        .byte $8D   ; 
- D 0 - I - 0x00F165 03:9155: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F166 03:9156: 9D 91     .word sub_BE_919D
- D 0 - I - 0x00F168 03:9158: 12        .byte $12   ; 
- D 0 - I - 0x00F169 03:9159: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00F16A 03:915A: 81        .byte $81   ; 
- D 0 - I - 0x00F16B 03:915B: 06        .byte $06   ; 
- D 0 - I - 0x00F16C 03:915C: 84        .byte $84   ; 
- D 0 - I - 0x00F16D 03:915D: 82        .byte $82   ; 
- D 0 - I - 0x00F16E 03:915E: 81        .byte $81   ; 
- D 0 - I - 0x00F16F 03:915F: 12        .byte $12   ; 
- D 0 - I - 0x00F170 03:9160: 81        .byte $81   ; 
- D 0 - I - 0x00F171 03:9161: 1E        .byte $1E   ; 
- D 0 - I - 0x00F172 03:9162: 82        .byte $82   ; 
- D 0 - I - 0x00F173 03:9163: 06        .byte $06   ; 
- D 0 - I - 0x00F174 03:9164: 84        .byte $84   ; 
- D 0 - I - 0x00F175 03:9165: 82        .byte $82   ; 
- D 0 - I - 0x00F176 03:9166: 80        .byte $80   ; 
- D 0 - I - 0x00F177 03:9167: 0C        .byte $0C   ; 
- D 0 - I - 0x00F178 03:9168: 92        .byte con_se_cb_92   ; 
- D 0 - I - 0x00F179 03:9169: 89        .byte $89   ; 
- D 0 - I - 0x00F17A 03:916A: 06        .byte $06   ; 
- D 0 - I - 0x00F17B 03:916B: 87        .byte $87   ; 
- D 0 - I - 0x00F17C 03:916C: 84        .byte $84   ; 
- D 0 - I - 0x00F17D 03:916D: 80        .byte $80   ; 
- D 0 - I - 0x00F17E 03:916E: 12        .byte $12   ; 
- D 0 - I - 0x00F17F 03:916F: 87        .byte $87   ; 
- D 0 - I - 0x00F180 03:9170: 0C        .byte $0C   ; 
- D 0 - I - 0x00F181 03:9171: 85        .byte $85   ; 
- D 0 - I - 0x00F182 03:9172: 87        .byte $87   ; 
- D 0 - I - 0x00F183 03:9173: 89        .byte $89   ; 
- D 0 - I - 0x00F184 03:9174: 06        .byte $06   ; 
- D 0 - I - 0x00F185 03:9175: 80        .byte $80   ; 
- D 0 - I - 0x00F186 03:9176: 82        .byte $82   ; 
- D 0 - I - 0x00F187 03:9177: 84        .byte $84   ; 
- D 0 - I - 0x00F188 03:9178: 85        .byte $85   ; 
- D 0 - I - 0x00F189 03:9179: 87        .byte $87   ; 
- D 0 - I - 0x00F18A 03:917A: 89        .byte $89   ; 
- D 0 - I - 0x00F18B 03:917B: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00F18C 03:917C: 80        .byte $80   ; 
- D 0 - I - 0x00F18D 03:917D: 12        .byte $12   ; 
- D 0 - I - 0x00F18E 03:917E: 84        .byte $84   ; 
- D 0 - I - 0x00F18F 03:917F: 1E        .byte $1E   ; 
- D 0 - I - 0x00F190 03:9180: 82        .byte $82   ; 
- D 0 - I - 0x00F191 03:9181: 06        .byte $06   ; 
- D 0 - I - 0x00F192 03:9182: 84        .byte $84   ; 
- D 0 - I - 0x00F193 03:9183: 82        .byte $82   ; 
- D 0 - I - 0x00F194 03:9184: 80        .byte $80   ; 
- D 0 - I - 0x00F195 03:9185: 0C        .byte $0C   ; 
- D 0 - I - 0x00F196 03:9186: 82        .byte $82   ; 
- D 0 - I - 0x00F197 03:9187: 06        .byte $06   ; 
- D 0 - I - 0x00F198 03:9188: 84        .byte $84   ; 
- D 0 - I - 0x00F199 03:9189: 87        .byte $87   ; 
- D 0 - I - 0x00F19A 03:918A: 85        .byte $85   ; 
- D 0 - I - 0x00F19B 03:918B: 1E        .byte $1E   ; 
- D 0 - I - 0x00F19C 03:918C: 84        .byte $84   ; 
- D 0 - I - 0x00F19D 03:918D: 06        .byte $06   ; 
- D 0 - I - 0x00F19E 03:918E: 85        .byte $85   ; 
- D 0 - I - 0x00F19F 03:918F: 87        .byte $87   ; 
- D 0 - I - 0x00F1A0 03:9190: 89        .byte $89   ; 
- D 0 - I - 0x00F1A1 03:9191: 8B        .byte $8B   ; 
- D 0 - I - 0x00F1A2 03:9192: 89        .byte $89   ; 
- D 0 - I - 0x00F1A3 03:9193: 87        .byte $87   ; 
- D 0 - I - 0x00F1A4 03:9194: 0C        .byte $0C   ; 
- D 0 - I - 0x00F1A5 03:9195: 84        .byte $84   ; 
- D 0 - I - 0x00F1A6 03:9196: 06        .byte $06   ; 
- D 0 - I - 0x00F1A7 03:9197: 89        .byte $89   ; 
- D 0 - I - 0x00F1A8 03:9198: 0C        .byte $0C   ; 
- D 0 - I - 0x00F1A9 03:9199: 86        .byte $86   ; 
- D 0 - I - 0x00F1AA 03:919A: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F1AB 03:919B: 4F 91     .word loc_A1_914F



sub_BE_919D:
sub_C5_919D:
- D 0 - I - 0x00F1AD 03:919D: 13        .byte $13   ; 
- D 0 - I - 0x00F1AE 03:919E: 84        .byte $84   ; 
- D 0 - I - 0x00F1AF 03:919F: 23        .byte $23   ; 
- D 0 - I - 0x00F1B0 03:91A0: 87        .byte $87   ; 
- D 0 - I - 0x00F1B1 03:91A1: 06        .byte $06   ; 
- D 0 - I - 0x00F1B2 03:91A2: 84        .byte $84   ; 
- D 0 - I - 0x00F1B3 03:91A3: 85        .byte $85   ; 
- D 0 - I - 0x00F1B4 03:91A4: 87        .byte $87   ; 
- D 0 - I - 0x00F1B5 03:91A5: 89        .byte $89   ; 
- D 0 - I - 0x00F1B6 03:91A6: 85        .byte $85   ; 
- D 0 - I - 0x00F1B7 03:91A7: 87        .byte $87   ; 
- D 0 - I - 0x00F1B8 03:91A8: 89        .byte $89   ; 
- D 0 - I - 0x00F1B9 03:91A9: 1E        .byte $1E   ; 
- D 0 - I - 0x00F1BA 03:91AA: 8B        .byte $8B   ; 
- D 0 - I - 0x00F1BB 03:91AB: 06        .byte $06   ; 
- D 0 - I - 0x00F1BC 03:91AC: 88        .byte $88   ; 
- D 0 - I - 0x00F1BD 03:91AD: 89        .byte $89   ; 
- D 0 - I - 0x00F1BE 03:91AE: 0C        .byte $0C   ; 
- D 0 - I - 0x00F1BF 03:91AF: 8B        .byte $8B   ; 
- D 0 - I - 0x00F1C0 03:91B0: 06        .byte $06   ; 
- D 0 - I - 0x00F1C1 03:91B1: 89        .byte $89   ; 
- D 0 - I - 0x00F1C2 03:91B2: 88        .byte $88   ; 
- D 0 - I - 0x00F1C3 03:91B3: 89        .byte $89   ; 
- D 0 - I - 0x00F1C4 03:91B4: 1E        .byte $1E   ; 
- D 0 - I - 0x00F1C5 03:91B5: 84        .byte $84   ; 
- D 0 - I - 0x00F1C6 03:91B6: 06        .byte $06   ; 
- D 0 - I - 0x00F1C7 03:91B7: 80        .byte $80   ; 
- D 0 - I - 0x00F1C8 03:91B8: 82        .byte $82   ; 
- D 0 - I - 0x00F1C9 03:91B9: 84        .byte $84   ; 
- D 0 - I - 0x00F1CA 03:91BA: 0C        .byte $0C   ; 
- D 0 - I - 0x00F1CB 03:91BB: 85        .byte $85   ; 
- D 0 - I - 0x00F1CC 03:91BC: 12        .byte $12   ; 
- D 0 - I - 0x00F1CD 03:91BD: 84        .byte $84   ; 
- D 0 - I - 0x00F1CE 03:91BE: 06        .byte $06   ; 
- D 0 - I - 0x00F1CF 03:91BF: 82        .byte $82   ; 
- D 0 - I - 0x00F1D0 03:91C0: 84        .byte $84   ; 
- D 0 - I - 0x00F1D1 03:91C1: 85        .byte $85   ; 
- D 0 - I - 0x00F1D2 03:91C2: 0C        .byte $0C   ; 
- D 0 - I - 0x00F1D3 03:91C3: 87        .byte $87   ; 
- D 0 - I - 0x00F1D4 03:91C4: 12        .byte $12   ; 
- D 0 - I - 0x00F1D5 03:91C5: 85        .byte $85   ; 
- D 0 - I - 0x00F1D6 03:91C6: 06        .byte $06   ; 
- D 0 - I - 0x00F1D7 03:91C7: 84        .byte $84   ; 
- D 0 - I - 0x00F1D8 03:91C8: 85        .byte $85   ; 
- D 0 - I - 0x00F1D9 03:91C9: 0C        .byte $0C   ; 
- D 0 - I - 0x00F1DA 03:91CA: 87        .byte $87   ; 
- D 0 - I - 0x00F1DB 03:91CB: 06        .byte $06   ; 
- D 0 - I - 0x00F1DC 03:91CC: 85        .byte $85   ; 
- D 0 - I - 0x00F1DD 03:91CD: 87        .byte $87   ; 
- D 0 - I - 0x00F1DE 03:91CE: 0C        .byte $0C   ; 
- D 0 - I - 0x00F1DF 03:91CF: 89        .byte $89   ; 
- D 0 - I - 0x00F1E0 03:91D0: 06        .byte $06   ; 
- D 0 - I - 0x00F1E1 03:91D1: 8B        .byte $8B   ; 
- D 0 - I - 0x00F1E2 03:91D2: BF        .byte con_se_cb_BF_rts   ; 



_off026_music_91D3_22_ost_hawk:
; con_music_ost_hawk
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00F1E3 03:91D3: 0F        .byte %00001111   ;  
- D 0 - I - 0x00F1E4 03:91D4: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00F1E6 03:91D6: DE 91     .word off_91DE_22_ch_00
- D 0 - I - 0x00F1E8 03:91D8: 58 92     .word off_9258_22_ch_01
- D 0 - I - 0x00F1EA 03:91DA: DF 92     .word off_92DF_22_ch_02
- D 0 - I - 0x00F1EC 03:91DC: 67 93     .word off_9367_22_ch_03



off_91DE_22_ch_00:
loc_A1_91DE:
- D 0 - I - 0x00F1EE 03:91DE: BB        .byte con_se_cb_BB, $99, $99   ; 
- D 0 - I - 0x00F1F1 03:91E1: BC        .byte con_se_cb_BC, $08   ; 
- D 0 - I - 0x00F1F3 03:91E3: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F1F4 03:91E4: C6 9F     .word sub_BE_9FC6
- D 0 - I - 0x00F1F6 03:91E6: 06        .byte $06   ; 
- D 0 - I - 0x00F1F7 03:91E7: 81        .byte $81   ; 
- D 0 - I - 0x00F1F8 03:91E8: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F1F9 03:91E9: 93 95     .word sub_BE_9593
- D 0 - I - 0x00F1FB 03:91EB: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F1FC 03:91EC: C6 9F     .word sub_BE_9FC6
- D 0 - I - 0x00F1FE 03:91EE: 06        .byte $06   ; 
- D 0 - I - 0x00F1FF 03:91EF: 81        .byte $81   ; 
- D 0 - I - 0x00F200 03:91F0: 01        .byte $01   ; 
- D 0 - I - 0x00F201 03:91F1: 8D        .byte $8D   ; 
- D 0 - I - 0x00F202 03:91F2: 05        .byte $05   ; 
- D 0 - I - 0x00F203 03:91F3: 81        .byte $81   ; 
- D 0 - I - 0x00F204 03:91F4: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F205 03:91F5: D0 9F     .word sub_BE_9FD0
- D 0 - I - 0x00F207 03:91F7: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00F209 03:91F9: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00F20A 03:91FA: 03        .byte $03   ; 
- D 0 - I - 0x00F20B 03:91FB: 8D        .byte $8D   ; 
- D 0 - I - 0x00F20C 03:91FC: 06        .byte $06   ; 
- D 0 - I - 0x00F20D 03:91FD: 81        .byte $81   ; 
- D 0 - I - 0x00F20E 03:91FE: 01        .byte $01   ; 
- D 0 - I - 0x00F20F 03:91FF: 8D        .byte $8D   ; 
- D 0 - I - 0x00F210 03:9200: 05        .byte $05   ; 
- D 0 - I - 0x00F211 03:9201: 81        .byte $81   ; 
- D 0 - I - 0x00F212 03:9202: 06        .byte $06   ; 
- D 0 - I - 0x00F213 03:9203: 81        .byte $81   ; 
- D 0 - I - 0x00F214 03:9204: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F215 03:9205: 93 95     .word sub_BE_9593
- D 0 - I - 0x00F217 03:9207: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F218 03:9208: C6 9F     .word sub_BE_9FC6
- D 0 - I - 0x00F21A 03:920A: 03        .byte $03   ; 
- D 0 - I - 0x00F21B 03:920B: 81        .byte $81   ; 
- D 0 - I - 0x00F21C 03:920C: 8D        .byte $8D   ; 
- D 0 - I - 0x00F21D 03:920D: 01        .byte $01   ; 
- D 0 - I - 0x00F21E 03:920E: 8D        .byte $8D   ; 
- D 0 - I - 0x00F21F 03:920F: 05        .byte $05   ; 
- D 0 - I - 0x00F220 03:9210: 81        .byte $81   ; 
- D 0 - I - 0x00F221 03:9211: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F222 03:9212: 93 95     .word sub_BE_9593
- D 0 - I - 0x00F224 03:9214: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00F226 03:9216: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00F227 03:9217: 01        .byte $01   ; 
- D 0 - I - 0x00F228 03:9218: 8D        .byte $8D   ; 
- D 0 - I - 0x00F229 03:9219: 05        .byte $05   ; 
- D 0 - I - 0x00F22A 03:921A: 81        .byte $81   ; 
- D 0 - I - 0x00F22B 03:921B: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F22C 03:921C: BC        .byte con_se_cb_BC, $03   ; 
- D 0 - I - 0x00F22E 03:921E: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F22F 03:921F: 40 92     .word sub_BE_9240
- D 0 - I - 0x00F231 03:9221: 9A        .byte con_se_cb_9A, $09   ; 
- D 0 - I - 0x00F233 03:9223: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00F235 03:9225: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00F236 03:9226: 01        .byte $01   ; 
- D 0 - I - 0x00F237 03:9227: 8D        .byte $8D   ; 
- D 0 - I - 0x00F238 03:9228: D6        .byte con_se_cb_D6   ; 
- D 0 - I - 0x00F239 03:9229: 0B        .byte $0B   ; 
- D 0 - I - 0x00F23A 03:922A: 82        .byte $82   ; 
- D 0 - I - 0x00F23B 03:922B: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F23C 03:922C: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00F23E 03:922E: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F23F 03:922F: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F240 03:9230: 40 92     .word sub_BE_9240
- D 0 - I - 0x00F242 03:9232: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F243 03:9233: 8D        .byte $8D   ; 
- D 0 - I - 0x00F244 03:9234: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F245 03:9235: 93 95     .word sub_BE_9593
- D 0 - I - 0x00F247 03:9237: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F248 03:9238: D0 9F     .word sub_BE_9FD0
- D 0 - I - 0x00F24A 03:923A: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F24B 03:923B: D0 9F     .word sub_BE_9FD0
- D 0 - I - 0x00F24D 03:923D: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F24E 03:923E: DE 91     .word loc_A1_91DE



sub_BE_9240:
- D 0 - I - 0x00F250 03:9240: 0C        .byte $0C   ; 
- D 0 - I - 0x00F251 03:9241: 8D        .byte $8D   ; 
- D 0 - I - 0x00F252 03:9242: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00F254 03:9244: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F255 03:9245: 93 95     .word sub_BE_9593
- D 0 - I - 0x00F257 03:9247: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00F259 03:9249: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00F25A 03:924A: 0C        .byte $0C   ; 
- D 0 - I - 0x00F25B 03:924B: 8D        .byte $8D   ; 
- D 0 - I - 0x00F25C 03:924C: 06        .byte $06   ; 
- D 0 - I - 0x00F25D 03:924D: 8D        .byte $8D   ; 
- D 0 - I - 0x00F25E 03:924E: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F25F 03:924F: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F260 03:9250: 93 95     .word sub_BE_9593
- D 0 - I - 0x00F262 03:9252: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00F264 03:9254: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00F265 03:9255: 06        .byte $06   ; 
- D 0 - I - 0x00F266 03:9256: 8D        .byte $8D   ; 
- D 0 - I - 0x00F267 03:9257: BF        .byte con_se_cb_BF_rts   ; 



off_9258_22_ch_01:
loc_A1_9258:
- D 0 - I - 0x00F268 03:9258: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00F269 03:9259: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F26B 03:925B: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00F26D 03:925D: C5        .byte con_se_cb_C5, $10   ; 
- D 0 - I - 0x00F26F 03:925F: 9A 92     .word sub_C5_929A
- D 0 - I - 0x00F271 03:9261: 83        .byte $83   ; 
- D 0 - I - 0x00F272 03:9262: C5        .byte con_se_cb_C5, $0E   ; 
- D 0 - I - 0x00F274 03:9264: AF 92     .word sub_C5_92AF
- D 0 - I - 0x00F276 03:9266: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F277 03:9267: C5        .byte con_se_cb_C5, $0C   ; 
- D 0 - I - 0x00F279 03:9269: AF 92     .word sub_C5_92AF
- D 0 - I - 0x00F27B 03:926B: C5        .byte con_se_cb_C5, $0B   ; 
- D 0 - I - 0x00F27D 03:926D: 9A 92     .word sub_C5_929A
- D 0 - I - 0x00F27F 03:926F: 83        .byte $83   ; 
- D 0 - I - 0x00F280 03:9270: C5        .byte con_se_cb_C5, $09   ; 
- D 0 - I - 0x00F282 03:9272: 9A 92     .word sub_C5_929A
- D 0 - I - 0x00F284 03:9274: 82        .byte $82   ; 
- D 0 - I - 0x00F285 03:9275: C5        .byte con_se_cb_C5, $0C   ; 
- D 0 - I - 0x00F287 03:9277: B8 92     .word sub_C5_92B8
- D 0 - I - 0x00F289 03:9279: 84        .byte $84   ; 
- D 0 - I - 0x00F28A 03:927A: C5        .byte con_se_cb_C5, $0E   ; 
- D 0 - I - 0x00F28C 03:927C: B8 92     .word sub_C5_92B8
- D 0 - I - 0x00F28E 03:927E: 84        .byte $84   ; 
- D 0 - I - 0x00F28F 03:927F: C5        .byte con_se_cb_C5, $0E   ; 
- D 0 - I - 0x00F291 03:9281: D2 92     .word sub_C5_92D2
- D 0 - I - 0x00F293 03:9283: C5        .byte con_se_cb_C5, $0D   ; 
- D 0 - I - 0x00F295 03:9285: D2 92     .word sub_C5_92D2
- D 0 - I - 0x00F297 03:9287: C5        .byte con_se_cb_C5, $0E   ; 
- D 0 - I - 0x00F299 03:9289: D2 92     .word sub_C5_92D2
- D 0 - I - 0x00F29B 03:928B: 99        .byte con_se_cb_99, $06   ; 
- D 0 - I - 0x00F29D 03:928D: 12        .byte $12   ; 
- D 0 - I - 0x00F29E 03:928E: 83        .byte $83   ; 
- D 0 - I - 0x00F29F 03:928F: 83        .byte $83   ; 
- D 0 - I - 0x00F2A0 03:9290: 0C        .byte $0C   ; 
- D 0 - I - 0x00F2A1 03:9291: 83        .byte $83   ; 
- D 0 - I - 0x00F2A2 03:9292: 12        .byte $12   ; 
- D 0 - I - 0x00F2A3 03:9293: 80        .byte $80   ; 
- D 0 - I - 0x00F2A4 03:9294: 80        .byte $80   ; 
- D 0 - I - 0x00F2A5 03:9295: 0C        .byte $0C   ; 
- D 0 - I - 0x00F2A6 03:9296: 80        .byte $80   ; 
- D 0 - I - 0x00F2A7 03:9297: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F2A8 03:9298: 58 92     .word loc_A1_9258



sub_C5_929A:
- D 0 - I - 0x00F2AA 03:929A: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F2AB 03:929B: B8 92     .word sub_BE_92B8
- D 0 - I - 0x00F2AD 03:929D: 83        .byte $83   ; 
sub_BE_929E:
- D 0 - I - 0x00F2AE 03:929E: 80        .byte $80   ; 
- D 0 - I - 0x00F2AF 03:929F: 92        .byte con_se_cb_92   ; 
- D 0 - I - 0x00F2B0 03:92A0: 87        .byte $87   ; 
- D 0 - I - 0x00F2B1 03:92A1: 99        .byte con_se_cb_99, $02   ; 
- D 0 - I - 0x00F2B3 03:92A3: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F2B4 03:92A4: 03        .byte $03   ; 
- D 0 - I - 0x00F2B5 03:92A5: 8A        .byte $8A   ; 
- D 0 - I - 0x00F2B6 03:92A6: 8B        .byte $8B   ; 
- D 0 - I - 0x00F2B7 03:92A7: 99        .byte con_se_cb_99, $04   ; 
- D 0 - I - 0x00F2B9 03:92A9: 8C        .byte $8C   ; 
- D 0 - I - 0x00F2BA 03:92AA: 87        .byte $87   ; 
- D 0 - I - 0x00F2BB 03:92AB: 0C        .byte $0C   ; 
- D 0 - I - 0x00F2BC 03:92AC: 80        .byte $80   ; 
- D 0 - I - 0x00F2BD 03:92AD: 06        .byte $06   ; 
- D 0 - I - 0x00F2BE 03:92AE: BF        .byte con_se_cb_BF_rts   ; 



sub_C5_92AF:
- D 0 - I - 0x00F2BF 03:92AF: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F2C0 03:92B0: B8 92     .word sub_BE_92B8
- D 0 - I - 0x00F2C2 03:92B2: 84        .byte $84   ; 
- D 0 - I - 0x00F2C3 03:92B3: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F2C4 03:92B4: 9E 92     .word sub_BE_929E
- D 0 - I - 0x00F2C6 03:92B6: 84        .byte $84   ; 
- D 0 - I - 0x00F2C7 03:92B7: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_92B8:
sub_C5_92B8:
- D 0 - I - 0x00F2C8 03:92B8: 99        .byte con_se_cb_99, $04   ; 
- D 0 - I - 0x00F2CA 03:92BA: 02        .byte $02   ; 
- D 0 - I - 0x00F2CB 03:92BB: 80        .byte $80   ; 
- D 0 - I - 0x00F2CC 03:92BC: 01        .byte $01   ; 
- D 0 - I - 0x00F2CD 03:92BD: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F2CE 03:92BE: 0F        .byte $0F   ; 
- D 0 - I - 0x00F2CF 03:92BF: 80        .byte $80   ; 
- D 0 - I - 0x00F2D0 03:92C0: 99        .byte con_se_cb_99, $02   ; 
- D 0 - I - 0x00F2D2 03:92C2: 03        .byte $03   ; 
- D 0 - I - 0x00F2D3 03:92C3: 8A        .byte $8A   ; 
- D 0 - I - 0x00F2D4 03:92C4: 8A        .byte $8A   ; 
- D 0 - I - 0x00F2D5 03:92C5: 99        .byte con_se_cb_99, $03   ; 
- D 0 - I - 0x00F2D7 03:92C7: 0C        .byte $0C   ; 
- D 0 - I - 0x00F2D8 03:92C8: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00F2D9 03:92C9: 80        .byte $80   ; 
- D 0 - I - 0x00F2DA 03:92CA: 03        .byte $03   ; 
- D 0 - I - 0x00F2DB 03:92CB: 82        .byte $82   ; 
- D 0 - I - 0x00F2DC 03:92CC: 02        .byte $02   ; 
- D 0 - I - 0x00F2DD 03:92CD: 85        .byte $85   ; 
- D 0 - I - 0x00F2DE 03:92CE: 01        .byte $01   ; 
- D 0 - I - 0x00F2DF 03:92CF: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F2E0 03:92D0: 06        .byte $06   ; 
- D 0 - I - 0x00F2E1 03:92D1: BF        .byte con_se_cb_BF_rts   ; 



sub_C5_92D2:
- D 0 - I - 0x00F2E2 03:92D2: 99        .byte con_se_cb_99, $06   ; 
- D 0 - I - 0x00F2E4 03:92D4: 12        .byte $12   ; 
- D 0 - I - 0x00F2E5 03:92D5: 8A        .byte $8A   ; 
- D 0 - I - 0x00F2E6 03:92D6: 8A        .byte $8A   ; 
- D 0 - I - 0x00F2E7 03:92D7: 8A        .byte $8A   ; 
- D 0 - I - 0x00F2E8 03:92D8: 8A        .byte $8A   ; 
- D 0 - I - 0x00F2E9 03:92D9: 99        .byte con_se_cb_99, $0A   ; 
- D 0 - I - 0x00F2EB 03:92DB: 0C        .byte $0C   ; 
- D 0 - I - 0x00F2EC 03:92DC: 8A        .byte $8A   ; 
- D 0 - I - 0x00F2ED 03:92DD: 8A        .byte $8A   ; 
- D 0 - I - 0x00F2EE 03:92DE: BF        .byte con_se_cb_BF_rts   ; 



off_92DF_22_ch_02:
loc_A1_92DF:
- D 0 - I - 0x00F2EF 03:92DF: D7        .byte con_se_cb_D7   ; 
- D 0 - I - 0x00F2F0 03:92E0: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x00F2F1 03:92E1: 9A        .byte con_se_cb_9A, $28   ; 
- D 0 - I - 0x00F2F3 03:92E3: C5        .byte con_se_cb_C5, $15   ; 
- D 0 - I - 0x00F2F5 03:92E5: 47 93     .word sub_C5_9347
- D 0 - I - 0x00F2F7 03:92E7: C5        .byte con_se_cb_C5, $1A   ; 
- D 0 - I - 0x00F2F9 03:92E9: 4B 9F     .word sub_C5_9F4B
- D 0 - I - 0x00F2FB 03:92EB: 0C        .byte $0C   ; 
- D 0 - I - 0x00F2FC 03:92EC: 85        .byte $85   ; 
- D 0 - I - 0x00F2FD 03:92ED: 87        .byte $87   ; 
- D 0 - I - 0x00F2FE 03:92EE: C5        .byte con_se_cb_C5, $15   ; 
- D 0 - I - 0x00F300 03:92F0: 47 93     .word sub_C5_9347
- D 0 - I - 0x00F302 03:92F2: C5        .byte con_se_cb_C5, $1F   ; 
- D 0 - I - 0x00F304 03:92F4: 58 9F     .word sub_C5_9F58
- D 0 - I - 0x00F306 03:92F6: 85        .byte $85   ; 
- D 0 - I - 0x00F307 03:92F7: 87        .byte $87   ; 
- D 0 - I - 0x00F308 03:92F8: C5        .byte con_se_cb_C5, $21   ; 
- D 0 - I - 0x00F30A 03:92FA: 3D 9F     .word sub_C5_9F3D
- D 0 - I - 0x00F30C 03:92FC: 18        .byte $18   ; 
- D 0 - I - 0x00F30D 03:92FD: 89        .byte $89   ; 
- D 0 - I - 0x00F30E 03:92FE: 8A        .byte $8A   ; 
- D 0 - I - 0x00F30F 03:92FF: C5        .byte con_se_cb_C5, $1F   ; 
- D 0 - I - 0x00F311 03:9301: 3D 9F     .word sub_C5_9F3D
- D 0 - I - 0x00F313 03:9303: 18        .byte $18   ; 
- D 0 - I - 0x00F314 03:9304: 8B        .byte $8B   ; 
- D 0 - I - 0x00F315 03:9305: 89        .byte $89   ; 
- D 0 - I - 0x00F316 03:9306: C5        .byte con_se_cb_C5, $1C   ; 
- D 0 - I - 0x00F318 03:9308: 3D 9F     .word sub_C5_9F3D
- D 0 - I - 0x00F31A 03:930A: 18        .byte $18   ; 
- D 0 - I - 0x00F31B 03:930B: 8A        .byte $8A   ; 
- D 0 - I - 0x00F31C 03:930C: 88        .byte $88   ; 
- D 0 - I - 0x00F31D 03:930D: 1E        .byte $1E   ; 
- D 0 - I - 0x00F31E 03:930E: 83        .byte $83   ; 
- D 0 - I - 0x00F31F 03:930F: 06        .byte $06   ; 
- D 0 - I - 0x00F320 03:9310: 82        .byte $82   ; 
- D 0 - I - 0x00F321 03:9311: 83        .byte $83   ; 
- D 0 - I - 0x00F322 03:9312: 85        .byte $85   ; 
- D 0 - I - 0x00F323 03:9313: 12        .byte $12   ; 
- D 0 - I - 0x00F324 03:9314: 8C        .byte $8C   ; 
- D 0 - I - 0x00F325 03:9315: 0C        .byte $0C   ; 
- D 0 - I - 0x00F326 03:9316: 8A        .byte $8A   ; 
- D 0 - I - 0x00F327 03:9317: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00F328 03:9318: 06        .byte $06   ; 
- D 0 - I - 0x00F329 03:9319: 87        .byte $87   ; 
- D 0 - I - 0x00F32A 03:931A: 8A        .byte $8A   ; 
- D 0 - I - 0x00F32B 03:931B: 8C        .byte $8C   ; 
- D 0 - I - 0x00F32C 03:931C: C5        .byte con_se_cb_C5, $23   ; 
- D 0 - I - 0x00F32E 03:931E: 51 93     .word sub_C5_9351
- D 0 - I - 0x00F330 03:9320: 82        .byte $82   ; 
- D 0 - I - 0x00F331 03:9321: 83        .byte $83   ; 
- D 0 - I - 0x00F332 03:9322: 85        .byte $85   ; 
- D 0 - I - 0x00F333 03:9323: 83        .byte $83   ; 
- D 0 - I - 0x00F334 03:9324: 8A        .byte $8A   ; 
- D 0 - I - 0x00F335 03:9325: C5        .byte con_se_cb_C5, $21   ; 
- D 0 - I - 0x00F337 03:9327: 22 9F     .word sub_C5_9F22
- D 0 - I - 0x00F339 03:9329: 0C        .byte $0C   ; 
- D 0 - I - 0x00F33A 03:932A: 89        .byte $89   ; 
- D 0 - I - 0x00F33B 03:932B: 06        .byte $06   ; 
- D 0 - I - 0x00F33C 03:932C: 8A        .byte $8A   ; 
- D 0 - I - 0x00F33D 03:932D: 89        .byte $89   ; 
- D 0 - I - 0x00F33E 03:932E: 85        .byte $85   ; 
- D 0 - I - 0x00F33F 03:932F: 82        .byte $82   ; 
- D 0 - I - 0x00F340 03:9330: 85        .byte $85   ; 
- D 0 - I - 0x00F341 03:9331: C5        .byte con_se_cb_C5, $23   ; 
- D 0 - I - 0x00F343 03:9333: 51 93     .word sub_C5_9351
- D 0 - I - 0x00F345 03:9335: 88        .byte $88   ; 
- D 0 - I - 0x00F346 03:9336: 8A        .byte $8A   ; 
- D 0 - I - 0x00F347 03:9337: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F348 03:9338: 5E 93     .word sub_BE_935E
- D 0 - I - 0x00F34A 03:933A: 85        .byte $85   ; 
- D 0 - I - 0x00F34B 03:933B: 83        .byte $83   ; 
- D 0 - I - 0x00F34C 03:933C: 81        .byte $81   ; 
- D 0 - I - 0x00F34D 03:933D: 92        .byte con_se_cb_92   ; 
- D 0 - I - 0x00F34E 03:933E: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F34F 03:933F: 5E 93     .word sub_BE_935E
- D 0 - I - 0x00F351 03:9341: 8A        .byte $8A   ; 
- D 0 - I - 0x00F352 03:9342: 88        .byte $88   ; 
- D 0 - I - 0x00F353 03:9343: 8A        .byte $8A   ; 
- D 0 - I - 0x00F354 03:9344: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F355 03:9345: DF 92     .word loc_A1_92DF



sub_C5_9347:
- D 0 - I - 0x00F357 03:9347: 12        .byte $12   ; 
- D 0 - I - 0x00F358 03:9348: 8E        .byte $8E   ; 
- D 0 - I - 0x00F359 03:9349: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F35A 03:934A: 58 9F     .word sub_BE_9F58
- D 0 - I - 0x00F35C 03:934C: 89        .byte $89   ; 
- D 0 - I - 0x00F35D 03:934D: 8A        .byte $8A   ; 
- D 0 - I - 0x00F35E 03:934E: 12        .byte $12   ; 
- D 0 - I - 0x00F35F 03:934F: 89        .byte $89   ; 
- D 0 - I - 0x00F360 03:9350: BF        .byte con_se_cb_BF_rts   ; 



sub_C5_9351:
- D 0 - I - 0x00F361 03:9351: 87        .byte $87   ; 
- D 0 - I - 0x00F362 03:9352: 85        .byte $85   ; 
- D 0 - I - 0x00F363 03:9353: 8C        .byte $8C   ; 
- D 0 - I - 0x00F364 03:9354: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F365 03:9355: 22 9F     .word sub_BE_9F22
- D 0 - I - 0x00F367 03:9357: 0C        .byte $0C   ; 
- D 0 - I - 0x00F368 03:9358: 88        .byte $88   ; 
- D 0 - I - 0x00F369 03:9359: 06        .byte $06   ; 
- D 0 - I - 0x00F36A 03:935A: 8A        .byte $8A   ; 
- D 0 - I - 0x00F36B 03:935B: 88        .byte $88   ; 
- D 0 - I - 0x00F36C 03:935C: 87        .byte $87   ; 
- D 0 - I - 0x00F36D 03:935D: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_935E:
- D 0 - I - 0x00F36E 03:935E: 8C        .byte $8C   ; 
- D 0 - I - 0x00F36F 03:935F: 8A        .byte $8A   ; 
- D 0 - I - 0x00F370 03:9360: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00F371 03:9361: 85        .byte $85   ; 
- D 0 - I - 0x00F372 03:9362: 0C        .byte $0C   ; 
- D 0 - I - 0x00F373 03:9363: 80        .byte $80   ; 
- D 0 - I - 0x00F374 03:9364: 06        .byte $06   ; 
- D 0 - I - 0x00F375 03:9365: 92        .byte con_se_cb_92   ; 
- D 0 - I - 0x00F376 03:9366: BF        .byte con_se_cb_BF_rts   ; 



off_9367_22_ch_03:
loc_A1_9367:
- D 0 - I - 0x00F377 03:9367: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00F378 03:9368: D4        .byte con_se_cb_D4   ; 
- D 0 - I - 0x00F379 03:9369: 9A        .byte con_se_cb_9A, $28   ; 
- D 0 - I - 0x00F37B 03:936B: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00F37D 03:936D: 93        .byte con_se_cb_93, $10   ; 
- D 0 - I - 0x00F37F 03:936F: 12        .byte $12   ; 
- D 0 - I - 0x00F380 03:9370: 8F        .byte $8F   ; 
- D 0 - I - 0x00F381 03:9371: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F382 03:9372: 58 9F     .word sub_BE_9F58
- D 0 - I - 0x00F384 03:9374: 85        .byte $85   ; 
- D 0 - I - 0x00F385 03:9375: 87        .byte $87   ; 
- D 0 - I - 0x00F386 03:9376: 12        .byte $12   ; 
- D 0 - I - 0x00F387 03:9377: 85        .byte $85   ; 
- D 0 - I - 0x00F388 03:9378: C5        .byte con_se_cb_C5, $17   ; 
- D 0 - I - 0x00F38A 03:937A: 58 9F     .word sub_C5_9F58
- D 0 - I - 0x00F38C 03:937C: 85        .byte $85   ; 
- D 0 - I - 0x00F38D 03:937D: 87        .byte $87   ; 
- D 0 - I - 0x00F38E 03:937E: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F38F 03:937F: C5        .byte con_se_cb_C5, $18   ; 
- D 0 - I - 0x00F391 03:9381: 3D 9F     .word sub_C5_9F3D
- D 0 - I - 0x00F393 03:9383: 18        .byte $18   ; 
- D 0 - I - 0x00F394 03:9384: 89        .byte $89   ; 
- D 0 - I - 0x00F395 03:9385: 8B        .byte $8B   ; 
- D 0 - I - 0x00F396 03:9386: C5        .byte con_se_cb_C5, $17   ; 
- D 0 - I - 0x00F398 03:9388: 3D 9F     .word sub_C5_9F3D
- D 0 - I - 0x00F39A 03:938A: 18        .byte $18   ; 
- D 0 - I - 0x00F39B 03:938B: 8A        .byte $8A   ; 
- D 0 - I - 0x00F39C 03:938C: 88        .byte $88   ; 
- D 0 - I - 0x00F39D 03:938D: C5        .byte con_se_cb_C5, $15   ; 
- D 0 - I - 0x00F39F 03:938F: 3D 9F     .word sub_C5_9F3D
- D 0 - I - 0x00F3A1 03:9391: 18        .byte $18   ; 
- D 0 - I - 0x00F3A2 03:9392: 8E        .byte $8E   ; 
- D 0 - I - 0x00F3A3 03:9393: 8C        .byte $8C   ; 
- D 0 - I - 0x00F3A4 03:9394: 1E        .byte $1E   ; 
- D 0 - I - 0x00F3A5 03:9395: 87        .byte $87   ; 
- D 0 - I - 0x00F3A6 03:9396: 06        .byte $06   ; 
- D 0 - I - 0x00F3A7 03:9397: 85        .byte $85   ; 
- D 0 - I - 0x00F3A8 03:9398: 87        .byte $87   ; 
- D 0 - I - 0x00F3A9 03:9399: 89        .byte $89   ; 
- D 0 - I - 0x00F3AA 03:939A: 12        .byte $12   ; 
- D 0 - I - 0x00F3AB 03:939B: 8A        .byte $8A   ; 
- D 0 - I - 0x00F3AC 03:939C: 0C        .byte $0C   ; 
- D 0 - I - 0x00F3AD 03:939D: 89        .byte $89   ; 
- D 0 - I - 0x00F3AE 03:939E: E2        .byte con_se_cb_E2   ; 
- D 0 - I - 0x00F3AF 03:939F: 06        .byte $06   ; 
- D 0 - I - 0x00F3B0 03:93A0: 85        .byte $85   ; 
- D 0 - I - 0x00F3B1 03:93A1: 89        .byte $89   ; 
- D 0 - I - 0x00F3B2 03:93A2: 8A        .byte $8A   ; 
- D 0 - I - 0x00F3B3 03:93A3: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x00F3B4 03:93A4: BC        .byte con_se_cb_BC, $03   ; 
- D 0 - I - 0x00F3B6 03:93A6: 9A        .byte con_se_cb_9A, $09   ; 
- D 0 - I - 0x00F3B8 03:93A8: 12        .byte $12   ; 
- D 0 - I - 0x00F3B9 03:93A9: 8C        .byte $8C   ; 
- D 0 - I - 0x00F3BA 03:93AA: 8C        .byte $8C   ; 
- D 0 - I - 0x00F3BB 03:93AB: 8C        .byte $8C   ; 
- D 0 - I - 0x00F3BC 03:93AC: 8C        .byte $8C   ; 
- D 0 - I - 0x00F3BD 03:93AD: 9A        .byte con_se_cb_9A, $0B   ; 
- D 0 - I - 0x00F3BF 03:93AF: 0C        .byte $0C   ; 
- D 0 - I - 0x00F3C0 03:93B0: 8C        .byte $8C   ; 
- D 0 - I - 0x00F3C1 03:93B1: 8C        .byte $8C   ; 
- D 0 - I - 0x00F3C2 03:93B2: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F3C3 03:93B3: 9A        .byte con_se_cb_9A, $0B   ; 
- D 0 - I - 0x00F3C5 03:93B5: 12        .byte $12   ; 
- D 0 - I - 0x00F3C6 03:93B6: 8A        .byte $8A   ; 
- D 0 - I - 0x00F3C7 03:93B7: 8A        .byte $8A   ; 
- D 0 - I - 0x00F3C8 03:93B8: 0C        .byte $0C   ; 
- D 0 - I - 0x00F3C9 03:93B9: 8A        .byte $8A   ; 
- D 0 - I - 0x00F3CA 03:93BA: 12        .byte $12   ; 
- D 0 - I - 0x00F3CB 03:93BB: 89        .byte $89   ; 
- D 0 - I - 0x00F3CC 03:93BC: 89        .byte $89   ; 
- D 0 - I - 0x00F3CD 03:93BD: 0C        .byte $0C   ; 
- D 0 - I - 0x00F3CE 03:93BE: 89        .byte $89   ; 
- D 0 - I - 0x00F3CF 03:93BF: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F3D0 03:93C0: 67 93     .word loc_A1_9367



_off026_music_93C2_26_boss_fight:
; con_music_boss_fight
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00F3D2 03:93C2: 0F        .byte %00001111   ;  
- D 0 - I - 0x00F3D3 03:93C3: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00F3D5 03:93C5: CD 93     .word off_93CD_26_ch_00
- D 0 - I - 0x00F3D7 03:93C7: 2B 94     .word off_942B_26_ch_01
- D 0 - I - 0x00F3D9 03:93C9: 64 94     .word off_9464_26_ch_02
- D 0 - I - 0x00F3DB 03:93CB: F0 94     .word off_94F0_26_ch_03



off_93CD_26_ch_00:
loc_A1_93CD:
- D 0 - I - 0x00F3DD 03:93CD: BB        .byte con_se_cb_BB, $FF, $FF   ; 
- D 0 - I - 0x00F3E0 03:93D0: BC        .byte con_se_cb_BC, $10   ; 
- D 0 - I - 0x00F3E2 03:93D2: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F3E3 03:93D3: 0C 94     .word sub_BE_940C
- D 0 - I - 0x00F3E5 03:93D5: BC        .byte con_se_cb_BC, $04   ; 
- D 0 - I - 0x00F3E7 03:93D7: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F3E8 03:93D8: BF 9F     .word sub_BE_9FBF
- D 0 - I - 0x00F3EA 03:93DA: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F3EB 03:93DB: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F3EC 03:93DC: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F3ED 03:93DD: D9 9F     .word sub_BE_9FD9
- D 0 - I - 0x00F3EF 03:93DF: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F3F0 03:93E0: 20 94     .word sub_BE_9420
- D 0 - I - 0x00F3F2 03:93E2: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F3F3 03:93E3: D9 9F     .word sub_BE_9FD9
- D 0 - I - 0x00F3F5 03:93E5: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F3F6 03:93E6: D9 9F     .word sub_BE_9FD9
- D 0 - I - 0x00F3F8 03:93E8: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F3F9 03:93E9: 20 94     .word sub_BE_9420
- D 0 - I - 0x00F3FB 03:93EB: 8C        .byte $8C   ; 
- D 0 - I - 0x00F3FC 03:93EC: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F3FD 03:93ED: D9 9F     .word sub_BE_9FD9
- D 0 - I - 0x00F3FF 03:93EF: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F400 03:93F0: 20 94     .word sub_BE_9420
- D 0 - I - 0x00F402 03:93F2: BC        .byte con_se_cb_BC, $04   ; 
- D 0 - I - 0x00F404 03:93F4: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F405 03:93F5: D9 9F     .word sub_BE_9FD9
- D 0 - I - 0x00F407 03:93F7: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F408 03:93F8: 08        .byte $08   ; 
- D 0 - I - 0x00F409 03:93F9: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F40A 03:93FA: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F40B 03:93FB: 0C 94     .word sub_BE_940C
- D 0 - I - 0x00F40D 03:93FD: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F40E 03:93FE: BF 9F     .word sub_BE_9FBF
- D 0 - I - 0x00F410 03:9400: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F411 03:9401: BF 9F     .word sub_BE_9FBF
- D 0 - I - 0x00F413 03:9403: BC        .byte con_se_cb_BC, $04   ; 
- D 0 - I - 0x00F415 03:9405: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F416 03:9406: 19 94     .word sub_BE_9419
- D 0 - I - 0x00F418 03:9408: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F419 03:9409: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F41A 03:940A: CD 93     .word loc_A1_93CD



sub_BE_940C:
- D 0 - I - 0x00F41C 03:940C: 9A        .byte con_se_cb_9A, $02   ; 
- D 0 - I - 0x00F41E 03:940E: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00F41F 03:940F: 01        .byte $01   ; 
- D 0 - I - 0x00F420 03:9410: 8D        .byte $8D   ; 
- D 0 - I - 0x00F421 03:9411: D7        .byte con_se_cb_D7   ; 
- D 0 - I - 0x00F422 03:9412: 8A        .byte $8A   ; 
- D 0 - I - 0x00F423 03:9413: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x00F424 03:9414: 06        .byte $06   ; 
- D 0 - I - 0x00F425 03:9415: 86        .byte $86   ; 
- D 0 - I - 0x00F426 03:9416: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F427 03:9417: 19 94     .word sub_BE_9419
sub_BE_9419:
- D 0 - I - 0x00F429 03:9419: D7        .byte con_se_cb_D7   ; 
- D 0 - I - 0x00F42A 03:941A: 01        .byte $01   ; 
- D 0 - I - 0x00F42B 03:941B: 8A        .byte $8A   ; 
- D 0 - I - 0x00F42C 03:941C: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x00F42D 03:941D: 03        .byte $03   ; 
- D 0 - I - 0x00F42E 03:941E: 86        .byte $86   ; 
- D 0 - I - 0x00F42F 03:941F: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9420:
- D 0 - I - 0x00F430 03:9420: 9A        .byte con_se_cb_9A, $02   ; 
- D 0 - I - 0x00F432 03:9422: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F433 03:9423: BF 9F     .word sub_BE_9FBF
- D 0 - I - 0x00F435 03:9425: 08        .byte $08   ; 
- D 0 - I - 0x00F436 03:9426: BC        .byte con_se_cb_BC, $06   ; 
- D 0 - I - 0x00F438 03:9428: 8C        .byte $8C   ; 
- D 0 - I - 0x00F439 03:9429: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F43A 03:942A: BF        .byte con_se_cb_BF_rts   ; 



off_942B_26_ch_01:
loc_A1_942B:
- D 0 - I - 0x00F43B 03:942B: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00F43C 03:942C: 93        .byte con_se_cb_93, $30   ; 
- D 0 - I - 0x00F43E 03:942E: 9A        .byte con_se_cb_9A, $05   ; 
- D 0 - I - 0x00F440 03:9430: 08        .byte $08   ; 
- D 0 - I - 0x00F441 03:9431: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00F443 03:9433: BC        .byte con_se_cb_BC, $18   ; 
- D 0 - I - 0x00F445 03:9435: 80        .byte $80   ; 
- D 0 - I - 0x00F446 03:9436: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F447 03:9437: BC        .byte con_se_cb_BC, $18   ; 
- D 0 - I - 0x00F449 03:9439: 81        .byte $81   ; 
- D 0 - I - 0x00F44A 03:943A: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F44B 03:943B: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F44C 03:943C: 9A        .byte con_se_cb_9A, $09   ; 
- D 0 - I - 0x00F44E 03:943E: 93        .byte con_se_cb_93, $18   ; 
- D 0 - I - 0x00F450 03:9440: 18        .byte $18   ; 
- D 0 - I - 0x00F451 03:9441: 80        .byte $80   ; 
- D 0 - I - 0x00F452 03:9442: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F453 03:9443: CF 94     .word sub_BE_94CF
- D 0 - I - 0x00F455 03:9445: 10        .byte $10   ; 
- D 0 - I - 0x00F456 03:9446: 8B        .byte $8B   ; 
- D 0 - I - 0x00F457 03:9447: 18        .byte $18   ; 
- D 0 - I - 0x00F458 03:9448: 8B        .byte $8B   ; 
- D 0 - I - 0x00F459 03:9449: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F45A 03:944A: CF 94     .word sub_BE_94CF
- D 0 - I - 0x00F45C 03:944C: 08        .byte $08   ; 
- D 0 - I - 0x00F45D 03:944D: 87        .byte $87   ; 
- D 0 - I - 0x00F45E 03:944E: 18        .byte $18   ; 
- D 0 - I - 0x00F45F 03:944F: 8B        .byte $8B   ; 
- D 0 - I - 0x00F460 03:9450: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F461 03:9451: CF 94     .word sub_BE_94CF
- D 0 - I - 0x00F463 03:9453: 10        .byte $10   ; 
- D 0 - I - 0x00F464 03:9454: 8B        .byte $8B   ; 
- D 0 - I - 0x00F465 03:9455: 8B        .byte $8B   ; 
- D 0 - I - 0x00F466 03:9456: 8B        .byte $8B   ; 
- D 0 - I - 0x00F467 03:9457: 08        .byte $08   ; 
- D 0 - I - 0x00F468 03:9458: 8B        .byte $8B   ; 
- D 0 - I - 0x00F469 03:9459: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F46A 03:945A: CF 94     .word sub_BE_94CF
- D 0 - I - 0x00F46C 03:945C: 08        .byte $08   ; 
- D 0 - I - 0x00F46D 03:945D: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00F46E 03:945E: 87        .byte $87   ; 
- D 0 - I - 0x00F46F 03:945F: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00F470 03:9460: 84        .byte $84   ; 
- D 0 - I - 0x00F471 03:9461: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F472 03:9462: 2B 94     .word loc_A1_942B



off_9464_26_ch_02:
loc_A1_9464:
- D 0 - I - 0x00F474 03:9464: DC        .byte con_se_cb_DC   ; 
- D 0 - I - 0x00F475 03:9465: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00F476 03:9466: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F478 03:9468: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00F47A 03:946A: 9A        .byte con_se_cb_9A, $7F   ; 
- D 0 - I - 0x00F47C 03:946C: 93        .byte con_se_cb_93, $03   ; 
- D 0 - I - 0x00F47E 03:946E: 30        .byte $30   ; 
- D 0 - I - 0x00F47F 03:946F: 8B        .byte $8B   ; 
- D 0 - I - 0x00F480 03:9470: 85        .byte $85   ; 
- D 0 - I - 0x00F481 03:9471: 9A        .byte con_se_cb_9A, $16   ; 
- D 0 - I - 0x00F483 03:9473: 11        .byte $11   ; 
- D 0 - I - 0x00F484 03:9474: 84        .byte $84   ; 
- D 0 - I - 0x00F485 03:9475: 07        .byte $07   ; 
- D 0 - I - 0x00F486 03:9476: 88        .byte $88   ; 
- D 0 - I - 0x00F487 03:9477: 9A        .byte con_se_cb_9A, $7F   ; 
- D 0 - I - 0x00F489 03:9479: 30        .byte $30   ; 
- D 0 - I - 0x00F48A 03:947A: 87        .byte $87   ; 
- D 0 - I - 0x00F48B 03:947B: 18        .byte $18   ; 
- D 0 - I - 0x00F48C 03:947C: 81        .byte $81   ; 
- D 0 - I - 0x00F48D 03:947D: 30        .byte $30   ; 
- D 0 - I - 0x00F48E 03:947E: 86        .byte $86   ; 
- D 0 - I - 0x00F48F 03:947F: 48        .byte $48   ; 
- D 0 - I - 0x00F490 03:9480: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00F491 03:9481: 80        .byte $80   ; 
- D 0 - I - 0x00F492 03:9482: 80        .byte $80   ; 
- D 0 - I - 0x00F493 03:9483: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F494 03:9484: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x00F495 03:9485: 9A        .byte con_se_cb_9A, $0A   ; 
- D 0 - I - 0x00F497 03:9487: C5        .byte con_se_cb_C5, $27   ; 
- D 0 - I - 0x00F499 03:9489: AE 9F     .word sub_C5_9FAE
- D 0 - I - 0x00F49B 03:948B: C1        .byte con_se_cb_C1, $FE   ; 
- D 0 - I - 0x00F49D 03:948D: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F49E 03:948E: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F49F 03:948F: CF 94     .word sub_BE_94CF
- D 0 - I - 0x00F4A1 03:9491: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x00F4A2 03:9492: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F4A4 03:9494: C5        .byte con_se_cb_C5, $27   ; 
- D 0 - I - 0x00F4A6 03:9496: AE 9F     .word sub_C5_9FAE
- D 0 - I - 0x00F4A8 03:9498: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F4A9 03:9499: AE 9F     .word sub_BE_9FAE
- D 0 - I - 0x00F4AB 03:949B: C1        .byte con_se_cb_C1, $FE   ; 
- D 0 - I - 0x00F4AD 03:949D: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F4AE 03:949E: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F4AF 03:949F: CF 94     .word sub_BE_94CF
- D 0 - I - 0x00F4B1 03:94A1: C5        .byte con_se_cb_C5, $14   ; 
- D 0 - I - 0x00F4B3 03:94A3: E6 94     .word sub_C5_94E6
- D 0 - I - 0x00F4B5 03:94A5: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x00F4B6 03:94A6: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F4B8 03:94A8: C5        .byte con_se_cb_C5, $27   ; 
- D 0 - I - 0x00F4BA 03:94AA: AE 9F     .word sub_C5_9FAE
- D 0 - I - 0x00F4BC 03:94AC: C1        .byte con_se_cb_C1, $FE   ; 
- D 0 - I - 0x00F4BE 03:94AE: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F4BF 03:94AF: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F4C0 03:94B0: CF 94     .word sub_BE_94CF
- D 0 - I - 0x00F4C2 03:94B2: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x00F4C3 03:94B3: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F4C5 03:94B5: BC        .byte con_se_cb_BC, $03   ; 
- D 0 - I - 0x00F4C7 03:94B7: C5        .byte con_se_cb_C5, $27   ; 
- D 0 - I - 0x00F4C9 03:94B9: AE 9F     .word sub_C5_9FAE
- D 0 - I - 0x00F4CB 03:94BB: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F4CC 03:94BC: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F4CD 03:94BD: B7 9F     .word sub_BE_9FB7
- D 0 - I - 0x00F4CF 03:94BF: C1        .byte con_se_cb_C1, $FE   ; 
- D 0 - I - 0x00F4D1 03:94C1: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F4D2 03:94C2: CF 94     .word sub_BE_94CF
- D 0 - I - 0x00F4D4 03:94C4: C5        .byte con_se_cb_C5, $14   ; 
- D 0 - I - 0x00F4D6 03:94C6: E6 94     .word sub_C5_94E6
- D 0 - I - 0x00F4D8 03:94C8: C5        .byte con_se_cb_C5, $1D   ; 
- D 0 - I - 0x00F4DA 03:94CA: E6 94     .word sub_C5_94E6
- D 0 - I - 0x00F4DC 03:94CC: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F4DD 03:94CD: 64 94     .word loc_A1_9464



sub_BE_94CF:
- D 0 - I - 0x00F4DF 03:94CF: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00F4E0 03:94D0: C5        .byte con_se_cb_C5, $02   ; 
- D 0 - I - 0x00F4E2 03:94D2: E6 94     .word sub_C5_94E6
- D 0 - I - 0x00F4E4 03:94D4: C5        .byte con_se_cb_C5, $07   ; 
- D 0 - I - 0x00F4E6 03:94D6: E6 94     .word sub_C5_94E6
- D 0 - I - 0x00F4E8 03:94D8: C5        .byte con_se_cb_C5, $04   ; 
- D 0 - I - 0x00F4EA 03:94DA: E6 94     .word sub_C5_94E6
- D 0 - I - 0x00F4EC 03:94DC: C5        .byte con_se_cb_C5, $0A   ; 
- D 0 - I - 0x00F4EE 03:94DE: E6 94     .word sub_C5_94E6
- D 0 - I - 0x00F4F0 03:94E0: C5        .byte con_se_cb_C5, $06   ; 
- D 0 - I - 0x00F4F2 03:94E2: E6 94     .word sub_C5_94E6
- D 0 - I - 0x00F4F4 03:94E4: 93        .byte con_se_cb_93, $0D   ; 
sub_C5_94E6:
- D 0 - I - 0x00F4F6 03:94E6: 06        .byte $06   ; 
- D 0 - I - 0x00F4F7 03:94E7: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00F4F8 03:94E8: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00F4F9 03:94E9: 80        .byte $80   ; 
- D 0 - I - 0x00F4FA 03:94EA: C2        .byte con_se_cb_C2   ; 
- D 0 - I - 0x00F4FB 03:94EB: 02        .byte $02   ; 
- D 0 - I - 0x00F4FC 03:94EC: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00F4FD 03:94ED: 80        .byte $80   ; 
- D 0 - I - 0x00F4FE 03:94EE: C3        .byte con_se_cb_C3   ; 
- D 0 - I - 0x00F4FF 03:94EF: BF        .byte con_se_cb_BF_rts   ; 



off_94F0_26_ch_03:
loc_A1_94F0:
- D 0 - I - 0x00F500 03:94F0: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F502 03:94F2: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00F503 03:94F3: E2        .byte con_se_cb_E2   ; 
- D 0 - I - 0x00F504 03:94F4: 93        .byte con_se_cb_93, $1D   ; 
- D 0 - I - 0x00F506 03:94F6: 9A        .byte con_se_cb_9A, $08   ; 
- D 0 - I - 0x00F508 03:94F8: 08        .byte $08   ; 
- D 0 - I - 0x00F509 03:94F9: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00F50B 03:94FB: BC        .byte con_se_cb_BC, $18   ; 
- D 0 - I - 0x00F50D 03:94FD: 81        .byte $81   ; 
- D 0 - I - 0x00F50E 03:94FE: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F50F 03:94FF: BC        .byte con_se_cb_BC, $18   ; 
- D 0 - I - 0x00F511 03:9501: 80        .byte $80   ; 
- D 0 - I - 0x00F512 03:9502: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F513 03:9503: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F514 03:9504: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x00F515 03:9505: 9A        .byte con_se_cb_9A, $0A   ; 
- D 0 - I - 0x00F517 03:9507: C5        .byte con_se_cb_C5, $23   ; 
- D 0 - I - 0x00F519 03:9509: AE 9F     .word sub_C5_9FAE
- D 0 - I - 0x00F51B 03:950B: C1        .byte con_se_cb_C1, $02   ; 
- D 0 - I - 0x00F51D 03:950D: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F51E 03:950E: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F51F 03:950F: CF 94     .word sub_BE_94CF
- D 0 - I - 0x00F521 03:9511: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x00F522 03:9512: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F524 03:9514: C5        .byte con_se_cb_C5, $23   ; 
- D 0 - I - 0x00F526 03:9516: AE 9F     .word sub_C5_9FAE
- D 0 - I - 0x00F528 03:9518: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F529 03:9519: AE 9F     .word sub_BE_9FAE
- D 0 - I - 0x00F52B 03:951B: C1        .byte con_se_cb_C1, $02   ; 
- D 0 - I - 0x00F52D 03:951D: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F52E 03:951E: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F52F 03:951F: CF 94     .word sub_BE_94CF
- D 0 - I - 0x00F531 03:9521: C5        .byte con_se_cb_C5, $14   ; 
- D 0 - I - 0x00F533 03:9523: E6 94     .word sub_C5_94E6
- D 0 - I - 0x00F535 03:9525: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x00F536 03:9526: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F538 03:9528: C5        .byte con_se_cb_C5, $23   ; 
- D 0 - I - 0x00F53A 03:952A: AE 9F     .word sub_C5_9FAE
- D 0 - I - 0x00F53C 03:952C: C1        .byte con_se_cb_C1, $02   ; 
- D 0 - I - 0x00F53E 03:952E: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F53F 03:952F: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F540 03:9530: CF 94     .word sub_BE_94CF
- D 0 - I - 0x00F542 03:9532: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x00F543 03:9533: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F545 03:9535: BC        .byte con_se_cb_BC, $03   ; 
- D 0 - I - 0x00F547 03:9537: C5        .byte con_se_cb_C5, $23   ; 
- D 0 - I - 0x00F549 03:9539: AE 9F     .word sub_C5_9FAE
- D 0 - I - 0x00F54B 03:953B: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F54C 03:953C: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F54D 03:953D: B7 9F     .word sub_BE_9FB7
- D 0 - I - 0x00F54F 03:953F: C1        .byte con_se_cb_C1, $02   ; 
- D 0 - I - 0x00F551 03:9541: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F552 03:9542: CF 94     .word sub_BE_94CF
- D 0 - I - 0x00F554 03:9544: C1        .byte con_se_cb_C1, $01   ; 
- D 0 - I - 0x00F556 03:9546: C5        .byte con_se_cb_C5, $14   ; 
- D 0 - I - 0x00F558 03:9548: E6 94     .word sub_C5_94E6
- D 0 - I - 0x00F55A 03:954A: C5        .byte con_se_cb_C5, $1D   ; 
- D 0 - I - 0x00F55C 03:954C: E6 94     .word sub_C5_94E6
- D 0 - I - 0x00F55E 03:954E: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F55F 03:954F: F0 94     .word loc_A1_94F0



_off026_music_9551_28_pause_menu:
; con_music_pause_menu
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00F561 03:9551: 0F        .byte %00001111   ;  
- D 0 - I - 0x00F562 03:9552: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00F564 03:9554: 5C 95     .word off_955C_28_ch_00
- D 0 - I - 0x00F566 03:9556: 9C 95     .word off_959C_28_ch_01
- D 0 - I - 0x00F568 03:9558: CC 95     .word off_95CC_28_ch_02
- D 0 - I - 0x00F56A 03:955A: F4 95     .word off_95F4_28_ch_03



off_955C_28_ch_00:
loc_A1_955C:
- D 0 - I - 0x00F56C 03:955C: BB        .byte con_se_cb_BB, $FF, $FF   ; 
- D 0 - I - 0x00F56F 03:955F: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F570 03:9560: 79 95     .word sub_BE_9579
- D 0 - I - 0x00F572 03:9562: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00F574 03:9564: 06        .byte $06   ; 
- D 0 - I - 0x00F575 03:9565: 80        .byte $80   ; 
- D 0 - I - 0x00F576 03:9566: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F577 03:9567: EC 9F     .word sub_BE_9FEC
- D 0 - I - 0x00F579 03:9569: 80        .byte $80   ; 
- D 0 - I - 0x00F57A 03:956A: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F57B 03:956B: 79 95     .word sub_BE_9579
- D 0 - I - 0x00F57D 03:956D: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F57E 03:956E: 93 95     .word sub_BE_9593
- D 0 - I - 0x00F580 03:9570: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F581 03:9571: EC 9F     .word sub_BE_9FEC
- D 0 - I - 0x00F583 03:9573: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F584 03:9574: EC 9F     .word sub_BE_9FEC
- D 0 - I - 0x00F586 03:9576: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F587 03:9577: 5C 95     .word loc_A1_955C



sub_BE_9579:
- D 0 - I - 0x00F589 03:9579: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F58A 03:957A: EC 9F     .word sub_BE_9FEC
- D 0 - I - 0x00F58C 03:957C: 80        .byte $80   ; 
- D 0 - I - 0x00F58D 03:957D: 80        .byte $80   ; 
- D 0 - I - 0x00F58E 03:957E: 80        .byte $80   ; 
- D 0 - I - 0x00F58F 03:957F: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F590 03:9580: 93 95     .word sub_BE_9593
- D 0 - I - 0x00F592 03:9582: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F593 03:9583: D3 99     .word sub_BE_99D3
- D 0 - I - 0x00F595 03:9585: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F596 03:9586: EC 9F     .word sub_BE_9FEC
- D 0 - I - 0x00F598 03:9588: 80        .byte $80   ; 
- D 0 - I - 0x00F599 03:9589: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F59A 03:958A: D3 99     .word sub_BE_99D3
- D 0 - I - 0x00F59C 03:958C: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00F59D 03:958D: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00F59F 03:958F: 80        .byte $80   ; 
- D 0 - I - 0x00F5A0 03:9590: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F5A1 03:9591: F5 9F     .word sub_BE_9FF5
sub_BE_9593:
- D 0 - I - 0x00F5A3 03:9593: 9A        .byte con_se_cb_9A, $04   ; 
- D 0 - I - 0x00F5A5 03:9595: DE        .byte con_se_cb_DE   ; 
- D 0 - I - 0x00F5A6 03:9596: 01        .byte $01   ; 
- D 0 - I - 0x00F5A7 03:9597: 8A        .byte $8A   ; 
- D 0 - I - 0x00F5A8 03:9598: D9        .byte con_se_cb_D9   ; 
- D 0 - I - 0x00F5A9 03:9599: 05        .byte $05   ; 
- D 0 - I - 0x00F5AA 03:959A: 86        .byte $86   ; 
- D 0 - I - 0x00F5AB 03:959B: BF        .byte con_se_cb_BF_rts   ; 



off_959C_28_ch_01:
loc_A1_959C:
- D 0 - I - 0x00F5AC 03:959C: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00F5AD 03:959D: 9B        .byte con_se_cb_9B, $05   ; 
- D 0 - I - 0x00F5AF 03:959F: C5        .byte con_se_cb_C5, $12   ; 
- D 0 - I - 0x00F5B1 03:95A1: AC 95     .word sub_C5_95AC
- D 0 - I - 0x00F5B3 03:95A3: 82        .byte $82   ; 
- D 0 - I - 0x00F5B4 03:95A4: C5        .byte con_se_cb_C5, $10   ; 
- D 0 - I - 0x00F5B6 03:95A6: AC 95     .word sub_C5_95AC
- D 0 - I - 0x00F5B8 03:95A8: 80        .byte $80   ; 
- D 0 - I - 0x00F5B9 03:95A9: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F5BA 03:95AA: 9C 95     .word loc_A1_959C



sub_C5_95AC:
- D 0 - I - 0x00F5BC 03:95AC: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F5BD 03:95AD: BC 95     .word sub_BE_95BC
- D 0 - I - 0x00F5BF 03:95AF: 14        .byte $14   ; 
- D 0 - I - 0x00F5C0 03:95B0: 8E        .byte $8E   ; 
- D 0 - I - 0x00F5C1 03:95B1: 0C        .byte $0C   ; 
- D 0 - I - 0x00F5C2 03:95B2: 8C        .byte $8C   ; 
- D 0 - I - 0x00F5C3 03:95B3: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F5C4 03:95B4: BC 95     .word sub_BE_95BC
- D 0 - I - 0x00F5C6 03:95B6: 0E        .byte $0E   ; 
- D 0 - I - 0x00F5C7 03:95B7: 8E        .byte $8E   ; 
- D 0 - I - 0x00F5C8 03:95B8: 06        .byte $06   ; 
- D 0 - I - 0x00F5C9 03:95B9: 8C        .byte $8C   ; 
- D 0 - I - 0x00F5CA 03:95BA: 87        .byte $87   ; 
- D 0 - I - 0x00F5CB 03:95BB: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_95BC:
- D 0 - I - 0x00F5CC 03:95BC: 24        .byte $24   ; 
- D 0 - I - 0x00F5CD 03:95BD: 80        .byte $80   ; 
- D 0 - I - 0x00F5CE 03:95BE: 18        .byte $18   ; 
- D 0 - I - 0x00F5CF 03:95BF: 87        .byte $87   ; 
- D 0 - I - 0x00F5D0 03:95C0: 02        .byte $02   ; 
- D 0 - I - 0x00F5D1 03:95C1: C1        .byte con_se_cb_C1, $10   ; 
- D 0 - I - 0x00F5D3 03:95C3: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00F5D4 03:95C4: 8E        .byte $8E   ; 
- D 0 - I - 0x00F5D5 03:95C5: C1        .byte con_se_cb_C1, $07   ; 
- D 0 - I - 0x00F5D7 03:95C7: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00F5D8 03:95C8: 8E        .byte $8E   ; 
- D 0 - I - 0x00F5D9 03:95C9: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F5DB 03:95CB: BF        .byte con_se_cb_BF_rts   ; 



off_95CC_28_ch_02:
loc_A1_95CC:
- D 0 - I - 0x00F5DC 03:95CC: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00F5DD 03:95CD: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00F5DE 03:95CE: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F5E0 03:95D0: 9A        .byte con_se_cb_9A, $0E   ; 
- D 0 - I - 0x00F5E2 03:95D2: C5        .byte con_se_cb_C5, $1D   ; 
- D 0 - I - 0x00F5E4 03:95D4: DD 95     .word sub_C5_95DD
- D 0 - I - 0x00F5E6 03:95D6: C5        .byte con_se_cb_C5, $1B   ; 
- D 0 - I - 0x00F5E8 03:95D8: DD 95     .word sub_C5_95DD
- D 0 - I - 0x00F5EA 03:95DA: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F5EB 03:95DB: CC 95     .word loc_A1_95CC



sub_C5_95DD:
- D 0 - I - 0x00F5ED 03:95DD: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00F5EF 03:95DF: 0C        .byte $0C   ; 
- D 0 - I - 0x00F5F0 03:95E0: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F5F1 03:95E1: 02        .byte $02   ; 
- D 0 - I - 0x00F5F2 03:95E2: 80        .byte $80   ; 
- D 0 - I - 0x00F5F3 03:95E3: 0A        .byte $0A   ; 
- D 0 - I - 0x00F5F4 03:95E4: 81        .byte $81   ; 
- D 0 - I - 0x00F5F5 03:95E5: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00F5F7 03:95E7: 0C        .byte $0C   ; 
- D 0 - I - 0x00F5F8 03:95E8: 88        .byte $88   ; 
- D 0 - I - 0x00F5F9 03:95E9: 06        .byte $06   ; 
- D 0 - I - 0x00F5FA 03:95EA: 81        .byte $81   ; 
- D 0 - I - 0x00F5FB 03:95EB: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F5FC 03:95EC: 87        .byte $87   ; 
- D 0 - I - 0x00F5FD 03:95ED: 81        .byte $81   ; 
- D 0 - I - 0x00F5FE 03:95EE: 88        .byte $88   ; 
- D 0 - I - 0x00F5FF 03:95EF: 81        .byte $81   ; 
- D 0 - I - 0x00F600 03:95F0: 8A        .byte $8A   ; 
- D 0 - I - 0x00F601 03:95F1: 81        .byte $81   ; 
- D 0 - I - 0x00F602 03:95F2: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F603 03:95F3: BF        .byte con_se_cb_BF_rts   ; 



off_95F4_28_ch_03:
loc_A1_95F4:
- D 0 - I - 0x00F604 03:95F4: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00F605 03:95F5: 9A        .byte con_se_cb_9A, $0E   ; 
- D 0 - I - 0x00F607 03:95F7: C5        .byte con_se_cb_C5, $1D   ; 
- D 0 - I - 0x00F609 03:95F9: 02 96     .word sub_C5_9602
- D 0 - I - 0x00F60B 03:95FB: C5        .byte con_se_cb_C5, $1B   ; 
- D 0 - I - 0x00F60D 03:95FD: 02 96     .word sub_C5_9602
- D 0 - I - 0x00F60F 03:95FF: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F610 03:9600: F4 95     .word loc_A1_95F4



sub_C5_9602:
- D 0 - I - 0x00F612 03:9602: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00F613 03:9603: C1        .byte con_se_cb_C1, $02   ; 
- D 0 - I - 0x00F615 03:9605: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00F617 03:9607: 0C        .byte $0C   ; 
- D 0 - I - 0x00F618 03:9608: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F619 03:9609: 02        .byte $02   ; 
- D 0 - I - 0x00F61A 03:960A: 80        .byte $80   ; 
- D 0 - I - 0x00F61B 03:960B: 0A        .byte $0A   ; 
- D 0 - I - 0x00F61C 03:960C: 81        .byte $81   ; 
- D 0 - I - 0x00F61D 03:960D: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x00F61E 03:960E: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F620 03:9610: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00F622 03:9612: 0C        .byte $0C   ; 
- D 0 - I - 0x00F623 03:9613: 84        .byte $84   ; 
- D 0 - I - 0x00F624 03:9614: 06        .byte $06   ; 
- D 0 - I - 0x00F625 03:9615: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F626 03:9616: 28 96     .word sub_BE_9628
- D 0 - I - 0x00F628 03:9618: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F629 03:9619: 83        .byte $83   ; 
- D 0 - I - 0x00F62A 03:961A: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F62B 03:961B: 28 96     .word sub_BE_9628
- D 0 - I - 0x00F62D 03:961D: 84        .byte $84   ; 
- D 0 - I - 0x00F62E 03:961E: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F62F 03:961F: 28 96     .word sub_BE_9628
- D 0 - I - 0x00F631 03:9621: 86        .byte $86   ; 
- D 0 - I - 0x00F632 03:9622: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00F633 03:9623: C1        .byte con_se_cb_C1, $02   ; 
- D 0 - I - 0x00F635 03:9625: 81        .byte $81   ; 
- D 0 - I - 0x00F636 03:9626: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F637 03:9627: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9628:
- D 0 - I - 0x00F638 03:9628: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00F639 03:9629: C1        .byte con_se_cb_C1, $02   ; 
- D 0 - I - 0x00F63B 03:962B: 81        .byte $81   ; 
- D 0 - I - 0x00F63C 03:962C: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x00F63D 03:962D: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F63F 03:962F: BF        .byte con_se_cb_BF_rts   ; 



_off026_music_9630_20_map:
; con_music_map
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00F640 03:9630: 0F        .byte %00001111   ;  
- D 0 - I - 0x00F641 03:9631: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00F643 03:9633: 3B 96     .word off_963B_20_ch_00
- D 0 - I - 0x00F645 03:9635: AF 96     .word off_96AF_20_ch_01
- D 0 - I - 0x00F647 03:9637: 13 97     .word off_9713_20_ch_02
- D 0 - I - 0x00F649 03:9639: 6D 97     .word off_976D_20_ch_03



off_963B_20_ch_00:
loc_A1_963B:
- D 0 - I - 0x00F64B 03:963B: BB        .byte con_se_cb_BB, $BF, $E0   ; 
- D 0 - I - 0x00F64E 03:963E: DC        .byte con_se_cb_DC   ; 
- D 0 - I - 0x00F64F 03:963F: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00F651 03:9641: 06        .byte $06   ; 
- D 0 - I - 0x00F652 03:9642: 8D        .byte $8D   ; 
- D 0 - I - 0x00F653 03:9643: 8D        .byte $8D   ; 
- D 0 - I - 0x00F654 03:9644: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F655 03:9645: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F656 03:9646: 90 96     .word sub_BE_9690
- D 0 - I - 0x00F658 03:9648: 06        .byte $06   ; 
- D 0 - I - 0x00F659 03:9649: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F65A 03:964A: 8D        .byte $8D   ; 
- D 0 - I - 0x00F65B 03:964B: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F65C 03:964C: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F65D 03:964D: DF 9F     .word sub_BE_9FDF
- D 0 - I - 0x00F65F 03:964F: DC        .byte con_se_cb_DC   ; 
- D 0 - I - 0x00F660 03:9650: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00F662 03:9652: 06        .byte $06   ; 
- D 0 - I - 0x00F663 03:9653: 8D        .byte $8D   ; 
- D 0 - I - 0x00F664 03:9654: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F665 03:9655: 93 95     .word sub_BE_9593
- D 0 - I - 0x00F667 03:9657: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F668 03:9658: 90 96     .word sub_BE_9690
- D 0 - I - 0x00F66A 03:965A: 0C        .byte $0C   ; 
- D 0 - I - 0x00F66B 03:965B: 8D        .byte $8D   ; 
- D 0 - I - 0x00F66C 03:965C: BC        .byte con_se_cb_BC, $07   ; 
- D 0 - I - 0x00F66E 03:965E: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F66F 03:965F: 97 96     .word sub_BE_9697
- D 0 - I - 0x00F671 03:9661: 12        .byte $12   ; 
- D 0 - I - 0x00F672 03:9662: 8D        .byte $8D   ; 
- D 0 - I - 0x00F673 03:9663: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F674 03:9664: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F675 03:9665: 97 96     .word sub_BE_9697
- D 0 - I - 0x00F677 03:9667: 0C        .byte $0C   ; 
- D 0 - I - 0x00F678 03:9668: 8D        .byte $8D   ; 
- D 0 - I - 0x00F679 03:9669: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F67A 03:966A: EC 9F     .word sub_BE_9FEC
- D 0 - I - 0x00F67C 03:966C: 12        .byte $12   ; 
- D 0 - I - 0x00F67D 03:966D: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F67E 03:966E: A3 96     .word sub_BE_96A3
- D 0 - I - 0x00F680 03:9670: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F681 03:9671: 8D        .byte $8D   ; 
- D 0 - I - 0x00F682 03:9672: 8D        .byte $8D   ; 
- D 0 - I - 0x00F683 03:9673: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F684 03:9674: 93 95     .word sub_BE_9593
- D 0 - I - 0x00F686 03:9676: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F687 03:9677: 93 95     .word sub_BE_9593
- D 0 - I - 0x00F689 03:9679: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F68A 03:967A: F5 9F     .word sub_BE_9FF5
- D 0 - I - 0x00F68C 03:967C: 06        .byte $06   ; 
- D 0 - I - 0x00F68D 03:967D: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F68E 03:967E: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F68F 03:967F: EC 9F     .word sub_BE_9FEC
- D 0 - I - 0x00F691 03:9681: 0C        .byte $0C   ; 
- D 0 - I - 0x00F692 03:9682: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F693 03:9683: A3 96     .word sub_BE_96A3
- D 0 - I - 0x00F695 03:9685: BC        .byte con_se_cb_BC, $09   ; 
- D 0 - I - 0x00F697 03:9687: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F698 03:9688: 97 96     .word sub_BE_9697
- D 0 - I - 0x00F69A 03:968A: 12        .byte $12   ; 
- D 0 - I - 0x00F69B 03:968B: 8D        .byte $8D   ; 
- D 0 - I - 0x00F69C 03:968C: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F69D 03:968D: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F69E 03:968E: 3B 96     .word loc_A1_963B



sub_BE_9690:
- D 0 - I - 0x00F6A0 03:9690: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F6A1 03:9691: 93 95     .word sub_BE_9593
- D 0 - I - 0x00F6A3 03:9693: DC        .byte con_se_cb_DC   ; 
- D 0 - I - 0x00F6A4 03:9694: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00F6A6 03:9696: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9697:
- D 0 - I - 0x00F6A7 03:9697: 06        .byte $06   ; 
- D 0 - I - 0x00F6A8 03:9698: 8D        .byte $8D   ; 
- D 0 - I - 0x00F6A9 03:9699: 8D        .byte $8D   ; 
- D 0 - I - 0x00F6AA 03:969A: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F6AB 03:969B: 8D        .byte $8D   ; 
- D 0 - I - 0x00F6AC 03:969C: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F6AD 03:969D: 93 95     .word sub_BE_9593
- D 0 - I - 0x00F6AF 03:969F: DC        .byte con_se_cb_DC   ; 
- D 0 - I - 0x00F6B0 03:96A0: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00F6B2 03:96A2: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_96A3:
- D 0 - I - 0x00F6B3 03:96A3: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F6B4 03:96A4: DC        .byte con_se_cb_DC   ; 
- D 0 - I - 0x00F6B5 03:96A5: 06        .byte $06   ; 
- D 0 - I - 0x00F6B6 03:96A6: 8D        .byte $8D   ; 
- D 0 - I - 0x00F6B7 03:96A7: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F6B8 03:96A8: 90 96     .word sub_BE_9690
- D 0 - I - 0x00F6BA 03:96AA: 0C        .byte $0C   ; 
- D 0 - I - 0x00F6BB 03:96AB: 8D        .byte $8D   ; 
- D 0 - I - 0x00F6BC 03:96AC: 06        .byte $06   ; 
- D 0 - I - 0x00F6BD 03:96AD: 8D        .byte $8D   ; 
- D 0 - I - 0x00F6BE 03:96AE: BF        .byte con_se_cb_BF_rts   ; 



off_96AF_20_ch_01:
loc_A1_96AF:
- D 0 - I - 0x00F6BF 03:96AF: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00F6C0 03:96B0: 93        .byte con_se_cb_93, $18   ; 
- D 0 - I - 0x00F6C2 03:96B2: C1        .byte con_se_cb_C1, $05   ; 
- D 0 - I - 0x00F6C4 03:96B4: 99        .byte con_se_cb_99, $05   ; 
- D 0 - I - 0x00F6C6 03:96B6: 06        .byte $06   ; 
- D 0 - I - 0x00F6C7 03:96B7: 82        .byte $82   ; 
- D 0 - I - 0x00F6C8 03:96B8: 0C        .byte $0C   ; 
- D 0 - I - 0x00F6C9 03:96B9: 82        .byte $82   ; 
- D 0 - I - 0x00F6CA 03:96BA: 85        .byte $85   ; 
- D 0 - I - 0x00F6CB 03:96BB: 82        .byte $82   ; 
- D 0 - I - 0x00F6CC 03:96BC: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F6CE 03:96BE: 99        .byte con_se_cb_99, $7F   ; 
- D 0 - I - 0x00F6D0 03:96C0: 36        .byte $36   ; 
- D 0 - I - 0x00F6D1 03:96C1: 92        .byte con_se_cb_92   ; 
- D 0 - I - 0x00F6D2 03:96C2: 89        .byte $89   ; 
- D 0 - I - 0x00F6D3 03:96C3: BC        .byte con_se_cb_BC, $03   ; 
- D 0 - I - 0x00F6D5 03:96C5: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F6D6 03:96C6: F0 96     .word sub_BE_96F0
- D 0 - I - 0x00F6D8 03:96C8: 12        .byte $12   ; 
- D 0 - I - 0x00F6D9 03:96C9: 82        .byte $82   ; 
- D 0 - I - 0x00F6DA 03:96CA: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F6DB 03:96CB: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F6DC 03:96CC: F0 96     .word sub_BE_96F0
- D 0 - I - 0x00F6DE 03:96CE: 8C        .byte $8C   ; 
- D 0 - I - 0x00F6DF 03:96CF: 54        .byte $54   ; 
- D 0 - I - 0x00F6E0 03:96D0: 8E        .byte $8E   ; 
- D 0 - I - 0x00F6E1 03:96D1: 99        .byte con_se_cb_99, $11   ; 
- D 0 - I - 0x00F6E3 03:96D3: 12        .byte $12   ; 
- D 0 - I - 0x00F6E4 03:96D4: 8C        .byte $8C   ; 
- D 0 - I - 0x00F6E5 03:96D5: 99        .byte con_se_cb_99, $05   ; 
- D 0 - I - 0x00F6E7 03:96D7: 30        .byte $30   ; 
- D 0 - I - 0x00F6E8 03:96D8: 8E        .byte $8E   ; 
- D 0 - I - 0x00F6E9 03:96D9: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00F6EA 03:96DA: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F6EB 03:96DB: 02 98     .word sub_BE_9802
- D 0 - I - 0x00F6ED 03:96DD: BC        .byte con_se_cb_BC, $03   ; 
- D 0 - I - 0x00F6EF 03:96DF: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F6F0 03:96E0: FF 96     .word sub_BE_96FF
- D 0 - I - 0x00F6F2 03:96E2: 80        .byte $80   ; 
- D 0 - I - 0x00F6F3 03:96E3: 99        .byte con_se_cb_99, $0A   ; 
- D 0 - I - 0x00F6F5 03:96E5: 0C        .byte $0C   ; 
- D 0 - I - 0x00F6F6 03:96E6: 82        .byte $82   ; 
- D 0 - I - 0x00F6F7 03:96E7: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F6F8 03:96E8: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F6F9 03:96E9: FF 96     .word sub_BE_96FF
- D 0 - I - 0x00F6FB 03:96EB: 12        .byte $12   ; 
- D 0 - I - 0x00F6FC 03:96EC: 8E        .byte $8E   ; 
- D 0 - I - 0x00F6FD 03:96ED: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F6FE 03:96EE: AF 96     .word loc_A1_96AF



sub_BE_96F0:
- D 0 - I - 0x00F700 03:96F0: 99        .byte con_se_cb_99, $05   ; 
- D 0 - I - 0x00F702 03:96F2: 06        .byte $06   ; 
- D 0 - I - 0x00F703 03:96F3: 8C        .byte $8C   ; 
- D 0 - I - 0x00F704 03:96F4: 8E        .byte $8E   ; 
- D 0 - I - 0x00F705 03:96F5: 12        .byte $12   ; 
- D 0 - I - 0x00F706 03:96F6: 82        .byte $82   ; 
- D 0 - I - 0x00F707 03:96F7: 82        .byte $82   ; 
- D 0 - I - 0x00F708 03:96F8: 06        .byte $06   ; 
- D 0 - I - 0x00F709 03:96F9: 8C        .byte $8C   ; 
- D 0 - I - 0x00F70A 03:96FA: 8E        .byte $8E   ; 
- D 0 - I - 0x00F70B 03:96FB: 82        .byte $82   ; 
- D 0 - I - 0x00F70C 03:96FC: 0C        .byte $0C   ; 
- D 0 - I - 0x00F70D 03:96FD: 82        .byte $82   ; 
- D 0 - I - 0x00F70E 03:96FE: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_96FF:
- D 0 - I - 0x00F70F 03:96FF: 99        .byte con_se_cb_99, $05   ; 
- D 0 - I - 0x00F711 03:9701: 06        .byte $06   ; 
- D 0 - I - 0x00F712 03:9702: 82        .byte $82   ; 
- D 0 - I - 0x00F713 03:9703: 0C        .byte $0C   ; 
- D 0 - I - 0x00F714 03:9704: 82        .byte $82   ; 
- D 0 - I - 0x00F715 03:9705: 85        .byte $85   ; 
- D 0 - I - 0x00F716 03:9706: 99        .byte con_se_cb_99, $10   ; 
- D 0 - I - 0x00F718 03:9708: 12        .byte $12   ; 
- D 0 - I - 0x00F719 03:9709: 87        .byte $87   ; 
- D 0 - I - 0x00F71A 03:970A: 99        .byte con_se_cb_99, $05   ; 
- D 0 - I - 0x00F71C 03:970C: 06        .byte $06   ; 
- D 0 - I - 0x00F71D 03:970D: 88        .byte $88   ; 
- D 0 - I - 0x00F71E 03:970E: 87        .byte $87   ; 
- D 0 - I - 0x00F71F 03:970F: 85        .byte $85   ; 
- D 0 - I - 0x00F720 03:9710: 82        .byte $82   ; 
- D 0 - I - 0x00F721 03:9711: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F722 03:9712: BF        .byte con_se_cb_BF_rts   ; 



off_9713_20_ch_02:
loc_A1_9713:
- D 0 - I - 0x00F723 03:9713: DA        .byte con_se_cb_DA   ; 
- D 0 - I - 0x00F724 03:9714: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00F725 03:9715: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F727 03:9717: C5        .byte con_se_cb_C5, $18   ; 
- D 0 - I - 0x00F729 03:9719: D0 97     .word sub_C5_97D0
- D 0 - I - 0x00F72B 03:971B: BC        .byte con_se_cb_BC, $0D   ; 
- D 0 - I - 0x00F72D 03:971D: 8C        .byte $8C   ; 
- D 0 - I - 0x00F72E 03:971E: 85        .byte $85   ; 
- D 0 - I - 0x00F72F 03:971F: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F730 03:9720: 8C        .byte $8C   ; 
- D 0 - I - 0x00F731 03:9721: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00F732 03:9722: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F733 03:9723: DA 97     .word sub_BE_97DA
- D 0 - I - 0x00F735 03:9725: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00F736 03:9726: 0E        .byte $0E   ; 
- D 0 - I - 0x00F737 03:9727: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F738 03:9728: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00F739 03:9729: 0C        .byte $0C   ; 
- D 0 - I - 0x00F73A 03:972A: 80        .byte $80   ; 
- D 0 - I - 0x00F73B 03:972B: 54        .byte $54   ; 
- D 0 - I - 0x00F73C 03:972C: 82        .byte $82   ; 
- D 0 - I - 0x00F73D 03:972D: 9A        .byte con_se_cb_9A, $18   ; 
- D 0 - I - 0x00F73F 03:972F: 12        .byte $12   ; 
- D 0 - I - 0x00F740 03:9730: 84        .byte $84   ; 
- D 0 - I - 0x00F741 03:9731: 9A        .byte con_se_cb_9A, $0A   ; 
- D 0 - I - 0x00F743 03:9733: 30        .byte $30   ; 
- D 0 - I - 0x00F744 03:9734: 85        .byte $85   ; 
- D 0 - I - 0x00F745 03:9735: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F746 03:9736: 02 98     .word sub_BE_9802
- D 0 - I - 0x00F748 03:9738: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F749 03:9739: 48 97     .word sub_BE_9748
- D 0 - I - 0x00F74B 03:973B: 24        .byte $24   ; 
- D 0 - I - 0x00F74C 03:973C: 82        .byte $82   ; 
- D 0 - I - 0x00F74D 03:973D: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F74E 03:973E: 48 97     .word sub_BE_9748
- D 0 - I - 0x00F750 03:9740: 12        .byte $12   ; 
- D 0 - I - 0x00F751 03:9741: 82        .byte $82   ; 
- D 0 - I - 0x00F752 03:9742: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F753 03:9743: 0E 98     .word sub_BE_980E
- D 0 - I - 0x00F755 03:9745: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F756 03:9746: 13 97     .word loc_A1_9713



sub_BE_9748:
- D 0 - I - 0x00F758 03:9748: 9A        .byte con_se_cb_9A, $20   ; 
- D 0 - I - 0x00F75A 03:974A: 18        .byte $18   ; 
- D 0 - I - 0x00F75B 03:974B: 85        .byte $85   ; 
- D 0 - I - 0x00F75C 03:974C: 9A        .byte con_se_cb_9A, $0A   ; 
- D 0 - I - 0x00F75E 03:974E: 06        .byte $06   ; 
- D 0 - I - 0x00F75F 03:974F: 84        .byte $84   ; 
- D 0 - I - 0x00F760 03:9750: 85        .byte $85   ; 
- D 0 - I - 0x00F761 03:9751: 84        .byte $84   ; 
- D 0 - I - 0x00F762 03:9752: 0C        .byte $0C   ; 
- D 0 - I - 0x00F763 03:9753: 82        .byte $82   ; 
- D 0 - I - 0x00F764 03:9754: 06        .byte $06   ; 
- D 0 - I - 0x00F765 03:9755: 80        .byte $80   ; 
- D 0 - I - 0x00F766 03:9756: 9A        .byte con_se_cb_9A, $19   ; 
- D 0 - I - 0x00F768 03:9758: 12        .byte $12   ; 
- D 0 - I - 0x00F769 03:9759: 82        .byte $82   ; 
- D 0 - I - 0x00F76A 03:975A: 06        .byte $06   ; 
- D 0 - I - 0x00F76B 03:975B: 84        .byte $84   ; 
- D 0 - I - 0x00F76C 03:975C: 85        .byte $85   ; 
- D 0 - I - 0x00F76D 03:975D: 87        .byte $87   ; 
- D 0 - I - 0x00F76E 03:975E: 18        .byte $18   ; 
- D 0 - I - 0x00F76F 03:975F: 89        .byte $89   ; 
- D 0 - I - 0x00F770 03:9760: 9A        .byte con_se_cb_9A, $0A   ; 
- D 0 - I - 0x00F772 03:9762: 06        .byte $06   ; 
- D 0 - I - 0x00F773 03:9763: 87        .byte $87   ; 
- D 0 - I - 0x00F774 03:9764: 85        .byte $85   ; 
- D 0 - I - 0x00F775 03:9765: 82        .byte $82   ; 
- D 0 - I - 0x00F776 03:9766: 0C        .byte $0C   ; 
- D 0 - I - 0x00F777 03:9767: 84        .byte $84   ; 
- D 0 - I - 0x00F778 03:9768: 06        .byte $06   ; 
- D 0 - I - 0x00F779 03:9769: 80        .byte $80   ; 
- D 0 - I - 0x00F77A 03:976A: 9A        .byte con_se_cb_9A, $20   ; 
- D 0 - I - 0x00F77C 03:976C: BF        .byte con_se_cb_BF_rts   ; 



off_976D_20_ch_03:
loc_A1_976D:
- D 0 - I - 0x00F77D 03:976D: D7        .byte con_se_cb_D7   ; 
- D 0 - I - 0x00F77E 03:976E: E2        .byte con_se_cb_E2   ; 
- D 0 - I - 0x00F77F 03:976F: C1        .byte con_se_cb_C1, $FB   ; 
- D 0 - I - 0x00F781 03:9771: C5        .byte con_se_cb_C5, $0C   ; 
- D 0 - I - 0x00F783 03:9773: D0 97     .word sub_C5_97D0
- D 0 - I - 0x00F785 03:9775: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F787 03:9777: BC        .byte con_se_cb_BC, $0D   ; 
- D 0 - I - 0x00F789 03:9779: 87        .byte $87   ; 
- D 0 - I - 0x00F78A 03:977A: 8D        .byte $8D   ; 
- D 0 - I - 0x00F78B 03:977B: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F78C 03:977C: 87        .byte $87   ; 
- D 0 - I - 0x00F78D 03:977D: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F78E 03:977E: C1        .byte con_se_cb_C1, $02   ; 
- D 0 - I - 0x00F790 03:9780: 0E        .byte $0E   ; 
- D 0 - I - 0x00F791 03:9781: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00F792 03:9782: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F793 03:9783: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F794 03:9784: DA 97     .word sub_BE_97DA
- D 0 - I - 0x00F796 03:9786: E2        .byte con_se_cb_E2   ; 
- D 0 - I - 0x00F797 03:9787: 0C        .byte $0C   ; 
- D 0 - I - 0x00F798 03:9788: 80        .byte $80   ; 
- D 0 - I - 0x00F799 03:9789: 54        .byte $54   ; 
- D 0 - I - 0x00F79A 03:978A: 82        .byte $82   ; 
- D 0 - I - 0x00F79B 03:978B: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F79D 03:978D: 9A        .byte con_se_cb_9A, $18   ; 
- D 0 - I - 0x00F79F 03:978F: 12        .byte $12   ; 
- D 0 - I - 0x00F7A0 03:9790: 87        .byte $87   ; 
- D 0 - I - 0x00F7A1 03:9791: 9A        .byte con_se_cb_9A, $0A   ; 
- D 0 - I - 0x00F7A3 03:9793: 30        .byte $30   ; 
- D 0 - I - 0x00F7A4 03:9794: 89        .byte $89   ; 
- D 0 - I - 0x00F7A5 03:9795: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F7A6 03:9796: 02 98     .word sub_BE_9802
- D 0 - I - 0x00F7A8 03:9798: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00F7A9 03:9799: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F7AA 03:979A: AB 97     .word sub_BE_97AB
- D 0 - I - 0x00F7AC 03:979C: 24        .byte $24   ; 
- D 0 - I - 0x00F7AD 03:979D: 85        .byte $85   ; 
- D 0 - I - 0x00F7AE 03:979E: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F7AF 03:979F: AB 97     .word sub_BE_97AB
- D 0 - I - 0x00F7B1 03:97A1: 12        .byte $12   ; 
- D 0 - I - 0x00F7B2 03:97A2: 85        .byte $85   ; 
- D 0 - I - 0x00F7B3 03:97A3: C1        .byte con_se_cb_C1, $02   ; 
- D 0 - I - 0x00F7B5 03:97A5: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F7B6 03:97A6: 0E 98     .word sub_BE_980E
- D 0 - I - 0x00F7B8 03:97A8: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F7B9 03:97A9: 6D 97     .word loc_A1_976D



sub_BE_97AB:
- D 0 - I - 0x00F7BB 03:97AB: 9A        .byte con_se_cb_9A, $20   ; 
- D 0 - I - 0x00F7BD 03:97AD: 18        .byte $18   ; 
- D 0 - I - 0x00F7BE 03:97AE: 89        .byte $89   ; 
- D 0 - I - 0x00F7BF 03:97AF: 9A        .byte con_se_cb_9A, $0A   ; 
- D 0 - I - 0x00F7C1 03:97B1: 06        .byte $06   ; 
- D 0 - I - 0x00F7C2 03:97B2: 87        .byte $87   ; 
- D 0 - I - 0x00F7C3 03:97B3: 89        .byte $89   ; 
- D 0 - I - 0x00F7C4 03:97B4: 87        .byte $87   ; 
- D 0 - I - 0x00F7C5 03:97B5: 0C        .byte $0C   ; 
- D 0 - I - 0x00F7C6 03:97B6: 85        .byte $85   ; 
- D 0 - I - 0x00F7C7 03:97B7: 06        .byte $06   ; 
- D 0 - I - 0x00F7C8 03:97B8: 84        .byte $84   ; 
- D 0 - I - 0x00F7C9 03:97B9: 9A        .byte con_se_cb_9A, $19   ; 
- D 0 - I - 0x00F7CB 03:97BB: 12        .byte $12   ; 
- D 0 - I - 0x00F7CC 03:97BC: 85        .byte $85   ; 
- D 0 - I - 0x00F7CD 03:97BD: 06        .byte $06   ; 
- D 0 - I - 0x00F7CE 03:97BE: 87        .byte $87   ; 
- D 0 - I - 0x00F7CF 03:97BF: 89        .byte $89   ; 
- D 0 - I - 0x00F7D0 03:97C0: 8A        .byte $8A   ; 
- D 0 - I - 0x00F7D1 03:97C1: 18        .byte $18   ; 
- D 0 - I - 0x00F7D2 03:97C2: 8C        .byte $8C   ; 
- D 0 - I - 0x00F7D3 03:97C3: 9A        .byte con_se_cb_9A, $0A   ; 
- D 0 - I - 0x00F7D5 03:97C5: 06        .byte $06   ; 
- D 0 - I - 0x00F7D6 03:97C6: 8A        .byte $8A   ; 
- D 0 - I - 0x00F7D7 03:97C7: 89        .byte $89   ; 
- D 0 - I - 0x00F7D8 03:97C8: 85        .byte $85   ; 
- D 0 - I - 0x00F7D9 03:97C9: 0C        .byte $0C   ; 
- D 0 - I - 0x00F7DA 03:97CA: 87        .byte $87   ; 
- D 0 - I - 0x00F7DB 03:97CB: 06        .byte $06   ; 
- D 0 - I - 0x00F7DC 03:97CC: 84        .byte $84   ; 
- D 0 - I - 0x00F7DD 03:97CD: 9A        .byte con_se_cb_9A, $20   ; 
- D 0 - I - 0x00F7DF 03:97CF: BF        .byte con_se_cb_BF_rts   ; 



sub_C5_97D0:
- D 0 - I - 0x00F7E0 03:97D0: 9A        .byte con_se_cb_9A, $08   ; 
- D 0 - I - 0x00F7E2 03:97D2: 06        .byte $06   ; 
- D 0 - I - 0x00F7E3 03:97D3: 82        .byte $82   ; 
- D 0 - I - 0x00F7E4 03:97D4: 0C        .byte $0C   ; 
- D 0 - I - 0x00F7E5 03:97D5: 82        .byte $82   ; 
- D 0 - I - 0x00F7E6 03:97D6: 85        .byte $85   ; 
- D 0 - I - 0x00F7E7 03:97D7: 82        .byte $82   ; 
- D 0 - I - 0x00F7E8 03:97D8: 02        .byte $02   ; 
- D 0 - I - 0x00F7E9 03:97D9: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_97DA:
- D 0 - I - 0x00F7EA 03:97DA: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x00F7EB 03:97DB: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F7EC 03:97DC: F5 97     .word sub_BE_97F5
- D 0 - I - 0x00F7EE 03:97DE: 80        .byte $80   ; 
- D 0 - I - 0x00F7EF 03:97DF: 9A        .byte con_se_cb_9A, $60   ; 
- D 0 - I - 0x00F7F1 03:97E1: 54        .byte $54   ; 
- D 0 - I - 0x00F7F2 03:97E2: 84        .byte $84   ; 
- D 0 - I - 0x00F7F3 03:97E3: 9A        .byte con_se_cb_9A, $08   ; 
- D 0 - I - 0x00F7F5 03:97E5: 06        .byte $06   ; 
- D 0 - I - 0x00F7F6 03:97E6: 84        .byte $84   ; 
- D 0 - I - 0x00F7F7 03:97E7: 85        .byte $85   ; 
- D 0 - I - 0x00F7F8 03:97E8: 87        .byte $87   ; 
- D 0 - I - 0x00F7F9 03:97E9: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F7FA 03:97EA: F5 97     .word sub_BE_97F5
- D 0 - I - 0x00F7FC 03:97EC: 8C        .byte $8C   ; 
- D 0 - I - 0x00F7FD 03:97ED: 9A        .byte con_se_cb_9A, $56   ; 
- D 0 - I - 0x00F7FF 03:97EF: 46        .byte $46   ; 
- D 0 - I - 0x00F800 03:97F0: 89        .byte $89   ; 
- D 0 - I - 0x00F801 03:97F1: DC        .byte con_se_cb_DC   ; 
- D 0 - I - 0x00F802 03:97F2: 9A        .byte con_se_cb_9A, $0B   ; 
- D 0 - I - 0x00F804 03:97F4: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_97F5:
- D 0 - I - 0x00F805 03:97F5: 9A        .byte con_se_cb_9A, $50   ; 
- D 0 - I - 0x00F807 03:97F7: 30        .byte $30   ; 
- D 0 - I - 0x00F808 03:97F8: 89        .byte $89   ; 
- D 0 - I - 0x00F809 03:97F9: 9A        .byte con_se_cb_9A, $08   ; 
- D 0 - I - 0x00F80B 03:97FB: 06        .byte $06   ; 
- D 0 - I - 0x00F80C 03:97FC: 87        .byte $87   ; 
- D 0 - I - 0x00F80D 03:97FD: 89        .byte $89   ; 
- D 0 - I - 0x00F80E 03:97FE: 87        .byte $87   ; 
- D 0 - I - 0x00F80F 03:97FF: 0C        .byte $0C   ; 
- D 0 - I - 0x00F810 03:9800: 85        .byte $85   ; 
- D 0 - I - 0x00F811 03:9801: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9802:
- D 0 - I - 0x00F812 03:9802: DA        .byte con_se_cb_DA   ; 
- D 0 - I - 0x00F813 03:9803: 06        .byte $06   ; 
- D 0 - I - 0x00F814 03:9804: 89        .byte $89   ; 
- D 0 - I - 0x00F815 03:9805: 88        .byte $88   ; 
- D 0 - I - 0x00F816 03:9806: 87        .byte $87   ; 
- D 0 - I - 0x00F817 03:9807: 0C        .byte $0C   ; 
- D 0 - I - 0x00F818 03:9808: 85        .byte $85   ; 
- D 0 - I - 0x00F819 03:9809: 9A        .byte con_se_cb_9A, $10   ; 
- D 0 - I - 0x00F81B 03:980B: 12        .byte $12   ; 
- D 0 - I - 0x00F81C 03:980C: 82        .byte $82   ; 
- D 0 - I - 0x00F81D 03:980D: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_980E:
- D 0 - I - 0x00F81E 03:980E: 9A        .byte con_se_cb_9A, $0C   ; 
- D 0 - I - 0x00F820 03:9810: 08        .byte $08   ; 
- D 0 - I - 0x00F821 03:9811: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00F822 03:9812: 8E        .byte $8E   ; 
- D 0 - I - 0x00F823 03:9813: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00F824 03:9814: 0A        .byte $0A   ; 
- D 0 - I - 0x00F825 03:9815: 8E        .byte $8E   ; 
- D 0 - I - 0x00F826 03:9816: BF        .byte con_se_cb_BF_rts   ; 



_off026_music_9817_24_dialogue_1:
; con_music_dialogue_1
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00F827 03:9817: 0E        .byte %00001110   ;  
- D 0 - I - 0x00F828 03:9818: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00F82A 03:981A: 20 98     .word off_9820_24_ch_01
- D 0 - I - 0x00F82C 03:981C: 3C 98     .word off_983C_24_ch_02
- D 0 - I - 0x00F82E 03:981E: 5E 98     .word off_985E_24_ch_03



off_9820_24_ch_01:
- D 0 - I - 0x00F830 03:9820: BB        .byte con_se_cb_BB, $99, $99   ; 
- D 0 - I - 0x00F833 03:9823: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00F834 03:9824: 93        .byte con_se_cb_93, $27   ; 
- D 0 - I - 0x00F836 03:9826: 99        .byte con_se_cb_99, $05   ; 
- D 0 - I - 0x00F838 03:9828: 60        .byte $60   ; 
- D 0 - I - 0x00F839 03:9829: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F83A 03:982A: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F83B 03:982B: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F83C 03:982C: 06        .byte $06   ; 
loc_A1_982D:
- D 0 - I - 0x00F83D 03:982D: 8A        .byte $8A   ; 
- D 0 - I - 0x00F83E 03:982E: 8A        .byte $8A   ; 
- D 0 - I - 0x00F83F 03:982F: 82        .byte $82   ; 
- D 0 - I - 0x00F840 03:9830: 82        .byte $82   ; 
- D 0 - I - 0x00F841 03:9831: 83        .byte $83   ; 
- D 0 - I - 0x00F842 03:9832: 83        .byte $83   ; 
- D 0 - I - 0x00F843 03:9833: 80        .byte $80   ; 
- D 0 - I - 0x00F844 03:9834: 80        .byte $80   ; 
- D 0 - I - 0x00F845 03:9835: 89        .byte $89   ; 
- D 0 - I - 0x00F846 03:9836: 89        .byte $89   ; 
- D 0 - I - 0x00F847 03:9837: 83        .byte $83   ; 
- D 0 - I - 0x00F848 03:9838: 83        .byte $83   ; 
- D 0 - I - 0x00F849 03:9839: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F84A 03:983A: 2D 98     .word loc_A1_982D



off_983C_24_ch_02:
- D 0 - I - 0x00F84C 03:983C: C5        .byte con_se_cb_C5, $22   ; 
- D 0 - I - 0x00F84E 03:983E: 7D 98     .word sub_C5_987D
loc_A1_9840:
- D 0 - I - 0x00F850 03:9840: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00F851 03:9841: 93        .byte con_se_cb_93, $FF   ; 
- D 0 - I - 0x00F853 03:9843: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00F854 03:9844: 9A        .byte con_se_cb_9A, $78   ; 
- D 0 - I - 0x00F856 03:9846: 30        .byte $30   ; 
- D 0 - I - 0x00F857 03:9847: 84        .byte $84   ; 
- D 0 - I - 0x00F858 03:9848: 18        .byte $18   ; 
- D 0 - I - 0x00F859 03:9849: 8B        .byte $8B   ; 
- D 0 - I - 0x00F85A 03:984A: 8A        .byte $8A   ; 
- D 0 - I - 0x00F85B 03:984B: 89        .byte $89   ; 
- D 0 - I - 0x00F85C 03:984C: 83        .byte $83   ; 
- D 0 - I - 0x00F85D 03:984D: 88        .byte $88   ; 
- D 0 - I - 0x00F85E 03:984E: 3C        .byte $3C   ; 
- D 0 - I - 0x00F85F 03:984F: 81        .byte $81   ; 
- D 0 - I - 0x00F860 03:9850: C1        .byte con_se_cb_C1, $7F   ; 
- D 0 - I - 0x00F862 03:9852: 0C        .byte $0C   ; 
- D 0 - I - 0x00F863 03:9853: 81        .byte $81   ; 
- D 0 - I - 0x00F864 03:9854: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F866 03:9856: 86        .byte $86   ; 
- D 0 - I - 0x00F867 03:9857: 18        .byte $18   ; 
- D 0 - I - 0x00F868 03:9858: 82        .byte $82   ; 
- D 0 - I - 0x00F869 03:9859: 0C        .byte $0C   ; 
- D 0 - I - 0x00F86A 03:985A: 85        .byte $85   ; 
- D 0 - I - 0x00F86B 03:985B: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F86C 03:985C: 40 98     .word loc_A1_9840



off_985E_24_ch_03:
- D 0 - I - 0x00F86E 03:985E: C5        .byte con_se_cb_C5, $1D   ; 
- D 0 - I - 0x00F870 03:9860: 7D 98     .word sub_C5_987D
loc_A1_9862:
- D 0 - I - 0x00F872 03:9862: C5        .byte con_se_cb_C5, $28   ; 
- D 0 - I - 0x00F874 03:9864: 14 99     .word sub_C5_9914
- D 0 - I - 0x00F876 03:9866: C5        .byte con_se_cb_C5, $23   ; 
- D 0 - I - 0x00F878 03:9868: 14 99     .word sub_C5_9914
- D 0 - I - 0x00F87A 03:986A: C5        .byte con_se_cb_C5, $25   ; 
- D 0 - I - 0x00F87C 03:986C: 14 99     .word sub_C5_9914
- D 0 - I - 0x00F87E 03:986E: C5        .byte con_se_cb_C5, $20   ; 
- D 0 - I - 0x00F880 03:9870: 14 99     .word sub_C5_9914
- D 0 - I - 0x00F882 03:9872: C5        .byte con_se_cb_C5, $27   ; 
- D 0 - I - 0x00F884 03:9874: 14 99     .word sub_C5_9914
- D 0 - I - 0x00F886 03:9876: C5        .byte con_se_cb_C5, $22   ; 
- D 0 - I - 0x00F888 03:9878: 14 99     .word sub_C5_9914
- D 0 - I - 0x00F88A 03:987A: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F88B 03:987B: 62 98     .word loc_A1_9862



sub_C5_987D:
- D 0 - I - 0x00F88D 03:987D: E2        .byte con_se_cb_E2   ; 
- D 0 - I - 0x00F88E 03:987E: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00F890 03:9880: 99        .byte con_se_cb_99, $03   ; 
- D 0 - I - 0x00F892 03:9882: 0C        .byte $0C   ; 
- D 0 - I - 0x00F893 03:9883: D1        .byte con_se_cb_D1   ; 
- D 0 - I - 0x00F894 03:9884: 88        .byte $88   ; 
- D 0 - I - 0x00F895 03:9885: 83        .byte $83   ; 
- D 0 - I - 0x00F896 03:9886: 85        .byte $85   ; 
- D 0 - I - 0x00F897 03:9887: 80        .byte $80   ; 
- D 0 - I - 0x00F898 03:9888: 06        .byte $06   ; 
- D 0 - I - 0x00F899 03:9889: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F89A 03:988A: 87        .byte $87   ; 
- D 0 - I - 0x00F89B 03:988B: D1        .byte con_se_cb_D1   ; 
- D 0 - I - 0x00F89C 03:988C: 87        .byte $87   ; 
- D 0 - I - 0x00F89D 03:988D: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F89E 03:988E: 82        .byte $82   ; 
- D 0 - I - 0x00F89F 03:988F: D1        .byte con_se_cb_D1   ; 
- D 0 - I - 0x00F8A0 03:9890: 82        .byte $82   ; 
- D 0 - I - 0x00F8A1 03:9891: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00F8A2 03:9892: 88        .byte $88   ; 
- D 0 - I - 0x00F8A3 03:9893: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F8A4 03:9894: 88        .byte $88   ; 
- D 0 - I - 0x00F8A5 03:9895: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00F8A6 03:9896: 83        .byte $83   ; 
- D 0 - I - 0x00F8A7 03:9897: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F8A8 03:9898: 83        .byte $83   ; 
- D 0 - I - 0x00F8A9 03:9899: 99        .byte con_se_cb_99, $78   ; 
- D 0 - I - 0x00F8AB 03:989B: 03        .byte $03   ; 
- D 0 - I - 0x00F8AC 03:989C: D4        .byte con_se_cb_D4   ; 
- D 0 - I - 0x00F8AD 03:989D: 85        .byte $85   ; 
- D 0 - I - 0x00F8AE 03:989E: D1        .byte con_se_cb_D1   ; 
- D 0 - I - 0x00F8AF 03:989F: 85        .byte $85   ; 
- D 0 - I - 0x00F8B0 03:98A0: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F8B1 03:98A1: 85        .byte $85   ; 
- D 0 - I - 0x00F8B2 03:98A2: D1        .byte con_se_cb_D1   ; 
- D 0 - I - 0x00F8B3 03:98A3: 85        .byte $85   ; 
- D 0 - I - 0x00F8B4 03:98A4: D4        .byte con_se_cb_D4   ; 
- D 0 - I - 0x00F8B5 03:98A5: 80        .byte $80   ; 
- D 0 - I - 0x00F8B6 03:98A6: D1        .byte con_se_cb_D1   ; 
- D 0 - I - 0x00F8B7 03:98A7: 80        .byte $80   ; 
- D 0 - I - 0x00F8B8 03:98A8: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F8B9 03:98A9: 80        .byte $80   ; 
- D 0 - I - 0x00F8BA 03:98AA: D1        .byte con_se_cb_D1   ; 
- D 0 - I - 0x00F8BB 03:98AB: 80        .byte $80   ; 
- D 0 - I - 0x00F8BC 03:98AC: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x00F8BD 03:98AD: 87        .byte $87   ; 
- D 0 - I - 0x00F8BE 03:98AE: D1        .byte con_se_cb_D1   ; 
- D 0 - I - 0x00F8BF 03:98AF: 87        .byte $87   ; 
- D 0 - I - 0x00F8C0 03:98B0: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00F8C1 03:98B1: 87        .byte $87   ; 
- D 0 - I - 0x00F8C2 03:98B2: D1        .byte con_se_cb_D1   ; 
- D 0 - I - 0x00F8C3 03:98B3: 87        .byte $87   ; 
- D 0 - I - 0x00F8C4 03:98B4: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x00F8C5 03:98B5: 82        .byte $82   ; 
- D 0 - I - 0x00F8C6 03:98B6: D1        .byte con_se_cb_D1   ; 
- D 0 - I - 0x00F8C7 03:98B7: 82        .byte $82   ; 
- D 0 - I - 0x00F8C8 03:98B8: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00F8C9 03:98B9: 82        .byte $82   ; 
- D 0 - I - 0x00F8CA 03:98BA: D1        .byte con_se_cb_D1   ; 
- D 0 - I - 0x00F8CB 03:98BB: 82        .byte $82   ; 
- D 0 - I - 0x00F8CC 03:98BC: D6        .byte con_se_cb_D6   ; 
- D 0 - I - 0x00F8CD 03:98BD: 88        .byte $88   ; 
- D 0 - I - 0x00F8CE 03:98BE: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F8CF 03:98BF: 88        .byte $88   ; 
- D 0 - I - 0x00F8D0 03:98C0: D4        .byte con_se_cb_D4   ; 
- D 0 - I - 0x00F8D1 03:98C1: 88        .byte $88   ; 
- D 0 - I - 0x00F8D2 03:98C2: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F8D3 03:98C3: 88        .byte $88   ; 
- D 0 - I - 0x00F8D4 03:98C4: D6        .byte con_se_cb_D6   ; 
- D 0 - I - 0x00F8D5 03:98C5: 83        .byte $83   ; 
- D 0 - I - 0x00F8D6 03:98C6: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F8D7 03:98C7: 83        .byte $83   ; 
- D 0 - I - 0x00F8D8 03:98C8: D4        .byte con_se_cb_D4   ; 
- D 0 - I - 0x00F8D9 03:98C9: 83        .byte $83   ; 
- D 0 - I - 0x00F8DA 03:98CA: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F8DB 03:98CB: 83        .byte $83   ; 
- D 0 - I - 0x00F8DC 03:98CC: D7        .byte con_se_cb_D7   ; 
- D 0 - I - 0x00F8DD 03:98CD: 85        .byte $85   ; 
- D 0 - I - 0x00F8DE 03:98CE: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F8DF 03:98CF: 85        .byte $85   ; 
- D 0 - I - 0x00F8E0 03:98D0: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x00F8E1 03:98D1: 85        .byte $85   ; 
- D 0 - I - 0x00F8E2 03:98D2: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F8E3 03:98D3: 85        .byte $85   ; 
- D 0 - I - 0x00F8E4 03:98D4: D7        .byte con_se_cb_D7   ; 
- D 0 - I - 0x00F8E5 03:98D5: 80        .byte $80   ; 
- D 0 - I - 0x00F8E6 03:98D6: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F8E7 03:98D7: 80        .byte $80   ; 
- D 0 - I - 0x00F8E8 03:98D8: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x00F8E9 03:98D9: 80        .byte $80   ; 
- D 0 - I - 0x00F8EA 03:98DA: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F8EB 03:98DB: 80        .byte $80   ; 
- D 0 - I - 0x00F8EC 03:98DC: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00F8ED 03:98DD: 87        .byte $87   ; 
- D 0 - I - 0x00F8EE 03:98DE: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00F8EF 03:98DF: 87        .byte $87   ; 
- D 0 - I - 0x00F8F0 03:98E0: D6        .byte con_se_cb_D6   ; 
- D 0 - I - 0x00F8F1 03:98E1: 87        .byte $87   ; 
- D 0 - I - 0x00F8F2 03:98E2: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00F8F3 03:98E3: 87        .byte $87   ; 
- D 0 - I - 0x00F8F4 03:98E4: D9        .byte con_se_cb_D9   ; 
- D 0 - I - 0x00F8F5 03:98E5: 82        .byte $82   ; 
- D 0 - I - 0x00F8F6 03:98E6: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00F8F7 03:98E7: 82        .byte $82   ; 
- D 0 - I - 0x00F8F8 03:98E8: D6        .byte con_se_cb_D6   ; 
- D 0 - I - 0x00F8F9 03:98E9: 82        .byte $82   ; 
- D 0 - I - 0x00F8FA 03:98EA: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00F8FB 03:98EB: 82        .byte $82   ; 
- D 0 - I - 0x00F8FC 03:98EC: DA        .byte con_se_cb_DA   ; 
- D 0 - I - 0x00F8FD 03:98ED: 88        .byte $88   ; 
- D 0 - I - 0x00F8FE 03:98EE: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00F8FF 03:98EF: 88        .byte $88   ; 
- D 0 - I - 0x00F900 03:98F0: D7        .byte con_se_cb_D7   ; 
- D 0 - I - 0x00F901 03:98F1: 88        .byte $88   ; 
- D 0 - I - 0x00F902 03:98F2: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00F903 03:98F3: 88        .byte $88   ; 
- D 0 - I - 0x00F904 03:98F4: DB        .byte con_se_cb_DB   ; 
- D 0 - I - 0x00F905 03:98F5: 83        .byte $83   ; 
- D 0 - I - 0x00F906 03:98F6: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00F907 03:98F7: 83        .byte $83   ; 
- D 0 - I - 0x00F908 03:98F8: D7        .byte con_se_cb_D7   ; 
- D 0 - I - 0x00F909 03:98F9: 83        .byte $83   ; 
- D 0 - I - 0x00F90A 03:98FA: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00F90B 03:98FB: 83        .byte $83   ; 
- D 0 - I - 0x00F90C 03:98FC: DC        .byte con_se_cb_DC   ; 
- D 0 - I - 0x00F90D 03:98FD: 85        .byte $85   ; 
- D 0 - I - 0x00F90E 03:98FE: D4        .byte con_se_cb_D4   ; 
- D 0 - I - 0x00F90F 03:98FF: 85        .byte $85   ; 
- D 0 - I - 0x00F910 03:9900: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00F911 03:9901: 85        .byte $85   ; 
- D 0 - I - 0x00F912 03:9902: D4        .byte con_se_cb_D4   ; 
- D 0 - I - 0x00F913 03:9903: 85        .byte $85   ; 
- D 0 - I - 0x00F914 03:9904: DD        .byte con_se_cb_DD   ; 
- D 0 - I - 0x00F915 03:9905: 80        .byte $80   ; 
- D 0 - I - 0x00F916 03:9906: D4        .byte con_se_cb_D4   ; 
- D 0 - I - 0x00F917 03:9907: 80        .byte $80   ; 
- D 0 - I - 0x00F918 03:9908: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00F919 03:9909: 80        .byte $80   ; 
- D 0 - I - 0x00F91A 03:990A: D4        .byte con_se_cb_D4   ; 
- D 0 - I - 0x00F91B 03:990B: 80        .byte $80   ; 
- D 0 - I - 0x00F91C 03:990C: DE        .byte con_se_cb_DE   ; 
- D 0 - I - 0x00F91D 03:990D: 87        .byte $87   ; 
- D 0 - I - 0x00F91E 03:990E: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x00F91F 03:990F: 87        .byte $87   ; 
- D 0 - I - 0x00F920 03:9910: D9        .byte con_se_cb_D9   ; 
- D 0 - I - 0x00F921 03:9911: 87        .byte $87   ; 
- D 0 - I - 0x00F922 03:9912: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x00F923 03:9913: 87        .byte $87   ; 
sub_C5_9914:
- D 0 - I - 0x00F924 03:9914: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00F925 03:9915: 82        .byte $82   ; 
- D 0 - I - 0x00F926 03:9916: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x00F927 03:9917: 82        .byte $82   ; 
- D 0 - I - 0x00F928 03:9918: DA        .byte con_se_cb_DA   ; 
- D 0 - I - 0x00F929 03:9919: 82        .byte $82   ; 
- D 0 - I - 0x00F92A 03:991A: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x00F92B 03:991B: 82        .byte $82   ; 
- D 0 - I - 0x00F92C 03:991C: BF        .byte con_se_cb_BF_rts   ; 



_off026_music_991D_23_red_alert:
; con_music_red_alert
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00F92D 03:991D: 0F        .byte %00001111   ;  
- D 0 - I - 0x00F92E 03:991E: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00F930 03:9920: 28 99     .word off_9928_23_ch_00
- D 0 - I - 0x00F932 03:9922: 4E 99     .word off_994E_23_ch_01
- D 0 - I - 0x00F934 03:9924: 6F 99     .word off_996F_23_ch_02
- D 0 - I - 0x00F936 03:9926: 81 99     .word off_9981_23_ch_03



off_9928_23_ch_00:
- D 0 - I - 0x00F938 03:9928: BB        .byte con_se_cb_BB, $FF, $FF   ; 
- D 0 - I - 0x00F93B 03:992B: 30        .byte $30   ; 
- D 0 - I - 0x00F93C 03:992C: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00F93D 03:992D: 99        .byte con_se_cb_99, $78   ; 
- D 0 - I - 0x00F93F 03:992F: 14        .byte $14   ; 
loc_A1_9930:
- D 0 - I - 0x00F940 03:9930: D1        .byte con_se_cb_D1   ; 
- D 0 - I - 0x00F941 03:9931: 80        .byte $80   ; 
- D 0 - I - 0x00F942 03:9932: 81        .byte $81   ; 
- D 0 - I - 0x00F943 03:9933: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F944 03:9934: 82        .byte $82   ; 
- D 0 - I - 0x00F945 03:9935: 83        .byte $83   ; 
- D 0 - I - 0x00F946 03:9936: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00F947 03:9937: 84        .byte $84   ; 
- D 0 - I - 0x00F948 03:9938: 85        .byte $85   ; 
- D 0 - I - 0x00F949 03:9939: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F94A 03:993A: 86        .byte $86   ; 
- D 0 - I - 0x00F94B 03:993B: 87        .byte $87   ; 
- D 0 - I - 0x00F94C 03:993C: D1        .byte con_se_cb_D1   ; 
- D 0 - I - 0x00F94D 03:993D: 88        .byte $88   ; 
- D 0 - I - 0x00F94E 03:993E: 89        .byte $89   ; 
- D 0 - I - 0x00F94F 03:993F: 88        .byte $88   ; 
- D 0 - I - 0x00F950 03:9940: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F951 03:9941: 87        .byte $87   ; 
- D 0 - I - 0x00F952 03:9942: 86        .byte $86   ; 
- D 0 - I - 0x00F953 03:9943: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00F954 03:9944: 85        .byte $85   ; 
- D 0 - I - 0x00F955 03:9945: 84        .byte $84   ; 
- D 0 - I - 0x00F956 03:9946: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F957 03:9947: 83        .byte $83   ; 
- D 0 - I - 0x00F958 03:9948: 82        .byte $82   ; 
- D 0 - I - 0x00F959 03:9949: D1        .byte con_se_cb_D1   ; 
- D 0 - I - 0x00F95A 03:994A: 81        .byte $81   ; 
- D 0 - I - 0x00F95B 03:994B: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F95C 03:994C: 30 99     .word loc_A1_9930



off_994E_23_ch_01:
loc_A1_994E:
- D 0 - I - 0x00F95E 03:994E: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00F95F 03:994F: 93        .byte con_se_cb_93, $0B   ; 
- D 0 - I - 0x00F961 03:9951: 99        .byte con_se_cb_99, $0D   ; 
- D 0 - I - 0x00F963 03:9953: 12        .byte $12   ; 
- D 0 - I - 0x00F964 03:9954: 80        .byte $80   ; 
- D 0 - I - 0x00F965 03:9955: 93        .byte con_se_cb_93, $5F   ; 
- D 0 - I - 0x00F967 03:9957: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00F969 03:9959: 06        .byte $06   ; 
- D 0 - I - 0x00F96A 03:995A: 80        .byte $80   ; 
- D 0 - I - 0x00F96B 03:995B: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00F96C 03:995C: 93        .byte con_se_cb_93, $0B   ; 
- D 0 - I - 0x00F96E 03:995E: 99        .byte con_se_cb_99, $0D   ; 
- D 0 - I - 0x00F970 03:9960: 0D        .byte $0D   ; 
- D 0 - I - 0x00F971 03:9961: 80        .byte $80   ; 
- D 0 - I - 0x00F972 03:9962: 93        .byte con_se_cb_93, $5F   ; 
- D 0 - I - 0x00F974 03:9964: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00F976 03:9966: 13        .byte $13   ; 
- D 0 - I - 0x00F977 03:9967: 80        .byte $80   ; 
- D 0 - I - 0x00F978 03:9968: 80        .byte $80   ; 
- D 0 - I - 0x00F979 03:9969: 80        .byte $80   ; 
- D 0 - I - 0x00F97A 03:996A: 02        .byte $02   ; 
- D 0 - I - 0x00F97B 03:996B: 80        .byte $80   ; 
- D 0 - I - 0x00F97C 03:996C: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F97D 03:996D: 4E 99     .word loc_A1_994E



off_996F_23_ch_02:
- D 0 - I - 0x00F97F 03:996F: C1        .byte con_se_cb_C1, $7F   ; 
loc_A1_9971:
- D 0 - I - 0x00F981 03:9971: 93        .byte con_se_cb_93, $00   ; 
- D 0 - I - 0x00F983 03:9973: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00F984 03:9974: 9A        .byte con_se_cb_9A, $0E   ; 
- D 0 - I - 0x00F986 03:9976: 18        .byte $18   ; 
- D 0 - I - 0x00F987 03:9977: DD        .byte con_se_cb_DD   ; 
- D 0 - I - 0x00F988 03:9978: 80        .byte $80   ; 
- D 0 - I - 0x00F989 03:9979: 80        .byte $80   ; 
- D 0 - I - 0x00F98A 03:997A: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x00F98B 03:997B: 80        .byte $80   ; 
- D 0 - I - 0x00F98C 03:997C: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00F98D 03:997D: 80        .byte $80   ; 
- D 0 - I - 0x00F98E 03:997E: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F98F 03:997F: 71 99     .word loc_A1_9971



off_9981_23_ch_03:
- D 0 - I - 0x00F991 03:9981: C1        .byte con_se_cb_C1, $73   ; 
- D 0 - I - 0x00F993 03:9983: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F994 03:9984: 71 99     .word loc_A1_9971



_off026_music_9986_1D_credits:
; con_music_credits
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00F996 03:9986: 0F        .byte %00001111   ;  
- D 0 - I - 0x00F997 03:9987: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00F999 03:9989: 91 99     .word off_9991_1D_ch_00
- D 0 - I - 0x00F99B 03:998B: E0 99     .word off_99E0_1D_ch_01
- D 0 - I - 0x00F99D 03:998D: 0F 9A     .word off_9A0F_1D_ch_02
- D 0 - I - 0x00F99F 03:998F: 4C 9A     .word off_9A4C_1D_ch_03



off_9991_1D_ch_00:
loc_A1_9991:
- D 0 - I - 0x00F9A1 03:9991: BB        .byte con_se_cb_BB, $73, $DA   ; 
- D 0 - I - 0x00F9A4 03:9994: BC        .byte con_se_cb_BC, $03   ; 
- D 0 - I - 0x00F9A6 03:9996: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F9A7 03:9997: B9 99     .word sub_BE_99B9
- D 0 - I - 0x00F9A9 03:9999: 80        .byte $80   ; 
- D 0 - I - 0x00F9AA 03:999A: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F9AB 03:999B: EC 9F     .word sub_BE_9FEC
- D 0 - I - 0x00F9AD 03:999D: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F9AE 03:999E: D3 99     .word sub_BE_99D3
- D 0 - I - 0x00F9B0 03:99A0: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F9B1 03:99A1: CD 99     .word sub_BE_99CD
- D 0 - I - 0x00F9B3 03:99A3: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F9B4 03:99A4: EC 9F     .word sub_BE_9FEC
- D 0 - I - 0x00F9B6 03:99A6: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00F9B7 03:99A7: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F9B8 03:99A8: B9 99     .word sub_BE_99B9
- D 0 - I - 0x00F9BA 03:99AA: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F9BB 03:99AB: CD 99     .word sub_BE_99CD
- D 0 - I - 0x00F9BD 03:99AD: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F9BE 03:99AE: 93 95     .word sub_BE_9593
- D 0 - I - 0x00F9C0 03:99B0: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F9C1 03:99B1: 93 95     .word sub_BE_9593
- D 0 - I - 0x00F9C3 03:99B3: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F9C4 03:99B4: D9 99     .word sub_BE_99D9
- D 0 - I - 0x00F9C6 03:99B6: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00F9C7 03:99B7: 91 99     .word loc_A1_9991



sub_BE_99B9:
- D 0 - I - 0x00F9C9 03:99B9: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F9CA 03:99BA: EC 9F     .word sub_BE_9FEC
- D 0 - I - 0x00F9CC 03:99BC: 06        .byte $06   ; 
- D 0 - I - 0x00F9CD 03:99BD: 80        .byte $80   ; 
- D 0 - I - 0x00F9CE 03:99BE: 80        .byte $80   ; 
- D 0 - I - 0x00F9CF 03:99BF: 80        .byte $80   ; 
- D 0 - I - 0x00F9D0 03:99C0: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F9D1 03:99C1: 93 95     .word sub_BE_9593
- D 0 - I - 0x00F9D3 03:99C3: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F9D4 03:99C4: D3 99     .word sub_BE_99D3
- D 0 - I - 0x00F9D6 03:99C6: 80        .byte $80   ; 
- D 0 - I - 0x00F9D7 03:99C7: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F9D8 03:99C8: EC 9F     .word sub_BE_9FEC
- D 0 - I - 0x00F9DA 03:99CA: 06        .byte $06   ; 
- D 0 - I - 0x00F9DB 03:99CB: 80        .byte $80   ; 
- D 0 - I - 0x00F9DC 03:99CC: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_99CD:
- D 0 - I - 0x00F9DD 03:99CD: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F9DE 03:99CE: 93 95     .word sub_BE_9593
- D 0 - I - 0x00F9E0 03:99D0: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F9E1 03:99D1: EC 9F     .word sub_BE_9FEC
sub_BE_99D3:
- D 0 - I - 0x00F9E3 03:99D3: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x00F9E4 03:99D4: 9A        .byte con_se_cb_9A, $14   ; 
- D 0 - I - 0x00F9E6 03:99D6: 06        .byte $06   ; 
- D 0 - I - 0x00F9E7 03:99D7: 81        .byte $81   ; 
- D 0 - I - 0x00F9E8 03:99D8: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_99D9:
- D 0 - I - 0x00F9E9 03:99D9: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F9EA 03:99DA: EC 9F     .word sub_BE_9FEC
- D 0 - I - 0x00F9EC 03:99DC: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00F9ED 03:99DD: 93 95     .word sub_BE_9593
- D 0 - I - 0x00F9EF 03:99DF: BF        .byte con_se_cb_BF_rts   ; 



off_99E0_1D_ch_01:
loc_A1_99E0:
- D 0 - I - 0x00F9F0 03:99E0: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00F9F1 03:99E1: 93        .byte con_se_cb_93, $0F   ; 
- D 0 - I - 0x00F9F3 03:99E3: 9B        .byte con_se_cb_9B, $05   ; 
- D 0 - I - 0x00F9F5 03:99E5: 2A        .byte $2A   ; 
- D 0 - I - 0x00F9F6 03:99E6: 85        .byte $85   ; 
- D 0 - I - 0x00F9F7 03:99E7: 12        .byte $12   ; 
- D 0 - I - 0x00F9F8 03:99E8: 80        .byte $80   ; 
- D 0 - I - 0x00F9F9 03:99E9: 85        .byte $85   ; 
- D 0 - I - 0x00F9FA 03:99EA: 84        .byte $84   ; 
- D 0 - I - 0x00F9FB 03:99EB: 2A        .byte $2A   ; 
- D 0 - I - 0x00F9FC 03:99EC: 82        .byte $82   ; 
- D 0 - I - 0x00F9FD 03:99ED: 12        .byte $12   ; 
- D 0 - I - 0x00F9FE 03:99EE: 89        .byte $89   ; 
- D 0 - I - 0x00F9FF 03:99EF: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00FA00 03:99F0: 84        .byte $84   ; 
- D 0 - I - 0x00FA01 03:99F1: 06        .byte $06   ; 
- D 0 - I - 0x00FA02 03:99F2: 82        .byte $82   ; 
- D 0 - I - 0x00FA03 03:99F3: 92        .byte con_se_cb_92   ; 
- D 0 - I - 0x00FA04 03:99F4: 89        .byte $89   ; 
- D 0 - I - 0x00FA05 03:99F5: 82        .byte $82   ; 
- D 0 - I - 0x00FA06 03:99F6: 1E        .byte $1E   ; 
- D 0 - I - 0x00FA07 03:99F7: 81        .byte $81   ; 
- D 0 - I - 0x00FA08 03:99F8: 06        .byte $06   ; 
- D 0 - I - 0x00FA09 03:99F9: 8D        .byte $8D   ; 
- D 0 - I - 0x00FA0A 03:99FA: 81        .byte $81   ; 
- D 0 - I - 0x00FA0B 03:99FB: 24        .byte $24   ; 
- D 0 - I - 0x00FA0C 03:99FC: 83        .byte $83   ; 
- D 0 - I - 0x00FA0D 03:99FD: 0C        .byte $0C   ; 
- D 0 - I - 0x00FA0E 03:99FE: 8A        .byte $8A   ; 
- D 0 - I - 0x00FA0F 03:99FF: 06        .byte $06   ; 
- D 0 - I - 0x00FA10 03:9A00: 83        .byte $83   ; 
- D 0 - I - 0x00FA11 03:9A01: 2A        .byte $2A   ; 
- D 0 - I - 0x00FA12 03:9A02: 85        .byte $85   ; 
- D 0 - I - 0x00FA13 03:9A03: 12        .byte $12   ; 
- D 0 - I - 0x00FA14 03:9A04: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00FA15 03:9A05: 87        .byte $87   ; 
- D 0 - I - 0x00FA16 03:9A06: 85        .byte $85   ; 
- D 0 - I - 0x00FA17 03:9A07: 06        .byte $06   ; 
- D 0 - I - 0x00FA18 03:9A08: 80        .byte $80   ; 
- D 0 - I - 0x00FA19 03:9A09: 92        .byte con_se_cb_92   ; 
- D 0 - I - 0x00FA1A 03:9A0A: 85        .byte $85   ; 
- D 0 - I - 0x00FA1B 03:9A0B: 80        .byte $80   ; 
- D 0 - I - 0x00FA1C 03:9A0C: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FA1D 03:9A0D: E0 99     .word loc_A1_99E0



off_9A0F_1D_ch_02:
loc_A1_9A0F:
- D 0 - I - 0x00FA1F 03:9A0F: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00FA20 03:9A10: 93        .byte con_se_cb_93, $19   ; 
- D 0 - I - 0x00FA22 03:9A12: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00FA23 03:9A13: 9A        .byte con_se_cb_9A, $24   ; 
- D 0 - I - 0x00FA25 03:9A15: 0C        .byte $0C   ; 
- D 0 - I - 0x00FA26 03:9A16: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FA27 03:9A17: 82        .byte $82   ; 
- D 0 - I - 0x00FA28 03:9A18: 87        .byte $87   ; 
- D 0 - I - 0x00FA29 03:9A19: 06        .byte $06   ; 
- D 0 - I - 0x00FA2A 03:9A1A: 89        .byte $89   ; 
- D 0 - I - 0x00FA2B 03:9A1B: 12        .byte $12   ; 
- D 0 - I - 0x00FA2C 03:9A1C: 8C        .byte $8C   ; 
- D 0 - I - 0x00FA2D 03:9A1D: 0C        .byte $0C   ; 
- D 0 - I - 0x00FA2E 03:9A1E: 8B        .byte $8B   ; 
- D 0 - I - 0x00FA2F 03:9A1F: 06        .byte $06   ; 
- D 0 - I - 0x00FA30 03:9A20: 89        .byte $89   ; 
- D 0 - I - 0x00FA31 03:9A21: 12        .byte $12   ; 
- D 0 - I - 0x00FA32 03:9A22: 8B        .byte $8B   ; 
- D 0 - I - 0x00FA33 03:9A23: 89        .byte $89   ; 
- D 0 - I - 0x00FA34 03:9A24: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FA35 03:9A25: 66 9F     .word sub_BE_9F66
- D 0 - I - 0x00FA37 03:9A27: 06        .byte $06   ; 
- D 0 - I - 0x00FA38 03:9A28: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FA39 03:9A29: 0C        .byte $0C   ; 
- D 0 - I - 0x00FA3A 03:9A2A: 82        .byte $82   ; 
- D 0 - I - 0x00FA3B 03:9A2B: 87        .byte $87   ; 
- D 0 - I - 0x00FA3C 03:9A2C: 06        .byte $06   ; 
- D 0 - I - 0x00FA3D 03:9A2D: 8A        .byte $8A   ; 
- D 0 - I - 0x00FA3E 03:9A2E: 0C        .byte $0C   ; 
- D 0 - I - 0x00FA3F 03:9A2F: 89        .byte $89   ; 
- D 0 - I - 0x00FA40 03:9A30: 06        .byte $06   ; 
- D 0 - I - 0x00FA41 03:9A31: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00FA42 03:9A32: 80        .byte $80   ; 
- D 0 - I - 0x00FA43 03:9A33: 12        .byte $12   ; 
- D 0 - I - 0x00FA44 03:9A34: 87        .byte $87   ; 
- D 0 - I - 0x00FA45 03:9A35: 0C        .byte $0C   ; 
- D 0 - I - 0x00FA46 03:9A36: 85        .byte $85   ; 
- D 0 - I - 0x00FA47 03:9A37: 83        .byte $83   ; 
- D 0 - I - 0x00FA48 03:9A38: 06        .byte $06   ; 
- D 0 - I - 0x00FA49 03:9A39: 82        .byte $82   ; 
- D 0 - I - 0x00FA4A 03:9A3A: 81        .byte $81   ; 
- D 0 - I - 0x00FA4B 03:9A3B: 0C        .byte $0C   ; 
- D 0 - I - 0x00FA4C 03:9A3C: 82        .byte $82   ; 
- D 0 - I - 0x00FA4D 03:9A3D: 06        .byte $06   ; 
- D 0 - I - 0x00FA4E 03:9A3E: 92        .byte con_se_cb_92   ; 
- D 0 - I - 0x00FA4F 03:9A3F: 8B        .byte $8B   ; 
- D 0 - I - 0x00FA50 03:9A40: 82        .byte $82   ; 
- D 0 - I - 0x00FA51 03:9A41: 12        .byte $12   ; 
- D 0 - I - 0x00FA52 03:9A42: 8C        .byte $8C   ; 
- D 0 - I - 0x00FA53 03:9A43: 9A        .byte con_se_cb_9A, $10   ; 
- D 0 - I - 0x00FA55 03:9A45: C5        .byte con_se_cb_C5, $1D   ; 
- D 0 - I - 0x00FA57 03:9A47: 30 9F     .word sub_C5_9F30
- D 0 - I - 0x00FA59 03:9A49: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FA5A 03:9A4A: 0F 9A     .word loc_A1_9A0F



off_9A4C_1D_ch_03:
loc_A1_9A4C:
- D 0 - I - 0x00FA5C 03:9A4C: D4        .byte con_se_cb_D4   ; 
- D 0 - I - 0x00FA5D 03:9A4D: 93        .byte con_se_cb_93, $18   ; 
- D 0 - I - 0x00FA5F 03:9A4F: E2        .byte con_se_cb_E2   ; 
- D 0 - I - 0x00FA60 03:9A50: 9A        .byte con_se_cb_9A, $24   ; 
- D 0 - I - 0x00FA62 03:9A52: 0C        .byte $0C   ; 
- D 0 - I - 0x00FA63 03:9A53: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FA64 03:9A54: 80        .byte $80   ; 
- D 0 - I - 0x00FA65 03:9A55: 83        .byte $83   ; 
- D 0 - I - 0x00FA66 03:9A56: 06        .byte $06   ; 
- D 0 - I - 0x00FA67 03:9A57: 87        .byte $87   ; 
- D 0 - I - 0x00FA68 03:9A58: 12        .byte $12   ; 
- D 0 - I - 0x00FA69 03:9A59: 8A        .byte $8A   ; 
- D 0 - I - 0x00FA6A 03:9A5A: 0C        .byte $0C   ; 
- D 0 - I - 0x00FA6B 03:9A5B: 88        .byte $88   ; 
- D 0 - I - 0x00FA6C 03:9A5C: 06        .byte $06   ; 
- D 0 - I - 0x00FA6D 03:9A5D: 83        .byte $83   ; 
- D 0 - I - 0x00FA6E 03:9A5E: 12        .byte $12   ; 
- D 0 - I - 0x00FA6F 03:9A5F: 88        .byte $88   ; 
- D 0 - I - 0x00FA70 03:9A60: 83        .byte $83   ; 
- D 0 - I - 0x00FA71 03:9A61: C5        .byte con_se_cb_C5, $11   ; 
- D 0 - I - 0x00FA73 03:9A63: 66 9F     .word sub_C5_9F66
- D 0 - I - 0x00FA75 03:9A65: 06        .byte $06   ; 
- D 0 - I - 0x00FA76 03:9A66: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FA77 03:9A67: 0C        .byte $0C   ; 
- D 0 - I - 0x00FA78 03:9A68: 86        .byte $86   ; 
- D 0 - I - 0x00FA79 03:9A69: 8A        .byte $8A   ; 
- D 0 - I - 0x00FA7A 03:9A6A: 06        .byte $06   ; 
- D 0 - I - 0x00FA7B 03:9A6B: 8F        .byte $8F   ; 
- D 0 - I - 0x00FA7C 03:9A6C: 0C        .byte $0C   ; 
- D 0 - I - 0x00FA7D 03:9A6D: 88        .byte $88   ; 
- D 0 - I - 0x00FA7E 03:9A6E: 06        .byte $06   ; 
- D 0 - I - 0x00FA7F 03:9A6F: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00FA80 03:9A70: 81        .byte $81   ; 
- D 0 - I - 0x00FA81 03:9A71: 12        .byte $12   ; 
- D 0 - I - 0x00FA82 03:9A72: 85        .byte $85   ; 
- D 0 - I - 0x00FA83 03:9A73: 0C        .byte $0C   ; 
- D 0 - I - 0x00FA84 03:9A74: 8A        .byte $8A   ; 
- D 0 - I - 0x00FA85 03:9A75: 88        .byte $88   ; 
- D 0 - I - 0x00FA86 03:9A76: 06        .byte $06   ; 
- D 0 - I - 0x00FA87 03:9A77: 87        .byte $87   ; 
- D 0 - I - 0x00FA88 03:9A78: 86        .byte $86   ; 
- D 0 - I - 0x00FA89 03:9A79: 0C        .byte $0C   ; 
- D 0 - I - 0x00FA8A 03:9A7A: 87        .byte $87   ; 
- D 0 - I - 0x00FA8B 03:9A7B: 06        .byte $06   ; 
- D 0 - I - 0x00FA8C 03:9A7C: 83        .byte $83   ; 
- D 0 - I - 0x00FA8D 03:9A7D: 92        .byte con_se_cb_92   ; 
- D 0 - I - 0x00FA8E 03:9A7E: 87        .byte $87   ; 
- D 0 - I - 0x00FA8F 03:9A7F: 12        .byte $12   ; 
- D 0 - I - 0x00FA90 03:9A80: 8E        .byte $8E   ; 
- D 0 - I - 0x00FA91 03:9A81: 9A        .byte con_se_cb_9A, $10   ; 
- D 0 - I - 0x00FA93 03:9A83: C5        .byte con_se_cb_C5, $19   ; 
- D 0 - I - 0x00FA95 03:9A85: 30 9F     .word sub_C5_9F30
- D 0 - I - 0x00FA97 03:9A87: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FA98 03:9A88: 4C 9A     .word loc_A1_9A4C



_off026_music_9A8A_1F_player_dead:
; con_music_player_dead
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00FA9A 03:9A8A: 0F        .byte %00001111   ;  
- D 0 - I - 0x00FA9B 03:9A8B: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00FA9D 03:9A8D: 95 9A     .word off_9A95_1F_ch_00
- D 0 - I - 0x00FA9F 03:9A8F: BA 9A     .word off_9ABA_1F_ch_01
- D 0 - I - 0x00FAA1 03:9A91: D4 9A     .word off_9AD4_1F_ch_02
- D 0 - I - 0x00FAA3 03:9A93: E7 9A     .word off_9AE7_1F_ch_03



off_9A95_1F_ch_00:
- D 0 - I - 0x00FAA5 03:9A95: BB        .byte con_se_cb_BB, $FF, $FF   ; 
- D 0 - I - 0x00FAA8 03:9A98: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00FAA9 03:9A99: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00FAAB 03:9A9B: 9A        .byte con_se_cb_9A, $01   ; 
- D 0 - I - 0x00FAAD 03:9A9D: 07        .byte $07   ; 
- D 0 - I - 0x00FAAE 03:9A9E: 8D        .byte $8D   ; 
- D 0 - I - 0x00FAAF 03:9A9F: 8D        .byte $8D   ; 
- D 0 - I - 0x00FAB0 03:9AA0: 8D        .byte $8D   ; 
- D 0 - I - 0x00FAB1 03:9AA1: 9A        .byte con_se_cb_9A, $0F   ; 
- D 0 - I - 0x00FAB3 03:9AA3: 01        .byte $01   ; 
- D 0 - I - 0x00FAB4 03:9AA4: 8D        .byte $8D   ; 
- D 0 - I - 0x00FAB5 03:9AA5: 14        .byte $14   ; 
- D 0 - I - 0x00FAB6 03:9AA6: 81        .byte $81   ; 
- D 0 - I - 0x00FAB7 03:9AA7: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FAB8 03:9AA8: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00FABA 03:9AAA: 9A        .byte con_se_cb_9A, $08   ; 
- D 0 - I - 0x00FABC 03:9AAC: 01        .byte $01   ; 
- D 0 - I - 0x00FABD 03:9AAD: 8D        .byte $8D   ; 
- D 0 - I - 0x00FABE 03:9AAE: 06        .byte $06   ; 
- D 0 - I - 0x00FABF 03:9AAF: 81        .byte $81   ; 
- D 0 - I - 0x00FAC0 03:9AB0: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FAC1 03:9AB1: 07        .byte $07   ; 
- D 0 - I - 0x00FAC2 03:9AB2: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FAC3 03:9AB3: 9A        .byte con_se_cb_9A, $19   ; 
- D 0 - I - 0x00FAC5 03:9AB5: 01        .byte $01   ; 
- D 0 - I - 0x00FAC6 03:9AB6: 8D        .byte $8D   ; 
- D 0 - I - 0x00FAC7 03:9AB7: 21        .byte $21   ; 
- D 0 - I - 0x00FAC8 03:9AB8: 81        .byte $81   ; 
- D 0 - I - 0x00FAC9 03:9AB9: A2        .byte con_se_cb_A2   ; 
off_9ABA_1F_ch_01:
- D 0 - I - 0x00FACA 03:9ABA: C5        .byte con_se_cb_C5, $0C   ; 
- D 0 - I - 0x00FACC 03:9ABC: F9 9A     .word sub_C5_9AF9
- D 0 - I - 0x00FACE 03:9ABE: 84        .byte $84   ; 
- D 0 - I - 0x00FACF 03:9ABF: C5        .byte con_se_cb_C5, $0E   ; 
- D 0 - I - 0x00FAD1 03:9AC1: F9 9A     .word sub_C5_9AF9
- D 0 - I - 0x00FAD3 03:9AC3: 84        .byte $84   ; 
- D 0 - I - 0x00FAD4 03:9AC4: 92        .byte con_se_cb_92   ; 
loc_A1_9AC5:
- D 0 - I - 0x00FAD5 03:9AC5: 9A        .byte con_se_cb_9A, $06   ; 
- D 0 - I - 0x00FAD7 03:9AC7: 07        .byte $07   ; 
- D 0 - I - 0x00FAD8 03:9AC8: 85        .byte $85   ; 
- D 0 - I - 0x00FAD9 03:9AC9: 0E        .byte $0E   ; 
- D 0 - I - 0x00FADA 03:9ACA: 85        .byte $85   ; 
- D 0 - I - 0x00FADB 03:9ACB: 11        .byte $11   ; 
- D 0 - I - 0x00FADC 03:9ACC: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FADD 03:9ACD: 85        .byte $85   ; 
- D 0 - I - 0x00FADE 03:9ACE: 9E        .byte con_se_cb_9E, $B3   ; 
- D 0 - I - 0x00FAE0 03:9AD0: 85        .byte $85   ; 
- D 0 - I - 0x00FAE1 03:9AD1: 9E        .byte con_se_cb_9E, $08   ; 
- D 0 - I - 0x00FAE3 03:9AD3: A2        .byte con_se_cb_A2   ; 
off_9AD4_1F_ch_02:
- D 0 - I - 0x00FAE4 03:9AD4: 93        .byte con_se_cb_93, $00   ; 
- D 0 - I - 0x00FAE6 03:9AD6: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00FAE8 03:9AD8: C1        .byte con_se_cb_C1, $FD   ; 
- D 0 - I - 0x00FAEA 03:9ADA: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FAEB 03:9ADB: F9 9A     .word sub_BE_9AF9
- D 0 - I - 0x00FAED 03:9ADD: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x00FAEE 03:9ADE: 8F        .byte $8F   ; 
- D 0 - I - 0x00FAEF 03:9ADF: 93        .byte con_se_cb_93, $02   ; 
- D 0 - I - 0x00FAF1 03:9AE1: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FAF2 03:9AE2: 93        .byte con_se_cb_93, $1D   ; 
- D 0 - I - 0x00FAF4 03:9AE4: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FAF5 03:9AE5: C5 9A     .word loc_A1_9AC5



off_9AE7_1F_ch_03:
- D 0 - I - 0x00FAF7 03:9AE7: 93        .byte con_se_cb_93, $00   ; 
- D 0 - I - 0x00FAF9 03:9AE9: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00FAFB 03:9AEB: C1        .byte con_se_cb_C1, $03   ; 
- D 0 - I - 0x00FAFD 03:9AED: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FAFE 03:9AEE: F9 9A     .word sub_BE_9AF9
- D 0 - I - 0x00FB00 03:9AF0: 8A        .byte $8A   ; 
- D 0 - I - 0x00FB01 03:9AF1: 93        .byte con_se_cb_93, $02   ; 
- D 0 - I - 0x00FB03 03:9AF3: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FB04 03:9AF4: 93        .byte con_se_cb_93, $19   ; 
- D 0 - I - 0x00FB06 03:9AF6: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FB07 03:9AF7: C5 9A     .word loc_A1_9AC5



sub_BE_9AF9:
sub_C5_9AF9:
- D 0 - I - 0x00FB09 03:9AF9: DC        .byte con_se_cb_DC   ; 
- D 0 - I - 0x00FB0A 03:9AFA: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00FB0B 03:9AFB: 9A        .byte con_se_cb_9A, $0A   ; 
- D 0 - I - 0x00FB0D 03:9AFD: 07        .byte $07   ; 
- D 0 - I - 0x00FB0E 03:9AFE: 80        .byte $80   ; 
- D 0 - I - 0x00FB0F 03:9AFF: 86        .byte $86   ; 
- D 0 - I - 0x00FB10 03:9B00: 8B        .byte $8B   ; 
- D 0 - I - 0x00FB11 03:9B01: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00FB12 03:9B02: 9A        .byte con_se_cb_9A, $14   ; 
- D 0 - I - 0x00FB14 03:9B04: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00FB16 03:9B06: 15        .byte $15   ; 
- D 0 - I - 0x00FB17 03:9B07: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00FB18 03:9B08: BF        .byte con_se_cb_BF_rts   ; 



_off026_music_9B09_1C_cutscene:
; con_music_cutscene
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00FB19 03:9B09: 0F        .byte %00001111   ;  
- D 0 - I - 0x00FB1A 03:9B0A: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00FB1C 03:9B0C: 14 9B     .word off_9B14_1C_ch_00
- D 0 - I - 0x00FB1E 03:9B0E: 7C 9B     .word off_9B7C_1C_ch_01
- D 0 - I - 0x00FB20 03:9B10: B9 9B     .word off_9BB9_1C_ch_02
- D 0 - I - 0x00FB22 03:9B12: 7D 9C     .word off_9C7D_1C_ch_03



off_9B14_1C_ch_00:
- D 0 - I - 0x00FB24 03:9B14: BB        .byte con_se_cb_BB, $FF, $FF   ; 
- D 0 - I - 0x00FB27 03:9B17: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FB28 03:9B18: D9 9F     .word sub_BE_9FD9
- D 0 - I - 0x00FB2A 03:9B1A: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FB2B 03:9B1B: 53 9B     .word sub_BE_9B53
- D 0 - I - 0x00FB2D 03:9B1D: 7A        .byte $7A   ; 
- D 0 - I - 0x00FB2E 03:9B1E: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FB2F 03:9B1F: BC        .byte con_se_cb_BC, $04   ; 
- D 0 - I - 0x00FB31 03:9B21: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FB32 03:9B22: DF 9F     .word sub_BE_9FDF
- D 0 - I - 0x00FB34 03:9B24: 0C        .byte $0C   ; 
- D 0 - I - 0x00FB35 03:9B25: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00FB37 03:9B27: DA        .byte con_se_cb_DA   ; 
- D 0 - I - 0x00FB38 03:9B28: 9A        .byte con_se_cb_9A, $10   ; 
- D 0 - I - 0x00FB3A 03:9B2A: 81        .byte $81   ; 
- D 0 - I - 0x00FB3B 03:9B2B: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00FB3C 03:9B2C: 9A        .byte con_se_cb_9A, $01   ; 
- D 0 - I - 0x00FB3E 03:9B2E: 80        .byte $80   ; 
- D 0 - I - 0x00FB3F 03:9B2F: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FB40 03:9B30: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FB41 03:9B31: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FB42 03:9B32: DF 9F     .word sub_BE_9FDF
- D 0 - I - 0x00FB44 03:9B34: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FB45 03:9B35: DF 9F     .word sub_BE_9FDF
- D 0 - I - 0x00FB47 03:9B37: BC        .byte con_se_cb_BC, $03   ; 
- D 0 - I - 0x00FB49 03:9B39: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FB4A 03:9B3A: E5 9F     .word sub_BE_9FE5
- D 0 - I - 0x00FB4C 03:9B3C: 07        .byte $07   ; 
- D 0 - I - 0x00FB4D 03:9B3D: 82        .byte $82   ; 
- D 0 - I - 0x00FB4E 03:9B3E: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FB4F 03:9B3F: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FB50 03:9B40: DF 9F     .word sub_BE_9FDF
- D 0 - I - 0x00FB52 03:9B42: 18        .byte $18   ; 
- D 0 - I - 0x00FB53 03:9B43: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00FB55 03:9B45: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FB56 03:9B46: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FB57 03:9B47: DF 9F     .word sub_BE_9FDF
- D 0 - I - 0x00FB59 03:9B49: 72        .byte $72   ; 
- D 0 - I - 0x00FB5A 03:9B4A: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FB5B 03:9B4B: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FB5C 03:9B4C: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FB5D 03:9B4D: 53 9B     .word sub_BE_9B53
- D 0 - I - 0x00FB5F 03:9B4F: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FB60 03:9B50: D9 9F     .word sub_BE_9FD9
- D 0 - I - 0x00FB62 03:9B52: A2        .byte con_se_cb_A2   ; 
sub_BE_9B53:
- D 0 - I - 0x00FB63 03:9B53: 99        .byte con_se_cb_99, $78   ; 
- D 0 - I - 0x00FB65 03:9B55: 06        .byte $06   ; 
- D 0 - I - 0x00FB66 03:9B56: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FB67 03:9B57: 0C        .byte $0C   ; 
- D 0 - I - 0x00FB68 03:9B58: D1        .byte con_se_cb_D1   ; 
- D 0 - I - 0x00FB69 03:9B59: 84        .byte $84   ; 
- D 0 - I - 0x00FB6A 03:9B5A: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00FB6B 03:9B5B: 84        .byte $84   ; 
- D 0 - I - 0x00FB6C 03:9B5C: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00FB6D 03:9B5D: 84        .byte $84   ; 
- D 0 - I - 0x00FB6E 03:9B5E: D4        .byte con_se_cb_D4   ; 
- D 0 - I - 0x00FB6F 03:9B5F: 84        .byte $84   ; 
- D 0 - I - 0x00FB70 03:9B60: 08        .byte $08   ; 
- D 0 - I - 0x00FB71 03:9B61: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x00FB72 03:9B62: 83        .byte $83   ; 
- D 0 - I - 0x00FB73 03:9B63: D6        .byte con_se_cb_D6   ; 
- D 0 - I - 0x00FB74 03:9B64: 83        .byte $83   ; 
- D 0 - I - 0x00FB75 03:9B65: 06        .byte $06   ; 
- D 0 - I - 0x00FB76 03:9B66: D7        .byte con_se_cb_D7   ; 
- D 0 - I - 0x00FB77 03:9B67: 83        .byte $83   ; 
- D 0 - I - 0x00FB78 03:9B68: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00FB79 03:9B69: 82        .byte $82   ; 
- D 0 - I - 0x00FB7A 03:9B6A: 04        .byte $04   ; 
- D 0 - I - 0x00FB7B 03:9B6B: D9        .byte con_se_cb_D9   ; 
- D 0 - I - 0x00FB7C 03:9B6C: 82        .byte $82   ; 
- D 0 - I - 0x00FB7D 03:9B6D: DA        .byte con_se_cb_DA   ; 
- D 0 - I - 0x00FB7E 03:9B6E: 82        .byte $82   ; 
- D 0 - I - 0x00FB7F 03:9B6F: 03        .byte $03   ; 
- D 0 - I - 0x00FB80 03:9B70: DB        .byte con_se_cb_DB   ; 
- D 0 - I - 0x00FB81 03:9B71: 81        .byte $81   ; 
- D 0 - I - 0x00FB82 03:9B72: DC        .byte con_se_cb_DC   ; 
- D 0 - I - 0x00FB83 03:9B73: 81        .byte $81   ; 
- D 0 - I - 0x00FB84 03:9B74: 02        .byte $02   ; 
- D 0 - I - 0x00FB85 03:9B75: DB        .byte con_se_cb_DB   ; 
- D 0 - I - 0x00FB86 03:9B76: 81        .byte $81   ; 
- D 0 - I - 0x00FB87 03:9B77: DA        .byte con_se_cb_DA   ; 
- D 0 - I - 0x00FB88 03:9B78: 81        .byte $81   ; 
- D 0 - I - 0x00FB89 03:9B79: D9        .byte con_se_cb_D9   ; 
- D 0 - I - 0x00FB8A 03:9B7A: 81        .byte $81   ; 
- D 0 - I - 0x00FB8B 03:9B7B: BF        .byte con_se_cb_BF_rts   ; 



off_9B7C_1C_ch_01:
- D 0 - I - 0x00FB8C 03:9B7C: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00FB8D 03:9B7D: 93        .byte con_se_cb_93, $0F   ; 
- D 0 - I - 0x00FB8F 03:9B7F: 99        .byte con_se_cb_99, $7F   ; 
- D 0 - I - 0x00FB91 03:9B81: 78        .byte $78   ; 
- D 0 - I - 0x00FB92 03:9B82: 80        .byte $80   ; 
- D 0 - I - 0x00FB93 03:9B83: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FB94 03:9B84: C5        .byte con_se_cb_C5, $0D   ; 
- D 0 - I - 0x00FB96 03:9B86: AB 9B     .word sub_C5_9BAB
- D 0 - I - 0x00FB98 03:9B88: C5        .byte con_se_cb_C5, $10   ; 
- D 0 - I - 0x00FB9A 03:9B8A: AB 9B     .word sub_C5_9BAB
- D 0 - I - 0x00FB9C 03:9B8C: C5        .byte con_se_cb_C5, $0F   ; 
- D 0 - I - 0x00FB9E 03:9B8E: AB 9B     .word sub_C5_9BAB
- D 0 - I - 0x00FBA0 03:9B90: C5        .byte con_se_cb_C5, $11   ; 
- D 0 - I - 0x00FBA2 03:9B92: AB 9B     .word sub_C5_9BAB
- D 0 - I - 0x00FBA4 03:9B94: 9B        .byte con_se_cb_9B, $03   ; 
- D 0 - I - 0x00FBA6 03:9B96: C5        .byte con_se_cb_C5, $13   ; 
- D 0 - I - 0x00FBA8 03:9B98: 58 9C     .word sub_C5_9C58
- D 0 - I - 0x00FBAA 03:9B9A: 87        .byte $87   ; 
- D 0 - I - 0x00FBAB 03:9B9B: 72        .byte $72   ; 
- D 0 - I - 0x00FBAC 03:9B9C: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FBAD 03:9B9D: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FBAE 03:9B9E: 99        .byte con_se_cb_99, $7F   ; 
- D 0 - I - 0x00FBB0 03:9BA0: 50        .byte $50   ; 
- D 0 - I - 0x00FBB1 03:9BA1: 92        .byte con_se_cb_92   ; 
- D 0 - I - 0x00FBB2 03:9BA2: 88        .byte $88   ; 
- D 0 - I - 0x00FBB3 03:9BA3: 28        .byte $28   ; 
- D 0 - I - 0x00FBB4 03:9BA4: 8F        .byte $8F   ; 
- D 0 - I - 0x00FBB5 03:9BA5: 8E        .byte $8E   ; 
- D 0 - I - 0x00FBB6 03:9BA6: 8D        .byte $8D   ; 
- D 0 - I - 0x00FBB7 03:9BA7: 87        .byte $87   ; 
- D 0 - I - 0x00FBB8 03:9BA8: 0C        .byte $0C   ; 
- D 0 - I - 0x00FBB9 03:9BA9: 8B        .byte $8B   ; 
- D 0 - I - 0x00FBBA 03:9BAA: A2        .byte con_se_cb_A2   ; 
sub_C5_9BAB:
- D 0 - I - 0x00FBBB 03:9BAB: 99        .byte con_se_cb_99, $07   ; 
- D 0 - I - 0x00FBBD 03:9BAD: 18        .byte $18   ; 
- D 0 - I - 0x00FBBE 03:9BAE: 80        .byte $80   ; 
- D 0 - I - 0x00FBBF 03:9BAF: 0C        .byte $0C   ; 
- D 0 - I - 0x00FBC0 03:9BB0: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00FBC1 03:9BB1: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FBC2 03:9BB2: 88        .byte $88   ; 
- D 0 - I - 0x00FBC3 03:9BB3: 87        .byte $87   ; 
- D 0 - I - 0x00FBC4 03:9BB4: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FBC5 03:9BB5: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00FBC6 03:9BB6: 86        .byte $86   ; 
- D 0 - I - 0x00FBC7 03:9BB7: 85        .byte $85   ; 
- D 0 - I - 0x00FBC8 03:9BB8: BF        .byte con_se_cb_BF_rts   ; 



off_9BB9_1C_ch_02:
- D 0 - I - 0x00FBC9 03:9BB9: C5        .byte con_se_cb_C5, $19   ; 
- D 0 - I - 0x00FBCB 03:9BBB: F4 9B     .word sub_C5_9BF4
- D 0 - I - 0x00FBCD 03:9BBD: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00FBCE 03:9BBE: 04        .byte $04   ; 
- D 0 - I - 0x00FBCF 03:9BBF: 8E        .byte $8E   ; 
- D 0 - I - 0x00FBD0 03:9BC0: E2        .byte con_se_cb_E2   ; 
- D 0 - I - 0x00FBD1 03:9BC1: 74        .byte $74   ; 
- D 0 - I - 0x00FBD2 03:9BC2: 81        .byte $81   ; 
- D 0 - I - 0x00FBD3 03:9BC3: C5        .byte con_se_cb_C5, $0E   ; 
- D 0 - I - 0x00FBD5 03:9BC5: 3E 9C     .word sub_C5_9C3E
- D 0 - I - 0x00FBD7 03:9BC7: C5        .byte con_se_cb_C5, $11   ; 
- D 0 - I - 0x00FBD9 03:9BC9: 3E 9C     .word sub_C5_9C3E
- D 0 - I - 0x00FBDB 03:9BCB: C5        .byte con_se_cb_C5, $10   ; 
- D 0 - I - 0x00FBDD 03:9BCD: 3E 9C     .word sub_C5_9C3E
- D 0 - I - 0x00FBDF 03:9BCF: C5        .byte con_se_cb_C5, $12   ; 
- D 0 - I - 0x00FBE1 03:9BD1: 3E 9C     .word sub_C5_9C3E
- D 0 - I - 0x00FBE3 03:9BD3: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00FBE4 03:9BD4: 9A        .byte con_se_cb_9A, $1C   ; 
- D 0 - I - 0x00FBE6 03:9BD6: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FBE7 03:9BD7: 58 9C     .word sub_BE_9C58
- D 0 - I - 0x00FBE9 03:9BD9: E2        .byte con_se_cb_E2   ; 
- D 0 - I - 0x00FBEA 03:9BDA: 9A        .byte con_se_cb_9A, $60   ; 
- D 0 - I - 0x00FBEC 03:9BDC: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FBED 03:9BDD: 74 9F     .word sub_BE_9F74
- D 0 - I - 0x00FBEF 03:9BDF: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00FBF0 03:9BE0: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FBF1 03:9BE1: 63 9C     .word sub_BE_9C63
- D 0 - I - 0x00FBF3 03:9BE3: 30        .byte $30   ; 
- D 0 - I - 0x00FBF4 03:9BE4: 88        .byte $88   ; 
- D 0 - I - 0x00FBF5 03:9BE5: C5        .byte con_se_cb_C5, $19   ; 
- D 0 - I - 0x00FBF7 03:9BE7: F4 9B     .word sub_C5_9BF4
- D 0 - I - 0x00FBF9 03:9BE9: BC        .byte con_se_cb_BC, $1E   ; 
- D 0 - I - 0x00FBFB 03:9BEB: 8E        .byte $8E   ; 
- D 0 - I - 0x00FBFC 03:9BEC: 82        .byte $82   ; 
- D 0 - I - 0x00FBFD 03:9BED: BD        .byte con_se_cb_BD   ; 
loc_A1_9BEE:
- D 0 - I - 0x00FBFE 03:9BEE: 0A        .byte $0A   ; 
- D 0 - I - 0x00FBFF 03:9BEF: 8F        .byte $8F   ; 
- D 0 - I - 0x00FC00 03:9BF0: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00FC01 03:9BF1: 0E        .byte $0E   ; 
- D 0 - I - 0x00FC02 03:9BF2: 8F        .byte $8F   ; 
- D 0 - I - 0x00FC03 03:9BF3: A2        .byte con_se_cb_A2   ; 
sub_C5_9BF4:
- D 0 - I - 0x00FC04 03:9BF4: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00FC05 03:9BF5: 99        .byte con_se_cb_99, $7F   ; 
- D 0 - I - 0x00FC07 03:9BF7: 02        .byte $02   ; 
- D 0 - I - 0x00FC08 03:9BF8: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00FC09 03:9BF9: 8E        .byte $8E   ; 
- D 0 - I - 0x00FC0A 03:9BFA: 82        .byte $82   ; 
- D 0 - I - 0x00FC0B 03:9BFB: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00FC0C 03:9BFC: 8E        .byte $8E   ; 
- D 0 - I - 0x00FC0D 03:9BFD: 82        .byte $82   ; 
- D 0 - I - 0x00FC0E 03:9BFE: D1        .byte con_se_cb_D1   ; 
- D 0 - I - 0x00FC0F 03:9BFF: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00FC11 03:9C01: BC        .byte con_se_cb_BC, $03   ; 
- D 0 - I - 0x00FC13 03:9C03: 8E        .byte $8E   ; 
- D 0 - I - 0x00FC14 03:9C04: 82        .byte $82   ; 
- D 0 - I - 0x00FC15 03:9C05: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FC16 03:9C06: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00FC17 03:9C07: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FC18 03:9C08: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00FC19 03:9C09: BC        .byte con_se_cb_BC, $03   ; 
- D 0 - I - 0x00FC1B 03:9C0B: 8E        .byte $8E   ; 
- D 0 - I - 0x00FC1C 03:9C0C: 82        .byte $82   ; 
- D 0 - I - 0x00FC1D 03:9C0D: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FC1E 03:9C0E: D4        .byte con_se_cb_D4   ; 
- D 0 - I - 0x00FC1F 03:9C0F: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00FC21 03:9C11: 8E        .byte $8E   ; 
- D 0 - I - 0x00FC22 03:9C12: 82        .byte $82   ; 
- D 0 - I - 0x00FC23 03:9C13: 8E        .byte $8E   ; 
- D 0 - I - 0x00FC24 03:9C14: 82        .byte $82   ; 
- D 0 - I - 0x00FC25 03:9C15: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x00FC26 03:9C16: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FC27 03:9C17: D6        .byte con_se_cb_D6   ; 
- D 0 - I - 0x00FC28 03:9C18: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00FC2A 03:9C1A: 8E        .byte $8E   ; 
- D 0 - I - 0x00FC2B 03:9C1B: 82        .byte $82   ; 
- D 0 - I - 0x00FC2C 03:9C1C: 8E        .byte $8E   ; 
- D 0 - I - 0x00FC2D 03:9C1D: 82        .byte $82   ; 
- D 0 - I - 0x00FC2E 03:9C1E: D7        .byte con_se_cb_D7   ; 
- D 0 - I - 0x00FC2F 03:9C1F: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FC30 03:9C20: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00FC31 03:9C21: 8E        .byte $8E   ; 
- D 0 - I - 0x00FC32 03:9C22: 82        .byte $82   ; 
- D 0 - I - 0x00FC33 03:9C23: 8E        .byte $8E   ; 
- D 0 - I - 0x00FC34 03:9C24: 82        .byte $82   ; 
- D 0 - I - 0x00FC35 03:9C25: D9        .byte con_se_cb_D9   ; 
- D 0 - I - 0x00FC36 03:9C26: 8E        .byte $8E   ; 
- D 0 - I - 0x00FC37 03:9C27: 82        .byte $82   ; 
- D 0 - I - 0x00FC38 03:9C28: DA        .byte con_se_cb_DA   ; 
- D 0 - I - 0x00FC39 03:9C29: 8E        .byte $8E   ; 
- D 0 - I - 0x00FC3A 03:9C2A: 82        .byte $82   ; 
- D 0 - I - 0x00FC3B 03:9C2B: DB        .byte con_se_cb_DB   ; 
- D 0 - I - 0x00FC3C 03:9C2C: 8E        .byte $8E   ; 
- D 0 - I - 0x00FC3D 03:9C2D: 82        .byte $82   ; 
- D 0 - I - 0x00FC3E 03:9C2E: DC        .byte con_se_cb_DC   ; 
- D 0 - I - 0x00FC3F 03:9C2F: 8E        .byte $8E   ; 
- D 0 - I - 0x00FC40 03:9C30: 82        .byte $82   ; 
- D 0 - I - 0x00FC41 03:9C31: DD        .byte con_se_cb_DD   ; 
- D 0 - I - 0x00FC42 03:9C32: 8E        .byte $8E   ; 
- D 0 - I - 0x00FC43 03:9C33: 82        .byte $82   ; 
- D 0 - I - 0x00FC44 03:9C34: DE        .byte con_se_cb_DE   ; 
- D 0 - I - 0x00FC45 03:9C35: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00FC47 03:9C37: 8E        .byte $8E   ; 
- D 0 - I - 0x00FC48 03:9C38: 82        .byte $82   ; 
- D 0 - I - 0x00FC49 03:9C39: 8E        .byte $8E   ; 
- D 0 - I - 0x00FC4A 03:9C3A: 82        .byte $82   ; 
- D 0 - I - 0x00FC4B 03:9C3B: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00FC4C 03:9C3C: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FC4D 03:9C3D: BF        .byte con_se_cb_BF_rts   ; 



sub_C5_9C3E:
- D 0 - I - 0x00FC4E 03:9C3E: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00FC4F 03:9C3F: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00FC50 03:9C40: 9A        .byte con_se_cb_9A, $09   ; 
- D 0 - I - 0x00FC52 03:9C42: 08        .byte $08   ; 
- D 0 - I - 0x00FC53 03:9C43: 80        .byte $80   ; 
- D 0 - I - 0x00FC54 03:9C44: DA        .byte con_se_cb_DA   ; 
- D 0 - I - 0x00FC55 03:9C45: E0        .byte con_se_cb_E0   ; 
- D 0 - I - 0x00FC56 03:9C46: 9A        .byte con_se_cb_9A, $24   ; 
- D 0 - I - 0x00FC58 03:9C48: 87        .byte $87   ; 
- D 0 - I - 0x00FC59 03:9C49: 88        .byte $88   ; 
- D 0 - I - 0x00FC5A 03:9C4A: DC        .byte con_se_cb_DC   ; 
- D 0 - I - 0x00FC5B 03:9C4B: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00FC5C 03:9C4C: 81        .byte $81   ; 
- D 0 - I - 0x00FC5D 03:9C4D: 82        .byte $82   ; 
- D 0 - I - 0x00FC5E 03:9C4E: 85        .byte $85   ; 
- D 0 - I - 0x00FC5F 03:9C4F: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00FC60 03:9C50: 9A        .byte con_se_cb_9A, $09   ; 
- D 0 - I - 0x00FC62 03:9C52: 0C        .byte $0C   ; 
- D 0 - I - 0x00FC63 03:9C53: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00FC64 03:9C54: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FC65 03:9C55: 84        .byte $84   ; 
- D 0 - I - 0x00FC66 03:9C56: 83        .byte $83   ; 
- D 0 - I - 0x00FC67 03:9C57: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9C58:
sub_C5_9C58:
- D 0 - I - 0x00FC68 03:9C58: 18        .byte $18   ; 
- D 0 - I - 0x00FC69 03:9C59: 87        .byte $87   ; 
- D 0 - I - 0x00FC6A 03:9C5A: 87        .byte $87   ; 
- D 0 - I - 0x00FC6B 03:9C5B: 08        .byte $08   ; 
- D 0 - I - 0x00FC6C 03:9C5C: 87        .byte $87   ; 
- D 0 - I - 0x00FC6D 03:9C5D: 87        .byte $87   ; 
- D 0 - I - 0x00FC6E 03:9C5E: 87        .byte $87   ; 
- D 0 - I - 0x00FC6F 03:9C5F: 18        .byte $18   ; 
- D 0 - I - 0x00FC70 03:9C60: 87        .byte $87   ; 
- D 0 - I - 0x00FC71 03:9C61: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FC72 03:9C62: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9C63:
- D 0 - I - 0x00FC73 03:9C63: 09        .byte $09   ; 
- D 0 - I - 0x00FC74 03:9C64: 85        .byte $85   ; 
- D 0 - I - 0x00FC75 03:9C65: 08        .byte $08   ; 
- D 0 - I - 0x00FC76 03:9C66: 84        .byte $84   ; 
- D 0 - I - 0x00FC77 03:9C67: 80        .byte $80   ; 
- D 0 - I - 0x00FC78 03:9C68: 0C        .byte $0C   ; 
- D 0 - I - 0x00FC79 03:9C69: 83        .byte $83   ; 
- D 0 - I - 0x00FC7A 03:9C6A: 0B        .byte $0B   ; 
- D 0 - I - 0x00FC7B 03:9C6B: 92        .byte con_se_cb_92   ; 
- D 0 - I - 0x00FC7C 03:9C6C: 89        .byte $89   ; 
- D 0 - I - 0x00FC7D 03:9C6D: 93        .byte con_se_cb_93, $18   ; 



sub_BE_9C6F:
sub_C5_9C6F:
- D 0 - I - 0x00FC7F 03:9C6F: 0A        .byte $0A   ; 
- D 0 - I - 0x00FC80 03:9C70: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FC81 03:9C71: 87        .byte $87   ; 
- D 0 - I - 0x00FC82 03:9C72: C2        .byte con_se_cb_C2   ; 
- D 0 - I - 0x00FC83 03:9C73: BC        .byte con_se_cb_BC, $04   ; 
- D 0 - I - 0x00FC85 03:9C75: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FC86 03:9C76: 8B 9F     .word sub_BE_9F8B
- D 0 - I - 0x00FC88 03:9C78: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FC89 03:9C79: 12        .byte $12   ; 
- D 0 - I - 0x00FC8A 03:9C7A: 87        .byte $87   ; 
- D 0 - I - 0x00FC8B 03:9C7B: C3        .byte con_se_cb_C3   ; 
- D 0 - I - 0x00FC8C 03:9C7C: BF        .byte con_se_cb_BF_rts   ; 



off_9C7D_1C_ch_03:
- D 0 - I - 0x00FC8D 03:9C7D: C5        .byte con_se_cb_C5, $11   ; 
- D 0 - I - 0x00FC8F 03:9C7F: C2 9C     .word sub_C5_9CC2
- D 0 - I - 0x00FC91 03:9C81: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00FC92 03:9C82: 04        .byte $04   ; 
- D 0 - I - 0x00FC93 03:9C83: 8D        .byte $8D   ; 
- D 0 - I - 0x00FC94 03:9C84: E2        .byte con_se_cb_E2   ; 
- D 0 - I - 0x00FC95 03:9C85: BC        .byte con_se_cb_BC, $0E   ; 
- D 0 - I - 0x00FC97 03:9C87: 80        .byte $80   ; 
- D 0 - I - 0x00FC98 03:9C88: 84        .byte $84   ; 
- D 0 - I - 0x00FC99 03:9C89: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FC9A 03:9C8A: 80        .byte $80   ; 
- D 0 - I - 0x00FC9B 03:9C8B: C5        .byte con_se_cb_C5, $06   ; 
- D 0 - I - 0x00FC9D 03:9C8D: 0C 9D     .word sub_C5_9D0C
- D 0 - I - 0x00FC9F 03:9C8F: C5        .byte con_se_cb_C5, $09   ; 
- D 0 - I - 0x00FCA1 03:9C91: 0C 9D     .word sub_C5_9D0C
- D 0 - I - 0x00FCA3 03:9C93: C5        .byte con_se_cb_C5, $08   ; 
- D 0 - I - 0x00FCA5 03:9C95: 0C 9D     .word sub_C5_9D0C
- D 0 - I - 0x00FCA7 03:9C97: C5        .byte con_se_cb_C5, $0A   ; 
- D 0 - I - 0x00FCA9 03:9C99: 0C 9D     .word sub_C5_9D0C
- D 0 - I - 0x00FCAB 03:9C9B: DC        .byte con_se_cb_DC   ; 
- D 0 - I - 0x00FCAC 03:9C9C: 9A        .byte con_se_cb_9A, $18   ; 
- D 0 - I - 0x00FCAE 03:9C9E: 92        .byte con_se_cb_92   ; 
- D 0 - I - 0x00FCAF 03:9C9F: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FCB0 03:9CA0: 58 9C     .word sub_BE_9C58
- D 0 - I - 0x00FCB2 03:9CA2: 09        .byte $09   ; 
- D 0 - I - 0x00FCB3 03:9CA3: 87        .byte $87   ; 
- D 0 - I - 0x00FCB4 03:9CA4: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00FCB5 03:9CA5: 9A        .byte con_se_cb_9A, $60   ; 
- D 0 - I - 0x00FCB7 03:9CA7: C5        .byte con_se_cb_C5, $2A   ; 
- D 0 - I - 0x00FCB9 03:9CA9: 74 9F     .word sub_C5_9F74
- D 0 - I - 0x00FCBB 03:9CAB: C1        .byte con_se_cb_C1, $01   ; 
- D 0 - I - 0x00FCBD 03:9CAD: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FCBE 03:9CAE: 63 9C     .word sub_BE_9C63
- D 0 - I - 0x00FCC0 03:9CB0: C1        .byte con_se_cb_C1, $02   ; 
- D 0 - I - 0x00FCC2 03:9CB2: 27        .byte $27   ; 
- D 0 - I - 0x00FCC3 03:9CB3: 88        .byte $88   ; 
- D 0 - I - 0x00FCC4 03:9CB4: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00FCC6 03:9CB6: C5        .byte con_se_cb_C5, $11   ; 
- D 0 - I - 0x00FCC8 03:9CB8: C2 9C     .word sub_C5_9CC2
- D 0 - I - 0x00FCCA 03:9CBA: BC        .byte con_se_cb_BC, $1E   ; 
- D 0 - I - 0x00FCCC 03:9CBC: 8D        .byte $8D   ; 
- D 0 - I - 0x00FCCD 03:9CBD: 85        .byte $85   ; 
- D 0 - I - 0x00FCCE 03:9CBE: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FCCF 03:9CBF: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FCD0 03:9CC0: EE 9B     .word loc_A1_9BEE



sub_C5_9CC2:
- D 0 - I - 0x00FCD2 03:9CC2: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00FCD3 03:9CC3: 99        .byte con_se_cb_99, $7F   ; 
- D 0 - I - 0x00FCD5 03:9CC5: 02        .byte $02   ; 
- D 0 - I - 0x00FCD6 03:9CC6: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00FCD7 03:9CC7: 8D        .byte $8D   ; 
- D 0 - I - 0x00FCD8 03:9CC8: 85        .byte $85   ; 
- D 0 - I - 0x00FCD9 03:9CC9: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00FCDA 03:9CCA: 8D        .byte $8D   ; 
- D 0 - I - 0x00FCDB 03:9CCB: 85        .byte $85   ; 
- D 0 - I - 0x00FCDC 03:9CCC: D1        .byte con_se_cb_D1   ; 
- D 0 - I - 0x00FCDD 03:9CCD: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00FCDF 03:9CCF: BC        .byte con_se_cb_BC, $03   ; 
- D 0 - I - 0x00FCE1 03:9CD1: 8D        .byte $8D   ; 
- D 0 - I - 0x00FCE2 03:9CD2: 85        .byte $85   ; 
- D 0 - I - 0x00FCE3 03:9CD3: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FCE4 03:9CD4: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00FCE5 03:9CD5: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FCE6 03:9CD6: D3        .byte con_se_cb_D3   ; 
- D 0 - I - 0x00FCE7 03:9CD7: BC        .byte con_se_cb_BC, $03   ; 
- D 0 - I - 0x00FCE9 03:9CD9: 8D        .byte $8D   ; 
- D 0 - I - 0x00FCEA 03:9CDA: 85        .byte $85   ; 
- D 0 - I - 0x00FCEB 03:9CDB: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FCEC 03:9CDC: D4        .byte con_se_cb_D4   ; 
- D 0 - I - 0x00FCED 03:9CDD: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00FCEF 03:9CDF: 8D        .byte $8D   ; 
- D 0 - I - 0x00FCF0 03:9CE0: 85        .byte $85   ; 
- D 0 - I - 0x00FCF1 03:9CE1: 8D        .byte $8D   ; 
- D 0 - I - 0x00FCF2 03:9CE2: 85        .byte $85   ; 
- D 0 - I - 0x00FCF3 03:9CE3: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x00FCF4 03:9CE4: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FCF5 03:9CE5: D6        .byte con_se_cb_D6   ; 
- D 0 - I - 0x00FCF6 03:9CE6: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00FCF8 03:9CE8: 8D        .byte $8D   ; 
- D 0 - I - 0x00FCF9 03:9CE9: 85        .byte $85   ; 
- D 0 - I - 0x00FCFA 03:9CEA: 8D        .byte $8D   ; 
- D 0 - I - 0x00FCFB 03:9CEB: 85        .byte $85   ; 
- D 0 - I - 0x00FCFC 03:9CEC: D7        .byte con_se_cb_D7   ; 
- D 0 - I - 0x00FCFD 03:9CED: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FCFE 03:9CEE: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00FCFF 03:9CEF: 8D        .byte $8D   ; 
- D 0 - I - 0x00FD00 03:9CF0: 85        .byte $85   ; 
- D 0 - I - 0x00FD01 03:9CF1: 8D        .byte $8D   ; 
- D 0 - I - 0x00FD02 03:9CF2: 85        .byte $85   ; 
- D 0 - I - 0x00FD03 03:9CF3: D9        .byte con_se_cb_D9   ; 
- D 0 - I - 0x00FD04 03:9CF4: 8D        .byte $8D   ; 
- D 0 - I - 0x00FD05 03:9CF5: 85        .byte $85   ; 
- D 0 - I - 0x00FD06 03:9CF6: DA        .byte con_se_cb_DA   ; 
- D 0 - I - 0x00FD07 03:9CF7: 8D        .byte $8D   ; 
- D 0 - I - 0x00FD08 03:9CF8: 85        .byte $85   ; 
- D 0 - I - 0x00FD09 03:9CF9: DB        .byte con_se_cb_DB   ; 
- D 0 - I - 0x00FD0A 03:9CFA: 8D        .byte $8D   ; 
- D 0 - I - 0x00FD0B 03:9CFB: 85        .byte $85   ; 
- D 0 - I - 0x00FD0C 03:9CFC: DC        .byte con_se_cb_DC   ; 
- D 0 - I - 0x00FD0D 03:9CFD: 8D        .byte $8D   ; 
- D 0 - I - 0x00FD0E 03:9CFE: 85        .byte $85   ; 
- D 0 - I - 0x00FD0F 03:9CFF: DD        .byte con_se_cb_DD   ; 
- D 0 - I - 0x00FD10 03:9D00: 8D        .byte $8D   ; 
- D 0 - I - 0x00FD11 03:9D01: 85        .byte $85   ; 
- D 0 - I - 0x00FD12 03:9D02: DE        .byte con_se_cb_DE   ; 
- D 0 - I - 0x00FD13 03:9D03: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00FD15 03:9D05: 8D        .byte $8D   ; 
- D 0 - I - 0x00FD16 03:9D06: 85        .byte $85   ; 
- D 0 - I - 0x00FD17 03:9D07: 8D        .byte $8D   ; 
- D 0 - I - 0x00FD18 03:9D08: 85        .byte $85   ; 
- D 0 - I - 0x00FD19 03:9D09: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00FD1A 03:9D0A: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FD1B 03:9D0B: BF        .byte con_se_cb_BF_rts   ; 



sub_C5_9D0C:
- D 0 - I - 0x00FD1C 03:9D0C: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00FD1D 03:9D0D: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00FD1E 03:9D0E: 9A        .byte con_se_cb_9A, $09   ; 
- D 0 - I - 0x00FD20 03:9D10: 18        .byte $18   ; 
- D 0 - I - 0x00FD21 03:9D11: 82        .byte $82   ; 
- D 0 - I - 0x00FD22 03:9D12: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00FD23 03:9D13: E2        .byte con_se_cb_E2   ; 
- D 0 - I - 0x00FD24 03:9D14: 0C        .byte $0C   ; 
- D 0 - I - 0x00FD25 03:9D15: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00FD26 03:9D16: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FD27 03:9D17: 86        .byte $86   ; 
- D 0 - I - 0x00FD28 03:9D18: 85        .byte $85   ; 
- D 0 - I - 0x00FD29 03:9D19: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FD2A 03:9D1A: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00FD2B 03:9D1B: 84        .byte $84   ; 
- D 0 - I - 0x00FD2C 03:9D1C: 86        .byte $86   ; 
- D 0 - I - 0x00FD2D 03:9D1D: BF        .byte con_se_cb_BF_rts   ; 



_off026_music_9D1E_2A_ambush:
; con_music_ambush
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00FD2E 03:9D1E: 0F        .byte %00001111   ;  
- D 0 - I - 0x00FD2F 03:9D1F: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00FD31 03:9D21: 29 9D     .word off_9D29_2A_ch_00
- D 0 - I - 0x00FD33 03:9D23: 5C 9D     .word off_9D5C_2A_ch_01
- D 0 - I - 0x00FD35 03:9D25: 79 9D     .word off_9D79_2A_ch_02
- D 0 - I - 0x00FD37 03:9D27: 8E 9D     .word off_9D8E_2A_ch_03



off_9D29_2A_ch_00:
loc_A1_9D29:
- D 0 - I - 0x00FD39 03:9D29: BB        .byte con_se_cb_BB, $FF, $FF   ; 
- D 0 - I - 0x00FD3C 03:9D2C: BC        .byte con_se_cb_BC, $0F   ; 
- D 0 - I - 0x00FD3E 03:9D2E: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00FD3F 03:9D2F: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00FD41 03:9D31: 0C        .byte $0C   ; 
- D 0 - I - 0x00FD42 03:9D32: 8D        .byte $8D   ; 
- D 0 - I - 0x00FD43 03:9D33: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FD44 03:9D34: 93 95     .word sub_BE_9593
- D 0 - I - 0x00FD46 03:9D36: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00FD47 03:9D37: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00FD49 03:9D39: 06        .byte $06   ; 
- D 0 - I - 0x00FD4A 03:9D3A: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FD4B 03:9D3B: 8D        .byte $8D   ; 
- D 0 - I - 0x00FD4C 03:9D3C: 8D        .byte $8D   ; 
- D 0 - I - 0x00FD4D 03:9D3D: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FD4E 03:9D3E: 93 95     .word sub_BE_9593
- D 0 - I - 0x00FD50 03:9D40: 06        .byte $06   ; 
- D 0 - I - 0x00FD51 03:9D41: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FD52 03:9D42: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FD53 03:9D43: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FD54 03:9D44: D9 9F     .word sub_BE_9FD9
- D 0 - I - 0x00FD56 03:9D46: 0B        .byte $0B   ; 
- D 0 - I - 0x00FD57 03:9D47: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FD58 03:9D48: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FD59 03:9D49: D0 9F     .word sub_BE_9FD0
- D 0 - I - 0x00FD5B 03:9D4B: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00FD5C 03:9D4C: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00FD5E 03:9D4E: 06        .byte $06   ; 
- D 0 - I - 0x00FD5F 03:9D4F: 8D        .byte $8D   ; 
- D 0 - I - 0x00FD60 03:9D50: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FD61 03:9D51: D0 9F     .word sub_BE_9FD0
- D 0 - I - 0x00FD63 03:9D53: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FD64 03:9D54: D0 9F     .word sub_BE_9FD0
- D 0 - I - 0x00FD66 03:9D56: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FD67 03:9D57: 93 95     .word sub_BE_9593
- D 0 - I - 0x00FD69 03:9D59: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FD6A 03:9D5A: 29 9D     .word loc_A1_9D29



off_9D5C_2A_ch_01:
loc_A1_9D5C:
- D 0 - I - 0x00FD6C 03:9D5C: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00FD6D 03:9D5D: 93        .byte con_se_cb_93, $10   ; 
- D 0 - I - 0x00FD6F 03:9D5F: 99        .byte con_se_cb_99, $05   ; 
- D 0 - I - 0x00FD71 03:9D61: 06        .byte $06   ; 
- D 0 - I - 0x00FD72 03:9D62: BC        .byte con_se_cb_BC, $20   ; 
- D 0 - I - 0x00FD74 03:9D64: 80        .byte $80   ; 
- D 0 - I - 0x00FD75 03:9D65: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FD76 03:9D66: BC        .byte con_se_cb_BC, $20   ; 
- D 0 - I - 0x00FD78 03:9D68: 82        .byte $82   ; 
- D 0 - I - 0x00FD79 03:9D69: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FD7A 03:9D6A: BC        .byte con_se_cb_BC, $20   ; 
- D 0 - I - 0x00FD7C 03:9D6C: 84        .byte $84   ; 
- D 0 - I - 0x00FD7D 03:9D6D: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FD7E 03:9D6E: BC        .byte con_se_cb_BC, $18   ; 
- D 0 - I - 0x00FD80 03:9D70: 83        .byte $83   ; 
- D 0 - I - 0x00FD81 03:9D71: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FD82 03:9D72: 99        .byte con_se_cb_99, $11   ; 
- D 0 - I - 0x00FD84 03:9D74: 30        .byte $30   ; 
- D 0 - I - 0x00FD85 03:9D75: 83        .byte $83   ; 
- D 0 - I - 0x00FD86 03:9D76: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FD87 03:9D77: 5C 9D     .word loc_A1_9D5C



off_9D79_2A_ch_02:
loc_A1_9D79:
- D 0 - I - 0x00FD89 03:9D79: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00FD8A 03:9D7A: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00FD8B 03:9D7B: C5        .byte con_se_cb_C5, $11   ; 
- D 0 - I - 0x00FD8D 03:9D7D: A3 9D     .word sub_C5_9DA3
- D 0 - I - 0x00FD8F 03:9D7F: C5        .byte con_se_cb_C5, $13   ; 
- D 0 - I - 0x00FD91 03:9D81: A3 9D     .word sub_C5_9DA3
- D 0 - I - 0x00FD93 03:9D83: C5        .byte con_se_cb_C5, $15   ; 
- D 0 - I - 0x00FD95 03:9D85: A3 9D     .word sub_C5_9DA3
- D 0 - I - 0x00FD97 03:9D87: C5        .byte con_se_cb_C5, $0F   ; 
- D 0 - I - 0x00FD99 03:9D89: BD 9D     .word sub_C5_9DBD
- D 0 - I - 0x00FD9B 03:9D8B: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FD9C 03:9D8C: 79 9D     .word loc_A1_9D79



off_9D8E_2A_ch_03:
loc_A1_9D8E:
- D 0 - I - 0x00FD9E 03:9D8E: D6        .byte con_se_cb_D6   ; 
- D 0 - I - 0x00FD9F 03:9D8F: E2        .byte con_se_cb_E2   ; 
- D 0 - I - 0x00FDA0 03:9D90: C5        .byte con_se_cb_C5, $0B   ; 
- D 0 - I - 0x00FDA2 03:9D92: A3 9D     .word sub_C5_9DA3
- D 0 - I - 0x00FDA4 03:9D94: C5        .byte con_se_cb_C5, $0D   ; 
- D 0 - I - 0x00FDA6 03:9D96: A3 9D     .word sub_C5_9DA3
- D 0 - I - 0x00FDA8 03:9D98: C5        .byte con_se_cb_C5, $0F   ; 
- D 0 - I - 0x00FDAA 03:9D9A: A3 9D     .word sub_C5_9DA3
- D 0 - I - 0x00FDAC 03:9D9C: C5        .byte con_se_cb_C5, $0B   ; 
- D 0 - I - 0x00FDAE 03:9D9E: BD 9D     .word sub_C5_9DBD
- D 0 - I - 0x00FDB0 03:9DA0: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FDB1 03:9DA1: 8E 9D     .word loc_A1_9D8E



sub_C5_9DA3:
- D 0 - I - 0x00FDB3 03:9DA3: 9A        .byte con_se_cb_9A, $0D   ; 
- D 0 - I - 0x00FDB5 03:9DA5: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00FDB7 03:9DA7: 06        .byte $06   ; 
- D 0 - I - 0x00FDB8 03:9DA8: BC        .byte con_se_cb_BC, $02   ; 
- D 0 - I - 0x00FDBA 03:9DAA: 8F        .byte $8F   ; 
- D 0 - I - 0x00FDBB 03:9DAB: 8A        .byte $8A   ; 
- D 0 - I - 0x00FDBC 03:9DAC: 89        .byte $89   ; 
- D 0 - I - 0x00FDBD 03:9DAD: 8E        .byte $8E   ; 
- D 0 - I - 0x00FDBE 03:9DAE: 8D        .byte $8D   ; 
- D 0 - I - 0x00FDBF 03:9DAF: 88        .byte $88   ; 
- D 0 - I - 0x00FDC0 03:9DB0: 87        .byte $87   ; 
- D 0 - I - 0x00FDC1 03:9DB1: 8C        .byte $8C   ; 
- D 0 - I - 0x00FDC2 03:9DB2: 8B        .byte $8B   ; 
- D 0 - I - 0x00FDC3 03:9DB3: 86        .byte $86   ; 
- D 0 - I - 0x00FDC4 03:9DB4: 85        .byte $85   ; 
- D 0 - I - 0x00FDC5 03:9DB5: 8A        .byte $8A   ; 
- D 0 - I - 0x00FDC6 03:9DB6: 89        .byte $89   ; 
- D 0 - I - 0x00FDC7 03:9DB7: 0C        .byte $0C   ; 
- D 0 - I - 0x00FDC8 03:9DB8: 84        .byte $84   ; 
- D 0 - I - 0x00FDC9 03:9DB9: 06        .byte $06   ; 
- D 0 - I - 0x00FDCA 03:9DBA: 88        .byte $88   ; 
- D 0 - I - 0x00FDCB 03:9DBB: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FDCC 03:9DBC: BF        .byte con_se_cb_BF_rts   ; 



sub_C5_9DBD:
- D 0 - I - 0x00FDCD 03:9DBD: 08        .byte $08   ; 
- D 0 - I - 0x00FDCE 03:9DBE: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FDCF 03:9DBF: 87        .byte $87   ; 
- D 0 - I - 0x00FDD0 03:9DC0: 88        .byte $88   ; 
- D 0 - I - 0x00FDD1 03:9DC1: 8C        .byte $8C   ; 
- D 0 - I - 0x00FDD2 03:9DC2: 8B        .byte $8B   ; 
- D 0 - I - 0x00FDD3 03:9DC3: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00FDD4 03:9DC4: 83        .byte $83   ; 
- D 0 - I - 0x00FDD5 03:9DC5: 82        .byte $82   ; 
- D 0 - I - 0x00FDD6 03:9DC6: 86        .byte $86   ; 
- D 0 - I - 0x00FDD7 03:9DC7: 85        .byte $85   ; 
- D 0 - I - 0x00FDD8 03:9DC8: 8A        .byte $8A   ; 
- D 0 - I - 0x00FDD9 03:9DC9: 89        .byte $89   ; 
- D 0 - I - 0x00FDDA 03:9DCA: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00FDDB 03:9DCB: 81        .byte $81   ; 
- D 0 - I - 0x00FDDC 03:9DCC: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FDDD 03:9DCD: 6F 9C     .word sub_BE_9C6F
- D 0 - I - 0x00FDDF 03:9DCF: 24        .byte $24   ; 
- D 0 - I - 0x00FDE0 03:9DD0: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FDE1 03:9DD1: BF        .byte con_se_cb_BF_rts   ; 



_off026_music_9DD2_1E_game_over:
; con_music_game_over
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00FDE2 03:9DD2: 0E        .byte %00001110   ;  
- - - - - - 0x00FDE3 03:9DD3: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00FDE5 03:9DD5: DB 9D     .word off_9DDB_1E_ch_01
- D 0 - I - 0x00FDE7 03:9DD7: EB 9D     .word off_9DEB_1E_ch_02
- D 0 - I - 0x00FDE9 03:9DD9: 1B 9E     .word off_9E1B_1E_ch_03



off_9DDB_1E_ch_01:
- D 0 - I - 0x00FDEB 03:9DDB: BB        .byte con_se_cb_BB, $47, $A9   ; 
- D 0 - I - 0x00FDEE 03:9DDE: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00FDEF 03:9DDF: 93        .byte con_se_cb_93, $18   ; 
- D 0 - I - 0x00FDF1 03:9DE1: 99        .byte con_se_cb_99, $7F   ; 
- D 0 - I - 0x00FDF3 03:9DE3: 60        .byte $60   ; 
- D 0 - I - 0x00FDF4 03:9DE4: 89        .byte $89   ; 
- D 0 - I - 0x00FDF5 03:9DE5: 87        .byte $87   ; 
- D 0 - I - 0x00FDF6 03:9DE6: 86        .byte $86   ; 
- D 0 - I - 0x00FDF7 03:9DE7: 85        .byte $85   ; 
- D 0 - I - 0x00FDF8 03:9DE8: 84        .byte $84   ; 
- D 0 - I - 0x00FDF9 03:9DE9: 84        .byte $84   ; 
- D 0 - I - 0x00FDFA 03:9DEA: A2        .byte con_se_cb_A2   ; 
off_9DEB_1E_ch_02:
- D 0 - I - 0x00FDFB 03:9DEB: DA        .byte con_se_cb_DA   ; 
- D 0 - I - 0x00FDFC 03:9DEC: 93        .byte con_se_cb_93, $26   ; 
- D 0 - I - 0x00FDFE 03:9DEE: E2        .byte con_se_cb_E2   ; 
- D 0 - I - 0x00FDFF 03:9DEF: 9C        .byte con_se_cb_9C, $08   ; 
- D 0 - I - 0x00FE01 03:9DF1: 0C        .byte $0C   ; 
- D 0 - I - 0x00FE02 03:9DF2: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FE03 03:9DF3: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FE04 03:9DF4: 84        .byte $84   ; 
- D 0 - I - 0x00FE05 03:9DF5: 85        .byte $85   ; 
- D 0 - I - 0x00FE06 03:9DF6: 84        .byte $84   ; 
- D 0 - I - 0x00FE07 03:9DF7: 18        .byte $18   ; 
- D 0 - I - 0x00FE08 03:9DF8: 80        .byte $80   ; 
- D 0 - I - 0x00FE09 03:9DF9: 12        .byte $12   ; 
- D 0 - I - 0x00FE0A 03:9DFA: 82        .byte $82   ; 
- D 0 - I - 0x00FE0B 03:9DFB: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FE0C 03:9DFC: 0C        .byte $0C   ; 
- D 0 - I - 0x00FE0D 03:9DFD: 84        .byte $84   ; 
- D 0 - I - 0x00FE0E 03:9DFE: 85        .byte $85   ; 
- D 0 - I - 0x00FE0F 03:9DFF: 84        .byte $84   ; 
- D 0 - I - 0x00FE10 03:9E00: 18        .byte $18   ; 
- D 0 - I - 0x00FE11 03:9E01: 82        .byte $82   ; 
- D 0 - I - 0x00FE12 03:9E02: 0C        .byte $0C   ; 
- D 0 - I - 0x00FE13 03:9E03: 87        .byte $87   ; 
- D 0 - I - 0x00FE14 03:9E04: 24        .byte $24   ; 
- D 0 - I - 0x00FE15 03:9E05: 92        .byte con_se_cb_92   ; 
- D 0 - I - 0x00FE16 03:9E06: 8E        .byte $8E   ; 
- D 0 - I - 0x00FE17 03:9E07: 06        .byte $06   ; 
- D 0 - I - 0x00FE18 03:9E08: 8C        .byte $8C   ; 
- D 0 - I - 0x00FE19 03:9E09: 8B        .byte $8B   ; 
- D 0 - I - 0x00FE1A 03:9E0A: 3C        .byte $3C   ; 
- D 0 - I - 0x00FE1B 03:9E0B: 8C        .byte $8C   ; 
- D 0 - I - 0x00FE1C 03:9E0C: 06        .byte $06   ; 
- D 0 - I - 0x00FE1D 03:9E0D: 8A        .byte $8A   ; 
- D 0 - I - 0x00FE1E 03:9E0E: 89        .byte $89   ; 
- D 0 - I - 0x00FE1F 03:9E0F: 30        .byte $30   ; 
- D 0 - I - 0x00FE20 03:9E10: 8A        .byte $8A   ; 
- D 0 - I - 0x00FE21 03:9E11: 18        .byte $18   ; 
- D 0 - I - 0x00FE22 03:9E12: 85        .byte $85   ; 
- D 0 - I - 0x00FE23 03:9E13: 48        .byte $48   ; 
- D 0 - I - 0x00FE24 03:9E14: 87        .byte $87   ; 
- D 0 - I - 0x00FE25 03:9E15: 18        .byte $18   ; 
- D 0 - I - 0x00FE26 03:9E16: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00FE27 03:9E17: 80        .byte $80   ; 
- D 0 - I - 0x00FE28 03:9E18: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FE29 03:9E19: 60 9E     .word loc_A1_9E60



off_9E1B_1E_ch_03:
- D 0 - I - 0x00FE2B 03:9E1B: D7        .byte con_se_cb_D7   ; 
- D 0 - I - 0x00FE2C 03:9E1C: 93        .byte con_se_cb_93, $0E   ; 
- D 0 - I - 0x00FE2E 03:9E1E: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00FE2F 03:9E1F: 9A        .byte con_se_cb_9A, $0C   ; 
- D 0 - I - 0x00FE31 03:9E21: 06        .byte $06   ; 
- D 0 - I - 0x00FE32 03:9E22: C1        .byte con_se_cb_C1, $04   ; 
- D 0 - I - 0x00FE34 03:9E24: 87        .byte $87   ; 
- D 0 - I - 0x00FE35 03:9E25: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FE36 03:9E26: 69 9E     .word sub_BE_9E69
- D 0 - I - 0x00FE38 03:9E28: 89        .byte $89   ; 
- D 0 - I - 0x00FE39 03:9E29: 82        .byte $82   ; 
- D 0 - I - 0x00FE3A 03:9E2A: 87        .byte $87   ; 
- D 0 - I - 0x00FE3B 03:9E2B: 82        .byte $82   ; 
- D 0 - I - 0x00FE3C 03:9E2C: 89        .byte $89   ; 
- D 0 - I - 0x00FE3D 03:9E2D: 82        .byte $82   ; 
- D 0 - I - 0x00FE3E 03:9E2E: C1        .byte con_se_cb_C1, $04   ; 
- D 0 - I - 0x00FE40 03:9E30: 92        .byte con_se_cb_92   ; 
- D 0 - I - 0x00FE41 03:9E31: 85        .byte $85   ; 
- D 0 - I - 0x00FE42 03:9E32: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FE43 03:9E33: 69 9E     .word sub_BE_9E69
- D 0 - I - 0x00FE45 03:9E35: 8B        .byte $8B   ; 
- D 0 - I - 0x00FE46 03:9E36: 82        .byte $82   ; 
- D 0 - I - 0x00FE47 03:9E37: 89        .byte $89   ; 
- D 0 - I - 0x00FE48 03:9E38: 82        .byte $82   ; 
- D 0 - I - 0x00FE49 03:9E39: 8E        .byte $8E   ; 
- D 0 - I - 0x00FE4A 03:9E3A: 82        .byte $82   ; 
- D 0 - I - 0x00FE4B 03:9E3B: 93        .byte con_se_cb_93, $15   ; 
- D 0 - I - 0x00FE4D 03:9E3D: BC        .byte con_se_cb_BC, $03   ; 
- D 0 - I - 0x00FE4F 03:9E3F: 8C        .byte $8C   ; 
- D 0 - I - 0x00FE50 03:9E40: 87        .byte $87   ; 
- D 0 - I - 0x00FE51 03:9E41: 80        .byte $80   ; 
- D 0 - I - 0x00FE52 03:9E42: 87        .byte $87   ; 
- D 0 - I - 0x00FE53 03:9E43: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FE54 03:9E44: 8C        .byte $8C   ; 
- D 0 - I - 0x00FE55 03:9E45: 87        .byte $87   ; 
- D 0 - I - 0x00FE56 03:9E46: 8A        .byte $8A   ; 
- D 0 - I - 0x00FE57 03:9E47: 89        .byte $89   ; 
- D 0 - I - 0x00FE58 03:9E48: BC        .byte con_se_cb_BC, $03   ; 
- D 0 - I - 0x00FE5A 03:9E4A: 8A        .byte $8A   ; 
- D 0 - I - 0x00FE5B 03:9E4B: 85        .byte $85   ; 
- D 0 - I - 0x00FE5C 03:9E4C: 80        .byte $80   ; 
- D 0 - I - 0x00FE5D 03:9E4D: 85        .byte $85   ; 
- D 0 - I - 0x00FE5E 03:9E4E: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FE5F 03:9E4F: 87        .byte $87   ; 
- D 0 - I - 0x00FE60 03:9E50: 85        .byte $85   ; 
- D 0 - I - 0x00FE61 03:9E51: 80        .byte $80   ; 
- D 0 - I - 0x00FE62 03:9E52: 85        .byte $85   ; 
- D 0 - I - 0x00FE63 03:9E53: BC        .byte con_se_cb_BC, $03   ; 
- D 0 - I - 0x00FE65 03:9E55: 89        .byte $89   ; 
- D 0 - I - 0x00FE66 03:9E56: 85        .byte $85   ; 
- D 0 - I - 0x00FE67 03:9E57: 80        .byte $80   ; 
- D 0 - I - 0x00FE68 03:9E58: 85        .byte $85   ; 
- D 0 - I - 0x00FE69 03:9E59: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FE6A 03:9E5A: 89        .byte $89   ; 
- D 0 - I - 0x00FE6B 03:9E5B: 85        .byte $85   ; 
- D 0 - I - 0x00FE6C 03:9E5C: 89        .byte $89   ; 
- D 0 - I - 0x00FE6D 03:9E5D: 8C        .byte $8C   ; 
- D 0 - I - 0x00FE6E 03:9E5E: 93        .byte con_se_cb_93, $23   ; 
loc_A1_9E60:
- D 0 - I - 0x00FE70 03:9E60: 99        .byte con_se_cb_99, $7F   ; 
- D 0 - I - 0x00FE72 03:9E62: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FE73 03:9E63: 74 9F     .word sub_BE_9F74
- D 0 - I - 0x00FE75 03:9E65: D2        .byte con_se_cb_D2   ; 
- D 0 - I - 0x00FE76 03:9E66: 06        .byte $06   ; 
- D 0 - I - 0x00FE77 03:9E67: 87        .byte $87   ; 
- D 0 - I - 0x00FE78 03:9E68: A2        .byte con_se_cb_A2   ; 
sub_BE_9E69:
- D 0 - I - 0x00FE79 03:9E69: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00FE7B 03:9E6B: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00FE7C 03:9E6C: 82        .byte $82   ; 
- D 0 - I - 0x00FE7D 03:9E6D: 87        .byte $87   ; 
- D 0 - I - 0x00FE7E 03:9E6E: 82        .byte $82   ; 
- D 0 - I - 0x00FE7F 03:9E6F: 8C        .byte $8C   ; 
- D 0 - I - 0x00FE80 03:9E70: 82        .byte $82   ; 
- D 0 - I - 0x00FE81 03:9E71: 8E        .byte $8E   ; 
- D 0 - I - 0x00FE82 03:9E72: 82        .byte $82   ; 
- D 0 - I - 0x00FE83 03:9E73: 8C        .byte $8C   ; 
- D 0 - I - 0x00FE84 03:9E74: 82        .byte $82   ; 
- D 0 - I - 0x00FE85 03:9E75: BF        .byte con_se_cb_BF_rts   ; 



_off026_music_9E76_25_dialogue_2:
; con_music_dialogue_2
;                                              +----------- 
;                                              |   +------- enable channel 03
;                                              |   |+------ enable channel 02
;                                              |   ||+----- enable channel 01
;                                              |   |||+---- enable channel 00
;                                              |   ||||
- D 0 - I - 0x00FE86 03:9E76: 0F        .byte %00001111   ;  
- D 0 - I - 0x00FE87 03:9E77: 75 8F     .word off_8F75_extra_data_1

- D 0 - I - 0x00FE89 03:9E79: 81 9E     .word off_9E81_25_ch_00
- D 0 - I - 0x00FE8B 03:9E7B: AD 9E     .word off_9EAD_25_ch_01
- D 0 - I - 0x00FE8D 03:9E7D: C3 9E     .word off_9EC3_25_ch_02
- D 0 - I - 0x00FE8F 03:9E7F: F3 9E     .word off_9EF3_25_ch_03



off_9E81_25_ch_00:
- D 0 - I - 0x00FE91 03:9E81: BB        .byte con_se_cb_BB, $67, $C5   ; 
- D 0 - I - 0x00FE94 03:9E84: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FE95 03:9E85: EC 9F     .word sub_BE_9FEC
loc_A1_9E87:
- D 0 - I - 0x00FE97 03:9E87: BC        .byte con_se_cb_BC, $03   ; 
- D 0 - I - 0x00FE99 03:9E89: 06        .byte $06   ; 
- D 0 - I - 0x00FE9A 03:9E8A: 80        .byte $80   ; 
- D 0 - I - 0x00FE9B 03:9E8B: 80        .byte $80   ; 
- D 0 - I - 0x00FE9C 03:9E8C: 80        .byte $80   ; 
- D 0 - I - 0x00FE9D 03:9E8D: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FE9E 03:9E8E: 93 95     .word sub_BE_9593
- D 0 - I - 0x00FEA0 03:9E90: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00FEA1 03:9E91: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00FEA3 03:9E93: 06        .byte $06   ; 
- D 0 - I - 0x00FEA4 03:9E94: 80        .byte $80   ; 
- D 0 - I - 0x00FEA5 03:9E95: 80        .byte $80   ; 
- D 0 - I - 0x00FEA6 03:9E96: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FEA7 03:9E97: EC 9F     .word sub_BE_9FEC
- D 0 - I - 0x00FEA9 03:9E99: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FEAA 03:9E9A: EC 9F     .word sub_BE_9FEC
- D 0 - I - 0x00FEAC 03:9E9C: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FEAD 03:9E9D: BC        .byte con_se_cb_BC, $03   ; 
- D 0 - I - 0x00FEAF 03:9E9F: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FEB0 03:9EA0: 93 95     .word sub_BE_9593
- D 0 - I - 0x00FEB2 03:9EA2: 06        .byte $06   ; 
- D 0 - I - 0x00FEB3 03:9EA3: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FEB4 03:9EA4: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FEB5 03:9EA5: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FEB6 03:9EA6: F5 9F     .word sub_BE_9FF5
- D 0 - I - 0x00FEB8 03:9EA8: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00FEBA 03:9EAA: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FEBB 03:9EAB: 87 9E     .word loc_A1_9E87



off_9EAD_25_ch_01:
loc_A1_9EAD:
- D 0 - I - 0x00FEBD 03:9EAD: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00FEBE 03:9EAE: 93        .byte con_se_cb_93, $18   ; 
- D 0 - I - 0x00FEC0 03:9EB0: 99        .byte con_se_cb_99, $7F   ; 
- D 0 - I - 0x00FEC2 03:9EB2: 48        .byte $48   ; 
- D 0 - I - 0x00FEC3 03:9EB3: 80        .byte $80   ; 
- D 0 - I - 0x00FEC4 03:9EB4: 80        .byte $80   ; 
- D 0 - I - 0x00FEC5 03:9EB5: 06        .byte $06   ; 
- D 0 - I - 0x00FEC6 03:9EB6: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00FEC7 03:9EB7: 82        .byte $82   ; 
- D 0 - I - 0x00FEC8 03:9EB8: 84        .byte $84   ; 
- D 0 - I - 0x00FEC9 03:9EB9: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FECA 03:9EBA: 80        .byte $80   ; 
- D 0 - I - 0x00FECB 03:9EBB: 92        .byte con_se_cb_92   ; 
- D 0 - I - 0x00FECC 03:9EBC: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FECD 03:9EBD: 87        .byte $87   ; 
- D 0 - I - 0x00FECE 03:9EBE: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FECF 03:9EBF: 80        .byte $80   ; 
- D 0 - I - 0x00FED0 03:9EC0: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FED1 03:9EC1: AD 9E     .word loc_A1_9EAD



off_9EC3_25_ch_02:
- D 0 - I - 0x00FED3 03:9EC3: DA        .byte con_se_cb_DA   ; 
- D 0 - I - 0x00FED4 03:9EC4: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00FED5 03:9EC5: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00FED7 03:9EC7: 06        .byte $06   ; 
- D 0 - I - 0x00FED8 03:9EC8: 90        .byte con_se_cb_90   ; 
loc_A1_9EC9:
- D 0 - I - 0x00FED9 03:9EC9: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FEDA 03:9ECA: D9 9E     .word sub_BE_9ED9
- D 0 - I - 0x00FEDC 03:9ECC: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FEDD 03:9ECD: 66 9F     .word sub_BE_9F66
- D 0 - I - 0x00FEDF 03:9ECF: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FEE0 03:9ED0: D9 9E     .word sub_BE_9ED9
- D 0 - I - 0x00FEE2 03:9ED2: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00FEE3 03:9ED3: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FEE4 03:9ED4: 66 9F     .word sub_BE_9F66
- D 0 - I - 0x00FEE6 03:9ED6: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FEE7 03:9ED7: C9 9E     .word loc_A1_9EC9



sub_BE_9ED9:
- D 0 - I - 0x00FEE9 03:9ED9: 93        .byte con_se_cb_93, $11   ; 
- D 0 - I - 0x00FEEB 03:9EDB: 9A        .byte con_se_cb_9A, $0F   ; 
- D 0 - I - 0x00FEED 03:9EDD: 06        .byte $06   ; 
- D 0 - I - 0x00FEEE 03:9EDE: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FEEF 03:9EDF: 8B        .byte $8B   ; 
- D 0 - I - 0x00FEF0 03:9EE0: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00FEF1 03:9EE1: 80        .byte $80   ; 
- D 0 - I - 0x00FEF2 03:9EE2: 08        .byte $08   ; 
- D 0 - I - 0x00FEF3 03:9EE3: 82        .byte $82   ; 
- D 0 - I - 0x00FEF4 03:9EE4: 87        .byte $87   ; 
- D 0 - I - 0x00FEF5 03:9EE5: 8E        .byte $8E   ; 
- D 0 - I - 0x00FEF6 03:9EE6: 9A        .byte con_se_cb_9A, $18   ; 
- D 0 - I - 0x00FEF8 03:9EE8: 18        .byte $18   ; 
- D 0 - I - 0x00FEF9 03:9EE9: 8C        .byte $8C   ; 
- D 0 - I - 0x00FEFA 03:9EEA: 06        .byte $06   ; 
- D 0 - I - 0x00FEFB 03:9EEB: 8C        .byte $8C   ; 
- D 0 - I - 0x00FEFC 03:9EEC: 9A        .byte con_se_cb_9A, $08   ; 
- D 0 - I - 0x00FEFE 03:9EEE: 0C        .byte $0C   ; 
- D 0 - I - 0x00FEFF 03:9EEF: 8F        .byte $8F   ; 
- D 0 - I - 0x00FF00 03:9EF0: 8E        .byte $8E   ; 
- D 0 - I - 0x00FF01 03:9EF1: 8B        .byte $8B   ; 
- D 0 - I - 0x00FF02 03:9EF2: BF        .byte con_se_cb_BF_rts   ; 



off_9EF3_25_ch_03:
- D 0 - I - 0x00FF03 03:9EF3: D6        .byte con_se_cb_D6   ; 
- D 0 - I - 0x00FF04 03:9EF4: E1        .byte con_se_cb_E1   ; 
- D 0 - I - 0x00FF05 03:9EF5: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00FF07 03:9EF7: 06        .byte $06   ; 
- D 0 - I - 0x00FF08 03:9EF8: 90        .byte con_se_cb_90   ; 
loc_A1_9EF9:
- D 0 - I - 0x00FF09 03:9EF9: C5        .byte con_se_cb_C5, $18   ; 
- D 0 - I - 0x00FF0B 03:9EFB: 0A 9F     .word sub_C5_9F0A
- D 0 - I - 0x00FF0D 03:9EFD: 92        .byte con_se_cb_92   ; 
- D 0 - I - 0x00FF0E 03:9EFE: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FF0F 03:9EFF: 66 9F     .word sub_BE_9F66
- D 0 - I - 0x00FF11 03:9F01: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FF12 03:9F02: 0A 9F     .word sub_BE_9F0A
- D 0 - I - 0x00FF14 03:9F04: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FF15 03:9F05: 66 9F     .word sub_BE_9F66
- D 0 - I - 0x00FF17 03:9F07: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FF18 03:9F08: F9 9E     .word loc_A1_9EF9



sub_BE_9F0A:
sub_C5_9F0A:
- D 0 - I - 0x00FF1A 03:9F0A: 9A        .byte con_se_cb_9A, $0F   ; 
- D 0 - I - 0x00FF1C 03:9F0C: 06        .byte $06   ; 
- D 0 - I - 0x00FF1D 03:9F0D: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FF1E 03:9F0E: 80        .byte $80   ; 
- D 0 - I - 0x00FF1F 03:9F0F: 82        .byte $82   ; 
- D 0 - I - 0x00FF20 03:9F10: 08        .byte $08   ; 
- D 0 - I - 0x00FF21 03:9F11: 84        .byte $84   ; 
- D 0 - I - 0x00FF22 03:9F12: 87        .byte $87   ; 
- D 0 - I - 0x00FF23 03:9F13: 91        .byte con_se_cb_91   ; 
- D 0 - I - 0x00FF24 03:9F14: 84        .byte $84   ; 
- D 0 - I - 0x00FF25 03:9F15: 9A        .byte con_se_cb_9A, $18   ; 
- D 0 - I - 0x00FF27 03:9F17: 18        .byte $18   ; 
- D 0 - I - 0x00FF28 03:9F18: 81        .byte $81   ; 
- D 0 - I - 0x00FF29 03:9F19: 06        .byte $06   ; 
- D 0 - I - 0x00FF2A 03:9F1A: 81        .byte $81   ; 
- D 0 - I - 0x00FF2B 03:9F1B: 9A        .byte con_se_cb_9A, $08   ; 
- D 0 - I - 0x00FF2D 03:9F1D: 0C        .byte $0C   ; 
- D 0 - I - 0x00FF2E 03:9F1E: 85        .byte $85   ; 
- D 0 - I - 0x00FF2F 03:9F1F: 84        .byte $84   ; 
- D 0 - I - 0x00FF30 03:9F20: 80        .byte $80   ; 
- D 0 - I - 0x00FF31 03:9F21: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9F22:
sub_C5_9F22:
- D 0 - I - 0x00FF32 03:9F22: 06        .byte $06   ; 
- D 0 - I - 0x00FF33 03:9F23: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FF34 03:9F24: 87        .byte $87   ; 
- D 0 - I - 0x00FF35 03:9F25: C2        .byte con_se_cb_C2   ; 
- D 0 - I - 0x00FF36 03:9F26: BC        .byte con_se_cb_BC, $04   ; 
- D 0 - I - 0x00FF38 03:9F28: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FF39 03:9F29: 81 9F     .word sub_BE_9F81
- D 0 - I - 0x00FF3B 03:9F2B: BD        .byte con_se_cb_BD   ; 
loc_A1_9F2C:
- D 0 - I - 0x00FF3C 03:9F2C: 06        .byte $06   ; 
- D 0 - I - 0x00FF3D 03:9F2D: 87        .byte $87   ; 
- D 0 - I - 0x00FF3E 03:9F2E: C3        .byte con_se_cb_C3   ; 
- D 0 - I - 0x00FF3F 03:9F2F: BF        .byte con_se_cb_BF_rts   ; 



sub_C5_9F30:
- D 0 - I - 0x00FF40 03:9F30: 06        .byte $06   ; 
- D 0 - I - 0x00FF41 03:9F31: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FF42 03:9F32: 87        .byte $87   ; 
- D 0 - I - 0x00FF43 03:9F33: C2        .byte con_se_cb_C2   ; 
- D 0 - I - 0x00FF44 03:9F34: BC        .byte con_se_cb_BC, $03   ; 
- D 0 - I - 0x00FF46 03:9F36: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FF47 03:9F37: 8B 9F     .word sub_BE_9F8B
- D 0 - I - 0x00FF49 03:9F39: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FF4A 03:9F3A: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FF4B 03:9F3B: 2C 9F     .word loc_A1_9F2C



sub_C5_9F3D:
- D 0 - I - 0x00FF4D 03:9F3D: 08        .byte $08   ; 
- D 0 - I - 0x00FF4E 03:9F3E: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FF4F 03:9F3F: 87        .byte $87   ; 
- D 0 - I - 0x00FF50 03:9F40: C2        .byte con_se_cb_C2   ; 
- D 0 - I - 0x00FF51 03:9F41: BC        .byte con_se_cb_BC, $04   ; 
- D 0 - I - 0x00FF53 03:9F43: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FF54 03:9F44: 8B 9F     .word sub_BE_9F8B
- D 0 - I - 0x00FF56 03:9F46: BD        .byte con_se_cb_BD   ; 
loc_A1_9F47:
- D 0 - I - 0x00FF57 03:9F47: 08        .byte $08   ; 
- D 0 - I - 0x00FF58 03:9F48: 87        .byte $87   ; 
- D 0 - I - 0x00FF59 03:9F49: C3        .byte con_se_cb_C3   ; 
- D 0 - I - 0x00FF5A 03:9F4A: BF        .byte con_se_cb_BF_rts   ; 



sub_C5_9F4B:
- D 0 - I - 0x00FF5B 03:9F4B: 0A        .byte $0A   ; 
- D 0 - I - 0x00FF5C 03:9F4C: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FF5D 03:9F4D: 87        .byte $87   ; 
- D 0 - I - 0x00FF5E 03:9F4E: C2        .byte con_se_cb_C2   ; 
- D 0 - I - 0x00FF5F 03:9F4F: BC        .byte con_se_cb_BC, $06   ; 
- D 0 - I - 0x00FF61 03:9F51: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FF62 03:9F52: 81 9F     .word sub_BE_9F81
- D 0 - I - 0x00FF64 03:9F54: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FF65 03:9F55: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FF66 03:9F56: 47 9F     .word loc_A1_9F47



sub_BE_9F58:
sub_C5_9F58:
- D 0 - I - 0x00FF68 03:9F58: 0A        .byte $0A   ; 
- D 0 - I - 0x00FF69 03:9F59: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FF6A 03:9F5A: 87        .byte $87   ; 
- D 0 - I - 0x00FF6B 03:9F5B: C2        .byte con_se_cb_C2   ; 
- D 0 - I - 0x00FF6C 03:9F5C: BC        .byte con_se_cb_BC, $04   ; 
- D 0 - I - 0x00FF6E 03:9F5E: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FF6F 03:9F5F: 8B 9F     .word sub_BE_9F8B
- D 0 - I - 0x00FF71 03:9F61: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FF72 03:9F62: 0C        .byte $0C   ; 
- D 0 - I - 0x00FF73 03:9F63: 87        .byte $87   ; 
- D 0 - I - 0x00FF74 03:9F64: C3        .byte con_se_cb_C3   ; 
- D 0 - I - 0x00FF75 03:9F65: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9F66:
sub_C5_9F66:
- D 0 - I - 0x00FF76 03:9F66: 0A        .byte $0A   ; 
- D 0 - I - 0x00FF77 03:9F67: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FF78 03:9F68: 87        .byte $87   ; 
- D 0 - I - 0x00FF79 03:9F69: C2        .byte con_se_cb_C2   ; 
- D 0 - I - 0x00FF7A 03:9F6A: BC        .byte con_se_cb_BC, $07   ; 
- D 0 - I - 0x00FF7C 03:9F6C: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FF7D 03:9F6D: 8B 9F     .word sub_BE_9F8B
- D 0 - I - 0x00FF7F 03:9F6F: BD        .byte con_se_cb_BD   ; 
loc_A1_9F70:
- D 0 - I - 0x00FF80 03:9F70: 12        .byte $12   ; 
- D 0 - I - 0x00FF81 03:9F71: 87        .byte $87   ; 
- D 0 - I - 0x00FF82 03:9F72: C3        .byte con_se_cb_C3   ; 
- D 0 - I - 0x00FF83 03:9F73: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9F74:
sub_C5_9F74:
- D 0 - I - 0x00FF84 03:9F74: 0E        .byte $0E   ; 
- D 0 - I - 0x00FF85 03:9F75: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FF86 03:9F76: 87        .byte $87   ; 
- D 0 - I - 0x00FF87 03:9F77: C2        .byte con_se_cb_C2   ; 
- D 0 - I - 0x00FF88 03:9F78: BC        .byte con_se_cb_BC, $08   ; 
- D 0 - I - 0x00FF8A 03:9F7A: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FF8B 03:9F7B: 8B 9F     .word sub_BE_9F8B
- D 0 - I - 0x00FF8D 03:9F7D: BD        .byte con_se_cb_BD   ; 
- D 0 - I - 0x00FF8E 03:9F7E: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FF8F 03:9F7F: 70 9F     .word loc_A1_9F70



sub_BE_9F81:
- D 0 - I - 0x00FF91 03:9F81: 01        .byte $01   ; 
- D 0 - I - 0x00FF92 03:9F82: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FF93 03:9F83: A8 9F     .word sub_BE_9FA8
- D 0 - I - 0x00FF95 03:9F85: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FF96 03:9F86: 9D 9F     .word sub_BE_9F9D
- D 0 - I - 0x00FF98 03:9F88: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FF99 03:9F89: 87        .byte $87   ; 
- D 0 - I - 0x00FF9A 03:9F8A: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9F8B:
- D 0 - I - 0x00FF9B 03:9F8B: 01        .byte $01   ; 
- D 0 - I - 0x00FF9C 03:9F8C: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FF9D 03:9F8D: C1        .byte con_se_cb_C1, $01   ; 
- D 0 - I - 0x00FF9F 03:9F8F: 87        .byte $87   ; 
- D 0 - I - 0x00FFA0 03:9F90: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FFA1 03:9F91: C1        .byte con_se_cb_C1, $02   ; 
- D 0 - I - 0x00FFA3 03:9F93: 87        .byte $87   ; 
- D 0 - I - 0x00FFA4 03:9F94: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FFA5 03:9F95: A8 9F     .word sub_BE_9FA8
- D 0 - I - 0x00FFA7 03:9F97: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FFA8 03:9F98: C1        .byte con_se_cb_C1, $FF   ; 
- D 0 - I - 0x00FFAA 03:9F9A: 87        .byte $87   ; 
- D 0 - I - 0x00FFAB 03:9F9B: C1        .byte con_se_cb_C1, $FE   ; 
sub_BE_9F9D:
- D 0 - I - 0x00FFAD 03:9F9D: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FFAE 03:9F9E: 87        .byte $87   ; 
- D 0 - I - 0x00FFAF 03:9F9F: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FFB0 03:9FA0: C1        .byte con_se_cb_C1, $FF   ; 
loc_A1_9FA2:
- D 0 - I - 0x00FFB2 03:9FA2: 87        .byte $87   ; 
- D 0 - I - 0x00FFB3 03:9FA3: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FFB4 03:9FA4: C1        .byte con_se_cb_C1, $00   ; 
- D 0 - I - 0x00FFB6 03:9FA6: 87        .byte $87   ; 
- D 0 - I - 0x00FFB7 03:9FA7: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9FA8:
- D 0 - I - 0x00FFB8 03:9FA8: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FFB9 03:9FA9: C1        .byte con_se_cb_C1, $01   ; 
- D 0 - I - 0x00FFBB 03:9FAB: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FFBC 03:9FAC: A2 9F     .word loc_A1_9FA2



sub_BE_9FAE:
sub_C5_9FAE:
- D 0 - I - 0x00FFBE 03:9FAE: 08        .byte $08   ; 
- D 0 - I - 0x00FFBF 03:9FAF: DD        .byte con_se_cb_DD   ; 
- D 0 - I - 0x00FFC0 03:9FB0: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FFC1 03:9FB1: 80        .byte $80   ; 
loc_A1_9FB2:
- D 0 - I - 0x00FFC2 03:9FB2: C2        .byte con_se_cb_C2   ; 
- D 0 - I - 0x00FFC3 03:9FB3: D4        .byte con_se_cb_D4   ; 
- D 0 - I - 0x00FFC4 03:9FB4: 80        .byte $80   ; 
- D 0 - I - 0x00FFC5 03:9FB5: C3        .byte con_se_cb_C3   ; 
- D 0 - I - 0x00FFC6 03:9FB6: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9FB7:
- D 0 - I - 0x00FFC7 03:9FB7: 06        .byte $06   ; 
- D 0 - I - 0x00FFC8 03:9FB8: DD        .byte con_se_cb_DD   ; 
- D 0 - I - 0x00FFC9 03:9FB9: 95        .byte con_se_cb_95   ; 
- D 0 - I - 0x00FFCA 03:9FBA: 80        .byte $80   ; 
- D 0 - I - 0x00FFCB 03:9FBB: 02        .byte $02   ; 
- D 0 - I - 0x00FFCC 03:9FBC: A1        .byte con_se_cb_A1_jmp1   ; 
- D 0 - I - 0x00FFCD 03:9FBD: B2 9F     .word loc_A1_9FB2



sub_BE_9FBF:
- D 0 - I - 0x00FFCF 03:9FBF: D7        .byte con_se_cb_D7   ; 
- D 0 - I - 0x00FFD0 03:9FC0: 01        .byte $01   ; 
- D 0 - I - 0x00FFD1 03:9FC1: 8A        .byte $8A   ; 
- D 0 - I - 0x00FFD2 03:9FC2: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x00FFD3 03:9FC3: 07        .byte $07   ; 
- D 0 - I - 0x00FFD4 03:9FC4: 86        .byte $86   ; 
- D 0 - I - 0x00FFD5 03:9FC5: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9FC6:
- D 0 - I - 0x00FFD6 03:9FC6: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00FFD8 03:9FC8: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00FFD9 03:9FC9: 01        .byte $01   ; 
- D 0 - I - 0x00FFDA 03:9FCA: 8D        .byte $8D   ; 
- D 0 - I - 0x00FFDB 03:9FCB: 81        .byte $81   ; 
- D 0 - I - 0x00FFDC 03:9FCC: 90        .byte con_se_cb_90   ; 
- D 0 - I - 0x00FFDD 03:9FCD: 03        .byte $03   ; 
- D 0 - I - 0x00FFDE 03:9FCE: 8D        .byte $8D   ; 
- D 0 - I - 0x00FFDF 03:9FCF: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9FD0:
- D 0 - I - 0x00FFE0 03:9FD0: 9A        .byte con_se_cb_9A, $03   ; 
- D 0 - I - 0x00FFE2 03:9FD2: DE        .byte con_se_cb_DE   ; 
- D 0 - I - 0x00FFE3 03:9FD3: 01        .byte $01   ; 
- D 0 - I - 0x00FFE4 03:9FD4: 8A        .byte $8A   ; 
- D 0 - I - 0x00FFE5 03:9FD5: D9        .byte con_se_cb_D9   ; 
- D 0 - I - 0x00FFE6 03:9FD6: 02        .byte $02   ; 
- D 0 - I - 0x00FFE7 03:9FD7: 86        .byte $86   ; 
- D 0 - I - 0x00FFE8 03:9FD8: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9FD9:
- D 0 - I - 0x00FFE9 03:9FD9: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FFEA 03:9FDA: E5 9F     .word sub_BE_9FE5
- D 0 - I - 0x00FFEC 03:9FDC: 0F        .byte $0F   ; 
- D 0 - I - 0x00FFED 03:9FDD: 82        .byte $82   ; 
- D 0 - I - 0x00FFEE 03:9FDE: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9FDF:
- D 0 - I - 0x00FFEF 03:9FDF: BE        .byte con_se_cb_BE_jsr   ; 
- D 0 - I - 0x00FFF0 03:9FE0: E5 9F     .word sub_BE_9FE5
- D 0 - I - 0x00FFF2 03:9FE2: 17        .byte $17   ; 
- D 0 - I - 0x00FFF3 03:9FE3: 82        .byte $82   ; 
- D 0 - I - 0x00FFF4 03:9FE4: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9FE5:
- D 0 - I - 0x00FFF5 03:9FE5: 9A        .byte con_se_cb_9A, $10   ; 
- D 0 - I - 0x00FFF7 03:9FE7: DF        .byte con_se_cb_DF   ; 
- D 0 - I - 0x00FFF8 03:9FE8: 01        .byte $01   ; 
- D 0 - I - 0x00FFF9 03:9FE9: 8D        .byte $8D   ; 
- D 0 - I - 0x00FFFA 03:9FEA: D9        .byte con_se_cb_D9   ; 
- D 0 - I - 0x00FFFB 03:9FEB: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9FEC:
- D 0 - I - 0x00FFFC 03:9FEC: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x00FFFD 03:9FED: 99        .byte con_se_cb_99, $01   ; 
- D 0 - I - 0x00FFFF 03:9FEF: 01        .byte $01   ; 
- D 0 - I - 0x010000 03:9FF0: 8D        .byte $8D   ; 
- D 0 - I - 0x010001 03:9FF1: 05        .byte $05   ; 
- D 0 - I - 0x010002 03:9FF2: 80        .byte $80   ; 
- D 0 - I - 0x010003 03:9FF3: 06        .byte $06   ; 
- D 0 - I - 0x010004 03:9FF4: BF        .byte con_se_cb_BF_rts   ; 



sub_BE_9FF5:
- D 0 - I - 0x010005 03:9FF5: D8        .byte con_se_cb_D8   ; 
- D 0 - I - 0x010006 03:9FF6: 9A        .byte con_se_cb_9A, $1E   ; 
- D 0 - I - 0x010008 03:9FF8: 01        .byte $01   ; 
- D 0 - I - 0x010009 03:9FF9: 8D        .byte $8D   ; 
- D 0 - I - 0x01000A 03:9FFA: D5        .byte con_se_cb_D5   ; 
- D 0 - I - 0x01000B 03:9FFB: 0B        .byte $0B   ; 
- D 0 - I - 0x01000C 03:9FFC: 81        .byte $81   ; 
- D 0 - I - 0x01000D 03:9FFD: BF        .byte con_se_cb_BF_rts   ; 


; bzk garbage
- - - - - - 0x01000E 03:9FFE: FF        .byte $FF   ; 
- - - - - - 0x01000F 03:9FFF: FF        .byte $FF   ; 



.out .sprintf("Free bytes in bank 07: 0x%04X [%d]", ($A000 - *), ($A000 - *))



