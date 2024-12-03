; to the right are ROM File addresses of instructions which were using these RAM addresses



; 
ram_0000_temp                           = $0000 ; 0000AA(Wx) 00020A(Wx) 000393(W)  000430(W)  000453(W)  00045F(W)  000722(W)  000730(W)  00073E(W)  000754(W)  00077B(R)  000780(W)  00078F(R)  000794(W)  0007C5(R)  0007E7(W)  0008C5(R)  0008CF(W)  0008D5(R)  0008DA(W)  0008ED(R)  0008F7(W)  0008FD(R)  000902(W)  000C9F(W)  000CB2(W)  000CCC(W)  000CDF(W)  000D27(W)  001B97(W)  001BAA(W)  001BBD(W)  001BE8(W)  001C07(W)  001C15(W)  0020D2(W)  0020DA(W)  002189(W)  00218F(R)  002195(W)  00219F(W)  002257(W)  002268(W)  002389(W)  002454(W)  002463(W)  002473(W)  002481(W)  00295D(R)  002963(W)  002967(W)  00296A(W)  00296D(W)  002970(W)  002973(W)  00297A(R)  00297C(W)  002BCD(W)  002BDC(R)  002BDE(W)  002C60(R)  002C62(W)  002CF0(W)  
    ram_0000_t01_ppu_data                   = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t02_ppu_data                   = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t03_rounds_data                = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t04_round_data                 = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t05_block_data                 = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t06_ppu_data                   = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t07_jmp                        = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t08_number_lo                  = ram_0000_temp ; 
    ram_0000_t09                            = ram_0000_temp ; 
    ram_0000_t10_ppu_addr_lo                = ram_0000_temp ; in pair with ram_0001_t01_ppu_addr_hi



; 
ram_0001_temp                           = $0001 ; 0000AA(Wx) 00020A(Wx) 000397(W)  000434(W)  000457(W)  000463(W)  000726(W)  000734(W)  000742(W)  000758(W)  000782(R)  000786(W)  000796(R)  00079A(W)  0007C9(R)  0007EB(W)  0008C9(R)  0008D3(W)  0008DC(R)  0008E0(W)  0008F1(R)  0008FB(W)  000904(R)  000908(W)  000CA3(W)  000CB6(W)  000CD0(W)  000CE3(W)  000D2B(W)  001B9B(W)  001BAE(W)  001BC1(W)  001BEC(W)  001C0B(W)  001C19(W)  0021A4(W)  00225B(W)  00226E(W)  00238F(W)  002458(W)  002467(W)  002477(W)  002485(W)  002958(R)  002976(W)  00297E(R)  002982(W)  002BD1(W)  002BE2(W)  002C66(W)  002CF4(W)  
    ram_0001_t01_ppu_addr_hi                = ram_0001_temp ; in pair with ram_0000_t10_ppu_addr_lo
    ram_0001_t02_number_hi                  = ram_0001_temp ; 



; 
ram_0002_temp                           = $0002 ; 0000AA(Wx) 00020A(Wx) 00075C(W)  0007A4(R)  0007A9(W)  0007C7(W)  0008C7(W)  0008EF(W)  00099E(R)  000C97(W)  000CAA(W)  000CC4(W)  000CD7(W)  000D0D(W)  000D18(W)  00120A(W)  00121B(R)  001220(W)  00124D(W)  001262(R)  001267(W)  001B9F(W)  001BB2(W)  001BC5(W)  001C1D(W)  001C29(W)  0025E9(W)  002777(R)  002784(W)  002C04(R)  002C3C(W)  002C44(R)  002C4F(R)  002C70(R)  
    ram_0002_t01_data                       = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t02_data                       = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t03_convertion_data            = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t04_data                       = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t05_data                       = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t09_ppu_addr_lo                = ram_0002_temp ; in pair with ram_0003_t01_ppu_addr_hi
    ram_0002_t06_ppu_addr_lo                = ram_0002_temp ; in pair with ram_0003_t02_ppu_addr_hi
    ram_0002_t07_lo                         = ram_0002_temp ; in pair with ram_0003_t03_hi
    ram_0002_t08_ppu_addr_lo                = ram_0002_temp ; in pair with ram_0003_t04_ppu_addr_hi



; 
ram_0003_temp                           = $0003 ; 0000AA(Wx) 00020A(Wx) 000760(W)  0007AB(R)  0007AF(W)  0007CB(W)  0008CB(W)  0008F3(W)  000999(R)  000C9B(W)  000CAE(W)  000CC8(W)  000CDB(W)  000D11(W)  000D1C(W)  00120E(W)  001251(W)  001BA3(W)  001BB6(W)  001BC9(W)  001C21(W)  001C2D(W)  0025ED(W)  00277B(R)  002788(W)  002BFF(R)  002C41(W)  002C4A(R)  002C6B(R)  
    ram_0003_t01_ppu_addr_hi                = ram_0003_temp ; in pair with ram_0002_t09_ppu_addr_lo
    ram_0003_t02_ppu_addr_hi                = ram_0003_temp ; in pair with ram_0002_t06_ppu_addr_lo
    ram_0003_t03_hi                         = ram_0003_temp ; in pair with ram_0002_t07_lo
    ram_0003_t04_ppu_addr_hi                = ram_0003_temp ; in pair with ram_0002_t08_ppu_addr_lo



; 
ram_0004_temp                           = $0004 ; 0000AA(Wx) 00020A(Wx) 000774(W)  00077E(R)  000792(R)  0025F1(W)  0027B5(R)  0027C2(W)  00299F(W)  0029A1(R)  0029A7(W)  0029DF(W)  002A08(R)  002A10(W)  
    ram_0004_t01_data                       = ram_0004_temp ; 2 addresses 0004-0005
    ram_0004_t02_data_index                 = ram_0004_temp ; 
    ram_0004_t03_save_Y                     = ram_0004_temp ; 
    ram_0004_t04_lo                         = ram_0004_temp ; in pair with ram_0005_t03_hi
    ram_0004_t05_data_index                 = ram_0004_temp ; 
    ram_0004_t06                            = ram_0004_temp ; 
    ram_0004_t07_data_index                 = ram_0004_temp ; 
    ram_0004_t08                            = ram_0004_temp ; 



; 
ram_0005_temp                           = $0005 ; 0000AA(Wx) 00020A(Wx) 000779(W)  000784(R)  000798(R)  0025F5(W)  0027B9(R)  0027C6(W)  00299B(W)  0029C5(W)  0029C7(R)  0029E3(W)  002A04(W)  002A19(W)  
    ram_0005_t01                            = ram_0005_temp ; 
    ram_0005_t02                            = ram_0005_temp ; 
    ram_0005_t03_hi                         = ram_0005_temp ; in pair with ram_0004_t04_lo
    ram_0005_t04                            = ram_0005_temp ; 
    ram_0005_t05                            = ram_0005_temp ; 



; 
ram_0006_temp                           = $0006 ; 0000AA(Wx) 00020A(Wx) 000764(W)  0007B1(W)  001099(W)  0010D8(R)  0010DD(W)  00158A(W)  0015EC(R)  0015F1(W)  0025F9(W)  0027DA(R)  0027E7(W)  0029AD(W)  0029B1(W)  0029B5(W)  0029B7(W)  0029C9(R)  
    ram_0006_t01_data                       = ram_0006_temp ; 2 addresses 0006-0007
    ram_0006_t02_decimal_number_data        = ram_0006_temp ; 2 addresses 0006-0007
    ram_0006_t03_data                       = ram_0006_temp ; 2 addresses 0006-0007
    ram_0006_t04_data                       = ram_0006_temp ; 2 addresses 0006-0007
    ram_0006_t05                            = ram_0006_temp ; 
    ram_0006_t06                            = ram_0006_temp ; 
    ram_0006_t07                            = ram_0006_temp ; 
    ram_0006_t08                            = ram_0006_temp ; 



; 
ram_0007_temp                           = $0007 ; 0000AA(Wx) 00020A(Wx) 000768(W)  00109D(W)  00158E(W)  0025FD(W)  0027DE(R)  0027EB(W)  0029AB(W)  0029BB(W)  0029BF(W)  0029C1(W)  0029C3(W)  0029D1(W)  
    ram_0007_t01                            = ram_0007_temp ; 
    ram_0007_t02                            = ram_0007_temp ; 
    ram_0007_t03                            = ram_0007_temp ; 
    ram_0007_t04_useless                    = ram_0007_temp ; bzk optimize



; 
ram_0008_temp                           = $0008 ; 0000AA(Wx) 00020A(Wx) 00076E(W)  00078A(W)  00079E(R)  0010A1(W)  0010DF(R)  0010E4(W)  00114E(R)  001167(R)  00117C(R)  001193(R)  001592(W)  0015F3(R)  0015F8(W)  002601(W)  00279C(R)  0027A1(W)  0029A5(W)  0029AF(W)  0029B3(W)  0029B9(W)  0029BD(W)  0029E7(W)  0029EE(W)  0029F5(W)  0029FC(W)  0029FE(W)  002A17(R)  
    ram_0008_t01_data                       = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t02_data                       = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t03_data                       = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t04                            = ram_0008_temp ; 
    ram_0008_t05_tile_for_number            = ram_0008_temp ; 
    ram_0008_t06                            = ram_0008_temp ; 
    ram_0008_t07                            = ram_0008_temp ; 



; used only in pair with ram_0008_temp
; ram_0009                              = $0009 ; 0000AA(Wx) 00020A(Wx) 0010A5(W)  001596(W)  002605(W)  



; 
ram_000A_temp                           = $000A ; 0000AA(Wx) 00020A(Wx) 001693(W)  0016E8(R)  0016ED(W)  002779(W)  002782(R)  0027B7(W)  0027C0(R)  0027DC(W)  0027E5(R)  002873(R)  002878(W)  
    ram_000A_t01_data                       = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t02_data                       = ram_000A_temp ; 2 addresses 000A-000B



; used only in pair with ram_000A_temp
; ram_000B                              = $000B ; 0000AA(Wx) 00020A(Wx) 001697(W)  00277D(W)  002786(R)  0027BB(W)  0027C4(R)  0027E0(W)  0027E9(R)  00287A(R)  00287E(W)  



; 
ram_000C_temp                           = $000C ; 0000AA(Wx) 00020A(Wx) 0016A3(W)  0016A5(R)  0016F6(W)  
    ram_000C_t01_loop_counter               = ram_000C_temp ; 



; 
ram_000D_temp                           = $000D ; 0000AA(Wx) 00020A(Wx) 00159A(W)  0015FA(W)  0015FC(W)  001755(R)  
    ram_000D_t01                            = ram_000D_temp ; 



; free address
; ram_000E                              = $000E ; 0000AA(Wx) 00020A(Wx) 



; 
ram_000F_temp                           = $000F ; 0000AA(Wx) 00020A(Wx) 000384(R)  0012D2(W)  00130A(W)  00134A(W)  001370(W)  001390(W)  0013B6(W)  001404(W)  001418(W)  00144F(W)  00146E(W)  001486(W)  001491(W)  0014BA(W)  0014EF(W)  001518(W)  001546(R)  002660(W)  002665(W)  002BF5(W)  002C11(R)  
    ram_000F_t01_text_size                  = ram_000F_temp ; 
    ram_000F_t02_save_A                     = ram_000F_temp ; 
    ram_000F_t03_error_flag                 = ram_000F_temp ; 



; 
ram_0010_temp                           = $0010 ; 0000AA(Wx) 00020A(Wx) 00169B(W)  0016EF(R)  0016F4(W)  0025D9(W)  00262D(W)  00262F(W)  00263C(R)  002641(W)  002FBC(W)  
    ram_0010_t01_data                       = ram_0010_temp ; 2 addresses 0010-0011
    ram_0010_t02_round_data                 = ram_0010_temp ; 2 addresses 0010-0011
    ram_0010_t03_oam_data                   = ram_0010_temp ; 2 addresses 0010-0011



; used only in pair with ram_0010_temp
; ram_0011                              = $0011 ; 0000AA(Wx) 00020A(Wx) 00169F(W)  0025DD(W)  002FC0(W)  



; 
ram_0012_temp                           = $0012 ; 0000AA(Wx) 00020A(Wx) 0026E0(W)  0026F4(W)  
    ram_0012_t01_block_data                 = ram_0012_temp ; 2 addresses 0012-0013



; used only in pair with ram_0012_temp
; ram_0013                              = $0013 ; 0000AA(Wx) 00020A(Wx) 0026E8(W)  0026F8(W)  



; 
ram_0014_temp                           = $0014 ; 0000AA(Wx) 0000E6(W)  00020A(Wx) 
    ram_0014_t01_ppu_buffer                 = ram_0014_temp ; 2 addresses 0014-0015



; used only in pair with ram_0014_temp
; ram_0015                              = $0015 ; 0000AA(Wx) 0000EA(W)  00020A(Wx) 



; for 2006 register
ram_0016_ppu_lo                         = $0016 ; 0000AA(Wx) 00020A(Wx) 0025E1(W)  0026C9(R)  0026D3(W)  
ram_0017_ppu_hi                         = $0017 ; 0000AA(Wx) 00020A(Wx) 0025E5(W)  0026C4(R)  



; 
ram_0018_temp                           = $0018 ; 0000AA(Wx) 00020A(Wx) 0026E2(W)  
    ram_0018_t01_block_data                 = ram_0018_temp ; 2 addresses 0018-0019



; used only in pair with ram_0018_temp
; ram_0019                              = $0019 ; 0000AA(Wx) 00020A(Wx) 0026EA(W)  



; 
ram_btn_hold                            = $001A ; 0000AA(Wx) 000135(W)  00020A(Wx) 0004DF(R)  0004E9(R)  000547(R)  00054D(R)  000563(R)  000569(R)  000573(R)  000579(R)  0005AD(R)  0005B3(R)  0005C4(R)  0005CA(R)  00065B(R)  00066B(R)  00069C(R)  00218D(R)  0021BE(R)  002225(R)  002D33(R)  002D6E(R)  002D74(R)  002D92(R)  
; ram_001B                              = $001B ; 0000AA(Wx) 000149(W)  00020A(Wx) 0004EB(R)  0004F8(R)  000666(R)  00069E(R)  0021AF(R)  0021C2(R)  



; save AXY during NMI
ram_save_A                              = $001C ; 0000AA(Wx) 0000D0(W)  000199(R)  00020A(Wx) 
ram_save_X                              = $001D ; 0000AA(Wx) 0000D2(W)  00019B(R)  00020A(Wx) 
ram_save_Y                              = $001E ; 0000AA(Wx) 0000D4(W)  00019D(R)  00020A(Wx) 



; 
ram_001F_temp                           = $001F ; 0000AA(Wx) 0001A3(W)  0001B8(R)  00020A(Wx) 
    ram_001F_t01                            = ram_001F_temp ; 



; 
ram_current_round                       = $0020 ; 0000AA(Wx) 0001D4(W)  00020A(Wx) 000259(W)  000272(R)  00030F(W)  000334(W)  000345(W)  000357(W)  00035B(R)  00086E(R)  0008A2(R)  00215C(W)  002404(R)  002572(R)  002985(R)  002A23(R)  002BD3(R)  00302B(R)  



; 
ram_bonus_points                        = $0021 ; 0000AA(Wx) 00020A(Wx) 000366(W)  0006C5(R)  000BA3(W)  000BA5(R)  002567(R)  002581(R)  



; lives for current player
ram_milk_current_player                 = $0022 ; 0000AA(Wx) 00020A(Wx) 000261(W)  000313(W)  000330(W)  000341(W)  000353(W)  00092E(R)  000935(W)  002558(R)  



; bzk optimize, this address does nothing useful
ram_0023_useless                        = $0023 ; 0000AA(Wx) 00020A(Wx) 0006A2(R)  0006A7(W)  0006A9(W)  



; used in jumping
; 00 = nothing
; 01 = A or B is holding
ram_btn_AB_flag                         = $0024 ; 0000AA(Wx) 00020A(Wx) 0003F1(W)  0004F3(W)  000500(W)  000507(W)  000589(R)  001EE1(R)  001F43(R)  001F49(W)  001FB8(R)  001FBE(W)  



; bzk optimize, useless address
ram_0025_useless                        = $0025 ; 0000AA(Wx) 00020A(Wx) 000509(W)  



; NMI handler sets this to 00. code sets this to 01 and waits for NMI to happen once
ram_nmi_wait_flag                       = $0026 ; 0000AA(Wx) 0000E2(W)  00020A(Wx) 00028F(W)  000293(R)  0004D9(W)  00052F(R)  000D36(W)  000D38(R)  002D2D(W)  002D2F(R)  



; index for ram_ppu_buffer
ram_buffer_index                        = $0027 ; 0000AA(Wx) 000117(W)  0001C5(W)  00020A(Wx) 000231(W)  002BF7(R)  002C15(W)  002C18(R)  002C1F(W)  



; 
ram_0028_temp_pos_X                     = $0028 ; 0000AA(Wx) 00020A(Wx) 00127F(R)  0019A1(W)  001F08(W)  00204D(W)  002056(W)  002086(W)  00208F(W)  0020BF(W)  002160(W)  002303(R)  00230C(W)  002311(R)  00231A(W)  00231F(R)  002387(R)  0028EC(R)  0028F2(W)  
ram_0029_temp_pos_Y                     = $0029 ; 0000AA(Wx) 00020A(Wx) 00128B(R)  0019A5(W)  001F0D(W)  00205C(W)  002095(W)  0020C5(W)  002164(W)  0022E7(R)  0022F0(W)  0022F5(R)  0022FE(W)  002323(R)  00237D(R)  0028F4(R)  0028FA(W)  



; 
ram_constructor_block_id                = $002A ; 0000AA(Wx) 00020A(Wx) 002168(W)  00222B(R)  002239(W)  00223E(R)  00224C(W)  002251(R)  002260(R)  00228B(R)  0022B9(R)  



; 
ram_002B                                = $002B ; 0000AA(Wx) 00020A(Wx) 000536(R)  00159C(R)  0016A1(R)  002609(W)  00264E(R)  002762(R)  002775(W)  



; how many fruit are on the current round
ram_round_fruit_counter                 = $002C ; 0000AA(Wx) 00020A(Wx) 000BDD(R)  0010A7(R)  00260B(W)  002652(R)  0027A6(R)  0027B3(W)  



; 
ram_002D                                = $002D ; 0000AA(Wx) 00020A(Wx) 00260D(W)  002656(R)  0027CB(R)  0027D8(W)  



; 00 = 
; 01 = 
ram_002E_flag                           = $002E ; 0000AA(Wx) 00020A(Wx) 00260F(W)  00265A(R)  002881(R)  002892(W)  



; used at the title screen
ram_cursor_pos_Y                        = $002F ; 0000AA(Wx) 0001FA(W)  002D1D(R)  002D7C(R)  002D8A(W)  002DD7(R)  



; sound engine address
ram_0030_se_temp                        = $0030 ; 0000AA(Wx) 000212(Wx) 0031DF(R)  00322A(R)  003284(R)  00333B(W)  00334A(W)  00335C(W)  003368(W)  00336D(R)  
    ram_0030_se_t01_data                    = ram_0030_se_temp ; 2 addresses 0030-0031
    ram_0030_se_t02_timer_lo                = ram_0030_se_temp ; in pair with ram_0031_se_t01_timer_hi



; sound engine address
ram_0031_se_temp                        = $0031 ; 0000AA(Wx) 000212(Wx) 0031E4(R)  00322F(R)  003289(R)  00333D(W)  003350(W)  00335A(W)  003366(W)  00336F(R)  
    ram_0031_se_t01_timer_hi                = ram_0031_se_temp ; in pair with ram_0030_se_t02_timer_lo



; sound engine address
ram_0032_se_temp                        = $0032 ; 0000AA(Wx) 000212(Wx) 003016(W)  003058(W)  003076(W)  003092(W)  00309F(W)  0030B1(W)  0030C8(W)  003159(W)  003178(W)  00319C(W)  0031EF(W)  0031F5(W)  0031FB(W)  
    ram_0032_se_t01_ch1_data                = ram_0032_se_temp ; 2 addresses 0032-0033



; used only in pair with ram_0032_se_temp
; ram_0033                              = $0033 ; 0000AA(Wx) 000212(Wx) 00301A(W)  00305C(W)  00307A(W)  003096(W)  0030A3(W)  0030B5(W)  0030CC(W)  00315D(W)  00317C(W)  0031A0(W)  0031F9(W)  0031FF(W)  



