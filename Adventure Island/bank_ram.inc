; to the right are ROM File addresses of instructions which were using these RAM addresses



; 
ram_0000_temp                           = $0000 ; 00002A 000217 00031A 000320 0003B4 0003CC 0003FE 00040C 0004B2 0004C8 00076E 000777 00088D 000897 0008F1 0008F9 000A07 000A2A 000AC1 000AC9 000ACB 000AD1 000BF6 000BFB 000BFF 000C77 000C91 000C93 000C9E 000CB8 000CCD 000CDD 000CE3 000CEB 000CF1 000D0A 000D13 000D1E 000D39 000D4F 000D75 000D86 000DA2 000DED 000DF4 000DF7 000DFA 000E59 000E6E 000EB2 000EBB 001251 0012CA 001618 00162A 001634 001637 0016C5 0016F0 0018A9 0018AF 0018BC 0019FC 001A01 001D86 001D8F 002619 00266E 002672 0026CB 0026D3 002989 002999 002A34 002A38 002C11 002C20 002C25 002FF3 002FFD 003085 00312A 00313A 003145 00314A 00319A 0031CC 0033B8 0033C6 0033DE 0033F0 0033F9 003401 00343E 00344C 003486 00348E 0034ED 0034F4 00350A 003511 00355E 003565 003575 00357C 003608 0036C1 003799 0037A1 0037A5 0037AF 0037B3 0037B9 003AB8 003AC2 003B33 003B36 003B3D 003B6C 003B84 003B89 003BDC 003BDF 003C0E 003C11 003D85 003D88 003F92 003FA8 004009 004018 004023 00403A 004048 00415A 00417F 0041B4 0041C2 0041C6 0041D1 0041D8 0041EE 0041F0 0041F6 0041FE 00421A 004230 004232 004238 00423C 00423E 004244 004249 004276 00428D 004290 004294 0042B0 004357 
    ram_0000_t01                            = ram_0000_temp ; 
    ram_0000_t02                            = ram_0000_temp ; 
    ram_0000_t03                            = ram_0000_temp ; 
    ram_0000_t04                            = ram_0000_temp ; 
    ram_0000_t05                            = ram_0000_temp ; 
    ram_0000_t06_lo                         = ram_0000_temp ; in pair with ram_0001_t02_hi
    ram_0000_t07                            = ram_0000_temp ; 
    ram_0000_t08_lo                         = ram_0000_temp ; in pair with ram_0001_t04_hi
    ram_0000_t09_data                       = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t10                            = ram_0000_temp ; 
    ram_0000_t11_pos_X_lo                   = ram_0000_temp ; in pair with ram_0001_t07_pos_X_hi
    ram_0000_t12                            = ram_0000_temp ; 
    ram_0000_t13_pos_X_lo                   = ram_0000_temp ; in pair with ram_0001_t09_pos_X_hi
    ram_0000_t14_loop_counter               = ram_0000_temp ; 
    ram_0000_t15_loop_counter               = ram_0000_temp ; 
    ram_0000_t16_loop_counter               = ram_0000_temp ; 
    ram_0000_t17_sprite_data                = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t18                            = ram_0000_temp ; 
    ram_0000_t19                            = ram_0000_temp ; 
    ram_0000_t20_pos_X_lo                   = ram_0000_temp ; in pair with ram_0001_t13_pos_X_hi
    ram_0000_t21                            = ram_0000_temp ; 
    ram_0000_t22                            = ram_0000_temp ; 
    ram_0000_t23                            = ram_0000_temp ; 
    ram_0000_t24_pos_X_lo                   = ram_0000_temp ; in pair with ram_0001_t14_pos_X_hi
    ram_0000_t25_pos_Y_lo                   = ram_0000_temp ; 
    ram_0000_t26                            = ram_0000_temp ; 
    ram_0000_t27                            = ram_0000_temp ; 
    ram_0000_t28                            = ram_0000_temp ; 
    ram_0000_t29                            = ram_0000_temp ; 
    ram_0000_t30_loop_counter               = ram_0000_temp ; 
    ram_0000_t31                            = ram_0000_temp ; 
    ram_0000_t32                            = ram_0000_temp ; 
    ram_0000_t33                            = ram_0000_temp ; 
    ram_0000_t34                            = ram_0000_temp ; 
    ram_0000_t35                            = ram_0000_temp ; 
    ram_0000_t36                            = ram_0000_temp ; 
    ram_0000_t37                            = ram_0000_temp ; 
    ram_0000_t38_loop_counter               = ram_0000_temp ; 
    ram_0000_t39_loop_counter               = ram_0000_temp ; 
    ram_0000_t40_data                       = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t41_data                       = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t42_Select_or_Start_button     = ram_0000_temp ; 
    ram_0000_t43_colors_counter             = ram_0000_temp ; 
    ram_0000_t44                            = ram_0000_temp ; 
    ram_0000_t45_stage_data                 = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t46_data                       = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t47                            = ram_0000_temp ; 
    ram_0000_t48                            = ram_0000_temp ; 
    ram_0000_t49                            = ram_0000_temp ; 
    ram_0000_t50                            = ram_0000_temp ; 


; 
ram_0001_temp                           = $0001 ; 00002A 00021D 000315 000318 000329 0003B9 0003D4 000403 000411 0004B7 0004D0 000775 00077D 000889 00089D 000A02 000A33 000AA3 000C05 000C7F 000C97 000C99 000CF7 000D15 000D23 000D41 000D51 000D7A 000D88 000DA4 000DAF 000DB7 000DBD 000DFC 000E61 000EC0 00126C 001274 0012CD 00161F 00162F 0016CC 001D96 00261D 0028D4 0028DA 00298F 0029A1 002C16 002C2A 002C2F 002C34 0031BB 0031C7 00360F 0036C7 003B42 003B71 003DF9 003E0D 00402C 004038 004044 0041BB 0041F2 00427D 0042B8 00435C 
    ram_0001_t01                            = ram_0001_temp ; 
    ram_0001_t02                            = ram_0001_temp ; 
    ram_0001_t02_hi                         = ram_0001_temp ; in pair with ram_0000_t06_lo
    ram_0001_t03                            = ram_0001_temp ; 
    ram_0001_t04_hi                         = ram_0001_temp ; in pair with ram_0000_t08_lo
    ram_0001_t05                            = ram_0001_temp ; 
    ram_0001_t06                            = ram_0001_temp ; 
    ram_0001_t07_pos_X_hi                   = ram_0001_temp ; in pair with ram_0000_t11_pos_X_lo
    ram_0001_t08                            = ram_0001_temp ; 
    ram_0001_t09_pos_X_hi                   = ram_0001_temp ; in pair with ram_0000_t13_pos_X_lo
    ram_0001_t10_tiles_counter              = ram_0001_temp ; 
    ram_0001_t11                            = ram_0001_temp ; 
    ram_0001_t12                            = ram_0001_temp ; 
    ram_0001_t13_pos_X_hi                   = ram_0001_temp ; in pair with ram_0000_t20_pos_X_lo
    ram_0001_t14_pos_X_hi                   = ram_0001_temp ; in pair with ram_0000_t24_pos_X_lo
    ram_0001_t15                            = ram_0001_temp ; 



; 
ram_0002_temp                           = $0002 ; 00002A 0003C1 0003DB 0004BF 0004D8 0009FD 000A0B 000A7D 000C86 000C8E 001DA5 00319F 003530 003DFE 003E0B 004346 0043DD 004426 004442 0044B1 
    ram_0002_t01                            = ram_0002_temp ; 
    ram_0002_t02                            = ram_0002_temp ; 
    ram_0002_t03_lo                         = ram_0002_temp ; in pair with ram_0003_t02_hi
    ram_0002_t04_data                       = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t05_screen_data                = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t06_data                       = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t07                            = ram_0002_temp ; 
    ram_0002_t08_sprite_data_pointer        = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t09_spr_T                      = ram_0002_temp ; 
    ram_0002_t10                            = ram_0002_temp ; 



; 
ram_0003_temp                           = $0003 ; 00002A 000A0D 000A28 000C8C 000C95 001DAA 0031A4 0031C5 00351C 003523 003526 003529 00352C 003532 003536 003E03 003E09 00434B 004375 0043FC 004400 004413 004417 00442B 004449 0044A7 0044C6 
    ram_0003_t01_score_index                = ram_0003_temp ; 
    ram_0003_t02_hi                         = ram_0003_temp ; in pair with ram_0002_t03_lo
    ram_0003_t03                            = ram_0003_temp ; 
    ram_0003_t04_spr_A                      = ram_0003_temp ; 



; a copy of register values
ram_for_2000                            = $0004 ; 00002A 00005E 002E26 002E2C 002E47 002E92 002E96 002EB5 00373F 0038BE 0038DE 003C98 003C9C 003E90 003E94 0044EF 004511 
ram_for_2001                            = $0005 ; 00002A 003744 0044ED 00450D 



; for 2005 register
ram_scroll_X                            = $0006 ; 00002A 000BF2 000C81 0019F8 001B7C 002E88 002E90 002EAD 00318B 003749 003C7E 003C92 003CCA 003D17 003D43 003D4E 003E8C 003EA0 003F0E 0041C9 0041E9 
ram_scroll_Y                            = $0007 ; 00002A 003189 00374E 003B9D 003F2C 003F35 003F49 003F50 



; addresses for 2 players
; see con_btn
ram_buttons                             = $0008 ; 00002A 003033 00379B 0037FF 00452D 004539 
; ram_0009                              = $0009 ; 00002A 00452D 



; +80 = need to swap chr bank
ram_chr_bank                            = $000A ; 00002A 003174 003820 00382F 003AA5 003BD8 



; set to nonzero before NMI and go into infinite loop until NMI sets to 00
ram_nmi_flag_1                          = $000B ; 00002A 003723 00375F 003767 003769 



; skips entire NMI in case NMI was called during previous NMI
ram_nmi_flag_2                          = $000C ; 00002A 003717 00371D 003761 



; 01 if con_sound_extra_life needs to be played
; bzk optimize, perhaps it's better to prepare this sound at 0x0009F2 ?
ram_extra_life_flag                     = $000D ; 00002A 0009F2 003779 00378F 0044E6 



; Select + Start buttons
ram_Select_and_Start_btns               = $000E ; 00002A 000073 00379F 0037A9 0037AB 0037B5 0037B7 



; presses Select or Start buttons
ram_SS_btns_press                       = $000F ; 00002A 000075 00010F 0001F3 000206 002E4F 002E82 003021 0037AD 0037BD 0037BF 



; 
ram_0010_temp                           = $0010 ; 00002A 0001B4 0001C2 0001CD 0001D2 002E55 002EA1 002EE2 002EFB 002F86 002F8B 002F90 002F92 0030BD 0030C9 003AAD 0040E9 
    ram_0010_t01_delay_lo                   = ram_0010_temp ; in pair with ram_0011_t01_delay_hi
    ram_0010_t02_delay                      = ram_0010_temp ; 
    ram_0010_t03_delay                      = ram_0010_temp ; 
    ram_0010_t04_delay                      = ram_0010_temp ; 
    ram_0010_t05_delay                      = ram_0010_temp ; 
    ram_0010_t06_delay_lo                   = ram_0010_temp ; in pair with ram_0011_t02_delay_hi
    ram_0010_t07_delay_lo                   = ram_0010_temp ; in pair with ram_0011_t03_delay_hi
    ram_0010_t09                            = ram_0010_temp ; 



; 
ram_0011_temp                           = $0011 ; 00002A 002E59 002EA5 0030C1 0030CD 003AB1 0040ED 
    ram_0011_t01_delay_hi                   = ram_0011_temp ; in pair with ram_0010_t01_delay_lo
    ram_0011_t02_delay_hi                   = ram_0011_temp ; in pair with ram_0010_t06_delay_lo
    ram_0011_t03_delay_hi                   = ram_0011_temp ; in pair with ram_0010_t07_delay_lo



; if not 00 then write stuff to ppu during NMI
ram_0012                                = $0012 ; 00002A 001B74 001C93 003831 003872 003CA2 004504 



; palette buffer flag
; if not 00 then write palette to ppu during NMI
ram_pal_buf_flag                        = $0013 ; 00002A 001BE4 002E7A 003802 00381E 003A6B 003AC6 003FB0 004504 



; 
ram_0014                                = $0014 ; 00002A 00341F 0038BA 0038DC 004504 



; 
ram_0015                                = $0015 ; 00002A 0035EB 003882 0038B8 004504 



; 
ram_0016                                = $0016 ; 00002A 0034B8 00391B 003939 004504 



; 
ram_0017                                = $0017 ; 00002A 00366D 0038E3 003919 004504 



; 
ram_0018_temp                           = $0018 ; 00002A 003691 
    ram_0018_t01_data                      = ram_0018_temp ; 2 addresses 0018-0019



; used only in pair with ram_0018_temp
; ram_0019                              = $0019 ; 00002A 003698 



; 
ram_001A_temp                           = $001A ; 00002A 003B62 
    ram_001A_t01_data                       = ram_001A_temp ; 2 addresses 001A-001B



; used only in pair with ram_001A_temp
; ram_001B                              = $001B ; 00002A 003B67 



; 
ram_001C_temp                           = $001C ; 00002A 003BE9 
    ram_001C_t01_data                       = ram_001C_temp ; 2 addresses 001C-001D 0x005988



; used only in pair with ram_001C_temp
; ram_001D                             = $001D ; 00002A 003BE9 



; 
ram_001E_temp                           = $001E ; 00002A 003BE9 
    ram_001E_t01_data                       = ram_001E_temp ; 2 addresses 001E-001F 0x00598A



; used only in pair with ram_001E_temp
; ram_001F                             = $001F ; 00002A 003BE9 



; 
ram_0020_temp                           = $0020 ; 00002A 0035B9 003BE9 
    ram_0020_t01_data                       = ram_0020_temp ; 2 addresses 0020-0021 0x00598C



; used only in pair with ram_0020_temp
; ram_0021                              = $0021 ; 00002A 0035BD 003BE9 



; 
ram_0022_temp                           = $0022 ; 00002A 0035CB 003BE9 
    ram_0022_t01_data                       = ram_0022_temp ; 2 addresses 0022-0023 0x00598E



; used only in pair with ram_0022_temp
; ram_0023                              = $0023 ; 00002A 0035CF 003BE9 



; 
ram_0024_temp                           = $0024 ; 00002A 00352E 003BE9 
    ram_0024_t01_data                       = ram_0024_temp ; 2 addresses 0024-0025 0x005990



; used only in pair with ram_0024_temp
; ram_0025                              = $0025 ; 00002A 003534 003BE9 



; 
ram_0026_temp                           = $0026 ; 00002A 003BE9 
    ram_0026_t01_data                       = ram_0026_temp ; 2 addresses 0026-0027 0x005992



; used only in pair with ram_0026_temp
; ram_0027                              = $0027 ; 00002A 003BE9 



; 
ram_0028_temp                           = $0028 ; 00002A 0035BB 0035CD 
    ram_0028_t01_data                       = ram_0028_temp ; 2 addresses 0028-0029



; used only in pair with ram_0028_temp
; ram_0029                              = $0029 ; 00002A 0035D3 



; 
ram_002A                                = $002A ; 00002A 003CA0 003EDE 003F14 



; 
ram_002B                                = $002B ; 00002A 002625 002680 0035E7 003669 003DEA 003E38 



; 
ram_002C                                = $002C ; 00002A 003DEF 003E1D 



; 00 = 
; 01 = 
ram_002D_flag                           = $002D ; 00002A 003CA9 003DC4 003DC7 



; 00 = 
; 01 = 
ram_002E_flag                           = $002E ; 00002A 0002AF 003CAB 003D0B 003E83 003E86 



; counter
ram_002F                                = $002F ; 00002A 003BC4 003DDB 003EC9 003EE3 



; counter
ram_0030                                = $0030 ; 00002A 00263E 003C70 003DD7 003DD9 



; 
ram_0031                                = $0031 ; 00002A 0026AC 0033BA 003B8B 003E28 003E2E 



; 
ram_0032                                = $0032 ; 00002A 0026A9 0033B3 0033C2 0033D8 0035F9 003B75 003E42 003E48 



; 
ram_0033                                = $0033 ; 00002A 0026D0 003440 003B8E 003E30 003E36 



; 
ram_0034                                = $0034 ; 00002A 0026CD 003439 003448 00345E 00367A 003B78 003E5A 003E60 



; 
ram_0035                                = $0035 ; 00002A 002644 0033AA 003413 003430 0034A0 0034AC 0034D6 0034FC 003587 0035D6 0035ED 00366F 0036E0 0036EC 003C82 003C96 003DCB 003DCD 003DD1 003E21 003E3C 003E52 



; 
ram_0036_temp                           = $0036 ; 00002A 003DE5 003DF1 003DF4 
    ram_0036_t01                            = ram_0036_temp ; bzk optimize



; current stage/level numbers
; area = hi
; round = lo
; checkpoint = sub
ram_area                                = $0037 ; 00002A 00008A 000177 000179 00017D 000185 000193 001A67 001A6E 001A94 001AD3 001C15 001CD0 001D2E 002D9D 002DAC 002F1C 003A43 003A46 003B23 003BAD 
ram_round                               = $0038 ; 00002A 00008C 00016B 00016D 000175 000189 000197 002DA1 002DB0 002F1C 003B27 003BBB 003F67 
ram_checkpoint                          = $0039 ; 00002A 000093 0000AA 0000B2 000166 00019B 0001A3 002DA5 002DB4 003B7A 003C4B 003C7A 003C8E 003E9E 



; 
ram_003A                                = $003A ; 00002A 000C55 000C88 001B82 003C78 003C89 003D1B 003E96 003E98 



; 
ram_003B                                = $003B ; 00002A 0019F2 002908 002A19 003A73 003A7C 003A9D 003C51 003C55 003C57 003C6E 003C72 003C86 003EA6 003EC7 003ED6 003EE0 003F0A 003F5F 003F72 003F89 0041E3 



; 00 = 
; FF = 
ram_003C_flag                           = $003C ; 00002A 000E80 003CEE 003D00 003E8A 



; 
ram_003D_spd_Y_lo_camera                = $003D ; 00002A 000E97 003CF0 003D02 003D2C 003D35 003F1B 003F38 



; 
ram_003E_pos_Y_lo                       = $003E ; 00002A 000AFC 004203 



; how many lives left
ram_lives                               = $003F ; 00002A 00009A 00012C 00094C 0009F4 0009FA 002F1C 00300F 



; 00 = not demo
; 01 = demo mode
ram_demo_flag                           = $0040 ; 00002A 000077 00009C 0000C3 00010B 000145 000947 0009C8 002E67 002EC3 0037C2 0037F8 



; 00 = 
; 01 = 
ram_0041_flag                           = $0041 ; 00002A 000071 0001FD 000210 0042D2 



; interval between new buttons during demo?
ram_0042                                = $0042 ; 00002A 00007C 0037CC 0037E5 



; pressed buttons in demo mode
ram_demo_buttons                        = $0043 ; 00002A 000079 0037C6 0037CA 0037D8 0037FC 



; 00 = 
; 01 = 
ram_0044_flag                           = $0044 ; 00002A 0000D6 000103 000312 



; 00 = 
; 01 = 
ram_0045_flag                           = $0045 ; 00002A 0000D8 000107 0002A5 000335 001B3D 



; 00 = 
; 01 = 
ram_0046_flag                           = $0046 ; 00002A 00015D 001B3F 003CB3 



; 00 = start from the very beginning after game over, otherwise continue from the same area and round
ram_continue_flag                       = $0047 ; 00002A 000084 00014C 002DE5 003004 00303A 



; 00 = 
; not 00 = 
ram_0048_flag                           = $0048 ; 00002A 0008BE 00092D 002E1F 002EC7 002F28 003006 003090 003AA9 003CAD 0040C1 



; 
ram_bonus_stage                         = $0049 ; 00002A 0000B9 000123 000159 00018F 0001A7 0001D7 00025C 0002AB 000356 0003AE 000425 000BA0 000BBA 003B2B 003BB5 003F5B 



; 00 = 
; 01 = 
ram_004A_flag                           = $004A ; 00002A 0000C1 000330 00033E 0004E0 000556 000631 0007DF 002A43 002B7D 



; 00 = 
; 01 = 
ram_004B_flag                           = $004B ; 00002A 0000BB 0000FF 00032E 003CB1 



; 00 = 
; not 00 = 
ram_004C_flag                           = $004C ; 00002A 0000BD 00025E 00033A 002A26 002A41 



; 00 = 
; 01 = 
ram_004D_flag                           = $004D ; 00002A 0000BF 00021F 000337 



; copy of current stage/level numbers
; used when going into bonus stages in order to return to a proper place
ram_copy_area                           = $004E ; 00002A 002D9F 002DAA 
ram_copy_round                          = $004F ; 00002A 002DA3 002DAE 
ram_copy_checkpoint                     = $0050 ; 00002A 002DA7 002DB2 



; calculated as ram_area * 04 + ram_round
; used as index for data
ram_current_stage                       = $0051 ; 00002A 003B29 003B50 003C04 



; 
ram_0052                                = $0052 ; 00002A 0001DF 003B5B 003B9F 003BCB 003BF1 



; 
ram_0053                                = $0053 ; 00002A 0033A3 0033AE 003429 003437 0034DA 003500 003538 0035F1 00363A 



; 
ram_0054                                = $0054 ; 00002A 00339E 0033BC 0033C0 0033D3 0033ED 0033F4 0033FF 00340E 003422 003442 003446 003459 00347B 003481 00348C 00349B 0034DE 0034E9 0034F2 003506 00350F 003515 00351E 00354F 00355A 003563 003571 00357A 003580 003582 003624 



; 
ram_0055                                = $0055 ; 00002A 003433 003675 0036A8 0036AA 0036AE 003FC8 003FE0 



; 
ram_0056                                = $0056 ; 00002A 003463 00346F 003471 003479 003686 0036B6 003FC2 003FD8 



; 
ram_0057_nametable_attribute            = $0057 ; 00002A 00346A 00369E 003FD3 003FEA 



; 
ram_0058_animation_id                   = $0058 ; 00002A 00431A 00434D 004392 



; 
ram_0059_pos_X_hi                       = $0059 ; 00002A 0008B8 000922 001D98 002F02 003008 004315 004388 00446B 



; 
ram_005A_spr_X                          = $005A ; 00002A 0008B4 0008D3 0008D8 00091E 00093A 000943 001D91 002F12 002FA8 002FC3 0043A9 004467 



; 
ram_005B_flag                           = $005B ; 00002A 00446D 00449B 0044B9 0044E1 



; 
ram_005C_spr_X                          = $005C ; 00002A 004469 0044D0 0044D8 0044DD 



; 
ram_005D_spr_Y                          = $005D ; 00002A 0008BC 000926 000936 001D9F 002F17 002FAC 002FB5 002FC7 004378 00438C 004398 



; 
ram_005E_main_sprites_counter           = $005E ; 00002A 004368 00436A 004404 004461 00446F 



; bzk optimize, uselees address, store value directly at ram_0062_useless_counter instead
ram_005F_useless                        = $005F ; 00002A 00436F 00437C 



; 
ram_0060_spr_Y                          = $0060 ; 00002A 00437A 0043B6 0043BB 0044CB 



; 
ram_0061_sprites_counter                = $0061 ; 00002A 0043CF 0043E6 0043F8 004406 00440D 004434 004452 004471 



; bzk optimize, doesn't do anything useful
ram_0062_useless_counter                = $0062 ; 00002A 00437E 0043C5 



; 
ram_0063                                = $0063 ; 00002A 004402 004411 004456 004464 



; a copy of stack pointer
ram_stack_pointer                       = $0064 ; 00002A 004339 004386 00447E 



; 00 = 
; 01 = 
ram_0065_flag                           = $0065 ; 00002A 0042D8 004311 00447C 



; each frame increases by 01 up to 0F, then back to 00
; used to handle 1 object each frame?
ram_global_obj_index                    = $0066 ; 00002A 000C49 000ED9 000F09 003781 003783 00378B 



; oam index?
ram_0067                                = $0067 ; 00002A 000C24 000C29 000C3F 0042E6 004380 004396 0043B1 00441E 



; 00-3F
ram_0068_counter                        = $0068 ; 00002A 0042DA 004474 004476 



; frame counter, increases by 01 each frame
ram_frm_cnt                             = $0069 ; 00002A 0042DC 0042DE 004484 



; 00 = 
; 01 = 
; FF = 
ram_plr_pos_Y_hi                        = $006A ; 00002A 00023F 0002FC 000342 000350 0003D9 0003DD 000441 000604 0006B5 0006D5 00073C 00080A 003D3B 003D3D 003FFC 



; 00 = facing right 
; 01 = facing left
ram_player_facing                       = $006B ; 00002A 000241 000458 00045E 00059B 0005D2 0005ED 000654 000671 00069B 000835 004115 



; 
ram_player_previous_facing              = $006C ; 00002A 000243 00065A 00065E 



; 00 = no weapon
; 01 = hammer
; 02+ = rocks
ram_weapon                              = $006D ; 00002A 0000C9 000138 0007D5 00083E 002B84 002B97 002BD4 002C0A 002CE5 



; 00 = don't have
; 01 = have
ram_skateboard_flag                     = $006E ; 00002A 00013A 000563 0005AC 0005BE 0005CC 00062D 002C44 002CEC 003A82 004075 004109 



