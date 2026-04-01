; to the right are ROM File addresses of instructions which were using these RAM addresses



; 
ram_0000_temp                           = $0000 ; 01D7BD(W)  01E05B(Wi) 
    ram_0000_t01_irq_handler_jmp            = ram_0000_temp ; 



; used only in pair with ram_0000_temp
; ram_0001                              = $0001 ; 01D7C2(W)  01E05B(Wi) 



; if flag is set, copy a specific buffer to PPU during NMI
; see con_buffer_ready
ram_buffers_flags                       = $0002 ; 008E6B(R)  0090CC(R)  0090D0(W)  00913F(R)  009143(W)  0116D0(R)  0116D2(W)  018557(R)  01867A(W)  018910(W)  018C93(W)  018CCF(W)  018D85(W)  019135(W)  0191BF(R)  0191C3(W)  0191FC(R)  0192A7(W)  01938F(W)  01953B(W)  019881(R)  019885(W)  019B34(R)  019BBA(R)  019BBE(W)  019F82(W)  01C00A(R)  01C00C(W)  01C56E(R)  01C570(W)  01C664(R)  01C666(W)  01D053(R)  01D055(W)  01D093(R)  01D097(W)  01D51A(W)  01D6C6(W)  01DAF6(W)  01DB3A(W)  01DDAF(R)  01DDB3(W)  01E05B(Wi) 01E2C8(R)  01E323(R)  01E327(W)  01E344(R)  01E348(W)  01E366(R)  01E36A(W)  01E396(R)  01E39A(W)  01E3B8(R)  01E3BC(W)  01E3DA(R)  01E3DE(W)  01E445(W)  01E4C8(W)  01E7B5(W)  01E9D4(R)  01E9D6(W)  01EF31(R)  01EF33(W)  01F2C9(W)  01F567(R)  01F56B(W)  01F68A(R)  01F68C(W)  01F922(R)  01F926(W)  



; 
ram_0003_temp                           = $0003 ; 01E05B(Wi) 01E2D5(W)  
    ram_0003_t01_buffer_handler_jmp         = ram_0003_temp ; 2 addresses 0003-0004



; used only in pair with ram_0003_temp
; ram_0004                              = $0004 ; 01E05B(Wi) 01E2DA(W)  



; 
ram_0005_temp                           = $0005 ; 01E05B(Wi) 01E1B9(Wx) 01E1C7(R)  
    ram_0005_t01_buttons                    = ram_0005_temp ; 2 addresses 0005-0006



; used only in pair with ram_0005_temp
; ram_0006                              = $0006 ; 01E05B(Wi) 01E1B9(Wx) 01E1C1(R)  



; free addresses
; ram_0007                              = $0007 ; 01E05B(Wi) 
; ram_0008                              = $0008 ; 01E05B(Wi) 



; 00 = disabled
; FF = enabled
ram_rendefing_flag                      = $0009 ; 01E05B(Wi) 01E0C8(W)  01E0D6(W)  01E1F6(R)  



; flag is checked during NMI
; 00 = reset in progress (inivialization code is executing)
; FF = reset is done
ram_reset_flag                          = $000A ; 01E017(W)  01E05B(Wi) 01E084(W)  01E221(R)  



; handlers at 0x01D7D3
; see con_irq_handler
ram_irq_handler                         = $000B ; 01D78C(W)  01D7B6(R)  01D7F0(W)  01D844(W)  01D8BB(W)  01D911(W)  01D967(W)  01D9BD(W)  01D9E1(W)  01E05B(Wi) 



; 00 = disable oam?
; 01 = 
ram_nmi_flag                            = $000C ; 01941B(W)  019725(W)  019D89(W)  01C3C8(W)  01E05B(Wi) 01E0AC(W)  01E179(W)  01E1FD(R)  01E203(W)  01FAEE(R)  01FB0D(W)  



; index for sprite palette 0x008814
; see con_000D
ram_000D_spr_pal_index                  = $000D ; 01165C(W)  014052(W)  015BC4(W)  01BEF3(W)  01D50F(W)  01D6BB(W)  01DA84(R)  01DDA6(W)  01E05B(Wi) 01E96D(W)  01E9CD(W)  01F2BE(W)  



; index for ram_02C0_ppu_buffer
ram_000E_buffer_index                   = $000E ; 00913D(W)  018676(W)  01890C(W)  018C8F(W)  018CAC(R)  018CCB(W)  019131(W)  0191BD(W)  0192A3(W)  01938B(W)  01987F(W)  019BB8(W)  01D091(W)  01E05B(Wi) 01E362(R)  



; bzk optimize
ram_000F_buffer_index                   = $000F ; 0090B1(W)  01E05B(Wi) 01E340(R)  



; 
ram_0010_ppu_lo                         = $0010 ; 0090A7(W)  01E05B(Wi) 01E333(R)  
ram_0011_ppu_hi                         = $0011 ; 0090AC(W)  01E05B(Wi) 01E331(R)  



; bzk optimize
ram_0012_useless_data_buffer            = $0012 ; 0090B5(W)  01E05B(Wi) 
; ram_0013                              = $0013 ; 0090B9(W)  01E05B(Wi) 



; frame counter
ram_frm_cnt                             = $0014 ; 009052(R)  01163B(R)  014361(R)  0144DE(R)  014D45(R)  014E67(R)  0154C9(R)  018B27(R)  019E3A(R)  01DD4F(R)  01E05B(Wi) 01E092(R)  01E0A2(R)  01E240(W)  01EA96(R)  01FC26(R)  01FC50(R)  01FE08(R)  01FEA6(R)  01FED5(R)  



; bzk optimize, useless 32-bit counter
ram_0015_useless_counter                = $0015 ; 01E05B(Wi) 01E094(W)  
; ram_0015                              = $0016 ; 01E05B(Wi) 01E098(W)  
; ram_0017                              = $0017 ; 01E05B(Wi) 01E09C(W)  
; ram_0018                              = $0018 ; 01E05B(Wi) 01E0A0(W)  



; 
ram_0019_timer_lo                       = $0019 ; 01DAFA(W)  01DB3E(W)  01DC09(W)  01E05B(Wi) 01E0AE(R)  01E0B4(W)  01E0B6(R)  01EF3F(W)  
ram_001A_timer_hi                       = $001A ; 01DAFE(W)  01DB42(W)  01DC0D(W)  01E05B(Wi) 01E0B8(R)  01EF43(W)  



;     01
;   08  05
; 03  00  04
;   07  06
;     02
; 00 = player is not holding Dpad
ram_001B_player_angle                   = $001B ; 0160A4(R)  0160AC(R)  0160B1(R)  016138(R)  016174(R)  0163AA(R)  0163D7(R)  016CE3(R)  016DF9(R)  017322(R)  0173A2(R)  0173D2(R)  01751C(R)  0175AB(R)  01DEBB(W)  01E05B(Wi) 01E1D1(W)  



; bzk optimize, useless address, same as ram_001B_player_angle, but for player 2
ram_001C_useless                        = $001C ; 015FE5(R)  01E05B(Wi) 01E1DB(W)  



; free addresses
; ram_001D                              = $001D ; 01E05B(Wi) 
; ram_001E                              = $001E ; 01E05B(Wi) 
; ram_001F                              = $001F ; 01E05B(Wi) 



; chr banks (background)
; see con_chr_bank_bg
ram_chr_bank_bg                         = $0020 ; 018051(W)  018EB7(W)  018FBA(W)  0195CE(W)  0199D1(W)  01C5EF(W)  01DB90(W)  01E05B(Wi) 01E27B(Ry) 01E884(Rx) 01E897(Wx) 
; ram_0021                              = $0021 ; 008E9C(W)  018055(W)  018EBB(W)  018FAC(W)  0195D3(W)  0196FE(W)  0199D5(W)  019D9E(R)  019DA5(W)  019EB8(W)  01C5F4(W)  01C634(W)  01C63B(W)  01DB95(W)  01E05B(Wi) 01E288(Ry) 01E884(Rx) 01E897(Wx) 
; ram_0022                              = $0022 ; 01E05B(Wi) 01E884(Rx) 01E897(Wx) 
; ram_0023                              = $0023 ; 01E05B(Wi) 01E884(Rx) 01E897(Wx) 



; chr banks (sprites)
; see con_chr_bank_spr
ram_chr_bank_spr                        = $0024 ; 016ACF(W)  016EF3(W)  018059(W)  0195D8(W)  01C366(W)  01E05B(Wi) 01E298(Ry) 01E87F(Rx) 01E892(Wx) 
; ram_0025                              = $0025 ; 01693D(W)  016A2C(W)  016EB0(W)  017D04(W)  01805D(W)  0195DD(W)  01C36A(W)  01E05B(Wi) 01E298(Ry) 01E87F(Rx) 01E892(Wx) 
; ram_0026                              = $0026 ; 010177(W)  0112A4(W)  011A87(W)  011E0B(W)  0140EC(W)  0195E2(W)  01BAE0(W)  01C36E(W)  01E05B(Wi) 01E298(Ry) 01E87F(Rx) 01E892(Wx) 
; ram_0027                              = $0027 ; 010173(W)  0112A0(W)  011A83(W)  011E07(W)  0195E7(W)  01BAE7(W)  01C372(W)  01E05B(Wi) 01E298(Ry) 01E87F(Rx) 01E892(Wx) 



; free addresses
; ram_0028                              = $0028 ; 01E05B(Wi) 
; ram_0029                              = $0029 ; 01E05B(Wi) 
; ram_002A                              = $002A ; 01E05B(Wi) 
; ram_002B                              = $002B ; 01E05B(Wi) 
; ram_002C                              = $002C ; 01E05B(Wi) 



; index for reading IRQ config
; see con_irq_data
ram_irq_data_index                      = $002D ; 01C4FA(W)  01D787(R)  01E05B(Wi) 01E3E3(W)  01E520(W)  01E56E(W)  01EBB3(W)  01EBC4(W)  01EBD6(W)  01EBEB(W)  01EBF5(W)  01ED66(W)  01ED83(W)  01F353(W)  



; used as X in STA E000,X
; 00 = disabled
; 01 = enabled
ram_irq_flag                            = $002E ; 01D796(W)  01E05B(Wi) 01E250(R)  



; scanline number for register
ram_scanline                            = $002F ; 01D791(W)  01E05B(Wi) 01E248(R)  



; free addresses
; ram_0030                              = $0030 ; 01E05B(Wi) 
; ram_0031                              = $0031 ; 01E05B(Wi) 
; ram_0032                              = $0032 ; 01E05B(Wi) 
; ram_0033                              = $0033 ; 01E05B(Wi) 



; 
ram_0034_scroll_X_hi                    = $0034 ; 018BF3(R)  018BF9(W)  01D8B0(R)  01E05B(Wi) 01E505(W)  
ram_0035_scroll_X_lo                    = $0035 ; 018BEC(R)  018BF1(W)  01D8A2(R)  01E05B(Wi) 01E4FF(W)  



; see con_btn
ram_buttons                             = $0036 ; 008F4B(R)  009033(R)  016086(R)  01608E(R)  0160E3(R)  016157(R)  01638C(R)  016B6A(R)  016C8F(R)  017217(R)  017227(R)  017354(R)  0173BC(R)  0174BC(R)  018426(R)  01847D(R)  01855B(R)  0185C7(R)  0186E6(R)  0187A2(R)  018813(R)  018C22(R)  018CD8(R)  018D1E(R)  018D59(R)  018D8B(R)  018EE8(R)  019024(R)  01904C(R)  01908D(R)  019430(R)  019738(R)  019B15(R)  019DB0(R)  019E18(R)  01DCFF(R)  01DEA5(R)  01DEB3(W)  01E05B(Wi) 01E19E(R)  01E1C9(W)  01F228(R)  01F2CE(R)  
; ram_0037                              = $0037 ; 015C5E(R)  015CA9(R)  015D67(R)  015DB0(R)  015DD6(R)  015E0A(R)  015EB5(R)  015ECF(R)  019B3A(R)  01BFA5(R)  01DD16(R)  01E05B(Wi) 01E1A2(R)  01E1C5(W)  01E1D3(R)  



; previous buttons from the last frame
ram_prev_buttons                        = $0038 ; 018428(R)  01847F(R)  01855D(R)  0185C9(R)  0186E8(R)  0187A4(R)  018815(R)  018C24(R)  018D91(R)  018EEA(R)  019026(R)  01904E(R)  019432(R)  01973A(R)  019B17(R)  019DB2(R)  01DD01(R)  01E05B(Wi) 01E1A0(W)  01F2D6(R)  
; ram_0039                              = $0039 ; 019B3C(R)  01DD18(R)  01E05B(Wi) 01E1A4(W)  



; a copy of register values
ram_for_2000                            = $003A ; 018BE4(R)  018BEA(W)  019067(R)  01D7E5(R)  01D839(R)  01D8AC(R)  01D904(R)  01D95A(R)  01D9B0(R)  01D9D4(R)  01DA02(R)  01DA24(R)  01E05B(Wi) 01E068(W)  01E0F7(R)  01E255(R)  01E32A(R)  01E36D(R)  01E39D(R)  01E489(R)  01E48D(W)  01E507(R)  01E510(W)  01E567(W)  01EB66(R)  01EB6B(W)  01EC7F(R)  01EC85(W)  01F31C(R)  01F322(W)  01F336(R)  
ram_for_2001                            = $003B ; 0180B4(W)  019064(W)  01906C(R)  01C01A(W)  01E05B(Wi) 01E06F(W)  01E0BD(R)  01E0C1(W)  01E0CB(R)  01E0CF(W)  01E0FC(R)  01E213(R)  01E7AD(W)  



; area (00-26)
ram_city                                = $003C ; 00BE58(W)  00BE8F(W)  013896(R)  0138FB(R)  013CE1(R)  013DC8(R)  014045(R)  01792F(R)  017ED0(R)  0180D2(W)  018AF0(W)  0192D0(R)  019C33(R)  019C68(R)  019C70(W)  01A4AE(R)  01A522(R)  01A56D(R)  01A62D(R)  01A644(R)  01A692(W)  01A6CD(R)  01A748(R)  01C447(R)  01C544(R)  01C572(R)  01CADC(R)  01CAF2(R)  01CD33(R)  01CE0E(R)  01CE49(R)  01CEBB(R)  01CF74(R)  01CF82(W)  01CFB7(R)  01CFC4(W)  01D107(R)  01D12A(R)  01D140(R)  01D1B5(R)  01DB89(R)  01DD57(W)  01E05B(Wi) 01E4E2(R)  01E4E8(W)  01E550(W)  01E692(R)  01E735(R)  01E78B(R)  01E8D0(R)  01E90C(R)  01E95C(R)  01E980(R)  01E9D9(R)  01EA10(R)  01EA51(R)  01EA78(R)  01EA90(R)  01EAAC(R)  01EB52(R)  01ED88(R)  01F146(R)  01F1D8(R)  01F295(R)  01F32F(R)  01F6F2(R)  01F9D1(R)  01FF21(W)  



; 
ram_003D_plr                            = $003D ; 01E05B(Wi) 01E4E4(Wx) 01E54E(Rx) 01F253(Rx) 01F276(Rx) 
; ram_003E                              = $003E ; 01E05B(Wi) 01E4E4(Wx) 01E54E(Rx) 01F253(Rx) 01F276(Rx) 



; 0040 for 2005 register
ram_scroll_Y_array                      = $003F ; for common links
    ram_scroll_Y_hi                         = $003F ; 013AD6(R)  013B09(R)  013EA3(R)  013EC1(R)  013F2F(R)  016FB9(R)  016FCC(W)  016FD9(W)  017975(R)  019175(R)  01CD97(R)  01CDB2(R)  01CDB6(R)  01CDCB(R)  01E05B(Wi) 01E47D(W)  01E4EE(Rx) 01E559(Wx) 01E617(W)  01E7C6(R)  01E911(W)  01E92E(R)  01EAD4(W)  01EB5C(W)  01EC49(R)  01EC70(R)  01EC98(R)  01ECD9(R)  01ECDD(W)  01ECF9(R)  01ECFD(W)  01F00E(R)  01F01F(W)  01F03A(R)  01F048(W)  01F153(R)  01F311(R)  01F315(W)  01F33D(R)  01F349(W)  01F735(R)  01F75A(R)  
    ram_scroll_Y_lo                         = $0040 ; 010278(R)  013ADD(R)  013B13(R)  013EB1(R)  013F00(R)  013FA2(R)  016D8D(R)  016FBE(R)  016FCE(W)  016FDE(W)  0171DD(R)  01795F(R)  019076(R)  01917E(R)  01A15E(R)  01A234(R)  01CD82(R)  01CDAC(R)  01CDC5(R)  01E05B(Wi) 01E106(R)  01E2B7(R)  01E2BD(R)  01E47F(W)  01E4EE(Rx) 01E559(Wx) 01E7CA(R)  01E933(R)  01EAF3(W)  01EB61(W)  01EC4D(R)  01EC8A(R)  01ECCB(R)  01ECD7(W)  01ECEF(R)  01ECF7(W)  01F021(W)  01F027(R)  01F034(R)  01F04C(W)  01F157(R)  01F302(R)  01F30F(W)  01F342(R)  01F34B(W)  01F747(R)  01F76A(R)  
    ram_scroll_Y_fr                         = $0041 ; 01E05B(Wi) 01E481(W)  01E4EE(Rx) 01E559(Wx) 01EAF5(W)  01ECC5(R)  01ECC7(W)  01ECE9(R)  01ECEB(W)  



; 0043 for 2005 register
ram_scroll_X_array                      = $0042 ; for common links
    ram_scroll_X_hi                         = $0042 ; 013B3D(R)  013B66(R)  013C37(R)  013C9B(R)  013F88(R)  0172C8(R)  017957(R)  018BDA(R)  018BDE(W)  01CD0B(R)  01E05B(Wi) 01E483(W)  01E4F3(Rx) 01E503(W)  01E55E(Wx) 01E5BA(W)  01E60E(W)  01E7C0(R)  01E819(R)  01E924(R)  01EADE(W)  01EC51(R)  01EC77(R)  01ECA5(R)  01ED13(R)  01ED17(W)  01ED2D(R)  01ED31(W)  01ED37(W)  01F05C(R)  01F06D(W)  01F08A(R)  01F098(W)  01F17F(R)  01F196(R)  01F3B5(R)  01F3E4(R)  
    ram_scroll_X_lo                         = $0043 ; 013B44(R)  013B70(R)  013C41(R)  013CA5(R)  013E73(R)  013F81(R)  017952(R)  018BD3(R)  018BD8(W)  019071(R)  01A153(R)  01CD05(R)  01E05B(Wi) 01E101(R)  01E2A9(R)  01E485(W)  01E4F3(Rx) 01E55E(Wx) 01E7B7(R)  01E929(R)  01EAEF(W)  01EC55(R)  01EC9F(R)  01ED0F(R)  01ED11(W)  01ED29(R)  01ED2B(W)  01ED39(W)  01EE5C(R)  01F071(W)  01F077(R)  01F084(R)  01F0A9(W)  01F15D(R)  01F165(R)  01F3C7(R)  01F3F4(R)  
    ram_scroll_X_fr                         = $0044 ; 01E05B(Wi) 01E487(W)  01E4F3(Rx) 01E55E(Wx) 01EAF1(W)  01ED09(R)  01ED0B(W)  01ED23(R)  01ED25(W)  01ED3B(W)  



; 
ram_0045_temp                           = $0045 ; 017049(W)  0170F5(W)  01713F(W)  01E05B(Wi) 01E71B(W)  01EB01(W)  01ECC9(R)  01ECED(R)  
    ram_0045_t01_scroll_Y_lo                = ram_0045_temp ; 
    ram_0045_t02_scroll_Y_lo                = ram_0045_temp ; 
    
    ram_0045_tFD_useless                    = ram_0045_temp ; bzk optimize
    ram_0045_tFE_useless                    = ram_0045_temp ; bzk optimize
    ram_0045_tFF_useless                    = ram_0045_temp ; bzk optimize



; 
ram_0046_temp                           = $0046 ; 01704B(W)  0170F0(W)  01713A(W)  01E05B(Wi) 01E71D(W)  01EB03(W)  01ECC2(R)  01ECE6(R)  
    ram_0046_t01_scroll_Y_fr                = ram_0046_temp ; 
    ram_0046_t02_scroll_Y_fr                = ram_0046_temp ; 
    
    ram_0046_tFD_useless                    = ram_0046_temp ; bzk optimize
    ram_0046_tFE_useless                    = ram_0046_temp ; bzk optimize
    ram_0046_tFF_useless                    = ram_0046_temp ; bzk optimize



; 
ram_0047_temp                           = $0047 ; 017045(W)  017076(W)  01709E(W)  01E05B(Wi) 01E71F(W)  01EB05(W)  01ED0D(R)  01ED27(R)  
    ram_0047_t01_scroll_X_lo                = ram_0047_temp ; 
    ram_0047_t02_scroll_X_lo                = ram_0047_temp ;
    
    ram_0047_tFD_useless                    = ram_0047_temp ; bzk optimize
    ram_0047_tFE_useless                    = ram_0047_temp ; bzk optimize
    ram_0047_tFF_useless                    = ram_0047_temp ; bzk optimize



; 
ram_0048_temp                           = $0048 ; 017047(W)  017071(W)  017099(W)  01E05B(Wi) 01E721(W)  01EB07(W)  01ED06(R)  01ED20(R)  
    ram_0048_t01_scroll_X_fr                = ram_0048_temp ; 
    ram_0048_t02_scroll_X_fr                = ram_0048_temp ; 
    
    ram_0048_tFD_useless                    = ram_0048_temp ; bzk optimize
    ram_0048_tFE_useless                    = ram_0048_temp ; bzk optimize
    ram_0048_tFF_useless                    = ram_0048_temp ; bzk optimize



; a copy of register value A000
; bzk optimize, useless address, always 00
ram_0049_useless_00                     = $0049 ; 018063(W)  01D306(W)  01E05B(Wi) 01E417(W)  01E419(R)  



; free address
; ram_004A                              = $004A ; 01E05B(Wi) 



; handlers at 0x013AB2 0x01EC59 0x010E5A
; see con_004B
ram_004B_script                         = $004B ; 010E5A(R)  013AB0(R)  013E65(R)  013F70(R)  01704D(W)  017127(W)  01E05B(Wi) 01E723(W)  01EB09(R)  01EB39(W)  01EC59(R)  



; 
ram_prg_bank_city                       = $004C ; 01CDF5(R)  01E05B(Wi) 01E8D5(W)  01F42C(R)  01F7D6(R)  



; background palette index for 0x0087B4
ram_004D_palette_index                  = $004D ; 01C549(W)  01C650(W)  01CF8D(W)  01DA43(R)  01DD5C(W)  01E05B(Wi) 01E95E(W)  01F2A5(W)  



; 
ram_004E_temp                           = $004E ; 01DAD9(W)  01DADD(R)  01DB03(W)  01DB1D(W)  01DB21(R)  01DB47(W)  01E05B(Wi) 
    ram_004E_t01_loop_counter               = ram_004E_temp ; 
    ram_004E_t02_loop_counter               = ram_004E_temp ; 



; palette buffer size
; 10 = background colors only
; 20 = background + sprite colors
ram_004F_pal_buffer_size                = $004F ; 0116CC(W)  018D81(W)  019537(W)  019F7E(W)  01C006(W)  01C56A(W)  01C660(W)  01D04F(W)  01D516(W)  01D6C2(W)  01DAF2(W)  01DB36(W)  01DDAD(W)  01E05B(Wi) 01E30F(R)  01EF2D(W)  01F2C5(W)  



; 
ram_0050_data_index                     = $0050 ; 0180B6(W)  01C031(W)  01D0F4(W)  01D0F9(R)  01D0FE(W)  01D115(R)  01E05B(Wi) 01F47D(W)  01F47F(W)  01F49C(W)  01F83B(W)  01F936(R)  



; 
ram_0051_temp                           = $0051 ; 018F32(W)  01D151(W)  01D192(R)  01D1A5(W)  01D1B3(R)  01D21D(R)  01D223(R)  01D23B(R)  01D242(R)  01D2AB(R)  01D2E6(R)  01D2EB(W)  01E05B(Wi) 
    ram_0051_t01                            = ram_0051_temp ; 
    ram_0051_t02                            = ram_0051_temp ; 



; free addresses
; ram_0052                              = $0052 ; 01E05B(Wi) 
; ram_0053                              = $0053 ; 01E05B(Wi) 
; ram_0054                              = $0054 ; 01E05B(Wi) 
; ram_0055                              = $0055 ; 01E05B(Wi) 
; ram_0056                              = $0056 ; 01E05B(Wi) 
; ram_0057                              = $0057 ; 01E05B(Wi) 
; ram_0058                              = $0058 ; 01E05B(Wi) 
; ram_0059                              = $0059 ; 01E05B(Wi) 
; ram_005A                              = $005A ; 01E05B(Wi) 



; 
ram_005B_temp                           = $005B ; 008ED7(W)  008F65(W)  00BEAF(W)  00BEED(W)  010072(W)  010161(W)  0102D7(W)  010359(W)  01038B(W)  0103C1(W)  0103E3(W)  010C06(W)  010CD7(W)  010E61(W)  010FF2(W)  011267(W)  01172A(W)  01181E(W)  011888(W)  011A27(W)  011C62(W)  011D16(W)  011DF5(W)  01389D(W)  013AB7(W)  013CE8(W)  013D11(W)  013DCF(W)  014023(W)  01408E(W)  015F83(W)  0161B3(W)  016688(W)  01678B(W)  016926(W)  01692D(R)  016A0E(W)  016AB7(W)  016E1F(W)  016EC6(W)  0173FF(W)  017936(W)  017B5B(W)  017BAF(W)  017CF7(W)  017D19(R)  0181C4(W)  018234(W)  0182A7(W)  018311(W)  018340(W)  0183B6(W)  0183E5(W)  018653(W)  0188B2(W)  018AFB(W)  018BA2(W)  018BBE(W)  018DC5(W)  018DD4(W)  018DEE(W)  018DFD(W)  018E3C(R)  018E4F(R)  018E54(W)  018E5F(R)  018E64(W)  018F37(W)  01919B(W)  01922F(W)  01933C(W)  019486(W)  019601(W)  019646(W)  0196B8(W)  01991B(W)  019A5A(W)  019A66(R)  019A94(R)  019B70(W)  019B81(W)  019B83(W)  019B8C(R)  019BF1(W)  019C85(W)  019E53(W)  019F22(W)  01A0FE(W)  01A302(W)  01A326(W)  01B74B(W)  01C1F2(W)  01C208(W)  01C219(R)  01C235(R)  01C29D(W)  01C2B3(R)  01C404(W)  01C44E(W)  01C51C(W)  01C551(W)  01C8B2(W)  01C8BE(W)  01C99F(W)  01CA77(W)  01CC09(W)  01CC7A(W)  01CD3A(W)  01CD6F(W)  01CE15(W)  01CEC7(W)  01CF35(W)  01D10E(W)  01D2A3(R)  01D2EF(R)  01D2F4(W)  01D4A1(W)  01D4BA(W)  01D5F1(W)  01DA4A(W)  01DA98(W)  01DBA6(W)  01DF0E(W)  01E05B(Wi) 01E42A(W)  01EB79(W)  01EC60(W)  01EDA3(W)  01EFE0(W)  01F39E(W)  01F535(W)  01F71E(W)  01FB84(W)  01FBE8(W)  01FCDA(W)  01FE24(W)  01FE84(W)  
    ram_005B_t00_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t01_spr_data                   = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t02_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t03_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t04_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t05_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t06_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t07_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t08_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t09_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t0A_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t0B_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t0C_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t0D_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t0E_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t0F_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t10_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t11_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t12_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t13_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t14_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t15_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t16_spr_pal_data               = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t17_bg_pal_data                = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t18_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t19_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t1A_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t1B_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t1C_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t1D_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t1E_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t1F_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t20_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t21_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t22_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t23_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t24_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t25_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t26_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t27_bg_pal_data                = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t28_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t29_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t2A_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t2B_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t2C_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t2D_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t2E_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t2F_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t30_credit_text_data           = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t31_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t32_ppu_data                   = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t33_ppu_data                   = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t34_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t35_bg_pal_data                = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t36_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t37_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t38_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t39_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t3A_bg_pal_data                = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t3B_bg_pal_data                = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t3C_metatile_id_data           = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t3D_ppu_data                   = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t3E_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t3F_data                       = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t40_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t41_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t42_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t43_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t44_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t45_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t46_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t47_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t48_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t49_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t4A_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t4B_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t4C_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t4D_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t4E_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t4F_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t50_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t51_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t52_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t53_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t54_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t55_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t56_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t57_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t58_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t59_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t5A_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t5B_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t5C_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t5D_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t5E_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t5F_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t60_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t61_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t62_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t63_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t64_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t65_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t66_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t67_jmp                        = ram_005B_temp ; 2 addresses 005B-005C
    ram_005B_t68_ppu_lo                     = ram_005B_temp ; 
    ram_005B_t69_ppu_lo                     = ram_005B_temp ; 
    ram_005B_t6A_data_ptr_lo                = ram_005B_temp ; 
    ram_005B_t6B_ppu_lo                     = ram_005B_temp ; 
    ram_005B_t6C_ppu_lo                     = ram_005B_temp ; 
    ram_005B_t6D_ppu_lo                     = ram_005B_temp ; 



; 
ram_005C_temp                           = $005C ; 008EDC(W)  008F6A(W)  00BEB4(W)  00BEF2(W)  010077(W)  010166(W)  0102DC(W)  01035E(W)  010390(W)  0103C6(W)  0103E8(W)  010C0B(W)  010CDC(W)  010E66(W)  010FF7(W)  01126D(W)  01172F(W)  011823(W)  01188D(W)  011A2D(W)  011C67(W)  011D1B(W)  011DFA(W)  0138A2(W)  013ABC(W)  013CED(W)  013D16(W)  013DD4(W)  014028(W)  014093(W)  015F88(W)  0161B8(W)  01668D(W)  016790(W)  01692B(W)  016932(R)  016A13(W)  016ABC(W)  016E24(W)  016ECB(W)  017404(W)  01793B(W)  017B60(W)  017BB4(W)  017CFC(W)  017D1E(R)  0181CC(W)  018239(W)  0182AC(W)  018319(W)  018345(W)  0183BB(W)  0183EA(W)  018658(W)  0188B7(W)  018B00(W)  018BA7(W)  018BC3(W)  018DC9(W)  018DD0(W)  018DF2(W)  018DF9(W)  018E37(R)  018E56(R)  018E5A(W)  018E66(R)  018E6A(W)  018F3C(W)  0191A0(W)  019234(W)  019341(W)  01948B(W)  019606(W)  01964B(W)  0196BD(W)  019920(W)  019A5E(W)  019A6A(R)  019A98(R)  019B75(W)  019B87(R)  019BF6(W)  019C8A(W)  019E58(W)  019F27(W)  01A102(W)  01A307(W)  01A32B(W)  01B750(W)  01C1F7(W)  01C20D(W)  01C217(R)  01C23B(R)  01C2A3(W)  01C2B9(R)  01C409(W)  01C453(W)  01C521(W)  01C556(W)  01C8B7(W)  01C8C2(W)  01C9A4(W)  01CA7C(W)  01CC0E(W)  01CC7F(W)  01CD3F(W)  01CD74(W)  01CE1A(W)  01CECC(W)  01CF3A(W)  01D113(W)  01D2A7(R)  01D2F8(R)  01D2FC(W)  01D4A6(W)  01D4BF(W)  01D5F6(W)  01DA4F(W)  01DA9D(W)  01DBAB(W)  01DF13(W)  01E05B(Wi) 01E42F(W)  01EB7E(W)  01EC65(W)  01EDA8(W)  01EFE5(W)  01F3A3(W)  01F53B(W)  01F723(W)  01FB89(W)  01FBED(W)  01FCDF(W)  01FE29(W)  01FE88(W)  
    ram_005C_t01_ppu_hi                     = ram_005C_temp ; 
    ram_005C_t02_ppu_hi                     = ram_005C_temp ; 
    ram_005C_t03_ppu_hi                     = ram_005C_temp ; 
    ram_005C_t04_ppu_hi                     = ram_005C_temp ; 
    ram_005C_t05_ppu_hi                     = ram_005C_temp ; 
    ram_005C_t06_data_ptr_hi                = ram_005C_temp ; 



; 
ram_005D_temp                           = $005D ; 008F1D(W)  00900F(R)  009011(W)  00901F(R)  009044(R)  00914E(W)  0102EB(W)  010A8A(W)  0114B5(W)  011A43(W)  013CFD(W)  013DE4(W)  016A19(W)  016AC2(W)  016AE4(R)  016EE3(W)  017CE9(W)  0183C1(W)  0183F0(W)  0191A9(W)  019244(W)  01934A(W)  01960B(W)  01994A(W)  01995F(R)  019A68(W)  019A96(W)  019B79(W)  019BA6(R)  019BAB(W)  019F07(W)  019F2C(W)  019F48(R)  019F4D(W)  019FB3(R)  01A10D(W)  01A13C(R)  01A30D(W)  01BA81(W)  01BA91(W)  01BF60(W)  01CD47(W)  01D088(W)  01D2A5(W)  01D2D3(R)  01D2D8(W)  01D2F6(W)  01D33E(R)  01DA8B(W)  01E05B(Wi) 01F660(R)  01F672(R)  01F677(W)  01F6C5(W)  01F6D4(R)  01F6D6(W)  01F8A6(R)  01F90A(R)  01F90E(W)  01F946(W)  01F952(R)  01F954(W)  01F967(R)  01F969(W)  01F994(W)  01F9AF(R)  01F9B1(W)  01FAA6(R)  01FAD4(R)  01FAD8(W)  01FB6A(W)  01FBCE(W)  01FCC0(W)  
    ram_005D_t01_ppu_data                   = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t02_data                       = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t03_data                       = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t04_data                       = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t05_data                       = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t06_data                       = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t07_plr_state_data             = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t08_data                       = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t09_data                       = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t10_data                       = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t11_ppu_data                   = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t12_spr_pal_data               = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t13_data                       = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t14_data                       = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t15_data                       = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t16_data                       = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t17_data                       = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t18_data                       = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t19_data_metatiles             = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t20_spr_pal_data_ptr           = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t21_data                       = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t22_data                       = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t23_data                       = ram_005D_temp ; 2 addresses 005D-005E
    ram_005D_t24_ppu_lo                     = ram_005D_temp ; 
    ram_005D_t25_metatiles_data_ptr_lo      = ram_005D_temp ; 
    ram_005D_t26_ppu_lo                     = ram_005D_temp ; 
    ram_005D_t27_ppu_lo                     = ram_005D_temp ; 
    ram_005D_t28_ppu_lo                     = ram_005D_temp ; 
    ram_005D_t29_ppu_lo                     = ram_005D_temp ; 
    ram_005D_t30_ppu_lo                     = ram_005D_temp ; 
    ram_005D_t31_ppu_lo                     = ram_005D_temp ; 
    ram_005D_t32_ppu_lo                     = ram_005D_temp ; 
    ram_005D_t33_ppu_lo                     = ram_005D_temp ; 
    ram_005D_t34_ppu_lo                     = ram_005D_temp ; 



; 
ram_005E_temp                           = $005E ; 008F22(W)  009015(R)  009017(W)  009022(R)  009049(R)  009153(W)  0102F0(W)  010A8F(W)  0114BA(W)  011A48(W)  013D02(W)  013DE9(W)  016A21(W)  016AC7(W)  016AE9(R)  016EEB(W)  017CEE(W)  0183C9(W)  0183F8(W)  0191AE(W)  019249(W)  01934F(W)  019610(W)  01994E(W)  019963(R)  019A6E(W)  019A9C(W)  019B7D(W)  019BAD(R)  019BB1(W)  019F03(W)  019F31(W)  019F4F(R)  019F53(W)  019FAE(R)  01A112(W)  01A141(R)  01A312(W)  01BA86(W)  01BA96(W)  01BF64(W)  01CD4C(W)  01D08C(W)  01D2A9(W)  01D2DA(R)  01D2DE(W)  01D2FE(W)  01D341(R)  01DA90(W)  01E05B(Wi) 01F65B(R)  01F679(R)  01F67D(W)  01F6C1(W)  01F6D8(R)  01F6DC(W)  01F8A0(R)  01F910(R)  01F914(W)  01F942(W)  01F956(R)  01F95A(W)  01F96D(R)  01F96F(W)  01F990(W)  01F9B3(R)  01F9B7(W)  01FAA0(R)  01FACE(R)  01FAD2(W)  01FB6F(W)  01FBD3(W)  01FCC5(W)  
    ram_005E_t01_ppu_hi                     = ram_005E_temp ; 
    ram_005E_t02_ppu_hi                     = ram_005E_temp ; 
    ram_005E_t03_ppu_hi                     = ram_005E_temp ; 
    ram_005E_t04_ppu_hi                     = ram_005E_temp ; 
    ram_005E_t05_ppu_hi                     = ram_005E_temp ; 
    ram_005E_t06_ppu_hi                     = ram_005E_temp ; 
    ram_005E_t07_ppu_hi                     = ram_005E_temp ; 
    ram_005E_t08_ppu_hi                     = ram_005E_temp ; 
    ram_005E_t09_ppu_hi                     = ram_005E_temp ; 
    ram_005E_t10_ppu_hi                     = ram_005E_temp ; 
    ram_005E_t11_metatiles_data_ptr_hi      = ram_005E_temp ; 



; 
ram_005F_temp                           = $005F ; 008F34(W)  00910C(R)  009119(W)  00BF3E(W)  011278(W)  01671D(W)  016ED3(W)  018962(W)  018F27(W)  019221(W)  01990E(W)  019973(R)  019986(R)  01998B(W)  0199AF(W)  01BAA2(W)  01D19A(W)  01D1FB(R)  01D328(W)  01E05B(Wi) 01F628(R)  01F665(R)  01F66A(W)  01F6B5(W)  01F6BD(W)  01F6E1(R)  01F6E3(W)  01F8C8(W)  01F984(W)  01F98C(W)  01F9BC(R)  01F9BE(W)  01FA61(R)  01FA67(W)  
    ram_005F_t01_data                       = ram_005F_temp ; 2 addresses 005F-0060
    ram_005F_t02_data                       = ram_005F_temp ; 2 addresses 005F-0060
    ram_005F_t03_data                       = ram_005F_temp ; 2 addresses 005F-0060
    ram_005F_t04_data                       = ram_005F_temp ; 2 addresses 005F-0060
    ram_005F_t05_player_state_data_ptr      = ram_005F_temp ; 2 addresses 005F-0060
    ram_005F_t06_data                       = ram_005F_temp ; 2 addresses 005F-0060
    ram_005F_t07_data                       = ram_005F_temp ; 2 addresses 005F-0060
    ram_005F_t08_data                       = ram_005F_temp ; 2 addresses 005F-0060
    ram_005F_t09_data                       = ram_005F_temp ; 2 addresses 005F-0060
    ram_005F_t10_data                       = ram_005F_temp ; 2 addresses 005F-0060
    ram_005F_t11_data                       = ram_005F_temp ; 2 addresses 005F-0060
    ram_005F_t12_data                       = ram_005F_temp ; 2 addresses 005F-0060
    ram_005F_t13_ppu_lo                     = ram_005F_temp ; 
    ram_005F_t14                            = ram_005F_temp ; 
    ram_005F_t15                            = ram_005F_temp ; 
    ram_005F_t16_ppu_lo                     = ram_005F_temp ; 
    ram_005F_t17_lo                         = ram_005F_temp ; 



; 
ram_0060_temp                           = $0060 ; 008F39(W)  009107(R)  00BF43(W)  01127D(W)  016722(W)  016ED8(W)  018967(W)  018F2C(W)  019226(W)  019909(W)  01996E(R)  01998D(R)  019991(W)  0199AA(W)  01BAAA(W)  01D1A0(W)  01D1FF(R)  01D32E(W)  01E05B(Wi) 01F62F(R)  01F66C(R)  01F670(W)  01F6C9(W)  01F6E5(R)  01F6E9(W)  01F8CE(W)  01F998(W)  01F9C2(R)  01F9C6(W)  
    ram_0060_t01_ppu_hi                     = ram_0060_temp ; 
    ram_0060_t02_ppu_hi                     = ram_0060_temp ; 
    ram_0060_t03_hi                         = ram_0060_temp ; 
    ram_0060_t04_useless_02                 = ram_0060_temp ; bzk optimize
    ram_0060_t05_useless_02                 = ram_0060_temp ; bzk optimize



; 
ram_0061_temp                           = $0061 ; 01128B(W)  01193A(W)  016EB8(W)  019961(W)  01D1DC(W)  01E05B(Wi) 01F6F9(W)  01F9D8(W)  
    ram_0061_t01_metatiles_data             = ram_0061_temp ; 2 addresses 0061-0062
    ram_0061_t02_data                       = ram_0061_temp ; 2 addresses 0061-0062
    ram_0061_t03_data                       = ram_0061_temp ; 2 addresses 0061-0062
    ram_0061_t04_data                       = ram_0061_temp ; 2 addresses 0061-0062
    ram_0061_t05_data                       = ram_0061_temp ; 2 addresses 0061-0062
    ram_0061_t06_data                       = ram_0061_temp ; 2 addresses 0061-0062
    ram_0061_t07_data                       = ram_0061_temp ; 2 addresses 0061-0062



; used only in pair with ram_0061_temp
; ram_0062                              = $0062 ; 011293(W)  01193F(W)  016EBD(W)  019967(W)  01D1E2(W)  01E05B(Wi) 01F6FE(W)  01F9DD(W)  



; 
ram_0063_temp                           = $0063 ; 011626(W)  01D1FD(W)  01D207(R)  01E05B(Wi) 01F9C0(W)  01FADA(R)  01FAE0(W)  
    ram_0063_t01_data                       = ram_0063_temp ; 2 addresses 0063-0064
    ram_0063_t02_data                       = ram_0063_temp ; 2 addresses 0063-0064
    ram_0063_t03_lo                         = ram_0063_temp ; 



; 
ram_0064_temp                           = $0064 ; 01162B(W)  01D203(W)  01D205(R)  01E05B(Wi) 01F9C8(W)  
    ram_0064_t01_hi                         = ram_0064_temp ; bzk optimize



; 
ram_0065_temp                           = $0065 ; 01D16F(W)  01D178(R)  01D17D(W)  01D198(R)  01E05B(Wi) 01F62D(W)  
    ram_0065_t01_data                       = ram_0065_temp ; 
    ram_0065_t02_lo                         = ram_0065_temp ; 



; 
ram_0066_temp                           = $0066 ; 01D173(W)  01D17F(R)  01D183(W)  01D19E(R)  01E05B(Wi) 01F633(W)  
    ram_0066_t01_hi                         = ram_0066_temp ; 



; 
ram_0067_temp                           = $0067 ; 00BE5A(W)  00BE61(R)  00BEFB(W)  00BF0D(R)  010044(W)  010049(R)  01027E(W)  010280(W)  010282(R)  010286(W)  01028C(R)  0102A2(R)  0104CA(W)  0104D1(R)  0105F1(W)  0107B0(W)  0107B5(R)  0107FC(W)  010860(R)  0108B6(W)  0109BD(W)  010A83(W)  010C00(R)  010C22(W)  010C78(W)  010D2D(W)  010D34(R)  010D3C(W)  010D44(W)  010D51(R)  010D57(W)  010D5F(W)  010D6C(R)  010DBF(W)  010DD7(R)  010DE5(W)  010E03(W)  010E1B(R)  010E29(W)  010F2C(W)  010F30(W)  0110D3(W)  0110D9(R)  01119E(W)  0111A3(R)  01122C(W)  011233(R)  011248(W)  01124F(R)  0112E2(R)  011309(R)  011321(W)  011342(W)  0113AF(R)  0114AE(W)  0114C5(R)  0115ED(W)  01161F(R)  01162F(R)  011666(W)  011669(R)  0116DE(W)  0116E5(R)  0116EE(R)  0117DE(W)  01186D(W)  011872(R)  0118D7(W)  0118DE(R)  01192C(W)  011979(W)  011AB8(W)  011AC4(R)  011D3F(W)  011D6B(W)  011D83(R)  011DA0(W)  011DB8(R)  011E9D(W)  011EA4(R)  011EAC(R)  011EB5(R)  011EC1(R)  011ECA(R)  011EE6(W)  011F44(W)  0138E8(W)  0138EF(R)  013BAC(W)  013C0A(W)  013C1F(W)  013C2C(R)  013C31(W)  013C80(W)  013C8B(W)  013D28(R)  013D49(R)  013D77(R)  013D8F(R)  013DAF(R)  013E14(R)  013E28(R)  013E32(R)  01546A(W)  015C6E(R)  015C84(R)  015CFA(R)  015DB8(R)  016084(W)  01608C(W)  016096(R)  016098(W)  01609E(R)  01634A(W)  01643E(W)  0168EE(W)  0169AA(W)  0169C2(R)  0169DA(W)  0169F2(R)  016A4D(W)  016A54(R)  016CBD(W)  016D93(W)  016D95(W)  016D97(R)  016D9B(W)  016DA1(R)  016DAD(R)  01704F(W)  01707A(W)  0170A4(R)  0170A6(W)  017100(R)  017102(W)  017122(R)  01714A(R)  01714C(W)  0171E3(W)  0171E5(W)  0171E7(R)  0171EB(W)  0171F1(R)  0171FD(R)  0174EF(W)  017585(W)  017648(W)  0176DD(W)  01771A(W)  017781(W)  01778E(R)  017909(W)  01790F(R)  017959(W)  01798A(R)  017AB6(W)  017ABF(W)  017AD4(R)  017ADE(W)  017AE7(W)  017AFC(R)  017B54(R)  017C0A(W)  017C69(W)  017C73(R)  017C7B(R)  017C94(W)  017DB5(W)  017ED5(W)  017EF2(R)  0181A0(W)  0181BD(R)  0181E4(R)  018220(W)  01825B(R)  0182D5(W)  0182DD(R)  018370(W)  018388(W)  018390(W)  0183A8(W)  018640(W)  01864C(R)  018762(W)  018782(W)  0187C5(W)  0188BE(W)  0188ED(R)  0188F5(W)  018937(W)  018996(W)  0189A2(W)  0189B7(R)  0189C1(W)  0189CA(W)  0189DF(R)  018A19(W)  018A2C(W)  018BE2(W)  018BE8(R)  018C36(W)  018C52(W)  018C6D(W)  018C71(R)  018CA6(R)  018CB0(W)  018CC7(W)  018CFD(W)  018D02(R)  018D08(W)  018D0F(R)  018D42(W)  018D57(W)  018D71(R)  018E0E(Wx) 018E2F(Rx) 018F0D(W)  018F20(R)  018F65(W)  018FD2(W)  01903A(W)  019084(W)  0190F0(W)  01910B(R)  0191B3(W)  01923A(W)  019357(W)  019365(R)  01940E(W)  019453(W)  0195C9(R)  0195FA(R)  01963B(R)  01963D(R)  019788(W)  0197E9(W)  019844(W)  01985B(R)  0199DC(W)  0199E6(W)  019AD7(W)  019B60(W)  019C95(R)  019CB3(W)  019CC2(W)  019D0F(W)  019D5D(W)  019D71(W)  019E24(W)  019E38(W)  019E3C(R)  019E84(W)  019F67(W)  019F6F(R)  01A049(W)  01A093(R)  01A1FF(W)  01A209(W)  01A218(R)  01A23A(W)  01A23C(W)  01A23E(R)  01A242(W)  01A248(R)  01A254(R)  01A2C3(W)  01A2CB(R)  01A2D3(R)  01A346(W)  01A35C(R)  01A38E(W)  01A3B2(W)  01A3B7(R)  01A3BE(R)  01A3C4(R)  01A429(W)  01A42F(W)  01A435(R)  01A4C8(W)  01A5CE(R)  01A5D7(R)  01A632(W)  01A63A(R)  01A699(W)  01A6D3(R)  01A721(R)  01BE8E(W)  01BF92(W)  01C0AC(W)  01C0BE(W)  01C0DE(R)  01C11D(W)  01C133(R)  01C155(R)  01C159(W)  01C1C9(Wx) 01C1DE(Wy) 01C222(Ry) 01C262(Wy) 01C26E(Wy) 01C288(R)  01C424(W)  01C43E(W)  01C80C(W)  01C855(W)  01C886(R)  01C8D1(W)  01C956(W)  01C969(R)  01C96D(W)  01C975(R)  01C977(W)  01C98A(R)  01C98E(W)  01C99A(R)  01CA70(R)  01CA84(W)  01CA91(R)  01CD07(W)  01CDE3(R)  01CF6A(W)  01CF70(R)  01CF87(R)  01D075(W)  01D07C(R)  01D07E(W)  01D09E(R)  01D0C1(R)  01D3C5(W)  01D402(W)  01D464(R)  01D5DA(W)  01D5E1(R)  01D612(W)  01D621(W)  01D628(R)  01DC03(R)  01E058(W)  01E05B(Wi) 01E12C(W)  01E142(R)  01EA54(W)  01EA60(R)  01EC75(W)  01EC7B(R)  01EC7D(W)  01EC83(R)  01EE8D(R)  01EF09(R)  01EF19(W)  01F013(W)  01F025(R)  01F036(W)  01F050(R)  01F061(W)  01F075(R)  01F086(W)  01F09D(R)  01F0AD(R)  01F10A(W)  01F110(W)  01F134(R)  01F15B(W)  01F161(R)  01F16B(R)  01F2AE(W)  01F2B4(R)  01F2D4(W)  01F2DA(R)  01F31A(W)  01F320(R)  01F413(W)  01F41E(R)  01F4B0(R)  01F4C5(R)  01F515(W)  01F560(W)  01F5A3(W)  01F5BA(R)  01F5E4(W)  01F5FA(R)  01F6D1(W)  01F6DE(R)  01F7B9(W)  01F845(R)  01F860(W)  01F888(R)  01F94A(R)  01F99A(R)  01F9E6(R)  01FA86(R)  01FAFD(W)  01FC78(W)  
    ram_0067_t00_data                       = ram_0067_temp ; 2 addresses 0067-0068
    ram_0067_t01                            = ram_0067_temp ; 
    ram_0067_t02_combined_scroll_direction  = ram_0067_temp ; 
    ram_0067_t03                            = ram_0067_temp ; 
    ram_0067_t04                            = ram_0067_temp ; 
    ram_0067_t05                            = ram_0067_temp ; 
    ram_0067_t06_plr_index                  = ram_0067_temp ; 
    ram_0067_t07                            = ram_0067_temp ; 
    ram_0067_t08                            = ram_0067_temp ; 
    ram_0067_t09                            = ram_0067_temp ; 
    ram_0067_t0A                            = ram_0067_temp ; 
    ram_0067_t0B_pos_X_hi                   = ram_0067_temp ; 
    ram_0067_t0C                            = ram_0067_temp ; 
    ram_0067_t0D                            = ram_0067_temp ; 
    ram_0067_t0E_obj_id_offset              = ram_0067_temp ; 
    ram_0067_t0F_ppu_hi                     = ram_0067_temp ; 
    ram_0067_t10_city_x2                    = ram_0067_temp ; 
    ram_0067_t11_table_index                = ram_0067_temp ; 
    ram_0067_t12_table_index                = ram_0067_temp ; see con_0067_t12
    ram_0067_t13                            = ram_0067_temp ; 
    ram_0067_t14_loop_counter               = ram_0067_temp ; 
    ram_0067_t15_tile_1                     = ram_0067_temp ; 
    ram_0067_t16_ppu_lo_init                = ram_0067_temp ; 
    ram_0067_t17_loop_counter               = ram_0067_temp ; 
    ram_0067_t18                            = ram_0067_temp ; 
    ram_0067_t19_pos_X_hi                   = ram_0067_temp ; 
    ram_0067_t1A_hi                         = ram_0067_temp ; 
    ram_0067_t1B_copy_current_plr_index     = ram_0067_temp ; 
    ram_0067_t1C_table_index                = ram_0067_temp ; see con_0067_t1C
    ram_0067_t1D_table_index                = ram_0067_temp ; 
    ram_0067_t1E_pos_X_lo_spawn             = ram_0067_temp ; 
    ram_0067_t1F                            = ram_0067_temp ; 
    ram_0067_t20                            = ram_0067_temp ; 
    ram_0067_t21_spd_Y_hi                   = ram_0067_temp ; 
    ram_0067_t22_counter                    = ram_0067_temp ; 
    ram_0067_t23                            = ram_0067_temp ; 
    ram_0067_t24                            = ram_0067_temp ; 
    ram_0067_t25                            = ram_0067_temp ; 
    ram_0067_t26                            = ram_0067_temp ; 
    ram_0067_t27_flag                       = ram_0067_temp ; 
    ram_0067_t28                            = ram_0067_temp ; 
    ram_0067_t29                            = ram_0067_temp ; 
    ram_0067_t2A                            = ram_0067_temp ; 
    ram_0067_t2B                            = ram_0067_temp ; 
    ram_0067_t2C_spd_X_hi                   = ram_0067_temp ; 
    ram_0067_t2D_pos_Y_hi                   = ram_0067_temp ; 
    ram_0067_t2E                            = ram_0067_temp ; 
    ram_0067_t2F_pos_X_hi                   = ram_0067_temp ; 
    ram_0067_t30_pos_Y_hi                   = ram_0067_temp ; 
    ram_0067_t31                            = ram_0067_temp ; 
    ram_0067_t32_table_index                = ram_0067_temp ; 
    ram_0067_t33                            = ram_0067_temp ; 
    ram_0067_t34                            = ram_0067_temp ; 
    ram_0067_t35                            = ram_0067_temp ; 
    ram_0067_t36                            = ram_0067_temp ; 
    ram_0067_t37_counter                    = ram_0067_temp ; 
    ram_0067_t38_damage                     = ram_0067_temp ; 
    ram_0067_t39                            = ram_0067_temp ; 
    ram_0067_t3A_pos_X_hi                   = ram_0067_temp ; 
    ram_0067_t3B_hi                         = ram_0067_temp ; 
    ram_0067_t3C_hi                         = ram_0067_temp ; 
    ram_0067_t3D_pos_X_lo                   = ram_0067_temp ; 
    ram_0067_t3E                            = ram_0067_temp ; 
    ram_0067_t3F_btns                       = ram_0067_temp ; 
    ram_0067_t40_icon_id                    = ram_0067_temp ; 
    ram_0067_t41_obj_counter                = ram_0067_temp ; 
    ram_0067_t42                            = ram_0067_temp ; 
    ram_0067_t43_max_life                   = ram_0067_temp ; 
    ram_0067_t44_points                     = ram_0067_temp ; 
    ram_0067_t45_ppu_buffer_bar             = ram_0067_temp ; 10 addresses 0067-0070
    ram_0067_t46_score_array                = ram_0067_temp ; 6 addresses 0067-006C
    ram_0067_t47_ppu_hi                     = ram_0067_temp ; 
    ram_0067_t48_ppu_hi                     = ram_0067_temp ; 
    ram_0067_t49_ppu_lo_offset              = ram_0067_temp ; 
    ram_0067_t4A_btn_Up                     = ram_0067_temp ; 
    ram_0067_t4B                            = ram_0067_temp ; 
    ram_0067_t4C_loop_counter               = ram_0067_temp ; 
    ram_0067_t4D_loop_counter               = ram_0067_temp ; 
    ram_0067_t4E_table_index                = ram_0067_temp ; 
    ram_0067_t4F_metatile_table_index       = ram_0067_temp ; 
    ram_0067_t50_pos_X_hi                   = ram_0067_temp ; 
    ram_0067_t51_hi                         = ram_0067_temp ; 
    ram_0067_t52_counter                    = ram_0067_temp ; 
    ram_0067_t53_nametable                  = ram_0067_temp ; 
    ram_0067_t54_flag                       = ram_0067_temp ; 
    ram_0067_t55_table_index                = ram_0067_temp ; 
    ram_0067_t56_attributes_counter         = ram_0067_temp ; 
    ram_0067_t57                            = ram_0067_temp ; 
    ram_0067_t58                            = ram_0067_temp ; 
    ram_0067_t59_ppu_hi                     = ram_0067_temp ; 
    ram_0067_t5A_flag                       = ram_0067_temp ; 
    ram_0067_t5B_flag                       = ram_0067_temp ; 
    ram_0067_t5C_frm_cnt_mask               = ram_0067_temp ; 
    ram_0067_t5D_color                      = ram_0067_temp ; 
    ram_0067_t5E_hi                         = ram_0067_temp ; 
    ram_0067_t5F                            = ram_0067_temp ; 
    ram_0067_t60                            = ram_0067_temp ; 
    ram_0067_t61_hitbox                     = ram_0067_temp ; 
    ram_0067_t62_add_crystals               = ram_0067_temp ; 
    ram_0067_t63_plr_index                  = ram_0067_temp ; 
    ram_0067_t64                            = ram_0067_temp ; 
    ram_0067_t65_plr_flag                   = ram_0067_temp ; 
    ram_0067_t66_table_index                = ram_0067_temp ; 
    ram_0067_t67_pos_Y_lo                   = ram_0067_temp ; 
    ram_0067_t68_final_direction            = ram_0067_temp ; 
    ram_0067_t69                            = ram_0067_temp ; 
    ram_0067_t6A                            = ram_0067_temp ; 
    ram_0067_t6B_ppu_lo_offset              = ram_0067_temp ; 
    ram_0067_t6C_counter                    = ram_0067_temp ; 
    ram_0067_t6D                            = ram_0067_temp ; 
    ram_0067_t6E                            = ram_0067_temp ; 
    ram_0067_t6F_nametable                  = ram_0067_temp ; 
    ram_0067_t70_nametable                  = ram_0067_temp ; 
    ram_0067_t71_attr_buf_index             = ram_0067_temp ; 
    ram_0067_t72_lo                         = ram_0067_temp ; 
    ram_0067_t73                            = ram_0067_temp ; 
    ram_0067_t74                            = ram_0067_temp ; 
    ram_0067_t75                            = ram_0067_temp ; 
    ram_0067_t76_lo                         = ram_0067_temp ; 
    ram_0067_t77                            = ram_0067_temp ; 
    ram_0067_t78                            = ram_0067_temp ; 
    ram_0067_t79                            = ram_0067_temp ; 
    ram_0067_t7A_btn_Select                 = ram_0067_temp ; 
    ram_0067_t7B_nametable                  = ram_0067_temp ; 
    ram_0067_t7D                            = ram_0067_temp ; 
    ram_0067_t7E_loop_counter               = ram_0067_temp ; 
    ram_0067_t7F_flag                       = ram_0067_temp ; 
    ram_0067_t80                            = ram_0067_temp ; 
    ram_0067_t81                            = ram_0067_temp ; 
    ram_0067_t82_array                      = ram_0067_temp ; bzk optimize
    
    ram_0067_tFD_useless                    = ram_0067_temp ; bzk optimize
    ram_0067_tFE_useless                    = ram_0067_temp ; bzk optimize
    ram_0067_tFF_useless                    = ram_0067_temp ; bzk optimize



; 
ram_0068_temp                           = $0068 ; 00BF00(W)  00BF05(R)  01028E(W)  010298(R)  01029E(R)  0105F6(W)  0109C2(W)  010C3B(W)  010C42(R)  010C59(R)  010C62(R)  010DE9(W)  010E2D(W)  0110E0(W)  0110E9(R)  0112EB(R)  011312(R)  011325(W)  01157E(W)  0115E7(W)  0115F2(W)  01163D(R)  0117B7(W)  0117B9(R)  011877(W)  0118E3(W)  011932(W)  011D2B(W)  011EDB(W)  011F49(W)  0138CB(W)  0138D6(R)  0138D8(W)  0138F6(R)  013BB5(W)  013C6B(W)  013C70(W)  013CCF(W)  013CD4(W)  013CF5(R)  013DDC(R)  013F86(R)  015466(W)  015CFE(R)  015DBC(R)  015E1D(R)  015ED1(R)  0168EA(W)  016DA3(W)  016DA9(R)  0171F3(W)  0171F9(R)  017709(W)  017865(W)  0178A6(R)  0178A8(W)  0178B1(R)  0178B5(W)  0178EB(R)  01793D(R)  017961(W)  01797C(R)  017988(W)  01798E(R)  017990(W)  017B7B(W)  017C01(W)  017C9C(W)  017D8D(W)  017DAC(W)  017E44(W)  018755(W)  01875C(R)  018775(W)  01877C(R)  0188C5(W)  0188DF(R)  0188FF(R)  018933(W)  018C56(W)  018C58(R)  018C79(W)  018E14(Wx) 018E2F(Rx) 0190F9(W)  019103(R)  019109(W)  019116(W)  019120(R)  019126(W)  0191B8(W)  01923F(W)  019257(R)  019259(W)  01935B(W)  01936A(R)  019374(W)  019382(R)  019387(W)  019653(W)  01969E(W)  0196C1(W)  0196D0(R)  0196DF(W)  0196E3(W)  01978C(W)  019A72(W)  019A79(R)  019AA3(R)  019AF1(W)  019AF8(R)  01A04F(W)  01A05F(R)  01A24A(W)  01A250(R)  01A3A7(W)  01A3BC(R)  01A3D9(W)  01A4F9(W)  01BE88(W)  01BF96(W)  01C0B0(W)  01C0C2(W)  01C0E0(R)  01C121(W)  01C135(R)  01C14F(R)  01C1C9(Wx) 01C1DE(Wy) 01C222(Ry) 01C262(Wy) 01C26E(Wy) 01C27A(R)  01C40F(W)  01C422(W)  01C437(Wx) 01C6D7(R)  01C7A4(W)  01C7A9(R)  01C811(W)  01C85A(W)  01C860(R)  01C867(W)  01C86D(R)  01C86F(W)  01C875(R)  01C8CD(W)  01C961(W)  01C9B2(R)  01C9BF(R)  01C9D9(R)  01C9DF(W)  01C9EC(R)  01CA05(R)  01CA19(R)  01CA33(R)  01CA39(W)  01CA4D(R)  01CA7E(R)  01CA89(W)  01CAB3(R)  01CD0D(W)  01CD24(R)  01D05E(W)  01D066(R)  01D068(W)  01D082(R)  01D084(W)  01D0A2(R)  01D0C5(R)  01D153(W)  01D185(W)  01D187(R)  01D423(W)  01D42A(R)  01D441(W)  01D47B(R)  01D60E(W)  01E054(W)  01E05B(Wi) 01E060(W)  01E064(W)  01EA5D(W)  01EA7C(R)  01EE11(R)  01F03C(W)  01F052(R)  01F08C(W)  01F0A3(R)  01F0AF(R)  01F100(W)  01F117(W)  01F11D(R)  01F122(W)  01F136(R)  01F155(W)  01F171(W)  01F178(R)  01F18F(R)  01F20F(W)  01F40F(W)  01F467(R)  01F482(R)  01F51B(W)  01F557(R)  01F55E(W)  01F5A9(W)  01F5B3(R)  01F5EF(W)  01F708(R)  01F7BF(W)  01F832(R)  01F866(W)  01F97C(R)  01FB95(W)  01FBF9(W)  01FCE9(W)  01FD0B(W)  01FD1D(R)  01FD96(W)  01FE35(W)  01FEFD(W)  01FEFF(W)  
    ram_0068_t01_counter                    = ram_0068_temp ; 
    ram_0068_t02                            = ram_0068_temp ; 
    ram_0068_t03_ppu_hi_offset_1            = ram_0068_temp ; 
    ram_0068_t04                            = ram_0068_temp ; 
    ram_0068_t05                            = ram_0068_temp ; 
    ram_0068_t06_pos_X_lo                   = ram_0068_temp ; 
    ram_0068_t07                            = ram_0068_temp ; 
    ram_0068_t08                            = ram_0068_temp ; 
    ram_0068_t09                            = ram_0068_temp ; 
    ram_0068_t10                            = ram_0068_temp ; 
    ram_0068_t11_flag_2                     = ram_0068_temp ; 
    ram_0068_t12                            = ram_0068_temp ; 
    ram_0068_t13_btn_Down                   = ram_0068_temp ; 
    ram_0068_t14                            = ram_0068_temp ; 
    ram_0068_t15                            = ram_0068_temp ; 
    ram_0068_t16                            = ram_0068_temp ; 
    ram_0068_t17_flags                      = ram_0068_temp ; 
    ram_0068_t18_data_index                 = ram_0068_temp ; 
    ram_0068_t19_lo                         = ram_0068_temp ; 
    ram_0068_t20                            = ram_0068_temp ; 
    ram_0068_t21_ppu_lo                     = ram_0068_temp ; 
    ram_0068_t22                            = ram_0068_temp ; 
    ram_0068_t23                            = ram_0068_temp ; 
    ram_0068_t24_pos_Y_lo_EOR               = ram_0068_temp ; 
    ram_0068_t25_ppu_lo                     = ram_0068_temp ; 
    ram_0068_t26_ppu_hi                     = ram_0068_temp ; 
    ram_0068_t27_ppu_lo                     = ram_0068_temp ; 
    ram_0068_t28_ppu_lo                     = ram_0068_temp ; 
    ram_0068_t29_ppu_hi_init                = ram_0068_temp ; 
    ram_0068_t30_ppu_hi                     = ram_0068_temp ; 
    ram_0068_t31_gain_health                = ram_0068_temp ; 
    ram_0068_t32_ppu_lo                     = ram_0068_temp ; 
    ram_0068_t33_ppu_lo                     = ram_0068_temp ; 
    ram_0068_t34_ppu_lo                     = ram_0068_temp ; 
    ram_0068_t35_loop_counter               = ram_0068_temp ; 
    ram_0068_t36                            = ram_0068_temp ; 
    ram_0068_t37_data_index                 = ram_0068_temp ; 
    ram_0068_t38_ppu_hi                     = ram_0068_temp ; 
    ram_0068_t39_ppu_hi                     = ram_0068_temp ; 
    ram_0068_t40                            = ram_0068_temp ; 
    ram_0068_t41_flag                       = ram_0068_temp ; 
    ram_0068_t42_pos_Y_lo                   = ram_0068_temp ; 
    ram_0068_t43_pos_X_lo                   = ram_0068_temp ; 
    ram_0068_t44_pos_X_lo                   = ram_0068_temp ; 
    ram_0068_t45_pos_Y_lo                   = ram_0068_temp ; 
    ram_0068_t46_pos_Y_lo_EOR               = ram_0068_temp ; 
    ram_0068_t47                            = ram_0068_temp ; 
    ram_0068_t48                            = ram_0068_temp ; 
    ram_0068_t49_ppu_hi_offset_1            = ram_0068_temp ; 
    ram_0068_t50_counter                    = ram_0068_temp ; 
    ram_0068_t51                            = ram_0068_temp ; 
    ram_0068_t52                            = ram_0068_temp ; 
    ram_0068_t53                            = ram_0068_temp ; 
    ram_0068_t54_scroll_X_hi_diff           = ram_0068_temp ; 
    ram_0068_t55                            = ram_0068_temp ; 
    ram_0068_t56                            = ram_0068_temp ; 
    ram_0068_t57                            = ram_0068_temp ; 
    ram_0068_t58                            = ram_0068_temp ; 
    ram_0068_t59_buffer_index               = ram_0068_temp ; 
    ram_0068_t60_data_index                 = ram_0068_temp ; 
    ram_0068_t61_hi                         = ram_0068_temp ; 
    ram_0068_t62_plr_index                  = ram_0068_temp ; bzk optimize
    
    ram_0068_tFC_useless                    = ram_0068_temp ; bzk optimize
    ram_0068_tFD_useless_20                 = ram_0068_temp ; bzk optimize
    ram_0068_tFE_useless                    = ram_0068_temp ; bzk optimize
    ram_0068_tFF_useless                    = ram_0068_temp ; bzk optimize



; 
ram_0069_temp                           = $0069 ; 00BEC5(W)  00BED6(R)  0105FB(W)  0109C7(W)  010C1D(W)  010C24(R)  010C2E(R)  010C46(R)  0110D7(W)  0110E7(R)  0115F7(W)  011611(R)  01168A(R)  0117F7(W)  01182F(R)  011896(W)  011960(W)  011F4E(W)  011FA2(W)  0138C7(W)  0138E3(W)  0138E6(W)  0138F4(R)  013903(W)  01390B(R)  013BE4(W)  013C27(W)  013C33(R)  013C93(W)  013CEF(R)  013DD6(R)  013EA5(R)  013EBF(R)  01770E(W)  017970(W)  017979(R)  017B77(W)  017C0C(W)  017D84(W)  017DB7(W)  017E3B(W)  0188DD(W)  0188F7(W)  0188F9(R)  018E0E(Wx) 018E2F(Rx) 0190F5(W)  019128(R)  019363(W)  01937E(W)  01A058(W)  01A098(R)  01A6ED(W)  01A6F5(R)  01BE90(W)  01C0B4(W)  01C0C6(W)  01C0E7(R)  01C125(W)  01C163(R)  01C1C9(Wx) 01C1DE(Wy) 01C222(Ry) 01C262(Wy) 01C26E(Wy) 01C420(W)  01C6AF(R)  01C719(R)  01C816(W)  01C982(W)  01C9B8(R)  01C9C1(R)  01C9E5(R)  01C9EE(R)  01CA0C(R)  01CA12(W)  01CA1B(R)  01CA40(R)  01CA46(W)  01CA4F(R)  01CA8D(W)  01CA9A(W)  01CD84(W)  01CD9E(R)  01CDA0(W)  01CDAE(W)  01CDBA(R)  01CDBF(W)  01CDC7(W)  01CDCF(R)  01CDD4(W)  01CDDC(R)  01CDEB(R)  01D05A(W)  01D070(W)  01D073(W)  01D080(R)  01D272(W)  01D28F(R)  01D419(W)  01D42C(R)  01D443(R)  01D44C(W)  01D466(R)  01D614(W)  01E05B(Wi) 01F46D(W)  01F47B(R)  01F488(W)  01F49A(R)  01F521(W)  01F546(R)  01F612(R)  01F61D(W)  01F63B(R)  01F70E(W)  01F7CE(R)  01F7DD(R)  01F7E5(W)  01F80F(R)  01F814(W)  01F823(W)  01F82B(R)  01F830(W)  01F839(R)  01F83E(W)  01F840(R)  01F84D(W)  01F854(R)  01F856(W)  01F9A1(W)  01F9AA(R)  01F9AC(W)  01F9B9(R)  01F9E4(W)  01FA16(R)  
    ram_0069_t01                            = ram_0069_temp ; 
    ram_0069_t02_flag                       = ram_0069_temp ; 00/08
    ram_0069_t03_pos_X_lo                   = ram_0069_temp ; 
    ram_0069_t04_loop_counter               = ram_0069_temp ; 
    ram_0069_t05_tile_2                     = ram_0069_temp ; 
    ram_0069_t06                            = ram_0069_temp ; 
    ram_0069_t07                            = ram_0069_temp ; 
    ram_0069_t08_data_index                 = ram_0069_temp ; 
    ram_0069_t09_ppu_hi_attr                = ram_0069_temp ; 
    ram_0069_t10_buffer_index               = ram_0069_temp ; 
    ram_0069_t11_tiles_counter              = ram_0069_temp ; 
    ram_0069_t12                            = ram_0069_temp ; 
    ram_0069_t13_data_index                 = ram_0069_temp ; 
    ram_0069_t14_flag                       = ram_0069_temp ; 00/10
    ram_0069_t15_pos_Y_hi                   = ram_0069_temp ; 
    ram_0069_t16_flag_1                     = ram_0069_temp ; 
    ram_0069_t17_ppu_hi_offset_2            = ram_0069_temp ; 
    ram_0069_t18_pos_X_lo                   = ram_0069_temp ; 
    ram_0069_t19_lo                         = ram_0069_temp ; 
    ram_0069_t20_table_index                = ram_0069_temp ; 
    ram_0069_t21                            = ram_0069_temp ; 
    ram_0069_t22                            = ram_0069_temp ; 
    ram_0069_t23_pos_X_lo                   = ram_0069_temp ; 
    ram_0069_t24_pos_X_lo_EOR               = ram_0069_temp ; 
    ram_0069_t25_pos_X_lo_EOR               = ram_0069_temp ; 
    ram_0069_t26                            = ram_0069_temp ; 
    ram_0069_t27_lo                         = ram_0069_temp ; 
    ram_0069_t28_ppu_hi_offset_2            = ram_0069_temp ; 
    ram_0069_t29_buffer_index               = ram_0069_temp ; 
    ram_0069_t30                            = ram_0069_temp ; 
    ram_0069_t31_data_index_offset          = ram_0069_temp ; 
    ram_0069_t32_data_index_offset          = ram_0069_temp ; 
    ram_0069_t33                            = ram_0069_temp ; 
    ram_0069_t34                            = ram_0069_temp ; 
    ram_0069_t35_data_index_offset          = ram_0069_temp ; 
    ram_0069_t36                            = ram_0069_temp ; 
    ram_0069_t37                            = ram_0069_temp ; 
    ram_0069_t38                            = ram_0069_temp ; bzk optimize
    
    ram_0069_tFF_useless                    = ram_0069_temp ; bzk optimize



; 
ram_006A_temp                           = $006A ; 01060C(W)  010612(R)  010614(W)  0109CC(W)  010C16(W)  010C27(R)  010CA7(R)  0117F9(W)  011836(R)  01189B(W)  011962(W)  011A95(R)  011F53(W)  011FA4(W)  013BBE(W)  013BC9(W)  013BD4(R)  013BF7(W)  013C3D(W)  013C53(W)  013C5B(R)  013C75(W)  013CA1(W)  013CB7(W)  013CBF(R)  013CD9(W)  013D0A(R)  013D1B(R)  013DFF(R)  013EE5(R)  013EF5(R)  015471(R)  0168F3(R)  017713(W)  017977(W)  017980(R)  017B6D(W)  017C06(W)  017CA1(R)  017D89(W)  017DB1(W)  017E40(W)  0188E1(W)  0188E8(R)  018901(W)  01893F(R)  018E14(Wx) 018E2F(Rx) 01A05D(W)  01A061(R)  01A089(R)  01BE8A(W)  01C129(W)  01C165(R)  01C1C9(Wx) 01C1DE(Wy) 01C222(Ry) 01C262(Wy) 01C26E(Wy) 01C3CF(W)  01C3D7(R)  01C3DE(W)  01C3E0(R)  01C3E7(W)  01C6BF(R)  01C6E0(R)  01C6E2(W)  01C72B(R)  01C81B(W)  01C8DA(R)  01CAA8(W)  01CAAF(R)  01CAB1(W)  01CD12(R)  01CD1A(R)  01CD99(W)  01CDA4(R)  01CDA6(W)  01CDB4(W)  01CDCD(W)  01CDD6(R)  01CDDA(W)  01D0A0(W)  01D0AF(R)  01D0C3(W)  01D190(W)  01D1A7(W)  01D2A1(W)  01D2B6(R)  01D2E2(W)  01D480(R)  01D609(W)  01E05B(Wi) 01F525(W)  01F52D(W)  01F530(W)  01F539(R)  01F555(W)  01F559(R)  01F610(W)  01F639(R)  01F7D2(W)  01F7E7(W)  01F7E9(R)  01F80A(W)  01F9EC(W)  01F9F1(R)  01F9F3(W)  01FA0F(R)  01FA4C(W)  01FA50(R)  01FA74(W)  01FA8D(W)  01FA92(R)  01FA94(W)  01FA9A(R)  01FAB6(W)  01FACC(W)  01FC3F(W)  01FC75(R)  
    ram_006A_t01                            = ram_006A_temp ; 
    ram_006A_t02_loop_counter               = ram_006A_temp ; 
    ram_006A_t03                            = ram_006A_temp ; 
    ram_006A_t04_pos_Y_lo                   = ram_006A_temp ; 
    ram_006A_t05_data_index_offset          = ram_006A_temp ; 
    ram_006A_t06_spd_X_lo_bullet_bounce     = ram_006A_temp ; 
    ram_006A_t07_pos_X_hi                   = ram_006A_temp ; 
    ram_006A_t08_data_index                 = ram_006A_temp ; 
    ram_006A_t09_ppu_lo                     = ram_006A_temp ; 
    ram_006A_t10_obj_index                  = ram_006A_temp ; 
    ram_006A_t11_table_index                = ram_006A_temp ; 
    ram_006A_t12_handler_index              = ram_006A_temp ; 
    ram_006A_t13_ppu_lo_attr                = ram_006A_temp ; 
    ram_006A_t14_plr_index                  = ram_006A_temp ; 
    ram_006A_t15_ppu_lo                     = ram_006A_temp ; 
    ram_006A_t16_pos_Y_lo                   = ram_006A_temp ; 
    ram_006A_t17_pos_Y_lo_1                 = ram_006A_temp ; 
    ram_006A_t18_hi                         = ram_006A_temp ; 
    ram_006A_t19_hi                         = ram_006A_temp ; 
    ram_006A_t20                            = ram_006A_temp ; 
    ram_006A_t21_hi                         = ram_006A_temp ; 
    ram_006A_t22_attributes_counter         = ram_006A_temp ; 
    ram_006A_t23                            = ram_006A_temp ; 
    ram_006A_t24_counter                    = ram_006A_temp ; 
    ram_006A_t25                            = ram_006A_temp ; 
    ram_006A_t26                            = ram_006A_temp ; 
    ram_006A_t27                            = ram_006A_temp ; 
    ram_006A_t28                            = ram_006A_temp ; bzk optimize



; 
ram_006B_temp                           = $006B ; 010C51(R)  010C7B(W)  010CAC(R)  0116AF(W)  0117FB(W)  01184A(R)  0118A0(W)  011964(W)  011A9A(R)  011FA6(W)  015476(R)  015C73(R)  015C7A(R)  015EBE(R)  0168F8(R)  017CA6(R)  018944(R)  018E0E(Wx) 018E2F(Rx) 019912(W)  019914(R)  019934(W)  019936(R)  0199A2(W)  0199BD(W)  0199BF(R)  01A069(W)  01A06F(R)  01A075(R)  01A07D(R)  01A083(R)  01A091(W)  01A09A(R)  01BF9A(W)  01C12D(W)  01C16A(R)  01C1C9(Wx) 01C1DE(Wy) 01C222(Ry) 01C262(Wy) 01C26E(Wy) 01C281(W)  01C2A9(R)  01C3FA(W)  01C6FE(W)  01C72E(R)  01C8DF(R)  01CAA1(W)  01CB81(W)  01CB90(W)  01CBD3(W)  01CC61(R)  01CCD3(W)  01CCD7(W)  01CD22(W)  01CD28(R)  01CD2A(W)  01CD41(R)  01CD93(W)  01CD9C(R)  01CDE9(W)  01CDF0(R)  01CDF2(W)  01CEA5(R)  01D0A4(W)  01D0AA(R)  01D0C9(W)  01D1C1(W)  01D1D1(R)  01D1E6(W)  01D1EF(R)  01D1F5(R)  01D211(W)  01D240(W)  01D249(R)  01D2AD(W)  01D2E0(W)  01D2ED(W)  01D356(R)  01D35C(R)  01D374(R)  01D37B(R)  01D3F7(W)  01D701(W)  01E05B(Wi) 01F433(R)  01F440(R)  01F445(W)  01F457(W)  01F4AE(W)  01F4B5(R)  01F4B7(W)  01F4C3(W)  01F4CA(R)  01F4CC(W)  01F601(W)  01F60B(W)  01F614(R)  01F9F7(W)  01FA04(R)  01FA44(W)  01FA46(R)  01FA6C(R)  01FA98(W)  01FAB4(W)  01FABB(R)  01FAC4(R)  01FB59(W)  01FBBD(W)  01FC6B(W)  01FD79(R)  01FDFA(W)  01FE10(W)  01FE97(W)  01FEC4(W)  
    ram_006B_t01_pos_Y_lo                   = ram_006B_temp ; 
    ram_006B_t02_ppu_hi                     = ram_006B_temp ; 
    ram_006B_t03_spr_X                      = ram_006B_temp ; 
    ram_006B_t04_obj_flags                  = ram_006B_temp ; 
    ram_006B_t05_data_index                 = ram_006B_temp ; 
    ram_006B_t06_numbers_counter            = ram_006B_temp ; 
    ram_006B_t07_attributes_counter         = ram_006B_temp ; 
    ram_006B_t08                            = ram_006B_temp ; 
    ram_006B_t09_lo                         = ram_006B_temp ; 
    ram_006B_t10_counter                    = ram_006B_temp ; 
    ram_006B_t11_tile_1                     = ram_006B_temp ; 
    ram_006B_t12                            = ram_006B_temp ; 
    ram_006B_t13_spd_X_fr_bullet_bounce     = ram_006B_temp ; 
    ram_006B_t14_btns_LR                    = ram_006B_temp ; 
    ram_006B_t15_handler_index              = ram_006B_temp ; 
    ram_006B_t16                            = ram_006B_temp ; 
    ram_006B_t17                            = ram_006B_temp ; 
    ram_006B_t18_counter                    = ram_006B_temp ; 
    ram_006B_t19                            = ram_006B_temp ; 
    ram_006B_t20_data_index                 = ram_006B_temp ; 
    ram_006B_t21                            = ram_006B_temp ; 
    ram_006B_t22_pos_Y_lo_2                 = ram_006B_temp ; 
    ram_006B_t23_lo                         = ram_006B_temp ; 
    ram_006B_t24_data_index                 = ram_006B_temp ; 
    ram_006B_t25                            = ram_006B_temp ; 
    ram_006B_t26                            = ram_006B_temp ; 
    ram_006B_t27                            = ram_006B_temp ; 
    ram_006B_t28                            = ram_006B_temp ; 
    ram_006B_t29_array_index                = ram_006B_temp ; 
    
    ram_006B_tFE_useless                    = ram_006B_temp ; bzk optimize
    ram_006B_tFF_useless                    = ram_006B_temp ; bzk optimize



; 
ram_006C_temp                           = $006C ; 0101C0(W)  0101D1(W)  010934(W)  010B15(W)  0110CA(R)  0117FD(W)  0118A5(W)  011966(W)  011CBB(W)  011CDB(W)  011CF2(W)  011F2A(R)  011FA8(W)  0138A4(R)  0138CD(R)  013BBA(W)  013BDA(R)  013C39(W)  013C61(R)  013C9D(W)  013CC5(R)  015C69(R)  015C7F(R)  015C9A(R)  015CC5(R)  015D0E(R)  015DD8(R)  015E38(R)  015EB9(R)  01670D(W)  016724(R)  016753(W)  016755(R)  016D40(W)  016D4C(R)  016D7A(W)  016D7C(R)  016F4A(W)  016F56(R)  016F7D(W)  016F7F(R)  016FF1(W)  017002(R)  017020(W)  017022(R)  018E14(Wx) 018E2F(Rx) 019784(W)  01992F(W)  01995A(R)  0199B6(W)  01A044(R)  01BF9E(W)  01C1C9(Wx) 01C1DE(Wy) 01C222(Ry) 01C262(Wy) 01C26E(Wy) 01C286(W)  01C2C1(R)  01C3FF(W)  01C41C(W)  01C428(R)  01C42F(R)  01C435(W)  01C6EA(W)  01C707(R)  01C709(W)  01C725(R)  01CA8F(W)  01CABC(W)  01CEA7(W)  01D060(R)  01D0DF(R)  01D1B1(W)  01D1D4(W)  01D1D7(W)  01D1E0(R)  01D1F3(W)  01D20C(R)  01D2C2(W)  01D31D(R)  01D3E6(W)  01D5FB(W)  01D62A(R)  01E05B(Wi) 01F426(W)  01F44B(W)  01F450(W)  01F88E(W)  01F893(R)  01F895(W)  01F899(R)  01F8F3(W)  01F908(W)  01F948(W)  01F961(W)  01F964(W)  01F96B(R)  01FA1D(W)  01FA27(W)  01FA2F(R)  01FB5E(W)  01FBC2(W)  01FC70(W)  01FD35(R)  01FDF5(W)  01FE14(W)  01FF09(W)  
    ram_006C_t01                            = ram_006C_temp ; 
    ram_006C_t02                            = ram_006C_temp ; 
    ram_006C_t03_city_sector                = ram_006C_temp ; 
    ram_006C_t04                            = ram_006C_temp ; 
    ram_006C_t05                            = ram_006C_temp ; 
    ram_006C_t06                            = ram_006C_temp ; 
    ram_006C_t07_button_B                   = ram_006C_temp ; always 40 (B button), used via BIT instead of AND to keep A intact
    ram_006C_t08                            = ram_006C_temp ; 
    ram_006C_t09                            = ram_006C_temp ; 
    ram_006C_t10                            = ram_006C_temp ; 
    ram_006C_t11_data_ptr_lo                = ram_006C_temp ; 
    ram_006C_t12                            = ram_006C_temp ; 
    ram_006C_t13                            = ram_006C_temp ; 
    ram_006C_t14                            = ram_006C_temp ; 
    ram_006C_t15_spr_Y                      = ram_006C_temp ; 
    ram_006C_t16_loop_counter               = ram_006C_temp ; 
    ram_006C_t17                            = ram_006C_temp ; 
    ram_006C_t18_tile_2                     = ram_006C_temp ; 
    ram_006C_t19_metatile_id                = ram_006C_temp ; 
    ram_006C_t20_pos_X_lo                   = ram_006C_temp ; 
    ram_006C_t21_pos_X_lo                   = ram_006C_temp ; 
    ram_006C_t22_hi                         = ram_006C_temp ; 
    ram_006C_t23_tile                       = ram_006C_temp ; 
    ram_006C_t24                            = ram_006C_temp ; 
    ram_006C_t25_ppu_hi                     = ram_006C_temp ; 
    ram_006C_t26                            = ram_006C_temp ; 
    
    ram_006C_tFB_useless                    = ram_006C_temp ; bzk optimize
    ram_006C_tFC_useless                    = ram_006C_temp ; bzk optimize
    ram_006C_tFD_useless                    = ram_006C_temp ; bzk optimize
    ram_006C_tFE_useless                    = ram_006C_temp ; bzk optimize
    ram_006C_tFF_useless                    = ram_006C_temp ; bzk optimize



; 
ram_006D_temp                           = $006D ; 010CB1(R)  011A9F(R)  0138AA(R)  0138DA(R)  013E3F(R)  013E58(W)  013E9B(R)  013F55(W)  013F6C(W)  013FCE(W)  013FD0(R)  01547B(R)  0168FD(R)  01780F(W)  01781A(R)  017849(W)  017850(R)  017856(W)  017881(R)  017CAB(R)  017E70(W)  017F01(W)  018949(R)  018E29(W)  018E2D(R)  018E6C(W)  018E6E(R)  019795(W)  0198EB(W)  0199C1(R)  01A06B(R)  01A147(R)  01BFA2(W)  01C1C9(Wx) 01C1DE(Wy) 01C222(Ry) 01C262(Wy) 01C26E(Wy) 01C28F(W)  01C2AE(R)  01C3D3(W)  01C6EF(W)  01C70F(R)  01C711(W)  01C736(R)  01C8E4(R)  01CACA(W)  01CAD1(R)  01CAD3(W)  01CEAC(W)  01D06A(R)  01D1CF(W)  01D232(R)  01D239(W)  01D258(R)  01D2CE(W)  01D36B(R)  01D372(W)  01D38D(R)  01E05B(Wi) 01F886(W)  01F8AE(R)  01F8B5(W)  01F8F7(R)  01F900(R)  01FA2C(W)  01FA3E(R)  01FB78(W)  01FBDC(W)  01FCCE(W)  01FCF6(R)  01FD06(R)  01FD14(R)  01FD60(R)  01FE2D(W)  01FF03(W)  
    ram_006D_t01_spr_A_flip                 = ram_006D_temp ; 
    ram_006D_t02_flagged_damage             = ram_006D_temp ; 
    ram_006D_t03                            = ram_006D_temp ; 
    ram_006D_t04_max_numbers                = ram_006D_temp ; 
    ram_006D_t05_obj_index                  = ram_006D_temp ; 
    ram_006D_t06_digits_counter             = ram_006D_temp ; 
    ram_006D_t07_attribute                  = ram_006D_temp ; 
    ram_006D_t08_tile_1                     = ram_006D_temp ; 
    ram_006D_t09_spd_Y_lo_bullet_bounce     = ram_006D_temp ; 
    ram_006D_t10_data_index                 = ram_006D_temp ; 
    ram_006D_t11_damage                     = ram_006D_temp ; 
    ram_006D_t12_obj_flag                   = ram_006D_temp ; 
    ram_006D_t13_pos_Y_lo                   = ram_006D_temp ; 
    ram_006D_t14_pos_Y_lo                   = ram_006D_temp ; 
    ram_006D_t15_attribute                  = ram_006D_temp ; 
    ram_006D_t16_array_index                = ram_006D_temp ; 
    ram_006D_t17                            = ram_006D_temp ; 
    
    ram_006D_tFD_useless                    = ram_006D_temp ; bzk optimize
    ram_006D_tFE_useless                    = ram_006D_temp ; bzk optimize
    ram_006D_tFF_useless                    = ram_006D_temp ; bzk optimize



; 
ram_006E_temp                           = $006E ; 0101F4(W)  010217(W)  010A65(W)  010CB6(R)  010D3E(R)  010D46(R)  010D9F(W)  011218(W)  011AA4(R)  013905(R)  013E77(W)  013E85(R)  013E8C(R)  013E93(W)  013EAF(W)  013ECA(R)  013F04(W)  013F0B(R)  013F1F(R)  013FA6(W)  013FB1(R)  013FC1(R)  015480(R)  0166BA(R)  0166D6(R)  016902(R)  017885(W)  01788D(R)  017C4C(R)  017CB0(R)  01894E(R)  018DB4(W)  018DDD(W)  0198F4(W)  01999E(W)  0199B1(R)  0199BB(W)  01C1C9(Wx) 01C1DE(Wy) 01C222(Ry) 01C262(Wy) 01C26E(Wy) 01C294(W)  01C2C6(R)  01C8E9(R)  01CAC3(W)  01CEB4(W)  01CEB9(W)  01CEE1(W)  01CF2E(R)  01D221(W)  01D22B(R)  01D22D(W)  01D24C(R)  01D314(W)  01D320(W)  01D323(W)  01D32C(R)  01D332(W)  01D334(R)  01D34E(W)  01D35A(W)  01D364(R)  01D366(W)  01D385(R)  01DF25(R)  01DF4D(R)  01DF52(W)  01E05B(Wi) 01F626(W)  01F62B(R)  01F8AC(W)  01F8E5(R)  01F8EC(W)  01F916(R)  01F91B(R)  01FA38(W)  01FA40(R)  01FB91(W)  01FBF5(W)  01FCE5(W)  01FCEF(R)  
    ram_006E_t01                            = ram_006E_temp ; 
    ram_006E_t02_damage_to_player           = ram_006E_temp ; 
    ram_006E_t03_number                     = ram_006E_temp ; 
    ram_006E_t04_counter                    = ram_006E_temp ; 
    ram_006E_t05_data_ptr_hi                = ram_006E_temp ; 
    ram_006E_t06_data_index                 = ram_006E_temp ; 
    ram_006E_t07_tile_2                     = ram_006E_temp ; 
    ram_006E_t08_pos_X_lo                   = ram_006E_temp ; 
    ram_006E_t09_pos_Y_fr_bullet_bounce     = ram_006E_temp ; 
    ram_006E_t10_pos_X_lo                   = ram_006E_temp ; 
    ram_006E_t11_pos_Y_lo                   = ram_006E_temp ; 
    ram_006E_t12_pos_Y_lo                   = ram_006E_temp ; 
    ram_006E_t13_pos_Y_lo                   = ram_006E_temp ; 
    ram_006E_t14_score_hi                   = ram_006E_temp ; 
    ram_006E_t15                            = ram_006E_temp ; 
    ram_006E_t16_table_index                = ram_006E_temp ; 
    ram_006E_t17                            = ram_006E_temp ; 
    ram_006E_t18_table_index                = ram_006E_temp ; 
    ram_006E_t19                            = ram_006E_temp ; 
    ram_006E_t20_buffer_index               = ram_006E_temp ; 
    ram_006E_t21                            = ram_006E_temp ; bzk optimize
    
    ram_006E_tFF_useless                    = ram_006E_temp ; bzk optimize



; 
ram_006F_temp                           = $006F ; 010212(W)  010447(W)  01047B(W)  0106D6(W)  010718(W)  010811(W)  01081F(W)  0108BE(W)  0109B1(W)  010A67(W)  010D59(R)  010D61(R)  010D9A(W)  011213(W)  0114F0(W)  011723(R)  011791(R)  0117A6(R)  013BC0(W)  013BCD(W)  013C3F(W)  013C55(W)  013CA3(W)  013CB9(W)  013D06(R)  013DF9(R)  013E9D(R)  018DB9(W)  018DE2(W)  01924E(W)  019261(R)  019293(R)  0198F9(W)  01C1C9(Wx) 01C1DE(Wy) 01C222(Ry) 01C262(Wy) 01C26E(Wy) 01C3D1(W)  01CF7E(W)  01CF92(R)  01CFA3(R)  01CFC0(W)  01CFD0(R)  01D338(W)  01D349(R)  01D379(W)  01D382(R)  01D572(W)  01D67E(W)  01DF2E(R)  01DF46(R)  01DF4B(W)  01E05B(Wi) 01F5E8(W)  01F5EA(R)  01F5F4(R)  01F61F(R)  01F63F(W)  01F641(W)  01F643(R)  01F8B3(W)  01F8BD(R)  01F9F9(W)  01FA3A(R)  01FA58(W)  01FA5F(W)  01FB8D(W)  01FBF1(W)  01FC2A(W)  01FD8C(R)  01FDB7(R)  
    ram_006F_t01_shot_id                    = ram_006F_temp ; 
    ram_006F_t02                            = ram_006F_temp ; 
    ram_006F_t03                            = ram_006F_temp ; 
    ram_006F_t04                            = ram_006F_temp ; 
    ram_006F_t05                            = ram_006F_temp ; 
    ram_006F_t06                            = ram_006F_temp ; 
    ram_006F_t07                            = ram_006F_temp ; 
    ram_006F_t08_score_lo                   = ram_006F_temp ; 
    ram_006F_t09_pos_Y_lo_add               = ram_006F_temp ; 
    ram_006F_t10_buffer_index_offset        = ram_006F_temp ; 
    ram_006F_t11_data_index                 = ram_006F_temp ; 
    ram_006F_t12_array_index                = ram_006F_temp ; 
    ram_006F_t13                            = ram_006F_temp ; 
    ram_006F_t14_data_index                 = ram_006F_temp ; 



; 
ram_0070_temp                           = $0070 ; 0101ED(W)  0101EF(R)  010201(W)  011642(W)  011681(W)  011812(W)  011825(R)  011829(R)  011879(R)  0118E5(R)  011A93(R)  011BEB(W)  011BED(R)  011BF4(W)  011C08(R)  011C56(R)  011CC2(R)  011CCF(R)  011D56(R)  011E9F(R)  011F26(R)  011F9B(W)  011FDC(R)  011FE8(R)  0138A8(W)  0138AE(R)  0138B2(W)  0138B7(R)  0138BD(W)  013BD2(W)  013BE6(R)  013BF2(W)  013D33(R)  013D54(R)  0179CF(W)  0179E3(W)  017B09(W)  017B2A(W)  017D36(W)  017D57(W)  017DDE(W)  017DFF(W)  018DBE(W)  018DE7(W)  01926D(W)  01929B(R)  0198FE(W)  01A037(R)  01A0AB(W)  01A104(R)  01C1C9(Wx) 01C1DE(Wy) 01C222(Ry) 01C262(Wy) 01C26E(Wy) 01C3CD(W)  01DF37(R)  01DF3E(R)  01DF44(W)  01DF58(R)  01E05B(Wi) 01F8B9(W)  01F8C0(W)  01F8C3(W)  01F8CC(R)  01F8E1(W)  01F8E7(R)  01F9FB(W)  01FA13(R)  01FA54(R)  01FA78(W)  01FB1A(W)  01FC30(W)  01FD1B(R)  01FD9A(W)  01FDB5(R)  
    ram_0070_t01                            = ram_0070_temp ; 
    ram_0070_t02_drop_id                    = ram_0070_temp ; see con_drop
    ram_0070_t03_tens_digit                 = ram_0070_temp ; 
    ram_0070_t04_oam_index                  = ram_0070_temp ; 
    ram_0070_t05_loop_counter               = ram_0070_temp ; 
    ram_0070_t06_obj_index                  = ram_0070_temp ; 
    ram_0070_t07                            = ram_0070_temp ; 
    ram_0070_t08                            = ram_0070_temp ; 
    ram_0070_t09_counter                    = ram_0070_temp ; 
    ram_0070_t10_counter                    = ram_0070_temp ; 
    ram_0070_t11                            = ram_0070_temp ; 
    ram_0070_t12                            = ram_0070_temp ; 
    ram_0070_t13_attribute                  = ram_0070_temp ; 
    ram_0070_t14_hi                         = ram_0070_temp ; 
    ram_0070_t15_counter                    = ram_0070_temp ; bzk optimize
    ram_0070_t16_counter                    = ram_0070_temp ; bzk optimize
    
    ram_0070_tFE_useless                    = ram_0070_temp ; bzk optimize
    ram_0070_tFF_useless                    = ram_0070_temp ; bzk optimize



; 
ram_0071_temp                           = $0071 ; 008F2A(W)  008F81(W)  00908D(W)  00911B(W)  009120(W)  009133(R)  011BE7(W)  011C03(W)  013DF7(W)  013EB5(W)  013EBA(R)  013F7E(R)  0143DF(W)  0143F4(R)  014407(W)  01441C(R)  014AB2(W)  015723(W)  01572F(R)  015907(W)  015950(R)  015957(W)  015A8A(W)  015A9A(R)  017B41(W)  017B7D(R)  017D6E(W)  017D9D(R)  017E46(W)  017E55(R)  018E07(Ri) 019812(R)  019819(R)  01A19B(W)  01A1BA(W)  01B757(W)  01B760(R)  01B785(W)  01B7A2(W)  01B7B2(W)  01B7B8(R)  01B7F1(W)  01B7F8(R)  01B803(W)  01BA46(W)  01BA4A(R)  01BB26(W)  01BB2B(R)  01BD1D(W)  01BD24(R)  01BDF7(W)  01BE12(W)  01BE29(R)  01BF22(W)  01BF2F(R)  01C1D9(W)  01C1E2(R)  01C254(W)  01C258(R)  01C265(W)  01C267(W)  01C414(W)  01DF70(W)  01DF75(R)  01DF77(W)  01E05B(Wi) 01FCF8(W)  01FD08(W)  01FD16(W)  01FD51(R)  01FD5A(R)  01FE3A(W)  01FF05(W)  
    ram_0071_t01                            = ram_0071_temp ; 
    ram_0071_t02_counter                    = ram_0071_temp ; 
    ram_0071_t03_tile                       = ram_0071_temp ; 
    ram_0071_t04_hi                         = ram_0071_temp ; 
    ram_0071_t05_spr_A                      = ram_0071_temp ; 
    ram_0071_t06_loop_counter               = ram_0071_temp ; 
    ram_0071_t07                            = ram_0071_temp ; 
    ram_0071_t08                            = ram_0071_temp ; 
    ram_0071_t09                            = ram_0071_temp ; 
    ram_0071_t10                            = ram_0071_temp ; 
    ram_0071_t11_obj_counter                = ram_0071_temp ; 
    ram_0071_t12_hi                         = ram_0071_temp ; 
    ram_0071_t13                            = ram_0071_temp ; 
    ram_0071_t14_lo                         = ram_0071_temp ; 
    ram_0071_t15_obj_index                  = ram_0071_temp ; 
    ram_0071_t16_obj_index                  = ram_0071_temp ; 
    ram_0071_t17_save_obj_index             = ram_0071_temp ; 
    ram_0071_t18_score_array                = ram_0071_temp ; 
    ram_0071_t19_damage_to_player           = ram_0071_temp ; 
    ram_0071_t20_pos_X_lo                   = ram_0071_temp ; 
    ram_0071_t21                            = ram_0071_temp ; 
    ram_0071_t22_spd_X_lo                   = ram_0071_temp ; 
    ram_0071_t23_bars_counter               = ram_0071_temp ; 
    ram_0071_t24_bars_counter               = ram_0071_temp ; 
    ram_0071_t25_ones_digit                 = ram_0071_temp ; 
    
    ram_0071_tFF_useless                    = ram_0071_temp ; bzk optimize



; 
ram_0072_temp                           = $0072 ; 008F2F(W)  009111(R)  010AAB(R)  010C44(W)  0114D3(R)  0114DC(R)  011501(R)  01151B(R)  013CF7(W)  013DDE(W)  0143F2(W)  01441A(W)  0159ED(R)  015A8C(W)  015AAD(R)  018E07(Ri) 01981E(R)  019823(R)  01A1AA(W)  01A22C(R)  01A2E4(R)  01B76A(W)  01B76F(R)  01B791(W)  01B7BA(R)  01BF27(W)  01BF47(R)  01C191(W)  01C19E(W)  01C1D0(R)  01C1EB(R)  01C201(R)  01C249(R)  01C272(R)  01C296(R)  01CC81(R)  01DF7D(W)  01DF82(R)  01DF84(W)  01E05B(Wi) 01FDDA(W)  01FE03(W)  
    ram_0072_t01_tile                       = ram_0072_temp ; 
    ram_0072_t02                            = ram_0072_temp ; 
    ram_0072_t03                            = ram_0072_temp ; 
    ram_0072_t04_lo                         = ram_0072_temp ; 
    ram_0072_t05                            = ram_0072_temp ; 
    ram_0072_t06_spd_Y_lo                   = ram_0072_temp ; 
    ram_0072_t07_plr_index                  = ram_0072_temp ; 
    ram_0072_t08_ones_digit                 = ram_0072_temp ; 
    ram_0072_t09_obj_item_index             = ram_0072_temp ; 
    ram_0072_t10_lo                         = ram_0072_temp ; 
    ram_0072_t11                            = ram_0072_temp ; 
    ram_0072_t12_data_index                 = ram_0072_temp ; 
    
    ram_0072_tFF_useless                    = ram_0072_temp ; bzk optimize



; 
ram_0073_temp                           = $0073 ; 01185C(W)  01186F(R)  01188F(R)  0118AA(W)  0118B8(W)  0118D9(R)  011911(W)  0119C0(W)  013C4D(W)  013C59(W)  013C6E(R)  013CB1(W)  013CBD(W)  013CD2(R)  018E07(Ri) 019828(R)  01982D(R)  01B821(W)  01B82C(R)  01B833(R)  01BF2D(W)  01BF33(W)  01BF3E(R)  01DF5A(R)  01DF5C(W)  01DF8A(W)  01E05B(Wi) 01FDFC(W)  01FE01(R)  
    ram_0073_t01_save_X                     = ram_0073_temp ; 
    ram_0073_t02_loop_counter               = ram_0073_temp ; 
    ram_0073_t03_loop_counter               = ram_0073_temp ; 
    ram_0073_t04_ppu_hi_offset              = ram_0073_temp ; 
    ram_0073_t05_ppu_hi_offset              = ram_0073_temp ; 
    ram_0073_t06_pos_X_lo                   = ram_0073_temp ; 
    ram_0073_t07_pos_X_hi                   = ram_0073_temp ; 
    ram_0073_t08_ones_digit                 = ram_0073_temp ; 



; 
ram_0074_temp                           = $0074 ; 01420B(W)  01596F(W)  01BED0(R)  01BEFB(R)  01BF4D(R)  01BF58(R)  01CB5D(W)  01CB68(R)  01DF23(W)  01DF54(W)  01DF73(R)  01DF80(R)  01DF8D(R)  01E05B(Wi) 01FC41(W)  01FC4A(R)  
    ram_0074_t01_table_index                = ram_0074_temp ; 
    ram_0074_t02_obj_id                     = ram_0074_temp ; 
    ram_0074_t03_tens_digit                 = ram_0074_temp ; 
    ram_0074_t04_obj_flag                   = ram_0074_temp ; 
    
    ram_0074_tFF_useless                    = ram_0074_temp ; bzk optimize



; 
ram_0075_temp                           = $0075 ; 01002C(W)  010062(W)  010E3C(W)  010E71(W)  014213(R)  01425C(W)  014269(R)  014446(R)  01502E(R)  015A18(R)  015C2E(W)  01B9D8(R)  01BA78(W)  01BA8C(R)  01BC71(R)  01BCEE(R)  01BD3E(R)  01BDD8(R)  01CB54(W)  01CBC1(R)  01CBEB(R)  01CC83(R)  01E05B(Wi) 01FD23(W)  01FD30(W)  01FD3A(R)  
    ram_0075_t01_loop_counter               = ram_0075_temp ; 
    ram_0075_t02_loop_counter               = ram_0075_temp ; 
    ram_0075_t03_obj_id                     = ram_0075_temp ; (obj_id - 50) * 02
    ram_0075_t04_obj_id                     = ram_0075_temp ; (obj_id - 24) * 02
    ram_0075_t05_obj_index                  = ram_0075_temp ; 
    ram_0075_t06                            = ram_0075_temp ; 



; 
ram_obj_index                           = $0076 ; 010030(W)  010032(R)  010039(W)  01011C(R)  01014D(R)  0101E9(R)  0101F9(R)  010208(R)  01021C(R)  010276(R)  0102B2(R)  0102DE(R)  01034D(R)  010381(R)  0103B5(R)  0103D7(R)  0103FB(R)  01044C(R)  010480(R)  010526(R)  010548(R)  010556(R)  0105E7(R)  010689(R)  0106B6(R)  0106DB(R)  01071D(R)  010799(R)  0107D3(R)  01089C(R)  0108F7(R)  01092B(R)  010967(R)  010986(R)  0109A8(R)  0109DB(R)  010A42(R)  010A5A(R)  010A72(R)  010A9A(R)  010AE5(R)  010AF3(R)  010B11(R)  010B1A(R)  010B56(R)  010B74(R)  010B7E(R)  010BA9(R)  010BF4(R)  010CA5(R)  010CC7(R)  010CE6(R)  010CFB(R)  010D14(R)  010D74(R)  010DA4(R)  010E40(W)  010E42(R)  010E56(W)  010EC0(R)  010ECD(R)  010EDF(R)  010EEF(R)  010F00(R)  010F14(R)  010F3F(R)  010FE0(R)  011001(R)  011015(R)  0110AF(R)  0110C3(R)  0110EF(R)  011116(R)  01117F(R)  011202(R)  01121D(R)  0112D6(R)  0112FD(R)  011318(R)  011416(R)  01146C(R)  0114CC(R)  0114E5(R)  01152A(R)  01155A(R)  01156B(R)  011576(R)  011583(R)  011588(R)  0117AC(R)  0118BF(R)  011900(R)  011925(R)  01CB56(W)  01CBBD(R)  01CBC3(R)  01CC5D(R)  01E05B(Wi) 01FD25(W)  01FD74(W)  01FD7E(R)  



; 
ram_0077_temp                           = $0077 ; 010515(W)  01061B(W)  010793(W)  010980(W)  0109D3(W)  010BB5(W)  01179C(W)  011855(W)  0118B1(W)  01191B(W)  011981(W)  01198B(W)  0119B9(W)  0119C7(W)  011F5A(W)  01617E(W)  016408(W)  0164D3(W)  0167F3(W)  016C3A(W)  016CB1(W)  016DEB(W)  017197(W)  017263(W)  0173DC(W)  0174E3(W)  017511(W)  017598(W)  01760D(W)  01766A(W)  017754(W)  017789(W)  017A43(W)  017C13(W)  017DBE(W)  017E9B(W)  018435(W)  01848D(W)  01856B(W)  0186F2(W)  018849(W)  018B3A(W)  018D19(W)  018D26(W)  018D77(W)  018DA1(W)  018EF4(W)  019139(W)  0192E0(W)  0193AB(W)  0193D7(W)  0196F4(W)  0197A8(W)  019848(W)  019B2A(W)  019B4F(W)  019D35(W)  019E6E(W)  019EAE(W)  01A2DC(W)  01A37C(W)  01A39D(W)  01A3CB(W)  01A419(W)  01BE97(W)  01C7D6(W)  01C822(W)  01C8F0(W)  01CB0D(W)  01CB22(R)  01CB34(W)  01CB3B(W)  01CF4B(W)  01CF9E(W)  01CFCB(W)  01D525(W)  01D589(W)  01D6B0(W)  01DBD2(W)  01DBE2(W)  01DC32(W)  01DC87(W)  01E05B(Wi) 01E475(W)  01E53B(W)  01E9FD(W)  01EBA6(W)  01EBCB(W)  01EEC7(W)  01F2F3(W)  01F372(W)  01FD2A(W)  01FD32(R)  01FD6E(W)  01FD76(R)  
    ram_0077_t01_spr_Y                      = ram_0077_temp ; 
    ram_0077_t02_spr_X                      = ram_0077_temp ; 
    ram_0077_t03_sound_id                   = ram_0077_temp ; see con_sfx



; 
ram_0078_temp                           = $0078 ; 0141FA(W)  01423E(W)  014246(W)  01427A(W)  0150D1(W)  01E05B(Wi) 
    ram_0078_t01_loop_counter               = ram_0078_temp ; 
    ram_0078_t02_loop_counter               = ram_0078_temp ; 



; 
ram_0079_obj_index                      = $0079 ; 014204(W)  014224(R)  014484(R)  01453C(R)  014896(R)  014D76(R)  01505D(R)  015444(R)  01546F(R)  015518(R)  015959(R)  015997(R)  0159B6(W)  015B66(R)  015C32(W)  01B752(R)  01B793(R)  01B98E(W)  01BF29(R)  01E05B(Wi) 



; 
ram_007A_temp                           = $007A ; 008F6E(W)  009124(W)  00912A(R)  00913B(W)  014253(W)  0152FA(R)  015982(W)  0159DB(R)  015A11(R)  01BEF8(R)  01E05B(Wi) 01E7D6(W)  01E7E1(W)  01E802(W)  01E804(W)  01E806(R)  01E82B(W)  
    ram_007A_t01_buffer_index               = ram_007A_temp ; 
    ram_007A_t02_object_index               = ram_007A_temp ; 
    ram_007A_t03_object_index               = ram_007A_temp ; 
    ram_007A_t04_delay_timer                = ram_007A_temp ; 
    ram_007A_t05_loop_counter               = ram_007A_temp ; 



; free addresses
; ram_007B                              = $007B ; 01E05B(Wi) 
; ram_007C                              = $007C ; 01E05B(Wi) 



; most likely useless adress, always 00?
    ; at 0x01F7C3 can be 00/01, but not read later
; language flag ENG (00)/JAP (01)?
ram_007D_unk_language                   = $007D ; 018061(W)  01C03D(W)  01D0EC(R)  01D155(R)  01D24E(R)  01D278(R)  01D304(W)  01E05B(Wi) 01F7C3(W)  



; 
ram_007E_temp                           = $007E ; 0180C2(W)  018F41(W)  01D11B(W)  01E05B(Wi) 
    ram_007E_t01_data                       = ram_007E_temp ; 2 addresses 007E-007F
    ram_007E_t02_metatile_id_data           = ram_007E_temp ; 2 addresses 007E-007F



; used only in pair with ram_007E_temp
; ram_007F                              = $007F ; 0180C6(W)  018F46(W)  01D120(W)  01E05B(Wi) 



; 
ram_0080_temp                           = $0080 ; 0180BA(W)  018F4B(W)  01C035(W)  01D131(W)  01D1DA(R)  01D326(R)  01E05B(Wi) 01F533(R)  01F8C6(R)  
    ram_0080_t01_metatiles_ptr_lo           = ram_0080_temp ; 
    ram_0080_t02_ptr_lo                     = ram_0080_temp ; 
    ram_0080_t03_ptr_lo                     = ram_0080_temp ; 



; 
ram_0081_temp                           = $0081 ; 0180BE(W)  018F50(W)  01C039(W)  01D136(W)  01D1DE(R)  01D32A(R)  01E05B(Wi) 01F537(R)  01F8CA(R)  
    ram_0081_t01_metatiles_ptr_hi           = ram_0081_temp ; 
    ram_0081_t02_ptr_hi                     = ram_0081_temp ; 
    ram_0081_t03_ptr_hi                     = ram_0081_temp ; 



; 
ram_0082_temp                           = $0082 ; 0180CA(W)  018F55(W)  01D147(W)  01E05B(Wi) 
    ram_0082_t01_data                       = ram_0082_temp ; 2 addresses 0082-0083
    ram_0082_t02_data                       = ram_0082_temp ; 2 addresses 0082-0083



; used only in pair with ram_0082_temp
; ram_0083                              = $0083 ; 0180CE(W)  018F5A(W)  01D14C(W)  01E05B(Wi) 



; 
ram_0084_ppu_lo                         = $0084 ; 01E05B(Wi) 01E3A6(R)  01F5B5(W)  
ram_0085_ppu_hi                         = $0085 ; 01E05B(Wi) 01E3A4(R)  01F5BC(W)  



; free address
; ram_0086                              = $0086 ; 01E05B(Wi) 



; index for ram_0308_ppu_buffer
; bzk optimize, useless address?, supposedly always 18, see 0x01F517
ram_0087_useless_buffer_index_1E        = $0087 ; 01E05B(Wi) 01E3B4(R)  01F517(W)  



; index for ram_0364_ppu_buffer
; bzk optimize, useless address, always 18
ram_0088_useless_buffer_index_18        = $0088 ; 01E05B(Wi) 01E3D6(R)  01F686(W)  



; 
ram_0089_scroll_X_hi                    = $0089 ; 01E05B(Wi) 01E7C4(W)  01E919(W)  01EAE0(W)  01EB2A(R)  01EB2E(W)  01F3B3(R)  01F3E2(R)  01F474(R)  01F48F(R)  01F4EB(R)  01F4EF(W)  01F4F9(R)  01F4FD(W)  01F585(R)  01F595(R)  01F69B(R)  01F6AB(R)  01F7BB(R)  01F862(R)  
ram_008A_scroll_X_lo                    = $008A ; 01E05B(Wi) 01E7BE(W)  01E91B(W)  01EAF7(W)  01EB23(R)  01EB28(W)  01EB35(W)  01F3C5(R)  01F3F6(R)  01F46F(R)  01F48A(R)  01F4A5(R)  01F4BA(R)  01F4E4(R)  01F4E9(W)  01F4F2(R)  01F4F7(W)  01F51D(R)  01F57F(R)  01F58F(R)  01F5D5(R)  01F5DD(R)  01F695(R)  01F6A5(R)  01F7B2(R)  01F859(R)  



; 
ram_008B_scroll_Y_hi                    = $008B ; 01E05B(Wi) 01E7C8(W)  01E913(W)  01EAD6(W)  01F40D(R)  01F733(R)  01F758(R)  01F795(R)  01F799(W)  01F7AB(R)  01F7AF(W)  01F81B(R)  
ram_008C_scroll_Y_lo                    = $008C ; 01E05B(Wi) 01E7CE(W)  01E917(W)  01EAF9(W)  01F411(R)  01F745(R)  01F76C(R)  01F78A(R)  01F793(W)  01F79E(R)  01F7A9(W)  01F7F3(R)  01F84F(R)  01F8D0(R)  01F95C(R)  01F9A3(R)  01F9E0(R)  



; 00 = 
; 01 = 
; 02 = 
ram_008D                                = $008D ; 01E05B(Wi) 01E7B1(W)  01EB3D(W)  01F386(R)  01F391(R)  01F4CF(R)  01F72F(R)  01F754(R)  01F779(R)  01F780(W)  01F7FF(W)  01F868(R)  



; 00 = 
; 01 = 
; 02 = 
ram_008E                                = $008E ; 01E05B(Wi) 01E7B3(W)  01EB3F(W)  01F3AF(R)  01F3CE(W)  01F3DE(R)  01F3FD(W)  01F4D3(R)  01F4DA(W)  01F500(R)  01F5AB(R)  01F711(R)  



; free address
; ram_008F                              = $008F ; 01E05B(Wi) 



; 
ram_0090_array_index                    = $0090 ; 01E05B(Wi) 01F3D2(W)  01F401(W)  01F42A(W)  01F527(R)  01F53D(R)  01F544(W)  



; not read anywhere
ram_0091_useless                        = $0091 ; 01E05B(Wi) 01F3D4(W)  01F403(W)  



; 00 = 
; 01 = scroll down
; 02 = scroll up
ram_0092_scroll_Y_direction             = $0092 ; 0170FC(W)  017146(W)  01E05B(Wi) 01EB3B(W)  01F715(R)  01F73D(R)  01F74F(R)  01F762(R)  01F774(R)  01F825(R)  



; 
ram_0093_prev_scroll_Y_direction        = $0093 ; 01E05B(Wi) 01F73F(R)  01F751(W)  01F764(R)  01F776(W)  01F784(R)  



; 00 = 
; 01 = scroll right
; 02 = scroll left
ram_0094_scroll_X_direction             = $0094 ; 01707C(W)  0170A2(W)  01E05B(Wi) 01E7D2(W)  01F395(R)  01F3BD(R)  01F3D6(R)  01F3EC(R)  01F405(R)  



; 
ram_0095_prev_scroll_X_direction        = $0095 ; 01E05B(Wi) 01F3BF(R)  01F3D8(W)  01F3EE(R)  01F407(W)  01F461(R)  01F49F(R)  01F4DE(R)  01F579(R)  01F5CF(R)  01F68F(R)  



; 
ram_0096_temp                           = $0096 ; 017061(R)  017089(R)  0170E0(R)  01712A(R)  01E05B(Wi) 01ECBC(R)  01ECE0(R)  01ED00(R)  01ED1A(R)  01F009(W)  01F019(R)  01F01B(W)  01F02B(R)  01F02F(W)  01F042(R)  01F044(W)  01F056(R)  01F05A(W)  01F067(R)  01F069(W)  01F07B(R)  01F07F(W)  01F092(R)  01F094(W)  01F0B3(R)  01F0B7(W)  01F2FB(W)  
    ram_0096_t01                            = ram_0096_temp ; 
    ram_0096_t02                            = ram_0096_temp ; 
    ram_0096_t03                            = ram_0096_temp ; 
    ram_0096_t04                            = ram_0096_temp ; main temp



; bzk optimize, useless address, always 00
ram_0097_useless_00                     = $0097 ; 01E05B(Wi) 01E79B(W)  01F011(R)  



; 
ram_0098_scroll_Y_hi                    = $0098 ; 013BDE(R)  013C95(R)  01CD14(R)  01E05B(Wi) 01E797(W)  01F038(R)  01F046(R)  



; bzk optimize, useless address, always 00
ram_0099_useless_00                     = $0099 ; 01E05B(Wi) 01E79D(W)  01F05F(R)  01F06B(R)  



; 
ram_009A_scroll_X_hi                    = $009A ; 013C11(R)  013C65(R)  013CC9(R)  01E05B(Wi) 01E792(W)  01F088(R)  01F096(R)  



; a copy of register value
ram_for_8000                            = $009B ; 01DB58(W)  01DB6F(W)  01E05B(Wi) 01E1F3(R)  01E271(R)  01E276(W)  01E283(W)  01E293(W)  01E2A3(W)  



; 
ram_prg_bank_8000                       = $009C ; 010154(R)  010159(W)  0101AD(W)  0102A8(R)  0102AD(W)  010347(W)  0107EC(R)  0107F1(W)  010822(W)  0108A6(R)  0108AB(W)  010A77(R)  010A7C(W)  010A95(W)  011255(R)  01125A(W)  0112D0(W)  0114A2(R)  0114A7(W)  0114C0(W)  011615(R)  01161A(W)  01168F(W)  011A13(R)  011A18(W)  011A8A(W)  011DE8(R)  011DED(W)  011E33(W)  014016(R)  01406C(R)  0140AA(W)  01448D(W)  016914(R)  016919(W)  016991(W)  016A01(R)  016A06(W)  016A42(W)  016AAA(R)  016AAF(W)  016AFB(W)  016B14(W)  016EA4(W)  017925(R)  01792A(W)  017948(W)  017CD7(R)  017CDC(W)  017D24(W)  017EC6(R)  017ECB(W)  017F0A(W)  017F12(R)  017F17(W)  017F64(W)  0180DB(R)  0180E0(W)  01810B(W)  018157(R)  01815C(W)  018173(W)  0181B3(R)  0181B8(W)  0181EA(W)  018227(R)  01822C(W)  018260(W)  018293(R)  018298(W)  0182EC(W)  018302(R)  018307(W)  018332(W)  018364(R)  018369(W)  0183AD(W)  018642(R)  018647(W)  01867D(W)  018683(R)  018688(W)  018691(W)  0187B0(R)  0187B5(W)  0187BE(W)  0187E3(R)  0187E8(W)  018865(W)  018892(R)  018897(W)  0188CE(W)  018917(R)  01891C(W)  018954(W)  0189E8(R)  0189ED(W)  018A0F(W)  018B84(R)  018B89(W)  018B95(W)  018C3D(R)  018C42(W)  018C96(W)  018C9C(R)  018CA1(W)  018CD2(W)  018E1D(R)  018E22(W)  018E75(W)  018F16(R)  018F1B(W)  018F5D(W)  018F93(R)  018F98(W)  018FA1(W)  018FE5(R)  018FEA(W)  018FF3(W)  019005(R)  01900A(W)  019013(W)  019189(R)  01918E(W)  0191C6(W)  019200(R)  019205(W)  01920E(W)  019325(R)  01932A(W)  0193A1(W)  019596(R)  01959B(W)  0195A9(W)  0195BF(R)  0195C4(W)  0195EA(W)  0195F0(R)  0195F5(W)  01962B(W)  019631(R)  019636(W)  0196A3(W)  0196AB(R)  0196B0(W)  0196EC(W)  019851(R)  019856(W)  019888(W)  019950(R)  019955(W)  019994(W)  019BDD(R)  019BE2(W)  019C23(W)  019C29(R)  019C2E(W)  019C63(W)  019DDE(R)  019DE3(W)  019DEC(W)  019E46(R)  019E4B(W)  019E66(W)  019ECF(R)  019ED4(W)  019EE3(W)  01A0B7(R)  01A0BC(W)  01A0C5(W)  01A0CB(R)  01A0D0(W)  01A0D9(W)  01A0F2(R)  01A0F7(W)  01A11B(W)  01A2F5(R)  01A2FA(W)  01A318(W)  01A623(R)  01A628(W)  01A635(W)  01C652(R)  01C659(W)  01C6CD(R)  01C6D2(W)  01C714(W)  01C73E(R)  01C743(W)  01C7C8(W)  01CA66(R)  01CA6B(W)  01CAD6(W)  01CB18(R)  01CB1D(W)  01CB28(W)  01CB40(R)  01CB45(W)  01CB4E(W)  01CBED(R)  01CBF2(W)  01CC18(W)  01CCE7(R)  01CCF6(W)  01CD2E(W)  01CDF7(W)  01CE09(W)  01CE1E(W)  01CE2E(R)  01CE3D(W)  01D041(R)  01D048(W)  01D102(W)  01D125(W)  01D13B(W)  01D1BA(W)  01D1C6(W)  01D1EA(W)  01D29C(R)  01D2B1(W)  01D2C7(W)  01D30C(W)  01D318(W)  01D718(R)  01D71D(W)  01D726(W)  01DA2C(R)  01DA36(W)  01DA3E(W)  01DA53(W)  01DA66(R)  01DA7F(W)  01DAA1(W)  01DAB3(W)  01DB5D(R)  01DB7F(R)  01DB84(W)  01DB98(W)  01DEBF(R)  01DEC4(W)  01DEE6(W)  01DEEF(W)  01E05B(Wi) 01E079(W)  01E237(R)  01E781(R)  01E786(W)  01E7A0(W)  01E902(R)  01E907(W)  01E91E(W)  01E960(R)  01E965(W)  01E970(W)  01E976(R)  01E97B(W)  01E9A2(W)  01EA47(R)  01EA4C(W)  01EAA2(W)  01F42E(W)  01F50F(W)  01F6ED(W)  01F703(W)  01F7D8(W)  01F87F(W)  01F9CC(W)  01F9FF(W)  01FAEB(R)  01FB12(W)  01FB62(W)  01FB7C(W)  01FBC6(W)  01FBE0(W)  01FCB8(W)  01FCD2(W)  
ram_prg_bank_A000                       = $009D ; 01C049(R)  01C04E(W)  01C057(W)  01C060(R)  01C065(W)  01C06E(W)  01C2E4(R)  01C2E9(W)  01C2F2(W)  01C7DE(R)  01C7E3(W)  01C7F6(W)  01CC4A(R)  01CC4F(W)  01CC58(W)  01CF50(R)  01CF55(W)  01CF5E(W)  01D398(R)  01D39D(W)  01D3A6(W)  01D3AC(R)  01D3B1(W)  01D3BA(W)  01D4D6(R)  01D4DB(W)  01D4E4(W)  01D4EE(R)  01D4F3(W)  01D4FC(W)  01D574(R)  01D579(W)  01D582(W)  01D680(R)  01D685(W)  01D68E(W)  01D733(R)  01D738(W)  01D741(W)  01D773(R)  01D778(W)  01D781(W)  01DB74(R)  01DCDE(R)  01DCE3(W)  01DCEC(W)  01DD3B(R)  01DD40(W)  01DD49(W)  01DDE0(R)  01DDE5(W)  01DDEE(W)  01E05B(Wi) 01E452(R)  01E457(W)  01E460(W)  01E663(R)  01E668(W)  01E6C3(W)  01E89D(R)  01E8A2(W)  01E8AB(W)  01EABA(R)  01EABF(W)  01EAC8(W)  01EBBA(W)  01EBDD(W)  01EC24(W)  01EC32(R)  01EC37(W)  01EC40(W)  01ED58(W)  01ED6E(R)  01ED73(W)  01ED7C(W)  01EE46(R)  01EE4B(W)  01EE54(W)  01EE7A(R)  01EE7F(W)  01EE88(W)  01EE94(R)  01EE99(W)  01EEA2(W)  01EEE0(R)  01EEE5(W)  01EEEE(W)  01EEF6(R)  01EEFB(W)  01EF04(W)  01EF0D(R)  01EF12(W)  01EF26(W)  01EF73(R)  01EF78(W)  01EFAA(W)  01EFCF(R)  01EFD4(W)  01EFF1(W)  01F0BA(R)  01F0BF(W)  01F0CB(W)  01F0D1(R)  01F0D6(W)  01F0DF(W)  01F0E5(R)  01F0EA(W)  01F0F3(W)  01F1F9(R)  01F1FE(W)  01F207(W)  01FF57(R)  01FF5C(W)  01FF65(W)  



; free addresses
; ram_009E                              = $009E ; 01E05B(Wi) 
; ram_009F                              = $009F ; 01E05B(Wi) 
; ram_00A0                              = $00A0 ; 01E05B(Wi) 
; ram_00A1                              = $00A1 ; 01E05B(Wi) 



; 
ram_00A2_temp                           = $00A2 ; 018EAB(W)  018EE1(W)  018FB0(W)  018FBE(W)  019020(W)  019048(W)  01909A(W)  0190B0(W)  0193C3(W)  01942C(W)  019510(R)  0197AF(W)  0197BC(W)  019D93(W)  019DAC(W)  019E91(W)  019EC7(W)  019EEA(W)  019F86(W)  01DC83(W)  01DC92(W)  01DCC4(W)  01DCD4(W)  01E05B(Wi) 
    ram_00A2_t01_delay_hi                   = ram_00A2_temp ; 
    ram_00A2_t02_delay_hi                   = ram_00A2_temp ; 
    ram_00A2_t03_delay_hi                   = ram_00A2_temp ; 
    ram_00A2_t04_delay_hi                   = ram_00A2_temp ; 
; bzk optimize, replace these 5 with 00A3 for readability
    ram_00A2_t05_delay_lo                   = ram_00A2_temp ; 
    ram_00A2_t06_delay_lo                   = ram_00A2_temp ; 
    ram_00A2_t07_delay_lo                   = ram_00A2_temp ; 
    ram_00A2_t08_delay_lo                   = ram_00A2_temp ; 
    ram_00A2_t09_delay_lo                   = ram_00A2_temp ; 



; 
ram_00A3_temp                           = $00A3 ; 018EAF(W)  018EDD(W)  0197B3(W)  0197B8(W)  019E95(W)  019EC3(W)  019EEE(W)  019F8A(W)  01DCC8(W)  01DCD0(W)  01E05B(Wi) 
    ram_00A3_t01_delay_lo                   = ram_00A3_temp ; 
    ram_00A3_t02_delay_lo                   = ram_00A3_temp ; 
    ram_00A3_t03_delay_lo                   = ram_00A3_temp ; 
    ram_00A3_t04_delay_lo                   = ram_00A3_temp ; 



; 00 = facing/moving left
; 01 = facing/moving right
ram_plr_direction                       = $00A4 ; 010CCE(R)  010FE9(R)  014C75(R)  0160E1(W)  01623C(R)  016242(R)  016258(R)  01626F(R)  0162B5(R)  0162C2(R)  016325(R)  016331(R)  016374(R)  01637A(R)  016419(R)  016425(R)  01645B(R)  01656B(R)  016587(R)  01658D(R)  01668F(R)  0166BE(R)  016C79(R)  016DFF(R)  016E38(R)  016E95(R)  016EDA(R)  017231(R)  01726B(R)  017352(W)  01744D(R)  01745A(R)  017538(R)  01755B(R)  017567(R)  0175C5(R)  01761E(R)  01762A(R)  01765D(R)  0178ED(R)  017B62(R)  017C6B(R)  017F88(R)  01C85C(R)  01C8AB(R)  01E05B(Wi) 01E5D8(W)  01E639(W)  01E68B(W)  



; 
ram_00A5_temp                           = $00A5 ; 01623E(R)  016244(W)  0162B7(R)  0162C4(W)  016327(R)  016333(W)  016376(R)  01637C(W)  01641B(R)  016427(W)  016589(R)  01658F(W)  016C7B(R)  016C7F(W)  016E3A(R)  016E3E(W)  016E97(R)  016E9B(W)  01744F(R)  01745C(W)  01755D(R)  017569(W)  017620(R)  01762C(W)  01E05B(Wi) 01E5DC(W)  01E63D(W)  01E68D(W)  
    ram_00A5_t01_plr_dir                    = ram_00A5_temp ; 
    ram_00A5_t02_plr_dir                    = ram_00A5_temp ; 
    ram_00A5_t03_plr_dir                    = ram_00A5_temp ; 
    ram_00A5_t04_plr_dir                    = ram_00A5_temp ; 
    ram_00A5_t05_plr_dir                    = ram_00A5_temp ; 
    ram_00A5_t06_plr_dir                    = ram_00A5_temp ; 
    ram_00A5_t07_plr_dir                    = ram_00A5_temp ; 



; 00 = not swimming
; 01 = swimming
ram_plr_swimming_state                  = $00A6 ; 010CBC(R)  016125(R)  01615D(R)  016254(R)  0163E6(R)  016402(R)  0164FE(R)  0165F6(R)  016DCC(R)  016ECD(R)  01718A(W)  01719D(R)  017213(R)  017396(R)  0173C2(R)  017607(R)  01769B(R)  017EB6(R)  01C837(R)  01E05B(Wi) 01E672(W)  



; 
ram_plr_prev_swimming_state             = $00A7 ; 01718C(R)  017190(W)  01E05B(Wi) 01E676(W)  



; current player index
; 00 = captain
; 01 = hawk
ram_plr_index                           = $00A8 ; 009071(R)  00BE4F(W)  010FD0(R)  014B27(R)  014E29(R)  0151D7(R)  016B01(R)  016CD1(R)  016EA9(R)  016F21(R)  017760(R)  01787B(R)  017887(R)  017B87(R)  01808C(R)  018AE6(W)  018B9B(R)  018BB7(R)  018D55(R)  018D6D(W)  018D6F(R)  019D58(R)  019D6C(R)  01A348(R)  01A3A9(R)  01A3ED(R)  01A4C6(R)  01A542(R)  01A69B(R)  01A727(R)  01A72B(W)  01BD9E(R)  01C07E(R)  01C309(R)  01C772(R)  01CAFC(R)  01DA69(R)  01DDBE(W)  01E05B(Wi) 01E4D8(R)  01E544(R)  01E76C(W)  01E8B1(R)  01EE60(R)  01EF20(W)  01EF55(R)  01EF60(W)  01EFD9(R)  01F251(R)  01F26C(R)  01F36D(R)  01FEC8(R)  01FF25(W)  



; a copy of ram_plr_index
ram_copy_plr_index                      = $00A9 ; 01E05B(Wi) 01EE62(W)  01EF1E(R)  01EF5E(R)  



; see con_00AA_flag
ram_00AA_plr_flags                      = $00AA ; 0160B3(R)  0160D4(R)  0160EF(R)  016153(R)  016155(W)  01616E(R)  016187(R)  01618B(W)  01629A(W)  016353(R)  016357(W)  0163BF(R)  0163C1(W)  016447(R)  01644B(W)  0164EE(R)  0164F2(W)  0165DB(R)  0165DD(W)  016D8B(W)  016F98(W)  016FA7(R)  016FAB(W)  017324(R)  017345(R)  017360(R)  0173B8(R)  0173BA(W)  0173CC(R)  0173E5(R)  0173E9(W)  01743B(W)  0175A1(R)  0175A5(W)  017673(R)  017677(W)  017684(R)  017688(W)  017869(W)  0178D3(R)  0178D5(W)  017A5D(W)  017F7A(W)  01E05B(Wi) 01E678(W)  01E76E(W)  



; see con_00SB
ram_00AB_handler                        = $00AB ; 016102(W)  0162A9(R)  0163C5(W)  0165CB(W)  016C49(W)  016C6E(W)  016C9D(W)  016CF1(R)  016D06(W)  016E18(R)  016E57(W)  016E5F(W)  016E82(W)  016E8A(W)  016F9C(W)  017373(W)  017441(R)  0174CA(W)  01786D(W)  01E05B(Wi) 01E6CB(W)  01E770(W)  



; .... xxxx (0F) = angle?
; .x.. .... (40) = 
; x... .... (80) = 
ram_00AC_angle_and_flags                = $00AC ; 01609A(R)  0160A0(W)  0160A8(R)  0160AE(W)  0160E9(R)  016168(R)  016392(R)  0163D3(R)  016C95(R)  01735A(R)  0173C6(R)  0174C2(R)  01E05B(Wi) 



; 
ram_00AD_counter                        = $00AD ; 016185(W)  01632B(R)  01634F(W)  01641F(R)  016443(W)  0173E3(W)  017561(R)  01759D(W)  017624(R)  01766F(W)  01E05B(Wi) 01E6DC(W)  01E77E(W)  



; bzk optimize, useless address
ram_00AE_useless                        = $00AE ; 01E05B(Wi) 01E6EB(W)  



; 01 = 
; 02 = 
; 20 = 
ram_00AF_flag                           = $00AF ; 016037(W)  016130(R)  016F74(R)  016F76(W)  0172F9(W)  01739A(R)  017E61(R)  01E05B(Wi) 



; bzk optimize
ram_00B0                                = $00B0 ; 01790B(R)  017911(W)  017919(W)  01E05B(Wi) 01E4D0(W)  01E6E1(W)  01FB34(R)  



; 
ram_00B1_counter                        = $00B1 ; 01786B(W)  017902(W)  017904(R)  01E05B(Wi) 01E6E3(W)  



; bzk optimize, always 00
ram_00B2_useless_00                     = $00B2 ; 0162A7(W)  01743F(W)  017F7C(W)  01E05B(Wi) 01E6ED(W)  01FB3F(R)  



; free addresses
; ram_00B3                              = $00B3 ; 01E05B(Wi) 
; ram_00B4                              = $00B4 ; 01E05B(Wi) 
; ram_00B5                              = $00B5 ; 01E05B(Wi) 



; player invincibility timer
ram_00B6_plr_invinc_timer               = $00B6 ; 017879(W)  0178FE(W)  01E05B(Wi) 



; 
ram_00B7_pos_X_lo                       = $00B7 ; 010D4C(W)  011F12(W)  014437(W)  01447A(W)  01651E(W)  0166AB(W)  0166C6(R)  0166C8(W)  01672F(W)  016D57(W)  016F61(W)  01700D(W)  017172(W)  0171CD(W)  01729E(W)  0172B6(W)  017BE1(W)  017C41(W)  01A222(W)  01A610(W)  01CD02(R)  01E05B(Wi) 
ram_00B8_pos_X_hi                       = $00B8 ; 010D53(W)  011F17(W)  01443F(W)  01447F(W)  016523(W)  0166B3(W)  0166CD(R)  0166CF(W)  016737(W)  016D5F(W)  016F69(W)  017015(W)  017177(W)  0171D2(W)  0172A5(W)  0172BD(W)  017BEA(W)  017C47(W)  01A227(W)  01A61E(W)  01CD09(R)  01E05B(Wi) 



; 
ram_00B9_pos_Y_lo                       = $00B9 ; 010D67(W)  011F1C(W)  014454(W)  014470(W)  016528(W)  01669A(W)  016740(W)  016D45(W)  016F4F(W)  016FF9(W)  017166(W)  0171C3(W)  01728F(W)  017BE6(W)  017C34(W)  01A213(W)  01A618(W)  01CD5C(R)  01CD7F(R)  01CDA9(R)  01CDC2(R)  01E05B(Wi) 
ram_00BA_pos_Y_hi                       = $00BA ; 010D6E(W)  011F21(W)  01445C(W)  014475(W)  01652D(W)  0166A2(W)  016748(W)  016D4A(W)  016F54(W)  017000(W)  01716D(W)  0171C8(W)  017296(W)  017BEC(W)  017C45(W)  01A21D(W)  01A61C(W)  01CD52(R)  01CD95(R)  01CDB0(R)  01CDC9(R)  01E05B(Wi) 



; 
ram_00BB_data_index                     = $00BB ; 01A63C(R)  01CDFE(W)  01CE23(R)  01CE5B(R)  01CED6(R)  01E05B(Wi) 



; logged values: 00 01 02 04 08 11 21 FF (FF is default in FCEUX in this address)
ram_00BC                                = $00BC ; 0101FB(R)  01021E(R)  010451(R)  010487(R)  0106E2(R)  01071F(R)  01076F(R)  0108C3(R)  0109B6(R)  010A6C(R)  010DA6(R)  01121F(R)  0114F5(R)  011F28(R)  014486(R)  016532(R)  01674D(R)  016D6E(R)  016D74(R)  016DDF(R)  016F71(R)  01701A(R)  017182(R)  0171D7(R)  017BF1(R)  01A22E(R)  01CCFE(W)  01CE01(R)  01CE05(W)  01CE29(R)  01CE2B(W)  01E05B(Wi) 



; bzk optimize
; 00 = 
; 01 = 
ram_00BD_flag                           = $00BD ; 0172AA(R)  0172C2(R)  01CE63(R)  01CE67(W)  01CE6A(R)  01CE70(W)  01E05B(Wi) 



; shield position when it's returning to captain
ram_00BE_pos_Y_hi_shield_boomerang      = $00BE ; 011E6D(W)  01591B(W)  015969(W)  0168B3(W)  01C965(R)  01C990(R)  01E05B(Wi) 
ram_00BF_pos_Y_lo_shield_boomerang      = $00BF ; 011E72(W)  015916(W)  015963(W)  0168AE(W)  01C95F(R)  01E05B(Wi) 
ram_00C0_pos_Y_fr_shield_boomerang      = $00C0 ; 011E77(W)  01592C(W)  0168A9(W)  01C95B(R)  01E05B(Wi) 



; shield position when it's returning to captain
ram_00C1_pos_X_hi_shield_boomerang      = $00C1 ; 011E5E(W)  015911(W)  015967(W)  0168C2(W)  01C96F(R)  01C986(R)  01E05B(Wi) 
ram_00C2_pos_X_lo_shield_boomerang      = $00C2 ; 011E63(W)  01590C(W)  01595E(W)  0168BD(W)  01C980(R)  01E05B(Wi) 
ram_00C3_pos_X_fr_shield_boomerang      = $00C3 ; 011E68(W)  01592A(W)  0168B8(W)  01C97C(R)  01E05B(Wi) 



; shield destination when it's returning to captain
ram_00C4_pos_Y_hi_shield_aim            = $00C4 ; 011E8B(W)  01594A(W)  0168D6(W)  01C963(R)  01E05B(Wi) 
ram_00C5_pos_Y_lo_shield_aim            = $00C5 ; 011E93(W)  015945(W)  0168CF(W)  01C95D(R)  01E05B(Wi) 
ram_00C6_pos_Y_fr_shield_aim            = $00C6 ; 011E98(W)  015940(W)  0168C7(W)  01C959(R)  01E05B(Wi) 



; shield destination when it's returning to captain
ram_00C7_pos_X_hi_shield_aim            = $00C7 ; 011E7C(W)  01593B(W)  0168E5(W)  01C984(R)  01E05B(Wi) 
ram_00C8_pos_X_lo_shield_aim            = $00C8 ; 011E81(W)  015936(W)  0168E0(W)  01C97E(R)  01E05B(Wi) 
ram_00C9_pos_X_fr_shield_aim            = $00C9 ; 011E86(W)  015931(W)  0168DB(W)  01C97A(R)  01E05B(Wi) 



; 
ram_00CA_objects_counter                = $00CA ; 010028(R)  010E38(R)  010EE3(W)  0112F1(W)  0115DA(R)  01160F(R)  013DC2(R)  013E51(R)  013F57(R)  01419F(R)  0141F6(R)  0150CA(W)  0176D9(R)  0179CB(R)  017B05(R)  017D2A(R)  017DD2(R)  0181AA(W)  01836E(R)  0184A0(W)  0184FA(W)  018514(W)  0187DE(W)  018B7A(W)  0194F9(W)  01B996(W)  01BAEC(W)  01CC66(W)  01D753(R)  01DD6E(W)  01DDF9(W)  01E05B(Wi) 01E948(W)  01F1C3(R)  



; 
ram_00CB_temp                           = $00CB ; 0115DC(R)  0116A6(R)  01171D(R)  01177D(R)  0117EB(W)  011805(R)  011BE3(R)  011DD0(W)  011FD2(W)  011FF5(W)  014242(R)  0147BE(R)  0152AB(R)  015971(R)  015993(W)  0159CF(R)  015A06(W)  018256(W)  0182E7(W)  01838C(R)  018A15(R)  0194EF(W)  0194FB(W)  01969A(W)  019DF2(R)  01C82E(W)  01D59B(R)  01D69B(R)  01D751(R)  01E05B(Wi) 01E94A(W)  01F1C5(R)  
    ram_00CB_t01                            = ram_00CB_temp ; initialized with 00 at 0x01E94A
    ram_00CB_t02_flag                       = ram_00CB_temp ; 
    
    ram_00CB_tFF_useless                    = ram_00CB_temp ; bzk optimize



; free address
; ram_00CC                              = $00CC ; 01E05B(Wi) 



; how many drop objects are on the screen
ram_drop_objects_counter                = $00CD ; 0194FD(W)  01A0DF(R)  01A192(W)  01A197(R)  01A290(W)  01A2E6(W)  01E05B(Wi) 01E94C(W)  



; how many total objects are on the screen (including drops)
ram_all_objects_counter                 = $00CE ; 010EE1(W)  0112EF(W)  0117ED(W)  011DCE(W)  011FD4(W)  011FF3(W)  015995(W)  0181AC(W)  018258(W)  0182E9(W)  0184A2(W)  0184FC(W)  018516(W)  0187E0(W)  018B7C(W)  0194F1(W)  0194FF(W)  01969C(W)  01A194(W)  01A292(W)  01A2E8(W)  01B998(W)  01BAEE(W)  01C82C(W)  01CC68(W)  01DD70(W)  01DDFB(W)  01E05B(Wi) 01E94E(W)  01FAF9(R)  



; 00-3F
ram_sprites_counter                     = $00CF ; 01C3BE(W)  01E05B(Wi) 01FAF4(W)  01FCA4(R)  01FD84(W)  01FD86(R)  01FDA9(R)  01FDB2(R)  



; 00 = 
; 01 = 
ram_00D0_flag                           = $00D0 ; 01C3D5(W)  01E05B(Wi) 01FB31(W)  01FB3C(W)  01FB4E(W)  01FD4D(R)  



; 
ram_00D1_temp                           = $00D1 ; 01E05B(Wi) 01FB2F(W)  01FB38(W)  01FD55(R)  
    ram_00D1_t01_spr_A_pal                  = ram_00D1_temp ; 
    
    ram_00D1_tFF_useless                    = ram_00D1_temp ; bzk optimize



; 00-04
ram_00D2_data_index                     = $00D2 ; 011AB2(R)  017749(R)  018215(R)  018EB3(W)  01A512(R)  01A518(W)  01A6EA(R)  01CC10(R)  01DA92(R)  01DD9B(W)  01E05B(Wi) 01E85A(W)  



; 
ram_00D3_temp                           = $00D3 ; 01D3E8(R)  01E05B(Wi) 01EC4B(W)  01EC96(R)  01EC9A(W)  01FC0F(R)  01FC8D(R)  
    ram_00D3_t01_scroll_Y_hi                = ram_00D3_temp ; 
    ram_00D3_t02_spd_Y_hi                   = ram_00D3_temp ; 



; 
ram_00D4_temp                           = $00D4 ; 01D3DD(R)  01E05B(Wi) 01EC4F(W)  01EC87(R)  01EC94(W)  01FC03(R)  01FC81(R)  
    ram_00D4_t01_spd_Y_lo                   = ram_00D4_temp ; 
    ram_00D4_t02_scroll_Y_lo                = ram_00D4_temp ; 



; 
ram_00D5_temp                           = $00D5 ; 01D3F9(R)  01E05B(Wi) 01EC53(W)  01ECA3(R)  01ECA7(W)  01F0A1(R)  01F0A5(W)  01FC20(R)  01FC9E(R)  
    ram_00D5_t01_spd_X_hi                   = ram_00D5_temp ; 
    ram_00D5_t02_scroll_X_hi                = ram_00D5_temp ; 



; 
ram_00D6_temp                           = $00D6 ; 01D3EE(R)  01E05B(Wi) 01EC57(W)  01EC9C(R)  01ECA1(W)  01F09A(R)  01F09F(W)  01FC14(R)  01FC92(R)  
    ram_00D6_t01_spd_X_lo                   = ram_00D6_temp ; 
    ram_00D6_t02_scroll_X_lo                = ram_00D6_temp ; 



; 00 = 
; 01 = 
ram_00D7                                = $00D7 ; 014129(R)  01CF64(R)  01CF6C(R)  01CF72(W)  01E05B(Wi) 01E6FA(W)  01F2A1(W)  01F2B0(R)  



; 
ram_00D8                                = $00D8 ; 010599(R)  010629(R)  01062B(W)  010892(R)  010F37(R)  010F39(W)  01CB6E(R)  01CC6B(R)  01CC6F(W)  01CC87(R)  01CCDE(R)  01E05B(Wi) 01E742(W)  



; +80 = ???
ram_00D9_array_index                    = $00D9 ; 010EC2(R)  01500E(R)  0172D4(W)  01C535(R)  01CAEA(R)  01D48F(R)  01D501(R)  01D505(W)  01E05B(Wi) 01E631(W)  01E6F2(W)  01E99F(W)  01E9ED(R)  01EA56(R)  01EACE(R)  01F003(R)  01F142(R)  01F19F(W)  01F1A5(R)  01F1CE(W)  01F23C(R)  



; see con_00DA
; +00-02 = ???
ram_00DA_flags                          = $00DA ; 0165FD(R)  0172D0(W)  0172E2(W)  0176A2(R)  01793F(R)  017945(W)  0192B3(R)  0192DA(R)  0192DC(W)  019318(R)  01931A(W)  01E05B(Wi) 01E5B3(R)  01E5D4(W)  01E633(W)  01E6F4(W)  01EDC1(R)  01EE27(R)  01EE32(R)  01F21A(R)  



; 00 = 
; 80 = 
ram_00DB_flag                           = $00DB ; 014033(R)  0193B2(W)  019C46(W)  01A4B4(R)  01CAE6(R)  01D4EC(W)  01D731(W)  01DBC0(W)  01DD67(W)  01DE06(W)  01E05B(Wi) 01E44A(W)  01E635(W)  01E6F6(W)  01EAB8(W)  01EDCE(R)  01F1AB(R)  01F1D0(W)  01F264(R)  01FCAE(R)  



; 00 = 
; 80 = 
ram_00DC_flag                           = $00DC ; 018EFB(W)  0193DF(R)  019A3C(W)  01E05B(Wi) 01EBE5(R)  01EF7D(R)  01EF83(W)  



; 
ram_00DD_temp                           = $00DD ; 019C3A(W)  01E05B(Wi) 
    ram_00DD_t01_data                       = ram_00DD_temp ; 2 addresses 00DD-00DE



; used only in pair with ram_00DD_temp
; ram_00DE                              = $00DE ; 019C3F(W)  01E05B(Wi) 



; 
ram_00DF_temp                           = $00DF ; 019D1A(W)  01E05B(Wi) 
    ram_00DF_t01_data                       = ram_00DF_temp ; 2 addresses 00DF-00E0



; used only in pair with ram_00DF_temp
; ram_00E0                              = $00E0 ; 019D1F(W)  01E05B(Wi) 



; invincibility cheat (take no damage)
; 00 = invincibility disabled
; FF = invincibility enabled
ram_cheat_invinc_flag                   = $00E1 ; 01787D(R)  01E05B(Wi) 01EBA2(W)  



; free address
; ram_00E2                              = $00E2 ; 01E05B(Wi) 



; 00 = 
; 01 = 
ram_00E3_flag                           = $00E3 ; 01E05B(Wi) 01E269(R)  01E26F(W)  01FB0F(W)  



; 00 = 
; 01 = 
ram_00E4_flag                           = $00E4 ; 01CB07(R)  01E05B(Wi) 01E6F8(W)  01F359(R)  01F36B(W)  



; how many do you have
ram_continues                           = $00E5 ; 019712(R)  01976B(W)  0198E7(R)  01A3DE(W)  01A3E0(R)  01E05B(Wi) 01E832(W)  



; 00 = 
; 01 = 
; 80 = 
ram_00E6_flag                           = $00E6 ; 01DBF2(W)  01DC26(W)  01DC76(W)  01DCBD(W)  01E05B(Wi) 01E74A(W)  01FE8A(R)  



; 00 = 
; 01 = 
; 80 = 
ram_00E7_flag                           = $00E7 ; 01462E(W)  01E05B(Wi) 01E6FC(W)  01F29B(R)  01F2AA(R)  01F2B8(W)  



; 
ram_00E8_counter                        = $00E8 ; 01A0A1(R)  01A0A7(W)  01E05B(Wi) 01E746(W)  



; 00 = not paused
; 20 = paused (useless)
; +80 = paused
; bzk optimize, make 00/80 only
ram_pause_flag                          = $00E9 ; 01E05B(Wi) 01E719(W)  01EDBD(R)  01EE05(R)  01F2DF(R)  01F2E3(W)  01F2EF(W)  01FBFF(R)  01FC7D(R)  



; 
ram_data_ptr_demo_btns                  = $00EA ; 01DED8(R)  01DEDD(W)  01E05B(Wi) 01FF17(W)  
; ram_00EB                              = $00EB ; 01DEDF(R)  01DEE3(W)  01E05B(Wi) 01FF1C(W)  



; for how long to hold a button
ram_demo_btns_hold_timer                = $00EC ; 01DEAB(R)  01DEAF(W)  01DED6(W)  01E05B(Wi) 01FF2C(W)  



; 
ram_demo_buttons                        = $00ED ; 01DEB1(R)  01DED1(W)  01E05B(Wi) 01FF2A(W)  



; 
ram_demo_btns_script                    = $00EE ; 01E05B(Wi) 01FF0F(R)  01FF33(W)  



; free address
; ram_00EF                              = $00EF ; 01E05B(Wi) 



; sound engine address
; see con_sfx
ram_00F0_se_sound_id                    = $00F0 ; 00E131(W)  00E171(R)  00E1BD(R)  00E1E2(W)  00E1F0(R)  00E1F9(R)  00E1FF(W)  01E05B(Wi) 



; sound engine address
ram_00F1_se_temp                        = $00F1 ; 00E154(W)  01E05B(Wi) 
    ram_00F1_se_t01_sound_data              = ram_00F1_se_temp ; 2 addresses 00F1-00F2



; used only in pair with ram_00F1_se_temp
; ram_00F2                              = $00F2 ; 00E159(W)  01E05B(Wi) 



; sound engine address
ram_00F3_se_temp                        = $00F3 ; 00E1DA(W)  00E1EC(W)  01E05B(Wi) 
    ram_00F3_se_t01_sound_data              = ram_00F3_se_temp ; 2 addresses 00F3-00F4
    ram_00F3_se_t02_sound_data              = ram_00F3_se_temp ; 2 addresses 00F3-00F4



; used only in pair with ram_00F3_se_temp
; ram_00F4                              = $00F4 ; 00E1DF(W)  00E1EE(W)  01E05B(Wi) 



; sound engine address
; lo + hi
; bzk optimize, useless addresses
ram_00F5_se_useless                     = $00F5 ; 00E057(W)  00E2BE(R)  00E2C4(W)  01E05B(Wi) 
; ram_00F6                              = $00F6 ; 00E059(W)  00E2C6(R)  00E2CB(W)  01E05B(Wi) 



; sound engine address
ram_00F7_se_temp                        = $00F7 ; 00E360(W)  00E3EE(W)  00E45F(W)  00E46E(R)  00E4F4(R)  00E4F6(W)  00E502(W)  00E51B(R)  00E80F(W)  00E84A(R)  00E869(W)  00E88A(W)  00E9E0(R)  00EA11(W)  00EA3A(R)  00EA46(W)  00EA5E(W)  01E05B(Wi) 
    ram_00F7_se_t01_sound_data              = ram_00F7_se_temp ; 2 addresses 00F7-00F8
    ram_00F7_se_t02_sound_data              = ram_00F7_se_temp ; 2 addresses 00F7-00F8
    ram_00F7_se_t03_data                    = ram_00F7_se_temp ; 2 addresses 00F7-00F8



; used only in pair with ram_00F7_se_temp
; ram_00F8                              = $00F8 ; 00E365(W)  00E3F3(W)  00E464(W)  00E473(R)  00E4FA(R)  00E4FC(W)  00E507(W)  00E520(R)  00E80B(W)  00E84F(R)  00E86E(W)  00E886(W)  00E9E5(R)  00EA16(W)  00EA3F(R)  00EA4B(W)  00EA63(W)  01E05B(Wi) 



; sound engine address
ram_00F9_se_temp                        = $00F9 ; 00E145(W)  00E1CB(W)  00E351(W)  00E3DF(W)  00E5FD(W)  01E05B(Wi) 
    ram_00F9_se_t01_sound_data_ptr          = ram_00F9_se_temp ; 2 addresses 00F9-00FA
    ram_00F9_se_t02_sound_data_ptr          = ram_00F9_se_temp ; 2 addresses 00F9-00FA
    ram_00F9_se_t03_sound_data_ptr          = ram_00F9_se_temp ; 2 addresses 00F9-00FA
    ram_00F9_se_t04_sound_data_ptr          = ram_00F9_se_temp ; 2 addresses 00F9-00FA
    ram_00F9_se_t05_data                    = ram_00F9_se_temp ; 2 addresses 00F9-00FA



; used only in pair with ram_00F9_se_temp
; ram_00FA                              = $00FA ; 00E149(W)  00E1CF(W)  00E355(W)  00E3E3(W)  00E602(W)  01E05B(Wi) 



; sound engine address
ram_00FB_se_temp                        = $00FB ; 00E6E9(W)  01E05B(Wi) 
    ram_00FB_se_t01_jmp                     = ram_00FB_se_temp ; 2 addresses 00FB-00FC



; used only in pair with ram_00FB_se_temp
; ram_00FC                              = $00FC ; 00E6EE(W)  01E05B(Wi) 



; sound engine address
ram_00FD_se_temp                        = $00FD ; 00E50C(W)  01E05B(Wi) 
    ram_00FD_se_t01_data                    = ram_00FD_se_temp ; 2 addresses 00FD-00FE



; used only in pair with ram_00FD_se_temp
; ram_00FE                              = $00FE ; 00E511(W)  01E05B(Wi) 



; sound engine address
ram_00FF_se_temp                        = $00FF ; 00E370(W)  00E37E(R)  00E381(W)  00E3FE(W)  00E40C(R)  00E40F(W)  00E4DE(W)  00E4E9(R)  00E553(W)  00E569(R)  00E5B0(W)  00E5BB(R)  00E5C0(R)  00E5C5(W)  00E5CD(R)  00E5F8(W)  00E61B(R)  00E807(W)  00E80D(R)  00E835(W)  00E845(R)  00E856(W)  00E87C(R)  00E882(W)  00E888(R)  00EA28(W)  00EA44(R)  01E05B(Wi) 
    ram_00FF_se_t01_4002                    = ram_00FF_se_temp ; 
    ram_00FF_se_t02                         = ram_00FF_se_temp ; 
    ram_00FF_se_t03_4000                    = ram_00FF_se_temp ; 
    ram_00FF_se_t04_4001                    = ram_00FF_se_temp ; 
    ram_00FF_se_t05_ptr_lo                  = ram_00FF_se_temp ; 
    ram_00FF_se_t06                         = ram_00FF_se_temp ; 
    ram_00FF_se_t07_save_Y                  = ram_00FF_se_temp ; 
    ram_00FF_se_t08_ptr_lo                  = ram_00FF_se_temp ; 
    ram_00FF_se_t09_ptr_lo                  = ram_00FF_se_temp ; 
    ram_00FF_se_t10                         = ram_00FF_se_temp ; 
    ram_00FF_se_t11                         = ram_00FF_se_temp ; 
    ram_00FF_se_t12                         = ram_00FF_se_temp ; 



; 0100-01FF (100) stack



; bzk optimize, all values are 00
; up to 0119 only?
ram_0100_useless_ppu_buffer             = $0100 ; 01E05B(Wi) 01E33A(Ri) 
; ram_0101                              = $0101 ; 01E05B(Wi) 01E33A(Ri) 
; ram_0102                              = $0102 ; 01E05B(Wi) 01E33A(Ri) 
; ram_0103                              = $0103 ; 01E05B(Wi) 01E33A(Ri) 
; ram_0104                              = $0104 ; 01E05B(Wi) 01E33A(Ri) 
; ram_0105                              = $0105 ; 01E05B(Wi) 01E33A(Ri) 
; ram_0106                              = $0106 ; 01E05B(Wi) 01E33A(Ri) 
; ram_0107                              = $0107 ; 01E05B(Wi) 01E33A(Ri) 
; ram_0108                              = $0108 ; 01E05B(Wi) 01E33A(Ri) 
; ram_0109                              = $0109 ; 01E05B(Wi) 01E33A(Ri) 
; ram_010A                              = $010A ; 01E05B(Wi) 01E33A(Ri) 
; ram_010B                              = $010B ; 01E05B(Wi) 01E33A(Ri) 
; ram_010C                              = $010C ; 01E05B(Wi) 01E33A(Ri) 
; ram_010D                              = $010D ; 01E05B(Wi) 01E33A(Ri) 
; ram_010E                              = $010E ; 01E05B(Wi) 01E33A(Ri) 
; ram_010F                              = $010F ; 01E05B(Wi) 01E33A(Ri) 
; ram_0110                              = $0110 ; 01E05B(Wi) 01E33A(Ri) 
; ram_0111                              = $0111 ; 01E05B(Wi) 01E33A(Ri) 
; ram_0112                              = $0112 ; 01E05B(Wi) 01E33A(Ri) 
; ram_0113                              = $0113 ; 01E05B(Wi) 01E33A(Ri) 
; ram_0114                              = $0114 ; 01E05B(Wi) 01E33A(Ri) 
; ram_0115                              = $0115 ; 01E05B(Wi) 01E33A(Ri) 
; ram_0116                              = $0116 ; 01E05B(Wi) 01E33A(Ri) 
; ram_0117                              = $0117 ; 01E05B(Wi) 01E33A(Ri) 
; ram_0118                              = $0118 ; 01E05B(Wi) 01E33A(Ri) 
; ram_0119                              = $0119 ; 01E05B(Wi) 01E33A(Ri) 



; free addresses?
; ram_011A                              = $011A ; 01E05B(Wi) 
; ram_011B                              = $011B ; 01E05B(Wi) 
; ram_011C                              = $011C ; 01E05B(Wi) 
; ram_011D                              = $011D ; 01E05B(Wi) 
; ram_011E                              = $011E ; 01E05B(Wi) 
; ram_011F                              = $011F ; 01E05B(Wi) 



; free addresses
; ram_0120                              = $0120 ; 01E05B(Wi) 
; ram_0121                              = $0121 ; 01E05B(Wi) 
; ram_0122                              = $0122 ; 01E05B(Wi) 
; ram_0123                              = $0123 ; 01E05B(Wi) 
; ram_0124                              = $0124 ; 01E05B(Wi) 
; ram_0125                              = $0125 ; 01E05B(Wi) 
; ram_0126                              = $0126 ; 01E05B(Wi) 
; ram_0127                              = $0127 ; 01E05B(Wi) 
; ram_0128                              = $0128 ; 01E05B(Wi) 
; ram_0129                              = $0129 ; 01E05B(Wi) 
; ram_012A                              = $012A ; 01E05B(Wi) 
; ram_012B                              = $012B ; 01E05B(Wi) 
; ram_012C                              = $012C ; 01E05B(Wi) 
; ram_012D                              = $012D ; 01E05B(Wi) 
; ram_012E                              = $012E ; 01E05B(Wi) 
; ram_012F                              = $012F ; 01E05B(Wi) 
; ram_0130                              = $0130 ; 01E05B(Wi) 
; ram_0131                              = $0131 ; 01E05B(Wi) 
; ram_0132                              = $0132 ; 01E05B(Wi) 
; ram_0133                              = $0133 ; 01E05B(Wi) 
; ram_0134                              = $0134 ; 01E05B(Wi) 
; ram_0135                              = $0135 ; 01E05B(Wi) 
; ram_0136                              = $0136 ; 01E05B(Wi) 
; ram_0137                              = $0137 ; 01E05B(Wi) 
; ram_0138                              = $0138 ; 01E05B(Wi) 
; ram_0139                              = $0139 ; 01E05B(Wi) 
; ram_013A                              = $013A ; 01E05B(Wi) 
; ram_013B                              = $013B ; 01E05B(Wi) 
; ram_013C                              = $013C ; 01E05B(Wi) 
; ram_013D                              = $013D ; 01E05B(Wi) 
; ram_013E                              = $013E ; 01E05B(Wi) 
; ram_013F                              = $013F ; 01E05B(Wi) 
; ram_0140                              = $0140 ; 01E05B(Wi) 
; ram_0141                              = $0141 ; 01E05B(Wi) 
; ram_0142                              = $0142 ; 01E05B(Wi) 
; ram_0143                              = $0143 ; 01E05B(Wi) 
; ram_0144                              = $0144 ; 01E05B(Wi) 
; ram_0145                              = $0145 ; 01E05B(Wi) 
; ram_0146                              = $0146 ; 01E05B(Wi) 
; ram_0147                              = $0147 ; 01E05B(Wi) 
; ram_0148                              = $0148 ; 01E05B(Wi) 
; ram_0149                              = $0149 ; 01E05B(Wi) 
; ram_014A                              = $014A ; 01E05B(Wi) 
; ram_014B                              = $014B ; 01E05B(Wi) 
; ram_014C                              = $014C ; 01E05B(Wi) 
; ram_014D                              = $014D ; 01E05B(Wi) 
; ram_014E                              = $014E ; 01E05B(Wi) 
; ram_014F                              = $014F ; 01E05B(Wi) 
; ram_0150                              = $0150 ; 01E05B(Wi) 
; ram_0151                              = $0151 ; 01E05B(Wi) 
; ram_0152                              = $0152 ; 01E05B(Wi) 
; ram_0153                              = $0153 ; 01E05B(Wi) 
; ram_0154                              = $0154 ; 01E05B(Wi) 
; ram_0155                              = $0155 ; 01E05B(Wi) 
; ram_0156                              = $0156 ; 01E05B(Wi) 
; ram_0157                              = $0157 ; 01E05B(Wi) 
; ram_0158                              = $0158 ; 01E05B(Wi) 
; ram_0159                              = $0159 ; 01E05B(Wi) 
; ram_015A                              = $015A ; 01E05B(Wi) 
; ram_015B                              = $015B ; 01E05B(Wi) 
; ram_015C                              = $015C ; 01E05B(Wi) 
; ram_015D                              = $015D ; 01E05B(Wi) 
; ram_015E                              = $015E ; 01E05B(Wi) 
; ram_015F                              = $015F ; 01E05B(Wi) 
; ram_0160                              = $0160 ; 01E05B(Wi) 
; ram_0161                              = $0161 ; 01E05B(Wi) 
; ram_0162                              = $0162 ; 01E05B(Wi) 
; ram_0163                              = $0163 ; 01E05B(Wi) 
; ram_0164                              = $0164 ; 01E05B(Wi) 
; ram_0165                              = $0165 ; 01E05B(Wi) 
; ram_0166                              = $0166 ; 01E05B(Wi) 
; ram_0167                              = $0167 ; 01E05B(Wi) 
; ram_0168                              = $0168 ; 01E05B(Wi) 
; ram_0169                              = $0169 ; 01E05B(Wi) 
; ram_016A                              = $016A ; 01E05B(Wi) 
; ram_016B                              = $016B ; 01E05B(Wi) 
; ram_016C                              = $016C ; 01E05B(Wi) 
; ram_016D                              = $016D ; 01E05B(Wi) 
; ram_016E                              = $016E ; 01E05B(Wi) 
; ram_016F                              = $016F ; 01E05B(Wi) 
; ram_0170                              = $0170 ; 01E05B(Wi) 
; ram_0171                              = $0171 ; 01E05B(Wi) 
; ram_0172                              = $0172 ; 01E05B(Wi) 
; ram_0173                              = $0173 ; 01E05B(Wi) 
; ram_0174                              = $0174 ; 01E05B(Wi) 
; ram_0175                              = $0175 ; 01E05B(Wi) 
; ram_0176                              = $0176 ; 01E05B(Wi) 
; ram_0177                              = $0177 ; 01E05B(Wi) 
; ram_0178                              = $0178 ; 01E05B(Wi) 
; ram_0179                              = $0179 ; 01E05B(Wi) 
; ram_017A                              = $017A ; 01E05B(Wi) 
; ram_017B                              = $017B ; 01E05B(Wi) 
; ram_017C                              = $017C ; 01E05B(Wi) 
; ram_017D                              = $017D ; 01E05B(Wi) 
; ram_017E                              = $017E ; 01E05B(Wi) 
; ram_017F                              = $017F ; 01E05B(Wi) 
; ram_0180                              = $0180 ; 01E05B(Wi) 
; ram_0181                              = $0181 ; 01E05B(Wi) 
; ram_0182                              = $0182 ; 01E05B(Wi) 
; ram_0183                              = $0183 ; 01E05B(Wi) 
; ram_0184                              = $0184 ; 01E05B(Wi) 
; ram_0185                              = $0185 ; 01E05B(Wi) 
; ram_0186                              = $0186 ; 01E05B(Wi) 
; ram_0187                              = $0187 ; 01E05B(Wi) 
; ram_0188                              = $0188 ; 01E05B(Wi) 
; ram_0189                              = $0189 ; 01E05B(Wi) 
; ram_018A                              = $018A ; 01E05B(Wi) 
; ram_018B                              = $018B ; 01E05B(Wi) 
; ram_018C                              = $018C ; 01E05B(Wi) 
; ram_018D                              = $018D ; 01E05B(Wi) 
; ram_018E                              = $018E ; 01E05B(Wi) 
; ram_018F                              = $018F ; 01E05B(Wi) 
; ram_0190                              = $0190 ; 01E05B(Wi) 
; ram_0191                              = $0191 ; 01E05B(Wi) 
; ram_0192                              = $0192 ; 01E05B(Wi) 
; ram_0193                              = $0193 ; 01E05B(Wi) 
; ram_0194                              = $0194 ; 01E05B(Wi) 
; ram_0195                              = $0195 ; 01E05B(Wi) 
; ram_0196                              = $0196 ; 01E05B(Wi) 
; ram_0197                              = $0197 ; 01E05B(Wi) 
; ram_0198                              = $0198 ; 01E05B(Wi) 
; ram_0199                              = $0199 ; 01E05B(Wi) 
; ram_019A                              = $019A ; 01E05B(Wi) 
; ram_019B                              = $019B ; 01E05B(Wi) 
; ram_019C                              = $019C ; 01E05B(Wi) 
; ram_019D                              = $019D ; 01E05B(Wi) 
; ram_019E                              = $019E ; 01E05B(Wi) 
; ram_019F                              = $019F ; 01E05B(Wi) 
; ram_01A0                              = $01A0 ; 01E05B(Wi) 
; ram_01A1                              = $01A1 ; 01E05B(Wi) 
; ram_01A2                              = $01A2 ; 01E05B(Wi) 
; ram_01A3                              = $01A3 ; 01E05B(Wi) 
; ram_01A4                              = $01A4 ; 01E05B(Wi) 
; ram_01A5                              = $01A5 ; 01E05B(Wi) 
; ram_01A6                              = $01A6 ; 01E05B(Wi) 
; ram_01A7                              = $01A7 ; 01E05B(Wi) 
; ram_01A8                              = $01A8 ; 01E05B(Wi) 
; ram_01A9                              = $01A9 ; 01E05B(Wi) 
; ram_01AA                              = $01AA ; 01E05B(Wi) 
; ram_01AB                              = $01AB ; 01E05B(Wi) 
; ram_01AC                              = $01AC ; 01E05B(Wi) 
; ram_01AD                              = $01AD ; 01E05B(Wi) 
; ram_01AE                              = $01AE ; 01E05B(Wi) 
; ram_01AF                              = $01AF ; 01E05B(Wi) 
; ram_01B0                              = $01B0 ; 01E05B(Wi) 
; ram_01B1                              = $01B1 ; 01E05B(Wi) 
; ram_01B2                              = $01B2 ; 01E05B(Wi) 
; ram_01B3                              = $01B3 ; 01E05B(Wi) 
; ram_01B4                              = $01B4 ; 01E05B(Wi) 
; ram_01B5                              = $01B5 ; 01E05B(Wi) 
; ram_01B6                              = $01B6 ; 01E05B(Wi) 
; ram_01B7                              = $01B7 ; 01E05B(Wi) 
; ram_01B8                              = $01B8 ; 01E05B(Wi) 
; ram_01B9                              = $01B9 ; 01E05B(Wi) 
; ram_01BA                              = $01BA ; 01E05B(Wi) 
; ram_01BB                              = $01BB ; 01E05B(Wi) 
; ram_01BC                              = $01BC ; 01E05B(Wi) 
; ram_01BD                              = $01BD ; 01E05B(Wi) 
; ram_01BE                              = $01BE ; 01E05B(Wi) 
; ram_01BF                              = $01BF ; 01E05B(Wi) 



; reserved for the actual stack
; max usage up to 01D8 was logged
; ram_01C0                              = $01C0 ; 01E05B(Wi) 
; ram_01C1                              = $01C1 ; 01E05B(Wi) 
; ram_01C2                              = $01C2 ; 01E05B(Wi) 
; ram_01C3                              = $01C3 ; 01E05B(Wi) 
; ram_01C4                              = $01C4 ; 01E05B(Wi) 
; ram_01C5                              = $01C5 ; 01E05B(Wi) 
; ram_01C6                              = $01C6 ; 01E05B(Wi) 
; ram_01C7                              = $01C7 ; 01E05B(Wi) 
; ram_01C8                              = $01C8 ; 01E05B(Wi) 
; ram_01C9                              = $01C9 ; 01E05B(Wi) 
; ram_01CA                              = $01CA ; 01E05B(Wi) 
; ram_01CB                              = $01CB ; 01E05B(Wi) 
; ram_01CC                              = $01CC ; 01E05B(Wi) 
; ram_01CD                              = $01CD ; 01E05B(Wi) 
; ram_01CE                              = $01CE ; 01E05B(Wi) 
; ram_01CF                              = $01CF ; 01E05B(Wi) 
; ram_01D0                              = $01D0 ; 01E05B(Wi) 
; ram_01D1                              = $01D1 ; 01E05B(Wi) 
; ram_01D2                              = $01D2 ; 01E05B(Wi) 
; ram_01D3                              = $01D3 ; 01E05B(Wi) 
; ram_01D4                              = $01D4 ; 01E05B(Wi) 
; ram_01D5                              = $01D5 ; 01E05B(Wi) 
; ram_01D6                              = $01D6 ; 01E05B(Wi) 
; ram_01D7                              = $01D7 ; 01E05B(Wi) 
; ram_01D8                              = $01D8 ; 01E05B(Wi) 
; ram_01D9                              = $01D9 ; 01E05B(Wi) 
; ram_01DA                              = $01DA ; 01E05B(Wi) 
; ram_01DB                              = $01DB ; 01E05B(Wi) 
; ram_01DC                              = $01DC ; 01E05B(Wi) 
; ram_01DD                              = $01DD ; 01E05B(Wi) 
; ram_01DE                              = $01DE ; 01E05B(Wi) 
; ram_01DF                              = $01DF ; 01E05B(Wi) 
; ram_01E0                              = $01E0 ; 01E05B(Wi) 
; ram_01E1                              = $01E1 ; 01E05B(Wi) 
; ram_01E2                              = $01E2 ; 01E05B(Wi) 
; ram_01E3                              = $01E3 ; 01E05B(Wi) 
; ram_01E4                              = $01E4 ; 01E05B(Wi) 
; ram_01E5                              = $01E5 ; 01E05B(Wi) 
; ram_01E6                              = $01E6 ; 01E05B(Wi) 
; ram_01E7                              = $01E7 ; 01E05B(Wi) 
; ram_01E8                              = $01E8 ; 01E05B(Wi) 
; ram_01E9                              = $01E9 ; 01E05B(Wi) 
; ram_01EA                              = $01EA ; 01E05B(Wi) 
; ram_01EB                              = $01EB ; 01E05B(Wi) 
; ram_01EC                              = $01EC ; 01E05B(Wi) 
; ram_01ED                              = $01ED ; 01E05B(Wi) 
; ram_01EE                              = $01EE ; 01E05B(Wi) 
; ram_01EF                              = $01EF ; 01E05B(Wi) 
; ram_01F0                              = $01F0 ; 01E05B(Wi) 
; ram_01F1                              = $01F1 ; 01E05B(Wi) 
; ram_01F2                              = $01F2 ; 01E05B(Wi) 
; ram_01F3                              = $01F3 ; 01E05B(Wi) 
; ram_01F4                              = $01F4 ; 01E05B(Wi) 
; ram_01F5                              = $01F5 ; 01E05B(Wi) 
; ram_01F6                              = $01F6 ; 01E05B(Wi) 
; ram_01F7                              = $01F7 ; 01E05B(Wi) 
; ram_01F8                              = $01F8 ; 01E05B(Wi) 
; ram_01F9                              = $01F9 ; 01E05B(Wi) 
; ram_01FA                              = $01FA ; 01E05B(Wi) 
; ram_01FB                              = $01FB ; 01E05B(Wi) 
; ram_01FC                              = $01FC ; 01E05B(Wi) 
; ram_01FD                              = $01FD ; 01E05B(Wi) 
; ram_01FE                              = $01FE ; 01E05B(Wi) 
; ram_01FF                              = $01FF ; 01E05B(Wi) 



; nametable attributes
; 2 buffers, each 40h size
ram_attr_buffer                         = $0200 ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0201                              = $0201 ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0202                              = $0202 ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0203                              = $0203 ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0204                              = $0204 ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0205                              = $0205 ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0206                              = $0206 ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0207                              = $0207 ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0208                              = $0208 ; 019264(Rx) 01926F(Wx) 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0209                              = $0209 ; 019264(Rx) 01926F(Wx) 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_020A                              = $020A ; 019264(Rx) 01926F(Wx) 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_020B                              = $020B ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_020C                              = $020C ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_020D                              = $020D ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_020E                              = $020E ; 019264(Rx) 01926F(Wx) 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_020F                              = $020F ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0210                              = $0210 ; 019264(Rx) 01926F(Wx) 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0211                              = $0211 ; 019264(Rx) 01926F(Wx) 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0212                              = $0212 ; 019264(Rx) 01926F(Wx) 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0213                              = $0213 ; 019264(Rx) 01926F(Wx) 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0214                              = $0214 ; 019264(Rx) 01926F(Wx) 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0215                              = $0215 ; 019264(Rx) 01926F(Wx) 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0216                              = $0216 ; 019264(Rx) 01926F(Wx) 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0217                              = $0217 ; 019264(Rx) 01926F(Wx) 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0218                              = $0218 ; 019264(Rx) 01926F(Wx) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0219                              = $0219 ; 019264(Rx) 01926F(Wx) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_021A                              = $021A ; 019264(Rx) 01926F(Wx) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_021B                              = $021B ; 019264(Rx) 01926F(Wx) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_021C                              = $021C ; 019264(Rx) 01926F(Wx) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_021D                              = $021D ; 019264(Rx) 01926F(Wx) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_021E                              = $021E ; 019264(Rx) 01926F(Wx) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_021F                              = $021F ; 019264(Rx) 01926F(Wx) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0220                              = $0220 ; 019264(Rx) 01926F(Wx) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0221                              = $0221 ; 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0222                              = $0222 ; 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0223                              = $0223 ; 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0224                              = $0224 ; 019264(Rx) 01926F(Wx) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0225                              = $0225 ; 019264(Rx) 01926F(Wx) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0226                              = $0226 ; 019264(Rx) 01926F(Wx) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0227                              = $0227 ; 019264(Rx) 01926F(Wx) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0228                              = $0228 ; 019264(Rx) 01926F(Wx) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0229                              = $0229 ; 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_022A                              = $022A ; 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_022B                              = $022B ; 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_022C                              = $022C ; 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_022D                              = $022D ; 019264(Rx) 01926F(Wx) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_022E                              = $022E ; 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_022F                              = $022F ; 019264(Rx) 01926F(Wx) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0230                              = $0230 ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0231                              = $0231 ; 019264(Rx) 01926F(Wx) 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0232                              = $0232 ; 019264(Rx) 01926F(Wx) 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0233                              = $0233 ; 019264(Rx) 01926F(Wx) 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0234                              = $0234 ; 019264(Rx) 01926F(Wx) 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0235                              = $0235 ; 019264(Rx) 01926F(Wx) 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0236                              = $0236 ; 019264(Rx) 01926F(Wx) 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0237                              = $0237 ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0238                              = $0238 ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0239                              = $0239 ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_023A                              = $023A ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_023B                              = $023B ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_023C                              = $023C ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_023D                              = $023D ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_023E                              = $023E ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_023F                              = $023F ; 01C0EE(Wy) 01D255(Rx) 01D25A(Wx) 01D291(Rx) 01D38A(Rx) 01D38F(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0240                              = $0240 ; 01C0EE(Wy) 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0241                              = $0241 ; 01C0EE(Wy) 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0242                              = $0242 ; 01C0EE(Wy) 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0243                              = $0243 ; 01C0EE(Wy) 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0244                              = $0244 ; 01C0EE(Wy) 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0245                              = $0245 ; 01C0EE(Wy) 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0246                              = $0246 ; 01C0EE(Wy) 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0247                              = $0247 ; 01C0EE(Wy) 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0248                              = $0248 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0249                              = $0249 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_024A                              = $024A ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_024B                              = $024B ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_024C                              = $024C ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_024D                              = $024D ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_024E                              = $024E ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_024F                              = $024F ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0250                              = $0250 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0251                              = $0251 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0252                              = $0252 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0253                              = $0253 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0254                              = $0254 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0255                              = $0255 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0256                              = $0256 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0257                              = $0257 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0258                              = $0258 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0259                              = $0259 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_025A                              = $025A ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_025B                              = $025B ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_025C                              = $025C ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_025D                              = $025D ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_025E                              = $025E ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_025F                              = $025F ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0260                              = $0260 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0261                              = $0261 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0262                              = $0262 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0263                              = $0263 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0264                              = $0264 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0265                              = $0265 ; 019264(Rx) 01926F(Wx) 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0266                              = $0266 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0267                              = $0267 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0268                              = $0268 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0269                              = $0269 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_026A                              = $026A ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_026B                              = $026B ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_026C                              = $026C ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_026D                              = $026D ; 019264(Rx) 01926F(Wx) 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_026E                              = $026E ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_026F                              = $026F ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0270                              = $0270 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0271                              = $0271 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0272                              = $0272 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0273                              = $0273 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0274                              = $0274 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0275                              = $0275 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0276                              = $0276 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0277                              = $0277 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0278                              = $0278 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_0279                              = $0279 ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_027A                              = $027A ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_027B                              = $027B ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_027C                              = $027C ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_027D                              = $027D ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_027E                              = $027E ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 
; ram_027F                              = $027F ; 01C69A(Wx) 01E05B(Wi) 01E14B(Wy) 01F637(Ri) 01F63D(Wi) 01F656(Ri) 01FA3C(Ri) 01FA42(Wi) 01FAAE(Ri) 



; current brightness
; flag is con_buffer_ready_palette
ram_pal_buffer                          = $0280 ; 018116(Wx) 018BAF(Wy) 019571(Wy) 019616(Wy) 0197CE(Wx) 01C55F(Wx) 01DA5E(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_0281                              = $0281 ; 018116(Wx) 018BAF(Wy) 019571(Wy) 019616(Wy) 0197CE(Wx) 01C55F(Wx) 01DA5E(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_0282                              = $0282 ; 018116(Wx) 018BAF(Wy) 019551(W)  019571(Wy) 019616(Wy) 0197CE(Wx) 01C55F(Wx) 01DA5E(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_0283                              = $0283 ; 018116(Wx) 018BAF(Wy) 019571(Wy) 019616(Wy) 0197CE(Wx) 019D53(W)  019F79(Wx) 01C55F(Wx) 01DA5E(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_0284                              = $0284 ; 018116(Wx) 018BAF(Wy) 019571(Wy) 019616(Wy) 0197CE(Wx) 01C55F(Wx) 01DA5E(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_0285                              = $0285 ; 018116(Wx) 018BAF(Wy) 019571(Wy) 019616(Wy) 0197CE(Wx) 01C55F(Wx) 01DA5E(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_0286                              = $0286 ; 018116(Wx) 018BAF(Wy) 019571(Wy) 019616(Wy) 0197CE(Wx) 01C55F(Wx) 01DA5E(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_0287                              = $0287 ; 018116(Wx) 018BAF(Wy) 019571(Wy) 019616(Wy) 0197CE(Wx) 019F79(Wx) 01C55F(Wx) 01DA5E(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_0288                              = $0288 ; 018116(Wx) 018BAF(Wy) 019616(Wy) 0197CE(Wx) 01C55F(Wx) 01DA5E(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_0289                              = $0289 ; 018116(Wx) 018BAF(Wy) 019616(Wy) 0197CE(Wx) 01C55F(Wx) 01DA5E(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_028A                              = $028A ; 018116(Wx) 018BAF(Wy) 019527(W)  019616(Wy) 0197CE(Wx) 01C55F(Wx) 01DA5E(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_028B                              = $028B ; 018116(Wx) 018BAF(Wy) 019616(Wy) 0197CE(Wx) 019F79(Wx) 01C55F(Wx) 01DA5E(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_028C                              = $028C ; 018116(Wx) 018BAF(Wy) 019616(Wy) 0197CE(Wx) 01C55F(Wx) 01DA5E(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_028D                              = $028D ; 018116(Wx) 018BAF(Wy) 019616(Wy) 0197CE(Wx) 01C55F(Wx) 01DA5E(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_028E                              = $028E ; 018116(Wx) 018BAF(Wy) 019616(Wy) 0197CE(Wx) 01C55F(Wx) 01DA5E(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_028F                              = $028F ; 018116(Wx) 018BAF(Wy) 019616(Wy) 0197CE(Wx) 019F79(Wx) 01C55F(Wx) 01DA5E(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_0290                              = $0290 ; 018116(Wx) 018BCB(Wy) 019622(Wy) 01DA74(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_0291                              = $0291 ; 018116(Wx) 018BCB(Wy) 019622(Wy) 01DA74(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_0292                              = $0292 ; 018116(Wx) 018BCB(Wy) 019622(Wy) 01DA74(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_0293                              = $0293 ; 018116(Wx) 018BCB(Wy) 019622(Wy) 01DA74(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_0294                              = $0294 ; 018116(Wx) 018BCB(Wy) 019622(Wy) 01DA74(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_0295                              = $0295 ; 018116(Wx) 018BCB(Wy) 019622(Wy) 01DA74(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_0296                              = $0296 ; 018116(Wx) 018BCB(Wy) 019622(Wy) 01DA74(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_0297                              = $0297 ; 018116(Wx) 018BCB(Wy) 019622(Wy) 01DA74(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_0298                              = $0298 ; 018116(Wx) 019622(Wy) 01DAAA(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_0299                              = $0299 ; 018116(Wx) 019622(Wy) 01DAAA(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_029A                              = $029A ; 018116(Wx) 019622(Wy) 01DAAA(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_029B                              = $029B ; 018116(Wx) 019622(Wy) 01DAAA(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_029C                              = $029C ; 018116(Wx) 019622(Wy) 01DAAA(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_029D                              = $029D ; 018116(Wx) 019622(Wy) 01DAAA(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_029E                              = $029E ; 018116(Wx) 019622(Wy) 01DAAA(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 
; ram_029F                              = $029F ; 018116(Wx) 019622(Wy) 01DAAA(Wy) 01DACE(Rx) 01DAEA(Wx) 01DB12(Rx) 01DB2E(Wx) 01E05B(Wi) 01E308(Ry) 



; max brightness
ram_max_brightnes_pal_buffer            = $02A0 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02A1                              = $02A1 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02A2                              = $02A2 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02A3                              = $02A3 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02A4                              = $02A4 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02A5                              = $02A5 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02A6                              = $02A6 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02A7                              = $02A7 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02A8                              = $02A8 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02A9                              = $02A9 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02AA                              = $02AA ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02AB                              = $02AB ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02AC                              = $02AC ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02AD                              = $02AD ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02AE                              = $02AE ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02AF                              = $02AF ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02B0                              = $02B0 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02B1                              = $02B1 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02B2                              = $02B2 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02B3                              = $02B3 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02B4                              = $02B4 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02B5                              = $02B5 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02B6                              = $02B6 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02B7                              = $02B7 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02B8                              = $02B8 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02B9                              = $02B9 ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02BA                              = $02BA ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02BB                              = $02BB ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02BC                              = $02BC ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02BD                              = $02BD ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02BE                              = $02BE ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 
; ram_02BF                              = $02BF ; 01DAD1(Wx) 01DADF(Rx) 01DB15(Wx) 01DB23(Rx) 01E05B(Wi) 



; 02C0-0307 (48)
; simple buffer, format: ppu hi + ppu lo + 1 tile
; index is ram_000E_buffer_index
; flag is con_buffer_ready_04
ram_02C0_ppu_buffer                     = $02C0 ; 009109(Wx) 00912C(Wx) 018660(Wx) 0188E5(Wx) 018C5A(Wy) 0190C9(Wx) 019367(Wx) 019868(Wx) 019B89(Wx) 01D0AC(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02C1                              = $02C1 ; 00910E(Wx) 009130(Wx) 018667(Wx) 0188EA(Wx) 018C61(Wy) 0190CF(Wx) 01936C(Wx) 01986F(Wx) 019B92(Wx) 01D0B1(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02C2                              = $02C2 ; 009113(Wx) 009135(Wx) 01866E(Wx) 0188F2(Wx) 018C68(Wy) 0190D6(Wx) 019371(Wx) 019877(Wx) 019B97(Wx) 01D0B6(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02C3                              = $02C3 ; 009109(Wx) 00912C(Wx) 018660(Wx) 0188E5(Wx) 018C5A(Wy) 0190DC(Wx) 019367(Wx) 019868(Wx) 019B89(Wx) 01D0AC(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02C4                              = $02C4 ; 00910E(Wx) 009130(Wx) 018667(Wx) 0188EA(Wx) 018C61(Wy) 0190E2(Wx) 01936C(Wx) 01986F(Wx) 019B92(Wx) 01D0B1(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02C5                              = $02C5 ; 009113(Wx) 009135(Wx) 01866E(Wx) 0188F2(Wx) 018C68(Wy) 0190E9(Wx) 019371(Wx) 019877(Wx) 019B97(Wx) 01D0B6(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02C6                              = $02C6 ; 009109(Wx) 00912C(Wx) 018660(Wx) 0188E5(Wx) 018C5A(Wy) 0190FF(Wx) 019367(Wx) 019868(Wx) 019B89(Wx) 01D0AC(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02C7                              = $02C7 ; 00910E(Wx) 009130(Wx) 018667(Wx) 0188EA(Wx) 018C61(Wy) 019105(Wx) 01936C(Wx) 01986F(Wx) 019B92(Wx) 01D0B1(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02C8                              = $02C8 ; 009113(Wx) 009135(Wx) 01866E(Wx) 0188F2(Wx) 018C68(Wy) 01910D(Wx) 019371(Wx) 019877(Wx) 019B97(Wx) 01D0B6(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02C9                              = $02C9 ; 009109(Wx) 00912C(Wx) 018660(Wx) 0188E5(Wx) 018C5A(Wy) 0190FF(Wx) 019367(Wx) 019868(Wx) 019B89(Wx) 01D0AC(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02CA                              = $02CA ; 00910E(Wx) 009130(Wx) 018667(Wx) 0188EA(Wx) 018C61(Wy) 019105(Wx) 01936C(Wx) 01986F(Wx) 019B92(Wx) 01D0B1(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02CB                              = $02CB ; 009113(Wx) 009135(Wx) 01866E(Wx) 0188F2(Wx) 018C68(Wy) 01910D(Wx) 019371(Wx) 019877(Wx) 019B97(Wx) 01D0B6(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02CC                              = $02CC ; 009109(Wx) 00912C(Wx) 018660(Wx) 018C5A(Wy) 0190FF(Wx) 019290(Wx) 019367(Wx) 019B89(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02CD                              = $02CD ; 00910E(Wx) 009130(Wx) 018667(Wx) 018C61(Wy) 019105(Wx) 019298(Wx) 01936C(Wx) 019B92(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02CE                              = $02CE ; 009113(Wx) 009135(Wx) 01866E(Wx) 018C68(Wy) 01910D(Wx) 01929D(Wx) 019371(Wx) 019B97(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02CF                              = $02CF ; 009109(Wx) 00912C(Wx) 018660(Wx) 018C5A(Wy) 0190FF(Wx) 019367(Wx) 019B89(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02D0                              = $02D0 ; 00910E(Wx) 009130(Wx) 018667(Wx) 018C61(Wy) 019105(Wx) 01936C(Wx) 019B92(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02D1                              = $02D1 ; 009113(Wx) 009135(Wx) 01866E(Wx) 018C68(Wy) 01910D(Wx) 019371(Wx) 019B97(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02D2                              = $02D2 ; 009109(Wx) 00912C(Wx) 018660(Wx) 018C5A(Wy) 01911C(Wx) 019367(Wx) 019B89(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02D3                              = $02D3 ; 00910E(Wx) 009130(Wx) 018667(Wx) 018C61(Wy) 019122(Wx) 01936C(Wx) 019B92(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02D4                              = $02D4 ; 009113(Wx) 009135(Wx) 01866E(Wx) 018C68(Wy) 01912A(Wx) 019371(Wx) 019B97(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02D5                              = $02D5 ; 009109(Wx) 018660(Wx) 018C5A(Wy) 01911C(Wx) 019367(Wx) 019B89(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02D6                              = $02D6 ; 00910E(Wx) 018667(Wx) 018C61(Wy) 019122(Wx) 01936C(Wx) 019B92(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02D7                              = $02D7 ; 009113(Wx) 01866E(Wx) 018C68(Wy) 01912A(Wx) 019371(Wx) 019B97(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02D8                              = $02D8 ; 009109(Wx) 018660(Wx) 018C7F(Wy) 01911C(Wx) 019367(Wx) 019B89(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02D9                              = $02D9 ; 00910E(Wx) 018667(Wx) 018C85(Wy) 019122(Wx) 01936C(Wx) 019B92(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02DA                              = $02DA ; 009113(Wx) 01866E(Wx) 018C8B(Wy) 01912A(Wx) 019371(Wx) 019B97(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02DB                              = $02DB ; 009109(Wx) 018660(Wx) 018CB4(Wy) 01911C(Wx) 019367(Wx) 019B89(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02DC                              = $02DC ; 00910E(Wx) 018667(Wx) 018CBB(Wy) 019122(Wx) 01936C(Wx) 019B92(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02DD                              = $02DD ; 009113(Wx) 01866E(Wx) 018CC2(Wy) 01912A(Wx) 019371(Wx) 019B97(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02DE                              = $02DE ; 009109(Wx) 018660(Wx) 018CB4(Wy) 019367(Wx) 019B89(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02DF                              = $02DF ; 00910E(Wx) 018667(Wx) 018CBB(Wy) 01936C(Wx) 019B92(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02E0                              = $02E0 ; 009113(Wx) 01866E(Wx) 018CC2(Wy) 019371(Wx) 019B97(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02E1                              = $02E1 ; 009109(Wx) 018660(Wx) 018CB4(Wy) 019367(Wx) 019B89(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02E2                              = $02E2 ; 00910E(Wx) 018667(Wx) 018CBB(Wy) 01936C(Wx) 019B92(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02E3                              = $02E3 ; 009113(Wx) 01866E(Wx) 018CC2(Wy) 019371(Wx) 019B97(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02E4                              = $02E4 ; 009109(Wx) 018CB4(Wy) 019367(Wx) 019B89(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02E5                              = $02E5 ; 00910E(Wx) 018CBB(Wy) 01936C(Wx) 019B92(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02E6                              = $02E6 ; 009113(Wx) 018CC2(Wy) 019371(Wx) 019B97(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02E7                              = $02E7 ; 009109(Wx) 018CB4(Wy) 019367(Wx) 019B89(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02E8                              = $02E8 ; 00910E(Wx) 018CBB(Wy) 01936C(Wx) 019B92(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02E9                              = $02E9 ; 009113(Wx) 018CC2(Wy) 019371(Wx) 019B97(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02EA                              = $02EA ; 018CB4(Wy) 019367(Wx) 019B89(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02EB                              = $02EB ; 018CBB(Wy) 01936C(Wx) 019B92(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02EC                              = $02EC ; 018CC2(Wy) 019371(Wx) 019B97(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02ED                              = $02ED ; 019367(Wx) 019B89(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02EE                              = $02EE ; 01936C(Wx) 019B92(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02EF                              = $02EF ; 019371(Wx) 019B97(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02F0                              = $02F0 ; 019367(Wx) 019B89(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02F1                              = $02F1 ; 01936C(Wx) 019B92(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02F2                              = $02F2 ; 019371(Wx) 019B97(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02F3                              = $02F3 ; 019367(Wx) 019B89(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02F4                              = $02F4 ; 01936C(Wx) 019B92(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02F5                              = $02F5 ; 019371(Wx) 019B97(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02F6                              = $02F6 ; 019367(Wx) 019B89(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02F7                              = $02F7 ; 01936C(Wx) 019B92(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02F8                              = $02F8 ; 019371(Wx) 019B97(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02F9                              = $02F9 ; 019367(Wx) 019B89(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02FA                              = $02FA ; 01936C(Wx) 019B92(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02FB                              = $02FB ; 019371(Wx) 019B97(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02FC                              = $02FC ; 019367(Wx) 019B89(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_02FD                              = $02FD ; 01936C(Wx) 019B92(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_02FE                              = $02FE ; 019371(Wx) 019B97(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_02FF                              = $02FF ; 019367(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_0300                              = $0300 ; 01936C(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_0301                              = $0301 ; 019371(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_0302                              = $0302 ; 019367(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_0303                              = $0303 ; 01936C(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_0304                              = $0304 ; 019371(Wx) 01E05B(Wi) 01E359(Ry) 
; ram_0305                              = $0305 ; 019367(Wx) 01E05B(Wi) 01E34D(Ry) 
; ram_0306                              = $0306 ; 01936C(Wx) 01E05B(Wi) 01E353(Ry) 
; ram_0307                              = $0307 ; 019371(Wx) 01E05B(Wi) 01E359(Ry) 



; 0308-0325 (1E) 
; index is ram_0087_useless_buffer_index_1E
; flag is con_buffer_ready_20
ram_0308_ppu_buffer                     = $0308 ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_0309                              = $0309 ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_030A                              = $030A ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_030B                              = $030B ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_030C                              = $030C ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_030D                              = $030D ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_030E                              = $030E ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_030F                              = $030F ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_0310                              = $0310 ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_0311                              = $0311 ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_0312                              = $0312 ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_0313                              = $0313 ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_0314                              = $0314 ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_0315                              = $0315 ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_0316                              = $0316 ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_0317                              = $0317 ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_0318                              = $0318 ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_0319                              = $0319 ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_031A                              = $031A ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_031B                              = $031B ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_031C                              = $031C ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_031D                              = $031D ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_031E                              = $031E ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_031F                              = $031F ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_0320                              = $0320 ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_0321                              = $0321 ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_0322                              = $0322 ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_0323                              = $0323 ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_0324                              = $0324 ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 
; ram_0325                              = $0325 ; 01E05B(Wi) 01E3AD(Ry) 01F55B(Wx) 



; free addresses, because ram_0308_ppu_buffer can only go up to 0325
; ram_0326                              = $0326 ; 01E05B(Wi) 
; ram_0327                              = $0327 ; 01E05B(Wi) 



; 0328-0363 (3C) 
; format: tiles counter + ppu hi + ppu lo + list of tiles
    ; if tiles counter = 00, then buffer is closed
; flag is con_buffer_ready_10
ram_0328_ppu_buffer                     = $0328 ; 01E05B(Wi) 01E376(Ry) 01F89C(Wx) 01FA9C(Wx) 
; ram_0329                              = $0329 ; 01E05B(Wi) 01E37C(Ry) 01F8A2(Wx) 01FAA2(Wx) 
; ram_032A                              = $032A ; 01E05B(Wi) 01E383(Ry) 01F8A8(Wx) 01FAA8(Wx) 
; ram_032B                              = $032B ; 01E05B(Wi) 01E38A(Ry) 01F8E9(Wx) 01FAB1(Wx) 
; ram_032C                              = $032C ; 01E05B(Wi) 01E376(Ry) 01E38A(Ry) 01F8E9(Wx) 01FA9C(Wx) 01FAB1(Wx) 
; ram_032D                              = $032D ; 01E05B(Wi) 01E376(Ry) 01E37C(Ry) 01E38A(Ry) 01F89C(Wx) 01F8E9(Wx) 01FA9C(Wx) 01FAA2(Wx) 01FAB1(Wx) 
; ram_032E                              = $032E ; 01E05B(Wi) 01E376(Ry) 01E37C(Ry) 01E383(Ry) 01E38A(Ry) 01F8A2(Wx) 01F8E9(Wx) 01FA9C(Wx) 01FAA2(Wx) 01FAA8(Wx) 01FAB1(Wx) 
; ram_032F                              = $032F ; 01E05B(Wi) 01E376(Ry) 01E37C(Ry) 01E383(Ry) 01E38A(Ry) 01F89C(Wx) 01F8A8(Wx) 01F8E9(Wx) 01FA9C(Wx) 01FAA2(Wx) 01FAA8(Wx) 01FAB1(Wx) 
; ram_0330                              = $0330 ; 01E05B(Wi) 01E376(Ry) 01E37C(Ry) 01E383(Ry) 01E38A(Ry) 01F8A2(Wx) 01F8E9(Wx) 01FA9C(Wx) 01FAA2(Wx) 01FAA8(Wx) 01FAB1(Wx) 
; ram_0331                              = $0331 ; 01E05B(Wi) 01E376(Ry) 01E37C(Ry) 01E383(Ry) 01E38A(Ry) 01F89C(Wx) 01F8A8(Wx) 01F8E9(Wx) 01FA9C(Wx) 01FAA2(Wx) 01FAA8(Wx) 01FAB1(Wx) 
; ram_0332                              = $0332 ; 01E05B(Wi) 01E376(Ry) 01E37C(Ry) 01E383(Ry) 01E38A(Ry) 01F8A2(Wx) 01F8E9(Wx) 01FA9C(Wx) 01FAA2(Wx) 01FAA8(Wx) 01FAB1(Wx) 
; ram_0333                              = $0333 ; 01E05B(Wi) 01E376(Ry) 01E37C(Ry) 01E383(Ry) 01E38A(Ry) 01F89C(Wx) 01F8A8(Wx) 01F8E9(Wx) 01FA9C(Wx) 01FAA2(Wx) 01FAA8(Wx) 01FAB1(Wx) 
; ram_0334                              = $0334 ; 01E05B(Wi) 01E37C(Ry) 01E383(Ry) 01E38A(Ry) 01F8A2(Wx) 01F8E9(Wx) 01FAA2(Wx) 01FAA8(Wx) 01FAB1(Wx) 
; ram_0335                              = $0335 ; 01E05B(Wi) 01E376(Ry) 01E383(Ry) 01E38A(Ry) 01F89C(Wx) 01F8A8(Wx) 01F8E9(Wx) 01FAA8(Wx) 01FAB1(Wx) 
; ram_0336                              = $0336 ; 01E05B(Wi) 01E37C(Ry) 01E38A(Ry) 01F8A2(Wx) 01F8E9(Wx) 01FAB1(Wx) 
; ram_0337                              = $0337 ; 01E05B(Wi) 01E376(Ry) 01E383(Ry) 01E38A(Ry) 01F89C(Wx) 01F8A8(Wx) 01F8E9(Wx) 01FA9C(Wx) 01FAB1(Wx) 
; ram_0338                              = $0338 ; 01E05B(Wi) 01E376(Ry) 01E37C(Ry) 01E38A(Ry) 01F8A2(Wx) 01F8E9(Wx) 01FA9C(Wx) 01FAA2(Wx) 01FAB1(Wx) 
; ram_0339                              = $0339 ; 01E05B(Wi) 01E376(Ry) 01E37C(Ry) 01E383(Ry) 01E38A(Ry) 01F89C(Wx) 01F8A8(Wx) 01F8E9(Wx) 01FAA2(Wx) 01FAA8(Wx) 01FAE7(Wx) 
; ram_033A                              = $033A ; 01E05B(Wi) 01E37C(Ry) 01E383(Ry) 01E38A(Ry) 01F8A2(Wx) 01F8E9(Wx) 01FAA8(Wx) 01FAB1(Wx) 
; ram_033B                              = $033B ; 01E05B(Wi) 01E376(Ry) 01E383(Ry) 01E38A(Ry) 01F89C(Wx) 01F8A8(Wx) 01F8E9(Wx) 01FAB1(Wx) 
; ram_033C                              = $033C ; 01E05B(Wi) 01E376(Ry) 01E37C(Ry) 01E38A(Ry) 01F8A2(Wx) 01F8E9(Wx) 01FAE7(Wx) 
; ram_033D                              = $033D ; 01E05B(Wi) 01E376(Ry) 01E383(Ry) 01E38A(Ry) 01F89C(Wx) 01F8A8(Wx) 01F8E9(Wx) 
; ram_033E                              = $033E ; 01E05B(Wi) 01E37C(Ry) 01E38A(Ry) 01F8A2(Wx) 01F8E9(Wx) 
; ram_033F                              = $033F ; 01E05B(Wi) 01E376(Ry) 01E383(Ry) 01E38A(Ry) 01F89C(Wx) 01F8A8(Wx) 01F8E9(Wx) 
; ram_0340                              = $0340 ; 01E05B(Wi) 01E37C(Ry) 01E38A(Ry) 01F8A2(Wx) 01F8E9(Wx) 
; ram_0341                              = $0341 ; 01E05B(Wi) 01E376(Ry) 01E383(Ry) 01E38A(Ry) 01F89C(Wx) 01F8A8(Wx) 01F8E9(Wx) 
; ram_0342                              = $0342 ; 01E05B(Wi) 01E37C(Ry) 01E38A(Ry) 01F8A2(Wx) 01F8E9(Wx) 
; ram_0343                              = $0343 ; 01E05B(Wi) 01E376(Ry) 01E383(Ry) 01E38A(Ry) 01F89C(Wx) 01F8A8(Wx) 01F8E9(Wx) 
; ram_0344                              = $0344 ; 01E05B(Wi) 01E37C(Ry) 01E38A(Ry) 01F8A2(Wx) 01F8E9(Wx) 
; ram_0345                              = $0345 ; 01E05B(Wi) 01E376(Ry) 01E383(Ry) 01E38A(Ry) 01F89C(Wx) 01F8A8(Wx) 01F8E9(Wx) 
; ram_0346                              = $0346 ; 01E05B(Wi) 01E37C(Ry) 01E38A(Ry) 01F8A2(Wx) 01F8E9(Wx) 
; ram_0347                              = $0347 ; 01E05B(Wi) 01E376(Ry) 01E383(Ry) 01E38A(Ry) 01F89C(Wx) 01F8A8(Wx) 01F8E9(Wx) 
; ram_0348                              = $0348 ; 01E05B(Wi) 01E37C(Ry) 01E38A(Ry) 01F8A2(Wx) 01F8E9(Wx) 
; ram_0349                              = $0349 ; 01E05B(Wi) 01E376(Ry) 01E383(Ry) 01E38A(Ry) 01F89C(Wx) 01F8A8(Wx) 01F8E9(Wx) 
; ram_034A                              = $034A ; 01E05B(Wi) 01E37C(Ry) 01E38A(Ry) 01F8A2(Wx) 01F8E9(Wx) 
; ram_034B                              = $034B ; 01E05B(Wi) 01E376(Ry) 01E383(Ry) 01E38A(Ry) 01F89C(Wx) 01F8A8(Wx) 01F8E9(Wx) 
; ram_034C                              = $034C ; 01E05B(Wi) 01E37C(Ry) 01E38A(Ry) 01F8A2(Wx) 01F8E9(Wx) 
; ram_034D                              = $034D ; 01E05B(Wi) 01E383(Ry) 01E38A(Ry) 01F8A8(Wx) 01F8E9(Wx) 
; ram_034E                              = $034E ; 01E05B(Wi) 01E38A(Ry) 01F8E9(Wx) 
; ram_034F                              = $034F ; 01E05B(Wi) 01E38A(Ry) 01F8E9(Wx) 
; ram_0350                              = $0350 ; 01E05B(Wi) 01E376(Ry) 01E38A(Ry) 01F89C(Wx) 01F8E9(Wx) 
; ram_0351                              = $0351 ; 01E05B(Wi) 01E37C(Ry) 01E38A(Ry) 01F8A2(Wx) 01F8E9(Wx) 
; ram_0352                              = $0352 ; 01E05B(Wi) 01E376(Ry) 01E383(Ry) 01E38A(Ry) 01F89C(Wx) 01F8A8(Wx) 01F8E9(Wx) 
; ram_0353                              = $0353 ; 01E05B(Wi) 01E37C(Ry) 01E38A(Ry) 01F8A2(Wx) 01F8E9(Wx) 
; ram_0354                              = $0354 ; 01E05B(Wi) 01E376(Ry) 01E383(Ry) 01E38A(Ry) 01F89C(Wx) 01F8A8(Wx) 01F8E9(Wx) 
; ram_0355                              = $0355 ; 01E05B(Wi) 01E37C(Ry) 01E38A(Ry) 01F8A2(Wx) 01F8E9(Wx) 
; ram_0356                              = $0356 ; 01E05B(Wi) 01E376(Ry) 01E383(Ry) 01E38A(Ry) 01F8A8(Wx) 01F8E9(Wx) 01F91F(Wx) 
; ram_0357                              = $0357 ; 01E05B(Wi) 01E38A(Ry) 01F8E9(Wx) 
; ram_0358                              = $0358 ; 01E05B(Wi) 01E38A(Ry) 01F8E9(Wx) 
; ram_0359                              = $0359 ; 01E05B(Wi) 01E376(Ry) 01F91F(Wx) 
; ram_035A                              = $035A ; 01E05B(Wi) 
; ram_035B                              = $035B ; 01E05B(Wi) 
; ram_035C                              = $035C ; 01E05B(Wi) 
; ram_035D                              = $035D ; 01E05B(Wi) 
; ram_035E                              = $035E ; 01E05B(Wi) 
; ram_035F                              = $035F ; 01E05B(Wi) 
; ram_0360                              = $0360 ; 01E05B(Wi) 
; ram_0361                              = $0361 ; 01E05B(Wi) 
; ram_0362                              = $0362 ; 01E05B(Wi) 
; ram_0363                              = $0363 ; 01E05B(Wi) 



; 0364-037B (18) 
; simple buffer, format: ppu hi + ppu lo + 1 tile
; index is ram_0088_useless_buffer_index_18
; flag is con_buffer_ready_40
ram_0364_ppu_buffer                     = $0364 ; 01E05B(Wi) 01E3C1(Ry) 01F65D(Wx) 
; ram_0365                              = $0365 ; 01E05B(Wi) 01E3C7(Ry) 01F662(Wx) 
; ram_0366                              = $0366 ; 01E05B(Wi) 01E3CD(Ry) 01F658(Wx) 
; ram_0367                              = $0367 ; 01E05B(Wi) 01E3C1(Ry) 01F65D(Wx) 
; ram_0368                              = $0368 ; 01E05B(Wi) 01E3C7(Ry) 01F662(Wx) 
; ram_0369                              = $0369 ; 01E05B(Wi) 01E3CD(Ry) 01F658(Wx) 
; ram_036A                              = $036A ; 01E05B(Wi) 01E3C1(Ry) 01F65D(Wx) 
; ram_036B                              = $036B ; 01E05B(Wi) 01E3C7(Ry) 01F662(Wx) 
; ram_036C                              = $036C ; 01E05B(Wi) 01E3CD(Ry) 01F658(Wx) 
; ram_036D                              = $036D ; 01E05B(Wi) 01E3C1(Ry) 01F65D(Wx) 
; ram_036E                              = $036E ; 01E05B(Wi) 01E3C7(Ry) 01F662(Wx) 
; ram_036F                              = $036F ; 01E05B(Wi) 01E3CD(Ry) 01F658(Wx) 
; ram_0370                              = $0370 ; 01E05B(Wi) 01E3C1(Ry) 01F65D(Wx) 
; ram_0371                              = $0371 ; 01E05B(Wi) 01E3C7(Ry) 01F662(Wx) 
; ram_0372                              = $0372 ; 01E05B(Wi) 01E3CD(Ry) 01F658(Wx) 
; ram_0373                              = $0373 ; 01E05B(Wi) 01E3C1(Ry) 01F65D(Wx) 
; ram_0374                              = $0374 ; 01E05B(Wi) 01E3C7(Ry) 01F662(Wx) 
; ram_0375                              = $0375 ; 01E05B(Wi) 01E3CD(Ry) 01F658(Wx) 
; ram_0376                              = $0376 ; 01E05B(Wi) 01E3C1(Ry) 01F65D(Wx) 
; ram_0377                              = $0377 ; 01E05B(Wi) 01E3C7(Ry) 01F662(Wx) 
; ram_0378                              = $0378 ; 01E05B(Wi) 01E3CD(Ry) 01F658(Wx) 
; ram_0379                              = $0379 ; 01E05B(Wi) 01E3C1(Ry) 01F65D(Wx) 
; ram_037A                              = $037A ; 01E05B(Wi) 01E3C7(Ry) 01F662(Wx) 
; ram_037B                              = $037B ; 01E05B(Wi) 01E3CD(Ry) 01F658(Wx) 



; free addresses, because ram_0364_ppu_buffer can only go up to 037B
; ram_037C                              = $037C ; 01E05B(Wi) 
; ram_037D                              = $037D ; 01E05B(Wi) 
; ram_037E                              = $037E ; 01E05B(Wi) 
; ram_037F                              = $037F ; 01E05B(Wi) 
; ram_0380                              = $0380 ; 01E05B(Wi) 
; ram_0381                              = $0381 ; 01E05B(Wi) 
; ram_0382                              = $0382 ; 01E05B(Wi) 
; ram_0383                              = $0383 ; 01E05B(Wi) 
; ram_0384                              = $0384 ; 01E05B(Wi) 
; ram_0385                              = $0385 ; 01E05B(Wi) 
; ram_0386                              = $0386 ; 01E05B(Wi) 
; ram_0387                              = $0387 ; 01E05B(Wi) 
; ram_0388                              = $0388 ; 01E05B(Wi) 
; ram_0389                              = $0389 ; 01E05B(Wi) 
; ram_038A                              = $038A ; 01E05B(Wi) 
; ram_038B                              = $038B ; 01E05B(Wi) 
; ram_038C                              = $038C ; 01E05B(Wi) 
; ram_038D                              = $038D ; 01E05B(Wi) 
; ram_038E                              = $038E ; 01E05B(Wi) 
; ram_038F                              = $038F ; 01E05B(Wi) 
; ram_0390                              = $0390 ; 01E05B(Wi) 
; ram_0391                              = $0391 ; 01E05B(Wi) 
; ram_0392                              = $0392 ; 01E05B(Wi) 
; ram_0393                              = $0393 ; 01E05B(Wi) 



; size 30h? (32h?)
ram_0394_array                          = $0394 ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 01F5EC(Ry) 
; ram_0395                              = $0395 ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 
; ram_0396                              = $0396 ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 01F5EC(Ry) 
; ram_0397                              = $0397 ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 
; ram_0398                              = $0398 ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 01F5EC(Ry) 
; ram_0399                              = $0399 ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 
; ram_039A                              = $039A ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 01F5EC(Ry) 
; ram_039B                              = $039B ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 
; ram_039C                              = $039C ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 01F5EC(Ry) 
; ram_039D                              = $039D ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 
; ram_039E                              = $039E ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 01F5EC(Ry) 
; ram_039F                              = $039F ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 
; ram_03A0                              = $03A0 ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 01F5EC(Ry) 
; ram_03A1                              = $03A1 ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 
; ram_03A2                              = $03A2 ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 01F5EC(Ry) 
; ram_03A3                              = $03A3 ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 
; ram_03A4                              = $03A4 ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 01F5EC(Ry) 
; ram_03A5                              = $03A5 ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 
; ram_03A6                              = $03A6 ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 01F5EC(Ry) 
; ram_03A7                              = $03A7 ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 
; ram_03A8                              = $03A8 ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 01F5EC(Ry) 
; ram_03A9                              = $03A9 ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 
; ram_03AA                              = $03AA ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 01F5EC(Ry) 
; ram_03AB                              = $03AB ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 
; ram_03AC                              = $03AC ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 01F5EC(Ry) 
; ram_03AD                              = $03AD ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 
; ram_03AE                              = $03AE ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 01F5EC(Ry) 
; ram_03AF                              = $03AF ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 
; ram_03B0                              = $03B0 ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 01F5EC(Ry) 
; ram_03B1                              = $03B1 ; 01E05B(Wi) 01F437(Wx) 01F529(Ry) 



; free addresses? or a part of ram_0394_array ?
; ram_03B2                              = $03B2 ; 01E05B(Wi) 
; ram_03B3                              = $03B3 ; 01E05B(Wi) 



; size 14h
ram_03B4_array                          = $03B4 ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 
; ram_03B5                              = $03B5 ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 
; ram_03B6                              = $03B6 ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 
; ram_03B7                              = $03B7 ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 
; ram_03B8                              = $03B8 ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 
; ram_03B9                              = $03B9 ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 
; ram_03BA                              = $03BA ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 
; ram_03BB                              = $03BB ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 
; ram_03BC                              = $03BC ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 
; ram_03BD                              = $03BD ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 
; ram_03BE                              = $03BE ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 
; ram_03BF                              = $03BF ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 
; ram_03C0                              = $03C0 ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 
; ram_03C1                              = $03C1 ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 
; ram_03C2                              = $03C2 ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 
; ram_03C3                              = $03C3 ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 
; ram_03C4                              = $03C4 ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 
; ram_03C5                              = $03C5 ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 
; ram_03C6                              = $03C6 ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 
; ram_03C7                              = $03C7 ; 01E05B(Wi) 01F7E1(Wx) 01F8B0(Ry) 01FA06(Rx) 



; free addresses
; ram_03C8                              = $03C8 ; 01E05B(Wi) 
; ram_03C9                              = $03C9 ; 01E05B(Wi) 
; ram_03CA                              = $03CA ; 01E05B(Wi) 
; ram_03CB                              = $03CB ; 01E05B(Wi) 
; ram_03CC                              = $03CC ; 01E05B(Wi) 
; ram_03CD                              = $03CD ; 01E05B(Wi) 
; ram_03CE                              = $03CE ; 01E05B(Wi) 
; ram_03CF                              = $03CF ; 01E05B(Wi) 
; ram_03D0                              = $03D0 ; 01E05B(Wi) 
; ram_03D1                              = $03D1 ; 01E05B(Wi) 
; ram_03D2                              = $03D2 ; 01E05B(Wi) 
; ram_03D3                              = $03D3 ; 01E05B(Wi) 



; main game script
; see con_script
ram_script                              = $03D4 ; 017738(R)  017792(R)  017831(R)  018ED4(W)  018F01(W)  01909C(R)  0190AA(W)  0190B2(R)  0190C0(W)  0193F4(W)  0197C2(W)  019C79(W)  01A4F4(W)  01DBBD(W)  01E05B(Wi) 01E262(R)  01E3ED(W)  01EB71(R)  01EC1E(W)  01EC2E(W)  01ED97(W)  



; see con_03D5
ram_03D5_script                         = $03D5 ; 0193FC(W)  019747(W)  0197C5(W)  01A4EA(W)  01A65E(W)  01A71D(W)  01A735(W)  01A741(W)  01E05B(Wi) 01E25B(R)  01E3F0(W)  01E470(W)  01E4BF(W)  01E536(W)  01E59A(W)  01E5A3(W)  01E5F8(W)  01E659(W)  01ED9B(R)  01EE2F(W)  01EF4F(W)  01EF69(W)  01EFCB(W)  01F230(W)  



; subscript for ram_03D5_script = con_03D5_00
; see con_03D6
ram_03D6_subscript                      = $03D6 ; 0193F9(W)  01974A(W)  019C74(W)  01A4EF(W)  01A663(W)  01A73A(W)  01A744(W)  01E05B(Wi) 01E3F3(W)  01E422(R)  01E5A6(W)  01EE3E(W)  01EF4A(W)  01EF64(W)  01EFC6(W)  01F235(W)  



; player level
ram_player_power                        = $03D7 ; for common links
    ram_captain_power                       = $03D7 ; 016877(R)  01777B(R)  017B8D(Ry) 017E4D(R)  019A0E(W)  01A34A(Ry) 01A36A(Ry) 01A371(Ry) 01A377(Wy) 01A3AB(Ry) 01A40D(Ry) 01BDA4(Ry) 01C1D2(Ry) 01DBC2(W)  01E05B(Wi) 01E85C(W)  01FF27(W)  
    ram_hawk_power                          = $03D8 ; 017B8D(Ry) 017CB5(R)  017D94(R)  019A13(W)  01A34A(Ry) 01A36A(Ry) 01A371(Ry) 01A377(Wy) 01A3AB(Ry) 01A40D(Ry) 01BDA4(Ry) 01C1D2(Ry) 01DBC5(W)  01E05B(Wi) 01E85F(W)  



; health points/life
ram_player_hp                           = $03D9 ; for common links
    ram_captain_hp                          = $03D9 ; 017889(Ry) 01788F(Wy) 0178AA(Ry) 019768(W)  01A3B4(Ry) 01A3C6(Wy) 01A414(Wy) 01C24B(Ry) 01DBCA(W)  01DC2A(W)  01E05B(Wi) 01E864(W)  01FECA(Rx) 01FEDB(Rx) 01FF30(W)  
    ram_hawk_hp                             = $03DA ; 017889(Ry) 01788F(Wy) 0178AA(Ry) 01A3B4(Ry) 01A3C6(Wy) 01A414(Wy) 01C24B(Ry) 01DBCD(W)  01DC2D(W)  01E05B(Wi) 01E867(W)  01FECA(Rx) 01FEDB(Rx) 



; free addresses
; ram_03DB                              = $03DB ; 01E05B(Wi) 
; ram_03DC                              = $03DC ; 01E05B(Wi) 



; how many do you have
ram_plr_crystals                        = $03DD ; 01A351(Ry) 01A358(Ry) 01A35E(Wy) 01A367(Wy) 01A386(Wy) 01C274(Ry) 01DFA6(R)  01E05B(Wi) 01E84B(W)  
; ram_03DE                              = $03DE ; 01A358(Ry) 01A35E(Wy) 01A367(Wy) 01C274(Ry) 01E05B(Wi) 01E84E(W)  



; format:
    ; 1st = 00....
    ; 2nd = ..00..
    ; 3rd = ....00
ram_score                               = $03DF ; for common links

ram_hi_score                            = $03DF ; 018DB1(R)  018E88(R)  018E93(W)  0198F1(Rx) 01E05B(Wi) 01E3F8(W)  
; ram_03E0                              = $03E0 ; 018DB6(R)  018E82(R)  018E99(W)  0198F6(Rx) 01E05B(Wi) 01E3FD(W)  
; ram_03E1                              = $03E1 ; 018DBB(R)  018E7B(R)  018E9F(W)  0198FB(Rx) 01E05B(Wi) 01E402(W)  

ram_plr_score                           = $03E2 ; 017F36(R)  017F39(W)  017F3C(R)  018DDA(R)  018E8B(R)  018E90(R)  01976F(W)  0198F1(Rx) 01A442(R)  01A447(W)  01A44A(R)  01E05B(Wi) 01E851(W)  
; ram_03E3                              = $03E3 ; 017F2E(R)  017F31(W)  018DDF(R)  018E85(R)  018E96(R)  019772(W)  0198F6(Rx) 01A43A(R)  01A43F(W)  01E05B(Wi) 01E854(W)  
; ram_03E4                              = $03E4 ; 017F25(R)  017F28(W)  018DE4(R)  018E7F(R)  018E9C(R)  019775(W)  0198FB(Rx) 01A431(R)  01A437(W)  01E05B(Wi) 01E857(W)  



; 
ram_03E5                                = $03E5 ; 01806B(R)  018072(R)  018077(W)  018C2E(W)  018C47(R)  018CE0(R)  018CE5(W)  018CE9(R)  018CEC(W)  018CF2(R)  018CF5(W)  018D0A(R)  018D11(W)  018D2D(R)  018D32(W)  018D38(R)  018D3D(R)  018D99(R)  018D9C(W)  01E05B(Wi) 01E573(R)  01EE6E(W)  01EEA7(R)  01EEAE(R)  01EF38(R)  



; 
ram_03E6_temp                           = $03E6 ; 01E05B(Wi) 01E881(Wx) 01E88F(Rx) 
    ram_03E6_t01_chr_banks_spr              = ram_03E6_temp ; 4 addresses 03E6-03E9



; used only as a part of ram_03E6_temp array
; ram_03E7                              = $03E7 ; 01E05B(Wi) 01E881(Wx) 01E88F(Rx) 01EF5A(W)  
; ram_03E8                              = $03E8 ; 01E05B(Wi) 01E881(Wx) 01E88F(Rx) 
; ram_03E9                              = $03E9 ; 01E05B(Wi) 01E881(Wx) 01E88F(Rx) 



; 
ram_03EA_temp                           = $03EA ; 01E05B(Wi) 01E886(Wx) 01E894(Rx) 
    ram_03EA_t01_chr_banks_bg               = ram_03EA_temp ; 4 addresses 03EA-03ED



; used only as a part of ram_03EA_temp array
; ram_03EB                              = $03EB ; 01E05B(Wi) 01E886(Wx) 01E894(Rx) 
; ram_03EC                              = $03EC ; 01E05B(Wi) 01E886(Wx) 01E894(Rx) 
; ram_03ED                              = $03ED ; 01E05B(Wi) 01E886(Wx) 01E894(Rx) 



; bzk optimize, useless address
ram_03EE_useless                        = $03EE ; 010840(W)  010859(W)  01D565(W)  01D670(W)  01E05B(Wi) 



; 
ram_03EF_pos_X_lo                       = $03EF ; 010835(W)  010853(W)  01182B(R)  01D560(W)  01D66B(W)  01E05B(Wi) 



; bzk optimize, useless address
ram_03F0_useless                        = $03F0 ; 010872(W)  01D568(W)  01D673(W)  01E05B(Wi) 



; 
ram_03F1_pos_Y_lo                       = $03F1 ; 010868(W)  011846(R)  01D56D(W)  01D679(W)  01E05B(Wi) 



; 
ram_03F2_counter                        = $03F2 ; 01A477(R)  01A4AA(W)  01D3C0(R)  01D40D(W)  01D455(W)  01D45D(R)  01D48A(W)  01E05B(Wi) 01E950(Wy) 01EB4E(W)  01FDD5(R)  



; 
ram_03F3                                = $03F3 ; 010789(W)  0141CC(R)  0141D3(W)  01CFAB(W)  01CFD8(W)  01D5C3(W)  01E05B(Wi) 01E2AE(R)  01E447(W)  01E4CA(W)  01E6FE(W)  01EA09(W)  01F0F9(R)  01F102(R)  01F112(R)  01F12F(R)  01F138(W)  01F13E(W)  01F326(W)  



; 
ram_03F4                                = $03F4 ; 01078E(W)  0141D8(W)  01CFB0(W)  01CFDD(W)  01D5C8(W)  01E05B(Wi) 01E2B3(R)  01EA04(W)  01F124(R)  01F12C(W)  01F32B(W)  



; free address
; ram_03F5                              = $03F5 ; 01E05B(Wi) 



; 
ram_03F6_scroll_Y_hi                    = $03F6 ; 01E05B(Wi) 01E988(W)  01EAD1(Rx) 01EAE7(Wx) 01F173(R)  01F17A(R)  
; ram_03F7                              = $03F7 ; 01E05B(Wi) 01E994(W)  01EAD1(Rx) 01EAE7(Wx) 01F18A(R)  01F191(R)  



; 
ram_03F8_scroll_X_hi                    = $03F8 ; 01E05B(Wi) 01E98E(W)  01EADB(Rx) 01EAEA(Wx) 01F181(R)  
; ram_03F9                              = $03F9 ; 01E05B(Wi) 01E99A(W)  01EADB(Rx) 01EAEA(Wx) 01F198(R)  



; free addresses (unused in 0x016066 and 0x016077)
; ram_03FA                              = $03FA ; 01E05B(Wi) 
; ram_03FB                              = $03FB ; 01E05B(Wi) 



; 00 = 
; 01 = 
; 02 = 
; +10 = 
; +80 = 
; handler at 0x01D4AC
ram_03FC                                = $03FC ; 01D495(R)  01D51C(R)  01D69F(R)  01D6A6(R)  01D6AB(W)  01D769(W)  01E05B(Wi) 01E713(W)  01EA6A(W)  01F1AF(R)  01F1E5(W)  



; 
ram_03FD_temp                           = $03FD ; 0115E9(R)  01D4B2(R)  01D52F(W)  01D54B(W)  01D593(W)  01D631(W)  01D693(W)  01D6C8(W)  01D72B(W)  01D763(W)  01E05B(Wi) 01EA73(W)  01EA82(W)  01EA9E(W)  01F1B8(R)  
    ram_03FD_t01_table_index                = ram_03FD_temp ; 
    ram_03FD_t02_handler_index              = ram_03FD_temp ; see con_03FD



; 
ram_03FE_table_index                    = $03FE ; 011635(R)  011686(W)  01D55A(R)  01D5A7(R)  01D5E8(R)  01D665(R)  01D6B5(R)  01D6D0(R)  01D757(W)  01D75A(R)  01E05B(Wi) 01EA87(W)  



; 
ram_03FF_temp                           = $03FF ; 01D52C(W)  01D533(W)  01D590(W)  01D5A2(R)  01D5CD(W)  01D5D0(R)  01D5DC(R)  01D5E3(W)  01D5FD(R)  01D623(R)  01D62C(W)  01E05B(Wi) 01EA8A(W)  
    ram_03FF_t01                            = ram_03FF_temp ; 
    ram_03FF_t02_delay                      = ram_03FF_temp ; 



; 00 = 
; 80 = 
ram_0400_flag                           = $0400 ; 017E96(W)  01809B(W)  019501(W)  01E05B(Wi) 01E6BF(W)  01FB1C(R)  01FB51(R)  01FEBD(R)  



; see con_plr_state
ram_player_state_1                      = $0401 ; 010CC0(R)  011105(R)  0160C3(R)  0160D1(W)  0160F7(W)  016161(R)  016179(W)  0161AB(R)  016202(R)  016226(W)  016234(R)  016246(R)  0162AD(R)  0162C6(R)  01631D(R)  016335(R)  01637E(R)  01639E(W)  0163C9(W)  0163EA(R)  016411(R)  016429(R)  0164BE(R)  0164FB(W)  016550(W)  01657F(R)  016591(R)  0165E1(W)  016605(R)  016643(W)  016D86(W)  016F17(R)  016F33(R)  016F85(R)  016F8E(W)  0171A5(R)  017204(W)  017222(R)  017334(R)  017342(W)  017368(W)  0173D7(W)  0173F7(R)  017445(R)  01745E(R)  017553(R)  01756B(R)  0175F4(R)  017616(R)  01762E(R)  017691(W)  0176AA(R)  0176C8(W)  01772C(R)  017772(R)  017892(R)  01789F(W)  0178C5(W)  0178CA(R)  0178E3(W)  017A52(W)  017F71(R)  017F94(W)  01A606(R)  01C842(R)  01C8A4(R)  01E05B(Wi) 01E5CE(W)  01E62B(W)  01E681(W)  01E766(W)  01F212(R)  
ram_prev_player_state_1                 = $0402 ; 0160FC(W)  016205(R)  01620A(W)  016237(R)  016249(W)  0162B0(R)  0162C9(W)  016320(R)  016338(W)  016381(W)  0163ED(R)  0163F2(W)  016414(R)  01642C(W)  01648F(W)  0164C1(R)  0164C6(W)  016582(R)  016594(W)  0165C5(W)  016608(R)  01660D(W)  01663E(W)  016A9E(W)  01736D(W)  017448(R)  017461(W)  017556(R)  01756E(W)  0175F7(R)  0175FC(W)  017619(R)  017631(W)  0176AD(R)  0176B2(W)  017A55(W)  01E05B(Wi) 



; player position
ram_pos_X_fr_player                     = $0403 ; 011E83(R)  01592E(R)  0167AF(R)  0168D8(R)  0170B8(R)  0170BB(W)  017A30(W)  01E05B(Wi) 01E6AE(W)  
ram_pos_X_lo_player                     = $0404 ; 010948(R)  010BE0(R)  010CEB(R)  010D00(R)  010D21(R)  011006(R)  01101A(R)  011199(R)  01135D(R)  0113BF(R)  011E7E(R)  014871(R)  01488A(R)  014C4A(R)  014C52(R)  014C72(R)  014D42(R)  015719(R)  0158D7(R)  015933(R)  01651B(R)  0166A8(R)  01672C(R)  0167A9(R)  0168DD(R)  01695A(R)  01696E(R)  016A48(R)  016A76(R)  016D54(R)  016F5E(R)  01700A(R)  017067(R)  017080(R)  01708F(R)  0170AA(R)  0170C1(R)  0170C4(W)  01716F(R)  0171CA(R)  017298(R)  0172B0(R)  01770B(R)  01794E(R)  0179A8(R)  017A02(R)  017B34(R)  017B74(R)  017C6F(R)  017C7E(R)  01A2A6(R)  01A48B(R)  01A60D(R)  01B780(R)  01B79D(R)  01B7A4(R)  01B7AA(R)  01B7D7(R)  01B7E1(R)  01B7EC(R)  01B9F9(R)  01BA16(R)  01BC0A(R)  01C75E(R)  01C7B6(R)  01C869(R)  01D6E4(R)  01DDC5(W)  01E05B(Wi) 01E5C3(W)  01E620(W)  01E69E(W)  01E8B5(R)  01FB56(R)  
ram_pos_X_hi_player                     = $0405 ; 011E79(R)  015938(R)  016520(R)  0166B0(R)  016734(R)  0167A3(R)  0168E2(R)  016963(R)  016977(R)  016A7C(R)  016D5C(R)  016F66(R)  017012(R)  0170CA(R)  0170CD(W)  017174(R)  0171CF(R)  0172A0(R)  0172B8(R)  017954(R)  01DDD5(W)  01E05B(Wi) 01E5C8(W)  01E625(W)  01E6B1(W)  



; player position
ram_pos_Y_fr_player                     = $0406 ; 011E95(R)  01593D(R)  0165E4(R)  0165EA(W)  0167C1(R)  0168C4(R)  01710A(R)  01710D(W)  017A36(W)  01E05B(Wi) 01E6B4(W)  0
ram_pos_Y_lo_player                     = $0407 ; 0111A9(R)  011E8D(R)  014143(R)  014494(R)  014AA2(R)  014AB8(R)  015942(R)  016525(R)  0165ED(R)  0165F2(W)  016697(R)  01673D(R)  0167BB(R)  0168C9(R)  01697F(R)  016A60(R)  016A82(R)  016D42(R)  016D9D(R)  016DAF(W)  016F2A(R)  016F4C(R)  016FC3(R)  016FE8(R)  016FF3(R)  0170E6(R)  017113(R)  017116(W)  017130(R)  017160(R)  0171C0(R)  0171ED(R)  0171FF(W)  017289(R)  017710(R)  01795B(R)  017A12(R)  017A19(R)  017A2A(W)  017B47(R)  017B6A(R)  017C5C(R)  017E79(R)  01A2B9(R)  01A2C6(R)  01A491(R)  01A612(R)  01B7FB(R)  01C797(R)  01C852(R)  01DDCD(W)  01E05B(Wi) 01E5BE(W)  01E61B(W)  01E6A6(W)  01E8BB(R)  01FB5B(R)  
ram_pos_Y_hi_player                     = $0408 ; 011E88(R)  015947(R)  01652A(R)  01669F(R)  016745(R)  0167B5(R)  0168D1(R)  016988(R)  016A58(R)  016A88(R)  016D47(R)  016F51(R)  016FFB(R)  01711C(R)  01711F(W)  017168(R)  0171C5(R)  017291(R)  017972(R)  01DDD8(W)  01E05B(Wi) 01E5CB(W)  01E628(W)  01E6B7(W)  



; 
ram_0409_spr_data_ptr_lo                = $0409 ; 016ADB(W)  016EFF(W)  01E05B(Wi) 01FB81(R)  
ram_040A_spr_data_ptr_hi                = $040A ; 016AE1(W)  016F05(W)  01E05B(Wi) 01FB86(R)  



; 
ram_040B_player_state_data_ptr_lo       = $040B ; 016AB4(R)  016AE6(W)  016EE0(W)  01E05B(Wi) 01FB67(R)  
ram_040C_player_state_data_ptr_hi       = $040C ; 016AB9(R)  016AEB(W)  016EE8(W)  01E05B(Wi) 01FB6C(R)  



; player animation delay until next animation
ram_player_animation_timer              = $040D ; 016AA5(W)  016AD5(W)  016EF9(W)  01E05B(Wi) 



; handler 0x016EBF
; see con_040E_plr_state
ram_player_state_2                      = $040E ; 016129(R)  01620F(W)  01624E(W)  0162CE(W)  01633D(W)  016386(W)  0163A3(W)  0163DB(R)  0163F7(W)  016431(W)  01648A(W)  0164CB(W)  016502(R)  016514(R)  01653A(W)  016553(W)  016599(W)  016612(W)  016C72(W)  016CA9(W)  016D0A(W)  016DC6(W)  016E42(W)  016E63(W)  016E8E(W)  016EBF(R)  017209(W)  017466(W)  0174DB(W)  017521(W)  017578(W)  0175B0(W)  017601(W)  01763B(W)  017652(W)  0176B7(W)  017860(W)  0178C2(W)  017A58(W)  017F99(W)  01C83B(R)  01DDDD(W)  01E05B(Wi) 01E5D1(W)  01E62E(W)  01E686(W)  01E769(W)  



; player speed
ram_spd_X_fr_player                     = $040F ; 016269(W)  016280(W)  016473(W)  01657C(W)  01666D(W)  016703(R)  016E10(W)  017054(R)  01706E(R)  017096(R)  0170B4(R)  017A78(R)  017A7B(W)  017ED9(R)  017EDF(W)  01E05B(Wi) 
ram_spd_X_lo_player                     = $0410 ; 016263(W)  01627A(W)  0162E7(W)  016460(W)  016576(W)  016670(W)  016700(R)  01670F(R)  016E0A(W)  017051(R)  017073(R)  01709B(R)  0170BE(R)  01747F(W)  017A81(R)  017A84(W)  017EE2(R)  017EE7(W)  01E05B(Wi) 
ram_spd_X_hi_player                     = $0411 ; 01625D(W)  016274(W)  0162F2(W)  016467(W)  01646E(W)  016570(W)  016673(W)  016706(R)  016E04(W)  017057(R)  01705C(R)  0170C7(R)  01748A(W)  017A8F(W)  017EEA(R)  017EEF(W)  01E05B(Wi) 



; player speed Y (gravity)
ram_spd_Y_fr_player                     = $0412 ; 016662(W)  016679(W)  016B56(W)  0170D3(R)  0170ED(R)  017106(R)  017137(R)  017A96(R)  017A99(W)  01E05B(Wi) 
ram_spd_Y_lo_player                     = $0413 ; 016665(W)  01667C(W)  016B5C(W)  0170D0(R)  0170F2(R)  017110(R)  01713C(R)  017A9F(R)  017AA2(W)  01E05B(Wi) 
ram_spd_Y_hi_player                     = $0414 ; 016668(W)  01667F(W)  016B67(W)  0170D6(R)  0170DB(R)  017119(R)  017AAD(W)  01E05B(Wi) 



; 
ram_0415_player_counter                 = $0415 ; 0160FF(W)  016149(W)  0163B7(W)  0165C8(W)  016B40(W)  016B45(R)  016B4E(W)  016B7F(R)  016B90(W)  016B93(W)  016C23(R)  016CDC(R)  016D25(R)  016F93(W)  016FE1(R)  01702B(W)  0171B4(R)  017370(W)  0173B3(W)  0178DE(W)  0179EF(R)  01E05B(Wi) 01E67C(W)  01E77B(W)  



; see con_0416
ram_0416_player_flags                   = $0416 ; 0161ED(R)  0161F4(R)  0161F7(W)  0161FF(W)  01621E(R)  01629E(W)  0163D0(W)  01647B(W)  0165AD(W)  016762(W)  01721D(R)  017235(R)  01723A(R)  017248(R)  01725B(R)  01725E(W)  017271(W)  017278(W)  0172E7(W)  017764(R)  01E05B(Wi) 



; 
ram_0417_player_counter                 = $0417 ; 0161FA(R)  0162A1(W)  01647E(W)  0165B0(W)  016765(W)  017241(R)  01727D(W)  017280(R)  017285(W)  0172EA(W)  01E05B(Wi) 



; 
ram_0418_player_counter                 = $0418 ; 0162A4(W)  016481(W)  01659F(R)  0165A7(W)  016768(W)  017256(W)  01E05B(Wi) 



; 
ram_0419_temp                           = $0419 ; 016104(W)  016456(W)  0164D8(W)  0164F4(W)  016558(W)  0165CD(W)  016630(R)  016635(W)  016CC4(W)  016DF2(W)  016E49(W)  017375(W)  0174F6(W)  017518(W)  01768A(W)  017874(W)  0178BD(W)  017A61(W)  017F8F(W)  01E05B(Wi) 01E6CD(W)  01E772(W)  
    ram_0419_t01_player_stun_timer          = ram_0419_temp ; 
    ram_0419_t02_player_timer               = ram_0419_temp ; 
    ram_0419_t03_player_land_timer          = ram_0419_temp ; how long before you can move after landing
    ram_0419_t04_player_shield_launch_timer = ram_0419_temp ; 
    ram_0419_t05_player_timer               = ram_0419_temp ; 
    
    ram_0419_tFB_useless                    = ram_0419_temp ; bzk optimize
    ram_0419_tFC_useless                    = ram_0419_temp ; bzk optimize
    ram_0419_tFD_useless                    = ram_0419_temp ; bzk optimize
    ram_0419_tFE_useless                    = ram_0419_temp ; bzk optimize
    ram_0419_tFF_useless                    = ram_0419_temp ; bzk optimize



; counts for how long your player is in the air
; used for Captain to perform a somersault if long enough
ram_player_jump_timer                   = $041A ; 016107(W)  0165D0(W)  016B96(W)  016C2A(R)  016C5D(R)  017378(W)  01E05B(Wi) 01E6D0(W)  01E775(W)  



; see con_041B_flag
ram_041B_player_flags                   = $041B ; 01610A(W)  01614E(W)  016217(W)  016288(W)  0163BC(W)  0163FF(W)  016452(W)  016478(W)  0164EA(W)  01650D(R)  0165D3(W)  01661A(W)  016B70(R)  016B77(R)  016B7C(W)  016B86(R)  016B8B(W)  016C1C(R)  016C31(R)  016C41(R)  016C44(W)  016C4F(R)  016C56(R)  016C64(R)  016C69(W)  016C85(R)  016CA1(R)  016CA4(W)  016CC9(R)  016CCE(W)  016CD5(R)  016CEA(R)  016CFE(R)  016D01(W)  016D13(R)  016D18(W)  016D67(R)  016DBD(R)  016DD4(R)  016E4E(R)  016E69(R)  016E6E(W)  016E72(R)  016E79(R)  016F3E(R)  016FA0(W)  017033(R)  01703C(R)  01703F(W)  01737B(W)  0174B2(R)  0174CE(R)  0174D1(W)  0174FB(R)  017500(W)  01767E(W)  0176BF(W)  0178E8(W)  0179BA(R)  0179BF(W)  017EBF(R)  01E05B(Wi) 01E6D3(W)  01E778(W)  



; 
ram_041C_player_timer                   = $041C ; 01610D(W)  016140(W)  016311(R)  016316(W)  0163B2(W)  0165D6(W)  016D36(R)  0171BB(R)  01737E(W)  0173AA(W)  0174A6(R)  0174AB(W)  01786F(W)  0178D9(W)  01E05B(Wi) 01E6D6(W)  



; 
ram_041D_player_timer                   = $041D ; 016399(W)  01655F(R)  016564(W)  0165BE(W)  017251(W)  01E05B(Wi) 01E6D9(W)  



; ...x xxxx (1F) = 
; ..x. .... (20) = 
; .x.. .... (40) = 
; x... .... (80) = 
ram_041E_player_flags                   = $041E ; 016AF7(W)  016F11(W)  0176D4(R)  017704(R)  017720(R)  017733(R)  01776B(R)  01C78D(R)  01E05B(Wi) 



; todo
; .... ...x (01) = left?
; .... ..x. (02) = right?
; .... .x.. (04) = stage complete?
; .... x... (08) = map?
; ...x .... (10) = dead 0x0178B3
; ..x. .... (20) = taking damage midair?
; .x.. .... (40) = invincibility?
; x... .... (80) = stun?
ram_041F_player_flags                   = $041F ; 016028(R)  0160B9(R)  01622C(R)  016231(W)  0162BB(R)  0162D7(R)  0162DE(R)  016307(R)  01635D(R)  016362(W)  016495(R)  01649A(W)  0164DD(R)  0164E2(W)  016547(R)  016628(R)  01662D(W)  016A8E(R)  016B37(R)  016D2F(R)  016DB5(R)  016DBA(W)  016E31(R)  0172ED(R)  01732A(R)  017453(R)  01746F(R)  017476(R)  01749C(R)  0176CD(R)  0178EF(W)  0178F3(R)  017916(W)  017A48(R)  017A4D(W)  017E67(R)  017E80(R)  017E87(R)  017E8C(W)  017EA1(R)  017EAD(R)  017EB2(W)  017EF8(R)  01A29B(R)  01A4CF(R)  01A732(W)  01C76B(R)  01DE21(R)  01DE3B(R)  01E05B(Wi) 01E4CD(W)  01E6DE(W)  01F1F2(R)  01F221(R)  01FF4E(R)  



; free addresses
; ram_0420                              = $0420 ; 01E05B(Wi) 
; ram_0421                              = $0421 ; 01E05B(Wi) 



; +01 = 
; +80 = 
ram_0422_flag                           = $0422 ; 010FD4(R)  0167E3(R)  0167E6(W)  0167FB(W)  016A97(W)  016B33(W)  0174D4(R)  017571(R)  017634(R)  017BA2(R)  017C1A(W)  017CC0(W)  017DC5(W)  01809E(W)  019504(W)  01B954(R)  01E05B(Wi) 01E56B(W)  01E6E8(W)  01E8C6(W)  01E93B(W)  01FB9B(R)  



; a copy of ram_hawk_power
ram_copy_hawk_power                     = $0423 ; 017BA7(R)  017BF7(R)  017CB8(W)  017CE1(R)  017DA2(R)  01E05B(Wi) 



; 
ram_pos_X_fr_shield                     = $0424 ; 0167B2(W)  0168B5(R)  0169AC(R)  0169B3(W)  017C89(W)  01E05B(Wi) 
ram_pos_X_lo_shield                     = $0425 ; 0167AC(W)  0168BA(R)  016960(W)  016974(W)  0169B6(R)  0169BC(W)  016A4F(R)  016A79(W)  017BDE(R)  017BFE(R)  017C26(R)  017C36(R)  017C75(W)  017C81(W)  017D61(R)  017D81(R)  017DA9(R)  017E1A(R)  017E38(R)  01B971(R)  01DDC8(W)  01E05B(Wi) 01E6A1(W)  01E8B8(W)  01FBAF(R)  01FBBA(R)  01FC17(R)  01FC1A(W)  
ram_pos_X_hi_shield                     = $0426 ; 0167A6(W)  0168BF(R)  016968(W)  01697C(W)  0169BF(R)  0169C4(W)  016A7F(W)  017BD1(R)  017C21(R)  017C86(W)  017D2E(R)  017DD6(R)  01DC78(W)  01E05B(Wi) 01E8C9(W)  01FBA7(R)  01FC1D(R)  01FC22(W)  



; 
ram_pos_Y_fr_shield                     = $0427 ; 0167C4(W)  0168A6(R)  0169DC(R)  0169E3(W)  017C8F(W)  01E05B(Wi) 
ram_pos_Y_lo_shield                     = $0428 ; 0167BE(W)  0168AB(R)  016985(W)  0169E6(R)  0169EC(W)  016A64(R)  016A85(W)  017BE3(R)  017C03(R)  017C31(R)  017C63(W)  017D74(R)  017D86(R)  017DAE(R)  017E2B(R)  017E3D(R)  01B95A(R)  01DDD0(W)  01E05B(Wi) 01E6A9(W)  01E8BE(W)  01FBBF(R)  01FC06(R)  01FC09(W)  
ram_pos_Y_hi_shield                     = $0429 ; 0167B8(W)  0168B0(R)  01698D(W)  0169EF(R)  0169F4(W)  016A5B(R)  016A8B(W)  017BD4(R)  017C1E(R)  017C8C(W)  017D31(R)  017DD9(R)  01DC7B(W)  01E05B(Wi) 01E8CC(W)  01FBAA(R)  01FC0C(R)  01FC11(W)  



; 
ram_042A_spr_data_ptr_lo                = $042A ; 016949(W)  016A38(W)  016B1C(W)  017D10(W)  01E05B(Wi) 01FBE5(R)  
ram_042B_spr_data_ptr_hi                = $042B ; 01694F(W)  016A3E(W)  016B22(W)  017D16(W)  01E05B(Wi) 01FBEA(R)  



; 
ram_042C_ptr_lo                         = $042C ; 01692F(W)  016A0B(R)  016A1B(W)  016B28(W)  017D1B(W)  01E05B(Wi) 01FBCB(R)  
ram_042D_ptr_hi                         = $042D ; 016934(W)  016A10(R)  016A23(W)  016B2E(W)  017D20(W)  01E05B(Wi) 01FBD0(R)  



; 
ram_042E_player_timer                   = $042E ; 016943(W)  0169F8(R)  0169FD(W)  016A32(W)  017D0A(W)  01E05B(Wi) 



; handlers at 0x016795
ram_042F_shield_script                  = $042F ; 010FDB(R)  016783(R)  0167DE(W)  016824(W)  01686B(R)  016872(W)  016891(W)  016A73(W)  016B05(R)  016CF7(R)  017F6C(R)  017F80(W)  01C783(R)  01E05B(Wi) 01E6E5(W)  01E8C3(W)  01F215(R)  



; shield/arrow
ram_0430_pos_X_fr_projectile            = $0430 ; 0167C9(W)  016809(W)  016842(W)  016856(W)  0168FA(W)  016997(R)  0169B0(R)  017CA8(W)  01E05B(Wi) 
ram_0431_pos_X_lo_projectile            = $0431 ; 0167CC(W)  01680F(W)  01684A(W)  01685E(W)  0168F5(W)  01699A(R)  01699F(R)  0169B9(R)  017CA3(W)  01B96C(R)  01E05B(Wi) 



; shield/arrow
ram_0432_pos_Y_fr_projectile            = $0432 ; 0167CF(W)  016814(W)  016904(W)  0169C7(R)  0169E0(R)  017CB2(W)  01E05B(Wi) 
ram_0433_pos_Y_lo_projectile            = $0433 ; 0167D2(W)  016817(W)  0168FF(W)  0169CA(R)  0169CF(R)  0169E9(R)  017CAD(W)  01E05B(Wi) 



; 
ram_0434_shield_fly_timer               = $0434 ; 0167D9(W)  0167EB(W)  0167FE(W)  01682D(W)  016830(R)  01688C(W)  017527(W)  0175B6(W)  01765A(W)  017C57(R)  017F85(W)  01E05B(Wi) 



; 
ram_0435_shield_fly_direction           = $0435 ; 016803(R)  016837(R)  016882(R)  016887(W)  01691E(R)  016955(R)  017532(W)  01753D(W)  0175C1(W)  0175CA(W)  017662(W)  017C96(R)  017CF0(R)  017F8A(W)  01E05B(Wi) 



; while timer is counting down,
; shield can't hit capsule again
ram_0436_shield_capsule_hit_delay_timer = $0436 ; 0167D5(W)  017E03(R)  017E0F(W)  017E12(W)  01E05B(Wi) 



; free addresses
; ram_0437                              = $0437 ; 01E05B(Wi) 
; ram_0438                              = $0438 ; 01E05B(Wi) 
; ram_0439                              = $0439 ; 01E05B(Wi) 



; also starting address for clearing RAM at 0x0181F4
; ...x .... (10) = ???
; ..x. .... (20) = player is tanding on platform?
; .x.. .... (40) = ???
; x... .... (80) = exist?
ram_043A_obj_flags                      = $043A ; 0181F4(Wx) 01A0E7(Rx) 01A18F(Wx) 01A19F(Rx) 01A266(Rx) 01A277(Rx) 01A27C(Wx) 01A296(Wx) 01A2EC(Wx) 01E05B(Wi) 01E941(Wx) 01FC34(Rx) 
; ram_043B                              = $043B ; 0181F4(Wx) 019509(Wx) 01A0E7(Rx) 01A18F(Wx) 01A19F(Rx) 01A266(Rx) 01A277(Rx) 01A27C(Wx) 01A296(Wx) 01A2EC(Wx) 01E05B(Wi) 01E941(Wx) 01FC34(Rx) 
; ram_043C                              = $043C ; 0181F4(Wx) 019509(Wx) 01A0E7(Rx) 01A18F(Wx) 01A19F(Rx) 01A266(Rx) 01A277(Rx) 01A27C(Wx) 01A296(Wx) 01A2EC(Wx) 01E05B(Wi) 01E941(Wx) 01FC34(Rx) 
; ram_043D                              = $043D ; 010034(Rx) 010144(Rx) 010149(Wx) 010198(Rx) 010880(Rx) 0109AA(Rx) 010D76(Rx) 010E44(Rx) 010EE7(Wx) 0112B9(Rx) 0112F5(Wx) 01131A(Rx) 011387(Rx) 01138C(Wx) 011432(Rx) 011446(Rx) 011507(Rx) 01150E(Wx) 011515(Rx) 011518(Wx) 011521(Rx) 011526(Wx) 01156F(Rx) 011572(Wx) 0115A1(Rx) 0115A4(Wx) 011644(Rx) 011C13(Ry) 013E5A(Rx) 013F61(Rx) 0141FF(Rx) 015C12(W)  015C34(R)  015F04(W)  016118(Rx) 01611D(Wx) 017389(Rx) 01738E(Wx) 0176E1(Rx) 0176F0(Rx) 01799B(Rx) 0179C2(Rx) 0179C7(Wx) 0179D3(Rx) 017A39(Rx) 017A3E(Wx) 017B0D(Rx) 017D3A(Rx) 017DE2(Rx) 0181A7(Wx) 0181F4(Wx) 018374(Rx) 018B4E(Rx) 018B77(Wx) 019509(Wx) 01B989(Rx) 01B9A1(Wx) 01BAF2(Wx) 01BCDB(Rx) 01BCE0(Wx) 01BD7E(Rx) 01BD81(Wx) 01CB9E(Rx) 01CC63(Wx) 01D6D9(Rx) 01D74C(R)  01DD6B(W)  01DDF6(W)  01E05B(Wi) 01E941(Wx) 01F35D(R)  01FC34(Rx) 01FE90(R)  
; ram_043E                              = $043E ; 010034(Rx) 010144(Rx) 010149(Wx) 010198(Rx) 0106A4(R)  010880(Rx) 0109AA(Rx) 010D76(Rx) 010E44(Rx) 010EE7(Wx) 0112B9(Rx) 0112F5(Wx) 01131A(Rx) 011387(Rx) 01138C(Wx) 011432(Rx) 011446(Rx) 011507(Rx) 01150E(Wx) 011515(Rx) 011518(Wx) 011521(Rx) 011526(Wx) 01156F(Rx) 011572(Wx) 0115A1(Rx) 0115A4(Wx) 011644(Rx) 0116FA(Rx) 011C13(Ry) 013E5A(Rx) 013F61(Rx) 0141FF(Rx) 0150CE(W)  016118(Rx) 01611D(Wx) 017389(Rx) 01738E(Wx) 0176E1(Rx) 0176F0(Rx) 01799B(Rx) 0179C2(Rx) 0179C7(Wx) 0179D3(Rx) 017A39(Rx) 017A3E(Wx) 017B0D(Rx) 017D3A(Rx) 017DE2(Rx) 0181A7(Wx) 0181F4(Wx) 018374(Rx) 019509(Wx) 01B989(Rx) 01B9A1(Wx) 01BAF2(Wx) 01CB9E(Rx) 01CC63(Wx) 01E05B(Wi) 01E941(Wx) 01FC34(Rx) 
; ram_043F                              = $043F ; 010034(Rx) 010144(Rx) 010149(Wx) 010198(Rx) 010880(Rx) 0109AA(Rx) 010D76(Rx) 010E44(Rx) 010EE7(Wx) 0112B9(Rx) 0112F5(Wx) 01131A(Rx) 011387(Rx) 01138C(Wx) 011432(Rx) 011507(Rx) 01150E(Wx) 011515(Rx) 011518(Wx) 011521(Rx) 011526(Wx) 01156F(Rx) 011572(Wx) 0115A1(Rx) 0115A4(Wx) 011C13(Ry) 013E5A(Rx) 013F61(Rx) 0141FF(Rx) 016118(Rx) 01611D(Wx) 017389(Rx) 01738E(Wx) 0176E1(Rx) 0176F0(Rx) 01799B(Rx) 0179C2(Rx) 0179C7(Wx) 0179D3(Rx) 017A39(Rx) 017A3E(Wx) 017B0D(Rx) 017D3A(Rx) 017DE2(Rx) 0181F4(Wx) 018374(Rx) 0184AC(W)  018500(W)  01850F(R)  01851A(W)  0187DB(W)  019509(Wx) 01B989(Rx) 01B9A1(Wx) 01BAF2(Wx) 01CB9E(Rx) 01CC63(Wx) 01E05B(Wi) 01E941(Wx) 01FC34(Rx) 
; ram_0440                              = $0440 ; 010034(Rx) 010144(Rx) 010149(Wx) 010198(Rx) 010880(Rx) 0109AA(Rx) 010D76(Rx) 010E44(Rx) 010EE7(Wx) 0112B9(Rx) 0112F5(Wx) 01131A(Rx) 011387(Rx) 01138C(Wx) 011432(Rx) 011446(Rx) 011507(Rx) 01150E(Wx) 011515(Rx) 011518(Wx) 011521(Rx) 011526(Wx) 01156F(Rx) 011572(Wx) 011C13(Ry) 013E5A(Rx) 013F61(Rx) 0141FF(Rx) 016118(Rx) 01611D(Wx) 0176E1(Rx) 0176F0(Rx) 01799B(Rx) 0179C2(Rx) 0179C7(Wx) 0179D3(Rx) 017A39(Rx) 017A3E(Wx) 017B0D(Rx) 017D3A(Rx) 017DE2(Rx) 0181F4(Wx) 018374(Rx) 019509(Wx) 01B989(Rx) 01B9A1(Wx) 01BAF2(Wx) 01CB9E(Rx) 01CC63(Wx) 01E05B(Wi) 01E941(Wx) 01FC34(Rx) 
; ram_0441                              = $0441 ; 011785(Rx) 0117F1(Wx) 011BEF(Rx) 011DD4(Wx) 011F70(Rx) 011F73(Wx) 011FD8(Wx) 011FF0(Wx) 01424E(Rx) 014264(Rx) 01597A(Rx) 0181F4(Wx) 018253(Wx) 0182E4(Wx) 0182F4(Rx) 018394(Rx) 018A20(Ry) 0194F3(W)  019509(Wx) 019696(Wx) 019DF8(Rx) 01BAF2(Wx) 01BED9(Wx) 01C829(Wx) 01E05B(Wi) 01E941(Wx) 01FC34(Rx) 
; ram_0442                              = $0442 ; 011785(Rx) 0117F1(Wx) 011BEF(Rx) 011DD4(Wx) 011F70(Rx) 011F73(Wx) 01424E(Rx) 014264(Rx) 01597A(Rx) 0159FB(Rx) 0181F4(Wx) 018253(Wx) 0182E4(Wx) 0182F4(Rx) 018394(Rx) 018A20(Ry) 019509(Wx) 019696(Wx) 019DF8(Rx) 01BAF2(Wx) 01BED9(Wx) 01C829(Wx) 01E05B(Wi) 01E941(Wx) 01FC34(Rx) 
; ram_0443                              = $0443 ; 011785(Rx) 0117F1(Wx) 011BEF(Rx) 011DD4(Wx) 01424E(Rx) 014264(Rx) 01597A(Rx) 0159FB(Rx) 0181F4(Wx) 018253(Wx) 0182E4(Wx) 0182F4(Rx) 018394(Rx) 018A20(Ry) 019509(Wx) 019696(Wx) 019DF8(Rx) 01BAF2(Wx) 01BED9(Wx) 01C829(Wx) 01E05B(Wi) 01E941(Wx) 01FC34(Rx) 
; ram_0444                              = $0444 ; 011785(Rx) 0117F1(Wx) 011BEF(Rx) 011DD4(Wx) 01424E(Rx) 014264(Rx) 01597A(Rx) 0159FB(Rx) 0181F4(Wx) 019509(Wx) 019696(Wx) 019DF8(Rx) 01BAF2(Wx) 01BED9(Wx) 01C829(Wx) 01E05B(Wi) 01E941(Wx) 01FC34(Rx) 
; ram_0445                              = $0445 ; 011785(Rx) 0117F1(Wx) 011BEF(Rx) 011DD4(Wx) 01424E(Rx) 014264(Rx) 01597A(Rx) 0181F4(Wx) 019509(Wx) 019DF8(Rx) 01BAF2(Wx) 01BED9(Wx) 01E05B(Wi) 01E941(Wx) 01FC34(Rx) 
; ram_0446                              = $0446 ; 011785(Rx) 0117F1(Wx) 011BEF(Rx) 011DD4(Wx) 0181F4(Wx) 019509(Wx) 019DF8(Rx) 01E05B(Wi) 01E941(Wx) 01FC34(Rx) 



; handler at 0x01A31E
; see con_drop
ram_obj_drop_id                         = $0447 ; 0181F4(Wx) 019509(Wx) 01A106(Wx) 01A31E(Rx) 01E05B(Wi) 01FC34(Rx) 
; ram_0448                              = $0448 ; 0181F4(Wx) 01A106(Wx) 01A31E(Rx) 01E05B(Wi) 01FC34(Rx) 
; ram_0449                              = $0449 ; 0181F4(Wx) 01A106(Wx) 01A31E(Rx) 01E05B(Wi) 01FC34(Rx) 



; handlers at 0x01006A
; ..xx xxxx = (3F) id
; .xxx xxxx = (7F) id (???)
; xx.. .... (C0) = 
; x... .... (80) = 
; see con_enemy_id
ram_obj_id                              = $044A ; 01006A(Rx) 01011E(Rx) 010224(Rx) 0102CF(Rx) 0103FD(Rx) 010407(Rx) 01041A(Rx) 010459(Rx) 010490(Rx) 0104A3(Rx) 0104B7(Rx) 0104EA(Rx) 010574(Rx) 01059D(Rx) 0105B6(Rx) 0105D6(W)  0105FD(Rx) 010620(Rx) 010630(Rx) 01063B(Wx) 010699(Rx) 0106BF(Rx) 0106E8(Rx) 010708(Rx) 01075D(Rx) 010780(Rx) 01079B(Rx) 0107D8(Rx) 0107F6(Rx) 0107FE(Rx) 010845(Rx) 010875(Rx) 01088B(Rx) 0108B0(Rx) 01093C(Rx) 010945(Wx) 010977(Rx) 0109DD(Rx) 010A03(Rx) 010A5C(Rx) 010AB1(Rx) 010AC4(Rx) 010AF8(Rx) 010BC6(Rx) 010BFC(Rx) 010C7D(Rx) 010DDC(Rx) 010E20(Rx) 010E49(Rx) 010F26(Rx) 011118(Rx) 0111D3(Rx) 01125F(Rx) 01134A(Rx) 01138F(Rx) 0113A8(Rx) 01143F(Rx) 0114E7(Rx) 01152C(Rx) 01155C(Rx) 01164B(Wx) 01169A(Rx) 0118C1(Ry) 011902(Ry) 011C18(Ry) 015F14(W)  017743(Rx) 017823(Rx) 017F1C(Rx) 0181E6(Wx) 0181F4(Wx) 0184D3(Rx) 018580(Rx) 018585(Wx) 018757(R)  01898A(Rx) 01898F(Wx) 018ABB(Wx) 01A505(R)  01B9A7(Wx) 01BA71(Rx) 01CB5A(Wx) 01CB83(Rx) 01CB97(Rx) 01CBA3(Rx) 01CBF7(Rx) 01CCCD(Rx) 01D710(Wx) 01E05B(Wi) 01FC34(Rx) 
; ram_044B                              = $044B ; 01006A(Rx) 01011E(Rx) 010224(Rx) 0102CF(Rx) 0103FD(Rx) 010407(Rx) 01041A(Rx) 010459(Rx) 010490(Rx) 0104A3(Rx) 0104B7(Rx) 0104EA(Rx) 010574(Rx) 01059D(Rx) 0105B6(Rx) 0105FD(Rx) 010620(Rx) 010630(Rx) 010699(Rx) 0106A9(R)  0106BF(Rx) 0106E8(Rx) 010708(Rx) 01075D(Rx) 010780(Rx) 01079B(Rx) 0107D8(Rx) 0107F6(Rx) 0107FE(Rx) 010845(Rx) 010875(Rx) 01088B(Rx) 0108B0(Rx) 01093C(Rx) 010945(Wx) 010977(Rx) 0109DD(Rx) 010A03(Rx) 010BFC(Rx) 010C7D(Rx) 010DDC(Rx) 010E20(Rx) 010E49(Rx) 010F26(Rx) 011118(Rx) 011186(Rx) 0111D3(Rx) 01125F(Rx) 01134A(Rx) 01138F(Rx) 0113A8(Rx) 01143F(Rx) 0114E7(Rx) 01152C(Rx) 01155C(Rx) 01164B(Wx) 01169A(Rx) 011710(Wx) 0118C1(Ry) 011902(Ry) 011C18(Ry) 017743(Rx) 017823(Rx) 017F1C(Rx) 0181E6(Wx) 0181F4(Wx) 0184D3(Rx) 018580(Rx) 018585(Wx) 018777(R)  01898A(Rx) 01898F(Wx) 01B9A7(Wx) 01BA71(Rx) 01CB5A(Wx) 01CB83(Rx) 01CB97(Rx) 01CBA3(Rx) 01CBF7(Rx) 01CCCD(Rx) 01E05B(Wi) 01FC34(Rx) 
; ram_044C                              = $044C ; 01006A(Rx) 01011E(Rx) 010224(Rx) 0102CF(Rx) 0103FD(Rx) 010407(Rx) 01041A(Rx) 010459(Rx) 010490(Rx) 0104A3(Rx) 0104B7(Rx) 0104EA(Rx) 010574(Rx) 01059D(Rx) 0105B6(Rx) 0105FD(Rx) 010620(Rx) 010630(Rx) 010699(Rx) 0106BF(Rx) 0106E8(Rx) 010708(Rx) 01075D(Rx) 010780(Rx) 01079B(Rx) 0107D8(Rx) 0107F6(Rx) 0107FE(Rx) 010845(Rx) 010875(Rx) 01088B(Rx) 0108B0(Rx) 01093C(Rx) 010945(Wx) 010977(Rx) 0109DD(Rx) 010A03(Rx) 010A44(Rx) 010A5C(Rx) 010AB1(Rx) 010AC4(Rx) 010AF8(Rx) 010BC6(Rx) 010BFC(Rx) 010C7D(Rx) 010DDC(Rx) 010E20(Rx) 010E49(Rx) 010F26(Rx) 011118(Rx) 011186(Rx) 01125F(Rx) 01134A(Rx) 01138F(Rx) 0113A8(Rx) 01143F(Rx) 0114E7(Rx) 01152C(Rx) 01155C(Rx) 0118C1(Ry) 011902(Ry) 011C18(Ry) 017743(Rx) 017823(Rx) 017F1C(Rx) 0181E6(Wx) 0181F4(Wx) 01B9A7(Wx) 01BA71(Rx) 01CB5A(Wx) 01CB83(Rx) 01CB97(Rx) 01CBA3(Rx) 01CBF7(Rx) 01CCCD(Rx) 01E05B(Wi) 01FC34(Rx) 
; ram_044D                              = $044D ; 01006A(Rx) 01011E(Rx) 010224(Rx) 0102CF(Rx) 0103FD(Rx) 010407(Rx) 01041A(Rx) 010459(Rx) 010490(Rx) 0104A3(Rx) 0104B7(Rx) 0104EA(Rx) 010574(Rx) 01059D(Rx) 0105B6(Rx) 0105FD(Rx) 010620(Rx) 010630(Rx) 010699(Rx) 0106BF(Rx) 0106E8(Rx) 010708(Rx) 01075D(Rx) 010780(Rx) 01079B(Rx) 0107D8(Rx) 0107F6(Rx) 0107FE(Rx) 010845(Rx) 010875(Rx) 01088B(Rx) 0108B0(Rx) 01093C(Rx) 010977(Rx) 010A44(Rx) 010A5C(Rx) 010AB1(Rx) 010AC4(Rx) 010AF8(Rx) 010BC6(Rx) 010BFC(Rx) 010C7D(Rx) 010DDC(Rx) 010E20(Rx) 010E49(Rx) 010F26(Rx) 011118(Rx) 011186(Rx) 01125F(Rx) 01134A(Rx) 01138F(Rx) 0113A8(Rx) 01143F(Rx) 0114E7(Rx) 01152C(Rx) 01155C(Rx) 0118C1(Ry) 011902(Ry) 011C18(Ry) 017743(Rx) 017823(Rx) 017F1C(Rx) 0181F4(Wx) 01B9A7(Wx) 01BA71(Rx) 01CB5A(Wx) 01CB83(Rx) 01CB97(Rx) 01CBA3(Rx) 01CBF7(Rx) 01CCCD(Rx) 01E05B(Wi) 01FC34(Rx) 
; ram_044E                              = $044E ; 011793(Wx) 0117D5(Rx) 011814(Rx) 011863(Rx) 01187E(Rx) 0118ED(Rx) 01190B(Wx) 01194B(Rx) 01196B(Rx) 011A1D(Rx) 011A2F(Rx) 011A71(Rx) 011ABA(Rx) 011C0C(Rx) 011C58(Rx) 011CC4(Rx) 011D36(Rx) 011DDC(Rx) 011EDD(Rx) 011F30(Rx) 011FB8(Rx) 014255(Rx) 015B9E(W)  0181F4(Wx) 01BEDF(Wx) 01C776(Rx) 01C7FC(Rx) 01C895(Rx) 01E05B(Wi) 01FC34(Rx) 
; ram_044F                              = $044F ; 011793(Wx) 0117D5(Rx) 011814(Rx) 011863(Rx) 01187E(Rx) 0118ED(Rx) 01190B(Wx) 01194B(Rx) 01196B(Rx) 011A1D(Rx) 011A2F(Rx) 011A71(Rx) 011ABA(Rx) 011C0C(Rx) 011C58(Rx) 011CC4(Rx) 011D36(Rx) 011DDC(Rx) 011EDD(Rx) 011F30(Rx) 014255(Rx) 0181F4(Wx) 01BEDF(Wx) 01C776(Rx) 01C7FC(Rx) 01C895(Rx) 01E05B(Wi) 
; ram_0450                              = $0450 ; 011793(Wx) 0117D5(Rx) 011814(Rx) 011863(Rx) 01187E(Rx) 0118ED(Rx) 01190B(Wx) 01194B(Rx) 01196B(Rx) 011A1D(Rx) 011A2F(Rx) 011A71(Rx) 011ABA(Rx) 011C0C(Rx) 011C58(Rx) 011CC4(Rx) 011D36(Rx) 011DDC(Rx) 011F30(Rx) 014255(Rx) 0181F4(Wx) 01BEDF(Wx) 01C776(Rx) 01C7FC(Rx) 01C895(Rx) 01E05B(Wi) 
; ram_0451                              = $0451 ; 011793(Wx) 0117D5(Rx) 011814(Rx) 011863(Rx) 01187E(Rx) 0118ED(Rx) 01194B(Rx) 01196B(Rx) 011A1D(Rx) 011A2F(Rx) 011A71(Rx) 011ABA(Rx) 011C0C(Rx) 011C58(Rx) 011CC4(Rx) 011DDC(Rx) 011EDD(Rx) 014255(Rx) 0181F4(Wx) 01BEDF(Wx) 01C776(Rx) 01C7FC(Rx) 01C895(Rx) 01E05B(Wi) 
; ram_0452                              = $0452 ; 011793(Wx) 0117D5(Rx) 011814(Rx) 011863(Rx) 01187E(Rx) 011A1D(Rx) 011A2F(Rx) 011A71(Rx) 011ABA(Rx) 011C0C(Rx) 011C58(Rx) 011CC4(Rx) 014255(Rx) 0181F4(Wx) 01BEDF(Wx) 01C776(Rx) 01C895(Rx) 01E05B(Wi) 
; ram_0453                              = $0453 ; 008E71(R)  008EA1(R)  008EA6(W)  008F44(R)  008FA8(W)  008FC1(R)  009025(R)  009074(R)  011793(Wx) 0117D5(Rx) 011814(Rx) 011A1D(Rx) 011A2F(Rx) 011A71(Rx) 011ABA(Rx) 011C0C(Rx) 011C58(Rx) 011CC4(Rx) 01402B(Wi) 01404C(W)  014066(R)  014072(R)  014085(R)  014FFA(R)  0159B8(R)  015BB9(W)  015C28(R)  0181F4(Wx) 018FDF(W)  018FF8(R)  018FFF(W)  019018(R)  019D81(W)  019DA7(R)  019E2D(R)  01A500(R)  01BD8F(W)  01C776(Rx) 01DE36(R)  01E05B(Wi) 
    ram_0453_t01_cutscene_index             = ram_obj_id + $09 ; +40 = ???, +80 = ???
    ram_0453_t02                            = ram_obj_id + $09 ; 



; bzk optimize, useless addresses
ram_0454_useless                        = $0454 ; 0181F4(Wx) 01A16F(Wx) 01E05B(Wi) 
; ram_0455                              = $0455 ; 0181F4(Wx) 01A16F(Wx) 01E05B(Wi) 
; ram_0456                              = $0456 ; 0181F4(Wx) 01A16F(Wx) 01E05B(Wi) 



; 
ram_pos_X_fr_obj                        = $0457 ; 010DC1(Rx) 010DC8(Wx) 0143E5(Rx) 0143E8(Wx) 015A8E(R)  017A2D(Rx) 017AC5(Rx) 017AC8(Wx) 0181F4(Wx) 0189A8(Rx) 0189AB(Wx) 018A0B(Wx) 01BAFB(Wx) 01CC2E(Wx) 01D6F8(Wx) 01E05B(Wi) 
; ram_0458                              = $0458 ; 010DC1(Rx) 010DC8(Wx) 0143E5(Rx) 0143E8(Wx) 017A2D(Rx) 017AC5(Rx) 017AC8(Wx) 0181F4(Wx) 0189A8(Rx) 0189AB(Wx) 018A0B(Wx) 01BAFB(Wx) 01CC2E(Wx) 01E05B(Wi) 
; ram_0459                              = $0459 ; 010DC1(Rx) 010DC8(Wx) 017A2D(Rx) 017AC5(Rx) 017AC8(Wx) 0181F4(Wx) 01BAFB(Wx) 01CC2E(Wx) 01E05B(Wi) 
; ram_045A                              = $045A ; 010DC1(Rx) 010DC8(Wx) 0143E5(Rx) 0143E8(Wx) 017A2D(Rx) 017AC5(Rx) 017AC8(Wx) 0181F4(Wx) 01BAFB(Wx) 01CC2E(Wx) 01E05B(Wi) 
; ram_045B                              = $045B ; 011840(Wx) 011AAB(W)  011D6D(Rx) 011D74(Wx) 011E65(Rx) 0143E5(Rx) 0143E8(Wx) 015A91(Wx) 0181F4(Wx) 01BAFB(Wx) 01E05B(Wi) 
; ram_045C                              = $045C ; 011840(Wx) 011D6D(Rx) 011D74(Wx) 011E65(Rx) 0143E5(Rx) 0143E8(Wx) 0181F4(Wx) 01BAFB(Wx) 01E05B(Wi) 
; ram_045D                              = $045D ; 011840(Wx) 011D6D(Rx) 011D74(Wx) 0143E5(Rx) 0143E8(Wx) 0181F4(Wx) 01BAFB(Wx) 01E05B(Wi) 
; ram_045E                              = $045E ; 011840(Wx) 011D6D(Rx) 011D74(Wx) 011E65(Rx) 0143E5(Rx) 0143E8(Wx) 015A91(Wx) 0181F4(Wx) 01BAFB(Wx) 01E05B(Wi) 
; ram_045F                              = $045F ; 011840(Wx) 011D6D(Rx) 011D74(Wx) 0143E5(Rx) 0143E8(Wx) 0181F4(Wx) 01BAFB(Wx) 01E05B(Wi) 



; 
ram_0460                                = $0460 ; 008EAB(W)  008EB7(R)  008EFE(W)  008F12(W)  008FBE(W)  008FD4(W)  00903B(W)  009094(W)  0090D9(W)  011840(Wx) 011D6D(Rx) 011D74(Wx) 01402B(Wi) 014095(R)  0140FA(W)  014176(W)  0141C0(W)  0141C8(W)  0141E5(W)  0150BA(W)  01536B(W)  015C03(R)  015C08(W)  0181F4(Wx) 019E26(R)  01BD73(W)  01E05B(Wi) 



; 
ram_pos_X_lo_obj                        = $0461 ; 0181F4(Wx) 01A155(Wx) 01A21F(Rx) 01A2A2(Rx) 01E05B(Wi) 01FC60(Rx) 01FC95(Rx) 01FC98(Wx) 
; ram_0462                              = $0462 ; 0181F4(Wx) 01A155(Wx) 01A21F(Rx) 01A2A2(Rx) 01E05B(Wi) 01FC60(Rx) 01FC95(Rx) 01FC98(Wx) 
; ram_0463                              = $0463 ; 0181F4(Wx) 01A155(Wx) 01A21F(Rx) 01A2A2(Rx) 01E05B(Wi) 01FC60(Rx) 01FC95(Rx) 01FC98(Wx) 
; ram_0464                              = $0464 ; 0105C0(R)  0105F3(Rx) 010832(Rx) 010850(Rx) 01094B(Rx) 0109BF(Rx) 010BDC(Rx) 010CE8(Rx) 010CFD(Rx) 010D24(Rx) 010D49(Rx) 010DCB(Rx) 010DD1(Wx) 010ED8(Rx) 010EF8(Rx) 011003(Rx) 011017(Rx) 0111DF(Rx) 0111E8(Wx) 0111F3(Wx) 0112DF(Rx) 0112E8(Rx) 01135A(Rx) 0113BC(Rx) 011671(Wx) 0116FF(R)  013E70(Wx) 013E81(Rx) 013E87(Wx) 013E95(Rx) 013E98(Wx) 013F83(Wx) 013F91(Rx) 01439D(Rx) 0143A4(Rx) 0143A9(Wx) 0143EC(Rx) 0143EF(Wx) 014434(Rx) 014477(Rx) 0145BF(Rx) 0148BD(Rx) 0148D3(R)  014C5F(R)  015715(Rx) 0158D3(Rx) 01595B(Ry) 015AA7(R)  015F20(W)  0179A4(Rx) 0179FE(Rx) 017ACE(Rx) 017AD1(Wx) 017B30(Rx) 017D5D(Rx) 017E16(Rx) 01816F(Wx) 0181F4(Wx) 0189B1(Rx) 0189B4(Wx) 018A03(Wx) 018A36(Rx) 01B77D(Rx) 01B79A(Ry) 01B7AD(Ry) 01B7B4(Ry) 01B7CE(Rx) 01B7F3(Rx) 01B80B(Rx) 01B823(Rx) 01B841(Rx) 01B974(R)  01B9C3(Wx) 01BA10(Wx) 01BA19(Wx) 01BA59(R)  01BBFD(Rx) 01BC14(Rx) 01BC37(R)  01BC59(R)  01BE58(Rx) 01BF36(Ry) 01BFD3(R)  01C6AB(Rx) 01C71C(Rx) 01D6E7(Wx) 01DE0D(W)  01E05B(Wi) 01FC60(Rx) 01FC95(Rx) 01FC98(Wx) 
; ram_0465                              = $0465 ; 0105BD(Rx) 0105F3(Rx) 010832(Rx) 010850(Rx) 01094B(Rx) 0109BF(Rx) 010D24(Rx) 010D49(Rx) 010DCB(Rx) 010DD1(Wx) 010ED8(Rx) 010EF8(Rx) 011003(Rx) 011017(Rx) 011195(Rx) 0111DF(Rx) 0112DF(Rx) 0112E8(Rx) 01135A(Rx) 0113BC(Rx) 011671(Wx) 011702(Wx) 011C1F(Ry) 011C2A(Ry) 013E70(Wx) 013E81(Rx) 013E87(Wx) 013E95(Rx) 013E98(Wx) 013F83(Wx) 013F91(Rx) 01439D(Rx) 0143A4(Rx) 0143EC(Rx) 0143EF(Wx) 014434(Rx) 014477(Rx) 0152B5(Rx) 01539B(Rx) 015418(Rx) 01595B(Ry) 0179A4(Rx) 0179FE(Rx) 017ACE(Rx) 017AD1(Wx) 017B30(Rx) 017D5D(Rx) 017E16(Rx) 01816F(Wx) 0181F4(Wx) 0189B1(Rx) 0189B4(Wx) 018A03(Wx) 018A36(Rx) 01B9C3(Wx) 01BA64(Wx) 01BF36(Ry) 01C6AB(Rx) 01C71C(Rx) 01E05B(Wi) 01FC60(Rx) 01FC95(Rx) 01FC98(Wx) 
; ram_0466                              = $0466 ; 00BED0(W)  00BF1D(W)  0105F3(Rx) 010832(Rx) 010850(Rx) 01094B(Rx) 0109BF(Rx) 010BDC(Rx) 010CE8(Rx) 010CFD(Rx) 010D24(Rx) 010D49(Rx) 010DCB(Rx) 010DD1(Wx) 010ED8(Rx) 010EF8(Rx) 011003(Rx) 011017(Rx) 0112DF(Rx) 0112E8(Rx) 01135A(Rx) 0113BC(Rx) 011C1F(Ry) 011C2A(Ry) 013E70(Wx) 013E81(Rx) 013E87(Wx) 013E95(Rx) 013E98(Wx) 013F83(Wx) 013F91(Rx) 014477(Rx) 0152B5(Rx) 0179A4(Rx) 0179FE(Rx) 017ACE(Rx) 017AD1(Wx) 017B30(Rx) 017D5D(Rx) 017E16(Rx) 0181F4(Wx) 01B9C3(Wx) 01C6AB(Rx) 01C71C(Rx) 01E05B(Wi) 01FC60(Rx) 01FC95(Rx) 01FC98(Wx) 
; ram_0467                              = $0467 ; 0105F3(Rx) 010832(Rx) 010850(Rx) 0109BF(Rx) 010BDC(Rx) 010CE8(Rx) 010CFD(Rx) 010D24(Rx) 010D49(Rx) 010DCB(Rx) 010DD1(Wx) 010ED8(Rx) 010EF8(Rx) 011003(Rx) 011017(Rx) 0112DF(Rx) 0112E8(Rx) 01135A(Rx) 0113BC(Rx) 011C1F(Ry) 011C2A(Ry) 013E70(Wx) 013E81(Rx) 013E87(Wx) 013E95(Rx) 013E98(Wx) 013F83(Wx) 013F91(Rx) 01439D(Rx) 0143A4(Rx) 0143EC(Rx) 0143EF(Wx) 014434(Rx) 014477(Rx) 0152B5(Rx) 0179A4(Rx) 0179FE(Rx) 017ACE(Rx) 017AD1(Wx) 017B30(Rx) 017D5D(Rx) 017E16(Rx) 0181F4(Wx) 01B9C3(Wx) 01C6AB(Rx) 01C71C(Rx) 01E05B(Wi) 01FC60(Rx) 01FC95(Rx) 01FC98(Wx) 
; ram_0468                              = $0468 ; 011831(Wx) 011C25(Rx) 011C30(Rx) 011D77(Rx) 011D7D(Wx) 011E60(Rx) 011F0F(Rx) 011F46(Rx) 0143EC(Rx) 0143EF(Wx) 0152FC(Ry) 015AAA(Wx) 0181F4(Wx) 018248(Wx) 0182C5(Wx) 018A32(Ry) 0194DE(R)  0194E4(W)  019670(Wx) 01BF06(Wx) 01BF36(Ry) 01BF39(Wx) 01BFD7(Rx) 01C75A(Rx) 01C7B2(Rx) 01C80E(Rx) 01C871(Rx) 01E05B(Wi) 01FC60(Rx) 01FC95(Rx) 01FC98(Wx) 
; ram_0469                              = $0469 ; 011831(Wx) 011C25(Rx) 011C30(Rx) 011D77(Rx) 011D7D(Wx) 011E60(Rx) 011F0F(Rx) 011F46(Rx) 0143EC(Rx) 0143EF(Wx) 0152FC(Ry) 0181F4(Wx) 018248(Wx) 0182C5(Wx) 018A32(Ry) 019670(Wx) 01BF06(Wx) 01BF36(Ry) 01BF39(Wx) 01BFD7(Rx) 01C75A(Rx) 01C7B2(Rx) 01C80E(Rx) 01C871(Rx) 01E05B(Wi) 01FC60(Rx) 01FC95(Rx) 01FC98(Wx) 
; ram_046A                              = $046A ; 011831(Wx) 011D77(Rx) 011D7D(Wx) 011F0F(Rx) 0143EC(Rx) 0143EF(Wx) 0152FC(Ry) 0181F4(Wx) 018248(Wx) 0182C5(Wx) 018A32(Ry) 019670(Wx) 01BF06(Wx) 01BF36(Ry) 01BF39(Wx) 01BFD7(Rx) 01C75A(Rx) 01C7B2(Rx) 01C871(Rx) 01E05B(Wi) 01FC60(Rx) 01FC95(Rx) 01FC98(Wx) 
; ram_046B                              = $046B ; 011831(Wx) 011D77(Rx) 011D7D(Wx) 011E60(Rx) 011F0F(Rx) 0143EC(Rx) 0143EF(Wx) 0152FC(Ry) 015AAA(Wx) 0181F4(Wx) 019670(Wx) 01BF06(Wx) 01BF36(Ry) 01BF39(Wx) 01BFD7(Rx) 01C75A(Rx) 01C7B2(Rx) 01C80E(Rx) 01C871(Rx) 01E05B(Wi) 01FC60(Rx) 01FC95(Rx) 01FC98(Wx) 
; ram_046C                              = $046C ; 011831(Wx) 011D77(Rx) 011D7D(Wx) 011F0F(Rx) 0143EC(Rx) 0143EF(Wx) 0181F4(Wx) 01BF39(Wx) 01C75A(Rx) 01C7B2(Rx) 01C871(Rx) 01E05B(Wi) 01FC60(Rx) 01FC95(Rx) 01FC98(Wx) 
; ram_046D                              = $046D ; 008E85(W)  008F01(R)  009146(R)  011831(Wx) 011D77(Rx) 011D7D(Wx) 011F0F(Rx) 01402B(Wi) 0140FF(W)  01413D(W)  0143C7(R)  0144E6(R)  01452C(R)  015BBE(W)  0181F4(Wx) 01BF87(R)  01C75A(Rx) 01C871(Rx) 01E05B(Wi) 01FC60(Rx) 01FC95(Rx) 01FC98(Wx) 
    ram_046D_t01_table_index                = ram_pos_X_lo_obj + $0C ; 
    ram_046D_t02                            = ram_pos_X_lo_obj + $0C ; 



; 
ram_pos_X_hi_obj                        = $046E ; 0181F4(Wx) 01A169(Wx) 01A224(Rx) 01A289(Rx) 01E05B(Wi) 01FC56(Rx) 01FC9B(Rx) 01FCA0(Wx) 
; ram_046F                              = $046F ; 0181F4(Wx) 01A169(Wx) 01A224(Rx) 01A289(Rx) 01E05B(Wi) 01FC56(Rx) 01FC9B(Rx) 01FCA0(Wx) 
; ram_0470                              = $0470 ; 0181F4(Wx) 01A169(Wx) 01A224(Rx) 01A289(Rx) 01E05B(Wi) 01FC56(Rx) 01FC9B(Rx) 01FCA0(Wx) 
; ram_0471                              = $0471 ; 0105EE(Rx) 010838(Rx) 010856(Rx) 0109BA(Rx) 010BD7(Rx) 010CC9(Rx) 010D16(Rx) 010D4E(Rx) 010DD4(Rx) 010DD9(Wx) 010EC6(Rx) 010ECF(Rx) 010EF1(Rx) 0111DA(Rx) 0112D8(Rx) 0116B4(Wx) 013E6A(Wx) 013F8A(Wx) 0143F6(Rx) 0143F9(Wx) 01443C(Rx) 01447C(Rx) 015075(Rx) 0176FC(Rx) 0179F6(Rx) 017AD6(Rx) 017AD9(Wx) 017B22(Rx) 017D4F(Rx) 017DF7(Rx) 0181F4(Wx) 0189B9(Rx) 0189BC(Wx) 01BA35(Wx) 01BB01(Wx) 01BFBC(R)  01C6A3(Rx) 01D6F5(Wx) 01DE17(W)  01E05B(Wi) 01FC56(Rx) 01FC9B(Rx) 01FCA0(Wx) 
; ram_0472                              = $0472 ; 0105EE(Rx) 010838(Rx) 010856(Rx) 0109BA(Rx) 010D16(Rx) 010D4E(Rx) 010DD4(Rx) 010DD9(Wx) 010EC6(Rx) 010ECF(Rx) 010EF1(Rx) 011181(Rx) 0111DA(Rx) 0112D8(Rx) 0116B4(Wx) 013E6A(Wx) 013F8A(Wx) 0143F6(Rx) 0143F9(Wx) 01443C(Rx) 01447C(Rx) 0176FC(Rx) 0179F6(Rx) 017AD6(Rx) 017AD9(Wx) 017B22(Rx) 017D4F(Rx) 017DF7(Rx) 0181F4(Wx) 0189B9(Rx) 0189BC(Wx) 01BA35(Wx) 01BB01(Wx) 01C6A3(Rx) 01E05B(Wi) 01FC56(Rx) 01FC9B(Rx) 01FCA0(Wx) 
; ram_0473                              = $0473 ; 0105EE(Rx) 010838(Rx) 010856(Rx) 0109BA(Rx) 010BD7(Rx) 010CC9(Rx) 010D16(Rx) 010D4E(Rx) 010DD4(Rx) 010DD9(Wx) 010EC6(Rx) 010ECF(Rx) 010EF1(Rx) 011181(Rx) 0112D8(Rx) 013E6A(Wx) 013F8A(Wx) 01447C(Rx) 0176FC(Rx) 0179F6(Rx) 017AD6(Rx) 017AD9(Wx) 017B22(Rx) 017D4F(Rx) 017DF7(Rx) 0181F4(Wx) 01BA35(Wx) 01BB01(Wx) 01C6A3(Rx) 01E05B(Wi) 01FC56(Rx) 01FC9B(Rx) 01FCA0(Wx) 
; ram_0474                              = $0474 ; 0105EE(Rx) 010838(Rx) 010856(Rx) 0109BA(Rx) 010BD7(Rx) 010CC9(Rx) 010D16(Rx) 010D4E(Rx) 010DD4(Rx) 010DD9(Wx) 010EC6(Rx) 010ECF(Rx) 010EF1(Rx) 011181(Rx) 0112D8(Rx) 013E6A(Wx) 013F8A(Wx) 0143F6(Rx) 0143F9(Wx) 01443C(Rx) 01447C(Rx) 0176FC(Rx) 0179F6(Rx) 017AD6(Rx) 017AD9(Wx) 017B22(Rx) 017D4F(Rx) 017DF7(Rx) 0181F4(Wx) 01BA35(Wx) 01BB01(Wx) 01C6A3(Rx) 01E05B(Wi) 01FC56(Rx) 01FC9B(Rx) 01FCA0(Wx) 
; ram_0475                              = $0475 ; 011838(Wx) 011D80(Rx) 011D85(Wx) 011DC4(Rx) 011E5B(Rx) 011F14(Rx) 011F41(Rx) 0143F6(Rx) 0143F9(Wx) 015B13(Rx) 015B1A(Wx) 015B20(Wx) 0181F4(Wx) 019682(Wx) 01BB01(Wx) 01BF0C(Wx) 01BF40(Wx) 01C752(Rx) 01C809(Rx) 01E05B(Wi) 01FC56(Rx) 01FC9B(Rx) 01FCA0(Wx) 
; ram_0476                              = $0476 ; 011838(Wx) 011D80(Rx) 011D85(Wx) 011DC4(Rx) 011E5B(Rx) 011F14(Rx) 011F41(Rx) 0143F6(Rx) 0143F9(Wx) 0181F4(Wx) 019682(Wx) 01BB01(Wx) 01BF0C(Wx) 01BF40(Wx) 01C752(Rx) 01C809(Rx) 01E05B(Wi) 01FC56(Rx) 01FC9B(Rx) 01FCA0(Wx) 
; ram_0477                              = $0477 ; 011838(Wx) 011D80(Rx) 011D85(Wx) 011DC4(Rx) 011F14(Rx) 0143F6(Rx) 0143F9(Wx) 0181F4(Wx) 019682(Wx) 01BB01(Wx) 01BF0C(Wx) 01BF40(Wx) 01C752(Rx) 01E05B(Wi) 01FC56(Rx) 01FC9B(Rx) 01FCA0(Wx) 
; ram_0478                              = $0478 ; 011838(Wx) 011D80(Rx) 011D85(Wx) 011DC4(Rx) 011E5B(Rx) 011F14(Rx) 0143F6(Rx) 0143F9(Wx) 0181F4(Wx) 019682(Wx) 01BB01(Wx) 01BF0C(Wx) 01BF40(Wx) 01C752(Rx) 01C809(Rx) 01E05B(Wi) 01FC56(Rx) 01FC9B(Rx) 01FCA0(Wx) 
; ram_0479                              = $0479 ; 011838(Wx) 011D80(Rx) 011D85(Wx) 011DC4(Rx) 011F14(Rx) 0143F6(Rx) 0143F9(Wx) 0181F4(Wx) 01BB01(Wx) 01BF40(Wx) 01C752(Rx) 01E05B(Wi) 01FC56(Rx) 01FC9B(Rx) 01FCA0(Wx) 
; ram_047A                              = $047A ; 008E8B(W)  008EF8(R)  008F5C(R)  009065(R)  011838(Wx) 011D80(Rx) 011D85(Wx) 011DC4(Rx) 011F14(Rx) 01402B(Wi) 0144A0(R)  0144B2(W)  0144C3(W)  014847(R)  01485E(R)  014CE4(W)  014D16(R)  015004(R)  0152C3(R)  015305(R)  01532C(W)  015372(R)  0153DB(W)  015486(R)  015492(W)  0154AE(W)  016000(W)  0181F4(Wx) 01BD00(R)  01BEC9(W)  01C752(Rx) 01E05B(Wi) 01FC56(Rx) 01FC9B(Rx) 01FCA0(Wx) 
    ram_047A_t01                            = ram_pos_X_hi_obj + $0C ; 
    ram_047A_t02                            = ram_pos_X_hi_obj + $0C ; 



; bzk optimize, useless addresses
ram_047B_useless                        = $047B ; 0181F4(Wx) 01A172(Wx) 01E05B(Wi) 
; ram_047C                              = $047C ; 0181F4(Wx) 01A172(Wx) 01E05B(Wi) 
; ram_047D                              = $047D ; 0181F4(Wx) 01A172(Wx) 01E05B(Wi) 



; 
ram_pos_Y_fr_obj                        = $047E ; 010E05(Rx) 010E0C(Wx) 01440D(Rx) 014410(Wx) 015A94(R)  017A33(Rx) 017AED(Rx) 017AF0(Wx) 0181F4(Wx) 0189D0(Rx) 0189D3(Wx) 018A08(Wx) 01BAFE(Wx) 01CC31(Wx) 01D6FB(Wx) 01E05B(Wi) 
; ram_047F                              = $047F ; 010E05(Rx) 010E0C(Wx) 01440D(Rx) 014410(Wx) 015276(Rx) 017A33(Rx) 017AED(Rx) 017AF0(Wx) 0181F4(Wx) 0189D0(Rx) 0189D3(Wx) 018A08(Wx) 01BAFE(Wx) 01CC31(Wx) 01E05B(Wi) 
; ram_0480                              = $0480 ; 010E05(Rx) 010E0C(Wx) 01440D(Rx) 014410(Wx) 015276(Rx) 017A33(Rx) 017AED(Rx) 017AF0(Wx) 0181F4(Wx) 01BAFE(Wx) 01CC31(Wx) 01E05B(Wi) 
; ram_0481                              = $0481 ; 010E05(Rx) 010E0C(Wx) 01440D(Rx) 014410(Wx) 015276(Rx) 017A33(Rx) 017AED(Rx) 017AF0(Wx) 0181F4(Wx) 01BAFE(Wx) 01CC31(Wx) 01E05B(Wi) 
; ram_0482                              = $0482 ; 011843(Wx) 011AAE(W)  011DA2(Rx) 011DA9(Wx) 011E74(Rx) 01440D(Rx) 014410(Wx) 015A97(Wx) 0181F4(Wx) 01BAFE(Wx) 01E05B(Wi) 
; ram_0483                              = $0483 ; 011843(Wx) 011DA2(Rx) 011DA9(Wx) 011E74(Rx) 01440D(Rx) 014410(Wx) 0181F4(Wx) 01BAFE(Wx) 01E05B(Wi) 
; ram_0484                              = $0484 ; 011843(Wx) 011DA2(Rx) 011DA9(Wx) 01440D(Rx) 014410(Wx) 0181F4(Wx) 01BAFE(Wx) 01E05B(Wi) 
; ram_0485                              = $0485 ; 011843(Wx) 011DA2(Rx) 011DA9(Wx) 011E74(Rx) 01440D(Rx) 014410(Wx) 015A97(Wx) 0181F4(Wx) 01BAFE(Wx) 01E05B(Wi) 
; ram_0486                              = $0486 ; 011843(Wx) 011DA2(Rx) 011DA9(Wx) 01440D(Rx) 014410(Wx) 0181F4(Wx) 01BAFE(Wx) 01E05B(Wi) 
; ram_0487                              = $0487 ; 008E91(W)  008ED4(R)  011843(Wx) 01402B(Wi) 0144D7(R)  014758(R)  01477B(R)  014780(W)  0147E5(W)  014D28(R)  014EA4(R)  014EAB(W)  014F89(W)  0152CC(W)  0152D5(R)  0152DE(R)  01534F(R)  015426(W)  015429(R)  01542F(R)  0154C2(R)  0154D1(W)  015561(R)  015568(W)  015574(W)  0155AE(W)  015852(W)  0181F4(Wx) 01E05B(Wi) 
    ram_0487_t01_ptr_lo                     = ram_pos_Y_fr_obj + $09 ; 
    ram_0487_t02                            = ram_pos_Y_fr_obj + $09 ; 
    ram_0487_t03_table_index                = ram_pos_Y_fr_obj + $09 ; 



; 
ram_pos_Y_lo_obj                        = $0488 ; 0181F4(Wx) 01A164(Wx) 01A20D(Rx) 01A210(Wx) 01A244(Rx) 01A256(Wx) 01A2B4(Rx) 01E05B(Wi) 01FC6D(Rx) 01FC84(Rx) 01FC87(Wx) 
; ram_0489                              = $0489 ; 0181F4(Wx) 01A164(Wx) 01A20D(Rx) 01A210(Wx) 01A244(Rx) 01A256(Wx) 01A2B4(Rx) 01E05B(Wi) 01FC6D(Rx) 01FC84(Rx) 01FC87(Wx) 
; ram_048A                              = $048A ; 0181F4(Wx) 01A164(Wx) 01A20D(Rx) 01A210(Wx) 01A244(Rx) 01A256(Wx) 01A2B4(Rx) 01E05B(Wi) 01FC6D(Rx) 01FC84(Rx) 01FC87(Wx) 
; ram_048B                              = $048B ; 010288(Rx) 0102A4(Wx) 01060E(Rx) 01085C(Rx) 0109C9(Rx) 010D64(Rx) 010E0F(Rx) 010E15(Wx) 010F0B(Rx) 010F1D(Rx) 011306(Rx) 01130F(Rx) 011677(Wx) 011705(R)  013EBC(Wx) 013EC6(Rx) 013ECC(Wx) 013EDC(Wx) 013EED(Wx) 013F12(Rx) 013F15(Wx) 013F1B(Rx) 013F21(Wx) 013F33(Rx) 013F39(Wx) 013F7B(Wx) 013FAD(Rx) 013FB3(Wx) 013FC8(Rx) 013FCB(Wx) 014367(Rx) 01436C(Wx) 0143CA(Rx) 0143CF(Wx) 014414(Rx) 014417(Wx) 014451(Rx) 01446D(Rx) 0144E3(R)  014529(R)  01490C(Rx) 014912(Wx) 0149F8(Rx) 014AA6(Rx) 014AC7(Rx) 014BF0(Wx) 014CA9(Rx) 015960(Ry) 015AB0(R)  015C61(R)  015CE3(R)  015CED(R)  015F26(W)  015FFC(W)  017A0F(Rx) 017A24(Rx) 017AF6(Rx) 017AF9(Wx) 017B43(Rx) 017D70(Rx) 017E27(Rx) 018169(Wx) 0181F4(Wx) 0189D9(Rx) 0189DC(Wx) 0189FD(Wx) 018A47(Rx) 018B30(Rx) 018B33(Wx) 018B69(Rx) 018B6C(Wx) 01B805(Rx) 01B84D(Rx) 01B856(Rx) 01B85E(Rx) 01B864(Rx) 01B8C8(Rx) 01B8CD(Wx) 01B95E(R)  01B9C9(Wx) 01BA67(R)  01BF43(Ry) 01BF84(R)  01BFC6(R)  01C6BB(Rx) 01C6FB(Rx) 01CBDA(Rx) 01CBE0(Wx) 01D705(Wx) 01DE12(W)  01E05B(Wi) 01FC6D(Rx) 01FC84(Rx) 01FC87(Wx) 
; ram_048C                              = $048C ; 010288(Rx) 0102A4(Wx) 01060E(Rx) 01085C(Rx) 0109C9(Rx) 010D64(Rx) 010E0F(Rx) 010E15(Wx) 010F0B(Rx) 010F1D(Rx) 0111AC(Rx) 011306(Rx) 01130F(Rx) 011677(Wx) 01170B(Wx) 011C35(Ry) 011C40(Ry) 013EBC(Wx) 013EC6(Rx) 013ECC(Wx) 013EDC(Wx) 013EED(Wx) 013F12(Rx) 013F15(Wx) 013F1B(Rx) 013F21(Wx) 013F33(Rx) 013F39(Wx) 013F7B(Wx) 013FAD(Rx) 013FB3(Wx) 013FC8(Rx) 013FCB(Wx) 0143CA(Rx) 014414(Rx) 014417(Wx) 014451(Rx) 01446D(Rx) 01527B(Rx) 0152B8(Rx) 0153A3(Rx) 01541F(Rx) 015960(Ry) 017A0F(Rx) 017A24(Rx) 017AF6(Rx) 017AF9(Wx) 017B43(Rx) 017D70(Rx) 017E27(Rx) 018169(Wx) 0181F4(Wx) 0189D9(Rx) 0189DC(Wx) 0189FD(Wx) 01B864(Rx) 01B9C9(Wx) 01BA6D(Wx) 01BF43(Ry) 01C6BB(Rx) 01C6FB(Rx) 01CBDA(Rx) 01CBE0(Wx) 01E05B(Wi) 01FC6D(Rx) 01FC84(Rx) 01FC87(Wx) 
; ram_048D                              = $048D ; 00BECA(W)  00BF17(W)  010288(Rx) 0102A4(Wx) 01060E(Rx) 01085C(Rx) 0109C9(Rx) 010D64(Rx) 010E0F(Rx) 010E15(Wx) 010F0B(Rx) 010F1D(Rx) 011306(Rx) 01130F(Rx) 013EBC(Wx) 013EC6(Rx) 013ECC(Wx) 013EDC(Wx) 013F12(Rx) 013F15(Wx) 013F1B(Rx) 013F21(Wx) 013F33(Rx) 013F39(Wx) 013F7B(Wx) 013FAD(Rx) 013FB3(Wx) 013FC8(Rx) 013FCB(Wx) 0143CA(Rx) 014414(Rx) 014417(Wx) 014451(Rx) 01446D(Rx) 01527B(Rx) 0152B8(Rx) 017A0F(Rx) 017A24(Rx) 017AF6(Rx) 017AF9(Wx) 017B43(Rx) 017D70(Rx) 017E27(Rx) 0181F4(Wx) 01B864(Rx) 01B9C9(Wx) 01C6BB(Rx) 01C6FB(Rx) 01CBDA(Rx) 01CBE0(Wx) 01E05B(Wi) 01FC6D(Rx) 01FC84(Rx) 01FC87(Wx) 
; ram_048E                              = $048E ; 010288(Rx) 0102A4(Wx) 01060E(Rx) 01085C(Rx) 0109C9(Rx) 010D64(Rx) 010E0F(Rx) 010E15(Wx) 010F0B(Rx) 010F1D(Rx) 011306(Rx) 01130F(Rx) 011C35(Ry) 011C40(Ry) 013EBC(Wx) 013EC6(Rx) 013ECC(Wx) 013EDC(Wx) 013F12(Rx) 013F15(Wx) 013F1B(Rx) 013F21(Wx) 013F33(Rx) 013F39(Wx) 013F7B(Wx) 013FAD(Rx) 013FB3(Wx) 013FC8(Rx) 013FCB(Wx) 0143CA(Rx) 014414(Rx) 014417(Wx) 014451(Rx) 01446D(Rx) 01527B(Rx) 0152B8(Rx) 017A0F(Rx) 017A24(Rx) 017AF6(Rx) 017AF9(Wx) 017B43(Rx) 017D70(Rx) 017E27(Rx) 0181F4(Wx) 01B864(Rx) 01B9C9(Wx) 01C6BB(Rx) 01C6FB(Rx) 01CBDA(Rx) 01CBE0(Wx) 01E05B(Wi) 01FC6D(Rx) 01FC84(Rx) 01FC87(Wx) 
; ram_048F                              = $048F ; 01184C(Wx) 011C3B(Rx) 011C46(Rx) 011DAC(Rx) 011DB2(Wx) 011E6F(Rx) 011F19(Rx) 011F50(Rx) 014414(Rx) 014417(Wx) 015AB3(Wx) 0181F4(Wx) 018242(Wx) 0182BF(Wx) 018A43(Ry) 0194BC(W)  019676(Wx) 01B864(Rx) 01BF12(Wx) 01BF43(Ry) 01BF49(Wx) 01BFCA(Rx) 01C79B(Rx) 01C818(Rx) 01C882(Rx) 01E05B(Wi) 01FC6D(Rx) 01FC84(Rx) 01FC87(Wx) 
; ram_0490                              = $0490 ; 01184C(Wx) 011DAC(Rx) 011DB2(Wx) 011E6F(Rx) 011F19(Rx) 011F50(Rx) 014414(Rx) 014417(Wx) 0181F4(Wx) 018242(Wx) 0182BF(Wx) 018A43(Ry) 0194BF(W)  019676(Wx) 01B864(Rx) 01BF12(Wx) 01BF43(Ry) 01BF49(Wx) 01BFCA(Rx) 01C79B(Rx) 01C818(Rx) 01C882(Rx) 01E05B(Wi) 01FC6D(Rx) 01FC84(Rx) 01FC87(Wx) 
; ram_0491                              = $0491 ; 01184C(Wx) 011DAC(Rx) 011DB2(Wx) 011F19(Rx) 014414(Rx) 014417(Wx) 0181F4(Wx) 018242(Wx) 0182BF(Wx) 018A43(Ry) 0194C2(W)  019676(Wx) 01B864(Rx) 01BF12(Wx) 01BF43(Ry) 01BF49(Wx) 01BFCA(Rx) 01C79B(Rx) 01C882(Rx) 01E05B(Wi) 01FC6D(Rx) 01FC84(Rx) 01FC87(Wx) 
; ram_0492                              = $0492 ; 01184C(Wx) 011DAC(Rx) 011DB2(Wx) 011E6F(Rx) 011F19(Rx) 014414(Rx) 014417(Wx) 015AB3(Wx) 0181F4(Wx) 0194C5(W)  019676(Wx) 01B864(Rx) 01BF12(Wx) 01BF43(Ry) 01BF49(Wx) 01BFCA(Rx) 01C79B(Rx) 01C818(Rx) 01C882(Rx) 01E05B(Wi) 01FC6D(Rx) 01FC84(Rx) 01FC87(Wx) 
; ram_0493                              = $0493 ; 01184C(Wx) 011DAC(Rx) 011DB2(Wx) 011F19(Rx) 014414(Rx) 014417(Wx) 0181F4(Wx) 01B864(Rx) 01BF49(Wx) 01C79B(Rx) 01C882(Rx) 01E05B(Wi) 01FC6D(Rx) 01FC84(Rx) 01FC87(Wx) 
; ram_0494                              = $0494 ; 008E97(W)  008ED9(R)  01184C(Wx) 011F19(Rx) 01402B(Wi) 0146C1(W)  0146CC(W)  01516E(W)  0151AE(W)  015A7D(R)  015B88(W)  015B93(W)  015E32(W)  015E73(W)  0181F4(Wx) 01BD4B(W)  01C79B(Rx) 01C882(Rx) 01E05B(Wi) 01FC6D(Rx) 01FC84(Rx) 01FC87(Wx) 
    ram_0494_t01_prt_hi                     = ram_pos_Y_lo_obj + $0C ; 
    ram_0494_t02                            = ram_pos_Y_lo_obj + $0C ; 



; 
ram_pos_Y_hi_obj                        = $0495 ; 0181F4(Wx) 01A16C(Wx) 01A215(Rx) 01A21A(Wx) 01A284(Rx) 01E05B(Wi) 01FC5B(Rx) 01FC8A(Rx) 01FC8F(Wx) 
; ram_0496                              = $0496 ; 0181F4(Wx) 01A16C(Wx) 01A215(Rx) 01A21A(Wx) 01A284(Rx) 01E05B(Wi) 01FC5B(Rx) 01FC8A(Rx) 01FC8F(Wx) 
; ram_0497                              = $0497 ; 0181F4(Wx) 01A16C(Wx) 01A215(Rx) 01A21A(Wx) 01A284(Rx) 01E05B(Wi) 01FC5B(Rx) 01FC8A(Rx) 01FC8F(Wx) 
; ram_0498                              = $0498 ; 010290(Rx) 010295(Wx) 0105F8(Rx) 01086B(Rx) 0109C4(Rx) 010D69(Rx) 010E18(Rx) 010E1D(Wx) 010F02(Rx) 010F16(Rx) 0112FF(Rx) 0116B7(Wx) 013EC3(Wx) 013ECF(Rx) 013ED4(Wx) 013EF2(Wx) 013EFD(Wx) 013F06(Rx) 013F24(Rx) 013F29(Wx) 013F3C(Rx) 013F41(Wx) 013F75(Wx) 013FB6(Rx) 013FBB(Wx) 01441E(Rx) 014421(Wx) 014459(Rx) 014472(Rx) 0176FF(Rx) 0179F9(Rx) 017AFE(Rx) 017B01(Wx) 017B25(Rx) 017D52(Rx) 017DFA(Rx) 0181F4(Wx) 0189E1(Rx) 0189E4(Wx) 01BB04(Wx) 01C6A6(Rx) 01CBE3(Rx) 01CBE8(Wx) 01D70A(Wx) 01DE1A(W)  01E05B(Wi) 01FC5B(Rx) 01FC8A(Rx) 01FC8F(Wx) 
; ram_0499                              = $0499 ; 010290(Rx) 010295(Wx) 0105F8(Rx) 01086B(Rx) 0109C4(Rx) 010D69(Rx) 010E18(Rx) 010E1D(Wx) 010F02(Rx) 010F16(Rx) 0112FF(Rx) 0116B7(Wx) 013EC3(Wx) 013ECF(Rx) 013ED4(Wx) 013EF2(Wx) 013EFD(Wx) 013F06(Rx) 013F24(Rx) 013F29(Wx) 013F3C(Rx) 013F41(Wx) 013F75(Wx) 013FB6(Rx) 013FBB(Wx) 01441E(Rx) 014421(Wx) 014459(Rx) 014472(Rx) 0176FF(Rx) 0179F9(Rx) 017AFE(Rx) 017B01(Wx) 017B25(Rx) 017D52(Rx) 017DFA(Rx) 0181F4(Wx) 0189E1(Rx) 0189E4(Wx) 01BB04(Wx) 01C6A6(Rx) 01CBE3(Rx) 01CBE8(Wx) 01E05B(Wi) 01FC5B(Rx) 01FC8A(Rx) 01FC8F(Wx) 
; ram_049A                              = $049A ; 010290(Rx) 010295(Wx) 0105F8(Rx) 01086B(Rx) 0109C4(Rx) 010D69(Rx) 010E18(Rx) 010E1D(Wx) 010F02(Rx) 010F16(Rx) 0112FF(Rx) 013EC3(Wx) 013ECF(Rx) 013ED4(Wx) 013EF2(Wx) 013EFD(Wx) 013F06(Rx) 013F24(Rx) 013F29(Wx) 013F3C(Rx) 013F41(Wx) 013F75(Wx) 013FB6(Rx) 013FBB(Wx) 01441E(Rx) 014421(Wx) 014459(Rx) 014472(Rx) 0176FF(Rx) 0179F9(Rx) 017AFE(Rx) 017B01(Wx) 017B25(Rx) 017D52(Rx) 017DFA(Rx) 0181F4(Wx) 01BB04(Wx) 01C6A6(Rx) 01CBE3(Rx) 01CBE8(Wx) 01E05B(Wi) 01FC5B(Rx) 01FC8A(Rx) 01FC8F(Wx) 
; ram_049B                              = $049B ; 010290(Rx) 010295(Wx) 0105F8(Rx) 01086B(Rx) 0109C4(Rx) 010D69(Rx) 010E18(Rx) 010E1D(Wx) 010F02(Rx) 010F16(Rx) 0112FF(Rx) 013EC3(Wx) 013ECF(Rx) 013ED4(Wx) 013EF2(Wx) 013EFD(Wx) 013F06(Rx) 013F24(Rx) 013F29(Wx) 013F3C(Rx) 013F41(Wx) 013F75(Wx) 013FB6(Rx) 013FBB(Wx) 01441E(Rx) 014421(Wx) 014459(Rx) 014472(Rx) 0176FF(Rx) 0179F9(Rx) 017AFE(Rx) 017B01(Wx) 017B25(Rx) 017D52(Rx) 017DFA(Rx) 0181F4(Wx) 01BB04(Wx) 01C6A6(Rx) 01CBE3(Rx) 01CBE8(Wx) 01E05B(Wi) 01FC5B(Rx) 01FC8A(Rx) 01FC8F(Wx) 
; ram_049C                              = $049C ; 01183D(Wx) 011DB5(Rx) 011DBA(Wx) 011DC9(Rx) 011E6A(Rx) 011F1E(Rx) 011F4B(Rx) 01441E(Rx) 014421(Wx) 015AD7(Rx) 0181F4(Wx) 019685(Wx) 01BB04(Wx) 01BF18(Wx) 01BFC1(Rx) 01C755(Rx) 01C813(Rx) 01E05B(Wi) 01FC5B(Rx) 01FC8A(Rx) 01FC8F(Wx) 
; ram_049D                              = $049D ; 01183D(Wx) 011DB5(Rx) 011DBA(Wx) 011DC9(Rx) 011E6A(Rx) 011F1E(Rx) 011F4B(Rx) 01441E(Rx) 014421(Wx) 015AD7(Rx) 0181F4(Wx) 019685(Wx) 01BB04(Wx) 01BF18(Wx) 01BFC1(Rx) 01C755(Rx) 01C813(Rx) 01E05B(Wi) 01FC5B(Rx) 01FC8A(Rx) 01FC8F(Wx) 
; ram_049E                              = $049E ; 01183D(Wx) 011DB5(Rx) 011DBA(Wx) 011DC9(Rx) 011F1E(Rx) 01441E(Rx) 014421(Wx) 015AD7(Rx) 0181F4(Wx) 019685(Wx) 01BB04(Wx) 01BF18(Wx) 01BFC1(Rx) 01C755(Rx) 01E05B(Wi) 01FC5B(Rx) 01FC8A(Rx) 01FC8F(Wx) 
; ram_049F                              = $049F ; 01183D(Wx) 011DB5(Rx) 011DBA(Wx) 011DC9(Rx) 011E6A(Rx) 011F1E(Rx) 01441E(Rx) 014421(Wx) 015AD7(Rx) 0181F4(Wx) 019685(Wx) 01BB04(Wx) 01BF18(Wx) 01BFC1(Rx) 01C755(Rx) 01C813(Rx) 01E05B(Wi) 01FC5B(Rx) 01FC8A(Rx) 01FC8F(Wx) 
; ram_04A0                              = $04A0 ; 01183D(Wx) 011DB5(Rx) 011DBA(Wx) 011DC9(Rx) 011F1E(Rx) 01441E(Rx) 014421(Wx) 0181F4(Wx) 01BB04(Wx) 01C755(Rx) 01E05B(Wi) 01FC5B(Rx) 01FC8A(Rx) 01FC8F(Wx) 
; ram_04A1                              = $04A1 ; 008EAE(W)  008ED1(R)  008EEA(W)  01183D(Wx) 011DC9(Rx) 011F1E(Rx) 01402B(Wi) 0149A3(R)  0149B9(W)  014CEF(W)  014CF9(W)  015089(W)  015265(R)  015ACA(R)  015AE6(R)  0181F4(Wx) 01C755(Rx) 01E05B(Wi) 01FC5B(Rx) 01FC8A(Rx) 01FC8F(Wx) 
    ram_04A1_t01_data_index                 = ram_pos_Y_hi_obj + $0C ; 
    ram_04A1_t02                            = ram_pos_Y_hi_obj + $0C ; 



; 
ram_spr_data_ptr_lo_obj                 = $04A2 ; 0181F4(Wx) 01A12B(Wx) 01E05B(Wi) 01FCD7(Rx) 
; ram_04A3                              = $04A3 ; 0181F4(Wx) 01A12B(Wx) 01E05B(Wi) 01FCD7(Rx) 
; ram_04A4                              = $04A4 ; 0181F4(Wx) 01A12B(Wx) 01E05B(Wi) 01FCD7(Rx) 
; ram_04A5                              = $04A5 ; 010183(Wx) 0112B0(Wx) 0181DB(Wx) 0181F4(Wx) 0183D8(Wx) 01BAB6(Wx) 01E05B(Wi) 01FCD7(Rx) 
; ram_04A6                              = $04A6 ; 010183(Wx) 0112B0(Wx) 0181DB(Wx) 0181F4(Wx) 0183D8(Wx) 01BAB6(Wx) 01E05B(Wi) 01FCD7(Rx) 
; ram_04A7                              = $04A7 ; 010183(Wx) 0112B0(Wx) 0181DB(Wx) 0181F4(Wx) 0183D8(Wx) 01BAB6(Wx) 01E05B(Wi) 01FCD7(Rx) 
; ram_04A8                              = $04A8 ; 010183(Wx) 0112B0(Wx) 0181F4(Wx) 01BAB6(Wx) 01E05B(Wi) 01FCD7(Rx) 
; ram_04A9                              = $04A9 ; 011A56(Wx) 011E17(Wx) 0181F4(Wx) 018328(Wx) 018407(Wx) 019664(Wx) 019E5C(Wx) 01BAB6(Wx) 01E05B(Wi) 01FCD7(Rx) 
; ram_04AA                              = $04AA ; 011A56(Wx) 011E17(Wx) 0181F4(Wx) 018328(Wx) 018407(Wx) 019664(Wx) 019E5C(Wx) 01BAB6(Wx) 01E05B(Wi) 01FCD7(Rx) 
; ram_04AB                              = $04AB ; 011A56(Wx) 011E17(Wx) 0181F4(Wx) 018328(Wx) 018407(Wx) 019664(Wx) 01BAB6(Wx) 01E05B(Wi) 01FCD7(Rx) 
; ram_04AC                              = $04AC ; 011A56(Wx) 011E17(Wx) 0181F4(Wx) 019664(Wx) 01BAB6(Wx) 01E05B(Wi) 01FCD7(Rx) 
; ram_04AD                              = $04AD ; 011A56(Wx) 0181F4(Wx) 01BAB6(Wx) 01E05B(Wi) 01FCD7(Rx) 
; ram_04AE                              = $04AE ; 008EFB(W)  008F51(W)  008F5F(W)  00902C(W)  009068(W)  011A56(Wx) 01402B(Wi) 0140E5(W)  0140F7(W)  014103(W)  01410F(W)  014116(W)  014131(W)  014187(R)  01418E(W)  0141A5(R)  0141BB(W)  0141C3(W)  0141DB(W)  01534A(W)  015436(W)  01548D(R)  01549E(R)  0181F4(Wx) 01BA3F(R)  01BA43(R)  01BD85(W)  01BDED(W)  01E05B(Wi) 01FCD7(Rx) 
    ram_04AE_t01                            = ram_spr_data_ptr_lo_obj + $0C ; 
    ram_04AE_t02                            = ram_spr_data_ptr_lo_obj + $0C ; 
    ram_04AE_t03                            = ram_spr_data_ptr_lo_obj + $0C ; 



; 
ram_spr_data_ptr_hi_obj                 = $04AF ; 0181F4(Wx) 01A131(Wx) 01E05B(Wi) 01FCDC(Rx) 
; ram_04B0                              = $04B0 ; 0181F4(Wx) 01A131(Wx) 01E05B(Wi) 01FCDC(Rx) 
; ram_04B1                              = $04B1 ; 0181F4(Wx) 01A131(Wx) 01E05B(Wi) 01FCDC(Rx) 
; ram_04B2                              = $04B2 ; 010189(Wx) 0112B6(Wx) 0181E1(Wx) 0181F4(Wx) 0183DE(Wx) 01BABC(Wx) 01E05B(Wi) 01FCDC(Rx) 
; ram_04B3                              = $04B3 ; 010189(Wx) 0112B6(Wx) 0181E1(Wx) 0181F4(Wx) 0183DE(Wx) 01BABC(Wx) 01E05B(Wi) 01FCDC(Rx) 
; ram_04B4                              = $04B4 ; 010189(Wx) 0112B6(Wx) 0181E1(Wx) 0181F4(Wx) 0183DE(Wx) 01BABC(Wx) 01E05B(Wi) 01FCDC(Rx) 
; ram_04B5                              = $04B5 ; 010189(Wx) 0112B6(Wx) 0181F4(Wx) 01BABC(Wx) 01E05B(Wi) 01FCDC(Rx) 
; ram_04B6                              = $04B6 ; 011A5C(Wx) 011E1D(Wx) 0181F4(Wx) 01832E(Wx) 01840D(Wx) 01966A(Wx) 019E62(Wx) 01BABC(Wx) 01E05B(Wi) 01FCDC(Rx) 
; ram_04B7                              = $04B7 ; 011A5C(Wx) 011E1D(Wx) 0181F4(Wx) 01832E(Wx) 01840D(Wx) 01966A(Wx) 019E62(Wx) 01BABC(Wx) 01E05B(Wi) 01FCDC(Rx) 
; ram_04B8                              = $04B8 ; 011A5C(Wx) 011E1D(Wx) 0181F4(Wx) 01832E(Wx) 01840D(Wx) 01966A(Wx) 01BABC(Wx) 01E05B(Wi) 01FCDC(Rx) 
; ram_04B9                              = $04B9 ; 011A5C(Wx) 011E1D(Wx) 0181F4(Wx) 01966A(Wx) 01BABC(Wx) 01E05B(Wi) 01FCDC(Rx) 
; ram_04BA                              = $04BA ; 011A5C(Wx) 0181F4(Wx) 01BABC(Wx) 01E05B(Wi) 01FCDC(Rx) 
; ram_04BB                              = $04BB ; 008EEF(W)  008FB7(W)  008FF4(W)  008FF7(R)  00901B(R)  011A5C(Wx) 01402B(Wi) 01411D(W)  014231(R)  01508E(W)  015BB1(W)  015BEE(R)  015F0C(R)  015F41(R)  015F7A(R)  0181F4(Wx) 01BCE3(R)  01BD62(R)  01BECC(W)  01E05B(Wi) 01FCDC(Rx) 
    ram_04BB_t01                            = ram_spr_data_ptr_hi_obj + $0C ; 
    ram_04BB_t02                            = ram_spr_data_ptr_hi_obj + $0C ; 
    ram_04BB_t03                            = ram_spr_data_ptr_hi_obj + $0C ; 



; 
ram_04BC_data_ptr_lo_obj                = $04BC ; 0181F4(Wx) 01A13E(Wx) 01A2FF(Rx) 01E05B(Wi) 01FCBD(Rx) 
; ram_04BD                              = $04BD ; 0181F4(Wx) 01A13E(Wx) 01A2FF(Rx) 01E05B(Wi) 01FCBD(Rx) 
; ram_04BE                              = $04BE ; 0181F4(Wx) 01A13E(Wx) 01A2FF(Rx) 01E05B(Wi) 01FCBD(Rx) 
; ram_04BF                              = $04BF ; 01015E(Rx) 01018F(Wx) 011288(Wx) 0181C6(Wx) 0181F4(Wx) 0183B3(Rx) 0183C3(Wx) 01BA7E(Rx) 01BA9F(Wx) 01E05B(Wi) 01FCBD(Rx) 
; ram_04C0                              = $04C0 ; 01015E(Rx) 01018F(Wx) 011288(Wx) 0181C6(Wx) 0181F4(Wx) 0183B3(Rx) 0183C3(Wx) 01BA7E(Rx) 01BA9F(Wx) 01E05B(Wi) 01FCBD(Rx) 
; ram_04C1                              = $04C1 ; 01015E(Rx) 01018F(Wx) 011288(Wx) 0181C6(Wx) 0181F4(Wx) 0183B3(Rx) 0183C3(Wx) 01BA7E(Rx) 01BA9F(Wx) 01E05B(Wi) 01FCBD(Rx) 
; ram_04C2                              = $04C2 ; 01015E(Rx) 01018F(Wx) 011288(Wx) 0181F4(Wx) 01BA7E(Rx) 01BA9F(Wx) 01E05B(Wi) 01FCBD(Rx) 
; ram_04C3                              = $04C3 ; 011A62(Wx) 011DF2(Rx) 011E23(Wx) 0181F4(Wx) 018313(Wx) 0183E2(Rx) 0183F2(Wx) 019658(Wx) 019E50(Rx) 01BA7E(Rx) 01BA9F(Wx) 01E05B(Wi) 01FCBD(Rx) 
; ram_04C4                              = $04C4 ; 011A62(Wx) 011DF2(Rx) 011E23(Wx) 0181F4(Wx) 018313(Wx) 0183E2(Rx) 0183F2(Wx) 019658(Wx) 019E50(Rx) 01BA7E(Rx) 01BA9F(Wx) 01E05B(Wi) 01FCBD(Rx) 
; ram_04C5                              = $04C5 ; 011A62(Wx) 011DF2(Rx) 011E23(Wx) 0181F4(Wx) 018313(Wx) 0183E2(Rx) 0183F2(Wx) 019658(Wx) 01BA7E(Rx) 01BA9F(Wx) 01E05B(Wi) 01FCBD(Rx) 
; ram_04C6                              = $04C6 ; 011A62(Wx) 011DF2(Rx) 011E23(Wx) 0181F4(Wx) 019658(Wx) 01BA7E(Rx) 01BA9F(Wx) 01E05B(Wi) 01FCBD(Rx) 
; ram_04C7                              = $04C7 ; 011A62(Wx) 0181F4(Wx) 01BA7E(Rx) 01BA9F(Wx) 01E05B(Wi) 01FCBD(Rx) 
; ram_04C8                              = $04C8 ; 008EF2(W)  008FAE(W)  008FB2(W)  009006(R)  00903E(W)  0090D2(W)  011A62(Wx) 01402B(Wi) 01414E(W)  0141E8(W)  015F2B(W)  015F8C(W)  015F9A(R)  015FE0(R)  0181F4(Wx) 01BD78(W)  01E05B(Wi) 01FCBD(Rx) 
    ram_04C8_t01                            = ram_04BC_data_ptr_lo_obj + $0C ; 
    ram_04C8_t02                            = ram_04BC_data_ptr_lo_obj + $0C ; 
    ram_04C8_t03                            = ram_04BC_data_ptr_lo_obj + $0C ; 



; 
ram_04C9_data_ptr_hi_obj                = $04C9 ; 0181F4(Wx) 01A143(Wx) 01A304(Rx) 01E05B(Wi) 01FCC2(Rx) 
; ram_04CA                              = $04CA ; 0181F4(Wx) 01A143(Wx) 01A304(Rx) 01E05B(Wi) 01FCC2(Rx) 
; ram_04CB                              = $04CB ; 0181F4(Wx) 01A143(Wx) 01A304(Rx) 01E05B(Wi) 01FCC2(Rx) 
; ram_04CC                              = $04CC ; 010163(Rx) 010195(Wx) 011290(Wx) 0181CE(Wx) 0181F4(Wx) 0183B8(Rx) 0183CB(Wx) 01BA83(Rx) 01BAA7(Wx) 01E05B(Wi) 01FCC2(Rx) 
; ram_04CD                              = $04CD ; 010163(Rx) 010195(Wx) 011290(Wx) 0181CE(Wx) 0181F4(Wx) 0183B8(Rx) 0183CB(Wx) 01BA83(Rx) 01BAA7(Wx) 01E05B(Wi) 01FCC2(Rx) 
; ram_04CE                              = $04CE ; 010163(Rx) 010195(Wx) 011290(Wx) 0181CE(Wx) 0181F4(Wx) 0183B8(Rx) 0183CB(Wx) 01BA83(Rx) 01BAA7(Wx) 01E05B(Wi) 01FCC2(Rx) 
; ram_04CF                              = $04CF ; 010163(Rx) 010195(Wx) 011290(Wx) 0181F4(Wx) 01BA83(Rx) 01BAA7(Wx) 01E05B(Wi) 01FCC2(Rx) 
; ram_04D0                              = $04D0 ; 011A68(Wx) 011DF7(Rx) 011E29(Wx) 0181F4(Wx) 01831B(Wx) 0183E7(Rx) 0183FA(Wx) 01965E(Wx) 019E55(Rx) 01BA83(Rx) 01BAA7(Wx) 01E05B(Wi) 01FCC2(Rx) 
; ram_04D1                              = $04D1 ; 011A68(Wx) 011DF7(Rx) 011E29(Wx) 0181F4(Wx) 01831B(Wx) 0183E7(Rx) 0183FA(Wx) 01965E(Wx) 019E55(Rx) 01BA83(Rx) 01BAA7(Wx) 01E05B(Wi) 01FCC2(Rx) 
; ram_04D2                              = $04D2 ; 011A68(Wx) 011DF7(Rx) 011E29(Wx) 0181F4(Wx) 01831B(Wx) 0183E7(Rx) 0183FA(Wx) 01965E(Wx) 01BA83(Rx) 01BAA7(Wx) 01E05B(Wi) 01FCC2(Rx) 
; ram_04D3                              = $04D3 ; 011A68(Wx) 011DF7(Rx) 011E29(Wx) 0181F4(Wx) 01965E(Wx) 01BA83(Rx) 01BAA7(Wx) 01E05B(Wi) 01FCC2(Rx) 
; ram_04D4                              = $04D4 ; 011A68(Wx) 0181F4(Wx) 01BA83(Rx) 01BAA7(Wx) 01E05B(Wi) 01FCC2(Rx) 
; ram_04D5                              = $04D5 ; 008EE0(W)  008F62(R)  009046(W)  0090A4(R)  0090BB(R)  0090C1(W)  011A68(Wx) 01402B(Wi) 014153(W)  0141ED(W)  014865(R)  01486E(W)  0154DC(R)  0154E5(W)  0181F4(Wx) 01E05B(Wi) 01FCC2(Rx) 
    ram_04D5_t01_data_ptr_lo                = ram_04C9_data_ptr_hi_obj + $0C ; 
    ram_04D5_t02_ppu_lo                     = ram_04C9_data_ptr_hi_obj + $0C ; 
    ram_04D5_t03                            = ram_04C9_data_ptr_hi_obj + $0C ; 



; 
ram_04D6_obj                            = $04D6 ; 0181F4(Wx) 01A178(Wx) 01A1CB(Rx) 01A1D3(Wx) 01E05B(Wi) 
; ram_04D7                              = $04D7 ; 0181F4(Wx) 01A178(Wx) 01A1CB(Rx) 01A1D3(Wx) 01E05B(Wi) 
; ram_04D8                              = $04D8 ; 0181F4(Wx) 01A178(Wx) 01A1CB(Rx) 01A1D3(Wx) 01E05B(Wi) 



; handler at 0x010395
ram_04D9_obj                            = $04D9 ; 01012F(Rx) 010253(Wx) 0102B4(Rx) 01033A(Wx) 01034F(Rx) 010383(Rx) 0103B7(Rx) 0103D9(Rx) 01046B(Wx) 0105AA(Rx) 0105C7(W)  0105E0(W)  010640(Wx) 010702(Wx) 010711(Wx) 01074B(Rx) 01076B(Wx) 010816(Rx) 010A9C(Rx) 010C3D(Rx) 010C6A(Wx) 010D88(Rx) 010FE2(Rx) 011028(Wx) 0110F1(Rx) 011330(Rx) 01136D(Wx) 011396(Rx) 0113A5(Wx) 01143B(Wx) 01144F(Wx) 0115B4(Wx) 0116D9(Rx) 014396(Rx) 0144CB(Rx) 01453E(Wx) 01464A(Wx) 0146B1(Wx) 0147A0(Wx) 0147C9(Wx) 014835(Rx) 01484E(Wx) 014898(Wx) 014B52(Wx) 014CA1(Wx) 014D07(Rx) 014D3C(W)  014D78(Wx) 014F49(Wx) 014FC4(Wx) 015012(Wx) 01505F(Wx) 0150C7(Wx) 015257(Wx) 015342(Wx) 015360(Wx) 0154B8(Wx) 01551A(Wx) 015727(Rx) 015754(Wx) 0158A3(Wx) 015D12(W)  015D72(W)  015DDC(W)  015E50(W)  015E96(W)  015F47(W)  015F59(W)  0181F4(Wx) 0184A6(W)  01858F(W)  0185E2(R)  0185FC(R)  018601(W)  018697(R)  01869E(W)  018714(R)  018719(W)  01871F(R)  018726(R)  01872B(W)  018AB2(R)  018AD5(R)  018ADA(W)  01BA30(Wx) 01BAF5(Wx) 01BC60(Rx) 01BCF4(Wx) 01BD5D(Wx) 01CBFE(Wx) 01E05B(Wi) 01E9BB(W)  
; ram_04DA                              = $04DA ; 01012F(Rx) 010253(Wx) 0102B4(Rx) 01033A(Wx) 01034F(Rx) 010383(Rx) 0103B7(Rx) 0103D9(Rx) 01046B(Wx) 0105AA(Rx) 0106F1(Wx) 010702(Wx) 01074B(Rx) 010C3D(Rx) 010D88(Rx) 010FE2(Rx) 011028(Wx) 0110F1(Rx) 011112(Wx) 0111CF(Wx) 011330(Rx) 01136D(Wx) 011396(Rx) 0113A5(Wx) 01143B(Wx) 01144F(Wx) 0115B4(Wx) 0116D9(Rx) 011C4D(Wy) 014396(Rx) 01537E(Rx) 015383(Wx) 0153FD(Rx) 015408(Wx) 0181F4(Wx) 01BA30(Wx) 01BAF5(Wx) 01CBFE(Wx) 01E05B(Wi) 01E9BE(W)  
; ram_04DB                              = $04DB ; 01012F(Rx) 010236(Wx) 010253(Wx) 0102B4(Rx) 01033A(Wx) 01034F(Rx) 010383(Rx) 0103B7(Rx) 0103D9(Rx) 01046B(Wx) 0105AA(Rx) 010702(Wx) 01074B(Rx) 010777(Wx) 0108CB(Wx) 010A55(Rx) 010A9C(Rx) 010C3D(Rx) 010C6A(Wx) 010D88(Rx) 010FE2(Rx) 011028(Wx) 0110F1(Rx) 0111CF(Wx) 011330(Rx) 01136D(Wx) 011396(Rx) 0113A5(Wx) 01143B(Wx) 0115B4(Wx) 0116D9(Rx) 0181F4(Wx) 01BA30(Wx) 01BAF5(Wx) 01CBFE(Wx) 01E05B(Wi) 01E9C1(W)  
; ram_04DC                              = $04DC ; 01012F(Rx) 010236(Wx) 0102B4(Rx) 01033A(Wx) 01034F(Rx) 010383(Rx) 0103B7(Rx) 0103D9(Rx) 01046B(Wx) 0105AA(Rx) 010702(Wx) 01074B(Rx) 010777(Wx) 0108CB(Wx) 010A55(Rx) 010A9C(Rx) 010ADA(Rx) 010AE1(Wx) 010C3D(Rx) 010C6A(Wx) 010D88(Rx) 010FE2(Rx) 011028(Wx) 0111CF(Wx) 011330(Rx) 01136D(Wx) 011396(Rx) 0113A5(Wx) 01143B(Wx) 01144F(Wx) 0116D9(Rx) 011C4D(Wy) 014396(Rx) 0181F4(Wx) 01BA30(Wx) 01BAF5(Wx) 01CBFE(Wx) 01E05B(Wi) 01E9C4(W)  
; ram_04DD                              = $04DD ; 0117BB(Wx) 01187B(Wx) 0118E7(Wx) 011934(Wx) 011A3C(Rx) 011D28(Wx) 011EA1(Rx) 011EBB(Wx) 011ED0(Wx) 011ED3(Rx) 011ED8(Wx) 011F76(Rx) 011F7F(Wx) 011F9F(Wx) 015AF7(Rx) 015B26(Wx) 0181F4(Wx) 01967C(Wx) 019E03(Rx) 01BAF5(Wx) 01C8C4(Rx) 01C8CA(Wx) 01E05B(Wi) 
; ram_04DE                              = $04DE ; 0117BB(Wx) 01187B(Wx) 0118E7(Wx) 011934(Wx) 011A3C(Rx) 011D28(Wx) 011EA1(Rx) 011EBB(Wx) 011ED0(Wx) 011ED3(Rx) 011ED8(Wx) 011F76(Rx) 011F7F(Wx) 015AF7(Rx) 015B26(Wx) 0181F4(Wx) 01967C(Wx) 019E03(Rx) 01BAF5(Wx) 01C8C4(Rx) 01C8CA(Wx) 01E05B(Wi) 
; ram_04DF                              = $04DF ; 0117BB(Wx) 01187B(Wx) 0118E7(Wx) 011934(Wx) 011A3C(Rx) 011D28(Wx) 015AF7(Rx) 015B26(Wx) 0181F4(Wx) 01967C(Wx) 019E03(Rx) 01BAF5(Wx) 01C8C4(Rx) 01C8CA(Wx) 01E05B(Wi) 
; ram_04E0                              = $04E0 ; 0117BB(Wx) 01187B(Wx) 0118E7(Wx) 011934(Wx) 011A3C(Rx) 011EA1(Rx) 011ED0(Wx) 011ED3(Rx) 011ED8(Wx) 015AF7(Rx) 015B26(Wx) 0181F4(Wx) 01967C(Wx) 01BAF5(Wx) 01E05B(Wi) 
; ram_04E1                              = $04E1 ; 0117BB(Wx) 01187B(Wx) 0181F4(Wx) 01BAF5(Wx) 01E05B(Wi) 
; ram_04E2                              = $04E2 ; 008E9E(W)  008FAB(W)  008FCF(W)  00906B(R)  00906E(W)  0117BB(Wx) 01402B(Wi) 014505(R)  0181F4(Wx) 01E05B(Wi) 
    ram_04E2_t01_letter_name_index          = ram_04D9_obj + $09 ; 
    
    ram_04E2_tFD_useless                    = ram_04D9_obj + $09 ; bzk optimize
    ram_04E2_tFE_useless_00                 = ram_04D9_obj + $09 ; bzk optimize, always 00
    ram_04E2_tFF_useless                    = ram_04D9_obj + $09 ; bzk optimize



; 
ram_04E3_obj_delay                      = $04E3 ; 0181F4(Wx) 01A125(Wx) 01A2F0(Wx) 01E05B(Wi) 
; ram_04E4                              = $04E4 ; 0181F4(Wx) 01A125(Wx) 01A2F0(Wx) 01E05B(Wi) 
; ram_04E5                              = $04E5 ; 0181F4(Wx) 01A125(Wx) 01A2F0(Wx) 01E05B(Wi) 



; animation delay until next animation
ram_04E6_obj_anim_timer                 = $04E6 ; 01014F(Wx) 01017D(Wx) 01043F(Wx) 0112AA(Wx) 014617(Wx) 0146AC(Wx) 0148FA(Wx) 0181D5(Wx) 0181F4(Wx) 018380(Wx) 0183D2(Wx) 01B8FB(Wx) 01B903(Wx) 01B90D(Wx) 01B913(Wx) 01BAB0(Wx) 01BC6C(Wx) 01BC78(Wx) 01E05B(Wi) 
; ram_04E7                              = $04E7 ; 01014F(Wx) 01017D(Wx) 01043F(Wx) 0112AA(Wx) 0181D5(Wx) 0181F4(Wx) 018380(Wx) 0183D2(Wx) 01B8FB(Wx) 01B90D(Wx) 01BAB0(Wx) 01E05B(Wi) 
; ram_04E8                              = $04E8 ; 01014F(Wx) 01017D(Wx) 01043F(Wx) 0112AA(Wx) 0181D5(Wx) 0181F4(Wx) 018380(Wx) 0183D2(Wx) 01B90D(Wx) 01BAB0(Wx) 01E05B(Wi) 
; ram_04E9                              = $04E9 ; 01014F(Wx) 01017D(Wx) 01043F(Wx) 0112AA(Wx) 0181F4(Wx) 01B90D(Wx) 01BAB0(Wx) 01E05B(Wi) 
; ram_04EA                              = $04EA ; 011A50(Wx) 011DE3(Wx) 011E11(Wx) 0181F4(Wx) 018322(Wx) 0183A0(Wx) 018401(Wx) 01B8FB(Wx) 01B90D(Wx) 01BAB0(Wx) 01E05B(Wi) 
; ram_04EB                              = $04EB ; 011A50(Wx) 011DE3(Wx) 011E11(Wx) 0181F4(Wx) 018322(Wx) 0183A0(Wx) 018401(Wx) 01B8FB(Wx) 01BAB0(Wx) 01E05B(Wi) 
; ram_04EC                              = $04EC ; 011A50(Wx) 011DE3(Wx) 011E11(Wx) 0181F4(Wx) 018322(Wx) 0183A0(Wx) 018401(Wx) 01B8FB(Wx) 01BAB0(Wx) 01E05B(Wi) 
; ram_04ED                              = $04ED ; 011A50(Wx) 011DE3(Wx) 011E11(Wx) 0181F4(Wx) 01B8FB(Wx) 01BAB0(Wx) 01E05B(Wi) 
; ram_04EE                              = $04EE ; 011A50(Wx) 0181F4(Wx) 01B8FB(Wx) 01BAB0(Wx) 01E05B(Wi) 
; ram_04EF                              = $04EF ; 011A50(Wx) 0181F4(Wx) 01E05B(Wi) 



; free addresses
; ram_04F0                              = $04F0 ; 0181F4(Wx) 01E05B(Wi) 
; ram_04F1                              = $04F1 ; 0181F4(Wx) 01E05B(Wi) 
; ram_04F2                              = $04F2 ; 0181F4(Wx) 01E05B(Wi) 



; timer?
; +80 = ???
ram_04F3_obj                            = $04F3 ; 00BF53(Wx) 010125(Rx) 01013F(Wx) 0105CA(W)  0105CD(R)  011384(Wx) 01159C(Wx) 0143B4(Rx) 0144EF(R)  01456A(Rx) 014595(Wx) 0145D0(Wx) 01465E(Rx) 0146A2(Rx) 0146BA(Rx) 014703(Rx) 014709(Wx) 01476C(Wx) 014778(Wx) 0147B8(Wx) 0147C4(Wx) 014808(Wx) 014819(Wx) 01482C(Wx) 014853(Wx) 0148EA(Wx) 0148F5(Wx) 014915(Wx) 0149B4(Wx) 014A00(Wx) 014A18(Wx) 014A4A(Wx) 014A52(Wx) 014A9F(Wx) 014AAD(Wx) 014C1E(Rx) 014C3A(Rx) 014C45(Wx) 014CA6(Wx) 014CB5(Wx) 014CBD(Wx) 014CD7(Wx) 014CFC(Rx) 014D10(Wx) 014D39(W)  014DE3(Wx) 014EA1(Wx) 014F2C(Rx) 014FA5(Rx) 014FB5(Wx) 014FE9(Rx) 015021(Rx) 0150B2(Wx) 0150DB(Wx) 015102(Wx) 01510F(Rx) 015129(Wx) 01515D(Wx) 01518B(Wx) 0151F2(Wx) 01525D(Wx) 015345(Wx) 015365(Wx) 015578(Wx) 0155B3(Wx) 01565B(Wx) 015671(Wx) 01568A(Wx) 0156C8(Wx) 01573C(Wx) 015786(Wx) 01586E(Wx) 015876(Wx) 015888(Wx) 015C95(R)  015CBB(W)  015CC0(R)  015D5C(R)  015D77(W)  015D82(R)  015E0D(R)  015E24(R)  015E29(W)  015E55(W)  015E8A(R)  015E9B(W)  015F97(W)  0181F4(Wx) 01860F(W)  018924(Rx) 018929(Wx) 01897D(Wx) 019465(W)  01951E(R)  01952A(W)  019548(R)  019554(W)  019569(R)  01957A(R)  01957F(W)  01B777(Wx) 01B8B5(Wx) 01B8E5(Wx) 01BAF8(Wx) 01BC66(Rx) 01BC9E(Rx) 01BCAA(Wx) 01BD39(Wx) 01BDD5(Wx) 01CC34(Wx) 01E05B(Wi) 
; ram_04F4                              = $04F4 ; 00BF53(Wx) 010125(Rx) 01013F(Wx) 011384(Wx) 01159C(Wx) 0143B4(Rx) 0153A8(Wx) 0153AB(Rx) 0153B4(Wx) 0181F4(Wx) 018924(Rx) 018929(Wx) 01897D(Wx) 019470(W)  019514(W)  01951B(W)  01953E(W)  019545(W)  01955F(W)  019566(W)  01BAF8(Wx) 01BC66(Rx) 01CC34(Wx) 01E05B(Wi) 
; ram_04F5                              = $04F5 ; 010125(Rx) 01013F(Wx) 011384(Wx) 01159C(Wx) 0143B4(Rx) 0181F4(Wx) 019468(W)  01BAF8(Wx) 01CC34(Wx) 01E05B(Wi) 
; ram_04F6                              = $04F6 ; 010125(Rx) 01013F(Wx) 011384(Wx) 0143B4(Rx) 0181F4(Wx) 01946B(W)  01BAF8(Wx) 01CC34(Wx) 01E05B(Wi) 
; ram_04F7                              = $04F7 ; 0117E8(Wx) 0181F4(Wx) 01BAF8(Wx) 01C748(Rx) 01C89C(Rx) 01C8A1(Wx) 01E05B(Wi) 
; ram_04F8                              = $04F8 ; 0117E8(Wx) 0181F4(Wx) 01BAF8(Wx) 01C748(Rx) 01C89C(Rx) 01C8A1(Wx) 01E05B(Wi) 
; ram_04F9                              = $04F9 ; 0117E8(Wx) 0181F4(Wx) 01BAF8(Wx) 01C748(Rx) 01C89C(Rx) 01C8A1(Wx) 01E05B(Wi) 
; ram_04FA                              = $04FA ; 0117E8(Wx) 0181F4(Wx) 01BAF8(Wx) 01C748(Rx) 01E05B(Wi) 
; ram_04FB                              = $04FB ; 0117E8(Wx) 0181F4(Wx) 01BAF8(Wx) 01C748(Rx) 01E05B(Wi) 
; ram_04FC                              = $04FC ; 0117E8(Wx) 01402B(Wi) 0181F4(Wx) 01BEEB(R)  01BEF0(W)  01C748(Rx) 01E05B(Wi) 
    ram_04F3_t01_palette_index              = ram_04F3_obj ; 
    
    ram_04F4_t01_delay                      = ram_04F3_obj + $01 ; 



; free addresses
; ram_04FD                              = $04FD ; 0181F4(Wx) 01E05B(Wi) 
; ram_04FE                              = $04FE ; 0181F4(Wx) 01E05B(Wi) 
; ram_04FF                              = $04FF ; 0181F4(Wx) 01E05B(Wi) 



; 
ram_spd_X_fr_obj                        = $0500 ; 01025B(Wx) 01051C(Wx) 010568(Wx) 010B41(Wx) 010CAE(Wx) 010D80(Rx) 010DB1(Wx) 010DC5(Rx) 011033(Wx) 011550(Wx) 014377(Rx) 0143E1(Rx) 017A74(Rx) 017AC1(Rx) 0181F4(Wx) 018946(Wx) 0189A4(Rx) 01B88C(Rx) 01BB15(Wx) 01BB5B(Wx) 01BBA6(Rx) 01BBA9(Wx) 01CC25(Wx) 01E05B(Wi) 
; ram_0501                              = $0501 ; 01025B(Wx) 01051C(Wx) 010568(Wx) 010CAE(Wx) 010D80(Rx) 010DB1(Wx) 010DC5(Rx) 011033(Wx) 011550(Wx) 014377(Rx) 0143E1(Rx) 015478(Wx) 017A74(Rx) 017AC1(Rx) 0181F4(Wx) 018946(Wx) 0189A4(Rx) 01BB15(Wx) 01BBA6(Rx) 01BBA9(Wx) 01CC25(Wx) 01E05B(Wi) 
; ram_0502                              = $0502 ; 01023C(Wx) 01025B(Wx) 01051C(Wx) 010568(Wx) 01090B(Wx) 010B41(Wx) 010CAE(Wx) 010D80(Rx) 010DB1(Wx) 010DC5(Rx) 011033(Wx) 011550(Wx) 014377(Rx) 017A74(Rx) 017AC1(Rx) 0181F4(Wx) 01BB15(Wx) 01BBA6(Rx) 01BBA9(Wx) 01CC25(Wx) 01E05B(Wi) 
; ram_0503                              = $0503 ; 01023C(Wx) 01051C(Wx) 010568(Wx) 01090B(Wx) 010B41(Wx) 010CAE(Wx) 010D80(Rx) 010DB1(Wx) 010DC5(Rx) 011033(Wx) 011550(Wx) 014377(Rx) 0143E1(Rx) 017A74(Rx) 017AC1(Rx) 0181F4(Wx) 01BB15(Wx) 01BBA6(Rx) 01BBA9(Wx) 01CC25(Wx) 01E05B(Wi) 
; ram_0504                              = $0504 ; 011A9C(Wx) 011D58(Rx) 011D71(Rx) 011F87(Wx) 011FB2(Wx) 0143E1(Rx) 0181F4(Wx) 01BB15(Wx) 01BB5B(Wx) 01BBD0(Rx) 01BBD8(Wx) 01C8E1(Wx) 01E05B(Wi) 
; ram_0505                              = $0505 ; 011A9C(Wx) 011D58(Rx) 011D71(Rx) 011F87(Wx) 0143E1(Rx) 0181F4(Wx) 01BB15(Wx) 01BB5B(Wx) 01BBD0(Rx) 01BBD8(Wx) 01C8E1(Wx) 01E05B(Wi) 
; ram_0506                              = $0506 ; 011A9C(Wx) 011D58(Rx) 011D71(Rx) 0143E1(Rx) 0181F4(Wx) 01BB15(Wx) 01BB5B(Wx) 01BBD0(Rx) 01BBD8(Wx) 01C8E1(Wx) 01E05B(Wi) 
; ram_0507                              = $0507 ; 011A9C(Wx) 011D58(Rx) 011D71(Rx) 0143E1(Rx) 0181F4(Wx) 01BB15(Wx) 01BB5B(Wx) 01BBD0(Rx) 01BBD8(Wx) 01E05B(Wi) 
; ram_0508                              = $0508 ; 011A9C(Wx) 011D58(Rx) 011D71(Rx) 0143E1(Rx) 0181F4(Wx) 01BB15(Wx) 01BB5B(Wx) 01BBD0(Rx) 01BBD8(Wx) 01E05B(Wi) 
; ram_0509                              = $0509 ; 008EE6(W)  008F67(R)  00904B(W)  0090A9(R)  0090C4(R)  0090C9(W)  011A9C(Wx) 011D58(Rx) 011D71(Rx) 01402B(Wi) 01427E(R)  0159CB(W)  015ADF(W)  015B23(W)  0181F4(Wx) 01E05B(Wi) 
    ram_0509_t01_data_ptr_hi                = ram_spd_X_fr_obj + $09 ; 
    ram_0509_t02                            = ram_spd_X_fr_obj + $09 ; 
    ram_0509_t03_ppu_hi                     = ram_spd_X_fr_obj + $09 ; 



; free addresses
; ram_050A                              = $050A ; 0181F4(Wx) 01E05B(Wi) 
; ram_050B                              = $050B ; 0181F4(Wx) 01E05B(Wi) 
; ram_050C                              = $050C ; 0181F4(Wx) 01E05B(Wi) 



; 
ram_spd_X_lo_obj                        = $050D ; 01024E(Wx) 0104FE(Wx) 010510(Wx) 010748(Wx) 0109F9(Wx) 010B3B(Wx) 010CA9(Wx) 010D83(Rx) 010D8D(Rx) 010DAE(Wx) 010DB4(Rx) 010DCE(Rx) 011030(Wx) 0111F8(Wx) 011368(Wx) 0113B7(Wx) 0113CA(Wx) 01154D(Wx) 01437A(Rx) 0143D8(Rx) 0148E7(Wx) 014ACF(Wx) 014B3F(Rx) 014B47(Wx) 014E49(Rx) 014E63(Wx) 0158C7(Wx) 015E4B(W)  017A7E(Rx) 017AB8(Rx) 017ACB(Rx) 0181F4(Wx) 018941(Wx) 01899B(Rx) 0189AE(Rx) 01B88F(Rx) 01B9CF(Wx) 01BB18(Wx) 01BB61(Wx) 01BBAF(Rx) 01BBB2(Wx) 01BE7A(Wx) 01CC22(Wx) 01E05B(Wi) 
; ram_050E                              = $050E ; 01024E(Wx) 0104FE(Wx) 010507(Wx) 010748(Wx) 0109F9(Wx) 010CA9(Wx) 010D83(Rx) 010D8D(Rx) 010DAE(Wx) 010DB4(Rx) 010DCE(Rx) 011030(Wx) 0111CA(Wx) 011368(Wx) 0113B7(Wx) 0113CA(Wx) 01154D(Wx) 01437A(Rx) 0143D8(Rx) 0153BC(Wx) 015473(Wx) 017A7E(Rx) 017AB8(Rx) 017ACB(Rx) 0181F4(Wx) 018941(Wx) 01899B(Rx) 0189AE(Rx) 01B9CF(Wx) 01BB18(Wx) 01BBAF(Rx) 01BBB2(Wx) 01CC22(Wx) 01E05B(Wi) 
; ram_050F                              = $050F ; 010239(Wx) 01024E(Wx) 0104FE(Wx) 010507(Wx) 010748(Wx) 01077C(Wx) 010906(Wx) 0109F9(Wx) 010B3B(Wx) 010CA9(Wx) 010D83(Rx) 010D8D(Rx) 010DAE(Wx) 010DB4(Rx) 010DCE(Rx) 011030(Wx) 0111CA(Wx) 011368(Wx) 0113B7(Wx) 0113CA(Wx) 01154D(Wx) 01437A(Rx) 017A7E(Rx) 017AB8(Rx) 017ACB(Rx) 0181F4(Wx) 01B9CF(Wx) 01BB18(Wx) 01BBAF(Rx) 01BBB2(Wx) 01CC22(Wx) 01E05B(Wi) 
; ram_0510                              = $0510 ; 010239(Wx) 0104FE(Wx) 010507(Wx) 010748(Wx) 01077C(Wx) 010906(Wx) 010B3B(Wx) 010CA9(Wx) 010D83(Rx) 010D8D(Rx) 010DAE(Wx) 010DB4(Rx) 010DCE(Rx) 011030(Wx) 0111CA(Wx) 011368(Wx) 0113B7(Wx) 0113CA(Wx) 01154D(Wx) 01437A(Rx) 0143D8(Rx) 017A7E(Rx) 017AB8(Rx) 017ACB(Rx) 0181F4(Wx) 01B9CF(Wx) 01BB18(Wx) 01BBAF(Rx) 01BBB2(Wx) 01CC22(Wx) 01E05B(Wi) 
; ram_0511                              = $0511 ; 011A97(Wx) 011D5B(Rx) 011D60(Rx) 011D7A(Rx) 011F84(Wx) 011FAF(Wx) 0143D8(Rx) 0181F4(Wx) 01BB18(Wx) 01BB61(Wx) 01BBDB(Rx) 01BBE2(Wx) 01C8DC(Wx) 01E05B(Wi) 
; ram_0512                              = $0512 ; 011A97(Wx) 011D5B(Rx) 011D60(Rx) 011D7A(Rx) 011F84(Wx) 0143D8(Rx) 0181F4(Wx) 01BB18(Wx) 01BB61(Wx) 01BBDB(Rx) 01BBE2(Wx) 01C8DC(Wx) 01E05B(Wi) 
; ram_0513                              = $0513 ; 011A97(Wx) 011D5B(Rx) 011D60(Rx) 011D7A(Rx) 0143D8(Rx) 0181F4(Wx) 01BB18(Wx) 01BB61(Wx) 01BBDB(Rx) 01BBE2(Wx) 01C8DC(Wx) 01E05B(Wi) 
; ram_0514                              = $0514 ; 011A97(Wx) 011D5B(Rx) 011D60(Rx) 011D7A(Rx) 0143D8(Rx) 0181F4(Wx) 01BB18(Wx) 01BB61(Wx) 01BBDB(Rx) 01BBE2(Wx) 01E05B(Wi) 
; ram_0515                              = $0515 ; 011A97(Wx) 011D5B(Rx) 011D60(Rx) 011D7A(Rx) 0143D8(Rx) 0181F4(Wx) 01BB18(Wx) 01BB61(Wx) 01BBDB(Rx) 01BBE2(Wx) 01E05B(Wi) 
; ram_0516                              = $0516 ; 008EF5(W)  008F70(R)  008F83(W)  011A97(Wx) 011D5B(Rx) 011D60(Rx) 011D7A(Rx) 01402B(Wi) 01414B(W)  01449C(W)  014556(R)  01487D(R)  014D60(R)  0181F4(Wx) 01B78A(R)  01E05B(Wi) 
    ram_0516_t01_data_index                 = ram_spd_X_lo_obj + $09 ; 
    ram_0516_t02                            = ram_spd_X_lo_obj + $09 ; 
    ram_0516_t03_flag                       = ram_spd_X_lo_obj + $09 ; 
    ram_0516_t04                            = ram_spd_X_lo_obj + $09 ; bzk optimize, couldd be useless



; bzk optimize, useless addresses
ram_0517_useless                        = $0517 ; 0181F4(Wx) 01A175(Wx) 01E05B(Wi) 
; ram_0518                              = $0518 ; 0181F4(Wx) 01A175(Wx) 01E05B(Wi) 
; ram_0519                              = $0519 ; 0181F4(Wx) 01A175(Wx) 01E05B(Wi) 



; 
ram_spd_Y_fr_obj                        = $051A ; 01051F(Wx) 01056E(Wx) 010B46(Wx) 010CB8(Wx) 010DF0(Rx) 010E09(Rx) 010F4F(Wx) 01148E(Wx) 011556(Wx) 0143AC(Rx) 014409(Rx) 017A92(Rx) 017AE9(Rx) 0181F4(Wx) 018950(Wx) 0189CC(Rx) 01B875(Rx) 01BB21(Wx) 01BB67(Wx) 01BBC0(Rx) 01BBC3(Wx) 01BE3C(Wx) 01CC2B(Wx) 01E05B(Wi) 
; ram_051B                              = $051B ; 01051F(Wx) 01056E(Wx) 010CB8(Wx) 010DF0(Rx) 010E09(Rx) 010F4F(Wx) 01148E(Wx) 011556(Wx) 0143AC(Rx) 014409(Rx) 01528E(Rx) 015296(Wx) 015482(Wx) 017A92(Rx) 017AE9(Rx) 0181F4(Wx) 018950(Wx) 0189CC(Rx) 01BA25(Wx) 01BB21(Wx) 01BBC0(Rx) 01BBC3(Wx) 01CC2B(Wx) 01E05B(Wi) 
; ram_051C                              = $051C ; 01051F(Wx) 01056E(Wx) 01090E(Wx) 010B46(Wx) 010CB8(Wx) 010DF0(Rx) 010E09(Rx) 010F4F(Wx) 01148E(Wx) 011556(Wx) 0143AC(Rx) 014409(Rx) 01528E(Rx) 015296(Wx) 017A92(Rx) 017AE9(Rx) 0181F4(Wx) 01BA25(Wx) 01BB21(Wx) 01BBC0(Rx) 01BBC3(Wx) 01CC2B(Wx) 01E05B(Wi) 
; ram_051D                              = $051D ; 01051F(Wx) 01056E(Wx) 01090E(Wx) 010B46(Wx) 010CB8(Wx) 010DF0(Rx) 010E09(Rx) 010F4F(Wx) 01148E(Wx) 011556(Wx) 0143AC(Rx) 014409(Rx) 01528E(Rx) 015296(Wx) 017A92(Rx) 017AE9(Rx) 0181F4(Wx) 01BA25(Wx) 01BB21(Wx) 01BBC0(Rx) 01BBC3(Wx) 01CC2B(Wx) 01E05B(Wi) 
; ram_051E                              = $051E ; 011AA6(Wx) 011D8D(Rx) 011DA6(Rx) 011F8D(Wx) 011FB5(Wx) 014409(Rx) 015A68(Rx) 015A6B(Wx) 0181F4(Wx) 01BB21(Wx) 01BB67(Wx) 01C8EB(Wx) 01E05B(Wi) 
; ram_051F                              = $051F ; 011AA6(Wx) 011D8D(Rx) 011DA6(Rx) 011F8D(Wx) 014409(Rx) 015A68(Rx) 015A6B(Wx) 0181F4(Wx) 01BB21(Wx) 01BB67(Wx) 01C8EB(Wx) 01E05B(Wi) 
; ram_0520                              = $0520 ; 011AA6(Wx) 011D8D(Rx) 011DA6(Rx) 014409(Rx) 015A68(Rx) 015A6B(Wx) 0181F4(Wx) 01BB21(Wx) 01BB67(Wx) 01C8EB(Wx) 01E05B(Wi) 
; ram_0521                              = $0521 ; 011AA6(Wx) 011D8D(Rx) 011DA6(Rx) 014409(Rx) 015A68(Rx) 015A6B(Wx) 0181F4(Wx) 01BB21(Wx) 01BB67(Wx) 01E05B(Wi) 
; ram_0522                              = $0522 ; 011AA6(Wx) 011D8D(Rx) 011DA6(Rx) 014409(Rx) 015A68(Rx) 015A6B(Wx) 0181F4(Wx) 01BB21(Wx) 01BB67(Wx) 01E05B(Wi) 
; ram_0523                              = $0523 ; 008EB1(W)  008F06(R)  008F0D(W)  011AA6(Wx) 011D8D(Rx) 01402B(Wi) 01412B(W)  0142C1(R)  0142C8(W)  01451B(R)  014629(W)  014CE1(W)  0153D2(W)  0159D5(R)  015DF7(R)  015DFC(W)  015F52(R)  015F5E(W)  015F6F(W)  0181F4(Wx) 01E05B(Wi) 01F2FD(R)  
    ram_0523_t01                            = ram_spd_Y_fr_obj + $09 ; 
    ram_0523_t02                            = ram_spd_Y_fr_obj + $09 ; 
    ram_0523_t03                            = ram_spd_Y_fr_obj + $09 ; 
    ram_0523_t04                            = ram_spd_Y_fr_obj + $09 ; 



; 
ram_0524_obj_lo                         = $0524 ; 0181F4(Wx) 01A185(Wx) 01A1DF(Wx) 01A201(Rx) 01A263(Wx) 01E05B(Wi) 
; ram_0525                              = $0525 ; 0181F4(Wx) 01A185(Wx) 01A1DF(Wx) 01A201(Rx) 01A263(Wx) 01E05B(Wi) 
; ram_0526                              = $0526 ; 0181F4(Wx) 01A185(Wx) 01A1DF(Wx) 01A201(Rx) 01A263(Wx) 01E05B(Wi) 



; 
ram_spd_Y_lo_obj                        = $0527 ; 010522(Wx) 01056B(Wx) 0106CF(Rx) 01099B(Wx) 010B49(Wx) 010CB3(Wx) 010DF3(Rx) 010DF8(Rx) 010E12(Rx) 010F55(Wx) 01148B(Wx) 011553(Wx) 0143AF(Rx) 014400(Rx) 01445F(Rx) 0144AF(Wx) 0144BB(Rx) 014AD4(Wx) 014B4C(Wx) 01535B(Wx) 015E41(W)  017A9C(Rx) 017AE0(Rx) 017AF3(Rx) 0181F4(Wx) 01894B(Wx) 0189C3(Rx) 0189D6(Rx) 01B878(Rx) 01B9D5(Wx) 01BB1E(Wx) 01BB6D(Wx) 01BBC9(Rx) 01BBCC(Wx) 01BE42(Wx) 01CC28(Wx) 01E05B(Wi) 
; ram_0528                              = $0528 ; 010522(Wx) 01056B(Wx) 0106CF(Rx) 01099B(Wx) 010CB3(Wx) 010DF3(Rx) 010DF8(Rx) 010E12(Rx) 010F55(Wx) 01148B(Wx) 011553(Wx) 0143AF(Rx) 014400(Rx) 01445F(Rx) 015299(Rx) 0152A0(Wx) 0153C2(Wx) 01547D(Wx) 017A9C(Rx) 017AE0(Rx) 017AF3(Rx) 0181F4(Wx) 01894B(Wx) 0189C3(Rx) 0189D6(Rx) 01B9D5(Wx) 01BA2B(Wx) 01BB1E(Wx) 01BBC9(Rx) 01BBCC(Wx) 01CC28(Wx) 01E05B(Wi) 
; ram_0529                              = $0529 ; 010522(Wx) 01056B(Wx) 0106CF(Rx) 010911(Wx) 01099B(Wx) 010B49(Wx) 010CB3(Wx) 010DF3(Rx) 010DF8(Rx) 010E12(Rx) 010F55(Wx) 01148B(Wx) 011553(Wx) 0143AF(Rx) 014400(Rx) 01445F(Rx) 015299(Rx) 0152A0(Wx) 017A9C(Rx) 017AE0(Rx) 017AF3(Rx) 0181F4(Wx) 01B9D5(Wx) 01BA2B(Wx) 01BB1E(Wx) 01BBC9(Rx) 01BBCC(Wx) 01CC28(Wx) 01E05B(Wi) 
; ram_052A                              = $052A ; 010522(Wx) 01056B(Wx) 0106CF(Rx) 010911(Wx) 01099B(Wx) 010B49(Wx) 010CB3(Wx) 010DF3(Rx) 010DF8(Rx) 010E12(Rx) 010F55(Wx) 01148B(Wx) 011553(Wx) 0143AF(Rx) 014400(Rx) 01445F(Rx) 015299(Rx) 0152A0(Wx) 017A9C(Rx) 017AE0(Rx) 017AF3(Rx) 0181F4(Wx) 01B9D5(Wx) 01BA2B(Wx) 01BB1E(Wx) 01BBC9(Rx) 01BBCC(Wx) 01CC28(Wx) 01E05B(Wi) 
; ram_052B                              = $052B ; 011AA1(Wx) 011D90(Rx) 011D95(Rx) 011DAF(Rx) 011F8A(Wx) 011FC1(Wx) 011FCA(Wx) 014400(Rx) 015A5F(Wx) 015A70(Rx) 015A73(Wx) 0181F4(Wx) 01BB1E(Wx) 01BB6D(Wx) 01C8E6(Wx) 01E05B(Wi) 
; ram_052C                              = $052C ; 011AA1(Wx) 011D90(Rx) 011D95(Rx) 011DAF(Rx) 011F8A(Wx) 014400(Rx) 015A5F(Wx) 015A70(Rx) 015A73(Wx) 0181F4(Wx) 01BB1E(Wx) 01BB6D(Wx) 01C8E6(Wx) 01E05B(Wi) 
; ram_052D                              = $052D ; 011AA1(Wx) 011D90(Rx) 011D95(Rx) 011DAF(Rx) 014400(Rx) 015A5F(Wx) 015A70(Rx) 015A73(Wx) 0181F4(Wx) 01BB1E(Wx) 01BB6D(Wx) 01C8E6(Wx) 01E05B(Wi) 
; ram_052E                              = $052E ; 011AA1(Wx) 011D90(Rx) 011D95(Rx) 011DAF(Rx) 014400(Rx) 015A5F(Wx) 015A70(Rx) 015A73(Wx) 0181F4(Wx) 01BB1E(Wx) 01BB6D(Wx) 01E05B(Wi) 
; ram_052F                              = $052F ; 011AA1(Wx) 011D90(Rx) 011D95(Rx) 011DAF(Rx) 014400(Rx) 015A5F(Wx) 015A70(Rx) 015A73(Wx) 0181F4(Wx) 01BB1E(Wx) 01BB6D(Wx) 01E05B(Wi) 
; ram_0530                              = $0530 ; 008EB4(W)  008FFA(R)  008FFF(W)  0090AE(R)  011AA1(Wx) 011D90(Rx) 01402B(Wi) 014522(R)  014643(R)  0146FB(R)  014D5A(R)  014F42(R)  015045(R)  0151D2(R)  0154D6(R)  015706(R)  015735(R)  0181F4(Wx) 01B982(W)  01E05B(Wi) 
    ram_0530_t01_buffer_index               = ram_spd_Y_lo_obj + $09 ; 
    ram_0530_t02_flag                       = ram_spd_Y_lo_obj + $09 ; 



; 
ram_0531_obj                            = $0531 ; 0181F4(Wx) 01A17B(Wx) 01A1BF(Rx) 01A1E3(Rx) 01A1E8(Wx) 01A1F6(Rx) 01A259(Rx) 01A25E(Wx) 01E05B(Wi) 
; ram_0532                              = $0532 ; 0181F4(Wx) 01A17B(Wx) 01A1BF(Rx) 01A1E3(Rx) 01A1E8(Wx) 01A1F6(Rx) 01A259(Rx) 01A25E(Wx) 01E05B(Wi) 
; ram_0533                              = $0533 ; 0181F4(Wx) 01A17B(Wx) 01A1BF(Rx) 01A1E3(Rx) 01A1E8(Wx) 01A1F6(Rx) 01A259(Rx) 01A25E(Wx) 01E05B(Wi) 



; 
ram_0534_obj                            = $0534 ; 010242(Rx) 010428(Rx) 01042F(Wx) 010434(Wx) 0104E1(Rx) 01052D(Rx) 010532(Wx) 010541(Rx) 010544(Wx) 010558(Rx) 01058B(Rx) 010592(Wx) 01073C(Rx) 0107B9(Rx) 0107C2(Rx) 0107C9(Wx) 010988(Rx) 0109E4(Rx) 0109E9(Wx) 0109EC(Rx) 010B1C(Rx) 010B27(Wx) 010B2D(Rx) 010B58(Rx) 010B61(Rx) 010B68(Wx) 010B76(Rx) 010B7B(Wx) 010B83(Rx) 010B8C(Rx) 010B93(Wx) 010C0D(Rx) 0110FC(Rx) 01126F(Rx) 01141B(Rx) 011424(Rx) 01142B(Wx) 011471(Rx) 01147A(Rx) 011481(Wx) 0114CE(Rx) 0114D7(Rx) 0114DE(Wx) 011578(Rx) 0115BC(Rx) 0115C0(Rx) 0116B1(Wx) 0116E0(Rx) 0116E9(Rx) 0116F0(Wx) 015D1C(R)  015F1A(W)  0181F4(Wx) 018338(R)  018430(W)  01844B(W)  018456(W)  01845F(W)  018492(W)  0184BD(W)  0184E7(W)  01850B(W)  0185C3(W)  018619(W)  019E78(W)  019E7E(R)  019E9D(W)  019EA0(R)  019EA9(W)  019EF6(W)  019EF9(R)  019F1A(R)  01B9BD(Wx) 01BA98(Rx) 01BB2F(Wx) 01CC47(Wx) 01E05B(Wi) 01EF87(W)  01EFA3(W)  
; ram_0535                              = $0535 ; 010242(Rx) 010428(Rx) 01042F(Wx) 010434(Wx) 0104E1(Rx) 01052D(Rx) 010532(Wx) 010541(Rx) 010544(Wx) 010558(Rx) 01058B(Rx) 010592(Wx) 01073C(Rx) 0107B9(Rx) 0107C2(Rx) 0107C9(Wx) 010988(Rx) 0109E4(Rx) 0109E9(Wx) 0109EC(Rx) 010C0D(Rx) 0110FC(Rx) 0111BE(Rx) 01126F(Rx) 01141B(Rx) 011424(Rx) 01142B(Wx) 011471(Rx) 01147A(Rx) 011481(Wx) 0114CE(Rx) 0114D7(Rx) 0114DE(Wx) 011578(Rx) 0115BC(Rx) 0115C0(Rx) 0116B1(Wx) 0116E0(Rx) 0116E9(Rx) 0116F0(Wx) 0181F4(Wx) 01B9BD(Wx) 01BA98(Rx) 01CC47(Wx) 01E05B(Wi) 
; ram_0536                              = $0536 ; 010242(Rx) 010428(Rx) 01042F(Wx) 010434(Wx) 0104E1(Rx) 01052D(Rx) 010532(Wx) 010541(Rx) 010544(Wx) 010558(Rx) 01058B(Rx) 010592(Wx) 01073C(Rx) 0107B9(Rx) 0107C2(Rx) 0107C9(Wx) 0108D3(Rx) 0108DE(Wx) 0108EE(Rx) 0108F1(Wx) 0108FA(Rx) 010988(Rx) 0109E4(Rx) 0109E9(Wx) 0109EC(Rx) 010B1C(Rx) 010B27(Wx) 010B2D(Rx) 010B58(Rx) 010B61(Rx) 010B68(Wx) 010B83(Rx) 010B8C(Rx) 010B93(Wx) 010C0D(Rx) 0110FC(Rx) 0111BE(Rx) 01126F(Rx) 01141B(Rx) 011424(Rx) 01142B(Wx) 011471(Rx) 01147A(Rx) 011481(Wx) 0114CE(Rx) 0114D7(Rx) 0114DE(Wx) 011578(Rx) 0115BC(Rx) 0115C0(Rx) 0116E0(Rx) 0116E9(Rx) 0116F0(Wx) 0181F4(Wx) 0187FE(W)  018810(W)  01882A(R)  01883B(R)  01B9BD(Wx) 01BA98(Rx) 01CC47(Wx) 01E05B(Wi) 
; ram_0537                              = $0537 ; 010428(Rx) 01042F(Wx) 010434(Wx) 0104E1(Rx) 01052D(Rx) 010532(Wx) 010541(Rx) 010544(Wx) 010558(Rx) 01058B(Rx) 010592(Wx) 01073C(Rx) 0107B9(Rx) 0107C2(Rx) 0107C9(Wx) 0108D3(Rx) 0108DE(Wx) 0108EE(Rx) 0108F1(Wx) 0108FA(Rx) 010988(Rx) 010B1C(Rx) 010B27(Wx) 010B2D(Rx) 010B58(Rx) 010B61(Rx) 010B68(Wx) 010B83(Rx) 010B8C(Rx) 010B93(Wx) 010C0D(Rx) 0111BE(Rx) 01126F(Rx) 01141B(Rx) 011424(Rx) 01142B(Wx) 011471(Rx) 01147A(Rx) 011481(Wx) 0114CE(Rx) 0114D7(Rx) 0114DE(Wx) 0116E0(Rx) 0116E9(Rx) 0116F0(Wx) 0181F4(Wx) 018411(R)  01841C(R)  01846D(R)  018478(R)  018498(W)  0184B1(R)  0184F2(W)  018535(R)  018552(R)  0185B9(W)  018608(R)  01873D(W)  01888E(W)  01889C(R)  0188A8(R)  0188D6(W)  018A68(W)  01B9BD(Wx) 01BA98(Rx) 01CC47(Wx) 01E05B(Wi) 
; ram_0538                              = $0538 ; 011801(Wx) 011943(Wx) 011D05(Wx) 011D30(Wx) 011E39(Rx) 011E40(Wx) 011E51(Wx) 011E58(Wx) 011EF9(Rx) 011F00(Wx) 011F03(Rx) 011FCF(Wx) 011FDE(Wx) 0181F4(Wx) 018503(W)  01853A(R)  018544(W)  0194B2(W)  0194B5(R)  0194D4(W)  0194D7(R)  019688(Wx) 01971B(W)  019832(W)  019835(R)  01E05B(Wi) 
; ram_0539                              = $0539 ; 011801(Wx) 011943(Wx) 011D05(Wx) 011D30(Wx) 011E39(Rx) 011E40(Wx) 011E51(Wx) 011E58(Wx) 011EF9(Rx) 011F00(Wx) 011F03(Rx) 0181F4(Wx) 018549(W)  018575(R)  0185D5(W)  019688(Wx) 01E05B(Wi) 
; ram_053A                              = $053A ; 011801(Wx) 011943(Wx) 011D05(Wx) 011D30(Wx) 019688(Wx) 01E05B(Wi) 
; ram_053B                              = $053B ; 011801(Wx) 011943(Wx) 011E39(Rx) 011E40(Wx) 011E51(Wx) 011E58(Wx) 011EF9(Rx) 011F00(Wx) 011F03(Rx) 0181FC(Wx) 019688(Wx) 01E05B(Wi) 
; ram_053C                              = $053C ; 011801(Wx) 0181FC(Wx) 01E05B(Wi) 
; ram_053D                              = $053D ; 011801(Wx) 01402B(Wi) 014236(R)  015BA9(W)  015BC9(R)  015BDA(R)  0181FC(Wx) 01BCC0(R)  01BCC5(W)  01BEBE(W)  01E05B(Wi) 
    ram_0534_t01_map_movement_handler_index = ram_0534_obj ; cleared at 0x0181FC and 0x0181F4, see con_0534
    ram_0534_t02                            = ram_0534_obj ; 
    ram_0534_t03                            = ram_0534_obj ; bzk warning, trace could be incorrect
    ram_0534_t04                            = ram_0534_obj ; bzk warning, trace could be incorrect
    
    ram_0536_t01                            = ram_0534_obj + $02 ; 
    
    ram_0537_t01                            = ram_0534_obj + $03 ; cleared at 0x0181F4
    
    ram_0538_t01                            = ram_0534_obj + $04 ; 
    ram_0538_t02                            = ram_0534_obj + $04 ; 
    ram_0538_t03                            = ram_0534_obj + $04 ; 
    
    ram_0539_t01                            = ram_0534_obj + $05 ; cleared at 0x0181F4
    
    ram_053D_t01                            = ram_0534_obj + $09 ; 



; 
ram_053E_obj                            = $053E ; 0181FC(Wx) 01A18A(Wx) 01A1C6(Wx) 01A1D9(Wx) 01E05B(Wi) 
; ram_053F                              = $053F ; 0181FC(Wx) 01A18A(Wx) 01A1C6(Wx) 01A1D9(Wx) 01E05B(Wi) 
; ram_0540                              = $0540 ; 0181FC(Wx) 01A18A(Wx) 01A1C6(Wx) 01A1D9(Wx) 01E05B(Wi) 



; todo
; .... ...x (01) = right if set, else left
; .... ..x. (02) = 
; x... .... (80) = 
ram_0541_obj_flags                      = $0541 ; 00BE4C(R)  00BEA4(R)  00BEBA(R)  00BED3(R)  00BEDF(R)  00BF02(R)  00BF27(R)  00BF2E(R)  01003D(Rx) 01004B(Wx) 01020A(Rx) 0104C0(Rx) 0104CC(Rx) 0104D3(Wx) 010535(Rx) 01064B(Rx) 010650(Wx) 01072C(Rx) 0107A9(Rx) 010827(Rx) 010952(Wx) 010959(Wx) 010A26(Rx) 010A2B(Wx) 010A35(Rx) 010A38(Wx) 010D2F(Rx) 010D36(Wx) 01100B(Rx) 01101F(Rx) 0110CE(Rx) 0110EB(Wx) 01120B(Rx) 011225(Rx) 01122E(Rx) 011235(Wx) 01123F(Rx) 01124A(Rx) 011251(Wx) 01127F(Rx) 01133D(Rx) 011375(Rx) 01137A(Wx) 01167D(Wx) 011713(R)  0117AE(Ry) 0118D1(Ry) 013E7C(Wx) 013F98(Wx) 013F9F(Wx) 01438B(Rx) 014390(Wx) 014429(Rx) 0145C8(Wx) 01460D(Wx) 0148C8(Wx) 014A6F(Rx) 014B14(Rx) 014C12(Rx) 014E4C(Rx) 01518E(Rx) 015335(Wx) 01571C(Rx) 01577A(Rx) 01599B(Rx) 0159A5(Rx) 015A9C(R)  015B78(R)  015E44(R)  015F77(W)  01784B(Rx) 017852(Wx) 0181FC(Wx) 0184D0(R)  0184DD(R)  01857D(R)  01859E(R)  0185EB(W)  01861D(R)  0186B1(W)  0186C0(W)  0186D2(W)  0186F7(R)  0186FC(W)  018709(R)  018733(R)  0187ED(R)  018886(R)  018921(R)  01893C(R)  018998(R)  0189F2(R)  018A1B(R)  018AAF(R)  018AE3(R)  018B1A(R)  018B4B(R)  019F5E(W)  019F61(R)  019F94(W)  019F97(R)  01B765(Rx) 01B795(Ry) 01B7D1(Rx) 01B80E(Rx) 01B826(Rx) 01B847(Rx) 01B8BC(Rx) 01B8C5(Wx) 01B8D5(Rx) 01B8DE(Rx) 01BA5C(R)  01BB07(Wx) 01BB3D(Rx) 01BB84(Rx) 01BB8B(Rx) 01BBE6(Rx) 01BBEB(Wx) 01BC27(R)  01BC2F(Rx) 01BC46(Rx) 01BC51(Rx) 01BD18(Rx) 01BDB9(Rx) 01BE5B(Rx) 01BE70(Rx) 01BF6F(R)  01BF77(W)  01BF7B(R)  01BFE5(Rx) 01BFEA(Wx) 01CBD7(Wx) 01CC3C(Rx) 01D6F0(Wx) 01E05B(Wi) 01EF9E(W)  
; ram_0542                              = $0542 ; 01003D(Rx) 01004B(Wx) 01020A(Rx) 0104C0(Rx) 0104CC(Rx) 0104D3(Wx) 010535(Rx) 01072C(Rx) 0107A9(Rx) 010827(Rx) 010952(Wx) 010959(Wx) 010D2F(Rx) 010D36(Wx) 01100B(Rx) 01101F(Rx) 0110CE(Rx) 0110EB(Wx) 01120B(Rx) 01127F(Rx) 01133D(Rx) 011375(Rx) 01137A(Wx) 01167D(Wx) 011716(Wx) 0117AE(Ry) 0118D1(Ry) 013E7C(Wx) 013F98(Wx) 013F9F(Wx) 01438B(Rx) 014390(Wx) 014429(Rx) 015411(Rx) 01784B(Rx) 017852(Wx) 0181FC(Wx) 01BB07(Wx) 01BB8B(Rx) 01BBEB(Wx) 01BFE5(Rx) 01BFEA(Wx) 01CBD7(Wx) 01CC3C(Rx) 01E05B(Wi) 
; ram_0543                              = $0543 ; 00BEF4(R)  01003D(Rx) 01004B(Wx) 01020A(Rx) 0104C0(Rx) 0104CC(Rx) 0104D3(Wx) 010535(Rx) 01072C(Rx) 0107A9(Rx) 010827(Rx) 0108E1(Rx) 010952(Wx) 010A26(Rx) 010A2B(Wx) 010A35(Rx) 010A38(Wx) 010D2F(Rx) 010D36(Wx) 01100B(Rx) 01101F(Rx) 0110B1(Rx) 0110CE(Rx) 0110EB(Wx) 01120B(Rx) 011225(Rx) 01122E(Rx) 011235(Wx) 01123F(Rx) 01124A(Rx) 011251(Wx) 01127F(Rx) 01133D(Rx) 011375(Rx) 01137A(Wx) 0117AE(Ry) 0118D1(Ry) 011927(Ry) 013E7C(Wx) 013F98(Wx) 013F9F(Wx) 01784B(Rx) 017852(Wx) 0181FC(Wx) 018442(W)  018824(W)  018827(R)  018831(W)  018836(W)  018841(W)  01BB07(Wx) 01BB8B(Rx) 01BBEB(Wx) 01CBD7(Wx) 01CC3C(Rx) 01E05B(Wi) 
; ram_0544                              = $0544 ; 01003D(Rx) 01004B(Wx) 01020A(Rx) 0104C0(Rx) 0104CC(Rx) 0104D3(Wx) 010535(Rx) 01072C(Rx) 0107A9(Rx) 010827(Rx) 0108E1(Rx) 010A26(Rx) 010A2B(Wx) 010A35(Rx) 010A38(Wx) 010D2F(Rx) 010D36(Wx) 01100B(Rx) 01101F(Rx) 0110B1(Rx) 01120B(Rx) 01127F(Rx) 01133D(Rx) 011375(Rx) 01137A(Wx) 0117AE(Ry) 0118D1(Ry) 011927(Ry) 013E7C(Wx) 013F98(Wx) 013F9F(Wx) 014429(Rx) 01784B(Rx) 017852(Wx) 0181FC(Wx) 0184A9(W)  018506(W)  01859B(W)  018730(W)  018883(W)  0188A1(R)  0188B9(R)  0188CA(W)  018A6D(W)  01BB07(Wx) 01BB8B(Rx) 01BBEB(Wx) 01CBD7(Wx) 01CC3C(Rx) 01E05B(Wi) 
; ram_0545                              = $0545 ; 011973(Wx) 011D0A(Rx) 011D1D(Rx) 011D33(Wx) 01599B(Rx) 015A13(Rx) 015A51(Rx) 015AD2(Rx) 0181FC(Wx) 0194AD(R)  0194CB(W)  0194CF(R)  0194EA(W)  01968B(Wx) 019720(W)  019733(R)  01983C(W)  01983F(R)  01BB07(Wx) 01BFE1(Wx) 01C833(Wx) 01C8FB(Wx) 01E05B(Wi) 
; ram_0546                              = $0546 ; 011973(Wx) 011D0A(Rx) 011D1D(Rx) 011D33(Wx) 01599B(Rx) 015A13(Rx) 015A51(Rx) 015AD2(Rx) 0181FC(Wx) 01968B(Wx) 01BB07(Wx) 01BFE1(Wx) 01C833(Wx) 01C8FB(Wx) 01E05B(Wi) 
; ram_0547                              = $0547 ; 011973(Wx) 011D0A(Rx) 011D1D(Rx) 011D33(Wx) 01599B(Rx) 015A13(Rx) 015A51(Rx) 015AD2(Rx) 0181FC(Wx) 01968B(Wx) 01BB07(Wx) 01BFE1(Wx) 01C833(Wx) 01C8FB(Wx) 01E05B(Wi) 
; ram_0548                              = $0548 ; 011973(Wx) 01599B(Rx) 015A13(Rx) 015A51(Rx) 015AD2(Rx) 0181FC(Wx) 01968B(Wx) 01BB07(Wx) 01C833(Wx) 01C8FB(Wx) 01E05B(Wi) 
; ram_0549                              = $0549 ; 01599B(Rx) 015A13(Rx) 015A51(Rx) 0181FC(Wx) 01BB07(Wx) 01C8FB(Wx) 01E05B(Wi)     
; ram_054A                              = $054A ; 01402B(Wi) 015C21(R)  0181FC(Wx) 01BACE(W)  01BCD1(R)  01E05B(Wi) 
    ram_0541_t01_plr_index                  = ram_0541_obj_flags ; 
    ram_0541_t02_obj_index                  = ram_0541_obj_flags ; 
    ram_0541_t03                            = ram_0541_obj_flags ; 
    
    ram_0544_t01_data_index                 = ram_0541_obj_flags + $03 ; 
    
    ram_0545_t01_timer                      = ram_0541_obj_flags + $04 ; 
    ram_0545_t02                            = ram_0541_obj_flags + $04 ; 
    ; bzk 054A was not logged as a part of ram_0541_obj_flags
    ; array, but I decided to keep it here as if it were
    ; instead of a separate temp, just in case
    ram_054A_t01                            = ram_0541_obj_flags + $09 ; 
    ram_054A_tFF_useless                    = ram_0541_obj_flags + $09 ; bzk optimize



; 
ram_054B_obj                            = $054B ; 0181FC(Wx) 01A180(Wx) 01A26D(Wx) 01A274(Wx) 01A27F(Wx) 01E05B(Wi) 
; ram_054C                              = $054C ; 0181FC(Wx) 01A180(Wx) 01A26D(Wx) 01A274(Wx) 01A27F(Wx) 01E05B(Wi) 
; ram_054D                              = $054D ; 0181FC(Wx) 01A180(Wx) 01A26D(Wx) 01A274(Wx) 01A27F(Wx) 01E05B(Wi) 



; 
ram_054E_obj                            = $054E ; 010138(Rx) 0102CA(Wx) 010340(Wx) 010563(Wx) 01057D(Wx) 010588(Wx) 0105DB(W)  0105E9(Wx) 010648(Wx) 010963(Wx) 010993(Wx) 010CF2(Wx) 010D07(Wx) 01137F(Wx) 011597(Wx) 0116BC(Wx) 0145CD(Wx) 0145F7(Wx) 0148CD(Wx) 014A76(Wx) 014ABE(Wx) 014AC4(Rx) 014B1B(Wx) 014C55(Wx) 014C5B(Rx) 014C8E(Wx) 0180A6(W)  0181FC(Wx) 0184B8(W)  01858A(W)  01870C(R)  018711(W)  01B844(Rx) 01BB0A(Wx) 01BC3A(Wx) 01BC4D(Wx) 01BC5C(Wx) 01BF74(R)  01BF80(R)  01BFB3(W)  01CB79(Wx) 01CBB3(Rx) 01CBCE(Wx) 01D715(Wx) 01E05B(Wi) 
; ram_054F                              = $054F ; 010138(Rx) 0102CA(Wx) 010340(Wx) 010563(Wx) 010588(Wx) 0105E9(Wx) 010963(Wx) 010993(Wx) 01137F(Wx) 011597(Wx) 0116BC(Wx) 015286(Wx) 0152A3(Rx) 0152A8(Wx) 0153C6(Rx) 0153C9(Wx) 0181FC(Wx) 01BB0A(Wx) 01CB79(Wx) 01CBB3(Rx) 01CBCE(Wx) 01E05B(Wi) 
; ram_0550                              = $0550 ; 010138(Rx) 0102CA(Wx) 010340(Wx) 010563(Wx) 010588(Wx) 0105E9(Wx) 010963(Wx) 010993(Wx) 010CF2(Wx) 010D07(Wx) 01137F(Wx) 011597(Wx) 015286(Wx) 0152A3(Rx) 0152A8(Wx) 0181FC(Wx) 01BB0A(Wx) 01CB79(Wx) 01CBB3(Rx) 01CBCE(Wx) 01E05B(Wi) 
; ram_0551                              = $0551 ; 010138(Rx) 0102CA(Wx) 010340(Wx) 010563(Wx) 010588(Wx) 0105E9(Wx) 010993(Wx) 010D07(Wx) 01137F(Wx) 015286(Wx) 0152A3(Rx) 0152A8(Wx) 0181FC(Wx) 018463(R)  01849D(W)  0184C0(W)  0184F7(W)  018594(W)  01BB0A(Wx) 01CB79(Wx) 01CBB3(Rx) 01CBCE(Wx) 01E05B(Wi) 
; ram_0552                              = $0552 ; 0117C3(Wx) 0118F6(Wx) 0118FD(Wx) 011954(Wx) 011E45(Wx) 011E4C(Wx) 0159E3(Rx) 015AFC(Rx) 015B04(Wx) 015B07(Rx) 015B10(Wx) 0181FC(Wx) 01968E(Wx) 019790(W)  0198D4(W)  0198DC(W)  0198E4(W)  019903(R)  019945(R)  0199A4(R)  01BB0A(Wx) 01E05B(Wi) 
; ram_0553                              = $0553 ; 0117C3(Wx) 0118F6(Wx) 0118FD(Wx) 011954(Wx) 011E45(Wx) 011E4C(Wx) 0159E3(Rx) 0181FC(Wx) 01968E(Wx) 01BB0A(Wx) 01E05B(Wi) 
; ram_0554                              = $0554 ; 0117C3(Wx) 0118F6(Wx) 011954(Wx) 0159E3(Rx) 0181FC(Wx) 01968E(Wx) 01BB0A(Wx) 01E05B(Wi) 
; ram_0555                              = $0555 ; 0117C3(Wx) 0118F6(Wx) 011954(Wx) 011E45(Wx) 011E4C(Wx) 0159E3(Rx) 0181FC(Wx) 01968E(Wx) 01BB0A(Wx) 01E05B(Wi) 
; ram_0556                              = $0556 ; 0117C3(Wx) 0159E3(Rx) 0181FC(Wx) 01BB0A(Wx) 01E05B(Wi) 
; ram_0557                              = $0557 ; 0117C3(Wx) 01402B(Wi) 01422B(W)  0181FC(Wx) 01B9B7(W)  01BD93(R)  01E05B(Wi) 
    ram_054E_t01_prev_obj_index             = ram_054E_obj ; 
    
    ram_0551_t01                            = ram_054E_obj + $03 ; cleared at 0x0181FC
    ram_0551_tFF_useless                    = ram_054E_obj + $03 ; bzk optimize
    
    ram_0552_t01_number_index               = ram_054E_obj + $04 ; 
    
    ram_0557_t01_damage_to_enemy            = ram_054E_obj + $09 ; 



; free addresses
; ram_0558                              = $0558 ; 0181FC(Wx) 01E05B(Wi) 
; ram_0559                              = $0559 ; 0181FC(Wx) 01E05B(Wi) 
; ram_055A                              = $055A ; 0181FC(Wx) 01E05B(Wi) 



; 
ram_055B_obj_anim_counter               = $055B ; 0102E0(Rx) 0102F2(Rx) 010324(Rx) 010329(Wx) 010332(Wx) 010343(Wx) 010410(Rx) 010471(Rx) 0105E3(W)  010643(Wx) 01095E(Wx) 010BF0(Wx) 010CF7(Wx) 010D0C(Wx) 0110C5(Rx) 011697(Wx) 0116A3(Wx) 0149B1(Rx) 0149E4(Wx) 0149F2(Rx) 0149FD(Wx) 014ACC(Rx) 014B42(Wx) 014CFF(Wx) 014E3C(Rx) 014E41(Wx) 014E5F(Wx) 014E6E(Wx) 015191(Wx) 01577D(Wx) 015C64(W)  015CEA(R)  015D8D(R)  015DB5(W)  015DC7(W)  0181FC(Wx) 0185F3(W)  0186B9(W)  0186C8(W)  018701(W)  018746(R)  01874D(W)  018750(R)  018AC0(Wx) 01BB0D(Wx) 01BE73(Rx) 01CB7E(Wx) 01CBAB(Rx) 01CBC8(Wx) 01D6FE(Wx) 01E05B(Wi) 
; ram_055C                              = $055C ; 0102E0(Rx) 0102F2(Rx) 010324(Rx) 010329(Wx) 010332(Wx) 010343(Wx) 010471(Rx) 01095E(Wx) 0110C5(Rx) 011697(Wx) 0116A3(Wx) 0181FC(Wx) 0185EE(W)  0186B4(W)  0186C3(W)  018706(W)  018770(R)  018AC9(Wx) 01BB0D(Wx) 01CB7E(Wx) 01CBAB(Rx) 01CBC8(Wx) 01E05B(Wi) 
; ram_055D                              = $055D ; 010231(Wx) 0102E0(Rx) 0102F2(Rx) 010324(Rx) 010329(Wx) 010332(Wx) 010343(Wx) 010471(Rx) 01095E(Wx) 010A4D(Wx) 010BF0(Wx) 010CF7(Wx) 010D0C(Wx) 0110B6(Rx) 0110BF(Wx) 0110C5(Rx) 0181FC(Wx) 01BB0D(Wx) 01CB7E(Wx) 01CBAB(Rx) 01CBC8(Wx) 01E05B(Wi) 
; ram_055E                              = $055E ; 010231(Wx) 0102E0(Rx) 0102F2(Rx) 010324(Rx) 010329(Wx) 010332(Wx) 010343(Wx) 010471(Rx) 010A4D(Wx) 010AD4(Wx) 010BF0(Wx) 010D0C(Wx) 0110B6(Rx) 0110BF(Wx) 0110C5(Rx) 0181FC(Wx) 018446(W)  01845B(W)  0184EC(W)  01851D(W)  0185BE(W)  018742(W)  01BB0D(Wx) 01CB7E(Wx) 01CBAB(Rx) 01CBC8(Wx) 01E05B(Wi) 
; ram_055F                              = $055F ; 0117C8(Wx) 011948(Wx) 011EEF(Wx) 011F62(Wx) 011F65(Rx) 015A4C(Rx) 015A5A(Wx) 015AEE(Rx) 015AF3(Wx) 015B2B(Wx) 015B2F(Wx) 0181FC(Wx) 019691(Wx) 01BB0D(Wx) 01E05B(Wi) 
; ram_0560                              = $0560 ; 0117C8(Wx) 011948(Wx) 011EEF(Wx) 011F62(Wx) 011F65(Rx) 015A4C(Rx) 015A5A(Wx) 015AEE(Rx) 015AF3(Wx) 015B2B(Wx) 015B2F(Wx) 0181FC(Wx) 019691(Wx) 01BB0D(Wx) 01E05B(Wi) 
; ram_0561                              = $0561 ; 0117C8(Wx) 011948(Wx) 011EEF(Wx) 015A4C(Rx) 015A5A(Wx) 015AEE(Rx) 015AF3(Wx) 015B2B(Wx) 015B2F(Wx) 0181FC(Wx) 019691(Wx) 01BB0D(Wx) 01E05B(Wi) 
; ram_0562                              = $0562 ; 0117C8(Wx) 011948(Wx) 011EEF(Wx) 015A4C(Rx) 015A5A(Wx) 015AEE(Rx) 015AF3(Wx) 015B2B(Wx) 015B2F(Wx) 0181FC(Wx) 019691(Wx) 01BB0D(Wx) 01E05B(Wi) 
; ram_0563                              = $0563 ; 0117C8(Wx) 015A4C(Rx) 015A5A(Wx) 015AEE(Rx) 015AF3(Wx) 0181FC(Wx) 01BB0D(Wx) 01E05B(Wi) 
; ram_0564                              = $0564 ; 0117C8(Wx) 0181FC(Wx) 01E05B(Wi) 
    ram_055C_t01_plr_index                  = ram_055B_obj_anim_counter + $01 ; bzk optimize, same as ram_0541_t01_plr_index
    
    ram_055E_t01_counter                    = ram_055B_obj_anim_counter + $03 ; 
    ram_055E_t02_counter                    = ram_055B_obj_anim_counter + $03 ; 



; 
ram_0565_obj                            = $0565 ; 00BED8(Wx) 00BF07(Wx) 010437(Wx) 010764(Wx) 010C18(Rx) 010C36(Wx) 010C56(Wx) 011491(Wx) 0115A8(Wx) 0115AB(Rx) 0115B9(Wx) 014370(Rx) 014753(Rx) 014C01(Rx) 014CC5(Rx) 014DC9(Rx) 014DF3(Rx) 0154A9(Rx) 01570B(Rx) 015B59(Rx) 0181FC(Wx) 01895A(Rx) 018ACC(W)  018AF3(R)  018B15(W)  018B44(W)  01B8EA(Rx) 01B8F2(Rx) 01B91F(Rx) 01BAD4(Wx) 01BB50(Rx) 01BC8E(Rx) 01BC95(Rx) 01BC9A(Wx) 01CC1F(Wx) 01E05B(Wi) 
; ram_0566                              = $0566 ; 00BED8(Wx) 00BF07(Wx) 010437(Wx) 010C18(Rx) 010C36(Wx) 010C56(Wx) 011491(Wx) 0115A8(Wx) 0115AB(Rx) 0115B9(Wx) 014370(Rx) 01526A(Rx) 015271(Wx) 01528B(Wx) 01538D(Rx) 0181FC(Wx) 01895A(Rx) 018ACF(W)  018B0B(W)  018B0E(R)  018B1D(W)  018B20(R)  018B41(W)  018B53(W)  018B56(R)  01B8EA(Rx) 01BAD4(Wx) 01CC1F(Wx) 01E05B(Wi) 
; ram_0567                              = $0567 ; 010437(Wx) 010ACB(Rx) 010C18(Rx) 010C36(Wx) 010C56(Wx) 011491(Wx) 0115A8(Wx) 0115AB(Rx) 0115B9(Wx) 014370(Rx) 01526A(Rx) 015271(Wx) 01528B(Wx) 0181FC(Wx) 01BAD4(Wx) 01CC1F(Wx) 01E05B(Wi) 
; ram_0568                              = $0568 ; 010437(Wx) 010ACB(Rx) 010AD7(Wx) 010C18(Rx) 010C36(Wx) 010C56(Wx) 011491(Wx) 014370(Rx) 01526A(Rx) 015271(Wx) 01528B(Wx) 0181FC(Wx) 01BAD4(Wx) 01CC1F(Wx) 01E05B(Wi) 
    ram_0565_t01_handler_index              = ram_0565_obj ; 
    
    ram_0566_t01_counter                    = ram_0565_obj + $01 ; 
    ram_0566_t02_counter                    = ram_0565_obj + $01 ; 



; bzk optimize, useless addresses
ram_0569_useless                        = $0569 ; 01A139(Wx) 01E05B(Wi) 
; ram_056A                              = $056A ; 01A139(Wx) 01E05B(Wi) 
; ram_056B                              = $056B ; 01A139(Wx) 01E05B(Wi) 



; 
ram_056C_obj                            = $056C ; 00BF4D(Wx) 00BF58(Rx) 00BF5B(Wx) 01012C(Wx) 0101A1(Wx) 0101A9(Wx) 010571(Wx) 0112C2(Wx) 0112CC(Wx) 011357(Wx) 01500B(Wx) 01501A(Wx) 015C15(R)  015C24(W)  0176F7(Rx) 017727(Rx) 017811(Rx) 017B1D(Rx) 017D4A(Rx) 017DF2(Rx) 018614(W)  01892C(Rx) 018969(Rx) 018977(Wx) 018982(Rx) 018985(Wx) 01BAC3(Wx) 01BCD4(Wx) 01BD52(Rx) 01BEC3(Wx) 01BFB7(R)  01C6F1(Rx) 01E05B(Wi) 
; ram_056D                              = $056D ; 00BF4D(Wx) 00BF58(Rx) 00BF5B(Wx) 01012C(Wx) 0101A1(Wx) 0101A9(Wx) 010571(Wx) 0112C2(Wx) 0112CC(Wx) 011357(Wx) 0176F7(Rx) 017727(Rx) 017811(Rx) 017B1D(Rx) 017D4A(Rx) 017DF2(Rx) 01892C(Rx) 018969(Rx) 018977(Wx) 018982(Rx) 018985(Wx) 01BAC3(Wx) 01BEC3(Wx) 01C6F1(Rx) 01E05B(Wi) 
; ram_056E                              = $056E ; 01012C(Wx) 0101A1(Wx) 0101A9(Wx) 010571(Wx) 0112C2(Wx) 0112CC(Wx) 011357(Wx) 0176F7(Rx) 017727(Rx) 017811(Rx) 017B1D(Rx) 017D4A(Rx) 017DF2(Rx) 01BAC3(Wx) 01BEC3(Wx) 01C6F1(Rx) 01E05B(Wi) 
; ram_056F                              = $056F ; 01012C(Wx) 0101A1(Wx) 0101A9(Wx) 010571(Wx) 0112C2(Wx) 0112CC(Wx) 011357(Wx) 0176F7(Rx) 017727(Rx) 017811(Rx) 017B1D(Rx) 017D4A(Rx) 017DF2(Rx) 01BAC3(Wx) 01BEC3(Wx) 01C6F1(Rx) 01E05B(Wi) 
; ram_0570                              = $0570 ; 011A6E(Wx) 011E2F(Wx) 01BAC3(Wx) 01C74D(Rx) 01E05B(Wi) 
; ram_0571                              = $0571 ; 011A6E(Wx) 011E2F(Wx) 01BAC3(Wx) 01C74D(Rx) 01E05B(Wi) 
; ram_0572                              = $0572 ; 011A6E(Wx) 011E2F(Wx) 01BAC3(Wx) 01C74D(Rx) 01E05B(Wi) 
; ram_0573                              = $0573 ; 011A6E(Wx) 011E2F(Wx) 01BAC3(Wx) 01C74D(Rx) 01E05B(Wi) 
; ram_0574                              = $0574 ; 011A6E(Wx) 01BAC3(Wx) 01C74D(Rx) 01E05B(Wi) 
; ram_0575                              = $0575 ; 011A6E(Wx) 01C74D(Rx) 01E05B(Wi) 



; free addresses
; ram_0576                              = $0576 ; 01E05B(Wi) 
; ram_0577                              = $0577 ; 01E05B(Wi) 
; ram_0578                              = $0578 ; 01E05B(Wi) 



; enemy health and damage to player
ram_obj_hp                              = $0579 ; 010655(Wx) 014228(R)  014D51(R)  015034(R)  015053(R)  0154F2(R)  015C1A(R)  015F09(W)  017816(Rx) 01781C(Wx) 01B754(Ry) 01B9B0(Wx) 01BCCA(Rx) 01BD97(Rx) 01BDAC(Rx) 01BDAF(Wx) 01CC14(Wx) 01DE28(R)  01E05B(Wi) 01F362(R)  01FE9B(R)  01FEAC(R)  
; ram_057A                              = $057A ; 015379(Rx) 01540C(Rx) 017816(Rx) 01781C(Wx) 01B9B0(Wx) 01CC14(Wx) 01E05B(Wi) 
; ram_057B                              = $057B ; 010A52(Wx) 017816(Rx) 01781C(Wx) 01B9B0(Wx) 01CC14(Wx) 01E05B(Wi) 
; ram_057C                              = $057C ; 010A52(Wx) 017816(Rx) 01781C(Wx) 01B9B0(Wx) 01CC14(Wx) 01E05B(Wi) 
; ram_057D                              = $057D ; 011AC6(Wx) 01BEE5(Wx) 01C7EA(Rx) 01E05B(Wi) 
; ram_057E                              = $057E ; 011AC6(Wx) 01BEE5(Wx) 01C7EA(Rx) 01E05B(Wi) 
; ram_057F                              = $057F ; 011AC6(Wx) 01BEE5(Wx) 01C7EA(Rx) 01E05B(Wi) 
; ram_0580                              = $0580 ; 011AC6(Wx) 01BEE5(Wx) 01C7EA(Rx) 01E05B(Wi) 
; ram_0581                              = $0581 ; 011AC6(Wx) 01BEE5(Wx) 01E05B(Wi) 
; ram_0582                              = $0582 ; 011AC6(Wx) 01E05B(Wi) 
    ram_obj_damage                          = ram_obj_hp ; 



; 
ram_0583_obj                            = $0583 ; 010258(Wx) 010466(Wx) 01052A(Wx) 0106B8(Rx) 0106FC(Wx) 010727(Wx) 0109FC(Rx) 010A10(Wx) 010B4C(Wx) 010B6D(Wx) 010BF6(Wx) 010C53(Wx) 010F41(Rx) 010F58(Wx) 01102D(Wx) 011204(Rx) 011486(Wx) 0116AC(Wx) 0145A0(Wx) 0145FA(Wx) 014712(Wx) 014728(Wx) 01475D(Wx) 014760(Rx) 014A55(Wx) 014AF8(Wx) 014B02(Rx) 014B08(Wx) 014B2E(Wx) 014B31(Wx) 014E76(Wx) 014EF2(Wx) 0150A0(Wx) 0150AF(Wx) 0150BD(Wx) 0150E0(Wx) 01519E(Wx) 0151DC(Wx) 015586(Wx) 01578B(Wx) 015825(Wx) 0158F2(Wx) 015E82(Wx) 015F63(W)  01B924(Wx) 01BA55(Wx) 01BB7F(Rx) 01BCB0(Wx) 01BD46(Wx) 01BE2B(Wx) 01BE84(Wx) 01CC39(Wx) 01E05B(Wi) 
; ram_0584                              = $0584 ; 010258(Wx) 010466(Wx) 0106B8(Rx) 0106FC(Wx) 010727(Wx) 0109FC(Rx) 010A10(Wx) 010BF6(Wx) 010C53(Wx) 010F41(Rx) 010F58(Wx) 01102D(Wx) 0111B3(Wx) 0111BA(Wx) 011204(Rx) 011486(Wx) 0116AC(Wx) 015448(Rx) 01545E(Rx) 015463(Wx) 01BA4F(Wx) 01BA55(Wx) 01BB7F(Rx) 01CC39(Wx) 01E05B(Wi) 
; ram_0585                              = $0585 ; 010258(Wx) 010466(Wx) 0106B8(Rx) 0106FC(Wx) 010727(Wx) 0108D0(Wx) 0109FC(Rx) 010A10(Wx) 010B4C(Wx) 010B6D(Wx) 010BF6(Wx) 010C53(Wx) 010F41(Rx) 010F58(Wx) 01102D(Wx) 0111BA(Wx) 011204(Rx) 011486(Wx) 01BA4F(Wx) 01BB7F(Rx) 01CC39(Wx) 01E05B(Wi) 
; ram_0586                              = $0586 ; 010466(Wx) 0106B8(Rx) 0106FC(Wx) 010727(Wx) 0108D0(Wx) 010B4C(Wx) 010B6D(Wx) 010BF6(Wx) 010C53(Wx) 010F41(Rx) 010F58(Wx) 01102D(Wx) 0111BA(Wx) 011204(Rx) 011486(Wx) 01BA4F(Wx) 01BB7F(Rx) 01CC39(Wx) 01E05B(Wi) 



; .xxx .... (70) = 
; x... .... (80) = 
ram_0587_obj                            = $0587 ; 01A480(Rx) 01A4A7(Wx) 01D3C9(Rx) 01D3D4(Rx) 01D40A(Wx) 01D413(Rx) 01D425(Rx) 01D42E(Wx) 01D432(Rx) 01D452(Wx) 01D46C(Rx) 01D487(Wx) 01DE9E(W)  01E05B(Wi) 01E953(Wy) 01EB49(W)  01FDDE(Rx) 01FDE9(Rx) 01FE18(Rx) 
; ram_0588                              = $0588 ; 01A480(Rx) 01A4A7(Wx) 01D3C9(Rx) 01D3D4(Rx) 01D40A(Wx) 01D413(Rx) 01D425(Rx) 01D42E(Wx) 01D432(Rx) 01D452(Wx) 01D46C(Rx) 01D487(Wx) 01E05B(Wi) 01E953(Wy) 01FDDE(Rx) 01FDE9(Rx) 01FE18(Rx) 
; ram_0589                              = $0589 ; 01D3C9(Rx) 01D3D4(Rx) 01D413(Rx) 01D425(Rx) 01D42E(Wx) 01D432(Rx) 01D452(Wx) 01D46C(Rx) 01D487(Wx) 01E05B(Wi) 01E953(Wy) 01FDDE(Rx) 01FDE9(Rx) 01FE18(Rx) 
; ram_058A                              = $058A ; 01D3C9(Rx) 01D3D4(Rx) 01D413(Rx) 01D425(Rx) 01D42E(Wx) 01D432(Rx) 01D452(Wx) 01D46C(Rx) 01D487(Wx) 01E05B(Wi) 01E953(Wy) 01FDDE(Rx) 01FDE9(Rx) 01FE18(Rx) 
; ram_058B                              = $058B ; 01D3C9(Rx) 01E05B(Wi) 01E953(Wy) 
; ram_058C                              = $058C ; 01D3C9(Rx) 01E05B(Wi) 01E953(Wy) 
; ram_058D                              = $058D ; 01D3C9(Rx) 01E05B(Wi) 01E953(Wy) 
; ram_058E                              = $058E ; 01D3C9(Rx) 01E05B(Wi) 01E953(Wy) 
; ram_058F                              = $058F ; 01D3C9(Rx) 01E05B(Wi) 01E953(Wy) 
; ram_0590                              = $0590 ; 01D3C9(Rx) 01E05B(Wi) 01E953(Wy) 



; 
ram_0591_obj_spr_X                      = $0591 ; 01A48E(Wx) 01D3F1(Rx) 01D3F4(Wx) 01D47D(Wx) 01E05B(Wi) 01FDF7(Rx) 
; ram_0592                              = $0592 ; 01A48E(Wx) 01D3F1(Rx) 01D3F4(Wx) 01D47D(Wx) 01E05B(Wi) 01FDF7(Rx) 
; ram_0593                              = $0593 ; 01D3F1(Rx) 01D3F4(Wx) 01D47D(Wx) 01E05B(Wi) 01FDF7(Rx) 
; ram_0594                              = $0594 ; 01D3F1(Rx) 01D3F4(Wx) 01D47D(Wx) 01E05B(Wi) 01FDF7(Rx) 



; free addresses
; ram_0595                              = $0595 ; 01E05B(Wi) 
; ram_0596                              = $0596 ; 01E05B(Wi) 
; ram_0597                              = $0597 ; 01E05B(Wi) 
; ram_0598                              = $0598 ; 01E05B(Wi) 
; ram_0599                              = $0599 ; 01E05B(Wi) 
; ram_059A                              = $059A ; 01E05B(Wi) 



; 
ram_059B_obj_spr_Y                      = $059B ; 01A497(Wx) 01A4A2(Wx) 01D3E0(Rx) 01D3E3(Wx) 01D482(Wx) 01E05B(Wi) 01FDF2(Rx) 
; ram_059C                              = $059C ; 01A497(Wx) 01D3E0(Rx) 01D3E3(Wx) 01D482(Wx) 01E05B(Wi) 01FDF2(Rx) 
; ram_059D                              = $059D ; 01D3E0(Rx) 01D3E3(Wx) 01D482(Wx) 01E05B(Wi) 01FDF2(Rx) 
; ram_059E                              = $059E ; 01D3E0(Rx) 01D3E3(Wx) 01D482(Wx) 01E05B(Wi) 01FDF2(Rx) 



; free addresses
; ram_059F                              = $059F ; 01E05B(Wi) 
; ram_05A0                              = $05A0 ; 01E05B(Wi) 
; ram_05A1                              = $05A1 ; 01E05B(Wi) 
; ram_05A2                              = $05A2 ; 01E05B(Wi) 
; ram_05A3                              = $05A3 ; 01E05B(Wi) 
; ram_05A4                              = $05A4 ; 01E05B(Wi) 



; a copy of ram_scroll_Y_array
ram_copy_scroll_Y                       = $05A5 ; 01E05B(Wi) 01E4F0(Wx) 01E556(Rx) 
; ram_05A6                              = $05A6 ; 01E05B(Wi) 01E4F0(Wx) 01E556(Rx) 
; ram_05A7                              = $05A7 ; 01E05B(Wi) 01E4F0(Wx) 01E556(Rx) 



; a copy of ram_scroll_X_array
ram_copy_scroll_X                       = $05A8 ; 01E05B(Wi) 01E4F5(Wx) 01E55B(Rx) 
; ram_05A9                              = $05A9 ; 01E05B(Wi) 01E4F5(Wx) 01E55B(Rx) 
; ram_05AA                              = $05AA ; 01E05B(Wi) 01E4F5(Wx) 01E55B(Rx) 



; a copy of ram_for_2000
ram_copy_for_2000                       = $05AB ; 01E05B(Wi) 01E509(W)  01E564(R)  



; .... xxxx (0F) = ram_scroll_X_hi
; xxxx .... (F0) = ram_scroll_Y_hi
ram_05AC_scroll_XY                      = $05AC ; 01791F(W)  01E05B(Wi) 01E608(R)  



; 
ram_05AD                                = $05AD ; 0172DD(W)  017922(W)  0192B9(R)  01E05B(Wi) 



; free addresses
; ram_05AE                              = $05AE ; 01E05B(Wi) 
; ram_05AF                              = $05AF ; 01E05B(Wi) 
; ram_05B0                              = $05B0 ; 01E05B(Wi) 



; 
ram_05B1_array                          = $05B1 ; 01BFF9(Wy) 01D5B0(Wx) 01E05B(Wi) 01E701(W)  01E7F3(Rx) 01E808(Rx) 01E9F8(W)  
; ram_05B2                              = $05B2 ; 01BFF9(Wy) 01D5B0(Wx) 01E05B(Wi) 01E704(W)  01E7F3(Rx) 01E808(Rx) 
; ram_05B3                              = $05B3 ; 01BFF9(Wy) 01D5B0(Wx) 01E05B(Wi) 01E707(W)  01E7F3(Rx) 01E808(Rx) 
; ram_05B4                              = $05B4 ; 01BFF9(Wy) 01D5B0(Wx) 01E05B(Wi) 01E70A(W)  01E7F3(Rx) 



; see con_05B5
ram_05B5_player_flags                   = $05B5 ; 00BF20(R)  018081(R)  018A72(R)  018AA6(R)  018AAB(W)  018D48(R)  018D4F(R)  019763(W)  01A404(R)  01A40A(W)  01A4BB(R)  01A6DE(R)  01A6E7(W)  01C077(R)  01C083(R)  01C096(R)  01C0F6(R)  01C114(R)  01C2F8(R)  01C2FF(R)  01C31E(R)  01C32E(R)  01D846(R)  01E05B(Wi) 01E4DA(R)  01E525(R)  01E546(R)  01E836(W)  01EED3(R)  01F246(R)  01F26E(R)  



; 00 = dead?
; 80 = not dead?
ram_05B6_player_dead_flag               = $05B6 ; 018F70(W)  01C310(W)  01C319(R)  01C323(R)  01C326(W)  01C3D9(Rx) 01E05B(Wi) 
; ram_05B7                              = $05B7 ; 018F73(W)  01C316(W)  01C329(R)  01C334(R)  01C337(W)  01C3D9(Rx) 01E05B(Wi) 



; 
ram_05B8_spr_X_lo_player                = $05B8 ; 018BFF(R)  018C05(W)  018F78(W)  01C341(Wy) 01C3F7(Rx) 01E05B(Wi) 
; ram_05B9                              = $05B9 ; 018C10(R)  018C16(W)  018F7D(W)  01C341(Wy) 01C3F0(Rx) 01C3F7(Rx) 01E05B(Wi) 



; 
ram_05BA_spr_X_hi_player                = $05BA ; 018C08(R)  018C0D(W)  018F8C(W)  01C348(Wy) 01C3E9(Rx) 01E05B(Wi) 01EE66(W)  
; ram_05BB                              = $05BB ; 018C19(R)  018C1E(W)  018F8F(W)  01C348(Wy) 01C3E9(Rx) 01E05B(Wi) 01EE69(W)  



; 
ram_05BC_spr_Y_player                   = $05BC ; 018F87(W)  01C34F(Wy) 01C3FC(Rx) 01E05B(Wi) 
; ram_05BD                              = $05BD ; 018F82(W)  01C34F(Wy) 01C3FC(Rx) 01E05B(Wi) 



; 
ram_05BE_plr_data_ptr_lo                = $05BE ; 01C356(Wy) 01C401(Rx) 01E05B(Wi) 
; ram_05BF                              = $05BF ; 01C356(Wy) 01C401(Rx) 01E05B(Wi) 



; 
ram_05C0_plr_data_ptr_hi                = $05C0 ; 01C35D(Wy) 01C406(Rx) 01E05B(Wi) 
; ram_05C1                              = $05C1 ; 01C35D(Wy) 01C406(Rx) 01E05B(Wi) 



; see con_05C2
ram_05C2_handler                        = $05C2 ; 01C4B7(W)  01C4C7(W)  01C4D7(W)  01C4E2(W)  01C4E8(W)  01C4EF(W)  01C506(W)  01C512(R)  01C58F(W)  01C62A(R)  01C671(W)  01D508(R)  01D53A(W)  01D54F(R)  01D555(R)  01E05B(Wi) 



; 
ram_05C3_temp                           = $05C3 ; 01C4A8(W)  01C4BD(W)  01C4CD(W)  01C4DD(W)  01C4F4(W)  01C53F(W)  01C57D(W)  01C5DD(W)  01C5E4(W)  01C60E(W)  01C615(W)  01C644(W)  01C647(R)  01C668(R)  01D53F(W)  01E05B(Wi) 
    ram_05C3_t01_timer_hi                   = ram_05C3_temp ; 
    ram_05C3_t02_timer                      = ram_05C3_temp ; 
    ram_05C3_t03_timer                      = ram_05C3_temp ; 
    ram_05C3_t04_counter                    = ram_05C3_temp ; 
    
    ram_05C3_tFF_useless                    = ram_05C3_temp ; bzk optimize



; 
ram_05C4_temp                           = $05C4 ; 01C4AB(W)  01C4C2(W)  01C4D2(W)  01C53A(W)  01C577(W)  01C5E7(R)  01C5F6(W)  01C5F9(R)  01C602(W)  01C618(W)  01C61B(R)  01C624(W)  01C627(R)  01D542(W)  01E05B(Wi) 
    ram_05C4_t01                            = ram_05C4_temp ; 
    ram_05C4_t02_timer_lo                   = ram_05C4_temp ; 
    
    ram_05C4_tFF_useless                    = ram_05C4_temp ; bzk optimize



; 
ram_05C5_temp                           = $05C5 ; 01C4AE(W)  01C558(R)  01C580(R)  01C586(W)  01D545(W)  01E05B(Wi) 
    ram_05C5_t01_bg_pal_data_index                            = ram_05C5_temp ; 
    
    ram_05C5_tFF_useless                    = ram_05C5_temp ; bzk optimize



; bzk optimize, useless address
ram_05C6_useless                        = $05C6 ; 01C4B1(W)  01D548(W)  01E05B(Wi) 



; .... xxxx (0F) = table index for meatatiles?
; .x.. .... (40) = 
; x... .... (80) = 
ram_05C7_flags                          = $05C7 ; 0138C0(R)  01391E(W)  019147(R)  01915C(R)  019161(W)  0191E0(W)  0191F8(W)  019217(R)  0192BE(W)  019351(R)  01BFEE(R)  01BFF6(W)  01D0E8(W)  01D393(R)  01D5AD(W)  01E05B(Wi) 01E716(W)  01E72F(Wx) 01E80B(W)  01E826(R)  01E9F5(W)  01F21C(R)  



; 
ram_05C8_temp                           = $05C8 ; 013916(W)  019150(W)  0191A2(R)  0191D0(W)  0191D3(R)  019228(R)  01927E(W)  0192C3(W)  019343(R)  019391(W)  019394(R)  01939D(W)  01D0D6(W)  01D5B5(W)  01E05B(Wi) 01E72F(Wx) 01E810(W)  01E9E1(W)  
    ram_05C8_t01_data_index                 = ram_05C8_temp ; 
    ram_05C8_t02_data_index                 = ram_05C8_temp ; 
    ram_05C8_t03_data_index                 = ram_05C8_temp ; 



; 
ram_05C9_temp                           = $05C9 ; 013919(W)  019153(W)  019184(R)  0191CD(W)  0191DA(W)  0191E4(R)  0191EE(W)  019284(W)  0192C8(W)  01931D(W)  019331(W)  01D0D9(W)  01D5B8(W)  01E05B(Wi) 01E72F(Wx) 01E813(W)  01E9E4(W)  
    ram_05C9_t01_timer                      = ram_05C9_temp ; 
    ram_05C9_t02_timer                      = ram_05C9_temp ; 
    ram_05C9_t03_timer                      = ram_05C9_temp ; 



; 
ram_05CA_temp                           = $05CA ; 0138F1(W)  019156(W)  0191B0(R)  0191F1(R)  019279(W)  0192CD(W)  01930D(W)  01D0DC(W)  01D5BB(W)  01E05B(Wi) 01E72F(Wx) 01E816(W)  01E9E7(W)  
    ram_05CA_t01_ppu_lo                     = ram_05CA_temp ; 
    ram_05CA_t02_flag                       = ram_05CA_temp ; 00 = ???, 01 = ???
    ram_05CA_t03_timer                      = ram_05CA_temp ; 



; 
ram_05CB_temp                           = $05CB ; 0138F8(W)  019159(W)  0191B5(R)  019250(R)  01928A(R)  0192D5(W)  019334(R)  01D0E3(W)  01D5BE(W)  01E05B(Wi) 01E72F(Wx) 01E81D(W)  01E9EA(W)  
    ram_05CB_t01_ppu_hi                     = ram_05CB_temp ; 
    ram_05CB_t02_nametable                  = ram_05CB_temp ; 
    ram_05CB_t03_table_index                = ram_05CB_temp ; 



; 
ram_05CC_table_index                    = $05CC ; 013911(W)  019193(R)  01E05B(Wi) 01E72F(Wx) 



; 
ram_05CD_city_sector                    = $05CD ; 0138CF(W)  01916C(R)  01E05B(Wi) 01E72F(Wx) 



; 
ram_05CE_sector_drop                    = $05CE ; 0138DC(W)  019179(R)  01E05B(Wi) 01E72F(Wx) 



; .... xxxx (0F) = object index
; x... .... (80) = 
ram_05CF_flag_and_obj_index             = $05CF ; 01603F(R)  016110(R)  016122(W)  0172FE(R)  017381(R)  017393(W)  017993(R)  0179B7(W)  017A21(W)  017A6C(R)  01E05B(Wi) 



; 
ram_05D0_scroll_X_hi                    = $05D0 ; 013B3A(R)  013B5A(R)  013B5F(W)  013B63(R)  013B85(R)  013B8A(W)  013BAE(R)  013C0C(R)  01E05B(Wi) 01E926(W)  01EAE2(W)  
ram_05D1_scroll_X_lo                    = $05D1 ; 013B46(R)  013B4F(R)  013B57(W)  013B6D(R)  013B7A(R)  013B82(W)  013BA6(R)  013C04(R)  013E05(R)  013E1B(R)  01E05B(Wi) 01E92B(W)  01EAFE(W)  



; 
ram_05D2_scroll_Y_hi                    = $05D2 ; 013AD3(R)  013AFD(R)  013B02(W)  013B06(R)  013B31(R)  013B36(W)  013BB7(R)  013C22(R)  013C8E(R)  013F2C(R)  01E05B(Wi) 01E930(W)  01EAD8(W)  
ram_05D3_scroll_Y_lo                    = $05D3 ; 013ADF(R)  013AE8(R)  013AFA(W)  013B10(R)  013B1D(R)  013B2E(W)  013BC2(R)  013BCF(R)  013C19(R)  013C7A(R)  01E05B(Wi) 01E935(W)  01EAFB(W)  



; see con_05D4
ram_05D4_plr_flags                      = $05D4 ; 018147(R)  018178(Rx) 018181(Rx) 0184E0(Rx) 0185A7(R)  01862C(R)  0186AA(R)  0186D8(R)  018769(R)  0187CC(R)  018851(R)  018A79(R)  018A8B(R)  018A90(W)  018A98(R)  018A9B(W)  01974D(R)  019752(W)  019CB6(R)  019CC5(R)  019CD0(R)  019CD7(R)  019CF5(R)  019D01(R)  01A3F2(Ry) 01A3F9(Wy) 01A537(R)  01A552(Rx) 01A557(Wx) 01A55A(R)  01A582(Rx) 01A589(Rx) 01A58E(Wx) 01A593(R)  01A59D(Rx) 01A5A2(Wx) 01A5A5(R)  01A696(R)  01A69D(Ry) 01A6A2(Wy) 01A6A5(R)  01A6AC(R)  01A6B1(W)  01A6B4(Ry) 01A6C5(Ry) 01A6CA(Wy) 01A713(R)  01E05B(Wi) 01E86C(W)  01EF8E(R)  
; ram_05D5                              = $05D5 ; 018178(Rx) 018181(Rx) 0184E0(Rx) 0186E1(R)  018A7E(R)  018A93(R)  018AA0(R)  018AA3(W)  019CBB(R)  019CDC(R)  019CF8(R)  019D04(R)  01A3F2(Ry) 01A3F9(Wy) 01A552(Rx) 01A557(Wx) 01A596(R)  01A69D(Ry) 01A6A2(Wy) 01A6BF(Rx) 01A6C2(Wx) 01A716(R)  01E05B(Wi) 01E86F(W)  01EF97(R)  



; 
ram_05D6_plr                            = $05D6 ; 00BE9B(Rx) 00BEA7(Rx) 00BEE2(Rx) 018093(Wx) 018161(Rx) 0185A1(Rx) 0185AE(R)  018620(Rx) 018629(Wx) 018633(R)  018736(Rx) 0187F0(Rx) 018A83(R)  01A3FC(Ry) 01A401(Wy) 01A544(Rx) 01A54F(Wx) 01A567(R)  01A5AC(R)  01A5DC(Rx) 01A5E7(Wx) 01A6FB(Wy) 01E05B(Wi) 01E874(W)  01EC09(W)  
; ram_05D7                              = $05D7 ; 00BE9B(Rx) 00BEA7(Rx) 00BEE2(Rx) 018161(Rx) 0185A1(Rx) 018620(Rx) 018629(Wx) 018636(W)  018736(Rx) 0187F0(Rx) 018A86(R)  01A3FC(Ry) 01A401(Wy) 01A544(Rx) 01A54F(Wx) 01A56A(W)  01A5AF(W)  01A6FB(Wy) 01E05B(Wi) 01E879(W)  



; 
ram_05D8_plr                            = $05D8 ; 00BE51(Rx) 00BEBD(Wx) 00BF0F(Wx) 0185B4(Rx) 018626(Rx) 0187D3(R)  018858(R)  018889(Rx) 0189F5(Rx) 01A54A(Rx) 01A5E2(Rx) 01E05B(Wi) 01EC04(W)  
; ram_05D9                              = $05D9 ; 00BE51(Rx) 00BEBD(Wx) 00BF0F(Wx) 0185B4(Rx) 018626(Rx) 0187D6(W)  01885B(W)  018889(Rx) 0189F5(Rx) 01A54A(Rx) 01E05B(Wi) 



; a copy of ram_05D6_plr ?
ram_05DA_plr                            = $05DA ; 00BEA0(Wx) 00BEE5(Wx) 00BF2A(Rx) 01808E(Rx) 0185A4(Wx) 0185B1(W)  018623(Wx) 018639(R)  01885E(R)  01A547(Wx) 01A561(R)  01A5B2(R)  01A5DF(Wx) 01E05B(Wi) 01EC0C(W)  
; ram_05DB                              = $05DB ; 00BEA0(Wx) 00BEE5(Wx) 00BF35(Wx) 0185A4(Wx) 018623(Wx) 01863C(W)  018861(W)  01A547(Wx) 01A564(W)  01A5B5(W)  01E05B(Wi) 



; see con_05DC
ram_05DC_flags                          = $05DC ; 00BE5C(R)  00BE63(W)  00BE6A(W)  00BE80(R)  00BE85(W)  00BE93(R)  00BE98(W)  01807A(R)  018421(R)  01844F(R)  018525(R)  01852E(W)  0186A1(R)  0186CB(R)  018A5C(R)  018A63(W)  018AEB(W)  01A5D0(R)  01A5D9(W)  01A6DB(W)  01E05B(Wi) 01E839(W)  01EBFF(W)  01EFB2(R)  01EFB9(R)  01EFBE(W)  



; 
ram_05DD_obj                            = $05DD ; 00BE71(R)  01824E(Wx) 01829D(Rx) 0182AE(Rx) 0182CF(Rx) 0182DF(Wx) 018A54(Ry) 018A59(Wy) 01A5EC(Ry) 01A602(Wy) 01E05B(Wi) 01E83F(W)  
; ram_05DE                              = $05DE ; 00BE76(R)  01824E(Wx) 01829D(Rx) 0182AE(Rx) 0182CF(Rx) 0182DF(Wx) 018A54(Ry) 018A59(Wy) 01A5EC(Ry) 01A602(Wy) 01E05B(Wi) 01E842(W)  
; ram_05DF                              = $05DF ; 00BE7B(R)  01824E(Wx) 01829D(Rx) 0182AE(Rx) 018A54(Ry) 018A59(Wy) 01A5EC(Ry) 01A602(Wy) 01E05B(Wi) 01E845(W)  



; see con_05E0
ram_05E0_flags                          = $05E0 ; 018203(R)  01821A(W)  018272(R)  01827D(R)  018288(R)  0182C8(R)  01A51C(W)  01A5FA(R)  01A5FD(W)  01E05B(Wi) 01E83C(W)  



; see con_05E1
ram_05E1_flags                          = $05E1 ; 0180E5(R)  018809(R)  019CE3(R)  019CEC(R)  01A50F(W)  01A57B(R)  01A668(R)  01A67E(R)  01A689(R)  01E05B(Wi) 01E848(W)  01ED8E(R)  01F14C(R)  



; 
ram_05E2_counter                        = $05E2 ; 01782E(W)  01A4DD(R)  01E05B(Wi) 01EA8D(W)  01F1BB(R)  01F1D2(W)  01F1E0(W)  



; 00 = 
; 80 = 
ram_05E3_flag                           = $05E3 ; 0115D5(R)  0115E2(W)  01E05B(Wi) 01E710(W)  01E9B6(W)  



; initialized with 00 at 0x01E05B
; death counter? increases when one of the players dies
ram_05E4_counter                        = $05E4 ; 01A6EF(R)  01A6FE(W)  01E05B(Wi) 



; 
ram_05E5_timer                          = $05E5 ; 017E91(W)  017EA8(W)  01E05B(Wi) 



; 00 = 
; 01 = gameplay?
; 02 = 
; 03 = 
; FF = not specified
; handler at 0x01DBD8
ram_05E6_script                         = $05E6 ; 019A03(W)  019A17(R)  019A1F(R)  019A2D(R)  01DB9E(R)  01DBB6(R)  01DC21(W)  01DC64(W)  01DC9D(W)  01DCA6(W)  01DCDA(W)  01E05B(Wi) 



; 
ram_05E7_counter_1                      = $05E7 ; 0199FA(W)  019A60(R)  019ADF(R)  01DE42(W)  01DE52(R)  01E05B(Wi) 
ram_05E8_counter_2                      = $05E8 ; 0199FD(W)  019A8E(R)  01DE2F(W)  01DE59(R)  01E05B(Wi) 



; .... ...x (01) = player index
; x... .... (80) = 
ram_05E9_flag_and_plr_index             = $05E9 ; 019A00(W)  019B10(R)  019B1F(R)  019B22(W)  019B54(R)  01DD09(R)  01DD10(W)  01DDB9(R)  01E05B(Wi) 



; .... ..xx (03) = table index
; x... .... (80) = 
ram_05EA_table_index                    = $05EA ; 019A06(W)  019B2F(R)  019B44(R)  019B47(W)  019B59(R)  01DD20(R)  01DD25(W)  01DD28(R)  01DD5E(R)  01DD9D(R)  01DDFD(R)  01E05B(Wi) 



; 
ram_05EB_table_index                    = $05EB ; 019A09(W)  019BE7(R)  019C11(R)  01DE4D(W)  01E05B(Wi) 



; 
ram_05EC_table_index                    = $05EC ; 0193B4(W)  0193BD(R)  0193C8(R)  0193E7(R)  019408(R)  01943C(W)  019442(W)  01944B(R)  019458(R)  01947E(R)  01E05B(Wi) 



; see con_05ED
ram_05ED_handler_index                  = $05ED ; 019C4F(W)  019C7D(R)  01E05B(Wi) 



; see con_05EE
ram_05EE_table_index                    = $05EE ; 0195A2(W)  019C55(W)  019D12(R)  019D2F(R)  01E05B(Wi) 



; 
ram_05EF_data_index                     = $05EF ; 019C43(W)  019C48(R)  019C59(W)  01E05B(Wi) 



; 
ram_05F0_data_index                     = $05F0 ; 019D24(W)  019D2C(W)  019D40(R)  019D4B(W)  019D4E(W)  019D62(W)  019D65(R)  019D76(W)  019D79(R)  019D7E(W)  01E05B(Wi) 



; 
ram_05F1_loop_counter                   = $05F1 ; 019D29(W)  019DBD(W)  01E05B(Wi) 



; free addresses
; ram_05F2                              = $05F2 ; 01E05B(Wi) 
; ram_05F3                              = $05F3 ; 01E05B(Wi) 
; ram_05F4                              = $05F4 ; 01E05B(Wi) 



; 00 = 
; 80 = 
ram_05F5_flag                           = $05F5 ; 00BE8A(W)  01A4CA(R)  01A5C6(W)  01E05B(Wi) 



; 
ram_05F6_timer                          = $05F6 ; 01A4D6(W)  01A5CB(W)  01E05B(Wi) 



; 00 = don't restore
; 01 = retore original scroll
ram_05F7_scroll_flag                    = $05F7 ; 016F25(R)  016FB4(R)  016FD1(R)  017EBA(R)  01C501(W)  01E05B(Wi) 01EFFB(R)  01F34D(W)  01F37B(R)  



; 
ram_05F8_temp                           = $05F8 ; 016FBB(W)  016FD6(R)  01E05B(Wi) 01EB59(R)  01F33F(W)  
    ram_05F8_t01_save_scroll_Y_hi           = ram_05F8_temp ; 
    ram_05F8_t02_save_scroll_Y_hi           = ram_05F8_temp ; 



; 
ram_05F9_temp                           = $05F9 ; 016FC0(W)  016FDB(R)  01E05B(Wi) 01EB5E(R)  01F344(W)  
    ram_05F9_t01_save_scroll_Y_lo           = ram_05F9_temp ; 
    ram_05F9_t02_save_scroll_Y_lo           = ram_05F9_temp ; 



; 
ram_05FA_nametable                      = $05FA ; 01E05B(Wi) 01EB68(R)  01F33A(W)  



; 00 = no cheat
; 03 = max power
; FF = max power + invincibility
ram_cheat_type                          = $05FB ; 01E05B(Wi) 01EB9F(W)  



; resets when pause menu is opened
ram_cheat_buttons_counter               = $05FC ; 01E05B(Wi) 01E4D2(W)  



; free addresses
; ram_05FD                              = $05FD ; 01E05B(Wi) 
; ram_05FE                              = $05FE ; 01E05B(Wi) 
; ram_05FF                              = $05FF ; 01E05B(Wi) 



; SOUND ENGINE RAM (start)



; see con_sfx
ram_0600_se_sound_id                    = $0600 ; 00E034(Wx) 00E161(R)  00E166(R)  00E173(W)  00E196(R)  00E21D(W)  00E307(R)  00E343(R)  01E05B(Wi) 



; 
ram_0601_se                             = $0601 ; 00E034(Wx) 00E1AD(R)  00E1B2(R)  00E1BF(W)  00E261(W)  00E317(R)  00E3B4(R)  00E3D1(R)  01E05B(Wi) 



; bzk optimize, useless address
ram_0602_se_useless                     = $0602 ; 00E034(Wx) 00E220(W)  01E05B(Wi) 



; bzk optimize, useless address
ram_0603_se_useless                     = $0603 ; 00E034(Wx) 00E264(W)  01E05B(Wi) 



; 00 = 
; FF = 
ram_0604_se_flag                        = $0604 ; 00E034(Wx) 00E05B(W)  00E2D4(R)  01E05B(Wi) 



; bzk optimize, useless address
ram_0605_se_useless                     = $0605 ; 00E034(Wx) 00E060(W)  00E2C1(R)  00E9B3(W)  01E05B(Wi) 



; bzk optimize, useless address
ram_0606_se_useless                     = $0606 ; 00E034(Wx) 00E065(W)  00E2C8(R)  00E9B9(W)  01E05B(Wi) 



; 00 = 
; FF = 
ram_0607_se_flag                        = $0607 ; 00E034(Wx) 00E230(R)  00E29C(R)  00E2CF(W)  00E2DB(W)  01E05B(Wi) 



; bzk optimize, useless address
ram_0608_se_useless                     = $0608 ; 00E034(Wx) 00E243(W)  00E2B4(W)  01E05B(Wi) 



; 
ram_0609_se                             = $0609 ; 00E034(Wx) 00E25C(R)  00E332(R)  00E3C9(R)  00E3FB(W)  00E44D(R)  00E81F(R)  00E94E(R)  00E951(W)  00E958(W)  00E984(R)  00E98B(W)  01E05B(Wi) 



; 
ram_060A_se                             = $060A ; 00E034(Wx) 00E218(R)  00E294(R)  00E32A(R)  00E36D(W)  00E819(R)  00E81C(W)  01E05B(Wi) 



; channel index
ram_060B_se_ch_index                    = $060B ; 00E034(Wx) 00E215(W)  00E33A(W)  00E452(W)  00E4EE(R)  00E577(R)  00E5D2(R)  00E657(R)  00E677(R)  00E6F0(R)  00E8BF(W)  00E8D8(R)  00E8ED(R)  00E97B(R)  00E981(R)  00E994(R)  00E99A(R)  00EA36(W)  00EA4D(R)  00EA57(W)  00EA65(R)  01E05B(Wi) 



; 
ram_060C_se_temp                        = $060C ; 00E034(Wx) 00E610(W)  00E623(R)  00E62A(R)  00E654(W)  00E66E(R)  01E05B(Wi) 
    ram_060C_se_t01                         = ram_060C_se_temp ; 
    ram_060C_se_t02_reg_index               = ram_060C_se_temp ; 



; 
ram_060D_se_temp                        = $060D ; 00E034(Wx) 00E562(W)  00E56E(R)  00EA2D(W)  00EA48(R)  01E05B(Wi) 
    ram_060D_se_t01_flag                    = ram_060D_se_temp ; 
    ram_060D_se_t02_ptr_hi                  = ram_060D_se_temp ; 



; 0610 is probably unused
ram_060E_se_data_ptr                    = $060E ; 00E034(Wx) 00E416(Wx) 00E4FF(Rx) 00E51D(Wx) 01E05B(Wi) 
; ram_060F                              = $060F ; 00E034(Wx) 00E416(Wx) 00E4FF(Rx) 00E51D(Wx) 01E05B(Wi) 
; ram_0610                              = $0610 ; 00E034(Wx) 01E05B(Wi) 
; ram_0611                              = $0611 ; 00E034(Wx) 00E416(Wx) 00E4FF(Rx) 00E51D(Wx) 01E05B(Wi) 



; 0614 is probably unused
ram_0612_se_data_ptr                    = $0612 ; 00E034(Wx) 00E41C(Wx) 00E504(Rx) 00E522(Wx) 01E05B(Wi) 
; ram_0613                              = $0613 ; 00E034(Wx) 00E41C(Wx) 00E504(Rx) 00E522(Wx) 01E05B(Wi) 
; ram_0614                              = $0614 ; 00E034(Wx) 01E05B(Wi) 
; ram_0615                              = $0615 ; 00E034(Wx) 00E41C(Wx) 00E504(Rx) 00E522(Wx) 01E05B(Wi) 



; 0618 is probably unused
ram_0616_se                             = $0616 ; 00E034(Wx) 00E424(Wx) 00E550(Rx) 00E8A2(Wx) 00E900(Rx) 00E903(Wx) 00E928(Rx) 00E92F(Wx) 01E05B(Wi) 
; ram_0617                              = $0617 ; 00E034(Wx) 00E424(Wx) 00E550(Rx) 00E8A2(Wx) 00E900(Rx) 00E903(Wx) 00E928(Rx) 00E92F(Wx) 01E05B(Wi) 
; ram_0618                              = $0618 ; 00E034(Wx) 01E05B(Wi) 
; ram_0619                              = $0619 ; 00E034(Wx) 00E424(Wx) 00E57B(Rx) 00E8A2(Wx) 00E900(Rx) 00E903(Wx) 00E928(Rx) 00E92F(Wx) 01E05B(Wi) 



; 061C is probably unused
ram_061A_se                             = $061A ; 00E034(Wx) 00E427(Wx) 00E555(Rx) 00E8A8(Wx) 00E90A(Rx) 00E90D(Wx) 00E934(Rx) 00E939(Wx) 01E05B(Wi) 
; ram_061B                              = $061B ; 00E034(Wx) 00E427(Wx) 00E555(Rx) 00E8A8(Wx) 00E90A(Rx) 00E90D(Wx) 00E934(Rx) 00E939(Wx) 01E05B(Wi) 
; ram_061C                              = $061C ; 00E034(Wx) 01E05B(Wi) 
; ram_061D                              = $061D ; 00E034(Wx) 00E427(Wx) 00E8A8(Wx) 00E934(Rx) 00E939(Wx) 01E05B(Wi) 



; 0620 is probably unused
ram_061E_se                             = $061E ; 00E034(Wx) 00E421(Wx) 00E83A(Rx) 00E840(Wx) 00E858(Rx) 00E873(Rx) 00E879(Wx) 01E05B(Wi) 
; ram_061F                              = $061F ; 00E034(Wx) 00E421(Wx) 00E83A(Rx) 00E840(Wx) 00E858(Rx) 00E873(Rx) 00E879(Wx) 01E05B(Wi) 
; ram_0620                              = $0620 ; 00E034(Wx) 01E05B(Wi) 
; ram_0621                              = $0621 ; 00E034(Wx) 00E421(Wx) 00E83A(Rx) 00E840(Wx) 00E858(Rx) 00E873(Rx) 00E879(Wx) 01E05B(Wi) 



; 0624 is probably unused
ram_0622_se                             = $0622 ; 00E034(Wx) 00E27C(Wx) 00E42F(Wx) 00E52D(Wx) 01E05B(Wi) 
; ram_0623                              = $0623 ; 00E034(Wx) 00E27C(Wx) 00E42F(Wx) 00E52D(Wx) 01E05B(Wi) 
; ram_0624                              = $0624 ; 00E034(Wx) 01E05B(Wi) 
; ram_0625                              = $0625 ; 00E034(Wx) 00E27C(Wx) 00E42F(Wx) 00E52D(Wx) 01E05B(Wi) 



; 0628 is probably unused
; see con_0626
ram_0626_se_flags                       = $0626 ; 00E034(Wx) 00E281(Rx) 00E286(Wx) 00E549(Rx) 00E55D(Rx) 00E5B2(Rx) 00E8AB(Rx) 00E8B0(Wx) 00E910(Rx) 00E915(Wx) 00E93C(Rx) 00E941(Wx) 00E99E(Rx) 00E9A3(Wx) 00E9A7(Rx) 00E9AC(Wx) 01E05B(Wi) 
; ram_0627                              = $0627 ; 00E034(Wx) 00E281(Rx) 00E286(Wx) 00E549(Rx) 00E55D(Rx) 00E5B2(Rx) 00E8AB(Rx) 00E8B0(Wx) 00E910(Rx) 00E915(Wx) 00E93C(Rx) 00E941(Wx) 00E99E(Rx) 00E9A3(Wx) 00E9A7(Rx) 00E9AC(Wx) 01E05B(Wi) 
; ram_0628                              = $0628 ; 00E034(Wx) 01E05B(Wi) 
; ram_0629                              = $0629 ; 00E034(Wx) 00E281(Rx) 00E286(Wx) 00E549(Rx) 00E8AB(Rx) 00E8B0(Wx) 00E93C(Rx) 00E941(Wx) 01E05B(Wi) 



; 
ram_062A_se                             = $062A ; 00E034(Wx) 00E498(Wx) 00E5C2(Rx) 00E68A(Rx) 00E69D(Wx) 00E6B1(Wx) 01E05B(Wi) 
; ram_062B                              = $062B ; 00E034(Wx) 00E498(Wx) 00E5C2(Rx) 00E68A(Rx) 00E69D(Wx) 00E6B1(Wx) 01E05B(Wi) 
; ram_062C                              = $062C ; 00E034(Wx) 00E498(Wx) 00E5E0(Rx) 00E68A(Rx) 00E69D(Wx) 00E6B1(Wx) 01E05B(Wi) 
; ram_062D                              = $062D ; 00E034(Wx) 00E498(Wx) 00E5C2(Rx) 00E68A(Rx) 00E69D(Wx) 00E6B1(Wx) 01E05B(Wi) 



; 0630 is probably unused
ram_062E_se                             = $062E ; 00E034(Wx) 00E42A(Wx) 00E5C2(Rx) 00E89B(Wx) 00E8F5(Rx) 00E8F8(Wx) 00E91D(Rx) 00E924(Wx) 00E945(Wx) 01E05B(Wi) 
; ram_062F                              = $062F ; 00E034(Wx) 00E42A(Wx) 00E5C2(Rx) 00E89B(Wx) 01E05B(Wi) 
; ram_0630                              = $0630 ; 00E034(Wx) 01E05B(Wi) 
; ram_0631                              = $0631 ; 00E034(Wx) 00E42A(Wx) 00E5C2(Rx) 00E89B(Wx) 00E8F5(Rx) 00E8F8(Wx) 00E919(Wx) 00E91D(Rx) 00E924(Wx) 00E945(Wx) 01E05B(Wi) 



; 
ram_0632_se                             = $0632 ; 00E034(Wx) 00E5A2(Rx) 00EAA7(Wx) 01E05B(Wi) 
; ram_0633                              = $0633 ; 00E034(Wx) 00E5A2(Rx) 00EAA7(Wx) 01E05B(Wi) 
; ram_0634                              = $0634 ; 00E034(Wx) 00EAA7(Wx) 01E05B(Wi) 
; ram_0635                              = $0635 ; 00E034(Wx) 01E05B(Wi) 



; 
ram_0636_se                             = $0636 ; 00E034(Wx) 00E438(Wx) 00E5A2(Rx) 00E8DF(Wx) 01E05B(Wi) 
; ram_0637                              = $0637 ; 00E034(Wx) 00E438(Wx) 00E5A2(Rx) 00E8DF(Wx) 01E05B(Wi) 



; 
ram_0638_se_data_ptr_lo                 = $0638 ; 00E034(Wx) 00E388(Wx) 00E45C(Rx) 00E470(Wx) 01E05B(Wi) 
; ram_0639                              = $0639 ; 00E034(Wx) 00E388(Wx) 00E45C(Rx) 00E470(Wx) 01E05B(Wi) 
; ram_063A                              = $063A ; 00E034(Wx) 00E388(Wx) 00E45C(Rx) 00E470(Wx) 01E05B(Wi) 
; ram_063B                              = $063B ; 00E034(Wx) 00E388(Wx) 00E45C(Rx) 00E470(Wx) 01E05B(Wi) 



; 
ram_063C_se_data_ptr_hi                 = $063C ; 00E034(Wx) 00E38E(Wx) 00E461(Rx) 00E475(Wx) 01E05B(Wi) 
; ram_063D                              = $063D ; 00E034(Wx) 00E38E(Wx) 00E461(Rx) 00E475(Wx) 01E05B(Wi) 
; ram_063E                              = $063E ; 00E034(Wx) 00E38E(Wx) 00E461(Rx) 00E475(Wx) 01E05B(Wi) 
; ram_063F                              = $063F ; 00E034(Wx) 00E38E(Wx) 00E461(Rx) 00E475(Wx) 01E05B(Wi) 



; 
ram_0640_se_data_ptr_lo                 = $0640 ; 00E034(Wx) 00E041(Wy) 00E5FA(Rx) 01E05B(Wi) 
; ram_0641                              = $0641 ; 00E034(Wx) 00E041(Wy) 00E5FA(Rx) 01E05B(Wi) 
; ram_0642                              = $0642 ; 00E034(Wx) 00E041(Wy) 00E5FA(Rx) 01E05B(Wi) 
; ram_0643                              = $0643 ; 00E034(Wx) 00E041(Wy) 01E05B(Wi) 



; 
ram_0644_se_data_ptr_hi                 = $0644 ; 00E034(Wx) 00E046(Wy) 00E5FF(Rx) 01E05B(Wi) 
; ram_0645                              = $0645 ; 00E034(Wx) 00E046(Wy) 00E5FF(Rx) 01E05B(Wi) 
; ram_0646                              = $0646 ; 00E034(Wx) 00E046(Wy) 00E5FF(Rx) 01E05B(Wi) 
; ram_0647                              = $0647 ; 00E034(Wx) 00E046(Wy) 01E05B(Wi) 



; 
ram_0648_se                             = $0648 ; 00E034(Wx) 00E235(Wx) 00E259(Wx) 00E2A1(Rx) 00E3AA(Wx) 01E05B(Wi) 
; ram_0649                              = $0649 ; 00E034(Wx) 00E235(Wx) 00E259(Wx) 00E2A1(Rx) 00E3AA(Wx) 01E05B(Wi) 
; ram_064A                              = $064A ; 00E034(Wx) 00E235(Wx) 00E259(Wx) 00E2A1(Rx) 00E3AA(Wx) 01E05B(Wi) 
; ram_064B                              = $064B ; 00E034(Wx) 00E235(Wx) 00E259(Wx) 00E2A1(Rx) 00E3AA(Wx) 01E05B(Wi) 



; 
ram_064C_se                             = $064C ; 00E034(Wx) 00E256(Rx) 00E2A4(Rx) 00E3AD(Wx) 00E484(Wx) 00E4D9(Rx) 01E05B(Wi) 
; ram_064D                              = $064D ; 00E034(Wx) 00E256(Rx) 00E2A4(Rx) 00E3AD(Wx) 00E484(Wx) 00E4D9(Rx) 01E05B(Wi) 
; ram_064E                              = $064E ; 00E034(Wx) 00E256(Rx) 00E2A4(Rx) 00E3AD(Wx) 00E484(Wx) 00E4D9(Rx) 01E05B(Wi) 
; ram_064F                              = $064F ; 00E034(Wx) 00E256(Rx) 00E2A4(Rx) 00E3AD(Wx) 00E484(Wx) 01E05B(Wi) 



; 
ram_0650_se                             = $0650 ; 00E034(Wx) 00E39C(Wx) 00E604(Rx) 00E7A8(Rx) 00E7AE(Wx) 00E7B2(Rx) 00E7B8(Wx) 00E7BF(Wx) 00EAAE(Wx) 01E05B(Wi) 
; ram_0651                              = $0651 ; 00E034(Wx) 00E39C(Wx) 00E604(Rx) 00E7A8(Rx) 00E7AE(Wx) 00E7B2(Rx) 00E7B8(Wx) 00E7BF(Wx) 00EAAE(Wx) 01E05B(Wi) 
; ram_0652                              = $0652 ; 00E034(Wx) 00E39C(Wx) 00E604(Rx) 00E7A8(Rx) 00E7AE(Wx) 00E7B2(Rx) 00E7B8(Wx) 00E7BF(Wx) 00EAAE(Wx) 01E05B(Wi) 
; ram_0653                              = $0653 ; 00E034(Wx) 00E39C(Wx) 01E05B(Wi) 



; 
ram_0654_se                             = $0654 ; 00E034(Wx) 00E39F(Wx) 00E492(Wx) 00E608(Rx) 01E05B(Wi) 
; ram_0655                              = $0655 ; 00E034(Wx) 00E39F(Wx) 00E492(Wx) 00E608(Rx) 01E05B(Wi) 
; ram_0656                              = $0656 ; 00E034(Wx) 00E39F(Wx) 00E492(Wx) 00E608(Rx) 01E05B(Wi) 
; ram_0657                              = $0657 ; 00E034(Wx) 00E39F(Wx) 00E492(Wx) 00E643(Rx) 01E05B(Wi) 



; 
ram_0658_se                             = $0658 ; 00E034(Wx) 00E3A2(Wx) 00E60D(Rx) 00EA83(Wx) 01E05B(Wi) 
; ram_0659                              = $0659 ; 00E034(Wx) 00E3A2(Wx) 00E60D(Rx) 00EA83(Wx) 01E05B(Wi) 
; ram_065A                              = $065A ; 00E034(Wx) 00E3A2(Wx) 00E60D(Rx) 00EA83(Wx) 01E05B(Wi) 
; ram_065B                              = $065B ; 00E034(Wx) 00E3A2(Wx) 01E05B(Wi) 



; 
ram_065C_se                             = $065C ; 00E034(Wx) 00E3A5(Wx) 00E495(Rx) 00E6A6(Rx) 00EA9D(Wx) 01E05B(Wi) 
; ram_065D                              = $065D ; 00E034(Wx) 00E3A5(Wx) 00E495(Rx) 00E6A6(Rx) 00EA9D(Wx) 01E05B(Wi) 
; ram_065E                              = $065E ; 00E034(Wx) 00E3A5(Wx) 00E495(Rx) 00E6A6(Rx) 00EA9D(Wx) 01E05B(Wi) 
; ram_065F                              = $065F ; 00E034(Wx) 00E3A5(Wx) 00E495(Rx) 00E6A6(Rx) 00EA9D(Wx) 01E05B(Wi) 



; see con_0660
ram_0660_se_flags                       = $0660 ; 00E034(Wx) 00E03C(Wy) 00E23A(Rx) 00E246(Rx) 00E24B(Wx) 00E274(Rx) 00E279(Wx) 00E2DF(Rx) 00E2E6(Rx) 00E396(Wx) 00E592(Rx) 00E67B(Rx) 00E6BD(Rx) 00E6D2(Rx) 00E79D(Rx) 00E7A2(Wx) 00E7C3(Rx) 00E7CA(Wx) 01E05B(Wi) 
; ram_0661                              = $0661 ; 00E034(Wx) 00E03C(Wy) 00E23A(Rx) 00E246(Rx) 00E24B(Wx) 00E274(Rx) 00E279(Wx) 00E2DF(Rx) 00E2E6(Rx) 00E396(Wx) 00E592(Rx) 00E67B(Rx) 00E6BD(Rx) 00E6D2(Rx) 00E79D(Rx) 00E7A2(Wx) 00E7C3(Rx) 00E7CA(Wx) 01E05B(Wi) 
; ram_0662                              = $0662 ; 00E034(Wx) 00E03C(Wy) 00E23A(Rx) 00E246(Rx) 00E24B(Wx) 00E2DF(Rx) 00E2E6(Rx) 00E396(Wx) 00E67B(Rx) 00E6D2(Rx) 00E79D(Rx) 00E7A2(Wx) 00E7C3(Rx) 00E7CA(Wx) 01E05B(Wi) 
; ram_0663                              = $0663 ; 00E034(Wx) 00E03C(Wy) 00E23A(Rx) 00E246(Rx) 00E24B(Wx) 00E274(Rx) 00E279(Wx) 00E2DF(Rx) 00E2E6(Rx) 00E396(Wx) 00E67B(Rx) 00E6D2(Rx) 00E79D(Rx) 00E7A2(Wx) 01E05B(Wi) 



; 
ram_0664_se                             = $0664 ; 00E034(Wx) 00E399(Wx) 00E49B(Rx) 00E4A5(Rx) 00E4AC(Rx) 00E4C6(Rx) 00E4E0(Rx) 00E592(Rx) 00E683(Rx) 00E68F(Rx) 00E7CE(Rx) 00E7D7(Rx) 00E7DE(Wx) 00E7F1(Rx) 00E7F9(Wx) 01E05B(Wi) 
; ram_0665                              = $0665 ; 00E034(Wx) 00E399(Wx) 00E49B(Rx) 00E4A5(Rx) 00E4AC(Rx) 00E4C6(Rx) 00E4E0(Rx) 00E592(Rx) 00E683(Rx) 00E68F(Rx) 00E7CE(Rx) 00E7D7(Rx) 00E7DE(Wx) 00E7F1(Rx) 00E7F9(Wx) 01E05B(Wi) 
; ram_0666                              = $0666 ; 00E034(Wx) 00E399(Wx) 00E49B(Rx) 00E4A5(Rx) 00E4AC(Rx) 00E4E0(Rx) 00E683(Rx) 00E68F(Rx) 00E7CE(Rx) 00E7D7(Rx) 00E7DE(Wx) 00E7E8(Rx) 00E7F9(Wx) 01E05B(Wi) 
; ram_0667                              = $0667 ; 00E034(Wx) 00E399(Wx) 00E49B(Rx) 00E4A5(Rx) 00E4AC(Rx) 00E4C6(Rx) 00E683(Rx) 00E68F(Rx) 00E7CE(Rx) 00E7D7(Rx) 00E7DE(Wx) 01E05B(Wi) 



; 
ram_0668_se                             = $0668 ; 00E034(Wx) 00E4BA(Rx) 00E4D0(Wx) 00E6A9(Rx) 00E6AE(Rx) 00E7E4(Wx) 01E05B(Wi) 
; ram_0669                              = $0669 ; 00E034(Wx) 00E4BA(Rx) 00E4D0(Wx) 00E6A9(Rx) 00E6AE(Rx) 00E7E4(Wx) 01E05B(Wi) 
; ram_066A                              = $066A ; 00E034(Wx) 00E4BA(Rx) 00E6A9(Rx) 00E6AE(Rx) 00E7E4(Wx) 01E05B(Wi) 
; ram_066B                              = $066B ; 00E034(Wx) 00E4BA(Rx) 00E6A9(Rx) 00E6AE(Rx) 00E7E4(Wx) 01E05B(Wi) 



; 
ram_066C_se                             = $066C ; 00E034(Wx) 00E4BD(Wx) 00E4D5(Wx) 00E696(Wx) 00E6A2(Rx) 00E6B6(Wx) 01E05B(Wi) 
; ram_066D                              = $066D ; 00E034(Wx) 00E4BD(Wx) 00E4D5(Wx) 00E696(Wx) 00E6A2(Rx) 00E6B6(Wx) 01E05B(Wi) 
; ram_066E                              = $066E ; 00E034(Wx) 00E4B6(Wx) 00E4BD(Wx) 00E696(Wx) 00E6A2(Rx) 00E6B6(Wx) 01E05B(Wi) 
; ram_066F                              = $066F ; 00E034(Wx) 00E4BD(Wx) 00E4D5(Wx) 00E696(Wx) 00E6A2(Rx) 00E6B6(Wx) 01E05B(Wi) 



; free addresses
; ram_0670                              = $0670 ; 00E034(Wx) 01E05B(Wi) 
; ram_0671                              = $0671 ; 00E034(Wx) 01E05B(Wi) 
; ram_0672                              = $0672 ; 00E034(Wx) 01E05B(Wi) 
; ram_0673                              = $0673 ; 00E034(Wx) 01E05B(Wi) 
; ram_0674                              = $0674 ; 00E034(Wx) 01E05B(Wi) 



; 
ram_0675_se                             = $0675 ; 00E034(Wx) 00E378(W)  00E5F5(Rx) 00E800(Wx) 01E05B(Wi) 
; ram_0676                              = $0676 ; 00E034(Wx) 00E37B(W)  00E5F5(Rx) 00E800(Wx) 01E05B(Wi) 



; paired addresses
ram_0677_se_data_lo                     = $0677 ; 00E034(Wx) 00E5F5(Rx) 00E800(Wx) 00E9E2(Wy) 00EA0E(Ry) 01E05B(Wi) 
ram_0678_se_data_hi                     = $0678 ; 00E034(Wx) 00E9E7(Wy) 00EA13(Ry) 01E05B(Wi) 
; ram_0679                              = $0679 ; 00E034(Wx) 00E9E2(Wy) 00EA0E(Ry) 01E05B(Wi) 
; ram_067A                              = $067A ; 00E034(Wx) 00E9E7(Wy) 00EA13(Ry) 01E05B(Wi) 
; ram_067B                              = $067B ; 00E034(Wx) 00E9E2(Wy) 00EA0E(Ry) 01E05B(Wi) 
; ram_067C                              = $067C ; 00E034(Wx) 00E9E7(Wy) 00EA13(Ry) 01E05B(Wi) 
; ram_067D                              = $067D ; 00E034(Wx) 00E9E2(Wy) 00EA0E(Ry) 01E05B(Wi) 
; ram_067E                              = $067E ; 00E034(Wx) 00E9E7(Wy) 00EA13(Ry) 01E05B(Wi) 
; ram_067F                              = $067F ; 00E034(Wx) 00E9E2(Wy) 00EA0E(Ry) 01E05B(Wi) 
; ram_0680                              = $0680 ; 00E034(Wx) 00E9E7(Wy) 00EA13(Ry) 01E05B(Wi) 
; ram_0681                              = $0681 ; 00E034(Wx) 00E9E2(Wy) 00EA0E(Ry) 01E05B(Wi) 
; ram_0682                              = $0682 ; 00E034(Wx) 00E9E7(Wy) 00EA13(Ry) 01E05B(Wi) 
; ram_0683                              = $0683 ; 00E034(Wx) 00E9E2(Wy) 00EA0E(Ry) 01E05B(Wi) 
; ram_0684                              = $0684 ; 00E034(Wx) 00E9E7(Wy) 00EA13(Ry) 01E05B(Wi) 
; ram_0685                              = $0685 ; 00E034(Wx) 00E9E2(Wy) 00EA0E(Ry) 01E05B(Wi) 
; ram_0686                              = $0686 ; 00E034(Wx) 00E9E7(Wy) 00EA13(Ry) 01E05B(Wi) 



; 
ram_0687_se                             = $0687 ; 00E034(Wx) 00E9DA(Wy) 00EA01(Ry) 00EA06(Wy) 01E05B(Wi) 
; ram_0688                              = $0688 ; 00E034(Wx) 00E9DA(Wy) 00EA01(Ry) 00EA06(Wy) 01E05B(Wi) 
; ram_0689                              = $0689 ; 00E034(Wx) 00E9DA(Wy) 00EA01(Ry) 00EA06(Wy) 01E05B(Wi) 
; ram_068A                              = $068A ; 00E034(Wx) 00E9DA(Wy) 00EA01(Ry) 00EA06(Wy) 01E05B(Wi) 
; ram_068B                              = $068B ; 00E034(Wx) 00E9DA(Wy) 00EA01(Ry) 00EA06(Wy) 01E05B(Wi) 
; ram_068C                              = $068C ; 00E034(Wx) 00E9DA(Wy) 00EA01(Ry) 00EA06(Wy) 01E05B(Wi) 
; ram_068D                              = $068D ; 00E034(Wx) 00E9DA(Wy) 00EA01(Ry) 00EA06(Wy) 01E05B(Wi) 
; ram_068E                              = $068E ; 00E034(Wx) 00E9DA(Wy) 00EA01(Ry) 00EA06(Wy) 01E05B(Wi) 



; 
ram_068F_se                             = $068F ; 00E034(Wx) 00EA3C(Wx) 00EA5B(Rx) 01E05B(Wi) 
; ram_0690                              = $0690 ; 00E034(Wx) 00EA3C(Wx) 00EA5B(Rx) 01E05B(Wi) 
; ram_0691                              = $0691 ; 00E034(Wx) 00EA3C(Wx) 00EA5B(Rx) 01E05B(Wi) 
; ram_0692                              = $0692 ; 00E034(Wx) 00EA3C(Wx) 00EA5B(Rx) 01E05B(Wi) 
; ram_0693                              = $0693 ; 00E034(Wx) 00EA41(Wx) 00EA60(Rx) 01E05B(Wi) 
; ram_0694                              = $0694 ; 00E034(Wx) 00EA41(Wx) 00EA60(Rx) 01E05B(Wi) 
; ram_0695                              = $0695 ; 00E034(Wx) 00EA41(Wx) 00EA60(Rx) 01E05B(Wi) 
; ram_0696                              = $0696 ; 00E034(Wx) 00EA41(Wx) 00EA60(Rx) 01E05B(Wi) 
; ram_0697                              = $0697 ; 00E034(Wx) 00EA3C(Wx) 00EA5B(Rx) 01E05B(Wi) 
; ram_0698                              = $0698 ; 00E034(Wx) 00EA3C(Wx) 00EA5B(Rx) 01E05B(Wi) 
; ram_0699                              = $0699 ; 00E034(Wx) 00EA3C(Wx) 00EA5B(Rx) 01E05B(Wi) 
; ram_069A                              = $069A ; 00E034(Wx) 00EA3C(Wx) 00EA5B(Rx) 01E05B(Wi) 
; ram_069B                              = $069B ; 00E034(Wx) 00EA41(Wx) 00EA60(Rx) 01E05B(Wi) 
; ram_069C                              = $069C ; 00E034(Wx) 00EA41(Wx) 00EA60(Rx) 01E05B(Wi) 
; ram_069D                              = $069D ; 00E034(Wx) 00EA41(Wx) 00EA60(Rx) 01E05B(Wi) 
; ram_069E                              = $069E ; 00E034(Wx) 00EA41(Wx) 00EA60(Rx) 01E05B(Wi) 
; ram_069F                              = $069F ; 00E034(Wx) 00EA3C(Wx) 00EA5B(Rx) 01E05B(Wi) 
; ram_06A0                              = $06A0 ; 00E034(Wx) 00EA3C(Wx) 00EA5B(Rx) 01E05B(Wi) 
; ram_06A1                              = $06A1 ; 00E034(Wx) 01E05B(Wi) 
; ram_06A2                              = $06A2 ; 00E034(Wx) 00EA3C(Wx) 00EA5B(Rx) 01E05B(Wi) 
; ram_06A3                              = $06A3 ; 00E034(Wx) 00EA41(Wx) 00EA60(Rx) 01E05B(Wi) 
; ram_06A4                              = $06A4 ; 00E034(Wx) 00EA41(Wx) 00EA60(Rx) 01E05B(Wi) 
; ram_06A5                              = $06A5 ; 00E034(Wx) 01E05B(Wi) 
; ram_06A6                              = $06A6 ; 00E034(Wx) 00EA41(Wx) 00EA60(Rx) 01E05B(Wi) 
; ram_06A7                              = $06A7 ; 00E034(Wx) 00EA3C(Wx) 00EA5B(Rx) 01E05B(Wi) 
; ram_06A8                              = $06A8 ; 00E034(Wx) 00EA3C(Wx) 00EA5B(Rx) 01E05B(Wi) 
; ram_06A9                              = $06A9 ; 00E034(Wx) 01E05B(Wi) 
; ram_06AA                              = $06AA ; 00E034(Wx) 01E05B(Wi) 
; ram_06AB                              = $06AB ; 00E034(Wx) 00EA41(Wx) 00EA60(Rx) 01E05B(Wi) 
; ram_06AC                              = $06AC ; 00E034(Wx) 00EA41(Wx) 00EA60(Rx) 01E05B(Wi) 
; ram_06AD                              = $06AD ; 00E034(Wx) 01E05B(Wi) 
; ram_06AE                              = $06AE ; 00E034(Wx) 01E05B(Wi) 



; free addresses (reserved as a part of ram_068F_se array?)
; ram_06AF                              = $06AF ; 00E034(Wx) 01E05B(Wi) 
; ram_06B0                              = $06B0 ; 00E034(Wx) 01E05B(Wi) 
; ram_06B1                              = $06B1 ; 00E034(Wx) 01E05B(Wi) 
; ram_06B2                              = $06B2 ; 00E034(Wx) 01E05B(Wi) 
; ram_06B3                              = $06B3 ; 00E034(Wx) 01E05B(Wi) 
; ram_06B4                              = $06B4 ; 00E034(Wx) 01E05B(Wi) 
; ram_06B5                              = $06B5 ; 00E034(Wx) 01E05B(Wi) 
; ram_06B6                              = $06B6 ; 00E034(Wx) 01E05B(Wi) 



; 6 addresses for each channel
ram_06B7_se_data                        = $06B7 ; 00E034(Wx) 00E851(Wi) 00E86B(Ri) 01E05B(Wi) 
; ram_06B8                              = $06B8 ; 00E034(Wx) 00E84C(Wi) 00E866(Ri) 01E05B(Wi) 
; ram_06B9                              = $06B9 ; 00E034(Wx) 00E847(Wi) 00E85C(Ri) 00E863(Wi) 01E05B(Wi) 
; ram_06BA                              = $06BA ; 00E034(Wx) 00E851(Wi) 00E86B(Ri) 01E05B(Wi) 
; ram_06BB                              = $06BB ; 00E034(Wx) 00E84C(Wi) 00E866(Ri) 01E05B(Wi) 
; ram_06BC                              = $06BC ; 00E034(Wx) 00E847(Wi) 00E85C(Ri) 00E863(Wi) 01E05B(Wi) 
; ram_06BD                              = $06BD ; 00E034(Wx) 00E851(Wi) 00E86B(Ri) 01E05B(Wi) 
; ram_06BE                              = $06BE ; 00E034(Wx) 00E84C(Wi) 00E866(Ri) 01E05B(Wi) 
; ram_06BF                              = $06BF ; 00E034(Wx) 00E847(Wi) 00E85C(Ri) 00E863(Wi) 01E05B(Wi) 
; ram_06C0                              = $06C0 ; 00E034(Wx) 01E05B(Wi) 
; ram_06C1                              = $06C1 ; 00E034(Wx) 01E05B(Wi) 
; ram_06C2                              = $06C2 ; 00E034(Wx) 01E05B(Wi) 
; ram_06C3                              = $06C3 ; 00E034(Wx) 01E05B(Wi) 
; ram_06C4                              = $06C4 ; 00E034(Wx) 01E05B(Wi) 
; ram_06C5                              = $06C5 ; 00E034(Wx) 01E05B(Wi) 
; ram_06C6                              = $06C6 ; 00E034(Wx) 01E05B(Wi) 
; ram_06C7                              = $06C7 ; 00E034(Wx) 01E05B(Wi) 
; ram_06C8                              = $06C8 ; 00E034(Wx) 01E05B(Wi) 
; ram_06C9                              = $06C9 ; 00E034(Wx) 00E851(Wi) 00E86B(Ri) 01E05B(Wi) 
; ram_06CA                              = $06CA ; 00E034(Wx) 00E84C(Wi) 00E866(Ri) 01E05B(Wi) 
; ram_06CB                              = $06CB ; 00E034(Wx) 00E847(Wi) 00E85C(Ri) 00E863(Wi) 01E05B(Wi) 
; ram_06CC                              = $06CC ; 00E034(Wx) 00E851(Wi) 00E86B(Ri) 01E05B(Wi) 
; ram_06CD                              = $06CD ; 00E034(Wx) 00E84C(Wi) 00E866(Ri) 01E05B(Wi) 
; ram_06CE                              = $06CE ; 00E034(Wx) 00E847(Wi) 00E85C(Ri) 00E863(Wi) 01E05B(Wi) 



; 
ram_06CF_se                             = $06CF ; 00E034(Wx) 00E178(W)  00E223(W)  00E30C(R)  00E349(W)  01E05B(Wi) 



; 
ram_06D0_se                             = $06D0 ; 00E034(Wx) 00E226(W)  00E30F(R)  00E34C(W)  01E05B(Wi) 



; 
ram_06D1_se                             = $06D1 ; 00E034(Wx) 00E1C4(W)  00E267(W)  00E31C(R)  00E3D7(W)  01E05B(Wi) 



; 
ram_06D2_se                             = $06D2 ; 00E034(Wx) 00E26A(W)  00E31F(R)  00E3DA(W)  01E05B(Wi) 



; 
ram_06D3_se                             = $06D3 ; 00E034(Wx) 00E17D(W)  00E65A(Rx) 00E82C(Wx) 00E8C4(Rx) 00EA8D(Wx) 00EA93(Wx) 01E05B(Wi) 
; ram_06D4                              = $06D4 ; 00E034(Wx) 00E180(W)  00E65A(Rx) 00E82C(Wx) 00E8C4(Rx) 00EA8D(Wx) 00EA93(Wx) 01E05B(Wi) 
; ram_06D5                              = $06D5 ; 00E034(Wx) 00E183(W)  00E65A(Rx) 00E82C(Wx) 00E8C4(Rx) 00EA8D(Wx) 00EA93(Wx) 01E05B(Wi) 
; ram_06D6                              = $06D6 ; 00E034(Wx) 00E186(W)  00E82C(Wx) 01E05B(Wi) 



; 
ram_06D7_se_temp                        = $06D7 ; 00E034(Wx) 00E651(W)  00E66B(R)  00E674(R)  00EA78(W)  00EA7C(R)  01E05B(Wi) 
    ram_06D7_se_t01_reg_value               = ram_06D7_se_temp ; 
    ram_06D7_se_t02_channel_index           = ram_06D7_se_temp ; 



; 
ram_06D8_se                             = $06D8 ; 00E034(Wx) 00E189(W)  00EA22(Wx) 00EA6B(Wx) 00EA6F(Rx) 01E05B(Wi) 
; ram_06D9                              = $06D9 ; 00E034(Wx) 00E18C(W)  00EA22(Wx) 00EA6B(Wx) 00EA6F(Rx) 01E05B(Wi) 
; ram_06DA                              = $06DA ; 00E034(Wx) 00E18F(W)  00EA22(Wx) 00EA6B(Wx) 00EA6F(Rx) 01E05B(Wi) 
; ram_06DB                              = $06DB ; 00E034(Wx) 00E192(W)  00EA22(Wx) 00EA6B(Wx) 00EA6F(Rx) 01E05B(Wi) 



; 
ram_06DC_se                             = $06DC ; 00E034(Wx) 00E06A(W)  00E65F(Rx) 00E668(Wx) 00E8B9(Wx) 00E8C9(Rx) 00E8D2(Wx) 00E95B(Rx) 00E960(Wx) 01E05B(Wi) 
; ram_06DD                              = $06DD ; 00E034(Wx) 00E06D(W)  00E65F(Rx) 00E668(Wx) 00E8B9(Wx) 00E8C9(Rx) 00E8D2(Wx) 00E95B(Rx) 00E960(Wx) 01E05B(Wi) 
; ram_06DE                              = $06DE ; 00E034(Wx) 00E65F(Rx) 00E8C9(Rx) 01E05B(Wi) 
; ram_06DF                              = $06DF ; 00E034(Wx) 00E95B(Rx) 00E960(Wx) 01E05B(Wi) 



; 
ram_06E0_se                             = $06E0 ; 00E034(Wx) 00E393(Wx) 00E9C6(Rx) 00E9C9(Wx) 00E9EF(Rx) 00EA1C(Wx) 01E05B(Wi) 
; ram_06E1                              = $06E1 ; 00E034(Wx) 00E393(Wx) 00E9C6(Rx) 00E9C9(Wx) 00E9EF(Rx) 00EA1C(Wx) 01E05B(Wi) 
; ram_06E2                              = $06E2 ; 00E034(Wx) 00E393(Wx) 00E9C6(Rx) 00E9C9(Wx) 00E9EF(Rx) 00EA1C(Wx) 01E05B(Wi) 
; ram_06E3                              = $06E3 ; 00E034(Wx) 00E393(Wx) 00E9C6(Rx) 00E9C9(Wx) 00E9EF(Rx) 00EA1C(Wx) 01E05B(Wi) 



; 
ram_06E4_se_temp                        = $06E4 ; 00E034(Wx) 00E9C0(W)  00E9D7(R)  00E9F7(W)  00E9FC(R)  01E05B(Wi) 
    ram_06E4_se_t01_BC_value                = ram_06E4_se_temp ; 
    ram_06E4_se_t02_BD_value                = ram_06E4_se_temp ; 



; 
ram_06E5_se_temp                        = $06E5 ; 00E034(Wx) 00E9CE(W)  00E9D3(R)  01E05B(Wi) 
    ram_06E5_se_t01                         = ram_06E5_se_temp ; 



; bzk optimize, useless address
ram_06E6_se_useless                     = $06E6 ; 00E034(Wx) 00E250(W)  00E28B(W)  01E05B(Wi) 



; free address
; ram_06E7                              = $06E7 ; 00E034(Wx) 01E05B(Wi) 



; SOUND ENGINE RAM (end)



; 00 = don't have
; 01 = have
ram_06E8_exit_item                      = $06E8 ; 00E034(Wx) 01A03D(R)  01A398(W)  01A472(R)  01A526(R)  01E05B(Wi) 01E70D(W)  01EB42(R)  



; free addresses
; ram_06E9                              = $06E9 ; 00E034(Wx) 01E05B(Wi) 
; ram_06EA                              = $06EA ; 00E034(Wx) 01E05B(Wi) 
; ram_06EB                              = $06EB ; 00E034(Wx) 01E05B(Wi) 
; ram_06EC                              = $06EC ; 00E034(Wx) 01E05B(Wi) 
; ram_06ED                              = $06ED ; 00E034(Wx) 01E05B(Wi) 
; ram_06EE                              = $06EE ; 00E034(Wx) 01E05B(Wi) 
; ram_06EF                              = $06EF ; 00E034(Wx) 01E05B(Wi) 



ram_06F0_array                          = $06F0 ; 00E034(Wx) 01A04C(Rx) 01A095(Rx) 01A09C(Wx) 01E05B(Wi) 01E727(Wx) 
; ram_06F1                              = $06F1 ; 00E034(Wx) 01A04C(Rx) 01A095(Rx) 01A09C(Wx) 01E05B(Wi) 01E727(Wx) 
; ram_06F2                              = $06F2 ; 00E034(Wx) 01A04C(Rx) 01A095(Rx) 01A09C(Wx) 01E05B(Wi) 01E727(Wx) 
; ram_06F3                              = $06F3 ; 00E034(Wx) 01A04C(Rx) 01A095(Rx) 01A09C(Wx) 01E05B(Wi) 01E727(Wx) 
; ram_06F4                              = $06F4 ; 00E034(Wx) 01A04C(Rx) 01A095(Rx) 01A09C(Wx) 01E05B(Wi) 01E727(Wx) 
; ram_06F5                              = $06F5 ; 00E034(Wx) 01A04C(Rx) 01A095(Rx) 01A09C(Wx) 01E05B(Wi) 01E727(Wx) 
; ram_06F6                              = $06F6 ; 00E034(Wx) 01E05B(Wi) 01E727(Wx) 
; ram_06F7                              = $06F7 ; 00E034(Wx) 01E05B(Wi) 01E727(Wx) 
; ram_06F8                              = $06F8 ; 00E034(Wx) 01A04C(Rx) 01A095(Rx) 01A09C(Wx) 01E05B(Wi) 01E727(Wx) 
; ram_06F9                              = $06F9 ; 00E034(Wx) 01E05B(Wi) 01E727(Wx) 
; ram_06FA                              = $06FA ; 00E034(Wx) 01E05B(Wi) 01E727(Wx) 
; ram_06FB                              = $06FB ; 00E034(Wx) 01E05B(Wi) 01E727(Wx) 
; ram_06FC                              = $06FC ; 00E034(Wx) 01A04C(Rx) 01A095(Rx) 01A09C(Wx) 01E05B(Wi) 01E727(Wx) 
; ram_06FD                              = $06FD ; 00E034(Wx) 01E05B(Wi) 01E727(Wx) 
; ram_06FE                              = $06FE ; 00E034(Wx) 01E05B(Wi) 01E727(Wx) 
; ram_06FF                              = $06FF ; 00E034(Wx) 01E05B(Wi) 01E727(Wx) 



; 0700-07FF (100) OAM srites
ram_oam                                 = $0700 ; for common links
    ram_spr_Y                               = $0700 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
    ram_spr_T                               = $0701 ; 01E05B(Wi) 01FD4A(Wx) 
    ram_spr_A                               = $0702 ; 01E05B(Wi) 01FD5C(Wx) 
    ram_spr_X                               = $0703 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0704                              = $0704 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0705                              = $0705 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_0706                              = $0706 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_0707                              = $0707 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0708                              = $0708 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0709                              = $0709 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_070A                              = $070A ; 01E05B(Wi) 01FD5C(Wx) 
; ram_070B                              = $070B ; 01E05B(Wi) 01FD7B(Wx) 
; ram_070C                              = $070C ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_070D                              = $070D ; 01E05B(Wi) 01FD4A(Wx) 
; ram_070E                              = $070E ; 01E05B(Wi) 01FD5C(Wx) 
; ram_070F                              = $070F ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0710                              = $0710 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0711                              = $0711 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_0712                              = $0712 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_0713                              = $0713 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0714                              = $0714 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0715                              = $0715 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_0716                              = $0716 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_0717                              = $0717 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0718                              = $0718 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0719                              = $0719 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_071A                              = $071A ; 01E05B(Wi) 01FD5C(Wx) 
; ram_071B                              = $071B ; 01E05B(Wi) 01FD7B(Wx) 
; ram_071C                              = $071C ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_071D                              = $071D ; 01E05B(Wi) 01FD4A(Wx) 
; ram_071E                              = $071E ; 01E05B(Wi) 01FD5C(Wx) 
; ram_071F                              = $071F ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0720                              = $0720 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0721                              = $0721 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_0722                              = $0722 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_0723                              = $0723 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0724                              = $0724 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0725                              = $0725 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_0726                              = $0726 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_0727                              = $0727 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0728                              = $0728 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0729                              = $0729 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_072A                              = $072A ; 01E05B(Wi) 01FD5C(Wx) 
; ram_072B                              = $072B ; 01E05B(Wi) 01FD7B(Wx) 
; ram_072C                              = $072C ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_072D                              = $072D ; 01E05B(Wi) 01FD4A(Wx) 
; ram_072E                              = $072E ; 01E05B(Wi) 01FD5C(Wx) 
; ram_072F                              = $072F ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0730                              = $0730 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0731                              = $0731 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_0732                              = $0732 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_0733                              = $0733 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0734                              = $0734 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0735                              = $0735 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_0736                              = $0736 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_0737                              = $0737 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0738                              = $0738 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0739                              = $0739 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_073A                              = $073A ; 01E05B(Wi) 01FD5C(Wx) 
; ram_073B                              = $073B ; 01E05B(Wi) 01FD7B(Wx) 
; ram_073C                              = $073C ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_073D                              = $073D ; 01E05B(Wi) 01FD4A(Wx) 
; ram_073E                              = $073E ; 01E05B(Wi) 01FD5C(Wx) 
; ram_073F                              = $073F ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0740                              = $0740 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0741                              = $0741 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_0742                              = $0742 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_0743                              = $0743 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0744                              = $0744 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0745                              = $0745 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_0746                              = $0746 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_0747                              = $0747 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0748                              = $0748 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0749                              = $0749 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_074A                              = $074A ; 01E05B(Wi) 01FD5C(Wx) 
; ram_074B                              = $074B ; 01E05B(Wi) 01FD7B(Wx) 
; ram_074C                              = $074C ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_074D                              = $074D ; 01E05B(Wi) 01FD4A(Wx) 
; ram_074E                              = $074E ; 01E05B(Wi) 01FD5C(Wx) 
; ram_074F                              = $074F ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0750                              = $0750 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0751                              = $0751 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_0752                              = $0752 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_0753                              = $0753 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0754                              = $0754 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0755                              = $0755 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_0756                              = $0756 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_0757                              = $0757 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0758                              = $0758 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0759                              = $0759 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_075A                              = $075A ; 01E05B(Wi) 01FD5C(Wx) 
; ram_075B                              = $075B ; 01E05B(Wi) 01FD7B(Wx) 
; ram_075C                              = $075C ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_075D                              = $075D ; 01E05B(Wi) 01FD4A(Wx) 
; ram_075E                              = $075E ; 01E05B(Wi) 01FD5C(Wx) 
; ram_075F                              = $075F ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0760                              = $0760 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0761                              = $0761 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_0762                              = $0762 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_0763                              = $0763 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0764                              = $0764 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0765                              = $0765 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_0766                              = $0766 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_0767                              = $0767 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0768                              = $0768 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0769                              = $0769 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_076A                              = $076A ; 01E05B(Wi) 01FD5C(Wx) 
; ram_076B                              = $076B ; 01E05B(Wi) 01FD7B(Wx) 
; ram_076C                              = $076C ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_076D                              = $076D ; 01E05B(Wi) 01FD4A(Wx) 
; ram_076E                              = $076E ; 01E05B(Wi) 01FD5C(Wx) 
; ram_076F                              = $076F ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0770                              = $0770 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0771                              = $0771 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_0772                              = $0772 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_0773                              = $0773 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0774                              = $0774 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0775                              = $0775 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_0776                              = $0776 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_0777                              = $0777 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0778                              = $0778 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0779                              = $0779 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_077A                              = $077A ; 01E05B(Wi) 01FD5C(Wx) 
; ram_077B                              = $077B ; 01E05B(Wi) 01FD7B(Wx) 
; ram_077C                              = $077C ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_077D                              = $077D ; 01E05B(Wi) 01FD4A(Wx) 
; ram_077E                              = $077E ; 01E05B(Wi) 01FD5C(Wx) 
; ram_077F                              = $077F ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0780                              = $0780 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0781                              = $0781 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_0782                              = $0782 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_0783                              = $0783 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0784                              = $0784 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0785                              = $0785 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_0786                              = $0786 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_0787                              = $0787 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0788                              = $0788 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0789                              = $0789 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_078A                              = $078A ; 01E05B(Wi) 01FD5C(Wx) 
; ram_078B                              = $078B ; 01E05B(Wi) 01FD7B(Wx) 
; ram_078C                              = $078C ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_078D                              = $078D ; 01E05B(Wi) 01FD4A(Wx) 
; ram_078E                              = $078E ; 01E05B(Wi) 01FD5C(Wx) 
; ram_078F                              = $078F ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0790                              = $0790 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0791                              = $0791 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_0792                              = $0792 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_0793                              = $0793 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0794                              = $0794 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0795                              = $0795 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_0796                              = $0796 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_0797                              = $0797 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_0798                              = $0798 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_0799                              = $0799 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_079A                              = $079A ; 01E05B(Wi) 01FD5C(Wx) 
; ram_079B                              = $079B ; 01E05B(Wi) 01FD7B(Wx) 
; ram_079C                              = $079C ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_079D                              = $079D ; 01E05B(Wi) 01FD4A(Wx) 
; ram_079E                              = $079E ; 01E05B(Wi) 01FD5C(Wx) 
; ram_079F                              = $079F ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07A0                              = $07A0 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07A1                              = $07A1 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07A2                              = $07A2 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07A3                              = $07A3 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07A4                              = $07A4 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07A5                              = $07A5 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07A6                              = $07A6 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07A7                              = $07A7 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07A8                              = $07A8 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07A9                              = $07A9 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07AA                              = $07AA ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07AB                              = $07AB ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07AC                              = $07AC ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07AD                              = $07AD ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07AE                              = $07AE ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07AF                              = $07AF ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07B0                              = $07B0 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07B1                              = $07B1 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07B2                              = $07B2 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07B3                              = $07B3 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07B4                              = $07B4 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07B5                              = $07B5 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07B6                              = $07B6 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07B7                              = $07B7 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07B8                              = $07B8 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07B9                              = $07B9 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07BA                              = $07BA ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07BB                              = $07BB ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07BC                              = $07BC ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07BD                              = $07BD ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07BE                              = $07BE ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07BF                              = $07BF ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07C0                              = $07C0 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07C1                              = $07C1 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07C2                              = $07C2 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07C3                              = $07C3 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07C4                              = $07C4 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07C5                              = $07C5 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07C6                              = $07C6 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07C7                              = $07C7 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07C8                              = $07C8 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07C9                              = $07C9 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07CA                              = $07CA ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07CB                              = $07CB ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07CC                              = $07CC ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07CD                              = $07CD ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07CE                              = $07CE ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07CF                              = $07CF ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07D0                              = $07D0 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07D1                              = $07D1 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07D2                              = $07D2 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07D3                              = $07D3 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07D4                              = $07D4 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07D5                              = $07D5 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07D6                              = $07D6 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07D7                              = $07D7 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07D8                              = $07D8 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07D9                              = $07D9 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07DA                              = $07DA ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07DB                              = $07DB ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07DC                              = $07DC ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07DD                              = $07DD ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07DE                              = $07DE ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07DF                              = $07DF ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07E0                              = $07E0 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07E1                              = $07E1 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07E2                              = $07E2 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07E3                              = $07E3 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07E4                              = $07E4 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07E5                              = $07E5 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07E6                              = $07E6 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07E7                              = $07E7 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07E8                              = $07E8 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07E9                              = $07E9 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07EA                              = $07EA ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07EB                              = $07EB ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07EC                              = $07EC ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07ED                              = $07ED ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07EE                              = $07EE ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07EF                              = $07EF ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07F0                              = $07F0 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07F1                              = $07F1 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07F2                              = $07F2 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07F3                              = $07F3 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07F4                              = $07F4 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07F5                              = $07F5 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07F6                              = $07F6 ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07F7                              = $07F7 ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07F8                              = $07F8 ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07F9                              = $07F9 ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07FA                              = $07FA ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07FB                              = $07FB ; 01E05B(Wi) 01FD7B(Wx) 
; ram_07FC                              = $07FC ; 01E05B(Wi) 01E16E(Wx) 01FD37(Wx) 01FD40(Rx) 01FDBD(Wx) 01FDCA(Wx) 
; ram_07FD                              = $07FD ; 01E05B(Wi) 01FD4A(Wx) 
; ram_07FE                              = $07FE ; 01E05B(Wi) 01FD5C(Wx) 
; ram_07FF                              = $07FF ; 01E05B(Wi) 01FD7B(Wx) 