; 00 = don't play
; 01 = play
ram_sound_channel_1_flag                = $0034 ; 0000AA(Wx) 000212(Wx) 0002D7(R)  00055D(R)  000826(R)  001D4E(W)  002D3B(R)  003026(W)  00309A(W)  0030A7(W)  0030B9(W)  0030D0(W)  0031B7(R)  0031D7(W)  0032FD(W)  003332(W)  



; 
ram_sound_channel_1_timer               = $0035 ; 0000AA(Wx) 000212(Wx) 0030BD(W)  0030D4(W)  0031C4(W)  0031C6(R)  0031CD(W)  0032FB(W)  



; sound engine address
ram_0036_se_temp                        = $0036 ; 0000AA(Wx) 000212(Wx) 003004(W)  00301E(W)  003060(W)  00307E(W)  0030E3(W)  003107(W)  003123(W)  00313F(W)  003161(W)  003180(W)  0031A4(W)  00323A(W)  003240(W)  003246(W)  
    ram_0036_se_t01_ch2_data                = ram_0036_se_temp ; 2 addresses 0036-0037



; used only in pair with ram_0036_se_temp
; ram_0037                              = $0037 ; 0000AA(Wx) 000212(Wx) 003008(W)  003022(W)  003064(W)  003082(W)  0030E7(W)  00310B(W)  003127(W)  003143(W)  003165(W)  003184(W)  0031A8(W)  00323E(W)  003244(W)  



; 00 = don't play
; 01 = play
ram_sound_channel_2_flag                = $0038 ; 0000AA(Wx) 000212(Wx) 00055F(R)  002FFA(W)  00300C(W)  003028(W)  0030DD(R)  0030EB(W)  00310F(W)  00312B(W)  003147(W)  003202(R)  003222(W)  003301(W)  003334(W)  



; 
ram_sound_channel_2_timer               = $0039 ; 0000AA(Wx) 000212(Wx) 003010(W)  0030EF(W)  003113(W)  00312F(W)  00314B(W)  00320F(W)  003211(R)  003218(W)  0032FF(W)  



; sound engine address
ram_003A_se_temp                        = $003A ; 0000AA(Wx) 000212(Wx) 003033(W)  00303E(W)  00304B(W)  003068(W)  003086(W)  003169(W)  003188(W)  0031AC(W)  0032A1(W)  0032A7(W)  0032AD(W)  
    ram_003A_se_t01_ch3_data                = ram_003A_se_temp ; 



; used only in pair with ram_003A_se_temp
; ram_003B                              = $003B ; 0000AA(Wx) 000212(Wx) 003037(W)  003042(W)  00304F(W)  00306C(W)  00308A(W)  00316D(W)  00318C(W)  0031B0(W)  0032A5(W)  0032B1(W)  



; 00 = don't play
; 01 = play
ram_sound_channel_3_flag                = $003C ; 0000AA(Wx) 000212(Wx) 0005EB(W)  001D50(W)  003046(W)  003053(W)  003071(W)  0030FF(W)  00324D(R)  00327C(W)  003305(W)  003336(W)  



; 
ram_sound_channel_3_timer               = $003D ; 0000AA(Wx) 000212(Wx) 003254(W)  003256(R)  00325D(W)  003303(W)  



; sound engine flag
; 00 = 
; 01 = 
ram_003E_se_flag                        = $003E ; 0000AA(Wx) 000212(Wx) 0031BE(R)  0031EB(R)  003209(R)  003236(R)  003276(R)  00329D(R)  0032E9(W)  0032F1(W)  



; sound engine flag
; 00 = 
; 01 = 
ram_003F_se_flag                        = $003F ; 0000AA(Wx) 000212(Wx) 0003F7(W)  003103(W)  003272(R)  



; 
ram_0040                                = $0040 ; 0000AA(Wx) 000212(Wx) 0008B0(W)  0008BE(R)  0008E5(R)  00090D(W)  00090F(W)  000D5D(W)  000D72(R)  000D78(W)  000D8D(R)  002321(W)  002327(W)  00233A(W)  00235C(W)  002624(W)  002631(R)  002636(W)  00267E(W)  002680(W)  0026AA(W)  0026AC(W)  0026FA(R)  00270E(R)  002795(R)  002811(W)  00282D(W)  00289D(W)  0028B3(W)  0028DF(R)  



; 
ram_0041_temp_loop_counter              = $0041 ; 0000AA(Wx) 000212(Wx) 002628(W)  002638(W)  



; 
ram_0042                                = $0042 ; 0000AA(Wx) 000212(Wx) 0008B7(W)  0008C0(R)  0008E7(R)  000D5F(W)  000D63(R)  000D7A(W)  000D7E(R)  002325(W)  002329(W)  00234B(W)  00236D(W)  00261C(W)  002643(R)  002648(W)  002694(W)  002696(W)  0026C0(W)  0026C2(W)  0026FC(R)  002710(R)  00278C(R)  0027FB(R)  00281F(W)  00283B(W)  0028A8(W)  0028BE(W)  0028E5(R)  



; 
ram_0043_temp                           = $0043 ; 0000AA(Wx) 000212(Wx) 002620(W)  00264A(W)  
    ram_0043_t01_loop_counter               = ram_0043_temp ; 



; 
ram_0044                                = $0044 ; 0000AA(Wx) 000212(Wx) 00086C(W)  000881(W)  0008A0(W)  0008AB(R)  000915(W)  000917(W)  000919(W)  000F0C(W)  000F16(R)  000F28(R)  000F37(R)  000F3C(W)  000F55(R)  000F8B(R)  000FE2(R)  00125D(W)  001274(R)  0012AB(W)  00186C(W)  0018A4(W)  0018AA(R)  001D59(W)  001D9D(W)  001DA4(R)  0020E6(R)  0020EC(R)  0020F6(R)  0020FC(R)  00266A(W)  00267A(R)  00267C(W)  002690(R)  002692(W)  0026A6(R)  0026A8(W)  0026BC(R)  0026BE(W)  0026CE(R)  



; 
ram_0045                                = $0045 ; 0000AA(Wx) 000212(Wx) 0008A9(W)  0008D8(R)  000900(R)  000F10(W)  000F3E(W)  000F40(R)  000F53(R)  001212(W)  001222(R)  001227(W)  001245(R)  001255(W)  001269(R)  00126E(W)  00127D(R)  0012A4(R)  001870(W)  001885(R)  001D5E(W)  001D73(R)  002105(R)  00210B(W)  002114(R)  00211A(W)  002126(R)  00212C(W)  002138(R)  00213E(W)  



; 
ram_0046                                = $0046 ; 0000AA(Wx) 000212(Wx) 0008BC(W)  000911(W)  000FEA(W)  000FF3(R)  001002(W)  00100B(R)  001216(W)  001229(W)  001259(W)  001270(W)  001874(W)  001889(R)  001D62(W)  001D78(R)  00210F(W)  00211E(W)  002130(W)  002142(W)  



; 
ram_0047                                = $0047 ; 0000AA(Wx) 000212(Wx) 000F14(W)  000F42(R)  001878(W)  001880(W)  001D66(W)  001D6E(W)  002123(R)  002135(R)  



; 00 = 
; 01 = 
ram_0048_flag                           = $0048 ; 0000AA(Wx) 000212(Wx) 0017BF(W)  001868(W)  001A52(W)  001C64(W)  001D55(W)  001FDF(W)  0020F2(R)  



; 
ram_0049                                = $0049 ; 0000AA(Wx) 000212(Wx) 0010A9(W)  0010E6(W)  00159E(W)  0015FE(W)  0016A7(R)  



; 
ram_004A_pos_X                          = $004A ; 0000AA(Wx) 000212(Wx) 0017C5(W)  001943(R)  0019FE(R)  001C6C(W)  001DFC(R)  001E6A(R)  001F79(R)  
ram_004B_pos_Y                          = $004B ; 0000AA(Wx) 000212(Wx) 0017C7(W)  001945(R)  001A00(R)  001C6E(W)  001E6C(R)  001F7B(R)  



; free address
ram_004C                                = $004C ; 0000AA(Wx) 000212(Wx) 



; frame counter
; used only during construction
ram_frm_cnt                             = $004D ; 0000AA(Wx) 000212(Wx) 0023A4(W)  0023A6(R)  



; 
ram_004E                                = $004E ; 0000AA(Wx) 000212(Wx) 0026D8(W)  0026EC(R)  002731(R)  002737(R)  00273A(R)  



; 
ram_004F_temp                           = $004F ; 0000AA(Wx) 000212(Wx) 002726(W)  002735(R)  
    ram_004F_t01                            = ram_004F_temp ; 



; 00 = player is not jumping
; 01 = player is currently in jump
ram_jump_flag                           = $0050 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 001433(R)  001609(R)  001C70(R)  001D68(R)  001D7F(R)  001DD6(R)  001E50(W)  001E57(R)  001E8C(W)  001ECD(W)  001F66(R)  001FA6(R)  001FD7(W)  



; 
ram_0051_jump_timer                     = $0051 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 00167F(W)  001B38(R)  001B3E(W)  001B58(R)  001D15(R)  001D29(W)  001E54(W)  001E90(W)  001EB6(R)  001F4D(W)  001FDB(W)  



; todo
ram_0052                                = $0052 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 001CAD(W)  001D57(R)  001D60(R)  001D7A(W)  001DF6(R)  001E22(R)  001E44(R)  001E4C(W)  001E95(R)  001F14(R)  001F31(W)  002038(R)  002071(R)  
ram_0053                                = $0053 ; 0000AA(Wx) 000212(Wx) 000B15(R)  000D46(Wx) 001CB5(W)  001CF6(R)  001CFC(W)  001D04(W)  001D6C(R)  001E3E(R)  001EE7(W)  001F5D(R)  001F63(W)  00202D(R)  002066(R)  
ram_0054                                = $0054 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 
ram_0055                                = $0055 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 001683(W)  001AF9(W)  001AFD(R)  001B2F(R)  001B33(W)  001D42(W)  0032BD(R)  
ram_0056                                = $0056 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 
ram_0057                                = $0057 ; 0000AA(Wx) 000212(Wx) 0005E5(R)  0009BE(R)  000A8D(R)  000B83(R)  000BD7(R)  000D46(Wx) 000DAE(R)  000F06(R)  0010EF(R)  001605(R)  001659(R)  00167B(W)  0017B9(R)  001AEE(R)  001D3E(W)  003290(R)  0032B8(R)  
ram_0058                                = $0058 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 000F1C(Wy) 000F2C(Ry) 000F47(R)  000F71(W)  0010AF(W)  0010C5(R)  0010EB(R)  001118(W)  0015AA(Wx) 0015D6(Rx) 00168D(R)  001772(W)  0017C9(R)  00187A(R)  001890(R)  0018BC(R)  00192B(W)  001932(R)  00195E(W)  001986(W)  0019ED(R)  001A2A(R)  001A4A(W)  
ram_0059                                = $0059 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 000F1C(Wy) 000F2C(Ry) 000F98(R)  0010B4(W)  0010CA(R)  00111C(W)  001127(R)  00112B(W)  001171(R)  001187(W)  00119E(W)  0015AA(Wx) 0015D6(Rx) 001776(W)  001792(R)  001798(W)  0017AF(R)  001839(R)  00183F(W)  001850(R)  00192F(W)  001962(W)  001974(R)  0019D6(W)  001A4E(W)  
ram_005A                                = $005A ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 000F1C(Wy) 000F2C(Ry) 000F4B(W)  000F4D(R)  000F75(W)  000FBB(W)  000FBD(R)  000FC5(W)  000FD1(W)  000FD3(R)  000FDB(W)  0010BA(Wy) 0010D0(Ry) 001104(R)  00115C(R)  001161(W)  001175(R)  00117A(W)  00118C(R)  001191(W)  001378(W)  0013BE(W)  001446(W)  0014C2(W)  001520(W)  0015AA(Wx) 0015D6(Rx) 0016DC(R)  0016E1(W)  00177A(W)  0017E0(W)  00186A(R)  001872(R)  00188B(W)  0018D8(R)  0018FF(R)  00191F(R)  001927(W)  0019C9(W)  0020A3(R)  
ram_005B                                = $005B ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 000F1C(Wy) 000F2C(Ry) 000FB4(R)  000FC9(W)  000FDF(W)  0010BA(Wy) 0010D0(Ry) 001150(W)  001374(W)  0013BA(W)  001442(W)  0014BE(W)  00151C(W)  0015AA(Wx) 0015D6(Rx) 00177E(W)  0017E8(W)  00181F(R)  001825(W)  00182D(W)  00187E(R)  001919(R)  001992(W)  0019E4(R)  0019EA(W)  00209F(R)  
ram_005C                                = $005C ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0010BA(Wy) 0010D0(Ry) 001157(W)  0012ED(R)  001311(W)  001400(W)  0015AA(Wx) 0015D6(Rx) 001782(W)  
ram_005D                                = $005D ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0010BA(Wy) 0010D0(Ry) 0010FA(R)  0015AA(Wx) 0015D6(Rx) 00170F(W)  001713(R)  001789(R)  00178D(W)  00185C(W)  
ram_005E                                = $005E ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 00137C(W)  0013C2(W)  00148B(R)  0014E4(R)  0014E8(W)  0015AA(Wx) 0015D6(Rx) 001A05(R)  001A09(W)  
ram_005F                                = $005F ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0012D4(R)  0015AA(Wx) 0015D6(Rx) 001603(R)  001657(R)  00168B(R)  001704(R)  001786(W)  001858(W)  
ram_0060                                = $0060 ; 0000AA(Wx) 000212(Wx) 000C52(R)  000D46(Wx) 0015A8(Ri) 0015D8(Wi) 0016B3(Ri) 
ram_0061                                = $0061 ; 0000AA(Wx) 000212(Wx) 000C5E(W)  000D46(Wx) 0015A8(Ri) 0015D8(Wi) 
ram_0062                                = $0062 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0015A8(Ri) 0015D8(Wi) 
ram_0063                                = $0063 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0015A8(Ri) 0015D8(Wi) 
ram_0064                                = $0064 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0015A8(Ri) 0015D8(Wi) 
ram_0065                                = $0065 ; 0000AA(Wx) 000212(Wx) 000C62(W)  000D46(Wx) 0015A8(Ri) 0015D8(Wi) 
ram_0066                                = $0066 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0015A8(Ri) 0015D8(Wi) 
ram_0067                                = $0067 ; 0000AA(Wx) 000212(Wx) 000C5A(W)  000D46(Wx) 0015A8(Ri) 0015D8(Wi) 0016AD(Ri) 
ram_0068                                = $0068 ; 0000AA(Wx) 000212(Wx) 000C64(R)  000D46(Wx) 0015A8(Ri) 0015D8(Wi) 0016B3(Ri) 
ram_0069                                = $0069 ; 0000AA(Wx) 000212(Wx) 000C70(W)  000D46(Wx) 0015A8(Ri) 0015D8(Wi) 
ram_006A                                = $006A ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0015A8(Ri) 0015D8(Wi) 
ram_006B                                = $006B ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0015A8(Ri) 0015D8(Wi) 
ram_006C                                = $006C ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0015A8(Ri) 0015D8(Wi) 
ram_006D                                = $006D ; 0000AA(Wx) 000212(Wx) 000C74(W)  000D46(Wx) 0015A8(Ri) 0015D8(Wi) 
ram_006E                                = $006E ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0015A8(Ri) 0015D8(Wi) 
ram_006F                                = $006F ; 0000AA(Wx) 000212(Wx) 000C6C(W)  000D46(Wx) 0015A8(Ri) 0015D8(Wi) 0016AD(Ri) 
ram_0070                                = $0070 ; 0000AA(Wx) 000212(Wx) 000C76(R)  000D46(Wx) 0015A8(Ri) 0015D8(Wi) 0016B3(Ri) 
ram_0071                                = $0071 ; 0000AA(Wx) 000212(Wx) 000C82(W)  000D46(Wx) 0015A8(Ri) 0015D8(Wi) 
ram_0072                                = $0072 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0015A8(Ri) 0015D8(Wi) 
ram_0073                                = $0073 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0015A8(Ri) 0015D8(Wi) 
ram_0074                                = $0074 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0015A8(Ri) 0015D8(Wi) 
ram_0075                                = $0075 ; 0000AA(Wx) 000212(Wx) 000C86(W)  000D46(Wx) 0015A8(Ri) 0015D8(Wi) 
ram_0076                                = $0076 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0015A8(Ri) 0015D8(Wi) 
ram_0077                                = $0077 ; 0000AA(Wx) 000212(Wx) 000C7E(W)  000D46(Wx) 0015A8(Ri) 0015D8(Wi) 0016AD(Ri) 
ram_0078                                = $0078 ; 0000AA(Wx) 000212(Wx) 000ED4(Wx) 000F1A(Rx) 000F2F(Wx) 
ram_0079                                = $0079 ; 0000AA(Wx) 000212(Wx) 000ED4(Wx) 000F1A(Rx) 000F2F(Wx) 
ram_007A                                = $007A ; 0000AA(Wx) 000212(Wx) 000ED4(Wx) 000F1A(Rx) 000F2F(Wx) 
ram_007B                                = $007B ; 0000AA(Wx) 000212(Wx) 000ED4(Wx) 000F1A(Rx) 000F2F(Wx) 
ram_007C                                = $007C ; 0000AA(Wx) 000212(Wx) 000ED4(Wx) 000F1A(Rx) 000F2F(Wx) 
ram_007D                                = $007D ; 0000AA(Wx) 000212(Wx) 000ED4(Wx) 000F1A(Rx) 000F2F(Wx) 
ram_007E                                = $007E ; 0000AA(Wx) 000212(Wx) 000ED4(Wx) 000F1A(Rx) 000F2F(Wx) 
ram_007F                                = $007F ; 0000AA(Wx) 000212(Wx) 000ED4(Wx) 000F1A(Rx) 000F2F(Wx) 
ram_0080                                = $0080 ; 0000AA(Wx) 000212(Wx) 000ED4(Wx) 000F1A(Rx) 000F2F(Wx) 
ram_0081                                = $0081 ; 0000AA(Wx) 000212(Wx) 000ED4(Wx) 000F1A(Rx) 000F2F(Wx) 
ram_0082                                = $0082 ; 0000AA(Wx) 000212(Wx) 000ED4(Wx) 000F1A(Rx) 000F2F(Wx) 
ram_0083                                = $0083 ; 0000AA(Wx) 000212(Wx) 000ED4(Wx) 000F1A(Rx) 000F2F(Wx) 
ram_0084                                = $0084 ; 0000AA(Wx) 000212(Wx) 000ED4(Wx) 000F1A(Rx) 000F2F(Wx) 
ram_0085                                = $0085 ; 0000AA(Wx) 000212(Wx) 000ED4(Wx) 000F1A(Rx) 000F2F(Wx) 
ram_0086                                = $0086 ; 0000AA(Wx) 000212(Wx) 000ED4(Wx) 000F1A(Rx) 000F2F(Wx) 
ram_0087                                = $0087 ; 0000AA(Wx) 000212(Wx) 000ED4(Wx) 000F1A(Rx) 000F2F(Wx) 



; 
ram_0088                                = $0088 ; 0000AA(Wx) 000212(Wx) 0011E9(Wx) 001230(Ri) 001241(Wi) 001279(Ri) 00129B(Wi) 
ram_0089                                = $0089 ; 0000AA(Wx) 000212(Wx) 0011E9(Wx) 001235(Ri) 00123A(Wi) 0012A0(Wi) 
ram_008A                                = $008A ; 0000AA(Wx) 000212(Wx) 0011E9(Wx) 001230(Ri) 001241(Wi) 001279(Ri) 00129B(Wi) 
ram_008B                                = $008B ; 0000AA(Wx) 000212(Wx) 0011E9(Wx) 001235(Ri) 00123A(Wi) 0012A0(Wi) 
ram_008C                                = $008C ; 0000AA(Wx) 000212(Wx) 00101D(R)  001030(W)  00160D(R)  00164A(W)  
ram_008D                                = $008D ; 0000AA(Wx) 000212(Wx) 001021(W)  001023(R)  00164E(W)  



; 00 = 
; 01 = 
ram_008E_flag                           = $008E ; 0000AA(Wx) 000212(Wx) 002154(W)  0021E3(W)  0028C5(R)  



; 
ram_bonus_round_id                      = $008F ; 0000AA(Wx) 000212(Wx) 00029C(W)  00037C(W)  0003CA(R)  0003EB(R)  000400(R)  000855(W)  000B87(R)  000BCE(R)  000DA9(R)  000F01(R)  000F12(R)  00116D(R)  001178(R)  00118F(R)  0011F0(R)  001555(R)  001A56(R)  001B69(R)  001C3B(W)  002579(R)  003265(R)  003299(R)  