; 00 = 
; 01 = 
ram_006F_flag                           = $006F ; 00002A 000245 0003A9 0004F2 00051A 00054C 000639 00067D 004107 



; 00 = 
; 01 = 
ram_0070_flag                           = $0070 ; 00002A 000247 0003AB 000454 000492 0004E4 000554 000629 0007DB 00405F 00410C 



; 01 if you're holding A button, otherwise 00
ram_btn_A_flag                          = $0071 ; 00002A 000257 0004EF 0004FB 000518 



; affects death animation type
; 00 = player is not dead (alive)
; 01 = normal death
; 02 = death from fire
; 03 = death from ice
; FF = player is dead off screen (falling into pit/death animation is complete)
ram_death_type                          = $0072 ; 00002A 000249 000286 0002CF 000304 00035C 000600 000625 00070E 00072D 000752 0007D9 001B5B 001C5D 002CEF 003FF8 00405D 00407E 0040C5 



; 01 if you're holding B button, otherwise 00
ram_btn_B_flag                          = $0073 ; 00002A 000255 0007EB 0007EE 000826 002CE7 



; 00-07
ram_0074_counter                        = $0074 ; 00002A 00024B 000635 00066A 00082B 000831 



; 00 = no minion
; 01 = fairy (good)
; FF = eggplant (bad)
ram_minion_type                         = $0075 ; 00002A 00024D 0006A6 00070B 000712 002CF3 002D33 00406F 0040CF 



; game timer
; collect fruit and milk to increase stamina
ram_stamina_hi                          = $0076 ; 00002A 00071B 000882 00089B 00089F 0008AB 0008C4 0008DD 002D23 002F52 002F54 0040D9 0040DD 0040FD 004103 
ram_stamina_lo                          = $0077 ; 00002A 000886 000894 000899 0008AF 002F49 002F4E 0040D5 0040DF 



; 00 = 
; 01 = 
ram_0078_flag                           = $0078 ; 00002A 0000DA 0008C0 002CD3 002F3F 0040C7 0040F3 0040F9 



; 00 = 
; 01 = 
ram_0079_flag                           = $0079 ; 00002A 000521 000535 00054E 000580 00058E 



; 00 = not complete
; 01 = complete
ram_007A_stage_complete_flag            = $007A ; 00002A 00024F 000296 0002BA 0004DE 000550 0005A2 00063D 000681 0006E7 0007DD 001B65 004061 0040C9 



; 00 = don't have
; 01 = have
ram_item_key_flag                       = $007B ; 00002A 000251 0029F2 002CC5 002D49 



; ($indirect,X)
ram_007C                                = $007C ; 00002A 000D59 000D99 003B48 
ram_007D                                = $007D ; 00002A 000D5B 000D9D 003B48 
; ram_007E                              = $007E ; 00002A 000D59 000D99 003B48 
; ram_007F                              = $007F ; 00002A 000D5B 000D9D 003B48 
; ram_0080                              = $0080 ; 00002A 000D59 000D99 003B48 
; ram_0081                              = $0081 ; 00002A 000D5B 000D9D 003B48 



; 
ram_0082_temp                           = $0082 ; 00002A 000DBB 
    ram_0082_t01_data                       = ram_0082_temp ; 



; used only in pair with ram_0082_temp
; ram_0083                              = $0083 ; 00002A 000DC1 



; 
ram_0084_pos_X_lo                       = $0084 ; 00002A 000215 000265 000811 000BFD 000CEF 000E20 001329 001A03 001A79 001AA1 001B7E 001C4C 0
ram_0085_pos_X_hi                       = $0085 ; 00002A 00021B 00026A 000816 000C03 000CF5 000E25 00132E 001A07 001A7E 001AA6 001B84 001B86 001C50 
ram_0086_pos_Y_lo                       = $0086 ; 00002A 000225 00022C 00026E 00081B 000C0A 000CFE 000E2A 001333 001A0B 001A86 001AAE 001B8A 001C58 



; see con_obj_id
ram_0087_obj_id                         = $0087 ; 00002A 000230 000277 00081F 000C0E 000CBA 000CD2 000DB1 000DB4 000DD5 000E1B 001337 001940 001A0F 001A8A 001B8E 001C44 



; 00-08
ram_0088_counter                        = $0088 ; 00002A 00269D 00269F 0026A6 0026C1 0026C4 003CA7 



; 
ram_0089_temp                           = $0089 ; 00002A 002694 
    ram_0089_t01_data                       = ram_0089_temp ; 



; used only in pair with ram_0089_temp
; ram_008A                              = $008A ; 00002A 002699 



; 00 = 
; 01 = 
ram_008B_flag                           = $008B ; 00002A 002991 0029EB 002ABF 002AD7 



; free address
; ram_008C                              = $008C ; 00002A 




; 
ram_008D                                = $008D ; 00002A 00264E 00267E 0026AF 003E4A 003E50 



; 00-07 or 00-08
ram_008E_index                          = $008E ; 00002A 000280 001B69 002656 002677 00268D 0026D6 0028C6 0028F0 003BF8 



; 00 = don't have
; 01 = have
ram_item_flower_flag                    = $008F ; 00002A 000B99 002CD0 003CAF 



; 
ram_0090                                = $0090 ; 00002A 0019EE 001A16 003BC9 0040E5 



; 01 = boss is sppawning (blinking)
; 02 = boss is fighting (moving and shooting)
; 03 = boss head is falling (next is 03 or 04)
; 04 = boss is flying away with a new head (not final boss)
; 05 = headless boss is walking to the right (final boss)
; 06 = headless boss is dropping to the pit (final boss)
ram_boss_state                          = $0091 ; 00002A 001A61 001A8F 001AD9 001ADB 001AEA 001B20 001BE7 001BF6 001BFD 001C61 001C86 001C8C 001C96 



; 
ram_0092                                = $0092 ; 00002A 001AF8 001C0B 001C1E 001C2F 001C7B 001CB6 001CBF 
ram_0093                                = $0093 ; 00002A 001AF4 001C67 001C69 001C71 
ram_0094                                = $0094 ; 00002A 001A6C 001C6B 
ram_0095                                = $0095 ; 00002A 001AF2 001C75 001CB0 001CBA 001CC3 
ram_0096                                = $0096 ; 00002A 001A65 001CA3 001CA7 001CAC 
ram_0097                                = $0097 ; 00002A 001A5D 001A9C 001AB5 001BA0 
ram_0098                                = $0098 ; 00002A 001AC4 001B02 001B08 001B56 001BA5 001CC6 



; ($indirect),Y
ram_0099                                = $0099 ; 00002A 003C40 
ram_009A                                = $009A ; 00002A 003C45 



; skip custom palette if negative
ram_custom_palette_flag                 = $009B ; 00002A 003C38 003C49 003F81 003FAC 003FB3 



; ($indirect),Y
ram_009C                                = $009C ; 00002A 0037E7 0037F1 
ram_009D                                = $009D ; 00002A 0037EB 0037F5 



; 
ram_009E                                = $009E ; 00002A 00405B 00406A 004079 



; 00 = 
; 01 = 
; 02 = 
ram_009F_flag                           = $009F ; 00002A 00413D 00415C 004199 



; current sound effect (sfx)
; +80 = acknowledged
; see con_sound
ram_sound_id                            = $00A0 ; 00002A 00006B 0001C8 000201 000371 00050E 000848 000B7D 00123C 0013F0 0014B3 0017C2 001957 001D3B 00271F 002AFF 002B9B 002CA1 002F69 002F9A 00377F 004093 004120 004195 00469E 0046AC 0046C5 0046C7 004701 004855 



; stores a copy of ram_sound_id
; logged bytes 00 and 90 (id 10 for con_sound_extra_life)
ram_copy_sound_id                       = $00A1 ; 00002A 0046A2 0046C1 0046FD 004857 



; 
ram_00A2                                = $00A2 ; 00002A 004693 004697 0046B6 004A3F 
ram_00A3                                = $00A3 ; 00002A 004693 004697 0046B6 00475F 004A3F 
ram_00A4                                = $00A4 ; 00002A 004693 004697 0046B6 004A3F 
ram_00A5                                = $00A5 ; 00002A 004693 004697 0046B6 004A25 
ram_00A6                                = $00A6 ; 00002A 0046DA 0046EC 004713 004723 00473F 004747 00475D 00476D 00478A 00479A 0047B3 0047BE 0047E1 0047F7 004807 004816 004824 004836 004845 
ram_00A7                                = $00A7 ; 00002A 00473B 00474C 004750 004786 0047B7 0047C0 0047C2 0047DD 0047E6 0047F9 004818 00482E 00483B 00484E 



; ($indirect),Y
ram_00A8                                = $00A8 ; 00002A 004741 00475B 00478C 004830 
ram_00A9                                = $00A9 ; 00002A 000326 001541 002D59 004745 004753 004790 004832 



; 
ram_00AA                                = $00AA ; 00002A 00486A 004874 00487B 004887 



; current soundtrack
; +80 = acknowledged
; see con_music
ram_music_id                            = $00AB ; 00002A 00006D 0001E4 00029F 0002BE 0002CD 00030C 000368 00036D 001B61 002B79 002D38 002E30 002E6B 003016 00302A 003031 0030A2 0030B0 003D23 00408F 0048D2 0048D8 0048E0 00493C 



; 
ram_00AC                                = $00AC ; 00002A 00006F 0001FB 00020E 0048AD 0048CE 



; ($indirect,X)
ram_00AD                                = $00AD ; 00002A 0048EB 004A96 004A9C 004AAF 004AC8 004ADE 004AE8 004B3B 004B4A 004B5F 004B6B 004B76 004BA2 
ram_00AE                                = $00AE ; 00002A 0048EB 004AB3 004ACC 004AE2 004AEC 004B3F 004B4E 004B63 004B68 004B7A 004BA6 



; 
ram_00AF                                = $00AF ; 00002A 0048EB 004A96 004A9C 004AAF 004AC8 004ADE 004AE8 004B3B 004B4A 004B5F 004B6B 004B76 004BA2 
ram_00B0                                = $00B0 ; 00002A 0048EB 004AB3 004ACC 004AE2 004AEC 004B3F 004B4E 004B63 004B68 004B7A 004BA6 
ram_00B1                                = $00B1 ; 00002A 0048EB 004A96 004A9C 004AAF 004AC8 004ADE 004AE8 004B3B 004B4A 004B5F 004B6B 004B76 004BA2 
ram_00B2                                = $00B2 ; 00002A 0048EB 004AB3 004ACC 004AE2 004AEC 004B3F 004B4E 004B63 004B68 004B7A 004BA6 
ram_00B3                                = $00B3 ; 00002A 0048EB 004A96 004A9C 004AAF 004AC8 004ADE 004AE8 004B3B 004B4A 004BA2 
ram_00B4                                = $00B4 ; 00002A 0048EB 004AB3 004ACC 004AE2 004AEC 004B3F 004B4E 004BA6 
ram_00B5                                = $00B5 ; 00002A 00490B 00498F 004997 004A07 
ram_00B6                                = $00B6 ; 00002A 00490D 00498F 004997 004A07 
ram_00B7                                = $00B7 ; 00002A 00490F 00498F 004997 004A07 
ram_00B8                                = $00B8 ; 00002A 004911 00498F 004997 004A07 004A1F 
ram_00B9                                = $00B9 ; 00002A 004903 00492B 004A09 004A91 
ram_00BA                                = $00BA ; 00002A 004905 00492B 004A09 004A91 
ram_00BB                                = $00BB ; 00002A 004907 00492B 004A09 004A91 
ram_00BC                                = $00BC ; 00002A 004909 00492B 004A09 004A21 004A91 
ram_00BD                                = $00BD ; 00002A 004AF6 004B2C 
ram_00BE                                = $00BE ; 00002A 004AF6 004B2C 
ram_00BF                                = $00BF ; 00002A 004AF6 004B2C 
ram_00C0                                = $00C0 ; 00002A 
ram_00C1                                = $00C1 ; 00002A 004AB1 004AE6 
ram_00C2                                = $00C2 ; 00002A 004AB5 004AEA 
ram_00C3                                = $00C3 ; 00002A 004AB1 004AE6 
ram_00C4                                = $00C4 ; 00002A 004AB5 004AEA 
ram_00C5                                = $00C5 ; 00002A 004AB1 004AE6 
ram_00C6                                = $00C6 ; 00002A 004AB5 004AEA 
ram_00C7                                = $00C7 ; 00002A 004AB1 004AE6 
ram_00C8                                = $00C8 ; 00002A 004AB5 004AEA 
ram_00C9                                = $00C9 ; 00002A 004AC6 004AE0 
ram_00CA                                = $00CA ; 00002A 004ACA 004AE4 
ram_00CB                                = $00CB ; 00002A 004AC6 004AE0 
ram_00CC                                = $00CC ; 00002A 004ACA 004AE4 
ram_00CD                                = $00CD ; 00002A 004AC6 004AE0 
ram_00CE                                = $00CE ; 00002A 004ACA 004AE4 
ram_00CF                                = $00CF ; 00002A 004AC6 004AE0 
ram_00D0                                = $00D0 ; 00002A 004ACA 004AE4 
ram_00D1                                = $00D1 ; 00002A 004AA6 004AD5 
ram_00D2                                = $00D2 ; 00002A 004AA6 004AD5 
ram_00D3                                = $00D3 ; 00002A 004AA6 004AD5 
ram_00D4                                = $00D4 ; 00002A 004AA6 004AD5 
ram_00D5                                = $00D5 ; 00002A 004AAA 004ABF 004AD3 004AD9 
ram_00D6                                = $00D6 ; 00002A 004AAA 004ABF 004AD3 004AD9 
ram_00D7                                = $00D7 ; 00002A 004AAA 004ABF 004AD3 004AD9 
ram_00D8                                = $00D8 ; 00002A 004AAA 004ABF 004AD3 004AD9 
ram_00D9                                = $00D9 ; 00002A 0048ED 004B3D 004B48 
ram_00DA                                = $00DA ; 00002A 0048ED 004B41 004B4C 
ram_00DB                                = $00DB ; 00002A 0048ED 004B3D 004B48 
ram_00DC                                = $00DC ; 00002A 0048ED 004B41 004B4C 
ram_00DD                                = $00DD ; 00002A 0048ED 004B3D 004B48 
ram_00DE                                = $00DE ; 00002A 0048ED 004B41 004B4C 
ram_00DF                                = $00DF ; 00002A 0048ED 004B3D 004B48 
ram_00E0                                = $00E0 ; 00002A 0048ED 004B41 004B4C 
ram_00E1                                = $00E1 ; 00002A 004B61 004B74 
ram_00E2                                = $00E2 ; 00002A 004B65 004B78 
ram_00E3                                = $00E3 ; 00002A 004B61 004B74 
ram_00E4                                = $00E4 ; 00002A 004B65 004B78 
ram_00E5                                = $00E5 ; 00002A 004B61 004B74 
ram_00E6                                = $00E6 ; 00002A 004B65 004B78 
ram_00E7                                = $00E7 ; 00002A 
ram_00E8                                = $00E8 ; 00002A 
ram_00E9                                = $00E9 ; 00002A 0048F4 004A57 004B84 004B8C 
ram_00EA                                = $00EA ; 00002A 0048F6 004A57 004B84 004B8E 
ram_00EB                                = $00EB ; 00002A 0048F8 004A57 004B84 004B90 
ram_00EC                                = $00EC ; 00002A 0048FA 004991 004AFA 004B02 004B28 
ram_00ED                                = $00ED ; 00002A 0048FC 004991 004AFA 004B02 004B28 
ram_00EE                                = $00EE ; 00002A 0048FE 004991 004AFA 004B02 
ram_00EF                                = $00EF ; 00002A 004991 
ram_00F0                                = $00F0 ; 00002A 00491D 0049A1 0049A7 0049AB 0049B6 0049B8 0049D2 004A47 004B18 004B20 004B26 
ram_00F1                                = $00F1 ; 00002A 00491F 0049A1 0049A7 0049AB 0049B6 0049B8 0049D2 004A47 004B18 004B20 004B26 
ram_00F2                                = $00F2 ; 00002A 004921 004A00 004A47 
ram_00F3                                = $00F3 ; 00002A 0049A1 0049A7 0049AB 0049B6 0049B8 0049D2 
ram_00F4                                = $00F4 ; 00002A 004915 0049D0 0049D8 0049F0 004A87 
ram_00F5                                = $00F5 ; 00002A 004917 0049D0 0049D8 0049F0 004A87 
ram_00F6                                = $00F6 ; 00002A 004919 0049F0 004A87 
ram_00F7                                = $00F7 ; 00002A 0049D0 0049F0 
ram_00F8                                = $00F8 ; 00002A 004A1D 004A29 
ram_00F9                                = $00F9 ; 00002A 004900 004945 004A16 004A23 



; 00-03
ram_sound_channel_id                    = $00FA ; 00002A 004927 004929 004932 00493F 004989 004995 00499B 004A05 004A83 004A8D 004AA4 004ABD 004AD1 004AF4 004AFE 004B0A 004B37 004B44 004B5B 004B70 004B82 004B95 004B9C 



; 
ram_00FB                                = $00FB ; 00002A 004925 004936 004A9E 
ram_00FC                                = $00FC ; 00002A 00494F 004960 00498B 004999 0049AD 0049BA 0049C0 0049C4 0049F5 0049FA 004A51 004A69 004A6F 004A7A 004A85 004B10 004B16 004B1E 004B24 



; free addresses
 ; ram_00FD                              = $00FD ; 00002A 
 ; ram_00FE                              = $00FE ; 00002A 
 ; ram_00FF                              = $00FF ; 00002A 



; 0100-01FF (100) stack
; 0100-013F (40) is reserved for an actual stack
; ram_0100                              = $0100 ; 
; ram_0101                              = $0101 ; 
; ram_0102                              = $0102 ; 
; ram_0103                              = $0103 ; 
; ram_0104                              = $0104 ; 
; ram_0105                              = $0105 ; 
; ram_0106                              = $0106 ; 
; ram_0107                              = $0107 ; 
; ram_0108                              = $0108 ; 
; ram_0109                              = $0109 ; 
; ram_010A                              = $010A ; 
; ram_010B                              = $010B ; 
; ram_010C                              = $010C ; 
; ram_010D                              = $010D ; 
; ram_010E                              = $010E ; 
; ram_010F                              = $010F ; 
; ram_0110                              = $0110 ; 
; ram_0111                              = $0111 ; 
; ram_0112                              = $0112 ; 
; ram_0113                              = $0113 ; 
; ram_0114                              = $0114 ; 
; ram_0115                              = $0115 ; 
; ram_0116                              = $0116 ; 
; ram_0117                              = $0117 ; 
; ram_0118                              = $0118 ; 
; ram_0119                              = $0119 ; 
; ram_011A                              = $011A ; 
; ram_011B                              = $011B ; 
; ram_011C                              = $011C ; 
; ram_011D                              = $011D ; 
; ram_011E                              = $011E ; 
; ram_011F                              = $011F ; 
; ram_0120                              = $0120 ; 
; ram_0121                              = $0121 ; 
; ram_0122                              = $0122 ; 
; ram_0123                              = $0123 ; 
; ram_0124                              = $0124 ; 
; ram_0125                              = $0125 ; 
; ram_0126                              = $0126 ; 
; ram_0127                              = $0127 ; 
; ram_0128                              = $0128 ; 
; ram_0129                              = $0129 ; 
; ram_012A                              = $012A ; 
; ram_012B                              = $012B ; 
; ram_012C                              = $012C ; 
; ram_012D                              = $012D ; 
; ram_012E                              = $012E ; 
; ram_012F                              = $012F ; 
; ram_0130                              = $0130 ; 
; ram_0131                              = $0131 ; 
; ram_0132                              = $0132 ; 
; ram_0133                              = $0133 ; 
; ram_0134                              = $0134 ; 
; ram_0135                              = $0135 ; 
; ram_0136                              = $0136 ; 
; ram_0137                              = $0137 ; 
; ram_0138                              = $0138 ; 
; ram_0139                              = $0139 ; 
; ram_013A                              = $013A ; 
; ram_013B                              = $013B ; 
; ram_013C                              = $013C ; 
; ram_013D                              = $013D ; 
; ram_013E                              = $013E ; 
; ram_013F                              = $013F ; 



; 0140-015F (20) buffer for colors
; cleared at 0x000047
ram_palette_buffer                      = $0140 ; 000047 002E71 003814 003ABD 003C1A 
; ram_0141                              = $0141 ; 000047 003814 003ABD 003C21 003F9E 
; ram_0142                              = $0142 ; 000047 003814 003ABD 003C21 003F9E 
; ram_0143                              = $0143 ; 000047 003814 003ABD 003C21 003F9E 
; ram_0144                              = $0144 ; 000047 002E71 003814 003ABD 003C1A 
; ram_0145                              = $0145 ; 000047 003814 003ABD 003C21 
; ram_0146                              = $0146 ; 000047 003814 003ABD 003C21 
; ram_0147                              = $0147 ; 000047 003814 003ABD 003C21 
; ram_0148                              = $0148 ; 000047 002E71 003814 003ABD 003C1A 
; ram_0149                              = $0149 ; 000047 001B6B 003814 003A57 003ABD 003C21 
; ram_014A                              = $014A ; 000047 001B6E 003814 003A57 003ABD 003C21 
; ram_014B                              = $014B ; 000047 001B71 003814 003A57 003ABD 003C21 
; ram_014C                              = $014C ; 000047 002E71 003814 003ABD 003C1A 
; ram_014D                              = $014D ; 000047 003814 003A62 003ABD 003C21 003F9E 
; ram_014E                              = $014E ; 000047 003814 003A62 003ABD 003C21 003F9E 
; ram_014F                              = $014F ; 000047 003814 003A62 003ABD 003C21 003F9E 
; ram_0150                              = $0150 ; 000047 002E71 003814 003ABD 
; ram_0151                              = $0151 ; 000047 003814 003ABD 
; ram_0152                              = $0152 ; 000047 003814 003ABD 
; ram_0153                              = $0153 ; 000047 003814 003ABD 
; ram_0154                              = $0154 ; 000047 002E71 003814 003ABD 
; ram_0155                              = $0155 ; 000047 003814 003ABD 
; ram_0156                              = $0156 ; 000047 003814 003ABD 
; ram_0157                              = $0157 ; 000047 003814 003ABD 
; ram_0158                              = $0158 ; 000047 002E71 003814 003ABD 
; ram_0159                              = $0159 ; 000047 003814 003ABD 
; ram_015A                              = $015A ; 000047 003814 003ABD 
; ram_015B                              = $015B ; 000047 003814 003ABD 
; ram_015C                              = $015C ; 000047 002E71 003814 003ABD 
; ram_015D                              = $015D ; 000047 001BD9 003814 003ABD 
; ram_015E                              = $015E ; 000047 001BDC 003814 003ABD 
; ram_015F                              = $015F ; 000047 001BDF 003814 003ABD 



; 0160-01DF (80) nametable attributes
; cleared at 0x000047
ram_nmt_attr_buffer                     = $0160 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0161                              = $0161 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0162                              = $0162 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0163                              = $0163 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0164                              = $0164 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0165                              = $0165 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0166                              = $0166 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0167                              = $0167 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0168                              = $0168 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0169                              = $0169 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_016A                              = $016A ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_016B                              = $016B ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_016C                              = $016C ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_016D                              = $016D ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_016E                              = $016E ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_016F                              = $016F ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0170                              = $0170 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0171                              = $0171 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0172                              = $0172 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0173                              = $0173 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0174                              = $0174 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0175                              = $0175 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0176                              = $0176 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0177                              = $0177 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0178                              = $0178 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0179                              = $0179 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_017A                              = $017A ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_017B                              = $017B ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_017C                              = $017C ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_017D                              = $017D ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_017E                              = $017E ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_017F                              = $017F ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0180                              = $0180 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0181                              = $0181 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0182                              = $0182 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0183                              = $0183 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0184                              = $0184 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0185                              = $0185 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0186                              = $0186 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0187                              = $0187 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0188                              = $0188 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0189                              = $0189 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_018A                              = $018A ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_018B                              = $018B ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_018C                              = $018C ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_018D                              = $018D ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_018E                              = $018E ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_018F                              = $018F ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0190                              = $0190 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0191                              = $0191 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0192                              = $0192 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0193                              = $0193 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0194                              = $0194 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0195                              = $0195 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0196                              = $0196 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0197                              = $0197 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0198                              = $0198 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_0199                              = $0199 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_019A                              = $019A ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_019B                              = $019B ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_019C                              = $019C ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_019D                              = $019D ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_019E                              = $019E ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_019F                              = $019F ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01A0                              = $01A0 ; 000047 0003F9 0004AD 002C4E 0034BC 0036CB 003FE4 003FEC 
; ram_01A1                              = $01A1 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01A2                              = $01A2 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01A3                              = $01A3 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01A4                              = $01A4 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01A5                              = $01A5 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01A6                              = $01A6 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01A7                              = $01A7 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01A8                              = $01A8 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01A9                              = $01A9 ; 000047 00153B 0034BC 0036CB 003FE4 003FEC 004058 00413A 
; ram_01AA                              = $01AA ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01AB                              = $01AB ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01AC                              = $01AC ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01AD                              = $01AD ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01AE                              = $01AE ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01AF                              = $01AF ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01B0                              = $01B0 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01B1                              = $01B1 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01B2                              = $01B2 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01B3                              = $01B3 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01B4                              = $01B4 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01B5                              = $01B5 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01B6                              = $01B6 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01B7                              = $01B7 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01B8                              = $01B8 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01B9                              = $01B9 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01BA                              = $01BA ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01BB                              = $01BB ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01BC                              = $01BC ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01BD                              = $01BD ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01BE                              = $01BE ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01BF                              = $01BF ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01C0                              = $01C0 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01C1                              = $01C1 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01C2                              = $01C2 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01C3                              = $01C3 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01C4                              = $01C4 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01C5                              = $01C5 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01C6                              = $01C6 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01C7                              = $01C7 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01C8                              = $01C8 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01C9                              = $01C9 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01CA                              = $01CA ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01CB                              = $01CB ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01CC                              = $01CC ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01CD                              = $01CD ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01CE                              = $01CE ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01CF                              = $01CF ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01D0                              = $01D0 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01D1                              = $01D1 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01D2                              = $01D2 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01D3                              = $01D3 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01D4                              = $01D4 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01D5                              = $01D5 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01D6                              = $01D6 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01D7                              = $01D7 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01D8                              = $01D8 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01D9                              = $01D9 ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01DA                              = $01DA ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01DB                              = $01DB ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01DC                              = $01DC ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01DD                              = $01DD ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01DE                              = $01DE ; 000047 0034BC 0036CB 003FE4 003FEC 
; ram_01DF                              = $01DF ; 000047 0034BC 0036CB 003FE4 003FEC 



