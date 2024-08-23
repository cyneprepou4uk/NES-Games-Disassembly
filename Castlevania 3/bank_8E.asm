.segment "BANK_8E"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x01C010-0x02000F
; code starts at 0x01F4BE



.export _off044_0x01C011_05
.export _off047_0x01C397_0D_03_00
.export _off047_0x01C428_0D_02_02
.export _off045_0x01C459_05
.export _off046_0x01C9B9_05
.export _off044_0x01CA0F_06
.export _off045_0x01CD94_06
.export _off046_0x01D1B4_06
.export _off044_0x01D1F6_07
.export _off031_0x01D6B3_05
.export _off031_0x01D7A5_04
.export _off031_0x01D7D5_03
.export _off045_0x01D805_07
.export _off046_0x01DE05_07
.export _off044_0x01DE65_08
.export _off045_0x01E435_08
.export _off046_0x01EA35_08
.export _off044_0x01EA95_0B
.export _off045_0x01EE71_0B
.export _off046_0x01F441_0B
.export tbl_0x01F49E_4x4_blocks_indexes
.export sub_0x01F4BE
.export sub_0x01F54F
.export sub_0x01F602_check_stairs_if_pressed_down
.export sub_0x01F606_check_stairs_if_pressed_up
.export _off014_0x01F874_00
.export _off014_0x01F881_01
.export _off014_0x01F888_02



; bzk bank id, must be located at 8000 in each bank
- - - - - - 0x01C010 07:8000: 8E        .byte con_prg_bank + $8E   ; 



_off044_0x01C011_05:
- D 0 - I - 0x01C011 07:8001: 09 80     .word off_8009_05_00
- D 0 - I - 0x01C013 07:8003: 0C 80     .word off_800C_05_01
- D 0 - I - 0x01C015 07:8005: 0F 80     .word off_800F_05_02
- D 0 - I - 0x01C017 07:8007: 18 80     .word off_8018_05_03



off_8009_05_00:
- - - - - - 0x01C019 07:8009: 00        .byte $00   ; 
- D 0 - I - 0x01C01A 07:800A: 21 80     .word _off047_8021_05_00_00



off_800C_05_01:
- D 0 - I - 0x01C01C 07:800C: 00        .byte $00   ; 
- D 0 - I - 0x01C01D 07:800D: 82 80     .word _off047_8082_05_01_00



off_800F_05_02:
- D 0 - I - 0x01C01F 07:800F: 01        .byte $01   ; 
- D 0 - I - 0x01C020 07:8010: 04 82     .word _off047_8204_05_02_00
- D 0 - I - 0x01C022 07:8012: 43 81     .word _off047_8143_05_02_01
- - - - - - 0x01C024 07:8014: E0        .byte $E0   ; 
- D 0 - I - 0x01C025 07:8015: 01        .byte $01   ; 
- D 0 - I - 0x01C026 07:8016: FF        .byte $FF   ; 
- - - - - - 0x01C027 07:8017: E0        .byte $E0   ; 



off_8018_05_03:
- D 0 - I - 0x01C028 07:8018: 01        .byte $01   ; 
- D 0 - I - 0x01C029 07:8019: 26 83     .word _off047_8326_05_03_00
- D 0 - I - 0x01C02B 07:801B: 65 82     .word _off047_8265_05_03_01
- - - - - - 0x01C02D 07:801D: E0        .byte $E0   ; 
- - - - - - 0x01C02E 07:801E: 03        .byte $03   ; 
- D 0 - I - 0x01C02F 07:801F: FD        .byte $FD   ; 
- - - - - - 0x01C030 07:8020: E0        .byte $E0   ; 



_off047_8021_05_00_00:
- D 0 - I - 0x01C031 07:8021: 01        .byte $01   ; 
- D 0 - I - 0x01C032 07:8022: 13        .byte $13   ; 
- D 0 - I - 0x01C033 07:8023: 0A        .byte $0A   ; 
- D 0 - I - 0x01C034 07:8024: 0B        .byte $0B   ; 
- D 0 - I - 0x01C035 07:8025: 00        .byte $00   ; 
- D 0 - I - 0x01C036 07:8026: 00        .byte $00   ; 
- D 0 - I - 0x01C037 07:8027: 00        .byte $00   ; 
- D 0 - I - 0x01C038 07:8028: 00        .byte $00   ; 
- D 0 - I - 0x01C039 07:8029: 04        .byte $04   ; 
- D 0 - I - 0x01C03A 07:802A: 13        .byte $13   ; 
- D 0 - I - 0x01C03B 07:802B: 02        .byte $02   ; 
- D 0 - I - 0x01C03C 07:802C: 07        .byte $07   ; 
- D 0 - I - 0x01C03D 07:802D: 09        .byte $09   ; 
- D 0 - I - 0x01C03E 07:802E: 00        .byte $00   ; 
- D 0 - I - 0x01C03F 07:802F: 00        .byte $00   ; 
- D 0 - I - 0x01C040 07:8030: 00        .byte $00   ; 
- D 0 - I - 0x01C041 07:8031: 0A        .byte $0A   ; 
- D 0 - I - 0x01C042 07:8032: 13        .byte $13   ; 
- D 0 - I - 0x01C043 07:8033: 05        .byte $05   ; 
- D 0 - I - 0x01C044 07:8034: 0C        .byte $0C   ; 
- D 0 - I - 0x01C045 07:8035: 0C        .byte $0C   ; 
- D 0 - I - 0x01C046 07:8036: 09        .byte $09   ; 
- D 0 - I - 0x01C047 07:8037: 00        .byte $00   ; 
- D 0 - I - 0x01C048 07:8038: 1A        .byte $1A   ; 
- D 0 - I - 0x01C049 07:8039: 2B        .byte $2B   ; 
- D 0 - I - 0x01C04A 07:803A: 54        .byte $54   ; 
- D 0 - I - 0x01C04B 07:803B: 05        .byte $05   ; 
- D 0 - I - 0x01C04C 07:803C: 05        .byte $05   ; 
- D 0 - I - 0x01C04D 07:803D: 05        .byte $05   ; 
- D 0 - I - 0x01C04E 07:803E: 05        .byte $05   ; 
- D 0 - I - 0x01C04F 07:803F: 1A        .byte $1A   ; 
- D 0 - I - 0x01C050 07:8040: 05        .byte $05   ; 
- D 0 - I - 0x01C051 07:8041: 05        .byte $05   ; 
- D 0 - I - 0x01C052 07:8042: 55        .byte $55   ; 
- D 0 - I - 0x01C053 07:8043: 01        .byte $01   ; 
- D 0 - I - 0x01C054 07:8044: 01        .byte $01   ; 
- D 0 - I - 0x01C055 07:8045: 01        .byte $01   ; 
- D 0 - I - 0x01C056 07:8046: 13        .byte $13   ; 
- D 0 - I - 0x01C057 07:8047: 2B        .byte $2B   ; 
- D 0 - I - 0x01C058 07:8048: 2B        .byte $2B   ; 
- D 0 - I - 0x01C059 07:8049: 2B        .byte $2B   ; 
- D 0 - I - 0x01C05A 07:804A: 2B        .byte $2B   ; 
- D 0 - I - 0x01C05B 07:804B: 2B        .byte $2B   ; 
- D 0 - I - 0x01C05C 07:804C: 2B        .byte $2B   ; 
- D 0 - I - 0x01C05D 07:804D: 2B        .byte $2B   ; 
- D 0 - I - 0x01C05E 07:804E: 2B        .byte $2B   ; 
- D 0 - I - 0x01C05F 07:804F: 0C        .byte $0C   ; 
- D 0 - I - 0x01C060 07:8050: 0C        .byte $0C   ; 
- D 0 - I - 0x01C061 07:8051: 0C        .byte $0C   ; 
- D 0 - I - 0x01C062 07:8052: 00        .byte $00   ; 
- D 0 - I - 0x01C063 07:8053: 00        .byte $00   ; 
- D 0 - I - 0x01C064 07:8054: 00        .byte $00   ; 
- D 0 - I - 0x01C065 07:8055: 00        .byte $00   ; 
- D 0 - I - 0x01C066 07:8056: 00        .byte $00   ; 
- D 0 - I - 0x01C067 07:8057: 00        .byte $00   ; 
- D 0 - I - 0x01C068 07:8058: 04        .byte $04   ; 
- D 0 - I - 0x01C069 07:8059: 13        .byte $13   ; 
- D 0 - I - 0x01C06A 07:805A: 00        .byte $00   ; 
- D 0 - I - 0x01C06B 07:805B: 00        .byte $00   ; 
- D 0 - I - 0x01C06C 07:805C: 00        .byte $00   ; 
- D 0 - I - 0x01C06D 07:805D: 00        .byte $00   ; 
- D 0 - I - 0x01C06E 07:805E: 00        .byte $00   ; 
- D 0 - I - 0x01C06F 07:805F: 00        .byte $00   ; 
- D 0 - I - 0x01C070 07:8060: 08        .byte $08   ; 
- D 0 - I - 0x01C071 07:8061: 18        .byte $18   ; 
- D 0 - I - 0x01C072 07:8062: 13        .byte $13   ; 
- D 0 - I - 0x01C073 07:8063: 2B        .byte $2B   ; 
- D 0 - I - 0x01C074 07:8064: 2B        .byte $2B   ; 
- D 0 - I - 0x01C075 07:8065: 1B        .byte $1B   ; 
- D 0 - I - 0x01C076 07:8066: 00        .byte $00   ; 
- D 0 - I - 0x01C077 07:8067: 00        .byte $00   ; 
- D 0 - I - 0x01C078 07:8068: 0A        .byte $0A   ; 
- D 0 - I - 0x01C079 07:8069: 1C        .byte $1C   ; 
- D 0 - I - 0x01C07A 07:806A: 13        .byte $13   ; 
- D 0 - I - 0x01C07B 07:806B: 05        .byte $05   ; 
- D 0 - I - 0x01C07C 07:806C: 05        .byte $05   ; 
- D 0 - I - 0x01C07D 07:806D: 05        .byte $05   ; 
- D 0 - I - 0x01C07E 07:806E: 1B        .byte $1B   ; 
- D 0 - I - 0x01C07F 07:806F: 12        .byte $12   ; 
- D 0 - I - 0x01C080 07:8070: 13        .byte $13   ; 
- D 0 - I - 0x01C081 07:8071: 13        .byte $13   ; 
- D 0 - I - 0x01C082 07:8072: 13        .byte $13   ; 
- D 0 - I - 0x01C083 07:8073: 2B        .byte $2B   ; 
- D 0 - I - 0x01C084 07:8074: 2B        .byte $2B   ; 
- D 0 - I - 0x01C085 07:8075: 2B        .byte $2B   ; 
- D 0 - I - 0x01C086 07:8076: 2B        .byte $2B   ; 
- D 0 - I - 0x01C087 07:8077: 2B        .byte $2B   ; 
- D 0 - I - 0x01C088 07:8078: 2B        .byte $2B   ; 
- D 0 - I - 0x01C089 07:8079: 13        .byte $13   ; 
- D 0 - I - 0x01C08A 07:807A: 13        .byte $13   ; 
- D 0 - I - 0x01C08B 07:807B: 0C        .byte $0C   ; 
- D 0 - I - 0x01C08C 07:807C: 0C        .byte $0C   ; 
- D 0 - I - 0x01C08D 07:807D: 0C        .byte $0C   ; 
- D 0 - I - 0x01C08E 07:807E: 0C        .byte $0C   ; 
- D 0 - I - 0x01C08F 07:807F: 0C        .byte $0C   ; 
- D 0 - I - 0x01C090 07:8080: 0C        .byte $0C   ; 
- D 0 - I - 0x01C091 07:8081: 13        .byte $13   ; 



_off047_8082_05_01_00:
- D 0 - I - 0x01C092 07:8082: 03        .byte $03   ; 
- D 0 - I - 0x01C093 07:8083: 00        .byte $00   ; 
- D 0 - I - 0x01C094 07:8084: 00        .byte $00   ; 
- D 0 - I - 0x01C095 07:8085: 00        .byte $00   ; 
- D 0 - I - 0x01C096 07:8086: 00        .byte $00   ; 
- D 0 - I - 0x01C097 07:8087: 00        .byte $00   ; 
- D 0 - I - 0x01C098 07:8088: 0A        .byte $0A   ; 
- D 0 - I - 0x01C099 07:8089: 0B        .byte $0B   ; 
- D 0 - I - 0x01C09A 07:808A: 00        .byte $00   ; 
- D 0 - I - 0x01C09B 07:808B: 00        .byte $00   ; 
- D 0 - I - 0x01C09C 07:808C: 00        .byte $00   ; 
- D 0 - I - 0x01C09D 07:808D: 00        .byte $00   ; 
- D 0 - I - 0x01C09E 07:808E: 40        .byte $40   ; 
- D 0 - I - 0x01C09F 07:808F: 12        .byte $12   ; 
- D 0 - I - 0x01C0A0 07:8090: 0E        .byte $0E   ; 
- D 0 - I - 0x01C0A1 07:8091: 0B        .byte $0B   ; 
- D 0 - I - 0x01C0A2 07:8092: 00        .byte $00   ; 
- D 0 - I - 0x01C0A3 07:8093: 05        .byte $05   ; 
- D 0 - I - 0x01C0A4 07:8094: 05        .byte $05   ; 
- D 0 - I - 0x01C0A5 07:8095: 05        .byte $05   ; 
- D 0 - I - 0x01C0A6 07:8096: 05        .byte $05   ; 
- D 0 - I - 0x01C0A7 07:8097: 05        .byte $05   ; 
- D 0 - I - 0x01C0A8 07:8098: 05        .byte $05   ; 
- D 0 - I - 0x01C0A9 07:8099: 05        .byte $05   ; 
- D 0 - I - 0x01C0AA 07:809A: 05        .byte $05   ; 
- D 0 - I - 0x01C0AB 07:809B: 2B        .byte $2B   ; 
- D 0 - I - 0x01C0AC 07:809C: 13        .byte $13   ; 
- D 0 - I - 0x01C0AD 07:809D: 2F        .byte $2F   ; 
- D 0 - I - 0x01C0AE 07:809E: 23        .byte $23   ; 
- D 0 - I - 0x01C0AF 07:809F: 23        .byte $23   ; 
- D 0 - I - 0x01C0B0 07:80A0: 23        .byte $23   ; 
- D 0 - I - 0x01C0B1 07:80A1: 23        .byte $23   ; 
- D 0 - I - 0x01C0B2 07:80A2: 23        .byte $23   ; 
- D 0 - I - 0x01C0B3 07:80A3: 0C        .byte $0C   ; 
- D 0 - I - 0x01C0B4 07:80A4: 28        .byte $28   ; 
- D 0 - I - 0x01C0B5 07:80A5: 29        .byte $29   ; 
- D 0 - I - 0x01C0B6 07:80A6: 2A        .byte $2A   ; 
- D 0 - I - 0x01C0B7 07:80A7: 0C        .byte $0C   ; 
- D 0 - I - 0x01C0B8 07:80A8: 0C        .byte $0C   ; 
- D 0 - I - 0x01C0B9 07:80A9: 0C        .byte $0C   ; 
- D 0 - I - 0x01C0BA 07:80AA: 02        .byte $02   ; 
- D 0 - I - 0x01C0BB 07:80AB: 02        .byte $02   ; 
- D 0 - I - 0x01C0BC 07:80AC: 2C        .byte $2C   ; 
- D 0 - I - 0x01C0BD 07:80AD: 01        .byte $01   ; 
- D 0 - I - 0x01C0BE 07:80AE: 2E        .byte $2E   ; 
- D 0 - I - 0x01C0BF 07:80AF: 07        .byte $07   ; 
- D 0 - I - 0x01C0C0 07:80B0: 0C        .byte $0C   ; 
- D 0 - I - 0x01C0C1 07:80B1: 02        .byte $02   ; 
- D 0 - I - 0x01C0C2 07:80B2: 01        .byte $01   ; 
- D 0 - I - 0x01C0C3 07:80B3: 00        .byte $00   ; 
- D 0 - I - 0x01C0C4 07:80B4: 00        .byte $00   ; 
- D 0 - I - 0x01C0C5 07:80B5: 00        .byte $00   ; 
- D 0 - I - 0x01C0C6 07:80B6: 04        .byte $04   ; 
- D 0 - I - 0x01C0C7 07:80B7: 00        .byte $00   ; 
- D 0 - I - 0x01C0C8 07:80B8: 00        .byte $00   ; 
- D 0 - I - 0x01C0C9 07:80B9: 0A        .byte $0A   ; 
- D 0 - I - 0x01C0CA 07:80BA: 0B        .byte $0B   ; 
- D 0 - I - 0x01C0CB 07:80BB: 00        .byte $00   ; 
- D 0 - I - 0x01C0CC 07:80BC: 00        .byte $00   ; 
- D 0 - I - 0x01C0CD 07:80BD: 00        .byte $00   ; 
- D 0 - I - 0x01C0CE 07:80BE: 08        .byte $08   ; 
- D 0 - I - 0x01C0CF 07:80BF: 09        .byte $09   ; 
- D 0 - I - 0x01C0D0 07:80C0: 00        .byte $00   ; 
- D 0 - I - 0x01C0D1 07:80C1: 0E        .byte $0E   ; 
- D 0 - I - 0x01C0D2 07:80C2: 0B        .byte $0B   ; 
- D 0 - I - 0x01C0D3 07:80C3: 05        .byte $05   ; 
- D 0 - I - 0x01C0D4 07:80C4: 05        .byte $05   ; 
- D 0 - I - 0x01C0D5 07:80C5: 05        .byte $05   ; 
- D 0 - I - 0x01C0D6 07:80C6: 05        .byte $05   ; 
- D 0 - I - 0x01C0D7 07:80C7: 05        .byte $05   ; 
- D 0 - I - 0x01C0D8 07:80C8: 05        .byte $05   ; 
- D 0 - I - 0x01C0D9 07:80C9: 05        .byte $05   ; 
- D 0 - I - 0x01C0DA 07:80CA: 05        .byte $05   ; 
- D 0 - I - 0x01C0DB 07:80CB: 23        .byte $23   ; 
- D 0 - I - 0x01C0DC 07:80CC: 23        .byte $23   ; 
- D 0 - I - 0x01C0DD 07:80CD: 23        .byte $23   ; 
- D 0 - I - 0x01C0DE 07:80CE: 23        .byte $23   ; 
- D 0 - I - 0x01C0DF 07:80CF: 23        .byte $23   ; 
- D 0 - I - 0x01C0E0 07:80D0: 23        .byte $23   ; 
- D 0 - I - 0x01C0E1 07:80D1: 23        .byte $23   ; 
- D 0 - I - 0x01C0E2 07:80D2: 23        .byte $23   ; 
- D 0 - I - 0x01C0E3 07:80D3: 01        .byte $01   ; 
- D 0 - I - 0x01C0E4 07:80D4: 07        .byte $07   ; 
- D 0 - I - 0x01C0E5 07:80D5: 0C        .byte $0C   ; 
- D 0 - I - 0x01C0E6 07:80D6: 0C        .byte $0C   ; 
- D 0 - I - 0x01C0E7 07:80D7: 0C        .byte $0C   ; 
- D 0 - I - 0x01C0E8 07:80D8: 02        .byte $02   ; 
- D 0 - I - 0x01C0E9 07:80D9: 01        .byte $01   ; 
- D 0 - I - 0x01C0EA 07:80DA: 07        .byte $07   ; 
- D 0 - I - 0x01C0EB 07:80DB: 01        .byte $01   ; 
- D 0 - I - 0x01C0EC 07:80DC: 01        .byte $01   ; 
- D 0 - I - 0x01C0ED 07:80DD: 07        .byte $07   ; 
- D 0 - I - 0x01C0EE 07:80DE: 0C        .byte $0C   ; 
- D 0 - I - 0x01C0EF 07:80DF: 02        .byte $02   ; 
- D 0 - I - 0x01C0F0 07:80E0: 01        .byte $01   ; 
- D 0 - I - 0x01C0F1 07:80E1: 01        .byte $01   ; 
- D 0 - I - 0x01C0F2 07:80E2: 01        .byte $01   ; 
- D 0 - I - 0x01C0F3 07:80E3: 04        .byte $04   ; 
- D 0 - I - 0x01C0F4 07:80E4: 0A        .byte $0A   ; 
- D 0 - I - 0x01C0F5 07:80E5: 20        .byte $20   ; 
- D 0 - I - 0x01C0F6 07:80E6: 21        .byte $21   ; 
- D 0 - I - 0x01C0F7 07:80E7: 22        .byte $22   ; 
- D 0 - I - 0x01C0F8 07:80E8: 09        .byte $09   ; 
- D 0 - I - 0x01C0F9 07:80E9: 04        .byte $04   ; 
- D 0 - I - 0x01C0FA 07:80EA: 00        .byte $00   ; 
- D 0 - I - 0x01C0FB 07:80EB: 08        .byte $08   ; 
- D 0 - I - 0x01C0FC 07:80EC: 0E        .byte $0E   ; 
- D 0 - I - 0x01C0FD 07:80ED: 20        .byte $20   ; 
- D 0 - I - 0x01C0FE 07:80EE: 21        .byte $21   ; 
- D 0 - I - 0x01C0FF 07:80EF: 22        .byte $22   ; 
- D 0 - I - 0x01C100 07:80F0: 0B        .byte $0B   ; 
- D 0 - I - 0x01C101 07:80F1: 08        .byte $08   ; 
- D 0 - I - 0x01C102 07:80F2: 09        .byte $09   ; 
- D 0 - I - 0x01C103 07:80F3: 05        .byte $05   ; 
- D 0 - I - 0x01C104 07:80F4: 05        .byte $05   ; 
- D 0 - I - 0x01C105 07:80F5: 24        .byte $24   ; 
- D 0 - I - 0x01C106 07:80F6: 21        .byte $21   ; 
- D 0 - I - 0x01C107 07:80F7: 26        .byte $26   ; 
- D 0 - I - 0x01C108 07:80F8: 05        .byte $05   ; 
- D 0 - I - 0x01C109 07:80F9: 05        .byte $05   ; 
- D 0 - I - 0x01C10A 07:80FA: 05        .byte $05   ; 
- D 0 - I - 0x01C10B 07:80FB: 23        .byte $23   ; 
- D 0 - I - 0x01C10C 07:80FC: 23        .byte $23   ; 
- D 0 - I - 0x01C10D 07:80FD: 23        .byte $23   ; 
- D 0 - I - 0x01C10E 07:80FE: 29        .byte $29   ; 
- D 0 - I - 0x01C10F 07:80FF: 27        .byte $27   ; 
- D 0 - I - 0x01C110 07:8100: 27        .byte $27   ; 
- D 0 - I - 0x01C111 07:8101: 27        .byte $27   ; 
- D 0 - I - 0x01C112 07:8102: 27        .byte $27   ; 
- D 0 - I - 0x01C113 07:8103: 0C        .byte $0C   ; 
- D 0 - I - 0x01C114 07:8104: 0C        .byte $0C   ; 
- D 0 - I - 0x01C115 07:8105: 0C        .byte $0C   ; 
- D 0 - I - 0x01C116 07:8106: 02        .byte $02   ; 
- D 0 - I - 0x01C117 07:8107: 01        .byte $01   ; 
- D 0 - I - 0x01C118 07:8108: 07        .byte $07   ; 
- D 0 - I - 0x01C119 07:8109: 0C        .byte $0C   ; 
- D 0 - I - 0x01C11A 07:810A: 0C        .byte $0C   ; 
- D 0 - I - 0x01C11B 07:810B: 07        .byte $07   ; 
- D 0 - I - 0x01C11C 07:810C: 0C        .byte $0C   ; 
- D 0 - I - 0x01C11D 07:810D: 02        .byte $02   ; 
- D 0 - I - 0x01C11E 07:810E: 01        .byte $01   ; 
- D 0 - I - 0x01C11F 07:810F: 01        .byte $01   ; 
- D 0 - I - 0x01C120 07:8110: 01        .byte $01   ; 
- D 0 - I - 0x01C121 07:8111: 07        .byte $07   ; 
- D 0 - I - 0x01C122 07:8112: 0C        .byte $0C   ; 
- D 0 - I - 0x01C123 07:8113: 0A        .byte $0A   ; 
- D 0 - I - 0x01C124 07:8114: 0A        .byte $0A   ; 
- D 0 - I - 0x01C125 07:8115: 04        .byte $04   ; 
- D 0 - I - 0x01C126 07:8116: 40        .byte $40   ; 
- D 0 - I - 0x01C127 07:8117: 0A        .byte $0A   ; 
- D 0 - I - 0x01C128 07:8118: 0C        .byte $0C   ; 
- D 0 - I - 0x01C129 07:8119: 01        .byte $01   ; 
- D 0 - I - 0x01C12A 07:811A: 13        .byte $13   ; 
- D 0 - I - 0x01C12B 07:811B: 0E        .byte $0E   ; 
- D 0 - I - 0x01C12C 07:811C: 0E        .byte $0E   ; 
- D 0 - I - 0x01C12D 07:811D: 08        .byte $08   ; 
- D 0 - I - 0x01C12E 07:811E: 02        .byte $02   ; 
- D 0 - I - 0x01C12F 07:811F: 07        .byte $07   ; 
- D 0 - I - 0x01C130 07:8120: 02        .byte $02   ; 
- D 0 - I - 0x01C131 07:8121: 01        .byte $01   ; 
- D 0 - I - 0x01C132 07:8122: 18        .byte $18   ; 
- D 0 - I - 0x01C133 07:8123: 05        .byte $05   ; 
- D 0 - I - 0x01C134 07:8124: 05        .byte $05   ; 
- D 0 - I - 0x01C135 07:8125: 05        .byte $05   ; 
- D 0 - I - 0x01C136 07:8126: 05        .byte $05   ; 
- D 0 - I - 0x01C137 07:8127: 05        .byte $05   ; 
- D 0 - I - 0x01C138 07:8128: 01        .byte $01   ; 
- D 0 - I - 0x01C139 07:8129: 01        .byte $01   ; 
- D 0 - I - 0x01C13A 07:812A: 1C        .byte $1C   ; 
- D 0 - I - 0x01C13B 07:812B: 27        .byte $27   ; 
- D 0 - I - 0x01C13C 07:812C: 27        .byte $27   ; 
- D 0 - I - 0x01C13D 07:812D: 27        .byte $27   ; 
- D 0 - I - 0x01C13E 07:812E: 25        .byte $25   ; 
- D 0 - I - 0x01C13F 07:812F: 2B        .byte $2B   ; 
- D 0 - I - 0x01C140 07:8130: 2B        .byte $2B   ; 
- D 0 - I - 0x01C141 07:8131: 2B        .byte $2B   ; 
- D 0 - I - 0x01C142 07:8132: 13        .byte $13   ; 
- D 0 - I - 0x01C143 07:8133: 0C        .byte $0C   ; 
- D 0 - I - 0x01C144 07:8134: 02        .byte $02   ; 
- D 0 - I - 0x01C145 07:8135: 01        .byte $01   ; 
- D 0 - I - 0x01C146 07:8136: 21        .byte $21   ; 
- D 0 - I - 0x01C147 07:8137: 07        .byte $07   ; 
- D 0 - I - 0x01C148 07:8138: 0C        .byte $0C   ; 
- D 0 - I - 0x01C149 07:8139: 0C        .byte $0C   ; 
- D 0 - I - 0x01C14A 07:813A: 13        .byte $13   ; 
- D 0 - I - 0x01C14B 07:813B: 02        .byte $02   ; 
- D 0 - I - 0x01C14C 07:813C: 01        .byte $01   ; 
- D 0 - I - 0x01C14D 07:813D: 01        .byte $01   ; 
- D 0 - I - 0x01C14E 07:813E: 21        .byte $21   ; 
- D 0 - I - 0x01C14F 07:813F: 01        .byte $01   ; 
- D 0 - I - 0x01C150 07:8140: 07        .byte $07   ; 
- D 0 - I - 0x01C151 07:8141: 2B        .byte $2B   ; 
- D 0 - I - 0x01C152 07:8142: 13        .byte $13   ; 



_off047_8143_05_02_01:
- D 0 - I - 0x01C153 07:8143: 03        .byte $03   ; 
- D 0 - I - 0x01C154 07:8144: 35        .byte $35   ; 
- D 0 - I - 0x01C155 07:8145: 39        .byte $39   ; 
- D 0 - I - 0x01C156 07:8146: 39        .byte $39   ; 
- D 0 - I - 0x01C157 07:8147: 39        .byte $39   ; 
- D 0 - I - 0x01C158 07:8148: 39        .byte $39   ; 
- D 0 - I - 0x01C159 07:8149: 36        .byte $36   ; 
- D 0 - I - 0x01C15A 07:814A: 39        .byte $39   ; 
- D 0 - I - 0x01C15B 07:814B: 39        .byte $39   ; 
- D 0 - I - 0x01C15C 07:814C: 01        .byte $01   ; 
- D 0 - I - 0x01C15D 07:814D: 32        .byte $32   ; 
- D 0 - I - 0x01C15E 07:814E: 30        .byte $30   ; 
- D 0 - I - 0x01C15F 07:814F: 36        .byte $36   ; 
- D 0 - I - 0x01C160 07:8150: 30        .byte $30   ; 
- D 0 - I - 0x01C161 07:8151: 36        .byte $36   ; 
- D 0 - I - 0x01C162 07:8152: 32        .byte $32   ; 
- D 0 - I - 0x01C163 07:8153: 34        .byte $34   ; 
- D 0 - I - 0x01C164 07:8154: 01        .byte $01   ; 
- D 0 - I - 0x01C165 07:8155: 32        .byte $32   ; 
- D 0 - I - 0x01C166 07:8156: 01        .byte $01   ; 
- D 0 - I - 0x01C167 07:8157: 36        .byte $36   ; 
- D 0 - I - 0x01C168 07:8158: 01        .byte $01   ; 
- D 0 - I - 0x01C169 07:8159: 36        .byte $36   ; 
- D 0 - I - 0x01C16A 07:815A: 30        .byte $30   ; 
- D 0 - I - 0x01C16B 07:815B: 3E        .byte $3E   ; 
- D 0 - I - 0x01C16C 07:815C: 13        .byte $13   ; 
- D 0 - I - 0x01C16D 07:815D: 31        .byte $31   ; 
- D 0 - I - 0x01C16E 07:815E: 01        .byte $01   ; 
- D 0 - I - 0x01C16F 07:815F: 36        .byte $36   ; 
- D 0 - I - 0x01C170 07:8160: 01        .byte $01   ; 
- D 0 - I - 0x01C171 07:8161: 3A        .byte $3A   ; 
- D 0 - I - 0x01C172 07:8162: 01        .byte $01   ; 
- D 0 - I - 0x01C173 07:8163: 36        .byte $36   ; 
- D 0 - I - 0x01C174 07:8164: 13        .byte $13   ; 
- D 0 - I - 0x01C175 07:8165: 31        .byte $31   ; 
- D 0 - I - 0x01C176 07:8166: 3D        .byte $3D   ; 
- D 0 - I - 0x01C177 07:8167: 3E        .byte $3E   ; 
- D 0 - I - 0x01C178 07:8168: 3D        .byte $3D   ; 
- D 0 - I - 0x01C179 07:8169: 3E        .byte $3E   ; 
- D 0 - I - 0x01C17A 07:816A: 3D        .byte $3D   ; 
- D 0 - I - 0x01C17B 07:816B: 3E        .byte $3E   ; 
- D 0 - I - 0x01C17C 07:816C: 13        .byte $13   ; 
- D 0 - I - 0x01C17D 07:816D: 32        .byte $32   ; 
- D 0 - I - 0x01C17E 07:816E: 34        .byte $34   ; 
- D 0 - I - 0x01C17F 07:816F: 3A        .byte $3A   ; 
- D 0 - I - 0x01C180 07:8170: 35        .byte $35   ; 
- D 0 - I - 0x01C181 07:8171: 36        .byte $36   ; 
- D 0 - I - 0x01C182 07:8172: 34        .byte $34   ; 
- D 0 - I - 0x01C183 07:8173: 3A        .byte $3A   ; 
- D 0 - I - 0x01C184 07:8174: 39        .byte $39   ; 
- D 0 - I - 0x01C185 07:8175: 36        .byte $36   ; 
- D 0 - I - 0x01C186 07:8176: 3B        .byte $3B   ; 
- D 0 - I - 0x01C187 07:8177: 39        .byte $39   ; 
- D 0 - I - 0x01C188 07:8178: 39        .byte $39   ; 
- D 0 - I - 0x01C189 07:8179: 39        .byte $39   ; 
- D 0 - I - 0x01C18A 07:817A: 39        .byte $39   ; 
- D 0 - I - 0x01C18B 07:817B: 13        .byte $13   ; 
- D 0 - I - 0x01C18C 07:817C: 35        .byte $35   ; 
- D 0 - I - 0x01C18D 07:817D: 3A        .byte $3A   ; 
- D 0 - I - 0x01C18E 07:817E: 33        .byte $33   ; 
- D 0 - I - 0x01C18F 07:817F: 36        .byte $36   ; 
- D 0 - I - 0x01C190 07:8180: 30        .byte $30   ; 
- D 0 - I - 0x01C191 07:8181: 1F        .byte $1F   ; 
- D 0 - I - 0x01C192 07:8182: 32        .byte $32   ; 
- D 0 - I - 0x01C193 07:8183: 13        .byte $13   ; 
- D 0 - I - 0x01C194 07:8184: 3F        .byte $3F   ; 
- D 0 - I - 0x01C195 07:8185: 3E        .byte $3E   ; 
- D 0 - I - 0x01C196 07:8186: 33        .byte $33   ; 
- D 0 - I - 0x01C197 07:8187: 36        .byte $36   ; 
- D 0 - I - 0x01C198 07:8188: 01        .byte $01   ; 
- D 0 - I - 0x01C199 07:8189: 38        .byte $38   ; 
- D 0 - I - 0x01C19A 07:818A: 30        .byte $30   ; 
- D 0 - I - 0x01C19B 07:818B: 13        .byte $13   ; 
- D 0 - I - 0x01C19C 07:818C: 35        .byte $35   ; 
- D 0 - I - 0x01C19D 07:818D: 3A        .byte $3A   ; 
- D 0 - I - 0x01C19E 07:818E: 3B        .byte $3B   ; 
- D 0 - I - 0x01C19F 07:818F: 36        .byte $36   ; 
- D 0 - I - 0x01C1A0 07:8190: 01        .byte $01   ; 
- D 0 - I - 0x01C1A1 07:8191: 3A        .byte $3A   ; 
- D 0 - I - 0x01C1A2 07:8192: 39        .byte $39   ; 
- D 0 - I - 0x01C1A3 07:8193: 13        .byte $13   ; 
- D 0 - I - 0x01C1A4 07:8194: 01        .byte $01   ; 
- D 0 - I - 0x01C1A5 07:8195: 3E        .byte $3E   ; 
- D 0 - I - 0x01C1A6 07:8196: 3F        .byte $3F   ; 
- D 0 - I - 0x01C1A7 07:8197: 31        .byte $31   ; 
- D 0 - I - 0x01C1A8 07:8198: 3D        .byte $3D   ; 
- D 0 - I - 0x01C1A9 07:8199: 15        .byte $15   ; 
- D 0 - I - 0x01C1AA 07:819A: 3E        .byte $3E   ; 
- D 0 - I - 0x01C1AB 07:819B: 13        .byte $13   ; 
- D 0 - I - 0x01C1AC 07:819C: 01        .byte $01   ; 
- D 0 - I - 0x01C1AD 07:819D: 36        .byte $36   ; 
- D 0 - I - 0x01C1AE 07:819E: 37        .byte $37   ; 
- D 0 - I - 0x01C1AF 07:819F: 35        .byte $35   ; 
- D 0 - I - 0x01C1B0 07:81A0: 14        .byte $14   ; 
- D 0 - I - 0x01C1B1 07:81A1: 32        .byte $32   ; 
- D 0 - I - 0x01C1B2 07:81A2: 36        .byte $36   ; 
- D 0 - I - 0x01C1B3 07:81A3: 13        .byte $13   ; 
- D 0 - I - 0x01C1B4 07:81A4: 13        .byte $13   ; 
- D 0 - I - 0x01C1B5 07:81A5: 3B        .byte $3B   ; 
- D 0 - I - 0x01C1B6 07:81A6: 39        .byte $39   ; 
- D 0 - I - 0x01C1B7 07:81A7: 39        .byte $39   ; 
- D 0 - I - 0x01C1B8 07:81A8: 39        .byte $39   ; 
- D 0 - I - 0x01C1B9 07:81A9: 39        .byte $39   ; 
- D 0 - I - 0x01C1BA 07:81AA: 36        .byte $36   ; 
- D 0 - I - 0x01C1BB 07:81AB: 3B        .byte $3B   ; 
- D 0 - I - 0x01C1BC 07:81AC: 13        .byte $13   ; 
- D 0 - I - 0x01C1BD 07:81AD: 30        .byte $30   ; 
- D 0 - I - 0x01C1BE 07:81AE: 32        .byte $32   ; 
- D 0 - I - 0x01C1BF 07:81AF: 1F        .byte $1F   ; 
- D 0 - I - 0x01C1C0 07:81B0: 30        .byte $30   ; 
- D 0 - I - 0x01C1C1 07:81B1: 34        .byte $34   ; 
- D 0 - I - 0x01C1C2 07:81B2: 36        .byte $36   ; 
- D 0 - I - 0x01C1C3 07:81B3: 32        .byte $32   ; 
- D 0 - I - 0x01C1C4 07:81B4: 13        .byte $13   ; 
- D 0 - I - 0x01C1C5 07:81B5: 01        .byte $01   ; 
- D 0 - I - 0x01C1C6 07:81B6: 32        .byte $32   ; 
- D 0 - I - 0x01C1C7 07:81B7: 38        .byte $38   ; 
- D 0 - I - 0x01C1C8 07:81B8: 01        .byte $01   ; 
- D 0 - I - 0x01C1C9 07:81B9: 39        .byte $39   ; 
- D 0 - I - 0x01C1CA 07:81BA: 3A        .byte $3A   ; 
- D 0 - I - 0x01C1CB 07:81BB: 32        .byte $32   ; 
- D 0 - I - 0x01C1CC 07:81BC: 13        .byte $13   ; 
- D 0 - I - 0x01C1CD 07:81BD: 1F        .byte $1F   ; 
- D 0 - I - 0x01C1CE 07:81BE: 14        .byte $14   ; 
- D 0 - I - 0x01C1CF 07:81BF: 3E        .byte $3E   ; 
- D 0 - I - 0x01C1D0 07:81C0: 3F        .byte $3F   ; 
- D 0 - I - 0x01C1D1 07:81C1: 31        .byte $31   ; 
- D 0 - I - 0x01C1D2 07:81C2: 3E        .byte $3E   ; 
- D 0 - I - 0x01C1D3 07:81C3: 17        .byte $17   ; 
- D 0 - I - 0x01C1D4 07:81C4: 13        .byte $13   ; 
- D 0 - I - 0x01C1D5 07:81C5: 31        .byte $31   ; 
- D 0 - I - 0x01C1D6 07:81C6: 17        .byte $17   ; 
- D 0 - I - 0x01C1D7 07:81C7: 3A        .byte $3A   ; 
- D 0 - I - 0x01C1D8 07:81C8: 3B        .byte $3B   ; 
- D 0 - I - 0x01C1D9 07:81C9: 32        .byte $32   ; 
- D 0 - I - 0x01C1DA 07:81CA: 36        .byte $36   ; 
- D 0 - I - 0x01C1DB 07:81CB: 3D        .byte $3D   ; 
- D 0 - I - 0x01C1DC 07:81CC: 13        .byte $13   ; 
- D 0 - I - 0x01C1DD 07:81CD: 32        .byte $32   ; 
- D 0 - I - 0x01C1DE 07:81CE: 3E        .byte $3E   ; 
- D 0 - I - 0x01C1DF 07:81CF: 31        .byte $31   ; 
- D 0 - I - 0x01C1E0 07:81D0: 16        .byte $16   ; 
- D 0 - I - 0x01C1E1 07:81D1: 32        .byte $32   ; 
- D 0 - I - 0x01C1E2 07:81D2: 3A        .byte $3A   ; 
- D 0 - I - 0x01C1E3 07:81D3: 32        .byte $32   ; 
- D 0 - I - 0x01C1E4 07:81D4: 39        .byte $39   ; 
- D 0 - I - 0x01C1E5 07:81D5: 36        .byte $36   ; 
- D 0 - I - 0x01C1E6 07:81D6: 3B        .byte $3B   ; 
- D 0 - I - 0x01C1E7 07:81D7: 39        .byte $39   ; 
- D 0 - I - 0x01C1E8 07:81D8: 39        .byte $39   ; 
- D 0 - I - 0x01C1E9 07:81D9: 39        .byte $39   ; 
- D 0 - I - 0x01C1EA 07:81DA: 39        .byte $39   ; 
- D 0 - I - 0x01C1EB 07:81DB: 13        .byte $13   ; 
- D 0 - I - 0x01C1EC 07:81DC: 30        .byte $30   ; 
- D 0 - I - 0x01C1ED 07:81DD: 36        .byte $36   ; 
- D 0 - I - 0x01C1EE 07:81DE: 30        .byte $30   ; 
- D 0 - I - 0x01C1EF 07:81DF: 38        .byte $38   ; 
- D 0 - I - 0x01C1F0 07:81E0: 32        .byte $32   ; 
- D 0 - I - 0x01C1F1 07:81E1: 32        .byte $32   ; 
- D 0 - I - 0x01C1F2 07:81E2: 34        .byte $34   ; 
- D 0 - I - 0x01C1F3 07:81E3: 18        .byte $18   ; 
- D 0 - I - 0x01C1F4 07:81E4: 01        .byte $01   ; 
- D 0 - I - 0x01C1F5 07:81E5: 36        .byte $36   ; 
- D 0 - I - 0x01C1F6 07:81E6: 01        .byte $01   ; 
- D 0 - I - 0x01C1F7 07:81E7: 36        .byte $36   ; 
- D 0 - I - 0x01C1F8 07:81E8: 30        .byte $30   ; 
- D 0 - I - 0x01C1F9 07:81E9: 32        .byte $32   ; 
- D 0 - I - 0x01C1FA 07:81EA: 01        .byte $01   ; 
- D 0 - I - 0x01C1FB 07:81EB: 1C        .byte $1C   ; 
- D 0 - I - 0x01C1FC 07:81EC: 01        .byte $01   ; 
- D 0 - I - 0x01C1FD 07:81ED: 36        .byte $36   ; 
- D 0 - I - 0x01C1FE 07:81EE: 01        .byte $01   ; 
- D 0 - I - 0x01C1FF 07:81EF: 3A        .byte $3A   ; 
- D 0 - I - 0x01C200 07:81F0: 01        .byte $01   ; 
- D 0 - I - 0x01C201 07:81F1: 34        .byte $34   ; 
- D 0 - I - 0x01C202 07:81F2: 13        .byte $13   ; 
- D 0 - I - 0x01C203 07:81F3: 13        .byte $13   ; 
- D 0 - I - 0x01C204 07:81F4: 31        .byte $31   ; 
- D 0 - I - 0x01C205 07:81F5: 3E        .byte $3E   ; 
- D 0 - I - 0x01C206 07:81F6: 3F        .byte $3F   ; 
- D 0 - I - 0x01C207 07:81F7: 31        .byte $31   ; 
- D 0 - I - 0x01C208 07:81F8: 3D        .byte $3D   ; 
- D 0 - I - 0x01C209 07:81F9: 13        .byte $13   ; 
- D 0 - I - 0x01C20A 07:81FA: 13        .byte $13   ; 
- D 0 - I - 0x01C20B 07:81FB: 13        .byte $13   ; 
- D 0 - I - 0x01C20C 07:81FC: 32        .byte $32   ; 
- D 0 - I - 0x01C20D 07:81FD: 3A        .byte $3A   ; 
- D 0 - I - 0x01C20E 07:81FE: 32        .byte $32   ; 
- D 0 - I - 0x01C20F 07:81FF: 32        .byte $32   ; 
- D 0 - I - 0x01C210 07:8200: 32        .byte $32   ; 
- D 0 - I - 0x01C211 07:8201: 13        .byte $13   ; 
- D 0 - I - 0x01C212 07:8202: 13        .byte $13   ; 
- D 0 - I - 0x01C213 07:8203: 13        .byte $13   ; 



_off047_8204_05_02_00:
- D 0 - I - 0x01C214 07:8204: 01        .byte $01   ; 
- D 0 - I - 0x01C215 07:8205: 39        .byte $39   ; 
- D 0 - I - 0x01C216 07:8206: 36        .byte $36   ; 
- D 0 - I - 0x01C217 07:8207: 39        .byte $39   ; 
- D 0 - I - 0x01C218 07:8208: 14        .byte $14   ; 
- D 0 - I - 0x01C219 07:8209: 39        .byte $39   ; 
- D 0 - I - 0x01C21A 07:820A: 39        .byte $39   ; 
- D 0 - I - 0x01C21B 07:820B: 36        .byte $36   ; 
- D 0 - I - 0x01C21C 07:820C: 13        .byte $13   ; 
- D 0 - I - 0x01C21D 07:820D: 32        .byte $32   ; 
- D 0 - I - 0x01C21E 07:820E: 3A        .byte $3A   ; 
- D 0 - I - 0x01C21F 07:820F: 14        .byte $14   ; 
- D 0 - I - 0x01C220 07:8210: 32        .byte $32   ; 
- D 0 - I - 0x01C221 07:8211: 3C        .byte $3C   ; 
- D 0 - I - 0x01C222 07:8212: 35        .byte $35   ; 
- D 0 - I - 0x01C223 07:8213: 36        .byte $36   ; 
- D 0 - I - 0x01C224 07:8214: 13        .byte $13   ; 
- D 0 - I - 0x01C225 07:8215: 31        .byte $31   ; 
- D 0 - I - 0x01C226 07:8216: 31        .byte $31   ; 
- D 0 - I - 0x01C227 07:8217: 17        .byte $17   ; 
- D 0 - I - 0x01C228 07:8218: 32        .byte $32   ; 
- D 0 - I - 0x01C229 07:8219: 36        .byte $36   ; 
- D 0 - I - 0x01C22A 07:821A: 35        .byte $35   ; 
- D 0 - I - 0x01C22B 07:821B: 36        .byte $36   ; 
- D 0 - I - 0x01C22C 07:821C: 32        .byte $32   ; 
- D 0 - I - 0x01C22D 07:821D: 32        .byte $32   ; 
- D 0 - I - 0x01C22E 07:821E: 38        .byte $38   ; 
- D 0 - I - 0x01C22F 07:821F: 32        .byte $32   ; 
- D 0 - I - 0x01C230 07:8220: 17        .byte $17   ; 
- D 0 - I - 0x01C231 07:8221: 36        .byte $36   ; 
- D 0 - I - 0x01C232 07:8222: 3B        .byte $3B   ; 
- D 0 - I - 0x01C233 07:8223: 3A        .byte $3A   ; 
- D 0 - I - 0x01C234 07:8224: 3B        .byte $3B   ; 
- D 0 - I - 0x01C235 07:8225: 32        .byte $32   ; 
- D 0 - I - 0x01C236 07:8226: 3E        .byte $3E   ; 
- D 0 - I - 0x01C237 07:8227: 32        .byte $32   ; 
- D 0 - I - 0x01C238 07:8228: 3D        .byte $3D   ; 
- D 0 - I - 0x01C239 07:8229: 3E        .byte $3E   ; 
- D 0 - I - 0x01C23A 07:822A: 3D        .byte $3D   ; 
- D 0 - I - 0x01C23B 07:822B: 3E        .byte $3E   ; 
- D 0 - I - 0x01C23C 07:822C: 32        .byte $32   ; 
- D 0 - I - 0x01C23D 07:822D: 11        .byte $11   ; 
- D 0 - I - 0x01C23E 07:822E: 3A        .byte $3A   ; 
- D 0 - I - 0x01C23F 07:822F: 10        .byte $10   ; 
- D 0 - I - 0x01C240 07:8230: 11        .byte $11   ; 
- D 0 - I - 0x01C241 07:8231: 3A        .byte $3A   ; 
- D 0 - I - 0x01C242 07:8232: 10        .byte $10   ; 
- D 0 - I - 0x01C243 07:8233: 36        .byte $36   ; 
- D 0 - I - 0x01C244 07:8234: 11        .byte $11   ; 
- D 0 - I - 0x01C245 07:8235: 13        .byte $13   ; 
- D 0 - I - 0x01C246 07:8236: 39        .byte $39   ; 
- D 0 - I - 0x01C247 07:8237: 36        .byte $36   ; 
- D 0 - I - 0x01C248 07:8238: 39        .byte $39   ; 
- D 0 - I - 0x01C249 07:8239: 39        .byte $39   ; 
- D 0 - I - 0x01C24A 07:823A: 17        .byte $17   ; 
- D 0 - I - 0x01C24B 07:823B: 39        .byte $39   ; 
- D 0 - I - 0x01C24C 07:823C: 35        .byte $35   ; 
- D 0 - I - 0x01C24D 07:823D: 13        .byte $13   ; 
- D 0 - I - 0x01C24E 07:823E: 32        .byte $32   ; 
- D 0 - I - 0x01C24F 07:823F: 36        .byte $36   ; 
- D 0 - I - 0x01C250 07:8240: 32        .byte $32   ; 
- D 0 - I - 0x01C251 07:8241: 3C        .byte $3C   ; 
- D 0 - I - 0x01C252 07:8242: 32        .byte $32   ; 
- D 0 - I - 0x01C253 07:8243: 17        .byte $17   ; 
- D 0 - I - 0x01C254 07:8244: 38        .byte $38   ; 
- D 0 - I - 0x01C255 07:8245: 30        .byte $30   ; 
- D 0 - I - 0x01C256 07:8246: 32        .byte $32   ; 
- D 0 - I - 0x01C257 07:8247: 3A        .byte $3A   ; 
- D 0 - I - 0x01C258 07:8248: 32        .byte $32   ; 
- D 0 - I - 0x01C259 07:8249: 36        .byte $36   ; 
- D 0 - I - 0x01C25A 07:824A: 37        .byte $37   ; 
- D 0 - I - 0x01C25B 07:824B: 14        .byte $14   ; 
- D 0 - I - 0x01C25C 07:824C: 3E        .byte $3E   ; 
- D 0 - I - 0x01C25D 07:824D: 01        .byte $01   ; 
- D 0 - I - 0x01C25E 07:824E: 14        .byte $14   ; 
- D 0 - I - 0x01C25F 07:824F: 3E        .byte $3E   ; 
- D 0 - I - 0x01C260 07:8250: 17        .byte $17   ; 
- D 0 - I - 0x01C261 07:8251: 36        .byte $36   ; 
- D 0 - I - 0x01C262 07:8252: 14        .byte $14   ; 
- D 0 - I - 0x01C263 07:8253: 39        .byte $39   ; 
- D 0 - I - 0x01C264 07:8254: 36        .byte $36   ; 
- D 0 - I - 0x01C265 07:8255: 3E        .byte $3E   ; 
- D 0 - I - 0x01C266 07:8256: 33        .byte $33   ; 
- D 0 - I - 0x01C267 07:8257: 36        .byte $36   ; 
- D 0 - I - 0x01C268 07:8258: 32        .byte $32   ; 
- D 0 - I - 0x01C269 07:8259: 3E        .byte $3E   ; 
- D 0 - I - 0x01C26A 07:825A: 3F        .byte $3F   ; 
- D 0 - I - 0x01C26B 07:825B: 31        .byte $31   ; 
- D 0 - I - 0x01C26C 07:825C: 36        .byte $36   ; 
- D 0 - I - 0x01C26D 07:825D: 3A        .byte $3A   ; 
- D 0 - I - 0x01C26E 07:825E: 10        .byte $10   ; 
- D 0 - I - 0x01C26F 07:825F: 3A        .byte $3A   ; 
- D 0 - I - 0x01C270 07:8260: 11        .byte $11   ; 
- D 0 - I - 0x01C271 07:8261: 3A        .byte $3A   ; 
- D 0 - I - 0x01C272 07:8262: 10        .byte $10   ; 
- D 0 - I - 0x01C273 07:8263: 11        .byte $11   ; 
- D 0 - I - 0x01C274 07:8264: 3A        .byte $3A   ; 



_off047_8265_05_03_01:
- D 0 - I - 0x01C275 07:8265: 03        .byte $03   ; 
- D 0 - I - 0x01C276 07:8266: 0E        .byte $0E   ; 
- D 0 - I - 0x01C277 07:8267: 04        .byte $04   ; 
- D 0 - I - 0x01C278 07:8268: 00        .byte $00   ; 
- D 0 - I - 0x01C279 07:8269: 00        .byte $00   ; 
- D 0 - I - 0x01C27A 07:826A: 00        .byte $00   ; 
- D 0 - I - 0x01C27B 07:826B: 0A        .byte $0A   ; 
- D 0 - I - 0x01C27C 07:826C: 00        .byte $00   ; 
- D 0 - I - 0x01C27D 07:826D: 00        .byte $00   ; 
- D 0 - I - 0x01C27E 07:826E: 0C        .byte $0C   ; 
- D 0 - I - 0x01C27F 07:826F: 08        .byte $08   ; 
- D 0 - I - 0x01C280 07:8270: 0C        .byte $0C   ; 
- D 0 - I - 0x01C281 07:8271: 0B        .byte $0B   ; 
- D 0 - I - 0x01C282 07:8272: 04        .byte $04   ; 
- D 0 - I - 0x01C283 07:8273: 0E        .byte $0E   ; 
- D 0 - I - 0x01C284 07:8274: 00        .byte $00   ; 
- D 0 - I - 0x01C285 07:8275: 00        .byte $00   ; 
- D 0 - I - 0x01C286 07:8276: 01        .byte $01   ; 
- D 0 - I - 0x01C287 07:8277: 05        .byte $05   ; 
- D 0 - I - 0x01C288 07:8278: 05        .byte $05   ; 
- D 0 - I - 0x01C289 07:8279: 05        .byte $05   ; 
- D 0 - I - 0x01C28A 07:827A: 08        .byte $08   ; 
- D 0 - I - 0x01C28B 07:827B: 0A        .byte $0A   ; 
- D 0 - I - 0x01C28C 07:827C: 00        .byte $00   ; 
- D 0 - I - 0x01C28D 07:827D: 00        .byte $00   ; 
- D 0 - I - 0x01C28E 07:827E: 2B        .byte $2B   ; 
- D 0 - I - 0x01C28F 07:827F: 2B        .byte $2B   ; 
- D 0 - I - 0x01C290 07:8280: 2B        .byte $2B   ; 
- D 0 - I - 0x01C291 07:8281: 19        .byte $19   ; 
- D 0 - I - 0x01C292 07:8282: 2B        .byte $2B   ; 
- D 0 - I - 0x01C293 07:8283: 2B        .byte $2B   ; 
- D 0 - I - 0x01C294 07:8284: 1D        .byte $1D   ; 
- D 0 - I - 0x01C295 07:8285: 1D        .byte $1D   ; 
- D 0 - I - 0x01C296 07:8286: 0A        .byte $0A   ; 
- D 0 - I - 0x01C297 07:8287: 0C        .byte $0C   ; 
- D 0 - I - 0x01C298 07:8288: 0C        .byte $0C   ; 
- D 0 - I - 0x01C299 07:8289: 02        .byte $02   ; 
- D 0 - I - 0x01C29A 07:828A: 0A        .byte $0A   ; 
- D 0 - I - 0x01C29B 07:828B: 03        .byte $03   ; 
- D 0 - I - 0x01C29C 07:828C: 00        .byte $00   ; 
- D 0 - I - 0x01C29D 07:828D: 00        .byte $00   ; 
- D 0 - I - 0x01C29E 07:828E: 0E        .byte $0E   ; 
- D 0 - I - 0x01C29F 07:828F: 0C        .byte $0C   ; 
- D 0 - I - 0x01C2A0 07:8290: 02        .byte $02   ; 
- D 0 - I - 0x01C2A1 07:8291: 01        .byte $01   ; 
- D 0 - I - 0x01C2A2 07:8292: 0E        .byte $0E   ; 
- D 0 - I - 0x01C2A3 07:8293: 46        .byte $46   ; 
- D 0 - I - 0x01C2A4 07:8294: 46        .byte $46   ; 
- D 0 - I - 0x01C2A5 07:8295: 42        .byte $42   ; 
- D 0 - I - 0x01C2A6 07:8296: 00        .byte $00   ; 
- D 0 - I - 0x01C2A7 07:8297: 00        .byte $00   ; 
- D 0 - I - 0x01C2A8 07:8298: 00        .byte $00   ; 
- D 0 - I - 0x01C2A9 07:8299: 00        .byte $00   ; 
- D 0 - I - 0x01C2AA 07:829A: 00        .byte $00   ; 
- D 0 - I - 0x01C2AB 07:829B: 00        .byte $00   ; 
- D 0 - I - 0x01C2AC 07:829C: 00        .byte $00   ; 
- D 0 - I - 0x01C2AD 07:829D: 00        .byte $00   ; 
- D 0 - I - 0x01C2AE 07:829E: 00        .byte $00   ; 
- D 0 - I - 0x01C2AF 07:829F: 00        .byte $00   ; 
- D 0 - I - 0x01C2B0 07:82A0: 00        .byte $00   ; 
- D 0 - I - 0x01C2B1 07:82A1: 00        .byte $00   ; 
- D 0 - I - 0x01C2B2 07:82A2: 00        .byte $00   ; 
- D 0 - I - 0x01C2B3 07:82A3: 00        .byte $00   ; 
- D 0 - I - 0x01C2B4 07:82A4: 00        .byte $00   ; 
- D 0 - I - 0x01C2B5 07:82A5: 00        .byte $00   ; 
- D 0 - I - 0x01C2B6 07:82A6: 00        .byte $00   ; 
- D 0 - I - 0x01C2B7 07:82A7: 00        .byte $00   ; 
- D 0 - I - 0x01C2B8 07:82A8: 00        .byte $00   ; 
- D 0 - I - 0x01C2B9 07:82A9: 00        .byte $00   ; 
- D 0 - I - 0x01C2BA 07:82AA: 00        .byte $00   ; 
- D 0 - I - 0x01C2BB 07:82AB: 00        .byte $00   ; 
- D 0 - I - 0x01C2BC 07:82AC: 00        .byte $00   ; 
- D 0 - I - 0x01C2BD 07:82AD: 00        .byte $00   ; 
- D 0 - I - 0x01C2BE 07:82AE: 1D        .byte $1D   ; 
- D 0 - I - 0x01C2BF 07:82AF: 1D        .byte $1D   ; 
- D 0 - I - 0x01C2C0 07:82B0: 1D        .byte $1D   ; 
- D 0 - I - 0x01C2C1 07:82B1: 2B        .byte $2B   ; 
- D 0 - I - 0x01C2C2 07:82B2: 2B        .byte $2B   ; 
- D 0 - I - 0x01C2C3 07:82B3: 2B        .byte $2B   ; 
- D 0 - I - 0x01C2C4 07:82B4: 2B        .byte $2B   ; 
- D 0 - I - 0x01C2C5 07:82B5: 1D        .byte $1D   ; 
- D 0 - I - 0x01C2C6 07:82B6: 00        .byte $00   ; 
- D 0 - I - 0x01C2C7 07:82B7: 00        .byte $00   ; 
- D 0 - I - 0x01C2C8 07:82B8: 00        .byte $00   ; 
- D 0 - I - 0x01C2C9 07:82B9: 06        .byte $06   ; 
- D 0 - I - 0x01C2CA 07:82BA: 08        .byte $08   ; 
- D 0 - I - 0x01C2CB 07:82BB: 0A        .byte $0A   ; 
- D 0 - I - 0x01C2CC 07:82BC: 03        .byte $03   ; 
- D 0 - I - 0x01C2CD 07:82BD: 00        .byte $00   ; 
- D 0 - I - 0x01C2CE 07:82BE: 46        .byte $46   ; 
- D 0 - I - 0x01C2CF 07:82BF: 42        .byte $42   ; 
- D 0 - I - 0x01C2D0 07:82C0: 42        .byte $42   ; 
- D 0 - I - 0x01C2D1 07:82C1: 43        .byte $43   ; 
- D 0 - I - 0x01C2D2 07:82C2: 0C        .byte $0C   ; 
- D 0 - I - 0x01C2D3 07:82C3: 0C        .byte $0C   ; 
- D 0 - I - 0x01C2D4 07:82C4: 42        .byte $42   ; 
- D 0 - I - 0x01C2D5 07:82C5: 46        .byte $46   ; 
- D 0 - I - 0x01C2D6 07:82C6: 00        .byte $00   ; 
- D 0 - I - 0x01C2D7 07:82C7: 00        .byte $00   ; 
- D 0 - I - 0x01C2D8 07:82C8: 00        .byte $00   ; 
- D 0 - I - 0x01C2D9 07:82C9: 00        .byte $00   ; 
- D 0 - I - 0x01C2DA 07:82CA: 00        .byte $00   ; 
- D 0 - I - 0x01C2DB 07:82CB: 00        .byte $00   ; 
- D 0 - I - 0x01C2DC 07:82CC: 04        .byte $04   ; 
- D 0 - I - 0x01C2DD 07:82CD: 00        .byte $00   ; 
- D 0 - I - 0x01C2DE 07:82CE: 04        .byte $04   ; 
- D 0 - I - 0x01C2DF 07:82CF: 00        .byte $00   ; 
- D 0 - I - 0x01C2E0 07:82D0: 00        .byte $00   ; 
- D 0 - I - 0x01C2E1 07:82D1: 00        .byte $00   ; 
- D 0 - I - 0x01C2E2 07:82D2: 00        .byte $00   ; 
- D 0 - I - 0x01C2E3 07:82D3: 00        .byte $00   ; 
- D 0 - I - 0x01C2E4 07:82D4: 08        .byte $08   ; 
- D 0 - I - 0x01C2E5 07:82D5: 09        .byte $09   ; 
- D 0 - I - 0x01C2E6 07:82D6: 08        .byte $08   ; 
- D 0 - I - 0x01C2E7 07:82D7: 05        .byte $05   ; 
- D 0 - I - 0x01C2E8 07:82D8: 05        .byte $05   ; 
- D 0 - I - 0x01C2E9 07:82D9: 05        .byte $05   ; 
- D 0 - I - 0x01C2EA 07:82DA: 05        .byte $05   ; 
- D 0 - I - 0x01C2EB 07:82DB: 05        .byte $05   ; 
- D 0 - I - 0x01C2EC 07:82DC: 0E        .byte $0E   ; 
- D 0 - I - 0x01C2ED 07:82DD: 05        .byte $05   ; 
- D 0 - I - 0x01C2EE 07:82DE: 2B        .byte $2B   ; 
- D 0 - I - 0x01C2EF 07:82DF: 19        .byte $19   ; 
- D 0 - I - 0x01C2F0 07:82E0: 2B        .byte $2B   ; 
- D 0 - I - 0x01C2F1 07:82E1: 19        .byte $19   ; 
- D 0 - I - 0x01C2F2 07:82E2: 2B        .byte $2B   ; 
- D 0 - I - 0x01C2F3 07:82E3: 2B        .byte $2B   ; 
- - - - - - 0x01C2F4 07:82E4: 2B        .byte $2B   ; 
- - - - - - 0x01C2F5 07:82E5: 2B        .byte $2B   ; 
- D 0 - I - 0x01C2F6 07:82E6: 06        .byte $06   ; 
- D 0 - I - 0x01C2F7 07:82E7: 0A        .byte $0A   ; 
- D 0 - I - 0x01C2F8 07:82E8: 08        .byte $08   ; 
- D 0 - I - 0x01C2F9 07:82E9: 03        .byte $03   ; 
- D 0 - I - 0x01C2FA 07:82EA: 06        .byte $06   ; 
- D 0 - I - 0x01C2FB 07:82EB: 07        .byte $07   ; 
- D 0 - I - 0x01C2FC 07:82EC: 0A        .byte $0A   ; 
- D 0 - I - 0x01C2FD 07:82ED: 0C        .byte $0C   ; 
- D 0 - I - 0x01C2FE 07:82EE: 42        .byte $42   ; 
- D 0 - I - 0x01C2FF 07:82EF: 0C        .byte $0C   ; 
- D 0 - I - 0x01C300 07:82F0: 0C        .byte $0C   ; 
- D 0 - I - 0x01C301 07:82F1: 46        .byte $46   ; 
- D 0 - I - 0x01C302 07:82F2: 42        .byte $42   ; 
- D 0 - I - 0x01C303 07:82F3: 41        .byte $41   ; 
- D 0 - I - 0x01C304 07:82F4: 0E        .byte $0E   ; 
- D 0 - I - 0x01C305 07:82F5: 0C        .byte $0C   ; 
- D 0 - I - 0x01C306 07:82F6: 0E        .byte $0E   ; 
- D 0 - I - 0x01C307 07:82F7: 0B        .byte $0B   ; 
- D 0 - I - 0x01C308 07:82F8: 00        .byte $00   ; 
- D 0 - I - 0x01C309 07:82F9: 00        .byte $00   ; 
- D 0 - I - 0x01C30A 07:82FA: 00        .byte $00   ; 
- D 0 - I - 0x01C30B 07:82FB: 00        .byte $00   ; 
- D 0 - I - 0x01C30C 07:82FC: 04        .byte $04   ; 
- D 0 - I - 0x01C30D 07:82FD: 0C        .byte $0C   ; 
- D 0 - I - 0x01C30E 07:82FE: 0A        .byte $0A   ; 
- D 0 - I - 0x01C30F 07:82FF: 0B        .byte $0B   ; 
- D 0 - I - 0x01C310 07:8300: 00        .byte $00   ; 
- D 0 - I - 0x01C311 07:8301: 00        .byte $00   ; 
- D 0 - I - 0x01C312 07:8302: 00        .byte $00   ; 
- D 0 - I - 0x01C313 07:8303: 00        .byte $00   ; 
- D 0 - I - 0x01C314 07:8304: 08        .byte $08   ; 
- D 0 - I - 0x01C315 07:8305: 0C        .byte $0C   ; 
- D 0 - I - 0x01C316 07:8306: 0E        .byte $0E   ; 
- D 0 - I - 0x01C317 07:8307: 05        .byte $05   ; 
- D 0 - I - 0x01C318 07:8308: 05        .byte $05   ; 
- D 0 - I - 0x01C319 07:8309: 05        .byte $05   ; 
- D 0 - I - 0x01C31A 07:830A: 05        .byte $05   ; 
- D 0 - I - 0x01C31B 07:830B: 05        .byte $05   ; 
- D 0 - I - 0x01C31C 07:830C: 05        .byte $05   ; 
- D 0 - I - 0x01C31D 07:830D: 0C        .byte $0C   ; 
- - - - - - 0x01C31E 07:830E: 2B        .byte $2B   ; 
- D 0 - I - 0x01C31F 07:830F: 2B        .byte $2B   ; 
- - - - - - 0x01C320 07:8310: 2B        .byte $2B   ; 
- - - - - - 0x01C321 07:8311: 19        .byte $19   ; 
- - - - - - 0x01C322 07:8312: 2B        .byte $2B   ; 
- - - - - - 0x01C323 07:8313: 19        .byte $19   ; 
- - - - - - 0x01C324 07:8314: 0A        .byte $0A   ; 
- - - - - - 0x01C325 07:8315: 0C        .byte $0C   ; 
- D 0 - I - 0x01C326 07:8316: 0A        .byte $0A   ; 
- D 0 - I - 0x01C327 07:8317: 0C        .byte $0C   ; 
- D 0 - I - 0x01C328 07:8318: 05        .byte $05   ; 
- D 0 - I - 0x01C329 07:8319: 05        .byte $05   ; 
- D 0 - I - 0x01C32A 07:831A: 03        .byte $03   ; 
- D 0 - I - 0x01C32B 07:831B: 1E        .byte $1E   ; 
- D 0 - I - 0x01C32C 07:831C: 15        .byte $15   ; 
- D 0 - I - 0x01C32D 07:831D: 2B        .byte $2B   ; 
- D 0 - I - 0x01C32E 07:831E: 0E        .byte $0E   ; 
- D 0 - I - 0x01C32F 07:831F: 02        .byte $02   ; 
- D 0 - I - 0x01C330 07:8320: 41        .byte $41   ; 
- D 0 - I - 0x01C331 07:8321: 42        .byte $42   ; 
- D 0 - I - 0x01C332 07:8322: 42        .byte $42   ; 
- D 0 - I - 0x01C333 07:8323: 1A        .byte $1A   ; 
- D 0 - I - 0x01C334 07:8324: 3A        .byte $3A   ; 
- D 0 - I - 0x01C335 07:8325: 0C        .byte $0C   ; 



_off047_8326_05_03_00:
- D 0 - I - 0x01C336 07:8326: 01        .byte $01   ; 
- D 0 - I - 0x01C337 07:8327: 0A        .byte $0A   ; 
- D 0 - I - 0x01C338 07:8328: 01        .byte $01   ; 
- D 0 - I - 0x01C339 07:8329: 00        .byte $00   ; 
- D 0 - I - 0x01C33A 07:832A: 00        .byte $00   ; 
- D 0 - I - 0x01C33B 07:832B: 1A        .byte $1A   ; 
- D 0 - I - 0x01C33C 07:832C: 0C        .byte $0C   ; 
- D 0 - I - 0x01C33D 07:832D: 08        .byte $08   ; 
- D 0 - I - 0x01C33E 07:832E: 0C        .byte $0C   ; 
- D 0 - I - 0x01C33F 07:832F: 0E        .byte $0E   ; 
- D 0 - I - 0x01C340 07:8330: 01        .byte $01   ; 
- D 0 - I - 0x01C341 07:8331: 00        .byte $00   ; 
- D 0 - I - 0x01C342 07:8332: 1A        .byte $1A   ; 
- D 0 - I - 0x01C343 07:8333: 0C        .byte $0C   ; 
- D 0 - I - 0x01C344 07:8334: 0C        .byte $0C   ; 
- D 0 - I - 0x01C345 07:8335: 3A        .byte $3A   ; 
- D 0 - I - 0x01C346 07:8336: 0C        .byte $0C   ; 
- D 0 - I - 0x01C347 07:8337: 3A        .byte $3A   ; 
- D 0 - I - 0x01C348 07:8338: 01        .byte $01   ; 
- D 0 - I - 0x01C349 07:8339: 1A        .byte $1A   ; 
- D 0 - I - 0x01C34A 07:833A: 0C        .byte $0C   ; 
- D 0 - I - 0x01C34B 07:833B: 2B        .byte $2B   ; 
- D 0 - I - 0x01C34C 07:833C: 07        .byte $07   ; 
- D 0 - I - 0x01C34D 07:833D: 0E        .byte $0E   ; 
- D 0 - I - 0x01C34E 07:833E: 0A        .byte $0A   ; 
- D 0 - I - 0x01C34F 07:833F: 0A        .byte $0A   ; 
- D 0 - I - 0x01C350 07:8340: 2B        .byte $2B   ; 
- D 0 - I - 0x01C351 07:8341: 2B        .byte $2B   ; 
- D 0 - I - 0x01C352 07:8342: 2B        .byte $2B   ; 
- D 0 - I - 0x01C353 07:8343: 03        .byte $03   ; 
- D 0 - I - 0x01C354 07:8344: 1E        .byte $1E   ; 
- D 0 - I - 0x01C355 07:8345: 2B        .byte $2B   ; 
- D 0 - I - 0x01C356 07:8346: 2B        .byte $2B   ; 
- D 0 - I - 0x01C357 07:8347: 0E        .byte $0E   ; 
- D 0 - I - 0x01C358 07:8348: 05        .byte $05   ; 
- D 0 - I - 0x01C359 07:8349: 05        .byte $05   ; 
- D 0 - I - 0x01C35A 07:834A: 0C        .byte $0C   ; 
- D 0 - I - 0x01C35B 07:834B: 42        .byte $42   ; 
- D 0 - I - 0x01C35C 07:834C: 46        .byte $46   ; 
- D 0 - I - 0x01C35D 07:834D: 0C        .byte $0C   ; 
- D 0 - I - 0x01C35E 07:834E: 05        .byte $05   ; 
- D 0 - I - 0x01C35F 07:834F: 0F        .byte $0F   ; 
- D 0 - I - 0x01C360 07:8350: 0F        .byte $0F   ; 
- D 0 - I - 0x01C361 07:8351: 0F        .byte $0F   ; 
- D 0 - I - 0x01C362 07:8352: 0F        .byte $0F   ; 
- D 0 - I - 0x01C363 07:8353: 0F        .byte $0F   ; 
- D 0 - I - 0x01C364 07:8354: 0F        .byte $0F   ; 
- D 0 - I - 0x01C365 07:8355: 0F        .byte $0F   ; 
- D 0 - I - 0x01C366 07:8356: 0F        .byte $0F   ; 
- D 0 - I - 0x01C367 07:8357: 04        .byte $04   ; 
- D 0 - I - 0x01C368 07:8358: 06        .byte $06   ; 
- D 0 - I - 0x01C369 07:8359: 01        .byte $01   ; 
- D 0 - I - 0x01C36A 07:835A: 0C        .byte $0C   ; 
- D 0 - I - 0x01C36B 07:835B: 0C        .byte $0C   ; 
- D 0 - I - 0x01C36C 07:835C: 01        .byte $01   ; 
- D 0 - I - 0x01C36D 07:835D: 0E        .byte $0E   ; 
- D 0 - I - 0x01C36E 07:835E: 01        .byte $01   ; 
- D 0 - I - 0x01C36F 07:835F: 0A        .byte $0A   ; 
- D 0 - I - 0x01C370 07:8360: 00        .byte $00   ; 
- D 0 - I - 0x01C371 07:8361: 08        .byte $08   ; 
- D 0 - I - 0x01C372 07:8362: 0C        .byte $0C   ; 
- D 0 - I - 0x01C373 07:8363: 0C        .byte $0C   ; 
- D 0 - I - 0x01C374 07:8364: 08        .byte $08   ; 
- D 0 - I - 0x01C375 07:8365: 36        .byte $36   ; 
- D 0 - I - 0x01C376 07:8366: 01        .byte $01   ; 
- D 0 - I - 0x01C377 07:8367: 3A        .byte $3A   ; 
- D 0 - I - 0x01C378 07:8368: 12        .byte $12   ; 
- D 0 - I - 0x01C379 07:8369: 0C        .byte $0C   ; 
- D 0 - I - 0x01C37A 07:836A: 02        .byte $02   ; 
- D 0 - I - 0x01C37B 07:836B: 07        .byte $07   ; 
- D 0 - I - 0x01C37C 07:836C: 0C        .byte $0C   ; 
- D 0 - I - 0x01C37D 07:836D: 36        .byte $36   ; 
- D 0 - I - 0x01C37E 07:836E: 08        .byte $08   ; 
- D 0 - I - 0x01C37F 07:836F: 0A        .byte $0A   ; 
- D 0 - I - 0x01C380 07:8370: 38        .byte $38   ; 
- D 0 - I - 0x01C381 07:8371: 3A        .byte $3A   ; 
- D 0 - I - 0x01C382 07:8372: 2D        .byte $2D   ; 
- D 0 - I - 0x01C383 07:8373: 0D        .byte $0D   ; 
- D 0 - I - 0x01C384 07:8374: 3A        .byte $3A   ; 
- D 0 - I - 0x01C385 07:8375: 3E        .byte $3E   ; 
- D 0 - I - 0x01C386 07:8376: 0A        .byte $0A   ; 
- D 0 - I - 0x01C387 07:8377: 05        .byte $05   ; 
- D 0 - I - 0x01C388 07:8378: 3E        .byte $3E   ; 
- D 0 - I - 0x01C389 07:8379: 05        .byte $05   ; 
- D 0 - I - 0x01C38A 07:837A: 36        .byte $36   ; 
- D 0 - I - 0x01C38B 07:837B: 36        .byte $36   ; 
- D 0 - I - 0x01C38C 07:837C: 05        .byte $05   ; 
- D 0 - I - 0x01C38D 07:837D: 36        .byte $36   ; 
- D 0 - I - 0x01C38E 07:837E: 05        .byte $05   ; 
- D 0 - I - 0x01C38F 07:837F: 0F        .byte $0F   ; 
- D 0 - I - 0x01C390 07:8380: 0F        .byte $0F   ; 
- D 0 - I - 0x01C391 07:8381: 0F        .byte $0F   ; 
- D 0 - I - 0x01C392 07:8382: 0F        .byte $0F   ; 
- D 0 - I - 0x01C393 07:8383: 0F        .byte $0F   ; 
- D 0 - I - 0x01C394 07:8384: 0F        .byte $0F   ; 
- D 0 - I - 0x01C395 07:8385: 0F        .byte $0F   ; 
- D 0 - I - 0x01C396 07:8386: 0F        .byte $0F   ; 



_off047_0x01C397_0D_03_00:
- D 0 - I - 0x01C397 07:8387: 02        .byte $02   ; 
- D 0 - I - 0x01C398 07:8388: 01        .byte $01   ; 
- D 0 - I - 0x01C399 07:8389: 0A        .byte $0A   ; 
- D 0 - I - 0x01C39A 07:838A: 0C        .byte $0C   ; 
- D 0 - I - 0x01C39B 07:838B: 01        .byte $01   ; 
- D 0 - I - 0x01C39C 07:838C: 01        .byte $01   ; 
- D 0 - I - 0x01C39D 07:838D: 0A        .byte $0A   ; 
- D 0 - I - 0x01C39E 07:838E: 01        .byte $01   ; 
- D 0 - I - 0x01C39F 07:838F: 01        .byte $01   ; 
- D 0 - I - 0x01C3A0 07:8390: 0A        .byte $0A   ; 
- D 0 - I - 0x01C3A1 07:8391: 0E        .byte $0E   ; 
- D 0 - I - 0x01C3A2 07:8392: 05        .byte $05   ; 
- D 0 - I - 0x01C3A3 07:8393: 05        .byte $05   ; 
- D 0 - I - 0x01C3A4 07:8394: 05        .byte $05   ; 
- D 0 - I - 0x01C3A5 07:8395: 05        .byte $05   ; 
- D 0 - I - 0x01C3A6 07:8396: 05        .byte $05   ; 
- D 0 - I - 0x01C3A7 07:8397: 05        .byte $05   ; 
- D 0 - I - 0x01C3A8 07:8398: 2B        .byte $2B   ; 
- D 0 - I - 0x01C3A9 07:8399: 2B        .byte $2B   ; 
- D 0 - I - 0x01C3AA 07:839A: 2B        .byte $2B   ; 
- D 0 - I - 0x01C3AB 07:839B: 51        .byte $51   ; 
- D 0 - I - 0x01C3AC 07:839C: 2B        .byte $2B   ; 
- D 0 - I - 0x01C3AD 07:839D: 2F        .byte $2F   ; 
- D 0 - I - 0x01C3AE 07:839E: 23        .byte $23   ; 
- D 0 - I - 0x01C3AF 07:839F: 23        .byte $23   ; 
- D 0 - I - 0x01C3B0 07:83A0: 0E        .byte $0E   ; 
- D 0 - I - 0x01C3B1 07:83A1: 02        .byte $02   ; 
- D 0 - I - 0x01C3B2 07:83A2: 52        .byte $52   ; 
- D 0 - I - 0x01C3B3 07:83A3: 05        .byte $05   ; 
- D 0 - I - 0x01C3B4 07:83A4: 05        .byte $05   ; 
- D 0 - I - 0x01C3B5 07:83A5: 21        .byte $21   ; 
- D 0 - I - 0x01C3B6 07:83A6: 05        .byte $05   ; 
- D 0 - I - 0x01C3B7 07:83A7: 05        .byte $05   ; 
- D 0 - I - 0x01C3B8 07:83A8: 2D        .byte $2D   ; 
- D 0 - I - 0x01C3B9 07:83A9: 50        .byte $50   ; 
- D 0 - I - 0x01C3BA 07:83AA: 4F        .byte $4F   ; 
- D 0 - I - 0x01C3BB 07:83AB: 48        .byte $48   ; 
- D 0 - I - 0x01C3BC 07:83AC: 48        .byte $48   ; 
- D 0 - I - 0x01C3BD 07:83AD: 49        .byte $49   ; 
- D 0 - I - 0x01C3BE 07:83AE: 4A        .byte $4A   ; 
- D 0 - I - 0x01C3BF 07:83AF: 4A        .byte $4A   ; 
- D 0 - I - 0x01C3C0 07:83B0: 0C        .byte $0C   ; 
- D 0 - I - 0x01C3C1 07:83B1: 0C        .byte $0C   ; 
- D 0 - I - 0x01C3C2 07:83B2: 21        .byte $21   ; 
- D 0 - I - 0x01C3C3 07:83B3: 4C        .byte $4C   ; 
- D 0 - I - 0x01C3C4 07:83B4: 4C        .byte $4C   ; 
- D 0 - I - 0x01C3C5 07:83B5: 4D        .byte $4D   ; 
- D 0 - I - 0x01C3C6 07:83B6: 4E        .byte $4E   ; 
- D 0 - I - 0x01C3C7 07:83B7: 4E        .byte $4E   ; 
- D 0 - I - 0x01C3C8 07:83B8: 0A        .byte $0A   ; 
- D 0 - I - 0x01C3C9 07:83B9: 01        .byte $01   ; 
- D 0 - I - 0x01C3CA 07:83BA: 20        .byte $20   ; 
- D 0 - I - 0x01C3CB 07:83BB: 21        .byte $21   ; 
- D 0 - I - 0x01C3CC 07:83BC: 21        .byte $21   ; 
- D 0 - I - 0x01C3CD 07:83BD: 22        .byte $22   ; 
- D 0 - I - 0x01C3CE 07:83BE: 01        .byte $01   ; 
- D 0 - I - 0x01C3CF 07:83BF: 0A        .byte $0A   ; 
- D 0 - I - 0x01C3D0 07:83C0: 05        .byte $05   ; 
- D 0 - I - 0x01C3D1 07:83C1: 05        .byte $05   ; 
- D 0 - I - 0x01C3D2 07:83C2: 24        .byte $24   ; 
- D 0 - I - 0x01C3D3 07:83C3: 21        .byte $21   ; 
- D 0 - I - 0x01C3D4 07:83C4: 21        .byte $21   ; 
- D 0 - I - 0x01C3D5 07:83C5: 26        .byte $26   ; 
- D 0 - I - 0x01C3D6 07:83C6: 05        .byte $05   ; 
- D 0 - I - 0x01C3D7 07:83C7: 05        .byte $05   ; 
- D 0 - I - 0x01C3D8 07:83C8: 23        .byte $23   ; 
- D 0 - I - 0x01C3D9 07:83C9: 23        .byte $23   ; 
- D 0 - I - 0x01C3DA 07:83CA: 23        .byte $23   ; 
- D 0 - I - 0x01C3DB 07:83CB: 23        .byte $23   ; 
- D 0 - I - 0x01C3DC 07:83CC: 27        .byte $27   ; 
- D 0 - I - 0x01C3DD 07:83CD: 27        .byte $27   ; 
- D 0 - I - 0x01C3DE 07:83CE: 27        .byte $27   ; 
- D 0 - I - 0x01C3DF 07:83CF: 27        .byte $27   ; 
- D 0 - I - 0x01C3E0 07:83D0: 05        .byte $05   ; 
- D 0 - I - 0x01C3E1 07:83D1: 07        .byte $07   ; 
- D 0 - I - 0x01C3E2 07:83D2: 0C        .byte $0C   ; 
- D 0 - I - 0x01C3E3 07:83D3: 05        .byte $05   ; 
- D 0 - I - 0x01C3E4 07:83D4: 05        .byte $05   ; 
- D 0 - I - 0x01C3E5 07:83D5: 0C        .byte $0C   ; 
- D 0 - I - 0x01C3E6 07:83D6: 02        .byte $02   ; 
- D 0 - I - 0x01C3E7 07:83D7: 05        .byte $05   ; 
- D 0 - I - 0x01C3E8 07:83D8: 4A        .byte $4A   ; 
- D 0 - I - 0x01C3E9 07:83D9: 4A        .byte $4A   ; 
- D 0 - I - 0x01C3EA 07:83DA: 4A        .byte $4A   ; 
- D 0 - I - 0x01C3EB 07:83DB: 4A        .byte $4A   ; 
- D 0 - I - 0x01C3EC 07:83DC: 4A        .byte $4A   ; 
- D 0 - I - 0x01C3ED 07:83DD: 4A        .byte $4A   ; 
- D 0 - I - 0x01C3EE 07:83DE: 4A        .byte $4A   ; 
- D 0 - I - 0x01C3EF 07:83DF: 4A        .byte $4A   ; 
- D 0 - I - 0x01C3F0 07:83E0: 4E        .byte $4E   ; 
- D 0 - I - 0x01C3F1 07:83E1: 4E        .byte $4E   ; 
- D 0 - I - 0x01C3F2 07:83E2: 4E        .byte $4E   ; 
- D 0 - I - 0x01C3F3 07:83E3: 4E        .byte $4E   ; 
- D 0 - I - 0x01C3F4 07:83E4: 4E        .byte $4E   ; 
- D 0 - I - 0x01C3F5 07:83E5: 4E        .byte $4E   ; 
- D 0 - I - 0x01C3F6 07:83E6: 4E        .byte $4E   ; 
- D 0 - I - 0x01C3F7 07:83E7: 4E        .byte $4E   ; 
- D 0 - I - 0x01C3F8 07:83E8: 01        .byte $01   ; 
- D 0 - I - 0x01C3F9 07:83E9: 0A        .byte $0A   ; 
- D 0 - I - 0x01C3FA 07:83EA: 01        .byte $01   ; 
- D 0 - I - 0x01C3FB 07:83EB: 0A        .byte $0A   ; 
- D 0 - I - 0x01C3FC 07:83EC: 01        .byte $01   ; 
- D 0 - I - 0x01C3FD 07:83ED: 1A        .byte $1A   ; 
- D 0 - I - 0x01C3FE 07:83EE: 0C        .byte $0C   ; 
- D 0 - I - 0x01C3FF 07:83EF: 01        .byte $01   ; 
- D 0 - I - 0x01C400 07:83F0: 05        .byte $05   ; 
- D 0 - I - 0x01C401 07:83F1: 05        .byte $05   ; 
- D 0 - I - 0x01C402 07:83F2: 05        .byte $05   ; 
- D 0 - I - 0x01C403 07:83F3: 0E        .byte $0E   ; 
- D 0 - I - 0x01C404 07:83F4: 52        .byte $52   ; 
- D 0 - I - 0x01C405 07:83F5: 0C        .byte $0C   ; 
- D 0 - I - 0x01C406 07:83F6: 0C        .byte $0C   ; 
- D 0 - I - 0x01C407 07:83F7: 01        .byte $01   ; 
- D 0 - I - 0x01C408 07:83F8: 27        .byte $27   ; 
- D 0 - I - 0x01C409 07:83F9: 25        .byte $25   ; 
- D 0 - I - 0x01C40A 07:83FA: 2B        .byte $2B   ; 
- D 0 - I - 0x01C40B 07:83FB: 2B        .byte $2B   ; 
- D 0 - I - 0x01C40C 07:83FC: 2B        .byte $2B   ; 
- D 0 - I - 0x01C40D 07:83FD: 2B        .byte $2B   ; 
- D 0 - I - 0x01C40E 07:83FE: 2B        .byte $2B   ; 
- D 0 - I - 0x01C40F 07:83FF: 2B        .byte $2B   ; 
- D 0 - I - 0x01C410 07:8400: 05        .byte $05   ; 
- D 0 - I - 0x01C411 07:8401: 21        .byte $21   ; 
- D 0 - I - 0x01C412 07:8402: 05        .byte $05   ; 
- D 0 - I - 0x01C413 07:8403: 05        .byte $05   ; 
- D 0 - I - 0x01C414 07:8404: 07        .byte $07   ; 
- D 0 - I - 0x01C415 07:8405: 0C        .byte $0C   ; 
- D 0 - I - 0x01C416 07:8406: 0C        .byte $0C   ; 
- D 0 - I - 0x01C417 07:8407: 0C        .byte $0C   ; 
- D 0 - I - 0x01C418 07:8408: 4A        .byte $4A   ; 
- D 0 - I - 0x01C419 07:8409: 49        .byte $49   ; 
- D 0 - I - 0x01C41A 07:840A: 4A        .byte $4A   ; 
- D 0 - I - 0x01C41B 07:840B: 4A        .byte $4A   ; 
- D 0 - I - 0x01C41C 07:840C: 4A        .byte $4A   ; 
- D 0 - I - 0x01C41D 07:840D: 4B        .byte $4B   ; 
- D 0 - I - 0x01C41E 07:840E: 2D        .byte $2D   ; 
- D 0 - I - 0x01C41F 07:840F: 0D        .byte $0D   ; 
- D 0 - I - 0x01C420 07:8410: 4E        .byte $4E   ; 
- D 0 - I - 0x01C421 07:8411: 4E        .byte $4E   ; 
- D 0 - I - 0x01C422 07:8412: 4E        .byte $4E   ; 
- D 0 - I - 0x01C423 07:8413: 4E        .byte $4E   ; 
- D 0 - I - 0x01C424 07:8414: 4E        .byte $4E   ; 
- D 0 - I - 0x01C425 07:8415: 21        .byte $21   ; 
- D 0 - I - 0x01C426 07:8416: 0C        .byte $0C   ; 
- D 0 - I - 0x01C427 07:8417: 0C        .byte $0C   ; 



_off047_0x01C428_0D_02_02:
- D 0 - I - 0x01C428 07:8418: 00        .byte $00   ; 
- D 0 - I - 0x01C429 07:8419: 13        .byte $13   ; 
- D 0 - I - 0x01C42A 07:841A: 01        .byte $01   ; 
- D 0 - I - 0x01C42B 07:841B: 01        .byte $01   ; 
- D 0 - I - 0x01C42C 07:841C: 01        .byte $01   ; 
- D 0 - I - 0x01C42D 07:841D: 01        .byte $01   ; 
- D 0 - I - 0x01C42E 07:841E: 01        .byte $01   ; 
- D 0 - I - 0x01C42F 07:841F: 36        .byte $36   ; 
- D 0 - I - 0x01C430 07:8420: 01        .byte $01   ; 
- D 0 - I - 0x01C431 07:8421: 13        .byte $13   ; 
- D 0 - I - 0x01C432 07:8422: 0C        .byte $0C   ; 
- D 0 - I - 0x01C433 07:8423: 0C        .byte $0C   ; 
- D 0 - I - 0x01C434 07:8424: 05        .byte $05   ; 
- D 0 - I - 0x01C435 07:8425: 05        .byte $05   ; 
- D 0 - I - 0x01C436 07:8426: 05        .byte $05   ; 
- D 0 - I - 0x01C437 07:8427: 05        .byte $05   ; 
- D 0 - I - 0x01C438 07:8428: 05        .byte $05   ; 
- D 0 - I - 0x01C439 07:8429: 13        .byte $13   ; 
- D 0 - I - 0x01C43A 07:842A: 0C        .byte $0C   ; 
- D 0 - I - 0x01C43B 07:842B: 02        .byte $02   ; 
- D 0 - I - 0x01C43C 07:842C: 01        .byte $01   ; 
- D 0 - I - 0x01C43D 07:842D: 15        .byte $15   ; 
- D 0 - I - 0x01C43E 07:842E: 31        .byte $31   ; 
- D 0 - I - 0x01C43F 07:842F: 3E        .byte $3E   ; 
- D 0 - I - 0x01C440 07:8430: 13        .byte $13   ; 
- D 0 - I - 0x01C441 07:8431: 54        .byte $54   ; 
- D 0 - I - 0x01C442 07:8432: 0C        .byte $0C   ; 
- D 0 - I - 0x01C443 07:8433: 0C        .byte $0C   ; 
- D 0 - I - 0x01C444 07:8434: 14        .byte $14   ; 
- D 0 - I - 0x01C445 07:8435: 0C        .byte $0C   ; 
- D 0 - I - 0x01C446 07:8436: 0C        .byte $0C   ; 
- D 0 - I - 0x01C447 07:8437: 36        .byte $36   ; 
- D 0 - I - 0x01C448 07:8438: 13        .byte $13   ; 
- D 0 - I - 0x01C449 07:8439: 55        .byte $55   ; 
- D 0 - I - 0x01C44A 07:843A: 0D        .byte $0D   ; 
- D 0 - I - 0x01C44B 07:843B: 45        .byte $45   ; 
- D 0 - I - 0x01C44C 07:843C: 47        .byte $47   ; 
- D 0 - I - 0x01C44D 07:843D: 0C        .byte $0C   ; 
- D 0 - I - 0x01C44E 07:843E: 53        .byte $53   ; 
- D 0 - I - 0x01C44F 07:843F: 3A        .byte $3A   ; 
- D 0 - I - 0x01C450 07:8440: 13        .byte $13   ; 
- D 0 - I - 0x01C451 07:8441: 13        .byte $13   ; 
- D 0 - I - 0x01C452 07:8442: 0C        .byte $0C   ; 
- D 0 - I - 0x01C453 07:8443: 0C        .byte $0C   ; 
- D 0 - I - 0x01C454 07:8444: 36        .byte $36   ; 
- D 0 - I - 0x01C455 07:8445: 17        .byte $17   ; 
- D 0 - I - 0x01C456 07:8446: 0C        .byte $0C   ; 
- D 0 - I - 0x01C457 07:8447: 3E        .byte $3E   ; 
- D 0 - I - 0x01C458 07:8448: 13        .byte $13   ; 



_off045_0x01C459_05:
; 00 
- D 0 - I - 0x01C459 07:8449: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 0 - I - 0x01C45D 07:844D: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 0 - I - 0x01C461 07:8451: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 0 - I - 0x01C465 07:8455: 3F        .byte $3F, $3F, $3F, $3F   ; 
; 01 
- D 0 - I - 0x01C469 07:8459: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01C46D 07:845D: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01C471 07:8461: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01C475 07:8465: 00        .byte $00, $00, $00, $00   ; 
; 02 
- D 0 - I - 0x01C479 07:8469: 80        .byte $80, $81, $82, $83   ; 
- D 0 - I - 0x01C47D 07:846D: 90        .byte $90, $91, $92, $00   ; 
- D 0 - I - 0x01C481 07:8471: A0        .byte $A0, $A1, $00, $00   ; 
- D 0 - I - 0x01C485 07:8475: B0        .byte $B0, $B1, $00, $00   ; 
; 03 
- D 0 - I - 0x01C489 07:8479: 00        .byte $00, $00, $00, $A5   ; 
- D 0 - I - 0x01C48D 07:847D: 00        .byte $00, $A5, $3F, $3F   ; 
- D 0 - I - 0x01C491 07:8481: A5        .byte $A5, $3F, $3F, $3F   ; 
- D 0 - I - 0x01C495 07:8485: 3F        .byte $3F, $3F, $3F, $3F   ; 
; 04 
- D 0 - I - 0x01C499 07:8489: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 0 - I - 0x01C49D 07:848D: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 0 - I - 0x01C4A1 07:8491: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 0 - I - 0x01C4A5 07:8495: 98        .byte $98, $89, $8A, $3F   ; 
; 05 
- D 0 - I - 0x01C4A9 07:8499: A3        .byte $A3, $A4, $A2, $A3   ; 
- D 0 - I - 0x01C4AD 07:849D: B3        .byte $B3, $B4, $B2, $B3   ; 
- D 0 - I - 0x01C4B1 07:84A1: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01C4B5 07:84A5: 00        .byte $00, $00, $00, $00   ; 
; 06 
- D 0 - I - 0x01C4B9 07:84A9: B5        .byte $B5, $00, $00, $00   ; 
- D 0 - I - 0x01C4BD 07:84AD: 3F        .byte $3F, $B5, $00, $00   ; 
- D 0 - I - 0x01C4C1 07:84B1: 3F        .byte $3F, $3F, $3F, $B5   ; 
- D 0 - I - 0x01C4C5 07:84B5: 3F        .byte $3F, $3F, $3F, $3F   ; 
; 07 
- D 0 - I - 0x01C4C9 07:84B9: 84        .byte $84, $85, $86, $87   ; 
- D 0 - I - 0x01C4CD 07:84BD: 00        .byte $00, $95, $96, $97   ; 
- D 0 - I - 0x01C4D1 07:84C1: 00        .byte $00, $00, $A6, $A7   ; 
- D 0 - I - 0x01C4D5 07:84C5: 00        .byte $00, $00, $8D, $8E   ; 
; 08 
- D 0 - I - 0x01C4D9 07:84C9: 98        .byte $98, $99, $9B, $00   ; 
- D 0 - I - 0x01C4DD 07:84CD: 98        .byte $98, $99, $9A, $9B   ; 
- D 0 - I - 0x01C4E1 07:84D1: 93        .byte $93, $94, $93, $94   ; 
- D 0 - I - 0x01C4E5 07:84D5: A2        .byte $A2, $A3, $A3, $A4   ; 
; 09 
- D 0 - I - 0x01C4E9 07:84D9: 8A        .byte $8A, $3F, $3F, $3F   ; 
- D 0 - I - 0x01C4ED 07:84DD: 00        .byte $00, $3F, $3F, $3F   ; 
- D 0 - I - 0x01C4F1 07:84E1: 00        .byte $00, $3F, $3F, $3F   ; 
- D 0 - I - 0x01C4F5 07:84E5: 00        .byte $00, $3F, $3F, $3F   ; 
; 0A 
- D 0 - I - 0x01C4F9 07:84E9: 98        .byte $98, $99, $9A, $9B   ; 
- D 0 - I - 0x01C4FD 07:84ED: 98        .byte $98, $99, $9A, $9B   ; 
- D 0 - I - 0x01C501 07:84F1: A8        .byte $A8, $A9, $A9, $AB   ; 
- D 0 - I - 0x01C505 07:84F5: AC        .byte $AC, $AD, $AE, $AF   ; 
; 0B 
- D 0 - I - 0x01C509 07:84F9: 00        .byte $00, $3F, $3F, $3F   ; 
- D 0 - I - 0x01C50D 07:84FD: 00        .byte $00, $3F, $3F, $3F   ; 
- D 0 - I - 0x01C511 07:8501: 00        .byte $00, $3F, $3F, $3F   ; 
- D 0 - I - 0x01C515 07:8505: 00        .byte $00, $3F, $3F, $3F   ; 
; 0C 
- D 0 - I - 0x01C519 07:8509: 93        .byte $93, $94, $93, $94   ; 
- D 0 - I - 0x01C51D 07:850D: A3        .byte $A3, $A4, $A2, $A3   ; 
- D 0 - I - 0x01C521 07:8511: 9E        .byte $9E, $A3, $A3, $A4   ; 
- D 0 - I - 0x01C525 07:8515: B2        .byte $B2, $B3, $B3, $B4   ; 
; 0D 
- D 0 - I - 0x01C529 07:8519: 00        .byte $00, $00, $8D, $9A   ; 
- D 0 - I - 0x01C52D 07:851D: 00        .byte $00, $00, $8D, $9A   ; 
- D 0 - I - 0x01C531 07:8521: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01C535 07:8525: BD        .byte $BD, $BF, $BD, $BF   ; 
; 0E 
- D 0 - I - 0x01C539 07:8529: AC        .byte $AC, $AE, $AD, $AF   ; 
- D 0 - I - 0x01C53D 07:852D: A8        .byte $A8, $A9, $AB, $00   ; 
- D 0 - I - 0x01C541 07:8531: 93        .byte $93, $94, $93, $94   ; 
- D 0 - I - 0x01C545 07:8535: A2        .byte $A2, $A3, $A3, $A4   ; 
; 0F 
- D 0 - I - 0x01C549 07:8539: 64        .byte $64, $67, $64, $64   ; 
- D 0 - I - 0x01C54D 07:853D: 42        .byte $42, $43, $44, $40   ; 
- D 0 - I - 0x01C551 07:8541: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 0 - I - 0x01C555 07:8545: 3F        .byte $3F, $3F, $3F, $3F   ; 
; 10 
- D 0 - I - 0x01C559 07:8549: 80        .byte $80, $81, $82, $83   ; 
- D 0 - I - 0x01C55D 07:854D: 90        .byte $90, $91, $92, $00   ; 
- D 0 - I - 0x01C561 07:8551: A0        .byte $A0, $A1, $00, $00   ; 
- D 0 - I - 0x01C565 07:8555: B0        .byte $B0, $B1, $00, $00   ; 
; 11 
- D 0 - I - 0x01C569 07:8559: 84        .byte $84, $85, $86, $87   ; 
- D 0 - I - 0x01C56D 07:855D: 00        .byte $00, $95, $96, $97   ; 
- D 0 - I - 0x01C571 07:8561: 00        .byte $00, $00, $A6, $A7   ; 
- D 0 - I - 0x01C575 07:8565: 00        .byte $00, $00, $8D, $8E   ; 
; 12 
- D 0 - I - 0x01C579 07:8569: 9F        .byte $9F, $9F, $9F, $9F   ; 
- D 0 - I - 0x01C57D 07:856D: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01C581 07:8571: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01C585 07:8575: 00        .byte $00, $00, $00, $00   ; 
; 13 
- D 0 - I - 0x01C589 07:8579: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01C58D 07:857D: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01C591 07:8581: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01C595 07:8585: BD        .byte $BD, $BF, $BD, $BF   ; 
; 14 
- D 0 - I - 0x01C599 07:8589: A2        .byte $A2, $A3, $00, $8B   ; 
- D 0 - I - 0x01C59D 07:858D: B2        .byte $B2, $B4, $8B, $00   ; 
- D 0 - I - 0x01C5A1 07:8591: 00        .byte $00, $8B, $A2, $A3   ; 
- D 0 - I - 0x01C5A5 07:8595: 8B        .byte $8B, $00, $B2, $B3   ; 
; 15 
- D 0 - I - 0x01C5A9 07:8599: BC        .byte $BC, $BE, $BA, $B8   ; 
- D 0 - I - 0x01C5AD 07:859D: BD        .byte $BD, $B4, $B8, $B9   ; 
- D 0 - I - 0x01C5B1 07:85A1: 00        .byte $00, $8B, $A2, $A3   ; 
- D 0 - I - 0x01C5B5 07:85A5: 8B        .byte $8B, $00, $B2, $B3   ; 
; 16 
- D 0 - I - 0x01C5B9 07:85A9: B8        .byte $B8, $BB, $BC, $BE   ; 
- D 0 - I - 0x01C5BD 07:85AD: B9        .byte $B9, $B8, $B2, $BF   ; 
- D 0 - I - 0x01C5C1 07:85B1: A3        .byte $A3, $A3, $8B, $00   ; 
- D 0 - I - 0x01C5C5 07:85B5: B3        .byte $B3, $B4, $00, $8B   ; 
; 17 
- D 0 - I - 0x01C5C9 07:85B9: 8B        .byte $8B, $00, $A3, $A4   ; 
- D 0 - I - 0x01C5CD 07:85BD: 00        .byte $00, $8B, $B3, $B4   ; 
- D 0 - I - 0x01C5D1 07:85C1: A3        .byte $A3, $A3, $8B, $00   ; 
- D 0 - I - 0x01C5D5 07:85C5: B3        .byte $B3, $B4, $00, $8B   ; 
; 18 
- D 0 - I - 0x01C5D9 07:85C9: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01C5DD 07:85CD: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01C5E1 07:85D1: 00        .byte $00, $00, $3C, $00   ; 
- D 0 - I - 0x01C5E5 07:85D5: 00        .byte $00, $00, $3A, $00   ; 
; 19 
- D 0 - I - 0x01C5E9 07:85D9: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01C5ED 07:85DD: 8C        .byte $8C, $00, $00, $8F   ; 
- D 0 - I - 0x01C5F1 07:85E1: 9C        .byte $9C, $9D, $9E, $A3   ; 
- D 0 - I - 0x01C5F5 07:85E5: B2        .byte $B2, $B3, $B3, $B4   ; 
; 1A 
- D 0 - I - 0x01C5F9 07:85E9: 3F        .byte $3F, $3F, $00, $8B   ; 
- D 0 - I - 0x01C5FD 07:85ED: 9F        .byte $9F, $9F, $8B, $00   ; 
- D 0 - I - 0x01C601 07:85F1: 00        .byte $00, $8B, $9E, $A3   ; 
- D 0 - I - 0x01C605 07:85F5: 8B        .byte $8B, $00, $B2, $B3   ; 
; 1B 
- D 0 - I - 0x01C609 07:85F9: 8B        .byte $8B, $00, $8A, $3F   ; 
- D 0 - I - 0x01C60D 07:85FD: 00        .byte $00, $8B, $00, $8A   ; 
- D 0 - I - 0x01C611 07:8601: A3        .byte $A3, $8C, $8B, $00   ; 
- D 0 - I - 0x01C615 07:8605: B3        .byte $B3, $B4, $00, $8B   ; 
; 1C 
- D 0 - I - 0x01C619 07:8609: 00        .byte $00, $00, $3C, $00   ; 
- D 0 - I - 0x01C61D 07:860D: 00        .byte $00, $00, $3B, $00   ; 
- D 0 - I - 0x01C621 07:8611: 00        .byte $00, $00, $3A, $00   ; 
- D 0 - I - 0x01C625 07:8615: 00        .byte $00, $00, $3C, $00   ; 
; 1D 
- D 0 - I - 0x01C629 07:8619: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01C62D 07:861D: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01C631 07:8621: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 0 - I - 0x01C635 07:8625: 3F        .byte $3F, $3F, $3F, $3F   ; 
; 1E 
- D 0 - I - 0x01C639 07:8629: 00        .byte $00, $00, $BC, $BE   ; 
- D 0 - I - 0x01C63D 07:862D: B5        .byte $B5, $00, $BD, $BF   ; 
- D 0 - I - 0x01C641 07:8631: 3F        .byte $3F, $B5, $00, $00   ; 
- D 0 - I - 0x01C645 07:8635: 3F        .byte $3F, $3F, $3F, $B5   ; 
; 1F 
- D 0 - I - 0x01C649 07:8639: 8C        .byte $8C, $00, $00, $8F   ; 
- D 0 - I - 0x01C64D 07:863D: 9C        .byte $9C, $9D, $9E, $A3   ; 
- D 0 - I - 0x01C651 07:8641: 9E        .byte $9E, $A3, $A3, $A4   ; 
- D 0 - I - 0x01C655 07:8645: B2        .byte $B2, $B3, $B3, $B4   ; 
; 20 
- D 0 - I - 0x01C659 07:8649: 99        .byte $99, $9A, $40, $41   ; 
- D 0 - I - 0x01C65D 07:864D: 99        .byte $99, $9A, $50, $51   ; 
- D 0 - I - 0x01C661 07:8651: 99        .byte $99, $9A, $60, $40   ; 
- D 0 - I - 0x01C665 07:8655: 99        .byte $99, $9A, $70, $50   ; 
; 21 
- D 0 - I - 0x01C669 07:8659: 42        .byte $42, $43, $44, $45   ; 
- D 0 - I - 0x01C66D 07:865D: 52        .byte $52, $44, $43, $55   ; 
- D 0 - I - 0x01C671 07:8661: 41        .byte $41, $61, $61, $46   ; 
- D 0 - I - 0x01C675 07:8665: 51        .byte $51, $71, $41, $56   ; 
; 22 
- D 0 - I - 0x01C679 07:8669: 46        .byte $46, $47, $98, $9B   ; 
- D 0 - I - 0x01C67D 07:866D: 56        .byte $56, $57, $98, $9B   ; 
- D 0 - I - 0x01C681 07:8671: 47        .byte $47, $62, $98, $9B   ; 
- D 0 - I - 0x01C685 07:8675: 57        .byte $57, $72, $98, $9B   ; 
; 23 
- D 0 - I - 0x01C689 07:8679: 64        .byte $64, $64, $64, $64   ; 
- D 0 - I - 0x01C68D 07:867D: 3D        .byte $3D, $3D, $3D, $3D   ; 
- D 0 - I - 0x01C691 07:8681: B7        .byte $B7, $BE, $B7, $BE   ; 
- D 0 - I - 0x01C695 07:8685: BD        .byte $BD, $BF, $BD, $BF   ; 
; 24 
- D 0 - I - 0x01C699 07:8689: 98        .byte $98, $9A, $40, $41   ; 
- D 0 - I - 0x01C69D 07:868D: 98        .byte $98, $9A, $50, $51   ; 
- D 0 - I - 0x01C6A1 07:8691: 00        .byte $00, $65, $60, $40   ; 
- D 0 - I - 0x01C6A5 07:8695: 74        .byte $74, $75, $70, $50   ; 
; 25 
- D 0 - I - 0x01C6A9 07:8699: 67        .byte $67, $43, $77, $66   ; 
- D 0 - I - 0x01C6AD 07:869D: 40        .byte $40, $51, $76, $77   ; 
- D 0 - I - 0x01C6B1 07:86A1: 3D        .byte $3D, $57, $61, $57   ; 
- D 0 - I - 0x01C6B5 07:86A5: 3D        .byte $3D, $50, $41, $56   ; 
; 26 
- D 0 - I - 0x01C6B9 07:86A9: 46        .byte $46, $47, $98, $9B   ; 
- D 0 - I - 0x01C6BD 07:86AD: 56        .byte $56, $57, $00, $9B   ; 
- D 0 - I - 0x01C6C1 07:86B1: 47        .byte $47, $62, $66, $00   ; 
- D 0 - I - 0x01C6C5 07:86B5: 57        .byte $57, $72, $76, $77   ; 
; 27 
- D 0 - I - 0x01C6C9 07:86B9: 67        .byte $67, $67, $67, $67   ; 
- D 0 - I - 0x01C6CD 07:86BD: 3D        .byte $3D, $3D, $3D, $3D   ; 
- D 0 - I - 0x01C6D1 07:86C1: B6        .byte $B6, $BE, $B6, $BE   ; 
- D 0 - I - 0x01C6D5 07:86C5: BD        .byte $BD, $BF, $BD, $BF   ; 
; 28 
- D 0 - I - 0x01C6D9 07:86C9: A3        .byte $A3, $A4, $65, $74   ; 
- D 0 - I - 0x01C6DD 07:86CD: B3        .byte $B3, $B4, $74, $55   ; 
- D 0 - I - 0x01C6E1 07:86D1: 80        .byte $80, $81, $55, $46   ; 
- D 0 - I - 0x01C6E5 07:86D5: 90        .byte $90, $91, $42, $52   ; 
; 29 
- D 0 - I - 0x01C6E9 07:86D9: 64        .byte $64, $40, $41, $67   ; 
- D 0 - I - 0x01C6ED 07:86DD: 3D        .byte $3D, $3D, $3D, $3D   ; 
- D 0 - I - 0x01C6F1 07:86E1: B7        .byte $B7, $BE, $B6, $BE   ; 
- D 0 - I - 0x01C6F5 07:86E5: BD        .byte $BD, $BF, $BD, $BF   ; 
; 2A 
- D 0 - I - 0x01C6F9 07:86E9: 77        .byte $77, $66, $93, $94   ; 
- D 0 - I - 0x01C6FD 07:86ED: 76        .byte $76, $77, $A2, $A3   ; 
- D 0 - I - 0x01C701 07:86F1: 55        .byte $55, $46, $86, $87   ; 
- D 0 - I - 0x01C705 07:86F5: 45        .byte $45, $57, $96, $97   ; 
; 2B 
- D 0 - I - 0x01C709 07:86F9: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01C70D 07:86FD: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01C711 07:8701: 93        .byte $93, $94, $93, $94   ; 
- D 0 - I - 0x01C715 07:8705: A2        .byte $A2, $A3, $A3, $A4   ; 
; 2C 
- D 0 - I - 0x01C719 07:8709: 00        .byte $00, $00, $57, $41   ; 
- D 0 - I - 0x01C71D 07:870D: 00        .byte $00, $00, $46, $52   ; 
- D 0 - I - 0x01C721 07:8711: 00        .byte $00, $00, $60, $40   ; 
- D 0 - I - 0x01C725 07:8715: 00        .byte $00, $00, $70, $50   ; 
; 2D 
- D 0 - I - 0x01C729 07:8719: 9A        .byte $9A, $B1, $00, $00   ; 
- D 0 - I - 0x01C72D 07:871D: 9A        .byte $9A, $B1, $00, $00   ; 
- D 0 - I - 0x01C731 07:8721: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01C735 07:8725: BD        .byte $BD, $BF, $BD, $BF   ; 
; 2E 
- D 0 - I - 0x01C739 07:8729: 57        .byte $57, $46, $00, $00   ; 
- D 0 - I - 0x01C73D 07:872D: 41        .byte $41, $72, $00, $00   ; 
- D 0 - I - 0x01C741 07:8731: 47        .byte $47, $62, $00, $00   ; 
- D 0 - I - 0x01C745 07:8735: 57        .byte $57, $72, $00, $00   ; 
; 2F 
- D 0 - I - 0x01C749 07:8739: 65        .byte $65, $74, $75, $64   ; 
- D 0 - I - 0x01C74D 07:873D: 74        .byte $74, $75, $41, $55   ; 
- D 0 - I - 0x01C751 07:8741: 60        .byte $60, $61, $40, $41   ; 
- D 0 - I - 0x01C755 07:8745: 70        .byte $70, $71, $50, $44   ; 
; 30 
- D 0 - I - 0x01C759 07:8749: B3        .byte $B3, $B4, $B2, $B3   ; 
- D 0 - I - 0x01C75D 07:874D: B2        .byte $B2, $AD, $9C, $B4   ; 
- D 0 - I - 0x01C761 07:8751: 82        .byte $82, $83, $84, $85   ; 
- D 0 - I - 0x01C765 07:8755: 92        .byte $92, $00, $00, $95   ; 
; 31 
- D 0 - I - 0x01C769 07:8759: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01C76D 07:875D: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01C771 07:8761: A3        .byte $A3, $A4, $A2, $A3   ; 
- D 0 - I - 0x01C775 07:8765: B3        .byte $B3, $B4, $B2, $B3   ; 
; 32 
- D 0 - I - 0x01C779 07:8769: A2        .byte $A2, $A3, $A3, $A4   ; 
- D 0 - I - 0x01C77D 07:876D: B2        .byte $B2, $B3, $B3, $B4   ; 
- D 0 - I - 0x01C781 07:8771: A3        .byte $A3, $A3, $A2, $A3   ; 
- D 0 - I - 0x01C785 07:8775: B3        .byte $B3, $B4, $B2, $B3   ; 
; 33 
- D 0 - I - 0x01C789 07:8779: 00        .byte $00, $A3, $A3, $A4   ; 
- D 0 - I - 0x01C78D 07:877D: 00        .byte $00, $B3, $B3, $B4   ; 
- D 0 - I - 0x01C791 07:8781: 00        .byte $00, $A3, $A2, $A3   ; 
- D 0 - I - 0x01C795 07:8785: 00        .byte $00, $B4, $B2, $B3   ; 
; 34 
- D 0 - I - 0x01C799 07:8789: 9E        .byte $9E, $A3, $A3, $A4   ; 
- D 0 - I - 0x01C79D 07:878D: B2        .byte $B2, $B3, $B3, $B4   ; 
- D 0 - I - 0x01C7A1 07:8791: A3        .byte $A3, $A4, $00, $00   ; 
- D 0 - I - 0x01C7A5 07:8795: B3        .byte $B3, $B4, $00, $00   ; 
; 35 
- D 0 - I - 0x01C7A9 07:8799: A2        .byte $A2, $A3, $A3, $A4   ; 
- D 0 - I - 0x01C7AD 07:879D: B2        .byte $B2, $B3, $B3, $B4   ; 
- D 0 - I - 0x01C7B1 07:87A1: 00        .byte $00, $00, $A2, $A3   ; 
- D 0 - I - 0x01C7B5 07:87A5: 00        .byte $00, $00, $B2, $B3   ; 
; 36 
- D 0 - I - 0x01C7B9 07:87A9: 98        .byte $98, $99, $9A, $9B   ; 
- D 0 - I - 0x01C7BD 07:87AD: 98        .byte $98, $99, $9A, $9B   ; 
- D 0 - I - 0x01C7C1 07:87B1: 98        .byte $98, $99, $9A, $9B   ; 
- D 0 - I - 0x01C7C5 07:87B5: 98        .byte $98, $99, $9A, $9B   ; 
; 37 
- D 0 - I - 0x01C7C9 07:87B9: 00        .byte $00, $A3, $A3, $A4   ; 
- D 0 - I - 0x01C7CD 07:87BD: 00        .byte $00, $B3, $B3, $B4   ; 
- D 0 - I - 0x01C7D1 07:87C1: 00        .byte $00, $A4, $00, $00   ; 
- D 0 - I - 0x01C7D5 07:87C5: 00        .byte $00, $B4, $00, $00   ; 
; 38 
- D 0 - I - 0x01C7D9 07:87C9: 98        .byte $98, $89, $00, $84   ; 
- D 0 - I - 0x01C7DD 07:87CD: 98        .byte $98, $99, $89, $00   ; 
- D 0 - I - 0x01C7E1 07:87D1: 98        .byte $98, $99, $9A, $9B   ; 
- D 0 - I - 0x01C7E5 07:87D5: 98        .byte $98, $99, $9A, $9B   ; 
; 39 
- D 0 - I - 0x01C7E9 07:87D9: A3        .byte $A3, $A4, $9E, $A3   ; 
- D 0 - I - 0x01C7ED 07:87DD: B3        .byte $B3, $B3, $B2, $B3   ; 
- D 0 - I - 0x01C7F1 07:87E1: A2        .byte $A2, $A3, $A3, $A4   ; 
- D 0 - I - 0x01C7F5 07:87E5: 93        .byte $93, $94, $93, $94   ; 
; 3A 
- D 0 - I - 0x01C7F9 07:87E9: A8        .byte $A8, $A9, $A9, $AB   ; 
- D 0 - I - 0x01C7FD 07:87ED: AC        .byte $AC, $AD, $AE, $AF   ; 
- D 0 - I - 0x01C801 07:87F1: AC        .byte $AC, $AE, $AD, $AF   ; 
- D 0 - I - 0x01C805 07:87F5: A8        .byte $A8, $A9, $AB, $00   ; 
; 3B 
- D 0 - I - 0x01C809 07:87F9: 00        .byte $00, $A3, $A2, $A3   ; 
- D 0 - I - 0x01C80D 07:87FD: 00        .byte $00, $B3, $B2, $B3   ; 
- D 0 - I - 0x01C811 07:8801: A2        .byte $A2, $A3, $A2, $A3   ; 
- D 0 - I - 0x01C815 07:8805: 93        .byte $93, $94, $93, $94   ; 
; 3C 
- D 0 - I - 0x01C819 07:8809: A2        .byte $A2, $A3, $A3, $A4   ; 
- D 0 - I - 0x01C81D 07:880D: 93        .byte $93, $94, $93, $94   ; 
- D 0 - I - 0x01C821 07:8811: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01C825 07:8815: BD        .byte $BD, $BF, $BD, $BF   ; 
; 3D 
- D 0 - I - 0x01C829 07:8819: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01C82D 07:881D: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01C831 07:8821: B2        .byte $B2, $B3, $B3, $B4   ; 
- D 0 - I - 0x01C835 07:8825: B3        .byte $B3, $B4, $B2, $B3   ; 
; 3E 
- D 0 - I - 0x01C839 07:8829: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01C83D 07:882D: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01C841 07:8831: 98        .byte $98, $99, $9A, $9B   ; 
- D 0 - I - 0x01C845 07:8835: 98        .byte $98, $99, $9A, $9B   ; 
; 3F 
- D 0 - I - 0x01C849 07:8839: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01C84D 07:883D: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01C851 07:8841: 00        .byte $00, $B3, $B3, $B4   ; 
- D 0 - I - 0x01C855 07:8845: 00        .byte $00, $B4, $B2, $B3   ; 
; 40 
- D 0 - I - 0x01C859 07:8849: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 0 - I - 0x01C85D 07:884D: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 0 - I - 0x01C861 07:8851: 9F        .byte $9F, $9F, $9F, $9F   ; 
- D 0 - I - 0x01C865 07:8855: 00        .byte $00, $00, $00, $00   ; 
; 41 
- D 0 - I - 0x01C869 07:8859: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01C86D 07:885D: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01C871 07:8861: AA        .byte $AA, $AA, $AA, $AA   ; 
- D 0 - I - 0x01C875 07:8865: 3E        .byte $3E, $3E, $3E, $3E   ; 
; 42 
- D 0 - I - 0x01C879 07:8869: 3F        .byte $3F, $88, $88, $3F   ; 
- D 0 - I - 0x01C87D 07:886D: 88        .byte $88, $00, $00, $88   ; 
- D 0 - I - 0x01C881 07:8871: AA        .byte $AA, $AA, $AA, $AA   ; 
- D 0 - I - 0x01C885 07:8875: 3E        .byte $3E, $3E, $3E, $3E   ; 
; 43 
- D 0 - I - 0x01C889 07:8879: 3F        .byte $3F, $9F, $9F, $9F   ; 
- D 0 - I - 0x01C88D 07:887D: 3F        .byte $3F, $00, $00, $00   ; 
- D 0 - I - 0x01C891 07:8881: AA        .byte $AA, $AA, $AA, $AA   ; 
- D 0 - I - 0x01C895 07:8885: 3E        .byte $3E, $3E, $3E, $3E   ; 
; 44 
- - - - - - 0x01C899 07:8889: 3F        .byte $3F, $3F, $3F, $3F   ; 
- - - - - - 0x01C89D 07:888D: 3F        .byte $3F, $3F, $3F, $3F   ; 
- - - - - - 0x01C8A1 07:8891: 93        .byte $93, $94, $93, $94   ; 
- - - - - - 0x01C8A5 07:8895: A2        .byte $A2, $A3, $A3, $A4   ; 
; 45 
- D 0 - I - 0x01C8A9 07:8899: A2        .byte $A2, $A3, $00, $8B   ; 
- D 0 - I - 0x01C8AD 07:889D: 93        .byte $93, $00, $8B, $00   ; 
- D 0 - I - 0x01C8B1 07:88A1: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01C8B5 07:88A5: BD        .byte $BD, $BF, $BD, $BF   ; 
; 46 
- D 0 - I - 0x01C8B9 07:88A9: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 0 - I - 0x01C8BD 07:88AD: 88        .byte $88, $3F, $88, $88   ; 
- D 0 - I - 0x01C8C1 07:88B1: AA        .byte $AA, $AA, $AA, $AA   ; 
- D 0 - I - 0x01C8C5 07:88B5: 3E        .byte $3E, $3E, $3E, $3E   ; 
; 47 
- D 0 - I - 0x01C8C9 07:88B9: A2        .byte $A2, $A3, $A3, $A4   ; 
- D 0 - I - 0x01C8CD 07:88BD: 93        .byte $93, $94, $93, $94   ; 
- D 0 - I - 0x01C8D1 07:88C1: BC        .byte $BC, $BE, $B8, $BB   ; 
- D 0 - I - 0x01C8D5 07:88C5: BD        .byte $BD, $BF, $00, $B8   ; 
; 48 
- D 0 - I - 0x01C8D9 07:88C9: 93        .byte $93, $94, $93, $94   ; 
- D 0 - I - 0x01C8DD 07:88CD: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01C8E1 07:88D1: 64        .byte $64, $64, $64, $64   ; 
- D 0 - I - 0x01C8E5 07:88D5: 3D        .byte $3D, $3D, $3D, $3D   ; 
; 49 
- D 0 - I - 0x01C8E9 07:88D9: 40        .byte $40, $41, $60, $61   ; 
- D 0 - I - 0x01C8ED 07:88DD: 50        .byte $50, $51, $70, $71   ; 
- D 0 - I - 0x01C8F1 07:88E1: 64        .byte $64, $44, $46, $67   ; 
- D 0 - I - 0x01C8F5 07:88E5: 3D        .byte $3D, $3D, $3D, $3D   ; 
; 4A 
- D 0 - I - 0x01C8F9 07:88E9: 93        .byte $93, $94, $93, $94   ; 
- D 0 - I - 0x01C8FD 07:88ED: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01C901 07:88F1: 67        .byte $67, $67, $67, $67   ; 
- D 0 - I - 0x01C905 07:88F5: 3D        .byte $3D, $3D, $3D, $3D   ; 
; 4B 
- D 0 - I - 0x01C909 07:88F9: 93        .byte $93, $94, $93, $94   ; 
- D 0 - I - 0x01C90D 07:88FD: 00        .byte $00, $00, $66, $00   ; 
- D 0 - I - 0x01C911 07:8901: 67        .byte $67, $76, $77, $66   ; 
- D 0 - I - 0x01C915 07:8905: 45        .byte $45, $50, $76, $77   ; 
; 4C 
- D 0 - I - 0x01C919 07:8909: B7        .byte $B7, $BE, $B7, $BE   ; 
- D 0 - I - 0x01C91D 07:890D: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01C921 07:8911: 93        .byte $93, $94, $93, $94   ; 
- D 0 - I - 0x01C925 07:8915: A2        .byte $A2, $A3, $A3, $A4   ; 
; 4D 
- D 0 - I - 0x01C929 07:8919: B7        .byte $B7, $BE, $B6, $BE   ; 
- D 0 - I - 0x01C92D 07:891D: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01C931 07:8921: 93        .byte $93, $94, $93, $94   ; 
- D 0 - I - 0x01C935 07:8925: A2        .byte $A2, $A3, $A3, $A4   ; 
; 4E 
- D 0 - I - 0x01C939 07:8929: B6        .byte $B6, $BE, $B6, $BE   ; 
- D 0 - I - 0x01C93D 07:892D: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01C941 07:8931: 93        .byte $93, $94, $93, $94   ; 
- D 0 - I - 0x01C945 07:8935: A2        .byte $A2, $A3, $A3, $A4   ; 
; 4F 
- D 0 - I - 0x01C949 07:8939: 00        .byte $00, $93, $93, $94   ; 
- D 0 - I - 0x01C94D 07:893D: 00        .byte $00, $00, $65, $00   ; 
- D 0 - I - 0x01C951 07:8941: 65        .byte $65, $74, $75, $41   ; 
- D 0 - I - 0x01C955 07:8945: 74        .byte $74, $75, $50, $44   ; 
; 50 
- D 0 - I - 0x01C959 07:8949: 00        .byte $00, $00, $00, $8B   ; 
- D 0 - I - 0x01C95D 07:894D: 00        .byte $00, $00, $8B, $00   ; 
- D 0 - I - 0x01C961 07:8951: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01C965 07:8955: BD        .byte $BD, $BF, $BD, $BF   ; 
; 51 
- D 0 - I - 0x01C969 07:8959: BC        .byte $BC, $BE, $BA, $B8   ; 
- D 0 - I - 0x01C96D 07:895D: BD        .byte $BD, $B4, $B8, $B9   ; 
- D 0 - I - 0x01C971 07:8961: 00        .byte $00, $8B, $00, $00   ; 
- D 0 - I - 0x01C975 07:8965: 8B        .byte $8B, $00, $00, $00   ; 
; 52 
- D 0 - I - 0x01C979 07:8969: 00        .byte $00, $00, $00, $8B   ; 
- D 0 - I - 0x01C97D 07:896D: 00        .byte $00, $00, $8B, $00   ; 
- D 0 - I - 0x01C981 07:8971: 00        .byte $00, $8B, $00, $00   ; 
- D 0 - I - 0x01C985 07:8975: 8B        .byte $8B, $00, $00, $00   ; 
; 53 
- D 0 - I - 0x01C989 07:8979: A2        .byte $A2, $A3, $A3, $A4   ; 
- D 0 - I - 0x01C98D 07:897D: B2        .byte $B2, $B3, $B3, $B4   ; 
- D 0 - I - 0x01C991 07:8981: BC        .byte $BC, $BE, $A2, $A3   ; 
- D 0 - I - 0x01C995 07:8985: BD        .byte $BD, $BF, $B2, $B3   ; 
; 54 
- D 0 - I - 0x01C999 07:8989: 00        .byte $00, $3C, $00, $00   ; 
- D 0 - I - 0x01C99D 07:898D: 00        .byte $00, $3A, $00, $00   ; 
- D 0 - I - 0x01C9A1 07:8991: 00        .byte $00, $3C, $00, $00   ; 
- D 0 - I - 0x01C9A5 07:8995: 00        .byte $00, $3B, $00, $00   ; 
; 55 
- D 0 - I - 0x01C9A9 07:8999: 00        .byte $00, $3A, $00, $00   ; 
- D 0 - I - 0x01C9AD 07:899D: 00        .byte $00, $3C, $00, $00   ; 
- D 0 - I - 0x01C9B1 07:89A1: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01C9B5 07:89A5: BD        .byte $BD, $BF, $BD, $BF   ; 



_off046_0x01C9B9_05:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x01C9B9 07:89A9: 55        .byte $55, $AA, $55, $55, $55, $05, $55, $55, $55, $55, $55, $55, $55, $04, $55, $5A   ; 00 
- D 0 - I - 0x01C9C9 07:89B9: AA        .byte $AA, $AA, $55, $00, $82, $80, $20, $28, $20, $55, $41, $14, $22, $50, $51, $AA   ; 10 
- D 0 - I - 0x01C9D9 07:89C9: 99        .byte $99, $AA, $66, $0A, $A9, $AA, $A6, $0A, $99, $0A, $66, $50, $89, $01, $26, $AA   ; 20 
- D 0 - I - 0x01C9E9 07:89D9: AA        .byte $AA, $A0, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $0A, $A0, $A0, $A0   ; 30 
- D 0 - I - 0x01C9F9 07:89E9: 55        .byte $55, $F0, $F5, $F5, $55, $01, $F5, $05, $A5, $AA, $A5, $A5, $50, $50, $50, $A5   ; 40 
- D 0 - I - 0x01CA09 07:89F9: 00        .byte $00, $00, $00, $45, $00, $00                                                     ; 50 



_off044_0x01CA0F_06:
- D 0 - I - 0x01CA0F 07:89FF: 05 8A     .word off_8A05_06_00
- D 0 - I - 0x01CA11 07:8A01: 0E 8A     .word off_8A0E_06_01
- D 0 - I - 0x01CA13 07:8A03: 11 8A     .word off_8A11_06_02



off_8A05_06_00:
- D 0 - I - 0x01CA15 07:8A05: 01        .byte $01   ; 
- D 0 - I - 0x01CA16 07:8A06: 70 8B     .word _off047_8B70_06_00_00
- D 0 - I - 0x01CA18 07:8A08: 1E 8A     .word _off047_8A1E_06_00_01
- - - - - - 0x01CA1A 07:8A0A: E0        .byte $E0   ; 
- - - - - - 0x01CA1B 07:8A0B: 03        .byte $03   ; 
- D 0 - I - 0x01CA1C 07:8A0C: FD        .byte $FD   ; 
- - - - - - 0x01CA1D 07:8A0D: E0        .byte $E0   ; 



off_8A0E_06_01:
- - - - - - 0x01CA1E 07:8A0E: 00        .byte $00   ; 
- D 0 - I - 0x01CA1F 07:8A0F: 02 8C     .word _off047_8C02_06_01_00



off_8A11_06_02:
- D 0 - I - 0x01CA21 07:8A11: 02        .byte $02   ; 
- D 0 - I - 0x01CA22 07:8A12: D1 8B     .word _off047_8BD1_06_02_00
- D 0 - I - 0x01CA24 07:8A14: DF 8A     .word _off047_8ADF_06_02_01
- D 0 - I - 0x01CA26 07:8A16: 23 8D     .word _off047_8D23_06_02_02
- - - - - - 0x01CA28 07:8A18: E0        .byte $E0   ; 
- - - - - - 0x01CA29 07:8A19: 02        .byte $02   ; 
- D 0 - I - 0x01CA2A 07:8A1A: FE        .byte $FE   ; 
- - - - - - 0x01CA2B 07:8A1B: 01        .byte $01   ; 
- D 0 - I - 0x01CA2C 07:8A1C: FF        .byte $FF   ; 
- - - - - - 0x01CA2D 07:8A1D: E0        .byte $E0   ; 



_off047_8A1E_06_00_01:
- D 0 - I - 0x01CA2E 07:8A1E: 03        .byte $03   ; 
- D 0 - I - 0x01CA2F 07:8A1F: 00        .byte $00   ; 
- D 0 - I - 0x01CA30 07:8A20: 00        .byte $00   ; 
- D 0 - I - 0x01CA31 07:8A21: 00        .byte $00   ; 
- D 0 - I - 0x01CA32 07:8A22: 00        .byte $00   ; 
- D 0 - I - 0x01CA33 07:8A23: 00        .byte $00   ; 
- D 0 - I - 0x01CA34 07:8A24: 00        .byte $00   ; 
- D 0 - I - 0x01CA35 07:8A25: 00        .byte $00   ; 
- D 0 - I - 0x01CA36 07:8A26: 00        .byte $00   ; 
- D 0 - I - 0x01CA37 07:8A27: 02        .byte $02   ; 
- D 0 - I - 0x01CA38 07:8A28: 03        .byte $03   ; 
- D 0 - I - 0x01CA39 07:8A29: 00        .byte $00   ; 
- D 0 - I - 0x01CA3A 07:8A2A: 00        .byte $00   ; 
- D 0 - I - 0x01CA3B 07:8A2B: 00        .byte $00   ; 
- D 0 - I - 0x01CA3C 07:8A2C: 02        .byte $02   ; 
- D 0 - I - 0x01CA3D 07:8A2D: 03        .byte $03   ; 
- D 0 - I - 0x01CA3E 07:8A2E: 01        .byte $01   ; 
- D 0 - I - 0x01CA3F 07:8A2F: 04        .byte $04   ; 
- D 0 - I - 0x01CA40 07:8A30: 04        .byte $04   ; 
- D 0 - I - 0x01CA41 07:8A31: 03        .byte $03   ; 
- D 0 - I - 0x01CA42 07:8A32: 01        .byte $01   ; 
- D 0 - I - 0x01CA43 07:8A33: 02        .byte $02   ; 
- D 0 - I - 0x01CA44 07:8A34: 04        .byte $04   ; 
- D 0 - I - 0x01CA45 07:8A35: 07        .byte $07   ; 
- D 0 - I - 0x01CA46 07:8A36: 04        .byte $04   ; 
- D 0 - I - 0x01CA47 07:8A37: 17        .byte $17   ; 
- D 0 - I - 0x01CA48 07:8A38: 0A        .byte $0A   ; 
- D 0 - I - 0x01CA49 07:8A39: 05        .byte $05   ; 
- D 0 - I - 0x01CA4A 07:8A3A: 38        .byte $38   ; 
- D 0 - I - 0x01CA4B 07:8A3B: 17        .byte $17   ; 
- D 0 - I - 0x01CA4C 07:8A3C: 08        .byte $08   ; 
- D 0 - I - 0x01CA4D 07:8A3D: 09        .byte $09   ; 
- D 0 - I - 0x01CA4E 07:8A3E: 17        .byte $17   ; 
- D 0 - I - 0x01CA4F 07:8A3F: 11        .byte $11   ; 
- D 0 - I - 0x01CA50 07:8A40: 11        .byte $11   ; 
- D 0 - I - 0x01CA51 07:8A41: 11        .byte $11   ; 
- D 0 - I - 0x01CA52 07:8A42: 11        .byte $11   ; 
- D 0 - I - 0x01CA53 07:8A43: 1C        .byte $1C   ; 
- D 0 - I - 0x01CA54 07:8A44: 0C        .byte $0C   ; 
- D 0 - I - 0x01CA55 07:8A45: 0D        .byte $0D   ; 
- D 0 - I - 0x01CA56 07:8A46: 19        .byte $19   ; 
- D 0 - I - 0x01CA57 07:8A47: 1E        .byte $1E   ; 
- D 0 - I - 0x01CA58 07:8A48: 1E        .byte $1E   ; 
- D 0 - I - 0x01CA59 07:8A49: 11        .byte $11   ; 
- D 0 - I - 0x01CA5A 07:8A4A: 1E        .byte $1E   ; 
- D 0 - I - 0x01CA5B 07:8A4B: 11        .byte $11   ; 
- D 0 - I - 0x01CA5C 07:8A4C: 1C        .byte $1C   ; 
- D 0 - I - 0x01CA5D 07:8A4D: 19        .byte $19   ; 
- D 0 - I - 0x01CA5E 07:8A4E: 1B        .byte $1B   ; 
- D 0 - I - 0x01CA5F 07:8A4F: 00        .byte $00   ; 
- D 0 - I - 0x01CA60 07:8A50: 00        .byte $00   ; 
- D 0 - I - 0x01CA61 07:8A51: 00        .byte $00   ; 
- D 0 - I - 0x01CA62 07:8A52: 00        .byte $00   ; 
- D 0 - I - 0x01CA63 07:8A53: 02        .byte $02   ; 
- D 0 - I - 0x01CA64 07:8A54: 04        .byte $04   ; 
- D 0 - I - 0x01CA65 07:8A55: 04        .byte $04   ; 
- D 0 - I - 0x01CA66 07:8A56: 03        .byte $03   ; 
- D 0 - I - 0x01CA67 07:8A57: 02        .byte $02   ; 
- D 0 - I - 0x01CA68 07:8A58: 03        .byte $03   ; 
- D 0 - I - 0x01CA69 07:8A59: 01        .byte $01   ; 
- D 0 - I - 0x01CA6A 07:8A5A: 02        .byte $02   ; 
- D 0 - I - 0x01CA6B 07:8A5B: 04        .byte $04   ; 
- D 0 - I - 0x01CA6C 07:8A5C: 04        .byte $04   ; 
- D 0 - I - 0x01CA6D 07:8A5D: 07        .byte $07   ; 
- D 0 - I - 0x01CA6E 07:8A5E: 04        .byte $04   ; 
- D 0 - I - 0x01CA6F 07:8A5F: 0A        .byte $0A   ; 
- D 0 - I - 0x01CA70 07:8A60: 0B        .byte $0B   ; 
- D 0 - I - 0x01CA71 07:8A61: 17        .byte $17   ; 
- D 0 - I - 0x01CA72 07:8A62: 17        .byte $17   ; 
- D 0 - I - 0x01CA73 07:8A63: 38        .byte $38   ; 
- D 0 - I - 0x01CA74 07:8A64: 08        .byte $08   ; 
- D 0 - I - 0x01CA75 07:8A65: 09        .byte $09   ; 
- D 0 - I - 0x01CA76 07:8A66: 0A        .byte $0A   ; 
- D 0 - I - 0x01CA77 07:8A67: 0A        .byte $0A   ; 
- D 0 - I - 0x01CA78 07:8A68: 06        .byte $06   ; 
- D 0 - I - 0x01CA79 07:8A69: 0B        .byte $0B   ; 
- D 0 - I - 0x01CA7A 07:8A6A: 16        .byte $16   ; 
- D 0 - I - 0x01CA7B 07:8A6B: 08        .byte $08   ; 
- D 0 - I - 0x01CA7C 07:8A6C: 1C        .byte $1C   ; 
- D 0 - I - 0x01CA7D 07:8A6D: 1C        .byte $1C   ; 
- D 0 - I - 0x01CA7E 07:8A6E: 1C        .byte $1C   ; 
- D 0 - I - 0x01CA7F 07:8A6F: 0E        .byte $0E   ; 
- D 0 - I - 0x01CA80 07:8A70: 18        .byte $18   ; 
- D 0 - I - 0x01CA81 07:8A71: 0F        .byte $0F   ; 
- D 0 - I - 0x01CA82 07:8A72: 18        .byte $18   ; 
- D 0 - I - 0x01CA83 07:8A73: 0C        .byte $0C   ; 
- D 0 - I - 0x01CA84 07:8A74: 18        .byte $18   ; 
- D 0 - I - 0x01CA85 07:8A75: 18        .byte $18   ; 
- D 0 - I - 0x01CA86 07:8A76: 18        .byte $18   ; 
- D 0 - I - 0x01CA87 07:8A77: 1B        .byte $1B   ; 
- D 0 - I - 0x01CA88 07:8A78: 1B        .byte $1B   ; 
- D 0 - I - 0x01CA89 07:8A79: 1B        .byte $1B   ; 
- D 0 - I - 0x01CA8A 07:8A7A: 1B        .byte $1B   ; 
- D 0 - I - 0x01CA8B 07:8A7B: 1B        .byte $1B   ; 
- D 0 - I - 0x01CA8C 07:8A7C: 1B        .byte $1B   ; 
- D 0 - I - 0x01CA8D 07:8A7D: 1B        .byte $1B   ; 
- D 0 - I - 0x01CA8E 07:8A7E: 1B        .byte $1B   ; 
- D 0 - I - 0x01CA8F 07:8A7F: 01        .byte $01   ; 
- D 0 - I - 0x01CA90 07:8A80: 03        .byte $03   ; 
- D 0 - I - 0x01CA91 07:8A81: 00        .byte $00   ; 
- D 0 - I - 0x01CA92 07:8A82: 00        .byte $00   ; 
- D 0 - I - 0x01CA93 07:8A83: 00        .byte $00   ; 
- D 0 - I - 0x01CA94 07:8A84: 00        .byte $00   ; 
- D 0 - I - 0x01CA95 07:8A85: 00        .byte $00   ; 
- D 0 - I - 0x01CA96 07:8A86: 00        .byte $00   ; 
- D 0 - I - 0x01CA97 07:8A87: 04        .byte $04   ; 
- D 0 - I - 0x01CA98 07:8A88: 04        .byte $04   ; 
- D 0 - I - 0x01CA99 07:8A89: 03        .byte $03   ; 
- D 0 - I - 0x01CA9A 07:8A8A: 01        .byte $01   ; 
- D 0 - I - 0x01CA9B 07:8A8B: 02        .byte $02   ; 
- D 0 - I - 0x01CA9C 07:8A8C: 03        .byte $03   ; 
- D 0 - I - 0x01CA9D 07:8A8D: 01        .byte $01   ; 
- D 0 - I - 0x01CA9E 07:8A8E: 01        .byte $01   ; 
- D 0 - I - 0x01CA9F 07:8A8F: 0B        .byte $0B   ; 
- D 0 - I - 0x01CAA0 07:8A90: 05        .byte $05   ; 
- D 0 - I - 0x01CAA1 07:8A91: 17        .byte $17   ; 
- D 0 - I - 0x01CAA2 07:8A92: 04        .byte $04   ; 
- D 0 - I - 0x01CAA3 07:8A93: 1D        .byte $1D   ; 
- D 0 - I - 0x01CAA4 07:8A94: 1C        .byte $1C   ; 
- D 0 - I - 0x01CAA5 07:8A95: 04        .byte $04   ; 
- D 0 - I - 0x01CAA6 07:8A96: 07        .byte $07   ; 
- D 0 - I - 0x01CAA7 07:8A97: 1C        .byte $1C   ; 
- D 0 - I - 0x01CAA8 07:8A98: 1C        .byte $1C   ; 
- D 0 - I - 0x01CAA9 07:8A99: 1C        .byte $1C   ; 
- D 0 - I - 0x01CAAA 07:8A9A: 05        .byte $05   ; 
- D 0 - I - 0x01CAAB 07:8A9B: 0A        .byte $0A   ; 
- D 0 - I - 0x01CAAC 07:8A9C: 1E        .byte $1E   ; 
- D 0 - I - 0x01CAAD 07:8A9D: 08        .byte $08   ; 
- D 0 - I - 0x01CAAE 07:8A9E: 09        .byte $09   ; 
- D 0 - I - 0x01CAAF 07:8A9F: 18        .byte $18   ; 
- D 0 - I - 0x01CAB0 07:8AA0: 18        .byte $18   ; 
- D 0 - I - 0x01CAB1 07:8AA1: 18        .byte $18   ; 
- D 0 - I - 0x01CAB2 07:8AA2: 0F        .byte $0F   ; 
- D 0 - I - 0x01CAB3 07:8AA3: 0E        .byte $0E   ; 
- D 0 - I - 0x01CAB4 07:8AA4: 18        .byte $18   ; 
- D 0 - I - 0x01CAB5 07:8AA5: 0C        .byte $0C   ; 
- D 0 - I - 0x01CAB6 07:8AA6: 1C        .byte $1C   ; 
- D 0 - I - 0x01CAB7 07:8AA7: 1B        .byte $1B   ; 
- D 0 - I - 0x01CAB8 07:8AA8: 1B        .byte $1B   ; 
- D 0 - I - 0x01CAB9 07:8AA9: 1B        .byte $1B   ; 
- D 0 - I - 0x01CABA 07:8AAA: 1B        .byte $1B   ; 
- D 0 - I - 0x01CABB 07:8AAB: 1B        .byte $1B   ; 
- D 0 - I - 0x01CABC 07:8AAC: 1B        .byte $1B   ; 
- D 0 - I - 0x01CABD 07:8AAD: 1B        .byte $1B   ; 
- D 0 - I - 0x01CABE 07:8AAE: 11        .byte $11   ; 
- D 0 - I - 0x01CABF 07:8AAF: 00        .byte $00   ; 
- D 0 - I - 0x01CAC0 07:8AB0: 00        .byte $00   ; 
- D 0 - I - 0x01CAC1 07:8AB1: 00        .byte $00   ; 
- D 0 - I - 0x01CAC2 07:8AB2: 00        .byte $00   ; 
- D 0 - I - 0x01CAC3 07:8AB3: 00        .byte $00   ; 
- D 0 - I - 0x01CAC4 07:8AB4: 00        .byte $00   ; 
- D 0 - I - 0x01CAC5 07:8AB5: 00        .byte $00   ; 
- D 0 - I - 0x01CAC6 07:8AB6: 00        .byte $00   ; 
- D 0 - I - 0x01CAC7 07:8AB7: 02        .byte $02   ; 
- D 0 - I - 0x01CAC8 07:8AB8: 03        .byte $03   ; 
- D 0 - I - 0x01CAC9 07:8AB9: 00        .byte $00   ; 
- D 0 - I - 0x01CACA 07:8ABA: 00        .byte $00   ; 
- D 0 - I - 0x01CACB 07:8ABB: 00        .byte $00   ; 
- D 0 - I - 0x01CACC 07:8ABC: 00        .byte $00   ; 
- D 0 - I - 0x01CACD 07:8ABD: 00        .byte $00   ; 
- D 0 - I - 0x01CACE 07:8ABE: 02        .byte $02   ; 
- D 0 - I - 0x01CACF 07:8ABF: 04        .byte $04   ; 
- D 0 - I - 0x01CAD0 07:8AC0: 04        .byte $04   ; 
- D 0 - I - 0x01CAD1 07:8AC1: 03        .byte $03   ; 
- D 0 - I - 0x01CAD2 07:8AC2: 01        .byte $01   ; 
- D 0 - I - 0x01CAD3 07:8AC3: 02        .byte $02   ; 
- D 0 - I - 0x01CAD4 07:8AC4: 03        .byte $03   ; 
- D 0 - I - 0x01CAD5 07:8AC5: 02        .byte $02   ; 
- D 0 - I - 0x01CAD6 07:8AC6: 04        .byte $04   ; 
- D 0 - I - 0x01CAD7 07:8AC7: 0A        .byte $0A   ; 
- D 0 - I - 0x01CAD8 07:8AC8: 0B        .byte $0B   ; 
- D 0 - I - 0x01CAD9 07:8AC9: 17        .byte $17   ; 
- D 0 - I - 0x01CADA 07:8ACA: 38        .byte $38   ; 
- D 0 - I - 0x01CADB 07:8ACB: 17        .byte $17   ; 
- D 0 - I - 0x01CADC 07:8ACC: 04        .byte $04   ; 
- D 0 - I - 0x01CADD 07:8ACD: 04        .byte $04   ; 
- D 0 - I - 0x01CADE 07:8ACE: 04        .byte $04   ; 
- D 0 - I - 0x01CADF 07:8ACF: 1C        .byte $1C   ; 
- D 0 - I - 0x01CAE0 07:8AD0: 1C        .byte $1C   ; 
- D 0 - I - 0x01CAE1 07:8AD1: 11        .byte $11   ; 
- D 0 - I - 0x01CAE2 07:8AD2: 11        .byte $11   ; 
- D 0 - I - 0x01CAE3 07:8AD3: 13        .byte $13   ; 
- D 0 - I - 0x01CAE4 07:8AD4: 38        .byte $38   ; 
- D 0 - I - 0x01CAE5 07:8AD5: 17        .byte $17   ; 
- D 0 - I - 0x01CAE6 07:8AD6: 05        .byte $05   ; 
- D 0 - I - 0x01CAE7 07:8AD7: 11        .byte $11   ; 
- D 0 - I - 0x01CAE8 07:8AD8: 1E        .byte $1E   ; 
- D 0 - I - 0x01CAE9 07:8AD9: 1E        .byte $1E   ; 
- D 0 - I - 0x01CAEA 07:8ADA: 1E        .byte $1E   ; 
- D 0 - I - 0x01CAEB 07:8ADB: 1E        .byte $1E   ; 
- D 0 - I - 0x01CAEC 07:8ADC: 13        .byte $13   ; 
- D 0 - I - 0x01CAED 07:8ADD: 08        .byte $08   ; 
- D 0 - I - 0x01CAEE 07:8ADE: 09        .byte $09   ; 



_off047_8ADF_06_02_01:
- D 0 - I - 0x01CAEF 07:8ADF: 02        .byte $02   ; 
- D 0 - I - 0x01CAF0 07:8AE0: 35        .byte $35   ; 
- D 0 - I - 0x01CAF1 07:8AE1: 22        .byte $22   ; 
- D 0 - I - 0x01CAF2 07:8AE2: 21        .byte $21   ; 
- D 0 - I - 0x01CAF3 07:8AE3: 37        .byte $37   ; 
- D 0 - I - 0x01CAF4 07:8AE4: 32        .byte $32   ; 
- D 0 - I - 0x01CAF5 07:8AE5: 20        .byte $20   ; 
- D 0 - I - 0x01CAF6 07:8AE6: 22        .byte $22   ; 
- D 0 - I - 0x01CAF7 07:8AE7: 2E        .byte $2E   ; 
- D 0 - I - 0x01CAF8 07:8AE8: 35        .byte $35   ; 
- D 0 - I - 0x01CAF9 07:8AE9: 22        .byte $22   ; 
- D 0 - I - 0x01CAFA 07:8AEA: 37        .byte $37   ; 
- D 0 - I - 0x01CAFB 07:8AEB: 32        .byte $32   ; 
- D 0 - I - 0x01CAFC 07:8AEC: 21        .byte $21   ; 
- D 0 - I - 0x01CAFD 07:8AED: 20        .byte $20   ; 
- D 0 - I - 0x01CAFE 07:8AEE: 22        .byte $22   ; 
- D 0 - I - 0x01CAFF 07:8AEF: 2C        .byte $2C   ; 
- D 0 - I - 0x01CB00 07:8AF0: 35        .byte $35   ; 
- D 0 - I - 0x01CB01 07:8AF1: 22        .byte $22   ; 
- D 0 - I - 0x01CB02 07:8AF2: 32        .byte $32   ; 
- D 0 - I - 0x01CB03 07:8AF3: 21        .byte $21   ; 
- D 0 - I - 0x01CB04 07:8AF4: 37        .byte $37   ; 
- D 0 - I - 0x01CB05 07:8AF5: 36        .byte $36   ; 
- D 0 - I - 0x01CB06 07:8AF6: 22        .byte $22   ; 
- D 0 - I - 0x01CB07 07:8AF7: 37        .byte $37   ; 
- D 0 - I - 0x01CB08 07:8AF8: 30        .byte $30   ; 
- D 0 - I - 0x01CB09 07:8AF9: 30        .byte $30   ; 
- D 0 - I - 0x01CB0A 07:8AFA: 30        .byte $30   ; 
- D 0 - I - 0x01CB0B 07:8AFB: 30        .byte $30   ; 
- D 0 - I - 0x01CB0C 07:8AFC: 16        .byte $16   ; 
- D 0 - I - 0x01CB0D 07:8AFD: 16        .byte $16   ; 
- D 0 - I - 0x01CB0E 07:8AFE: 22        .byte $22   ; 
- D 0 - I - 0x01CB0F 07:8AFF: 17        .byte $17   ; 
- D 0 - I - 0x01CB10 07:8B00: 20        .byte $20   ; 
- D 0 - I - 0x01CB11 07:8B01: 36        .byte $36   ; 
- D 0 - I - 0x01CB12 07:8B02: 20        .byte $20   ; 
- D 0 - I - 0x01CB13 07:8B03: 22        .byte $22   ; 
- D 0 - I - 0x01CB14 07:8B04: 21        .byte $21   ; 
- D 0 - I - 0x01CB15 07:8B05: 22        .byte $22   ; 
- D 0 - I - 0x01CB16 07:8B06: 1F        .byte $1F   ; 
- D 0 - I - 0x01CB17 07:8B07: 1F        .byte $1F   ; 
- D 0 - I - 0x01CB18 07:8B08: 37        .byte $37   ; 
- D 0 - I - 0x01CB19 07:8B09: 20        .byte $20   ; 
- D 0 - I - 0x01CB1A 07:8B0A: 37        .byte $37   ; 
- D 0 - I - 0x01CB1B 07:8B0B: 22        .byte $22   ; 
- D 0 - I - 0x01CB1C 07:8B0C: 20        .byte $20   ; 
- D 0 - I - 0x01CB1D 07:8B0D: 20        .byte $20   ; 
- D 0 - I - 0x01CB1E 07:8B0E: 2C        .byte $2C   ; 
- D 0 - I - 0x01CB1F 07:8B0F: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB20 07:8B10: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB21 07:8B11: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB22 07:8B12: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB23 07:8B13: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB24 07:8B14: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB25 07:8B15: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB26 07:8B16: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB27 07:8B17: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB28 07:8B18: 2F        .byte $2F   ; 
- D 0 - I - 0x01CB29 07:8B19: 2F        .byte $2F   ; 
- D 0 - I - 0x01CB2A 07:8B1A: 2C        .byte $2C   ; 
- D 0 - I - 0x01CB2B 07:8B1B: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB2C 07:8B1C: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB2D 07:8B1D: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB2E 07:8B1E: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB2F 07:8B1F: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB30 07:8B20: 20        .byte $20   ; 
- D 0 - I - 0x01CB31 07:8B21: 20        .byte $20   ; 
- D 0 - I - 0x01CB32 07:8B22: 22        .byte $22   ; 
- D 0 - I - 0x01CB33 07:8B23: 2F        .byte $2F   ; 
- D 0 - I - 0x01CB34 07:8B24: 2F        .byte $2F   ; 
- D 0 - I - 0x01CB35 07:8B25: 2F        .byte $2F   ; 
- D 0 - I - 0x01CB36 07:8B26: 2C        .byte $2C   ; 
- D 0 - I - 0x01CB37 07:8B27: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB38 07:8B28: 37        .byte $37   ; 
- D 0 - I - 0x01CB39 07:8B29: 36        .byte $36   ; 
- D 0 - I - 0x01CB3A 07:8B2A: 37        .byte $37   ; 
- D 0 - I - 0x01CB3B 07:8B2B: 27        .byte $27   ; 
- D 0 - I - 0x01CB3C 07:8B2C: 22        .byte $22   ; 
- D 0 - I - 0x01CB3D 07:8B2D: 38        .byte $38   ; 
- D 0 - I - 0x01CB3E 07:8B2E: 22        .byte $22   ; 
- D 0 - I - 0x01CB3F 07:8B2F: 27        .byte $27   ; 
- D 0 - I - 0x01CB40 07:8B30: 1A        .byte $1A   ; 
- D 0 - I - 0x01CB41 07:8B31: 1A        .byte $1A   ; 
- D 0 - I - 0x01CB42 07:8B32: 1A        .byte $1A   ; 
- D 0 - I - 0x01CB43 07:8B33: 1A        .byte $1A   ; 
- D 0 - I - 0x01CB44 07:8B34: 1F        .byte $1F   ; 
- D 0 - I - 0x01CB45 07:8B35: 1F        .byte $1F   ; 
- D 0 - I - 0x01CB46 07:8B36: 1F        .byte $1F   ; 
- D 0 - I - 0x01CB47 07:8B37: 1F        .byte $1F   ; 
- D 0 - I - 0x01CB48 07:8B38: 1B        .byte $1B   ; 
- D 0 - I - 0x01CB49 07:8B39: 1B        .byte $1B   ; 
- D 0 - I - 0x01CB4A 07:8B3A: 1B        .byte $1B   ; 
- D 0 - I - 0x01CB4B 07:8B3B: 1B        .byte $1B   ; 
- D 0 - I - 0x01CB4C 07:8B3C: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB4D 07:8B3D: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB4E 07:8B3E: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB4F 07:8B3F: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB50 07:8B40: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB51 07:8B41: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB52 07:8B42: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB53 07:8B43: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB54 07:8B44: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB55 07:8B45: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB56 07:8B46: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB57 07:8B47: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB58 07:8B48: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB59 07:8B49: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB5A 07:8B4A: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB5B 07:8B4B: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB5C 07:8B4C: 2F        .byte $2F   ; 
- D 0 - I - 0x01CB5D 07:8B4D: 04        .byte $04   ; 
- D 0 - I - 0x01CB5E 07:8B4E: 2F        .byte $2F   ; 
- D 0 - I - 0x01CB5F 07:8B4F: 2C        .byte $2C   ; 
- D 0 - I - 0x01CB60 07:8B50: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB61 07:8B51: 2F        .byte $2F   ; 
- D 0 - I - 0x01CB62 07:8B52: 2F        .byte $2F   ; 
- D 0 - I - 0x01CB63 07:8B53: 37        .byte $37   ; 
- D 0 - I - 0x01CB64 07:8B54: 04        .byte $04   ; 
- D 0 - I - 0x01CB65 07:8B55: 04        .byte $04   ; 
- D 0 - I - 0x01CB66 07:8B56: 22        .byte $22   ; 
- D 0 - I - 0x01CB67 07:8B57: 04        .byte $04   ; 
- D 0 - I - 0x01CB68 07:8B58: 20        .byte $20   ; 
- D 0 - I - 0x01CB69 07:8B59: 38        .byte $38   ; 
- D 0 - I - 0x01CB6A 07:8B5A: 21        .byte $21   ; 
- D 0 - I - 0x01CB6B 07:8B5B: 22        .byte $22   ; 
- D 0 - I - 0x01CB6C 07:8B5C: 38        .byte $38   ; 
- D 0 - I - 0x01CB6D 07:8B5D: 17        .byte $17   ; 
- D 0 - I - 0x01CB6E 07:8B5E: 36        .byte $36   ; 
- D 0 - I - 0x01CB6F 07:8B5F: 22        .byte $22   ; 
- D 0 - I - 0x01CB70 07:8B60: 31        .byte $31   ; 
- D 0 - I - 0x01CB71 07:8B61: 16        .byte $16   ; 
- D 0 - I - 0x01CB72 07:8B62: 31        .byte $31   ; 
- D 0 - I - 0x01CB73 07:8B63: 22        .byte $22   ; 
- D 0 - I - 0x01CB74 07:8B64: 30        .byte $30   ; 
- D 0 - I - 0x01CB75 07:8B65: 38        .byte $38   ; 
- D 0 - I - 0x01CB76 07:8B66: 27        .byte $27   ; 
- D 0 - I - 0x01CB77 07:8B67: 36        .byte $36   ; 
- D 0 - I - 0x01CB78 07:8B68: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB79 07:8B69: 37        .byte $37   ; 
- D 0 - I - 0x01CB7A 07:8B6A: 21        .byte $21   ; 
- D 0 - I - 0x01CB7B 07:8B6B: 22        .byte $22   ; 
- D 0 - I - 0x01CB7C 07:8B6C: 37        .byte $37   ; 
- D 0 - I - 0x01CB7D 07:8B6D: 30        .byte $30   ; 
- D 0 - I - 0x01CB7E 07:8B6E: 39        .byte $39   ; 
- D 0 - I - 0x01CB7F 07:8B6F: 30        .byte $30   ; 



_off047_8B70_06_00_00:
- D 0 - I - 0x01CB80 07:8B70: 01        .byte $01   ; 
- D 0 - I - 0x01CB81 07:8B71: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB82 07:8B72: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB83 07:8B73: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB84 07:8B74: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB85 07:8B75: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB86 07:8B76: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB87 07:8B77: 13        .byte $13   ; 
- D 0 - I - 0x01CB88 07:8B78: 36        .byte $36   ; 
- D 0 - I - 0x01CB89 07:8B79: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB8A 07:8B7A: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB8B 07:8B7B: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB8C 07:8B7C: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB8D 07:8B7D: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB8E 07:8B7E: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB8F 07:8B7F: 12        .byte $12   ; 
- D 0 - I - 0x01CB90 07:8B80: 13        .byte $13   ; 
- D 0 - I - 0x01CB91 07:8B81: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB92 07:8B82: 35        .byte $35   ; 
- D 0 - I - 0x01CB93 07:8B83: 2D        .byte $2D   ; 
- D 0 - I - 0x01CB94 07:8B84: 2C        .byte $2C   ; 
- D 0 - I - 0x01CB95 07:8B85: 2D        .byte $2D   ; 
- D 0 - I - 0x01CB96 07:8B86: 2F        .byte $2F   ; 
- D 0 - I - 0x01CB97 07:8B87: 30        .byte $30   ; 
- D 0 - I - 0x01CB98 07:8B88: 30        .byte $30   ; 
- D 0 - I - 0x01CB99 07:8B89: 2E        .byte $2E   ; 
- D 0 - I - 0x01CB9A 07:8B8A: 35        .byte $35   ; 
- D 0 - I - 0x01CB9B 07:8B8B: 2A        .byte $2A   ; 
- D 0 - I - 0x01CB9C 07:8B8C: 2B        .byte $2B   ; 
- D 0 - I - 0x01CB9D 07:8B8D: 27        .byte $27   ; 
- D 0 - I - 0x01CB9E 07:8B8E: 28        .byte $28   ; 
- D 0 - I - 0x01CB9F 07:8B8F: 20        .byte $20   ; 
- D 0 - I - 0x01CBA0 07:8B90: 21        .byte $21   ; 
- D 0 - I - 0x01CBA1 07:8B91: 2E        .byte $2E   ; 
- D 0 - I - 0x01CBA2 07:8B92: 35        .byte $35   ; 
- D 0 - I - 0x01CBA3 07:8B93: 1A        .byte $1A   ; 
- D 0 - I - 0x01CBA4 07:8B94: 1A        .byte $1A   ; 
- D 0 - I - 0x01CBA5 07:8B95: 1A        .byte $1A   ; 
- D 0 - I - 0x01CBA6 07:8B96: 1A        .byte $1A   ; 
- D 0 - I - 0x01CBA7 07:8B97: 34        .byte $34   ; 
- D 0 - I - 0x01CBA8 07:8B98: 34        .byte $34   ; 
- D 0 - I - 0x01CBA9 07:8B99: 2E        .byte $2E   ; 
- D 0 - I - 0x01CBAA 07:8B9A: 1F        .byte $1F   ; 
- D 0 - I - 0x01CBAB 07:8B9B: 1F        .byte $1F   ; 
- D 0 - I - 0x01CBAC 07:8B9C: 1B        .byte $1B   ; 
- D 0 - I - 0x01CBAD 07:8B9D: 1B        .byte $1B   ; 
- D 0 - I - 0x01CBAE 07:8B9E: 1B        .byte $1B   ; 
- D 0 - I - 0x01CBAF 07:8B9F: 1B        .byte $1B   ; 
- D 0 - I - 0x01CBB0 07:8BA0: 1B        .byte $1B   ; 
- D 0 - I - 0x01CBB1 07:8BA1: 20        .byte $20   ; 
- D 0 - I - 0x01CBB2 07:8BA2: 20        .byte $20   ; 
- D 0 - I - 0x01CBB3 07:8BA3: 2F        .byte $2F   ; 
- D 0 - I - 0x01CBB4 07:8BA4: 2C        .byte $2C   ; 
- D 0 - I - 0x01CBB5 07:8BA5: 2E        .byte $2E   ; 
- D 0 - I - 0x01CBB6 07:8BA6: 2E        .byte $2E   ; 
- D 0 - I - 0x01CBB7 07:8BA7: 2F        .byte $2F   ; 
- D 0 - I - 0x01CBB8 07:8BA8: 2E        .byte $2E   ; 
- D 0 - I - 0x01CBB9 07:8BA9: 20        .byte $20   ; 
- D 0 - I - 0x01CBBA 07:8BAA: 21        .byte $21   ; 
- D 0 - I - 0x01CBBB 07:8BAB: 22        .byte $22   ; 
- D 0 - I - 0x01CBBC 07:8BAC: 04        .byte $04   ; 
- D 0 - I - 0x01CBBD 07:8BAD: 21        .byte $21   ; 
- D 0 - I - 0x01CBBE 07:8BAE: 21        .byte $21   ; 
- D 0 - I - 0x01CBBF 07:8BAF: 22        .byte $22   ; 
- D 0 - I - 0x01CBC0 07:8BB0: 35        .byte $35   ; 
- D 0 - I - 0x01CBC1 07:8BB1: 30        .byte $30   ; 
- D 0 - I - 0x01CBC2 07:8BB2: 22        .byte $22   ; 
- D 0 - I - 0x01CBC3 07:8BB3: 27        .byte $27   ; 
- D 0 - I - 0x01CBC4 07:8BB4: 24        .byte $24   ; 
- D 0 - I - 0x01CBC5 07:8BB5: 25        .byte $25   ; 
- D 0 - I - 0x01CBC6 07:8BB6: 20        .byte $20   ; 
- D 0 - I - 0x01CBC7 07:8BB7: 23        .byte $23   ; 
- D 0 - I - 0x01CBC8 07:8BB8: 10        .byte $10   ; 
- D 0 - I - 0x01CBC9 07:8BB9: 22        .byte $22   ; 
- D 0 - I - 0x01CBCA 07:8BBA: 31        .byte $31   ; 
- D 0 - I - 0x01CBCB 07:8BBB: 38        .byte $38   ; 
- D 0 - I - 0x01CBCC 07:8BBC: 27        .byte $27   ; 
- D 0 - I - 0x01CBCD 07:8BBD: 29        .byte $29   ; 
- D 0 - I - 0x01CBCE 07:8BBE: 2A        .byte $2A   ; 
- D 0 - I - 0x01CBCF 07:8BBF: 2B        .byte $2B   ; 
- D 0 - I - 0x01CBD0 07:8BC0: 14        .byte $14   ; 
- D 0 - I - 0x01CBD1 07:8BC1: 34        .byte $34   ; 
- D 0 - I - 0x01CBD2 07:8BC2: 34        .byte $34   ; 
- D 0 - I - 0x01CBD3 07:8BC3: 1A        .byte $1A   ; 
- D 0 - I - 0x01CBD4 07:8BC4: 19        .byte $19   ; 
- D 0 - I - 0x01CBD5 07:8BC5: 19        .byte $19   ; 
- D 0 - I - 0x01CBD6 07:8BC6: 1A        .byte $1A   ; 
- D 0 - I - 0x01CBD7 07:8BC7: 1F        .byte $1F   ; 
- D 0 - I - 0x01CBD8 07:8BC8: 1F        .byte $1F   ; 
- D 0 - I - 0x01CBD9 07:8BC9: 1B        .byte $1B   ; 
- D 0 - I - 0x01CBDA 07:8BCA: 1B        .byte $1B   ; 
- D 0 - I - 0x01CBDB 07:8BCB: 1B        .byte $1B   ; 
- D 0 - I - 0x01CBDC 07:8BCC: 1B        .byte $1B   ; 
- D 0 - I - 0x01CBDD 07:8BCD: 1B        .byte $1B   ; 
- D 0 - I - 0x01CBDE 07:8BCE: 1B        .byte $1B   ; 
- D 0 - I - 0x01CBDF 07:8BCF: 2E        .byte $2E   ; 
- D 0 - I - 0x01CBE0 07:8BD0: 2E        .byte $2E   ; 



_off047_8BD1_06_02_00:
- D 0 - I - 0x01CBE1 07:8BD1: 00        .byte $00   ; 
- D 0 - I - 0x01CBE2 07:8BD2: 20        .byte $20   ; 
- D 0 - I - 0x01CBE3 07:8BD3: 20        .byte $20   ; 
- D 0 - I - 0x01CBE4 07:8BD4: 21        .byte $21   ; 
- D 0 - I - 0x01CBE5 07:8BD5: 20        .byte $20   ; 
- D 0 - I - 0x01CBE6 07:8BD6: 37        .byte $37   ; 
- D 0 - I - 0x01CBE7 07:8BD7: 32        .byte $32   ; 
- D 0 - I - 0x01CBE8 07:8BD8: 22        .byte $22   ; 
- D 0 - I - 0x01CBE9 07:8BD9: 2E        .byte $2E   ; 
- D 0 - I - 0x01CBEA 07:8BDA: 21        .byte $21   ; 
- D 0 - I - 0x01CBEB 07:8BDB: 22        .byte $22   ; 
- D 0 - I - 0x01CBEC 07:8BDC: 37        .byte $37   ; 
- D 0 - I - 0x01CBED 07:8BDD: 37        .byte $37   ; 
- D 0 - I - 0x01CBEE 07:8BDE: 32        .byte $32   ; 
- D 0 - I - 0x01CBEF 07:8BDF: 20        .byte $20   ; 
- D 0 - I - 0x01CBF0 07:8BE0: 20        .byte $20   ; 
- D 0 - I - 0x01CBF1 07:8BE1: 2E        .byte $2E   ; 
- D 0 - I - 0x01CBF2 07:8BE2: 31        .byte $31   ; 
- D 0 - I - 0x01CBF3 07:8BE3: 22        .byte $22   ; 
- D 0 - I - 0x01CBF4 07:8BE4: 04        .byte $04   ; 
- D 0 - I - 0x01CBF5 07:8BE5: 3A        .byte $3A   ; 
- D 0 - I - 0x01CBF6 07:8BE6: 30        .byte $30   ; 
- D 0 - I - 0x01CBF7 07:8BE7: 21        .byte $21   ; 
- D 0 - I - 0x01CBF8 07:8BE8: 22        .byte $22   ; 
- D 0 - I - 0x01CBF9 07:8BE9: 2E        .byte $2E   ; 
- D 0 - I - 0x01CBFA 07:8BEA: 37        .byte $37   ; 
- D 0 - I - 0x01CBFB 07:8BEB: 31        .byte $31   ; 
- D 0 - I - 0x01CBFC 07:8BEC: 38        .byte $38   ; 
- D 0 - I - 0x01CBFD 07:8BED: 27        .byte $27   ; 
- D 0 - I - 0x01CBFE 07:8BEE: 21        .byte $21   ; 
- D 0 - I - 0x01CBFF 07:8BEF: 27        .byte $27   ; 
- D 0 - I - 0x01CC00 07:8BF0: 22        .byte $22   ; 
- D 0 - I - 0x01CC01 07:8BF1: 30        .byte $30   ; 
- D 0 - I - 0x01CC02 07:8BF2: 34        .byte $34   ; 
- D 0 - I - 0x01CC03 07:8BF3: 34        .byte $34   ; 
- D 0 - I - 0x01CC04 07:8BF4: 19        .byte $19   ; 
- D 0 - I - 0x01CC05 07:8BF5: 1A        .byte $1A   ; 
- D 0 - I - 0x01CC06 07:8BF6: 34        .byte $34   ; 
- D 0 - I - 0x01CC07 07:8BF7: 1A        .byte $1A   ; 
- D 0 - I - 0x01CC08 07:8BF8: 19        .byte $19   ; 
- D 0 - I - 0x01CC09 07:8BF9: 34        .byte $34   ; 
- D 0 - I - 0x01CC0A 07:8BFA: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC0B 07:8BFB: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC0C 07:8BFC: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC0D 07:8BFD: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC0E 07:8BFE: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC0F 07:8BFF: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC10 07:8C00: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC11 07:8C01: 1B        .byte $1B   ; 



_off047_8C02_06_01_00:
- D 0 - I - 0x01CC12 07:8C02: 05        .byte $05   ; 
- D 0 - I - 0x01CC13 07:8C03: 2E        .byte $2E   ; 
- D 0 - I - 0x01CC14 07:8C04: 2E        .byte $2E   ; 
- D 0 - I - 0x01CC15 07:8C05: 2E        .byte $2E   ; 
- D 0 - I - 0x01CC16 07:8C06: 2E        .byte $2E   ; 
- D 0 - I - 0x01CC17 07:8C07: 2E        .byte $2E   ; 
- D 0 - I - 0x01CC18 07:8C08: 2E        .byte $2E   ; 
- D 0 - I - 0x01CC19 07:8C09: 2E        .byte $2E   ; 
- D 0 - I - 0x01CC1A 07:8C0A: 2E        .byte $2E   ; 
- D 0 - I - 0x01CC1B 07:8C0B: 2F        .byte $2F   ; 
- D 0 - I - 0x01CC1C 07:8C0C: 22        .byte $22   ; 
- D 0 - I - 0x01CC1D 07:8C0D: 04        .byte $04   ; 
- D 0 - I - 0x01CC1E 07:8C0E: 22        .byte $22   ; 
- D 0 - I - 0x01CC1F 07:8C0F: 2C        .byte $2C   ; 
- D 0 - I - 0x01CC20 07:8C10: 2F        .byte $2F   ; 
- D 0 - I - 0x01CC21 07:8C11: 04        .byte $04   ; 
- D 0 - I - 0x01CC22 07:8C12: 22        .byte $22   ; 
- D 0 - I - 0x01CC23 07:8C13: 20        .byte $20   ; 
- D 0 - I - 0x01CC24 07:8C14: 20        .byte $20   ; 
- D 0 - I - 0x01CC25 07:8C15: 21        .byte $21   ; 
- D 0 - I - 0x01CC26 07:8C16: 37        .byte $37   ; 
- D 0 - I - 0x01CC27 07:8C17: 04        .byte $04   ; 
- D 0 - I - 0x01CC28 07:8C18: 20        .byte $20   ; 
- D 0 - I - 0x01CC29 07:8C19: 22        .byte $22   ; 
- D 0 - I - 0x01CC2A 07:8C1A: 20        .byte $20   ; 
- D 0 - I - 0x01CC2B 07:8C1B: 37        .byte $37   ; 
- D 0 - I - 0x01CC2C 07:8C1C: 17        .byte $17   ; 
- D 0 - I - 0x01CC2D 07:8C1D: 38        .byte $38   ; 
- D 0 - I - 0x01CC2E 07:8C1E: 17        .byte $17   ; 
- D 0 - I - 0x01CC2F 07:8C1F: 27        .byte $27   ; 
- D 0 - I - 0x01CC30 07:8C20: 22        .byte $22   ; 
- D 0 - I - 0x01CC31 07:8C21: 37        .byte $37   ; 
- D 0 - I - 0x01CC32 07:8C22: 04        .byte $04   ; 
- D 0 - I - 0x01CC33 07:8C23: 1F        .byte $1F   ; 
- D 0 - I - 0x01CC34 07:8C24: 1F        .byte $1F   ; 
- D 0 - I - 0x01CC35 07:8C25: 1F        .byte $1F   ; 
- D 0 - I - 0x01CC36 07:8C26: 1F        .byte $1F   ; 
- D 0 - I - 0x01CC37 07:8C27: 1F        .byte $1F   ; 
- D 0 - I - 0x01CC38 07:8C28: 34        .byte $34   ; 
- D 0 - I - 0x01CC39 07:8C29: 1A        .byte $1A   ; 
- D 0 - I - 0x01CC3A 07:8C2A: 1A        .byte $1A   ; 
- D 0 - I - 0x01CC3B 07:8C2B: 2E        .byte $2E   ; 
- D 0 - I - 0x01CC3C 07:8C2C: 2E        .byte $2E   ; 
- D 0 - I - 0x01CC3D 07:8C2D: 2E        .byte $2E   ; 
- D 0 - I - 0x01CC3E 07:8C2E: 2E        .byte $2E   ; 
- D 0 - I - 0x01CC3F 07:8C2F: 2E        .byte $2E   ; 
- D 0 - I - 0x01CC40 07:8C30: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC41 07:8C31: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC42 07:8C32: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC43 07:8C33: 37        .byte $37   ; 
- D 0 - I - 0x01CC44 07:8C34: 20        .byte $20   ; 
- D 0 - I - 0x01CC45 07:8C35: 22        .byte $22   ; 
- D 0 - I - 0x01CC46 07:8C36: 2C        .byte $2C   ; 
- D 0 - I - 0x01CC47 07:8C37: 2E        .byte $2E   ; 
- D 0 - I - 0x01CC48 07:8C38: 2E        .byte $2E   ; 
- D 0 - I - 0x01CC49 07:8C39: 3D        .byte $3D   ; 
- D 0 - I - 0x01CC4A 07:8C3A: 3E        .byte $3E   ; 
- D 0 - I - 0x01CC4B 07:8C3B: 22        .byte $22   ; 
- D 0 - I - 0x01CC4C 07:8C3C: 20        .byte $20   ; 
- D 0 - I - 0x01CC4D 07:8C3D: 21        .byte $21   ; 
- D 0 - I - 0x01CC4E 07:8C3E: 04        .byte $04   ; 
- D 0 - I - 0x01CC4F 07:8C3F: 2F        .byte $2F   ; 
- D 0 - I - 0x01CC50 07:8C40: 22        .byte $22   ; 
- D 0 - I - 0x01CC51 07:8C41: 22        .byte $22   ; 
- D 0 - I - 0x01CC52 07:8C42: 40        .byte $40   ; 
- D 0 - I - 0x01CC53 07:8C43: 21        .byte $21   ; 
- D 0 - I - 0x01CC54 07:8C44: 3C        .byte $3C   ; 
- D 0 - I - 0x01CC55 07:8C45: 29        .byte $29   ; 
- D 0 - I - 0x01CC56 07:8C46: 26        .byte $26   ; 
- D 0 - I - 0x01CC57 07:8C47: 20        .byte $20   ; 
- D 0 - I - 0x01CC58 07:8C48: 23        .byte $23   ; 
- D 0 - I - 0x01CC59 07:8C49: 21        .byte $21   ; 
- D 0 - I - 0x01CC5A 07:8C4A: 2A        .byte $2A   ; 
- D 0 - I - 0x01CC5B 07:8C4B: 22        .byte $22   ; 
- D 0 - I - 0x01CC5C 07:8C4C: 27        .byte $27   ; 
- D 0 - I - 0x01CC5D 07:8C4D: 28        .byte $28   ; 
- D 0 - I - 0x01CC5E 07:8C4E: 3B        .byte $3B   ; 
- D 0 - I - 0x01CC5F 07:8C4F: 2A        .byte $2A   ; 
- D 0 - I - 0x01CC60 07:8C50: 2B        .byte $2B   ; 
- D 0 - I - 0x01CC61 07:8C51: 27        .byte $27   ; 
- D 0 - I - 0x01CC62 07:8C52: 24        .byte $24   ; 
- D 0 - I - 0x01CC63 07:8C53: 34        .byte $34   ; 
- D 0 - I - 0x01CC64 07:8C54: 1A        .byte $1A   ; 
- D 0 - I - 0x01CC65 07:8C55: 1A        .byte $1A   ; 
- D 0 - I - 0x01CC66 07:8C56: 1A        .byte $1A   ; 
- D 0 - I - 0x01CC67 07:8C57: 1A        .byte $1A   ; 
- D 0 - I - 0x01CC68 07:8C58: 1A        .byte $1A   ; 
- D 0 - I - 0x01CC69 07:8C59: 1A        .byte $1A   ; 
- D 0 - I - 0x01CC6A 07:8C5A: 34        .byte $34   ; 
- D 0 - I - 0x01CC6B 07:8C5B: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC6C 07:8C5C: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC6D 07:8C5D: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC6E 07:8C5E: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC6F 07:8C5F: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC70 07:8C60: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC71 07:8C61: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC72 07:8C62: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC73 07:8C63: 3F        .byte $3F   ; 
- D 0 - I - 0x01CC74 07:8C64: 38        .byte $38   ; 
- D 0 - I - 0x01CC75 07:8C65: 20        .byte $20   ; 
- D 0 - I - 0x01CC76 07:8C66: 20        .byte $20   ; 
- D 0 - I - 0x01CC77 07:8C67: 37        .byte $37   ; 
- D 0 - I - 0x01CC78 07:8C68: 22        .byte $22   ; 
- D 0 - I - 0x01CC79 07:8C69: 36        .byte $36   ; 
- D 0 - I - 0x01CC7A 07:8C6A: 20        .byte $20   ; 
- D 0 - I - 0x01CC7B 07:8C6B: 41        .byte $41   ; 
- D 0 - I - 0x01CC7C 07:8C6C: 36        .byte $36   ; 
- D 0 - I - 0x01CC7D 07:8C6D: 22        .byte $22   ; 
- D 0 - I - 0x01CC7E 07:8C6E: 21        .byte $21   ; 
- D 0 - I - 0x01CC7F 07:8C6F: 3C        .byte $3C   ; 
- D 0 - I - 0x01CC80 07:8C70: 04        .byte $04   ; 
- D 0 - I - 0x01CC81 07:8C71: 04        .byte $04   ; 
- D 0 - I - 0x01CC82 07:8C72: 20        .byte $20   ; 
- D 0 - I - 0x01CC83 07:8C73: 30        .byte $30   ; 
- D 0 - I - 0x01CC84 07:8C74: 30        .byte $30   ; 
- D 0 - I - 0x01CC85 07:8C75: 37        .byte $37   ; 
- D 0 - I - 0x01CC86 07:8C76: 31        .byte $31   ; 
- D 0 - I - 0x01CC87 07:8C77: 31        .byte $31   ; 
- D 0 - I - 0x01CC88 07:8C78: 24        .byte $24   ; 
- D 0 - I - 0x01CC89 07:8C79: 30        .byte $30   ; 
- D 0 - I - 0x01CC8A 07:8C7A: 30        .byte $30   ; 
- D 0 - I - 0x01CC8B 07:8C7B: 20        .byte $20   ; 
- D 0 - I - 0x01CC8C 07:8C7C: 22        .byte $22   ; 
- D 0 - I - 0x01CC8D 07:8C7D: 38        .byte $38   ; 
- D 0 - I - 0x01CC8E 07:8C7E: 20        .byte $20   ; 
- D 0 - I - 0x01CC8F 07:8C7F: 22        .byte $22   ; 
- D 0 - I - 0x01CC90 07:8C80: 25        .byte $25   ; 
- D 0 - I - 0x01CC91 07:8C81: 36        .byte $36   ; 
- D 0 - I - 0x01CC92 07:8C82: 20        .byte $20   ; 
- D 0 - I - 0x01CC93 07:8C83: 34        .byte $34   ; 
- D 0 - I - 0x01CC94 07:8C84: 34        .byte $34   ; 
- D 0 - I - 0x01CC95 07:8C85: 1A        .byte $1A   ; 
- D 0 - I - 0x01CC96 07:8C86: 34        .byte $34   ; 
- D 0 - I - 0x01CC97 07:8C87: 34        .byte $34   ; 
- D 0 - I - 0x01CC98 07:8C88: 1A        .byte $1A   ; 
- D 0 - I - 0x01CC99 07:8C89: 19        .byte $19   ; 
- D 0 - I - 0x01CC9A 07:8C8A: 34        .byte $34   ; 
- D 0 - I - 0x01CC9B 07:8C8B: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC9C 07:8C8C: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC9D 07:8C8D: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC9E 07:8C8E: 1B        .byte $1B   ; 
- D 0 - I - 0x01CC9F 07:8C8F: 1B        .byte $1B   ; 
- D 0 - I - 0x01CCA0 07:8C90: 1B        .byte $1B   ; 
- D 0 - I - 0x01CCA1 07:8C91: 1B        .byte $1B   ; 
- D 0 - I - 0x01CCA2 07:8C92: 1B        .byte $1B   ; 
- D 0 - I - 0x01CCA3 07:8C93: 20        .byte $20   ; 
- D 0 - I - 0x01CCA4 07:8C94: 2C        .byte $2C   ; 
- D 0 - I - 0x01CCA5 07:8C95: 2E        .byte $2E   ; 
- D 0 - I - 0x01CCA6 07:8C96: 2E        .byte $2E   ; 
- D 0 - I - 0x01CCA7 07:8C97: 20        .byte $20   ; 
- D 0 - I - 0x01CCA8 07:8C98: 2C        .byte $2C   ; 
- D 0 - I - 0x01CCA9 07:8C99: 2E        .byte $2E   ; 
- D 0 - I - 0x01CCAA 07:8C9A: 2E        .byte $2E   ; 
- D 0 - I - 0x01CCAB 07:8C9B: 21        .byte $21   ; 
- D 0 - I - 0x01CCAC 07:8C9C: 22        .byte $22   ; 
- D 0 - I - 0x01CCAD 07:8C9D: 37        .byte $37   ; 
- D 0 - I - 0x01CCAE 07:8C9E: 23        .byte $23   ; 
- D 0 - I - 0x01CCAF 07:8C9F: 21        .byte $21   ; 
- D 0 - I - 0x01CCB0 07:8CA0: 22        .byte $22   ; 
- D 0 - I - 0x01CCB1 07:8CA1: 30        .byte $30   ; 
- D 0 - I - 0x01CCB2 07:8CA2: 37        .byte $37   ; 
- D 0 - I - 0x01CCB3 07:8CA3: 30        .byte $30   ; 
- D 0 - I - 0x01CCB4 07:8CA4: 30        .byte $30   ; 
- D 0 - I - 0x01CCB5 07:8CA5: 2A        .byte $2A   ; 
- D 0 - I - 0x01CCB6 07:8CA6: 2B        .byte $2B   ; 
- D 0 - I - 0x01CCB7 07:8CA7: 36        .byte $36   ; 
- D 0 - I - 0x01CCB8 07:8CA8: 20        .byte $20   ; 
- D 0 - I - 0x01CCB9 07:8CA9: 22        .byte $22   ; 
- D 0 - I - 0x01CCBA 07:8CAA: 04        .byte $04   ; 
- D 0 - I - 0x01CCBB 07:8CAB: 20        .byte $20   ; 
- D 0 - I - 0x01CCBC 07:8CAC: 22        .byte $22   ; 
- D 0 - I - 0x01CCBD 07:8CAD: 27        .byte $27   ; 
- D 0 - I - 0x01CCBE 07:8CAE: 24        .byte $24   ; 
- D 0 - I - 0x01CCBF 07:8CAF: 25        .byte $25   ; 
- D 0 - I - 0x01CCC0 07:8CB0: 21        .byte $21   ; 
- D 0 - I - 0x01CCC1 07:8CB1: 30        .byte $30   ; 
- D 0 - I - 0x01CCC2 07:8CB2: 15        .byte $15   ; 
- D 0 - I - 0x01CCC3 07:8CB3: 34        .byte $34   ; 
- D 0 - I - 0x01CCC4 07:8CB4: 34        .byte $34   ; 
- D 0 - I - 0x01CCC5 07:8CB5: 1A        .byte $1A   ; 
- D 0 - I - 0x01CCC6 07:8CB6: 1A        .byte $1A   ; 
- D 0 - I - 0x01CCC7 07:8CB7: 1F        .byte $1F   ; 
- D 0 - I - 0x01CCC8 07:8CB8: 1F        .byte $1F   ; 
- D 0 - I - 0x01CCC9 07:8CB9: 31        .byte $31   ; 
- D 0 - I - 0x01CCCA 07:8CBA: 16        .byte $16   ; 
- D 0 - I - 0x01CCCB 07:8CBB: 1B        .byte $1B   ; 
- D 0 - I - 0x01CCCC 07:8CBC: 1B        .byte $1B   ; 
- D 0 - I - 0x01CCCD 07:8CBD: 1B        .byte $1B   ; 
- D 0 - I - 0x01CCCE 07:8CBE: 1B        .byte $1B   ; 
- D 0 - I - 0x01CCCF 07:8CBF: 2E        .byte $2E   ; 
- D 0 - I - 0x01CCD0 07:8CC0: 2E        .byte $2E   ; 
- D 0 - I - 0x01CCD1 07:8CC1: 2D        .byte $2D   ; 
- D 0 - I - 0x01CCD2 07:8CC2: 2C        .byte $2C   ; 
- D 0 - I - 0x01CCD3 07:8CC3: 2E        .byte $2E   ; 
- D 0 - I - 0x01CCD4 07:8CC4: 2E        .byte $2E   ; 
- D 0 - I - 0x01CCD5 07:8CC5: 2E        .byte $2E   ; 
- D 0 - I - 0x01CCD6 07:8CC6: 2E        .byte $2E   ; 
- D 0 - I - 0x01CCD7 07:8CC7: 3D        .byte $3D   ; 
- D 0 - I - 0x01CCD8 07:8CC8: 3E        .byte $3E   ; 
- D 0 - I - 0x01CCD9 07:8CC9: 3F        .byte $3F   ; 
- D 0 - I - 0x01CCDA 07:8CCA: 36        .byte $36   ; 
- D 0 - I - 0x01CCDB 07:8CCB: 36        .byte $36   ; 
- D 0 - I - 0x01CCDC 07:8CCC: 30        .byte $30   ; 
- D 0 - I - 0x01CCDD 07:8CCD: 22        .byte $22   ; 
- D 0 - I - 0x01CCDE 07:8CCE: 20        .byte $20   ; 
- D 0 - I - 0x01CCDF 07:8CCF: 3C        .byte $3C   ; 
- D 0 - I - 0x01CCE0 07:8CD0: 3D        .byte $3D   ; 
- D 0 - I - 0x01CCE1 07:8CD1: 3E        .byte $3E   ; 
- D 0 - I - 0x01CCE2 07:8CD2: 3F        .byte $3F   ; 
- D 0 - I - 0x01CCE3 07:8CD3: 04        .byte $04   ; 
- D 0 - I - 0x01CCE4 07:8CD4: 21        .byte $21   ; 
- D 0 - I - 0x01CCE5 07:8CD5: 20        .byte $20   ; 
- D 0 - I - 0x01CCE6 07:8CD6: 21        .byte $21   ; 
- D 0 - I - 0x01CCE7 07:8CD7: 37        .byte $37   ; 
- D 0 - I - 0x01CCE8 07:8CD8: 04        .byte $04   ; 
- D 0 - I - 0x01CCE9 07:8CD9: 40        .byte $40   ; 
- D 0 - I - 0x01CCEA 07:8CDA: 41        .byte $41   ; 
- D 0 - I - 0x01CCEB 07:8CDB: 15        .byte $15   ; 
- D 0 - I - 0x01CCEC 07:8CDC: 30        .byte $30   ; 
- D 0 - I - 0x01CCED 07:8CDD: 21        .byte $21   ; 
- D 0 - I - 0x01CCEE 07:8CDE: 22        .byte $22   ; 
- D 0 - I - 0x01CCEF 07:8CDF: 17        .byte $17   ; 
- D 0 - I - 0x01CCF0 07:8CE0: 38        .byte $38   ; 
- D 0 - I - 0x01CCF1 07:8CE1: 36        .byte $36   ; 
- D 0 - I - 0x01CCF2 07:8CE2: 22        .byte $22   ; 
- D 0 - I - 0x01CCF3 07:8CE3: 16        .byte $16   ; 
- D 0 - I - 0x01CCF4 07:8CE4: 31        .byte $31   ; 
- D 0 - I - 0x01CCF5 07:8CE5: 1F        .byte $1F   ; 
- D 0 - I - 0x01CCF6 07:8CE6: 1F        .byte $1F   ; 
- D 0 - I - 0x01CCF7 07:8CE7: 1A        .byte $1A   ; 
- D 0 - I - 0x01CCF8 07:8CE8: 1A        .byte $1A   ; 
- D 0 - I - 0x01CCF9 07:8CE9: 1A        .byte $1A   ; 
- D 0 - I - 0x01CCFA 07:8CEA: 34        .byte $34   ; 
- D 0 - I - 0x01CCFB 07:8CEB: 2F        .byte $2F   ; 
- D 0 - I - 0x01CCFC 07:8CEC: 2C        .byte $2C   ; 
- D 0 - I - 0x01CCFD 07:8CED: 2E        .byte $2E   ; 
- D 0 - I - 0x01CCFE 07:8CEE: 2E        .byte $2E   ; 
- D 0 - I - 0x01CCFF 07:8CEF: 1B        .byte $1B   ; 
- D 0 - I - 0x01CD00 07:8CF0: 1B        .byte $1B   ; 
- D 0 - I - 0x01CD01 07:8CF1: 1B        .byte $1B   ; 
- D 0 - I - 0x01CD02 07:8CF2: 1B        .byte $1B   ; 
- D 0 - I - 0x01CD03 07:8CF3: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD04 07:8CF4: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD05 07:8CF5: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD06 07:8CF6: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD07 07:8CF7: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD08 07:8CF8: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD09 07:8CF9: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD0A 07:8CFA: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD0B 07:8CFB: 20        .byte $20   ; 
- D 0 - I - 0x01CD0C 07:8CFC: 2F        .byte $2F   ; 
- D 0 - I - 0x01CD0D 07:8CFD: 2F        .byte $2F   ; 
- D 0 - I - 0x01CD0E 07:8CFE: 2C        .byte $2C   ; 
- D 0 - I - 0x01CD0F 07:8CFF: 2F        .byte $2F   ; 
- D 0 - I - 0x01CD10 07:8D00: 2F        .byte $2F   ; 
- D 0 - I - 0x01CD11 07:8D01: 2C        .byte $2C   ; 
- D 0 - I - 0x01CD12 07:8D02: 35        .byte $35   ; 
- D 0 - I - 0x01CD13 07:8D03: 22        .byte $22   ; 
- D 0 - I - 0x01CD14 07:8D04: 29        .byte $29   ; 
- D 0 - I - 0x01CD15 07:8D05: 26        .byte $26   ; 
- D 0 - I - 0x01CD16 07:8D06: 22        .byte $22   ; 
- D 0 - I - 0x01CD17 07:8D07: 23        .byte $23   ; 
- D 0 - I - 0x01CD18 07:8D08: 36        .byte $36   ; 
- D 0 - I - 0x01CD19 07:8D09: 22        .byte $22   ; 
- D 0 - I - 0x01CD1A 07:8D0A: 10        .byte $10   ; 
- D 0 - I - 0x01CD1B 07:8D0B: 27        .byte $27   ; 
- D 0 - I - 0x01CD1C 07:8D0C: 28        .byte $28   ; 
- D 0 - I - 0x01CD1D 07:8D0D: 3B        .byte $3B   ; 
- D 0 - I - 0x01CD1E 07:8D0E: 2A        .byte $2A   ; 
- D 0 - I - 0x01CD1F 07:8D0F: 2B        .byte $2B   ; 
- D 0 - I - 0x01CD20 07:8D10: 28        .byte $28   ; 
- D 0 - I - 0x01CD21 07:8D11: 20        .byte $20   ; 
- D 0 - I - 0x01CD22 07:8D12: 14        .byte $14   ; 
- D 0 - I - 0x01CD23 07:8D13: 19        .byte $19   ; 
- D 0 - I - 0x01CD24 07:8D14: 1A        .byte $1A   ; 
- D 0 - I - 0x01CD25 07:8D15: 1A        .byte $1A   ; 
- D 0 - I - 0x01CD26 07:8D16: 1A        .byte $1A   ; 
- D 0 - I - 0x01CD27 07:8D17: 1A        .byte $1A   ; 
- D 0 - I - 0x01CD28 07:8D18: 1F        .byte $1F   ; 
- D 0 - I - 0x01CD29 07:8D19: 1F        .byte $1F   ; 
- D 0 - I - 0x01CD2A 07:8D1A: 1F        .byte $1F   ; 
- D 0 - I - 0x01CD2B 07:8D1B: 1B        .byte $1B   ; 
- D 0 - I - 0x01CD2C 07:8D1C: 1B        .byte $1B   ; 
- D 0 - I - 0x01CD2D 07:8D1D: 1B        .byte $1B   ; 
- D 0 - I - 0x01CD2E 07:8D1E: 1B        .byte $1B   ; 
- D 0 - I - 0x01CD2F 07:8D1F: 1B        .byte $1B   ; 
- D 0 - I - 0x01CD30 07:8D20: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD31 07:8D21: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD32 07:8D22: 2E        .byte $2E   ; 



_off047_8D23_06_02_02:
- D 0 - I - 0x01CD33 07:8D23: 01        .byte $01   ; 
- D 0 - I - 0x01CD34 07:8D24: 20        .byte $20   ; 
- D 0 - I - 0x01CD35 07:8D25: 20        .byte $20   ; 
- D 0 - I - 0x01CD36 07:8D26: 22        .byte $22   ; 
- D 0 - I - 0x01CD37 07:8D27: 20        .byte $20   ; 
- D 0 - I - 0x01CD38 07:8D28: 20        .byte $20   ; 
- D 0 - I - 0x01CD39 07:8D29: 2C        .byte $2C   ; 
- D 0 - I - 0x01CD3A 07:8D2A: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD3B 07:8D2B: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD3C 07:8D2C: 20        .byte $20   ; 
- D 0 - I - 0x01CD3D 07:8D2D: 21        .byte $21   ; 
- D 0 - I - 0x01CD3E 07:8D2E: 20        .byte $20   ; 
- D 0 - I - 0x01CD3F 07:8D2F: 37        .byte $37   ; 
- D 0 - I - 0x01CD40 07:8D30: 04        .byte $04   ; 
- D 0 - I - 0x01CD41 07:8D31: 36        .byte $36   ; 
- D 0 - I - 0x01CD42 07:8D32: 22        .byte $22   ; 
- D 0 - I - 0x01CD43 07:8D33: 2C        .byte $2C   ; 
- D 0 - I - 0x01CD44 07:8D34: 21        .byte $21   ; 
- D 0 - I - 0x01CD45 07:8D35: 20        .byte $20   ; 
- D 0 - I - 0x01CD46 07:8D36: 22        .byte $22   ; 
- D 0 - I - 0x01CD47 07:8D37: 04        .byte $04   ; 
- D 0 - I - 0x01CD48 07:8D38: 04        .byte $04   ; 
- D 0 - I - 0x01CD49 07:8D39: 04        .byte $04   ; 
- D 0 - I - 0x01CD4A 07:8D3A: 21        .byte $21   ; 
- D 0 - I - 0x01CD4B 07:8D3B: 22        .byte $22   ; 
- D 0 - I - 0x01CD4C 07:8D3C: 20        .byte $20   ; 
- D 0 - I - 0x01CD4D 07:8D3D: 21        .byte $21   ; 
- D 0 - I - 0x01CD4E 07:8D3E: 37        .byte $37   ; 
- D 0 - I - 0x01CD4F 07:8D3F: 17        .byte $17   ; 
- D 0 - I - 0x01CD50 07:8D40: 38        .byte $38   ; 
- D 0 - I - 0x01CD51 07:8D41: 17        .byte $17   ; 
- D 0 - I - 0x01CD52 07:8D42: 38        .byte $38   ; 
- D 0 - I - 0x01CD53 07:8D43: 36        .byte $36   ; 
- D 0 - I - 0x01CD54 07:8D44: 1F        .byte $1F   ; 
- D 0 - I - 0x01CD55 07:8D45: 1F        .byte $1F   ; 
- D 0 - I - 0x01CD56 07:8D46: 1F        .byte $1F   ; 
- D 0 - I - 0x01CD57 07:8D47: 19        .byte $19   ; 
- D 0 - I - 0x01CD58 07:8D48: 19        .byte $19   ; 
- D 0 - I - 0x01CD59 07:8D49: 19        .byte $19   ; 
- D 0 - I - 0x01CD5A 07:8D4A: 19        .byte $19   ; 
- D 0 - I - 0x01CD5B 07:8D4B: 1F        .byte $1F   ; 
- D 0 - I - 0x01CD5C 07:8D4C: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD5D 07:8D4D: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD5E 07:8D4E: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD5F 07:8D4F: 1B        .byte $1B   ; 
- D 0 - I - 0x01CD60 07:8D50: 1B        .byte $1B   ; 
- D 0 - I - 0x01CD61 07:8D51: 1B        .byte $1B   ; 
- D 0 - I - 0x01CD62 07:8D52: 1B        .byte $1B   ; 
- D 0 - I - 0x01CD63 07:8D53: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD64 07:8D54: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD65 07:8D55: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD66 07:8D56: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD67 07:8D57: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD68 07:8D58: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD69 07:8D59: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD6A 07:8D5A: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD6B 07:8D5B: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD6C 07:8D5C: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD6D 07:8D5D: 2F        .byte $2F   ; 
- D 0 - I - 0x01CD6E 07:8D5E: 2F        .byte $2F   ; 
- D 0 - I - 0x01CD6F 07:8D5F: 21        .byte $21   ; 
- D 0 - I - 0x01CD70 07:8D60: 20        .byte $20   ; 
- D 0 - I - 0x01CD71 07:8D61: 22        .byte $22   ; 
- D 0 - I - 0x01CD72 07:8D62: 2C        .byte $2C   ; 
- D 0 - I - 0x01CD73 07:8D63: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD74 07:8D64: 20        .byte $20   ; 
- D 0 - I - 0x01CD75 07:8D65: 22        .byte $22   ; 
- D 0 - I - 0x01CD76 07:8D66: 20        .byte $20   ; 
- D 0 - I - 0x01CD77 07:8D67: 20        .byte $20   ; 
- D 0 - I - 0x01CD78 07:8D68: 37        .byte $37   ; 
- D 0 - I - 0x01CD79 07:8D69: 20        .byte $20   ; 
- D 0 - I - 0x01CD7A 07:8D6A: 04        .byte $04   ; 
- D 0 - I - 0x01CD7B 07:8D6B: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD7C 07:8D6C: 21        .byte $21   ; 
- D 0 - I - 0x01CD7D 07:8D6D: 36        .byte $36   ; 
- D 0 - I - 0x01CD7E 07:8D6E: 37        .byte $37   ; 
- D 0 - I - 0x01CD7F 07:8D6F: 22        .byte $22   ; 
- D 0 - I - 0x01CD80 07:8D70: 04        .byte $04   ; 
- D 0 - I - 0x01CD81 07:8D71: 36        .byte $36   ; 
- D 0 - I - 0x01CD82 07:8D72: 22        .byte $22   ; 
- D 0 - I - 0x01CD83 07:8D73: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD84 07:8D74: 1F        .byte $1F   ; 
- D 0 - I - 0x01CD85 07:8D75: 16        .byte $16   ; 
- D 0 - I - 0x01CD86 07:8D76: 16        .byte $16   ; 
- D 0 - I - 0x01CD87 07:8D77: 30        .byte $30   ; 
- D 0 - I - 0x01CD88 07:8D78: 38        .byte $38   ; 
- D 0 - I - 0x01CD89 07:8D79: 27        .byte $27   ; 
- D 0 - I - 0x01CD8A 07:8D7A: 22        .byte $22   ; 
- D 0 - I - 0x01CD8B 07:8D7B: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD8C 07:8D7C: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD8D 07:8D7D: 2E        .byte $2E   ; 
- D 0 - I - 0x01CD8E 07:8D7E: 2F        .byte $2F   ; 
- D 0 - I - 0x01CD8F 07:8D7F: 37        .byte $37   ; 
- D 0 - I - 0x01CD90 07:8D80: 04        .byte $04   ; 
- D 0 - I - 0x01CD91 07:8D81: 39        .byte $39   ; 
- D 0 - I - 0x01CD92 07:8D82: 30        .byte $30   ; 
- D 0 - I - 0x01CD93 07:8D83: 2E        .byte $2E   ; 



_off045_0x01CD94_06:
; 00 
- D 0 - I - 0x01CD94 07:8D84: 3D        .byte $3D, $3D, $3D, $3D   ; 
- D 0 - I - 0x01CD98 07:8D88: 3D        .byte $3D, $3D, $3D, $3D   ; 
- D 0 - I - 0x01CD9C 07:8D8C: 3D        .byte $3D, $3D, $3D, $3D   ; 
- D 0 - I - 0x01CDA0 07:8D90: 3D        .byte $3D, $3D, $3D, $3D   ; 
; 01 
- D 0 - I - 0x01CDA4 07:8D94: 3D        .byte $3D, $3D, $3D, $3D   ; 
- D 0 - I - 0x01CDA8 07:8D98: 3D        .byte $3D, $41, $42, $43   ; 
- D 0 - I - 0x01CDAC 07:8D9C: 50        .byte $50, $51, $00, $53   ; 
- D 0 - I - 0x01CDB0 07:8DA0: 60        .byte $60, $44, $52, $00   ; 
; 02 
- D 0 - I - 0x01CDB4 07:8DA4: 3D        .byte $3D, $3D, $61, $41   ; 
- D 0 - I - 0x01CDB8 07:8DA8: 3D        .byte $3D, $50, $51, $45   ; 
- D 0 - I - 0x01CDBC 07:8DAC: 54        .byte $54, $60, $44, $00   ; 
- D 0 - I - 0x01CDC0 07:8DB0: 64        .byte $64, $45, $63, $00   ; 
; 03 
- D 0 - I - 0x01CDC4 07:8DB4: 42        .byte $42, $3D, $3D, $3D   ; 
- D 0 - I - 0x01CDC8 07:8DB8: 63        .byte $63, $51, $43, $3D   ; 
- D 0 - I - 0x01CDCC 07:8DBC: 52        .byte $52, $62, $53, $40   ; 
- D 0 - I - 0x01CDD0 07:8DC0: 00        .byte $00, $00, $00, $54   ; 
; 04 
- D 0 - I - 0x01CDD4 07:8DC4: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01CDD8 07:8DC8: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01CDDC 07:8DCC: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01CDE0 07:8DD0: 00        .byte $00, $00, $00, $00   ; 
; 05 
- D 0 - I - 0x01CDE4 07:8DD4: 91        .byte $91, $91, $92, $90   ; 
- D 0 - I - 0x01CDE8 07:8DD8: 82        .byte $82, $A0, $A2, $A0   ; 
- D 0 - I - 0x01CDEC 07:8DDC: 65        .byte $65, $00, $00, $00   ; 
- D 0 - I - 0x01CDF0 07:8DE0: 4C        .byte $4C, $4D, $4E, $4F   ; 
; 06 
- D 0 - I - 0x01CDF4 07:8DE4: 7A        .byte $7A, $5B, $47, $49   ; 
- D 0 - I - 0x01CDF8 07:8DE8: 6A        .byte $6A, $46, $48, $59   ; 
- D 0 - I - 0x01CDFC 07:8DEC: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01CE00 07:8DF0: BD        .byte $BD, $BF, $BD, $BF   ; 
; 07 
- D 0 - I - 0x01CE04 07:8DF4: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01CE08 07:8DF8: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01CE0C 07:8DFC: 65        .byte $65, $00, $00, $00   ; 
- D 0 - I - 0x01CE10 07:8E00: 4C        .byte $4C, $4D, $4E, $4F   ; 
; 08 
- D 0 - I - 0x01CE14 07:8E04: 91        .byte $91, $90, $00, $00   ; 
- D 0 - I - 0x01CE18 07:8E08: A1        .byte $A1, $A2, $00, $6B   ; 
- D 0 - I - 0x01CE1C 07:8E0C: 00        .byte $00, $00, $6B, $7B   ; 
- D 0 - I - 0x01CE20 07:8E10: 00        .byte $00, $6B, $7B, $5E   ; 
; 09 
- D 0 - I - 0x01CE24 07:8E14: 5C        .byte $5C, $5D, $5E, $5F   ; 
- D 0 - I - 0x01CE28 07:8E18: 6C        .byte $6C, $6D, $5F, $6F   ; 
- D 0 - I - 0x01CE2C 07:8E1C: 5E        .byte $5E, $5F, $7F, $8F   ; 
- D 0 - I - 0x01CE30 07:8E20: 5F        .byte $5F, $7D, $7E, $8F   ; 
; 0A 
- D 0 - I - 0x01CE34 07:8E24: 00        .byte $00, $47, $48, $49   ; 
- D 0 - I - 0x01CE38 07:8E28: 00        .byte $00, $00, $58, $59   ; 
- D 0 - I - 0x01CE3C 07:8E2C: 00        .byte $00, $00, $68, $69   ; 
- D 0 - I - 0x01CE40 07:8E30: 80        .byte $80, $00, $78, $79   ; 
; 0B 
- D 0 - I - 0x01CE44 07:8E34: 4A        .byte $4A, $4B, $00, $00   ; 
- D 0 - I - 0x01CE48 07:8E38: 5A        .byte $5A, $5B, $72, $00   ; 
- D 0 - I - 0x01CE4C 07:8E3C: 6A        .byte $6A, $5B, $57, $00   ; 
- D 0 - I - 0x01CE50 07:8E40: 7A        .byte $7A, $46, $68, $00   ; 
; 0C 
- D 0 - I - 0x01CE54 07:8E44: 6B        .byte $6B, $7B, $5E, $5F   ; 
- D 0 - I - 0x01CE58 07:8E48: 7B        .byte $7B, $5E, $5F, $6F   ; 
- D 0 - I - 0x01CE5C 07:8E4C: B9        .byte $B9, $B9, $B9, $B9   ; 
- D 0 - I - 0x01CE60 07:8E50: B8        .byte $B8, $3D, $B8, $B8   ; 
; 0D 
- D 0 - I - 0x01CE64 07:8E54: 66        .byte $66, $8D, $8E, $8F   ; 
- D 0 - I - 0x01CE68 07:8E58: 76        .byte $76, $8F, $00, $8F   ; 
- D 0 - I - 0x01CE6C 07:8E5C: B9        .byte $B9, $B9, $B9, $B9   ; 
- D 0 - I - 0x01CE70 07:8E60: B8        .byte $B8, $3D, $B8, $B8   ; 
; 0E 
- D 0 - I - 0x01CE74 07:8E64: A0        .byte $A0, $82, $55, $56   ; 
- D 0 - I - 0x01CE78 07:8E68: 00        .byte $00, $70, $71, $72   ; 
- D 0 - I - 0x01CE7C 07:8E6C: B9        .byte $B9, $B9, $B9, $B9   ; 
- D 0 - I - 0x01CE80 07:8E70: 3D        .byte $3D, $B8, $3D, $B8   ; 
; 0F 
- D 0 - I - 0x01CE84 07:8E74: 67        .byte $67, $77, $57, $82   ; 
- D 0 - I - 0x01CE88 07:8E78: 73        .byte $73, $74, $75, $A1   ; 
- D 0 - I - 0x01CE8C 07:8E7C: B9        .byte $B9, $B9, $B9, $B9   ; 
- D 0 - I - 0x01CE90 07:8E80: B8        .byte $B8, $B8, $3D, $B8   ; 
; 10 
- D 0 - I - 0x01CE94 07:8E84: 00        .byte $00, $00, $BC, $BE   ; 
- D 0 - I - 0x01CE98 07:8E88: 00        .byte $00, $00, $BD, $BF   ; 
- D 0 - I - 0x01CE9C 07:8E8C: 00        .byte $00, $00, $3C, $00   ; 
- D 0 - I - 0x01CEA0 07:8E90: 00        .byte $00, $00, $3A, $00   ; 
; 11 
- D 0 - I - 0x01CEA4 07:8E94: BB        .byte $BB, $BB, $BB, $BB   ; 
- D 0 - I - 0x01CEA8 07:8E98: A9        .byte $A9, $AA, $AB, $A9   ; 
- D 0 - I - 0x01CEAC 07:8E9C: AC        .byte $AC, $AD, $AE, $AB   ; 
- D 0 - I - 0x01CEB0 07:8EA0: A7        .byte $A7, $AE, $A8, $A7   ; 
; 12 
- D 0 - I - 0x01CEB4 07:8EA4: 00        .byte $00, $A7, $AC, $AE   ; 
- D 0 - I - 0x01CEB8 07:8EA8: 00        .byte $00, $8F, $7D, $AA   ; 
- D 0 - I - 0x01CEBC 07:8EAC: 00        .byte $00, $00, $8D, $8E   ; 
- D 0 - I - 0x01CEC0 07:8EB0: 00        .byte $00, $00, $00, $00   ; 
; 13 
- D 0 - I - 0x01CEC4 07:8EB4: AF        .byte $AF, $00, $00, $00   ; 
- D 0 - I - 0x01CEC8 07:8EB8: AE        .byte $AE, $AF, $00, $00   ; 
- D 0 - I - 0x01CECC 07:8EBC: AC        .byte $AC, $AE, $AF, $00   ; 
- D 0 - I - 0x01CED0 07:8EC0: A7        .byte $A7, $AA, $AE, $AF   ; 
; 14 
- D 0 - I - 0x01CED4 07:8EC4: 00        .byte $00, $00, $3C, $00   ; 
- D 0 - I - 0x01CED8 07:8EC8: 00        .byte $00, $00, $3B, $00   ; 
- D 0 - I - 0x01CEDC 07:8ECC: 00        .byte $00, $00, $3A, $00   ; 
- D 0 - I - 0x01CEE0 07:8ED0: 00        .byte $00, $00, $3C, $00   ; 
; 15 
- D 0 - I - 0x01CEE4 07:8ED4: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01CEE8 07:8ED8: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01CEEC 07:8EDC: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01CEF0 07:8EE0: 00        .byte $00, $00, $00, $00   ; 
; 16 
- D 0 - I - 0x01CEF4 07:8EE4: 80        .byte $80, $81, $82, $81   ; 
- D 0 - I - 0x01CEF8 07:8EE8: 90        .byte $90, $91, $92, $93   ; 
- D 0 - I - 0x01CEFC 07:8EEC: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01CF00 07:8EF0: BD        .byte $BD, $BF, $BD, $BF   ; 
; 17 
- D 0 - I - 0x01CF04 07:8EF4: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01CF08 07:8EF8: 80        .byte $80, $81, $82, $81   ; 
- D 0 - I - 0x01CF0C 07:8EFC: 90        .byte $90, $91, $92, $93   ; 
- D 0 - I - 0x01CF10 07:8F00: A0        .byte $A0, $A1, $A2, $A1   ; 
; 18 
- D 0 - I - 0x01CF14 07:8F04: AB        .byte $AB, $AB, $A9, $AA   ; 
- D 0 - I - 0x01CF18 07:8F08: A9        .byte $A9, $AA, $AB, $AC   ; 
- D 0 - I - 0x01CF1C 07:8F0C: B9        .byte $B9, $B9, $B9, $B9   ; 
- D 0 - I - 0x01CF20 07:8F10: B8        .byte $B8, $B8, $3D, $B8   ; 
; 19 
- D 0 - I - 0x01CF24 07:8F14: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01CF28 07:8F18: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01CF2C 07:8F1C: B9        .byte $B9, $B9, $B9, $B9   ; 
- D 0 - I - 0x01CF30 07:8F20: B8        .byte $B8, $3D, $B8, $B8   ; 
; 1A 
- D 0 - I - 0x01CF34 07:8F24: 90        .byte $90, $91, $92, $93   ; 
- D 0 - I - 0x01CF38 07:8F28: A0        .byte $A0, $A1, $A2, $A1   ; 
- D 0 - I - 0x01CF3C 07:8F2C: B9        .byte $B9, $B9, $B9, $B9   ; 
- D 0 - I - 0x01CF40 07:8F30: B8        .byte $B8, $3D, $B8, $B8   ; 
; 1B 
- D 0 - I - 0x01CF44 07:8F34: B8        .byte $B8, $B8, $B8, $B8   ; 
- D 0 - I - 0x01CF48 07:8F38: B8        .byte $B8, $3D, $B8, $3D   ; 
- D 0 - I - 0x01CF4C 07:8F3C: B8        .byte $B8, $3D, $B8, $B8   ; 
- D 0 - I - 0x01CF50 07:8F40: 3D        .byte $3D, $B8, $B8, $3D   ; 
; 1C 
- D 0 - I - 0x01CF54 07:8F44: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01CF58 07:8F48: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01CF5C 07:8F4C: AC        .byte $AC, $AD, $AE, $AB   ; 
- D 0 - I - 0x01CF60 07:8F50: A9        .byte $A9, $AD, $A8, $AC   ; 
; 1D 
- D 0 - I - 0x01CF64 07:8F54: 00        .byte $00, $00, $BC, $BE   ; 
- D 0 - I - 0x01CF68 07:8F58: 00        .byte $00, $00, $BD, $BF   ; 
- D 0 - I - 0x01CF6C 07:8F5C: 00        .byte $00, $00, $A8, $AA   ; 
- D 0 - I - 0x01CF70 07:8F60: 00        .byte $00, $00, $00, $AB   ; 
; 1E 
- D 0 - I - 0x01CF74 07:8F64: AD        .byte $AD, $AD, $AA, $A8   ; 
- D 0 - I - 0x01CF78 07:8F68: AA        .byte $AA, $AE, $A9, $AC   ; 
- D 0 - I - 0x01CF7C 07:8F6C: A8        .byte $A8, $AC, $AA, $AB   ; 
- D 0 - I - 0x01CF80 07:8F70: AA        .byte $AA, $A9, $AD, $A8   ; 
; 1F 
- D 0 - I - 0x01CF84 07:8F74: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01CF88 07:8F78: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01CF8C 07:8F7C: 7F        .byte $7F, $7B, $7F, $7A   ; 
- D 0 - I - 0x01CF90 07:8F80: 41        .byte $41, $57, $78, $7E   ; 
; 20 
- D 0 - I - 0x01CF94 07:8F84: A3        .byte $A3, $A4, $4E, $4F   ; 
- D 0 - I - 0x01CF98 07:8F88: B3        .byte $B3, $B0, $5E, $6C   ; 
- D 0 - I - 0x01CF9C 07:8F8C: A4        .byte $A4, $A3, $4E, $4F   ; 
- D 0 - I - 0x01CFA0 07:8F90: 00        .byte $00, $B3, $5E, $6C   ; 
; 21 
- D 0 - I - 0x01CFA4 07:8F94: 4E        .byte $4E, $4F, $4E, $4F   ; 
- D 0 - I - 0x01CFA8 07:8F98: 5E        .byte $5E, $6C, $5E, $6C   ; 
- D 0 - I - 0x01CFAC 07:8F9C: B3        .byte $B3, $4E, $4F, $A4   ; 
- D 0 - I - 0x01CFB0 07:8FA0: 00        .byte $00, $5E, $6C, $B0   ; 
; 22 
- D 0 - I - 0x01CFB4 07:8FA4: 4C        .byte $4C, $4D, $A4, $00   ; 
- D 0 - I - 0x01CFB8 07:8FA8: 5C        .byte $5C, $5D, $4D, $00   ; 
- D 0 - I - 0x01CFBC 07:8FAC: A5        .byte $A5, $A6, $A4, $4D   ; 
- D 0 - I - 0x01CFC0 07:8FB0: B1        .byte $B1, $B2, $B0, $5D   ; 
; 23 
- D 0 - I - 0x01CFC4 07:8FB4: A5        .byte $A5, $A6, $62, $43   ; 
- D 0 - I - 0x01CFC8 07:8FB8: B1        .byte $B1, $B2, $63, $53   ; 
- D 0 - I - 0x01CFCC 07:8FBC: A4        .byte $A4, $53, $6B, $57   ; 
- D 0 - I - 0x01CFD0 07:8FC0: B1        .byte $B1, $6B, $56, $57   ; 
; 24 
- D 0 - I - 0x01CFD4 07:8FC4: 40        .byte $40, $00, $00, $00   ; 
- D 0 - I - 0x01CFD8 07:8FC8: 50        .byte $50, $51, $52, $00   ; 
- D 0 - I - 0x01CFDC 07:8FCC: 60        .byte $60, $50, $71, $72   ; 
- D 0 - I - 0x01CFE0 07:8FD0: 00        .byte $00, $60, $60, $70   ; 
; 25 
- D 0 - I - 0x01CFE4 07:8FD4: 00        .byte $00, $00, $62, $43   ; 
- D 0 - I - 0x01CFE8 07:8FD8: 00        .byte $00, $62, $63, $53   ; 
- D 0 - I - 0x01CFEC 07:8FDC: 73        .byte $73, $74, $75, $00   ; 
- D 0 - I - 0x01CFF0 07:8FE0: 75        .byte $75, $53, $65, $00   ; 
; 26 
- D 0 - I - 0x01CFF4 07:8FE4: 00        .byte $00, $00, $62, $43   ; 
- D 0 - I - 0x01CFF8 07:8FE8: 00        .byte $00, $62, $74, $53   ; 
- D 0 - I - 0x01CFFC 07:8FEC: 64        .byte $64, $43, $50, $00   ; 
- D 0 - I - 0x01D000 07:8FF0: 74        .byte $74, $74, $60, $00   ; 
; 27 
- D 0 - I - 0x01D004 07:8FF4: 00        .byte $00, $00, $60, $50   ; 
- D 0 - I - 0x01D008 07:8FF8: 80        .byte $80, $81, $00, $60   ; 
- D 0 - I - 0x01D00C 07:8FFC: 90        .byte $90, $91, $82, $80   ; 
- D 0 - I - 0x01D010 07:9000: 92        .byte $92, $A1, $92, $00   ; 
; 28 
- D 0 - I - 0x01D014 07:9004: 51        .byte $51, $52, $77, $43   ; 
- D 0 - I - 0x01D018 07:9008: 50        .byte $50, $50, $74, $70   ; 
- D 0 - I - 0x01D01C 07:900C: 60        .byte $60, $61, $61, $60   ; 
- D 0 - I - 0x01D020 07:9010: 00        .byte $00, $00, $00, $00   ; 
; 29 
- D 0 - I - 0x01D024 07:9014: 00        .byte $00, $55, $69, $00   ; 
- D 0 - I - 0x01D028 07:9018: 00        .byte $00, $67, $55, $58   ; 
- D 0 - I - 0x01D02C 07:901C: 00        .byte $00, $00, $67, $55   ; 
- D 0 - I - 0x01D030 07:9020: 00        .byte $00, $00, $00, $67   ; 
; 2A 
- D 0 - I - 0x01D034 07:9024: 00        .byte $00, $A5, $5D, $00   ; 
- D 0 - I - 0x01D038 07:9028: 59        .byte $59, $B1, $00, $6B   ; 
- D 0 - I - 0x01D03C 07:902C: 4A        .byte $4A, $48, $49, $4A   ; 
- D 0 - I - 0x01D040 07:9030: 68        .byte $68, $46, $4B, $66   ; 
; 2B 
- D 0 - I - 0x01D044 07:9034: 6B        .byte $6B, $57, $56, $66   ; 
- D 0 - I - 0x01D048 07:9038: 56        .byte $56, $66, $67, $00   ; 
- D 0 - I - 0x01D04C 07:903C: 67        .byte $67, $00, $81, $00   ; 
- D 0 - I - 0x01D050 07:9040: 00        .byte $00, $00, $82, $80   ; 
; 2C 
- D 0 - I - 0x01D054 07:9044: 7C        .byte $7C, $7D, $7E, $7F   ; 
- D 0 - I - 0x01D058 07:9048: 41        .byte $41, $7A, $7B, $7A   ; 
- D 0 - I - 0x01D05C 07:904C: 00        .byte $00, $7F, $78, $7C   ; 
- D 0 - I - 0x01D060 07:9050: 00        .byte $00, $00, $00, $78   ; 
; 2D 
- D 0 - I - 0x01D064 07:9054: 7E        .byte $7E, $7A, $7B, $7D   ; 
- D 0 - I - 0x01D068 07:9058: 7F        .byte $7F, $7B, $79, $78   ; 
- D 0 - I - 0x01D06C 07:905C: 7B        .byte $7B, $7C, $41, $00   ; 
- D 0 - I - 0x01D070 07:9060: 7A        .byte $7A, $78, $00, $00   ; 
; 2E 
- D 0 - I - 0x01D074 07:9064: 7B        .byte $7B, $7E, $7B, $7C   ; 
- D 0 - I - 0x01D078 07:9068: 7D        .byte $7D, $7C, $7D, $7E   ; 
- D 0 - I - 0x01D07C 07:906C: 7C        .byte $7C, $79, $7F, $7A   ; 
- D 0 - I - 0x01D080 07:9070: 41        .byte $41, $57, $7A, $78   ; 
; 2F 
- D 0 - I - 0x01D084 07:9074: 7C        .byte $7C, $7D, $7E, $7F   ; 
- D 0 - I - 0x01D088 07:9078: 7D        .byte $7D, $7F, $7A, $78   ; 
- D 0 - I - 0x01D08C 07:907C: 41        .byte $41, $53, $41, $60   ; 
- D 0 - I - 0x01D090 07:9080: 00        .byte $00, $00, $00, $00   ; 
; 30 
- D 0 - I - 0x01D094 07:9084: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01D098 07:9088: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01D09C 07:908C: A5        .byte $A5, $A6, $A4, $4D   ; 
- D 0 - I - 0x01D0A0 07:9090: B1        .byte $B1, $B2, $B0, $5D   ; 
; 31 
- D 0 - I - 0x01D0A4 07:9094: A5        .byte $A5, $A3, $A6, $A4   ; 
- D 0 - I - 0x01D0A8 07:9098: B1        .byte $B1, $B3, $B1, $B0   ; 
- D 0 - I - 0x01D0AC 07:909C: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01D0B0 07:90A0: BD        .byte $BD, $BF, $BD, $BF   ; 
; 32 
- D 0 - I - 0x01D0B4 07:90A4: 00        .byte $00, $00, $00, $AF   ; 
- D 0 - I - 0x01D0B8 07:90A8: 00        .byte $00, $00, $AF, $A3   ; 
- D 0 - I - 0x01D0BC 07:90AC: 00        .byte $00, $AF, $4E, $4F   ; 
- D 0 - I - 0x01D0C0 07:90B0: AF        .byte $AF, $6C, $5E, $6C   ; 
; 33 
- - - - - - 0x01D0C4 07:90B4: AF        .byte $AF, $A8, $4C, $4D   ; 
- - - - - - 0x01D0C8 07:90B8: A6        .byte $A6, $AF, $A7, $5D   ; 
- - - - - - 0x01D0CC 07:90BC: A5        .byte $A5, $A6, $AF, $A8   ; 
- - - - - - 0x01D0D0 07:90C0: B1        .byte $B1, $B2, $A4, $AF   ; 
; 34 
- D 0 - I - 0x01D0D4 07:90C4: 4D        .byte $4D, $A3, $B3, $A6   ; 
- D 0 - I - 0x01D0D8 07:90C8: 5D        .byte $5D, $B3, $A3, $00   ; 
- D 0 - I - 0x01D0DC 07:90CC: B9        .byte $B9, $B9, $B9, $B9   ; 
- D 0 - I - 0x01D0E0 07:90D0: 3D        .byte $3D, $B8, $3D, $B8   ; 
; 35 
- D 0 - I - 0x01D0E4 07:90D4: 7B        .byte $7B, $7E, $BC, $BE   ; 
- D 0 - I - 0x01D0E8 07:90D8: 7D        .byte $7D, $7C, $BD, $BF   ; 
- D 0 - I - 0x01D0EC 07:90DC: 7C        .byte $7C, $78, $BC, $BE   ; 
- D 0 - I - 0x01D0F0 07:90E0: 79        .byte $79, $7E, $BD, $BF   ; 
; 36 
- D 0 - I - 0x01D0F4 07:90E4: A3        .byte $A3, $B1, $B3, $4F   ; 
- D 0 - I - 0x01D0F8 07:90E8: B3        .byte $B3, $A3, $B2, $6C   ; 
- D 0 - I - 0x01D0FC 07:90EC: 00        .byte $00, $B3, $4E, $4F   ; 
- D 0 - I - 0x01D100 07:90F0: 00        .byte $00, $00, $5E, $6C   ; 
; 37 
- D 0 - I - 0x01D104 07:90F4: B0        .byte $B0, $A4, $A5, $4F   ; 
- D 0 - I - 0x01D108 07:90F8: A4        .byte $A4, $A3, $B1, $6C   ; 
- D 0 - I - 0x01D10C 07:90FC: A3        .byte $A3, $B3, $00, $00   ; 
- D 0 - I - 0x01D110 07:9100: B3        .byte $B3, $00, $00, $00   ; 
; 38 
- D 0 - I - 0x01D114 07:9104: 00        .byte $00, $90, $80, $81   ; 
- D 0 - I - 0x01D118 07:9108: 93        .byte $93, $A1, $91, $82   ; 
- D 0 - I - 0x01D11C 07:910C: A1        .byte $A1, $A0, $A1, $92   ; 
- D 0 - I - 0x01D120 07:9110: 82        .byte $82, $80, $82, $A2   ; 
; 39 
- D 0 - I - 0x01D124 07:9114: BC        .byte $BC, $BE, $BA, $AF   ; 
- D 0 - I - 0x01D128 07:9118: BD        .byte $BD, $A7, $AF, $00   ; 
- D 0 - I - 0x01D12C 07:911C: B2        .byte $B2, $AF, $4E, $4F   ; 
- D 0 - I - 0x01D130 07:9120: AF        .byte $AF, $6C, $5E, $6C   ; 
; 3A 
- D 0 - I - 0x01D134 07:9124: 00        .byte $00, $00, $BC, $BE   ; 
- D 0 - I - 0x01D138 07:9128: 00        .byte $00, $00, $BD, $BF   ; 
- D 0 - I - 0x01D13C 07:912C: 00        .byte $00, $00, $B3, $4D   ; 
- D 0 - I - 0x01D140 07:9130: 00        .byte $00, $00, $00, $5D   ; 
; 3B 
- D 0 - I - 0x01D144 07:9134: 75        .byte $75, $4A, $69, $00   ; 
- D 0 - I - 0x01D148 07:9138: 60        .byte $60, $67, $55, $58   ; 
- D 0 - I - 0x01D14C 07:913C: 00        .byte $00, $00, $67, $55   ; 
- D 0 - I - 0x01D150 07:9140: 00        .byte $00, $00, $00, $67   ; 
; 3C 
- D 0 - I - 0x01D154 07:9144: 40        .byte $40, $00, $00, $00   ; 
- D 0 - I - 0x01D158 07:9148: 50        .byte $50, $40, $00, $00   ; 
- D 0 - I - 0x01D15C 07:914C: 60        .byte $60, $71, $40, $00   ; 
- D 0 - I - 0x01D160 07:9150: 00        .byte $00, $60, $50, $40   ; 
; 3D 
- D 0 - I - 0x01D164 07:9154: 85        .byte $85, $86, $87, $88   ; 
- D 0 - I - 0x01D168 07:9158: 00        .byte $00, $85, $86, $87   ; 
- D 0 - I - 0x01D16C 07:915C: 00        .byte $00, $00, $85, $86   ; 
- D 0 - I - 0x01D170 07:9160: 00        .byte $00, $00, $00, $85   ; 
; 3E 
- D 0 - I - 0x01D174 07:9164: 89        .byte $89, $8A, $00, $00   ; 
- D 0 - I - 0x01D178 07:9168: 88        .byte $88, $8B, $8C, $00   ; 
- D 0 - I - 0x01D17C 07:916C: 87        .byte $87, $88, $89, $8A   ; 
- D 0 - I - 0x01D180 07:9170: 86        .byte $86, $87, $88, $8B   ; 
; 3F 
- D 0 - I - 0x01D184 07:9174: 80        .byte $80, $81, $00, $00   ; 
- D 0 - I - 0x01D188 07:9178: 90        .byte $90, $91, $82, $00   ; 
- D 0 - I - 0x01D18C 07:917C: 00        .byte $00, $A1, $B6, $91   ; 
- D 0 - I - 0x01D190 07:9180: 8C        .byte $8C, $00, $00, $B5   ; 
; 40 
- D 0 - I - 0x01D194 07:9184: 6D        .byte $6D, $86, $87, $88   ; 
- D 0 - I - 0x01D198 07:9188: 00        .byte $00, $6D, $6E, $B4   ; 
- D 0 - I - 0x01D19C 07:918C: 00        .byte $00, $00, $44, $45   ; 
- D 0 - I - 0x01D1A0 07:9190: 00        .byte $00, $00, $00, $54   ; 
; 41 
- D 0 - I - 0x01D1A4 07:9194: 89        .byte $89, $8A, $00, $00   ; 
- D 0 - I - 0x01D1A8 07:9198: B5        .byte $B5, $B6, $B7, $00   ; 
- D 0 - I - 0x01D1AC 07:919C: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01D1B0 07:91A0: 00        .byte $00, $00, $00, $00   ; 



_off046_0x01D1B4_06:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x01D1B4 07:91A4: FF        .byte $FF, $FF, $FF, $FF, $FF, $AF, $0A, $AA, $AB, $AA, $AA, $AA, $AA, $AA, $AA, $AA   ; 00 
- D 0 - I - 0x01D1C4 07:91B4: 00        .byte $00, $55, $AA, $AA, $00, $00, $0F, $FF, $A5, $A0, $AF, $AA, $50, $50, $55, $A0   ; 10 
- D 0 - I - 0x01D1D4 07:91C4: 55        .byte $55, $55, $55, $55, $55, $55, $55, $F7, $55, $55, $55, $55, $AA, $AA, $AA, $AA   ; 20 
- D 0 - I - 0x01D1E4 07:91D4: 50        .byte $50, $05, $55, $55, $A5, $22, $55, $55, $FF, $50, $50, $55, $51, $CF, $FF, $FF   ; 30 
- D 0 - I - 0x01D1F4 07:91E4: CF        .byte $CF, $0F                                                                         ; 40 



_off044_0x01D1F6_07:
- D 0 - I - 0x01D1F6 07:91E6: F4 91     .word off_91F4_07_00
- D 0 - I - 0x01D1F8 07:91E8: FD 91     .word off_91FD_07_01
- D 0 - I - 0x01D1FA 07:91EA: 00 92     .word off_9200_07_02
- D 0 - I - 0x01D1FC 07:91EC: 03 92     .word off_9203_07_03
- D 0 - I - 0x01D1FE 07:91EE: 06 92     .word off_9206_07_04
- D 0 - I - 0x01D200 07:91F0: 0F 92     .word off_920F_07_05
- D 0 - I - 0x01D202 07:91F2: 18 92     .word off_9218_07_06



off_91F4_07_00:
- D 0 - I - 0x01D204 07:91F4: 01        .byte $01   ; 
- D 0 - I - 0x01D205 07:91F5: D3 96     .word _off047_96D3_07_00_00
- D 0 - I - 0x01D207 07:91F7: E2 95     .word _off047_95E2_07_00_01
- - - - - - 0x01D209 07:91F9: E0        .byte $E0   ; 
- - - - - - 0x01D20A 07:91FA: 02        .byte $02   ; 
- D 0 - I - 0x01D20B 07:91FB: FE        .byte $FE   ; 
- - - - - - 0x01D20C 07:91FC: E0        .byte $E0   ; 



off_91FD_07_01:
- - - - - - 0x01D20D 07:91FD: 00        .byte $00   ; 
- D 0 - I - 0x01D20E 07:91FE: 34 97     .word _off047_9734_07_01_00



off_9200_07_02:
- - - - - - 0x01D210 07:9200: 00        .byte $00   ; 
- D 0 - I - 0x01D211 07:9201: 8F 94     .word _off047_948F_07_02_00



off_9203_07_03:
- - - - - - 0x01D213 07:9203: 00        .byte $00   ; 
- D 0 - I - 0x01D214 07:9204: C0 94     .word _off047_94C0_07_03_00



off_9206_07_04:
- D 0 - I - 0x01D216 07:9206: 01        .byte $01   ; 
- D 0 - I - 0x01D217 07:9207: 21 95     .word _off047_9521_07_04_00
- D 0 - I - 0x01D219 07:9209: 6D 93     .word _off047_936D_07_04_01
- - - - - - 0x01D21B 07:920B: E0        .byte $E0   ; 
- D 0 - I - 0x01D21C 07:920C: FD        .byte $FD   ; 
- - - - - - 0x01D21D 07:920D: 03        .byte $03   ; 
- - - - - - 0x01D21E 07:920E: E0        .byte $E0   ; 



off_920F_07_05:
- D 0 - I - 0x01D21F 07:920F: 01        .byte $01   ; 
- D 0 - I - 0x01D220 07:9210: CE 93     .word _off047_93CE_07_05_00
- D 0 - I - 0x01D222 07:9212: 0C 93     .word _off047_930C_07_05_01
- - - - - - 0x01D224 07:9214: E0        .byte $E0   ; 
- D 0 - I - 0x01D225 07:9215: FE        .byte $FE   ; 
- - - - - - 0x01D226 07:9216: 02        .byte $02   ; 
- - - - - - 0x01D227 07:9217: E0        .byte $E0   ; 



off_9218_07_06:
- - - - - - 0x01D228 07:9218: 00        .byte $00   ; 
- D 0 - I - 0x01D229 07:9219: 1B 92     .word _off047_921B_07_06_00



_off047_921B_07_06_00:
- D 0 - I - 0x01D22B 07:921B: 04        .byte $04   ; 
- D 0 - I - 0x01D22C 07:921C: 12        .byte $12   ; 
- D 0 - I - 0x01D22D 07:921D: 12        .byte $12   ; 
- D 0 - I - 0x01D22E 07:921E: 12        .byte $12   ; 
- D 0 - I - 0x01D22F 07:921F: 12        .byte $12   ; 
- D 0 - I - 0x01D230 07:9220: 12        .byte $12   ; 
- D 0 - I - 0x01D231 07:9221: 12        .byte $12   ; 
- D 0 - I - 0x01D232 07:9222: 12        .byte $12   ; 
- D 0 - I - 0x01D233 07:9223: 12        .byte $12   ; 
- D 0 - I - 0x01D234 07:9224: 39        .byte $39   ; 
- D 0 - I - 0x01D235 07:9225: 33        .byte $33   ; 
- D 0 - I - 0x01D236 07:9226: 57        .byte $57   ; 
- D 0 - I - 0x01D237 07:9227: 37        .byte $37   ; 
- D 0 - I - 0x01D238 07:9228: 37        .byte $37   ; 
- D 0 - I - 0x01D239 07:9229: 56        .byte $56   ; 
- D 0 - I - 0x01D23A 07:922A: 33        .byte $33   ; 
- D 0 - I - 0x01D23B 07:922B: 37        .byte $37   ; 
- D 0 - I - 0x01D23C 07:922C: 3D        .byte $3D   ; 
- D 0 - I - 0x01D23D 07:922D: 34        .byte $34   ; 
- D 0 - I - 0x01D23E 07:922E: 57        .byte $57   ; 
- D 0 - I - 0x01D23F 07:922F: 30        .byte $30   ; 
- D 0 - I - 0x01D240 07:9230: 31        .byte $31   ; 
- D 0 - I - 0x01D241 07:9231: 56        .byte $56   ; 
- D 0 - I - 0x01D242 07:9232: 34        .byte $34   ; 
- D 0 - I - 0x01D243 07:9233: 37        .byte $37   ; 
- D 0 - I - 0x01D244 07:9234: 12        .byte $12   ; 
- D 0 - I - 0x01D245 07:9235: 21        .byte $21   ; 
- D 0 - I - 0x01D246 07:9236: 57        .byte $57   ; 
- D 0 - I - 0x01D247 07:9237: 34        .byte $34   ; 
- D 0 - I - 0x01D248 07:9238: 34        .byte $34   ; 
- D 0 - I - 0x01D249 07:9239: 56        .byte $56   ; 
- D 0 - I - 0x01D24A 07:923A: 35        .byte $35   ; 
- D 0 - I - 0x01D24B 07:923B: 33        .byte $33   ; 
- D 0 - I - 0x01D24C 07:923C: 12        .byte $12   ; 
- D 0 - I - 0x01D24D 07:923D: 14        .byte $14   ; 
- D 0 - I - 0x01D24E 07:923E: 23        .byte $23   ; 
- D 0 - I - 0x01D24F 07:923F: 34        .byte $34   ; 
- D 0 - I - 0x01D250 07:9240: 34        .byte $34   ; 
- D 0 - I - 0x01D251 07:9241: 56        .byte $56   ; 
- D 0 - I - 0x01D252 07:9242: 31        .byte $31   ; 
- D 0 - I - 0x01D253 07:9243: 2A        .byte $2A   ; 
- D 0 - I - 0x01D254 07:9244: 12        .byte $12   ; 
- D 0 - I - 0x01D255 07:9245: 35        .byte $35   ; 
- D 0 - I - 0x01D256 07:9246: 35        .byte $35   ; 
- D 0 - I - 0x01D257 07:9247: 35        .byte $35   ; 
- D 0 - I - 0x01D258 07:9248: 35        .byte $35   ; 
- D 0 - I - 0x01D259 07:9249: 35        .byte $35   ; 
- D 0 - I - 0x01D25A 07:924A: 35        .byte $35   ; 
- D 0 - I - 0x01D25B 07:924B: 35        .byte $35   ; 
- D 0 - I - 0x01D25C 07:924C: 12        .byte $12   ; 
- D 0 - I - 0x01D25D 07:924D: 12        .byte $12   ; 
- D 0 - I - 0x01D25E 07:924E: 33        .byte $33   ; 
- D 0 - I - 0x01D25F 07:924F: 57        .byte $57   ; 
- D 0 - I - 0x01D260 07:9250: 33        .byte $33   ; 
- D 0 - I - 0x01D261 07:9251: 00        .byte $00   ; 
- D 0 - I - 0x01D262 07:9252: 1A        .byte $1A   ; 
- D 0 - I - 0x01D263 07:9253: 14        .byte $14   ; 
- D 0 - I - 0x01D264 07:9254: 12        .byte $12   ; 
- D 0 - I - 0x01D265 07:9255: 12        .byte $12   ; 
- D 0 - I - 0x01D266 07:9256: 37        .byte $37   ; 
- D 0 - I - 0x01D267 07:9257: 57        .byte $57   ; 
- D 0 - I - 0x01D268 07:9258: 52        .byte $52   ; 
- D 0 - I - 0x01D269 07:9259: 00        .byte $00   ; 
- D 0 - I - 0x01D26A 07:925A: 18        .byte $18   ; 
- D 0 - I - 0x01D26B 07:925B: 1A        .byte $1A   ; 
- D 0 - I - 0x01D26C 07:925C: 5A        .byte $5A   ; 
- D 0 - I - 0x01D26D 07:925D: 37        .byte $37   ; 
- D 0 - I - 0x01D26E 07:925E: 37        .byte $37   ; 
- D 0 - I - 0x01D26F 07:925F: 57        .byte $57   ; 
- D 0 - I - 0x01D270 07:9260: 5F        .byte $5F   ; 
- D 0 - I - 0x01D271 07:9261: 52        .byte $52   ; 
- D 0 - I - 0x01D272 07:9262: 00        .byte $00   ; 
- D 0 - I - 0x01D273 07:9263: 18        .byte $18   ; 
- D 0 - I - 0x01D274 07:9264: 57        .byte $57   ; 
- D 0 - I - 0x01D275 07:9265: 30        .byte $30   ; 
- D 0 - I - 0x01D276 07:9266: 37        .byte $37   ; 
- D 0 - I - 0x01D277 07:9267: 5E        .byte $5E   ; 
- D 0 - I - 0x01D278 07:9268: 5F        .byte $5F   ; 
- D 0 - I - 0x01D279 07:9269: 5D        .byte $5D   ; 
- D 0 - I - 0x01D27A 07:926A: 2B        .byte $2B   ; 
- D 0 - I - 0x01D27B 07:926B: 22        .byte $22   ; 
- D 0 - I - 0x01D27C 07:926C: 5A        .byte $5A   ; 
- D 0 - I - 0x01D27D 07:926D: 23        .byte $23   ; 
- D 0 - I - 0x01D27E 07:926E: 31        .byte $31   ; 
- D 0 - I - 0x01D27F 07:926F: 5C        .byte $5C   ; 
- D 0 - I - 0x01D280 07:9270: 5D        .byte $5D   ; 
- D 0 - I - 0x01D281 07:9271: 5F        .byte $5F   ; 
- D 0 - I - 0x01D282 07:9272: 26        .byte $26   ; 
- D 0 - I - 0x01D283 07:9273: 15        .byte $15   ; 
- D 0 - I - 0x01D284 07:9274: 5E        .byte $5E   ; 
- D 0 - I - 0x01D285 07:9275: 2B        .byte $2B   ; 
- D 0 - I - 0x01D286 07:9276: 38        .byte $38   ; 
- D 0 - I - 0x01D287 07:9277: 11        .byte $11   ; 
- D 0 - I - 0x01D288 07:9278: 11        .byte $11   ; 
- D 0 - I - 0x01D289 07:9279: 11        .byte $11   ; 
- D 0 - I - 0x01D28A 07:927A: 11        .byte $11   ; 
- D 0 - I - 0x01D28B 07:927B: 15        .byte $15   ; 
- D 0 - I - 0x01D28C 07:927C: 00        .byte $00   ; 
- D 0 - I - 0x01D28D 07:927D: 2E        .byte $2E   ; 
- D 0 - I - 0x01D28E 07:927E: 5C        .byte $5C   ; 
- D 0 - I - 0x01D28F 07:927F: 00        .byte $00   ; 
- D 0 - I - 0x01D290 07:9280: 2E        .byte $2E   ; 
- D 0 - I - 0x01D291 07:9281: 2E        .byte $2E   ; 
- D 0 - I - 0x01D292 07:9282: 1A        .byte $1A   ; 
- D 0 - I - 0x01D293 07:9283: 12        .byte $12   ; 
- D 0 - I - 0x01D294 07:9284: 13        .byte $13   ; 
- D 0 - I - 0x01D295 07:9285: 13        .byte $13   ; 
- D 0 - I - 0x01D296 07:9286: 13        .byte $13   ; 
- D 0 - I - 0x01D297 07:9287: 13        .byte $13   ; 
- D 0 - I - 0x01D298 07:9288: 13        .byte $13   ; 
- D 0 - I - 0x01D299 07:9289: 13        .byte $13   ; 
- D 0 - I - 0x01D29A 07:928A: 13        .byte $13   ; 
- D 0 - I - 0x01D29B 07:928B: 19        .byte $19   ; 
- D 0 - I - 0x01D29C 07:928C: 1A        .byte $1A   ; 
- D 0 - I - 0x01D29D 07:928D: 14        .byte $14   ; 
- D 0 - I - 0x01D29E 07:928E: 5E        .byte $5E   ; 
- D 0 - I - 0x01D29F 07:928F: 00        .byte $00   ; 
- D 0 - I - 0x01D2A0 07:9290: 15        .byte $15   ; 
- D 0 - I - 0x01D2A1 07:9291: 00        .byte $00   ; 
- D 0 - I - 0x01D2A2 07:9292: 00        .byte $00   ; 
- D 0 - I - 0x01D2A3 07:9293: 2E        .byte $2E   ; 
- D 0 - I - 0x01D2A4 07:9294: 12        .byte $12   ; 
- D 0 - I - 0x01D2A5 07:9295: 1A        .byte $1A   ; 
- D 0 - I - 0x01D2A6 07:9296: 5E        .byte $5E   ; 
- D 0 - I - 0x01D2A7 07:9297: 2B        .byte $2B   ; 
- D 0 - I - 0x01D2A8 07:9298: 28        .byte $28   ; 
- D 0 - I - 0x01D2A9 07:9299: 29        .byte $29   ; 
- D 0 - I - 0x01D2AA 07:929A: 14        .byte $14   ; 
- D 0 - I - 0x01D2AB 07:929B: 11        .byte $11   ; 
- D 0 - I - 0x01D2AC 07:929C: 57        .byte $57   ; 
- D 0 - I - 0x01D2AD 07:929D: 12        .byte $12   ; 
- D 0 - I - 0x01D2AE 07:929E: 5C        .byte $5C   ; 
- D 0 - I - 0x01D2AF 07:929F: 22        .byte $22   ; 
- D 0 - I - 0x01D2B0 07:92A0: 2F        .byte $2F   ; 
- D 0 - I - 0x01D2B1 07:92A1: 18        .byte $18   ; 
- D 0 - I - 0x01D2B2 07:92A2: 27        .byte $27   ; 
- D 0 - I - 0x01D2B3 07:92A3: 1A        .byte $1A   ; 
- D 0 - I - 0x01D2B4 07:92A4: 5E        .byte $5E   ; 
- D 0 - I - 0x01D2B5 07:92A5: 18        .byte $18   ; 
- D 0 - I - 0x01D2B6 07:92A6: 11        .byte $11   ; 
- D 0 - I - 0x01D2B7 07:92A7: 17        .byte $17   ; 
- D 0 - I - 0x01D2B8 07:92A8: 00        .byte $00   ; 
- D 0 - I - 0x01D2B9 07:92A9: 11        .byte $11   ; 
- D 0 - I - 0x01D2BA 07:92AA: 11        .byte $11   ; 
- D 0 - I - 0x01D2BB 07:92AB: 11        .byte $11   ; 
- D 0 - I - 0x01D2BC 07:92AC: 12        .byte $12   ; 
- D 0 - I - 0x01D2BD 07:92AD: 5F        .byte $5F   ; 
- D 0 - I - 0x01D2BE 07:92AE: 00        .byte $00   ; 
- D 0 - I - 0x01D2BF 07:92AF: 00        .byte $00   ; 
- D 0 - I - 0x01D2C0 07:92B0: 00        .byte $00   ; 
- D 0 - I - 0x01D2C1 07:92B1: 5E        .byte $5E   ; 
- D 0 - I - 0x01D2C2 07:92B2: 18        .byte $18   ; 
- D 0 - I - 0x01D2C3 07:92B3: 14        .byte $14   ; 
- D 0 - I - 0x01D2C4 07:92B4: 5E        .byte $5E   ; 
- D 0 - I - 0x01D2C5 07:92B5: 5D        .byte $5D   ; 
- D 0 - I - 0x01D2C6 07:92B6: 2F        .byte $2F   ; 
- D 0 - I - 0x01D2C7 07:92B7: 2E        .byte $2E   ; 
- D 0 - I - 0x01D2C8 07:92B8: 00        .byte $00   ; 
- D 0 - I - 0x01D2C9 07:92B9: 5C        .byte $5C   ; 
- D 0 - I - 0x01D2CA 07:92BA: 00        .byte $00   ; 
- D 0 - I - 0x01D2CB 07:92BB: 18        .byte $18   ; 
- D 0 - I - 0x01D2CC 07:92BC: 5C        .byte $5C   ; 
- D 0 - I - 0x01D2CD 07:92BD: 5F        .byte $5F   ; 
- D 0 - I - 0x01D2CE 07:92BE: 18        .byte $18   ; 
- D 0 - I - 0x01D2CF 07:92BF: 19        .byte $19   ; 
- D 0 - I - 0x01D2D0 07:92C0: 00        .byte $00   ; 
- D 0 - I - 0x01D2D1 07:92C1: 57        .byte $57   ; 
- D 0 - I - 0x01D2D2 07:92C2: 2F        .byte $2F   ; 
- D 0 - I - 0x01D2D3 07:92C3: 2B        .byte $2B   ; 
- D 0 - I - 0x01D2D4 07:92C4: 12        .byte $12   ; 
- D 0 - I - 0x01D2D5 07:92C5: 11        .byte $11   ; 
- D 0 - I - 0x01D2D6 07:92C6: 23        .byte $23   ; 
- D 0 - I - 0x01D2D7 07:92C7: 2B        .byte $2B   ; 
- D 0 - I - 0x01D2D8 07:92C8: 2F        .byte $2F   ; 
- D 0 - I - 0x01D2D9 07:92C9: 57        .byte $57   ; 
- D 0 - I - 0x01D2DA 07:92CA: 14        .byte $14   ; 
- D 0 - I - 0x01D2DB 07:92CB: 00        .byte $00   ; 
- D 0 - I - 0x01D2DC 07:92CC: 12        .byte $12   ; 
- D 0 - I - 0x01D2DD 07:92CD: 14        .byte $14   ; 
- D 0 - I - 0x01D2DE 07:92CE: 00        .byte $00   ; 
- D 0 - I - 0x01D2DF 07:92CF: 23        .byte $23   ; 
- D 0 - I - 0x01D2E0 07:92D0: 15        .byte $15   ; 
- D 0 - I - 0x01D2E1 07:92D1: 57        .byte $57   ; 
- D 0 - I - 0x01D2E2 07:92D2: 1A        .byte $1A   ; 
- D 0 - I - 0x01D2E3 07:92D3: 2E        .byte $2E   ; 
- D 0 - I - 0x01D2E4 07:92D4: 12        .byte $12   ; 
- D 0 - I - 0x01D2E5 07:92D5: 11        .byte $11   ; 
- D 0 - I - 0x01D2E6 07:92D6: 38        .byte $38   ; 
- D 0 - I - 0x01D2E7 07:92D7: 38        .byte $38   ; 
- D 0 - I - 0x01D2E8 07:92D8: 11        .byte $11   ; 
- D 0 - I - 0x01D2E9 07:92D9: 11        .byte $11   ; 
- D 0 - I - 0x01D2EA 07:92DA: 11        .byte $11   ; 
- D 0 - I - 0x01D2EB 07:92DB: 38        .byte $38   ; 
- D 0 - I - 0x01D2EC 07:92DC: 15        .byte $15   ; 
- D 0 - I - 0x01D2ED 07:92DD: 14        .byte $14   ; 
- D 0 - I - 0x01D2EE 07:92DE: 00        .byte $00   ; 
- D 0 - I - 0x01D2EF 07:92DF: 00        .byte $00   ; 
- D 0 - I - 0x01D2F0 07:92E0: 00        .byte $00   ; 
- D 0 - I - 0x01D2F1 07:92E1: 5E        .byte $5E   ; 
- D 0 - I - 0x01D2F2 07:92E2: 00        .byte $00   ; 
- D 0 - I - 0x01D2F3 07:92E3: 12        .byte $12   ; 
- D 0 - I - 0x01D2F4 07:92E4: 10        .byte $10   ; 
- D 0 - I - 0x01D2F5 07:92E5: 10        .byte $10   ; 
- D 0 - I - 0x01D2F6 07:92E6: 10        .byte $10   ; 
- D 0 - I - 0x01D2F7 07:92E7: 2D        .byte $2D   ; 
- D 0 - I - 0x01D2F8 07:92E8: 2E        .byte $2E   ; 
- D 0 - I - 0x01D2F9 07:92E9: 5C        .byte $5C   ; 
- D 0 - I - 0x01D2FA 07:92EA: 15        .byte $15   ; 
- D 0 - I - 0x01D2FB 07:92EB: 12        .byte $12   ; 
- D 0 - I - 0x01D2FC 07:92EC: 42        .byte $42   ; 
- D 0 - I - 0x01D2FD 07:92ED: 42        .byte $42   ; 
- D 0 - I - 0x01D2FE 07:92EE: 42        .byte $42   ; 
- D 0 - I - 0x01D2FF 07:92EF: 13        .byte $13   ; 
- D 0 - I - 0x01D300 07:92F0: 13        .byte $13   ; 
- D 0 - I - 0x01D301 07:92F1: 13        .byte $13   ; 
- D 0 - I - 0x01D302 07:92F2: 13        .byte $13   ; 
- D 0 - I - 0x01D303 07:92F3: 3A        .byte $3A   ; 
- D 0 - I - 0x01D304 07:92F4: 18        .byte $18   ; 
- D 0 - I - 0x01D305 07:92F5: 14        .byte $14   ; 
- D 0 - I - 0x01D306 07:92F6: 2C        .byte $2C   ; 
- D 0 - I - 0x01D307 07:92F7: 00        .byte $00   ; 
- D 0 - I - 0x01D308 07:92F8: 00        .byte $00   ; 
- D 0 - I - 0x01D309 07:92F9: 57        .byte $57   ; 
- D 0 - I - 0x01D30A 07:92FA: 14        .byte $14   ; 
- D 0 - I - 0x01D30B 07:92FB: 3E        .byte $3E   ; 
- D 0 - I - 0x01D30C 07:92FC: 15        .byte $15   ; 
- D 0 - I - 0x01D30D 07:92FD: 1A        .byte $1A   ; 
- D 0 - I - 0x01D30E 07:92FE: 10        .byte $10   ; 
- D 0 - I - 0x01D30F 07:92FF: 2B        .byte $2B   ; 
- D 0 - I - 0x01D310 07:9300: 2E        .byte $2E   ; 
- D 0 - I - 0x01D311 07:9301: 5A        .byte $5A   ; 
- D 0 - I - 0x01D312 07:9302: 11        .byte $11   ; 
- D 0 - I - 0x01D313 07:9303: 12        .byte $12   ; 
- D 0 - I - 0x01D314 07:9304: 11        .byte $11   ; 
- D 0 - I - 0x01D315 07:9305: 19        .byte $19   ; 
- D 0 - I - 0x01D316 07:9306: 00        .byte $00   ; 
- D 0 - I - 0x01D317 07:9307: 16        .byte $16   ; 
- D 0 - I - 0x01D318 07:9308: 11        .byte $11   ; 
- D 0 - I - 0x01D319 07:9309: 5E        .byte $5E   ; 
- D 0 - I - 0x01D31A 07:930A: 00        .byte $00   ; 
- D 0 - I - 0x01D31B 07:930B: 12        .byte $12   ; 



_off047_930C_07_05_01:
- D 0 - I - 0x01D31C 07:930C: 01        .byte $01   ; 
- D 0 - I - 0x01D31D 07:930D: 12        .byte $12   ; 
- D 0 - I - 0x01D31E 07:930E: 00        .byte $00   ; 
- D 0 - I - 0x01D31F 07:930F: 14        .byte $14   ; 
- D 0 - I - 0x01D320 07:9310: 00        .byte $00   ; 
- D 0 - I - 0x01D321 07:9311: 00        .byte $00   ; 
- D 0 - I - 0x01D322 07:9312: 19        .byte $19   ; 
- D 0 - I - 0x01D323 07:9313: 00        .byte $00   ; 
- D 0 - I - 0x01D324 07:9314: 00        .byte $00   ; 
- D 0 - I - 0x01D325 07:9315: 12        .byte $12   ; 
- D 0 - I - 0x01D326 07:9316: 2B        .byte $2B   ; 
- D 0 - I - 0x01D327 07:9317: 18        .byte $18   ; 
- D 0 - I - 0x01D328 07:9318: 14        .byte $14   ; 
- D 0 - I - 0x01D329 07:9319: 15        .byte $15   ; 
- D 0 - I - 0x01D32A 07:931A: 2B        .byte $2B   ; 
- D 0 - I - 0x01D32B 07:931B: 2F        .byte $2F   ; 
- D 0 - I - 0x01D32C 07:931C: 2B        .byte $2B   ; 
- D 0 - I - 0x01D32D 07:931D: 39        .byte $39   ; 
- D 0 - I - 0x01D32E 07:931E: 2F        .byte $2F   ; 
- D 0 - I - 0x01D32F 07:931F: 00        .byte $00   ; 
- D 0 - I - 0x01D330 07:9320: 1A        .byte $1A   ; 
- D 0 - I - 0x01D331 07:9321: 19        .byte $19   ; 
- D 0 - I - 0x01D332 07:9322: 00        .byte $00   ; 
- D 0 - I - 0x01D333 07:9323: 46        .byte $46   ; 
- D 0 - I - 0x01D334 07:9324: 00        .byte $00   ; 
- D 0 - I - 0x01D335 07:9325: 3D        .byte $3D   ; 
- D 0 - I - 0x01D336 07:9326: 2E        .byte $2E   ; 
- D 0 - I - 0x01D337 07:9327: 2F        .byte $2F   ; 
- D 0 - I - 0x01D338 07:9328: 2B        .byte $2B   ; 
- D 0 - I - 0x01D339 07:9329: 2F        .byte $2F   ; 
- D 0 - I - 0x01D33A 07:932A: 2B        .byte $2B   ; 
- D 0 - I - 0x01D33B 07:932B: 18        .byte $18   ; 
- D 0 - I - 0x01D33C 07:932C: 2F        .byte $2F   ; 
- D 0 - I - 0x01D33D 07:932D: 12        .byte $12   ; 
- D 0 - I - 0x01D33E 07:932E: 12        .byte $12   ; 
- D 0 - I - 0x01D33F 07:932F: 11        .byte $11   ; 
- D 0 - I - 0x01D340 07:9330: 14        .byte $14   ; 
- D 0 - I - 0x01D341 07:9331: 2E        .byte $2E   ; 
- D 0 - I - 0x01D342 07:9332: 2E        .byte $2E   ; 
- D 0 - I - 0x01D343 07:9333: 15        .byte $15   ; 
- D 0 - I - 0x01D344 07:9334: 2B        .byte $2B   ; 
- D 0 - I - 0x01D345 07:9335: 12        .byte $12   ; 
- D 0 - I - 0x01D346 07:9336: 12        .byte $12   ; 
- D 0 - I - 0x01D347 07:9337: 00        .byte $00   ; 
- D 0 - I - 0x01D348 07:9338: 11        .byte $11   ; 
- D 0 - I - 0x01D349 07:9339: 11        .byte $11   ; 
- D 0 - I - 0x01D34A 07:933A: 11        .byte $11   ; 
- D 0 - I - 0x01D34B 07:933B: 1A        .byte $1A   ; 
- D 0 - I - 0x01D34C 07:933C: 2F        .byte $2F   ; 
- D 0 - I - 0x01D34D 07:933D: 5E        .byte $5E   ; 
- D 0 - I - 0x01D34E 07:933E: 00        .byte $00   ; 
- D 0 - I - 0x01D34F 07:933F: 00        .byte $00   ; 
- D 0 - I - 0x01D350 07:9340: 5E        .byte $5E   ; 
- D 0 - I - 0x01D351 07:9341: 5F        .byte $5F   ; 
- D 0 - I - 0x01D352 07:9342: 18        .byte $18   ; 
- D 0 - I - 0x01D353 07:9343: 14        .byte $14   ; 
- D 0 - I - 0x01D354 07:9344: 00        .byte $00   ; 
- D 0 - I - 0x01D355 07:9345: 5C        .byte $5C   ; 
- D 0 - I - 0x01D356 07:9346: 2E        .byte $2E   ; 
- D 0 - I - 0x01D357 07:9347: 2E        .byte $2E   ; 
- D 0 - I - 0x01D358 07:9348: 5C        .byte $5C   ; 
- D 0 - I - 0x01D359 07:9349: 5D        .byte $5D   ; 
- D 0 - I - 0x01D35A 07:934A: 00        .byte $00   ; 
- D 0 - I - 0x01D35B 07:934B: 18        .byte $18   ; 
- D 0 - I - 0x01D35C 07:934C: 14        .byte $14   ; 
- D 0 - I - 0x01D35D 07:934D: 11        .byte $11   ; 
- D 0 - I - 0x01D35E 07:934E: 11        .byte $11   ; 
- D 0 - I - 0x01D35F 07:934F: 11        .byte $11   ; 
- D 0 - I - 0x01D360 07:9350: 11        .byte $11   ; 
- D 0 - I - 0x01D361 07:9351: 11        .byte $11   ; 
- D 0 - I - 0x01D362 07:9352: 11        .byte $11   ; 
- D 0 - I - 0x01D363 07:9353: 2E        .byte $2E   ; 
- D 0 - I - 0x01D364 07:9354: 1B        .byte $1B   ; 
- D 0 - I - 0x01D365 07:9355: 00        .byte $00   ; 
- D 0 - I - 0x01D366 07:9356: 18        .byte $18   ; 
- D 0 - I - 0x01D367 07:9357: 1A        .byte $1A   ; 
- D 0 - I - 0x01D368 07:9358: 1A        .byte $1A   ; 
- D 0 - I - 0x01D369 07:9359: 19        .byte $19   ; 
- D 0 - I - 0x01D36A 07:935A: 00        .byte $00   ; 
- D 0 - I - 0x01D36B 07:935B: 20        .byte $20   ; 
- D 0 - I - 0x01D36C 07:935C: 17        .byte $17   ; 
- D 0 - I - 0x01D36D 07:935D: 2F        .byte $2F   ; 
- D 0 - I - 0x01D36E 07:935E: 2B        .byte $2B   ; 
- D 0 - I - 0x01D36F 07:935F: 1A        .byte $1A   ; 
- D 0 - I - 0x01D370 07:9360: 1A        .byte $1A   ; 
- D 0 - I - 0x01D371 07:9361: 2B        .byte $2B   ; 
- D 0 - I - 0x01D372 07:9362: 24        .byte $24   ; 
- D 0 - I - 0x01D373 07:9363: 1A        .byte $1A   ; 
- D 0 - I - 0x01D374 07:9364: 19        .byte $19   ; 
- D 0 - I - 0x01D375 07:9365: 2B        .byte $2B   ; 
- D 0 - I - 0x01D376 07:9366: 11        .byte $11   ; 
- D 0 - I - 0x01D377 07:9367: 11        .byte $11   ; 
- D 0 - I - 0x01D378 07:9368: 21        .byte $21   ; 
- D 0 - I - 0x01D379 07:9369: 11        .byte $11   ; 
- D 0 - I - 0x01D37A 07:936A: 1A        .byte $1A   ; 
- D 0 - I - 0x01D37B 07:936B: 1A        .byte $1A   ; 
- D 0 - I - 0x01D37C 07:936C: 14        .byte $14   ; 



_off047_936D_07_04_01:
- D 0 - I - 0x01D37D 07:936D: 01        .byte $01   ; 
- D 0 - I - 0x01D37E 07:936E: 00        .byte $00   ; 
- D 0 - I - 0x01D37F 07:936F: 00        .byte $00   ; 
- D 0 - I - 0x01D380 07:9370: 18        .byte $18   ; 
- D 0 - I - 0x01D381 07:9371: 1B        .byte $1B   ; 
- D 0 - I - 0x01D382 07:9372: 1A        .byte $1A   ; 
- D 0 - I - 0x01D383 07:9373: 00        .byte $00   ; 
- D 0 - I - 0x01D384 07:9374: 5F        .byte $5F   ; 
- D 0 - I - 0x01D385 07:9375: 37        .byte $37   ; 
- D 0 - I - 0x01D386 07:9376: 2E        .byte $2E   ; 
- D 0 - I - 0x01D387 07:9377: 2E        .byte $2E   ; 
- D 0 - I - 0x01D388 07:9378: 2B        .byte $2B   ; 
- D 0 - I - 0x01D389 07:9379: 1A        .byte $1A   ; 
- D 0 - I - 0x01D38A 07:937A: 19        .byte $19   ; 
- D 0 - I - 0x01D38B 07:937B: 52        .byte $52   ; 
- D 0 - I - 0x01D38C 07:937C: 5F        .byte $5F   ; 
- D 0 - I - 0x01D38D 07:937D: 37        .byte $37   ; 
- D 0 - I - 0x01D38E 07:937E: 1A        .byte $1A   ; 
- D 0 - I - 0x01D38F 07:937F: 19        .byte $19   ; 
- D 0 - I - 0x01D390 07:9380: 00        .byte $00   ; 
- D 0 - I - 0x01D391 07:9381: 18        .byte $18   ; 
- D 0 - I - 0x01D392 07:9382: 2F        .byte $2F   ; 
- D 0 - I - 0x01D393 07:9383: 5D        .byte $5D   ; 
- D 0 - I - 0x01D394 07:9384: 5F        .byte $5F   ; 
- D 0 - I - 0x01D395 07:9385: 37        .byte $37   ; 
- D 0 - I - 0x01D396 07:9386: 19        .byte $19   ; 
- D 0 - I - 0x01D397 07:9387: 2B        .byte $2B   ; 
- D 0 - I - 0x01D398 07:9388: 2E        .byte $2E   ; 
- D 0 - I - 0x01D399 07:9389: 2B        .byte $2B   ; 
- D 0 - I - 0x01D39A 07:938A: 15        .byte $15   ; 
- D 0 - I - 0x01D39B 07:938B: 53        .byte $53   ; 
- D 0 - I - 0x01D39C 07:938C: 53        .byte $53   ; 
- D 0 - I - 0x01D39D 07:938D: 32        .byte $32   ; 
- D 0 - I - 0x01D39E 07:938E: 2E        .byte $2E   ; 
- D 0 - I - 0x01D39F 07:938F: 14        .byte $14   ; 
- D 0 - I - 0x01D3A0 07:9390: 11        .byte $11   ; 
- D 0 - I - 0x01D3A1 07:9391: 15        .byte $15   ; 
- D 0 - I - 0x01D3A2 07:9392: 11        .byte $11   ; 
- D 0 - I - 0x01D3A3 07:9393: 5F        .byte $5F   ; 
- D 0 - I - 0x01D3A4 07:9394: 5B        .byte $5B   ; 
- D 0 - I - 0x01D3A5 07:9395: 12        .byte $12   ; 
- D 0 - I - 0x01D3A6 07:9396: 1A        .byte $1A   ; 
- D 0 - I - 0x01D3A7 07:9397: 11        .byte $11   ; 
- D 0 - I - 0x01D3A8 07:9398: 27        .byte $27   ; 
- D 0 - I - 0x01D3A9 07:9399: 1A        .byte $1A   ; 
- D 0 - I - 0x01D3AA 07:939A: 19        .byte $19   ; 
- D 0 - I - 0x01D3AB 07:939B: 5D        .byte $5D   ; 
- D 0 - I - 0x01D3AC 07:939C: 5F        .byte $5F   ; 
- D 0 - I - 0x01D3AD 07:939D: 35        .byte $35   ; 
- D 0 - I - 0x01D3AE 07:939E: 37        .byte $37   ; 
- D 0 - I - 0x01D3AF 07:939F: 37        .byte $37   ; 
- D 0 - I - 0x01D3B0 07:93A0: 56        .byte $56   ; 
- D 0 - I - 0x01D3B1 07:93A1: 54        .byte $54   ; 
- D 0 - I - 0x01D3B2 07:93A2: 51        .byte $51   ; 
- D 0 - I - 0x01D3B3 07:93A3: 57        .byte $57   ; 
- D 0 - I - 0x01D3B4 07:93A4: 37        .byte $37   ; 
- D 0 - I - 0x01D3B5 07:93A5: 37        .byte $37   ; 
- D 0 - I - 0x01D3B6 07:93A6: 54        .byte $54   ; 
- D 0 - I - 0x01D3B7 07:93A7: 55        .byte $55   ; 
- D 0 - I - 0x01D3B8 07:93A8: 56        .byte $56   ; 
- D 0 - I - 0x01D3B9 07:93A9: 40        .byte $40   ; 
- D 0 - I - 0x01D3BA 07:93AA: 41        .byte $41   ; 
- D 0 - I - 0x01D3BB 07:93AB: 57        .byte $57   ; 
- D 0 - I - 0x01D3BC 07:93AC: 50        .byte $50   ; 
- D 0 - I - 0x01D3BD 07:93AD: 51        .byte $51   ; 
- D 0 - I - 0x01D3BE 07:93AE: 00        .byte $00   ; 
- D 0 - I - 0x01D3BF 07:93AF: 59        .byte $59   ; 
- D 0 - I - 0x01D3C0 07:93B0: 5A        .byte $5A   ; 
- D 0 - I - 0x01D3C1 07:93B1: 44        .byte $44   ; 
- D 0 - I - 0x01D3C2 07:93B2: 45        .byte $45   ; 
- D 0 - I - 0x01D3C3 07:93B3: 5B        .byte $5B   ; 
- D 0 - I - 0x01D3C4 07:93B4: 58        .byte $58   ; 
- D 0 - I - 0x01D3C5 07:93B5: 2E        .byte $2E   ; 
- D 0 - I - 0x01D3C6 07:93B6: 2F        .byte $2F   ; 
- D 0 - I - 0x01D3C7 07:93B7: 59        .byte $59   ; 
- D 0 - I - 0x01D3C8 07:93B8: 5E        .byte $5E   ; 
- D 0 - I - 0x01D3C9 07:93B9: 48        .byte $48   ; 
- D 0 - I - 0x01D3CA 07:93BA: 49        .byte $49   ; 
- D 0 - I - 0x01D3CB 07:93BB: 5F        .byte $5F   ; 
- D 0 - I - 0x01D3CC 07:93BC: 58        .byte $58   ; 
- D 0 - I - 0x01D3CD 07:93BD: 3A        .byte $3A   ; 
- D 0 - I - 0x01D3CE 07:93BE: 36        .byte $36   ; 
- D 0 - I - 0x01D3CF 07:93BF: 59        .byte $59   ; 
- D 0 - I - 0x01D3D0 07:93C0: 5C        .byte $5C   ; 
- D 0 - I - 0x01D3D1 07:93C1: 4C        .byte $4C   ; 
- D 0 - I - 0x01D3D2 07:93C2: 4D        .byte $4D   ; 
- D 0 - I - 0x01D3D3 07:93C3: 4E        .byte $4E   ; 
- D 0 - I - 0x01D3D4 07:93C4: 4F        .byte $4F   ; 
- D 0 - I - 0x01D3D5 07:93C5: 3E        .byte $3E   ; 
- D 0 - I - 0x01D3D6 07:93C6: 35        .byte $35   ; 
- D 0 - I - 0x01D3D7 07:93C7: 35        .byte $35   ; 
- D 0 - I - 0x01D3D8 07:93C8: 35        .byte $35   ; 
- D 0 - I - 0x01D3D9 07:93C9: 35        .byte $35   ; 
- D 0 - I - 0x01D3DA 07:93CA: 35        .byte $35   ; 
- D 0 - I - 0x01D3DB 07:93CB: 35        .byte $35   ; 
- D 0 - I - 0x01D3DC 07:93CC: 35        .byte $35   ; 
- D 0 - I - 0x01D3DD 07:93CD: 35        .byte $35   ; 



_off047_93CE_07_05_00:
- D 0 - I - 0x01D3DE 07:93CE: 03        .byte $03   ; 
- D 0 - I - 0x01D3DF 07:93CF: 1D        .byte $1D   ; 
- D 0 - I - 0x01D3E0 07:93D0: 1D        .byte $1D   ; 
- D 0 - I - 0x01D3E1 07:93D1: 1D        .byte $1D   ; 
- D 0 - I - 0x01D3E2 07:93D2: 1D        .byte $1D   ; 
- D 0 - I - 0x01D3E3 07:93D3: 1D        .byte $1D   ; 
- D 0 - I - 0x01D3E4 07:93D4: 1D        .byte $1D   ; 
- D 0 - I - 0x01D3E5 07:93D5: 1D        .byte $1D   ; 
- D 0 - I - 0x01D3E6 07:93D6: 1D        .byte $1D   ; 
- D 0 - I - 0x01D3E7 07:93D7: 1D        .byte $1D   ; 
- D 0 - I - 0x01D3E8 07:93D8: 1F        .byte $1F   ; 
- D 0 - I - 0x01D3E9 07:93D9: 1F        .byte $1F   ; 
- D 0 - I - 0x01D3EA 07:93DA: 1F        .byte $1F   ; 
- D 0 - I - 0x01D3EB 07:93DB: 1F        .byte $1F   ; 
- D 0 - I - 0x01D3EC 07:93DC: 1F        .byte $1F   ; 
- D 0 - I - 0x01D3ED 07:93DD: 1F        .byte $1F   ; 
- D 0 - I - 0x01D3EE 07:93DE: 1F        .byte $1F   ; 
- D 0 - I - 0x01D3EF 07:93DF: 1F        .byte $1F   ; 
- D 0 - I - 0x01D3F0 07:93E0: 37        .byte $37   ; 
- D 0 - I - 0x01D3F1 07:93E1: 33        .byte $33   ; 
- D 0 - I - 0x01D3F2 07:93E2: 37        .byte $37   ; 
- D 0 - I - 0x01D3F3 07:93E3: 50        .byte $50   ; 
- D 0 - I - 0x01D3F4 07:93E4: 51        .byte $51   ; 
- D 0 - I - 0x01D3F5 07:93E5: 30        .byte $30   ; 
- D 0 - I - 0x01D3F6 07:93E6: 31        .byte $31   ; 
- D 0 - I - 0x01D3F7 07:93E7: 37        .byte $37   ; 
- D 0 - I - 0x01D3F8 07:93E8: 30        .byte $30   ; 
- D 0 - I - 0x01D3F9 07:93E9: 31        .byte $31   ; 
- D 0 - I - 0x01D3FA 07:93EA: 33        .byte $33   ; 
- D 0 - I - 0x01D3FB 07:93EB: 58        .byte $58   ; 
- D 0 - I - 0x01D3FC 07:93EC: 2E        .byte $2E   ; 
- D 0 - I - 0x01D3FD 07:93ED: 15        .byte $15   ; 
- D 0 - I - 0x01D3FE 07:93EE: 2F        .byte $2F   ; 
- D 0 - I - 0x01D3FF 07:93EF: 33        .byte $33   ; 
- D 0 - I - 0x01D400 07:93F0: 00        .byte $00   ; 
- D 0 - I - 0x01D401 07:93F1: 38        .byte $38   ; 
- D 0 - I - 0x01D402 07:93F2: 5B        .byte $5B   ; 
- D 0 - I - 0x01D403 07:93F3: 35        .byte $35   ; 
- D 0 - I - 0x01D404 07:93F4: 5A        .byte $5A   ; 
- D 0 - I - 0x01D405 07:93F5: 46        .byte $46   ; 
- D 0 - I - 0x01D406 07:93F6: 4A        .byte $4A   ; 
- D 0 - I - 0x01D407 07:93F7: 35        .byte $35   ; 
- D 0 - I - 0x01D408 07:93F8: 35        .byte $35   ; 
- D 0 - I - 0x01D409 07:93F9: 38        .byte $38   ; 
- D 0 - I - 0x01D40A 07:93FA: 5D        .byte $5D   ; 
- D 0 - I - 0x01D40B 07:93FB: 2E        .byte $2E   ; 
- D 0 - I - 0x01D40C 07:93FC: 5C        .byte $5C   ; 
- D 0 - I - 0x01D40D 07:93FD: 15        .byte $15   ; 
- D 0 - I - 0x01D40E 07:93FE: 1A        .byte $1A   ; 
- D 0 - I - 0x01D40F 07:93FF: 1D        .byte $1D   ; 
- D 0 - I - 0x01D410 07:9400: 1D        .byte $1D   ; 
- D 0 - I - 0x01D411 07:9401: 1D        .byte $1D   ; 
- D 0 - I - 0x01D412 07:9402: 1D        .byte $1D   ; 
- D 0 - I - 0x01D413 07:9403: 1D        .byte $1D   ; 
- D 0 - I - 0x01D414 07:9404: 1D        .byte $1D   ; 
- D 0 - I - 0x01D415 07:9405: 1D        .byte $1D   ; 
- D 0 - I - 0x01D416 07:9406: 1D        .byte $1D   ; 
- D 0 - I - 0x01D417 07:9407: 00        .byte $00   ; 
- D 0 - I - 0x01D418 07:9408: 00        .byte $00   ; 
- D 0 - I - 0x01D419 07:9409: 2E        .byte $2E   ; 
- D 0 - I - 0x01D41A 07:940A: 2C        .byte $2C   ; 
- D 0 - I - 0x01D41B 07:940B: 1F        .byte $1F   ; 
- D 0 - I - 0x01D41C 07:940C: 1F        .byte $1F   ; 
- D 0 - I - 0x01D41D 07:940D: 1F        .byte $1F   ; 
- D 0 - I - 0x01D41E 07:940E: 1F        .byte $1F   ; 
- D 0 - I - 0x01D41F 07:940F: 2F        .byte $2F   ; 
- D 0 - I - 0x01D420 07:9410: 00        .byte $00   ; 
- D 0 - I - 0x01D421 07:9411: 18        .byte $18   ; 
- D 0 - I - 0x01D422 07:9412: 1A        .byte $1A   ; 
- D 0 - I - 0x01D423 07:9413: 59        .byte $59   ; 
- D 0 - I - 0x01D424 07:9414: 37        .byte $37   ; 
- D 0 - I - 0x01D425 07:9415: 37        .byte $37   ; 
- D 0 - I - 0x01D426 07:9416: 57        .byte $57   ; 
- D 0 - I - 0x01D427 07:9417: 2B        .byte $2B   ; 
- D 0 - I - 0x01D428 07:9418: 0F        .byte $0F   ; 
- D 0 - I - 0x01D429 07:9419: 00        .byte $00   ; 
- D 0 - I - 0x01D42A 07:941A: 1A        .byte $1A   ; 
- D 0 - I - 0x01D42B 07:941B: 59        .byte $59   ; 
- D 0 - I - 0x01D42C 07:941C: 33        .byte $33   ; 
- D 0 - I - 0x01D42D 07:941D: 33        .byte $33   ; 
- D 0 - I - 0x01D42E 07:941E: 57        .byte $57   ; 
- D 0 - I - 0x01D42F 07:941F: 4B        .byte $4B   ; 
- D 0 - I - 0x01D430 07:9420: 19        .byte $19   ; 
- D 0 - I - 0x01D431 07:9421: 2B        .byte $2B   ; 
- D 0 - I - 0x01D432 07:9422: 11        .byte $11   ; 
- D 0 - I - 0x01D433 07:9423: 5B        .byte $5B   ; 
- D 0 - I - 0x01D434 07:9424: 35        .byte $35   ; 
- D 0 - I - 0x01D435 07:9425: 35        .byte $35   ; 
- D 0 - I - 0x01D436 07:9426: 5A        .byte $5A   ; 
- D 0 - I - 0x01D437 07:9427: 1B        .byte $1B   ; 
- D 0 - I - 0x01D438 07:9428: 14        .byte $14   ; 
- D 0 - I - 0x01D439 07:9429: 15        .byte $15   ; 
- D 0 - I - 0x01D43A 07:942A: 1A        .byte $1A   ; 
- D 0 - I - 0x01D43B 07:942B: 5F        .byte $5F   ; 
- D 0 - I - 0x01D43C 07:942C: 33        .byte $33   ; 
- D 0 - I - 0x01D43D 07:942D: 37        .byte $37   ; 
- D 0 - I - 0x01D43E 07:942E: 5E        .byte $5E   ; 
- D 0 - I - 0x01D43F 07:942F: 1D        .byte $1D   ; 
- D 0 - I - 0x01D440 07:9430: 1D        .byte $1D   ; 
- D 0 - I - 0x01D441 07:9431: 1D        .byte $1D   ; 
- D 0 - I - 0x01D442 07:9432: 1D        .byte $1D   ; 
- D 0 - I - 0x01D443 07:9433: 1D        .byte $1D   ; 
- D 0 - I - 0x01D444 07:9434: 1D        .byte $1D   ; 
- D 0 - I - 0x01D445 07:9435: 1D        .byte $1D   ; 
- D 0 - I - 0x01D446 07:9436: 1D        .byte $1D   ; 
- D 0 - I - 0x01D447 07:9437: 1F        .byte $1F   ; 
- D 0 - I - 0x01D448 07:9438: 1F        .byte $1F   ; 
- D 0 - I - 0x01D449 07:9439: 1F        .byte $1F   ; 
- D 0 - I - 0x01D44A 07:943A: 00        .byte $00   ; 
- D 0 - I - 0x01D44B 07:943B: 00        .byte $00   ; 
- D 0 - I - 0x01D44C 07:943C: 2C        .byte $2C   ; 
- D 0 - I - 0x01D44D 07:943D: 2C        .byte $2C   ; 
- D 0 - I - 0x01D44E 07:943E: 2C        .byte $2C   ; 
- D 0 - I - 0x01D44F 07:943F: 30        .byte $30   ; 
- D 0 - I - 0x01D450 07:9440: 31        .byte $31   ; 
- D 0 - I - 0x01D451 07:9441: 30        .byte $30   ; 
- D 0 - I - 0x01D452 07:9442: 2F        .byte $2F   ; 
- D 0 - I - 0x01D453 07:9443: 2B        .byte $2B   ; 
- D 0 - I - 0x01D454 07:9444: 18        .byte $18   ; 
- D 0 - I - 0x01D455 07:9445: 19        .byte $19   ; 
- D 0 - I - 0x01D456 07:9446: 00        .byte $00   ; 
- D 0 - I - 0x01D457 07:9447: 0F        .byte $0F   ; 
- D 0 - I - 0x01D458 07:9448: 4A        .byte $4A   ; 
- D 0 - I - 0x01D459 07:9449: 4B        .byte $4B   ; 
- D 0 - I - 0x01D45A 07:944A: 47        .byte $47   ; 
- D 0 - I - 0x01D45B 07:944B: 00        .byte $00   ; 
- D 0 - I - 0x01D45C 07:944C: 00        .byte $00   ; 
- D 0 - I - 0x01D45D 07:944D: 00        .byte $00   ; 
- D 0 - I - 0x01D45E 07:944E: 2E        .byte $2E   ; 
- D 0 - I - 0x01D45F 07:944F: 00        .byte $00   ; 
- D 0 - I - 0x01D460 07:9450: 18        .byte $18   ; 
- D 0 - I - 0x01D461 07:9451: 1A        .byte $1A   ; 
- D 0 - I - 0x01D462 07:9452: 1A        .byte $1A   ; 
- D 0 - I - 0x01D463 07:9453: 2F        .byte $2F   ; 
- D 0 - I - 0x01D464 07:9454: 46        .byte $46   ; 
- D 0 - I - 0x01D465 07:9455: 2F        .byte $2F   ; 
- D 0 - I - 0x01D466 07:9456: 11        .byte $11   ; 
- D 0 - I - 0x01D467 07:9457: 2B        .byte $2B   ; 
- D 0 - I - 0x01D468 07:9458: 15        .byte $15   ; 
- D 0 - I - 0x01D469 07:9459: 1A        .byte $1A   ; 
- D 0 - I - 0x01D46A 07:945A: 1A        .byte $1A   ; 
- D 0 - I - 0x01D46B 07:945B: 15        .byte $15   ; 
- D 0 - I - 0x01D46C 07:945C: 19        .byte $19   ; 
- D 0 - I - 0x01D46D 07:945D: 00        .byte $00   ; 
- D 0 - I - 0x01D46E 07:945E: 1A        .byte $1A   ; 
- D 0 - I - 0x01D46F 07:945F: 1D        .byte $1D   ; 
- D 0 - I - 0x01D470 07:9460: 1D        .byte $1D   ; 
- D 0 - I - 0x01D471 07:9461: 00        .byte $00   ; 
- D 0 - I - 0x01D472 07:9462: 00        .byte $00   ; 
- D 0 - I - 0x01D473 07:9463: 23        .byte $23   ; 
- D 0 - I - 0x01D474 07:9464: 00        .byte $00   ; 
- D 0 - I - 0x01D475 07:9465: 18        .byte $18   ; 
- D 0 - I - 0x01D476 07:9466: 12        .byte $12   ; 
- D 0 - I - 0x01D477 07:9467: 00        .byte $00   ; 
- D 0 - I - 0x01D478 07:9468: 2C        .byte $2C   ; 
- D 0 - I - 0x01D479 07:9469: 2E        .byte $2E   ; 
- D 0 - I - 0x01D47A 07:946A: 2E        .byte $2E   ; 
- D 0 - I - 0x01D47B 07:946B: 15        .byte $15   ; 
- D 0 - I - 0x01D47C 07:946C: 27        .byte $27   ; 
- D 0 - I - 0x01D47D 07:946D: 15        .byte $15   ; 
- D 0 - I - 0x01D47E 07:946E: 12        .byte $12   ; 
- D 0 - I - 0x01D47F 07:946F: 00        .byte $00   ; 
- D 0 - I - 0x01D480 07:9470: 18        .byte $18   ; 
- D 0 - I - 0x01D481 07:9471: 18        .byte $18   ; 
- D 0 - I - 0x01D482 07:9472: 19        .byte $19   ; 
- D 0 - I - 0x01D483 07:9473: 28        .byte $28   ; 
- D 0 - I - 0x01D484 07:9474: 10        .byte $10   ; 
- D 0 - I - 0x01D485 07:9475: 25        .byte $25   ; 
- D 0 - I - 0x01D486 07:9476: 12        .byte $12   ; 
- D 0 - I - 0x01D487 07:9477: 2E        .byte $2E   ; 
- D 0 - I - 0x01D488 07:9478: 00        .byte $00   ; 
- D 0 - I - 0x01D489 07:9479: 15        .byte $15   ; 
- D 0 - I - 0x01D48A 07:947A: 26        .byte $26   ; 
- D 0 - I - 0x01D48B 07:947B: 1A        .byte $1A   ; 
- D 0 - I - 0x01D48C 07:947C: 12        .byte $12   ; 
- D 0 - I - 0x01D48D 07:947D: 12        .byte $12   ; 
- D 0 - I - 0x01D48E 07:947E: 12        .byte $12   ; 
- D 0 - I - 0x01D48F 07:947F: 11        .byte $11   ; 
- D 0 - I - 0x01D490 07:9480: 11        .byte $11   ; 
- D 0 - I - 0x01D491 07:9481: 11        .byte $11   ; 
- D 0 - I - 0x01D492 07:9482: 11        .byte $11   ; 
- D 0 - I - 0x01D493 07:9483: 11        .byte $11   ; 
- D 0 - I - 0x01D494 07:9484: 38        .byte $38   ; 
- D 0 - I - 0x01D495 07:9485: 38        .byte $38   ; 
- D 0 - I - 0x01D496 07:9486: 12        .byte $12   ; 
- D 0 - I - 0x01D497 07:9487: 2F        .byte $2F   ; 
- D 0 - I - 0x01D498 07:9488: 2B        .byte $2B   ; 
- D 0 - I - 0x01D499 07:9489: 2B        .byte $2B   ; 
- D 0 - I - 0x01D49A 07:948A: 18        .byte $18   ; 
- D 0 - I - 0x01D49B 07:948B: 1A        .byte $1A   ; 
- D 0 - I - 0x01D49C 07:948C: 14        .byte $14   ; 
- D 0 - I - 0x01D49D 07:948D: 00        .byte $00   ; 
- D 0 - I - 0x01D49E 07:948E: 12        .byte $12   ; 



_off047_948F_07_02_00:
- D 0 - I - 0x01D49F 07:948F: 00        .byte $00   ; 
- D 0 - I - 0x01D4A0 07:9490: 12        .byte $12   ; 
- D 0 - I - 0x01D4A1 07:9491: 00        .byte $00   ; 
- D 0 - I - 0x01D4A2 07:9492: 00        .byte $00   ; 
- D 0 - I - 0x01D4A3 07:9493: 1A        .byte $1A   ; 
- D 0 - I - 0x01D4A4 07:9494: 1A        .byte $1A   ; 
- D 0 - I - 0x01D4A5 07:9495: 18        .byte $18   ; 
- D 0 - I - 0x01D4A6 07:9496: 1A        .byte $1A   ; 
- D 0 - I - 0x01D4A7 07:9497: 12        .byte $12   ; 
- D 0 - I - 0x01D4A8 07:9498: 19        .byte $19   ; 
- D 0 - I - 0x01D4A9 07:9499: 2E        .byte $2E   ; 
- D 0 - I - 0x01D4AA 07:949A: 15        .byte $15   ; 
- D 0 - I - 0x01D4AB 07:949B: 1A        .byte $1A   ; 
- D 0 - I - 0x01D4AC 07:949C: 10        .byte $10   ; 
- D 0 - I - 0x01D4AD 07:949D: 3C        .byte $3C   ; 
- D 0 - I - 0x01D4AE 07:949E: 1A        .byte $1A   ; 
- D 0 - I - 0x01D4AF 07:949F: 3B        .byte $3B   ; 
- D 0 - I - 0x01D4B0 07:94A0: 00        .byte $00   ; 
- D 0 - I - 0x01D4B1 07:94A1: 18        .byte $18   ; 
- D 0 - I - 0x01D4B2 07:94A2: 10        .byte $10   ; 
- D 0 - I - 0x01D4B3 07:94A3: 12        .byte $12   ; 
- D 0 - I - 0x01D4B4 07:94A4: 12        .byte $12   ; 
- D 0 - I - 0x01D4B5 07:94A5: 12        .byte $12   ; 
- D 0 - I - 0x01D4B6 07:94A6: 12        .byte $12   ; 
- D 0 - I - 0x01D4B7 07:94A7: 3F        .byte $3F   ; 
- D 0 - I - 0x01D4B8 07:94A8: 12        .byte $12   ; 
- D 0 - I - 0x01D4B9 07:94A9: 11        .byte $11   ; 
- D 0 - I - 0x01D4BA 07:94AA: 12        .byte $12   ; 
- D 0 - I - 0x01D4BB 07:94AB: 12        .byte $12   ; 
- D 0 - I - 0x01D4BC 07:94AC: 12        .byte $12   ; 
- D 0 - I - 0x01D4BD 07:94AD: 12        .byte $12   ; 
- D 0 - I - 0x01D4BE 07:94AE: 12        .byte $12   ; 
- D 0 - I - 0x01D4BF 07:94AF: 12        .byte $12   ; 
- D 0 - I - 0x01D4C0 07:94B0: 1A        .byte $1A   ; 
- D 0 - I - 0x01D4C1 07:94B1: 19        .byte $19   ; 
- D 0 - I - 0x01D4C2 07:94B2: 12        .byte $12   ; 
- D 0 - I - 0x01D4C3 07:94B3: 12        .byte $12   ; 
- D 0 - I - 0x01D4C4 07:94B4: 12        .byte $12   ; 
- D 0 - I - 0x01D4C5 07:94B5: 12        .byte $12   ; 
- D 0 - I - 0x01D4C6 07:94B6: 12        .byte $12   ; 
- D 0 - I - 0x01D4C7 07:94B7: 3B        .byte $3B   ; 
- D 0 - I - 0x01D4C8 07:94B8: 2D        .byte $2D   ; 
- D 0 - I - 0x01D4C9 07:94B9: 10        .byte $10   ; 
- D 0 - I - 0x01D4CA 07:94BA: 12        .byte $12   ; 
- D 0 - I - 0x01D4CB 07:94BB: 12        .byte $12   ; 
- D 0 - I - 0x01D4CC 07:94BC: 12        .byte $12   ; 
- D 0 - I - 0x01D4CD 07:94BD: 12        .byte $12   ; 
- D 0 - I - 0x01D4CE 07:94BE: 12        .byte $12   ; 
- D 0 - I - 0x01D4CF 07:94BF: 3F        .byte $3F   ; 



_off047_94C0_07_03_00:
- D 0 - I - 0x01D4D0 07:94C0: 01        .byte $01   ; 
- D 0 - I - 0x01D4D1 07:94C1: 12        .byte $12   ; 
- D 0 - I - 0x01D4D2 07:94C2: 12        .byte $12   ; 
- D 0 - I - 0x01D4D3 07:94C3: 12        .byte $12   ; 
- D 0 - I - 0x01D4D4 07:94C4: 12        .byte $12   ; 
- D 0 - I - 0x01D4D5 07:94C5: 12        .byte $12   ; 
- D 0 - I - 0x01D4D6 07:94C6: 12        .byte $12   ; 
- D 0 - I - 0x01D4D7 07:94C7: 12        .byte $12   ; 
- D 0 - I - 0x01D4D8 07:94C8: 12        .byte $12   ; 
- D 0 - I - 0x01D4D9 07:94C9: 1A        .byte $1A   ; 
- D 0 - I - 0x01D4DA 07:94CA: 1A        .byte $1A   ; 
- D 0 - I - 0x01D4DB 07:94CB: 1A        .byte $1A   ; 
- D 0 - I - 0x01D4DC 07:94CC: 1A        .byte $1A   ; 
- D 0 - I - 0x01D4DD 07:94CD: 11        .byte $11   ; 
- D 0 - I - 0x01D4DE 07:94CE: 17        .byte $17   ; 
- D 0 - I - 0x01D4DF 07:94CF: 18        .byte $18   ; 
- D 0 - I - 0x01D4E0 07:94D0: 14        .byte $14   ; 
- D 0 - I - 0x01D4E1 07:94D1: 10        .byte $10   ; 
- D 0 - I - 0x01D4E2 07:94D2: 10        .byte $10   ; 
- D 0 - I - 0x01D4E3 07:94D3: 10        .byte $10   ; 
- D 0 - I - 0x01D4E4 07:94D4: 10        .byte $10   ; 
- D 0 - I - 0x01D4E5 07:94D5: 10        .byte $10   ; 
- D 0 - I - 0x01D4E6 07:94D6: 10        .byte $10   ; 
- D 0 - I - 0x01D4E7 07:94D7: 00        .byte $00   ; 
- D 0 - I - 0x01D4E8 07:94D8: 15        .byte $15   ; 
- D 0 - I - 0x01D4E9 07:94D9: 19        .byte $19   ; 
- D 0 - I - 0x01D4EA 07:94DA: 18        .byte $18   ; 
- D 0 - I - 0x01D4EB 07:94DB: 1A        .byte $1A   ; 
- D 0 - I - 0x01D4EC 07:94DC: 1A        .byte $1A   ; 
- D 0 - I - 0x01D4ED 07:94DD: 19        .byte $19   ; 
- D 0 - I - 0x01D4EE 07:94DE: 00        .byte $00   ; 
- D 0 - I - 0x01D4EF 07:94DF: 00        .byte $00   ; 
- D 0 - I - 0x01D4F0 07:94E0: 18        .byte $18   ; 
- D 0 - I - 0x01D4F1 07:94E1: 14        .byte $14   ; 
- D 0 - I - 0x01D4F2 07:94E2: 09        .byte $09   ; 
- D 0 - I - 0x01D4F3 07:94E3: 1A        .byte $1A   ; 
- D 0 - I - 0x01D4F4 07:94E4: 1A        .byte $1A   ; 
- D 0 - I - 0x01D4F5 07:94E5: 08        .byte $08   ; 
- D 0 - I - 0x01D4F6 07:94E6: 09        .byte $09   ; 
- D 0 - I - 0x01D4F7 07:94E7: 08        .byte $08   ; 
- D 0 - I - 0x01D4F8 07:94E8: 03        .byte $03   ; 
- D 0 - I - 0x01D4F9 07:94E9: 10        .byte $10   ; 
- D 0 - I - 0x01D4FA 07:94EA: 10        .byte $10   ; 
- D 0 - I - 0x01D4FB 07:94EB: 11        .byte $11   ; 
- D 0 - I - 0x01D4FC 07:94EC: 11        .byte $11   ; 
- D 0 - I - 0x01D4FD 07:94ED: 11        .byte $11   ; 
- D 0 - I - 0x01D4FE 07:94EE: 06        .byte $06   ; 
- D 0 - I - 0x01D4FF 07:94EF: 04        .byte $04   ; 
- D 0 - I - 0x01D500 07:94F0: 04        .byte $04   ; 
- D 0 - I - 0x01D501 07:94F1: 12        .byte $12   ; 
- D 0 - I - 0x01D502 07:94F2: 12        .byte $12   ; 
- D 0 - I - 0x01D503 07:94F3: 12        .byte $12   ; 
- D 0 - I - 0x01D504 07:94F4: 12        .byte $12   ; 
- D 0 - I - 0x01D505 07:94F5: 00        .byte $00   ; 
- D 0 - I - 0x01D506 07:94F6: 00        .byte $00   ; 
- D 0 - I - 0x01D507 07:94F7: 1B        .byte $1B   ; 
- D 0 - I - 0x01D508 07:94F8: 12        .byte $12   ; 
- D 0 - I - 0x01D509 07:94F9: 16        .byte $16   ; 
- D 0 - I - 0x01D50A 07:94FA: 11        .byte $11   ; 
- D 0 - I - 0x01D50B 07:94FB: 11        .byte $11   ; 
- D 0 - I - 0x01D50C 07:94FC: 11        .byte $11   ; 
- D 0 - I - 0x01D50D 07:94FD: 00        .byte $00   ; 
- D 0 - I - 0x01D50E 07:94FE: 15        .byte $15   ; 
- D 0 - I - 0x01D50F 07:94FF: 1A        .byte $1A   ; 
- D 0 - I - 0x01D510 07:9500: 3B        .byte $3B   ; 
- D 0 - I - 0x01D511 07:9501: 10        .byte $10   ; 
- D 0 - I - 0x01D512 07:9502: 10        .byte $10   ; 
- D 0 - I - 0x01D513 07:9503: 10        .byte $10   ; 
- D 0 - I - 0x01D514 07:9504: 10        .byte $10   ; 
- D 0 - I - 0x01D515 07:9505: 10        .byte $10   ; 
- D 0 - I - 0x01D516 07:9506: 10        .byte $10   ; 
- D 0 - I - 0x01D517 07:9507: 10        .byte $10   ; 
- D 0 - I - 0x01D518 07:9508: 3F        .byte $3F   ; 
- D 0 - I - 0x01D519 07:9509: 1A        .byte $1A   ; 
- D 0 - I - 0x01D51A 07:950A: 1A        .byte $1A   ; 
- D 0 - I - 0x01D51B 07:950B: 19        .byte $19   ; 
- D 0 - I - 0x01D51C 07:950C: 05        .byte $05   ; 
- D 0 - I - 0x01D51D 07:950D: 02        .byte $02   ; 
- D 0 - I - 0x01D51E 07:950E: 18        .byte $18   ; 
- D 0 - I - 0x01D51F 07:950F: 1A        .byte $1A   ; 
- D 0 - I - 0x01D520 07:9510: 3A        .byte $3A   ; 
- D 0 - I - 0x01D521 07:9511: 15        .byte $15   ; 
- D 0 - I - 0x01D522 07:9512: 1A        .byte $1A   ; 
- D 0 - I - 0x01D523 07:9513: 09        .byte $09   ; 
- D 0 - I - 0x01D524 07:9514: 07        .byte $07   ; 
- D 0 - I - 0x01D525 07:9515: 08        .byte $08   ; 
- D 0 - I - 0x01D526 07:9516: 08        .byte $08   ; 
- D 0 - I - 0x01D527 07:9517: 1B        .byte $1B   ; 
- D 0 - I - 0x01D528 07:9518: 3E        .byte $3E   ; 
- D 0 - I - 0x01D529 07:9519: 11        .byte $11   ; 
- D 0 - I - 0x01D52A 07:951A: 11        .byte $11   ; 
- D 0 - I - 0x01D52B 07:951B: 04        .byte $04   ; 
- D 0 - I - 0x01D52C 07:951C: 11        .byte $11   ; 
- D 0 - I - 0x01D52D 07:951D: 11        .byte $11   ; 
- D 0 - I - 0x01D52E 07:951E: 04        .byte $04   ; 
- D 0 - I - 0x01D52F 07:951F: 11        .byte $11   ; 
- D 0 - I - 0x01D530 07:9520: 12        .byte $12   ; 



_off047_9521_07_04_00:
- D 0 - I - 0x01D531 07:9521: 03        .byte $03   ; 
- D 0 - I - 0x01D532 07:9522: 12        .byte $12   ; 
- D 0 - I - 0x01D533 07:9523: 12        .byte $12   ; 
- D 0 - I - 0x01D534 07:9524: 12        .byte $12   ; 
- D 0 - I - 0x01D535 07:9525: 12        .byte $12   ; 
- D 0 - I - 0x01D536 07:9526: 01        .byte $01   ; 
- D 0 - I - 0x01D537 07:9527: 12        .byte $12   ; 
- D 0 - I - 0x01D538 07:9528: 01        .byte $01   ; 
- D 0 - I - 0x01D539 07:9529: 12        .byte $12   ; 
- D 0 - I - 0x01D53A 07:952A: 18        .byte $18   ; 
- D 0 - I - 0x01D53B 07:952B: 1A        .byte $1A   ; 
- D 0 - I - 0x01D53C 07:952C: 14        .byte $14   ; 
- D 0 - I - 0x01D53D 07:952D: 05        .byte $05   ; 
- D 0 - I - 0x01D53E 07:952E: 02        .byte $02   ; 
- D 0 - I - 0x01D53F 07:952F: 05        .byte $05   ; 
- D 0 - I - 0x01D540 07:9530: 05        .byte $05   ; 
- D 0 - I - 0x01D541 07:9531: 01        .byte $01   ; 
- D 0 - I - 0x01D542 07:9532: 3C        .byte $3C   ; 
- D 0 - I - 0x01D543 07:9533: 10        .byte $10   ; 
- D 0 - I - 0x01D544 07:9534: 19        .byte $19   ; 
- D 0 - I - 0x01D545 07:9535: 03        .byte $03   ; 
- D 0 - I - 0x01D546 07:9536: 00        .byte $00   ; 
- D 0 - I - 0x01D547 07:9537: 2E        .byte $2E   ; 
- D 0 - I - 0x01D548 07:9538: 00        .byte $00   ; 
- D 0 - I - 0x01D549 07:9539: 02        .byte $02   ; 
- D 0 - I - 0x01D54A 07:953A: 38        .byte $38   ; 
- D 0 - I - 0x01D54B 07:953B: 11        .byte $11   ; 
- D 0 - I - 0x01D54C 07:953C: 11        .byte $11   ; 
- D 0 - I - 0x01D54D 07:953D: 11        .byte $11   ; 
- D 0 - I - 0x01D54E 07:953E: 09        .byte $09   ; 
- D 0 - I - 0x01D54F 07:953F: 11        .byte $11   ; 
- D 0 - I - 0x01D550 07:9540: 00        .byte $00   ; 
- D 0 - I - 0x01D551 07:9541: 11        .byte $11   ; 
- D 0 - I - 0x01D552 07:9542: 15        .byte $15   ; 
- D 0 - I - 0x01D553 07:9543: 1B        .byte $1B   ; 
- D 0 - I - 0x01D554 07:9544: 1B        .byte $1B   ; 
- D 0 - I - 0x01D555 07:9545: 19        .byte $19   ; 
- D 0 - I - 0x01D556 07:9546: 07        .byte $07   ; 
- D 0 - I - 0x01D557 07:9547: 18        .byte $18   ; 
- D 0 - I - 0x01D558 07:9548: 08        .byte $08   ; 
- D 0 - I - 0x01D559 07:9549: 15        .byte $15   ; 
- D 0 - I - 0x01D55A 07:954A: 12        .byte $12   ; 
- D 0 - I - 0x01D55B 07:954B: 12        .byte $12   ; 
- D 0 - I - 0x01D55C 07:954C: 10        .byte $10   ; 
- D 0 - I - 0x01D55D 07:954D: 10        .byte $10   ; 
- D 0 - I - 0x01D55E 07:954E: 04        .byte $04   ; 
- D 0 - I - 0x01D55F 07:954F: 10        .byte $10   ; 
- D 0 - I - 0x01D560 07:9550: 04        .byte $04   ; 
- D 0 - I - 0x01D561 07:9551: 24        .byte $24   ; 
- D 0 - I - 0x01D562 07:9552: 01        .byte $01   ; 
- D 0 - I - 0x01D563 07:9553: 12        .byte $12   ; 
- D 0 - I - 0x01D564 07:9554: 12        .byte $12   ; 
- D 0 - I - 0x01D565 07:9555: 00        .byte $00   ; 
- D 0 - I - 0x01D566 07:9556: 00        .byte $00   ; 
- D 0 - I - 0x01D567 07:9557: 1B        .byte $1B   ; 
- D 0 - I - 0x01D568 07:9558: 1B        .byte $1B   ; 
- D 0 - I - 0x01D569 07:9559: 19        .byte $19   ; 
- D 0 - I - 0x01D56A 07:955A: 02        .byte $02   ; 
- D 0 - I - 0x01D56B 07:955B: 18        .byte $18   ; 
- D 0 - I - 0x01D56C 07:955C: 11        .byte $11   ; 
- D 0 - I - 0x01D56D 07:955D: 00        .byte $00   ; 
- D 0 - I - 0x01D56E 07:955E: 00        .byte $00   ; 
- D 0 - I - 0x01D56F 07:955F: 18        .byte $18   ; 
- D 0 - I - 0x01D570 07:9560: 1B        .byte $1B   ; 
- D 0 - I - 0x01D571 07:9561: 00        .byte $00   ; 
- D 0 - I - 0x01D572 07:9562: 00        .byte $00   ; 
- D 0 - I - 0x01D573 07:9563: 15        .byte $15   ; 
- D 0 - I - 0x01D574 07:9564: 19        .byte $19   ; 
- D 0 - I - 0x01D575 07:9565: 00        .byte $00   ; 
- D 0 - I - 0x01D576 07:9566: 00        .byte $00   ; 
- D 0 - I - 0x01D577 07:9567: 00        .byte $00   ; 
- D 0 - I - 0x01D578 07:9568: 19        .byte $19   ; 
- D 0 - I - 0x01D579 07:9569: 00        .byte $00   ; 
- D 0 - I - 0x01D57A 07:956A: 2F        .byte $2F   ; 
- D 0 - I - 0x01D57B 07:956B: 28        .byte $28   ; 
- D 0 - I - 0x01D57C 07:956C: 2D        .byte $2D   ; 
- D 0 - I - 0x01D57D 07:956D: 00        .byte $00   ; 
- D 0 - I - 0x01D57E 07:956E: 00        .byte $00   ; 
- D 0 - I - 0x01D57F 07:956F: 2E        .byte $2E   ; 
- D 0 - I - 0x01D580 07:9570: 2B        .byte $2B   ; 
- D 0 - I - 0x01D581 07:9571: 2F        .byte $2F   ; 
- D 0 - I - 0x01D582 07:9572: 26        .byte $26   ; 
- D 0 - I - 0x01D583 07:9573: 19        .byte $19   ; 
- D 0 - I - 0x01D584 07:9574: 08        .byte $08   ; 
- D 0 - I - 0x01D585 07:9575: 00        .byte $00   ; 
- D 0 - I - 0x01D586 07:9576: 00        .byte $00   ; 
- D 0 - I - 0x01D587 07:9577: 18        .byte $18   ; 
- D 0 - I - 0x01D588 07:9578: 26        .byte $26   ; 
- D 0 - I - 0x01D589 07:9579: 11        .byte $11   ; 
- D 0 - I - 0x01D58A 07:957A: 15        .byte $15   ; 
- D 0 - I - 0x01D58B 07:957B: 04        .byte $04   ; 
- D 0 - I - 0x01D58C 07:957C: 04        .byte $04   ; 
- D 0 - I - 0x01D58D 07:957D: 04        .byte $04   ; 
- D 0 - I - 0x01D58E 07:957E: 10        .byte $10   ; 
- D 0 - I - 0x01D58F 07:957F: 24        .byte $24   ; 
- D 0 - I - 0x01D590 07:9580: 15        .byte $15   ; 
- D 0 - I - 0x01D591 07:9581: 04        .byte $04   ; 
- D 0 - I - 0x01D592 07:9582: 12        .byte $12   ; 
- D 0 - I - 0x01D593 07:9583: 12        .byte $12   ; 
- D 0 - I - 0x01D594 07:9584: 12        .byte $12   ; 
- D 0 - I - 0x01D595 07:9585: 12        .byte $12   ; 
- D 0 - I - 0x01D596 07:9586: 12        .byte $12   ; 
- D 0 - I - 0x01D597 07:9587: 12        .byte $12   ; 
- D 0 - I - 0x01D598 07:9588: 12        .byte $12   ; 
- D 0 - I - 0x01D599 07:9589: 12        .byte $12   ; 
- D 0 - I - 0x01D59A 07:958A: 05        .byte $05   ; 
- D 0 - I - 0x01D59B 07:958B: 02        .byte $02   ; 
- D 0 - I - 0x01D59C 07:958C: 0C        .byte $0C   ; 
- D 0 - I - 0x01D59D 07:958D: 12        .byte $12   ; 
- D 0 - I - 0x01D59E 07:958E: 12        .byte $12   ; 
- D 0 - I - 0x01D59F 07:958F: 12        .byte $12   ; 
- D 0 - I - 0x01D5A0 07:9590: 0C        .byte $0C   ; 
- D 0 - I - 0x01D5A1 07:9591: 11        .byte $11   ; 
- D 0 - I - 0x01D5A2 07:9592: 03        .byte $03   ; 
- D 0 - I - 0x01D5A3 07:9593: 00        .byte $00   ; 
- D 0 - I - 0x01D5A4 07:9594: 05        .byte $05   ; 
- D 0 - I - 0x01D5A5 07:9595: 01        .byte $01   ; 
- D 0 - I - 0x01D5A6 07:9596: 05        .byte $05   ; 
- D 0 - I - 0x01D5A7 07:9597: 02        .byte $02   ; 
- D 0 - I - 0x01D5A8 07:9598: 02        .byte $02   ; 
- D 0 - I - 0x01D5A9 07:9599: 28        .byte $28   ; 
- D 0 - I - 0x01D5AA 07:959A: 07        .byte $07   ; 
- D 0 - I - 0x01D5AB 07:959B: 0A        .byte $0A   ; 
- D 0 - I - 0x01D5AC 07:959C: 0C        .byte $0C   ; 
- D 0 - I - 0x01D5AD 07:959D: 11        .byte $11   ; 
- D 0 - I - 0x01D5AE 07:959E: 03        .byte $03   ; 
- D 0 - I - 0x01D5AF 07:959F: 00        .byte $00   ; 
- D 0 - I - 0x01D5B0 07:95A0: 22        .byte $22   ; 
- D 0 - I - 0x01D5B1 07:95A1: 18        .byte $18   ; 
- D 0 - I - 0x01D5B2 07:95A2: 11        .byte $11   ; 
- D 0 - I - 0x01D5B3 07:95A3: 11        .byte $11   ; 
- D 0 - I - 0x01D5B4 07:95A4: 07        .byte $07   ; 
- D 0 - I - 0x01D5B5 07:95A5: 1B        .byte $1B   ; 
- D 0 - I - 0x01D5B6 07:95A6: 0D        .byte $0D   ; 
- D 0 - I - 0x01D5B7 07:95A7: 24        .byte $24   ; 
- D 0 - I - 0x01D5B8 07:95A8: 09        .byte $09   ; 
- D 0 - I - 0x01D5B9 07:95A9: 08        .byte $08   ; 
- D 0 - I - 0x01D5BA 07:95AA: 0E        .byte $0E   ; 
- D 0 - I - 0x01D5BB 07:95AB: 15        .byte $15   ; 
- D 0 - I - 0x01D5BC 07:95AC: 04        .byte $04   ; 
- D 0 - I - 0x01D5BD 07:95AD: 0E        .byte $0E   ; 
- D 0 - I - 0x01D5BE 07:95AE: 14        .byte $14   ; 
- D 0 - I - 0x01D5BF 07:95AF: 18        .byte $18   ; 
- D 0 - I - 0x01D5C0 07:95B0: 04        .byte $04   ; 
- D 0 - I - 0x01D5C1 07:95B1: 04        .byte $04   ; 
- D 0 - I - 0x01D5C2 07:95B2: 12        .byte $12   ; 
- D 0 - I - 0x01D5C3 07:95B3: 12        .byte $12   ; 
- D 0 - I - 0x01D5C4 07:95B4: 1A        .byte $1A   ; 
- D 0 - I - 0x01D5C5 07:95B5: 27        .byte $27   ; 
- D 0 - I - 0x01D5C6 07:95B6: 05        .byte $05   ; 
- D 0 - I - 0x01D5C7 07:95B7: 05        .byte $05   ; 
- D 0 - I - 0x01D5C8 07:95B8: 01        .byte $01   ; 
- D 0 - I - 0x01D5C9 07:95B9: 01        .byte $01   ; 
- D 0 - I - 0x01D5CA 07:95BA: 11        .byte $11   ; 
- D 0 - I - 0x01D5CB 07:95BB: 00        .byte $00   ; 
- D 0 - I - 0x01D5CC 07:95BC: 18        .byte $18   ; 
- D 0 - I - 0x01D5CD 07:95BD: 14        .byte $14   ; 
- D 0 - I - 0x01D5CE 07:95BE: 23        .byte $23   ; 
- D 0 - I - 0x01D5CF 07:95BF: 02        .byte $02   ; 
- D 0 - I - 0x01D5D0 07:95C0: 05        .byte $05   ; 
- D 0 - I - 0x01D5D1 07:95C1: 01        .byte $01   ; 
- D 0 - I - 0x01D5D2 07:95C2: 10        .byte $10   ; 
- D 0 - I - 0x01D5D3 07:95C3: 10        .byte $10   ; 
- D 0 - I - 0x01D5D4 07:95C4: 03        .byte $03   ; 
- D 0 - I - 0x01D5D5 07:95C5: 18        .byte $18   ; 
- D 0 - I - 0x01D5D6 07:95C6: 11        .byte $11   ; 
- D 0 - I - 0x01D5D7 07:95C7: 14        .byte $14   ; 
- D 0 - I - 0x01D5D8 07:95C8: 03        .byte $03   ; 
- D 0 - I - 0x01D5D9 07:95C9: 02        .byte $02   ; 
- D 0 - I - 0x01D5DA 07:95CA: 19        .byte $19   ; 
- D 0 - I - 0x01D5DB 07:95CB: 02        .byte $02   ; 
- D 0 - I - 0x01D5DC 07:95CC: 03        .byte $03   ; 
- D 0 - I - 0x01D5DD 07:95CD: 2F        .byte $2F   ; 
- D 0 - I - 0x01D5DE 07:95CE: 1A        .byte $1A   ; 
- D 0 - I - 0x01D5DF 07:95CF: 19        .byte $19   ; 
- D 0 - I - 0x01D5E0 07:95D0: 03        .byte $03   ; 
- D 0 - I - 0x01D5E1 07:95D1: 00        .byte $00   ; 
- D 0 - I - 0x01D5E2 07:95D2: 00        .byte $00   ; 
- D 0 - I - 0x01D5E3 07:95D3: 08        .byte $08   ; 
- D 0 - I - 0x01D5E4 07:95D4: 0D        .byte $0D   ; 
- D 0 - I - 0x01D5E5 07:95D5: 2D        .byte $2D   ; 
- D 0 - I - 0x01D5E6 07:95D6: 11        .byte $11   ; 
- D 0 - I - 0x01D5E7 07:95D7: 09        .byte $09   ; 
- D 0 - I - 0x01D5E8 07:95D8: 07        .byte $07   ; 
- D 0 - I - 0x01D5E9 07:95D9: 08        .byte $08   ; 
- D 0 - I - 0x01D5EA 07:95DA: 04        .byte $04   ; 
- D 0 - I - 0x01D5EB 07:95DB: 0E        .byte $0E   ; 
- D 0 - I - 0x01D5EC 07:95DC: 1A        .byte $1A   ; 
- D 0 - I - 0x01D5ED 07:95DD: 1A        .byte $1A   ; 
- D 0 - I - 0x01D5EE 07:95DE: 15        .byte $15   ; 
- D 0 - I - 0x01D5EF 07:95DF: 04        .byte $04   ; 
- D 0 - I - 0x01D5F0 07:95E0: 04        .byte $04   ; 
- D 0 - I - 0x01D5F1 07:95E1: 04        .byte $04   ; 



_off047_95E2_07_00_01:
- D 0 - I - 0x01D5F2 07:95E2: 03        .byte $03   ; 
- D 0 - I - 0x01D5F3 07:95E3: 00        .byte $00   ; 
- D 0 - I - 0x01D5F4 07:95E4: 00        .byte $00   ; 
- D 0 - I - 0x01D5F5 07:95E5: 00        .byte $00   ; 
- D 0 - I - 0x01D5F6 07:95E6: 00        .byte $00   ; 
- D 0 - I - 0x01D5F7 07:95E7: 00        .byte $00   ; 
- D 0 - I - 0x01D5F8 07:95E8: 00        .byte $00   ; 
- D 0 - I - 0x01D5F9 07:95E9: 00        .byte $00   ; 
- D 0 - I - 0x01D5FA 07:95EA: 00        .byte $00   ; 
- D 0 - I - 0x01D5FB 07:95EB: 10        .byte $10   ; 
- D 0 - I - 0x01D5FC 07:95EC: 10        .byte $10   ; 
- D 0 - I - 0x01D5FD 07:95ED: 10        .byte $10   ; 
- D 0 - I - 0x01D5FE 07:95EE: 10        .byte $10   ; 
- D 0 - I - 0x01D5FF 07:95EF: 3C        .byte $3C   ; 
- D 0 - I - 0x01D600 07:95F0: 3C        .byte $3C   ; 
- D 0 - I - 0x01D601 07:95F1: 10        .byte $10   ; 
- D 0 - I - 0x01D602 07:95F2: 10        .byte $10   ; 
- D 0 - I - 0x01D603 07:95F3: 39        .byte $39   ; 
- D 0 - I - 0x01D604 07:95F4: 1A        .byte $1A   ; 
- D 0 - I - 0x01D605 07:95F5: 18        .byte $18   ; 
- D 0 - I - 0x01D606 07:95F6: 19        .byte $19   ; 
- D 0 - I - 0x01D607 07:95F7: 2F        .byte $2F   ; 
- D 0 - I - 0x01D608 07:95F8: 2B        .byte $2B   ; 
- D 0 - I - 0x01D609 07:95F9: 15        .byte $15   ; 
- D 0 - I - 0x01D60A 07:95FA: 1B        .byte $1B   ; 
- D 0 - I - 0x01D60B 07:95FB: 3D        .byte $3D   ; 
- D 0 - I - 0x01D60C 07:95FC: 1A        .byte $1A   ; 
- D 0 - I - 0x01D60D 07:95FD: 2E        .byte $2E   ; 
- D 0 - I - 0x01D60E 07:95FE: 2E        .byte $2E   ; 
- D 0 - I - 0x01D60F 07:95FF: 15        .byte $15   ; 
- D 0 - I - 0x01D610 07:9600: 14        .byte $14   ; 
- D 0 - I - 0x01D611 07:9601: 18        .byte $18   ; 
- D 0 - I - 0x01D612 07:9602: 1A        .byte $1A   ; 
- D 0 - I - 0x01D613 07:9603: 11        .byte $11   ; 
- D 0 - I - 0x01D614 07:9604: 11        .byte $11   ; 
- D 0 - I - 0x01D615 07:9605: 11        .byte $11   ; 
- D 0 - I - 0x01D616 07:9606: 38        .byte $38   ; 
- D 0 - I - 0x01D617 07:9607: 11        .byte $11   ; 
- D 0 - I - 0x01D618 07:9608: 11        .byte $11   ; 
- D 0 - I - 0x01D619 07:9609: 38        .byte $38   ; 
- D 0 - I - 0x01D61A 07:960A: 11        .byte $11   ; 
- D 0 - I - 0x01D61B 07:960B: 00        .byte $00   ; 
- D 0 - I - 0x01D61C 07:960C: 00        .byte $00   ; 
- D 0 - I - 0x01D61D 07:960D: 00        .byte $00   ; 
- D 0 - I - 0x01D61E 07:960E: 00        .byte $00   ; 
- D 0 - I - 0x01D61F 07:960F: 00        .byte $00   ; 
- D 0 - I - 0x01D620 07:9610: 00        .byte $00   ; 
- D 0 - I - 0x01D621 07:9611: 00        .byte $00   ; 
- D 0 - I - 0x01D622 07:9612: 00        .byte $00   ; 
- D 0 - I - 0x01D623 07:9613: 00        .byte $00   ; 
- D 0 - I - 0x01D624 07:9614: 15        .byte $15   ; 
- D 0 - I - 0x01D625 07:9615: 12        .byte $12   ; 
- D 0 - I - 0x01D626 07:9616: 1B        .byte $1B   ; 
- D 0 - I - 0x01D627 07:9617: 1A        .byte $1A   ; 
- D 0 - I - 0x01D628 07:9618: 15        .byte $15   ; 
- D 0 - I - 0x01D629 07:9619: 12        .byte $12   ; 
- D 0 - I - 0x01D62A 07:961A: 12        .byte $12   ; 
- D 0 - I - 0x01D62B 07:961B: 1A        .byte $1A   ; 
- D 0 - I - 0x01D62C 07:961C: 14        .byte $14   ; 
- D 0 - I - 0x01D62D 07:961D: 00        .byte $00   ; 
- D 0 - I - 0x01D62E 07:961E: 18        .byte $18   ; 
- D 0 - I - 0x01D62F 07:961F: 1B        .byte $1B   ; 
- D 0 - I - 0x01D630 07:9620: 19        .byte $19   ; 
- D 0 - I - 0x01D631 07:9621: 00        .byte $00   ; 
- D 0 - I - 0x01D632 07:9622: 18        .byte $18   ; 
- D 0 - I - 0x01D633 07:9623: 19        .byte $19   ; 
- D 0 - I - 0x01D634 07:9624: 18        .byte $18   ; 
- D 0 - I - 0x01D635 07:9625: 14        .byte $14   ; 
- D 0 - I - 0x01D636 07:9626: 00        .byte $00   ; 
- D 0 - I - 0x01D637 07:9627: 19        .byte $19   ; 
- D 0 - I - 0x01D638 07:9628: 2F        .byte $2F   ; 
- D 0 - I - 0x01D639 07:9629: 2E        .byte $2E   ; 
- D 0 - I - 0x01D63A 07:962A: 2B        .byte $2B   ; 
- D 0 - I - 0x01D63B 07:962B: 2F        .byte $2F   ; 
- D 0 - I - 0x01D63C 07:962C: 15        .byte $15   ; 
- D 0 - I - 0x01D63D 07:962D: 1B        .byte $1B   ; 
- D 0 - I - 0x01D63E 07:962E: 10        .byte $10   ; 
- D 0 - I - 0x01D63F 07:962F: 10        .byte $10   ; 
- D 0 - I - 0x01D640 07:9630: 12        .byte $12   ; 
- D 0 - I - 0x01D641 07:9631: 12        .byte $12   ; 
- D 0 - I - 0x01D642 07:9632: 12        .byte $12   ; 
- D 0 - I - 0x01D643 07:9633: 11        .byte $11   ; 
- D 0 - I - 0x01D644 07:9634: 12        .byte $12   ; 
- D 0 - I - 0x01D645 07:9635: 11        .byte $11   ; 
- D 0 - I - 0x01D646 07:9636: 12        .byte $12   ; 
- D 0 - I - 0x01D647 07:9637: 12        .byte $12   ; 
- D 0 - I - 0x01D648 07:9638: 12        .byte $12   ; 
- D 0 - I - 0x01D649 07:9639: 00        .byte $00   ; 
- D 0 - I - 0x01D64A 07:963A: 43        .byte $43   ; 
- D 0 - I - 0x01D64B 07:963B: 00        .byte $00   ; 
- D 0 - I - 0x01D64C 07:963C: 12        .byte $12   ; 
- D 0 - I - 0x01D64D 07:963D: 19        .byte $19   ; 
- D 0 - I - 0x01D64E 07:963E: 12        .byte $12   ; 
- D 0 - I - 0x01D64F 07:963F: 12        .byte $12   ; 
- D 0 - I - 0x01D650 07:9640: 12        .byte $12   ; 
- D 0 - I - 0x01D651 07:9641: 10        .byte $10   ; 
- D 0 - I - 0x01D652 07:9642: 12        .byte $12   ; 
- D 0 - I - 0x01D653 07:9643: 12        .byte $12   ; 
- D 0 - I - 0x01D654 07:9644: 12        .byte $12   ; 
- D 0 - I - 0x01D655 07:9645: 12        .byte $12   ; 
- D 0 - I - 0x01D656 07:9646: 12        .byte $12   ; 
- D 0 - I - 0x01D657 07:9647: 12        .byte $12   ; 
- D 0 - I - 0x01D658 07:9648: 12        .byte $12   ; 
- D 0 - I - 0x01D659 07:9649: 12        .byte $12   ; 
- D 0 - I - 0x01D65A 07:964A: 12        .byte $12   ; 
- D 0 - I - 0x01D65B 07:964B: 14        .byte $14   ; 
- D 0 - I - 0x01D65C 07:964C: 00        .byte $00   ; 
- D 0 - I - 0x01D65D 07:964D: 18        .byte $18   ; 
- D 0 - I - 0x01D65E 07:964E: 1A        .byte $1A   ; 
- D 0 - I - 0x01D65F 07:964F: 00        .byte $00   ; 
- D 0 - I - 0x01D660 07:9650: 15        .byte $15   ; 
- D 0 - I - 0x01D661 07:9651: 19        .byte $19   ; 
- D 0 - I - 0x01D662 07:9652: 18        .byte $18   ; 
- D 0 - I - 0x01D663 07:9653: 1A        .byte $1A   ; 
- D 0 - I - 0x01D664 07:9654: 14        .byte $14   ; 
- D 0 - I - 0x01D665 07:9655: 2B        .byte $2B   ; 
- D 0 - I - 0x01D666 07:9656: 18        .byte $18   ; 
- D 0 - I - 0x01D667 07:9657: 1B        .byte $1B   ; 
- D 0 - I - 0x01D668 07:9658: 1B        .byte $1B   ; 
- D 0 - I - 0x01D669 07:9659: 2F        .byte $2F   ; 
- D 0 - I - 0x01D66A 07:965A: 2B        .byte $2B   ; 
- D 0 - I - 0x01D66B 07:965B: 12        .byte $12   ; 
- D 0 - I - 0x01D66C 07:965C: 12        .byte $12   ; 
- D 0 - I - 0x01D66D 07:965D: 13        .byte $13   ; 
- D 0 - I - 0x01D66E 07:965E: 13        .byte $13   ; 
- D 0 - I - 0x01D66F 07:965F: 18        .byte $18   ; 
- D 0 - I - 0x01D670 07:9660: 13        .byte $13   ; 
- D 0 - I - 0x01D671 07:9661: 13        .byte $13   ; 
- D 0 - I - 0x01D672 07:9662: 13        .byte $13   ; 
- D 0 - I - 0x01D673 07:9663: 15        .byte $15   ; 
- D 0 - I - 0x01D674 07:9664: 1A        .byte $1A   ; 
- D 0 - I - 0x01D675 07:9665: 14        .byte $14   ; 
- D 0 - I - 0x01D676 07:9666: 2E        .byte $2E   ; 
- D 0 - I - 0x01D677 07:9667: 2E        .byte $2E   ; 
- D 0 - I - 0x01D678 07:9668: 1A        .byte $1A   ; 
- D 0 - I - 0x01D679 07:9669: 1B        .byte $1B   ; 
- D 0 - I - 0x01D67A 07:966A: 00        .byte $00   ; 
- D 0 - I - 0x01D67B 07:966B: 12        .byte $12   ; 
- D 0 - I - 0x01D67C 07:966C: 11        .byte $11   ; 
- D 0 - I - 0x01D67D 07:966D: 11        .byte $11   ; 
- D 0 - I - 0x01D67E 07:966E: 11        .byte $11   ; 
- D 0 - I - 0x01D67F 07:966F: 11        .byte $11   ; 
- D 0 - I - 0x01D680 07:9670: 20        .byte $20   ; 
- D 0 - I - 0x01D681 07:9671: 11        .byte $11   ; 
- D 0 - I - 0x01D682 07:9672: 11        .byte $11   ; 
- D 0 - I - 0x01D683 07:9673: 12        .byte $12   ; 
- D 0 - I - 0x01D684 07:9674: 12        .byte $12   ; 
- D 0 - I - 0x01D685 07:9675: 1A        .byte $1A   ; 
- D 0 - I - 0x01D686 07:9676: 14        .byte $14   ; 
- D 0 - I - 0x01D687 07:9677: 00        .byte $00   ; 
- D 0 - I - 0x01D688 07:9678: 00        .byte $00   ; 
- D 0 - I - 0x01D689 07:9679: 00        .byte $00   ; 
- D 0 - I - 0x01D68A 07:967A: 12        .byte $12   ; 
- D 0 - I - 0x01D68B 07:967B: 15        .byte $15   ; 
- D 0 - I - 0x01D68C 07:967C: 18        .byte $18   ; 
- D 0 - I - 0x01D68D 07:967D: 1B        .byte $1B   ; 
- D 0 - I - 0x01D68E 07:967E: 1B        .byte $1B   ; 
- D 0 - I - 0x01D68F 07:967F: 2E        .byte $2E   ; 
- D 0 - I - 0x01D690 07:9680: 2E        .byte $2E   ; 
- D 0 - I - 0x01D691 07:9681: 00        .byte $00   ; 
- D 0 - I - 0x01D692 07:9682: 12        .byte $12   ; 
- D 0 - I - 0x01D693 07:9683: 2E        .byte $2E   ; 
- D 0 - I - 0x01D694 07:9684: 00        .byte $00   ; 
- D 0 - I - 0x01D695 07:9685: 1B        .byte $1B   ; 
- D 0 - I - 0x01D696 07:9686: 11        .byte $11   ; 
- D 0 - I - 0x01D697 07:9687: 1B        .byte $1B   ; 
- D 0 - I - 0x01D698 07:9688: 19        .byte $19   ; 
- D 0 - I - 0x01D699 07:9689: 16        .byte $16   ; 
- D 0 - I - 0x01D69A 07:968A: 12        .byte $12   ; 
- D 0 - I - 0x01D69B 07:968B: 13        .byte $13   ; 
- D 0 - I - 0x01D69C 07:968C: 13        .byte $13   ; 
- D 0 - I - 0x01D69D 07:968D: 18        .byte $18   ; 
- D 0 - I - 0x01D69E 07:968E: 1A        .byte $1A   ; 
- D 0 - I - 0x01D69F 07:968F: 1A        .byte $1A   ; 
- D 0 - I - 0x01D6A0 07:9690: 00        .byte $00   ; 
- D 0 - I - 0x01D6A1 07:9691: 18        .byte $18   ; 
- D 0 - I - 0x01D6A2 07:9692: 12        .byte $12   ; 
- D 0 - I - 0x01D6A3 07:9693: 15        .byte $15   ; 
- D 0 - I - 0x01D6A4 07:9694: 14        .byte $14   ; 
- D 0 - I - 0x01D6A5 07:9695: 00        .byte $00   ; 
- D 0 - I - 0x01D6A6 07:9696: 1A        .byte $1A   ; 
- D 0 - I - 0x01D6A7 07:9697: 1A        .byte $1A   ; 
- D 0 - I - 0x01D6A8 07:9698: 2B        .byte $2B   ; 
- D 0 - I - 0x01D6A9 07:9699: 2E        .byte $2E   ; 
- D 0 - I - 0x01D6AA 07:969A: 12        .byte $12   ; 
- D 0 - I - 0x01D6AB 07:969B: 11        .byte $11   ; 
- D 0 - I - 0x01D6AC 07:969C: 11        .byte $11   ; 
- D 0 - I - 0x01D6AD 07:969D: 11        .byte $11   ; 
- D 0 - I - 0x01D6AE 07:969E: 11        .byte $11   ; 
- D 0 - I - 0x01D6AF 07:969F: 11        .byte $11   ; 
- D 0 - I - 0x01D6B0 07:96A0: 11        .byte $11   ; 
- D 0 - I - 0x01D6B1 07:96A1: 11        .byte $11   ; 
- D 0 - I - 0x01D6B2 07:96A2: 12        .byte $12   ; 



_off031_0x01D6B3_05:
- - - - - - 0x01D6B3 07:96A3: 00        .byte $00   ; 
- - - - - - 0x01D6B4 07:96A4: 15        .byte $15   ; 
- - - - - - 0x01D6B5 07:96A5: 12        .byte $12   ; 
- - - - - - 0x01D6B6 07:96A6: 1B        .byte $1B   ; 
- - - - - - 0x01D6B7 07:96A7: 1A        .byte $1A   ; 
- - - - - - 0x01D6B8 07:96A8: 15        .byte $15   ; 
- - - - - - 0x01D6B9 07:96A9: 12        .byte $12   ; 
- - - - - - 0x01D6BA 07:96AA: 12        .byte $12   ; 
- - - - - - 0x01D6BB 07:96AB: 1A        .byte $1A   ; 
- - - - - - 0x01D6BC 07:96AC: 14        .byte $14   ; 
- - - - - - 0x01D6BD 07:96AD: 00        .byte $00   ; 
- - - - - - 0x01D6BE 07:96AE: 18        .byte $18   ; 
- - - - - - 0x01D6BF 07:96AF: 1B        .byte $1B   ; 
- - - - - - 0x01D6C0 07:96B0: 19        .byte $19   ; 
- - - - - - 0x01D6C1 07:96B1: 00        .byte $00   ; 
- - - - - - 0x01D6C2 07:96B2: 18        .byte $18   ; 
- - - - - - 0x01D6C3 07:96B3: 19        .byte $19   ; 
- - - - - - 0x01D6C4 07:96B4: 18        .byte $18   ; 
- - - - - - 0x01D6C5 07:96B5: 14        .byte $14   ; 
- - - - - - 0x01D6C6 07:96B6: 00        .byte $00   ; 
- - - - - - 0x01D6C7 07:96B7: 19        .byte $19   ; 
- - - - - - 0x01D6C8 07:96B8: 2F        .byte $2F   ; 
- - - - - - 0x01D6C9 07:96B9: 2E        .byte $2E   ; 
- - - - - - 0x01D6CA 07:96BA: 2B        .byte $2B   ; 
- - - - - - 0x01D6CB 07:96BB: 2F        .byte $2F   ; 
- - - - - - 0x01D6CC 07:96BC: 15        .byte $15   ; 
- - - - - - 0x01D6CD 07:96BD: 1B        .byte $1B   ; 
- D 0 - I - 0x01D6CE 07:96BE: 1A        .byte $1A   ; 
- D 0 - I - 0x01D6CF 07:96BF: 1A        .byte $1A   ; 
- D 0 - I - 0x01D6D0 07:96C0: 00        .byte $00   ; 
- - - - - - 0x01D6D1 07:96C1: 12        .byte $12   ; 
- - - - - - 0x01D6D2 07:96C2: 12        .byte $12   ; 
- - - - - - 0x01D6D3 07:96C3: 11        .byte $11   ; 
- - - - - - 0x01D6D4 07:96C4: 12        .byte $12   ; 
- - - - - - 0x01D6D5 07:96C5: 11        .byte $11   ; 
- D 0 - I - 0x01D6D6 07:96C6: 18        .byte $18   ; 
- D 0 - I - 0x01D6D7 07:96C7: 1A        .byte $1A   ; 
- D 0 - I - 0x01D6D8 07:96C8: 14        .byte $14   ; 
- - - - - - 0x01D6D9 07:96C9: 00        .byte $00   ; 
- - - - - - 0x01D6DA 07:96CA: 43        .byte $43   ; 
- - - - - - 0x01D6DB 07:96CB: 00        .byte $00   ; 
- - - - - - 0x01D6DC 07:96CC: 12        .byte $12   ; 
- - - - - - 0x01D6DD 07:96CD: 19        .byte $19   ; 
- D 0 - I - 0x01D6DE 07:96CE: 2F        .byte $2F   ; 
- D 0 - I - 0x01D6DF 07:96CF: 1A        .byte $1A   ; 
- - - - - - 0x01D6E0 07:96D0: 1B        .byte $1B   ; 
- - - - - - 0x01D6E1 07:96D1: 10        .byte $10   ; 
- - - - - - 0x01D6E2 07:96D2: 12        .byte $12   ; 



_off047_96D3_07_00_00:
- D 0 - I - 0x01D6E3 07:96D3: 01        .byte $01   ; 
- D 0 - I - 0x01D6E4 07:96D4: 12        .byte $12   ; 
- D 0 - I - 0x01D6E5 07:96D5: 1B        .byte $1B   ; 
- D 0 - I - 0x01D6E6 07:96D6: 1A        .byte $1A   ; 
- D 0 - I - 0x01D6E7 07:96D7: 00        .byte $00   ; 
- D 0 - I - 0x01D6E8 07:96D8: 22        .byte $22   ; 
- D 0 - I - 0x01D6E9 07:96D9: 18        .byte $18   ; 
- D 0 - I - 0x01D6EA 07:96DA: 1A        .byte $1A   ; 
- D 0 - I - 0x01D6EB 07:96DB: 1A        .byte $1A   ; 
- D 0 - I - 0x01D6EC 07:96DC: 12        .byte $12   ; 
- D 0 - I - 0x01D6ED 07:96DD: 1A        .byte $1A   ; 
- D 0 - I - 0x01D6EE 07:96DE: 1A        .byte $1A   ; 
- D 0 - I - 0x01D6EF 07:96DF: 22        .byte $22   ; 
- D 0 - I - 0x01D6F0 07:96E0: 00        .byte $00   ; 
- D 0 - I - 0x01D6F1 07:96E1: 00        .byte $00   ; 
- D 0 - I - 0x01D6F2 07:96E2: 18        .byte $18   ; 
- D 0 - I - 0x01D6F3 07:96E3: 19        .byte $19   ; 
- D 0 - I - 0x01D6F4 07:96E4: 12        .byte $12   ; 
- D 0 - I - 0x01D6F5 07:96E5: 2D        .byte $2D   ; 
- D 0 - I - 0x01D6F6 07:96E6: 24        .byte $24   ; 
- D 0 - I - 0x01D6F7 07:96E7: 10        .byte $10   ; 
- D 0 - I - 0x01D6F8 07:96E8: 00        .byte $00   ; 
- D 0 - I - 0x01D6F9 07:96E9: 0F        .byte $0F   ; 
- D 0 - I - 0x01D6FA 07:96EA: 00        .byte $00   ; 
- D 0 - I - 0x01D6FB 07:96EB: 18        .byte $18   ; 
- D 0 - I - 0x01D6FC 07:96EC: 12        .byte $12   ; 
- D 0 - I - 0x01D6FD 07:96ED: 19        .byte $19   ; 
- D 0 - I - 0x01D6FE 07:96EE: 1A        .byte $1A   ; 
- D 0 - I - 0x01D6FF 07:96EF: 19        .byte $19   ; 
- D 0 - I - 0x01D700 07:96F0: 00        .byte $00   ; 
- D 0 - I - 0x01D701 07:96F1: 15        .byte $15   ; 
- D 0 - I - 0x01D702 07:96F2: 2B        .byte $2B   ; 
- D 0 - I - 0x01D703 07:96F3: 10        .byte $10   ; 
- D 0 - I - 0x01D704 07:96F4: 12        .byte $12   ; 
- D 0 - I - 0x01D705 07:96F5: 14        .byte $14   ; 
- D 0 - I - 0x01D706 07:96F6: 2E        .byte $2E   ; 
- D 0 - I - 0x01D707 07:96F7: 2E        .byte $2E   ; 
- D 0 - I - 0x01D708 07:96F8: 2F        .byte $2F   ; 
- D 0 - I - 0x01D709 07:96F9: 14        .byte $14   ; 
- D 0 - I - 0x01D70A 07:96FA: 00        .byte $00   ; 
- D 0 - I - 0x01D70B 07:96FB: 1A        .byte $1A   ; 
- D 0 - I - 0x01D70C 07:96FC: 12        .byte $12   ; 
- D 0 - I - 0x01D70D 07:96FD: 1B        .byte $1B   ; 
- D 0 - I - 0x01D70E 07:96FE: 1A        .byte $1A   ; 
- D 0 - I - 0x01D70F 07:96FF: 19        .byte $19   ; 
- D 0 - I - 0x01D710 07:9700: 00        .byte $00   ; 
- D 0 - I - 0x01D711 07:9701: 1B        .byte $1B   ; 
- D 0 - I - 0x01D712 07:9702: 15        .byte $15   ; 
- D 0 - I - 0x01D713 07:9703: 1A        .byte $1A   ; 
- D 0 - I - 0x01D714 07:9704: 00        .byte $00   ; 
- D 0 - I - 0x01D715 07:9705: 00        .byte $00   ; 
- D 0 - I - 0x01D716 07:9706: 00        .byte $00   ; 
- D 0 - I - 0x01D717 07:9707: 1A        .byte $1A   ; 
- D 0 - I - 0x01D718 07:9708: 1A        .byte $1A   ; 
- D 0 - I - 0x01D719 07:9709: 1B        .byte $1B   ; 
- D 0 - I - 0x01D71A 07:970A: 00        .byte $00   ; 
- D 0 - I - 0x01D71B 07:970B: 12        .byte $12   ; 
- D 0 - I - 0x01D71C 07:970C: 2E        .byte $2E   ; 
- D 0 - I - 0x01D71D 07:970D: 2F        .byte $2F   ; 
- D 0 - I - 0x01D71E 07:970E: 00        .byte $00   ; 
- D 0 - I - 0x01D71F 07:970F: 18        .byte $18   ; 
- D 0 - I - 0x01D720 07:9710: 1B        .byte $1B   ; 
- D 0 - I - 0x01D721 07:9711: 1A        .byte $1A   ; 
- D 0 - I - 0x01D722 07:9712: 14        .byte $14   ; 
- D 0 - I - 0x01D723 07:9713: 3B        .byte $3B   ; 
- D 0 - I - 0x01D724 07:9714: 1A        .byte $1A   ; 
- D 0 - I - 0x01D725 07:9715: 19        .byte $19   ; 
- D 0 - I - 0x01D726 07:9716: 3C        .byte $3C   ; 
- D 0 - I - 0x01D727 07:9717: 3C        .byte $3C   ; 
- D 0 - I - 0x01D728 07:9718: 10        .byte $10   ; 
- D 0 - I - 0x01D729 07:9719: 10        .byte $10   ; 
- D 0 - I - 0x01D72A 07:971A: 10        .byte $10   ; 
- D 0 - I - 0x01D72B 07:971B: 3F        .byte $3F   ; 
- D 0 - I - 0x01D72C 07:971C: 12        .byte $12   ; 
- D 0 - I - 0x01D72D 07:971D: 12        .byte $12   ; 
- D 0 - I - 0x01D72E 07:971E: 12        .byte $12   ; 
- D 0 - I - 0x01D72F 07:971F: 12        .byte $12   ; 
- D 0 - I - 0x01D730 07:9720: 11        .byte $11   ; 
- D 0 - I - 0x01D731 07:9721: 11        .byte $11   ; 
- D 0 - I - 0x01D732 07:9722: 38        .byte $38   ; 
- D 0 - I - 0x01D733 07:9723: 3A        .byte $3A   ; 
- D 0 - I - 0x01D734 07:9724: 12        .byte $12   ; 
- D 0 - I - 0x01D735 07:9725: 12        .byte $12   ; 
- D 0 - I - 0x01D736 07:9726: 12        .byte $12   ; 
- D 0 - I - 0x01D737 07:9727: 12        .byte $12   ; 
- D 0 - I - 0x01D738 07:9728: 18        .byte $18   ; 
- D 0 - I - 0x01D739 07:9729: 2E        .byte $2E   ; 
- D 0 - I - 0x01D73A 07:972A: 14        .byte $14   ; 
- D 0 - I - 0x01D73B 07:972B: 3E        .byte $3E   ; 
- D 0 - I - 0x01D73C 07:972C: 12        .byte $12   ; 
- D 0 - I - 0x01D73D 07:972D: 12        .byte $12   ; 
- D 0 - I - 0x01D73E 07:972E: 12        .byte $12   ; 
- D 0 - I - 0x01D73F 07:972F: 12        .byte $12   ; 
- D 0 - I - 0x01D740 07:9730: 16        .byte $16   ; 
- D 0 - I - 0x01D741 07:9731: 11        .byte $11   ; 
- D 0 - I - 0x01D742 07:9732: 16        .byte $16   ; 
- D 0 - I - 0x01D743 07:9733: 12        .byte $12   ; 



_off047_9734_07_01_00:
- D 0 - I - 0x01D744 07:9734: 01        .byte $01   ; 
- D 0 - I - 0x01D745 07:9735: 12        .byte $12   ; 
- D 0 - I - 0x01D746 07:9736: 12        .byte $12   ; 
- D 0 - I - 0x01D747 07:9737: 12        .byte $12   ; 
- D 0 - I - 0x01D748 07:9738: 12        .byte $12   ; 
- D 0 - I - 0x01D749 07:9739: 12        .byte $12   ; 
- D 0 - I - 0x01D74A 07:973A: 12        .byte $12   ; 
- D 0 - I - 0x01D74B 07:973B: 12        .byte $12   ; 
- D 0 - I - 0x01D74C 07:973C: 12        .byte $12   ; 
- D 0 - I - 0x01D74D 07:973D: 18        .byte $18   ; 
- D 0 - I - 0x01D74E 07:973E: 1A        .byte $1A   ; 
- D 0 - I - 0x01D74F 07:973F: 1A        .byte $1A   ; 
- D 0 - I - 0x01D750 07:9740: 13        .byte $13   ; 
- D 0 - I - 0x01D751 07:9741: 13        .byte $13   ; 
- D 0 - I - 0x01D752 07:9742: 13        .byte $13   ; 
- D 0 - I - 0x01D753 07:9743: 13        .byte $13   ; 
- D 0 - I - 0x01D754 07:9744: 15        .byte $15   ; 
- D 0 - I - 0x01D755 07:9745: 3C        .byte $3C   ; 
- D 0 - I - 0x01D756 07:9746: 10        .byte $10   ; 
- D 0 - I - 0x01D757 07:9747: 1A        .byte $1A   ; 
- D 0 - I - 0x01D758 07:9748: 14        .byte $14   ; 
- D 0 - I - 0x01D759 07:9749: 2E        .byte $2E   ; 
- D 0 - I - 0x01D75A 07:974A: 2E        .byte $2E   ; 
- D 0 - I - 0x01D75B 07:974B: 15        .byte $15   ; 
- D 0 - I - 0x01D75C 07:974C: 1A        .byte $1A   ; 
- D 0 - I - 0x01D75D 07:974D: 38        .byte $38   ; 
- D 0 - I - 0x01D75E 07:974E: 11        .byte $11   ; 
- D 0 - I - 0x01D75F 07:974F: 11        .byte $11   ; 
- D 0 - I - 0x01D760 07:9750: 11        .byte $11   ; 
- D 0 - I - 0x01D761 07:9751: 11        .byte $11   ; 
- D 0 - I - 0x01D762 07:9752: 11        .byte $11   ; 
- D 0 - I - 0x01D763 07:9753: 11        .byte $11   ; 
- D 0 - I - 0x01D764 07:9754: 11        .byte $11   ; 
- D 0 - I - 0x01D765 07:9755: 00        .byte $00   ; 
- D 0 - I - 0x01D766 07:9756: 1A        .byte $1A   ; 
- D 0 - I - 0x01D767 07:9757: 1B        .byte $1B   ; 
- D 0 - I - 0x01D768 07:9758: 19        .byte $19   ; 
- D 0 - I - 0x01D769 07:9759: 00        .byte $00   ; 
- D 0 - I - 0x01D76A 07:975A: 18        .byte $18   ; 
- D 0 - I - 0x01D76B 07:975B: 1A        .byte $1A   ; 
- D 0 - I - 0x01D76C 07:975C: 1B        .byte $1B   ; 
- D 0 - I - 0x01D76D 07:975D: 11        .byte $11   ; 
- D 0 - I - 0x01D76E 07:975E: 11        .byte $11   ; 
- D 0 - I - 0x01D76F 07:975F: 1A        .byte $1A   ; 
- D 0 - I - 0x01D770 07:9760: 11        .byte $11   ; 
- D 0 - I - 0x01D771 07:9761: 2F        .byte $2F   ; 
- D 0 - I - 0x01D772 07:9762: 11        .byte $11   ; 
- D 0 - I - 0x01D773 07:9763: 11        .byte $11   ; 
- D 0 - I - 0x01D774 07:9764: 11        .byte $11   ; 
- D 0 - I - 0x01D775 07:9765: 10        .byte $10   ; 
- D 0 - I - 0x01D776 07:9766: 1A        .byte $1A   ; 
- D 0 - I - 0x01D777 07:9767: 1A        .byte $1A   ; 
- D 0 - I - 0x01D778 07:9768: 00        .byte $00   ; 
- D 0 - I - 0x01D779 07:9769: 00        .byte $00   ; 
- D 0 - I - 0x01D77A 07:976A: 1B        .byte $1B   ; 
- D 0 - I - 0x01D77B 07:976B: 1A        .byte $1A   ; 
- D 0 - I - 0x01D77C 07:976C: 12        .byte $12   ; 
- D 0 - I - 0x01D77D 07:976D: 13        .byte $13   ; 
- D 0 - I - 0x01D77E 07:976E: 13        .byte $13   ; 
- D 0 - I - 0x01D77F 07:976F: 13        .byte $13   ; 
- D 0 - I - 0x01D780 07:9770: 13        .byte $13   ; 
- D 0 - I - 0x01D781 07:9771: 13        .byte $13   ; 
- D 0 - I - 0x01D782 07:9772: 13        .byte $13   ; 
- D 0 - I - 0x01D783 07:9773: 1A        .byte $1A   ; 
- D 0 - I - 0x01D784 07:9774: 3A        .byte $3A   ; 
- D 0 - I - 0x01D785 07:9775: 19        .byte $19   ; 
- D 0 - I - 0x01D786 07:9776: 2B        .byte $2B   ; 
- D 0 - I - 0x01D787 07:9777: 2F        .byte $2F   ; 
- D 0 - I - 0x01D788 07:9778: 00        .byte $00   ; 
- D 0 - I - 0x01D789 07:9779: 18        .byte $18   ; 
- D 0 - I - 0x01D78A 07:977A: 1B        .byte $1B   ; 
- D 0 - I - 0x01D78B 07:977B: 1A        .byte $1A   ; 
- D 0 - I - 0x01D78C 07:977C: 3E        .byte $3E   ; 
- D 0 - I - 0x01D78D 07:977D: 11        .byte $11   ; 
- D 0 - I - 0x01D78E 07:977E: 11        .byte $11   ; 
- D 0 - I - 0x01D78F 07:977F: 38        .byte $38   ; 
- D 0 - I - 0x01D790 07:9780: 11        .byte $11   ; 
- D 0 - I - 0x01D791 07:9781: 11        .byte $11   ; 
- D 0 - I - 0x01D792 07:9782: 11        .byte $11   ; 
- D 0 - I - 0x01D793 07:9783: 11        .byte $11   ; 
- D 0 - I - 0x01D794 07:9784: 12        .byte $12   ; 
- D 0 - I - 0x01D795 07:9785: 14        .byte $14   ; 
- D 0 - I - 0x01D796 07:9786: 2E        .byte $2E   ; 
- D 0 - I - 0x01D797 07:9787: 2B        .byte $2B   ; 
- D 0 - I - 0x01D798 07:9788: 2E        .byte $2E   ; 
- D 0 - I - 0x01D799 07:9789: 2F        .byte $2F   ; 
- D 0 - I - 0x01D79A 07:978A: 18        .byte $18   ; 
- D 0 - I - 0x01D79B 07:978B: 1B        .byte $1B   ; 
- D 0 - I - 0x01D79C 07:978C: 3B        .byte $3B   ; 
- D 0 - I - 0x01D79D 07:978D: 11        .byte $11   ; 
- D 0 - I - 0x01D79E 07:978E: 11        .byte $11   ; 
- D 0 - I - 0x01D79F 07:978F: 00        .byte $00   ; 
- D 0 - I - 0x01D7A0 07:9790: 11        .byte $11   ; 
- D 0 - I - 0x01D7A1 07:9791: 00        .byte $00   ; 
- D 0 - I - 0x01D7A2 07:9792: 10        .byte $10   ; 
- D 0 - I - 0x01D7A3 07:9793: 2D        .byte $2D   ; 
- D 0 - I - 0x01D7A4 07:9794: 3F        .byte $3F   ; 



_off031_0x01D7A5_04:
- - - - - - 0x01D7A5 07:9795: 12        .byte $12   ; 
- - - - - - 0x01D7A6 07:9796: 00        .byte $00   ; 
- - - - - - 0x01D7A7 07:9797: 00        .byte $00   ; 
- - - - - - 0x01D7A8 07:9798: 1A        .byte $1A   ; 
- - - - - - 0x01D7A9 07:9799: 1A        .byte $1A   ; 
- - - - - - 0x01D7AA 07:979A: 18        .byte $18   ; 
- - - - - - 0x01D7AB 07:979B: 1A        .byte $1A   ; 
- - - - - - 0x01D7AC 07:979C: 12        .byte $12   ; 
- - - - - - 0x01D7AD 07:979D: 19        .byte $19   ; 
- - - - - - 0x01D7AE 07:979E: 2E        .byte $2E   ; 
- - - - - - 0x01D7AF 07:979F: 15        .byte $15   ; 
- - - - - - 0x01D7B0 07:97A0: 1A        .byte $1A   ; 
- D 0 - I - 0x01D7B1 07:97A1: 19        .byte $19   ; 
- D 0 - I - 0x01D7B2 07:97A2: 00        .byte $00   ; 
- - - - - - 0x01D7B3 07:97A3: 1A        .byte $1A   ; 
- - - - - - 0x01D7B4 07:97A4: 3B        .byte $3B   ; 
- - - - - - 0x01D7B5 07:97A5: 00        .byte $00   ; 
- - - - - - 0x01D7B6 07:97A6: 18        .byte $18   ; 
- D 0 - I - 0x01D7B7 07:97A7: 1A        .byte $1A   ; 
- D 0 - I - 0x01D7B8 07:97A8: 18        .byte $18   ; 
- D 0 - I - 0x01D7B9 07:97A9: 14        .byte $14   ; 
- D 0 - I - 0x01D7BA 07:97AA: 2E        .byte $2E   ; 
- D 0 - I - 0x01D7BB 07:97AB: 15        .byte $15   ; 
- - - - - - 0x01D7BC 07:97AC: 3F        .byte $3F   ; 
- - - - - - 0x01D7BD 07:97AD: 12        .byte $12   ; 
- - - - - - 0x01D7BE 07:97AE: 1A        .byte $1A   ; 
- D 0 - I - 0x01D7BF 07:97AF: 19        .byte $19   ; 
- D 0 - I - 0x01D7C0 07:97B0: 09        .byte $09   ; 
- D 0 - I - 0x01D7C1 07:97B1: 18        .byte $18   ; 
- D 0 - I - 0x01D7C2 07:97B2: 19        .byte $19   ; 
- D 0 - I - 0x01D7C3 07:97B3: 1A        .byte $1A   ; 
- - - - - - 0x01D7C4 07:97B4: 12        .byte $12   ; 
- - - - - - 0x01D7C5 07:97B5: 1A        .byte $1A   ; 
- - - - - - 0x01D7C6 07:97B6: 19        .byte $19   ; 
- D 0 - I - 0x01D7C7 07:97B7: 08        .byte $08   ; 
- D 0 - I - 0x01D7C8 07:97B8: 07        .byte $07   ; 
- D 0 - I - 0x01D7C9 07:97B9: 08        .byte $08   ; 
- D 0 - I - 0x01D7CA 07:97BA: 09        .byte $09   ; 
- D 0 - I - 0x01D7CB 07:97BB: 19        .byte $19   ; 
- - - - - - 0x01D7CC 07:97BC: 3B        .byte $3B   ; 
- - - - - - 0x01D7CD 07:97BD: 2D        .byte $2D   ; 
- - - - - - 0x01D7CE 07:97BE: 1A        .byte $1A   ; 
- D 0 - I - 0x01D7CF 07:97BF: 04        .byte $04   ; 
- - - - - - 0x01D7D0 07:97C0: 04        .byte $04   ; 
- - - - - - 0x01D7D1 07:97C1: 04        .byte $04   ; 
- - - - - - 0x01D7D2 07:97C2: 04        .byte $04   ; 
- - - - - - 0x01D7D3 07:97C3: 14        .byte $14   ; 
- - - - - - 0x01D7D4 07:97C4: 3F        .byte $3F   ; 



_off031_0x01D7D5_03:
- - - - - - 0x01D7D5 07:97C5: 00        .byte $00   ; 
- - - - - - 0x01D7D6 07:97C6: 00        .byte $00   ; 
- - - - - - 0x01D7D7 07:97C7: 00        .byte $00   ; 
- - - - - - 0x01D7D8 07:97C8: 1A        .byte $1A   ; 
- - - - - - 0x01D7D9 07:97C9: 1A        .byte $1A   ; 
- - - - - - 0x01D7DA 07:97CA: 1B        .byte $1B   ; 
- - - - - - 0x01D7DB 07:97CB: 00        .byte $00   ; 
- - - - - - 0x01D7DC 07:97CC: 12        .byte $12   ; 
- - - - - - 0x01D7DD 07:97CD: 2E        .byte $2E   ; 
- - - - - - 0x01D7DE 07:97CE: 2F        .byte $2F   ; 
- - - - - - 0x01D7DF 07:97CF: 00        .byte $00   ; 
- - - - - - 0x01D7E0 07:97D0: 18        .byte $18   ; 
- - - - - - 0x01D7E1 07:97D1: 1B        .byte $1B   ; 
- - - - - - 0x01D7E2 07:97D2: 1A        .byte $1A   ; 
- - - - - - 0x01D7E3 07:97D3: 14        .byte $14   ; 
- - - - - - 0x01D7E4 07:97D4: 3B        .byte $3B   ; 
- - - - - - 0x01D7E5 07:97D5: 1A        .byte $1A   ; 
- - - - - - 0x01D7E6 07:97D6: 19        .byte $19   ; 
- D 0 - I - 0x01D7E7 07:97D7: 00        .byte $00   ; 
- D 0 - I - 0x01D7E8 07:97D8: 00        .byte $00   ; 
- - - - - - 0x01D7E9 07:97D9: 10        .byte $10   ; 
- - - - - - 0x01D7EA 07:97DA: 10        .byte $10   ; 
- - - - - - 0x01D7EB 07:97DB: 10        .byte $10   ; 
- - - - - - 0x01D7EC 07:97DC: 3F        .byte $3F   ; 
- D 0 - I - 0x01D7ED 07:97DD: 1A        .byte $1A   ; 
- D 0 - I - 0x01D7EE 07:97DE: 2E        .byte $2E   ; 
- D 0 - I - 0x01D7EF 07:97DF: 2E        .byte $2E   ; 
- D 0 - I - 0x01D7F0 07:97E0: 2F        .byte $2F   ; 
- - - - - - 0x01D7F1 07:97E1: 11        .byte $11   ; 
- - - - - - 0x01D7F2 07:97E2: 11        .byte $11   ; 
- - - - - - 0x01D7F3 07:97E3: 38        .byte $38   ; 
- - - - - - 0x01D7F4 07:97E4: 3A        .byte $3A   ; 
- D 0 - I - 0x01D7F5 07:97E5: 1A        .byte $1A   ; 
- D 0 - I - 0x01D7F6 07:97E6: 1B        .byte $1B   ; 
- D 0 - I - 0x01D7F7 07:97E7: 19        .byte $19   ; 
- D 0 - I - 0x01D7F8 07:97E8: 2B        .byte $2B   ; 
- - - - - - 0x01D7F9 07:97E9: 18        .byte $18   ; 
- - - - - - 0x01D7FA 07:97EA: 2E        .byte $2E   ; 
- - - - - - 0x01D7FB 07:97EB: 14        .byte $14   ; 
- - - - - - 0x01D7FC 07:97EC: 3E        .byte $3E   ; 
- D 0 - I - 0x01D7FD 07:97ED: 1A        .byte $1A   ; 
- D 0 - I - 0x01D7FE 07:97EE: 1A        .byte $1A   ; 
- D 0 - I - 0x01D7FF 07:97EF: 14        .byte $14   ; 
- - - - - - 0x01D800 07:97F0: 00        .byte $00   ; 
- - - - - - 0x01D801 07:97F1: 16        .byte $16   ; 
- - - - - - 0x01D802 07:97F2: 11        .byte $11   ; 
- - - - - - 0x01D803 07:97F3: 16        .byte $16   ; 
- - - - - - 0x01D804 07:97F4: 12        .byte $12   ; 



_off045_0x01D805_07:
; 00 
- D 0 - I - 0x01D805 07:97F5: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01D809 07:97F9: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01D80D 07:97FD: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01D811 07:9801: 00        .byte $00, $00, $00, $00   ; 
; 01 
- D 0 - I - 0x01D815 07:9805: 44        .byte $44, $45, $46, $45   ; 
- D 0 - I - 0x01D819 07:9809: 46        .byte $46, $45, $56, $44   ; 
- D 0 - I - 0x01D81D 07:980D: 64        .byte $64, $65, $63, $46   ; 
- D 0 - I - 0x01D821 07:9811: 46        .byte $46, $4E, $65, $56   ; 
; 02 
- D 0 - I - 0x01D825 07:9815: 42        .byte $42, $43, $48, $4E   ; 
- D 0 - I - 0x01D829 07:9819: 52        .byte $52, $50, $5F, $5E   ; 
- D 0 - I - 0x01D82D 07:981D: 00        .byte $00, $5F, $5E, $00   ; 
- D 0 - I - 0x01D831 07:9821: 00        .byte $00, $5F, $00, $00   ; 
; 03 
- D 0 - I - 0x01D835 07:9825: 00        .byte $00, $00, $62, $63   ; 
- D 0 - I - 0x01D839 07:9829: 00        .byte $00, $00, $72, $73   ; 
- D 0 - I - 0x01D83D 07:982D: 00        .byte $00, $00, $62, $63   ; 
- D 0 - I - 0x01D841 07:9831: 00        .byte $00, $00, $72, $73   ; 
; 04 
- D 0 - I - 0x01D845 07:9835: 71        .byte $71, $7B, $78, $6E   ; 
- D 0 - I - 0x01D849 07:9839: 6B        .byte $6B, $6B, $6B, $6B   ; 
- D 0 - I - 0x01D84D 07:983D: 3D        .byte $3D, $6C, $3D, $6C   ; 
- D 0 - I - 0x01D851 07:9841: 6E        .byte $6E, $6E, $6E, $6E   ; 
; 05 
- D 0 - I - 0x01D855 07:9845: 46        .byte $46, $45, $6E, $41   ; 
- D 0 - I - 0x01D859 07:9849: 56        .byte $56, $44, $50, $51   ; 
- D 0 - I - 0x01D85D 07:984D: 5F        .byte $5F, $5A, $60, $61   ; 
- D 0 - I - 0x01D861 07:9851: 5E        .byte $5E, $4E, $73, $71   ; 
; 06 
- D 0 - I - 0x01D865 07:9855: BC        .byte $BC, $BE, $78, $6E   ; 
- D 0 - I - 0x01D869 07:9859: BD        .byte $BD, $BF, $6B, $6B   ; 
- D 0 - I - 0x01D86D 07:985D: 7A        .byte $7A, $6C, $3D, $6C   ; 
- D 0 - I - 0x01D871 07:9861: 6E        .byte $6E, $6E, $6E, $6E   ; 
; 07 
- D 0 - I - 0x01D875 07:9865: 00        .byte $00, $00, $62, $63   ; 
- D 0 - I - 0x01D879 07:9869: 00        .byte $00, $00, $72, $73   ; 
- D 0 - I - 0x01D87D 07:986D: 00        .byte $00, $49, $62, $60   ; 
- D 0 - I - 0x01D881 07:9871: 58        .byte $58, $59, $5A, $44   ; 
; 08 
- D 0 - I - 0x01D885 07:9875: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01D889 07:9879: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01D88D 07:987D: 00        .byte $00, $47, $00, $48   ; 
- D 0 - I - 0x01D891 07:9881: 5C        .byte $5C, $57, $53, $4A   ; 
; 09 
- D 0 - I - 0x01D895 07:9885: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01D899 07:9889: 00        .byte $00, $00, $48, $00   ; 
- D 0 - I - 0x01D89D 07:988D: 00        .byte $00, $00, $4A, $00   ; 
- D 0 - I - 0x01D8A1 07:9891: 00        .byte $00, $00, $72, $63   ; 
; 0A 
- D 0 - I - 0x01D8A5 07:9895: 44        .byte $44, $45, $00, $00   ; 
- D 0 - I - 0x01D8A9 07:9899: 46        .byte $46, $45, $00, $00   ; 
- D 0 - I - 0x01D8AD 07:989D: 64        .byte $64, $65, $45, $00   ; 
- D 0 - I - 0x01D8B1 07:98A1: 46        .byte $46, $6E, $65, $56   ; 
; 0B 
- - - - - - 0x01D8B5 07:98A5: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x01D8B9 07:98A9: 00        .byte $00, $01, $01, $00   ; 
- - - - - - 0x01D8BD 07:98AD: 00        .byte $00, $01, $01, $00   ; 
- - - - - - 0x01D8C1 07:98B1: 00        .byte $00, $00, $00, $00   ; 
; 0C 
- D 0 - I - 0x01D8C5 07:98B5: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01D8C9 07:98B9: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01D8CD 07:98BD: 5F        .byte $5F, $43, $60, $61   ; 
- D 0 - I - 0x01D8D1 07:98C1: 5E        .byte $5E, $4E, $54, $71   ; 
; 0D 
- D 0 - I - 0x01D8D5 07:98C5: 00        .byte $00, $00, $62, $63   ; 
- D 0 - I - 0x01D8D9 07:98C9: 00        .byte $00, $00, $72, $73   ; 
- D 0 - I - 0x01D8DD 07:98CD: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01D8E1 07:98D1: BD        .byte $BD, $BF, $BD, $BF   ; 
; 0E 
- D 0 - I - 0x01D8E5 07:98D5: 71        .byte $71, $7B, $80, $83   ; 
- D 0 - I - 0x01D8E9 07:98D9: 6B        .byte $6B, $6B, $BA, $91   ; 
- D 0 - I - 0x01D8ED 07:98DD: 6C        .byte $6C, $7A, $6E, $77   ; 
- D 0 - I - 0x01D8F1 07:98E1: 6E        .byte $6E, $6E, $7A, $6E   ; 
; 0F 
- D 0 - I - 0x01D8F5 07:98E5: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01D8F9 07:98E9: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01D8FD 07:98ED: B2        .byte $B2, $BE, $B2, $BE   ; 
- D 0 - I - 0x01D901 07:98F1: BD        .byte $BD, $BF, $BD, $BF   ; 
; 10 
- D 0 - I - 0x01D905 07:98F5: 80        .byte $80, $83, $77, $00   ; 
- D 0 - I - 0x01D909 07:98F9: 90        .byte $90, $91, $84, $80   ; 
- D 0 - I - 0x01D90D 07:98FD: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01D911 07:9901: BD        .byte $BD, $BF, $BD, $BF   ; 
; 11 
- D 0 - I - 0x01D915 07:9905: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01D919 07:9909: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01D91D 07:990D: A0        .byte $A0, $A1, $A1, $91   ; 
- D 0 - I - 0x01D921 07:9911: B0        .byte $B0, $B1, $B1, $94   ; 
; 12 
- D 0 - I - 0x01D925 07:9915: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01D929 07:9919: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01D92D 07:991D: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01D931 07:9921: BD        .byte $BD, $BF, $BD, $BF   ; 
; 13 
- D 0 - I - 0x01D935 07:9925: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01D939 07:9929: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01D93D 07:992D: DC        .byte $DC, $DC, $DC, $DC   ; 
- D 0 - I - 0x01D941 07:9931: DD        .byte $DD, $DD, $DD, $DD   ; 
; 14 
- D 0 - I - 0x01D945 07:9935: A0        .byte $A0, $A1, $00, $00   ; 
- D 0 - I - 0x01D949 07:9939: B0        .byte $B0, $B1, $77, $00   ; 
- D 0 - I - 0x01D94D 07:993D: 80        .byte $80, $81, $84, $7A   ; 
- D 0 - I - 0x01D951 07:9941: 90        .byte $90, $91, $B1, $B1   ; 
; 15 
- D 0 - I - 0x01D955 07:9945: 00        .byte $00, $00, $80, $83   ; 
- D 0 - I - 0x01D959 07:9949: 00        .byte $00, $7A, $90, $91   ; 
- D 0 - I - 0x01D95D 07:994D: 80        .byte $80, $81, $84, $94   ; 
- D 0 - I - 0x01D961 07:9951: 90        .byte $90, $91, $B1, $94   ; 
; 16 
- D 0 - I - 0x01D965 07:9955: 00        .byte $00, $00, $BC, $BE   ; 
- D 0 - I - 0x01D969 07:9959: 77        .byte $77, $A4, $BD, $BF   ; 
- D 0 - I - 0x01D96D 07:995D: 80        .byte $80, $81, $84, $82   ; 
- D 0 - I - 0x01D971 07:9961: 90        .byte $90, $91, $94, $B1   ; 
; 17 
- D 0 - I - 0x01D975 07:9965: BC        .byte $BC, $BE, $00, $00   ; 
- D 0 - I - 0x01D979 07:9969: BD        .byte $BD, $BF, $A2, $00   ; 
- D 0 - I - 0x01D97D 07:996D: 80        .byte $80, $83, $84, $77   ; 
- D 0 - I - 0x01D981 07:9971: 94        .byte $94, $91, $90, $93   ; 
; 18 
- D 0 - I - 0x01D985 07:9975: A0        .byte $A0, $A1, $80, $83   ; 
- D 0 - I - 0x01D989 07:9979: B0        .byte $B0, $B1, $90, $91   ; 
- D 0 - I - 0x01D98D 07:997D: 00        .byte $00, $B1, $84, $80   ; 
- D 0 - I - 0x01D991 07:9981: 00        .byte $00, $00, $94, $B1   ; 
; 19 
- D 0 - I - 0x01D995 07:9985: A0        .byte $A0, $A1, $80, $83   ; 
- D 0 - I - 0x01D999 07:9989: B0        .byte $B0, $B1, $84, $A0   ; 
- D 0 - I - 0x01D99D 07:998D: 80        .byte $80, $81, $91, $94   ; 
- D 0 - I - 0x01D9A1 07:9991: 90        .byte $90, $81, $00, $00   ; 
; 1A 
- D 0 - I - 0x01D9A5 07:9995: 80        .byte $80, $81, $87, $94   ; 
- D 0 - I - 0x01D9A9 07:9999: 90        .byte $90, $91, $80, $83   ; 
- D 0 - I - 0x01D9AD 07:999D: A0        .byte $A0, $A1, $90, $91   ; 
- D 0 - I - 0x01D9B1 07:99A1: B0        .byte $B0, $B1, $84, $B0   ; 
; 1B 
- D 0 - I - 0x01D9B5 07:99A5: 84        .byte $84, $94, $80, $83   ; 
- D 0 - I - 0x01D9B9 07:99A9: 94        .byte $94, $B1, $90, $91   ; 
- D 0 - I - 0x01D9BD 07:99AD: 80        .byte $80, $81, $84, $00   ; 
- D 0 - I - 0x01D9C1 07:99B1: 90        .byte $90, $91, $B1, $00   ; 
; 1C 
- - - - - - 0x01D9C5 07:99B5: B6        .byte $B6, $A1, $B7, $81   ; 
- - - - - - 0x01D9C9 07:99B9: B0        .byte $B0, $B1, $90, $91   ; 
- - - - - - 0x01D9CD 07:99BD: 00        .byte $00, $00, $B8, $93   ; 
- - - - - - 0x01D9D1 07:99C1: 00        .byte $00, $00, $94, $B1   ; 
; 1D 
- D 0 - I - 0x01D9D5 07:99C5: B6        .byte $B6, $A1, $B7, $81   ; 
- D 0 - I - 0x01D9D9 07:99C9: B0        .byte $B0, $B1, $90, $91   ; 
- D 0 - I - 0x01D9DD 07:99CD: B7        .byte $B7, $81, $B8, $93   ; 
- D 0 - I - 0x01D9E1 07:99D1: 90        .byte $90, $91, $94, $A1   ; 
; 1E 
- - - - - - 0x01D9E5 07:99D5: B6        .byte $B6, $A1, $B8, $93   ; 
- - - - - - 0x01D9E9 07:99D9: B0        .byte $B0, $B1, $94, $94   ; 
- - - - - - 0x01D9ED 07:99DD: B8        .byte $B8, $93, $00, $A4   ; 
- - - - - - 0x01D9F1 07:99E1: B8        .byte $B8, $91, $98, $99   ; 
; 1F 
- D 0 - I - 0x01D9F5 07:99E5: B6        .byte $B6, $A1, $B8, $83   ; 
- D 0 - I - 0x01D9F9 07:99E9: B0        .byte $B0, $B1, $94, $93   ; 
- D 0 - I - 0x01D9FD 07:99ED: 7B        .byte $7B, $77, $AF, $7B   ; 
- D 0 - I - 0x01DA01 07:99F1: A0        .byte $A0, $99, $80, $99   ; 
; 20 
- D 0 - I - 0x01DA05 07:99F5: BC        .byte $BC, $BE, $B9, $BB   ; 
- D 0 - I - 0x01DA09 07:99F9: BD        .byte $BD, $BF, $BB, $94   ; 
- D 0 - I - 0x01DA0D 07:99FD: 00        .byte $00, $9E, $A1, $91   ; 
- D 0 - I - 0x01DA11 07:9A01: 9E        .byte $9E, $B1, $B1, $94   ; 
; 21 
- D 0 - I - 0x01DA15 07:9A05: BB        .byte $BB, $BA, $BC, $BE   ; 
- D 0 - I - 0x01DA19 07:9A09: B1        .byte $B1, $BB, $BD, $BF   ; 
- D 0 - I - 0x01DA1D 07:9A0D: 80        .byte $80, $81, $9E, $00   ; 
- D 0 - I - 0x01DA21 07:9A11: 90        .byte $90, $A1, $94, $9E   ; 
; 22 
- D 0 - I - 0x01DA25 07:9A15: 00        .byte $00, $00, $00, $9E   ; 
- D 0 - I - 0x01DA29 07:9A19: 00        .byte $00, $00, $9E, $00   ; 
- D 0 - I - 0x01DA2D 07:9A1D: 00        .byte $00, $9E, $00, $00   ; 
- D 0 - I - 0x01DA31 07:9A21: 9E        .byte $9E, $00, $00, $00   ; 
; 23 
- D 0 - I - 0x01DA35 07:9A25: 9E        .byte $9E, $00, $00, $00   ; 
- D 0 - I - 0x01DA39 07:9A29: 00        .byte $00, $9E, $00, $00   ; 
- D 0 - I - 0x01DA3D 07:9A2D: 00        .byte $00, $00, $9E, $00   ; 
- D 0 - I - 0x01DA41 07:9A31: 00        .byte $00, $00, $00, $9E   ; 
; 24 
- D 0 - I - 0x01DA45 07:9A35: 80        .byte $80, $83, $00, $9E   ; 
- D 0 - I - 0x01DA49 07:9A39: 90        .byte $90, $91, $9E, $00   ; 
- D 0 - I - 0x01DA4D 07:9A3D: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01DA51 07:9A41: BD        .byte $BD, $BF, $BD, $BF   ; 
; 25 
- D 0 - I - 0x01DA55 07:9A45: 9E        .byte $9E, $00, $77, $94   ; 
- D 0 - I - 0x01DA59 07:9A49: 00        .byte $00, $9E, $84, $91   ; 
- D 0 - I - 0x01DA5D 07:9A4D: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01DA61 07:9A51: BD        .byte $BD, $BF, $BD, $BF   ; 
; 26 
- D 0 - I - 0x01DA65 07:9A55: A0        .byte $A0, $A1, $00, $9E   ; 
- D 0 - I - 0x01DA69 07:9A59: B0        .byte $B0, $B1, $9E, $B1   ; 
- D 0 - I - 0x01DA6D 07:9A5D: 00        .byte $00, $9E, $80, $94   ; 
- D 0 - I - 0x01DA71 07:9A61: 9E        .byte $9E, $94, $94, $A1   ; 
; 27 
- D 0 - I - 0x01DA75 07:9A65: 9E        .byte $9E, $00, $80, $83   ; 
- D 0 - I - 0x01DA79 07:9A69: B1        .byte $B1, $9E, $94, $A1   ; 
- D 0 - I - 0x01DA7D 07:9A6D: 80        .byte $80, $81, $9E, $00   ; 
- D 0 - I - 0x01DA81 07:9A71: 90        .byte $90, $94, $94, $9E   ; 
; 28 
- D 0 - I - 0x01DA85 07:9A75: 80        .byte $80, $83, $77, $00   ; 
- D 0 - I - 0x01DA89 07:9A79: 90        .byte $90, $91, $84, $A1   ; 
- D 0 - I - 0x01DA8D 07:9A7D: B9        .byte $B9, $BB, $BC, $BE   ; 
- D 0 - I - 0x01DA91 07:9A81: BB        .byte $BB, $B1, $BD, $BF   ; 
; 29 
- D 0 - I - 0x01DA95 07:9A85: 77        .byte $77, $80, $83, $77   ; 
- D 0 - I - 0x01DA99 07:9A89: 84        .byte $84, $90, $91, $82   ; 
- D 0 - I - 0x01DA9D 07:9A8D: BC        .byte $BC, $BE, $BB, $BA   ; 
- D 0 - I - 0x01DAA1 07:9A91: BD        .byte $BD, $BF, $94, $BB   ; 
; 2A 
- D 0 - I - 0x01DAA5 07:9A95: 87        .byte $87, $8A, $BC, $BE   ; 
- D 0 - I - 0x01DAA9 07:9A99: 82        .byte $82, $00, $BD, $BF   ; 
- D 0 - I - 0x01DAAD 07:9A9D: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01DAB1 07:9AA1: BD        .byte $BD, $BF, $BD, $BF   ; 
; 2B 
- D 0 - I - 0x01DAB5 07:9AA5: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01DAB9 07:9AA9: 77        .byte $77, $00, $00, $77   ; 
- D 0 - I - 0x01DABD 07:9AAD: 79        .byte $79, $78, $79, $7A   ; 
- D 0 - I - 0x01DAC1 07:9AB1: 7B        .byte $7B, $00, $7B, $00   ; 
; 2C 
- D 0 - I - 0x01DAC5 07:9AB5: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01DAC9 07:9AB9: 77        .byte $77, $A2, $80, $83   ; 
- D 0 - I - 0x01DACD 07:9ABD: A0        .byte $A0, $A1, $90, $91   ; 
- D 0 - I - 0x01DAD1 07:9AC1: B0        .byte $B0, $B1, $84, $82   ; 
; 2D 
- D 0 - I - 0x01DAD5 07:9AC5: 8C        .byte $8C, $8D, $9F, $00   ; 
- D 0 - I - 0x01DAD9 07:9AC9: 9F        .byte $9F, $9C, $9D, $9C   ; 
- D 0 - I - 0x01DADD 07:9ACD: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01DAE1 07:9AD1: BD        .byte $BD, $BF, $BD, $BF   ; 
; 2E 
- D 0 - I - 0x01DAE5 07:9AD5: 77        .byte $77, $7A, $7B, $77   ; 
- D 0 - I - 0x01DAE9 07:9AD9: B1        .byte $B1, $7B, $00, $7B   ; 
- D 0 - I - 0x01DAED 07:9ADD: 8C        .byte $8C, $8D, $8E, $8F   ; 
- D 0 - I - 0x01DAF1 07:9AE1: 9D        .byte $9D, $9C, $9D, $9F   ; 
; 2F 
- D 0 - I - 0x01DAF5 07:9AE5: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01DAF9 07:9AE9: 77        .byte $77, $00, $00, $00   ; 
- D 0 - I - 0x01DAFD 07:9AED: 7B        .byte $7B, $7A, $77, $79   ; 
- D 0 - I - 0x01DB01 07:9AF1: 00        .byte $00, $79, $78, $7B   ; 
; 30 
- D 0 - I - 0x01DB05 07:9AF5: 9A        .byte $9A, $9B, $98, $8B   ; 
- D 0 - I - 0x01DB09 07:9AF9: 88        .byte $88, $89, $98, $96   ; 
- D 0 - I - 0x01DB0D 07:9AFD: 98        .byte $98, $BF, $96, $00   ; 
- D 0 - I - 0x01DB11 07:9B01: BF        .byte $BF, $00, $00, $00   ; 
; 31 
- D 0 - I - 0x01DB15 07:9B05: 98        .byte $98, $99, $9A, $BF   ; 
- D 0 - I - 0x01DB19 07:9B09: 97        .byte $97, $8B, $BC, $89   ; 
- D 0 - I - 0x01DB1D 07:9B0D: 00        .byte $00, $97, $9A, $99   ; 
- D 0 - I - 0x01DB21 07:9B11: 00        .byte $00, $00, $00, $9A   ; 
; 32 
- D 0 - I - 0x01DB25 07:9B15: 98        .byte $98, $99, $98, $8B   ; 
- D 0 - I - 0x01DB29 07:9B19: BD        .byte $BD, $9B, $98, $96   ; 
- D 0 - I - 0x01DB2D 07:9B1D: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01DB31 07:9B21: BD        .byte $BD, $BF, $BD, $BF   ; 
; 33 
- D 0 - I - 0x01DB35 07:9B25: 9A        .byte $9A, $9B, $98, $99   ; 
- D 0 - I - 0x01DB39 07:9B29: 88        .byte $88, $89, $98, $8B   ; 
- D 0 - I - 0x01DB3D 07:9B2D: 93        .byte $93, $BA, $98, $99   ; 
- D 0 - I - 0x01DB41 07:9B31: 92        .byte $92, $82, $82, $8A   ; 
; 34 
- D 0 - I - 0x01DB45 07:9B35: 8C        .byte $8C, $8D, $8E, $8F   ; 
- D 0 - I - 0x01DB49 07:9B39: 9C        .byte $9C, $9D, $9C, $9F   ; 
- D 0 - I - 0x01DB4D 07:9B3D: 86        .byte $86, $87, $86, $87   ; 
- D 0 - I - 0x01DB51 07:9B41: 00        .byte $00, $00, $00, $00   ; 
; 35 
- D 0 - I - 0x01DB55 07:9B45: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01DB59 07:9B49: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01DB5D 07:9B4D: 89        .byte $89, $88, $89, $88   ; 
- D 0 - I - 0x01DB61 07:9B51: 9B        .byte $9B, $BD, $9B, $9A   ; 
; 36 
- D 0 - I - 0x01DB65 07:9B55: BC        .byte $BC, $BE, $00, $00   ; 
- D 0 - I - 0x01DB69 07:9B59: BD        .byte $BD, $BF, $00, $00   ; 
- D 0 - I - 0x01DB6D 07:9B5D: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01DB71 07:9B61: BD        .byte $BD, $BF, $BD, $BF   ; 
; 37 
- D 0 - I - 0x01DB75 07:9B65: 9A        .byte $9A, $BF, $98, $99   ; 
- D 0 - I - 0x01DB79 07:9B69: 88        .byte $88, $89, $98, $8B   ; 
- D 0 - I - 0x01DB7D 07:9B6D: 98        .byte $98, $99, $9A, $9B   ; 
- D 0 - I - 0x01DB81 07:9B71: 98        .byte $98, $8B, $BC, $89   ; 
; 38 
- D 0 - I - 0x01DB85 07:9B75: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01DB89 07:9B79: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01DB8D 07:9B7D: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01DB91 07:9B81: 00        .byte $00, $00, $00, $00   ; 
; 39 
- D 0 - I - 0x01DB95 07:9B85: BC        .byte $BC, $BE, $00, $00   ; 
- D 0 - I - 0x01DB99 07:9B89: BD        .byte $BD, $BF, $00, $00   ; 
- D 0 - I - 0x01DB9D 07:9B8D: 00        .byte $00, $3C, $00, $00   ; 
- D 0 - I - 0x01DBA1 07:9B91: 00        .byte $00, $3A, $00, $00   ; 
; 3A 
- D 0 - I - 0x01DBA5 07:9B95: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01DBA9 07:9B99: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01DBAD 07:9B9D: 00        .byte $00, $00, $3C, $00   ; 
- D 0 - I - 0x01DBB1 07:9BA1: 00        .byte $00, $00, $3A, $00   ; 
; 3B 
- D 0 - I - 0x01DBB5 07:9BA5: 00        .byte $00, $00, $3C, $00   ; 
- D 0 - I - 0x01DBB9 07:9BA9: 00        .byte $00, $00, $3A, $00   ; 
- D 0 - I - 0x01DBBD 07:9BAD: 00        .byte $00, $00, $3C, $00   ; 
- D 0 - I - 0x01DBC1 07:9BB1: 00        .byte $00, $00, $3B, $00   ; 
; 3C 
- D 0 - I - 0x01DBC5 07:9BB5: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01DBC9 07:9BB9: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01DBCD 07:9BBD: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01DBD1 07:9BC1: BD        .byte $BD, $BF, $BD, $BF   ; 
; 3D 
- D 0 - I - 0x01DBD5 07:9BC5: 00        .byte $00, $3C, $00, $00   ; 
- D 0 - I - 0x01DBD9 07:9BC9: 00        .byte $00, $3B, $00, $00   ; 
- D 0 - I - 0x01DBDD 07:9BCD: 00        .byte $00, $3A, $00, $00   ; 
- D 0 - I - 0x01DBE1 07:9BD1: 00        .byte $00, $3C, $00, $00   ; 
; 3E 
- D 0 - I - 0x01DBE5 07:9BD5: 00        .byte $00, $00, $3C, $00   ; 
- D 0 - I - 0x01DBE9 07:9BD9: 00        .byte $00, $00, $3B, $00   ; 
- D 0 - I - 0x01DBED 07:9BDD: 00        .byte $00, $00, $3A, $00   ; 
- D 0 - I - 0x01DBF1 07:9BE1: 00        .byte $00, $00, $3C, $00   ; 
; 3F 
- D 0 - I - 0x01DBF5 07:9BE5: 00        .byte $00, $00, $3A, $00   ; 
- D 0 - I - 0x01DBF9 07:9BE9: 00        .byte $00, $00, $3C, $00   ; 
- D 0 - I - 0x01DBFD 07:9BED: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01DC01 07:9BF1: BD        .byte $BD, $BF, $BD, $BF   ; 
; 40 
- D 0 - I - 0x01DC05 07:9BF5: 00        .byte $00, $00, $00, $41   ; 
- D 0 - I - 0x01DC09 07:9BF9: 00        .byte $00, $00, $00, $51   ; 
- D 0 - I - 0x01DC0D 07:9BFD: 00        .byte $00, $77, $60, $61   ; 
- D 0 - I - 0x01DC11 07:9C01: 77        .byte $77, $7B, $00, $71   ; 
; 41 
- D 0 - I - 0x01DC15 07:9C05: 42        .byte $42, $00, $00, $00   ; 
- D 0 - I - 0x01DC19 07:9C09: 52        .byte $52, $00, $77, $00   ; 
- D 0 - I - 0x01DC1D 07:9C0D: 62        .byte $62, $63, $B1, $77   ; 
- D 0 - I - 0x01DC21 07:9C11: 72        .byte $72, $00, $7B, $79   ; 
; 42 
- D 0 - I - 0x01DC25 07:9C15: DC        .byte $DC, $DC, $DC, $DC   ; 
- D 0 - I - 0x01DC29 07:9C19: DD        .byte $DD, $DD, $DD, $DD   ; 
- D 0 - I - 0x01DC2D 07:9C1D: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01DC31 07:9C21: 00        .byte $00, $00, $00, $00   ; 
; 43 
- D 0 - I - 0x01DC35 07:9C25: BC        .byte $BC, $BE, $00, $00   ; 
- D 0 - I - 0x01DC39 07:9C29: BD        .byte $BD, $BF, $A2, $00   ; 
- D 0 - I - 0x01DC3D 07:9C2D: BC        .byte $BC, $BE, $82, $A0   ; 
- D 0 - I - 0x01DC41 07:9C31: BD        .byte $BD, $BF, $80, $91   ; 
; 44 
- D 0 - I - 0x01DC45 07:9C35: 7A        .byte $7A, $77, $00, $71   ; 
- D 0 - I - 0x01DC49 07:9C39: 79        .byte $79, $7A, $00, $40   ; 
- D 0 - I - 0x01DC4D 07:9C3D: 78        .byte $78, $7B, $00, $50   ; 
- D 0 - I - 0x01DC51 07:9C41: 7B        .byte $7B, $00, $44, $46   ; 
; 45 
- D 0 - I - 0x01DC55 07:9C45: 72        .byte $72, $00, $77, $78   ; 
- D 0 - I - 0x01DC59 07:9C49: 43        .byte $43, $00, $78, $7B   ; 
- D 0 - I - 0x01DC5D 07:9C4D: 53        .byte $53, $00, $7B, $00   ; 
- D 0 - I - 0x01DC61 07:9C51: 47        .byte $47, $48, $00, $00   ; 
; 46 
- D 0 - I - 0x01DC65 07:9C55: B2        .byte $B2, $BE, $B2, $BE   ; 
- D 0 - I - 0x01DC69 07:9C59: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01DC6D 07:9C5D: A0        .byte $A0, $A1, $A1, $91   ; 
- D 0 - I - 0x01DC71 07:9C61: B0        .byte $B0, $B1, $00, $B1   ; 
; 47 
- D 0 - I - 0x01DC75 07:9C65: 80        .byte $80, $83, $77, $00   ; 
- D 0 - I - 0x01DC79 07:9C69: 90        .byte $90, $91, $84, $B1   ; 
- D 0 - I - 0x01DC7D 07:9C6D: B2        .byte $B2, $BE, $B2, $BE   ; 
- D 0 - I - 0x01DC81 07:9C71: BD        .byte $BD, $BF, $BD, $BF   ; 
; 48 
- D 0 - I - 0x01DC85 07:9C75: 00        .byte $00, $44, $45, $46   ; 
- D 0 - I - 0x01DC89 07:9C79: 44        .byte $44, $45, $45, $46   ; 
- D 0 - I - 0x01DC8D 07:9C7D: 64        .byte $64, $65, $65, $65   ; 
- D 0 - I - 0x01DC91 07:9C81: 70        .byte $70, $9D, $73, $75   ; 
; 49 
- D 0 - I - 0x01DC95 07:9C85: 47        .byte $47, $47, $48, $00   ; 
- D 0 - I - 0x01DC99 07:9C89: 47        .byte $47, $47, $47, $48   ; 
- D 0 - I - 0x01DC9D 07:9C8D: 65        .byte $65, $65, $65, $66   ; 
- D 0 - I - 0x01DCA1 07:9C91: 75        .byte $75, $73, $55, $76   ; 
; 4A 
- D 0 - I - 0x01DCA5 07:9C95: 00        .byte $00, $00, $B2, $BE   ; 
- D 0 - I - 0x01DCA9 07:9C99: 77        .byte $77, $A4, $BD, $BF   ; 
- D 0 - I - 0x01DCAD 07:9C9D: 80        .byte $80, $81, $84, $82   ; 
- D 0 - I - 0x01DCB1 07:9CA1: 90        .byte $90, $91, $00, $B1   ; 
; 4B 
- D 0 - I - 0x01DCB5 07:9CA5: B2        .byte $B2, $BE, $00, $00   ; 
- D 0 - I - 0x01DCB9 07:9CA9: BD        .byte $BD, $BF, $00, $00   ; 
- D 0 - I - 0x01DCBD 07:9CAD: 80        .byte $80, $83, $B1, $77   ; 
- D 0 - I - 0x01DCC1 07:9CB1: 84        .byte $84, $91, $90, $B1   ; 
; 4C 
- D 0 - I - 0x01DCC5 07:9CB5: 00        .byte $00, $00, $4B, $4D   ; 
- D 0 - I - 0x01DCC9 07:9CB9: 00        .byte $00, $5A, $5B, $5C   ; 
- D 0 - I - 0x01DCCD 07:9CBD: 00        .byte $00, $4A, $6F, $6C   ; 
- D 0 - I - 0x01DCD1 07:9CC1: 00        .byte $00, $67, $7F, $7C   ; 
; 4D 
- D 0 - I - 0x01DCD5 07:9CC5: 4D        .byte $4D, $4D, $4E, $4E   ; 
- D 0 - I - 0x01DCD9 07:9CC9: 5D        .byte $5D, $5E, $5E, $5E   ; 
- D 0 - I - 0x01DCDD 07:9CCD: 6D        .byte $6D, $6E, $6D, $6F   ; 
- D 0 - I - 0x01DCE1 07:9CD1: 7D        .byte $7D, $7E, $7E, $7F   ; 
; 4E 
- D 0 - I - 0x01DCE5 07:9CD5: 4F        .byte $4F, $00, $BC, $BE   ; 
- D 0 - I - 0x01DCE9 07:9CD9: 5F        .byte $5F, $00, $BD, $BF   ; 
- D 0 - I - 0x01DCED 07:9CDD: 77        .byte $77, $7A, $64, $65   ; 
- D 0 - I - 0x01DCF1 07:9CE1: 78        .byte $78, $7B, $74, $73   ; 
; 4F 
- D 0 - I - 0x01DCF5 07:9CE5: BC        .byte $BC, $BE, $7A, $7B   ; 
- D 0 - I - 0x01DCF9 07:9CE9: BD        .byte $BD, $BF, $7B, $00   ; 
- D 0 - I - 0x01DCFD 07:9CED: 9A        .byte $9A, $BF, $00, $00   ; 
- D 0 - I - 0x01DD01 07:9CF1: 88        .byte $88, $89, $00, $00   ; 
; 50 
- D 0 - I - 0x01DD05 07:9CF5: 9A        .byte $9A, $BF, $98, $99   ; 
- D 0 - I - 0x01DD09 07:9CF9: 88        .byte $88, $89, $98, $99   ; 
- D 0 - I - 0x01DD0D 07:9CFD: 98        .byte $98, $8B, $98, $9B   ; 
- D 0 - I - 0x01DD11 07:9D01: 98        .byte $98, $99, $9B, $00   ; 
; 51 
- D 0 - I - 0x01DD15 07:9D05: 98        .byte $98, $99, $98, $8B   ; 
- D 0 - I - 0x01DD19 07:9D09: BD        .byte $BD, $9B, $98, $99   ; 
- D 0 - I - 0x01DD1D 07:9D0D: 00        .byte $00, $00, $9A, $99   ; 
- D 0 - I - 0x01DD21 07:9D11: 00        .byte $00, $00, $00, $9A   ; 
; 52 
- D 0 - I - 0x01DD25 07:9D15: 00        .byte $00, $00, $00, $00   ; 
- D 0 - I - 0x01DD29 07:9D19: 00        .byte $00, $00, $54, $55   ; 
- D 0 - I - 0x01DD2D 07:9D1D: 00        .byte $00, $00, $70, $75   ; 
- D 0 - I - 0x01DD31 07:9D21: 00        .byte $00, $00, $74, $75   ; 
; 53 
- D 0 - I - 0x01DD35 07:9D25: 00        .byte $00, $8C, $74, $75   ; 
- D 0 - I - 0x01DD39 07:9D29: 9F        .byte $9F, $9D, $74, $73   ; 
- D 0 - I - 0x01DD3D 07:9D2D: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01DD41 07:9D31: BD        .byte $BD, $BF, $BD, $BF   ; 
; 54 
- D 0 - I - 0x01DD45 07:9D35: 98        .byte $98, $99, $98, $99   ; 
- D 0 - I - 0x01DD49 07:9D39: 98        .byte $98, $99, $9A, $BF   ; 
- D 0 - I - 0x01DD4D 07:9D3D: 98        .byte $98, $9B, $00, $00   ; 
- D 0 - I - 0x01DD51 07:9D41: 9B        .byte $9B, $00, $00, $00   ; 
; 55 
- D 0 - I - 0x01DD55 07:9D45: 98        .byte $98, $99, $98, $8B   ; 
- D 0 - I - 0x01DD59 07:9D49: 98        .byte $98, $8B, $9A, $8A   ; 
- D 0 - I - 0x01DD5D 07:9D4D: 9A        .byte $9A, $99, $88, $89   ; 
- D 0 - I - 0x01DD61 07:9D51: 00        .byte $00, $9A, $98, $99   ; 
; 56 
- D 0 - I - 0x01DD65 07:9D55: 9A        .byte $9A, $9B, $64, $65   ; 
- D 0 - I - 0x01DD69 07:9D59: 88        .byte $88, $89, $74, $75   ; 
- D 0 - I - 0x01DD6D 07:9D5D: 93        .byte $93, $BA, $70, $73   ; 
- D 0 - I - 0x01DD71 07:9D61: 92        .byte $92, $82, $74, $75   ; 
; 57 
- D 0 - I - 0x01DD75 07:9D65: 64        .byte $64, $65, $98, $99   ; 
- D 0 - I - 0x01DD79 07:9D69: 74        .byte $74, $75, $98, $8B   ; 
- D 0 - I - 0x01DD7D 07:9D6D: 74        .byte $74, $75, $9A, $9B   ; 
- D 0 - I - 0x01DD81 07:9D71: 74        .byte $74, $73, $82, $84   ; 
; 58 
- D 0 - I - 0x01DD85 07:9D75: 9A        .byte $9A, $9B, $00, $00   ; 
- D 0 - I - 0x01DD89 07:9D79: 98        .byte $98, $89, $00, $00   ; 
- D 0 - I - 0x01DD8D 07:9D7D: 98        .byte $98, $99, $00, $00   ; 
- D 0 - I - 0x01DD91 07:9D81: 98        .byte $98, $8B, $00, $00   ; 
; 59 
- D 0 - I - 0x01DD95 07:9D85: 00        .byte $00, $00, $98, $8B   ; 
- D 0 - I - 0x01DD99 07:9D89: 00        .byte $00, $00, $9A, $9B   ; 
- D 0 - I - 0x01DD9D 07:9D8D: 00        .byte $00, $00, $88, $89   ; 
- D 0 - I - 0x01DDA1 07:9D91: 00        .byte $00, $00, $98, $99   ; 
; 5A 
- D 0 - I - 0x01DDA5 07:9D95: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01DDA9 07:9D99: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01DDAD 07:9D9D: 64        .byte $64, $65, $98, $9B   ; 
- D 0 - I - 0x01DDB1 07:9DA1: 70        .byte $70, $75, $9B, $00   ; 
; 5B 
- D 0 - I - 0x01DDB5 07:9DA5: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 0 - I - 0x01DDB9 07:9DA9: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 0 - I - 0x01DDBD 07:9DAD: 9A        .byte $9A, $99, $64, $65   ; 
- D 0 - I - 0x01DDC1 07:9DB1: 00        .byte $00, $9A, $74, $73   ; 
; 5C 
- D 0 - I - 0x01DDC5 07:9DB5: 74        .byte $74, $75, $00, $00   ; 
- D 0 - I - 0x01DDC9 07:9DB9: 74        .byte $74, $75, $00, $00   ; 
- D 0 - I - 0x01DDCD 07:9DBD: 64        .byte $64, $65, $8E, $8F   ; 
- D 0 - I - 0x01DDD1 07:9DC1: 74        .byte $74, $75, $9D, $9F   ; 
; 5D 
- D 0 - I - 0x01DDD5 07:9DC5: 00        .byte $00, $77, $74, $75   ; 
- D 0 - I - 0x01DDD9 07:9DC9: 79        .byte $79, $B1, $64, $65   ; 
- D 0 - I - 0x01DDDD 07:9DCD: 7B        .byte $7B, $00, $70, $75   ; 
- D 0 - I - 0x01DDE1 07:9DD1: 00        .byte $00, $00, $74, $75   ; 
; 5E 
- D 0 - I - 0x01DDE5 07:9DD5: 74        .byte $74, $75, $00, $00   ; 
- D 0 - I - 0x01DDE9 07:9DD9: 74        .byte $74, $75, $00, $00   ; 
- D 0 - I - 0x01DDED 07:9DDD: 64        .byte $64, $65, $00, $00   ; 
- D 0 - I - 0x01DDF1 07:9DE1: 74        .byte $74, $73, $00, $00   ; 
; 5F 
- D 0 - I - 0x01DDF5 07:9DE5: 00        .byte $00, $00, $74, $75   ; 
- D 0 - I - 0x01DDF9 07:9DE9: 00        .byte $00, $00, $74, $75   ; 
- D 0 - I - 0x01DDFD 07:9DED: 00        .byte $00, $00, $64, $65   ; 
- D 0 - I - 0x01DE01 07:9DF1: 00        .byte $00, $00, $74, $75   ; 



_off046_0x01DE05_07:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 0 - I - 0x01DE05 07:9DF5: 00        .byte $00, $FF, $FF, $FF, $FF, $FF, $FC, $FF, $FF, $FF, $FF, $55, $F0, $0F, $FB, $00   ; 00 
- D 0 - I - 0x01DE15 07:9E05: 0A        .byte $0A, $A0, $00, $00, $AA, $AA, $A2, $A8, $AA, $AA, $AA, $AA, $00, $00, $80, $A0   ; 10 
- D 0 - I - 0x01DE25 07:9E15: 80        .byte $80, $20, $00, $00, $02, $08, $82, $28, $0A, $0A, $02, $FF, $AA, $05, $5F, $F3   ; 20 
- D 0 - I - 0x01DE35 07:9E25: AA        .byte $AA, $AA, $0A, $AA, $A5, $A0, $00, $AA, $00, $00, $00, $00, $00, $00, $00, $00   ; 30 
- D 0 - I - 0x01DE45 07:9E35: FC        .byte $FC, $DD, $00, $88, $FF, $DD, $A0, $0A, $FF, $55, $A2, $A0, $00, $00, $70, $2C   ; 40 
- D 0 - I - 0x01DE55 07:9E45: AA        .byte $AA, $8A, $44, $05, $2A, $AA, $66, $99, $22, $88, $90, $60, $51, $77, $11, $44   ; 50 



_off044_0x01DE65_08:
- D 0 - I - 0x01DE65 07:9E55: 5F 9E     .word off_9E5F_08_00
- D 0 - I - 0x01DE67 07:9E57: 68 9E     .word off_9E68_08_01
- D 0 - I - 0x01DE69 07:9E59: 6B 9E     .word off_9E6B_08_02
- D 0 - I - 0x01DE6B 07:9E5B: 74 9E     .word off_9E74_08_03
- D 0 - I - 0x01DE6D 07:9E5D: 79 9E     .word off_9E79_08_04



off_9E5F_08_00:
- D 0 - I - 0x01DE6F 07:9E5F: 01        .byte $01   ; 
- D 0 - I - 0x01DE70 07:9E60: C4 A3     .word _off047_A3C4_08_00_00
- D 0 - I - 0x01DE72 07:9E62: D3 A2     .word _off047_A2D3_08_00_01
- - - - - - 0x01DE74 07:9E64: E0        .byte $E0   ; 
- D 0 - I - 0x01DE75 07:9E65: 01        .byte $01   ; 
- D 0 - I - 0x01DE76 07:9E66: FF        .byte $FF   ; 
- - - - - - 0x01DE77 07:9E67: E0        .byte $E0   ; 



off_9E68_08_01:
- - - - - - 0x01DE78 07:9E68: 00        .byte $00   ; 
- D 0 - I - 0x01DE79 07:9E69: E2 A1     .word _off047_A1E2_08_01_00



off_9E6B_08_02:
- D 0 - I - 0x01DE7B 07:9E6B: 01        .byte $01   ; 
- D 0 - I - 0x01DE7C 07:9E6C: 21 A1     .word _off047_A121_08_02_00
- D 0 - I - 0x01DE7E 07:9E6E: 9F 9F     .word _off047_9F9F_08_02_01
- - - - - - 0x01DE80 07:9E70: E0        .byte $E0   ; 
- D 0 - I - 0x01DE81 07:9E71: 00        .byte $00   ; 
- - - - - - 0x01DE82 07:9E72: 00        .byte $00   ; 
- - - - - - 0x01DE83 07:9E73: E0        .byte $E0   ; 



off_9E74_08_03:
- D 0 - I - 0x01DE84 07:9E74: 00        .byte $00   ; 
- D 0 - I - 0x01DE85 07:9E75: 30 A0     .word _off047_A030_08_03_00
- - - - - - 0x01DE87 07:9E77: E0        .byte $E0   ; 
- D 0 - I - 0x01DE88 07:9E78: D3        .byte $D3   ; 



off_9E79_08_04:
- - - - - - 0x01DE89 07:9E79: 00        .byte $00   ; 
- D 0 - I - 0x01DE8A 07:9E7A: AE 9E     .word _off047_9EAE_08_04_00
- - - - - - 0x01DE8C 07:9E7C: E0        .byte $E0   ; 
- - - - - - 0x01DE8D 07:9E7D: D3        .byte $D3   ; 


; bzk garbage
- - - - - - 0x01DE8E 07:9E7E: 2E        .byte $2E   ; 
- - - - - - 0x01DE8F 07:9E7F: 2E        .byte $2E   ; 
- - - - - - 0x01DE90 07:9E80: 2E        .byte $2E   ; 
- - - - - - 0x01DE91 07:9E81: 2E        .byte $2E   ; 
- - - - - - 0x01DE92 07:9E82: 2E        .byte $2E   ; 
- - - - - - 0x01DE93 07:9E83: 2E        .byte $2E   ; 
- - - - - - 0x01DE94 07:9E84: 2E        .byte $2E   ; 
- - - - - - 0x01DE95 07:9E85: 2E        .byte $2E   ; 
- - - - - - 0x01DE96 07:9E86: 2F        .byte $2F   ; 
- - - - - - 0x01DE97 07:9E87: 2F        .byte $2F   ; 
- - - - - - 0x01DE98 07:9E88: 2F        .byte $2F   ; 
- - - - - - 0x01DE99 07:9E89: 2F        .byte $2F   ; 
- - - - - - 0x01DE9A 07:9E8A: 2F        .byte $2F   ; 
- - - - - - 0x01DE9B 07:9E8B: 2F        .byte $2F   ; 
- - - - - - 0x01DE9C 07:9E8C: 2F        .byte $2F   ; 
- - - - - - 0x01DE9D 07:9E8D: 2F        .byte $2F   ; 
- - - - - - 0x01DE9E 07:9E8E: 46        .byte $46   ; 
- - - - - - 0x01DE9F 07:9E8F: 2F        .byte $2F   ; 
- - - - - - 0x01DEA0 07:9E90: 46        .byte $46   ; 
- - - - - - 0x01DEA1 07:9E91: 2F        .byte $2F   ; 
- - - - - - 0x01DEA2 07:9E92: 46        .byte $46   ; 
- - - - - - 0x01DEA3 07:9E93: 2F        .byte $2F   ; 
- - - - - - 0x01DEA4 07:9E94: 46        .byte $46   ; 
- - - - - - 0x01DEA5 07:9E95: 2F        .byte $2F   ; 
- - - - - - 0x01DEA6 07:9E96: 46        .byte $46   ; 
- - - - - - 0x01DEA7 07:9E97: 46        .byte $46   ; 
- - - - - - 0x01DEA8 07:9E98: 2F        .byte $2F   ; 
- - - - - - 0x01DEA9 07:9E99: 46        .byte $46   ; 
- - - - - - 0x01DEAA 07:9E9A: 2F        .byte $2F   ; 
- - - - - - 0x01DEAB 07:9E9B: 46        .byte $46   ; 
- - - - - - 0x01DEAC 07:9E9C: 46        .byte $46   ; 
- - - - - - 0x01DEAD 07:9E9D: 46        .byte $46   ; 
- - - - - - 0x01DEAE 07:9E9E: 46        .byte $46   ; 
- - - - - - 0x01DEAF 07:9E9F: 2F        .byte $2F   ; 
- - - - - - 0x01DEB0 07:9EA0: 46        .byte $46   ; 
- - - - - - 0x01DEB1 07:9EA1: 46        .byte $46   ; 
- - - - - - 0x01DEB2 07:9EA2: 46        .byte $46   ; 
- - - - - - 0x01DEB3 07:9EA3: 46        .byte $46   ; 
- - - - - - 0x01DEB4 07:9EA4: 2F        .byte $2F   ; 
- - - - - - 0x01DEB5 07:9EA5: 46        .byte $46   ; 
- - - - - - 0x01DEB6 07:9EA6: 46        .byte $46   ; 
- - - - - - 0x01DEB7 07:9EA7: 46        .byte $46   ; 
- - - - - - 0x01DEB8 07:9EA8: 46        .byte $46   ; 
- - - - - - 0x01DEB9 07:9EA9: 46        .byte $46   ; 
- - - - - - 0x01DEBA 07:9EAA: 46        .byte $46   ; 
- - - - - - 0x01DEBB 07:9EAB: 46        .byte $46   ; 
- - - - - - 0x01DEBC 07:9EAC: 46        .byte $46   ; 
- - - - - - 0x01DEBD 07:9EAD: 46        .byte $46   ; 



_off047_9EAE_08_04_00:
- D 0 - I - 0x01DEBE 07:9EAE: 04        .byte $04   ; 
- D 0 - I - 0x01DEBF 07:9EAF: 30        .byte $30   ; 
- D 0 - I - 0x01DEC0 07:9EB0: 22        .byte $22   ; 
- D 0 - I - 0x01DEC1 07:9EB1: 21        .byte $21   ; 
- D 0 - I - 0x01DEC2 07:9EB2: 22        .byte $22   ; 
- D 0 - I - 0x01DEC3 07:9EB3: 23        .byte $23   ; 
- D 0 - I - 0x01DEC4 07:9EB4: 22        .byte $22   ; 
- D 0 - I - 0x01DEC5 07:9EB5: 21        .byte $21   ; 
- D 0 - I - 0x01DEC6 07:9EB6: 24        .byte $24   ; 
- D 0 - I - 0x01DEC7 07:9EB7: 30        .byte $30   ; 
- D 0 - I - 0x01DEC8 07:9EB8: 24        .byte $24   ; 
- D 0 - I - 0x01DEC9 07:9EB9: 25        .byte $25   ; 
- D 0 - I - 0x01DECA 07:9EBA: 26        .byte $26   ; 
- D 0 - I - 0x01DECB 07:9EBB: 27        .byte $27   ; 
- D 0 - I - 0x01DECC 07:9EBC: 24        .byte $24   ; 
- D 0 - I - 0x01DECD 07:9EBD: 25        .byte $25   ; 
- D 0 - I - 0x01DECE 07:9EBE: 00        .byte $00   ; 
- D 0 - I - 0x01DECF 07:9EBF: 45        .byte $45   ; 
- D 0 - I - 0x01DED0 07:9EC0: 45        .byte $45   ; 
- D 0 - I - 0x01DED1 07:9EC1: 45        .byte $45   ; 
- D 0 - I - 0x01DED2 07:9EC2: 5F        .byte $5F   ; 
- D 0 - I - 0x01DED3 07:9EC3: 32        .byte $32   ; 
- D 0 - I - 0x01DED4 07:9EC4: 32        .byte $32   ; 
- D 0 - I - 0x01DED5 07:9EC5: 28        .byte $28   ; 
- D 0 - I - 0x01DED6 07:9EC6: 33        .byte $33   ; 
- D 0 - I - 0x01DED7 07:9EC7: 2A        .byte $2A   ; 
- D 0 - I - 0x01DED8 07:9EC8: 2A        .byte $2A   ; 
- D 0 - I - 0x01DED9 07:9EC9: 29        .byte $29   ; 
- D 0 - I - 0x01DEDA 07:9ECA: 2A        .byte $2A   ; 
- D 0 - I - 0x01DEDB 07:9ECB: 2A        .byte $2A   ; 
- D 0 - I - 0x01DEDC 07:9ECC: 2A        .byte $2A   ; 
- D 0 - I - 0x01DEDD 07:9ECD: 2A        .byte $2A   ; 
- D 0 - I - 0x01DEDE 07:9ECE: 29        .byte $29   ; 
- D 0 - I - 0x01DEDF 07:9ECF: 2B        .byte $2B   ; 
- D 0 - I - 0x01DEE0 07:9ED0: 01        .byte $01   ; 
- D 0 - I - 0x01DEE1 07:9ED1: 02        .byte $02   ; 
- D 0 - I - 0x01DEE2 07:9ED2: 03        .byte $03   ; 
- D 0 - I - 0x01DEE3 07:9ED3: 11        .byte $11   ; 
- D 0 - I - 0x01DEE4 07:9ED4: 40        .byte $40   ; 
- D 0 - I - 0x01DEE5 07:9ED5: 2B        .byte $2B   ; 
- D 0 - I - 0x01DEE6 07:9ED6: 01        .byte $01   ; 
- D 0 - I - 0x01DEE7 07:9ED7: 04        .byte $04   ; 
- D 0 - I - 0x01DEE8 07:9ED8: 05        .byte $05   ; 
- D 0 - I - 0x01DEE9 07:9ED9: 06        .byte $06   ; 
- D 0 - I - 0x01DEEA 07:9EDA: 07        .byte $07   ; 
- D 0 - I - 0x01DEEB 07:9EDB: 15        .byte $15   ; 
- D 0 - I - 0x01DEEC 07:9EDC: 48        .byte $48   ; 
- D 0 - I - 0x01DEED 07:9EDD: 04        .byte $04   ; 
- D 0 - I - 0x01DEEE 07:9EDE: 0C        .byte $0C   ; 
- D 0 - I - 0x01DEEF 07:9EDF: 24        .byte $24   ; 
- D 0 - I - 0x01DEF0 07:9EE0: 22        .byte $22   ; 
- D 0 - I - 0x01DEF1 07:9EE1: 23        .byte $23   ; 
- D 0 - I - 0x01DEF2 07:9EE2: 22        .byte $22   ; 
- D 0 - I - 0x01DEF3 07:9EE3: 21        .byte $21   ; 
- D 0 - I - 0x01DEF4 07:9EE4: 24        .byte $24   ; 
- D 0 - I - 0x01DEF5 07:9EE5: 21        .byte $21   ; 
- D 0 - I - 0x01DEF6 07:9EE6: 22        .byte $22   ; 
- D 0 - I - 0x01DEF7 07:9EE7: 00        .byte $00   ; 
- D 0 - I - 0x01DEF8 07:9EE8: 25        .byte $25   ; 
- D 0 - I - 0x01DEF9 07:9EE9: 27        .byte $27   ; 
- D 0 - I - 0x01DEFA 07:9EEA: 00        .byte $00   ; 
- D 0 - I - 0x01DEFB 07:9EEB: 25        .byte $25   ; 
- D 0 - I - 0x01DEFC 07:9EEC: 00        .byte $00   ; 
- D 0 - I - 0x01DEFD 07:9EED: 25        .byte $25   ; 
- D 0 - I - 0x01DEFE 07:9EEE: 00        .byte $00   ; 
- D 0 - I - 0x01DEFF 07:9EEF: 19        .byte $19   ; 
- D 0 - I - 0x01DF00 07:9EF0: 28        .byte $28   ; 
- D 0 - I - 0x01DF01 07:9EF1: 26        .byte $26   ; 
- D 0 - I - 0x01DF02 07:9EF2: 28        .byte $28   ; 
- D 0 - I - 0x01DF03 07:9EF3: 28        .byte $28   ; 
- D 0 - I - 0x01DF04 07:9EF4: 26        .byte $26   ; 
- D 0 - I - 0x01DF05 07:9EF5: 28        .byte $28   ; 
- D 0 - I - 0x01DF06 07:9EF6: 28        .byte $28   ; 
- D 0 - I - 0x01DF07 07:9EF7: 29        .byte $29   ; 
- D 0 - I - 0x01DF08 07:9EF8: 29        .byte $29   ; 
- D 0 - I - 0x01DF09 07:9EF9: 1C        .byte $1C   ; 
- D 0 - I - 0x01DF0A 07:9EFA: 1C        .byte $1C   ; 
- D 0 - I - 0x01DF0B 07:9EFB: 1C        .byte $1C   ; 
- D 0 - I - 0x01DF0C 07:9EFC: 1C        .byte $1C   ; 
- D 0 - I - 0x01DF0D 07:9EFD: 1C        .byte $1C   ; 
- D 0 - I - 0x01DF0E 07:9EFE: 1C        .byte $1C   ; 
- D 0 - I - 0x01DF0F 07:9EFF: 01        .byte $01   ; 
- D 0 - I - 0x01DF10 07:9F00: 01        .byte $01   ; 
- D 0 - I - 0x01DF11 07:9F01: 44        .byte $44   ; 
- D 0 - I - 0x01DF12 07:9F02: 44        .byte $44   ; 
- D 0 - I - 0x01DF13 07:9F03: 44        .byte $44   ; 
- D 0 - I - 0x01DF14 07:9F04: 44        .byte $44   ; 
- D 0 - I - 0x01DF15 07:9F05: 44        .byte $44   ; 
- D 0 - I - 0x01DF16 07:9F06: 44        .byte $44   ; 
- D 0 - I - 0x01DF17 07:9F07: 0C        .byte $0C   ; 
- D 0 - I - 0x01DF18 07:9F08: 0C        .byte $0C   ; 
- D 0 - I - 0x01DF19 07:9F09: 48        .byte $48   ; 
- D 0 - I - 0x01DF1A 07:9F0A: 48        .byte $48   ; 
- D 0 - I - 0x01DF1B 07:9F0B: 48        .byte $48   ; 
- D 0 - I - 0x01DF1C 07:9F0C: 48        .byte $48   ; 
- D 0 - I - 0x01DF1D 07:9F0D: 48        .byte $48   ; 
- D 0 - I - 0x01DF1E 07:9F0E: 48        .byte $48   ; 
- D 0 - I - 0x01DF1F 07:9F0F: 24        .byte $24   ; 
- D 0 - I - 0x01DF20 07:9F10: 22        .byte $22   ; 
- D 0 - I - 0x01DF21 07:9F11: 23        .byte $23   ; 
- D 0 - I - 0x01DF22 07:9F12: 22        .byte $22   ; 
- D 0 - I - 0x01DF23 07:9F13: 21        .byte $21   ; 
- D 0 - I - 0x01DF24 07:9F14: 24        .byte $24   ; 
- D 0 - I - 0x01DF25 07:9F15: 21        .byte $21   ; 
- D 0 - I - 0x01DF26 07:9F16: 22        .byte $22   ; 
- D 0 - I - 0x01DF27 07:9F17: 26        .byte $26   ; 
- D 0 - I - 0x01DF28 07:9F18: 25        .byte $25   ; 
- D 0 - I - 0x01DF29 07:9F19: 27        .byte $27   ; 
- D 0 - I - 0x01DF2A 07:9F1A: 26        .byte $26   ; 
- D 0 - I - 0x01DF2B 07:9F1B: 25        .byte $25   ; 
- D 0 - I - 0x01DF2C 07:9F1C: 00        .byte $00   ; 
- D 0 - I - 0x01DF2D 07:9F1D: 25        .byte $25   ; 
- D 0 - I - 0x01DF2E 07:9F1E: 00        .byte $00   ; 
- D 0 - I - 0x01DF2F 07:9F1F: 19        .byte $19   ; 
- D 0 - I - 0x01DF30 07:9F20: 26        .byte $26   ; 
- D 0 - I - 0x01DF31 07:9F21: 28        .byte $28   ; 
- D 0 - I - 0x01DF32 07:9F22: 26        .byte $26   ; 
- D 0 - I - 0x01DF33 07:9F23: 28        .byte $28   ; 
- D 0 - I - 0x01DF34 07:9F24: 26        .byte $26   ; 
- D 0 - I - 0x01DF35 07:9F25: 28        .byte $28   ; 
- D 0 - I - 0x01DF36 07:9F26: 28        .byte $28   ; 
- D 0 - I - 0x01DF37 07:9F27: 29        .byte $29   ; 
- D 0 - I - 0x01DF38 07:9F28: 29        .byte $29   ; 
- D 0 - I - 0x01DF39 07:9F29: 45        .byte $45   ; 
- D 0 - I - 0x01DF3A 07:9F2A: 1C        .byte $1C   ; 
- D 0 - I - 0x01DF3B 07:9F2B: 45        .byte $45   ; 
- D 0 - I - 0x01DF3C 07:9F2C: 1C        .byte $1C   ; 
- D 0 - I - 0x01DF3D 07:9F2D: 45        .byte $45   ; 
- D 0 - I - 0x01DF3E 07:9F2E: 45        .byte $45   ; 
- D 0 - I - 0x01DF3F 07:9F2F: 01        .byte $01   ; 
- D 0 - I - 0x01DF40 07:9F30: 01        .byte $01   ; 
- D 0 - I - 0x01DF41 07:9F31: 44        .byte $44   ; 
- D 0 - I - 0x01DF42 07:9F32: 44        .byte $44   ; 
- D 0 - I - 0x01DF43 07:9F33: 2B        .byte $2B   ; 
- D 0 - I - 0x01DF44 07:9F34: 44        .byte $44   ; 
- D 0 - I - 0x01DF45 07:9F35: 2B        .byte $2B   ; 
- D 0 - I - 0x01DF46 07:9F36: 44        .byte $44   ; 
- D 0 - I - 0x01DF47 07:9F37: 0C        .byte $0C   ; 
- D 0 - I - 0x01DF48 07:9F38: 0C        .byte $0C   ; 
- D 0 - I - 0x01DF49 07:9F39: 48        .byte $48   ; 
- D 0 - I - 0x01DF4A 07:9F3A: 48        .byte $48   ; 
- D 0 - I - 0x01DF4B 07:9F3B: 13        .byte $13   ; 
- D 0 - I - 0x01DF4C 07:9F3C: 48        .byte $48   ; 
- D 0 - I - 0x01DF4D 07:9F3D: 10        .byte $10   ; 
- D 0 - I - 0x01DF4E 07:9F3E: 48        .byte $48   ; 
- D 0 - I - 0x01DF4F 07:9F3F: 24        .byte $24   ; 
- D 0 - I - 0x01DF50 07:9F40: 22        .byte $22   ; 
- D 0 - I - 0x01DF51 07:9F41: 23        .byte $23   ; 
- D 0 - I - 0x01DF52 07:9F42: 22        .byte $22   ; 
- D 0 - I - 0x01DF53 07:9F43: 21        .byte $21   ; 
- D 0 - I - 0x01DF54 07:9F44: 24        .byte $24   ; 
- D 0 - I - 0x01DF55 07:9F45: 21        .byte $21   ; 
- D 0 - I - 0x01DF56 07:9F46: 22        .byte $22   ; 
- D 0 - I - 0x01DF57 07:9F47: 00        .byte $00   ; 
- D 0 - I - 0x01DF58 07:9F48: 25        .byte $25   ; 
- D 0 - I - 0x01DF59 07:9F49: 27        .byte $27   ; 
- D 0 - I - 0x01DF5A 07:9F4A: 00        .byte $00   ; 
- D 0 - I - 0x01DF5B 07:9F4B: 25        .byte $25   ; 
- D 0 - I - 0x01DF5C 07:9F4C: 00        .byte $00   ; 
- D 0 - I - 0x01DF5D 07:9F4D: 00        .byte $00   ; 
- D 0 - I - 0x01DF5E 07:9F4E: 00        .byte $00   ; 
- D 0 - I - 0x01DF5F 07:9F4F: 28        .byte $28   ; 
- D 0 - I - 0x01DF60 07:9F50: 32        .byte $32   ; 
- D 0 - I - 0x01DF61 07:9F51: 32        .byte $32   ; 
- D 0 - I - 0x01DF62 07:9F52: 28        .byte $28   ; 
- D 0 - I - 0x01DF63 07:9F53: 32        .byte $32   ; 
- D 0 - I - 0x01DF64 07:9F54: 33        .byte $33   ; 
- D 0 - I - 0x01DF65 07:9F55: 32        .byte $32   ; 
- D 0 - I - 0x01DF66 07:9F56: 28        .byte $28   ; 
- D 0 - I - 0x01DF67 07:9F57: 29        .byte $29   ; 
- D 0 - I - 0x01DF68 07:9F58: 29        .byte $29   ; 
- D 0 - I - 0x01DF69 07:9F59: 29        .byte $29   ; 
- D 0 - I - 0x01DF6A 07:9F5A: 29        .byte $29   ; 
- D 0 - I - 0x01DF6B 07:9F5B: 29        .byte $29   ; 
- D 0 - I - 0x01DF6C 07:9F5C: 11        .byte $11   ; 
- D 0 - I - 0x01DF6D 07:9F5D: 40        .byte $40   ; 
- D 0 - I - 0x01DF6E 07:9F5E: 11        .byte $11   ; 
- D 0 - I - 0x01DF6F 07:9F5F: 2B        .byte $2B   ; 
- D 0 - I - 0x01DF70 07:9F60: 01        .byte $01   ; 
- D 0 - I - 0x01DF71 07:9F61: 02        .byte $02   ; 
- D 0 - I - 0x01DF72 07:9F62: 03        .byte $03   ; 
- D 0 - I - 0x01DF73 07:9F63: 12        .byte $12   ; 
- D 0 - I - 0x01DF74 07:9F64: 15        .byte $15   ; 
- D 0 - I - 0x01DF75 07:9F65: 48        .byte $48   ; 
- D 0 - I - 0x01DF76 07:9F66: 15        .byte $15   ; 
- D 0 - I - 0x01DF77 07:9F67: 04        .byte $04   ; 
- D 0 - I - 0x01DF78 07:9F68: 05        .byte $05   ; 
- D 0 - I - 0x01DF79 07:9F69: 06        .byte $06   ; 
- D 0 - I - 0x01DF7A 07:9F6A: 07        .byte $07   ; 
- D 0 - I - 0x01DF7B 07:9F6B: 3B        .byte $3B   ; 
- D 0 - I - 0x01DF7C 07:9F6C: 33        .byte $33   ; 
- D 0 - I - 0x01DF7D 07:9F6D: 57        .byte $57   ; 
- D 0 - I - 0x01DF7E 07:9F6E: 33        .byte $33   ; 
- D 0 - I - 0x01DF7F 07:9F6F: 24        .byte $24   ; 
- D 0 - I - 0x01DF80 07:9F70: 22        .byte $22   ; 
- D 0 - I - 0x01DF81 07:9F71: 23        .byte $23   ; 
- D 0 - I - 0x01DF82 07:9F72: 22        .byte $22   ; 
- D 0 - I - 0x01DF83 07:9F73: 21        .byte $21   ; 
- D 0 - I - 0x01DF84 07:9F74: 24        .byte $24   ; 
- D 0 - I - 0x01DF85 07:9F75: 21        .byte $21   ; 
- D 0 - I - 0x01DF86 07:9F76: 22        .byte $22   ; 
- D 0 - I - 0x01DF87 07:9F77: 26        .byte $26   ; 
- D 0 - I - 0x01DF88 07:9F78: 25        .byte $25   ; 
- D 0 - I - 0x01DF89 07:9F79: 27        .byte $27   ; 
- D 0 - I - 0x01DF8A 07:9F7A: 26        .byte $26   ; 
- D 0 - I - 0x01DF8B 07:9F7B: 25        .byte $25   ; 
- D 0 - I - 0x01DF8C 07:9F7C: 00        .byte $00   ; 
- D 0 - I - 0x01DF8D 07:9F7D: 00        .byte $00   ; 
- D 0 - I - 0x01DF8E 07:9F7E: 00        .byte $00   ; 
- D 0 - I - 0x01DF8F 07:9F7F: 33        .byte $33   ; 
- D 0 - I - 0x01DF90 07:9F80: 18        .byte $18   ; 
- D 0 - I - 0x01DF91 07:9F81: 33        .byte $33   ; 
- D 0 - I - 0x01DF92 07:9F82: 28        .byte $28   ; 
- D 0 - I - 0x01DF93 07:9F83: 33        .byte $33   ; 
- D 0 - I - 0x01DF94 07:9F84: 3A        .byte $3A   ; 
- D 0 - I - 0x01DF95 07:9F85: 00        .byte $00   ; 
- D 0 - I - 0x01DF96 07:9F86: 00        .byte $00   ; 
- D 0 - I - 0x01DF97 07:9F87: 29        .byte $29   ; 
- D 0 - I - 0x01DF98 07:9F88: 29        .byte $29   ; 
- D 0 - I - 0x01DF99 07:9F89: 2A        .byte $2A   ; 
- D 0 - I - 0x01DF9A 07:9F8A: 29        .byte $29   ; 
- D 0 - I - 0x01DF9B 07:9F8B: 28        .byte $28   ; 
- D 0 - I - 0x01DF9C 07:9F8C: 3B        .byte $3B   ; 
- D 0 - I - 0x01DF9D 07:9F8D: 56        .byte $56   ; 
- D 0 - I - 0x01DF9E 07:9F8E: 00        .byte $00   ; 
- D 0 - I - 0x01DF9F 07:9F8F: 16        .byte $16   ; 
- D 0 - I - 0x01DFA0 07:9F90: 12        .byte $12   ; 
- D 0 - I - 0x01DFA1 07:9F91: 33        .byte $33   ; 
- D 0 - I - 0x01DFA2 07:9F92: 33        .byte $33   ; 
- D 0 - I - 0x01DFA3 07:9F93: 33        .byte $33   ; 
- D 0 - I - 0x01DFA4 07:9F94: 00        .byte $00   ; 
- D 0 - I - 0x01DFA5 07:9F95: 52        .byte $52   ; 
- D 0 - I - 0x01DFA6 07:9F96: 5D        .byte $5D   ; 
- D 0 - I - 0x01DFA7 07:9F97: 33        .byte $33   ; 
- D 0 - I - 0x01DFA8 07:9F98: 00        .byte $00   ; 
- D 0 - I - 0x01DFA9 07:9F99: 00        .byte $00   ; 
- D 0 - I - 0x01DFAA 07:9F9A: 00        .byte $00   ; 
- D 0 - I - 0x01DFAB 07:9F9B: 00        .byte $00   ; 
- D 0 - I - 0x01DFAC 07:9F9C: 5D        .byte $5D   ; 
- D 0 - I - 0x01DFAD 07:9F9D: 57        .byte $57   ; 
- D 0 - I - 0x01DFAE 07:9F9E: 52        .byte $52   ; 



_off047_9F9F_08_02_01:
- D 0 - I - 0x01DFAF 07:9F9F: 02        .byte $02   ; 
- D 0 - I - 0x01DFB0 07:9FA0: 00        .byte $00   ; 
- D 0 - I - 0x01DFB1 07:9FA1: 22        .byte $22   ; 
- D 0 - I - 0x01DFB2 07:9FA2: 21        .byte $21   ; 
- D 0 - I - 0x01DFB3 07:9FA3: 4B        .byte $4B   ; 
- D 0 - I - 0x01DFB4 07:9FA4: 57        .byte $57   ; 
- D 0 - I - 0x01DFB5 07:9FA5: 4B        .byte $4B   ; 
- D 0 - I - 0x01DFB6 07:9FA6: 57        .byte $57   ; 
- D 0 - I - 0x01DFB7 07:9FA7: 4B        .byte $4B   ; 
- D 0 - I - 0x01DFB8 07:9FA8: 23        .byte $23   ; 
- D 0 - I - 0x01DFB9 07:9FA9: 21        .byte $21   ; 
- D 0 - I - 0x01DFBA 07:9FAA: 21        .byte $21   ; 
- D 0 - I - 0x01DFBB 07:9FAB: 24        .byte $24   ; 
- D 0 - I - 0x01DFBC 07:9FAC: 57        .byte $57   ; 
- D 0 - I - 0x01DFBD 07:9FAD: 4B        .byte $4B   ; 
- D 0 - I - 0x01DFBE 07:9FAE: 57        .byte $57   ; 
- D 0 - I - 0x01DFBF 07:9FAF: 51        .byte $51   ; 
- D 0 - I - 0x01DFC0 07:9FB0: 21        .byte $21   ; 
- D 0 - I - 0x01DFC1 07:9FB1: 24        .byte $24   ; 
- D 0 - I - 0x01DFC2 07:9FB2: 32        .byte $32   ; 
- D 0 - I - 0x01DFC3 07:9FB3: 32        .byte $32   ; 
- D 0 - I - 0x01DFC4 07:9FB4: 5C        .byte $5C   ; 
- D 0 - I - 0x01DFC5 07:9FB5: 32        .byte $32   ; 
- D 0 - I - 0x01DFC6 07:9FB6: 5C        .byte $5C   ; 
- D 0 - I - 0x01DFC7 07:9FB7: 51        .byte $51   ; 
- D 0 - I - 0x01DFC8 07:9FB8: 24        .byte $24   ; 
- D 0 - I - 0x01DFC9 07:9FB9: 32        .byte $32   ; 
- D 0 - I - 0x01DFCA 07:9FBA: 53        .byte $53   ; 
- D 0 - I - 0x01DFCB 07:9FBB: 26        .byte $26   ; 
- D 0 - I - 0x01DFCC 07:9FBC: 53        .byte $53   ; 
- D 0 - I - 0x01DFCD 07:9FBD: 00        .byte $00   ; 
- D 0 - I - 0x01DFCE 07:9FBE: 53        .byte $53   ; 
- D 0 - I - 0x01DFCF 07:9FBF: 1F        .byte $1F   ; 
- D 0 - I - 0x01DFD0 07:9FC0: 28        .byte $28   ; 
- D 0 - I - 0x01DFD1 07:9FC1: 53        .byte $53   ; 
- D 0 - I - 0x01DFD2 07:9FC2: 5C        .byte $5C   ; 
- D 0 - I - 0x01DFD3 07:9FC3: 28        .byte $28   ; 
- D 0 - I - 0x01DFD4 07:9FC4: 52        .byte $52   ; 
- D 0 - I - 0x01DFD5 07:9FC5: 00        .byte $00   ; 
- D 0 - I - 0x01DFD6 07:9FC6: 57        .byte $57   ; 
- D 0 - I - 0x01DFD7 07:9FC7: 53        .byte $53   ; 
- D 0 - I - 0x01DFD8 07:9FC8: 28        .byte $28   ; 
- D 0 - I - 0x01DFD9 07:9FC9: 57        .byte $57   ; 
- D 0 - I - 0x01DFDA 07:9FCA: 53        .byte $53   ; 
- D 0 - I - 0x01DFDB 07:9FCB: 3B        .byte $3B   ; 
- D 0 - I - 0x01DFDC 07:9FCC: 56        .byte $56   ; 
- D 0 - I - 0x01DFDD 07:9FCD: 33        .byte $33   ; 
- D 0 - I - 0x01DFDE 07:9FCE: 57        .byte $57   ; 
- D 0 - I - 0x01DFDF 07:9FCF: 52        .byte $52   ; 
- D 0 - I - 0x01DFE0 07:9FD0: 4B        .byte $4B   ; 
- D 0 - I - 0x01DFE1 07:9FD1: 4B        .byte $4B   ; 
- D 0 - I - 0x01DFE2 07:9FD2: 4B        .byte $4B   ; 
- D 0 - I - 0x01DFE3 07:9FD3: 4B        .byte $4B   ; 
- D 0 - I - 0x01DFE4 07:9FD4: 4B        .byte $4B   ; 
- D 0 - I - 0x01DFE5 07:9FD5: 57        .byte $57   ; 
- D 0 - I - 0x01DFE6 07:9FD6: 4B        .byte $4B   ; 
- D 0 - I - 0x01DFE7 07:9FD7: 57        .byte $57   ; 
- D 0 - I - 0x01DFE8 07:9FD8: 4B        .byte $4B   ; 
- D 0 - I - 0x01DFE9 07:9FD9: 5A        .byte $5A   ; 
- D 0 - I - 0x01DFEA 07:9FDA: 5B        .byte $5B   ; 
- D 0 - I - 0x01DFEB 07:9FDB: 4B        .byte $4B   ; 
- D 0 - I - 0x01DFEC 07:9FDC: 51        .byte $51   ; 
- D 0 - I - 0x01DFED 07:9FDD: 57        .byte $57   ; 
- D 0 - I - 0x01DFEE 07:9FDE: 4B        .byte $4B   ; 
- D 0 - I - 0x01DFEF 07:9FDF: 57        .byte $57   ; 
- D 0 - I - 0x01DFF0 07:9FE0: 51        .byte $51   ; 
- D 0 - I - 0x01DFF1 07:9FE1: 51        .byte $51   ; 
- D 0 - I - 0x01DFF2 07:9FE2: 51        .byte $51   ; 
- D 0 - I - 0x01DFF3 07:9FE3: 51        .byte $51   ; 
- D 0 - I - 0x01DFF4 07:9FE4: 51        .byte $51   ; 
- D 0 - I - 0x01DFF5 07:9FE5: 57        .byte $57   ; 
- D 0 - I - 0x01DFF6 07:9FE6: 32        .byte $32   ; 
- D 0 - I - 0x01DFF7 07:9FE7: 52        .byte $52   ; 
- D 0 - I - 0x01DFF8 07:9FE8: 00        .byte $00   ; 
- D 0 - I - 0x01DFF9 07:9FE9: 53        .byte $53   ; 
- D 0 - I - 0x01DFFA 07:9FEA: 53        .byte $53   ; 
- D 0 - I - 0x01DFFB 07:9FEB: 5D        .byte $5D   ; 
- D 0 - I - 0x01DFFC 07:9FEC: 4B        .byte $4B   ; 
- D 0 - I - 0x01DFFD 07:9FED: 5C        .byte $5C   ; 
- D 0 - I - 0x01DFFE 07:9FEE: 00        .byte $00   ; 
- D 0 - I - 0x01DFFF 07:9FEF: 56        .byte $56   ; 
- D 0 - I - 0x01E000 07:9FF0: 32        .byte $32   ; 
- D 0 - I - 0x01E001 07:9FF1: 5C        .byte $5C   ; 
- D 0 - I - 0x01E002 07:9FF2: 5C        .byte $5C   ; 
- D 0 - I - 0x01E003 07:9FF3: 5C        .byte $5C   ; 
- D 0 - I - 0x01E004 07:9FF4: 32        .byte $32   ; 
- D 0 - I - 0x01E005 07:9FF5: 52        .byte $52   ; 
- D 0 - I - 0x01E006 07:9FF6: 00        .byte $00   ; 
- D 0 - I - 0x01E007 07:9FF7: 57        .byte $57   ; 
- D 0 - I - 0x01E008 07:9FF8: 53        .byte $53   ; 
- D 0 - I - 0x01E009 07:9FF9: 00        .byte $00   ; 
- D 0 - I - 0x01E00A 07:9FFA: 52        .byte $52   ; 
- D 0 - I - 0x01E00B 07:9FFB: 00        .byte $00   ; 
- D 0 - I - 0x01E00C 07:9FFC: 53        .byte $53   ; 
- D 0 - I - 0x01E00D 07:9FFD: 00        .byte $00   ; 
- D 0 - I - 0x01E00E 07:9FFE: 00        .byte $00   ; 
- D 0 - I - 0x01E00F 07:9FFF: 57        .byte $57   ; 
- D 1 - I - 0x01E010 07:A000: 00        .byte $00   ; 
- D 1 - I - 0x01E011 07:A001: 00        .byte $00   ; 
- D 1 - I - 0x01E012 07:A002: 51        .byte $51   ; 
- D 1 - I - 0x01E013 07:A003: 51        .byte $51   ; 
- D 1 - I - 0x01E014 07:A004: 51        .byte $51   ; 
- D 1 - I - 0x01E015 07:A005: 51        .byte $51   ; 
- D 1 - I - 0x01E016 07:A006: 00        .byte $00   ; 
- D 1 - I - 0x01E017 07:A007: 00        .byte $00   ; 
- D 1 - I - 0x01E018 07:A008: 4B        .byte $4B   ; 
- D 1 - I - 0x01E019 07:A009: 51        .byte $51   ; 
- D 1 - I - 0x01E01A 07:A00A: 53        .byte $53   ; 
- D 1 - I - 0x01E01B 07:A00B: 5A        .byte $5A   ; 
- D 1 - I - 0x01E01C 07:A00C: 5B        .byte $5B   ; 
- D 1 - I - 0x01E01D 07:A00D: 53        .byte $53   ; 
- D 1 - I - 0x01E01E 07:A00E: 51        .byte $51   ; 
- D 1 - I - 0x01E01F 07:A00F: 4B        .byte $4B   ; 
- D 1 - I - 0x01E020 07:A010: 5A        .byte $5A   ; 
- D 1 - I - 0x01E021 07:A011: 5B        .byte $5B   ; 
- D 1 - I - 0x01E022 07:A012: 57        .byte $57   ; 
- D 1 - I - 0x01E023 07:A013: 54        .byte $54   ; 
- D 1 - I - 0x01E024 07:A014: 55        .byte $55   ; 
- D 1 - I - 0x01E025 07:A015: 57        .byte $57   ; 
- D 1 - I - 0x01E026 07:A016: 5A        .byte $5A   ; 
- D 1 - I - 0x01E027 07:A017: 5B        .byte $5B   ; 
- D 1 - I - 0x01E028 07:A018: 32        .byte $32   ; 
- D 1 - I - 0x01E029 07:A019: 00        .byte $00   ; 
- D 1 - I - 0x01E02A 07:A01A: 52        .byte $52   ; 
- D 1 - I - 0x01E02B 07:A01B: 58        .byte $58   ; 
- D 1 - I - 0x01E02C 07:A01C: 59        .byte $59   ; 
- D 1 - I - 0x01E02D 07:A01D: 57        .byte $57   ; 
- D 1 - I - 0x01E02E 07:A01E: 45        .byte $45   ; 
- D 1 - I - 0x01E02F 07:A01F: 00        .byte $00   ; 
- D 1 - I - 0x01E030 07:A020: 53        .byte $53   ; 
- D 1 - I - 0x01E031 07:A021: 1F        .byte $1F   ; 
- D 1 - I - 0x01E032 07:A022: 4B        .byte $4B   ; 
- D 1 - I - 0x01E033 07:A023: 1E        .byte $1E   ; 
- D 1 - I - 0x01E034 07:A024: 1E        .byte $1E   ; 
- D 1 - I - 0x01E035 07:A025: 45        .byte $45   ; 
- D 1 - I - 0x01E036 07:A026: 4B        .byte $4B   ; 
- D 1 - I - 0x01E037 07:A027: 5D        .byte $5D   ; 
- D 1 - I - 0x01E038 07:A028: 57        .byte $57   ; 
- D 1 - I - 0x01E039 07:A029: 53        .byte $53   ; 
- D 1 - I - 0x01E03A 07:A02A: 5E        .byte $5E   ; 
- D 1 - I - 0x01E03B 07:A02B: 33        .byte $33   ; 
- D 1 - I - 0x01E03C 07:A02C: 5F        .byte $5F   ; 
- D 1 - I - 0x01E03D 07:A02D: 00        .byte $00   ; 
- D 1 - I - 0x01E03E 07:A02E: 53        .byte $53   ; 
- D 1 - I - 0x01E03F 07:A02F: 57        .byte $57   ; 



_off047_A030_08_03_00:
- D 1 - I - 0x01E040 07:A030: 04        .byte $04   ; 
- D 1 - I - 0x01E041 07:A031: 00        .byte $00   ; 
- D 1 - I - 0x01E042 07:A032: 00        .byte $00   ; 
- D 1 - I - 0x01E043 07:A033: 00        .byte $00   ; 
- D 1 - I - 0x01E044 07:A034: 00        .byte $00   ; 
- D 1 - I - 0x01E045 07:A035: 28        .byte $28   ; 
- D 1 - I - 0x01E046 07:A036: 00        .byte $00   ; 
- D 1 - I - 0x01E047 07:A037: 21        .byte $21   ; 
- D 1 - I - 0x01E048 07:A038: 22        .byte $22   ; 
- D 1 - I - 0x01E049 07:A039: 1E        .byte $1E   ; 
- D 1 - I - 0x01E04A 07:A03A: 1E        .byte $1E   ; 
- D 1 - I - 0x01E04B 07:A03B: 1E        .byte $1E   ; 
- D 1 - I - 0x01E04C 07:A03C: 42        .byte $42   ; 
- D 1 - I - 0x01E04D 07:A03D: 2A        .byte $2A   ; 
- D 1 - I - 0x01E04E 07:A03E: 28        .byte $28   ; 
- D 1 - I - 0x01E04F 07:A03F: 25        .byte $25   ; 
- D 1 - I - 0x01E050 07:A040: 26        .byte $26   ; 
- D 1 - I - 0x01E051 07:A041: 17        .byte $17   ; 
- D 1 - I - 0x01E052 07:A042: 17        .byte $17   ; 
- D 1 - I - 0x01E053 07:A043: 17        .byte $17   ; 
- D 1 - I - 0x01E054 07:A044: 44        .byte $44   ; 
- D 1 - I - 0x01E055 07:A045: 29        .byte $29   ; 
- D 1 - I - 0x01E056 07:A046: 29        .byte $29   ; 
- D 1 - I - 0x01E057 07:A047: 11        .byte $11   ; 
- D 1 - I - 0x01E058 07:A048: 29        .byte $29   ; 
- D 1 - I - 0x01E059 07:A049: 1B        .byte $1B   ; 
- D 1 - I - 0x01E05A 07:A04A: 1B        .byte $1B   ; 
- D 1 - I - 0x01E05B 07:A04B: 1B        .byte $1B   ; 
- D 1 - I - 0x01E05C 07:A04C: 48        .byte $48   ; 
- D 1 - I - 0x01E05D 07:A04D: 2B        .byte $2B   ; 
- D 1 - I - 0x01E05E 07:A04E: 12        .byte $12   ; 
- D 1 - I - 0x01E05F 07:A04F: 15        .byte $15   ; 
- D 1 - I - 0x01E060 07:A050: 16        .byte $16   ; 
- D 1 - I - 0x01E061 07:A051: 1B        .byte $1B   ; 
- D 1 - I - 0x01E062 07:A052: 1B        .byte $1B   ; 
- D 1 - I - 0x01E063 07:A053: 1B        .byte $1B   ; 
- D 1 - I - 0x01E064 07:A054: 57        .byte $57   ; 
- D 1 - I - 0x01E065 07:A055: 13        .byte $13   ; 
- D 1 - I - 0x01E066 07:A056: 56        .byte $56   ; 
- D 1 - I - 0x01E067 07:A057: 56        .byte $56   ; 
- D 1 - I - 0x01E068 07:A058: 00        .byte $00   ; 
- D 1 - I - 0x01E069 07:A059: 33        .byte $33   ; 
- D 1 - I - 0x01E06A 07:A05A: 33        .byte $33   ; 
- D 1 - I - 0x01E06B 07:A05B: 33        .byte $33   ; 
- D 1 - I - 0x01E06C 07:A05C: 56        .byte $56   ; 
- D 1 - I - 0x01E06D 07:A05D: 00        .byte $00   ; 
- D 1 - I - 0x01E06E 07:A05E: 57        .byte $57   ; 
- D 1 - I - 0x01E06F 07:A05F: 57        .byte $57   ; 
- D 1 - I - 0x01E070 07:A060: 5D        .byte $5D   ; 
- D 1 - I - 0x01E071 07:A061: 24        .byte $24   ; 
- D 1 - I - 0x01E072 07:A062: 22        .byte $22   ; 
- D 1 - I - 0x01E073 07:A063: 23        .byte $23   ; 
- D 1 - I - 0x01E074 07:A064: 22        .byte $22   ; 
- D 1 - I - 0x01E075 07:A065: 21        .byte $21   ; 
- D 1 - I - 0x01E076 07:A066: 24        .byte $24   ; 
- D 1 - I - 0x01E077 07:A067: 21        .byte $21   ; 
- D 1 - I - 0x01E078 07:A068: 22        .byte $22   ; 
- D 1 - I - 0x01E079 07:A069: 26        .byte $26   ; 
- D 1 - I - 0x01E07A 07:A06A: 25        .byte $25   ; 
- D 1 - I - 0x01E07B 07:A06B: 27        .byte $27   ; 
- D 1 - I - 0x01E07C 07:A06C: 26        .byte $26   ; 
- D 1 - I - 0x01E07D 07:A06D: 25        .byte $25   ; 
- D 1 - I - 0x01E07E 07:A06E: 26        .byte $26   ; 
- D 1 - I - 0x01E07F 07:A06F: 25        .byte $25   ; 
- D 1 - I - 0x01E080 07:A070: 26        .byte $26   ; 
- D 1 - I - 0x01E081 07:A071: 29        .byte $29   ; 
- D 1 - I - 0x01E082 07:A072: 29        .byte $29   ; 
- D 1 - I - 0x01E083 07:A073: 2A        .byte $2A   ; 
- D 1 - I - 0x01E084 07:A074: 2A        .byte $2A   ; 
- D 1 - I - 0x01E085 07:A075: 29        .byte $29   ; 
- D 1 - I - 0x01E086 07:A076: 29        .byte $29   ; 
- D 1 - I - 0x01E087 07:A077: 2A        .byte $2A   ; 
- D 1 - I - 0x01E088 07:A078: 29        .byte $29   ; 
- D 1 - I - 0x01E089 07:A079: 39        .byte $39   ; 
- D 1 - I - 0x01E08A 07:A07A: 39        .byte $39   ; 
- D 1 - I - 0x01E08B 07:A07B: 39        .byte $39   ; 
- D 1 - I - 0x01E08C 07:A07C: 39        .byte $39   ; 
- D 1 - I - 0x01E08D 07:A07D: 2B        .byte $2B   ; 
- D 1 - I - 0x01E08E 07:A07E: 1C        .byte $1C   ; 
- D 1 - I - 0x01E08F 07:A07F: 2B        .byte $2B   ; 
- D 1 - I - 0x01E090 07:A080: 1C        .byte $1C   ; 
- D 1 - I - 0x01E091 07:A081: 41        .byte $41   ; 
- D 1 - I - 0x01E092 07:A082: 1E        .byte $1E   ; 
- D 1 - I - 0x01E093 07:A083: 1E        .byte $1E   ; 
- D 1 - I - 0x01E094 07:A084: 42        .byte $42   ; 
- D 1 - I - 0x01E095 07:A085: 31        .byte $31   ; 
- D 1 - I - 0x01E096 07:A086: 44        .byte $44   ; 
- D 1 - I - 0x01E097 07:A087: 12        .byte $12   ; 
- D 1 - I - 0x01E098 07:A088: 48        .byte $48   ; 
- D 1 - I - 0x01E099 07:A089: 57        .byte $57   ; 
- D 1 - I - 0x01E09A 07:A08A: 00        .byte $00   ; 
- D 1 - I - 0x01E09B 07:A08B: 00        .byte $00   ; 
- D 1 - I - 0x01E09C 07:A08C: 57        .byte $57   ; 
- D 1 - I - 0x01E09D 07:A08D: 00        .byte $00   ; 
- D 1 - I - 0x01E09E 07:A08E: 57        .byte $57   ; 
- D 1 - I - 0x01E09F 07:A08F: 00        .byte $00   ; 
- D 1 - I - 0x01E0A0 07:A090: 57        .byte $57   ; 
- D 1 - I - 0x01E0A1 07:A091: 24        .byte $24   ; 
- D 1 - I - 0x01E0A2 07:A092: 22        .byte $22   ; 
- D 1 - I - 0x01E0A3 07:A093: 23        .byte $23   ; 
- D 1 - I - 0x01E0A4 07:A094: 22        .byte $22   ; 
- D 1 - I - 0x01E0A5 07:A095: 21        .byte $21   ; 
- D 1 - I - 0x01E0A6 07:A096: 24        .byte $24   ; 
- D 1 - I - 0x01E0A7 07:A097: 21        .byte $21   ; 
- D 1 - I - 0x01E0A8 07:A098: 22        .byte $22   ; 
- D 1 - I - 0x01E0A9 07:A099: 26        .byte $26   ; 
- D 1 - I - 0x01E0AA 07:A09A: 25        .byte $25   ; 
- D 1 - I - 0x01E0AB 07:A09B: 27        .byte $27   ; 
- D 1 - I - 0x01E0AC 07:A09C: 00        .byte $00   ; 
- D 1 - I - 0x01E0AD 07:A09D: 25        .byte $25   ; 
- D 1 - I - 0x01E0AE 07:A09E: 26        .byte $26   ; 
- D 1 - I - 0x01E0AF 07:A09F: 25        .byte $25   ; 
- D 1 - I - 0x01E0B0 07:A0A0: 26        .byte $26   ; 
- D 1 - I - 0x01E0B1 07:A0A1: 29        .byte $29   ; 
- D 1 - I - 0x01E0B2 07:A0A2: 29        .byte $29   ; 
- D 1 - I - 0x01E0B3 07:A0A3: 2A        .byte $2A   ; 
- D 1 - I - 0x01E0B4 07:A0A4: 19        .byte $19   ; 
- D 1 - I - 0x01E0B5 07:A0A5: 2A        .byte $2A   ; 
- D 1 - I - 0x01E0B6 07:A0A6: 1C        .byte $1C   ; 
- D 1 - I - 0x01E0B7 07:A0A7: 2A        .byte $2A   ; 
- D 1 - I - 0x01E0B8 07:A0A8: 29        .byte $29   ; 
- D 1 - I - 0x01E0B9 07:A0A9: 11        .byte $11   ; 
- D 1 - I - 0x01E0BA 07:A0AA: 1C        .byte $1C   ; 
- D 1 - I - 0x01E0BB 07:A0AB: 01        .byte $01   ; 
- D 1 - I - 0x01E0BC 07:A0AC: 44        .byte $44   ; 
- D 1 - I - 0x01E0BD 07:A0AD: 01        .byte $01   ; 
- D 1 - I - 0x01E0BE 07:A0AE: 44        .byte $44   ; 
- D 1 - I - 0x01E0BF 07:A0AF: 2B        .byte $2B   ; 
- D 1 - I - 0x01E0C0 07:A0B0: 2B        .byte $2B   ; 
- D 1 - I - 0x01E0C1 07:A0B1: 15        .byte $15   ; 
- D 1 - I - 0x01E0C2 07:A0B2: 48        .byte $48   ; 
- D 1 - I - 0x01E0C3 07:A0B3: 0C        .byte $0C   ; 
- D 1 - I - 0x01E0C4 07:A0B4: 57        .byte $57   ; 
- D 1 - I - 0x01E0C5 07:A0B5: 0C        .byte $0C   ; 
- D 1 - I - 0x01E0C6 07:A0B6: 48        .byte $48   ; 
- D 1 - I - 0x01E0C7 07:A0B7: 04        .byte $04   ; 
- D 1 - I - 0x01E0C8 07:A0B8: 45        .byte $45   ; 
- D 1 - I - 0x01E0C9 07:A0B9: 00        .byte $00   ; 
- D 1 - I - 0x01E0CA 07:A0BA: 52        .byte $52   ; 
- D 1 - I - 0x01E0CB 07:A0BB: 00        .byte $00   ; 
- D 1 - I - 0x01E0CC 07:A0BC: 52        .byte $52   ; 
- D 1 - I - 0x01E0CD 07:A0BD: 00        .byte $00   ; 
- D 1 - I - 0x01E0CE 07:A0BE: 52        .byte $52   ; 
- D 1 - I - 0x01E0CF 07:A0BF: 00        .byte $00   ; 
- D 1 - I - 0x01E0D0 07:A0C0: 53        .byte $53   ; 
- D 1 - I - 0x01E0D1 07:A0C1: 24        .byte $24   ; 
- D 1 - I - 0x01E0D2 07:A0C2: 22        .byte $22   ; 
- D 1 - I - 0x01E0D3 07:A0C3: 23        .byte $23   ; 
- D 1 - I - 0x01E0D4 07:A0C4: 3B        .byte $3B   ; 
- D 1 - I - 0x01E0D5 07:A0C5: 21        .byte $21   ; 
- D 1 - I - 0x01E0D6 07:A0C6: 24        .byte $24   ; 
- D 1 - I - 0x01E0D7 07:A0C7: 30        .byte $30   ; 
- D 1 - I - 0x01E0D8 07:A0C8: 30        .byte $30   ; 
- D 1 - I - 0x01E0D9 07:A0C9: 26        .byte $26   ; 
- D 1 - I - 0x01E0DA 07:A0CA: 25        .byte $25   ; 
- D 1 - I - 0x01E0DB 07:A0CB: 3B        .byte $3B   ; 
- D 1 - I - 0x01E0DC 07:A0CC: 26        .byte $26   ; 
- D 1 - I - 0x01E0DD 07:A0CD: 25        .byte $25   ; 
- D 1 - I - 0x01E0DE 07:A0CE: 26        .byte $26   ; 
- D 1 - I - 0x01E0DF 07:A0CF: 25        .byte $25   ; 
- D 1 - I - 0x01E0E0 07:A0D0: 57        .byte $57   ; 
- D 1 - I - 0x01E0E1 07:A0D1: 29        .byte $29   ; 
- D 1 - I - 0x01E0E2 07:A0D2: 11        .byte $11   ; 
- D 1 - I - 0x01E0E3 07:A0D3: 56        .byte $56   ; 
- D 1 - I - 0x01E0E4 07:A0D4: 2A        .byte $2A   ; 
- D 1 - I - 0x01E0E5 07:A0D5: 43        .byte $43   ; 
- D 1 - I - 0x01E0E6 07:A0D6: 45        .byte $45   ; 
- D 1 - I - 0x01E0E7 07:A0D7: 45        .byte $45   ; 
- D 1 - I - 0x01E0E8 07:A0D8: 36        .byte $36   ; 
- D 1 - I - 0x01E0E9 07:A0D9: 12        .byte $12   ; 
- D 1 - I - 0x01E0EA 07:A0DA: 15        .byte $15   ; 
- D 1 - I - 0x01E0EB 07:A0DB: 52        .byte $52   ; 
- D 1 - I - 0x01E0EC 07:A0DC: 10        .byte $10   ; 
- D 1 - I - 0x01E0ED 07:A0DD: 44        .byte $44   ; 
- D 1 - I - 0x01E0EE 07:A0DE: 12        .byte $12   ; 
- D 1 - I - 0x01E0EF 07:A0DF: 49        .byte $49   ; 
- D 1 - I - 0x01E0F0 07:A0E0: 57        .byte $57   ; 
- D 1 - I - 0x01E0F1 07:A0E1: 45        .byte $45   ; 
- D 1 - I - 0x01E0F2 07:A0E2: 00        .byte $00   ; 
- D 1 - I - 0x01E0F3 07:A0E3: 56        .byte $56   ; 
- D 1 - I - 0x01E0F4 07:A0E4: 00        .byte $00   ; 
- D 1 - I - 0x01E0F5 07:A0E5: 56        .byte $56   ; 
- D 1 - I - 0x01E0F6 07:A0E6: 33        .byte $33   ; 
- D 1 - I - 0x01E0F7 07:A0E7: 45        .byte $45   ; 
- D 1 - I - 0x01E0F8 07:A0E8: 52        .byte $52   ; 
- D 1 - I - 0x01E0F9 07:A0E9: 53        .byte $53   ; 
- D 1 - I - 0x01E0FA 07:A0EA: 00        .byte $00   ; 
- D 1 - I - 0x01E0FB 07:A0EB: 52        .byte $52   ; 
- D 1 - I - 0x01E0FC 07:A0EC: 00        .byte $00   ; 
- D 1 - I - 0x01E0FD 07:A0ED: 57        .byte $57   ; 
- D 1 - I - 0x01E0FE 07:A0EE: 00        .byte $00   ; 
- D 1 - I - 0x01E0FF 07:A0EF: 4B        .byte $4B   ; 
- D 1 - I - 0x01E100 07:A0F0: 00        .byte $00   ; 
- D 1 - I - 0x01E101 07:A0F1: 30        .byte $30   ; 
- D 1 - I - 0x01E102 07:A0F2: 30        .byte $30   ; 
- D 1 - I - 0x01E103 07:A0F3: 30        .byte $30   ; 
- D 1 - I - 0x01E104 07:A0F4: 30        .byte $30   ; 
- D 1 - I - 0x01E105 07:A0F5: 30        .byte $30   ; 
- D 1 - I - 0x01E106 07:A0F6: 30        .byte $30   ; 
- D 1 - I - 0x01E107 07:A0F7: 30        .byte $30   ; 
- D 1 - I - 0x01E108 07:A0F8: 30        .byte $30   ; 
- D 1 - I - 0x01E109 07:A0F9: 17        .byte $17   ; 
- D 1 - I - 0x01E10A 07:A0FA: 00        .byte $00   ; 
- D 1 - I - 0x01E10B 07:A0FB: 17        .byte $17   ; 
- D 1 - I - 0x01E10C 07:A0FC: 33        .byte $33   ; 
- D 1 - I - 0x01E10D 07:A0FD: 17        .byte $17   ; 
- D 1 - I - 0x01E10E 07:A0FE: 53        .byte $53   ; 
- D 1 - I - 0x01E10F 07:A0FF: 17        .byte $17   ; 
- D 1 - I - 0x01E110 07:A100: 30        .byte $30   ; 
- D 1 - I - 0x01E111 07:A101: 1B        .byte $1B   ; 
- D 1 - I - 0x01E112 07:A102: 32        .byte $32   ; 
- D 1 - I - 0x01E113 07:A103: 1B        .byte $1B   ; 
- D 1 - I - 0x01E114 07:A104: 00        .byte $00   ; 
- D 1 - I - 0x01E115 07:A105: 1B        .byte $1B   ; 
- D 1 - I - 0x01E116 07:A106: 37        .byte $37   ; 
- D 1 - I - 0x01E117 07:A107: 33        .byte $33   ; 
- D 1 - I - 0x01E118 07:A108: 30        .byte $30   ; 
- D 1 - I - 0x01E119 07:A109: 3E        .byte $3E   ; 
- D 1 - I - 0x01E11A 07:A10A: 53        .byte $53   ; 
- D 1 - I - 0x01E11B 07:A10B: 33        .byte $33   ; 
- D 1 - I - 0x01E11C 07:A10C: 00        .byte $00   ; 
- D 1 - I - 0x01E11D 07:A10D: 3F        .byte $3F   ; 
- D 1 - I - 0x01E11E 07:A10E: 57        .byte $57   ; 
- D 1 - I - 0x01E11F 07:A10F: 5D        .byte $5D   ; 
- D 1 - I - 0x01E120 07:A110: 30        .byte $30   ; 
- D 1 - I - 0x01E121 07:A111: 00        .byte $00   ; 
- D 1 - I - 0x01E122 07:A112: 57        .byte $57   ; 
- D 1 - I - 0x01E123 07:A113: 00        .byte $00   ; 
- D 1 - I - 0x01E124 07:A114: 00        .byte $00   ; 
- D 1 - I - 0x01E125 07:A115: 53        .byte $53   ; 
- D 1 - I - 0x01E126 07:A116: 52        .byte $52   ; 
- D 1 - I - 0x01E127 07:A117: 57        .byte $57   ; 
- D 1 - I - 0x01E128 07:A118: 30        .byte $30   ; 
- D 1 - I - 0x01E129 07:A119: 00        .byte $00   ; 
- D 1 - I - 0x01E12A 07:A11A: 57        .byte $57   ; 
- D 1 - I - 0x01E12B 07:A11B: 00        .byte $00   ; 
- D 1 - I - 0x01E12C 07:A11C: 00        .byte $00   ; 
- D 1 - I - 0x01E12D 07:A11D: 57        .byte $57   ; 
- D 1 - I - 0x01E12E 07:A11E: 00        .byte $00   ; 
- D 1 - I - 0x01E12F 07:A11F: 57        .byte $57   ; 
- D 1 - I - 0x01E130 07:A120: 30        .byte $30   ; 



_off047_A121_08_02_00:
- D 1 - I - 0x01E131 07:A121: 03        .byte $03   ; 
- D 1 - I - 0x01E132 07:A122: 24        .byte $24   ; 
- D 1 - I - 0x01E133 07:A123: 57        .byte $57   ; 
- D 1 - I - 0x01E134 07:A124: 37        .byte $37   ; 
- D 1 - I - 0x01E135 07:A125: 27        .byte $27   ; 
- D 1 - I - 0x01E136 07:A126: 27        .byte $27   ; 
- D 1 - I - 0x01E137 07:A127: 24        .byte $24   ; 
- D 1 - I - 0x01E138 07:A128: 25        .byte $25   ; 
- D 1 - I - 0x01E139 07:A129: 4B        .byte $4B   ; 
- D 1 - I - 0x01E13A 07:A12A: 26        .byte $26   ; 
- D 1 - I - 0x01E13B 07:A12B: 37        .byte $37   ; 
- D 1 - I - 0x01E13C 07:A12C: 57        .byte $57   ; 
- D 1 - I - 0x01E13D 07:A12D: 2A        .byte $2A   ; 
- D 1 - I - 0x01E13E 07:A12E: 2A        .byte $2A   ; 
- D 1 - I - 0x01E13F 07:A12F: 11        .byte $11   ; 
- D 1 - I - 0x01E140 07:A130: 28        .byte $28   ; 
- D 1 - I - 0x01E141 07:A131: 00        .byte $00   ; 
- D 1 - I - 0x01E142 07:A132: 45        .byte $45   ; 
- D 1 - I - 0x01E143 07:A133: 36        .byte $36   ; 
- D 1 - I - 0x01E144 07:A134: 48        .byte $48   ; 
- D 1 - I - 0x01E145 07:A135: 2B        .byte $2B   ; 
- D 1 - I - 0x01E146 07:A136: 12        .byte $12   ; 
- D 1 - I - 0x01E147 07:A137: 15        .byte $15   ; 
- D 1 - I - 0x01E148 07:A138: 45        .byte $45   ; 
- D 1 - I - 0x01E149 07:A139: 45        .byte $45   ; 
- D 1 - I - 0x01E14A 07:A13A: 4B        .byte $4B   ; 
- D 1 - I - 0x01E14B 07:A13B: 48        .byte $48   ; 
- D 1 - I - 0x01E14C 07:A13C: 36        .byte $36   ; 
- D 1 - I - 0x01E14D 07:A13D: 04        .byte $04   ; 
- D 1 - I - 0x01E14E 07:A13E: 00        .byte $00   ; 
- D 1 - I - 0x01E14F 07:A13F: 14        .byte $14   ; 
- D 1 - I - 0x01E150 07:A140: 4B        .byte $4B   ; 
- D 1 - I - 0x01E151 07:A141: 4B        .byte $4B   ; 
- D 1 - I - 0x01E152 07:A142: 51        .byte $51   ; 
- D 1 - I - 0x01E153 07:A143: 56        .byte $56   ; 
- D 1 - I - 0x01E154 07:A144: 56        .byte $56   ; 
- D 1 - I - 0x01E155 07:A145: 33        .byte $33   ; 
- D 1 - I - 0x01E156 07:A146: 33        .byte $33   ; 
- D 1 - I - 0x01E157 07:A147: 45        .byte $45   ; 
- D 1 - I - 0x01E158 07:A148: 51        .byte $51   ; 
- D 1 - I - 0x01E159 07:A149: 53        .byte $53   ; 
- D 1 - I - 0x01E15A 07:A14A: 4E        .byte $4E   ; 
- D 1 - I - 0x01E15B 07:A14B: 4C        .byte $4C   ; 
- D 1 - I - 0x01E15C 07:A14C: 4C        .byte $4C   ; 
- D 1 - I - 0x01E15D 07:A14D: 35        .byte $35   ; 
- D 1 - I - 0x01E15E 07:A14E: 35        .byte $35   ; 
- D 1 - I - 0x01E15F 07:A14F: 4E        .byte $4E   ; 
- D 1 - I - 0x01E160 07:A150: 4D        .byte $4D   ; 
- D 1 - I - 0x01E161 07:A151: 4C        .byte $4C   ; 
- D 1 - I - 0x01E162 07:A152: 57        .byte $57   ; 
- D 1 - I - 0x01E163 07:A153: 51        .byte $51   ; 
- D 1 - I - 0x01E164 07:A154: 51        .byte $51   ; 
- D 1 - I - 0x01E165 07:A155: 51        .byte $51   ; 
- D 1 - I - 0x01E166 07:A156: 51        .byte $51   ; 
- D 1 - I - 0x01E167 07:A157: 51        .byte $51   ; 
- D 1 - I - 0x01E168 07:A158: 51        .byte $51   ; 
- D 1 - I - 0x01E169 07:A159: 51        .byte $51   ; 
- D 1 - I - 0x01E16A 07:A15A: 57        .byte $57   ; 
- D 1 - I - 0x01E16B 07:A15B: 00        .byte $00   ; 
- D 1 - I - 0x01E16C 07:A15C: 00        .byte $00   ; 
- D 1 - I - 0x01E16D 07:A15D: 00        .byte $00   ; 
- D 1 - I - 0x01E16E 07:A15E: 32        .byte $32   ; 
- D 1 - I - 0x01E16F 07:A15F: 5C        .byte $5C   ; 
- D 1 - I - 0x01E170 07:A160: 32        .byte $32   ; 
- D 1 - I - 0x01E171 07:A161: 5C        .byte $5C   ; 
- D 1 - I - 0x01E172 07:A162: 36        .byte $36   ; 
- D 1 - I - 0x01E173 07:A163: 00        .byte $00   ; 
- D 1 - I - 0x01E174 07:A164: 00        .byte $00   ; 
- D 1 - I - 0x01E175 07:A165: 5D        .byte $5D   ; 
- D 1 - I - 0x01E176 07:A166: 17        .byte $17   ; 
- D 1 - I - 0x01E177 07:A167: 53        .byte $53   ; 
- D 1 - I - 0x01E178 07:A168: 17        .byte $17   ; 
- D 1 - I - 0x01E179 07:A169: 53        .byte $53   ; 
- D 1 - I - 0x01E17A 07:A16A: 57        .byte $57   ; 
- D 1 - I - 0x01E17B 07:A16B: 3E        .byte $3E   ; 
- D 1 - I - 0x01E17C 07:A16C: 32        .byte $32   ; 
- D 1 - I - 0x01E17D 07:A16D: 57        .byte $57   ; 
- D 1 - I - 0x01E17E 07:A16E: 1B        .byte $1B   ; 
- D 1 - I - 0x01E17F 07:A16F: 5C        .byte $5C   ; 
- D 1 - I - 0x01E180 07:A170: 1A        .byte $1A   ; 
- D 1 - I - 0x01E181 07:A171: 5C        .byte $5C   ; 
- D 1 - I - 0x01E182 07:A172: 57        .byte $57   ; 
- D 1 - I - 0x01E183 07:A173: 28        .byte $28   ; 
- D 1 - I - 0x01E184 07:A174: 30        .byte $30   ; 
- D 1 - I - 0x01E185 07:A175: 5C        .byte $5C   ; 
- D 1 - I - 0x01E186 07:A176: 30        .byte $30   ; 
- D 1 - I - 0x01E187 07:A177: 30        .byte $30   ; 
- D 1 - I - 0x01E188 07:A178: 33        .byte $33   ; 
- D 1 - I - 0x01E189 07:A179: 53        .byte $53   ; 
- D 1 - I - 0x01E18A 07:A17A: 4C        .byte $4C   ; 
- D 1 - I - 0x01E18B 07:A17B: 35        .byte $35   ; 
- D 1 - I - 0x01E18C 07:A17C: 35        .byte $35   ; 
- D 1 - I - 0x01E18D 07:A17D: 4C        .byte $4C   ; 
- D 1 - I - 0x01E18E 07:A17E: 35        .byte $35   ; 
- D 1 - I - 0x01E18F 07:A17F: 4C        .byte $4C   ; 
- D 1 - I - 0x01E190 07:A180: 35        .byte $35   ; 
- D 1 - I - 0x01E191 07:A181: 4C        .byte $4C   ; 
- D 1 - I - 0x01E192 07:A182: 51        .byte $51   ; 
- D 1 - I - 0x01E193 07:A183: 51        .byte $51   ; 
- D 1 - I - 0x01E194 07:A184: 51        .byte $51   ; 
- D 1 - I - 0x01E195 07:A185: 51        .byte $51   ; 
- D 1 - I - 0x01E196 07:A186: 51        .byte $51   ; 
- D 1 - I - 0x01E197 07:A187: 51        .byte $51   ; 
- D 1 - I - 0x01E198 07:A188: 30        .byte $30   ; 
- D 1 - I - 0x01E199 07:A189: 30        .byte $30   ; 
- D 1 - I - 0x01E19A 07:A18A: 32        .byte $32   ; 
- D 1 - I - 0x01E19B 07:A18B: 5C        .byte $5C   ; 
- D 1 - I - 0x01E19C 07:A18C: 32        .byte $32   ; 
- D 1 - I - 0x01E19D 07:A18D: 32        .byte $32   ; 
- D 1 - I - 0x01E19E 07:A18E: 32        .byte $32   ; 
- D 1 - I - 0x01E19F 07:A18F: 32        .byte $32   ; 
- D 1 - I - 0x01E1A0 07:A190: 30        .byte $30   ; 
- D 1 - I - 0x01E1A1 07:A191: 00        .byte $00   ; 
- D 1 - I - 0x01E1A2 07:A192: 17        .byte $17   ; 
- D 1 - I - 0x01E1A3 07:A193: 53        .byte $53   ; 
- D 1 - I - 0x01E1A4 07:A194: 17        .byte $17   ; 
- D 1 - I - 0x01E1A5 07:A195: 5D        .byte $5D   ; 
- D 1 - I - 0x01E1A6 07:A196: 17        .byte $17   ; 
- D 1 - I - 0x01E1A7 07:A197: 00        .byte $00   ; 
- D 1 - I - 0x01E1A8 07:A198: 53        .byte $53   ; 
- D 1 - I - 0x01E1A9 07:A199: 00        .byte $00   ; 
- D 1 - I - 0x01E1AA 07:A19A: 1B        .byte $1B   ; 
- D 1 - I - 0x01E1AB 07:A19B: 5C        .byte $5C   ; 
- D 1 - I - 0x01E1AC 07:A19C: 1A        .byte $1A   ; 
- D 1 - I - 0x01E1AD 07:A19D: 5C        .byte $5C   ; 
- D 1 - I - 0x01E1AE 07:A19E: 1B        .byte $1B   ; 
- D 1 - I - 0x01E1AF 07:A19F: 00        .byte $00   ; 
- D 1 - I - 0x01E1B0 07:A1A0: 57        .byte $57   ; 
- D 1 - I - 0x01E1B1 07:A1A1: 00        .byte $00   ; 
- D 1 - I - 0x01E1B2 07:A1A2: 28        .byte $28   ; 
- D 1 - I - 0x01E1B3 07:A1A3: 53        .byte $53   ; 
- D 1 - I - 0x01E1B4 07:A1A4: 28        .byte $28   ; 
- D 1 - I - 0x01E1B5 07:A1A5: 56        .byte $56   ; 
- D 1 - I - 0x01E1B6 07:A1A6: 20        .byte $20   ; 
- D 1 - I - 0x01E1B7 07:A1A7: 32        .byte $32   ; 
- D 1 - I - 0x01E1B8 07:A1A8: 5C        .byte $5C   ; 
- D 1 - I - 0x01E1B9 07:A1A9: 32        .byte $32   ; 
- D 1 - I - 0x01E1BA 07:A1AA: 35        .byte $35   ; 
- D 1 - I - 0x01E1BB 07:A1AB: 4C        .byte $4C   ; 
- D 1 - I - 0x01E1BC 07:A1AC: 35        .byte $35   ; 
- D 1 - I - 0x01E1BD 07:A1AD: 4C        .byte $4C   ; 
- D 1 - I - 0x01E1BE 07:A1AE: 35        .byte $35   ; 
- D 1 - I - 0x01E1BF 07:A1AF: 35        .byte $35   ; 
- D 1 - I - 0x01E1C0 07:A1B0: 4C        .byte $4C   ; 
- D 1 - I - 0x01E1C1 07:A1B1: 35        .byte $35   ; 
- D 1 - I - 0x01E1C2 07:A1B2: 51        .byte $51   ; 
- D 1 - I - 0x01E1C3 07:A1B3: 53        .byte $53   ; 
- D 1 - I - 0x01E1C4 07:A1B4: 4B        .byte $4B   ; 
- D 1 - I - 0x01E1C5 07:A1B5: 22        .byte $22   ; 
- D 1 - I - 0x01E1C6 07:A1B6: 21        .byte $21   ; 
- D 1 - I - 0x01E1C7 07:A1B7: 24        .byte $24   ; 
- D 1 - I - 0x01E1C8 07:A1B8: 21        .byte $21   ; 
- D 1 - I - 0x01E1C9 07:A1B9: 21        .byte $21   ; 
- D 1 - I - 0x01E1CA 07:A1BA: 00        .byte $00   ; 
- D 1 - I - 0x01E1CB 07:A1BB: 57        .byte $57   ; 
- D 1 - I - 0x01E1CC 07:A1BC: 27        .byte $27   ; 
- D 1 - I - 0x01E1CD 07:A1BD: 26        .byte $26   ; 
- D 1 - I - 0x01E1CE 07:A1BE: 25        .byte $25   ; 
- D 1 - I - 0x01E1CF 07:A1BF: 26        .byte $26   ; 
- D 1 - I - 0x01E1D0 07:A1C0: 25        .byte $25   ; 
- D 1 - I - 0x01E1D1 07:A1C1: 27        .byte $27   ; 
- D 1 - I - 0x01E1D2 07:A1C2: 00        .byte $00   ; 
- D 1 - I - 0x01E1D3 07:A1C3: 44        .byte $44   ; 
- D 1 - I - 0x01E1D4 07:A1C4: 2A        .byte $2A   ; 
- D 1 - I - 0x01E1D5 07:A1C5: 2A        .byte $2A   ; 
- D 1 - I - 0x01E1D6 07:A1C6: 29        .byte $29   ; 
- D 1 - I - 0x01E1D7 07:A1C7: 29        .byte $29   ; 
- D 1 - I - 0x01E1D8 07:A1C8: 2A        .byte $2A   ; 
- D 1 - I - 0x01E1D9 07:A1C9: 28        .byte $28   ; 
- D 1 - I - 0x01E1DA 07:A1CA: 45        .byte $45   ; 
- D 1 - I - 0x01E1DB 07:A1CB: 48        .byte $48   ; 
- D 1 - I - 0x01E1DC 07:A1CC: 39        .byte $39   ; 
- D 1 - I - 0x01E1DD 07:A1CD: 39        .byte $39   ; 
- D 1 - I - 0x01E1DE 07:A1CE: 2B        .byte $2B   ; 
- D 1 - I - 0x01E1DF 07:A1CF: 2B        .byte $2B   ; 
- D 1 - I - 0x01E1E0 07:A1D0: 29        .byte $29   ; 
- D 1 - I - 0x01E1E1 07:A1D1: 29        .byte $29   ; 
- D 1 - I - 0x01E1E2 07:A1D2: 4B        .byte $4B   ; 
- D 1 - I - 0x01E1E3 07:A1D3: 4B        .byte $4B   ; 
- D 1 - I - 0x01E1E4 07:A1D4: 41        .byte $41   ; 
- D 1 - I - 0x01E1E5 07:A1D5: 42        .byte $42   ; 
- D 1 - I - 0x01E1E6 07:A1D6: 2B        .byte $2B   ; 
- D 1 - I - 0x01E1E7 07:A1D7: 45        .byte $45   ; 
- D 1 - I - 0x01E1E8 07:A1D8: 45        .byte $45   ; 
- D 1 - I - 0x01E1E9 07:A1D9: 30        .byte $30   ; 
- D 1 - I - 0x01E1EA 07:A1DA: 4E        .byte $4E   ; 
- D 1 - I - 0x01E1EB 07:A1DB: 4C        .byte $4C   ; 
- D 1 - I - 0x01E1EC 07:A1DC: 4C        .byte $4C   ; 
- D 1 - I - 0x01E1ED 07:A1DD: 4C        .byte $4C   ; 
- D 1 - I - 0x01E1EE 07:A1DE: 2C        .byte $2C   ; 
- D 1 - I - 0x01E1EF 07:A1DF: 4E        .byte $4E   ; 
- D 1 - I - 0x01E1F0 07:A1E0: 4D        .byte $4D   ; 
- D 1 - I - 0x01E1F1 07:A1E1: 30        .byte $30   ; 



_off047_A1E2_08_01_00:
- D 1 - I - 0x01E1F2 07:A1E2: 04        .byte $04   ; 
- D 1 - I - 0x01E1F3 07:A1E3: 30        .byte $30   ; 
- D 1 - I - 0x01E1F4 07:A1E4: 22        .byte $22   ; 
- D 1 - I - 0x01E1F5 07:A1E5: 23        .byte $23   ; 
- D 1 - I - 0x01E1F6 07:A1E6: 22        .byte $22   ; 
- D 1 - I - 0x01E1F7 07:A1E7: 21        .byte $21   ; 
- D 1 - I - 0x01E1F8 07:A1E8: 24        .byte $24   ; 
- D 1 - I - 0x01E1F9 07:A1E9: 21        .byte $21   ; 
- D 1 - I - 0x01E1FA 07:A1EA: 22        .byte $22   ; 
- D 1 - I - 0x01E1FB 07:A1EB: 30        .byte $30   ; 
- D 1 - I - 0x01E1FC 07:A1EC: 2A        .byte $2A   ; 
- D 1 - I - 0x01E1FD 07:A1ED: 27        .byte $27   ; 
- D 1 - I - 0x01E1FE 07:A1EE: 28        .byte $28   ; 
- D 1 - I - 0x01E1FF 07:A1EF: 25        .byte $25   ; 
- D 1 - I - 0x01E200 07:A1F0: 00        .byte $00   ; 
- D 1 - I - 0x01E201 07:A1F1: 25        .byte $25   ; 
- D 1 - I - 0x01E202 07:A1F2: 00        .byte $00   ; 
- D 1 - I - 0x01E203 07:A1F3: 38        .byte $38   ; 
- D 1 - I - 0x01E204 07:A1F4: 16        .byte $16   ; 
- D 1 - I - 0x01E205 07:A1F5: 2A        .byte $2A   ; 
- D 1 - I - 0x01E206 07:A1F6: 11        .byte $11   ; 
- D 1 - I - 0x01E207 07:A1F7: 32        .byte $32   ; 
- D 1 - I - 0x01E208 07:A1F8: 32        .byte $32   ; 
- D 1 - I - 0x01E209 07:A1F9: 32        .byte $32   ; 
- D 1 - I - 0x01E20A 07:A1FA: 32        .byte $32   ; 
- D 1 - I - 0x01E20B 07:A1FB: 3C        .byte $3C   ; 
- D 1 - I - 0x01E20C 07:A1FC: 00        .byte $00   ; 
- D 1 - I - 0x01E20D 07:A1FD: 10        .byte $10   ; 
- D 1 - I - 0x01E20E 07:A1FE: 15        .byte $15   ; 
- D 1 - I - 0x01E20F 07:A1FF: 41        .byte $41   ; 
- D 1 - I - 0x01E210 07:A200: 0B        .byte $0B   ; 
- D 1 - I - 0x01E211 07:A201: 0B        .byte $0B   ; 
- D 1 - I - 0x01E212 07:A202: 42        .byte $42   ; 
- D 1 - I - 0x01E213 07:A203: 30        .byte $30   ; 
- D 1 - I - 0x01E214 07:A204: 45        .byte $45   ; 
- D 1 - I - 0x01E215 07:A205: 00        .byte $00   ; 
- D 1 - I - 0x01E216 07:A206: 45        .byte $45   ; 
- D 1 - I - 0x01E217 07:A207: 48        .byte $48   ; 
- D 1 - I - 0x01E218 07:A208: 0C        .byte $0C   ; 
- D 1 - I - 0x01E219 07:A209: 0C        .byte $0C   ; 
- D 1 - I - 0x01E21A 07:A20A: 57        .byte $57   ; 
- D 1 - I - 0x01E21B 07:A20B: 30        .byte $30   ; 
- D 1 - I - 0x01E21C 07:A20C: 4C        .byte $4C   ; 
- D 1 - I - 0x01E21D 07:A20D: 4D        .byte $4D   ; 
- D 1 - I - 0x01E21E 07:A20E: 4E        .byte $4E   ; 
- D 1 - I - 0x01E21F 07:A20F: 4C        .byte $4C   ; 
- D 1 - I - 0x01E220 07:A210: 35        .byte $35   ; 
- D 1 - I - 0x01E221 07:A211: 35        .byte $35   ; 
- D 1 - I - 0x01E222 07:A212: 4C        .byte $4C   ; 
- D 1 - I - 0x01E223 07:A213: 24        .byte $24   ; 
- D 1 - I - 0x01E224 07:A214: 22        .byte $22   ; 
- D 1 - I - 0x01E225 07:A215: 23        .byte $23   ; 
- D 1 - I - 0x01E226 07:A216: 22        .byte $22   ; 
- D 1 - I - 0x01E227 07:A217: 21        .byte $21   ; 
- D 1 - I - 0x01E228 07:A218: 24        .byte $24   ; 
- D 1 - I - 0x01E229 07:A219: 21        .byte $21   ; 
- D 1 - I - 0x01E22A 07:A21A: 22        .byte $22   ; 
- D 1 - I - 0x01E22B 07:A21B: 00        .byte $00   ; 
- D 1 - I - 0x01E22C 07:A21C: 25        .byte $25   ; 
- D 1 - I - 0x01E22D 07:A21D: 27        .byte $27   ; 
- D 1 - I - 0x01E22E 07:A21E: 26        .byte $26   ; 
- D 1 - I - 0x01E22F 07:A21F: 25        .byte $25   ; 
- D 1 - I - 0x01E230 07:A220: 26        .byte $26   ; 
- D 1 - I - 0x01E231 07:A221: 53        .byte $53   ; 
- D 1 - I - 0x01E232 07:A222: 00        .byte $00   ; 
- D 1 - I - 0x01E233 07:A223: 28        .byte $28   ; 
- D 1 - I - 0x01E234 07:A224: 32        .byte $32   ; 
- D 1 - I - 0x01E235 07:A225: 2A        .byte $2A   ; 
- D 1 - I - 0x01E236 07:A226: 29        .byte $29   ; 
- D 1 - I - 0x01E237 07:A227: 29        .byte $29   ; 
- D 1 - I - 0x01E238 07:A228: 12        .byte $12   ; 
- D 1 - I - 0x01E239 07:A229: 2D        .byte $2D   ; 
- D 1 - I - 0x01E23A 07:A22A: 28        .byte $28   ; 
- D 1 - I - 0x01E23B 07:A22B: 12        .byte $12   ; 
- D 1 - I - 0x01E23C 07:A22C: 4B        .byte $4B   ; 
- D 1 - I - 0x01E23D 07:A22D: 39        .byte $39   ; 
- D 1 - I - 0x01E23E 07:A22E: 31        .byte $31   ; 
- D 1 - I - 0x01E23F 07:A22F: 13        .byte $13   ; 
- D 1 - I - 0x01E240 07:A230: 3B        .byte $3B   ; 
- D 1 - I - 0x01E241 07:A231: 02        .byte $02   ; 
- D 1 - I - 0x01E242 07:A232: 03        .byte $03   ; 
- D 1 - I - 0x01E243 07:A233: 00        .byte $00   ; 
- D 1 - I - 0x01E244 07:A234: 41        .byte $41   ; 
- D 1 - I - 0x01E245 07:A235: 4B        .byte $4B   ; 
- D 1 - I - 0x01E246 07:A236: 45        .byte $45   ; 
- D 1 - I - 0x01E247 07:A237: 33        .byte $33   ; 
- D 1 - I - 0x01E248 07:A238: 05        .byte $05   ; 
- D 1 - I - 0x01E249 07:A239: 06        .byte $06   ; 
- D 1 - I - 0x01E24A 07:A23A: 07        .byte $07   ; 
- D 1 - I - 0x01E24B 07:A23B: 2C        .byte $2C   ; 
- D 1 - I - 0x01E24C 07:A23C: 4C        .byte $4C   ; 
- D 1 - I - 0x01E24D 07:A23D: 4E        .byte $4E   ; 
- D 1 - I - 0x01E24E 07:A23E: 4D        .byte $4D   ; 
- D 1 - I - 0x01E24F 07:A23F: 08        .byte $08   ; 
- D 1 - I - 0x01E250 07:A240: 09        .byte $09   ; 
- D 1 - I - 0x01E251 07:A241: 0A        .byte $0A   ; 
- D 1 - I - 0x01E252 07:A242: 35        .byte $35   ; 
- D 1 - I - 0x01E253 07:A243: 24        .byte $24   ; 
- D 1 - I - 0x01E254 07:A244: 22        .byte $22   ; 
- D 1 - I - 0x01E255 07:A245: 23        .byte $23   ; 
- D 1 - I - 0x01E256 07:A246: 22        .byte $22   ; 
- D 1 - I - 0x01E257 07:A247: 21        .byte $21   ; 
- D 1 - I - 0x01E258 07:A248: 24        .byte $24   ; 
- D 1 - I - 0x01E259 07:A249: 21        .byte $21   ; 
- D 1 - I - 0x01E25A 07:A24A: 22        .byte $22   ; 
- D 1 - I - 0x01E25B 07:A24B: 00        .byte $00   ; 
- D 1 - I - 0x01E25C 07:A24C: 25        .byte $25   ; 
- D 1 - I - 0x01E25D 07:A24D: 27        .byte $27   ; 
- D 1 - I - 0x01E25E 07:A24E: 26        .byte $26   ; 
- D 1 - I - 0x01E25F 07:A24F: 25        .byte $25   ; 
- D 1 - I - 0x01E260 07:A250: 26        .byte $26   ; 
- D 1 - I - 0x01E261 07:A251: 25        .byte $25   ; 
- D 1 - I - 0x01E262 07:A252: 26        .byte $26   ; 
- D 1 - I - 0x01E263 07:A253: 32        .byte $32   ; 
- D 1 - I - 0x01E264 07:A254: 2A        .byte $2A   ; 
- D 1 - I - 0x01E265 07:A255: 2A        .byte $2A   ; 
- D 1 - I - 0x01E266 07:A256: 2A        .byte $2A   ; 
- D 1 - I - 0x01E267 07:A257: 29        .byte $29   ; 
- D 1 - I - 0x01E268 07:A258: 2A        .byte $2A   ; 
- D 1 - I - 0x01E269 07:A259: 29        .byte $29   ; 
- D 1 - I - 0x01E26A 07:A25A: 11        .byte $11   ; 
- D 1 - I - 0x01E26B 07:A25B: 42        .byte $42   ; 
- D 1 - I - 0x01E26C 07:A25C: 31        .byte $31   ; 
- D 1 - I - 0x01E26D 07:A25D: 39        .byte $39   ; 
- D 1 - I - 0x01E26E 07:A25E: 02        .byte $02   ; 
- D 1 - I - 0x01E26F 07:A25F: 03        .byte $03   ; 
- D 1 - I - 0x01E270 07:A260: 40        .byte $40   ; 
- D 1 - I - 0x01E271 07:A261: 12        .byte $12   ; 
- D 1 - I - 0x01E272 07:A262: 32        .byte $32   ; 
- D 1 - I - 0x01E273 07:A263: 47        .byte $47   ; 
- D 1 - I - 0x01E274 07:A264: 33        .byte $33   ; 
- D 1 - I - 0x01E275 07:A265: 05        .byte $05   ; 
- D 1 - I - 0x01E276 07:A266: 06        .byte $06   ; 
- D 1 - I - 0x01E277 07:A267: 45        .byte $45   ; 
- D 1 - I - 0x01E278 07:A268: 36        .byte $36   ; 
- D 1 - I - 0x01E279 07:A269: 14        .byte $14   ; 
- D 1 - I - 0x01E27A 07:A26A: 53        .byte $53   ; 
- D 1 - I - 0x01E27B 07:A26B: 4C        .byte $4C   ; 
- D 1 - I - 0x01E27C 07:A26C: 08        .byte $08   ; 
- D 1 - I - 0x01E27D 07:A26D: 09        .byte $09   ; 
- D 1 - I - 0x01E27E 07:A26E: 0A        .byte $0A   ; 
- D 1 - I - 0x01E27F 07:A26F: 4E        .byte $4E   ; 
- D 1 - I - 0x01E280 07:A270: 4C        .byte $4C   ; 
- D 1 - I - 0x01E281 07:A271: 33        .byte $33   ; 
- D 1 - I - 0x01E282 07:A272: 4C        .byte $4C   ; 
- D 1 - I - 0x01E283 07:A273: 21        .byte $21   ; 
- D 1 - I - 0x01E284 07:A274: 21        .byte $21   ; 
- D 1 - I - 0x01E285 07:A275: 21        .byte $21   ; 
- D 1 - I - 0x01E286 07:A276: 22        .byte $22   ; 
- D 1 - I - 0x01E287 07:A277: 23        .byte $23   ; 
- D 1 - I - 0x01E288 07:A278: 22        .byte $22   ; 
- D 1 - I - 0x01E289 07:A279: 21        .byte $21   ; 
- D 1 - I - 0x01E28A 07:A27A: 24        .byte $24   ; 
- D 1 - I - 0x01E28B 07:A27B: 27        .byte $27   ; 
- D 1 - I - 0x01E28C 07:A27C: 24        .byte $24   ; 
- D 1 - I - 0x01E28D 07:A27D: 25        .byte $25   ; 
- D 1 - I - 0x01E28E 07:A27E: 26        .byte $26   ; 
- D 1 - I - 0x01E28F 07:A27F: 27        .byte $27   ; 
- D 1 - I - 0x01E290 07:A280: 26        .byte $26   ; 
- D 1 - I - 0x01E291 07:A281: 25        .byte $25   ; 
- D 1 - I - 0x01E292 07:A282: 28        .byte $28   ; 
- D 1 - I - 0x01E293 07:A283: 2A        .byte $2A   ; 
- D 1 - I - 0x01E294 07:A284: 11        .byte $11   ; 
- D 1 - I - 0x01E295 07:A285: 2A        .byte $2A   ; 
- D 1 - I - 0x01E296 07:A286: 29        .byte $29   ; 
- D 1 - I - 0x01E297 07:A287: 2A        .byte $2A   ; 
- D 1 - I - 0x01E298 07:A288: 40        .byte $40   ; 
- D 1 - I - 0x01E299 07:A289: 29        .byte $29   ; 
- D 1 - I - 0x01E29A 07:A28A: 40        .byte $40   ; 
- D 1 - I - 0x01E29B 07:A28B: 39        .byte $39   ; 
- D 1 - I - 0x01E29C 07:A28C: 15        .byte $15   ; 
- D 1 - I - 0x01E29D 07:A28D: 39        .byte $39   ; 
- D 1 - I - 0x01E29E 07:A28E: 39        .byte $39   ; 
- D 1 - I - 0x01E29F 07:A28F: 39        .byte $39   ; 
- D 1 - I - 0x01E2A0 07:A290: 47        .byte $47   ; 
- D 1 - I - 0x01E2A1 07:A291: 10        .byte $10   ; 
- D 1 - I - 0x01E2A2 07:A292: 57        .byte $57   ; 
- D 1 - I - 0x01E2A3 07:A293: 53        .byte $53   ; 
- D 1 - I - 0x01E2A4 07:A294: 00        .byte $00   ; 
- D 1 - I - 0x01E2A5 07:A295: 05        .byte $05   ; 
- D 1 - I - 0x01E2A6 07:A296: 06        .byte $06   ; 
- D 1 - I - 0x01E2A7 07:A297: 07        .byte $07   ; 
- D 1 - I - 0x01E2A8 07:A298: 53        .byte $53   ; 
- D 1 - I - 0x01E2A9 07:A299: 32        .byte $32   ; 
- D 1 - I - 0x01E2AA 07:A29A: 5C        .byte $5C   ; 
- D 1 - I - 0x01E2AB 07:A29B: 4C        .byte $4C   ; 
- D 1 - I - 0x01E2AC 07:A29C: 08        .byte $08   ; 
- D 1 - I - 0x01E2AD 07:A29D: 09        .byte $09   ; 
- D 1 - I - 0x01E2AE 07:A29E: 0A        .byte $0A   ; 
- D 1 - I - 0x01E2AF 07:A29F: 35        .byte $35   ; 
- D 1 - I - 0x01E2B0 07:A2A0: 4C        .byte $4C   ; 
- D 1 - I - 0x01E2B1 07:A2A1: 35        .byte $35   ; 
- D 1 - I - 0x01E2B2 07:A2A2: 4C        .byte $4C   ; 
- D 1 - I - 0x01E2B3 07:A2A3: 25        .byte $25   ; 
- D 1 - I - 0x01E2B4 07:A2A4: 25        .byte $25   ; 
- D 1 - I - 0x01E2B5 07:A2A5: 25        .byte $25   ; 
- D 1 - I - 0x01E2B6 07:A2A6: 27        .byte $27   ; 
- D 1 - I - 0x01E2B7 07:A2A7: 27        .byte $27   ; 
- D 1 - I - 0x01E2B8 07:A2A8: 21        .byte $21   ; 
- D 1 - I - 0x01E2B9 07:A2A9: 23        .byte $23   ; 
- D 1 - I - 0x01E2BA 07:A2AA: 00        .byte $00   ; 
- D 1 - I - 0x01E2BB 07:A2AB: 2A        .byte $2A   ; 
- D 1 - I - 0x01E2BC 07:A2AC: 2A        .byte $2A   ; 
- D 1 - I - 0x01E2BD 07:A2AD: 29        .byte $29   ; 
- D 1 - I - 0x01E2BE 07:A2AE: 2A        .byte $2A   ; 
- D 1 - I - 0x01E2BF 07:A2AF: 28        .byte $28   ; 
- D 1 - I - 0x01E2C0 07:A2B0: 27        .byte $27   ; 
- D 1 - I - 0x01E2C1 07:A2B1: 21        .byte $21   ; 
- D 1 - I - 0x01E2C2 07:A2B2: 23        .byte $23   ; 
- D 1 - I - 0x01E2C3 07:A2B3: 2B        .byte $2B   ; 
- D 1 - I - 0x01E2C4 07:A2B4: 01        .byte $01   ; 
- D 1 - I - 0x01E2C5 07:A2B5: 01        .byte $01   ; 
- D 1 - I - 0x01E2C6 07:A2B6: 01        .byte $01   ; 
- D 1 - I - 0x01E2C7 07:A2B7: 29        .byte $29   ; 
- D 1 - I - 0x01E2C8 07:A2B8: 28        .byte $28   ; 
- D 1 - I - 0x01E2C9 07:A2B9: 25        .byte $25   ; 
- D 1 - I - 0x01E2CA 07:A2BA: 27        .byte $27   ; 
- D 1 - I - 0x01E2CB 07:A2BB: 04        .byte $04   ; 
- D 1 - I - 0x01E2CC 07:A2BC: 0C        .byte $0C   ; 
- D 1 - I - 0x01E2CD 07:A2BD: 0C        .byte $0C   ; 
- D 1 - I - 0x01E2CE 07:A2BE: 0C        .byte $0C   ; 
- D 1 - I - 0x01E2CF 07:A2BF: 0D        .byte $0D   ; 
- D 1 - I - 0x01E2D0 07:A2C0: 13        .byte $13   ; 
- D 1 - I - 0x01E2D1 07:A2C1: 00        .byte $00   ; 
- D 1 - I - 0x01E2D2 07:A2C2: 00        .byte $00   ; 
- D 1 - I - 0x01E2D3 07:A2C3: 00        .byte $00   ; 
- D 1 - I - 0x01E2D4 07:A2C4: 45        .byte $45   ; 
- D 1 - I - 0x01E2D5 07:A2C5: 33        .byte $33   ; 
- D 1 - I - 0x01E2D6 07:A2C6: 33        .byte $33   ; 
- D 1 - I - 0x01E2D7 07:A2C7: 56        .byte $56   ; 
- D 1 - I - 0x01E2D8 07:A2C8: 56        .byte $56   ; 
- D 1 - I - 0x01E2D9 07:A2C9: 33        .byte $33   ; 
- D 1 - I - 0x01E2DA 07:A2CA: 30        .byte $30   ; 
- D 1 - I - 0x01E2DB 07:A2CB: 2C        .byte $2C   ; 
- D 1 - I - 0x01E2DC 07:A2CC: 4E        .byte $4E   ; 
- D 1 - I - 0x01E2DD 07:A2CD: 4D        .byte $4D   ; 
- D 1 - I - 0x01E2DE 07:A2CE: 35        .byte $35   ; 
- D 1 - I - 0x01E2DF 07:A2CF: 4C        .byte $4C   ; 
- D 1 - I - 0x01E2E0 07:A2D0: 4C        .byte $4C   ; 
- D 1 - I - 0x01E2E1 07:A2D1: 35        .byte $35   ; 
- D 1 - I - 0x01E2E2 07:A2D2: 30        .byte $30   ; 



_off047_A2D3_08_00_01:
- D 1 - I - 0x01E2E3 07:A2D3: 04        .byte $04   ; 
- D 1 - I - 0x01E2E4 07:A2D4: 30        .byte $30   ; 
- D 1 - I - 0x01E2E5 07:A2D5: 21        .byte $21   ; 
- D 1 - I - 0x01E2E6 07:A2D6: 22        .byte $22   ; 
- D 1 - I - 0x01E2E7 07:A2D7: 23        .byte $23   ; 
- D 1 - I - 0x01E2E8 07:A2D8: 21        .byte $21   ; 
- D 1 - I - 0x01E2E9 07:A2D9: 21        .byte $21   ; 
- D 1 - I - 0x01E2EA 07:A2DA: 21        .byte $21   ; 
- D 1 - I - 0x01E2EB 07:A2DB: 22        .byte $22   ; 
- D 1 - I - 0x01E2EC 07:A2DC: 30        .byte $30   ; 
- D 1 - I - 0x01E2ED 07:A2DD: 25        .byte $25   ; 
- D 1 - I - 0x01E2EE 07:A2DE: 2A        .byte $2A   ; 
- D 1 - I - 0x01E2EF 07:A2DF: 27        .byte $27   ; 
- D 1 - I - 0x01E2F0 07:A2E0: 27        .byte $27   ; 
- D 1 - I - 0x01E2F1 07:A2E1: 24        .byte $24   ; 
- D 1 - I - 0x01E2F2 07:A2E2: 25        .byte $25   ; 
- D 1 - I - 0x01E2F3 07:A2E3: 00        .byte $00   ; 
- D 1 - I - 0x01E2F4 07:A2E4: 38        .byte $38   ; 
- D 1 - I - 0x01E2F5 07:A2E5: 2A        .byte $2A   ; 
- D 1 - I - 0x01E2F6 07:A2E6: 11        .byte $11   ; 
- D 1 - I - 0x01E2F7 07:A2E7: 2A        .byte $2A   ; 
- D 1 - I - 0x01E2F8 07:A2E8: 40        .byte $40   ; 
- D 1 - I - 0x01E2F9 07:A2E9: 2A        .byte $2A   ; 
- D 1 - I - 0x01E2FA 07:A2EA: 2A        .byte $2A   ; 
- D 1 - I - 0x01E2FB 07:A2EB: 28        .byte $28   ; 
- D 1 - I - 0x01E2FC 07:A2EC: 3C        .byte $3C   ; 
- D 1 - I - 0x01E2FD 07:A2ED: 12        .byte $12   ; 
- D 1 - I - 0x01E2FE 07:A2EE: 15        .byte $15   ; 
- D 1 - I - 0x01E2FF 07:A2EF: 33        .byte $33   ; 
- D 1 - I - 0x01E300 07:A2F0: 36        .byte $36   ; 
- D 1 - I - 0x01E301 07:A2F1: 10        .byte $10   ; 
- D 1 - I - 0x01E302 07:A2F2: 16        .byte $16   ; 
- D 1 - I - 0x01E303 07:A2F3: 11        .byte $11   ; 
- D 1 - I - 0x01E304 07:A2F4: 30        .byte $30   ; 
- D 1 - I - 0x01E305 07:A2F5: 45        .byte $45   ; 
- D 1 - I - 0x01E306 07:A2F6: 45        .byte $45   ; 
- D 1 - I - 0x01E307 07:A2F7: 00        .byte $00   ; 
- D 1 - I - 0x01E308 07:A2F8: 57        .byte $57   ; 
- D 1 - I - 0x01E309 07:A2F9: 45        .byte $45   ; 
- D 1 - I - 0x01E30A 07:A2FA: 45        .byte $45   ; 
- D 1 - I - 0x01E30B 07:A2FB: 00        .byte $00   ; 
- D 1 - I - 0x01E30C 07:A2FC: 30        .byte $30   ; 
- D 1 - I - 0x01E30D 07:A2FD: 4E        .byte $4E   ; 
- D 1 - I - 0x01E30E 07:A2FE: 4E        .byte $4E   ; 
- D 1 - I - 0x01E30F 07:A2FF: 4D        .byte $4D   ; 
- D 1 - I - 0x01E310 07:A300: 4C        .byte $4C   ; 
- D 1 - I - 0x01E311 07:A301: 4E        .byte $4E   ; 
- D 1 - I - 0x01E312 07:A302: 4E        .byte $4E   ; 
- D 1 - I - 0x01E313 07:A303: 2E        .byte $2E   ; 
- D 1 - I - 0x01E314 07:A304: 21        .byte $21   ; 
- D 1 - I - 0x01E315 07:A305: 57        .byte $57   ; 
- D 1 - I - 0x01E316 07:A306: 24        .byte $24   ; 
- D 1 - I - 0x01E317 07:A307: 22        .byte $22   ; 
- D 1 - I - 0x01E318 07:A308: 23        .byte $23   ; 
- D 1 - I - 0x01E319 07:A309: 21        .byte $21   ; 
- D 1 - I - 0x01E31A 07:A30A: 23        .byte $23   ; 
- D 1 - I - 0x01E31B 07:A30B: 23        .byte $23   ; 
- D 1 - I - 0x01E31C 07:A30C: 25        .byte $25   ; 
- D 1 - I - 0x01E31D 07:A30D: 57        .byte $57   ; 
- D 1 - I - 0x01E31E 07:A30E: 4B        .byte $4B   ; 
- D 1 - I - 0x01E31F 07:A30F: 4B        .byte $4B   ; 
- D 1 - I - 0x01E320 07:A310: 4B        .byte $4B   ; 
- D 1 - I - 0x01E321 07:A311: 4B        .byte $4B   ; 
- D 1 - I - 0x01E322 07:A312: 4B        .byte $4B   ; 
- D 1 - I - 0x01E323 07:A313: 4B        .byte $4B   ; 
- D 1 - I - 0x01E324 07:A314: 2A        .byte $2A   ; 
- D 1 - I - 0x01E325 07:A315: 57        .byte $57   ; 
- D 1 - I - 0x01E326 07:A316: 28        .byte $28   ; 
- D 1 - I - 0x01E327 07:A317: 00        .byte $00   ; 
- D 1 - I - 0x01E328 07:A318: 00        .byte $00   ; 
- D 1 - I - 0x01E329 07:A319: 17        .byte $17   ; 
- D 1 - I - 0x01E32A 07:A31A: 51        .byte $51   ; 
- D 1 - I - 0x01E32B 07:A31B: 51        .byte $51   ; 
- D 1 - I - 0x01E32C 07:A31C: 12        .byte $12   ; 
- D 1 - I - 0x01E32D 07:A31D: 57        .byte $57   ; 
- D 1 - I - 0x01E32E 07:A31E: 56        .byte $56   ; 
- D 1 - I - 0x01E32F 07:A31F: 33        .byte $33   ; 
- D 1 - I - 0x01E330 07:A320: 3A        .byte $3A   ; 
- D 1 - I - 0x01E331 07:A321: 1B        .byte $1B   ; 
- D 1 - I - 0x01E332 07:A322: 53        .byte $53   ; 
- D 1 - I - 0x01E333 07:A323: 00        .byte $00   ; 
- D 1 - I - 0x01E334 07:A324: 33        .byte $33   ; 
- D 1 - I - 0x01E335 07:A325: 56        .byte $56   ; 
- D 1 - I - 0x01E336 07:A326: 57        .byte $57   ; 
- D 1 - I - 0x01E337 07:A327: 00        .byte $00   ; 
- D 1 - I - 0x01E338 07:A328: 3B        .byte $3B   ; 
- D 1 - I - 0x01E339 07:A329: 33        .byte $33   ; 
- D 1 - I - 0x01E33A 07:A32A: 56        .byte $56   ; 
- D 1 - I - 0x01E33B 07:A32B: 33        .byte $33   ; 
- D 1 - I - 0x01E33C 07:A32C: 2E        .byte $2E   ; 
- D 1 - I - 0x01E33D 07:A32D: 57        .byte $57   ; 
- D 1 - I - 0x01E33E 07:A32E: 57        .byte $57   ; 
- D 1 - I - 0x01E33F 07:A32F: 3B        .byte $3B   ; 
- D 1 - I - 0x01E340 07:A330: 00        .byte $00   ; 
- D 1 - I - 0x01E341 07:A331: 00        .byte $00   ; 
- D 1 - I - 0x01E342 07:A332: 57        .byte $57   ; 
- D 1 - I - 0x01E343 07:A333: 00        .byte $00   ; 
- D 1 - I - 0x01E344 07:A334: 30        .byte $30   ; 
- D 1 - I - 0x01E345 07:A335: 21        .byte $21   ; 
- D 1 - I - 0x01E346 07:A336: 21        .byte $21   ; 
- D 1 - I - 0x01E347 07:A337: 22        .byte $22   ; 
- D 1 - I - 0x01E348 07:A338: 23        .byte $23   ; 
- D 1 - I - 0x01E349 07:A339: 48        .byte $48   ; 
- D 1 - I - 0x01E34A 07:A33A: 22        .byte $22   ; 
- D 1 - I - 0x01E34B 07:A33B: 23        .byte $23   ; 
- D 1 - I - 0x01E34C 07:A33C: 30        .byte $30   ; 
- D 1 - I - 0x01E34D 07:A33D: 4B        .byte $4B   ; 
- D 1 - I - 0x01E34E 07:A33E: 4B        .byte $4B   ; 
- D 1 - I - 0x01E34F 07:A33F: 4B        .byte $4B   ; 
- D 1 - I - 0x01E350 07:A340: 4B        .byte $4B   ; 
- D 1 - I - 0x01E351 07:A341: 57        .byte $57   ; 
- D 1 - I - 0x01E352 07:A342: 00        .byte $00   ; 
- D 1 - I - 0x01E353 07:A343: 27        .byte $27   ; 
- D 1 - I - 0x01E354 07:A344: 30        .byte $30   ; 
- D 1 - I - 0x01E355 07:A345: 51        .byte $51   ; 
- D 1 - I - 0x01E356 07:A346: 51        .byte $51   ; 
- D 1 - I - 0x01E357 07:A347: 17        .byte $17   ; 
- D 1 - I - 0x01E358 07:A348: 00        .byte $00   ; 
- D 1 - I - 0x01E359 07:A349: 57        .byte $57   ; 
- D 1 - I - 0x01E35A 07:A34A: 26        .byte $26   ; 
- D 1 - I - 0x01E35B 07:A34B: 28        .byte $28   ; 
- D 1 - I - 0x01E35C 07:A34C: 30        .byte $30   ; 
- D 1 - I - 0x01E35D 07:A34D: 00        .byte $00   ; 
- D 1 - I - 0x01E35E 07:A34E: 53        .byte $53   ; 
- D 1 - I - 0x01E35F 07:A34F: 1B        .byte $1B   ; 
- D 1 - I - 0x01E360 07:A350: 3B        .byte $3B   ; 
- D 1 - I - 0x01E361 07:A351: 56        .byte $56   ; 
- D 1 - I - 0x01E362 07:A352: 40        .byte $40   ; 
- D 1 - I - 0x01E363 07:A353: 2A        .byte $2A   ; 
- D 1 - I - 0x01E364 07:A354: 30        .byte $30   ; 
- D 1 - I - 0x01E365 07:A355: 3D        .byte $3D   ; 
- D 1 - I - 0x01E366 07:A356: 5C        .byte $5C   ; 
- D 1 - I - 0x01E367 07:A357: 3F        .byte $3F   ; 
- D 1 - I - 0x01E368 07:A358: 00        .byte $00   ; 
- D 1 - I - 0x01E369 07:A359: 57        .byte $57   ; 
- D 1 - I - 0x01E36A 07:A35A: 56        .byte $56   ; 
- D 1 - I - 0x01E36B 07:A35B: 39        .byte $39   ; 
- D 1 - I - 0x01E36C 07:A35C: 30        .byte $30   ; 
- D 1 - I - 0x01E36D 07:A35D: 00        .byte $00   ; 
- D 1 - I - 0x01E36E 07:A35E: 36        .byte $36   ; 
- D 1 - I - 0x01E36F 07:A35F: 00        .byte $00   ; 
- D 1 - I - 0x01E370 07:A360: 00        .byte $00   ; 
- D 1 - I - 0x01E371 07:A361: 57        .byte $57   ; 
- D 1 - I - 0x01E372 07:A362: 4C        .byte $4C   ; 
- D 1 - I - 0x01E373 07:A363: 2E        .byte $2E   ; 
- D 1 - I - 0x01E374 07:A364: 22        .byte $22   ; 
- D 1 - I - 0x01E375 07:A365: 24        .byte $24   ; 
- D 1 - I - 0x01E376 07:A366: 21        .byte $21   ; 
- D 1 - I - 0x01E377 07:A367: 21        .byte $21   ; 
- D 1 - I - 0x01E378 07:A368: 21        .byte $21   ; 
- D 1 - I - 0x01E379 07:A369: 21        .byte $21   ; 
- D 1 - I - 0x01E37A 07:A36A: 21        .byte $21   ; 
- D 1 - I - 0x01E37B 07:A36B: 23        .byte $23   ; 
- D 1 - I - 0x01E37C 07:A36C: 24        .byte $24   ; 
- D 1 - I - 0x01E37D 07:A36D: 26        .byte $26   ; 
- D 1 - I - 0x01E37E 07:A36E: 25        .byte $25   ; 
- D 1 - I - 0x01E37F 07:A36F: 27        .byte $27   ; 
- D 1 - I - 0x01E380 07:A370: 24        .byte $24   ; 
- D 1 - I - 0x01E381 07:A371: 21        .byte $21   ; 
- D 1 - I - 0x01E382 07:A372: 21        .byte $21   ; 
- D 1 - I - 0x01E383 07:A373: 22        .byte $22   ; 
- D 1 - I - 0x01E384 07:A374: 28        .byte $28   ; 
- D 1 - I - 0x01E385 07:A375: 28        .byte $28   ; 
- D 1 - I - 0x01E386 07:A376: 2A        .byte $2A   ; 
- D 1 - I - 0x01E387 07:A377: 28        .byte $28   ; 
- D 1 - I - 0x01E388 07:A378: 26        .byte $26   ; 
- D 1 - I - 0x01E389 07:A379: 25        .byte $25   ; 
- D 1 - I - 0x01E38A 07:A37A: 25        .byte $25   ; 
- D 1 - I - 0x01E38B 07:A37B: 28        .byte $28   ; 
- D 1 - I - 0x01E38C 07:A37C: 29        .byte $29   ; 
- D 1 - I - 0x01E38D 07:A37D: 12        .byte $12   ; 
- D 1 - I - 0x01E38E 07:A37E: 39        .byte $39   ; 
- D 1 - I - 0x01E38F 07:A37F: 45        .byte $45   ; 
- D 1 - I - 0x01E390 07:A380: 45        .byte $45   ; 
- D 1 - I - 0x01E391 07:A381: 29        .byte $29   ; 
- D 1 - I - 0x01E392 07:A382: 29        .byte $29   ; 
- D 1 - I - 0x01E393 07:A383: 29        .byte $29   ; 
- D 1 - I - 0x01E394 07:A384: 39        .byte $39   ; 
- D 1 - I - 0x01E395 07:A385: 32        .byte $32   ; 
- D 1 - I - 0x01E396 07:A386: 41        .byte $41   ; 
- D 1 - I - 0x01E397 07:A387: 4B        .byte $4B   ; 
- D 1 - I - 0x01E398 07:A388: 4B        .byte $4B   ; 
- D 1 - I - 0x01E399 07:A389: 10        .byte $10   ; 
- D 1 - I - 0x01E39A 07:A38A: 45        .byte $45   ; 
- D 1 - I - 0x01E39B 07:A38B: 45        .byte $45   ; 
- D 1 - I - 0x01E39C 07:A38C: 4C        .byte $4C   ; 
- D 1 - I - 0x01E39D 07:A38D: 4D        .byte $4D   ; 
- D 1 - I - 0x01E39E 07:A38E: 4C        .byte $4C   ; 
- D 1 - I - 0x01E39F 07:A38F: 4E        .byte $4E   ; 
- D 1 - I - 0x01E3A0 07:A390: 4E        .byte $4E   ; 
- D 1 - I - 0x01E3A1 07:A391: 35        .byte $35   ; 
- D 1 - I - 0x01E3A2 07:A392: 4E        .byte $4E   ; 
- D 1 - I - 0x01E3A3 07:A393: 4D        .byte $4D   ; 
- D 1 - I - 0x01E3A4 07:A394: 21        .byte $21   ; 
- D 1 - I - 0x01E3A5 07:A395: 21        .byte $21   ; 
- D 1 - I - 0x01E3A6 07:A396: 23        .byte $23   ; 
- D 1 - I - 0x01E3A7 07:A397: 21        .byte $21   ; 
- D 1 - I - 0x01E3A8 07:A398: 21        .byte $21   ; 
- D 1 - I - 0x01E3A9 07:A399: 21        .byte $21   ; 
- D 1 - I - 0x01E3AA 07:A39A: 23        .byte $23   ; 
- D 1 - I - 0x01E3AB 07:A39B: 00        .byte $00   ; 
- D 1 - I - 0x01E3AC 07:A39C: 21        .byte $21   ; 
- D 1 - I - 0x01E3AD 07:A39D: 21        .byte $21   ; 
- D 1 - I - 0x01E3AE 07:A39E: 22        .byte $22   ; 
- D 1 - I - 0x01E3AF 07:A39F: 24        .byte $24   ; 
- D 1 - I - 0x01E3B0 07:A3A0: 21        .byte $21   ; 
- D 1 - I - 0x01E3B1 07:A3A1: 22        .byte $22   ; 
- D 1 - I - 0x01E3B2 07:A3A2: 21        .byte $21   ; 
- D 1 - I - 0x01E3B3 07:A3A3: 23        .byte $23   ; 
- D 1 - I - 0x01E3B4 07:A3A4: 27        .byte $27   ; 
- D 1 - I - 0x01E3B5 07:A3A5: 25        .byte $25   ; 
- D 1 - I - 0x01E3B6 07:A3A6: 28        .byte $28   ; 
- D 1 - I - 0x01E3B7 07:A3A7: 00        .byte $00   ; 
- D 1 - I - 0x01E3B8 07:A3A8: 25        .byte $25   ; 
- D 1 - I - 0x01E3B9 07:A3A9: 28        .byte $28   ; 
- D 1 - I - 0x01E3BA 07:A3AA: 27        .byte $27   ; 
- D 1 - I - 0x01E3BB 07:A3AB: 27        .byte $27   ; 
- D 1 - I - 0x01E3BC 07:A3AC: 29        .byte $29   ; 
- D 1 - I - 0x01E3BD 07:A3AD: 31        .byte $31   ; 
- D 1 - I - 0x01E3BE 07:A3AE: 13        .byte $13   ; 
- D 1 - I - 0x01E3BF 07:A3AF: 14        .byte $14   ; 
- D 1 - I - 0x01E3C0 07:A3B0: 32        .byte $32   ; 
- D 1 - I - 0x01E3C1 07:A3B1: 30        .byte $30   ; 
- D 1 - I - 0x01E3C2 07:A3B2: 30        .byte $30   ; 
- D 1 - I - 0x01E3C3 07:A3B3: 30        .byte $30   ; 
- D 1 - I - 0x01E3C4 07:A3B4: 49        .byte $49   ; 
- D 1 - I - 0x01E3C5 07:A3B5: 4B        .byte $4B   ; 
- D 1 - I - 0x01E3C6 07:A3B6: 4B        .byte $4B   ; 
- D 1 - I - 0x01E3C7 07:A3B7: 4B        .byte $4B   ; 
- D 1 - I - 0x01E3C8 07:A3B8: 30        .byte $30   ; 
- D 1 - I - 0x01E3C9 07:A3B9: 33        .byte $33   ; 
- D 1 - I - 0x01E3CA 07:A3BA: 33        .byte $33   ; 
- D 1 - I - 0x01E3CB 07:A3BB: 33        .byte $33   ; 
- D 1 - I - 0x01E3CC 07:A3BC: 33        .byte $33   ; 
- D 1 - I - 0x01E3CD 07:A3BD: 33        .byte $33   ; 
- D 1 - I - 0x01E3CE 07:A3BE: 33        .byte $33   ; 
- D 1 - I - 0x01E3CF 07:A3BF: 33        .byte $33   ; 
- D 1 - I - 0x01E3D0 07:A3C0: 33        .byte $33   ; 
- D 1 - I - 0x01E3D1 07:A3C1: 2C        .byte $2C   ; 
- D 1 - I - 0x01E3D2 07:A3C2: 2E        .byte $2E   ; 
- D 1 - I - 0x01E3D3 07:A3C3: 2E        .byte $2E   ; 



_off047_A3C4_08_00_00:
- D 1 - I - 0x01E3D4 07:A3C4: 01        .byte $01   ; 
- D 1 - I - 0x01E3D5 07:A3C5: 11        .byte $11   ; 
- D 1 - I - 0x01E3D6 07:A3C6: 53        .byte $53   ; 
- D 1 - I - 0x01E3D7 07:A3C7: 3B        .byte $3B   ; 
- D 1 - I - 0x01E3D8 07:A3C8: 26        .byte $26   ; 
- D 1 - I - 0x01E3D9 07:A3C9: 28        .byte $28   ; 
- D 1 - I - 0x01E3DA 07:A3CA: 26        .byte $26   ; 
- D 1 - I - 0x01E3DB 07:A3CB: 26        .byte $26   ; 
- D 1 - I - 0x01E3DC 07:A3CC: 26        .byte $26   ; 
- D 1 - I - 0x01E3DD 07:A3CD: 15        .byte $15   ; 
- D 1 - I - 0x01E3DE 07:A3CE: 37        .byte $37   ; 
- D 1 - I - 0x01E3DF 07:A3CF: 2A        .byte $2A   ; 
- D 1 - I - 0x01E3E0 07:A3D0: 29        .byte $29   ; 
- D 1 - I - 0x01E3E1 07:A3D1: 11        .byte $11   ; 
- D 1 - I - 0x01E3E2 07:A3D2: 2A        .byte $2A   ; 
- D 1 - I - 0x01E3E3 07:A3D3: 40        .byte $40   ; 
- D 1 - I - 0x01E3E4 07:A3D4: 2A        .byte $2A   ; 
- D 1 - I - 0x01E3E5 07:A3D5: 56        .byte $56   ; 
- D 1 - I - 0x01E3E6 07:A3D6: 36        .byte $36   ; 
- D 1 - I - 0x01E3E7 07:A3D7: 40        .byte $40   ; 
- D 1 - I - 0x01E3E8 07:A3D8: 12        .byte $12   ; 
- D 1 - I - 0x01E3E9 07:A3D9: 15        .byte $15   ; 
- D 1 - I - 0x01E3EA 07:A3DA: 56        .byte $56   ; 
- D 1 - I - 0x01E3EB 07:A3DB: 56        .byte $56   ; 
- D 1 - I - 0x01E3EC 07:A3DC: 12        .byte $12   ; 
- D 1 - I - 0x01E3ED 07:A3DD: 57        .byte $57   ; 
- D 1 - I - 0x01E3EE 07:A3DE: 57        .byte $57   ; 
- D 1 - I - 0x01E3EF 07:A3DF: 56        .byte $56   ; 
- D 1 - I - 0x01E3F0 07:A3E0: 56        .byte $56   ; 
- D 1 - I - 0x01E3F1 07:A3E1: 00        .byte $00   ; 
- D 1 - I - 0x01E3F2 07:A3E2: 57        .byte $57   ; 
- D 1 - I - 0x01E3F3 07:A3E3: 48        .byte $48   ; 
- D 1 - I - 0x01E3F4 07:A3E4: 33        .byte $33   ; 
- D 1 - I - 0x01E3F5 07:A3E5: 4C        .byte $4C   ; 
- D 1 - I - 0x01E3F6 07:A3E6: 4C        .byte $4C   ; 
- D 1 - I - 0x01E3F7 07:A3E7: 4C        .byte $4C   ; 
- D 1 - I - 0x01E3F8 07:A3E8: 4C        .byte $4C   ; 
- D 1 - I - 0x01E3F9 07:A3E9: 2C        .byte $2C   ; 
- D 1 - I - 0x01E3FA 07:A3EA: 4C        .byte $4C   ; 
- D 1 - I - 0x01E3FB 07:A3EB: 4C        .byte $4C   ; 
- D 1 - I - 0x01E3FC 07:A3EC: 2E        .byte $2E   ; 
- D 1 - I - 0x01E3FD 07:A3ED: 0E        .byte $0E   ; 
- D 1 - I - 0x01E3FE 07:A3EE: 0F        .byte $0F   ; 
- D 1 - I - 0x01E3FF 07:A3EF: 0E        .byte $0E   ; 
- D 1 - I - 0x01E400 07:A3F0: 0F        .byte $0F   ; 
- D 1 - I - 0x01E401 07:A3F1: 0F        .byte $0F   ; 
- D 1 - I - 0x01E402 07:A3F2: 0F        .byte $0F   ; 
- D 1 - I - 0x01E403 07:A3F3: 0E        .byte $0E   ; 
- D 1 - I - 0x01E404 07:A3F4: 0F        .byte $0F   ; 
- D 1 - I - 0x01E405 07:A3F5: 28        .byte $28   ; 
- D 1 - I - 0x01E406 07:A3F6: 26        .byte $26   ; 
- D 1 - I - 0x01E407 07:A3F7: 48        .byte $48   ; 
- D 1 - I - 0x01E408 07:A3F8: 3A        .byte $3A   ; 
- D 1 - I - 0x01E409 07:A3F9: 57        .byte $57   ; 
- D 1 - I - 0x01E40A 07:A3FA: 26        .byte $26   ; 
- D 1 - I - 0x01E40B 07:A3FB: 28        .byte $28   ; 
- D 1 - I - 0x01E40C 07:A3FC: 26        .byte $26   ; 
- D 1 - I - 0x01E40D 07:A3FD: 42        .byte $42   ; 
- D 1 - I - 0x01E40E 07:A3FE: 28        .byte $28   ; 
- D 1 - I - 0x01E40F 07:A3FF: 42        .byte $42   ; 
- D 1 - I - 0x01E410 07:A400: 2A        .byte $2A   ; 
- D 1 - I - 0x01E411 07:A401: 36        .byte $36   ; 
- D 1 - I - 0x01E412 07:A402: 2A        .byte $2A   ; 
- D 1 - I - 0x01E413 07:A403: 2A        .byte $2A   ; 
- D 1 - I - 0x01E414 07:A404: 2A        .byte $2A   ; 
- D 1 - I - 0x01E415 07:A405: 44        .byte $44   ; 
- D 1 - I - 0x01E416 07:A406: 2A        .byte $2A   ; 
- D 1 - I - 0x01E417 07:A407: 48        .byte $48   ; 
- D 1 - I - 0x01E418 07:A408: 04        .byte $04   ; 
- D 1 - I - 0x01E419 07:A409: 48        .byte $48   ; 
- D 1 - I - 0x01E41A 07:A40A: 56        .byte $56   ; 
- D 1 - I - 0x01E41B 07:A40B: 10        .byte $10   ; 
- D 1 - I - 0x01E41C 07:A40C: 49        .byte $49   ; 
- D 1 - I - 0x01E41D 07:A40D: 56        .byte $56   ; 
- D 1 - I - 0x01E41E 07:A40E: 40        .byte $40   ; 
- D 1 - I - 0x01E41F 07:A40F: 56        .byte $56   ; 
- D 1 - I - 0x01E420 07:A410: 33        .byte $33   ; 
- D 1 - I - 0x01E421 07:A411: 56        .byte $56   ; 
- D 1 - I - 0x01E422 07:A412: 57        .byte $57   ; 
- D 1 - I - 0x01E423 07:A413: 45        .byte $45   ; 
- D 1 - I - 0x01E424 07:A414: 45        .byte $45   ; 
- D 1 - I - 0x01E425 07:A415: 4C        .byte $4C   ; 
- D 1 - I - 0x01E426 07:A416: 4C        .byte $4C   ; 
- D 1 - I - 0x01E427 07:A417: 4C        .byte $4C   ; 
- D 1 - I - 0x01E428 07:A418: 35        .byte $35   ; 
- D 1 - I - 0x01E429 07:A419: 4C        .byte $4C   ; 
- D 1 - I - 0x01E42A 07:A41A: 4C        .byte $4C   ; 
- D 1 - I - 0x01E42B 07:A41B: 4D        .byte $4D   ; 
- D 1 - I - 0x01E42C 07:A41C: 4E        .byte $4E   ; 
- D 1 - I - 0x01E42D 07:A41D: 0E        .byte $0E   ; 
- D 1 - I - 0x01E42E 07:A41E: 0F        .byte $0F   ; 
- D 1 - I - 0x01E42F 07:A41F: 0E        .byte $0E   ; 
- D 1 - I - 0x01E430 07:A420: 0F        .byte $0F   ; 
- D 1 - I - 0x01E431 07:A421: 0F        .byte $0F   ; 
- D 1 - I - 0x01E432 07:A422: 0E        .byte $0E   ; 
- D 1 - I - 0x01E433 07:A423: 0F        .byte $0F   ; 
- D 1 - I - 0x01E434 07:A424: 0F        .byte $0F   ; 



_off045_0x01E435_08:
; 00 
- D 1 - I - 0x01E435 07:A425: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E439 07:A429: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E43D 07:A42D: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E441 07:A431: 00        .byte $00, $00, $00, $00   ; 
; 01 
- D 1 - I - 0x01E445 07:A435: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 1 - I - 0x01E449 07:A439: 3F        .byte $3F, $4D, $4E, $3F   ; 
- D 1 - I - 0x01E44D 07:A43D: 5C        .byte $5C, $5D, $5E, $5F   ; 
- D 1 - I - 0x01E451 07:A441: 6E        .byte $6E, $6E, $6E, $6E   ; 
; 02 
- D 1 - I - 0x01E455 07:A445: 4A        .byte $4A, $4B, $4C, $3F   ; 
- D 1 - I - 0x01E459 07:A449: 5B        .byte $5B, $5B, $5B, $47   ; 
- D 1 - I - 0x01E45D 07:A44D: 00        .byte $00, $00, $56, $57   ; 
- D 1 - I - 0x01E461 07:A451: 00        .byte $00, $56, $66, $58   ; 
; 03 
- D 1 - I - 0x01E465 07:A455: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 1 - I - 0x01E469 07:A459: 48        .byte $48, $49, $3F, $3F   ; 
- D 1 - I - 0x01E46D 07:A45D: 58        .byte $58, $59, $5A, $3F   ; 
- D 1 - I - 0x01E471 07:A461: 68        .byte $68, $69, $6A, $3F   ; 
; 04 
- D 1 - I - 0x01E475 07:A465: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 1 - I - 0x01E479 07:A469: B6        .byte $B6, $3F, $3F, $6C   ; 
- D 1 - I - 0x01E47D 07:A46D: 00        .byte $00, $B6, $3F, $7C   ; 
- D 1 - I - 0x01E481 07:A471: 00        .byte $00, $00, $B6, $4F   ; 
; 05 
- D 1 - I - 0x01E485 07:A475: 7E        .byte $7E, $7E, $6F, $6F   ; 
- D 1 - I - 0x01E489 07:A479: 7F        .byte $7F, $7F, $7F, $65   ; 
- D 1 - I - 0x01E48D 07:A47D: 6D        .byte $6D, $76, $74, $75   ; 
- D 1 - I - 0x01E491 07:A481: 7D        .byte $7D, $74, $75, $58   ; 
; 06 
- D 1 - I - 0x01E495 07:A485: 56        .byte $56, $66, $58, $77   ; 
- D 1 - I - 0x01E499 07:A489: 57        .byte $57, $58, $77, $78   ; 
- D 1 - I - 0x01E49D 07:A48D: 58        .byte $58, $68, $69, $46   ; 
- D 1 - I - 0x01E4A1 07:A491: 77        .byte $77, $78, $79, $3F   ; 
; 07 
- D 1 - I - 0x01E4A5 07:A495: 69        .byte $69, $79, $4A, $4C   ; 
- D 1 - I - 0x01E4A9 07:A499: 46        .byte $46, $3F, $5B, $5B   ; 
- D 1 - I - 0x01E4AD 07:A49D: 4A        .byte $4A, $4B, $00, $00   ; 
- D 1 - I - 0x01E4B1 07:A4A1: 00        .byte $00, $00, $00, $00   ; 
; 08 
- D 1 - I - 0x01E4B5 07:A4A5: 8B        .byte $8B, $8B, $8B, $8B   ; 
- D 1 - I - 0x01E4B9 07:A4A9: B7        .byte $B7, $9B, $9B, $50   ; 
- D 1 - I - 0x01E4BD 07:A4AD: AA        .byte $AA, $B7, $50, $60   ; 
- D 1 - I - 0x01E4C1 07:A4B1: AA        .byte $AA, $AA, $60, $58   ; 
; 09 
- D 1 - I - 0x01E4C5 07:A4B5: 8B        .byte $8B, $8B, $8B, $8B   ; 
- D 1 - I - 0x01E4C9 07:A4B9: 51        .byte $51, $52, $53, $54   ; 
- D 1 - I - 0x01E4CD 07:A4BD: 58        .byte $58, $68, $69, $64   ; 
- D 1 - I - 0x01E4D1 07:A4C1: 77        .byte $77, $78, $73, $3D   ; 
; 0A 
- D 1 - I - 0x01E4D5 07:A4C5: 45        .byte $45, $8B, $8B, $8A   ; 
- D 1 - I - 0x01E4D9 07:A4C9: 55        .byte $55, $9B, $B8, $AB   ; 
- D 1 - I - 0x01E4DD 07:A4CD: 9B        .byte $9B, $3D, $AA, $AA   ; 
- D 1 - I - 0x01E4E1 07:A4D1: 3D        .byte $3D, $3D, $AB, $AA   ; 
; 0B 
- D 1 - I - 0x01E4E5 07:A4D5: 81        .byte $81, $81, $81, $82   ; 
- D 1 - I - 0x01E4E9 07:A4D9: 92        .byte $92, $91, $92, $91   ; 
- D 1 - I - 0x01E4ED 07:A4DD: 5C        .byte $5C, $5D, $5E, $5F   ; 
- D 1 - I - 0x01E4F1 07:A4E1: 6E        .byte $6E, $6E, $6E, $6E   ; 
; 0C 
- D 1 - I - 0x01E4F5 07:A4E5: 7E        .byte $7E, $7E, $6F, $6F   ; 
- D 1 - I - 0x01E4F9 07:A4E9: 7F        .byte $7F, $7F, $7F, $7F   ; 
- D 1 - I - 0x01E4FD 07:A4ED: 76        .byte $76, $76, $76, $76   ; 
- D 1 - I - 0x01E501 07:A4F1: 76        .byte $76, $76, $76, $76   ; 
; 0D 
- D 1 - I - 0x01E505 07:A4F5: 00        .byte $00, $AF, $3F, $3F   ; 
- D 1 - I - 0x01E509 07:A4F9: 00        .byte $00, $00, $B6, $3F   ; 
- D 1 - I - 0x01E50D 07:A4FD: 7C        .byte $7C, $00, $00, $B6   ; 
- D 1 - I - 0x01E511 07:A501: 4F        .byte $4F, $00, $00, $00   ; 
; 0E 
- D 1 - I - 0x01E515 07:A505: 94        .byte $94, $95, $A9, $80   ; 
- D 1 - I - 0x01E519 07:A509: 94        .byte $94, $A8, $00, $90   ; 
- D 1 - I - 0x01E51D 07:A50D: 62        .byte $62, $61, $62, $61   ; 
- D 1 - I - 0x01E521 07:A511: 70        .byte $70, $71, $72, $70   ; 
; 0F 
- D 1 - I - 0x01E525 07:A515: 81        .byte $81, $81, $82, $83   ; 
- D 1 - I - 0x01E529 07:A519: 92        .byte $92, $91, $92, $93   ; 
- D 1 - I - 0x01E52D 07:A51D: 62        .byte $62, $61, $62, $61   ; 
- D 1 - I - 0x01E531 07:A521: 70        .byte $70, $71, $72, $70   ; 
; 10 
- D 1 - I - 0x01E535 07:A525: B6        .byte $B6, $3F, $3F, $3F   ; 
- D 1 - I - 0x01E539 07:A529: 00        .byte $00, $00, $00, $B6   ; 
- D 1 - I - 0x01E53D 07:A52D: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E541 07:A531: 00        .byte $00, $00, $00, $00   ; 
; 11 
- D 1 - I - 0x01E545 07:A535: AC        .byte $AC, $AC, $AD, $AC   ; 
- D 1 - I - 0x01E549 07:A539: AC        .byte $AC, $AD, $AC, $AD   ; 
- D 1 - I - 0x01E54D 07:A53D: AD        .byte $AD, $AD, $AD, $AD   ; 
- D 1 - I - 0x01E551 07:A541: 4A        .byte $4A, $4B, $4C, $AD   ; 
; 12 
- D 1 - I - 0x01E555 07:A545: AD        .byte $AD, $4A, $4B, $4C   ; 
- D 1 - I - 0x01E559 07:A549: 3F        .byte $3F, $5B, $5B, $5B   ; 
- D 1 - I - 0x01E55D 07:A54D: 4A        .byte $4A, $00, $00, $00   ; 
- D 1 - I - 0x01E561 07:A551: 00        .byte $00, $00, $00, $00   ; 
; 13 
- D 1 - I - 0x01E565 07:A555: 3F        .byte $3F, $B9, $00, $00   ; 
- D 1 - I - 0x01E569 07:A559: B9        .byte $B9, $00, $00, $00   ; 
- D 1 - I - 0x01E56D 07:A55D: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E571 07:A561: 00        .byte $00, $00, $00, $00   ; 
; 14 
- D 1 - I - 0x01E575 07:A565: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E579 07:A569: 00        .byte $00, $00, $7A, $7B   ; 
- D 1 - I - 0x01E57D 07:A56D: 00        .byte $00, $7A, $7B, $00   ; 
- D 1 - I - 0x01E581 07:A571: 7A        .byte $7A, $7B, $00, $00   ; 
; 15 
- D 1 - I - 0x01E585 07:A575: 5B        .byte $5B, $5B, $5B, $3F   ; 
- D 1 - I - 0x01E589 07:A579: 6B        .byte $6B, $6B, $6B, $3F   ; 
- D 1 - I - 0x01E58D 07:A57D: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E591 07:A581: 00        .byte $00, $00, $00, $00   ; 
; 16 
- D 1 - I - 0x01E595 07:A585: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 1 - I - 0x01E599 07:A589: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 1 - I - 0x01E59D 07:A58D: 00        .byte $00, $00, $B6, $3F   ; 
- D 1 - I - 0x01E5A1 07:A591: 00        .byte $00, $00, $00, $B6   ; 
; 17 
- D 1 - I - 0x01E5A5 07:A595: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E5A9 07:A599: 00        .byte $00, $40, $63, $00   ; 
- D 1 - I - 0x01E5AD 07:A59D: 00        .byte $00, $3F, $3F, $00   ; 
- D 1 - I - 0x01E5B1 07:A5A1: 00        .byte $00, $3F, $3F, $00   ; 
; 18 
- D 1 - I - 0x01E5B5 07:A5A5: BA        .byte $BA, $BE, $BA, $BE   ; 
- D 1 - I - 0x01E5B9 07:A5A9: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 1 - I - 0x01E5BD 07:A5AD: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E5C1 07:A5B1: 00        .byte $00, $00, $00, $00   ; 
; 19 
- D 1 - I - 0x01E5C5 07:A5B5: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E5C9 07:A5B9: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E5CD 07:A5BD: BA        .byte $BA, $BE, $BA, $BE   ; 
- D 1 - I - 0x01E5D1 07:A5C1: BD        .byte $BD, $BF, $BD, $BF   ; 
; 1A 
- D 1 - I - 0x01E5D5 07:A5C5: 00        .byte $00, $3F, $3F, $00   ; 
- D 1 - I - 0x01E5D9 07:A5C9: 00        .byte $00, $3F, $3F, $00   ; 
- D 1 - I - 0x01E5DD 07:A5CD: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01E5E1 07:A5D1: BD        .byte $BD, $BF, $BD, $BF   ; 
; 1B 
- D 1 - I - 0x01E5E5 07:A5D5: 00        .byte $00, $3F, $3F, $00   ; 
- D 1 - I - 0x01E5E9 07:A5D9: 00        .byte $00, $3F, $3F, $00   ; 
- D 1 - I - 0x01E5ED 07:A5DD: 00        .byte $00, $3F, $3F, $00   ; 
- D 1 - I - 0x01E5F1 07:A5E1: 00        .byte $00, $3F, $3F, $00   ; 
; 1C 
- D 1 - I - 0x01E5F5 07:A5E5: BA        .byte $BA, $BE, $BA, $BE   ; 
- D 1 - I - 0x01E5F9 07:A5E9: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 1 - I - 0x01E5FD 07:A5ED: A4        .byte $A4, $A5, $A6, $AD   ; 
- D 1 - I - 0x01E601 07:A5F1: 94        .byte $94, $95, $96, $3F   ; 
; 1D 
- - - - - - 0x01E605 07:A5F5: 3F        .byte $3F, $3F, $3F, $3F   ; 
- - - - - - 0x01E609 07:A5F9: 3F        .byte $3F, $3F, $3F, $3F   ; 
- - - - - - 0x01E60D 07:A5FD: BA        .byte $BA, $BE, $BA, $BE   ; 
- - - - - - 0x01E611 07:A601: BD        .byte $BD, $BF, $BD, $BF   ; 
; 1E 
- D 1 - I - 0x01E615 07:A605: 81        .byte $81, $81, $82, $81   ; 
- D 1 - I - 0x01E619 07:A609: 91        .byte $91, $91, $92, $91   ; 
- D 1 - I - 0x01E61D 07:A60D: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E621 07:A611: 00        .byte $00, $00, $00, $00   ; 
; 1F 
- D 1 - I - 0x01E625 07:A615: 81        .byte $81, $81, $82, $81   ; 
- D 1 - I - 0x01E629 07:A619: 91        .byte $91, $91, $92, $91   ; 
- D 1 - I - 0x01E62D 07:A61D: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01E631 07:A621: BD        .byte $BD, $BF, $BD, $BF   ; 
; 20 
- D 1 - I - 0x01E635 07:A625: BC        .byte $BC, $BE, $00, $00   ; 
- D 1 - I - 0x01E639 07:A629: BD        .byte $BD, $BF, $00, $00   ; 
- D 1 - I - 0x01E63D 07:A62D: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01E641 07:A631: BD        .byte $BD, $BF, $BD, $BF   ; 
; 21 
- D 1 - I - 0x01E645 07:A635: 9D        .byte $9D, $8D, $8F, $9D   ; 
- D 1 - I - 0x01E649 07:A639: 8D        .byte $8D, $9D, $9F, $9C   ; 
- D 1 - I - 0x01E64D 07:A63D: 8C        .byte $8C, $8D, $9D, $8E   ; 
- D 1 - I - 0x01E651 07:A641: 9C        .byte $9C, $9D, $8C, $9F   ; 
; 22 
- D 1 - I - 0x01E655 07:A645: 8D        .byte $8D, $8E, $9D, $8F   ; 
- D 1 - I - 0x01E659 07:A649: 8C        .byte $8C, $8F, $9D, $8E   ; 
- D 1 - I - 0x01E65D 07:A64D: 9C        .byte $9C, $9F, $8C, $8D   ; 
- D 1 - I - 0x01E661 07:A651: 00        .byte $00, $00, $9C, $9D   ; 
; 23 
- D 1 - I - 0x01E665 07:A655: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E669 07:A659: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E66D 07:A65D: 8E        .byte $8E, $8E, $00, $00   ; 
- D 1 - I - 0x01E671 07:A661: 8C        .byte $8C, $9D, $8C, $00   ; 
; 24 
- D 1 - I - 0x01E675 07:A665: 8F        .byte $8F, $9D, $8D, $9D   ; 
- D 1 - I - 0x01E679 07:A669: 8D        .byte $8D, $9C, $8C, $9F   ; 
- D 1 - I - 0x01E67D 07:A66D: 9D        .byte $9D, $8E, $9F, $00   ; 
- D 1 - I - 0x01E681 07:A671: 9F        .byte $9F, $00, $00, $00   ; 
; 25 
- D 1 - I - 0x01E685 07:A675: 00        .byte $00, $9C, $9F, $00   ; 
- D 1 - I - 0x01E689 07:A679: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E68D 07:A67D: AC        .byte $AC, $00, $00, $00   ; 
- D 1 - I - 0x01E691 07:A681: 00        .byte $00, $AC, $00, $AC   ; 
; 26 
- D 1 - I - 0x01E695 07:A685: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E699 07:A689: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E69D 07:A68D: AC        .byte $AC, $00, $00, $00   ; 
- D 1 - I - 0x01E6A1 07:A691: 00        .byte $00, $AC, $00, $AC   ; 
; 27 
- D 1 - I - 0x01E6A5 07:A695: 8C        .byte $8C, $8C, $9D, $8E   ; 
- D 1 - I - 0x01E6A9 07:A699: 9C        .byte $9C, $9F, $8D, $8C   ; 
- D 1 - I - 0x01E6AD 07:A69D: 00        .byte $00, $00, $9C, $9F   ; 
- D 1 - I - 0x01E6B1 07:A6A1: AC        .byte $AC, $00, $00, $00   ; 
; 28 
- D 1 - I - 0x01E6B5 07:A6A5: 00        .byte $00, $AC, $00, $00   ; 
- D 1 - I - 0x01E6B9 07:A6A9: 00        .byte $00, $00, $AC, $00   ; 
- D 1 - I - 0x01E6BD 07:A6AD: AC        .byte $AC, $AC, $00, $AC   ; 
- D 1 - I - 0x01E6C1 07:A6B1: AC        .byte $AC, $00, $AC, $AC   ; 
; 29 
- D 1 - I - 0x01E6C5 07:A6B5: AC        .byte $AC, $AC, $AD, $AC   ; 
- D 1 - I - 0x01E6C9 07:A6B9: AC        .byte $AC, $AD, $AC, $AD   ; 
- D 1 - I - 0x01E6CD 07:A6BD: AD        .byte $AD, $AD, $AD, $AD   ; 
- D 1 - I - 0x01E6D1 07:A6C1: 3F        .byte $3F, $AD, $3F, $AD   ; 
; 2A 
- D 1 - I - 0x01E6D5 07:A6C5: AC        .byte $AC, $AC, $AC, $AC   ; 
- D 1 - I - 0x01E6D9 07:A6C9: AC        .byte $AC, $AD, $AC, $AD   ; 
- D 1 - I - 0x01E6DD 07:A6CD: AD        .byte $AD, $AC, $AD, $AC   ; 
- D 1 - I - 0x01E6E1 07:A6D1: AD        .byte $AD, $AD, $3F, $AD   ; 
; 2B 
- D 1 - I - 0x01E6E5 07:A6D5: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 1 - I - 0x01E6E9 07:A6D9: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 1 - I - 0x01E6ED 07:A6DD: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 1 - I - 0x01E6F1 07:A6E1: 3F        .byte $3F, $3F, $3F, $3F   ; 
; 2C 
- D 1 - I - 0x01E6F5 07:A6E5: 8A        .byte $8A, $8B, $8B, $8B   ; 
- D 1 - I - 0x01E6F9 07:A6E9: AA        .byte $AA, $B7, $9B, $9B   ; 
- D 1 - I - 0x01E6FD 07:A6ED: AA        .byte $AA, $AB, $B7, $9B   ; 
- D 1 - I - 0x01E701 07:A6F1: AB        .byte $AB, $AB, $AB, $B7   ; 
; 2D 
- D 1 - I - 0x01E705 07:A6F5: 94        .byte $94, $95, $96, $AE   ; 
- D 1 - I - 0x01E709 07:A6F9: 94        .byte $94, $95, $96, $00   ; 
- D 1 - I - 0x01E70D 07:A6FD: BC        .byte $BC, $9A, $BC, $BE   ; 
- D 1 - I - 0x01E711 07:A701: 9A        .byte $9A, $32, $BD, $BF   ; 
; 2E 
- D 1 - I - 0x01E715 07:A705: 8B        .byte $8B, $8B, $8B, $8B   ; 
- D 1 - I - 0x01E719 07:A709: 9B        .byte $9B, $9B, $9B, $9B   ; 
- D 1 - I - 0x01E71D 07:A70D: 3D        .byte $3D, $9B, $3D, $9B   ; 
- D 1 - I - 0x01E721 07:A711: 3D        .byte $3D, $3D, $3D, $3D   ; 
; 2F 
- - - - - - 0x01E725 07:A715: 3D        .byte $3D, $9B, $3D, $3D   ; 
- - - - - - 0x01E729 07:A719: 3D        .byte $3D, $3D, $3D, $9B   ; 
- - - - - - 0x01E72D 07:A71D: 9B        .byte $9B, $3D, $9B, $3D   ; 
- - - - - - 0x01E731 07:A721: 3D        .byte $3D, $3D, $3D, $3D   ; 
; 30 
- D 1 - I - 0x01E735 07:A725: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01E739 07:A729: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 1 - I - 0x01E73D 07:A72D: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01E741 07:A731: BD        .byte $BD, $BF, $BD, $BF   ; 
; 31 
- D 1 - I - 0x01E745 07:A735: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 1 - I - 0x01E749 07:A739: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 1 - I - 0x01E74D 07:A73D: 3F        .byte $3F, $3F, $B9, $00   ; 
- D 1 - I - 0x01E751 07:A741: 3F        .byte $3F, $B9, $00, $00   ; 
; 32 
- D 1 - I - 0x01E755 07:A745: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E759 07:A749: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E75D 07:A74D: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01E761 07:A751: BD        .byte $BD, $BF, $BD, $BF   ; 
; 33 
- D 1 - I - 0x01E765 07:A755: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01E769 07:A759: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 1 - I - 0x01E76D 07:A75D: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E771 07:A761: 00        .byte $00, $00, $00, $00   ; 
; 34 
- - - - - - 0x01E775 07:A765: 8B        .byte $8B, $8B, $8B, $8B   ; 
- - - - - - 0x01E779 07:A769: 9B        .byte $9B, $9B, $9B, $B8   ; 
- - - - - - 0x01E77D 07:A76D: 9B        .byte $9B, $3D, $B8, $AB   ; 
- - - - - - 0x01E781 07:A771: 3D        .byte $3D, $B8, $AB, $AA   ; 
; 35 
- D 1 - I - 0x01E785 07:A775: 8A        .byte $8A, $8A, $8A, $8A   ; 
- D 1 - I - 0x01E789 07:A779: AB        .byte $AB, $AA, $AA, $AB   ; 
- D 1 - I - 0x01E78D 07:A77D: AB        .byte $AB, $AA, $AB, $AA   ; 
- D 1 - I - 0x01E791 07:A781: AA        .byte $AA, $AB, $AA, $AB   ; 
; 36 
- D 1 - I - 0x01E795 07:A785: A7        .byte $A7, $A8, $96, $00   ; 
- D 1 - I - 0x01E799 07:A789: B0        .byte $B0, $A7, $A9, $00   ; 
- D 1 - I - 0x01E79D 07:A78D: 94        .byte $94, $B1, $A7, $00   ; 
- D 1 - I - 0x01E7A1 07:A791: 94        .byte $94, $95, $B2, $A7   ; 
; 37 
- D 1 - I - 0x01E7A5 07:A795: 94        .byte $94, $95, $A9, $9A   ; 
- D 1 - I - 0x01E7A9 07:A799: 94        .byte $94, $A8, $9A, $00   ; 
- D 1 - I - 0x01E7AD 07:A79D: 94        .byte $94, $9A, $B2, $00   ; 
- D 1 - I - 0x01E7B1 07:A7A1: 9A        .byte $9A, $B1, $96, $00   ; 
; 38 
- D 1 - I - 0x01E7B5 07:A7A5: BC        .byte $BC, $BE, $00, $00   ; 
- D 1 - I - 0x01E7B9 07:A7A9: BD        .byte $BD, $BF, $00, $00   ; 
- D 1 - I - 0x01E7BD 07:A7AD: 00        .byte $00, $3C, $00, $00   ; 
- D 1 - I - 0x01E7C1 07:A7B1: 00        .byte $00, $3A, $00, $00   ; 
; 39 
- D 1 - I - 0x01E7C5 07:A7B5: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 1 - I - 0x01E7C9 07:A7B9: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 1 - I - 0x01E7CD 07:A7BD: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01E7D1 07:A7C1: BD        .byte $BD, $BF, $BD, $BF   ; 
; 3A 
- D 1 - I - 0x01E7D5 07:A7C5: A7        .byte $A7, $00, $00, $00   ; 
- D 1 - I - 0x01E7D9 07:A7C9: 00        .byte $00, $A7, $00, $00   ; 
- D 1 - I - 0x01E7DD 07:A7CD: 00        .byte $00, $00, $A7, $00   ; 
- D 1 - I - 0x01E7E1 07:A7D1: 00        .byte $00, $00, $00, $A7   ; 
; 3B 
- D 1 - I - 0x01E7E5 07:A7D5: 00        .byte $00, $00, $00, $9A   ; 
- D 1 - I - 0x01E7E9 07:A7D9: 00        .byte $00, $00, $9A, $00   ; 
- D 1 - I - 0x01E7ED 07:A7DD: 00        .byte $00, $9A, $00, $00   ; 
- D 1 - I - 0x01E7F1 07:A7E1: 9A        .byte $9A, $00, $00, $00   ; 
; 3C 
- D 1 - I - 0x01E7F5 07:A7E5: 00        .byte $00, $3C, $00, $00   ; 
- D 1 - I - 0x01E7F9 07:A7E9: 00        .byte $00, $3B, $00, $00   ; 
- D 1 - I - 0x01E7FD 07:A7ED: 00        .byte $00, $3A, $00, $00   ; 
- D 1 - I - 0x01E801 07:A7F1: 00        .byte $00, $3C, $00, $00   ; 
; 3D 
- D 1 - I - 0x01E805 07:A7F5: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E809 07:A7F9: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E80D 07:A7FD: BC        .byte $BC, $BE, $BB, $BE   ; 
- D 1 - I - 0x01E811 07:A801: BD        .byte $BD, $BF, $32, $BB   ; 
; 3E 
- D 1 - I - 0x01E815 07:A805: A7        .byte $A7, $00, $00, $00   ; 
- D 1 - I - 0x01E819 07:A809: 00        .byte $00, $A7, $00, $00   ; 
- D 1 - I - 0x01E81D 07:A80D: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01E821 07:A811: BD        .byte $BD, $BF, $BD, $BF   ; 
; 3F 
- D 1 - I - 0x01E825 07:A815: 00        .byte $00, $00, $00, $9A   ; 
- D 1 - I - 0x01E829 07:A819: 00        .byte $00, $00, $9A, $00   ; 
- D 1 - I - 0x01E82D 07:A81D: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01E831 07:A821: BD        .byte $BD, $BF, $BD, $BF   ; 
; 40 
- D 1 - I - 0x01E835 07:A825: 84        .byte $84, $85, $86, $AC   ; 
- D 1 - I - 0x01E839 07:A829: 94        .byte $94, $95, $96, $AD   ; 
- D 1 - I - 0x01E83D 07:A82D: A4        .byte $A4, $A5, $A6, $AD   ; 
- D 1 - I - 0x01E841 07:A831: 94        .byte $94, $B5, $96, $3F   ; 
; 41 
- D 1 - I - 0x01E845 07:A835: 80        .byte $80, $81, $82, $81   ; 
- D 1 - I - 0x01E849 07:A839: 90        .byte $90, $91, $92, $91   ; 
- D 1 - I - 0x01E84D 07:A83D: A0        .byte $A0, $A1, $A2, $A3   ; 
- D 1 - I - 0x01E851 07:A841: B0        .byte $B0, $B1, $B2, $AF   ; 
; 42 
- D 1 - I - 0x01E855 07:A845: 81        .byte $81, $82, $82, $83   ; 
- D 1 - I - 0x01E859 07:A849: 91        .byte $91, $92, $92, $93   ; 
- D 1 - I - 0x01E85D 07:A84D: A0        .byte $A0, $A1, $A2, $B3   ; 
- D 1 - I - 0x01E861 07:A851: B0        .byte $B0, $B1, $B2, $3F   ; 
; 43 
- D 1 - I - 0x01E865 07:A855: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01E869 07:A859: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 1 - I - 0x01E86D 07:A85D: A4        .byte $A4, $A5, $A6, $AD   ; 
- D 1 - I - 0x01E871 07:A861: 94        .byte $94, $95, $96, $3F   ; 
; 44 
- D 1 - I - 0x01E875 07:A865: 94        .byte $94, $95, $96, $3F   ; 
- D 1 - I - 0x01E879 07:A869: 94        .byte $94, $95, $96, $3F   ; 
- D 1 - I - 0x01E87D 07:A86D: A4        .byte $A4, $A5, $A6, $3F   ; 
- D 1 - I - 0x01E881 07:A871: 94        .byte $94, $95, $96, $3F   ; 
; 45 
- D 1 - I - 0x01E885 07:A875: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01E889 07:A879: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 1 - I - 0x01E88D 07:A87D: 80        .byte $80, $81, $82, $83   ; 
- D 1 - I - 0x01E891 07:A881: 90        .byte $90, $91, $92, $93   ; 
; 46 
- - - - - - 0x01E895 07:A885: 3D        .byte $3D, $3D, $3D, $3D   ; 
- - - - - - 0x01E899 07:A889: 3D        .byte $3D, $3D, $3D, $3D   ; 
- - - - - - 0x01E89D 07:A88D: 3D        .byte $3D, $3D, $3D, $3D   ; 
- - - - - - 0x01E8A1 07:A891: 3D        .byte $3D, $3D, $3D, $3D   ; 
; 47 
- D 1 - I - 0x01E8A5 07:A895: 94        .byte $94, $95, $96, $AE   ; 
- D 1 - I - 0x01E8A9 07:A899: 94        .byte $94, $95, $96, $00   ; 
- D 1 - I - 0x01E8AD 07:A89D: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01E8B1 07:A8A1: BD        .byte $BD, $BF, $BD, $BF   ; 
; 48 
- D 1 - I - 0x01E8B5 07:A8A5: 94        .byte $94, $95, $96, $AE   ; 
- D 1 - I - 0x01E8B9 07:A8A9: 94        .byte $94, $B5, $96, $00   ; 
- D 1 - I - 0x01E8BD 07:A8AD: A4        .byte $A4, $A5, $A6, $00   ; 
- D 1 - I - 0x01E8C1 07:A8B1: 94        .byte $94, $95, $96, $00   ; 
; 49 
- D 1 - I - 0x01E8C5 07:A8B5: 3F        .byte $3F, $3F, $80, $81   ; 
- D 1 - I - 0x01E8C9 07:A8B9: 3F        .byte $3F, $3F, $90, $92   ; 
- D 1 - I - 0x01E8CD 07:A8BD: 80        .byte $80, $81, $82, $83   ; 
- D 1 - I - 0x01E8D1 07:A8C1: 90        .byte $90, $91, $92, $93   ; 
; 4A 
- - - - - - 0x01E8D5 07:A8C5: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x01E8D9 07:A8C9: 00        .byte $00, $01, $01, $00   ; 
- - - - - - 0x01E8DD 07:A8CD: 00        .byte $00, $01, $01, $00   ; 
- - - - - - 0x01E8E1 07:A8D1: 00        .byte $00, $00, $00, $00   ; 
; 4B 
- D 1 - I - 0x01E8E5 07:A8D5: 82        .byte $82, $83, $80, $81   ; 
- D 1 - I - 0x01E8E9 07:A8D9: 91        .byte $91, $93, $90, $92   ; 
- D 1 - I - 0x01E8ED 07:A8DD: 80        .byte $80, $81, $82, $83   ; 
- D 1 - I - 0x01E8F1 07:A8E1: 90        .byte $90, $91, $92, $93   ; 
; 4C 
- D 1 - I - 0x01E8F5 07:A8E5: 87        .byte $87, $88, $89, $8A   ; 
- D 1 - I - 0x01E8F9 07:A8E9: 97        .byte $97, $98, $99, $AA   ; 
- D 1 - I - 0x01E8FD 07:A8ED: A4        .byte $A4, $A5, $A6, $AB   ; 
- D 1 - I - 0x01E901 07:A8F1: 94        .byte $94, $95, $96, $AB   ; 
; 4D 
- D 1 - I - 0x01E905 07:A8F5: 8B        .byte $8B, $89, $8A, $8A   ; 
- D 1 - I - 0x01E909 07:A8F9: 92        .byte $92, $93, $AB, $AA   ; 
- D 1 - I - 0x01E90D 07:A8FD: 80        .byte $80, $81, $82, $83   ; 
- D 1 - I - 0x01E911 07:A901: 90        .byte $90, $91, $92, $93   ; 
; 4E 
- D 1 - I - 0x01E915 07:A905: 8B        .byte $8B, $89, $8B, $89   ; 
- D 1 - I - 0x01E919 07:A909: 92        .byte $92, $93, $90, $91   ; 
- D 1 - I - 0x01E91D 07:A90D: 80        .byte $80, $81, $82, $83   ; 
- D 1 - I - 0x01E921 07:A911: 90        .byte $90, $91, $92, $93   ; 
; 4F 
- - - - - - 0x01E925 07:A915: 8A        .byte $8A, $8B, $8B, $8B   ; 
- - - - - - 0x01E929 07:A919: AB        .byte $AB, $9B, $9B, $9B   ; 
- - - - - - 0x01E92D 07:A91D: AA        .byte $AA, $9B, $3D, $9B   ; 
- - - - - - 0x01E931 07:A921: AB        .byte $AB, $3D, $3D, $3D   ; 
; 50 
- - - - - - 0x01E935 07:A925: 40        .byte $40, $47, $41, $62   ; 
- - - - - - 0x01E939 07:A929: 62        .byte $62, $41, $62, $40   ; 
- - - - - - 0x01E93D 07:A92D: 41        .byte $41, $42, $61, $62   ; 
- - - - - - 0x01E941 07:A931: 3D        .byte $3D, $3D, $3D, $3D   ; 
; 51 
- D 1 - I - 0x01E945 07:A935: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E949 07:A939: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E94D 07:A93D: 82        .byte $82, $81, $82, $81   ; 
- D 1 - I - 0x01E951 07:A941: 91        .byte $91, $91, $92, $92   ; 
; 52 
- D 1 - I - 0x01E955 07:A945: 94        .byte $94, $95, $96, $00   ; 
- D 1 - I - 0x01E959 07:A949: 94        .byte $94, $B5, $96, $00   ; 
- D 1 - I - 0x01E95D 07:A94D: A4        .byte $A4, $A5, $A9, $00   ; 
- D 1 - I - 0x01E961 07:A951: 94        .byte $94, $A8, $00, $00   ; 
; 53 
- D 1 - I - 0x01E965 07:A955: A0        .byte $A0, $A1, $A2, $00   ; 
- D 1 - I - 0x01E969 07:A959: B0        .byte $B0, $B1, $B2, $00   ; 
- D 1 - I - 0x01E96D 07:A95D: A4        .byte $A4, $A5, $A6, $00   ; 
- D 1 - I - 0x01E971 07:A961: 94        .byte $94, $95, $96, $00   ; 
; 54 
- D 1 - I - 0x01E975 07:A965: 00        .byte $00, $00, $4E, $4F   ; 
- D 1 - I - 0x01E979 07:A969: 6A        .byte $6A, $65, $5E, $5F   ; 
- D 1 - I - 0x01E97D 07:A96D: 64        .byte $64, $44, $6E, $6F   ; 
- D 1 - I - 0x01E981 07:A971: 74        .byte $74, $7B, $7E, $7F   ; 
; 55 
- D 1 - I - 0x01E985 07:A975: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E989 07:A979: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01E98D 07:A97D: 49        .byte $49, $4A, $4B, $6A   ; 
- D 1 - I - 0x01E991 07:A981: 68        .byte $68, $69, $6B, $7B   ; 
; 56 
- D 1 - I - 0x01E995 07:A985: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01E999 07:A989: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 1 - I - 0x01E99D 07:A98D: A0        .byte $A0, $A1, $A2, $00   ; 
- D 1 - I - 0x01E9A1 07:A991: B0        .byte $B0, $B1, $B2, $00   ; 
; 57 
- D 1 - I - 0x01E9A5 07:A995: 94        .byte $94, $95, $96, $00   ; 
- D 1 - I - 0x01E9A9 07:A999: 94        .byte $94, $B5, $96, $00   ; 
- D 1 - I - 0x01E9AD 07:A99D: A4        .byte $A4, $A5, $A6, $00   ; 
- D 1 - I - 0x01E9B1 07:A9A1: 94        .byte $94, $95, $96, $00   ; 
; 58 
- D 1 - I - 0x01E9B5 07:A9A5: 44        .byte $44, $45, $46, $47   ; 
- D 1 - I - 0x01E9B9 07:A9A9: 00        .byte $00, $00, $56, $57   ; 
- D 1 - I - 0x01E9BD 07:A9AD: 64        .byte $64, $65, $66, $67   ; 
- D 1 - I - 0x01E9C1 07:A9B1: 74        .byte $74, $75, $76, $77   ; 
; 59 
- D 1 - I - 0x01E9C5 07:A9B5: 48        .byte $48, $49, $4A, $4B   ; 
- D 1 - I - 0x01E9C9 07:A9B9: 58        .byte $58, $59, $00, $00   ; 
- D 1 - I - 0x01E9CD 07:A9BD: 68        .byte $68, $69, $6A, $6B   ; 
- D 1 - I - 0x01E9D1 07:A9C1: 77        .byte $77, $76, $7A, $7B   ; 
; 5A 
- D 1 - I - 0x01E9D5 07:A9C5: 40        .byte $40, $41, $42, $43   ; 
- D 1 - I - 0x01E9D9 07:A9C9: 41        .byte $41, $51, $52, $00   ; 
- D 1 - I - 0x01E9DD 07:A9CD: 60        .byte $60, $00, $00, $00   ; 
- D 1 - I - 0x01E9E1 07:A9D1: 70        .byte $70, $00, $00, $00   ; 
; 5B 
- D 1 - I - 0x01E9E5 07:A9D5: 43        .byte $43, $61, $62, $41   ; 
- D 1 - I - 0x01E9E9 07:A9D9: 00        .byte $00, $71, $72, $62   ; 
- D 1 - I - 0x01E9ED 07:A9DD: 00        .byte $00, $00, $00, $63   ; 
- D 1 - I - 0x01E9F1 07:A9E1: 00        .byte $00, $00, $00, $73   ; 
; 5C 
- D 1 - I - 0x01E9F5 07:A9E5: 94        .byte $94, $95, $96, $00   ; 
- D 1 - I - 0x01E9F9 07:A9E9: A4        .byte $A4, $A5, $A6, $00   ; 
- D 1 - I - 0x01E9FD 07:A9ED: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01EA01 07:A9F1: BD        .byte $BD, $BF, $BD, $BF   ; 
; 5D 
- D 1 - I - 0x01EA05 07:A9F5: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01EA09 07:A9F9: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01EA0D 07:A9FD: 84        .byte $84, $85, $B4, $00   ; 
- D 1 - I - 0x01EA11 07:AA01: 94        .byte $94, $B5, $96, $00   ; 
; 5E 
- D 1 - I - 0x01EA15 07:AA05: 00        .byte $00, $00, $BC, $BE   ; 
- D 1 - I - 0x01EA19 07:AA09: 00        .byte $00, $00, $BD, $BF   ; 
- D 1 - I - 0x01EA1D 07:AA0D: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01EA21 07:AA11: 00        .byte $00, $00, $00, $00   ; 
; 5F 
- D 1 - I - 0x01EA25 07:AA15: BC        .byte $BC, $BE, $00, $00   ; 
- D 1 - I - 0x01EA29 07:AA19: BD        .byte $BD, $BF, $00, $00   ; 
- D 1 - I - 0x01EA2D 07:AA1D: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01EA31 07:AA21: 00        .byte $00, $00, $00, $00   ; 



_off046_0x01EA35_08:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x01EA35 07:AA25: 00        .byte $00, $FF, $AF, $EF, $FF, $AB, $EA, $3F, $55, $55, $55, $FA, $AF, $FF, $55, $55   ; 00 
- D 1 - I - 0x01EA45 07:AA35: 0F        .byte $0F, $FF, $3F, $03, $FC, $0F, $CF, $FF, $00, $00, $0F, $FF, $E0, $0F, $0A, $0A   ; 10 
- D 1 - I - 0x01EA55 07:AA45: 00        .byte $00, $FF, $FF, $F0, $FF, $FF, $F0, $FF, $FF, $FF, $FF, $FF, $55, $0E, $55, $55   ; 20 
- D 1 - I - 0x01EA65 07:AA55: 00        .byte $00, $FF, $00, $00, $55, $55, $AE, $EA, $00, $0F, $82, $28, $00, $00, $02, $08   ; 30 
- D 1 - I - 0x01EA75 07:AA65: EE        .byte $EE, $EA, $EA, $E0, $EE, $A0, $55, $0E, $EE, $AB, $55, $AA, $55, $55, $55, $55   ; 40 
- - - - - - 0x01EA85 07:AA75: AA        .byte $AA, $A0, $EE, $EE, $BB, $E0, $E0, $EE, $BA, $EA, $2A, $8A, $0E, $E0, $00, $00   ; 50 



_off044_0x01EA95_0B:
- D 1 - I - 0x01EA95 07:AA85: 8B AA     .word off_AA8B_0B_00
- D 1 - I - 0x01EA97 07:AA87: 94 AA     .word off_AA94_0B_01
- D 1 - I - 0x01EA99 07:AA89: 9D AA     .word off_AA9D_0B_02



off_AA8B_0B_00:
- D 1 - I - 0x01EA9B 07:AA8B: 01        .byte $01   ; 
- D 1 - I - 0x01EA9C 07:AA8C: 3F AD     .word _off047_AD3F_0B_00_00
- D 1 - I - 0x01EA9E 07:AA8E: DE AC     .word _off047_ACDE_0B_00_01
- - - - - - 0x01EAA0 07:AA90: E0        .byte $E0   ; 
- D 1 - I - 0x01EAA1 07:AA91: FE        .byte $FE   ; 
- - - - - - 0x01EAA2 07:AA92: 02        .byte $02   ; 
- - - - - - 0x01EAA3 07:AA93: E0        .byte $E0   ; 



off_AA94_0B_01:
- D 1 - I - 0x01EAA4 07:AA94: 01        .byte $01   ; 
- D 1 - I - 0x01EAA5 07:AA95: 4D AC     .word _off047_AC4D_0B_01_00
- D 1 - I - 0x01EAA7 07:AA97: 2B AB     .word _off047_AB2B_0B_01_01
- - - - - - 0x01EAA9 07:AA99: E0        .byte $E0   ; 
- D 1 - I - 0x01EAAA 07:AA9A: 00        .byte $00   ; 
- - - - - - 0x01EAAB 07:AA9B: 00        .byte $00   ; 
- - - - - - 0x01EAAC 07:AA9C: E0        .byte $E0   ; 



off_AA9D_0B_02:
- D 1 - I - 0x01EAAD 07:AA9D: 02        .byte $02   ; 
- D 1 - I - 0x01EAAE 07:AA9E: 00 AE     .word _off047_AE00_0B_02_00
- D 1 - I - 0x01EAB0 07:AAA0: AA AA     .word _off047_AAAA_0B_02_01
- D 1 - I - 0x01EAB2 07:AAA2: BC AB     .word _off047_ABBC_0B_02_02
- - - - - - 0x01EAB4 07:AAA4: E0        .byte $E0   ; 
- - - - - - 0x01EAB5 07:AAA5: 81        .byte $81   ; 
- D 1 - I - 0x01EAB6 07:AAA6: 00        .byte $00   ; 
- - - - - - 0x01EAB7 07:AAA7: 22        .byte $22   ; 
- D 1 - I - 0x01EAB8 07:AAA8: 81        .byte $81   ; 
- - - - - - 0x01EAB9 07:AAA9: E0        .byte $E0   ; 



_off047_AAAA_0B_02_01:
- D 1 - I - 0x01EABA 07:AAAA: 01        .byte $01   ; 
- D 1 - I - 0x01EABB 07:AAAB: 00        .byte $00   ; 
- D 1 - I - 0x01EABC 07:AAAC: 00        .byte $00   ; 
- D 1 - I - 0x01EABD 07:AAAD: 00        .byte $00   ; 
- D 1 - I - 0x01EABE 07:AAAE: 41        .byte $41   ; 
- D 1 - I - 0x01EABF 07:AAAF: 46        .byte $46   ; 
- D 1 - I - 0x01EAC0 07:AAB0: 46        .byte $46   ; 
- D 1 - I - 0x01EAC1 07:AAB1: 46        .byte $46   ; 
- D 1 - I - 0x01EAC2 07:AAB2: 46        .byte $46   ; 
- D 1 - I - 0x01EAC3 07:AAB3: 3F        .byte $3F   ; 
- D 1 - I - 0x01EAC4 07:AAB4: 00        .byte $00   ; 
- D 1 - I - 0x01EAC5 07:AAB5: 41        .byte $41   ; 
- D 1 - I - 0x01EAC6 07:AAB6: 46        .byte $46   ; 
- D 1 - I - 0x01EAC7 07:AAB7: 46        .byte $46   ; 
- D 1 - I - 0x01EAC8 07:AAB8: 3D        .byte $3D   ; 
- D 1 - I - 0x01EAC9 07:AAB9: 42        .byte $42   ; 
- D 1 - I - 0x01EACA 07:AABA: 43        .byte $43   ; 
- D 1 - I - 0x01EACB 07:AABB: 47        .byte $47   ; 
- D 1 - I - 0x01EACC 07:AABC: 40        .byte $40   ; 
- D 1 - I - 0x01EACD 07:AABD: 35        .byte $35   ; 
- D 1 - I - 0x01EACE 07:AABE: 46        .byte $46   ; 
- D 1 - I - 0x01EACF 07:AABF: 46        .byte $46   ; 
- D 1 - I - 0x01EAD0 07:AAC0: 39        .byte $39   ; 
- D 1 - I - 0x01EAD1 07:AAC1: 47        .byte $47   ; 
- D 1 - I - 0x01EAD2 07:AAC2: 47        .byte $47   ; 
- D 1 - I - 0x01EAD3 07:AAC3: 3F        .byte $3F   ; 
- D 1 - I - 0x01EAD4 07:AAC4: 3F        .byte $3F   ; 
- D 1 - I - 0x01EAD5 07:AAC5: 39        .byte $39   ; 
- D 1 - I - 0x01EAD6 07:AAC6: 46        .byte $46   ; 
- D 1 - I - 0x01EAD7 07:AAC7: 45        .byte $45   ; 
- D 1 - I - 0x01EAD8 07:AAC8: 39        .byte $39   ; 
- D 1 - I - 0x01EAD9 07:AAC9: 3F        .byte $3F   ; 
- D 1 - I - 0x01EADA 07:AACA: 3F        .byte $3F   ; 
- D 1 - I - 0x01EADB 07:AACB: 4A        .byte $4A   ; 
- D 1 - I - 0x01EADC 07:AACC: 39        .byte $39   ; 
- D 1 - I - 0x01EADD 07:AACD: 39        .byte $39   ; 
- D 1 - I - 0x01EADE 07:AACE: 4B        .byte $4B   ; 
- D 1 - I - 0x01EADF 07:AACF: 39        .byte $39   ; 
- D 1 - I - 0x01EAE0 07:AAD0: 39        .byte $39   ; 
- D 1 - I - 0x01EAE1 07:AAD1: 39        .byte $39   ; 
- D 1 - I - 0x01EAE2 07:AAD2: 39        .byte $39   ; 
- D 1 - I - 0x01EAE3 07:AAD3: 42        .byte $42   ; 
- D 1 - I - 0x01EAE4 07:AAD4: 43        .byte $43   ; 
- D 1 - I - 0x01EAE5 07:AAD5: 4A        .byte $4A   ; 
- D 1 - I - 0x01EAE6 07:AAD6: 48        .byte $48   ; 
- D 1 - I - 0x01EAE7 07:AAD7: 49        .byte $49   ; 
- D 1 - I - 0x01EAE8 07:AAD8: 4B        .byte $4B   ; 
- D 1 - I - 0x01EAE9 07:AAD9: 42        .byte $42   ; 
- D 1 - I - 0x01EAEA 07:AADA: 43        .byte $43   ; 
- D 1 - I - 0x01EAEB 07:AADB: 3F        .byte $3F   ; 
- D 1 - I - 0x01EAEC 07:AADC: 45        .byte $45   ; 
- D 1 - I - 0x01EAED 07:AADD: 39        .byte $39   ; 
- D 1 - I - 0x01EAEE 07:AADE: 4C        .byte $4C   ; 
- D 1 - I - 0x01EAEF 07:AADF: 4D        .byte $4D   ; 
- D 1 - I - 0x01EAF0 07:AAE0: 39        .byte $39   ; 
- D 1 - I - 0x01EAF1 07:AAE1: 57        .byte $57   ; 
- D 1 - I - 0x01EAF2 07:AAE2: 3F        .byte $3F   ; 
- D 1 - I - 0x01EAF3 07:AAE3: 46        .byte $46   ; 
- D 1 - I - 0x01EAF4 07:AAE4: 46        .byte $46   ; 
- D 1 - I - 0x01EAF5 07:AAE5: 39        .byte $39   ; 
- D 1 - I - 0x01EAF6 07:AAE6: 44        .byte $44   ; 
- D 1 - I - 0x01EAF7 07:AAE7: 4D        .byte $4D   ; 
- D 1 - I - 0x01EAF8 07:AAE8: 39        .byte $39   ; 
- D 1 - I - 0x01EAF9 07:AAE9: 44        .byte $44   ; 
- D 1 - I - 0x01EAFA 07:AAEA: 46        .byte $46   ; 
- D 1 - I - 0x01EAFB 07:AAEB: 42        .byte $42   ; 
- D 1 - I - 0x01EAFC 07:AAEC: 43        .byte $43   ; 
- D 1 - I - 0x01EAFD 07:AAED: 39        .byte $39   ; 
- D 1 - I - 0x01EAFE 07:AAEE: 42        .byte $42   ; 
- D 1 - I - 0x01EAFF 07:AAEF: 44        .byte $44   ; 
- D 1 - I - 0x01EB00 07:AAF0: 39        .byte $39   ; 
- D 1 - I - 0x01EB01 07:AAF1: 42        .byte $42   ; 
- D 1 - I - 0x01EB02 07:AAF2: 43        .byte $43   ; 
- D 1 - I - 0x01EB03 07:AAF3: 47        .byte $47   ; 
- D 1 - I - 0x01EB04 07:AAF4: 47        .byte $47   ; 
- D 1 - I - 0x01EB05 07:AAF5: 4A        .byte $4A   ; 
- D 1 - I - 0x01EB06 07:AAF6: 00        .byte $00   ; 
- D 1 - I - 0x01EB07 07:AAF7: 00        .byte $00   ; 
- D 1 - I - 0x01EB08 07:AAF8: 4A        .byte $4A   ; 
- D 1 - I - 0x01EB09 07:AAF9: 47        .byte $47   ; 
- D 1 - I - 0x01EB0A 07:AAFA: 47        .byte $47   ; 
- D 1 - I - 0x01EB0B 07:AAFB: 3F        .byte $3F   ; 
- D 1 - I - 0x01EB0C 07:AAFC: 44        .byte $44   ; 
- D 1 - I - 0x01EB0D 07:AAFD: 39        .byte $39   ; 
- D 1 - I - 0x01EB0E 07:AAFE: 3F        .byte $3F   ; 
- D 1 - I - 0x01EB0F 07:AAFF: 57        .byte $57   ; 
- D 1 - I - 0x01EB10 07:AB00: 39        .byte $39   ; 
- D 1 - I - 0x01EB11 07:AB01: 57        .byte $57   ; 
- D 1 - I - 0x01EB12 07:AB02: 57        .byte $57   ; 
- D 1 - I - 0x01EB13 07:AB03: 48        .byte $48   ; 
- D 1 - I - 0x01EB14 07:AB04: 49        .byte $49   ; 
- D 1 - I - 0x01EB15 07:AB05: 48        .byte $48   ; 
- D 1 - I - 0x01EB16 07:AB06: 44        .byte $44   ; 
- D 1 - I - 0x01EB17 07:AB07: 48        .byte $48   ; 
- D 1 - I - 0x01EB18 07:AB08: 49        .byte $49   ; 
- D 1 - I - 0x01EB19 07:AB09: 48        .byte $48   ; 
- D 1 - I - 0x01EB1A 07:AB0A: 49        .byte $49   ; 
- D 1 - I - 0x01EB1B 07:AB0B: 4C        .byte $4C   ; 
- D 1 - I - 0x01EB1C 07:AB0C: 4D        .byte $4D   ; 
- D 1 - I - 0x01EB1D 07:AB0D: 4C        .byte $4C   ; 
- D 1 - I - 0x01EB1E 07:AB0E: 4D        .byte $4D   ; 
- D 1 - I - 0x01EB1F 07:AB0F: 4C        .byte $4C   ; 
- D 1 - I - 0x01EB20 07:AB10: 4D        .byte $4D   ; 
- D 1 - I - 0x01EB21 07:AB11: 4C        .byte $4C   ; 
- D 1 - I - 0x01EB22 07:AB12: 4D        .byte $4D   ; 
- D 1 - I - 0x01EB23 07:AB13: 4C        .byte $4C   ; 
- D 1 - I - 0x01EB24 07:AB14: 4D        .byte $4D   ; 
- D 1 - I - 0x01EB25 07:AB15: 4C        .byte $4C   ; 
- D 1 - I - 0x01EB26 07:AB16: 4D        .byte $4D   ; 
- D 1 - I - 0x01EB27 07:AB17: 4C        .byte $4C   ; 
- D 1 - I - 0x01EB28 07:AB18: 4E        .byte $4E   ; 
- D 1 - I - 0x01EB29 07:AB19: 40        .byte $40   ; 
- D 1 - I - 0x01EB2A 07:AB1A: 4D        .byte $4D   ; 
- D 1 - I - 0x01EB2B 07:AB1B: 57        .byte $57   ; 
- D 1 - I - 0x01EB2C 07:AB1C: 3F        .byte $3F   ; 
- D 1 - I - 0x01EB2D 07:AB1D: 57        .byte $57   ; 
- D 1 - I - 0x01EB2E 07:AB1E: 57        .byte $57   ; 
- D 1 - I - 0x01EB2F 07:AB1F: 41        .byte $41   ; 
- D 1 - I - 0x01EB30 07:AB20: 46        .byte $46   ; 
- D 1 - I - 0x01EB31 07:AB21: 46        .byte $46   ; 
- D 1 - I - 0x01EB32 07:AB22: 46        .byte $46   ; 
- D 1 - I - 0x01EB33 07:AB23: 00        .byte $00   ; 
- D 1 - I - 0x01EB34 07:AB24: 57        .byte $57   ; 
- D 1 - I - 0x01EB35 07:AB25: 00        .byte $00   ; 
- D 1 - I - 0x01EB36 07:AB26: 41        .byte $41   ; 
- D 1 - I - 0x01EB37 07:AB27: 46        .byte $46   ; 
- D 1 - I - 0x01EB38 07:AB28: 46        .byte $46   ; 
- D 1 - I - 0x01EB39 07:AB29: 46        .byte $46   ; 
- D 1 - I - 0x01EB3A 07:AB2A: 46        .byte $46   ; 



_off047_AB2B_0B_01_01:
- D 1 - I - 0x01EB3B 07:AB2B: 02        .byte $02   ; 
- D 1 - I - 0x01EB3C 07:AB2C: 18        .byte $18   ; 
- D 1 - I - 0x01EB3D 07:AB2D: 18        .byte $18   ; 
- D 1 - I - 0x01EB3E 07:AB2E: 18        .byte $18   ; 
- D 1 - I - 0x01EB3F 07:AB2F: 18        .byte $18   ; 
- D 1 - I - 0x01EB40 07:AB30: 18        .byte $18   ; 
- D 1 - I - 0x01EB41 07:AB31: 18        .byte $18   ; 
- D 1 - I - 0x01EB42 07:AB32: 18        .byte $18   ; 
- D 1 - I - 0x01EB43 07:AB33: 18        .byte $18   ; 
- D 1 - I - 0x01EB44 07:AB34: 18        .byte $18   ; 
- D 1 - I - 0x01EB45 07:AB35: 3D        .byte $3D   ; 
- D 1 - I - 0x01EB46 07:AB36: 18        .byte $18   ; 
- D 1 - I - 0x01EB47 07:AB37: 18        .byte $18   ; 
- D 1 - I - 0x01EB48 07:AB38: 18        .byte $18   ; 
- D 1 - I - 0x01EB49 07:AB39: 18        .byte $18   ; 
- D 1 - I - 0x01EB4A 07:AB3A: 18        .byte $18   ; 
- D 1 - I - 0x01EB4B 07:AB3B: 18        .byte $18   ; 
- D 1 - I - 0x01EB4C 07:AB3C: 21        .byte $21   ; 
- D 1 - I - 0x01EB4D 07:AB3D: 39        .byte $39   ; 
- D 1 - I - 0x01EB4E 07:AB3E: 21        .byte $21   ; 
- D 1 - I - 0x01EB4F 07:AB3F: 21        .byte $21   ; 
- D 1 - I - 0x01EB50 07:AB40: 13        .byte $13   ; 
- D 1 - I - 0x01EB51 07:AB41: 15        .byte $15   ; 
- D 1 - I - 0x01EB52 07:AB42: 13        .byte $13   ; 
- D 1 - I - 0x01EB53 07:AB43: 21        .byte $21   ; 
- D 1 - I - 0x01EB54 07:AB44: 19        .byte $19   ; 
- D 1 - I - 0x01EB55 07:AB45: 39        .byte $39   ; 
- D 1 - I - 0x01EB56 07:AB46: 19        .byte $19   ; 
- D 1 - I - 0x01EB57 07:AB47: 19        .byte $19   ; 
- D 1 - I - 0x01EB58 07:AB48: 39        .byte $39   ; 
- D 1 - I - 0x01EB59 07:AB49: 1C        .byte $1C   ; 
- D 1 - I - 0x01EB5A 07:AB4A: 39        .byte $39   ; 
- D 1 - I - 0x01EB5B 07:AB4B: 13        .byte $13   ; 
- D 1 - I - 0x01EB5C 07:AB4C: 1D        .byte $1D   ; 
- D 1 - I - 0x01EB5D 07:AB4D: 39        .byte $39   ; 
- D 1 - I - 0x01EB5E 07:AB4E: 13        .byte $13   ; 
- D 1 - I - 0x01EB5F 07:AB4F: 15        .byte $15   ; 
- D 1 - I - 0x01EB60 07:AB50: 06        .byte $06   ; 
- D 1 - I - 0x01EB61 07:AB51: 34        .byte $34   ; 
- D 1 - I - 0x01EB62 07:AB52: 39        .byte $39   ; 
- D 1 - I - 0x01EB63 07:AB53: 39        .byte $39   ; 
- D 1 - I - 0x01EB64 07:AB54: 00        .byte $00   ; 
- D 1 - I - 0x01EB65 07:AB55: 39        .byte $39   ; 
- D 1 - I - 0x01EB66 07:AB56: 39        .byte $39   ; 
- D 1 - I - 0x01EB67 07:AB57: 00        .byte $00   ; 
- D 1 - I - 0x01EB68 07:AB58: 39        .byte $39   ; 
- D 1 - I - 0x01EB69 07:AB59: 0B        .byte $0B   ; 
- D 1 - I - 0x01EB6A 07:AB5A: 39        .byte $39   ; 
- D 1 - I - 0x01EB6B 07:AB5B: 39        .byte $39   ; 
- D 1 - I - 0x01EB6C 07:AB5C: 18        .byte $18   ; 
- D 1 - I - 0x01EB6D 07:AB5D: 18        .byte $18   ; 
- D 1 - I - 0x01EB6E 07:AB5E: 18        .byte $18   ; 
- D 1 - I - 0x01EB6F 07:AB5F: 18        .byte $18   ; 
- D 1 - I - 0x01EB70 07:AB60: 18        .byte $18   ; 
- D 1 - I - 0x01EB71 07:AB61: 18        .byte $18   ; 
- D 1 - I - 0x01EB72 07:AB62: 18        .byte $18   ; 
- D 1 - I - 0x01EB73 07:AB63: 18        .byte $18   ; 
- D 1 - I - 0x01EB74 07:AB64: 18        .byte $18   ; 
- D 1 - I - 0x01EB75 07:AB65: 18        .byte $18   ; 
- D 1 - I - 0x01EB76 07:AB66: 18        .byte $18   ; 
- D 1 - I - 0x01EB77 07:AB67: 18        .byte $18   ; 
- D 1 - I - 0x01EB78 07:AB68: 18        .byte $18   ; 
- D 1 - I - 0x01EB79 07:AB69: 3D        .byte $3D   ; 
- D 1 - I - 0x01EB7A 07:AB6A: 18        .byte $18   ; 
- D 1 - I - 0x01EB7B 07:AB6B: 18        .byte $18   ; 
- D 1 - I - 0x01EB7C 07:AB6C: 21        .byte $21   ; 
- D 1 - I - 0x01EB7D 07:AB6D: 21        .byte $21   ; 
- D 1 - I - 0x01EB7E 07:AB6E: 21        .byte $21   ; 
- D 1 - I - 0x01EB7F 07:AB6F: 21        .byte $21   ; 
- D 1 - I - 0x01EB80 07:AB70: 21        .byte $21   ; 
- D 1 - I - 0x01EB81 07:AB71: 39        .byte $39   ; 
- D 1 - I - 0x01EB82 07:AB72: 21        .byte $21   ; 
- D 1 - I - 0x01EB83 07:AB73: 21        .byte $21   ; 
- D 1 - I - 0x01EB84 07:AB74: 19        .byte $19   ; 
- D 1 - I - 0x01EB85 07:AB75: 19        .byte $19   ; 
- D 1 - I - 0x01EB86 07:AB76: 3D        .byte $3D   ; 
- D 1 - I - 0x01EB87 07:AB77: 1D        .byte $1D   ; 
- D 1 - I - 0x01EB88 07:AB78: 34        .byte $34   ; 
- D 1 - I - 0x01EB89 07:AB79: 39        .byte $39   ; 
- D 1 - I - 0x01EB8A 07:AB7A: 19        .byte $19   ; 
- D 1 - I - 0x01EB8B 07:AB7B: 15        .byte $15   ; 
- D 1 - I - 0x01EB8C 07:AB7C: 1D        .byte $1D   ; 
- D 1 - I - 0x01EB8D 07:AB7D: 34        .byte $34   ; 
- D 1 - I - 0x01EB8E 07:AB7E: 39        .byte $39   ; 
- D 1 - I - 0x01EB8F 07:AB7F: 00        .byte $00   ; 
- D 1 - I - 0x01EB90 07:AB80: 00        .byte $00   ; 
- D 1 - I - 0x01EB91 07:AB81: 39        .byte $39   ; 
- D 1 - I - 0x01EB92 07:AB82: 1D        .byte $1D   ; 
- D 1 - I - 0x01EB93 07:AB83: 3B        .byte $3B   ; 
- D 1 - I - 0x01EB94 07:AB84: 00        .byte $00   ; 
- D 1 - I - 0x01EB95 07:AB85: 00        .byte $00   ; 
- D 1 - I - 0x01EB96 07:AB86: 39        .byte $39   ; 
- D 1 - I - 0x01EB97 07:AB87: 00        .byte $00   ; 
- D 1 - I - 0x01EB98 07:AB88: 00        .byte $00   ; 
- D 1 - I - 0x01EB99 07:AB89: 39        .byte $39   ; 
- D 1 - I - 0x01EB9A 07:AB8A: 00        .byte $00   ; 
- D 1 - I - 0x01EB9B 07:AB8B: 00        .byte $00   ; 
- D 1 - I - 0x01EB9C 07:AB8C: 18        .byte $18   ; 
- D 1 - I - 0x01EB9D 07:AB8D: 18        .byte $18   ; 
- D 1 - I - 0x01EB9E 07:AB8E: 18        .byte $18   ; 
- D 1 - I - 0x01EB9F 07:AB8F: 18        .byte $18   ; 
- D 1 - I - 0x01EBA0 07:AB90: 18        .byte $18   ; 
- D 1 - I - 0x01EBA1 07:AB91: 2C        .byte $2C   ; 
- D 1 - I - 0x01EBA2 07:AB92: 00        .byte $00   ; 
- D 1 - I - 0x01EBA3 07:AB93: 4F        .byte $4F   ; 
- D 1 - I - 0x01EBA4 07:AB94: 18        .byte $18   ; 
- D 1 - I - 0x01EBA5 07:AB95: 18        .byte $18   ; 
- D 1 - I - 0x01EBA6 07:AB96: 18        .byte $18   ; 
- D 1 - I - 0x01EBA7 07:AB97: 18        .byte $18   ; 
- D 1 - I - 0x01EBA8 07:AB98: 18        .byte $18   ; 
- D 1 - I - 0x01EBA9 07:AB99: 2C        .byte $2C   ; 
- D 1 - I - 0x01EBAA 07:AB9A: 00        .byte $00   ; 
- D 1 - I - 0x01EBAB 07:AB9B: 1A        .byte $1A   ; 
- D 1 - I - 0x01EBAC 07:AB9C: 21        .byte $21   ; 
- D 1 - I - 0x01EBAD 07:AB9D: 21        .byte $21   ; 
- D 1 - I - 0x01EBAE 07:AB9E: 21        .byte $21   ; 
- D 1 - I - 0x01EBAF 07:AB9F: 21        .byte $21   ; 
- D 1 - I - 0x01EBB0 07:ABA0: 21        .byte $21   ; 
- D 1 - I - 0x01EBB1 07:ABA1: 2A        .byte $2A   ; 
- D 1 - I - 0x01EBB2 07:ABA2: 00        .byte $00   ; 
- D 1 - I - 0x01EBB3 07:ABA3: 1F        .byte $1F   ; 
- D 1 - I - 0x01EBB4 07:ABA4: 13        .byte $13   ; 
- D 1 - I - 0x01EBB5 07:ABA5: 03        .byte $03   ; 
- D 1 - I - 0x01EBB6 07:ABA6: 19        .byte $19   ; 
- D 1 - I - 0x01EBB7 07:ABA7: 3D        .byte $3D   ; 
- D 1 - I - 0x01EBB8 07:ABA8: 34        .byte $34   ; 
- D 1 - I - 0x01EBB9 07:ABA9: 2A        .byte $2A   ; 
- D 1 - I - 0x01EBBA 07:ABAA: 35        .byte $35   ; 
- D 1 - I - 0x01EBBB 07:ABAB: 4F        .byte $4F   ; 
- D 1 - I - 0x01EBBC 07:ABAC: 39        .byte $39   ; 
- D 1 - I - 0x01EBBD 07:ABAD: 3A        .byte $3A   ; 
- D 1 - I - 0x01EBBE 07:ABAE: 1D        .byte $1D   ; 
- D 1 - I - 0x01EBBF 07:ABAF: 39        .byte $39   ; 
- D 1 - I - 0x01EBC0 07:ABB0: 00        .byte $00   ; 
- D 1 - I - 0x01EBC1 07:ABB1: 2A        .byte $2A   ; 
- D 1 - I - 0x01EBC2 07:ABB2: 3C        .byte $3C   ; 
- D 1 - I - 0x01EBC3 07:ABB3: 4F        .byte $4F   ; 
- D 1 - I - 0x01EBC4 07:ABB4: 39        .byte $39   ; 
- D 1 - I - 0x01EBC5 07:ABB5: 00        .byte $00   ; 
- D 1 - I - 0x01EBC6 07:ABB6: 00        .byte $00   ; 
- D 1 - I - 0x01EBC7 07:ABB7: 39        .byte $39   ; 
- D 1 - I - 0x01EBC8 07:ABB8: 00        .byte $00   ; 
- D 1 - I - 0x01EBC9 07:ABB9: 2A        .byte $2A   ; 
- D 1 - I - 0x01EBCA 07:ABBA: 3C        .byte $3C   ; 
- D 1 - I - 0x01EBCB 07:ABBB: 4F        .byte $4F   ; 



_off047_ABBC_0B_02_02:
- D 1 - I - 0x01EBCC 07:ABBC: 02        .byte $02   ; 
- D 1 - I - 0x01EBCD 07:ABBD: 00        .byte $00   ; 
- D 1 - I - 0x01EBCE 07:ABBE: 3C        .byte $3C   ; 
- D 1 - I - 0x01EBCF 07:ABBF: 2D        .byte $2D   ; 
- D 1 - I - 0x01EBD0 07:ABC0: 18        .byte $18   ; 
- D 1 - I - 0x01EBD1 07:ABC1: 18        .byte $18   ; 
- D 1 - I - 0x01EBD2 07:ABC2: 18        .byte $18   ; 
- D 1 - I - 0x01EBD3 07:ABC3: 18        .byte $18   ; 
- D 1 - I - 0x01EBD4 07:ABC4: 18        .byte $18   ; 
- D 1 - I - 0x01EBD5 07:ABC5: 00        .byte $00   ; 
- D 1 - I - 0x01EBD6 07:ABC6: 3C        .byte $3C   ; 
- D 1 - I - 0x01EBD7 07:ABC7: 3D        .byte $3D   ; 
- D 1 - I - 0x01EBD8 07:ABC8: 21        .byte $21   ; 
- D 1 - I - 0x01EBD9 07:ABC9: 21        .byte $21   ; 
- D 1 - I - 0x01EBDA 07:ABCA: 21        .byte $21   ; 
- D 1 - I - 0x01EBDB 07:ABCB: 21        .byte $21   ; 
- D 1 - I - 0x01EBDC 07:ABCC: 21        .byte $21   ; 
- D 1 - I - 0x01EBDD 07:ABCD: 00        .byte $00   ; 
- D 1 - I - 0x01EBDE 07:ABCE: 3C        .byte $3C   ; 
- D 1 - I - 0x01EBDF 07:ABCF: 39        .byte $39   ; 
- D 1 - I - 0x01EBE0 07:ABD0: 31        .byte $31   ; 
- D 1 - I - 0x01EBE1 07:ABD1: 32        .byte $32   ; 
- D 1 - I - 0x01EBE2 07:ABD2: 31        .byte $31   ; 
- D 1 - I - 0x01EBE3 07:ABD3: 32        .byte $32   ; 
- D 1 - I - 0x01EBE4 07:ABD4: 31        .byte $31   ; 
- D 1 - I - 0x01EBE5 07:ABD5: 35        .byte $35   ; 
- D 1 - I - 0x01EBE6 07:ABD6: 36        .byte $36   ; 
- D 1 - I - 0x01EBE7 07:ABD7: 35        .byte $35   ; 
- D 1 - I - 0x01EBE8 07:ABD8: 36        .byte $36   ; 
- D 1 - I - 0x01EBE9 07:ABD9: 36        .byte $36   ; 
- D 1 - I - 0x01EBEA 07:ABDA: 35        .byte $35   ; 
- D 1 - I - 0x01EBEB 07:ABDB: 36        .byte $36   ; 
- D 1 - I - 0x01EBEC 07:ABDC: 36        .byte $36   ; 
- D 1 - I - 0x01EBED 07:ABDD: 3C        .byte $3C   ; 
- D 1 - I - 0x01EBEE 07:ABDE: 00        .byte $00   ; 
- D 1 - I - 0x01EBEF 07:ABDF: 39        .byte $39   ; 
- D 1 - I - 0x01EBF0 07:ABE0: 3A        .byte $3A   ; 
- D 1 - I - 0x01EBF1 07:ABE1: 3B        .byte $3B   ; 
- D 1 - I - 0x01EBF2 07:ABE2: 39        .byte $39   ; 
- D 1 - I - 0x01EBF3 07:ABE3: 3A        .byte $3A   ; 
- D 1 - I - 0x01EBF4 07:ABE4: 3B        .byte $3B   ; 
- D 1 - I - 0x01EBF5 07:ABE5: 3C        .byte $3C   ; 
- D 1 - I - 0x01EBF6 07:ABE6: 00        .byte $00   ; 
- D 1 - I - 0x01EBF7 07:ABE7: 39        .byte $39   ; 
- D 1 - I - 0x01EBF8 07:ABE8: 00        .byte $00   ; 
- D 1 - I - 0x01EBF9 07:ABE9: 00        .byte $00   ; 
- D 1 - I - 0x01EBFA 07:ABEA: 39        .byte $39   ; 
- D 1 - I - 0x01EBFB 07:ABEB: 00        .byte $00   ; 
- D 1 - I - 0x01EBFC 07:ABEC: 00        .byte $00   ; 
- D 1 - I - 0x01EBFD 07:ABED: 18        .byte $18   ; 
- D 1 - I - 0x01EBFE 07:ABEE: 18        .byte $18   ; 
- D 1 - I - 0x01EBFF 07:ABEF: 18        .byte $18   ; 
- D 1 - I - 0x01EC00 07:ABF0: 18        .byte $18   ; 
- D 1 - I - 0x01EC01 07:ABF1: 18        .byte $18   ; 
- D 1 - I - 0x01EC02 07:ABF2: 18        .byte $18   ; 
- D 1 - I - 0x01EC03 07:ABF3: 18        .byte $18   ; 
- D 1 - I - 0x01EC04 07:ABF4: 18        .byte $18   ; 
- D 1 - I - 0x01EC05 07:ABF5: 21        .byte $21   ; 
- D 1 - I - 0x01EC06 07:ABF6: 21        .byte $21   ; 
- D 1 - I - 0x01EC07 07:ABF7: 21        .byte $21   ; 
- D 1 - I - 0x01EC08 07:ABF8: 3D        .byte $3D   ; 
- D 1 - I - 0x01EC09 07:ABF9: 21        .byte $21   ; 
- D 1 - I - 0x01EC0A 07:ABFA: 21        .byte $21   ; 
- D 1 - I - 0x01EC0B 07:ABFB: 21        .byte $21   ; 
- D 1 - I - 0x01EC0C 07:ABFC: 21        .byte $21   ; 
- D 1 - I - 0x01EC0D 07:ABFD: 31        .byte $31   ; 
- D 1 - I - 0x01EC0E 07:ABFE: 32        .byte $32   ; 
- D 1 - I - 0x01EC0F 07:ABFF: 31        .byte $31   ; 
- D 1 - I - 0x01EC10 07:AC00: 39        .byte $39   ; 
- D 1 - I - 0x01EC11 07:AC01: 32        .byte $32   ; 
- D 1 - I - 0x01EC12 07:AC02: 33        .byte $33   ; 
- D 1 - I - 0x01EC13 07:AC03: 32        .byte $32   ; 
- D 1 - I - 0x01EC14 07:AC04: 31        .byte $31   ; 
- D 1 - I - 0x01EC15 07:AC05: 35        .byte $35   ; 
- D 1 - I - 0x01EC16 07:AC06: 36        .byte $36   ; 
- D 1 - I - 0x01EC17 07:AC07: 36        .byte $36   ; 
- D 1 - I - 0x01EC18 07:AC08: 35        .byte $35   ; 
- D 1 - I - 0x01EC19 07:AC09: 36        .byte $36   ; 
- D 1 - I - 0x01EC1A 07:AC0A: 36        .byte $36   ; 
- D 1 - I - 0x01EC1B 07:AC0B: 35        .byte $35   ; 
- D 1 - I - 0x01EC1C 07:AC0C: 36        .byte $36   ; 
- D 1 - I - 0x01EC1D 07:AC0D: 39        .byte $39   ; 
- D 1 - I - 0x01EC1E 07:AC0E: 3A        .byte $3A   ; 
- D 1 - I - 0x01EC1F 07:AC0F: 3B        .byte $3B   ; 
- D 1 - I - 0x01EC20 07:AC10: 39        .byte $39   ; 
- D 1 - I - 0x01EC21 07:AC11: 3A        .byte $3A   ; 
- D 1 - I - 0x01EC22 07:AC12: 3B        .byte $3B   ; 
- D 1 - I - 0x01EC23 07:AC13: 39        .byte $39   ; 
- D 1 - I - 0x01EC24 07:AC14: 3A        .byte $3A   ; 
- D 1 - I - 0x01EC25 07:AC15: 39        .byte $39   ; 
- D 1 - I - 0x01EC26 07:AC16: 00        .byte $00   ; 
- D 1 - I - 0x01EC27 07:AC17: 00        .byte $00   ; 
- D 1 - I - 0x01EC28 07:AC18: 39        .byte $39   ; 
- D 1 - I - 0x01EC29 07:AC19: 00        .byte $00   ; 
- D 1 - I - 0x01EC2A 07:AC1A: 00        .byte $00   ; 
- D 1 - I - 0x01EC2B 07:AC1B: 39        .byte $39   ; 
- D 1 - I - 0x01EC2C 07:AC1C: 00        .byte $00   ; 
- D 1 - I - 0x01EC2D 07:AC1D: 18        .byte $18   ; 
- D 1 - I - 0x01EC2E 07:AC1E: 18        .byte $18   ; 
- D 1 - I - 0x01EC2F 07:AC1F: 18        .byte $18   ; 
- D 1 - I - 0x01EC30 07:AC20: 18        .byte $18   ; 
- D 1 - I - 0x01EC31 07:AC21: 18        .byte $18   ; 
- D 1 - I - 0x01EC32 07:AC22: 18        .byte $18   ; 
- D 1 - I - 0x01EC33 07:AC23: 18        .byte $18   ; 
- D 1 - I - 0x01EC34 07:AC24: 18        .byte $18   ; 
- D 1 - I - 0x01EC35 07:AC25: 21        .byte $21   ; 
- D 1 - I - 0x01EC36 07:AC26: 21        .byte $21   ; 
- D 1 - I - 0x01EC37 07:AC27: 21        .byte $21   ; 
- D 1 - I - 0x01EC38 07:AC28: 21        .byte $21   ; 
- D 1 - I - 0x01EC39 07:AC29: 3D        .byte $3D   ; 
- D 1 - I - 0x01EC3A 07:AC2A: 21        .byte $21   ; 
- D 1 - I - 0x01EC3B 07:AC2B: 21        .byte $21   ; 
- D 1 - I - 0x01EC3C 07:AC2C: 21        .byte $21   ; 
- D 1 - I - 0x01EC3D 07:AC2D: 32        .byte $32   ; 
- D 1 - I - 0x01EC3E 07:AC2E: 31        .byte $31   ; 
- D 1 - I - 0x01EC3F 07:AC2F: 32        .byte $32   ; 
- D 1 - I - 0x01EC40 07:AC30: 31        .byte $31   ; 
- D 1 - I - 0x01EC41 07:AC31: 39        .byte $39   ; 
- D 1 - I - 0x01EC42 07:AC32: 19        .byte $19   ; 
- D 1 - I - 0x01EC43 07:AC33: 19        .byte $19   ; 
- D 1 - I - 0x01EC44 07:AC34: 31        .byte $31   ; 
- D 1 - I - 0x01EC45 07:AC35: 36        .byte $36   ; 
- D 1 - I - 0x01EC46 07:AC36: 35        .byte $35   ; 
- D 1 - I - 0x01EC47 07:AC37: 36        .byte $36   ; 
- D 1 - I - 0x01EC48 07:AC38: 37        .byte $37   ; 
- D 1 - I - 0x01EC49 07:AC39: 39        .byte $39   ; 
- D 1 - I - 0x01EC4A 07:AC3A: 32        .byte $32   ; 
- D 1 - I - 0x01EC4B 07:AC3B: 31        .byte $31   ; 
- D 1 - I - 0x01EC4C 07:AC3C: 3C        .byte $3C   ; 
- D 1 - I - 0x01EC4D 07:AC3D: 3B        .byte $3B   ; 
- D 1 - I - 0x01EC4E 07:AC3E: 39        .byte $39   ; 
- D 1 - I - 0x01EC4F 07:AC3F: 3A        .byte $3A   ; 
- D 1 - I - 0x01EC50 07:AC40: 3D        .byte $3D   ; 
- D 1 - I - 0x01EC51 07:AC41: 39        .byte $39   ; 
- D 1 - I - 0x01EC52 07:AC42: 4E        .byte $4E   ; 
- D 1 - I - 0x01EC53 07:AC43: 40        .byte $40   ; 
- D 1 - I - 0x01EC54 07:AC44: 3C        .byte $3C   ; 
- D 1 - I - 0x01EC55 07:AC45: 00        .byte $00   ; 
- D 1 - I - 0x01EC56 07:AC46: 39        .byte $39   ; 
- D 1 - I - 0x01EC57 07:AC47: 00        .byte $00   ; 
- D 1 - I - 0x01EC58 07:AC48: 39        .byte $39   ; 
- D 1 - I - 0x01EC59 07:AC49: 41        .byte $41   ; 
- D 1 - I - 0x01EC5A 07:AC4A: 43        .byte $43   ; 
- D 1 - I - 0x01EC5B 07:AC4B: 46        .byte $46   ; 
- D 1 - I - 0x01EC5C 07:AC4C: 3C        .byte $3C   ; 



_off047_AC4D_0B_01_00:
- D 1 - I - 0x01EC5D 07:AC4D: 02        .byte $02   ; 
- D 1 - I - 0x01EC5E 07:AC4E: 00        .byte $00   ; 
- D 1 - I - 0x01EC5F 07:AC4F: 26        .byte $26   ; 
- D 1 - I - 0x01EC60 07:AC50: 2F        .byte $2F   ; 
- D 1 - I - 0x01EC61 07:AC51: 00        .byte $00   ; 
- D 1 - I - 0x01EC62 07:AC52: 05        .byte $05   ; 
- D 1 - I - 0x01EC63 07:AC53: 2A        .byte $2A   ; 
- D 1 - I - 0x01EC64 07:AC54: 0B        .byte $0B   ; 
- D 1 - I - 0x01EC65 07:AC55: 00        .byte $00   ; 
- D 1 - I - 0x01EC66 07:AC56: 00        .byte $00   ; 
- D 1 - I - 0x01EC67 07:AC57: 2A        .byte $2A   ; 
- D 1 - I - 0x01EC68 07:AC58: 2B        .byte $2B   ; 
- D 1 - I - 0x01EC69 07:AC59: 00        .byte $00   ; 
- D 1 - I - 0x01EC6A 07:AC5A: 05        .byte $05   ; 
- D 1 - I - 0x01EC6B 07:AC5B: 26        .byte $26   ; 
- D 1 - I - 0x01EC6C 07:AC5C: 2B        .byte $2B   ; 
- D 1 - I - 0x01EC6D 07:AC5D: 0B        .byte $0B   ; 
- D 1 - I - 0x01EC6E 07:AC5E: 00        .byte $00   ; 
- D 1 - I - 0x01EC6F 07:AC5F: 26        .byte $26   ; 
- D 1 - I - 0x01EC70 07:AC60: 2F        .byte $2F   ; 
- D 1 - I - 0x01EC71 07:AC61: 00        .byte $00   ; 
- D 1 - I - 0x01EC72 07:AC62: 05        .byte $05   ; 
- D 1 - I - 0x01EC73 07:AC63: 16        .byte $16   ; 
- D 1 - I - 0x01EC74 07:AC64: 16        .byte $16   ; 
- D 1 - I - 0x01EC75 07:AC65: 16        .byte $16   ; 
- D 1 - I - 0x01EC76 07:AC66: 15        .byte $15   ; 
- D 1 - I - 0x01EC77 07:AC67: 15        .byte $15   ; 
- D 1 - I - 0x01EC78 07:AC68: 2B        .byte $2B   ; 
- D 1 - I - 0x01EC79 07:AC69: 00        .byte $00   ; 
- D 1 - I - 0x01EC7A 07:AC6A: 00        .byte $00   ; 
- D 1 - I - 0x01EC7B 07:AC6B: 2A        .byte $2A   ; 
- D 1 - I - 0x01EC7C 07:AC6C: 2F        .byte $2F   ; 
- D 1 - I - 0x01EC7D 07:AC6D: 00        .byte $00   ; 
- D 1 - I - 0x01EC7E 07:AC6E: 28        .byte $28   ; 
- D 1 - I - 0x01EC7F 07:AC6F: 26        .byte $26   ; 
- D 1 - I - 0x01EC80 07:AC70: 15        .byte $15   ; 
- D 1 - I - 0x01EC81 07:AC71: 3F        .byte $3F   ; 
- D 1 - I - 0x01EC82 07:AC72: 3F        .byte $3F   ; 
- D 1 - I - 0x01EC83 07:AC73: 2A        .byte $2A   ; 
- D 1 - I - 0x01EC84 07:AC74: 2B        .byte $2B   ; 
- D 1 - I - 0x01EC85 07:AC75: 3F        .byte $3F   ; 
- D 1 - I - 0x01EC86 07:AC76: 2E        .byte $2E   ; 
- D 1 - I - 0x01EC87 07:AC77: 2A        .byte $2A   ; 
- D 1 - I - 0x01EC88 07:AC78: 2F        .byte $2F   ; 
- D 1 - I - 0x01EC89 07:AC79: 12        .byte $12   ; 
- D 1 - I - 0x01EC8A 07:AC7A: 03        .byte $03   ; 
- D 1 - I - 0x01EC8B 07:AC7B: 01        .byte $01   ; 
- D 1 - I - 0x01EC8C 07:AC7C: 15        .byte $15   ; 
- D 1 - I - 0x01EC8D 07:AC7D: 01        .byte $01   ; 
- D 1 - I - 0x01EC8E 07:AC7E: 00        .byte $00   ; 
- D 1 - I - 0x01EC8F 07:AC7F: 26        .byte $26   ; 
- D 1 - I - 0x01EC90 07:AC80: 2D        .byte $2D   ; 
- D 1 - I - 0x01EC91 07:AC81: 18        .byte $18   ; 
- D 1 - I - 0x01EC92 07:AC82: 18        .byte $18   ; 
- D 1 - I - 0x01EC93 07:AC83: 2C        .byte $2C   ; 
- D 1 - I - 0x01EC94 07:AC84: 2D        .byte $2D   ; 
- D 1 - I - 0x01EC95 07:AC85: 18        .byte $18   ; 
- D 1 - I - 0x01EC96 07:AC86: 00        .byte $00   ; 
- D 1 - I - 0x01EC97 07:AC87: 2E        .byte $2E   ; 
- D 1 - I - 0x01EC98 07:AC88: 23        .byte $23   ; 
- D 1 - I - 0x01EC99 07:AC89: 21        .byte $21   ; 
- D 1 - I - 0x01EC9A 07:AC8A: 21        .byte $21   ; 
- D 1 - I - 0x01EC9B 07:AC8B: 22        .byte $22   ; 
- D 1 - I - 0x01EC9C 07:AC8C: 23        .byte $23   ; 
- D 1 - I - 0x01EC9D 07:AC8D: 21        .byte $21   ; 
- D 1 - I - 0x01EC9E 07:AC8E: 0D        .byte $0D   ; 
- D 1 - I - 0x01EC9F 07:AC8F: 16        .byte $16   ; 
- D 1 - I - 0x01ECA0 07:AC90: 16        .byte $16   ; 
- D 1 - I - 0x01ECA1 07:AC91: 1E        .byte $1E   ; 
- D 1 - I - 0x01ECA2 07:AC92: 1E        .byte $1E   ; 
- D 1 - I - 0x01ECA3 07:AC93: 16        .byte $16   ; 
- D 1 - I - 0x01ECA4 07:AC94: 16        .byte $16   ; 
- D 1 - I - 0x01ECA5 07:AC95: 05        .byte $05   ; 
- D 1 - I - 0x01ECA6 07:AC96: 00        .byte $00   ; 
- D 1 - I - 0x01ECA7 07:AC97: 2A        .byte $2A   ; 
- D 1 - I - 0x01ECA8 07:AC98: 2B        .byte $2B   ; 
- D 1 - I - 0x01ECA9 07:AC99: 30        .byte $30   ; 
- D 1 - I - 0x01ECAA 07:AC9A: 30        .byte $30   ; 
- D 1 - I - 0x01ECAB 07:AC9B: 2A        .byte $2A   ; 
- D 1 - I - 0x01ECAC 07:AC9C: 2F        .byte $2F   ; 
- D 1 - I - 0x01ECAD 07:AC9D: 30        .byte $30   ; 
- D 1 - I - 0x01ECAE 07:AC9E: 3F        .byte $3F   ; 
- D 1 - I - 0x01ECAF 07:AC9F: 2A        .byte $2A   ; 
- D 1 - I - 0x01ECB0 07:ACA0: 2F        .byte $2F   ; 
- D 1 - I - 0x01ECB1 07:ACA1: 31        .byte $31   ; 
- D 1 - I - 0x01ECB2 07:ACA2: 31        .byte $31   ; 
- D 1 - I - 0x01ECB3 07:ACA3: 2A        .byte $2A   ; 
- D 1 - I - 0x01ECB4 07:ACA4: 2B        .byte $2B   ; 
- D 1 - I - 0x01ECB5 07:ACA5: 31        .byte $31   ; 
- D 1 - I - 0x01ECB6 07:ACA6: 03        .byte $03   ; 
- D 1 - I - 0x01ECB7 07:ACA7: 01        .byte $01   ; 
- D 1 - I - 0x01ECB8 07:ACA8: 02        .byte $02   ; 
- D 1 - I - 0x01ECB9 07:ACA9: 03        .byte $03   ; 
- D 1 - I - 0x01ECBA 07:ACAA: 00        .byte $00   ; 
- D 1 - I - 0x01ECBB 07:ACAB: 01        .byte $01   ; 
- D 1 - I - 0x01ECBC 07:ACAC: 02        .byte $02   ; 
- D 1 - I - 0x01ECBD 07:ACAD: 03        .byte $03   ; 
- D 1 - I - 0x01ECBE 07:ACAE: 18        .byte $18   ; 
- D 1 - I - 0x01ECBF 07:ACAF: 18        .byte $18   ; 
- D 1 - I - 0x01ECC0 07:ACB0: 2C        .byte $2C   ; 
- D 1 - I - 0x01ECC1 07:ACB1: 2D        .byte $2D   ; 
- D 1 - I - 0x01ECC2 07:ACB2: 18        .byte $18   ; 
- D 1 - I - 0x01ECC3 07:ACB3: 2C        .byte $2C   ; 
- D 1 - I - 0x01ECC4 07:ACB4: 2D        .byte $2D   ; 
- D 1 - I - 0x01ECC5 07:ACB5: 05        .byte $05   ; 
- D 1 - I - 0x01ECC6 07:ACB6: 21        .byte $21   ; 
- D 1 - I - 0x01ECC7 07:ACB7: 21        .byte $21   ; 
- D 1 - I - 0x01ECC8 07:ACB8: 22        .byte $22   ; 
- D 1 - I - 0x01ECC9 07:ACB9: 23        .byte $23   ; 
- D 1 - I - 0x01ECCA 07:ACBA: 21        .byte $21   ; 
- D 1 - I - 0x01ECCB 07:ACBB: 22        .byte $22   ; 
- D 1 - I - 0x01ECCC 07:ACBC: 23        .byte $23   ; 
- D 1 - I - 0x01ECCD 07:ACBD: 05        .byte $05   ; 
- D 1 - I - 0x01ECCE 07:ACBE: 1E        .byte $1E   ; 
- D 1 - I - 0x01ECCF 07:ACBF: 1E        .byte $1E   ; 
- D 1 - I - 0x01ECD0 07:ACC0: 16        .byte $16   ; 
- D 1 - I - 0x01ECD1 07:ACC1: 27        .byte $27   ; 
- D 1 - I - 0x01ECD2 07:ACC2: 31        .byte $31   ; 
- D 1 - I - 0x01ECD3 07:ACC3: 16        .byte $16   ; 
- D 1 - I - 0x01ECD4 07:ACC4: 16        .byte $16   ; 
- D 1 - I - 0x01ECD5 07:ACC5: 05        .byte $05   ; 
- D 1 - I - 0x01ECD6 07:ACC6: 30        .byte $30   ; 
- D 1 - I - 0x01ECD7 07:ACC7: 30        .byte $30   ; 
- D 1 - I - 0x01ECD8 07:ACC8: 12        .byte $12   ; 
- D 1 - I - 0x01ECD9 07:ACC9: 15        .byte $15   ; 
- D 1 - I - 0x01ECDA 07:ACCA: 06        .byte $06   ; 
- D 1 - I - 0x01ECDB 07:ACCB: 10        .byte $10   ; 
- D 1 - I - 0x01ECDC 07:ACCC: 2F        .byte $2F   ; 
- D 1 - I - 0x01ECDD 07:ACCD: 09        .byte $09   ; 
- D 1 - I - 0x01ECDE 07:ACCE: 32        .byte $32   ; 
- D 1 - I - 0x01ECDF 07:ACCF: 31        .byte $31   ; 
- D 1 - I - 0x01ECE0 07:ACD0: 2A        .byte $2A   ; 
- D 1 - I - 0x01ECE1 07:ACD1: 2F        .byte $2F   ; 
- D 1 - I - 0x01ECE2 07:ACD2: 3F        .byte $3F   ; 
- D 1 - I - 0x01ECE3 07:ACD3: 0B        .byte $0B   ; 
- D 1 - I - 0x01ECE4 07:ACD4: 2B        .byte $2B   ; 
- D 1 - I - 0x01ECE5 07:ACD5: 09        .byte $09   ; 
- D 1 - I - 0x01ECE6 07:ACD6: 02        .byte $02   ; 
- D 1 - I - 0x01ECE7 07:ACD7: 03        .byte $03   ; 
- D 1 - I - 0x01ECE8 07:ACD8: 03        .byte $03   ; 
- D 1 - I - 0x01ECE9 07:ACD9: 03        .byte $03   ; 
- D 1 - I - 0x01ECEA 07:ACDA: 01        .byte $01   ; 
- D 1 - I - 0x01ECEB 07:ACDB: 15        .byte $15   ; 
- D 1 - I - 0x01ECEC 07:ACDC: 02        .byte $02   ; 
- D 1 - I - 0x01ECED 07:ACDD: 05        .byte $05   ; 



_off047_ACDE_0B_00_01:
- D 1 - I - 0x01ECEE 07:ACDE: 01        .byte $01   ; 
- D 1 - I - 0x01ECEF 07:ACDF: 18        .byte $18   ; 
- D 1 - I - 0x01ECF0 07:ACE0: 18        .byte $18   ; 
- D 1 - I - 0x01ECF1 07:ACE1: 00        .byte $00   ; 
- D 1 - I - 0x01ECF2 07:ACE2: 00        .byte $00   ; 
- D 1 - I - 0x01ECF3 07:ACE3: 00        .byte $00   ; 
- D 1 - I - 0x01ECF4 07:ACE4: 20        .byte $20   ; 
- D 1 - I - 0x01ECF5 07:ACE5: 18        .byte $18   ; 
- D 1 - I - 0x01ECF6 07:ACE6: 18        .byte $18   ; 
- D 1 - I - 0x01ECF7 07:ACE7: 21        .byte $21   ; 
- D 1 - I - 0x01ECF8 07:ACE8: 21        .byte $21   ; 
- D 1 - I - 0x01ECF9 07:ACE9: 00        .byte $00   ; 
- D 1 - I - 0x01ECFA 07:ACEA: 00        .byte $00   ; 
- D 1 - I - 0x01ECFB 07:ACEB: 00        .byte $00   ; 
- D 1 - I - 0x01ECFC 07:ACEC: 24        .byte $24   ; 
- D 1 - I - 0x01ECFD 07:ACED: 21        .byte $21   ; 
- D 1 - I - 0x01ECFE 07:ACEE: 21        .byte $21   ; 
- D 1 - I - 0x01ECFF 07:ACEF: 31        .byte $31   ; 
- D 1 - I - 0x01ED00 07:ACF0: 32        .byte $32   ; 
- D 1 - I - 0x01ED01 07:ACF1: 3F        .byte $3F   ; 
- D 1 - I - 0x01ED02 07:ACF2: 3F        .byte $3F   ; 
- D 1 - I - 0x01ED03 07:ACF3: 00        .byte $00   ; 
- D 1 - I - 0x01ED04 07:ACF4: 00        .byte $00   ; 
- D 1 - I - 0x01ED05 07:ACF5: 25        .byte $25   ; 
- D 1 - I - 0x01ED06 07:ACF6: 31        .byte $31   ; 
- D 1 - I - 0x01ED07 07:ACF7: 05        .byte $05   ; 
- D 1 - I - 0x01ED08 07:ACF8: 02        .byte $02   ; 
- D 1 - I - 0x01ED09 07:ACF9: 03        .byte $03   ; 
- D 1 - I - 0x01ED0A 07:ACFA: 07        .byte $07   ; 
- D 1 - I - 0x01ED0B 07:ACFB: 01        .byte $01   ; 
- D 1 - I - 0x01ED0C 07:ACFC: 02        .byte $02   ; 
- D 1 - I - 0x01ED0D 07:ACFD: 01        .byte $01   ; 
- D 1 - I - 0x01ED0E 07:ACFE: 05        .byte $05   ; 
- D 1 - I - 0x01ED0F 07:ACFF: 05        .byte $05   ; 
- D 1 - I - 0x01ED10 07:AD00: 3F        .byte $3F   ; 
- D 1 - I - 0x01ED11 07:AD01: 0A        .byte $0A   ; 
- D 1 - I - 0x01ED12 07:AD02: 3F        .byte $3F   ; 
- D 1 - I - 0x01ED13 07:AD03: 3F        .byte $3F   ; 
- D 1 - I - 0x01ED14 07:AD04: 00        .byte $00   ; 
- D 1 - I - 0x01ED15 07:AD05: 3F        .byte $3F   ; 
- D 1 - I - 0x01ED16 07:AD06: 05        .byte $05   ; 
- D 1 - I - 0x01ED17 07:AD07: 05        .byte $05   ; 
- D 1 - I - 0x01ED18 07:AD08: 01        .byte $01   ; 
- D 1 - I - 0x01ED19 07:AD09: 03        .byte $03   ; 
- D 1 - I - 0x01ED1A 07:AD0A: 02        .byte $02   ; 
- D 1 - I - 0x01ED1B 07:AD0B: 01        .byte $01   ; 
- D 1 - I - 0x01ED1C 07:AD0C: 0B        .byte $0B   ; 
- D 1 - I - 0x01ED1D 07:AD0D: 01        .byte $01   ; 
- D 1 - I - 0x01ED1E 07:AD0E: 05        .byte $05   ; 
- D 1 - I - 0x01ED1F 07:AD0F: 2C        .byte $2C   ; 
- D 1 - I - 0x01ED20 07:AD10: 2D        .byte $2D   ; 
- D 1 - I - 0x01ED21 07:AD11: 18        .byte $18   ; 
- D 1 - I - 0x01ED22 07:AD12: 18        .byte $18   ; 
- D 1 - I - 0x01ED23 07:AD13: 22        .byte $22   ; 
- D 1 - I - 0x01ED24 07:AD14: 2F        .byte $2F   ; 
- D 1 - I - 0x01ED25 07:AD15: 28        .byte $28   ; 
- D 1 - I - 0x01ED26 07:AD16: 05        .byte $05   ; 
- D 1 - I - 0x01ED27 07:AD17: 22        .byte $22   ; 
- D 1 - I - 0x01ED28 07:AD18: 23        .byte $23   ; 
- D 1 - I - 0x01ED29 07:AD19: 21        .byte $21   ; 
- D 1 - I - 0x01ED2A 07:AD1A: 21        .byte $21   ; 
- D 1 - I - 0x01ED2B 07:AD1B: 16        .byte $16   ; 
- D 1 - I - 0x01ED2C 07:AD1C: 2B        .byte $2B   ; 
- D 1 - I - 0x01ED2D 07:AD1D: 2E        .byte $2E   ; 
- D 1 - I - 0x01ED2E 07:AD1E: 1B        .byte $1B   ; 
- D 1 - I - 0x01ED2F 07:AD1F: 01        .byte $01   ; 
- D 1 - I - 0x01ED30 07:AD20: 27        .byte $27   ; 
- D 1 - I - 0x01ED31 07:AD21: 31        .byte $31   ; 
- D 1 - I - 0x01ED32 07:AD22: 31        .byte $31   ; 
- D 1 - I - 0x01ED33 07:AD23: 26        .byte $26   ; 
- D 1 - I - 0x01ED34 07:AD24: 2F        .byte $2F   ; 
- D 1 - I - 0x01ED35 07:AD25: 00        .byte $00   ; 
- D 1 - I - 0x01ED36 07:AD26: 1F        .byte $1F   ; 
- D 1 - I - 0x01ED37 07:AD27: 15        .byte $15   ; 
- D 1 - I - 0x01ED38 07:AD28: 03        .byte $03   ; 
- D 1 - I - 0x01ED39 07:AD29: 03        .byte $03   ; 
- D 1 - I - 0x01ED3A 07:AD2A: 03        .byte $03   ; 
- D 1 - I - 0x01ED3B 07:AD2B: 15        .byte $15   ; 
- D 1 - I - 0x01ED3C 07:AD2C: 15        .byte $15   ; 
- D 1 - I - 0x01ED3D 07:AD2D: 03        .byte $03   ; 
- D 1 - I - 0x01ED3E 07:AD2E: 05        .byte $05   ; 
- D 1 - I - 0x01ED3F 07:AD2F: 26        .byte $26   ; 
- D 1 - I - 0x01ED40 07:AD30: 2B        .byte $2B   ; 
- D 1 - I - 0x01ED41 07:AD31: 1C        .byte $1C   ; 
- D 1 - I - 0x01ED42 07:AD32: 1C        .byte $1C   ; 
- D 1 - I - 0x01ED43 07:AD33: 26        .byte $26   ; 
- D 1 - I - 0x01ED44 07:AD34: 28        .byte $28   ; 
- D 1 - I - 0x01ED45 07:AD35: 29        .byte $29   ; 
- D 1 - I - 0x01ED46 07:AD36: 05        .byte $05   ; 
- D 1 - I - 0x01ED47 07:AD37: 26        .byte $26   ; 
- D 1 - I - 0x01ED48 07:AD38: 2F        .byte $2F   ; 
- D 1 - I - 0x01ED49 07:AD39: 34        .byte $34   ; 
- D 1 - I - 0x01ED4A 07:AD3A: 1D        .byte $1D   ; 
- D 1 - I - 0x01ED4B 07:AD3B: 2A        .byte $2A   ; 
- D 1 - I - 0x01ED4C 07:AD3C: 2F        .byte $2F   ; 
- D 1 - I - 0x01ED4D 07:AD3D: 00        .byte $00   ; 
- D 1 - I - 0x01ED4E 07:AD3E: 05        .byte $05   ; 



_off047_AD3F_0B_00_00:
- D 1 - I - 0x01ED4F 07:AD3F: 03        .byte $03   ; 
- D 1 - I - 0x01ED50 07:AD40: 05        .byte $05   ; 
- D 1 - I - 0x01ED51 07:AD41: 36        .byte $36   ; 
- D 1 - I - 0x01ED52 07:AD42: 36        .byte $36   ; 
- D 1 - I - 0x01ED53 07:AD43: 36        .byte $36   ; 
- D 1 - I - 0x01ED54 07:AD44: 36        .byte $36   ; 
- D 1 - I - 0x01ED55 07:AD45: 36        .byte $36   ; 
- D 1 - I - 0x01ED56 07:AD46: 36        .byte $36   ; 
- D 1 - I - 0x01ED57 07:AD47: 35        .byte $35   ; 
- D 1 - I - 0x01ED58 07:AD48: 1B        .byte $1B   ; 
- D 1 - I - 0x01ED59 07:AD49: 00        .byte $00   ; 
- D 1 - I - 0x01ED5A 07:AD4A: 3C        .byte $3C   ; 
- D 1 - I - 0x01ED5B 07:AD4B: 00        .byte $00   ; 
- D 1 - I - 0x01ED5C 07:AD4C: 00        .byte $00   ; 
- D 1 - I - 0x01ED5D 07:AD4D: 3C        .byte $3C   ; 
- D 1 - I - 0x01ED5E 07:AD4E: 00        .byte $00   ; 
- D 1 - I - 0x01ED5F 07:AD4F: 39        .byte $39   ; 
- D 1 - I - 0x01ED60 07:AD50: 1F        .byte $1F   ; 
- D 1 - I - 0x01ED61 07:AD51: 00        .byte $00   ; 
- D 1 - I - 0x01ED62 07:AD52: 3C        .byte $3C   ; 
- D 1 - I - 0x01ED63 07:AD53: 00        .byte $00   ; 
- D 1 - I - 0x01ED64 07:AD54: 30        .byte $30   ; 
- D 1 - I - 0x01ED65 07:AD55: 3C        .byte $3C   ; 
- D 1 - I - 0x01ED66 07:AD56: 30        .byte $30   ; 
- D 1 - I - 0x01ED67 07:AD57: 39        .byte $39   ; 
- D 1 - I - 0x01ED68 07:AD58: 03        .byte $03   ; 
- D 1 - I - 0x01ED69 07:AD59: 15        .byte $15   ; 
- D 1 - I - 0x01ED6A 07:AD5A: 15        .byte $15   ; 
- D 1 - I - 0x01ED6B 07:AD5B: 11        .byte $11   ; 
- D 1 - I - 0x01ED6C 07:AD5C: 34        .byte $34   ; 
- D 1 - I - 0x01ED6D 07:AD5D: 3C        .byte $3C   ; 
- D 1 - I - 0x01ED6E 07:AD5E: 34        .byte $34   ; 
- D 1 - I - 0x01ED6F 07:AD5F: 39        .byte $39   ; 
- D 1 - I - 0x01ED70 07:AD60: 2E        .byte $2E   ; 
- D 1 - I - 0x01ED71 07:AD61: 28        .byte $28   ; 
- D 1 - I - 0x01ED72 07:AD62: 3C        .byte $3C   ; 
- D 1 - I - 0x01ED73 07:AD63: 15        .byte $15   ; 
- D 1 - I - 0x01ED74 07:AD64: 11        .byte $11   ; 
- D 1 - I - 0x01ED75 07:AD65: 38        .byte $38   ; 
- D 1 - I - 0x01ED76 07:AD66: 38        .byte $38   ; 
- D 1 - I - 0x01ED77 07:AD67: 39        .byte $39   ; 
- D 1 - I - 0x01ED78 07:AD68: 15        .byte $15   ; 
- D 1 - I - 0x01ED79 07:AD69: 15        .byte $15   ; 
- D 1 - I - 0x01ED7A 07:AD6A: 15        .byte $15   ; 
- D 1 - I - 0x01ED7B 07:AD6B: 28        .byte $28   ; 
- D 1 - I - 0x01ED7C 07:AD6C: 02        .byte $02   ; 
- D 1 - I - 0x01ED7D 07:AD6D: 03        .byte $03   ; 
- D 1 - I - 0x01ED7E 07:AD6E: 15        .byte $15   ; 
- D 1 - I - 0x01ED7F 07:AD6F: 13        .byte $13   ; 
- D 1 - I - 0x01ED80 07:AD70: 36        .byte $36   ; 
- D 1 - I - 0x01ED81 07:AD71: 36        .byte $36   ; 
- D 1 - I - 0x01ED82 07:AD72: 3E        .byte $3E   ; 
- D 1 - I - 0x01ED83 07:AD73: 36        .byte $36   ; 
- D 1 - I - 0x01ED84 07:AD74: 36        .byte $36   ; 
- D 1 - I - 0x01ED85 07:AD75: 39        .byte $39   ; 
- D 1 - I - 0x01ED86 07:AD76: 36        .byte $36   ; 
- D 1 - I - 0x01ED87 07:AD77: 3E        .byte $3E   ; 
- D 1 - I - 0x01ED88 07:AD78: 00        .byte $00   ; 
- D 1 - I - 0x01ED89 07:AD79: 00        .byte $00   ; 
- D 1 - I - 0x01ED8A 07:AD7A: 3E        .byte $3E   ; 
- D 1 - I - 0x01ED8B 07:AD7B: 00        .byte $00   ; 
- D 1 - I - 0x01ED8C 07:AD7C: 00        .byte $00   ; 
- D 1 - I - 0x01ED8D 07:AD7D: 39        .byte $39   ; 
- D 1 - I - 0x01ED8E 07:AD7E: 00        .byte $00   ; 
- D 1 - I - 0x01ED8F 07:AD7F: 3E        .byte $3E   ; 
- D 1 - I - 0x01ED90 07:AD80: 00        .byte $00   ; 
- D 1 - I - 0x01ED91 07:AD81: 30        .byte $30   ; 
- D 1 - I - 0x01ED92 07:AD82: 3E        .byte $3E   ; 
- D 1 - I - 0x01ED93 07:AD83: 30        .byte $30   ; 
- D 1 - I - 0x01ED94 07:AD84: 00        .byte $00   ; 
- D 1 - I - 0x01ED95 07:AD85: 39        .byte $39   ; 
- D 1 - I - 0x01ED96 07:AD86: 30        .byte $30   ; 
- D 1 - I - 0x01ED97 07:AD87: 3E        .byte $3E   ; 
- D 1 - I - 0x01ED98 07:AD88: 00        .byte $00   ; 
- D 1 - I - 0x01ED99 07:AD89: 34        .byte $34   ; 
- D 1 - I - 0x01ED9A 07:AD8A: 3E        .byte $3E   ; 
- D 1 - I - 0x01ED9B 07:AD8B: 34        .byte $34   ; 
- D 1 - I - 0x01ED9C 07:AD8C: 00        .byte $00   ; 
- D 1 - I - 0x01ED9D 07:AD8D: 39        .byte $39   ; 
- D 1 - I - 0x01ED9E 07:AD8E: 34        .byte $34   ; 
- D 1 - I - 0x01ED9F 07:AD8F: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDA0 07:AD90: 04        .byte $04   ; 
- D 1 - I - 0x01EDA1 07:AD91: 38        .byte $38   ; 
- D 1 - I - 0x01EDA2 07:AD92: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDA3 07:AD93: 38        .byte $38   ; 
- D 1 - I - 0x01EDA4 07:AD94: 00        .byte $00   ; 
- D 1 - I - 0x01EDA5 07:AD95: 39        .byte $39   ; 
- D 1 - I - 0x01EDA6 07:AD96: 38        .byte $38   ; 
- D 1 - I - 0x01EDA7 07:AD97: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDA8 07:AD98: 00        .byte $00   ; 
- D 1 - I - 0x01EDA9 07:AD99: 3C        .byte $3C   ; 
- D 1 - I - 0x01EDAA 07:AD9A: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDAB 07:AD9B: 3C        .byte $3C   ; 
- D 1 - I - 0x01EDAC 07:AD9C: 15        .byte $15   ; 
- D 1 - I - 0x01EDAD 07:AD9D: 13        .byte $13   ; 
- D 1 - I - 0x01EDAE 07:AD9E: 3C        .byte $3C   ; 
- D 1 - I - 0x01EDAF 07:AD9F: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDB0 07:ADA0: 36        .byte $36   ; 
- D 1 - I - 0x01EDB1 07:ADA1: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDB2 07:ADA2: 36        .byte $36   ; 
- D 1 - I - 0x01EDB3 07:ADA3: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDB4 07:ADA4: 36        .byte $36   ; 
- D 1 - I - 0x01EDB5 07:ADA5: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDB6 07:ADA6: 0B        .byte $0B   ; 
- D 1 - I - 0x01EDB7 07:ADA7: 00        .byte $00   ; 
- D 1 - I - 0x01EDB8 07:ADA8: 00        .byte $00   ; 
- D 1 - I - 0x01EDB9 07:ADA9: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDBA 07:ADAA: 00        .byte $00   ; 
- D 1 - I - 0x01EDBB 07:ADAB: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDBC 07:ADAC: 00        .byte $00   ; 
- D 1 - I - 0x01EDBD 07:ADAD: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDBE 07:ADAE: 00        .byte $00   ; 
- D 1 - I - 0x01EDBF 07:ADAF: 0B        .byte $0B   ; 
- D 1 - I - 0x01EDC0 07:ADB0: 30        .byte $30   ; 
- D 1 - I - 0x01EDC1 07:ADB1: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDC2 07:ADB2: 30        .byte $30   ; 
- D 1 - I - 0x01EDC3 07:ADB3: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDC4 07:ADB4: 13        .byte $13   ; 
- D 1 - I - 0x01EDC5 07:ADB5: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDC6 07:ADB6: 30        .byte $30   ; 
- D 1 - I - 0x01EDC7 07:ADB7: 02        .byte $02   ; 
- D 1 - I - 0x01EDC8 07:ADB8: 34        .byte $34   ; 
- D 1 - I - 0x01EDC9 07:ADB9: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDCA 07:ADBA: 34        .byte $34   ; 
- D 1 - I - 0x01EDCB 07:ADBB: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDCC 07:ADBC: 39        .byte $39   ; 
- D 1 - I - 0x01EDCD 07:ADBD: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDCE 07:ADBE: 34        .byte $34   ; 
- D 1 - I - 0x01EDCF 07:ADBF: 00        .byte $00   ; 
- D 1 - I - 0x01EDD0 07:ADC0: 38        .byte $38   ; 
- D 1 - I - 0x01EDD1 07:ADC1: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDD2 07:ADC2: 38        .byte $38   ; 
- D 1 - I - 0x01EDD3 07:ADC3: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDD4 07:ADC4: 39        .byte $39   ; 
- D 1 - I - 0x01EDD5 07:ADC5: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDD6 07:ADC6: 38        .byte $38   ; 
- D 1 - I - 0x01EDD7 07:ADC7: 04        .byte $04   ; 
- D 1 - I - 0x01EDD8 07:ADC8: 3C        .byte $3C   ; 
- D 1 - I - 0x01EDD9 07:ADC9: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDDA 07:ADCA: 3C        .byte $3C   ; 
- D 1 - I - 0x01EDDB 07:ADCB: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDDC 07:ADCC: 39        .byte $39   ; 
- D 1 - I - 0x01EDDD 07:ADCD: 3E        .byte $3E   ; 
- D 1 - I - 0x01EDDE 07:ADCE: 3C        .byte $3C   ; 
- D 1 - I - 0x01EDDF 07:ADCF: 00        .byte $00   ; 
- D 1 - I - 0x01EDE0 07:ADD0: 21        .byte $21   ; 
- D 1 - I - 0x01EDE1 07:ADD1: 39        .byte $39   ; 
- D 1 - I - 0x01EDE2 07:ADD2: 21        .byte $21   ; 
- D 1 - I - 0x01EDE3 07:ADD3: 21        .byte $21   ; 
- D 1 - I - 0x01EDE4 07:ADD4: 21        .byte $21   ; 
- D 1 - I - 0x01EDE5 07:ADD5: 39        .byte $39   ; 
- D 1 - I - 0x01EDE6 07:ADD6: 00        .byte $00   ; 
- D 1 - I - 0x01EDE7 07:ADD7: 05        .byte $05   ; 
- D 1 - I - 0x01EDE8 07:ADD8: 31        .byte $31   ; 
- D 1 - I - 0x01EDE9 07:ADD9: 39        .byte $39   ; 
- D 1 - I - 0x01EDEA 07:ADDA: 31        .byte $31   ; 
- D 1 - I - 0x01EDEB 07:ADDB: 32        .byte $32   ; 
- D 1 - I - 0x01EDEC 07:ADDC: 31        .byte $31   ; 
- D 1 - I - 0x01EDED 07:ADDD: 39        .byte $39   ; 
- D 1 - I - 0x01EDEE 07:ADDE: 00        .byte $00   ; 
- D 1 - I - 0x01EDEF 07:ADDF: 05        .byte $05   ; 
- D 1 - I - 0x01EDF0 07:ADE0: 15        .byte $15   ; 
- D 1 - I - 0x01EDF1 07:ADE1: 13        .byte $13   ; 
- D 1 - I - 0x01EDF2 07:ADE2: 15        .byte $15   ; 
- D 1 - I - 0x01EDF3 07:ADE3: 03        .byte $03   ; 
- D 1 - I - 0x01EDF4 07:ADE4: 02        .byte $02   ; 
- D 1 - I - 0x01EDF5 07:ADE5: 07        .byte $07   ; 
- D 1 - I - 0x01EDF6 07:ADE6: 02        .byte $02   ; 
- D 1 - I - 0x01EDF7 07:ADE7: 05        .byte $05   ; 
- D 1 - I - 0x01EDF8 07:ADE8: 00        .byte $00   ; 
- D 1 - I - 0x01EDF9 07:ADE9: 39        .byte $39   ; 
- D 1 - I - 0x01EDFA 07:ADEA: 00        .byte $00   ; 
- D 1 - I - 0x01EDFB 07:ADEB: 00        .byte $00   ; 
- D 1 - I - 0x01EDFC 07:ADEC: 0A        .byte $0A   ; 
- D 1 - I - 0x01EDFD 07:ADED: 39        .byte $39   ; 
- D 1 - I - 0x01EDFE 07:ADEE: 00        .byte $00   ; 
- D 1 - I - 0x01EDFF 07:ADEF: 05        .byte $05   ; 
- D 1 - I - 0x01EE00 07:ADF0: 16        .byte $16   ; 
- D 1 - I - 0x01EE01 07:ADF1: 17        .byte $17   ; 
- D 1 - I - 0x01EE02 07:ADF2: 16        .byte $16   ; 
- D 1 - I - 0x01EE03 07:ADF3: 0C        .byte $0C   ; 
- D 1 - I - 0x01EE04 07:ADF4: 16        .byte $16   ; 
- D 1 - I - 0x01EE05 07:ADF5: 17        .byte $17   ; 
- D 1 - I - 0x01EE06 07:ADF6: 04        .byte $04   ; 
- D 1 - I - 0x01EE07 07:ADF7: 05        .byte $05   ; 
- D 1 - I - 0x01EE08 07:ADF8: 00        .byte $00   ; 
- D 1 - I - 0x01EE09 07:ADF9: 3D        .byte $3D   ; 
- D 1 - I - 0x01EE0A 07:ADFA: 29        .byte $29   ; 
- D 1 - I - 0x01EE0B 07:ADFB: 2E        .byte $2E   ; 
- D 1 - I - 0x01EE0C 07:ADFC: 28        .byte $28   ; 
- D 1 - I - 0x01EE0D 07:ADFD: 3D        .byte $3D   ; 
- D 1 - I - 0x01EE0E 07:ADFE: 29        .byte $29   ; 
- D 1 - I - 0x01EE0F 07:ADFF: 05        .byte $05   ; 



_off047_AE00_0B_02_00:
- D 1 - I - 0x01EE10 07:AE00: 01        .byte $01   ; 
- D 1 - I - 0x01EE11 07:AE01: 05        .byte $05   ; 
- D 1 - I - 0x01EE12 07:AE02: 3C        .byte $3C   ; 
- D 1 - I - 0x01EE13 07:AE03: 3F        .byte $3F   ; 
- D 1 - I - 0x01EE14 07:AE04: 0A        .byte $0A   ; 
- D 1 - I - 0x01EE15 07:AE05: 3F        .byte $3F   ; 
- D 1 - I - 0x01EE16 07:AE06: 57        .byte $57   ; 
- D 1 - I - 0x01EE17 07:AE07: 3C        .byte $3C   ; 
- D 1 - I - 0x01EE18 07:AE08: 35        .byte $35   ; 
- D 1 - I - 0x01EE19 07:AE09: 05        .byte $05   ; 
- D 1 - I - 0x01EE1A 07:AE0A: 3C        .byte $3C   ; 
- D 1 - I - 0x01EE1B 07:AE0B: 0A        .byte $0A   ; 
- D 1 - I - 0x01EE1C 07:AE0C: 3F        .byte $3F   ; 
- D 1 - I - 0x01EE1D 07:AE0D: 3F        .byte $3F   ; 
- D 1 - I - 0x01EE1E 07:AE0E: 57        .byte $57   ; 
- D 1 - I - 0x01EE1F 07:AE0F: 38        .byte $38   ; 
- D 1 - I - 0x01EE20 07:AE10: 39        .byte $39   ; 
- D 1 - I - 0x01EE21 07:AE11: 05        .byte $05   ; 
- D 1 - I - 0x01EE22 07:AE12: 0C        .byte $0C   ; 
- D 1 - I - 0x01EE23 07:AE13: 04        .byte $04   ; 
- D 1 - I - 0x01EE24 07:AE14: 15        .byte $15   ; 
- D 1 - I - 0x01EE25 07:AE15: 06        .byte $06   ; 
- D 1 - I - 0x01EE26 07:AE16: 3F        .byte $3F   ; 
- D 1 - I - 0x01EE27 07:AE17: 3C        .byte $3C   ; 
- D 1 - I - 0x01EE28 07:AE18: 39        .byte $39   ; 
- D 1 - I - 0x01EE29 07:AE19: 05        .byte $05   ; 
- D 1 - I - 0x01EE2A 07:AE1A: 28        .byte $28   ; 
- D 1 - I - 0x01EE2B 07:AE1B: 57        .byte $57   ; 
- D 1 - I - 0x01EE2C 07:AE1C: 38        .byte $38   ; 
- D 1 - I - 0x01EE2D 07:AE1D: 3F        .byte $3F   ; 
- D 1 - I - 0x01EE2E 07:AE1E: 0B        .byte $0B   ; 
- D 1 - I - 0x01EE2F 07:AE1F: 3C        .byte $3C   ; 
- D 1 - I - 0x01EE30 07:AE20: 39        .byte $39   ; 
- D 1 - I - 0x01EE31 07:AE21: 05        .byte $05   ; 
- D 1 - I - 0x01EE32 07:AE22: 3C        .byte $3C   ; 
- D 1 - I - 0x01EE33 07:AE23: 3F        .byte $3F   ; 
- D 1 - I - 0x01EE34 07:AE24: 3C        .byte $3C   ; 
- D 1 - I - 0x01EE35 07:AE25: 3E        .byte $3E   ; 
- D 1 - I - 0x01EE36 07:AE26: 12        .byte $12   ; 
- D 1 - I - 0x01EE37 07:AE27: 10        .byte $10   ; 
- D 1 - I - 0x01EE38 07:AE28: 39        .byte $39   ; 
- D 1 - I - 0x01EE39 07:AE29: 05        .byte $05   ; 
- D 1 - I - 0x01EE3A 07:AE2A: 01        .byte $01   ; 
- D 1 - I - 0x01EE3B 07:AE2B: 01        .byte $01   ; 
- D 1 - I - 0x01EE3C 07:AE2C: 01        .byte $01   ; 
- D 1 - I - 0x01EE3D 07:AE2D: 01        .byte $01   ; 
- D 1 - I - 0x01EE3E 07:AE2E: 01        .byte $01   ; 
- D 1 - I - 0x01EE3F 07:AE2F: 01        .byte $01   ; 
- D 1 - I - 0x01EE40 07:AE30: 02        .byte $02   ; 
- D 1 - I - 0x01EE41 07:AE31: 00        .byte $00   ; 
- D 1 - I - 0x01EE42 07:AE32: 24        .byte $24   ; 
- D 1 - I - 0x01EE43 07:AE33: 18        .byte $18   ; 
- D 1 - I - 0x01EE44 07:AE34: 18        .byte $18   ; 
- D 1 - I - 0x01EE45 07:AE35: 18        .byte $18   ; 
- D 1 - I - 0x01EE46 07:AE36: 18        .byte $18   ; 
- D 1 - I - 0x01EE47 07:AE37: 18        .byte $18   ; 
- D 1 - I - 0x01EE48 07:AE38: 50        .byte $50   ; 
- D 1 - I - 0x01EE49 07:AE39: 00        .byte $00   ; 
- D 1 - I - 0x01EE4A 07:AE3A: 20        .byte $20   ; 
- D 1 - I - 0x01EE4B 07:AE3B: 50        .byte $50   ; 
- D 1 - I - 0x01EE4C 07:AE3C: 50        .byte $50   ; 
- D 1 - I - 0x01EE4D 07:AE3D: 50        .byte $50   ; 
- D 1 - I - 0x01EE4E 07:AE3E: 50        .byte $50   ; 
- D 1 - I - 0x01EE4F 07:AE3F: 51        .byte $51   ; 
- D 1 - I - 0x01EE50 07:AE40: 53        .byte $53   ; 
- D 1 - I - 0x01EE51 07:AE41: 00        .byte $00   ; 
- D 1 - I - 0x01EE52 07:AE42: 24        .byte $24   ; 
- D 1 - I - 0x01EE53 07:AE43: 00        .byte $00   ; 
- D 1 - I - 0x01EE54 07:AE44: 38        .byte $38   ; 
- D 1 - I - 0x01EE55 07:AE45: 38        .byte $38   ; 
- D 1 - I - 0x01EE56 07:AE46: 54        .byte $54   ; 
- D 1 - I - 0x01EE57 07:AE47: 53        .byte $53   ; 
- D 1 - I - 0x01EE58 07:AE48: 56        .byte $56   ; 
- D 1 - I - 0x01EE59 07:AE49: 00        .byte $00   ; 
- D 1 - I - 0x01EE5A 07:AE4A: 01        .byte $01   ; 
- D 1 - I - 0x01EE5B 07:AE4B: 52        .byte $52   ; 
- D 1 - I - 0x01EE5C 07:AE4C: 58        .byte $58   ; 
- D 1 - I - 0x01EE5D 07:AE4D: 59        .byte $59   ; 
- D 1 - I - 0x01EE5E 07:AE4E: 52        .byte $52   ; 
- D 1 - I - 0x01EE5F 07:AE4F: 01        .byte $01   ; 
- D 1 - I - 0x01EE60 07:AE50: 54        .byte $54   ; 
- D 1 - I - 0x01EE61 07:AE51: 15        .byte $15   ; 
- D 1 - I - 0x01EE62 07:AE52: 3F        .byte $3F   ; 
- D 1 - I - 0x01EE63 07:AE53: 5C        .byte $5C   ; 
- D 1 - I - 0x01EE64 07:AE54: 5A        .byte $5A   ; 
- D 1 - I - 0x01EE65 07:AE55: 5B        .byte $5B   ; 
- D 1 - I - 0x01EE66 07:AE56: 5C        .byte $5C   ; 
- D 1 - I - 0x01EE67 07:AE57: 3F        .byte $3F   ; 
- D 1 - I - 0x01EE68 07:AE58: 15        .byte $15   ; 
- D 1 - I - 0x01EE69 07:AE59: 05        .byte $05   ; 
- D 1 - I - 0x01EE6A 07:AE5A: 15        .byte $15   ; 
- D 1 - I - 0x01EE6B 07:AE5B: 01        .byte $01   ; 
- D 1 - I - 0x01EE6C 07:AE5C: 03        .byte $03   ; 
- D 1 - I - 0x01EE6D 07:AE5D: 03        .byte $03   ; 
- D 1 - I - 0x01EE6E 07:AE5E: 02        .byte $02   ; 
- D 1 - I - 0x01EE6F 07:AE5F: 15        .byte $15   ; 
- D 1 - I - 0x01EE70 07:AE60: 05        .byte $05   ; 



_off045_0x01EE71_0B:
; 00 
- D 1 - I - 0x01EE71 07:AE61: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01EE75 07:AE65: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01EE79 07:AE69: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01EE7D 07:AE6D: 00        .byte $00, $00, $00, $00   ; 
; 01 
- D 1 - I - 0x01EE81 07:AE71: BC        .byte $BC, $BB, $BC, $BB   ; 
- D 1 - I - 0x01EE85 07:AE75: A2        .byte $A2, $B2, $BD, $A2   ; 
- D 1 - I - 0x01EE89 07:AE79: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01EE8D 07:AE7D: 00        .byte $00, $00, $00, $00   ; 
; 02 
- D 1 - I - 0x01EE91 07:AE81: BB        .byte $BB, $A2, $BC, $BB   ; 
- D 1 - I - 0x01EE95 07:AE85: A2        .byte $A2, $B2, $A2, $B2   ; 
- D 1 - I - 0x01EE99 07:AE89: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01EE9D 07:AE8D: 00        .byte $00, $00, $00, $00   ; 
; 03 
- D 1 - I - 0x01EEA1 07:AE91: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01EEA5 07:AE95: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 1 - I - 0x01EEA9 07:AE99: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01EEAD 07:AE9D: 00        .byte $00, $00, $00, $00   ; 
; 04 
- D 1 - I - 0x01EEB1 07:AEA1: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01EEB5 07:AEA5: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01EEB9 07:AEA9: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01EEBD 07:AEAD: BD        .byte $BD, $BF, $BD, $BF   ; 
; 05 
- D 1 - I - 0x01EEC1 07:AEB1: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01EEC5 07:AEB5: BD        .byte $BD, $BF, $BD, $BF   ; 
- D 1 - I - 0x01EEC9 07:AEB9: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01EECD 07:AEBD: BD        .byte $BD, $BF, $BD, $BF   ; 
; 06 
- D 1 - I - 0x01EED1 07:AEC1: BB        .byte $BB, $BD, $BC, $BE   ; 
- D 1 - I - 0x01EED5 07:AEC5: A2        .byte $A2, $A9, $B3, $BF   ; 
- D 1 - I - 0x01EED9 07:AEC9: 00        .byte $00, $00, $A9, $00   ; 
- D 1 - I - 0x01EEDD 07:AECD: 00        .byte $00, $00, $00, $A9   ; 
; 07 
- D 1 - I - 0x01EEE1 07:AED1: BC        .byte $BC, $BE, $B9, $BB   ; 
- D 1 - I - 0x01EEE5 07:AED5: BD        .byte $BD, $BA, $A9, $A2   ; 
- D 1 - I - 0x01EEE9 07:AED9: 00        .byte $00, $A9, $00, $00   ; 
- D 1 - I - 0x01EEED 07:AEDD: A9        .byte $A9, $00, $00, $00   ; 
; 08 
- - - - - - 0x01EEF1 07:AEE1: BC        .byte $BC, $BE, $00, $00   ; 
- - - - - - 0x01EEF5 07:AEE5: BD        .byte $BD, $BF, $00, $00   ; 
- - - - - - 0x01EEF9 07:AEE9: BC        .byte $BC, $BE, $00, $00   ; 
- - - - - - 0x01EEFD 07:AEED: BD        .byte $BD, $BF, $00, $00   ; 
; 09 
- D 1 - I - 0x01EF01 07:AEF1: 00        .byte $00, $00, $BC, $BE   ; 
- D 1 - I - 0x01EF05 07:AEF5: 00        .byte $00, $00, $BD, $BF   ; 
- D 1 - I - 0x01EF09 07:AEF9: 00        .byte $00, $00, $BC, $BE   ; 
- D 1 - I - 0x01EF0D 07:AEFD: 00        .byte $00, $00, $BD, $BF   ; 
; 0A 
- D 1 - I - 0x01EF11 07:AF01: 00        .byte $00, $00, $00, $A9   ; 
- D 1 - I - 0x01EF15 07:AF05: 00        .byte $00, $00, $A9, $00   ; 
- D 1 - I - 0x01EF19 07:AF09: 00        .byte $00, $A9, $00, $00   ; 
- D 1 - I - 0x01EF1D 07:AF0D: A9        .byte $A9, $00, $00, $00   ; 
; 0B 
- D 1 - I - 0x01EF21 07:AF11: A9        .byte $A9, $00, $00, $00   ; 
- D 1 - I - 0x01EF25 07:AF15: 00        .byte $00, $A9, $00, $00   ; 
- D 1 - I - 0x01EF29 07:AF19: 00        .byte $00, $00, $A9, $00   ; 
- D 1 - I - 0x01EF2D 07:AF1D: 00        .byte $00, $00, $00, $A9   ; 
; 0C 
- D 1 - I - 0x01EF31 07:AF21: 00        .byte $00, $00, $00, $A9   ; 
- D 1 - I - 0x01EF35 07:AF25: 00        .byte $00, $00, $A9, $00   ; 
- D 1 - I - 0x01EF39 07:AF29: BC        .byte $BC, $BB, $BC, $BB   ; 
- D 1 - I - 0x01EF3D 07:AF2D: BD        .byte $BD, $A2, $A3, $A2   ; 
; 0D 
- D 1 - I - 0x01EF41 07:AF31: A9        .byte $A9, $00, $00, $00   ; 
- D 1 - I - 0x01EF45 07:AF35: 00        .byte $00, $A9, $00, $00   ; 
- D 1 - I - 0x01EF49 07:AF39: BC        .byte $BC, $BE, $BC, $BB   ; 
- D 1 - I - 0x01EF4D 07:AF3D: B3        .byte $B3, $BF, $B2, $A2   ; 
; 0E 
- - - - - - 0x01EF51 07:AF41: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x01EF55 07:AF45: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x01EF59 07:AF49: BC        .byte $BC, $BE, $BB, $BD   ; 
- - - - - - 0x01EF5D 07:AF4D: BD        .byte $BD, $BF, $B3, $A9   ; 
; 0F 
- - - - - - 0x01EF61 07:AF51: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x01EF65 07:AF55: 00        .byte $00, $00, $00, $00   ; 
- - - - - - 0x01EF69 07:AF59: BF        .byte $BF, $BB, $BC, $BE   ; 
- - - - - - 0x01EF6D 07:AF5D: A9        .byte $A9, $A2, $BD, $BF   ; 
; 10 
- D 1 - I - 0x01EF71 07:AF61: BC        .byte $BC, $BE, $00, $00   ; 
- D 1 - I - 0x01EF75 07:AF65: BD        .byte $BD, $BF, $00, $00   ; 
- D 1 - I - 0x01EF79 07:AF69: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01EF7D 07:AF6D: 00        .byte $00, $00, $00, $00   ; 
; 11 
- D 1 - I - 0x01EF81 07:AF71: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01EF85 07:AF75: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01EF89 07:AF79: BC        .byte $BC, $BE, $00, $00   ; 
- D 1 - I - 0x01EF8D 07:AF7D: BD        .byte $BD, $BF, $00, $00   ; 
; 12 
- D 1 - I - 0x01EF91 07:AF81: 00        .byte $00, $00, $BC, $BE   ; 
- D 1 - I - 0x01EF95 07:AF85: 00        .byte $00, $00, $BD, $BF   ; 
- D 1 - I - 0x01EF99 07:AF89: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01EF9D 07:AF8D: 00        .byte $00, $00, $00, $00   ; 
; 13 
- D 1 - I - 0x01EFA1 07:AF91: BC        .byte $BC, $BB, $BC, $BB   ; 
- D 1 - I - 0x01EFA5 07:AF95: A2        .byte $A2, $B2, $BD, $A2   ; 
- D 1 - I - 0x01EFA9 07:AF99: A7        .byte $A7, $AA, $AA, $AB   ; 
- D 1 - I - 0x01EFAD 07:AF9D: 94        .byte $94, $95, $96, $97   ; 
; 14 
- - - - - - 0x01EFB1 07:AFA1: BC        .byte $BC, $BE, $BC, $BE   ; 
- - - - - - 0x01EFB5 07:AFA5: BD        .byte $BD, $BF, $BD, $BF   ; 
- - - - - - 0x01EFB9 07:AFA9: 58        .byte $58, $59, $59, $5A   ; 
- - - - - - 0x01EFBD 07:AFAD: 00        .byte $00, $00, $00, $00   ; 
; 15 
- D 1 - I - 0x01EFC1 07:AFB1: BC        .byte $BC, $BB, $BC, $BB   ; 
- D 1 - I - 0x01EFC5 07:AFB5: A2        .byte $A2, $A3, $B2, $A3   ; 
- D 1 - I - 0x01EFC9 07:AFB9: B3        .byte $B3, $B2, $A2, $A0   ; 
- D 1 - I - 0x01EFCD 07:AFBD: A0        .byte $A0, $00, $A0, $00   ; 
; 16 
- D 1 - I - 0x01EFD1 07:AFC1: 8C        .byte $8C, $8D, $8C, $8D   ; 
- D 1 - I - 0x01EFD5 07:AFC5: 9C        .byte $9C, $9D, $9C, $9D   ; 
- D 1 - I - 0x01EFD9 07:AFC9: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01EFDD 07:AFCD: BD        .byte $BD, $BF, $BD, $BF   ; 
; 17 
- D 1 - I - 0x01EFE1 07:AFD1: 84        .byte $84, $85, $86, $87   ; 
- D 1 - I - 0x01EFE5 07:AFD5: 94        .byte $94, $95, $96, $97   ; 
- D 1 - I - 0x01EFE9 07:AFD9: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01EFED 07:AFDD: BD        .byte $BD, $BF, $BD, $BF   ; 
; 18 
- D 1 - I - 0x01EFF1 07:AFE1: 3D        .byte $3D, $3D, $3D, $3D   ; 
- D 1 - I - 0x01EFF5 07:AFE5: 3D        .byte $3D, $3D, $3D, $3D   ; 
- D 1 - I - 0x01EFF9 07:AFE9: 3D        .byte $3D, $3D, $3D, $3D   ; 
- D 1 - I - 0x01EFFD 07:AFED: 3D        .byte $3D, $3D, $3D, $3D   ; 
; 19 
- D 1 - I - 0x01F001 07:AFF1: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 1 - I - 0x01F005 07:AFF5: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 1 - I - 0x01F009 07:AFF9: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 1 - I - 0x01F00D 07:AFFD: 3F        .byte $3F, $3F, $3F, $3F   ; 
; 1A 
- D 1 - I - 0x01F011 07:B001: 00        .byte $00, $00, $7C, $7E   ; 
- D 1 - I - 0x01F015 07:B005: 00        .byte $00, $00, $7D, $7F   ; 
- D 1 - I - 0x01F019 07:B009: 00        .byte $00, $00, $3C, $00   ; 
- D 1 - I - 0x01F01D 07:B00D: 00        .byte $00, $00, $3A, $00   ; 
; 1B 
- D 1 - I - 0x01F021 07:B011: 00        .byte $00, $00, $BC, $BE   ; 
- D 1 - I - 0x01F025 07:B015: 00        .byte $00, $00, $BD, $BF   ; 
- D 1 - I - 0x01F029 07:B019: 00        .byte $00, $00, $3C, $00   ; 
- D 1 - I - 0x01F02D 07:B01D: 00        .byte $00, $00, $3A, $00   ; 
; 1C 
- D 1 - I - 0x01F031 07:B021: 00        .byte $00, $65, $00, $00   ; 
- D 1 - I - 0x01F035 07:B025: 65        .byte $65, $3F, $00, $65   ; 
- D 1 - I - 0x01F039 07:B029: 3F        .byte $3F, $3F, $65, $3F   ; 
- D 1 - I - 0x01F03D 07:B02D: 3F        .byte $3F, $3F, $3F, $3F   ; 
; 1D 
- D 1 - I - 0x01F041 07:B031: 3F        .byte $3F, $3F, $6C, $3F   ; 
- D 1 - I - 0x01F045 07:B035: 3F        .byte $3F, $6D, $00, $67   ; 
- D 1 - I - 0x01F049 07:B039: 6D        .byte $6D, $00, $00, $00   ; 
- D 1 - I - 0x01F04D 07:B03D: 00        .byte $00, $00, $00, $00   ; 
; 1E 
- D 1 - I - 0x01F051 07:B041: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 1 - I - 0x01F055 07:B045: 5D        .byte $5D, $5D, $5D, $5D   ; 
- D 1 - I - 0x01F059 07:B049: BC        .byte $BC, $BE, $BC, $BE   ; 
- D 1 - I - 0x01F05D 07:B04D: BD        .byte $BD, $BF, $BD, $BF   ; 
; 1F 
- D 1 - I - 0x01F061 07:B051: 00        .byte $00, $00, $3C, $00   ; 
- D 1 - I - 0x01F065 07:B055: 00        .byte $00, $00, $3B, $00   ; 
- D 1 - I - 0x01F069 07:B059: 00        .byte $00, $00, $3A, $00   ; 
- D 1 - I - 0x01F06D 07:B05D: 00        .byte $00, $00, $3C, $00   ; 
; 20 
- D 1 - I - 0x01F071 07:B061: 00        .byte $00, $00, $8E, $8F   ; 
- D 1 - I - 0x01F075 07:B065: 92        .byte $92, $93, $9E, $9F   ; 
- D 1 - I - 0x01F079 07:B069: 00        .byte $00, $00, $A4, $A5   ; 
- D 1 - I - 0x01F07D 07:B06D: 00        .byte $00, $00, $B4, $B5   ; 
; 21 
- D 1 - I - 0x01F081 07:B071: 3D        .byte $3D, $3D, $3D, $3D   ; 
- D 1 - I - 0x01F085 07:B075: 45        .byte $45, $55, $45, $55   ; 
- D 1 - I - 0x01F089 07:B079: 44        .byte $44, $44, $44, $44   ; 
- D 1 - I - 0x01F08D 07:B07D: 54        .byte $54, $54, $54, $54   ; 
; 22 
- D 1 - I - 0x01F091 07:B081: 3D        .byte $3D, $3D, $69, $00   ; 
- D 1 - I - 0x01F095 07:B085: 45        .byte $45, $5B, $79, $8C   ; 
- D 1 - I - 0x01F099 07:B089: 5B        .byte $5B, $90, $A0, $00   ; 
- D 1 - I - 0x01F09D 07:B08D: 00        .byte $00, $B0, $A0, $90   ; 
; 23 
- D 1 - I - 0x01F0A1 07:B091: 6A        .byte $6A, $6B, $3D, $3D   ; 
- D 1 - I - 0x01F0A5 07:B095: 7A        .byte $7A, $7B, $45, $55   ; 
- D 1 - I - 0x01F0A9 07:B099: 77        .byte $77, $78, $44, $44   ; 
- D 1 - I - 0x01F0AD 07:B09D: 6A        .byte $6A, $78, $54, $54   ; 
; 24 
- D 1 - I - 0x01F0B1 07:B0A1: 00        .byte $00, $00, $AC, $AD   ; 
- D 1 - I - 0x01F0B5 07:B0A5: 00        .byte $00, $00, $AE, $AF   ; 
- D 1 - I - 0x01F0B9 07:B0A9: 00        .byte $00, $00, $A6, $AF   ; 
- D 1 - I - 0x01F0BD 07:B0AD: 00        .byte $00, $00, $B6, $B7   ; 
; 25 
- D 1 - I - 0x01F0C1 07:B0B1: 72        .byte $72, $72, $72, $73   ; 
- D 1 - I - 0x01F0C5 07:B0B5: 47        .byte $47, $46, $47, $A1   ; 
- D 1 - I - 0x01F0C9 07:B0B9: 57        .byte $57, $56, $57, $A1   ; 
- D 1 - I - 0x01F0CD 07:B0BD: 00        .byte $00, $56, $57, $B1   ; 
; 26 
- D 1 - I - 0x01F0D1 07:B0C1: 00        .byte $00, $A0, $B0, $A0   ; 
- D 1 - I - 0x01F0D5 07:B0C5: 00        .byte $00, $00, $90, $B0   ; 
- D 1 - I - 0x01F0D9 07:B0C9: 00        .byte $00, $90, $66, $00   ; 
- D 1 - I - 0x01F0DD 07:B0CD: 00        .byte $00, $A0, $76, $00   ; 
; 27 
- D 1 - I - 0x01F0E1 07:B0D1: A3        .byte $A3, $A2, $67, $3F   ; 
- D 1 - I - 0x01F0E5 07:B0D5: A0        .byte $A0, $A3, $00, $67   ; 
- D 1 - I - 0x01F0E9 07:B0D9: 77        .byte $77, $68, $A2, $00   ; 
- D 1 - I - 0x01F0ED 07:B0DD: 77        .byte $77, $78, $5C, $00   ; 
; 28 
- D 1 - I - 0x01F0F1 07:B0E1: B0        .byte $B0, $A2, $A3, $A0   ; 
- D 1 - I - 0x01F0F5 07:B0E5: A0        .byte $A0, $B0, $B2, $A3   ; 
- D 1 - I - 0x01F0F9 07:B0E9: B0        .byte $B0, $90, $A3, $A2   ; 
- D 1 - I - 0x01F0FD 07:B0ED: A0        .byte $A0, $B0, $A0, $B3   ; 
; 29 
- D 1 - I - 0x01F101 07:B0F1: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01F105 07:B0F5: A2        .byte $A2, $00, $00, $00   ; 
- D 1 - I - 0x01F109 07:B0F9: B3        .byte $B3, $5C, $00, $00   ; 
- D 1 - I - 0x01F10D 07:B0FD: A0        .byte $A0, $00, $00, $00   ; 
; 2A 
- D 1 - I - 0x01F111 07:B101: 00        .byte $00, $00, $69, $00   ; 
- D 1 - I - 0x01F115 07:B105: 00        .byte $00, $00, $79, $8D   ; 
- D 1 - I - 0x01F119 07:B109: 00        .byte $00, $00, $76, $00   ; 
- D 1 - I - 0x01F11D 07:B10D: 00        .byte $00, $00, $76, $00   ; 
; 2B 
- D 1 - I - 0x01F121 07:B111: 6A        .byte $6A, $6B, $00, $00   ; 
- D 1 - I - 0x01F125 07:B115: 7A        .byte $7A, $7B, $00, $00   ; 
- D 1 - I - 0x01F129 07:B119: 6A        .byte $6A, $78, $90, $00   ; 
- D 1 - I - 0x01F12D 07:B11D: A0        .byte $A0, $A0, $A2, $00   ; 
; 2C 
- D 1 - I - 0x01F131 07:B121: 3D        .byte $3D, $3D, $69, $00   ; 
- D 1 - I - 0x01F135 07:B125: 3D        .byte $3D, $3D, $79, $8D   ; 
- D 1 - I - 0x01F139 07:B129: 3D        .byte $3D, $3D, $76, $00   ; 
- D 1 - I - 0x01F13D 07:B12D: 3D        .byte $3D, $3D, $76, $00   ; 
; 2D 
- - - - - - 0x01F141 07:B131: 6A        .byte $6A, $6B, $3D, $3D   ; 
- - - - - - 0x01F145 07:B135: 7A        .byte $7A, $7B, $3D, $3D   ; 
- D 1 - I - 0x01F149 07:B139: 77        .byte $77, $78, $3D, $3D   ; 
- D 1 - I - 0x01F14D 07:B13D: 6A        .byte $6A, $78, $3D, $3D   ; 
; 2E 
- D 1 - I - 0x01F151 07:B141: 00        .byte $00, $A0, $B0, $A0   ; 
- D 1 - I - 0x01F155 07:B145: 00        .byte $00, $00, $90, $B0   ; 
- D 1 - I - 0x01F159 07:B149: 00        .byte $00, $B0, $B0, $90   ; 
- D 1 - I - 0x01F15D 07:B14D: 00        .byte $00, $00, $A0, $00   ; 
; 2F 
- D 1 - I - 0x01F161 07:B151: A3        .byte $A3, $B3, $A2, $00   ; 
- D 1 - I - 0x01F165 07:B155: A0        .byte $A0, $A3, $B2, $00   ; 
- D 1 - I - 0x01F169 07:B159: 77        .byte $77, $68, $5C, $00   ; 
- D 1 - I - 0x01F16D 07:B15D: 77        .byte $77, $78, $00, $00   ; 
; 30 
- D 1 - I - 0x01F171 07:B161: 66        .byte $66, $61, $60, $00   ; 
- D 1 - I - 0x01F175 07:B165: 70        .byte $70, $71, $74, $75   ; 
- D 1 - I - 0x01F179 07:B169: 71        .byte $71, $3F, $3F, $74   ; 
- D 1 - I - 0x01F17D 07:B16D: 3F        .byte $3F, $3F, $3F, $3F   ; 
; 31 
- D 1 - I - 0x01F181 07:B171: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 1 - I - 0x01F185 07:B175: 5D        .byte $5D, $5D, $5D, $5D   ; 
- D 1 - I - 0x01F189 07:B179: 8C        .byte $8C, $8D, $8C, $8D   ; 
- D 1 - I - 0x01F18D 07:B17D: 9C        .byte $9C, $9D, $9C, $9D   ; 
; 32 
- D 1 - I - 0x01F191 07:B181: 3F        .byte $3F, $3F, $4F, $3F   ; 
- D 1 - I - 0x01F195 07:B185: 5D        .byte $5D, $5D, $5F, $5D   ; 
- D 1 - I - 0x01F199 07:B189: 8C        .byte $8C, $8D, $8C, $8D   ; 
- D 1 - I - 0x01F19D 07:B18D: 00        .byte $00, $9C, $9C, $9D   ; 
; 33 
- D 1 - I - 0x01F1A1 07:B191: 4B        .byte $4B, $4C, $4D, $4E   ; 
- D 1 - I - 0x01F1A5 07:B195: 5E        .byte $5E, $5D, $5D, $5E   ; 
- D 1 - I - 0x01F1A9 07:B199: 8C        .byte $8C, $8D, $8C, $8D   ; 
- D 1 - I - 0x01F1AD 07:B19D: 9C        .byte $9C, $9D, $00, $9D   ; 
; 34 
- D 1 - I - 0x01F1B1 07:B1A1: 3F        .byte $3F, $3F, $3F, $3F   ; 
- D 1 - I - 0x01F1B5 07:B1A5: 3F        .byte $3F, $3F, $6C, $3F   ; 
- D 1 - I - 0x01F1B9 07:B1A9: 6C        .byte $6C, $6D, $00, $67   ; 
- D 1 - I - 0x01F1BD 07:B1AD: 00        .byte $00, $00, $00, $00   ; 
; 35 
- D 1 - I - 0x01F1C1 07:B1B1: 7C        .byte $7C, $7E, $7C, $7E   ; 
- D 1 - I - 0x01F1C5 07:B1B5: 7D        .byte $7D, $7F, $7D, $7F   ; 
- D 1 - I - 0x01F1C9 07:B1B9: A7        .byte $A7, $AA, $AA, $AB   ; 
- D 1 - I - 0x01F1CD 07:B1BD: 94        .byte $94, $95, $96, $97   ; 
; 36 
- D 1 - I - 0x01F1D1 07:B1C1: 7C        .byte $7C, $7E, $7C, $7E   ; 
- D 1 - I - 0x01F1D5 07:B1C5: 7D        .byte $7D, $7F, $7D, $7F   ; 
- D 1 - I - 0x01F1D9 07:B1C9: 58        .byte $58, $59, $59, $5A   ; 
- D 1 - I - 0x01F1DD 07:B1CD: 60        .byte $60, $61, $60, $61   ; 
; 37 
- D 1 - I - 0x01F1E1 07:B1D1: 8C        .byte $8C, $8D, $8C, $8D   ; 
- D 1 - I - 0x01F1E5 07:B1D5: 9C        .byte $9C, $9D, $9C, $9D   ; 
- D 1 - I - 0x01F1E9 07:B1D9: 7C        .byte $7C, $7E, $7C, $7E   ; 
- D 1 - I - 0x01F1ED 07:B1DD: 7D        .byte $7D, $7F, $7D, $7F   ; 
; 38 
- D 1 - I - 0x01F1F1 07:B1E1: A7        .byte $A7, $AA, $AA, $AB   ; 
- D 1 - I - 0x01F1F5 07:B1E5: 00        .byte $00, $94, $97, $00   ; 
- D 1 - I - 0x01F1F9 07:B1E9: 00        .byte $00, $84, $87, $00   ; 
- D 1 - I - 0x01F1FD 07:B1ED: 00        .byte $00, $94, $97, $00   ; 
; 39 
- D 1 - I - 0x01F201 07:B1F1: 84        .byte $84, $85, $86, $87   ; 
- D 1 - I - 0x01F205 07:B1F5: 94        .byte $94, $95, $96, $97   ; 
- D 1 - I - 0x01F209 07:B1F9: 84        .byte $84, $85, $86, $87   ; 
- D 1 - I - 0x01F20D 07:B1FD: 94        .byte $94, $95, $96, $97   ; 
; 3A 
- D 1 - I - 0x01F211 07:B201: 60        .byte $60, $70, $62, $63   ; 
- D 1 - I - 0x01F215 07:B205: 70        .byte $70, $71, $3F, $3F   ; 
- D 1 - I - 0x01F219 07:B209: 71        .byte $71, $3F, $3F, $6D   ; 
- D 1 - I - 0x01F21D 07:B20D: 6E        .byte $6E, $6C, $6D, $00   ; 
; 3B 
- D 1 - I - 0x01F221 07:B211: 63        .byte $63, $64, $75, $60   ; 
- D 1 - I - 0x01F225 07:B215: 3F        .byte $3F, $3F, $74, $75   ; 
- D 1 - I - 0x01F229 07:B219: 6E        .byte $6E, $3F, $3F, $74   ; 
- D 1 - I - 0x01F22D 07:B21D: 00        .byte $00, $67, $6D, $6E   ; 
; 3C 
- D 1 - I - 0x01F231 07:B221: 00        .byte $00, $84, $87, $00   ; 
- D 1 - I - 0x01F235 07:B225: 00        .byte $00, $94, $97, $00   ; 
- D 1 - I - 0x01F239 07:B229: 00        .byte $00, $84, $87, $00   ; 
- D 1 - I - 0x01F23D 07:B22D: 00        .byte $00, $94, $97, $00   ; 
; 3D 
- D 1 - I - 0x01F241 07:B231: A7        .byte $A7, $AA, $AA, $AB   ; 
- D 1 - I - 0x01F245 07:B235: 5D        .byte $5D, $5D, $5D, $5D   ; 
- D 1 - I - 0x01F249 07:B239: 84        .byte $84, $85, $86, $87   ; 
- D 1 - I - 0x01F24D 07:B23D: 94        .byte $94, $95, $96, $97   ; 
; 3E 
- D 1 - I - 0x01F251 07:B241: 00        .byte $00, $8D, $8C, $00   ; 
- D 1 - I - 0x01F255 07:B245: 00        .byte $00, $9D, $9C, $00   ; 
- D 1 - I - 0x01F259 07:B249: 00        .byte $00, $8D, $8C, $00   ; 
- D 1 - I - 0x01F25D 07:B24D: 00        .byte $00, $9D, $9C, $00   ; 
; 3F 
- D 1 - I - 0x01F261 07:B251: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01F265 07:B255: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01F269 07:B259: 8C        .byte $8C, $8D, $8C, $8D   ; 
- D 1 - I - 0x01F26D 07:B25D: 9C        .byte $9C, $9D, $9C, $9D   ; 
; 40 
- D 1 - I - 0x01F271 07:B261: 7C        .byte $7C, $7E, $7C, $7E   ; 
- D 1 - I - 0x01F275 07:B265: 7D        .byte $7D, $7F, $7D, $7F   ; 
- D 1 - I - 0x01F279 07:B269: 41        .byte $41, $52, $52, $40   ; 
- D 1 - I - 0x01F27D 07:B26D: 51        .byte $51, $50, $53, $50   ; 
; 41 
- D 1 - I - 0x01F281 07:B271: 00        .byte $00, $00, $00, $6F   ; 
- D 1 - I - 0x01F285 07:B275: 00        .byte $00, $00, $6F, $41   ; 
- D 1 - I - 0x01F289 07:B279: 00        .byte $00, $6F, $41, $41   ; 
- D 1 - I - 0x01F28D 07:B27D: 6F        .byte $6F, $41, $50, $51   ; 
; 42 
- D 1 - I - 0x01F291 07:B281: 40        .byte $40, $41, $40, $41   ; 
- D 1 - I - 0x01F295 07:B285: 50        .byte $50, $51, $50, $A8   ; 
- D 1 - I - 0x01F299 07:B289: 40        .byte $40, $A8, $00, $00   ; 
- D 1 - I - 0x01F29D 07:B28D: A8        .byte $A8, $00, $00, $00   ; 
; 43 
- D 1 - I - 0x01F2A1 07:B291: 41        .byte $41, $40, $41, $40   ; 
- D 1 - I - 0x01F2A5 07:B295: 53        .byte $53, $50, $52, $50   ; 
- D 1 - I - 0x01F2A9 07:B299: 00        .byte $00, $00, $53, $41   ; 
- D 1 - I - 0x01F2AD 07:B29D: 00        .byte $00, $00, $00, $53   ; 
; 44 
- D 1 - I - 0x01F2B1 07:B2A1: B8        .byte $B8, $7E, $B8, $7E   ; 
- D 1 - I - 0x01F2B5 07:B2A5: 7D        .byte $7D, $7F, $7D, $7F   ; 
- D 1 - I - 0x01F2B9 07:B2A9: 41        .byte $41, $52, $52, $40   ; 
- D 1 - I - 0x01F2BD 07:B2AD: 51        .byte $51, $50, $53, $50   ; 
; 45 
- D 1 - I - 0x01F2C1 07:B2B1: 40        .byte $40, $41, $40, $41   ; 
- D 1 - I - 0x01F2C5 07:B2B5: 50        .byte $50, $51, $50, $51   ; 
- D 1 - I - 0x01F2C9 07:B2B9: B8        .byte $B8, $7E, $B8, $7E   ; 
- D 1 - I - 0x01F2CD 07:B2BD: 7D        .byte $7D, $7F, $7D, $7F   ; 
; 46 
- D 1 - I - 0x01F2D1 07:B2C1: 40        .byte $40, $41, $40, $41   ; 
- D 1 - I - 0x01F2D5 07:B2C5: 50        .byte $50, $51, $50, $51   ; 
- D 1 - I - 0x01F2D9 07:B2C9: 40        .byte $40, $41, $40, $41   ; 
- D 1 - I - 0x01F2DD 07:B2CD: 50        .byte $50, $51, $50, $51   ; 
; 47 
- D 1 - I - 0x01F2E1 07:B2D1: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01F2E5 07:B2D5: 4A        .byte $4A, $4A, $4A, $4A   ; 
- D 1 - I - 0x01F2E9 07:B2D9: 4A        .byte $4A, $4A, $4A, $4A   ; 
- D 1 - I - 0x01F2ED 07:B2DD: 4A        .byte $4A, $4A, $4A, $4A   ; 
; 48 
- D 1 - I - 0x01F2F1 07:B2E1: 40        .byte $40, $41, $40, $51   ; 
- D 1 - I - 0x01F2F5 07:B2E5: 50        .byte $50, $51, $50, $42   ; 
- D 1 - I - 0x01F2F9 07:B2E9: 40        .byte $40, $41, $42, $49   ; 
- D 1 - I - 0x01F2FD 07:B2ED: 50        .byte $50, $51, $48, $48   ; 
; 49 
- D 1 - I - 0x01F301 07:B2F1: 50        .byte $50, $41, $40, $41   ; 
- D 1 - I - 0x01F305 07:B2F5: 43        .byte $43, $51, $50, $51   ; 
- D 1 - I - 0x01F309 07:B2F9: 49        .byte $49, $43, $40, $41   ; 
- D 1 - I - 0x01F30D 07:B2FD: 48        .byte $48, $48, $50, $51   ; 
; 4A 
- D 1 - I - 0x01F311 07:B301: B8        .byte $B8, $7E, $B8, $7E   ; 
- D 1 - I - 0x01F315 07:B305: 7D        .byte $7D, $7F, $7D, $7F   ; 
- D 1 - I - 0x01F319 07:B309: 84        .byte $84, $85, $86, $87   ; 
- D 1 - I - 0x01F31D 07:B30D: 94        .byte $94, $95, $96, $97   ; 
; 4B 
- D 1 - I - 0x01F321 07:B311: 84        .byte $84, $85, $86, $87   ; 
- D 1 - I - 0x01F325 07:B315: 94        .byte $94, $95, $96, $97   ; 
- D 1 - I - 0x01F329 07:B319: B8        .byte $B8, $7E, $B8, $7E   ; 
- D 1 - I - 0x01F32D 07:B31D: 7D        .byte $7D, $7F, $7D, $7F   ; 
; 4C 
- D 1 - I - 0x01F331 07:B321: 40        .byte $40, $41, $49, $49   ; 
- D 1 - I - 0x01F335 07:B325: 50        .byte $50, $51, $48, $48   ; 
- D 1 - I - 0x01F339 07:B329: 40        .byte $40, $41, $49, $49   ; 
- D 1 - I - 0x01F33D 07:B32D: 50        .byte $50, $51, $48, $48   ; 
; 4D 
- D 1 - I - 0x01F341 07:B331: 49        .byte $49, $49, $40, $41   ; 
- D 1 - I - 0x01F345 07:B335: 48        .byte $48, $48, $50, $51   ; 
- D 1 - I - 0x01F349 07:B339: 49        .byte $49, $49, $40, $41   ; 
- D 1 - I - 0x01F34D 07:B33D: 48        .byte $48, $48, $50, $51   ; 
; 4E 
- D 1 - I - 0x01F351 07:B341: 7C        .byte $7C, $7E, $B9, $6F   ; 
- D 1 - I - 0x01F355 07:B345: 7D        .byte $7D, $BA, $6F, $00   ; 
- D 1 - I - 0x01F359 07:B349: 00        .byte $00, $6F, $41, $41   ; 
- D 1 - I - 0x01F35D 07:B34D: 6F        .byte $6F, $41, $50, $51   ; 
; 4F 
- D 1 - I - 0x01F361 07:B351: 7C        .byte $7C, $7E, $7C, $7E   ; 
- D 1 - I - 0x01F365 07:B355: 7D        .byte $7D, $7F, $7D, $7F   ; 
- D 1 - I - 0x01F369 07:B359: 7C        .byte $7C, $7E, $7C, $7E   ; 
- D 1 - I - 0x01F36D 07:B35D: 7D        .byte $7D, $7F, $7D, $7F   ; 
; 50 
- D 1 - I - 0x01F371 07:B361: 3D        .byte $3D, $3D, $3D, $3D   ; 
- D 1 - I - 0x01F375 07:B365: 88        .byte $88, $89, $88, $89   ; 
- D 1 - I - 0x01F379 07:B369: 99        .byte $99, $99, $99, $98   ; 
- D 1 - I - 0x01F37D 07:B36D: 00        .byte $00, $8B, $9A, $9A   ; 
; 51 
- D 1 - I - 0x01F381 07:B371: 3D        .byte $3D, $3D, $3D, $3D   ; 
- D 1 - I - 0x01F385 07:B375: 88        .byte $88, $89, $88, $89   ; 
- D 1 - I - 0x01F389 07:B379: A3        .byte $A3, $A2, $98, $99   ; 
- D 1 - I - 0x01F38D 07:B37D: B2        .byte $B2, $A0, $9A, $9B   ; 
; 52 
- D 1 - I - 0x01F391 07:B381: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01F395 07:B385: 4A        .byte $4A, $4B, $5A, $5B   ; 
- D 1 - I - 0x01F399 07:B389: 4B        .byte $4B, $6A, $6B, $5A   ; 
- D 1 - I - 0x01F39D 07:B38D: 79        .byte $79, $7A, $7B, $5D   ; 
; 53 
- D 1 - I - 0x01F3A1 07:B391: B3        .byte $B3, $A3, $9B, $9B   ; 
- D 1 - I - 0x01F3A5 07:B395: A3        .byte $A3, $A2, $00, $9B   ; 
- D 1 - I - 0x01F3A9 07:B399: B2        .byte $B2, $B2, $00, $9B   ; 
- D 1 - I - 0x01F3AD 07:B39D: A0        .byte $A0, $00, $9B, $91   ; 
; 54 
- D 1 - I - 0x01F3B1 07:B3A1: 00        .byte $00, $8A, $8B, $9A   ; 
- D 1 - I - 0x01F3B5 07:B3A5: 00        .byte $00, $00, $8A, $8B   ; 
- D 1 - I - 0x01F3B9 07:B3A9: 00        .byte $00, $00, $00, $8A   ; 
- D 1 - I - 0x01F3BD 07:B3AD: 00        .byte $00, $00, $8A, $00   ; 
; 55 
- - - - - - 0x01F3C1 07:B3B1: 8B        .byte $8B, $9A, $9B, $9B   ; 
- - - - - - 0x01F3C5 07:B3B5: 9A        .byte $9A, $9B, $9A, $9B   ; 
- - - - - - 0x01F3C9 07:B3B9: 8B        .byte $8B, $9A, $9B, $91   ; 
- - - - - - 0x01F3CD 07:B3BD: 00        .byte $00, $8A, $9A, $9B   ; 
; 56 
- D 1 - I - 0x01F3D1 07:B3C1: 9A        .byte $9A, $9B, $9B, $9B   ; 
- D 1 - I - 0x01F3D5 07:B3C5: 91        .byte $91, $9B, $00, $9B   ; 
- D 1 - I - 0x01F3D9 07:B3C9: 9B        .byte $9B, $91, $00, $9B   ; 
- D 1 - I - 0x01F3DD 07:B3CD: 9A        .byte $9A, $9B, $9B, $9B   ; 
; 57 
- D 1 - I - 0x01F3E1 07:B3D1: 8C        .byte $8C, $8D, $8C, $8D   ; 
- D 1 - I - 0x01F3E5 07:B3D5: 9C        .byte $9C, $9D, $9C, $9D   ; 
- D 1 - I - 0x01F3E9 07:B3D9: 8D        .byte $8D, $8C, $8D, $8C   ; 
- D 1 - I - 0x01F3ED 07:B3DD: 9D        .byte $9D, $9C, $9D, $9C   ; 
; 58 
- D 1 - I - 0x01F3F1 07:B3E1: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01F3F5 07:B3E5: 00        .byte $00, $00, $4A, $4B   ; 
- D 1 - I - 0x01F3F9 07:B3E9: 00        .byte $00, $00, $4B, $6A   ; 
- D 1 - I - 0x01F3FD 07:B3ED: 00        .byte $00, $00, $79, $7A   ; 
; 59 
- D 1 - I - 0x01F401 07:B3F1: 00        .byte $00, $00, $00, $00   ; 
- D 1 - I - 0x01F405 07:B3F5: 5A        .byte $5A, $5B, $00, $00   ; 
- D 1 - I - 0x01F409 07:B3F9: 6B        .byte $6B, $5A, $00, $00   ; 
- D 1 - I - 0x01F40D 07:B3FD: 7B        .byte $7B, $5D, $00, $00   ; 
; 5A 
- D 1 - I - 0x01F411 07:B401: 00        .byte $00, $00, $4C, $4D   ; 
- D 1 - I - 0x01F415 07:B405: 00        .byte $00, $00, $5C, $3F   ; 
- D 1 - I - 0x01F419 07:B409: 00        .byte $00, $00, $6C, $6D   ; 
- D 1 - I - 0x01F41D 07:B40D: 00        .byte $00, $00, $7C, $7D   ; 
; 5B 
- D 1 - I - 0x01F421 07:B411: 4E        .byte $4E, $4F, $00, $00   ; 
- D 1 - I - 0x01F425 07:B415: 5E        .byte $5E, $5F, $00, $00   ; 
- D 1 - I - 0x01F429 07:B419: 6E        .byte $6E, $6F, $00, $00   ; 
- D 1 - I - 0x01F42D 07:B41D: 7E        .byte $7E, $7F, $00, $00   ; 
; 5C 
- D 1 - I - 0x01F431 07:B421: 4C        .byte $4C, $4D, $4E, $4F   ; 
- D 1 - I - 0x01F435 07:B425: 5C        .byte $5C, $3F, $5E, $5F   ; 
- D 1 - I - 0x01F439 07:B429: 6C        .byte $6C, $6D, $6E, $6F   ; 
- D 1 - I - 0x01F43D 07:B42D: 7C        .byte $7C, $7D, $7E, $7F   ; 



_off046_0x01F441_0B:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- D 1 - I - 0x01F441 07:B431: AA        .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA   ; 00 
- D 1 - I - 0x01F451 07:B441: AA        .byte $AA, $AA, $AA, $5A, $5A, $AA, $A5, $A5, $FF, $FF, $04, $08, $FF, $FF, $AF, $00   ; 10 
- D 1 - I - 0x01F461 07:B451: AA        .byte $AA, $FF, $B7, $DD, $88, $FF, $6A, $9E, $AA, $AA, $55, $91, $77, $DD, $AA, $9A   ; 20 
- D 1 - I - 0x01F471 07:B461: FF        .byte $FF, $5F, $5F, $5A, $FF, $55, $55, $55, $55, $55, $FF, $FF, $55, $55, $55, $5A   ; 30 
- D 1 - I - 0x01F481 07:B471: 55        .byte $55, $56, $95, $65, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55, $55   ; 40 
- D 1 - I - 0x01F491 07:B481: FF        .byte $FF, $EF, $FF, $EE, $FF, $FF, $FF, $55, $FF, $FF, $FF, $FF, $FF                  ; 50 



tbl_0x01F49E_4x4_blocks_indexes:
- - - - - - 0x01F49E 07:B48E: 2B        .byte $2B   ; 00 
- - - - - - 0x01F49F 07:B48F: 2B        .byte $2B   ; 01 
- - - - - - 0x01F4A0 07:B490: 2B        .byte $2B   ; 02 
- - - - - - 0x01F4A1 07:B491: 19        .byte $19   ; 03 
- - - - - - 0x01F4A2 07:B492: 2B        .byte $2B   ; 04 
- - - - - - 0x01F4A3 07:B493: 2B        .byte $2B   ; 05 
- - - - - - 0x01F4A4 07:B494: 00        .byte $00   ; 06 
- - - - - - 0x01F4A5 07:B495: 00        .byte $00   ; 07 
- - - - - - 0x01F4A6 07:B496: 00        .byte $00   ; 08 
- - - - - - 0x01F4A7 07:B497: 00        .byte $00   ; 09 
- - - - - - 0x01F4A8 07:B498: 00        .byte $00   ; 0A 
- - - - - - 0x01F4A9 07:B499: 44        .byte $44   ; 0B 
- - - - - - 0x01F4AA 07:B49A: 44        .byte $44   ; 0C 
- - - - - - 0x01F4AB 07:B49B: 44        .byte $44   ; 0D 
- - - - - - 0x01F4AC 07:B49C: 44        .byte $44   ; 0E 
- - - - - - 0x01F4AD 07:B49D: 00        .byte $00   ; 0F 
- - - - - - 0x01F4AE 07:B49E: 2B        .byte $2B   ; 10 
- - - - - - 0x01F4AF 07:B49F: 19        .byte $19   ; 11 
- - - - - - 0x01F4B0 07:B4A0: 2B        .byte $2B   ; 12 
- - - - - - 0x01F4B1 07:B4A1: 19        .byte $19   ; 13 
- D 1 - - - 0x01F4B2 07:B4A2: 2B        .byte $2B   ; 14 
- D 1 - - - 0x01F4B3 07:B4A3: 2B        .byte $2B   ; 15 
- D 1 - - - 0x01F4B4 07:B4A4: 2B        .byte $2B   ; 16 
- D 1 - - - 0x01F4B5 07:B4A5: 2B        .byte $2B   ; 17 
- D 1 - - - 0x01F4B6 07:B4A6: 2B        .byte $2B   ; 18 
- D 1 - - - 0x01F4B7 07:B4A7: 2B        .byte $2B   ; 19 
- D 1 - - - 0x01F4B8 07:B4A8: 2B        .byte $2B   ; 1A 
- D 1 - - - 0x01F4B9 07:B4A9: 19        .byte $19   ; 1B 
- D 1 - - - 0x01F4BA 07:B4AA: 2B        .byte $2B   ; 1C 
- D 1 - - - 0x01F4BB 07:B4AB: 19        .byte $19   ; 1D 
- D 1 - - - 0x01F4BC 07:B4AC: 0A        .byte $0A   ; 1E 
- D 1 - - - 0x01F4BD 07:B4AD: 0C        .byte $0C   ; 1F 



sub_0x01F4BE:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01F4BE 07:B4AE: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x01F4C0 07:B4B0: D0 7A     BNE bra_B52C
C - - - - - 0x01F4C2 07:B4B2: A5 32     LDA ram_blk_hi
C - - - - - 0x01F4C4 07:B4B4: 0A        ASL
C - - - - - 0x01F4C5 07:B4B5: A8        TAY
C - - - - - 0x01F4C6 07:B4B6: B9 6D B6  LDA tbl_B66D,Y
C - - - - - 0x01F4C9 07:B4B9: 85 08     STA ram_0008
C - - - - - 0x01F4CB 07:B4BB: B9 6E B6  LDA tbl_B66D + $01,Y
C - - - - - 0x01F4CE 07:B4BE: 85 09     STA ram_0009
C - - - - - 0x01F4D0 07:B4C0: A5 33     LDA ram_blk_lo
; * 06
C - - - - - 0x01F4D2 07:B4C2: 0A        ASL
C - - - - - 0x01F4D3 07:B4C3: 85 00     STA ram_0000
C - - - - - 0x01F4D5 07:B4C5: 0A        ASL
; bzk optimize, value is too low, no need for CLC after ASL
C - - - - - 0x01F4D6 07:B4C6: 18        CLC
C - - - - - 0x01F4D7 07:B4C7: 65 00     ADC ram_0000
C - - - - - 0x01F4D9 07:B4C9: A8        TAY
C - - - - - 0x01F4DA 07:B4CA: B1 08     LDA (ram_0008),Y
C - - - - - 0x01F4DC 07:B4CC: C5 34     CMP ram_blk_fr
C - - - - - 0x01F4DE 07:B4CE: D0 5C     BNE bra_B52C
C - - - - - 0x01F4E0 07:B4D0: C8        INY
C - - - - - 0x01F4E1 07:B4D1: B1 08     LDA (ram_0008),Y
C - - - - - 0x01F4E3 07:B4D3: C5 57     CMP ram_cam_pos_hi
C - - - - - 0x01F4E5 07:B4D5: D0 55     BNE bra_B52C
C - - - - - 0x01F4E7 07:B4D7: C8        INY
C - - - - - 0x01F4E8 07:B4D8: 8A        TXA
C - - - - - 0x01F4E9 07:B4D9: D1 08     CMP (ram_0008),Y
C - - - - - 0x01F4EB 07:B4DB: D0 4F     BNE bra_B52C
C - - - - - 0x01F4ED 07:B4DD: C8        INY
C - - - - - 0x01F4EE 07:B4DE: B1 08     LDA (ram_0008),Y
C - - - - - 0x01F4F0 07:B4E0: C8        INY
C - - - - - 0x01F4F1 07:B4E1: 38        SEC
C - - - - - 0x01F4F2 07:B4E2: ED 1C 04  SBC ram_plr_pos_Y_hi
C - - - - - 0x01F4F5 07:B4E5: B0 02     BCS bra_B4E9
C - - - - - 0x01F4F7 07:B4E7: 49 FF     EOR #$FF
bra_B4E9:
C - - - - - 0x01F4F9 07:B4E9: C9 08     CMP #$08
C - - - - - 0x01F4FB 07:B4EB: B0 02     BCS bra_B4EF
C - - - - - 0x01F4FD 07:B4ED: 90 0E     BCC bra_B4FD    ; jmp
bra_B4EF:
C - - - - - 0x01F4FF 07:B4EF: B1 08     LDA (ram_0008),Y
C - - - - - 0x01F501 07:B4F1: 38        SEC
C - - - - - 0x01F502 07:B4F2: ED 1C 04  SBC ram_plr_pos_Y_hi
C - - - - - 0x01F505 07:B4F5: B0 02     BCS bra_B4F9
C - - - - - 0x01F507 07:B4F7: 49 FF     EOR #$FF
bra_B4F9:
C - - - - - 0x01F509 07:B4F9: C9 08     CMP #$08
C - - - - - 0x01F50B 07:B4FB: B0 2D     BCS bra_B52A
bra_B4FD:
C - - - - - 0x01F50D 07:B4FD: AD 65 05  LDA ram_plr_state
C - - - - - 0x01F510 07:B500: C9 34     CMP #$34
C - - - - - 0x01F512 07:B502: F0 2A     BEQ bra_B52E
C - - - - - 0x01F514 07:B504: C9 04     CMP #$04
C - - - - - 0x01F516 07:B506: D0 22     BNE bra_B52A
C - - - - - 0x01F518 07:B508: C8        INY
C - - - - - 0x01F519 07:B509: B1 08     LDA (ram_0008),Y
C - - - - - 0x01F51B 07:B50B: 85 34     STA ram_blk_fr
C - - - - - 0x01F51D 07:B50D: 86 65     STX ram_0065
C - - - - - 0x01F51F 07:B50F: 8A        TXA
C - - - - - 0x01F520 07:B510: 49 01     EOR #$01
C - - - - - 0x01F522 07:B512: 8D A8 04  STA ram_plr_facing
C - - - - - 0x01F525 07:B515: AD 65 05  LDA ram_plr_state
C - - - - - 0x01F528 07:B518: 09 80     ORA #$80
C - - - - - 0x01F52A 07:B51A: 8D 65 05  STA ram_plr_state
C - - - - - 0x01F52D 07:B51D: A9 02     LDA #$02
C - - - - - 0x01F52F 07:B51F: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x01F532 07:B522: A9 08     LDA #con_002A_08
C - - - - - 0x01F534 07:B524: 85 2A     STA ram_002A_script
C - - - - - 0x01F536 07:B526: A9 00     LDA #$00
C - - - - - 0x01F538 07:B528: 85 6B     STA ram_006B_subscript
bra_B52A:
C - - - - - 0x01F53A 07:B52A: 38        SEC
C - - - - - 0x01F53B 07:B52B: 60        RTS
bra_B52C:
C - - - - - 0x01F53C 07:B52C: 18        CLC
C - - - - - 0x01F53D 07:B52D: 60        RTS
bra_B52E:
- - - - - - 0x01F53E 07:B52E: AD 4E 05  LDA ram_plr_id
- - - - - - 0x01F541 07:B531: C9 03     CMP #$03
- - - - - - 0x01F543 07:B533: D0 F5     BNE bra_B52A
- - - - - - 0x01F545 07:B535: A9 36     LDA #$36
- - - - - - 0x01F547 07:B537: 8D 65 05  STA ram_plr_state
- - - - - - 0x01F54A 07:B53A: 8E D8 05  STX ram_05D8_plr
- - - - - - 0x01F54D 07:B53D: 38        SEC
- - - - - - 0x01F54E 07:B53E: 60        RTS



sub_0x01F54F:
C - - - - - 0x01F54F 07:B53F: A5 32     LDA ram_blk_hi
C - - - - - 0x01F551 07:B541: 0A        ASL
C - - - - - 0x01F552 07:B542: A8        TAY
C - - - - - 0x01F553 07:B543: B9 C6 B7  LDA tbl_B7C6,Y
C - - - - - 0x01F556 07:B546: 85 08     STA ram_0008
C - - - - - 0x01F558 07:B548: B9 C7 B7  LDA tbl_B7C6 + $01,Y
C - - - - - 0x01F55B 07:B54B: 85 09     STA ram_0009
C - - - - - 0x01F55D 07:B54D: A5 33     LDA ram_blk_lo
C - - - - - 0x01F55F 07:B54F: 0A        ASL
C - - - - - 0x01F560 07:B550: A8        TAY
C - - - - - 0x01F561 07:B551: B1 08     LDA (ram_0008),Y
C - - - - - 0x01F563 07:B553: 85 0A     STA ram_000A
C - - - - - 0x01F565 07:B555: C8        INY
C - - - - - 0x01F566 07:B556: B1 08     LDA (ram_0008),Y
C - - - - - 0x01F568 07:B558: 85 0B     STA ram_000B
C - - - - - 0x01F56A 07:B55A: A5 34     LDA ram_blk_fr
C - - - - - 0x01F56C 07:B55C: 0A        ASL
C - - - - - 0x01F56D 07:B55D: A8        TAY
C - - - - - 0x01F56E 07:B55E: B1 0A     LDA (ram_000A),Y
C - - - - - 0x01F570 07:B560: 85 69     STA ram_0069
C - - - - - 0x01F572 07:B562: C8        INY
C - - - - - 0x01F573 07:B563: B1 0A     LDA (ram_000A),Y
C - - - - - 0x01F575 07:B565: 85 6A     STA ram_006A
C - - - - - 0x01F577 07:B567: 60        RTS



loc_B568:
C D 1 - - - 0x01F578 07:B568: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x01F57A 07:B56A: 85 08     STA ram_0008
C - - - - - 0x01F57C 07:B56C: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x01F57F 07:B56F: 38        SEC
C - - - - - 0x01F580 07:B570: E9 33     SBC #$33
C - - - - - 0x01F582 07:B572: 90 7C     BCC bra_B5F0
C - - - - - 0x01F584 07:B574: 18        CLC
C - - - - - 0x01F585 07:B575: 65 56     ADC ram_cam_pos_lo
C - - - - - 0x01F587 07:B577: 85 0C     STA ram_000C
C - - - - - 0x01F589 07:B579: B0 04     BCS bra_B57F
C - - - - - 0x01F58B 07:B57B: C9 F0     CMP #$F0
C - - - - - 0x01F58D 07:B57D: 90 07     BCC bra_B586
bra_B57F:
C - - - - - 0x01F58F 07:B57F: 18        CLC
C - - - - - 0x01F590 07:B580: 69 10     ADC #$10
C - - - - - 0x01F592 07:B582: 85 0C     STA ram_000C
C - - - - - 0x01F594 07:B584: E6 08     INC ram_0008
bra_B586:
C - - - - - 0x01F596 07:B586: A0 00     LDY #$00
bra_B588_loop:
C - - - - - 0x01F598 07:B588: B1 69     LDA (ram_0069),Y
C - - - - - 0x01F59A 07:B58A: C8        INY
C - - - - - 0x01F59B 07:B58B: C9 FF     CMP #$FF
C - - - - - 0x01F59D 07:B58D: F0 61     BEQ bra_B5F0
C - - - - - 0x01F59F 07:B58F: A6 0E     LDX ram_000E
C - - - - - 0x01F5A1 07:B591: F0 05     BEQ bra_B598
C - - - - - 0x01F5A3 07:B593: 0A        ASL
C - - - - - 0x01F5A4 07:B594: 90 56     BCC bra_B5EC
C - - - - - 0x01F5A6 07:B596: B0 03     BCS bra_B59B    ; jmp
bra_B598:
C - - - - - 0x01F5A8 07:B598: 0A        ASL
C - - - - - 0x01F5A9 07:B599: B0 51     BCS bra_B5EC
bra_B59B:
C - - - - - 0x01F5AB 07:B59B: 85 0A     STA ram_000A
C - - - - - 0x01F5AD 07:B59D: 4A        LSR
C - - - - - 0x01F5AE 07:B59E: 29 0F     AND #$0F
C - - - - - 0x01F5B0 07:B5A0: 85 09     STA ram_0009
C - - - - - 0x01F5B2 07:B5A2: B1 69     LDA (ram_0069),Y
C - - - - - 0x01F5B4 07:B5A4: C8        INY
C - - - - - 0x01F5B5 07:B5A5: E5 0C     SBC ram_000C
C - - - - - 0x01F5B7 07:B5A7: 85 0D     STA ram_000D
C - - - - - 0x01F5B9 07:B5A9: A5 09     LDA ram_0009
C - - - - - 0x01F5BB 07:B5AB: E5 08     SBC ram_0008
C - - - - - 0x01F5BD 07:B5AD: 85 0F     STA ram_000F
C - - - - - 0x01F5BF 07:B5AF: B0 11     BCS bra_B5C2
C - - - - - 0x01F5C1 07:B5B1: C9 FF     CMP #$FF
C - - - - - 0x01F5C3 07:B5B3: D0 38     BNE bra_B5ED
C - - - - - 0x01F5C5 07:B5B5: A9 00     LDA #$00
C - - - - - 0x01F5C7 07:B5B7: 85 0F     STA ram_000F
C - - - - - 0x01F5C9 07:B5B9: A5 0D     LDA ram_000D
C - - - - - 0x01F5CB 07:B5BB: 49 FF     EOR #$FF
C - - - - - 0x01F5CD 07:B5BD: 18        CLC
C - - - - - 0x01F5CE 07:B5BE: 69 01     ADC #$01
C - - - - - 0x01F5D0 07:B5C0: 85 0D     STA ram_000D
bra_B5C2:
C - - - - - 0x01F5D2 07:B5C2: A5 0F     LDA ram_000F
C - - - - - 0x01F5D4 07:B5C4: D0 27     BNE bra_B5ED
C - - - - - 0x01F5D6 07:B5C6: A5 09     LDA ram_0009
C - - - - - 0x01F5D8 07:B5C8: C5 08     CMP ram_0008
C - - - - - 0x01F5DA 07:B5CA: F0 00     BEQ bra_B5CC
bra_B5CC:
C - - - - - 0x01F5DC 07:B5CC: A5 0D     LDA ram_000D
C - - - - - 0x01F5DE 07:B5CE: C9 07     CMP #$07
C - - - - - 0x01F5E0 07:B5D0: B0 1B     BCS bra_B5ED
C - - - - - 0x01F5E2 07:B5D2: A2 00     LDX #$00
C - - - - - 0x01F5E4 07:B5D4: 38        SEC
C - - - - - 0x01F5E5 07:B5D5: B1 69     LDA (ram_0069),Y
C - - - - - 0x01F5E7 07:B5D7: ED 38 04  SBC ram_plr_pos_X_hi
C - - - - - 0x01F5EA 07:B5DA: B0 06     BCS bra_B5E2
C - - - - - 0x01F5EC 07:B5DC: E8        INX
C - - - - - 0x01F5ED 07:B5DD: 49 FF     EOR #$FF
C - - - - - 0x01F5EF 07:B5DF: 18        CLC
C - - - - - 0x01F5F0 07:B5E0: 69 01     ADC #$01
bra_B5E2:
C - - - - - 0x01F5F2 07:B5E2: 85 0B     STA ram_000B
C - - - - - 0x01F5F4 07:B5E4: C9 0C     CMP #$0C
C - - - - - 0x01F5F6 07:B5E6: B0 05     BCS bra_B5ED
C - - - - - 0x01F5F8 07:B5E8: 86 0D     STX ram_000D
C - - - - - 0x01F5FA 07:B5EA: 38        SEC
C - - - - - 0x01F5FB 07:B5EB: 60        RTS
bra_B5EC:
C - - - - - 0x01F5FC 07:B5EC: C8        INY
bra_B5ED:
C - - - - - 0x01F5FD 07:B5ED: C8        INY
C - - - - - 0x01F5FE 07:B5EE: D0 98     BNE bra_B588_loop    ; jmp
bra_B5F0:
C - - - - - 0x01F600 07:B5F0: 18        CLC
C - - - - - 0x01F601 07:B5F1: 60        RTS



sub_0x01F602_check_stairs_if_pressed_down:
C - - - - - 0x01F602 07:B5F2: A9 01     LDA #$01
C - - - - - 0x01F604 07:B5F4: D0 02     BNE bra_B5F8    ; jmp



sub_0x01F606_check_stairs_if_pressed_up:
; out
    ; C
        ; 0 = 
        ; 1 = 
    ; 000A = 
    ; 000D = 
C - - - - - 0x01F606 07:B5F6: A9 00     LDA #$00
bra_B5F8:
C - - - - - 0x01F608 07:B5F8: 85 0E     STA ram_000E
C - - - - - 0x01F60A 07:B5FA: A5 68     LDA ram_0068
C - - - - - 0x01F60C 07:B5FC: 10 03     BPL bra_B601
C - - - - - 0x01F60E 07:B5FE: 4C 68 B5  JMP loc_B568
bra_B601:
C - - - - - 0x01F611 07:B601: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x01F614 07:B604: 18        CLC
C - - - - - 0x01F615 07:B605: 65 56     ADC ram_cam_pos_lo
C - - - - - 0x01F617 07:B607: 85 0C     STA ram_000C
C - - - - - 0x01F619 07:B609: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x01F61B 07:B60B: 69 00     ADC #$00
C - - - - - 0x01F61D 07:B60D: 85 08     STA ram_0008
C - - - - - 0x01F61F 07:B60F: A0 00     LDY #$00
bra_B611_loop:
C - - - - - 0x01F621 07:B611: B1 69     LDA (ram_0069),Y
C - - - - - 0x01F623 07:B613: C8        INY
C - - - - - 0x01F624 07:B614: C9 FF     CMP #$FF
C - - - - - 0x01F626 07:B616: F0 53     BEQ bra_B66B_FF
C - - - - - 0x01F628 07:B618: A6 0E     LDX ram_000E
C - - - - - 0x01F62A 07:B61A: F0 05     BEQ bra_B621
C - - - - - 0x01F62C 07:B61C: 0A        ASL
C - - - - - 0x01F62D 07:B61D: 90 48     BCC bra_B667
C - - - - - 0x01F62F 07:B61F: B0 03     BCS bra_B624    ; jmp
bra_B621:
C - - - - - 0x01F631 07:B621: 0A        ASL
C - - - - - 0x01F632 07:B622: B0 43     BCS bra_B667
bra_B624:
C - - - - - 0x01F634 07:B624: 85 0A     STA ram_000A
; * 08
C - - - - - 0x01F636 07:B626: 0A        ASL
C - - - - - 0x01F637 07:B627: 0A        ASL
C - - - - - 0x01F638 07:B628: 0A        ASL
C - - - - - 0x01F639 07:B629: ED 1C 04  SBC ram_plr_pos_Y_hi
C - - - - - 0x01F63C 07:B62C: B0 02     BCS bra_B630
C - - - - - 0x01F63E 07:B62E: 49 FF     EOR #$FF
bra_B630:
C - - - - - 0x01F640 07:B630: C9 06     CMP #$06
C - - - - - 0x01F642 07:B632: B0 33     BCS bra_B667
C - - - - - 0x01F644 07:B634: A5 0C     LDA ram_000C
C - - - - - 0x01F646 07:B636: 38        SEC
C - - - - - 0x01F647 07:B637: F1 69     SBC (ram_0069),Y
C - - - - - 0x01F649 07:B639: C8        INY
C - - - - - 0x01F64A 07:B63A: 85 0B     STA ram_000B
C - - - - - 0x01F64C 07:B63C: A5 08     LDA ram_0008
C - - - - - 0x01F64E 07:B63E: F1 69     SBC (ram_0069),Y
C - - - - - 0x01F650 07:B640: 85 09     STA ram_0009
C - - - - - 0x01F652 07:B642: B0 15     BCS bra_B659
C - - - - - 0x01F654 07:B644: C9 FF     CMP #$FF
C - - - - - 0x01F656 07:B646: D0 20     BNE bra_B668
C - - - - - 0x01F658 07:B648: A5 0B     LDA ram_000B
C - - - - - 0x01F65A 07:B64A: C9 F3     CMP #$F3
C - - - - - 0x01F65C 07:B64C: 90 1A     BCC bra_B668
C - - - - - 0x01F65E 07:B64E: 49 FF     EOR #$FF
C - - - - - 0x01F660 07:B650: 18        CLC
C - - - - - 0x01F661 07:B651: 69 01     ADC #$01
C - - - - - 0x01F663 07:B653: 85 0B     STA ram_000B
C - - - - - 0x01F665 07:B655: A2 00     LDX #$00
C - - - - - 0x01F667 07:B657: F0 0A     BEQ bra_B663    ; jmp
bra_B659:
C - - - - - 0x01F669 07:B659: D0 0D     BNE bra_B668
C - - - - - 0x01F66B 07:B65B: A5 0B     LDA ram_000B
C - - - - - 0x01F66D 07:B65D: C9 0D     CMP #$0D
C - - - - - 0x01F66F 07:B65F: B0 07     BCS bra_B668
C - - - - - 0x01F671 07:B661: A2 01     LDX #$01
bra_B663:
C - - - - - 0x01F673 07:B663: 86 0D     STX ram_000D
C - - - - - 0x01F675 07:B665: 38        SEC
C - - - - - 0x01F676 07:B666: 60        RTS
bra_B667:
C - - - - - 0x01F677 07:B667: C8        INY
bra_B668:
C - - - - - 0x01F678 07:B668: C8        INY
C - - - - - 0x01F679 07:B669: D0 A6     BNE bra_B611_loop
bra_B66B_FF:
C - - - - - 0x01F67B 07:B66B: 18        CLC
C - - - - - 0x01F67C 07:B66C: 60        RTS



tbl_B66D:
- D 1 - - - 0x01F67D 07:B66D: 8B B6     .word _off029_B68B_00
- D 1 - - - 0x01F67F 07:B66F: 9E B6     .word _off029_B69E_01
- D 1 - - - 0x01F681 07:B671: BD B6     .word _off029_B6BD_02
- D 1 - - - 0x01F683 07:B673: D6 B6     .word _off029_B6D6_03
- D 1 - - - 0x01F685 07:B675: EF B6     .word _off029_B6EF_04
- D 1 - - - 0x01F687 07:B677: FC B6     .word _off029_B6FC_05
- D 1 - - - 0x01F689 07:B679: 0F B7     .word _off029_B70F_06
- D 1 - - - 0x01F68B 07:B67B: 1C B7     .word _off029_B71C_07
- D 1 - - - 0x01F68D 07:B67D: 41 B7     .word _off029_B741_08
- D 1 - - - 0x01F68F 07:B67F: 5A B7     .word _off029_B75A_09
- D 1 - - - 0x01F691 07:B681: 61 B7     .word _off029_B761_0A
- D 1 - - - 0x01F693 07:B683: 8C B7     .word _off029_B78C_0B
- D 1 - - - 0x01F695 07:B685: AC B7     .word _off029_B7AC_0C
- D 1 - - - 0x01F697 07:B687: 99 B7     .word _off029_B799_0D
- D 1 - - - 0x01F699 07:B689: B9 B7     .word _off029_B7B9_0E



_off029_B68B_00:
; 00 
- D 1 - I - 0x01F69B 07:B68B: 00        .byte $00   ; 
- D 1 - I - 0x01F69C 07:B68C: 02        .byte $02   ; 
- D 1 - I - 0x01F69D 07:B68D: 01        .byte $01   ; 
- D 1 - I - 0x01F69E 07:B68E: B0        .byte $B0   ; 
- D 1 - I - 0x01F69F 07:B68F: B0        .byte $B0   ; 
- D 1 - I - 0x01F6A0 07:B690: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x01F6A1 07:B691: 02        .byte $02   ; 
- D 1 - I - 0x01F6A2 07:B692: 02        .byte $02   ; 
- D 1 - I - 0x01F6A3 07:B693: 01        .byte $01   ; 
- D 1 - I - 0x01F6A4 07:B694: 90        .byte $90   ; 
- - - - - - 0x01F6A5 07:B695: 90        .byte $90   ; 
- D 1 - I - 0x01F6A6 07:B696: 01        .byte $01   ; 
; 02 
- D 1 - I - 0x01F6A7 07:B697: 00        .byte $00   ; 
- D 1 - I - 0x01F6A8 07:B698: 02        .byte $02   ; 
- D 1 - I - 0x01F6A9 07:B699: 01        .byte $01   ; 
- D 1 - I - 0x01F6AA 07:B69A: B0        .byte $B0   ; 
- D 1 - I - 0x01F6AB 07:B69B: B0        .byte $B0   ; 
- D 1 - I - 0x01F6AC 07:B69C: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x01F6AD 07:B69D: FF        .byte $FF   ; end token



_off029_B69E_01:
; 00 
- D 1 - I - 0x01F6AE 07:B69E: 02        .byte $02   ; 
- D 1 - I - 0x01F6AF 07:B69F: 01        .byte $01   ; 
- D 1 - I - 0x01F6B0 07:B6A0: 01        .byte $01   ; 
- D 1 - I - 0x01F6B1 07:B6A1: 70        .byte $70   ; 
- D 1 - I - 0x01F6B2 07:B6A2: 70        .byte $70   ; 
- D 1 - I - 0x01F6B3 07:B6A3: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x01F6B4 07:B6A4: 02        .byte $02   ; 
- D 1 - I - 0x01F6B5 07:B6A5: 00        .byte $00   ; 
- D 1 - I - 0x01F6B6 07:B6A6: 01        .byte $01   ; 
- D 1 - I - 0x01F6B7 07:B6A7: 90        .byte $90   ; 
- - - - - - 0x01F6B8 07:B6A8: 90        .byte $90   ; 
- D 1 - I - 0x01F6B9 07:B6A9: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x01F6BA 07:B6AA: FF        .byte $FF   ; 
- - - - - - 0x01F6BB 07:B6AB: E0        .byte $E0   ; 
- - - - - - 0x01F6BC 07:B6AC: E0        .byte $E0   ; 
- - - - - - 0x01F6BD 07:B6AD: E0        .byte $E0   ; 
- - - - - - 0x01F6BE 07:B6AE: E0        .byte $E0   ; 
- - - - - - 0x01F6BF 07:B6AF: E0        .byte $E0   ; 
; 03 
- D 1 - I - 0x01F6C0 07:B6B0: 00        .byte $00   ; 
- D 1 - I - 0x01F6C1 07:B6B1: 00        .byte $00   ; 
- D 1 - I - 0x01F6C2 07:B6B2: 00        .byte $00   ; 
- D 1 - I - 0x01F6C3 07:B6B3: 90        .byte $90   ; 
- D 1 - I - 0x01F6C4 07:B6B4: 90        .byte $90   ; 
- D 1 - I - 0x01F6C5 07:B6B5: 02        .byte $02   ; 
; 04 
- D 1 - I - 0x01F6C6 07:B6B6: 00        .byte $00   ; 
- D 1 - I - 0x01F6C7 07:B6B7: 00        .byte $00   ; 
- D 1 - I - 0x01F6C8 07:B6B8: 00        .byte $00   ; 
- D 1 - I - 0x01F6C9 07:B6B9: 70        .byte $70   ; 
- - - - - - 0x01F6CA 07:B6BA: 70        .byte $70   ; 
- D 1 - I - 0x01F6CB 07:B6BB: 02        .byte $02   ; 
; 05 
- - - - - - 0x01F6CC 07:B6BC: FF        .byte $FF   ; end token



_off029_B6BD_02:
; 00 
- D 1 - I - 0x01F6CD 07:B6BD: E0        .byte $E0   ; 
- - - - - - 0x01F6CE 07:B6BE: E0        .byte $E0   ; 
- - - - - - 0x01F6CF 07:B6BF: E0        .byte $E0   ; 
- - - - - - 0x01F6D0 07:B6C0: E0        .byte $E0   ; 
- - - - - - 0x01F6D1 07:B6C1: E0        .byte $E0   ; 
- - - - - - 0x01F6D2 07:B6C2: E0        .byte $E0   ; 
; 01 
- D 1 - I - 0x01F6D3 07:B6C3: 00        .byte $00   ; 
- D 1 - I - 0x01F6D4 07:B6C4: 05        .byte $05   ; 
- D 1 - I - 0x01F6D5 07:B6C5: 01        .byte $01   ; 
- D 1 - I - 0x01F6D6 07:B6C6: B0        .byte $B0   ; 
- - - - - - 0x01F6D7 07:B6C7: B0        .byte $B0   ; 
- D 1 - I - 0x01F6D8 07:B6C8: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x01F6D9 07:B6C9: E0        .byte $E0   ; 
- - - - - - 0x01F6DA 07:B6CA: E0        .byte $E0   ; 
- - - - - - 0x01F6DB 07:B6CB: E0        .byte $E0   ; 
- - - - - - 0x01F6DC 07:B6CC: E0        .byte $E0   ; 
- - - - - - 0x01F6DD 07:B6CD: E0        .byte $E0   ; 
- - - - - - 0x01F6DE 07:B6CE: E0        .byte $E0   ; 
; 03 
- D 1 - I - 0x01F6DF 07:B6CF: 00        .byte $00   ; 
- D 1 - I - 0x01F6E0 07:B6D0: 00        .byte $00   ; 
- D 1 - I - 0x01F6E1 07:B6D1: 00        .byte $00   ; 
- D 1 - I - 0x01F6E2 07:B6D2: 90        .byte $90   ; 
- D 1 - I - 0x01F6E3 07:B6D3: 90        .byte $90   ; 
- D 1 - I - 0x01F6E4 07:B6D4: 01        .byte $01   ; 
; 04 
- D 1 - I - 0x01F6E5 07:B6D5: FF        .byte $FF   ; end token



_off029_B6D6_03:
; 00 
- D 1 - I - 0x01F6E6 07:B6D6: 00        .byte $00   ; 
- D 1 - I - 0x01F6E7 07:B6D7: 01        .byte $01   ; 
- D 1 - I - 0x01F6E8 07:B6D8: 01        .byte $01   ; 
- D 1 - I - 0x01F6E9 07:B6D9: 90        .byte $90   ; 
- D 1 - I - 0x01F6EA 07:B6DA: 90        .byte $90   ; 
- D 1 - I - 0x01F6EB 07:B6DB: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x01F6EC 07:B6DC: 01        .byte $01   ; 
- D 1 - I - 0x01F6ED 07:B6DD: 00        .byte $00   ; 
- D 1 - I - 0x01F6EE 07:B6DE: 00        .byte $00   ; 
- D 1 - I - 0x01F6EF 07:B6DF: 70        .byte $70   ; 
- - - - - - 0x01F6F0 07:B6E0: 70        .byte $70   ; 
- D 1 - I - 0x01F6F1 07:B6E1: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x01F6F2 07:B6E2: E0        .byte $E0   ; 
- - - - - - 0x01F6F3 07:B6E3: E0        .byte $E0   ; 
- - - - - - 0x01F6F4 07:B6E4: E0        .byte $E0   ; 
- - - - - - 0x01F6F5 07:B6E5: E0        .byte $E0   ; 
- - - - - - 0x01F6F6 07:B6E6: E0        .byte $E0   ; 
- - - - - - 0x01F6F7 07:B6E7: E0        .byte $E0   ; 
; 03 
- D 1 - I - 0x01F6F8 07:B6E8: 01        .byte $01   ; 
- D 1 - I - 0x01F6F9 07:B6E9: 02        .byte $02   ; 
- D 1 - I - 0x01F6FA 07:B6EA: 01        .byte $01   ; 
- D 1 - I - 0x01F6FB 07:B6EB: 90        .byte $90   ; 
- D 1 - I - 0x01F6FC 07:B6EC: 90        .byte $90   ; 
- D 1 - I - 0x01F6FD 07:B6ED: 02        .byte $02   ; 
; 04 
- D 1 - I - 0x01F6FE 07:B6EE: FF        .byte $FF   ; end token



_off029_B6EF_04:
; 00 
- D 1 - I - 0x01F6FF 07:B6EF: 02        .byte $02   ; 
- D 1 - I - 0x01F700 07:B6F0: 00        .byte $00   ; 
- D 1 - I - 0x01F701 07:B6F1: 01        .byte $01   ; 
- D 1 - I - 0x01F702 07:B6F2: 80        .byte $80   ; 
- - - - - - 0x01F703 07:B6F3: 80        .byte $80   ; 
- D 1 - I - 0x01F704 07:B6F4: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x01F705 07:B6F5: 02        .byte $02   ; 
- D 1 - I - 0x01F706 07:B6F6: 00        .byte $00   ; 
- D 1 - I - 0x01F707 07:B6F7: 00        .byte $00   ; 
- D 1 - I - 0x01F708 07:B6F8: 70        .byte $70   ; 
- - - - - - 0x01F709 07:B6F9: 70        .byte $70   ; 
- D 1 - I - 0x01F70A 07:B6FA: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x01F70B 07:B6FB: FF        .byte $FF   ; end token



_off029_B6FC_05:
; 00 
- D 1 - I - 0x01F70C 07:B6FC: 00        .byte $00   ; 
- D 1 - I - 0x01F70D 07:B6FD: 01        .byte $01   ; 
- D 1 - I - 0x01F70E 07:B6FE: 01        .byte $01   ; 
- D 1 - I - 0x01F70F 07:B6FF: 70        .byte $70   ; 
- - - - - - 0x01F710 07:B700: 70        .byte $70   ; 
- D 1 - I - 0x01F711 07:B701: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x01F712 07:B702: 00        .byte $00   ; 
- D 1 - I - 0x01F713 07:B703: 03        .byte $03   ; 
- D 1 - I - 0x01F714 07:B704: 01        .byte $01   ; 
- D 1 - I - 0x01F715 07:B705: 70        .byte $70   ; 
- - - - - - 0x01F716 07:B706: 70        .byte $70   ; 
- D 1 - I - 0x01F717 07:B707: 01        .byte $01   ; 
; 02 
- D 1 - I - 0x01F718 07:B708: 01        .byte $01   ; 
- D 1 - I - 0x01F719 07:B709: 03        .byte $03   ; 
- D 1 - I - 0x01F71A 07:B70A: 01        .byte $01   ; 
- D 1 - I - 0x01F71B 07:B70B: 70        .byte $70   ; 
- - - - - - 0x01F71C 07:B70C: 70        .byte $70   ; 
- D 1 - I - 0x01F71D 07:B70D: 01        .byte $01   ; 
; 03 
- D 1 - I - 0x01F71E 07:B70E: FF        .byte $FF   ; end token



_off029_B70F_06:
; 00 
- D 1 - I - 0x01F71F 07:B70F: 00        .byte $00   ; 
- D 1 - I - 0x01F720 07:B710: 01        .byte $01   ; 
- D 1 - I - 0x01F721 07:B711: 01        .byte $01   ; 
- D 1 - I - 0x01F722 07:B712: 90        .byte $90   ; 
- - - - - - 0x01F723 07:B713: 90        .byte $90   ; 
- D 1 - I - 0x01F724 07:B714: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x01F725 07:B715: 00        .byte $00   ; 
- D 1 - I - 0x01F726 07:B716: 05        .byte $05   ; 
- D 1 - I - 0x01F727 07:B717: 01        .byte $01   ; 
- D 1 - I - 0x01F728 07:B718: 90        .byte $90   ; 
- - - - - - 0x01F729 07:B719: 90        .byte $90   ; 
- D 1 - I - 0x01F72A 07:B71A: 02        .byte $02   ; 
; 02 
- D 1 - I - 0x01F72B 07:B71B: FF        .byte $FF   ; end token



_off029_B71C_07:
; 00 
- D 1 - I - 0x01F72C 07:B71C: 00        .byte $00   ; 
- D 1 - I - 0x01F72D 07:B71D: 01        .byte $01   ; 
- D 1 - I - 0x01F72E 07:B71E: 01        .byte $01   ; 
- D 1 - I - 0x01F72F 07:B71F: 60        .byte $60   ; 
- D 1 - I - 0x01F730 07:B720: B0        .byte $B0   ; 
- D 1 - I - 0x01F731 07:B721: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x01F732 07:B722: 00        .byte $00   ; 
- D 1 - I - 0x01F733 07:B723: 01        .byte $01   ; 
- D 1 - I - 0x01F734 07:B724: 01        .byte $01   ; 
- D 1 - I - 0x01F735 07:B725: 70        .byte $70   ; 
- D 1 - I - 0x01F736 07:B726: C0        .byte $C0   ; 
- D 1 - I - 0x01F737 07:B727: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x01F738 07:B728: 00        .byte $00   ; 
- D 1 - I - 0x01F739 07:B729: 00        .byte $00   ; 
- D 1 - I - 0x01F73A 07:B72A: 01        .byte $01   ; 
- D 1 - I - 0x01F73B 07:B72B: 60        .byte $60   ; 
- D 1 - I - 0x01F73C 07:B72C: C0        .byte $C0   ; 
- D 1 - I - 0x01F73D 07:B72D: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x01F73E 07:B72E: 00        .byte $00   ; 
- D 1 - I - 0x01F73F 07:B72F: 01        .byte $01   ; 
- D 1 - I - 0x01F740 07:B730: 01        .byte $01   ; 
- D 1 - I - 0x01F741 07:B731: 60        .byte $60   ; 
- D 1 - I - 0x01F742 07:B732: B0        .byte $B0   ; 
- D 1 - I - 0x01F743 07:B733: 00        .byte $00   ; 
; 04 
- D 1 - I - 0x01F744 07:B734: E0        .byte $E0   ; 
- - - - - - 0x01F745 07:B735: E0        .byte $E0   ; 
- - - - - - 0x01F746 07:B736: E0        .byte $E0   ; 
- - - - - - 0x01F747 07:B737: E0        .byte $E0   ; 
- - - - - - 0x01F748 07:B738: E0        .byte $E0   ; 
- - - - - - 0x01F749 07:B739: E0        .byte $E0   ; 
; 05 
- D 1 - I - 0x01F74A 07:B73A: E0        .byte $E0   ; 
- - - - - - 0x01F74B 07:B73B: E0        .byte $E0   ; 
- - - - - - 0x01F74C 07:B73C: E0        .byte $E0   ; 
- - - - - - 0x01F74D 07:B73D: E0        .byte $E0   ; 
- - - - - - 0x01F74E 07:B73E: E0        .byte $E0   ; 
- - - - - - 0x01F74F 07:B73F: E0        .byte $E0   ; 
; 06 
- D 1 - I - 0x01F750 07:B740: FF        .byte $FF   ; end token



_off029_B741_08:
; 00 
- D 1 - I - 0x01F751 07:B741: 01        .byte $01   ; 
- D 1 - I - 0x01F752 07:B742: 00        .byte $00   ; 
- D 1 - I - 0x01F753 07:B743: 00        .byte $00   ; 
- D 1 - I - 0x01F754 07:B744: 90        .byte $90   ; 
- - - - - - 0x01F755 07:B745: 90        .byte $90   ; 
- D 1 - I - 0x01F756 07:B746: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x01F757 07:B747: 00        .byte $00   ; 
- D 1 - I - 0x01F758 07:B748: 00        .byte $00   ; 
- D 1 - I - 0x01F759 07:B749: 00        .byte $00   ; 
- D 1 - I - 0x01F75A 07:B74A: 90        .byte $90   ; 
- - - - - - 0x01F75B 07:B74B: 90        .byte $90   ; 
- D 1 - I - 0x01F75C 07:B74C: 00        .byte $00   ; 
; 02 
- - - - - - 0x01F75D 07:B74D: E0        .byte $E0   ; 
- - - - - - 0x01F75E 07:B74E: E0        .byte $E0   ; 
- - - - - - 0x01F75F 07:B74F: E0        .byte $E0   ; 
- - - - - - 0x01F760 07:B750: E0        .byte $E0   ; 
- - - - - - 0x01F761 07:B751: E0        .byte $E0   ; 
- - - - - - 0x01F762 07:B752: E0        .byte $E0   ; 
; 03 
- - - - - - 0x01F763 07:B753: E0        .byte $E0   ; 
- - - - - - 0x01F764 07:B754: E0        .byte $E0   ; 
- - - - - - 0x01F765 07:B755: E0        .byte $E0   ; 
- - - - - - 0x01F766 07:B756: E0        .byte $E0   ; 
- - - - - - 0x01F767 07:B757: E0        .byte $E0   ; 
- - - - - - 0x01F768 07:B758: E0        .byte $E0   ; 
; 04 
- - - - - - 0x01F769 07:B759: FF        .byte $FF   ; end token



_off029_B75A_09:
; 00 
- D 1 - I - 0x01F76A 07:B75A: 01        .byte $01   ; 
- D 1 - I - 0x01F76B 07:B75B: 00        .byte $00   ; 
- D 1 - I - 0x01F76C 07:B75C: 00        .byte $00   ; 
- D 1 - I - 0x01F76D 07:B75D: 90        .byte $90   ; 
- D 1 - I - 0x01F76E 07:B75E: 90        .byte $90   ; 
- D 1 - I - 0x01F76F 07:B75F: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x01F770 07:B760: FF        .byte $FF   ; end token



_off029_B761_0A:
; 00 
- D 1 - I - 0x01F771 07:B761: 01        .byte $01   ; 
- D 1 - I - 0x01F772 07:B762: 00        .byte $00   ; 
- D 1 - I - 0x01F773 07:B763: 00        .byte $00   ; 
- D 1 - I - 0x01F774 07:B764: 70        .byte $70   ; 
- D 1 - I - 0x01F775 07:B765: 70        .byte $70   ; 
- D 1 - I - 0x01F776 07:B766: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x01F777 07:B767: 00        .byte $00   ; 
- D 1 - I - 0x01F778 07:B768: 00        .byte $00   ; 
- D 1 - I - 0x01F779 07:B769: 00        .byte $00   ; 
- D 1 - I - 0x01F77A 07:B76A: 70        .byte $70   ; 
- - - - - - 0x01F77B 07:B76B: 70        .byte $70   ; 
- D 1 - I - 0x01F77C 07:B76C: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x01F77D 07:B76D: 00        .byte $00   ; 
- D 1 - I - 0x01F77E 07:B76E: 00        .byte $00   ; 
- D 1 - I - 0x01F77F 07:B76F: 00        .byte $00   ; 
- D 1 - I - 0x01F780 07:B770: 70        .byte $70   ; 
- - - - - - 0x01F781 07:B771: 70        .byte $70   ; 
- D 1 - I - 0x01F782 07:B772: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x01F783 07:B773: E0        .byte $E0   ; 
- - - - - - 0x01F784 07:B774: E0        .byte $E0   ; 
- - - - - - 0x01F785 07:B775: E0        .byte $E0   ; 
- - - - - - 0x01F786 07:B776: E0        .byte $E0   ; 
- - - - - - 0x01F787 07:B777: E0        .byte $E0   ; 
- - - - - - 0x01F788 07:B778: E0        .byte $E0   ; 
; 04 
- D 1 - I - 0x01F789 07:B779: 02        .byte $02   ; 
- D 1 - I - 0x01F78A 07:B77A: 00        .byte $00   ; 
- D 1 - I - 0x01F78B 07:B77B: 00        .byte $00   ; 
- D 1 - I - 0x01F78C 07:B77C: 70        .byte $70   ; 
- D 1 - I - 0x01F78D 07:B77D: 70        .byte $70   ; 
- D 1 - I - 0x01F78E 07:B77E: 00        .byte $00   ; 
; 05 
- D 1 - I - 0x01F78F 07:B77F: 01        .byte $01   ; 
- D 1 - I - 0x01F790 07:B780: 00        .byte $00   ; 
- D 1 - I - 0x01F791 07:B781: 00        .byte $00   ; 
- D 1 - I - 0x01F792 07:B782: 90        .byte $90   ; 
- - - - - - 0x01F793 07:B783: 90        .byte $90   ; 
- D 1 - I - 0x01F794 07:B784: 00        .byte $00   ; 
; 06 
- D 1 - I - 0x01F795 07:B785: 01        .byte $01   ; 
- - - - - - 0x01F796 07:B786: 00        .byte $00   ; 
- - - - - - 0x01F797 07:B787: 00        .byte $00   ; 
- - - - - - 0x01F798 07:B788: 90        .byte $90   ; 
- - - - - - 0x01F799 07:B789: 90        .byte $90   ; 
- - - - - - 0x01F79A 07:B78A: 00        .byte $00   ; 
; 07 
- - - - - - 0x01F79B 07:B78B: FF        .byte $FF   ; end token



_off029_B78C_0B:
; 00 
- D 1 - I - 0x01F79C 07:B78C: 01        .byte $01   ; 
- D 1 - I - 0x01F79D 07:B78D: 01        .byte $01   ; 
- D 1 - I - 0x01F79E 07:B78E: 01        .byte $01   ; 
- D 1 - I - 0x01F79F 07:B78F: 70        .byte $70   ; 
- - - - - - 0x01F7A0 07:B790: 70        .byte $70   ; 
- D 1 - I - 0x01F7A1 07:B791: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x01F7A2 07:B792: 01        .byte $01   ; 
- D 1 - I - 0x01F7A3 07:B793: 02        .byte $02   ; 
- D 1 - I - 0x01F7A4 07:B794: 01        .byte $01   ; 
- D 1 - I - 0x01F7A5 07:B795: 70        .byte $70   ; 
- - - - - - 0x01F7A6 07:B796: 70        .byte $70   ; 
- D 1 - I - 0x01F7A7 07:B797: 02        .byte $02   ; 
; 02 
- D 1 - I - 0x01F7A8 07:B798: FF        .byte $FF   ; end token



_off029_B799_0D:
; 00 
- D 1 - I - 0x01F7A9 07:B799: 02        .byte $02   ; 
- D 1 - I - 0x01F7AA 07:B79A: 00        .byte $00   ; 
- D 1 - I - 0x01F7AB 07:B79B: 00        .byte $00   ; 
- D 1 - I - 0x01F7AC 07:B79C: B0        .byte $B0   ; 
- - - - - - 0x01F7AD 07:B79D: B0        .byte $B0   ; 
- D 1 - I - 0x01F7AE 07:B79E: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x01F7AF 07:B79F: 02        .byte $02   ; 
- D 1 - I - 0x01F7B0 07:B7A0: 00        .byte $00   ; 
- D 1 - I - 0x01F7B1 07:B7A1: 01        .byte $01   ; 
- D 1 - I - 0x01F7B2 07:B7A2: B0        .byte $B0   ; 
- - - - - - 0x01F7B3 07:B7A3: B0        .byte $B0   ; 
- D 1 - I - 0x01F7B4 07:B7A4: 00        .byte $00   ; 
; 02 
- D 1 - I - 0x01F7B5 07:B7A5: 02        .byte $02   ; 
- D 1 - I - 0x01F7B6 07:B7A6: 00        .byte $00   ; 
- D 1 - I - 0x01F7B7 07:B7A7: 00        .byte $00   ; 
- D 1 - I - 0x01F7B8 07:B7A8: A0        .byte $A0   ; 
- - - - - - 0x01F7B9 07:B7A9: A0        .byte $A0   ; 
- D 1 - I - 0x01F7BA 07:B7AA: 00        .byte $00   ; 
; 03 
- D 1 - I - 0x01F7BB 07:B7AB: FF        .byte $FF   ; end token



_off029_B7AC_0C:
; 00 
- D 1 - I - 0x01F7BC 07:B7AC: 01        .byte $01   ; 
- D 1 - I - 0x01F7BD 07:B7AD: 01        .byte $01   ; 
- D 1 - I - 0x01F7BE 07:B7AE: 01        .byte $01   ; 
- D 1 - I - 0x01F7BF 07:B7AF: A0        .byte $A0   ; 
- - - - - - 0x01F7C0 07:B7B0: A0        .byte $A0   ; 
- D 1 - I - 0x01F7C1 07:B7B1: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x01F7C2 07:B7B2: E0        .byte $E0   ; 
- - - - - - 0x01F7C3 07:B7B3: E0        .byte $E0   ; 
- - - - - - 0x01F7C4 07:B7B4: E0        .byte $E0   ; 
- - - - - - 0x01F7C5 07:B7B5: E0        .byte $E0   ; 
- - - - - - 0x01F7C6 07:B7B6: E0        .byte $E0   ; 
- - - - - - 0x01F7C7 07:B7B7: E0        .byte $E0   ; 
; 02 
- D 1 - I - 0x01F7C8 07:B7B8: FF        .byte $FF   ; end token



_off029_B7B9_0E:
; 00 
- D 1 - I - 0x01F7C9 07:B7B9: 00        .byte $00   ; 
- D 1 - I - 0x01F7CA 07:B7BA: 00        .byte $00   ; 
- D 1 - I - 0x01F7CB 07:B7BB: 00        .byte $00   ; 
- D 1 - I - 0x01F7CC 07:B7BC: 80        .byte $80   ; 
- - - - - - 0x01F7CD 07:B7BD: 80        .byte $80   ; 
- D 1 - I - 0x01F7CE 07:B7BE: 00        .byte $00   ; 
; 01 
- D 1 - I - 0x01F7CF 07:B7BF: E0        .byte $E0   ; 
- - - - - - 0x01F7D0 07:B7C0: E0        .byte $E0   ; 
- - - - - - 0x01F7D1 07:B7C1: E0        .byte $E0   ; 
- - - - - - 0x01F7D2 07:B7C2: E0        .byte $E0   ; 
- - - - - - 0x01F7D3 07:B7C3: E0        .byte $E0   ; 
- - - - - - 0x01F7D4 07:B7C4: E0        .byte $E0   ; 
; 02 
- D 1 - I - 0x01F7D5 07:B7C5: FF        .byte $FF   ; end token



tbl_B7C6:
- D 1 - - - 0x01F7D6 07:B7C6: E4 B7     .word _off027_B7E4_00
- D 1 - - - 0x01F7D8 07:B7C8: EC B7     .word _off027_B7EC_01
- D 1 - - - 0x01F7DA 07:B7CA: F8 B7     .word _off027_B7F8_02
- D 1 - - - 0x01F7DC 07:B7CC: 02 B8     .word _off027_B802_03
- D 1 - - - 0x01F7DE 07:B7CE: 0C B8     .word _off027_B80C_04
- D 1 - - - 0x01F7E0 07:B7D0: 12 B8     .word _off027_B812_05
- D 1 - - - 0x01F7E2 07:B7D2: 1A B8     .word _off027_B81A_06
- D 1 - - - 0x01F7E4 07:B7D4: 20 B8     .word _off027_B820_07
- D 1 - - - 0x01F7E6 07:B7D6: 2E B8     .word _off027_B82E_08
- D 1 - - - 0x01F7E8 07:B7D8: 38 B8     .word _off027_B838_09
- D 1 - - - 0x01F7EA 07:B7DA: 3C B8     .word _off027_B83C_0A
- D 1 - - - 0x01F7EC 07:B7DC: 4A B8     .word _off027_B84A_0B
- D 1 - - - 0x01F7EE 07:B7DE: 50 B8     .word _off027_B850_0C
- D 1 - - - 0x01F7F0 07:B7E0: 56 B8     .word _off027_B856_0D
- D 1 - - - 0x01F7F2 07:B7E2: 5E B8     .word _off027_B85E_0E



_off027_B7E4_00:
- D 1 - I - 0x01F7F4 07:B7E4: 7F B8     .word _off051_B87F_00_00
- D 1 - I - 0x01F7F6 07:B7E6: 81 B8     .word _off051_B881_00_01
- D 1 - I - 0x01F7F8 07:B7E8: 89 B8     .word _off051_B889_00_02
- D 1 - I - 0x01F7FA 07:B7EA: 8D B8     .word _off051_B88D_00_03



_off027_B7EC_01:
- D 1 - I - 0x01F7FC 07:B7EC: 0F B9     .word _off051_B90F_01_00
- D 1 - I - 0x01F7FE 07:B7EE: 15 B9     .word _off051_B915_01_01
- D 1 - I - 0x01F800 07:B7F0: 1B B9     .word _off051_B91B_01_02
- D 1 - I - 0x01F802 07:B7F2: 1B B9     .word _off051_B91B_01_03
- D 1 - I - 0x01F804 07:B7F4: 15 B9     .word _off051_B915_01_04
- D 1 - I - 0x01F806 07:B7F6: 0F B9     .word _off051_B90F_01_05



_off027_B7F8_02:
- D 1 - I - 0x01F808 07:B7F8: 0E BA     .word _off051_BA0E_02_00
- D 1 - I - 0x01F80A 07:B7FA: 12 BA     .word _off051_BA12_02_01
- D 1 - I - 0x01F80C 07:B7FC: 14 BA     .word _off051_BA14_02_02
- D 1 - I - 0x01F80E 07:B7FE: 18 BA     .word _off051_BA18_02_03
- D 1 - I - 0x01F810 07:B800: 1E BA     .word _off051_BA1E_02_04



_off027_B802_03:
- D 1 - I - 0x01F812 07:B802: 6A BA     .word _off051_BA6A_03_00
- D 1 - I - 0x01F814 07:B804: 70 BA     .word _off051_BA70_03_01
- D 1 - I - 0x01F816 07:B806: 74 BA     .word _off051_BA74_03_02
- D 1 - I - 0x01F818 07:B808: 78 BA     .word _off051_BA78_03_03
- D 1 - I - 0x01F81A 07:B80A: 7C BA     .word _off051_BA7C_03_04



_off027_B80C_04:
- D 1 - I - 0x01F81C 07:B80C: 06 BB     .word _off051_BB06_04_00
- D 1 - I - 0x01F81E 07:B80E: 0C BB     .word _off051_BB0C_04_01
- D 1 - I - 0x01F820 07:B810: 12 BB     .word _off051_BB12_04_02



_off027_B812_05:
- D 1 - I - 0x01F822 07:B812: ED BB     .word _off051_BBED_05_00
- D 1 - I - 0x01F824 07:B814: EF BB     .word _off051_BBEF_05_01
- D 1 - I - 0x01F826 07:B816: F1 BB     .word _off051_BBF1_05_02
- D 1 - I - 0x01F828 07:B818: F5 BB     .word _off051_BBF5_05_03



_off027_B81A_06:
- D 1 - I - 0x01F82A 07:B81A: 46 BC     .word _off051_BC46_06_00
- D 1 - I - 0x01F82C 07:B81C: 4A BC     .word _off051_BC4A_06_01
- D 1 - I - 0x01F82E 07:B81E: 4C BC     .word _off051_BC4C_06_02



_off027_B820_07:
- D 1 - I - 0x01F830 07:B820: 69 BC     .word _off051_BC69_07_00
- D 1 - I - 0x01F832 07:B822: 6D BC     .word _off051_BC6D_07_01
- D 1 - I - 0x01F834 07:B824: 6F BC     .word _off051_BC6F_07_02
- D 1 - I - 0x01F836 07:B826: 71 BC     .word _off051_BC71_07_03
- D 1 - I - 0x01F838 07:B828: 73 BC     .word _off051_BC73_07_04
- D 1 - I - 0x01F83A 07:B82A: 77 BC     .word _off051_BC77_07_05
- D 1 - I - 0x01F83C 07:B82C: 7B BC     .word _off051_BC7B_07_06



_off027_B82E_08:
- D 1 - I - 0x01F83E 07:B82E: D9 BC     .word _off051_BCD9_08_00
- D 1 - I - 0x01F840 07:B830: DD BC     .word _off051_BCDD_08_01
- D 1 - I - 0x01F842 07:B832: DF BC     .word _off051_BCDF_08_02
- D 1 - I - 0x01F844 07:B834: E3 BC     .word _off051_BCE3_08_03
- D 1 - I - 0x01F846 07:B836: E5 BC     .word _off051_BCE5_08_04



_off027_B838_09:
- D 1 - I - 0x01F848 07:B838: 4F BD     .word _off051_BD4F_09_00
- D 1 - I - 0x01F84A 07:B83A: 53 BD     .word _off051_BD53_09_01



_off027_B83C_0A:
- D 1 - I - 0x01F84C 07:B83C: A0 BD     .word _off051_BDA0_0A_00
- D 1 - I - 0x01F84E 07:B83E: A4 BD     .word _off051_BDA4_0A_01
- D 1 - I - 0x01F850 07:B840: A6 BD     .word _off051_BDA6_0A_02
- D 1 - I - 0x01F852 07:B842: A8 BD     .word _off051_BDA8_0A_03
- D 1 - I - 0x01F854 07:B844: AC BD     .word _off051_BDAC_0A_04
- D 1 - I - 0x01F856 07:B846: B2 BD     .word _off051_BDB2_0A_05
- D 1 - I - 0x01F858 07:B848: B6 BD     .word _off051_BDB6_0A_06



_off027_B84A_0B:
- D 1 - I - 0x01F85A 07:B84A: 3A BE     .word _off051_BE3A_0B_00
- D 1 - I - 0x01F85C 07:B84C: 3E BE     .word _off051_BE3E_0B_01
- D 1 - I - 0x01F85E 07:B84E: 42 BE     .word _off051_BE42_0B_02



_off027_B850_0C:
- D 1 - I - 0x01F860 07:B850: 7F BE     .word _off051_BE7F_0C_00
- D 1 - I - 0x01F862 07:B852: 83 BE     .word _off051_BE83_0C_01
- D 1 - I - 0x01F864 07:B854: 87 BE     .word _off051_BE87_0C_02



_off027_B856_0D:
- D 1 - I - 0x01F866 07:B856: B8 BE     .word _off051_BEB8_0D_00
- D 1 - I - 0x01F868 07:B858: BE BE     .word _off051_BEBE_0D_01
- D 1 - I - 0x01F86A 07:B85A: C4 BE     .word _off051_BEC4_0D_02
- D 1 - I - 0x01F86C 07:B85C: CA BE     .word _off051_BECA_0D_03



_off027_B85E_0E:
- D 1 - I - 0x01F86E 07:B85E: 8D BF     .word _off051_BF8D_0E_00
- D 1 - I - 0x01F870 07:B860: 93 BF     .word _off051_BF93_0E_01
- D 1 - I - 0x01F872 07:B862: 97 BF     .word _off051_BF97_0E_02



_off014_0x01F874_00:
; 
- D 1 - I - 0x01F874 07:B864: 88        .byte $88   ; 
- - - - - - 0x01F875 07:B865: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01F877 07:B867: 0A        .byte $0A   ; 
- D 1 - I - 0x01F878 07:B868: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01F87A 07:B86A: CA        .byte $CA   ; 
- D 1 - I - 0x01F87B 07:B86B: 60 00     .word $0060 ; 
; 
- D 1 - I - 0x01F87D 07:B86D: 4C        .byte $4C   ; 
- D 1 - I - 0x01F87E 07:B86E: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01F880 07:B870: FF        .byte $FF   ; end token



_off014_0x01F881_01:
; 
- D 1 - I - 0x01F881 07:B871: 4C        .byte $4C   ; 
- D 1 - I - 0x01F882 07:B872: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01F884 07:B874: C8        .byte $C8   ; 
- D 1 - I - 0x01F885 07:B875: 60 00     .word $0060 ; 
; 
- D 1 - I - 0x01F887 07:B877: FF        .byte $FF   ; end token



_off014_0x01F888_02:
; 
- D 1 - I - 0x01F888 07:B878: 0C        .byte $0C   ; 
- - - - - - 0x01F889 07:B879: 60 00     .word $0060 ; 
; 
- D 1 - I - 0x01F88B 07:B87B: 88        .byte $88   ; 
- D 1 - I - 0x01F88C 07:B87C: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01F88E 07:B87E: FF        .byte $FF   ; end token



_off051_B87F_00_00:
- D 1 - I - 0x01F88F 07:B87F: 8F B8     .word off_B88F_00_00_00



_off051_B881_00_01:
- D 1 - I - 0x01F891 07:B881: 9C B8     .word off_B89C_00_01_00
- D 1 - I - 0x01F893 07:B883: AC B8     .word off_B8AC_00_01_01
- D 1 - I - 0x01F895 07:B885: CB B8     .word off_B8CB_00_01_02
- D 1 - I - 0x01F897 07:B887: DB B8     .word off_B8DB_00_01_03



_off051_B889_00_02:
- D 1 - I - 0x01F899 07:B889: EE B8     .word off_B8EE_00_02_00
- D 1 - I - 0x01F89B 07:B88B: 04 B9     .word off_B904_00_02_01



_off051_B88D_00_03:
- D 1 - I - 0x01F89D 07:B88D: 08 B9     .word off_B908_00_03_00



off_B88F_00_00_00:
; 
- D 1 - I - 0x01F89F 07:B88F: 0C        .byte $0C   ; 
- D 1 - I - 0x01F8A0 07:B890: 50 01     .word $0150 ; 
; 
- D 1 - I - 0x01F8A2 07:B892: 88        .byte $88   ; 
- D 1 - I - 0x01F8A3 07:B893: 90 01     .word $0190 ; 
; 
- D 1 - I - 0x01F8A5 07:B895: C8        .byte $C8   ; 
- D 1 - I - 0x01F8A6 07:B896: F0 01     .word $01F0 ; 
; 
- D 1 - I - 0x01F8A8 07:B898: 4C        .byte $4C   ; 
- D 1 - I - 0x01F8A9 07:B899: 30 02     .word $0230 ; 
; 
- D 1 - I - 0x01F8AB 07:B89B: FF        .byte $FF   ; end token



off_B89C_00_01_00:
; 
- D 1 - I - 0x01F8AC 07:B89C: 4B        .byte $4B   ; 
- D 1 - I - 0x01F8AD 07:B89D: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01F8AF 07:B89F: C7        .byte $C7   ; 
- - - - - - 0x01F8B0 07:B8A0: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01F8B2 07:B8A2: 07        .byte $07   ; 
- D 1 - I - 0x01F8B3 07:B8A3: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01F8B5 07:B8A5: 85        .byte $85   ; 
- D 1 - I - 0x01F8B6 07:B8A6: 60 00     .word $0060 ; 
; 
- D 1 - I - 0x01F8B8 07:B8A8: 45        .byte $45   ; 
- D 1 - I - 0x01F8B9 07:B8A9: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01F8BB 07:B8AB: FF        .byte $FF   ; end token



off_B8AC_00_01_01:
; 
- D 1 - I - 0x01F8BC 07:B8AC: C1        .byte $C1   ; 
- D 1 - I - 0x01F8BD 07:B8AD: B0 40     .word $40B0 ; 
; 
- D 1 - I - 0x01F8BF 07:B8AF: 01        .byte $01   ; 
- D 1 - I - 0x01F8C0 07:B8B0: B0 20     .word $20B0 ; 
; 
- D 1 - I - 0x01F8C2 07:B8B2: 81        .byte $81   ; 
- D 1 - I - 0x01F8C3 07:B8B3: 70 60     .word $6070 ; 
; 
- D 1 - I - 0x01F8C5 07:B8B5: 01        .byte $01   ; 
- D 1 - I - 0x01F8C6 07:B8B6: 20 30     .word $3020 ; 
; 
- D 1 - I - 0x01F8C8 07:B8B8: 80        .byte $80   ; 
- D 1 - I - 0x01F8C9 07:B8B9: D0 70     .word $70D0 ; 
; 
- D 1 - I - 0x01F8CB 07:B8BB: 40        .byte $40   ; 
- D 1 - I - 0x01F8CC 07:B8BC: D0 C0     .word $C0D0 ; 
; 
- D 1 - I - 0x01F8CE 07:B8BE: C0        .byte $C0   ; 
- D 1 - I - 0x01F8CF 07:B8BF: 90 80     .word $8090 ; 
; 
- D 1 - I - 0x01F8D1 07:B8C1: 40        .byte $40   ; 
- D 1 - I - 0x01F8D2 07:B8C2: 50 C0     .word $C050 ; 
; 
- D 1 - I - 0x01F8D4 07:B8C4: C0        .byte $C0   ; 
- D 1 - I - 0x01F8D5 07:B8C5: 30 A0     .word $A030 ; 
; 
- D 1 - I - 0x01F8D7 07:B8C7: 40        .byte $40   ; 
- D 1 - I - 0x01F8D8 07:B8C8: 30 80     .word $8030 ; 
; 
- D 1 - I - 0x01F8DA 07:B8CA: FF        .byte $FF   ; end token



off_B8CB_00_01_02:
; 
- D 1 - I - 0x01F8DB 07:B8CB: 49        .byte $49   ; 
- D 1 - I - 0x01F8DC 07:B8CC: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01F8DE 07:B8CE: C5        .byte $C5   ; 
- D 1 - I - 0x01F8DF 07:B8CF: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01F8E1 07:B8D1: 05        .byte $05   ; 
- D 1 - I - 0x01F8E2 07:B8D2: 60 00     .word $0060 ; 
; 
- D 1 - I - 0x01F8E4 07:B8D4: 0A        .byte $0A   ; 
- D 1 - I - 0x01F8E5 07:B8D5: F0 00     .word $00F0 ; 
; 
- D 1 - I - 0x01F8E7 07:B8D7: 85        .byte $85   ; 
- D 1 - I - 0x01F8E8 07:B8D8: 40 01     .word $0140 ; 
; 
- D 1 - I - 0x01F8EA 07:B8DA: FF        .byte $FF   ; end token



off_B8DB_00_01_03:
; 
- D 1 - I - 0x01F8EB 07:B8DB: CB        .byte $CB   ; 
- D 1 - I - 0x01F8EC 07:B8DC: 20 00     .word $0020 ; 
; 
- D 1 - I - 0x01F8EE 07:B8DE: 4B        .byte $4B   ; 
- D 1 - I - 0x01F8EF 07:B8DF: C0 00     .word $00C0 ; 
; 
- D 1 - I - 0x01F8F1 07:B8E1: C7        .byte $C7   ; 
- D 1 - I - 0x01F8F2 07:B8E2: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01F8F4 07:B8E4: 89        .byte $89   ; 
- D 1 - I - 0x01F8F5 07:B8E5: E0 01     .word $01E0 ; 
; 
- D 1 - I - 0x01F8F7 07:B8E7: 4B        .byte $4B   ; 
- D 1 - I - 0x01F8F8 07:B8E8: 60 01     .word $0160 ; 
; 
- D 1 - I - 0x01F8FA 07:B8EA: C7        .byte $C7   ; 
- - - - - - 0x01F8FB 07:B8EB: 20 01     .word $0120 ; 
; 
- D 1 - I - 0x01F8FD 07:B8ED: FF        .byte $FF   ; end token



off_B8EE_00_02_00:
; 
- D 1 - I - 0x01F8FE 07:B8EE: 05        .byte $05   ; 
- - - - - - 0x01F8FF 07:B8EF: 60 00     .word $0060 ; 
; 
- D 1 - I - 0x01F901 07:B8F1: 0B        .byte $0B   ; 
- D 1 - I - 0x01F902 07:B8F2: C0 00     .word $00C0 ; 
; 
- D 1 - I - 0x01F904 07:B8F4: 87        .byte $87   ; 
- D 1 - I - 0x01F905 07:B8F5: 00 01     .word $0100 ; 
; 
- D 1 - I - 0x01F907 07:B8F7: C8        .byte $C8   ; 
- D 1 - I - 0x01F908 07:B8F8: B0 01     .word $01B0 ; 
; 
- D 1 - I - 0x01F90A 07:B8FA: 4B        .byte $4B   ; 
- D 1 - I - 0x01F90B 07:B8FB: E0 01     .word $01E0 ; 
; 
- D 1 - I - 0x01F90D 07:B8FD: 0B        .byte $0B   ; 
- D 1 - I - 0x01F90E 07:B8FE: 00 04     .word $0400 ; 
; 
- D 1 - I - 0x01F910 07:B900: 89        .byte $89   ; 
- D 1 - I - 0x01F911 07:B901: 20 04     .word $0420 ; 
; 
- D 1 - I - 0x01F913 07:B903: FF        .byte $FF   ; end token



off_B904_00_02_01:
; 
- D 1 - I - 0x01F914 07:B904: 8A        .byte $8A   ; 
- D 1 - I - 0x01F915 07:B905: D0 02     .word $02D0 ; 
; 
- D 1 - I - 0x01F917 07:B907: FF        .byte $FF   ; end token



off_B908_00_03_00:
; 
- D 1 - I - 0x01F918 07:B908: 0B        .byte $0B   ; 
- D 1 - I - 0x01F919 07:B909: 00 01     .word $0100 ; 
; 
- D 1 - I - 0x01F91B 07:B90B: 89        .byte $89   ; 
- D 1 - I - 0x01F91C 07:B90C: 20 01     .word $0120 ; 
; 
- D 1 - I - 0x01F91E 07:B90E: FF        .byte $FF   ; end token



_off051_B90F_01_00:
_off051_B90F_01_05:
- D 1 - I - 0x01F91F 07:B90F: 21 B9     .word off_B921_01_00_00
- D 1 - I - 0x01F921 07:B911: 6D B9     .word off_B96D_01_00_01
- D 1 - I - 0x01F923 07:B913: 8C B9     .word off_B98C_01_00_02



_off051_B915_01_01:
_off051_B915_01_04:
- D 1 - I - 0x01F925 07:B915: 90 B9     .word off_B990_01_01_00
- D 1 - I - 0x01F927 07:B917: A6 B9     .word off_B9A6_01_01_01
- D 1 - I - 0x01F929 07:B919: D1 B9     .word off_B9D1_01_01_02



_off051_B91B_01_02:
_off051_B91B_01_03:
- D 1 - I - 0x01F92B 07:B91B: D5 B9     .word off_B9D5_01_02_00
- D 1 - I - 0x01F92D 07:B91D: DF B9     .word off_B9DF_01_02_01
- D 1 - I - 0x01F92F 07:B91F: 04 BA     .word off_BA04_01_02_02



off_B921_01_00_00:
; 
- D 1 - I - 0x01F931 07:B921: 02        .byte $02   ; 
- D 1 - I - 0x01F932 07:B922: B0 60     .word $60B0 ; 
; 
- D 1 - I - 0x01F934 07:B924: 82        .byte $82   ; 
- D 1 - I - 0x01F935 07:B925: 50 C0     .word $C050 ; 
; 
- D 1 - I - 0x01F937 07:B927: 42        .byte $42   ; 
- D 1 - I - 0x01F938 07:B928: 50 C0     .word $C050 ; 
; 
- D 1 - I - 0x01F93A 07:B92A: C2        .byte $C2   ; 
- D 1 - I - 0x01F93B 07:B92B: 30 A0     .word $A030 ; 
; 
- D 1 - I - 0x01F93D 07:B92D: 02        .byte $02   ; 
- D 1 - I - 0x01F93E 07:B92E: 30 60     .word $6030 ; 
; 
- D 1 - I - 0x01F940 07:B930: 81        .byte $81   ; 
- D 1 - I - 0x01F941 07:B931: E0 80     .word $80E0 ; 
; 
- D 1 - I - 0x01F943 07:B933: 01        .byte $01   ; 
- D 1 - I - 0x01F944 07:B934: E0 A0     .word $A0E0 ; 
; 
- D 1 - I - 0x01F946 07:B936: 81        .byte $81   ; 
- D 1 - I - 0x01F947 07:B937: C0 C0     .word $C0C0 ; 
; 
- D 1 - I - 0x01F949 07:B939: 01        .byte $01   ; 
- D 1 - I - 0x01F94A 07:B93A: B0 40     .word $40B0 ; 
; 
- D 1 - I - 0x01F94C 07:B93C: 81        .byte $81   ; 
- D 1 - I - 0x01F94D 07:B93D: 70 80     .word $8070 ; 
; 
- D 1 - I - 0x01F94F 07:B93F: 01        .byte $01   ; 
- D 1 - I - 0x01F950 07:B940: 70 A0     .word $A070 ; 
; 
- D 1 - I - 0x01F952 07:B942: 81        .byte $81   ; 
- D 1 - I - 0x01F953 07:B943: 50 C0     .word $C050 ; 
; 
- D 1 - I - 0x01F955 07:B945: 41        .byte $41   ; 
- D 1 - I - 0x01F956 07:B946: 50 C0     .word $C050 ; 
; 
- D 1 - I - 0x01F958 07:B948: C1        .byte $C1   ; 
- D 1 - I - 0x01F959 07:B949: 30 A0     .word $A030 ; 
; 
- D 1 - I - 0x01F95B 07:B94B: 01        .byte $01   ; 
- D 1 - I - 0x01F95C 07:B94C: 30 A0     .word $A030 ; 
; 
- D 1 - I - 0x01F95E 07:B94E: 81        .byte $81   ; 
- D 1 - I - 0x01F95F 07:B94F: 10 C0     .word $C010 ; 
; 
- D 1 - I - 0x01F961 07:B951: 41        .byte $41   ; 
- D 1 - I - 0x01F962 07:B952: 10 C0     .word $C010 ; 
; 
- D 1 - I - 0x01F964 07:B954: C0        .byte $C0   ; 
- D 1 - I - 0x01F965 07:B955: E0 A0     .word $A0E0 ; 
; 
- D 1 - I - 0x01F967 07:B957: 40        .byte $40   ; 
- D 1 - I - 0x01F968 07:B958: D0 C0     .word $C0D0 ; 
; 
- D 1 - I - 0x01F96A 07:B95A: C0        .byte $C0   ; 
- D 1 - I - 0x01F96B 07:B95B: B0 A0     .word $A0B0 ; 
; 
- D 1 - I - 0x01F96D 07:B95D: 00        .byte $00   ; 
- D 1 - I - 0x01F96E 07:B95E: B0 A0     .word $A0B0 ; 
; 
- D 1 - I - 0x01F970 07:B960: 80        .byte $80   ; 
- D 1 - I - 0x01F971 07:B961: 90 C0     .word $C090 ; 
; 
- D 1 - I - 0x01F973 07:B963: 40        .byte $40   ; 
- D 1 - I - 0x01F974 07:B964: 90 C0     .word $C090 ; 
; 
- D 1 - I - 0x01F976 07:B966: C0        .byte $C0   ; 
- D 1 - I - 0x01F977 07:B967: 70 A0     .word $A070 ; 
; 
- D 1 - I - 0x01F979 07:B969: 40        .byte $40   ; 
- D 1 - I - 0x01F97A 07:B96A: 30 60     .word $6030 ; 
; 
- D 1 - I - 0x01F97C 07:B96C: FF        .byte $FF   ; end token



off_B96D_01_00_01:
; 
- D 1 - I - 0x01F97D 07:B96D: CB        .byte $CB   ; 
- D 1 - I - 0x01F97E 07:B96E: 00 01     .word $0100 ; 
; 
- D 1 - I - 0x01F980 07:B970: 0B        .byte $0B   ; 
- D 1 - I - 0x01F981 07:B971: 80 01     .word $0180 ; 
; 
- D 1 - I - 0x01F983 07:B973: 89        .byte $89   ; 
- D 1 - I - 0x01F984 07:B974: A0 01     .word $01A0 ; 
; 
- D 1 - I - 0x01F986 07:B976: 49        .byte $49   ; 
- D 1 - I - 0x01F987 07:B977: C0 01     .word $01C0 ; 
; 
- D 1 - I - 0x01F989 07:B979: C5        .byte $C5   ; 
- D 1 - I - 0x01F98A 07:B97A: 80 01     .word $0180 ; 
; 
- D 1 - I - 0x01F98C 07:B97C: 09        .byte $09   ; 
- D 1 - I - 0x01F98D 07:B97D: 20 00     .word $0020 ; 
; 
- D 1 - I - 0x01F98F 07:B97F: 87        .byte $87   ; 
- - - - - - 0x01F990 07:B980: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01F992 07:B982: 47        .byte $47   ; 
- D 1 - I - 0x01F993 07:B983: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01F995 07:B985: C5        .byte $C5   ; 
- D 1 - I - 0x01F996 07:B986: 20 00     .word $0020 ; 
; 
- D 1 - I - 0x01F998 07:B988: 05        .byte $05   ; 
- D 1 - I - 0x01F999 07:B989: 20 00     .word $0020 ; 
; 
- D 1 - I - 0x01F99B 07:B98B: FF        .byte $FF   ; end token



off_B98C_01_00_02:
; 
- D 1 - I - 0x01F99C 07:B98C: 8B        .byte $8B   ; 
- D 1 - I - 0x01F99D 07:B98D: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01F99F 07:B98F: FF        .byte $FF   ; end token



off_B990_01_01_00:
; 
- D 1 - I - 0x01F9A0 07:B990: C7        .byte $C7   ; 
- - - - - - 0x01F9A1 07:B991: 20 00     .word $0020 ; 
; 
- D 1 - I - 0x01F9A3 07:B993: 4B        .byte $4B   ; 
- D 1 - I - 0x01F9A4 07:B994: 60 00     .word $0060 ; 
; 
- D 1 - I - 0x01F9A6 07:B996: 45        .byte $45   ; 
- D 1 - I - 0x01F9A7 07:B997: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01F9A9 07:B999: 0B        .byte $0B   ; 
- D 1 - I - 0x01F9AA 07:B99A: 80 01     .word $0180 ; 
; 
- D 1 - I - 0x01F9AC 07:B99C: 87        .byte $87   ; 
- - - - - - 0x01F9AD 07:B99D: C0 01     .word $01C0 ; 
; 
- D 1 - I - 0x01F9AF 07:B99F: 47        .byte $47   ; 
- D 1 - I - 0x01F9B0 07:B9A0: C0 01     .word $01C0 ; 
; 
- D 1 - I - 0x01F9B2 07:B9A2: C5        .byte $C5   ; 
- D 1 - I - 0x01F9B3 07:B9A3: A0 01     .word $01A0 ; 
; 
- D 1 - I - 0x01F9B5 07:B9A5: FF        .byte $FF   ; end token



off_B9A6_01_01_01:
; 
- D 1 - I - 0x01F9B6 07:B9A6: 00        .byte $00   ; 
- D 1 - I - 0x01F9B7 07:B9A7: 30 20     .word $2030 ; 
; 
- D 1 - I - 0x01F9B9 07:B9A9: C0        .byte $C0   ; 
- D 1 - I - 0x01F9BA 07:B9AA: 30 80     .word $8030 ; 
; 
- D 1 - I - 0x01F9BC 07:B9AC: 40        .byte $40   ; 
- D 1 - I - 0x01F9BD 07:B9AD: 90 E0     .word $E090 ; 
; 
- D 1 - I - 0x01F9BF 07:B9AF: C0        .byte $C0   ; 
- D 1 - I - 0x01F9C0 07:B9B0: 90 20     .word $2090 ; 
; 
- D 1 - I - 0x01F9C2 07:B9B2: 40        .byte $40   ; 
- D 1 - I - 0x01F9C3 07:B9B3: D0 60     .word $60D0 ; 
; 
- D 1 - I - 0x01F9C5 07:B9B5: C0        .byte $C0   ; 
- D 1 - I - 0x01F9C6 07:B9B6: E0 40     .word $40E0 ; 
; 
- D 1 - I - 0x01F9C8 07:B9B8: 41        .byte $41   ; 
- D 1 - I - 0x01F9C9 07:B9B9: 30 80     .word $8030 ; 
; 
- D 1 - I - 0x01F9CB 07:B9BB: C1        .byte $C1   ; 
- D 1 - I - 0x01F9CC 07:B9BC: 30 A0     .word $A030 ; 
; 
- D 1 - I - 0x01F9CE 07:B9BE: 41        .byte $41   ; 
- D 1 - I - 0x01F9CF 07:B9BF: 70 E0     .word $E070 ; 
; 
- D 1 - I - 0x01F9D1 07:B9C1: 81        .byte $81   ; 
- D 1 - I - 0x01F9D2 07:B9C2: 70 E0     .word $E070 ; 
; 
- D 1 - I - 0x01F9D4 07:B9C4: 01        .byte $01   ; 
- D 1 - I - 0x01F9D5 07:B9C5: 90 C0     .word $C090 ; 
; 
- D 1 - I - 0x01F9D7 07:B9C7: 81        .byte $81   ; 
- D 1 - I - 0x01F9D8 07:B9C8: 70 60     .word $6070 ; 
; 
- D 1 - I - 0x01F9DA 07:B9CA: 01        .byte $01   ; 
- D 1 - I - 0x01F9DB 07:B9CB: B0 20     .word $20B0 ; 
; 
- D 1 - I - 0x01F9DD 07:B9CD: C1        .byte $C1   ; 
- D 1 - I - 0x01F9DE 07:B9CE: B0 20     .word $20B0 ; 
; 
- D 1 - I - 0x01F9E0 07:B9D0: FF        .byte $FF   ; end token



off_B9D1_01_01_02:
; 
- D 1 - I - 0x01F9E1 07:B9D1: 89        .byte $89   ; 
- D 1 - I - 0x01F9E2 07:B9D2: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01F9E4 07:B9D4: FF        .byte $FF   ; end token



off_B9D5_01_02_00:
; 
- D 1 - I - 0x01F9E5 07:B9D5: 05        .byte $05   ; 
- D 1 - I - 0x01F9E6 07:B9D6: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01F9E8 07:B9D8: 47        .byte $47   ; 
- D 1 - I - 0x01F9E9 07:B9D9: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01F9EB 07:B9DB: C5        .byte $C5   ; 
- - - - - - 0x01F9EC 07:B9DC: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01F9EE 07:B9DE: FF        .byte $FF   ; end token



off_B9DF_01_02_01:
; 
- D 1 - I - 0x01F9EF 07:B9DF: 00        .byte $00   ; 
- D 1 - I - 0x01F9F0 07:B9E0: 30 20     .word $2030 ; 
; 
- D 1 - I - 0x01F9F2 07:B9E2: C0        .byte $C0   ; 
- D 1 - I - 0x01F9F3 07:B9E3: 80 50     .word $5080 ; 
; 
- D 1 - I - 0x01F9F5 07:B9E5: 40        .byte $40   ; 
- D 1 - I - 0x01F9F6 07:B9E6: C0 90     .word $90C0 ; 
; 
- D 1 - I - 0x01F9F8 07:B9E8: C0        .byte $C0   ; 
- D 1 - I - 0x01F9F9 07:B9E9: E0 20     .word $20E0 ; 
; 
- D 1 - I - 0x01F9FB 07:B9EB: 41        .byte $41   ; 
- D 1 - I - 0x01F9FC 07:B9EC: 30 60     .word $6030 ; 
; 
- D 1 - I - 0x01F9FE 07:B9EE: C1        .byte $C1   ; 
- D 1 - I - 0x01F9FF 07:B9EF: 50 20     .word $2050 ; 
; 
- D 1 - I - 0x01FA01 07:B9F1: 41        .byte $41   ; 
- D 1 - I - 0x01FA02 07:B9F2: 70 40     .word $4070 ; 
; 
- D 1 - I - 0x01FA04 07:B9F4: 81        .byte $81   ; 
- D 1 - I - 0x01FA05 07:B9F5: 70 40     .word $4070 ; 
; 
- D 1 - I - 0x01FA07 07:B9F7: 01        .byte $01   ; 
- D 1 - I - 0x01FA08 07:B9F8: 90 20     .word $2090 ; 
; 
- D 1 - I - 0x01FA0A 07:B9FA: C1        .byte $C1   ; 
- D 1 - I - 0x01FA0B 07:B9FB: 90 20     .word $2090 ; 
; 
- D 1 - I - 0x01FA0D 07:B9FD: 41        .byte $41   ; 
- D 1 - I - 0x01FA0E 07:B9FE: D0 60     .word $60D0 ; 
; 
- D 1 - I - 0x01FA10 07:BA00: 82        .byte $82   ; 
- D 1 - I - 0x01FA11 07:BA01: 70 E0     .word $E070 ; 
; 
- D 1 - I - 0x01FA13 07:BA03: FF        .byte $FF   ; end token



off_BA04_01_02_02:
; 
- D 1 - I - 0x01FA14 07:BA04: 89        .byte $89   ; 
- D 1 - I - 0x01FA15 07:BA05: A0 01     .word $01A0 ; 
; 
- D 1 - I - 0x01FA17 07:BA07: 09        .byte $09   ; 
- D 1 - I - 0x01FA18 07:BA08: 20 01     .word $0120 ; 
; 
- D 1 - I - 0x01FA1A 07:BA0A: 85        .byte $85   ; 
- - - - - - 0x01FA1B 07:BA0B: 60 01     .word $0160 ; 
; 
- D 1 - I - 0x01FA1D 07:BA0D: FF        .byte $FF   ; end token



_off051_BA0E_02_00:
- D 1 - I - 0x01FA1E 07:BA0E: 22 BA     .word off_BA22_02_00_00
- D 1 - I - 0x01FA20 07:BA10: 2C BA     .word off_BA2C_02_00_01



_off051_BA12_02_01:
- D 1 - I - 0x01FA22 07:BA12: 32 BA     .word off_BA32_02_01_00



_off051_BA14_02_02:
- D 1 - I - 0x01FA24 07:BA14: 33 BA     .word off_BA33_02_02_00
- D 1 - I - 0x01FA26 07:BA16: 40 BA     .word off_BA40_02_02_01



_off051_BA18_02_03:
- D 1 - I - 0x01FA28 07:BA18: 47 BA     .word off_BA47_02_03_00
- D 1 - I - 0x01FA2A 07:BA1A: 4B BA     .word off_BA4B_02_03_01
- D 1 - I - 0x01FA2C 07:BA1C: 52 BA     .word off_BA52_02_03_02



_off051_BA1E_02_04:
- D 1 - I - 0x01FA2E 07:BA1E: 56 BA     .word off_BA56_02_04_00
- D 1 - I - 0x01FA30 07:BA20: 5A BA     .word off_BA5A_02_04_01



off_BA22_02_00_00:
; 
- D 1 - I - 0x01FA32 07:BA22: 0B        .byte $0B   ; 
- D 1 - I - 0x01FA33 07:BA23: 80 02     .word $0280 ; 
; 
- D 1 - I - 0x01FA35 07:BA25: 87        .byte $87   ; 
- - - - - - 0x01FA36 07:BA26: C0 02     .word $02C0 ; 
; 
- D 1 - I - 0x01FA38 07:BA28: 47        .byte $47   ; 
- D 1 - I - 0x01FA39 07:BA29: E0 02     .word $02E0 ; 
; 
- D 1 - I - 0x01FA3B 07:BA2B: FF        .byte $FF   ; end token



off_BA2C_02_00_01:
; 
- D 1 - I - 0x01FA3C 07:BA2C: CA        .byte $CA   ; 
- - - - - - 0x01FA3D 07:BA2D: 50 02     .word $0250 ; 
; 
- D 1 - I - 0x01FA3F 07:BA2F: 07        .byte $07   ; 
- D 1 - I - 0x01FA40 07:BA30: 20 00     .word $0020 ; 
off_BA32_02_01_00:
- D 1 - I - 0x01FA42 07:BA32: FF        .byte $FF   ; end token



off_BA33_02_02_00:
; 
- D 1 - I - 0x01FA43 07:BA33: 4B        .byte $4B   ; 
- D 1 - I - 0x01FA44 07:BA34: E0 00     .word $00E0 ; 
; 
- D 1 - I - 0x01FA46 07:BA36: C5        .byte $C5   ; 
- D 1 - I - 0x01FA47 07:BA37: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FA49 07:BA39: 05        .byte $05   ; 
- D 1 - I - 0x01FA4A 07:BA3A: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FA4C 07:BA3C: 05        .byte $05   ; 
- - - - - - 0x01FA4D 07:BA3D: 60 03     .word $0360 ; 
; 
- D 1 - I - 0x01FA4F 07:BA3F: FF        .byte $FF   ; end token



off_BA40_02_02_01:
; 
- D 1 - I - 0x01FA50 07:BA40: 89        .byte $89   ; 
- D 1 - I - 0x01FA51 07:BA41: 00 01     .word $0100 ; 
; 
- D 1 - I - 0x01FA53 07:BA43: 8B        .byte $8B   ; 
- D 1 - I - 0x01FA54 07:BA44: C0 03     .word $03C0 ; 
; 
- D 1 - I - 0x01FA56 07:BA46: FF        .byte $FF   ; end token



off_BA47_02_03_00:
; 
- D 1 - I - 0x01FA57 07:BA47: 45        .byte $45   ; 
- - - - - - 0x01FA58 07:BA48: E0 00     .word $00E0 ; 
; 
- D 1 - I - 0x01FA5A 07:BA4A: FF        .byte $FF   ; end token



off_BA4B_02_03_01:
; 
- D 1 - I - 0x01FA5B 07:BA4B: 05        .byte $05   ; 
- - - - - - 0x01FA5C 07:BA4C: 60 00     .word $0060 ; 
; 
- D 1 - I - 0x01FA5E 07:BA4E: CB        .byte $CB   ; 
- D 1 - I - 0x01FA5F 07:BA4F: 80 03     .word $0380 ; 
; 
- D 1 - I - 0x01FA61 07:BA51: FF        .byte $FF   ; end token



off_BA52_02_03_02:
; 
- D 1 - I - 0x01FA62 07:BA52: 8B        .byte $8B   ; 
- D 1 - I - 0x01FA63 07:BA53: C0 00     .word $00C0 ; 
; 
- D 1 - I - 0x01FA65 07:BA55: FF        .byte $FF   ; end token



off_BA56_02_04_00:
; 
- D 1 - I - 0x01FA66 07:BA56: 09        .byte $09   ; 
- D 1 - I - 0x01FA67 07:BA57: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01FA69 07:BA59: FF        .byte $FF   ; end token



off_BA5A_02_04_01:
; 
- D 1 - I - 0x01FA6A 07:BA5A: 0B        .byte $0B   ; 
- D 1 - I - 0x01FA6B 07:BA5B: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01FA6D 07:BA5D: 87        .byte $87   ; 
- D 1 - I - 0x01FA6E 07:BA5E: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FA70 07:BA60: 8B        .byte $8B   ; 
- D 1 - I - 0x01FA71 07:BA61: E0 00     .word $00E0 ; 
; 
- D 1 - I - 0x01FA73 07:BA63: C7        .byte $C7   ; 
- - - - - - 0x01FA74 07:BA64: 20 01     .word $0120 ; 
; 
- D 1 - I - 0x01FA76 07:BA66: 4B        .byte $4B   ; 
- D 1 - I - 0x01FA77 07:BA67: 60 01     .word $0160 ; 
; 
- D 1 - I - 0x01FA79 07:BA69: FF        .byte $FF   ; end token



_off051_BA6A_03_00:
- D 1 - I - 0x01FA7A 07:BA6A: 9F BA     .word off_BA9F_03_00_00
- D 1 - I - 0x01FA7C 07:BA6C: 86 BA     .word off_BA86_03_00_01
- D 1 - I - 0x01FA7E 07:BA6E: 82 BA     .word off_BA82_03_00_02



_off051_BA70_03_01:
- D 1 - I - 0x01FA80 07:BA70: A9 BA     .word off_BAA9_03_01_00
- D 1 - I - 0x01FA82 07:BA72: BF BA     .word off_BABF_03_01_01



_off051_BA74_03_02:
- D 1 - I - 0x01FA84 07:BA74: C9 BA     .word off_BAC9_03_02_00
- D 1 - I - 0x01FA86 07:BA76: D3 BA     .word off_BAD3_03_02_01



_off051_BA78_03_03:
- D 1 - I - 0x01FA88 07:BA78: D7 BA     .word off_BAD7_03_03_00
- D 1 - I - 0x01FA8A 07:BA7A: E1 BA     .word off_BAE1_03_03_01



_off051_BA7C_03_04:
- D 1 - I - 0x01FA8C 07:BA7C: EB BA     .word off_BAEB_03_04_00
- D 1 - I - 0x01FA8E 07:BA7E: F2 BA     .word off_BAF2_03_04_01
- D 1 - I - 0x01FA90 07:BA80: 02 BB     .word off_BB02_03_04_02



off_BA82_03_00_02:
; 
- D 1 - I - 0x01FA92 07:BA82: C9        .byte $C9   ; 
- D 1 - I - 0x01FA93 07:BA83: 60 01     .word $0160 ; 
; 
- D 1 - I - 0x01FA95 07:BA85: FF        .byte $FF   ; end token



off_BA86_03_00_01:
; 
- D 1 - I - 0x01FA96 07:BA86: 85        .byte $85   ; 
- D 1 - I - 0x01FA97 07:BA87: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FA99 07:BA89: 09        .byte $09   ; 
- D 1 - I - 0x01FA9A 07:BA8A: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01FA9C 07:BA8C: 45        .byte $45   ; 
- D 1 - I - 0x01FA9D 07:BA8D: E0 00     .word $00E0 ; 
; 
- D 1 - I - 0x01FA9F 07:BA8F: 09        .byte $09   ; 
- D 1 - I - 0x01FAA0 07:BA90: 00 01     .word $0100 ; 
; 
- D 1 - I - 0x01FAA2 07:BA92: 87        .byte $87   ; 
- D 1 - I - 0x01FAA3 07:BA93: 20 01     .word $0120 ; 
; 
- D 1 - I - 0x01FAA5 07:BA95: C7        .byte $C7   ; 
- - - - - - 0x01FAA6 07:BA96: A0 01     .word $01A0 ; 
; 
- D 1 - I - 0x01FAA8 07:BA98: 49        .byte $49   ; 
- D 1 - I - 0x01FAA9 07:BA99: C0 01     .word $01C0 ; 
; 
- D 1 - I - 0x01FAAB 07:BA9B: 89        .byte $89   ; 
- D 1 - I - 0x01FAAC 07:BA9C: C0 01     .word $01C0 ; 
; 
- D 1 - I - 0x01FAAE 07:BA9E: FF        .byte $FF   ; end token



off_BA9F_03_00_00:
; 
- D 1 - I - 0x01FAAF 07:BA9F: 05        .byte $05   ; 
- D 1 - I - 0x01FAB0 07:BAA0: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01FAB2 07:BAA2: C5        .byte $C5   ; 
- D 1 - I - 0x01FAB3 07:BAA3: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FAB5 07:BAA5: 48        .byte $48   ; 
- D 1 - I - 0x01FAB6 07:BAA6: B0 00     .word $00B0 ; 
; 
- D 1 - I - 0x01FAB8 07:BAA8: FF        .byte $FF   ; end token



off_BAA9_03_01_00:
; 
- D 1 - I - 0x01FAB9 07:BAA9: C9        .byte $C9   ; 
- D 1 - I - 0x01FABA 07:BAAA: 20 02     .word $0220 ; 
; 
- D 1 - I - 0x01FABC 07:BAAC: 4B        .byte $4B   ; 
- D 1 - I - 0x01FABD 07:BAAD: 40 02     .word $0240 ; 
; 
- D 1 - I - 0x01FABF 07:BAAF: C7        .byte $C7   ; 
- D 1 - I - 0x01FAC0 07:BAB0: 40 03     .word $0340 ; 
; 
- D 1 - I - 0x01FAC2 07:BAB2: 4B        .byte $4B   ; 
- - - - - - 0x01FAC3 07:BAB3: 80 03     .word $0380 ; 
; 
- D 1 - I - 0x01FAC5 07:BAB5: C5        .byte $C5   ; 
- - - - - - 0x01FAC6 07:BAB6: 80 04     .word $0480 ; 
; 
- D 1 - I - 0x01FAC8 07:BAB8: 49        .byte $49   ; 
- D 1 - I - 0x01FAC9 07:BAB9: C0 04     .word $04C0 ; 
; 
- D 1 - I - 0x01FACB 07:BABB: 45        .byte $45   ; 
- D 1 - I - 0x01FACC 07:BABC: A0 03     .word $03A0 ; 
; 
- D 1 - I - 0x01FACE 07:BABE: FF        .byte $FF   ; end token



off_BABF_03_01_01:
; 
- D 1 - I - 0x01FACF 07:BABF: CB        .byte $CB   ; 
- - - - - - 0x01FAD0 07:BAC0: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01FAD2 07:BAC2: 4A        .byte $4A   ; 
- D 1 - I - 0x01FAD3 07:BAC3: D0 01     .word $01D0 ; 
; 
- D 1 - I - 0x01FAD5 07:BAC5: C5        .byte $C5   ; 
- D 1 - I - 0x01FAD6 07:BAC6: 80 01     .word $0180 ; 
; 
- D 1 - I - 0x01FAD8 07:BAC8: FF        .byte $FF   ; end token



off_BAC9_03_02_00:
; 
- D 1 - I - 0x01FAD9 07:BAC9: 07        .byte $07   ; 
- D 1 - I - 0x01FADA 07:BACA: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01FADC 07:BACC: C7        .byte $C7   ; 
- - - - - - 0x01FADD 07:BACD: 60 02     .word $0260 ; 
; 
- D 1 - I - 0x01FADF 07:BACF: 4A        .byte $4A   ; 
- D 1 - I - 0x01FAE0 07:BAD0: 90 02     .word $0290 ; 
; 
- D 1 - I - 0x01FAE2 07:BAD2: FF        .byte $FF   ; end token



off_BAD3_03_02_01:
; 
- D 1 - I - 0x01FAE3 07:BAD3: 87        .byte $87   ; 
- - - - - - 0x01FAE4 07:BAD4: 00 01     .word $0100 ; 
; 
- D 1 - I - 0x01FAE6 07:BAD6: FF        .byte $FF   ; end token



off_BAD7_03_03_00:
; 
- D 1 - I - 0x01FAE7 07:BAD7: 06        .byte $06   ; 
- D 1 - I - 0x01FAE8 07:BAD8: 30 00     .word $0030 ; 
; 
- D 1 - I - 0x01FAEA 07:BADA: C5        .byte $C5   ; 
- D 1 - I - 0x01FAEB 07:BADB: 80 02     .word $0280 ; 
; 
- D 1 - I - 0x01FAED 07:BADD: 49        .byte $49   ; 
- D 1 - I - 0x01FAEE 07:BADE: C0 02     .word $02C0 ; 
; 
- D 1 - I - 0x01FAF0 07:BAE0: FF        .byte $FF   ; end token



off_BAE1_03_03_01:
; 
- D 1 - I - 0x01FAF1 07:BAE1: 8B        .byte $8B   ; 
- - - - - - 0x01FAF2 07:BAE2: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01FAF4 07:BAE4: 4B        .byte $4B   ; 
- D 1 - I - 0x01FAF5 07:BAE5: E0 00     .word $00E0 ; 
; 
- D 1 - I - 0x01FAF7 07:BAE7: C5        .byte $C5   ; 
- - - - - - 0x01FAF8 07:BAE8: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FAFA 07:BAEA: FF        .byte $FF   ; end token



off_BAEB_03_04_00:
; 
- D 1 - I - 0x01FAFB 07:BAEB: 44        .byte $44   ; 
- D 1 - I - 0x01FAFC 07:BAEC: 50 00     .word $0050 ; 
; 
- D 1 - I - 0x01FAFE 07:BAEE: 04        .byte $04   ; 
- D 1 - I - 0x01FAFF 07:BAEF: B0 00     .word $00B0 ; 
; 
- D 1 - I - 0x01FB01 07:BAF1: FF        .byte $FF   ; end token



off_BAF2_03_04_01:
; 
- D 1 - I - 0x01FB02 07:BAF2: 05        .byte $05   ; 
- - - - - - 0x01FB03 07:BAF3: 60 00     .word $0060 ; 
; 
- D 1 - I - 0x01FB05 07:BAF5: C5        .byte $C5   ; 
- D 1 - I - 0x01FB06 07:BAF6: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FB08 07:BAF8: 47        .byte $47   ; 
- - - - - - 0x01FB09 07:BAF9: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01FB0B 07:BAFB: CB        .byte $CB   ; 
- D 1 - I - 0x01FB0C 07:BAFC: 00 01     .word $0100 ; 
; 
- D 1 - I - 0x01FB0E 07:BAFE: 8B        .byte $8B   ; 
- D 1 - I - 0x01FB0F 07:BAFF: 00 02     .word $0200 ; 
; 
- D 1 - I - 0x01FB11 07:BB01: FF        .byte $FF   ; end token



off_BB02_03_04_02:
; 
- D 1 - I - 0x01FB12 07:BB02: 89        .byte $89   ; 
- D 1 - I - 0x01FB13 07:BB03: E0 00     .word $00E0 ; 
; 
- D 1 - I - 0x01FB15 07:BB05: FF        .byte $FF   ; end token



_off051_BB06_04_00:
- D 1 - I - 0x01FB16 07:BB06: 18 BB     .word off_BB18_04_00_00
- D 1 - I - 0x01FB18 07:BB08: 1C BB     .word off_BB1C_04_00_01
- D 1 - I - 0x01FB1A 07:BB0A: 41 BB     .word off_BB41_04_00_02



_off051_BB0C_04_01:
- D 1 - I - 0x01FB1C 07:BB0C: 51 BB     .word off_BB51_04_01_00
- D 1 - I - 0x01FB1E 07:BB0E: 61 BB     .word off_BB61_04_01_01
- D 1 - I - 0x01FB20 07:BB10: 92 BB     .word off_BB92_04_01_02



_off051_BB12_04_02:
- D 1 - I - 0x01FB22 07:BB12: 9C BB     .word off_BB9C_04_02_00
- D 1 - I - 0x01FB24 07:BB14: AC BB     .word off_BBAC_04_02_01
- D 1 - I - 0x01FB26 07:BB16: CB BB     .word off_BBCB_04_02_02



off_BB18_04_00_00:
; 
- D 1 - I - 0x01FB28 07:BB18: 45        .byte $45   ; 
- D 1 - I - 0x01FB29 07:BB19: C0 01     .word $01C0 ; 
; 
- D 1 - I - 0x01FB2B 07:BB1B: FF        .byte $FF   ; end token



off_BB1C_04_00_01:
; 
- D 1 - I - 0x01FB2C 07:BB1C: 00        .byte $00   ; 
- D 1 - I - 0x01FB2D 07:BB1D: 40 30     .word $3040 ; 
; 
- D 1 - I - 0x01FB2F 07:BB1F: 80        .byte $80   ; 
- D 1 - I - 0x01FB30 07:BB20: 70 C0     .word $C070 ; 
; 
- D 1 - I - 0x01FB32 07:BB22: 00        .byte $00   ; 
- D 1 - I - 0x01FB33 07:BB23: C0 70     .word $70C0 ; 
; 
- D 1 - I - 0x01FB35 07:BB25: C0        .byte $C0   ; 
- D 1 - I - 0x01FB36 07:BB26: E0 40     .word $40E0 ; 
; 
- D 1 - I - 0x01FB38 07:BB28: 41        .byte $41   ; 
- D 1 - I - 0x01FB39 07:BB29: 70 C0     .word $C070 ; 
; 
- D 1 - I - 0x01FB3B 07:BB2B: 81        .byte $81   ; 
- D 1 - I - 0x01FB3C 07:BB2C: 70 C0     .word $C070 ; 
; 
- D 1 - I - 0x01FB3E 07:BB2E: 01        .byte $01   ; 
- D 1 - I - 0x01FB3F 07:BB2F: D0 60     .word $60D0 ; 
; 
- D 1 - I - 0x01FB41 07:BB31: C2        .byte $C2   ; 
- D 1 - I - 0x01FB42 07:BB32: 00 30     .word $3000 ; 
; 
- D 1 - I - 0x01FB44 07:BB34: 42        .byte $42   ; 
- D 1 - I - 0x01FB45 07:BB35: 50 80     .word $8050 ; 
; 
- D 1 - I - 0x01FB47 07:BB37: 82        .byte $82   ; 
- D 1 - I - 0x01FB48 07:BB38: 50 80     .word $8050 ; 
; 
- D 1 - I - 0x01FB4A 07:BB3A: 02        .byte $02   ; 
- D 1 - I - 0x01FB4B 07:BB3B: 90 40     .word $4090 ; 
; 
- D 1 - I - 0x01FB4D 07:BB3D: C2        .byte $C2   ; 
- D 1 - I - 0x01FB4E 07:BB3E: B0 60     .word $60B0 ; 
; 
- D 1 - I - 0x01FB50 07:BB40: FF        .byte $FF   ; end token



off_BB41_04_00_02:
; 
- D 1 - I - 0x01FB51 07:BB41: 8B        .byte $8B   ; 
- - - - - - 0x01FB52 07:BB42: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01FB54 07:BB44: 07        .byte $07   ; 
- D 1 - I - 0x01FB55 07:BB45: 20 00     .word $0020 ; 
; 
- D 1 - I - 0x01FB57 07:BB47: 85        .byte $85   ; 
- - - - - - 0x01FB58 07:BB48: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01FB5A 07:BB4A: C5        .byte $C5   ; 
- - - - - - 0x01FB5B 07:BB4B: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FB5D 07:BB4D: 47        .byte $47   ; 
- - - - - - 0x01FB5E 07:BB4E: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01FB60 07:BB50: FF        .byte $FF   ; end token



off_BB51_04_01_00:
; 
- D 1 - I - 0x01FB61 07:BB51: 0A        .byte $0A   ; 
- D 1 - I - 0x01FB62 07:BB52: B0 00     .word $00B0 ; 
; 
- D 1 - I - 0x01FB64 07:BB54: 87        .byte $87   ; 
- - - - - - 0x01FB65 07:BB55: E0 00     .word $00E0 ; 
; 
- D 1 - I - 0x01FB67 07:BB57: 47        .byte $47   ; 
- D 1 - I - 0x01FB68 07:BB58: E0 00     .word $00E0 ; 
; 
- D 1 - I - 0x01FB6A 07:BB5A: C5        .byte $C5   ; 
- - - - - - 0x01FB6B 07:BB5B: C0 00     .word $00C0 ; 
; 
- D 1 - I - 0x01FB6D 07:BB5D: 45        .byte $45   ; 
- D 1 - I - 0x01FB6E 07:BB5E: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FB70 07:BB60: FF        .byte $FF   ; end token



off_BB61_04_01_01:
; 
- D 1 - I - 0x01FB71 07:BB61: 40        .byte $40   ; 
- D 1 - I - 0x01FB72 07:BB62: 30 E0     .word $E030 ; 
; 
- D 1 - I - 0x01FB74 07:BB64: 80        .byte $80   ; 
- - - - - - 0x01FB75 07:BB65: 30 E0     .word $E030 ; 
; 
- D 1 - I - 0x01FB77 07:BB67: 00        .byte $00   ; 
- D 1 - I - 0x01FB78 07:BB68: 60 B0     .word $B060 ; 
; 
- D 1 - I - 0x01FB7A 07:BB6A: 80        .byte $80   ; 
- - - - - - 0x01FB7B 07:BB6B: 60 50     .word $5060 ; 
; 
- D 1 - I - 0x01FB7D 07:BB6D: 00        .byte $00   ; 
- D 1 - I - 0x01FB7E 07:BB6E: 90 20     .word $2090 ; 
; 
- D 1 - I - 0x01FB80 07:BB70: 80        .byte $80   ; 
- - - - - - 0x01FB81 07:BB71: 90 C0     .word $C090 ; 
; 
- D 1 - I - 0x01FB83 07:BB73: 00        .byte $00   ; 
- D 1 - I - 0x01FB84 07:BB74: D0 80     .word $80D0 ; 
; 
- D 1 - I - 0x01FB86 07:BB76: 81        .byte $81   ; 
- - - - - - 0x01FB87 07:BB77: 20 70     .word $7020 ; 
; 
- D 1 - I - 0x01FB89 07:BB79: 01        .byte $01   ; 
- D 1 - I - 0x01FB8A 07:BB7A: 60 30     .word $3060 ; 
; 
- D 1 - I - 0x01FB8C 07:BB7C: 81        .byte $81   ; 
- - - - - - 0x01FB8D 07:BB7D: A0 B0     .word $B0A0 ; 
; 
- D 1 - I - 0x01FB8F 07:BB7F: 01        .byte $01   ; 
- D 1 - I - 0x01FB90 07:BB80: D0 80     .word $80D0 ; 
; 
- D 1 - I - 0x01FB92 07:BB82: C2        .byte $C2   ; 
- - - - - - 0x01FB93 07:BB83: 20 70     .word $7020 ; 
; 
- D 1 - I - 0x01FB95 07:BB85: 42        .byte $42   ; 
- D 1 - I - 0x01FB96 07:BB86: 60 B0     .word $B060 ; 
; 
- D 1 - I - 0x01FB98 07:BB88: C2        .byte $C2   ; 
- - - - - - 0x01FB99 07:BB89: 60 30     .word $3060 ; 
; 
- D 1 - I - 0x01FB9B 07:BB8B: 42        .byte $42   ; 
- D 1 - I - 0x01FB9C 07:BB8C: 90 60     .word $6090 ; 
; 
- D 1 - I - 0x01FB9E 07:BB8E: C2        .byte $C2   ; 
- - - - - - 0x01FB9F 07:BB8F: B0 20     .word $20B0 ; 
; 
- D 1 - I - 0x01FBA1 07:BB91: FF        .byte $FF   ; end token



off_BB92_04_01_02:
; 
- D 1 - I - 0x01FBA2 07:BB92: CB        .byte $CB   ; 
- - - - - - 0x01FBA3 07:BB93: 80 01     .word $0180 ; 
; 
- D 1 - I - 0x01FBA5 07:BB95: 4B        .byte $4B   ; 
- D 1 - I - 0x01FBA6 07:BB96: C0 01     .word $01C0 ; 
; 
- D 1 - I - 0x01FBA8 07:BB98: C7        .byte $C7   ; 
- - - - - - 0x01FBA9 07:BB99: 80 01     .word $0180 ; 
; 
- D 1 - I - 0x01FBAB 07:BB9B: FF        .byte $FF   ; end token



off_BB9C_04_02_00:
; 
- D 1 - I - 0x01FBAC 07:BB9C: 0A        .byte $0A   ; 
- D 1 - I - 0x01FBAD 07:BB9D: 30 00     .word $0030 ; 
; 
- D 1 - I - 0x01FBAF 07:BB9F: 85        .byte $85   ; 
- D 1 - I - 0x01FBB0 07:BBA0: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FBB2 07:BBA2: 05        .byte $05   ; 
- D 1 - I - 0x01FBB3 07:BBA3: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01FBB5 07:BBA5: 09        .byte $09   ; 
- D 1 - I - 0x01FBB6 07:BBA6: C0 00     .word $00C0 ; 
; 
- D 1 - I - 0x01FBB8 07:BBA8: 87        .byte $87   ; 
- - - - - - 0x01FBB9 07:BBA9: E0 00     .word $00E0 ; 
; 
- D 1 - I - 0x01FBBB 07:BBAB: FF        .byte $FF   ; end token



off_BBAC_04_02_01:
; 
- D 1 - I - 0x01FBBC 07:BBAC: 40        .byte $40   ; 
- D 1 - I - 0x01FBBD 07:BBAD: 30 C0     .word $C030 ; 
; 
- D 1 - I - 0x01FBBF 07:BBAF: 80        .byte $80   ; 
- D 1 - I - 0x01FBC0 07:BBB0: 30 C0     .word $C030 ; 
; 
- D 1 - I - 0x01FBC2 07:BBB2: 00        .byte $00   ; 
- D 1 - I - 0x01FBC3 07:BBB3: 90 60     .word $6090 ; 
; 
- D 1 - I - 0x01FBC5 07:BBB5: C0        .byte $C0   ; 
- D 1 - I - 0x01FBC6 07:BBB6: 90 40     .word $4090 ; 
; 
- D 1 - I - 0x01FBC8 07:BBB8: 40        .byte $40   ; 
- D 1 - I - 0x01FBC9 07:BBB9: D0 80     .word $80D0 ; 
; 
- D 1 - I - 0x01FBCB 07:BBBB: 81        .byte $81   ; 
- D 1 - I - 0x01FBCC 07:BBBC: 00 70     .word $7000 ; 
; 
- D 1 - I - 0x01FBCE 07:BBBE: 01        .byte $01   ; 
- D 1 - I - 0x01FBCF 07:BBBF: 30 40     .word $4030 ; 
; 
- D 1 - I - 0x01FBD1 07:BBC1: C1        .byte $C1   ; 
- D 1 - I - 0x01FBD2 07:BBC2: 30 40     .word $4030 ; 
; 
- D 1 - I - 0x01FBD4 07:BBC4: 41        .byte $41   ; 
- D 1 - I - 0x01FBD5 07:BBC5: B0 C0     .word $C0B0 ; 
; 
- D 1 - I - 0x01FBD7 07:BBC7: 81        .byte $81   ; 
- D 1 - I - 0x01FBD8 07:BBC8: B0 A0     .word $A0B0 ; 
; 
- D 1 - I - 0x01FBDA 07:BBCA: FF        .byte $FF   ; end token



off_BBCB_04_02_02:
; 
- D 1 - I - 0x01FBDB 07:BBCB: CA        .byte $CA   ; 
- D 1 - I - 0x01FBDC 07:BBCC: 50 00     .word $0050 ; 
; 
- D 1 - I - 0x01FBDE 07:BBCE: 0A        .byte $0A   ; 
- D 1 - I - 0x01FBDF 07:BBCF: 90 00     .word $0090 ; 
; 
- D 1 - I - 0x01FBE1 07:BBD1: 87        .byte $87   ; 
- D 1 - I - 0x01FBE2 07:BBD2: C0 00     .word $00C0 ; 
; 
- D 1 - I - 0x01FBE4 07:BBD4: 47        .byte $47   ; 
- D 1 - I - 0x01FBE5 07:BBD5: C0 00     .word $00C0 ; 
; 
- D 1 - I - 0x01FBE7 07:BBD7: C5        .byte $C5   ; 
- - - - - - 0x01FBE8 07:BBD8: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01FBEA 07:BBDA: C7        .byte $C7   ; 
- D 1 - I - 0x01FBEB 07:BBDB: E0 00     .word $00E0 ; 
; 
- D 1 - I - 0x01FBED 07:BBDD: 49        .byte $49   ; 
- D 1 - I - 0x01FBEE 07:BBDE: 00 01     .word $0100 ; 
; 
- D 1 - I - 0x01FBF0 07:BBE0: 09        .byte $09   ; 
- D 1 - I - 0x01FBF1 07:BBE1: 60 01     .word $0160 ; 
; 
- D 1 - I - 0x01FBF3 07:BBE3: 85        .byte $85   ; 
- - - - - - 0x01FBF4 07:BBE4: A0 01     .word $01A0 ; 
; 
- D 1 - I - 0x01FBF6 07:BBE6: 0B        .byte $0B   ; 
- D 1 - I - 0x01FBF7 07:BBE7: 80 01     .word $0180 ; 
; 
- D 1 - I - 0x01FBF9 07:BBE9: 89        .byte $89   ; 
- - - - - - 0x01FBFA 07:BBEA: A0 01     .word $01A0 ; 
; 
- D 1 - I - 0x01FBFC 07:BBEC: FF        .byte $FF   ; end token



_off051_BBED_05_00:
- D 1 - I - 0x01FBFD 07:BBED: F9 BB     .word off_BBF9_05_00_00



_off051_BBEF_05_01:
- D 1 - I - 0x01FBFF 07:BBEF: 05 BC     .word off_BC05_05_01_00



_off051_BBF1_05_02:
- D 1 - I - 0x01FC01 07:BBF1: 06 BC     .word off_BC06_05_02_00
- D 1 - I - 0x01FC03 07:BBF3: 25 BC     .word off_BC25_05_02_01



_off051_BBF5_05_03:
- D 1 - I - 0x01FC05 07:BBF5: 3E BC     .word off_BC3E_05_03_00
- D 1 - I - 0x01FC07 07:BBF7: 42 BC     .word off_BC42_05_03_01



off_BBF9_05_00_00:
; 
- D 1 - I - 0x01FC09 07:BBF9: 09        .byte $09   ; 
- D 1 - I - 0x01FC0A 07:BBFA: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01FC0C 07:BBFC: 85        .byte $85   ; 
- D 1 - I - 0x01FC0D 07:BBFD: E0 00     .word $00E0 ; 
; 
- D 1 - I - 0x01FC0F 07:BBFF: C5        .byte $C5   ; 
- D 1 - I - 0x01FC10 07:BC00: 60 01     .word $0160 ; 
; 
- D 1 - I - 0x01FC12 07:BC02: 49        .byte $49   ; 
- - - - - - 0x01FC13 07:BC03: A0 01     .word $01A0 ; 
off_BC05_05_01_00:
- D 1 - I - 0x01FC15 07:BC05: FF        .byte $FF   ; end token



off_BC06_05_02_00:
; 
- D 1 - I - 0x01FC16 07:BC06: 05        .byte $05   ; 
- D 1 - I - 0x01FC17 07:BC07: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01FC19 07:BC09: C5        .byte $C5   ; 
- D 1 - I - 0x01FC1A 07:BC0A: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01FC1C 07:BC0C: 49        .byte $49   ; 
- D 1 - I - 0x01FC1D 07:BC0D: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FC1F 07:BC0F: 09        .byte $09   ; 
- D 1 - I - 0x01FC20 07:BC10: 20 01     .word $0120 ; 
; 
- D 1 - I - 0x01FC22 07:BC12: 87        .byte $87   ; 
- - - - - - 0x01FC23 07:BC13: 40 01     .word $0140 ; 
; 
- D 1 - I - 0x01FC25 07:BC15: C7        .byte $C7   ; 
- - - - - - 0x01FC26 07:BC16: 60 01     .word $0160 ; 
; 
- D 1 - I - 0x01FC28 07:BC18: 49        .byte $49   ; 
- D 1 - I - 0x01FC29 07:BC19: 80 01     .word $0180 ; 
; 
- D 1 - I - 0x01FC2B 07:BC1B: 09        .byte $09   ; 
- D 1 - I - 0x01FC2C 07:BC1C: A0 01     .word $01A0 ; 
; 
- D 1 - I - 0x01FC2E 07:BC1E: 85        .byte $85   ; 
- - - - - - 0x01FC2F 07:BC1F: E0 01     .word $01E0 ; 
; 
- D 1 - I - 0x01FC31 07:BC21: 45        .byte $45   ; 
- D 1 - I - 0x01FC32 07:BC22: E0 01     .word $01E0 ; 
; 
- D 1 - I - 0x01FC34 07:BC24: FF        .byte $FF   ; end token



off_BC25_05_02_01:
; 
- D 1 - I - 0x01FC35 07:BC25: 89        .byte $89   ; 
- D 1 - I - 0x01FC36 07:BC26: C0 01     .word $01C0 ; 
; 
- D 1 - I - 0x01FC38 07:BC28: 09        .byte $09   ; 
- D 1 - I - 0x01FC39 07:BC29: 40 02     .word $0240 ; 
; 
- D 1 - I - 0x01FC3B 07:BC2B: 87        .byte $87   ; 
- D 1 - I - 0x01FC3C 07:BC2C: 60 02     .word $0260 ; 
; 
- D 1 - I - 0x01FC3E 07:BC2E: C9        .byte $C9   ; 
- D 1 - I - 0x01FC3F 07:BC2F: 40 02     .word $0240 ; 
; 
- D 1 - I - 0x01FC41 07:BC31: 4B        .byte $4B   ; 
- D 1 - I - 0x01FC42 07:BC32: 60 02     .word $0260 ; 
; 
- D 1 - I - 0x01FC44 07:BC34: CB        .byte $CB   ; 
- - - - - - 0x01FC45 07:BC35: 80 02     .word $0280 ; 
; 
- D 1 - I - 0x01FC47 07:BC37: C7        .byte $C7   ; 
- D 1 - I - 0x01FC48 07:BC38: E0 02     .word $02E0 ; 
; 
- D 1 - I - 0x01FC4A 07:BC3A: 49        .byte $49   ; 
- D 1 - I - 0x01FC4B 07:BC3B: 00 03     .word $0300 ; 
; 
- D 1 - I - 0x01FC4D 07:BC3D: FF        .byte $FF   ; end token



off_BC3E_05_03_00:
; 
- D 1 - I - 0x01FC4E 07:BC3E: 07        .byte $07   ; 
- D 1 - I - 0x01FC4F 07:BC3F: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01FC51 07:BC41: FF        .byte $FF   ; end token



off_BC42_05_03_01:
; 
- D 1 - I - 0x01FC52 07:BC42: 89        .byte $89   ; 
- D 1 - I - 0x01FC53 07:BC43: E0 03     .word $03E0 ; 
; 
- D 1 - I - 0x01FC55 07:BC45: FF        .byte $FF   ; end token



_off051_BC46_06_00:
- D 1 - I - 0x01FC56 07:BC46: 52 BC     .word off_BC52_06_00_00
- D 1 - I - 0x01FC58 07:BC48: 56 BC     .word off_BC56_06_00_01



_off051_BC4A_06_01:
- D 1 - I - 0x01FC5A 07:BC4A: 59 BC     .word off_BC59_06_01_00



_off051_BC4C_06_02:
- D 1 - I - 0x01FC5C 07:BC4C: 5A BC     .word off_BC5A_06_02_00
- D 1 - I - 0x01FC5E 07:BC4E: 5E BC     .word off_BC5E_06_02_01
- D 1 - I - 0x01FC60 07:BC50: 65 BC     .word off_BC65_06_02_02



off_BC52_06_00_00:
; 
- D 1 - I - 0x01FC62 07:BC52: 45        .byte $45   ; 
- - - - - - 0x01FC63 07:BC53: 00 01     .word $0100 ; 
; 
- D 1 - I - 0x01FC65 07:BC55: FF        .byte $FF   ; end token



off_BC56_06_00_01:
; 
- D 1 - I - 0x01FC66 07:BC56: C9        .byte $C9   ; 
- D 1 - I - 0x01FC67 07:BC57: 80 03     .word $0380 ; 
off_BC59_06_01_00:
- D 1 - I - 0x01FC69 07:BC59: FF        .byte $FF   ; end token



off_BC5A_06_02_00:
; 
- D 1 - I - 0x01FC6A 07:BC5A: 05        .byte $05   ; 
- - - - - - 0x01FC6B 07:BC5B: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FC6D 07:BC5D: FF        .byte $FF   ; end token



off_BC5E_06_02_01:
; 
- D 1 - I - 0x01FC6E 07:BC5E: 07        .byte $07   ; 
- - - - - - 0x01FC6F 07:BC5F: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01FC71 07:BC61: 8B        .byte $8B   ; 
- D 1 - I - 0x01FC72 07:BC62: E0 02     .word $02E0 ; 
; 
- D 1 - I - 0x01FC74 07:BC64: FF        .byte $FF   ; end token



off_BC65_06_02_02:
; 
- D 1 - I - 0x01FC75 07:BC65: 8B        .byte $8B   ; 
- D 1 - I - 0x01FC76 07:BC66: C0 01     .word $01C0 ; 
; 
- D 1 - I - 0x01FC78 07:BC68: FF        .byte $FF   ; end token



_off051_BC69_07_00:
- D 1 - I - 0x01FC79 07:BC69: 7D BC     .word off_BC7D_07_00_00
- D 1 - I - 0x01FC7B 07:BC6B: 81 BC     .word off_BC81_07_00_01



_off051_BC6D_07_01:
- D 1 - I - 0x01FC7D 07:BC6D: 85 BC     .word off_BC85_07_xx_00



_off051_BC6F_07_02:
- D 1 - I - 0x01FC7F 07:BC6F: 85 BC     .word off_BC85_07_xx_00



_off051_BC71_07_03:
- D 1 - I - 0x01FC81 07:BC71: 85 BC     .word off_BC85_07_xx_00



_off051_BC73_07_04:
- D 1 - I - 0x01FC83 07:BC73: 86 BC     .word off_BC86_07_04_00
- D 1 - I - 0x01FC85 07:BC75: 9C BC     .word off_BC9C_07_04_01



_off051_BC77_07_05:
- D 1 - I - 0x01FC87 07:BC77: A0 BC     .word off_BCA0_07_05_00
- D 1 - I - 0x01FC89 07:BC79: AA BC     .word off_BCAA_07_05_01



_off051_BC7B_07_06:
- D 1 - I - 0x01FC8B 07:BC7B: B4 BC     .word off_BCB4_07_06_00



off_BC7D_07_00_00:
; 
- D 1 - I - 0x01FC8D 07:BC7D: 06        .byte $06   ; 
- D 1 - I - 0x01FC8E 07:BC7E: 50 00     .word $0050 ; 
; 
- D 1 - I - 0x01FC90 07:BC80: FF        .byte $FF   ; end token



off_BC81_07_00_01:
; 
- D 1 - I - 0x01FC91 07:BC81: 8B        .byte $8B   ; 
- D 1 - I - 0x01FC92 07:BC82: C0 02     .word $02C0 ; 
; 
- D 1 - I - 0x01FC94 07:BC84: FF        .byte $FF   ; end token



off_BC85_07_xx_00:
; bzk optimize, move pointer to 0x01FC94
; 
- D 1 - I - 0x01FC95 07:BC85: FF        .byte $FF   ; end token



off_BC86_07_04_00:
; 
- D 1 - I - 0x01FC96 07:BC86: 0C        .byte $0C   ; 
- D 1 - I - 0x01FC97 07:BC87: F0 00     .word $00F0 ; 
; 
- D 1 - I - 0x01FC99 07:BC89: 88        .byte $88   ; 
- - - - - - 0x01FC9A 07:BC8A: 30 01     .word $0130 ; 
; 
- D 1 - I - 0x01FC9C 07:BC8C: 0C        .byte $0C   ; 
- D 1 - I - 0x01FC9D 07:BC8D: B0 01     .word $01B0 ; 
; 
- D 1 - I - 0x01FC9F 07:BC8F: 89        .byte $89   ; 
- - - - - - 0x01FCA0 07:BC90: E0 01     .word $01E0 ; 
; 
- D 1 - I - 0x01FCA2 07:BC92: 0A        .byte $0A   ; 
- D 1 - I - 0x01FCA3 07:BC93: B0 02     .word $02B0 ; 
; 
- D 1 - I - 0x01FCA5 07:BC95: 86        .byte $86   ; 
- - - - - - 0x01FCA6 07:BC96: F0 02     .word $02F0 ; 
; 
- D 1 - I - 0x01FCA8 07:BC98: 45        .byte $45   ; 
- D 1 - I - 0x01FCA9 07:BC99: A0 03     .word $03A0 ; 
; 
- D 1 - I - 0x01FCAB 07:BC9B: FF        .byte $FF   ; end token



off_BC9C_07_04_01:
; 
- D 1 - I - 0x01FCAC 07:BC9C: CB        .byte $CB   ; 
- D 1 - I - 0x01FCAD 07:BC9D: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01FCAF 07:BC9F: FF        .byte $FF   ; end token



off_BCA0_07_05_00:
; 
- D 1 - I - 0x01FCB0 07:BCA0: 09        .byte $09   ; 
- D 1 - I - 0x01FCB1 07:BCA1: 60 03     .word $0360 ; 
; 
- D 1 - I - 0x01FCB3 07:BCA3: 86        .byte $86   ; 
- - - - - - 0x01FCB4 07:BCA4: 90 03     .word $0390 ; 
; 
- D 1 - I - 0x01FCB6 07:BCA6: 46        .byte $46   ; 
- D 1 - I - 0x01FCB7 07:BCA7: D0 03     .word $03D0 ; 
; 
- D 1 - I - 0x01FCB9 07:BCA9: FF        .byte $FF   ; end token



off_BCAA_07_05_01:
; 
- D 1 - I - 0x01FCBA 07:BCAA: CB        .byte $CB   ; 
- D 1 - I - 0x01FCBB 07:BCAB: 60 01     .word $0160 ; 
; 
- D 1 - I - 0x01FCBD 07:BCAD: 0A        .byte $0A   ; 
- D 1 - I - 0x01FCBE 07:BCAE: B0 01     .word $01B0 ; 
; 
- D 1 - I - 0x01FCC0 07:BCB0: 87        .byte $87   ; 
- - - - - - 0x01FCC1 07:BCB1: E0 01     .word $01E0 ; 
; 
- D 1 - I - 0x01FCC3 07:BCB3: FF        .byte $FF   ; end token



off_BCB4_07_06_00:
; 
- D 1 - I - 0x01FCC4 07:BCB4: C7        .byte $C7   ; 
- D 1 - I - 0x01FCC5 07:BCB5: 20 00     .word $0020 ; 
; 
- D 1 - I - 0x01FCC7 07:BCB7: 4B        .byte $4B   ; 
- D 1 - I - 0x01FCC8 07:BCB8: 60 00     .word $0060 ; 
; 
- D 1 - I - 0x01FCCA 07:BCBA: C9        .byte $C9   ; 
- - - - - - 0x01FCCB 07:BCBB: 20 01     .word $0120 ; 
; 
- D 1 - I - 0x01FCCD 07:BCBD: 4B        .byte $4B   ; 
- D 1 - I - 0x01FCCE 07:BCBE: 40 01     .word $0140 ; 
; 
- D 1 - I - 0x01FCD0 07:BCC0: 0B        .byte $0B   ; 
- D 1 - I - 0x01FCD1 07:BCC1: C0 01     .word $01C0 ; 
; 
- D 1 - I - 0x01FCD3 07:BCC3: 87        .byte $87   ; 
- D 1 - I - 0x01FCD4 07:BCC4: 00 02     .word $0200 ; 
; 
- D 1 - I - 0x01FCD6 07:BCC6: 0B        .byte $0B   ; 
- D 1 - I - 0x01FCD7 07:BCC7: 60 02     .word $0260 ; 
; 
- D 1 - I - 0x01FCD9 07:BCC9: 88        .byte $88   ; 
- D 1 - I - 0x01FCDA 07:BCCA: 90 02     .word $0290 ; 
; 
- D 1 - I - 0x01FCDC 07:BCCC: C8        .byte $C8   ; 
- - - - - - 0x01FCDD 07:BCCD: B0 02     .word $02B0 ; 
; 
- D 1 - I - 0x01FCDF 07:BCCF: 4B        .byte $4B   ; 
- D 1 - I - 0x01FCE0 07:BCD0: E0 02     .word $02E0 ; 
; 
- D 1 - I - 0x01FCE2 07:BCD2: C7        .byte $C7   ; 
- D 1 - I - 0x01FCE3 07:BCD3: 40 03     .word $0340 ; 
; 
- D 1 - I - 0x01FCE5 07:BCD5: 4B        .byte $4B   ; 
- D 1 - I - 0x01FCE6 07:BCD6: 80 03     .word $0380 ; 
; 
- D 1 - I - 0x01FCE8 07:BCD8: FF        .byte $FF   ; end token



_off051_BCD9_08_00:
- D 1 - I - 0x01FCE9 07:BCD9: E7 BC     .word off_BCE7_08_00_00
- D 1 - I - 0x01FCEB 07:BCDB: F4 BC     .word off_BCF4_08_00_01



_off051_BCDD_08_01:
- D 1 - I - 0x01FCED 07:BCDD: 0D BD     .word off_BD0D_08_01_00



_off051_BCDF_08_02:
- D 1 - I - 0x01FCEF 07:BCDF: 1A BD     .word off_BD1A_08_02_00
- D 1 - I - 0x01FCF1 07:BCE1: 2A BD     .word off_BD2A_08_02_01



_off051_BCE3_08_03:
- D 1 - I - 0x01FCF3 07:BCE3: 2E BD     .word off_BD2E_08_03_00



_off051_BCE5_08_04:
- D 1 - I - 0x01FCF5 07:BCE5: 3E BD     .word off_BD3E_08_04_00



off_BCE7_08_00_00:
; 
- D 1 - I - 0x01FCF7 07:BCE7: 05        .byte $05   ; 
- D 1 - I - 0x01FCF8 07:BCE8: 20 00     .word $0020 ; 
; 
- D 1 - I - 0x01FCFA 07:BCEA: C5        .byte $C5   ; 
- D 1 - I - 0x01FCFB 07:BCEB: 20 00     .word $0020 ; 
; 
- D 1 - I - 0x01FCFD 07:BCED: 47        .byte $47   ; 
- D 1 - I - 0x01FCFE 07:BCEE: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01FD00 07:BCF0: 45        .byte $45   ; 
- - - - - - 0x01FD01 07:BCF1: A0 01     .word $01A0 ; 
; 
- D 1 - I - 0x01FD03 07:BCF3: FF        .byte $FF   ; end token



off_BCF4_08_00_01:
; 
- D 1 - I - 0x01FD04 07:BCF4: C7        .byte $C7   ; 
- - - - - - 0x01FD05 07:BCF5: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FD07 07:BCF7: 49        .byte $49   ; 
- D 1 - I - 0x01FD08 07:BCF8: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01FD0A 07:BCFA: C7        .byte $C7   ; 
- - - - - - 0x01FD0B 07:BCFB: 80 01     .word $0180 ; 
; 
- D 1 - I - 0x01FD0D 07:BCFD: 49        .byte $49   ; 
- D 1 - I - 0x01FD0E 07:BCFE: A0 01     .word $01A0 ; 
; 
- D 1 - I - 0x01FD10 07:BD00: 89        .byte $89   ; 
- D 1 - I - 0x01FD11 07:BD01: A0 01     .word $01A0 ; 
; 
- D 1 - I - 0x01FD13 07:BD03: CA        .byte $CA   ; 
- D 1 - I - 0x01FD14 07:BD04: 30 02     .word $0230 ; 
; 
- D 1 - I - 0x01FD16 07:BD06: 0A        .byte $0A   ; 
- D 1 - I - 0x01FD17 07:BD07: 70 02     .word $0270 ; 
; 
- D 1 - I - 0x01FD19 07:BD09: 87        .byte $87   ; 
- - - - - - 0x01FD1A 07:BD0A: A0 02     .word $02A0 ; 
; 
- D 1 - I - 0x01FD1C 07:BD0C: FF        .byte $FF   ; end token



off_BD0D_08_01_00:
; 
- D 1 - I - 0x01FD1D 07:BD0D: 09        .byte $09   ; 
- D 1 - I - 0x01FD1E 07:BD0E: A0 01     .word $01A0 ; 
; 
- D 1 - I - 0x01FD20 07:BD10: 86        .byte $86   ; 
- D 1 - I - 0x01FD21 07:BD11: D0 01     .word $01D0 ; 
; 
- D 1 - I - 0x01FD23 07:BD13: C9        .byte $C9   ; 
- - - - - - 0x01FD24 07:BD14: A0 02     .word $02A0 ; 
; 
- D 1 - I - 0x01FD26 07:BD16: 4B        .byte $4B   ; 
- D 1 - I - 0x01FD27 07:BD17: C0 02     .word $02C0 ; 
; 
- D 1 - I - 0x01FD29 07:BD19: FF        .byte $FF   ; end token



off_BD1A_08_02_00:
; 
- D 1 - I - 0x01FD2A 07:BD1A: 05        .byte $05   ; 
- D 1 - I - 0x01FD2B 07:BD1B: 20 00     .word $0020 ; 
; 
- D 1 - I - 0x01FD2D 07:BD1D: C5        .byte $C5   ; 
- - - - - - 0x01FD2E 07:BD1E: 20 00     .word $0020 ; 
; 
- D 1 - I - 0x01FD30 07:BD20: 49        .byte $49   ; 
- D 1 - I - 0x01FD31 07:BD21: 60 00     .word $0060 ; 
; 
- D 1 - I - 0x01FD33 07:BD23: C5        .byte $C5   ; 
- - - - - - 0x01FD34 07:BD24: 00 01     .word $0100 ; 
; 
- D 1 - I - 0x01FD36 07:BD26: 48        .byte $48   ; 
- D 1 - I - 0x01FD37 07:BD27: 30 01     .word $0130 ; 
; 
- D 1 - I - 0x01FD39 07:BD29: FF        .byte $FF   ; end token



off_BD2A_08_02_01:
; 
- D 1 - I - 0x01FD3A 07:BD2A: 8B        .byte $8B   ; 
- - - - - - 0x01FD3B 07:BD2B: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FD3D 07:BD2D: FF        .byte $FF   ; end token



off_BD2E_08_03_00:
; 
- D 1 - I - 0x01FD3E 07:BD2E: 05        .byte $05   ; 
- D 1 - I - 0x01FD3F 07:BD2F: 40 03     .word $0340 ; 
; 
- D 1 - I - 0x01FD41 07:BD31: C5        .byte $C5   ; 
- - - - - - 0x01FD42 07:BD32: E0 03     .word $03E0 ; 
; 
- D 1 - I - 0x01FD44 07:BD34: 48        .byte $48   ; 
- D 1 - I - 0x01FD45 07:BD35: 10 04     .word $0410 ; 
; 
- D 1 - I - 0x01FD47 07:BD37: 08        .byte $08   ; 
- - - - - - 0x01FD48 07:BD38: 90 04     .word $0490 ; 
; 
- D 1 - I - 0x01FD4A 07:BD3A: 85        .byte $85   ; 
- - - - - - 0x01FD4B 07:BD3B: C0 04     .word $04C0 ; 
; 
- D 1 - I - 0x01FD4D 07:BD3D: FF        .byte $FF   ; end token



off_BD3E_08_04_00:
; 
- D 1 - I - 0x01FD4E 07:BD3E: 09        .byte $09   ; 
- D 1 - I - 0x01FD4F 07:BD3F: A0 04     .word $04A0 ; 
; 
- D 1 - I - 0x01FD51 07:BD41: 87        .byte $87   ; 
- D 1 - I - 0x01FD52 07:BD42: C0 04     .word $04C0 ; 
; 
- D 1 - I - 0x01FD54 07:BD44: 47        .byte $47   ; 
- D 1 - I - 0x01FD55 07:BD45: C0 04     .word $04C0 ; 
; 
- D 1 - I - 0x01FD57 07:BD47: C5        .byte $C5   ; 
- D 1 - I - 0x01FD58 07:BD48: A0 04     .word $04A0 ; 
; 
- D 1 - I - 0x01FD5A 07:BD4A: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x01FD5B 07:BD4B: 05        .byte $05   ; 
- - - - - - 0x01FD5C 07:BD4C: A0        .byte $A0   ; 
- - - - - - 0x01FD5D 07:BD4D: 04        .byte $04   ; 
- - - - - - 0x01FD5E 07:BD4E: FF        .byte $FF   ; 



_off051_BD4F_09_00:
- D 1 - I - 0x01FD5F 07:BD4F: 59 BD     .word off_BD59_09_00_00
- D 1 - I - 0x01FD61 07:BD51: 63 BD     .word off_BD63_09_00_01



_off051_BD53_09_01:
- D 1 - I - 0x01FD63 07:BD53: 73 BD     .word off_BD73_09_01_00
- D 1 - I - 0x01FD65 07:BD55: 77 BD     .word off_BD77_09_01_01
- D 1 - I - 0x01FD67 07:BD57: 90 BD     .word off_BD90_09_01_02



off_BD59_09_00_00:
; 
- D 1 - I - 0x01FD69 07:BD59: 0B        .byte $0B   ; 
- D 1 - I - 0x01FD6A 07:BD5A: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01FD6C 07:BD5C: 86        .byte $86   ; 
- - - - - - 0x01FD6D 07:BD5D: 90 00     .word $0090 ; 
; 
- D 1 - I - 0x01FD6F 07:BD5F: 47        .byte $47   ; 
- D 1 - I - 0x01FD70 07:BD60: C0 01     .word $01C0 ; 
; 
- D 1 - I - 0x01FD72 07:BD62: FF        .byte $FF   ; end token



off_BD63_09_00_01:
; 
- D 1 - I - 0x01FD73 07:BD63: 0B        .byte $0B   ; 
- D 1 - I - 0x01FD74 07:BD64: A0 01     .word $01A0 ; 
; 
- D 1 - I - 0x01FD76 07:BD66: 87        .byte $87   ; 
- - - - - - 0x01FD77 07:BD67: E0 01     .word $01E0 ; 
; 
- D 1 - I - 0x01FD79 07:BD69: C6        .byte $C6   ; 
- D 1 - I - 0x01FD7A 07:BD6A: 90 02     .word $0290 ; 
; 
- D 1 - I - 0x01FD7C 07:BD6C: 49        .byte $49   ; 
- D 1 - I - 0x01FD7D 07:BD6D: C0 02     .word $02C0 ; 
; 
- D 1 - I - 0x01FD7F 07:BD6F: CB        .byte $CB   ; 
- D 1 - I - 0x01FD80 07:BD70: 40 02     .word $0240 ; 
; 
- D 1 - I - 0x01FD82 07:BD72: FF        .byte $FF   ; end token



off_BD73_09_01_00:
; 
- D 1 - I - 0x01FD83 07:BD73: 45        .byte $45   ; 
- D 1 - I - 0x01FD84 07:BD74: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01FD86 07:BD76: FF        .byte $FF   ; end token



off_BD77_09_01_01:
; 
- D 1 - I - 0x01FD87 07:BD77: CA        .byte $CA   ; 
- - - - - - 0x01FD88 07:BD78: 30 00     .word $0030 ; 
; 
- D 1 - I - 0x01FD8A 07:BD7A: 05        .byte $05   ; 
- D 1 - I - 0x01FD8B 07:BD7B: 60 03     .word $0360 ; 
; 
- D 1 - I - 0x01FD8D 07:BD7D: C5        .byte $C5   ; 
- D 1 - I - 0x01FD8E 07:BD7E: A0 03     .word $03A0 ; 
; 
- D 1 - I - 0x01FD90 07:BD80: 49        .byte $49   ; 
- D 1 - I - 0x01FD91 07:BD81: E0 03     .word $03E0 ; 
; 
- D 1 - I - 0x01FD93 07:BD83: 89        .byte $89   ; 
- D 1 - I - 0x01FD94 07:BD84: E0 03     .word $03E0 ; 
; 
- D 1 - I - 0x01FD96 07:BD86: 0B        .byte $0B   ; 
- D 1 - I - 0x01FD97 07:BD87: C0 03     .word $03C0 ; 
; 
- D 1 - I - 0x01FD99 07:BD89: C8        .byte $C8   ; 
- D 1 - I - 0x01FD9A 07:BD8A: 50 03     .word $0350 ; 
; 
- D 1 - I - 0x01FD9C 07:BD8C: 4B        .byte $4B   ; 
- - - - - - 0x01FD9D 07:BD8D: 80 03     .word $0380 ; 
; 
- D 1 - I - 0x01FD9F 07:BD8F: FF        .byte $FF   ; end token



off_BD90_09_01_02:
; 
- D 1 - I - 0x01FDA0 07:BD90: 0B        .byte $0B   ; 
- D 1 - I - 0x01FDA1 07:BD91: 20 00     .word $0020 ; 
; 
- D 1 - I - 0x01FDA3 07:BD93: 86        .byte $86   ; 
- D 1 - I - 0x01FDA4 07:BD94: 70 00     .word $0070 ; 
; 
- D 1 - I - 0x01FDA6 07:BD96: 8B        .byte $8B   ; 
- - - - - - 0x01FDA7 07:BD97: C0 00     .word $00C0 ; 
; 
- D 1 - I - 0x01FDA9 07:BD99: 0B        .byte $0B   ; 
- D 1 - I - 0x01FDAA 07:BD9A: A0 01     .word $01A0 ; 
; 
- D 1 - I - 0x01FDAC 07:BD9C: 87        .byte $87   ; 
- - - - - - 0x01FDAD 07:BD9D: E0 01     .word $01E0 ; 
; 
- D 1 - I - 0x01FDAF 07:BD9F: FF        .byte $FF   ; end token



_off051_BDA0_0A_00:
- D 1 - I - 0x01FDB0 07:BDA0: BC BD     .word off_BDBC_0A_00_00
- D 1 - I - 0x01FDB2 07:BDA2: C6 BD     .word off_BDC6_0A_00_01



_off051_BDA4_0A_01:
- D 1 - I - 0x01FDB4 07:BDA4: C9 BD     .word off_BDC9_0A_xx_00



_off051_BDA6_0A_02:
- D 1 - I - 0x01FDB6 07:BDA6: C9 BD     .word off_BDC9_0A_xx_00



_off051_BDA8_0A_03:
- D 1 - I - 0x01FDB8 07:BDA8: CA BD     .word off_BDCA_0A_03_00
- D 1 - I - 0x01FDBA 07:BDAA: CE BD     .word off_BDCE_0A_03_01



_off051_BDAC_0A_04:
- D 1 - I - 0x01FDBC 07:BDAC: E4 BD     .word off_BDE4_0A_04_00
- D 1 - I - 0x01FDBE 07:BDAE: E8 BD     .word off_BDE8_0A_04_01
- D 1 - I - 0x01FDC0 07:BDB0: EF BD     .word off_BDEF_0A_04_02



_off051_BDB2_0A_05:
- D 1 - I - 0x01FDC2 07:BDB2: F3 BD     .word off_BDF3_0A_05_00
- D 1 - I - 0x01FDC4 07:BDB4: F7 BD     .word off_BDF7_0A_05_01



_off051_BDB6_0A_06:
- D 1 - I - 0x01FDC6 07:BDB6: FB BD     .word off_BDFB_0A_06_00
- D 1 - I - 0x01FDC8 07:BDB8: FF BD     .word off_BDFF_0A_06_01
- D 1 - I - 0x01FDCA 07:BDBA: 33 BE     .word off_BE33_0A_06_02



off_BDBC_0A_00_00:
; 
- D 1 - I - 0x01FDCC 07:BDBC: 0B        .byte $0B   ; 
- D 1 - I - 0x01FDCD 07:BDBD: 60 00     .word $0060 ; 
; 
- D 1 - I - 0x01FDCF 07:BDBF: 87        .byte $87   ; 
- - - - - - 0x01FDD0 07:BDC0: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01FDD2 07:BDC2: 05        .byte $05   ; 
- D 1 - I - 0x01FDD3 07:BDC3: 20 00     .word $0020 ; 
; 
- D 1 - I - 0x01FDD5 07:BDC5: FF        .byte $FF   ; end token



off_BDC6_0A_00_01:
; 
- D 1 - I - 0x01FDD6 07:BDC6: 8B        .byte $8B   ; 
- D 1 - I - 0x01FDD7 07:BDC7: 80 00     .word $0080 ; 
off_BDC9_0A_xx_00:
- D 1 - I - 0x01FDD9 07:BDC9: FF        .byte $FF   ; end token



off_BDCA_0A_03_00:
; 
- D 1 - I - 0x01FDDA 07:BDCA: 05        .byte $05   ; 
- D 1 - I - 0x01FDDB 07:BDCB: 20 00     .word $0020 ; 
; 
- D 1 - I - 0x01FDDD 07:BDCD: FF        .byte $FF   ; end token



off_BDCE_0A_03_01:
; 
- D 1 - I - 0x01FDDE 07:BDCE: 8B        .byte $8B   ; 
- D 1 - I - 0x01FDDF 07:BDCF: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FDE1 07:BDD1: C7        .byte $C7   ; 
- D 1 - I - 0x01FDE2 07:BDD2: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FDE4 07:BDD4: 4A        .byte $4A   ; 
- D 1 - I - 0x01FDE5 07:BDD5: B0 00     .word $00B0 ; 
; 
- D 1 - I - 0x01FDE7 07:BDD7: C7        .byte $C7   ; 
- D 1 - I - 0x01FDE8 07:BDD8: 40 01     .word $0140 ; 
; 
- D 1 - I - 0x01FDEA 07:BDDA: 4B        .byte $4B   ; 
- D 1 - I - 0x01FDEB 07:BDDB: 80 01     .word $0180 ; 
; 
- D 1 - I - 0x01FDED 07:BDDD: 08        .byte $08   ; 
- D 1 - I - 0x01FDEE 07:BDDE: 10 02     .word $0210 ; 
; 
- D 1 - I - 0x01FDF0 07:BDE0: 85        .byte $85   ; 
- - - - - - 0x01FDF1 07:BDE1: 40 02     .word $0240 ; 
; 
- D 1 - I - 0x01FDF3 07:BDE3: FF        .byte $FF   ; end token



off_BDE4_0A_04_00:
; 
- D 1 - I - 0x01FDF4 07:BDE4: 00        .byte $00   ; 
- D 1 - I - 0x01FDF5 07:BDE5: 30 20     .word $2030 ; 
; 
- D 1 - I - 0x01FDF7 07:BDE7: FF        .byte $FF   ; end token



off_BDE8_0A_04_01:
; 
- D 1 - I - 0x01FDF8 07:BDE8: 8B        .byte $8B   ; 
- - - - - - 0x01FDF9 07:BDE9: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FDFB 07:BDEB: 47        .byte $47   ; 
- D 1 - I - 0x01FDFC 07:BDEC: E0 01     .word $01E0 ; 
; 
- D 1 - I - 0x01FDFE 07:BDEE: FF        .byte $FF   ; end token



off_BDEF_0A_04_02:
; 
- D 1 - I - 0x01FDFF 07:BDEF: CB        .byte $CB   ; 
- D 1 - I - 0x01FE00 07:BDF0: 60 01     .word $0160 ; 
; 
- D 1 - I - 0x01FE02 07:BDF2: FF        .byte $FF   ; end token



off_BDF3_0A_05_00:
; 
- D 1 - I - 0x01FE03 07:BDF3: 04        .byte $04   ; 
- D 1 - I - 0x01FE04 07:BDF4: 70 02     .word $0270 ; 
; 
- D 1 - I - 0x01FE06 07:BDF6: FF        .byte $FF   ; end token



off_BDF7_0A_05_01:
; 
- D 1 - I - 0x01FE07 07:BDF7: 89        .byte $89   ; 
- D 1 - I - 0x01FE08 07:BDF8: E0 02     .word $02E0 ; 
; 
- D 1 - I - 0x01FE0A 07:BDFA: FF        .byte $FF   ; end token



off_BDFB_0A_06_00:
; 
- D 1 - I - 0x01FE0B 07:BDFB: 07        .byte $07   ; 
- D 1 - I - 0x01FE0C 07:BDFC: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01FE0E 07:BDFE: FF        .byte $FF   ; end token



off_BDFF_0A_06_01:
; 
- D 1 - I - 0x01FE0F 07:BDFF: 40        .byte $40   ; 
- D 1 - I - 0x01FE10 07:BE00: 30 80     .word $8030 ; 
; 
- D 1 - I - 0x01FE12 07:BE02: 40        .byte $40   ; 
- D 1 - I - 0x01FE13 07:BE03: 30 E0     .word $E030 ; 
; 
- D 1 - I - 0x01FE15 07:BE05: 80        .byte $80   ; 
- D 1 - I - 0x01FE16 07:BE06: E0 60     .word $60E0 ; 
; 
- D 1 - I - 0x01FE18 07:BE08: 01        .byte $01   ; 
- D 1 - I - 0x01FE19 07:BE09: 30 20     .word $2030 ; 
; 
- D 1 - I - 0x01FE1B 07:BE0B: C1        .byte $C1   ; 
- D 1 - I - 0x01FE1C 07:BE0C: 30 20     .word $2030 ; 
; 
- D 1 - I - 0x01FE1E 07:BE0E: 41        .byte $41   ; 
- D 1 - I - 0x01FE1F 07:BE0F: 70 60     .word $6070 ; 
; 
- D 1 - I - 0x01FE21 07:BE11: 81        .byte $81   ; 
- D 1 - I - 0x01FE22 07:BE12: 70 60     .word $6070 ; 
; 
- D 1 - I - 0x01FE24 07:BE14: 01        .byte $01   ; 
- D 1 - I - 0x01FE25 07:BE15: A0 30     .word $30A0 ; 
; 
- D 1 - I - 0x01FE27 07:BE17: 81        .byte $81   ; 
- D 1 - I - 0x01FE28 07:BE18: B0 A0     .word $A0B0 ; 
; 
- D 1 - I - 0x01FE2A 07:BE1A: 01        .byte $01   ; 
- D 1 - I - 0x01FE2B 07:BE1B: E0 70     .word $70E0 ; 
; 
- D 1 - I - 0x01FE2D 07:BE1D: C2        .byte $C2   ; 
- D 1 - I - 0x01FE2E 07:BE1E: 10 40     .word $4010 ; 
; 
- D 1 - I - 0x01FE30 07:BE20: 42        .byte $42   ; 
- D 1 - I - 0x01FE31 07:BE21: 70 A0     .word $A070 ; 
; 
- D 1 - I - 0x01FE33 07:BE23: 02        .byte $02   ; 
- D 1 - I - 0x01FE34 07:BE24: 70 C0     .word $C070 ; 
; 
- D 1 - I - 0x01FE36 07:BE26: 82        .byte $82   ; 
- D 1 - I - 0x01FE37 07:BE27: 50 E0     .word $E050 ; 
; 
- D 1 - I - 0x01FE39 07:BE29: 82        .byte $82   ; 
- D 1 - I - 0x01FE3A 07:BE2A: E0 C0     .word $C0E0 ; 
; 
- D 1 - I - 0x01FE3C 07:BE2C: 03        .byte $03   ; 
- D 1 - I - 0x01FE3D 07:BE2D: 30 80     .word $8030 ; 
; 
- D 1 - I - 0x01FE3F 07:BE2F: 83        .byte $83   ; 
- D 1 - I - 0x01FE40 07:BE30: B0 C0     .word $C0B0 ; 
; 
- D 1 - I - 0x01FE42 07:BE32: FF        .byte $FF   ; end token



off_BE33_0A_06_02:
; 
- D 1 - I - 0x01FE43 07:BE33: CB        .byte $CB   ; 
- D 1 - I - 0x01FE44 07:BE34: 20 00     .word $0020 ; 
; 
- D 1 - I - 0x01FE46 07:BE36: CB        .byte $CB   ; 
- D 1 - I - 0x01FE47 07:BE37: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FE49 07:BE39: FF        .byte $FF   ; end token



_off051_BE3A_0B_00:
- D 1 - I - 0x01FE4A 07:BE3A: 48 BE     .word off_BE48_0B_00_00
- D 1 - I - 0x01FE4C 07:BE3C: 52 BE     .word off_BE52_0B_00_01



_off051_BE3E_0B_01:
- D 1 - I - 0x01FE4E 07:BE3E: 5C BE     .word off_BE5C_0B_01_00
- D 1 - I - 0x01FE50 07:BE40: 66 BE     .word off_BE66_0B_01_01



_off051_BE42_0B_02:
- D 1 - I - 0x01FE52 07:BE42: 6A BE     .word off_BE6A_0B_02_00
- D 1 - I - 0x01FE54 07:BE44: 74 BE     .word off_BE74_0B_02_01
- D 1 - I - 0x01FE56 07:BE46: 7B BE     .word off_BE7B_0B_02_02



off_BE48_0B_00_00:
; 
- D 1 - I - 0x01FE58 07:BE48: 0A        .byte $0A   ; 
- D 1 - I - 0x01FE59 07:BE49: 70 03     .word $0370 ; 
; 
- D 1 - I - 0x01FE5B 07:BE4B: 85        .byte $85   ; 
- D 1 - I - 0x01FE5C 07:BE4C: C0 03     .word $03C0 ; 
; 
- D 1 - I - 0x01FE5E 07:BE4E: 45        .byte $45   ; 
- D 1 - I - 0x01FE5F 07:BE4F: 00 03     .word $0300 ; 
; 
- D 1 - I - 0x01FE61 07:BE51: FF        .byte $FF   ; end token



off_BE52_0B_00_01:
; 
- D 1 - I - 0x01FE62 07:BE52: CB        .byte $CB   ; 
- - - - - - 0x01FE63 07:BE53: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01FE65 07:BE55: 0B        .byte $0B   ; 
- D 1 - I - 0x01FE66 07:BE56: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01FE68 07:BE58: 87        .byte $87   ; 
- D 1 - I - 0x01FE69 07:BE59: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FE6B 07:BE5B: FF        .byte $FF   ; end token



off_BE5C_0B_01_00:
; 
- D 1 - I - 0x01FE6C 07:BE5C: 46        .byte $46   ; 
- D 1 - I - 0x01FE6D 07:BE5D: 10 01     .word $0110 ; 
; 
- D 1 - I - 0x01FE6F 07:BE5F: C7        .byte $C7   ; 
- D 1 - I - 0x01FE70 07:BE60: 80 02     .word $0280 ; 
; 
- D 1 - I - 0x01FE72 07:BE62: 4B        .byte $4B   ; 
- D 1 - I - 0x01FE73 07:BE63: C0 02     .word $02C0 ; 
; 
- D 1 - I - 0x01FE75 07:BE65: FF        .byte $FF   ; end token



off_BE66_0B_01_01:
; 
- D 1 - I - 0x01FE76 07:BE66: C9        .byte $C9   ; 
- - - - - - 0x01FE77 07:BE67: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FE79 07:BE69: FF        .byte $FF   ; end token



off_BE6A_0B_02_00:
; 
- D 1 - I - 0x01FE7A 07:BE6A: 06        .byte $06   ; 
- - - - - - 0x01FE7B 07:BE6B: 30 00     .word $0030 ; 
; 
- D 1 - I - 0x01FE7D 07:BE6D: C5        .byte $C5   ; 
- D 1 - I - 0x01FE7E 07:BE6E: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FE80 07:BE70: 49        .byte $49   ; 
- D 1 - I - 0x01FE81 07:BE71: C0 00     .word $00C0 ; 
; 
- D 1 - I - 0x01FE83 07:BE73: FF        .byte $FF   ; end token



off_BE74_0B_02_01:
; 
- D 1 - I - 0x01FE84 07:BE74: 00        .byte $00   ; 
- D 1 - I - 0x01FE85 07:BE75: 30 40     .word $4030 ; 
; 
- D 1 - I - 0x01FE87 07:BE77: 81        .byte $81   ; 
- D 1 - I - 0x01FE88 07:BE78: 90 C0     .word $C090 ; 
; 
- D 1 - I - 0x01FE8A 07:BE7A: FF        .byte $FF   ; end token



off_BE7B_0B_02_02:
; 
- D 1 - I - 0x01FE8B 07:BE7B: 89        .byte $89   ; 
- D 1 - I - 0x01FE8C 07:BE7C: C0 02     .word $02C0 ; 
; 
- D 1 - I - 0x01FE8E 07:BE7E: FF        .byte $FF   ; end token



_off051_BE7F_0C_00:
- D 1 - I - 0x01FE8F 07:BE7F: 89 BE     .word off_BE89_0C_00_00
- D 1 - I - 0x01FE91 07:BE81: 99 BE     .word off_BE99_0C_00_01



_off051_BE83_0C_01:
- D 1 - I - 0x01FE93 07:BE83: 9D BE     .word off_BE9D_0C_01_00
- D 1 - I - 0x01FE95 07:BE85: AD BE     .word off_BEAD_0C_01_01



_off051_BE87_0C_02:
- D 1 - I - 0x01FE97 07:BE87: B1 BE     .word off_BEB1_0C_02_00



off_BE89_0C_00_00:
; 
- D 1 - I - 0x01FE99 07:BE89: 46        .byte $46   ; 
- D 1 - I - 0x01FE9A 07:BE8A: D0 02     .word $02D0 ; 
; 
- D 1 - I - 0x01FE9C 07:BE8C: C6        .byte $C6   ; 
- D 1 - I - 0x01FE9D 07:BE8D: 10 03     .word $0310 ; 
; 
- D 1 - I - 0x01FE9F 07:BE8F: 48        .byte $48   ; 
- D 1 - I - 0x01FEA0 07:BE90: 30 03     .word $0330 ; 
; 
- D 1 - I - 0x01FEA2 07:BE92: 88        .byte $88   ; 
- - - - - - 0x01FEA3 07:BE93: B0 03     .word $03B0 ; 
; 
- D 1 - I - 0x01FEA5 07:BE95: 0C        .byte $0C   ; 
- D 1 - I - 0x01FEA6 07:BE96: 70 03     .word $0370 ; 
; 
- D 1 - I - 0x01FEA8 07:BE98: FF        .byte $FF   ; end token



off_BE99_0C_00_01:
; 
- D 1 - I - 0x01FEA9 07:BE99: CA        .byte $CA   ; 
- D 1 - I - 0x01FEAA 07:BE9A: 50 00     .word $0050 ; 
; 
- D 1 - I - 0x01FEAC 07:BE9C: FF        .byte $FF   ; end token



off_BE9D_0C_01_00:
; 
- D 1 - I - 0x01FEAD 07:BE9D: CA        .byte $CA   ; 
- - - - - - 0x01FEAE 07:BE9E: 70 00     .word $0070 ; 
; 
- D 1 - I - 0x01FEB0 07:BEA0: 4C        .byte $4C   ; 
- D 1 - I - 0x01FEB1 07:BEA1: 90 00     .word $0090 ; 
; 
- D 1 - I - 0x01FEB3 07:BEA3: 46        .byte $46   ; 
- D 1 - I - 0x01FEB4 07:BEA4: D0 00     .word $00D0 ; 
; 
- D 1 - I - 0x01FEB6 07:BEA6: 0C        .byte $0C   ; 
- D 1 - I - 0x01FEB7 07:BEA7: 50 01     .word $0150 ; 
; 
- D 1 - I - 0x01FEB9 07:BEA9: 86        .byte $86   ; 
- D 1 - I - 0x01FEBA 07:BEAA: B0 01     .word $01B0 ; 
; 
- D 1 - I - 0x01FEBC 07:BEAC: FF        .byte $FF   ; end token



off_BEAD_0C_01_01:
; 
- D 1 - I - 0x01FEBD 07:BEAD: 06        .byte $06   ; 
- D 1 - I - 0x01FEBE 07:BEAE: 30 00     .word $0030 ; 
; 
- D 1 - I - 0x01FEC0 07:BEB0: FF        .byte $FF   ; end token



off_BEB1_0C_02_00:
; 
- D 1 - I - 0x01FEC1 07:BEB1: C8        .byte $C8   ; 
- - - - - - 0x01FEC2 07:BEB2: B0 00     .word $00B0 ; 
; 
- D 1 - I - 0x01FEC4 07:BEB4: 4C        .byte $4C   ; 
- D 1 - I - 0x01FEC5 07:BEB5: F0 00     .word $00F0 ; 
; 
- D 1 - I - 0x01FEC7 07:BEB7: FF        .byte $FF   ; end token



_off051_BEB8_0D_00:
- D 1 - I - 0x01FEC8 07:BEB8: CE BE     .word off_BECE_0D_00_00
- D 1 - I - 0x01FECA 07:BEBA: D8 BE     .word off_BED8_0D_00_01
- D 1 - I - 0x01FECC 07:BEBC: E5 BE     .word off_BEE5_0D_00_02



_off051_BEBE_0D_01:
- D 1 - I - 0x01FECE 07:BEBE: E9 BE     .word off_BEE9_0D_01_00
- D 1 - I - 0x01FED0 07:BEC0: F3 BE     .word off_BEF3_0D_01_01
- D 1 - I - 0x01FED2 07:BEC2: 69 BF     .word off_BF69_0D_01_02



_off051_BEC4_0D_02:
- D 1 - I - 0x01FED4 07:BEC4: 79 BF     .word off_BF79_0D_02_00
- D 1 - I - 0x01FED6 07:BEC6: 0C BF     .word off_BF0C_0D_02_01
- D 1 - I - 0x01FED8 07:BEC8: 83 BF     .word off_BF83_0D_02_02



_off051_BECA_0D_03:
- D 1 - I - 0x01FEDA 07:BECA: 5B BF     .word off_BF5B_0D_03_00
- D 1 - I - 0x01FEDC 07:BECC: 65 BF     .word off_BF65_0D_03_01



off_BECE_0D_00_00:
; 
- D 1 - I - 0x01FEDE 07:BECE: 49        .byte $49   ; 
- D 1 - I - 0x01FEDF 07:BECF: C0 00     .word $00C0 ; 
; 
- D 1 - I - 0x01FEE1 07:BED1: C6        .byte $C6   ; 
- - - - - - 0x01FEE2 07:BED2: 90 00     .word $0090 ; 
; 
- D 1 - I - 0x01FEE4 07:BED4: 05        .byte $05   ; 
- D 1 - I - 0x01FEE5 07:BED5: 20 00     .word $0020 ; 
; 
- D 1 - I - 0x01FEE7 07:BED7: FF        .byte $FF   ; end token



off_BED8_0D_00_01:
; 
- D 1 - I - 0x01FEE8 07:BED8: 8B        .byte $8B   ; 
- D 1 - I - 0x01FEE9 07:BED9: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FEEB 07:BEDB: 0B        .byte $0B   ; 
- D 1 - I - 0x01FEEC 07:BEDC: A0 04     .word $04A0 ; 
; 
- D 1 - I - 0x01FEEE 07:BEDE: 87        .byte $87   ; 
- - - - - - 0x01FEEF 07:BEDF: E0 04     .word $04E0 ; 
; 
- D 1 - I - 0x01FEF1 07:BEE1: 05        .byte $05   ; 
- D 1 - I - 0x01FEF2 07:BEE2: 60 04     .word $0460 ; 
; 
- D 1 - I - 0x01FEF4 07:BEE4: FF        .byte $FF   ; end token



off_BEE5_0D_00_02:
; 
- D 1 - I - 0x01FEF5 07:BEE5: 8B        .byte $8B   ; 
- - - - - - 0x01FEF6 07:BEE6: C0 00     .word $00C0 ; 
; 
- D 1 - I - 0x01FEF8 07:BEE8: FF        .byte $FF   ; end token



off_BEE9_0D_01_00:
; 
- D 1 - I - 0x01FEF9 07:BEE9: 07        .byte $07   ; 
- D 1 - I - 0x01FEFA 07:BEEA: 20 00     .word $0020 ; 
; 
- D 1 - I - 0x01FEFC 07:BEEC: 4B        .byte $4B   ; 
- D 1 - I - 0x01FEFD 07:BEED: 50 00     .word $0050 ; 
; 
- D 1 - I - 0x01FEFF 07:BEEF: C7        .byte $C7   ; 
- - - - - - 0x01FF00 07:BEF0: 10 00     .word $0010 ; 
; 
- D 1 - I - 0x01FF02 07:BEF2: FF        .byte $FF   ; end token



off_BEF3_0D_01_01:
; 
- D 1 - I - 0x01FF03 07:BEF3: 40        .byte $40   ; 
- D 1 - I - 0x01FF04 07:BEF4: 50 C0     .word $C050 ; 
; 
- D 1 - I - 0x01FF06 07:BEF6: 80        .byte $80   ; 
- D 1 - I - 0x01FF07 07:BEF7: 50 C0     .word $C050 ; 
; 
- D 1 - I - 0x01FF09 07:BEF9: 00        .byte $00   ; 
- D 1 - I - 0x01FF0A 07:BEFA: 70 A0     .word $A070 ; 
; 
- D 1 - I - 0x01FF0C 07:BEFC: C0        .byte $C0   ; 
- D 1 - I - 0x01FF0D 07:BEFD: 90 40     .word $4090 ; 
; 
- D 1 - I - 0x01FF0F 07:BEFF: 40        .byte $40   ; 
- D 1 - I - 0x01FF10 07:BF00: E0 90     .word $90E0 ; 
; 
- D 1 - I - 0x01FF12 07:BF02: C1        .byte $C1   ; 
- D 1 - I - 0x01FF13 07:BF03: 20 30     .word $3020 ; 
; 
- D 1 - I - 0x01FF15 07:BF05: 41        .byte $41   ; 
- D 1 - I - 0x01FF16 07:BF06: 90 A0     .word $A090 ; 
; 
- D 1 - I - 0x01FF18 07:BF08: 81        .byte $81   ; 
- D 1 - I - 0x01FF19 07:BF09: 90 C0     .word $C090 ; 
; 
- D 1 - I - 0x01FF1B 07:BF0B: FF        .byte $FF   ; end token



off_BF0C_0D_02_01:
; 
- D 1 - I - 0x01FF1C 07:BF0C: 40        .byte $40   ; 
- D 1 - I - 0x01FF1D 07:BF0D: 30 E0     .word $E030 ; 
; 
- D 1 - I - 0x01FF1F 07:BF0F: 80        .byte $80   ; 
- D 1 - I - 0x01FF20 07:BF10: 30 E0     .word $E030 ; 
; 
- D 1 - I - 0x01FF22 07:BF12: 00        .byte $00   ; 
- D 1 - I - 0x01FF23 07:BF13: 60 B0     .word $B060 ; 
; 
- D 1 - I - 0x01FF25 07:BF15: 80        .byte $80   ; 
- D 1 - I - 0x01FF26 07:BF16: 60 50     .word $5060 ; 
; 
- D 1 - I - 0x01FF28 07:BF18: 00        .byte $00   ; 
- D 1 - I - 0x01FF29 07:BF19: 90 20     .word $2090 ; 
; 
- D 1 - I - 0x01FF2B 07:BF1B: 80        .byte $80   ; 
- D 1 - I - 0x01FF2C 07:BF1C: 90 C0     .word $C090 ; 
; 
- D 1 - I - 0x01FF2E 07:BF1E: 00        .byte $00   ; 
- D 1 - I - 0x01FF2F 07:BF1F: D0 80     .word $80D0 ; 
; 
- D 1 - I - 0x01FF31 07:BF21: 81        .byte $81   ; 
- D 1 - I - 0x01FF32 07:BF22: 00 B0     .word $B000 ; 
; 
- D 1 - I - 0x01FF34 07:BF24: 01        .byte $01   ; 
- D 1 - I - 0x01FF35 07:BF25: 40 70     .word $7040 ; 
; 
- D 1 - I - 0x01FF37 07:BF27: 81        .byte $81   ; 
- D 1 - I - 0x01FF38 07:BF28: 40 D0     .word $D040 ; 
; 
- D 1 - I - 0x01FF3A 07:BF2A: 01        .byte $01   ; 
- D 1 - I - 0x01FF3B 07:BF2B: 70 A0     .word $A070 ; 
; 
- D 1 - I - 0x01FF3D 07:BF2D: 81        .byte $81   ; 
- D 1 - I - 0x01FF3E 07:BF2E: B0 A0     .word $A0B0 ; 
; 
- D 1 - I - 0x01FF40 07:BF30: 01        .byte $01   ; 
- D 1 - I - 0x01FF41 07:BF31: E0 70     .word $70E0 ; 
; 
- D 1 - I - 0x01FF43 07:BF33: C1        .byte $C1   ; 
- D 1 - I - 0x01FF44 07:BF34: E0 40     .word $40E0 ; 
; 
- D 1 - I - 0x01FF46 07:BF36: 42        .byte $42   ; 
- D 1 - I - 0x01FF47 07:BF37: 20 70     .word $7020 ; 
; 
- D 1 - I - 0x01FF49 07:BF39: C2        .byte $C2   ; 
- D 1 - I - 0x01FF4A 07:BF3A: 60 50     .word $5060 ; 
; 
- D 1 - I - 0x01FF4C 07:BF3C: 42        .byte $42   ; 
- D 1 - I - 0x01FF4D 07:BF3D: 90 80     .word $8090 ; 
; 
- D 1 - I - 0x01FF4F 07:BF3F: 82        .byte $82   ; 
- D 1 - I - 0x01FF50 07:BF40: 90 E0     .word $E090 ; 
; 
- D 1 - I - 0x01FF52 07:BF42: 02        .byte $02   ; 
- D 1 - I - 0x01FF53 07:BF43: C0 B0     .word $B0C0 ; 
; 
- D 1 - I - 0x01FF55 07:BF45: C2        .byte $C2   ; 
- D 1 - I - 0x01FF56 07:BF46: B0 20     .word $20B0 ; 
; 
- D 1 - I - 0x01FF58 07:BF48: 42        .byte $42   ; 
- D 1 - I - 0x01FF59 07:BF49: E0 50     .word $50E0 ; 
; 
- D 1 - I - 0x01FF5B 07:BF4B: C3        .byte $C3   ; 
- D 1 - I - 0x01FF5C 07:BF4C: 20 70     .word $7020 ; 
; 
- D 1 - I - 0x01FF5E 07:BF4E: 43        .byte $43   ; 
- D 1 - I - 0x01FF5F 07:BF4F: 60 B0     .word $B060 ; 
; 
- D 1 - I - 0x01FF61 07:BF51: C3        .byte $C3   ; 
- D 1 - I - 0x01FF62 07:BF52: 60 30     .word $3060 ; 
; 
- D 1 - I - 0x01FF64 07:BF54: 43        .byte $43   ; 
- D 1 - I - 0x01FF65 07:BF55: 90 60     .word $6090 ; 
; 
- D 1 - I - 0x01FF67 07:BF57: C3        .byte $C3   ; 
- D 1 - I - 0x01FF68 07:BF58: B0 20     .word $20B0 ; 
; 
- D 1 - I - 0x01FF6A 07:BF5A: FF        .byte $FF   ; end token



off_BF5B_0D_03_00:
; 
- D 1 - I - 0x01FF6B 07:BF5B: 0A        .byte $0A   ; 
- D 1 - I - 0x01FF6C 07:BF5C: 30 00     .word $0030 ; 
; 
- D 1 - I - 0x01FF6E 07:BF5E: 85        .byte $85   ; 
- D 1 - I - 0x01FF6F 07:BF5F: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FF71 07:BF61: 05        .byte $05   ; 
- D 1 - I - 0x01FF72 07:BF62: 80 02     .word $0280 ; 
; 
- D 1 - I - 0x01FF74 07:BF64: FF        .byte $FF   ; end token



off_BF65_0D_03_01:
; 
- D 1 - I - 0x01FF75 07:BF65: 8B        .byte $8B   ; 
- - - - - - 0x01FF76 07:BF66: E0 02     .word $02E0 ; 
; 
- D 1 - I - 0x01FF78 07:BF68: FF        .byte $FF   ; end token



off_BF69_0D_01_02:
; 
- D 1 - I - 0x01FF79 07:BF69: CB        .byte $CB   ; 
- - - - - - 0x01FF7A 07:BF6A: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01FF7C 07:BF6C: 0B        .byte $0B   ; 
- D 1 - I - 0x01FF7D 07:BF6D: 20 00     .word $0020 ; 
; 
- D 1 - I - 0x01FF7F 07:BF6F: 87        .byte $87   ; 
- D 1 - I - 0x01FF80 07:BF70: 60 00     .word $0060 ; 
; 
- D 1 - I - 0x01FF82 07:BF72: C7        .byte $C7   ; 
- D 1 - I - 0x01FF83 07:BF73: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01FF85 07:BF75: 4B        .byte $4B   ; 
- D 1 - I - 0x01FF86 07:BF76: E0 00     .word $00E0 ; 
; 
- D 1 - I - 0x01FF88 07:BF78: FF        .byte $FF   ; end token



off_BF79_0D_02_00:
; 
- D 1 - I - 0x01FF89 07:BF79: 0B        .byte $0B   ; 
- D 1 - I - 0x01FF8A 07:BF7A: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FF8C 07:BF7C: 86        .byte $86   ; 
- - - - - - 0x01FF8D 07:BF7D: D0 00     .word $00D0 ; 
; 
- D 1 - I - 0x01FF8F 07:BF7F: 46        .byte $46   ; 
- D 1 - I - 0x01FF90 07:BF80: 90 00     .word $0090 ; 
; 
- D 1 - I - 0x01FF92 07:BF82: FF        .byte $FF   ; end token



off_BF83_0D_02_02:
; 
- D 1 - I - 0x01FF93 07:BF83: CA        .byte $CA   ; 
- - - - - - 0x01FF94 07:BF84: 70 00     .word $0070 ; 
; 
- D 1 - I - 0x01FF96 07:BF86: 0A        .byte $0A   ; 
- D 1 - I - 0x01FF97 07:BF87: 50 00     .word $0050 ; 
; 
- D 1 - I - 0x01FF99 07:BF89: 85        .byte $85   ; 
- D 1 - I - 0x01FF9A 07:BF8A: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01FF9C 07:BF8C: FF        .byte $FF   ; end token



_off051_BF8D_0E_00:
- D 1 - I - 0x01FF9D 07:BF8D: 9B BF     .word off_BF9B_0E_00_00
- D 1 - I - 0x01FF9F 07:BF8F: 9F BF     .word off_BF9F_0E_00_01
- D 1 - I - 0x01FFA1 07:BF91: A6 BF     .word off_BFA6_0E_00_02



_off051_BF93_0E_01:
- D 1 - I - 0x01FFA3 07:BF93: AA BF     .word off_BFAA_0E_01_00
- D 1 - I - 0x01FFA5 07:BF95: BA BF     .word off_BFBA_0E_01_01



_off051_BF97_0E_02:
- D 1 - I - 0x01FFA7 07:BF97: C4 BF     .word off_BFC4_0E_02_00
- D 1 - I - 0x01FFA9 07:BF99: C8 BF     .word off_BFC8_0E_02_01



off_BF9B_0E_00_00:
; 
- D 1 - I - 0x01FFAB 07:BF9B: 48        .byte $48   ; 
- D 1 - I - 0x01FFAC 07:BF9C: B0 01     .word $01B0 ; 
; 
- D 1 - I - 0x01FFAE 07:BF9E: FF        .byte $FF   ; end token



off_BF9F_0E_00_01:
; 
- D 1 - I - 0x01FFAF 07:BF9F: 00        .byte $00   ; 
- D 1 - I - 0x01FFB0 07:BFA0: 30 20     .word $2030 ; 
; 
- D 1 - I - 0x01FFB2 07:BFA2: C2        .byte $C2   ; 
- D 1 - I - 0x01FFB3 07:BFA3: B0 20     .word $20B0 ; 
; 
- D 1 - I - 0x01FFB5 07:BFA5: FF        .byte $FF   ; end token



off_BFA6_0E_00_02:
; 
- D 1 - I - 0x01FFB6 07:BFA6: 8B        .byte $8B   ; 
- D 1 - I - 0x01FFB7 07:BFA7: 80 00     .word $0080 ; 
; 
- D 1 - I - 0x01FFB9 07:BFA9: FF        .byte $FF   ; end token



off_BFAA_0E_01_00:
; 
- D 1 - I - 0x01FFBA 07:BFAA: C5        .byte $C5   ; 
- - - - - - 0x01FFBB 07:BFAB: 40 00     .word $0040 ; 
; 
- D 1 - I - 0x01FFBD 07:BFAD: 4B        .byte $4B   ; 
- D 1 - I - 0x01FFBE 07:BFAE: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01FFC0 07:BFB0: 05        .byte $05   ; 
- D 1 - I - 0x01FFC1 07:BFB1: A0 00     .word $00A0 ; 
; 
- D 1 - I - 0x01FFC3 07:BFB3: 0B        .byte $0B   ; 
- D 1 - I - 0x01FFC4 07:BFB4: 60 01     .word $0160 ; 
; 
- D 1 - I - 0x01FFC6 07:BFB6: 88        .byte $88   ; 
- - - - - - 0x01FFC7 07:BFB7: 90 01     .word $0190 ; 
; 
- D 1 - I - 0x01FFC9 07:BFB9: FF        .byte $FF   ; end token



off_BFBA_0E_01_01:
; 
- D 1 - I - 0x01FFCA 07:BFBA: 8C        .byte $8C   ; 
- D 1 - I - 0x01FFCB 07:BFBB: F0 01     .word $01F0 ; 
; 
- D 1 - I - 0x01FFCD 07:BFBD: 0C        .byte $0C   ; 
- D 1 - I - 0x01FFCE 07:BFBE: 90 02     .word $0290 ; 
; 
- D 1 - I - 0x01FFD0 07:BFC0: 87        .byte $87   ; 
- - - - - - 0x01FFD1 07:BFC1: E0 02     .word $02E0 ; 
; 
- D 1 - I - 0x01FFD3 07:BFC3: FF        .byte $FF   ; end token



off_BFC4_0E_02_00:
; 
- D 1 - I - 0x01FFD4 07:BFC4: 47        .byte $47   ; 
- D 1 - I - 0x01FFD5 07:BFC5: A0 01     .word $01A0 ; 
; 
- D 1 - I - 0x01FFD7 07:BFC7: FF        .byte $FF   ; end token



off_BFC8_0E_02_01:
; 
- D 1 - I - 0x01FFD8 07:BFC8: C9        .byte $C9   ; 
- D 1 - I - 0x01FFD9 07:BFC9: 00 02     .word $0200 ; 
; 
- D 1 - I - 0x01FFDB 07:BFCB: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x01FFDC 07:BFCC: FF        .byte $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FFE0 07:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FFF0 07:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x020000 07:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 8E: 0x%04X [%d]", ($C000 - *), ($C000 - *))