; todo
ram_0090                                = $0090 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0010AD(Ri) 0010C7(Wi) 002615(Wx) 
ram_0091                                = $0091 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0010B2(Ri) 0010CC(Wi) 002615(Wx) 0027F6(Wx) 002802(Rx) 
ram_0092                                = $0092 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0010AD(Ri) 0010C7(Wi) 002615(Wx) 0027F6(Wx) 002802(Rx) 
ram_0093                                = $0093 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0010B2(Ri) 0010CC(Wi) 002615(Wx) 0027F6(Wx) 002802(Rx) 
ram_0094                                = $0094 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0010AD(Ri) 0010C7(Wi) 002615(Wx) 0027F6(Wx) 002802(Rx) 
ram_0095                                = $0095 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0010B2(Ri) 0010CC(Wi) 002615(Wx) 0027F6(Wx) 002802(Rx) 
ram_0096                                = $0096 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0010AD(Ri) 0010C7(Wi) 002615(Wx) 0027F6(Wx) 002802(Rx) 
ram_0097                                = $0097 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0010B2(Ri) 0010CC(Wi) 002615(Wx) 0027F6(Wx) 002802(Rx) 
ram_0098                                = $0098 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0010AD(Ri) 0010C7(Wi) 002615(Wx) 0027F6(Wx) 002802(Rx) 
ram_0099                                = $0099 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 0010B2(Ri) 0010CC(Wi) 002615(Wx) 0027F6(Wx) 002802(Rx) 
ram_009A                                = $009A ; 0000AA(Wx) 000212(Wx) 000B7A(R)  000BC9(R)  000DA4(R)  000EFC(R)  001018(R)  001092(R)  001203(R)  001573(R)  001A93(W)  001AD9(R)  001AE0(W)  001AE7(W)  002615(Wx) 0027F6(Wx) 002802(Rx) 
ram_009B                                = $009B ; 0000AA(Wx) 000212(Wx) 0009C6(R)  001552(W)  001578(R)  00157D(W)  001586(W)  002615(Wx) 0027F6(Wx) 002802(Rx) 
ram_009C                                = $009C ; 0000AA(Wx) 000212(Wx) 000B10(W)  000B67(W)  000B6E(R)  002615(Wx) 



; 
ram_009D                                = $009D ; 0000AA(Wx) 000212(Wx) 000B12(W)  000B6B(W)  000B72(W)  0022B7(W)  00272F(R)  



; for constructor
; 00 = 
; 01 = 
ram_009E_flag                           = $009E ; 0000AA(Wx) 000212(Wx) 00217F(R)  0021C8(W)  0022A9(W)  0022BF(W)  002371(W)  



; for constructor
; 00 = 
; 01 = 
ram_009F_flag                           = $009F ; 0000AA(Wx) 000212(Wx) 002183(R)  0021CC(W)  



; todo
ram_00A0                                = $00A0 ; 0000AA(Wx) 000212(Wx) 00063A(R)  000648(W)  002D50(W)  002DB8(W)  
ram_00A1                                = $00A1 ; 0000AA(Wx) 000212(Wx) 00063F(W)  00064E(R)  002D55(W)  002DBC(W)  
ram_00A2                                = $00A2 ; 0000AA(Wx) 000212(Wx) 000636(R)  000644(W)  00064A(W)  002D5A(W)  002DC0(W)  
ram_00A3                                = $00A3 ; 0000AA(Wx) 000212(Wx) 001C8E(W)  001C90(R)  001ED1(W)  002D0F(W)  002D4A(W)  002D9A(W)  
ram_00A4                                = $00A4 ; 0000AA(Wx) 000212(Wx) 002D13(W)  002D46(W)  
ram_00A5                                = $00A5 ; 0000AA(Wx) 000212(Wx) 002D17(W)  002D42(W)  
ram_00A6                                = $00A6 ; 0000AA(Wx) 000212(Wx) 0006CA(W)  0006E7(R)  



; 00 = don't play
; 01 = play
ram_sound_channel_4_flag                = $00A7 ; 0000AA(Wx) 000212(Wx) 00024F(R)  0003C2(R)  0003F9(R)  0004DB(R)  000543(R)  000559(R)  000630(R)  0006CC(R)  001B62(R)  002D0B(W)  002D62(W)  002DC4(W)  002FFE(R)  0030AB(R)  0030C2(R)  0030D9(R)  0030F9(R)  00311D(R)  003139(R)  003193(R)  0032B4(R)  



; 00 = house is closed
; 01 = house is opened, a girl screams for help
; 02 = unused state, checked at 0x000653
ram_house_flag                          = $00A8 ; 0000AA(Wx) 000212(Wx) 000651(R)  000C89(R)  000C90(W)  000D46(Wx) 000DB2(R)  000DB8(W)  



; 
ram_00A9                                = $00A9 ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 000DBF(W)  000DC1(R)  



; timer for HELP message from a girl to appear/dissapear
ram_help_timer                          = $00AA ; 0000AA(Wx) 000212(Wx) 000BEB(W)  000BED(R)  000D46(Wx) 000DD3(W)  000DD5(R)  



; free address
; ram_00AB                              = $00AB ; 0000AA(Wx) 000212(Wx) 000D46(Wx) 



; 00 = 
; 01 = 
; 02 = 
ram_00AC_flag                           = $00AC ; 0000AA(Wx) 000212(Wx) 0009D9(R)  0009FC(W)  000A2A(R)  000A89(R)  000ABD(W)  000D46(Wx) 



; 00 = 
; 01 = 
ram_00AD_flag                           = $00AD ; 0000AA(Wx) 000212(Wx) 0009F3(W)  000A35(R)  000D46(Wx) 



; 
ram_00AE                                = $00AE ; 0000AA(Wx) 000212(Wx) 0009F8(W)  000A49(R)  000A52(W)  000D46(Wx) 



; 
ram_00AF                                = $00AF ; 0000AA(Wx) 000212(Wx) 0009DD(W)  0009DF(R)  000A00(W)  000A5E(R)  000A68(W)  000A6F(R)  000A79(W)  000AB9(W)  000D46(Wx) 



; 6 digit number, stored in tiles 30-39 for numbers 0-9
ram_decimal_number                      = $00B0 ; 0000AA(Wx) 000212(Wx) 0007A2(Wi) 
; ram_00B1                              = $00B1 ; 0000AA(Wx) 000212(Wx) 0007A2(Wi) 002BEE(Ri) 002C0B(Ri) 002C77(Ri) 
; ram_00B2                              = $00B2 ; 0000AA(Wx) 000212(Wx) 0007A2(Wi) 002BEE(Ri) 002C0B(Ri) 002C77(Ri) 
; ram_00B3                              = $00B3 ; 0000AA(Wx) 000212(Wx) 0007A2(Wi) 002BEE(Ri) 002C0B(Ri) 002C77(Ri) 
; ram_00B4                              = $00B4 ; 0000AA(Wx) 000212(Wx) 0007A2(Wi) 002BEE(Ri) 002C0B(Ri) 002C77(Ri) 
; ram_00B5                              = $00B5 ; 0000AA(Wx) 000212(Wx) 0007BC(W)  002BEE(Ri) 002C77(Ri) 



; 16-bit number
ram_00B6_number_lo                      = $00B6 ; 0000AA(Wx) 000212(Wx) 000752(R)  00255A(W)  002569(W)  002574(W)  002583(W)  00258F(W)  00259E(W)  0025B1(W)  
ram_00B7_number_hi                      = $00B7 ; 0000AA(Wx) 000212(Wx) 000756(R)  00255E(W)  002593(W)  0025A2(W)  0025B5(W)  0025BD(W)  



; 
ram_score_lo_p1                         = $00B8 ; 0000AA(Wx) 0001EC(W)  0006E4(R)  0006E9(W)  0006F5(R)  000700(R)  00258D(R)  002DC8(W)  
ram_score_hi_p1                         = $00B9 ; 0000AA(Wx) 0001EE(W)  0006EB(R)  0006EF(W)  0006FA(R)  000704(R)  002591(R)  002DCA(W)  



; 
ram_top_score_lo                        = $00BA ; 0000AA(Wx) 0001E6(W)  0006F8(R)  000702(W)  00259C(R)  
ram_top_score_hi                        = $00BB ; 0000AA(Wx) 0001E8(W)  0006FC(R)  000706(W)  0025A0(R)  



; 
ram_score_lo_p2                         = $00BC ; 0000AA(Wx) 0001F0(W)  0025AF(R)  002DCC(W)  
ram_score_hi_p2                         = $00BD ; 0000AA(Wx) 0001F2(W)  0025B3(R)  002DCE(W)  



; lives
ram_milk_p1                             = $00BE ; 0000AA(Wx) 00021F(Wx) 00025D(W)  000311(R)  00033B(R)  00033F(R)  000351(R)  00093B(W)  001B8A(W)  001BD9(W)  
ram_milk_p2                             = $00BF ; 0000AA(Wx) 00021F(Wx) 00025F(W)  00032A(R)  00032E(R)  001BF8(W)  



; 
ram_00C0_save_X                         = $00C0 ; 0000AA(Wx) 00021F(Wx) 0012CC(W)  001542(R)  
ram_00C1_save_Y                         = $00C1 ; 0000AA(Wx) 00021F(Wx) 0012CE(W)  001544(R)  



; 
ram_00C2_temp_pos_X                     = $00C2 ; 0000AA(Wx) 00021F(Wx) 0015C0(W)  0016D5(R)  
ram_00C3_temp_pos_Y                     = $00C3 ; 0000AA(Wx) 00021F(Wx) 0015C4(W)  0016D7(R)  



; stores current round for players
ram_round_p1                            = $00C4 ; 0000AA(Wx) 00021F(Wx) 000255(W)  0002FD(R)  00030D(W)  000343(R)  000355(R)  
ram_round_p2                            = $00C5 ; 0000AA(Wx) 00021F(Wx) 000257(W)  000332(R)  



; 3 pairs?
ram_00C6                                = $00C6 ; 0000AA(Wx) 00021F(Wx) 001757(Rx) 002791(Wi) 
ram_00C7                                = $00C7 ; 0000AA(Wx) 00021F(Wx) 00175A(Rx) 00279A(Wi) 
; ram_00C8                              = $00C8 ; 0000AA(Wx) 00021F(Wx) 001757(Rx) 002791(Wi) 
; ram_00C9                              = $00C9 ; 0000AA(Wx) 00021F(Wx) 00175A(Rx) 00279A(Wi) 
; ram_00CA                              = $00CA ; 0000AA(Wx) 00021F(Wx) 001757(Rx) 002791(Wi) 
; ram_00CB                              = $00CB ; 0000AA(Wx) 00021F(Wx) 00175A(Rx) 00279A(Wi) 



; 00 = 
; 01 = 
ram_00CC_flag                           = $00CC ; 0000AA(Wx) 00014B(R)  000168(W)  000181(W)  00021F(Wx) 00036C(W)  001DD2(R)  001EF4(W)  



; used to shake the screen when player is falling hard
ram_scroll_pos_Y                        = $00CD ; 0000AA(Wx) 00015E(W)  000160(W)  000162(R)  000177(W)  000179(R)  000188(R)  00021F(Wx) 001EF0(W)  



; a copy of ram_bonus_round_id
ram_copy_bonus_round_id                 = $00CE ; 0000AA(Wx) 00021F(Wx) 00026B(W)  0003D0(R)  0003ED(W)  



; 00 = never skipped
; 01 = skipped at least once (no final screen)
ram_round_skip_flag                     = $00CF ; 0000AA(Wx) 00021F(Wx) 00026D(W)  000581(W)  0007D8(R)  



; 00D0-00DF common array for different objects
ram_00D0_obj_data                       = $00D0 ; for common links



; 4 * 4 addresses
ram_00D0_obj_pos_Y                      = $00D0 ; 0000AA(Wx) 00021F(Wx) 0012DA(R)  0012E3(R)  0012F1(R)  0012F7(R)  0012FF(R)  001320(R)  00133D(R)  001354(R)  001361(R)  001383(R)  00139A(R)  0013A7(R)  0013D2(R)  0013DB(R)  0013F3(R)  001411(R)  00141F(R)  00142A(R)  001456(R)  001461(R)  00147B(R)  00149E(R)  0014AB(R)  0014CC(R)  0014D9(R)  0014FC(R)  001509(R)  00152A(R)  001537(R)  0015B6(Wy) 0015C2(R)  0015E2(Ry) 00161B(R)  001632(R)  001667(R)  0016C7(R)  00179A(R)  0017A9(R)  0017C3(R)  0017EC(R)  0017F7(R)  001802(R)  001813(R)  00181A(R)  001841(R)  0018C2(R)  0018CF(R)  0018EB(R)  0018F6(R)  001907(R)  001938(R)  00194C(R)  001969(R)  00197C(R)  001997(R)  0019A3(R)  0019DA(R)  0019F3(R)  001A0D(R)  001A37(R)  001A7D(W)  
ram_00D0_obj_graphics                   = $00D1 ; 0000AA(Wx) 00021F(Wx) 0015B6(Wy) 0015E2(Ry) 00182F(R)  00186E(R)  001887(W)  001894(R)  00189D(R)  0018A6(R)  001953(R)  001A62(W)  
; ram_00D0_obj_palette                  = $00D2 ; 0000AA(Wx) 00021F(Wx) 0015B6(Wy) 0015E2(Ry) 
ram_00D0_obj_pos_X                      = $00D3 ; 0000AA(Wx) 00021F(Wx) 0012D8(R)  0012E1(R)  0012FD(R)  001334(R)  00133B(R)  00134C(R)  001352(R)  00135F(R)  001368(R)  001381(R)  001394(R)  001398(R)  0013A5(R)  0013AE(R)  0013D9(R)  0013E4(R)  0013F1(R)  001409(R)  00141D(R)  001428(R)  00143A(R)  001454(R)  00145F(R)  001473(R)  001479(R)  001493(R)  00149C(R)  0014A9(R)  0014B2(R)  0014C4(R)  0014CA(R)  0014D7(R)  0014F1(R)  0014FA(R)  001507(R)  001510(R)  001522(R)  001528(R)  001535(R)  0015B6(Wy) 0015BE(R)  0015E2(Ry) 001611(R)  001630(R)  00165D(R)  0016BC(R)  00179F(R)  0017C1(R)  0017EA(R)  0017F5(R)  001800(R)  00180B(R)  001818(R)  001846(R)  00185E(R)  0018C0(R)  0018CD(R)  0018E9(R)  0018F4(R)  001905(R)  001936(R)  00194A(R)  001967(R)  00197A(R)  001995(R)  00199F(R)  0019D8(R)  0019F1(R)  001A0B(R)  001A35(R)  001A71(W)  
; ram_00D4                              = $00D4 ; 0000AA(Wx) 00021F(Wx) 0015B6(Wy) 0015E2(Ry) 001A7F(W)  
; ram_00D5                              = $00D5 ; 0000AA(Wx) 00021F(Wx) 0015B6(Wy) 0015E2(Ry) 001A65(W)  
; ram_00D6                              = $00D6 ; 0000AA(Wx) 00021F(Wx) 0015B6(Wy) 0015E2(Ry) 
; ram_00D7                              = $00D7 ; 0000AA(Wx) 00021F(Wx) 0015B6(Wy) 0015E2(Ry) 001A79(W)  
; ram_00D8                              = $00D8 ; 0000AA(Wx) 00021F(Wx) 0015B6(Wy) 0015E2(Ry) 001A85(W)  
; ram_00D9                              = $00D9 ; 0000AA(Wx) 00021F(Wx) 0015B6(Wy) 0015E2(Ry) 001A6E(W)  
; ram_00DA                              = $00DA ; 0000AA(Wx) 00021F(Wx) 0015B6(Wy) 0015E2(Ry) 
; ram_00DB                              = $00DB ; 0000AA(Wx) 00021F(Wx) 0015B6(Wy) 0015E2(Ry) 001A7B(W)  
; ram_00DC                              = $00DC ; 0000AA(Wx) 00021F(Wx) 0015B6(Wy) 0015E2(Ry) 001A87(W)  
; ram_00DD                              = $00DD ; 0000AA(Wx) 00021F(Wx) 0015B6(Wy) 0015E2(Ry) 001A6A(W)  
; ram_00DE                              = $00DE ; 0000AA(Wx) 00021F(Wx) 0015B6(Wy) 0015E2(Ry) 
; ram_00DF                              = $00DF ; 0000AA(Wx) 00021F(Wx) 0015B6(Wy) 0015E2(Ry) 001A73(W)  



; 
ram_players_counter                     = $00E0 ; 0000AA(Wx) 00021F(Wx) 000322(R)  000657(R)  001B86(R)  002158(W)  00245D(R)  0025A7(R)  002D26(W)  002D5E(W)  002D7A(R)  002D90(W)  002DA5(R)  002DAD(W)  
    ram_option_game_mode                    = $00E0 ; used at the title screen



; who is currently playing
; 00 = player 1
; 01 = player 2
ram_00E1_current_player                 = $00E1 ; 0000AA(Wx) 00021F(Wx) 0002DE(R)  000326(R)  000349(W)  000459(R)  0004E5(R)  000662(R)  0006D0(R)  000937(R)  0009CA(R)  001BD1(R)  001BD7(W)  001BF6(W)  002D1B(W)  



; 00 = both players still have milk
; +0F = player 2 game over, he doesn't have any more milk (lives)
; +F0 = player 1 game over, he doesn't have any more milk (lives)
; FF = total game over
ram_game_over_flag                      = $00E2 ; 0000AA(Wx) 00021F(Wx) 000269(W)  001BDD(R)  001BE1(W)  001BFC(R)  001C00(W)  001C45(R)  001C4E(R)  



; 
ram_00E3                                = $00E3 ; 0000AA(Wx) 00021F(Wx) 00036A(W)  000B8B(R)  000B94(R)  000B9D(W)  



; increases by 01 each time you collect a fruit
ram_collected_fruit_counter             = $00E4 ; 0000AA(Wx) 00021F(Wx) 000BDB(R)  001075(W)  001124(W)  



; 
ram_00E5                                = $00E5 ; 0000AA(Wx) 00021F(Wx) 000265(W)  000291(W)  00031A(W)  0003C6(R)  0003F5(W)  000533(R)  0005E1(R)  0009C2(R)  000B7F(R)  000BD3(R)  000C4C(W)  0010F3(R)  00156F(R)  001740(R)  001761(R)  001765(W)  001AE9(R)  



; 00 = enabled (write to buffer)
; 01 = disabled (write to ppu directly)
ram_nmi_enabled_flag                    = $00E6 ; 0000AA(Wx) 00021F(Wx) 000744(R)  002F7E(W)  002F88(W)  



; 00 = 
; 01 = 
ram_00E7_flag                           = $00E7 ; 0000AA(Wx) 00021F(Wx) 0015A2(W)  001689(R)  0016E5(W)  



; 00 = A
; 01 = N
ram_00E8_game_mode                      = $00E8 ; 000246(W)  00030A(W)  0009D4(R)  002DB2(W)  



; 00 = A
; 01 = N
ram_00E9_game_mode                      = $00E9 ; 000248(W)  0009CE(R)  002DB4(W)  



; 
ram_00EA_temp                           = $00EA ; 00066D(W)  000672(R)  
    ram_00EA_t01                            = ram_00EA_temp ; 



; counts how many times demo has finished
; music will play at the title screen if counter AND 03 = 00
ram_demo_counter                        = $00EB ; 0001F6(W)  00023B(R)  000242(W)  002CFF(R)  002D37(R)  



; 
ram_00EC                                = $00EC ; 001A95(W)  001D1B(W)  001D1D(R)  001DA7(R)  001ECF(W)  



; free addresses
; ram_00ED                              = $00ED ; 
; ram_00EE                              = $00EE ; 
; ram_00EF                              = $00EF ; 
; ram_00F0                              = $00F0 ; 
; ram_00F1                              = $00F1 ; 
; ram_00F2                              = $00F2 ; 
; ram_00F3                              = $00F3 ; 
; ram_00F4                              = $00F4 ; 
; ram_00F5                              = $00F5 ; 
; ram_00F6                              = $00F6 ; 
; ram_00F7                              = $00F7 ; 
; ram_00F8                              = $00F8 ; 
; ram_00F9                              = $00F9 ; 
; ram_00FA                              = $00FA ; 
; ram_00FB                              = $00FB ; 
; ram_00FC                              = $00FC ; 
; ram_00FD                              = $00FD ; 
; ram_00FE                              = $00FE ; 
; ram_00FF                              = $00FF ; 



; 0100-01FF (100) STACK