; 01E0-02DF (100) 
ram_01E0_data                           = $01E0 ; 000047 0033D0 003613 
; ram_01E1                              = $01E1 ; 000047 0033D0 003613 
; ram_01E2                              = $01E2 ; 000047 0033D0 003613 
; ram_01E3                              = $01E3 ; 000047 0033D0 003613 
; ram_01E4                              = $01E4 ; 000047 0033D0 003613 
; ram_01E5                              = $01E5 ; 000047 0033D0 003613 
; ram_01E6                              = $01E6 ; 000047 0033D0 003613 
; ram_01E7                              = $01E7 ; 000047 0033D0 003613 
; ram_01E8                              = $01E8 ; 000047 0033D0 003613 
; ram_01E9                              = $01E9 ; 000047 0033D0 003613 
; ram_01EA                              = $01EA ; 000047 0033D0 003613 
; ram_01EB                              = $01EB ; 000047 0033D0 003613 
; ram_01EC                              = $01EC ; 000047 0033D0 003613 
; ram_01ED                              = $01ED ; 000047 0033D0 003613 
; ram_01EE                              = $01EE ; 000047 0033D0 003613 
; ram_01EF                              = $01EF ; 000047 0033D0 003613 
; ram_01F0                              = $01F0 ; 000047 0033D0 003613 
; ram_01F1                              = $01F1 ; 000047 0033D0 003613 
; ram_01F2                              = $01F2 ; 000047 0033D0 003613 
; ram_01F3                              = $01F3 ; 000047 0033D0 003613 
; ram_01F4                              = $01F4 ; 000047 0033D0 003613 
; ram_01F5                              = $01F5 ; 000047 0033D0 003613 
; ram_01F6                              = $01F6 ; 000047 0033D0 003613 
; ram_01F7                              = $01F7 ; 000047 0033D0 003613 
; ram_01F8                              = $01F8 ; 000047 0033D0 003613 
; ram_01F9                              = $01F9 ; 000047 0033D0 003613 
; ram_01FA                              = $01FA ; 000047 0033D0 003613 
; ram_01FB                              = $01FB ; 000047 0033D0 003613 
; ram_01FC                              = $01FC ; 000047 0033D0 003613 
; ram_01FD                              = $01FD ; 000047 0033D0 003613 
; ram_01FE                              = $01FE ; 000047 0033D0 003613 
; ram_01FF                              = $01FF ; 000047 0033D0 003613 
; ram_0200                              = $0200 ; 000033 0033D0 003613 
; ram_0201                              = $0201 ; 000033 0033D0 003613 
; ram_0202                              = $0202 ; 000033 0033D0 003613 
; ram_0203                              = $0203 ; 000033 0033D0 003613 
; ram_0204                              = $0204 ; 000033 0033D0 003613 
; ram_0205                              = $0205 ; 000033 0033D0 003613 
; ram_0206                              = $0206 ; 000033 0033D0 003613 
; ram_0207                              = $0207 ; 000033 0033D0 003613 
; ram_0208                              = $0208 ; 000033 0033D0 003613 
; ram_0209                              = $0209 ; 000033 0033D0 003613 
; ram_020A                              = $020A ; 000033 0033D0 003613 
; ram_020B                              = $020B ; 000033 0033D0 003613 
; ram_020C                              = $020C ; 000033 0033D0 003613 
; ram_020D                              = $020D ; 000033 0033D0 003613 
; ram_020E                              = $020E ; 000033 0033D0 003613 
; ram_020F                              = $020F ; 000033 0033D0 003613 
; ram_0210                              = $0210 ; 000033 0033D0 003613 
; ram_0211                              = $0211 ; 000033 0033D0 003613 
; ram_0212                              = $0212 ; 000033 0033D0 003613 
; ram_0213                              = $0213 ; 000033 0033D0 003613 
; ram_0214                              = $0214 ; 000033 0033D0 003613 
; ram_0215                              = $0215 ; 000033 0033D0 003613 
; ram_0216                              = $0216 ; 000033 0033D0 003613 
; ram_0217                              = $0217 ; 000033 0033D0 003613 
; ram_0218                              = $0218 ; 000033 0033D0 003613 
; ram_0219                              = $0219 ; 000033 0033D0 003613 
; ram_021A                              = $021A ; 000033 0033D0 003613 
; ram_021B                              = $021B ; 000033 0033D0 003613 
; ram_021C                              = $021C ; 000033 0033D0 003613 
; ram_021D                              = $021D ; 000033 0033D0 003613 
; ram_021E                              = $021E ; 000033 0033D0 003613 
; ram_021F                              = $021F ; 000033 0033D0 003613 
; ram_0220                              = $0220 ; 000033 0033D0 003613 
; ram_0221                              = $0221 ; 000033 0033D0 003613 
; ram_0222                              = $0222 ; 000033 0033D0 003613 
; ram_0223                              = $0223 ; 000033 0033D0 003613 
; ram_0224                              = $0224 ; 000033 0033D0 003613 
; ram_0225                              = $0225 ; 000033 0033D0 003613 
; ram_0226                              = $0226 ; 000033 0033D0 003613 
; ram_0227                              = $0227 ; 000033 0033D0 003613 
; ram_0228                              = $0228 ; 000033 0033D0 003613 
; ram_0229                              = $0229 ; 000033 0033D0 003613 
; ram_022A                              = $022A ; 000033 0033D0 003613 
; ram_022B                              = $022B ; 000033 0033D0 003613 
; ram_022C                              = $022C ; 000033 0033D0 003613 
; ram_022D                              = $022D ; 000033 0033D0 003613 
; ram_022E                              = $022E ; 000033 0033D0 003613 
; ram_022F                              = $022F ; 000033 0033D0 003613 
; ram_0230                              = $0230 ; 000033 0033D0 003613 
; ram_0231                              = $0231 ; 000033 0033D0 003613 
; ram_0232                              = $0232 ; 000033 0033D0 003613 
; ram_0233                              = $0233 ; 000033 0033D0 003613 
; ram_0234                              = $0234 ; 000033 0033D0 003613 
; ram_0235                              = $0235 ; 000033 0033D0 003613 
; ram_0236                              = $0236 ; 000033 0033D0 003613 
; ram_0237                              = $0237 ; 000033 0033D0 003613 
; ram_0238                              = $0238 ; 000033 0033D0 003613 
; ram_0239                              = $0239 ; 000033 0033D0 003613 
; ram_023A                              = $023A ; 000033 0033D0 003613 
; ram_023B                              = $023B ; 000033 0033D0 003613 
; ram_023C                              = $023C ; 000033 0033D0 003613 
; ram_023D                              = $023D ; 000033 0033D0 003613 
; ram_023E                              = $023E ; 000033 0033D0 003613 
; ram_023F                              = $023F ; 000033 0033D0 003613 
; ram_0240                              = $0240 ; 000033 0033D0 003613 
; ram_0241                              = $0241 ; 000033 0033D0 003613 
; ram_0242                              = $0242 ; 000033 0033D0 003613 
; ram_0243                              = $0243 ; 000033 0033D0 003613 
; ram_0244                              = $0244 ; 000033 0033D0 003613 
; ram_0245                              = $0245 ; 000033 0033D0 003613 
; ram_0246                              = $0246 ; 000033 0033D0 003613 
; ram_0247                              = $0247 ; 000033 0033D0 003613 
; ram_0248                              = $0248 ; 000033 0033D0 003613 
; ram_0249                              = $0249 ; 000033 0033D0 003613 
; ram_024A                              = $024A ; 000033 0033D0 003613 
; ram_024B                              = $024B ; 000033 0033D0 003613 
; ram_024C                              = $024C ; 000033 0033D0 003613 
; ram_024D                              = $024D ; 000033 0033D0 003613 
; ram_024E                              = $024E ; 000033 0033D0 003613 
; ram_024F                              = $024F ; 000033 0033D0 003613 
; ram_0250                              = $0250 ; 000033 0033D0 003613 
; ram_0251                              = $0251 ; 000033 0033D0 003613 
; ram_0252                              = $0252 ; 000033 0033D0 003613 
; ram_0253                              = $0253 ; 000033 0033D0 003613 
; ram_0254                              = $0254 ; 000033 0033D0 003613 
; ram_0255                              = $0255 ; 000033 0033D0 003613 
; ram_0256                              = $0256 ; 000033 0033D0 003613 
; ram_0257                              = $0257 ; 000033 0033D0 003613 
; ram_0258                              = $0258 ; 000033 0033D0 003613 
; ram_0259                              = $0259 ; 000033 0033D0 003613 
; ram_025A                              = $025A ; 000033 0033D0 003613 
; ram_025B                              = $025B ; 000033 0033D0 003613 
; ram_025C                              = $025C ; 000033 0033D0 003613 
; ram_025D                              = $025D ; 000033 0033D0 003613 
; ram_025E                              = $025E ; 000033 0033D0 003613 
; ram_025F                              = $025F ; 000033 0033D0 003613 
; ram_0260                              = $0260 ; 000033 0033D0 003613 
; ram_0261                              = $0261 ; 000033 0033D0 003613 
; ram_0262                              = $0262 ; 000033 0033D0 003613 
; ram_0263                              = $0263 ; 000033 0033D0 003613 
; ram_0264                              = $0264 ; 000033 0033D0 003613 
; ram_0265                              = $0265 ; 000033 0033D0 003613 
; ram_0266                              = $0266 ; 000033 0033D0 003613 
; ram_0267                              = $0267 ; 000033 0033D0 003613 
; ram_0268                              = $0268 ; 000033 0033D0 003613 
; ram_0269                              = $0269 ; 000033 0033D0 003613 
; ram_026A                              = $026A ; 000033 0033D0 003613 
; ram_026B                              = $026B ; 000033 0033D0 003613 
; ram_026C                              = $026C ; 000033 0033D0 003613 
; ram_026D                              = $026D ; 000033 0033D0 003613 
; ram_026E                              = $026E ; 000033 0033D0 003613 
; ram_026F                              = $026F ; 000033 0033D0 003613 
; ram_0270                              = $0270 ; 000033 0033D0 003613 
; ram_0271                              = $0271 ; 000033 0033D0 003613 
; ram_0272                              = $0272 ; 000033 0033D0 003613 
; ram_0273                              = $0273 ; 000033 0033D0 003613 
; ram_0274                              = $0274 ; 000033 0033D0 003613 
; ram_0275                              = $0275 ; 000033 0033D0 003613 
; ram_0276                              = $0276 ; 000033 0033D0 003613 
; ram_0277                              = $0277 ; 000033 0033D0 003613 
; ram_0278                              = $0278 ; 000033 0033D0 003613 
; ram_0279                              = $0279 ; 000033 0033D0 003613 
; ram_027A                              = $027A ; 000033 0033D0 003613 
; ram_027B                              = $027B ; 000033 0033D0 003613 
; ram_027C                              = $027C ; 000033 0033D0 003613 
; ram_027D                              = $027D ; 000033 0033D0 003613 
; ram_027E                              = $027E ; 000033 0033D0 003613 
; ram_027F                              = $027F ; 000033 0033D0 003613 
; ram_0280                              = $0280 ; 000033 0033D0 003613 
; ram_0281                              = $0281 ; 000033 0033D0 003613 
; ram_0282                              = $0282 ; 000033 0033D0 003613 
; ram_0283                              = $0283 ; 000033 0033D0 003613 
; ram_0284                              = $0284 ; 000033 0033D0 003613 
; ram_0285                              = $0285 ; 000033 0033D0 003613 
; ram_0286                              = $0286 ; 000033 0033D0 003613 
; ram_0287                              = $0287 ; 000033 0033D0 003613 
; ram_0288                              = $0288 ; 000033 0033D0 003613 
; ram_0289                              = $0289 ; 000033 0033D0 003613 
; ram_028A                              = $028A ; 000033 0033D0 003613 
; ram_028B                              = $028B ; 000033 0033D0 003613 
; ram_028C                              = $028C ; 000033 0033D0 003613 
; ram_028D                              = $028D ; 000033 0033D0 003613 
; ram_028E                              = $028E ; 000033 0033D0 003613 
; ram_028F                              = $028F ; 000033 0033D0 003613 
; ram_0290                              = $0290 ; 000033 0033D0 003613 
; ram_0291                              = $0291 ; 000033 0033D0 003613 
; ram_0292                              = $0292 ; 000033 0033D0 003613 
; ram_0293                              = $0293 ; 000033 0033D0 003613 
; ram_0294                              = $0294 ; 000033 0033D0 003613 
; ram_0295                              = $0295 ; 000033 0033D0 003613 
; ram_0296                              = $0296 ; 000033 0033D0 003613 
; ram_0297                              = $0297 ; 000033 0033D0 003613 
; ram_0298                              = $0298 ; 000033 0033D0 003613 
; ram_0299                              = $0299 ; 000033 0033D0 003613 
; ram_029A                              = $029A ; 000033 0033D0 003613 
; ram_029B                              = $029B ; 000033 0033D0 003613 
; ram_029C                              = $029C ; 000033 0033D0 003613 
; ram_029D                              = $029D ; 000033 0033D0 003613 
; ram_029E                              = $029E ; 000033 0033D0 003613 
; ram_029F                              = $029F ; 000033 0033D0 003613 
; ram_02A0                              = $02A0 ; 000033 0003F6 0004AA 001219 0033D0 003613 
; ram_02A1                              = $02A1 ; 000033 0033D0 003613 
; ram_02A2                              = $02A2 ; 000033 0033D0 003613 
; ram_02A3                              = $02A3 ; 000033 0033D0 003613 
; ram_02A4                              = $02A4 ; 000033 0033D0 003613 
; ram_02A5                              = $02A5 ; 000033 0033D0 003613 
; ram_02A6                              = $02A6 ; 000033 0033D0 003613 
; ram_02A7                              = $02A7 ; 000033 0033D0 003613 
; ram_02A8                              = $02A8 ; 000033 0033D0 003613 
; ram_02A9                              = $02A9 ; 000033 001538 002B36 0033D0 003613 
; ram_02AA                              = $02AA ; 000033 0033D0 003613 
; ram_02AB                              = $02AB ; 000033 0033D0 003613 
; ram_02AC                              = $02AC ; 000033 0033D0 003613 
; ram_02AD                              = $02AD ; 000033 0033D0 003613 
; ram_02AE                              = $02AE ; 000033 0033D0 003613 
; ram_02AF                              = $02AF ; 000033 0033D0 003613 
; ram_02B0                              = $02B0 ; 000033 0033D0 003613 
; ram_02B1                              = $02B1 ; 000033 0033D0 003613 
; ram_02B2                              = $02B2 ; 000033 0033D0 003613 
; ram_02B3                              = $02B3 ; 000033 0033D0 003613 
; ram_02B4                              = $02B4 ; 000033 0033D0 003613 
; ram_02B5                              = $02B5 ; 000033 0033D0 003613 
; ram_02B6                              = $02B6 ; 000033 0033D0 003613 
; ram_02B7                              = $02B7 ; 000033 0033D0 003613 
; ram_02B8                              = $02B8 ; 000033 0033D0 003613 
; ram_02B9                              = $02B9 ; 000033 0033D0 003613 
; ram_02BA                              = $02BA ; 000033 0033D0 003613 
; ram_02BB                              = $02BB ; 000033 0033D0 003613 
; ram_02BC                              = $02BC ; 000033 0033D0 003613 
; ram_02BD                              = $02BD ; 000033 0033D0 003613 
; ram_02BE                              = $02BE ; 000033 0033D0 003613 
; ram_02BF                              = $02BF ; 000033 0033D0 003613 
; ram_02C0                              = $02C0 ; 000033 0033D0 003613 
; ram_02C1                              = $02C1 ; 000033 0033D0 003613 
; ram_02C2                              = $02C2 ; 000033 0033D0 003613 
; ram_02C3                              = $02C3 ; 000033 0033D0 003613 
; ram_02C4                              = $02C4 ; 000033 0033D0 003613 
; ram_02C5                              = $02C5 ; 000033 0033D0 003613 
; ram_02C6                              = $02C6 ; 000033 0033D0 003613 
; ram_02C7                              = $02C7 ; 000033 0033D0 003613 
; ram_02C8                              = $02C8 ; 000033 0033D0 003613 
; ram_02C9                              = $02C9 ; 000033 0033D0 003613 
; ram_02CA                              = $02CA ; 000033 0033D0 003613 
; ram_02CB                              = $02CB ; 000033 0033D0 003613 
; ram_02CC                              = $02CC ; 000033 0033D0 003613 
; ram_02CD                              = $02CD ; 000033 0033D0 003613 
; ram_02CE                              = $02CE ; 000033 0033D0 003613 
; ram_02CF                              = $02CF ; 000033 0033D0 003613 
; ram_02D0                              = $02D0 ; 000033 0033D0 003613 
; ram_02D1                              = $02D1 ; 000033 0033D0 003613 
; ram_02D2                              = $02D2 ; 000033 0033D0 003613 
; ram_02D3                              = $02D3 ; 000033 0033D0 003613 
; ram_02D4                              = $02D4 ; 000033 0033D0 003613 
; ram_02D5                              = $02D5 ; 000033 0033D0 003613 
; ram_02D6                              = $02D6 ; 000033 0033D0 003613 
; ram_02D7                              = $02D7 ; 000033 0033D0 003613 
; ram_02D8                              = $02D8 ; 000033 0033D0 003613 
; ram_02D9                              = $02D9 ; 000033 0033D0 003613 
; ram_02DA                              = $02DA ; 000033 0033D0 003613 
; ram_02DB                              = $02DB ; 000033 0033D0 003613 
; ram_02DC                              = $02DC ; 000033 0033D0 003613 
; ram_02DD                              = $02DD ; 000033 0033D0 003613 
; ram_02DE                              = $02DE ; 000033 0033D0 003613 
; ram_02DF                              = $02DF ; 000033 0033D0 003613 



