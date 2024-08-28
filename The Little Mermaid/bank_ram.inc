; to the right are ROM File addresses of instructions which were using these RAM addresses
; https://datacrystal.romhacking.net/wiki/The_Little_Mermaid:RAM_map
; https://datacrystal.romhacking.net/wiki/The_Little_Mermaid:ROM_map



; ($indirect)   ($indirect),Y
ram_0000                                = $0000 ; 010153 013133 013621 013638 013647 013676 01367E 0136C1 013720 013728 013757 01802C 0180EC 01811B 0181C9 018ABB 018B03 018D85 018DBC 018DDD 018DED 018E00 0190F5 0190FD 0192D4 01936A 0193A1 019415 01947A 01948A 01948F 0194AF 0194B3 0194C0 0194C4 019517 01952B 019545 019B8F 019BA2 019D73 019D7D 019DDC 019DEC 019DF5 01A08D 01A099 01A243 01A25F 01A266 01A442 01A462 01A469 01A49C 01A4A1 01A4A7 01A4AC 01A78A 01A791 01A8AA 01A8B0 01B017 01C13A 01C148 01C180 01C190 01C1B1 01C268 01C26E 01C99C 01C9A8 01C9F2 01CAAC 01CAC2 01CAF8 01CB0C 01CB14 01CB24 01CB2C 01CB34 01CB5A 01CD13 01CD19 01CD7D 01CD85 01CD98 01CD9E 01CDBE 01CDEE 01CDF4 01CE1D 01CE23 01CF43 01CF4E 01CF50 01D024 01D039 01D1D0 01D1DB 01D4A0 01D4E6 01D557 01D601 01D615 01D62A 01D63F 01D666 01D6B4 01D6C7 01D6E3 01D6EB 01D718 01D728 01D72A 01D77C 01D7F2 01D800 01D95C 01D96E 01D972 01D975 01D978 01D97B 01D97E 01D981 01D988 01D992 01D996 01DC79 01DC84 01DC8D 01DCB3 01DCC7 01DCF2 01DCFB 01DD1D 01DD30 01DDAE 01DDBE 01DDCD 01DE03 01DE14 01DE5F 01DE6B 01DEA0 01DEB9 01E78E 01E79B 01E84E 01E864 01ED4A 01ED53 01ED59 01ED69 01ED78 01F020 01F6F1 01F6FA 01F704 01F70B 01F72B 01F734 01F79A 01F7A3 01F7AD 01F7B4 01F815 01F81C 01F826 01F82F 01FA1E 01FA61 01FA6D 01FA76 01FAB6 01FAC2 01FB3C 01FB60 01FBE3 01FBF7 01FCA1 01FCA8 01FCB0 01FCC6 01FD2C 01FD39 01FD63 01FD6E 01FD73 01FD78 01FD83 01FD8A 01FDF5 01FE00 01FE7D 01FE8F 01FEF7 
ram_0001                                = $0001 ; 010158 013138 013615 013628 01363A 013640 01364E 013668 0136B9 013712 01374F 018031 0180EA 018104 01812D 018190 018196 0192EE 01933D 0193A6 0193EA 01B01C 01B050 01C143 01C14E 01C182 01C1A4 01C1C9 01C894 01C9F7 01CAB3 01CABA 01D4A4 01D4BE 01D54A 01D605 01D61D 01D62C 01D632 01D647 01D65C 01D6CD 01D733 01D73A 01D73C 01D781 01D789 01D94D 01D954 01D957 01D95E 01D962 01DC71 01DC86 01DCCB 01DCE9 01DD02 01DD17 01DD34 01DD9D 01DDB7 01DE19 01DE61 01DEBE 01DEF4 01DF94 01E967 01EBD1 01F01C 01FA22 01FA65 01FA67 01FA7A 01FABA 01FABC 01FBEE 01FC0E 01FCB4 01FCBC 01FD6C 01FD75 01FD7F 01FDF7 01FE04 01FE81 01FE8D 01FEF7 



; ($indirect),Y
ram_0002                                = $0002 ; 0101F6 013626 013633 01364C 0136A0 0136A8 0136DF 0136FB 013703 01373E 018240 018242 018263 018842 01887F 0192F6 019342 0193AB 0193EF 01B039 01B046 01C184 01C1AF 01C285 01D522 01D52B 01D609 01D624 01D634 01D63A 01D64E 01D661 01D776 01D7B3 01D8E6 01D8EC 01D910 01E29F 01E39E 01E3AD 01E3AF 01E3FF 01E4D9 01E4E8 01E4EA 01EE3A 01EE3C 01EE6E 01EEA3 01EEA5 01F613 01F635 01F637 01F63E 01F688 01F6AD 01F6AF 01F6B6 01F749 01F74F 01F7C7 01F7CD 01F7E9 01FBF3 01FBF5 01FC49 01FD7D 01FD87 01FD8E 01FD94 01FEF7 
ram_0003                                = $0003 ; 0101FB 01362C 01363C 013652 013692 0136D7 0136ED 013736 01824A 018288 0192FE 019347 0193B0 0193F4 01B012 01B027 01C28A 01D524 01D526 01D52D 01D822 01D85D 01D86F 01D891 01E331 01E355 01E357 01E385 01E3CD 01E3D1 01E421 01E496 01E498 01E4C0 01E520 01E524 01E53A 01E53E 01EAEF 01EB45 01EE40 01EE73 01F618 01F63C 01F68D 01F6B4 01FC1D 01FC41 01FEF7 



; ($indirect),Y
ram_0004                                = $0004 ; 010201 010262 013766 013777 013781 01378E 0181D4 01820E 01824C 018294 0182C3 0182DD 018313 018346 019303 01934C 0193B5 0193F9 01C298 01C2CA 01D6D5 01D71C 01D76D 01D77A 01E335 01E33C 01E346 01E3BE 01E3C9 01E403 01E40A 01E414 01E4F9 01E504 01EE57 01EE68 01FEF7 
ram_0005                                = $0005 ; 010219 01377F 01378A 018200 018280 0192D8 0192E5 01932A 01C2A1 01C2BD 01C2C2 01D6D9 01D704 01D75F 01D772 01D7B7 01E29B 01E312 01E3B1 01E3FB 01E4EC 01F787 01F802 01FEF7 



; ($indirect),Y
ram_0006                                = $0006 ; 010220 0183AC 0183B7 0183C6 0183D5 0183D7 01C29D 01C2C4 01C2C8 01E34C 01E487 01F6ED 01F700 01F79C 01F828 01FEF7 
ram_0007                                = $0007 ; 0181E0 0181F1 01823E 018248 01C2AF 01C2CE 01DF38 01DFA9 01E2A6 01E42C 01E567 01E5A7 01FEF7 



; ($indirect),Y
ram_0008                                = $0008 ; 01DFA7 01DFE7 01E8FF 01F0B7 01F0D0 01F0E1 01F0E5 01F0E9 01F12F 01FEF7 
ram_0009                                = $0009 ; 01DF1C 01DF31 01DF99 01DFE1 01E904 01F0BC 01F0FB 01F12B 01FEF7 



; 
ram_000A                                = $000A ; 01E8FA 01E910 01E922 01E951 01E975 01E97E 01E98B 01E99D 01E9AE 01E9B9 01E9C9 01FEF7 



; counter 00-80
ram_000B                                = $000B ; 01E963 01E971 01FEF7 



; free address
; ram_000C                              = $000C ; 01FEF7 



; 
ram_000D                                = $000D ; 018E1C 018E59 018E69 01C201 01C235 01D3B4 01F09C 01F0A7 01F1A9 01F1C8 01F204 01F20C 01F20E 01FEF7 



; 
ram_000E                                = $000E ; 018E15 018E84 018F23 018F75 019E0A 019E15 01A278 01A286 01A2E7 01A2ED 01A30C 01A31C 01A4B4 01A4E0 01A51C 01C205 01C226 01C890 01C89E 01D3B8 01F0AC 01F13B 01F398 01FEF7 



; 
ram_000F                                = $000F ; 018B74 018BC5 018C4E 018CAC 018E13 018E61 018E86 018F21 018F6D 018F77 01970D 019760 019C5B 019C83 019C93 019E0C 019E20 01A14F 01A1AB 01A27A 01A2D9 01A2EF 01A31A 01A4B2 01A502 01A51E 01A520 01A7E0 01A827 01A833 01C1FF 01C218 01C232 01C237 01C23D 01D3B0 01E928 01E9EF 01F0AE 01F13D 01FEF7 



; 
ram_0010                                = $0010 ; 010137 010147 010241 01861E 018651 018932 019882 0199A7 01CA1E 01CC28 01CE2E 01D285 01D74A 01D83D 01D841 01D848 01D84D 01D851 01D858 01D8EA 01D90C 01D90E 01D914 01D916 01E3A9 01E3AB 01E4E4 01E4E6 01E5B6 01E5C3 01E733 01E73F 01E74C 01E787 01EC5B 01EDD4 01EDE0 01EE51 01EEBF 01EF61 01F0FF 01F40F 01F532 01F540 01F544 01F55E 01F57A 01F58C 01F64A 01F6C4 01F77C 01F7F7 01F847 01F85E 01F867 01F871 01F889 01FEF7 



; 
ram_0011                                = $0011 ; 01013C 010149 010207 01020F 010243 01CC3A 01CE40 01CFFE 01D493 01E2A8 01E2AF 01E2B5 01E2B9 01E2E8 01E2EC 01E310 01E324 01E432 01E43F 01E466 01E46B 01E485 01E4F4 01E500 01E508 01E510 01E6DD 01E6FF 01E704 01E70A 01E724 01E739 01E750 01E79F 01EC5D 01EF63 01F101 01F411 01F677 01F70F 01F727 01F73C 01F796 01F7A9 01F7B8 01F811 01F822 01F837 01FA51 01FA57 01FA5F 01FA9B 01FAE9 01FAF6 01FAFF 01FEF7 



; 
ram_0012                                = $0012 ; 010097 0100AB 0100B2 01022C 01E342 01E34A 01E3B9 01E3C5 01E410 01E418 01E6AB 01E6B0 01E6B6 01E6C4 01E6C7 01EC62 01EF68 01F106 01F416 01F6A3 01F6F3 01F706 01F72D 01F7AF 01F817 01FA46 01FAA6 01FAAC 01FADC 01FEF7 



; 
ram_0013                                = $0013 ; 01009C 0100E5 010248 01E2D9 01E2DE 01E304 01E309 01E344 01E348 01E364 01E369 01E394 01E3DF 01E412 01E416 01E477 01E47C 01E49F 01E4A4 01E4CF 01E530 01E535 01E562 01E5A2 01E5F7 01E610 01E61C 01EC67 01EF6D 01F10B 01F41B 01FEF7 



; 
ram_btn_press                           = $0014 ; 01AC3C 01AC42 01C137 01C14A 01C14C 01C156 01C15B 01C15D 01C166 01C16E 01C176 01C17A 01C674 01CA10 01CA85 01CCF7 01D0D4 01D1B3 01E8D7 01EB80 01F206 01F3A3 01F534 01F53A 01F54E 01FEF7 
; ram_0015                              = $0015 ; 01C140 01C150 01C152 01C156 01C15B 01C15D 01C166 01C16E 01FEF7 



; 
ram_btn_hold                            = $0016 ; 01C159 01C15F 01C166 01C16E 01C176 01C17A 01CAA6 01CAFC 01CB1E 01CB5E 01CD79 01CD92 01CDEA 01CE17 01CE72 01CF0D 01CF3B 01D0FD 01D166 01D1D2 01D1EC 01D43C 01EEB4 01F09E 01F1BC 01F1C2 01F3CF 01FEF7 
; ram_0017                              = $0017 ; 01C159 01C15F 01C166 01C16E 01F3A9 01FEF7 



; 00 = 
; not 00 = 
ram_0018_flag                           = $0018 ; 01A695 01A6E9 01A8DE 01C047 01C04D 01C224 01D356 01DF6A 01E046 01E72B 01E735 01E73D 01E752 01FEF7 



; 00 = 
; not 00 = 
ram_0019_flag                           = $0019 ; 01AC1F 01C033 01C0DD 01D70B 01D8A7 01E72D 01EEAB 01F1A5 01F21D 01F25D 01F27A 01FEF7 



; 00 = 
; not 00 = 
ram_001A_flag                           = $001A ; 01863F 0197D3 01986D 0198D5 0198EC 01C03A 01C040 01C5B6 01E82A 01E86B 01FEF7 



; free address
; ram_001B                              = $001B ; 01FEF7 



; 
ram_001C_counter_00_02                  = $001C ; 01A75E 01D6B6 01D6C5 01FEF7 



; counter with 02 interval?
ram_001D                                = $001D ; 01C945 01E7CA 01E7CE 01E7D0 01FEF7 



; free address
; ram_001E                              = $001E ; 01FEF7 



; 
ram_001F                                = $001F ; 018272 01827D 01FB52 01FB5D 01FC33 01FC3E 01FEF7 



; 
ram_0020                                = $0020 ; 01C877 01D7CD 01D7DC 01D8BB 01D8BE 01D8D1 01D8D4 01D8D7 01D928 01DCD3 01DCD5 01DCE3 01DD3C 01DD3E 01DD4E 01DE34 01DE39 01DE4B 01DE50 01DECC 01DED1 01DEDF 01DEE4 01DF36 01DFA5 01DFAB 01DFE9 01E0BA 01E0CC 01E115 01E159 01E92A 01EACC 01EBAC 01EBBD 01EC01 01FEF7 



; 
ram_0021                                = $0021 ; 01D6ED 01D747 01D752 01D7E4 01D7F9 01D805 01D834 01D893 01D92F 01D94F 01E32B 01E35B 01E35D 01E398 01E3D7 01E3D9 01E3E1 01E3E3 01E3E7 01E425 01E48E 01E490 01E4D3 01E526 01E52A 01E547 01E54C 01E5FE 01FEF7 



; 
ram_0022                                = $0022 ; 01C880 01D6DB 01D70E 01D721 01D735 01D743 01D7BF 01D7C1 01D7C5 01D7D0 01D7D2 01D7D6 01D7DF 01D80C 01D827 01D837 01D868 01D89A 01D8AF 01D8B5 01D8C1 01D8C3 01D8CB 01DCD7 01DCD9 01DCDD 01DD40 01DD42 01DD46 01DD85 01DE3B 01DE3D 01DE45 01DED3 01DED9 01DF9F 01E012 01E01A 01E0C2 01E10B 01E191 01E205 01E95F 01E995 01EAC6 01EBC9 01EBD9 01EC07 01FEF7 



; free address
; ram_0023                              = $0023 ; 01FEF7 



; ($indirect),Y
ram_0024                                = $0024 ; 01D986 01FEF7 
ram_0025                                = $0025 ; 01D98C 01FEF7 



; 
ram_0026_counter                        = $0026 ; 01D6CF 01D6F5 01FEF7 



; 
ram_0027                                = $0027 ; 01C896 01C993 01D7B9 01D8A9 01DCCD 01DD36 01DD52 01DD77 01DE2A 01DEC2 01DEF2 01E01E 01E0C7 01E110 01E195 01E209 01E512 01E969 01E999 01EAC9 01EBCD 01EC04 01FEF7 



; 
ram_0028                                = $0028 ; 01888F 01E91A 01E924 01FEF7 



; 
ram_0029_counter_00_08                  = $0029 ; 01E800 01E826 01E82E 01FEF7 



; 
ram_002A                                = $002A ; 01E7E3 01E7FA 01E7FC 01E83C 01FEF7 



; ppu hi?
ram_002B                                = $002B ; 01E7F2 01E834 01FEF7 



; 
ram_002C                                = $002C ; 01E396 01E4D1 01E7CC 01E7E5 01FEF7 



; 
ram_002D                                = $002D ; 01E39A 01E4D5 01E7D5 01E7F4 01FEF7 



; 
ram_002E                                = $002E ; 01DF3A 01EBAA 01FEF7 



; 
ram_002F_timer                          = $002F ; 01805D 01882E 01A8E9 01C701 01C705 01FEF7 



; handler at 0x01C9FC
ram_ariel_status                        = $0030 ; 018067 018074 018079 0180D0 0198FB 01A61F 01A627 01A62E 01C66E 01C6BE 01C96A 01C9ED 01CA62 01CAA0 01CAC8 01CD3C 01CD71 01CECA 01CEF2 01CF2B 01D0CF 01D1AE 01D24C 01D2B2 01D2FB 01D35F 01D381 01D3C1 01DC43 01DC5A 01DEA2 01DFBA 01E1E4 01E252 01E8D1 01FB02 01FEF7 



; 
ram_0031                                = $0031 ; 01C991 01CABE 01CAC4 01CAEB 01CAEF 01CAF4 01CAFA 01CB02 01CB26 01CB30 01CB36 01CB4D 01CB51 01CB56 01CB5C 01CB64 01CBE2 01CC19 01CC4C 01CD7F 01CD9A 01CDBA 01CDC0 01CDDC 01CDF0 01CE02 01CE1F 01D442 01D60B 01DC65 01FEF7 



; a copy of ram_pos_X_lo
ram_0032_copy_pos_X_lo                  = $0032 ; 01C6CF 01C98D 01DC73 01DFD2 01E93C 01FEF7 



; a copy of ram_pos_X_hi
ram_0033_copy_pos_X_hi                  = $0033 ; 01C6D4 01C868 01DFD7 01E934 01FEF7 



; a copy of ram_pos_Y_lo
ram_0034_copy_pos_Y_lo                  = $0034 ; 01C6DD 01C966 01DDA8 01E94E 01FEF7 



; a copy of ram_pos_Y_hi
ram_0035_copy_pos_Y_hi                  = $0035 ; 01C6E2 01C872 01E946 01FEF7 



; 
ram_0036                                = $0036 ; 01CB6E 01CBCC 01CEDC 01D0E6 01D10D 01D116 01D121 01D198 01D3E0 01D3E9 01D3F6 01D412 01D430 01D439 01D449 01FEF7 



; free address
; ram_0037                              = $0037 ; 01FEF7 



; frame counter
ram_frm_cnt_1                           = $0038 ; 01C9EB 01D107 01D3DA 01D42A 01FEF7 



; 
ram_0039_timer_00_08                    = $0039 ; 01CA7A 01CE6A 01CE6E 01FEF7 



; 
ram_003A                                = $003A ; 0100EE 01010A 0101E9 0101EF 0180AD 0180CE 0180DF 0180E7 0183DC 0183E2 01889F 01988A 01C735 01CA22 01CA26 01CAA4 01CBFE 01CD40 01CF30 01CF39 01DF2F 01E183 01EA04 01FEF7 



; 
ram_003B_timer_00_1E                    = $003B ; 01C9D9 01C9DD 01CA81 01CA97 01CD33 01FEF7 



; 00 = 
; not 00 = 
ram_003C_flag                           = $003C ; 01CACC 01CDC2 01CDCE 01FEF7 



; 
ram_weapon_stats                        = $003D ; for common links (ram_weapon_power, ram_weapon_range)



; 
ram_weapon_power                        = $003D ; 0180EE 01812F 018173 018188 019774 0197EF 0199F1 0199F8 0199FE 01D02E 01D363 01EC22 01EC32 01FEF7 



; 
ram_weapon_range                        = $003E ; 0199F1 0199F8 0199FE 019A07 01D026 01D365 01EC3C 01FEF7 



; 
ram_003F_timer_00_60                    = $003F ; 010199 01805B 01C9E3 01C9E7 01D2BB 01FEF7 



; 
ram_0040                                = $0040 ; 01E292 01E3B5 01E3B7 01E3F2 01E4F0 01E4F2 01FEF7 



; 
ram_0041                                = $0041 ; 01CEBD 01CF9E 01D0B8 01D188 01E3A3 01E3A7 01E4DE 01E4E2 01E5B8 01E5D1 01FEF7 
ram_0042                                = $0042 ; 018FA6 0190C9 01E316 01E3A0 01E4DB 01F661 01F6D7 01F789 01F790 01F80B 01FEF7 
ram_0043                                = $0043 ; 018FAC 01CC33 01CE39 01CF04 01D20D 01E316 01E3A0 01E4DB 01F66B 01F6E1 01F789 01F804 01FEF7 
ram_0044                                = $0044 ; 01E316 01E3A0 01E4DB 01F789 01F804 01FEF7 
ram_0045                                = $0045 ; 01E316 01FEF7 



; free addresses
; ram_0046                              = $0046 ; 01FEF7 
; ram_0047                              = $0047 ; 01FEF7 
; ram_0048                              = $0048 ; 01FEF7 
; ram_0049                              = $0049 ; 01FEF7 
; ram_004A                              = $004A ; 01FEF7 
; ram_004B                              = $004B ; 01FEF7 
; ram_004C                              = $004C ; 01FEF7 
; ram_004D                              = $004D ; 01FEF7 
; ram_004E                              = $004E ; 01FEF7 
; ram_004F                              = $004F ; 01FEF7 



; substage/area
; .... xxxx = index
; xx.. .... = scroll type
    ; 00 = horisontal area, move right to progress
    ; 40 = vertical area, move down to progress
    ; 80 = vertical area, move up to progress
ram_stage_config                        = $0050 ; 013617 01365D 01366E 013698 0136E7 0136F5 01371A 01379E 0189BE 01C9AA 01D8B7 01D8CD 01DC11 01DDDC 01DDE4 01DE22 01DE30 01DE47 01DE75 01DE7D 01DEC8 01DEDB 01DEE8 01DF02 01DF14 01DF3E 01DFEF 01DFF1 01DFF5 01E002 01E004 01E028 01E0D1 01E11A 01E17E 01E197 01E19B 01E20D 01E2BB 01E2D5 01E2EE 01E300 01E46D 01E473 01E52C 01E555 01E98D 01E9CE 01EAD8 01EBA4 01F850 01F8EF 01F915 01F94E 01F974 01FEF7 



