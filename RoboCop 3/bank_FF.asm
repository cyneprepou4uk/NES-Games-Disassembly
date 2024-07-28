.segment "BANK_FF"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $C000 ; for listing file
; 0x01C010-0x02000F



loc_C000:
.export loc_out_0x01C010
loc_out_0x01C010:
; bzk optimize
C D 2 - - - 0x01C010 07:C000: 4C 0C C0  JMP loc_C00C



.export sub_0x01C013_prepare_sound
sub_0x01C013_prepare_sound:
; bzk optimize
C - - - - - 0x01C013 07:C003: 4C 17 C4  JMP loc_C417_prepare_sound



.export sub_0x01C016
sub_0x01C016:
; bzk optimize
C - - - - - 0x01C016 07:C006: 4C 22 C4  JMP loc_C422


; bzk garbage
- - - - - - 0x01C019 07:C009: 4C 69 C0  JMP loc_C069_main_game_loop



loc_C00C:
C D 2 - - - 0x01C01C 07:C00C: 78        SEI
C - - - - - 0x01C01D 07:C00D: AD 02 20  LDA $2002
C - - - - - 0x01C020 07:C010: A2 00     LDX #$00
C - - - - - 0x01C022 07:C012: 8E 00 20  STX $2000
C - - - - - 0x01C025 07:C015: 8E 01 20  STX $2001
C - - - - - 0x01C028 07:C018: 86 10     STX ram_for_2000
C - - - - - 0x01C02A 07:C01A: 86 11     STX ram_for_2001
C - - - - - 0x01C02C 07:C01C: 8E 15 40  STX $4015
C - - - - - 0x01C02F 07:C01F: AC B3 01  LDY ram_01B3
C - - - - - 0x01C032 07:C022: 8A        TXA
bra_C023_loop:
C - - - - - 0x01C033 07:C023: 95 00     STA $00,X
C - - - - - 0x01C035 07:C025: 9D 00 01  STA $0100,X
C - - - - - 0x01C038 07:C028: 9D 00 02  STA $0200,X
C - - - - - 0x01C03B 07:C02B: 9D 00 03  STA $0300,X
C - - - - - 0x01C03E 07:C02E: 9D 00 04  STA $0400,X
C - - - - - 0x01C041 07:C031: 9D 00 05  STA $0500,X
C - - - - - 0x01C044 07:C034: 9D 00 06  STA $0600,X
C - - - - - 0x01C047 07:C037: 9D 00 07  STA $0700,X
C - - - - - 0x01C04A 07:C03A: E8        INX
C - - - - - 0x01C04B 07:C03B: D0 E6     BNE bra_C023_loop
C - - - - - 0x01C04D 07:C03D: CA        DEX
C - - - - - 0x01C04E 07:C03E: 9A        TXS
C - - - - - 0x01C04F 07:C03F: 8C B3 01  STY ram_01B3
C - - - - - 0x01C052 07:C042: A2 59     LDX #$59
bra_C044_loop:
C - - - - - 0x01C054 07:C044: BD 83 FC  LDA tbl_FC83,X
C - - - - - 0x01C057 07:C047: 9D 70 07  STA ram_0770,X
C - - - - - 0x01C05A 07:C04A: CA        DEX
C - - - - - 0x01C05B 07:C04B: 10 F7     BPL bra_C044_loop
C - - - - - 0x01C05D 07:C04D: 20 5D C2  JSR sub_C25D
C - - - - - 0x01C060 07:C050: A9 01     LDA #$01
C - - - - - 0x01C062 07:C052: 8D A7 06  STA ram_option_music
C - - - - - 0x01C065 07:C055: 8D A8 06  STA ram_option_sound
C - - - - - 0x01C068 07:C058: A0 05     LDY #con_prg_bank + $05
C - - - - - 0x01C06A 07:C05A: 20 54 F9  JSR sub_F954_prg_bankswitch
C - - - - - 0x01C06D 07:C05D: 20 30 C4  JSR sub_C430
C - - - - - 0x01C070 07:C060: A9 00     LDA #$00
C - - - - - 0x01C072 07:C062: 85 0A     STA ram_nmi_handler
C - - - - - 0x01C074 07:C064: A9 00     LDA #$00
C - - - - - 0x01C076 07:C066: 20 03 80  JSR sub_0x014013
loc_C069_main_game_loop:
C D 2 - - - 0x01C079 07:C069: 20 30 C4  JSR sub_C430
C - - - - - 0x01C07C 07:C06C: A9 23     LDA #$23
C - - - - - 0x01C07E 07:C06E: 85 37     STA ram_random
C - - - - - 0x01C080 07:C070: A9 4C     LDA #$4C
C - - - - - 0x01C082 07:C072: 85 38     STA ram_random + $01
C - - - - - 0x01C084 07:C074: A9 E6     LDA #$E6
C - - - - - 0x01C086 07:C076: 85 39     STA ram_random + $02
C - - - - - 0x01C088 07:C078: A9 B1     LDA #$B1
C - - - - - 0x01C08A 07:C07A: 85 3A     STA ram_random + $03
C - - - - - 0x01C08C 07:C07C: A9 00     LDA #$00
C - - - - - 0x01C08E 07:C07E: 85 46     STA ram_message ; con_msg_protect_the_innocent
C - - - - - 0x01C090 07:C080: 8D 46 06  STA ram_0646_smart_bomb
C - - - - - 0x01C093 07:C083: 8D 83 06  STA ram_0683
C - - - - - 0x01C096 07:C086: A9 02     LDA #$02
C - - - - - 0x01C098 07:C088: 8D 52 06  STA ram_new_msg_timer + $01
C - - - - - 0x01C09B 07:C08B: 85 3B     STA ram_003B
C - - - - - 0x01C09D 07:C08D: 8D 85 06  STA ram_0685
; print briefing
C - - - - - 0x01C0A0 07:C090: A5 03     LDA ram_mission
; A = 00-04
C - - - - - 0x01C0A2 07:C092: 20 06 80  JSR sub_0x014016_print_text
C - - - - - 0x01C0A5 07:C095: 20 30 C4  JSR sub_C430
C - - - - - 0x01C0A8 07:C098: A9 00     LDA #$00
C - - - - - 0x01C0AA 07:C09A: 85 1C     STA ram_weapon_upgrade_fire
C - - - - - 0x01C0AC 07:C09C: 85 1D     STA ram_weapon_upgrade_missile
C - - - - - 0x01C0AE 07:C09E: 8D 59 06  STA ram_weapon_type ; fire
loc_C0A1:
C D 2 - - - 0x01C0B1 07:C0A1: AE A9 06  LDX ram_06A9
C - - - - - 0x01C0B4 07:C0A4: BD CA 06  LDA ram_copy_mission,X
C - - - - - 0x01C0B7 07:C0A7: 85 03     STA ram_mission
C - - - - - 0x01C0B9 07:C0A9: BD C0 06  LDA ram_copy_unit_hp_head,X
C - - - - - 0x01C0BC 07:C0AC: 8D A0 06  STA ram_unit_hp_head
C - - - - - 0x01C0BF 07:C0AF: BD C2 06  LDA ram_copy_unit_hp_body,X
C - - - - - 0x01C0C2 07:C0B2: 8D A1 06  STA ram_unit_hp_body
C - - - - - 0x01C0C5 07:C0B5: BD C4 06  LDA ram_copy_unit_hp_arms,X
C - - - - - 0x01C0C8 07:C0B8: 8D A2 06  STA ram_unit_hp_arms
C - - - - - 0x01C0CB 07:C0BB: BD C6 06  LDA ram_copy_unit_hp_legs,X
C - - - - - 0x01C0CE 07:C0BE: 8D A3 06  STA ram_unit_hp_legs
C - - - - - 0x01C0D1 07:C0C1: BD C8 06  LDA ram_copy_repair_item,X
C - - - - - 0x01C0D4 07:C0C4: 8D A4 06  STA ram_repair_item
C - - - - - 0x01C0D7 07:C0C7: BD D2 06  LDA ram_06D2,X
C - - - - - 0x01C0DA 07:C0CA: 8D 3C 06  STA ram_063C
C - - - - - 0x01C0DD 07:C0CD: BD D4 06  LDA ram_06D4,X
C - - - - - 0x01C0E0 07:C0D0: 8D 3D 06  STA ram_063C + $01
C - - - - - 0x01C0E3 07:C0D3: 20 8B C2  JSR sub_C28B
loc_C0D6:
C D 2 - - - 0x01C0E6 07:C0D6: 78        SEI
C - - - - - 0x01C0E7 07:C0D7: AD 02 20  LDA $2002
C - - - - - 0x01C0EA 07:C0DA: A2 00     LDX #$00
C - - - - - 0x01C0EC 07:C0DC: 8E 00 20  STX $2000
C - - - - - 0x01C0EF 07:C0DF: 8E 01 20  STX $2001
C - - - - - 0x01C0F2 07:C0E2: 86 10     STX ram_for_2000
C - - - - - 0x01C0F4 07:C0E4: 86 11     STX ram_for_2001
C - - - - - 0x01C0F6 07:C0E6: 8E 15 40  STX $4015
C - - - - - 0x01C0F9 07:C0E9: A9 E7     LDA #$E7
C - - - - - 0x01C0FB 07:C0EB: 8D 5D 06  STA ram_065D
C - - - - - 0x01C0FE 07:C0EE: A9 03     LDA #$03
C - - - - - 0x01C100 07:C0F0: 85 0A     STA ram_nmi_handler
C - - - - - 0x01C102 07:C0F2: A6 03     LDX ram_mission
C - - - - - 0x01C104 07:C0F4: BC 39 FC  LDY tbl_FC39_prg_bank_for_mission,X
C - - - - - 0x01C107 07:C0F7: 20 54 F9  JSR sub_F954_prg_bankswitch
C - - - - - 0x01C10A 07:C0FA: 20 2F C3  JSR sub_C32F
C - - - - - 0x01C10D 07:C0FD: A9 00     LDA #$00
C - - - - - 0x01C10F 07:C0FF: 85 09     STA ram_nmi_flag
C - - - - - 0x01C111 07:C101: 85 33     STA ram_pause_flag  ; pause OFF
C - - - - - 0x01C113 07:C103: A9 02     LDA #$02
C - - - - - 0x01C115 07:C105: 8D F5 06  STA ram_06F5
C - - - - - 0x01C118 07:C108: A9 01     LDA #$01
C - - - - - 0x01C11A 07:C10A: 8D 50 03  STA ram_0350_stars
C - - - - - 0x01C11D 07:C10D: A9 0F     LDA #$0F
C - - - - - 0x01C11F 07:C10F: 8D 4F 03  STA ram_034F
C - - - - - 0x01C122 07:C112: 8D 4E 03  STA ram_034E
bra_C115_loop:
bra_C115_infinite_loop:
C - - - - - 0x01C125 07:C115: A5 09     LDA ram_nmi_flag
C - - - - - 0x01C127 07:C117: F0 FC     BEQ bra_C115_infinite_loop
C - - - - - 0x01C129 07:C119: A9 00     LDA #$00
C - - - - - 0x01C12B 07:C11B: 85 09     STA ram_nmi_flag
C - - - - - 0x01C12D 07:C11D: 20 76 D1  JSR sub_D176
C - - - - - 0x01C130 07:C120: CE F5 06  DEC ram_06F5
C - - - - - 0x01C133 07:C123: D0 F0     BNE bra_C115_loop
C - - - - - 0x01C135 07:C125: A9 01     LDA #$01    ; pause ON
C - - - - - 0x01C137 07:C127: 85 33     STA ram_pause_flag
C - - - - - 0x01C139 07:C129: A9 02     LDA #$02
C - - - - - 0x01C13B 07:C12B: 8D F5 06  STA ram_06F5
bra_C12E_loop:
bra_C12E_infinite_loop:
C - - - - - 0x01C13E 07:C12E: A5 09     LDA ram_nmi_flag
C - - - - - 0x01C140 07:C130: F0 FC     BEQ bra_C12E_infinite_loop
C - - - - - 0x01C142 07:C132: A9 00     LDA #$00
C - - - - - 0x01C144 07:C134: 85 09     STA ram_nmi_flag
C - - - - - 0x01C146 07:C136: 20 76 D1  JSR sub_D176
C - - - - - 0x01C149 07:C139: CE F5 06  DEC ram_06F5
C - - - - - 0x01C14C 07:C13C: D0 F0     BNE bra_C12E_loop
C - - - - - 0x01C14E 07:C13E: A9 00     LDA #$00    ; pause OFF
C - - - - - 0x01C150 07:C140: 85 33     STA ram_pause_flag
C - - - - - 0x01C152 07:C142: 85 09     STA ram_nmi_flag
C - - - - - 0x01C154 07:C144: A4 1B     LDY ram_001B
C - - - - - 0x01C156 07:C146: B9 33 80  LDA $8033,Y
C - - - - - 0x01C159 07:C149: 85 EA     STA ram_00EA
C - - - - - 0x01C15B 07:C14B: B9 36 80  LDA $8036,Y
C - - - - - 0x01C15E 07:C14E: 85 EB     STA ram_00EB
C - - - - - 0x01C160 07:C150: A0 0F     LDY #$0F
bra_C152_loop:
C - - - - - 0x01C162 07:C152: B1 EA     LDA (ram_00EA),Y
C - - - - - 0x01C164 07:C154: 99 65 06  STA ram_0665,Y
C - - - - - 0x01C167 07:C157: 88        DEY
C - - - - - 0x01C168 07:C158: 10 F8     BPL bra_C152_loop
C - - - - - 0x01C16A 07:C15A: A4 1B     LDY ram_001B
C - - - - - 0x01C16C 07:C15C: B9 69 80  LDA $8069,Y
C - - - - - 0x01C16F 07:C15F: 85 EA     STA ram_00EA
C - - - - - 0x01C171 07:C161: B9 6C 80  LDA $806C,Y
C - - - - - 0x01C174 07:C164: 85 EB     STA ram_00EB
C - - - - - 0x01C176 07:C166: A0 0F     LDY #$0F
bra_C168_loop:
C - - - - - 0x01C178 07:C168: B1 EA     LDA (ram_00EA),Y
C - - - - - 0x01C17A 07:C16A: 99 87 06  STA ram_0687,Y
C - - - - - 0x01C17D 07:C16D: 88        DEY
C - - - - - 0x01C17E 07:C16E: 10 F8     BPL bra_C168_loop
bra_C170_loop:
bra_C170_infinite_loop:
C - - - - - 0x01C180 07:C170: A5 09     LDA ram_nmi_flag
C - - - - - 0x01C182 07:C172: F0 FC     BEQ bra_C170_infinite_loop
C - - - - - 0x01C184 07:C174: A9 00     LDA #$00
C - - - - - 0x01C186 07:C176: 85 09     STA ram_nmi_flag
C - - - - - 0x01C188 07:C178: 20 76 D1  JSR sub_D176
C - - - - - 0x01C18B 07:C17B: 20 63 D1  JSR sub_D163_generate_random
C - - - - - 0x01C18E 07:C17E: AD 7E 06  LDA ram_067E
C - - - - - 0x01C191 07:C181: F0 ED     BEQ bra_C170_loop
C - - - - - 0x01C193 07:C183: 10 43     BPL bra_C1C8
C - - - - - 0x01C195 07:C185: AE A9 06  LDX ram_06A9
C - - - - - 0x01C198 07:C188: DE D6 06  DEC ram_06D6,X
C - - - - - 0x01C19B 07:C18B: AD 3C 06  LDA ram_063C
C - - - - - 0x01C19E 07:C18E: 9D D2 06  STA ram_06D2,X
C - - - - - 0x01C1A1 07:C191: AD 3D 06  LDA ram_063C + $01
C - - - - - 0x01C1A4 07:C194: 9D D4 06  STA ram_06D4,X
C - - - - - 0x01C1A7 07:C197: A5 03     LDA ram_mission
C - - - - - 0x01C1A9 07:C199: 9D CA 06  STA ram_copy_mission,X
C - - - - - 0x01C1AC 07:C19C: A0 05     LDY #con_prg_bank + $05
C - - - - - 0x01C1AE 07:C19E: 20 54 F9  JSR sub_F954_prg_bankswitch
C - - - - - 0x01C1B1 07:C1A1: 20 30 C4  JSR sub_C430
C - - - - - 0x01C1B4 07:C1A4: A9 00     LDA #$00
C - - - - - 0x01C1B6 07:C1A6: 85 0A     STA ram_nmi_handler
C - - - - - 0x01C1B8 07:C1A8: 85 1B     STA ram_001B
C - - - - - 0x01C1BA 07:C1AA: A9 02     LDA #$02
C - - - - - 0x01C1BC 07:C1AC: 20 03 80  JSR sub_0x014013
C - - - - - 0x01C1BF 07:C1AF: AD A5 06  LDA ram_06A5
C - - - - - 0x01C1C2 07:C1B2: D0 06     BNE bra_C1BA
C - - - - - 0x01C1C4 07:C1B4: 20 5D C2  JSR sub_C25D
C - - - - - 0x01C1C7 07:C1B7: 4C 69 C0  JMP loc_C069_main_game_loop
bra_C1BA:
C - - - - - 0x01C1CA 07:C1BA: AE A9 06  LDX ram_06A9
C - - - - - 0x01C1CD 07:C1BD: A9 00     LDA #$00
C - - - - - 0x01C1CF 07:C1BF: 9D D2 06  STA ram_06D2,X
C - - - - - 0x01C1D2 07:C1C2: 9D D4 06  STA ram_06D4,X
C - - - - - 0x01C1D5 07:C1C5: 4C 69 C0  JMP loc_C069_main_game_loop
bra_C1C8:
loc_C1C8:
C D 2 - - - 0x01C1D8 07:C1C8: A5 03     LDA ram_mission
C - - - - - 0x01C1DA 07:C1CA: C9 05     CMP #$05
C - - - - - 0x01C1DC 07:C1CC: F0 53     BEQ bra_C221
C - - - - - 0x01C1DE 07:C1CE: AE A9 06  LDX ram_06A9
C - - - - - 0x01C1E1 07:C1D1: A5 03     LDA ram_mission
C - - - - - 0x01C1E3 07:C1D3: 9D CA 06  STA ram_copy_mission,X
C - - - - - 0x01C1E6 07:C1D6: A9 00     LDA #$00
C - - - - - 0x01C1E8 07:C1D8: 85 0A     STA ram_nmi_handler
C - - - - - 0x01C1EA 07:C1DA: 85 1B     STA ram_001B
C - - - - - 0x01C1EC 07:C1DC: 20 30 C4  JSR sub_C430
C - - - - - 0x01C1EF 07:C1DF: A0 05     LDY #con_prg_bank + $05
C - - - - - 0x01C1F1 07:C1E1: 20 54 F9  JSR sub_F954_prg_bankswitch
C - - - - - 0x01C1F4 07:C1E4: A5 03     LDA ram_mission
C - - - - - 0x01C1F6 07:C1E6: C9 04     CMP #$04
C - - - - - 0x01C1F8 07:C1E8: D0 03     BNE bra_C1ED
C - - - - - 0x01C1FA 07:C1EA: 4C 69 C0  JMP loc_C069_main_game_loop
bra_C1ED:
C - - - - - 0x01C1FD 07:C1ED: AE A9 06  LDX ram_06A9
C - - - - - 0x01C200 07:C1F0: AD 3C 06  LDA ram_063C
C - - - - - 0x01C203 07:C1F3: 9D D2 06  STA ram_06D2,X
C - - - - - 0x01C206 07:C1F6: AD 3D 06  LDA ram_063C + $01
C - - - - - 0x01C209 07:C1F9: 9D D4 06  STA ram_06D4,X
C - - - - - 0x01C20C 07:C1FC: AD A0 06  LDA ram_unit_hp_head
C - - - - - 0x01C20F 07:C1FF: 9D C0 06  STA ram_copy_unit_hp_head,X
C - - - - - 0x01C212 07:C202: AD A1 06  LDA ram_unit_hp_body
C - - - - - 0x01C215 07:C205: 9D C2 06  STA ram_copy_unit_hp_body,X
C - - - - - 0x01C218 07:C208: AD A2 06  LDA ram_unit_hp_arms
C - - - - - 0x01C21B 07:C20B: 9D C4 06  STA ram_copy_unit_hp_arms,X
C - - - - - 0x01C21E 07:C20E: AD A3 06  LDA ram_unit_hp_legs
C - - - - - 0x01C221 07:C211: 9D C6 06  STA ram_copy_unit_hp_legs,X
C - - - - - 0x01C224 07:C214: A9 06     LDA #$06    ; well done, officer
C - - - - - 0x01C226 07:C216: 20 06 80  JSR sub_0x014016_print_text
C - - - - - 0x01C229 07:C219: A9 01     LDA #$01
C - - - - - 0x01C22B 07:C21B: 20 03 80  JSR sub_0x014013
C - - - - - 0x01C22E 07:C21E: 4C 69 C0  JMP loc_C069_main_game_loop
bra_C221:
C - - - - - 0x01C231 07:C221: A0 05     LDY #con_prg_bank + $05
C - - - - - 0x01C233 07:C223: 20 54 F9  JSR sub_F954_prg_bankswitch
C - - - - - 0x01C236 07:C226: 20 30 C4  JSR sub_C430
C - - - - - 0x01C239 07:C229: A9 00     LDA #$00
C - - - - - 0x01C23B 07:C22B: 85 0A     STA ram_nmi_handler
C - - - - - 0x01C23D 07:C22D: A9 03     LDA #$03
C - - - - - 0x01C23F 07:C22F: 20 03 80  JSR sub_0x014013
- - - - - - 0x01C242 07:C232: 20 5F C2  JSR sub_C25F
- - - - - - 0x01C245 07:C235: 4C 69 C0  JMP loc_C069_main_game_loop



loc_C238:
C D 2 - - - 0x01C248 07:C238: AE A9 06  LDX ram_06A9
C - - - - - 0x01C24B 07:C23B: A5 03     LDA ram_mission
C - - - - - 0x01C24D 07:C23D: 9D CA 06  STA ram_copy_mission,X
C - - - - - 0x01C250 07:C240: A9 00     LDA #$00
C - - - - - 0x01C252 07:C242: 85 0A     STA ram_nmi_handler
C - - - - - 0x01C254 07:C244: A9 01     LDA #$01
C - - - - - 0x01C256 07:C246: 85 1B     STA ram_001B
C - - - - - 0x01C258 07:C248: 20 30 C4  JSR sub_C430
C - - - - - 0x01C25B 07:C24B: A0 05     LDY #con_prg_bank + $05
C - - - - - 0x01C25D 07:C24D: 20 54 F9  JSR sub_F954_prg_bankswitch
C - - - - - 0x01C260 07:C250: A9 06     LDA #$06    ; well done, officer
C - - - - - 0x01C262 07:C252: 20 06 80  JSR sub_0x014016_print_text
C - - - - - 0x01C265 07:C255: A9 01     LDA #$01
C - - - - - 0x01C267 07:C257: 20 03 80  JSR sub_0x014013
C - - - - - 0x01C26A 07:C25A: 4C A1 C0  JMP loc_C0A1



sub_C25D:
C - - - - - 0x01C26D 07:C25D: A2 01     LDX #$01
sub_C25F:
bra_C25F_loop:
C - - - - - 0x01C26F 07:C25F: A9 00     LDA #$00
C - - - - - 0x01C271 07:C261: 9D CA 06  STA ram_copy_mission,X
C - - - - - 0x01C274 07:C264: A9 19     LDA #$19
C - - - - - 0x01C276 07:C266: 9D C0 06  STA ram_copy_unit_hp_head,X
C - - - - - 0x01C279 07:C269: 9D C2 06  STA ram_copy_unit_hp_body,X
C - - - - - 0x01C27C 07:C26C: 9D C4 06  STA ram_copy_unit_hp_arms,X
C - - - - - 0x01C27F 07:C26F: 9D C6 06  STA ram_copy_unit_hp_legs,X
C - - - - - 0x01C282 07:C272: A9 05     LDA #$05
C - - - - - 0x01C284 07:C274: 9D C8 06  STA ram_copy_repair_item,X
C - - - - - 0x01C287 07:C277: A9 03     LDA #$03
C - - - - - 0x01C289 07:C279: 9D D6 06  STA ram_06D6,X
C - - - - - 0x01C28C 07:C27C: A9 00     LDA #$00
C - - - - - 0x01C28E 07:C27E: 9D D2 06  STA ram_06D2,X
C - - - - - 0x01C291 07:C281: 9D D4 06  STA ram_06D4,X
C - - - - - 0x01C294 07:C284: CA        DEX
C - - - - - 0x01C295 07:C285: 10 D8     BPL bra_C25F_loop
C - - - - - 0x01C297 07:C287: 20 07 F6  JSR sub_F607
C - - - - - 0x01C29A 07:C28A: 60        RTS



sub_C28B:
C - - - - - 0x01C29B 07:C28B: 38        SEC
C - - - - - 0x01C29C 07:C28C: A9 FF     LDA #$FF
C - - - - - 0x01C29E 07:C28E: ED A0 06  SBC ram_unit_hp_head
C - - - - - 0x01C2A1 07:C291: 8D B0 06  STA ram_06B0_head
C - - - - - 0x01C2A4 07:C294: 38        SEC
C - - - - - 0x01C2A5 07:C295: A9 FF     LDA #$FF
C - - - - - 0x01C2A7 07:C297: ED A1 06  SBC ram_unit_hp_body
C - - - - - 0x01C2AA 07:C29A: 8D B1 06  STA ram_06B0_body
C - - - - - 0x01C2AD 07:C29D: 38        SEC
C - - - - - 0x01C2AE 07:C29E: A9 FF     LDA #$FF
C - - - - - 0x01C2B0 07:C2A0: ED A2 06  SBC ram_unit_hp_arms
C - - - - - 0x01C2B3 07:C2A3: 8D B2 06  STA ram_06B0_arms
C - - - - - 0x01C2B6 07:C2A6: 38        SEC
C - - - - - 0x01C2B7 07:C2A7: A9 FF     LDA #$FF
C - - - - - 0x01C2B9 07:C2A9: ED A3 06  SBC ram_unit_hp_legs
C - - - - - 0x01C2BC 07:C2AC: 8D B3 06  STA ram_06B0_legs
C - - - - - 0x01C2BF 07:C2AF: 60        RTS



sub_C2B0:
C - - - - - 0x01C2C0 07:C2B0: CE B4 06  DEC ram_06B4
C - - - - - 0x01C2C3 07:C2B3: 10 2D     BPL bra_C2E2
C - - - - - 0x01C2C5 07:C2B5: A9 64     LDA #$64
C - - - - - 0x01C2C7 07:C2B7: 8D B4 06  STA ram_06B4
C - - - - - 0x01C2CA 07:C2BA: A9 00     LDA #$00
C - - - - - 0x01C2CC 07:C2BC: 8D B5 06  STA ram_06B5
C - - - - - 0x01C2CF 07:C2BF: A5 37     LDA ram_random
C - - - - - 0x01C2D1 07:C2C1: 29 03     AND #$03
C - - - - - 0x01C2D3 07:C2C3: AA        TAX
C - - - - - 0x01C2D4 07:C2C4: BD B0 06  LDA ram_06B0_unit,X
C - - - - - 0x01C2D7 07:C2C7: C9 EE     CMP #$EE
C - - - - - 0x01C2D9 07:C2C9: 90 0B     BCC bra_C2D6
C - - - - - 0x01C2DB 07:C2CB: A5 37     LDA ram_random
C - - - - - 0x01C2DD 07:C2CD: C9 14     CMP #$14
C - - - - - 0x01C2DF 07:C2CF: B0 05     BCS bra_C2D6
C - - - - - 0x01C2E1 07:C2D1: E8        INX
C - - - - - 0x01C2E2 07:C2D2: 8E B5 06  STX ram_06B5
bra_C2D5_RTS:
C - - - - - 0x01C2E5 07:C2D5: 60        RTS
bra_C2D6:
C - - - - - 0x01C2E6 07:C2D6: A5 46     LDA ram_message
C - - - - - 0x01C2E8 07:C2D8: C9 16     CMP #$16
C - - - - - 0x01C2EA 07:C2DA: 90 F9     BCC bra_C2D5_RTS
; if 1 of 4 unit mailfunction messages
C - - - - - 0x01C2EC 07:C2DC: A9 00     LDA #con_msg_protect_the_innocent
C - - - - - 0x01C2EE 07:C2DE: 20 7B C9  JSR sub_C97B_prepare_new_message
C - - - - - 0x01C2F1 07:C2E1: 60        RTS
bra_C2E2:
C - - - - - 0x01C2F2 07:C2E2: AD B5 06  LDA ram_06B5
C - - - - - 0x01C2F5 07:C2E5: D0 01     BNE bra_C2E8
C - - - - - 0x01C2F7 07:C2E7: 60        RTS
bra_C2E8:
C - - - - - 0x01C2F8 07:C2E8: C9 04     CMP #$04
C - - - - - 0x01C2FA 07:C2EA: D0 09     BNE bra_C2F5
C - - - - - 0x01C2FC 07:C2EC: A5 00     LDA ram_buttons
C - - - - - 0x01C2FE 07:C2EE: 29 78     AND #(con_btn1_A + con_btns1_LR + con_btn1_Down) ^ $FF
C - - - - - 0x01C300 07:C2F0: 85 00     STA ram_buttons
C - - - - - 0x01C302 07:C2F2: 4C 1D C3  JMP loc_C31D
bra_C2F5:
C - - - - - 0x01C305 07:C2F5: C9 03     CMP #$03
C - - - - - 0x01C307 07:C2F7: D0 09     BNE bra_C302
C - - - - - 0x01C309 07:C2F9: A5 00     LDA ram_buttons
C - - - - - 0x01C30B 07:C2FB: 29 BF     AND #con_btn1_B ^ $FF
C - - - - - 0x01C30D 07:C2FD: 85 00     STA ram_buttons
C - - - - - 0x01C30F 07:C2FF: 4C 1D C3  JMP loc_C31D
bra_C302:
C - - - - - 0x01C312 07:C302: C9 02     CMP #$02
C - - - - - 0x01C314 07:C304: D0 09     BNE bra_C30F
C - - - - - 0x01C316 07:C306: A5 00     LDA ram_buttons
C - - - - - 0x01C318 07:C308: 29 7B     AND #(con_btn1_A + con_btn1_Down) ^ $FF
C - - - - - 0x01C31A 07:C30A: 85 00     STA ram_buttons
C - - - - - 0x01C31C 07:C30C: 4C 1D C3  JMP loc_C31D
bra_C30F:
C - - - - - 0x01C31F 07:C30F: A5 00     LDA ram_buttons
C - - - - - 0x01C321 07:C311: 29 03     AND #con_btns1_LR
C - - - - - 0x01C323 07:C313: AA        TAX
C - - - - - 0x01C324 07:C314: A5 00     LDA ram_buttons
C - - - - - 0x01C326 07:C316: 29 FC     AND #con_btns1_LR ^ $FF
C - - - - - 0x01C328 07:C318: 1D 2B C3  ORA tbl_C32B,X
C - - - - - 0x01C32B 07:C31B: 85 00     STA ram_buttons
loc_C31D:
C D 2 - - - 0x01C32D 07:C31D: AD B5 06  LDA ram_06B5
C - - - - - 0x01C330 07:C320: 18        CLC
C - - - - - 0x01C331 07:C321: 69 15     ADC #$15
; con_msg_head_unit_mailfunction
; con_msg_body_unit_mailfunction
; con_msg_arm_units_mailfunction
; con_msg_leg_units_mailfunction
C - - - - - 0x01C333 07:C323: C5 46     CMP ram_message
C - - - - - 0x01C335 07:C325: F0 03     BEQ bra_C32A_RTS
C - - - - - 0x01C337 07:C327: 20 7B C9  JSR sub_C97B_prepare_new_message
bra_C32A_RTS:
C - - - - - 0x01C33A 07:C32A: 60        RTS



tbl_C32B:
- D 2 - - - 0x01C33B 07:C32B: 00        .byte $00   ; 00 
- D 2 - - - 0x01C33C 07:C32C: 02        .byte con_btn1_Left   ; 01 
- D 2 - - - 0x01C33D 07:C32D: 01        .byte con_btn1_Right   ; 02 
- - - - - - 0x01C33E 07:C32E: 03        .byte con_btns1_LR   ; 03 



sub_C32F:
C - - - - - 0x01C33F 07:C32F: 78        SEI
C - - - - - 0x01C340 07:C330: A2 00     LDX #$00
C - - - - - 0x01C342 07:C332: 86 30     STX ram_0030_index
C - - - - - 0x01C344 07:C334: 86 36     STX ram_0036
C - - - - - 0x01C346 07:C336: 86 3D     STX ram_003D
C - - - - - 0x01C348 07:C338: 8E 7E 06  STX ram_067E
C - - - - - 0x01C34B 07:C33B: 86 33     STX ram_pause_flag
C - - - - - 0x01C34D 07:C33D: 86 3C     STX ram_003C
C - - - - - 0x01C34F 07:C33F: 86 17     STX ram_0017
C - - - - - 0x01C351 07:C341: 8E 7F 06  STX ram_067F
C - - - - - 0x01C354 07:C344: 8E 39 06  STX ram_0639
C - - - - - 0x01C357 07:C347: 8E 9D 06  STX ram_069D
C - - - - - 0x01C35A 07:C34A: 8E 9E 06  STX ram_069E
C - - - - - 0x01C35D 07:C34D: A9 03     LDA #$03
C - - - - - 0x01C35F 07:C34F: 85 0A     STA ram_nmi_handler
C - - - - - 0x01C361 07:C351: 8D 9C 06  STA ram_069C
C - - - - - 0x01C364 07:C354: A9 03     LDA #$03
C - - - - - 0x01C366 07:C356: 8D 40 06  STA ram_jetpack_fuel
C - - - - - 0x01C369 07:C359: A4 1B     LDY ram_001B
C - - - - - 0x01C36B 07:C35B: B9 06 80  LDA $8006,Y
C - - - - - 0x01C36E 07:C35E: 85 DA     STA ram_00DA
C - - - - - 0x01C370 07:C360: B9 09 80  LDA $8009,Y
C - - - - - 0x01C373 07:C363: 85 DB     STA ram_00DB
C - - - - - 0x01C375 07:C365: B9 0C 80  LDA $800C,Y 
C - - - - - 0x01C378 07:C368: 85 0C     STA ram_000C
C - - - - - 0x01C37A 07:C36A: B9 0F 80  LDA $800F,Y
C - - - - - 0x01C37D 07:C36D: 85 0D     STA ram_000D
C - - - - - 0x01C37F 07:C36F: B9 12 80  LDA $8012,Y
C - - - - - 0x01C382 07:C372: 85 15     STA ram_limit_scroll_X
C - - - - - 0x01C384 07:C374: B9 15 80  LDA $8015,Y
C - - - - - 0x01C387 07:C377: 85 16     STA ram_0016
C - - - - - 0x01C389 07:C379: B9 18 80  LDA $8018,Y
C - - - - - 0x01C38C 07:C37C: 85 DC     STA ram_00DC
C - - - - - 0x01C38E 07:C37E: B9 1B 80  LDA $801B,Y
C - - - - - 0x01C391 07:C381: 85 DD     STA ram_00DC + $01
C - - - - - 0x01C393 07:C383: B9 1E 80  LDA $801E,Y
C - - - - - 0x01C396 07:C386: 85 DE     STA ram_00DE
C - - - - - 0x01C398 07:C388: B9 21 80  LDA $8021,Y
C - - - - - 0x01C39B 07:C38B: 85 DF     STA ram_00DE + $01
C - - - - - 0x01C39D 07:C38D: B9 24 80  LDA $8024,Y
C - - - - - 0x01C3A0 07:C390: 85 E0     STA ram_00E0
C - - - - - 0x01C3A2 07:C392: B9 27 80  LDA $8027,Y
C - - - - - 0x01C3A5 07:C395: 85 E1     STA ram_00E0 + $01
C - - - - - 0x01C3A7 07:C397: B9 2A 80  LDA $802A,Y ;
C - - - - - 0x01C3AA 07:C39A: 85 2C     STA ram_002C_chr_bank
C - - - - - 0x01C3AC 07:C39C: B9 2D 80  LDA $802D,Y
C - - - - - 0x01C3AF 07:C39F: 85 2D     STA ram_002C_chr_bank + $01
C - - - - - 0x01C3B1 07:C3A1: B9 30 80  LDA $8030,Y
C - - - - - 0x01C3B4 07:C3A4: 85 2E     STA ram_002C_chr_bank + $02
C - - - - - 0x01C3B6 07:C3A6: B9 54 80  LDA $8054,Y
C - - - - - 0x01C3B9 07:C3A9: 85 12     STA ram_scroll_X
C - - - - - 0x01C3BB 07:C3AB: 85 13     STA ram_scroll_and_08
C - - - - - 0x01C3BD 07:C3AD: B9 57 80  LDA $8057,Y
C - - - - - 0x01C3C0 07:C3B0: 85 14     STA ram_base_nmt
C - - - - - 0x01C3C2 07:C3B2: A0 0F     LDY #$0F
C - - - - - 0x01C3C4 07:C3B4: A9 0F     LDA #$0F
bra_C3B6_loop:
C - - - - - 0x01C3C6 07:C3B6: 99 65 06  STA ram_0665,Y
C - - - - - 0x01C3C9 07:C3B9: 99 87 06  STA ram_0687,Y
C - - - - - 0x01C3CC 07:C3BC: 88        DEY
C - - - - - 0x01C3CD 07:C3BD: 10 F7     BPL bra_C3B6_loop
bra_C3BF_infinite_loop:
C - - - - - 0x01C3CF 07:C3BF: AD 02 20  LDA $2002
C - - - - - 0x01C3D2 07:C3C2: 10 FB     BPL bra_C3BF_infinite_loop
C - - - - - 0x01C3D4 07:C3C4: A4 1B     LDY ram_001B
C - - - - - 0x01C3D6 07:C3C6: B9 39 80  LDA $8039,Y 
C - - - - - 0x01C3D9 07:C3C9: 85 31     STA ram_0031
C - - - - - 0x01C3DB 07:C3CB: B9 3C 80  LDA $803C,Y
C - - - - - 0x01C3DE 07:C3CE: 85 32     STA ram_0032
C - - - - - 0x01C3E0 07:C3D0: B9 60 80  LDA $8060,Y
C - - - - - 0x01C3E3 07:C3D3: 85 29     STA ram_chr_bank_spr
C - - - - - 0x01C3E5 07:C3D5: 8D 4C 06  STA ram_064C_copy_chr_bank
C - - - - - 0x01C3E8 07:C3D8: B9 63 80  LDA $8063,Y
C - - - - - 0x01C3EB 07:C3DB: 85 2A     STA ram_002A_copy_chr_bank
C - - - - - 0x01C3ED 07:C3DD: 8D 4D 06  STA ram_064D_copy_chr_bank
C - - - - - 0x01C3F0 07:C3E0: A9 FF     LDA #$FF
C - - - - - 0x01C3F2 07:C3E2: 8D 45 06  STA ram_0645
C - - - - - 0x01C3F5 07:C3E5: A9 1E     LDA #$1E
C - - - - - 0x01C3F7 07:C3E7: 85 41     STA ram_0041
C - - - - - 0x01C3F9 07:C3E9: A9 14     LDA #$14
C - - - - - 0x01C3FB 07:C3EB: 8D 80 06  STA ram_0680
C - - - - - 0x01C3FE 07:C3EE: AD 02 20  LDA $2002
C - - - - - 0x01C401 07:C3F1: 20 D7 F2  JSR sub_F2D7
C - - - - - 0x01C404 07:C3F4: B9 66 80  LDA $8066,Y
C - - - - - 0x01C407 07:C3F7: 85 E5     STA ram_00E5
C - - - - - 0x01C409 07:C3F9: F0 07     BEQ bra_C402
bra_C3FB_loop:
C - - - - - 0x01C40B 07:C3FB: 20 C7 DF  JSR sub_DFC7
C - - - - - 0x01C40E 07:C3FE: C6 E5     DEC ram_00E5
C - - - - - 0x01C410 07:C400: D0 F9     BNE bra_C3FB_loop
bra_C402:
C - - - - - 0x01C412 07:C402: A9 00     LDA #con_sound_00
C - - - - - 0x01C414 07:C404: 85 47     STA ram_sound
C - - - - - 0x01C416 07:C406: 20 7F F7  JSR sub_F77F_play_sound
C - - - - - 0x01C419 07:C409: 18        CLC
C - - - - - 0x01C41A 07:C40A: A5 03     LDA ram_mission
C - - - - - 0x01C41C 07:C40C: 69 22     ADC #$22
; con_sound_22
; con_sound_23
; con_sound_24
; con_sound_25
; con_sound_26
C - - - - - 0x01C41E 07:C40E: 85 47     STA ram_sound
C - - - - - 0x01C420 07:C410: 20 7F F7  JSR sub_F77F_play_sound
C - - - - - 0x01C423 07:C413: 20 30 C4  JSR sub_C430
C - - - - - 0x01C426 07:C416: 60        RTS



loc_C417_prepare_sound:
C D 2 - - - 0x01C427 07:C417: 85 47     STA ram_sound
C - - - - - 0x01C429 07:C419: 20 7F F7  JSR sub_F77F_play_sound
C - - - - - 0x01C42C 07:C41C: A0 05     LDY #con_prg_bank + $05
C - - - - - 0x01C42E 07:C41E: 20 54 F9  JSR sub_F954_prg_bankswitch
C - - - - - 0x01C431 07:C421: 60        RTS



loc_C422:
C D 2 - - - 0x01C432 07:C422: A0 06     LDY #con_prg_bank + $06
C - - - - - 0x01C434 07:C424: 20 54 F9  JSR sub_F954_prg_bankswitch
C - - - - - 0x01C437 07:C427: 20 05 F9  JSR sub_F905
C - - - - - 0x01C43A 07:C42A: A0 05     LDY #con_prg_bank + $05
C - - - - - 0x01C43C 07:C42C: 20 54 F9  JSR sub_F954_prg_bankswitch
C - - - - - 0x01C43F 07:C42F: 60        RTS



sub_C430:
C - - - - - 0x01C440 07:C430: 78        SEI
C - - - - - 0x01C441 07:C431: A2 00     LDX #$00
C - - - - - 0x01C443 07:C433: 8E 00 20  STX $2000
C - - - - - 0x01C446 07:C436: 8E 01 20  STX $2001
C - - - - - 0x01C449 07:C439: 8E 02 20  STX $2002
bra_C43C_infinite_loop:
C - - - - - 0x01C44C 07:C43C: 2C 02 20  BIT $2002
C - - - - - 0x01C44F 07:C43F: 10 FB     BPL bra_C43C_infinite_loop
bra_C441_infinite_loop:
C - - - - - 0x01C451 07:C441: 2C 02 20  BIT $2002
C - - - - - 0x01C454 07:C444: 30 FB     BMI bra_C441_infinite_loop
bra_C446_infinite_loop:
C - - - - - 0x01C456 07:C446: 2C 02 20  BIT $2002
C - - - - - 0x01C459 07:C449: 10 FB     BPL bra_C446_infinite_loop
bra_C44B_infinite_loop:
C - - - - - 0x01C45B 07:C44B: 2C 02 20  BIT $2002
C - - - - - 0x01C45E 07:C44E: 30 FB     BMI bra_C44B_infinite_loop
C - - - - - 0x01C460 07:C450: A2 00     LDX #$00
C - - - - - 0x01C462 07:C452: A0 88     LDY #$88
C - - - - - 0x01C464 07:C454: 8E 01 20  STX $2001
C - - - - - 0x01C467 07:C457: 8C 00 20  STY $2000
C - - - - - 0x01C46A 07:C45A: 86 11     STX ram_for_2001
C - - - - - 0x01C46C 07:C45C: 84 10     STY ram_for_2000
C - - - - - 0x01C46E 07:C45E: 60        RTS



sub_C45F_garbage_loop:
bra_C45F_loop:
C - - - - - 0x01C46F 07:C45F: CA        DEX
C - - - - - 0x01C470 07:C460: D0 FD     BNE bra_C45F_loop
C - - - - - 0x01C472 07:C462: 60        RTS


; bzk garbage
- - - - - - 0x01C473 07:C463: 60        RTS



vec_C464_IRQ:
- - - - - - 0x01C474 07:C464: 58        CLI
- - - - - - 0x01C475 07:C465: 40        RTI



vec_C466_NMI:
C - - - - - 0x01C476 07:C466: 85 06     STA ram_save_A
C - - - - - 0x01C478 07:C468: 84 08     STY ram_save_Y
C - - - - - 0x01C47A 07:C46A: 86 07     STX ram_save_X
C - - - - - 0x01C47C 07:C46C: A5 0A     LDA ram_nmi_handler
C - - - - - 0x01C47E 07:C46E: 0A        ASL
C - - - - - 0x01C47F 07:C46F: A8        TAY
C - - - - - 0x01C480 07:C470: B9 5D C5  LDA tbl_C55D_nmi_handler,Y
C - - - - - 0x01C483 07:C473: 8D 00 06  STA ram_0600
C - - - - - 0x01C486 07:C476: B9 5E C5  LDA tbl_C55D_nmi_handler + $01,Y
C - - - - - 0x01C489 07:C479: 8D 01 06  STA ram_0601
C - - - - - 0x01C48C 07:C47C: 6C 00 06  JMP (ram_0600)



ofs_000_C47F_05:
C - - J - - 0x01C48F 07:C47F: 2C 02 20  BIT $2002
C - - - - - 0x01C492 07:C482: A2 00     LDX #$00
C - - - - - 0x01C494 07:C484: 8E 01 20  STX $2001
C - - - - - 0x01C497 07:C487: 86 11     STX ram_for_2001
C - - - - - 0x01C499 07:C489: 8E B3 01  STX ram_01B3
C - - - - - 0x01C49C 07:C48C: 8E 00 20  STX $2000
C - - - - - 0x01C49F 07:C48F: 8E 03 20  STX $2003
C - - - - - 0x01C4A2 07:C492: A9 02     LDA #$02
C - - - - - 0x01C4A4 07:C494: 8D 14 40  STA $4014
C - - - - - 0x01C4A7 07:C497: A5 10     LDA ram_for_2000
C - - - - - 0x01C4A9 07:C499: 29 78     AND #$78
C - - - - - 0x01C4AB 07:C49B: 8D 00 20  STA $2000
C - - - - - 0x01C4AE 07:C49E: 85 10     STA ram_for_2000
C - - - - - 0x01C4B0 07:C4A0: A5 11     LDA ram_for_2001
C - - - - - 0x01C4B2 07:C4A2: 29 00     AND #$00
C - - - - - 0x01C4B4 07:C4A4: 09 18     ORA #$18
C - - - - - 0x01C4B6 07:C4A6: 85 11     STA ram_for_2001
C - - - - - 0x01C4B8 07:C4A8: 8D 01 20  STA $2001
C - - - - - 0x01C4BB 07:C4AB: 20 D3 F5  JSR sub_F5D3
C - - - - - 0x01C4BE 07:C4AE: 20 6E CE  JSR sub_CE6E_write_hud_info_to_ppu
C - - - - - 0x01C4C1 07:C4B1: 20 69 C5  JSR sub_C569
C - - - - - 0x01C4C4 07:C4B4: A2 00     LDX #$00
C - - - - - 0x01C4C6 07:C4B6: 8E 05 20  STX $2005
C - - - - - 0x01C4C9 07:C4B9: A9 05     LDA #$05
C - - - - - 0x01C4CB 07:C4BB: 8D 05 20  STA $2005
C - - - - - 0x01C4CE 07:C4BE: A5 29     LDA ram_chr_bank_spr
C - - - - - 0x01C4D0 07:C4C0: 20 3B F9  JSR sub_F93B_chr_spr_bankswitch
C - - - - - 0x01C4D3 07:C4C3: A9 00     LDA #con_chr_bank + $00
C - - - - - 0x01C4D5 07:C4C5: 20 22 F9  JSR sub_F922_chr_bg_bankswitch
C - - - - - 0x01C4D8 07:C4C8: 20 29 F6  JSR sub_F629_garbage_loop
C - - - - - 0x01C4DB 07:C4CB: A5 2B     LDA ram_chr_bank_bg
C - - - - - 0x01C4DD 07:C4CD: 20 22 F9  JSR sub_F922_chr_bg_bankswitch
C - - - - - 0x01C4E0 07:C4D0: A5 11     LDA ram_for_2001
C - - - - - 0x01C4E2 07:C4D2: 09 18     ORA #$18
C - - - - - 0x01C4E4 07:C4D4: 2D 5D 06  AND ram_065D
C - - - - - 0x01C4E7 07:C4D7: 29 FE     AND #$FE
C - - - - - 0x01C4E9 07:C4D9: 09 01     ORA #$01
C - - - - - 0x01C4EB 07:C4DB: 85 11     STA ram_for_2001
C - - - - - 0x01C4ED 07:C4DD: A5 10     LDA ram_for_2000
C - - - - - 0x01C4EF 07:C4DF: 29 F8     AND #$F8
C - - - - - 0x01C4F1 07:C4E1: 05 14     ORA ram_base_nmt
C - - - - - 0x01C4F3 07:C4E3: 09 80     ORA #$80
C - - - - - 0x01C4F5 07:C4E5: 85 10     STA ram_for_2000
; bzk optimize, wtf is this shit?
C - - - - - 0x01C4F7 07:C4E7: 2C B3 01  BIT ram_01B3
C - - - - - 0x01C4FA 07:C4EA: 2C B3 01  BIT ram_01B3
C - - - - - 0x01C4FD 07:C4ED: 2C B3 01  BIT ram_01B3
C - - - - - 0x01C500 07:C4F0: 2C B3 01  BIT ram_01B3
C - - - - - 0x01C503 07:C4F3: 2C B3 01  BIT ram_01B3
C - - - - - 0x01C506 07:C4F6: 2C B3 01  BIT ram_01B3
C - - - - - 0x01C509 07:C4F9: 2C B3 01  BIT ram_01B3
C - - - - - 0x01C50C 07:C4FC: 2C B3 01  BIT ram_01B3
C - - - - - 0x01C50F 07:C4FF: 2C B3 01  BIT ram_01B3
C - - - - - 0x01C512 07:C502: 2C B3 01  BIT ram_01B3
C - - - - - 0x01C515 07:C505: 2C B3 01  BIT ram_01B3
C - - - - - 0x01C518 07:C508: 2C B3 01  BIT ram_01B3
C - - - - - 0x01C51B 07:C50B: 2C B3 01  BIT ram_01B3
C - - - - - 0x01C51E 07:C50E: 2C B3 01  BIT ram_01B3
C - - - - - 0x01C521 07:C511: 24 04     BIT ram_0004
C - - - - - 0x01C523 07:C513: A6 12     LDX ram_scroll_X
C - - - - - 0x01C525 07:C515: A0 05     LDY #$05
C - - - - - 0x01C527 07:C517: 8D 00 20  STA $2000
C - - - - - 0x01C52A 07:C51A: 2C 05 20  BIT $2005
C - - - - - 0x01C52D 07:C51D: 8E 05 20  STX $2005
C - - - - - 0x01C530 07:C520: 8C 05 20  STY $2005
C - - - - - 0x01C533 07:C523: A9 01     LDA #$01
C - - - - - 0x01C535 07:C525: 85 09     STA ram_nmi_flag
C - - - - - 0x01C537 07:C527: 4C 33 C5  JMP loc_C533_return_from_interrupt



loc_C52A:
C D 2 - - - 0x01C53A 07:C52A: A5 10     LDA ram_for_2000
C - - - - - 0x01C53C 07:C52C: 09 80     ORA #$80
C - - - - - 0x01C53E 07:C52E: 8D 00 20  STA $2000
C - - - - - 0x01C541 07:C531: 85 10     STA ram_for_2000
loc_C533_return_from_interrupt:
C D 2 - - - 0x01C543 07:C533: A4 08     LDY ram_save_Y
C - - - - - 0x01C545 07:C535: A6 07     LDX ram_save_X
C - - - - - 0x01C547 07:C537: A5 06     LDA ram_save_A
C - - - - - 0x01C549 07:C539: 40        RTI



ofs_000_C53A_03:
C - - J - - 0x01C54A 07:C53A: A9 E7     LDA #$E7
C - - - - - 0x01C54C 07:C53C: 8D 5D 06  STA ram_065D
C - - - - - 0x01C54F 07:C53F: 20 75 F7  JSR sub_F775_hide_all_sprites
C - - - - - 0x01C552 07:C542: 20 50 F7  JSR sub_F750
C - - - - - 0x01C555 07:C545: E6 0A     INC ram_nmi_handler
C - - - - - 0x01C557 07:C547: 4C 2A C5  JMP loc_C52A



ofs_000_C54A_04:
C - - J - - 0x01C55A 07:C54A: A6 03     LDX ram_mission
C - - - - - 0x01C55C 07:C54C: BC 39 FC  LDY tbl_FC39_prg_bank_for_mission,X
C - - - - - 0x01C55F 07:C54F: 20 54 F9  JSR sub_F954_prg_bankswitch
C - - - - - 0x01C562 07:C552: 20 34 F6  JSR sub_F634
C - - - - - 0x01C565 07:C555: 20 7C F6  JSR sub_F67C
C - - - - - 0x01C568 07:C558: E6 0A     INC ram_nmi_handler
C - - - - - 0x01C56A 07:C55A: 4C 2A C5  JMP loc_C52A



tbl_C55D_nmi_handler:
- D 2 - - - 0x01C56D 07:C55D: 00 80     .word ofs_000_0x014010_00
- - - - - - 0x01C56F 07:C55F: 00 80     .word ofs_000_0x014010_01
- - - - - - 0x01C571 07:C561: 00 80     .word ofs_000_0x014010_02
- D 2 - - - 0x01C573 07:C563: 3A C5     .word ofs_000_C53A_03
- D 2 - - - 0x01C575 07:C565: 4A C5     .word ofs_000_C54A_04
- D 2 - - - 0x01C577 07:C567: 7F C4     .word ofs_000_C47F_05



sub_C569:
C - - - - - 0x01C579 07:C569: A5 03     LDA ram_mission
C - - - - - 0x01C57B 07:C56B: 0A        ASL
C - - - - - 0x01C57C 07:C56C: A8        TAY
C - - - - - 0x01C57D 07:C56D: B9 7C C5  LDA tbl_C57C,Y
C - - - - - 0x01C580 07:C570: 8D 00 06  STA ram_0600
C - - - - - 0x01C583 07:C573: B9 7D C5  LDA tbl_C57C + $01,Y
C - - - - - 0x01C586 07:C576: 8D 01 06  STA ram_0601
C - - - - - 0x01C589 07:C579: 6C 00 06  JMP (ram_0600)



tbl_C57C:
- D 2 - - - 0x01C58C 07:C57C: 86 C5     .word ofs_001_C586_00_mission_1
- D 2 - - - 0x01C58E 07:C57E: 86 C5     .word ofs_001_C586_01_mission_2
- D 2 - - - 0x01C590 07:C580: 86 C5     .word ofs_001_C586_02_mission_3
- D 2 - - - 0x01C592 07:C582: 86 C5     .word ofs_001_C586_03_mission_4
- D 2 - - - 0x01C594 07:C584: 07 C6     .word ofs_001_C607_04_mission_5



ofs_001_C586_00_mission_1:
ofs_001_C586_01_mission_2:
ofs_001_C586_02_mission_3:
ofs_001_C586_03_mission_4:
C - - J - - 0x01C596 07:C586: 18        CLC
C - - - - - 0x01C597 07:C587: A5 12     LDA ram_scroll_X
C - - - - - 0x01C599 07:C589: 69 80     ADC #$80
C - - - - - 0x01C59B 07:C58B: 48        PHA
C - - - - - 0x01C59C 07:C58C: A5 14     LDA ram_base_nmt
C - - - - - 0x01C59E 07:C58E: 69 01     ADC #$01
C - - - - - 0x01C5A0 07:C590: 29 01     AND #$01
C - - - - - 0x01C5A2 07:C592: 0A        ASL
C - - - - - 0x01C5A3 07:C593: 0A        ASL
C - - - - - 0x01C5A4 07:C594: 69 21     ADC #$21
C - - - - - 0x01C5A6 07:C596: 8D 06 20  STA $2006
C - - - - - 0x01C5A9 07:C599: 68        PLA
C - - - - - 0x01C5AA 07:C59A: 4A        LSR
C - - - - - 0x01C5AB 07:C59B: 4A        LSR
C - - - - - 0x01C5AC 07:C59C: 4A        LSR
C - - - - - 0x01C5AD 07:C59D: 8D 06 20  STA $2006
C - - - - - 0x01C5B0 07:C5A0: A5 10     LDA ram_for_2000
C - - - - - 0x01C5B2 07:C5A2: 09 04     ORA #$04
C - - - - - 0x01C5B4 07:C5A4: 85 10     STA ram_for_2000
C - - - - - 0x01C5B6 07:C5A6: 8D 00 20  STA $2000
C - - - - - 0x01C5B9 07:C5A9: A0 00     LDY #$00
bra_C5AB_loop:
C - - - - - 0x01C5BB 07:C5AB: B9 02 06  LDA ram_0602_buffer,Y
C - - - - - 0x01C5BE 07:C5AE: 8D 07 20  STA $2007
C - - - - - 0x01C5C1 07:C5B1: C8        INY
C - - - - - 0x01C5C2 07:C5B2: C0 15     CPY #$15
C - - - - - 0x01C5C4 07:C5B4: 90 F5     BCC bra_C5AB_loop
C - - - - - 0x01C5C6 07:C5B6: 18        CLC
C - - - - - 0x01C5C7 07:C5B7: A5 12     LDA ram_scroll_X
C - - - - - 0x01C5C9 07:C5B9: 69 80     ADC #$80
C - - - - - 0x01C5CB 07:C5BB: 48        PHA
C - - - - - 0x01C5CC 07:C5BC: A5 14     LDA ram_base_nmt
C - - - - - 0x01C5CE 07:C5BE: 69 01     ADC #$01
C - - - - - 0x01C5D0 07:C5C0: 29 01     AND #$01
C - - - - - 0x01C5D2 07:C5C2: 0A        ASL
C - - - - - 0x01C5D3 07:C5C3: 0A        ASL
C - - - - - 0x01C5D4 07:C5C4: 09 23     ORA #$23
C - - - - - 0x01C5D6 07:C5C6: 8D 06 20  STA $2006
C - - - - - 0x01C5D9 07:C5C9: 85 E3     STA ram_00E3
C - - - - - 0x01C5DB 07:C5CB: 68        PLA
C - - - - - 0x01C5DC 07:C5CC: 4A        LSR
C - - - - - 0x01C5DD 07:C5CD: 4A        LSR
C - - - - - 0x01C5DE 07:C5CE: 4A        LSR
C - - - - - 0x01C5DF 07:C5CF: 4A        LSR
C - - - - - 0x01C5E0 07:C5D0: 4A        LSR
C - - - - - 0x01C5E1 07:C5D1: 09 D0     ORA #$D0
C - - - - - 0x01C5E3 07:C5D3: 8D 06 20  STA $2006
C - - - - - 0x01C5E6 07:C5D6: 85 E2     STA ram_00E2
C - - - - - 0x01C5E8 07:C5D8: A5 10     LDA ram_for_2000
C - - - - - 0x01C5EA 07:C5DA: 29 FB     AND #$FB
C - - - - - 0x01C5EC 07:C5DC: 85 10     STA ram_for_2000
C - - - - - 0x01C5EE 07:C5DE: 8D 00 20  STA $2000
C - - - - - 0x01C5F1 07:C5E1: A2 00     LDX #$00
bra_C5E3_loop:
C - - - - - 0x01C5F3 07:C5E3: BD 17 06  LDA ram_0617_buffer,X
C - - - - - 0x01C5F6 07:C5E6: 8D 07 20  STA $2007
C - - - - - 0x01C5F9 07:C5E9: A5 E3     LDA ram_00E3
C - - - - - 0x01C5FB 07:C5EB: 8D 06 20  STA $2006
C - - - - - 0x01C5FE 07:C5EE: 18        CLC
C - - - - - 0x01C5FF 07:C5EF: A5 E2     LDA ram_00E2
C - - - - - 0x01C601 07:C5F1: 69 08     ADC #$08
C - - - - - 0x01C603 07:C5F3: 85 E2     STA ram_00E2
C - - - - - 0x01C605 07:C5F5: 8D 06 20  STA $2006
C - - - - - 0x01C608 07:C5F8: A5 10     LDA ram_for_2000
C - - - - - 0x01C60A 07:C5FA: 29 FB     AND #$FB
C - - - - - 0x01C60C 07:C5FC: 85 10     STA ram_for_2000
C - - - - - 0x01C60E 07:C5FE: 8D 00 20  STA $2000
C - - - - - 0x01C611 07:C601: E8        INX
C - - - - - 0x01C612 07:C602: E0 06     CPX #$06
C - - - - - 0x01C614 07:C604: 90 DD     BCC bra_C5E3_loop
C - - - - - 0x01C616 07:C606: 60        RTS



ofs_001_C607_04_mission_5:
C - - J - - 0x01C617 07:C607: A5 10     LDA ram_for_2000
C - - - - - 0x01C619 07:C609: 09 04     ORA #$04
C - - - - - 0x01C61B 07:C60B: 85 10     STA ram_for_2000
C - - - - - 0x01C61D 07:C60D: 8D 00 20  STA $2000
C - - - - - 0x01C620 07:C610: A9 27     LDA #> $271D
C - - - - - 0x01C622 07:C612: 8D 06 20  STA $2006
C - - - - - 0x01C625 07:C615: A9 1D     LDA #< $271D
C - - - - - 0x01C627 07:C617: 8D 06 20  STA $2006
C - - - - - 0x01C62A 07:C61A: AD 02 06  LDA ram_0602_buffer
C - - - - - 0x01C62D 07:C61D: 8D 07 20  STA $2007
C - - - - - 0x01C630 07:C620: AD 03 06  LDA ram_0602_buffer + $01
C - - - - - 0x01C633 07:C623: 8D 07 20  STA $2007
C - - - - - 0x01C636 07:C626: A9 26     LDA #> $262D
C - - - - - 0x01C638 07:C628: 8D 06 20  STA $2006
C - - - - - 0x01C63B 07:C62B: A9 2D     LDA #< $262D
C - - - - - 0x01C63D 07:C62D: 8D 06 20  STA $2006
C - - - - - 0x01C640 07:C630: AD 04 06  LDA ram_0602_buffer + $02
C - - - - - 0x01C643 07:C633: 8D 07 20  STA $2007
C - - - - - 0x01C646 07:C636: A9 26     LDA #> $2630
C - - - - - 0x01C648 07:C638: 8D 06 20  STA $2006
C - - - - - 0x01C64B 07:C63B: A9 30     LDA #< $2630
C - - - - - 0x01C64D 07:C63D: 8D 06 20  STA $2006
C - - - - - 0x01C650 07:C640: AD 05 06  LDA ram_0602_buffer + $03
C - - - - - 0x01C653 07:C643: 8D 07 20  STA $2007
C - - - - - 0x01C656 07:C646: A9 26     LDA #> $2633
C - - - - - 0x01C658 07:C648: 8D 06 20  STA $2006
C - - - - - 0x01C65B 07:C64B: A9 33     LDA #< $2633
C - - - - - 0x01C65D 07:C64D: 8D 06 20  STA $2006
C - - - - - 0x01C660 07:C650: AD 06 06  LDA ram_0602_buffer + $04
C - - - - - 0x01C663 07:C653: 8D 07 20  STA $2007
C - - - - - 0x01C666 07:C656: A9 26     LDA #> $2636
C - - - - - 0x01C668 07:C658: 8D 06 20  STA $2006
C - - - - - 0x01C66B 07:C65B: A9 36     LDA #< $2636
C - - - - - 0x01C66D 07:C65D: 8D 06 20  STA $2006
C - - - - - 0x01C670 07:C660: AD 07 06  LDA ram_0602_buffer + $05
C - - - - - 0x01C673 07:C663: 8D 07 20  STA $2007
C - - - - - 0x01C676 07:C666: A9 26     LDA #> $268D
C - - - - - 0x01C678 07:C668: 8D 06 20  STA $2006
C - - - - - 0x01C67B 07:C66B: A9 8D     LDA #< $268D
C - - - - - 0x01C67D 07:C66D: 8D 06 20  STA $2006
C - - - - - 0x01C680 07:C670: AD 08 06  LDA ram_0602_buffer + $06
C - - - - - 0x01C683 07:C673: 8D 07 20  STA $2007
C - - - - - 0x01C686 07:C676: A9 26     LDA #> $2690
C - - - - - 0x01C688 07:C678: 8D 06 20  STA $2006
C - - - - - 0x01C68B 07:C67B: A9 90     LDA #< $2690
C - - - - - 0x01C68D 07:C67D: 8D 06 20  STA $2006
C - - - - - 0x01C690 07:C680: AD 09 06  LDA ram_0602_buffer + $07
C - - - - - 0x01C693 07:C683: 8D 07 20  STA $2007
C - - - - - 0x01C696 07:C686: A9 26     LDA #> $2693
C - - - - - 0x01C698 07:C688: 8D 06 20  STA $2006
C - - - - - 0x01C69B 07:C68B: A9 93     LDA #< $2693
C - - - - - 0x01C69D 07:C68D: 8D 06 20  STA $2006
C - - - - - 0x01C6A0 07:C690: AD 0A 06  LDA ram_0602_buffer + $08
C - - - - - 0x01C6A3 07:C693: 8D 07 20  STA $2007
C - - - - - 0x01C6A6 07:C696: A9 26     LDA #> $2696
C - - - - - 0x01C6A8 07:C698: 8D 06 20  STA $2006
C - - - - - 0x01C6AB 07:C69B: A9 96     LDA #< $2696
C - - - - - 0x01C6AD 07:C69D: 8D 06 20  STA $2006
C - - - - - 0x01C6B0 07:C6A0: AD 0B 06  LDA ram_0602_buffer + $09
C - - - - - 0x01C6B3 07:C6A3: 8D 07 20  STA $2007
C - - - - - 0x01C6B6 07:C6A6: A9 26     LDA #> $26ED
C - - - - - 0x01C6B8 07:C6A8: 8D 06 20  STA $2006
C - - - - - 0x01C6BB 07:C6AB: A9 ED     LDA #< $26ED
C - - - - - 0x01C6BD 07:C6AD: 8D 06 20  STA $2006
C - - - - - 0x01C6C0 07:C6B0: AD 0C 06  LDA ram_0602_buffer + $0A
C - - - - - 0x01C6C3 07:C6B3: 8D 07 20  STA $2007
C - - - - - 0x01C6C6 07:C6B6: A9 26     LDA #> $26F0
C - - - - - 0x01C6C8 07:C6B8: 8D 06 20  STA $2006
C - - - - - 0x01C6CB 07:C6BB: A9 F0     LDA #< $26F0
C - - - - - 0x01C6CD 07:C6BD: 8D 06 20  STA $2006
C - - - - - 0x01C6D0 07:C6C0: AD 0D 06  LDA ram_0602_buffer + $0B
C - - - - - 0x01C6D3 07:C6C3: 8D 07 20  STA $2007
C - - - - - 0x01C6D6 07:C6C6: A9 26     LDA #> $26F3
C - - - - - 0x01C6D8 07:C6C8: 8D 06 20  STA $2006
C - - - - - 0x01C6DB 07:C6CB: A9 F3     LDA #< $26F3
C - - - - - 0x01C6DD 07:C6CD: 8D 06 20  STA $2006
C - - - - - 0x01C6E0 07:C6D0: AD 0E 06  LDA ram_0602_buffer + $0C
C - - - - - 0x01C6E3 07:C6D3: 8D 07 20  STA $2007
C - - - - - 0x01C6E6 07:C6D6: A9 26     LDA #> $26F6
C - - - - - 0x01C6E8 07:C6D8: 8D 06 20  STA $2006
C - - - - - 0x01C6EB 07:C6DB: A9 F6     LDA #< $26F6
C - - - - - 0x01C6ED 07:C6DD: 8D 06 20  STA $2006
C - - - - - 0x01C6F0 07:C6E0: AD 0F 06  LDA ram_0602_buffer + $0D
C - - - - - 0x01C6F3 07:C6E3: 8D 07 20  STA $2007
C - - - - - 0x01C6F6 07:C6E6: A5 10     LDA ram_for_2000
C - - - - - 0x01C6F8 07:C6E8: 29 FB     AND #$FB
C - - - - - 0x01C6FA 07:C6EA: 85 10     STA ram_for_2000
C - - - - - 0x01C6FC 07:C6EC: 8D 00 20  STA $2000
C - - - - - 0x01C6FF 07:C6EF: A2 52     LDX #$52
C - - - - - 0x01C701 07:C6F1: 20 5F C4  JSR sub_C45F_garbage_loop
C - - - - - 0x01C704 07:C6F4: EA        NOP
C - - - - - 0x01C705 07:C6F5: EA        NOP
C - - - - - 0x01C706 07:C6F6: EA        NOP
C - - - - - 0x01C707 07:C6F7: EA        NOP
C - - - - - 0x01C708 07:C6F8: 60        RTS



sub_C6F9:
C - - - - - 0x01C709 07:C6F9: A5 03     LDA ram_mission
C - - - - - 0x01C70B 07:C6FB: C9 04     CMP #$04
C - - - - - 0x01C70D 07:C6FD: F0 03     BEQ bra_C702
C - - - - - 0x01C70F 07:C6FF: 4C E5 C7  JMP loc_C7E5
bra_C702:
C - - - - - 0x01C712 07:C702: A0 E0     LDY #$E0
C - - - - - 0x01C714 07:C704: AD 4B 06  LDA ram_064B
C - - - - - 0x01C717 07:C707: 10 02     BPL bra_C70B
C - - - - - 0x01C719 07:C709: A0 F5     LDY #$F5
bra_C70B:
C - - - - - 0x01C71B 07:C70B: 8C 02 06  STY ram_0602_buffer
C - - - - - 0x01C71E 07:C70E: AD 4B 06  LDA ram_064B
C - - - - - 0x01C721 07:C711: C9 20     CMP #$20
C - - - - - 0x01C723 07:C713: B0 0B     BCS bra_C720
C - - - - - 0x01C725 07:C715: A0 E9     LDY #$E9
C - - - - - 0x01C727 07:C717: A5 37     LDA ram_random
C - - - - - 0x01C729 07:C719: 30 02     BMI bra_C71D
C - - - - - 0x01C72B 07:C71B: A0 F4     LDY #$F4
bra_C71D:
C - - - - - 0x01C72D 07:C71D: 8C 03 06  STY ram_0602_buffer + $01
bra_C720:
C - - - - - 0x01C730 07:C720: EE 82 06  INC ram_0682
C - - - - - 0x01C733 07:C723: AD 82 06  LDA ram_0682
C - - - - - 0x01C736 07:C726: C9 28     CMP #$28
C - - - - - 0x01C738 07:C728: 90 05     BCC bra_C72F
C - - - - - 0x01C73A 07:C72A: A9 00     LDA #$00
C - - - - - 0x01C73C 07:C72C: 8D 82 06  STA ram_0682
bra_C72F:
C - - - - - 0x01C73F 07:C72F: 4A        LSR
C - - - - - 0x01C740 07:C730: 4A        LSR
C - - - - - 0x01C741 07:C731: 18        CLC
C - - - - - 0x01C742 07:C732: 69 F6     ADC #$F6
C - - - - - 0x01C744 07:C734: AC 83 06  LDY ram_0683
C - - - - - 0x01C747 07:C737: C0 0C     CPY #$0C
C - - - - - 0x01C749 07:C739: 90 02     BCC bra_C73D
C - - - - - 0x01C74B 07:C73B: A9 49     LDA #$49
bra_C73D:
C - - - - - 0x01C74D 07:C73D: A2 03     LDX #$03
bra_C73F_loop:
C - - - - - 0x01C74F 07:C73F: 9D 04 06  STA ram_0602_buffer + $02,X
C - - - - - 0x01C752 07:C742: 9D 08 06  STA ram_0602_buffer + $06,X
C - - - - - 0x01C755 07:C745: 9D 0C 06  STA ram_0602_buffer + $0A,X
C - - - - - 0x01C758 07:C748: CA        DEX
C - - - - - 0x01C759 07:C749: 10 F4     BPL bra_C73F_loop
C - - - - - 0x01C75B 07:C74B: AD 83 06  LDA ram_0683
C - - - - - 0x01C75E 07:C74E: C9 0C     CMP #$0C
C - - - - - 0x01C760 07:C750: 90 05     BCC bra_C757
C - - - - - 0x01C762 07:C752: AD 4B 06  LDA ram_064B
C - - - - - 0x01C765 07:C755: 30 53     BMI bra_C7AA
bra_C757:
C - - - - - 0x01C767 07:C757: A2 00     LDX #$00
bra_C759_loop:
C - - - - - 0x01C769 07:C759: EC 83 06  CPX ram_0683
C - - - - - 0x01C76C 07:C75C: F0 0B     BEQ bra_C769
C - - - - - 0x01C76E 07:C75E: BD D6 C7  LDA tbl_C7D6,X
C - - - - - 0x01C771 07:C761: 9D 04 06  STA ram_0602_buffer + $02,X
C - - - - - 0x01C774 07:C764: E8        INX
C - - - - - 0x01C775 07:C765: E0 0C     CPX #$0C
C - - - - - 0x01C777 07:C767: 90 F0     BCC bra_C759_loop
bra_C769:
C - - - - - 0x01C779 07:C769: AD 86 06  LDA ram_0686
C - - - - - 0x01C77C 07:C76C: F0 3C     BEQ bra_C7AA
C - - - - - 0x01C77E 07:C76E: CE 84 06  DEC ram_0684
C - - - - - 0x01C781 07:C771: D0 37     BNE bra_C7AA
C - - - - - 0x01C783 07:C773: CE 85 06  DEC ram_0685
C - - - - - 0x01C786 07:C776: 30 32     BMI bra_C7AA
C - - - - - 0x01C788 07:C778: A9 02     LDA #$02
C - - - - - 0x01C78A 07:C77A: 8D 85 06  STA ram_0685
C - - - - - 0x01C78D 07:C77D: A9 64     LDA #$64
C - - - - - 0x01C78F 07:C77F: 8D 84 06  STA ram_0684
C - - - - - 0x01C792 07:C782: EE 83 06  INC ram_0683
C - - - - - 0x01C795 07:C785: AC 83 06  LDY ram_0683
C - - - - - 0x01C798 07:C788: C0 0D     CPY #$0D
C - - - - - 0x01C79A 07:C78A: B0 0B     BCS bra_C797
; 00-0C
C - - - - - 0x01C79C 07:C78C: B9 D6 C7  LDA tbl_C7D6,Y
; bzk optimize, SEC + SBC #$E3 without ADC
C - - - - - 0x01C79F 07:C78F: 38        SEC
C - - - - - 0x01C7A0 07:C790: E9 F6     SBC #$F6
C - - - - - 0x01C7A2 07:C792: 18        CLC
C - - - - - 0x01C7A3 07:C793: 69 13     ADC #$13
C - - - - - 0x01C7A5 07:C795: 85 47     STA ram_sound
bra_C797:
C - - - - - 0x01C7A7 07:C797: A0 0B     LDY #con_msg_passcode_accepted
C - - - - - 0x01C7A9 07:C799: AD 83 06  LDA ram_0683
C - - - - - 0x01C7AC 07:C79C: C9 0C     CMP #$0C
C - - - - - 0x01C7AE 07:C79E: 90 02     BCC bra_C7A2
C - - - - - 0x01C7B0 07:C7A0: A0 0C     LDY #con_msg_otomo_destruct_initiated
bra_C7A2:
C - - - - - 0x01C7B2 07:C7A2: C4 46     CPY ram_message
C - - - - - 0x01C7B4 07:C7A4: F0 04     BEQ bra_C7AA
C - - - - - 0x01C7B6 07:C7A6: 98        TYA
C - - - - - 0x01C7B7 07:C7A7: 20 7B C9  JSR sub_C97B_prepare_new_message
bra_C7AA:
C - - - - - 0x01C7BA 07:C7AA: AD 83 06  LDA ram_0683
C - - - - - 0x01C7BD 07:C7AD: C9 0C     CMP #$0C
C - - - - - 0x01C7BF 07:C7AF: 90 24     BCC bra_C7D5_RTS
C - - - - - 0x01C7C1 07:C7B1: CE 97 06  DEC ram_0697
C - - - - - 0x01C7C4 07:C7B4: 10 1F     BPL bra_C7D5_RTS
C - - - - - 0x01C7C6 07:C7B6: A9 0A     LDA #$0A
C - - - - - 0x01C7C8 07:C7B8: 8D 97 06  STA ram_0697
C - - - - - 0x01C7CB 07:C7BB: EE 98 06  INC ram_0698
C - - - - - 0x01C7CE 07:C7BE: AC 98 06  LDY ram_0698
C - - - - - 0x01C7D1 07:C7C1: C0 0C     CPY #$0C
C - - - - - 0x01C7D3 07:C7C3: 90 02     BCC bra_C7C7_not_overflow
C - - - - - 0x01C7D5 07:C7C5: A0 00     LDY #$00
bra_C7C7_not_overflow:
C - - - - - 0x01C7D7 07:C7C7: 8C 98 06  STY ram_0698
C - - - - - 0x01C7DA 07:C7CA: B9 D6 C7  LDA tbl_C7D6,Y
; bzk optimize, SEC + SBC #$E3 without ADC
C - - - - - 0x01C7DD 07:C7CD: 38        SEC
C - - - - - 0x01C7DE 07:C7CE: E9 F6     SBC #$F6
C - - - - - 0x01C7E0 07:C7D0: 18        CLC
C - - - - - 0x01C7E1 07:C7D1: 69 13     ADC #$13
C - - - - - 0x01C7E3 07:C7D3: 85 47     STA ram_sound
bra_C7D5_RTS:
C - - - - - 0x01C7E5 07:C7D5: 60        RTS



tbl_C7D6:
- D 2 - - - 0x01C7E6 07:C7D6: FF        .byte con_sound_1C + $E3   ; 00 FF
- D 2 - - - 0x01C7E7 07:C7D7: FA        .byte con_sound_17 + $E3   ; 01 FA
- D 2 - - - 0x01C7E8 07:C7D8: FB        .byte con_sound_18 + $E3   ; 02 FB
- D 2 - - - 0x01C7E9 07:C7D9: F7        .byte con_sound_14 + $E3   ; 03 F7
- D 2 - - - 0x01C7EA 07:C7DA: F9        .byte con_sound_16 + $E3   ; 04 F9
- D 2 - - - 0x01C7EB 07:C7DB: F8        .byte con_sound_15 + $E3   ; 05 F8
- D 2 - - - 0x01C7EC 07:C7DC: FD        .byte con_sound_1A + $E3   ; 06 FD
- D 2 - - - 0x01C7ED 07:C7DD: FE        .byte con_sound_1B + $E3   ; 07 FE
- D 2 - - - 0x01C7EE 07:C7DE: FC        .byte con_sound_19 + $E3   ; 08 FC
- D 2 - - - 0x01C7EF 07:C7DF: F6        .byte con_sound_13 + $E3   ; 09 F6
- D 2 - - - 0x01C7F0 07:C7E0: FF        .byte con_sound_1C + $E3   ; 0A FF
- D 2 - - - 0x01C7F1 07:C7E1: F9        .byte con_sound_16 + $E3   ; 0B F9
- D 2 - - - 0x01C7F2 07:C7E2: F6        .byte con_sound_13 + $E3   ; 0C F6


; bzk garbage
- - - - - - 0x01C7F3 07:C7E3: F6        .byte $F6   ; 
- - - - - - 0x01C7F4 07:C7E4: F6        .byte $F6   ; 



loc_C7E5:
C D 2 - - - 0x01C7F5 07:C7E5: C9 03     CMP #$03
C - - - - - 0x01C7F7 07:C7E7: D0 03     BNE bra_C7EC
C - - - - - 0x01C7F9 07:C7E9: 4C 64 C8  JMP loc_C864
bra_C7EC:
C - - - - - 0x01C7FC 07:C7EC: A5 12     LDA ram_scroll_X
C - - - - - 0x01C7FE 07:C7EE: 29 08     AND #$08
C - - - - - 0x01C800 07:C7F0: C5 13     CMP ram_scroll_and_08
C - - - - - 0x01C802 07:C7F2: F0 1D     BEQ bra_C811
C - - - - - 0x01C804 07:C7F4: 85 13     STA ram_scroll_and_08
C - - - - - 0x01C806 07:C7F6: 18        CLC
C - - - - - 0x01C807 07:C7F7: A5 16     LDA ram_0016
C - - - - - 0x01C809 07:C7F9: 69 01     ADC #$01
C - - - - - 0x01C80B 07:C7FB: 29 1F     AND #$1F
C - - - - - 0x01C80D 07:C7FD: 85 16     STA ram_0016
C - - - - - 0x01C80F 07:C7FF: D0 10     BNE bra_C811
C - - - - - 0x01C811 07:C801: 18        CLC
C - - - - - 0x01C812 07:C802: A5 DA     LDA ram_00DA
C - - - - - 0x01C814 07:C804: 69 D0     ADC #< $02D0
C - - - - - 0x01C816 07:C806: 85 DA     STA ram_00DA
C - - - - - 0x01C818 07:C808: A5 DB     LDA ram_00DB
C - - - - - 0x01C81A 07:C80A: 69 02     ADC #> $02D0
C - - - - - 0x01C81C 07:C80C: 85 DB     STA ram_00DB
C - - - - - 0x01C81E 07:C80E: EE 39 06  INC ram_0639
bra_C811:
C - - - - - 0x01C821 07:C811: A5 DA     LDA ram_00DA
C - - - - - 0x01C823 07:C813: 48        PHA
C - - - - - 0x01C824 07:C814: A5 DB     LDA ram_00DB
C - - - - - 0x01C826 07:C816: 48        PHA
C - - - - - 0x01C827 07:C817: A2 00     LDX #$00
C - - - - - 0x01C829 07:C819: A4 16     LDY ram_0016
bra_C81B_loop:
; bzk bug? this instruction reads sprite data from bank 06
; first read detected at 0x01AEBB, then each 20th (hex) address, up to 0x01B13B
C - - - - - 0x01C82B 07:C81B: B1 DA     LDA (ram_00DA),Y
C - - - - - 0x01C82D 07:C81D: 9D 02 06  STA ram_0602_buffer,X
C - - - - - 0x01C830 07:C820: 18        CLC
C - - - - - 0x01C831 07:C821: A5 DA     LDA ram_00DA
C - - - - - 0x01C833 07:C823: 69 20     ADC #< $0020
C - - - - - 0x01C835 07:C825: 85 DA     STA ram_00DA
C - - - - - 0x01C837 07:C827: A5 DB     LDA ram_00DB
C - - - - - 0x01C839 07:C829: 69 00     ADC #> $0020
C - - - - - 0x01C83B 07:C82B: 85 DB     STA ram_00DB
C - - - - - 0x01C83D 07:C82D: E8        INX
C - - - - - 0x01C83E 07:C82E: E0 15     CPX #$15
C - - - - - 0x01C840 07:C830: 90 E9     BCC bra_C81B_loop
C - - - - - 0x01C842 07:C832: 68        PLA
C - - - - - 0x01C843 07:C833: 85 DB     STA ram_00DB
C - - - - - 0x01C845 07:C835: 68        PLA
C - - - - - 0x01C846 07:C836: 85 DA     STA ram_00DA
C - - - - - 0x01C848 07:C838: 18        CLC
C - - - - - 0x01C849 07:C839: A5 DA     LDA ram_00DA
C - - - - - 0x01C84B 07:C83B: 48        PHA
C - - - - - 0x01C84C 07:C83C: 69 A0     ADC #< $02A0
C - - - - - 0x01C84E 07:C83E: 85 DA     STA ram_00DA
C - - - - - 0x01C850 07:C840: A5 DB     LDA ram_00DB
C - - - - - 0x01C852 07:C842: 48        PHA
C - - - - - 0x01C853 07:C843: 69 02     ADC #> $02A0
C - - - - - 0x01C855 07:C845: 85 DB     STA ram_00DB
C - - - - - 0x01C857 07:C847: A5 16     LDA ram_0016
C - - - - - 0x01C859 07:C849: 4A        LSR
C - - - - - 0x01C85A 07:C84A: 4A        LSR
C - - - - - 0x01C85B 07:C84B: A8        TAY
C - - - - - 0x01C85C 07:C84C: A2 00     LDX #$00
bra_C84E_loop:
; bzk bug? this instruction reads sprite data from bank 06
; first read detected at 0x01B146, then each 08th (hex) address, up to 0x01B16E
C - - - - - 0x01C85E 07:C84E: B1 DA     LDA (ram_00DA),Y
C - - - - - 0x01C860 07:C850: 9D 17 06  STA ram_0617_buffer,X
C - - - - - 0x01C863 07:C853: 98        TYA
C - - - - - 0x01C864 07:C854: 18        CLC
C - - - - - 0x01C865 07:C855: 69 08     ADC #$08
C - - - - - 0x01C867 07:C857: A8        TAY
C - - - - - 0x01C868 07:C858: E8        INX
C - - - - - 0x01C869 07:C859: E0 06     CPX #$06
C - - - - - 0x01C86B 07:C85B: 90 F1     BCC bra_C84E_loop
C - - - - - 0x01C86D 07:C85D: 68        PLA
C - - - - - 0x01C86E 07:C85E: 85 DB     STA ram_00DB
C - - - - - 0x01C870 07:C860: 68        PLA
C - - - - - 0x01C871 07:C861: 85 DA     STA ram_00DA
C - - - - - 0x01C873 07:C863: 60        RTS



loc_C864:
C D 2 - - - 0x01C874 07:C864: A5 12     LDA ram_scroll_X
C - - - - - 0x01C876 07:C866: 29 08     AND #$08
C - - - - - 0x01C878 07:C868: C5 13     CMP ram_scroll_and_08
C - - - - - 0x01C87A 07:C86A: F0 1F     BEQ bra_C88B
C - - - - - 0x01C87C 07:C86C: 85 13     STA ram_scroll_and_08
C - - - - - 0x01C87E 07:C86E: 38        SEC
C - - - - - 0x01C87F 07:C86F: A5 16     LDA ram_0016
C - - - - - 0x01C881 07:C871: E9 01     SBC #$01
C - - - - - 0x01C883 07:C873: 29 1F     AND #$1F
C - - - - - 0x01C885 07:C875: 85 16     STA ram_0016
C - - - - - 0x01C887 07:C877: C9 1F     CMP #$1F
C - - - - - 0x01C889 07:C879: D0 10     BNE bra_C88B
C - - - - - 0x01C88B 07:C87B: 38        SEC
C - - - - - 0x01C88C 07:C87C: A5 DA     LDA ram_00DA
C - - - - - 0x01C88E 07:C87E: E9 D0     SBC #< $02D0
C - - - - - 0x01C890 07:C880: 85 DA     STA ram_00DA
C - - - - - 0x01C892 07:C882: A5 DB     LDA ram_00DB
C - - - - - 0x01C894 07:C884: E9 02     SBC #> $02D0
C - - - - - 0x01C896 07:C886: 85 DB     STA ram_00DB
C - - - - - 0x01C898 07:C888: CE 39 06  DEC ram_0639
bra_C88B:
C - - - - - 0x01C89B 07:C88B: A5 DA     LDA ram_00DA
C - - - - - 0x01C89D 07:C88D: 48        PHA
C - - - - - 0x01C89E 07:C88E: A5 DB     LDA ram_00DB
C - - - - - 0x01C8A0 07:C890: 48        PHA
C - - - - - 0x01C8A1 07:C891: A2 00     LDX #$00
C - - - - - 0x01C8A3 07:C893: A4 16     LDY ram_0016
bra_C895_loop:
C - - - - - 0x01C8A5 07:C895: B1 DA     LDA (ram_00DA),Y
C - - - - - 0x01C8A7 07:C897: 9D 02 06  STA ram_0602_buffer,X
C - - - - - 0x01C8AA 07:C89A: 18        CLC
C - - - - - 0x01C8AB 07:C89B: A5 DA     LDA ram_00DA
C - - - - - 0x01C8AD 07:C89D: 69 20     ADC #< $0020
C - - - - - 0x01C8AF 07:C89F: 85 DA     STA ram_00DA
C - - - - - 0x01C8B1 07:C8A1: A5 DB     LDA ram_00DB
C - - - - - 0x01C8B3 07:C8A3: 69 00     ADC #> $0020
C - - - - - 0x01C8B5 07:C8A5: 85 DB     STA ram_00DB
C - - - - - 0x01C8B7 07:C8A7: E8        INX
C - - - - - 0x01C8B8 07:C8A8: E0 15     CPX #$15
C - - - - - 0x01C8BA 07:C8AA: 90 E9     BCC bra_C895_loop
C - - - - - 0x01C8BC 07:C8AC: 68        PLA
C - - - - - 0x01C8BD 07:C8AD: 85 DB     STA ram_00DB
C - - - - - 0x01C8BF 07:C8AF: 68        PLA
C - - - - - 0x01C8C0 07:C8B0: 85 DA     STA ram_00DA
C - - - - - 0x01C8C2 07:C8B2: 18        CLC
C - - - - - 0x01C8C3 07:C8B3: A5 DA     LDA ram_00DA
C - - - - - 0x01C8C5 07:C8B5: 48        PHA
C - - - - - 0x01C8C6 07:C8B6: 69 A0     ADC #< $02A0
C - - - - - 0x01C8C8 07:C8B8: 85 DA     STA ram_00DA
C - - - - - 0x01C8CA 07:C8BA: A5 DB     LDA ram_00DB
C - - - - - 0x01C8CC 07:C8BC: 48        PHA
C - - - - - 0x01C8CD 07:C8BD: 69 02     ADC #> $02A0
C - - - - - 0x01C8CF 07:C8BF: 85 DB     STA ram_00DB
C - - - - - 0x01C8D1 07:C8C1: A5 16     LDA ram_0016
C - - - - - 0x01C8D3 07:C8C3: 4A        LSR
C - - - - - 0x01C8D4 07:C8C4: 4A        LSR
C - - - - - 0x01C8D5 07:C8C5: A8        TAY
C - - - - - 0x01C8D6 07:C8C6: A2 00     LDX #$00
bra_C8C8_loop:
C - - - - - 0x01C8D8 07:C8C8: B1 DA     LDA (ram_00DA),Y
C - - - - - 0x01C8DA 07:C8CA: 9D 17 06  STA ram_0617_buffer,X
C - - - - - 0x01C8DD 07:C8CD: 98        TYA
C - - - - - 0x01C8DE 07:C8CE: 18        CLC
C - - - - - 0x01C8DF 07:C8CF: 69 08     ADC #$08
C - - - - - 0x01C8E1 07:C8D1: A8        TAY
C - - - - - 0x01C8E2 07:C8D2: E8        INX
C - - - - - 0x01C8E3 07:C8D3: E0 06     CPX #$06
C - - - - - 0x01C8E5 07:C8D5: 90 F1     BCC bra_C8C8_loop
C - - - - - 0x01C8E7 07:C8D7: 68        PLA
C - - - - - 0x01C8E8 07:C8D8: 85 DB     STA ram_00DB
C - - - - - 0x01C8EA 07:C8DA: 68        PLA
C - - - - - 0x01C8EB 07:C8DB: 85 DA     STA ram_00DA
C - - - - - 0x01C8ED 07:C8DD: 60        RTS



sub_C8DE:
C - - - - - 0x01C8EE 07:C8DE: C6 2F     DEC ram_002F
C - - - - - 0x01C8F0 07:C8E0: 10 0F     BPL bra_C8F1
C - - - - - 0x01C8F2 07:C8E2: A9 06     LDA #$06
C - - - - - 0x01C8F4 07:C8E4: 85 2F     STA ram_002F
C - - - - - 0x01C8F6 07:C8E6: A4 30     LDY ram_0030_index
C - - - - - 0x01C8F8 07:C8E8: C8        INY
C - - - - - 0x01C8F9 07:C8E9: C0 03     CPY #$03
C - - - - - 0x01C8FB 07:C8EB: 90 02     BCC bra_C8EF
C - - - - - 0x01C8FD 07:C8ED: A0 00     LDY #$00
bra_C8EF:
C - - - - - 0x01C8FF 07:C8EF: 84 30     STY ram_0030_index
bra_C8F1:
C - - - - - 0x01C901 07:C8F1: A4 30     LDY ram_0030_index
C - - - - - 0x01C903 07:C8F3: B9 2C 00  LDA ram_002C_chr_bank,Y
C - - - - - 0x01C906 07:C8F6: 85 2B     STA ram_chr_bank_bg
C - - - - - 0x01C908 07:C8F8: 60        RTS



sub_C8F9_prepare_hud_info_for_ppu:
C - - - - - 0x01C909 07:C8F9: 18        CLC
C - - - - - 0x01C90A 07:C8FA: A5 18     LDA ram_hud_handler
C - - - - - 0x01C90C 07:C8FC: 69 01     ADC #$01
C - - - - - 0x01C90E 07:C8FE: 29 03     AND #$03
C - - - - - 0x01C910 07:C900: 85 18     STA ram_hud_handler
C - - - - - 0x01C912 07:C902: 0A        ASL
C - - - - - 0x01C913 07:C903: A8        TAY
C - - - - - 0x01C914 07:C904: B9 66 CE  LDA tbl_CE66,Y
C - - - - - 0x01C917 07:C907: 8D 00 06  STA ram_0600
C - - - - - 0x01C91A 07:C90A: B9 67 CE  LDA tbl_CE66 + $01,Y
C - - - - - 0x01C91D 07:C90D: 8D 01 06  STA ram_0601
C - - - - - 0x01C920 07:C910: 6C 00 06  JMP (ram_0600)



ofs_002_C913_00_hud_message:
C - - J - - 0x01C923 07:C913: A5 46     LDA ram_message
C - - - - - 0x01C925 07:C915: 0A        ASL
C - - - - - 0x01C926 07:C916: A8        TAY
C - - - - - 0x01C927 07:C917: B9 8C C9  LDA tbl_C98C_messages,Y
C - - - - - 0x01C92A 07:C91A: 85 EA     STA ram_00EA
C - - - - - 0x01C92C 07:C91C: B9 8D C9  LDA tbl_C98C_messages + $01,Y
C - - - - - 0x01C92F 07:C91F: 85 EB     STA ram_00EB
C - - - - - 0x01C931 07:C921: A0 00     LDY #$00
bra_C923_loop:
C - - - - - 0x01C933 07:C923: B1 EA     LDA (ram_00EA),Y
C - - - - - 0x01C935 07:C925: F0 0E     BEQ bra_C935_00
C - - - - - 0x01C937 07:C927: 38        SEC
C - - - - - 0x01C938 07:C928: E9 35     SBC #$35
C - - - - - 0x01C93A 07:C92A: 99 1D 06  STA ram_061D_buffer,Y
C - - - - - 0x01C93D 07:C92D: C8        INY
C - - - - - 0x01C93E 07:C92E: C4 19     CPY ram_0019
C - - - - - 0x01C940 07:C930: 90 F1     BCC bra_C923_loop
C - - - - - 0x01C942 07:C932: 4C 3B C9  JMP loc_C93B
bra_C935_00:
C - - - - - 0x01C945 07:C935: A9 28     LDA #$28    ; symbol 0 (null-terminated string)
C - - - - - 0x01C947 07:C937: 99 1D 06  STA ram_061D_buffer,Y
C - - - - - 0x01C94A 07:C93A: C8        INY
loc_C93B:
C D 2 - - - 0x01C94B 07:C93B: A2 2B     LDX #$2B
C - - - - - 0x01C94D 07:C93D: 18        CLC
C - - - - - 0x01C94E 07:C93E: AD 4B 06  LDA ram_064B
C - - - - - 0x01C951 07:C941: 69 20     ADC #$20
C - - - - - 0x01C953 07:C943: 8D 4B 06  STA ram_064B
C - - - - - 0x01C956 07:C946: 10 02     BPL bra_C94A
C - - - - - 0x01C958 07:C948: A2 00     LDX #$00
bra_C94A:
C - - - - - 0x01C95A 07:C94A: 8A        TXA
C - - - - - 0x01C95B 07:C94B: 99 1D 06  STA ram_061D_buffer,Y
C - - - - - 0x01C95E 07:C94E: A9 00     LDA #$00
loc_C950_loop:
C D 2 - - - 0x01C960 07:C950: C8        INY
C - - - - - 0x01C961 07:C951: C0 1C     CPY #$1C
C - - - - - 0x01C963 07:C953: F0 06     BEQ bra_C95B
C - - - - - 0x01C965 07:C955: 99 1D 06  STA ram_061D_buffer,Y
C - - - - - 0x01C968 07:C958: 4C 50 C9  JMP loc_C950_loop
bra_C95B:
C - - - - - 0x01C96B 07:C95B: A5 19     LDA ram_0019
C - - - - - 0x01C96D 07:C95D: C9 1B     CMP #$1B
C - - - - - 0x01C96F 07:C95F: B0 02     BCS bra_C963
C - - - - - 0x01C971 07:C961: E6 19     INC ram_0019
bra_C963:
C - - - - - 0x01C973 07:C963: CE 51 06  DEC ram_new_msg_timer
C - - - - - 0x01C976 07:C966: D0 12     BNE bra_C97A_RTS
C - - - - - 0x01C978 07:C968: CE 52 06  DEC ram_new_msg_timer + $01
C - - - - - 0x01C97B 07:C96B: D0 0D     BNE bra_C97A_RTS
C - - - - - 0x01C97D 07:C96D: A5 38     LDA ram_random + $01
C - - - - - 0x01C97F 07:C96F: 29 03     AND #$03
C - - - - - 0x01C981 07:C971: C5 46     CMP ram_message
; con_msg_protect_the_innocent
; con_msg_uphold_the_law
; con_msg_serve_the_public_trust
C - - - - - 0x01C983 07:C973: D0 02     BNE bra_C977
C - - - - - 0x01C985 07:C975: 49 01     EOR #$01
bra_C977:
C - - - - - 0x01C987 07:C977: 20 7B C9  JSR sub_C97B_prepare_new_message
bra_C97A_RTS:
C - - - - - 0x01C98A 07:C97A: 60        RTS



sub_C97B_prepare_new_message:
C - - - - - 0x01C98B 07:C97B: 85 46     STA ram_message
C - - - - - 0x01C98D 07:C97D: A9 C8     LDA #< $02C8
C - - - - - 0x01C98F 07:C97F: 8D 51 06  STA ram_new_msg_timer
C - - - - - 0x01C992 07:C982: A9 02     LDA #> $02C8
C - - - - - 0x01C994 07:C984: 8D 52 06  STA ram_new_msg_timer + $01
C - - - - - 0x01C997 07:C987: A9 00     LDA #$00
C - - - - - 0x01C999 07:C989: 85 19     STA ram_0019
C - - - - - 0x01C99B 07:C98B: 60        RTS




tbl_C98C_messages:
- D 2 - - - 0x01C99C 07:C98C: C0 C9     .word _off012_C9C0_00_protect_the_innocent
- D 2 - - - 0x01C99E 07:C98E: D6 C9     .word _off012_C9D6_01_uphold_the_law
- - - - - - 0x01C9A0 07:C990: E6 C9     .word _off012_C9E6_02_come_and_get_it_scum
- D 2 - - - 0x01C9A2 07:C992: FC C9     .word _off012_C9FC_03_serve_the_public_trust
- D 2 - - - 0x01C9A4 07:C994: 14 CA     .word _off012_CA14_04_efficiency_increased
- D 2 - - - 0x01C9A6 07:C996: 2A CA     .word _off012_CA2A_05_system_damage_alert
- D 2 - - - 0x01C9A8 07:C998: 40 CA     .word _off012_CA40_06_fire_power_upgraded
- D 2 - - - 0x01C9AA 07:C99A: 55 CA     .word _off012_CA55_07_missiles_upgraded
- D 2 - - - 0x01C9AC 07:C99C: 68 CA     .word _off012_CA68_08_repair_item_obtained
- D 2 - - - 0x01C9AE 07:C99E: 7E CA     .word _off012_CA7E_09_system_failure
- D 2 - - - 0x01C9B0 07:C9A0: 8E CA     .word _off012_CA8E_0A_missile_jammed
- D 2 - - - 0x01C9B2 07:C9A2: 9E CA     .word _off012_CA9E_0B_passcode_accepted
- D 2 - - - 0x01C9B4 07:C9A4: B1 CA     .word _off012_CAB1_0C_otomo_destruct_initiated
- D 2 - - - 0x01C9B6 07:C9A6: CB CA     .word _off012_CACB_0D_smart_bomb_initiated
- - - - - - 0x01C9B8 07:C9A8: E1 CA     .word _off012_CAE1_0E_smart_bomb_deployed
- - - - - - 0x01C9BA 07:C9AA: F6 CA     .word _off012_CAF6_0F_warning_head_unit_damaged
- D 2 - - - 0x01C9BC 07:C9AC: 11 CB     .word _off012_CB11_10_warning_body_unit_damaged
- - - - - - 0x01C9BE 07:C9AE: 2C CB     .word _off012_CB2C_11_warning_arm_units_damaged
- D 2 - - - 0x01C9C0 07:C9B0: 47 CB     .word _off012_CB47_12_warning_leg_units_damaged
- D 2 - - - 0x01C9C2 07:C9B2: 62 CB     .word _off012_CB62_13_warning_jetpack_fuel_low
- D 2 - - - 0x01C9C4 07:C9B4: 7C CB     .word _off012_CB7C_14_maximum_fuel
- D 2 - - - 0x01C9C6 07:C9B6: 8A CB     .word _off012_CB8A_15_tank_weapons_disabled
- D 2 - - - 0x01C9C8 07:C9B8: A1 CB     .word _off012_CBA1_16_head_unit_mailfunction
- D 2 - - - 0x01C9CA 07:C9BA: B8 CB     .word _off012_CBB8_17_body_unit_mailfunction
- D 2 - - - 0x01C9CC 07:C9BC: CF CB     .word _off012_CBCF_18_arm_units_mailfunction
- D 2 - - - 0x01C9CE 07:C9BE: E6 CB     .word _off012_CBE6_19_leg_units_mailfunction
;                                       .word _off012_CBFD_1A_out_of_time



_off012_C9C0_00_protect_the_innocent:
; PROTECT THE INNOCENT.
- D 2 - I - 0x01C9D0 07:C9C0: 50        .byte $50, $52, $4F, $54, $45, $43, $54, $40, $54, $48, $45, $40, $49, $4E, $4E, $4F   ; 
- D 2 - I - 0x01C9E0 07:C9D0: 43        .byte $43, $45, $4E, $54, $5F   ; 
- D 2 - I - 0x01C9E5 07:C9D5: 00        .byte $00   ; end token



_off012_C9D6_01_uphold_the_law:
; UPHOLD THE LAW.
- D 2 - I - 0x01C9E6 07:C9D6: 55        .byte $55, $50, $48, $4F, $4C, $44, $40, $54, $48, $45, $40, $4C, $41, $57, $5F   ; 
- D 2 - I - 0x01C9F5 07:C9E5: 00        .byte $00   ; end token



_off012_C9E6_02_come_and_get_it_scum:
; COME AND GET IT SCUM.
- - - - - - 0x01C9F6 07:C9E6: 43        .byte $43, $4F, $4D, $45, $40, $41, $4E, $44, $40, $47, $45, $54, $40, $49, $54, $40   ; 
- - - - - - 0x01CA06 07:C9F6: 53        .byte $53, $43, $55, $4D, $5F   ; 
- - - - - - 0x01CA0B 07:C9FB: 00        .byte $00   ; end token



_off012_C9FC_03_serve_the_public_trust:
; SERVE THE PUBLIC TRUST.
- D 2 - I - 0x01CA0C 07:C9FC: 53        .byte $53, $45, $52, $56, $45, $40, $54, $48, $45, $40, $50, $55, $42, $4C, $49, $43   ; 
- D 2 - I - 0x01CA1C 07:CA0C: 40        .byte $40, $54, $52, $55, $53, $54, $5F   ; 
- D 2 - I - 0x01CA23 07:CA13: 00        .byte $00   ; end token



_off012_CA14_04_efficiency_increased:
; EFFICIENCY INCREASED.
- D 2 - I - 0x01CA24 07:CA14: 45        .byte $45, $46, $46, $49, $43, $49, $45, $4E, $43, $59, $40, $49, $4E, $43, $52, $45   ; 
- D 2 - I - 0x01CA34 07:CA24: 41        .byte $41, $53, $45, $44, $5F   ; 
- D 2 - I - 0x01CA39 07:CA29: 00        .byte $00   ; end token



_off012_CA2A_05_system_damage_alert:
; SYSTEMS DAMAGE ALERT.
- D 2 - I - 0x01CA3A 07:CA2A: 53        .byte $53, $59, $53, $54, $45, $4D, $53, $40, $44, $41, $4D, $41, $47, $45, $40, $41   ; 
- D 2 - I - 0x01CA4A 07:CA3A: 4C        .byte $4C, $45, $52, $54, $5F   ; 
- D 2 - I - 0x01CA4F 07:CA3F: 00        .byte $00   ; end token



_off012_CA40_06_fire_power_upgraded:
; FIRE POWER UPGRADED.
- D 2 - I - 0x01CA50 07:CA40: 46        .byte $46, $49, $52, $45, $40, $50, $4F, $57, $45, $52, $40, $55, $50, $47, $52, $41   ; 
- D 2 - I - 0x01CA60 07:CA50: 44        .byte $44, $45, $44, $5F   ; 
- D 2 - I - 0x01CA64 07:CA54: 00        .byte $00   ; end token



_off012_CA55_07_missiles_upgraded:
; MISSILES UPGRADED.
- D 2 - I - 0x01CA65 07:CA55: 4D        .byte $4D, $49, $53, $53, $49, $4C, $45, $53, $40, $55, $50, $47, $52, $41, $44, $45   ; 
- D 2 - I - 0x01CA75 07:CA65: 44        .byte $44, $5F   ; 
- D 2 - I - 0x01CA77 07:CA67: 00        .byte $00   ; end token



_off012_CA68_08_repair_item_obtained:
; REPAIR ITEM OBTAINED.
- D 2 - I - 0x01CA78 07:CA68: 52        .byte $52, $45, $50, $41, $49, $52, $40, $49, $54, $45, $4D, $40, $4F, $42, $54, $41   ; 
- D 2 - I - 0x01CA88 07:CA78: 49        .byte $49, $4E, $45, $44, $5F   ; 
- D 2 - I - 0x01CA8D 07:CA7D: 00        .byte $00   ; end token



_off012_CA7E_09_system_failure:
; SYSTEM FAILURE.
- D 2 - I - 0x01CA8E 07:CA7E: 53        .byte $53, $59, $53, $54, $45, $4D, $40, $46, $41, $49, $4C, $55, $52, $45, $5F   ; 
- D 2 - I - 0x01CA9D 07:CA8D: 00        .byte $00   ; end token



_off012_CA8E_0A_missile_jammed:
; MISSILE JAMMED.
- D 2 - I - 0x01CA9E 07:CA8E: 4D        .byte $4D, $49, $53, $53, $49, $4C, $45, $40, $4A, $41, $4D, $4D, $45, $44, $5F   ; 
- D 2 - I - 0x01CAAD 07:CA9D: 00        .byte $00   ; end token



_off012_CA9E_0B_passcode_accepted:
; PASSCODE ACCEPTED.
- D 2 - I - 0x01CAAE 07:CA9E: 50        .byte $50, $41, $53, $53, $43, $4F, $44, $45, $40, $41, $43, $43, $45, $50, $54, $45   ; 
- D 2 - I - 0x01CABE 07:CAAE: 44        .byte $44, $5F   ; 
- D 2 - I - 0x01CAC0 07:CAB0: 00        .byte $00   ; end token



_off012_CAB1_0C_otomo_destruct_initiated:
; OTOMO DESTRUCT INITIATED.
- D 2 - I - 0x01CAC1 07:CAB1: 4F        .byte $4F, $54, $4F, $4D, $4F, $40, $44, $45, $53, $54, $52, $55, $43, $54, $40, $49   ; 
- D 2 - I - 0x01CAD1 07:CAC1: 4E        .byte $4E, $49, $54, $49, $41, $54, $45, $44, $5F   ; 
- D 2 - I - 0x01CADA 07:CACA: 00        .byte $00   ; end token



_off012_CACB_0D_smart_bomb_initiated:
; SMART BOMB INITIATED.
- D 2 - I - 0x01CADB 07:CACB: 53        .byte $53, $4D, $41, $52, $54, $40, $42, $4F, $4D, $42, $40, $49, $4E, $49, $54, $49   ; 
- D 2 - I - 0x01CAEB 07:CADB: 41        .byte $41, $54, $45, $44, $5F   ; 
- D 2 - I - 0x01CAF0 07:CAE0: 00        .byte $00   ; end token



_off012_CAE1_0E_smart_bomb_deployed:
; SMART BOMB DEPLOYED.
- - - - - - 0x01CAF1 07:CAE1: 53        .byte $53, $4D, $41, $52, $54, $40, $42, $4F, $4D, $42, $40, $44, $45, $50, $4C, $4F   ; 
- - - - - - 0x01CB01 07:CAF1: 59        .byte $59, $45, $44, $5F   ; 
- - - - - - 0x01CB05 07:CAF5: 00        .byte $00   ; end token



_off012_CAF6_0F_warning_head_unit_damaged:
; WARNING HEAD UNIT DAMAGED.
- - - - - - 0x01CB06 07:CAF6: 57        .byte $57, $41, $52, $4E, $49, $4E, $47, $40, $48, $45, $41, $44, $40, $55, $4E, $49   ; 
- - - - - - 0x01CB16 07:CB06: 54        .byte $54, $40, $44, $41, $4D, $41, $47, $45, $44, $5F   ; 
- - - - - - 0x01CB20 07:CB10: 00        .byte $00   ; end token



_off012_CB11_10_warning_body_unit_damaged:
; WARNING BODY UNIT DAMAGED.
- D 2 - I - 0x01CB21 07:CB11: 57        .byte $57, $41, $52, $4E, $49, $4E, $47, $40, $42, $4F, $44, $59, $40, $55, $4E, $49   ; 
- D 2 - I - 0x01CB31 07:CB21: 54        .byte $54, $40, $44, $41, $4D, $41, $47, $45, $44, $5F   ; 
- D 2 - I - 0x01CB3B 07:CB2B: 00        .byte $00   ; end token



_off012_CB2C_11_warning_arm_units_damaged:
; WARNING ARM UNITS DAMAGED.
- - - - - - 0x01CB3C 07:CB2C: 57        .byte $57, $41, $52, $4E, $49, $4E, $47, $40, $41, $52, $4D, $40, $55, $4E, $49, $54   ; 
- - - - - - 0x01CB4C 07:CB3C: 53        .byte $53, $40, $44, $41, $4D, $41, $47, $45, $44, $5F   ; 
- - - - - - 0x01CB56 07:CB46: 00        .byte $00   ; end token



_off012_CB47_12_warning_leg_units_damaged:
; WARNING LEG UNITS DAMAGED.
- D 2 - I - 0x01CB57 07:CB47: 57        .byte $57, $41, $52, $4E, $49, $4E, $47, $40, $4C, $45, $47, $40, $55, $4E, $49, $54   ; 
- D 2 - I - 0x01CB67 07:CB57: 53        .byte $53, $40, $44, $41, $4D, $41, $47, $45, $44, $5F   ; 
- D 2 - I - 0x01CB71 07:CB61: 00        .byte $00   ; end token



_off012_CB62_13_warning_jetpack_fuel_low:
; WARNING JETPACK FUEL LOW.
- D 2 - I - 0x01CB72 07:CB62: 57        .byte $57, $41, $52, $4E, $49, $4E, $47, $40, $4A, $45, $54, $50, $41, $43, $4B, $40   ; 
- D 2 - I - 0x01CB82 07:CB72: 46        .byte $46, $55, $45, $4C, $40, $4C, $4F, $57, $5F   ; 
- D 2 - I - 0x01CB8B 07:CB7B: 00        .byte $00   ; end token



_off012_CB7C_14_maximum_fuel:
; MAXIMUM FUEL.
- D 2 - I - 0x01CB8C 07:CB7C: 4D        .byte $4D, $41, $58, $49, $4D, $55, $4D, $40, $46, $55, $45, $4C, $5F   ; 
- D 2 - I - 0x01CB99 07:CB89: 00        .byte $00   ; end token



_off012_CB8A_15_tank_weapons_disabled:
; TANK WEAPONS DISABLED.
- D 2 - I - 0x01CB9A 07:CB8A: 54        .byte $54, $41, $4E, $4B, $40, $57, $45, $41, $50, $4F, $4E, $53, $40, $44, $49, $53   ; 
- D 2 - I - 0x01CBAA 07:CB9A: 41        .byte $41, $42, $4C, $45, $44, $5F   ; 
- D 2 - I - 0x01CBB0 07:CBA0: 00        .byte $00   ; end token



_off012_CBA1_16_head_unit_mailfunction:
; HEAD UNIT MALFUNCTION.
- D 2 - I - 0x01CBB1 07:CBA1: 48        .byte $48, $45, $41, $44, $40, $55, $4E, $49, $54, $40, $4D, $41, $4C, $46, $55, $4E   ; 
- D 2 - I - 0x01CBC1 07:CBB1: 43        .byte $43, $54, $49, $4F, $4E, $5F   ; 
- D 2 - I - 0x01CBC7 07:CBB7: 00        .byte $00   ; end token



_off012_CBB8_17_body_unit_mailfunction:
; BODY UNIT MALFUNCTION.
- D 2 - I - 0x01CBC8 07:CBB8: 42        .byte $42, $4F, $44, $59, $40, $55, $4E, $49, $54, $40, $4D, $41, $4C, $46, $55, $4E   ; 
- D 2 - I - 0x01CBD8 07:CBC8: 43        .byte $43, $54, $49, $4F, $4E, $5F   ; 
- D 2 - I - 0x01CBDE 07:CBCE: 00        .byte $00   ; end token



_off012_CBCF_18_arm_units_mailfunction:
; ARM UNITS MALFUNCTION.
- D 2 - I - 0x01CBDF 07:CBCF: 41        .byte $41, $52, $4D, $40, $55, $4E, $49, $54, $53, $40, $4D, $41, $4C, $46, $55, $4E   ; 
- D 2 - I - 0x01CBEF 07:CBDF: 43        .byte $43, $54, $49, $4F, $4E, $5F   ; 
- D 2 - I - 0x01CBF5 07:CBE5: 00        .byte $00   ; end token



_off012_CBE6_19_leg_units_mailfunction:
; LEG UNITS MALFUNCTION.
- D 2 - I - 0x01CBF6 07:CBE6: 4C        .byte $4C, $45, $47, $40, $55, $4E, $49, $54, $53, $40, $4D, $41, $4C, $46, $55, $4E   ; 
- D 2 - I - 0x01CC06 07:CBF6: 43        .byte $43, $54, $49, $4F, $4E, $5F   ; 
- D 2 - I - 0x01CC0C 07:CBFC: 00        .byte $00   ; end token



; bzk garbage, never used
; _off012_CBFD_1A_out_of_time
; OUT OF TIME.
- - - - - - 0x01CC0D 07:CBFD: 4F        .byte $4F, $55, $54, $40, $4F, $46, $40, $54, $49, $4D, $45, $5F   ; 
- - - - - - 0x01CC19 07:CC09: 00        .byte $00   ; end token




loc_CC0A:
C D 2 - - - 0x01CC1A 07:CC0A: CE 4E 03  DEC ram_034E
C - - - - - 0x01CC1D 07:CC0D: D0 22     BNE bra_CC31
C - - - - - 0x01CC1F 07:CC0F: A9 0F     LDA #$0F
C - - - - - 0x01CC21 07:CC11: 8D 4E 03  STA ram_034E
C - - - - - 0x01CC24 07:CC14: CE 4F 03  DEC ram_034F
C - - - - - 0x01CC27 07:CC17: D0 18     BNE bra_CC31
C - - - - - 0x01CC29 07:CC19: AD 50 03  LDA ram_0350_stars
C - - - - - 0x01CC2C 07:CC1C: D0 0B     BNE bra_CC29
C - - - - - 0x01CC2E 07:CC1E: A9 1A     LDA #con_msg_out_of_time
C - - - - - 0x01CC30 07:CC20: 20 7B C9  JSR sub_C97B_prepare_new_message
C - - - - - 0x01CC33 07:CC23: A9 FF     LDA #$FF
C - - - - - 0x01CC35 07:CC25: 8D 7E 06  STA ram_067E
C - - - - - 0x01CC38 07:CC28: 60        RTS
bra_CC29:
C - - - - - 0x01CC39 07:CC29: A9 3B     LDA #$3B
C - - - - - 0x01CC3B 07:CC2B: 8D 4F 03  STA ram_034F
C - - - - - 0x01CC3E 07:CC2E: CE 50 03  DEC ram_0350_stars
bra_CC31:
C - - - - - 0x01CC41 07:CC31: A9 36     LDA #$36
C - - - - - 0x01CC43 07:CC33: 8D 3B 06  STA ram_063B
C - - - - - 0x01CC46 07:CC36: AD 4F 03  LDA ram_034F
C - - - - - 0x01CC49 07:CC39: 85 1E     STA ram_001E
C - - - - - 0x01CC4B 07:CC3B: A9 00     LDA #$00
C - - - - - 0x01CC4D 07:CC3D: 85 1F     STA ram_001E + $01
C - - - - - 0x01CC4F 07:CC3F: A2 2D     LDX #< (ram_061D_buffer + $10)
C - - - - - 0x01CC51 07:CC41: A0 06     LDY #> (ram_061D_buffer + $10)
C - - - - - 0x01CC53 07:CC43: 20 24 D1  JSR sub_D124
C - - - - - 0x01CC56 07:CC46: A9 F6     LDA #$F6
C - - - - - 0x01CC58 07:CC48: 8D 2F 06  STA ram_061D_buffer + $12
C - - - - - 0x01CC5B 07:CC4B: AD 50 03  LDA ram_0350_stars
C - - - - - 0x01CC5E 07:CC4E: 85 1E     STA ram_001E
C - - - - - 0x01CC60 07:CC50: A9 00     LDA #$00
C - - - - - 0x01CC62 07:CC52: 85 1F     STA ram_001E + $01
C - - - - - 0x01CC64 07:CC54: A2 2A     LDX #< (ram_061D_buffer + $0D)
C - - - - - 0x01CC66 07:CC56: A0 06     LDY #> (ram_061D_buffer + $0D)
C - - - - - 0x01CC68 07:CC58: 20 24 D1  JSR sub_D124
C - - - - - 0x01CC6B 07:CC5B: A2 07     LDX #$07
C - - - - - 0x01CC6D 07:CC5D: A9 00     LDA #$00
bra_CC5F_loop:
C - - - - - 0x01CC6F 07:CC5F: 9D 22 06  STA ram_061D_buffer + $05,X
C - - - - - 0x01CC72 07:CC62: CA        DEX
C - - - - - 0x01CC73 07:CC63: 10 FA     BPL bra_CC5F_loop
C - - - - - 0x01CC75 07:CC65: 8D 2A 06  STA ram_061D_buffer + $0D
C - - - - - 0x01CC78 07:CC68: 8D 2B 06  STA ram_061D_buffer + $0E
C - - - - - 0x01CC7B 07:CC6B: 8D 2C 06  STA ram_061D_buffer + $0F
C - - - - - 0x01CC7E 07:CC6E: 8D 2D 06  STA ram_061D_buffer + $10
C - - - - - 0x01CC81 07:CC71: 60        RTS
bra_CC72:
C - - - - - 0x01CC82 07:CC72: 4C 0A CC  JMP loc_CC0A



ofs_002_CC75_01_health:
C - - J - - 0x01CC85 07:CC75: A9 36     LDA #$36
C - - - - - 0x01CC87 07:CC77: 8D 3B 06  STA ram_063B
C - - - - - 0x01CC8A 07:CC7A: A9 00     LDA #$00
C - - - - - 0x01CC8C 07:CC7C: 85 1F     STA ram_001E + $01
C - - - - - 0x01CC8E 07:CC7E: 18        CLC
C - - - - - 0x01CC8F 07:CC7F: AD A0 06  LDA ram_unit_hp_head
C - - - - - 0x01CC92 07:CC82: 6D A1 06  ADC ram_unit_hp_body
C - - - - - 0x01CC95 07:CC85: 6D A2 06  ADC ram_unit_hp_arms
C - - - - - 0x01CC98 07:CC88: 6D A3 06  ADC ram_unit_hp_legs
C - - - - - 0x01CC9B 07:CC8B: 8D 3E 06  STA ram_robocop_hp
C - - - - - 0x01CC9E 07:CC8E: 85 1E     STA ram_001E
C - - - - - 0x01CCA0 07:CC90: A2 1D     LDX #< ram_061D_buffer
C - - - - - 0x01CCA2 07:CC92: A0 06     LDY #> ram_061D_buffer
C - - - - - 0x01CCA4 07:CC94: 20 24 D1  JSR sub_D124
C - - - - - 0x01CCA7 07:CC97: AD 46 06  LDA ram_0646_smart_bomb
C - - - - - 0x01CCAA 07:CC9A: D0 57     BNE bra_CCF3
C - - - - - 0x01CCAC 07:CC9C: A0 03     LDY #$03
bra_CC9E_loop:
C - - - - - 0x01CCAE 07:CC9E: B9 50 00  LDA ram_0050_obj_flags,Y
C - - - - - 0x01CCB1 07:CCA1: D0 12     BNE bra_CCB5
C - - - - - 0x01CCB3 07:CCA3: 88        DEY
C - - - - - 0x01CCB4 07:CCA4: D0 F8     BNE bra_CC9E_loop
C - - - - - 0x01CCB6 07:CCA6: A9 40     LDA #$40
C - - - - - 0x01CCB8 07:CCA8: 8D 2F 06  STA ram_061D_buffer + $12
C - - - - - 0x01CCBB 07:CCAB: 8D 30 06  STA ram_061D_buffer + $13
C - - - - - 0x01CCBE 07:CCAE: A9 00     LDA #$00
C - - - - - 0x01CCC0 07:CCB0: 85 1A     STA ram_001A
C - - - - - 0x01CCC2 07:CCB2: 4C D4 CC  JMP loc_CCD4
bra_CCB5:
C - - - - - 0x01CCC5 07:CCB5: A9 10     LDA #$10
C - - - - - 0x01CCC7 07:CCB7: 85 1A     STA ram_001A
C - - - - - 0x01CCC9 07:CCB9: A9 63     LDA #$63
C - - - - - 0x01CCCB 07:CCBB: A6 03     LDX ram_mission
C - - - - - 0x01CCCD 07:CCBD: E0 04     CPX #$04
C - - - - - 0x01CCCF 07:CCBF: F0 B1     BEQ bra_CC72
C - - - - - 0x01CCD1 07:CCC1: A6 48     LDX ram_0048
C - - - - - 0x01CCD3 07:CCC3: BD C3 03  LDA ram_03C3,X
C - - - - - 0x01CCD6 07:CCC6: D0 03     BNE bra_CCCB
C - - - - - 0x01CCD8 07:CCC8: B9 C3 03  LDA ram_03C3,Y
bra_CCCB:
C - - - - - 0x01CCDB 07:CCCB: 85 1E     STA ram_001E
C - - - - - 0x01CCDD 07:CCCD: A2 2C     LDX #< (ram_061D_buffer + $0F)
C - - - - - 0x01CCDF 07:CCCF: A0 06     LDY #> (ram_061D_buffer + $0F)
C - - - - - 0x01CCE1 07:CCD1: 20 24 D1  JSR sub_D124
loc_CCD4:
C D 2 - - - 0x01CCE4 07:CCD4: A2 04     LDX #$04
bra_CCD6_loop:
C - - - - - 0x01CCE6 07:CCD6: A9 00     LDA #$00
C - - - - - 0x01CCE8 07:CCD8: 9D 22 06  STA ram_061D_buffer + $05,X
C - - - - - 0x01CCEB 07:CCDB: BD FE F9  LDA tbl_F9FE,X
C - - - - - 0x01CCEE 07:CCDE: 9D 2A 06  STA ram_061D_buffer + $0D,X
C - - - - - 0x01CCF1 07:CCE1: CA        DEX
C - - - - - 0x01CCF2 07:CCE2: 10 F2     BPL bra_CCD6_loop
C - - - - - 0x01CCF4 07:CCE4: A9 00     LDA #$00
C - - - - - 0x01CCF6 07:CCE6: 8D 27 06  STA ram_061D_buffer + $0A
C - - - - - 0x01CCF9 07:CCE9: 8D 28 06  STA ram_061D_buffer + $0B
C - - - - - 0x01CCFC 07:CCEC: 8D 29 06  STA ram_061D_buffer + $0C
C - - - - - 0x01CCFF 07:CCEF: 8D 31 06  STA ram_061D_buffer + $14
C - - - - - 0x01CD02 07:CCF2: 60        RTS
bra_CCF3:
C - - - - - 0x01CD03 07:CCF3: A2 07     LDX #$07
bra_CCF5_loop:
C - - - - - 0x01CD05 07:CCF5: BD EE F9  LDA tbl_F9EE,X
C - - - - - 0x01CD08 07:CCF8: 9D 22 06  STA ram_061D_buffer + $05,X
C - - - - - 0x01CD0B 07:CCFB: BD F6 F9  LDA tbl_F9F6,X
C - - - - - 0x01CD0E 07:CCFE: 9D 2A 06  STA ram_061D_buffer + $0D,X
C - - - - - 0x01CD11 07:CD01: CA        DEX
C - - - - - 0x01CD12 07:CD02: 10 F1     BPL bra_CCF5_loop
C - - - - - 0x01CD14 07:CD04: A9 20     LDA #$20
C - - - - - 0x01CD16 07:CD06: 85 1A     STA ram_001A
C - - - - - 0x01CD18 07:CD08: CE 48 06  DEC ram_0648
C - - - - - 0x01CD1B 07:CD0B: D0 3C     BNE bra_CD49_RTS
C - - - - - 0x01CD1D 07:CD0D: A9 7F     LDA #$7F
C - - - - - 0x01CD1F 07:CD0F: 8D 45 06  STA ram_0645
C - - - - - 0x01CD22 07:CD12: A9 00     LDA #$00
C - - - - - 0x01CD24 07:CD14: 8D 46 06  STA ram_0646_smart_bomb
C - - - - - 0x01CD27 07:CD17: A9 0E     LDA #con_msg_smart_bomb_deployed
C - - - - - 0x01CD29 07:CD19: 20 7B C9  JSR sub_C97B_prepare_new_message
C - - - - - 0x01CD2C 07:CD1C: A9 04     LDA #con_sound_04
C - - - - - 0x01CD2E 07:CD1E: 85 47     STA ram_sound
C - - - - - 0x01CD30 07:CD20: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01CD32 07:CD22: C9 0E     CMP #$0E
C - - - - - 0x01CD34 07:CD24: 90 23     BCC bra_CD49_RTS
C - - - - - 0x01CD36 07:CD26: C9 0F     CMP #$0F
C - - - - - 0x01CD38 07:CD28: B0 06     BCS bra_CD30
C - - - - - 0x01CD3A 07:CD2A: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01CD3C 07:CD2C: C9 50     CMP #$50
C - - - - - 0x01CD3E 07:CD2E: 90 19     BCC bra_CD49_RTS
bra_CD30:
C - - - - - 0x01CD40 07:CD30: EE 9E 06  INC ram_069E
C - - - - - 0x01CD43 07:CD33: 18        CLC
C - - - - - 0x01CD44 07:CD34: AD 3C 06  LDA ram_063C
C - - - - - 0x01CD47 07:CD37: 69 F4     ADC #< $01F4
C - - - - - 0x01CD49 07:CD39: 8D 3C 06  STA ram_063C
C - - - - - 0x01CD4C 07:CD3C: AD 3D 06  LDA ram_063C + $01
C - - - - - 0x01CD4F 07:CD3F: 69 01     ADC #> $01F4
C - - - - - 0x01CD51 07:CD41: 8D 3D 06  STA ram_063C + $01
C - - - - - 0x01CD54 07:CD44: A9 15     LDA #con_msg_tank_weapons_disabled
C - - - - - 0x01CD56 07:CD46: 20 7B C9  JSR sub_C97B_prepare_new_message
bra_CD49_RTS:
C - - - - - 0x01CD59 07:CD49: 60        RTS



ofs_002_CD4A_02:
C - - J - - 0x01CD5A 07:CD4A: A9 00     LDA #$00
C - - - - - 0x01CD5C 07:CD4C: 8D 3B 06  STA ram_063B
C - - - - - 0x01CD5F 07:CD4F: AD 3D 06  LDA ram_063C + $01
C - - - - - 0x01CD62 07:CD52: 85 1F     STA ram_001E + $01
C - - - - - 0x01CD64 07:CD54: AD 3C 06  LDA ram_063C
C - - - - - 0x01CD67 07:CD57: 85 1E     STA ram_001E
C - - - - - 0x01CD69 07:CD59: A2 1D     LDX #< ram_061D_buffer
C - - - - - 0x01CD6B 07:CD5B: A0 06     LDY #> ram_061D_buffer
C - - - - - 0x01CD6D 07:CD5D: 20 24 D1  JSR sub_D124
C - - - - - 0x01CD70 07:CD60: A2 04     LDX #$04
bra_CD62_loop:
C - - - - - 0x01CD72 07:CD62: BC 1D 06  LDY ram_061D_buffer,X
C - - - - - 0x01CD75 07:CD65: B9 6E F9  LDA tbl_F96E,Y
C - - - - - 0x01CD78 07:CD68: 9D 1D 06  STA ram_061D_buffer,X
C - - - - - 0x01CD7B 07:CD6B: B9 78 F9  LDA tbl_F978,Y
C - - - - - 0x01CD7E 07:CD6E: 9D 22 06  STA ram_061D_buffer + $05,X
C - - - - - 0x01CD81 07:CD71: CA        DEX
C - - - - - 0x01CD82 07:CD72: 10 EE     BPL bra_CD62_loop
C - - - - - 0x01CD84 07:CD74: A4 03     LDY ram_mission
C - - - - - 0x01CD86 07:CD76: B9 02 CE  LDA tbl_CE02,Y
C - - - - - 0x01CD89 07:CD79: 8D F0 06  STA ram_06F0
C - - - - - 0x01CD8C 07:CD7C: B9 07 CE  LDA tbl_CE07,Y
C - - - - - 0x01CD8F 07:CD7F: 8D F1 06  STA ram_06F1
C - - - - - 0x01CD92 07:CD82: B9 0C CE  LDA tbl_CE0C,Y
C - - - - - 0x01CD95 07:CD85: 8D F2 06  STA ram_06F2
C - - - - - 0x01CD98 07:CD88: B9 11 CE  LDA tbl_CE11,Y
C - - - - - 0x01CD9B 07:CD8B: 8D F3 06  STA ram_06F3
C - - - - - 0x01CD9E 07:CD8E: A5 03     LDA ram_mission
C - - - - - 0x01CDA0 07:CD90: 0A        ASL
C - - - - - 0x01CDA1 07:CD91: 0A        ASL
C - - - - - 0x01CDA2 07:CD92: 0A        ASL
C - - - - - 0x01CDA3 07:CD93: A8        TAY
C - - - - - 0x01CDA4 07:CD94: A2 00     LDX #$00
bra_CD96_loop:
C - - - - - 0x01CDA6 07:CD96: B9 16 CE  LDA tbl_CE16,Y
C - - - - - 0x01CDA9 07:CD99: 9D 27 06  STA ram_061D_buffer + $0A,X
C - - - - - 0x01CDAC 07:CD9C: C8        INY
C - - - - - 0x01CDAD 07:CD9D: E8        INX
C - - - - - 0x01CDAE 07:CD9E: E0 08     CPX #$08
C - - - - - 0x01CDB0 07:CDA0: 90 F4     BCC bra_CD96_loop
C - - - - - 0x01CDB2 07:CDA2: CE F4 06  DEC ram_06F4
C - - - - - 0x01CDB5 07:CDA5: AD F4 06  LDA ram_06F4
C - - - - - 0x01CDB8 07:CDA8: 29 07     AND #$07
C - - - - - 0x01CDBA 07:CDAA: 8D F4 06  STA ram_06F4
C - - - - - 0x01CDBD 07:CDAD: AD 59 06  LDA ram_weapon_type
C - - - - - 0x01CDC0 07:CDB0: D0 07     BNE bra_CDB9_missiles
; if fire
C - - - - - 0x01CDC2 07:CDB2: AD F4 06  LDA ram_06F4
C - - - - - 0x01CDC5 07:CDB5: 29 04     AND #$04
C - - - - - 0x01CDC7 07:CDB7: F0 1B     BEQ bra_CDD4
bra_CDB9_missiles:
C - - - - - 0x01CDC9 07:CDB9: A4 1C     LDY ram_weapon_upgrade_fire
C - - - - - 0x01CDCB 07:CDBB: BE FC CD  LDX tbl_CDFC,Y
C - - - - - 0x01CDCE 07:CDBE: BD 27 06  LDA ram_061D_buffer + $0A,X
C - - - - - 0x01CDD1 07:CDC1: 29 3F     AND #$3F
C - - - - - 0x01CDD3 07:CDC3: 0D F0 06  ORA ram_06F0
C - - - - - 0x01CDD6 07:CDC6: 9D 27 06  STA ram_061D_buffer + $0A,X
C - - - - - 0x01CDD9 07:CDC9: BD 28 06  LDA ram_061D_buffer + $0B,X
C - - - - - 0x01CDDC 07:CDCC: 29 CF     AND #$CF
C - - - - - 0x01CDDE 07:CDCE: 0D F1 06  ORA ram_06F1
C - - - - - 0x01CDE1 07:CDD1: 9D 28 06  STA ram_061D_buffer + $0B,X
bra_CDD4:
C - - - - - 0x01CDE4 07:CDD4: AD 59 06  LDA ram_weapon_type
C - - - - - 0x01CDE7 07:CDD7: F0 07     BEQ bra_CDE0_fire
; if missiles
C - - - - - 0x01CDE9 07:CDD9: AD F4 06  LDA ram_06F4
C - - - - - 0x01CDEC 07:CDDC: 29 04     AND #$04
C - - - - - 0x01CDEE 07:CDDE: F0 1B     BEQ bra_CDFB_RTS
bra_CDE0_fire:
C - - - - - 0x01CDF0 07:CDE0: A4 1D     LDY ram_weapon_upgrade_missile
C - - - - - 0x01CDF2 07:CDE2: BE FF CD  LDX tbl_CDFF,Y
C - - - - - 0x01CDF5 07:CDE5: BD 27 06  LDA ram_061D_buffer + $0A,X
C - - - - - 0x01CDF8 07:CDE8: 29 F3     AND #$F3
C - - - - - 0x01CDFA 07:CDEA: 0D F2 06  ORA ram_06F2
C - - - - - 0x01CDFD 07:CDED: 9D 27 06  STA ram_061D_buffer + $0A,X
C - - - - - 0x01CE00 07:CDF0: BD 28 06  LDA ram_061D_buffer + $0B,X
C - - - - - 0x01CE03 07:CDF3: 29 FC     AND #$FC
C - - - - - 0x01CE05 07:CDF5: 0D F3 06  ORA ram_06F3
C - - - - - 0x01CE08 07:CDF8: 9D 28 06  STA ram_061D_buffer + $0B,X
bra_CDFB_RTS:
C - - - - - 0x01CE0B 07:CDFB: 60        RTS



tbl_CDFC:
- D 2 - - - 0x01CE0C 07:CDFC: 00        .byte $00   ; 00 fire
- D 2 - - - 0x01CE0D 07:CDFD: 01        .byte $01   ; 01 rapid
- D 2 - - - 0x01CE0E 07:CDFE: 02        .byte $02   ; 02 3-way



tbl_CDFF:
- D 2 - - - 0x01CE0F 07:CDFF: 04        .byte $04   ; 00 missile
- D 2 - - - 0x01CE10 07:CE00: 05        .byte $05   ; 01 homing
- D 2 - - - 0x01CE11 07:CE01: 06        .byte $06   ; 02 bang



tbl_CE02:
- D 2 - - - 0x01CE12 07:CE02: 00        .byte $00   ; 00 mission 1
- D 2 - - - 0x01CE13 07:CE03: 00        .byte $00   ; 01 mission 2
- D 2 - - - 0x01CE14 07:CE04: 80        .byte $80   ; 02 mission 3
- D 2 - - - 0x01CE15 07:CE05: 80        .byte $80   ; 03 mission 4
- D 2 - - - 0x01CE16 07:CE06: 00        .byte $00   ; 04 mission 5



tbl_CE07:
- D 2 - - - 0x01CE17 07:CE07: 00        .byte $00   ; 00 mission 1
- D 2 - - - 0x01CE18 07:CE08: 00        .byte $00   ; 01 mission 2
- D 2 - - - 0x01CE19 07:CE09: 20        .byte $20   ; 02 mission 3
- D 2 - - - 0x01CE1A 07:CE0A: 20        .byte $20   ; 03 mission 4
- D 2 - - - 0x01CE1B 07:CE0B: 00        .byte $00   ; 04 mission 5



tbl_CE0C:
- D 2 - - - 0x01CE1C 07:CE0C: 00        .byte $00   ; 00 mission 1
- D 2 - - - 0x01CE1D 07:CE0D: 00        .byte $00   ; 01 mission 2
- D 2 - - - 0x01CE1E 07:CE0E: 08        .byte $08   ; 02 mission 3
- D 2 - - - 0x01CE1F 07:CE0F: 08        .byte $08   ; 03 mission 4
- D 2 - - - 0x01CE20 07:CE10: 00        .byte $00   ; 04 mission 5



tbl_CE11:
- D 2 - - - 0x01CE21 07:CE11: 00        .byte $00   ; 00 mission 1
- D 2 - - - 0x01CE22 07:CE12: 00        .byte $00   ; 01 mission 2
- D 2 - - - 0x01CE23 07:CE13: 02        .byte $02   ; 02 mission 3
- D 2 - - - 0x01CE24 07:CE14: 02        .byte $02   ; 03 mission 4
- D 2 - - - 0x01CE25 07:CE15: 00        .byte $00   ; 04 mission 5



tbl_CE16:
- D 2 - - - 0x01CE26 07:CE16: F0        .byte $F0, $F0, $F0, $F0, $AF, $AF, $AF, $AF   ; 00 mission 1
- D 2 - - - 0x01CE2E 07:CE1E: F0        .byte $F0, $F0, $F0, $F0, $AF, $AF, $AF, $AF   ; 01 mission 2
- D 2 - - - 0x01CE36 07:CE26: F0        .byte $F0, $F0, $F0, $F0, $AF, $AF, $AF, $AF   ; 02 mission 3
- D 2 - - - 0x01CE3E 07:CE2E: F0        .byte $F0, $F0, $F0, $F0, $AF, $AF, $AF, $AF   ; 03 mission 4
- D 2 - - - 0x01CE46 07:CE36: F0        .byte $F0, $F0, $F0, $F0, $AF, $AF, $AF, $AF   ; 04 mission 5




ofs_002_CE3E_03:
C - - J - - 0x01CE4E 07:CE3E: AD 59 06  LDA ram_weapon_type
C - - - - - 0x01CE51 07:CE41: D0 05     BNE bra_CE48_missiles
; if fire
C - - - - - 0x01CE53 07:CE43: A5 1C     LDA ram_weapon_upgrade_fire
C - - - - - 0x01CE55 07:CE45: 4C 4D CE  JMP loc_CE4D    ; bzk optimize, BPL
bra_CE48_missiles:
C - - - - - 0x01CE58 07:CE48: 18        CLC
C - - - - - 0x01CE59 07:CE49: A5 1D     LDA ram_weapon_upgrade_missile
C - - - - - 0x01CE5B 07:CE4B: 69 03     ADC #$03
loc_CE4D:
C D 2 - - - 0x01CE5D 07:CE4D: 0A        ASL
C - - - - - 0x01CE5E 07:CE4E: 85 E2     STA ram_00E2
C - - - - - 0x01CE60 07:CE50: 0A        ASL
C - - - - - 0x01CE61 07:CE51: 0A        ASL
C - - - - - 0x01CE62 07:CE52: 0A        ASL
C - - - - - 0x01CE63 07:CE53: 18        CLC
C - - - - - 0x01CE64 07:CE54: 65 E2     ADC ram_00E2
C - - - - - 0x01CE66 07:CE56: AA        TAX
C - - - - - 0x01CE67 07:CE57: A0 00     LDY #$00
bra_CE59_loop:
C - - - - - 0x01CE69 07:CE59: BD 82 F9  LDA tbl_F982,X
C - - - - - 0x01CE6C 07:CE5C: 99 1D 06  STA ram_061D_buffer,Y
C - - - - - 0x01CE6F 07:CE5F: E8        INX
C - - - - - 0x01CE70 07:CE60: C8        INY
C - - - - - 0x01CE71 07:CE61: C0 12     CPY #$12
C - - - - - 0x01CE73 07:CE63: D0 F4     BNE bra_CE59_loop
C - - - - - 0x01CE75 07:CE65: 60        RTS



tbl_CE66:
- D 2 - - - 0x01CE76 07:CE66: 13 C9     .word ofs_002_C913_00_hud_message
- D 2 - - - 0x01CE78 07:CE68: 75 CC     .word ofs_002_CC75_01_health
- D 2 - - - 0x01CE7A 07:CE6A: 4A CD     .word ofs_002_CD4A_02
- D 2 - - - 0x01CE7C 07:CE6C: 3E CE     .word ofs_002_CE3E_03




sub_CE6E_write_hud_info_to_ppu:
C - - - - - 0x01CE7E 07:CE6E: A5 18     LDA ram_hud_handler
C - - - - - 0x01CE80 07:CE70: 0A        ASL
C - - - - - 0x01CE81 07:CE71: A8        TAY
C - - - - - 0x01CE82 07:CE72: B9 81 CE  LDA tbl_CE81,Y
C - - - - - 0x01CE85 07:CE75: 8D 00 06  STA ram_0600
C - - - - - 0x01CE88 07:CE78: B9 82 CE  LDA tbl_CE81 + $01,Y
C - - - - - 0x01CE8B 07:CE7B: 8D 01 06  STA ram_0601
C - - - - - 0x01CE8E 07:CE7E: 6C 00 06  JMP (ram_0600)



tbl_CE81:
- D 2 - - - 0x01CE91 07:CE81: CD CF     .word ofs_003_CFCD_00_hud_message
- D 2 - - - 0x01CE93 07:CE83: 89 CE     .word ofs_003_CE89_01
- D 2 - - - 0x01CE95 07:CE85: 29 CF     .word ofs_003_CF29_02
- D 2 - - - 0x01CE97 07:CE87: 89 D0     .word ofs_003_D089_03



ofs_003_CE89_01:
C - - J - - 0x01CE99 07:CE89: A5 10     LDA ram_for_2000
C - - - - - 0x01CE9B 07:CE8B: 29 FB     AND #$FB
C - - - - - 0x01CE9D 07:CE8D: 85 10     STA ram_for_2000
C - - - - - 0x01CE9F 07:CE8F: 8D 00 20  STA $2000
C - - - - - 0x01CEA2 07:CE92: A9 20     LDA #> $20A3
C - - - - - 0x01CEA4 07:CE94: 8D 06 20  STA $2006
C - - - - - 0x01CEA7 07:CE97: A9 A3     LDA #< $20A3
C - - - - - 0x01CEA9 07:CE99: 8D 06 20  STA $2006
C - - - - - 0x01CEAC 07:CE9C: AD 1F 06  LDA ram_061D_buffer + $02
C - - - - - 0x01CEAF 07:CE9F: 8D 07 20  STA $2007
C - - - - - 0x01CEB2 07:CEA2: AD 20 06  LDA ram_061D_buffer + $03
C - - - - - 0x01CEB5 07:CEA5: 8D 07 20  STA $2007
C - - - - - 0x01CEB8 07:CEA8: AD 21 06  LDA ram_061D_buffer + $04
C - - - - - 0x01CEBB 07:CEAB: 8D 07 20  STA $2007
C - - - - - 0x01CEBE 07:CEAE: A9 20     LDA #> $2098
C - - - - - 0x01CEC0 07:CEB0: 8D 06 20  STA $2006
C - - - - - 0x01CEC3 07:CEB3: A9 98     LDA #< $2098
C - - - - - 0x01CEC5 07:CEB5: 8D 06 20  STA $2006
C - - - - - 0x01CEC8 07:CEB8: AD 22 06  LDA ram_061D_buffer + $05
C - - - - - 0x01CECB 07:CEBB: 8D 07 20  STA $2007
C - - - - - 0x01CECE 07:CEBE: AD 23 06  LDA ram_061D_buffer + $06
C - - - - - 0x01CED1 07:CEC1: 8D 07 20  STA $2007
C - - - - - 0x01CED4 07:CEC4: AD 24 06  LDA ram_061D_buffer + $07
C - - - - - 0x01CED7 07:CEC7: 8D 07 20  STA $2007
C - - - - - 0x01CEDA 07:CECA: AD 25 06  LDA ram_061D_buffer + $08
C - - - - - 0x01CEDD 07:CECD: 8D 07 20  STA $2007
C - - - - - 0x01CEE0 07:CED0: AD 26 06  LDA ram_061D_buffer + $09
C - - - - - 0x01CEE3 07:CED3: 8D 07 20  STA $2007
C - - - - - 0x01CEE6 07:CED6: AD 27 06  LDA ram_061D_buffer + $0A
C - - - - - 0x01CEE9 07:CED9: 8D 07 20  STA $2007
C - - - - - 0x01CEEC 07:CEDC: AD 28 06  LDA ram_061D_buffer + $0B
C - - - - - 0x01CEEF 07:CEDF: 8D 07 20  STA $2007
C - - - - - 0x01CEF2 07:CEE2: AD 29 06  LDA ram_061D_buffer + $0C
C - - - - - 0x01CEF5 07:CEE5: 8D 07 20  STA $2007
C - - - - - 0x01CEF8 07:CEE8: A9 20     LDA #> $20B8
C - - - - - 0x01CEFA 07:CEEA: 8D 06 20  STA $2006
C - - - - - 0x01CEFD 07:CEED: A9 B8     LDA #< $20B8
C - - - - - 0x01CEFF 07:CEEF: 8D 06 20  STA $2006
C - - - - - 0x01CF02 07:CEF2: AD 2A 06  LDA ram_061D_buffer + $0D
C - - - - - 0x01CF05 07:CEF5: 8D 07 20  STA $2007
C - - - - - 0x01CF08 07:CEF8: AD 2B 06  LDA ram_061D_buffer + $0E
C - - - - - 0x01CF0B 07:CEFB: 8D 07 20  STA $2007
C - - - - - 0x01CF0E 07:CEFE: AD 2C 06  LDA ram_061D_buffer + $0F
C - - - - - 0x01CF11 07:CF01: 8D 07 20  STA $2007
C - - - - - 0x01CF14 07:CF04: AD 2D 06  LDA ram_061D_buffer + $10
C - - - - - 0x01CF17 07:CF07: 8D 07 20  STA $2007
C - - - - - 0x01CF1A 07:CF0A: AD 2E 06  LDA ram_061D_buffer + $11
C - - - - - 0x01CF1D 07:CF0D: 8D 07 20  STA $2007
C - - - - - 0x01CF20 07:CF10: AD 2F 06  LDA ram_061D_buffer + $12
C - - - - - 0x01CF23 07:CF13: 8D 07 20  STA $2007
C - - - - - 0x01CF26 07:CF16: AD 30 06  LDA ram_061D_buffer + $13
C - - - - - 0x01CF29 07:CF19: 8D 07 20  STA $2007
C - - - - - 0x01CF2C 07:CF1C: AD 31 06  LDA ram_061D_buffer + $14
C - - - - - 0x01CF2F 07:CF1F: 8D 07 20  STA $2007
C - - - - - 0x01CF32 07:CF22: A2 07     LDX #$07
C - - - - - 0x01CF34 07:CF24: 20 5F C4  JSR sub_C45F_garbage_loop
C - - - - - 0x01CF37 07:CF27: EA        NOP
C - - - - - 0x01CF38 07:CF28: 60        RTS



ofs_003_CF29_02:
C - - J - - 0x01CF39 07:CF29: A5 10     LDA ram_for_2000
C - - - - - 0x01CF3B 07:CF2B: 29 FB     AND #$FB
C - - - - - 0x01CF3D 07:CF2D: 85 10     STA ram_for_2000
C - - - - - 0x01CF3F 07:CF2F: 8D 00 20  STA $2000
C - - - - - 0x01CF42 07:CF32: A9 20     LDA #> $2041
C - - - - - 0x01CF44 07:CF34: 8D 06 20  STA $2006
C - - - - - 0x01CF47 07:CF37: A9 41     LDA #< $2041
C - - - - - 0x01CF49 07:CF39: 8D 06 20  STA $2006
C - - - - - 0x01CF4C 07:CF3C: AD 1D 06  LDA ram_061D_buffer
C - - - - - 0x01CF4F 07:CF3F: 8D 07 20  STA $2007
C - - - - - 0x01CF52 07:CF42: AD 1E 06  LDA ram_061D_buffer + $01
C - - - - - 0x01CF55 07:CF45: 8D 07 20  STA $2007
C - - - - - 0x01CF58 07:CF48: AD 1F 06  LDA ram_061D_buffer + $02
C - - - - - 0x01CF5B 07:CF4B: 8D 07 20  STA $2007
C - - - - - 0x01CF5E 07:CF4E: AD 20 06  LDA ram_061D_buffer + $03
C - - - - - 0x01CF61 07:CF51: 8D 07 20  STA $2007
C - - - - - 0x01CF64 07:CF54: AD 21 06  LDA ram_061D_buffer + $04
C - - - - - 0x01CF67 07:CF57: 8D 07 20  STA $2007
C - - - - - 0x01CF6A 07:CF5A: A9 20     LDA #> $2061
C - - - - - 0x01CF6C 07:CF5C: 8D 06 20  STA $2006
C - - - - - 0x01CF6F 07:CF5F: A9 61     LDA #< $2061
C - - - - - 0x01CF71 07:CF61: 8D 06 20  STA $2006
C - - - - - 0x01CF74 07:CF64: AD 22 06  LDA ram_061D_buffer + $05
C - - - - - 0x01CF77 07:CF67: 8D 07 20  STA $2007
C - - - - - 0x01CF7A 07:CF6A: AD 23 06  LDA ram_061D_buffer + $06
C - - - - - 0x01CF7D 07:CF6D: 8D 07 20  STA $2007
C - - - - - 0x01CF80 07:CF70: AD 24 06  LDA ram_061D_buffer + $07
C - - - - - 0x01CF83 07:CF73: 8D 07 20  STA $2007
C - - - - - 0x01CF86 07:CF76: AD 25 06  LDA ram_061D_buffer + $08
C - - - - - 0x01CF89 07:CF79: 8D 07 20  STA $2007
C - - - - - 0x01CF8C 07:CF7C: AD 26 06  LDA ram_061D_buffer + $09
C - - - - - 0x01CF8F 07:CF7F: 8D 07 20  STA $2007
C - - - - - 0x01CF92 07:CF82: A9 23     LDA #> $23C2
C - - - - - 0x01CF94 07:CF84: 8D 06 20  STA $2006
C - - - - - 0x01CF97 07:CF87: A9 C2     LDA #< $23C2
C - - - - - 0x01CF99 07:CF89: 8D 06 20  STA $2006
C - - - - - 0x01CF9C 07:CF8C: AD 27 06  LDA ram_061D_buffer + $0A
C - - - - - 0x01CF9F 07:CF8F: 8D 07 20  STA $2007
C - - - - - 0x01CFA2 07:CF92: AD 28 06  LDA ram_061D_buffer + $0B
C - - - - - 0x01CFA5 07:CF95: 8D 07 20  STA $2007
C - - - - - 0x01CFA8 07:CF98: AD 29 06  LDA ram_061D_buffer + $0C
C - - - - - 0x01CFAB 07:CF9B: 8D 07 20  STA $2007
C - - - - - 0x01CFAE 07:CF9E: AD 2A 06  LDA ram_061D_buffer + $0D
C - - - - - 0x01CFB1 07:CFA1: 8D 07 20  STA $2007
C - - - - - 0x01CFB4 07:CFA4: A9 23     LDA #> $23CA
C - - - - - 0x01CFB6 07:CFA6: 8D 06 20  STA $2006
C - - - - - 0x01CFB9 07:CFA9: A9 CA     LDA #< $23CA
C - - - - - 0x01CFBB 07:CFAB: 8D 06 20  STA $2006
C - - - - - 0x01CFBE 07:CFAE: AD 2B 06  LDA ram_061D_buffer + $0E
C - - - - - 0x01CFC1 07:CFB1: 8D 07 20  STA $2007
C - - - - - 0x01CFC4 07:CFB4: AD 2C 06  LDA ram_061D_buffer + $0F
C - - - - - 0x01CFC7 07:CFB7: 8D 07 20  STA $2007
C - - - - - 0x01CFCA 07:CFBA: AD 2D 06  LDA ram_061D_buffer + $10
C - - - - - 0x01CFCD 07:CFBD: 8D 07 20  STA $2007
C - - - - - 0x01CFD0 07:CFC0: AD 2E 06  LDA ram_061D_buffer + $11
C - - - - - 0x01CFD3 07:CFC3: 8D 07 20  STA $2007
C - - - - - 0x01CFD6 07:CFC6: A2 06     LDX #$06
C - - - - - 0x01CFD8 07:CFC8: 20 5F C4  JSR sub_C45F_garbage_loop
C - - - - - 0x01CFDB 07:CFCB: EA        NOP
C - - - - - 0x01CFDC 07:CFCC: 60        RTS



ofs_003_CFCD_00_hud_message:
C - - J - - 0x01CFDD 07:CFCD: A5 10     LDA ram_for_2000
C - - - - - 0x01CFDF 07:CFCF: 29 FB     AND #$FB
C - - - - - 0x01CFE1 07:CFD1: 85 10     STA ram_for_2000
C - - - - - 0x01CFE3 07:CFD3: 8D 00 20  STA $2000
C - - - - - 0x01CFE6 07:CFD6: A9 20     LDA #> $20C3
C - - - - - 0x01CFE8 07:CFD8: 8D 06 20  STA $2006
C - - - - - 0x01CFEB 07:CFDB: A9 C3     LDA #< $20C3
C - - - - - 0x01CFED 07:CFDD: 8D 06 20  STA $2006
C - - - - - 0x01CFF0 07:CFE0: AD 1D 06  LDA ram_061D_buffer
C - - - - - 0x01CFF3 07:CFE3: 8D 07 20  STA $2007
C - - - - - 0x01CFF6 07:CFE6: AD 1E 06  LDA ram_061D_buffer + $01
C - - - - - 0x01CFF9 07:CFE9: 8D 07 20  STA $2007
C - - - - - 0x01CFFC 07:CFEC: AD 1F 06  LDA ram_061D_buffer + $02
C - - - - - 0x01CFFF 07:CFEF: 8D 07 20  STA $2007
C - - - - - 0x01D002 07:CFF2: AD 20 06  LDA ram_061D_buffer + $03
C - - - - - 0x01D005 07:CFF5: 8D 07 20  STA $2007
C - - - - - 0x01D008 07:CFF8: AD 21 06  LDA ram_061D_buffer + $04
C - - - - - 0x01D00B 07:CFFB: 8D 07 20  STA $2007
C - - - - - 0x01D00E 07:CFFE: AD 22 06  LDA ram_061D_buffer + $05
C - - - - - 0x01D011 07:D001: 8D 07 20  STA $2007
C - - - - - 0x01D014 07:D004: AD 23 06  LDA ram_061D_buffer + $06
C - - - - - 0x01D017 07:D007: 8D 07 20  STA $2007
C - - - - - 0x01D01A 07:D00A: AD 24 06  LDA ram_061D_buffer + $07
C - - - - - 0x01D01D 07:D00D: 8D 07 20  STA $2007
C - - - - - 0x01D020 07:D010: AD 25 06  LDA ram_061D_buffer + $08
C - - - - - 0x01D023 07:D013: 8D 07 20  STA $2007
C - - - - - 0x01D026 07:D016: AD 26 06  LDA ram_061D_buffer + $09
C - - - - - 0x01D029 07:D019: 8D 07 20  STA $2007
C - - - - - 0x01D02C 07:D01C: AD 27 06  LDA ram_061D_buffer + $0A
C - - - - - 0x01D02F 07:D01F: 8D 07 20  STA $2007
C - - - - - 0x01D032 07:D022: AD 28 06  LDA ram_061D_buffer + $0B
C - - - - - 0x01D035 07:D025: 8D 07 20  STA $2007
C - - - - - 0x01D038 07:D028: AD 29 06  LDA ram_061D_buffer + $0C
C - - - - - 0x01D03B 07:D02B: 8D 07 20  STA $2007
C - - - - - 0x01D03E 07:D02E: AD 2A 06  LDA ram_061D_buffer + $0D
C - - - - - 0x01D041 07:D031: 8D 07 20  STA $2007
C - - - - - 0x01D044 07:D034: AD 2B 06  LDA ram_061D_buffer + $0E
C - - - - - 0x01D047 07:D037: 8D 07 20  STA $2007
C - - - - - 0x01D04A 07:D03A: AD 2C 06  LDA ram_061D_buffer + $0F
C - - - - - 0x01D04D 07:D03D: 8D 07 20  STA $2007
C - - - - - 0x01D050 07:D040: AD 2D 06  LDA ram_061D_buffer + $10
C - - - - - 0x01D053 07:D043: 8D 07 20  STA $2007
C - - - - - 0x01D056 07:D046: AD 2E 06  LDA ram_061D_buffer + $11
C - - - - - 0x01D059 07:D049: 8D 07 20  STA $2007
C - - - - - 0x01D05C 07:D04C: AD 2F 06  LDA ram_061D_buffer + $12
C - - - - - 0x01D05F 07:D04F: 8D 07 20  STA $2007
C - - - - - 0x01D062 07:D052: AD 30 06  LDA ram_061D_buffer + $13
C - - - - - 0x01D065 07:D055: 8D 07 20  STA $2007
C - - - - - 0x01D068 07:D058: AD 31 06  LDA ram_061D_buffer + $14
C - - - - - 0x01D06B 07:D05B: 8D 07 20  STA $2007
C - - - - - 0x01D06E 07:D05E: AD 32 06  LDA ram_061D_buffer + $15
C - - - - - 0x01D071 07:D061: 8D 07 20  STA $2007
C - - - - - 0x01D074 07:D064: AD 33 06  LDA ram_061D_buffer + $16
C - - - - - 0x01D077 07:D067: 8D 07 20  STA $2007
C - - - - - 0x01D07A 07:D06A: AD 34 06  LDA ram_061D_buffer + $17
C - - - - - 0x01D07D 07:D06D: 8D 07 20  STA $2007
C - - - - - 0x01D080 07:D070: AD 35 06  LDA ram_061D_buffer + $18
C - - - - - 0x01D083 07:D073: 8D 07 20  STA $2007
C - - - - - 0x01D086 07:D076: AD 36 06  LDA ram_061D_buffer + $19
C - - - - - 0x01D089 07:D079: 8D 07 20  STA $2007
C - - - - - 0x01D08C 07:D07C: AD 37 06  LDA ram_061D_buffer + $1A
C - - - - - 0x01D08F 07:D07F: 8D 07 20  STA $2007
C - - - - - 0x01D092 07:D082: AD 38 06  LDA ram_061D_buffer + $1B
C - - - - - 0x01D095 07:D085: 8D 07 20  STA $2007
C - - - - - 0x01D098 07:D088: 60        RTS



ofs_003_D089_03:
C - - J - - 0x01D099 07:D089: A5 10     LDA ram_for_2000
C - - - - - 0x01D09B 07:D08B: 29 FB     AND #$FB
C - - - - - 0x01D09D 07:D08D: 85 10     STA ram_for_2000
C - - - - - 0x01D09F 07:D08F: 8D 00 20  STA $2000
C - - - - - 0x01D0A2 07:D092: A9 20     LDA #> $2058
C - - - - - 0x01D0A4 07:D094: 8D 06 20  STA $2006
C - - - - - 0x01D0A7 07:D097: A9 58     LDA #< $2058
C - - - - - 0x01D0A9 07:D099: 8D 06 20  STA $2006
C - - - - - 0x01D0AC 07:D09C: AD 1D 06  LDA ram_061D_buffer
C - - - - - 0x01D0AF 07:D09F: 8D 07 20  STA $2007
C - - - - - 0x01D0B2 07:D0A2: AD 1E 06  LDA ram_061D_buffer + $01
C - - - - - 0x01D0B5 07:D0A5: 8D 07 20  STA $2007
C - - - - - 0x01D0B8 07:D0A8: AD 1F 06  LDA ram_061D_buffer + $02
C - - - - - 0x01D0BB 07:D0AB: 8D 07 20  STA $2007
C - - - - - 0x01D0BE 07:D0AE: AD 20 06  LDA ram_061D_buffer + $03
C - - - - - 0x01D0C1 07:D0B1: 8D 07 20  STA $2007
C - - - - - 0x01D0C4 07:D0B4: AD 21 06  LDA ram_061D_buffer + $04
C - - - - - 0x01D0C7 07:D0B7: 8D 07 20  STA $2007
C - - - - - 0x01D0CA 07:D0BA: AD 22 06  LDA ram_061D_buffer + $05
C - - - - - 0x01D0CD 07:D0BD: 8D 07 20  STA $2007
C - - - - - 0x01D0D0 07:D0C0: AD 23 06  LDA ram_061D_buffer + $06
C - - - - - 0x01D0D3 07:D0C3: 8D 07 20  STA $2007
C - - - - - 0x01D0D6 07:D0C6: AD 24 06  LDA ram_061D_buffer + $07
C - - - - - 0x01D0D9 07:D0C9: 8D 07 20  STA $2007
C - - - - - 0x01D0DC 07:D0CC: A9 20     LDA #> $2078
C - - - - - 0x01D0DE 07:D0CE: 8D 06 20  STA $2006
C - - - - - 0x01D0E1 07:D0D1: A9 78     LDA #< $2078
C - - - - - 0x01D0E3 07:D0D3: 8D 06 20  STA $2006
C - - - - - 0x01D0E6 07:D0D6: AD 25 06  LDA ram_061D_buffer + $08
C - - - - - 0x01D0E9 07:D0D9: 8D 07 20  STA $2007
C - - - - - 0x01D0EC 07:D0DC: AD 26 06  LDA ram_061D_buffer + $09
C - - - - - 0x01D0EF 07:D0DF: 8D 07 20  STA $2007
C - - - - - 0x01D0F2 07:D0E2: AD 27 06  LDA ram_061D_buffer + $0A
C - - - - - 0x01D0F5 07:D0E5: 8D 07 20  STA $2007
C - - - - - 0x01D0F8 07:D0E8: AD 28 06  LDA ram_061D_buffer + $0B
C - - - - - 0x01D0FB 07:D0EB: 8D 07 20  STA $2007
C - - - - - 0x01D0FE 07:D0EE: AD 29 06  LDA ram_061D_buffer + $0C
C - - - - - 0x01D101 07:D0F1: 8D 07 20  STA $2007
C - - - - - 0x01D104 07:D0F4: AD 2A 06  LDA ram_061D_buffer + $0D
C - - - - - 0x01D107 07:D0F7: 8D 07 20  STA $2007
C - - - - - 0x01D10A 07:D0FA: AD 2B 06  LDA ram_061D_buffer + $0E
C - - - - - 0x01D10D 07:D0FD: 8D 07 20  STA $2007
C - - - - - 0x01D110 07:D100: AD 2C 06  LDA ram_061D_buffer + $0F
C - - - - - 0x01D113 07:D103: 8D 07 20  STA $2007
C - - - - - 0x01D116 07:D106: A9 23     LDA #> $23C6
C - - - - - 0x01D118 07:D108: 8D 06 20  STA $2006
C - - - - - 0x01D11B 07:D10B: A9 C6     LDA #< $23C6
C - - - - - 0x01D11D 07:D10D: 8D 06 20  STA $2006
C - - - - - 0x01D120 07:D110: AD 2D 06  LDA ram_061D_buffer + $10
C - - - - - 0x01D123 07:D113: 8D 07 20  STA $2007
C - - - - - 0x01D126 07:D116: AD 2E 06  LDA ram_061D_buffer + $11
C - - - - - 0x01D129 07:D119: 8D 07 20  STA $2007
C - - - - - 0x01D12C 07:D11C: A2 08     LDX #$08
C - - - - - 0x01D12E 07:D11E: 20 5F C4  JSR sub_C45F_garbage_loop
C - - - - - 0x01D131 07:D121: EA        NOP
C - - - - - 0x01D132 07:D122: EA        NOP
C - - - - - 0x01D133 07:D123: 60        RTS



sub_D124:
C - - - - - 0x01D134 07:D124: 86 EC     STX ram_00EC
C - - - - - 0x01D136 07:D126: 84 ED     STY ram_00ED
C - - - - - 0x01D138 07:D128: A0 00     LDY #$00
bra_D12A_loop:
C - - - - - 0x01D13A 07:D12A: A2 FF     LDX #$FF
C - - - - - 0x01D13C 07:D12C: 38        SEC
bra_D12D_loop:
C - - - - - 0x01D13D 07:D12D: E8        INX
C - - - - - 0x01D13E 07:D12E: A5 1E     LDA ram_001E
C - - - - - 0x01D140 07:D130: F9 59 D1  SBC tbl_D159,Y
C - - - - - 0x01D143 07:D133: 85 1E     STA ram_001E
C - - - - - 0x01D145 07:D135: A5 1F     LDA ram_001E + $01
C - - - - - 0x01D147 07:D137: F9 5E D1  SBC tbl_D15E,Y
C - - - - - 0x01D14A 07:D13A: 85 1F     STA ram_001E + $01
C - - - - - 0x01D14C 07:D13C: B0 EF     BCS bra_D12D_loop
C - - - - - 0x01D14E 07:D13E: A5 1E     LDA ram_001E
C - - - - - 0x01D150 07:D140: 79 59 D1  ADC tbl_D159,Y
C - - - - - 0x01D153 07:D143: 85 1E     STA ram_001E
C - - - - - 0x01D155 07:D145: A5 1F     LDA ram_001E + $01
C - - - - - 0x01D157 07:D147: 79 5E D1  ADC tbl_D15E,Y
C - - - - - 0x01D15A 07:D14A: 85 1F     STA ram_001E + $01
C - - - - - 0x01D15C 07:D14C: 8A        TXA
C - - - - - 0x01D15D 07:D14D: 18        CLC
C - - - - - 0x01D15E 07:D14E: 6D 3B 06  ADC ram_063B
C - - - - - 0x01D161 07:D151: 91 EC     STA (ram_00EC),Y
C - - - - - 0x01D163 07:D153: C8        INY
C - - - - - 0x01D164 07:D154: C0 05     CPY #$05
C - - - - - 0x01D166 07:D156: D0 D2     BNE bra_D12A_loop
C - - - - - 0x01D168 07:D158: 60        RTS



tbl_D159:
- D 2 - - - 0x01D169 07:D159: 10        .byte $10   ; 
- D 2 - - - 0x01D16A 07:D15A: E8        .byte $E8   ; 
- D 2 - - - 0x01D16B 07:D15B: 64        .byte $64   ; 
- D 2 - - - 0x01D16C 07:D15C: 0A        .byte $0A   ; 
- D 2 - - - 0x01D16D 07:D15D: 01        .byte $01   ; 



tbl_D15E:
- D 2 - - - 0x01D16E 07:D15E: 27        .byte $27   ; 
- D 2 - - - 0x01D16F 07:D15F: 03        .byte $03   ; 
- D 2 - - - 0x01D170 07:D160: 00        .byte $00   ; 
- D 2 - - - 0x01D171 07:D161: 00        .byte $00   ; 
- D 2 - - - 0x01D172 07:D162: 00        .byte $00   ; 



sub_D163_generate_random:
C - - - - - 0x01D173 07:D163: A2 03     LDX #$03
C - - - - - 0x01D175 07:D165: A5 37     LDA ram_random
bra_D167_loop:
C - - - - - 0x01D177 07:D167: 75 37     ADC ram_random,X
C - - - - - 0x01D179 07:D169: 95 37     STA ram_random,X
C - - - - - 0x01D17B 07:D16B: CA        DEX
C - - - - - 0x01D17C 07:D16C: 10 F9     BPL bra_D167_loop
C - - - - - 0x01D17E 07:D16E: 60        RTS


; bzk garbage
- - - - - - 0x01D17F 07:D16F: E6 03     INC ram_mission
- - - - - - 0x01D181 07:D171: 68        PLA
- - - - - - 0x01D182 07:D172: 68        PLA
- - - - - - 0x01D183 07:D173: 4C C8 C1  JMP loc_C1C8



sub_D176:
C - - - - - 0x01D186 07:D176: A9 FF     LDA #con_sound_FF
C - - - - - 0x01D188 07:D178: 85 47     STA ram_sound
C - - - - - 0x01D18A 07:D17A: 8D 5D 06  STA ram_065D
C - - - - - 0x01D18D 07:D17D: 20 4B D2  JSR sub_D24B_read_joy_regs
C - - - - - 0x01D190 07:D180: 20 B0 C2  JSR sub_C2B0
C - - - - - 0x01D193 07:D183: E6 42     INC ram_0042
C - - - - - 0x01D195 07:D185: A5 33     LDA ram_pause_flag
C - - - - - 0x01D197 07:D187: F0 17     BEQ bra_D1A0_not_paused
C - - - - - 0x01D199 07:D189: A5 00     LDA ram_buttons
C - - - - - 0x01D19B 07:D18B: 29 20     AND #con_btn1_Select
C - - - - - 0x01D19D 07:D18D: D0 00     BNE bra_D18F
bra_D18F:
C - - - - - 0x01D19F 07:D18F: A5 00     LDA ram_buttons
C - - - - - 0x01D1A1 07:D191: 29 10     AND #con_btn1_Start
C - - - - - 0x01D1A3 07:D193: F0 23     BEQ bra_D1B8
C - - - - - 0x01D1A5 07:D195: 25 02     AND ram_prev_buttons
C - - - - - 0x01D1A7 07:D197: D0 1F     BNE bra_D1B8
C - - - - - 0x01D1A9 07:D199: A9 00     LDA #$00    ; pause OFF
C - - - - - 0x01D1AB 07:D19B: 85 33     STA ram_pause_flag
C - - - - - 0x01D1AD 07:D19D: 4C B8 D1  JMP loc_D1B8
bra_D1A0_not_paused:
C - - - - - 0x01D1B0 07:D1A0: 20 EB DA  JSR sub_DAEB
C - - - - - 0x01D1B3 07:D1A3: 20 D4 F1  JSR sub_F1D4
C - - - - - 0x01D1B6 07:D1A6: 20 6C D2  JSR sub_D26C
C - - - - - 0x01D1B9 07:D1A9: A5 91     LDA ram_pos_Y_lo
C - - - - - 0x01D1BB 07:D1AB: 29 F0     AND #$F0
C - - - - - 0x01D1BD 07:D1AD: 85 34     STA ram_0034
C - - - - - 0x01D1BF 07:D1AF: 20 F9 C6  JSR sub_C6F9
C - - - - - 0x01D1C2 07:D1B2: 20 2D F3  JSR sub_F32D
C - - - - - 0x01D1C5 07:D1B5: 20 46 DF  JSR sub_DF46
bra_D1B8:
loc_D1B8:
C D 2 - - - 0x01D1C8 07:D1B8: A5 03     LDA ram_mission
C - - - - - 0x01D1CA 07:D1BA: C9 04     CMP #$04
C - - - - - 0x01D1CC 07:D1BC: D0 06     BNE bra_D1C4
C - - - - - 0x01D1CE 07:D1BE: AD 02 20  LDA $2002
C - - - - - 0x01D1D1 07:D1C1: 4C CB D1  JMP loc_D1CB
bra_D1C4:
bra_D1C4_infinite_loop:
C - - - - - 0x01D1D4 07:D1C4: AD 02 20  LDA $2002
C - - - - - 0x01D1D7 07:D1C7: 29 C0     AND #$C0
C - - - - - 0x01D1D9 07:D1C9: F0 F9     BEQ bra_D1C4_infinite_loop
loc_D1CB:
C D 2 - - - 0x01D1DB 07:D1CB: A5 2A     LDA ram_002A_copy_chr_bank
C - - - - - 0x01D1DD 07:D1CD: 20 3B F9  JSR sub_F93B_chr_spr_bankswitch
C - - - - - 0x01D1E0 07:D1D0: 20 09 EF  JSR sub_EF09
C - - - - - 0x01D1E3 07:D1D3: A0 06     LDY #con_prg_bank + $06
C - - - - - 0x01D1E5 07:D1D5: 20 54 F9  JSR sub_F954_prg_bankswitch
C - - - - - 0x01D1E8 07:D1D8: A5 33     LDA ram_pause_flag
C - - - - - 0x01D1EA 07:D1DA: D0 21     BNE bra_D1FD_paused
C - - - - - 0x01D1EC 07:D1DC: 20 F9 C8  JSR sub_C8F9_prepare_hud_info_for_ppu
C - - - - - 0x01D1EF 07:D1DF: 20 9D E0  JSR sub_E09D_enemies_handler
C - - - - - 0x01D1F2 07:D1E2: 20 59 F5  JSR sub_F559
C - - - - - 0x01D1F5 07:D1E5: 20 A5 DD  JSR sub_DDA5
C - - - - - 0x01D1F8 07:D1E8: 20 D5 EC  JSR sub_ECD5
C - - - - - 0x01D1FB 07:D1EB: 20 46 EF  JSR sub_EF46
C - - - - - 0x01D1FE 07:D1EE: 20 DE C8  JSR sub_C8DE
C - - - - - 0x01D201 07:D1F1: 20 DE DA  JSR sub_DADE
C - - - - - 0x01D204 07:D1F4: 20 8B F7  JSR sub_F78B_play_sound_if_allowed
C - - - - - 0x01D207 07:D1F7: 20 09 D2  JSR sub_D209
C - - - - - 0x01D20A 07:D1FA: 20 2D D2  JSR sub_D22D
bra_D1FD_paused:
C - - - - - 0x01D20D 07:D1FD: 20 05 F9  JSR sub_F905
C - - - - - 0x01D210 07:D200: A6 03     LDX ram_mission
C - - - - - 0x01D212 07:D202: BC 39 FC  LDY tbl_FC39_prg_bank_for_mission,X
C - - - - - 0x01D215 07:D205: 20 54 F9  JSR sub_F954_prg_bankswitch
C - - - - - 0x01D218 07:D208: 60        RTS



sub_D209:
C - - - - - 0x01D219 07:D209: AD 80 06  LDA ram_0680
C - - - - - 0x01D21C 07:D20C: D0 1E     BNE bra_D22C_RTS
C - - - - - 0x01D21E 07:D20E: AD 7F 06  LDA ram_067F
C - - - - - 0x01D221 07:D211: F0 19     BEQ bra_D22C_RTS
C - - - - - 0x01D223 07:D213: A5 51     LDA ram_0050_obj_flags + $01
C - - - - - 0x01D225 07:D215: 05 52     ORA ram_0050_obj_flags + $02
C - - - - - 0x01D227 07:D217: 05 53     ORA ram_0050_obj_flags + $03
C - - - - - 0x01D229 07:D219: D0 11     BNE bra_D22C_RTS
C - - - - - 0x01D22B 07:D21B: AD 7E 06  LDA ram_067E
C - - - - - 0x01D22E 07:D21E: D0 0C     BNE bra_D22C_RTS
C - - - - - 0x01D230 07:D220: AD 3E 06  LDA ram_robocop_hp
C - - - - - 0x01D233 07:D223: F0 07     BEQ bra_D22C_RTS
C - - - - - 0x01D235 07:D225: E6 03     INC ram_mission
C - - - - - 0x01D237 07:D227: 68        PLA
C - - - - - 0x01D238 07:D228: 68        PLA
C - - - - - 0x01D239 07:D229: 4C C8 C1  JMP loc_C1C8
bra_D22C_RTS:
C - - - - - 0x01D23C 07:D22C: 60        RTS



sub_D22D:
C - - - - - 0x01D23D 07:D22D: AD 45 06  LDA ram_0645
C - - - - - 0x01D240 07:D230: 10 08     BPL bra_D23A
C - - - - - 0x01D242 07:D232: AD 65 06  LDA ram_0665
C - - - - - 0x01D245 07:D235: 29 30     AND #$30
C - - - - - 0x01D247 07:D237: D0 01     BNE bra_D23A
C - - - - - 0x01D249 07:D239: 60        RTS
bra_D23A:
C - - - - - 0x01D24A 07:D23A: CE 45 06  DEC ram_0645
C - - - - - 0x01D24D 07:D23D: A0 0F     LDY #$0F
bra_D23F_loop:
C - - - - - 0x01D24F 07:D23F: B9 65 06  LDA ram_0665,Y
C - - - - - 0x01D252 07:D242: 49 30     EOR #$30
C - - - - - 0x01D254 07:D244: 99 65 06  STA ram_0665,Y
C - - - - - 0x01D257 07:D247: 88        DEY
C - - - - - 0x01D258 07:D248: 10 F5     BPL bra_D23F_loop
C - - - - - 0x01D25A 07:D24A: 60        RTS



sub_D24B_read_joy_regs:
C - - - - - 0x01D25B 07:D24B: A5 00     LDA ram_buttons
C - - - - - 0x01D25D 07:D24D: 85 02     STA ram_prev_buttons
C - - - - - 0x01D25F 07:D24F: A0 01     LDY #$01
C - - - - - 0x01D261 07:D251: 8C 16 40  STY $4016
C - - - - - 0x01D264 07:D254: 88        DEY ; 00
C - - - - - 0x01D265 07:D255: 8C 16 40  STY $4016
C - - - - - 0x01D268 07:D258: A0 08     LDY #$08
bra_D25A_loop:
C - - - - - 0x01D26A 07:D25A: 48        PHA
C - - - - - 0x01D26B 07:D25B: AD 16 40  LDA $4016
C - - - - - 0x01D26E 07:D25E: 85 44     STA ram_0044
C - - - - - 0x01D270 07:D260: 4A        LSR
C - - - - - 0x01D271 07:D261: 05 44     ORA ram_0044
C - - - - - 0x01D273 07:D263: 4A        LSR
C - - - - - 0x01D274 07:D264: 68        PLA
C - - - - - 0x01D275 07:D265: 2A        ROL
C - - - - - 0x01D276 07:D266: 88        DEY
C - - - - - 0x01D277 07:D267: D0 F1     BNE bra_D25A_loop
C - - - - - 0x01D279 07:D269: 85 00     STA ram_buttons
C - - - - - 0x01D27B 07:D26B: 60        RTS



sub_D26C:
C - - - - - 0x01D27C 07:D26C: A5 91     LDA ram_pos_Y_lo
C - - - - - 0x01D27E 07:D26E: C9 F0     CMP #$F0
C - - - - - 0x01D280 07:D270: B0 0A     BCS bra_D27C
C - - - - - 0x01D282 07:D272: C9 E0     CMP #$E0
C - - - - - 0x01D284 07:D274: 90 06     BCC bra_D27C
C - - - - - 0x01D286 07:D276: A9 FF     LDA #$FF
C - - - - - 0x01D288 07:D278: 8D 7E 06  STA ram_067E
C - - - - - 0x01D28B 07:D27B: 60        RTS
bra_D27C:
C - - - - - 0x01D28C 07:D27C: A5 03     LDA ram_mission
C - - - - - 0x01D28E 07:D27E: C9 02     CMP #$02
C - - - - - 0x01D290 07:D280: D0 03     BNE bra_D285
C - - - - - 0x01D292 07:D282: 4C 39 D7  JMP loc_D739
bra_D285:
C - - - - - 0x01D295 07:D285: AD 83 06  LDA ram_0683
C - - - - - 0x01D298 07:D288: C9 0C     CMP #$0C
C - - - - - 0x01D29A 07:D28A: 90 04     BCC bra_D290
C - - - - - 0x01D29C 07:D28C: A9 08     LDA #con_btn1_Up
C - - - - - 0x01D29E 07:D28E: 85 00     STA ram_buttons
bra_D290:
C - - - - - 0x01D2A0 07:D290: A9 00     LDA #$00
C - - - - - 0x01D2A2 07:D292: 8D 86 06  STA ram_0686
C - - - - - 0x01D2A5 07:D295: AD 3E 06  LDA ram_robocop_hp
C - - - - - 0x01D2A8 07:D298: D0 0C     BNE bra_D2A6
C - - - - - 0x01D2AA 07:D29A: A9 00     LDA #$00
C - - - - - 0x01D2AC 07:D29C: 85 00     STA ram_buttons
C - - - - - 0x01D2AE 07:D29E: A5 17     LDA ram_0017
C - - - - - 0x01D2B0 07:D2A0: D0 04     BNE bra_D2A6
C - - - - - 0x01D2B2 07:D2A2: 20 C4 D6  JSR sub_D6C4
C - - - - - 0x01D2B5 07:D2A5: 60        RTS
bra_D2A6:
C - - - - - 0x01D2B6 07:D2A6: A5 36     LDA ram_0036
C - - - - - 0x01D2B8 07:D2A8: C9 02     CMP #$02
C - - - - - 0x01D2BA 07:D2AA: D0 1E     BNE bra_D2CA
C - - - - - 0x01D2BC 07:D2AC: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01D2BE 07:D2AE: C5 32     CMP ram_0032
C - - - - - 0x01D2C0 07:D2B0: F0 14     BEQ bra_D2C6
C - - - - - 0x01D2C2 07:D2B2: A6 15     LDX ram_limit_scroll_X
C - - - - - 0x01D2C4 07:D2B4: E0 74     CPX #$74
C - - - - - 0x01D2C6 07:D2B6: 90 0E     BCC bra_D2C6
- - - - - - 0x01D2C8 07:D2B8: C6 15     DEC ram_limit_scroll_X
- - - - - - 0x01D2CA 07:D2BA: A5 00     LDA ram_buttons
- - - - - - 0x01D2CC 07:D2BC: 29 FC     AND #con_btns1_LR ^ $FF
- - - - - - 0x01D2CE 07:D2BE: 85 00     STA ram_buttons
- - - - - - 0x01D2D0 07:D2C0: 20 FD D5  JSR sub_D5FD
- - - - - - 0x01D2D3 07:D2C3: 4C CA D2  JMP loc_D2CA
bra_D2C6:
C - - - - - 0x01D2D6 07:D2C6: A9 00     LDA #$00
C - - - - - 0x01D2D8 07:D2C8: 85 36     STA ram_0036
bra_D2CA:
loc_D2CA:
C - - - - - 0x01D2DA 07:D2CA: A0 00     LDY #$00
C - - - - - 0x01D2DC 07:D2CC: 84 E2     STY ram_00E2
C - - - - - 0x01D2DE 07:D2CE: A2 00     LDX #$00
C - - - - - 0x01D2E0 07:D2D0: A5 50     LDA ram_0050_obj_flags
C - - - - - 0x01D2E2 07:D2D2: 29 DF     AND #$DF
C - - - - - 0x01D2E4 07:D2D4: A4 03     LDY ram_mission
C - - - - - 0x01D2E6 07:D2D6: C0 01     CPY #$01
C - - - - - 0x01D2E8 07:D2D8: D0 1A     BNE bra_D2F4
C - - - - - 0x01D2EA 07:D2DA: A4 91     LDY ram_pos_Y_lo
C - - - - - 0x01D2EC 07:D2DC: C0 DC     CPY #$DC
C - - - - - 0x01D2EE 07:D2DE: B0 14     BCS bra_D2F4
C - - - - - 0x01D2F0 07:D2E0: C0 BC     CPY #$BC
C - - - - - 0x01D2F2 07:D2E2: 90 10     BCC bra_D2F4
C - - - - - 0x01D2F4 07:D2E4: 09 20     ORA #$20
C - - - - - 0x01D2F6 07:D2E6: A4 43     LDY ram_0043
C - - - - - 0x01D2F8 07:D2E8: 84 E2     STY ram_00E2
C - - - - - 0x01D2FA 07:D2EA: D0 06     BNE bra_D2F2
C - - - - - 0x01D2FC 07:D2EC: A0 0D     LDY #con_sound_0D
C - - - - - 0x01D2FE 07:D2EE: 84 47     STY ram_sound
C - - - - - 0x01D300 07:D2F0: 84 E2     STY ram_00E2
bra_D2F2:
C - - - - - 0x01D302 07:D2F2: A2 7A     LDX #$7A
bra_D2F4:
C - - - - - 0x01D304 07:D2F4: A4 E2     LDY ram_00E2
C - - - - - 0x01D306 07:D2F6: 84 43     STY ram_0043
C - - - - - 0x01D308 07:D2F8: 85 50     STA ram_0050_obj_flags
C - - - - - 0x01D30A 07:D2FA: 86 35     STX ram_0035
C - - - - - 0x01D30C 07:D2FC: A0 01     LDY #$01
C - - - - - 0x01D30E 07:D2FE: A5 00     LDA ram_buttons
C - - - - - 0x01D310 07:D300: 29 03     AND #con_btns1_LR
C - - - - - 0x01D312 07:D302: 85 E2     STA ram_00E2
C - - - - - 0x01D314 07:D304: A5 02     LDA ram_prev_buttons
C - - - - - 0x01D316 07:D306: 29 03     AND #con_btns1_LR
C - - - - - 0x01D318 07:D308: C5 E2     CMP ram_00E2
C - - - - - 0x01D31A 07:D30A: F0 02     BEQ bra_D30E
C - - - - - 0x01D31C 07:D30C: A0 08     LDY #$08
bra_D30E:
C - - - - - 0x01D31E 07:D30E: 8C 54 06  STY ram_0654
C - - - - - 0x01D321 07:D311: AD 56 06  LDA ram_0656
C - - - - - 0x01D324 07:D314: F0 06     BEQ bra_D31C
C - - - - - 0x01D326 07:D316: CE 56 06  DEC ram_0656
C - - - - - 0x01D329 07:D319: 4C 2D D3  JMP loc_D32D
bra_D31C:
C - - - - - 0x01D32C 07:D31C: A0 00     LDY #$00
C - - - - - 0x01D32E 07:D31E: A5 4C     LDA ram_004C
C - - - - - 0x01D330 07:D320: C9 0A     CMP #$0A
C - - - - - 0x01D332 07:D322: D0 02     BNE bra_D326
C - - - - - 0x01D334 07:D324: A0 05     LDY #$05
bra_D326:
C - - - - - 0x01D336 07:D326: 84 4C     STY ram_004C
C - - - - - 0x01D338 07:D328: A9 10     LDA #$10
C - - - - - 0x01D33A 07:D32A: 8D 56 06  STA ram_0656
loc_D32D:
C D 2 - - - 0x01D33D 07:D32D: A5 17     LDA ram_0017
C - - - - - 0x01D33F 07:D32F: 29 01     AND #$01
C - - - - - 0x01D341 07:D331: D0 03     BNE bra_D336
C - - - - - 0x01D343 07:D333: 4C C4 D3  JMP loc_D3C4
bra_D336:
C - - - - - 0x01D346 07:D336: A5 35     LDA ram_0035
C - - - - - 0x01D348 07:D338: D0 0C     BNE bra_D346
C - - - - - 0x01D34A 07:D33A: A5 40     LDA ram_0040
C - - - - - 0x01D34C 07:D33C: F0 08     BEQ bra_D346
C - - - - - 0x01D34E 07:D33E: A5 00     LDA ram_buttons
C - - - - - 0x01D350 07:D340: 29 FC     AND #con_btns1_LR ^ $FF
C - - - - - 0x01D352 07:D342: 05 40     ORA ram_0040
C - - - - - 0x01D354 07:D344: 85 00     STA ram_buttons
bra_D346:
C - - - - - 0x01D356 07:D346: A9 00     LDA #$00
C - - - - - 0x01D358 07:D348: 85 49     STA ram_0049
C - - - - - 0x01D35A 07:D34A: A4 4C     LDY ram_004C
C - - - - - 0x01D35C 07:D34C: C0 0A     CPY #$0A
C - - - - - 0x01D35E 07:D34E: D0 02     BNE bra_D352
C - - - - - 0x01D360 07:D350: A9 01     LDA #$01
bra_D352:
C - - - - - 0x01D362 07:D352: 18        CLC
C - - - - - 0x01D363 07:D353: 69 23     ADC #$23
C - - - - - 0x01D365 07:D355: 85 5D     STA ram_obj_anim_id
C - - - - - 0x01D367 07:D357: AD 68 03  LDA ram_0368_obj
C - - - - - 0x01D36A 07:D35A: 10 03     BPL bra_D35F
C - - - - - 0x01D36C 07:D35C: 4C 14 D5  JMP loc_D514
bra_D35F:
C - - - - - 0x01D36F 07:D35F: A5 03     LDA ram_mission
C - - - - - 0x01D371 07:D361: C9 01     CMP #$01
C - - - - - 0x01D373 07:D363: D0 23     BNE bra_D388
C - - - - - 0x01D375 07:D365: A5 91     LDA ram_pos_Y_lo
C - - - - - 0x01D377 07:D367: C9 D2     CMP #$D2
C - - - - - 0x01D379 07:D369: B0 1D     BCS bra_D388
C - - - - - 0x01D37B 07:D36B: C9 BC     CMP #$BC
C - - - - - 0x01D37D 07:D36D: 90 19     BCC bra_D388
C - - - - - 0x01D37F 07:D36F: A9 BC     LDA #$BC
C - - - - - 0x01D381 07:D371: 85 91     STA ram_pos_Y_lo
C - - - - - 0x01D383 07:D373: A5 9E     LDA ram_009E_obj
C - - - - - 0x01D385 07:D375: 09 01     ORA #$01
C - - - - - 0x01D387 07:D377: 85 9E     STA ram_009E_obj
C - - - - - 0x01D389 07:D379: 85 AB     STA ram_00AB_obj
C - - - - - 0x01D38B 07:D37B: A9 00     LDA #$00
C - - - - - 0x01D38D 07:D37D: 8D 68 03  STA ram_0368_obj
C - - - - - 0x01D390 07:D380: 8D 75 03  STA ram_0375_obj
C - - - - - 0x01D393 07:D383: 85 17     STA ram_0017
C - - - - - 0x01D395 07:D385: 4C CD D3  JMP loc_D3CD
bra_D388:
C - - - - - 0x01D398 07:D388: A9 00     LDA #$00
C - - - - - 0x01D39A 07:D38A: 85 35     STA ram_0035
C - - - - - 0x01D39C 07:D38C: A5 91     LDA ram_pos_Y_lo
C - - - - - 0x01D39E 07:D38E: 29 F0     AND #$F0
C - - - - - 0x01D3A0 07:D390: 85 E2     STA ram_00E2
C - - - - - 0x01D3A2 07:D392: A5 34     LDA ram_0034
C - - - - - 0x01D3A4 07:D394: C5 E2     CMP ram_00E2
C - - - - - 0x01D3A6 07:D396: 90 03     BCC bra_D39B
C - - - - - 0x01D3A8 07:D398: 4C 14 D5  JMP loc_D514
bra_D39B:
C - - - - - 0x01D3AB 07:D39B: A5 AB     LDA ram_00AB_obj
C - - - - - 0x01D3AD 07:D39D: 05 9E     ORA ram_009E_obj
C - - - - - 0x01D3AF 07:D39F: 29 01     AND #$01
C - - - - - 0x01D3B1 07:D3A1: D0 03     BNE bra_D3A6
C - - - - - 0x01D3B3 07:D3A3: 4C 14 D5  JMP loc_D514
bra_D3A6:
C - - - - - 0x01D3B6 07:D3A6: A5 91     LDA ram_pos_Y_lo
C - - - - - 0x01D3B8 07:D3A8: 29 F0     AND #$F0
C - - - - - 0x01D3BA 07:D3AA: 85 91     STA ram_pos_Y_lo
C - - - - - 0x01D3BC 07:D3AC: A9 00     LDA #$00
C - - - - - 0x01D3BE 07:D3AE: 8D 68 03  STA ram_0368_obj
C - - - - - 0x01D3C1 07:D3B1: 8D 75 03  STA ram_0375_obj
C - - - - - 0x01D3C4 07:D3B4: A9 02     LDA #$02
C - - - - - 0x01D3C6 07:D3B6: 85 17     STA ram_0017
C - - - - - 0x01D3C8 07:D3B8: A9 08     LDA #$08
C - - - - - 0x01D3CA 07:D3BA: 8D 9C 03  STA ram_039C_obj
C - - - - - 0x01D3CD 07:D3BD: A9 0C     LDA #con_sound_0C
C - - - - - 0x01D3CF 07:D3BF: 85 47     STA ram_sound
C - - - - - 0x01D3D1 07:D3C1: 4C 02 D4  JMP loc_D402



loc_D3C4:
C D 2 - - - 0x01D3D4 07:D3C4: 20 56 DA  JSR sub_DA56
C - - - - - 0x01D3D7 07:D3C7: A5 17     LDA ram_0017
C - - - - - 0x01D3D9 07:D3C9: 29 02     AND #$02
C - - - - - 0x01D3DB 07:D3CB: D0 09     BNE bra_D3D6
loc_D3CD:
C D 2 - - - 0x01D3DD 07:D3CD: A5 00     LDA ram_buttons
C - - - - - 0x01D3DF 07:D3CF: C9 04     CMP #con_btn1_Down
C - - - - - 0x01D3E1 07:D3D1: F0 1F     BEQ bra_D3F2
C - - - - - 0x01D3E3 07:D3D3: 4C 1F D4  JMP loc_D41F
bra_D3D6:
C - - - - - 0x01D3E6 07:D3D6: A5 9E     LDA ram_009E_obj
C - - - - - 0x01D3E8 07:D3D8: 05 AB     ORA ram_00AB_obj
C - - - - - 0x01D3EA 07:D3DA: 29 01     AND #$01
C - - - - - 0x01D3EC 07:D3DC: F0 49     BEQ bra_D427
C - - - - - 0x01D3EE 07:D3DE: A5 00     LDA ram_buttons
C - - - - - 0x01D3F0 07:D3E0: 29 04     AND #con_btn1_Down
C - - - - - 0x01D3F2 07:D3E2: D0 0E     BNE bra_D3F2
C - - - - - 0x01D3F4 07:D3E4: CE 9C 03  DEC ram_039C_obj
C - - - - - 0x01D3F7 07:D3E7: D0 19     BNE bra_D402
C - - - - - 0x01D3F9 07:D3E9: A5 17     LDA ram_0017
C - - - - - 0x01D3FB 07:D3EB: 29 FD     AND #$FD
C - - - - - 0x01D3FD 07:D3ED: 85 17     STA ram_0017
C - - - - - 0x01D3FF 07:D3EF: 4C 14 D5  JMP loc_D514
bra_D3F2:
C - - - - - 0x01D402 07:D3F2: A5 17     LDA ram_0017
C - - - - - 0x01D404 07:D3F4: 09 02     ORA #$02
C - - - - - 0x01D406 07:D3F6: 85 17     STA ram_0017
C - - - - - 0x01D408 07:D3F8: AD 9C 03  LDA ram_039C_obj
C - - - - - 0x01D40B 07:D3FB: C9 09     CMP #$09
C - - - - - 0x01D40D 07:D3FD: B0 03     BCS bra_D402
C - - - - - 0x01D40F 07:D3FF: EE 9C 03  INC ram_039C_obj
bra_D402:
loc_D402:
C D 2 - - - 0x01D412 07:D402: A5 4C     LDA ram_004C
C - - - - - 0x01D414 07:D404: C9 0A     CMP #$0A
C - - - - - 0x01D416 07:D406: 08        PHP
C - - - - - 0x01D417 07:D407: 84 E2     STY ram_00E2
C - - - - - 0x01D419 07:D409: AD 9C 03  LDA ram_039C_obj
C - - - - - 0x01D41C 07:D40C: 4A        LSR
C - - - - - 0x01D41D 07:D40D: 4A        LSR
C - - - - - 0x01D41E 07:D40E: 28        PLP
C - - - - - 0x01D41F 07:D40F: 69 26     ADC #$26
C - - - - - 0x01D421 07:D411: 85 5D     STA ram_obj_anim_id
C - - - - - 0x01D423 07:D413: A9 00     LDA #$00
C - - - - - 0x01D425 07:D415: 85 49     STA ram_0049
C - - - - - 0x01D427 07:D417: A9 1A     LDA #$1A
C - - - - - 0x01D429 07:D419: 8D 57 06  STA ram_0657
C - - - - - 0x01D42C 07:D41C: 4C 14 D5  JMP loc_D514



loc_D41F:
C D 2 - - - 0x01D42F 07:D41F: A5 9E     LDA ram_009E_obj
C - - - - - 0x01D431 07:D421: 05 AB     ORA ram_00AB_obj
C - - - - - 0x01D433 07:D423: 29 01     AND #$01
C - - - - - 0x01D435 07:D425: D0 1E     BNE bra_D445
bra_D427:
C - - - - - 0x01D437 07:D427: A9 08     LDA #$08
C - - - - - 0x01D439 07:D429: 8D 75 03  STA ram_0375_obj
C - - - - - 0x01D43C 07:D42C: A5 17     LDA ram_0017
C - - - - - 0x01D43E 07:D42E: 09 01     ORA #$01
C - - - - - 0x01D440 07:D430: 85 17     STA ram_0017
C - - - - - 0x01D442 07:D432: A9 F0     LDA #$F0
C - - - - - 0x01D444 07:D434: 85 34     STA ram_0034
C - - - - - 0x01D446 07:D436: A0 02     LDY #con_btn1_Left
C - - - - - 0x01D448 07:D438: A5 50     LDA ram_0050_obj_flags
C - - - - - 0x01D44A 07:D43A: 29 40     AND #$40    ; con_btn1_B ?
C - - - - - 0x01D44C 07:D43C: F0 02     BEQ bra_D440
C - - - - - 0x01D44E 07:D43E: A0 01     LDY #con_btn1_Right
bra_D440:
C - - - - - 0x01D450 07:D440: 84 40     STY ram_0040
C - - - - - 0x01D452 07:D442: 4C 14 D5  JMP loc_D514
bra_D445:
C - - - - - 0x01D455 07:D445: A9 00     LDA #$00
C - - - - - 0x01D457 07:D447: 85 17     STA ram_0017
C - - - - - 0x01D459 07:D449: A9 0A     LDA #$0A
C - - - - - 0x01D45B 07:D44B: 8D 57 06  STA ram_0657
C - - - - - 0x01D45E 07:D44E: A9 00     LDA #$00
C - - - - - 0x01D460 07:D450: 85 49     STA ram_0049
C - - - - - 0x01D462 07:D452: A5 00     LDA ram_buttons
C - - - - - 0x01D464 07:D454: 29 8F     AND #con_btn1_A + con_btns1_Dpad
C - - - - - 0x01D466 07:D456: D0 0C     BNE bra_D464
C - - - - - 0x01D468 07:D458: 85 4A     STA ram_004A
C - - - - - 0x01D46A 07:D45A: 18        CLC
C - - - - - 0x01D46B 07:D45B: A9 18     LDA #$18
C - - - - - 0x01D46D 07:D45D: 65 4C     ADC ram_004C
C - - - - - 0x01D46F 07:D45F: 85 5D     STA ram_obj_anim_id
C - - - - - 0x01D471 07:D461: 4C 14 D5  JMP loc_D514
bra_D464:
C - - - - - 0x01D474 07:D464: A5 00     LDA ram_buttons
C - - - - - 0x01D476 07:D466: 29 83     AND #con_btn1_A + con_btns1_LR
C - - - - - 0x01D478 07:D468: D0 70     BNE bra_D4DA
C - - - - - 0x01D47A 07:D46A: A5 00     LDA ram_buttons
C - - - - - 0x01D47C 07:D46C: 29 08     AND #con_btn1_Up
C - - - - - 0x01D47E 07:D46E: F0 48     BEQ bra_D4B8
C - - - - - 0x01D480 07:D470: AD 64 06  LDA ram_0664
C - - - - - 0x01D483 07:D473: F0 27     BEQ bra_D49C
C - - - - - 0x01D485 07:D475: A9 25     LDA #$25
C - - - - - 0x01D487 07:D477: 85 5D     STA ram_obj_anim_id
C - - - - - 0x01D489 07:D479: A5 03     LDA ram_mission
C - - - - - 0x01D48B 07:D47B: C9 04     CMP #$04
C - - - - - 0x01D48D 07:D47D: D0 08     BNE bra_D487
C - - - - - 0x01D48F 07:D47F: A9 01     LDA #$01
C - - - - - 0x01D491 07:D481: 8D 86 06  STA ram_0686
C - - - - - 0x01D494 07:D484: 4C 9B D4  JMP loc_D49B_RTS
bra_D487:
C - - - - - 0x01D497 07:D487: C6 41     DEC ram_0041
C - - - - - 0x01D499 07:D489: 10 10     BPL bra_D49B_RTS
C - - - - - 0x01D49B 07:D48B: E6 1B     INC ram_001B
C - - - - - 0x01D49D 07:D48D: 68        PLA
C - - - - - 0x01D49E 07:D48E: 68        PLA
C - - - - - 0x01D49F 07:D48F: A5 03     LDA ram_mission
C - - - - - 0x01D4A1 07:D491: C9 03     CMP #$03
C - - - - - 0x01D4A3 07:D493: F0 03     BEQ bra_D498
C - - - - - 0x01D4A5 07:D495: 4C D6 C0  JMP loc_C0D6
bra_D498:
C - - - - - 0x01D4A8 07:D498: 4C 38 C2  JMP loc_C238
bra_D49B_RTS:
loc_D49B_RTS:   ; bzk optimize
C D 2 - - - 0x01D4AB 07:D49B: 60        RTS
bra_D49C:
C - - - - - 0x01D4AC 07:D49C: A9 FC     LDA #$FC
C - - - - - 0x01D4AE 07:D49E: 85 49     STA ram_0049
C - - - - - 0x01D4B0 07:D4A0: A5 4C     LDA ram_004C
C - - - - - 0x01D4B2 07:D4A2: C9 0A     CMP #$0A
C - - - - - 0x01D4B4 07:D4A4: A9 00     LDA #$00
C - - - - - 0x01D4B6 07:D4A6: 69 2A     ADC #$2A
C - - - - - 0x01D4B8 07:D4A8: 85 5D     STA ram_obj_anim_id
C - - - - - 0x01D4BA 07:D4AA: A9 FD     LDA #$FD
C - - - - - 0x01D4BC 07:D4AC: 8D 57 06  STA ram_0657
C - - - - - 0x01D4BF 07:D4AF: A5 00     LDA ram_buttons
C - - - - - 0x01D4C1 07:D4B1: 29 FC     AND #con_btns1_LR ^ $FF
C - - - - - 0x01D4C3 07:D4B3: 85 00     STA ram_buttons
C - - - - - 0x01D4C5 07:D4B5: 4C 14 D5  JMP loc_D514
bra_D4B8:
C - - - - - 0x01D4C8 07:D4B8: A5 00     LDA ram_buttons
C - - - - - 0x01D4CA 07:D4BA: 29 04     AND #con_btn1_Down
C - - - - - 0x01D4CC 07:D4BC: F0 1C     BEQ bra_D4DA
C - - - - - 0x01D4CE 07:D4BE: A9 04     LDA #$04
C - - - - - 0x01D4D0 07:D4C0: 85 49     STA ram_0049
C - - - - - 0x01D4D2 07:D4C2: A5 4C     LDA ram_004C
C - - - - - 0x01D4D4 07:D4C4: C9 0A     CMP #$0A
C - - - - - 0x01D4D6 07:D4C6: A9 00     LDA #$00
C - - - - - 0x01D4D8 07:D4C8: 69 2C     ADC #$2C
C - - - - - 0x01D4DA 07:D4CA: 85 5D     STA ram_obj_anim_id
C - - - - - 0x01D4DC 07:D4CC: A9 20     LDA #$20
C - - - - - 0x01D4DE 07:D4CE: 8D 57 06  STA ram_0657
C - - - - - 0x01D4E1 07:D4D1: A5 00     LDA ram_buttons
C - - - - - 0x01D4E3 07:D4D3: 29 FC     AND #con_btns1_LR ^ $FF
C - - - - - 0x01D4E5 07:D4D5: 85 00     STA ram_buttons
C - - - - - 0x01D4E7 07:D4D7: 4C 14 D5  JMP loc_D514
bra_D4DA:
C - - - - - 0x01D4EA 07:D4DA: A5 4A     LDA ram_004A
C - - - - - 0x01D4EC 07:D4DC: 29 1F     AND #$1F
C - - - - - 0x01D4EE 07:D4DE: 4A        LSR
C - - - - - 0x01D4EF 07:D4DF: 4A        LSR
C - - - - - 0x01D4F0 07:D4E0: 4A        LSR
C - - - - - 0x01D4F1 07:D4E1: 18        CLC
C - - - - - 0x01D4F2 07:D4E2: 69 14     ADC #$14
C - - - - - 0x01D4F4 07:D4E4: 65 4C     ADC ram_004C
C - - - - - 0x01D4F6 07:D4E6: 85 5D     STA ram_obj_anim_id
C - - - - - 0x01D4F8 07:D4E8: A5 00     LDA ram_buttons
C - - - - - 0x01D4FA 07:D4EA: 29 80     AND #con_btn1_A
C - - - - - 0x01D4FC 07:D4EC: F0 26     BEQ bra_D514
C - - - - - 0x01D4FE 07:D4EE: A9 08     LDA #$08
C - - - - - 0x01D500 07:D4F0: 8D 75 03  STA ram_0375_obj
C - - - - - 0x01D503 07:D4F3: A9 FB     LDA #$FB
C - - - - - 0x01D505 07:D4F5: 8D 68 03  STA ram_0368_obj
C - - - - - 0x01D508 07:D4F8: A9 05     LDA #$05
C - - - - - 0x01D50A 07:D4FA: 8D 82 03  STA ram_0382_obj
C - - - - - 0x01D50D 07:D4FD: A9 04     LDA #$04
C - - - - - 0x01D50F 07:D4FF: 8D 8F 03  STA ram_038F_obj
C - - - - - 0x01D512 07:D502: A5 17     LDA ram_0017
C - - - - - 0x01D514 07:D504: 09 01     ORA #$01
C - - - - - 0x01D516 07:D506: 85 17     STA ram_0017
C - - - - - 0x01D518 07:D508: A9 27     LDA #$27
C - - - - - 0x01D51A 07:D50A: 85 5D     STA ram_obj_anim_id
C - - - - - 0x01D51C 07:D50C: A9 F0     LDA #$F0
C - - - - - 0x01D51E 07:D50E: 85 34     STA ram_0034
C - - - - - 0x01D520 07:D510: A9 00     LDA #$00
C - - - - - 0x01D522 07:D512: 85 40     STA ram_0040
bra_D514:
loc_D514:
C D 2 - - - 0x01D524 07:D514: A5 00     LDA ram_buttons
C - - - - - 0x01D526 07:D516: 29 40     AND #con_btn1_B
C - - - - - 0x01D528 07:D518: F0 12     BEQ bra_D52C
C - - - - - 0x01D52A 07:D51A: A5 4C     LDA ram_004C
C - - - - - 0x01D52C 07:D51C: C9 0A     CMP #$0A
C - - - - - 0x01D52E 07:D51E: F0 0C     BEQ bra_D52C
C - - - - - 0x01D530 07:D520: A9 05     LDA #$05
C - - - - - 0x01D532 07:D522: 85 4C     STA ram_004C
C - - - - - 0x01D534 07:D524: A9 10     LDA #$10
C - - - - - 0x01D536 07:D526: 8D 56 06  STA ram_0656
C - - - - - 0x01D539 07:D529: 20 CA DB  JSR sub_DBCA
bra_D52C:
C - - - - - 0x01D53C 07:D52C: A5 00     LDA ram_buttons
C - - - - - 0x01D53E 07:D52E: 29 10     AND #con_btn1_Start
C - - - - - 0x01D540 07:D530: F0 08     BEQ bra_D53A
C - - - - - 0x01D542 07:D532: 25 02     AND ram_prev_buttons
C - - - - - 0x01D544 07:D534: D0 04     BNE bra_D53A
C - - - - - 0x01D546 07:D536: A9 01     LDA #$01    ; pause ON
C - - - - - 0x01D548 07:D538: 85 33     STA ram_pause_flag
bra_D53A:
C - - - - - 0x01D54A 07:D53A: A5 00     LDA ram_buttons
C - - - - - 0x01D54C 07:D53C: 29 20     AND #con_btn1_Select
C - - - - - 0x01D54E 07:D53E: F0 12     BEQ bra_D552
C - - - - - 0x01D550 07:D540: 25 02     AND ram_prev_buttons
C - - - - - 0x01D552 07:D542: D0 0E     BNE bra_D552
C - - - - - 0x01D554 07:D544: AD 59 06  LDA ram_weapon_type
C - - - - - 0x01D557 07:D547: 49 01     EOR #$01
; bzk optimize, no need for AND
C - - - - - 0x01D559 07:D549: 29 01     AND #$01
C - - - - - 0x01D55B 07:D54B: 8D 59 06  STA ram_weapon_type
C - - - - - 0x01D55E 07:D54E: A9 21     LDA #con_sound_21
C - - - - - 0x01D560 07:D550: 85 47     STA ram_sound
bra_D552:
C - - - - - 0x01D562 07:D552: A5 35     LDA ram_0035
C - - - - - 0x01D564 07:D554: F0 0A     BEQ bra_D560
C - - - - - 0x01D566 07:D556: A9 03     LDA #$03    ; legs
C - - - - - 0x01D568 07:D558: 8D 99 06  STA ram_0699_unit_index
C - - - - - 0x01D56B 07:D55B: A9 02     LDA #$02
C - - - - - 0x01D56D 07:D55D: 20 5B F1  JSR sub_F15B
bra_D560:
loc_D560:
C D 2 - - - 0x01D570 07:D560: A5 17     LDA ram_0017
C - - - - - 0x01D572 07:D562: 29 02     AND #$02
C - - - - - 0x01D574 07:D564: F0 01     BEQ bra_D567
C - - - - - 0x01D576 07:D566: 60        RTS
bra_D567:
C - - - - - 0x01D577 07:D567: A5 03     LDA ram_mission
C - - - - - 0x01D579 07:D569: C9 04     CMP #$04
C - - - - - 0x01D57B 07:D56B: D0 03     BNE bra_D570
C - - - - - 0x01D57D 07:D56D: 4C 0D D6  JMP loc_D60D
bra_D570:
C - - - - - 0x01D580 07:D570: C9 03     CMP #$03
C - - - - - 0x01D582 07:D572: D0 03     BNE bra_D577
C - - - - - 0x01D584 07:D574: 4C 7C D9  JMP loc_D97C
bra_D577:
C - - - - - 0x01D587 07:D577: A5 00     LDA ram_buttons
C - - - - - 0x01D589 07:D579: 29 02     AND #con_btn1_Left
C - - - - - 0x01D58B 07:D57B: F0 28     BEQ bra_D5A5
C - - - - - 0x01D58D 07:D57D: A5 50     LDA ram_0050_obj_flags
C - - - - - 0x01D58F 07:D57F: 29 BF     AND #$BF
C - - - - - 0x01D591 07:D581: 85 50     STA ram_0050_obj_flags
C - - - - - 0x01D593 07:D583: A5 9E     LDA ram_009E_obj
C - - - - - 0x01D595 07:D585: 29 02     AND #$02
C - - - - - 0x01D597 07:D587: D0 1B     BNE bra_D5A4_RTS
C - - - - - 0x01D599 07:D589: A5 15     LDA ram_limit_scroll_X
C - - - - - 0x01D59B 07:D58B: F0 17     BEQ bra_D5A4_RTS
C - - - - - 0x01D59D 07:D58D: C6 15     DEC ram_limit_scroll_X
C - - - - - 0x01D59F 07:D58F: 38        SEC
C - - - - - 0x01D5A0 07:D590: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01D5A2 07:D592: E9 01     SBC #< $0001
C - - - - - 0x01D5A4 07:D594: 85 77     STA ram_pos_X_lo
C - - - - - 0x01D5A6 07:D596: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01D5A8 07:D598: E9 00     SBC #> $0001
C - - - - - 0x01D5AA 07:D59A: 85 84     STA ram_pos_X_hi
C - - - - - 0x01D5AC 07:D59C: 18        CLC
C - - - - - 0x01D5AD 07:D59D: A5 4A     LDA ram_004A
C - - - - - 0x01D5AF 07:D59F: 6D 54 06  ADC ram_0654
C - - - - - 0x01D5B2 07:D5A2: 85 4A     STA ram_004A
bra_D5A4_RTS:
C - - - - - 0x01D5B4 07:D5A4: 60        RTS
bra_D5A5:
C - - - - - 0x01D5B5 07:D5A5: A5 00     LDA ram_buttons
C - - - - - 0x01D5B7 07:D5A7: 29 01     AND #con_btn1_Right
C - - - - - 0x01D5B9 07:D5A9: F0 61     BEQ bra_D60C_RTS
C - - - - - 0x01D5BB 07:D5AB: A5 50     LDA ram_0050_obj_flags
C - - - - - 0x01D5BD 07:D5AD: 09 40     ORA #$40
C - - - - - 0x01D5BF 07:D5AF: 85 50     STA ram_0050_obj_flags
C - - - - - 0x01D5C1 07:D5B1: A5 9E     LDA ram_009E_obj
C - - - - - 0x01D5C3 07:D5B3: 29 04     AND #$04
C - - - - - 0x01D5C5 07:D5B5: D0 55     BNE bra_D60C_RTS
C - - - - - 0x01D5C7 07:D5B7: 18        CLC
C - - - - - 0x01D5C8 07:D5B8: A5 4A     LDA ram_004A
C - - - - - 0x01D5CA 07:D5BA: 6D 54 06  ADC ram_0654
C - - - - - 0x01D5CD 07:D5BD: 85 4A     STA ram_004A
C - - - - - 0x01D5CF 07:D5BF: A5 36     LDA ram_0036
C - - - - - 0x01D5D1 07:D5C1: C9 01     CMP #$01
C - - - - - 0x01D5D3 07:D5C3: F0 0C     BEQ bra_D5D1
C - - - - - 0x01D5D5 07:D5C5: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01D5D7 07:D5C7: C5 32     CMP ram_0032
C - - - - - 0x01D5D9 07:D5C9: 90 1C     BCC bra_D5E7
C - - - - - 0x01D5DB 07:D5CB: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01D5DD 07:D5CD: C9 74     CMP #$74
C - - - - - 0x01D5DF 07:D5CF: 90 16     BCC bra_D5E7
bra_D5D1:
C - - - - - 0x01D5E1 07:D5D1: A5 15     LDA ram_limit_scroll_X
C - - - - - 0x01D5E3 07:D5D3: C9 E6     CMP #$E6
C - - - - - 0x01D5E5 07:D5D5: B0 35     BCS bra_D60C_RTS
C - - - - - 0x01D5E7 07:D5D7: E6 15     INC ram_limit_scroll_X
C - - - - - 0x01D5E9 07:D5D9: 18        CLC
C - - - - - 0x01D5EA 07:D5DA: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01D5EC 07:D5DC: 69 01     ADC #< $0001
C - - - - - 0x01D5EE 07:D5DE: 85 77     STA ram_pos_X_lo
C - - - - - 0x01D5F0 07:D5E0: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01D5F2 07:D5E2: 69 00     ADC #> $0001
C - - - - - 0x01D5F4 07:D5E4: 85 84     STA ram_pos_X_hi
C - - - - - 0x01D5F6 07:D5E6: 60        RTS
bra_D5E7:
C - - - - - 0x01D5F7 07:D5E7: 18        CLC
C - - - - - 0x01D5F8 07:D5E8: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01D5FA 07:D5EA: 69 01     ADC #< $0001
C - - - - - 0x01D5FC 07:D5EC: 85 77     STA ram_pos_X_lo
C - - - - - 0x01D5FE 07:D5EE: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01D600 07:D5F0: 69 00     ADC #> $0001
C - - - - - 0x01D602 07:D5F2: 85 84     STA ram_pos_X_hi
C - - - - - 0x01D604 07:D5F4: A5 15     LDA ram_limit_scroll_X
C - - - - - 0x01D606 07:D5F6: C9 74     CMP #$74
C - - - - - 0x01D608 07:D5F8: F0 03     BEQ bra_D5FD
C - - - - - 0x01D60A 07:D5FA: E6 15     INC ram_limit_scroll_X
C - - - - - 0x01D60C 07:D5FC: 60        RTS
bra_D5FD:
sub_D5FD:
C - - - - - 0x01D60D 07:D5FD: 18        CLC
C - - - - - 0x01D60E 07:D5FE: A5 12     LDA ram_scroll_X
C - - - - - 0x01D610 07:D600: 69 01     ADC #< $0001
C - - - - - 0x01D612 07:D602: 85 12     STA ram_scroll_X
C - - - - - 0x01D614 07:D604: A5 14     LDA ram_base_nmt
C - - - - - 0x01D616 07:D606: 69 00     ADC #> $0001
C - - - - - 0x01D618 07:D608: 29 01     AND #$01
C - - - - - 0x01D61A 07:D60A: 85 14     STA ram_base_nmt
bra_D60C_RTS:
C - - - - - 0x01D61C 07:D60C: 60        RTS



loc_D60D:
C D 2 - - - 0x01D61D 07:D60D: A5 00     LDA ram_buttons
C - - - - - 0x01D61F 07:D60F: 29 02     AND #con_btn1_Left
C - - - - - 0x01D621 07:D611: F0 4F     BEQ bra_D662
C - - - - - 0x01D623 07:D613: A5 50     LDA ram_0050_obj_flags
C - - - - - 0x01D625 07:D615: 29 BF     AND #$BF
C - - - - - 0x01D627 07:D617: 85 50     STA ram_0050_obj_flags
C - - - - - 0x01D629 07:D619: A5 9E     LDA ram_009E_obj
C - - - - - 0x01D62B 07:D61B: 29 02     AND #$02
C - - - - - 0x01D62D 07:D61D: D0 42     BNE bra_D661_RTS
C - - - - - 0x01D62F 07:D61F: A5 15     LDA ram_limit_scroll_X
C - - - - - 0x01D631 07:D621: F0 3E     BEQ bra_D661_RTS
C - - - - - 0x01D633 07:D623: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01D635 07:D625: D0 0B     BNE bra_D632
C - - - - - 0x01D637 07:D627: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01D639 07:D629: C9 74     CMP #$74
C - - - - - 0x01D63B 07:D62B: B0 05     BCS bra_D632
C - - - - - 0x01D63D 07:D62D: C6 15     DEC ram_limit_scroll_X
C - - - - - 0x01D63F 07:D62F: 4C 4C D6  JMP loc_D64C
bra_D632:
C - - - - - 0x01D642 07:D632: A5 15     LDA ram_limit_scroll_X
C - - - - - 0x01D644 07:D634: C9 74     CMP #$74
C - - - - - 0x01D646 07:D636: 90 05     BCC bra_D63D
C - - - - - 0x01D648 07:D638: C6 15     DEC ram_limit_scroll_X
C - - - - - 0x01D64A 07:D63A: 4C 4C D6  JMP loc_D64C
bra_D63D:
C - - - - - 0x01D64D 07:D63D: 38        SEC
C - - - - - 0x01D64E 07:D63E: A5 12     LDA ram_scroll_X
C - - - - - 0x01D650 07:D640: E9 01     SBC #< $0001
C - - - - - 0x01D652 07:D642: 85 12     STA ram_scroll_X
C - - - - - 0x01D654 07:D644: A5 14     LDA ram_base_nmt
C - - - - - 0x01D656 07:D646: E9 00     SBC #> $0001
C - - - - - 0x01D658 07:D648: 29 01     AND #$01
C - - - - - 0x01D65A 07:D64A: 85 14     STA ram_base_nmt
loc_D64C:
C D 2 - - - 0x01D65C 07:D64C: 38        SEC
C - - - - - 0x01D65D 07:D64D: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01D65F 07:D64F: E9 01     SBC #< $0001
C - - - - - 0x01D661 07:D651: 85 77     STA ram_pos_X_lo
C - - - - - 0x01D663 07:D653: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01D665 07:D655: E9 00     SBC #> $0001
C - - - - - 0x01D667 07:D657: 85 84     STA ram_pos_X_hi
C - - - - - 0x01D669 07:D659: 18        CLC
C - - - - - 0x01D66A 07:D65A: A5 4A     LDA ram_004A
C - - - - - 0x01D66C 07:D65C: 6D 54 06  ADC ram_0654
C - - - - - 0x01D66F 07:D65F: 85 4A     STA ram_004A
bra_D661_RTS:
C - - - - - 0x01D671 07:D661: 60        RTS
bra_D662:
C - - - - - 0x01D672 07:D662: A5 00     LDA ram_buttons
C - - - - - 0x01D674 07:D664: 29 01     AND #con_btn1_Right
C - - - - - 0x01D676 07:D666: F0 5B     BEQ bra_D6C3_RTS
C - - - - - 0x01D678 07:D668: A5 50     LDA ram_0050_obj_flags
C - - - - - 0x01D67A 07:D66A: 09 40     ORA #$40
C - - - - - 0x01D67C 07:D66C: 85 50     STA ram_0050_obj_flags
C - - - - - 0x01D67E 07:D66E: A5 9E     LDA ram_009E_obj
C - - - - - 0x01D680 07:D670: 29 04     AND #$04
C - - - - - 0x01D682 07:D672: D0 4F     BNE bra_D6C3_RTS
C - - - - - 0x01D684 07:D674: 18        CLC
C - - - - - 0x01D685 07:D675: A5 4A     LDA ram_004A
C - - - - - 0x01D687 07:D677: 6D 54 06  ADC ram_0654
C - - - - - 0x01D68A 07:D67A: 85 4A     STA ram_004A
C - - - - - 0x01D68C 07:D67C: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01D68E 07:D67E: C9 01     CMP #$01
C - - - - - 0x01D690 07:D680: 90 1C     BCC bra_D69E
C - - - - - 0x01D692 07:D682: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01D694 07:D684: C9 74     CMP #$74
C - - - - - 0x01D696 07:D686: 90 16     BCC bra_D69E
C - - - - - 0x01D698 07:D688: A5 15     LDA ram_limit_scroll_X
C - - - - - 0x01D69A 07:D68A: C9 E6     CMP #$E6
C - - - - - 0x01D69C 07:D68C: B0 35     BCS bra_D6C3_RTS
C - - - - - 0x01D69E 07:D68E: E6 15     INC ram_limit_scroll_X
C - - - - - 0x01D6A0 07:D690: 18        CLC
C - - - - - 0x01D6A1 07:D691: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01D6A3 07:D693: 69 01     ADC #< $0001
C - - - - - 0x01D6A5 07:D695: 85 77     STA ram_pos_X_lo
C - - - - - 0x01D6A7 07:D697: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01D6A9 07:D699: 69 00     ADC #> $0001
C - - - - - 0x01D6AB 07:D69B: 85 84     STA ram_pos_X_hi
C - - - - - 0x01D6AD 07:D69D: 60        RTS
bra_D69E:
C - - - - - 0x01D6AE 07:D69E: 18        CLC
C - - - - - 0x01D6AF 07:D69F: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01D6B1 07:D6A1: 69 01     ADC #< $0001
C - - - - - 0x01D6B3 07:D6A3: 85 77     STA ram_pos_X_lo
C - - - - - 0x01D6B5 07:D6A5: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01D6B7 07:D6A7: 69 00     ADC #> $0001
C - - - - - 0x01D6B9 07:D6A9: 85 84     STA ram_pos_X_hi
C - - - - - 0x01D6BB 07:D6AB: A5 15     LDA ram_limit_scroll_X
C - - - - - 0x01D6BD 07:D6AD: C9 74     CMP #$74
C - - - - - 0x01D6BF 07:D6AF: F0 03     BEQ bra_D6B4
C - - - - - 0x01D6C1 07:D6B1: E6 15     INC ram_limit_scroll_X
C - - - - - 0x01D6C3 07:D6B3: 60        RTS
bra_D6B4:
C - - - - - 0x01D6C4 07:D6B4: 18        CLC
C - - - - - 0x01D6C5 07:D6B5: A5 12     LDA ram_scroll_X
C - - - - - 0x01D6C7 07:D6B7: 69 01     ADC #< $0001
C - - - - - 0x01D6C9 07:D6B9: 85 12     STA ram_scroll_X
C - - - - - 0x01D6CB 07:D6BB: A5 14     LDA ram_base_nmt
C - - - - - 0x01D6CD 07:D6BD: 69 00     ADC #> $0001
C - - - - - 0x01D6CF 07:D6BF: 29 01     AND #$01
C - - - - - 0x01D6D1 07:D6C1: 85 14     STA ram_base_nmt
bra_D6C3_RTS:
C - - - - - 0x01D6D3 07:D6C3: 60        RTS



sub_D6C4:
C - - - - - 0x01D6D4 07:D6C4: A5 91     LDA ram_pos_Y_lo
C - - - - - 0x01D6D6 07:D6C6: C9 BC     CMP #$BC
C - - - - - 0x01D6D8 07:D6C8: 90 04     BCC bra_D6CE
C - - - - - 0x01D6DA 07:D6CA: A9 AA     LDA #$AA
C - - - - - 0x01D6DC 07:D6CC: 85 5D     STA ram_obj_anim_id
bra_D6CE:
C - - - - - 0x01D6DE 07:D6CE: A2 04     LDX #$04
bra_D6D0_loop:
C - - - - - 0x01D6E0 07:D6D0: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01D6E2 07:D6D2: F0 06     BEQ bra_D6DA
C - - - - - 0x01D6E4 07:D6D4: E8        INX
C - - - - - 0x01D6E5 07:D6D5: E0 0A     CPX #$0A
C - - - - - 0x01D6E7 07:D6D7: 90 F7     BCC bra_D6D0_loop
C - - - - - 0x01D6E9 07:D6D9: 60        RTS
bra_D6DA:
C - - - - - 0x01D6EA 07:D6DA: A5 37     LDA ram_random
C - - - - - 0x01D6EC 07:D6DC: 29 0F     AND #$0F
C - - - - - 0x01D6EE 07:D6DE: 18        CLC
C - - - - - 0x01D6EF 07:D6DF: 69 04     ADC #< $0004
C - - - - - 0x01D6F1 07:D6E1: 65 77     ADC ram_pos_X_lo
C - - - - - 0x01D6F3 07:D6E3: 95 77     STA ram_pos_X_lo,X
C - - - - - 0x01D6F5 07:D6E5: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01D6F7 07:D6E7: 69 00     ADC #> $0004
C - - - - - 0x01D6F9 07:D6E9: 95 84     STA ram_pos_X_hi,X
C - - - - - 0x01D6FB 07:D6EB: 18        CLC
C - - - - - 0x01D6FC 07:D6EC: A5 91     LDA ram_pos_Y_lo
C - - - - - 0x01D6FE 07:D6EE: 65 3C     ADC ram_003C
C - - - - - 0x01D700 07:D6F0: E9 04     SBC #$04
C - - - - - 0x01D702 07:D6F2: 95 91     STA ram_pos_Y_lo,X
C - - - - - 0x01D704 07:D6F4: A9 07     LDA #$07
C - - - - - 0x01D706 07:D6F6: 95 B8     STA ram_obj_id,X
C - - - - - 0x01D708 07:D6F8: A5 3C     LDA ram_003C
C - - - - - 0x01D70A 07:D6FA: C9 32     CMP #$32
C - - - - - 0x01D70C 07:D6FC: B0 30     BCS bra_D72E
C - - - - - 0x01D70E 07:D6FE: E6 3C     INC ram_003C
C - - - - - 0x01D710 07:D700: A5 3C     LDA ram_003C
C - - - - - 0x01D712 07:D702: 4A        LSR
C - - - - - 0x01D713 07:D703: 4A        LSR
C - - - - - 0x01D714 07:D704: 4A        LSR
C - - - - - 0x01D715 07:D705: 85 35     STA ram_0035
C - - - - - 0x01D717 07:D707: 18        CLC
C - - - - - 0x01D718 07:D708: A9 00     LDA #$00
C - - - - - 0x01D71A 07:D70A: E5 35     SBC ram_0035
C - - - - - 0x01D71C 07:D70C: 85 35     STA ram_0035
C - - - - - 0x01D71E 07:D70E: E0 06     CPX #$06
C - - - - - 0x01D720 07:D710: B0 09     BCS bra_D71B
C - - - - - 0x01D722 07:D712: A5 37     LDA ram_random
C - - - - - 0x01D724 07:D714: 29 10     AND #$10
C - - - - - 0x01D726 07:D716: F0 03     BEQ bra_D71B
C - - - - - 0x01D728 07:D718: 20 2F EC  JSR sub_EC2F
bra_D71B:
C - - - - - 0x01D72B 07:D71B: A5 38     LDA ram_random + $01
C - - - - - 0x01D72D 07:D71D: 29 03     AND #$03
C - - - - - 0x01D72F 07:D71F: 18        CLC
C - - - - - 0x01D730 07:D720: 69 10     ADC #$10
C - - - - - 0x01D732 07:D722: 9D 9C 03  STA ram_039C_obj,X
C - - - - - 0x01D735 07:D725: A9 07     LDA #$07
C - - - - - 0x01D737 07:D727: 95 B8     STA ram_obj_id,X
C - - - - - 0x01D739 07:D729: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01D73B 07:D72B: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01D73D 07:D72D: 60        RTS
bra_D72E:
C - - - - - 0x01D73E 07:D72E: CE 5E 06  DEC ram_ammo_bullet
C - - - - - 0x01D741 07:D731: D0 05     BNE bra_D738_RTS
C - - - - - 0x01D743 07:D733: A9 FF     LDA #$FF
C - - - - - 0x01D745 07:D735: 8D 7E 06  STA ram_067E
bra_D738_RTS:
C - - - - - 0x01D748 07:D738: 60        RTS



loc_D739:
C D 2 - - - 0x01D749 07:D739: AD 3E 06  LDA ram_robocop_hp
C - - - - - 0x01D74C 07:D73C: D0 0C     BNE bra_D74A
- - - - - - 0x01D74E 07:D73E: A9 00     LDA #$00
- - - - - - 0x01D750 07:D740: 85 00     STA ram_buttons
- - - - - - 0x01D752 07:D742: A5 17     LDA ram_0017
- - - - - - 0x01D754 07:D744: D0 04     BNE bra_D74A
- - - - - - 0x01D756 07:D746: 20 C4 D6  JSR sub_D6C4
- - - - - - 0x01D759 07:D749: 60        RTS
bra_D74A:
C - - - - - 0x01D75A 07:D74A: A9 14     LDA #$14
C - - - - - 0x01D75C 07:D74C: 85 35     STA ram_0035
C - - - - - 0x01D75E 07:D74E: A0 01     LDY #$01
C - - - - - 0x01D760 07:D750: A5 00     LDA ram_buttons
C - - - - - 0x01D762 07:D752: 29 03     AND #con_btns1_LR
C - - - - - 0x01D764 07:D754: 85 E2     STA ram_00E2
C - - - - - 0x01D766 07:D756: A5 02     LDA ram_prev_buttons
C - - - - - 0x01D768 07:D758: 29 03     AND #con_btns1_LR
C - - - - - 0x01D76A 07:D75A: C5 E2     CMP ram_00E2
C - - - - - 0x01D76C 07:D75C: F0 02     BEQ bra_D760
C - - - - - 0x01D76E 07:D75E: A0 08     LDY #$08
bra_D760:
C - - - - - 0x01D770 07:D760: 8C 54 06  STY ram_0654
C - - - - - 0x01D773 07:D763: AD 56 06  LDA ram_0656
C - - - - - 0x01D776 07:D766: F0 06     BEQ bra_D76E
C - - - - - 0x01D778 07:D768: CE 56 06  DEC ram_0656
C - - - - - 0x01D77B 07:D76B: 4C 7F D7  JMP loc_D77F
bra_D76E:
C - - - - - 0x01D77E 07:D76E: A0 00     LDY #$00
C - - - - - 0x01D780 07:D770: A5 4C     LDA ram_004C
C - - - - - 0x01D782 07:D772: C9 0A     CMP #$0A
C - - - - - 0x01D784 07:D774: D0 02     BNE bra_D778
C - - - - - 0x01D786 07:D776: A0 05     LDY #$05
bra_D778:
C - - - - - 0x01D788 07:D778: 84 4C     STY ram_004C
C - - - - - 0x01D78A 07:D77A: A9 10     LDA #$10
C - - - - - 0x01D78C 07:D77C: 8D 56 06  STA ram_0656
loc_D77F:
C D 2 - - - 0x01D78F 07:D77F: A5 17     LDA ram_0017
C - - - - - 0x01D791 07:D781: 29 01     AND #$01
C - - - - - 0x01D793 07:D783: D0 03     BNE bra_D788
C - - - - - 0x01D795 07:D785: 4C 34 D8  JMP loc_D834
bra_D788:
C - - - - - 0x01D798 07:D788: A9 00     LDA #$00
C - - - - - 0x01D79A 07:D78A: 85 49     STA ram_0049
C - - - - - 0x01D79C 07:D78C: A4 4C     LDY ram_004C
C - - - - - 0x01D79E 07:D78E: C0 0A     CPY #$0A
C - - - - - 0x01D7A0 07:D790: D0 02     BNE bra_D794
C - - - - - 0x01D7A2 07:D792: A9 01     LDA #$01
bra_D794:   ; A = 00
C - - - - - 0x01D7A4 07:D794: 85 E2     STA ram_00E2
C - - - - - 0x01D7A6 07:D796: A5 00     LDA ram_buttons
C - - - - - 0x01D7A8 07:D798: 29 80     AND #con_btn1_A
C - - - - - 0x01D7AA 07:D79A: 85 E3     STA ram_00E3
C - - - - - 0x01D7AC 07:D79C: F0 2D     BEQ bra_D7CB
C - - - - - 0x01D7AE 07:D79E: AD 40 06  LDA ram_jetpack_fuel
C - - - - - 0x01D7B1 07:D7A1: F0 28     BEQ bra_D7CB
C - - - - - 0x01D7B3 07:D7A3: CE 41 06  DEC ram_jetpack_fuel + $01
C - - - - - 0x01D7B6 07:D7A6: D0 03     BNE bra_D7AB_not_underflow
C - - - - - 0x01D7B8 07:D7A8: CE 40 06  DEC ram_jetpack_fuel
bra_D7AB_not_underflow:
C - - - - - 0x01D7BB 07:D7AB: AD 40 06  LDA ram_jetpack_fuel
C - - - - - 0x01D7BE 07:D7AE: C9 02     CMP #$02
C - - - - - 0x01D7C0 07:D7B0: B0 09     BCS bra_D7BB_skip
C - - - - - 0x01D7C2 07:D7B2: A9 13     LDA #con_msg_warning_jetpack_fuel_low
C - - - - - 0x01D7C4 07:D7B4: C5 46     CMP ram_message
C - - - - - 0x01D7C6 07:D7B6: F0 03     BEQ bra_D7BB_skip
C - - - - - 0x01D7C8 07:D7B8: 20 7B C9  JSR sub_C97B_prepare_new_message
bra_D7BB_skip:
C - - - - - 0x01D7CB 07:D7BB: 20 0C DA  JSR sub_DA0C
C - - - - - 0x01D7CE 07:D7BE: AD 75 03  LDA ram_0375_obj
C - - - - - 0x01D7D1 07:D7C1: C9 FD     CMP #$FD
C - - - - - 0x01D7D3 07:D7C3: F0 1C     BEQ bra_D7E1
C - - - - - 0x01D7D5 07:D7C5: CE 75 03  DEC ram_0375_obj
C - - - - - 0x01D7D8 07:D7C8: 4C E1 D7  JMP loc_D7E1
bra_D7CB:
C - - - - - 0x01D7DB 07:D7CB: A5 5A     LDA ram_0050_obj_flags + $0A
C - - - - - 0x01D7DD 07:D7CD: F0 08     BEQ bra_D7D7
C - - - - - 0x01D7DF 07:D7CF: A9 00     LDA #$00
C - - - - - 0x01D7E1 07:D7D1: 85 5A     STA ram_0050_obj_flags + $0A
C - - - - - 0x01D7E3 07:D7D3: A9 0E     LDA #con_sound_0E
C - - - - - 0x01D7E5 07:D7D5: 85 47     STA ram_sound
bra_D7D7:
C - - - - - 0x01D7E7 07:D7D7: AD 75 03  LDA ram_0375_obj
C - - - - - 0x01D7EA 07:D7DA: C9 08     CMP #$08
C - - - - - 0x01D7EC 07:D7DC: F0 03     BEQ bra_D7E1
C - - - - - 0x01D7EE 07:D7DE: EE 75 03  INC ram_0375_obj
bra_D7E1:
loc_D7E1:
C D 2 - - - 0x01D7F1 07:D7E1: 18        CLC
C - - - - - 0x01D7F2 07:D7E2: A9 94     LDA #$94
C - - - - - 0x01D7F4 07:D7E4: 65 E2     ADC ram_00E2
C - - - - - 0x01D7F6 07:D7E6: 85 5D     STA ram_obj_anim_id
C - - - - - 0x01D7F8 07:D7E8: A9 0C     LDA #$0C
C - - - - - 0x01D7FA 07:D7EA: 8D 8F 03  STA ram_038F_obj
C - - - - - 0x01D7FD 07:D7ED: AD 68 03  LDA ram_0368_obj
C - - - - - 0x01D800 07:D7F0: 10 13     BPL bra_D805
bra_D7F2:
C - - - - - 0x01D802 07:D7F2: A9 08     LDA #$08
C - - - - - 0x01D804 07:D7F4: 8D 8F 03  STA ram_038F_obj
C - - - - - 0x01D807 07:D7F7: A5 91     LDA ram_pos_Y_lo
C - - - - - 0x01D809 07:D7F9: C9 3C     CMP #$3C
C - - - - - 0x01D80B 07:D7FB: B0 05     BCS bra_D802
C - - - - - 0x01D80D 07:D7FD: A9 00     LDA #$00
C - - - - - 0x01D80F 07:D7FF: 8D 68 03  STA ram_0368_obj
bra_D802:
C - - - - - 0x01D812 07:D802: 4C 3B D9  JMP loc_D93B
bra_D805:
C - - - - - 0x01D815 07:D805: D0 04     BNE bra_D80B
C - - - - - 0x01D817 07:D807: A5 E3     LDA ram_00E3
C - - - - - 0x01D819 07:D809: D0 E7     BNE bra_D7F2
bra_D80B:
C - - - - - 0x01D81B 07:D80B: A5 AB     LDA ram_00AB_obj
C - - - - - 0x01D81D 07:D80D: 05 9E     ORA ram_009E_obj
C - - - - - 0x01D81F 07:D80F: 29 01     AND #$01
C - - - - - 0x01D821 07:D811: D0 03     BNE bra_D816
C - - - - - 0x01D823 07:D813: 4C 3B D9  JMP loc_D93B
bra_D816:
C - - - - - 0x01D826 07:D816: A5 91     LDA ram_pos_Y_lo
C - - - - - 0x01D828 07:D818: 29 F0     AND #$F0
C - - - - - 0x01D82A 07:D81A: 85 91     STA ram_pos_Y_lo
C - - - - - 0x01D82C 07:D81C: A9 00     LDA #$00
C - - - - - 0x01D82E 07:D81E: 8D 68 03  STA ram_0368_obj
C - - - - - 0x01D831 07:D821: 8D 75 03  STA ram_0375_obj
C - - - - - 0x01D834 07:D824: A9 02     LDA #$02
C - - - - - 0x01D836 07:D826: 85 17     STA ram_0017
C - - - - - 0x01D838 07:D828: A9 08     LDA #$08
C - - - - - 0x01D83A 07:D82A: 8D 9C 03  STA ram_039C_obj
C - - - - - 0x01D83D 07:D82D: A9 0B     LDA #con_sound_0B
C - - - - - 0x01D83F 07:D82F: 85 47     STA ram_sound
C - - - - - 0x01D841 07:D831: 4C 6B D8  JMP loc_D86B



loc_D834:
C D 2 - - - 0x01D844 07:D834: A9 00     LDA #$00
C - - - - - 0x01D846 07:D836: 85 5A     STA ram_0050_obj_flags + $0A
C - - - - - 0x01D848 07:D838: A5 17     LDA ram_0017
C - - - - - 0x01D84A 07:D83A: 29 02     AND #$02
C - - - - - 0x01D84C 07:D83C: D0 09     BNE bra_D847
C - - - - - 0x01D84E 07:D83E: A5 00     LDA ram_buttons
C - - - - - 0x01D850 07:D840: C9 04     CMP #con_btn1_Down
C - - - - - 0x01D852 07:D842: F0 17     BEQ bra_D85B
C - - - - - 0x01D854 07:D844: 4C 88 D8  JMP loc_D888
bra_D847:
C - - - - - 0x01D857 07:D847: A5 00     LDA ram_buttons
C - - - - - 0x01D859 07:D849: 29 04     AND #con_btn1_Down
C - - - - - 0x01D85B 07:D84B: D0 0E     BNE bra_D85B
C - - - - - 0x01D85D 07:D84D: CE 9C 03  DEC ram_039C_obj
C - - - - - 0x01D860 07:D850: D0 19     BNE bra_D86B
C - - - - - 0x01D862 07:D852: A5 17     LDA ram_0017
C - - - - - 0x01D864 07:D854: 29 FD     AND #$FD
C - - - - - 0x01D866 07:D856: 85 17     STA ram_0017
C - - - - - 0x01D868 07:D858: 4C 3B D9  JMP loc_D93B
bra_D85B:
C - - - - - 0x01D86B 07:D85B: A5 17     LDA ram_0017
C - - - - - 0x01D86D 07:D85D: 09 02     ORA #$02
C - - - - - 0x01D86F 07:D85F: 85 17     STA ram_0017
C - - - - - 0x01D871 07:D861: AD 9C 03  LDA ram_039C_obj
C - - - - - 0x01D874 07:D864: C9 09     CMP #$09
C - - - - - 0x01D876 07:D866: B0 03     BCS bra_D86B
C - - - - - 0x01D878 07:D868: EE 9C 03  INC ram_039C_obj
bra_D86B:
loc_D86B:
C D 2 - - - 0x01D87B 07:D86B: A5 4C     LDA ram_004C
C - - - - - 0x01D87D 07:D86D: C9 0A     CMP #$0A
C - - - - - 0x01D87F 07:D86F: 08        PHP
C - - - - - 0x01D880 07:D870: 84 E2     STY ram_00E2
C - - - - - 0x01D882 07:D872: AD 9C 03  LDA ram_039C_obj
C - - - - - 0x01D885 07:D875: 4A        LSR
C - - - - - 0x01D886 07:D876: 4A        LSR
C - - - - - 0x01D887 07:D877: 28        PLP
C - - - - - 0x01D888 07:D878: 69 A2     ADC #$A2
C - - - - - 0x01D88A 07:D87A: 85 5D     STA ram_obj_anim_id
C - - - - - 0x01D88C 07:D87C: A9 00     LDA #$00
C - - - - - 0x01D88E 07:D87E: 85 49     STA ram_0049
C - - - - - 0x01D890 07:D880: A9 1A     LDA #$1A
C - - - - - 0x01D892 07:D882: 8D 57 06  STA ram_0657
C - - - - - 0x01D895 07:D885: 4C 3B D9  JMP loc_D93B



loc_D888:
C D 2 - - - 0x01D898 07:D888: A5 9E     LDA ram_009E_obj
C - - - - - 0x01D89A 07:D88A: 05 AB     ORA ram_00AB_obj
C - - - - - 0x01D89C 07:D88C: 29 01     AND #$01
C - - - - - 0x01D89E 07:D88E: D0 12     BNE bra_D8A2
C - - - - - 0x01D8A0 07:D890: A9 08     LDA #$08
C - - - - - 0x01D8A2 07:D892: 8D 75 03  STA ram_0375_obj
C - - - - - 0x01D8A5 07:D895: A5 17     LDA ram_0017
C - - - - - 0x01D8A7 07:D897: 09 01     ORA #$01
C - - - - - 0x01D8A9 07:D899: 85 17     STA ram_0017
C - - - - - 0x01D8AB 07:D89B: A9 F0     LDA #$F0
C - - - - - 0x01D8AD 07:D89D: 85 34     STA ram_0034
C - - - - - 0x01D8AF 07:D89F: 4C 3B D9  JMP loc_D93B
bra_D8A2:
C - - - - - 0x01D8B2 07:D8A2: A9 00     LDA #$00
C - - - - - 0x01D8B4 07:D8A4: 85 17     STA ram_0017
C - - - - - 0x01D8B6 07:D8A6: A9 0A     LDA #$0A
C - - - - - 0x01D8B8 07:D8A8: 8D 57 06  STA ram_0657
C - - - - - 0x01D8BB 07:D8AB: A9 00     LDA #$00
C - - - - - 0x01D8BD 07:D8AD: 85 49     STA ram_0049
C - - - - - 0x01D8BF 07:D8AF: A5 00     LDA ram_buttons
C - - - - - 0x01D8C1 07:D8B1: 29 8F     AND #con_btn1_A + con_btns1_Dpad
C - - - - - 0x01D8C3 07:D8B3: D0 13     BNE bra_D8C8
C - - - - - 0x01D8C5 07:D8B5: 85 4A     STA ram_004A
C - - - - - 0x01D8C7 07:D8B7: 18        CLC
C - - - - - 0x01D8C8 07:D8B8: A9 97     LDA #$97
C - - - - - 0x01D8CA 07:D8BA: A4 4C     LDY ram_004C
C - - - - - 0x01D8CC 07:D8BC: C0 0A     CPY #$0A
C - - - - - 0x01D8CE 07:D8BE: D0 03     BNE bra_D8C3
C - - - - - 0x01D8D0 07:D8C0: 18        CLC
C - - - - - 0x01D8D1 07:D8C1: 69 04     ADC #$04
bra_D8C3:
C - - - - - 0x01D8D3 07:D8C3: 85 5D     STA ram_obj_anim_id
C - - - - - 0x01D8D5 07:D8C5: 4C 3B D9  JMP loc_D93B
bra_D8C8:
C - - - - - 0x01D8D8 07:D8C8: A5 00     LDA ram_buttons
C - - - - - 0x01D8DA 07:D8CA: 29 83     AND #con_btn1_A + con_btns1_LR
C - - - - - 0x01D8DC 07:D8CC: D0 44     BNE bra_D912
C - - - - - 0x01D8DE 07:D8CE: A5 00     LDA ram_buttons
C - - - - - 0x01D8E0 07:D8D0: 29 08     AND #con_btn1_Up
C - - - - - 0x01D8E2 07:D8D2: F0 1C     BEQ bra_D8F0
C - - - - - 0x01D8E4 07:D8D4: A9 FC     LDA #$FC
C - - - - - 0x01D8E6 07:D8D6: 85 49     STA ram_0049
C - - - - - 0x01D8E8 07:D8D8: A5 4C     LDA ram_004C
C - - - - - 0x01D8EA 07:D8DA: C9 0A     CMP #$0A
C - - - - - 0x01D8EC 07:D8DC: A9 00     LDA #$00
C - - - - - 0x01D8EE 07:D8DE: 69 A6     ADC #$A6
C - - - - - 0x01D8F0 07:D8E0: 85 5D     STA ram_obj_anim_id
C - - - - - 0x01D8F2 07:D8E2: A9 FD     LDA #$FD
C - - - - - 0x01D8F4 07:D8E4: 8D 57 06  STA ram_0657
C - - - - - 0x01D8F7 07:D8E7: A5 00     LDA ram_buttons
C - - - - - 0x01D8F9 07:D8E9: 29 FC     AND #con_btns1_LR ^ $FF
C - - - - - 0x01D8FB 07:D8EB: 85 00     STA ram_buttons
C - - - - - 0x01D8FD 07:D8ED: 4C 3B D9  JMP loc_D93B
bra_D8F0:
C - - - - - 0x01D900 07:D8F0: A5 00     LDA ram_buttons
C - - - - - 0x01D902 07:D8F2: 29 04     AND #con_btn1_Down
C - - - - - 0x01D904 07:D8F4: F0 1C     BEQ bra_D912
C - - - - - 0x01D906 07:D8F6: A9 04     LDA #$04
C - - - - - 0x01D908 07:D8F8: 85 49     STA ram_0049
C - - - - - 0x01D90A 07:D8FA: A5 4C     LDA ram_004C
C - - - - - 0x01D90C 07:D8FC: C9 0A     CMP #$0A
C - - - - - 0x01D90E 07:D8FE: A9 00     LDA #$00
C - - - - - 0x01D910 07:D900: 69 A8     ADC #$A8
C - - - - - 0x01D912 07:D902: 85 5D     STA ram_obj_anim_id
C - - - - - 0x01D914 07:D904: A9 20     LDA #$20
C - - - - - 0x01D916 07:D906: 8D 57 06  STA ram_0657
C - - - - - 0x01D919 07:D909: A5 00     LDA ram_buttons
C - - - - - 0x01D91B 07:D90B: 29 FC     AND #con_btns1_LR ^ $FF
C - - - - - 0x01D91D 07:D90D: 85 00     STA ram_buttons
C - - - - - 0x01D91F 07:D90F: 4C 3B D9  JMP loc_D93B
bra_D912:
C - - - - - 0x01D922 07:D912: A5 4A     LDA ram_004A
C - - - - - 0x01D924 07:D914: 29 1F     AND #$1F
C - - - - - 0x01D926 07:D916: 4A        LSR
C - - - - - 0x01D927 07:D917: 4A        LSR
C - - - - - 0x01D928 07:D918: 4A        LSR
C - - - - - 0x01D929 07:D919: 18        CLC
C - - - - - 0x01D92A 07:D91A: 69 96     ADC #$96
C - - - - - 0x01D92C 07:D91C: A4 4C     LDY ram_004C
C - - - - - 0x01D92E 07:D91E: C0 0A     CPY #$0A
C - - - - - 0x01D930 07:D920: D0 03     BNE bra_D925
C - - - - - 0x01D932 07:D922: 18        CLC
C - - - - - 0x01D933 07:D923: 69 04     ADC #$04
bra_D925:
C - - - - - 0x01D935 07:D925: 85 5D     STA ram_obj_anim_id
C - - - - - 0x01D937 07:D927: A5 00     LDA ram_buttons
C - - - - - 0x01D939 07:D929: 29 80     AND #con_btn1_A
C - - - - - 0x01D93B 07:D92B: F0 0E     BEQ bra_D93B
C - - - - - 0x01D93D 07:D92D: A5 17     LDA ram_0017
C - - - - - 0x01D93F 07:D92F: 09 01     ORA #$01
C - - - - - 0x01D941 07:D931: 85 17     STA ram_0017
C - - - - - 0x01D943 07:D933: A9 F0     LDA #$F0
C - - - - - 0x01D945 07:D935: 85 34     STA ram_0034
C - - - - - 0x01D947 07:D937: A9 00     LDA #$00
C - - - - - 0x01D949 07:D939: 85 40     STA ram_0040
bra_D93B:
loc_D93B:
C D 2 - - - 0x01D94B 07:D93B: A5 00     LDA ram_buttons
C - - - - - 0x01D94D 07:D93D: 29 40     AND #con_btn1_B
C - - - - - 0x01D94F 07:D93F: F0 12     BEQ bra_D953
C - - - - - 0x01D951 07:D941: A5 4C     LDA ram_004C
C - - - - - 0x01D953 07:D943: C9 0A     CMP #$0A
C - - - - - 0x01D955 07:D945: F0 0C     BEQ bra_D953
C - - - - - 0x01D957 07:D947: A9 05     LDA #$05
C - - - - - 0x01D959 07:D949: 85 4C     STA ram_004C
C - - - - - 0x01D95B 07:D94B: A9 10     LDA #$10
C - - - - - 0x01D95D 07:D94D: 8D 56 06  STA ram_0656
C - - - - - 0x01D960 07:D950: 20 CA DB  JSR sub_DBCA
bra_D953:
C - - - - - 0x01D963 07:D953: A5 00     LDA ram_buttons
C - - - - - 0x01D965 07:D955: 29 10     AND #con_btn1_Start
C - - - - - 0x01D967 07:D957: F0 08     BEQ bra_D961
- - - - - - 0x01D969 07:D959: 25 02     AND ram_prev_buttons
- - - - - - 0x01D96B 07:D95B: D0 04     BNE bra_D961
- - - - - - 0x01D96D 07:D95D: A9 01     LDA #$01    ; pause ON
- - - - - - 0x01D96F 07:D95F: 85 33     STA ram_pause_flag
bra_D961:
C - - - - - 0x01D971 07:D961: A5 00     LDA ram_buttons
C - - - - - 0x01D973 07:D963: 29 20     AND #con_btn1_Select
C - - - - - 0x01D975 07:D965: F0 12     BEQ bra_D979
C - - - - - 0x01D977 07:D967: 25 02     AND ram_prev_buttons
C - - - - - 0x01D979 07:D969: D0 0E     BNE bra_D979
C - - - - - 0x01D97B 07:D96B: AD 59 06  LDA ram_weapon_type
C - - - - - 0x01D97E 07:D96E: 49 01     EOR #$01
; bzk optimize, no need for AND
C - - - - - 0x01D980 07:D970: 29 01     AND #$01
C - - - - - 0x01D982 07:D972: 8D 59 06  STA ram_weapon_type
C - - - - - 0x01D985 07:D975: A9 21     LDA #con_sound_21
C - - - - - 0x01D987 07:D977: 85 47     STA ram_sound
bra_D979:
C - - - - - 0x01D989 07:D979: 4C 60 D5  JMP loc_D560



loc_D97C:
C D 2 - - - 0x01D98C 07:D97C: A5 00     LDA ram_buttons
C - - - - - 0x01D98E 07:D97E: 29 02     AND #con_btn1_Left
C - - - - - 0x01D990 07:D980: F0 5A     BEQ bra_D9DC
C - - - - - 0x01D992 07:D982: A5 50     LDA ram_0050_obj_flags
C - - - - - 0x01D994 07:D984: 29 BF     AND #$BF
C - - - - - 0x01D996 07:D986: 85 50     STA ram_0050_obj_flags
C - - - - - 0x01D998 07:D988: A5 9E     LDA ram_009E_obj
C - - - - - 0x01D99A 07:D98A: 29 02     AND #$02
C - - - - - 0x01D99C 07:D98C: D0 4D     BNE bra_D9DB_RTS
C - - - - - 0x01D99E 07:D98E: 18        CLC
C - - - - - 0x01D99F 07:D98F: A5 4A     LDA ram_004A
C - - - - - 0x01D9A1 07:D991: 6D 54 06  ADC ram_0654
C - - - - - 0x01D9A4 07:D994: 85 4A     STA ram_004A
C - - - - - 0x01D9A6 07:D996: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01D9A8 07:D998: C5 32     CMP ram_0032
C - - - - - 0x01D9AA 07:D99A: D0 1A     BNE bra_D9B6
C - - - - - 0x01D9AC 07:D99C: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01D9AE 07:D99E: C9 75     CMP #$75
C - - - - - 0x01D9B0 07:D9A0: B0 14     BCS bra_D9B6
C - - - - - 0x01D9B2 07:D9A2: A5 15     LDA ram_limit_scroll_X
C - - - - - 0x01D9B4 07:D9A4: F0 35     BEQ bra_D9DB_RTS
C - - - - - 0x01D9B6 07:D9A6: C6 15     DEC ram_limit_scroll_X
C - - - - - 0x01D9B8 07:D9A8: 38        SEC
C - - - - - 0x01D9B9 07:D9A9: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01D9BB 07:D9AB: E9 01     SBC #< $0001
C - - - - - 0x01D9BD 07:D9AD: 85 77     STA ram_pos_X_lo
C - - - - - 0x01D9BF 07:D9AF: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01D9C1 07:D9B1: E9 00     SBC #> $0001
C - - - - - 0x01D9C3 07:D9B3: 85 84     STA ram_pos_X_hi
C - - - - - 0x01D9C5 07:D9B5: 60        RTS
bra_D9B6:
C - - - - - 0x01D9C6 07:D9B6: 38        SEC
C - - - - - 0x01D9C7 07:D9B7: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01D9C9 07:D9B9: E9 01     SBC #< $0001
C - - - - - 0x01D9CB 07:D9BB: 85 77     STA ram_pos_X_lo
C - - - - - 0x01D9CD 07:D9BD: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01D9CF 07:D9BF: E9 00     SBC #> $0001
C - - - - - 0x01D9D1 07:D9C1: 85 84     STA ram_pos_X_hi
C - - - - - 0x01D9D3 07:D9C3: A5 15     LDA ram_limit_scroll_X
C - - - - - 0x01D9D5 07:D9C5: C9 75     CMP #$75
C - - - - - 0x01D9D7 07:D9C7: 90 03     BCC bra_D9CC
C - - - - - 0x01D9D9 07:D9C9: C6 15     DEC ram_limit_scroll_X
C - - - - - 0x01D9DB 07:D9CB: 60        RTS
bra_D9CC:
C - - - - - 0x01D9DC 07:D9CC: 38        SEC
C - - - - - 0x01D9DD 07:D9CD: A5 12     LDA ram_scroll_X
C - - - - - 0x01D9DF 07:D9CF: E9 01     SBC #< $0001
C - - - - - 0x01D9E1 07:D9D1: 85 12     STA ram_scroll_X
C - - - - - 0x01D9E3 07:D9D3: A5 14     LDA ram_base_nmt
C - - - - - 0x01D9E5 07:D9D5: E9 00     SBC #> $0001
C - - - - - 0x01D9E7 07:D9D7: 29 01     AND #$01
C - - - - - 0x01D9E9 07:D9D9: 85 14     STA ram_base_nmt
bra_D9DB_RTS:
C - - - - - 0x01D9EB 07:D9DB: 60        RTS
bra_D9DC:
C - - - - - 0x01D9EC 07:D9DC: A5 00     LDA ram_buttons
C - - - - - 0x01D9EE 07:D9DE: 29 01     AND #con_btn1_Right
C - - - - - 0x01D9F0 07:D9E0: F0 29     BEQ bra_DA0B_RTS
C - - - - - 0x01D9F2 07:D9E2: A5 50     LDA ram_0050_obj_flags
C - - - - - 0x01D9F4 07:D9E4: 09 40     ORA #$40
C - - - - - 0x01D9F6 07:D9E6: 85 50     STA ram_0050_obj_flags
C - - - - - 0x01D9F8 07:D9E8: A5 9E     LDA ram_009E_obj
C - - - - - 0x01D9FA 07:D9EA: 29 04     AND #$04
C - - - - - 0x01D9FC 07:D9EC: D0 1D     BNE bra_DA0B_RTS
C - - - - - 0x01D9FE 07:D9EE: A5 15     LDA ram_limit_scroll_X
C - - - - - 0x01DA00 07:D9F0: C9 E6     CMP #$E6
C - - - - - 0x01DA02 07:D9F2: F0 17     BEQ bra_DA0B_RTS
C - - - - - 0x01DA04 07:D9F4: E6 15     INC ram_limit_scroll_X
C - - - - - 0x01DA06 07:D9F6: 18        CLC
C - - - - - 0x01DA07 07:D9F7: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01DA09 07:D9F9: 69 01     ADC #< $0001
C - - - - - 0x01DA0B 07:D9FB: 85 77     STA ram_pos_X_lo
C - - - - - 0x01DA0D 07:D9FD: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01DA0F 07:D9FF: 69 00     ADC #> $0001
C - - - - - 0x01DA11 07:DA01: 85 84     STA ram_pos_X_hi
C - - - - - 0x01DA13 07:DA03: 18        CLC
C - - - - - 0x01DA14 07:DA04: A5 4A     LDA ram_004A
C - - - - - 0x01DA16 07:DA06: 6D 54 06  ADC ram_0654
C - - - - - 0x01DA19 07:DA09: 85 4A     STA ram_004A
bra_DA0B_RTS:
C - - - - - 0x01DA1B 07:DA0B: 60        RTS



sub_DA0C:
C - - - - - 0x01DA1C 07:DA0C: A5 5A     LDA ram_0050_obj_flags + $0A
C - - - - - 0x01DA1E 07:DA0E: D0 19     BNE bra_DA29
C - - - - - 0x01DA20 07:DA10: A9 0A     LDA #con_sound_0A
C - - - - - 0x01DA22 07:DA12: 85 47     STA ram_sound
C - - - - - 0x01DA24 07:DA14: A9 00     LDA #$00
C - - - - - 0x01DA26 07:DA16: 85 74     STA ram_006A_obj + $0A
C - - - - - 0x01DA28 07:DA18: 8D 72 03  STA ram_0368_obj + $0A
C - - - - - 0x01DA2B 07:DA1B: 85 CF     STA ram_00C5_obj + $0A
C - - - - - 0x01DA2D 07:DA1D: 8D 65 03  STA ram_035B_obj + $0A
C - - - - - 0x01DA30 07:DA20: 8D 7F 03  STA ram_0375_obj + $0A
C - - - - - 0x01DA33 07:DA23: A9 FF     LDA #$FF
C - - - - - 0x01DA35 07:DA25: 85 C2     STA ram_obj_id + $0A
C - - - - - 0x01DA37 07:DA27: E6 5A     INC ram_0050_obj_flags + $0A
bra_DA29:
C - - - - - 0x01DA39 07:DA29: 18        CLC
C - - - - - 0x01DA3A 07:DA2A: A5 91     LDA ram_pos_Y_lo
C - - - - - 0x01DA3C 07:DA2C: 69 1C     ADC #$1C
C - - - - - 0x01DA3E 07:DA2E: 85 9B     STA ram_pos_Y_lo + $0A
C - - - - - 0x01DA40 07:DA30: A0 02     LDY #$02
C - - - - - 0x01DA42 07:DA32: A5 50     LDA ram_0050_obj_flags
C - - - - - 0x01DA44 07:DA34: 29 40     AND #$40
C - - - - - 0x01DA46 07:DA36: D0 02     BNE bra_DA3A
C - - - - - 0x01DA48 07:DA38: A0 16     LDY #$16
bra_DA3A:
C - - - - - 0x01DA4A 07:DA3A: 98        TYA
C - - - - - 0x01DA4B 07:DA3B: 18        CLC
C - - - - - 0x01DA4C 07:DA3C: 65 77     ADC ram_pos_X_lo
C - - - - - 0x01DA4E 07:DA3E: 85 81     STA ram_pos_X_lo + $0A
C - - - - - 0x01DA50 07:DA40: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01DA52 07:DA42: 69 00     ADC #$00
C - - - - - 0x01DA54 07:DA44: 85 8E     STA ram_pos_X_hi + $0A
C - - - - - 0x01DA56 07:DA46: EE A6 03  INC ram_039C_obj + $0A
C - - - - - 0x01DA59 07:DA49: AD A6 03  LDA ram_039C_obj + $0A
C - - - - - 0x01DA5C 07:DA4C: 29 0F     AND #$0F
C - - - - - 0x01DA5E 07:DA4E: 4A        LSR
C - - - - - 0x01DA5F 07:DA4F: 4A        LSR
C - - - - - 0x01DA60 07:DA50: 18        CLC
C - - - - - 0x01DA61 07:DA51: 69 9E     ADC #$9E
C - - - - - 0x01DA63 07:DA53: 85 67     STA ram_obj_anim_id + $0A
C - - - - - 0x01DA65 07:DA55: 60        RTS



sub_DA56:
C - - - - - 0x01DA66 07:DA56: A5 03     LDA ram_mission
C - - - - - 0x01DA68 07:DA58: C9 01     CMP #$01
C - - - - - 0x01DA6A 07:DA5A: F0 01     BEQ bra_DA5D
C - - - - - 0x01DA6C 07:DA5C: 60        RTS
bra_DA5D:
C - - - - - 0x01DA6D 07:DA5D: A9 00     LDA #$00
C - - - - - 0x01DA6F 07:DA5F: 85 E2     STA ram_00E2
C - - - - - 0x01DA71 07:DA61: A5 AB     LDA ram_00AB_obj
C - - - - - 0x01DA73 07:DA63: 4A        LSR
C - - - - - 0x01DA74 07:DA64: 26 E2     ROL ram_00E2
C - - - - - 0x01DA76 07:DA66: A5 9E     LDA ram_009E_obj
C - - - - - 0x01DA78 07:DA68: 4A        LSR
C - - - - - 0x01DA79 07:DA69: 26 E2     ROL ram_00E2
C - - - - - 0x01DA7B 07:DA6B: A5 E2     LDA ram_00E2
C - - - - - 0x01DA7D 07:DA6D: C9 01     CMP #$01
C - - - - - 0x01DA7F 07:DA6F: F0 05     BEQ bra_DA76
C - - - - - 0x01DA81 07:DA71: C9 02     CMP #$02
C - - - - - 0x01DA83 07:DA73: F0 1B     BEQ bra_DA90
C - - - - - 0x01DA85 07:DA75: 60        RTS
bra_DA76:
C - - - - - 0x01DA86 07:DA76: A5 9E     LDA ram_009E_obj
C - - - - - 0x01DA88 07:DA78: 29 02     AND #$02
C - - - - - 0x01DA8A 07:DA7A: D0 13     BNE bra_DA8F_RTS
C - - - - - 0x01DA8C 07:DA7C: A5 15     LDA ram_limit_scroll_X
C - - - - - 0x01DA8E 07:DA7E: F0 0F     BEQ bra_DA8F_RTS
C - - - - - 0x01DA90 07:DA80: C6 15     DEC ram_limit_scroll_X
C - - - - - 0x01DA92 07:DA82: 38        SEC
C - - - - - 0x01DA93 07:DA83: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01DA95 07:DA85: E9 01     SBC #< $0001
C - - - - - 0x01DA97 07:DA87: 85 77     STA ram_pos_X_lo
C - - - - - 0x01DA99 07:DA89: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01DA9B 07:DA8B: E9 00     SBC #> $0001
C - - - - - 0x01DA9D 07:DA8D: 85 84     STA ram_pos_X_hi
bra_DA8F_RTS:
C - - - - - 0x01DA9F 07:DA8F: 60        RTS
bra_DA90:
C - - - - - 0x01DAA0 07:DA90: A5 9E     LDA ram_009E_obj
C - - - - - 0x01DAA2 07:DA92: 29 04     AND #$04
C - - - - - 0x01DAA4 07:DA94: D0 47     BNE bra_DADD_RTS
C - - - - - 0x01DAA6 07:DA96: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01DAA8 07:DA98: C5 32     CMP ram_0032
C - - - - - 0x01DAAA 07:DA9A: 90 1C     BCC bra_DAB8
C - - - - - 0x01DAAC 07:DA9C: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01DAAE 07:DA9E: C9 74     CMP #$74
C - - - - - 0x01DAB0 07:DAA0: 90 16     BCC bra_DAB8
- - - - - - 0x01DAB2 07:DAA2: A5 15     LDA ram_limit_scroll_X
- - - - - - 0x01DAB4 07:DAA4: C9 E6     CMP #$E6
- - - - - - 0x01DAB6 07:DAA6: B0 35     BCS bra_DADD_RTS
- - - - - - 0x01DAB8 07:DAA8: E6 15     INC ram_limit_scroll_X
- - - - - - 0x01DABA 07:DAAA: 18        CLC
- - - - - - 0x01DABB 07:DAAB: A5 77     LDA ram_pos_X_lo
- - - - - - 0x01DABD 07:DAAD: 69 01     ADC #< $0001
- - - - - - 0x01DABF 07:DAAF: 85 77     STA ram_pos_X_lo
- - - - - - 0x01DAC1 07:DAB1: A5 84     LDA ram_pos_X_hi
- - - - - - 0x01DAC3 07:DAB3: 69 00     ADC #> $0001
- - - - - - 0x01DAC5 07:DAB5: 85 84     STA ram_pos_X_hi
- - - - - - 0x01DAC7 07:DAB7: 60        RTS
bra_DAB8:
C - - - - - 0x01DAC8 07:DAB8: 18        CLC
C - - - - - 0x01DAC9 07:DAB9: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01DACB 07:DABB: 69 01     ADC #< $0001
C - - - - - 0x01DACD 07:DABD: 85 77     STA ram_pos_X_lo
C - - - - - 0x01DACF 07:DABF: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01DAD1 07:DAC1: 69 00     ADC #> $0001
C - - - - - 0x01DAD3 07:DAC3: 85 84     STA ram_pos_X_hi
C - - - - - 0x01DAD5 07:DAC5: A5 15     LDA ram_limit_scroll_X
C - - - - - 0x01DAD7 07:DAC7: C9 74     CMP #$74
C - - - - - 0x01DAD9 07:DAC9: F0 03     BEQ bra_DACE
C - - - - - 0x01DADB 07:DACB: E6 15     INC ram_limit_scroll_X
C - - - - - 0x01DADD 07:DACD: 60        RTS
bra_DACE:
C - - - - - 0x01DADE 07:DACE: 18        CLC
C - - - - - 0x01DADF 07:DACF: A5 12     LDA ram_scroll_X
C - - - - - 0x01DAE1 07:DAD1: 69 01     ADC #< $0001
C - - - - - 0x01DAE3 07:DAD3: 85 12     STA ram_scroll_X
C - - - - - 0x01DAE5 07:DAD5: A5 14     LDA ram_base_nmt
C - - - - - 0x01DAE7 07:DAD7: 69 00     ADC #> $0001
C - - - - - 0x01DAE9 07:DAD9: 29 01     AND #$01
C - - - - - 0x01DAEB 07:DADB: 85 14     STA ram_base_nmt
bra_DADD_RTS:
C - - - - - 0x01DAED 07:DADD: 60        RTS



sub_DADE:
C - - - - - 0x01DAEE 07:DADE: A9 03     LDA #$03
C - - - - - 0x01DAF0 07:DAE0: A4 3B     LDY ram_003B
C - - - - - 0x01DAF2 07:DAE2: F0 04     BEQ bra_DAE8
C - - - - - 0x01DAF4 07:DAE4: C6 3B     DEC ram_003B
C - - - - - 0x01DAF6 07:DAE6: A9 00     LDA #$00
bra_DAE8:
C - - - - - 0x01DAF8 07:DAE8: 85 6A     STA ram_006A_obj
C - - - - - 0x01DAFA 07:DAEA: 60        RTS



sub_DAEB:
C - - - - - 0x01DAFB 07:DAEB: A2 03     LDX #$03
loc_DAED_loop:
C D 2 - - - 0x01DAFD 07:DAED: A9 00     LDA #$00
C - - - - - 0x01DAFF 07:DAEF: 95 9E     STA ram_009E_obj,X
C - - - - - 0x01DB01 07:DAF1: 95 AB     STA ram_00AB_obj,X
C - - - - - 0x01DB03 07:DAF3: B5 84     LDA ram_pos_X_hi,X
C - - - - - 0x01DB05 07:DAF5: 85 EB     STA ram_00EB
C - - - - - 0x01DB07 07:DAF7: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x01DB09 07:DAF9: 46 EB     LSR ram_00EB
C - - - - - 0x01DB0B 07:DAFB: 6A        ROR
C - - - - - 0x01DB0C 07:DAFC: 46 EB     LSR ram_00EB
C - - - - - 0x01DB0E 07:DAFE: 6A        ROR
C - - - - - 0x01DB0F 07:DAFF: 46 EB     LSR ram_00EB
C - - - - - 0x01DB11 07:DB01: 6A        ROR
C - - - - - 0x01DB12 07:DB02: 8D 49 06  STA ram_0649
C - - - - - 0x01DB15 07:DB05: 18        CLC
C - - - - - 0x01DB16 07:DB06: 85 E2     STA ram_00E2
C - - - - - 0x01DB18 07:DB08: 65 DC     ADC ram_00DC
C - - - - - 0x01DB1A 07:DB0A: 85 EA     STA ram_00EA
C - - - - - 0x01DB1C 07:DB0C: A5 EB     LDA ram_00EB
C - - - - - 0x01DB1E 07:DB0E: 85 E3     STA ram_00E3
C - - - - - 0x01DB20 07:DB10: 65 DD     ADC ram_00DC + $01
C - - - - - 0x01DB22 07:DB12: 85 EB     STA ram_00EB
C - - - - - 0x01DB24 07:DB14: 18        CLC
C - - - - - 0x01DB25 07:DB15: A5 E2     LDA ram_00E2
C - - - - - 0x01DB27 07:DB17: 65 DE     ADC ram_00DE
C - - - - - 0x01DB29 07:DB19: 85 EC     STA ram_00EC
C - - - - - 0x01DB2B 07:DB1B: A5 E3     LDA ram_00E3
C - - - - - 0x01DB2D 07:DB1D: 65 DF     ADC ram_00DE + $01
C - - - - - 0x01DB2F 07:DB1F: 85 ED     STA ram_00ED
C - - - - - 0x01DB31 07:DB21: 18        CLC
C - - - - - 0x01DB32 07:DB22: A5 E2     LDA ram_00E2
C - - - - - 0x01DB34 07:DB24: 65 E0     ADC ram_00E0
C - - - - - 0x01DB36 07:DB26: 85 EE     STA ram_00EE
C - - - - - 0x01DB38 07:DB28: A5 E3     LDA ram_00E3
C - - - - - 0x01DB3A 07:DB2A: 65 E1     ADC ram_00E0 + $01
C - - - - - 0x01DB3C 07:DB2C: 85 EF     STA ram_00EF
C - - - - - 0x01DB3E 07:DB2E: B5 91     LDA ram_pos_Y_lo,X
C - - - - - 0x01DB40 07:DB30: C9 40     CMP #$40
C - - - - - 0x01DB42 07:DB32: B0 03     BCS bra_DB37_40_FF
; 00-3F
C - - - - - 0x01DB44 07:DB34: 4C BB DB  JMP loc_DBBB
bra_DB37_40_FF:
C - - - - - 0x01DB47 07:DB37: C9 BE     CMP #$BE
C - - - - - 0x01DB49 07:DB39: 90 03     BCC bra_DB3E_40_BD
; BE-FF
C - - - - - 0x01DB4B 07:DB3B: 4C BB DB  JMP loc_DBBB
bra_DB3E_40_BD:
C - - - - - 0x01DB4E 07:DB3E: 38        SEC
C - - - - - 0x01DB4F 07:DB3F: E9 40     SBC #$40
C - - - - - 0x01DB51 07:DB41: 4A        LSR
C - - - - - 0x01DB52 07:DB42: 4A        LSR
C - - - - - 0x01DB53 07:DB43: 4A        LSR
C - - - - - 0x01DB54 07:DB44: 4A        LSR
C - - - - - 0x01DB55 07:DB45: 86 E3     STX ram_00E3
C - - - - - 0x01DB57 07:DB47: AA        TAX
C - - - - - 0x01DB58 07:DB48: BD C2 DB  LDA tbl_DBC2,X
C - - - - - 0x01DB5B 07:DB4B: 85 E2     STA ram_00E2
C - - - - - 0x01DB5D 07:DB4D: A6 E3     LDX ram_00E3
C - - - - - 0x01DB5F 07:DB4F: A9 00     LDA #$00
C - - - - - 0x01DB61 07:DB51: E0 00     CPX #$00
C - - - - - 0x01DB63 07:DB53: D0 0B     BNE bra_DB60
C - - - - - 0x01DB65 07:DB55: A0 03     LDY #$03
C - - - - - 0x01DB67 07:DB57: 11 EA     ORA (ram_00EA),Y
C - - - - - 0x01DB69 07:DB59: 88        DEY
C - - - - - 0x01DB6A 07:DB5A: 11 EA     ORA (ram_00EA),Y
C - - - - - 0x01DB6C 07:DB5C: A0 00     LDY #$00
C - - - - - 0x01DB6E 07:DB5E: 11 EA     ORA (ram_00EA),Y
bra_DB60:
C - - - - - 0x01DB70 07:DB60: A0 01     LDY #$01
C - - - - - 0x01DB72 07:DB62: 11 EA     ORA (ram_00EA),Y
C - - - - - 0x01DB74 07:DB64: 25 E2     AND ram_00E2
C - - - - - 0x01DB76 07:DB66: F0 06     BEQ bra_DB6E
C - - - - - 0x01DB78 07:DB68: B5 9E     LDA ram_009E_obj,X
C - - - - - 0x01DB7A 07:DB6A: 09 01     ORA #$01
C - - - - - 0x01DB7C 07:DB6C: 95 9E     STA ram_009E_obj,X
bra_DB6E:
C - - - - - 0x01DB7E 07:DB6E: A9 00     LDA #$00
C - - - - - 0x01DB80 07:DB70: E0 00     CPX #$00
C - - - - - 0x01DB82 07:DB72: D0 0B     BNE bra_DB7F
C - - - - - 0x01DB84 07:DB74: A0 03     LDY #$03
C - - - - - 0x01DB86 07:DB76: 11 EC     ORA (ram_00EC),Y
C - - - - - 0x01DB88 07:DB78: 88        DEY
C - - - - - 0x01DB89 07:DB79: 11 EC     ORA (ram_00EC),Y
C - - - - - 0x01DB8B 07:DB7B: A0 00     LDY #$00
C - - - - - 0x01DB8D 07:DB7D: 11 EC     ORA (ram_00EC),Y
bra_DB7F:
C - - - - - 0x01DB8F 07:DB7F: A0 01     LDY #$01
C - - - - - 0x01DB91 07:DB81: 11 EC     ORA (ram_00EC),Y
C - - - - - 0x01DB93 07:DB83: 25 E2     AND ram_00E2
C - - - - - 0x01DB95 07:DB85: F0 06     BEQ bra_DB8D
C - - - - - 0x01DB97 07:DB87: B5 AB     LDA ram_00AB_obj,X
C - - - - - 0x01DB99 07:DB89: 09 01     ORA #$01
C - - - - - 0x01DB9B 07:DB8B: 95 AB     STA ram_00AB_obj,X
bra_DB8D:
C - - - - - 0x01DB9D 07:DB8D: E0 00     CPX #$00
C - - - - - 0x01DB9F 07:DB8F: D0 0C     BNE bra_DB9D
C - - - - - 0x01DBA1 07:DB91: A5 91     LDA ram_pos_Y_lo
C - - - - - 0x01DBA3 07:DB93: C9 BC     CMP #$BC
C - - - - - 0x01DBA5 07:DB95: 90 06     BCC bra_DB9D
C - - - - - 0x01DBA7 07:DB97: A9 80     LDA #$80
C - - - - - 0x01DBA9 07:DB99: 85 E2     STA ram_00E2
C - - - - - 0x01DBAB 07:DB9B: D0 02     BNE bra_DB9F    ; jmp
bra_DB9D:
C - - - - - 0x01DBAD 07:DB9D: 46 E2     LSR ram_00E2
bra_DB9F:
C - - - - - 0x01DBAF 07:DB9F: A0 00     LDY #$00
C - - - - - 0x01DBB1 07:DBA1: B1 EE     LDA (ram_00EE),Y
C - - - - - 0x01DBB3 07:DBA3: 25 E2     AND ram_00E2
C - - - - - 0x01DBB5 07:DBA5: F0 06     BEQ bra_DBAD
C - - - - - 0x01DBB7 07:DBA7: B5 9E     LDA ram_009E_obj,X
C - - - - - 0x01DBB9 07:DBA9: 09 02     ORA #$02
C - - - - - 0x01DBBB 07:DBAB: 95 9E     STA ram_009E_obj,X
bra_DBAD:
C - - - - - 0x01DBBD 07:DBAD: A0 03     LDY #$03
C - - - - - 0x01DBBF 07:DBAF: B1 EE     LDA (ram_00EE),Y
C - - - - - 0x01DBC1 07:DBB1: 25 E2     AND ram_00E2
C - - - - - 0x01DBC3 07:DBB3: F0 06     BEQ bra_DBBB
C - - - - - 0x01DBC5 07:DBB5: B5 9E     LDA ram_009E_obj,X
C - - - - - 0x01DBC7 07:DBB7: 09 04     ORA #$04
C - - - - - 0x01DBC9 07:DBB9: 95 9E     STA ram_009E_obj,X
bra_DBBB:
loc_DBBB:
C D 2 - - - 0x01DBCB 07:DBBB: CA        DEX
C - - - - - 0x01DBCC 07:DBBC: 30 03     BMI bra_DBC1_RTS
C - - - - - 0x01DBCE 07:DBBE: 4C ED DA  JMP loc_DAED_loop
bra_DBC1_RTS:
C - - - - - 0x01DBD1 07:DBC1: 60        RTS



tbl_DBC2:
- D 2 - - - 0x01DBD2 07:DBC2: 01        .byte $01   ; 40 
- D 2 - - - 0x01DBD3 07:DBC3: 02        .byte $02   ; 50 
- D 2 - - - 0x01DBD4 07:DBC4: 04        .byte $04   ; 60 
- D 2 - - - 0x01DBD5 07:DBC5: 08        .byte $08   ; 70 
- D 2 - - - 0x01DBD6 07:DBC6: 10        .byte $10   ; 80 
- D 2 - - - 0x01DBD7 07:DBC7: 20        .byte $20   ; 90 
- D 2 - - - 0x01DBD8 07:DBC8: 40        .byte $40   ; A0 
- D 2 - - - 0x01DBD9 07:DBC9: 80        .byte $80   ; B0 



sub_DBCA:
C - - - - - 0x01DBDA 07:DBCA: AD 47 06  LDA ram_0647
C - - - - - 0x01DBDD 07:DBCD: F0 01     BEQ bra_DBD0
C - - - - - 0x01DBDF 07:DBCF: 60        RTS
bra_DBD0:
C - - - - - 0x01DBE0 07:DBD0: A5 1C     LDA ram_weapon_upgrade_fire
C - - - - - 0x01DBE2 07:DBD2: AC 59 06  LDY ram_weapon_type
C - - - - - 0x01DBE5 07:DBD5: F0 05     BEQ bra_DBDC_fire
; if missiles
C - - - - - 0x01DBE7 07:DBD7: A5 1D     LDA ram_weapon_upgrade_missile
C - - - - - 0x01DBE9 07:DBD9: 18        CLC
C - - - - - 0x01DBEA 07:DBDA: 69 03     ADC #$03
bra_DBDC_fire:
C - - - - - 0x01DBEC 07:DBDC: 8D 5A 06  STA ram_065A
C - - - - - 0x01DBEF 07:DBDF: A8        TAY
C - - - - - 0x01DBF0 07:DBE0: F0 12     BEQ bra_DBF4_00_fire
C - - - - - 0x01DBF2 07:DBE2: 88        DEY
C - - - - - 0x01DBF3 07:DBE3: F0 17     BEQ bra_DBFC_01_rapid
C - - - - - 0x01DBF5 07:DBE5: 88        DEY
C - - - - - 0x01DBF6 07:DBE6: D0 03     BNE bra_DBEB
; 02
C - - - - - 0x01DBF8 07:DBE8: 4C 59 DC  JMP loc_DC59_02_3_way
bra_DBEB:
C - - - - - 0x01DBFB 07:DBEB: 88        DEY
C - - - - - 0x01DBFC 07:DBEC: F0 16     BEQ bra_DC04_03_missile
C - - - - - 0x01DBFE 07:DBEE: 88        DEY
C - - - - - 0x01DBFF 07:DBEF: F0 2E     BEQ bra_DC1F_04_homing
C - - - - - 0x01DC01 07:DBF1: 4C FA DC  JMP loc_DCFA_05_bang
bra_DBF4_00_fire:
C - - - - - 0x01DC04 07:DBF4: A2 03     LDX #$03
C - - - - - 0x01DC06 07:DBF6: A9 0F     LDA #$0F
C - - - - - 0x01DC08 07:DBF8: 85 3E     STA ram_003E
C - - - - - 0x01DC0A 07:DBFA: D0 32     BNE bra_DC2E    ; jmp
bra_DBFC_01_rapid:
C - - - - - 0x01DC0C 07:DBFC: A2 03     LDX #$03
C - - - - - 0x01DC0E 07:DBFE: A9 06     LDA #$06
C - - - - - 0x01DC10 07:DC00: 85 3E     STA ram_003E
C - - - - - 0x01DC12 07:DC02: D0 2A     BNE bra_DC2E    ; jmp
bra_DC04_03_missile:
C - - - - - 0x01DC14 07:DC04: A0 00     LDY #$00
C - - - - - 0x01DC16 07:DC06: A5 49     LDA ram_0049
C - - - - - 0x01DC18 07:DC08: 30 06     BMI bra_DC10
C - - - - - 0x01DC1A 07:DC0A: 08        PHP
C - - - - - 0x01DC1B 07:DC0B: C8        INY
C - - - - - 0x01DC1C 07:DC0C: 28        PLP
C - - - - - 0x01DC1D 07:DC0D: F0 01     BEQ bra_DC10
- - - - - - 0x01DC1F 07:DC0F: C8        INY
bra_DC10:
C - - - - - 0x01DC20 07:DC10: A5 50     LDA ram_0050_obj_flags
C - - - - - 0x01DC22 07:DC12: 29 40     AND #$40
C - - - - - 0x01DC24 07:DC14: D0 05     BNE bra_DC1B
C - - - - - 0x01DC26 07:DC16: 98        TYA
C - - - - - 0x01DC27 07:DC17: 18        CLC
C - - - - - 0x01DC28 07:DC18: 69 03     ADC #$03
C - - - - - 0x01DC2A 07:DC1A: A8        TAY
bra_DC1B:
C - - - - - 0x01DC2B 07:DC1B: B9 40 DF  LDA tbl_DF40,Y
C - - - - - 0x01DC2E 07:DC1E: A8        TAY
bra_DC1F_04_homing:
C - - - - - 0x01DC2F 07:DC1F: A5 54     LDA ram_0050_obj_flags + $04
C - - - - - 0x01DC31 07:DC21: F0 01     BEQ bra_DC24
C - - - - - 0x01DC33 07:DC23: 60        RTS
bra_DC24:
C - - - - - 0x01DC34 07:DC24: A9 02     LDA #con_sound_02
C - - - - - 0x01DC36 07:DC26: 85 47     STA ram_sound
C - - - - - 0x01DC38 07:DC28: A2 0F     LDX #$0F
C - - - - - 0x01DC3A 07:DC2A: A9 1E     LDA #$1E
C - - - - - 0x01DC3C 07:DC2C: 85 3E     STA ram_003E
bra_DC2E:
C - - - - - 0x01DC3E 07:DC2E: 86 E2     STX ram_00E2
C - - - - - 0x01DC40 07:DC30: A2 04     LDX #$04
bra_DC32_loop:
C - - - - - 0x01DC42 07:DC32: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01DC44 07:DC34: F0 06     BEQ bra_DC3C
C - - - - - 0x01DC46 07:DC36: E8        INX
C - - - - - 0x01DC47 07:DC37: E0 07     CPX #$07
C - - - - - 0x01DC49 07:DC39: 90 F7     BCC bra_DC32_loop
C - - - - - 0x01DC4B 07:DC3B: 60        RTS
bra_DC3C:
C - - - - - 0x01DC4C 07:DC3C: 98        TYA
C - - - - - 0x01DC4D 07:DC3D: 9D 9C 03  STA ram_039C_obj,X
C - - - - - 0x01DC50 07:DC40: AD 5A 06  LDA ram_065A
C - - - - - 0x01DC53 07:DC43: 95 B8     STA ram_obj_id,X
C - - - - - 0x01DC55 07:DC45: 20 2C DD  JSR sub_DD2C
C - - - - - 0x01DC58 07:DC48: A5 3E     LDA ram_003E
C - - - - - 0x01DC5A 07:DC4A: 8D 47 06  STA ram_0647
C - - - - - 0x01DC5D 07:DC4D: AD 5A 06  LDA ram_065A
C - - - - - 0x01DC60 07:DC50: C9 03     CMP #$03
C - - - - - 0x01DC62 07:DC52: B0 04     BCS bra_DC58_RTS
loc_DC54:
C D 2 - - - 0x01DC64 07:DC54: A9 01     LDA #con_sound_01
C - - - - - 0x01DC66 07:DC56: 85 47     STA ram_sound
bra_DC58_RTS:
C - - - - - 0x01DC68 07:DC58: 60        RTS



loc_DC59_02_3_way:
C D 2 - - - 0x01DC69 07:DC59: A2 05     LDX #$05
C - - - - - 0x01DC6B 07:DC5B: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01DC6D 07:DC5D: F0 01     BEQ bra_DC60
C - - - - - 0x01DC6F 07:DC5F: 60        RTS
bra_DC60:
C - - - - - 0x01DC70 07:DC60: 20 2C DD  JSR sub_DD2C
C - - - - - 0x01DC73 07:DC63: A9 02     LDA #$02
C - - - - - 0x01DC75 07:DC65: 85 BC     STA ram_obj_id + $04
C - - - - - 0x01DC77 07:DC67: 85 BD     STA ram_obj_id + $05
C - - - - - 0x01DC79 07:DC69: 85 BE     STA ram_obj_id + $06
C - - - - - 0x01DC7B 07:DC6B: A5 7C     LDA ram_pos_X_lo + $05
C - - - - - 0x01DC7D 07:DC6D: 85 7B     STA ram_pos_X_lo + $04
C - - - - - 0x01DC7F 07:DC6F: 85 7D     STA ram_pos_X_lo + $06
C - - - - - 0x01DC81 07:DC71: A5 89     LDA ram_pos_X_hi + $05
C - - - - - 0x01DC83 07:DC73: 85 88     STA ram_pos_X_hi + $04
C - - - - - 0x01DC85 07:DC75: 85 8A     STA ram_pos_X_hi + $06
C - - - - - 0x01DC87 07:DC77: A5 96     LDA ram_pos_Y_lo + $05
C - - - - - 0x01DC89 07:DC79: 85 95     STA ram_pos_Y_lo + $04
C - - - - - 0x01DC8B 07:DC7B: 85 97     STA ram_pos_Y_lo + $06
C - - - - - 0x01DC8D 07:DC7D: AD 60 03  LDA ram_035B_obj + $05
C - - - - - 0x01DC90 07:DC80: 8D 5F 03  STA ram_035B_obj + $04
C - - - - - 0x01DC93 07:DC83: 8D 61 03  STA ram_035B_obj + $06
C - - - - - 0x01DC96 07:DC86: 85 C9     STA ram_00C5_obj + $04
C - - - - - 0x01DC98 07:DC88: 85 CB     STA ram_00C5_obj + $06
C - - - - - 0x01DC9A 07:DC8A: A9 03     LDA #$03
C - - - - - 0x01DC9C 07:DC8C: 85 61     STA ram_obj_anim_id + $04
C - - - - - 0x01DC9E 07:DC8E: 85 62     STA ram_obj_anim_id + $05
C - - - - - 0x01DCA0 07:DC90: 85 63     STA ram_obj_anim_id + $06
C - - - - - 0x01DCA2 07:DC92: A0 00     LDY #$00
C - - - - - 0x01DCA4 07:DC94: A5 49     LDA ram_0049
C - - - - - 0x01DCA6 07:DC96: 30 08     BMI bra_DCA0
C - - - - - 0x01DCA8 07:DC98: A0 03     LDY #$03
C - - - - - 0x01DCAA 07:DC9A: A5 49     LDA ram_0049
C - - - - - 0x01DCAC 07:DC9C: F0 02     BEQ bra_DCA0
C - - - - - 0x01DCAE 07:DC9E: A0 06     LDY #$06
bra_DCA0:
C - - - - - 0x01DCB0 07:DCA0: B9 F1 DC  LDA tbl_DCF1,Y
C - - - - - 0x01DCB3 07:DCA3: 8D 79 03  STA ram_0375_obj + $04
C - - - - - 0x01DCB6 07:DCA6: 8D 6C 03  STA ram_0368_obj + $04
C - - - - - 0x01DCB9 07:DCA9: B9 F2 DC  LDA tbl_DCF1 + $01,Y
C - - - - - 0x01DCBC 07:DCAC: 8D 7A 03  STA ram_0375_obj + $05
C - - - - - 0x01DCBF 07:DCAF: 8D 6D 03  STA ram_0368_obj + $05
C - - - - - 0x01DCC2 07:DCB2: B9 F3 DC  LDA tbl_DCF1 + $02,Y
C - - - - - 0x01DCC5 07:DCB5: 8D 7B 03  STA ram_0375_obj + $06
C - - - - - 0x01DCC8 07:DCB8: 8D 6E 03  STA ram_0368_obj + $06
C - - - - - 0x01DCCB 07:DCBB: A5 CA     LDA ram_00C5_obj + $05
C - - - - - 0x01DCCD 07:DCBD: 39 E8 DC  AND tbl_DCE8,Y
C - - - - - 0x01DCD0 07:DCC0: 85 C9     STA ram_00C5_obj + $04
C - - - - - 0x01DCD2 07:DCC2: 8D 5F 03  STA ram_035B_obj + $04
C - - - - - 0x01DCD5 07:DCC5: A5 CA     LDA ram_00C5_obj + $05
C - - - - - 0x01DCD7 07:DCC7: 39 E9 DC  AND tbl_DCE8 + $01,Y
C - - - - - 0x01DCDA 07:DCCA: 85 CA     STA ram_00C5_obj + $05
C - - - - - 0x01DCDC 07:DCCC: 8D 60 03  STA ram_035B_obj + $05
C - - - - - 0x01DCDF 07:DCCF: A5 CA     LDA ram_00C5_obj + $05
C - - - - - 0x01DCE1 07:DCD1: 39 EA DC  AND tbl_DCE8 + $02,Y
C - - - - - 0x01DCE4 07:DCD4: 85 CB     STA ram_00C5_obj + $06
C - - - - - 0x01DCE6 07:DCD6: 8D 61 03  STA ram_035B_obj + $06
C - - - - - 0x01DCE9 07:DCD9: A9 00     LDA #$00
C - - - - - 0x01DCEB 07:DCDB: 85 6E     STA ram_006A_obj + $04
C - - - - - 0x01DCED 07:DCDD: 85 70     STA ram_006A_obj + $06
C - - - - - 0x01DCEF 07:DCDF: A9 01     LDA #$01
C - - - - - 0x01DCF1 07:DCE1: 85 54     STA ram_0050_obj_flags + $04
C - - - - - 0x01DCF3 07:DCE3: 85 56     STA ram_0050_obj_flags + $06
C - - - - - 0x01DCF5 07:DCE5: 4C 54 DC  JMP loc_DC54



tbl_DCE8:
; 00 
- D 2 - - - 0x01DCF8 07:DCE8: 00        .byte $00   ; 
- D 2 - - - 0x01DCF9 07:DCE9: FF        .byte $FF   ; 
- D 2 - - - 0x01DCFA 07:DCEA: FF        .byte $FF   ; 
; 03 
- D 2 - - - 0x01DCFB 07:DCEB: FF        .byte $FF   ; 
- D 2 - - - 0x01DCFC 07:DCEC: FF        .byte $FF   ; 
- D 2 - - - 0x01DCFD 07:DCED: FF        .byte $FF   ; 
; 06 
- D 2 - - - 0x01DCFE 07:DCEE: FF        .byte $FF   ; 
- D 2 - - - 0x01DCFF 07:DCEF: FF        .byte $FF   ; 
- D 2 - - - 0x01DD00 07:DCF0: 00        .byte $00   ; 



tbl_DCF1:
; 00 
- D 2 - - - 0x01DD01 07:DCF1: FC        .byte $FC   ; 
- D 2 - - - 0x01DD02 07:DCF2: FC        .byte $FC   ; 
- D 2 - - - 0x01DD03 07:DCF3: 00        .byte $00   ; 
; 03 
- D 2 - - - 0x01DD04 07:DCF4: FC        .byte $FC   ; 
- D 2 - - - 0x01DD05 07:DCF5: 00        .byte $00   ; 
- D 2 - - - 0x01DD06 07:DCF6: 04        .byte $04   ; 
; 06 
- D 2 - - - 0x01DD07 07:DCF7: 00        .byte $00   ; 
- D 2 - - - 0x01DD08 07:DCF8: 04        .byte $04   ; 
- D 2 - - - 0x01DD09 07:DCF9: 04        .byte $04   ; 



loc_DCFA_05_bang:
C D 2 - - - 0x01DD0A 07:DCFA: A2 02     LDX #$02
bra_DCFC_loop:
C - - - - - 0x01DD0C 07:DCFC: B5 51     LDA ram_0050_obj_flags + $01,X
C - - - - - 0x01DD0E 07:DCFE: F0 11     BEQ bra_DD11
C - - - - - 0x01DD10 07:DD00: A9 00     LDA #$00
C - - - - - 0x01DD12 07:DD02: 9D C4 03  STA ram_03C4,X
C - - - - - 0x01DD15 07:DD05: A9 08     LDA #$08
C - - - - - 0x01DD17 07:DD07: 9D 5C 03  STA ram_035B_obj + $01,X
C - - - - - 0x01DD1A 07:DD0A: 95 C6     STA ram_00C5_obj + $01,X
C - - - - - 0x01DD1C 07:DD0C: A9 00     LDA #$00
C - - - - - 0x01DD1E 07:DD0E: 9D C4 03  STA ram_03C4,X
bra_DD11:
C - - - - - 0x01DD21 07:DD11: CA        DEX
C - - - - - 0x01DD22 07:DD12: 10 E8     BPL bra_DCFC_loop
C - - - - - 0x01DD24 07:DD14: CE 63 06  DEC ram_ammo_missile + $02
C - - - - - 0x01DD27 07:DD17: D0 02     BNE bra_DD1B
C - - - - - 0x01DD29 07:DD19: C6 1D     DEC ram_weapon_upgrade_missile
bra_DD1B:
C - - - - - 0x01DD2B 07:DD1B: A9 03     LDA #con_sound_03
C - - - - - 0x01DD2D 07:DD1D: 85 47     STA ram_sound
C - - - - - 0x01DD2F 07:DD1F: A9 32     LDA #$32
C - - - - - 0x01DD31 07:DD21: 8D 45 06  STA ram_0645
C - - - - - 0x01DD34 07:DD24: A9 28     LDA #$28
C - - - - - 0x01DD36 07:DD26: 85 3E     STA ram_003E
C - - - - - 0x01DD38 07:DD28: 8D 47 06  STA ram_0647
C - - - - - 0x01DD3B 07:DD2B: 60        RTS



sub_DD2C:
C - - - - - 0x01DD3C 07:DD2C: 86 E7     STX ram_00E7
C - - - - - 0x01DD3E 07:DD2E: AD 59 06  LDA ram_weapon_type
C - - - - - 0x01DD41 07:DD31: D0 0E     BNE bra_DD41_missiles
; if fire
C - - - - - 0x01DD43 07:DD33: A6 1C     LDX ram_weapon_upgrade_fire
C - - - - - 0x01DD45 07:DD35: F0 15     BEQ bra_DD4C
C - - - - - 0x01DD47 07:DD37: DE 5E 06  DEC ram_ammo_bullet,X
C - - - - - 0x01DD4A 07:DD3A: D0 10     BNE bra_DD4C
C - - - - - 0x01DD4C 07:DD3C: C6 1C     DEC ram_weapon_upgrade_fire
C - - - - - 0x01DD4E 07:DD3E: 4C 4C DD  JMP loc_DD4C
bra_DD41_missiles:
C - - - - - 0x01DD51 07:DD41: A6 1D     LDX ram_weapon_upgrade_missile
C - - - - - 0x01DD53 07:DD43: F0 07     BEQ bra_DD4C
C - - - - - 0x01DD55 07:DD45: DE 61 06  DEC ram_ammo_missile,X
C - - - - - 0x01DD58 07:DD48: D0 02     BNE bra_DD4C
C - - - - - 0x01DD5A 07:DD4A: C6 1D     DEC ram_weapon_upgrade_missile
bra_DD4C:
loc_DD4C:
C D 2 - - - 0x01DD5C 07:DD4C: A6 E7     LDX ram_00E7
C - - - - - 0x01DD5E 07:DD4E: A9 0A     LDA #$0A
C - - - - - 0x01DD60 07:DD50: 85 4C     STA ram_004C
C - - - - - 0x01DD62 07:DD52: A9 04     LDA #$04
C - - - - - 0x01DD64 07:DD54: 8D 56 06  STA ram_0656
C - - - - - 0x01DD67 07:DD57: A9 00     LDA #$00
C - - - - - 0x01DD69 07:DD59: 95 6A     STA ram_006A_obj,X
C - - - - - 0x01DD6B 07:DD5B: 18        CLC
C - - - - - 0x01DD6C 07:DD5C: A5 91     LDA ram_pos_Y_lo
C - - - - - 0x01DD6E 07:DD5E: 6D 57 06  ADC ram_0657
C - - - - - 0x01DD71 07:DD61: 95 91     STA ram_pos_Y_lo,X
C - - - - - 0x01DD73 07:DD63: A5 49     LDA ram_0049
C - - - - - 0x01DD75 07:DD65: 9D 75 03  STA ram_0375_obj,X
C - - - - - 0x01DD78 07:DD68: 9D 68 03  STA ram_0368_obj,X
C - - - - - 0x01DD7B 07:DD6B: A5 E2     LDA ram_00E2
C - - - - - 0x01DD7D 07:DD6D: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01DD7F 07:DD6F: A5 50     LDA ram_0050_obj_flags
C - - - - - 0x01DD81 07:DD71: 29 40     AND #$40
C - - - - - 0x01DD83 07:DD73: 08        PHP
C - - - - - 0x01DD84 07:DD74: 09 01     ORA #$01
C - - - - - 0x01DD86 07:DD76: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01DD88 07:DD78: 28        PLP
C - - - - - 0x01DD89 07:DD79: F0 15     BEQ bra_DD90
C - - - - - 0x01DD8B 07:DD7B: A9 04     LDA #$04
C - - - - - 0x01DD8D 07:DD7D: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01DD90 07:DD80: 95 C5     STA ram_00C5_obj,X
C - - - - - 0x01DD92 07:DD82: 18        CLC
C - - - - - 0x01DD93 07:DD83: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01DD95 07:DD85: 69 1E     ADC #< $001E
C - - - - - 0x01DD97 07:DD87: 95 77     STA ram_pos_X_lo,X
C - - - - - 0x01DD99 07:DD89: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01DD9B 07:DD8B: 69 00     ADC #> $001E
C - - - - - 0x01DD9D 07:DD8D: 95 84     STA ram_pos_X_hi,X
C - - - - - 0x01DD9F 07:DD8F: 60        RTS
bra_DD90:
C - - - - - 0x01DDA0 07:DD90: A9 FC     LDA #$FC
C - - - - - 0x01DDA2 07:DD92: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01DDA5 07:DD95: 95 C5     STA ram_00C5_obj,X
C - - - - - 0x01DDA7 07:DD97: 38        SEC
C - - - - - 0x01DDA8 07:DD98: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01DDAA 07:DD9A: E9 06     SBC #< $0006
C - - - - - 0x01DDAC 07:DD9C: 95 77     STA ram_pos_X_lo,X
C - - - - - 0x01DDAE 07:DD9E: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01DDB0 07:DDA0: E9 00     SBC #> $0006
C - - - - - 0x01DDB2 07:DDA2: 95 84     STA ram_pos_X_hi,X
C - - - - - 0x01DDB4 07:DDA4: 60        RTS



sub_DDA5:
C - - - - - 0x01DDB5 07:DDA5: AD 47 06  LDA ram_0647
C - - - - - 0x01DDB8 07:DDA8: F0 03     BEQ bra_DDAD
C - - - - - 0x01DDBA 07:DDAA: CE 47 06  DEC ram_0647
bra_DDAD:
C - - - - - 0x01DDBD 07:DDAD: A2 04     LDX #$04
bra_DDAF_loop:
C - - - - - 0x01DDBF 07:DDAF: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01DDC1 07:DDB1: F0 2E     BEQ bra_DDE1
C - - - - - 0x01DDC3 07:DDB3: B5 91     LDA ram_pos_Y_lo,X
C - - - - - 0x01DDC5 07:DDB5: C9 D8     CMP #$D8
C - - - - - 0x01DDC7 07:DDB7: B0 2E     BCS bra_DDE7
C - - - - - 0x01DDC9 07:DDB9: C9 3C     CMP #$3C
C - - - - - 0x01DDCB 07:DDBB: B0 09     BCS bra_DDC6
C - - - - - 0x01DDCD 07:DDBD: 20 F6 DD  JSR sub_DDF6
C - - - - - 0x01DDD0 07:DDC0: A9 00     LDA #$00
C - - - - - 0x01DDD2 07:DDC2: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01DDD4 07:DDC4: F0 1B     BEQ bra_DDE1    ; jmp
bra_DDC6:
C - - - - - 0x01DDD6 07:DDC6: B4 B8     LDY ram_obj_id,X
C - - - - - 0x01DDD8 07:DDC8: 30 17     BMI bra_DDE1    ; if 80+
C - - - - - 0x01DDDA 07:DDCA: F0 39     BEQ bra_DE05_00
C - - - - - 0x01DDDC 07:DDCC: 88        DEY
C - - - - - 0x01DDDD 07:DDCD: F0 39     BEQ bra_DE08_01
C - - - - - 0x01DDDF 07:DDCF: 88        DEY
C - - - - - 0x01DDE0 07:DDD0: F0 39     BEQ bra_DE0B_02
C - - - - - 0x01DDE2 07:DDD2: 88        DEY
C - - - - - 0x01DDE3 07:DDD3: F0 39     BEQ bra_DE0E_03
C - - - - - 0x01DDE5 07:DDD5: 88        DEY
C - - - - - 0x01DDE6 07:DDD6: F0 42     BEQ bra_DE1A_04
C - - - - - 0x01DDE8 07:DDD8: 88        DEY
C - - - - - 0x01DDE9 07:DDD9: F0 39     BEQ bra_DE14_05
C - - - - - 0x01DDEB 07:DDDB: 88        DEY
C - - - - - 0x01DDEC 07:DDDC: F0 39     BEQ bra_DE17_06
; 07
loc_DDDE:
C D 2 - - - 0x01DDEE 07:DDDE: 20 43 EC  JSR sub_EC43
bra_DDE1:
loc_DDE1:
C D 2 - - - 0x01DDF1 07:DDE1: E8        INX
C - - - - - 0x01DDF2 07:DDE2: E0 07     CPX #$07
C - - - - - 0x01DDF4 07:DDE4: D0 C9     BNE bra_DDAF_loop
C - - - - - 0x01DDF6 07:DDE6: 60        RTS
bra_DDE7:
C - - - - - 0x01DDF7 07:DDE7: B5 B8     LDA ram_obj_id,X
C - - - - - 0x01DDF9 07:DDE9: C9 07     CMP #$07
C - - - - - 0x01DDFB 07:DDEB: F0 D9     BEQ bra_DDC6
C - - - - - 0x01DDFD 07:DDED: 20 F6 DD  JSR sub_DDF6
C - - - - - 0x01DE00 07:DDF0: 20 28 EC  JSR sub_EC28
C - - - - - 0x01DE03 07:DDF3: 4C DE DD  JMP loc_DDDE



sub_DDF6:
C - - - - - 0x01DE06 07:DDF6: B5 B8     LDA ram_obj_id,X
C - - - - - 0x01DE08 07:DDF8: C9 03     CMP #$03
C - - - - - 0x01DE0A 07:DDFA: 90 08     BCC bra_DE04_RTS
C - - - - - 0x01DE0C 07:DDFC: C9 05     CMP #$05
C - - - - - 0x01DE0E 07:DDFE: B0 04     BCS bra_DE04_RTS
C - - - - - 0x01DE10 07:DE00: A9 00     LDA #$00
C - - - - - 0x01DE12 07:DE02: 85 55     STA ram_0050_obj_flags + $05
bra_DE04_RTS:
C - - - - - 0x01DE14 07:DE04: 60        RTS



bra_DE05_00:
C - - - - - 0x01DE15 07:DE05: 4C E1 DD  JMP loc_DDE1



bra_DE08_01:
C - - - - - 0x01DE18 07:DE08: 4C E1 DD  JMP loc_DDE1



bra_DE0B_02:
C - - - - - 0x01DE1B 07:DE0B: 4C E1 DD  JMP loc_DDE1



bra_DE0E_03:
C - - - - - 0x01DE1E 07:DE0E: AC A0 03  LDY ram_039C_obj + $04
C - - - - - 0x01DE21 07:DE11: 4C 99 DE  JMP loc_DE99



bra_DE14_05:
- - - - - - 0x01DE24 07:DE14: 4C E1 DD  JMP loc_DDE1



bra_DE17_06:
- - - - - - 0x01DE27 07:DE17: 4C E1 DD  JMP loc_DDE1



bra_DE1A_04:
C - - - - - 0x01DE2A 07:DE1A: AC A0 03  LDY ram_039C_obj + $04
C - - - - - 0x01DE2D 07:DE1D: F0 0A     BEQ bra_DE29
C - - - - - 0x01DE2F 07:DE1F: B9 50 00  LDA ram_0050_obj_flags,Y
C - - - - - 0x01DE32 07:DE22: F0 05     BEQ bra_DE29
C - - - - - 0x01DE34 07:DE24: B9 41 03  LDA ram_0341,Y
C - - - - - 0x01DE37 07:DE27: D0 0F     BNE bra_DE38
bra_DE29:
C - - - - - 0x01DE39 07:DE29: A0 03     LDY #$03
bra_DE2B_loop:
C - - - - - 0x01DE3B 07:DE2B: B9 50 00  LDA ram_0050_obj_flags,Y
C - - - - - 0x01DE3E 07:DE2E: F0 05     BEQ bra_DE35
C - - - - - 0x01DE40 07:DE30: B9 41 03  LDA ram_0341,Y
C - - - - - 0x01DE43 07:DE33: D0 03     BNE bra_DE38
bra_DE35:
C - - - - - 0x01DE45 07:DE35: 88        DEY
C - - - - - 0x01DE46 07:DE36: D0 F3     BNE bra_DE2B_loop
bra_DE38:
C - - - - - 0x01DE48 07:DE38: 8C A0 03  STY ram_039C_obj + $04
C - - - - - 0x01DE4B 07:DE3B: A9 04     LDA #$04
C - - - - - 0x01DE4D 07:DE3D: 85 E2     STA ram_00E2
C - - - - - 0x01DE4F 07:DE3F: A9 03     LDA #$03
C - - - - - 0x01DE51 07:DE41: 85 E3     STA ram_00E3
C - - - - - 0x01DE53 07:DE43: 38        SEC
C - - - - - 0x01DE54 07:DE44: B9 77 00  LDA ram_pos_X_lo,Y
C - - - - - 0x01DE57 07:DE47: E5 7B     SBC ram_pos_X_lo + $04
C - - - - - 0x01DE59 07:DE49: B9 84 00  LDA ram_pos_X_hi,Y
C - - - - - 0x01DE5C 07:DE4C: E5 88     SBC ram_pos_X_hi + $04
C - - - - - 0x01DE5E 07:DE4E: B0 04     BCS bra_DE54
C - - - - - 0x01DE60 07:DE50: A9 FC     LDA #$FC
C - - - - - 0x01DE62 07:DE52: 85 E2     STA ram_00E2
bra_DE54:
C - - - - - 0x01DE64 07:DE54: 18        CLC
C - - - - - 0x01DE65 07:DE55: B9 91 00  LDA ram_pos_Y_lo,Y
C - - - - - 0x01DE68 07:DE58: 69 1E     ADC #$1E
C - - - - - 0x01DE6A 07:DE5A: 38        SEC
C - - - - - 0x01DE6B 07:DE5B: E5 95     SBC ram_pos_Y_lo + $04
C - - - - - 0x01DE6D 07:DE5D: 08        PHP
C - - - - - 0x01DE6E 07:DE5E: B9 91 00  LDA ram_pos_Y_lo,Y
C - - - - - 0x01DE71 07:DE61: 29 F8     AND #$F8
C - - - - - 0x01DE73 07:DE63: 85 E4     STA ram_00E4
C - - - - - 0x01DE75 07:DE65: A5 95     LDA ram_pos_Y_lo + $04
C - - - - - 0x01DE77 07:DE67: 29 F8     AND #$F8
C - - - - - 0x01DE79 07:DE69: C5 E4     CMP ram_00E4
C - - - - - 0x01DE7B 07:DE6B: D0 07     BNE bra_DE74
C - - - - - 0x01DE7D 07:DE6D: 28        PLP
C - - - - - 0x01DE7E 07:DE6E: A9 00     LDA #$00
C - - - - - 0x01DE80 07:DE70: 85 E3     STA ram_00E3
C - - - - - 0x01DE82 07:DE72: F0 07     BEQ bra_DE7B    ; jmp
bra_DE74:
C - - - - - 0x01DE84 07:DE74: 28        PLP
C - - - - - 0x01DE85 07:DE75: B0 04     BCS bra_DE7B
C - - - - - 0x01DE87 07:DE77: A9 FD     LDA #$FD
C - - - - - 0x01DE89 07:DE79: 85 E3     STA ram_00E3
bra_DE7B:
C - - - - - 0x01DE8B 07:DE7B: A5 E2     LDA ram_00E2
C - - - - - 0x01DE8D 07:DE7D: 8D 5F 03  STA ram_035B_obj + $04
C - - - - - 0x01DE90 07:DE80: A5 E3     LDA ram_00E3
C - - - - - 0x01DE92 07:DE82: 8D 79 03  STA ram_0375_obj + $04
C - - - - - 0x01DE95 07:DE85: A0 00     LDY #$00
C - - - - - 0x01DE97 07:DE87: A5 C9     LDA ram_00C5_obj + $04
C - - - - - 0x01DE99 07:DE89: 10 02     BPL bra_DE8D
C - - - - - 0x01DE9B 07:DE8B: A0 09     LDY #$09
bra_DE8D:
C - - - - - 0x01DE9D 07:DE8D: 84 E2     STY ram_00E2
C - - - - - 0x01DE9F 07:DE8F: 18        CLC
C - - - - - 0x01DEA0 07:DE90: AD 6C 03  LDA ram_0368_obj + $04
C - - - - - 0x01DEA3 07:DE93: 69 04     ADC #$04
C - - - - - 0x01DEA5 07:DE95: 18        CLC
C - - - - - 0x01DEA6 07:DE96: 65 E2     ADC ram_00E2
C - - - - - 0x01DEA8 07:DE98: A8        TAY
loc_DE99:
C D 2 - - - 0x01DEA9 07:DE99: B9 F8 DE  LDA tbl_DEF8,Y
C - - - - - 0x01DEAC 07:DE9C: 85 61     STA ram_obj_anim_id + $04
C - - - - - 0x01DEAE 07:DE9E: B9 0A DF  LDA tbl_DF0A,Y
C - - - - - 0x01DEB1 07:DEA1: 85 54     STA ram_0050_obj_flags + $04
C - - - - - 0x01DEB3 07:DEA3: B9 1C DF  LDA tbl_DF1C,Y
C - - - - - 0x01DEB6 07:DEA6: 30 0E     BMI bra_DEB6
C - - - - - 0x01DEB8 07:DEA8: 18        CLC
C - - - - - 0x01DEB9 07:DEA9: 65 7B     ADC ram_pos_X_lo + $04
C - - - - - 0x01DEBB 07:DEAB: 85 7C     STA ram_pos_X_lo + $05
C - - - - - 0x01DEBD 07:DEAD: A5 88     LDA ram_pos_X_hi + $04
C - - - - - 0x01DEBF 07:DEAF: 69 00     ADC #$00
C - - - - - 0x01DEC1 07:DEB1: 85 89     STA ram_pos_X_hi + $05
C - - - - - 0x01DEC3 07:DEB3: 4C CA DE  JMP loc_DECA
bra_DEB6:
C - - - - - 0x01DEC6 07:DEB6: 49 FF     EOR #$FF
C - - - - - 0x01DEC8 07:DEB8: 18        CLC
C - - - - - 0x01DEC9 07:DEB9: 69 01     ADC #$01
C - - - - - 0x01DECB 07:DEBB: 85 E2     STA ram_00E2
C - - - - - 0x01DECD 07:DEBD: 38        SEC
C - - - - - 0x01DECE 07:DEBE: A5 7B     LDA ram_pos_X_lo + $04
C - - - - - 0x01DED0 07:DEC0: E5 E2     SBC ram_00E2
C - - - - - 0x01DED2 07:DEC2: 85 7C     STA ram_pos_X_lo + $05
C - - - - - 0x01DED4 07:DEC4: A5 88     LDA ram_pos_X_hi + $04
C - - - - - 0x01DED6 07:DEC6: E9 00     SBC #$00
C - - - - - 0x01DED8 07:DEC8: 85 89     STA ram_pos_X_hi + $05
loc_DECA:
C D 2 - - - 0x01DEDA 07:DECA: 18        CLC
C - - - - - 0x01DEDB 07:DECB: B9 2E DF  LDA tbl_DF2E,Y
C - - - - - 0x01DEDE 07:DECE: 65 95     ADC ram_pos_Y_lo + $04
C - - - - - 0x01DEE0 07:DED0: 85 96     STA ram_pos_Y_lo + $05
C - - - - - 0x01DEE2 07:DED2: CE AD 03  DEC ram_03A9_obj + $04
C - - - - - 0x01DEE5 07:DED5: AD AD 03  LDA ram_03A9_obj + $04
C - - - - - 0x01DEE8 07:DED8: 4A        LSR
C - - - - - 0x01DEE9 07:DED9: 4A        LSR
C - - - - - 0x01DEEA 07:DEDA: 29 01     AND #$01
C - - - - - 0x01DEEC 07:DEDC: 18        CLC
C - - - - - 0x01DEED 07:DEDD: 69 04     ADC #$04
C - - - - - 0x01DEEF 07:DEDF: 85 62     STA ram_obj_anim_id + $05
C - - - - - 0x01DEF1 07:DEE1: A9 01     LDA #$01
C - - - - - 0x01DEF3 07:DEE3: 85 55     STA ram_0050_obj_flags + $05
C - - - - - 0x01DEF5 07:DEE5: A9 00     LDA #$00
C - - - - - 0x01DEF7 07:DEE7: 85 6F     STA ram_006A_obj + $05
C - - - - - 0x01DEF9 07:DEE9: A9 FF     LDA #$FF
C - - - - - 0x01DEFB 07:DEEB: 85 BD     STA ram_obj_id + $05
C - - - - - 0x01DEFD 07:DEED: A5 C9     LDA ram_00C5_obj + $04
C - - - - - 0x01DEFF 07:DEEF: 85 CA     STA ram_00C5_obj + $05
C - - - - - 0x01DF01 07:DEF1: A9 03     LDA #$03
C - - - - - 0x01DF03 07:DEF3: 85 6E     STA ram_006A_obj + $04
C - - - - - 0x01DF05 07:DEF5: 4C E1 DD  JMP loc_DDE1



tbl_DEF8:
; 00 
- D 2 - - - 0x01DF08 07:DEF8: 0B        .byte $0B   ; 
- D 2 - - - 0x01DF09 07:DEF9: 0C        .byte $0C   ; 
- D 2 - - - 0x01DF0A 07:DEFA: 0D        .byte $0D   ; 
- D 2 - - - 0x01DF0B 07:DEFB: 0E        .byte $0E   ; 
- D 2 - - - 0x01DF0C 07:DEFC: 0F        .byte $0F   ; 
- D 2 - - - 0x01DF0D 07:DEFD: 0E        .byte $0E   ; 
- D 2 - - - 0x01DF0E 07:DEFE: 0D        .byte $0D   ; 
- D 2 - - - 0x01DF0F 07:DEFF: 0C        .byte $0C   ; 
- - - - - - 0x01DF10 07:DF00: 0B        .byte $0B   ; 
; 09 
- - - - - - 0x01DF11 07:DF01: 0B        .byte $0B   ; 
- D 2 - - - 0x01DF12 07:DF02: 0C        .byte $0C   ; 
- D 2 - - - 0x01DF13 07:DF03: 0D        .byte $0D   ; 
- D 2 - - - 0x01DF14 07:DF04: 0E        .byte $0E   ; 
- D 2 - - - 0x01DF15 07:DF05: 0F        .byte $0F   ; 
- D 2 - - - 0x01DF16 07:DF06: 0E        .byte $0E   ; 
- D 2 - - - 0x01DF17 07:DF07: 0D        .byte $0D   ; 
- D 2 - - - 0x01DF18 07:DF08: 0C        .byte $0C   ; 
- - - - - - 0x01DF19 07:DF09: 0B        .byte $0B   ; 



tbl_DF0A:
; 00 
- D 2 - - - 0x01DF1A 07:DF0A: 01        .byte $01   ; 
- D 2 - - - 0x01DF1B 07:DF0B: 01        .byte $01   ; 
- D 2 - - - 0x01DF1C 07:DF0C: 01        .byte $01   ; 
- D 2 - - - 0x01DF1D 07:DF0D: 01        .byte $01   ; 
- D 2 - - - 0x01DF1E 07:DF0E: 01        .byte $01   ; 
- D 2 - - - 0x01DF1F 07:DF0F: 81        .byte $81   ; 
- D 2 - - - 0x01DF20 07:DF10: 81        .byte $81   ; 
- D 2 - - - 0x01DF21 07:DF11: 81        .byte $81   ; 
- - - - - - 0x01DF22 07:DF12: 81        .byte $81   ; 
; 09 
- - - - - - 0x01DF23 07:DF13: 01        .byte $01   ; 
- D 2 - - - 0x01DF24 07:DF14: 41        .byte $41   ; 
- D 2 - - - 0x01DF25 07:DF15: 41        .byte $41   ; 
- D 2 - - - 0x01DF26 07:DF16: 41        .byte $41   ; 
- D 2 - - - 0x01DF27 07:DF17: C1        .byte $C1   ; 
- D 2 - - - 0x01DF28 07:DF18: C1        .byte $C1   ; 
- D 2 - - - 0x01DF29 07:DF19: C1        .byte $C1   ; 
- D 2 - - - 0x01DF2A 07:DF1A: 81        .byte $81   ; 
- - - - - - 0x01DF2B 07:DF1B: 81        .byte $81   ; 



tbl_DF1C:
; 00 
- D 2 - - - 0x01DF2C 07:DF1C: 00        .byte $00   ; 
- D 2 - - - 0x01DF2D 07:DF1D: FE        .byte $FE   ; 
- D 2 - - - 0x01DF2E 07:DF1E: FC        .byte $FC   ; 
- D 2 - - - 0x01DF2F 07:DF1F: FB        .byte $FB   ; 
- D 2 - - - 0x01DF30 07:DF20: FA        .byte $FA   ; 
- D 2 - - - 0x01DF31 07:DF21: FB        .byte $FB   ; 
- D 2 - - - 0x01DF32 07:DF22: FC        .byte $FC   ; 
- D 2 - - - 0x01DF33 07:DF23: FE        .byte $FE   ; 
- - - - - - 0x01DF34 07:DF24: 00        .byte $00   ; 
; 09 
- - - - - - 0x01DF35 07:DF25: 00        .byte $00   ; 
- D 2 - - - 0x01DF36 07:DF26: 02        .byte $02   ; 
- D 2 - - - 0x01DF37 07:DF27: 04        .byte $04   ; 
- D 2 - - - 0x01DF38 07:DF28: 05        .byte $05   ; 
- D 2 - - - 0x01DF39 07:DF29: 06        .byte $06   ; 
- D 2 - - - 0x01DF3A 07:DF2A: 05        .byte $05   ; 
- D 2 - - - 0x01DF3B 07:DF2B: 04        .byte $04   ; 
- D 2 - - - 0x01DF3C 07:DF2C: 02        .byte $02   ; 
- - - - - - 0x01DF3D 07:DF2D: 00        .byte $00   ; 



tbl_DF2E:
; 00 
- D 2 - - - 0x01DF3E 07:DF2E: 06        .byte $06   ; 
- D 2 - - - 0x01DF3F 07:DF2F: 05        .byte $05   ; 
- D 2 - - - 0x01DF40 07:DF30: 04        .byte $04   ; 
- D 2 - - - 0x01DF41 07:DF31: 02        .byte $02   ; 
- D 2 - - - 0x01DF42 07:DF32: 00        .byte $00   ; 
- D 2 - - - 0x01DF43 07:DF33: FE        .byte $FE   ; 
- D 2 - - - 0x01DF44 07:DF34: FC        .byte $FC   ; 
- D 2 - - - 0x01DF45 07:DF35: FB        .byte $FB   ; 
- - - - - - 0x01DF46 07:DF36: FA        .byte $FA   ; 
; 09 
- - - - - - 0x01DF47 07:DF37: 06        .byte $06   ; 
- D 2 - - - 0x01DF48 07:DF38: 05        .byte $05   ; 
- D 2 - - - 0x01DF49 07:DF39: 04        .byte $04   ; 
- D 2 - - - 0x01DF4A 07:DF3A: 02        .byte $02   ; 
- D 2 - - - 0x01DF4B 07:DF3B: 00        .byte $00   ; 
- D 2 - - - 0x01DF4C 07:DF3C: FE        .byte $FE   ; 
- D 2 - - - 0x01DF4D 07:DF3D: FC        .byte $FC   ; 
- D 2 - - - 0x01DF4E 07:DF3E: FB        .byte $FB   ; 
- - - - - - 0x01DF4F 07:DF3F: FA        .byte $FA   ; 



tbl_DF40:
- D 2 - - - 0x01DF50 07:DF40: 02        .byte $02   ; 
- D 2 - - - 0x01DF51 07:DF41: 04        .byte $04   ; 
- - - - - - 0x01DF52 07:DF42: 06        .byte $06   ; 
- - - - - - 0x01DF53 07:DF43: 0B        .byte $0B   ; 
- D 2 - - - 0x01DF54 07:DF44: 0D        .byte $0D   ; 
- - - - - - 0x01DF55 07:DF45: 0F        .byte $0F   ; 



sub_DF46:
C - - - - - 0x01DF56 07:DF46: AD 7F 06  LDA ram_067F
C - - - - - 0x01DF59 07:DF49: D0 3C     BNE bra_DF87
C - - - - - 0x01DF5B 07:DF4B: A0 00     LDY #$00
C - - - - - 0x01DF5D 07:DF4D: B1 0C     LDA (ram_000C),Y
C - - - - - 0x01DF5F 07:DF4F: C9 FF     CMP #$FF
C - - - - - 0x01DF61 07:DF51: F0 31     BEQ bra_DF84_FF
C - - - - - 0x01DF63 07:DF53: CD 49 06  CMP ram_0649
C - - - - - 0x01DF66 07:DF56: F0 6F     BEQ bra_DFC7
C - - - - - 0x01DF68 07:DF58: 60        RTS



bra_DF59:
C - - - - - 0x01DF69 07:DF59: C9 FF     CMP #$FF
C - - - - - 0x01DF6B 07:DF5B: D0 0D     BNE bra_DF6A
; FF
C - - - - - 0x01DF6D 07:DF5D: A0 02     LDY #$02
C - - - - - 0x01DF6F 07:DF5F: B1 0C     LDA (ram_000C),Y
; A = 10-12
C - - - - - 0x01DF71 07:DF61: 85 2C     STA ram_002C_chr_bank
C - - - - - 0x01DF73 07:DF63: 85 2D     STA ram_002C_chr_bank + $01
C - - - - - 0x01DF75 07:DF65: 85 2E     STA ram_002C_chr_bank + $02
C - - - - - 0x01DF77 07:DF67: 4C 8F E0  JMP loc_E08F
bra_DF6A:
C - - - - - 0x01DF7A 07:DF6A: A0 02     LDY #$02
C - - - - - 0x01DF7C 07:DF6C: B1 0C     LDA (ram_000C),Y
C - - - - - 0x01DF7E 07:DF6E: 0A        ASL
C - - - - - 0x01DF7F 07:DF6F: 0A        ASL
C - - - - - 0x01DF80 07:DF70: 0A        ASL
C - - - - - 0x01DF81 07:DF71: 0A        ASL
C - - - - - 0x01DF82 07:DF72: A8        TAY
C - - - - - 0x01DF83 07:DF73: A2 00     LDX #$00
bra_DF75_loop:
C - - - - - 0x01DF85 07:DF75: B9 4D FC  LDA tbl_FC4D,Y
C - - - - - 0x01DF88 07:DF78: 9D 65 06  STA ram_0665,X
C - - - - - 0x01DF8B 07:DF7B: C8        INY
C - - - - - 0x01DF8C 07:DF7C: E8        INX
C - - - - - 0x01DF8D 07:DF7D: E0 10     CPX #$10
C - - - - - 0x01DF8F 07:DF7F: 90 F4     BCC bra_DF75_loop
C - - - - - 0x01DF91 07:DF81: 4C 8F E0  JMP loc_E08F
bra_DF84_FF:
C - - - - - 0x01DF94 07:DF84: EE 7F 06  INC ram_067F
bra_DF87:
C - - - - - 0x01DF97 07:DF87: AD 80 06  LDA ram_0680
C - - - - - 0x01DF9A 07:DF8A: D0 01     BNE bra_DF8D
C - - - - - 0x01DF9C 07:DF8C: 60        RTS
bra_DF8D:
C - - - - - 0x01DF9D 07:DF8D: A2 02     LDX #$02
bra_DF8F_loop:
C - - - - - 0x01DF9F 07:DF8F: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01DFA1 07:DF91: F0 04     BEQ bra_DF97
C - - - - - 0x01DFA3 07:DF93: CA        DEX
C - - - - - 0x01DFA4 07:DF94: D0 F9     BNE bra_DF8F_loop
C - - - - - 0x01DFA6 07:DF96: 60        RTS
bra_DF97:
C - - - - - 0x01DFA7 07:DF97: A5 03     LDA ram_mission
C - - - - - 0x01DFA9 07:DF99: 0A        ASL
C - - - - - 0x01DFAA 07:DF9A: 85 E4     STA ram_00E4
C - - - - - 0x01DFAC 07:DF9C: A5 37     LDA ram_random
C - - - - - 0x01DFAE 07:DF9E: 29 01     AND #$01
C - - - - - 0x01DFB0 07:DFA0: 05 E4     ORA ram_00E4
C - - - - - 0x01DFB2 07:DFA2: A8        TAY
C - - - - - 0x01DFB3 07:DFA3: B9 43 FC  LDA tbl_FC43,Y
C - - - - - 0x01DFB6 07:DFA6: 85 E4     STA ram_00E4
C - - - - - 0x01DFB8 07:DFA8: A4 03     LDY ram_mission
C - - - - - 0x01DFBA 07:DFAA: A9 70     LDA #$70
C - - - - - 0x01DFBC 07:DFAC: 85 E3     STA ram_00E3
C - - - - - 0x01DFBE 07:DFAE: A9 50     LDA #$50
C - - - - - 0x01DFC0 07:DFB0: 85 E6     STA ram_00E6
C - - - - - 0x01DFC2 07:DFB2: B9 3E FC  LDA tbl_FC3E,Y
C - - - - - 0x01DFC5 07:DFB5: 85 E7     STA ram_00E7
C - - - - - 0x01DFC7 07:DFB7: A0 0A     LDY #$0A
C - - - - - 0x01DFC9 07:DFB9: A5 37     LDA ram_random
C - - - - - 0x01DFCB 07:DFBB: 30 02     BMI bra_DFBF
C - - - - - 0x01DFCD 07:DFBD: A0 88     LDY #$88
bra_DFBF:
C - - - - - 0x01DFCF 07:DFBF: 84 E2     STY ram_00E2
C - - - - - 0x01DFD1 07:DFC1: CE 80 06  DEC ram_0680
C - - - - - 0x01DFD4 07:DFC4: 4C 0B E0  JMP loc_E00B



bra_DFC7:
sub_DFC7:
C - - - - - 0x01DFD7 07:DFC7: A0 01     LDY #$01
C - - - - - 0x01DFD9 07:DFC9: B1 0C     LDA (ram_000C),Y
C - - - - - 0x01DFDB 07:DFCB: 30 8C     BMI bra_DF59
C - - - - - 0x01DFDD 07:DFCD: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01DFDF 07:DFCF: 85 E6     STA ram_00E6
C - - - - - 0x01DFE1 07:DFD1: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01DFE3 07:DFD3: 85 E7     STA ram_00E7
C - - - - - 0x01DFE5 07:DFD5: A0 03     LDY #$03
C - - - - - 0x01DFE7 07:DFD7: B1 0C     LDA (ram_000C),Y
C - - - - - 0x01DFE9 07:DFD9: 85 E2     STA ram_00E2
C - - - - - 0x01DFEB 07:DFDB: 88        DEY ; 02
C - - - - - 0x01DFEC 07:DFDC: B1 0C     LDA (ram_000C),Y
C - - - - - 0x01DFEE 07:DFDE: 85 E3     STA ram_00E3
C - - - - - 0x01DFF0 07:DFE0: 88        DEY ; 01
C - - - - - 0x01DFF1 07:DFE1: B1 0C     LDA (ram_000C),Y
C - - - - - 0x01DFF3 07:DFE3: 85 E4     STA ram_00E4    ; obj id
C - - - - - 0x01DFF5 07:DFE5: C9 21     CMP #$21
C - - - - - 0x01DFF7 07:DFE7: B0 0C     BCS bra_DFF5
C - - - - - 0x01DFF9 07:DFE9: A2 03     LDX #$03
bra_DFEB_loop:
C - - - - - 0x01DFFB 07:DFEB: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01DFFD 07:DFED: F0 1C     BEQ bra_E00B
C - - - - - 0x01DFFF 07:DFEF: CA        DEX
C - - - - - 0x01E000 07:DFF0: D0 F9     BNE bra_DFEB_loop
C - - - - - 0x01E002 07:DFF2: 4C 8F E0  JMP loc_E08F
bra_DFF5:
C - - - - - 0x01E005 07:DFF5: C9 28     CMP #$28
C - - - - - 0x01E007 07:DFF7: 90 08     BCC bra_E001
C - - - - - 0x01E009 07:DFF9: A2 0C     LDX #$0C
C - - - - - 0x01E00B 07:DFFB: 95 B8     STA ram_obj_id,X
C - - - - - 0x01E00D 07:DFFD: A8        TAY
C - - - - - 0x01E00E 07:DFFE: 4C 2C E0  JMP loc_E02C
bra_E001:
C - - - - - 0x01E011 07:E001: C9 24     CMP #con_obj_id_24
C - - - - - 0x01E013 07:E003: D0 04     BNE bra_E009
C - - - - - 0x01E015 07:E005: A2 0A     LDX #$0A
C - - - - - 0x01E017 07:E007: D0 02     BNE bra_E00B    ; jmp
bra_E009:
C - - - - - 0x01E019 07:E009: A2 0B     LDX #$0B
bra_E00B:
loc_E00B:
C D 3 - - - 0x01E01B 07:E00B: A5 E4     LDA ram_00E4
C - - - - - 0x01E01D 07:E00D: 95 B8     STA ram_obj_id,X
C - - - - - 0x01E01F 07:E00F: A8        TAY
C - - - - - 0x01E020 07:E010: A5 E3     LDA ram_00E3
C - - - - - 0x01E022 07:E012: 18        CLC
C - - - - - 0x01E023 07:E013: 69 40     ADC #$40
C - - - - - 0x01E025 07:E015: 95 91     STA ram_pos_Y_lo,X
C - - - - - 0x01E027 07:E017: B9 A7 FB  LDA tbl_FBA7,Y
C - - - - - 0x01E02A 07:E01A: 95 6A     STA ram_006A_obj,X
C - - - - - 0x01E02C 07:E01C: B9 55 FB  LDA tbl_FB55,Y
C - - - - - 0x01E02F 07:E01F: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E031 07:E021: B9 D0 FB  LDA tbl_FBD0,Y
C - - - - - 0x01E034 07:E024: 9D C3 03  STA ram_03C3,X
C - - - - - 0x01E037 07:E027: B9 7E FB  LDA tbl_FB7E,Y
C - - - - - 0x01E03A 07:E02A: 95 50     STA ram_0050_obj_flags,X
loc_E02C:
C D 3 - - - 0x01E03C 07:E02C: A5 03     LDA ram_mission
C - - - - - 0x01E03E 07:E02E: C9 03     CMP #$03
C - - - - - 0x01E040 07:E030: D0 10     BNE bra_E042
C - - - - - 0x01E042 07:E032: 38        SEC
C - - - - - 0x01E043 07:E033: A5 E6     LDA ram_00E6
C - - - - - 0x01E045 07:E035: E9 84     SBC #< $0084
C - - - - - 0x01E047 07:E037: 95 77     STA ram_pos_X_lo,X
C - - - - - 0x01E049 07:E039: A5 E7     LDA ram_00E7
C - - - - - 0x01E04B 07:E03B: E9 00     SBC #> $0084
C - - - - - 0x01E04D 07:E03D: 95 84     STA ram_pos_X_hi,X
C - - - - - 0x01E04F 07:E03F: 4C 4F E0  JMP loc_E04F
bra_E042:
C - - - - - 0x01E052 07:E042: 18        CLC
C - - - - - 0x01E053 07:E043: A5 E6     LDA ram_00E6
C - - - - - 0x01E055 07:E045: 69 8E     ADC #< $008E
C - - - - - 0x01E057 07:E047: 95 77     STA ram_pos_X_lo,X
C - - - - - 0x01E059 07:E049: A5 E7     LDA ram_00E7
C - - - - - 0x01E05B 07:E04B: 69 00     ADC #> $008E
C - - - - - 0x01E05D 07:E04D: 95 84     STA ram_pos_X_hi,X
loc_E04F:
C D 3 - - - 0x01E05F 07:E04F: A5 E2     LDA ram_00E2
C - - - - - 0x01E061 07:E051: 30 0F     BMI bra_E062
C - - - - - 0x01E063 07:E053: 0A        ASL
C - - - - - 0x01E064 07:E054: 18        CLC
C - - - - - 0x01E065 07:E055: 75 77     ADC ram_pos_X_lo,X
C - - - - - 0x01E067 07:E057: 95 77     STA ram_pos_X_lo,X
C - - - - - 0x01E069 07:E059: B5 84     LDA ram_pos_X_hi,X
C - - - - - 0x01E06B 07:E05B: 69 00     ADC #$00
C - - - - - 0x01E06D 07:E05D: 95 84     STA ram_pos_X_hi,X
C - - - - - 0x01E06F 07:E05F: 4C 77 E0  JMP loc_E077
bra_E062:
C - - - - - 0x01E072 07:E062: 49 FF     EOR #$FF
C - - - - - 0x01E074 07:E064: 18        CLC
C - - - - - 0x01E075 07:E065: 69 01     ADC #$01
C - - - - - 0x01E077 07:E067: 0A        ASL
C - - - - - 0x01E078 07:E068: 85 E2     STA ram_00E2
C - - - - - 0x01E07A 07:E06A: 38        SEC
C - - - - - 0x01E07B 07:E06B: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x01E07D 07:E06D: E5 E2     SBC ram_00E2
C - - - - - 0x01E07F 07:E06F: 95 77     STA ram_pos_X_lo,X
C - - - - - 0x01E081 07:E071: B5 84     LDA ram_pos_X_hi,X
C - - - - - 0x01E083 07:E073: E9 00     SBC #$00
C - - - - - 0x01E085 07:E075: 95 84     STA ram_pos_X_hi,X
loc_E077:
C D 3 - - - 0x01E087 07:E077: A9 00     LDA #$00
C - - - - - 0x01E089 07:E079: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01E08C 07:E07C: 95 C5     STA ram_00C5_obj,X
C - - - - - 0x01E08E 07:E07E: 9D 75 03  STA ram_0375_obj,X
C - - - - - 0x01E091 07:E081: 9D 68 03  STA ram_0368_obj,X
C - - - - - 0x01E094 07:E084: 9D 9C 03  STA ram_039C_obj,X
C - - - - - 0x01E097 07:E087: 9D A9 03  STA ram_03A9_obj,X
C - - - - - 0x01E09A 07:E08A: A9 01     LDA #$01
C - - - - - 0x01E09C 07:E08C: 9D 41 03  STA ram_0341,X
loc_E08F:
C D 3 - - - 0x01E09F 07:E08F: 18        CLC
C - - - - - 0x01E0A0 07:E090: A5 0C     LDA ram_000C
C - - - - - 0x01E0A2 07:E092: 69 04     ADC #< $0004
C - - - - - 0x01E0A4 07:E094: 85 0C     STA ram_000C
C - - - - - 0x01E0A6 07:E096: A5 0D     LDA ram_000D
C - - - - - 0x01E0A8 07:E098: 69 00     ADC #> $0004
C - - - - - 0x01E0AA 07:E09A: 85 0D     STA ram_000D
C - - - - - 0x01E0AC 07:E09C: 60        RTS



sub_E09D_enemies_handler:
C - - - - - 0x01E0AD 07:E09D: A2 03     LDX #$03
bra_E09F_loop:
C - - - - - 0x01E0AF 07:E09F: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E0B1 07:E0A1: F0 13     BEQ bra_E0B6_not_exist
C - - - - - 0x01E0B3 07:E0A3: B5 B8     LDA ram_obj_id,X
C - - - - - 0x01E0B5 07:E0A5: 0A        ASL
C - - - - - 0x01E0B6 07:E0A6: A8        TAY
C - - - - - 0x01E0B7 07:E0A7: B9 BD E0  LDA tbl_E0BD,Y
C - - - - - 0x01E0BA 07:E0AA: 8D 00 06  STA ram_0600
C - - - - - 0x01E0BD 07:E0AD: B9 BE E0  LDA tbl_E0BD + $01,Y
C - - - - - 0x01E0C0 07:E0B0: 8D 01 06  STA ram_0601
C - - - - - 0x01E0C3 07:E0B3: 6C 00 06  JMP (ram_0600)
bra_E0B6_not_exist:
loc_E0B6_handle_next_enemy:
C D 3 - - - 0x01E0C6 07:E0B6: CA        DEX
C - - - - - 0x01E0C7 07:E0B7: D0 E6     BNE bra_E09F_loop
C - - - - - 0x01E0C9 07:E0B9: 20 03 ED  JSR sub_ED03
C - - - - - 0x01E0CC 07:E0BC: 60        RTS



tbl_E0BD:
- D 3 - - - 0x01E0CD 07:E0BD: FF E0     .word ofs_004_E0FF_00
- D 3 - - - 0x01E0CF 07:E0BF: 2B E2     .word ofs_004_E22B_01
- D 3 - - - 0x01E0D1 07:E0C1: 71 E3     .word ofs_004_E371_02
- D 3 - - - 0x01E0D3 07:E0C3: 2E E4     .word ofs_004_E42E_03
- D 3 - - - 0x01E0D5 07:E0C5: 2F E2     .word ofs_004_E22F_04
- D 3 - - - 0x01E0D7 07:E0C7: 05 E1     .word ofs_004_E105_05
- D 3 - - - 0x01E0D9 07:E0C9: 33 E2     .word ofs_004_E233_06
- D 3 - - - 0x01E0DB 07:E0CB: 77 E3     .word ofs_004_E377_07
- D 3 - - - 0x01E0DD 07:E0CD: 32 E4     .word ofs_004_E432_08
- D 3 - - - 0x01E0DF 07:E0CF: 37 E2     .word ofs_004_E237_09
- D 3 - - - 0x01E0E1 07:E0D1: BB E6     .word ofs_004_E6BB_0A
- D 3 - - - 0x01E0E3 07:E0D3: 65 E3     .word ofs_004_E365_0B
- - - - - - 0x01E0E5 07:E0D5: 6B E3     .word ofs_004_E36B_0C
- D 3 - - - 0x01E0E7 07:E0D7: F3 E0     .word ofs_004_E0F3_0D
- D 3 - - - 0x01E0E9 07:E0D9: F9 E0     .word ofs_004_E0F9_0E
- D 3 - - - 0x01E0EB 07:E0DB: 2A E4     .word ofs_004_E42A_0F
- D 3 - - - 0x01E0ED 07:E0DD: EE E4     .word ofs_004_E4EE_10
- - - - - - 0x01E0EF 07:E0DF: F4 E4     .word ofs_004_E4F4_11
- D 3 - - - 0x01E0F1 07:E0E1: EE E4     .word ofs_004_E4EE_12
- D 3 - - - 0x01E0F3 07:E0E3: F4 E4     .word ofs_004_E4F4_13
- D 3 - - - 0x01E0F5 07:E0E5: 6C E5     .word ofs_004_E56C_14
- D 3 - - - 0x01E0F7 07:E0E7: 0E EA     .word ofs_004_EA0E_15
- D 3 - - - 0x01E0F9 07:E0E9: 9D EB     .word ofs_004_EB9D_16
- D 3 - - - 0x01E0FB 07:E0EB: 68 E5     .word ofs_004_E568_17
- D 3 - - - 0x01E0FD 07:E0ED: 2F E6     .word ofs_004_E62F_18
- D 3 - - - 0x01E0FF 07:E0EF: 5F E3     .word ofs_004_E35F_19
- D 3 - - - 0x01E101 07:E0F1: 0E EC     .word ofs_004_EC0E_1A



ofs_004_E0F3_0D:
C - - J - - 0x01E103 07:E0F3: A9 71     LDA #$71
C - - - - - 0x01E105 07:E0F5: A0 71     LDY #$71
C - - - - - 0x01E107 07:E0F7: D0 10     BNE bra_E109    ; jmp



ofs_004_E0F9_0E:
C - - J - - 0x01E109 07:E0F9: A9 77     LDA #$77
C - - - - - 0x01E10B 07:E0FB: A0 77     LDY #$77
C - - - - - 0x01E10D 07:E0FD: D0 0A     BNE bra_E109    ; jmp



ofs_004_E0FF_00:
C - - J - - 0x01E10F 07:E0FF: A9 2E     LDA #$2E
C - - - - - 0x01E111 07:E101: A0 38     LDY #$38
C - - - - - 0x01E113 07:E103: D0 04     BNE bra_E109    ; jmp



ofs_004_E105_05:
C - - J - - 0x01E115 07:E105: A9 2F     LDA #$2F
C - - - - - 0x01E117 07:E107: A0 3E     LDY #$3E
bra_E109:
C - - - - - 0x01E119 07:E109: 85 E6     STA ram_00E6
C - - - - - 0x01E11B 07:E10B: 84 E3     STY ram_00E3
C - - - - - 0x01E11D 07:E10D: C8        INY
C - - - - - 0x01E11E 07:E10E: C8        INY
C - - - - - 0x01E11F 07:E10F: C8        INY
C - - - - - 0x01E120 07:E110: C8        INY
C - - - - - 0x01E121 07:E111: 84 E4     STY ram_00E4
C - - - - - 0x01E123 07:E113: C8        INY
C - - - - - 0x01E124 07:E114: 84 E5     STY ram_00E5
C - - - - - 0x01E126 07:E116: BD C3 03  LDA ram_03C3,X
C - - - - - 0x01E129 07:E119: D0 07     BNE bra_E122
C - - - - - 0x01E12B 07:E11B: A5 E6     LDA ram_00E6
C - - - - - 0x01E12D 07:E11D: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E12F 07:E11F: 4C 28 E2  JMP loc_E228_handle_next_enemy
bra_E122:
C - - - - - 0x01E132 07:E122: B5 9E     LDA ram_009E_obj,X
C - - - - - 0x01E134 07:E124: 29 01     AND #$01
C - - - - - 0x01E136 07:E126: D0 08     BNE bra_E130
C - - - - - 0x01E138 07:E128: BD 75 03  LDA ram_0375_obj,X
C - - - - - 0x01E13B 07:E12B: F0 51     BEQ bra_E17E
C - - - - - 0x01E13D 07:E12D: 4C 28 E2  JMP loc_E228_handle_next_enemy
bra_E130:
C - - - - - 0x01E140 07:E130: B5 91     LDA ram_pos_Y_lo,X
C - - - - - 0x01E142 07:E132: C9 A0     CMP #$A0
C - - - - - 0x01E144 07:E134: B0 03     BCS bra_E139
C - - - - - 0x01E146 07:E136: 4C 28 E2  JMP loc_E228_handle_next_enemy
bra_E139:
C - - - - - 0x01E149 07:E139: A9 00     LDA #$00
C - - - - - 0x01E14B 07:E13B: 9D 75 03  STA ram_0375_obj,X
C - - - - - 0x01E14E 07:E13E: 9D 68 03  STA ram_0368_obj,X
C - - - - - 0x01E151 07:E141: B5 91     LDA ram_pos_Y_lo,X
C - - - - - 0x01E153 07:E143: 29 F0     AND #$F0
C - - - - - 0x01E155 07:E145: 95 91     STA ram_pos_Y_lo,X
C - - - - - 0x01E157 07:E147: B5 C5     LDA ram_00C5_obj,X
C - - - - - 0x01E159 07:E149: D0 1D     BNE bra_E168
C - - - - - 0x01E15B 07:E14B: DE A9 03  DEC ram_03A9_obj,X
C - - - - - 0x01E15E 07:E14E: 30 03     BMI bra_E153
C - - - - - 0x01E160 07:E150: 4C 28 E2  JMP loc_E228_handle_next_enemy
bra_E153:
C - - - - - 0x01E163 07:E153: B5 5D     LDA ram_obj_anim_id,X
C - - - - - 0x01E165 07:E155: C5 E5     CMP ram_00E5
C - - - - - 0x01E167 07:E157: D0 3C     BNE bra_E195
C - - - - - 0x01E169 07:E159: 20 1A EC  JSR sub_EC1A
C - - - - - 0x01E16C 07:E15C: B5 37     LDA ram_random,X
C - - - - - 0x01E16E 07:E15E: 29 0F     AND #$0F
C - - - - - 0x01E170 07:E160: 09 20     ORA #$20
C - - - - - 0x01E172 07:E162: 9D A9 03  STA ram_03A9_obj,X
C - - - - - 0x01E175 07:E165: 4C 7E E1  JMP loc_E17E
bra_E168:
C - - - - - 0x01E178 07:E168: FE 9C 03  INC ram_039C_obj,X
C - - - - - 0x01E17B 07:E16B: BD 9C 03  LDA ram_039C_obj,X
C - - - - - 0x01E17E 07:E16E: 29 1F     AND #$1F
C - - - - - 0x01E180 07:E170: 4A        LSR
C - - - - - 0x01E181 07:E171: 4A        LSR
C - - - - - 0x01E182 07:E172: 4A        LSR
C - - - - - 0x01E183 07:E173: 18        CLC
C - - - - - 0x01E184 07:E174: 65 E3     ADC ram_00E3
C - - - - - 0x01E186 07:E176: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E188 07:E178: B5 9E     LDA ram_009E_obj,X
C - - - - - 0x01E18A 07:E17A: 29 06     AND #$06
C - - - - - 0x01E18C 07:E17C: F0 17     BEQ bra_E195
bra_E17E:
loc_E17E:
C D 3 - - - 0x01E18E 07:E17E: A0 01     LDY #$01
C - - - - - 0x01E190 07:E180: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E192 07:E182: 49 40     EOR #$40
C - - - - - 0x01E194 07:E184: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01E196 07:E186: 29 40     AND #$40
C - - - - - 0x01E198 07:E188: D0 02     BNE bra_E18C
C - - - - - 0x01E19A 07:E18A: A0 FF     LDY #$FF
bra_E18C:
C - - - - - 0x01E19C 07:E18C: 98        TYA
C - - - - - 0x01E19D 07:E18D: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01E1A0 07:E190: 95 C5     STA ram_00C5_obj,X
C - - - - - 0x01E1A2 07:E192: 4C 28 E2  JMP loc_E228_handle_next_enemy
bra_E195:
C - - - - - 0x01E1A5 07:E195: BD A9 03  LDA ram_03A9_obj,X
C - - - - - 0x01E1A8 07:E198: 10 2A     BPL bra_E1C4
C - - - - - 0x01E1AA 07:E19A: B5 37     LDA ram_random,X
C - - - - - 0x01E1AC 07:E19C: 29 1F     AND #$1F
C - - - - - 0x01E1AE 07:E19E: 69 1E     ADC #$1E
C - - - - - 0x01E1B0 07:E1A0: 9D A9 03  STA ram_03A9_obj,X
C - - - - - 0x01E1B3 07:E1A3: 20 9D EE  JSR sub_EE9D
C - - - - - 0x01E1B6 07:E1A6: A9 FF     LDA #$FF
C - - - - - 0x01E1B8 07:E1A8: 85 E2     STA ram_00E2
C - - - - - 0x01E1BA 07:E1AA: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E1BC 07:E1AC: 29 BF     AND #$BF
C - - - - - 0x01E1BE 07:E1AE: 90 08     BCC bra_E1B8
C - - - - - 0x01E1C0 07:E1B0: 09 40     ORA #$40
C - - - - - 0x01E1C2 07:E1B2: 48        PHA
C - - - - - 0x01E1C3 07:E1B3: A9 01     LDA #$01
C - - - - - 0x01E1C5 07:E1B5: 85 E2     STA ram_00E2
C - - - - - 0x01E1C7 07:E1B7: 68        PLA
bra_E1B8:
C - - - - - 0x01E1C8 07:E1B8: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01E1CA 07:E1BA: A5 E2     LDA ram_00E2
C - - - - - 0x01E1CC 07:E1BC: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01E1CF 07:E1BF: 95 C5     STA ram_00C5_obj,X
C - - - - - 0x01E1D1 07:E1C1: 4C 28 E2  JMP loc_E228_handle_next_enemy
bra_E1C4:
C - - - - - 0x01E1D4 07:E1C4: DE A9 03  DEC ram_03A9_obj,X
C - - - - - 0x01E1D7 07:E1C7: BD A9 03  LDA ram_03A9_obj,X
C - - - - - 0x01E1DA 07:E1CA: C9 0A     CMP #$0A
C - - - - - 0x01E1DC 07:E1CC: B0 5A     BCS bra_E228
C - - - - - 0x01E1DE 07:E1CE: 20 9D EE  JSR sub_EE9D
C - - - - - 0x01E1E1 07:E1D1: 98        TYA
C - - - - - 0x01E1E2 07:E1D2: D0 54     BNE bra_E228
C - - - - - 0x01E1E4 07:E1D4: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E1E6 07:E1D6: 29 02     AND #$02
C - - - - - 0x01E1E8 07:E1D8: F0 1F     BEQ bra_E1F9
C - - - - - 0x01E1EA 07:E1DA: A5 E2     LDA ram_00E2
C - - - - - 0x01E1EC 07:E1DC: C9 16     CMP #$16
C - - - - - 0x01E1EE 07:E1DE: B0 48     BCS bra_E228
C - - - - - 0x01E1F0 07:E1E0: C9 12     CMP #$12
C - - - - - 0x01E1F2 07:E1E2: 90 44     BCC bra_E228
C - - - - - 0x01E1F4 07:E1E4: 20 1A EC  JSR sub_EC1A
C - - - - - 0x01E1F7 07:E1E7: A9 03     LDA #$03    ; legs
C - - - - - 0x01E1F9 07:E1E9: 8D 99 06  STA ram_0699_unit_index
C - - - - - 0x01E1FC 07:E1EC: A9 01     LDA #$01
C - - - - - 0x01E1FE 07:E1EE: 20 5B F1  JSR sub_F15B
C - - - - - 0x01E201 07:E1F1: A5 E5     LDA ram_00E5
C - - - - - 0x01E203 07:E1F3: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E205 07:E1F5: A9 0A     LDA #$0A
C - - - - - 0x01E207 07:E1F7: D0 25     BNE bra_E21E    ; jmp
bra_E1F9:
C - - - - - 0x01E209 07:E1F9: B5 37     LDA ram_random,X
C - - - - - 0x01E20B 07:E1FB: C9 50     CMP #$50
C - - - - - 0x01E20D 07:E1FD: B0 29     BCS bra_E228
C - - - - - 0x01E20F 07:E1FF: 20 1A EC  JSR sub_EC1A
C - - - - - 0x01E212 07:E202: A0 11     LDY #$11
C - - - - - 0x01E214 07:E204: A9 10     LDA #$10
C - - - - - 0x01E216 07:E206: 85 4B     STA ram_004B
C - - - - - 0x01E218 07:E208: A9 00     LDA #$00
C - - - - - 0x01E21A 07:E20A: 8D 76 06  STA ram_0676
C - - - - - 0x01E21D 07:E20D: A9 00     LDA #$00
C - - - - - 0x01E21F 07:E20F: 20 73 EC  JSR sub_EC73
C - - - - - 0x01E222 07:E212: B0 14     BCS bra_E228
C - - - - - 0x01E224 07:E214: A9 0F     LDA #con_sound_0F
C - - - - - 0x01E226 07:E216: 85 47     STA ram_sound
C - - - - - 0x01E228 07:E218: A5 E4     LDA ram_00E4
C - - - - - 0x01E22A 07:E21A: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E22C 07:E21C: A9 0F     LDA #$0F
bra_E21E:
C - - - - - 0x01E22E 07:E21E: 9D A9 03  STA ram_03A9_obj,X
C - - - - - 0x01E231 07:E221: A9 00     LDA #$00
C - - - - - 0x01E233 07:E223: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01E236 07:E226: 95 C5     STA ram_00C5_obj,X
bra_E228:
loc_E228_handle_next_enemy:   ; bzk optimize
C D 3 - - - 0x01E238 07:E228: 4C B6 E0  JMP loc_E0B6_handle_next_enemy



ofs_004_E22B_01:
C - - J - - 0x01E23B 07:E22B: A0 44     LDY #$44
C - - - - - 0x01E23D 07:E22D: D0 0C     BNE bra_E23B    ; jmp



ofs_004_E22F_04:
C - - J - - 0x01E23F 07:E22F: A0 48     LDY #$48
C - - - - - 0x01E241 07:E231: D0 08     BNE bra_E23B    ; jmp



ofs_004_E233_06:
C - - J - - 0x01E243 07:E233: A0 4C     LDY #$4C
C - - - - - 0x01E245 07:E235: D0 04     BNE bra_E23B    ; jmp



ofs_004_E237_09:
C - - J - - 0x01E247 07:E237: A0 50     LDY #$50
; bzk optimize, useless branch
C - - - - - 0x01E249 07:E239: D0 00     BNE bra_E23B    ; jmp



bra_E23B:
C - - - - - 0x01E24B 07:E23B: 84 E2     STY ram_00E2
C - - - - - 0x01E24D 07:E23D: C8        INY
C - - - - - 0x01E24E 07:E23E: 84 E3     STY ram_00E3
C - - - - - 0x01E250 07:E240: C8        INY
C - - - - - 0x01E251 07:E241: 84 E4     STY ram_00E4
C - - - - - 0x01E253 07:E243: C8        INY
C - - - - - 0x01E254 07:E244: 84 E5     STY ram_00E5
C - - - - - 0x01E256 07:E246: BD C3 03  LDA ram_03C3,X
C - - - - - 0x01E259 07:E249: D0 07     BNE bra_E252
C - - - - - 0x01E25B 07:E24B: A9 2E     LDA #$2E
C - - - - - 0x01E25D 07:E24D: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E25F 07:E24F: 4C 5C E3  JMP loc_E35C_handle_next_enemy
bra_E252:
C - - - - - 0x01E262 07:E252: DE A9 03  DEC ram_03A9_obj,X
C - - - - - 0x01E265 07:E255: 30 03     BMI bra_E25A
C - - - - - 0x01E267 07:E257: 4C 5C E3  JMP loc_E35C_handle_next_enemy
bra_E25A:
C - - - - - 0x01E26A 07:E25A: A9 05     LDA #$05
C - - - - - 0x01E26C 07:E25C: 9D A9 03  STA ram_03A9_obj,X
C - - - - - 0x01E26F 07:E25F: BD 9C 03  LDA ram_039C_obj,X
C - - - - - 0x01E272 07:E262: D0 1C     BNE bra_E280
C - - - - - 0x01E274 07:E264: B5 5D     LDA ram_obj_anim_id,X
C - - - - - 0x01E276 07:E266: C5 E2     CMP ram_00E2
C - - - - - 0x01E278 07:E268: F0 05     BEQ bra_E26F
C - - - - - 0x01E27A 07:E26A: D6 5D     DEC ram_obj_anim_id,X
C - - - - - 0x01E27C 07:E26C: 4C 5C E3  JMP loc_E35C_handle_next_enemy
bra_E26F:
C - - - - - 0x01E27F 07:E26F: B5 37     LDA ram_random,X
C - - - - - 0x01E281 07:E271: C9 0A     CMP #$0A
C - - - - - 0x01E283 07:E273: 90 03     BCC bra_E278
C - - - - - 0x01E285 07:E275: 4C 5C E3  JMP loc_E35C_handle_next_enemy
bra_E278:
C - - - - - 0x01E288 07:E278: A9 01     LDA #$01
C - - - - - 0x01E28A 07:E27A: 9D 9C 03  STA ram_039C_obj,X
C - - - - - 0x01E28D 07:E27D: 4C 5C E3  JMP loc_E35C_handle_next_enemy
bra_E280:
C - - - - - 0x01E290 07:E280: B5 5D     LDA ram_obj_anim_id,X
C - - - - - 0x01E292 07:E282: C5 E4     CMP ram_00E4
C - - - - - 0x01E294 07:E284: B0 05     BCS bra_E28B
C - - - - - 0x01E296 07:E286: F6 5D     INC ram_obj_anim_id,X
C - - - - - 0x01E298 07:E288: 4C 5C E3  JMP loc_E35C_handle_next_enemy
bra_E28B:
C - - - - - 0x01E29B 07:E28B: 20 1A EC  JSR sub_EC1A
C - - - - - 0x01E29E 07:E28E: A5 E4     LDA ram_00E4
C - - - - - 0x01E2A0 07:E290: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E2A2 07:E292: B5 37     LDA ram_random,X
C - - - - - 0x01E2A4 07:E294: C9 07     CMP #$07
C - - - - - 0x01E2A6 07:E296: B0 08     BCS bra_E2A0
C - - - - - 0x01E2A8 07:E298: A9 00     LDA #$00
C - - - - - 0x01E2AA 07:E29A: 9D 9C 03  STA ram_039C_obj,X
C - - - - - 0x01E2AD 07:E29D: 4C 5C E3  JMP loc_E35C_handle_next_enemy
bra_E2A0:
C - - - - - 0x01E2B0 07:E2A0: 20 9D EE  JSR sub_EE9D
C - - - - - 0x01E2B3 07:E2A3: 90 37     BCC bra_E2DC
C - - - - - 0x01E2B5 07:E2A5: A5 03     LDA ram_mission
C - - - - - 0x01E2B7 07:E2A7: C9 02     CMP #$02
C - - - - - 0x01E2B9 07:E2A9: B0 31     BCS bra_E2DC
C - - - - - 0x01E2BB 07:E2AB: A9 00     LDA #$00
C - - - - - 0x01E2BD 07:E2AD: 85 E2     STA ram_00E2
C - - - - - 0x01E2BF 07:E2AF: A0 03     LDY #$03
bra_E2B1_loop:
C - - - - - 0x01E2C1 07:E2B1: B9 50 00  LDA ram_0050_obj_flags,Y
C - - - - - 0x01E2C4 07:E2B4: F0 09     BEQ bra_E2BF
C - - - - - 0x01E2C6 07:E2B6: B9 91 00  LDA ram_pos_Y_lo,Y
C - - - - - 0x01E2C9 07:E2B9: C9 8C     CMP #$8C
C - - - - - 0x01E2CB 07:E2BB: 90 02     BCC bra_E2BF
C - - - - - 0x01E2CD 07:E2BD: E6 E2     INC ram_00E2
bra_E2BF:
C - - - - - 0x01E2CF 07:E2BF: 88        DEY
C - - - - - 0x01E2D0 07:E2C0: D0 EF     BNE bra_E2B1_loop
C - - - - - 0x01E2D2 07:E2C2: A5 E2     LDA ram_00E2
C - - - - - 0x01E2D4 07:E2C4: D0 16     BNE bra_E2DC
C - - - - - 0x01E2D6 07:E2C6: A9 06     LDA #$06
C - - - - - 0x01E2D8 07:E2C8: 9D 75 03  STA ram_0375_obj,X
C - - - - - 0x01E2DB 07:E2CB: A9 00     LDA #$00
C - - - - - 0x01E2DD 07:E2CD: 95 B8     STA ram_obj_id,X
C - - - - - 0x01E2DF 07:E2CF: A9 2E     LDA #$2E
C - - - - - 0x01E2E1 07:E2D1: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E2E3 07:E2D3: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E2E5 07:E2D5: 09 40     ORA #$40
C - - - - - 0x01E2E7 07:E2D7: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01E2E9 07:E2D9: 4C B6 E0  JMP loc_E0B6_handle_next_enemy
bra_E2DC:
C - - - - - 0x01E2EC 07:E2DC: B5 B8     LDA ram_obj_id,X
C - - - - - 0x01E2EE 07:E2DE: C9 04     CMP #$04
C - - - - - 0x01E2F0 07:E2E0: F0 2A     BEQ bra_E30C
C - - - - - 0x01E2F2 07:E2E2: C9 09     CMP #$09
C - - - - - 0x01E2F4 07:E2E4: F0 26     BEQ bra_E30C
C - - - - - 0x01E2F6 07:E2E6: B5 37     LDA ram_random,X
C - - - - - 0x01E2F8 07:E2E8: C9 32     CMP #$32
C - - - - - 0x01E2FA 07:E2EA: B0 70     BCS bra_E35C
C - - - - - 0x01E2FC 07:E2EC: 98        TYA
C - - - - - 0x01E2FD 07:E2ED: F0 6D     BEQ bra_E35C
C - - - - - 0x01E2FF 07:E2EF: A0 11     LDY #$11
C - - - - - 0x01E301 07:E2F1: A9 16     LDA #$16
C - - - - - 0x01E303 07:E2F3: 85 4B     STA ram_004B
C - - - - - 0x01E305 07:E2F5: A9 00     LDA #$00
C - - - - - 0x01E307 07:E2F7: 8D 76 06  STA ram_0676
C - - - - - 0x01E30A 07:E2FA: A9 05     LDA #$05
C - - - - - 0x01E30C 07:E2FC: 20 73 EC  JSR sub_EC73
C - - - - - 0x01E30F 07:E2FF: B0 5B     BCS bra_E35C
C - - - - - 0x01E311 07:E301: A9 0F     LDA #con_sound_0F
C - - - - - 0x01E313 07:E303: 85 47     STA ram_sound
C - - - - - 0x01E315 07:E305: A5 E5     LDA ram_00E5
C - - - - - 0x01E317 07:E307: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E319 07:E309: 4C 5C E3  JMP loc_E35C_handle_next_enemy
bra_E30C:
C - - - - - 0x01E31C 07:E30C: B5 37     LDA ram_random,X
C - - - - - 0x01E31E 07:E30E: C9 1E     CMP #$1E
C - - - - - 0x01E320 07:E310: B0 4A     BCS bra_E35C
C - - - - - 0x01E322 07:E312: A0 10     LDY #$10
C - - - - - 0x01E324 07:E314: A9 00     LDA #$00
C - - - - - 0x01E326 07:E316: 85 4B     STA ram_004B
C - - - - - 0x01E328 07:E318: A9 01     LDA #$01
C - - - - - 0x01E32A 07:E31A: 8D 76 06  STA ram_0676
C - - - - - 0x01E32D 07:E31D: A9 0C     LDA #$0C
C - - - - - 0x01E32F 07:E31F: 20 73 EC  JSR sub_EC73
C - - - - - 0x01E332 07:E322: B0 38     BCS bra_E35C
C - - - - - 0x01E334 07:E324: A9 FE     LDA #$FE
C - - - - - 0x01E336 07:E326: 85 E2     STA ram_00E2
C - - - - - 0x01E338 07:E328: A9 FC     LDA #$FC
C - - - - - 0x01E33A 07:E32A: 85 E3     STA ram_00E3
C - - - - - 0x01E33C 07:E32C: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E33E 07:E32E: 29 40     AND #$40
C - - - - - 0x01E340 07:E330: F0 08     BEQ bra_E33A
C - - - - - 0x01E342 07:E332: A9 02     LDA #$02
C - - - - - 0x01E344 07:E334: 85 E2     STA ram_00E2
C - - - - - 0x01E346 07:E336: A9 04     LDA #$04
C - - - - - 0x01E348 07:E338: 85 E3     STA ram_00E3
bra_E33A:
C - - - - - 0x01E34A 07:E33A: A5 E2     LDA ram_00E2
C - - - - - 0x01E34C 07:E33C: 99 5B 03  STA ram_035B_obj,Y
C - - - - - 0x01E34F 07:E33F: A5 E3     LDA ram_00E3
C - - - - - 0x01E351 07:E341: 99 C5 00  STA ram_00C5_obj,Y
C - - - - - 0x01E354 07:E344: A9 FD     LDA #$FD
C - - - - - 0x01E356 07:E346: 99 68 03  STA ram_0368_obj,Y
C - - - - - 0x01E359 07:E349: A9 03     LDA #$03
C - - - - - 0x01E35B 07:E34B: 99 6A 00  STA ram_006A_obj,Y
C - - - - - 0x01E35E 07:E34E: A9 03     LDA #$03
C - - - - - 0x01E360 07:E350: 99 8F 03  STA ram_038F_obj,Y
C - - - - - 0x01E363 07:E353: A5 E5     LDA ram_00E5
C - - - - - 0x01E365 07:E355: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E367 07:E357: A9 1E     LDA #$1E
C - - - - - 0x01E369 07:E359: 9D A9 03  STA ram_03A9_obj,X
bra_E35C:
loc_E35C_handle_next_enemy:   ; bzk optimize
C D 3 - - - 0x01E36C 07:E35C: 4C B6 E0  JMP loc_E0B6_handle_next_enemy



ofs_004_E35F_19:
C - - J - - 0x01E36F 07:E35F: A9 B7     LDA #$B7
C - - - - - 0x01E371 07:E361: A0 AD     LDY #$AD
C - - - - - 0x01E373 07:E363: D0 16     BNE bra_E37B    ; jmp



ofs_004_E365_0B:
C - - J - - 0x01E375 07:E365: A9 65     LDA #$65
C - - - - - 0x01E377 07:E367: A0 69     LDY #$69
C - - - - - 0x01E379 07:E369: D0 10     BNE bra_E37B    ; jmp



ofs_004_E36B_0C:
- - - - - - 0x01E37B 07:E36B: A9 67     LDA #$67
- - - - - - 0x01E37D 07:E36D: A0 6D     LDY #$6D
- - - - - - 0x01E37F 07:E36F: D0 0A     BNE bra_E37B    ; jmp



ofs_004_E371_02:
C - - J - - 0x01E381 07:E371: A9 2E     LDA #$2E
C - - - - - 0x01E383 07:E373: A0 30     LDY #$30
C - - - - - 0x01E385 07:E375: D0 04     BNE bra_E37B    ; jmp



ofs_004_E377_07:
C - - J - - 0x01E387 07:E377: A9 2E     LDA #$2E
C - - - - - 0x01E389 07:E379: A0 34     LDY #$34
bra_E37B:
C - - - - - 0x01E38B 07:E37B: 85 E6     STA ram_00E6
C - - - - - 0x01E38D 07:E37D: 84 E2     STY ram_00E2
C - - - - - 0x01E38F 07:E37F: C8        INY
C - - - - - 0x01E390 07:E380: 84 E3     STY ram_00E3
C - - - - - 0x01E392 07:E382: C8        INY
C - - - - - 0x01E393 07:E383: 84 E4     STY ram_00E4
C - - - - - 0x01E395 07:E385: C8        INY
C - - - - - 0x01E396 07:E386: 84 E5     STY ram_00E5
C - - - - - 0x01E398 07:E388: BD C3 03  LDA ram_03C3,X
C - - - - - 0x01E39B 07:E38B: D0 07     BNE bra_E394
C - - - - - 0x01E39D 07:E38D: A5 E6     LDA ram_00E6
C - - - - - 0x01E39F 07:E38F: 95 5D     STA ram_obj_anim_id,X
bra_E391:
C - - - - - 0x01E3A1 07:E391: 4C 27 E4  JMP loc_E427_handle_next_enemy
bra_E394:
C - - - - - 0x01E3A4 07:E394: DE A9 03  DEC ram_03A9_obj,X
C - - - - - 0x01E3A7 07:E397: 10 F8     BPL bra_E391
C - - - - - 0x01E3A9 07:E399: A9 04     LDA #$04
C - - - - - 0x01E3AB 07:E39B: 9D A9 03  STA ram_03A9_obj,X
C - - - - - 0x01E3AE 07:E39E: BD 9C 03  LDA ram_039C_obj,X
C - - - - - 0x01E3B1 07:E3A1: D0 2D     BNE bra_E3D0
C - - - - - 0x01E3B3 07:E3A3: A9 03     LDA #$03
C - - - - - 0x01E3B5 07:E3A5: 9D B6 03  STA ram_03B6,X
C - - - - - 0x01E3B8 07:E3A8: B5 5D     LDA ram_obj_anim_id,X
C - - - - - 0x01E3BA 07:E3AA: C5 E2     CMP ram_00E2
C - - - - - 0x01E3BC 07:E3AC: F0 10     BEQ bra_E3BE
C - - - - - 0x01E3BE 07:E3AE: D6 5D     DEC ram_obj_anim_id,X
C - - - - - 0x01E3C0 07:E3B0: B5 5D     LDA ram_obj_anim_id,X
C - - - - - 0x01E3C2 07:E3B2: C5 E2     CMP ram_00E2
C - - - - - 0x01E3C4 07:E3B4: D0 71     BNE bra_E427
C - - - - - 0x01E3C6 07:E3B6: A9 00     LDA #$00
C - - - - - 0x01E3C8 07:E3B8: 9D 41 03  STA ram_0341,X
C - - - - - 0x01E3CB 07:E3BB: 4C 27 E4  JMP loc_E427_handle_next_enemy
bra_E3BE:
C - - - - - 0x01E3CE 07:E3BE: A9 00     LDA #$00
C - - - - - 0x01E3D0 07:E3C0: 9D 41 03  STA ram_0341,X
C - - - - - 0x01E3D3 07:E3C3: B5 37     LDA ram_random,X
C - - - - - 0x01E3D5 07:E3C5: C9 06     CMP #$06
C - - - - - 0x01E3D7 07:E3C7: B0 5E     BCS bra_E427
C - - - - - 0x01E3D9 07:E3C9: A9 01     LDA #$01
C - - - - - 0x01E3DB 07:E3CB: 9D 9C 03  STA ram_039C_obj,X
C - - - - - 0x01E3DE 07:E3CE: D0 57     BNE bra_E427    ; jmp
bra_E3D0:
C - - - - - 0x01E3E0 07:E3D0: A9 01     LDA #$01
C - - - - - 0x01E3E2 07:E3D2: 9D 41 03  STA ram_0341,X
C - - - - - 0x01E3E5 07:E3D5: B5 5D     LDA ram_obj_anim_id,X
C - - - - - 0x01E3E7 07:E3D7: C5 E4     CMP ram_00E4
C - - - - - 0x01E3E9 07:E3D9: B0 04     BCS bra_E3DF
C - - - - - 0x01E3EB 07:E3DB: F6 5D     INC ram_obj_anim_id,X
C - - - - - 0x01E3ED 07:E3DD: D0 48     BNE bra_E427
bra_E3DF:
C - - - - - 0x01E3EF 07:E3DF: A5 E4     LDA ram_00E4
C - - - - - 0x01E3F1 07:E3E1: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E3F3 07:E3E3: BD B6 03  LDA ram_03B6,X
C - - - - - 0x01E3F6 07:E3E6: D0 07     BNE bra_E3EF
bra_E3E8:
C - - - - - 0x01E3F8 07:E3E8: A9 00     LDA #$00
C - - - - - 0x01E3FA 07:E3EA: 9D 9C 03  STA ram_039C_obj,X
C - - - - - 0x01E3FD 07:E3ED: F0 38     BEQ bra_E427    ; jmp
bra_E3EF:
C - - - - - 0x01E3FF 07:E3EF: 20 9D EE  JSR sub_EE9D
C - - - - - 0x01E402 07:E3F2: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E404 07:E3F4: 29 BF     AND #$BF
C - - - - - 0x01E406 07:E3F6: 90 02     BCC bra_E3FA
C - - - - - 0x01E408 07:E3F8: 09 40     ORA #$40
bra_E3FA:
C - - - - - 0x01E40A 07:E3FA: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01E40C 07:E3FC: B5 37     LDA ram_random,X
C - - - - - 0x01E40E 07:E3FE: C9 4B     CMP #$4B
C - - - - - 0x01E410 07:E400: B0 25     BCS bra_E427
C - - - - - 0x01E412 07:E402: 98        TYA
C - - - - - 0x01E413 07:E403: D0 E3     BNE bra_E3E8
C - - - - - 0x01E415 07:E405: A0 12     LDY #$12
C - - - - - 0x01E417 07:E407: A9 0E     LDA #$0E
C - - - - - 0x01E419 07:E409: 85 4B     STA ram_004B
C - - - - - 0x01E41B 07:E40B: A9 02     LDA #$02
C - - - - - 0x01E41D 07:E40D: 8D 76 06  STA ram_0676
C - - - - - 0x01E420 07:E410: A9 00     LDA #$00
C - - - - - 0x01E422 07:E412: 20 73 EC  JSR sub_EC73
C - - - - - 0x01E425 07:E415: B0 10     BCS bra_E427
C - - - - - 0x01E427 07:E417: A9 10     LDA #con_sound_10
C - - - - - 0x01E429 07:E419: 85 47     STA ram_sound
C - - - - - 0x01E42B 07:E41B: A5 E5     LDA ram_00E5
C - - - - - 0x01E42D 07:E41D: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E42F 07:E41F: DE B6 03  DEC ram_03B6,X
C - - - - - 0x01E432 07:E422: A9 02     LDA #$02
C - - - - - 0x01E434 07:E424: 8D 45 06  STA ram_0645
bra_E427:
loc_E427_handle_next_enemy:   ; bzk optimize
C D 3 - - - 0x01E437 07:E427: 4C B6 E0  JMP loc_E0B6_handle_next_enemy



ofs_004_E42A_0F:
C - - J - - 0x01E43A 07:E42A: A0 83     LDY #$83
C - - - - - 0x01E43C 07:E42C: D0 08     BNE bra_E436    ; jmp



ofs_004_E42E_03:
C - - J - - 0x01E43E 07:E42E: A0 54     LDY #$54
C - - - - - 0x01E440 07:E430: D0 04     BNE bra_E436    ; jmp



ofs_004_E432_08:
C - - J - - 0x01E442 07:E432: A0 54     LDY #$54
; bzk optimize, useless branch
C - - - - - 0x01E444 07:E434: D0 00     BNE bra_E436    ; jmp



bra_E436:
C - - - - - 0x01E446 07:E436: 84 E2     STY ram_00E2
C - - - - - 0x01E448 07:E438: C8        INY
C - - - - - 0x01E449 07:E439: 84 E3     STY ram_00E3
C - - - - - 0x01E44B 07:E43B: C8        INY
C - - - - - 0x01E44C 07:E43C: C8        INY
C - - - - - 0x01E44D 07:E43D: C8        INY
C - - - - - 0x01E44E 07:E43E: 84 E4     STY ram_00E4
C - - - - - 0x01E450 07:E440: BD C3 03  LDA ram_03C3,X
C - - - - - 0x01E453 07:E443: D0 03     BNE bra_E448
C - - - - - 0x01E455 07:E445: 4C EB E4  JMP loc_E4EB_handle_next_enemy
bra_E448:
C - - - - - 0x01E458 07:E448: B5 9E     LDA ram_009E_obj,X
C - - - - - 0x01E45A 07:E44A: 29 03     AND #$03
C - - - - - 0x01E45C 07:E44C: D0 15     BNE bra_E463
C - - - - - 0x01E45E 07:E44E: B5 C5     LDA ram_00C5_obj,X
C - - - - - 0x01E460 07:E450: 49 FF     EOR #$FF
C - - - - - 0x01E462 07:E452: 18        CLC
C - - - - - 0x01E463 07:E453: 69 01     ADC #$01
C - - - - - 0x01E465 07:E455: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01E468 07:E458: 95 C5     STA ram_00C5_obj,X
C - - - - - 0x01E46A 07:E45A: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E46C 07:E45C: 49 40     EOR #$40
C - - - - - 0x01E46E 07:E45E: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01E470 07:E460: 4C EB E4  JMP loc_E4EB_handle_next_enemy
bra_E463:
C - - - - - 0x01E473 07:E463: B5 C5     LDA ram_00C5_obj,X
C - - - - - 0x01E475 07:E465: F0 10     BEQ bra_E477
C - - - - - 0x01E477 07:E467: FE 9C 03  INC ram_039C_obj,X
C - - - - - 0x01E47A 07:E46A: BD 9C 03  LDA ram_039C_obj,X
C - - - - - 0x01E47D 07:E46D: 29 1F     AND #$1F
C - - - - - 0x01E47F 07:E46F: 4A        LSR
C - - - - - 0x01E480 07:E470: 4A        LSR
C - - - - - 0x01E481 07:E471: 4A        LSR
C - - - - - 0x01E482 07:E472: 18        CLC
C - - - - - 0x01E483 07:E473: 65 E2     ADC ram_00E2
C - - - - - 0x01E485 07:E475: 95 5D     STA ram_obj_anim_id,X
bra_E477:
C - - - - - 0x01E487 07:E477: B5 37     LDA ram_random,X
C - - - - - 0x01E489 07:E479: C9 0A     CMP #$0A
C - - - - - 0x01E48B 07:E47B: B0 6E     BCS bra_E4EB
C - - - - - 0x01E48D 07:E47D: 20 9D EE  JSR sub_EE9D
C - - - - - 0x01E490 07:E480: A9 FF     LDA #$FF
C - - - - - 0x01E492 07:E482: 85 E2     STA ram_00E2
C - - - - - 0x01E494 07:E484: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E496 07:E486: 29 BF     AND #$BF
C - - - - - 0x01E498 07:E488: 90 08     BCC bra_E492
C - - - - - 0x01E49A 07:E48A: 09 40     ORA #$40
C - - - - - 0x01E49C 07:E48C: 48        PHA
C - - - - - 0x01E49D 07:E48D: A9 01     LDA #$01
C - - - - - 0x01E49F 07:E48F: 85 E2     STA ram_00E2
C - - - - - 0x01E4A1 07:E491: 68        PLA
bra_E492:
C - - - - - 0x01E4A2 07:E492: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01E4A4 07:E494: A5 E2     LDA ram_00E2
C - - - - - 0x01E4A6 07:E496: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01E4A9 07:E499: 95 C5     STA ram_00C5_obj,X
C - - - - - 0x01E4AB 07:E49B: B5 37     LDA ram_random,X
C - - - - - 0x01E4AD 07:E49D: C9 05     CMP #$05
C - - - - - 0x01E4AF 07:E49F: B0 4A     BCS bra_E4EB
C - - - - - 0x01E4B1 07:E4A1: 98        TYA
C - - - - - 0x01E4B2 07:E4A2: D0 24     BNE bra_E4C8
C - - - - - 0x01E4B4 07:E4A4: A0 05     LDY #$05
C - - - - - 0x01E4B6 07:E4A6: A9 17     LDA #$17
C - - - - - 0x01E4B8 07:E4A8: 85 4B     STA ram_004B
C - - - - - 0x01E4BA 07:E4AA: A9 02     LDA #$02
C - - - - - 0x01E4BC 07:E4AC: 8D 76 06  STA ram_0676
C - - - - - 0x01E4BF 07:E4AF: A9 00     LDA #$00
C - - - - - 0x01E4C1 07:E4B1: 20 73 EC  JSR sub_EC73
C - - - - - 0x01E4C4 07:E4B4: B0 35     BCS bra_E4EB
C - - - - - 0x01E4C6 07:E4B6: A9 10     LDA #con_sound_10
C - - - - - 0x01E4C8 07:E4B8: 85 47     STA ram_sound
C - - - - - 0x01E4CA 07:E4BA: A5 E4     LDA ram_00E4
C - - - - - 0x01E4CC 07:E4BC: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E4CE 07:E4BE: A9 00     LDA #$00
C - - - - - 0x01E4D0 07:E4C0: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01E4D3 07:E4C3: 95 C5     STA ram_00C5_obj,X
C - - - - - 0x01E4D5 07:E4C5: 4C B6 E0  JMP loc_E0B6_handle_next_enemy
bra_E4C8:
C - - - - - 0x01E4D8 07:E4C8: B5 5D     LDA ram_obj_anim_id,X
C - - - - - 0x01E4DA 07:E4CA: C5 E3     CMP ram_00E3
C - - - - - 0x01E4DC 07:E4CC: D0 1D     BNE bra_E4EB
C - - - - - 0x01E4DE 07:E4CE: A0 05     LDY #$05
C - - - - - 0x01E4E0 07:E4D0: A9 19     LDA #$19
C - - - - - 0x01E4E2 07:E4D2: 85 4B     STA ram_004B
C - - - - - 0x01E4E4 07:E4D4: A9 02     LDA #$02
C - - - - - 0x01E4E6 07:E4D6: 8D 76 06  STA ram_0676
C - - - - - 0x01E4E9 07:E4D9: A9 05     LDA #$05
C - - - - - 0x01E4EB 07:E4DB: 20 73 EC  JSR sub_EC73
C - - - - - 0x01E4EE 07:E4DE: B0 0B     BCS bra_E4EB
C - - - - - 0x01E4F0 07:E4E0: A9 10     LDA #con_sound_10
C - - - - - 0x01E4F2 07:E4E2: 85 47     STA ram_sound
C - - - - - 0x01E4F4 07:E4E4: A9 00     LDA #$00
C - - - - - 0x01E4F6 07:E4E6: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01E4F9 07:E4E9: 95 C5     STA ram_00C5_obj,X
bra_E4EB:
loc_E4EB_handle_next_enemy:
C D 3 - - - 0x01E4FB 07:E4EB: 4C B6 E0  JMP loc_E0B6_handle_next_enemy



ofs_004_E4EE_10:
ofs_004_E4EE_12:
C - - J - - 0x01E4FE 07:E4EE: A0 65     LDY #$65
C - - - - - 0x01E500 07:E4F0: A9 0D     LDA #$0D
C - - - - - 0x01E502 07:E4F2: D0 06     BNE bra_E4FA    ; jmp



ofs_004_E4F4_11:
ofs_004_E4F4_13:
C - - J - - 0x01E504 07:E4F4: A0 67     LDY #$67
C - - - - - 0x01E506 07:E4F6: A9 0E     LDA #$0E
; bzk optimize, useless branch
C - - - - - 0x01E508 07:E4F8: D0 00     BNE bra_E4FA    ; jmp



bra_E4FA:
C - - - - - 0x01E50A 07:E4FA: 85 E3     STA ram_00E3
C - - - - - 0x01E50C 07:E4FC: 84 E4     STY ram_00E4
C - - - - - 0x01E50E 07:E4FE: C8        INY
C - - - - - 0x01E50F 07:E4FF: 84 E5     STY ram_00E5
C - - - - - 0x01E511 07:E501: BD C3 03  LDA ram_03C3,X
C - - - - - 0x01E514 07:E504: F0 5F     BEQ bra_E565
C - - - - - 0x01E516 07:E506: A5 37     LDA ram_random
C - - - - - 0x01E518 07:E508: C9 0A     CMP #$0A
C - - - - - 0x01E51A 07:E50A: B0 0F     BCS bra_E51B
C - - - - - 0x01E51C 07:E50C: A5 42     LDA ram_0042
C - - - - - 0x01E51E 07:E50E: 4A        LSR
C - - - - - 0x01E51F 07:E50F: 4A        LSR
C - - - - - 0x01E520 07:E510: 4A        LSR
C - - - - - 0x01E521 07:E511: 29 01     AND #$01
C - - - - - 0x01E523 07:E513: 85 E6     STA ram_00E6
C - - - - - 0x01E525 07:E515: B5 91     LDA ram_pos_Y_lo,X
C - - - - - 0x01E527 07:E517: 45 E6     EOR ram_00E6
C - - - - - 0x01E529 07:E519: 95 91     STA ram_pos_Y_lo,X
bra_E51B:
C - - - - - 0x01E52B 07:E51B: 20 9D EE  JSR sub_EE9D
C - - - - - 0x01E52E 07:E51E: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E530 07:E520: 29 BF     AND #$BF
C - - - - - 0x01E532 07:E522: 90 02     BCC bra_E526
- - - - - - 0x01E534 07:E524: 09 40     ORA #$40
bra_E526:
C - - - - - 0x01E536 07:E526: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01E538 07:E528: 29 40     AND #$40
C - - - - - 0x01E53A 07:E52A: F0 12     BEQ bra_E53E
- - - - - - 0x01E53C 07:E52C: B5 B8     LDA ram_obj_id,X
- - - - - - 0x01E53E 07:E52E: C9 12     CMP #$12
- - - - - - 0x01E540 07:E530: B0 0C     BCS bra_E53E
- - - - - - 0x01E542 07:E532: A9 06     LDA #$06
- - - - - - 0x01E544 07:E534: 9D 75 03  STA ram_0375_obj,X
- - - - - - 0x01E547 07:E537: A5 E3     LDA ram_00E3
- - - - - - 0x01E549 07:E539: 95 B8     STA ram_obj_id,X
- - - - - - 0x01E54B 07:E53B: 4C 65 E5  JMP loc_E565_handle_next_enemy
bra_E53E:
C - - - - - 0x01E54E 07:E53E: B5 37     LDA ram_random,X
C - - - - - 0x01E550 07:E540: C9 14     CMP #$14
C - - - - - 0x01E552 07:E542: B0 1D     BCS bra_E561
C - - - - - 0x01E554 07:E544: A0 11     LDY #$11
C - - - - - 0x01E556 07:E546: A9 1A     LDA #$1A
C - - - - - 0x01E558 07:E548: 85 4B     STA ram_004B
C - - - - - 0x01E55A 07:E54A: A9 00     LDA #$00
C - - - - - 0x01E55C 07:E54C: 8D 76 06  STA ram_0676
C - - - - - 0x01E55F 07:E54F: A9 05     LDA #$05
C - - - - - 0x01E561 07:E551: 20 73 EC  JSR sub_EC73
C - - - - - 0x01E564 07:E554: B0 0B     BCS bra_E561
C - - - - - 0x01E566 07:E556: A9 0F     LDA #con_sound_0F
C - - - - - 0x01E568 07:E558: 85 47     STA ram_sound
C - - - - - 0x01E56A 07:E55A: A5 E5     LDA ram_00E5
C - - - - - 0x01E56C 07:E55C: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E56E 07:E55E: 4C 65 E5  JMP loc_E565_handle_next_enemy
bra_E561:
C - - - - - 0x01E571 07:E561: A5 E4     LDA ram_00E4
C - - - - - 0x01E573 07:E563: 95 5D     STA ram_obj_anim_id,X
bra_E565:
loc_E565_handle_next_enemy:   ; bzk optimize
C D 3 - - - 0x01E575 07:E565: 4C B6 E0  JMP loc_E0B6_handle_next_enemy



ofs_004_E568_17:
C - - J - - 0x01E578 07:E568: A0 B7     LDY #$B7
C - - - - - 0x01E57A 07:E56A: D0 02     BNE bra_E56E    ; jmp



ofs_004_E56C_14:
C - - J - - 0x01E57C 07:E56C: A0 7D     LDY #$7D
bra_E56E:
C - - - - - 0x01E57E 07:E56E: 84 E2     STY ram_00E2
C - - - - - 0x01E580 07:E570: C8        INY
C - - - - - 0x01E581 07:E571: C8        INY
C - - - - - 0x01E582 07:E572: C8        INY
C - - - - - 0x01E583 07:E573: C8        INY
C - - - - - 0x01E584 07:E574: 84 E3     STY ram_00E3
C - - - - - 0x01E586 07:E576: C8        INY
C - - - - - 0x01E587 07:E577: 84 E4     STY ram_00E4
C - - - - - 0x01E589 07:E579: BD C3 03  LDA ram_03C3,X
C - - - - - 0x01E58C 07:E57C: D0 03     BNE bra_E581
C - - - - - 0x01E58E 07:E57E: 4C 2C E6  JMP loc_E62C_handle_next_enemy
bra_E581:
C - - - - - 0x01E591 07:E581: B5 9E     LDA ram_009E_obj,X
C - - - - - 0x01E593 07:E583: 29 03     AND #$03
C - - - - - 0x01E595 07:E585: D0 15     BNE bra_E59C
C - - - - - 0x01E597 07:E587: B5 C5     LDA ram_00C5_obj,X
C - - - - - 0x01E599 07:E589: 49 FF     EOR #$FF
C - - - - - 0x01E59B 07:E58B: 18        CLC
C - - - - - 0x01E59C 07:E58C: 69 01     ADC #$01
C - - - - - 0x01E59E 07:E58E: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01E5A1 07:E591: 95 C5     STA ram_00C5_obj,X
C - - - - - 0x01E5A3 07:E593: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E5A5 07:E595: 49 40     EOR #$40
C - - - - - 0x01E5A7 07:E597: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01E5A9 07:E599: 4C 2C E6  JMP loc_E62C_handle_next_enemy
bra_E59C:
C - - - - - 0x01E5AC 07:E59C: B5 C5     LDA ram_00C5_obj,X
C - - - - - 0x01E5AE 07:E59E: F0 10     BEQ bra_E5B0
C - - - - - 0x01E5B0 07:E5A0: FE 9C 03  INC ram_039C_obj,X
C - - - - - 0x01E5B3 07:E5A3: BD 9C 03  LDA ram_039C_obj,X
C - - - - - 0x01E5B6 07:E5A6: 29 1F     AND #$1F
C - - - - - 0x01E5B8 07:E5A8: 4A        LSR
C - - - - - 0x01E5B9 07:E5A9: 4A        LSR
C - - - - - 0x01E5BA 07:E5AA: 4A        LSR
C - - - - - 0x01E5BB 07:E5AB: 18        CLC
C - - - - - 0x01E5BC 07:E5AC: 65 E2     ADC ram_00E2
C - - - - - 0x01E5BE 07:E5AE: 95 5D     STA ram_obj_anim_id,X
bra_E5B0:
C - - - - - 0x01E5C0 07:E5B0: B5 37     LDA ram_random,X
C - - - - - 0x01E5C2 07:E5B2: C9 0A     CMP #$0A
C - - - - - 0x01E5C4 07:E5B4: B0 76     BCS bra_E62C
C - - - - - 0x01E5C6 07:E5B6: 20 9D EE  JSR sub_EE9D
C - - - - - 0x01E5C9 07:E5B9: A9 FF     LDA #$FF
C - - - - - 0x01E5CB 07:E5BB: 85 E2     STA ram_00E2
C - - - - - 0x01E5CD 07:E5BD: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E5CF 07:E5BF: 29 BF     AND #$BF
C - - - - - 0x01E5D1 07:E5C1: 90 08     BCC bra_E5CB
C - - - - - 0x01E5D3 07:E5C3: 09 40     ORA #$40
C - - - - - 0x01E5D5 07:E5C5: 48        PHA
C - - - - - 0x01E5D6 07:E5C6: A9 01     LDA #$01
C - - - - - 0x01E5D8 07:E5C8: 85 E2     STA ram_00E2
C - - - - - 0x01E5DA 07:E5CA: 68        PLA
bra_E5CB:
C - - - - - 0x01E5DB 07:E5CB: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01E5DD 07:E5CD: A5 E2     LDA ram_00E2
C - - - - - 0x01E5DF 07:E5CF: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01E5E2 07:E5D2: 95 C5     STA ram_00C5_obj,X
C - - - - - 0x01E5E4 07:E5D4: B5 37     LDA ram_random,X
C - - - - - 0x01E5E6 07:E5D6: C9 05     CMP #$05
C - - - - - 0x01E5E8 07:E5D8: B0 52     BCS bra_E62C
C - - - - - 0x01E5EA 07:E5DA: B5 5D     LDA ram_obj_anim_id,X
C - - - - - 0x01E5EC 07:E5DC: C5 E3     CMP ram_00E3
C - - - - - 0x01E5EE 07:E5DE: F0 06     BEQ bra_E5E6
C - - - - - 0x01E5F0 07:E5E0: A5 E3     LDA ram_00E3
C - - - - - 0x01E5F2 07:E5E2: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E5F4 07:E5E4: D0 3F     BNE bra_E625
bra_E5E6:
C - - - - - 0x01E5F6 07:E5E6: A0 05     LDY #$05
C - - - - - 0x01E5F8 07:E5E8: A9 0A     LDA #$0A
C - - - - - 0x01E5FA 07:E5EA: 85 4B     STA ram_004B
C - - - - - 0x01E5FC 07:E5EC: A9 02     LDA #$02
C - - - - - 0x01E5FE 07:E5EE: 8D 76 06  STA ram_0676
C - - - - - 0x01E601 07:E5F1: A9 0C     LDA #$0C
C - - - - - 0x01E603 07:E5F3: 20 73 EC  JSR sub_EC73
C - - - - - 0x01E606 07:E5F6: B0 34     BCS bra_E62C
C - - - - - 0x01E608 07:E5F8: A9 FE     LDA #$FE
C - - - - - 0x01E60A 07:E5FA: 99 5B 03  STA ram_035B_obj,Y
C - - - - - 0x01E60D 07:E5FD: A9 FC     LDA #$FC
C - - - - - 0x01E60F 07:E5FF: 99 C5 00  STA ram_00C5_obj,Y
C - - - - - 0x01E612 07:E602: A9 FD     LDA #$FD
C - - - - - 0x01E614 07:E604: 99 68 03  STA ram_0368_obj,Y
C - - - - - 0x01E617 07:E607: A9 02     LDA #$02
C - - - - - 0x01E619 07:E609: 99 6A 00  STA ram_006A_obj,Y
C - - - - - 0x01E61C 07:E60C: A9 03     LDA #$03
C - - - - - 0x01E61E 07:E60E: 99 8F 03  STA ram_038F_obj,Y
C - - - - - 0x01E621 07:E611: A5 E4     LDA ram_00E4
C - - - - - 0x01E623 07:E613: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E625 07:E615: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E627 07:E617: 29 40     AND #$40
C - - - - - 0x01E629 07:E619: F0 0A     BEQ bra_E625
C - - - - - 0x01E62B 07:E61B: A9 02     LDA #$02
C - - - - - 0x01E62D 07:E61D: 99 5B 03  STA ram_035B_obj,Y
C - - - - - 0x01E630 07:E620: A9 04     LDA #$04
C - - - - - 0x01E632 07:E622: 99 C5 00  STA ram_00C5_obj,Y
bra_E625:
C - - - - - 0x01E635 07:E625: A9 00     LDA #$00
C - - - - - 0x01E637 07:E627: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01E63A 07:E62A: 95 C5     STA ram_00C5_obj,X
bra_E62C:
loc_E62C_handle_next_enemy:   ; bzk optimize
C D 3 - - - 0x01E63C 07:E62C: 4C B6 E0  JMP loc_E0B6_handle_next_enemy



ofs_004_E62F_18:
C - - J - - 0x01E63F 07:E62F: BD C3 03  LDA ram_03C3,X
C - - - - - 0x01E642 07:E632: D0 07     BNE bra_E63B
C - - - - - 0x01E644 07:E634: A9 B1     LDA #$B1
C - - - - - 0x01E646 07:E636: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E648 07:E638: 4C B8 E6  JMP loc_E6B8_handle_next_enemy
bra_E63B:
C - - - - - 0x01E64B 07:E63B: B5 9E     LDA ram_009E_obj,X
C - - - - - 0x01E64D 07:E63D: 29 03     AND #$03
C - - - - - 0x01E64F 07:E63F: D0 15     BNE bra_E656
C - - - - - 0x01E651 07:E641: B5 C5     LDA ram_00C5_obj,X
C - - - - - 0x01E653 07:E643: 49 FF     EOR #$FF
C - - - - - 0x01E655 07:E645: 18        CLC
C - - - - - 0x01E656 07:E646: 69 01     ADC #$01
C - - - - - 0x01E658 07:E648: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01E65B 07:E64B: 95 C5     STA ram_00C5_obj,X
C - - - - - 0x01E65D 07:E64D: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E65F 07:E64F: 49 40     EOR #$40
C - - - - - 0x01E661 07:E651: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01E663 07:E653: 4C B8 E6  JMP loc_E6B8_handle_next_enemy
bra_E656:
C - - - - - 0x01E666 07:E656: B5 C5     LDA ram_00C5_obj,X
C - - - - - 0x01E668 07:E658: F0 10     BEQ bra_E66A
C - - - - - 0x01E66A 07:E65A: FE 9C 03  INC ram_039C_obj,X
C - - - - - 0x01E66D 07:E65D: BD 9C 03  LDA ram_039C_obj,X
C - - - - - 0x01E670 07:E660: 29 1F     AND #$1F
C - - - - - 0x01E672 07:E662: 4A        LSR
C - - - - - 0x01E673 07:E663: 4A        LSR
C - - - - - 0x01E674 07:E664: 4A        LSR
C - - - - - 0x01E675 07:E665: 18        CLC
C - - - - - 0x01E676 07:E666: 69 B1     ADC #$B1
C - - - - - 0x01E678 07:E668: 95 5D     STA ram_obj_anim_id,X
bra_E66A:
C - - - - - 0x01E67A 07:E66A: B5 37     LDA ram_random,X
C - - - - - 0x01E67C 07:E66C: C9 0A     CMP #$0A
C - - - - - 0x01E67E 07:E66E: B0 48     BCS bra_E6B8
C - - - - - 0x01E680 07:E670: 20 9D EE  JSR sub_EE9D
C - - - - - 0x01E683 07:E673: A9 FF     LDA #$FF
C - - - - - 0x01E685 07:E675: 85 E2     STA ram_00E2
C - - - - - 0x01E687 07:E677: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E689 07:E679: 29 BF     AND #$BF
C - - - - - 0x01E68B 07:E67B: 90 08     BCC bra_E685
C - - - - - 0x01E68D 07:E67D: 09 40     ORA #$40
C - - - - - 0x01E68F 07:E67F: 48        PHA
C - - - - - 0x01E690 07:E680: A9 01     LDA #$01
C - - - - - 0x01E692 07:E682: 85 E2     STA ram_00E2
C - - - - - 0x01E694 07:E684: 68        PLA
bra_E685:
C - - - - - 0x01E695 07:E685: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01E697 07:E687: A5 E2     LDA ram_00E2
C - - - - - 0x01E699 07:E689: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01E69C 07:E68C: 95 C5     STA ram_00C5_obj,X
C - - - - - 0x01E69E 07:E68E: B5 37     LDA ram_random,X
C - - - - - 0x01E6A0 07:E690: C9 05     CMP #$05
C - - - - - 0x01E6A2 07:E692: B0 24     BCS bra_E6B8
C - - - - - 0x01E6A4 07:E694: 98        TYA
C - - - - - 0x01E6A5 07:E695: D0 21     BNE bra_E6B8
C - - - - - 0x01E6A7 07:E697: A0 11     LDY #$11
C - - - - - 0x01E6A9 07:E699: A9 17     LDA #$17
C - - - - - 0x01E6AB 07:E69B: 85 4B     STA ram_004B
C - - - - - 0x01E6AD 07:E69D: A9 00     LDA #$00
C - - - - - 0x01E6AF 07:E69F: 8D 76 06  STA ram_0676
C - - - - - 0x01E6B2 07:E6A2: A9 00     LDA #$00
C - - - - - 0x01E6B4 07:E6A4: 20 73 EC  JSR sub_EC73
C - - - - - 0x01E6B7 07:E6A7: B0 0F     BCS bra_E6B8
C - - - - - 0x01E6B9 07:E6A9: A9 10     LDA #con_sound_10
C - - - - - 0x01E6BB 07:E6AB: 85 47     STA ram_sound
C - - - - - 0x01E6BD 07:E6AD: A9 B6     LDA #$B6
C - - - - - 0x01E6BF 07:E6AF: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E6C1 07:E6B1: A9 00     LDA #$00
C - - - - - 0x01E6C3 07:E6B3: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01E6C6 07:E6B6: 95 C5     STA ram_00C5_obj,X
bra_E6B8:
loc_E6B8_handle_next_enemy:   ; bzk optimize
C D 3 - - - 0x01E6C8 07:E6B8: 4C B6 E0  JMP loc_E0B6_handle_next_enemy



ofs_004_E6BB_0A:
C - - J - - 0x01E6CB 07:E6BB: A9 08     LDA #con_chr_bank + $08
C - - - - - 0x01E6CD 07:E6BD: C5 29     CMP ram_chr_bank_spr
C - - - - - 0x01E6CF 07:E6BF: F0 0B     BEQ bra_E6CC
C - - - - - 0x01E6D1 07:E6C1: 85 29     STA ram_chr_bank_spr
C - - - - - 0x01E6D3 07:E6C3: 85 2A     STA ram_002A_copy_chr_bank
C - - - - - 0x01E6D5 07:E6C5: A9 26     LDA #con_sound_26
C - - - - - 0x01E6D7 07:E6C7: 85 47     STA ram_sound
C - - - - - 0x01E6D9 07:E6C9: 20 7F F7  JSR sub_F77F_play_sound
bra_E6CC:
C - - - - - 0x01E6DC 07:E6CC: BD C3 03  LDA ram_03C3,X
C - - - - - 0x01E6DF 07:E6CF: D0 4A     BNE bra_E71B
C - - - - - 0x01E6E1 07:E6D1: A5 36     LDA ram_0036
C - - - - - 0x01E6E3 07:E6D3: F0 04     BEQ bra_E6D9
C - - - - - 0x01E6E5 07:E6D5: A9 02     LDA #$02
C - - - - - 0x01E6E7 07:E6D7: 85 36     STA ram_0036
bra_E6D9:
C - - - - - 0x01E6E9 07:E6D9: A9 61     LDA #$61
C - - - - - 0x01E6EB 07:E6DB: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E6ED 07:E6DD: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E6EF 07:E6DF: 29 08     AND #$08
C - - - - - 0x01E6F1 07:E6E1: F0 15     BEQ bra_E6F8
C - - - - - 0x01E6F3 07:E6E3: AD 4C 06  LDA ram_064C_copy_chr_bank
C - - - - - 0x01E6F6 07:E6E6: 85 29     STA ram_chr_bank_spr
C - - - - - 0x01E6F8 07:E6E8: AD 4D 06  LDA ram_064D_copy_chr_bank
C - - - - - 0x01E6FB 07:E6EB: 85 2A     STA ram_002A_copy_chr_bank
C - - - - - 0x01E6FD 07:E6ED: A9 00     LDA #$00
C - - - - - 0x01E6FF 07:E6EF: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01E701 07:E6F1: A9 23     LDA #con_sound_23
C - - - - - 0x01E703 07:E6F3: 85 47     STA ram_sound
C - - - - - 0x01E705 07:E6F5: 20 7F F7  JSR sub_F77F_play_sound
bra_E6F8:
C - - - - - 0x01E708 07:E6F8: 20 65 EC  JSR sub_EC65_search_for_something
C - - - - - 0x01E70B 07:E6FB: 90 03     BCC bra_E700
C - - - - - 0x01E70D 07:E6FD: 4C D6 E8  JMP loc_E8D6_handle_next_enemy
bra_E700:
C - - - - - 0x01E710 07:E700: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x01E712 07:E702: 99 77 00  STA ram_pos_X_lo,Y
C - - - - - 0x01E715 07:E705: B5 84     LDA ram_pos_X_hi,X
C - - - - - 0x01E717 07:E707: 99 84 00  STA ram_pos_X_hi,Y
C - - - - - 0x01E71A 07:E70A: B5 91     LDA ram_pos_Y_lo,X
C - - - - - 0x01E71C 07:E70C: 99 91 00  STA ram_pos_Y_lo,Y
C - - - - - 0x01E71F 07:E70F: 8A        TXA
C - - - - - 0x01E720 07:E710: 48        PHA
C - - - - - 0x01E721 07:E711: 98        TYA
C - - - - - 0x01E722 07:E712: AA        TAX
C - - - - - 0x01E723 07:E713: 20 28 EC  JSR sub_EC28
C - - - - - 0x01E726 07:E716: 68        PLA
C - - - - - 0x01E727 07:E717: AA        TAX
C - - - - - 0x01E728 07:E718: 4C D6 E8  JMP loc_E8D6_handle_next_enemy
bra_E71B:
C - - - - - 0x01E72B 07:E71B: B5 6A     LDA ram_006A_obj,X
C - - - - - 0x01E72D 07:E71D: 10 03     BPL bra_E722
bra_E71F:
C - - - - - 0x01E72F 07:E71F: 4C D9 E8  JMP loc_E8D9
bra_E722:
C - - - - - 0x01E732 07:E722: 8A        TXA
C - - - - - 0x01E733 07:E723: 38        SEC
C - - - - - 0x01E734 07:E724: E9 01     SBC #$01
C - - - - - 0x01E736 07:E726: 95 6A     STA ram_006A_obj,X
C - - - - - 0x01E738 07:E728: 20 4F E9  JSR sub_E94F
C - - - - - 0x01E73B 07:E72B: 20 ED E9  JSR sub_E9ED
C - - - - - 0x01E73E 07:E72E: B5 6A     LDA ram_006A_obj,X
C - - - - - 0x01E740 07:E730: 30 ED     BMI bra_E71F
C - - - - - 0x01E742 07:E732: A9 01     LDA #$01
C - - - - - 0x01E744 07:E734: 85 36     STA ram_0036
C - - - - - 0x01E746 07:E736: B5 9E     LDA ram_009E_obj,X
C - - - - - 0x01E748 07:E738: 29 01     AND #$01
C - - - - - 0x01E74A 07:E73A: D0 75     BNE bra_E7B1
C - - - - - 0x01E74C 07:E73C: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E74E 07:E73E: 29 04     AND #$04
C - - - - - 0x01E750 07:E740: D0 38     BNE bra_E77A
bra_E742:
loc_E742:
C D 3 - - - 0x01E752 07:E742: A9 01     LDA #$01
C - - - - - 0x01E754 07:E744: 85 E5     STA ram_00E5
C - - - - - 0x01E756 07:E746: A9 FF     LDA #$FF
C - - - - - 0x01E758 07:E748: 85 E6     STA ram_00E6
loc_E74A:
C D 3 - - - 0x01E75A 07:E74A: A4 E5     LDY ram_00E5
C - - - - - 0x01E75C 07:E74C: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E75E 07:E74E: 29 40     AND #$40
C - - - - - 0x01E760 07:E750: D0 02     BNE bra_E754
C - - - - - 0x01E762 07:E752: A4 E6     LDY ram_00E6
bra_E754:
C - - - - - 0x01E764 07:E754: 9D A9 03  STA ram_03A9_obj,X
C - - - - - 0x01E767 07:E757: 98        TYA
C - - - - - 0x01E768 07:E758: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01E76B 07:E75B: 95 C5     STA ram_00C5_obj,X
C - - - - - 0x01E76D 07:E75D: A9 FB     LDA #$FB
C - - - - - 0x01E76F 07:E75F: 9D 68 03  STA ram_0368_obj,X
C - - - - - 0x01E772 07:E762: A9 05     LDA #$05
C - - - - - 0x01E774 07:E764: 9D 75 03  STA ram_0375_obj,X
C - - - - - 0x01E777 07:E767: A9 00     LDA #$00
C - - - - - 0x01E779 07:E769: 9D 9C 03  STA ram_039C_obj,X
C - - - - - 0x01E77C 07:E76C: A9 05     LDA #$05
C - - - - - 0x01E77E 07:E76E: 9D 8F 03  STA ram_038F_obj,X
C - - - - - 0x01E781 07:E771: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E783 07:E773: 09 04     ORA #$04
C - - - - - 0x01E785 07:E775: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01E787 07:E777: 4C D6 E8  JMP loc_E8D6_handle_next_enemy
bra_E77A:
C - - - - - 0x01E78A 07:E77A: B5 91     LDA ram_pos_Y_lo,X
C - - - - - 0x01E78C 07:E77C: C9 B4     CMP #$B4
C - - - - - 0x01E78E 07:E77E: B0 C2     BCS bra_E742
C - - - - - 0x01E790 07:E780: FE 9C 03  INC ram_039C_obj,X
C - - - - - 0x01E793 07:E783: BD 9C 03  LDA ram_039C_obj,X
C - - - - - 0x01E796 07:E786: 4A        LSR
C - - - - - 0x01E797 07:E787: 4A        LSR
C - - - - - 0x01E798 07:E788: 4A        LSR
C - - - - - 0x01E799 07:E789: 29 03     AND #$03
C - - - - - 0x01E79B 07:E78B: BC A9 03  LDY ram_03A9_obj,X
C - - - - - 0x01E79E 07:E78E: F0 03     BEQ bra_E793
C - - - - - 0x01E7A0 07:E790: 18        CLC
C - - - - - 0x01E7A1 07:E791: 69 04     ADC #$04
bra_E793:
C - - - - - 0x01E7A3 07:E793: A8        TAY
C - - - - - 0x01E7A4 07:E794: B9 A1 E7  LDA tbl_E7A1,Y
C - - - - - 0x01E7A7 07:E797: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E7A9 07:E799: B9 A9 E7  LDA tbl_E7A9,Y
C - - - - - 0x01E7AC 07:E79C: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01E7AE 07:E79E: 4C D6 E8  JMP loc_E8D6_handle_next_enemy



tbl_E7A1:
- D 3 - - - 0x01E7B1 07:E7A1: 61        .byte $61   ; 00 
- D 3 - - - 0x01E7B2 07:E7A2: 62        .byte $62   ; 01 
- D 3 - - - 0x01E7B3 07:E7A3: 63        .byte $63   ; 02 
- D 3 - - - 0x01E7B4 07:E7A4: 64        .byte $64   ; 03 
- D 3 - - - 0x01E7B5 07:E7A5: 61        .byte $61   ; 04 
- D 3 - - - 0x01E7B6 07:E7A6: 62        .byte $62   ; 05 
- D 3 - - - 0x01E7B7 07:E7A7: 63        .byte $63   ; 06 
- D 3 - - - 0x01E7B8 07:E7A8: 64        .byte $64   ; 07 



tbl_E7A9:
- D 3 - - - 0x01E7B9 07:E7A9: 05        .byte $05   ; 00 
- D 3 - - - 0x01E7BA 07:E7AA: 05        .byte $05   ; 01 
- D 3 - - - 0x01E7BB 07:E7AB: C5        .byte $C5   ; 02 
- D 3 - - - 0x01E7BC 07:E7AC: C5        .byte $C5   ; 03 
- D 3 - - - 0x01E7BD 07:E7AD: 45        .byte $45   ; 04 
- D 3 - - - 0x01E7BE 07:E7AE: 45        .byte $45   ; 05 
- D 3 - - - 0x01E7BF 07:E7AF: 85        .byte $85   ; 06 
- D 3 - - - 0x01E7C0 07:E7B0: 85        .byte $85   ; 07 



bra_E7B1:
C - - - - - 0x01E7C1 07:E7B1: BD 68 03  LDA ram_0368_obj,X
C - - - - - 0x01E7C4 07:E7B4: 10 03     BPL bra_E7B9
C - - - - - 0x01E7C6 07:E7B6: 4C D6 E8  JMP loc_E8D6_handle_next_enemy
bra_E7B9:
C - - - - - 0x01E7C9 07:E7B9: A9 00     LDA #$00
C - - - - - 0x01E7CB 07:E7BB: 9D 75 03  STA ram_0375_obj,X
C - - - - - 0x01E7CE 07:E7BE: 9D 68 03  STA ram_0368_obj,X
C - - - - - 0x01E7D1 07:E7C1: B5 91     LDA ram_pos_Y_lo,X
C - - - - - 0x01E7D3 07:E7C3: 29 F0     AND #$F0
C - - - - - 0x01E7D5 07:E7C5: 95 91     STA ram_pos_Y_lo,X
C - - - - - 0x01E7D7 07:E7C7: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E7D9 07:E7C9: 29 04     AND #$04
C - - - - - 0x01E7DB 07:E7CB: F0 0D     BEQ bra_E7DA
C - - - - - 0x01E7DD 07:E7CD: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E7DF 07:E7CF: 29 3B     AND #$3B
C - - - - - 0x01E7E1 07:E7D1: BC A9 03  LDY ram_03A9_obj,X
C - - - - - 0x01E7E4 07:E7D4: F0 02     BEQ bra_E7D8
C - - - - - 0x01E7E6 07:E7D6: 09 40     ORA #$40
bra_E7D8:
C - - - - - 0x01E7E8 07:E7D8: 95 50     STA ram_0050_obj_flags,X
bra_E7DA:
C - - - - - 0x01E7EA 07:E7DA: A5 03     LDA ram_mission
C - - - - - 0x01E7EC 07:E7DC: C9 04     CMP #$04
C - - - - - 0x01E7EE 07:E7DE: D0 1B     BNE bra_E7FB
C - - - - - 0x01E7F0 07:E7E0: BD C3 03  LDA ram_03C3,X
C - - - - - 0x01E7F3 07:E7E3: C9 50     CMP #$50
C - - - - - 0x01E7F5 07:E7E5: B0 14     BCS bra_E7FB
C - - - - - 0x01E7F7 07:E7E7: A9 63     LDA #$63
C - - - - - 0x01E7F9 07:E7E9: 9D C3 03  STA ram_03C3,X
C - - - - - 0x01E7FC 07:E7EC: A9 00     LDA #$00
C - - - - - 0x01E7FE 07:E7EE: 95 6A     STA ram_006A_obj,X
C - - - - - 0x01E800 07:E7F0: A9 03     LDA #$03
C - - - - - 0x01E802 07:E7F2: 85 E5     STA ram_00E5
C - - - - - 0x01E804 07:E7F4: A9 FD     LDA #$FD
C - - - - - 0x01E806 07:E7F6: 85 E6     STA ram_00E6
C - - - - - 0x01E808 07:E7F8: 4C 4A E7  JMP loc_E74A
bra_E7FB:
C - - - - - 0x01E80B 07:E7FB: B5 C5     LDA ram_00C5_obj,X
C - - - - - 0x01E80D 07:E7FD: D0 42     BNE bra_E841
C - - - - - 0x01E80F 07:E7FF: FE 9C 03  INC ram_039C_obj,X
C - - - - - 0x01E812 07:E802: BD 9C 03  LDA ram_039C_obj,X
C - - - - - 0x01E815 07:E805: 4A        LSR
C - - - - - 0x01E816 07:E806: 4A        LSR
C - - - - - 0x01E817 07:E807: 29 07     AND #$07
C - - - - - 0x01E819 07:E809: C9 07     CMP #$07
C - - - - - 0x01E81B 07:E80B: 90 15     BCC bra_E822
C - - - - - 0x01E81D 07:E80D: A9 0C     LDA #con_sound_0C
C - - - - - 0x01E81F 07:E80F: 85 47     STA ram_sound
C - - - - - 0x01E821 07:E811: A9 02     LDA #$02
C - - - - - 0x01E823 07:E813: 85 E5     STA ram_00E5
C - - - - - 0x01E825 07:E815: A9 FE     LDA #$FE
C - - - - - 0x01E827 07:E817: 85 E6     STA ram_00E6
C - - - - - 0x01E829 07:E819: A5 38     LDA ram_random + $01
C - - - - - 0x01E82B 07:E81B: C9 32     CMP #$32
C - - - - - 0x01E82D 07:E81D: B0 0C     BCS bra_E82B
C - - - - - 0x01E82F 07:E81F: 4C 4A E7  JMP loc_E74A
bra_E822:
C - - - - - 0x01E832 07:E822: A8        TAY
C - - - - - 0x01E833 07:E823: B9 47 E9  LDA tbl_E947,Y
C - - - - - 0x01E836 07:E826: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E838 07:E828: 4C D6 E8  JMP loc_E8D6_handle_next_enemy
bra_E82B:
loc_E82B:
C D 3 - - - 0x01E83B 07:E82B: A5 37     LDA ram_random
C - - - - - 0x01E83D 07:E82D: C9 1E     CMP #$1E
C - - - - - 0x01E83F 07:E82F: B0 3D     BCS bra_E86E
C - - - - - 0x01E841 07:E831: AD 83 06  LDA ram_0683
C - - - - - 0x01E844 07:E834: C9 0C     CMP #$0C
C - - - - - 0x01E846 07:E836: 90 06     BCC bra_E83E
C - - - - - 0x01E848 07:E838: B5 91     LDA ram_pos_Y_lo,X
C - - - - - 0x01E84A 07:E83A: C9 64     CMP #$64
C - - - - - 0x01E84C 07:E83C: 90 30     BCC bra_E86E
bra_E83E:
C - - - - - 0x01E84E 07:E83E: 4C 42 E7  JMP loc_E742
bra_E841:
C - - - - - 0x01E851 07:E841: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E853 07:E843: 29 08     AND #$08
C - - - - - 0x01E855 07:E845: D0 27     BNE bra_E86E
C - - - - - 0x01E857 07:E847: FE 9C 03  INC ram_039C_obj,X
C - - - - - 0x01E85A 07:E84A: BD 9C 03  LDA ram_039C_obj,X
C - - - - - 0x01E85D 07:E84D: 29 1F     AND #$1F
C - - - - - 0x01E85F 07:E84F: 4A        LSR
C - - - - - 0x01E860 07:E850: 4A        LSR
C - - - - - 0x01E861 07:E851: 4A        LSR
C - - - - - 0x01E862 07:E852: 18        CLC
C - - - - - 0x01E863 07:E853: 69 5A     ADC #$5A
C - - - - - 0x01E865 07:E855: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E867 07:E857: B5 9E     LDA ram_009E_obj,X
C - - - - - 0x01E869 07:E859: 29 06     AND #$06
C - - - - - 0x01E86B 07:E85B: F0 03     BEQ bra_E860
C - - - - - 0x01E86D 07:E85D: 4C 42 E7  JMP loc_E742
bra_E860:
C - - - - - 0x01E870 07:E860: BD A9 03  LDA ram_03A9_obj,X
C - - - - - 0x01E873 07:E863: 10 2A     BPL bra_E88F
C - - - - - 0x01E875 07:E865: B5 37     LDA ram_random,X
C - - - - - 0x01E877 07:E867: 29 1F     AND #$1F
C - - - - - 0x01E879 07:E869: 69 1E     ADC #$1E
C - - - - - 0x01E87B 07:E86B: 9D A9 03  STA ram_03A9_obj,X
bra_E86E:
C - - - - - 0x01E87E 07:E86E: 20 D7 EE  JSR sub_EED7
C - - - - - 0x01E881 07:E871: A9 FF     LDA #$FF
C - - - - - 0x01E883 07:E873: 85 E2     STA ram_00E2
C - - - - - 0x01E885 07:E875: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E887 07:E877: 29 BF     AND #$BF
C - - - - - 0x01E889 07:E879: 90 08     BCC bra_E883
C - - - - - 0x01E88B 07:E87B: 09 40     ORA #$40
C - - - - - 0x01E88D 07:E87D: 48        PHA
C - - - - - 0x01E88E 07:E87E: A9 01     LDA #$01
C - - - - - 0x01E890 07:E880: 85 E2     STA ram_00E2
C - - - - - 0x01E892 07:E882: 68        PLA
bra_E883:
C - - - - - 0x01E893 07:E883: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01E895 07:E885: A5 E2     LDA ram_00E2
C - - - - - 0x01E897 07:E887: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01E89A 07:E88A: 95 C5     STA ram_00C5_obj,X
C - - - - - 0x01E89C 07:E88C: 4C D6 E8  JMP loc_E8D6_handle_next_enemy
bra_E88F:
C - - - - - 0x01E89F 07:E88F: DE A9 03  DEC ram_03A9_obj,X
C - - - - - 0x01E8A2 07:E892: 20 9D EE  JSR sub_EE9D
C - - - - - 0x01E8A5 07:E895: 98        TYA
C - - - - - 0x01E8A6 07:E896: D0 06     BNE bra_E89E
C - - - - - 0x01E8A8 07:E898: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E8AA 07:E89A: 29 02     AND #$02
C - - - - - 0x01E8AC 07:E89C: D0 0A     BNE bra_E8A8
bra_E89E:
C - - - - - 0x01E8AE 07:E89E: BD A9 03  LDA ram_03A9_obj,X
C - - - - - 0x01E8B1 07:E8A1: C9 0A     CMP #$0A
C - - - - - 0x01E8B3 07:E8A3: B0 31     BCS bra_E8D6
C - - - - - 0x01E8B5 07:E8A5: 4C 2B E8  JMP loc_E82B
bra_E8A8:
C - - - - - 0x01E8B8 07:E8A8: AD 83 06  LDA ram_0683
C - - - - - 0x01E8BB 07:E8AB: C9 0C     CMP #$0C
C - - - - - 0x01E8BD 07:E8AD: B0 EF     BCS bra_E89E
C - - - - - 0x01E8BF 07:E8AF: 20 1A EC  JSR sub_EC1A
C - - - - - 0x01E8C2 07:E8B2: A9 01     LDA #$01    ; body
C - - - - - 0x01E8C4 07:E8B4: 8D 99 06  STA ram_0699_unit_index
C - - - - - 0x01E8C7 07:E8B7: A9 07     LDA #$07
C - - - - - 0x01E8C9 07:E8B9: 20 5B F1  JSR sub_F15B
C - - - - - 0x01E8CC 07:E8BC: A9 5F     LDA #$5F
C - - - - - 0x01E8CE 07:E8BE: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01E8D0 07:E8C0: A9 0A     LDA #$0A
C - - - - - 0x01E8D2 07:E8C2: 9D A9 03  STA ram_03A9_obj,X
C - - - - - 0x01E8D5 07:E8C5: A9 00     LDA #$00
C - - - - - 0x01E8D7 07:E8C7: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01E8DA 07:E8CA: 95 C5     STA ram_00C5_obj,X
C - - - - - 0x01E8DC 07:E8CC: 9D 9C 03  STA ram_039C_obj,X
C - - - - - 0x01E8DF 07:E8CF: A9 11     LDA #con_sound_11
C - - - - - 0x01E8E1 07:E8D1: 85 47     STA ram_sound
C - - - - - 0x01E8E3 07:E8D3: 4C D6 E8  JMP loc_E8D6_handle_next_enemy
bra_E8D6:
loc_E8D6_handle_next_enemy:   ; bzk optimize
C D 3 - - - 0x01E8E6 07:E8D6: 4C B6 E0  JMP loc_E0B6_handle_next_enemy



loc_E8D9:
C D 3 - - - 0x01E8E9 07:E8D9: A9 00     LDA #$00
C - - - - - 0x01E8EB 07:E8DB: 95 C5     STA ram_00C5_obj,X
C - - - - - 0x01E8ED 07:E8DD: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01E8F0 07:E8E0: 9D 75 03  STA ram_0375_obj,X
C - - - - - 0x01E8F3 07:E8E3: 9D 68 03  STA ram_0368_obj,X
C - - - - - 0x01E8F6 07:E8E6: A5 6D     LDA ram_006A_obj + $03
C - - - - - 0x01E8F8 07:E8E8: 25 6C     AND ram_006A_obj + $02
C - - - - - 0x01E8FA 07:E8EA: 30 03     BMI bra_E8EF
C - - - - - 0x01E8FC 07:E8EC: 4C B6 E0  JMP loc_E0B6_handle_next_enemy
bra_E8EF:
C - - - - - 0x01E8FF 07:E8EF: A5 60     LDA ram_obj_anim_id + $03
C - - - - - 0x01E901 07:E8F1: C9 60     CMP #$60
C - - - - - 0x01E903 07:E8F3: F0 13     BEQ bra_E908
C - - - - - 0x01E905 07:E8F5: CE AC 03  DEC ram_03A9_obj + $03
C - - - - - 0x01E908 07:E8F8: 10 09     BPL bra_E903
C - - - - - 0x01E90A 07:E8FA: E6 60     INC ram_obj_anim_id + $03
C - - - - - 0x01E90C 07:E8FC: E6 5F     INC ram_obj_anim_id + $02
C - - - - - 0x01E90E 07:E8FE: A9 14     LDA #$14
C - - - - - 0x01E910 07:E900: 8D AC 03  STA ram_03A9_obj + $03
bra_E903:
C - - - - - 0x01E913 07:E903: A9 01     LDA #$01
C - - - - - 0x01E915 07:E905: 85 42     STA ram_0042
C - - - - - 0x01E917 07:E907: 60        RTS
bra_E908:
C - - - - - 0x01E918 07:E908: 18        CLC
C - - - - - 0x01E919 07:E909: A5 6D     LDA ram_006A_obj + $03
C - - - - - 0x01E91B 07:E90B: 69 01     ADC #$01
C - - - - - 0x01E91D 07:E90D: 09 80     ORA #$80
C - - - - - 0x01E91F 07:E90F: 85 6D     STA ram_006A_obj + $03
C - - - - - 0x01E921 07:E911: 85 6C     STA ram_006A_obj + $02
C - - - - - 0x01E923 07:E913: A5 57     LDA ram_0050_obj_flags + $07
C - - - - - 0x01E925 07:E915: 05 58     ORA ram_0050_obj_flags + $08
C - - - - - 0x01E927 07:E917: D0 20     BNE bra_E939
C - - - - - 0x01E929 07:E919: A9 6C     LDA #$6C
C - - - - - 0x01E92B 07:E91B: 85 98     STA ram_pos_Y_lo + $07
C - - - - - 0x01E92D 07:E91D: 85 99     STA ram_pos_Y_lo + $08
C - - - - - 0x01E92F 07:E91F: A9 88     LDA #$88
C - - - - - 0x01E931 07:E921: 85 7E     STA ram_pos_X_lo + $07
C - - - - - 0x01E933 07:E923: A9 01     LDA #$01
C - - - - - 0x01E935 07:E925: 85 8B     STA ram_pos_X_hi + $07
C - - - - - 0x01E937 07:E927: A9 91     LDA #$91
C - - - - - 0x01E939 07:E929: 85 7F     STA ram_pos_X_lo + $08
C - - - - - 0x01E93B 07:E92B: A9 01     LDA #$01
C - - - - - 0x01E93D 07:E92D: 85 8C     STA ram_pos_X_hi + $08
C - - - - - 0x01E93F 07:E92F: A2 07     LDX #$07
C - - - - - 0x01E941 07:E931: 20 28 EC  JSR sub_EC28
C - - - - - 0x01E944 07:E934: A2 08     LDX #$08
C - - - - - 0x01E946 07:E936: 20 28 EC  JSR sub_EC28
bra_E939:
C - - - - - 0x01E949 07:E939: A5 42     LDA ram_0042
C - - - - - 0x01E94B 07:E93B: D0 09     BNE bra_E946_RTS
C - - - - - 0x01E94D 07:E93D: A9 05     LDA #$05
C - - - - - 0x01E94F 07:E93F: 85 03     STA ram_mission
C - - - - - 0x01E951 07:E941: A9 01     LDA #$01
C - - - - - 0x01E953 07:E943: 8D 7E 06  STA ram_067E
bra_E946_RTS:
C - - - - - 0x01E956 07:E946: 60        RTS



tbl_E947:
- D 3 - - - 0x01E957 07:E947: 5D        .byte $5D   ; 00 
- D 3 - - - 0x01E958 07:E948: 5E        .byte $5E   ; 04 
- D 3 - - - 0x01E959 07:E949: 5E        .byte $5E   ; 08 
- D 3 - - - 0x01E95A 07:E94A: 5F        .byte $5F   ; 0C 
- D 3 - - - 0x01E95B 07:E94B: 60        .byte $60   ; 10 
- D 3 - - - 0x01E95C 07:E94C: 60        .byte $60   ; 14 
- D 3 - - - 0x01E95D 07:E94D: 5D        .byte $5D   ; 18 



; bzk garbage 0x01E819
- - - - - - 0x01E95E 07:E94E: 5D        .byte $5D   ; 



sub_E94F:
C - - - - - 0x01E95F 07:E94F: A5 03     LDA ram_mission
C - - - - - 0x01E961 07:E951: C9 04     CMP #$04
C - - - - - 0x01E963 07:E953: D0 70     BNE bra_E9C5
; if mission 5
C - - - - - 0x01E965 07:E955: B5 84     LDA ram_pos_X_hi,X
C - - - - - 0x01E967 07:E957: D0 2A     BNE bra_E983
C - - - - - 0x01E969 07:E959: B5 C5     LDA ram_00C5_obj,X
C - - - - - 0x01E96B 07:E95B: 10 30     BPL bra_E98D
C - - - - - 0x01E96D 07:E95D: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x01E96F 07:E95F: C9 08     CMP #$08
C - - - - - 0x01E971 07:E961: B0 2A     BCS bra_E98D
loc_E963:
bra_E963:
C D 3 - - - 0x01E973 07:E963: B5 C5     LDA ram_00C5_obj,X
C - - - - - 0x01E975 07:E965: 49 FF     EOR #$FF
C - - - - - 0x01E977 07:E967: 18        CLC
C - - - - - 0x01E978 07:E968: 69 01     ADC #$01
C - - - - - 0x01E97A 07:E96A: 95 C5     STA ram_00C5_obj,X
C - - - - - 0x01E97C 07:E96C: BD 5B 03  LDA ram_035B_obj,X
C - - - - - 0x01E97F 07:E96F: 49 FF     EOR #$FF
C - - - - - 0x01E981 07:E971: 18        CLC
C - - - - - 0x01E982 07:E972: 69 01     ADC #$01
C - - - - - 0x01E984 07:E974: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01E987 07:E977: BD A9 03  LDA ram_03A9_obj,X
C - - - - - 0x01E98A 07:E97A: 49 FF     EOR #$FF
C - - - - - 0x01E98C 07:E97C: 18        CLC
C - - - - - 0x01E98D 07:E97D: 69 01     ADC #$01
C - - - - - 0x01E98F 07:E97F: 9D A9 03  STA ram_03A9_obj,X
C - - - - - 0x01E992 07:E982: 60        RTS
bra_E983:
C - - - - - 0x01E993 07:E983: B5 C5     LDA ram_00C5_obj,X
C - - - - - 0x01E995 07:E985: 30 06     BMI bra_E98D
C - - - - - 0x01E997 07:E987: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x01E999 07:E989: C9 F2     CMP #$F2
C - - - - - 0x01E99B 07:E98B: B0 D6     BCS bra_E963
bra_E98D:
C - - - - - 0x01E99D 07:E98D: AD 83 06  LDA ram_0683
C - - - - - 0x01E9A0 07:E990: C9 0C     CMP #$0C
C - - - - - 0x01E9A2 07:E992: 90 28     BCC bra_E9BC_RTS
C - - - - - 0x01E9A4 07:E994: B5 9E     LDA ram_009E_obj,X
C - - - - - 0x01E9A6 07:E996: F0 24     BEQ bra_E9BC_RTS
C - - - - - 0x01E9A8 07:E998: B5 91     LDA ram_pos_Y_lo,X
C - - - - - 0x01E9AA 07:E99A: 30 20     BMI bra_E9BC_RTS
C - - - - - 0x01E9AC 07:E99C: B5 84     LDA ram_pos_X_hi,X
C - - - - - 0x01E9AE 07:E99E: F0 1C     BEQ bra_E9BC_RTS
C - - - - - 0x01E9B0 07:E9A0: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E9B2 07:E9A2: 29 04     AND #$04
C - - - - - 0x01E9B4 07:E9A4: D0 16     BNE bra_E9BC_RTS
C - - - - - 0x01E9B6 07:E9A6: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x01E9B8 07:E9A8: DD BD E9  CMP tbl_E9BD,X
C - - - - - 0x01E9BB 07:E9AB: D0 0F     BNE bra_E9BC_RTS
C - - - - - 0x01E9BD 07:E9AD: B5 6A     LDA ram_006A_obj,X
C - - - - - 0x01E9BF 07:E9AF: 09 80     ORA #$80
C - - - - - 0x01E9C1 07:E9B1: 95 6A     STA ram_006A_obj,X
C - - - - - 0x01E9C3 07:E9B3: BD C1 E9  LDA tbl_E9C1,X
C - - - - - 0x01E9C6 07:E9B6: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01E9C8 07:E9B8: A9 5E     LDA #$5E
C - - - - - 0x01E9CA 07:E9BA: 95 5D     STA ram_obj_anim_id,X
bra_E9BC_RTS:
C - - - - - 0x01E9CC 07:E9BC: 60        RTS



tbl_E9BD:
- - - - - - 0x01E9CD 07:E9BD: 00        .byte $00   ; 00 
- - - - - - 0x01E9CE 07:E9BE: 76        .byte $76   ; 01 
- D 3 - - - 0x01E9CF 07:E9BF: 76        .byte $76   ; 02 
- D 3 - - - 0x01E9D0 07:E9C0: 8B        .byte $8B   ; 03 



tbl_E9C1:
- - - - - - 0x01E9D1 07:E9C1: 00        .byte $00   ; 00 
- - - - - - 0x01E9D2 07:E9C2: 41        .byte $41   ; 01 
- D 3 - - - 0x01E9D3 07:E9C3: 41        .byte $41   ; 02 
- D 3 - - - 0x01E9D4 07:E9C4: 01        .byte $01   ; 03 



bra_E9C5:
C - - - - - 0x01E9D5 07:E9C5: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01E9D7 07:E9C7: 29 08     AND #$08
C - - - - - 0x01E9D9 07:E9C9: F0 21     BEQ bra_E9EC_RTS
C - - - - - 0x01E9DB 07:E9CB: 20 9D EE  JSR sub_EE9D
C - - - - - 0x01E9DE 07:E9CE: 90 14     BCC bra_E9E4
- - - - - - 0x01E9E0 07:E9D0: BD 5B 03  LDA ram_035B_obj,X
- - - - - - 0x01E9E3 07:E9D3: 10 17     BPL bra_E9EC_RTS
- - - - - - 0x01E9E5 07:E9D5: A9 01     LDA #$01
- - - - - - 0x01E9E7 07:E9D7: 9D 5B 03  STA ram_035B_obj,X
- - - - - - 0x01E9EA 07:E9DA: A9 40     LDA #$40
- - - - - - 0x01E9EC 07:E9DC: 9D A9 03  STA ram_03A9_obj,X
- - - - - - 0x01E9EF 07:E9DF: 15 50     ORA ram_0050_obj_flags,X
- - - - - - 0x01E9F1 07:E9E1: 95 50     STA ram_0050_obj_flags,X
- - - - - - 0x01E9F3 07:E9E3: 60        RTS
bra_E9E4:
C - - - - - 0x01E9F4 07:E9E4: BD 5B 03  LDA ram_035B_obj,X
C - - - - - 0x01E9F7 07:E9E7: 30 03     BMI bra_E9EC_RTS
C - - - - - 0x01E9F9 07:E9E9: 4C 63 E9  JMP loc_E963
bra_E9EC_RTS:
C - - - - - 0x01E9FC 07:E9EC: 60        RTS



sub_E9ED:
C - - - - - 0x01E9FD 07:E9ED: A5 54     LDA ram_0050_obj_flags + $04
C - - - - - 0x01E9FF 07:E9EF: F0 1C     BEQ bra_EA0D_RTS
C - - - - - 0x01EA01 07:E9F1: A5 BC     LDA ram_obj_id + $04
C - - - - - 0x01EA03 07:E9F3: C9 03     CMP #$03
C - - - - - 0x01EA05 07:E9F5: 90 16     BCC bra_EA0D_RTS
C - - - - - 0x01EA07 07:E9F7: C9 05     CMP #$05
C - - - - - 0x01EA09 07:E9F9: B0 12     BCS bra_EA0D_RTS
C - - - - - 0x01EA0B 07:E9FB: 8A        TXA
C - - - - - 0x01EA0C 07:E9FC: 48        PHA
C - - - - - 0x01EA0D 07:E9FD: A2 04     LDX #$04
C - - - - - 0x01EA0F 07:E9FF: 20 28 EC  JSR sub_EC28
C - - - - - 0x01EA12 07:EA02: 68        PLA
C - - - - - 0x01EA13 07:EA03: AA        TAX
C - - - - - 0x01EA14 07:EA04: A9 0A     LDA #con_msg_missile_jammed
C - - - - - 0x01EA16 07:EA06: C5 46     CMP ram_message
C - - - - - 0x01EA18 07:EA08: F0 03     BEQ bra_EA0D_RTS
C - - - - - 0x01EA1A 07:EA0A: 20 7B C9  JSR sub_C97B_prepare_new_message
bra_EA0D_RTS:
C - - - - - 0x01EA1D 07:EA0D: 60        RTS



ofs_004_EA0E_15:
C - - J - - 0x01EA1E 07:EA0E: A9 0B     LDA #con_chr_bank + $0B
C - - - - - 0x01EA20 07:EA10: 85 29     STA ram_chr_bank_spr
C - - - - - 0x01EA22 07:EA12: 85 2A     STA ram_002A_copy_chr_bank
C - - - - - 0x01EA24 07:EA14: BD C3 03  LDA ram_03C3,X
C - - - - - 0x01EA27 07:EA17: D0 03     BNE bra_EA1C
C - - - - - 0x01EA29 07:EA19: 4C 48 EB  JMP loc_EB48
bra_EA1C:
C - - - - - 0x01EA2C 07:EA1C: 20 9D EE  JSR sub_EE9D
C - - - - - 0x01EA2F 07:EA1F: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01EA31 07:EA21: 29 BF     AND #$BF
C - - - - - 0x01EA33 07:EA23: B0 02     BCS bra_EA27
C - - - - - 0x01EA35 07:EA25: 09 40     ORA #$40
bra_EA27:
C - - - - - 0x01EA37 07:EA27: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01EA39 07:EA29: 18        CLC
C - - - - - 0x01EA3A 07:EA2A: BD 9C 03  LDA ram_039C_obj,X
C - - - - - 0x01EA3D 07:EA2D: 75 C5     ADC ram_00C5_obj,X
C - - - - - 0x01EA3F 07:EA2F: 29 1F     AND #$1F
C - - - - - 0x01EA41 07:EA31: 9D 9C 03  STA ram_039C_obj,X
C - - - - - 0x01EA44 07:EA34: 4A        LSR
C - - - - - 0x01EA45 07:EA35: 4A        LSR
C - - - - - 0x01EA46 07:EA36: 4A        LSR
C - - - - - 0x01EA47 07:EA37: A8        TAY
C - - - - - 0x01EA48 07:EA38: 18        CLC
C - - - - - 0x01EA49 07:EA39: 69 88     ADC #$88
C - - - - - 0x01EA4B 07:EA3B: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01EA4D 07:EA3D: B9 44 EB  LDA tbl_EB44,Y
C - - - - - 0x01EA50 07:EA40: 95 91     STA ram_pos_Y_lo,X
C - - - - - 0x01EA52 07:EA42: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x01EA54 07:EA44: 10 04     BPL bra_EA4A
C - - - - - 0x01EA56 07:EA46: A0 01     LDY #$01
C - - - - - 0x01EA58 07:EA48: D0 21     BNE bra_EA6B    ; jmp
bra_EA4A:
C - - - - - 0x01EA5A 07:EA4A: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x01EA5C 07:EA4C: C9 50     CMP #$50
C - - - - - 0x01EA5E 07:EA4E: 90 04     BCC bra_EA54
- - - - - - 0x01EA60 07:EA50: A0 FF     LDY #$FF
- - - - - - 0x01EA62 07:EA52: D0 17     BNE bra_EA6B
bra_EA54:
C - - - - - 0x01EA64 07:EA54: DE A9 03  DEC ram_03A9_obj,X
C - - - - - 0x01EA67 07:EA57: 10 18     BPL bra_EA71
C - - - - - 0x01EA69 07:EA59: B5 37     LDA ram_random,X
C - - - - - 0x01EA6B 07:EA5B: 29 1F     AND #$1F
C - - - - - 0x01EA6D 07:EA5D: 09 20     ORA #$20
C - - - - - 0x01EA6F 07:EA5F: 9D A9 03  STA ram_03A9_obj,X
C - - - - - 0x01EA72 07:EA62: A0 01     LDY #$01
C - - - - - 0x01EA74 07:EA64: BD 5B 03  LDA ram_035B_obj,X
C - - - - - 0x01EA77 07:EA67: 30 02     BMI bra_EA6B
C - - - - - 0x01EA79 07:EA69: A0 FF     LDY #$FF
bra_EA6B:
C - - - - - 0x01EA7B 07:EA6B: 98        TYA
C - - - - - 0x01EA7C 07:EA6C: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01EA7F 07:EA6F: 95 C5     STA ram_00C5_obj,X
bra_EA71:
C - - - - - 0x01EA81 07:EA71: A9 00     LDA #$00
C - - - - - 0x01EA83 07:EA73: 8D 5D 03  STA ram_035B_obj + $02
C - - - - - 0x01EA86 07:EA76: 85 C7     STA ram_00C5_obj + $02
C - - - - - 0x01EA88 07:EA78: 8D 77 03  STA ram_0375_obj + $02
C - - - - - 0x01EA8B 07:EA7B: 8D 6A 03  STA ram_0368_obj + $02
C - - - - - 0x01EA8E 07:EA7E: 9D 75 03  STA ram_0375_obj,X
C - - - - - 0x01EA91 07:EA81: 9D 68 03  STA ram_0368_obj,X
C - - - - - 0x01EA94 07:EA84: A9 03     LDA #$03
C - - - - - 0x01EA96 07:EA86: 85 6C     STA ram_006A_obj + $02
C - - - - - 0x01EA98 07:EA88: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01EA9A 07:EA8A: 85 52     STA ram_0050_obj_flags + $02
C - - - - - 0x01EA9C 07:EA8C: 29 40     AND #$40
C - - - - - 0x01EA9E 07:EA8E: D0 10     BNE bra_EAA0
C - - - - - 0x01EAA0 07:EA90: 18        CLC
C - - - - - 0x01EAA1 07:EA91: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x01EAA3 07:EA93: 69 28     ADC #< $0028
C - - - - - 0x01EAA5 07:EA95: 85 79     STA ram_pos_X_lo + $02
C - - - - - 0x01EAA7 07:EA97: B5 84     LDA ram_pos_X_hi,X
C - - - - - 0x01EAA9 07:EA99: 69 00     ADC #> $0028
C - - - - - 0x01EAAB 07:EA9B: 85 86     STA ram_pos_X_hi + $02
C - - - - - 0x01EAAD 07:EA9D: 4C A8 EA  JMP loc_EAA8
bra_EAA0:
C - - - - - 0x01EAB0 07:EAA0: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x01EAB2 07:EAA2: 85 79     STA ram_pos_X_lo + $02
C - - - - - 0x01EAB4 07:EAA4: B5 84     LDA ram_pos_X_hi,X
C - - - - - 0x01EAB6 07:EAA6: 85 86     STA ram_pos_X_hi + $02
loc_EAA8:
C D 3 - - - 0x01EAB8 07:EAA8: 18        CLC
C - - - - - 0x01EAB9 07:EAA9: B5 91     LDA ram_pos_Y_lo,X
C - - - - - 0x01EABB 07:EAAB: 69 10     ADC #$10
C - - - - - 0x01EABD 07:EAAD: 85 93     STA ram_pos_Y_lo + $02
C - - - - - 0x01EABF 07:EAAF: A5 5F     LDA ram_obj_anim_id + $02
C - - - - - 0x01EAC1 07:EAB1: C9 8C     CMP #$8C
C - - - - - 0x01EAC3 07:EAB3: 90 1A     BCC bra_EACF
C - - - - - 0x01EAC5 07:EAB5: CE 9D 03  DEC ram_039C_obj + $01
C - - - - - 0x01EAC8 07:EAB8: 10 19     BPL bra_EAD3
C - - - - - 0x01EACA 07:EABA: A9 03     LDA #$03
C - - - - - 0x01EACC 07:EABC: 8D 9D 03  STA ram_039C_obj + $01
C - - - - - 0x01EACF 07:EABF: AD AA 03  LDA ram_03A9_obj + $01
C - - - - - 0x01EAD2 07:EAC2: 30 0F     BMI bra_EAD3
C - - - - - 0x01EAD4 07:EAC4: CE AA 03  DEC ram_03A9_obj + $01
C - - - - - 0x01EAD7 07:EAC7: E6 5F     INC ram_obj_anim_id + $02
C - - - - - 0x01EAD9 07:EAC9: A5 5F     LDA ram_obj_anim_id + $02
C - - - - - 0x01EADB 07:EACB: C9 91     CMP #$91
C - - - - - 0x01EADD 07:EACD: 90 02     BCC bra_EAD1
bra_EACF:
C - - - - - 0x01EADF 07:EACF: A9 8C     LDA #$8C
bra_EAD1:
C - - - - - 0x01EAE1 07:EAD1: 85 5F     STA ram_obj_anim_id + $02
bra_EAD3:
C - - - - - 0x01EAE3 07:EAD3: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01EAE5 07:EAD5: 49 40     EOR #$40
C - - - - - 0x01EAE7 07:EAD7: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01EAE9 07:EAD9: A5 37     LDA ram_random
C - - - - - 0x01EAEB 07:EADB: C9 14     CMP #$14
C - - - - - 0x01EAED 07:EADD: B0 13     BCS bra_EAF2
C - - - - - 0x01EAEF 07:EADF: A0 91     LDY #$91
C - - - - - 0x01EAF1 07:EAE1: A9 12     LDA #$12
C - - - - - 0x01EAF3 07:EAE3: 85 4B     STA ram_004B
C - - - - - 0x01EAF5 07:EAE5: A9 01     LDA #$01
C - - - - - 0x01EAF7 07:EAE7: 8D 76 06  STA ram_0676
C - - - - - 0x01EAFA 07:EAEA: A9 00     LDA #$00
C - - - - - 0x01EAFC 07:EAEC: 20 73 EC  JSR sub_EC73
C - - - - - 0x01EAFF 07:EAEF: 4C 2B EB  JMP loc_EB2B
bra_EAF2:
C - - - - - 0x01EB02 07:EAF2: A5 38     LDA ram_random + $01
C - - - - - 0x01EB04 07:EAF4: C9 0A     CMP #$0A
C - - - - - 0x01EB06 07:EAF6: B0 13     BCS bra_EB0B
C - - - - - 0x01EB08 07:EAF8: A0 92     LDY #$92
C - - - - - 0x01EB0A 07:EAFA: A9 19     LDA #$19
C - - - - - 0x01EB0C 07:EAFC: 85 4B     STA ram_004B
C - - - - - 0x01EB0E 07:EAFE: A9 01     LDA #$01
C - - - - - 0x01EB10 07:EB00: 8D 76 06  STA ram_0676
C - - - - - 0x01EB13 07:EB03: A9 00     LDA #$00
C - - - - - 0x01EB15 07:EB05: 20 73 EC  JSR sub_EC73
C - - - - - 0x01EB18 07:EB08: 4C 2B EB  JMP loc_EB2B
bra_EB0B:
C - - - - - 0x01EB1B 07:EB0B: A5 39     LDA ram_random + $02
C - - - - - 0x01EB1D 07:EB0D: C9 05     CMP #$05
C - - - - - 0x01EB1F 07:EB0F: B0 28     BCS bra_EB39
C - - - - - 0x01EB21 07:EB11: A0 93     LDY #$93
C - - - - - 0x01EB23 07:EB13: A9 16     LDA #$16
C - - - - - 0x01EB25 07:EB15: 85 4B     STA ram_004B
C - - - - - 0x01EB27 07:EB17: A9 02     LDA #$02
C - - - - - 0x01EB29 07:EB19: 8D 76 06  STA ram_0676
C - - - - - 0x01EB2C 07:EB1C: A9 01     LDA #$01
C - - - - - 0x01EB2E 07:EB1E: 48        PHA
C - - - - - 0x01EB2F 07:EB1F: A5 91     LDA ram_pos_Y_lo
C - - - - - 0x01EB31 07:EB21: 30 04     BMI bra_EB27
- - - - - - 0x01EB33 07:EB23: 68        PLA
- - - - - - 0x01EB34 07:EB24: A9 FE     LDA #$FE
- - - - - - 0x01EB36 07:EB26: 48        PHA
bra_EB27:
C - - - - - 0x01EB37 07:EB27: 68        PLA
C - - - - - 0x01EB38 07:EB28: 20 73 EC  JSR sub_EC73
loc_EB2B:
C D 3 - - - 0x01EB3B 07:EB2B: B0 0C     BCS bra_EB39
C - - - - - 0x01EB3D 07:EB2D: A9 03     LDA #$03
C - - - - - 0x01EB3F 07:EB2F: 99 6A 00  STA ram_006A_obj,Y
C - - - - - 0x01EB42 07:EB32: 8D AA 03  STA ram_03A9_obj + $01
C - - - - - 0x01EB45 07:EB35: A9 01     LDA #con_sound_01
C - - - - - 0x01EB47 07:EB37: 85 47     STA ram_sound
bra_EB39:
C - - - - - 0x01EB49 07:EB39: A9 01     LDA #$01
C - - - - - 0x01EB4B 07:EB3B: 85 6B     STA ram_006A_obj + $01
C - - - - - 0x01EB4D 07:EB3D: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01EB4F 07:EB3F: 49 40     EOR #$40
C - - - - - 0x01EB51 07:EB41: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01EB53 07:EB43: 60        RTS



tbl_EB44:
- D 3 - - - 0x01EB54 07:EB44: 99        .byte $99   ; 00 
- D 3 - - - 0x01EB55 07:EB45: 98        .byte $98   ; 08 
- D 3 - - - 0x01EB56 07:EB46: 99        .byte $99   ; 10 
- D 3 - - - 0x01EB57 07:EB47: 98        .byte $98   ; 18 



loc_EB48:
C D 3 - - - 0x01EB58 07:EB48: A0 04     LDY #$04
bra_EB4A_loop:
C - - - - - 0x01EB5A 07:EB4A: B9 50 00  LDA ram_0050_obj_flags,Y
C - - - - - 0x01EB5D 07:EB4D: F0 07     BEQ bra_EB56
C - - - - - 0x01EB5F 07:EB4F: C8        INY
C - - - - - 0x01EB60 07:EB50: C0 07     CPY #$07
C - - - - - 0x01EB62 07:EB52: 90 F6     BCC bra_EB4A_loop
C - - - - - 0x01EB64 07:EB54: B0 26     BCS bra_EB7C    ; jmp
bra_EB56:
C - - - - - 0x01EB66 07:EB56: A5 37     LDA ram_random
C - - - - - 0x01EB68 07:EB58: 29 1F     AND #$1F
C - - - - - 0x01EB6A 07:EB5A: 69 08     ADC #$08
C - - - - - 0x01EB6C 07:EB5C: 75 77     ADC ram_pos_X_lo,X
C - - - - - 0x01EB6E 07:EB5E: 99 77 00  STA ram_pos_X_lo,Y
C - - - - - 0x01EB71 07:EB61: B5 84     LDA ram_pos_X_hi,X
C - - - - - 0x01EB73 07:EB63: 69 00     ADC #$00
C - - - - - 0x01EB75 07:EB65: 99 84 00  STA ram_pos_X_hi,Y
C - - - - - 0x01EB78 07:EB68: A5 38     LDA ram_random + $01
C - - - - - 0x01EB7A 07:EB6A: 29 1F     AND #$1F
C - - - - - 0x01EB7C 07:EB6C: 69 08     ADC #$08
C - - - - - 0x01EB7E 07:EB6E: 75 91     ADC ram_pos_Y_lo,X
C - - - - - 0x01EB80 07:EB70: 99 91 00  STA ram_pos_Y_lo,Y
C - - - - - 0x01EB83 07:EB73: 8A        TXA
C - - - - - 0x01EB84 07:EB74: 48        PHA
C - - - - - 0x01EB85 07:EB75: 98        TYA
C - - - - - 0x01EB86 07:EB76: AA        TAX
C - - - - - 0x01EB87 07:EB77: 20 28 EC  JSR sub_EC28
C - - - - - 0x01EB8A 07:EB7A: 68        PLA
C - - - - - 0x01EB8B 07:EB7B: AA        TAX
bra_EB7C:
C - - - - - 0x01EB8C 07:EB7C: A9 00     LDA #$00
C - - - - - 0x01EB8E 07:EB7E: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01EB91 07:EB81: 95 C5     STA ram_00C5_obj,X
C - - - - - 0x01EB93 07:EB83: 9D 75 03  STA ram_0375_obj,X
C - - - - - 0x01EB96 07:EB86: 9D 68 03  STA ram_0368_obj,X
C - - - - - 0x01EB99 07:EB89: B5 6A     LDA ram_006A_obj,X
C - - - - - 0x01EB9B 07:EB8B: 49 03     EOR #$03
C - - - - - 0x01EB9D 07:EB8D: 95 6A     STA ram_006A_obj,X
C - - - - - 0x01EB9F 07:EB8F: E6 6B     INC ram_006A_obj + $01
C - - - - - 0x01EBA1 07:EB91: D0 09     BNE bra_EB9C_RTS
C - - - - - 0x01EBA3 07:EB93: A9 01     LDA #$01
C - - - - - 0x01EBA5 07:EB95: 8D 7E 06  STA ram_067E
C - - - - - 0x01EBA8 07:EB98: A9 04     LDA #$04
C - - - - - 0x01EBAA 07:EB9A: 85 03     STA ram_mission
bra_EB9C_RTS:
C - - - - - 0x01EBAC 07:EB9C: 60        RTS



ofs_004_EB9D_16:
C - - J - - 0x01EBAD 07:EB9D: FE 9C 03  INC ram_039C_obj,X
C - - - - - 0x01EBB0 07:EBA0: BD 9C 03  LDA ram_039C_obj,X
C - - - - - 0x01EBB3 07:EBA3: C9 64     CMP #$64
C - - - - - 0x01EBB5 07:EBA5: 90 64     BCC bra_EC0B
loc_EBA7:
C D 3 - - - 0x01EBB7 07:EBA7: A0 07     LDY #$07
bra_EBA9_loop:
C - - - - - 0x01EBB9 07:EBA9: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x01EBBB 07:EBAB: 99 77 00  STA ram_pos_X_lo,Y
C - - - - - 0x01EBBE 07:EBAE: B5 84     LDA ram_pos_X_hi,X
C - - - - - 0x01EBC0 07:EBB0: 99 84 00  STA ram_pos_X_hi,Y
C - - - - - 0x01EBC3 07:EBB3: 38        SEC
C - - - - - 0x01EBC4 07:EBB4: B5 91     LDA ram_pos_Y_lo,X
C - - - - - 0x01EBC6 07:EBB6: E9 04     SBC #$04
C - - - - - 0x01EBC8 07:EBB8: 99 91 00  STA ram_pos_Y_lo,Y
C - - - - - 0x01EBCB 07:EBBB: A9 04     LDA #$04
C - - - - - 0x01EBCD 07:EBBD: 99 5D 00  STA ram_obj_anim_id,Y
C - - - - - 0x01EBD0 07:EBC0: A9 FC     LDA #$FC
C - - - - - 0x01EBD2 07:EBC2: 99 68 03  STA ram_0368_obj,Y
C - - - - - 0x01EBD5 07:EBC5: A9 02     LDA #$02
C - - - - - 0x01EBD7 07:EBC7: 99 75 03  STA ram_0375_obj,Y
C - - - - - 0x01EBDA 07:EBCA: A9 00     LDA #$00
C - - - - - 0x01EBDC 07:EBCC: 99 B8 00  STA ram_obj_id,Y
C - - - - - 0x01EBDF 07:EBCF: 99 5B 03  STA ram_035B_obj,Y
C - - - - - 0x01EBE2 07:EBD2: 99 C5 00  STA ram_00C5_obj,Y
C - - - - - 0x01EBE5 07:EBD5: 99 6A 00  STA ram_006A_obj,Y
C - - - - - 0x01EBE8 07:EBD8: A9 01     LDA #$01
C - - - - - 0x01EBEA 07:EBDA: 99 50 00  STA ram_0050_obj_flags,Y
C - - - - - 0x01EBED 07:EBDD: C8        INY
C - - - - - 0x01EBEE 07:EBDE: C0 0A     CPY #$0A
C - - - - - 0x01EBF0 07:EBE0: 90 C7     BCC bra_EBA9_loop
C - - - - - 0x01EBF2 07:EBE2: A9 F8     LDA #$F8
C - - - - - 0x01EBF4 07:EBE4: 85 CC     STA ram_00C5_obj + $07
C - - - - - 0x01EBF6 07:EBE6: A9 FC     LDA #$FC
C - - - - - 0x01EBF8 07:EBE8: 8D 62 03  STA ram_035B_obj + $07
C - - - - - 0x01EBFB 07:EBEB: A9 08     LDA #$08
C - - - - - 0x01EBFD 07:EBED: 85 CE     STA ram_00C5_obj + $09
C - - - - - 0x01EBFF 07:EBEF: A9 04     LDA #$04
C - - - - - 0x01EC01 07:EBF1: 8D 64 03  STA ram_035B_obj + $09
C - - - - - 0x01EC04 07:EBF4: A9 F8     LDA #$F8
C - - - - - 0x01EC06 07:EBF6: 8D 70 03  STA ram_0368_obj + $08
C - - - - - 0x01EC09 07:EBF9: A9 06     LDA #$06
C - - - - - 0x01EC0B 07:EBFB: 8D 7D 03  STA ram_0375_obj + $08
C - - - - - 0x01EC0E 07:EBFE: A9 00     LDA #$00
C - - - - - 0x01EC10 07:EC00: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01EC12 07:EC02: A9 07     LDA #con_sound_07
C - - - - - 0x01EC14 07:EC04: 85 47     STA ram_sound
C - - - - - 0x01EC16 07:EC06: A9 05     LDA #$05
C - - - - - 0x01EC18 07:EC08: 8D 45 06  STA ram_0645
bra_EC0B:
C - - - - - 0x01EC1B 07:EC0B: 4C B6 E0  JMP loc_E0B6_handle_next_enemy



ofs_004_EC0E_1A:
C - - J - - 0x01EC1E 07:EC0E: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01EC20 07:EC10: 29 02     AND #$02
C - - - - - 0x01EC22 07:EC12: F0 03     BEQ bra_EC17
C - - - - - 0x01EC24 07:EC14: 4C A7 EB  JMP loc_EBA7
bra_EC17:
C - - - - - 0x01EC27 07:EC17: 4C B6 E0  JMP loc_E0B6_handle_next_enemy



sub_EC1A:
C - - - - - 0x01EC2A 07:EC1A: 20 9D EE  JSR sub_EE9D
C - - - - - 0x01EC2D 07:EC1D: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01EC2F 07:EC1F: 29 BF     AND #$BF
C - - - - - 0x01EC31 07:EC21: 90 02     BCC bra_EC25
C - - - - - 0x01EC33 07:EC23: 09 40     ORA #$40
bra_EC25:
C - - - - - 0x01EC35 07:EC25: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01EC37 07:EC27: 60        RTS



sub_EC28:
C - - - - - 0x01EC38 07:EC28: A9 05     LDA #con_sound_05
C - - - - - 0x01EC3A 07:EC2A: 85 47     STA ram_sound
C - - - - - 0x01EC3C 07:EC2C: 4C 33 EC  JMP loc_EC33



sub_EC2F:
C - - - - - 0x01EC3F 07:EC2F: A9 06     LDA #con_sound_06
C - - - - - 0x01EC41 07:EC31: 85 47     STA ram_sound
loc_EC33:
C D 3 - - - 0x01EC43 07:EC33: A9 13     LDA #$13
C - - - - - 0x01EC45 07:EC35: 9D 9C 03  STA ram_039C_obj,X
C - - - - - 0x01EC48 07:EC38: A9 07     LDA #$07
C - - - - - 0x01EC4A 07:EC3A: 95 B8     STA ram_obj_id,X
C - - - - - 0x01EC4C 07:EC3C: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01EC4E 07:EC3E: A9 01     LDA #$01
C - - - - - 0x01EC50 07:EC40: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01EC52 07:EC42: 60        RTS



sub_EC43:
C - - - - - 0x01EC53 07:EC43: A9 00     LDA #$00
C - - - - - 0x01EC55 07:EC45: 9D 75 03  STA ram_0375_obj,X
C - - - - - 0x01EC58 07:EC48: 9D 5B 03  STA ram_035B_obj,X
C - - - - - 0x01EC5B 07:EC4B: 95 C5     STA ram_00C5_obj,X
C - - - - - 0x01EC5D 07:EC4D: 9D 68 03  STA ram_0368_obj,X
C - - - - - 0x01EC60 07:EC50: 95 6A     STA ram_006A_obj,X
C - - - - - 0x01EC62 07:EC52: DE 9C 03  DEC ram_039C_obj,X
C - - - - - 0x01EC65 07:EC55: F0 0B     BEQ bra_EC62
C - - - - - 0x01EC67 07:EC57: BD 9C 03  LDA ram_039C_obj,X
C - - - - - 0x01EC6A 07:EC5A: 4A        LSR
C - - - - - 0x01EC6B 07:EC5B: 4A        LSR
C - - - - - 0x01EC6C 07:EC5C: 18        CLC
C - - - - - 0x01EC6D 07:EC5D: 69 06     ADC #$06
C - - - - - 0x01EC6F 07:EC5F: 95 5D     STA ram_obj_anim_id,X
C - - - - - 0x01EC71 07:EC61: 60        RTS
bra_EC62:
C - - - - - 0x01EC72 07:EC62: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01EC74 07:EC64: 60        RTS



sub_EC65_search_for_something:
C - - - - - 0x01EC75 07:EC65: 18        CLC
C - - - - - 0x01EC76 07:EC66: A0 07     LDY #$07
bra_EC68_loop:
C - - - - - 0x01EC78 07:EC68: B9 50 00  LDA ram_0050_obj_flags,Y
C - - - - - 0x01EC7B 07:EC6B: F0 05     BEQ bra_EC72_RTS
C - - - - - 0x01EC7D 07:EC6D: C8        INY
C - - - - - 0x01EC7E 07:EC6E: C0 0A     CPY #$0A
C - - - - - 0x01EC80 07:EC70: 90 F6     BCC bra_EC68_loop
bra_EC72_RTS:
C - - - - - 0x01EC82 07:EC72: 60        RTS



sub_EC73:
C - - - - - 0x01EC83 07:EC73: 85 E2     STA ram_00E2
C - - - - - 0x01EC85 07:EC75: 84 E3     STY ram_00E3
C - - - - - 0x01EC87 07:EC77: 20 65 EC  JSR sub_EC65_search_for_something
C - - - - - 0x01EC8A 07:EC7A: 90 01     BCC bra_EC7D
C - - - - - 0x01EC8C 07:EC7C: 60        RTS
bra_EC7D:
C - - - - - 0x01EC8D 07:EC7D: A9 00     LDA #$00
C - - - - - 0x01EC8F 07:EC7F: 99 6A 00  STA ram_006A_obj,Y
C - - - - - 0x01EC92 07:EC82: A9 01     LDA #$01
C - - - - - 0x01EC94 07:EC84: 99 50 00  STA ram_0050_obj_flags,Y
C - - - - - 0x01EC97 07:EC87: AD 76 06  LDA ram_0676
C - - - - - 0x01EC9A 07:EC8A: 99 B8 00  STA ram_obj_id,Y
C - - - - - 0x01EC9D 07:EC8D: 18        CLC
C - - - - - 0x01EC9E 07:EC8E: B5 91     LDA ram_pos_Y_lo,X
C - - - - - 0x01ECA0 07:EC90: 65 4B     ADC ram_004B
C - - - - - 0x01ECA2 07:EC92: 99 91 00  STA ram_pos_Y_lo,Y
C - - - - - 0x01ECA5 07:EC95: A5 E2     LDA ram_00E2
C - - - - - 0x01ECA7 07:EC97: 99 75 03  STA ram_0375_obj,Y
C - - - - - 0x01ECAA 07:EC9A: 99 68 03  STA ram_0368_obj,Y
C - - - - - 0x01ECAD 07:EC9D: A5 E3     LDA ram_00E3
C - - - - - 0x01ECAF 07:EC9F: 99 5D 00  STA ram_obj_anim_id,Y
C - - - - - 0x01ECB2 07:ECA2: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01ECB4 07:ECA4: 29 40     AND #$40
C - - - - - 0x01ECB6 07:ECA6: F0 19     BEQ bra_ECC1
C - - - - - 0x01ECB8 07:ECA8: A9 05     LDA #$05
C - - - - - 0x01ECBA 07:ECAA: 99 5B 03  STA ram_035B_obj,Y
C - - - - - 0x01ECBD 07:ECAD: 99 C5 00  STA ram_00C5_obj,Y
C - - - - - 0x01ECC0 07:ECB0: 18        CLC
C - - - - - 0x01ECC1 07:ECB1: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x01ECC3 07:ECB3: 69 18     ADC #< $0018
C - - - - - 0x01ECC5 07:ECB5: 99 77 00  STA ram_pos_X_lo,Y
C - - - - - 0x01ECC8 07:ECB8: B5 84     LDA ram_pos_X_hi,X
C - - - - - 0x01ECCA 07:ECBA: 69 00     ADC #> $0018
C - - - - - 0x01ECCC 07:ECBC: 99 84 00  STA ram_pos_X_hi,Y
C - - - - - 0x01ECCF 07:ECBF: 18        CLC
C - - - - - 0x01ECD0 07:ECC0: 60        RTS
bra_ECC1:
C - - - - - 0x01ECD1 07:ECC1: A9 FB     LDA #$FB
C - - - - - 0x01ECD3 07:ECC3: 99 5B 03  STA ram_035B_obj,Y
C - - - - - 0x01ECD6 07:ECC6: 99 C5 00  STA ram_00C5_obj,Y
C - - - - - 0x01ECD9 07:ECC9: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x01ECDB 07:ECCB: 99 77 00  STA ram_pos_X_lo,Y
C - - - - - 0x01ECDE 07:ECCE: B5 84     LDA ram_pos_X_hi,X
C - - - - - 0x01ECE0 07:ECD0: 99 84 00  STA ram_pos_X_hi,Y
C - - - - - 0x01ECE3 07:ECD3: 18        CLC
C - - - - - 0x01ECE4 07:ECD4: 60        RTS



sub_ECD5:
C - - - - - 0x01ECE5 07:ECD5: A2 09     LDX #$09
bra_ECD7_loop:
C - - - - - 0x01ECE7 07:ECD7: B5 91     LDA ram_pos_Y_lo,X
C - - - - - 0x01ECE9 07:ECD9: C9 D4     CMP #$D4
C - - - - - 0x01ECEB 07:ECDB: B0 1A     BCS bra_ECF7
C - - - - - 0x01ECED 07:ECDD: C9 3C     CMP #$3C
C - - - - - 0x01ECEF 07:ECDF: B0 06     BCS bra_ECE7
C - - - - - 0x01ECF1 07:ECE1: A9 00     LDA #$00
C - - - - - 0x01ECF3 07:ECE3: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01ECF5 07:ECE5: F0 0A     BEQ bra_ECF1    ; jmp
bra_ECE7:
loc_ECE7:
C D 3 - - - 0x01ECF7 07:ECE7: B5 B8     LDA ram_obj_id,X
C - - - - - 0x01ECF9 07:ECE9: C9 07     CMP #$07
C - - - - - 0x01ECFB 07:ECEB: D0 04     BNE bra_ECF1
C - - - - - 0x01ECFD 07:ECED: 8A        TXA
C - - - - - 0x01ECFE 07:ECEE: 20 43 EC  JSR sub_EC43
bra_ECF1:
C - - - - - 0x01ED01 07:ECF1: CA        DEX
C - - - - - 0x01ED02 07:ECF2: E0 06     CPX #$06
C - - - - - 0x01ED04 07:ECF4: D0 E1     BNE bra_ECD7_loop
C - - - - - 0x01ED06 07:ECF6: 60        RTS
bra_ECF7:
C - - - - - 0x01ED07 07:ECF7: B5 B8     LDA ram_obj_id,X
C - - - - - 0x01ED09 07:ECF9: C9 07     CMP #$07
C - - - - - 0x01ED0B 07:ECFB: F0 EA     BEQ bra_ECE7
C - - - - - 0x01ED0D 07:ECFD: 20 28 EC  JSR sub_EC28
C - - - - - 0x01ED10 07:ED00: 4C E7 EC  JMP loc_ECE7



sub_ED03:
C - - - - - 0x01ED13 07:ED03: A5 03     LDA ram_mission
C - - - - - 0x01ED15 07:ED05: C9 02     CMP #$02
C - - - - - 0x01ED17 07:ED07: F0 01     BEQ bra_ED0A
bra_ED09_RTS:
C - - - - - 0x01ED19 07:ED09: 60        RTS
bra_ED0A:
C - - - - - 0x01ED1A 07:ED0A: AD 9E 06  LDA ram_069E
C - - - - - 0x01ED1D 07:ED0D: D0 FA     BNE bra_ED09_RTS
C - - - - - 0x01ED1F 07:ED0F: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01ED21 07:ED11: C9 0E     CMP #$0E
C - - - - - 0x01ED23 07:ED13: B0 03     BCS bra_ED18
C - - - - - 0x01ED25 07:ED15: 4C 94 ED  JMP loc_ED94
bra_ED18:
C - - - - - 0x01ED28 07:ED18: AD 7F 06  LDA ram_067F
C - - - - - 0x01ED2B 07:ED1B: F0 1E     BEQ bra_ED3B
- - - - - - 0x01ED2D 07:ED1D: A0 03     LDY #$03
bra_ED1F_loop:
- - - - - - 0x01ED2F 07:ED1F: B9 50 00  LDA ram_0050_obj_flags,Y
- - - - - - 0x01ED32 07:ED22: F0 0F     BEQ bra_ED33
- - - - - - 0x01ED34 07:ED24: B9 B8 00  LDA ram_obj_id,Y
- - - - - - 0x01ED37 07:ED27: C9 04     CMP #$04
- - - - - - 0x01ED39 07:ED29: F0 10     BEQ bra_ED3B
- - - - - - 0x01ED3B 07:ED2B: C9 06     CMP #$06
- - - - - - 0x01ED3D 07:ED2D: F0 0C     BEQ bra_ED3B
- - - - - - 0x01ED3F 07:ED2F: C9 09     CMP #$09
- - - - - - 0x01ED41 07:ED31: F0 08     BEQ bra_ED3B
bra_ED33:
- - - - - - 0x01ED43 07:ED33: 88        DEY
- - - - - - 0x01ED44 07:ED34: 10 E9     BPL bra_ED1F_loop
- - - - - - 0x01ED46 07:ED36: A9 01     LDA #$01
- - - - - - 0x01ED48 07:ED38: 8D 9E 06  STA ram_069E
bra_ED3B:
C - - - - - 0x01ED4B 07:ED3B: A9 0C     LDA #con_chr_bank + $0C
C - - - - - 0x01ED4D 07:ED3D: 85 2A     STA ram_002A_copy_chr_bank
C - - - - - 0x01ED4F 07:ED3F: 20 65 EC  JSR sub_EC65_search_for_something
C - - - - - 0x01ED52 07:ED42: 90 01     BCC bra_ED45
C - - - - - 0x01ED54 07:ED44: 60        RTS
bra_ED45:
C - - - - - 0x01ED55 07:ED45: A5 37     LDA ram_random
C - - - - - 0x01ED57 07:ED47: 29 0F     AND #$0F
C - - - - - 0x01ED59 07:ED49: AA        TAX
C - - - - - 0x01ED5A 07:ED4A: BD 2D EE  LDA tbl_EE2D_pos_X_lo,X
C - - - - - 0x01ED5D 07:ED4D: 99 77 00  STA ram_pos_X_lo,Y
C - - - - - 0x01ED60 07:ED50: A9 0F     LDA #$0F
C - - - - - 0x01ED62 07:ED52: 99 84 00  STA ram_pos_X_hi,Y
C - - - - - 0x01ED65 07:ED55: BD 3D EE  LDA tbl_EE3D_pos_Y_lo,X
C - - - - - 0x01ED68 07:ED58: 99 91 00  STA ram_pos_Y_lo,Y
C - - - - - 0x01ED6B 07:ED5B: BD 8D EE  LDA tbl_EE8D,X
C - - - - - 0x01ED6E 07:ED5E: 99 6A 00  STA ram_006A_obj,Y
C - - - - - 0x01ED71 07:ED61: BD 5D EE  LDA tbl_EE5D,X
C - - - - - 0x01ED74 07:ED64: 99 5B 03  STA ram_035B_obj,Y
C - - - - - 0x01ED77 07:ED67: 99 C5 00  STA ram_00C5_obj,Y
C - - - - - 0x01ED7A 07:ED6A: BD 7D EE  LDA tbl_EE7D,X
C - - - - - 0x01ED7D 07:ED6D: 99 75 03  STA ram_0375_obj,Y
C - - - - - 0x01ED80 07:ED70: BD 6D EE  LDA tbl_EE6D,X
C - - - - - 0x01ED83 07:ED73: 99 68 03  STA ram_0368_obj,Y
C - - - - - 0x01ED86 07:ED76: A9 02     LDA #$02
C - - - - - 0x01ED88 07:ED78: 99 B8 00  STA ram_obj_id,Y
C - - - - - 0x01ED8B 07:ED7B: A9 01     LDA #$01
C - - - - - 0x01ED8D 07:ED7D: 99 50 00  STA ram_0050_obj_flags,Y
C - - - - - 0x01ED90 07:ED80: BD 4D EE  LDA tbl_EE4D_animation,X
C - - - - - 0x01ED93 07:ED83: 99 5D 00  STA ram_obj_anim_id,Y
C - - - - - 0x01ED96 07:ED86: C9 05     CMP #$05
C - - - - - 0x01ED98 07:ED88: F0 05     BEQ bra_ED8F
C - - - - - 0x01ED9A 07:ED8A: A9 02     LDA #$02
C - - - - - 0x01ED9C 07:ED8C: 8D 45 06  STA ram_0645
bra_ED8F:
C - - - - - 0x01ED9F 07:ED8F: A9 07     LDA #con_sound_07
C - - - - - 0x01EDA1 07:ED91: 85 47     STA ram_sound
C - - - - - 0x01EDA3 07:ED93: 60        RTS



loc_ED94:
C D 3 - - - 0x01EDA4 07:ED94: AD 9C 06  LDA ram_069C
C - - - - - 0x01EDA7 07:ED97: F0 1A     BEQ bra_EDB3
C - - - - - 0x01EDA9 07:ED99: CE 9C 06  DEC ram_069C
C - - - - - 0x01EDAC 07:ED9C: F0 03     BEQ bra_EDA1
C - - - - - 0x01EDAE 07:ED9E: 4C 28 EE  JMP loc_EE28_RTS
bra_EDA1:
C - - - - - 0x01EDB1 07:EDA1: 38        SEC
C - - - - - 0x01EDB2 07:EDA2: A9 0E     LDA #$0E
C - - - - - 0x01EDB4 07:EDA4: E5 84     SBC ram_pos_X_hi
C - - - - - 0x01EDB6 07:EDA6: 8D 9B 06  STA ram_069B
C - - - - - 0x01EDB9 07:EDA9: A9 03     LDA #$03
C - - - - - 0x01EDBB 07:EDAB: 8D 45 06  STA ram_0645
C - - - - - 0x01EDBE 07:EDAE: A9 07     LDA #con_sound_07
C - - - - - 0x01EDC0 07:EDB0: 85 47     STA ram_sound
C - - - - - 0x01EDC2 07:EDB2: 60        RTS
bra_EDB3:
C - - - - - 0x01EDC3 07:EDB3: AD 9A 06  LDA ram_069A
C - - - - - 0x01EDC6 07:EDB6: 0D 9B 06  ORA ram_069B
C - - - - - 0x01EDC9 07:EDB9: F0 0F     BEQ bra_EDCA
C - - - - - 0x01EDCB 07:EDBB: CE 9A 06  DEC ram_069A
C - - - - - 0x01EDCE 07:EDBE: D0 68     BNE bra_EE28_RTS
C - - - - - 0x01EDD0 07:EDC0: A9 14     LDA #$14
C - - - - - 0x01EDD2 07:EDC2: 8D 9A 06  STA ram_069A
C - - - - - 0x01EDD5 07:EDC5: CE 9B 06  DEC ram_069B
C - - - - - 0x01EDD8 07:EDC8: D0 5E     BNE bra_EE28_RTS
bra_EDCA:
C - - - - - 0x01EDDA 07:EDCA: 20 65 EC  JSR sub_EC65_search_for_something
C - - - - - 0x01EDDD 07:EDCD: B0 59     BCS bra_EE28_RTS
C - - - - - 0x01EDDF 07:EDCF: AE 9D 06  LDX ram_069D
C - - - - - 0x01EDE2 07:EDD2: 38        SEC
C - - - - - 0x01EDE3 07:EDD3: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01EDE5 07:EDD5: E5 15     SBC ram_limit_scroll_X
C - - - - - 0x01EDE7 07:EDD7: 85 E2     STA ram_00E2
C - - - - - 0x01EDE9 07:EDD9: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01EDEB 07:EDDB: E9 00     SBC #$00
C - - - - - 0x01EDED 07:EDDD: 85 E3     STA ram_00E3
C - - - - - 0x01EDEF 07:EDDF: 18        CLC
C - - - - - 0x01EDF0 07:EDE0: A5 E2     LDA ram_00E2
C - - - - - 0x01EDF2 07:EDE2: 69 FA     ADC #< $00FA
C - - - - - 0x01EDF4 07:EDE4: 99 77 00  STA ram_pos_X_lo,Y
C - - - - - 0x01EDF7 07:EDE7: A5 E3     LDA ram_00E3
C - - - - - 0x01EDF9 07:EDE9: 69 00     ADC #> $00FA
C - - - - - 0x01EDFB 07:EDEB: 99 84 00  STA ram_pos_X_hi,Y
C - - - - - 0x01EDFE 07:EDEE: BD 29 EE  LDA tbl_EE29_pos_Y_lo,X
C - - - - - 0x01EE01 07:EDF1: 99 91 00  STA ram_pos_Y_lo,Y
C - - - - - 0x01EE04 07:EDF4: A9 00     LDA #$00
C - - - - - 0x01EE06 07:EDF6: 99 75 03  STA ram_0375_obj,Y
C - - - - - 0x01EE09 07:EDF9: 99 68 03  STA ram_0368_obj,Y
C - - - - - 0x01EE0C 07:EDFC: A9 FA     LDA #$FA
C - - - - - 0x01EE0E 07:EDFE: 99 5B 03  STA ram_035B_obj,Y
C - - - - - 0x01EE11 07:EE01: 99 C5 00  STA ram_00C5_obj,Y
C - - - - - 0x01EE14 07:EE04: A9 AB     LDA #$AB
C - - - - - 0x01EE16 07:EE06: 99 5D 00  STA ram_obj_anim_id,Y
C - - - - - 0x01EE19 07:EE09: A9 03     LDA #$03
C - - - - - 0x01EE1B 07:EE0B: 99 B8 00  STA ram_obj_id,Y
C - - - - - 0x01EE1E 07:EE0E: 99 6A 00  STA ram_006A_obj,Y
C - - - - - 0x01EE21 07:EE11: A9 01     LDA #$01
C - - - - - 0x01EE23 07:EE13: 99 50 00  STA ram_0050_obj_flags,Y
C - - - - - 0x01EE26 07:EE16: EE 9D 06  INC ram_069D
C - - - - - 0x01EE29 07:EE19: AD 9D 06  LDA ram_069D
C - - - - - 0x01EE2C 07:EE1C: 29 03     AND #$03
C - - - - - 0x01EE2E 07:EE1E: 8D 9D 06  STA ram_069D
C - - - - - 0x01EE31 07:EE21: A5 37     LDA ram_random
C - - - - - 0x01EE33 07:EE23: 09 40     ORA #$40
C - - - - - 0x01EE35 07:EE25: 8D 9C 06  STA ram_069C
bra_EE28_RTS:
loc_EE28_RTS:   ; bzk optimize
C D 3 - - - 0x01EE38 07:EE28: 60        RTS



tbl_EE29_pos_Y_lo:
- D 3 - - - 0x01EE39 07:EE29: 50        .byte $50   ; 00 
- D 3 - - - 0x01EE3A 07:EE2A: 78        .byte $78   ; 01 
- D 3 - - - 0x01EE3B 07:EE2B: A0        .byte $A0   ; 02 
- D 3 - - - 0x01EE3C 07:EE2C: C8        .byte $C8   ; 03 



tbl_EE2D_pos_X_lo:
- D 3 - - - 0x01EE3D 07:EE2D: 4E        .byte $4E   ; 00 
- D 3 - - - 0x01EE3E 07:EE2E: AE        .byte $AE   ; 01 
- D 3 - - - 0x01EE3F 07:EE2F: AD        .byte $AD   ; 02 
- D 3 - - - 0x01EE40 07:EE30: B0        .byte $B0   ; 03 
- D 3 - - - 0x01EE41 07:EE31: B7        .byte $B7   ; 04 
- D 3 - - - 0x01EE42 07:EE32: E3        .byte $E3   ; 05 
- D 3 - - - 0x01EE43 07:EE33: E7        .byte $E7   ; 06 
- D 3 - - - 0x01EE44 07:EE34: EB        .byte $EB   ; 07 
- D 3 - - - 0x01EE45 07:EE35: 4E        .byte $4E   ; 08 
- D 3 - - - 0x01EE46 07:EE36: AE        .byte $AE   ; 09 
- D 3 - - - 0x01EE47 07:EE37: AD        .byte $AD   ; 0A 
- D 3 - - - 0x01EE48 07:EE38: B0        .byte $B0   ; 0B 
- D 3 - - - 0x01EE49 07:EE39: B7        .byte $B7   ; 0C 
- D 3 - - - 0x01EE4A 07:EE3A: E3        .byte $E3   ; 0D 
- D 3 - - - 0x01EE4B 07:EE3B: E7        .byte $E7   ; 0E 
- D 3 - - - 0x01EE4C 07:EE3C: EB        .byte $EB   ; 0F 



tbl_EE3D_pos_Y_lo:
- D 3 - - - 0x01EE4D 07:EE3D: A0        .byte $A0   ; 00 
- D 3 - - - 0x01EE4E 07:EE3E: A6        .byte $A6   ; 01 
- D 3 - - - 0x01EE4F 07:EE3F: A0        .byte $A0   ; 02 
- D 3 - - - 0x01EE50 07:EE40: 9C        .byte $9C   ; 03 
- D 3 - - - 0x01EE51 07:EE41: 99        .byte $99   ; 04 
- D 3 - - - 0x01EE52 07:EE42: 9C        .byte $9C   ; 05 
- D 3 - - - 0x01EE53 07:EE43: 9A        .byte $9A   ; 06 
- D 3 - - - 0x01EE54 07:EE44: 98        .byte $98   ; 07 
- D 3 - - - 0x01EE55 07:EE45: A0        .byte $A0   ; 08 
- D 3 - - - 0x01EE56 07:EE46: A6        .byte $A6   ; 09 
- D 3 - - - 0x01EE57 07:EE47: A0        .byte $A0   ; 0A 
- D 3 - - - 0x01EE58 07:EE48: 9C        .byte $9C   ; 0B 
- D 3 - - - 0x01EE59 07:EE49: 99        .byte $99   ; 0C 
- D 3 - - - 0x01EE5A 07:EE4A: 9C        .byte $9C   ; 0D 
- D 3 - - - 0x01EE5B 07:EE4B: 9A        .byte $9A   ; 0E 
- D 3 - - - 0x01EE5C 07:EE4C: 98        .byte $98   ; 0F 



tbl_EE4D_animation:
- D 3 - - - 0x01EE5D 07:EE4D: AB        .byte $AB   ; 00 
- D 3 - - - 0x01EE5E 07:EE4E: 05        .byte $05   ; 01 
- D 3 - - - 0x01EE5F 07:EE4F: 05        .byte $05   ; 02 
- D 3 - - - 0x01EE60 07:EE50: 05        .byte $05   ; 03 
- D 3 - - - 0x01EE61 07:EE51: 05        .byte $05   ; 04 
- D 3 - - - 0x01EE62 07:EE52: 05        .byte $05   ; 05 
- D 3 - - - 0x01EE63 07:EE53: 05        .byte $05   ; 06 
- D 3 - - - 0x01EE64 07:EE54: 05        .byte $05   ; 07 
- D 3 - - - 0x01EE65 07:EE55: AB        .byte $AB   ; 08 
- D 3 - - - 0x01EE66 07:EE56: 05        .byte $05   ; 09 
- D 3 - - - 0x01EE67 07:EE57: 05        .byte $05   ; 0A 
- D 3 - - - 0x01EE68 07:EE58: 05        .byte $05   ; 0B 
- D 3 - - - 0x01EE69 07:EE59: 05        .byte $05   ; 0C 
- D 3 - - - 0x01EE6A 07:EE5A: 05        .byte $05   ; 0D 
- D 3 - - - 0x01EE6B 07:EE5B: 05        .byte $05   ; 0E 
- D 3 - - - 0x01EE6C 07:EE5C: 05        .byte $05   ; 0F 



tbl_EE5D:
- D 3 - - - 0x01EE6D 07:EE5D: FA        .byte $FA   ; 00 
- D 3 - - - 0x01EE6E 07:EE5E: FA        .byte $FA   ; 01 
- D 3 - - - 0x01EE6F 07:EE5F: FA        .byte $FA   ; 02 
- D 3 - - - 0x01EE70 07:EE60: FB        .byte $FB   ; 03 
- D 3 - - - 0x01EE71 07:EE61: FE        .byte $FE   ; 04 
- D 3 - - - 0x01EE72 07:EE62: FE        .byte $FE   ; 05 
- D 3 - - - 0x01EE73 07:EE63: FE        .byte $FE   ; 06 
- D 3 - - - 0x01EE74 07:EE64: FE        .byte $FE   ; 07 
- D 3 - - - 0x01EE75 07:EE65: FA        .byte $FA   ; 08 
- D 3 - - - 0x01EE76 07:EE66: FA        .byte $FA   ; 09 
- D 3 - - - 0x01EE77 07:EE67: FA        .byte $FA   ; 0A 
- D 3 - - - 0x01EE78 07:EE68: FB        .byte $FB   ; 0B 
- D 3 - - - 0x01EE79 07:EE69: FE        .byte $FE   ; 0C 
- D 3 - - - 0x01EE7A 07:EE6A: FE        .byte $FE   ; 0D 
- D 3 - - - 0x01EE7B 07:EE6B: FE        .byte $FE   ; 0E 
- D 3 - - - 0x01EE7C 07:EE6C: FE        .byte $FE   ; 0F 



tbl_EE6D:
- D 3 - - - 0x01EE7D 07:EE6D: 00        .byte $00   ; 00 
- D 3 - - - 0x01EE7E 07:EE6E: 00        .byte $00   ; 01 
- D 3 - - - 0x01EE7F 07:EE6F: FE        .byte $FE   ; 02 
- D 3 - - - 0x01EE80 07:EE70: FD        .byte $FD   ; 03 
- D 3 - - - 0x01EE81 07:EE71: FA        .byte $FA   ; 04 
- D 3 - - - 0x01EE82 07:EE72: FC        .byte $FC   ; 05 
- D 3 - - - 0x01EE83 07:EE73: FC        .byte $FC   ; 06 
- D 3 - - - 0x01EE84 07:EE74: FC        .byte $FC   ; 07 
- D 3 - - - 0x01EE85 07:EE75: 00        .byte $00   ; 08 
- D 3 - - - 0x01EE86 07:EE76: 00        .byte $00   ; 09 
- D 3 - - - 0x01EE87 07:EE77: FE        .byte $FE   ; 0A 
- D 3 - - - 0x01EE88 07:EE78: FD        .byte $FD   ; 0B 
- D 3 - - - 0x01EE89 07:EE79: FA        .byte $FA   ; 0C 
- D 3 - - - 0x01EE8A 07:EE7A: FC        .byte $FC   ; 0D 
- D 3 - - - 0x01EE8B 07:EE7B: FC        .byte $FC   ; 0E 
- D 3 - - - 0x01EE8C 07:EE7C: FC        .byte $FC   ; 0F 



tbl_EE7D:
- D 3 - - - 0x01EE8D 07:EE7D: 00        .byte $00   ; 00 
- D 3 - - - 0x01EE8E 07:EE7E: 00        .byte $00   ; 01 
- D 3 - - - 0x01EE8F 07:EE7F: FE        .byte $FE   ; 02 
- D 3 - - - 0x01EE90 07:EE80: FD        .byte $FD   ; 03 
- D 3 - - - 0x01EE91 07:EE81: FA        .byte $FA   ; 04 
- D 3 - - - 0x01EE92 07:EE82: FC        .byte $FC   ; 05 
- D 3 - - - 0x01EE93 07:EE83: FC        .byte $FC   ; 06 
- D 3 - - - 0x01EE94 07:EE84: FC        .byte $FC   ; 07 
- D 3 - - - 0x01EE95 07:EE85: 00        .byte $00   ; 08 
- D 3 - - - 0x01EE96 07:EE86: 00        .byte $00   ; 09 
- D 3 - - - 0x01EE97 07:EE87: 06        .byte $06   ; 0A 
- D 3 - - - 0x01EE98 07:EE88: 06        .byte $06   ; 0B 
- D 3 - - - 0x01EE99 07:EE89: 06        .byte $06   ; 0C 
- D 3 - - - 0x01EE9A 07:EE8A: 06        .byte $06   ; 0D 
- D 3 - - - 0x01EE9B 07:EE8B: 06        .byte $06   ; 0E 
- D 3 - - - 0x01EE9C 07:EE8C: 06        .byte $06   ; 0F 



tbl_EE8D:
- D 3 - - - 0x01EE9D 07:EE8D: 03        .byte $03   ; 00 
- D 3 - - - 0x01EE9E 07:EE8E: 00        .byte $00   ; 01 
- D 3 - - - 0x01EE9F 07:EE8F: 00        .byte $00   ; 02 
- D 3 - - - 0x01EEA0 07:EE90: 00        .byte $00   ; 03 
- D 3 - - - 0x01EEA1 07:EE91: 00        .byte $00   ; 04 
- D 3 - - - 0x01EEA2 07:EE92: 00        .byte $00   ; 05 
- D 3 - - - 0x01EEA3 07:EE93: 00        .byte $00   ; 06 
- D 3 - - - 0x01EEA4 07:EE94: 00        .byte $00   ; 07 
- D 3 - - - 0x01EEA5 07:EE95: 03        .byte $03   ; 08 
- D 3 - - - 0x01EEA6 07:EE96: 00        .byte $00   ; 09 
- D 3 - - - 0x01EEA7 07:EE97: 00        .byte $00   ; 0A 
- D 3 - - - 0x01EEA8 07:EE98: 00        .byte $00   ; 0B 
- D 3 - - - 0x01EEA9 07:EE99: 00        .byte $00   ; 0C 
- D 3 - - - 0x01EEAA 07:EE9A: 00        .byte $00   ; 0D 
- D 3 - - - 0x01EEAB 07:EE9B: 00        .byte $00   ; 0E 
- D 3 - - - 0x01EEAC 07:EE9C: 00        .byte $00   ; 0F 



bra_EE9D:
sub_EE9D:
C - - - - - 0x01EEAD 07:EE9D: A0 00     LDY #$00
C - - - - - 0x01EEAF 07:EE9F: A5 91     LDA ram_pos_Y_lo
C - - - - - 0x01EEB1 07:EEA1: 29 80     AND #$80
C - - - - - 0x01EEB3 07:EEA3: 85 E2     STA ram_00E2
C - - - - - 0x01EEB5 07:EEA5: B5 91     LDA ram_pos_Y_lo,X
C - - - - - 0x01EEB7 07:EEA7: 29 80     AND #$80
C - - - - - 0x01EEB9 07:EEA9: C5 E2     CMP ram_00E2
C - - - - - 0x01EEBB 07:EEAB: F0 01     BEQ bra_EEAE
C - - - - - 0x01EEBD 07:EEAD: C8        INY
bra_EEAE:
C - - - - - 0x01EEBE 07:EEAE: 38        SEC
C - - - - - 0x01EEBF 07:EEAF: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01EEC1 07:EEB1: F5 77     SBC ram_pos_X_lo,X
C - - - - - 0x01EEC3 07:EEB3: 85 E2     STA ram_00E2
C - - - - - 0x01EEC5 07:EEB5: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01EEC7 07:EEB7: F5 84     SBC ram_pos_X_hi,X
C - - - - - 0x01EEC9 07:EEB9: 08        PHP
C - - - - - 0x01EECA 07:EEBA: B0 13     BCS bra_EECF
C - - - - - 0x01EECC 07:EEBC: 38        SEC
C - - - - - 0x01EECD 07:EEBD: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x01EECF 07:EEBF: E5 77     SBC ram_pos_X_lo
C - - - - - 0x01EED1 07:EEC1: 85 E2     STA ram_00E2
C - - - - - 0x01EED3 07:EEC3: B5 84     LDA ram_pos_X_hi,X
C - - - - - 0x01EED5 07:EEC5: E5 84     SBC ram_pos_X_hi
C - - - - - 0x01EED7 07:EEC7: 4A        LSR
C - - - - - 0x01EED8 07:EEC8: A5 E2     LDA ram_00E2
C - - - - - 0x01EEDA 07:EECA: 6A        ROR
C - - - - - 0x01EEDB 07:EECB: 4A        LSR
C - - - - - 0x01EEDC 07:EECC: 4A        LSR
C - - - - - 0x01EEDD 07:EECD: 28        PLP
C - - - - - 0x01EEDE 07:EECE: 60        RTS
bra_EECF:
C - - - - - 0x01EEDF 07:EECF: 4A        LSR
C - - - - - 0x01EEE0 07:EED0: A5 E2     LDA ram_00E2
C - - - - - 0x01EEE2 07:EED2: 6A        ROR
C - - - - - 0x01EEE3 07:EED3: 4A        LSR
C - - - - - 0x01EEE4 07:EED4: 4A        LSR
C - - - - - 0x01EEE5 07:EED5: 28        PLP
C - - - - - 0x01EEE6 07:EED6: 60        RTS



sub_EED7:
C - - - - - 0x01EEE7 07:EED7: AD 83 06  LDA ram_0683
C - - - - - 0x01EEEA 07:EEDA: C9 0C     CMP #$0C
C - - - - - 0x01EEEC 07:EEDC: 90 BF     BCC bra_EE9D
C - - - - - 0x01EEEE 07:EEDE: A0 00     LDY #$00
C - - - - - 0x01EEF0 07:EEE0: 38        SEC
C - - - - - 0x01EEF1 07:EEE1: A9 60     LDA #< $0160
C - - - - - 0x01EEF3 07:EEE3: F5 77     SBC ram_pos_X_lo,X
C - - - - - 0x01EEF5 07:EEE5: 85 E2     STA ram_00E2
C - - - - - 0x01EEF7 07:EEE7: A9 01     LDA #> $0160
C - - - - - 0x01EEF9 07:EEE9: F5 84     SBC ram_pos_X_hi,X
C - - - - - 0x01EEFB 07:EEEB: 08        PHP
C - - - - - 0x01EEFC 07:EEEC: B0 13     BCS bra_EF01
C - - - - - 0x01EEFE 07:EEEE: 38        SEC
C - - - - - 0x01EEFF 07:EEEF: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x01EF01 07:EEF1: E9 60     SBC #< $0160
C - - - - - 0x01EF03 07:EEF3: 85 E2     STA ram_00E2
C - - - - - 0x01EF05 07:EEF5: B5 84     LDA ram_pos_X_hi,X
C - - - - - 0x01EF07 07:EEF7: E9 01     SBC #> $0160
C - - - - - 0x01EF09 07:EEF9: 4A        LSR
C - - - - - 0x01EF0A 07:EEFA: A5 E2     LDA ram_00E2
C - - - - - 0x01EF0C 07:EEFC: 6A        ROR
C - - - - - 0x01EF0D 07:EEFD: 4A        LSR
C - - - - - 0x01EF0E 07:EEFE: 4A        LSR
C - - - - - 0x01EF0F 07:EEFF: 28        PLP
C - - - - - 0x01EF10 07:EF00: 60        RTS
bra_EF01:
C - - - - - 0x01EF11 07:EF01: 4A        LSR
C - - - - - 0x01EF12 07:EF02: A5 E2     LDA ram_00E2
C - - - - - 0x01EF14 07:EF04: 6A        ROR
C - - - - - 0x01EF15 07:EF05: 4A        LSR
C - - - - - 0x01EF16 07:EF06: 4A        LSR
C - - - - - 0x01EF17 07:EF07: 28        PLP
C - - - - - 0x01EF18 07:EF08: 60        RTS



sub_EF09:
C - - - - - 0x01EF19 07:EF09: A9 00     LDA #$00
C - - - - - 0x01EF1B 07:EF0B: 8D 64 06  STA ram_0664
C - - - - - 0x01EF1E 07:EF0E: A4 1B     LDY ram_001B
C - - - - - 0x01EF20 07:EF10: 38        SEC
C - - - - - 0x01EF21 07:EF11: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01EF23 07:EF13: F9 4B 80  SBC $804B,Y
C - - - - - 0x01EF26 07:EF16: AA        TAX
C - - - - - 0x01EF27 07:EF17: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01EF29 07:EF19: F9 4E 80  SBC $804E,Y
C - - - - - 0x01EF2C 07:EF1C: D0 10     BNE bra_EF2E
C - - - - - 0x01EF2E 07:EF1E: E0 08     CPX #$08
C - - - - - 0x01EF30 07:EF20: B0 0C     BCS bra_EF2E
C - - - - - 0x01EF32 07:EF22: A5 91     LDA ram_pos_Y_lo
C - - - - - 0x01EF34 07:EF24: 29 F0     AND #$F0
C - - - - - 0x01EF36 07:EF26: D9 51 80  CMP $8051,Y
C - - - - - 0x01EF39 07:EF29: D0 03     BNE bra_EF2E
C - - - - - 0x01EF3B 07:EF2B: EE 64 06  INC ram_0664
bra_EF2E:
C - - - - - 0x01EF3E 07:EF2E: A5 C3     LDA ram_obj_id + $0B
C - - - - - 0x01EF40 07:EF30: C9 23     CMP #$23
C - - - - - 0x01EF42 07:EF32: F0 04     BEQ bra_EF38
C - - - - - 0x01EF44 07:EF34: C9 22     CMP #$22
C - - - - - 0x01EF46 07:EF36: D0 0D     BNE bra_EF45_RTS
bra_EF38:
C - - - - - 0x01EF48 07:EF38: A5 42     LDA ram_0042
C - - - - - 0x01EF4A 07:EF3A: 4A        LSR
C - - - - - 0x01EF4B 07:EF3B: 4A        LSR
C - - - - - 0x01EF4C 07:EF3C: 29 01     AND #$01
C - - - - - 0x01EF4E 07:EF3E: 85 E2     STA ram_00E2
C - - - - - 0x01EF50 07:EF40: 0A        ASL
C - - - - - 0x01EF51 07:EF41: 05 E2     ORA ram_00E2
C - - - - - 0x01EF53 07:EF43: 85 75     STA ram_006A_obj + $0B
bra_EF45_RTS:
C - - - - - 0x01EF55 07:EF45: 60        RTS



sub_EF46:
C - - - - - 0x01EF56 07:EF46: AD 7E 06  LDA ram_067E
C - - - - - 0x01EF59 07:EF49: F0 01     BEQ bra_EF4C
C - - - - - 0x01EF5B 07:EF4B: 60        RTS
bra_EF4C:
C - - - - - 0x01EF5C 07:EF4C: EE 42 06  INC ram_0642_handler
C - - - - - 0x01EF5F 07:EF4F: AD 42 06  LDA ram_0642_handler
C - - - - - 0x01EF62 07:EF52: 29 03     AND #$03
C - - - - - 0x01EF64 07:EF54: 0A        ASL
C - - - - - 0x01EF65 07:EF55: A8        TAY
C - - - - - 0x01EF66 07:EF56: B9 65 EF  LDA tbl_EF65,Y
C - - - - - 0x01EF69 07:EF59: 8D 00 06  STA ram_0600
C - - - - - 0x01EF6C 07:EF5C: B9 66 EF  LDA tbl_EF65 + $01,Y
C - - - - - 0x01EF6F 07:EF5F: 8D 01 06  STA ram_0601
C - - - - - 0x01EF72 07:EF62: 6C 00 06  JMP (ram_0600)



tbl_EF65:
- D 3 - - - 0x01EF75 07:EF65: 6D EF     .word ofs_005_EF6D_00
- D 3 - - - 0x01EF77 07:EF67: 6B F0     .word ofs_005_F06B_01
- D 3 - - - 0x01EF79 07:EF69: 18 F1     .word ofs_005_F118_02
- D 3 - - - 0x01EF7B 07:EF6B: 94 EF     .word ofs_005_EF94_03



ofs_005_EF6D_00:
C - - J - - 0x01EF7D 07:EF6D: A2 00     LDX #$00
C - - - - - 0x01EF7F 07:EF6F: 8E 5B 06  STX ram_065B
C - - - - - 0x01EF82 07:EF72: A0 03     LDY #$03
bra_EF74_loop:
C - - - - - 0x01EF84 07:EF74: B9 50 00  LDA ram_0050_obj_flags,Y
C - - - - - 0x01EF87 07:EF77: 29 FD     AND #$FD
C - - - - - 0x01EF89 07:EF79: 99 50 00  STA ram_0050_obj_flags,Y
C - - - - - 0x01EF8C 07:EF7C: F0 12     BEQ bra_EF90
C - - - - - 0x01EF8E 07:EF7E: 20 42 F2  JSR sub_F242
C - - - - - 0x01EF91 07:EF81: F0 0D     BEQ bra_EF90
C - - - - - 0x01EF93 07:EF83: B9 50 00  LDA ram_0050_obj_flags,Y
C - - - - - 0x01EF96 07:EF86: 09 02     ORA #$02
C - - - - - 0x01EF98 07:EF88: 99 50 00  STA ram_0050_obj_flags,Y
C - - - - - 0x01EF9B 07:EF8B: A9 01     LDA #$01
C - - - - - 0x01EF9D 07:EF8D: 8D 5B 06  STA ram_065B
bra_EF90:
C - - - - - 0x01EFA0 07:EF90: 88        DEY
C - - - - - 0x01EFA1 07:EF91: D0 E1     BNE bra_EF74_loop
C - - - - - 0x01EFA3 07:EF93: 60        RTS



ofs_005_EF94_03:
C - - J - - 0x01EFA4 07:EF94: A5 17     LDA ram_0017
C - - - - - 0x01EFA6 07:EF96: 29 01     AND #$01
C - - - - - 0x01EFA8 07:EF98: F0 01     BEQ bra_EF9B
bra_EF9A_RTS:
C - - - - - 0x01EFAA 07:EF9A: 60        RTS
bra_EF9B:
C - - - - - 0x01EFAB 07:EF9B: A5 00     LDA ram_buttons
C - - - - - 0x01EFAD 07:EF9D: 29 04     AND #con_btn1_Down
C - - - - - 0x01EFAF 07:EF9F: F0 F9     BEQ bra_EF9A_RTS
C - - - - - 0x01EFB1 07:EFA1: A5 5B     LDA ram_0050_obj_flags + $0B
C - - - - - 0x01EFB3 07:EFA3: F0 F5     BEQ bra_EF9A_RTS
C - - - - - 0x01EFB5 07:EFA5: A2 00     LDX #$00
C - - - - - 0x01EFB7 07:EFA7: A0 0B     LDY #$0B
C - - - - - 0x01EFB9 07:EFA9: 20 42 F2  JSR sub_F242
C - - - - - 0x01EFBC 07:EFAC: F0 EC     BEQ bra_EF9A_RTS
C - - - - - 0x01EFBE 07:EFAE: A5 C3     LDA ram_obj_id + $0B
C - - - - - 0x01EFC0 07:EFB0: C9 26     CMP #con_obj_id_26
C - - - - - 0x01EFC2 07:EFB2: F0 53     BEQ bra_F007_26
C - - - - - 0x01EFC4 07:EFB4: C9 27     CMP #con_obj_id_27
C - - - - - 0x01EFC6 07:EFB6: F0 21     BEQ bra_EFD9_27
C - - - - - 0x01EFC8 07:EFB8: C9 25     CMP #con_obj_id_25
C - - - - - 0x01EFCA 07:EFBA: F0 03     BEQ bra_EFBF_25
C - - - - - 0x01EFCC 07:EFBC: 4C 23 F0  JMP loc_F023_other_items
bra_EFBF_25:
C - - - - - 0x01EFCF 07:EFBF: A2 00     LDX #$00
C - - - - - 0x01EFD1 07:EFC1: A5 1C     LDA ram_weapon_upgrade_fire
C - - - - - 0x01EFD3 07:EFC3: C9 02     CMP #$02
C - - - - - 0x01EFD5 07:EFC5: B0 32     BCS bra_EFF9
C - - - - - 0x01EFD7 07:EFC7: E6 1C     INC ram_weapon_upgrade_fire
C - - - - - 0x01EFD9 07:EFC9: A6 1C     LDX ram_weapon_upgrade_fire
C - - - - - 0x01EFDB 07:EFCB: BD 65 F0  LDA tbl_F065_ammo,X
C - - - - - 0x01EFDE 07:EFCE: 9D 5E 06  STA ram_ammo_bullet,X
C - - - - - 0x01EFE1 07:EFD1: A9 06     LDA #con_msg_fire_power_upgraded
C - - - - - 0x01EFE3 07:EFD3: 20 7B C9  JSR sub_C97B_prepare_new_message
C - - - - - 0x01EFE6 07:EFD6: 4C F0 EF  JMP loc_EFF0
bra_EFD9_27:
C - - - - - 0x01EFE9 07:EFD9: A2 03     LDX #$03
C - - - - - 0x01EFEB 07:EFDB: A5 1D     LDA ram_weapon_upgrade_missile
C - - - - - 0x01EFED 07:EFDD: C9 02     CMP #$02
C - - - - - 0x01EFEF 07:EFDF: B0 18     BCS bra_EFF9
C - - - - - 0x01EFF1 07:EFE1: E6 1D     INC ram_weapon_upgrade_missile
C - - - - - 0x01EFF3 07:EFE3: A6 1D     LDX ram_weapon_upgrade_missile
C - - - - - 0x01EFF5 07:EFE5: BD 68 F0  LDA tbl_F068,X
C - - - - - 0x01EFF8 07:EFE8: 9D 61 06  STA ram_ammo_missile,X
C - - - - - 0x01EFFB 07:EFEB: A9 07     LDA #con_msg_missiles_upgraded
C - - - - - 0x01EFFD 07:EFED: 20 7B C9  JSR sub_C97B_prepare_new_message
bra_EFF0:
loc_EFF0:
C D 3 - - - 0x01F000 07:EFF0: A9 00     LDA #$00
C - - - - - 0x01F002 07:EFF2: 85 5B     STA ram_0050_obj_flags + $0B
C - - - - - 0x01F004 07:EFF4: A9 08     LDA #con_sound_08
C - - - - - 0x01F006 07:EFF6: 85 47     STA ram_sound
C - - - - - 0x01F008 07:EFF8: 60        RTS
bra_EFF9:
- - - - - - 0x01F009 07:EFF9: A0 02     LDY #$02
bra_EFFB_loop:
- - - - - - 0x01F00B 07:EFFB: BD 65 F0  LDA tbl_F065_ammo,X
- - - - - - 0x01F00E 07:EFFE: 9D 5E 06  STA ram_ammo_bullet,X
- - - - - - 0x01F011 07:F001: E8        INX
- - - - - - 0x01F012 07:F002: 88        DEY
- - - - - - 0x01F013 07:F003: D0 F6     BNE bra_EFFB_loop
- - - - - - 0x01F015 07:F005: F0 E9     BEQ bra_EFF0    ; jmp
bra_F007_26:
C - - - - - 0x01F017 07:F007: A2 03     LDX #$03
bra_F009_loop:
C - - - - - 0x01F019 07:F009: 18        CLC
C - - - - - 0x01F01A 07:F00A: BD A0 06  LDA ram_unit__hp,X
C - - - - - 0x01F01D 07:F00D: 69 03     ADC #$03
C - - - - - 0x01F01F 07:F00F: 9D A0 06  STA ram_unit__hp,X
C - - - - - 0x01F022 07:F012: CA        DEX
C - - - - - 0x01F023 07:F013: 10 F4     BPL bra_F009_loop
C - - - - - 0x01F025 07:F015: A9 00     LDA #$00
C - - - - - 0x01F027 07:F017: 85 5B     STA ram_0050_obj_flags + $0B
C - - - - - 0x01F029 07:F019: A9 04     LDA #con_msg_efficiency_increased
C - - - - - 0x01F02B 07:F01B: 20 7B C9  JSR sub_C97B_prepare_new_message
C - - - - - 0x01F02E 07:F01E: A9 09     LDA #con_sound_09
C - - - - - 0x01F030 07:F020: 85 47     STA ram_sound
C - - - - - 0x01F032 07:F022: 60        RTS



loc_F023_other_items:
C D 3 - - - 0x01F033 07:F023: C9 22     CMP #con_obj_id_22
C - - - - - 0x01F035 07:F025: F0 15     BEQ bra_F03C_22
C - - - - - 0x01F037 07:F027: C9 21     CMP #con_obj_id_21
C - - - - - 0x01F039 07:F029: F0 27     BEQ bra_F052_21
; con_obj_id_23
C - - - - - 0x01F03B 07:F02B: EE A4 06  INC ram_repair_item
C - - - - - 0x01F03E 07:F02E: A9 00     LDA #$00
C - - - - - 0x01F040 07:F030: 85 5B     STA ram_0050_obj_flags + $0B
C - - - - - 0x01F042 07:F032: A9 08     LDA #con_msg_repair_item_obtained
C - - - - - 0x01F044 07:F034: 20 7B C9  JSR sub_C97B_prepare_new_message
C - - - - - 0x01F047 07:F037: A9 09     LDA #con_sound_09
C - - - - - 0x01F049 07:F039: 85 47     STA ram_sound
C - - - - - 0x01F04B 07:F03B: 60        RTS
bra_F03C_22:
C - - - - - 0x01F04C 07:F03C: EE 46 06  INC ram_0646_smart_bomb
C - - - - - 0x01F04F 07:F03F: A9 00     LDA #$00
C - - - - - 0x01F051 07:F041: 85 5B     STA ram_0050_obj_flags + $0B
C - - - - - 0x01F053 07:F043: A9 0D     LDA #con_msg_smart_bomb_initiated
C - - - - - 0x01F055 07:F045: 20 7B C9  JSR sub_C97B_prepare_new_message
C - - - - - 0x01F058 07:F048: A9 FF     LDA #$FF
C - - - - - 0x01F05A 07:F04A: 8D 48 06  STA ram_0648
C - - - - - 0x01F05D 07:F04D: A9 08     LDA #con_sound_08
C - - - - - 0x01F05F 07:F04F: 85 47     STA ram_sound
C - - - - - 0x01F061 07:F051: 60        RTS
bra_F052_21:
C - - - - - 0x01F062 07:F052: A9 03     LDA #$03
C - - - - - 0x01F064 07:F054: 8D 40 06  STA ram_jetpack_fuel
; bzk bug? low byte of fuel amount is not specified
C - - - - - 0x01F067 07:F057: A9 00     LDA #$00
C - - - - - 0x01F069 07:F059: 85 5B     STA ram_0050_obj_flags + $0B
C - - - - - 0x01F06B 07:F05B: A9 14     LDA #con_msg_maximum_fuel
C - - - - - 0x01F06D 07:F05D: 20 7B C9  JSR sub_C97B_prepare_new_message
C - - - - - 0x01F070 07:F060: A9 08     LDA #con_sound_08
C - - - - - 0x01F072 07:F062: 85 47     STA ram_sound
C - - - - - 0x01F074 07:F064: 60        RTS



tbl_F065_ammo:
- - - - - - 0x01F075 07:F065: FF        .byte $FF   ; 00 fire
- D 3 - - - 0x01F076 07:F066: C8        .byte $C8   ; 01 rapid
- D 3 - - - 0x01F077 07:F067: 64        .byte $64   ; 02 3-way



tbl_F068:
- - - - - - 0x01F078 07:F068: FF        .byte $FF   ; 00 missile
- D 3 - - - 0x01F079 07:F069: 05        .byte $05   ; 01 homing
- D 3 - - - 0x01F07A 07:F06A: 02        .byte $02   ; 02 bang



ofs_005_F06B_01:
C - - J - - 0x01F07B 07:F06B: A2 04     LDX #$04
loc_F06D:
C D 3 - - - 0x01F07D 07:F06D: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01F07F 07:F06F: D0 06     BNE bra_F077
bra_F071:
C - - - - - 0x01F081 07:F071: 4C 0F F1  JMP loc_F10F



bra_F074:
C - - - - - 0x01F084 07:F074: 4C 09 F1  JMP loc_F109



bra_F077:
C - - - - - 0x01F087 07:F077: B5 B8     LDA ram_obj_id,X
C - - - - - 0x01F089 07:F079: C9 07     CMP #$07
C - - - - - 0x01F08B 07:F07B: B0 F4     BCS bra_F071
C - - - - - 0x01F08D 07:F07D: A0 03     LDY #$03
loc_F07F:
C D 3 - - - 0x01F08F 07:F07F: B9 50 00  LDA ram_0050_obj_flags,Y
C - - - - - 0x01F092 07:F082: F0 F0     BEQ bra_F074
C - - - - - 0x01F094 07:F084: 20 42 F2  JSR sub_F242
C - - - - - 0x01F097 07:F087: F0 EB     BEQ bra_F074
C - - - - - 0x01F099 07:F089: 20 F6 DD  JSR sub_DDF6
C - - - - - 0x01F09C 07:F08C: 86 E2     STX ram_00E2
C - - - - - 0x01F09E 07:F08E: B5 B8     LDA ram_obj_id,X
C - - - - - 0x01F0A0 07:F090: 85 E3     STA ram_00E3
C - - - - - 0x01F0A2 07:F092: C9 03     CMP #$03
C - - - - - 0x01F0A4 07:F094: B0 06     BCS bra_F09C
C - - - - - 0x01F0A6 07:F096: A9 00     LDA #$00
C - - - - - 0x01F0A8 07:F098: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01F0AA 07:F09A: F0 03     BEQ bra_F09F    ; jmp
bra_F09C:
C - - - - - 0x01F0AC 07:F09C: 20 28 EC  JSR sub_EC28
bra_F09F:
C - - - - - 0x01F0AF 07:F09F: B9 B8 00  LDA ram_obj_id,Y
C - - - - - 0x01F0B2 07:F0A2: C9 0A     CMP #$0A
C - - - - - 0x01F0B4 07:F0A4: F0 04     BEQ bra_F0AA
C - - - - - 0x01F0B6 07:F0A6: C9 15     CMP #$15
C - - - - - 0x01F0B8 07:F0A8: D0 06     BNE bra_F0B0
bra_F0AA:
C - - - - - 0x01F0BA 07:F0AA: A5 E3     LDA ram_00E3
C - - - - - 0x01F0BC 07:F0AC: 09 08     ORA #$08
C - - - - - 0x01F0BE 07:F0AE: 85 E3     STA ram_00E3
bra_F0B0:
C - - - - - 0x01F0C0 07:F0B0: A6 E3     LDX ram_00E3
C - - - - - 0x01F0C2 07:F0B2: 38        SEC
C - - - - - 0x01F0C3 07:F0B3: B9 C3 03  LDA ram_03C3,Y
C - - - - - 0x01F0C6 07:F0B6: FD 22 FC  SBC tbl_FC22,X
C - - - - - 0x01F0C9 07:F0B9: 99 C3 03  STA ram_03C3,Y
C - - - - - 0x01F0CC 07:F0BC: 84 48     STY ram_0048
C - - - - - 0x01F0CE 07:F0BE: A6 E2     LDX ram_00E2
C - - - - - 0x01F0D0 07:F0C0: 90 04     BCC bra_F0C6
C - - - - - 0x01F0D2 07:F0C2: 29 FF     AND #$FF
C - - - - - 0x01F0D4 07:F0C4: D0 49     BNE bra_F10F
bra_F0C6:
C - - - - - 0x01F0D6 07:F0C6: A9 01     LDA #$01
C - - - - - 0x01F0D8 07:F0C8: 85 E2     STA ram_00E2
C - - - - - 0x01F0DA 07:F0CA: A9 F9     LDA #$F9
C - - - - - 0x01F0DC 07:F0CC: 85 E3     STA ram_00E3
C - - - - - 0x01F0DE 07:F0CE: B9 91 00  LDA ram_pos_Y_lo,Y
C - - - - - 0x01F0E1 07:F0D1: 10 00     BPL bra_F0D3
bra_F0D3:
C - - - - - 0x01F0E3 07:F0D3: A9 04     LDA #$04
C - - - - - 0x01F0E5 07:F0D5: 85 E2     STA ram_00E2
C - - - - - 0x01F0E7 07:F0D7: A9 FD     LDA #$FD
C - - - - - 0x01F0E9 07:F0D9: 85 E3     STA ram_00E3
C - - - - - 0x01F0EB 07:F0DB: A5 E2     LDA ram_00E2
C - - - - - 0x01F0ED 07:F0DD: 99 75 03  STA ram_0375_obj,Y
C - - - - - 0x01F0F0 07:F0E0: A5 E3     LDA ram_00E3
C - - - - - 0x01F0F2 07:F0E2: 99 68 03  STA ram_0368_obj,Y
C - - - - - 0x01F0F5 07:F0E5: A9 00     LDA #$00
C - - - - - 0x01F0F7 07:F0E7: 99 C3 03  STA ram_03C3,Y
C - - - - - 0x01F0FA 07:F0EA: A9 05     LDA #$05
C - - - - - 0x01F0FC 07:F0EC: 99 8F 03  STA ram_038F_obj,Y
C - - - - - 0x01F0FF 07:F0EF: A9 06     LDA #$06
C - - - - - 0x01F101 07:F0F1: 85 E2     STA ram_00E2
C - - - - - 0x01F103 07:F0F3: B5 C5     LDA ram_00C5_obj,X
C - - - - - 0x01F105 07:F0F5: 10 04     BPL bra_F0FB
C - - - - - 0x01F107 07:F0F7: A9 FA     LDA #$FA
C - - - - - 0x01F109 07:F0F9: 85 E2     STA ram_00E2
bra_F0FB:
C - - - - - 0x01F10B 07:F0FB: A5 E2     LDA ram_00E2
C - - - - - 0x01F10D 07:F0FD: 99 C5 00  STA ram_00C5_obj,Y
C - - - - - 0x01F110 07:F100: 99 5B 03  STA ram_035B_obj,Y
C - - - - - 0x01F113 07:F103: 20 29 F2  JSR sub_F229
C - - - - - 0x01F116 07:F106: 4C 0F F1  JMP loc_F10F
loc_F109:
C D 3 - - - 0x01F119 07:F109: 88        DEY
C - - - - - 0x01F11A 07:F10A: F0 03     BEQ bra_F10F
C - - - - - 0x01F11C 07:F10C: 4C 7F F0  JMP loc_F07F
bra_F10F:
loc_F10F:
C D 3 - - - 0x01F11F 07:F10F: E8        INX
C - - - - - 0x01F120 07:F110: E0 07     CPX #$07
C - - - - - 0x01F122 07:F112: B0 03     BCS bra_F117_RTS
C - - - - - 0x01F124 07:F114: 4C 6D F0  JMP loc_F06D
bra_F117_RTS:
C - - - - - 0x01F127 07:F117: 60        RTS



ofs_005_F118_02:
C - - J - - 0x01F128 07:F118: A5 46     LDA ram_message
C - - - - - 0x01F12A 07:F11A: C9 09     CMP #con_msg_system_failure
C - - - - - 0x01F12C 07:F11C: F0 3C     BEQ bra_F15A_RTS
C - - - - - 0x01F12E 07:F11E: A0 00     LDY #$00
C - - - - - 0x01F130 07:F120: A2 07     LDX #$07
bra_F122_loop:
C - - - - - 0x01F132 07:F122: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01F134 07:F124: F0 2F     BEQ bra_F155
C - - - - - 0x01F136 07:F126: 20 42 F2  JSR sub_F242
C - - - - - 0x01F139 07:F129: F0 2A     BEQ bra_F155
C - - - - - 0x01F13B 07:F12B: A9 01     LDA #$01
C - - - - - 0x01F13D 07:F12D: 8D 5B 06  STA ram_065B
C - - - - - 0x01F140 07:F130: B5 B8     LDA ram_obj_id,X
C - - - - - 0x01F142 07:F132: 8D 76 06  STA ram_0676
C - - - - - 0x01F145 07:F135: D0 06     BNE bra_F13D
C - - - - - 0x01F147 07:F137: A9 00     LDA #$00
C - - - - - 0x01F149 07:F139: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01F14B 07:F13B: F0 07     BEQ bra_F144    ; jmp
bra_F13D:
C - - - - - 0x01F14D 07:F13D: C9 07     CMP #$07
C - - - - - 0x01F14F 07:F13F: F0 14     BEQ bra_F155
C - - - - - 0x01F151 07:F141: 20 2F EC  JSR sub_EC2F
bra_F144:
C - - - - - 0x01F154 07:F144: AC 76 06  LDY ram_0676
C - - - - - 0x01F157 07:F147: B9 36 FC  LDA tbl_FC36,Y
C - - - - - 0x01F15A 07:F14A: 8D 99 06  STA ram_0699_unit_index
C - - - - - 0x01F15D 07:F14D: B9 32 FC  LDA tbl_FC32,Y
C - - - - - 0x01F160 07:F150: 20 5B F1  JSR sub_F15B
C - - - - - 0x01F163 07:F153: A0 00     LDY #$00
bra_F155:
C - - - - - 0x01F165 07:F155: E8        INX
C - - - - - 0x01F166 07:F156: E0 0A     CPX #$0A
C - - - - - 0x01F168 07:F158: 90 C8     BCC bra_F122_loop
bra_F15A_RTS:
C - - - - - 0x01F16A 07:F15A: 60        RTS



sub_F15B:
C - - - - - 0x01F16B 07:F15B: 85 E2     STA ram_00E2
C - - - - - 0x01F16D 07:F15D: 86 E3     STX ram_00E3
C - - - - - 0x01F16F 07:F15F: A9 03     LDA #$03
C - - - - - 0x01F171 07:F161: 85 3B     STA ram_003B
C - - - - - 0x01F173 07:F163: A5 46     LDA ram_message
C - - - - - 0x01F175 07:F165: C9 09     CMP #con_msg_system_failure
C - - - - - 0x01F177 07:F167: F0 68     BEQ bra_F1D1
C - - - - - 0x01F179 07:F169: A5 3D     LDA ram_003D
C - - - - - 0x01F17B 07:F16B: 29 02     AND #$02
C - - - - - 0x01F17D 07:F16D: D0 62     BNE bra_F1D1
C - - - - - 0x01F17F 07:F16F: AE 99 06  LDX ram_0699_unit_index
C - - - - - 0x01F182 07:F172: BD A0 06  LDA ram_unit__hp,X
C - - - - - 0x01F185 07:F175: C9 0A     CMP #$0A
C - - - - - 0x01F187 07:F177: B0 1E     BCS bra_F197
C - - - - - 0x01F189 07:F179: C9 07     CMP #$07
C - - - - - 0x01F18B 07:F17B: 90 0B     BCC bra_F188_skip
C - - - - - 0x01F18D 07:F17D: 8A        TXA
C - - - - - 0x01F18E 07:F17E: 18        CLC
C - - - - - 0x01F18F 07:F17F: 69 0F     ADC #$0F
; con_msg_warning_head_unit_damaged
; con_msg_warning_body_unit_damaged
; con_msg_warning_arm_units_damaged
; con_msg_warning_leg_units_damaged
C - - - - - 0x01F191 07:F181: C5 46     CMP ram_message
C - - - - - 0x01F193 07:F183: F0 03     BEQ bra_F188_skip
C - - - - - 0x01F195 07:F185: 20 7B C9  JSR sub_C97B_prepare_new_message
bra_F188_skip:
C - - - - - 0x01F198 07:F188: A5 37     LDA ram_random
loc_F18A_loop:
C D 3 - - - 0x01F19A 07:F18A: 29 03     AND #$03
C - - - - - 0x01F19C 07:F18C: AA        TAX
C - - - - - 0x01F19D 07:F18D: BD A0 06  LDA ram_unit__hp,X
C - - - - - 0x01F1A0 07:F190: D0 05     BNE bra_F197
C - - - - - 0x01F1A2 07:F192: E8        INX
C - - - - - 0x01F1A3 07:F193: 8A        TXA
C - - - - - 0x01F1A4 07:F194: 4C 8A F1  JMP loc_F18A_loop
bra_F197:
C - - - - - 0x01F1A7 07:F197: 38        SEC
C - - - - - 0x01F1A8 07:F198: BD A0 06  LDA ram_unit__hp,X
C - - - - - 0x01F1AB 07:F19B: E5 E2     SBC ram_00E2
C - - - - - 0x01F1AD 07:F19D: B0 02     BCS bra_F1A1_not_underflow
C - - - - - 0x01F1AF 07:F19F: A9 00     LDA #$00
bra_F1A1_not_underflow:
C - - - - - 0x01F1B1 07:F1A1: 9D A0 06  STA ram_unit__hp,X
C - - - - - 0x01F1B4 07:F1A4: 18        CLC
C - - - - - 0x01F1B5 07:F1A5: AD A0 06  LDA ram_unit_hp_head
C - - - - - 0x01F1B8 07:F1A8: 6D A1 06  ADC ram_unit_hp_body
C - - - - - 0x01F1BB 07:F1AB: 6D A2 06  ADC ram_unit_hp_arms
C - - - - - 0x01F1BE 07:F1AE: 6D A3 06  ADC ram_unit_hp_legs
C - - - - - 0x01F1C1 07:F1B1: D0 11     BNE bra_F1C4_not_dead
; A = 00
C - - - - - 0x01F1C3 07:F1B3: 8D 3E 06  STA ram_robocop_hp
C - - - - - 0x01F1C6 07:F1B6: 85 3C     STA ram_003C
C - - - - - 0x01F1C8 07:F1B8: A9 02     LDA #$02
C - - - - - 0x01F1CA 07:F1BA: 85 3D     STA ram_003D
C - - - - - 0x01F1CC 07:F1BC: A9 09     LDA #con_msg_system_failure
C - - - - - 0x01F1CE 07:F1BE: 20 7B C9  JSR sub_C97B_prepare_new_message
C - - - - - 0x01F1D1 07:F1C1: 4C D1 F1  JMP loc_F1D1
bra_F1C4_not_dead:
C - - - - - 0x01F1D4 07:F1C4: C9 19     CMP #$19
C - - - - - 0x01F1D6 07:F1C6: B0 09     BCS bra_F1D1
C - - - - - 0x01F1D8 07:F1C8: A9 05     LDA #con_msg_system_damage_alert
C - - - - - 0x01F1DA 07:F1CA: C5 46     CMP ram_message
C - - - - - 0x01F1DC 07:F1CC: F0 03     BEQ bra_F1D1
C - - - - - 0x01F1DE 07:F1CE: 20 7B C9  JSR sub_C97B_prepare_new_message
bra_F1D1:
loc_F1D1:
C D 3 - - - 0x01F1E1 07:F1D1: A6 E3     LDX ram_00E3
C - - - - - 0x01F1E3 07:F1D3: 60        RTS



sub_F1D4:
C - - - - - 0x01F1E4 07:F1D4: A5 5A     LDA ram_0050_obj_flags + $0A
C - - - - - 0x01F1E6 07:F1D6: F0 48     BEQ bra_F220
C - - - - - 0x01F1E8 07:F1D8: A5 5A     LDA ram_0050_obj_flags + $0A
C - - - - - 0x01F1EA 07:F1DA: C9 FF     CMP #$FF
C - - - - - 0x01F1EC 07:F1DC: F0 42     BEQ bra_F220
C - - - - - 0x01F1EE 07:F1DE: AD 72 03  LDA ram_0368_obj + $0A
C - - - - - 0x01F1F1 07:F1E1: D0 33     BNE bra_F216
C - - - - - 0x01F1F3 07:F1E3: A0 06     LDY #con_prg_bank + $06
C - - - - - 0x01F1F5 07:F1E5: 20 54 F9  JSR sub_F954_prg_bankswitch
C - - - - - 0x01F1F8 07:F1E8: A2 00     LDX #$00
C - - - - - 0x01F1FA 07:F1EA: A0 0A     LDY #$0A
C - - - - - 0x01F1FC 07:F1EC: 20 42 F2  JSR sub_F242
C - - - - - 0x01F1FF 07:F1EF: F0 2F     BEQ bra_F220
C - - - - - 0x01F201 07:F1F1: 38        SEC
C - - - - - 0x01F202 07:F1F2: A5 9B     LDA ram_pos_Y_lo + $0A
C - - - - - 0x01F204 07:F1F4: E5 91     SBC ram_pos_Y_lo
C - - - - - 0x01F206 07:F1F6: 90 28     BCC bra_F220
C - - - - - 0x01F208 07:F1F8: C9 28     CMP #$28
C - - - - - 0x01F20A 07:F1FA: 90 24     BCC bra_F220
C - - - - - 0x01F20C 07:F1FC: C9 30     CMP #$30
C - - - - - 0x01F20E 07:F1FE: B0 20     BCS bra_F220
C - - - - - 0x01F210 07:F200: A9 01     LDA #$01
C - - - - - 0x01F212 07:F202: 85 9E     STA ram_009E_obj
C - - - - - 0x01F214 07:F204: 85 AB     STA ram_00AB_obj
C - - - - - 0x01F216 07:F206: EE A6 03  INC ram_039C_obj + $0A
C - - - - - 0x01F219 07:F209: AD A6 03  LDA ram_039C_obj + $0A
C - - - - - 0x01F21C 07:F20C: C9 1E     CMP #$1E
C - - - - - 0x01F21E 07:F20E: 90 10     BCC bra_F220
C - - - - - 0x01F220 07:F210: A9 05     LDA #$05
C - - - - - 0x01F222 07:F212: 8D 7F 03  STA ram_0375_obj + $0A
C - - - - - 0x01F225 07:F215: 60        RTS
bra_F216:
C - - - - - 0x01F226 07:F216: A5 9B     LDA ram_pos_Y_lo + $0A
C - - - - - 0x01F228 07:F218: C9 E6     CMP #$E6
C - - - - - 0x01F22A 07:F21A: 90 04     BCC bra_F220
C - - - - - 0x01F22C 07:F21C: A9 00     LDA #$00
C - - - - - 0x01F22E 07:F21E: 85 5A     STA ram_0050_obj_flags + $0A
bra_F220:
C - - - - - 0x01F230 07:F220: A6 03     LDX ram_mission
C - - - - - 0x01F232 07:F222: BC 39 FC  LDY tbl_FC39_prg_bank_for_mission,X
C - - - - - 0x01F235 07:F225: 20 54 F9  JSR sub_F954_prg_bankswitch
C - - - - - 0x01F238 07:F228: 60        RTS



sub_F229:
C - - - - - 0x01F239 07:F229: 86 E2     STX ram_00E2
C - - - - - 0x01F23B 07:F22B: B6 B8     LDX ram_obj_id,Y
C - - - - - 0x01F23D 07:F22D: 18        CLC
C - - - - - 0x01F23E 07:F22E: BD F9 FB  LDA tbl_FBF9,X
C - - - - - 0x01F241 07:F231: 6D 3C 06  ADC ram_063C
C - - - - - 0x01F244 07:F234: 8D 3C 06  STA ram_063C
C - - - - - 0x01F247 07:F237: AD 3D 06  LDA ram_063C + $01
C - - - - - 0x01F24A 07:F23A: 69 00     ADC #$00
C - - - - - 0x01F24C 07:F23C: 8D 3D 06  STA ram_063C + $01
C - - - - - 0x01F24F 07:F23F: A6 E2     LDX ram_00E2
C - - - - - 0x01F251 07:F241: 60        RTS



sub_F242:
C - - - - - 0x01F252 07:F242: 84 E2     STY ram_00E2
C - - - - - 0x01F254 07:F244: 86 E3     STX ram_00E3
C - - - - - 0x01F256 07:F246: B4 5D     LDY ram_obj_anim_id,X
C - - - - - 0x01F258 07:F248: B9 00 BE  LDA tbl_0x01BE10,Y
C - - - - - 0x01F25B 07:F24B: D0 03     BNE bra_F250
- - - - - - 0x01F25D 07:F24D: 4C D0 F2  JMP loc_F2D0
bra_F250:
C - - - - - 0x01F260 07:F250: B9 00 BC  LDA tbl_0x01BC10,Y
C - - - - - 0x01F263 07:F253: 18        CLC
C - - - - - 0x01F264 07:F254: 75 91     ADC ram_pos_Y_lo,X
C - - - - - 0x01F266 07:F256: 85 E4     STA ram_00E4
C - - - - - 0x01F268 07:F258: 79 00 BD  ADC tbl_0x01BD10,Y
C - - - - - 0x01F26B 07:F25B: 85 E5     STA ram_00E5
C - - - - - 0x01F26D 07:F25D: A6 E2     LDX ram_00E2
C - - - - - 0x01F26F 07:F25F: B4 5D     LDY ram_obj_anim_id,X
C - - - - - 0x01F271 07:F261: B9 00 BC  LDA tbl_0x01BC10,Y
C - - - - - 0x01F274 07:F264: 18        CLC
C - - - - - 0x01F275 07:F265: 75 91     ADC ram_pos_Y_lo,X
C - - - - - 0x01F277 07:F267: C5 E5     CMP ram_00E5
C - - - - - 0x01F279 07:F269: B0 65     BCS bra_F2D0
C - - - - - 0x01F27B 07:F26B: 79 00 BD  ADC tbl_0x01BD10,Y
C - - - - - 0x01F27E 07:F26E: C5 E4     CMP ram_00E4
C - - - - - 0x01F280 07:F270: 90 5E     BCC bra_F2D0
C - - - - - 0x01F282 07:F272: 18        CLC
C - - - - - 0x01F283 07:F273: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x01F285 07:F275: 79 00 BB  ADC tbl_0x01BB10,Y
C - - - - - 0x01F288 07:F278: 85 E6     STA ram_00E6
C - - - - - 0x01F28A 07:F27A: B5 84     LDA ram_pos_X_hi,X
C - - - - - 0x01F28C 07:F27C: 69 00     ADC #$00
C - - - - - 0x01F28E 07:F27E: 85 E7     STA ram_00E7
C - - - - - 0x01F290 07:F280: A6 E3     LDX ram_00E3
C - - - - - 0x01F292 07:F282: B4 5D     LDY ram_obj_anim_id,X
C - - - - - 0x01F294 07:F284: 18        CLC
C - - - - - 0x01F295 07:F285: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x01F297 07:F287: 79 00 BB  ADC tbl_0x01BB10,Y
C - - - - - 0x01F29A 07:F28A: 85 E8     STA ram_00E8
C - - - - - 0x01F29C 07:F28C: B5 84     LDA ram_pos_X_hi,X
C - - - - - 0x01F29E 07:F28E: 69 00     ADC #$00
C - - - - - 0x01F2A0 07:F290: 85 E9     STA ram_00E8 + $01
C - - - - - 0x01F2A2 07:F292: A6 E3     LDX ram_00E3
C - - - - - 0x01F2A4 07:F294: A4 E2     LDY ram_00E2
C - - - - - 0x01F2A6 07:F296: 38        SEC
C - - - - - 0x01F2A7 07:F297: A5 E8     LDA ram_00E8
C - - - - - 0x01F2A9 07:F299: E5 E6     SBC ram_00E6
C - - - - - 0x01F2AB 07:F29B: 85 E4     STA ram_00E4
C - - - - - 0x01F2AD 07:F29D: A5 E9     LDA ram_00E8 + $01
C - - - - - 0x01F2AF 07:F29F: E5 E7     SBC ram_00E7
C - - - - - 0x01F2B1 07:F2A1: 90 0E     BCC bra_F2B1
C - - - - - 0x01F2B3 07:F2A3: D0 2B     BNE bra_F2D0
C - - - - - 0x01F2B5 07:F2A5: B6 5D     LDX ram_obj_anim_id,Y
C - - - - - 0x01F2B7 07:F2A7: BD 00 BE  LDA tbl_0x01BE10,X
C - - - - - 0x01F2BA 07:F2AA: C5 E4     CMP ram_00E4
C - - - - - 0x01F2BC 07:F2AC: 90 22     BCC bra_F2D0
C - - - - - 0x01F2BE 07:F2AE: 4C C9 F2  JMP loc_F2C9
bra_F2B1:
C - - - - - 0x01F2C1 07:F2B1: 38        SEC
C - - - - - 0x01F2C2 07:F2B2: A5 E6     LDA ram_00E6
C - - - - - 0x01F2C4 07:F2B4: E5 E8     SBC ram_00E8
C - - - - - 0x01F2C6 07:F2B6: 85 E4     STA ram_00E4
C - - - - - 0x01F2C8 07:F2B8: A5 E7     LDA ram_00E7
C - - - - - 0x01F2CA 07:F2BA: E5 E9     SBC ram_00E8 + $01
C - - - - - 0x01F2CC 07:F2BC: D0 12     BNE bra_F2D0
C - - - - - 0x01F2CE 07:F2BE: B4 5D     LDY ram_obj_anim_id,X
C - - - - - 0x01F2D0 07:F2C0: B9 00 BE  LDA tbl_0x01BE10,Y
C - - - - - 0x01F2D3 07:F2C3: F0 0B     BEQ bra_F2D0
C - - - - - 0x01F2D5 07:F2C5: C5 E4     CMP ram_00E4
C - - - - - 0x01F2D7 07:F2C7: 90 07     BCC bra_F2D0
loc_F2C9:
C D 3 - - - 0x01F2D9 07:F2C9: A4 E2     LDY ram_00E2
C - - - - - 0x01F2DB 07:F2CB: A6 E3     LDX ram_00E3
C - - - - - 0x01F2DD 07:F2CD: A9 01     LDA #$01
C - - - - - 0x01F2DF 07:F2CF: 60        RTS
bra_F2D0:
loc_F2D0:
C - - - - - 0x01F2E0 07:F2D0: A4 E2     LDY ram_00E2
C - - - - - 0x01F2E2 07:F2D2: A6 E3     LDX ram_00E3
C - - - - - 0x01F2E4 07:F2D4: A9 00     LDA #$00
C - - - - - 0x01F2E6 07:F2D6: 60        RTS



sub_F2D7:
C - - - - - 0x01F2E7 07:F2D7: A2 0B     LDX #$0B
bra_F2D9_loop:
C - - - - - 0x01F2E9 07:F2D9: A9 00     LDA #$00
C - - - - - 0x01F2EB 07:F2DB: 95 50     STA ram_0050_obj_flags,X
C - - - - - 0x01F2ED 07:F2DD: A9 03     LDA #$03
C - - - - - 0x01F2EF 07:F2DF: 9D 8F 03  STA ram_038F_obj,X
C - - - - - 0x01F2F2 07:F2E2: 9D 82 03  STA ram_0382_obj,X
C - - - - - 0x01F2F5 07:F2E5: CA        DEX
C - - - - - 0x01F2F6 07:F2E6: 10 F1     BPL bra_F2D9_loop
C - - - - - 0x01F2F8 07:F2E8: A4 1B     LDY ram_001B
C - - - - - 0x01F2FA 07:F2EA: B9 48 80  LDA $8048,Y
C - - - - - 0x01F2FD 07:F2ED: 85 91     STA ram_pos_Y_lo
C - - - - - 0x01F2FF 07:F2EF: B9 5A 80  LDA $805A,Y
C - - - - - 0x01F302 07:F2F2: 85 77     STA ram_pos_X_lo
C - - - - - 0x01F304 07:F2F4: B9 5D 80  LDA $805D,Y
C - - - - - 0x01F307 07:F2F7: 85 84     STA ram_pos_X_hi
C - - - - - 0x01F309 07:F2F9: A9 00     LDA #$00
C - - - - - 0x01F30B 07:F2FB: 8D 75 03  STA ram_0375_obj
C - - - - - 0x01F30E 07:F2FE: 8D 68 03  STA ram_0368_obj
C - - - - - 0x01F311 07:F301: 8D 5B 03  STA ram_035B_obj
C - - - - - 0x01F314 07:F304: 85 C5     STA ram_00C5_obj
C - - - - - 0x01F316 07:F306: A9 03     LDA #$03
C - - - - - 0x01F318 07:F308: 85 6A     STA ram_006A_obj
C - - - - - 0x01F31A 07:F30A: A9 41     LDA #$41
C - - - - - 0x01F31C 07:F30C: 85 50     STA ram_0050_obj_flags
C - - - - - 0x01F31E 07:F30E: A9 01     LDA #$01
C - - - - - 0x01F320 07:F310: 8D 41 03  STA ram_0341
C - - - - - 0x01F323 07:F313: B9 3F 80  LDA $803F,Y
C - - - - - 0x01F326 07:F316: 85 83     STA ram_pos_X_lo + $0C
C - - - - - 0x01F328 07:F318: B9 42 80  LDA $8042,Y
C - - - - - 0x01F32B 07:F31B: 85 90     STA ram_pos_X_hi + $0C
C - - - - - 0x01F32D 07:F31D: B9 45 80  LDA $8045,Y
C - - - - - 0x01F330 07:F320: 85 9D     STA ram_pos_Y_lo + $0C
C - - - - - 0x01F332 07:F322: A9 21     LDA #$21
C - - - - - 0x01F334 07:F324: 85 5C     STA ram_0050_obj_flags + $0C
C - - - - - 0x01F336 07:F326: A9 00     LDA #$00
C - - - - - 0x01F338 07:F328: 85 69     STA ram_obj_anim_id + $0C
C - - - - - 0x01F33A 07:F32A: 85 76     STA ram_006A_obj + $0C
C - - - - - 0x01F33C 07:F32C: 60        RTS



sub_F32D:
C - - - - - 0x01F33D 07:F32D: A0 06     LDY #con_prg_bank + $06
C - - - - - 0x01F33F 07:F32F: 20 54 F9  JSR sub_F954_prg_bankswitch
C - - - - - 0x01F342 07:F332: 38        SEC
C - - - - - 0x01F343 07:F333: A5 77     LDA ram_pos_X_lo
C - - - - - 0x01F345 07:F335: E5 15     SBC ram_limit_scroll_X
C - - - - - 0x01F347 07:F337: 85 E5     STA ram_00E5
C - - - - - 0x01F349 07:F339: A5 84     LDA ram_pos_X_hi
C - - - - - 0x01F34B 07:F33B: E9 00     SBC #$00
C - - - - - 0x01F34D 07:F33D: 85 E6     STA ram_00E6
C - - - - - 0x01F34F 07:F33F: A5 3D     LDA ram_003D
C - - - - - 0x01F351 07:F341: 49 01     EOR #$01
C - - - - - 0x01F353 07:F343: 85 3D     STA ram_003D
C - - - - - 0x01F355 07:F345: 29 03     AND #$03
C - - - - - 0x01F357 07:F347: 0A        ASL
C - - - - - 0x01F358 07:F348: 0A        ASL
C - - - - - 0x01F359 07:F349: 0A        ASL
C - - - - - 0x01F35A 07:F34A: 0A        ASL
C - - - - - 0x01F35B 07:F34B: 18        CLC
C - - - - - 0x01F35C 07:F34C: 69 98     ADC #< tbl_F398
C - - - - - 0x01F35E 07:F34E: 85 EC     STA ram_00EC
C - - - - - 0x01F360 07:F350: A9 F3     LDA #> tbl_F398
C - - - - - 0x01F362 07:F352: 69 00     ADC #$00
C - - - - - 0x01F364 07:F354: 85 ED     STA ram_00ED
C - - - - - 0x01F366 07:F356: A2 00     LDX #$00
C - - - - - 0x01F368 07:F358: 86 22     STX ram_0022
bra_F35A_loop:
C - - - - - 0x01F36A 07:F35A: A9 00     LDA #$00
C - - - - - 0x01F36C 07:F35C: 85 3F     STA ram_003F
C - - - - - 0x01F36E 07:F35E: A4 22     LDY ram_0022
C - - - - - 0x01F370 07:F360: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x01F372 07:F362: D0 04     BNE bra_F368
; 00
C - - - - - 0x01F374 07:F364: A4 35     LDY ram_0035
C - - - - - 0x01F376 07:F366: 84 3F     STY ram_003F
bra_F368:
C - - - - - 0x01F378 07:F368: A8        TAY
C - - - - - 0x01F379 07:F369: 20 D8 F3  JSR sub_F3D8_sprite_engine_for_object
C - - - - - 0x01F37C 07:F36C: E0 00     CPX #$00
C - - - - - 0x01F37E 07:F36E: D0 08     BNE bra_F378
C - - - - - 0x01F380 07:F370: A5 22     LDA ram_0022
C - - - - - 0x01F382 07:F372: D0 1B     BNE bra_F38F
C - - - - - 0x01F384 07:F374: E8        INX
C - - - - - 0x01F385 07:F375: E8        INX
C - - - - - 0x01F386 07:F376: E8        INX
C - - - - - 0x01F387 07:F377: E8        INX
bra_F378:
C - - - - - 0x01F388 07:F378: E6 22     INC ram_0022
C - - - - - 0x01F38A 07:F37A: A4 22     LDY ram_0022
C - - - - - 0x01F38C 07:F37C: C0 0D     CPY #$0D
C - - - - - 0x01F38E 07:F37E: 90 DA     BCC bra_F35A_loop
bra_F380_loop:
C - - - - - 0x01F390 07:F380: E0 00     CPX #$00
C - - - - - 0x01F392 07:F382: F0 0B     BEQ bra_F38F
C - - - - - 0x01F394 07:F384: A9 F8     LDA #$F8
C - - - - - 0x01F396 07:F386: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x01F399 07:F389: E8        INX
C - - - - - 0x01F39A 07:F38A: E8        INX
C - - - - - 0x01F39B 07:F38B: E8        INX
C - - - - - 0x01F39C 07:F38C: E8        INX
C - - - - - 0x01F39D 07:F38D: D0 F1     BNE bra_F380_loop
bra_F38F:
C - - - - - 0x01F39F 07:F38F: A6 03     LDX ram_mission
C - - - - - 0x01F3A1 07:F391: BC 39 FC  LDY tbl_FC39_prg_bank_for_mission,X
C - - - - - 0x01F3A4 07:F394: 20 54 F9  JSR sub_F954_prg_bankswitch
C - - - - - 0x01F3A7 07:F397: 60        RTS



tbl_F398:
; 00 
- D 3 - I - 0x01F3A8 07:F398: 0C        .byte $0C, $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0A, $0B   ; 
- - - - - - 0x01F3B5 07:F3A5: 00        .byte $00, $00, $00   ; placeholders
; 01 
- D 3 - I - 0x01F3B8 07:F3A8: 0C        .byte $0C, $00, $04, $05, $06, $07, $08, $09, $0B, $01, $02, $03, $0A   ; 
- - - - - - 0x01F3C5 07:F3B5: 00        .byte $00, $00, $00   ; placeholders
; 02 
- D 3 - I - 0x01F3C8 07:F3B8: 0C        .byte $0C, $04, $05, $06, $00, $01, $02, $03, $07, $08, $09, $0A, $0B   ; 
- - - - - - 0x01F3D5 07:F3C5: 00        .byte $00, $00, $00   ; placeholders
; 03 
- D 3 - I - 0x01F3D8 07:F3C8: 0C        .byte $0C, $07, $08, $09, $00, $01, $02, $03, $04, $05, $06, $0A, $0B   ; 
- - - - - - 0x01F3E5 07:F3D5: 00        .byte $00, $00, $00   ; placeholders



sub_F3D8_sprite_engine_for_object:
C - - - - - 0x01F3E8 07:F3D8: B9 50 00  LDA ram_0050_obj_flags,Y
C - - - - - 0x01F3EB 07:F3DB: D0 01     BNE bra_F3DE_exist
C - - - - - 0x01F3ED 07:F3DD: 60        RTS
bra_F3DE_exist:
C - - - - - 0x01F3EE 07:F3DE: 29 F7     AND #$F7
C - - - - - 0x01F3F0 07:F3E0: 99 50 00  STA ram_0050_obj_flags,Y
C - - - - - 0x01F3F3 07:F3E3: A9 01     LDA #$01
C - - - - - 0x01F3F5 07:F3E5: 85 28     STA ram_0028
C - - - - - 0x01F3F7 07:F3E7: 38        SEC
C - - - - - 0x01F3F8 07:F3E8: B9 77 00  LDA ram_pos_X_lo,Y
C - - - - - 0x01F3FB 07:F3EB: E5 E5     SBC ram_00E5
C - - - - - 0x01F3FD 07:F3ED: 85 23     STA ram_0023
C - - - - - 0x01F3FF 07:F3EF: B9 84 00  LDA ram_pos_X_hi,Y
C - - - - - 0x01F402 07:F3F2: E5 E6     SBC ram_00E6
C - - - - - 0x01F404 07:F3F4: F0 33     BEQ bra_F429
C - - - - - 0x01F406 07:F3F6: C9 01     CMP #$01
C - - - - - 0x01F408 07:F3F8: D0 08     BNE bra_F402
C - - - - - 0x01F40A 07:F3FA: A5 23     LDA ram_0023
C - - - - - 0x01F40C 07:F3FC: C9 32     CMP #$32
C - - - - - 0x01F40E 07:F3FE: B0 0C     BCS bra_F40C
C - - - - - 0x01F410 07:F400: 90 23     BCC bra_F425    ; jmp
bra_F402:
C - - - - - 0x01F412 07:F402: C9 FF     CMP #$FF
C - - - - - 0x01F414 07:F404: D0 06     BNE bra_F40C
C - - - - - 0x01F416 07:F406: A5 23     LDA ram_0023
C - - - - - 0x01F418 07:F408: C9 CD     CMP #$CD
C - - - - - 0x01F41A 07:F40A: B0 19     BCS bra_F425
bra_F40C:
C - - - - - 0x01F41C 07:F40C: B9 50 00  LDA ram_0050_obj_flags,Y
C - - - - - 0x01F41F 07:F40F: 09 08     ORA #$08
C - - - - - 0x01F421 07:F411: 99 50 00  STA ram_0050_obj_flags,Y
C - - - - - 0x01F424 07:F414: B9 B8 00  LDA ram_obj_id,Y
C - - - - - 0x01F427 07:F417: C9 0A     CMP #$0A
C - - - - - 0x01F429 07:F419: F0 09     BEQ bra_F424_RTS
C - - - - - 0x01F42B 07:F41B: C9 15     CMP #$15
C - - - - - 0x01F42D 07:F41D: F0 05     BEQ bra_F424_RTS
C - - - - - 0x01F42F 07:F41F: A9 00     LDA #$00
C - - - - - 0x01F431 07:F421: 99 50 00  STA ram_0050_obj_flags,Y
bra_F424_RTS:
C - - - - - 0x01F434 07:F424: 60        RTS
bra_F425:
C - - - - - 0x01F435 07:F425: A9 00     LDA #$00
C - - - - - 0x01F437 07:F427: 85 28     STA ram_0028
bra_F429:
C - - - - - 0x01F439 07:F429: B9 91 00  LDA ram_pos_Y_lo,Y
C - - - - - 0x01F43C 07:F42C: 18        CLC
C - - - - - 0x01F43D 07:F42D: 65 31     ADC ram_0031
C - - - - - 0x01F43F 07:F42F: 38        SEC
C - - - - - 0x01F440 07:F430: E9 09     SBC #$09
C - - - - - 0x01F442 07:F432: 85 24     STA ram_0024    ; spr_Y
C - - - - - 0x01F444 07:F434: B9 50 00  LDA ram_0050_obj_flags,Y
C - - - - - 0x01F447 07:F437: 29 E0     AND #$E0
C - - - - - 0x01F449 07:F439: 85 E4     STA ram_00E4
C - - - - - 0x01F44B 07:F43B: B9 6A 00  LDA ram_006A_obj,Y
C - - - - - 0x01F44E 07:F43E: 29 03     AND #$03
C - - - - - 0x01F450 07:F440: 05 E4     ORA ram_00E4
C - - - - - 0x01F452 07:F442: 85 E4     STA ram_00E4    ; spr_A
C - - - - - 0x01F454 07:F444: 29 40     AND #$40
C - - - - - 0x01F456 07:F446: 08        PHP
C - - - - - 0x01F457 07:F447: B9 5D 00  LDA ram_obj_anim_id,Y
C - - - - - 0x01F45A 07:F44A: A8        TAY
C - - - - - 0x01F45B 07:F44B: B9 00 A0  LDA tbl_0x01A010_spr_data_lo,Y
C - - - - - 0x01F45E 07:F44E: 85 EA     STA ram_00EA
C - - - - - 0x01F460 07:F450: B9 00 A1  LDA tbl_0x01A110_spr_data_hi,Y
C - - - - - 0x01F463 07:F453: 85 EB     STA ram_00EB
C - - - - - 0x01F465 07:F455: A0 00     LDY #$00
C - - - - - 0x01F467 07:F457: B1 EA     LDA (ram_00EA),Y
C - - - - - 0x01F469 07:F459: 85 25     STA ram_0025
C - - - - - 0x01F46B 07:F45B: C8        INY
C - - - - - 0x01F46C 07:F45C: B1 EA     LDA (ram_00EA),Y
C - - - - - 0x01F46E 07:F45E: 85 26     STA ram_0026
C - - - - - 0x01F470 07:F460: C8        INY
C - - - - - 0x01F471 07:F461: 28        PLP
C - - - - - 0x01F472 07:F462: F0 03     BEQ bra_F467
C - - - - - 0x01F474 07:F464: 4C DB F4  JMP loc_F4DB
bra_F467:
loc_F467_loop:
C D 3 - - - 0x01F477 07:F467: E6 3F     INC ram_003F
C - - - - - 0x01F479 07:F469: 10 08     BPL bra_F473
C - - - - - 0x01F47B 07:F46B: 98        TYA
C - - - - - 0x01F47C 07:F46C: 18        CLC
C - - - - - 0x01F47D 07:F46D: 65 25     ADC ram_0025
C - - - - - 0x01F47F 07:F46F: A8        TAY
C - - - - - 0x01F480 07:F470: 4C CB F4  JMP loc_F4CB
bra_F473:
C - - - - - 0x01F483 07:F473: A5 25     LDA ram_0025
C - - - - - 0x01F485 07:F475: 85 E2     STA ram_00E2
C - - - - - 0x01F487 07:F477: B1 EA     LDA (ram_00EA),Y
C - - - - - 0x01F489 07:F479: 85 E7     STA ram_00E7
C - - - - - 0x01F48B 07:F47B: 18        CLC
C - - - - - 0x01F48C 07:F47C: 65 23     ADC ram_0023
C - - - - - 0x01F48E 07:F47E: 85 E3     STA ram_00E3    ; spr_X
C - - - - - 0x01F490 07:F480: A5 E7     LDA ram_00E7
C - - - - - 0x01F492 07:F482: 30 09     BMI bra_F48D
C - - - - - 0x01F494 07:F484: A5 28     LDA ram_0028
C - - - - - 0x01F496 07:F486: 90 0B     BCC bra_F493
- - - - - - 0x01F498 07:F488: 49 01     EOR #$01
- - - - - - 0x01F49A 07:F48A: 4C 93 F4  JMP loc_F493
bra_F48D:
C - - - - - 0x01F49D 07:F48D: A5 28     LDA ram_0028
C - - - - - 0x01F49F 07:F48F: B0 02     BCS bra_F493
C - - - - - 0x01F4A1 07:F491: 49 01     EOR #$01
bra_F493:
loc_F493:
C - - - - - 0x01F4A3 07:F493: 85 E7     STA ram_00E7
bra_F495_loop:
C - - - - - 0x01F4A5 07:F495: C8        INY
C - - - - - 0x01F4A6 07:F496: A5 E7     LDA ram_00E7
C - - - - - 0x01F4A8 07:F498: F0 1C     BEQ bra_F4B6
C - - - - - 0x01F4AA 07:F49A: B1 EA     LDA (ram_00EA),Y
C - - - - - 0x01F4AC 07:F49C: F0 18     BEQ bra_F4B6_00
C - - - - - 0x01F4AE 07:F49E: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x01F4B1 07:F4A1: A5 E3     LDA ram_00E3    ; spr_X
C - - - - - 0x01F4B3 07:F4A3: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x01F4B6 07:F4A6: A5 24     LDA ram_0024    ; spr_Y
C - - - - - 0x01F4B8 07:F4A8: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x01F4BB 07:F4AB: A5 E4     LDA ram_00E4    ; spr_A
C - - - - - 0x01F4BD 07:F4AD: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x01F4C0 07:F4B0: E8        INX
C - - - - - 0x01F4C1 07:F4B1: E8        INX
C - - - - - 0x01F4C2 07:F4B2: E8        INX
C - - - - - 0x01F4C3 07:F4B3: E8        INX
C - - - - - 0x01F4C4 07:F4B4: F0 24     BEQ bra_F4DA_RTS
bra_F4B6_00:
bra_F4B6:
C - - - - - 0x01F4C6 07:F4B6: C6 E2     DEC ram_00E2
C - - - - - 0x01F4C8 07:F4B8: F0 11     BEQ bra_F4CB
C - - - - - 0x01F4CA 07:F4BA: 18        CLC
C - - - - - 0x01F4CB 07:F4BB: A5 E3     LDA ram_00E3    ; spr_X
C - - - - - 0x01F4CD 07:F4BD: 69 08     ADC #$08
C - - - - - 0x01F4CF 07:F4BF: 85 E3     STA ram_00E3    ; spr_X
C - - - - - 0x01F4D1 07:F4C1: 90 D2     BCC bra_F495_loop
C - - - - - 0x01F4D3 07:F4C3: A5 E7     LDA ram_00E7
C - - - - - 0x01F4D5 07:F4C5: 49 01     EOR #$01
C - - - - - 0x01F4D7 07:F4C7: 85 E7     STA ram_00E7
C - - - - - 0x01F4D9 07:F4C9: 10 CA     BPL bra_F495_loop
bra_F4CB:
loc_F4CB:
C D 3 - - - 0x01F4DB 07:F4CB: C6 26     DEC ram_0026
C - - - - - 0x01F4DD 07:F4CD: F0 0B     BEQ bra_F4DA_RTS
C - - - - - 0x01F4DF 07:F4CF: 18        CLC
C - - - - - 0x01F4E0 07:F4D0: A5 24     LDA ram_0024    ; spr_Y
C - - - - - 0x01F4E2 07:F4D2: 69 08     ADC #$08
C - - - - - 0x01F4E4 07:F4D4: 85 24     STA ram_0024    ; spr_Y
C - - - - - 0x01F4E6 07:F4D6: C8        INY
C - - - - - 0x01F4E7 07:F4D7: 4C 67 F4  JMP loc_F467_loop
bra_F4DA_RTS:
C - - - - - 0x01F4EA 07:F4DA: 60        RTS



loc_F4DB:
loc_F4DB_loop:
C D 3 - - - 0x01F4EB 07:F4DB: E6 3F     INC ram_003F
C - - - - - 0x01F4ED 07:F4DD: 10 04     BPL bra_F4E3
C - - - - - 0x01F4EF 07:F4DF: C8        INY
C - - - - - 0x01F4F0 07:F4E0: 4C 45 F5  JMP loc_F545
bra_F4E3:
C - - - - - 0x01F4F3 07:F4E3: A5 25     LDA ram_0025
C - - - - - 0x01F4F5 07:F4E5: 85 E2     STA ram_00E2
C - - - - - 0x01F4F7 07:F4E7: B1 EA     LDA (ram_00EA),Y
C - - - - - 0x01F4F9 07:F4E9: 49 FF     EOR #$FF
C - - - - - 0x01F4FB 07:F4EB: 18        CLC
C - - - - - 0x01F4FC 07:F4EC: 69 01     ADC #$01
C - - - - - 0x01F4FE 07:F4EE: 85 E7     STA ram_00E7
C - - - - - 0x01F500 07:F4F0: 18        CLC
C - - - - - 0x01F501 07:F4F1: 65 23     ADC ram_0023
C - - - - - 0x01F503 07:F4F3: 85 E3     STA ram_00E3
C - - - - - 0x01F505 07:F4F5: A5 E7     LDA ram_00E7
C - - - - - 0x01F507 07:F4F7: 30 09     BMI bra_F502
C - - - - - 0x01F509 07:F4F9: A5 28     LDA ram_0028
C - - - - - 0x01F50B 07:F4FB: 90 0B     BCC bra_F508
- - - - - - 0x01F50D 07:F4FD: 49 01     EOR #$01
- - - - - - 0x01F50F 07:F4FF: 4C 08 F5  JMP loc_F508
bra_F502:
C - - - - - 0x01F512 07:F502: A5 28     LDA ram_0028
C - - - - - 0x01F514 07:F504: B0 02     BCS bra_F508
C - - - - - 0x01F516 07:F506: 49 01     EOR #$01
bra_F508:
loc_F508:
C - - - - - 0x01F518 07:F508: 85 E7     STA ram_00E7
C - - - - - 0x01F51A 07:F50A: 98        TYA
C - - - - - 0x01F51B 07:F50B: 38        SEC
C - - - - - 0x01F51C 07:F50C: 65 25     ADC ram_0025
C - - - - - 0x01F51E 07:F50E: A8        TAY
bra_F50F_loop:
C - - - - - 0x01F51F 07:F50F: 88        DEY
C - - - - - 0x01F520 07:F510: A5 E7     LDA ram_00E7
C - - - - - 0x01F522 07:F512: F0 1C     BEQ bra_F530
C - - - - - 0x01F524 07:F514: B1 EA     LDA (ram_00EA),Y
C - - - - - 0x01F526 07:F516: F0 18     BEQ bra_F530
C - - - - - 0x01F528 07:F518: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x01F52B 07:F51B: A5 E3     LDA ram_00E3    ; spr_X
C - - - - - 0x01F52D 07:F51D: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x01F530 07:F520: A5 24     LDA ram_0024    ; spr_Y
C - - - - - 0x01F532 07:F522: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x01F535 07:F525: A5 E4     LDA ram_00E4    ; spr_A
C - - - - - 0x01F537 07:F527: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x01F53A 07:F52A: E8        INX
C - - - - - 0x01F53B 07:F52B: E8        INX
C - - - - - 0x01F53C 07:F52C: E8        INX
C - - - - - 0x01F53D 07:F52D: E8        INX
C - - - - - 0x01F53E 07:F52E: F0 28     BEQ bra_F558_RTS
bra_F530:
C - - - - - 0x01F540 07:F530: C6 E2     DEC ram_00E2
C - - - - - 0x01F542 07:F532: F0 11     BEQ bra_F545
C - - - - - 0x01F544 07:F534: 18        CLC
C - - - - - 0x01F545 07:F535: A5 E3     LDA ram_00E3    ; spr_X
C - - - - - 0x01F547 07:F537: 69 08     ADC #$08
C - - - - - 0x01F549 07:F539: 85 E3     STA ram_00E3    ; spr_X
C - - - - - 0x01F54B 07:F53B: 90 D2     BCC bra_F50F_loop
C - - - - - 0x01F54D 07:F53D: A5 E7     LDA ram_00E7
C - - - - - 0x01F54F 07:F53F: 49 01     EOR #$01
C - - - - - 0x01F551 07:F541: 85 E7     STA ram_00E7
C - - - - - 0x01F553 07:F543: 10 CA     BPL bra_F50F_loop
bra_F545:
loc_F545:
C D 3 - - - 0x01F555 07:F545: C6 26     DEC ram_0026
C - - - - - 0x01F557 07:F547: F0 0F     BEQ bra_F558_RTS
C - - - - - 0x01F559 07:F549: 18        CLC
C - - - - - 0x01F55A 07:F54A: A5 24     LDA ram_0024    ; spr_Y
C - - - - - 0x01F55C 07:F54C: 69 08     ADC #$08
C - - - - - 0x01F55E 07:F54E: 85 24     STA ram_0024    ; spr_Y
C - - - - - 0x01F560 07:F550: 18        CLC
C - - - - - 0x01F561 07:F551: 98        TYA
C - - - - - 0x01F562 07:F552: 65 25     ADC ram_0025
C - - - - - 0x01F564 07:F554: A8        TAY
C - - - - - 0x01F565 07:F555: 4C DB F4  JMP loc_F4DB_loop
bra_F558_RTS:
C - - - - - 0x01F568 07:F558: 60        RTS



sub_F559:
C - - - - - 0x01F569 07:F559: A2 0A     LDX #$0A
bra_F55B_loop:
C - - - - - 0x01F56B 07:F55B: B5 50     LDA ram_0050_obj_flags,X
C - - - - - 0x01F56D 07:F55D: F0 4C     BEQ bra_F5AB
C - - - - - 0x01F56F 07:F55F: 18        CLC
C - - - - - 0x01F570 07:F560: B5 C5     LDA ram_00C5_obj,X
C - - - - - 0x01F572 07:F562: A8        TAY
C - - - - - 0x01F573 07:F563: 75 77     ADC ram_pos_X_lo,X
C - - - - - 0x01F575 07:F565: 95 77     STA ram_pos_X_lo,X
C - - - - - 0x01F577 07:F567: 98        TYA
C - - - - - 0x01F578 07:F568: 30 07     BMI bra_F571
C - - - - - 0x01F57A 07:F56A: 90 09     BCC bra_F575
C - - - - - 0x01F57C 07:F56C: F6 84     INC ram_pos_X_hi,X
C - - - - - 0x01F57E 07:F56E: 4C 75 F5  JMP loc_F575
bra_F571:
C - - - - - 0x01F581 07:F571: B0 02     BCS bra_F575
C - - - - - 0x01F583 07:F573: D6 84     DEC ram_pos_X_hi,X
bra_F575:
loc_F575:
C D 3 - - - 0x01F585 07:F575: 18        CLC
C - - - - - 0x01F586 07:F576: BD 68 03  LDA ram_0368_obj,X
C - - - - - 0x01F589 07:F579: 75 91     ADC ram_pos_Y_lo,X
C - - - - - 0x01F58B 07:F57B: 95 91     STA ram_pos_Y_lo,X
C - - - - - 0x01F58D 07:F57D: DE 82 03  DEC ram_0382_obj,X
C - - - - - 0x01F590 07:F580: D0 29     BNE bra_F5AB
C - - - - - 0x01F592 07:F582: BD 8F 03  LDA ram_038F_obj,X
C - - - - - 0x01F595 07:F585: 9D 82 03  STA ram_0382_obj,X
C - - - - - 0x01F598 07:F588: BD 5B 03  LDA ram_035B_obj,X
C - - - - - 0x01F59B 07:F58B: D5 C5     CMP ram_00C5_obj,X
C - - - - - 0x01F59D 07:F58D: F0 09     BEQ bra_F598
C - - - - - 0x01F59F 07:F58F: 30 05     BMI bra_F596
C - - - - - 0x01F5A1 07:F591: F6 C5     INC ram_00C5_obj,X
C - - - - - 0x01F5A3 07:F593: 4C 98 F5  JMP loc_F598
bra_F596:
C - - - - - 0x01F5A6 07:F596: D6 C5     DEC ram_00C5_obj,X
bra_F598:
loc_F598:
C D 3 - - - 0x01F5A8 07:F598: BD 75 03  LDA ram_0375_obj,X
C - - - - - 0x01F5AB 07:F59B: DD 68 03  CMP ram_0368_obj,X
C - - - - - 0x01F5AE 07:F59E: F0 0B     BEQ bra_F5AB
C - - - - - 0x01F5B0 07:F5A0: 30 06     BMI bra_F5A8
C - - - - - 0x01F5B2 07:F5A2: FE 68 03  INC ram_0368_obj,X
C - - - - - 0x01F5B5 07:F5A5: 4C AB F5  JMP loc_F5AB
bra_F5A8:
C - - - - - 0x01F5B8 07:F5A8: DE 68 03  DEC ram_0368_obj,X
bra_F5AB:
loc_F5AB:
C D 3 - - - 0x01F5BB 07:F5AB: CA        DEX
C - - - - - 0x01F5BC 07:F5AC: 10 AD     BPL bra_F55B_loop
C - - - - - 0x01F5BE 07:F5AE: 60        RTS


; bzk garbage
- - - - - - 0x01F5BF 07:F5AF: A5 10     LDA ram_for_2000
- - - - - - 0x01F5C1 07:F5B1: 29 FB     AND #$FB
- - - - - - 0x01F5C3 07:F5B3: 85 10     STA ram_for_2000
- - - - - - 0x01F5C5 07:F5B5: 8D 00 20  STA $2000
- - - - - - 0x01F5C8 07:F5B8: AD 02 20  LDA $2002
- - - - - - 0x01F5CB 07:F5BB: A9 3F     LDA #> $3F10
- - - - - - 0x01F5CD 07:F5BD: 8D 06 20  STA $2006
- - - - - - 0x01F5D0 07:F5C0: A9 10     LDA #< $3F10
- - - - - - 0x01F5D2 07:F5C2: 8D 06 20  STA $2006
- - - - - - 0x01F5D5 07:F5C5: A0 00     LDY #$00
bra_F5C7_loop:
- - - - - - 0x01F5D7 07:F5C7: B9 87 06  LDA ram_0687,Y
- - - - - - 0x01F5DA 07:F5CA: 8D 07 20  STA $2007
- - - - - - 0x01F5DD 07:F5CD: C8        INY
- - - - - - 0x01F5DE 07:F5CE: C0 10     CPY #$10
- - - - - - 0x01F5E0 07:F5D0: D0 F5     BNE bra_F5C7_loop
- - - - - - 0x01F5E2 07:F5D2: 60        RTS



sub_F5D3:
C - - - - - 0x01F5E3 07:F5D3: A5 10     LDA ram_for_2000
C - - - - - 0x01F5E5 07:F5D5: 29 FB     AND #$FB
C - - - - - 0x01F5E7 07:F5D7: 85 10     STA ram_for_2000
C - - - - - 0x01F5E9 07:F5D9: 8D 00 20  STA $2000
C - - - - - 0x01F5EC 07:F5DC: AD 02 20  LDA $2002
C - - - - - 0x01F5EF 07:F5DF: A9 3F     LDA #> $3F00
C - - - - - 0x01F5F1 07:F5E1: 8D 06 20  STA $2006
C - - - - - 0x01F5F4 07:F5E4: A9 00     LDA #< $3F00
C - - - - - 0x01F5F6 07:F5E6: 8D 06 20  STA $2006
; bzk optimize, useless read
C - - - - - 0x01F5F9 07:F5E9: A6 1A     LDX ram_001A
C - - - - - 0x01F5FB 07:F5EB: A2 00     LDX #$00
C - - - - - 0x01F5FD 07:F5ED: A0 10     LDY #$10
bra_F5EF_loop:
C - - - - - 0x01F5FF 07:F5EF: BD 65 06  LDA ram_0665,X
C - - - - - 0x01F602 07:F5F2: 8D 07 20  STA $2007
C - - - - - 0x01F605 07:F5F5: E8        INX
C - - - - - 0x01F606 07:F5F6: 88        DEY
C - - - - - 0x01F607 07:F5F7: D0 F6     BNE bra_F5EF_loop
C - - - - - 0x01F609 07:F5F9: A0 00     LDY #$00
bra_F5FB_loop:
C - - - - - 0x01F60B 07:F5FB: B9 87 06  LDA ram_0687,Y
C - - - - - 0x01F60E 07:F5FE: 8D 07 20  STA $2007
C - - - - - 0x01F611 07:F601: C8        INY
C - - - - - 0x01F612 07:F602: C0 10     CPY #$10
C - - - - - 0x01F614 07:F604: D0 F5     BNE bra_F5FB_loop
C - - - - - 0x01F616 07:F606: 60        RTS



sub_F607:
C - - - - - 0x01F617 07:F607: A5 10     LDA ram_for_2000
C - - - - - 0x01F619 07:F609: 29 FB     AND #$FB
C - - - - - 0x01F61B 07:F60B: 85 10     STA ram_for_2000
C - - - - - 0x01F61D 07:F60D: 8D 00 20  STA $2000
C - - - - - 0x01F620 07:F610: AD 02 20  LDA $2002
C - - - - - 0x01F623 07:F613: A9 3F     LDA #> $3F00
C - - - - - 0x01F625 07:F615: 8D 06 20  STA $2006
C - - - - - 0x01F628 07:F618: A9 00     LDA #< $3F00
C - - - - - 0x01F62A 07:F61A: 8D 06 20  STA $2006
C - - - - - 0x01F62D 07:F61D: A0 20     LDY #$20
C - - - - - 0x01F62F 07:F61F: A9 0F     LDA #$0F
bra_F621_loop:
C - - - - - 0x01F631 07:F621: 8D 07 20  STA $2007
C - - - - - 0x01F634 07:F624: E8        INX
C - - - - - 0x01F635 07:F625: 88        DEY
C - - - - - 0x01F636 07:F626: D0 F9     BNE bra_F621_loop
C - - - - - 0x01F638 07:F628: 60        RTS



sub_F629_garbage_loop:
C - - - - - 0x01F639 07:F629: A0 05     LDY #> $0599
C - - - - - 0x01F63B 07:F62B: A2 99     LDX #< $0599
bra_F62D_garbage_loop:
C - - - - - 0x01F63D 07:F62D: CA        DEX
C - - - - - 0x01F63E 07:F62E: D0 FD     BNE bra_F62D_garbage_loop
C - - - - - 0x01F640 07:F630: 88        DEY
C - - - - - 0x01F641 07:F631: D0 FA     BNE bra_F62D_garbage_loop
C - - - - - 0x01F643 07:F633: 60        RTS



sub_F634:
C - - - - - 0x01F644 07:F634: AD 02 20  LDA $2002
C - - - - - 0x01F647 07:F637: A9 05     LDA #< tbl_FA05
C - - - - - 0x01F649 07:F639: 85 0E     STA ram_000E
C - - - - - 0x01F64B 07:F63B: A9 FA     LDA #> tbl_FA05
C - - - - - 0x01F64D 07:F63D: 85 0F     STA ram_000F
C - - - - - 0x01F64F 07:F63F: A5 10     LDA ram_for_2000
C - - - - - 0x01F651 07:F641: 29 FB     AND #$FB
C - - - - - 0x01F653 07:F643: 85 10     STA ram_for_2000
C - - - - - 0x01F655 07:F645: 8D 00 20  STA $2000
C - - - - - 0x01F658 07:F648: A9 20     LDA #> $2000
C - - - - - 0x01F65A 07:F64A: 8D 06 20  STA $2006
C - - - - - 0x01F65D 07:F64D: A9 00     LDA #< $2000
C - - - - - 0x01F65F 07:F64F: 8D 06 20  STA $2006
C - - - - - 0x01F662 07:F652: A0 00     LDY #$00
bra_F654_loop:
C - - - - - 0x01F664 07:F654: B1 0E     LDA (ram_000E),Y
C - - - - - 0x01F666 07:F656: 8D 07 20  STA $2007
C - - - - - 0x01F669 07:F659: C8        INY
C - - - - - 0x01F66A 07:F65A: D0 F8     BNE bra_F654_loop
C - - - - - 0x01F66C 07:F65C: A5 03     LDA ram_mission
C - - - - - 0x01F66E 07:F65E: 0A        ASL
C - - - - - 0x01F66F 07:F65F: 0A        ASL
C - - - - - 0x01F670 07:F660: 0A        ASL
C - - - - - 0x01F671 07:F661: 0A        ASL
C - - - - - 0x01F672 07:F662: AA        TAX
C - - - - - 0x01F673 07:F663: A9 23     LDA #> $23C0
C - - - - - 0x01F675 07:F665: 8D 06 20  STA $2006
C - - - - - 0x01F678 07:F668: A9 C0     LDA #< $23C0
C - - - - - 0x01F67A 07:F66A: 8D 06 20  STA $2006
C - - - - - 0x01F67D 07:F66D: A0 00     LDY #$00
bra_F66F_loop:
C - - - - - 0x01F67F 07:F66F: BD 05 FB  LDA tbl_FB05,X
C - - - - - 0x01F682 07:F672: 8D 07 20  STA $2007
C - - - - - 0x01F685 07:F675: E8        INX
C - - - - - 0x01F686 07:F676: C8        INY
C - - - - - 0x01F687 07:F677: C0 10     CPY #$10
C - - - - - 0x01F689 07:F679: D0 F4     BNE bra_F66F_loop
C - - - - - 0x01F68B 07:F67B: 60        RTS



sub_F67C:
C - - - - - 0x01F68C 07:F67C: A4 1B     LDY ram_001B
C - - - - - 0x01F68E 07:F67E: B9 00 80  LDA $8000,Y
C - - - - - 0x01F691 07:F681: 85 0E     STA ram_000E
C - - - - - 0x01F693 07:F683: 85 E2     STA ram_00E2
C - - - - - 0x01F695 07:F685: B9 03 80  LDA $8003,Y
C - - - - - 0x01F698 07:F688: 85 0F     STA ram_000F
C - - - - - 0x01F69A 07:F68A: 85 E3     STA ram_00E3
C - - - - - 0x01F69C 07:F68C: AD 02 20  LDA $2002
C - - - - - 0x01F69F 07:F68F: A5 10     LDA ram_for_2000
C - - - - - 0x01F6A1 07:F691: 29 FB     AND #$FB
C - - - - - 0x01F6A3 07:F693: 85 10     STA ram_for_2000
C - - - - - 0x01F6A5 07:F695: 8D 00 20  STA $2000
C - - - - - 0x01F6A8 07:F698: A9 21     LDA #> $2100
C - - - - - 0x01F6AA 07:F69A: 8D 06 20  STA $2006
C - - - - - 0x01F6AD 07:F69D: A9 00     LDA #< $2100
C - - - - - 0x01F6AF 07:F69F: 8D 06 20  STA $2006
C - - - - - 0x01F6B2 07:F6A2: A0 00     LDY #$00
bra_F6A4_loop:
C - - - - - 0x01F6B4 07:F6A4: B1 0E     LDA (ram_000E),Y
C - - - - - 0x01F6B6 07:F6A6: 8D 07 20  STA $2007
C - - - - - 0x01F6B9 07:F6A9: C8        INY
C - - - - - 0x01F6BA 07:F6AA: D0 F8     BNE bra_F6A4_loop
C - - - - - 0x01F6BC 07:F6AC: E6 0F     INC ram_000F
bra_F6AE_loop:
C - - - - - 0x01F6BE 07:F6AE: B1 0E     LDA (ram_000E),Y
C - - - - - 0x01F6C0 07:F6B0: 8D 07 20  STA $2007
C - - - - - 0x01F6C3 07:F6B3: C8        INY
C - - - - - 0x01F6C4 07:F6B4: D0 F8     BNE bra_F6AE_loop
C - - - - - 0x01F6C6 07:F6B6: E6 0F     INC ram_000F
bra_F6B8_loop:
C - - - - - 0x01F6C8 07:F6B8: B1 0E     LDA (ram_000E),Y
C - - - - - 0x01F6CA 07:F6BA: 8D 07 20  STA $2007
C - - - - - 0x01F6CD 07:F6BD: C8        INY
C - - - - - 0x01F6CE 07:F6BE: C0 A0     CPY #$A0
C - - - - - 0x01F6D0 07:F6C0: D0 F6     BNE bra_F6B8_loop
C - - - - - 0x01F6D2 07:F6C2: 18        CLC
C - - - - - 0x01F6D3 07:F6C3: A5 E2     LDA ram_00E2
C - - - - - 0x01F6D5 07:F6C5: 69 A0     ADC #< $02A0
C - - - - - 0x01F6D7 07:F6C7: 85 0E     STA ram_000E
C - - - - - 0x01F6D9 07:F6C9: A5 E3     LDA ram_00E3
C - - - - - 0x01F6DB 07:F6CB: 69 02     ADC #> $02A0
C - - - - - 0x01F6DD 07:F6CD: 85 0F     STA ram_000F
C - - - - - 0x01F6DF 07:F6CF: A9 23     LDA #> $23D0
C - - - - - 0x01F6E1 07:F6D1: 8D 06 20  STA $2006
C - - - - - 0x01F6E4 07:F6D4: A9 D0     LDA #< $23D0
C - - - - - 0x01F6E6 07:F6D6: 8D 06 20  STA $2006
C - - - - - 0x01F6E9 07:F6D9: A0 00     LDY #$00
bra_F6DB_loop:
C - - - - - 0x01F6EB 07:F6DB: B1 0E     LDA (ram_000E),Y
C - - - - - 0x01F6ED 07:F6DD: 8D 07 20  STA $2007
C - - - - - 0x01F6F0 07:F6E0: C8        INY
C - - - - - 0x01F6F1 07:F6E1: C0 30     CPY #$30
C - - - - - 0x01F6F3 07:F6E3: D0 F6     BNE bra_F6DB_loop
C - - - - - 0x01F6F5 07:F6E5: 18        CLC
C - - - - - 0x01F6F6 07:F6E6: A5 E2     LDA ram_00E2
C - - - - - 0x01F6F8 07:F6E8: 69 D0     ADC #< $02D0
C - - - - - 0x01F6FA 07:F6EA: 85 0E     STA ram_000E
C - - - - - 0x01F6FC 07:F6EC: 85 E2     STA ram_00E2
C - - - - - 0x01F6FE 07:F6EE: A5 E3     LDA ram_00E3
C - - - - - 0x01F700 07:F6F0: 69 02     ADC #> $02D0
C - - - - - 0x01F702 07:F6F2: 85 0F     STA ram_000F
C - - - - - 0x01F704 07:F6F4: 85 E3     STA ram_00E3
C - - - - - 0x01F706 07:F6F6: AD 02 20  LDA $2002
C - - - - - 0x01F709 07:F6F9: A5 10     LDA ram_for_2000
C - - - - - 0x01F70B 07:F6FB: 29 FB     AND #$FB
C - - - - - 0x01F70D 07:F6FD: 85 10     STA ram_for_2000
C - - - - - 0x01F70F 07:F6FF: 8D 00 20  STA $2000
C - - - - - 0x01F712 07:F702: A9 25     LDA #> $2500
C - - - - - 0x01F714 07:F704: 8D 06 20  STA $2006
C - - - - - 0x01F717 07:F707: A9 00     LDA #< $2500
C - - - - - 0x01F719 07:F709: 8D 06 20  STA $2006
C - - - - - 0x01F71C 07:F70C: A0 00     LDY #$00
bra_F70E_loop:
C - - - - - 0x01F71E 07:F70E: B1 0E     LDA (ram_000E),Y
C - - - - - 0x01F720 07:F710: 8D 07 20  STA $2007
C - - - - - 0x01F723 07:F713: C8        INY
C - - - - - 0x01F724 07:F714: D0 F8     BNE bra_F70E_loop
C - - - - - 0x01F726 07:F716: E6 0F     INC ram_000F
bra_F718_loop:
C - - - - - 0x01F728 07:F718: B1 0E     LDA (ram_000E),Y
C - - - - - 0x01F72A 07:F71A: 8D 07 20  STA $2007
C - - - - - 0x01F72D 07:F71D: C8        INY
C - - - - - 0x01F72E 07:F71E: D0 F8     BNE bra_F718_loop
C - - - - - 0x01F730 07:F720: E6 0F     INC ram_000F
bra_F722_loop:
C - - - - - 0x01F732 07:F722: B1 0E     LDA (ram_000E),Y
C - - - - - 0x01F734 07:F724: 8D 07 20  STA $2007
C - - - - - 0x01F737 07:F727: C8        INY
C - - - - - 0x01F738 07:F728: C0 A0     CPY #$A0
C - - - - - 0x01F73A 07:F72A: D0 F6     BNE bra_F722_loop
C - - - - - 0x01F73C 07:F72C: 18        CLC
C - - - - - 0x01F73D 07:F72D: A5 E2     LDA ram_00E2
C - - - - - 0x01F73F 07:F72F: 69 A0     ADC #< $02A0
C - - - - - 0x01F741 07:F731: 85 0E     STA ram_000E
C - - - - - 0x01F743 07:F733: A5 E3     LDA ram_00E3
C - - - - - 0x01F745 07:F735: 69 02     ADC #> $02A0
C - - - - - 0x01F747 07:F737: 85 0F     STA ram_000F
C - - - - - 0x01F749 07:F739: A9 27     LDA #> $27D0
C - - - - - 0x01F74B 07:F73B: 8D 06 20  STA $2006
C - - - - - 0x01F74E 07:F73E: A9 D0     LDA #< $27D0
C - - - - - 0x01F750 07:F740: 8D 06 20  STA $2006
C - - - - - 0x01F753 07:F743: A0 00     LDY #$00
bra_F745_loop:
C - - - - - 0x01F755 07:F745: B1 0E     LDA (ram_000E),Y
C - - - - - 0x01F757 07:F747: 8D 07 20  STA $2007
C - - - - - 0x01F75A 07:F74A: C8        INY
C - - - - - 0x01F75B 07:F74B: C0 30     CPY #$30
C - - - - - 0x01F75D 07:F74D: D0 F6     BNE bra_F745_loop
C - - - - - 0x01F75F 07:F74F: 60        RTS



sub_F750:
C - - - - - 0x01F760 07:F750: A5 10     LDA ram_for_2000
C - - - - - 0x01F762 07:F752: 29 FB     AND #$FB
C - - - - - 0x01F764 07:F754: 85 10     STA ram_for_2000
C - - - - - 0x01F766 07:F756: 8D 00 20  STA $2000
C - - - - - 0x01F769 07:F759: A9 20     LDA #> $2000
C - - - - - 0x01F76B 07:F75B: 8D 06 20  STA $2006
C - - - - - 0x01F76E 07:F75E: A9 00     LDA #< $2000
C - - - - - 0x01F770 07:F760: 8D 06 20  STA $2006
C - - - - - 0x01F773 07:F763: A2 00     LDX #$00
C - - - - - 0x01F775 07:F765: A0 00     LDY #$00
C - - - - - 0x01F777 07:F767: A9 00     LDA #$00
bra_F769_loop:
C - - - - - 0x01F779 07:F769: 8D 07 20  STA $2007
C - - - - - 0x01F77C 07:F76C: CA        DEX
C - - - - - 0x01F77D 07:F76D: D0 FA     BNE bra_F769_loop
C - - - - - 0x01F77F 07:F76F: C8        INY
C - - - - - 0x01F780 07:F770: C0 08     CPY #$08
C - - - - - 0x01F782 07:F772: D0 F5     BNE bra_F769_loop
C - - - - - 0x01F784 07:F774: 60        RTS



sub_F775_hide_all_sprites:
C - - - - - 0x01F785 07:F775: A9 F8     LDA #$F8
C - - - - - 0x01F787 07:F777: A0 00     LDY #$00
bra_F779_infinite_loop:
C - - - - - 0x01F789 07:F779: 99 00 02  STA ram_oam,Y
C - - - - - 0x01F78C 07:F77C: D0 FB     BNE bra_F779_infinite_loop
C - - - - - 0x01F78E 07:F77E: 60        RTS



sub_F77F_play_sound:
C - - - - - 0x01F78F 07:F77F: A5 47     LDA ram_sound
C - - - - - 0x01F791 07:F781: F0 0D     BEQ bra_F790    ; if con_sound_00
C - - - - - 0x01F793 07:F783: AD A7 06  LDA ram_option_music
C - - - - - 0x01F796 07:F786: F0 44     BEQ bra_F7CC_RTS    ; if music OFF
; if music ON
C - - - - - 0x01F798 07:F788: 4C 90 F7  JMP loc_F790



sub_F78B_play_sound_if_allowed:
C - - - - - 0x01F79B 07:F78B: AD A8 06  LDA ram_option_sound
C - - - - - 0x01F79E 07:F78E: F0 3C     BEQ bra_F7CC_RTS    ; if sound OFF
; if sound ON
bra_F790:
loc_F790:
C D 3 - - - 0x01F7A0 07:F790: A5 47     LDA ram_sound
C - - - - - 0x01F7A2 07:F792: 30 38     BMI bra_F7CC_RTS    ; if con_sound_FF
C - - - - - 0x01F7A4 07:F794: A0 06     LDY #con_prg_bank + $06
C - - - - - 0x01F7A6 07:F796: 20 54 F9  JSR sub_F954_prg_bankswitch
C - - - - - 0x01F7A9 07:F799: A9 00     LDA #$00
C - - - - - 0x01F7AB 07:F79B: 85 EB     STA ram_00EB
; * 08
C - - - - - 0x01F7AD 07:F79D: A5 47     LDA ram_sound
C - - - - - 0x01F7AF 07:F79F: 0A        ASL
C - - - - - 0x01F7B0 07:F7A0: 26 EB     ROL ram_00EB
C - - - - - 0x01F7B2 07:F7A2: 0A        ASL
C - - - - - 0x01F7B3 07:F7A3: 26 EB     ROL ram_00EB
C - - - - - 0x01F7B5 07:F7A5: 0A        ASL
C - - - - - 0x01F7B6 07:F7A6: 26 EB     ROL ram_00EB
C - - - - - 0x01F7B8 07:F7A8: 18        CLC
C - - - - - 0x01F7B9 07:F7A9: 69 CD     ADC #< tbl_F7CD
C - - - - - 0x01F7BB 07:F7AB: 85 EA     STA ram_00EA
C - - - - - 0x01F7BD 07:F7AD: A5 EB     LDA ram_00EB
C - - - - - 0x01F7BF 07:F7AF: 69 F7     ADC #> tbl_F7CD
C - - - - - 0x01F7C1 07:F7B1: 85 EB     STA ram_00EB
C - - - - - 0x01F7C3 07:F7B3: A0 00     LDY #$00
bra_F7B5_loop:
C - - - - - 0x01F7C5 07:F7B5: 8C 7A 06  STY ram_067A
C - - - - - 0x01F7C8 07:F7B8: B1 EA     LDA (ram_00EA),Y
C - - - - - 0x01F7CA 07:F7BA: 30 10     BMI bra_F7CC_RTS
C - - - - - 0x01F7CC 07:F7BC: AA        TAX
C - - - - - 0x01F7CD 07:F7BD: C8        INY
C - - - - - 0x01F7CE 07:F7BE: B1 EA     LDA (ram_00EA),Y
C - - - - - 0x01F7D0 07:F7C0: 20 00 80  JSR sub_0x018010
C - - - - - 0x01F7D3 07:F7C3: AC 7A 06  LDY ram_067A
C - - - - - 0x01F7D6 07:F7C6: C8        INY
C - - - - - 0x01F7D7 07:F7C7: C8        INY
C - - - - - 0x01F7D8 07:F7C8: C0 08     CPY #$08
C - - - - - 0x01F7DA 07:F7CA: D0 E9     BNE bra_F7B5_loop
bra_F7CC_RTS:
C - - - - - 0x01F7DC 07:F7CC: 60        RTS



tbl_F7CD:
; 00 
- D 3 - I - 0x01F7DD 07:F7CD: 00        .byte $00, $00   ; 
- D 3 - I - 0x01F7DF 07:F7CF: 01        .byte $01, $00   ; 
- D 3 - I - 0x01F7E1 07:F7D1: 02        .byte $02, $00   ; 
- D 3 - I - 0x01F7E3 07:F7D3: 03        .byte $03, $00   ; 
; 01 
- D 3 - I - 0x01F7E5 07:F7D5: 00        .byte $00, $01   ; 
- D 3 - I - 0x01F7E7 07:F7D7: 03        .byte $03, $02   ; 
- D 3 - I - 0x01F7E9 07:F7D9: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F7EB 07:F7DB: FF        .byte $FF, $FF   ; 
; 02 
- D 3 - I - 0x01F7ED 07:F7DD: 03        .byte $03, $03   ; 
- D 3 - I - 0x01F7EF 07:F7DF: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F7F1 07:F7E1: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F7F3 07:F7E3: FF        .byte $FF, $FF   ; 
; 03 
- D 3 - I - 0x01F7F5 07:F7E5: 03        .byte $03, $04   ; 
- D 3 - I - 0x01F7F7 07:F7E7: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F7F9 07:F7E9: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F7FB 07:F7EB: FF        .byte $FF, $FF   ; 
; 04 
- D 3 - I - 0x01F7FD 07:F7ED: 02        .byte $02, $05   ; 
- D 3 - I - 0x01F7FF 07:F7EF: 03        .byte $03, $06   ; 
- D 3 - I - 0x01F801 07:F7F1: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F803 07:F7F3: FF        .byte $FF, $FF   ; 
; 05 
- D 3 - I - 0x01F805 07:F7F5: 02        .byte $02, $07   ; 
- D 3 - I - 0x01F807 07:F7F7: 03        .byte $03, $08   ; 
- D 3 - I - 0x01F809 07:F7F9: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F80B 07:F7FB: FF        .byte $FF, $FF   ; 
; 06 
- D 3 - I - 0x01F80D 07:F7FD: 02        .byte $02, $09   ; 
- D 3 - I - 0x01F80F 07:F7FF: 03        .byte $03, $0A   ; 
- D 3 - I - 0x01F811 07:F801: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F813 07:F803: FF        .byte $FF, $FF   ; 
; 07 
- D 3 - I - 0x01F815 07:F805: 02        .byte $02, $0B   ; 
- D 3 - I - 0x01F817 07:F807: 03        .byte $03, $0C   ; 
- D 3 - I - 0x01F819 07:F809: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F81B 07:F80B: FF        .byte $FF, $FF   ; 
; 08 
- D 3 - I - 0x01F81D 07:F80D: 00        .byte $00, $0D   ; 
- D 3 - I - 0x01F81F 07:F80F: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F821 07:F811: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F823 07:F813: FF        .byte $FF, $FF   ; 
; 09 
- D 3 - I - 0x01F825 07:F815: 00        .byte $00, $0F   ; 
- D 3 - I - 0x01F827 07:F817: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F829 07:F819: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F82B 07:F81B: FF        .byte $FF, $FF   ; 
; 0A 
- D 3 - I - 0x01F82D 07:F81D: 03        .byte $03, $11   ; 
- D 3 - I - 0x01F82F 07:F81F: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F831 07:F821: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F833 07:F823: FF        .byte $FF, $FF   ; 
; 0B 
- D 3 - I - 0x01F835 07:F825: 02        .byte $02, $13   ; 
- D 3 - I - 0x01F837 07:F827: 03        .byte $03, $14   ; 
- D 3 - I - 0x01F839 07:F829: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F83B 07:F82B: FF        .byte $FF, $FF   ; 
; 0C 
- D 3 - I - 0x01F83D 07:F82D: 00        .byte $00, $12   ; 
- D 3 - I - 0x01F83F 07:F82F: 02        .byte $02, $13   ; 
- D 3 - I - 0x01F841 07:F831: 03        .byte $03, $14   ; 
- D 3 - I - 0x01F843 07:F833: FF        .byte $FF, $FF   ; 
; 0D 
- D 3 - I - 0x01F845 07:F835: 03        .byte $03, $3B   ; 
- D 3 - I - 0x01F847 07:F837: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F849 07:F839: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F84B 07:F83B: FF        .byte $FF, $FF   ; 
; 0E 
- D 3 - I - 0x01F84D 07:F83D: 03        .byte $03, $00   ; 
- D 3 - I - 0x01F84F 07:F83F: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F851 07:F841: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F853 07:F843: FF        .byte $FF, $FF   ; 
; 0F 
- D 3 - I - 0x01F855 07:F845: 00        .byte $00, $26   ; 
- D 3 - I - 0x01F857 07:F847: 03        .byte $03, $27   ; 
- D 3 - I - 0x01F859 07:F849: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F85B 07:F84B: FF        .byte $FF, $FF   ; 
; 10 
- D 3 - I - 0x01F85D 07:F84D: 00        .byte $00, $28   ; 
- D 3 - I - 0x01F85F 07:F84F: 03        .byte $03, $29   ; 
- D 3 - I - 0x01F861 07:F851: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F863 07:F853: FF        .byte $FF, $FF   ; 
; 11 
- D 3 - I - 0x01F865 07:F855: 03        .byte $03, $2A   ; 
- D 3 - I - 0x01F867 07:F857: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F869 07:F859: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F86B 07:F85B: FF        .byte $FF, $FF   ; 
; 12 
- - - - - - 0x01F86D 07:F85D: 00        .byte $00, $2B   ; 
- - - - - - 0x01F86F 07:F85F: 02        .byte $02, $2C   ; 
- - - - - - 0x01F871 07:F861: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F873 07:F863: FF        .byte $FF, $FF   ; 
; 13 
- D 3 - I - 0x01F875 07:F865: 00        .byte $00, $30   ; 
- D 3 - I - 0x01F877 07:F867: 02        .byte $02, $32   ; 
- D 3 - I - 0x01F879 07:F869: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F87B 07:F86B: FF        .byte $FF, $FF   ; 
; 14 
- D 3 - I - 0x01F87D 07:F86D: 00        .byte $00, $2D   ; 
- D 3 - I - 0x01F87F 07:F86F: 02        .byte $02, $31   ; 
- D 3 - I - 0x01F881 07:F871: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F883 07:F873: FF        .byte $FF, $FF   ; 
; 15 
- D 3 - I - 0x01F885 07:F875: 00        .byte $00, $2D   ; 
- D 3 - I - 0x01F887 07:F877: 02        .byte $02, $32   ; 
- D 3 - I - 0x01F889 07:F879: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F88B 07:F87B: FF        .byte $FF, $FF   ; 
; 16 
- D 3 - I - 0x01F88D 07:F87D: 00        .byte $00, $2D   ; 
- D 3 - I - 0x01F88F 07:F87F: 02        .byte $02, $33   ; 
- D 3 - I - 0x01F891 07:F881: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F893 07:F883: FF        .byte $FF, $FF   ; 
; 17 
- D 3 - I - 0x01F895 07:F885: 00        .byte $00, $2E   ; 
- D 3 - I - 0x01F897 07:F887: 02        .byte $02, $31   ; 
- D 3 - I - 0x01F899 07:F889: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F89B 07:F88B: FF        .byte $FF, $FF   ; 
; 18 
- D 3 - I - 0x01F89D 07:F88D: 00        .byte $00, $2E   ; 
- D 3 - I - 0x01F89F 07:F88F: 02        .byte $02, $32   ; 
- D 3 - I - 0x01F8A1 07:F891: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F8A3 07:F893: FF        .byte $FF, $FF   ; 
; 19 
- D 3 - I - 0x01F8A5 07:F895: 00        .byte $00, $2E   ; 
- D 3 - I - 0x01F8A7 07:F897: 02        .byte $02, $33   ; 
- D 3 - I - 0x01F8A9 07:F899: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F8AB 07:F89B: FF        .byte $FF, $FF   ; 
; 1A 
- D 3 - I - 0x01F8AD 07:F89D: 00        .byte $00, $2F   ; 
- D 3 - I - 0x01F8AF 07:F89F: 02        .byte $02, $31   ; 
- D 3 - I - 0x01F8B1 07:F8A1: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F8B3 07:F8A3: FF        .byte $FF, $FF   ; 
; 1B 
- D 3 - I - 0x01F8B5 07:F8A5: 00        .byte $00, $2F   ; 
- D 3 - I - 0x01F8B7 07:F8A7: 02        .byte $02, $32   ; 
- D 3 - I - 0x01F8B9 07:F8A9: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F8BB 07:F8AB: FF        .byte $FF, $FF   ; 
; 1C 
- D 3 - I - 0x01F8BD 07:F8AD: 00        .byte $00, $2F   ; 
- D 3 - I - 0x01F8BF 07:F8AF: 02        .byte $02, $33   ; 
- D 3 - I - 0x01F8C1 07:F8B1: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F8C3 07:F8B3: FF        .byte $FF, $FF   ; 
; 1D 
- D 3 - I - 0x01F8C5 07:F8B5: 00        .byte $00, $15   ; 
- D 3 - I - 0x01F8C7 07:F8B7: 01        .byte $01, $16   ; 
- D 3 - I - 0x01F8C9 07:F8B9: 02        .byte $02, $17   ; 
- D 3 - I - 0x01F8CB 07:F8BB: 03        .byte $03, $18   ; 
; 1E 
- D 3 - I - 0x01F8CD 07:F8BD: 00        .byte $00, $1A   ; 
- D 3 - I - 0x01F8CF 07:F8BF: 01        .byte $01, $1B   ; 
- D 3 - I - 0x01F8D1 07:F8C1: 02        .byte $02, $1C   ; 
- D 3 - I - 0x01F8D3 07:F8C3: 03        .byte $03, $1D   ; 
; 1F 
- D 3 - I - 0x01F8D5 07:F8C5: 00        .byte $00, $1E   ; 
- D 3 - I - 0x01F8D7 07:F8C7: 01        .byte $01, $1F   ; 
- D 3 - I - 0x01F8D9 07:F8C9: 02        .byte $02, $20   ; 
- D 3 - I - 0x01F8DB 07:F8CB: 03        .byte $03, $21   ; 
; 20 
- D 3 - I - 0x01F8DD 07:F8CD: 00        .byte $00, $22   ; 
- D 3 - I - 0x01F8DF 07:F8CF: 01        .byte $01, $23   ; 
- D 3 - I - 0x01F8E1 07:F8D1: 02        .byte $02, $24   ; 
- D 3 - I - 0x01F8E3 07:F8D3: 03        .byte $03, $25   ; 
; 21 
- D 3 - I - 0x01F8E5 07:F8D5: 00        .byte $00, $2B   ; 
- D 3 - I - 0x01F8E7 07:F8D7: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F8E9 07:F8D9: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F8EB 07:F8DB: FF        .byte $FF, $FF   ; 
; 22 
- D 3 - I - 0x01F8ED 07:F8DD: 01        .byte $01, $19   ; 
- D 3 - I - 0x01F8EF 07:F8DF: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F8F1 07:F8E1: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F8F3 07:F8E3: FF        .byte $FF, $FF   ; 
; 23 
- D 3 - I - 0x01F8F5 07:F8E5: 01        .byte $01, $37   ; 
- D 3 - I - 0x01F8F7 07:F8E7: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F8F9 07:F8E9: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F8FB 07:F8EB: FF        .byte $FF, $FF   ; 
; 24 
- D 3 - I - 0x01F8FD 07:F8ED: 01        .byte $01, $38   ; 
- D 3 - I - 0x01F8FF 07:F8EF: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F901 07:F8F1: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F903 07:F8F3: FF        .byte $FF, $FF   ; 
; 25 
- D 3 - I - 0x01F905 07:F8F5: 01        .byte $01, $39   ; 
- D 3 - I - 0x01F907 07:F8F7: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F909 07:F8F9: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F90B 07:F8FB: FF        .byte $FF, $FF   ; 
; 26 
- D 3 - I - 0x01F90D 07:F8FD: 01        .byte $01, $3A   ; 
- D 3 - I - 0x01F90F 07:F8FF: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F911 07:F901: FF        .byte $FF, $FF   ; 
- - - - - - 0x01F913 07:F903: FF        .byte $FF, $FF   ; 



sub_F905:
C - - - - - 0x01F915 07:F905: A2 00     LDX #$00
C - - - - - 0x01F917 07:F907: 20 03 80  JSR sub_0x018013
C - - - - - 0x01F91A 07:F90A: A2 01     LDX #$01
C - - - - - 0x01F91C 07:F90C: 20 03 80  JSR sub_0x018013
C - - - - - 0x01F91F 07:F90F: A2 02     LDX #$02
C - - - - - 0x01F921 07:F911: 20 03 80  JSR sub_0x018013
C - - - - - 0x01F924 07:F914: A2 03     LDX #$03
C - - - - - 0x01F926 07:F916: 20 03 80  JSR sub_0x018013
C - - - - - 0x01F929 07:F919: A6 03     LDX ram_mission
C - - - - - 0x01F92B 07:F91B: BC 39 FC  LDY tbl_FC39_prg_bank_for_mission,X
C - - - - - 0x01F92E 07:F91E: 20 54 F9  JSR sub_F954_prg_bankswitch
C - - - - - 0x01F931 07:F921: 60        RTS



sub_F922_chr_bg_bankswitch:
; background chr banks
C - - - - - 0x01F932 07:F922: A0 80     LDY #$80
C - - - - - 0x01F934 07:F924: 8C FF BF  STY $BFFF
C - - - - - 0x01F937 07:F927: 8D FF BF  STA $BFFF
C - - - - - 0x01F93A 07:F92A: 4A        LSR
C - - - - - 0x01F93B 07:F92B: 8D FF BF  STA $BFFF
C - - - - - 0x01F93E 07:F92E: 4A        LSR
C - - - - - 0x01F93F 07:F92F: 8D FF BF  STA $BFFF
C - - - - - 0x01F942 07:F932: 4A        LSR
C - - - - - 0x01F943 07:F933: 8D FF BF  STA $BFFF
C - - - - - 0x01F946 07:F936: 4A        LSR
C - - - - - 0x01F947 07:F937: 8D FF BF  STA $BFFF
C - - - - - 0x01F94A 07:F93A: 60        RTS



sub_F93B_chr_spr_bankswitch:
; sprite chr banks
C - - - - - 0x01F94B 07:F93B: A0 80     LDY #$80
C - - - - - 0x01F94D 07:F93D: 8C FF DF  STY $DFFF
C - - - - - 0x01F950 07:F940: 8D FF DF  STA $DFFF
C - - - - - 0x01F953 07:F943: 4A        LSR
C - - - - - 0x01F954 07:F944: 8D FF DF  STA $DFFF
C - - - - - 0x01F957 07:F947: 4A        LSR
C - - - - - 0x01F958 07:F948: 8D FF DF  STA $DFFF
C - - - - - 0x01F95B 07:F94B: 4A        LSR
C - - - - - 0x01F95C 07:F94C: 8D FF DF  STA $DFFF
C - - - - - 0x01F95F 07:F94F: 4A        LSR
C - - - - - 0x01F960 07:F950: 8D FF DF  STA $DFFF
C - - - - - 0x01F963 07:F953: 60        RTS



sub_F954_prg_bankswitch:
C - - - - - 0x01F964 07:F954: A9 80     LDA #$80
C - - - - - 0x01F966 07:F956: 8D FF FF  STA $FFFF
C - - - - - 0x01F969 07:F959: 98        TYA
C - - - - - 0x01F96A 07:F95A: 8D FF FF  STA $FFFF
C - - - - - 0x01F96D 07:F95D: 4A        LSR
C - - - - - 0x01F96E 07:F95E: 8D FF FF  STA $FFFF
C - - - - - 0x01F971 07:F961: 4A        LSR
C - - - - - 0x01F972 07:F962: 8D FF FF  STA $FFFF
C - - - - - 0x01F975 07:F965: 4A        LSR
C - - - - - 0x01F976 07:F966: 8D FF FF  STA $FFFF
C - - - - - 0x01F979 07:F969: 4A        LSR
C - - - - - 0x01F97A 07:F96A: 8D FF FF  STA $FFFF
C - - - - - 0x01F97D 07:F96D: 60        RTS



tbl_F96E:
- D 3 - - - 0x01F97E 07:F96E: 41        .byte $41   ; 00 
- D 3 - - - 0x01F97F 07:F96F: 42        .byte $42   ; 01 
- D 3 - - - 0x01F980 07:F970: 43        .byte $43   ; 02 
- D 3 - - - 0x01F981 07:F971: 44        .byte $44   ; 03 
- D 3 - - - 0x01F982 07:F972: 45        .byte $45   ; 04 
- D 3 - - - 0x01F983 07:F973: 46        .byte $46   ; 05 
- D 3 - - - 0x01F984 07:F974: 47        .byte $47   ; 06 
- D 3 - - - 0x01F985 07:F975: 48        .byte $48   ; 07 
- D 3 - - - 0x01F986 07:F976: 49        .byte $49   ; 08 
- D 3 - - - 0x01F987 07:F977: 4A        .byte $4A   ; 09 



tbl_F978:
- D 3 - - - 0x01F988 07:F978: 4B        .byte $4B   ; 00 
- D 3 - - - 0x01F989 07:F979: 4C        .byte $4C   ; 01 
- D 3 - - - 0x01F98A 07:F97A: 4D        .byte $4D   ; 02 
- D 3 - - - 0x01F98B 07:F97B: 4E        .byte $4E   ; 03 
- D 3 - - - 0x01F98C 07:F97C: 4C        .byte $4C   ; 04 
- D 3 - - - 0x01F98D 07:F97D: 4B        .byte $4B   ; 05 
- D 3 - - - 0x01F98E 07:F97E: 4B        .byte $4B   ; 06 
- D 3 - - - 0x01F98F 07:F97F: 4F        .byte $4F   ; 07 
- D 3 - - - 0x01F990 07:F980: 4B        .byte $4B   ; 08 
- D 3 - - - 0x01F991 07:F981: 50        .byte $50   ; 09 



tbl_F982:
; 00 fire
- D 3 - - - 0x01F992 07:F982: 51        .byte $51, $52, $53, $54, $55, $56, $57, $00, $58, $59, $5A, $5B, $5C, $5D, $5E, $00, $F5, $F5   ; 00 fire
- D 3 - - - 0x01F9A4 07:F994: 53        .byte $53, $54, $5F, $60, $61, $62, $63, $00, $5A, $5B, $00, $64, $65, $66, $67, $00, $F5, $F5   ; 01 rapid
- D 3 - - - 0x01F9B6 07:F9A6: 68        .byte $68, $69, $6A, $6B, $6C, $6D, $6E, $00, $6F, $70, $71, $72, $73, $74, $75, $00, $F5, $F5   ; 02 3-way
; 03 missile
- D 3 - - - 0x01F9C8 07:F9B8: 76        .byte $76, $77, $78, $79, $7A, $7B, $7C, $00, $00, $00, $7D, $7E, $7F, $80, $81, $00, $F5, $F5   ; 00 missile
- D 3 - - - 0x01F9DA 07:F9CA: 82        .byte $82, $83, $84, $85, $86, $0B, $87, $00, $00, $88, $89, $8A, $8B, $8C, $8D, $00, $F5, $F5   ; 01 homing
- D 3 - - - 0x01F9EC 07:F9DC: 8E        .byte $8E, $8F, $90, $91, $92, $93, $94, $00, $95, $96, $97, $98, $99, $9A, $9B, $00, $F5, $F5   ; 02 bang



tbl_F9EE:
- D 3 - - - 0x01F9FE 07:F9EE: 9C        .byte $9C   ; 00 
- D 3 - - - 0x01F9FF 07:F9EF: 9D        .byte $9D   ; 01 
- D 3 - - - 0x01FA00 07:F9F0: 9E        .byte $9E   ; 02 
- D 3 - - - 0x01FA01 07:F9F1: 9F        .byte $9F   ; 03 
- D 3 - - - 0x01FA02 07:F9F2: A0        .byte $A0   ; 04 
- D 3 - - - 0x01FA03 07:F9F3: A1        .byte $A1   ; 05 
- D 3 - - - 0x01FA04 07:F9F4: A2        .byte $A2   ; 06 
- D 3 - - - 0x01FA05 07:F9F5: 00        .byte $00   ; 07 



tbl_F9F6:
- D 3 - - - 0x01FA06 07:F9F6: A3        .byte $A3   ; 00 
- D 3 - - - 0x01FA07 07:F9F7: A4        .byte $A4   ; 01 
- D 3 - - - 0x01FA08 07:F9F8: A5        .byte $A5   ; 02 
- D 3 - - - 0x01FA09 07:F9F9: A6        .byte $A6   ; 03 
- D 3 - - - 0x01FA0A 07:F9FA: A7        .byte $A7   ; 04 
- D 3 - - - 0x01FA0B 07:F9FB: A8        .byte $A8   ; 05 
- D 3 - - - 0x01FA0C 07:F9FC: A9        .byte $A9   ; 06 
- D 3 - - - 0x01FA0D 07:F9FD: 00        .byte $00   ; 07 



tbl_F9FE:
- D 3 - - - 0x01FA0E 07:F9FE: AA        .byte $AA   ; 00 
- D 3 - - - 0x01FA0F 07:F9FF: AB        .byte $AB   ; 01 
- D 3 - - - 0x01FA10 07:FA00: AC        .byte $AC   ; 02 
- D 3 - - - 0x01FA11 07:FA01: AD        .byte $AD   ; 03 
- D 3 - - - 0x01FA12 07:FA02: AE        .byte $AE   ; 04 


; bzk garbage
- - - - - - 0x01FA13 07:FA03: 36        .byte $36   ; 
- - - - - - 0x01FA14 07:FA04: 36        .byte $36   ; 



tbl_FA05:
- D 3 - I - 0x01FA15 07:FA05: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 3 - I - 0x01FA25 07:FA15: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 3 - I - 0x01FA35 07:FA25: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 3 - I - 0x01FA45 07:FA35: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 3 - I - 0x01FA55 07:FA45: 00        .byte $00, $41, $41, $41, $41, $41, $41, $41, $AF, $B0, $B1, $B2, $B3, $B4, $B5, $B6   ; 
- D 3 - I - 0x01FA65 07:FA55: B7        .byte $B7, $B8, $B9, $BA, $BB, $BC, $BD, $BE, $68, $69, $6A, $6B, $6C, $6D, $6E, $00   ; 
- D 3 - I - 0x01FA75 07:FA65: 00        .byte $00, $4B, $4B, $4B, $4B, $4B, $4B, $4B, $BF, $C0, $C1, $C2, $C3, $C4, $C5, $C6   ; 
- D 3 - I - 0x01FA85 07:FA75: C7        .byte $C7, $C8, $C9, $CA, $CB, $CC, $CD, $CE, $6F, $70, $71, $72, $73, $74, $75, $00   ; 
- D 3 - I - 0x01FA95 07:FA85: 00        .byte $00, $CF, $D0, $D1, $D2, $D3, $D4, $AE, $D5, $D6, $D7, $D8, $D9, $DA, $DB, $DC   ; 
- D 3 - I - 0x01FAA5 07:FA95: DD        .byte $DD, $DE, $DF, $E0, $E1, $E2, $E3, $E4, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 3 - I - 0x01FAB5 07:FAA5: 00        .byte $00, $00, $00, $E5, $E5, $E5, $00, $00, $E6, $E7, $E8, $E9, $EA, $EB, $EC, $ED   ; 
- D 3 - I - 0x01FAC5 07:FAB5: EE        .byte $EE, $EF, $F0, $F1, $F2, $F3, $F4, $F5, $AA, $AB, $AC, $AD, $AE, $36, $36, $00   ; 
- D 3 - I - 0x01FAD5 07:FAC5: 00        .byte $00, $27, $29, $0B, $0C, $0B, $1E, $0C, $18, $1B, $17, $10, $0B, $18, $10, $1E   ; 
- D 3 - I - 0x01FAE5 07:FAD5: 1E        .byte $1E, $0C, $12, $10, $2A, $28, $00, $2B, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 3 - I - 0x01FAF5 07:FAE5: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 3 - I - 0x01FB05 07:FAF5: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



tbl_FB05:
- D 3 - - - 0x01FB15 07:FB05: AF        .byte $AF, $AF, $3F, $0F, $CF, $FF, $EF, $FF, $A5, $A5, $A3, $A8, $A2, $AC, $A5, $A5   ; 00 mission 1
- D 3 - - - 0x01FB25 07:FB15: 0F        .byte $0F, $0F, $3F, $0F, $CF, $FF, $EF, $FF, $A5, $A5, $A3, $A8, $A2, $AC, $A5, $A5   ; 01 mission 2
- D 3 - - - 0x01FB35 07:FB25: AF        .byte $AF, $AF, $3F, $0F, $CF, $FF, $EF, $FF, $A5, $A5, $A3, $A8, $A2, $AC, $A5, $A5   ; 02 mission 3
- D 3 - - - 0x01FB45 07:FB35: AF        .byte $AF, $AF, $3F, $0F, $CF, $FF, $EF, $FF, $A5, $A5, $A3, $A8, $A2, $AC, $A5, $A5   ; 03 mission 4
- D 3 - - - 0x01FB55 07:FB45: AF        .byte $AF, $AF, $3F, $0F, $CF, $FF, $EF, $FF, $A5, $A5, $A3, $A8, $A2, $AC, $A5, $A5   ; 04 mission 5



tbl_FB55:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 3 - - - 0x01FB65 07:FB55: 3A        .byte $3A, $44, $30, $54, $48, $3E, $4C, $34, $54, $50, $5A, $69, $6D, $71, $77, $83   ; 00 
- D 3 - - - 0x01FB75 07:FB65: 65        .byte $65, $67, $65, $67, $7D, $88, $12, $B7, $B1, $AD, $12, $00, $00, $00, $00, $00   ; 10 
- - - - - - 0x01FB85 07:FB75: 00        .byte $00, $AC, $01, $02, $59, $01, $02, $01, $00                                      ; 20 



tbl_FB7E:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 3 - - - 0x01FB8E 07:FB7E: 01        .byte $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01   ; 00 
- D 3 - - - 0x01FB9E 07:FB8E: 01        .byte $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00   ; 10 
- - - - - - 0x01FBAE 07:FB9E: 00        .byte $00, $01, $01, $01, $01, $01, $01, $01, $21                                      ; 20 



tbl_FBA7:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 3 - - - 0x01FBB7 07:FBA7: 03        .byte $03, $02, $01, $03, $02, $02, $03, $01, $01, $01, $01, $01, $02, $01, $01, $01   ; 00 
- D 3 - - - 0x01FBC7 07:FBB7: 01        .byte $01, $01, $01, $01, $01, $03, $02, $01, $01, $02, $02, $00, $00, $00, $00, $00   ; 10 
- - - - - - 0x01FBD7 07:FBC7: 00        .byte $00, $03, $00, $00, $02, $00, $03, $03, $00                                      ; 20 




tbl_FBD0:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 3 - - - 0x01FBE0 07:FBD0: 63        .byte $63, $63, $63, $63, $63, $63, $63, $63, $63, $63, $63, $63, $63, $63, $63, $63   ; 00 
- D 3 - - - 0x01FBF0 07:FBE0: 63        .byte $63, $63, $63, $63, $63, $63, $01, $63, $63, $63, $01, $63, $63, $63, $63, $63   ; 10 
- - - - - - 0x01FC00 07:FBF0: 63        .byte $63, $63, $63, $63, $63, $63, $63, $63, $63                                      ; 20 



tbl_FBF9:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 3 - - - 0x01FC09 07:FBF9: 07        .byte $07, $05, $0A, $0A, $07, $07, $05, $0A, $0A, $07, $64, $0A, $0A, $0A, $0A, $0A   ; 00 
- D 3 - - - 0x01FC19 07:FC09: 0A        .byte $0A, $0A, $0A, $0A, $0A, $C8, $05, $0A, $0A, $0A, $05, $00, $00, $00, $00, $00   ; 10 
- - - - - - 0x01FC29 07:FC19: 00        .byte $00, $00, $00, $00, $00, $14, $14, $14, $00                                      ; 20 




tbl_FC22:
; 00 
- D 3 - - - 0x01FC32 07:FC22: 1E        .byte $1E   ; 00 
- D 3 - - - 0x01FC33 07:FC23: 32        .byte $32   ; 01 
- D 3 - - - 0x01FC34 07:FC24: 3C        .byte $3C   ; 02 
- D 3 - - - 0x01FC35 07:FC25: 32        .byte $32   ; 03 
- D 3 - - - 0x01FC36 07:FC26: 64        .byte $64   ; 04 
- - - - - - 0x01FC37 07:FC27: C8        .byte $C8   ; 05 
- - - - - - 0x01FC38 07:FC28: 00        .byte $00   ; 06 
- - - - - - 0x01FC39 07:FC29: 00        .byte $00   ; 07 
; 00 
- D 3 - - - 0x01FC3A 07:FC2A: 03        .byte $03   ; 00 
- D 3 - - - 0x01FC3B 07:FC2B: 03        .byte $03   ; 01 
- D 3 - - - 0x01FC3C 07:FC2C: 03        .byte $03   ; 02 
- - - - - - 0x01FC3D 07:FC2D: 0F        .byte $0F   ; 03 
- D 3 - - - 0x01FC3E 07:FC2E: 0F        .byte $0F   ; 04 
- - - - - - 0x01FC3F 07:FC2F: 32        .byte $32   ; 05 
- - - - - - 0x01FC40 07:FC30: 00        .byte $00   ; 06 
- - - - - - 0x01FC41 07:FC31: 00        .byte $00   ; 07 



tbl_FC32:
- D 3 - - - 0x01FC42 07:FC32: 01        .byte $01   ; 00 
- D 3 - - - 0x01FC43 07:FC33: 02        .byte $02   ; 01 
- D 3 - - - 0x01FC44 07:FC34: 03        .byte $03   ; 02 
- D 3 - - - 0x01FC45 07:FC35: 0A        .byte $0A   ; 03 



tbl_FC36:
- D 3 - - - 0x01FC46 07:FC36: 02        .byte $02   ; 00 index for arms
- D 3 - - - 0x01FC47 07:FC37: 00        .byte $00   ; 01 index for head
- D 3 - - - 0x01FC48 07:FC38: 01        .byte $01   ; 02 index for body
; bzk bug, table reads 0x01FC49 as 03 index



tbl_FC39_prg_bank_for_mission:
- D 3 - - - 0x01FC49 07:FC39: 00        .byte con_prg_bank + $00   ; 00 mission 1
- D 3 - - - 0x01FC4A 07:FC3A: 01        .byte con_prg_bank + $01   ; 01 mission 2
- D 3 - - - 0x01FC4B 07:FC3B: 02        .byte con_prg_bank + $02   ; 02 mission 3
- D 3 - - - 0x01FC4C 07:FC3C: 03        .byte con_prg_bank + $03   ; 03 mission 4
- D 3 - - - 0x01FC4D 07:FC3D: 04        .byte con_prg_bank + $04   ; 04 mission 5
; bzk bug, table reads 0x01FC4E as 05 index at 0x01D212 and 0x01F92B



tbl_FC3E:
- D 3 - - - 0x01FC4E 07:FC3E: 09        .byte $09   ; 00 
- D 3 - - - 0x01FC4F 07:FC3F: 05        .byte $05   ; 01 
- D 3 - - - 0x01FC50 07:FC40: 0E        .byte $0E   ; 02 
- D 3 - - - 0x01FC51 07:FC41: 05        .byte $05   ; 03 
- - - - - - 0x01FC52 07:FC42: 05        .byte $05   ; 04 



tbl_FC43:
- D 3 - - - 0x01FC53 07:FC43: 00        .byte $00, $05   ; 00 mission 1
- D 3 - - - 0x01FC55 07:FC45: 00        .byte $00, $00   ; 01 mission 2
- D 3 - - - 0x01FC57 07:FC47: 03        .byte $03, $08   ; 02 mission 3
- D 3 - - - 0x01FC59 07:FC49: 00        .byte $00, $00   ; 03 mission 4
- - - - - - 0x01FC5B 07:FC4B: 00        .byte $00, $00   ; 04 mission 5



tbl_FC4D:
; 00 
- D 3 - - - 0x01FC5D 07:FC4D: 0F        .byte $0F, $18, $1B, $2B   ; 
- D 3 - - - 0x01FC61 07:FC51: 0F        .byte $0F, $06, $16, $26   ; 
- D 3 - - - 0x01FC65 07:FC55: 0F        .byte $0F, $18, $28, $38   ; 
- D 3 - - - 0x01FC69 07:FC59: 0F        .byte $0F, $12, $22, $32   ; 
; 01 
- D 3 - - - 0x01FC6D 07:FC5D: 0F        .byte $0F, $0C, $1C, $2C   ; 
- D 3 - - - 0x01FC71 07:FC61: 0F        .byte $0F, $06, $16, $26   ; 
- D 3 - - - 0x01FC75 07:FC65: 0F        .byte $0F, $18, $28, $38   ; 
- D 3 - - - 0x01FC79 07:FC69: 0F        .byte $0F, $12, $22, $32   ; 
; 02 
- D 3 - - - 0x01FC7D 07:FC6D: 0F        .byte $0F, $22, $18, $29   ; 
- D 3 - - - 0x01FC81 07:FC71: 0F        .byte $0F, $18, $29, $39   ; 
- D 3 - - - 0x01FC85 07:FC75: 0F        .byte $0F, $18, $28, $38   ; 
- D 3 - - - 0x01FC89 07:FC79: 0F        .byte $0F, $12, $22, $32   ; 


; bzk garbage
- - - - - - 0x01FC8D 07:FC7D: 00        .byte $00   ; 
- - - - - - 0x01FC8E 07:FC7E: 01        .byte $01   ; 
- - - - - - 0x01FC8F 07:FC7F: 01        .byte $01   ; 
- - - - - - 0x01FC90 07:FC80: 00        .byte $00   ; 
- - - - - - 0x01FC91 07:FC81: 00        .byte $00   ; 
- - - - - - 0x01FC92 07:FC82: 00        .byte $00   ; 


; ???
tbl_FC83:
- D 3 - - - 0x01FC93 07:FC83: 00        .byte $00   ; 
- D 3 - - - 0x01FC94 07:FC84: 00        .byte $00   ; 
- D 3 - - - 0x01FC95 07:FC85: 02        .byte $02   ; 
- D 3 - - - 0x01FC96 07:FC86: 00        .byte $00   ; 
- D 3 - - - 0x01FC97 07:FC87: 00        .byte $00   ; 
- D 3 - - - 0x01FC98 07:FC88: 07        .byte $07   ; 
- D 3 - - - 0x01FC99 07:FC89: 24        .byte $24   ; 
- D 3 - - - 0x01FC9A 07:FC8A: 08        .byte $08   ; 
- D 3 - - - 0x01FC9B 07:FC8B: 01        .byte $01   ; 
- D 3 - - - 0x01FC9C 07:FC8C: 12        .byte $12   ; 
- D 3 - - - 0x01FC9D 07:FC8D: 12        .byte $12   ; 
- D 3 - - - 0x01FC9E 07:FC8E: 09        .byte $09   ; 
- D 3 - - - 0x01FC9F 07:FC8F: 13        .byte $13   ; 
- D 3 - - - 0x01FCA0 07:FC90: 0F        .byte $0F   ; 
- D 3 - - - 0x01FCA1 07:FC91: 0E        .byte $0E   ; 
- D 3 - - - 0x01FCA2 07:FC92: 00        .byte $00   ; 
- D 3 - - - 0x01FCA3 07:FC93: 00        .byte $00   ; 
- D 3 - - - 0x01FCA4 07:FC94: 01        .byte $01   ; 
- D 3 - - - 0x01FCA5 07:FC95: 00        .byte $00   ; 
- D 3 - - - 0x01FCA6 07:FC96: 00        .byte $00   ; 
- D 3 - - - 0x01FCA7 07:FC97: 13        .byte $13   ; 
- D 3 - - - 0x01FCA8 07:FC98: 24        .byte $24   ; 
- D 3 - - - 0x01FCA9 07:FC99: 0E        .byte $0E   ; 
- D 3 - - - 0x01FCAA 07:FC9A: 09        .byte $09   ; 
- D 3 - - - 0x01FCAB 07:FC9B: 03        .byte $03   ; 
- D 3 - - - 0x01FCAC 07:FC9C: 0F        .byte $0F   ; 
- D 3 - - - 0x01FCAD 07:FC9D: 0C        .byte $0C   ; 
- D 3 - - - 0x01FCAE 07:FC9E: 00        .byte $00   ; 
- D 3 - - - 0x01FCAF 07:FC9F: 00        .byte $00   ; 
- D 3 - - - 0x01FCB0 07:FCA0: 00        .byte $00   ; 
- D 3 - - - 0x01FCB1 07:FCA1: 00        .byte $00   ; 
- D 3 - - - 0x01FCB2 07:FCA2: 00        .byte $00   ; 
- D 3 - - - 0x01FCB3 07:FCA3: 00        .byte $00   ; 
- D 3 - - - 0x01FCB4 07:FCA4: 08        .byte $08   ; 
- D 3 - - - 0x01FCB5 07:FCA5: 00        .byte $00   ; 
- D 3 - - - 0x01FCB6 07:FCA6: 13        .byte $13   ; 
- D 3 - - - 0x01FCB7 07:FCA7: 24        .byte $24   ; 
- D 3 - - - 0x01FCB8 07:FCA8: 03        .byte $03   ; 
- D 3 - - - 0x01FCB9 07:FCA9: 12        .byte $12   ; 
- D 3 - - - 0x01FCBA 07:FCAA: 0F        .byte $0F   ; 
- D 3 - - - 0x01FCBB 07:FCAB: 17        .byte $17   ; 
- D 3 - - - 0x01FCBC 07:FCAC: 00        .byte $00   ; 
- D 3 - - - 0x01FCBD 07:FCAD: 00        .byte $00   ; 
- D 3 - - - 0x01FCBE 07:FCAE: 00        .byte $00   ; 
- D 3 - - - 0x01FCBF 07:FCAF: 00        .byte $00   ; 
- D 3 - - - 0x01FCC0 07:FCB0: 00        .byte $00   ; 
- D 3 - - - 0x01FCC1 07:FCB1: 00        .byte $00   ; 
- D 3 - - - 0x01FCC2 07:FCB2: 00        .byte $00   ; 
- D 3 - - - 0x01FCC3 07:FCB3: 06        .byte $06   ; 
- D 3 - - - 0x01FCC4 07:FCB4: 00        .byte $00   ; 
- D 3 - - - 0x01FCC5 07:FCB5: 0A        .byte $0A   ; 
- D 3 - - - 0x01FCC6 07:FCB6: 24        .byte $24   ; 
- D 3 - - - 0x01FCC7 07:FCB7: 02        .byte $02   ; 
- D 3 - - - 0x01FCC8 07:FCB8: 0F        .byte $0F   ; 
- D 3 - - - 0x01FCC9 07:FCB9: 0E        .byte $0E   ; 
- D 3 - - - 0x01FCCA 07:FCBA: 01        .byte $01   ; 
- D 3 - - - 0x01FCCB 07:FCBB: 12        .byte $12   ; 
- D 3 - - - 0x01FCCC 07:FCBC: 00        .byte $00   ; 
- D 3 - - - 0x01FCCD 07:FCBD: 00        .byte $00   ; 
- D 3 - - - 0x01FCCE 07:FCBE: 00        .byte $00   ; 
- D 3 - - - 0x01FCCF 07:FCBF: 00        .byte $00   ; 
- D 3 - - - 0x01FCD0 07:FCC0: 00        .byte $00   ; 
- D 3 - - - 0x01FCD1 07:FCC1: 00        .byte $00   ; 
- D 3 - - - 0x01FCD2 07:FCC2: 04        .byte $04   ; 
- D 3 - - - 0x01FCD3 07:FCC3: 00        .byte $00   ; 
- D 3 - - - 0x01FCD4 07:FCC4: 0A        .byte $0A   ; 
- D 3 - - - 0x01FCD5 07:FCC5: 24        .byte $24   ; 
- D 3 - - - 0x01FCD6 07:FCC6: 14        .byte $14   ; 
- D 3 - - - 0x01FCD7 07:FCC7: 05        .byte $05   ; 
- D 3 - - - 0x01FCD8 07:FCC8: 0C        .byte $0C   ; 
- D 3 - - - 0x01FCD9 07:FCC9: 00        .byte $00   ; 
- D 3 - - - 0x01FCDA 07:FCCA: 00        .byte $00   ; 
- D 3 - - - 0x01FCDB 07:FCCB: 00        .byte $00   ; 
- D 3 - - - 0x01FCDC 07:FCCC: 00        .byte $00   ; 
- D 3 - - - 0x01FCDD 07:FCCD: 00        .byte $00   ; 
- D 3 - - - 0x01FCDE 07:FCCE: 00        .byte $00   ; 
- D 3 - - - 0x01FCDF 07:FCCF: 00        .byte $00   ; 
- D 3 - - - 0x01FCE0 07:FCD0: 00        .byte $00   ; 
- D 3 - - - 0x01FCE1 07:FCD1: 01        .byte $01   ; 
- D 3 - - - 0x01FCE2 07:FCD2: 00        .byte $00   ; 
- D 3 - - - 0x01FCE3 07:FCD3: 08        .byte $08   ; 
- D 3 - - - 0x01FCE4 07:FCD4: 24        .byte $24   ; 
- D 3 - - - 0x01FCE5 07:FCD5: 02        .byte $02   ; 
- D 3 - - - 0x01FCE6 07:FCD6: 09        .byte $09   ; 
- D 3 - - - 0x01FCE7 07:FCD7: 0E        .byte $0E   ; 
- D 3 - - - 0x01FCE8 07:FCD8: 0E        .byte $0E   ; 
- D 3 - - - 0x01FCE9 07:FCD9: 13        .byte $13   ; 
- D 3 - - - 0x01FCEA 07:FCDA: 00        .byte $00   ; 
- D 3 - - - 0x01FCEB 07:FCDB: 00        .byte $00   ; 
- D 3 - - - 0x01FCEC 07:FCDC: 00        .byte $00   ; 


; bzk garbage
- - - - - - 0x01FCED 07:FCDD: 00        .byte $00, $00, $00   ; 
- - - - - - 0x01FCF0 07:FCE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FD00 07:FCF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FD10 07:FD00: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FD20 07:FD10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FD30 07:FD20: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FD40 07:FD30: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FD50 07:FD40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FD60 07:FD50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FD70 07:FD60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FD80 07:FD70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FD90 07:FD80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FDA0 07:FD90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FDB0 07:FDA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FDC0 07:FDB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FDD0 07:FDC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FDE0 07:FDD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FDF0 07:FDE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FE00 07:FDF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FE10 07:FE00: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FE20 07:FE10: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FE30 07:FE20: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FE40 07:FE30: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FE50 07:FE40: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FE60 07:FE50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FE70 07:FE60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FE80 07:FE70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FE90 07:FE80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FEA0 07:FE90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FEB0 07:FEA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FEC0 07:FEB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FED0 07:FEC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FEE0 07:FED0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FEF0 07:FEE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FF00 07:FEF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



vec_FF00_RESET:
.export vec_0x01FF10_RESET
vec_0x01FF10_RESET:
C - - - - - 0x01FF10 07:FF00: 78        SEI
C - - - - - 0x01FF11 07:FF01: D8        CLD
C - - - - - 0x01FF12 07:FF02: A9 EF     LDA #$EF
C - - - - - 0x01FF14 07:FF04: 8D 00 80  STA $8000
C - - - - - 0x01FF17 07:FF07: EE 00 80  INC $8000
C - - - - - 0x01FF1A 07:FF0A: A2 00     LDX #$00
C - - - - - 0x01FF1C 07:FF0C: 8E 00 20  STX $2000
C - - - - - 0x01FF1F 07:FF0F: 8E 01 20  STX $2001
C - - - - - 0x01FF22 07:FF12: 8E 02 20  STX $2002
C - - - - - 0x01FF25 07:FF15: 8E 03 20  STX $2003
C - - - - - 0x01FF28 07:FF18: 8E 04 20  STX $2004
C - - - - - 0x01FF2B 07:FF1B: 8E 14 40  STX $4014
C - - - - - 0x01FF2E 07:FF1E: CA        DEX
C - - - - - 0x01FF2F 07:FF1F: 9A        TXS
bra_FF20_infinite_loop:
C - - - - - 0x01FF30 07:FF20: 2C 02 20  BIT $2002
C - - - - - 0x01FF33 07:FF23: 10 FB     BPL bra_FF20_infinite_loop
bra_FF25_infinite_loop:
C - - - - - 0x01FF35 07:FF25: 2C 02 20  BIT $2002
C - - - - - 0x01FF38 07:FF28: 30 FB     BMI bra_FF25_infinite_loop
bra_FF2A_infinite_loop:
C - - - - - 0x01FF3A 07:FF2A: 2C 02 20  BIT $2002
C - - - - - 0x01FF3D 07:FF2D: 10 FB     BPL bra_FF2A_infinite_loop
bra_FF2F_infinite_loop:
C - - - - - 0x01FF3F 07:FF2F: 2C 02 20  BIT $2002
C - - - - - 0x01FF42 07:FF32: 30 FB     BMI bra_FF2F_infinite_loop
C - - - - - 0x01FF44 07:FF34: A9 80     LDA #$80
C - - - - - 0x01FF46 07:FF36: 8D 00 A0  STA $A000
C - - - - - 0x01FF49 07:FF39: 8D 00 C0  STA $C000
C - - - - - 0x01FF4C 07:FF3C: 8D 00 E0  STA $E000
C - - - - - 0x01FF4F 07:FF3F: A9 80     LDA #$80
C - - - - - 0x01FF51 07:FF41: 8D 00 80  STA $8000
C - - - - - 0x01FF54 07:FF44: A9 1E     LDA #$1E
C - - - - - 0x01FF56 07:FF46: 8D 00 80  STA $8000
C - - - - - 0x01FF59 07:FF49: 4A        LSR
C - - - - - 0x01FF5A 07:FF4A: 8D 00 80  STA $8000
C - - - - - 0x01FF5D 07:FF4D: 4A        LSR
C - - - - - 0x01FF5E 07:FF4E: 8D 00 80  STA $8000
C - - - - - 0x01FF61 07:FF51: 4A        LSR
C - - - - - 0x01FF62 07:FF52: 8D 00 80  STA $8000
C - - - - - 0x01FF65 07:FF55: 4A        LSR
C - - - - - 0x01FF66 07:FF56: 8D 00 80  STA $8000
C - - - - - 0x01FF69 07:FF59: A9 80     LDA #$80
C - - - - - 0x01FF6B 07:FF5B: 8D 00 E0  STA $E000
C - - - - - 0x01FF6E 07:FF5E: A9 07     LDA #$07
C - - - - - 0x01FF70 07:FF60: 8D 00 E0  STA $E000
C - - - - - 0x01FF73 07:FF63: 4A        LSR
C - - - - - 0x01FF74 07:FF64: 8D 00 E0  STA $E000
C - - - - - 0x01FF77 07:FF67: 4A        LSR
C - - - - - 0x01FF78 07:FF68: 8D 00 E0  STA $E000
C - - - - - 0x01FF7B 07:FF6B: 4A        LSR
C - - - - - 0x01FF7C 07:FF6C: 8D 00 E0  STA $E000
C - - - - - 0x01FF7F 07:FF6F: 4A        LSR
C - - - - - 0x01FF80 07:FF70: 8D 00 E0  STA $E000
C - - - - - 0x01FF83 07:FF73: A9 80     LDA #$80
C - - - - - 0x01FF85 07:FF75: 8D 00 80  STA $8000
C - - - - - 0x01FF88 07:FF78: A9 1A     LDA #$1A
C - - - - - 0x01FF8A 07:FF7A: 8D 00 80  STA $8000
C - - - - - 0x01FF8D 07:FF7D: 4A        LSR
C - - - - - 0x01FF8E 07:FF7E: 8D 00 80  STA $8000
C - - - - - 0x01FF91 07:FF81: 4A        LSR
C - - - - - 0x01FF92 07:FF82: 8D 00 80  STA $8000
C - - - - - 0x01FF95 07:FF85: 4A        LSR
C - - - - - 0x01FF96 07:FF86: 8D 00 80  STA $8000
C - - - - - 0x01FF99 07:FF89: 4A        LSR
C - - - - - 0x01FF9A 07:FF8A: 8D 00 80  STA $8000
C - - - - - 0x01FF9D 07:FF8D: A9 80     LDA #$80
C - - - - - 0x01FF9F 07:FF8F: 8D 00 E0  STA $E000
C - - - - - 0x01FFA2 07:FF92: A9 02     LDA #$02
C - - - - - 0x01FFA4 07:FF94: 8D 00 E0  STA $E000
C - - - - - 0x01FFA7 07:FF97: 4A        LSR
C - - - - - 0x01FFA8 07:FF98: 8D 00 E0  STA $E000
C - - - - - 0x01FFAB 07:FF9B: 4A        LSR
C - - - - - 0x01FFAC 07:FF9C: 8D 00 E0  STA $E000
C - - - - - 0x01FFAF 07:FF9F: 4A        LSR
C - - - - - 0x01FFB0 07:FFA0: 8D 00 E0  STA $E000
C - - - - - 0x01FFB3 07:FFA3: 4A        LSR
C - - - - - 0x01FFB4 07:FFA4: 8D 00 E0  STA $E000
C - - - - - 0x01FFB7 07:FFA7: 4C 00 C0  JMP loc_C000


; bzk garbage
- - - - - - 0x01FFBA 07:FFAA: 48        PHA
- - - - - - 0x01FFBB 07:FFAB: AD 02 20  LDA $2002
- - - - - - 0x01FFBE 07:FFAE: 68        PLA
- - - - - - 0x01FFBF 07:FFAF: 40        RTI


; bzk garbage
- - - - - - 0x01FFC0 07:FFB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FFD0 07:FFC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FFE0 07:FFD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x01FFF0 07:FFE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x020000 07:FFF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



.out .sprintf("Free bytes in bank FF: 0x%04X [%d]", ($FFFA - *), ($FFFA - *))



.segment "VECTORS_FF"
- D 3 - - - 0x02000A 07:FFFA: 66 C4     .word vec_C466_NMI
- D 3 - - - 0x02000C 07:FFFC: 00 FF     .word vec_FF00_RESET
- - - - - - 0x02000E 07:FFFE: 64 C4     .word vec_C464_IRQ