; 02E0-03DF (100) 
ram_02E0_data                           = $02E0 ; 000033 00340B 003613 
; ram_02E1                              = $02E1 ; 000033 00340B 003613 
; ram_02E2                              = $02E2 ; 000033 00340B 003613 
; ram_02E3                              = $02E3 ; 000033 00340B 003613 
; ram_02E4                              = $02E4 ; 000033 00340B 003613 
; ram_02E5                              = $02E5 ; 000033 00340B 003613 
; ram_02E6                              = $02E6 ; 000033 00340B 003613 
; ram_02E7                              = $02E7 ; 000033 00340B 003613 
; ram_02E8                              = $02E8 ; 000033 00340B 003613 
; ram_02E9                              = $02E9 ; 000033 00340B 003613 
; ram_02EA                              = $02EA ; 000033 00340B 003613 
; ram_02EB                              = $02EB ; 000033 00340B 003613 
; ram_02EC                              = $02EC ; 000033 00340B 003613 
; ram_02ED                              = $02ED ; 000033 00340B 003613 
; ram_02EE                              = $02EE ; 000033 00340B 003613 
; ram_02EF                              = $02EF ; 000033 00340B 003613 
; ram_02F0                              = $02F0 ; 000033 00340B 003613 
; ram_02F1                              = $02F1 ; 000033 00340B 003613 
; ram_02F2                              = $02F2 ; 000033 00340B 003613 
; ram_02F3                              = $02F3 ; 000033 00340B 003613 
; ram_02F4                              = $02F4 ; 000033 00340B 003613 
; ram_02F5                              = $02F5 ; 000033 00340B 003613 
; ram_02F6                              = $02F6 ; 000033 00340B 003613 
; ram_02F7                              = $02F7 ; 000033 00340B 003613 
; ram_02F8                              = $02F8 ; 000033 00340B 003613 
; ram_02F9                              = $02F9 ; 000033 00340B 003613 
; ram_02FA                              = $02FA ; 000033 00340B 003613 
; ram_02FB                              = $02FB ; 000033 00340B 003613 
; ram_02FC                              = $02FC ; 000033 00340B 003613 
; ram_02FD                              = $02FD ; 000033 00340B 003613 
; ram_02FE                              = $02FE ; 000033 00340B 003613 
; ram_02FF                              = $02FF ; 000033 00340B 003613 
; ram_0300                              = $0300 ; 000036 00340B 003613 
; ram_0301                              = $0301 ; 000036 00340B 003613 
; ram_0302                              = $0302 ; 000036 00340B 003613 
; ram_0303                              = $0303 ; 000036 00340B 003613 
; ram_0304                              = $0304 ; 000036 00340B 003613 
; ram_0305                              = $0305 ; 000036 00340B 003613 
; ram_0306                              = $0306 ; 000036 00340B 003613 
; ram_0307                              = $0307 ; 000036 00340B 003613 
; ram_0308                              = $0308 ; 000036 00340B 003613 
; ram_0309                              = $0309 ; 000036 00340B 003613 
; ram_030A                              = $030A ; 000036 00340B 003613 
; ram_030B                              = $030B ; 000036 00340B 003613 
; ram_030C                              = $030C ; 000036 00340B 003613 
; ram_030D                              = $030D ; 000036 00340B 003613 
; ram_030E                              = $030E ; 000036 00340B 003613 
; ram_030F                              = $030F ; 000036 00340B 003613 
; ram_0310                              = $0310 ; 000036 00340B 003613 
; ram_0311                              = $0311 ; 000036 00340B 003613 
; ram_0312                              = $0312 ; 000036 00340B 003613 
; ram_0313                              = $0313 ; 000036 00340B 003613 
; ram_0314                              = $0314 ; 000036 00340B 003613 
; ram_0315                              = $0315 ; 000036 00340B 003613 
; ram_0316                              = $0316 ; 000036 00340B 003613 
; ram_0317                              = $0317 ; 000036 00340B 003613 
; ram_0318                              = $0318 ; 000036 00340B 003613 
; ram_0319                              = $0319 ; 000036 00340B 003613 
; ram_031A                              = $031A ; 000036 00340B 003613 
; ram_031B                              = $031B ; 000036 00340B 003613 
; ram_031C                              = $031C ; 000036 00340B 003613 
; ram_031D                              = $031D ; 000036 00340B 003613 
; ram_031E                              = $031E ; 000036 00340B 003613 
; ram_031F                              = $031F ; 000036 00340B 003613 
; ram_0320                              = $0320 ; 000036 00340B 003613 
; ram_0321                              = $0321 ; 000036 00340B 003613 
; ram_0322                              = $0322 ; 000036 00340B 003613 
; ram_0323                              = $0323 ; 000036 00340B 003613 
; ram_0324                              = $0324 ; 000036 00340B 003613 
; ram_0325                              = $0325 ; 000036 00340B 003613 
; ram_0326                              = $0326 ; 000036 00340B 003613 
; ram_0327                              = $0327 ; 000036 00340B 003613 
; ram_0328                              = $0328 ; 000036 00340B 003613 
; ram_0329                              = $0329 ; 000036 00340B 003613 
; ram_032A                              = $032A ; 000036 00340B 003613 
; ram_032B                              = $032B ; 000036 00340B 003613 
; ram_032C                              = $032C ; 000036 00340B 003613 
; ram_032D                              = $032D ; 000036 00340B 003613 
; ram_032E                              = $032E ; 000036 00340B 003613 
; ram_032F                              = $032F ; 000036 00340B 003613 
; ram_0330                              = $0330 ; 000036 00340B 003613 
; ram_0331                              = $0331 ; 000036 00340B 003613 
; ram_0332                              = $0332 ; 000036 00340B 003613 
; ram_0333                              = $0333 ; 000036 00340B 003613 
; ram_0334                              = $0334 ; 000036 00340B 003613 
; ram_0335                              = $0335 ; 000036 00340B 003613 
; ram_0336                              = $0336 ; 000036 00340B 003613 
; ram_0337                              = $0337 ; 000036 00340B 003613 
; ram_0338                              = $0338 ; 000036 00340B 003613 
; ram_0339                              = $0339 ; 000036 00340B 003613 
; ram_033A                              = $033A ; 000036 00340B 003613 
; ram_033B                              = $033B ; 000036 00340B 003613 
; ram_033C                              = $033C ; 000036 00340B 003613 
; ram_033D                              = $033D ; 000036 00340B 003613 
; ram_033E                              = $033E ; 000036 00340B 003613 
; ram_033F                              = $033F ; 000036 00340B 003613 
; ram_0340                              = $0340 ; 000036 00340B 003613 
; ram_0341                              = $0341 ; 000036 00340B 003613 
; ram_0342                              = $0342 ; 000036 00340B 003613 
; ram_0343                              = $0343 ; 000036 00340B 003613 
; ram_0344                              = $0344 ; 000036 00340B 003613 
; ram_0345                              = $0345 ; 000036 00340B 003613 
; ram_0346                              = $0346 ; 000036 00340B 003613 
; ram_0347                              = $0347 ; 000036 00340B 003613 
; ram_0348                              = $0348 ; 000036 00340B 003613 
; ram_0349                              = $0349 ; 000036 00340B 003613 
; ram_034A                              = $034A ; 000036 00340B 003613 
; ram_034B                              = $034B ; 000036 00340B 003613 
; ram_034C                              = $034C ; 000036 00340B 003613 
; ram_034D                              = $034D ; 000036 00340B 003613 
; ram_034E                              = $034E ; 000036 00340B 003613 
; ram_034F                              = $034F ; 000036 00340B 003613 
; ram_0350                              = $0350 ; 000036 00340B 003613 
; ram_0351                              = $0351 ; 000036 00340B 003613 
; ram_0352                              = $0352 ; 000036 00340B 003613 
; ram_0353                              = $0353 ; 000036 00340B 003613 
; ram_0354                              = $0354 ; 000036 00340B 003613 
; ram_0355                              = $0355 ; 000036 00340B 003613 
; ram_0356                              = $0356 ; 000036 00340B 003613 
; ram_0357                              = $0357 ; 000036 00340B 003613 
; ram_0358                              = $0358 ; 000036 00340B 003613 
; ram_0359                              = $0359 ; 000036 00340B 003613 
; ram_035A                              = $035A ; 000036 00340B 003613 
; ram_035B                              = $035B ; 000036 00340B 003613 
; ram_035C                              = $035C ; 000036 00340B 003613 
; ram_035D                              = $035D ; 000036 00340B 003613 
; ram_035E                              = $035E ; 000036 00340B 003613 
; ram_035F                              = $035F ; 000036 00340B 003613 
; ram_0360                              = $0360 ; 000036 00340B 003613 
; ram_0361                              = $0361 ; 000036 00340B 003613 
; ram_0362                              = $0362 ; 000036 00340B 003613 
; ram_0363                              = $0363 ; 000036 00340B 003613 
; ram_0364                              = $0364 ; 000036 00340B 003613 
; ram_0365                              = $0365 ; 000036 00340B 003613 
; ram_0366                              = $0366 ; 000036 00340B 003613 
; ram_0367                              = $0367 ; 000036 00340B 003613 
; ram_0368                              = $0368 ; 000036 00340B 003613 
; ram_0369                              = $0369 ; 000036 00340B 003613 
; ram_036A                              = $036A ; 000036 00340B 003613 
; ram_036B                              = $036B ; 000036 00340B 003613 
; ram_036C                              = $036C ; 000036 00340B 003613 
; ram_036D                              = $036D ; 000036 00340B 003613 
; ram_036E                              = $036E ; 000036 00340B 003613 
; ram_036F                              = $036F ; 000036 00340B 003613 
; ram_0370                              = $0370 ; 000036 00340B 003613 
; ram_0371                              = $0371 ; 000036 00340B 003613 
; ram_0372                              = $0372 ; 000036 00340B 003613 
; ram_0373                              = $0373 ; 000036 00340B 003613 
; ram_0374                              = $0374 ; 000036 00340B 003613 
; ram_0375                              = $0375 ; 000036 00340B 003613 
; ram_0376                              = $0376 ; 000036 00340B 003613 
; ram_0377                              = $0377 ; 000036 00340B 003613 
; ram_0378                              = $0378 ; 000036 00340B 003613 
; ram_0379                              = $0379 ; 000036 00340B 003613 
; ram_037A                              = $037A ; 000036 00340B 003613 
; ram_037B                              = $037B ; 000036 00340B 003613 
; ram_037C                              = $037C ; 000036 00340B 003613 
; ram_037D                              = $037D ; 000036 00340B 003613 
; ram_037E                              = $037E ; 000036 00340B 003613 
; ram_037F                              = $037F ; 000036 00340B 003613 
; ram_0380                              = $0380 ; 000036 00340B 003613 
; ram_0381                              = $0381 ; 000036 00340B 003613 
; ram_0382                              = $0382 ; 000036 00340B 003613 
; ram_0383                              = $0383 ; 000036 00340B 003613 
; ram_0384                              = $0384 ; 000036 00340B 003613 
; ram_0385                              = $0385 ; 000036 00340B 003613 
; ram_0386                              = $0386 ; 000036 00340B 003613 
; ram_0387                              = $0387 ; 000036 00340B 003613 
; ram_0388                              = $0388 ; 000036 00340B 003613 
; ram_0389                              = $0389 ; 000036 00340B 003613 
; ram_038A                              = $038A ; 000036 00340B 003613 
; ram_038B                              = $038B ; 000036 00340B 003613 
; ram_038C                              = $038C ; 000036 00340B 003613 
; ram_038D                              = $038D ; 000036 00340B 003613 
; ram_038E                              = $038E ; 000036 00340B 003613 
; ram_038F                              = $038F ; 000036 00340B 003613 
; ram_0390                              = $0390 ; 000036 00340B 003613 
; ram_0391                              = $0391 ; 000036 00340B 003613 
; ram_0392                              = $0392 ; 000036 00340B 003613 
; ram_0393                              = $0393 ; 000036 00340B 003613 
; ram_0394                              = $0394 ; 000036 00340B 003613 
; ram_0395                              = $0395 ; 000036 00340B 003613 
; ram_0396                              = $0396 ; 000036 00340B 003613 
; ram_0397                              = $0397 ; 000036 00340B 003613 
; ram_0398                              = $0398 ; 000036 00340B 003613 
; ram_0399                              = $0399 ; 000036 00340B 003613 
; ram_039A                              = $039A ; 000036 00340B 003613 
; ram_039B                              = $039B ; 000036 00340B 003613 
; ram_039C                              = $039C ; 000036 00340B 003613 
; ram_039D                              = $039D ; 000036 00340B 003613 
; ram_039E                              = $039E ; 000036 00340B 003613 
; ram_039F                              = $039F ; 000036 00340B 003613 
; ram_03A0                              = $03A0 ; 000036 0003F3 0004A7 00121C 00340B 003613 
; ram_03A1                              = $03A1 ; 000036 00340B 003613 
; ram_03A2                              = $03A2 ; 000036 00340B 003613 
; ram_03A3                              = $03A3 ; 000036 00340B 003613 
; ram_03A4                              = $03A4 ; 000036 00340B 003613 
; ram_03A5                              = $03A5 ; 000036 00340B 003613 
; ram_03A6                              = $03A6 ; 000036 00340B 003613 
; ram_03A7                              = $03A7 ; 000036 00340B 003613 
; ram_03A8                              = $03A8 ; 000036 00340B 003613 
; ram_03A9                              = $03A9 ; 000036 001257 001535 002940 002B39 00340B 003613 
; ram_03AA                              = $03AA ; 000036 00340B 003613 
; ram_03AB                              = $03AB ; 000036 00340B 003613 
; ram_03AC                              = $03AC ; 000036 00340B 003613 
; ram_03AD                              = $03AD ; 000036 00340B 003613 
; ram_03AE                              = $03AE ; 000036 00340B 003613 
; ram_03AF                              = $03AF ; 000036 00340B 003613 
; ram_03B0                              = $03B0 ; 000036 00340B 003613 
; ram_03B1                              = $03B1 ; 000036 00340B 003613 
; ram_03B2                              = $03B2 ; 000036 00340B 003613 
; ram_03B3                              = $03B3 ; 000036 00340B 003613 
; ram_03B4                              = $03B4 ; 000036 00340B 003613 
; ram_03B5                              = $03B5 ; 000036 00340B 003613 
; ram_03B6                              = $03B6 ; 000036 00340B 003613 
; ram_03B7                              = $03B7 ; 000036 00340B 003613 
; ram_03B8                              = $03B8 ; 000036 00340B 003613 
; ram_03B9                              = $03B9 ; 000036 00340B 003613 
; ram_03BA                              = $03BA ; 000036 00340B 003613 
; ram_03BB                              = $03BB ; 000036 00340B 003613 
; ram_03BC                              = $03BC ; 000036 00340B 003613 
; ram_03BD                              = $03BD ; 000036 00340B 003613 
; ram_03BE                              = $03BE ; 000036 00340B 003613 
; ram_03BF                              = $03BF ; 000036 00340B 003613 
; ram_03C0                              = $03C0 ; 000036 00340B 003613 
; ram_03C1                              = $03C1 ; 000036 00340B 003613 
; ram_03C2                              = $03C2 ; 000036 00340B 003613 
; ram_03C3                              = $03C3 ; 000036 00340B 003613 
; ram_03C4                              = $03C4 ; 000036 00340B 003613 
; ram_03C5                              = $03C5 ; 000036 00340B 003613 
; ram_03C6                              = $03C6 ; 000036 00340B 003613 
; ram_03C7                              = $03C7 ; 000036 00340B 003613 
; ram_03C8                              = $03C8 ; 000036 00340B 003613 
; ram_03C9                              = $03C9 ; 000036 00340B 003613 
; ram_03CA                              = $03CA ; 000036 00340B 003613 
; ram_03CB                              = $03CB ; 000036 00340B 003613 
; ram_03CC                              = $03CC ; 000036 00340B 003613 
; ram_03CD                              = $03CD ; 000036 00340B 003613 
; ram_03CE                              = $03CE ; 000036 00340B 003613 
; ram_03CF                              = $03CF ; 000036 00340B 003613 
; ram_03D0                              = $03D0 ; 000036 00340B 003613 
; ram_03D1                              = $03D1 ; 000036 00340B 003613 
; ram_03D2                              = $03D2 ; 000036 00340B 003613 
; ram_03D3                              = $03D3 ; 000036 00340B 003613 
; ram_03D4                              = $03D4 ; 000036 00340B 003613 
; ram_03D5                              = $03D5 ; 000036 00340B 003613 
; ram_03D6                              = $03D6 ; 000036 00340B 003613 
; ram_03D7                              = $03D7 ; 000036 00340B 003613 
; ram_03D8                              = $03D8 ; 000036 00340B 003613 
; ram_03D9                              = $03D9 ; 000036 00340B 003613 
; ram_03DA                              = $03DA ; 000036 00340B 003613 
; ram_03DB                              = $03DB ; 000036 00340B 003613 
; ram_03DC                              = $03DC ; 000036 00340B 003613 
; ram_03DD                              = $03DD ; 000036 00340B 003613 
; ram_03DE                              = $03DE ; 000036 00340B 003613 
; ram_03DF                              = $03DF ; 000036 00340B 003613 



; 
ram_03E0_data                           = $03E0 ; 000036 003456 00369C 
; ram_03E1                              = $03E1 ; 000036 003456 00369C 
; ram_03E2                              = $03E2 ; 000036 003456 00369C 
; ram_03E3                              = $03E3 ; 000036 003456 00369C 
; ram_03E4                              = $03E4 ; 000036 003456 00369C 
; ram_03E5                              = $03E5 ; 000036 003456 00369C 
; ram_03E6                              = $03E6 ; 000036 003456 00369C 
; ram_03E7                              = $03E7 ; 000036 003456 00369C 
; ram_03E8                              = $03E8 ; 000036 003456 00369C 
; ram_03E9                              = $03E9 ; 000036 003456 00369C 
; ram_03EA                              = $03EA ; 000036 003456 00369C 
; ram_03EB                              = $03EB ; 000036 003456 00369C 
; ram_03EC                              = $03EC ; 000036 003456 00369C 
; ram_03ED                              = $03ED ; 000036 003456 00369C 
; ram_03EE                              = $03EE ; 000036 003456 00369C 
; ram_03EF                              = $03EF ; 000036 003456 00369C 
; ram_03F0                              = $03F0 ; 000036 003456 00369C 
; ram_03F1                              = $03F1 ; 000036 003456 00369C 
; ram_03F2                              = $03F2 ; 000036 003456 00369C 
; ram_03F3                              = $03F3 ; 000036 003456 00369C 
; ram_03F4                              = $03F4 ; 000036 003456 00369C 
; ram_03F5                              = $03F5 ; 000036 003456 00369C 
; ram_03F6                              = $03F6 ; 000036 003456 00369C 
; ram_03F7                              = $03F7 ; 000036 003456 00369C 
; ram_03F8                              = $03F8 ; 000036 003456 00369C 
; ram_03F9                              = $03F9 ; 000036 003456 00369C 
; ram_03FA                              = $03FA ; 000036 003456 00369C 
; ram_03FB                              = $03FB ; 000036 003456 00369C 
; ram_03FC                              = $03FC ; 000036 003456 00369C 
; ram_03FD                              = $03FD ; 000036 003456 00369C 
; ram_03FE                              = $03FE ; 000036 003456 00369C 
; ram_03FF                              = $03FF ; 000036 003456 00369C 
; ram_0400                              = $0400 ; 000039 003456 00369C 
; ram_0401                              = $0401 ; 000039 003456 00369C 
; ram_0402                              = $0402 ; 000039 003456 00369C 
; ram_0403                              = $0403 ; 000039 003456 00369C 
; ram_0404                              = $0404 ; 000039 003456 00369C 
; ram_0405                              = $0405 ; 000039 003456 00369C 
; ram_0406                              = $0406 ; 000039 003456 00369C 
; ram_0407                              = $0407 ; 000039 003456 00369C 
; ram_0408                              = $0408 ; 000039 003456 00369C 
; ram_0409                              = $0409 ; 000039 003456 00369C 
; ram_040A                              = $040A ; 000039 003456 00369C 
; ram_040B                              = $040B ; 000039 003456 00369C 
; ram_040C                              = $040C ; 000039 003456 00369C 
; ram_040D                              = $040D ; 000039 003456 00369C 
; ram_040E                              = $040E ; 000039 003456 00369C 
; ram_040F                              = $040F ; 000039 003456 00369C 
; ram_0410                              = $0410 ; 000039 003456 00369C 
; ram_0411                              = $0411 ; 000039 003456 00369C 
; ram_0412                              = $0412 ; 000039 003456 00369C 
; ram_0413                              = $0413 ; 000039 003456 00369C 
; ram_0414                              = $0414 ; 000039 003456 00369C 
; ram_0415                              = $0415 ; 000039 003456 00369C 
; ram_0416                              = $0416 ; 000039 003456 00369C 
; ram_0417                              = $0417 ; 000039 003456 00369C 
; ram_0418                              = $0418 ; 000039 003456 00369C 
; ram_0419                              = $0419 ; 000039 003456 00369C 
; ram_041A                              = $041A ; 000039 003456 00369C 
; ram_041B                              = $041B ; 000039 003456 00369C 
; ram_041C                              = $041C ; 000039 003456 00369C 
; ram_041D                              = $041D ; 000039 003456 00369C 
; ram_041E                              = $041E ; 000039 003456 00369C 
; ram_041F                              = $041F ; 000039 003456 00369C 



; 
ram_0420                                = $0420 ; 000039 003498 00369C 
; ram_0421                              = $0421 ; 000039 003498 00369C 
; ram_0422                              = $0422 ; 000039 003498 00369C 
; ram_0423                              = $0423 ; 000039 003498 00369C 
; ram_0424                              = $0424 ; 000039 003498 00369C 
; ram_0425                              = $0425 ; 000039 003498 00369C 
; ram_0426                              = $0426 ; 000039 003498 00369C 
; ram_0427                              = $0427 ; 000039 003498 00369C 
; ram_0428                              = $0428 ; 000039 003498 00369C 
; ram_0429                              = $0429 ; 000039 003498 00369C 
; ram_042A                              = $042A ; 000039 003498 00369C 
; ram_042B                              = $042B ; 000039 003498 00369C 
; ram_042C                              = $042C ; 000039 003498 00369C 
; ram_042D                              = $042D ; 000039 003498 00369C 
; ram_042E                              = $042E ; 000039 003498 00369C 
; ram_042F                              = $042F ; 000039 003498 00369C 
; ram_0430                              = $0430 ; 000039 003498 00369C 
; ram_0431                              = $0431 ; 000039 003498 00369C 
; ram_0432                              = $0432 ; 000039 003498 00369C 
; ram_0433                              = $0433 ; 000039 003498 00369C 
; ram_0434                              = $0434 ; 000039 003498 00369C 
; ram_0435                              = $0435 ; 000039 003498 00369C 
; ram_0436                              = $0436 ; 000039 003498 00369C 
; ram_0437                              = $0437 ; 000039 003498 00369C 
; ram_0438                              = $0438 ; 000039 003498 00369C 
; ram_0439                              = $0439 ; 000039 003498 00369C 
; ram_043A                              = $043A ; 000039 003498 00369C 
; ram_043B                              = $043B ; 000039 003498 00369C 
; ram_043C                              = $043C ; 000039 003498 00369C 
; ram_043D                              = $043D ; 000039 003498 00369C 
; ram_043E                              = $043E ; 000039 003498 00369C 
; ram_043F                              = $043F ; 000039 003498 00369C 
; ram_0440                              = $0440 ; 000039 003498 00369C 
; ram_0441                              = $0441 ; 000039 003498 00369C 
; ram_0442                              = $0442 ; 000039 003498 00369C 
; ram_0443                              = $0443 ; 000039 003498 00369C 
; ram_0444                              = $0444 ; 000039 003498 00369C 
; ram_0445                              = $0445 ; 000039 003498 00369C 
; ram_0446                              = $0446 ; 000039 003498 00369C 
; ram_0447                              = $0447 ; 000039 003498 00369C 
; ram_0448                              = $0448 ; 000039 003498 00369C 
; ram_0449                              = $0449 ; 000039 003498 00369C 
; ram_044A                              = $044A ; 000039 003498 00369C 
; ram_044B                              = $044B ; 000039 003498 00369C 
; ram_044C                              = $044C ; 000039 003498 00369C 
; ram_044D                              = $044D ; 000039 003498 00369C 
; ram_044E                              = $044E ; 000039 003498 00369C 
; ram_044F                              = $044F ; 000039 003498 00369C 
; ram_0450                              = $0450 ; 000039 003498 00369C 
; ram_0451                              = $0451 ; 000039 003498 00369C 
; ram_0452                              = $0452 ; 000039 003498 00369C 
; ram_0453                              = $0453 ; 000039 003498 00369C 
; ram_0454                              = $0454 ; 000039 003498 00369C 
; ram_0455                              = $0455 ; 000039 003498 00369C 
; ram_0456                              = $0456 ; 000039 003498 00369C 
; ram_0457                              = $0457 ; 000039 003498 00369C 
; ram_0458                              = $0458 ; 000039 003498 00369C 
; ram_0459                              = $0459 ; 000039 003498 00369C 
; ram_045A                              = $045A ; 000039 003498 00369C 
; ram_045B                              = $045B ; 000039 003498 00369C 
; ram_045C                              = $045C ; 000039 003498 00369C 
; ram_045D                              = $045D ; 000039 003498 00369C 
; ram_045E                              = $045E ; 000039 003498 00369C 
; ram_045F                              = $045F ; 000039 003498 00369C 




ram_0460                                = $0460 ; 000039 0033CD 00353D 
; ram_0461                              = $0461 ; 000039 0033CD 0033E0 00353D 
; ram_0462                              = $0462 ; 000039 0033CD 0033E0 00353D 
; ram_0463                              = $0463 ; 000039 0033CD 0033E0 00353D 
; ram_0464                              = $0464 ; 000039 0033CD 0033E0 00353D 
; ram_0465                              = $0465 ; 000039 0033CD 0033E0 00353D 
; ram_0466                              = $0466 ; 000039 0033CD 0033E0 00353D 
; ram_0467                              = $0467 ; 000039 0033CD 0033E0 00353D 
; ram_0468                              = $0468 ; 000039 0033CD 0033E0 00353D 
; ram_0469                              = $0469 ; 000039 0033CD 0033E0 00353D 
; ram_046A                              = $046A ; 000039 0033CD 0033E0 00353D 
; ram_046B                              = $046B ; 000039 0033CD 0033E0 00353D 
; ram_046C                              = $046C ; 000039 0033CD 0033E0 00353D 
; ram_046D                              = $046D ; 000039 0033CD 0033E0 00353D 
; ram_046E                              = $046E ; 000039 0026B4 0033CD 0033E0 00353D 
; ram_046F                              = $046F ; 000039 0026BE 0033CD 0033E0 00353D 
; ram_0470                              = $0470 ; 000039 0033CD 0033E0 00353D 
; ram_0471                              = $0471 ; 000039 0033CD 0033E0 00353D 
; ram_0472                              = $0472 ; 000039 0026B4 0033CD 0033E0 00353D 
; ram_0473                              = $0473 ; 000039 0026BE 0033CD 0033E0 00353D 
; ram_0474                              = $0474 ; 000039 0026B4 0033CD 0033E0 00353D 
; ram_0475                              = $0475 ; 000039 0026BE 0033CD 0033E0 00353D 
; ram_0476                              = $0476 ; 000039 0026B4 0033CD 0033E0 00353D 
; ram_0477                              = $0477 ; 000039 0026BE 0033E0 00353D 
; ram_0478                              = $0478 ; 000039 0026B4 0033E0 00353D 
; ram_0479                              = $0479 ; 000039 0026BE 0033E0 00353D 
; ram_047A                              = $047A ; 000039 0026B4 0033E0 00353D 
; ram_047B                              = $047B ; 000039 0026BE 0033E0 00353D 
; ram_047C                              = $047C ; 000039 0026B4 0033E0 00353D 
; ram_047D                              = $047D ; 000039 0026BE 0033E0 00353D 
; ram_047E                              = $047E ; 000039 0026B4 0033E0 00353D 
; ram_047F                              = $047F ; 000039 0026BE 0033E0 003408 00353D 
; ram_0480                              = $0480 ; 000039 0026B4 0033E0 003408 00353D 
; ram_0481                              = $0481 ; 000039 0026BE 0033E0 003408 00353D 
; ram_0482                              = $0482 ; 000039 0026B4 0033E0 003408 00353D 
; ram_0483                              = $0483 ; 000039 0026BE 0033E0 003408 00353D 
; ram_0484                              = $0484 ; 000039 0026B4 0033E0 003408 00353D 
; ram_0485                              = $0485 ; 000039 0026BE 0033E0 003408 00353D 
; ram_0486                              = $0486 ; 000039 0026B4 0033E0 003408 00353D 
; ram_0487                              = $0487 ; 000039 0026BE 0033E0 003408 00353D 
; ram_0488                              = $0488 ; 000039 0026B4 0033E0 003408 00353D 
; ram_0489                              = $0489 ; 000039 0026BE 0033E0 003408 00353D 
; ram_048A                              = $048A ; 000039 0033E0 003408 00353D 
; ram_048B                              = $048B ; 000039 0033E0 003408 00353D 
; ram_048C                              = $048C ; 000039 0033E0 003408 00353D 
; ram_048D                              = $048D ; 000039 0033E0 003408 00353D 
; ram_048E                              = $048E ; 000039 0033E0 003408 00353D 
; ram_048F                              = $048F ; 000039 0033E0 003408 00353D 
; ram_0490                              = $0490 ; 000039 0033E0 003408 00353D 
; ram_0491                              = $0491 ; 000039 0033E0 003408 00353D 
; ram_0492                              = $0492 ; 000039 0033E0 003408 00353D 
; ram_0493                              = $0493 ; 000039 0033E0 003408 00353D 
; ram_0494                              = $0494 ; 000039 0033E0 003408 00353D 
; ram_0495                              = $0495 ; 000039 003408 00353D 
; ram_0496                              = $0496 ; 000039 003408 00353D 
; ram_0497                              = $0497 ; 000039 003408 00353D 