; free addresses
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
; ram_0140                              = $0140 ; 
; ram_0141                              = $0141 ; 
; ram_0142                              = $0142 ; 
; ram_0143                              = $0143 ; 
; ram_0144                              = $0144 ; 
; ram_0145                              = $0145 ; 
; ram_0146                              = $0146 ; 
; ram_0147                              = $0147 ; 
; ram_0148                              = $0148 ; 
; ram_0149                              = $0149 ; 
; ram_014A                              = $014A ; 
; ram_014B                              = $014B ; 
; ram_014C                              = $014C ; 
; ram_014D                              = $014D ; 
; ram_014E                              = $014E ; 
; ram_014F                              = $014F ; 
; ram_0150                              = $0150 ; 
; ram_0151                              = $0151 ; 
; ram_0152                              = $0152 ; 
; ram_0153                              = $0153 ; 
; ram_0154                              = $0154 ; 
; ram_0155                              = $0155 ; 
; ram_0156                              = $0156 ; 
; ram_0157                              = $0157 ; 
; ram_0158                              = $0158 ; 
; ram_0159                              = $0159 ; 
; ram_015A                              = $015A ; 
; ram_015B                              = $015B ; 
; ram_015C                              = $015C ; 
; ram_015D                              = $015D ; 
; ram_015E                              = $015E ; 
; ram_015F                              = $015F ; 
; ram_0160                              = $0160 ; 
; ram_0161                              = $0161 ; 
; ram_0162                              = $0162 ; 
; ram_0163                              = $0163 ; 
; ram_0164                              = $0164 ; 
; ram_0165                              = $0165 ; 
; ram_0166                              = $0166 ; 
; ram_0167                              = $0167 ; 
; ram_0168                              = $0168 ; 
; ram_0169                              = $0169 ; 
; ram_016A                              = $016A ; 
; ram_016B                              = $016B ; 
; ram_016C                              = $016C ; 
; ram_016D                              = $016D ; 
; ram_016E                              = $016E ; 
; ram_016F                              = $016F ; 
; ram_0170                              = $0170 ; 
; ram_0171                              = $0171 ; 
; ram_0172                              = $0172 ; 
; ram_0173                              = $0173 ; 
; ram_0174                              = $0174 ; 
; ram_0175                              = $0175 ; 
; ram_0176                              = $0176 ; 
; ram_0177                              = $0177 ; 
; ram_0178                              = $0178 ; 
; ram_0179                              = $0179 ; 
; ram_017A                              = $017A ; 
; ram_017B                              = $017B ; 
; ram_017C                              = $017C ; 
; ram_017D                              = $017D ; 
; ram_017E                              = $017E ; 
; ram_017F                              = $017F ; 
; ram_0180                              = $0180 ; 
; ram_0181                              = $0181 ; 
; ram_0182                              = $0182 ; 
; ram_0183                              = $0183 ; 
; ram_0184                              = $0184 ; 
; ram_0185                              = $0185 ; 
; ram_0186                              = $0186 ; 
; ram_0187                              = $0187 ; 
; ram_0188                              = $0188 ; 
; ram_0189                              = $0189 ; 
; ram_018A                              = $018A ; 
; ram_018B                              = $018B ; 
; ram_018C                              = $018C ; 
; ram_018D                              = $018D ; 
; ram_018E                              = $018E ; 
; ram_018F                              = $018F ; 
; ram_0190                              = $0190 ; 
; ram_0191                              = $0191 ; 
; ram_0192                              = $0192 ; 
; ram_0193                              = $0193 ; 
; ram_0194                              = $0194 ; 
; ram_0195                              = $0195 ; 
; ram_0196                              = $0196 ; 
; ram_0197                              = $0197 ; 
; ram_0198                              = $0198 ; 
; ram_0199                              = $0199 ; 
; ram_019A                              = $019A ; 
; ram_019B                              = $019B ; 
; ram_019C                              = $019C ; 
; ram_019D                              = $019D ; 
; ram_019E                              = $019E ; 
; ram_019F                              = $019F ; 
; ram_01A0                              = $01A0 ; 
; ram_01A1                              = $01A1 ; 
; ram_01A2                              = $01A2 ; 
; ram_01A3                              = $01A3 ; 
; ram_01A4                              = $01A4 ; 
; ram_01A5                              = $01A5 ; 
; ram_01A6                              = $01A6 ; 
; ram_01A7                              = $01A7 ; 
; ram_01A8                              = $01A8 ; 
; ram_01A9                              = $01A9 ; 
; ram_01AA                              = $01AA ; 
; ram_01AB                              = $01AB ; 
; ram_01AC                              = $01AC ; 
; ram_01AD                              = $01AD ; 
; ram_01AE                              = $01AE ; 
; ram_01AF                              = $01AF ; 
; ram_01B0                              = $01B0 ; 
; ram_01B1                              = $01B1 ; 
; ram_01B2                              = $01B2 ; 
; ram_01B3                              = $01B3 ; 
; ram_01B4                              = $01B4 ; 
; ram_01B5                              = $01B5 ; 
; ram_01B6                              = $01B6 ; 
; ram_01B7                              = $01B7 ; 
; ram_01B8                              = $01B8 ; 
; ram_01B9                              = $01B9 ; 
; ram_01BA                              = $01BA ; 
; ram_01BB                              = $01BB ; 
; ram_01BC                              = $01BC ; 
; ram_01BD                              = $01BD ; 
; ram_01BE                              = $01BE ; 
; ram_01BF                              = $01BF ; 
; ram_01C0                              = $01C0 ; 
; ram_01C1                              = $01C1 ; 
; ram_01C2                              = $01C2 ; 
; ram_01C3                              = $01C3 ; 
; ram_01C4                              = $01C4 ; 
; ram_01C5                              = $01C5 ; 
; ram_01C6                              = $01C6 ; 
; ram_01C7                              = $01C7 ; 
; ram_01C8                              = $01C8 ; 
; ram_01C9                              = $01C9 ; 
; ram_01CA                              = $01CA ; 
; ram_01CB                              = $01CB ; 
; ram_01CC                              = $01CC ; 
; ram_01CD                              = $01CD ; 
; ram_01CE                              = $01CE ; 
; ram_01CF                              = $01CF ; 



; reserved for the actual stack, although max usage
; is at the constructor screen, uses 01EC max.
; I suggest reserving max 01D0, should be more than enough
; ram_01D0                              = $01D0 ; 
; ram_01D1                              = $01D1 ; 
; ram_01D2                              = $01D2 ; 
; ram_01D3                              = $01D3 ; 
; ram_01D4                              = $01D4 ; 
; ram_01D5                              = $01D5 ; 
; ram_01D6                              = $01D6 ; 
; ram_01D7                              = $01D7 ; 
; ram_01D8                              = $01D8 ; 
; ram_01D9                              = $01D9 ; 
; ram_01DA                              = $01DA ; 
; ram_01DB                              = $01DB ; 
; ram_01DC                              = $01DC ; 
; ram_01DD                              = $01DD ; 
; ram_01DE                              = $01DE ; 
; ram_01DF                              = $01DF ; 
; ram_01E0                              = $01E0 ; 
; ram_01E1                              = $01E1 ; 
; ram_01E2                              = $01E2 ; 
; ram_01E3                              = $01E3 ; 
; ram_01E4                              = $01E4 ; 
; ram_01E5                              = $01E5 ; 
; ram_01E6                              = $01E6 ; 
; ram_01E7                              = $01E7 ; 
; ram_01E8                              = $01E8 ; 
; ram_01E9                              = $01E9 ; 
; ram_01EA                              = $01EA ; 
; ram_01EB                              = $01EB ; 
; ram_01EC                              = $01EC ; 
; ram_01ED                              = $01ED ; 
; ram_01EE                              = $01EE ; 
; ram_01EF                              = $01EF ; 
; ram_01F0                              = $01F0 ; 
; ram_01F1                              = $01F1 ; 
; ram_01F2                              = $01F2 ; 
; ram_01F3                              = $01F3 ; 
; ram_01F4                              = $01F4 ; 
; ram_01F5                              = $01F5 ; 
; ram_01F6                              = $01F6 ; 
; ram_01F7                              = $01F7 ; 
; ram_01F8                              = $01F8 ; 
; ram_01F9                              = $01F9 ; 
; ram_01FA                              = $01FA ; 
; ram_01FB                              = $01FB ; 
; ram_01FC                              = $01FC ; 
; ram_01FD                              = $01FD ; 
; ram_01FE                              = $01FE ; 
; ram_01FF                              = $01FF ; 



; 1st address is a flag
    ; 00 = buffer is not ready
    ; 01 = buffer is ready
ram_ppu_buffer                          = $0200 ; 0000C0(Wx) 0000EE(Ri) 0000F4(Wi) 0001C9(W)  000235(W)  002BE7(R)  002C23(W)  002FE2(W)  002FE8(R)  
; ram_0201                              = $0201 ; 0000C0(Wx) 0000F7(Ri) 002C27(Wx) 002FE5(W)  
; ram_0202                              = $0202 ; 0000C0(Wx) 0001A6(Ri) 002C27(Wx) 
; ram_0203                              = $0203 ; 0000C0(Wx) 0001AA(Ri) 002C27(Wx) 
; ram_0204                              = $0204 ; 0000C0(Wx) 000109(Ri) 002C27(Wx) 
; ram_0205                              = $0205 ; 0000C0(Wx) 0000F7(Ri) 000109(Ri) 002C27(Wx) 
; ram_0206                              = $0206 ; 0000C0(Wx) 000109(Ri) 0001A6(Ri) 002C27(Wx) 
; ram_0207                              = $0207 ; 0000C0(Wx) 000109(Ri) 0001AA(Ri) 002C27(Wx) 
; ram_0208                              = $0208 ; 0000C0(Wx) 000109(Ri) 002C27(Wx) 
; ram_0209                              = $0209 ; 0000C0(Wx) 000109(Ri) 002C27(Wx) 
; ram_020A                              = $020A ; 0000C0(Wx) 0000F7(Ri) 000109(Ri) 002C27(Wx) 
; ram_020B                              = $020B ; 0000C0(Wx) 000109(Ri) 0001A6(Ri) 002C27(Wx) 
; ram_020C                              = $020C ; 0000C0(Wx) 000109(Ri) 0001AA(Ri) 002C27(Wx) 
; ram_020D                              = $020D ; 0000C0(Wx) 000109(Ri) 002C27(Wx) 
; ram_020E                              = $020E ; 0000C0(Wx) 000109(Ri) 002C27(Wx) 
; ram_020F                              = $020F ; 0000C0(Wx) 0000F7(Ri) 000109(Ri) 002C27(Wx) 
; ram_0210                              = $0210 ; 0000C0(Wx) 0000F7(Ri) 000109(Ri) 0001A6(Ri) 002C27(Wx) 
; ram_0211                              = $0211 ; 0000C0(Wx) 000109(Ri) 0001A6(Ri) 0001AA(Ri) 002C27(Wx) 
; ram_0212                              = $0212 ; 0000C0(Wx) 000109(Ri) 0001AA(Ri) 002C27(Wx) 
; ram_0213                              = $0213 ; 0000C0(Wx) 0000F7(Ri) 000109(Ri) 002C27(Wx) 
; ram_0214                              = $0214 ; 0000C0(Wx) 0000F7(Ri) 000109(Ri) 002C27(Wx) 
; ram_0215                              = $0215 ; 0000C0(Wx) 000109(Ri) 0001A6(Ri) 002C27(Wx) 
; ram_0216                              = $0216 ; 0000C0(Wx) 0000F7(Ri) 000109(Ri) 0001AA(Ri) 002C27(Wx) 
; ram_0217                              = $0217 ; 0000C0(Wx) 000109(Ri) 0001A6(Ri) 002C27(Wx) 
; ram_0218                              = $0218 ; 0000C0(Wx) 000109(Ri) 0001AA(Ri) 002C27(Wx) 
; ram_0219                              = $0219 ; 0000C0(Wx) 000109(Ri) 002C27(Wx) 
; ram_021A                              = $021A ; 0000C0(Wx) 000109(Ri) 002C27(Wx) 
; ram_021B                              = $021B ; 0000C0(Wx) 0000F7(Ri) 000109(Ri) 002C27(Wx) 
; ram_021C                              = $021C ; 0000C0(Wx) 000109(Ri) 0001A6(Ri) 002C27(Wx) 
; ram_021D                              = $021D ; 0000C0(Wx) 0000F7(Ri) 000109(Ri) 0001AA(Ri) 002C27(Wx) 
; ram_021E                              = $021E ; 0000C0(Wx) 000109(Ri) 0001A6(Ri) 002C27(Wx) 
; ram_021F                              = $021F ; 0000C0(Wx) 0000F7(Ri) 000109(Ri) 0001AA(Ri) 002C27(Wx) 
; ram_0220                              = $0220 ; 0000C0(Wx) 000109(Ri) 0001A6(Ri) 002C27(Wx) 
; ram_0221                              = $0221 ; 0000C0(Wx) 000109(Ri) 0001AA(Ri) 002C27(Wx) 
; ram_0222                              = $0222 ; 0000C0(Wx) 0000F7(Ri) 000109(Ri) 002C27(Wx) 
; ram_0223                              = $0223 ; 0000C0(Wx) 000109(Ri) 0001A6(Ri) 002C27(Wx) 
; ram_0224                              = $0224 ; 0000C0(Wx) 0000F7(Ri) 000109(Ri) 0001AA(Ri) 002C27(Wx) 
; ram_0225                              = $0225 ; 0000C0(Wx) 000109(Ri) 002C27(Wx) 
; ram_0226                              = $0226 ; 0000C0(Wx) 000109(Ri) 002C27(Wx) 
; ram_0227                              = $0227 ; 0000C0(Wx) 000109(Ri) 002C27(Wx) 
; ram_0228                              = $0228 ; 0000C0(Wx) 000109(Ri) 002C27(Wx) 
; ram_0229                              = $0229 ; 0000C0(Wx) 0000F7(Ri) 000109(Ri) 002C27(Wx) 
; ram_022A                              = $022A ; 0000C0(Wx) 000109(Ri) 002C27(Wx) 
; ram_022B                              = $022B ; 0000C0(Wx) 000109(Ri) 002C27(Wx) 
; ram_022C                              = $022C ; 0000C0(Wx) 000109(Ri) 002C27(Wx) 
; ram_022D                              = $022D ; 0000C0(Wx) 000109(Ri) 002C27(Wx) 
; ram_022E                              = $022E ; 0000C0(Wx) 0000F7(Ri) 002C27(Wx) 
; ram_022F                              = $022F ; 0000C0(Wx) 
; ram_0230                              = $0230 ; 0000C0(Wx) 
; ram_0231                              = $0231 ; 0000C0(Wx) 
; ram_0232                              = $0232 ; 0000C0(Wx) 
; ram_0233                              = $0233 ; 0000C0(Wx) 
; ram_0234                              = $0234 ; 0000C0(Wx) 
; ram_0235                              = $0235 ; 0000C0(Wx) 
; ram_0236                              = $0236 ; 0000C0(Wx) 
; ram_0237                              = $0237 ; 0000C0(Wx) 
; ram_0238                              = $0238 ; 0000C0(Wx) 
; ram_0239                              = $0239 ; 0000C0(Wx) 
; ram_023A                              = $023A ; 0000C0(Wx) 
; ram_023B                              = $023B ; 0000C0(Wx) 
; ram_023C                              = $023C ; 0000C0(Wx) 
; ram_023D                              = $023D ; 0000C0(Wx) 
; ram_023E                              = $023E ; 0000C0(Wx) 
; ram_023F                              = $023F ; 0000C0(Wx) 



; free addresses
; ram_0240                              = $0240 ; 0000C0(Wx) 
; ram_0241                              = $0241 ; 0000C0(Wx) 
; ram_0242                              = $0242 ; 0000C0(Wx) 
; ram_0243                              = $0243 ; 0000C0(Wx) 
; ram_0244                              = $0244 ; 0000C0(Wx) 
; ram_0245                              = $0245 ; 0000C0(Wx) 
; ram_0246                              = $0246 ; 0000C0(Wx) 
; ram_0247                              = $0247 ; 0000C0(Wx) 
; ram_0248                              = $0248 ; 0000C0(Wx) 
; ram_0249                              = $0249 ; 0000C0(Wx) 
; ram_024A                              = $024A ; 0000C0(Wx) 
; ram_024B                              = $024B ; 0000C0(Wx) 
; ram_024C                              = $024C ; 0000C0(Wx) 
; ram_024D                              = $024D ; 0000C0(Wx) 
; ram_024E                              = $024E ; 0000C0(Wx) 
; ram_024F                              = $024F ; 0000C0(Wx) 
; ram_0250                              = $0250 ; 0000C0(Wx) 
; ram_0251                              = $0251 ; 0000C0(Wx) 
; ram_0252                              = $0252 ; 0000C0(Wx) 
; ram_0253                              = $0253 ; 0000C0(Wx) 
; ram_0254                              = $0254 ; 0000C0(Wx) 
; ram_0255                              = $0255 ; 0000C0(Wx) 
; ram_0256                              = $0256 ; 0000C0(Wx) 
; ram_0257                              = $0257 ; 0000C0(Wx) 
; ram_0258                              = $0258 ; 0000C0(Wx) 
; ram_0259                              = $0259 ; 0000C0(Wx) 
; ram_025A                              = $025A ; 0000C0(Wx) 
; ram_025B                              = $025B ; 0000C0(Wx) 
; ram_025C                              = $025C ; 0000C0(Wx) 
; ram_025D                              = $025D ; 0000C0(Wx) 
; ram_025E                              = $025E ; 0000C0(Wx) 
; ram_025F                              = $025F ; 0000C0(Wx) 
; ram_0260                              = $0260 ; 0000C0(Wx) 
; ram_0261                              = $0261 ; 0000C0(Wx) 
; ram_0262                              = $0262 ; 0000C0(Wx) 
; ram_0263                              = $0263 ; 0000C0(Wx) 
; ram_0264                              = $0264 ; 0000C0(Wx) 
; ram_0265                              = $0265 ; 0000C0(Wx) 
; ram_0266                              = $0266 ; 0000C0(Wx) 
; ram_0267                              = $0267 ; 0000C0(Wx) 
; ram_0268                              = $0268 ; 0000C0(Wx) 
; ram_0269                              = $0269 ; 0000C0(Wx) 
; ram_026A                              = $026A ; 0000C0(Wx) 
; ram_026B                              = $026B ; 0000C0(Wx) 
; ram_026C                              = $026C ; 0000C0(Wx) 
; ram_026D                              = $026D ; 0000C0(Wx) 
; ram_026E                              = $026E ; 0000C0(Wx) 
; ram_026F                              = $026F ; 0000C0(Wx) 
; ram_0270                              = $0270 ; 0000C0(Wx) 
; ram_0271                              = $0271 ; 0000C0(Wx) 
; ram_0272                              = $0272 ; 0000C0(Wx) 
; ram_0273                              = $0273 ; 0000C0(Wx) 
; ram_0274                              = $0274 ; 0000C0(Wx) 
; ram_0275                              = $0275 ; 0000C0(Wx) 
; ram_0276                              = $0276 ; 0000C0(Wx) 
; ram_0277                              = $0277 ; 0000C0(Wx) 
; ram_0278                              = $0278 ; 0000C0(Wx) 
; ram_0279                              = $0279 ; 0000C0(Wx) 
; ram_027A                              = $027A ; 0000C0(Wx) 
; ram_027B                              = $027B ; 0000C0(Wx) 
; ram_027C                              = $027C ; 0000C0(Wx) 
; ram_027D                              = $027D ; 0000C0(Wx) 
; ram_027E                              = $027E ; 0000C0(Wx) 
; ram_027F                              = $027F ; 0000C0(Wx) 