; substage scroll limit (maximum value of X/Y scroll until you can't scroll anymore)
ram_scroll_hi_max                       = $0051 ; 01C9A3 01DCA8 01DD6D 01DDEA 01DE90 01DFFD 01E0D6 01E11F 01E154 01E2C5 01E986 01F85A 01FEF7 



; 
ram_0052                                = $0052 ; 01C961 01DCA2 01DCA6 01DD09 01DD0D 01DD15 01DD6B 01DDE0 01DDE8 01DDF0 01DDF4 01DE79 01DE81 01DE87 01DE8C 01DE92 01DE96 01DFED 01E0DB 01E124 01E152 01E2C3 01E2CD 01E2F8 01E574 01E979 01F858 01FEF7 
ram_0053                                = $0053 ; 01A630 01C71A 01C83E 01C8A2 01C8E6 01C96F 01DA2D 01F582 01FEF7 
ram_0054                                = $0054 ; 01EFDB 01EFFF 01F00D 01F039 01F065 01F084 01F0B0 01F149 01F1AE 01F386 01F3C8 01F3CA 01F3D5 01F3D7 01F3FB 01F4BB 01F4BD 01F4C2 01F4C4 01FEF7 
ram_0055                                = $0055 ; 01F061 01F0F0 01FEF7 
ram_0056                                = $0056 ; 01F142 01F16B 01F16D 01F225 01FEF7 
ram_0057                                = $0057 ; 01F144 01F157 01F1E0 01F22D 01FEF7 
ram_0058                                = $0058 ; 01F14E 01FEF7 
ram_0059                                = $0059 ; 01F153 01F169 01FEF7 
ram_005A                                = $005A ; 01F02C 01F119 01F1D9 01FEF7 
ram_005B                                = $005B ; 01F155 01F167 01F171 01FEF7 
ram_005C                                = $005C ; 01CEE9 01D0E8 01D0F9 01D103 01D133 01D13D 01D153 01D16C 01D1A5 01FEF7 
ram_005D                                = $005D ; 01CED4 01D11E 01D123 01D145 01D15A 01D190 01FEF7 
ram_005E                                = $005E ; 01CED8 01D128 01D12C 01D147 01D161 01D194 01FEF7 
ram_005F                                = $005F ; 01A637 01A63C 01A640 01FEF7 



; stage data
ram_0060                                = $0060 ; 01D984 01D9C4 01FEF7 
ram_0061                                = $0061 ; 01D98A 01D9C9 01FEF7 



; stage data
ram_0062                                = $0062 ; 01D95A 01D9BA 01FEF7 
ram_0063                                = $0063 ; 01D960 01D9BF 01FEF7 



; ($indirect),Y
; 0064-0065 (02) 
ram_stage_data_1                        = $0064 ; 01D99C 01FEF7 
; ram_0065                              = $0065 ; 01D9A9 01FEF7 



; ($indirect),Y
ram_stage_data_2                        = $0066 ; 01D99E 01FEF7 
; ram_0067                              = $0067 ; 01D9AC 01FEF7 



; ($indirect),Y
ram_stage_data_3                        = $0068 ; 01D9A0 01FEF7 
; ram_0069                              = $0069 ; 01D9AF 01FEF7 



; ($indirect),Y
ram_stage_data_4                        = $006A ; 01D9A2 01FEF7 
; ram_006B                              = $006B ; 01D9B2 01FEF7 



; ($indirect),Y
ram_stage_data_5                        = $006C ; 01D9A4 01FEF7 
; ram_006D                              = $006D ; 01D9B5 01FEF7 



; ($indirect),Y
ram_006E                                = $006E ; 01D9CE 01FEF7 
ram_006F                                = $006F ; 01D9D3 01FEF7 



; ($indirect),Y
ram_0070                                = $0070 ; 01D9D8 01FEF7 
ram_0071                                = $0071 ; 01D9DD 01FEF7 



; ($indirect),Y
ram_0072                                = $0072 ; 01DA08 01FEF7 
ram_0073                                = $0073 ; 01DA0D 01FEF7 



; ($indirect),Y
ram_0074                                = $0074 ; 01DA12 01FEF7 
ram_0075                                = $0075 ; 01DA17 01FEF7 



; ($indirect),Y
ram_0076                                = $0076 ; 01DA1C 01FEF7 
ram_0077                                = $0077 ; 01DA21 01FEF7 



; ($indirect),Y
ram_0078                                = $0078 ; 01DA26 01FEF7 
ram_0079                                = $0079 ; 01DA2B 01FEF7 



; 
ram_007A                                = $007A ; 01A754 01A783 01A858 01D5C2 01D5F8 01D5FF 01D611 01D628 01D6A6 01FEF7 
ram_007B                                = $007B ; 01A72C 01A75A 01A865 01A879 01D5D1 01D5DC 01D5EB 01D5F4 01D603 01D61B 01D645 01FEF7 
ram_007C                                = $007C ; 01A72E 01A75C 01FEF7 
ram_007D                                = $007D ; 01A758 01D5CF 01D5D4 01D5E1 01D5E5 01D5EE 01FEF7 
ram_007E                                = $007E ; 018882 01A746 01D5C9 01D5CD 01D679 01FEF7 
ram_007F                                = $007F ; 018438 01A6BC 01A6C0 01A6D7 01FEF7 
ram_0080                                = $0080 ; 01C098 01C0A4 01FEF7 01FF4F 01FF69 01FF6D 01FF9B 01FFCE 
ram_0081                                = $0081 ; 01C09E 01FEF7 01FFCA 
ram_0082                                = $0082 ; 01FEF7 01FF73 01FF7E 01FF93 01FFD3 
ram_0083                                = $0083 ; 01FEF7 01FF77 01FF97 
ram_0084                                = $0084 ; 01C098 01FEF7 01FF4F 
ram_0085                                = $0085 ; 01FEF7 
ram_0086                                = $0086 ; 01FEF7 
ram_0087                                = $0087 ; 01FEF7 
ram_0088                                = $0088 ; 01C098 01FEF7 01FF4F 
ram_0089                                = $0089 ; 01FEF7 
ram_008A                                = $008A ; 01FEF7 
ram_008B                                = $008B ; 01FEF7 
ram_008C                                = $008C ; 01C098 01FEF7 01FF4F 
ram_008D                                = $008D ; 01FEF7 
ram_008E                                = $008E ; 01FEF7 
ram_008F                                = $008F ; 01FEF7 
ram_0090                                = $0090 ; 01C093 01FEF7 01FF4B 01FF5F 
ram_0091                                = $0091 ; 01FEF7 01FF67 01FF82 01FFB0 

; counts how many times nmi was triggered
; bzk useless address
ram_nmi_cnt                             = $0092 ; 01C08F 01FEF7 

; ($indirect)
ram_0093                                = $0093 ; 01FEF7 01FF3B 01FF75 01FF91 01FFBF 01FFC8 
ram_0094                                = $0094 ; 01FEF7 01FF37 01FF79 01FF95 



; frame counter
ram_frm_cnt_2                           = $0095 ; 010016 010018 01FEF7 



; 
ram_0096                                = $0096 ; 01001F 010035 010037 010040 010056 010058 01EC52 01EC6C 01EC6E 01EF5D 01EF72 01EF74 01F0F9 01F110 01F129 01F12D 01F409 01F40B 01F420 01F422 01FEF7 



; index for ram_oam
ram_oam_index                           = $0097 ; 010061 010222 01025E 01C1CC 01C6EA 01C833 01DF25 01DFB2 01E1DC 01E24A 01E8ED 01EABB 01EB99 01EC48 01ECB5 01EF53 01EFE6 01F063 01F0F2 01F2F1 01F388 01F3FD 01F432 01F4D6 01FEF7 



; 
ram_0098                                = $0098 ; 01FEF7 
ram_0099                                = $0099 ; 01801A 01878F 019888 019899 019938 01C9D7 01F984 01FEF7 
ram_009A                                = $009A ; 01C018 01FEF7 
ram_009B                                = $009B ; 01E5DF 01F136 01FEF7 01FFDD 
ram_009C                                = $009C ; 01FEF7 01FFE1 01FFE9 
ram_009D                                = $009D ; 01FEF7 01FFE3 01FFEB 
ram_009E                                = $009E ; 013689 0136AD 0136CE 0136E4 0136EB 01370C 013734 013749 01C840 01E102 01E173 01E9F4 01FEF7 
ram_009F                                = $009F ; 013661 013685 0136B2 0136CA 013710 013731 01374D 013762 01C842 01E104 01E175 01E9F6 01FEF7 
ram_00A0                                = $00A0 ; 01C53A 01FEF7 
ram_00A1                                = $00A1 ; 01C548 01C551 01C56F 01FEF7 



; ($indirect),Y
ram_00A2                                = $00A2 ; 01C53F 01FEF7 
ram_00A3                                = $00A3 ; 01C544 01FEF7 



; 
ram_00A4_prg_bank                       = $00A4 ; 01C557 01C57B 01FEF7 



; 
ram_00A5                                = $00A5 ; 01C54A 01C54D 01C55C 01C58D 01FEF7 



; ($indirect),Y
ram_00A6                                = $00A6 ; 01C561 01C59C 01C59E 01FEF7 
ram_00A7                                = $00A7 ; 01C567 01C5A0 01C5A4 01FEF7 



; 
ram_00A8                                = $00A8 ; 01C563 01C576 01C5A8 01C5AA 01FEF7 



; 
ram_00A9                                = $00A9 ; 01C56C 01C571 01C5AC 01C5B0 01FEF7 



; free addresses
; ram_00AA                              = $00AA ; 01FEF7 
; ram_00AB                              = $00AB ; 01FEF7 
; ram_00AC                              = $00AC ; 01FEF7 
; ram_00AD                              = $00AD ; 01FEF7 
; ram_00AE                              = $00AE ; 01FEF7 
; ram_00AF                              = $00AF ; 01FEF7 



; 
ram_lives                               = $00B0 ; 019A3D 019A43 01C661 01D369 01EB0F 01ECEA 01EEDD 01EEE3 01EEE5 01F578 01FEF7 



; hp, health
ram_hearts                              = $00B1 ; 01006D 01015E 018010 01806B 019A57 019A5D 019A65 01C665 01C731 01C9DF 01D2B5 01E727 01FEF7 



; 
ram_items                               = $00B2 ; for common links (fork, pipe, pearls)



; 
ram_item_fork                           = $00B2 ; 019A99 019AA0 019AA6 01C739 01ED31 01EDB5 01FEF7 
ram_item_pipe                           = $00B3 ; 019A99 019AA0 019AA6 01C73B 01ED31 01EDB7 01FEF7 
ram_item_pearl_purple                   = $00B4 ; 019A09 019A10 019A16 01C73D 01ED31 01EDB9 01FEF7 
ram_item_pearl_green                    = $00B5 ; 019A09 019A10 019A16 01C73F 01ED31 01EDBB 01FEF7 



; free addresses
; ram_00B6                              = $00B6 ; 01FEF7 
; ram_00B7                              = $00B7 ; 01FEF7 



; 
ram_00B8                                = $00B8 ; 01C844 01C997 01FEF7 



; free address
; ram_00B9                              = $00B9 ; 01FEF7 



; bzk useless address, always 5 hearts
ram_total_hearts                        = $00BA ; 01005D 01C669 01FEF7 



; 00 = off
; 01 = on
ram_no_damage_cheat                     = $00BB ; 018061 01844C 01AC3A 01AC53 01FEF7 



; 
ram_00BC                                = $00BC ; 019D51 019DB4 019DC1 019E13 019F20 01FEF7 
ram_00BD                                = $00BD ; 01FEF7 
ram_00BE                                = $00BE ; 018639 0197B5 0197CD 019867 0198CF 0198E6 01E392 01E4CD 01E5BA 01FEF7 
ram_00BF                                = $00BF ; 01C0CF 01FEF7 01FFDF 
ram_00C0                                = $00C0 ; 01407C 0140A9 0140BC 0140BE 01410E 014113 01422E 014232 014236 01423A 0142DB 0142F6 01FEF7 



; ($indirect)   ($indirect),Y
ram_music_data                          = $00C1 ; 01401E 014029 01402D 014037 014045 01404A 01415F 014161 014199 01419F 0141A9 0141AF 0142CD 0142D6 01442F 014434 0145D4 0145DE 014794 014799 0147DF 0147E4 014815 014817 014855 014862 014866 01486E 014877 014890 014892 01489F 01FEF7 
; ram_00C2                              = $00C2 ; 014018 01401C 014023 014027 01403A 014042 014052 014169 0141A1 0141B1 014539 01453D 0147E7 0147EA 0147ED 0147F0 0147F3 0147FD 014802 01480E 014810 01481F 014851 014879 01488B 01488D 014896 01FEF7 



; mostly a copy of the following byte after music data control byte
ram_00C3                                = $00C3 ; 0141BE 014328 014387 014406 014410 014414 014457 014462 014469 014476 014482 0144B0 014508 01450F 01451A 014520 01454E 014568 014570 01458A 0145F4 0145F6 014601 014635 01463A 01463C 014641 014649 01466E 014677 01467F 014681 014697 01469B 01469E 0146A1 0146A9 0146B1 0146B7 0146C2 014779 0147A1 0147A5 0147AF 01FEF7 



; mostly a copy of music data control byte
ram_00C4                                = $00C4 ; 014025 014104 014106 01413F 014157 01426E 014283 0142B6 0142BF 0142D1 01431C 01432A 014332 01442A 014495 01449A 0144AB 0144B2 014540 0145D9 0146CD 0146E6 0146FD 014720 014783 0147A9 0147B1 0147CE 01FEF7 



; ($indirect),Y
ram_00C5                                = $00C5 ; 0146A7 01FEF7 
ram_00C6                                = $00C6 ; 0146AE 01FEF7 



; 
ram_00C7                                = $00C7 ; 014095 0143C3 0143D3 01FEF7 
ram_00C8                                = $00C8 ; 01408D 01408F 014187 014503 01FEF7 
ram_00C9                                = $00C9 ; 014091 014181 01450C 01FEF7 
ram_00CA                                = $00CA ; 01408B 014185 01450A 01FEF7 
ram_00CB                                = $00CB ; 014189 014485 014522 01FEF7 
ram_00CC                                = $00CC ; 0140C0 01418B 01473D 01FEF7 
ram_00CD                                = $00CD ; 01418D 01473B 01FEF7 
ram_00CE                                = $00CE ; 014143 014147 0141DA 014273 01FEF7 
ram_00CF                                = $00CF ; 014097 01409C 0140A0 0140A4 0140BA 0141E4 0141EA 0141F1 014201 014206 01421E 0142E1 0142E5 0142EB 014453 01459A 014734 01FEF7 
ram_00D0                                = $00D0 ; 014081 014163 0141DC 0142A0 0142AE 0142B0 014396 01439A 01FEF7 
ram_00D1                                = $00D1 ; 014083 01416B 0141DE 0142A2 014398 01439E 01FEF7 
ram_00D2                                = $00D2 ; 01416E 014391 01FEF7 
ram_00D3                                = $00D3 ; 014170 014262 014266 0142CB 0142FE 0145D2 01FEF7 
ram_00D4                                = $00D4 ; 014172 0142BD 0142CF 01FEF7 
ram_00D5                                = $00D5 ; 014174 014268 0142D9 014306 01FEF7 
ram_00D6                                = $00D6 ; 01414B 014155 014159 01428D 014290 014295 014297 0142A9 014828 01FEF7 
ram_00D7                                = $00D7 ; 0141E0 014275 01FEF7 
ram_00D8                                = $00D8 ; 0141E2 01FEF7 



; 
ram_music_id                            = $00D9 ; 01A619 01FCAE 01FEF7 



; 
ram_queue_index_1                       = $00DA ; 01FCB2 01FCC4 01FEF7 
ram_queue_index_2                       = $00DB ; 01C0B2 01C0C3 01FEF7 



; a list of sfx
ram_sfx_queue                           = $00DC ; 01C0B4 01C0BD 01FCB6 01FCBE 01FEF7 01FF16 
; ram_00DD                              = $00DD ; 01C0B4 01C0BD 01FCB6 01FCBE 01FEF7 01FF16 
; ram_00DE                              = $00DE ; 01C0B4 01C0BD 01FCB6 01FCBE 01FEF7 01FF16 
; ram_00DF                              = $00DF ; 01C0B4 01C0BD 01FCB6 01FCBE 01FEF7 01FF16 
; ram_00E0                              = $00E0 ; 01C0B4 01C0BD 01FCB6 01FCBE 01FEF7 01FF16 
; ram_00E1                              = $00E1 ; 01C0B4 01C0BD 01FCB6 01FCBE 01FEF7 01FF16 
; ram_00E2                              = $00E2 ; 01C0B4 01C0BD 01FCB6 01FCBE 01FEF7 01FF16 
; ram_00E3                              = $00E3 ; 01C0B4 01C0BD 01FCB6 01FCBE 01FEF7 01FF16 



; RNG
ram_random                              = $00E4 ; 0190EF 01942E 0194A7 0194B8 01962D 019ACE 019B37 019C15 019D68 019F38 01A0A2 01A162 01A4CC 01A4CE 01A737 01A748 01C264 01C274 01C656 01FEF7 
; ram_00E5                              = $00E5 ; 0190F1 019430 019432 0194AB 0194BA 019AD0 019B3B 019C17 019C19 019D75 019FAF 01A164 01A166 01A232 01A296 01A2B6 01A2B8 01A4CA 01A739 01A73B 01A811 01C26A 01C274 01FEF7 
; ram_00E6                              = $00E6 ; 0194A9 0194BC 019AD2 019B39 019FB1 019FB3 01A234 01A236 01A2B4 01A57C 01A74A 01A74C 01A813 01C274 01FEF7 
; ram_00E7                              = $00E7 ; 018C13 01962F 019631 019D77 019D79 019F3A 019F3C 01A0A4 01A0A6 01A294 01A298 01A57E 01A580 01A7BB 01C274 01FEF7 



; free address
; ram_00E8                              = $00E8 ; 01FEF7 



; 00 = stage 1 - sea of coral
; 01 = stage 2 - sunken ship
; 02 = stage 3 - sea of ice
; 03 = stage 4 - undersea volcano
; 04 = stage 5 - ursula's castle
; 05 = final battle
ram_stage_id                            = $00E9 ; 0187B4 01C65D 01C69E 01C6B8 01C709 01C71C 01C71E 01C726 01C8D2 01C916 01D387 01D394 01D5B9 01D98F 01D9DF 01D9E6 01DA03 01DC0B 01DEFC 01DF3C 01E022 01E048 01E07D 01E0FD 01E15E 01E5E4 01E602 01E88E 01EBE4 01ED1D 01EDC7 01F458 01F57E 01FEF7 



; 
ram_00EA                                = $00EA ; 01D946 01D9E4 01E35F 01E373 01E49A 01E4AE 01FEF7 
ram_00EB                                = $00EB ; 01FEF7 
ram_00EC                                = $00EC ; 01FEF7 
ram_00ED                                = $00ED ; 01FEF7 
ram_00EE                                = $00EE ; 01C016 01C114 01C11E 01C6F7 01C6FF 01C737 01D3AC 01D3BD 01DFC8 01DFCD 01E1F2 01E1F7 01E260 01E265 01E8E3 01EAB4 01ECAE 01EDA2 01EDA9 01EFDF 01F2ED 01F42B 01F4D2 01FEF7 
ram_00EF                                = $00EF ; 018016 018046 018048 01FEF7 
ram_00F0                                = $00F0 ; 01FEF7 
ram_00F1                                = $00F1 ; 01FEF7 
ram_00F2                                = $00F2 ; 01FEF7 
ram_00F3                                = $00F3 ; 01FEF7 
ram_00F4                                = $00F4 ; 01FEF7 
ram_00F5                                = $00F5 ; 01FEF7 
ram_00F6                                = $00F6 ; 01FEF7 

ram_copy_scroll_X                       = $00F7 ; 01A89B 01C6D8 01C95D 01DCB1 01DCC2 01DD1B 01DD29 01DFDB 01E90C 01FEF7 
ram_copy_scroll_Y                       = $00F8 ; 01C6E6 01C95F 01DE01 01DE0F 01DE9E 01DEB2 01E90E 01FEF7 

; 01 = camera is moving right/up, 02 = camera is moving left/down
ram_camera_direction                    = $00F9 ; 013654 01C995 01DD54 01DD79 01DE28 01DEEE 01E108 01E179 01E9FA 01FEF7 

ram_scroll_Y_lo                         = $00FA ; 0100A9 0100CF 01361F 013631 0181F9 01826B 018662 018AB9 018AFC 01C07C 01C6E4 01C886 01D498 01D4DF 01D550 01DD71 01DD91 01DDD0 01DDD2 01DDDA 01DDF8 01DDFE 01DE68 01DE6D 01DE73 01DE9C 01E1A3 01E1A8 01E1B0 01E1D1 01E1F9 01E215 01E21E 01E223 01E229 01E267 01E2C9 01E2F4 01E570 01E90A 01EAD5 01EB67 01EBF8 01ECD9 01F026 01F447 01F50A 01F747 01F7C5 01F7E2 01FAE3 01FAEF 01FB35 01FB4B 01FC16 01FC2C 01FD26 01FD32 01FEF7 
ram_scroll_Y_hi                         = $00FB ; 0100B8 013613 0137A4 0137AC 018205 018277 01C6A7 01C86D 01D55C 01DDE2 01DDF2 01DE7B 01DE85 01DE8E 01DE98 01E051 01E0E5 01E12E 01E166 01E1B2 01E22B 01E56C 01E588 01E5A0 01E5AC 01E941 01ECDB 01F02A 01F449 01F50C 01FB41 01FB57 01FC22 01FC38 01FEF7 
ram_scroll_X_lo                         = $00FC ; 0100E3 013645 01A899 01C077 01C6D6 01C884 01DC6F 01DC96 01DC98 01DCAE 01DCF8 01DCFD 01DD13 01DF6C 01DF71 01DFD9 01DFDD 01E0F6 01E13F 01E150 01E908 01EACF 01EB65 01EBFE 01ECD5 01F024 01F443 01F506 01FEF7 
ram_scroll_X_hi                         = $00FD ; 0100EA 013610 0137B4 0137BC 01C086 01C6A4 01C863 01C875 01C879 01D7EA 01D82D 01DC9B 01DC9F 01DD00 01DD06 01DD19 01DD7D 01DF73 01DF77 01E04E 01E0E0 01E129 01E147 01E164 01E92F 01E953 01EAD2 01EAEB 01EBFB 01ECD7 01F028 01F445 01F508 01FEF7 

ram_for_2001                            = $00FE ; 01C081 01C118 01C122 01FEF7 01FF1E 
ram_for_2000                            = $00FF ; 01C01C 01C08A 01C189 01C27B 01C64C 01FEF7 01FF44 



; 0100-01FF (100) stack
ram_0100                                = $0100 ; 01C92E 01E741 01FEFA 
ram_0101                                = $0101 ; 01C92E 01E741 01FEFA 
ram_0102                                = $0102 ; 01C92E 01E741 01FEFA 
ram_0103                                = $0103 ; 01C92E 01E032 01E741 01FEFA 
ram_0104                                = $0104 ; 01FEFA 
ram_0105                                = $0105 ; 01FEFA 
ram_0106                                = $0106 ; 01C935 01E769 01E76C 01E776 01E77B 01FEFA 
ram_0107                                = $0107 ; 01C935 01E769 01E76C 01E776 01E77B 01FEFA 
ram_0108                                = $0108 ; 01FEFA 
ram_0109                                = $0109 ; 01FEFA 
ram_010A                                = $010A ; 01C938 01E759 01E75C 01E766 01FEFA 
ram_010B                                = $010B ; 01C938 01E759 01E75C 01E766 01FEFA 
ram_010C                                = $010C ; 01FEFA 
ram_010D                                = $010D ; 01FEFA 
ram_010E                                = $010E ; 01FEFA 
ram_010F                                = $010F ; 01FEFA 
ram_0110                                = $0110 ; 01C947 01D91D 01D925 01E5EA 01E5F4 01E7D2 01FEFA 
ram_0111                                = $0111 ; 01C947 01D920 01D92C 01E5ED 01E5FB 01E7D7 01FEFA 
ram_0112                                = $0112 ; 01C947 01D91D 01D925 01E5F4 01E7D2 01FEFA 
ram_0113                                = $0113 ; 01C947 01D920 01D92C 01E5FB 01E7D7 01FEFA 
ram_0114                                = $0114 ; 01C947 01D91D 01D925 01E5F4 01E7D2 01FEFA 
ram_0115                                = $0115 ; 01C947 01D920 01D92C 01E5FB 01E7D7 01FEFA 
ram_0116                                = $0116 ; 01C947 01D91D 01D925 01E5F4 01E7D2 01FEFA 
ram_0117                                = $0117 ; 01C947 01D920 01D92C 01E5FB 01E7D7 01FEFA 
ram_0118                                = $0118 ; 01C947 01D91D 01D925 01E5F4 01E7D2 01FEFA 
ram_0119                                = $0119 ; 01C947 01D920 01D92C 01E5FB 01E7D7 01FEFA 
ram_011A                                = $011A ; 01C947 01D91D 01D925 01E5F4 01E7D2 01FEFA 
ram_011B                                = $011B ; 01C947 01D920 01D92C 01E5FB 01E7D7 01FEFA 
ram_011C                                = $011C ; 01C947 01D91D 01D925 01E5F4 01E7D2 01FEFA 
ram_011D                                = $011D ; 01C947 01D920 01D92C 01E5FB 01E7D7 01FEFA 
ram_011E                                = $011E ; 01C947 01D91D 01E5F4 01FEFA 
ram_011F                                = $011F ; 01C947 01D920 01FEFA 
ram_0120                                = $0120 ; 01C947 01D91D 01E5F4 01FEFA 
ram_0121                                = $0121 ; 01C947 01D920 01FEFA 
ram_0122                                = $0122 ; 01C947 01D91D 01E5F4 01FEFA 
ram_0123                                = $0123 ; 01C947 01D920 01FEFA 
ram_0124                                = $0124 ; 01C947 01D91D 01E5F4 01FEFA 
ram_0125                                = $0125 ; 01C947 01D920 01FEFA 
ram_0126                                = $0126 ; 01C947 01D91D 01E5F4 01FEFA 
ram_0127                                = $0127 ; 01C947 01D920 01FEFA 
ram_0128                                = $0128 ; 01C947 01D91D 01E5F4 01FEFA 
ram_0129                                = $0129 ; 01C947 01D920 01FEFA 
ram_012A                                = $012A ; 01C947 01D91D 01E5F4 01FEFA 
ram_012B                                = $012B ; 01C947 01D920 01FEFA 
ram_012C                                = $012C ; 01C947 01D91D 01E5F4 01FEFA 
ram_012D                                = $012D ; 01C947 01D920 01FEFA 
ram_012E                                = $012E ; 01C947 01D91D 01E5F4 01FEFA 
ram_012F                                = $012F ; 01C947 01D920 01FEFA 
ram_0130                                = $0130 ; 013787 01C94A 01FE8A 01FE91 01FEFA 
ram_0131                                = $0131 ; 013787 01C94A 01FE8A 01FE91 01FEFA 
ram_0132                                = $0132 ; 013787 01C94A 01FE8A 01FE91 01FEFA 
ram_0133                                = $0133 ; 013787 01C94A 01FE8A 01FE91 01FEFA 
ram_0134                                = $0134 ; 013787 01C94A 01FE8A 01FE91 01FEFA 
ram_0135                                = $0135 ; 013787 01C94A 01FE8A 01FE91 01FEFA 
ram_0136                                = $0136 ; 013787 01C94A 01FE8A 01FE91 01FEFA 
ram_0137                                = $0137 ; 01C94A 01FEFA 
ram_0138                                = $0138 ; 01C94A 01FEFA 
ram_0139                                = $0139 ; 01C94A 01FEFA 
ram_013A                                = $013A ; 01C94A 01FEFA 
ram_013B                                = $013B ; 01C94A 01FEFA 
ram_013C                                = $013C ; 01C94A 01FEFA 
ram_013D                                = $013D ; 01C94A 01FEFA 
ram_013E                                = $013E ; 01C94A 01FEFA 
ram_013F                                = $013F ; 01C94A 01FEFA 
ram_0140                                = $0140 ; 01C94A 01FEFA 
ram_0141                                = $0141 ; 01C94A 01FEFA 
ram_0142                                = $0142 ; 01C94A 01FEFA 
ram_0143                                = $0143 ; 01C94A 01FEFA 
ram_0144                                = $0144 ; 01C94A 01FEFA 
ram_0145                                = $0145 ; 01C94A 01FEFA 
ram_0146                                = $0146 ; 01C94A 01FEFA 
ram_0147                                = $0147 ; 01C94A 01FEFA 
ram_0148                                = $0148 ; 01C94A 01FEFA 
ram_0149                                = $0149 ; 01C94A 01FEFA 
ram_014A                                = $014A ; 01C94A 01FEFA 
ram_014B                                = $014B ; 01C94A 01FEFA 
ram_014C                                = $014C ; 01C94A 01FEFA 
ram_014D                                = $014D ; 01C94A 01FEFA 
ram_014E                                = $014E ; 01C94A 01FEFA 
ram_014F                                = $014F ; 01C94A 01FE8A 01FE91 01FEFA 
ram_0150                                = $0150 ; 01FEFA 
ram_0151                                = $0151 ; 01FEFA 
ram_0152                                = $0152 ; 01FEFA 
ram_0153                                = $0153 ; 01FEFA 
ram_0154                                = $0154 ; 01FEFA 
ram_0155                                = $0155 ; 01FEFA 
ram_0156                                = $0156 ; 01FEFA 
ram_0157                                = $0157 ; 01FEFA 
ram_0158                                = $0158 ; 01FEFA 
ram_0159                                = $0159 ; 01FEFA 
ram_015A                                = $015A ; 01FEFA 
ram_015B                                = $015B ; 01FEFA 
ram_015C                                = $015C ; 01FEFA 
ram_015D                                = $015D ; 01FEFA 
ram_015E                                = $015E ; 01FEFA 
ram_015F                                = $015F ; 01FEFA 
ram_0160                                = $0160 ; 01FEFA 
ram_0161                                = $0161 ; 01FEFA 
ram_0162                                = $0162 ; 01FEFA 
ram_0163                                = $0163 ; 01FEFA 
ram_0164                                = $0164 ; 01FEFA 
ram_0165                                = $0165 ; 01FEFA 
ram_0166                                = $0166 ; 01FEFA 
ram_0167                                = $0167 ; 01FEFA 
ram_0168                                = $0168 ; 01FEFA 
ram_0169                                = $0169 ; 01FEFA 
ram_016A                                = $016A ; 01FEFA 
ram_016B                                = $016B ; 01FEFA 
ram_016C                                = $016C ; 01FEFA 
ram_016D                                = $016D ; 01FEFA 
ram_016E                                = $016E ; 01FEFA 
ram_016F                                = $016F ; 01FEFA 
ram_0170                                = $0170 ; 01FEFA 
ram_0171                                = $0171 ; 01FEFA 
ram_0172                                = $0172 ; 01FEFA 
ram_0173                                = $0173 ; 01FEFA 
ram_0174                                = $0174 ; 01FEFA 
ram_0175                                = $0175 ; 01FEFA 
ram_0176                                = $0176 ; 01FEFA 
ram_0177                                = $0177 ; 01FEFA 
ram_0178                                = $0178 ; 01FEFA 
ram_0179                                = $0179 ; 01FEFA 
ram_017A                                = $017A ; 01FEFA 
ram_017B                                = $017B ; 01FEFA 
ram_017C                                = $017C ; 01FEFA 
ram_017D                                = $017D ; 01FEFA 
ram_017E                                = $017E ; 01FEFA 
ram_017F                                = $017F ; 01FEFA 
ram_0180                                = $0180 ; 01FEFA 
ram_0181                                = $0181 ; 01FEFA 
ram_0182                                = $0182 ; 01FEFA 
ram_0183                                = $0183 ; 01FEFA 
ram_0184                                = $0184 ; 01FEFA 
ram_0185                                = $0185 ; 01FEFA 
ram_0186                                = $0186 ; 01FEFA 
ram_0187                                = $0187 ; 01FEFA 
ram_0188                                = $0188 ; 01FEFA 
ram_0189                                = $0189 ; 01FEFA 
ram_018A                                = $018A ; 01FEFA 
ram_018B                                = $018B ; 01FEFA 
ram_018C                                = $018C ; 01FEFA 
ram_018D                                = $018D ; 01FEFA 
ram_018E                                = $018E ; 01FEFA 
ram_018F                                = $018F ; 01FEFA 
ram_0190                                = $0190 ; 01FEFA 
ram_0191                                = $0191 ; 01FEFA 
ram_0192                                = $0192 ; 01FEFA 
ram_0193                                = $0193 ; 01FEFA 
ram_0194                                = $0194 ; 01FEFA 
ram_0195                                = $0195 ; 01FEFA 
ram_0196                                = $0196 ; 01FEFA 
ram_0197                                = $0197 ; 01FEFA 
ram_0198                                = $0198 ; 01FEFA 
ram_0199                                = $0199 ; 01FEFA 
ram_019A                                = $019A ; 01FEFA 
ram_019B                                = $019B ; 01FEFA 
ram_019C                                = $019C ; 01FEFA 
ram_019D                                = $019D ; 01FEFA 
ram_019E                                = $019E ; 01FEFA 
ram_019F                                = $019F ; 01FEFA 
ram_01A0                                = $01A0 ; 01FEFA 
ram_01A1                                = $01A1 ; 01FEFA 
ram_01A2                                = $01A2 ; 01FEFA 
ram_01A3                                = $01A3 ; 01FEFA 
ram_01A4                                = $01A4 ; 01FEFA 
ram_01A5                                = $01A5 ; 01FEFA 
ram_01A6                                = $01A6 ; 01FEFA 
ram_01A7                                = $01A7 ; 01FEFA 
ram_01A8                                = $01A8 ; 01FEFA 
ram_01A9                                = $01A9 ; 01FEFA 
ram_01AA                                = $01AA ; 01FEFA 
ram_01AB                                = $01AB ; 01FEFA 
ram_01AC                                = $01AC ; 01FEFA 
ram_01AD                                = $01AD ; 01FEFA 
ram_01AE                                = $01AE ; 01FEFA 
ram_01AF                                = $01AF ; 01FEFA 
ram_01B0                                = $01B0 ; 01FEFA 
ram_01B1                                = $01B1 ; 01FEFA 
ram_01B2                                = $01B2 ; 01FEFA 
ram_01B3                                = $01B3 ; 01FEFA 
ram_01B4                                = $01B4 ; 01FEFA 
ram_01B5                                = $01B5 ; 01FEFA 
ram_01B6                                = $01B6 ; 01FEFA 
ram_01B7                                = $01B7 ; 01FEFA 
ram_01B8                                = $01B8 ; 01FEFA 
ram_01B9                                = $01B9 ; 01FEFA 
ram_01BA                                = $01BA ; 01FEFA 
ram_01BB                                = $01BB ; 01FEFA 
ram_01BC                                = $01BC ; 01FEFA 
ram_01BD                                = $01BD ; 01FEFA 
ram_01BE                                = $01BE ; 01FEFA 
ram_01BF                                = $01BF ; 01FEFA 
ram_01C0                                = $01C0 ; 01FEFA 
ram_01C1                                = $01C1 ; 01FEFA 
ram_01C2                                = $01C2 ; 01FEFA 
ram_01C3                                = $01C3 ; 01FEFA 
ram_01C4                                = $01C4 ; 01FEFA 
ram_01C5                                = $01C5 ; 01FEFA 
ram_01C6                                = $01C6 ; 01FEFA 
ram_01C7                                = $01C7 ; 01FEFA 
ram_01C8                                = $01C8 ; 01FEFA 
ram_01C9                                = $01C9 ; 01FEFA 
ram_01CA                                = $01CA ; 01FEFA 
ram_01CB                                = $01CB ; 01FEFA 
ram_01CC                                = $01CC ; 01FEFA 
ram_01CD                                = $01CD ; 01FEFA 
ram_01CE                                = $01CE ; 01FEFA 
ram_01CF                                = $01CF ; 01FEFA 
ram_01D0                                = $01D0 ; 01FEFA 
ram_01D1                                = $01D1 ; 01FEFA 
ram_01D2                                = $01D2 ; 01FEFA 
ram_01D3                                = $01D3 ; 01FEFA 
ram_01D4                                = $01D4 ; 01FEFA 
ram_01D5                                = $01D5 ; 01FEFA 
ram_01D6                                = $01D6 ; 01FEFA 
ram_01D7                                = $01D7 ; 01FEFA 
ram_01D8                                = $01D8 ; 01FEFA 
ram_01D9                                = $01D9 ; 01FEFA 
ram_01DA                                = $01DA ; 01FEFA 
ram_01DB                                = $01DB ; 01FEFA 
ram_01DC                                = $01DC ; 01FEFA 
ram_01DD                                = $01DD ; 01FEFA 
ram_01DE                                = $01DE ; 01FEFA 
ram_01DF                                = $01DF ; 01FEFA 
ram_01E0                                = $01E0 ; 01FEFA 
ram_01E1                                = $01E1 ; 01FEFA 
ram_01E2                                = $01E2 ; 01FEFA 
ram_01E3                                = $01E3 ; 01FEFA 
ram_01E4                                = $01E4 ; 01FEFA 
ram_01E5                                = $01E5 ; 01FEFA 
ram_01E6                                = $01E6 ; 01FEFA 
ram_01E7                                = $01E7 ; 01FEFA 
ram_01E8                                = $01E8 ; 01FEFA 
ram_01E9                                = $01E9 ; 01FEFA 
ram_01EA                                = $01EA ; 01FEFA 
ram_01EB                                = $01EB ; 01FEFA 
ram_01EC                                = $01EC ; 01FEFA 
ram_01ED                                = $01ED ; 01FEFA 
ram_01EE                                = $01EE ; 01FEFA 
ram_01EF                                = $01EF ; 01FEFA 
ram_01F0                                = $01F0 ; 01FEFA 
ram_01F1                                = $01F1 ; 01FEFA 
ram_01F2                                = $01F2 ; 01FEFA 
ram_01F3                                = $01F3 ; 01FEFA 
ram_01F4                                = $01F4 ; 01FEFA 
ram_01F5                                = $01F5 ; 01FEFA 
ram_01F6                                = $01F6 ; 01FEFA 
ram_01F7                                = $01F7 ; 01FEFA 
ram_01F8                                = $01F8 ; 01FEFA 
ram_01F9                                = $01F9 ; 01FEFA 
ram_01FA                                = $01FA ; 01FEFA 
ram_01FB                                = $01FB ; 01FEFA 
ram_01FC                                = $01FC ; 01FEFA 
ram_01FD                                = $01FD ; 01FEFA 
ram_01FE                                = $01FE ; 01FEFA 
ram_01FF                                = $01FF ; 01FEFA 



; 0200-02FF (100) OAM sprites
ram_oam                                 = $0200 ; for common links
ram_spr_Y                               = $0200 ; 010067 01C1D4 01C1D9 01F049 01F2F8 01F369 01F510 01F563 01FEFD 
ram_spr_T                               = $0201 ; 010067 010076 01F04F 01F36F 01F515 01FEFD 
ram_spr_A                               = $0202 ; 010067 01F055 01F375 01F51A 01FEFD 
ram_spr_X                               = $0203 ; 010067 01F05B 01F37B 01F51F 01FEFD 
; ram_0204                              = $0204 ; 010067 010231 01C1D9 01F049 01F369 01FEFD 
; ram_0205                              = $0205 ; 010067 010076 010229 01F04F 01F36F 01FEFD 
; ram_0206                              = $0206 ; 010067 010245 01F055 01F375 01FEFD 
; ram_0207                              = $0207 ; 010067 01024D 01F05B 01F37B 01FEFD 
; ram_0208                              = $0208 ; 010067 010231 01C1D9 01F049 01F369 01FEFD 
; ram_0209                              = $0209 ; 010067 010076 010229 01F04F 01F36F 01FEFD 
; ram_020A                              = $020A ; 010067 010245 01F055 01F375 01FEFD 
; ram_020B                              = $020B ; 010067 01024D 01F05B 01F37B 01FEFD 
; ram_020C                              = $020C ; 010067 010231 01C1D9 01F049 01F369 01FEFD 
; ram_020D                              = $020D ; 010067 010076 010229 01F04F 01F36F 01FEFD 
; ram_020E                              = $020E ; 010067 010245 01F055 01F375 01FEFD 
; ram_020F                              = $020F ; 010067 01024D 01F05B 01F37B 01FEFD 
; ram_0210                              = $0210 ; 010067 010231 01C1D9 01F049 01F369 01FEFD 
; ram_0211                              = $0211 ; 010067 010076 010229 01F04F 01F36F 01FEFD 
; ram_0212                              = $0212 ; 010067 010245 01F055 01F375 01FEFD 
; ram_0213                              = $0213 ; 010067 01024D 01F05B 01F37B 01FEFD 
; ram_0214                              = $0214 ; 010231 01026A 01C1D9 01F049 01F369 01FEFD 
; ram_0215                              = $0215 ; 010229 01F04F 01F36F 01FEFD 
; ram_0216                              = $0216 ; 010245 01F055 01F375 01FEFD 
; ram_0217                              = $0217 ; 01024D 01F05B 01F37B 01FEFD 
; ram_0218                              = $0218 ; 010231 01026A 01C1D9 01F049 01F369 01FEFD 
; ram_0219                              = $0219 ; 010229 01F04F 01F36F 01FEFD 
; ram_021A                              = $021A ; 010245 01F055 01F375 01FEFD 
; ram_021B                              = $021B ; 01024D 01F05B 01F37B 01FEFD 
; ram_021C                              = $021C ; 010231 01026A 01C1D9 01F049 01F369 01FEFD 
; ram_021D                              = $021D ; 010229 01F04F 01F36F 01FEFD 
; ram_021E                              = $021E ; 010245 01F055 01F375 01FEFD 
; ram_021F                              = $021F ; 01024D 01F05B 01F37B 01FEFD 
; ram_0220                              = $0220 ; 010231 01026A 01C1D9 01F049 01F369 01FEFD 
; ram_0221                              = $0221 ; 010229 01F04F 01F36F 01FEFD 
; ram_0222                              = $0222 ; 010245 01F055 01F375 01FEFD 
; ram_0223                              = $0223 ; 01024D 01F05B 01F37B 01FEFD 
; ram_0224                              = $0224 ; 010231 01026A 01C1D9 01F049 01F369 01FEFD 
; ram_0225                              = $0225 ; 010229 01F04F 01F36F 01FEFD 
; ram_0226                              = $0226 ; 010245 01F055 01F375 01FEFD 
; ram_0227                              = $0227 ; 01024D 01F05B 01F37B 01FEFD 
; ram_0228                              = $0228 ; 010231 01026A 01C1D9 01F049 01F369 01FEFD 
; ram_0229                              = $0229 ; 010229 01F04F 01F36F 01FEFD 
; ram_022A                              = $022A ; 010245 01F055 01F375 01FEFD 
; ram_022B                              = $022B ; 01024D 01F05B 01F37B 01FEFD 
; ram_022C                              = $022C ; 010231 01026A 01C1D9 01F049 01F369 01FEFD 
; ram_022D                              = $022D ; 010229 01F04F 01F36F 01FEFD 
; ram_022E                              = $022E ; 010245 01F055 01F375 01FEFD 
; ram_022F                              = $022F ; 01024D 01F05B 01F37B 01FEFD 
; ram_0230                              = $0230 ; 010231 01026A 01C1D9 01F049 01F369 01FEFD 
; ram_0231                              = $0231 ; 010229 01F04F 01F36F 01FEFD 
; ram_0232                              = $0232 ; 010245 01F055 01F375 01FEFD 
; ram_0233                              = $0233 ; 01024D 01F05B 01F37B 01FEFD 
; ram_0234                              = $0234 ; 010231 01026A 01C1D9 01F049 01F369 01FEFD 
; ram_0235                              = $0235 ; 010229 01F04F 01F36F 01FEFD 
; ram_0236                              = $0236 ; 010245 01F055 01F375 01FEFD 
; ram_0237                              = $0237 ; 01024D 01F05B 01F37B 01FEFD 
; ram_0238                              = $0238 ; 010231 01026A 01C1D9 01F049 01F369 01FEFD 
; ram_0239                              = $0239 ; 010229 01F04F 01F36F 01FEFD 
; ram_023A                              = $023A ; 010245 01F055 01F375 01FEFD 
; ram_023B                              = $023B ; 01024D 01F05B 01F37B 01FEFD 
; ram_023C                              = $023C ; 010231 01026A 01C1D9 01F049 01F369 01FEFD 
; ram_023D                              = $023D ; 010229 01F04F 01F36F 01FEFD 
; ram_023E                              = $023E ; 010245 01F055 01F375 01FEFD 
; ram_023F                              = $023F ; 01024D 01F05B 01F37B 01FEFD 
; ram_0240                              = $0240 ; 010231 01026A 01C1D9 01F049 01F369 01FEFD 
; ram_0241                              = $0241 ; 010229 01F04F 01F36F 01FEFD 
; ram_0242                              = $0242 ; 010245 01F055 01F375 01FEFD 
; ram_0243                              = $0243 ; 01024D 01F05B 01F37B 01FEFD 
; ram_0244                              = $0244 ; 010231 01026A 01C1D9 01F049 01F369 01FEFD 
; ram_0245                              = $0245 ; 010229 01F04F 01F36F 01FEFD 
; ram_0246                              = $0246 ; 010245 01F055 01F375 01FEFD 
; ram_0247                              = $0247 ; 01024D 01F05B 01F37B 01FEFD 
; ram_0248                              = $0248 ; 010231 01026A 01C1D9 01F049 01F369 01FEFD 
; ram_0249                              = $0249 ; 010229 01F04F 01F36F 01FEFD 
; ram_024A                              = $024A ; 010245 01F055 01F375 01FEFD 
; ram_024B                              = $024B ; 01024D 01F05B 01F37B 01FEFD 
; ram_024C                              = $024C ; 010231 01026A 01C1D9 01F049 01F369 01FEFD 
; ram_024D                              = $024D ; 010229 01F04F 01F36F 01FEFD 
; ram_024E                              = $024E ; 010245 01F055 01F375 01FEFD 
; ram_024F                              = $024F ; 01024D 01F05B 01F37B 01FEFD 
; ram_0250                              = $0250 ; 010231 01026A 01C1D9 01F049 01F369 01FEFD 
; ram_0251                              = $0251 ; 010229 01F04F 01F36F 01FEFD 
; ram_0252                              = $0252 ; 010245 01F055 01F375 01FEFD 
; ram_0253                              = $0253 ; 01024D 01F05B 01F37B 01FEFD 
; ram_0254                              = $0254 ; 010231 01026A 01C1D9 01F049 01F369 01FEFD 
; ram_0255                              = $0255 ; 010229 01F04F 01F36F 01FEFD 
; ram_0256                              = $0256 ; 010245 01F055 01F375 01FEFD 
; ram_0257                              = $0257 ; 01024D 01F05B 01F37B 01FEFD 
; ram_0258                              = $0258 ; 010231 01026A 01AC23 01C1D9 01F049 01FEFD 
; ram_0259                              = $0259 ; 010229 01AC28 01F04F 01FEFD 
; ram_025A                              = $025A ; 010245 01AC2D 01F055 01FEFD 
; ram_025B                              = $025B ; 01024D 01AC32 01AC4D 01F05B 01FEFD 
; ram_025C                              = $025C ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_025D                              = $025D ; 010229 01F04F 01FEFD 
; ram_025E                              = $025E ; 010245 01F055 01FEFD 
; ram_025F                              = $025F ; 01024D 01F05B 01FEFD 
; ram_0260                              = $0260 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_0261                              = $0261 ; 010229 01F04F 01FEFD 
; ram_0262                              = $0262 ; 010245 01F055 01FEFD 
; ram_0263                              = $0263 ; 01024D 01F05B 01FEFD 
; ram_0264                              = $0264 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_0265                              = $0265 ; 010229 01F04F 01FEFD 
; ram_0266                              = $0266 ; 010245 01F055 01FEFD 
; ram_0267                              = $0267 ; 01024D 01F05B 01FEFD 
; ram_0268                              = $0268 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_0269                              = $0269 ; 010229 01F04F 01FEFD 
; ram_026A                              = $026A ; 010245 01F055 01FEFD 
; ram_026B                              = $026B ; 01024D 01F05B 01FEFD 
; ram_026C                              = $026C ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_026D                              = $026D ; 010229 01F04F 01FEFD 
; ram_026E                              = $026E ; 010245 01F055 01FEFD 
; ram_026F                              = $026F ; 01024D 01F05B 01FEFD 
; ram_0270                              = $0270 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_0271                              = $0271 ; 010229 01F04F 01FEFD 
; ram_0272                              = $0272 ; 010245 01F055 01FEFD 
; ram_0273                              = $0273 ; 01024D 01F05B 01FEFD 
; ram_0274                              = $0274 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_0275                              = $0275 ; 010229 01F04F 01FEFD 
; ram_0276                              = $0276 ; 010245 01F055 01FEFD 
; ram_0277                              = $0277 ; 01024D 01F05B 01FEFD 
; ram_0278                              = $0278 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_0279                              = $0279 ; 010229 01F04F 01FEFD 
; ram_027A                              = $027A ; 010245 01F055 01FEFD 
; ram_027B                              = $027B ; 01024D 01F05B 01FEFD 
; ram_027C                              = $027C ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_027D                              = $027D ; 010229 01F04F 01FEFD 
; ram_027E                              = $027E ; 010245 01F055 01FEFD 
; ram_027F                              = $027F ; 01024D 01F05B 01FEFD 
; ram_0280                              = $0280 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_0281                              = $0281 ; 010229 01F04F 01FEFD 
; ram_0282                              = $0282 ; 010245 01F055 01FEFD 
; ram_0283                              = $0283 ; 01024D 01F05B 01FEFD 
; ram_0284                              = $0284 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_0285                              = $0285 ; 010229 01F04F 01FEFD 
; ram_0286                              = $0286 ; 010245 01F055 01FEFD 
; ram_0287                              = $0287 ; 01024D 01F05B 01FEFD 
; ram_0288                              = $0288 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_0289                              = $0289 ; 010229 01F04F 01FEFD 
; ram_028A                              = $028A ; 010245 01F055 01FEFD 
; ram_028B                              = $028B ; 01024D 01F05B 01FEFD 
; ram_028C                              = $028C ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_028D                              = $028D ; 010229 01F04F 01FEFD 
; ram_028E                              = $028E ; 010245 01F055 01FEFD 
; ram_028F                              = $028F ; 01024D 01F05B 01FEFD 
; ram_0290                              = $0290 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_0291                              = $0291 ; 010229 01F04F 01FEFD 
; ram_0292                              = $0292 ; 010245 01F055 01FEFD 
; ram_0293                              = $0293 ; 01024D 01F05B 01FEFD 
; ram_0294                              = $0294 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_0295                              = $0295 ; 010229 01F04F 01FEFD 
; ram_0296                              = $0296 ; 010245 01F055 01FEFD 
; ram_0297                              = $0297 ; 01024D 01F05B 01FEFD 
; ram_0298                              = $0298 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_0299                              = $0299 ; 010229 01F04F 01FEFD 
; ram_029A                              = $029A ; 010245 01F055 01FEFD 
; ram_029B                              = $029B ; 01024D 01F05B 01FEFD 
; ram_029C                              = $029C ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_029D                              = $029D ; 010229 01F04F 01FEFD 
; ram_029E                              = $029E ; 010245 01F055 01FEFD 
; ram_029F                              = $029F ; 01024D 01F05B 01FEFD 
; ram_02A0                              = $02A0 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_02A1                              = $02A1 ; 010229 01F04F 01FEFD 
; ram_02A2                              = $02A2 ; 010245 01F055 01FEFD 
; ram_02A3                              = $02A3 ; 01024D 01F05B 01FEFD 
; ram_02A4                              = $02A4 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_02A5                              = $02A5 ; 010229 01F04F 01FEFD 
; ram_02A6                              = $02A6 ; 010245 01F055 01FEFD 
; ram_02A7                              = $02A7 ; 01024D 01F05B 01FEFD 
; ram_02A8                              = $02A8 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_02A9                              = $02A9 ; 010229 01F04F 01FEFD 
; ram_02AA                              = $02AA ; 010245 01F055 01FEFD 
; ram_02AB                              = $02AB ; 01024D 01F05B 01FEFD 
; ram_02AC                              = $02AC ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_02AD                              = $02AD ; 010229 01F04F 01FEFD 
; ram_02AE                              = $02AE ; 010245 01F055 01FEFD 
; ram_02AF                              = $02AF ; 01024D 01F05B 01FEFD 
; ram_02B0                              = $02B0 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_02B1                              = $02B1 ; 010229 01F04F 01FEFD 
; ram_02B2                              = $02B2 ; 010245 01F055 01FEFD 
; ram_02B3                              = $02B3 ; 01024D 01F05B 01FEFD 
; ram_02B4                              = $02B4 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_02B5                              = $02B5 ; 010229 01F04F 01FEFD 
; ram_02B6                              = $02B6 ; 010245 01F055 01FEFD 
; ram_02B7                              = $02B7 ; 01024D 01F05B 01FEFD 
; ram_02B8                              = $02B8 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_02B9                              = $02B9 ; 010229 01F04F 01FEFD 
; ram_02BA                              = $02BA ; 010245 01F055 01FEFD 
; ram_02BB                              = $02BB ; 01024D 01F05B 01FEFD 
; ram_02BC                              = $02BC ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_02BD                              = $02BD ; 010229 01F04F 01FEFD 
; ram_02BE                              = $02BE ; 010245 01F055 01FEFD 
; ram_02BF                              = $02BF ; 01024D 01F05B 01FEFD 
; ram_02C0                              = $02C0 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_02C1                              = $02C1 ; 010229 01F04F 01FEFD 
; ram_02C2                              = $02C2 ; 010245 01F055 01FEFD 
; ram_02C3                              = $02C3 ; 01024D 01F05B 01FEFD 
; ram_02C4                              = $02C4 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_02C5                              = $02C5 ; 010229 01F04F 01FEFD 
; ram_02C6                              = $02C6 ; 010245 01F055 01FEFD 
; ram_02C7                              = $02C7 ; 01024D 01F05B 01FEFD 
; ram_02C8                              = $02C8 ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_02C9                              = $02C9 ; 010229 01F04F 01FEFD 
; ram_02CA                              = $02CA ; 010245 01F055 01FEFD 
; ram_02CB                              = $02CB ; 01024D 01F05B 01FEFD 
; ram_02CC                              = $02CC ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_02CD                              = $02CD ; 010229 01F04F 01FEFD 
; ram_02CE                              = $02CE ; 010245 01F055 01FEFD 
; ram_02CF                              = $02CF ; 01024D 01F05B 01FEFD 
; ram_02D0                              = $02D0 ; 010231 01C1D9 01F049 01FEFD 
; ram_02D1                              = $02D1 ; 010229 01F04F 01FEFD 
; ram_02D2                              = $02D2 ; 010245 01F055 01FEFD 
; ram_02D3                              = $02D3 ; 01024D 01F05B 01FEFD 
; ram_02D4                              = $02D4 ; 010231 01C1D9 01F049 01FEFD 
; ram_02D5                              = $02D5 ; 010229 01F04F 01FEFD 
; ram_02D6                              = $02D6 ; 010245 01F055 01FEFD 
; ram_02D7                              = $02D7 ; 01024D 01F05B 01FEFD 
; ram_02D8                              = $02D8 ; 010231 01C1D9 01F049 01FEFD 
; ram_02D9                              = $02D9 ; 010229 01F04F 01FEFD 
; ram_02DA                              = $02DA ; 010245 01F055 01FEFD 
; ram_02DB                              = $02DB ; 01024D 01F05B 01FEFD 
; ram_02DC                              = $02DC ; 010231 01026A 01C1D9 01F049 01FEFD 
; ram_02DD                              = $02DD ; 010229 01F04F 01FEFD 
; ram_02DE                              = $02DE ; 010245 01F055 01FEFD 
; ram_02DF                              = $02DF ; 01024D 01F05B 01FEFD 
; ram_02E0                              = $02E0 ; 010231 01026A 01C1D9 01FEFD 
; ram_02E1                              = $02E1 ; 010229 01FEFD 
; ram_02E2                              = $02E2 ; 010245 01FEFD 
; ram_02E3                              = $02E3 ; 01024D 01FEFD 
; ram_02E4                              = $02E4 ; 010231 01C1D9 01FEFD 
; ram_02E5                              = $02E5 ; 010229 01FEFD 
; ram_02E6                              = $02E6 ; 010245 01FEFD 
; ram_02E7                              = $02E7 ; 01024D 01FEFD 
; ram_02E8                              = $02E8 ; 010231 01C1D9 01FEFD 
; ram_02E9                              = $02E9 ; 010229 01FEFD 
; ram_02EA                              = $02EA ; 010245 01FEFD 
; ram_02EB                              = $02EB ; 01024D 01FEFD 
; ram_02EC                              = $02EC ; 010231 01C1D9 01FEFD 
; ram_02ED                              = $02ED ; 010229 01FEFD 
; ram_02EE                              = $02EE ; 010245 01FEFD 
; ram_02EF                              = $02EF ; 01024D 01FEFD 
; ram_02F0                              = $02F0 ; 010231 01C1D9 01FEFD 
; ram_02F1                              = $02F1 ; 010229 01FEFD 
; ram_02F2                              = $02F2 ; 010245 01FEFD 
; ram_02F3                              = $02F3 ; 01024D 01FEFD 
; ram_02F4                              = $02F4 ; 010231 01C1D9 01FEFD 
; ram_02F5                              = $02F5 ; 010229 01FEFD 
; ram_02F6                              = $02F6 ; 010245 01FEFD 
; ram_02F7                              = $02F7 ; 01024D 01FEFD 
; ram_02F8                              = $02F8 ; 010231 01C1D9 01FEFD 
; ram_02F9                              = $02F9 ; 010229 01FEFD 
; ram_02FA                              = $02FA ; 010245 01FEFD 
; ram_02FB                              = $02FB ; 01024D 01FEFD 
; ram_02FC                              = $02FC ; 010231 01C1D9 01FEFD 
; ram_02FD                              = $02FD ; 010229 01FEFD 
; ram_02FE                              = $02FE ; 010245 01FEFD 
; ram_02FF                              = $02FF ; 01024D 01FEFD 



; 0300-030F (10) 
; .... ...x = ???
; .... ..x. = ???
; .x.. .... = ???
; x... .... = does exist if 1
ram_obj_flags                           = $0300 ; 010021 010042 01C980 01FF00 
; ram_0301                              = $0301 ; 010021 010042 0101DE 01801C 0181CB 01C1E7 01D01B 01FBB7 01FC7B 01FF00 
; ram_0302                              = $0302 ; 010021 010042 010104 0101DE 01801C 0180FB 0181CB 018B3E 01947E 01977F 0197FD 01990C 01C1E7 01D01B 01FBB7 01FC7B 01FF00 
; ram_0303                              = $0303 ; 010021 010042 01801C 018212 0187BC 018AC3 018DE1 0192C3 01947E 019DE0 01A091 01A103 01A12F 01A247 01A446 01A762 01A7C9 01A8B4 01C1E7 01D4B0 01D567 01D590 01FA24 01FA7C 01FF00 
; ram_0304                              = $0304 ; 010021 010042 01801C 018212 0187BC 018AC3 018DE1 0192C3 01947E 019DE0 01A091 01A103 01A12F 01A247 01A446 01A762 01A7C9 01A8B4 01C1E7 01D4B0 01D567 01D590 01FA24 01FA7C 01FF00 
; ram_0305                              = $0305 ; 010021 010042 010104 0137C6 01801C 0181A8 018212 0187BC 0188A6 0188CA 018AC3 018DE1 0192C3 01947E 019DE0 01A091 01A103 01A12F 01A247 01A446 01A762 01A7C9 01A8B4 01C1E7 01D4B0 01D567 01D590 01FA24 01FA7C 01FC7B 01FE56 01FE66 01FF00 
; ram_0306                              = $0306 ; 010021 010042 010104 0101DE 0137C6 01801C 0181A8 018212 018607 0187BC 01888B 0188A6 0188CA 018AC3 018DE1 018EA3 018EAF 019056 0192C3 01947E 019DE0 01A091 01A103 01A12F 01A247 01A446 01A762 01A7C9 01A8B4 01C1E7 01D4B0 01D567 01D590 01FA24 01FA7C 01FC7B 01FE56 01FE66 01FF00 
; ram_0307                              = $0307 ; 010021 010042 010104 0101DE 0137C6 01801C 0181A8 018212 018607 0187BC 01888B 0188A6 0188CA 018A24 018A2B 018A75 018A83 018AC3 018DE1 018EA3 018EAF 0191E9 019295 0192C3 0193C0 01947E 01976D 0197E5 01988E 019893 0198BD 0198C2 0198C7 0198CC 01996D 01999B 019DE0 01A091 01A103 01A12F 01A247 01A446 01A55F 01A579 01A59F 01A762 01A7C9 01A8B4 01C1E7 01CA45 01CFB5 01D4B0 01D567 01D590 01FA24 01FA7C 01FC7B 01FE56 01FE66 01FF00 
; ram_0308                              = $0308 ; 010021 010042 010104 0101DE 0137C6 01801C 0181A8 018212 0187BC 01888B 0188A6 0188CA 018A24 018A2B 018A75 018A83 018AA5 018AC3 018DE1 018EA3 018EAF 019056 019096 0191E9 019245 019295 0192C3 01930E 0193C0 01947E 01999B 0199B8 019DE0 01A091 01A103 01A12F 01A247 01A334 01A446 01A55F 01A579 01A59F 01A5B8 01A762 01A7C9 01A8B4 01C1E7 01CFB5 01D4B0 01D567 01D590 01FA24 01FA7C 01FC7B 01FE56 01FE66 01FF00 
; ram_0309                              = $0309 ; 010021 010042 010104 0101DE 0137C6 01801C 0181A8 018212 0187BC 01888B 0188A6 0188CA 018A24 018A2B 018A75 018A83 018AA5 018AC3 018CCA 018CD1 018DE1 018EA3 018EAF 019056 01908B 019096 0191E9 019245 01925F 019295 0192C3 01930E 0193C0 01947E 0197E5 01980C 01985B 0198BD 0198C2 01996D 019DE0 01A091 01A103 01A12F 01A247 01A334 01A346 01A37B 01A446 01A55F 01A579 01A59F 01A5B8 01A762 01A7C9 01A8B4 01C1E7 01CFB5 01D4B0 01D567 01D590 01FA24 01FA7C 01FC7B 01FE56 01FE66 01FF00 
; ram_030A                              = $030A ; 010021 010042 010104 0101DE 0137C6 01801C 0181A8 018212 018607 018681 0187BC 01888B 0188A6 0188CA 018A24 018A2B 018A75 018A83 018AA5 018AC3 018B52 018BC8 018BE6 018CC6 018CCA 018CD1 018DE1 018EA3 018EAF 019056 01908B 019096 0191E9 019245 01925F 019295 0192C3 01930E 0193C0 01947E 019664 019687 0196D3 019709 0197E5 01980C 01985B 01988E 019893 0198BD 0198C2 0198C7 0198CC 01996D 01999B 0199B8 019DE0 01A091 01A103 01A12F 01A247 01A334 01A346 01A37B 01A446 01A55F 01A579 01A59F 01A5B8 01A762 01A7C9 01A8B4 01C1E7 01CA45 01CFB5 01D4B0 01D567 01D590 01FA24 01FA7C 01FC7B 01FE56 01FE66 01FF00 
; ram_030B                              = $030B ; 010021 010042 010104 0101DE 0137C6 01801C 0181A8 018212 018607 018681 0187BC 0188A6 0188CA 018A24 018A2B 018A75 018A83 018AA5 018AC3 018B16 018BF8 018CC6 018CCA 018CD1 018DE1 018EA3 018EAF 018FEA 019056 01908B 019096 0191E9 019245 01925F 019295 0192C3 01930E 0193C0 01947E 019664 01976D 019798 0197E5 01988E 019893 0198BD 0198C2 0198C7 0198CC 01996D 01999B 0199B8 019DB8 019DE0 019ED7 019EEE 019F59 01A091 01A103 01A12F 01A247 01A334 01A346 01A37B 01A446 01A55F 01A579 01A59F 01A5B8 01A762 01A7C9 01A8B4 01C1E7 01CA45 01CFB5 01D4B0 01D567 01D590 01FA24 01FA7C 01FC7B 01FE56 01FE66 01FF00 
; ram_030C                              = $030C ; 010021 010042 010104 0101DE 0137C6 01801C 0181A8 018212 018607 018681 0187BC 0188A6 0188CA 018A24 018A2B 018A75 018A83 018AA5 018AC3 018B52 018BC8 018BE6 018BF8 018C0E 018C40 018CCA 018CD1 018DE1 018EA3 018EAF 018F95 018FEA 019056 01908B 019096 0191E9 019245 01925F 0192C3 01930E 0193C0 019471 01947E 01955B 019664 019687 0196D3 019709 01976D 019798 0197E5 01980C 01985B 01988E 019893 0198BD 0198C2 0198C7 0198CC 01996D 01999B 0199B8 019DB8 019DE0 019ED7 019EEE 019F59 01A091 01A103 01A12F 01A247 01A334 01A346 01A37B 01A446 01A55F 01A579 01A59F 01A5B8 01A6EE 01A709 01A728 01A762 01A7C9 01C1E7 01CA45 01CFB5 01D4B0 01D567 01D590 01FA24 01FA7C 01FC7B 01FE56 01FE66 01FF00 
; ram_030D                              = $030D ; 010021 010042 010104 0101DE 0137C6 01801C 0181A8 018212 018607 018681 0187BC 0188A6 0188CA 018A24 018A2B 018A75 018A83 018AA5 018AC3 018BC8 018BE6 018CCA 018CD1 018DE1 018EA3 018EAF 018EF3 018F01 018F1C 018F95 019056 01908B 019096 0191E9 019245 01925F 0192C3 01930E 0193C0 019471 01947E 019495 01955B 019614 01964A 019664 019687 0196D3 01976D 019798 0197E5 01988E 019893 0198BD 0198C2 0198C7 0198CC 01996D 01999B 0199B8 019DB8 019DE0 019ED7 019EEE 019F35 019F59 01A091 01A0E8 01A0F9 01A103 01A11A 01A12F 01A247 01A3CE 01A446 01A55F 01A579 01A59F 01A5B8 01A762 01A7C9 01A8B4 01C1E7 01CA45 01CFB5 01D4B0 01D567 01D590 01FA24 01FA7C 01FC7B 01FE56 01FE66 01FF00 
; ram_030E                              = $030E ; 010021 010042 010104 0101DE 0137C6 01801C 0181A8 018212 018607 018681 0187BC 018829 01883E 01888B 0188A6 0188CA 018A24 018A2B 018A75 018A83 018AA5 018AC3 018BF8 018CCA 018CD1 018DE1 018EA3 018EAF 018EF3 018F01 018F1C 018F95 018FEA 019056 01908B 019096 0191E9 019245 01925F 0192C3 01930E 0193C0 019471 01947E 019495 01955B 019614 01962A 01964A 019709 01976D 019798 0197E5 01980C 01985B 01988E 019893 0198BD 0198C2 0198C7 0198CC 01996D 019994 01999B 0199B8 019DB8 019DE0 019ED7 019EEE 019F35 019F59 019F70 019F95 019F99 019FBE 01A00E 01A04F 01A091 01A103 01A12F 01A247 01A3CE 01A446 01A47A 01A65B 01A669 01A762 01A7C9 01A8B4 01C1E7 01CA45 01CFB5 01D4B0 01D567 01D590 01FA24 01FA7C 01FC7B 01FE56 01FE66 01FF00 
; ram_030F                              = $030F ; 010021 010042 010104 0101DE 0137C6 01801C 0181A8 018212 018607 01866E 018681 0187BC 018829 01888B 0188A6 0188CA 018A24 018A2B 018A75 018A83 018AA5 018AC3 018B16 018B52 018BC8 018BE6 018BF8 018CCA 018CD1 018DE1 018EA3 018EAF 018EF3 018F01 018F1C 019056 01908B 019096 019245 0192C3 01930E 0193C0 019471 01947E 01955B 019614 01962A 019664 019709 01976D 019798 0197E5 01980C 01985B 01988E 019893 0198BD 0198C2 0198C7 0198CC 01996D 01999B 0199B8 019BB7 019BD0 019C00 019C27 019C2C 019C35 019CF7 019D4A 019D65 019DE0 019E62 019E9B 019F70 019F95 019F99 019FBE 01A00E 01A04F 01A091 01A103 01A12F 01A1DF 01A20C 01A247 01A424 01A430 01A446 01A47A 01A65B 01A762 01A7C9 01A8B4 01C1E7 01CA45 01CFB5 01D4B0 01D567 01D590 01FA24 01FA7C 01FC7B 01FE56 01FE66 01FF00 



; 0310-031F (10) 
ram_obj_id                              = $0310 ; 0101A3 01FF00 
; ram_0311                              = $0311 ; 0101A3 018026 0186EC 01876E 01D033 01FBCD 01FF00 
; ram_0312                              = $0312 ; 0101A3 018026 0180F2 0186C8 0186EC 01871C 01876E 01D033 01FBCD 01FF00 
; ram_0313                              = $0313 ; 01A3C5 01FF00 
; ram_0314                              = $0314 ; 01A3C5 01FF00 
; ram_0315                              = $0315 ; 0101A3 0137D2 018026 0180D4 018114 01811D 0181A3 018227 018376 018397 01878A 018E17 01A3C5 01A7E9 01CF67 01FBD2 01FF00 
; ram_0316                              = $0316 ; 0100C4 0101A3 0137D2 018026 0180D4 018114 01811D 01814A 018179 0181A3 018227 01829E 0182B4 018376 018397 01878A 018B7D 018D7A 018E2A 0194D0 01971B 01A2F8 01A3C5 01A7CE 01A7E9 01CF67 01D6A3 01FBD2 01FF00 
; ram_0317                              = $0317 ; 0100C4 0101A3 0137D2 018026 0180D4 018114 01811D 018179 0181A3 018227 01829E 0182E7 01835E 018376 018397 01878A 018AD4 018D7A 018E17 018E2A 01929A 0193CA 0194D0 01971B 0197EC 019A54 019A6E 019AE9 019B11 01A2F8 01A3C5 01A4BD 01A5AF 01A7CE 01A7E9 01CF67 01CFC7 01D4F9 01D504 01D6A3 01FBD2 01FF00 
; ram_0318                              = $0318 ; 0100C4 0101A3 0137D2 018026 0180D4 018114 01811D 018179 0181A3 018227 01829E 0182E7 01835E 018376 018397 01878A 018AD4 018D7A 018E17 018E2A 01929A 019318 0193CA 0194D0 0199E9 0199EE 01A2A6 01A2F8 01A3C5 01A4BD 01A5AF 01A7CE 01A7E9 01CF67 01CFC7 01D6A3 01FBD2 01FF00 
; ram_0319                              = $0319 ; 0100C4 0101A3 0137D2 018026 0180D4 018114 01811D 01814A 018179 0181A3 018227 01829E 0182E7 01835E 018376 018397 01878A 0187C1 018AD4 018B7D 018D7A 018E17 018E2A 0190C2 019134 019264 01929A 019318 0193CA 0194D0 01971B 0197EC 019824 01984A 01A096 01A108 01A134 01A1A8 01A2A6 01A2F8 01A375 01A3C5 01A4BD 01A5AF 01A7CE 01A7E9 01CF67 01CFC7 01D6A3 01E807 01E815 01FBD2 01FF00 
; ram_031A                              = $031A ; 0100C4 0101A3 0137D2 018026 0180D4 018114 01811D 01814A 018179 0181A3 018227 01829E 0182E7 01835E 018376 018397 018686 01878A 0187C1 018AD4 018B48 018C71 018D7A 018E17 018E2A 018F31 0190C2 019134 019264 01929A 019318 0193CA 0194D0 01971B 0197EC 019824 01984A 0199E9 0199EE 019A54 019A6E 019AE9 019B11 01A096 01A108 01A134 01A1A8 01A2A6 01A2F8 01A375 01A3C5 01A4BD 01A4DD 01A5AF 01A7CE 01A7E9 01CF67 01CFC7 01D4F9 01D504 01D6A3 01E807 01E815 01FBD2 01FF00 
; ram_031B                              = $031B ; 0100C4 0101A3 0137D2 018026 0180D4 018114 01811D 01814A 018179 0181A3 018227 01829E 0182E7 01835E 018376 018397 018686 01878A 0187C1 018C71 018D7A 018E17 018E2A 018F31 018FEF 0190C2 019134 019264 01929A 019318 0193CA 0194D0 01971B 0197E1 0197EC 019982 0199E9 0199EE 019A91 019A96 019B52 019B7A 019E5E 019F54 01A096 01A108 01A134 01A1A8 01A2A6 01A375 01A3C5 01A4BD 01A4DD 01A5AF 01A7CE 01CF67 01CFC7 01D242 01D4F9 01D504 01E807 01E815 01FBD2 01FF00 
; ram_031C                              = $031C ; 0100C4 0101A3 0137D2 018026 0180D4 018114 01811D 01814A 018179 0181A3 018227 01829E 0182B4 0182E7 01835E 018376 018397 01845A 018686 01878A 0187C1 018AD4 018B48 018D7A 018E2A 018F31 018F90 018FEF 0190C2 019134 019264 019318 0193CA 0194D0 01971B 0197E1 0197EC 019824 01984A 019979 019982 0199E9 0199EE 019A35 019A91 019A96 019B52 019B7A 019CB3 019E5E 019F54 01A096 01A108 01A134 01A1A8 01A2A6 01A375 01A3C5 01A4BD 01A4DD 01A5AF 01A7CE 01CF67 01CFC7 01D242 01D4F9 01D504 01E807 01E815 01E821 01FBD2 01FF00 
; ram_031D                              = $031D ; 0100C4 0101A3 0137D2 018026 0180D4 018114 01811D 018179 0181A3 018227 01829E 0182E7 01835E 018376 018397 018686 01878A 018AD4 018B7D 018D7A 018E17 018E2A 018F31 018F90 019264 019318 0193CA 0194D0 01964F 01971B 0197E1 0197EC 019979 019982 0199E9 0199EE 019A54 019A6E 019A91 019A96 019AE9 019B11 019B52 019B7A 019CB3 019E5E 019F30 019F54 01A096 01A108 01A134 01A3C5 01A4BD 01A4DD 01A5AF 01A7CE 01CF67 01CFC7 01D242 01D4F9 01D504 01E807 01E815 01FBD2 01FF00 
; ram_031E                              = $031E ; 0100C4 0101A3 0137D2 018026 0180D4 018114 01811D 01814A 018179 0181A3 018227 01829E 0182B4 0182E7 018327 01835E 018376 018397 018686 01878A 0187C1 0187E9 01886D 018AD4 018B7D 018D7A 018E17 018E2A 018F31 018F90 018FEF 0190C2 019134 019264 019318 0193CA 0194D0 01964F 01971B 0197E1 0197EC 019824 01984A 019979 019982 0199E9 0199EE 019A54 019A6E 019A91 019A96 019AE9 019B11 019B52 019B7A 019CB3 019E5E 019F30 019F54 019F7C 01A084 01A096 01A108 01A134 01A1A8 01A3C5 01A47F 01A7CE 01CF67 01CFC7 01D242 01D4F9 01D504 01D6A3 01E807 01E815 01FBD2 01FF00 
; ram_031F                              = $031F ; 0100C4 0101A3 0137D2 018026 0180D4 018114 01811D 018133 01814A 018179 0181A3 018227 01829E 0182B4 0182E7 018327 01835E 018376 018397 018415 018686 01878A 0187C1 0187E9 018AD4 018B48 018D7A 018E17 018E2A 018FB9 0190C2 019134 019318 0193CA 0194D0 01971B 0197E1 0197EC 019824 01984A 019979 0199E9 0199EE 019A35 019A54 019A6E 019A91 019A96 019AE9 019B11 019B52 019B7A 019BF7 019CFC 019F7C 01A084 01A096 01A108 01A134 01A3C5 01A47F 01A7CE 01CF67 01CFC7 01D242 01D4F9 01D504 01D6A3 01E807 01E815 01E821 01FBD2 01FF00 



; 0320-032F (10) fractional
ram_pos_X_fr                            = $0320 ; 0101A3 01DF79 01DF7F 01F897 01F89E 01F8B5 01F8BC 01FF00 
; ram_0321                              = $0321 ; 0101A3 01F897 01F89E 01F8B5 01F8BC 01FF00 
; ram_0322                              = $0322 ; 0101A3 01F897 01F89E 01F8B5 01F8BC 01FF00 
; ram_0323                              = $0323 ; 0101A3 01FF00 
; ram_0324                              = $0324 ; 0101A3 01FF00 
; ram_0325                              = $0325 ; 0101A3 0137F9 01F897 01F89E 01F8B5 01F8BC 01FF00 
; ram_0326                              = $0326 ; 0101A3 0137F9 01F897 01F89E 01F8B5 01F8BC 01FF00 
; ram_0327                              = $0327 ; 0101A3 0137F9 01F897 01F89E 01F8B5 01F8BC 01FF00 
; ram_0328                              = $0328 ; 0137F9 01F897 01F89E 01F8B5 01F8BC 01FF00 
; ram_0329                              = $0329 ; 0137F9 01F897 01F89E 01F8B5 01F8BC 01FF00 
; ram_032A                              = $032A ; 0137F9 01F897 01F89E 01F8B5 01F8BC 01FF00 
; ram_032B                              = $032B ; 0137F9 01F897 01F89E 01F8B5 01F8BC 01FF00 
; ram_032C                              = $032C ; 0137F9 01F897 01F89E 01F8B5 01F8BC 01FF00 
; ram_032D                              = $032D ; 0137F9 01F897 01F89E 01F8B5 01F8BC 01FF00 
; ram_032E                              = $032E ; 0137F9 01F897 01F89E 01F8B5 01F8BC 01FF00 
; ram_032F                              = $032F ; 0137F9 01F897 01F89E 01F8B5 01F8BC 01FF00 



; 0330-033F (10) 
ram_pos_X_lo                            = $0330 ; 010099 0100DF 0189E8 0189FB 01A49E 01C6CC 01C98A 01CF71 01CF85 01CFD7 01CFEC 01D073 01D225 01D4C2 01DC1C 01DC21 01DC26 01DC2B 01DC6B 01DC76 01DCB7 01DCBC 01DD21 01DD26 01DD5C 01DD63 01DD68 01DD8A 01DF82 01DF87 01DFCF 01E090 01E0B4 01E14B 01E33F 01E40D 01E6B2 01E6B8 01E6CE 01E6D1 01E89E 01E939 01F610 01F631 01F685 01F6A9 01F8A1 01F8A7 01F8BF 01F8C5 01FAC6 01FB17 01FC88 01FD43 01FF00 
; ram_0331                              = $0331 ; 010099 0100DF 01D07A 01E40D 01E6B2 01E6B8 01F8A1 01F8A7 01F8BF 01F8C5 01FBF9 01FF00 
; ram_0332                              = $0332 ; 010099 0100DF 01D07A 01E40D 01E6B2 01E6B8 01E6CE 01E6D1 01F8A1 01F8A7 01F8BF 01F8C5 01FBF9 01FF00 
; ram_0333                              = $0333 ; 01FF00 
; ram_0334                              = $0334 ; 01FF00 
; ram_0335                              = $0335 ; 010099 0100DF 013796 01824E 018252 0189EF 018A02 018E43 01A824 01CF77 01D4C2 01D4C6 01E33F 01F8A1 01F8A7 01F8BF 01F8C5 01FB1B 01FBFD 01FC84 01FD47 01FF00 
; ram_0336                              = $0336 ; 010099 0100DF 013796 01824E 018252 0189EF 018A02 018B83 018D59 018DA9 018DB0 018E46 0194E7 019587 01958E 019734 019737 019751 019758 01A311 01A824 01CF77 01CF8B 01D4C2 01D696 01D6B1 01E33F 01E40D 01F8A1 01F8A7 01F8BF 01F8C5 01FB1B 01FBFD 01FC84 01FD47 01FF00 
; ram_0337                              = $0337 ; 010099 0100DF 013796 01824E 018252 0189EF 018A02 018D59 018DA9 018DB0 018E43 018E46 0193A3 0193EC 0194E7 019587 01958E 019734 019737 019751 019758 01A311 01A507 01A824 01CF77 01CF8B 01CFDE 01D4C2 01D4C6 01D696 01D6B1 01E33F 01E40D 01E6B2 01E6B8 01F8A1 01F8A7 01F8BF 01F8C5 01FACA 01FB1B 01FBFD 01FC84 01FD47 01FF00 
; ram_0338                              = $0338 ; 010099 0100DF 013796 01824E 018252 0189EF 018A02 018D59 018DA9 018DB0 018E43 018E46 01933F 0193EC 0194E7 019587 01958E 01A291 01A311 01A507 01A824 01CF77 01CF8B 01CFDE 01D4C2 01D4C6 01D696 01D6B1 01E33F 01E40D 01F8A1 01F8A7 01F8BF 01F8C5 01FB1B 01FBFD 01FC84 01FD47 01FF00 
; ram_0339                              = $0339 ; 010099 0100DF 013796 01824E 018252 0189EF 018A02 018B83 018D56 018D59 018DA9 018DB0 018E43 018E46 01933F 0193EC 0194E7 019587 01958E 019734 019737 019751 019758 01A17B 01A291 01A311 01A507 01A824 01CF77 01CF8B 01CFDE 01D4C2 01D4C6 01D696 01D6B1 01E33F 01E40D 01E6B2 01E6B8 01F8A1 01F8A7 01F8BF 01F8C5 01FACA 01FB1B 01FBFD 01FC84 01FD47 01FF00 
; ram_033A                              = $033A ; 010099 0100DF 013796 01824E 018252 0189EF 018A02 018ADF 018AE3 018B80 018C87 018C99 018CA0 018D56 018D59 018DA9 018DB0 018E43 018E46 018F50 0192E7 01933F 0193EC 0194E7 019587 01958E 019734 019737 019751 019758 01A17B 01A291 01A311 01A507 01A824 01CF77 01CF8B 01CFDE 01CFF3 01D4C2 01D4C6 01D696 01D6B1 01E33F 01E40D 01E6B2 01E6B8 01F8A1 01F8A7 01F8BF 01F8C5 01FACA 01FB1B 01FBFD 01FC84 01FD47 01FF00 
; ram_033B                              = $033B ; 010099 0100DF 013796 01824E 018252 0189EF 018A02 018AE3 018C87 018C99 018CA0 018D56 018D59 018DA9 018DB0 018E43 018E46 018F50 01900B 0192E7 01933F 0193EC 0194E7 019587 01958E 019734 019737 019751 019758 019E42 01A17B 01A291 01A507 01CF77 01CF8B 01CFDE 01CFF3 01D228 01D4C2 01D4C6 01E33F 01E40D 01E6B2 01E6B8 01E6CE 01E6D1 01F8A1 01F8A7 01F8BF 01F8C5 01FACA 01FB1B 01FBFD 01FC84 01FD47 01FF00 
; ram_033C                              = $033C ; 010099 0100DF 013796 01824E 018252 0189EF 018A02 018ADF 018B80 018C84 018D56 018D59 018DA9 018DB0 018E46 018F50 019008 01900B 01933F 0193A3 0193EC 0194E4 0194E7 019587 01958E 019734 019737 019751 019758 019C80 019E42 01A17B 01A291 01A507 01CF77 01CF8B 01CFDE 01CFF3 01D228 01D4C2 01D4C6 01E33F 01E40D 01E6B2 01E6B8 01E6CE 01E6D1 01F8A1 01F8A7 01F8BF 01F8C5 01FACA 01FB1B 01FBFD 01FC84 01FD47 01FF00 
; ram_033D                              = $033D ; 010099 0100DF 013796 01824E 018252 0189EF 018A02 018B83 018D56 018D59 018DA9 018DB0 018E43 018E46 018F4D 018F50 0192E7 01933F 0193A3 0193EC 0194E4 0194E7 019587 01958E 019734 019737 019751 019758 019C80 019E42 01A507 01CF77 01CF8B 01CFDE 01CFF3 01D228 01D4C2 01D4C6 01E33F 01E40D 01E6B2 01E6B8 01E6CE 01E6D1 01F8A1 01F8A7 01F8BF 01F8C5 01FACA 01FB1B 01FBFD 01FC84 01FD47 01FF00 
; ram_033E                              = $033E ; 010099 0100DF 013796 01824E 018252 0187A8 0187E4 018856 0189EF 018A02 018AE3 018B83 018D56 018D59 018DA9 018DB0 018E43 018E46 018F4D 018F50 01900B 0192E7 01933F 0193A3 0193EC 0194E4 0194E7 019734 019737 019751 019758 019C80 019E42 019FEF 019FF6 01A069 01A072 01A0DE 01A17B 01CF77 01CF8B 01CFDE 01CFF3 01D228 01D4C2 01D4C6 01D696 01D6B1 01E33F 01E40D 01E6B2 01E6B8 01E6CE 01E6D1 01F8A1 01F8A7 01F8BF 01F8C5 01FACA 01FB1B 01FBFD 01FC84 01FD47 01FF00 
; ram_033F                              = $033F ; 010099 0100DF 013796 01824E 018252 0187A8 0187E4 018853 0189EF 018A02 018ADF 018AE3 018B80 018D56 018D59 018DA9 018DB0 018E43 018E46 018F4D 019008 0192E7 01933F 0193A3 0193EC 0194E4 0194E7 019734 019737 019751 019758 019D26 019D2E 019D34 019E8E 019FEF 019FF6 01A069 01A072 01A0DE 01CF77 01CF8B 01CFDE 01CFF3 01D228 01D4C2 01D4C6 01D696 01D6B1 01E33F 01E40D 01E6B2 01E6B8 01E6CE 01E6D1 01F8A1 01F8A7 01F8BF 01F8C5 01FACA 01FB1B 01FBFD 01FC84 01FD47 01FF00 



; 0340-034F (10) 
ram_pos_X_hi                            = $0340 ; 0100E7 0189F2 018A05 01C6D1 01C865 01CF7A 01CF8E 01CFE1 01CFF6 01D07D 01D22B 01D4CA 01DF8A 01DF8F 01DFD4 01E084 01E0EA 01E133 01E144 01E55B 01E59C 01E6BB 01E6C0 01E6D4 01E6D9 01E896 01E931 01EADE 01EAE6 01EBAE 01EBB6 01EBBF 01F615 01F639 01F68A 01F6B1 01F8AC 01F8B1 01F8CA 01F8CF 01FACE 01FB1F 01FC8E 01FD4B 01FF00 
; ram_0341                              = $0341 ; 0100E7 01D083 01E55B 01E59C 01E6BB 01E6C0 01F8CA 01F8CF 01FC01 01FF00 
; ram_0342                              = $0342 ; 0100E7 01D083 01E55B 01E59C 01E6BB 01E6C0 01E6D4 01E6D9 01F8AC 01F8B1 01F8CA 01F8CF 01FC01 01FF00 
; ram_0343                              = $0343 ; 01FF00 
; ram_0344                              = $0344 ; 01FF00 
; ram_0345                              = $0345 ; 0100E7 0137AE 018256 018259 0189F7 018A0A 018E49 01A804 01CF7F 01D4CA 01D4CD 01E59C 01FB22 01FC04 01FC8B 01FD4E 01FF00 
; ram_0346                              = $0346 ; 0100E7 0137AE 0137B6 018256 018259 0189F7 018A0A 018B89 018D5F 018DB3 018DB9 018E4C 0194ED 019591 019597 01973A 01973D 01A309 01A804 01CF7F 01CF93 01D4CA 01D68D 01E59C 01F8AC 01F8B1 01F8CA 01F8CF 01FB22 01FC04 01FC8B 01FD4E 01FF00 
; ram_0347                              = $0347 ; 0100E7 0137AE 0137B6 018256 018259 0189F7 018A0A 018D5F 018DB3 018DB9 018E49 018E4C 0193A8 0193F1 0194ED 019591 019597 01973A 01973D 01A309 01A4F0 01A804 01CF7F 01CF93 01CFE6 01D4CA 01D4CD 01D68D 01E55B 01E59C 01E6BB 01E6C0 01F8AC 01F8B1 01FAD1 01FB22 01FC04 01FC8B 01FD4E 01FF00 
; ram_0348                              = $0348 ; 0100E7 0137AE 0137B6 018256 018259 0189F7 018A0A 018D5F 018DB3 018DB9 018E49 018E4C 019344 0193F1 0194ED 019591 019597 01A2E4 01A309 01A4F0 01A804 01CF7F 01CF93 01CFE6 01D4CA 01D4CD 01D68D 01E55B 01E59C 01F8AC 01F8B1 01F8CA 01F8CF 01FB22 01FC04 01FC8B 01FD4E 01FF00 
; ram_0349                              = $0349 ; 0100E7 0137AE 0137B6 018256 018259 0189F7 018A0A 018B89 018D5C 018D5F 018DB3 018DB9 018E49 018E4C 019344 0193F1 0194ED 019591 019597 01973A 01973D 01A15F 01A2E4 01A309 01A4F0 01A804 01CF7F 01CF93 01CFE6 01D4CA 01D4CD 01D68D 01E55B 01E59C 01E6BB 01E6C0 01F8AC 01F8B1 01F8CA 01F8CF 01FAD1 01FB22 01FC04 01FC8B 01FD4E 01FF00 
; ram_034A                              = $034A ; 0100E7 0137AE 0137B6 018256 018259 0189F7 018A0A 018AE7 018AEA 018B86 018C8D 018CA3 018CA9 018D5C 018D5F 018DB3 018DB9 018E49 018E4C 018F56 0192F0 019344 0193F1 0194ED 019591 019597 01973A 01973D 01A15F 01A2E4 01A309 01A4F0 01A804 01CF7F 01CF93 01CFE6 01CFFB 01D4CA 01D4CD 01D68D 01E55B 01E59C 01E6BB 01E6C0 01F8AC 01F8B1 01F8CA 01F8CF 01FAD1 01FB22 01FC04 01FC8B 01FD4E 01FF00 
; ram_034B                              = $034B ; 0100E7 0137AE 0137B6 018256 018259 0189F7 018A0A 018AEA 018C8D 018CA3 018CA9 018D5C 018D5F 018DB3 018DB9 018E49 018E4C 018F56 019011 0192F0 019344 0193F1 0194ED 019591 019597 01973A 01973D 019E33 01A15F 01A2E4 01A4F0 01CF7F 01CF93 01CFE6 01CFFB 01D22E 01D4CA 01D4CD 01E55B 01E59C 01E6BB 01E6C0 01E6D4 01E6D9 01F8AC 01F8B1 01F8CA 01F8CF 01FAD1 01FB22 01FC04 01FC8B 01FD4E 01FF00 
; ram_034C                              = $034C ; 0100E7 0137AE 0137B6 018256 018259 0189F7 018A0A 018AE7 018B86 018C8A 018D5C 018D5F 018DB3 018DB9 018E4C 018F56 01900E 019011 019344 0193A8 0193F1 0194EA 0194ED 019591 019597 01973A 01973D 019C71 019E33 01A15F 01A2E4 01A4F0 01A801 01CF7F 01CF93 01CFE6 01CFFB 01D22E 01D4CA 01D4CD 01E55B 01E59C 01E6BB 01E6C0 01E6D4 01E6D9 01F8AC 01F8B1 01F8CA 01F8CF 01FAD1 01FB22 01FC04 01FC8B 01FD4E 01FF00 
; ram_034D                              = $034D ; 0100E7 0137AE 0137B6 018256 018259 0189F7 018A0A 018B89 018D5C 018D5F 018DB3 018DB9 018E49 018E4C 018F53 018F56 0192F0 019344 0193A8 0193F1 0194EA 0194ED 019591 019597 01973A 01973D 019C71 019E33 01A15C 01A4F0 01CF7F 01CF93 01CFE6 01CFFB 01D22E 01D4CA 01D4CD 01E55B 01E59C 01E6BB 01E6C0 01E6D4 01E6D9 01F8AC 01F8B1 01F8CA 01F8CF 01FAD1 01FB22 01FC04 01FC8B 01FD4E 01FF00 
; ram_034E                              = $034E ; 0100E7 0137AE 0137B6 018256 018259 01885C 0189F7 018A0A 018AEA 018B89 018D5C 018D5F 018DB3 018DB9 018E49 018E4C 018F53 018F56 019011 0192F0 019344 0193A8 0193F1 0194EA 0194ED 01973A 01973D 019C71 019E33 019FF9 019FFF 01A15F 01CF7F 01CF93 01CFE6 01CFFB 01D22E 01D4CA 01D4CD 01D68D 01E55B 01E59C 01E6BB 01E6C0 01E6D4 01E6D9 01F8AC 01F8B1 01F8CA 01F8CF 01FAD1 01FB22 01FC04 01FC8B 01FD4E 01FF00 
; ram_034F                              = $034F ; 0100E7 0137AE 0137B6 018256 018259 018859 0189F7 018A0A 018AE7 018AEA 018B86 018D5C 018D5F 018DB3 018DB9 018E49 018E4C 018F53 01900E 0192F0 019344 0193A8 0193F1 0194EA 0194ED 01973A 01973D 019C6E 019E30 019FF9 019FFF 01A2E1 01A306 01A4ED 01CF7F 01CF93 01CFE6 01CFFB 01D22E 01D4CA 01D4CD 01D68D 01E55B 01E59C 01E6BB 01E6C0 01E6D4 01E6D9 01F8AC 01F8B1 01F8CA 01F8CF 01FAD1 01FB22 01FC04 01FC8B 01FD4E 01FF00 



; 0350-035F (10) fractional
ram_pos_Y_fr                            = $0350 ; 01E1B4 01E1BA 01E22D 01E233 01F8D3 01F8DA 01F8FB 01F902 01F932 01F939 01F95A 01F961 01FF00 
; ram_0351                              = $0351 ; 01F8D3 01F8DA 01F8FB 01F902 01FF00 
; ram_0352                              = $0352 ; 01F8D3 01F8DA 01F8FB 01F902 01FF00 
; ram_0353                              = $0353 ; 01FF00 
; ram_0354                              = $0354 ; 01FF00 
; ram_0355                              = $0355 ; 0137FC 01F8D3 01F8DA 01F8FB 01F902 01F932 01F939 01F95A 01F961 01FF00 
; ram_0356                              = $0356 ; 0137FC 01F8D3 01F8DA 01F8FB 01F902 01F932 01F939 01F95A 01F961 01FF00 
; ram_0357                              = $0357 ; 0137FC 01F8D3 01F8DA 01F8FB 01F902 01F932 01F939 01F95A 01F961 01FF00 
; ram_0358                              = $0358 ; 0137FC 01F8D3 01F8DA 01F8FB 01F902 01F932 01F939 01F95A 01F961 01FF00 
; ram_0359                              = $0359 ; 0137FC 01F8D3 01F8DA 01F8FB 01F902 01F932 01F939 01F95A 01F961 01FF00 
; ram_035A                              = $035A ; 0137FC 01F8D3 01F8DA 01F8FB 01F902 01F932 01F939 01F95A 01F961 01FF00 
; ram_035B                              = $035B ; 0137FC 01F8D3 01F8DA 01F8FB 01F902 01F932 01F939 01F95A 01F961 01FF00 
; ram_035C                              = $035C ; 0137FC 01F8D3 01F8DA 01F8FB 01F902 01F932 01F939 01F95A 01F961 01FF00 
; ram_035D                              = $035D ; 0137FC 01F8D3 01F8DA 01F8FB 01F902 01F932 01F939 01F95A 01F961 01FF00 
; ram_035E                              = $035E ; 0137FC 01F8D3 01F8DA 01F8FB 01F902 01F932 01F939 01F95A 01F961 01FF00 
; ram_035F                              = $035F ; 0137FC 01F8D3 01F8DA 01F8FB 01F902 01F932 01F939 01F95A 01F961 01FF00 



; 0360-036F (10) 
ram_pos_Y_lo                            = $0360 ; 010094 0100A5 01898F 018A45 018C09 019682 019699 019C43 019CFF 019D10 01C6DA 01C963 01CC37 01CE3D 01D054 01D231 01D38C 01D391 01DC30 01DC35 01DC3A 01DC4B 01DC50 01DC55 01DC62 01DD8D 01DDAB 01DE07 01DE0C 01DEAA 01DEAF 01E09C 01E0AA 01E188 01E1BD 01E1C2 01E1CB 01E1FF 01E236 01E23B 01E242 01E26D 01E564 01E5A4 01E6E4 01E6E7 01E706 01E70C 01E8B7 01E94B 01F743 01F7C1 01F7DE 01F8DD 01F8E3 01F8EC 01F905 01F90B 01F912 01F93C 01F942 01F964 01F96A 01FAEB 01FB47 01FD2E 01FF00 
; ram_0361                              = $0361 ; 010094 0100A5 01D057 01E564 01E5A4 01F8DD 01F8E3 01F905 01F90B 01FC28 01FF00 
; ram_0362                              = $0362 ; 010094 0100A5 01D057 01E564 01E5A4 01F8DD 01F8E3 01F905 01F90B 01FC28 01FF00 
; ram_0363                              = $0363 ; 01FF00 
; ram_0364                              = $0364 ; 01FF00 
; ram_0365                              = $0365 ; 010094 0100A5 01379B 0181F5 018996 018E37 01A830 01D54C 01E5A4 01F8DD 01F8E3 01F905 01F90B 01F93C 01F942 01F964 01F96A 01FB31 01FC12 01FD22 01FF00 
; ram_0366                              = $0366 ; 010094 0100A5 01379B 0181F5 018267 018996 018B8F 018D65 018E3A 0194F3 01956B 019728 01972B 019747 01974E 01A317 01A830 01D54C 01D6BB 01E5A4 01E6E4 01E6E7 01E706 01E70C 01F8DD 01F8E3 01F8EC 01F905 01F90B 01F93C 01F942 01F94B 01F964 01F96A 01F971 01FB31 01FC12 01FD22 01FF00 
; ram_0367                              = $0367 ; 010094 0100A5 01379B 0181F5 018267 018996 018A48 018D65 018E37 018E3A 0193AD 0193F6 0194F3 01956B 019728 01972B 019747 01974E 01A317 01A4F5 01A56F 01A830 01D006 01D4DB 01D54C 01D6BB 01E564 01E5A4 01E6E4 01E6E7 01E706 01E70C 01F8DD 01F8E3 01F8EC 01F905 01F90B 01F93C 01F942 01F94B 01F964 01F96A 01FADF 01FB31 01FC12 01FD22 01FF00 
; ram_0368                              = $0368 ; 010094 0100A5 01379B 0181F5 018267 018996 018A48 018D65 018E37 018E3A 019349 0193F6 0194F3 01956B 01A28B 01A317 01A4F5 01A56F 01A830 01D006 01D4DB 01D54C 01D6BB 01E564 01E5A4 01E6E4 01E6E7 01E706 01E70C 01F8DD 01F8E3 01F8EC 01F905 01F90B 01F912 01F93C 01F942 01F94B 01F964 01F96A 01FB31 01FC12 01FD22 01FF00 
; ram_0369                              = $0369 ; 010094 0100A5 0100CB 01379B 0181F5 018267 018996 018A48 018B8F 018D62 018D65 018E37 018E3A 019349 0193F6 0194F3 01956B 019728 01972B 019747 01974E 01A181 01A28B 01A317 01A4F5 01A56F 01A830 01D006 01D54C 01D6BB 01E564 01E5A4 01E6E4 01E6E7 01E706 01E70C 01F8DD 01F8E3 01F8EC 01F905 01F90B 01F912 01F93C 01F942 01F94B 01F964 01F96A 01FADF 01FB31 01FC12 01FD22 01FF00 
; ram_036A                              = $036A ; 010094 0100A5 0100CB 01379B 0181F5 018267 018996 018A48 018AB5 018AF8 018B8C 018C7A 018D62 018D65 018E37 018E3A 018F44 0192F8 019349 0193F6 0194F3 01956B 01967F 0196B6 0196BC 0196CE 019728 01972B 019747 01974E 01A181 01A28B 01A317 01A4F5 01A56F 01A830 01D006 01D4DB 01D54C 01D6BB 01E564 01E5A4 01E6E4 01E6E7 01E706 01E70C 01F8DD 01F8E3 01F8EC 01F905 01F90B 01F912 01F93C 01F942 01F94B 01F964 01F96A 01F971 01FADF 01FB31 01FC12 01FD22 01FF00 
; ram_036B                              = $036B ; 010094 0100A5 0100CB 01379B 0181F5 018267 018996 018A48 018AF8 018C06 018C7A 018D62 018D65 018E37 018E3A 018F44 019017 0192F8 019349 0193F6 0194F3 01956B 019728 01972B 019747 01974E 019E27 01A181 01A28B 01A4F5 01A56F 01D006 01D234 01D4DB 01D54C 01E564 01E5A4 01E6E4 01E6E7 01E706 01E70C 01F8DD 01F8E3 01F8EC 01F905 01F90B 01F912 01F93C 01F942 01F94B 01F964 01F96A 01F971 01FADF 01FB31 01FC12 01FD22 01FF00 
; ram_036C                              = $036C ; 010094 0100A5 0100CB 01379B 0181F5 018267 01865E 018996 0189B6 0189BB 018A48 018AB5 018B8C 018C06 018C74 018D62 018D65 018E3A 018F44 019014 019017 019349 0193AD 0193F6 0194F0 0194F3 01956B 01967F 0196B6 0196BC 0196CE 019728 01972B 019747 01974E 019C65 019C89 019C90 019E27 01A181 01A28B 01A4F5 01A56F 01A6A2 01A6A8 01A6B4 01D006 01D234 01D4DB 01D54C 01E564 01E5A4 01E6E4 01E6E7 01E706 01E70C 01F8DD 01F8E3 01F8EC 01F905 01F90B 01F912 01F93C 01F942 01F94B 01F964 01F96A 01F971 01FADF 01FB31 01FC12 01FD22 01FF00 
; ram_036D                              = $036D ; 010094 0100A5 0100CB 01379B 0181F5 018267 018996 0189B6 0189BB 018A48 018AB5 018B8F 018D62 018D65 018E37 018E3A 018F3E 018F44 0192F8 019349 0193AD 0193F6 0194F0 0194F3 01956B 01967F 0196B6 0196BC 0196CE 019728 01972B 019747 01974E 019C65 019C89 019C90 019E27 01A4F5 01A56F 01D006 01D234 01D4DB 01D54C 01E564 01E5A4 01E6E4 01E6E7 01E706 01E70C 01F8DD 01F8E3 01F8EC 01F905 01F90B 01F912 01F93C 01F942 01F94B 01F964 01F96A 01F971 01FADF 01FB31 01FC12 01FD22 01FF00 
; ram_036E                              = $036E ; 010094 0100A5 0100CB 01379B 0181F5 018267 01865E 0187A1 0187DF 018815 018862 018996 0189B6 0189BB 018A48 018AF8 018B8F 018C06 018D62 018D65 018E37 018E3A 018F3E 018F44 019017 0192F8 019349 0193AD 0193F6 0194F0 0194F3 01956B 019728 01972B 019747 01974E 019C65 019C89 019C90 019E27 01A0E4 01A181 01D006 01D234 01D4DB 01D54C 01D6BB 01E564 01E5A4 01E6E4 01E6E7 01E706 01E70C 01F8DD 01F8E3 01F8EC 01F905 01F90B 01F912 01F93C 01F942 01F94B 01F964 01F96A 01F971 01FADF 01FB31 01FC12 01FD22 01FF00 
; ram_036F                              = $036F ; 010094 0100A5 0100CB 01379B 0181F5 018267 01865E 0187A1 0187DF 018815 01881A 01885F 018996 0189B6 0189BB 018A48 018AB5 018AF8 018B8C 018C06 018D62 018D65 018E37 018E3A 018F3E 019014 0192F8 019349 0193AD 0193F6 0194F0 0194F3 01956B 019728 01972B 019747 01974E 019C46 019C62 019D16 01A0E4 01A3E9 01A3EF 01A3FB 01D006 01D234 01D4DB 01D54C 01D6BB 01E564 01E5A4 01E6E4 01E6E7 01E706 01E70C 01F8DD 01F8E3 01F8EC 01F905 01F90B 01F912 01F93C 01F942 01F94B 01F964 01F96A 01F971 01FADF 01FB31 01FC12 01FD22 01FF00 



; 0370-037F (10) 
ram_pos_Y_hi                            = $0370 ; 0100B5 018989 01C6DF 01C86F 01D009 01D05A 01D237 01E088 01E0F0 01E139 01E168 01E1CE 01E245 01E31F 01E427 01E55F 01E569 01E5A9 01E8AF 01E943 01EBBA 01F844 01F8F3 01F8F7 01F919 01F91D 01FB54 01FF00 
; ram_0371                              = $0371 ; 0100B5 01D05D 01E427 01E55F 01E569 01E5A9 01FC35 01FC6C 01FF00 
; ram_0372                              = $0372 ; 0100B5 01D05D 01E427 01E55F 01E569 01E5A9 01FC35 01FC6C 01FF00 
; ram_0373                              = $0373 ; 01FF00 
; ram_0374                              = $0374 ; 01FF00 
; ram_0375                              = $0375 ; 0100B5 0137A6 018202 01898C 018E3D 01A7FE 01D559 01E31F 01E5A9 01FB3E 01FC1F 01FC6C 01FF00 
; ram_0376                              = $0376 ; 0100B5 0137A6 0137BE 018202 018274 01898C 018B95 018D6B 018E40 0194F9 01972E 019731 01A303 01A7FE 01D559 01D690 01E31F 01E427 01E5A9 01F844 01F860 01F8F7 01F956 01F97C 01FB3E 01FC1F 01FC6C 01FF00 
; ram_0377                              = $0377 ; 0100B5 0137A6 0137BE 018202 018274 01898C 018D6B 018E3D 018E40 0193B2 0193FB 0194F9 01972E 019731 01A303 01A4EA 01A7FE 01D00C 01D559 01D690 01E31F 01E427 01E55F 01E569 01E5A9 01F844 01F860 01F8F7 01F952 01F956 01FB3E 01FC1F 01FC6C 01FF00 
; ram_0378                              = $0378 ; 0100B5 0137A6 0137BE 018202 018274 01898C 018D6B 018E3D 018E40 01934E 0193FB 0194F9 01A2DE 01A303 01A4EA 01A7FE 01D00C 01D559 01D690 01E31F 01E427 01E55F 01E569 01E5A9 01F844 01F860 01F8F7 01F919 01F956 01FB3E 01FC1F 01FC6C 01FF00 
; ram_0379                              = $0379 ; 0100B5 0137A6 0137BE 018202 018274 01898C 018B95 018D68 018D6B 018E3D 018E40 01934E 0193FB 0194F9 01972E 019731 01A159 01A2DE 01A303 01A4EA 01A7FE 01D00C 01D559 01D690 01E31F 01E427 01E55F 01E569 01E5A9 01E7E8 01F844 01F860 01F8F7 01F919 01F952 01F956 01FB3E 01FC1F 01FC6C 01FF00 
; ram_037A                              = $037A ; 0100B5 0137A6 0137BE 018202 018274 01898C 018B92 018C81 018D68 018D6B 018E3D 018E40 018F4A 019300 01934E 0193FB 0194F9 01972E 019731 01A159 01A2DE 01A303 01A4EA 01A7FE 01D00C 01D559 01D690 01E31F 01E427 01E55F 01E569 01E5A9 01E7E8 01F844 01F860 01F8F7 01F919 01F952 01F956 01F978 01FB3E 01FC1F 01FC6C 01FF00 
; ram_037B                              = $037B ; 0100B5 0137A6 0137BE 018202 018274 01898C 018C81 018D68 018D6B 018E3D 018E40 018F4A 01901D 019300 01934E 0193FB 0194F9 01972E 019731 019E2D 01A159 01A2DE 01A4EA 01D00C 01D23A 01D559 01E31F 01E427 01E55F 01E569 01E585 01E5A9 01E7E8 01F844 01F860 01F8F3 01F8F7 01F919 01F91D 01F952 01F956 01F978 01F97C 01FB3E 01FC1F 01FC6C 01FF00 
; ram_037C                              = $037C ; 0100B5 0137A6 0137BE 018202 018274 01898C 0189C8 018B92 018C7D 018D68 018D6B 018E40 018F4A 01901A 01901D 01934E 0193B2 0193FB 0194F6 0194F9 01972E 019731 019C6B 019E2D 01A159 01A2DE 01A4EA 01A7FB 01D00C 01D23A 01D559 01E31F 01E427 01E55F 01E569 01E585 01E5A9 01E7E8 01F844 01F860 01F8F3 01F8F7 01F919 01F91D 01F952 01F956 01F978 01F97C 01FB3E 01FC1F 01FC6C 01FF00 
; ram_037D                              = $037D ; 0100B5 0137A6 0137BE 018202 018274 01898C 0189C2 018B95 018D68 018D6B 018E3D 018E40 018F47 018F4A 019300 01934E 0193B2 0193FB 0194F6 0194F9 01972E 019731 019C6B 019E2D 01A156 01A4EA 01D00C 01D23A 01D559 01E31F 01E427 01E55F 01E569 01E5A9 01E7E8 01F844 01F860 01F8F3 01F8F7 01F919 01F952 01F956 01F978 01F97C 01FB3E 01FC1F 01FC6C 01FF00 
; ram_037E                              = $037E ; 0100B5 0137A6 0137BE 018202 018274 018868 01898C 0189C2 018B95 018D68 018D6B 018E3D 018E40 018F47 018F4A 01901D 019300 01934E 0193B2 0193FB 0194F6 0194F9 01972E 019731 019C6B 019E2D 01A159 01D00C 01D23A 01D559 01D690 01E31F 01E427 01E55F 01E569 01E5A9 01E7E8 01F844 01F860 01F8F3 01F8F7 01F919 01F91D 01F952 01F956 01F978 01F97C 01FB3E 01FC1F 01FC6C 01FF00 
; ram_037F                              = $037F ; 0100B5 0137A6 0137BE 018202 018274 018865 01898C 0189C2 018B92 018D68 018D6B 018E3D 018E40 018F47 01901A 019300 01934E 0193B2 0193FB 0194F6 0194F9 01972E 019731 019C68 019E2A 01A2DB 01A300 01A4E7 01D00C 01D23A 01D559 01D690 01E31F 01E427 01E55F 01E569 01E5A9 01E7E8 01F844 01F860 01F8F3 01F8F7 01F919 01F91D 01F952 01F956 01F978 01F97C 01FB3E 01FC1F 01FC6C 01FF00 



; 0380-038F (10) 
ram_spd_X_lo                            = $0380 ; 0180AF 01CA66 01CAD6 01CAE5 01CB05 01CBA8 01CBD0 01CD8B 01CDD2 01CEB5 01D0C0 01D125 01D13F 01D157 01D3F2 01D3F8 01D407 01D445 01D44B 01D45A 01D468 01D478 01D47D 01D617 01D641 01D650 01D65E 01D674 01F89B 01F8B9 01FF00 
; ram_0381                              = $0381 ; 01D08A 01F89B 01F8B9 01FF00 
; ram_0382                              = $0382 ; 01D08A 01F89B 01F8B9 01FF00 
; ram_0383                              = $0383 ; 01FF00 
; ram_0384                              = $0384 ; 01FF00 
; ram_0385                              = $0385 ; 0137EE 018383 0188B5 01A809 01A850 01A875 01A87B 01CF57 01F89B 01F8B9 01FE0A 01FF00 
; ram_0386                              = $0386 ; 0137EE 018383 0188B5 018BA9 018D8E 018E73 018EC4 01A809 01A850 01A861 01A867 01A875 01A87B 01CF57 01D69E 01F89B 01F8B9 01FF00 
; ram_0387                              = $0387 ; 0137EE 01834A 018383 0188B5 018D8E 018E73 018EC4 0193E7 01994A 019965 019AF5 01A513 01A5C1 01A809 01A850 01A861 01A867 01CA3B 01CF57 01D69E 01F89B 01F8B9 01FE0A 01FF00 
; ram_0388                              = $0388 ; 0137EE 01834A 018383 0188B5 018D8E 018E73 018EC4 01933A 0193E7 01A2C4 01A513 01A5C1 01A809 01A850 01A861 01A867 01A875 01A87B 01CF57 01D69E 01F89B 01F8B9 01FE0A 01FF00 
; ram_0389                              = $0389 ; 0137EE 01834A 018383 0188B5 018A55 018BA9 018D8E 018E73 018EC4 01933A 0193E7 019814 019832 019840 01A199 01A2C4 01A380 01A513 01A5C1 01A809 01A850 01A861 01A867 01A875 01A87B 01CF57 01D69E 01F89B 01F8B9 01FE0A 01FF00 
; ram_038A                              = $038A ; 0137EE 01834A 018383 0188B5 018A55 018C52 018D8E 018E73 018EC4 018F65 01933A 0193E7 019814 019832 019840 01994A 019965 019AF5 01A199 01A2C4 01A380 01A513 01A5C1 01A809 01A850 01A861 01A867 01A875 01A87B 01CA3B 01CF57 01D69E 01F89B 01F8B9 01FE0A 01FF00 
; ram_038B                              = $038B ; 0137EE 01834A 018383 0188B5 018C52 018D8E 018E73 018EC4 018F65 01902C 01933A 0193E7 0197AE 0197C4 019B5E 019E47 019F5E 01A199 01A2C4 01A380 01A513 01A5C1 01CA3B 01CF57 01F89B 01F8B9 01FE0A 01FF00 
; ram_038C                              = $038C ; 0137EE 01834A 018383 0188B5 018A55 018D8E 018E73 018EC4 018F65 01902C 01933A 0193E7 0197AE 0197C4 019814 019832 019840 01994A 019965 019B5E 019C9F 019E47 019F5E 01A199 01A2C4 01A380 01A513 01A5C1 01CA3B 01CF57 01F89B 01F8B9 01FE0A 01FF00 
; ram_038D                              = $038D ; 0137EE 01834A 018383 0188B5 018A55 018BA9 018D8E 018E73 018EC4 018F65 01933A 0193E7 0197AE 0197C4 01994A 019965 019AF5 019B5E 019C9F 019E47 019F49 019F5E 01A513 01A5C1 01CA3B 01CF57 01F89B 01F8B9 01FE0A 01FF00 
; ram_038E                              = $038E ; 0137EE 018317 01834A 018383 0188B5 018A55 018BA9 018D8E 018E73 018EC4 018F65 01902C 01933A 0193E7 0197AE 0197C4 019814 019832 019840 01994A 019965 019AF5 019B5E 019C9F 019E47 019F49 019F5E 01A199 01CA3B 01CF57 01D69E 01F89B 01F8B9 01FE0A 01FF00 
; ram_038F                              = $038F ; 0137EE 018317 01834A 018383 0188B5 018A55 018D8E 018E73 018EC4 01933A 0193E7 0197AE 0197C4 019814 019832 019840 01994A 019965 019AF5 019B5E 019BEC 019CED 01CA3B 01CF57 01D69E 01F89B 01F8B9 01FE0A 01FF00 



; 0390-039F (10) 
ram_spd_X_hi                            = $0390 ; 0180B4 01CA6B 01CAD3 01CAE8 01CB0E 01CBAB 01CBD3 01CD8E 01CDD5 01CEBA 01D0C5 01D12E 01D142 01D15E 01D3FB 01D400 01D40A 01D44E 01D453 01D460 01D46E 01D471 01D61F 01D649 01D654 01D663 01D670 01F8A4 01F8C2 01FF00 
; ram_0391                              = $0391 ; 01D08F 01F8A4 01F8C2 01FF00 
; ram_0392                              = $0392 ; 01D08F 01F8A4 01F8C2 01FF00 
; ram_0393                              = $0393 ; 01FF00 
; ram_0394                              = $0394 ; 01FF00 
; ram_0395                              = $0395 ; 0137F4 018388 0188AD 01A80E 01A855 01A87E 01A883 01CF5F 01F8A4 01F8C2 01FE10 01FF00 
; ram_0396                              = $0396 ; 0137F4 018388 0188AD 018BA4 018D94 018E79 018EB9 01A80E 01A855 01A86A 01A86F 01A87E 01A883 01CF5F 01D699 01F8A4 01F8C2 01FF00 
; ram_0397                              = $0397 ; 0137F4 01834F 018388 0188AD 018D94 018E79 018EB9 01940C 01994F 01996A 019AFD 01A4FA 01A5C6 01A80E 01A855 01A86A 01A86F 01CA40 01CF5F 01D699 01F8A4 01F8C2 01FE10 01FF00 
; ram_0398                              = $0398 ; 0137F4 01834F 018388 0188AD 018D94 018E79 018EB9 019361 01940C 01A2CD 01A4FA 01A5C6 01A80E 01A855 01A86A 01A86F 01A87E 01A883 01CF5F 01D699 01F8A4 01F8C2 01FE10 01FF00 
; ram_0399                              = $0399 ; 0137F4 01834F 018388 0188AD 018A5A 018BA4 018D94 018E79 018EB9 019361 01940C 019800 019835 01A194 01A2CD 01A385 01A4FA 01A5C6 01A80E 01A855 01A86A 01A86F 01A87E 01A883 01CF5F 01D699 01F8A4 01F8C2 01FE10 01FF00 
; ram_039A                              = $039A ; 0137F4 01834F 018388 0188AD 018A5A 018C5A 018D94 018E79 018EB9 018F6A 019361 01940C 019800 019835 01994F 01996A 019AFD 01A194 01A2CD 01A385 01A4FA 01A5C6 01A80E 01A855 01A86A 01A86F 01A87E 01A883 01CA40 01CF5F 01D699 01F8A4 01F8C2 01FE10 01FF00 
; ram_039B                              = $039B ; 0137F4 01834F 018388 0188AD 018C5A 018D94 018E79 018EB9 018F6A 019031 019361 01940C 0197B1 0197C9 019B66 019E4C 019F61 01A194 01A2CD 01A385 01A4FA 01A5C6 01CA40 01CF5F 01F8A4 01F8C2 01FE10 01FF00 
; ram_039C                              = $039C ; 0137F4 01834F 018388 0188AD 018A5A 018D94 018E79 018EB9 018F6A 019031 019361 01940C 0197B1 0197C9 019800 019835 01994F 01996A 019B66 019CA4 019E4C 019F61 01A194 01A2CD 01A385 01A4FA 01A5C6 01CA40 01CF5F 01F8A4 01F8C2 01FE10 01FF00 
; ram_039D                              = $039D ; 0137F4 01834F 018388 0188AD 018A5A 018BA4 018D94 018E79 018EB9 018F6A 019361 01940C 0197B1 0197C9 01994F 01996A 019AFD 019B66 019CA4 019E4C 019F4E 019F61 01A4FA 01A5C6 01CA40 01CF5F 01F8A4 01F8C2 01FE10 01FF00 
; ram_039E                              = $039E ; 0137F4 01831F 01834F 018388 0188AD 018A5A 018BA4 018D94 018E79 018EB9 018F6A 019031 019361 01940C 0197B1 0197C9 019800 019835 01994F 01996A 019AFD 019B66 019CA4 019E4C 019F4E 019F61 01A194 01CA40 01CF5F 01D699 01F8A4 01F8C2 01FE10 01FF00 
; ram_039F                              = $039F ; 0137F4 01831F 01834F 018388 0188AD 018A5A 018D94 018E79 018EB9 019361 01940C 0197B1 0197C9 019800 019835 01994F 01996A 019AFD 019B66 019BE7 019CF2 01CA40 01CF5F 01D699 01F8A4 01F8C2 01FE10 01FF00 



; 03A0-03AF (10) 
ram_spd_Y_lo                            = $03A0 ; 01CA70 01CB40 01CB6A 01CB70 01CB7F 01CB8D 01CBA0 01CBA5 01CBB0 01CBD6 01CD73 01CE0F 01CE78 01D1E3 01D25B 01D261 01D40E 01D414 01D423 01F8D7 01F8FF 01F936 01F95E 01F980 01F986 01F9A5 01F9AB 01FF00 
; ram_03A1                              = $03A1 ; 018745 01F8D7 01F8FF 01FF00 
; ram_03A2                              = $03A2 ; 018745 01F8D7 01F8FF 01FF00 
; ram_03A3                              = $03A3 ; 01FF00 
; ram_03A4                              = $03A4 ; 01FF00 
; ram_03A5                              = $03A5 ; 01838D 0188B8 01943F 01CF5A 01F8D7 01F8FF 01F936 01F95E 01F980 01F986 01F9A5 01F9AB 01FE1A 01FF00 
; ram_03A6                              = $03A6 ; 01838D 0188B8 018B9A 018D9A 018E51 018EBF 019508 0195A1 01CF5A 01F8D7 01F8FF 01F936 01F95E 01F980 01F986 01F9A5 01F9AB 01FF00 
; ram_03A7                              = $03A7 ; 018354 01838D 0188B8 018A30 018A8D 018D9A 018E51 018EBF 0193E4 01943F 019508 0195A1 0198AB 019940 01995B 019AF8 01A519 01CA31 01CF5A 01F8D7 01F8FF 01F936 01F95E 01F980 01F986 01F9A5 01F9AB 01FE1A 01FF00 
; ram_03A8                              = $03A8 ; 018354 01838D 0188B8 018A30 018A8D 018D9A 018E51 018EBF 019334 0193E4 019508 0195A1 0199C2 01A2C7 01A519 01CF5A 01F8D7 01F8FF 01F936 01F95E 01F980 01F986 01F9A5 01F9AB 01FE1A 01FF00 
; ram_03A9                              = $03A9 ; 018354 01838D 0188B8 018A30 018A4F 018A8D 018B9A 018CD4 018D1C 018D2D 018D9A 018E51 018EBF 019334 0193E4 01943F 019508 0195A1 019819 01A18E 01A2C7 01A350 01A388 01A519 01CF5A 01F8D7 01F8FF 01F936 01F95E 01F980 01F986 01F9A5 01F9AB 01FE1A 01FF00 
; ram_03AA                              = $03AA ; 018354 01838D 018679 0188B8 018A30 018A4F 018A8D 018B62 018BD1 018C55 018CD4 018D1C 018D2D 018D9A 018E51 018EBF 018F5B 019334 0193E4 01943F 019508 0195A1 01968C 019819 0198AB 019940 01995B 0199C2 019AF8 01A18E 01A2C7 01A350 01A388 01A519 01CA31 01CF5A 01F8D7 01F8FF 01F936 01F95E 01F980 01F986 01F9A5 01F9AB 01FE1A 01FF00 
; ram_03AB                              = $03AB ; 018354 01838D 018679 0188B8 0188FB 018A30 018A8D 018C55 018CD4 018D1C 018D2D 018D9A 018E51 018EBF 018F5B 019022 019334 0193E4 01943F 019508 0195A1 019792 0199C2 019B61 019E51 019F64 01A18E 01A2C7 01A350 01A388 01A519 01CA31 01CF5A 01F8D7 01F8FF 01F936 01F95E 01F980 01F986 01F9A5 01F9AB 01FE1A 01FF00 
; ram_03AC                              = $03AC ; 018354 01838D 018679 0188B8 0188FB 018A30 018A4F 018A8D 018B62 018BD1 018CD4 018D1C 018D2D 018D9A 018E51 018EBF 018F5B 019022 019334 0193E4 01943F 019508 0195A1 01968C 019792 019819 0198AB 019940 01995B 0199C2 019B61 019E51 019F64 01A18E 01A2C7 01A350 01A388 01A519 01CA31 01CF5A 01F8D7 01F8FF 01F936 01F95E 01F980 01F986 01F9A5 01F9AB 01FE1A 01FF00 
; ram_03AD                              = $03AD ; 018354 01838D 018679 0188B8 0188FB 018A30 018A4F 018A8D 018B9A 018BD1 018CD4 018D1C 018D2D 018D9A 018E51 018EBF 018F5B 019334 0193E4 01943F 019508 0195A1 01968C 019792 0198AB 019940 01995B 0199C2 019AF8 019B61 019E51 019F64 01A519 01CA31 01CF5A 01F8D7 01F8FF 01F936 01F95E 01F980 01F986 01F9A5 01F9AB 01FE1A 01FF00 
; ram_03AE                              = $03AE ; 01831A 018354 01838D 018679 0187D3 0188B8 0188FB 018A30 018A4F 018A8D 018B9A 018CD4 018D1C 018D2D 018D9A 018E51 018EBF 018F5B 019022 019334 0193E4 01943F 019508 019792 019819 0198AB 019940 01995B 0199C2 019AF8 019B61 019E51 019F64 01A18E 01CA31 01CF5A 01F8D7 01F8FF 01F936 01F95E 01F980 01F986 01F9A5 01F9AB 01FE1A 01FF00 
; ram_03AF                              = $03AF ; 01831A 018354 01838D 018679 0187D3 0188B8 0188FB 018A30 018A4F 018A8D 018B62 018BD1 018CD4 018D1C 018D2D 018D9A 018E51 018EBF 019334 0193E4 01943F 019508 019792 019819 0198AB 019940 01995B 0199C2 019AF8 019B61 01A1F7 01CA31 01CF5A 01F8D7 01F8FF 01F936 01F95E 01F980 01F986 01F9A5 01F9AB 01FE1A 01FF00 



; 03B0-03BF (10) 
ram_spd_Y_hi                            = $03B0 ; 01CA75 01CB3D 01CB73 01CB78 01CB85 01CB93 01CB99 01CBB3 01CBD9 01CD76 01CE14 01CE65 01CE7B 01CE7E 01CE95 01CEFA 01D1E8 01D203 01D250 01D255 01D264 01D269 01D299 01D2A8 01D417 01D41C 01D426 01F83F 01F8E0 01F908 01F921 01F93F 01F967 01F989 01F98E 01F9A0 01F9B0 01FF00 
; ram_03B1                              = $03B1 ; 01874A 01F8E0 01F908 01FF00 
; ram_03B2                              = $03B2 ; 01874A 01F8E0 01F908 01FF00 
; ram_03B3                              = $03B3 ; 01FF00 
; ram_03B4                              = $03B4 ; 01FF00 
; ram_03B5                              = $03B5 ; 018392 0188B0 019444 01CF62 01F8E0 01F908 01F921 01F93F 01F967 01F989 01F98E 01F9A0 01F9B0 01FE20 01FF00 
; ram_03B6                              = $03B6 ; 018392 0188B0 018B9F 018DA0 018E56 018EBC 019503 0195A6 01CF62 01F83F 01F8E0 01F908 01F921 01F93F 01F967 01F989 01F98E 01F9A0 01F9B0 01FF00 
; ram_03B7                              = $03B7 ; 018359 018392 0188B0 018A35 018A92 018DA0 018E56 018EBC 01940F 019444 019503 0195A6 0198A4 0198AE 019945 019960 019B00 01A4FF 01CA36 01CF62 01F83F 01F8E0 01F908 01F921 01F93F 01F967 01F989 01F98E 01F9A0 01F9B0 01FE20 01FF00 
; ram_03B8                              = $03B8 ; 018359 018392 0188B0 018A35 018A92 018DA0 018E56 018EBC 019364 01940F 019503 0195A6 0199C7 01A2D0 01A4FF 01CF62 01F83F 01F8E0 01F908 01F921 01F93F 01F967 01F989 01F98E 01F9A0 01F9B0 01FE20 01FF00 
; ram_03B9                              = $03B9 ; 018359 018392 0188B0 018A35 018A52 018A92 018B9F 018CD9 018D21 018D32 018DA0 018E56 018EBC 019364 01940F 019444 019503 0195A6 01981E 01A191 01A2D0 01A353 01A38B 01A4FF 01CF62 01F83F 01F8E0 01F908 01F921 01F93F 01F967 01F989 01F98E 01F9A0 01F9B0 01FE20 01FF00 
; ram_03BA                              = $03BA ; 018359 018392 01867C 0188B0 018A35 018A52 018A92 018B67 018BD6 018C5D 018CD9 018D21 018D32 018DA0 018E56 018EBC 018F60 018F84 019364 01940F 019444 019503 0195A6 019691 01981E 0198A4 0198AE 019945 019960 0199C7 019B00 01A191 01A2D0 01A353 01A38B 01A4FF 01CA36 01CF62 01F83F 01F8E0 01F908 01F921 01F93F 01F967 01F989 01F98E 01F9A0 01F9B0 01FE20 01FF00 
; ram_03BB                              = $03BB ; 018359 018392 01867C 0188B0 018903 018A35 018A92 018C5D 018CD9 018D21 018D32 018DA0 018E56 018EBC 018F60 018F84 019027 019364 01940F 019444 019503 0195A6 019795 0198A4 0199C7 019B69 019E54 019F67 01A191 01A2D0 01A353 01A38B 01A4FF 01CA36 01CF62 01F83F 01F8E0 01F908 01F921 01F93F 01F967 01F989 01F98E 01F9A0 01F9B0 01FE20 01FF00 
; ram_03BC                              = $03BC ; 018359 018392 01867C 0188B0 018903 018A35 018A52 018A92 018B67 018BD6 018CD9 018D21 018D32 018DA0 018E56 018EBC 018F60 018F84 019027 019364 01940F 019444 019503 0195A6 019691 019795 01981E 0198A4 0198AE 019945 019960 0199C7 019B69 019E54 019F67 01A191 01A2D0 01A353 01A38B 01A4FF 01CA36 01CF62 01F83F 01F8E0 01F908 01F921 01F93F 01F967 01F989 01F98E 01F9A0 01F9B0 01FE20 01FF00 
; ram_03BD                              = $03BD ; 018359 018392 01867C 0188B0 018903 018A35 018A52 018A92 018B9F 018BD6 018CD9 018D21 018D32 018DA0 018E56 018EBC 018F60 018F84 019364 01940F 019444 019503 0195A6 019691 019795 0198A4 0198AE 019945 019960 0199C7 019B00 019B69 019E54 019F67 01A4FF 01CA36 01CF62 01F83F 01F8E0 01F908 01F921 01F93F 01F967 01F989 01F98E 01F9A0 01F9B0 01FE20 01FF00 
; ram_03BE                              = $03BE ; 018322 018359 018392 01867C 0187D6 0188B0 018903 018A35 018A52 018A92 018B9F 018CD9 018D21 018D32 018DA0 018E56 018EBC 018F60 018F84 019027 019364 01940F 019444 019503 019795 01981E 0198A4 0198AE 019945 019960 0199C7 019B00 019B69 019E54 019F67 01A191 01CA36 01CF62 01F83F 01F8E0 01F908 01F921 01F93F 01F967 01F989 01F98E 01F9A0 01F9B0 01FE20 01FF00 
; ram_03BF                              = $03BF ; 018322 018359 018392 01867C 0187D6 0188B0 018903 018A35 018A52 018A92 018B67 018BD6 018CD9 018D21 018D32 018DA0 018E56 018EBC 019364 01940F 019444 019503 019795 01981E 0198A4 0198AE 019945 019960 0199C7 019B00 019B69 01A1FC 01CA36 01CF62 01F83F 01F8E0 01F908 01F921 01F93F 01F967 01F989 01F98E 01F9A0 01F9B0 01FE20 01FF00 



; 03C0-03CF (10) 
ram_03C0_obj                            = $03C0 ; 01FF00 
; ram_03C1                              = $03C1 ; 01D040 01FF00 
; ram_03C2                              = $03C2 ; 0180F5 01D040 01FF00 
; ram_03C3                              = $03C3 ; 01FF00 
; ram_03C4                              = $03C4 ; 01FF00 
; ram_03C5                              = $03C5 ; 0137D8 018054 01816C 0181AB 0181B0 0181E2 018220 018234 0183A4 01A7F3 01FA2E 01FA8A 01FB11 01FBE5 01FF00 
; ram_03C6                              = $03C6 ; 0137D8 018054 01816C 0181AB 0181B0 0181E2 018220 018234 0183A4 018BAE 018D70 018E2F 0194DA 019720 01A7F3 01D693 01FA2E 01FA8A 01FB11 01FBE5 01FF00 
; ram_03C7                              = $03C7 ; 0137D8 018054 01816C 0181AB 0181B0 0181E2 018220 018234 018369 0183A4 018D70 018E2F 0193CF 0194DA 019720 01A4C2 01A5A9 01A7F3 01CFBF 01D693 01FA2E 01FA40 01FA8A 01FA95 01FB11 01FBE5 01FF00 
; ram_03C8                              = $03C8 ; 0137D8 018054 01816C 0181AB 0181B0 0181E2 018220 018234 018369 0183A4 018D70 018E2F 01931D 0193CF 0194DA 01A2A0 01A4C2 01A5A9 01A7F3 01CFBF 01D693 01FA2E 01FA8A 01FB11 01FBE5 01FF00 
; ram_03C9                              = $03C9 ; 0137D8 018054 01816C 0181AB 0181B0 0181E2 018220 018234 018369 0183A4 018BAE 018D70 018E2F 0190A6 0190AB 01912C 019131 019142 019147 01931D 0193CF 0194DA 019720 01A19E 01A2A0 01A4C2 01A5A9 01A7F3 01CFBF 01D693 01FA2E 01FA40 01FA8A 01FA95 01FB11 01FBE5 01FF00 
; ram_03CA                              = $03CA ; 0137D8 018054 01816C 0181AB 0181B0 0181E2 018220 018234 018369 0183A4 018B4D 018C62 018D70 018E2F 018F36 0190A6 0190AB 01912C 019131 019142 019147 01931D 0193CF 0194DA 0196BF 0196C4 019720 01A19E 01A2A0 01A4C2 01A5A9 01A7F3 01CFBF 01D693 01FA2E 01FA40 01FA8A 01FA95 01FB11 01FBE5 01FF00 
; ram_03CB                              = $03CB ; 0137D8 018054 01816C 0181AB 0181B0 0181E2 018220 018234 018369 0183A4 018919 018C62 018D70 018E2F 018F36 018FFE 0190A6 0190AB 01912C 019131 019142 019147 01931D 0193CF 0194DA 019720 019E1A 01A19E 01A2A0 01A4C2 01A5A9 01CFBF 01D23F 01FA2E 01FA40 01FA8A 01FA95 01FB11 01FBE5 01FF00 
; ram_03CC                              = $03CC ; 0137D8 018054 01816C 0181AB 0181B0 0181E2 018220 018234 018369 0183A4 01843A 01843F 01845F 018919 018B4D 018D70 018E2F 018F36 018FFE 0190A6 0190AB 01912C 019131 019142 019147 01931D 0193CF 0194DA 0196BF 0196C4 019720 019CA9 019E1A 01A19E 01A2A0 01A4C2 01A5A9 01A6AD 01A6B9 01A6C4 01A6C9 01CFBF 01D23F 01FA2E 01FA40 01FA8A 01FA95 01FB11 01FBE5 01FF00 
; ram_03CD                              = $03CD ; 0137D8 018054 01816C 0181AB 0181B0 0181E2 018220 018234 018369 0183A4 018919 018BAE 018D70 018E2F 018F36 01931D 0193CF 0194DA 019654 0196BF 0196C4 019720 019CA9 019E1A 01A4C2 01A5A9 01CFBF 01D23F 01FA2E 01FA40 01FA8A 01FA95 01FB11 01FBE5 01FF00 
; ram_03CE                              = $03CE ; 0137D8 018054 01816C 0181AB 0181B0 0181E2 018220 018234 01833D 018369 0183A4 0187D9 018872 018919 018BAE 018D70 018E2F 018F36 018FFE 0190A6 0190AB 01912C 019131 019142 019147 01931D 0193CF 0194DA 019654 019720 019CA9 019E1A 019FC8 019FE6 01A022 01A19E 01CFBF 01D23F 01D693 01FA2E 01FA40 01FA8A 01FA95 01FB11 01FBE5 01FF00 
; ram_03CF                              = $03CF ; 0137D8 018054 01816C 0181AB 0181B0 0181E2 018220 018234 01833D 018369 0183A4 018403 018408 01841A 0187D9 018919 018B4D 018D70 018E2F 0190A6 0190AB 01912C 019131 019142 019147 01931D 0193CF 0194DA 019720 019FC8 019FE6 01A022 01A3F4 01A400 01A41C 01A421 01CFBF 01D23F 01D693 01FA2E 01FA40 01FA8A 01FA95 01FB11 01FBE5 01FF00 



; 03D0-03DF (10) mostly for other objects, not player
ram_direction                           = $03D0 ; 0180BE 0180CA 01FCCA 01FF00 
; ram_03D1                              = $03D1 ; 018733 01873B 01D06D 01FCCA 01FD10 01FF00 
; ram_03D2                              = $03D2 ; 018733 01873B 019782 019803 01990F 01D06D 01FCCA 01FD10 01FF00 
; ram_03D3                              = $03D3 ; 01FF00 
; ram_03D4                              = $03D4 ; 01FF00 
; ram_03D5                              = $03D5 ; 01839A 01839F 0188C7 0188E2 0188E7 019449 01A81B 01A85C 01CF52 01FC81 01FC95 01FCCA 01FCDD 01FCEF 01FD10 01FDFD 01FF00 
; ram_03D6                              = $03D6 ; 01839A 01839F 0188C7 0188E2 0188E7 018BBD 018D82 018DA3 018E66 018EB4 018EE5 018EEA 019072 019077 0194FE 01955F 01959C 01A81B 01A85C 01CF52 01D6A8 01FC81 01FC95 01FC99 01FCCA 01FCDD 01FCEF 01FD10 01FF00 
; ram_03D7                              = $03D7 ; 018361 018364 01839A 01839F 0188C7 0188E2 0188E7 018A38 018A3D 018A6A 018A6F 018D82 018DA3 018E66 018EB4 018EE5 018EEA 0193DF 019449 0194FE 01955F 01959C 0198B4 0198F8 019918 019924 019AF0 01A50D 01A81B 01A85C 01CA4A 01CF52 01D6A8 01FC81 01FC95 01FC99 01FCCA 01FCDD 01FCEF 01FD10 01FDFD 01FF00 
; ram_03D8                              = $03D8 ; 018364 01839A 01839F 0188C7 0188E2 0188E7 018A38 018A3D 018A6A 018A6F 018D82 018DA3 018E66 018EB4 018EE5 018EEA 01923E 019268 01926D 01932E 0193DF 0194FE 01955F 01959C 0199CC 01A283 01A50D 01A81B 01A85C 01CF52 01D6A8 01FC81 01FC95 01FC99 01FCCA 01FCDD 01FCEF 01FD10 01FDFD 01FF00 
; ram_03D9                              = $03D9 ; 018361 018364 01839A 01839F 0188C7 0188E2 0188E7 018A38 018A3D 018BBD 018CE3 018CE6 018CF3 018CF6 018CFC 018D0E 018D13 018D7D 018D82 018DA3 018E66 018EB4 018EE5 018EEA 0190B0 0190E0 01923E 019268 01926D 01932E 0193DF 019449 0194FE 01955F 01959C 019806 0198F8 01A283 01A358 01A390 01A50D 01A81B 01A85C 01CF52 01D6A8 01FC81 01FC95 01FC99 01FCCA 01FCDD 01FCEF 01FD10 01FDFD 01FF00 
; ram_03DA                              = $03DA ; 018361 018364 01839A 01839F 018674 0188C7 0188E2 0188E7 018A38 018A3D 018A6A 018A6F 018B58 018B5D 018BB6 018BD9 018BDE 018C93 018CE3 018CE6 018CF3 018CF6 018CFC 018D0E 018D13 018D7D 018D82 018DA3 018E66 018EB4 018EE5 018EEA 018F72 019072 019077 0190B0 0190E0 01923E 019268 01926D 01932E 0193DF 019449 0194FE 01955F 01959C 019806 0198B4 0198F8 019918 019924 0199CC 019AF0 01A283 01A358 01A390 01A50D 01A81B 01A85C 01CA4A 01CA5B 01CF52 01D6A8 01FC81 01FC95 01FC99 01FCCA 01FCDD 01FCEF 01FD10 01FDFD 01FF00 
; ram_03DB                              = $03DB ; 018361 018364 01839A 01839F 018657 018674 0188C7 0188E2 0188E7 0188F6 01890F 01894F 018A38 018A3D 018A6A 018A6F 018C93 018CE3 018CE6 018CF3 018CF6 018CFC 018D0E 018D13 018D7D 018D82 018DA3 018E66 018EB4 018EE5 018EEA 018F72 018FA2 018FBD 018FCE 018FD3 01903C 019072 019077 0190B0 0190E0 01923E 019268 01926D 01932E 0193DF 019449 0194FE 01955F 01959C 019785 0198F8 0199CC 019B59 019E39 01A283 01A358 01A390 01A50D 01CA4A 01CA5B 01CF52 01FC81 01FC95 01FC99 01FCCA 01FCDD 01FCEF 01FD10 01FDFD 01FF00 
; ram_03DC                              = $03DC ; 018361 018364 01839A 01839F 018657 018674 0188C7 0188E2 0188E7 0188F6 01890F 018946 01894B 018A38 018A3D 018A6A 018A6F 018B58 018B5D 018BB6 018BD9 018BDE 018C90 018CE3 018CE6 018CF3 018CF6 018CFC 018D0E 018D13 018D7D 018D82 018DA3 018E66 018EB4 018EE5 018EEA 018F72 018FA2 018FBD 018FCE 018FD3 01903C 019072 019077 0190B0 0190E0 01923E 019268 01926D 01932E 0193DF 019449 0194FE 01955F 01959C 019785 019806 0198B4 0198F8 019912 019918 019924 0199CC 019B59 019C77 019E39 01A283 01A358 01A390 01A50D 01CA4A 01CA5B 01CF52 01FC81 01FC95 01FC99 01FCCA 01FCDD 01FCEF 01FD10 01FDFD 01FF00 
; ram_03DD                              = $03DD ; 018361 018364 01839A 01839F 018657 018674 0188C7 0188E2 0188E7 0188F6 01890F 018946 01894B 01894F 018A38 018A3D 018A6A 018A6F 018BBD 018BD9 018BDE 018CE3 018CE6 018CF3 018CF6 018CFC 018D0E 018D13 018D7D 018D82 018DA3 018E66 018EB4 018EE5 018EEA 018F72 019072 019077 01923E 019268 01926D 01932E 0193DF 019449 0194FE 01955F 01959C 019785 0198B4 0198F8 019912 019918 019924 019930 0199CC 019AF0 019B59 019C77 019E39 01A50D 01CA4A 01CA5B 01CF52 01FC81 01FC95 01FC99 01FCCA 01FCDD 01FCEF 01FD10 01FDFD 01FF00 
; ram_03DE                              = $03DE ; 01832C 018338 018361 018364 01839A 01839F 018657 018674 0188C7 0188E2 0188E7 0188F6 01890F 018946 01894B 01894F 018A38 018A3D 018A6A 018A6F 018BBD 018CE3 018CE6 018CF3 018CF6 018CFC 018D0E 018D13 018D7D 018D82 018DA3 018E66 018EB4 018EE5 018EEA 018F72 018FA2 01903C 019072 019077 0190B0 0190E0 019114 019119 01923E 019268 01926D 01932E 0193DF 019449 0194FE 01955F 019785 019806 0198B4 0198F8 019912 019918 019924 019930 0199CC 019AF0 019B59 019C77 019E39 019FE9 01A02A 01A02F 01A060 01CA4A 01CA5B 01CF52 01D6A8 01FC81 01FC95 01FC99 01FCCA 01FCDD 01FCEF 01FD10 01FDFD 01FF00 
; ram_03DF                              = $03DF ; 01832C 018338 018361 018364 01839A 01839F 018657 018674 0188C7 0188E2 0188E7 0188F6 01890F 018946 01894B 01894F 018A38 018A3D 018A6A 018A6F 018B58 018B5D 018BB6 018BD9 018BDE 018CE3 018CE6 018CF3 018CF6 018CFC 018D0E 018D13 018D7D 018D82 018DA3 018E66 018EB4 018EE5 018EEA 018FA2 018FBD 018FCE 018FD3 019072 019077 0190B0 0190E0 019114 019119 01923E 019268 01926D 01932E 0193DF 019449 0194FE 01955F 019785 019806 0198B4 0198F8 019912 019918 019924 019930 0199CC 019AF0 019B59 019C74 019D1D 019E36 019E72 019E77 019E85 019FE9 01A02A 01A02F 01A060 01A1F2 01CA4A 01CA5B 01CF52 01D6A8 01FC81 01FC95 01FC99 01FCCA 01FCDD 01FCEF 01FD10 01FDFD 01FF00 



; 03E0-03EF (10) 
ram_03E0_obj                            = $03E0 ; 01FF00 
; ram_03E1                              = $03E1 ; 01002D 01004E 0101E6 01376A 01C1EF 01FF00 
; ram_03E2                              = $03E2 ; 01002D 01004E 010112 0101E6 01376A 01C1EF 01FF00 
; ram_03E3                              = $03E3 ; 01002D 01004E 01376A 01C1EF 01FF00 
; ram_03E4                              = $03E4 ; 01002D 01004E 01376A 01C1EF 01FF00 
; ram_03E5                              = $03E5 ; 01002D 01004E 010112 01376A 013791 01C1EF 01FF00 
; ram_03E6                              = $03E6 ; 01002D 01004E 010112 0101E6 01376A 013791 01C1EF 01FF00 
; ram_03E7                              = $03E7 ; 01002D 01004E 010112 0101E6 01376A 013791 01C1EF 01FE74 01FE83 01FF00 
; ram_03E8                              = $03E8 ; 01002D 01004E 010112 0101E6 01376A 013791 01C1EF 01FE74 01FE83 01FF00 
; ram_03E9                              = $03E9 ; 01002D 01004E 010112 0101E6 01376A 013791 01C1EF 01FE74 01FE83 01FF00 
; ram_03EA                              = $03EA ; 01002D 01004E 010112 0101E6 01376A 013791 01C1EF 01FE74 01FE83 01FF00 
; ram_03EB                              = $03EB ; 01002D 01004E 010112 0101E6 01376A 013791 01C1EF 01FE74 01FE83 01FF00 
; ram_03EC                              = $03EC ; 01002D 01004E 010112 0101E6 01376A 013791 01C1EF 01FE74 01FE83 01FF00 
; ram_03ED                              = $03ED ; 01002D 01004E 010112 0101E6 01376A 013791 01C1EF 01FE74 01FE83 01FF00 
; ram_03EE                              = $03EE ; 01002D 01004E 010112 0101E6 01376A 013791 01C1EF 01FE74 01FE83 01FF00 
; ram_03EF                              = $03EF ; 01002D 01004E 010112 0101E6 01376A 013791 01C1EF 01FE74 01FE83 01FF00 



; 03F0-03FF (10) 
ram_03F0_obj                            = $03F0 ; 01FF00 
; ram_03F1                              = $03F1 ; 01FF00 
; ram_03F2                              = $03F2 ; 01FF00 
; ram_03F3                              = $03F3 ; 01FF00 
; ram_03F4                              = $03F4 ; 01FF00 
; ram_03F5                              = $03F5 ; 0137DE 01A7F8 01FF00 
; ram_03F6                              = $03F6 ; 0137DE 0182A9 0182AF 018BB3 018D75 018E34 0194DF 019725 01A7F8 01FF00 
; ram_03F7                              = $03F7 ; 0137DE 0182A9 0182AF 0182F8 018D75 018E34 0193D4 0194DF 019725 01A4C7 01A7F8 01FF00 
; ram_03F8                              = $03F8 ; 0137DE 0182A9 0182AF 0182F8 018D75 018E34 019322 0193D4 0194DF 01A2AB 01A4C7 01A7F8 01FF00 
; ram_03F9                              = $03F9 ; 0137DE 0182A9 0182AF 0182F8 018BB3 018D75 018E34 019322 0193D4 0194DF 019725 01A1A3 01A2AB 01A4C7 01A7F8 01FF00 
; ram_03FA                              = $03FA ; 0137DE 0182A9 0182AF 0182F8 018C67 018D75 018E34 018F3B 019322 0193D4 0194DF 019725 01A1A3 01A2AB 01A4C7 01A7F8 01FF00 
; ram_03FB                              = $03FB ; 0137DE 0182A9 0182AF 0182F8 018C67 018D75 018E34 018F3B 019003 019322 0193D4 0194DF 019725 019E59 01A1A3 01A2AB 01A4C7 01FF00 
; ram_03FC                              = $03FC ; 0137DE 0182A9 0182AF 0182F8 01842B 018431 018D75 018E34 018F3B 019003 019322 0193D4 0194DF 019725 019CAE 019E59 01A1A3 01A2AB 01A4C7 01FF00 
; ram_03FD                              = $03FD ; 0137DE 0182A9 0182AF 0182F8 018BB3 018D75 018E34 018F3B 019322 0193D4 0194DF 019725 019CAE 019E59 01A4C7 01FF00 
; ram_03FE                              = $03FE ; 0137DE 0182A9 0182AF 0182F8 018878 018BB3 018D75 018E34 018F3B 019003 019322 0193D4 0194DF 019725 019CAE 019E59 01A1A3 01FF00 
; ram_03FF                              = $03FF ; 0137DE 0182A9 0182AF 0182F8 0183E6 0183EC 018D75 018E34 019322 0193D4 0194DF 019725 01FF00 



; 0400-040F (10) 
ram_0400_obj                            = $0400 ; 01009E 010116 01011B 010132 010190 0101C4 0101CB 01020A 0180C1 0189D9 0189E1 019927 01C985 01CA52 01CAB5 01CCFD 01CD08 01CD0D 01CD16 01CD24 01CD29 01CD62 01CD67 01CDD8 01CDE4 01CDFE 01CE0A 01CEE0 01CF45 01CF6A 01CFD0 01D060 01D19C 01D1CB 01D1DD 01D2E8 01D2F0 01D320 01D32A 01D4A8 01D658 01D66C 01DD9F 01E5C9 01E5CE 01E5D7 01E5DC 01F61A 01F61F 01F68F 01F694 01FA19 01FA71 01FC6F 01FF03 
; ram_0401                              = $0401 ; 01009E 010116 01011B 010132 010190 0101C4 0101CB 01020A 0186D8 0186DD 01875A 01875F 01D04C 01D051 01E5C9 01E5CE 01E5D7 01E5DC 01F61A 01F61F 01F68F 01F694 01FBBF 01FC6F 01FC76 01FF03 
; ram_0402                              = $0402 ; 01009E 010116 01011B 010132 010190 0101C4 0101CB 01020A 0186B4 0186B9 0186D8 0186DD 018708 01870D 01875A 01875F 01D04C 01D051 01E5C9 01E5CE 01E5D7 01E5DC 01F61A 01F61F 01F68F 01F694 01FBBF 01FC6F 01FC76 01FF03 
; ram_0403                              = $0403 ; 01FC6F 01FF03 
; ram_0404                              = $0404 ; 01FF03 
; ram_0405                              = $0405 ; 01009E 010116 01011B 010132 010190 0101C4 0101CB 01020A 0137CC 0181D6 018217 01985E 019863 01D4A8 01D4B5 01D545 01E5C9 01E5CE 01FA29 01FA81 01FB08 01FBC4 01FC6F 01FC76 01FCFA 01FCFF 01FD05 01FD0A 01FF03 
; ram_0406                              = $0406 ; 01009E 010116 01011B 010132 010190 0101C4 0101CB 01020A 0137CC 0181D6 018217 018E7C 018E81 019572 019577 01957F 019584 01985E 019863 01D4A8 01D4B5 01D545 01E5C9 01E5CE 01F68F 01F694 01FA29 01FA81 01FB08 01FBC4 01FC6F 01FC76 01FCA3 01FCAA 01FCFA 01FCFF 01FD05 01FD0A 01FF03 
; ram_0407                              = $0407 ; 01009E 010116 01011B 010132 010190 0101C4 0101CB 01020A 0137CC 0181D6 018217 018698 01869F 0186A4 018AC8 018E7C 018E81 0193C5 019572 019577 01957F 019584 01985E 019863 019AB1 01CFBA 01D4A8 01D4B5 01D51A 01D51F 01D545 01E5C9 01E5CE 01F61A 01F61F 01F68F 01F694 01FA29 01FA33 01FA81 01FB08 01FBC4 01FC6F 01FC76 01FCA3 01FCAA 01FCFA 01FCFF 01FD05 01FD0A 01FF03 
; ram_0408                              = $0408 ; 01009E 0100F2 0100F7 010116 01011B 010132 010190 0101C4 0101CB 01020A 0137CC 0181D6 018217 018698 01869F 0186A4 018AC8 018E7C 018E81 019275 01927D 019313 0193C5 019572 019577 01957F 019584 01985E 019863 0199AD 0199B2 019AB1 019B1A 01CFBA 01D4A8 01D4B5 01D545 01E5C9 01E5CE 01F61A 01F61F 01F68F 01F694 01FA29 01FA81 01FB08 01FBC4 01FC6F 01FC76 01FCA3 01FCAA 01FCFA 01FCFF 01FD05 01FD0A 01FF03 
; ram_0409                              = $0409 ; 01009E 0100F2 0100F7 010116 01011B 010132 010190 0101C4 0101CB 01020A 0137CC 0181D6 018217 018698 01869F 0186A4 018AC8 018D47 018E7C 018E81 019275 01927D 019313 0193C5 019572 019577 01957F 019584 01985E 019863 019AB1 019B1A 01CFBA 01D4A8 01D4B5 01D545 01E5C9 01E5CE 01F61A 01F61F 01F68F 01F694 01FA29 01FA33 01FA81 01FB08 01FBC4 01FC6F 01FC76 01FCA3 01FCAA 01FCFA 01FCFF 01FD05 01FD0A 01FF03 
; ram_040A                              = $040A ; 01009E 0100F2 0100F7 010116 01011B 010132 010190 0101C4 0101CB 01020A 0137CC 0181D6 018217 018698 01869F 0186A4 018AC8 018D47 018E7C 018E81 019221 019275 01927D 0192DC 019313 0193C5 019572 019577 01957F 019584 01985E 019863 0199AD 0199B2 019AB1 019B1A 01CFBA 01D4A8 01D4B5 01D51A 01D51F 01D545 01E5C9 01E5CE 01F61A 01F61F 01F68F 01F694 01FA29 01FA33 01FA81 01FB08 01FBC4 01FC6F 01FC76 01FCA3 01FCAA 01FCFA 01FCFF 01FD05 01FD0A 01FF03 
; ram_040B                              = $040B ; 01009E 0100F2 0100F7 010116 01011B 010132 010190 0101C4 0101CB 01020A 0137CC 0181D6 018217 018698 01869F 0186A4 018895 01889A 018AC8 018D47 018E7C 018E81 018FF4 019275 01927D 0192DC 019313 0193C5 019572 019577 01957F 019584 01985E 019863 0199AD 0199B2 019AB1 019B1A 019EFD 019F02 01CFBA 01D21D 01D222 01D4A8 01D4B5 01D51A 01D51F 01D545 01E5C9 01E5CE 01F61A 01F61F 01F68F 01F694 01FA29 01FA33 01FA81 01FB08 01FBC4 01FC6F 01FC76 01FCA3 01FCAA 01FCFA 01FCFF 01FD05 01FD0A 01FF03 
; ram_040C                              = $040C ; 01009E 0100F2 0100F7 010116 01011B 010132 010190 0101C4 0101CB 01020A 0137CC 0181D6 018217 018698 01869F 0186A4 018AC8 018D47 018E7C 018E81 018FF4 019275 01927D 019313 0193C5 019572 019577 01957F 019584 01985E 019863 0199AD 0199B2 019AB1 019B1A 019EFD 019F02 01A89E 01A8A7 01CFBA 01D21D 01D222 01D4A8 01D4B5 01D51A 01D51F 01D545 01E5C9 01E5CE 01E5D7 01E5DC 01F61A 01F61F 01F68F 01F694 01FA29 01FA33 01FA81 01FB08 01FBC4 01FC6F 01FC76 01FCA3 01FCAA 01FCFA 01FCFF 01FD05 01FD0A 01FF03 
; ram_040D                              = $040D ; 01009E 0100F2 0100F7 010116 01011B 010132 010190 0101C4 0101CB 01020A 0137CC 0181D6 018217 018698 01869F 0186A4 018AC8 018D47 018E7C 018E81 019275 01927D 0192DC 019313 0193C5 019572 019577 01957F 019584 01985E 019863 0199AD 0199B2 019AB1 019B1A 019EFD 019F02 01A778 01A77D 01CFBA 01D21D 01D222 01D4A8 01D4B5 01D51A 01D51F 01D545 01D59C 01D5AA 01D5AF 01E5C9 01E5CE 01F61A 01F61F 01F68F 01F694 01FA29 01FA33 01FA81 01FB08 01FBC4 01FC6F 01FC76 01FCA3 01FCAA 01FCFA 01FCFF 01FD05 01FD0A 01FF03 
; ram_040E                              = $040E ; 01009E 0100F2 0100F7 010116 01011B 010132 010190 0101C4 0101CB 01020A 0137CC 0181D6 018217 01832F 018698 01869F 0186A4 0187EC 0187F1 018808 01880D 018AC8 018D47 018E7C 018E81 018FF4 019221 019275 01927D 0192DC 019313 0193C5 019622 019627 01985E 019863 0199AD 0199B2 019AB1 019B1A 019EFD 019F02 019F8D 019F92 01A045 01A04A 01A077 01A07C 01A78C 01A793 01CFBA 01D21D 01D222 01D4A8 01D4B5 01D51A 01D51F 01D545 01D573 01D578 01E5C9 01E5CE 01E5D7 01E5DC 01F61A 01F61F 01F68F 01F694 01FA29 01FA33 01FA81 01FB08 01FBC4 01FC6F 01FC76 01FCA3 01FCAA 01FCFA 01FCFF 01FD05 01FD0A 01FF03 
; ram_040F                              = $040F ; 01009E 0100F2 0100F7 010116 01011B 010132 010190 0101C4 0101CB 01020A 0137CC 0181D6 018217 01832F 018698 01869F 0186A4 0187EC 0187F1 018808 01880D 018AC8 018D47 018E7C 018E81 019275 01927D 0192DC 019313 0193C5 019572 019577 019622 019627 01985E 019863 0199AD 0199B2 019AB1 019B1A 019CE3 019CE8 019D37 019D3C 019E6A 019E6F 019E91 019E96 019EAF 019EB4 01A045 01A04A 01A077 01A07C 01A64D 01A656 01A78C 01A793 01CFBA 01D21D 01D222 01D4A8 01D4B5 01D51A 01D51F 01D545 01D573 01D578 01E5C9 01E5CE 01E5D7 01E5DC 01F61A 01F61F 01F68F 01F694 01FA29 01FA33 01FA81 01FB08 01FBC4 01FC6F 01FC76 01FCA3 01FCAA 01FCFA 01FCFF 01FD05 01FD0A 01FF03 



; 0410-0417 (08) 
ram_0410_unk                            = $0410 ; 010190 0101C4 0101CB 01020A 01EB6B 01EC1C 01EC2C 01EC54 01EF43 01F0DC 01F3E5 01FF03 
; ram_0411                              = $0411 ; 010190 0101C4 0101CB 01020A 01EB6B 01EC1C 01EC2F 01EC54 01EF43 01F0DC 01F3E5 01FF03 
; ram_0412                              = $0412 ; 010190 0101C4 0101CB 01020A 01EB6B 01EC1C 01EC36 01EC54 01EF43 01F0DC 01F3E5 01FF03 
; ram_0413                              = $0413 ; 010190 0101C4 0101CB 01020A 01EB6B 01EC1C 01EC36 01EC54 01EF43 01F3E5 01FF03 
; ram_0414                              = $0414 ; 010190 0101C4 0101CB 01020A 01EB6B 01EC1C 01EC36 01EC54 01EF43 01F3E5 01FF03 
; ram_0415                              = $0415 ; 010190 0101C4 0101CB 01020A 01EB6B 01EC1C 01EC40 01EC54 01F3E5 01FF03 
; ram_0416                              = $0416 ; 010190 0101C4 0101CB 01020A 01EB6B 01EC1C 01EC40 01EC54 01FF03 
; ram_0417                              = $0417 ; 010190 0101C4 0101CB 01020A 01EB6B 01EC1C 01EC40 01EC54 01FF03 


; 0418-0427 (10) 
ram_animation_cnt                       = $0418 ; 01017E 010183 01018D 0101D1 01808F 018985 0189D2 01C95A 01CCED 01CDAE 01CDB7 01CE55 01CE62 01CE8D 01CEA6 01CF24 01D1B9 01D1C8 01D48A 01FC5A 01FF03 
; ram_0419                              = $0419 ; 01017E 010183 01018D 0101D1 0186F4 01FC5A 01FC66 01FF03 
; ram_041A                              = $041A ; 01017E 010183 01018D 0101D1 0186F4 01FC5A 01FC66 01FF03 
; ram_041B                              = $041B ; 01FF03 
; ram_041C                              = $041C ; 01FF03 
; ram_041D                              = $041D ; 01017E 010183 01018D 0101D1 0181B5 01877B 019426 01942B 01945B 01945E 01FC5A 01FC66 01FF03 
; ram_041E                              = $041E ; 01017E 010183 01018D 0101D1 0181B5 01877B 018DEF 0192BC 0196F1 01FC5A 01FC66 01FF03 
; ram_041F                              = $041F ; 01017E 010183 01018D 0101D1 0181B5 0182F5 01877B 018DEF 01937E 019426 01942B 01945B 01945E 0196F1 019AC7 01FC5A 01FC66 01FF03 
; ram_0420                              = $0420 ; 01017E 010183 01018D 0101D1 0181B5 0182F5 01877B 018DEF 01FC5A 01FC66 01FF03 
; ram_0421                              = $0421 ; 01017E 010183 01018D 0101D1 0181B5 0182F5 01877B 018D06 018D3F 018DEF 019426 01942B 01945B 01945E 0196F1 01FC5A 01FC66 01FF03 
; ram_0422                              = $0422 ; 01017E 010183 01018D 0101D1 0181B5 0182F5 01877B 018D06 018D3F 018DEF 0192BC 019426 01942B 01945B 01945E 0196F1 019AC7 01FC5A 01FC66 01FF03 
; ram_0423                              = $0423 ; 01017E 010183 01018D 0101D1 0181B5 0182F5 01877B 018D06 018D3F 018DEF 019036 0192BC 019426 01942B 01945B 01945E 0196F1 019B30 01FC5A 01FC66 01FF03 
; ram_0424                              = $0424 ; 01017E 010183 01018D 0101D1 0181B5 0182F5 01877B 018C30 018D06 018D3F 018DEF 019036 0192BC 01937E 019426 01942B 01945B 01945E 0196F1 019B30 01A6F5 01A712 01FC5A 01FC66 01FF03 
; ram_0425                              = $0425 ; 01017E 010183 01018D 0101D1 0181B5 0182F5 01877B 018D06 018D3F 018DEF 018F04 0192BC 01937E 019426 01942B 01945B 01945E 0196F1 019AC7 019B30 01A3DE 01A7A0 01D5A3 01FC5A 01FC66 01FF03 
; ram_0426                              = $0426 ; 01017E 010183 01018D 0101D1 0181B5 0182F5 01877B 018850 018D06 018D3F 018DEF 018F04 019036 0192BC 01937E 019426 01942B 01945B 01945E 0196F1 019AC7 019B30 019FD5 01A009 01A3DE 01A48D 01A606 01A610 01A7A0 01D585 01FC5A 01FC66 01FF03 
; ram_0427                              = $0427 ; 01017E 010183 01018D 0101D1 0181B5 0182F5 0183F8 01877B 018D06 018D3F 018DEF 018F04 0192BC 01937E 019426 01942B 01945B 01945E 0196F1 019AC7 019B30 019DA7 019FD5 01A009 01A21E 01A7A0 01D585 01FC5A 01FC66 01FF03 



; 0428-042F (08) 
ram_0428_unk                            = $0428 ; 01017E 010183 01018D 0101D1 01EB6E 01EF4B 01F076 01F0C2 01F11D 01F3F0 01FF03 
; ram_0429                              = $0429 ; 01017E 010183 01018D 0101D1 01EB6E 01EF4B 01F076 01F0C9 01F3F0 01FF03 
; ram_042A                              = $042A ; 01017E 010183 01018D 0101D1 01EB6E 01EF4B 01F076 01F3F0 01FF03 
; ram_042B                              = $042B ; 01017E 010183 01018D 0101D1 01EB6E 01EF4B 01F076 01F3F0 01FF03 
; ram_042C                              = $042C ; 01017E 010183 01018D 0101D1 01EB6E 01EF4B 01F076 01F3F0 01FF03 
; ram_042D                              = $042D ; 01017E 010183 01018D 0101D1 01EB6E 01F076 01F3F0 01FF03 
; ram_042E                              = $042E ; 01017E 010183 01018D 0101D1 01EB6E 01F076 01FF03 
; ram_042F                              = $042F ; 01017E 010183 01018D 0101D1 01EB6E 01F076 01FF03 



; 0430-043F (10) 
ram_0430_obj                            = $0430 ; 01013E 01014B 01808A 018968 0189CB 01C952 01CA28 01CBC2 01CBEE 01CC04 01CC11 01CD01 01CD1D 01CD43 01CD5B 01CDA4 01CDAB 01CE4E 01CE5A 01CE83 01CE90 01CE9C 01CEA9 01D0DC 01D16E 01D27A 01D2A0 01D481 01D52F 01F076 01F997 01FC55 01FF03 
; ram_0431                              = $0431 ; 01013E 01014B 01F076 01FC55 01FC61 01FF03 
; ram_0432                              = $0432 ; 01013E 01014B 019483 01F076 01FC55 01FC61 01FF03 
; ram_0433                              = $0433 ; 01A322 01F076 01FF03 
; ram_0434                              = $0434 ; 01A322 01F076 01FF03 
; ram_0435                              = $0435 ; 01013E 01014B 018198 01836F 0183AE 0183B9 0185F6 01860B 018DE6 019483 01A322 01A767 01D56C 01F076 01F997 01FC55 01FC61 01FF03 
; ram_0436                              = $0436 ; 01013E 01014B 018198 01836F 0183AE 0183B9 0183C8 0185F6 01860B 018DE6 018E9C 0192C8 019483 01A322 01A767 01D52F 01D56C 01F076 01F997 01FC55 01FC61 01FF03 
; ram_0437                              = $0437 ; 01013E 01014B 018198 0182ED 018300 01836F 0183AE 0183B9 0183C8 0185F6 01860B 018ACD 018DE6 018E9C 0192C8 019377 019483 019ABF 01A322 01A44B 01A767 01CA28 01D4F2 01D50F 01D52F 01D56C 01F076 01F997 01FC55 01FC61 01FF03 
; ram_0438                              = $0438 ; 01013E 01014B 018198 0182ED 018300 01836F 0183AE 0183B9 0183C8 0185F6 01860B 018ACD 018DE6 018E9C 019483 01A24C 01A322 01A44B 01A767 01D56C 01F076 01F997 01FC55 01FC61 01FF03 
; ram_0439                              = $0439 ; 01013E 01014B 018198 0182ED 018300 01836F 0183AE 0183B9 0183C8 0185F6 01860B 018ACD 018DE6 018E9C 0190B3 0190BB 0190F7 019106 019121 01913B 0192C8 019377 019483 01A24C 01A322 01A369 01A44B 01A767 01D56C 01F076 01F997 01FC55 01FC61 01FF03 
; ram_043A                              = $043A ; 01013E 01014B 018198 0182ED 018300 01836F 0183AE 0183B9 0183C8 0185F6 01860B 018ACD 018CB3 018DE6 018E9C 0190B3 0190BB 0190F7 019106 019121 01913B 0192C8 019483 0196DB 019ABF 01A24C 01A322 01A369 01A44B 01A767 01CA28 01D4F2 01D50F 01D52F 01D56C 01F076 01F997 01FC55 01FC61 01FF03 
; ram_043B                              = $043B ; 01013E 01014B 018198 0182ED 018300 01836F 0183AE 0183B9 0183C8 0185F6 01860B 018906 018ACD 018B0F 018CB3 018DE6 018E9C 018FF9 0190B3 0190BB 0190F7 019106 019121 01913B 0192C8 019483 019B28 019DE5 019EE0 019EF6 019F0B 019F27 01A24C 01A322 01A369 01A44B 01A767 01CA28 01D4F2 01D50F 01D52F 01D56C 01F076 01F997 01FC55 01FC61 01FF03 
; ram_043C                              = $043C ; 01013E 01014B 018198 0182C5 0182ED 018300 01836F 0183AE 0183B9 0183C8 0185F6 01860B 018906 018ACD 018C1F 018DE6 018E9C 018FF9 0190B3 0190BB 0190F7 019106 019121 01913B 0192C8 019377 019483 0196DB 019B28 019DE5 019EE0 019EF6 019F0B 019F27 01A24C 01A322 01A369 01A44B 01A767 01CA28 01D4F2 01D50F 01D52F 01D56C 01D595 01F076 01F997 01FC55 01FC61 01FF03 
; ram_043D                              = $043D ; 01013E 01014B 018198 0182C5 0182ED 018300 01836F 0183AE 0183B9 0183C8 0185F6 01860B 018906 018ACD 018DE6 018E9C 0192C8 019377 019483 0196DB 019ABF 019B28 019DE5 019EE0 019EF6 019F0B 019F27 01A24C 01A322 01A3D7 01A44B 01A767 01CA28 01D4F2 01D50F 01D52F 01D56C 01D595 01F076 01F997 01FC55 01FC61 01FF03 
; ram_043E                              = $043E ; 01013E 01014B 018198 0182C5 0182ED 018300 01836F 0183AE 0183B9 0183C8 0185F6 01860B 018906 018ACD 018DE6 018E9C 018FF9 0190B3 0190BB 0190F7 019106 019121 01913B 0192C8 019377 019483 019ABF 019B28 019DE5 019EE0 019EF6 019F0B 019F27 019FCC 01A24C 01A322 01A3D7 01A44B 01A660 01A767 01A798 01CA28 01D4F2 01D50F 01D52F 01D56C 01D57D 01D595 01F076 01F997 01FC55 01FC61 01FF03 
; ram_043F                              = $043F ; 01013E 01014B 018198 0182ED 018300 01836F 0183AE 0183B9 0183C8 0183F3 0185F6 01860B 018906 018ACD 018B0F 018DE6 018E9C 0190B3 0190BB 0190F7 019106 019121 01913B 0192C8 019377 019483 019ABF 019B28 019DA0 019DAC 019DE5 019FCC 01A215 01A24C 01A322 01A403 01A43D 01A44B 01A470 01A660 01A767 01A798 01CA28 01D4F2 01D50F 01D52F 01D56C 01D57D 01D595 01F076 01F997 01FC55 01FC61 01FF03 




; 0440-0447 (08) 
ram_0440_unk                            = $0440 ; 01014B 01EC17 01EF3E 01F0D7 01F112 01F3EA 01FF03 
; ram_0441                              = $0441 ; 01014B 01EC17 01EC27 01EF3E 01F0D7 01F112 01F3EA 01FF03 
; ram_0442                              = $0442 ; 01014B 01EC17 01EF3E 01F0D7 01F112 01F3EA 01FF03 
; ram_0443                              = $0443 ; 01014B 01EC17 01EF3E 01F3EA 01FF03 
; ram_0444                              = $0444 ; 01014B 01EC17 01EF3E 01F3EA 01FF03 
; ram_0445                              = $0445 ; 01014B 01EC17 01F3EA 01FF03 
; ram_0446                              = $0446 ; 01014B 01EC17 01FF03 
; ram_0447                              = $0447 ; 01014B 01EC17 01FF03 



ram_0448                                = $0448 ; 010169 010170 01017B 018092 01C957 01CD4C 01CD51 01CD54 01CE5F 01CE8A 01CEA3 01D1C5 01D376 01DFC0 01FC5D 01FF03 
ram_0449                                = $0449 ; 010169 010170 01017B 0186FD 01FC5D 01FC69 01FF03 
ram_044A                                = $044A ; 010169 010170 01017B 0186FD 01FC5D 01FC69 01FF03 
ram_044B                                = $044B ; 01FF03 
ram_044C                                = $044C ; 01FF03 
ram_044D                                = $044D ; 010169 010170 01017B 0181B8 01941E 01FC5D 01FC69 01FF03 
ram_044E                                = $044E ; 010169 010170 01017B 0181B8 018DF8 0192B9 019568 0196F8 01FC5D 01FC69 01FF03 
ram_044F                                = $044F ; 010169 010170 01017B 0181B8 0182F2 018694 018DF8 01941E 019568 0196F8 01FC5D 01FC69 01FF03 
ram_0450                                = $0450 ; 010169 010170 01017B 0181B8 0182F2 018694 018DF8 019568 01FC5D 01FC69 01FF03 
ram_0451                                = $0451 ; 010169 010170 01017B 0181B8 0182F2 018694 018D03 018D3A 018DF8 01941E 019568 0196F8 01FC5D 01FC69 01FF03 
ram_0452                                = $0452 ; 010169 010170 01017B 0181B8 0182F2 018694 018D03 018D3A 018DF8 0192B9 01941E 019568 0196F8 01FC5D 01FC69 01FF03 
ram_0453                                = $0453 ; 010169 010170 01017B 0181B8 0182F2 018694 018D03 018D3A 018DF8 019039 0192B9 01941E 019568 0196F8 01FC5D 01FC69 01FF03 
ram_0454                                = $0454 ; 010169 010170 01017B 0181B8 0182F2 018694 018C35 018D03 018D3A 018DF8 019039 0192B9 01941E 019568 0196F8 01A70E 01A71B 01FC5D 01FC69 01FF03 
ram_0455                                = $0455 ; 010169 010170 01017B 0181B8 0182F2 018694 018D03 018D3A 018DF8 018F0B 0192B9 01941E 019568 0196F8 01A79D 01FC5D 01FC69 01FF03 
ram_0456                                = $0456 ; 010169 010170 01017B 0181B8 0182F2 018694 018833 018D03 018D3A 018DF8 018F0B 019039 0192B9 01941E 019568 0196F8 019FDA 01A490 01A615 01A79D 01D582 01FC5D 01FC69 01FF03 
ram_0457                                = $0457 ; 010169 010170 01017B 0181B8 0182F2 0183FB 018D03 018D3A 018DF8 018F0B 0192B9 01941E 019568 0196F8 019FDA 01A1ED 01A223 01A646 01A79D 01D582 01FC5D 01FC69 01FF03 



; 0458-045F (08) 
ram_0458_unk                            = $0458 ; 010169 010170 01017B 01EB71 01EF48 01F079 01F126 01F3F5 01FF03 
; ram_0459                              = $0459 ; 010169 010170 01017B 01EB71 01EF48 01F079 01F3F5 01FF03 
; ram_045A                              = $045A ; 010169 010170 01017B 01EB71 01EF48 01F079 01F3F5 01FF03 
; ram_045B                              = $045B ; 010169 010170 01017B 01EB71 01EF48 01F079 01F3F5 01FF03 
; ram_045C                              = $045C ; 010169 010170 01017B 01EB71 01EF48 01F079 01F3F5 01FF03 
; ram_045D                              = $045D ; 010169 010170 01017B 01EB71 01F079 01F3F5 01FF03 
; ram_045E                              = $045E ; 010169 010170 01017B 01EB71 01F079 01FF03 
; ram_045F                              = $045F ; 010169 010170 01017B 01EB71 01F079 01FF03 



; 0460-046F (10) sometimes contains obj_id
ram_0460_obj                            = $0460 ; 018076 018095 01A639 01D2BD 01D2F8 01D379 01F079 01FF03 
; ram_0461                              = $0461 ; 0186E0 018762 01D02B 01F079 01FF03 
; ram_0462                              = $0462 ; 0186BC 0186E0 018710 018762 01D02B 01F079 01FF03 
; ram_0463                              = $0463 ; 01F079 01FF03 
; ram_0464                              = $0464 ; 01F079 01FF03 
; ram_0465                              = $0465 ; 0137FF 0181BB 0188BD 0188D0 0188EF 019421 01943A 019458 019466 01F079 01FF03 
; ram_0466                              = $0466 ; 0137FF 0181BB 0188BD 0188D0 0188EF 018E5E 018EAA 018EC9 018EE0 018EEF 019063 019066 01906F 01950B 019528 01957A 01F079 01FF03 
; ram_0467                              = $0467 ; 0137FF 0181BB 01868A 01868F 0188BD 0188D0 0188EF 018A88 018AA0 018E5E 018EAA 018EC9 018EE0 018EEF 019201 019208 019217 01921A 01938A 019391 019399 019400 019421 01943A 019458 019466 01950B 019528 01957A 01989F 0198B1 019935 019956 019A46 019A4B 019AE1 019B0E 019B16 01A4D6 01A56C 01A576 01A598 01CA4F 01CFCD 01F079 01FF03 
; ram_0468                              = $0468 ; 0137FF 0181BB 01868A 01868F 0188BD 0188D0 0188EF 018A88 018AA0 018E5E 018EAA 018EC9 018EE0 018EEF 019063 019066 019201 019208 019217 01921A 019239 019272 019280 019353 019400 01950B 019528 01957A 0199BD 0199CF 0199D4 01A2D6 01A341 01A4D6 01A56C 01A576 01A598 01CFCD 01F079 01FF03 
; ram_0469                              = $0469 ; 0137FF 0181BB 01868A 01868F 0188BD 0188D0 0188EF 018A88 018AA0 018CDE 018D09 018D26 018D37 018E5E 018EAA 018EC9 018EE0 018EEF 019063 019066 0190EA 019103 01911C 019201 019208 019217 01921A 019239 019272 019280 019353 01938A 019391 019400 019421 01943A 019458 019466 01950B 019528 01957A 019811 019845 01989F 01A2D6 01A341 01A34B 01A35C 01A4D6 01A56C 01A576 01A598 01CFCD 01F079 01FF03 
; ram_046A                              = $046A ; 0137FF 0181BB 01868A 01868F 0188BD 0188D0 0188EF 018A88 018AA0 018CDE 018D09 018D26 018D37 018E5E 018EAA 018EC9 018EE0 018EEF 019063 019066 01906F 0190EA 019103 01911C 019201 019208 019217 01921A 019239 019272 019280 019353 019400 019421 01943A 019458 019466 01950B 019528 01957A 019696 0196A7 0196AC 0196D8 0196E5 0196EA 019811 019845 01989F 0198B1 019935 019956 0199BD 0199CF 0199D4 019A46 019A4B 019AE1 019B0E 019B16 01A2D6 01A341 01A34B 01A35C 01A4D6 01A56C 01A576 01A598 01CA4F 01CFCD 01F079 01FF03 
; ram_046B                              = $046B ; 0137FF 0181BB 01868A 01868F 0188BD 0188D0 0188EF 018A88 018AA0 018CDE 018D09 018D26 018D37 018E5E 018EAA 018EC9 018EE0 018EEF 01903F 019063 019066 01906F 0190EA 019103 01911C 019201 019208 019217 01921A 019239 019272 019280 019353 019400 019421 01943A 019458 019466 01950B 019528 01957A 019788 01989F 0199BD 0199CF 0199D4 019A79 019A7E 019B4A 019B77 019B7F 019F6C 01A2D6 01A341 01A34B 01A35C 01A4D6 01A56C 01A576 01A598 01CA4F 01CFCD 01F079 01FF03 
; ram_046C                              = $046C ; 0137FF 0181BB 018462 01868A 01868F 0188BD 0188D0 0188EF 018A88 018AA0 018C1C 018C26 018CDE 018D09 018D26 018D37 018E5E 018EAA 018EC9 018EE0 018EEF 018F8B 018FDE 01903F 01904D 019050 019063 019066 01906F 0190EA 019103 01911C 019201 019208 019217 01921A 019239 019272 019280 019353 01938A 019391 019399 019400 019421 01943A 019458 019466 019499 01949E 0194A2 01950B 019528 019549 01957A 019696 0196A7 0196AC 0196D8 0196E5 0196EA 019788 019811 019845 01989F 0198B1 019935 019956 0199BD 0199CF 0199D4 019A79 019A7E 019B4A 019B77 019B7F 019F6C 01A2D6 01A341 01A34B 01A35C 01A4D6 01A56C 01A576 01A598 01A7A5 01A7AA 01A7DC 01A83D 01A8BC 01A8BF 01CA4F 01CFCD 01F079 01FF03 
; ram_046D                              = $046D ; 0137FF 0181BB 01868A 01868F 0188BD 0188D0 0188EF 018A88 018AA0 018CDE 018D09 018D26 018D37 018E5E 018EAA 018EC9 018EE0 018EEF 018F10 018F13 018F8B 019063 019066 01906F 019201 019208 019217 01921A 019239 019272 019280 019353 01938A 019391 019399 019400 019421 01943A 019458 019466 019499 01949E 0194A2 01950B 019528 019549 01957A 019643 019696 0196A7 0196AC 0196D8 0196E5 0196EA 019788 01989F 0198B1 019935 019956 0199BD 0199CF 0199D4 019A46 019A4B 019A79 019A7E 019AE1 019B0E 019B16 019B4A 019B77 019B7F 019F44 019F6C 01A0EF 01A0F2 01A0FE 01A128 01A147 01A1AD 01A4D6 01A56C 01A576 01A598 01CA4F 01CFCD 01F079 01FF03 
; ram_046E                              = $046E ; 0137FF 0181BB 01868A 01868F 0187F6 0187FE 018803 018836 01887C 0188BD 0188D0 0188EF 018A88 018AA0 018CDE 018D09 018D26 018D37 018E5E 018EAA 018EC9 018EE0 018EEF 018F10 018F13 018F8B 01903F 019063 019066 01906F 0190EA 019103 01911C 019201 019208 019217 01921A 019239 019272 019280 019353 01938A 019391 019399 019400 019421 01943A 019458 019466 019499 01949E 0194A2 01950B 019528 019549 019639 019643 019788 019811 019845 01989F 0198B1 019935 019956 0199BD 0199CF 0199D4 019A46 019A4B 019A79 019A7E 019AE1 019B0E 019B16 019B4A 019B77 019B7F 019F44 019F6C 019FA5 019FAA 01A037 01A495 01A60B 01CA4F 01CFCD 01F079 01FF03 
; ram_046F                              = $046F ; 0137FF 0181BB 01841D 01868A 0187F6 0187FE 018803 0188BD 0188D0 0188EF 018A88 018AA0 018CDE 018D09 018D26 018D37 018E5E 018EAA 018EC9 018EE0 018EEF 018F10 018F13 018FDE 01904D 019050 019063 019066 01906F 0190EA 019103 01911C 019239 019272 019280 019353 01938A 019391 019399 019400 019421 01943A 019458 019466 019499 01949E 0194A2 01950B 019528 019549 01957A 019639 019788 019811 019845 01989F 0198B1 019935 019956 0199BD 0199CF 0199D4 019A46 019A4B 019A79 019A7E 019AE1 019B0E 019B16 019B4A 019B77 019B7F 019BD5 019BEF 019C3A 019C51 019CB8 019CD4 019CD9 019D41 019D95 019DAF 019DD7 019E67 019EA0 019EAA 019FA5 019FAA 01A037 01A211 01A22D 01A23E 01A416 01A433 01A438 01A475 01A673 01A676 01CA4F 01CFCD 01F079 01FF03 



; 0470-047F (10) 
ram_obj_timer                           = $0470 ; 0180B9 01A629 01D2F3 01D32D 01D332 01D37E 01FF03 
; ram_0471                              = $0471 ; 018725 018740 01874D 01D046 01FF03 
; ram_0472                              = $0472 ; 018725 018740 01874D 01D046 01FF03 
; ram_0473                              = $0473 ; 01FF03 
; ram_0474                              = $0474 ; 01FF03 
; ram_0475                              = $0475 ; 013802 0181BE 0188C2 0188DD 0188EC 01FF03 
; ram_0476                              = $0476 ; 013802 0181BE 0188C2 0188DD 0188EC 01950E 01953C 01958B 01FF03 
; ram_0477                              = $0477 ; 013802 0181BE 0188C2 0188DD 0188EC 018A42 018A60 018A67 019403 01950E 01953C 01958B 019AB8 019AE6 019B09 01A585 01A5A2 01FF03 
; ram_0478                              = $0478 ; 013802 0181BE 0188C2 0188DD 0188EC 018A42 018A60 018A67 019249 01924E 019356 019403 01950E 01953C 01958B 01A585 01A5A2 01FF03 
; ram_0479                              = $0479 ; 013802 0181BE 0188C2 0188DD 0188EC 018A42 018A60 019249 01924E 019356 019403 01950E 01953C 01958B 01A585 01A5A2 01FF03 
; ram_047A                              = $047A ; 013802 0181BE 0188C2 0188DD 0188EC 018A42 018A60 018A67 018B6C 018BE3 019249 01924E 019356 019403 01950E 01953C 01958B 01969C 0196CB 019AB8 019AE6 019B09 01A585 01A5A2 01FF03 
; ram_047B                              = $047B ; 013802 0181BE 0188C2 0188DD 0188EC 01893C 018A42 018A60 018A67 019042 019249 01924E 019356 019403 01950E 01953C 01958B 019B21 019B4F 019B72 019EF3 019F14 019F19 01A585 01A5A2 01FF03 
; ram_047C                              = $047C ; 013802 0181BE 018465 0188C2 0188DD 0188EC 01893C 018943 018A42 018A60 018A67 018B6C 018BE3 019042 019249 01924E 019356 019403 01950E 019519 01952D 01953C 01954C 01954F 019558 01958B 01969C 0196CB 019B21 019B4F 019B72 019EF3 019F14 019F19 01A585 01A5A2 01A7AF 01A7B6 01A838 01A8C6 01A8E0 01FF03 
; ram_047D                              = $047D ; 013802 0181BE 0188C2 0188DD 0188EC 01893C 018943 018A42 018A60 018A67 018BE3 019249 01924E 019356 019403 01950E 019519 01952D 01953C 01954C 01954F 019558 01958B 01969C 0196CB 019AB8 019AE6 019B09 019B21 019B4F 019B72 019EF3 019F14 019F19 01A11E 01A123 01A142 01A585 01A5A2 01FF03 
; ram_047E                              = $047E ; 013802 0181BE 0188C2 0188DD 0188EC 01893C 018943 018A42 018A60 018A67 019042 019249 01924E 019356 019403 01950E 019519 01952D 01953C 01954C 01954F 019558 019AB8 019AE6 019B09 019B21 019B4F 019B72 019EF3 019F14 019F19 019F83 019F86 019FC3 01A013 01A03B 01A040 01A081 01FF03 
; ram_047F                              = $047F ; 013802 0181BE 018420 0188C2 0188DD 0188EC 01893C 018943 018A42 018A60 018A67 018B6C 018BE3 019249 01924E 019356 019403 01950E 019519 01952D 01953C 01954C 01954F 019558 019AB8 019AE6 019B09 019B21 019B4F 019B72 019BC6 019BC9 019BD8 019BDB 019BE0 019C21 019D5B 019D5E 019D70 019DC8 019DFB 019E7B 019E80 019EA3 019EB9 019FC3 01A013 01A03B 01A040 01A081 01A202 01A205 01A419 01A67D 01A697 01FF03 



; 0480-048F (10) something related to direction (first 2 bits) ?
ram_0480_obj                            = $0480 ; 018071 01D315 01D31C 01D337 01D33A 01D358 01FF03 
; ram_0481                              = $0481 ; 01872A 01872D 01D049 01FF03 
; ram_0482                              = $0482 ; 01872A 01872D 01A0B7 01D049 01FF03 
; ram_0483                              = $0483 ; 01FF03 
; ram_0484                              = $0484 ; 01FF03 
; ram_0485                              = $0485 ; 0101AA 013805 0180E3 0181C1 0188D7 01895E 01FF03 
; ram_0486                              = $0486 ; 0101AA 013805 0180E3 0181C1 0188D7 01895E 019511 019542 019594 0196FD 019700 019740 019743 01FF03 
; ram_0487                              = $0487 ; 0101AA 013805 0180E3 0181C1 0188D7 01895E 019406 019511 019542 019594 0196FD 019700 019740 019743 01FF03 
; ram_0488                              = $0488 ; 0101AA 013805 0180E3 0181C1 0188D7 01895E 01935B 019406 019511 019542 019594 01FF03 
; ram_0489                              = $0489 ; 0101AA 013805 0180E3 0181C1 0188D7 01895E 018D87 018DBE 018DC3 01935B 019406 019511 019542 019594 0196FD 019700 019740 019743 01FF03 
; ram_048A                              = $048A ; 0101AA 013805 0180E3 0181C1 0188D7 01895E 018D87 018DBE 018DC3 01935B 019406 019511 019542 019594 0196FD 019700 019740 019743 01FF03 
; ram_048B                              = $048B ; 0101AA 013805 0180E3 0181C1 0188D7 0188FE 018914 01892F 018956 01895E 018D87 018DBE 018DC3 019045 01935B 019406 019511 019542 019594 0196FD 019700 019740 019743 01FF03 
; ram_048C                              = $048C ; 0101AA 013805 0180E3 0181C1 01846A 0188D7 0188FE 018914 01892F 01895E 018D87 018DBE 018DC3 019045 01935B 019406 0194B5 019511 01951D 019542 019594 0196FD 019700 019740 019743 01A7C4 01A829 01A835 01A889 01A88E 01FF03 
; ram_048D                              = $048D ; 0101AA 013805 0180E3 0181C1 0188D7 0188FE 018914 01892F 018956 01895E 018D87 018DBE 018DC3 01935B 019406 0194B5 019511 01951D 019542 019594 0196FD 019700 019740 019743 01A16A 01A174 01FF03 
; ram_048E                              = $048E ; 0101AA 013805 0180E3 0181C1 0188D7 0188FE 018914 01892F 018956 01895E 018D87 018DBE 018DC3 019045 01935B 019406 0194B5 019511 01951D 019542 0196FD 019700 019740 019743 01A0AA 01A0B3 01A0B7 01A0C5 01A0D4 01A0D7 01FF03 
; ram_048F                              = $048F ; 0101AA 013805 0180E3 0181C1 018400 0188D7 0188FE 018914 01892F 018956 01895E 018D87 018DBE 018DC3 01935B 019406 0194B5 019511 01951D 019542 0196FD 019700 019740 019743 019C4E 019C85 019CBB 019D8A 019DFE 01A0AA 01A0B3 01A0B7 01A0C5 01A0D4 01A0D7 01A40A 01FF03 



; 0490-049F (10) 
ram_0490_obj                            = $0490 ; 01FF03 
; ram_0491                              = $0491 ; 01FF03 
; ram_0492                              = $0492 ; 01FF03 
; ram_0493                              = $0493 ; 01FF03 
; ram_0494                              = $0494 ; 01FF03 
; ram_0495                              = $0495 ; 013808 01819E 018782 01FF03 
; ram_0496                              = $0496 ; 013808 01819E 018782 019514 01FF03 
; ram_0497                              = $0497 ; 013808 01819E 018782 019409 019514 01FF03 
; ram_0498                              = $0498 ; 013808 01819E 018782 01935E 019409 019514 01FF03 
; ram_0499                              = $0499 ; 013808 01819E 018782 01935E 019409 019514 01FF03 
; ram_049A                              = $049A ; 013808 01819E 018782 01935E 019409 019514 01FF03 
; ram_049B                              = $049B ; 013808 01819E 018782 019048 01935E 019409 019514 01FF03 
; ram_049C                              = $049C ; 013808 01819E 018782 019048 01935E 019409 0194C6 019514 019531 01A6FA 01A6FD 01A706 01A71E 01A723 01A743 01FF03 
; ram_049D                              = $049D ; 013808 01819E 018782 01935E 019409 0194C6 019514 019531 01FF03 
; ram_049E                              = $049E ; 013808 01819E 018782 019048 01935E 019409 0194C6 019514 019531 01FF03 
; ram_049F                              = $049F ; 013808 01819E 018782 01935E 019409 0194C6 019514 019531 019BF2 019C10 019C3F 019CBE 019CC1 019D90 019E03 01FF03 



; 04A0-04AF (10) 
ram_04A0_obj                            = $04A0 ; 01011E 010162 0101B9 01FF03 
; ram_04A1                              = $04A1 ; 010028 010049 01011E 010162 0101B9 0101E1 018021 01C1EA 01D043 01FF03 
; ram_04A2                              = $04A2 ; 010028 010049 010107 01011E 010162 0101B9 0101E1 018021 01C1EA 01D043 01FF03 
; ram_04A3                              = $04A3 ; 010028 010049 01C1EA 01FF03 
; ram_04A4                              = $04A4 ; 010028 010049 01C1EA 01FF03 
; ram_04A5                              = $04A5 ; 010028 010049 010107 01011E 010162 0101B9 01380B 018021 0181C4 01822F 0183A7 01C1EA 01FF03 
; ram_04A6                              = $04A6 ; 010028 010049 010107 01011E 010123 010126 01012D 010162 0101B9 0101E1 01380B 018021 018167 0181C4 01822F 0182E1 0183A7 01C1EA 01FF03 
; ram_04A7                              = $04A7 ; 010028 010049 010107 01011E 010162 0101B9 0101E1 01380B 018021 0181C4 01822F 01836C 0183A7 01C1EA 01CFC2 01FF03 
; ram_04A8                              = $04A8 ; 010028 010049 010107 01011E 010162 0101B9 0101E1 01380B 018021 0181C4 01822F 01836C 0183A7 01C1EA 01CFC2 01FF03 
; ram_04A9                              = $04A9 ; 010028 010049 010107 01011E 010123 010126 01012D 010162 0101B9 0101E1 01380B 018021 018167 0181C4 01822F 01836C 0183A7 01C1EA 01CFC2 01FF03 
; ram_04AA                              = $04AA ; 010028 010049 010107 01011E 010123 010126 01012D 010162 0101B9 0101E1 01380B 018021 018167 0181C4 01822F 01836C 0183A7 01C1EA 01CFC2 01FF03 
; ram_04AB                              = $04AB ; 010028 010049 010107 01011E 010123 010126 01012D 010162 0101B9 0101E1 01380B 018021 018167 0181C4 01822F 01836C 0183A7 01C1EA 01CFC2 01FF03 
; ram_04AC                              = $04AC ; 010028 010049 010107 01011E 010123 010126 01012D 010162 0101B9 0101E1 01380B 018021 018167 0181C4 01822F 0182E1 01836C 0183A7 01C1EA 01CFC2 01FF03 
; ram_04AD                              = $04AD ; 010028 010049 010107 01011E 010162 0101B9 0101E1 01380B 018021 0181C4 01822F 01836C 0183A7 01C1EA 01CFC2 01FF03 
; ram_04AE                              = $04AE ; 010028 010049 010107 01011E 010123 010126 01012D 010162 0101B9 0101E1 01380B 018021 018167 0181C4 01822F 0182E1 018340 01836C 0183A7 0187DC 018875 01C1EA 01CFC2 01FF03 
; ram_04AF                              = $04AF ; 010028 010049 010107 01011E 010123 010126 01012D 010162 0101B9 0101E1 01380B 018021 018142 018167 0181C4 01822F 0182E1 018340 01836C 0183A7 0187DC 018839 01C1EA 01CFC2 01FF03 



; a part of 04A0 array?
ram_04B0                                = $04B0 ; 0101B9 01FF03 
ram_04B1                                = $04B1 ; 0101B9 01FF03 
ram_04B2                                = $04B2 ; 0101B9 01FF03 
ram_04B3                                = $04B3 ; 0101B9 01FF03 
ram_04B4                                = $04B4 ; 0101B9 01FF03 
ram_04B5                                = $04B5 ; 0101B9 01FF03 
ram_04B6                                = $04B6 ; 0101B9 01FF03 
ram_04B7                                = $04B7 ; 0101B9 01FF03 



ram_04B8                                = $04B8 ; 01FF03 
ram_04B9                                = $04B9 ; 01FF03 
ram_04BA                                = $04BA ; 01FF03 
ram_04BB                                = $04BB ; 01FF03 
ram_04BC                                = $04BC ; 01FF03 
ram_04BD                                = $04BD ; 01FF03 
ram_04BE                                = $04BE ; 01FF03 
ram_04BF                                = $04BF ; 01FF03 
ram_04C0                                = $04C0 ; 01FF03 
ram_04C1                                = $04C1 ; 01FF03 
ram_04C2                                = $04C2 ; 01FF03 
ram_04C3                                = $04C3 ; 01FF03 
ram_04C4                                = $04C4 ; 01FF03 
ram_04C5                                = $04C5 ; 01FF03 
ram_04C6                                = $04C6 ; 01FF03 
ram_04C7                                = $04C7 ; 01FF03 
ram_04C8                                = $04C8 ; 01FF03 
ram_04C9                                = $04C9 ; 01FF03 
ram_04CA                                = $04CA ; 01FF03 
ram_04CB                                = $04CB ; 01FF03 
ram_04CC                                = $04CC ; 01FF03 
ram_04CD                                = $04CD ; 01FF03 
ram_04CE                                = $04CE ; 01FF03 
ram_04CF                                = $04CF ; 01FF03 
ram_04D0                                = $04D0 ; 01FF03 
ram_04D1                                = $04D1 ; 01FF03 
ram_04D2                                = $04D2 ; 01FF03 
ram_04D3                                = $04D3 ; 01FF03 
ram_04D4                                = $04D4 ; 01FF03 
ram_04D5                                = $04D5 ; 01FF03 
ram_04D6                                = $04D6 ; 01FF03 
ram_04D7                                = $04D7 ; 01FF03 
ram_04D8                                = $04D8 ; 01FF03 
ram_04D9                                = $04D9 ; 01FF03 
ram_04DA                                = $04DA ; 01FF03 
ram_04DB                                = $04DB ; 01FF03 
ram_04DC                                = $04DC ; 01FF03 
ram_04DD                                = $04DD ; 01FF03 
ram_04DE                                = $04DE ; 01FF03 
ram_04DF                                = $04DF ; 01FF03 
ram_04E0                                = $04E0 ; 01FF03 
ram_04E1                                = $04E1 ; 01FF03 
ram_04E2                                = $04E2 ; 01FF03 
ram_04E3                                = $04E3 ; 01FF03 
ram_04E4                                = $04E4 ; 01FF03 
ram_04E5                                = $04E5 ; 01FF03 
ram_04E6                                = $04E6 ; 01FF03 
ram_04E7                                = $04E7 ; 01FF03 
ram_04E8                                = $04E8 ; 01FF03 
ram_04E9                                = $04E9 ; 01FF03 
ram_04EA                                = $04EA ; 01FF03 
ram_04EB                                = $04EB ; 01FF03 
ram_04EC                                = $04EC ; 01FF03 
ram_04ED                                = $04ED ; 01FF03 
ram_04EE                                = $04EE ; 01FF03 
ram_04EF                                = $04EF ; 01FF03 
ram_04F0                                = $04F0 ; 01FF03 
ram_04F1                                = $04F1 ; 01FF03 
ram_04F2                                = $04F2 ; 01FF03 
ram_04F3                                = $04F3 ; 01FF03 
ram_04F4                                = $04F4 ; 01FF03 
ram_04F5                                = $04F5 ; 01FF03 
ram_04F6                                = $04F6 ; 01FF03 
ram_04F7                                = $04F7 ; 01FF03 
ram_04F8                                = $04F8 ; 01FF03 
ram_04F9                                = $04F9 ; 01FF03 
ram_04FA                                = $04FA ; 01FF03 
ram_04FB                                = $04FB ; 01FF03 
ram_04FC                                = $04FC ; 01FF03 
ram_04FD                                = $04FD ; 01FF03 
ram_04FE                                = $04FE ; 01FF03 
ram_04FF                                = $04FF ; 01FF03 


; 0500-0506 (07) 1.234.567
ram_score_total                         = $0500 ; 01EB1E 01ECF9 01EF12 01F586 01FF06 
; ram_0501                              = $0501 ; 01EB1E 01ECF9 01EF12 01F586 01FF06 
; ram_0502                              = $0502 ; 01EB1E 01EB2F 01ECF9 01ED0A 01EECC 01EED1 01EF12 01EF25 01F586 01FF06 
; ram_0503                              = $0503 ; 01EB1E 01EB2F 01ECF9 01ED0A 01EECC 01EED1 01EEF9 01EF12 01EF25 01F586 01FF06 
; ram_0504                              = $0504 ; 01EB1E 01EB2F 01ECF9 01ED0A 01EECC 01EED1 01EEF9 01EF12 01EF25 01F586 01FF06 
; ram_0505                              = $0505 ; 01EB1E 01EB2F 01ECF9 01ED0A 01EF25 01F586 01FF06 
; ram_0506                              = $0506 ; 01EB1E 01EB2F 01ECF9 01ED0A 01EF25 01F586 01FF06 



ram_score_obj                           = $0507 ; for common links (fork, pipe, pearls)



; 0507-050A (04) 1.234
ram_score_fork                          = $0507 ; 019B92 019B9E 01C743 01ED4E 01EE43 01EE5B 01EE64 01EE75 01EE8B 01FF06 
; ram_0508                              = $0508 ; 019B92 019B9E 01C743 01ED4E 01EE46 01EE5B 01EE64 01EE75 01EE8B 01FF06 
; ram_0509                              = $0509 ; 019B92 019B9E 01C743 01ED4E 01EE49 01EE75 01EE8B 01FF06 
; ram_050A                              = $050A ; 019B92 019B9E 01C743 01ED4E 01EE4C 01EE75 01EE8B 01FF06 



; 050B-050E (04) 1.234
ram_score_pipe                          = $050B ; 019B92 019B9E 01C746 01ED4E 01EE43 01EE5B 01EE64 01EE75 01EE8B 01FF06 
; ram_050C                              = $050C ; 019B92 019B9E 01C746 01ED4E 01EE46 01EE5B 01EE64 01EE75 01EE8B 01FF06 
; ram_050D                              = $050D ; 019B92 019B9E 01C746 01ED4E 01EE49 01EE75 01EE8B 01FF06 
; ram_050E                              = $050E ; 019B92 019B9E 01C746 01ED4E 01EE4C 01EE75 01EE8B 01FF06 



; 050F-0512 (04) 1.234
ram_score_pearl_purple                  = $050F ; 019B92 019B9E 01C749 01ED4E 01EE43 01EE5B 01EE64 01EE75 01EE8B 01FF06 
; ram_0510                              = $0510 ; 019B92 019B9E 01C749 01ED4E 01EE46 01EE5B 01EE64 01EE75 01EE8B 01FF06 
; ram_0511                              = $0511 ; 019B92 019B9E 01C749 01ED4E 01EE49 01EE75 01EE8B 01FF06 
; ram_0512                              = $0512 ; 019B92 019B9E 01C749 01ED4E 01EE4C 01EE75 01EE8B 01FF06 



; 0513-0516 (04) 1.234
ram_score_pearl_green                   = $0513 ; 019B92 019B9E 01C74C 01ED4E 01EE43 01EE5B 01EE64 01EE75 01EE8B 01FF06 
; ram_0514                              = $0514 ; 019B92 019B9E 01C74C 01ED4E 01EE46 01EE5B 01EE64 01EE75 01EE8B 01FF06 
; ram_0515                              = $0515 ; 019B92 019B9E 01C74C 01ED4E 01EE49 01EE75 01EE8B 01FF06 
; ram_0516                              = $0516 ; 019B92 019B9E 01C74C 01ED4E 01EE4C 01EE75 01EE8B 01FF06 



ram_0517                                = $0517 ; 01FF06 
ram_0518                                = $0518 ; 01FF06 
ram_0519                                = $0519 ; 01FF06 
ram_051A                                = $051A ; 01FF06 
ram_051B                                = $051B ; 01FF06 
ram_051C                                = $051C ; 01FF06 
ram_051D                                = $051D ; 01FF06 
ram_051E                                = $051E ; 01FF06 
ram_051F                                = $051F ; 01FF06 
ram_0520                                = $0520 ; 01FF06 
ram_0521                                = $0521 ; 01FF06 
ram_0522                                = $0522 ; 01FF06 
ram_0523                                = $0523 ; 01FF06 
ram_0524                                = $0524 ; 01FF06 
ram_0525                                = $0525 ; 01FF06 
ram_0526                                = $0526 ; 01FF06 
ram_0527                                = $0527 ; 01FF06 
ram_0528                                = $0528 ; 01FF06 
ram_0529                                = $0529 ; 01FF06 
ram_052A                                = $052A ; 01FF06 
ram_052B                                = $052B ; 01FF06 
ram_052C                                = $052C ; 01FF06 
ram_052D                                = $052D ; 01FF06 
ram_052E                                = $052E ; 01FF06 
ram_052F                                = $052F ; 01FF06 
ram_0530                                = $0530 ; 01FF06 
ram_0531                                = $0531 ; 01FF06 
ram_0532                                = $0532 ; 01FF06 
ram_0533                                = $0533 ; 01FF06 
ram_0534                                = $0534 ; 01FF06 
ram_0535                                = $0535 ; 01FF06 
ram_0536                                = $0536 ; 01FF06 
ram_0537                                = $0537 ; 01FF06 
ram_0538                                = $0538 ; 01FF06 
ram_0539                                = $0539 ; 01FF06 
ram_053A                                = $053A ; 01FF06 
ram_053B                                = $053B ; 01FF06 
ram_053C                                = $053C ; 01FF06 
ram_053D                                = $053D ; 01FF06 
ram_053E                                = $053E ; 01FF06 
ram_053F                                = $053F ; 01FF06 
ram_0540                                = $0540 ; 01FF06 
ram_0541                                = $0541 ; 01FF06 
ram_0542                                = $0542 ; 01FF06 
ram_0543                                = $0543 ; 01FF06 
ram_0544                                = $0544 ; 01FF06 
ram_0545                                = $0545 ; 01FF06 
ram_0546                                = $0546 ; 01FF06 
ram_0547                                = $0547 ; 01FF06 
ram_0548                                = $0548 ; 01FF06 
ram_0549                                = $0549 ; 01FF06 
ram_054A                                = $054A ; 01FF06 
ram_054B                                = $054B ; 01FF06 
ram_054C                                = $054C ; 01FF06 
ram_054D                                = $054D ; 01FF06 
ram_054E                                = $054E ; 01FF06 
ram_054F                                = $054F ; 01FF06 
ram_0550                                = $0550 ; 01FF06 
ram_0551                                = $0551 ; 01FF06 
ram_0552                                = $0552 ; 01FF06 
ram_0553                                = $0553 ; 01FF06 
ram_0554                                = $0554 ; 01FF06 
ram_0555                                = $0555 ; 01FF06 
ram_0556                                = $0556 ; 01FF06 
ram_0557                                = $0557 ; 01FF06 
ram_0558                                = $0558 ; 01FF06 
ram_0559                                = $0559 ; 01FF06 
ram_055A                                = $055A ; 01FF06 
ram_055B                                = $055B ; 01FF06 
ram_055C                                = $055C ; 01FF06 
ram_055D                                = $055D ; 01FF06 
ram_055E                                = $055E ; 01FF06 
ram_055F                                = $055F ; 01FF06 
ram_0560                                = $0560 ; 01FF06 
ram_0561                                = $0561 ; 01FF06 
ram_0562                                = $0562 ; 01FF06 
ram_0563                                = $0563 ; 01FF06 
ram_0564                                = $0564 ; 01FF06 
ram_0565                                = $0565 ; 01FF06 
ram_0566                                = $0566 ; 01FF06 
ram_0567                                = $0567 ; 01FF06 
ram_0568                                = $0568 ; 01FF06 
ram_0569                                = $0569 ; 01FF06 
ram_056A                                = $056A ; 01FF06 
ram_056B                                = $056B ; 01FF06 
ram_056C                                = $056C ; 01FF06 
ram_056D                                = $056D ; 01FF06 
ram_056E                                = $056E ; 01FF06 
ram_056F                                = $056F ; 01FF06 
ram_0570                                = $0570 ; 01FF06 
ram_0571                                = $0571 ; 01FF06 
ram_0572                                = $0572 ; 01FF06 
ram_0573                                = $0573 ; 01FF06 
ram_0574                                = $0574 ; 01FF06 
ram_0575                                = $0575 ; 01FF06 
ram_0576                                = $0576 ; 01FF06 
ram_0577                                = $0577 ; 01FF06 
ram_0578                                = $0578 ; 01FF06 
ram_0579                                = $0579 ; 01FF06 
ram_057A                                = $057A ; 01FF06 
ram_057B                                = $057B ; 01FF06 
ram_057C                                = $057C ; 01FF06 
ram_057D                                = $057D ; 01FF06 
ram_057E                                = $057E ; 01FF06 
ram_057F                                = $057F ; 01FF06 
ram_0580                                = $0580 ; 01FF06 
ram_0581                                = $0581 ; 01FF06 
ram_0582                                = $0582 ; 01FF06 
ram_0583                                = $0583 ; 01FF06 
ram_0584                                = $0584 ; 01FF06 
ram_0585                                = $0585 ; 01FF06 
ram_0586                                = $0586 ; 01FF06 
ram_0587                                = $0587 ; 01FF06 
ram_0588                                = $0588 ; 01FF06 
ram_0589                                = $0589 ; 01FF06 
ram_058A                                = $058A ; 01FF06 
ram_058B                                = $058B ; 01FF06 
ram_058C                                = $058C ; 01FF06 
ram_058D                                = $058D ; 01FF06 
ram_058E                                = $058E ; 01FF06 
ram_058F                                = $058F ; 01FF06 
ram_0590                                = $0590 ; 01FF06 
ram_0591                                = $0591 ; 01FF06 
ram_0592                                = $0592 ; 01FF06 
ram_0593                                = $0593 ; 01FF06 
ram_0594                                = $0594 ; 01FF06 
ram_0595                                = $0595 ; 01FF06 
ram_0596                                = $0596 ; 01FF06 
ram_0597                                = $0597 ; 01FF06 
ram_0598                                = $0598 ; 01FF06 
ram_0599                                = $0599 ; 01FF06 
ram_059A                                = $059A ; 01FF06 
ram_059B                                = $059B ; 01FF06 
ram_059C                                = $059C ; 01FF06 
ram_059D                                = $059D ; 01FF06 
ram_059E                                = $059E ; 01FF06 
ram_059F                                = $059F ; 01FF06 
ram_05A0                                = $05A0 ; 01FF06 
ram_05A1                                = $05A1 ; 01FF06 
ram_05A2                                = $05A2 ; 01FF06 
ram_05A3                                = $05A3 ; 01FF06 
ram_05A4                                = $05A4 ; 01FF06 
ram_05A5                                = $05A5 ; 01FF06 
ram_05A6                                = $05A6 ; 01FF06 
ram_05A7                                = $05A7 ; 01FF06 
ram_05A8                                = $05A8 ; 01FF06 
ram_05A9                                = $05A9 ; 01FF06 
ram_05AA                                = $05AA ; 01FF06 
ram_05AB                                = $05AB ; 01FF06 
ram_05AC                                = $05AC ; 01FF06 
ram_05AD                                = $05AD ; 01FF06 
ram_05AE                                = $05AE ; 01FF06 
ram_05AF                                = $05AF ; 01FF06 
ram_05B0                                = $05B0 ; 01FF06 
ram_05B1                                = $05B1 ; 01FF06 
ram_05B2                                = $05B2 ; 01FF06 
ram_05B3                                = $05B3 ; 01FF06 
ram_05B4                                = $05B4 ; 01FF06 
ram_05B5                                = $05B5 ; 01FF06 
ram_05B6                                = $05B6 ; 01FF06 
ram_05B7                                = $05B7 ; 01FF06 
ram_05B8                                = $05B8 ; 01FF06 
ram_05B9                                = $05B9 ; 01FF06 
ram_05BA                                = $05BA ; 01FF06 
ram_05BB                                = $05BB ; 01FF06 
ram_05BC                                = $05BC ; 01FF06 
ram_05BD                                = $05BD ; 01FF06 
ram_05BE                                = $05BE ; 01FF06 
ram_05BF                                = $05BF ; 01FF06 
ram_05C0                                = $05C0 ; 01FF06 
ram_05C1                                = $05C1 ; 01FF06 
ram_05C2                                = $05C2 ; 01FF06 
ram_05C3                                = $05C3 ; 01FF06 
ram_05C4                                = $05C4 ; 01FF06 
ram_05C5                                = $05C5 ; 01FF06 
ram_05C6                                = $05C6 ; 01FF06 
ram_05C7                                = $05C7 ; 01FF06 
ram_05C8                                = $05C8 ; 01FF06 
ram_05C9                                = $05C9 ; 01FF06 
ram_05CA                                = $05CA ; 01FF06 
ram_05CB                                = $05CB ; 01FF06 
ram_05CC                                = $05CC ; 01FF06 
ram_05CD                                = $05CD ; 01FF06 
ram_05CE                                = $05CE ; 01FF06 
ram_05CF                                = $05CF ; 01FF06 
ram_05D0                                = $05D0 ; 01FF06 
ram_05D1                                = $05D1 ; 01FF06 
ram_05D2                                = $05D2 ; 01FF06 
ram_05D3                                = $05D3 ; 01FF06 
ram_05D4                                = $05D4 ; 01FF06 
ram_05D5                                = $05D5 ; 01FF06 
ram_05D6                                = $05D6 ; 01FF06 
ram_05D7                                = $05D7 ; 01FF06 
ram_05D8                                = $05D8 ; 01FF06 
ram_05D9                                = $05D9 ; 01FF06 
ram_05DA                                = $05DA ; 01FF06 
ram_05DB                                = $05DB ; 01FF06 
ram_05DC                                = $05DC ; 01FF06 
ram_05DD                                = $05DD ; 01FF06 
ram_05DE                                = $05DE ; 01FF06 
ram_05DF                                = $05DF ; 01FF06 
ram_05E0                                = $05E0 ; 01FF06 
ram_05E1                                = $05E1 ; 01FF06 
ram_05E2                                = $05E2 ; 01FF06 
ram_05E3                                = $05E3 ; 01FF06 
ram_05E4                                = $05E4 ; 01FF06 
ram_05E5                                = $05E5 ; 01FF06 
ram_05E6                                = $05E6 ; 01FF06 
ram_05E7                                = $05E7 ; 01FF06 
ram_05E8                                = $05E8 ; 01FF06 
ram_05E9                                = $05E9 ; 01FF06 
ram_05EA                                = $05EA ; 01FF06 
ram_05EB                                = $05EB ; 01FF06 
ram_05EC                                = $05EC ; 01FF06 
ram_05ED                                = $05ED ; 01FF06 
ram_05EE                                = $05EE ; 01FF06 
ram_05EF                                = $05EF ; 01FF06 
ram_05F0                                = $05F0 ; 01FF06 
ram_05F1                                = $05F1 ; 01FF06 
ram_05F2                                = $05F2 ; 01FF06 
ram_05F3                                = $05F3 ; 01FF06 
ram_05F4                                = $05F4 ; 01FF06 
ram_05F5                                = $05F5 ; 01FF06 
ram_05F6                                = $05F6 ; 01FF06 
ram_05F7                                = $05F7 ; 01FF06 
ram_05F8                                = $05F8 ; 01FF06 
ram_05F9                                = $05F9 ; 01FF06 
ram_05FA                                = $05FA ; 01FF06 
ram_05FB                                = $05FB ; 01FF06 
ram_05FC                                = $05FC ; 01FF06 
ram_05FD                                = $05FD ; 01FF06 
ram_05FE                                = $05FE ; 01FF06 
ram_05FF                                = $05FF ; 01FF06 



; 0600-061F (20) 
ram_pal_buffer_1                        = $0600 ; 01A682 01A68C 01A6D1 01A6E3 01A8CB 01A8D5 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01D9F2 01E03A 01FF09 
; ram_0601                              = $0601 ; 01A682 01A68C 01A6D1 01A6E3 01A8CB 01A8D5 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01D9F2 01E03A 01FF09 
; ram_0602                              = $0602 ; 01A682 01A68C 01A6D1 01A6E3 01A8CB 01A8D5 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01D9F2 01E03A 01FF09 
; ram_0603                              = $0603 ; 01A682 01A68C 01A6D1 01A6E3 01A8CB 01A8D5 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01D9F2 01E03A 01FF09 
; ram_0604                              = $0604 ; 01A682 01A68C 01A6D1 01A6E3 01A8CB 01A8D5 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01D9F2 01E03A 01FF09 
; ram_0605                              = $0605 ; 01A682 01A68C 01A6D1 01A6E3 01A8CB 01A8D5 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01D9F2 01E03A 01FF09 
; ram_0606                              = $0606 ; 01A682 01A68C 01A6D1 01A6E3 01A8CB 01A8D5 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01D9F2 01E03A 01FF09 
; ram_0607                              = $0607 ; 01A682 01A68C 01A6D1 01A6E3 01A8CB 01A8D5 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01D9F2 01E03A 01FF09 
; ram_0608                              = $0608 ; 01A6D1 01A6E3 01A8CB 01A8D5 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01D9F2 01E03A 01FF09 
; ram_0609                              = $0609 ; 01A6D1 01A6E3 01A8CB 01A8D5 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01D9F2 01E03A 01E793 01FF09 
; ram_060A                              = $060A ; 01A6D1 01A6E3 01A8CB 01A8D5 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01D9F2 01E03A 01E793 01FF09 
; ram_060B                              = $060B ; 01A6D1 01A6E3 01A8CB 01A8D5 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01D9F2 01E03A 01E793 01FF09 
; ram_060C                              = $060C ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01D9F2 01E03A 01FF09 
; ram_060D                              = $060D ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01D9F2 01E03A 01E793 01FF09 
; ram_060E                              = $060E ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01D9F2 01E03A 01E793 01FF09 
; ram_060F                              = $060F ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01D9F2 01E03A 01E793 01FF09 
; ram_0610                              = $0610 ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01FF09 
; ram_0611                              = $0611 ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01FF09 
; ram_0612                              = $0612 ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01FF09 
; ram_0613                              = $0613 ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01FF09 
; ram_0614                              = $0614 ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01FF09 
; ram_0615                              = $0615 ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01FF09 
; ram_0616                              = $0616 ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01FF09 
; ram_0617                              = $0617 ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01FF09 
; ram_0618                              = $0618 ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01DF5E 01FF09 
; ram_0619                              = $0619 ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01DF5E 01FF09 
; ram_061A                              = $061A ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01DF5E 01FF09 
; ram_061B                              = $061B ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01DF5E 01FF09 
; ram_061C                              = $061C ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01DF5E 01FF09 
; ram_061D                              = $061D ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01DF5E 01FF09 
; ram_061E                              = $061E ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01DF5E 01FF09 
; ram_061F                              = $061F ; 01C05C 01C20C 01C214 01C21E 01D343 01D34D 01DF5E 01FF09 



; 0620-063F (20) 
ram_pal_buffer_2                        = $0620 ; 01A68F 01A6CE 01A8D8 01C209 01C8CC 01D350 01D3A4 01D9F5 01E03D 01E9C0 01EB54 01EB5D 01EBF1 01F030 01F321 01F35E 01F466 01F4FE 01FF09 
; ram_0621                              = $0621 ; 01A68F 01A6CE 01A8D8 01C209 01D350 01D3A4 01D9F5 01E03D 01E9C0 01EB54 01EB5D 01EBF1 01ED91 01F030 01F321 01F35E 01F466 01F4FE 01FF09 
; ram_0622                              = $0622 ; 01A68F 01A6CE 01A8D8 01C209 01D350 01D3A4 01D9F5 01E03D 01E9C0 01EB54 01EB5D 01EBF1 01F030 01F321 01F35E 01F466 01F4FE 01FF09 
; ram_0623                              = $0623 ; 01A68F 01A6CE 01A8D8 01C209 01D350 01D3A4 01D9F5 01E03D 01E9C0 01EB54 01EB5D 01EBF1 01F030 01F321 01F35E 01F466 01F4FE 01FF09 
; ram_0624                              = $0624 ; 01A68F 01A6CE 01A8D8 01C209 01D350 01D3A4 01D9F5 01E03D 01E9C0 01EB54 01EB5D 01EBF1 01F030 01F321 01F35E 01F466 01F4FE 01FF09 
; ram_0625                              = $0625 ; 01A68F 01A6CE 01A8D8 01C209 01D350 01D3A4 01D9F5 01E03D 01E9C0 01EB54 01EB5D 01EBF1 01F030 01F321 01F35E 01F466 01F4FE 01FF09 
; ram_0626                              = $0626 ; 01A68F 01A6CE 01A8D8 01C209 01D350 01D3A4 01D9F5 01E03D 01E9C0 01EB54 01EB5D 01EBF1 01F030 01F321 01F35E 01F466 01F4FE 01FF09 
; ram_0627                              = $0627 ; 01A68F 01A6CE 01A8D8 01C209 01D350 01D3A4 01D9F5 01E03D 01E9C0 01EB54 01EB5D 01EBF1 01F030 01F321 01F35E 01F466 01F4FE 01FF09 
; ram_0628                              = $0628 ; 01A6CE 01A8D8 01C209 01D350 01D3A4 01D9F5 01E03D 01F030 01F321 01F35E 01F466 01F4FE 01FF09 
; ram_0629                              = $0629 ; 01A6CE 01A8D8 01C209 01D350 01D3A4 01D9F5 01E03D 01E796 01F030 01F321 01F35E 01F466 01F4FE 01FF09 
; ram_062A                              = $062A ; 01A6CE 01A8D8 01C209 01D350 01D3A4 01D9F5 01E03D 01E796 01F030 01F321 01F35E 01F466 01F4FE 01FF09 
; ram_062B                              = $062B ; 01A6CE 01A8D8 01C209 01D350 01D3A4 01D9F5 01E03D 01E796 01F030 01F321 01F35E 01F466 01F4FE 01FF09 
; ram_062C                              = $062C ; 01C209 01D350 01D3A4 01D9F5 01E03D 01F030 01F321 01F35E 01F466 01F4FE 01FF09 
; ram_062D                              = $062D ; 01C209 01D350 01D3A4 01D9F5 01E03D 01E796 01F030 01F321 01F35E 01F466 01F4FE 01FF09 
; ram_062E                              = $062E ; 01C209 01D350 01D3A4 01D9F5 01E03D 01E796 01F030 01F321 01F35E 01F466 01F4FE 01FF09 
; ram_062F                              = $062F ; 01C209 01D350 01D3A4 01D9F5 01E03D 01E796 01F030 01F321 01F35E 01F466 01F4FE 01FF09 
; ram_0630                              = $0630 ; 01C209 01C8C6 01C8CF 01D350 01ED8C 01F030 01F324 01F35E 01F469 01F4FE 01FF09 
; ram_0631                              = $0631 ; 01C209 01C8C6 01D350 01F030 01F324 01F35E 01F469 01F4FE 01FF09 
; ram_0632                              = $0632 ; 01C209 01C8C6 01D350 01F030 01F324 01F35E 01F469 01F4FE 01FF09 
; ram_0633                              = $0633 ; 01C209 01C8C6 01D350 01F030 01F324 01F35E 01F469 01F4FE 01FF09 
; ram_0634                              = $0634 ; 01C209 01C8C6 01D350 01F030 01F324 01F35E 01F469 01F4FE 01FF09 
; ram_0635                              = $0635 ; 01C209 01C8C6 01D350 01F030 01F324 01F35E 01F469 01F4FE 01FF09 
; ram_0636                              = $0636 ; 01C209 01C8C6 01D350 01F030 01F324 01F35E 01F469 01F4FE 01FF09 
; ram_0637                              = $0637 ; 01C209 01C8C6 01D350 01F030 01F324 01F35E 01F469 01F4FE 01FF09 
; ram_0638                              = $0638 ; 01C209 01C8C6 01C8DD 01D350 01DF61 01E9E1 01F030 01F324 01F35E 01F469 01F4FE 01FF09 
; ram_0639                              = $0639 ; 01C209 01C8C6 01C8DD 01D350 01DF61 01E9E1 01F030 01F324 01F35E 01F469 01F4FE 01FF09 
; ram_063A                              = $063A ; 01C209 01C8C6 01C8DD 01D350 01DF61 01E9E1 01F030 01F324 01F35E 01F469 01F4FE 01FF09 
; ram_063B                              = $063B ; 01C209 01C8C6 01C8DD 01D350 01DF61 01E9E1 01F030 01F324 01F35E 01F469 01F4FE 01FF09 
; ram_063C                              = $063C ; 01C209 01C8C6 01C8DD 01D350 01DF61 01E9E1 01F030 01F324 01F35E 01F469 01F4FE 01FF09 
; ram_063D                              = $063D ; 01C209 01C8C6 01C8DD 01D350 01DF61 01E9E1 01F030 01F324 01F35E 01F469 01F4FE 01FF09 
; ram_063E                              = $063E ; 01C209 01C8C6 01C8DD 01D350 01DF61 01E9E1 01F030 01F324 01F35E 01F469 01F4FE 01FF09 
; ram_063F                              = $063F ; 01C209 01C8C6 01C8DD 01D350 01DF61 01E9E1 01F030 01F324 01F35E 01F469 01F4FE 01FF09 



; 0640-06BF (80) background attributes (probably matters for vertical areas only?)
ram_bg_attr_buffer                      = $0640 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0641                              = $0641 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0642                              = $0642 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0643                              = $0643 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0644                              = $0644 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0645                              = $0645 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0646                              = $0646 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0647                              = $0647 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0648                              = $0648 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0649                              = $0649 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_064A                              = $064A ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_064B                              = $064B ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_064C                              = $064C ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_064D                              = $064D ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_064E                              = $064E ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_064F                              = $064F ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0650                              = $0650 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0651                              = $0651 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0652                              = $0652 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0653                              = $0653 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0654                              = $0654 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0655                              = $0655 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0656                              = $0656 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0657                              = $0657 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0658                              = $0658 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0659                              = $0659 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_065A                              = $065A ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_065B                              = $065B ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_065C                              = $065C ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_065D                              = $065D ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_065E                              = $065E ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_065F                              = $065F ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0660                              = $0660 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0661                              = $0661 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0662                              = $0662 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0663                              = $0663 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0664                              = $0664 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0665                              = $0665 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0666                              = $0666 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0667                              = $0667 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0668                              = $0668 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0669                              = $0669 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_066A                              = $066A ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_066B                              = $066B ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_066C                              = $066C ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_066D                              = $066D ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_066E                              = $066E ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_066F                              = $066F ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0670                              = $0670 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0671                              = $0671 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0672                              = $0672 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0673                              = $0673 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0674                              = $0674 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0675                              = $0675 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0676                              = $0676 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0677                              = $0677 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0678                              = $0678 ; 01D74F 01D853 01D85A 01D862 01FF09 
; ram_0679                              = $0679 ; 01D74F 01D853 01D85A 01D862 01FF09 
; ram_067A                              = $067A ; 01D74F 01D853 01D85A 01D862 01FF09 
; ram_067B                              = $067B ; 01D74F 01D853 01D85A 01D862 01FF09 
; ram_067C                              = $067C ; 01D74F 01D853 01D85A 01D862 01FF09 
; ram_067D                              = $067D ; 01D74F 01D853 01D85A 01D862 01FF09 
; ram_067E                              = $067E ; 01D74F 01D853 01D85A 01D862 01FF09 
; ram_067F                              = $067F ; 01D74F 01D853 01D85A 01D862 01FF09 
; ram_0680                              = $0680 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0681                              = $0681 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0682                              = $0682 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0683                              = $0683 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0684                              = $0684 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0685                              = $0685 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0686                              = $0686 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0687                              = $0687 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0688                              = $0688 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0689                              = $0689 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_068A                              = $068A ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_068B                              = $068B ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_068C                              = $068C ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_068D                              = $068D ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_068E                              = $068E ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_068F                              = $068F ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0690                              = $0690 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0691                              = $0691 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0692                              = $0692 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0693                              = $0693 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0694                              = $0694 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0695                              = $0695 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0696                              = $0696 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0697                              = $0697 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0698                              = $0698 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_0699                              = $0699 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_069A                              = $069A ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_069B                              = $069B ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_069C                              = $069C ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_069D                              = $069D ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_069E                              = $069E ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_069F                              = $069F ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06A0                              = $06A0 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06A1                              = $06A1 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06A2                              = $06A2 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06A3                              = $06A3 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06A4                              = $06A4 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06A5                              = $06A5 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06A6                              = $06A6 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06A7                              = $06A7 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06A8                              = $06A8 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06A9                              = $06A9 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06AA                              = $06AA ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06AB                              = $06AB ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06AC                              = $06AC ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06AD                              = $06AD ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06AE                              = $06AE ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06AF                              = $06AF ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06B0                              = $06B0 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06B1                              = $06B1 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06B2                              = $06B2 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06B3                              = $06B3 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06B4                              = $06B4 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06B5                              = $06B5 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06B6                              = $06B6 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06B7                              = $06B7 ; 01D74F 01D843 01D853 01D85A 01D862 01FF09 
; ram_06B8                              = $06B8 ; 01D74F 01D853 01D85A 01D862 01FF09 
; ram_06B9                              = $06B9 ; 01D74F 01D853 01D85A 01D862 01FF09 
; ram_06BA                              = $06BA ; 01D74F 01D853 01D85A 01D862 01FF09 
; ram_06BB                              = $06BB ; 01D74F 01D853 01D85A 01D862 01FF09 
; ram_06BC                              = $06BC ; 01D74F 01D853 01D85A 01D862 01FF09 
; ram_06BD                              = $06BD ; 01D74F 01D853 01D85A 01D862 01FF09 
; ram_06BE                              = $06BE ; 01D74F 01D853 01D85A 01D862 01FF09 
; ram_06BF                              = $06BF ; 01D74F 01D853 01D85A 01D862 01FF09 



; 06C0-06CF (10) probably ppu buffer
ram_06C0_unk                            = $06C0 ; 01D790 01D871 01D8F6 01D938 01FF09 
; ram_06C1                              = $06C1 ; 01D796 01D877 01D8FB 01D938 01FF09 
; ram_06C2                              = $06C2 ; 01D79C 01D87D 01D8F6 01D938 01FF09 
; ram_06C3                              = $06C3 ; 01D7A2 01D883 01D8FB 01D938 01FF09 
; ram_06C4                              = $06C4 ; 01D790 01D871 01D900 01D938 01FF09 
; ram_06C5                              = $06C5 ; 01D796 01D877 01D905 01D938 01FF09 
; ram_06C6                              = $06C6 ; 01D79C 01D87D 01D900 01D938 01FF09 
; ram_06C7                              = $06C7 ; 01D7A2 01D883 01D905 01D938 01FF09 
; ram_06C8                              = $06C8 ; 01D790 01D871 01D8F6 01FF09 
; ram_06C9                              = $06C9 ; 01D796 01D877 01D8FB 01FF09 
; ram_06CA                              = $06CA ; 01D79C 01D87D 01D8F6 01FF09 
; ram_06CB                              = $06CB ; 01D7A2 01D883 01D8FB 01FF09 
; ram_06CC                              = $06CC ; 01D790 01D871 01D900 01FF09 
; ram_06CD                              = $06CD ; 01D796 01D877 01D905 01FF09 
; ram_06CE                              = $06CE ; 01D79C 01D87D 01D900 01FF09 
; ram_06CF                              = $06CF ; 01D7A2 01D883 01D905 01FF09 



ram_06D0                                = $06D0 ; 01FF09 
ram_06D1                                = $06D1 ; 01FF09 
ram_06D2                                = $06D2 ; 01FF09 
ram_06D3                                = $06D3 ; 01FF09 
ram_06D4                                = $06D4 ; 01FF09 
ram_06D5                                = $06D5 ; 01FF09 
ram_06D6                                = $06D6 ; 01FF09 
ram_06D7                                = $06D7 ; 01FF09 
ram_06D8                                = $06D8 ; 01FF09 
ram_06D9                                = $06D9 ; 01FF09 
ram_06DA                                = $06DA ; 01FF09 
ram_06DB                                = $06DB ; 01FF09 
ram_06DC                                = $06DC ; 01FF09 
ram_06DD                                = $06DD ; 01FF09 
ram_06DE                                = $06DE ; 01FF09 
ram_06DF                                = $06DF ; 01FF09 
ram_06E0                                = $06E0 ; 01FF09 
ram_06E1                                = $06E1 ; 01FF09 
ram_06E2                                = $06E2 ; 01FF09 
ram_06E3                                = $06E3 ; 01FF09 
ram_06E4                                = $06E4 ; 01FF09 
ram_06E5                                = $06E5 ; 01FF09 
ram_06E6                                = $06E6 ; 01FF09 
ram_06E7                                = $06E7 ; 01FF09 
ram_06E8                                = $06E8 ; 01FF09 
ram_06E9                                = $06E9 ; 01FF09 
ram_06EA                                = $06EA ; 01FF09 
ram_06EB                                = $06EB ; 01FF09 
ram_06EC                                = $06EC ; 01FF09 
ram_06ED                                = $06ED ; 01FF09 
ram_06EE                                = $06EE ; 01FF09 
ram_06EF                                = $06EF ; 01FF09 
ram_06F0                                = $06F0 ; 01FF09 
ram_06F1                                = $06F1 ; 01FF09 
ram_06F2                                = $06F2 ; 01FF09 
ram_06F3                                = $06F3 ; 01FF09 
ram_06F4                                = $06F4 ; 01FF09 
ram_06F5                                = $06F5 ; 01FF09 
ram_06F6                                = $06F6 ; 01FF09 
ram_06F7                                = $06F7 ; 01FF09 
ram_06F8                                = $06F8 ; 01FF09 
ram_06F9                                = $06F9 ; 01FF09 
ram_06FA                                = $06FA ; 01FF09 
ram_06FB                                = $06FB ; 01FF09 
ram_06FC                                = $06FC ; 01FF09 
ram_06FD                                = $06FD ; 01FF09 
ram_06FE                                = $06FE ; 01FF09 
ram_06FF                                = $06FF ; 01FF09 



ram_0700                                = $0700 ; 014178 0142EE 014683 014688 01FF0C 
ram_0701                                = $0701 ; 014178 0142EE 014683 014688 01FF0C 
ram_0702                                = $0702 ; 014178 0142EE 014683 014688 01FF0C 
ram_0703                                = $0703 ; 014178 01FF0C 
ram_0704                                = $0704 ; 014178 014310 014359 01435E 0145B3 0145BA 0145C2 0145C7 014654 014661 014666 01468C 014691 0146CF 01472A 014788 0147D3 0147F7 0148B0 014902 014907 01491B 014921 01FF0C 
ram_0705                                = $0705 ; 014178 014359 01435E 0145C2 0145C7 0145E1 0145E4 014661 014666 01468C 014691 0146CF 0147D3 0147F7 0148B0 01FF0C 
ram_0706                                = $0706 ; 014178 014310 014359 01435E 0145B3 0145BA 0145C2 0145C7 014654 014661 014666 01468C 014691 0146CF 01472A 014788 0147D3 0147F7 0148B0 014902 014907 01491B 014921 01FF0C 
ram_0707                                = $0707 ; 014178 01FF0C 
ram_0708                                = $0708 ; 014178 01465E 014785 0147D0 014913 014916 01FF0C 
ram_0709                                = $0709 ; 014178 01465E 0147D0 014913 014916 01FF0C 
ram_070A                                = $070A ; 014178 01465E 014785 0147D0 014913 014916 01FF0C 
ram_070B                                = $070B ; 014178 01FF0C 
ram_070C                                = $070C ; 014178 014672 01467B 0147AB 0147B5 01FF0C 
ram_070D                                = $070D ; 014178 0145D6 01467B 01FF0C 
ram_070E                                = $070E ; 014178 014672 01467B 0146BD 0146C6 0147AB 0147B5 01FF0C 
ram_070F                                = $070F ; 014178 01FF0C 
ram_0710                                = $0710 ; 014178 0145E8 0146CA 01472D 014770 01FF0C 
ram_0711                                = $0711 ; 014178 01430B 0145E8 0146CA 014762 01FF0C 
ram_0712                                = $0712 ; 014178 0145E8 0146CA 01472D 014770 01FF0C 
ram_0713                                = $0713 ; 014178 01FF0C 
ram_0714                                = $0714 ; 014178 01FF0C 
ram_0715                                = $0715 ; 014178 014882 01FF0C 
ram_0716                                = $0716 ; 014178 014882 01FF0C 
ram_0717                                = $0717 ; 014178 01FF0C 
ram_0718                                = $0718 ; 014178 014361 0146B9 0148B7 01FF0C 
ram_0719                                = $0719 ; 014178 014361 0146B9 0148B7 01FF0C 
ram_071A                                = $071A ; 014178 014361 0146B9 0148B7 01FF0C 
ram_071B                                = $071B ; 014178 01FF0C 
ram_071C                                = $071C ; 014178 01436B 0148D6 01FF0C 
ram_071D                                = $071D ; 014178 01436B 0148D6 01FF0C 
ram_071E                                = $071E ; 014178 01436B 0148D6 01FF0C 
ram_071F                                = $071F ; 014178 01FF0C 
ram_0720                                = $0720 ; 014178 01464B 0147FF 01480B 01481C 0148C9 0148CC 0148DC 01FF0C 
ram_0721                                = $0721 ; 014178 01464B 0147FF 01481C 0148C9 0148CC 0148DC 01FF0C 
ram_0722                                = $0722 ; 014178 01464B 0147FF 01480B 01481C 0148C9 0148CC 0148DC 01FF0C 
ram_0723                                = $0723 ; 014178 01FF0C 
ram_0724                                = $0724 ; 014178 014646 014805 014812 014821 0148D0 0148D3 0148E2 01FF0C 
ram_0725                                = $0725 ; 014178 014646 014805 014821 0148D0 0148D3 0148E2 01FF0C 
ram_0726                                = $0726 ; 014178 014646 014805 014812 014821 0148D0 0148D3 0148E2 01FF0C 
ram_0727                                = $0727 ; 014178 01FF0C 
ram_0728                                = $0728 ; 014191 0143B4 014683 014688 01FF0C 
ram_0729                                = $0729 ; 014191 0143B4 014683 014688 01FF0C 
ram_072A                                = $072A ; 014191 0143B4 014683 014688 01FF0C 
ram_072B                                = $072B ; 014191 0143B4 014683 014688 01FF0C 
ram_072C                                = $072C ; 014191 0145B3 0145BA 0145C2 0145C7 014654 014661 014666 01468C 014691 0146CF 01472A 014788 0148B0 01491B 014921 01FF0C 
ram_072D                                = $072D ; 014191 0145B3 0145BA 0145C2 0145C7 0145E1 0145E4 01462D 014632 014654 014661 014666 01468C 014691 0146CF 01472A 0147D3 0147F7 0148B0 01491B 014921 01FF0C 
ram_072E                                = $072E ; 014191 0145B3 0145BA 0145C2 0145C7 01462D 014632 014654 014661 014666 01468C 014691 0146CF 01472A 014788 0147D3 0147F7 0148B0 01491B 014921 01FF0C 
ram_072F                                = $072F ; 014191 0145B3 0145BA 0145C2 0145C7 01462D 014632 014654 014661 014666 01468C 014691 0146CF 01472A 014788 0147D3 0147F7 0148B0 01491B 014921 01FF0C 
ram_0730                                = $0730 ; 014191 01465E 014785 014913 014916 01FF0C 
ram_0731                                = $0731 ; 014191 01465E 0147D0 014913 014916 01FF0C 
ram_0732                                = $0732 ; 014191 01465E 014785 0147D0 014913 014916 01FF0C 
ram_0733                                = $0733 ; 014191 01465E 014785 0147D0 014913 014916 01FF0C 
ram_0734                                = $0734 ; 014191 014672 01467B 0147AB 0147B5 01FF0C 
ram_0735                                = $0735 ; 014191 014672 01467B 01FF0C 
ram_0736                                = $0736 ; 014191 014672 01467B 0146BD 0146C6 0147AB 0147B5 01FF0C 
ram_0737                                = $0737 ; 014191 014672 01467B 0146BD 0146C6 0147AB 0147B5 01FF0C 
ram_0738                                = $0738 ; 014191 0145E8 0146CA 01472D 014770 01FF0C 
ram_0739                                = $0739 ; 014191 0145E8 0146CA 01472D 014762 01FF0C 
ram_073A                                = $073A ; 014191 0145E8 0146CA 01472D 014770 01FF0C 
ram_073B                                = $073B ; 014191 0145E8 0146CA 01472D 014770 01FF0C 
ram_073C                                = $073C ; 014191 01FF0C 
ram_073D                                = $073D ; 014191 014882 01FF0C 
ram_073E                                = $073E ; 014191 0146B3 014882 01FF0C 
ram_073F                                = $073F ; 014191 014882 01FF0C 
ram_0740                                = $0740 ; 014191 01FF0C 
ram_0741                                = $0741 ; 014191 014445 01460C 01FF0C 
ram_0742                                = $0742 ; 014191 014445 01460C 01FF0C 
ram_0743                                = $0743 ; 014191 014445 01460C 01FF0C 
ram_0744                                = $0744 ; 014191 01FF0C 
ram_0745                                = $0745 ; 014191 0145FC 014637 01FF0C 
ram_0746                                = $0746 ; 014191 0145FC 014637 01FF0C 
ram_0747                                = $0747 ; 014191 0145FC 014637 01FF0C 
ram_0748                                = $0748 ; 014191 01464B 01481C 01FF0C 
ram_0749                                = $0749 ; 014191 01464B 0147FF 01480B 01481C 01FF0C 
ram_074A                                = $074A ; 014191 01464B 0147FF 01480B 01481C 01FF0C 
ram_074B                                = $074B ; 014191 01464B 0147FF 01480B 01481C 01FF0C 
ram_074C                                = $074C ; 014191 014646 014821 01FF0C 
ram_074D                                = $074D ; 014191 014646 014805 014812 014821 01FF0C 
ram_074E                                = $074E ; 014191 014646 014805 014812 014821 01FF0C 
ram_074F                                = $074F ; 014191 014646 014805 014812 014821 01FF0C 
ram_0750                                = $0750 ; 014191 0141B6 0141FB 014210 0143A7 01456D 014579 01457C 014594 0145A2 0145A8 01FF0C 
ram_0751                                = $0751 ; 014191 0141B6 0141FB 014210 0143A7 01456D 014579 01457C 014594 0145A2 0145A8 01FF0C 
ram_0752                                = $0752 ; 014191 0141B6 0141FB 014210 0143A7 01456D 014579 01457C 014594 0145A2 0145A8 01FF0C 
ram_0753                                = $0753 ; 014191 0141B6 0141FB 014210 0143A7 01456D 014579 01457C 014594 0145A2 0145A8 01FF0C 
ram_0754                                = $0754 ; 014191 0141A6 0141F8 01420D 0143AA 014572 014597 0145A5 0145AD 01FF0C 
ram_0755                                = $0755 ; 014191 0141A6 0141F8 01420D 0143AA 014572 014597 0145A5 0145AD 01FF0C 
ram_0756                                = $0756 ; 014191 0141A6 0141F8 01420D 0143AA 014572 014597 0145A5 0145AD 01FF0C 
ram_0757                                = $0757 ; 014191 0141A6 0141F8 01420D 0143AA 014572 014597 0145A5 0145AD 01FF0C 
ram_0758                                = $0758 ; 014191 0143F3 014440 01448E 01449C 014585 01458C 01FF0C 
ram_0759                                = $0759 ; 014191 0143F3 014408 01440D 014440 014478 01448E 01449C 0144F3 0144FA 0144FD 014515 01451C 014585 01458C 014605 01FF0C 
ram_075A                                = $075A ; 014191 0143F3 014408 01440D 014440 014478 01448E 01449C 0144F3 0144FA 0144FD 014515 01451C 014585 01458C 014605 01FF0C 
ram_075B                                = $075B ; 014191 0143F3 014408 01440D 014440 014478 01448E 01449C 0144F3 0144FA 0144FD 014515 01451C 014585 01458C 014605 01FF0C 
ram_075C                                = $075C ; 014191 01FF0C 
ram_075D                                = $075D ; 014191 014488 01FF0C 
ram_075E                                = $075E ; 014191 014488 01FF0C 
ram_075F                                = $075F ; 014191 014488 01FF0C 
ram_0760                                = $0760 ; 014191 0143AF 0143CF 0143D5 014417 01441A 01FF0C 
ram_0761                                = $0761 ; 014191 0143AF 0143CF 0143D5 014417 01441A 01FF0C 
ram_0762                                = $0762 ; 014191 0143AF 0143CF 0143D5 014417 01441A 01FF0C 
ram_0763                                = $0763 ; 014191 0143AF 0143CF 0143D5 014417 01441A 01FF0C 
ram_0764                                = $0764 ; 014191 01442C 014511 01FF0C 
ram_0765                                = $0765 ; 014191 01442C 014511 01FF0C 
ram_0766                                = $0766 ; 014191 01442C 014511 01FF0C 
ram_0767                                = $0767 ; 014191 01442C 014511 01FF0C 
ram_0768                                = $0768 ; 014191 0143BF 0143C5 01443A 0144A3 01FF0C 
ram_0769                                = $0769 ; 014191 0143BF 0143C5 01443A 0144A3 01FF0C 
ram_076A                                = $076A ; 014191 0143BF 0143C5 01443A 0144A3 01FF0C 
ram_076B                                = $076B ; 014191 0143BF 0143C5 01443A 0144A3 01FF0C 
ram_076C                                = $076C ; 014191 014546 014550 01FF0C 
ram_076D                                = $076D ; 014191 014546 014550 014557 01455F 01FF0C 
ram_076E                                = $076E ; 014191 014546 014550 014557 01455F 01FF0C 
ram_076F                                = $076F ; 014191 014546 014550 014557 01455F 01FF0C 
ram_0770                                = $0770 ; 014191 01FF0C 
ram_0771                                = $0771 ; 014191 014546 014550 014557 01FF0C 
ram_0772                                = $0772 ; 014191 014546 014550 014557 01FF0C 
ram_0773                                = $0773 ; 014191 014546 014550 014557 01FF0C 
ram_0774                                = $0774 ; 014191 01FF0C 
ram_0775                                = $0775 ; 014191 01FF0C 
ram_0776                                = $0776 ; 014191 01FF0C 
ram_0777                                = $0777 ; 014191 01FF0C 
ram_0778                                = $0778 ; 014191 01FF0C 
ram_0779                                = $0779 ; 014191 01FF0C 
ram_077A                                = $077A ; 014191 01FF0C 
ram_077B                                = $077B ; 014191 01FF0C 
ram_077C                                = $077C ; 014217 014380 01445F 0147C3 0148A1 0148A6 01FF0C 
ram_077D                                = $077D ; 014217 014380 01445F 0147C3 0148A1 0148A6 01FF0C 
ram_077E                                = $077E ; 014217 014380 01445F 0147C3 0148A1 0148A6 01FF0C 
ram_077F                                = $077F ; 014217 01445F 0147C3 0148A1 0148A6 01FF0C 



; 0780-07E3 (64) high 2006 (+80 = close buffer), low 2006, counter, string of bytes, end token (+80) or repeat
ram_ppu_buffer                          = $0780 ; 01AC15 01C0DF 01D77E 01D802 01EB09 01EB42 01EB47 01ECE0 01F162 01F1EB 01F23E 01F271 01FF0C 
; ram_0781                              = $0781 ; 01AC15 01C0E7 01D783 01D813 01EB09 01ECE0 01F15C 01F1CC 01F1D3 01F1F0 01F232 01F265 01FF0C 
; ram_0782                              = $0782 ; 01AC15 01C0ED 01D78D 01D818 01EB09 01ECE0 01F19D 01F1D0 01F1F5 01F249 01FF0C 
; ram_0783                              = $0783 ; 01AC15 01C0F0 01D793 01D874 01EB09 01ECE0 01EF17 01F195 01F1FA 01F21A 01F251 01FF0C 
; ram_0784                              = $0784 ; 01AC15 01C0DF 01C0F0 01D799 01D87A 01EB09 01ECE0 01EF17 01F1A2 01F1FF 01F251 01FF0C 
; ram_0785                              = $0785 ; 01AC15 01C0F0 01D79F 01D880 01EB09 01EB3A 01ECE0 01ED15 01EF17 01EF30 01F251 01FF0C 
; ram_0786                              = $0786 ; 01AC15 01C0F0 01D7A5 01D886 01EB09 01EB3A 01ECE0 01ED15 01EF17 01EF30 01F251 01FF0C 
; ram_0787                              = $0787 ; 01AC15 01C0DF 01C0F0 01D77E 01D874 01EB09 01EB3A 01ECE0 01ED15 01EF30 01F251 01FF0C 
; ram_0788                              = $0788 ; 01AC15 01C0E7 01C0F0 01D783 01D87A 01EB09 01EB3A 01ECE0 01ED15 01EF30 01F251 01FF0C 
; ram_0789                              = $0789 ; 01AC15 01C0ED 01C0F0 01D78D 01D880 01EB09 01EB2A 01EB3A 01ECE0 01ED05 01ED15 01EF30 01F251 01FF0C 
; ram_078A                              = $078A ; 01AC15 01C0F0 01D793 01D886 01EB09 01ECE0 01F251 01FF0C 
; ram_078B                              = $078B ; 01AC15 01C0F0 01D799 01D874 01EB09 01ECE0 01F251 01FF0C 
; ram_078C                              = $078C ; 01AC15 01C0F0 01D79F 01D87A 01EB09 01ECE0 01F251 01FF0C 
; ram_078D                              = $078D ; 01AC15 01C0F0 01D7A5 01D880 01EB09 01ECE0 01F251 01FF0C 
; ram_078E                              = $078E ; 01AC15 01C0DF 01C0F0 01D766 01D77E 01D886 01EB09 01ECE0 01F251 01FF0C 
; ram_078F                              = $078F ; 01AC15 01C0E7 01C0F0 01D766 01D783 01D874 01EB09 01ECE0 01F251 01FF0C 
; ram_0790                              = $0790 ; 01AC15 01C0ED 01C0F0 01D766 01D78D 01D87A 01EB09 01ECE0 01F251 01FF0C 
; ram_0791                              = $0791 ; 01AC15 01C0F0 01D766 01D793 01D880 01EB09 01EB19 01ECE0 01ECF4 01EEEF 01F251 01FF0C 
; ram_0792                              = $0792 ; 01AC15 01C0DF 01C0F0 01D708 01D799 01D886 01EB09 01ECE0 01F251 01FF0C 
; ram_0793                              = $0793 ; 01AC15 01C0E7 01C0F0 01D79F 01D874 01ECE0 01F251 01FF0C 
; ram_0794                              = $0794 ; 01AC15 01C0ED 01C0F0 01D7A5 01D87A 01ECE0 01F251 01FF0C 
; ram_0795                              = $0795 ; 01AC15 01C0DF 01C0F0 01D77E 01D880 01ECE0 01ED24 01EDD6 01EDE5 01EDF2 01EDFD 01EE06 01EE0E 01F251 01FF0C 
; ram_0796                              = $0796 ; 01AC15 01C0E7 01C0F0 01D783 01D886 01ECE0 01ED2A 01EDD6 01EDE5 01EDF2 01EDFD 01EE06 01EE0E 01EE22 01EE2D 01F251 01FF0C 
; ram_0797                              = $0797 ; 01AC15 01C0ED 01C0F0 01D78D 01D874 01ECE0 01EDD6 01EDE5 01EDF2 01EDFD 01EE06 01EE0E 01EE22 01EE2D 01F251 01FF0C 
; ram_0798                              = $0798 ; 01AC15 01C0DF 01C0F0 01D793 01D87A 01ECE0 01EDE5 01EDF2 01EE18 01EE22 01EE2D 01F251 01FF0C 
; ram_0799                              = $0799 ; 01C0F0 01D799 01D880 01ECE0 01EDE5 01EDF2 01EE1D 01EE22 01EE2D 01F251 01FF0C 
; ram_079A                              = $079A ; 01C0DF 01C0F0 01D79F 01D886 01ECE0 01F251 01FF0C 
; ram_079B                              = $079B ; 01C0E7 01C0F0 01D7A5 01D874 01ECE0 01F251 01FF0C 
; ram_079C                              = $079C ; 01C0DF 01C0ED 01C0F0 01D71E 01D763 01D87A 01ECE0 01F251 01FF0C 
; ram_079D                              = $079D ; 01C0E7 01C0F0 01D756 01D763 01D880 01ECE0 01F251 01FF0C 
; ram_079E                              = $079E ; 01C0ED 01C0F0 01D740 01D763 01D886 01ECE0 01ED3B 01F251 01FF0C 
; ram_079F                              = $079F ; 01C0DF 01C0F0 01D74C 01D763 01D874 01ECE0 01F244 01F277 01FF0C 
; ram_07A0                              = $07A0 ; 01C0DF 01C0E7 01C0F0 01D708 01D87A 01ECE0 01ED5F 01EE7A 01EE96 01F238 01F26B 01FF0C 
; ram_07A1                              = $07A1 ; 01C0ED 01C0F0 01D880 01ECE0 01ED5F 01EE7A 01EE96 01F24C 01FF0C 
; ram_07A2                              = $07A2 ; 01C0F0 01D886 01ECE0 01ED5F 01EE7A 01EE96 01F254 01FF0C 
; ram_07A3                              = $07A3 ; 01C0DF 01C0F0 01D7F6 01D8A4 01ECE0 01ED5F 01ED6F 01EE7A 01EE86 01EE96 01F254 01FF0C 
; ram_07A4                              = $07A4 ; 01C0DF 01C0E7 01C0F0 01D809 01ECE0 01F254 01FF0C 
; ram_07A5                              = $07A5 ; 01C0E7 01C0ED 01C0F0 01D81D 01ECE0 01F254 01FF0C 
; ram_07A6                              = $07A6 ; 01C0ED 01C0F0 01D865 01ECE0 01F254 01FF0C 
; ram_07A7                              = $07A7 ; 01C0F0 01D865 01ECE0 01F254 01FF0C 
; ram_07A8                              = $07A8 ; 01C0F0 01D865 01ECE0 01ED3B 01F254 01FF0C 
; ram_07A9                              = $07A9 ; 01C0F0 01D865 01ECE0 01F254 01FF0C 
; ram_07AA                              = $07AA ; 01C0F0 01D865 01ECE0 01ED5F 01EE7A 01EE96 01F254 01FF0C 
; ram_07AB                              = $07AB ; 01C0F0 01D865 01ECE0 01ED5F 01EE7A 01EE96 01F254 01FF0C 
; ram_07AC                              = $07AC ; 01C0F0 01D865 01ECE0 01ED5F 01EE7A 01EE96 01F254 01FF0C 
; ram_07AD                              = $07AD ; 01C0F0 01D865 01ECE0 01ED5F 01ED6F 01EE7A 01EE86 01EE96 01F254 01FF0C 
; ram_07AE                              = $07AE ; 01C0DF 01C0F0 01D8A4 01ECE0 01F254 01FF0C 
; ram_07AF                              = $07AF ; 01C0E7 01C0F0 01ECE0 01F254 01FF0C 
; ram_07B0                              = $07B0 ; 01C0ED 01C0F0 01ECE0 01F254 01FF0C 
; ram_07B1                              = $07B1 ; 01C0F0 01ECE0 01F254 01FF0C 
; ram_07B2                              = $07B2 ; 01C0F0 01ECE0 01ED3B 01F254 01FF0C 
; ram_07B3                              = $07B3 ; 01C0F0 01ECE0 01F254 01FF0C 
; ram_07B4                              = $07B4 ; 01C0F0 01ECE0 01ED5F 01EE7A 01EE96 01F254 01FF0C 
; ram_07B5                              = $07B5 ; 01C0F0 01ECE0 01ED5F 01EE7A 01EE96 01F254 01FF0C 
; ram_07B6                              = $07B6 ; 01C0F0 01ECE0 01ED5F 01EE7A 01EE96 01F254 01FF0C 
; ram_07B7                              = $07B7 ; 01C0F0 01ECE0 01ED5F 01ED6F 01EE7A 01EE86 01EE96 01F254 01FF0C 
; ram_07B8                              = $07B8 ; 01C0DF 01C0F0 01ECE0 01F254 01FF0C 
; ram_07B9                              = $07B9 ; 01C0E7 01C0F0 01ECE0 01F254 01FF0C 
; ram_07BA                              = $07BA ; 01C0ED 01C0F0 01ECE0 01F254 01FF0C 
; ram_07BB                              = $07BB ; 01C0F0 01ECE0 01F254 01FF0C 
; ram_07BC                              = $07BC ; 01C0F0 01ECE0 01ED3B 01F254 01FF0C 
; ram_07BD                              = $07BD ; 01C0F0 01ECE0 01F254 01FF0C 
; ram_07BE                              = $07BE ; 01C0DF 01C0F0 01ECE0 01ED5F 01EE7A 01EE96 01F25A 01FF0C 
; ram_07BF                              = $07BF ; 01C0F0 01ECE0 01ED5F 01EE7A 01EE96 01FF0C 
; ram_07C0                              = $07C0 ; 01C0DF 01C0F0 01C573 01E836 01ECE0 01ED5F 01EE7A 01EE96 01FF0C 
; ram_07C1                              = $07C1 ; 01C0E7 01C0F0 01C578 01E83E 01ECE0 01ED5F 01ED6F 01EE7A 01EE86 01EE96 01FF0C 
; ram_07C2                              = $07C2 ; 01C0DF 01C0ED 01C5B3 01E848 01ECE0 01FF0C 
; ram_07C3                              = $07C3 ; 01C0F0 01C584 01E855 01FF0C 
; ram_07C4                              = $07C4 ; 01C0F0 01C584 01E855 01FF0C 
; ram_07C5                              = $07C5 ; 01C0F0 01C584 01E855 01FF0C 
; ram_07C6                              = $07C6 ; 01C0F0 01C584 01E855 01FF0C 
; ram_07C7                              = $07C7 ; 01C0DF 01C0F0 01C584 01E839 01FF0C 
; ram_07C8                              = $07C8 ; 01C0E7 01C0F0 01C584 01E843 01FF0C 
; ram_07C9                              = $07C9 ; 01C0ED 01C0F0 01C584 01E84B 01FF0C 
; ram_07CA                              = $07CA ; 01C0F0 01C584 01E85B 01FF0C 
; ram_07CB                              = $07CB ; 01C0F0 01C584 01E85B 01FF0C 
; ram_07CC                              = $07CC ; 01C0F0 01C584 01E85B 01FF0C 
; ram_07CD                              = $07CD ; 01C0F0 01C584 01E85B 01FF0C 
; ram_07CE                              = $07CE ; 01C0DF 01C0F0 01C584 01E868 01FF0C 
; ram_07CF                              = $07CF ; 01C0F0 01C584 01FF0C 
; ram_07D0                              = $07D0 ; 01C0F0 01C584 01FF0C 
; ram_07D1                              = $07D1 ; 01C0F0 01C584 01FF0C 
; ram_07D2                              = $07D2 ; 01C0F0 01C584 01FF0C 
; ram_07D3                              = $07D3 ; 01C0F0 01C584 01FF0C 
; ram_07D4                              = $07D4 ; 01C0F0 01C584 01FF0C 
; ram_07D5                              = $07D5 ; 01C0F0 01C584 01FF0C 
; ram_07D6                              = $07D6 ; 01C0F0 01C584 01FF0C 
; ram_07D7                              = $07D7 ; 01C0F0 01C584 01FF0C 
; ram_07D8                              = $07D8 ; 01C0F0 01C584 01FF0C 
; ram_07D9                              = $07D9 ; 01C0F0 01C584 01FF0C 
; ram_07DA                              = $07DA ; 01C0F0 01C584 01FF0C 
; ram_07DB                              = $07DB ; 01C0F0 01C584 01FF0C 
; ram_07DC                              = $07DC ; 01C0F0 01C584 01FF0C 
; ram_07DD                              = $07DD ; 01C0F0 01C584 01FF0C 
; ram_07DE                              = $07DE ; 01C0F0 01C584 01FF0C 
; ram_07DF                              = $07DF ; 01C0F0 01C584 01FF0C 
; ram_07E0                              = $07E0 ; 01C0F0 01C584 01FF0C 
; ram_07E1                              = $07E1 ; 01C0F0 01C584 01FF0C 
; ram_07E2                              = $07E2 ; 01C0F0 01C584 01FF0C 
; ram_07E3                              = $07E3 ; 01C0DF 01C597 01FF0C 



ram_07E4                                = $07E4 ; 01FF0C 
ram_07E5                                = $07E5 ; 01FF0C 
ram_07E6                                = $07E6 ; 01FF0C 
ram_07E7                                = $07E7 ; 01FF0C 



; 07E8-07EF (08) probably palette buffer
ram_07E8_unk                            = $07E8 ; 01EB57 01EBEE 01FF0C 
; ram_07E9                              = $07E9 ; 01EB57 01EBEE 01FF0C 
; ram_07EA                              = $07EA ; 01EB57 01EBEE 01FF0C 
; ram_07EB                              = $07EB ; 01EB57 01EBEE 01FF0C 
; ram_07EC                              = $07EC ; 01EB57 01EBEE 01FF0C 
; ram_07ED                              = $07ED ; 01EB57 01EBEE 01FF0C 
; ram_07EE                              = $07EE ; 01EB57 01EBEE 01FF0C 
; ram_07EF                              = $07EF ; 01EB57 01EBEE 01FF0C 



ram_07F0                                = $07F0 ; 01E0BF 01E10D 01FF0C 



; some kind of copies list (for a secret area with extra lives?)
ram_07F1                                = $07F1 ; 01E0C4 01E112 01FF0C 
ram_07F2                                = $07F2 ; 01E0C9 01E117 01FF0C 
ram_copy_substage                       = $07F3 ; 01E0CE 01E11C 01FF0C 
ram_07F4                                = $07F4 ; 01E0D3 01E121 01FF0C 
ram_07F5                                = $07F5 ; 01E0D8 01E126 01FF0C 
ram_07F6                                = $07F6 ; 01E0DD 01E12B 01FF0C 
ram_07F7                                = $07F7 ; 01E0E2 01E130 01FF0C 
ram_07F8                                = $07F8 ; 01E0E7 01E136 01FF0C 
ram_07F9                                = $07F9 ; 01E0ED 01E13C 01FF0C 
ram_07FA                                = $07FA ; 01E0F3 01E141 01FF0C 



ram_07FB                                = $07FB ; 01FF0C 
ram_07FC                                = $07FC ; 01FF0C 
ram_07FD                                = $07FD ; 01FF0C 
ram_07FE                                = $07FE ; 01FF0C 
ram_07FF                                = $07FF ; 01FF0C 