; 
ram_0498                                = $0498 ; 000039 003453 003467 003591 0035A0 
; ram_0499                              = $0499 ; 000039 003453 003467 0035AB 
; ram_049A                              = $049A ; 000039 003453 003467 003591 0035A0 
; ram_049B                              = $049B ; 000039 003453 003467 0035AB 
; ram_049C                              = $049C ; 000039 003453 003467 003591 0035A0 
; ram_049D                              = $049D ; 000039 003453 003467 0035AB 
; ram_049E                              = $049E ; 000039 003453 003467 003591 0035A0 
; ram_049F                              = $049F ; 000039 0026DB 003453 003467 0035AB 
; ram_04A0                              = $04A0 ; 000039 0004A4 00121F 003453 003467 003591 0035A0 
; ram_04A1                              = $04A1 ; 000039 0026DB 003453 003467 0035AB 
; ram_04A2                              = $04A2 ; 000039 0026DB 003453 003467 003591 0035A0 
; ram_04A3                              = $04A3 ; 000039 0026DB 003453 003467 0035AB 
; ram_04A4                              = $04A4 ; 000039 0026DB 003467 003591 0035A0 
; ram_04A5                              = $04A5 ; 000039 0026DB 003467 0035AB 
; ram_04A6                              = $04A6 ; 000039 0026DB 003467 003591 0035A0 
; ram_04A7                              = $04A7 ; 000039 0026DB 003467 003495 0035AB 
; ram_04A8                              = $04A8 ; 000039 0026DB 003467 003495 003591 0035A0 
; ram_04A9                              = $04A9 ; 000039 0026DB 003467 003495 0035AB 
; ram_04AA                              = $04AA ; 000039 0026DB 003467 003495 003591 0035A0 
; ram_04AB                              = $04AB ; 000039 0026DB 003467 003495 0035AB 
; ram_04AC                              = $04AC ; 000039 0026DB 003467 003495 003591 0035A0 
; ram_04AD                              = $04AD ; 000039 003467 003495 0035AB 
; ram_04AE                              = $04AE ; 000039 003467 003495 003591 0035A0 
; ram_04AF                              = $04AF ; 000039 003467 003495 0035AB 
; ram_04B0                              = $04B0 ; 000039 003467 003495 003591 0035A0 
; ram_04B1                              = $04B1 ; 000039 003467 003495 0035AB 
; ram_04B2                              = $04B2 ; 000039 003467 003495 003591 0035A0 
; ram_04B3                              = $04B3 ; 000039 003495 0035AB 



; 
ram_04B4_buffer                         = $04B4 ; 000039 003615 003899 0038AF 
; ram_04B5                              = $04B5 ; 000039 003615 003899 0038AF 
; ram_04B6                              = $04B6 ; 000039 003615 003899 0038AF 
; ram_04B7                              = $04B7 ; 000039 003615 003899 0038AF 
; ram_04B8                              = $04B8 ; 000039 003615 003899 0038AF 
; ram_04B9                              = $04B9 ; 000039 003615 003899 0038AF 
; ram_04BA                              = $04BA ; 000039 003615 003899 0038AF 
; ram_04BB                              = $04BB ; 000039 003615 003899 0038AF 
; ram_04BC                              = $04BC ; 000039 003615 003899 0038AF 
; ram_04BD                              = $04BD ; 000039 003615 003899 0038AF 
; ram_04BE                              = $04BE ; 000039 003615 003899 0038AF 
; ram_04BF                              = $04BF ; 000039 003615 003899 0038AF 
; ram_04C0                              = $04C0 ; 000039 003615 003899 0038AF 
; ram_04C1                              = $04C1 ; 000039 003615 003899 0038AF 
; ram_04C2                              = $04C2 ; 000039 003615 003899 0038AF 
; ram_04C3                              = $04C3 ; 000039 003615 003899 0038AF 
; ram_04C4                              = $04C4 ; 000039 003615 003899 0038AF 
; ram_04C5                              = $04C5 ; 000039 003615 003899 0038AF 
; ram_04C6                              = $04C6 ; 000039 003615 003899 0038AF 
; ram_04C7                              = $04C7 ; 000039 003615 003899 0038AF 
; ram_04C8                              = $04C8 ; 000039 003615 003899 0038AF 
; ram_04C9                              = $04C9 ; 000039 003615 003899 0038AF 
; ram_04CA                              = $04CA ; 000039 003615 003899 0038AF 
; ram_04CB                              = $04CB ; 000039 003615 003899 0038AF 
; ram_04CC                              = $04CC ; 000039 003615 003899 0038AF 
; ram_04CD                              = $04CD ; 000039 003615 003899 0038AF 
; ram_04CE                              = $04CE ; 000039 003615 003899 0038AF 
; ram_04CF                              = $04CF ; 000039 003615 003899 0038AF 
; ram_04D0                              = $04D0 ; 000039 003615 0038AF 
; ram_04D1                              = $04D1 ; 000039 003615 0038AF 
; ram_04D2                              = $04D2 ; 000039 003615 0038AF 
; ram_04D3                              = $04D3 ; 000039 003615 0038AF 



; 
ram_stage_bg_buffer                     = $04D4 ; 000039 0033E3 0038D3 
; ram_04D5                              = $04D5 ; 000039 0033E3 0038D3 
; ram_04D6                              = $04D6 ; 000039 0033E3 0038D3 
; ram_04D7                              = $04D7 ; 000039 0033E3 0038D3 
; ram_04D8                              = $04D8 ; 000039 0033E3 0038D3 
; ram_04D9                              = $04D9 ; 000039 0033E3 0038D3 
; ram_04DA                              = $04DA ; 000039 0033E3 0038D3 
; ram_04DB                              = $04DB ; 000039 0033E3 0038D3 
; ram_04DC                              = $04DC ; 000039 0033E3 0038D3 
; ram_04DD                              = $04DD ; 000039 0033E3 0038D3 
; ram_04DE                              = $04DE ; 000039 0033E3 0038D3 
; ram_04DF                              = $04DF ; 000039 0033E3 0038D3 
; ram_04E0                              = $04E0 ; 000039 0033E3 0038D3 
; ram_04E1                              = $04E1 ; 000039 0033E3 0038D3 
; ram_04E2                              = $04E2 ; 000039 0033E3 0038D3 
; ram_04E3                              = $04E3 ; 000039 0033E3 0038D3 
; ram_04E4                              = $04E4 ; 000039 0033E3 0038D3 
; ram_04E5                              = $04E5 ; 000039 0033E3 0038D3 
; ram_04E6                              = $04E6 ; 000039 0033E3 0038D3 
; ram_04E7                              = $04E7 ; 000039 0033E3 0038D3 
; ram_04E8                              = $04E8 ; 000039 0033E3 0038D3 
; ram_04E9                              = $04E9 ; 000039 0033E3 0038D3 
; ram_04EA                              = $04EA ; 000039 0033E3 0038D3 
; ram_04EB                              = $04EB ; 000039 0033E3 0038D3 
; ram_04EC                              = $04EC ; 000039 0033E3 0038D3 
; ram_04ED                              = $04ED ; 000039 0033E3 0038D3 
; ram_04EE                              = $04EE ; 000039 0033E3 0038D3 
; ram_04EF                              = $04EF ; 000039 0033E3 0038D3 
; ram_04F0                              = $04F0 ; 000039 0033E3 0038D3 
; ram_04F1                              = $04F1 ; 000039 0033E3 0038D3 



; 
ram_04F2_buffer                         = $04F2 ; 000039 0036CD 0038FA 
; ram_04F3                              = $04F3 ; 000039 0036CD 0038FA 003910 
; ram_04F4                              = $04F4 ; 000039 0036CD 0038FA 003910 
; ram_04F5                              = $04F5 ; 000039 0036CD 0038FA 003910 
; ram_04F6                              = $04F6 ; 000039 0036CD 0038FA 003910 
; ram_04F7                              = $04F7 ; 000039 0036CD 0038FA 003910 
; ram_04F8                              = $04F8 ; 000039 0036CD 0038FA 003910 
; ram_04F9                              = $04F9 ; 000039 0036CD 003910 



; 
ram_04FA_buffer                         = $04FA ; 000039 0034BF 00392D 
; ram_04FB                              = $04FB ; 000039 0034BF 00392D 
; ram_04FC                              = $04FC ; 000039 0034BF 00392D 
; ram_04FD                              = $04FD ; 000039 0034BF 00392D 
; ram_04FE                              = $04FE ; 000039 0034BF 00392D 
; ram_04FF                              = $04FF ; 000039 0034BF 00392D 
; ram_0500                              = $0500 ; 00003C 0034BF 00392D 
; ram_0501                              = $0501 ; 00003C 0034BF 00392D 



; 
ram_0502                                = $0502 ; 00003C 0035DD 003E15 
; ram_0503                              = $0503 ; 00003C 0035DD 003E15 
; ram_0504                              = $0504 ; 00003C 0035DD 003E15 
; ram_0505                              = $0505 ; 00003C 0035DD 003E15 



; 
ram_0506                                = $0506 ; 00003C 003EAD 003F1D 003F3A 004226 00422B 004234 004240 004258 
; ram_0507                              = $0507 ; 00003C 003EAA 003EAD 003F20 003F3D 004226 00422B 004234 004240 004258 
; ram_0508                              = $0508 ; 00003C 003EAA 003EAD 003F23 003F40 004226 00422B 004234 004240 004258 
; ram_0509                              = $0509 ; 00003C 003EAA 003EAD 003F26 003F43 004226 00422B 004234 004240 004258 
; ram_050A                              = $050A ; 00003C 003B98 003EAA 003EEE 003EF5 003F29 003F46 004226 00422B 004234 004240 004258 



; 
; bzk warning, 1st address could be a part of ram_0506 array via 0x004226
ram_050B                                = $050B ; 00003C 003EB3 004205 004226 
; ram_050C                              = $050C ; 00003C 003EB0 003EB3 004205 
; ram_050D                              = $050D ; 00003C 003EB0 003EB3 004205 
; ram_050E                              = $050E ; 00003C 003EB0 003EB3 004205 
; ram_050F                              = $050F ; 00003C 003C5F 003EB0 003EFB 004205 



; 
; bzk warning, 1st address could be a part of ram_050B array via 0x004205
ram_0510                                = $0510 ; 00003C 003EB9 004200 004205 
; ram_0511                              = $0511 ; 00003C 003EB6 003EB9 004200 
; ram_0512                              = $0512 ; 00003C 003EB6 003EB9 004200 
; ram_0513                              = $0513 ; 00003C 003EB6 003EB9 004200 
; ram_0514                              = $0514 ; 00003C 003C65 003EB6 003F01 004200 



; 
; bzk warning, 1st address could be a part of ram_0510 array via 0x004200
ram_0515                                = $0515 ; 00003C 003EBF 004200 
; ram_0516                              = $0516 ; 00003C 003EBC 003EBF 0041DC 
; ram_0517                              = $0517 ; 00003C 003EBC 003EBF 0041DC 
; ram_0518                              = $0518 ; 00003C 003EBC 003EBF 0041DC 
; ram_0519                              = $0519 ; 00003C 003C6B 003EBC 003F07 



; 
ram_051A_2006_hi                        = $051A ; 00003C 00341C 0038C5 
ram_051B_2006_lo                        = $051B ; 00003C 0033B0 0038CB 
ram_051C_2006_hi                        = $051C ; 00003C 003657 00388D 
ram_051D_2006_lo                        = $051D ; 00003C 003651 003893 
ram_051E_2006_hi                        = $051E ; 00003C 003626 00362B 00362F 003633 003643 003646 003654 00365C 0038A3 
ram_051F_2006_lo                        = $051F ; 00003C 003637 00364E 0038A9 



; ppu buffer index?
ram_0520                                = $0520 ; 00003C 0035F5 003649 003662 003665 003888 



; 
ram_0521_2006_hi                        = $0521 ; 00003C 0034A9 003924 
ram_0522_2006_lo                        = $0522 ; 00003C 0034B5 003921 
ram_0523_2006_hi                        = $0523 ; 00003C 003700 0038EE 
ram_0524_2006_lo                        = $0524 ; 00003C 0036FA 0038F4 
ram_0525_2006_hi                        = $0525 ; 00003C 0036E9 0036FD 003705 003904 
ram_0526_2006_lo                        = $0526 ; 00003C 0036DD 0036F7 00390A 



; 
ram_0527                                = $0527 ; 00003C 0036F2 00370B 00370E 0038E9 



; 
ram_0528                                = $0528 ; 00003C 000141 0008A1 0008A8 002CDD 



; index for 2 tables
ram_extra_life_index                    = $0529 ; 00003C 0000A7 0009D4 0009E6 



; 
ram_052A                                = $052A ; 00003C 0002A8 002639 003A6E 003BC6 003D12 



; free addresses
; ram_052B                              = $052B ; 00003C 
; ram_052C                              = $052C ; 00003C 




ram_052D                                = $052D ; 00003C 00035E 000614 003BA6 



; 
ram_052E                                = $052E ; 00003C 00265A 00265F 002901 003CA4 



; 
ram_052F                                = $052F ; 00003C 002668 0028FC 



; 
ram_0530                                = $0530 ; 00003C 002651 00268A 0026C8 003E62 003E69 



; 
ram_0531                                = $0531 ; 00003C 000BED 000C15 000C19 003F7D 



; 
ram_0532                                = $0532 ; 00003C 00122C 001237 001241 001262 00126E 



; 
ram_0533                                = $0533 ; 00003C 002C27 003B55 



; 
ram_0534                                = $0534 ; 00003C 00013C 002BCF 002BE4 002C92 



; 
ram_0535                                = $0535 ; 00003C 0007D2 000828 001751 



; 
ram_0536                                = $0536 ; 00003C 000C51 001308 001323 00417C 



; how much damage you need to deal to the boss
ram_boss_max_hp                         = $0537 ; 00003C 001A73 001BC9 



; free address
; ram_0538                              = $0538 ; 00003C 



; bzk optimize, useless address
ram_0539                                = $0539 ; 00003C 003CB5 



; 
ram_053A                                = $053A ; 00003C 002CFB 002D0B 



; counts how many enemies you kill in a row (max 09),
; gives you +100 more points each 2 kills (0x0040BC)
ram_kill_counter                        = $053B ; 00003C 002D2D 0040A8 0040AF 



; 
ram_053C                                = $053C ; 00003C 00193B 001945 



; allows you to continue after game over by holding any D-pad button when pressing Start
; 00 = don't have
; FF = have
ram_hudson_bee_flag                     = $053D ; 00003C 000068 002CCA 002D43 003037 



; 
ram_053E                                = $053E ; 00003C 000095 000168 000AD4 000BB4 002F62 002F7A 002FBC 00404E 



; 
ram_053F                                = $053F ; 00003C 002FCE 002FD4 002FDE 



; 3 pairs
ram_0540                                = $0540 ; 00003C 000C6F 000D20 000D35 000D3B 000D77 
ram_0541                                = $0541 ; 00003C 000C79 000D25 000D3E 000D43 000D7C 
; ram_0542                              = $0542 ; 00003C 000C6F 000D20 000D35 000D3B 000D77 
; ram_0543                              = $0543 ; 00003C 000C79 000D25 000D3E 000D43 000D7C 
; ram_0544                              = $0544 ; 00003C 000C6F 000D20 000D35 000D3B 000D77 
; ram_0545                              = $0545 ; 00003C 000C79 000D25 000D3E 000D43 000D7C 



; 3 pairs
ram_0546                                = $0546 ; 00003C 000C6A 000D4B 000D61 000D68 000D8A 000D96 000DA6 
ram_0547                                = $0547 ; 00003C 000D91 000D9F 
; ram_0548                              = $0548 ; 00003C 000C6A 000D4B 000D61 000D68 000D8A 000D96 000DA6 
; ram_0549                              = $0549 ; 00003C 000D91 000D9F 
; ram_054A                              = $054A ; 00003C 000C6A 000D4B 000D61 000D68 000D8A 000D96 000DA6 
; ram_054B                              = $054B ; 00003C 000D91 000D9F 



; 
ram_054C                                = $054C ; 00003C 000C72 000CA1 000CA7 000CAD 000CBC 000CBF 001382 001556 00163E 003D8F 003DE2 



; 
ram_054D                                = $054D ; 00003C 000C7C 000CA4 000CAA 000CB0 003D96 003DE7 003EDB 



; 
ram_054E                                = $054E ; 00003C 00027B 000ADC 000AE0 000CCF 0018A2 0018D3 001B92 0028CE 0028E2 0028F9 002919 002950 00295D 003DA2 003DEC 



; 
ram_054F                                = $054F ; 00003C 000CDF 001B97 002913 00294A 003DA8 003EEB 



; 
ram_0550                                = $0550 ; 00003C 003C5C 003DB7 003EF8 



; 
ram_0551                                = $0551 ; 00003C 003C62 003DBE 003EFE 



; 
ram_0552                                = $0552 ; 00003C 003C68 003DAF 003F04 



; free address
; ram_0553                              = $0553 ; 00003C 



; 00 = object doesn't exist?
; FF = object is falling down when killed with a weapon
ram_0554_obj                            = $0554 ; 00003C 000EDB 001544 002E06 003061 0030B4 0030D4 0030FB 003109 00310C 003118 003123 
    ram_0554_plr                            = ram_0554_obj ; 
; ram_0555                              = $0555 ; 00003C 0007F6 000C4B 000E76 000EDB 002E09 003061 004141 
; ram_0556                              = $0556 ; 00003C 0007F6 000C4B 000DC6 000E76 000EDB 0012AE 001544 003061 004141 00414D 004162 
; ram_0557                              = $0557 ; 00003C 0007F6 000B17 000B55 000B6F 000C4B 000DC6 000E76 000EDB 0012AE 001544 004141 
; ram_0558                              = $0558 ; 00003C 0007F6 000B17 000B6F 000C4B 000DC6 000E76 000EDB 0012AE 0012C4 001495 001544 00184A 00185F 001876 0018DB 0018E6 001928 00194D 00195E 001970 00197C 00197F 004141 00414D 004162 0041A3 
; ram_0559                              = $0559 ; 00003C 0007F6 000B17 000B55 000B6F 000C4B 000DC6 000E76 000EDB 0012AE 001544 001694 001725 0018DB 0018E6 001928 00194D 00195E 001970 00197C 00197F 004141 00414D 004162 0041A3 
; ram_055A                              = $055A ; 00003C 0007F6 000AE6 000B17 000B55 000B6F 000C4B 000DC6 000E76 000EDB 0012AE 0012C4 001495 0014F5 001544 0015AA 0015B3 0015D9 0015F3 0018DB 0018E6 001928 004141 00414D 004162 0041A3 
; ram_055B                              = $055B ; 00003C 0006EB 00075B 0007F6 000B17 000B55 000B6F 000C4B 000DC6 000E76 000EDB 0012AE 0012C4 001389 001394 0013A6 001495 001544 0015AA 0015B3 0015D9 0015F3 00184A 00185F 001876 0018DB 0018E6 001928 00194D 00195E 001970 00197C 00197F 002C5E 002C61 002C7B 004141 00414D 004162 0041A3 
; ram_055C                              = $055C ; 00003C 0007F6 000AE6 000B17 000B55 000B6F 000C4B 000DC6 000E76 000EDB 0012AE 0012C4 001389 001394 0013A6 001495 0014F5 001544 0015AA 0015B3 0015D9 0015F3 001694 001706 001725 00184A 00185F 001876 0018DB 0018E6 001928 00194D 00195E 001970 00197C 00197F 002C7B 004141 00414D 004162 0041A3 
; ram_055D                              = $055D ; 00003C 0006EB 00075B 0007F6 000AE6 000B17 000B55 000B6F 000C4B 000DC6 000E76 000EDB 0012AE 0012C4 001394 001495 0014F5 001544 0015AA 0015B3 0015D9 0015F3 001694 0016FD 001706 001725 00184A 00185F 001876 0018DB 0018E6 001928 00194D 00195E 001970 00197C 00197F 002C5E 002C61 002C7B 004141 00414D 004162 0041A3 
; ram_055E                              = $055E ; 00003C 0006EB 00075B 0007F6 000AE6 000B17 000B55 000B6F 000C4B 000DC6 000E76 000EDB 0012AE 0012C4 001389 001394 0013A6 001495 0014F5 001544 0015AA 0015B3 0015D9 0015F3 001694 001725 00184A 00185F 001876 0018DB 0018E6 001928 00194D 00195E 001970 00197C 00197F 002C5E 002C61 002C7B 004141 00414D 004162 0041A3 
; ram_055F                              = $055F ; 00003C 0006EB 00075B 0007F6 000AE6 000B17 000B55 000B6F 000C4B 000DC6 000E76 000EDB 0012AE 0012C4 001389 001394 0013A6 001495 0014F5 001544 0015AA 0015B3 0015D9 0015F3 001694 001706 001725 00184A 00185F 001876 0018DB 0018E6 001928 00194D 00195E 001970 00197C 00197F 001CFF 001D36 002C5E 002C61 002C7B 004141 00414D 004162 0041A3 
; ram_0560                              = $0560 ; 00003C 0006EB 00075B 0007F6 000AE6 000B17 000B55 000B6F 000C4B 000DC6 000E76 000EDB 0012AE 0012C4 001389 001394 0013A6 001495 0014F5 001544 0015AA 0015B3 0015D9 0015F3 001694 0016FD 001706 001725 00184A 00185F 001876 0018DB 0018E6 001928 00194D 00195E 001970 00197C 00197F 001CFF 001D36 002C5E 002C61 002C7B 004141 00414D 004162 0041A3 
; ram_0561                              = $0561 ; 00003C 0006EB 00075B 0007F6 000AE6 000B17 000B55 000B6F 000C4B 000DC6 000E76 000EDB 0012AE 0012C4 001389 001394 0013A6 001495 0014F5 001544 0015AA 0015B3 0015D9 0015F3 001725 00173B 00184A 00185F 001876 0018DB 0018E6 001928 00194D 00195E 001970 00197C 00197F 001CFF 001D36 002C5E 002C61 002C7B 004141 00414D 004162 0041A3 
; ram_0562                              = $0562 ; 00003C 0006EB 00075B 0007F6 000AE6 000B17 000B55 000B6F 000C4B 000DC6 000E76 000EDB 0012AE 0012C4 001389 001394 0013A6 001495 0014F5 001544 0015AA 0015B3 0015D9 0015F3 001694 0016FD 001706 001725 00184A 00185F 001876 0018DB 0018E6 001928 00194D 00195E 001970 00197C 00197F 002C5E 002C61 002C7B 004141 00414D 004162 0041A3 
; ram_0563                              = $0563 ; 00003C 0006EB 00075B 0007F6 000AE6 000B17 000B55 000B6F 000C4B 000DC6 000E76 000EDB 0012AE 0012C4 001389 001394 0013A6 001495 0014F5 001544 0015AA 0015B3 0015D9 0015F3 001694 001706 001725 00173B 00184A 00185F 001876 0018DB 0018E6 001928 00194D 00195E 001970 00197C 00197F 002C5E 002C61 002C7B 004141 00414D 004162 0041A3 



; +80 = ???
; see con_obj_id
ram_obj_id                              = $0564 ; 00003C 000E1D 
; ram_0565                              = $0565 ; 00003C 
; ram_0566                              = $0566 ; 00003C 0007FB 000E1D 000E7B 000EA3 0012B4 004146 
; ram_0567                              = $0567 ; 00003C 0007FB 000AEC 000E1D 000E7B 000EA3 0012B4 004146 
; ram_0568                              = $0568 ; 00003C 0007FB 000AEC 000E1D 000E7B 000EA3 0012B4 001952 0019D2 004146 
; ram_0569                              = $0569 ; 00003C 0007FB 000AEC 000E1D 000E7B 000EA3 0012B4 001952 0019D2 004146 
; ram_056A                              = $056A ; 00003C 0007FB 000AEC 000E1D 000E7B 000EA3 0012B4 004146 
; ram_056B                              = $056B ; 00003C 0007FB 000AEC 000E1D 000E7B 000EA3 0012B4 001952 0019D2 002B29 002B41 002BFA 002D16 004146 
; ram_056C                              = $056C ; 00003C 0007FB 000AEC 000E1D 000E7B 000EA3 0012B4 001952 001997 0019D2 002B29 002B41 002BFA 004146 
; ram_056D                              = $056D ; 00003C 0007FB 000AEC 000E1D 000E7B 000EA3 0012B4 001952 001997 0019D2 002AE3 002BFA 002D16 004146 
; ram_056E                              = $056E ; 00003C 0007FB 000AEC 000E1D 000E7B 000EA3 0012B4 001952 0019D2 002BFA 002D16 004146 
; ram_056F                              = $056F ; 00003C 0007FB 000AEC 000E1D 000E7B 000EA3 0012B4 001952 0019D2 002B29 002B41 002BFA 002D16 004146 
; ram_0570                              = $0570 ; 00003C 0007FB 000AEC 000E1D 000E7B 000EA3 0012B4 001952 001997 0019D2 002AE3 002B29 002B41 002BFA 002D16 004146 
; ram_0571                              = $0571 ; 00003C 0007FB 000AEC 000E1D 000E7B 000EA3 0012B4 001477 001952 001997 0019D2 002B29 002B41 002BFA 002D16 004146 
; ram_0572                              = $0572 ; 00003C 0007FB 000AEC 000E1D 000E7B 000EA3 0012B4 001952 0019D2 001CC8 001CCD 002AE3 002B29 002B41 002B6F 002BFA 002D16 004146 
; ram_0573                              = $0573 ; 00003C 0007FB 000AEC 000E1D 000E7B 000EA3 0012B4 001952 0019D2 002B29 002B41 002BFA 002D16 004146 



; fraction
ram_obj_pos_X_fr                        = $0574 ; 00003C 00046E 000489 0004C4 0004CA 000E35 
    ram_plr_pos_X_fr                        = ram_obj_pos_X_fr ; 
; ram_0575                              = $0575 ; 00003C 
; ram_0576                              = $0576 ; 00003C 0004C4 0004CA 000E35 
; ram_0577                              = $0577 ; 00003C 000E35 
; ram_0578                              = $0578 ; 00003C 0004C4 0004CA 000E35 
; ram_0579                              = $0579 ; 00003C 0004C4 0004CA 000E35 
; ram_057A                              = $057A ; 00003C 0004C4 0004CA 000E35 
; ram_057B                              = $057B ; 00003C 0004C4 0004CA 000E35 
; ram_057C                              = $057C ; 00003C 0004C4 0004CA 000E35 
; ram_057D                              = $057D ; 00003C 0004C4 0004CA 000E35 
; ram_057E                              = $057E ; 00003C 0004C4 0004CA 000E35 
; ram_057F                              = $057F ; 00003C 0004C4 0004CA 000E35 
; ram_0580                              = $0580 ; 00003C 0004C4 0004CA 000E35 
; ram_0581                              = $0581 ; 00003C 0004C4 0004CA 000E35 
; ram_0582                              = $0582 ; 00003C 0004C4 0004CA 000E35 
; ram_0583                              = $0583 ; 00003C 0004C4 0004CA 000E35 