; a copy of ram_oam (0700-071F)
ram_copy_oam                            = $0280 ; 0000C0(Wx) 00214A(Wx) 00232E(W)  002396(Ry) 
; ram_0281                              = $0281 ; 0000C0(Wx) 00214A(Wx) 002396(Ry) 0023B0(W)  
; ram_0282                              = $0282 ; 0000C0(Wx) 00214A(Wx) 002396(Ry) 
; ram_0283                              = $0283 ; 0000C0(Wx) 00214A(Wx) 002331(W)  002396(Ry) 
; ram_0284                              = $0284 ; 0000C0(Wx) 00214A(Wx) 00233F(W)  002396(Ry) 
; ram_0285                              = $0285 ; 0000C0(Wx) 00214A(Wx) 002396(Ry) 0023B3(W)  
; ram_0286                              = $0286 ; 0000C0(Wx) 00214A(Wx) 002396(Ry) 
; ram_0287                              = $0287 ; 0000C0(Wx) 00214A(Wx) 002342(W)  002396(Ry) 
; ram_0288                              = $0288 ; 0000C0(Wx) 00214A(Wx) 002361(W)  002396(Ry) 
; ram_0289                              = $0289 ; 0000C0(Wx) 00214A(Wx) 002396(Ry) 0023B6(W)  
; ram_028A                              = $028A ; 0000C0(Wx) 00214A(Wx) 002396(Ry) 
; ram_028B                              = $028B ; 0000C0(Wx) 00214A(Wx) 002364(W)  002396(Ry) 
; ram_028C                              = $028C ; 0000C0(Wx) 00214A(Wx) 002350(W)  002396(Ry) 
; ram_028D                              = $028D ; 0000C0(Wx) 00214A(Wx) 002396(Ry) 0023B9(W)  
; ram_028E                              = $028E ; 0000C0(Wx) 00214A(Wx) 002396(Ry) 
; ram_028F                              = $028F ; 0000C0(Wx) 00214A(Wx) 002353(W)  002396(Ry) 
; ram_0290                              = $0290 ; 0000C0(Wx) 00214A(Wx) 002334(W)  002396(Ry) 
; ram_0291                              = $0291 ; 0000C0(Wx) 00214A(Wx) 002274(W)  002396(Ry) 
; ram_0292                              = $0292 ; 0000C0(Wx) 00214A(Wx) 002295(W)  002396(Ry) 
; ram_0293                              = $0293 ; 0000C0(Wx) 00214A(Wx) 002337(W)  002396(Ry) 
; ram_0294                              = $0294 ; 0000C0(Wx) 00214A(Wx) 002345(W)  002396(Ry) 
; ram_0295                              = $0295 ; 0000C0(Wx) 00214A(Wx) 00227A(W)  002396(Ry) 
; ram_0296                              = $0296 ; 0000C0(Wx) 00214A(Wx) 002298(W)  002396(Ry) 
; ram_0297                              = $0297 ; 0000C0(Wx) 00214A(Wx) 002348(W)  002396(Ry) 
; ram_0298                              = $0298 ; 0000C0(Wx) 00214A(Wx) 002367(W)  002396(Ry) 
; ram_0299                              = $0299 ; 0000C0(Wx) 00214A(Wx) 002280(W)  002396(Ry) 
; ram_029A                              = $029A ; 0000C0(Wx) 00214A(Wx) 00229B(W)  002396(Ry) 
; ram_029B                              = $029B ; 0000C0(Wx) 00214A(Wx) 00236A(W)  002396(Ry) 
; ram_029C                              = $029C ; 0000C0(Wx) 00214A(Wx) 002356(W)  002396(Ry) 
; ram_029D                              = $029D ; 0000C0(Wx) 00214A(Wx) 002286(W)  002396(Ry) 
; ram_029E                              = $029E ; 0000C0(Wx) 00214A(Wx) 00229E(W)  002396(Ry) 
; ram_029F                              = $029F ; 0000C0(Wx) 00214A(Wx) 002359(W)  002396(Ry) 



; free addresses
; ram_02A0                              = $02A0 ; 0000C0(Wx) 
; ram_02A1                              = $02A1 ; 0000C0(Wx) 
; ram_02A2                              = $02A2 ; 0000C0(Wx) 
; ram_02A3                              = $02A3 ; 0000C0(Wx) 
; ram_02A4                              = $02A4 ; 0000C0(Wx) 
; ram_02A5                              = $02A5 ; 0000C0(Wx) 
; ram_02A6                              = $02A6 ; 0000C0(Wx) 
; ram_02A7                              = $02A7 ; 0000C0(Wx) 
; ram_02A8                              = $02A8 ; 0000C0(Wx) 
; ram_02A9                              = $02A9 ; 0000C0(Wx) 
; ram_02AA                              = $02AA ; 0000C0(Wx) 
; ram_02AB                              = $02AB ; 0000C0(Wx) 
; ram_02AC                              = $02AC ; 0000C0(Wx) 
; ram_02AD                              = $02AD ; 0000C0(Wx) 
; ram_02AE                              = $02AE ; 0000C0(Wx) 
; ram_02AF                              = $02AF ; 0000C0(Wx) 
; ram_02B0                              = $02B0 ; 0000C0(Wx) 
; ram_02B1                              = $02B1 ; 0000C0(Wx) 
; ram_02B2                              = $02B2 ; 0000C0(Wx) 
; ram_02B3                              = $02B3 ; 0000C0(Wx) 
; ram_02B4                              = $02B4 ; 0000C0(Wx) 
; ram_02B5                              = $02B5 ; 0000C0(Wx) 
; ram_02B6                              = $02B6 ; 0000C0(Wx) 
; ram_02B7                              = $02B7 ; 0000C0(Wx) 
; ram_02B8                              = $02B8 ; 0000C0(Wx) 
; ram_02B9                              = $02B9 ; 0000C0(Wx) 
; ram_02BA                              = $02BA ; 0000C0(Wx) 
; ram_02BB                              = $02BB ; 0000C0(Wx) 
; ram_02BC                              = $02BC ; 0000C0(Wx) 
; ram_02BD                              = $02BD ; 0000C0(Wx) 
; ram_02BE                              = $02BE ; 0000C0(Wx) 
; ram_02BF                              = $02BF ; 0000C0(Wx) 
; ram_02C0                              = $02C0 ; 0000C0(Wx) 
; ram_02C1                              = $02C1 ; 0000C0(Wx) 
; ram_02C2                              = $02C2 ; 0000C0(Wx) 
; ram_02C3                              = $02C3 ; 0000C0(Wx) 
; ram_02C4                              = $02C4 ; 0000C0(Wx) 
; ram_02C5                              = $02C5 ; 0000C0(Wx) 
; ram_02C6                              = $02C6 ; 0000C0(Wx) 
; ram_02C7                              = $02C7 ; 0000C0(Wx) 
; ram_02C8                              = $02C8 ; 0000C0(Wx) 
; ram_02C9                              = $02C9 ; 0000C0(Wx) 
; ram_02CA                              = $02CA ; 0000C0(Wx) 
; ram_02CB                              = $02CB ; 0000C0(Wx) 
; ram_02CC                              = $02CC ; 0000C0(Wx) 
; ram_02CD                              = $02CD ; 0000C0(Wx) 
; ram_02CE                              = $02CE ; 0000C0(Wx) 
; ram_02CF                              = $02CF ; 0000C0(Wx) 
; ram_02D0                              = $02D0 ; 0000C0(Wx) 
; ram_02D1                              = $02D1 ; 0000C0(Wx) 
; ram_02D2                              = $02D2 ; 0000C0(Wx) 
; ram_02D3                              = $02D3 ; 0000C0(Wx) 
; ram_02D4                              = $02D4 ; 0000C0(Wx) 
; ram_02D5                              = $02D5 ; 0000C0(Wx) 
; ram_02D6                              = $02D6 ; 0000C0(Wx) 
; ram_02D7                              = $02D7 ; 0000C0(Wx) 
; ram_02D8                              = $02D8 ; 0000C0(Wx) 
; ram_02D9                              = $02D9 ; 0000C0(Wx) 
; ram_02DA                              = $02DA ; 0000C0(Wx) 
; ram_02DB                              = $02DB ; 0000C0(Wx) 
; ram_02DC                              = $02DC ; 0000C0(Wx) 
; ram_02DD                              = $02DD ; 0000C0(Wx) 
; ram_02DE                              = $02DE ; 0000C0(Wx) 
; ram_02DF                              = $02DF ; 0000C0(Wx) 
; ram_02E0                              = $02E0 ; 0000C0(Wx) 
; ram_02E1                              = $02E1 ; 0000C0(Wx) 
; ram_02E2                              = $02E2 ; 0000C0(Wx) 
; ram_02E3                              = $02E3 ; 0000C0(Wx) 
; ram_02E4                              = $02E4 ; 0000C0(Wx) 
; ram_02E5                              = $02E5 ; 0000C0(Wx) 
; ram_02E6                              = $02E6 ; 0000C0(Wx) 
; ram_02E7                              = $02E7 ; 0000C0(Wx) 
; ram_02E8                              = $02E8 ; 0000C0(Wx) 
; ram_02E9                              = $02E9 ; 0000C0(Wx) 
; ram_02EA                              = $02EA ; 0000C0(Wx) 
; ram_02EB                              = $02EB ; 0000C0(Wx) 
; ram_02EC                              = $02EC ; 0000C0(Wx) 
; ram_02ED                              = $02ED ; 0000C0(Wx) 
; ram_02EE                              = $02EE ; 0000C0(Wx) 
; ram_02EF                              = $02EF ; 0000C0(Wx) 
; ram_02F0                              = $02F0 ; 0000C0(Wx) 
; ram_02F1                              = $02F1 ; 0000C0(Wx) 
; ram_02F2                              = $02F2 ; 0000C0(Wx) 
; ram_02F3                              = $02F3 ; 0000C0(Wx) 
; ram_02F4                              = $02F4 ; 0000C0(Wx) 
; ram_02F5                              = $02F5 ; 0000C0(Wx) 
; ram_02F6                              = $02F6 ; 0000C0(Wx) 
; ram_02F7                              = $02F7 ; 0000C0(Wx) 
; ram_02F8                              = $02F8 ; 0000C0(Wx) 
; ram_02F9                              = $02F9 ; 0000C0(Wx) 
; ram_02FA                              = $02FA ; 0000C0(Wx) 
; ram_02FB                              = $02FB ; 0000C0(Wx) 
; ram_02FC                              = $02FC ; 0000C0(Wx) 
; ram_02FD                              = $02FD ; 0000C0(Wx) 
; ram_02FE                              = $02FE ; 0000C0(Wx) 
; ram_02FF                              = $02FF ; 0000C0(Wx) 



; free addresses
; ram_0300                              = $0300 ; 0000C3(Wx) 
; ram_0301                              = $0301 ; 0000C3(Wx) 
; ram_0302                              = $0302 ; 0000C3(Wx) 
; ram_0303                              = $0303 ; 0000C3(Wx) 
; ram_0304                              = $0304 ; 0000C3(Wx) 
; ram_0305                              = $0305 ; 0000C3(Wx) 
; ram_0306                              = $0306 ; 0000C3(Wx) 
; ram_0307                              = $0307 ; 0000C3(Wx) 
; ram_0308                              = $0308 ; 0000C3(Wx) 
; ram_0309                              = $0309 ; 0000C3(Wx) 
; ram_030A                              = $030A ; 0000C3(Wx) 
; ram_030B                              = $030B ; 0000C3(Wx) 
; ram_030C                              = $030C ; 0000C3(Wx) 
; ram_030D                              = $030D ; 0000C3(Wx) 
; ram_030E                              = $030E ; 0000C3(Wx) 
; ram_030F                              = $030F ; 0000C3(Wx) 
; ram_0310                              = $0310 ; 0000C3(Wx) 
; ram_0311                              = $0311 ; 0000C3(Wx) 
; ram_0312                              = $0312 ; 0000C3(Wx) 
; ram_0313                              = $0313 ; 0000C3(Wx) 
; ram_0314                              = $0314 ; 0000C3(Wx) 
; ram_0315                              = $0315 ; 0000C3(Wx) 
; ram_0316                              = $0316 ; 0000C3(Wx) 
; ram_0317                              = $0317 ; 0000C3(Wx) 
; ram_0318                              = $0318 ; 0000C3(Wx) 
; ram_0319                              = $0319 ; 0000C3(Wx) 
; ram_031A                              = $031A ; 0000C3(Wx) 
; ram_031B                              = $031B ; 0000C3(Wx) 
; ram_031C                              = $031C ; 0000C3(Wx) 
; ram_031D                              = $031D ; 0000C3(Wx) 
; ram_031E                              = $031E ; 0000C3(Wx) 
; ram_031F                              = $031F ; 0000C3(Wx) 
; ram_0320                              = $0320 ; 0000C3(Wx) 
; ram_0321                              = $0321 ; 0000C3(Wx) 
; ram_0322                              = $0322 ; 0000C3(Wx) 
; ram_0323                              = $0323 ; 0000C3(Wx) 
; ram_0324                              = $0324 ; 0000C3(Wx) 
; ram_0325                              = $0325 ; 0000C3(Wx) 
; ram_0326                              = $0326 ; 0000C3(Wx) 
; ram_0327                              = $0327 ; 0000C3(Wx) 
; ram_0328                              = $0328 ; 0000C3(Wx) 
; ram_0329                              = $0329 ; 0000C3(Wx) 
; ram_032A                              = $032A ; 0000C3(Wx) 
; ram_032B                              = $032B ; 0000C3(Wx) 
; ram_032C                              = $032C ; 0000C3(Wx) 
; ram_032D                              = $032D ; 0000C3(Wx) 
; ram_032E                              = $032E ; 0000C3(Wx) 
; ram_032F                              = $032F ; 0000C3(Wx) 
; ram_0330                              = $0330 ; 0000C3(Wx) 
; ram_0331                              = $0331 ; 0000C3(Wx) 
; ram_0332                              = $0332 ; 0000C3(Wx) 
; ram_0333                              = $0333 ; 0000C3(Wx) 
; ram_0334                              = $0334 ; 0000C3(Wx) 
; ram_0335                              = $0335 ; 0000C3(Wx) 
; ram_0336                              = $0336 ; 0000C3(Wx) 
; ram_0337                              = $0337 ; 0000C3(Wx) 
; ram_0338                              = $0338 ; 0000C3(Wx) 
; ram_0339                              = $0339 ; 0000C3(Wx) 
; ram_033A                              = $033A ; 0000C3(Wx) 
; ram_033B                              = $033B ; 0000C3(Wx) 
; ram_033C                              = $033C ; 0000C3(Wx) 
; ram_033D                              = $033D ; 0000C3(Wx) 
; ram_033E                              = $033E ; 0000C3(Wx) 
; ram_033F                              = $033F ; 0000C3(Wx) 
; ram_0340                              = $0340 ; 0000C3(Wx) 
; ram_0341                              = $0341 ; 0000C3(Wx) 
; ram_0342                              = $0342 ; 0000C3(Wx) 
; ram_0343                              = $0343 ; 0000C3(Wx) 
; ram_0344                              = $0344 ; 0000C3(Wx) 
; ram_0345                              = $0345 ; 0000C3(Wx) 
; ram_0346                              = $0346 ; 0000C3(Wx) 
; ram_0347                              = $0347 ; 0000C3(Wx) 
; ram_0348                              = $0348 ; 0000C3(Wx) 
; ram_0349                              = $0349 ; 0000C3(Wx) 
; ram_034A                              = $034A ; 0000C3(Wx) 
; ram_034B                              = $034B ; 0000C3(Wx) 
; ram_034C                              = $034C ; 0000C3(Wx) 
; ram_034D                              = $034D ; 0000C3(Wx) 
; ram_034E                              = $034E ; 0000C3(Wx) 
; ram_034F                              = $034F ; 0000C3(Wx) 
; ram_0350                              = $0350 ; 0000C3(Wx) 
; ram_0351                              = $0351 ; 0000C3(Wx) 
; ram_0352                              = $0352 ; 0000C3(Wx) 
; ram_0353                              = $0353 ; 0000C3(Wx) 
; ram_0354                              = $0354 ; 0000C3(Wx) 
; ram_0355                              = $0355 ; 0000C3(Wx) 
; ram_0356                              = $0356 ; 0000C3(Wx) 
; ram_0357                              = $0357 ; 0000C3(Wx) 
; ram_0358                              = $0358 ; 0000C3(Wx) 
; ram_0359                              = $0359 ; 0000C3(Wx) 
; ram_035A                              = $035A ; 0000C3(Wx) 
; ram_035B                              = $035B ; 0000C3(Wx) 
; ram_035C                              = $035C ; 0000C3(Wx) 
; ram_035D                              = $035D ; 0000C3(Wx) 
; ram_035E                              = $035E ; 0000C3(Wx) 
; ram_035F                              = $035F ; 0000C3(Wx) 
; ram_0360                              = $0360 ; 0000C3(Wx) 
; ram_0361                              = $0361 ; 0000C3(Wx) 
; ram_0362                              = $0362 ; 0000C3(Wx) 
; ram_0363                              = $0363 ; 0000C3(Wx) 
; ram_0364                              = $0364 ; 0000C3(Wx) 
; ram_0365                              = $0365 ; 0000C3(Wx) 
; ram_0366                              = $0366 ; 0000C3(Wx) 
; ram_0367                              = $0367 ; 0000C3(Wx) 
; ram_0368                              = $0368 ; 0000C3(Wx) 
; ram_0369                              = $0369 ; 0000C3(Wx) 
; ram_036A                              = $036A ; 0000C3(Wx) 
; ram_036B                              = $036B ; 0000C3(Wx) 
; ram_036C                              = $036C ; 0000C3(Wx) 
; ram_036D                              = $036D ; 0000C3(Wx) 
; ram_036E                              = $036E ; 0000C3(Wx) 
; ram_036F                              = $036F ; 0000C3(Wx) 
; ram_0370                              = $0370 ; 0000C3(Wx) 
; ram_0371                              = $0371 ; 0000C3(Wx) 
; ram_0372                              = $0372 ; 0000C3(Wx) 
; ram_0373                              = $0373 ; 0000C3(Wx) 
; ram_0374                              = $0374 ; 0000C3(Wx) 
; ram_0375                              = $0375 ; 0000C3(Wx) 
; ram_0376                              = $0376 ; 0000C3(Wx) 
; ram_0377                              = $0377 ; 0000C3(Wx) 
; ram_0378                              = $0378 ; 0000C3(Wx) 
; ram_0379                              = $0379 ; 0000C3(Wx) 
; ram_037A                              = $037A ; 0000C3(Wx) 
; ram_037B                              = $037B ; 0000C3(Wx) 
; ram_037C                              = $037C ; 0000C3(Wx) 
; ram_037D                              = $037D ; 0000C3(Wx) 
; ram_037E                              = $037E ; 0000C3(Wx) 
; ram_037F                              = $037F ; 0000C3(Wx) 
; ram_0380                              = $0380 ; 0000C3(Wx) 
; ram_0381                              = $0381 ; 0000C3(Wx) 
; ram_0382                              = $0382 ; 0000C3(Wx) 
; ram_0383                              = $0383 ; 0000C3(Wx) 
; ram_0384                              = $0384 ; 0000C3(Wx) 
; ram_0385                              = $0385 ; 0000C3(Wx) 
; ram_0386                              = $0386 ; 0000C3(Wx) 
; ram_0387                              = $0387 ; 0000C3(Wx) 
; ram_0388                              = $0388 ; 0000C3(Wx) 
; ram_0389                              = $0389 ; 0000C3(Wx) 
; ram_038A                              = $038A ; 0000C3(Wx) 
; ram_038B                              = $038B ; 0000C3(Wx) 
; ram_038C                              = $038C ; 0000C3(Wx) 
; ram_038D                              = $038D ; 0000C3(Wx) 
; ram_038E                              = $038E ; 0000C3(Wx) 
; ram_038F                              = $038F ; 0000C3(Wx) 
; ram_0390                              = $0390 ; 0000C3(Wx) 
; ram_0391                              = $0391 ; 0000C3(Wx) 
; ram_0392                              = $0392 ; 0000C3(Wx) 
; ram_0393                              = $0393 ; 0000C3(Wx) 
; ram_0394                              = $0394 ; 0000C3(Wx) 
; ram_0395                              = $0395 ; 0000C3(Wx) 
; ram_0396                              = $0396 ; 0000C3(Wx) 
; ram_0397                              = $0397 ; 0000C3(Wx) 
; ram_0398                              = $0398 ; 0000C3(Wx) 
; ram_0399                              = $0399 ; 0000C3(Wx) 
; ram_039A                              = $039A ; 0000C3(Wx) 
; ram_039B                              = $039B ; 0000C3(Wx) 
; ram_039C                              = $039C ; 0000C3(Wx) 
; ram_039D                              = $039D ; 0000C3(Wx) 
; ram_039E                              = $039E ; 0000C3(Wx) 
; ram_039F                              = $039F ; 0000C3(Wx) 
; ram_03A0                              = $03A0 ; 0000C3(Wx) 
; ram_03A1                              = $03A1 ; 0000C3(Wx) 
; ram_03A2                              = $03A2 ; 0000C3(Wx) 
; ram_03A3                              = $03A3 ; 0000C3(Wx) 
; ram_03A4                              = $03A4 ; 0000C3(Wx) 
; ram_03A5                              = $03A5 ; 0000C3(Wx) 
; ram_03A6                              = $03A6 ; 0000C3(Wx) 
; ram_03A7                              = $03A7 ; 0000C3(Wx) 
; ram_03A8                              = $03A8 ; 0000C3(Wx) 
; ram_03A9                              = $03A9 ; 0000C3(Wx) 
; ram_03AA                              = $03AA ; 0000C3(Wx) 
; ram_03AB                              = $03AB ; 0000C3(Wx) 
; ram_03AC                              = $03AC ; 0000C3(Wx) 
; ram_03AD                              = $03AD ; 0000C3(Wx) 
; ram_03AE                              = $03AE ; 0000C3(Wx) 
; ram_03AF                              = $03AF ; 0000C3(Wx) 
; ram_03B0                              = $03B0 ; 0000C3(Wx) 
; ram_03B1                              = $03B1 ; 0000C3(Wx) 
; ram_03B2                              = $03B2 ; 0000C3(Wx) 
; ram_03B3                              = $03B3 ; 0000C3(Wx) 
; ram_03B4                              = $03B4 ; 0000C3(Wx) 
; ram_03B5                              = $03B5 ; 0000C3(Wx) 
; ram_03B6                              = $03B6 ; 0000C3(Wx) 
; ram_03B7                              = $03B7 ; 0000C3(Wx) 
; ram_03B8                              = $03B8 ; 0000C3(Wx) 
; ram_03B9                              = $03B9 ; 0000C3(Wx) 
; ram_03BA                              = $03BA ; 0000C3(Wx) 
; ram_03BB                              = $03BB ; 0000C3(Wx) 
; ram_03BC                              = $03BC ; 0000C3(Wx) 
; ram_03BD                              = $03BD ; 0000C3(Wx) 
; ram_03BE                              = $03BE ; 0000C3(Wx) 
; ram_03BF                              = $03BF ; 0000C3(Wx) 
; ram_03C0                              = $03C0 ; 0000C3(Wx) 
; ram_03C1                              = $03C1 ; 0000C3(Wx) 
; ram_03C2                              = $03C2 ; 0000C3(Wx) 
; ram_03C3                              = $03C3 ; 0000C3(Wx) 
; ram_03C4                              = $03C4 ; 0000C3(Wx) 
; ram_03C5                              = $03C5 ; 0000C3(Wx) 
; ram_03C6                              = $03C6 ; 0000C3(Wx) 
; ram_03C7                              = $03C7 ; 0000C3(Wx) 
; ram_03C8                              = $03C8 ; 0000C3(Wx) 
; ram_03C9                              = $03C9 ; 0000C3(Wx) 
; ram_03CA                              = $03CA ; 0000C3(Wx) 
; ram_03CB                              = $03CB ; 0000C3(Wx) 
; ram_03CC                              = $03CC ; 0000C3(Wx) 
; ram_03CD                              = $03CD ; 0000C3(Wx) 
; ram_03CE                              = $03CE ; 0000C3(Wx) 
; ram_03CF                              = $03CF ; 0000C3(Wx) 
; ram_03D0                              = $03D0 ; 0000C3(Wx) 
; ram_03D1                              = $03D1 ; 0000C3(Wx) 
; ram_03D2                              = $03D2 ; 0000C3(Wx) 
; ram_03D3                              = $03D3 ; 0000C3(Wx) 
; ram_03D4                              = $03D4 ; 0000C3(Wx) 
; ram_03D5                              = $03D5 ; 0000C3(Wx) 
; ram_03D6                              = $03D6 ; 0000C3(Wx) 
; ram_03D7                              = $03D7 ; 0000C3(Wx) 
; ram_03D8                              = $03D8 ; 0000C3(Wx) 
; ram_03D9                              = $03D9 ; 0000C3(Wx) 
; ram_03DA                              = $03DA ; 0000C3(Wx) 
; ram_03DB                              = $03DB ; 0000C3(Wx) 
; ram_03DC                              = $03DC ; 0000C3(Wx) 
; ram_03DD                              = $03DD ; 0000C3(Wx) 
; ram_03DE                              = $03DE ; 0000C3(Wx) 
; ram_03DF                              = $03DF ; 0000C3(Wx) 
; ram_03E0                              = $03E0 ; 0000C3(Wx) 
; ram_03E1                              = $03E1 ; 0000C3(Wx) 
; ram_03E2                              = $03E2 ; 0000C3(Wx) 
; ram_03E3                              = $03E3 ; 0000C3(Wx) 
; ram_03E4                              = $03E4 ; 0000C3(Wx) 
; ram_03E5                              = $03E5 ; 0000C3(Wx) 
; ram_03E6                              = $03E6 ; 0000C3(Wx) 
; ram_03E7                              = $03E7 ; 0000C3(Wx) 
; ram_03E8                              = $03E8 ; 0000C3(Wx) 
; ram_03E9                              = $03E9 ; 0000C3(Wx) 
; ram_03EA                              = $03EA ; 0000C3(Wx) 
; ram_03EB                              = $03EB ; 0000C3(Wx) 
; ram_03EC                              = $03EC ; 0000C3(Wx) 
; ram_03ED                              = $03ED ; 0000C3(Wx) 
; ram_03EE                              = $03EE ; 0000C3(Wx) 
; ram_03EF                              = $03EF ; 0000C3(Wx) 
; ram_03F0                              = $03F0 ; 0000C3(Wx) 
; ram_03F1                              = $03F1 ; 0000C3(Wx) 
; ram_03F2                              = $03F2 ; 0000C3(Wx) 
; ram_03F3                              = $03F3 ; 0000C3(Wx) 
; ram_03F4                              = $03F4 ; 0000C3(Wx) 
; ram_03F5                              = $03F5 ; 0000C3(Wx) 
; ram_03F6                              = $03F6 ; 0000C3(Wx) 
; ram_03F7                              = $03F7 ; 0000C3(Wx) 
; ram_03F8                              = $03F8 ; 0000C3(Wx) 
; ram_03F9                              = $03F9 ; 0000C3(Wx) 
; ram_03FA                              = $03FA ; 0000C3(Wx) 
; ram_03FB                              = $03FB ; 0000C3(Wx) 
; ram_03FC                              = $03FC ; 0000C3(Wx) 
; ram_03FD                              = $03FD ; 0000C3(Wx) 
; ram_03FE                              = $03FE ; 0000C3(Wx) 
; ram_03FF                              = $03FF ; 0000C3(Wx) 