; 
ram_obj_pos_X_lo                        = $0584 ; 00003C 000262 0002B3 000383 00041E 00042F 00043A 000451 00047B 000484 0004CD 0004D2 000619 0006C3 000768 00080E 000B67 000E22 001315 00144E 0014CF 0014EB 0015D4 00186F 001918 001D8B 002995 00299B 0029D9 002DC3 002EAF 003067 003102 003D04 003D25 004029 0041AD 0041CE 00426F 0042A9 
    ram_plr_pos_X_lo                        = ram_obj_pos_X_lo ; 
; ram_0585                              = $0585 ; 00003C 001D8B 002EAF 003067 
; ram_0586                              = $0586 ; 00003C 0004CD 0004D2 000E22 000E85 000E88 000EB7 000ECB 001D8B 003067 004029 0041AD 00426F 0042A9 
; ram_0587                              = $0587 ; 00003C 000B63 000E22 000E85 000E88 000EB7 000ECB 001D8B 00297D 002986 0029D2 004025 
; ram_0588                              = $0588 ; 00003C 0004CD 0004D2 000B63 000E22 000E85 000E88 000EB7 000ECB 0014CB 00186B 001D8B 004025 004029 0041AD 00426F 0042A9 
; ram_0589                              = $0589 ; 00003C 0004CD 0004D2 000B63 000E22 000E85 000E88 000EB7 000ECB 001356 00135D 001663 00166A 00171E 001D8B 00297D 002986 004025 004029 0041AD 00426F 0042A9 
; ram_058A                              = $058A ; 00003C 0004CD 0004D2 000B63 000E22 000E85 000E88 000EB7 000ECB 001452 0014CB 0014E8 0015D0 001612 001627 001663 00166A 001914 001D8B 00297D 002986 0029D2 004025 004029 0041AD 00426F 0042A9 
; ram_058B                              = $058B ; 00003C 0004CD 0004D2 0006C9 00077A 000B63 000E22 000E85 000E88 000EB7 000ECB 00139F 0014CB 0014E8 0015D0 001612 001627 001663 00166A 00186B 001914 001D8B 00297D 002986 0029D2 004025 004029 0041AD 00426F 0042A9 
; ram_058C                              = $058C ; 00003C 0004CD 0004D2 000B63 000E22 000E85 000E88 000EB7 000ECB 001312 001326 001356 00135D 00139F 0014CB 0014E8 0015D0 001612 001627 001663 00166A 00171E 00186B 001914 001D8B 00297D 002986 0029D2 004025 004029 0041AD 00426F 0042A9 
; ram_058D                              = $058D ; 00003C 0004CD 0004D2 0006C9 00077A 000B63 000E22 000E85 000E88 000EB7 000ECB 001312 001326 001356 00135D 0014CB 0014E8 0015D0 001612 001627 001663 00166A 0016C2 00171E 00186B 001914 001D8B 00297D 002986 0029D2 002C0E 004025 004029 0041AD 00426F 0042A9 
; ram_058E                              = $058E ; 00003C 0004CD 0004D2 0006C9 00077A 000B63 000E22 000E85 000E88 000EB7 000ECB 001312 001326 001356 00135D 00139F 0014CB 0014E8 0015D0 001612 001627 001663 00166A 00171E 00186B 001914 001D8B 00297D 002986 0029D2 002C0E 004025 004029 0041AD 00426F 0042A9 
; ram_058F                              = $058F ; 00003C 0004CD 0004D2 0006C9 00077A 000B63 000E22 000E85 000E88 000EB7 000ECB 001312 001326 001356 00135D 00139F 001452 0014CB 0014E8 0015D0 001612 001627 001663 00166A 00171E 00186B 001914 001CDD 001CE3 001D8B 00297D 002986 0029D2 002C0E 004025 004029 0041AD 00426F 0042A9 
; ram_0590                              = $0590 ; 00003C 0004CD 0004D2 0006C9 00077A 000B63 000E22 000E85 000E88 000EB7 000ECB 001312 001326 001356 00135D 00139F 001452 0014CB 0014E8 0015D0 001612 001627 001663 00166A 0016C2 00171E 00186B 001914 001CDD 001CE3 001D8B 00297D 002986 0029D2 002C0E 004025 004029 0041AD 00426F 0042A9 
; ram_0591                              = $0591 ; 00003C 0004CD 0004D2 0006C9 00077A 000B63 000E22 000E85 000E88 000EB7 000ECB 001312 001326 001356 00135D 00139F 001452 0014CB 0014E8 0015D0 001612 001627 001663 00166A 00171E 00186B 001914 001CDD 001CE3 001D8B 00297D 002986 0029D2 002C0E 004025 004029 0041AD 00426F 0042A9 
; ram_0592                              = $0592 ; 00003C 0004CD 0004D2 0006C9 00077A 000B63 000E22 000E85 000E88 000EB7 000ECB 001312 001326 001356 00135D 00139F 0014CB 0014E8 0015D0 001612 001627 001663 00166A 0016C2 00171E 00186B 001914 001B0D 001D8B 00297D 002986 0029D2 002C0E 004025 004029 0041AD 00426F 0042A9 
; ram_0593                              = $0593 ; 00003C 0004CD 0004D2 0006C9 00077A 000B63 000E22 000E85 000E88 000EB7 000ECB 001312 001326 001356 00135D 00139F 0014CB 0014E8 0015D0 001612 001627 001663 00166A 00171E 00186B 001914 001A76 001A9E 001B0A 001C46 001C9C 001D8B 00297D 002986 0029D2 002C0E 004025 004029 0041AD 00426F 0042A9 



; 
ram_obj_pos_X_hi                        = $0594 ; 00003C 00023C 000267 00029A 00037E 000419 000433 00044D 000474 00048C 0004D5 0004DA 00060F 0006CC 000770 000813 000E27 001D93 00299E 0029A3 002DC9 002EB9 00306D 004031 0041B6 0041D3 004278 0042B2 
    ram_plr_pos_X_hi                        = ram_obj_pos_X_hi ; 
; ram_0595                              = $0595 ; 00003C 001D93 002EB9 00306D 
; ram_0596                              = $0596 ; 00003C 0004D5 0004DA 000E27 000E8B 000E90 000EBD 000EC4 001D93 00306D 004031 0041B6 004278 0042B2 
; ram_0597                              = $0597 ; 00003C 000B5E 000E27 000E8B 000E90 000EBD 000EC4 001D93 002979 00298C 0029CD 00402E 
; ram_0598                              = $0598 ; 00003C 0004D5 0004DA 000B5E 000E27 000E8B 000E90 000EBD 000EC4 0014C6 001866 001909 001D93 00402E 004031 0041B6 004278 0042B2 
; ram_0599                              = $0599 ; 00003C 0004D5 0004DA 000B5E 000E27 000E8B 000E90 000EBD 000EC4 001360 001366 00166D 001673 001719 001909 001D93 002979 00298C 00402E 004031 0041B6 004278 0042B2 
; ram_059A                              = $059A ; 00003C 0004D5 0004DA 000B5E 000E27 000E8B 000E90 000EBD 000EC4 001449 0014C6 0014E3 0015CB 00161A 00162C 00166D 001673 001909 00190F 001D93 002979 00298C 0029CD 00402E 004031 0041B6 004278 0042B2 
; ram_059B                              = $059B ; 00003C 0004D5 0004DA 0006D1 0006FA 00077F 000B5E 000E27 000E8B 000E90 000EBD 000EC4 00139A 0014C6 0014E3 0015CB 00161A 00162C 00166D 001673 001866 001909 00190F 001D93 002979 00298C 0029CD 00402E 004031 0041B6 004278 0042B2 
; ram_059C                              = $059C ; 00003C 0004D5 0004DA 000B5E 000C1F 000E27 000E8B 000E90 000EBD 000EC4 00130D 00132B 001360 001366 00139A 0014C6 0014E3 0015CB 00161A 00162C 00166D 001673 001719 001866 001909 00190F 001D93 002979 00298C 0029CD 00402E 004031 0041B6 004278 0042B2 
; ram_059D                              = $059D ; 00003C 0004D5 0004DA 0006D1 00077F 000B5E 000C1F 000E27 000E8B 000E90 000EBD 000EC4 00130D 00132B 001360 001366 0014C6 0014E3 0015CB 00161A 00162C 00166D 001673 0016C9 001719 001866 001909 00190F 001D93 002979 00298C 0029CD 002C13 00402E 004031 0041B6 004278 0042B2 
; ram_059E                              = $059E ; 00003C 0004D5 0004DA 0006D1 0006FA 00077F 000B5E 000C1F 000E27 000E8B 000E90 000EBD 000EC4 00130D 00132B 001360 001366 00139A 0014C6 0014E3 0015CB 00161A 00162C 00166D 001673 001719 001866 001909 00190F 001D93 002979 00298C 0029CD 002C13 00402E 004031 0041B6 004278 0042B2 
; ram_059F                              = $059F ; 00003C 0004D5 0004DA 0006D1 0006FA 00077F 000B5E 000C1F 000E27 000E8B 000E90 000EBD 000EC4 00130D 00132B 001360 001366 00139A 001449 0014C6 0014E3 0015CB 00161A 00162C 00166D 001673 001719 001866 001909 00190F 001CE6 001CEC 001D93 002979 00298C 0029CD 002C13 00402E 004031 0041B6 004278 0042B2 
; ram_05A0                              = $05A0 ; 00003C 0004A1 0004D5 0004DA 0006D1 0006FA 00077F 000B5E 000C1F 000E27 000E8B 000E90 000EBD 000EC4 001222 00130D 00132B 001360 001366 00139A 001449 0014C6 0014E3 0015CB 00161A 00162C 00166D 001673 0016C9 001719 001866 001909 00190F 001CE6 001CEC 001D93 002979 00298C 0029CD 002C13 00402E 004031 0041B6 004278 0042B2 
; ram_05A1                              = $05A1 ; 00003C 0004D5 0004DA 0006D1 0006FA 00077F 000B5E 000C1F 000E27 000E8B 000E90 000EBD 000EC4 00130D 00132B 001360 001366 00139A 001449 0014C6 0014E3 0015CB 00161A 00162C 00166D 001673 001719 001866 001909 00190F 001CE6 001CEC 001D93 002979 00298C 0029CD 002C13 00402E 004031 0041B6 004278 0042B2 
; ram_05A2                              = $05A2 ; 00003C 0004D5 0004DA 0006D1 0006FA 00077F 000B5E 000C1F 000E27 000E8B 000E90 000EBD 000EC4 00130D 00132B 001360 001366 00139A 0014C6 0014E3 0015CB 00161A 00162C 00166D 001673 0016C9 001719 001866 001909 00190F 001B13 001D93 002979 00298C 0029CD 002C13 00402E 004031 0041B6 004278 0042B2 
; ram_05A3                              = $05A3 ; 00003C 0004D5 0004DA 0006D1 0006FA 00077F 000B5E 000C1F 000E27 000E8B 000E90 000EBD 000EC4 00130D 00132B 001360 001366 00139A 0014C6 0014E3 0015CB 00161A 00162C 00166D 001673 001719 001866 001909 00190F 001A7B 001AA3 001B10 001B48 001D93 002910 002979 00298C 0029CD 002C13 00402E 004031 0041B6 004278 0042B2 



; 
ram_obj_spd_X                           = $05A4 ; 00003C 000467 00046B 00048F 0004B4 00052D 000531 000541 000545 000567 000571 00057D 000584 000587 00058B 000592 000595 00059D 0005D4 0005EF 000E38 002B58 002C70 003098 00411B 0042A3 
    ram_plr_spd_X                           = ram_obj_spd_X ; 
; ram_05A5                              = $05A5 ; 00003C 
; ram_05A6                              = $05A6 ; 00003C 0004B4 00083B 000E38 004157 0042A3 
; ram_05A7                              = $05A7 ; 00003C 000E38 002937 002A74 002A82 002A87 002A8A 
; ram_05A8                              = $05A8 ; 00003C 0004B4 00083B 000856 000E38 00125A 0012F2 0014A8 001602 001812 004157 004188 0042A3 
; ram_05A9                              = $05A9 ; 00003C 0004B4 00083B 000856 000E38 00125A 0012F2 001602 001733 002A74 002A82 002A87 002A8A 002D56 003F7A 004157 004188 0042A3 
; ram_05AA                              = $05AA ; 00003C 0004B4 00083B 000856 000E38 00125A 0012F2 0014A8 0014F0 0015DE 001602 002937 0029E6 0029EF 002A74 002A82 002A87 002A8A 004157 004188 0042A3 
; ram_05AB                              = $05AB ; 00003C 0004B4 00074A 000784 00078C 00078F 000795 00079B 00079E 00083B 000856 000E38 00125A 0012F2 00137F 0014A8 0015DE 001602 00296B 0029E6 0029EF 002A74 002A82 002A87 002A8A 004157 004188 0042A3 
; ram_05AC                              = $05AC ; 00003C 0004B4 00083B 000856 000E38 00125A 00137F 0014A8 0014F0 0015DE 001602 001733 00296B 0029E6 0029EF 002A74 002A82 002A87 002A8A 002C73 004157 004188 0042A3 
; ram_05AD                              = $05AD ; 00003C 0004B4 000784 00078C 00078F 000795 00079B 00079E 00083B 000856 000E38 00125A 0012F2 00137F 0014A8 0014F0 0015DE 001602 001733 001812 00296B 0029E6 0029EF 002A74 002A82 002A87 002A8A 002C73 004157 004188 0042A3 
; ram_05AE                              = $05AE ; 00003C 0004B4 00074A 000784 00078C 00078F 000795 00079B 00079E 00083B 000856 000E38 00125A 0012F2 00137F 0014A8 0014F0 0015DE 001602 001733 001812 00296B 0029E6 0029EF 002A74 002A82 002A87 002A8A 002C73 004157 004188 0042A3 
; ram_05AF                              = $05AF ; 00003C 0004B4 00074A 000784 00078C 00078F 000795 00079B 00079E 00083B 000856 000E38 00125A 0012F2 00137F 0014A8 0014F0 0015DE 001602 001733 001812 001D2B 00296B 0029E6 0029EF 002A74 002A82 002A87 002A8A 002C73 004157 004188 0042A3 
; ram_05B0                              = $05B0 ; 00003C 0004B4 00074A 000784 00078C 00078F 000795 00079B 00079E 00083B 000856 000E38 00125A 00137F 0014A8 0014F0 0015DE 001602 001733 001812 001D2B 002937 00296B 0029E6 0029EF 002A74 002A82 002A87 002A8A 002C73 004157 004188 0042A3 
; ram_05B1                              = $05B1 ; 00003C 0004B4 00074A 000784 00078C 00078F 000795 00079B 00079E 00083B 000856 000E38 00125A 0012F2 00137F 0014A8 0014F0 0015DE 001602 001733 001812 001D2B 002937 00296B 0029E6 0029EF 002A74 002A82 002A87 002A8A 002C73 004157 004188 0042A3 
; ram_05B2                              = $05B2 ; 00003C 0004B4 00074A 000784 00078C 00078F 000795 00079B 00079E 00083B 000856 000E38 00125A 0012F2 00137F 0014A8 0014F0 0015DE 001602 001733 001812 001BEB 002937 00296B 0029E6 0029EF 002A74 002A82 002A87 002A8A 002C73 004157 004188 0042A3 
; ram_05B3                              = $05B3 ; 00003C 0004B4 00074A 000784 00078C 00078F 000795 00079B 00079E 00083B 000856 000E38 00125A 0012F2 00137F 0014A8 0014F0 0015DE 001602 001733 001812 001AB9 001C24 002937 00296B 0029E6 0029EF 002A74 002A82 002A87 002A8A 002C73 004157 004188 0042A3 



; fraction
ram_obj_pos_Y_fr                        = $05B4 ; 00003C 0003A6 0003C8 0003CE 000E3B 
    ram_plr_pos_Y_fr                        = ram_obj_pos_Y_fr ; 
; ram_05B5                              = $05B5 ; 00003C 
; ram_05B6                              = $05B6 ; 00003C 000408 00040E 000E3B 
; ram_05B7                              = $05B7 ; 00003C 000408 00040E 000E3B 
; ram_05B8                              = $05B8 ; 00003C 000408 00040E 000E3B 
; ram_05B9                              = $05B9 ; 00003C 000408 00040E 000E3B 
; ram_05BA                              = $05BA ; 00003C 000408 00040E 000E3B 
; ram_05BB                              = $05BB ; 00003C 000408 00040E 000E3B 0013DB 
; ram_05BC                              = $05BC ; 00003C 000408 00040E 000E3B 0013DB 
; ram_05BD                              = $05BD ; 00003C 000408 00040E 000E3B 0013DB 
; ram_05BE                              = $05BE ; 00003C 000408 00040E 000E3B 0013DB 
; ram_05BF                              = $05BF ; 00003C 000408 00040E 000E3B 0013DB 
; ram_05C0                              = $05C0 ; 00003C 000408 00040E 000E3B 0013DB 
; ram_05C1                              = $05C1 ; 00003C 000408 00040E 000E3B 0013DB 
; ram_05C2                              = $05C2 ; 00003C 000408 00040E 000E3B 0013DB 
; ram_05C3                              = $05C3 ; 00003C 000408 00040E 000E3B 0013DB 



; 
ram_obj_pos_Y_lo                        = $05C4 ; 00003C 000272 000346 000397 00039E 0003D1 0003D6 000608 0006D9 0007A1 000818 000E30 001D9C 0026ED 002A3A 002ACE 002DCF 002EBF 003073 003D31 003D37 00400F 0042C3 
    ram_plr_pos_Y_lo                        = ram_obj_pos_Y_lo ; 
; ram_05C5                              = $05C5 ; 00003C 001D9C 002EBF 003073 
; ram_05C6                              = $05C6 ; 00003C 000E30 000E93 000E99 000EA8 0011DF 0011E2 001D9C 003073 0030ED 00400F 
; ram_05C7                              = $05C7 ; 00003C 000AF5 000AFE 000E30 000E93 000E99 000EA8 0011DF 0011E2 001D9C 0028D6 002ACB 00400B 
; ram_05C8                              = $05C8 ; 00003C 00086A 000AF5 000AFE 000E30 000E93 000E99 000EA8 0011DF 0011E2 001521 001808 00182F 001837 001885 00188A 0018AB 0018B1 001D9C 00400B 00400F 0042C3 
; ram_05C9                              = $05C9 ; 00003C 00086A 000AF5 000AFE 000E30 000E93 000E99 000EA8 0011DF 0011E2 001728 00172E 001799 00179E 001808 0018AB 0018B1 001D9C 0028D6 0029A6 002ACB 00400B 00400F 0042C3 
; ram_05CA                              = $05CA ; 00003C 00086A 000AD9 000AE3 000AF5 000AFE 000E30 000E93 000E99 000EA8 0011DF 0011E2 001521 001526 001560 001567 001799 00179E 001808 001837 0018AB 0018B1 001D9C 0026E9 0028D6 0029A6 002ACB 00400B 00400F 0042C3 
; ram_05CB                              = $05CB ; 00003C 0006FF 0007A8 00086A 000AF5 000AFE 000E30 000E93 000E99 000EA8 0011DF 0011E2 0013D1 0013D6 001521 001526 001560 001567 001645 001799 00179E 001808 001837 001885 00188A 0018AB 0018B1 001D9C 0026E9 0028D6 0029A6 002A48 002A4D 002ACB 00400B 00400F 0042C3 
; ram_05CC                              = $05CC ; 00003C 00086A 000AD9 000AE3 000AF5 000AFE 000E30 000E93 000E99 000EA8 0011DF 0011E2 001330 0013D1 0013D6 001521 001526 001728 00172E 001799 00179E 001808 001837 001885 00188A 0018AB 0018B1 00199A 0019A0 001D9C 0026E9 0028D6 0029A6 002A0B 002A0E 002A48 002A4D 002A67 002ACB 002BBC 002BF4 00400B 00400F 0042C3 
; ram_05CD                              = $05CD ; 00003C 0007A8 00086A 000AD9 000AE3 000AF5 000AFE 000E30 000E93 000E99 000EA8 0011DF 0011E2 001330 0013D1 0013D6 001521 001526 001645 0016B9 0016D4 001728 00172E 001799 00179E 001808 00182F 001837 001885 00188A 0018AB 0018B1 00199A 0019A0 001D9C 0026E9 0028D6 0029A6 002A0B 002A0E 002A48 002A4D 002A67 002ACB 002BBC 002BF4 00400B 00400F 0042C3 
; ram_05CE                              = $05CE ; 00003C 0006FF 0007A8 00086A 000AD9 000AE3 000AF5 000AFE 000E30 000E93 000E99 000EA8 0011DF 0011E2 001330 0013D1 0013D6 001521 001526 001645 001728 00172E 001799 00179E 001808 00182F 001837 001885 00188A 0018AB 0018B1 001D9C 0026E9 0028D6 0029A6 002A0B 002A0E 002ACB 002BBC 002BF4 00400B 00400F 0042C3 
; ram_05CF                              = $05CF ; 00003C 0006FF 0007A8 00086A 000AD9 000AE3 000AF5 000AFE 000E30 000E93 000E99 000EA8 0011DF 0011E2 001330 0013D1 0013D6 001521 001526 001645 001728 00172E 001799 00179E 001808 00182F 001837 001885 00188A 0018AB 0018B1 001D15 001D1A 001D9C 0026E9 0028D6 0029A6 0029FC 002A48 002A4D 002A67 002ACB 002BBC 002BF4 00400B 00400F 0042C3 
; ram_05D0                              = $05D0 ; 00003C 0006FF 0007A8 00086A 000AD9 000AE3 000AF5 000AFE 000E30 000E93 000E99 000EA8 0011DF 0011E2 001330 0013D1 0013D6 001521 001526 001645 0016B9 0016D4 001728 00172E 001799 00179E 001808 00182F 001837 001885 00188A 0018AB 0018B1 00199A 0019A0 001D15 001D1A 001D9C 0026E9 0028D6 0029A6 0029FC 002A0B 002A0E 002A48 002A4D 002ACB 002BBC 002BF4 00400B 00400F 0042C3 
; ram_05D1                              = $05D1 ; 00003C 0006FF 0007A8 00086A 000AD9 000AE3 000AF5 000AFE 000E30 000E93 000E99 000EA8 0011DF 0011E2 001330 0013D1 0013D6 001521 001526 001645 001728 00172E 001799 00179E 001808 00182F 001837 001885 00188A 0018AB 0018B1 00199A 0019A0 001D15 001D1A 001D9C 0026E9 00270C 0028D6 0029A6 002A0B 002A0E 002A48 002A4D 002ACB 002BBC 002BF4 00400B 00400F 0042C3 
; ram_05D2                              = $05D2 ; 00003C 0006FF 0007A8 00086A 000AD9 000AE3 000AF5 000AFE 000E30 000E93 000E99 000EA8 0011DF 0011E2 001330 0013D1 0013D6 001521 001526 001645 0016B9 0016D4 001728 00172E 001799 00179E 001808 00182F 001837 001885 00188A 0018AB 0018B1 001ACC 001B1C 001D9C 0026E9 00270C 0028D6 0029A6 002A48 002A4D 002A67 002ACB 002B60 002BBC 002BF4 00400B 00400F 0042C3 
; ram_05D3                              = $05D3 ; 00003C 0006FF 0007A8 00086A 000AD9 000AE3 000AF5 000AFE 000E30 000E93 000E99 000EA8 0011DF 0011E2 001330 0013D1 0013D6 001521 001526 001645 001728 00172E 001799 00179E 001808 00182F 001837 001885 00188A 0018AB 0018B1 001A80 001AA8 001B16 001B34 001C52 001D9C 0026E9 00270C 0028D6 0029A6 002A1F 002A48 002A4D 002ACB 002BBC 002BF4 00400B 00400F 0042C3 



; 
ram_obj_gravity                         = $05D4 ; 00003C 0002E0 0002F6 000379 0003A3 0003B6 0003DF 0003ED 0004F6 000513 000E3E 0026DF 002705 002AC1 002B19 002B5B 004082 004110 
    ram_plr_gravity                         = ram_obj_gravity ; 
; ram_05D5                              = $05D5 ; 00003C 
; ram_05D6                              = $05D6 ; 00003C 000400 000E3E 001228 00309D 
; ram_05D7                              = $05D7 ; 00003C 000400 000B84 000E3E 002943 002A70 
; ram_05D8                              = $05D8 ; 00003C 000400 000B84 000E3E 001228 00125F 0013F4 0013F7 0014AE 00150F 001583 0017CA 0017F3 00181A 0018D0 0018FA 0019D7 002943 
; ram_05D9                              = $05D9 ; 00003C 000400 000B84 000E3E 001228 00125F 0013F4 0013F7 001583 0017A3 0017CA 0018D0 0018FA 0019D7 002943 002A70 
; ram_05DA                              = $05DA ; 00003C 000400 000B84 000E3E 001228 00125F 0013F4 0013F7 0014AE 00150F 001583 0017A3 0017CA 0017F3 0018D0 0018FA 002943 002A70 
; ram_05DB                              = $05DB ; 00003C 000400 0007AD 0007B5 0007B8 0007BE 0007C4 0007C7 000B84 000E3E 001228 00125F 0013DE 0013F4 0013F7 0014AE 00150F 001583 0017A3 0017CA 0018D0 0018FA 0019D7 002943 002A70 002A8E 002A98 002A9B 002AA8 002AB2 002AB5 
; ram_05DC                              = $05DC ; 00003C 000400 000B84 000E3E 001228 00125F 0013DE 0013F4 0013F7 0014AE 00150F 001583 0017A3 0017CA 0017F3 0018D0 0018FA 0019D7 002943 002A70 002A8E 002A98 002A9B 002AA8 002AB2 002AB5 
; ram_05DD                              = $05DD ; 00003C 000400 0007AD 0007B5 0007B8 0007BE 0007C4 0007C7 000B84 000E3E 001228 00125F 0013DE 0013F4 0013F7 0014AE 00150F 001583 0017A3 0017CA 0017F3 00181A 0018D0 0018FA 0019D7 002943 002A70 002A8E 002A98 002A9B 002AA8 002AB2 002AB5 
; ram_05DE                              = $05DE ; 00003C 000400 0007AD 0007B5 0007B8 0007BE 0007C4 0007C7 000B84 000E3E 001228 00125F 0013DE 0013F4 0013F7 0014AE 00150F 001583 0017A3 0017CA 0017F3 00181A 0018D0 0018FA 0019D7 002943 002A70 002A8E 002A98 002A9B 002AA8 002AB2 002AB5 
; ram_05DF                              = $05DF ; 00003C 000400 0007AD 0007B5 0007B8 0007BE 0007C4 0007C7 000B84 000E3E 001228 00125F 0013DE 0013F4 0013F7 0014AE 00150F 001583 0017A3 0017CA 0017F3 00181A 0018D0 0018FA 0019D7 001D33 002943 0029F6 002A70 002A8E 002A98 002A9B 002AA8 002AB2 002AB5 
; ram_05E0                              = $05E0 ; 00003C 000400 0007AD 0007B5 0007B8 0007BE 0007C4 0007C7 000B84 000E3E 001228 00125F 0013DE 0013F4 0013F7 0014AE 00150F 001583 0017A3 0017CA 0017F3 00181A 0018D0 0018FA 0019D7 001D33 002943 0029F6 002A70 002A8E 002A98 002A9B 002AA8 002AB2 002AB5 
; ram_05E1                              = $05E1 ; 00003C 000400 0007AD 0007B5 0007B8 0007BE 0007C4 0007C7 000B84 000E3E 001228 00125F 0013DE 0013F4 0013F7 0014AE 00150F 001583 001762 0017A3 0017CA 0017F3 00181A 0018D0 0018FA 0019D7 001D33 002943 002A70 002A8E 002A98 002A9B 002AA8 002AB2 002AB5 
; ram_05E2                              = $05E2 ; 00003C 000400 0007AD 0007B5 0007B8 0007BE 0007C4 0007C7 000B84 000E3E 001228 00125F 0013DE 0013F4 0013F7 0014AE 00150F 001583 0017A3 0017CA 0017F3 00181A 0018D0 0018FA 0019D7 002943 002A70 002A8E 002A98 002A9B 002AA8 002AB2 002AB5 
; ram_05E3                              = $05E3 ; 00003C 000400 0007AD 0007B5 0007B8 0007BE 0007C4 0007C7 000B84 000E3E 001228 00125F 0013DE 0013F4 0013F7 0014AE 00150F 001583 001762 0017A3 0017CA 0017F3 00181A 0018D0 0018FA 0019D7 001ABE 002943 002A70 002A8E 002A98 002A9B 002AA8 002AB2 002AB5 



; 
ram_05E4_obj                            = $05E4 ; 00003C 000E03 0011EC 003079 
; ram_05E5                              = $05E5 ; 00003C 0011EC 002E0E 003079 
; ram_05E6                              = $05E6 ; 00003C 000E03 000EAF 0011EC 003079 
; ram_05E7                              = $05E7 ; 00003C 000E03 000EAF 0011EC 
; ram_05E8                              = $05E8 ; 00003C 000E03 000EAF 0011EC 001964 
; ram_05E9                              = $05E9 ; 00003C 000E03 000EAF 0011EC 001964 
; ram_05EA                              = $05EA ; 00003C 000E03 000EAF 0011EC 
; ram_05EB                              = $05EB ; 00003C 000E03 000EAF 0011EC 001964 002D1B 
; ram_05EC                              = $05EC ; 00003C 000E03 000EAF 0011EC 00170B 001964 
; ram_05ED                              = $05ED ; 00003C 000E03 000EAF 0011EC 00170B 001964 002AE9 002D1B 
; ram_05EE                              = $05EE ; 00003C 000E03 000EAF 0011EC 001964 002D1B 
; ram_05EF                              = $05EF ; 00003C 000E03 000EAF 0011EC 00170B 001964 002D1B 
; ram_05F0                              = $05F0 ; 00003C 000E03 000EAF 0011EC 00170B 001964 002AE9 002D1B 
; ram_05F1                              = $05F1 ; 00003C 000E03 000EAF 0011EC 00170B 001964 002D1B 
; ram_05F2                              = $05F2 ; 00003C 000E03 000EAF 0011EC 00170B 001964 002AE9 002B65 002D1B 
; ram_05F3                              = $05F3 ; 00003C 000E03 000EAF 0011EC 00170B 001964 002D1B 



; 
ram_05F4_obj                            = $05F4 ; 00003C 000E09 000E2D 0011F2 00307F 0042BF 
; ram_05F5                              = $05F5 ; 00003C 0011F2 002E11 00307F 
; ram_05F6                              = $05F6 ; 00003C 000E09 000E2D 0011F2 00307F 
; ram_05F7                              = $05F7 ; 00003C 000E09 000E2D 0011F2 
; ram_05F8                              = $05F8 ; 00003C 000E09 000E2D 0011F2 001967 0042BF 
; ram_05F9                              = $05F9 ; 00003C 000E09 000E2D 0011F2 001967 0042BF 
; ram_05FA                              = $05FA ; 00003C 000E09 000E2D 0011F2 0042BF 
; ram_05FB                              = $05FB ; 00003C 000E09 000E2D 0011F2 0013CE 001967 002D1E 0042BF 
; ram_05FC                              = $05FC ; 00003C 000E09 000E2D 0011F2 0013CE 001710 001967 002BB9 0042BF 
; ram_05FD                              = $05FD ; 00003C 000E09 000E2D 0011F2 0013CE 001710 001967 002AEF 002BB9 002D1E 0042BF 
; ram_05FE                              = $05FE ; 00003C 000E09 000E2D 0011F2 0013CE 001967 002BB9 002D1E 0042BF 
; ram_05FF                              = $05FF ; 00003C 000E09 000E2D 0011F2 0013CE 001710 001967 002BB9 002D1E 0042BF 
; ram_0600                              = $0600 ; 00004F 000E09 000E2D 0011F2 0013CE 001710 001967 002AEF 002BB9 002D1E 0042BF 
; ram_0601                              = $0601 ; 00004F 000E09 000E2D 0011F2 0013CE 001710 001967 002BB9 002D1E 0042BF 
; ram_0602                              = $0602 ; 00004F 000E09 000E2D 0011F2 0013CE 001710 001967 002AEF 002B6A 002BB9 002D1E 0042BF 
; ram_0603                              = $0603 ; 00004F 000E09 000E2D 0011F2 0013CE 001710 001967 002BB9 002D1E 0042BF 



; 
ram_0604_obj                            = $0604 ; 00004F 000E0F 004020 0041B1 004273 
; ram_0605                              = $0605 ; 00004F 
; ram_0606                              = $0606 ; 00004F 000E0F 004020 0041B1 004273 
; ram_0607                              = $0607 ; 00004F 000E0F 00401C 
; ram_0608                              = $0608 ; 00004F 000E0F 00401C 004020 0041B1 004273 
; ram_0609                              = $0609 ; 00004F 000E0F 00401C 004020 0041B1 004273 
; ram_060A                              = $060A ; 00004F 000E0F 00401C 004020 0041B1 004273 
; ram_060B                              = $060B ; 00004F 000E0F 00401C 004020 0041B1 004273 
; ram_060C                              = $060C ; 00004F 000E0F 00401C 004020 0041B1 004273 
; ram_060D                              = $060D ; 00004F 000E0F 00401C 004020 0041B1 004273 
; ram_060E                              = $060E ; 00004F 000E0F 00401C 004020 0041B1 004273 
; ram_060F                              = $060F ; 00004F 000E0F 00401C 004020 0041B1 004273 
; ram_0610                              = $0610 ; 00004F 000E0F 00401C 004020 0041B1 004273 
; ram_0611                              = $0611 ; 00004F 000E0F 00401C 004020 0041B1 004273 
; ram_0612                              = $0612 ; 00004F 000E0F 00401C 004020 0041B1 004273 
; ram_0613                              = $0613 ; 00004F 000E0F 00401C 004020 0041B1 004273 



; 
ram_0614_obj                            = $0614 ; 00004F 000E15 004006 
; ram_0615                              = $0615 ; 00004F 
; ram_0616                              = $0616 ; 00004F 000E15 004006 
; ram_0617                              = $0617 ; 00004F 000E15 004002 
; ram_0618                              = $0618 ; 00004F 000E15 004002 004006 
; ram_0619                              = $0619 ; 00004F 000E15 004002 004006 
; ram_061A                              = $061A ; 00004F 000E15 004002 004006 
; ram_061B                              = $061B ; 00004F 000E15 004002 004006 
; ram_061C                              = $061C ; 00004F 000E15 004002 004006 
; ram_061D                              = $061D ; 00004F 000E15 004002 004006 
; ram_061E                              = $061E ; 00004F 000E15 004002 004006 
; ram_061F                              = $061F ; 00004F 000E15 004002 004006 
; ram_0620                              = $0620 ; 00004F 000E15 004002 004006 
; ram_0621                              = $0621 ; 00004F 000E15 004002 004006 
; ram_0622                              = $0622 ; 00004F 000E15 004002 004006 
; ram_0623                              = $0623 ; 00004F 000E15 004002 004006 



; timer before next animation
ram_obj_anim_timer                      = $0624 ; 00004F 000E47 001D5E 001DAF 001DB6 001DD5 001DE7 
; ram_0625                              = $0625 ; 00004F 001D5E 001DAF 001DB6 001DD5 
; ram_0626                              = $0626 ; 00004F 000E47 001D5E 001DAF 001DB6 001DD5 
; ram_0627                              = $0627 ; 00004F 000E47 
; ram_0628                              = $0628 ; 00004F 000E47 001D5E 001DAF 001DB6 001DD5 001DE7 
; ram_0629                              = $0629 ; 00004F 000E47 001D5E 001DAF 001DB6 001DD5 
; ram_062A                              = $062A ; 00004F 000E47 001D5E 001DAF 001DB6 001DD5 
; ram_062B                              = $062B ; 00004F 000716 000E47 001D5E 001DAF 001DB6 001DD5 002D28 
; ram_062C                              = $062C ; 00004F 000E47 001D5E 001DAF 001DB6 001DD5 
; ram_062D                              = $062D ; 00004F 000716 000E47 001D5E 001DAF 001DB6 001DD5 001DE7 002D28 
; ram_062E                              = $062E ; 00004F 000716 000E47 001D5E 001DAF 001DB6 001DD5 001DE7 002D28 
; ram_062F                              = $062F ; 00004F 000716 000E47 001D5E 001DAF 001DB6 001DD5 001DE7 002D28 
; ram_0630                              = $0630 ; 00004F 000716 000E47 001D5E 001DAF 001DB6 001DD5 001DE7 002D28 
; ram_0631                              = $0631 ; 00004F 000716 000E47 001D5E 001DAF 001DB6 001DD5 001DE7 002D28 
; ram_0632                              = $0632 ; 00004F 000716 000E47 001D5E 001DAF 001DB6 001DD5 001DE7 002D28 
; ram_0633                              = $0633 ; 00004F 000E47 001D5E 001DAF 001DB6 001DD5 001DE7 002D28 



; 
ram_0634_obj                            = $0634 ; 00004F 000E4C 001D63 001DAC 001DCE 
; ram_0635                              = $0635 ; 00004F 001D63 001DAC 001DCE 
; ram_0636                              = $0636 ; 00004F 000E4C 001D63 001DAC 001DCE 
; ram_0637                              = $0637 ; 00004F 000E4C 
; ram_0638                              = $0638 ; 00004F 000E4C 001D63 001DAC 001DCE 
; ram_0639                              = $0639 ; 00004F 000E4C 001D63 001DAC 001DCE 
; ram_063A                              = $063A ; 00004F 000E4C 001D63 001DAC 001DCE 
; ram_063B                              = $063B ; 00004F 000E4C 001D63 001DAC 001DCE 
; ram_063C                              = $063C ; 00004F 000E4C 001D63 001DAC 001DCE 
; ram_063D                              = $063D ; 00004F 000E4C 001D63 001DAC 001DCE 
; ram_063E                              = $063E ; 00004F 000E4C 001D63 001DAC 001DCE 
; ram_063F                              = $063F ; 00004F 000E4C 001D63 001DAC 001DCE 
; ram_0640                              = $0640 ; 00004F 000E4C 001D63 001DAC 001DCE 
; ram_0641                              = $0641 ; 00004F 000E4C 001D63 001DAC 001DCE 
; ram_0642                              = $0642 ; 00004F 000E4C 001D63 001DAC 001DCE 
; ram_0643                              = $0643 ; 00004F 000E4C 001D63 001DAC 001DCE 



; 
ram_0644_obj                            = $0644 ; 00004F 000E5E 0011F8 001D69 001D7D 001DA2 
; ram_0645                              = $0645 ; 00004F 0011F8 001D69 001D7D 001DA2 
; ram_0646                              = $0646 ; 00004F 000E5E 0011F8 001D69 001D7D 001DA2 
; ram_0647                              = $0647 ; 00004F 000E70 0011F8 001D7D 
; ram_0648                              = $0648 ; 00004F 000E5E 000E70 0011F8 001D69 001D7D 001DA2 
; ram_0649                              = $0649 ; 00004F 000E5E 000E70 0011F8 001D69 001D7D 001DA2 
; ram_064A                              = $064A ; 00004F 000E5E 000E70 0011E6 0011F8 001D69 001D7D 001DA2 002717 
; ram_064B                              = $064B ; 00004F 000E5E 000E70 0011E6 0011F8 001D69 001D7D 001DA2 002717 
; ram_064C                              = $064C ; 00004F 000E5E 000E70 0011E6 0011F8 001D69 001D7D 001DA2 002717 
; ram_064D                              = $064D ; 00004F 000E5E 000E70 0011E6 0011F8 001D69 001D7D 001DA2 002717 
; ram_064E                              = $064E ; 00004F 000E5E 000E70 0011E6 0011F8 001D69 001D7D 001DA2 002717 
; ram_064F                              = $064F ; 00004F 000E5E 000E70 0011E6 0011F8 001D69 001D7D 001DA2 002717 
; ram_0650                              = $0650 ; 00004F 000E5E 000E70 0011E6 0011F8 001D69 001D7D 001DA2 002717 
; ram_0651                              = $0651 ; 00004F 000E5E 000E70 0011E6 0011F8 001D69 001D7D 001DA2 0026FD 002717 
; ram_0652                              = $0652 ; 00004F 000E5E 000E70 0011E6 0011F8 001D69 001D7D 001DA2 0026FD 002717 
; ram_0653                              = $0653 ; 00004F 000E5E 000E70 0011E6 0011F8 001C35 001D69 001D7D 001DA2 0026FD 002717 



; 
ram_0654_obj                            = $0654 ; 00004F 000E65 001D6F 001DA7 
; ram_0655                              = $0655 ; 00004F 001D6F 001DA7 
; ram_0656                              = $0656 ; 00004F 000E65 001D6F 001DA7 
; ram_0657                              = $0657 ; 00004F 000E6B 
; ram_0658                              = $0658 ; 00004F 000E65 000E6B 001D6F 001DA7 
; ram_0659                              = $0659 ; 00004F 000E65 000E6B 001D6F 001DA7 
; ram_065A                              = $065A ; 00004F 000E65 000E6B 001D6F 001DA7 
; ram_065B                              = $065B ; 00004F 000E65 000E6B 001D6F 001DA7 
; ram_065C                              = $065C ; 00004F 000E65 000E6B 001D6F 001DA7 
; ram_065D                              = $065D ; 00004F 000E65 000E6B 001D6F 001DA7 
; ram_065E                              = $065E ; 00004F 000E65 000E6B 001D6F 001DA7 
; ram_065F                              = $065F ; 00004F 000E65 000E6B 001D6F 001DA7 
; ram_0660                              = $0660 ; 00004F 000E65 000E6B 001D6F 001DA7 
; ram_0661                              = $0661 ; 00004F 000E65 000E6B 001D6F 001DA7 
; ram_0662                              = $0662 ; 00004F 000E65 000E6B 001D6F 001DA7 
; ram_0663                              = $0663 ; 00004F 000E65 000E6B 001D6F 001DA7 



; item id from an egg? see con_item_id
; sometimes holds con_add_score
ram_0664_obj                            = $0664 ; 00004F 0002D3 0002D8 0002EB 000E41 0030DF 00311D 00408C 
    ram_0664_plr                            = ram_0664_obj ; 
; ram_0665                              = $0665 ; 00004F 
; ram_0666                              = $0666 ; 00004F 000840 000843 00084A 000872 000E41 
; ram_0667                              = $0667 ; 00004F 000AF1 000B8C 000B9D 000BB7 000E41 002921 0029BB 0029DE 002D5C 
; ram_0668                              = $0668 ; 00004F 000840 000843 00084A 000872 000AF1 000B8C 000B9D 000BB7 000E41 0012F7 001550 001580 0017B5 0017CD 0017E9 0017FF 0018C9 001900 001948 001986 0019C1 0019C7 0019E6 001BBF 001BC2 002D5C 00416B 004170 
; ram_0669                              = $0669 ; 00004F 000840 000843 00084A 000872 000AF1 000B8C 000B9D 000BB7 000E41 0012F7 001550 001580 0017B0 0017CD 0017E9 0017FF 0018C9 001900 001948 001986 0019C1 0019C7 0019E6 001BBF 001BC2 0028E8 0029BB 002D5C 00416B 004170 
; ram_066A                              = $066A ; 00004F 000840 000843 00084A 000872 000AF1 000B8C 000B9D 000BB7 000E41 0012F7 001433 00143A 001550 00155D 001580 0017B0 0017B5 0017CD 0017E9 0017FF 0018C9 001900 001BBF 001BC2 0026F6 0028E8 002921 0029BB 0029DE 002D5C 00416B 004170 
; ram_066B                              = $066B ; 00004F 000756 000840 000843 00084A 000872 000AF1 000B8C 000B9D 000BB7 000E41 0012F7 001550 00155D 001580 0017B5 0017CD 0017E9 0017FF 0018C9 001900 001948 001986 0019C1 0019C7 0019E6 001BBF 001BC2 0026F6 0028E8 002965 0029B1 0029BB 0029DE 002B3C 002B51 002D5C 00416B 004170 
; ram_066C                              = $066C ; 00004F 000840 000843 00084A 000872 000AF1 000B8C 000B9D 000BB7 000C35 000E41 00131A 001550 001580 0017B0 0017CD 0017E9 0017FF 0018C9 001900 001948 001986 0019C1 0019C7 0019E6 001BBF 001BC2 0026F6 0028E8 002921 002965 0029B1 0029BB 0029DE 002B3C 002BEA 002C01 002CA6 002D5C 00416B 004170 
; ram_066D                              = $066D ; 00004F 000756 000840 000843 00084A 000872 000AF1 000B8C 000B9D 000BB7 000C35 000E41 0012F7 00131A 001550 001580 0017B0 0017B5 0017CD 0017E9 0017FF 0018C9 001900 001948 001986 0019C1 0019C7 0019E6 001BBF 001BC2 0026F6 0028E8 002921 002965 0029B1 0029BB 0029DE 002ADA 002B01 002B07 002BEA 002C01 002CA6 002D5C 00416B 004170 
; ram_066E                              = $066E ; 00004F 000756 000840 000843 00084A 000872 000AF1 000B8C 000B9D 000BB7 000C35 000E41 0012F7 00131A 001550 001580 0017B0 0017B5 0017CD 0017E9 0017FF 0018C9 001900 001948 001986 0019C1 0019C7 0019E6 001BBF 001BC2 0026F6 0028E8 002921 002965 0029BB 0029DE 002BEA 002C01 002CA6 002D5C 00416B 004170 
; ram_066F                              = $066F ; 00004F 000723 000756 000840 000843 00084A 000872 000AF1 000B8C 000B9D 000BB7 000C35 000E41 0012F7 00131A 001433 00143A 001550 001580 0017B5 0017CD 0017E9 0017FF 0018C9 001900 001948 001986 0019C1 0019C7 0019E6 001BBF 001BC2 0026F6 0028E8 002921 002965 0029B1 0029BB 0029DE 002B3C 002BEA 002C01 002CA6 002D5C 00416B 004170 
; ram_0670                              = $0670 ; 00004F 000723 000756 000840 000843 00084A 000872 000AF1 000B8C 000B9D 000BB7 000C35 000E41 00131A 001433 00143A 001550 001580 0017B0 0017B5 0017CD 0017E9 0017FF 0018C9 001900 001948 001986 0019C1 0019C7 0019E6 001BBF 001BC2 0026F6 0028E8 002921 002965 0029B1 0029BB 0029DE 002ADA 002B01 002B07 002B3C 002B51 002BEA 002C01 002CA6 002D5C 00416B 004170 
; ram_0671                              = $0671 ; 00004F 000723 000756 000840 000843 00084A 000872 000AF1 000B8C 000B9D 000BB7 000C35 000E41 0012F7 00131A 001433 00143A 001550 001580 001756 00175D 00176A 001773 0017B5 0017CD 0017E9 0017FF 0018C9 001900 001948 001986 0019C1 0019C7 0019E6 001BBF 001BC2 0026F6 0028E8 002921 002965 0029BB 0029DE 002B3C 002BEA 002C01 002CA6 002D5C 00416B 004170 
; ram_0672                              = $0672 ; 00004F 000723 000756 000840 000843 00084A 000872 000AF1 000B8C 000B9D 000BB7 000C35 000E41 0012F7 00131A 001550 001580 0017B0 0017B5 0017CD 0017E9 0017FF 0018C9 001900 001948 001986 0019C1 0019C7 0019E6 001BBF 001BC2 0026F6 0028E8 002921 002965 0029BB 0029DE 002ADA 002B01 002B07 002B3C 002B51 002B74 002BEA 002C01 002CA6 002D5C 00416B 004170 
; ram_0673                              = $0673 ; 00004F 000723 000756 000840 000843 00084A 000872 000AF1 000B8C 000B9D 000BB7 000C35 000E41 0012F7 00131A 001550 001580 001756 00175D 00176A 001773 0017B0 0017B5 0017CD 0017E9 0017FF 0018C9 001900 001948 001986 0019C1 0019C7 0019E6 001BBF 001BC2 001C2B 001C3B 0026F6 0028E8 002921 002965 0029BB 0029DE 002B3C 002B51 002BEA 002C01 002CA6 002D5C 00416B 004170 



; 
ram_0674_obj                            = $0674 ; 00004F 0002C1 0002C6 000307 000363 000375 000E44 004087 
    ram_0674_plr                            = ram_0674_obj ; 