; something to do with round constructor unused function
ram_0400_data                           = $0400 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
    ram_full_copy_oam                       = $0400 ; a full copy of ram_oam (0700-07FF, unlike ram_copy_oam), used during pause
; ram_0401                              = $0401 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0402                              = $0402 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0403                              = $0403 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0404                              = $0404 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0405                              = $0405 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0406                              = $0406 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0407                              = $0407 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0408                              = $0408 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0409                              = $0409 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_040A                              = $040A ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_040B                              = $040B ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_040C                              = $040C ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_040D                              = $040D ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_040E                              = $040E ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_040F                              = $040F ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0410                              = $0410 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0411                              = $0411 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0412                              = $0412 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0413                              = $0413 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0414                              = $0414 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0415                              = $0415 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0416                              = $0416 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0417                              = $0417 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0418                              = $0418 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0419                              = $0419 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_041A                              = $041A ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_041B                              = $041B ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_041C                              = $041C ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_041D                              = $041D ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_041E                              = $041E ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_041F                              = $041F ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0420                              = $0420 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0421                              = $0421 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0422                              = $0422 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0423                              = $0423 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0424                              = $0424 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0425                              = $0425 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0426                              = $0426 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0427                              = $0427 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0428                              = $0428 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0429                              = $0429 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_042A                              = $042A ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_042B                              = $042B ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_042C                              = $042C ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_042D                              = $042D ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_042E                              = $042E ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_042F                              = $042F ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0430                              = $0430 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0431                              = $0431 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0432                              = $0432 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0433                              = $0433 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0434                              = $0434 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0435                              = $0435 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0436                              = $0436 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0437                              = $0437 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0438                              = $0438 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0439                              = $0439 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_043A                              = $043A ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_043B                              = $043B ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_043C                              = $043C ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_043D                              = $043D ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_043E                              = $043E ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_043F                              = $043F ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0440                              = $0440 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0441                              = $0441 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0442                              = $0442 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0443                              = $0443 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0444                              = $0444 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0445                              = $0445 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0446                              = $0446 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0447                              = $0447 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0448                              = $0448 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0449                              = $0449 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_044A                              = $044A ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_044B                              = $044B ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_044C                              = $044C ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_044D                              = $044D ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_044E                              = $044E ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_044F                              = $044F ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0450                              = $0450 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0451                              = $0451 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0452                              = $0452 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0453                              = $0453 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0454                              = $0454 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0455                              = $0455 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0456                              = $0456 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0457                              = $0457 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0458                              = $0458 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0459                              = $0459 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_045A                              = $045A ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_045B                              = $045B ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_045C                              = $045C ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_045D                              = $045D ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_045E                              = $045E ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_045F                              = $045F ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0460                              = $0460 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0461                              = $0461 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0462                              = $0462 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0463                              = $0463 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0464                              = $0464 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0465                              = $0465 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0466                              = $0466 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0467                              = $0467 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0468                              = $0468 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0469                              = $0469 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_046A                              = $046A ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_046B                              = $046B ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_046C                              = $046C ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_046D                              = $046D ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_046E                              = $046E ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_046F                              = $046F ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0470                              = $0470 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0471                              = $0471 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0472                              = $0472 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0473                              = $0473 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0474                              = $0474 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0475                              = $0475 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0476                              = $0476 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0477                              = $0477 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0478                              = $0478 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0479                              = $0479 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_047A                              = $047A ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_047B                              = $047B ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_047C                              = $047C ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_047D                              = $047D ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_047E                              = $047E ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_047F                              = $047F ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0480                              = $0480 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0481                              = $0481 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0482                              = $0482 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0483                              = $0483 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0484                              = $0484 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0485                              = $0485 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0486                              = $0486 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0487                              = $0487 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0488                              = $0488 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0489                              = $0489 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_048A                              = $048A ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_048B                              = $048B ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_048C                              = $048C ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_048D                              = $048D ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_048E                              = $048E ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_048F                              = $048F ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0490                              = $0490 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0491                              = $0491 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0492                              = $0492 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0493                              = $0493 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0494                              = $0494 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0495                              = $0495 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0496                              = $0496 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0497                              = $0497 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0498                              = $0498 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_0499                              = $0499 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_049A                              = $049A ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_049B                              = $049B ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_049C                              = $049C ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_049D                              = $049D ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_049E                              = $049E ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_049F                              = $049F ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04A0                              = $04A0 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04A1                              = $04A1 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04A2                              = $04A2 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04A3                              = $04A3 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04A4                              = $04A4 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04A5                              = $04A5 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04A6                              = $04A6 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04A7                              = $04A7 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04A8                              = $04A8 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04A9                              = $04A9 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04AA                              = $04AA ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04AB                              = $04AB ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04AC                              = $04AC ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04AD                              = $04AD ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04AE                              = $04AE ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04AF                              = $04AF ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04B0                              = $04B0 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04B1                              = $04B1 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04B2                              = $04B2 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04B3                              = $04B3 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04B4                              = $04B4 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04B5                              = $04B5 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04B6                              = $04B6 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04B7                              = $04B7 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04B8                              = $04B8 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04B9                              = $04B9 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04BA                              = $04BA ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04BB                              = $04BB ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04BC                              = $04BC ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04BD                              = $04BD ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04BE                              = $04BE ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04BF                              = $04BF ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04C0                              = $04C0 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04C1                              = $04C1 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04C2                              = $04C2 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04C3                              = $04C3 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04C4                              = $04C4 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04C5                              = $04C5 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04C6                              = $04C6 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04C7                              = $04C7 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04C8                              = $04C8 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04C9                              = $04C9 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04CA                              = $04CA ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04CB                              = $04CB ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04CC                              = $04CC ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04CD                              = $04CD ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04CE                              = $04CE ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04CF                              = $04CF ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04D0                              = $04D0 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04D1                              = $04D1 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04D2                              = $04D2 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04D3                              = $04D3 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04D4                              = $04D4 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04D5                              = $04D5 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04D6                              = $04D6 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04D7                              = $04D7 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04D8                              = $04D8 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04D9                              = $04D9 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04DA                              = $04DA ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04DB                              = $04DB ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04DC                              = $04DC ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04DD                              = $04DD ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04DE                              = $04DE ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04DF                              = $04DF ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04E0                              = $04E0 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04E1                              = $04E1 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04E2                              = $04E2 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04E3                              = $04E3 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04E4                              = $04E4 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04E5                              = $04E5 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04E6                              = $04E6 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04E7                              = $04E7 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04E8                              = $04E8 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04E9                              = $04E9 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04EA                              = $04EA ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04EB                              = $04EB ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04EC                              = $04EC ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04ED                              = $04ED ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04EE                              = $04EE ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04EF                              = $04EF ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04F0                              = $04F0 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04F1                              = $04F1 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04F2                              = $04F2 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04F3                              = $04F3 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04F4                              = $04F4 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04F5                              = $04F5 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04F6                              = $04F6 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04F7                              = $04F7 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04F8                              = $04F8 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04F9                              = $04F9 ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04FA                              = $04FA ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04FB                              = $04FB ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04FC                              = $04FC ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04FD                              = $04FD ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04FE                              = $04FE ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 
; ram_04FF                              = $04FF ; 0000C6(Wx) 00059D(Wx) 0005BB(Rx) 



; 
ram_0500_round_data                     = $0500 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0501                              = $0501 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0502                              = $0502 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0503                              = $0503 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0504                              = $0504 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0505                              = $0505 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0506                              = $0506 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0507                              = $0507 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0508                              = $0508 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0509                              = $0509 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_050A                              = $050A ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_050B                              = $050B ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_050C                              = $050C ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_050D                              = $050D ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_050E                              = $050E ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_050F                              = $050F ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0510                              = $0510 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0511                              = $0511 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0512                              = $0512 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0513                              = $0513 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0514                              = $0514 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0515                              = $0515 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0516                              = $0516 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0517                              = $0517 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0518                              = $0518 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0519                              = $0519 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_051A                              = $051A ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_051B                              = $051B ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_051C                              = $051C ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_051D                              = $051D ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_051E                              = $051E ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_051F                              = $051F ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0520                              = $0520 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0521                              = $0521 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0522                              = $0522 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0523                              = $0523 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0524                              = $0524 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0525                              = $0525 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0526                              = $0526 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0527                              = $0527 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0528                              = $0528 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0529                              = $0529 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_052A                              = $052A ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_052B                              = $052B ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_052C                              = $052C ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_052D                              = $052D ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_052E                              = $052E ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_052F                              = $052F ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0530                              = $0530 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0531                              = $0531 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0532                              = $0532 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0533                              = $0533 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0534                              = $0534 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0535                              = $0535 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0536                              = $0536 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0537                              = $0537 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0538                              = $0538 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0539                              = $0539 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_053A                              = $053A ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_053B                              = $053B ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_053C                              = $053C ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_053D                              = $053D ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_053E                              = $053E ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_053F                              = $053F ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0540                              = $0540 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0541                              = $0541 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0542                              = $0542 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0543                              = $0543 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0544                              = $0544 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0545                              = $0545 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0546                              = $0546 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0547                              = $0547 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0548                              = $0548 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0549                              = $0549 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_054A                              = $054A ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_054B                              = $054B ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_054C                              = $054C ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_054D                              = $054D ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_054E                              = $054E ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_054F                              = $054F ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0550                              = $0550 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0551                              = $0551 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0552                              = $0552 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0553                              = $0553 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0554                              = $0554 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0555                              = $0555 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0556                              = $0556 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0557                              = $0557 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0558                              = $0558 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0559                              = $0559 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_055A                              = $055A ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_055B                              = $055B ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_055C                              = $055C ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_055D                              = $055D ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_055E                              = $055E ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_055F                              = $055F ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0560                              = $0560 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0561                              = $0561 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0562                              = $0562 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0563                              = $0563 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0564                              = $0564 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0565                              = $0565 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0566                              = $0566 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0567                              = $0567 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0568                              = $0568 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0569                              = $0569 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_056A                              = $056A ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_056B                              = $056B ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_056C                              = $056C ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_056D                              = $056D ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_056E                              = $056E ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_056F                              = $056F ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0570                              = $0570 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0571                              = $0571 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0572                              = $0572 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0573                              = $0573 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0574                              = $0574 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0575                              = $0575 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0576                              = $0576 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0577                              = $0577 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0578                              = $0578 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0579                              = $0579 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_057A                              = $057A ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_057B                              = $057B ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_057C                              = $057C ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_057D                              = $057D ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_057E                              = $057E ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_057F                              = $057F ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0580                              = $0580 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0581                              = $0581 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0582                              = $0582 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0583                              = $0583 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0584                              = $0584 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0585                              = $0585 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0586                              = $0586 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0587                              = $0587 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0588                              = $0588 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0589                              = $0589 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_058A                              = $058A ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_058B                              = $058B ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_058C                              = $058C ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_058D                              = $058D ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_058E                              = $058E ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_058F                              = $058F ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0590                              = $0590 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0591                              = $0591 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0592                              = $0592 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0593                              = $0593 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0594                              = $0594 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0595                              = $0595 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0596                              = $0596 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0597                              = $0597 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0598                              = $0598 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_0599                              = $0599 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_059A                              = $059A ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_059B                              = $059B ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_059C                              = $059C ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_059D                              = $059D ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_059E                              = $059E ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_059F                              = $059F ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05A0                              = $05A0 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05A1                              = $05A1 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05A2                              = $05A2 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05A3                              = $05A3 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05A4                              = $05A4 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05A5                              = $05A5 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05A6                              = $05A6 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05A7                              = $05A7 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05A8                              = $05A8 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05A9                              = $05A9 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05AA                              = $05AA ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05AB                              = $05AB ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05AC                              = $05AC ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05AD                              = $05AD ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05AE                              = $05AE ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05AF                              = $05AF ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05B0                              = $05B0 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05B1                              = $05B1 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05B2                              = $05B2 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05B3                              = $05B3 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05B4                              = $05B4 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05B5                              = $05B5 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05B6                              = $05B6 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05B7                              = $05B7 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05B8                              = $05B8 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05B9                              = $05B9 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05BA                              = $05BA ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05BB                              = $05BB ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05BC                              = $05BC ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05BD                              = $05BD ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05BE                              = $05BE ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05BF                              = $05BF ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05C0                              = $05C0 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05C1                              = $05C1 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05C2                              = $05C2 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05C3                              = $05C3 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05C4                              = $05C4 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05C5                              = $05C5 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05C6                              = $05C6 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05C7                              = $05C7 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05C8                              = $05C8 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05C9                              = $05C9 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05CA                              = $05CA ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05CB                              = $05CB ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05CC                              = $05CC ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05CD                              = $05CD ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05CE                              = $05CE ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05CF                              = $05CF ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05D0                              = $05D0 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05D1                              = $05D1 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05D2                              = $05D2 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05D3                              = $05D3 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05D4                              = $05D4 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05D5                              = $05D5 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05D6                              = $05D6 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05D7                              = $05D7 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05D8                              = $05D8 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05D9                              = $05D9 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05DA                              = $05DA ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05DB                              = $05DB ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05DC                              = $05DC ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05DD                              = $05DD ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05DE                              = $05DE ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05DF                              = $05DF ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05E0                              = $05E0 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05E1                              = $05E1 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05E2                              = $05E2 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05E3                              = $05E3 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05E4                              = $05E4 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05E5                              = $05E5 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05E6                              = $05E6 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05E7                              = $05E7 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05E8                              = $05E8 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05E9                              = $05E9 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05EA                              = $05EA ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05EB                              = $05EB ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05EC                              = $05EC ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05ED                              = $05ED ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05EE                              = $05EE ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05EF                              = $05EF ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05F0                              = $05F0 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05F1                              = $05F1 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05F2                              = $05F2 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05F3                              = $05F3 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05F4                              = $05F4 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05F5                              = $05F5 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05F6                              = $05F6 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05F7                              = $05F7 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05F8                              = $05F8 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05F9                              = $05F9 ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05FA                              = $05FA ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05FB                              = $05FB ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05FC                              = $05FC ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05FD                              = $05FD ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05FE                              = $05FE ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 
; ram_05FF                              = $05FF ; 0000B7(Wx) 0001DE(Wx) 00298A(Rx) 002A2B(Wx) 



; 
ram_0600_round_data                     = $0600 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0601                              = $0601 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0602                              = $0602 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0603                              = $0603 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0604                              = $0604 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0605                              = $0605 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0606                              = $0606 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0607                              = $0607 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0608                              = $0608 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0609                              = $0609 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_060A                              = $060A ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_060B                              = $060B ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_060C                              = $060C ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_060D                              = $060D ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_060E                              = $060E ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_060F                              = $060F ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0610                              = $0610 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0611                              = $0611 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0612                              = $0612 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0613                              = $0613 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0614                              = $0614 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0615                              = $0615 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0616                              = $0616 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0617                              = $0617 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0618                              = $0618 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0619                              = $0619 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_061A                              = $061A ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_061B                              = $061B ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_061C                              = $061C ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_061D                              = $061D ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_061E                              = $061E ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_061F                              = $061F ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0620                              = $0620 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0621                              = $0621 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0622                              = $0622 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0623                              = $0623 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0624                              = $0624 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00209C(Ri) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0625                              = $0625 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00209C(Ri) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0626                              = $0626 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00209C(Ri) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0627                              = $0627 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00209C(Ri) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0628                              = $0628 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00209C(Ri) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0629                              = $0629 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00209C(Ri) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_062A                              = $062A ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_062B                              = $062B ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_062C                              = $062C ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_062D                              = $062D ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_062E                              = $062E ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_062F                              = $062F ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0630                              = $0630 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0631                              = $0631 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0632                              = $0632 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0633                              = $0633 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0634                              = $0634 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0635                              = $0635 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0636                              = $0636 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0637                              = $0637 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0638                              = $0638 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0639                              = $0639 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_063A                              = $063A ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_063B                              = $063B ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_063C                              = $063C ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_063D                              = $063D ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_063E                              = $063E ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_063F                              = $063F ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0025C5(Rx) 00298D(Wx) 002A28(Rx) 
; ram_0640                              = $0640 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 002A28(Rx) 
; ram_0641                              = $0641 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 002A28(Rx) 
; ram_0642                              = $0642 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0022C8(W)  0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 002A28(Rx) 
; ram_0643                              = $0643 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0022CB(W)  0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 002A28(Rx) 
; ram_0644                              = $0644 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0022CE(W)  0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 002A28(Rx) 
; ram_0645                              = $0645 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 002A28(Rx) 
; ram_0646                              = $0646 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 002A28(Rx) 
; ram_0647                              = $0647 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 002A28(Rx) 
; ram_0648                              = $0648 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 002A28(Rx) 
; ram_0649                              = $0649 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 002A28(Rx) 
; ram_064A                              = $064A ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 002A28(Rx) 
; ram_064B                              = $064B ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 002A28(Rx) 
; ram_064C                              = $064C ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 002A28(Rx) 
; ram_064D                              = $064D ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 002A28(Rx) 
; ram_064E                              = $064E ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 002A28(Rx) 
; ram_064F                              = $064F ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 002A28(Rx) 
; ram_0650                              = $0650 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_0651                              = $0651 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_0652                              = $0652 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0022D1(W)  0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_0653                              = $0653 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0022D4(W)  0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_0654                              = $0654 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0020DC(Ri) 0022D7(W)  0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_0655                              = $0655 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0656                              = $0656 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0657                              = $0657 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0658                              = $0658 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0659                              = $0659 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_065A                              = $065A ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_065B                              = $065B ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_065C                              = $065C ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020DC(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_065D                              = $065D ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020DC(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_065E                              = $065E ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020DC(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_065F                              = $065F ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_0660                              = $0660 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_0661                              = $0661 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0662                              = $0662 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0013A1(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0663                              = $0663 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_0664                              = $0664 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_0665                              = $0665 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0666                              = $0666 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0667                              = $0667 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00135B(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0668                              = $0668 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0669                              = $0669 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_066A                              = $066A ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_066B                              = $066B ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_066C                              = $066C ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00135B(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_066D                              = $066D ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_066E                              = $066E ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001503(Ri) 002063(Ri) 00209C(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_066F                              = $066F ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001503(Ri) 002063(Ri) 00209C(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_0670                              = $0670 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_0671                              = $0671 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0672                              = $0672 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0013A1(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0673                              = $0673 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0674                              = $0674 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0013A1(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0675                              = $0675 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0676                              = $0676 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0677                              = $0677 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0678                              = $0678 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0679                              = $0679 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_067A                              = $067A ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_067B                              = $067B ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_067C                              = $067C ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_067D                              = $067D ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_067E                              = $067E ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_067F                              = $067F ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_0680                              = $0680 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_0681                              = $0681 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_0682                              = $0682 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0013A1(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0683                              = $0683 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0684                              = $0684 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0685                              = $0685 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0686                              = $0686 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0687                              = $0687 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0688                              = $0688 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0689                              = $0689 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_068A                              = $068A ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_068B                              = $068B ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_068C                              = $068C ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_068D                              = $068D ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_068E                              = $068E ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_068F                              = $068F ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_0690                              = $0690 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_0691                              = $0691 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_0692                              = $0692 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_0693                              = $0693 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0694                              = $0694 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0695                              = $0695 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0696                              = $0696 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0697                              = $0697 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0698                              = $0698 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_0699                              = $0699 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_069A                              = $069A ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_069B                              = $069B ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_069C                              = $069C ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_069D                              = $069D ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_069E                              = $069E ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_069F                              = $069F ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020DC(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06A0                              = $06A0 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06A1                              = $06A1 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06A2                              = $06A2 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06A3                              = $06A3 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06A4                              = $06A4 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06A5                              = $06A5 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06A6                              = $06A6 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06A7                              = $06A7 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06A8                              = $06A8 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06A9                              = $06A9 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06AA                              = $06AA ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06AB                              = $06AB ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06AC                              = $06AC ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06AD                              = $06AD ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06AE                              = $06AE ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00135B(Ri) 0013A1(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020DC(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06AF                              = $06AF ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001503(Ri) 002063(Ri) 00209C(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06B0                              = $06B0 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06B1                              = $06B1 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06B2                              = $06B2 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06B3                              = $06B3 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06B4                              = $06B4 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06B5                              = $06B5 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06B6                              = $06B6 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06B7                              = $06B7 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06B8                              = $06B8 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06B9                              = $06B9 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06BA                              = $06BA ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06BB                              = $06BB ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0013A1(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06BC                              = $06BC ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06BD                              = $06BD ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06BE                              = $06BE ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020DC(Ri) 0025C5(Rx) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06BF                              = $06BF ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020DC(Ri) 0025C5(Rx) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06C0                              = $06C0 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06C1                              = $06C1 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06C2                              = $06C2 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06C3                              = $06C3 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06C4                              = $06C4 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06C5                              = $06C5 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06C6                              = $06C6 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06C7                              = $06C7 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06C8                              = $06C8 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06C9                              = $06C9 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06CA                              = $06CA ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06CB                              = $06CB ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06CC                              = $06CC ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06CD                              = $06CD ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06CE                              = $06CE ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06CF                              = $06CF ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0025C5(Rx) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06D0                              = $06D0 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06D1                              = $06D1 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06D2                              = $06D2 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06D3                              = $06D3 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06D4                              = $06D4 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06D5                              = $06D5 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06D6                              = $06D6 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06D7                              = $06D7 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06D8                              = $06D8 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0013A1(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06D9                              = $06D9 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06DA                              = $06DA ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06DB                              = $06DB ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06DC                              = $06DC ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06DD                              = $06DD ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06DE                              = $06DE ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 002063(Ri) 00209C(Ri) 0020CC(Ri) 0020D4(Ri) 0020DC(Ri) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06DF                              = $06DF ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020CC(Ri) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06E0                              = $06E0 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06E1                              = $06E1 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020D4(Ri) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06E2                              = $06E2 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020D4(Ri) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06E3                              = $06E3 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0020DC(Ri) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06E4                              = $06E4 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0020DC(Ri) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06E5                              = $06E5 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06E6                              = $06E6 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06E7                              = $06E7 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06E8                              = $06E8 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0020DC(Ri) 0022B5(Ri) 0022BB(Wi) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06E9                              = $06E9 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0020DC(Ri) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06EA                              = $06EA ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0020DC(Ri) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06EB                              = $06EB ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0020DC(Ri) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06EC                              = $06EC ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0020DC(Ri) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06ED                              = $06ED ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020D4(Ri) 0020DC(Ri) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06EE                              = $06EE ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001065(Wx) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0020DC(Ri) 00266E(Ri) 002675(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06EF                              = $06EF ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0020DC(Ri) 002684(Ri) 00268B(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06F0                              = $06F0 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06F1                              = $06F1 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0014A5(Ri) 002063(Ri) 00209C(Ri) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06F2                              = $06F2 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 002063(Ri) 00209C(Ri) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06F3                              = $06F3 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06F4                              = $06F4 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06F5                              = $06F5 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06F6                              = $06F6 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06F7                              = $06F7 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06F8                              = $06F8 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0022B5(Ri) 0022BB(Wi) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06F9                              = $06F9 ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06FA                              = $06FA ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00135B(Ri) 0013A1(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06FB                              = $06FB ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00135B(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06FC                              = $06FC ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00135B(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06FD                              = $06FD ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00135B(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 
; ram_06FE                              = $06FE ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 00135B(Ri) 0014A5(Ri) 001503(Ri) 002063(Ri) 00209C(Ri) 0026B0(Ri) 0026B7(Wi) 00298D(Wx) 0029CB(Wy) 002A1D(Wy) 002A28(Rx) 
; ram_06FF                              = $06FF ; 0000C9(Wx) 0001DB(Rx) 001050(Rx) 001503(Ri) 002063(Ri) 00209C(Ri) 00269A(Ri) 0026A1(Wi) 00298D(Wx) 0029CB(Wy) 002A28(Rx) 



; 0700-07FF (100) OAM sprites
ram_oam                                 = $0700 ; for common links
ram_spr_Y                               = $0700 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000A54(R)  000A9C(R)  0011A1(Wy) 002399(Wx) 002D8C(W)  002DD9(W)  002FC6(Wi) 
ram_spr_T                               = $0701 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000A6A(R)  0011B1(Wy) 002399(Wx) 002DDE(W)  002FC6(Wi) 
ram_spr_A                               = $0702 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000AAF(R)  0011C7(Wy) 002399(Wx) 002DE3(W)  002FC6(Wi) 
ram_spr_X                               = $0703 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000A32(R)  000A91(R)  0011D4(Wy) 002399(Wx) 002DE8(W)  002FC6(Wi) 
    ram_player_pos_Y                        = ram_spr_Y + $20 ; 
    ram_player_graphics                     = ram_spr_T + $20 ; 
    ram_player_color                        = ram_spr_A + $20 ; 
    ram_player_pos_X                        = ram_spr_X + $20 ; 
; ram_0704                              = $0704 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011A4(Wy) 002399(Wx) 002FC6(Wi) 
; ram_0705                              = $0705 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B7(Wy) 002399(Wx) 002FC6(Wi) 
; ram_0706                              = $0706 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CA(Wy) 002399(Wx) 002FC6(Wi) 
; ram_0707                              = $0707 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011DD(Wy) 002399(Wx) 002FC6(Wi) 
; ram_0708                              = $0708 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AA(Wy) 002399(Wx) 002FC6(Wi) 
; ram_0709                              = $0709 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011C3(Wy) 002399(Wx) 002FC6(Wi) 
; ram_070A                              = $070A ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CD(Wy) 002399(Wx) 002FC6(Wi) 
; ram_070B                              = $070B ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011E0(Wy) 002399(Wx) 002FC6(Wi) 
; ram_070C                              = $070C ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AD(Wy) 002399(Wx) 002FC6(Wi) 
; ram_070D                              = $070D ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011BD(Wy) 002399(Wx) 002FC6(Wi) 
; ram_070E                              = $070E ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D0(Wy) 002399(Wx) 002FC6(Wi) 
; ram_070F                              = $070F ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D7(Wy) 002399(Wx) 002FC6(Wi) 
; ram_0710                              = $0710 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 00103D(W)  002399(Wx) 002FC6(Wi) 
; ram_0711                              = $0711 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 001044(W)  002399(Wx) 002FC6(Wi) 
; ram_0712                              = $0712 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 00163D(W)  002399(Wx) 002FC6(Wi) 
; ram_0713                              = $0713 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 001033(W)  002399(Wx) 002FC6(Wi) 
; ram_0714                              = $0714 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 001040(W)  002399(Wx) 002FC6(Wi) 
; ram_0715                              = $0715 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 00104A(W)  002399(Wx) 002FC6(Wi) 
; ram_0716                              = $0716 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 001640(W)  002399(Wx) 002FC6(Wi) 
; ram_0717                              = $0717 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 00103A(W)  002399(Wx) 002FC6(Wi) 
; ram_0718                              = $0718 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000D96(W)  000E8B(W)  002399(Wx) 002FC6(Wi) 
; ram_0719                              = $0719 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000D9B(W)  000E8E(W)  002399(Wx) 002FC6(Wi) 
; ram_071A                              = $071A ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000DA0(W)  000E91(W)  002399(Wx) 002FC6(Wi) 
; ram_071B                              = $071B ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000D93(W)  000E94(W)  002399(Wx) 002FC6(Wi) 
; ram_071C                              = $071C ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000B02(W)  000B5A(W)  002399(Wx) 002FC6(Wi) 
; ram_071D                              = $071D ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000B05(W)  000B5D(W)  002399(Wx) 002FC6(Wi) 
; ram_071E                              = $071E ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000B08(W)  000B62(W)  002399(Wx) 002FC6(Wi) 
; ram_071F                              = $071F ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000B0B(W)  000B4F(W)  002399(Wx) 002FC6(Wi) 
; ram_0720                              = $0720 ; 0000CC(Wx) 000156(R)  000170(R)  00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000679(R)  000683(R)  000A10(R)  000AA0(R)  000B19(R)  000B23(R)  000B52(R)  000C0F(R)  000DF7(R)  000FFC(R)  001107(R)  0011A1(Wy) 001323(R)  0013D4(R)  00161E(R)  00166A(R)  001B40(R)  001B51(R)  001C69(R)  001CBA(R)  001CC7(R)  001CD4(R)  001CE7(R)  001CF0(R)  001D2B(R)  001DDD(R)  001DEC(R)  001DFE(R)  001E0B(R)  001E18(R)  001E2B(R)  001E5E(R)  001E74(R)  001EA3(R)  001EBF(R)  001EFC(R)  001F0A(R)  001F52(R)  001F6D(R)  001F83(R)  001FC3(R)  00201C(W)  002897(W)  002FC6(Wi) 
; ram_0721                              = $0721 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000B31(R)  0011B1(Wy) 001C82(R)  001D06(R)  001D5B(R)  001D75(W)  001D83(R)  001D91(R)  001D9F(R)  001E7C(R)  001ED3(R)  001F35(R)  001FAA(R)  001FF9(W)  002031(R)  00206A(R)  002FC6(Wi) 
; ram_0722                              = $0722 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0007FE(W)  0011C7(Wy) 001B22(W)  0028D0(W)  002FC6(Wi) 
; ram_0723                              = $0723 ; 0000CC(Wx) 000153(R)  00016D(R)  00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000680(R)  0009E7(R)  000A95(R)  000B20(R)  000B3C(R)  000B47(R)  000C04(R)  000DEC(R)  000FE4(R)  0010FD(R)  0011D4(Wy) 001336(R)  0013E7(R)  001614(R)  001660(R)  001B46(R)  001C66(R)  001CB7(R)  001CC4(R)  001CD1(R)  001CDE(R)  001CED(R)  001D31(R)  001D44(R)  001DDA(R)  001DE9(R)  001E08(R)  001E15(R)  001E28(R)  001E5B(R)  001E71(R)  001EA0(R)  001EBC(R)  001EF9(R)  001F05(R)  001F4F(R)  001F6A(R)  001F80(R)  001FC0(R)  00200C(W)  00289A(W)  002FC6(Wi) 
; ram_0724                              = $0724 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011A4(Wy) 00201F(W)  0028A2(W)  002FC6(Wi) 
; ram_0725                              = $0725 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B7(Wy) 001FFD(W)  002FC6(Wi) 
; ram_0726                              = $0726 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000801(W)  0011CA(Wy) 001B25(W)  0028D3(W)  002FC6(Wi) 
; ram_0727                              = $0727 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011DD(Wy) 002016(W)  0028A5(W)  002FC6(Wi) 
; ram_0728                              = $0728 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AA(Wy) 002026(W)  0028AD(W)  002FC6(Wi) 
; ram_0729                              = $0729 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011C3(Wy) 002008(W)  002FC6(Wi) 
; ram_072A                              = $072A ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000804(W)  0011CD(Wy) 001B28(W)  0028D6(W)  002FC6(Wi) 
; ram_072B                              = $072B ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011E0(Wy) 002019(W)  0028B0(W)  002FC6(Wi) 
; ram_072C                              = $072C ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AD(Wy) 002029(W)  0028B8(W)  002FC6(Wi) 
; ram_072D                              = $072D ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011BD(Wy) 002003(W)  002FC6(Wi) 
; ram_072E                              = $072E ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000807(W)  0011D0(Wy) 001B2B(W)  0028D9(W)  002FC6(Wi) 
; ram_072F                              = $072F ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D7(Wy) 00200F(W)  0028BB(W)  002FC6(Wi) 
; ram_0730                              = $0730 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000F5A(Wx) 000FB8(Wx) 0011A1(Wy) 002FC6(Wi) 
; ram_0731                              = $0731 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000F60(Wx) 000F8D(Rx) 000F95(Wx) 0011B1(Wy) 002FC6(Wi) 
; ram_0732                              = $0732 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000F66(Wx) 0011C7(Wy) 002FC6(Wi) 
; ram_0733                              = $0733 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000F6C(Wx) 000F9C(Wx) 000F9F(Rx) 000FEC(Rx) 0011D4(Wy) 002FC6(Wi) 
; ram_0734                              = $0734 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000F5A(Wx) 000FB8(Wx) 000FCE(Wx) 001004(Rx) 0011A4(Wy) 002FC6(Wi) 
; ram_0735                              = $0735 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000F60(Wx) 000F8D(Rx) 000F95(Wx) 0011B7(Wy) 002FC6(Wi) 
; ram_0736                              = $0736 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000F66(Wx) 0011CA(Wy) 002FC6(Wi) 
; ram_0737                              = $0737 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000F6C(Wx) 000FA9(Wx) 000FAC(Rx) 000FEC(Rx) 0011DD(Wy) 002FC6(Wi) 
; ram_0738                              = $0738 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000F5A(Wx) 000FB8(Wx) 000FCE(Wx) 001004(Rx) 0011AA(Wy) 002FC6(Wi) 
; ram_0739                              = $0739 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000F60(Wx) 000F8D(Rx) 000F95(Wx) 0011C3(Wy) 002FC6(Wi) 
; ram_073A                              = $073A ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000F66(Wx) 0011CD(Wy) 002FC6(Wi) 
; ram_073B                              = $073B ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000F6C(Wx) 000F9C(Wx) 000F9F(Rx) 000FEC(Rx) 0011E0(Wy) 002FC6(Wi) 
; ram_073C                              = $073C ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000F5A(Wx) 000FB8(Wx) 000FCE(Wx) 001004(Rx) 0011AD(Wy) 002FC6(Wi) 
; ram_073D                              = $073D ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000F60(Wx) 000F8D(Rx) 000F95(Wx) 0011BD(Wy) 002FC6(Wi) 
; ram_073E                              = $073E ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000F66(Wx) 0011D0(Wy) 002FC6(Wi) 
; ram_073F                              = $073F ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000F6C(Wx) 000FA9(Wx) 000FAC(Rx) 000FEC(Rx) 0011D7(Wy) 002FC6(Wi) 
; ram_0740                              = $0740 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011A1(Wy) 0015B4(Ri) 0015E5(Wi) 0016C4(Ri) 00280A(Wi) 002FC6(Wi) 
; ram_0741                              = $0741 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B1(Wy) 0015B4(Ri) 0015E5(Wi) 002843(Wi) 002FC6(Wi) 
; ram_0742                              = $0742 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011C7(Wy) 0015B4(Ri) 0015E5(Wi) 002865(Wi) 002FC6(Wi) 
; ram_0743                              = $0743 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D4(Wy) 0015B4(Ri) 0015E5(Wi) 0016B9(Ri) 00280F(Wi) 002FC6(Wi) 
; ram_0744                              = $0744 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011A4(Wy) 0015B4(Ri) 0015E5(Wi) 002818(Wi) 002FC6(Wi) 
; ram_0745                              = $0745 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B7(Wy) 0015B4(Ri) 0015E5(Wi) 00284B(Wi) 002FC6(Wi) 
; ram_0746                              = $0746 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CA(Wy) 0015B4(Ri) 0015E5(Wi) 002869(Wi) 002FC6(Wi) 
; ram_0747                              = $0747 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011DD(Wy) 0015B4(Ri) 0015E5(Wi) 00281D(Wi) 002FC6(Wi) 
; ram_0748                              = $0748 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AA(Wy) 0015B4(Ri) 0015E5(Wi) 002826(Wi) 002FC6(Wi) 
; ram_0749                              = $0749 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011C3(Wy) 0015B4(Ri) 0015E5(Wi) 002853(Wi) 002FC6(Wi) 
; ram_074A                              = $074A ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CD(Wy) 0015B4(Ri) 0015E5(Wi) 00286D(Wi) 002FC6(Wi) 
; ram_074B                              = $074B ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011E0(Wy) 0015B4(Ri) 0015E5(Wi) 00282B(Wi) 002FC6(Wi) 
; ram_074C                              = $074C ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AD(Wy) 0015B4(Ri) 0015E5(Wi) 002834(Wi) 002FC6(Wi) 
; ram_074D                              = $074D ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011BD(Wy) 0015B4(Ri) 0015E5(Wi) 00285B(Wi) 002FC6(Wi) 
; ram_074E                              = $074E ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D0(Wy) 0015B4(Ri) 0015E5(Wi) 002871(Wi) 002FC6(Wi) 
; ram_074F                              = $074F ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D7(Wy) 0015B4(Ri) 0015E5(Wi) 002839(Wi) 002FC6(Wi) 
; ram_0750                              = $0750 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011A1(Wy) 0015B4(Ri) 0015E5(Wi) 0016C4(Ri) 00280A(Wi) 002FC6(Wi) 
; ram_0751                              = $0751 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B1(Wy) 0015B4(Ri) 0015E5(Wi) 002843(Wi) 002FC6(Wi) 
; ram_0752                              = $0752 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011C7(Wy) 0015B4(Ri) 0015E5(Wi) 002865(Wi) 002FC6(Wi) 
; ram_0753                              = $0753 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D4(Wy) 0015B4(Ri) 0015E5(Wi) 0016B9(Ri) 00280F(Wi) 002FC6(Wi) 
; ram_0754                              = $0754 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011A4(Wy) 0015B4(Ri) 0015E5(Wi) 002818(Wi) 002FC6(Wi) 
; ram_0755                              = $0755 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B7(Wy) 0015B4(Ri) 0015E5(Wi) 00284B(Wi) 002FC6(Wi) 
; ram_0756                              = $0756 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CA(Wy) 0015B4(Ri) 0015E5(Wi) 002869(Wi) 002FC6(Wi) 
; ram_0757                              = $0757 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011DD(Wy) 0015B4(Ri) 0015E5(Wi) 00281D(Wi) 002FC6(Wi) 
; ram_0758                              = $0758 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AA(Wy) 0015B4(Ri) 0015E5(Wi) 002826(Wi) 002FC6(Wi) 
; ram_0759                              = $0759 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011C3(Wy) 0015B4(Ri) 0015E5(Wi) 002853(Wi) 002FC6(Wi) 
; ram_075A                              = $075A ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CD(Wy) 0015B4(Ri) 0015E5(Wi) 00286D(Wi) 002FC6(Wi) 
; ram_075B                              = $075B ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011E0(Wy) 0015B4(Ri) 0015E5(Wi) 00282B(Wi) 002FC6(Wi) 
; ram_075C                              = $075C ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AD(Wy) 0015B4(Ri) 0015E5(Wi) 002834(Wi) 002FC6(Wi) 
; ram_075D                              = $075D ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011BD(Wy) 0015B4(Ri) 0015E5(Wi) 00285B(Wi) 002FC6(Wi) 
; ram_075E                              = $075E ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D0(Wy) 0015B4(Ri) 0015E5(Wi) 002871(Wi) 002FC6(Wi) 
; ram_075F                              = $075F ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D7(Wy) 0015B4(Ri) 0015E5(Wi) 002839(Wi) 002FC6(Wi) 
; ram_0760                              = $0760 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011A1(Wy) 0015B4(Ri) 0015E5(Wi) 0016C4(Ri) 00280A(Wi) 002FC6(Wi) 
; ram_0761                              = $0761 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B1(Wy) 0015B4(Ri) 0015E5(Wi) 002843(Wi) 002FC6(Wi) 
; ram_0762                              = $0762 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011C7(Wy) 0015B4(Ri) 0015E5(Wi) 002865(Wi) 002FC6(Wi) 
; ram_0763                              = $0763 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D4(Wy) 0015B4(Ri) 0015E5(Wi) 0016B9(Ri) 00280F(Wi) 002FC6(Wi) 
; ram_0764                              = $0764 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011A4(Wy) 0015B4(Ri) 0015E5(Wi) 002818(Wi) 002FC6(Wi) 
; ram_0765                              = $0765 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B7(Wy) 0015B4(Ri) 0015E5(Wi) 00284B(Wi) 002FC6(Wi) 
; ram_0766                              = $0766 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CA(Wy) 0015B4(Ri) 0015E5(Wi) 002869(Wi) 002FC6(Wi) 
; ram_0767                              = $0767 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011DD(Wy) 0015B4(Ri) 0015E5(Wi) 00281D(Wi) 002FC6(Wi) 
; ram_0768                              = $0768 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AA(Wy) 0015B4(Ri) 0015E5(Wi) 002826(Wi) 002FC6(Wi) 
; ram_0769                              = $0769 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011C3(Wy) 0015B4(Ri) 0015E5(Wi) 002853(Wi) 002FC6(Wi) 
; ram_076A                              = $076A ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CD(Wy) 0015B4(Ri) 0015E5(Wi) 00286D(Wi) 002FC6(Wi) 
; ram_076B                              = $076B ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011E0(Wy) 0015B4(Ri) 0015E5(Wi) 00282B(Wi) 002FC6(Wi) 
; ram_076C                              = $076C ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AD(Wy) 0015B4(Ri) 0015E5(Wi) 002834(Wi) 002FC6(Wi) 
; ram_076D                              = $076D ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011BD(Wy) 0015B4(Ri) 0015E5(Wi) 00285B(Wi) 002FC6(Wi) 
; ram_076E                              = $076E ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D0(Wy) 0015B4(Ri) 0015E5(Wi) 002871(Wi) 002FC6(Wi) 
; ram_076F                              = $076F ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D7(Wy) 0015B4(Ri) 0015E5(Wi) 002839(Wi) 002FC6(Wi) 
; ram_0770                              = $0770 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011A1(Wy) 002FC6(Wi) 
; ram_0771                              = $0771 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B1(Wy) 002FC6(Wi) 
; ram_0772                              = $0772 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011C7(Wy) 002FC6(Wi) 
; ram_0773                              = $0773 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D4(Wy) 002FC6(Wi) 
; ram_0774                              = $0774 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011A4(Wy) 002FC6(Wi) 
; ram_0775                              = $0775 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B7(Wy) 002FC6(Wi) 
; ram_0776                              = $0776 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CA(Wy) 002FC6(Wi) 
; ram_0777                              = $0777 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011DD(Wy) 002FC6(Wi) 
; ram_0778                              = $0778 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AA(Wy) 002FC6(Wi) 
; ram_0779                              = $0779 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011C3(Wy) 002FC6(Wi) 
; ram_077A                              = $077A ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CD(Wy) 002FC6(Wi) 
; ram_077B                              = $077B ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011E0(Wy) 002FC6(Wi) 
; ram_077C                              = $077C ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AD(Wy) 002FC6(Wi) 
; ram_077D                              = $077D ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011BD(Wy) 002FC6(Wi) 
; ram_077E                              = $077E ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D0(Wy) 002FC6(Wi) 
; ram_077F                              = $077F ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D7(Wy) 002FC6(Wi) 
; ram_0780                              = $0780 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000C13(R)  000DBC(W)  000DCA(R)  000DFB(R)  0011A1(Wy) 002FC6(Wi) 
; ram_0781                              = $0781 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B1(Wy) 002FC6(Wi) 
; ram_0782                              = $0782 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011C7(Wy) 002FC6(Wi) 
; ram_0783                              = $0783 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 000C08(R)  000DF0(R)  0011D4(Wy) 002FC6(Wi) 
; ram_0784                              = $0784 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011A4(Wy) 002FC6(Wi) 
; ram_0785                              = $0785 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B7(Wy) 002FC6(Wi) 
; ram_0786                              = $0786 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CA(Wy) 002FC6(Wi) 
; ram_0787                              = $0787 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011DD(Wy) 002FC6(Wi) 
; ram_0788                              = $0788 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AA(Wy) 002FC6(Wi) 
; ram_0789                              = $0789 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011C3(Wy) 002FC6(Wi) 
; ram_078A                              = $078A ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CD(Wy) 002FC6(Wi) 
; ram_078B                              = $078B ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011E0(Wy) 002FC6(Wi) 
; ram_078C                              = $078C ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AD(Wy) 002FC6(Wi) 
; ram_078D                              = $078D ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011BD(Wy) 002FC6(Wi) 
; ram_078E                              = $078E ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D0(Wy) 002FC6(Wi) 
; ram_078F                              = $078F ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D7(Wy) 002FC6(Wi) 
; ram_0790                              = $0790 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011A1(Wy) 00280A(Wi) 002FC6(Wi) 
; ram_0791                              = $0791 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011B1(Wy) 002843(Wi) 002FC6(Wi) 
; ram_0792                              = $0792 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011C7(Wy) 002865(Wi) 002FC6(Wi) 
; ram_0793                              = $0793 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011D4(Wy) 00280F(Wi) 002FC6(Wi) 
; ram_0794                              = $0794 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011A4(Wy) 002818(Wi) 002FC6(Wi) 
; ram_0795                              = $0795 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B7(Wy) 00284B(Wi) 002FC6(Wi) 
; ram_0796                              = $0796 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CA(Wy) 002869(Wi) 002FC6(Wi) 
; ram_0797                              = $0797 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011DD(Wy) 00281D(Wi) 002FC6(Wi) 
; ram_0798                              = $0798 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AA(Wy) 002826(Wi) 002FC6(Wi) 
; ram_0799                              = $0799 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011C3(Wy) 002853(Wi) 002FC6(Wi) 
; ram_079A                              = $079A ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CD(Wy) 00286D(Wi) 002FC6(Wi) 
; ram_079B                              = $079B ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011E0(Wy) 00282B(Wi) 002FC6(Wi) 
; ram_079C                              = $079C ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AD(Wy) 002834(Wi) 002FC6(Wi) 
; ram_079D                              = $079D ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011BD(Wy) 00285B(Wi) 002FC6(Wi) 
; ram_079E                              = $079E ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D0(Wy) 002871(Wi) 002FC6(Wi) 
; ram_079F                              = $079F ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D7(Wy) 002839(Wi) 002FC6(Wi) 
; ram_07A0                              = $07A0 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011A1(Wy) 00280A(Wi) 002FC6(Wi) 
; ram_07A1                              = $07A1 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011B1(Wy) 002843(Wi) 002FC6(Wi) 
; ram_07A2                              = $07A2 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011C7(Wy) 002865(Wi) 002FC6(Wi) 
; ram_07A3                              = $07A3 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011D4(Wy) 00280F(Wi) 002FC6(Wi) 
; ram_07A4                              = $07A4 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011A4(Wy) 002818(Wi) 002FC6(Wi) 
; ram_07A5                              = $07A5 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B7(Wy) 00284B(Wi) 002FC6(Wi) 
; ram_07A6                              = $07A6 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CA(Wy) 002869(Wi) 002FC6(Wi) 
; ram_07A7                              = $07A7 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011DD(Wy) 00281D(Wi) 002FC6(Wi) 
; ram_07A8                              = $07A8 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AA(Wy) 002826(Wi) 002FC6(Wi) 
; ram_07A9                              = $07A9 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011C3(Wy) 002853(Wi) 002FC6(Wi) 
; ram_07AA                              = $07AA ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CD(Wy) 00286D(Wi) 002FC6(Wi) 
; ram_07AB                              = $07AB ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011E0(Wy) 00282B(Wi) 002FC6(Wi) 
; ram_07AC                              = $07AC ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AD(Wy) 002834(Wi) 002FC6(Wi) 
; ram_07AD                              = $07AD ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011BD(Wy) 00285B(Wi) 002FC6(Wi) 
; ram_07AE                              = $07AE ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D0(Wy) 002871(Wi) 002FC6(Wi) 
; ram_07AF                              = $07AF ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D7(Wy) 002839(Wi) 002FC6(Wi) 
; ram_07B0                              = $07B0 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011A1(Wy) 00280A(Wi) 002FC6(Wi) 
; ram_07B1                              = $07B1 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011B1(Wy) 002843(Wi) 002FC6(Wi) 
; ram_07B2                              = $07B2 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011C7(Wy) 002865(Wi) 002FC6(Wi) 
; ram_07B3                              = $07B3 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011D4(Wy) 00280F(Wi) 002FC6(Wi) 
; ram_07B4                              = $07B4 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011A4(Wy) 002818(Wi) 002FC6(Wi) 
; ram_07B5                              = $07B5 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B7(Wy) 00284B(Wi) 002FC6(Wi) 
; ram_07B6                              = $07B6 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CA(Wy) 002869(Wi) 002FC6(Wi) 
; ram_07B7                              = $07B7 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011DD(Wy) 00281D(Wi) 002FC6(Wi) 
; ram_07B8                              = $07B8 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AA(Wy) 002826(Wi) 002FC6(Wi) 
; ram_07B9                              = $07B9 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011C3(Wy) 002853(Wi) 002FC6(Wi) 
; ram_07BA                              = $07BA ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CD(Wy) 00286D(Wi) 002FC6(Wi) 
; ram_07BB                              = $07BB ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011E0(Wy) 00282B(Wi) 002FC6(Wi) 
; ram_07BC                              = $07BC ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AD(Wy) 002834(Wi) 002FC6(Wi) 
; ram_07BD                              = $07BD ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011BD(Wy) 00285B(Wi) 002FC6(Wi) 
; ram_07BE                              = $07BE ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D0(Wy) 002871(Wi) 002FC6(Wi) 
; ram_07BF                              = $07BF ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D7(Wy) 002839(Wi) 002FC6(Wi) 
; ram_07C0                              = $07C0 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011A1(Wy) 00280A(Wi) 002FC6(Wi) 
; ram_07C1                              = $07C1 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011B1(Wy) 002843(Wi) 002FC6(Wi) 
; ram_07C2                              = $07C2 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011C7(Wy) 002865(Wi) 002FC6(Wi) 
; ram_07C3                              = $07C3 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011D4(Wy) 00280F(Wi) 002FC6(Wi) 
; ram_07C4                              = $07C4 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011A4(Wy) 002818(Wi) 002FC6(Wi) 
; ram_07C5                              = $07C5 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B7(Wy) 00284B(Wi) 002FC6(Wi) 
; ram_07C6                              = $07C6 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CA(Wy) 002869(Wi) 002FC6(Wi) 
; ram_07C7                              = $07C7 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011DD(Wy) 00281D(Wi) 002FC6(Wi) 
; ram_07C8                              = $07C8 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AA(Wy) 002826(Wi) 002FC6(Wi) 
; ram_07C9                              = $07C9 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011C3(Wy) 002853(Wi) 002FC6(Wi) 
; ram_07CA                              = $07CA ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CD(Wy) 00286D(Wi) 002FC6(Wi) 
; ram_07CB                              = $07CB ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011E0(Wy) 00282B(Wi) 002FC6(Wi) 
; ram_07CC                              = $07CC ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AD(Wy) 002834(Wi) 002FC6(Wi) 
; ram_07CD                              = $07CD ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011BD(Wy) 00285B(Wi) 002FC6(Wi) 
; ram_07CE                              = $07CE ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D0(Wy) 002871(Wi) 002FC6(Wi) 
; ram_07CF                              = $07CF ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D7(Wy) 002839(Wi) 002FC6(Wi) 
; ram_07D0                              = $07D0 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011A1(Wy) 00280A(Wi) 002FC6(Wi) 
; ram_07D1                              = $07D1 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011B1(Wy) 002843(Wi) 002FC6(Wi) 
; ram_07D2                              = $07D2 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011C7(Wy) 002865(Wi) 002FC6(Wi) 
; ram_07D3                              = $07D3 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0010B8(Ri) 0010D3(Wi) 0011D4(Wy) 00280F(Wi) 002FC6(Wi) 
; ram_07D4                              = $07D4 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011A4(Wy) 002818(Wi) 002FC6(Wi) 
; ram_07D5                              = $07D5 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B7(Wy) 00284B(Wi) 002FC6(Wi) 
; ram_07D6                              = $07D6 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CA(Wy) 002869(Wi) 002FC6(Wi) 
; ram_07D7                              = $07D7 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011DD(Wy) 00281D(Wi) 002FC6(Wi) 
; ram_07D8                              = $07D8 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AA(Wy) 002826(Wi) 002FC6(Wi) 
; ram_07D9                              = $07D9 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011C3(Wy) 002853(Wi) 002FC6(Wi) 
; ram_07DA                              = $07DA ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011CD(Wy) 00286D(Wi) 002FC6(Wi) 
; ram_07DB                              = $07DB ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011E0(Wy) 00282B(Wi) 002FC6(Wi) 
; ram_07DC                              = $07DC ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011AD(Wy) 002834(Wi) 002FC6(Wi) 
; ram_07DD                              = $07DD ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011BD(Wy) 00285B(Wi) 002FC6(Wi) 
; ram_07DE                              = $07DE ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D0(Wy) 002871(Wi) 002FC6(Wi) 
; ram_07DF                              = $07DF ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011D7(Wy) 002839(Wi) 002FC6(Wi) 
; ram_07E0                              = $07E0 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 001292(Ry) 00280A(Wi) 002FC6(Wi) 
; ram_07E1                              = $07E1 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B1(Wy) 002843(Wi) 002FC6(Wi) 
; ram_07E2                              = $07E2 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 002865(Wi) 002FC6(Wi) 
; ram_07E3                              = $07E3 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 001286(Ry) 00280F(Wi) 002FC6(Wi) 
; ram_07E4                              = $07E4 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 002818(Wi) 002FC6(Wi) 
; ram_07E5                              = $07E5 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B7(Wy) 00284B(Wi) 002FC6(Wi) 
; ram_07E6                              = $07E6 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 002869(Wi) 002FC6(Wi) 
; ram_07E7                              = $07E7 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 00281D(Wi) 002FC6(Wi) 
; ram_07E8                              = $07E8 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 002826(Wi) 002FC6(Wi) 
; ram_07E9                              = $07E9 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011C3(Wy) 002853(Wi) 002FC6(Wi) 
; ram_07EA                              = $07EA ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 00286D(Wi) 002FC6(Wi) 
; ram_07EB                              = $07EB ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 00282B(Wi) 002FC6(Wi) 
; ram_07EC                              = $07EC ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 002834(Wi) 002FC6(Wi) 
; ram_07ED                              = $07ED ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011BD(Wy) 00285B(Wi) 002FC6(Wi) 
; ram_07EE                              = $07EE ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 002871(Wi) 002FC6(Wi) 
; ram_07EF                              = $07EF ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 002839(Wi) 002FC6(Wi) 
; ram_07F0                              = $07F0 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 001292(Ry) 00280A(Wi) 002FC6(Wi) 
; ram_07F1                              = $07F1 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B1(Wy) 002843(Wi) 002FC6(Wi) 
; ram_07F2                              = $07F2 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 002865(Wi) 002FC6(Wi) 
; ram_07F3                              = $07F3 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 001286(Ry) 00280F(Wi) 002FC6(Wi) 
; ram_07F4                              = $07F4 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 002818(Wi) 002FC6(Wi) 
; ram_07F5                              = $07F5 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011B7(Wy) 00284B(Wi) 002FC6(Wi) 
; ram_07F6                              = $07F6 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 002869(Wi) 002FC6(Wi) 
; ram_07F7                              = $07F7 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 00281D(Wi) 002FC6(Wi) 
; ram_07F8                              = $07F8 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 002826(Wi) 002FC6(Wi) 
; ram_07F9                              = $07F9 ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011C3(Wy) 002853(Wi) 002FC6(Wi) 
; ram_07FA                              = $07FA ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 00286D(Wi) 002FC6(Wi) 
; ram_07FB                              = $07FB ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 00282B(Wi) 002FC6(Wi) 
; ram_07FC                              = $07FC ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 002834(Wi) 002FC6(Wi) 
; ram_07FD                              = $07FD ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 0011BD(Wy) 00285B(Wi) 002FC6(Wi) 
; ram_07FE                              = $07FE ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 002871(Wi) 002FC6(Wi) 
; ram_07FF                              = $07FF ; 0000CC(Wx) 00059A(Rx) 0005A7(Wx) 0005BE(Wx) 002839(Wi) 002FC6(Wi) 