; ram_0675                              = $0675 ; 00004F 
; ram_0676                              = $0676 ; 00004F 000E44 
; ram_0677                              = $0677 ; 00004F 000B04 000B26 000B33 000B3B 000B4B 000B50 000B5A 000B6A 000B77 000B89 000E44 002916 0029D6 
; ram_0678                              = $0678 ; 00004F 000B04 000B26 000B4B 000B50 000B6A 000B77 000B89 000E44 0012FC 001553 001587 001597 00159C 00159F 0017BD 0017C7 0018CC 0018F5 001903 001923 00192D 00195B 001977 
; ram_0679                              = $0679 ; 00004F 000B04 000B26 000B33 000B3B 000B4B 000B50 000B5A 000B6A 000B77 000B89 000E44 0012FC 001553 001587 001597 00159C 00159F 0017BD 0017C7 0018CC 0018F5 001903 001923 00192D 00195B 001977 
; ram_067A                              = $067A ; 00004F 000B04 000B26 000B33 000B3B 000B4B 000B50 000B5A 000B6A 000B77 000B89 000E44 0012FC 0014FA 0014FE 001553 00156A 00156D 001587 001597 00159C 00159F 0017BD 0017C7 0018CC 0018F5 001903 001923 00192D 002916 0029D6 
; ram_067B                              = $067B ; 00004F 000760 000B04 000B26 000B33 000B3B 000B4B 000B50 000B5A 000B6A 000B77 000B89 000E44 0012FC 001553 00156A 00156D 001587 001597 00159C 00159F 0017BD 0017C7 0018CC 0018F5 001903 001923 00192D 00195B 001977 00294D 0029D6 002B20 002B24 
; ram_067C                              = $067C ; 00004F 000B04 000B26 000B33 000B3B 000B4B 000B50 000B5A 000B6A 000B77 000B89 000E44 0014FA 0014FE 001553 001587 001597 00159C 00159F 0016A9 001703 0017BD 0017C7 0018CC 0018F5 001903 001923 00192D 00195B 001977 0019B0 002916 00294D 0029D6 002B20 002B24 
; ram_067D                              = $067D ; 00004F 000760 000B04 000B26 000B33 000B3B 000B4B 000B50 000B5A 000B6A 000B77 000B89 000E44 0012FC 0014FA 0014FE 001553 001587 001597 00159C 00159F 0016A9 001703 0017BD 0017C7 0018CC 0018F5 001903 001923 00192D 00195B 001977 0019B0 002916 00294D 0029D6 002B24 
; ram_067E                              = $067E ; 00004F 000760 000B04 000B26 000B33 000B3B 000B4B 000B50 000B5A 000B6A 000B77 000B89 000E44 0012FC 0014FA 0014FE 001553 001587 001597 00159C 00159F 0017BD 0017C7 0018CC 0018F5 001903 001923 00192D 00195B 001977 002916 00294D 0029D6 002B24 
; ram_067F                              = $067F ; 00004F 000728 000760 000B04 000B26 000B33 000B3B 000B4B 000B50 000B5A 000B6A 000B77 000B89 000E44 0012FC 0014FA 0014FE 001553 001587 001597 00159C 00159F 0016A9 001703 0017BD 0017C7 0018CC 0018F5 001903 001923 00192D 00195B 001977 001CD8 001CEF 001CFC 002916 00294D 0029D6 002B20 002B24 
; ram_0680                              = $0680 ; 00004F 000728 000760 000B04 000B26 000B33 000B3B 000B4B 000B50 000B5A 000B6A 000B77 000B89 000E44 0014FA 0014FE 001553 001587 001597 00159C 00159F 0016A9 001703 0017BD 0017C7 0018CC 0018F5 001903 001923 00192D 00195B 001977 0019B0 001CD8 001CEF 001CFC 002916 00294D 0029D6 002B20 002B24 
; ram_0681                              = $0681 ; 00004F 000728 000760 000B04 000B26 000B33 000B3B 000B4B 000B50 000B5A 000B6A 000B77 000B89 000E44 0012FC 0014FA 0014FE 001553 001587 001597 00159C 00159F 0017BD 0017C7 0018CC 0018F5 001903 001923 00192D 00195B 001977 0019B0 001CD8 001CEF 001CFC 002916 00294D 0029D6 002B20 002B24 
; ram_0682                              = $0682 ; 00004F 000728 000760 000B04 000B26 000B33 000B3B 000B4B 000B50 000B5A 000B6A 000B77 000B89 000E44 0012FC 0014FA 0014FE 001553 001587 001597 00159C 00159F 0016A9 001703 0017BD 0017C7 0018CC 0018F5 001903 001923 00192D 00195B 001977 001BAC 001BB1 001BD0 002916 00294D 0029D6 002B20 002B24 
; ram_0683                              = $0683 ; 00004F 000728 000760 000B04 000B26 000B33 000B3B 000B4B 000B50 000B5A 000B6A 000B77 000B89 000E44 0012FC 0014FA 0014FE 001553 001587 001597 00159C 00159F 0016A9 001703 0017BD 0017C7 0018CC 0018F5 001903 001923 00192D 00195B 001977 001AE0 001AE3 001AEF 001C06 001C1B 002916 00294D 0029D6 002B20 002B24 



; 
ram_0684_obj                            = $0684 ; 00004F 0005FD 000622 000DE8 000E50 000EE0 0011FE 001D82 
    ram_0684_plr                            = ram_0684_obj ; 
; ram_0685                              = $0685 ; 00004F 000EE0 0011FE 001D82 
; ram_0686                              = $0686 ; 00004F 000DE8 000E50 000EE0 0011FE 001D79 001D82 003093 0030F6 003115 
; ram_0687                              = $0687 ; 00004F 000B09 000B42 000B72 000DE8 000E50 000EE0 0011FE 001D82 
; ram_0688                              = $0688 ; 00004F 000B09 000B72 000DE8 000E50 000EE0 0011FE 001D79 001D82 
; ram_0689                              = $0689 ; 00004F 000B09 000B42 000B72 000DE8 000E50 000EE0 0011FE 001D79 001D82 0028ED 
; ram_068A                              = $068A ; 00004F 000B09 000B42 000B72 000DE8 000E50 000EE0 0011FE 001D79 001D82 0028ED 
; ram_068B                              = $068B ; 00004F 0006C0 000739 000B09 000B42 000B72 000DE8 000E50 000EE0 0011FE 00138E 0013A9 001D79 001D82 0028ED 
; ram_068C                              = $068C ; 00004F 000B09 000B42 000B72 000DE8 000E50 000EE0 0011FE 00138E 0013A9 001D79 001D82 0028ED 
; ram_068D                              = $068D ; 00004F 0006B1 0006C0 000B09 000B42 000B72 000DE8 000E50 000EE0 0011FE 001D79 001D82 0028ED 
; ram_068E                              = $068E ; 00004F 0006C0 000739 000B09 000B42 000B72 000DE8 000E50 000EE0 0011FE 00138E 0013A9 001D79 001D82 0028ED 
; ram_068F                              = $068F ; 00004F 0006C0 000739 000B09 000B42 000B72 000DE8 000E50 000EE0 0011FE 00138E 0013A9 001D79 001D82 0028ED 
; ram_0690                              = $0690 ; 00004F 0006C0 000739 000B09 000B42 000B72 000DE8 000E50 000EE0 0011FE 00138E 0013A9 001D79 001D82 0028ED 
; ram_0691                              = $0691 ; 00004F 0006B1 0006C0 000739 000B09 000B42 000B72 000DE8 000E50 000EE0 0011FE 00138E 0013A9 001D79 001D82 0028ED 
; ram_0692                              = $0692 ; 00004F 0006B1 0006C0 000739 000B09 000B42 000B72 000DE8 000E50 000EE0 0011FE 00138E 0013A9 001B05 001D79 001D82 0028ED 
; ram_0693                              = $0693 ; 00004F 0006C0 000739 000B09 000B42 000B72 000DE8 000E50 000EE0 0011FE 00138E 0013A9 001AFF 001D79 001D82 0028ED 



; check if contain HECTOR word
; if check failed, reset score
ram_reset_check                         = $0694 ; 000969 00097A 
; ram_0695                              = $0695 ; 000969 00097A 
; ram_0696                              = $0696 ; 000969 00097A 
; ram_0697                              = $0697 ; 000969 00097A 
; ram_0698                              = $0698 ; 000969 00097A 
; ram_0699                              = $0699 ; 000969 00097A 



; first address holds E4
; bytes F5-FE are tiles for numbers 0-9
ram_score                               = $069A ; 00095B 0009DA 004360 004371 
; ram_069B                              = $069B ; 0008F3 000907 00098C 0044BD 
; ram_069C                              = $069C ; 0008F3 000907 00098C 0044BD 
; ram_069D                              = $069D ; 0008F3 000907 00098C 0009DA 000A42 000A4B 000A4F 000A52 0044BD 
; ram_069E                              = $069E ; 0008F3 000907 00098C 0009DA 000A42 000A4B 000A4F 000A52 000A5B 0044BD 
; ram_069F                              = $069F ; 0008F3 000907 00098C 000A18 000A2C 000A3B 000A42 000A4B 000A4F 000A52 000A5B 000A76 0044BD 
; ram_06A0                              = $06A0 ; 0008F3 000907 00098C 000A18 000A2C 000A3B 000A42 000A4B 000A4F 000A52 000A5B 000A76 0044BD 
; ram_06A1                              = $06A1 ; 0008F3 000907 000995 000A2C 000A3B 000A76 0044BD 
; ram_06A2                              = $06A2 ; 00066E 000999 0044BD 



; first address holds E4
; bytes F5-FE are tiles for numbers 0-9
ram_hiscore                             = $06A3 ; 00095E 004360 004371 
; ram_06A4                              = $06A4 ; 0008EB 00090A 00098C 0044BD 
; ram_06A5                              = $06A5 ; 0008EB 00090A 00098C 0044BD 
; ram_06A6                              = $06A6 ; 0008EB 00090A 00098C 0044BD 
; ram_06A7                              = $06A7 ; 0008EB 00090A 00098C 0044BD 
; ram_06A8                              = $06A8 ; 0008EB 00090A 00098C 0044BD 
; ram_06A9                              = $06A9 ; 0008EB 00090A 00098C 002D50 0044BD 
; ram_06AA                              = $06AA ; 0008EB 00090A 000995 0044BD 
; ram_06AB                              = $06AB ; 000999 0044BD 



; first address holds E4
; bytes F5-FE are tiles for numbers 0-9
ram_06AC_score                          = $06AC ; 000961 004360 004371 
; ram_06AD                              = $06AD ; 00098C 000A82 000AC3 002FF5 0044BD 
; ram_06AE                              = $06AE ; 00098C 000A82 000AC3 002FF5 0044BD 
; ram_06AF                              = $06AF ; 00098C 000A82 000AC3 002FF5 0044BD 
; ram_06B0                              = $06B0 ; 00098C 000A82 000AC3 002FF5 0044BD 
; ram_06B1                              = $06B1 ; 00098C 000A42 000A4B 000A4F 000A52 000A76 000A82 000A8F 000AAE 000AC3 002FF5 0044BD 
; ram_06B2                              = $06B2 ; 00098C 000A42 000A4B 000A4F 000A52 000A5B 000A76 000A82 000A8F 000AAA 000AAE 000AC3 002FF5 0044BD 
; ram_06B3                              = $06B3 ; 000995 000A2C 000A3B 000A76 000A9C 000AAA 000AC3 002FF5 0044BD 
; ram_06B4                              = $06B4 ; 000999 0044BD 



; first address holds E4
; bytes F5-FE are tiles for numbers 0-9
ram_06B5_score                          = $06B5 ; 000964 004360 004371 
; ram_06B6                              = $06B6 ; 00098C 000A82 000AC3 002FF8 0044BD 
; ram_06B7                              = $06B7 ; 00098C 000A82 000AC3 002FF8 0044BD 
; ram_06B8                              = $06B8 ; 00098C 000A82 000AC3 002FF8 0044BD 
; ram_06B9                              = $06B9 ; 00098C 000A82 000AC3 002FF8 0044BD 
; ram_06BA                              = $06BA ; 00098C 000A76 000A82 000A8F 000AAE 000AC3 002FF8 0044BD 
; ram_06BB                              = $06BB ; 00098C 000A76 000A82 000A8F 000AAA 000AAE 000AC3 002FF8 0044BD 
; ram_06BC                              = $06BC ; 000995 000A76 000A9C 000AAA 000AC3 002FF8 0044BD 
; ram_06BD                              = $06BD ; 000999 0044BD 



; free addresses
; ram_06BE                              = $06BE ; 
; ram_06BF                              = $06BF ; 
; ram_06C0                              = $06C0 ; 
; ram_06C1                              = $06C1 ; 
; ram_06C2                              = $06C2 ; 
; ram_06C3                              = $06C3 ; 
; ram_06C4                              = $06C4 ; 
; ram_06C5                              = $06C5 ; 
; ram_06C6                              = $06C6 ; 
; ram_06C7                              = $06C7 ; 
; ram_06C8                              = $06C8 ; 
; ram_06C9                              = $06C9 ; 
; ram_06CA                              = $06CA ; 
; ram_06CB                              = $06CB ; 
; ram_06CC                              = $06CC ; 
; ram_06CD                              = $06CD ; 
; ram_06CE                              = $06CE ; 
; ram_06CF                              = $06CF ; 
; ram_06D0                              = $06D0 ; 
; ram_06D1                              = $06D1 ; 
; ram_06D2                              = $06D2 ; 
; ram_06D3                              = $06D3 ; 
; ram_06D4                              = $06D4 ; 
; ram_06D5                              = $06D5 ; 
; ram_06D6                              = $06D6 ; 
; ram_06D7                              = $06D7 ; 
; ram_06D8                              = $06D8 ; 
; ram_06D9                              = $06D9 ; 
; ram_06DA                              = $06DA ; 
; ram_06DB                              = $06DB ; 
; ram_06DC                              = $06DC ; 
; ram_06DD                              = $06DD ; 
; ram_06DE                              = $06DE ; 
; ram_06DF                              = $06DF ; 
; ram_06E0                              = $06E0 ; 
; ram_06E1                              = $06E1 ; 
; ram_06E2                              = $06E2 ; 
; ram_06E3                              = $06E3 ; 
; ram_06E4                              = $06E4 ; 
; ram_06E5                              = $06E5 ; 
; ram_06E6                              = $06E6 ; 
; ram_06E7                              = $06E7 ; 
; ram_06E8                              = $06E8 ; 
; ram_06E9                              = $06E9 ; 
; ram_06EA                              = $06EA ; 
; ram_06EB                              = $06EB ; 
; ram_06EC                              = $06EC ; 
; ram_06ED                              = $06ED ; 
; ram_06EE                              = $06EE ; 
; ram_06EF                              = $06EF ; 
; ram_06F0                              = $06F0 ; 
; ram_06F1                              = $06F1 ; 
; ram_06F2                              = $06F2 ; 
; ram_06F3                              = $06F3 ; 
; ram_06F4                              = $06F4 ; 
; ram_06F5                              = $06F5 ; 
; ram_06F6                              = $06F6 ; 
; ram_06F7                              = $06F7 ; 
; ram_06F8                              = $06F8 ; 
; ram_06F9                              = $06F9 ; 
; ram_06FA                              = $06FA ; 
; ram_06FB                              = $06FB ; 
; ram_06FC                              = $06FC ; 
; ram_06FD                              = $06FD ; 
; ram_06FE                              = $06FE ; 
; ram_06FF                              = $06FF ; 



; 0700-07FF (100) OAM sprites
ram_oam                                 = $0700 ; for common links
ram_spr_Y                               = $0700 ; 00003F 0042EA 00439A 0044F8 
ram_spr_T                               = $0701 ; 00003F 0043A0 0044F8 
ram_spr_A                               = $0702 ; 00003F 0043A6 0044F8 
ram_spr_X                               = $0703 ; 00003F 0043AB 0044F8 
; ram_0704                              = $0704 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0705                              = $0705 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_0706                              = $0706 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_0707                              = $0707 ; 00003F 0043AB 0044D2 0044F8 
; ram_0708                              = $0708 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0709                              = $0709 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_070A                              = $070A ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_070B                              = $070B ; 00003F 0043AB 0044D2 0044F8 
; ram_070C                              = $070C ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_070D                              = $070D ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_070E                              = $070E ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_070F                              = $070F ; 00003F 0043AB 0044D2 0044F8 
; ram_0710                              = $0710 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0711                              = $0711 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_0712                              = $0712 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_0713                              = $0713 ; 00003F 0043AB 0044D2 0044F8 
; ram_0714                              = $0714 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0715                              = $0715 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_0716                              = $0716 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_0717                              = $0717 ; 00003F 0043AB 0044D2 0044F8 
; ram_0718                              = $0718 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0719                              = $0719 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_071A                              = $071A ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_071B                              = $071B ; 00003F 0043AB 0044D2 0044F8 
; ram_071C                              = $071C ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_071D                              = $071D ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_071E                              = $071E ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_071F                              = $071F ; 00003F 0043AB 0044D2 0044F8 
; ram_0720                              = $0720 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0721                              = $0721 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_0722                              = $0722 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_0723                              = $0723 ; 00003F 0043AB 0044D2 0044F8 
; ram_0724                              = $0724 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0725                              = $0725 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_0726                              = $0726 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_0727                              = $0727 ; 00003F 0043AB 0044D2 0044F8 
; ram_0728                              = $0728 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0729                              = $0729 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_072A                              = $072A ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_072B                              = $072B ; 00003F 0043AB 0044D2 0044F8 
; ram_072C                              = $072C ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_072D                              = $072D ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_072E                              = $072E ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_072F                              = $072F ; 00003F 0043AB 0044D2 0044F8 
; ram_0730                              = $0730 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0731                              = $0731 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_0732                              = $0732 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_0733                              = $0733 ; 00003F 0043AB 0044D2 0044F8 
; ram_0734                              = $0734 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0735                              = $0735 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_0736                              = $0736 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_0737                              = $0737 ; 00003F 0043AB 0044D2 0044F8 
; ram_0738                              = $0738 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0739                              = $0739 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_073A                              = $073A ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_073B                              = $073B ; 00003F 0043AB 0044D2 0044F8 
; ram_073C                              = $073C ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_073D                              = $073D ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_073E                              = $073E ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_073F                              = $073F ; 00003F 0043AB 0044D2 0044F8 
; ram_0740                              = $0740 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0741                              = $0741 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_0742                              = $0742 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_0743                              = $0743 ; 00003F 0043AB 0044D2 0044F8 
; ram_0744                              = $0744 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0745                              = $0745 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_0746                              = $0746 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_0747                              = $0747 ; 00003F 0043AB 0044D2 0044F8 
; ram_0748                              = $0748 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0749                              = $0749 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_074A                              = $074A ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_074B                              = $074B ; 00003F 0043AB 0044D2 0044F8 
; ram_074C                              = $074C ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_074D                              = $074D ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_074E                              = $074E ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_074F                              = $074F ; 00003F 0043AB 0044D2 0044F8 
; ram_0750                              = $0750 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0751                              = $0751 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_0752                              = $0752 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_0753                              = $0753 ; 00003F 0043AB 0044D2 0044F8 
; ram_0754                              = $0754 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0755                              = $0755 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_0756                              = $0756 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_0757                              = $0757 ; 00003F 0043AB 0044D2 0044F8 
; ram_0758                              = $0758 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0759                              = $0759 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_075A                              = $075A ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_075B                              = $075B ; 00003F 0043AB 0044D2 0044F8 
; ram_075C                              = $075C ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_075D                              = $075D ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_075E                              = $075E ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_075F                              = $075F ; 00003F 0043AB 0044D2 0044F8 
; ram_0760                              = $0760 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0761                              = $0761 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_0762                              = $0762 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_0763                              = $0763 ; 00003F 0043AB 0044D2 0044F8 
; ram_0764                              = $0764 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0765                              = $0765 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_0766                              = $0766 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_0767                              = $0767 ; 00003F 0043AB 0044D2 0044F8 
; ram_0768                              = $0768 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0769                              = $0769 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_076A                              = $076A ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_076B                              = $076B ; 00003F 0043AB 0044D2 0044F8 
; ram_076C                              = $076C ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_076D                              = $076D ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_076E                              = $076E ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_076F                              = $076F ; 00003F 0043AB 0044D2 0044F8 
; ram_0770                              = $0770 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0771                              = $0771 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_0772                              = $0772 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_0773                              = $0773 ; 00003F 0043AB 0044D2 0044F8 
; ram_0774                              = $0774 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0775                              = $0775 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_0776                              = $0776 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_0777                              = $0777 ; 00003F 0043AB 0044D2 0044F8 
; ram_0778                              = $0778 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0779                              = $0779 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_077A                              = $077A ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_077B                              = $077B ; 00003F 0043AB 0044D2 0044F8 
; ram_077C                              = $077C ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_077D                              = $077D ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_077E                              = $077E ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_077F                              = $077F ; 00003F 0043AB 0044D2 0044F8 
; ram_0780                              = $0780 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0781                              = $0781 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_0782                              = $0782 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_0783                              = $0783 ; 00003F 0043AB 0044D2 0044F8 
; ram_0784                              = $0784 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0785                              = $0785 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_0786                              = $0786 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_0787                              = $0787 ; 00003F 0043AB 0044D2 0044F8 
; ram_0788                              = $0788 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0789                              = $0789 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_078A                              = $078A ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_078B                              = $078B ; 00003F 0043AB 0044D2 0044F8 
; ram_078C                              = $078C ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_078D                              = $078D ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_078E                              = $078E ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_078F                              = $078F ; 00003F 0043AB 0044D2 0044F8 
; ram_0790                              = $0790 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0791                              = $0791 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_0792                              = $0792 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_0793                              = $0793 ; 00003F 0043AB 0044D2 0044F8 
; ram_0794                              = $0794 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0795                              = $0795 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_0796                              = $0796 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_0797                              = $0797 ; 00003F 0043AB 0044D2 0044F8 
; ram_0798                              = $0798 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_0799                              = $0799 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_079A                              = $079A ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_079B                              = $079B ; 00003F 0043AB 0044D2 0044F8 
; ram_079C                              = $079C ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_079D                              = $079D ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_079E                              = $079E ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_079F                              = $079F ; 00003F 0043AB 0044D2 0044F8 
; ram_07A0                              = $07A0 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07A1                              = $07A1 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07A2                              = $07A2 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07A3                              = $07A3 ; 00003F 0043AB 0044D2 0044F8 
; ram_07A4                              = $07A4 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07A5                              = $07A5 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07A6                              = $07A6 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07A7                              = $07A7 ; 00003F 0043AB 0044D2 0044F8 
; ram_07A8                              = $07A8 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07A9                              = $07A9 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07AA                              = $07AA ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07AB                              = $07AB ; 00003F 0043AB 0044D2 0044F8 
; ram_07AC                              = $07AC ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07AD                              = $07AD ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07AE                              = $07AE ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07AF                              = $07AF ; 00003F 0043AB 0044D2 0044F8 
; ram_07B0                              = $07B0 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07B1                              = $07B1 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07B2                              = $07B2 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07B3                              = $07B3 ; 00003F 0043AB 0044D2 0044F8 
; ram_07B4                              = $07B4 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07B5                              = $07B5 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07B6                              = $07B6 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07B7                              = $07B7 ; 00003F 0043AB 0044D2 0044F8 
; ram_07B8                              = $07B8 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07B9                              = $07B9 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07BA                              = $07BA ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07BB                              = $07BB ; 00003F 0043AB 0044D2 0044F8 
; ram_07BC                              = $07BC ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07BD                              = $07BD ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07BE                              = $07BE ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07BF                              = $07BF ; 00003F 0043AB 0044D2 0044F8 
; ram_07C0                              = $07C0 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07C1                              = $07C1 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07C2                              = $07C2 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07C3                              = $07C3 ; 00003F 0043AB 0044D2 0044F8 
; ram_07C4                              = $07C4 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07C5                              = $07C5 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07C6                              = $07C6 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07C7                              = $07C7 ; 00003F 0043AB 0044D2 0044F8 
; ram_07C8                              = $07C8 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07C9                              = $07C9 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07CA                              = $07CA ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07CB                              = $07CB ; 00003F 0043AB 0044D2 0044F8 
; ram_07CC                              = $07CC ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07CD                              = $07CD ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07CE                              = $07CE ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07CF                              = $07CF ; 00003F 0043AB 0044D2 0044F8 
; ram_07D0                              = $07D0 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07D1                              = $07D1 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07D2                              = $07D2 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07D3                              = $07D3 ; 00003F 0043AB 0044D2 0044F8 
; ram_07D4                              = $07D4 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07D5                              = $07D5 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07D6                              = $07D6 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07D7                              = $07D7 ; 00003F 0043AB 0044D2 0044F8 
; ram_07D8                              = $07D8 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07D9                              = $07D9 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07DA                              = $07DA ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07DB                              = $07DB ; 00003F 0043AB 0044D2 0044F8 
; ram_07DC                              = $07DC ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07DD                              = $07DD ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07DE                              = $07DE ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07DF                              = $07DF ; 00003F 0043AB 0044D2 0044F8 
; ram_07E0                              = $07E0 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07E1                              = $07E1 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07E2                              = $07E2 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07E3                              = $07E3 ; 00003F 0043AB 0044D2 0044F8 
; ram_07E4                              = $07E4 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07E5                              = $07E5 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07E6                              = $07E6 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07E7                              = $07E7 ; 00003F 0043AB 0044D2 0044F8 
; ram_07E8                              = $07E8 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07E9                              = $07E9 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07EA                              = $07EA ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07EB                              = $07EB ; 00003F 0043AB 0044D2 0044F8 
; ram_07EC                              = $07EC ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07ED                              = $07ED ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07EE                              = $07EE ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07EF                              = $07EF ; 00003F 0043AB 0044D2 0044F8 
; ram_07F0                              = $07F0 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07F1                              = $07F1 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07F2                              = $07F2 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07F3                              = $07F3 ; 00003F 0043AB 0044D2 0044F8 
; ram_07F4                              = $07F4 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07F5                              = $07F5 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07F6                              = $07F6 ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07F7                              = $07F7 ; 00003F 0043AB 0044D2 0044F8 
; ram_07F8                              = $07F8 ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07F9                              = $07F9 ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07FA                              = $07FA ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07FB                              = $07FB ; 00003F 0043AB 0044D2 0044F8 
; ram_07FC                              = $07FC ; 00003F 0042EA 00439A 0044CD 0044F8 
; ram_07FD                              = $07FD ; 00003F 0043A0 0044B3 0044C3 0044F8 
; ram_07FE                              = $07FE ; 00003F 0043A6 0044A9 0044C8 0044F8 
; ram_07FF                              = $07FF ; 00003F 0043AB 0044D2 0044F8 
