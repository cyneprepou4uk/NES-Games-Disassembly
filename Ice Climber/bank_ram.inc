; to the right are ROM File addresses of instructions which were using these RAM addresses



; possible object indexes
; 00 = small bird
; 01 = polar bear
; 02 = seal 1
; 03 = seal 2/fruit 1
; 04 = fruit 2
; 05 = ice 1 carried by seal 1/fruit 3
; 06 = ice 2 carried by seal 2/fruit 4
; 07 = unused?
; 08 = falling ice 1
; 09 = falling ice 2
; 0A = falling ice 3 (2nd loop only)



; ($indirect),Y
ram_0000                                = $0000 ; 000040(W)  000051(Wi) 000163(W)  00019E(W)  00056D(W)  000592(W)  00059B(R)  0005C8(Wx) 0005EB(W)  00071F(W)  00073B(W)  000819(R)  000821(R)  000826(W)  0008B4(W)  0008C0(R)  0008D8(R)  0008F0(W)  0008F2(R)  0008F7(R)  000960(W)  000973(R)  000A61(R)  000A6A(R)  000AC4(R)  000AEA(W)  000AF0(R)  000B16(W)  000B19(R)  000B21(W)  000B23(W)  000B25(R)  000B29(W)  000B33(R)  000B7E(R)  000B80(W)  0010EE(W)  001197(W)  0011DA(W)  001246(R)  00127F(R)  0012F3(W)  001384(R)  001538(W)  001544(R)  001AB4(W)  001AC0(W)  001AED(R)  001B7F(W)  001BC8(W)  001BE1(R)  001BF1(R)  001C1C(W)  001C69(R)  001CCD(W)  001CE0(W)  001CFA(R)  001D17(R)  001D81(W)  001D85(R)  001DCA(W)  001DE3(W)  001DEF(W)  001E72(W)  002035(W)  00203A(R)  002077(W)  00208C(R)  002091(W)  00209F(R)  0020FD(W)  002156(R)  002168(R)  002186(R)  0024D8(W)  0024DC(R)  00251B(W)  002674(W)  0026CE(Ry) 00270A(R)  002744(W)  00275B(Wx) 0027D4(W)  0027E0(R)  0027EA(W)  002800(R)  002805(W)  0029D3(W)  002A2A(W)  002A31(R)  002B54(W)  002BCC(W)  002BD5(R)  002BD9(R)  002BF0(R)  002D3F(Wx) 002DD5(W)  002DDD(R)  002DE5(W)  002DEA(R)  003067(W)  003070(R)  0030A6(W)  0030AD(R)  0030B1(R)  0030E2(W)  0033A6(W)  0033C2(R)  0033CB(R)  003402(W)  003412(R)  0034E4(W)  003639(Wx) 00366E(W)  003678(W)  00376A(W)  
ram_0001                                = $0001 ; 00003C(W)  000051(Wi) 000056(W)  000168(W)  000572(W)  0005C8(Wx) 0005ED(W)  000724(W)  000730(W)  00073E(W)  000809(R)  00087F(R)  00088E(W)  000928(W)  00092C(R)  000944(W)  000956(W)  00096C(R)  000977(R)  0009EA(R)  000A0B(R)  000A0D(W)  000A13(W)  000A27(R)  000A2D(W)  000B39(R)  000B3E(W)  000B47(W)  000B84(R)  000B86(W)  000D78(W)  000D7D(R)  000D95(R)  0010F3(W)  001145(W)  00114E(R)  0011A2(W)  0011E2(W)  001301(W)  00152E(W)  00153E(R)  002073(W)  002079(R)  002097(W)  002099(R)  002333(W)  002343(W)  0024E1(W)  0024EC(R)  00250B(R)  002512(R)  00261E(W)  00267B(Wx) 0026CE(Ry) 002724(W)  002749(W)  00275B(Wx) 0027CF(W)  0027E5(R)  002891(R)  002899(W)  0029BF(W)  002A09(W)  002B58(W)  002D3F(Wx) 003404(W)  00341D(R)  0034B2(W)  0034BD(R)  0034CF(R)  003639(Wx) 0036C2(W)  0036D3(W)  00376E(W)  



; ($indirect)
ram_0002                                = $0002 ; 000051(Wi) 000577(W)  0005C8(Wx) 0005EF(W)  000743(W)  000787(R)  0007E3(R)  0009F3(R)  0009F5(W)  0009FB(R)  000A15(R)  000A19(W)  000A20(R)  000A32(W)  000B31(R)  000B40(W)  000B4B(W)  0010FA(W)  001112(R)  00118F(W)  0011C5(W)  00123F(W)  001266(W)  001294(R)  001B1F(R)  001BEF(W)  001D5E(W)  001D63(R)  001D69(W)  001EDC(W)  001EE9(R)  001EED(W)  001EF7(W)  002081(W)  0020C3(R)  00267B(Wx) 0026CE(Ry) 00274E(W)  00275B(Wx) 0029BA(W)  002B5D(W)  002D3F(Wx) 002DA1(W)  002DB6(R)  00321A(R)  0034DF(W)  003639(Wx) 003764(W)  
; ($indirect),Y
ram_0003                                = $0003 ; 000051(Wi) 0005E9(W)  00061B(W)  000748(W)  00074D(W)  000759(R)  00075D(R)  000991(W)  00099B(W)  0009B1(W)  0009B8(W)  0009D8(W)  0009F7(R)  000A1B(R)  000A34(R)  000A57(W)  000A7F(W)  000A8A(W)  000A95(W)  00126C(R)  0012EE(W)  001A03(W)  001A19(R)  001AD1(R)  001BFD(W)  001CE4(W)  001D43(W)  001E0A(R)  001E61(R)  001EE3(W)  001FD6(W)  0025CB(W)  0025FA(R)  00263A(W)  00267B(Wx) 0026AC(R)  0026AE(W)  0026CE(Ry) 002722(R)  002753(W)  00275B(Wx) 002D3F(Wx) 002D4E(R)  002DA6(W)  002DBB(R)  002DC7(W)  
; ($indirect),Y
ram_0004                                = $0004 ; 000051(Wi) 000563(Rx) 000567(Rx) 000831(W)  000962(W)  00097E(R)  000A5E(W)  000AA6(W)  001BC6(W)  001D0A(W)  001E22(R)  001EE7(W)  001EEF(W)  001FC3(W)  00267B(Wx) 0026B3(W)  0026CE(Ry) 002796(W)  0027C4(W)  0027F3(W)  002807(R)  00280C(W)  002B11(W)  
; ($indirect),Y
ram_0005                                = $0005 ; 000051(Wi) 000563(Rx) 000567(Rx) 000755(W)  000835(W)  000966(W)  00099D(R)  0009BA(R)  001D11(Wx) 001FDB(W)  002614(W)  002616(W)  002629(R)  00267B(Wx) 002686(W)  0026BD(R)  00276E(Wy) 002EEA(W)  002EF6(R)  
ram_0006                                = $0006 ; 000051(Wi) 000563(Rx) 000567(Rx) 000763(W)  0007D8(R)  0007DD(R)  000800(R)  000807(R)  000968(W)  000975(Wx) 000993(R)  0009B3(R)  001D11(Wx) 001FC5(W)  001FEB(W)  001FEF(W)  00267B(Wx) 002691(W)  0026C2(R)  00276E(Wy) 00284B(W)  002853(W)  0029AA(W)  0029C7(R)  0029CD(R)  



; ($indirect),Y
ram_0007                                = $0007 ; 000051(Wi) 000563(Rx) 000567(Rx) 00075B(W)  000769(R)  000828(W)  00096A(W)  000975(Wx) 000A59(R)  000F35(W)  000F56(R)  0011BE(W)  0011C0(R)  0011C7(R)  001D11(Wx) 00261A(W)  002631(R)  002638(W)  002696(W)  0026C7(R)  00276E(Wy) 00284D(W)  002855(W)  
ram_0008                                = $0008 ; 000051(Wi) 000563(Rx) 000567(Rx) 00076E(W)  0007D5(R)  001B2D(W)  001B4F(R)  001B85(R)  001BA8(R)  001D11(Wx) 0025E8(W)  002609(R)  00260F(R)  00276E(Wy) 00284F(W)  002869(W)  



; 
ram_0009                                = $0009 ; 000051(Wi) 000563(Rx) 000567(Rx) 00079E(R)  0007AD(R)  00080B(W)  00080D(R)  000814(W)  0013DB(W)  0013DF(R)  001406(R)  0015C6(W)  0015D3(W)  0015EA(R)  00167B(W)  001686(W)  00169F(R)  0016B8(W)  0016BD(R)  00276E(Wy) 002851(W)  00286B(W)  002B0C(W)  



; 
ram_000A                                = $000A ; 000051(Wi) 000563(Rx) 000567(Rx) 0007B9(W)  0007C1(W)  0007D3(W)  0007E5(R)  0007F5(W)  000F70(W)  000F8A(W)  000F93(R)  000FB7(W)  000FC4(R)  000FC6(R)  001216(W)  00121B(R)  001331(W)  0013D9(W)  0015CF(W)  001601(R)  0016B3(W)  0016C3(R)  0016C7(R)  00193C(W)  001982(R)  001B7D(R)  001FF5(R)  002000(W)  002005(R)  002069(R)  00209B(R)  0020E7(W)  0020FB(R)  0026E5(W)  0026EC(R)  002718(W)  00271C(R)  00276E(Wy) 002843(W)  002847(R)  002B16(W)  



; 
ram_000B                                = $000B ; 000051(Wi) 000563(Rx) 000567(Rx) 0007BB(W)  0007C3(W)  0007DB(W)  0007FD(R)  000F10(W)  000F1C(R)  001338(W)  0013D1(W)  0015CA(W)  001651(R)  0016BF(W)  0016CF(R)  0016D3(R)  001701(R)  001937(W)  001987(R)  001B9E(R)  001D32(W)  001D76(R)  001DAA(R)  002027(W)  00202B(R)  002047(R)  002065(W)  002067(R)  0020EE(W)  00210D(R)  00276E(Wy) 002B18(W)  



; 
ram_000C                                = $000C ; 000051(Wi) 000557(W)  000579(R)  000582(W)  0007BD(W)  0007C5(W)  000F9B(W)  000FA7(W)  000FAC(R)  0015DC(W)  001940(W)  00197C(R)  0019AF(R)  002661(W)  002665(R)  00266B(W)  002680(R)  002688(R)  002771(R)  002B1A(W)  



; ($indirect),Y
ram_000D                                = $000D ; 000051(Wi) 00055B(W)  0005D1(W)  00079A(R)  0007BF(W)  0007C7(W)  0015D7(W)  001E52(W)  001E93(R)  001EA2(W)  001EB5(R)  0027C8(W)  0027EC(R)  0027F5(W)  002B1C(W)  
ram_000E                                = $000E ; 000051(Wi) 00055F(W)  0005D5(W)  000771(R)  000EB5(R)  000F3E(W)  0011ED(W)  001DBD(R)  001DC6(W)  001E4E(W)  001E65(R)  001EA5(R)  001EA7(W)  001ECC(R)  002672(W)  00269F(R)  0026F9(R)  0029C1(W)  0029E8(W)  002A3D(W)  002B50(W)  002C0C(W)  002C17(R)  002C1C(W)  002C22(R)  002D49(W)  002F57(W)  00320C(W)  0034E6(W)  003646(W)  



; 
ram_000F                                = $000F ; 000051(Wi) 0005E5(W)  0005F6(R)  000615(W)  000618(W)  000778(R)  00084D(W)  000890(R)  0011A6(W)  001CF7(R)  001D19(R)  001DC8(W)  001E3C(W)  001E97(R)  001EAC(W)  001EAE(R)  001EBD(R)  001EC2(R)  001EC9(R)  0027AF(W)  0027B1(R)  0027CA(R)  00281D(R)  002835(R)  00288A(W)  002B68(W)  002C05(W)  002D4C(W)  002F59(W)  003210(W)  0034EA(W)  003642(W)  00365C(W)  003661(R)  



; a copy of register values
ram_for_2000                            = $0010 ; 000051(Wi) 00008B(R)  0000CE(R)  000154(R)  000158(W)  0001F1(R)  0001F5(W)  0008B9(R)  000B5C(R)  
ram_for_2001                            = $0011 ; 000051(Wi) 00009C(R)  0000A3(W)  0000F2(R)  0000F9(W)  00011A(R)  000121(W)  



; bzk optimize, scroll X is always 00
ram_scroll_X                            = $0012 ; 000051(Wi) 00089A(W)  000B91(R)  
ram_scroll_Y                            = $0013 ; 000051(Wi) 0001B7(W)  0001F9(W)  000337(W)  000339(W)  00034E(R)  000402(W)  000404(W)  000409(R)  00089C(W)  000B96(R)  001517(R)  0015B0(R)  001663(R)  001859(R)  00185E(W)  0018B6(R)  0018C3(R)  0018C8(W)  0018D2(W)  0018E4(R)  0018FA(R)  001902(R)  001906(W)  002612(R)  0037B2(R)  



; 2 pairs: 0014 + 0016, 0015 + 0017
ram_btn_hold                            = $0014 ; 000051(Wi) 000B27(Rx) 000B2B(Wx) 000DC9(Ry) 002C45(Ry) 003551(R)  
ram_btn_press                           = $0015 ; 000051(Wi) 0000FB(R)  00012C(R)  0004A0(R)  0004AE(R)  000B2D(Wx) 000B37(Rx) 000B3B(Wx) 000C0F(R)  000D0B(Ry) 
; ram_btn_press                         = $0016 ; 000051(Wi) 000B27(Rx) 000B2B(Wx) 000DC9(Ry) 002C45(Ry) 
; ram_0017                              = $0017 ; 000051(Wi) 000B2D(Wx) 000B37(Rx) 000B3B(Wx) 000C21(R)  000D0B(Ry) 



; random bytes
; bzk optimize, last 001D address seems useless
ram_random                              = $0018 ; 000051(Wi) 0005C0(Rx) 000AE2(R)  000AF6(Wx) 003057(Rx) 0031C4(Rx) 0037C5(Rx) 00381C(R)  
; ram_0019                              = $0019 ; 000051(Wi) 0005C0(Rx) 000AEC(R)  000AF6(Wx) 002698(R)  003057(Rx) 00307E(R)  0031C4(Rx) 0033B1(Wx) 0033B6(R)  0037AC(R)  0037C5(Rx) 
; ram_001A                              = $001A ; 000051(Wi) 0005C0(Rx) 000AF6(Wx) 0031C4(Rx) 0033B1(Wx) 0037C5(Rx) 
; ram_001B                              = $001B ; 000051(Wi) 000AF6(Wx) 0033B1(Wx) 
; ram_001C                              = $001C ; 000051(Wi) 000AF6(Wx) 0033B1(Wx) 
; ram_001D                              = $001D ; 000051(Wi) 0033B1(Wx) 



; 
ram_001E                                = $001E ; 000051(Wi) 001549(W)  001767(W)  002CF9(W)  00349C(R)  003534(R)  003596(R)  0035B0(R)  0036EB(W)  



; 
ram_001F_timer                          = $001F ; 000051(Wi) 0003F0(W)  00041B(W)  000421(W)  00057D(W)  0005D9(W)  0005F2(R)  



; 
ram_plr_lives                           = $0020 ; 000051(Wi) 000269(Rx) 0004BF(W)  000C8E(R)  001491(Wx) 00174C(Rx) 0028A5(Rx) 0028B9(Wx) 00299F(R)  002B9E(Rx) 002C3E(Rx) 002CD1(Rx) 002CE1(R)  002CF6(W)  002D16(Wx) 002D24(Wx) 002D93(Rx) 
; ram_0021                              = $0021 ; 000051(Wi) 000269(Rx) 0004C7(W)  001491(Wx) 00174C(Rx) 0028A5(Rx) 0028B9(Wx) 002B9E(Rx) 002C3E(Rx) 002CD1(Rx) 002CE9(R)  002D16(Wx) 002D24(Wx) 002D93(Rx) 



; 
ram_0022_plr                            = $0022 ; 000051(Wi) 0001B9(W)  0028A1(Rx) 0028B7(Wx) 
; ram_0023                              = $0023 ; 000051(Wi) 0001BB(W)  0028A1(Rx) 0028B7(Wx) 



; 
ram_0024                                = $0024 ; 000051(Wi) 0018F0(R)  0018F5(W)  002577(W)  00258B(R)  



; 
ram_0025                                = $0025 ; 000051(Wi) 002581(W)  002583(R)  002593(W)  



; 00 = 
; 02 = 
ram_0026_flag                           = $0026 ; 000051(Wi) 00033B(R)  000373(R)  000CBC(R)  0014FE(W)  



; 00 = 
; 01 = 
ram_0027_flag                           = $0027 ; 000051(Wi) 000306(W)  000CED(R)  0015B9(R)  0018B8(R)  0018CE(R)  0018D6(W)  002605(R)  0037B4(R)  



; 
ram_0028_plr                            = $0028 ; 000051(Wi) 0015B7(Wx) 0015C0(Wx) 0015C8(Rx) 001645(Wx) 00164E(Rx) 001673(Rx) 00167D(Rx) 
; ram_0029                              = $0029 ; 000051(Wi) 0015B7(Wx) 0015C0(Wx) 0015C8(Rx) 001645(Wx) 00164E(Rx) 001673(Rx) 00167D(Rx) 



; 
ram_002A_plr                            = $002A ; 000051(Wi) 0015AE(Wx) 0015C2(Wx) 0015C4(Rx) 001665(Rx) 001684(Rx) 001690(Rx) 0016FD(Rx) 
; ram_002B                              = $002B ; 000051(Wi) 0015AE(Wx) 0015C2(Wx) 0015C4(Rx) 001665(Rx) 001684(Rx) 001690(Rx) 0016FD(Rx) 



; 
ram_spawn_timer_hi_bear                 = $002C ; 000051(Wi) 000299(W)  0017F6(R)  0017FA(W)  00191C(W)  



; 
ram_002D_plr                            = $002D ; 000051(Wi) 00027E(Wx) 001228(R)  001328(Rx) 00148D(Rx) 001C5D(Rx) 0020DE(Rx) 0022EC(Ry) 002C2B(Wx) 002C3A(Rx) 002C50(Wx) 
; ram_002E                              = $002E ; 000051(Wi) 00027E(Wx) 00122A(R)  001328(Rx) 00148D(Rx) 001C5D(Rx) 0020DE(Rx) 0022EC(Ry) 002C2B(Wx) 002C3A(Rx) 002C50(Wx) 



; 
ram_002F_plr                            = $002F ; 000051(Wi) 000279(Wx) 000869(Rx) 001141(Wx) 002BC5(Wx) 0034C9(Wx) 
; ram_0030                              = $0030 ; 000051(Wi) 000279(Wx) 000869(Rx) 001141(Wx) 002BC5(Wx) 0034C9(Wx) 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; TIMERS (start)

; timer counts down from 0A to 00
; while it's counting down, timers 0032-003B decrease by 01
; when this timer reaches FF, it resets, and timers 003C-004F decrease by 01, as well as 0032-003B
; so timers 0032-003B decrease each frame, while timers 003C-004F decrease each 11d frames
ram_main_timer                          = $0031 ; 000051(Wi) 0001DB(W)  000BAF(W)  000BB5(W)  



; all timers decrease down to 00
ram_timers                              = $0032 ; for common links



; 
ram_0032_plr_timer                      = $0032 ; 000051(Wi) 000BB9(Rx) 000BBD(Wx) 000DE7(Wx) 000EDE(Wx) 000FE8(Rx) 001001(Wx) 0010BA(Rx) 001121(Rx) 00146C(Wx) 
; ram_0033                              = $0033 ; 000051(Wi) 000BB9(Rx) 000BBD(Wx) 000DE7(Wx) 000EDE(Wx) 000FE8(Rx) 001001(Wx) 0010BA(Rx) 001121(Rx) 00146C(Wx) 



; 
ram_0034_timer                          = $0034 ; 000051(Wi) 0002F8(W)  000447(R)  000BB9(Rx) 000BBD(Wx) 00150C(W)  002902(R)  002A57(W)  



; free timers
; ram_0035                              = $0035 ; 000051(Wi) 000BB9(Rx) 
; ram_0036                              = $0036 ; 000051(Wi) 000BB9(Rx) 



; counter for holding dpad at logo screen to change mountain nuumber
ram_0037_plr_timer                      = $0037 ; 000051(Wi) 0002F2(W)  000BB9(Rx) 000BBD(Wx) 0034A9(Rx) 003519(Wx) 003560(R)  003570(W)  
; ram_0038                              = $0038 ; 000051(Wi) 0002F4(W)  000BB9(Rx) 000BBD(Wx) 0034A9(Rx) 003519(Wx) 



; bzk optimize, useless timer
ram_0039_useless_timer                  = $0039 ; 000051(Wi) 0002A5(W)  000BB9(Rx) 000BBD(Wx) 



; 
ram_003A_plr_timer                      = $003A ; 000051(Wi) 000BB9(Rx) 000BBD(Wx) 0020D0(Rx) 002165(Wx) 
; ram_003B                              = $003B ; 000051(Wi) 000BB9(Rx) 000BBD(Wx) 0020D0(Rx) 0036B4(R)  0036E8(W)  



; free timer
; ram_003C                              = $003C ; 000051(Wi) 000BB9(Rx) 



; 
ram_spawn_timer_lo_bear                 = $003D ; 000051(Wi) 000295(W)  000BB9(Rx) 000BBD(Wx) 0017F2(R)  0017FE(W)  001918(W)  002E3D(R)  



; free timer
; ram_003E                              = $003E ; 000051(Wi) 000BB9(Rx) 



; 
ram_003F_plr_timer                      = $003F ; 000051(Wi) 000BB9(Rx) 000BBD(Wx) 001495(Wx) 002BB6(Rx) 
; ram_0040                              = $0040 ; 000051(Wi) 000BB9(Rx) 000BBD(Wx) 001495(Wx) 002BB6(Rx) 



; free timers
; ram_0041                              = $0041 ; 000051(Wi) 000BB9(Rx) 
; ram_0042                              = $0042 ; 000051(Wi) 000BB9(Rx) 



; 
ram_0043_timer                          = $0043 ; 000051(Wi) 000176(R)  000BB9(Rx) 000BBD(Wx) 002CED(R)  002D14(W)  002D19(R)  



; free timer
; ram_0044                              = $0044 ; 000051(Wi) 000BB9(Rx) 



; 
ram_0045_timer                          = $0045 ; 000051(Wi) 000BB9(Rx) 000BBD(Wx) 000C82(R)  002A50(W)  



; 
ram_0046_timer                          = $0046 ; 000051(Wi) 000433(R)  000439(W)  000BB9(Rx) 000BBD(Wx) 



; free timers
; ram_0047                              = $0047 ; 000051(Wi) 000BB9(Rx) 
; ram_0048                              = $0048 ; 000051(Wi) 000BB9(Rx) 
; ram_0049                              = $0049 ; 000051(Wi) 000BB9(Rx) 



; 
ram_004A_plr_timer                      = $004A ; 000051(Wi) 00029D(W)  000BB9(Rx) 000BBD(Wx) 003037(Wx) 003053(Rx) 0030D6(Wx) 
; ram_004B                              = $004B ; 000051(Wi) 0002A1(W)  000BB9(Rx) 000BBD(Wx) 003037(Wx) 003053(Rx) 0030D6(Wx) 



; free timer
; ram_004C                              = $004C ; 000051(Wi) 000BB9(Rx) 



; 
ram_004D_timer                          = $004D ; 000051(Wi) 0001C5(W)  0001D7(W)  000494(R)  00049B(W)  000BB9(Rx) 000BBD(Wx) 000CFD(R)  001555(W)  0036F3(W)  



; also a timer before demo plays at logo
ram_spawn_timer_lo_bird                 = $004E ; 000051(Wi) 0001E2(W)  000479(R)  0004AB(W)  000BB9(Rx) 000BBD(Wx) 003568(W)  00388F(W)  003899(R)  



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; TIMERS (end)



; free address
; ram_004F                              = $004F ; 000051(Wi) 000BB9(Rx) 



; frame counter
ram_frm_cnt                             = $0050 ; 000051(Wi) 000139(W)  00212B(R)  00290B(R)  002C52(R)  003874(R)  



; 
ram_0051                                = $0051 ; 000051(Wi) 0000E3(R)  00013B(R)  0001E4(W)  0002BD(W)  00039A(W)  0003D9(W)  000CA9(W)  00150E(W)  003626(R)  



; for reading 0x000010 table
ram_buffer_offset                       = $0052 ; 000051(Wi) 000098(R)  0000AF(R)  0000B4(W)  000228(W)  000419(W)  0032FC(R)  



; 00 = 
; 01 = 
ram_0053_flag                           = $0053 ; 000051(Wi) 0000D9(R)  0003C3(R)  



; 
ram_0054_timer                          = $0054 ; 000051(Wi) 0001CD(R)  0001D3(W)  000444(W)  



; 
ram_0055                                = $0055 ; 000051(Wi) 000132(R)  0002AA(R)  000736(R)  0007A8(R)  000CAB(W)  000DC0(R)  000E16(R)  000E59(R)  00134E(R)  001505(W)  001B41(R)  002CA7(R)  002D80(R)  003622(R)  



; how many stages have you completed
ram_mountain_completed                  = $0056 ; 000051(Wi) 0001AD(W)  000CA0(W)  00190D(R)  0028B1(R)  002A9E(R)  0030BC(R)  003123(R)  00364B(R)  0037BB(R)  003837(R)  



; handler at 0x00045C
ram_0057_script                         = $0057 ; 000051(Wi) 00017D(R)  0001AF(W)  0001EA(R)  00022A(W)  000246(W)  0002BB(W)  0002C3(R)  0002FD(R)  00035C(W)  0003B4(R)  0003BD(R)  0003D7(W)  00045C(W)  



; 00 = 1 player game
; 01 = 2 player game
ram_game_mode                           = $0058 ; 000051(Wi) 0002E1(R)  00031C(R)  0004C1(R)  0004CA(R)  0004CE(W)  0004D2(R)  000C1D(R)  002992(R)  0029E6(R)  002A45(R)  002B94(R)  002CCF(R)  002CE5(R)  003481(R)  



; current stage/level/area
; if you beat mountain 32 (1F), next will be mointain 1 (20) and the gameplay will become harder
ram_mountain_current                    = $0059 ; 000051(Wi) 000470(R)  000474(W)  000C94(W)  000C96(R)  001FB5(R)  002579(R)  0025C4(R)  002729(R)  00273B(R)  002AA7(R)  00311D(R)  00332F(R)  00354E(R)  003564(W)  003584(R)  



; 
ram_005A_plr                            = $005A ; 000051(Wi) 000265(Wx) 000274(Wx) 000369(W)  0003AD(Wx) 000D25(Rx) 000ED6(Rx) 000FEC(Rx) 0011F7(Rx) 001203(Wx) 001222(R)  001318(Rx) 0013C3(Rx) 00145A(Rx) 001475(Rx) 001489(Wx) 0014A5(Rx) 0014E8(R)  00174A(Wx) 001816(Rx) 001AEF(Rx) 001BD4(Rx) 0020D4(Rx) 0022E0(Ry) 002B9A(Rx) 002BF9(Wx) 002C03(Rx) 002C88(Rx) 
; ram_005B                              = $005B ; 000051(Wi) 000265(Wx) 000274(Wx) 00036B(W)  0003AD(Wx) 000D25(Rx) 000ED6(Rx) 000FEC(Rx) 0011F7(Rx) 001203(Wx) 001224(R)  001318(Rx) 0013C3(Rx) 00145A(Rx) 001475(Rx) 001489(Wx) 0014A5(Rx) 0014EC(R)  0014F6(R)  00174A(Wx) 001816(Rx) 001AEF(Rx) 001BD4(Rx) 0020D4(Rx) 0022E0(Ry) 002B9A(Rx) 002BF9(Wx) 002C03(Rx) 002C88(Rx) 



; 
ram_005C_plr                            = $005C ; 000051(Wi) 001ACF(Wx) 001CE6(Rx) 001E08(Wx) 
; ram_005D                              = $005D ; 000051(Wi) 001ACF(Wx) 001CE6(Rx) 001E08(Wx) 



; 
ram_005E                                = $005E ; 000051(Wi) 001CE6(Rx) 001E5F(Wx) 



; 
ram_plr_index                           = $005F ; 000051(Wi) 0003AF(W)  000D06(W)  000D18(R)  000D1D(R)  000D23(W)  000E37(R)  000EC6(R)  001035(R)  001041(R)  0010DA(R)  00111F(R)  001147(R)  00114C(R)  001193(R)  0011CC(R)  0011F2(R)  00142C(W)  001557(R)  001658(R)  



; 
ram_0060_plr                            = $0060 ; 000051(Wi) 00024F(Wy) 000DA5(Wx) 000DA7(Rx) 000DB0(Wx) 000EC4(Wx) 001005(Wx) 001061(Rx) 001067(Wx) 00106D(Wx) 00106F(Rx) 001091(Wx) 0013F5(Rx) 
; ram_0061                              = $0061 ; 000051(Wi) 00024F(Wy) 000DA5(Wx) 000DA7(Rx) 000DB0(Wx) 000EC4(Wx) 001005(Wx) 001061(Rx) 001067(Wx) 00106D(Wx) 00106F(Rx) 001091(Wx) 0013F5(Rx) 



; 
ram_0062_plr                            = $0062 ; 000051(Wi) 00024F(Wy) 000272(W)  000E05(Wx) 000E44(Rx) 000E90(Wx) 000F9D(Rx) 001181(Rx) 0011A4(Rx) 0011CE(Rx) 00125B(R)  0012C8(R)  0012CC(Wx) 00139E(Wx) 001597(Wx) 0016D9(Wx) 00193E(Rx) 001AA1(Wx) 001ABB(Rx) 001DEA(Rx) 002192(Wx) 
; ram_0063                              = $0063 ; 000051(Wi) 00024F(Wy) 000E05(Wx) 000E44(Rx) 000E90(Wx) 000F9D(Rx) 001181(Rx) 0011A4(Rx) 0011CE(Rx) 0012CC(Wx) 001597(Wx) 0016D9(Wx) 00193E(Rx) 001AA1(Wx) 001ABB(Rx) 001DEA(Rx) 002192(Wx) 



; 
ram_plr_pos_X                           = $0064 ; 000051(Wi) 00024F(Wy) 00025B(W)  000D6D(Rx) 000D6F(Wx) 000D7A(Rx) 000F12(Rx) 000FB9(Rx) 000FD1(Rx) 000FDE(Wx) 000FE1(Wx) 001187(Rx) 001189(Wx) 001195(Rx) 0011D8(Rx) 00125F(W)  001262(W)  0012D0(Wx) 0012D2(Wx) 0012D7(Wx) 0012D9(Wx) 0012E9(R)  00132C(Rx) 00138F(Wx) 001391(Wx) 0014AD(Rx) 00153A(Rx) 001540(Rx) 001546(Wx) 0015D5(Rx) 0015F3(Rx) 0015FD(Rx) 001669(Rx) 0016C1(Rx) 0016C9(Wx) 0016D5(Wx) 001717(Rx) 001721(Rx) 001A7B(Rx) 001A9F(Wx) 001C47(Rx) 0020E2(Rx) 002139(Wx) 00213C(Wx) 00217B(Wx) 00230C(Ry) 00230F(Wy) 002C07(Rx) 002C27(Wx) 
; ram_0065                              = $0065 ; 000051(Wi) 00024F(Wy) 00025F(W)  000D6D(Rx) 000D6F(Wx) 000D7A(Rx) 000F12(Rx) 000FB9(Rx) 000FD1(Rx) 000FDE(Wx) 000FE1(Wx) 001187(Rx) 001189(Wx) 001195(Rx) 0011D8(Rx) 0012D0(Wx) 0012D2(Wx) 0012D7(Wx) 0012D9(Wx) 0012EC(R)  00132C(Rx) 0014AD(Rx) 00153A(Rx) 001540(Rx) 001546(Wx) 0015D5(Rx) 0015F3(Rx) 0015FD(Rx) 001669(Rx) 0016C1(Rx) 0016C9(Wx) 0016D5(Wx) 001717(Rx) 001721(Rx) 001A7B(Rx) 001A9F(Wx) 001C47(Rx) 0020E2(Rx) 00217B(Wx) 00230C(Ry) 00230F(Wy) 002C07(Rx) 002C27(Wx) 



; 
ram_plr_pos_Y                           = $0066 ; 000051(Wi) 00024F(Wy) 000282(Wx) 00039D(Wx) 00039F(Wx) 000E5F(Wx) 000EBA(Wx) 000F03(Rx) 000F2A(Rx) 001143(Rx) 001150(Wx) 001199(Rx) 0011E0(Rx) 0011FB(Rx) 00124C(R)  001256(W)  001259(W)  001287(R)  0012F9(R)  001333(Rx) 001479(Rx) 0014C4(Rx) 0014D0(Rx) 0014E4(Wx) 00151B(Rx) 0015B3(Rx) 001654(Rx) 001656(Wx) 00173C(Rx) 001744(Wx) 0018AC(Rx) 001A5D(Rx) 0020E9(Rx) 002C01(Wx) 002C8C(Rx) 002C90(Wx) 003497(Wx) 0034B0(Rx) 0034D7(Wx) 
; ram_0067                              = $0067 ; 000051(Wi) 00024F(Wy) 000282(Wx) 00039D(Wx) 00039F(Wx) 000E5F(Wx) 000EBA(Wx) 000F03(Rx) 000F2A(Rx) 001143(Rx) 001150(Wx) 001199(Rx) 0011E0(Rx) 0011FB(Rx) 00124E(R)  001285(R)  00128F(W)  001292(W)  0012FC(R)  001333(Rx) 001479(Rx) 0014C4(Rx) 0014D0(Rx) 0014E4(Wx) 00151B(Rx) 0015B3(Rx) 001654(Rx) 001656(Wx) 00173C(Rx) 001744(Wx) 0018AC(Rx) 001A5D(Rx) 0020E9(Rx) 002C01(Wx) 002C8C(Rx) 002C90(Wx) 003497(Wx) 0034B0(Rx) 0034D7(Wx) 



; 
ram_0068_plr                            = $0068 ; 000051(Wi) 00024F(Wy) 000D65(Rx) 000DE0(Rx) 000DF1(Rx) 000DFB(Rx) 000E01(Wx) 000E75(Rx) 000E85(Wx) 000EA3(Rx) 000ECC(Rx) 000F7D(Rx) 000FA9(Rx) 000FD6(Rx) 001003(Wx) 0012DB(Rx) 0012E2(Wx) 001399(Wx) 00157F(Rx) 00158F(Wx) 00159D(Rx) 001C28(Rx) 001C31(Rx) 001C3B(Rx) 002131(Rx) 002152(Rx) 00218E(Wx) 002B71(R)  
; ram_0069                              = $0069 ; 000051(Wi) 00024F(Wy) 000D65(Rx) 000DE0(Rx) 000DF1(Rx) 000DFB(Rx) 000E01(Wx) 000E75(Rx) 000E85(Wx) 000EA3(Rx) 000ECC(Rx) 000F7D(Rx) 000FA9(Rx) 000FD6(Rx) 001003(Wx) 0012DB(Rx) 0012E2(Wx) 00157F(Rx) 00158F(Wx) 00159D(Rx) 001C28(Rx) 001C31(Rx) 001C3B(Rx) 00218E(Wx) 



; see con_plr_sub
ram_plr_handler                         = $006A ; 000051(Wi) 00024F(Wy) 000267(Wx) 000276(Wx) 00031E(Rx) 000365(W)  0003AB(Wx) 000CB0(R)  000D29(Rx) 000D5B(Wx) 000DEB(Wx) 000E66(Wx) 000ECA(Wx) 000ED2(Wx) 000EE0(Rx) 000F27(Wx) 000F4A(Rx) 000FFD(Wx) 001018(Rx) 00103B(Rx) 00108E(Wx) 001153(Rx) 001230(R)  001241(R)  00131C(Rx) 001393(Rx) 0013E9(Rx) 0013EF(Rx) 001458(Wx) 00154E(Wx) 001562(Rx) 00161A(Rx) 00161E(Wx) 00162B(Rx) 00163D(Wx) 00165F(Rx) 0016DE(Rx) 0016E2(Wx) 001736(Rx) 001748(Wx) 00175F(R)  00180E(Rx) 0018A6(Rx) 001C1E(Rx) 0020D8(Rx) 00217D(Rx) 0022D5(Ry) 002377(Ry) 00348F(Wx) 0034A2(Wx) 0034B4(Rx) 003514(Rx) 0036EF(W)  
; ram_006B                              = $006B ; 000051(Wi) 00024F(Wy) 000267(Wx) 000276(Wx) 00031E(Rx) 000367(W)  0003AB(Wx) 000CB4(R)  000D29(Rx) 000D5B(Wx) 000DEB(Wx) 000E66(Wx) 000ECA(Wx) 000ED2(Wx) 000EE0(Rx) 000F27(Wx) 000F4A(Rx) 000FFD(Wx) 001018(Rx) 00103B(Rx) 00108E(Wx) 001153(Rx) 001234(R)  001279(R)  00131C(Rx) 0013E9(Rx) 0013EF(Rx) 001458(Wx) 00154E(Wx) 001562(Rx) 00161A(Rx) 00161E(Wx) 00162B(Rx) 00163D(Wx) 00165F(Rx) 0016DE(Rx) 001736(Rx) 001748(Wx) 001763(R)  00180E(Rx) 0018A6(Rx) 001C1E(Rx) 0020D8(Rx) 00217D(Rx) 0022D5(Ry) 002377(Ry) 00348F(Wx) 0034A2(Wx) 0034B4(Rx) 003514(Rx) 



; 
ram_006C_plr                            = $006C ; 000051(Wi) 00024F(Wy) 0003A5(Wx) 000DB2(Wx) 000DB4(Rx) 000DBD(Wx) 000E0F(Rx) 001007(Wx) 0010E7(Rx) 0010F5(Rx) 003489(Wx) 0034B6(Rx) 00351B(Rx) 00351F(Wx) 
; ram_006D                              = $006D ; 000051(Wi) 00024F(Wy) 0003A5(Wx) 000DB2(Wx) 000DB4(Rx) 000DBD(Wx) 000E0F(Rx) 001007(Wx) 0010E7(Rx) 0010F5(Rx) 003489(Wx) 0034B6(Rx) 00351B(Rx) 00351F(Wx) 



; 
ram_006E_plr                            = $006E ; 000051(Wi) 00024F(Wy) 000D54(Wx) 000DE4(Rx) 000E94(Wx) 000ED4(Rx) 001009(Wx) 001159(Rx) 00115F(Wx) 001172(Rx) 0012E6(Wx) 00159B(Wx) 
; ram_006F                              = $006F ; 000051(Wi) 00024F(Wy) 000D54(Wx) 000DE4(Rx) 000E94(Wx) 000ED4(Rx) 001009(Wx) 001159(Rx) 00115F(Wx) 001172(Rx) 0012E6(Wx) 00159B(Wx) 



; 
ram_0070_plr                            = $0070 ; 000051(Wi) 00024F(Wy) 0003A3(Wx) 000C11(W)  000D0E(Wx) 000DD4(Rx) 000DDA(Rx) 000E39(Rx) 000E53(Rx) 000E7F(Rx) 000FF2(Rx) 00100C(Rx) 001589(Rx) 002C48(Rx) 
; ram_0071                              = $0071 ; 000051(Wi) 00024F(Wy) 0003A3(Wx) 000C23(W)  000D0E(Wx) 000DD4(Rx) 000DDA(Rx) 000E39(Rx) 000E53(Rx) 000E7F(Rx) 000FF2(Rx) 00100C(Rx) 001589(Rx) 002C48(Rx) 



; 
ram_0072_plr                            = $0072 ; 000051(Wi) 00024F(Wy) 00117B(Rx) 00117D(Wx) 
; ram_0073                              = $0073 ; 000051(Wi) 00024F(Wy) 00117B(Rx) 00117D(Wx) 



; free addresses
; ram_0074                              = $0074 ; 000051(Wi) 00024F(Wy) 
; ram_0075                              = $0075 ; 000051(Wi) 00024F(Wy) 



; 
ram_0076_plr                            = $0076 ; 000051(Wi) 00024F(Wy) 001161(Rx) 001166(Wx) 
; ram_0077                              = $0077 ; 000051(Wi) 00024F(Wy) 001161(Rx) 001166(Wx) 



; 0x00020E
ram_range_0078_00EF                     = $0078 ; for common links



; free address, but a start of ram_range_0078_00EF
; ram_0078                              = $0078 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 



; free address
; ram_0079                              = $0079 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 



; 
ram_007A                                = $007A ; 000051(Wi) 00020E(Wx) 00024F(Wy) 00032F(W)  0003F3(W)  00040F(R)  00190A(W)  



; free address
; ram_007B                              = $007B ; 000051(Wi) 00020E(Wx) 00024F(Wy) 



; 
ram_007C                                = $007C ; 000051(Wi) 00020A(W)  00020E(Wx) 00024F(Wy) 001801(R)  001805(W)  00219F(R)  0021EE(W)  002214(W)  002227(W)  002250(W)  00227C(W)  0031C0(R)  



; 
ram_007D_plr                            = $007D ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001AD3(Wx) 001CE2(Rx) 001E0C(Wx) 
; ram_007E                              = $007E ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001AD3(Wx) 001CE2(Rx) 001E0C(Wx) 



; 
ram_007F                                = $007F ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001CE2(Rx) 001E63(Wx) 



; 
ram_0080_plr                            = $0080 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001059(Wx) 001AB0(Wx) 001DD9(Rx) 001DDF(Wx) 002BBF(Wx) 
; ram_0081                              = $0081 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001059(Wx) 001AB0(Wx) 001DD9(Rx) 001DDF(Wx) 002BBF(Wx) 



; 
ram_0082_plr                            = $0082 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 000D74(Wx) 000F6D(Wx) 00105D(Wx) 001BD6(Rx) 001E13(Rx) 
; ram_0083                              = $0083 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 000D74(Wx) 000F6D(Wx) 00105D(Wx) 001BD6(Rx) 001E13(Rx) 



; 
ram_0084_plr                            = $0084 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 0002EE(W)  001ADD(Rx) 001AE1(Wx) 001C82(R)  001CA7(Rx) 001CAD(Rx) 001DC1(Rx) 001DC3(Wx) 001E1A(Rx) 001E1E(Wx) 003483(R)  0034A4(W)  
; ram_0085                              = $0085 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001ADD(Rx) 001AE1(Wx) 001C90(R)  001CA7(Rx) 001CAD(Rx) 001DC1(Rx) 001DC3(Wx) 001E1A(Rx) 001E1E(Wx) 



; 
ram_0086_plr                            = $0086 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 000D60(Wx) 000EC0(Wx) 000EFF(Rx) 001037(Rx) 00105B(Wx) 0012BD(W)  002BC1(Wx) 
; ram_0087                              = $0087 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 000D60(Wx) 000EC0(Wx) 000EFF(Rx) 001037(Rx) 00105B(Wx) 0012BF(W)  002BC1(Wx) 



; 
ram_0088_plr                            = $0088 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 000D63(Wx) 000EC2(Wx) 000F37(Rx) 000F58(Wx) 000F63(Wx) 0012C1(W)  
; ram_0089                              = $0089 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 000D63(Wx) 000EC2(Wx) 000F37(Rx) 000F58(Wx) 000F63(Wx) 0012C3(W)  



; 
ram_008A                                = $008A ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001837(R)  00183C(W)  001921(R)  



; 
ram_008B                                = $008B ; 000051(Wi) 00020E(Wx) 00024F(Wy) 000291(W)  001831(W)  001863(W)  0018E8(W)  



; 00 = 
; not 00 = 
ram_008C_flag                           = $008C ; 000051(Wi) 00020E(Wx) 00024F(Wy) 000C0B(R)  000CB8(R)  0017EE(R)  001833(W)  00183F(R)  001869(W)  0018A0(R)  0018BF(R)  0018EE(W)  



; 
ram_008D                                = $008D ; 000051(Wi) 00020E(Wx) 00024F(Wy) 0002B9(W)  000CE7(R)  00191F(R)  003303(R)  003312(W)  003344(W)  003346(R)  003393(R)  0033CD(R)  0033F0(R)  003435(R)  



; free addresses
; ram_008E                              = $008E ; 000051(Wi) 00020E(Wx) 00024F(Wy) 
; ram_008F                              = $008F ; 000051(Wi) 00020E(Wx) 00024F(Wy) 



; 
ram_0090                                = $0090 ; 000051(Wi) 00020E(Wx) 000223(W)  00024F(Wy) 000257(W)  001218(R)  001814(R)  001829(R)  001835(W)  00187B(R)  001DFF(R)  002037(R)  002199(R)  0021D3(R)  0021E3(R)  00264D(R)  002707(R)  002BC7(R)  002BD1(R)  002DE7(R)  002EE5(R)  002FCD(R)  003069(R)  00309C(R)  0030A8(R)  0031E3(R)  



; 
ram_0091_obj                            = $0091 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001127(Ry) 001130(Wy) 00135D(Wy) 001410(Wy) 001B3C(Ry) 002B7E(Wx) 002C63(Rx) 003706(Wx) 003835(W)  00384D(R)  00389D(R)  0038A6(W)  0038B6(W)  003926(W)  
; ram_0092                              = $0092 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001127(Ry) 001410(Wy) 001877(Rx) 001B3C(Ry) 0021AD(R)  0021B5(W)  00221A(R)  002222(W)  002237(R)  002253(R)  002268(R)  002270(W)  002B7E(Wx) 002C63(Rx) 002E28(Rx) 002FC9(Rx) 0031BE(R)  003706(Wx) 
; ram_0093                              = $0093 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001127(Ry) 001130(Wy) 00135D(Wy) 001410(Wy) 001877(Rx) 001B3C(Ry) 002B7E(Wx) 002C63(Rx) 002C82(Wx) 002E28(Rx) 002EA6(Wx) 002F05(Wx) 003003(Rx) 00301A(Wx) 0030B7(Wx) 0030EC(Rx) 003706(Wx) 
; ram_0094                              = $0094 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001127(Ry) 0013AD(Wy) 001410(Wy) 001877(Rx) 001B3C(Ry) 002B7E(Wx) 002C63(Rx) 002C82(Wx) 002E28(Rx) 002EA6(Wx) 002F05(Wx) 003003(Rx) 00301A(Wx) 0030B7(Wx) 0030EC(Rx) 003706(Wx) 003718(Wx) 00372F(Rx) 
; ram_0095                              = $0095 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001127(Ry) 0013AD(Wy) 001877(Rx) 001B3C(Ry) 002B7E(Wx) 002C63(Rx) 002C82(Wx) 002E28(Rx) 003706(Wx) 003718(Wx) 00372F(Rx) 
; ram_0096                              = $0096 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001127(Ry) 00136C(Ry) 0013AD(Wy) 001410(Wy) 001877(Rx) 001B3C(Ry) 001E3F(Rx) 002B7E(Wx) 002C63(Rx) 002C82(Wx) 002E28(Rx) 0030EE(Wx) 003706(Wx) 003718(Wx) 00372F(Rx) 
; ram_0097                              = $0097 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001127(Ry) 0013AD(Wy) 001410(Wy) 001877(Rx) 001B3C(Ry) 001E3F(Rx) 002B7E(Wx) 002C63(Rx) 002C82(Wx) 002E28(Rx) 0030EE(Wx) 003706(Wx) 003718(Wx) 00372F(Rx) 
; ram_0098                              = $0098 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001127(Ry) 001877(Rx) 001B3C(Ry) 001E3F(Rx) 002C63(Rx) 002E28(Rx) 003706(Wx) 
; ram_0099                              = $0099 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001127(Ry) 001410(Wy) 001B35(Ry) 001B3C(Ry) 0021A6(Rx) 002B7E(Wx) 00313B(Rx) 003171(Wx) 003201(Wx) 00322F(Wx) 003706(Wx) 
; ram_009A                              = $009A ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001127(Ry) 001410(Wy) 001B35(Ry) 001B3C(Ry) 0021A6(Rx) 002B7E(Wx) 00313B(Rx) 003171(Wx) 003201(Wx) 00322F(Wx) 003706(Wx) 
; ram_009B                              = $009B ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001127(Ry) 001B35(Ry) 001B3C(Ry) 0021A6(Rx) 00313B(Rx) 003201(Wx) 003706(Wx) 



; 
ram_009C_obj_pos_X                      = $009C ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001B53(Ry) 001B5E(Ry) 001B64(Ry) 001B75(Ry) 002B52(Rx) 002F8E(Rx) 002F90(Wx) 003828(W)  003904(R)  
; ram_009D                              = $009D ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001B53(Ry) 001B5E(Ry) 001B64(Ry) 001B75(Ry) 0021D1(W)  002B52(Rx) 002E41(Rx) 002F29(Rx) 002F8E(Rx) 002F90(Wx) 002FDB(Rx) 
; ram_009E                              = $009E ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001B53(Ry) 001B5E(Ry) 001B64(Ry) 001B75(Ry) 002B52(Rx) 002E41(Rx) 002E9D(Rx) 002F52(Rx) 002F8E(Rx) 002F90(Wx) 003061(Wx) 0030DB(Wx) 0030EC(Rx) 00310A(Rx) 
; ram_009F                              = $009F ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001B53(Ry) 001B5E(Ry) 001B64(Ry) 001B75(Ry) 002B52(Rx) 002E41(Rx) 002E9D(Rx) 002F52(Rx) 002F8E(Rx) 002F90(Wx) 003061(Wx) 0030DB(Wx) 0030EC(Rx) 00310A(Rx) 00370F(Wx) 
; ram_00A0                              = $00A0 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001B75(Ry) 002B52(Rx) 00370F(Wx) 
; ram_00A1                              = $00A1 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001B53(Ry) 001B5E(Ry) 001B64(Ry) 001B75(Ry) 001E49(Rx) 002B52(Rx) 002E41(Rx) 002F8E(Rx) 002F90(Wx) 0030EE(Wx) 00310C(Wx) 00370F(Wx) 
; ram_00A2                              = $00A2 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 00095D(R)  001B53(Ry) 001B5E(Ry) 001B64(Ry) 001B75(Ry) 001E49(Rx) 002B52(Rx) 002E41(Rx) 002F8E(Rx) 002F90(Wx) 0030EE(Wx) 00310C(Wx) 00370F(Wx) 
; ram_00A3                              = $00A3 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 
; ram_00A4                              = $00A4 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001B75(Ry) 002B52(Rx) 003182(Wx) 0031D5(R)  0031E1(Wx) 00320A(Rx) 
; ram_00A5                              = $00A5 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001B75(Ry) 002B52(Rx) 003182(Wx) 0031D9(R)  0031E1(Wx) 00320A(Rx) 
; ram_00A6                              = $00A6 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001B75(Ry) 002B52(Rx) 0031DD(R)  0031E1(Wx) 00320A(Rx) 



; 
ram_00A7_obj_pos_Y                      = $00A7 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001B96(Ry) 002B56(Rx) 002C67(Rx) 002C76(Wx) 003823(W)  0038A9(R)  0038AE(W)  0038D8(W)  0038DB(W)  00390E(R)  
; ram_00A8                              = $00A8 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001B96(Ry) 0021EC(W)  002206(R)  00223D(R)  002242(W)  00225C(R)  00225E(W)  002B56(Rx) 002C67(Rx) 002C76(Wx) 002F3A(Rx) 002F3C(Wx) 002FB8(W)  002FBA(W)  
; ram_00A9                              = $00A9 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 0005FC(R)  001B96(Ry) 002788(R)  002B56(Rx) 002C67(Rx) 002C76(Wx) 002ED9(Wx) 002EE3(Wx) 002EF0(Rx) 002EF4(Wx) 0030D1(Wx) 0030EC(Rx) 
; ram_00AA                              = $00AA ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001B96(Ry) 002B56(Rx) 002C67(Rx) 002C76(Wx) 002ED9(Wx) 002EE3(Wx) 002EF0(Rx) 002EF4(Wx) 0030D1(Wx) 0030EC(Rx) 003714(Wx) 
; ram_00AB                              = $00AB ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001B96(Ry) 002B56(Rx) 002C67(Rx) 002C76(Wx) 003714(Wx) 
; ram_00AC                              = $00AC ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001B96(Ry) 002B56(Rx) 002C67(Rx) 002C76(Wx) 0030EE(Wx) 003714(Wx) 
; ram_00AD                              = $00AD ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001B96(Ry) 002B56(Rx) 002C67(Rx) 002C76(Wx) 0030EE(Wx) 003714(Wx) 
; ram_00AE                              = $00AE ; 000051(Wi) 00020E(Wx) 00024F(Wy) 
; ram_00AF                              = $00AF ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001B96(Ry) 002B56(Rx) 002C96(Rx) 002CA0(Wx) 003193(Rx) 003197(Wx) 0031F9(Wx) 003226(Rx) 003228(Wx) 
; ram_00B0                              = $00B0 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001B96(Ry) 002B56(Rx) 002C96(Rx) 002CA0(Wx) 003193(Rx) 003197(Wx) 0031F9(Wx) 003226(Rx) 003228(Wx) 
; ram_00B1                              = $00B1 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001B96(Ry) 002B56(Rx) 002C96(Rx) 003193(Rx) 003197(Wx) 0031F9(Wx) 003226(Rx) 003228(Wx) 



; 
ram_00B2_obj                            = $00B2 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001B4D(Ry) 00386C(R)  0038C3(R)  0038D2(R)  0038DD(R)  003929(W)  
; ram_00B3                              = $00B3 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 00187E(Rx) 001B4D(Ry) 001EC4(Rx) 0021E1(W)  0021E6(R)  002FC4(W)  002FD0(Rx) 
; ram_00B4                              = $00B4 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 00187E(Rx) 001B4D(Ry) 001EC4(Rx) 002EE8(Rx) 002EFC(Wx) 003025(Rx) 0030B3(Wx) 0030CC(Rx) 0030EC(Rx) 
; ram_00B5                              = $00B5 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 00187E(Rx) 001B4D(Ry) 001EC4(Rx) 002EE8(Rx) 002EFC(Wx) 003025(Rx) 0030B3(Wx) 0030CC(Rx) 0030EC(Rx) 
; ram_00B6                              = $00B6 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 
; ram_00B7                              = $00B7 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 00187E(Rx) 001B4D(Ry) 001E43(Rx) 001EC4(Rx) 0030EE(Wx) 
; ram_00B8                              = $00B8 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 00187E(Rx) 001B4D(Ry) 001E43(Rx) 001EC4(Rx) 0030EE(Wx) 
; ram_00B9                              = $00B9 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 
; ram_00BA                              = $00BA ; 000051(Wi) 00020E(Wx) 00024F(Wy) 0031FD(Wx) 00320E(Rx) 003234(Rx) 
; ram_00BB                              = $00BB ; 000051(Wi) 00020E(Wx) 00024F(Wy) 0031FD(Wx) 00320E(Rx) 003234(Rx) 
; ram_00BC                              = $00BC ; 000051(Wi) 00020E(Wx) 00024F(Wy) 0031FD(Wx) 00320E(Rx) 003234(Rx) 



; 
ram_00BD_obj                            = $00BD ; 000051(Wi) 00020E(Wx) 00024F(Wy) 002B5F(Rx) 003872(W)  
; ram_00BE                              = $00BE ; 000051(Wi) 00020E(Wx) 00024F(Wy) 0021CD(W)  002B5F(Rx) 002F5E(Rx) 002F63(Wx) 002F8B(Rx) 002FDD(Rx) 
; ram_00BF                              = $00BF ; 000051(Wi) 00020E(Wx) 00024F(Wy) 002B5F(Rx) 002F5E(Rx) 002F63(Wx) 002F8B(Rx) 00302A(Rx) 00305F(Wx) 0030D9(Wx) 0030EC(Rx) 003103(Rx) 
; ram_00C0                              = $00C0 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 002B5F(Rx) 002F5E(Rx) 002F63(Wx) 002F8B(Rx) 00302A(Rx) 00305F(Wx) 0030D9(Wx) 0030EC(Rx) 003103(Rx) 00371A(Wx) 
; ram_00C1                              = $00C1 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 002B5F(Rx) 00371A(Wx) 
; ram_00C2                              = $00C2 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001E99(Rx) 002B5F(Rx) 002F8B(Rx) 0030EE(Wx) 00371A(Wx) 
; ram_00C3                              = $00C3 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001E99(Rx) 002B5F(Rx) 002F8B(Rx) 0030EE(Wx) 00371A(Wx) 
; ram_00C4                              = $00C4 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 
; ram_00C5                              = $00C5 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 002B5F(Rx) 003135(Rx) 003139(Wx) 
; ram_00C6                              = $00C6 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 002B5F(Rx) 003135(Rx) 003139(Wx) 
; ram_00C7                              = $00C7 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 002B5F(Rx) 003135(Rx) 003139(Wx) 



; free addresses
; ram_00C8                              = $00C8 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 
; ram_00C9                              = $00C9 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 
; ram_00CA                              = $00CA ; 000051(Wi) 00020E(Wx) 00024F(Wy) 
; ram_00CB                              = $00CB ; 000051(Wi) 00020E(Wx) 00024F(Wy) 
; ram_00CC                              = $00CC ; 000051(Wi) 00020E(Wx) 00024F(Wy) 
; ram_00CD                              = $00CD ; 000051(Wi) 00020E(Wx) 00024F(Wy) 
; ram_00CE                              = $00CE ; 000051(Wi) 00020E(Wx) 00024F(Wy) 
; ram_00CF                              = $00CF ; 000051(Wi) 00020E(Wx) 00024F(Wy) 
; ram_00D0                              = $00D0 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 
; ram_00D1                              = $00D1 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 
; ram_00D2                              = $00D2 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 



; 
ram_00D3                                = $00D3 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 003747(W)  003749(R)  003751(W)  



; 
ram_00D4                                = $00D4 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 00038B(W)  0003EA(W)  001BF6(Wx) 001BFF(Rx) 001CD1(Rx) 003753(W)  003755(R)  00375D(W)  00375F(R)  003773(R)  
; ram_00D5                              = $00D5 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 000389(W)  0003EC(W)  001530(R)  001BF6(Wx) 001BFF(Rx) 001CD1(Rx) 003640(R)  00377D(R)  003783(R)  00379D(R)  0037B0(W)  



; at bonus stages
ram_giant_bird_X_pos                    = $00D6 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 0003E3(W)  001536(R)  001CD1(Rx) 001E6A(W)  00368E(R)  003768(R)  0037A4(R)  0037A6(W)  
ram_giant_bird_Y_pos                    = $00D7 ; warning ram_00D7


; 
ram_00D7                                = $00D7 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 000385(W)  0003E6(W)  0003F8(R)  000429(W)  00042B(W)  001967(Rx) 001BDB(Wx) 001BF8(Rx) 001C0D(Rx) 001CC3(Rx) 001E02(Rx) 003696(R)  00376C(R)  
; ram_00D8                              = $00D8 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001967(Rx) 001BDB(Wx) 001BF8(Rx) 001C0D(Rx) 001CC3(Rx) 001E02(Rx) 



; 
ram_00D9                                = $00D9 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 001CC3(Rx) 001E47(W)  001E79(R)  



; 
ram_00DA_plr                            = $00DA ; 000051(Wi) 00020E(Wx) 00021F(W)  00024F(Wy) 001D34(Rx) 001D7A(Rx) 001DAC(Wx) 
; ram_00DB                              = $00DB ; 000051(Wi) 00020E(Wx) 000226(W)  00024F(Wy) 001D34(Rx) 001DAC(Wx) 



; 
ram_00DC                                = $00DC ; 000051(Wi) 00020E(Wx) 00024F(Wy) 002FAA(R)  002FB6(W)  002FC2(W)  002FE8(R)  002FEF(W)  



; loop counter, used only in 1 subroutine
ram_00DD_temp                           = $00DD ; 000051(Wi) 00020E(Wx) 00024F(Wy) 002FB4(W)  002FBC(W)  



; 00 = 
; 01 = 
ram_00DE_flag                           = $00DE ; 000051(Wi) 00008D(R)  0000B6(W)  00020E(Wx) 00024F(Wy) 001908(W)  



; 
ram_00DF_counter                        = $00DF ; 000051(Wi) 00020E(Wx) 00024F(Wy) 0021F9(W)  002218(W)  00222D(W)  002248(W)  00224E(W)  002264(W)  



; 
ram_00E0_plr                            = $00E0 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 000850(Rx) 00085E(Wx) 000D5E(Wx) 000EBE(Wx) 001031(Rx) 0010D2(Wx) 00148B(Wx) 001649(Wx) 0016EA(Wx) 002BBD(Wx) 003529(Wx) 
; ram_00E1                              = $00E1 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 000850(Rx) 00085E(Wx) 000D5E(Wx) 000EBE(Wx) 001031(Rx) 0010D2(Wx) 00148B(Wx) 001649(Wx) 002BBD(Wx) 003529(Wx) 



; 
ram_00E2_plr                            = $00E2 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 00087B(Rx) 000E6F(Wx) 000E9D(Wx) 00113D(Wx) 001579(Wx) 003493(Wx) 
; ram_00E3                              = $00E3 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 00087B(Rx) 000E6F(Wx) 000E9D(Wx) 00113D(Wx) 001579(Wx) 003493(Wx) 



; 
ram_00E4_plr                            = $00E4 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 000881(Rx) 000E73(Wx) 000EA1(Wx) 001139(Wx) 00157D(Wx) 00348C(Wx) 
; ram_00E5                              = $00E5 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 000881(Rx) 000E73(Wx) 000EA1(Wx) 001139(Wx) 00157D(Wx) 00348C(Wx) 



; 
ram_00E6_plr                            = $00E6 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 000854(Wx) 000863(Rx) 000872(Rx) 000876(Wx) 00088C(Rx) 000D58(Wx) 000E79(Rx) 000F40(Rx) 001051(Rx) 001298(R)  00129D(W)  0012AE(Rx) 0014BE(Rx) 0014DC(Wx) 001583(Rx) 001622(Wx) 001635(Rx) 0016E6(Wx) 0016F0(Rx) 00172D(Wx) 002113(Rx) 002140(Rx) 
; ram_00E7                              = $00E7 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 000854(Wx) 000863(Rx) 000872(Rx) 000876(Wx) 00088C(Rx) 000D58(Wx) 000E79(Rx) 000F40(Rx) 001051(Rx) 00129B(R)  0012A0(W)  0012AE(Rx) 0014BE(Rx) 001583(Rx) 001622(Wx) 001635(Rx) 0016F0(Rx) 00172D(Wx) 002113(Rx) 002140(Rx) 



; 
ram_00E8_plr                            = $00E8 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 000858(Wx) 00086B(Rx) 000870(Wx) 000887(Rx) 000D52(Wx) 000F50(Rx) 0012A2(R)  0012A7(W)  001731(Wx) 
; ram_00E9                              = $00E9 ; 000051(Wi) 00020E(Wx) 00024F(Wy) 000858(Wx) 00086B(Rx) 000870(Wx) 000887(Rx) 000D52(Wx) 000F50(Rx) 0012A5(R)  0012AA(W)  001731(Wx) 



; 
ram_00EA_plr                            = $00EA ; 000051(Wi) 00020E(Wx) 00024F(Wy) 00085C(Wx) 000878(Rx) 00087D(Wx) 000885(Rx) 000889(Wx) 
; ram_00EB                              = $00EB ; 000051(Wi) 00020E(Wx) 00024F(Wy) 00085C(Wx) 000878(Rx) 00087D(Wx) 000885(Rx) 000889(Wx) 



; free addresses
; ram_00EC                              = $00EC ; 000051(Wi) 00020E(Wx) 00024F(Wy) 
; ram_00ED                              = $00ED ; 000051(Wi) 00020E(Wx) 00024F(Wy) 
; ram_00EE                              = $00EE ; 000051(Wi) 00020E(Wx) 00024F(Wy) 
; ram_00EF                              = $00EF ; 000051(Wi) 00020E(Wx) 00024F(Wy) 



; a copy of ram_sfx_3
ram_copy_sfx_3                          = $00F0 ; 000051(Wi) 0039BB(W)  0039D8(W)  0039FD(R)  003A1C(W)  003A48(W)  003A50(W)  003BD2(R)  003BF2(R)  



; a copy of ram_sfx_2
ram_copy_sfx_2                          = $00F1 ; 000051(Wi) 003A74(W)  003A93(W)  003ACC(W)  003AD6(R)  003AFC(W)  003B09(W)  003B27(W)  003C9A(R)  003CBC(R)  



; a copy of ram_sfx_1
ram_copy_sfx_1                          = $00F2 ; 000051(Wi) 003B81(W)  003BAE(W)  003BB3(R)  003BCB(W)  003BEB(W)  



; currently playing music?
ram_music_2                             = $00F3 ; 000051(Wi) 00394C(R)  003C10(R)  003C19(R)  003C21(W)  003C6E(R)  003C8B(W)  003CC0(R)  



; 
ram_00F4                                = $00F4 ; 000051(Wi) 0039BF(W)  0039C1(R)  0039DC(W)  0039E0(R)  003A20(W)  003A2B(R)  003A42(W)  003A54(W)  003A5A(R)  



; for sound engine
ram_00F5_se                             = $00F5 ; 000051(Wi) 00399C(R)  003C32(W)  



; for sound engine
; ($indirect),Y
ram_00F6_se_data                        = $00F6 ; 000051(Wi) 003C37(W)  
; ram_00F7                              = $00F7 ; 000051(Wi) 003C3C(W)  



; for sound engine
ram_00F8_se                             = $00F8 ; 000051(Wi) 003C25(W)  003C66(R)  003C68(W)  



; for sound engine
ram_00F9_se                             = $00F9 ; 000051(Wi) 003C46(W)  003CD4(R)  003CDD(R)  003CDF(W)  



; for sound engine
ram_00FA_se                             = $00FA ; 000051(Wi) 003C41(W)  003D0A(R)  003D13(W)  



; music you want to play?
ram_music_1                             = $00FB ; 000051(Wi) 000103(W)  000183(W)  0001DE(W)  0002B2(W)  000398(W)  00049E(W)  0004BB(W)  001509(W)  001552(W)  0036F7(W)  003947(W)  003C0C(R)  003C1F(R)  



; 
ram_sfx_1                               = $00FC ; 000051(Wi) 001453(W)  001AC9(W)  001DBB(W)  001DF8(W)  001EBB(W)  002D22(W)  003945(W)  003BB1(R)  003BB5(W)  003BBC(W)  003BC3(W)  



; 
ram_00FD_music                          = $00FD ; 000051(Wi) 003C1D(W)  003C74(R)  



; 
ram_sfx_2                               = $00FE ; 000051(Wi) 0013B9(W)  00143E(W)  002A43(W)  003017(W)  00316D(W)  00356C(W)  003943(W)  003AD4(R)  003AD8(W)  003ADF(W)  003AE6(W)  003AF0(W)  003AF4(W)  



; 
ram_sfx_3                               = $00FF ; 000051(Wi) 000E6A(W)  00144E(W)  001470(W)  002280(W)  0034C5(W)  003525(W)  003941(W)  0039FB(R)  0039FF(W)  003A06(W)  003A0D(W)  003A14(W)  



; 0100-01FF (100) stack
; not used directly
; excess referrencess are from BIT instructions
; ram_0100                              = $0100 ; 000051(Wi) 
; ram_0101                              = $0101 ; 000051(Wi) 
; ram_0102                              = $0102 ; 000051(Wi) 
; ram_0103                              = $0103 ; 000051(Wi) 
; ram_0104                              = $0104 ; 000051(Wi) 
; ram_0105                              = $0105 ; 000051(Wi) 
; ram_0106                              = $0106 ; 000051(Wi) 
; ram_0107                              = $0107 ; 000051(Wi) 
; ram_0108                              = $0108 ; 000051(Wi) 
; ram_0109                              = $0109 ; 000051(Wi) 
; ram_010A                              = $010A ; 000051(Wi) 
; ram_010B                              = $010B ; 000051(Wi) 
; ram_010C                              = $010C ; 000051(Wi) 
; ram_010D                              = $010D ; 000051(Wi) 
; ram_010E                              = $010E ; 000051(Wi) 
; ram_010F                              = $010F ; 000051(Wi) 
; ram_0110                              = $0110 ; 000051(Wi) 
; ram_0111                              = $0111 ; 000051(Wi) 
; ram_0112                              = $0112 ; 000051(Wi) 
; ram_0113                              = $0113 ; 000051(Wi) 
; ram_0114                              = $0114 ; 000051(Wi) 
; ram_0115                              = $0115 ; 000051(Wi) 
; ram_0116                              = $0116 ; 000051(Wi) 
; ram_0117                              = $0117 ; 000051(Wi) 
; ram_0118                              = $0118 ; 000051(Wi) 
; ram_0119                              = $0119 ; 000051(Wi) 
; ram_011A                              = $011A ; 000051(Wi) 
; ram_011B                              = $011B ; 000051(Wi) 
; ram_011C                              = $011C ; 000051(Wi) 
; ram_011D                              = $011D ; 000051(Wi) 
; ram_011E                              = $011E ; 000051(Wi) 
; ram_011F                              = $011F ; 000051(Wi) 
; ram_0120                              = $0120 ; 000051(Wi) 
; ram_0121                              = $0121 ; 000051(Wi) 
; ram_0122                              = $0122 ; 000051(Wi) 
; ram_0123                              = $0123 ; 000051(Wi) 
; ram_0124                              = $0124 ; 000051(Wi) 
; ram_0125                              = $0125 ; 000051(Wi) 
; ram_0126                              = $0126 ; 000051(Wi) 
; ram_0127                              = $0127 ; 000051(Wi) 
; ram_0128                              = $0128 ; 000051(Wi) 
; ram_0129                              = $0129 ; 000051(Wi) 
; ram_012A                              = $012A ; 000051(Wi) 
; ram_012B                              = $012B ; 000051(Wi) 
; ram_012C                              = $012C ; 000051(Wi) 
; ram_012D                              = $012D ; 000051(Wi) 
; ram_012E                              = $012E ; 000051(Wi) 
; ram_012F                              = $012F ; 000051(Wi) 
; ram_0130                              = $0130 ; 000051(Wi) 
; ram_0131                              = $0131 ; 000051(Wi) 
; ram_0132                              = $0132 ; 000051(Wi) 
; ram_0133                              = $0133 ; 000051(Wi) 
; ram_0134                              = $0134 ; 000051(Wi) 
; ram_0135                              = $0135 ; 000051(Wi) 
; ram_0136                              = $0136 ; 000051(Wi) 
; ram_0137                              = $0137 ; 000051(Wi) 
; ram_0138                              = $0138 ; 000051(Wi) 
; ram_0139                              = $0139 ; 000051(Wi) 
; ram_013A                              = $013A ; 000051(Wi) 
; ram_013B                              = $013B ; 000051(Wi) 
; ram_013C                              = $013C ; 000051(Wi) 
; ram_013D                              = $013D ; 000051(Wi) 
; ram_013E                              = $013E ; 000051(Wi) 
; ram_013F                              = $013F ; 000051(Wi) 
; ram_0140                              = $0140 ; 000051(Wi) 
; ram_0141                              = $0141 ; 000051(Wi) 
; ram_0142                              = $0142 ; 000051(Wi) 
; ram_0143                              = $0143 ; 000051(Wi) 
; ram_0144                              = $0144 ; 000051(Wi) 
; ram_0145                              = $0145 ; 000051(Wi) 
; ram_0146                              = $0146 ; 000051(Wi) 
; ram_0147                              = $0147 ; 000051(Wi) 
; ram_0148                              = $0148 ; 000051(Wi) 
; ram_0149                              = $0149 ; 000051(Wi) 
; ram_014A                              = $014A ; 000051(Wi) 
; ram_014B                              = $014B ; 000051(Wi) 
; ram_014C                              = $014C ; 000051(Wi) 
; ram_014D                              = $014D ; 000051(Wi) 
; ram_014E                              = $014E ; 000051(Wi) 
; ram_014F                              = $014F ; 000051(Wi) 
; ram_0150                              = $0150 ; 000051(Wi) 
; ram_0151                              = $0151 ; 000051(Wi) 
; ram_0152                              = $0152 ; 000051(Wi) 
; ram_0153                              = $0153 ; 000051(Wi) 
; ram_0154                              = $0154 ; 000051(Wi) 
; ram_0155                              = $0155 ; 000051(Wi) 
; ram_0156                              = $0156 ; 000051(Wi) 
; ram_0157                              = $0157 ; 000051(Wi) 
; ram_0158                              = $0158 ; 000051(Wi) 
; ram_0159                              = $0159 ; 000051(Wi) 
; ram_015A                              = $015A ; 000051(Wi) 
; ram_015B                              = $015B ; 000051(Wi) 
; ram_015C                              = $015C ; 000051(Wi) 
; ram_015D                              = $015D ; 000051(Wi) 
; ram_015E                              = $015E ; 000051(Wi) 
; ram_015F                              = $015F ; 000051(Wi) 
; ram_0160                              = $0160 ; 000051(Wi) 
; ram_0161                              = $0161 ; 000051(Wi) 
; ram_0162                              = $0162 ; 000051(Wi) 
; ram_0163                              = $0163 ; 000051(Wi) 
; ram_0164                              = $0164 ; 000051(Wi) 
; ram_0165                              = $0165 ; 000051(Wi) 
; ram_0166                              = $0166 ; 000051(Wi) 
; ram_0167                              = $0167 ; 000051(Wi) 
; ram_0168                              = $0168 ; 000051(Wi) 
; ram_0169                              = $0169 ; 000051(Wi) 
; ram_016A                              = $016A ; 000051(Wi) 
; ram_016B                              = $016B ; 000051(Wi) 
; ram_016C                              = $016C ; 000051(Wi) 
; ram_016D                              = $016D ; 000051(Wi) 
; ram_016E                              = $016E ; 000051(Wi) 
; ram_016F                              = $016F ; 000051(Wi) 
; ram_0170                              = $0170 ; 000051(Wi) 
; ram_0171                              = $0171 ; 000051(Wi) 
; ram_0172                              = $0172 ; 000051(Wi) 
; ram_0173                              = $0173 ; 000051(Wi) 
; ram_0174                              = $0174 ; 000051(Wi) 
; ram_0175                              = $0175 ; 000051(Wi) 
; ram_0176                              = $0176 ; 000051(Wi) 
; ram_0177                              = $0177 ; 000051(Wi) 
; ram_0178                              = $0178 ; 000051(Wi) 
; ram_0179                              = $0179 ; 000051(Wi) 
; ram_017A                              = $017A ; 000051(Wi) 
; ram_017B                              = $017B ; 000051(Wi) 
; ram_017C                              = $017C ; 000051(Wi) 
; ram_017D                              = $017D ; 000051(Wi) 
; ram_017E                              = $017E ; 000051(Wi) 
; ram_017F                              = $017F ; 000051(Wi) 
; ram_0180                              = $0180 ; 000051(Wi) 
; ram_0181                              = $0181 ; 000051(Wi) 
; ram_0182                              = $0182 ; 000051(Wi) 
; ram_0183                              = $0183 ; 000051(Wi) 
; ram_0184                              = $0184 ; 000051(Wi) 
; ram_0185                              = $0185 ; 000051(Wi) 
; ram_0186                              = $0186 ; 000051(Wi) 
; ram_0187                              = $0187 ; 000051(Wi) 
; ram_0188                              = $0188 ; 000051(Wi) 
; ram_0189                              = $0189 ; 000051(Wi) 
; ram_018A                              = $018A ; 000051(Wi) 
; ram_018B                              = $018B ; 000051(Wi) 
; ram_018C                              = $018C ; 000051(Wi) 
; ram_018D                              = $018D ; 000051(Wi) 
; ram_018E                              = $018E ; 000051(Wi) 
; ram_018F                              = $018F ; 000051(Wi) 
; ram_0190                              = $0190 ; 000051(Wi) 
; ram_0191                              = $0191 ; 000051(Wi) 
; ram_0192                              = $0192 ; 000051(Wi) 
; ram_0193                              = $0193 ; 000051(Wi) 
; ram_0194                              = $0194 ; 000051(Wi) 
; ram_0195                              = $0195 ; 000051(Wi) 
; ram_0196                              = $0196 ; 000051(Wi) 
; ram_0197                              = $0197 ; 000051(Wi) 
; ram_0198                              = $0198 ; 000051(Wi) 
; ram_0199                              = $0199 ; 000051(Wi) 
; ram_019A                              = $019A ; 000051(Wi) 
; ram_019B                              = $019B ; 000051(Wi) 
; ram_019C                              = $019C ; 000051(Wi) 
; ram_019D                              = $019D ; 000051(Wi) 
; ram_019E                              = $019E ; 000051(Wi) 
; ram_019F                              = $019F ; 000051(Wi) 
; ram_01A0                              = $01A0 ; 000051(Wi) 
; ram_01A1                              = $01A1 ; 000051(Wi) 
; ram_01A2                              = $01A2 ; 000051(Wi) 002289(R)  0025D7(R)  
; ram_01A3                              = $01A3 ; 000051(Wi) 
; ram_01A4                              = $01A4 ; 000051(Wi) 
; ram_01A5                              = $01A5 ; 000051(Wi) 
; ram_01A6                              = $01A6 ; 000051(Wi) 
; ram_01A7                              = $01A7 ; 000051(Wi) 
; ram_01A8                              = $01A8 ; 000051(Wi) 
; ram_01A9                              = $01A9 ; 000051(Wi) 000608(R)  000E8D(R)  000FFA(R)  001502(R)  00278B(R)  002B65(R)  
; ram_01AA                              = $01AA ; 000051(Wi) 
; ram_01AB                              = $01AB ; 000051(Wi) 
; ram_01AC                              = $01AC ; 000051(Wi) 
; ram_01AD                              = $01AD ; 000051(Wi) 
; ram_01AE                              = $01AE ; 000051(Wi) 
; ram_01AF                              = $01AF ; 000051(Wi) 
; ram_01B0                              = $01B0 ; 000051(Wi) 
; ram_01B1                              = $01B1 ; 000051(Wi) 
; ram_01B2                              = $01B2 ; 000051(Wi) 
; ram_01B3                              = $01B3 ; 000051(Wi) 
; ram_01B4                              = $01B4 ; 000051(Wi) 
; ram_01B5                              = $01B5 ; 000051(Wi) 
; ram_01B6                              = $01B6 ; 000051(Wi) 
; ram_01B7                              = $01B7 ; 000051(Wi) 
; ram_01B8                              = $01B8 ; 000051(Wi) 
; ram_01B9                              = $01B9 ; 000051(Wi) 
; ram_01BA                              = $01BA ; 000051(Wi) 
; ram_01BB                              = $01BB ; 000051(Wi) 
; ram_01BC                              = $01BC ; 000051(Wi) 
; ram_01BD                              = $01BD ; 000051(Wi) 
; ram_01BE                              = $01BE ; 000051(Wi) 
; ram_01BF                              = $01BF ; 000051(Wi) 
; ram_01C0                              = $01C0 ; 000051(Wi) 
; ram_01C1                              = $01C1 ; 000051(Wi) 
; ram_01C2                              = $01C2 ; 000051(Wi) 
; ram_01C3                              = $01C3 ; 000051(Wi) 
; ram_01C4                              = $01C4 ; 000051(Wi) 
; ram_01C5                              = $01C5 ; 000051(Wi) 
; ram_01C6                              = $01C6 ; 000051(Wi) 
; ram_01C7                              = $01C7 ; 000051(Wi) 
; ram_01C8                              = $01C8 ; 000051(Wi) 
; ram_01C9                              = $01C9 ; 000051(Wi) 
; ram_01CA                              = $01CA ; 000051(Wi) 
; ram_01CB                              = $01CB ; 000051(Wi) 
; ram_01CC                              = $01CC ; 000051(Wi) 
; ram_01CD                              = $01CD ; 000051(Wi) 
; ram_01CE                              = $01CE ; 000051(Wi) 
; ram_01CF                              = $01CF ; 000051(Wi) 
; ram_01D0                              = $01D0 ; 000051(Wi) 
; ram_01D1                              = $01D1 ; 000051(Wi) 
; ram_01D2                              = $01D2 ; 000051(Wi) 
; ram_01D3                              = $01D3 ; 000051(Wi) 
; ram_01D4                              = $01D4 ; 000051(Wi) 
; ram_01D5                              = $01D5 ; 000051(Wi) 
; ram_01D6                              = $01D6 ; 000051(Wi) 
; ram_01D7                              = $01D7 ; 000051(Wi) 
; ram_01D8                              = $01D8 ; 000051(Wi) 
; ram_01D9                              = $01D9 ; 000051(Wi) 
; ram_01DA                              = $01DA ; 000051(Wi) 
; ram_01DB                              = $01DB ; 000051(Wi) 
; ram_01DC                              = $01DC ; 000051(Wi) 
; ram_01DD                              = $01DD ; 000051(Wi) 
; ram_01DE                              = $01DE ; 000051(Wi) 
; ram_01DF                              = $01DF ; 000051(Wi) 
; ram_01E0                              = $01E0 ; 000051(Wi) 
; ram_01E1                              = $01E1 ; 000051(Wi) 
; ram_01E2                              = $01E2 ; 000051(Wi) 
; ram_01E3                              = $01E3 ; 000051(Wi) 
; ram_01E4                              = $01E4 ; 000051(Wi) 
; ram_01E5                              = $01E5 ; 000051(Wi) 
; ram_01E6                              = $01E6 ; 000051(Wi) 
; ram_01E7                              = $01E7 ; 000051(Wi) 
; ram_01E8                              = $01E8 ; 000051(Wi) 
; ram_01E9                              = $01E9 ; 000051(Wi) 
; ram_01EA                              = $01EA ; 000051(Wi) 
; ram_01EB                              = $01EB ; 000051(Wi) 
; ram_01EC                              = $01EC ; 000051(Wi) 
; ram_01ED                              = $01ED ; 000051(Wi) 
; ram_01EE                              = $01EE ; 000051(Wi) 
; ram_01EF                              = $01EF ; 000051(Wi) 
; ram_01F0                              = $01F0 ; 000051(Wi) 
; ram_01F1                              = $01F1 ; 000051(Wi) 
; ram_01F2                              = $01F2 ; 000051(Wi) 
; ram_01F3                              = $01F3 ; 000051(Wi) 
; ram_01F4                              = $01F4 ; 000051(Wi) 
; ram_01F5                              = $01F5 ; 000051(Wi) 
; ram_01F6                              = $01F6 ; 000051(Wi) 
; ram_01F7                              = $01F7 ; 000051(Wi) 
; ram_01F8                              = $01F8 ; 000051(Wi) 
; ram_01F9                              = $01F9 ; 000051(Wi) 
; ram_01FA                              = $01FA ; 000051(Wi) 
; ram_01FB                              = $01FB ; 000051(Wi) 
; ram_01FC                              = $01FC ; 000051(Wi) 
; ram_01FD                              = $01FD ; 000051(Wi) 
; ram_01FE                              = $01FE ; 000051(Wi) 
; ram_01FF                              = $01FF ; 000051(Wi) 



; 0200-02FF (100) OAM
ram_oam                                 = $0200 ; for common links
ram_spr_Y                               = $0200 ; 000051(Wi) 0004D8(W)  00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
ram_spr_T                               = $0201 ; 000051(Wi) 0004E0(Wx) 00078B(Wi) 0007E7(Wi) 001109(Wx) 
ram_spr_A                               = $0202 ; 000051(Wi) 0004E0(Wx) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 00110D(Rx) 001114(Wx) 
ram_spr_X                               = $0203 ; 000051(Wi) 0004E0(Wx) 00081B(Wi) 0034FE(Ry) 003504(Wy) 
; ram_0204                              = $0204 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0205                              = $0205 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 000E27(Ry) 000E2D(Wy) 001109(Wx) 
; ram_0206                              = $0206 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 00110D(Rx) 001114(Wx) 
; ram_0207                              = $0207 ; 000051(Wi) 00081B(Wi) 
; ram_0208                              = $0208 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0209                              = $0209 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 000E27(Ry) 000E2D(Wy) 000E49(Wy) 001109(Wx) 
; ram_020A                              = $020A ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 00110D(Rx) 001114(Wx) 
; ram_020B                              = $020B ; 000051(Wi) 00081B(Wi) 
; ram_020C                              = $020C ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_020D                              = $020D ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 001109(Wx) 
; ram_020E                              = $020E ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 00110D(Rx) 001114(Wx) 
; ram_020F                              = $020F ; 000051(Wi) 00081B(Wi) 003507(Ry) 00350D(Wy) 
; ram_0210                              = $0210 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0211                              = $0211 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 000E27(Ry) 000E2D(Wy) 001109(Wx) 
; ram_0212                              = $0212 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 00110D(Rx) 001114(Wx) 
; ram_0213                              = $0213 ; 000051(Wi) 00081B(Wi) 
; ram_0214                              = $0214 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0215                              = $0215 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 000E27(Ry) 000E2D(Wy) 000E50(Wy) 001109(Wx) 
; ram_0216                              = $0216 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 00110D(Rx) 001114(Wx) 
; ram_0217                              = $0217 ; 000051(Wi) 00081B(Wi) 
; ram_0218                              = $0218 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0219                              = $0219 ; 000051(Wi) 00078B(Wi) 002D5D(Wy) 
; ram_021A                              = $021A ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 000841(Wi) 
; ram_021B                              = $021B ; 000051(Wi) 00081B(Wi) 
; ram_021C                              = $021C ; 000051(Wi) 00080F(Wi) 00083B(Wi) 001046(Ry) 0013CB(Ry) 00155E(Wy) 001934(Ry) 002BA9(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_021D                              = $021D ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 
; ram_021E                              = $021E ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_021F                              = $021F ; 000051(Wi) 00081B(Wi) 0013D3(Ry) 001939(Ry) 001AE9(Ry) 
; ram_0220                              = $0220 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 001046(Ry) 0013CB(Ry) 00155E(Wy) 001934(Ry) 002BA9(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_0221                              = $0221 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 
; ram_0222                              = $0222 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_0223                              = $0223 ; 000051(Wi) 00081B(Wi) 0013D3(Ry) 001939(Ry) 001AE9(Ry) 
; ram_0224                              = $0224 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0225                              = $0225 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 001109(Wx) 
; ram_0226                              = $0226 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 00110D(Rx) 001114(Wx) 
; ram_0227                              = $0227 ; 000051(Wi) 00081B(Wi) 0034FE(Ry) 003504(Wy) 
; ram_0228                              = $0228 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0229                              = $0229 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 000E27(Ry) 000E2D(Wy) 001109(Wx) 
; ram_022A                              = $022A ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 00110D(Rx) 001114(Wx) 
; ram_022B                              = $022B ; 000051(Wi) 00081B(Wi) 
; ram_022C                              = $022C ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_022D                              = $022D ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 000E27(Ry) 000E2D(Wy) 000E49(Wy) 001109(Wx) 
; ram_022E                              = $022E ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 00110D(Rx) 001114(Wx) 
; ram_022F                              = $022F ; 000051(Wi) 00081B(Wi) 
; ram_0230                              = $0230 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0231                              = $0231 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 001109(Wx) 
; ram_0232                              = $0232 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 00110D(Rx) 001114(Wx) 
; ram_0233                              = $0233 ; 000051(Wi) 00081B(Wi) 003507(Ry) 00350D(Wy) 
; ram_0234                              = $0234 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0235                              = $0235 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 000E27(Ry) 000E2D(Wy) 001109(Wx) 
; ram_0236                              = $0236 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 00110D(Rx) 001114(Wx) 
; ram_0237                              = $0237 ; 000051(Wi) 00081B(Wi) 
; ram_0238                              = $0238 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0239                              = $0239 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 000E27(Ry) 000E2D(Wy) 000E50(Wy) 001109(Wx) 002D5D(Wy) 
; ram_023A                              = $023A ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 00110D(Rx) 001114(Wx) 
; ram_023B                              = $023B ; 000051(Wi) 00081B(Wi) 
; ram_023C                              = $023C ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_023D                              = $023D ; 000051(Wi) 00078B(Wi) 
; ram_023E                              = $023E ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 000841(Wi) 
; ram_023F                              = $023F ; 000051(Wi) 00081B(Wi) 
; ram_0240                              = $0240 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0241                              = $0241 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 003790(Wy) 
; ram_0242                              = $0242 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_0243                              = $0243 ; 000051(Wi) 00081B(Wi) 
; ram_0244                              = $0244 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0245                              = $0245 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 003790(Wy) 
; ram_0246                              = $0246 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_0247                              = $0247 ; 000051(Wi) 00081B(Wi) 
; ram_0248                              = $0248 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0249                              = $0249 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 003790(Wy) 
; ram_024A                              = $024A ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_024B                              = $024B ; 000051(Wi) 00081B(Wi) 
; ram_024C                              = $024C ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_024D                              = $024D ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 003790(Wy) 
; ram_024E                              = $024E ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_024F                              = $024F ; 000051(Wi) 00081B(Wi) 
; ram_0250                              = $0250 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0251                              = $0251 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 003788(Wy) 
; ram_0252                              = $0252 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_0253                              = $0253 ; 000051(Wi) 00081B(Wi) 
; ram_0254                              = $0254 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0255                              = $0255 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 003788(Wy) 
; ram_0256                              = $0256 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_0257                              = $0257 ; 000051(Wi) 00081B(Wi) 
; ram_0258                              = $0258 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0259                              = $0259 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 003788(Wy) 
; ram_025A                              = $025A ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_025B                              = $025B ; 000051(Wi) 00081B(Wi) 
; ram_025C                              = $025C ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_025D                              = $025D ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 003788(Wy) 
; ram_025E                              = $025E ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_025F                              = $025F ; 000051(Wi) 00081B(Wi) 
; ram_0260                              = $0260 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0261                              = $0261 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 
; ram_0262                              = $0262 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_0263                              = $0263 ; 000051(Wi) 00081B(Wi) 
; ram_0264                              = $0264 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0265                              = $0265 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 
; ram_0266                              = $0266 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_0267                              = $0267 ; 000051(Wi) 00081B(Wi) 
; ram_0268                              = $0268 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0269                              = $0269 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 
; ram_026A                              = $026A ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_026B                              = $026B ; 000051(Wi) 00081B(Wi) 
; ram_026C                              = $026C ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_026D                              = $026D ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 
; ram_026E                              = $026E ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_026F                              = $026F ; 000051(Wi) 00081B(Wi) 
; ram_0270                              = $0270 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0271                              = $0271 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 
; ram_0272                              = $0272 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_0273                              = $0273 ; 000051(Wi) 00081B(Wi) 
; ram_0274                              = $0274 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0275                              = $0275 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 
; ram_0276                              = $0276 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_0277                              = $0277 ; 000051(Wi) 00081B(Wi) 
; ram_0278                              = $0278 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0279                              = $0279 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 
; ram_027A                              = $027A ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_027B                              = $027B ; 000051(Wi) 00081B(Wi) 
; ram_027C                              = $027C ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_027D                              = $027D ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 
; ram_027E                              = $027E ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_027F                              = $027F ; 000051(Wi) 00081B(Wi) 
; ram_0280                              = $0280 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0281                              = $0281 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 
; ram_0282                              = $0282 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_0283                              = $0283 ; 000051(Wi) 00081B(Wi) 
; ram_0284                              = $0284 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0285                              = $0285 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 
; ram_0286                              = $0286 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_0287                              = $0287 ; 000051(Wi) 00081B(Wi) 
; ram_0288                              = $0288 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0289                              = $0289 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 
; ram_028A                              = $028A ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_028B                              = $028B ; 000051(Wi) 00081B(Wi) 
; ram_028C                              = $028C ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_028D                              = $028D ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 
; ram_028E                              = $028E ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_028F                              = $028F ; 000051(Wi) 00081B(Wi) 
; ram_0290                              = $0290 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0291                              = $0291 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 
; ram_0292                              = $0292 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_0293                              = $0293 ; 000051(Wi) 00081B(Wi) 
; ram_0294                              = $0294 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0295                              = $0295 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 
; ram_0296                              = $0296 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_0297                              = $0297 ; 000051(Wi) 00081B(Wi) 
; ram_0298                              = $0298 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_0299                              = $0299 ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 
; ram_029A                              = $029A ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_029B                              = $029B ; 000051(Wi) 00081B(Wi) 
; ram_029C                              = $029C ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002CAF(Rx) 002CBB(Wx) 
; ram_029D                              = $029D ; 000051(Wi) 00078B(Wi) 0007E7(Wi) 
; ram_029E                              = $029E ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 0007EA(Ri) 0007F0(Wi) 000841(Wi) 
; ram_029F                              = $029F ; 000051(Wi) 00081B(Wi) 
; ram_02A0                              = $02A0 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002295(Ry) 00262B(Wy) 002711(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_02A1                              = $02A1 ; 000051(Wi) 00078B(Wi) 002633(Wy) 002701(Wy) 
; ram_02A2                              = $02A2 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 000841(Wi) 002626(Wy) 0026E9(Wy) 
; ram_02A3                              = $02A3 ; 000051(Wi) 00081B(Wi) 002339(Ry) 00233C(Wy) 002893(Wy) 
; ram_02A4                              = $02A4 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 00262B(Wy) 002711(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_02A5                              = $02A5 ; 000051(Wi) 00078B(Wi) 002633(Wy) 002701(Wy) 
; ram_02A6                              = $02A6 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 000841(Wi) 002626(Wy) 0026E9(Wy) 
; ram_02A7                              = $02A7 ; 000051(Wi) 00081B(Wi) 002339(Ry) 00233C(Wy) 002893(Wy) 
; ram_02A8                              = $02A8 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 00262B(Wy) 002711(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_02A9                              = $02A9 ; 000051(Wi) 00078B(Wi) 001976(R)  002633(Wy) 002701(Wy) 
; ram_02AA                              = $02AA ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 000841(Wi) 002626(Wy) 0026E9(Wy) 
; ram_02AB                              = $02AB ; 000051(Wi) 00081B(Wi) 002339(Ry) 00233C(Wy) 002893(Wy) 
; ram_02AC                              = $02AC ; 000051(Wi) 00080F(Wi) 00083B(Wi) 00262B(Wy) 002711(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_02AD                              = $02AD ; 000051(Wi) 00078B(Wi) 002633(Wy) 002647(Wy) 002701(Wy) 
; ram_02AE                              = $02AE ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 000841(Wi) 002626(Wy) 0026E9(Wy) 
; ram_02AF                              = $02AF ; 000051(Wi) 00081B(Wi) 002339(Ry) 00233C(Wy) 002893(Wy) 
; ram_02B0                              = $02B0 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 00262B(Wy) 002711(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_02B1                              = $02B1 ; 000051(Wi) 00078B(Wi) 002633(Wy) 002701(Wy) 
; ram_02B2                              = $02B2 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 000841(Wi) 002626(Wy) 0026E9(Wy) 
; ram_02B3                              = $02B3 ; 000051(Wi) 00081B(Wi) 002339(Ry) 00233C(Wy) 002893(Wy) 
; ram_02B4                              = $02B4 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 00262B(Wy) 002711(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_02B5                              = $02B5 ; 000051(Wi) 00078B(Wi) 002633(Wy) 002647(Wy) 002701(Wy) 
; ram_02B6                              = $02B6 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 000841(Wi) 002626(Wy) 0026E9(Wy) 
; ram_02B7                              = $02B7 ; 000051(Wi) 00081B(Wi) 002339(Ry) 00233C(Wy) 002893(Wy) 
; ram_02B8                              = $02B8 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002295(Ry) 00262B(Wy) 002711(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_02B9                              = $02B9 ; 000051(Wi) 00078B(Wi) 002633(Wy) 002701(Wy) 
; ram_02BA                              = $02BA ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 000841(Wi) 002626(Wy) 0026E9(Wy) 
; ram_02BB                              = $02BB ; 000051(Wi) 00081B(Wi) 002339(Ry) 00233C(Wy) 002893(Wy) 
; ram_02BC                              = $02BC ; 000051(Wi) 00080F(Wi) 00083B(Wi) 00262B(Wy) 002711(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_02BD                              = $02BD ; 000051(Wi) 00078B(Wi) 002633(Wy) 002701(Wy) 
; ram_02BE                              = $02BE ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 000841(Wi) 002626(Wy) 0026E9(Wy) 
; ram_02BF                              = $02BF ; 000051(Wi) 00081B(Wi) 002339(Ry) 00233C(Wy) 002893(Wy) 
; ram_02C0                              = $02C0 ; 000051(Wi) 00083B(Wi) 00262B(Wy) 002711(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_02C1                              = $02C1 ; 000051(Wi) 002633(Wy) 002701(Wy) 
; ram_02C2                              = $02C2 ; 000051(Wi) 000841(Wi) 002626(Wy) 0026E9(Wy) 
; ram_02C3                              = $02C3 ; 000051(Wi) 002339(Ry) 00233C(Wy) 002893(Wy) 
; ram_02C4                              = $02C4 ; 000051(Wi) 00083B(Wi) 00262B(Wy) 002711(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_02C5                              = $02C5 ; 000051(Wi) 002633(Wy) 002647(Wy) 002701(Wy) 
; ram_02C6                              = $02C6 ; 000051(Wi) 000841(Wi) 002626(Wy) 0026E9(Wy) 
; ram_02C7                              = $02C7 ; 000051(Wi) 002339(Ry) 00233C(Wy) 002893(Wy) 
; ram_02C8                              = $02C8 ; 000051(Wi) 00083B(Wi) 00262B(Wy) 002711(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_02C9                              = $02C9 ; 000051(Wi) 002633(Wy) 002701(Wy) 
; ram_02CA                              = $02CA ; 000051(Wi) 000841(Wi) 002626(Wy) 0026E9(Wy) 
; ram_02CB                              = $02CB ; 000051(Wi) 002339(Ry) 00233C(Wy) 002893(Wy) 
; ram_02CC                              = $02CC ; 000051(Wi) 00083B(Wi) 00262B(Wy) 002711(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_02CD                              = $02CD ; 000051(Wi) 002633(Wy) 002647(Wy) 002701(Wy) 
; ram_02CE                              = $02CE ; 000051(Wi) 000841(Wi) 002626(Wy) 0026E9(Wy) 
; ram_02CF                              = $02CF ; 000051(Wi) 002339(Ry) 00233C(Wy) 002893(Wy) 
; ram_02D0                              = $02D0 ; 000051(Wi) 00083B(Wi) 001956(Ry) 00198C(Wy) 0019DE(Ry) 0019F3(Ry) 0019F9(Wy) 001A4C(Wy) 002295(Ry) 00262B(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_02D1                              = $02D1 ; 000051(Wi) 001998(Wy) 002633(Wy) 
; ram_02D2                              = $02D2 ; 000051(Wi) 000841(Wi) 001979(Wy) 001A22(Ry) 001A2A(Wy) 002626(Wy) 
; ram_02D3                              = $02D3 ; 000051(Wi) 001984(Wy) 001A05(Ry) 001A08(Wy) 001A51(Wy) 002339(Ry) 00233C(Wy) 002893(Wy) 
; ram_02D4                              = $02D4 ; 000051(Wi) 00083B(Wi) 001956(Ry) 00198C(Wy) 0019DE(Ry) 0019F3(Ry) 0019F9(Wy) 001A4C(Wy) 00262B(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_02D5                              = $02D5 ; 000051(Wi) 001998(Wy) 002633(Wy) 
; ram_02D6                              = $02D6 ; 000051(Wi) 000841(Wi) 001979(Wy) 001A22(Ry) 001A2A(Wy) 002626(Wy) 
; ram_02D7                              = $02D7 ; 000051(Wi) 001984(Wy) 001A05(Ry) 001A08(Wy) 001A51(Wy) 002339(Ry) 00233C(Wy) 002893(Wy) 
; ram_02D8                              = $02D8 ; 000051(Wi) 00083B(Wi) 001956(Ry) 00198C(Wy) 0019DE(Ry) 0019F3(Ry) 0019F9(Wy) 001A4C(Wy) 00262B(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_02D9                              = $02D9 ; 000051(Wi) 001998(Wy) 002633(Wy) 
; ram_02DA                              = $02DA ; 000051(Wi) 000841(Wi) 001979(Wy) 001A22(Ry) 001A2A(Wy) 002626(Wy) 
; ram_02DB                              = $02DB ; 000051(Wi) 001984(Wy) 001A05(Ry) 001A08(Wy) 001A51(Wy) 002339(Ry) 00233C(Wy) 002893(Wy) 
; ram_02DC                              = $02DC ; 000051(Wi) 00083B(Wi) 001956(Ry) 00198C(Wy) 0019DE(Ry) 0019F3(Ry) 0019F9(Wy) 001A4C(Wy) 00262B(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_02DD                              = $02DD ; 000051(Wi) 001998(Wy) 002633(Wy) 002647(Wy) 
; ram_02DE                              = $02DE ; 000051(Wi) 000841(Wi) 001979(Wy) 001A22(Ry) 001A2A(Wy) 002626(Wy) 
; ram_02DF                              = $02DF ; 000051(Wi) 001984(Wy) 001A05(Ry) 001A08(Wy) 001A51(Wy) 002339(Ry) 00233C(Wy) 002893(Wy) 
; ram_02E0                              = $02E0 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 001956(Ry) 00198C(Wy) 0019DE(Ry) 0019F3(Ry) 0019F9(Wy) 001A4C(Wy) 00262B(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_02E1                              = $02E1 ; 000051(Wi) 00078B(Wi) 001998(Wy) 002633(Wy) 
; ram_02E2                              = $02E2 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 000841(Wi) 001979(Wy) 001A22(Ry) 001A2A(Wy) 002626(Wy) 
; ram_02E3                              = $02E3 ; 000051(Wi) 00081B(Wi) 001984(Wy) 001A05(Ry) 001A08(Wy) 001A51(Wy) 002339(Ry) 00233C(Wy) 002893(Wy) 
; ram_02E4                              = $02E4 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 0019DE(Ry) 00262B(Wy) 002CAF(Rx) 002CBB(Wx) 
; ram_02E5                              = $02E5 ; 000051(Wi) 00078B(Wi) 002633(Wy) 002647(Wy) 
; ram_02E6                              = $02E6 ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 000841(Wi) 002626(Wy) 
; ram_02E7                              = $02E7 ; 000051(Wi) 00081B(Wi) 002339(Ry) 00233C(Wy) 002893(Wy) 
; ram_02E8                              = $02E8 ; 000051(Wi) 00080F(Wi) 00083B(Wi) 002295(Ry) 00262B(Wy) 002CAF(Rx) 002CBB(Wx) 002DAE(Wx) 
; ram_02E9                              = $02E9 ; 000051(Wi) 00078B(Wi) 002633(Wy) 002DB3(Wx) 
; ram_02EA                              = $02EA ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 000841(Wi) 002626(Wy) 002DB8(Wx) 
; ram_02EB                              = $02EB ; 000051(Wi) 00081B(Wi) 002339(Ry) 00233C(Wy) 002893(Wy) 002DBD(Wx) 
; ram_02EC                              = $02EC ; 000051(Wi) 00080F(Wi) 00083B(Wi) 00262B(Wy) 002CAF(Rx) 002CBB(Wx) 002DAE(Wx) 
; ram_02ED                              = $02ED ; 000051(Wi) 00078B(Wi) 002633(Wy) 002DB3(Wx) 
; ram_02EE                              = $02EE ; 000051(Wi) 000792(Ri) 000796(Wi) 0007B5(Wi) 000841(Wi) 002626(Wy) 002DB8(Wx) 
; ram_02EF                              = $02EF ; 000051(Wi) 00081B(Wi) 002339(Ry) 00233C(Wy) 002893(Wy) 002DBD(Wx) 
; ram_02F0                              = $02F0 ; 000051(Wi) 00083B(Wi) 00262B(Wy) 002CAF(Rx) 002CBB(Wx) 002DAE(Wx) 
; ram_02F1                              = $02F1 ; 000051(Wi) 002633(Wy) 002DB3(Wx) 
; ram_02F2                              = $02F2 ; 000051(Wi) 000841(Wi) 002626(Wy) 002DB8(Wx) 
; ram_02F3                              = $02F3 ; 000051(Wi) 002339(Ry) 00233C(Wy) 002893(Wy) 002DBD(Wx) 
; ram_02F4                              = $02F4 ; 000051(Wi) 00083B(Wi) 00262B(Wy) 002CAF(Rx) 002CBB(Wx) 002DAE(Wx) 
; ram_02F5                              = $02F5 ; 000051(Wi) 002633(Wy) 002647(Wy) 002DB3(Wx) 
; ram_02F6                              = $02F6 ; 000051(Wi) 000841(Wi) 002626(Wy) 002DB8(Wx) 
; ram_02F7                              = $02F7 ; 000051(Wi) 002339(Ry) 00233C(Wy) 002893(Wy) 002DBD(Wx) 
; ram_02F8                              = $02F8 ; 000051(Wi) 00083B(Wi) 00262B(Wy) 002CAF(Rx) 002CBB(Wx) 002DAE(Wx) 
; ram_02F9                              = $02F9 ; 000051(Wi) 002633(Wy) 002DB3(Wx) 
; ram_02FA                              = $02FA ; 000051(Wi) 000841(Wi) 002626(Wy) 002DB8(Wx) 
; ram_02FB                              = $02FB ; 000051(Wi) 002339(Ry) 00233C(Wy) 002893(Wy) 002DBD(Wx) 
; ram_02FC                              = $02FC ; 000051(Wi) 00083B(Wi) 00262B(Wy) 002CAF(Rx) 002CBB(Wx) 002DAE(Wx) 
; ram_02FD                              = $02FD ; 000051(Wi) 002633(Wy) 002647(Wy) 002DB3(Wx) 
; ram_02FE                              = $02FE ; 000051(Wi) 000841(Wi) 002626(Wy) 002DB8(Wx) 
; ram_02FF                              = $02FF ; 000051(Wi) 002339(Ry) 00233C(Wy) 002893(Wy) 002DBD(Wx) 



; index for ram_ppu_buffer
ram_buffer_index                        = $0300 ; 000051(Wi) 00016F(W)  000909(R)  000932(W)  001C7F(W)  001C96(R)  001CF4(W)  001E37(W)  001E6F(R)  001E8D(R)  0020A1(W)  0032FE(R)  00337A(W)  003664(R)  00367C(R)  0036AB(R)  



; unknown size, up to 032D was logged
ram_ppu_buffer                          = $0301 ; 000051(Wi) 000172(W)  00090F(Wx) 000B8D(Ri) 0019C0(R)  001C7A(R)  001CFC(Wy) 001D59(W)  001E32(R)  00292F(Wx) 002943(Rx) 002948(Wx) 0029A5(W)  003380(W)  003579(Wx) 00359C(W)  003684(Wx) 
; ram_0302                              = $0302 ; 000051(Wi) 000919(Wx) 000B52(Ri) 001CFC(Wy) 001D4E(W)  0020C5(Wy) 00292F(Wx) 00293A(Rx) 002940(Wx) 003386(W)  003579(Wx) 0035A5(W)  003684(Wx) 0036AE(Wy) 
; ram_0303                              = $0303 ; 000051(Wi) 000925(Wx) 000B58(Ri) 001CDC(Wy) 001D54(W)  0020A9(Wy) 00292F(Wx) 00338B(W)  003579(Wx) 0035AA(W)  003684(Wx) 
; ram_0304                              = $0304 ; 000051(Wi) 000941(Wx) 000952(Wx) 000B74(Ri) 001CFC(Wy) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 001E90(Wy) 0020AE(Wy) 00292F(Wx) 002A8A(Wx) 003372(Wy) 0033D8(Wy) 00358B(W)  0035C1(W)  003684(Wx) 
; ram_0305                              = $0305 ; 000051(Wi) 000941(Wx) 000952(Wx) 000B74(Ri) 000B8D(Ri) 001CF0(Wy) 001CFC(Wy) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020B3(Wy) 00292F(Wx) 002A7A(Wx) 002A84(Wx) 002A9A(Wx) 003372(Wy) 0033BE(Wy) 0033D8(Wy) 0033DB(Wy) 003408(Wy) 00358E(W)  0035C4(W)  003673(Wx) 
; ram_0306                              = $0306 ; 000051(Wi) 000941(Wx) 000952(Wx) 000B52(Ri) 000B74(Ri) 000B8D(Ri) 001CFC(Wy) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020C5(Wy) 00292F(Wx) 002A94(Wx) 003361(Wy) 003372(Wy) 0033BE(Wy) 0033D8(Wy) 0033DB(Wy) 0033DE(Wy) 003408(Wy) 003581(W)  0035CB(Wx) 003673(Wx) 0036E0(W)  
; ram_0307                              = $0307 ; 000051(Wi) 000941(Wx) 000952(Wx) 000B58(Ri) 000B74(Ri) 001CDC(Wy) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020A9(Wy) 00292F(Wx) 003361(Wy) 003372(Wy) 0033BE(Wy) 0033D8(Wy) 0033DB(Wy) 0033DE(Wy) 003408(Wy) 0035CB(Wx) 003673(Wx) 
; ram_0308                              = $0308 ; 000051(Wi) 00090F(Wx) 000937(Wx) 000941(Wx) 000B74(Ri) 000B8D(Ri) 001CFC(Wy) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 001E90(Wy) 0020AE(Wy) 00292F(Wx) 003361(Wy) 003372(Wy) 0033BE(Wy) 0033D8(Wy) 0033DB(Wy) 0033DE(Wy) 003408(Wy) 0035CB(Wx) 003669(Wx) 
; ram_0309                              = $0309 ; 000051(Wi) 00090F(Wx) 000919(Wx) 000937(Wx) 000B52(Ri) 000B74(Ri) 000B8D(Ri) 001CF0(Wy) 001CFC(Wy) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020B3(Wy) 00292F(Wx) 002968(Wx) 003361(Wy) 003372(Wy) 0033BE(Wy) 0033D8(Wy) 0033DB(Wy) 0033DE(Wy) 003408(Wy) 0035CB(Wx) 
; ram_030A                              = $030A ; 000051(Wi) 000919(Wx) 000925(Wx) 000B52(Ri) 000B58(Ri) 000B74(Ri) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020C5(Wy) 00292F(Wx) 002964(Wx) 003361(Wy) 003372(Wy) 0033BE(Wy) 0033D8(Wy) 0033DB(Wy) 0033DE(Wy) 003408(Wy) 
; ram_030B                              = $030B ; 000051(Wi) 000925(Wx) 000952(Wx) 000B58(Ri) 000B74(Ri) 000B8D(Ri) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020A9(Wy) 00292F(Wx) 002943(Rx) 002948(Wx) 002996(W)  003361(Wy) 003372(Wy) 0033BE(Wy) 0033DB(Wy) 0033DE(Wy) 003408(Wy) 
; ram_030C                              = $030C ; 000051(Wi) 000941(Wx) 000B52(Ri) 000B74(Ri) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020AE(Wy) 00292F(Wx) 00293A(Rx) 002940(Wx) 003372(Wy) 0033BE(Wy) 0033DE(Wy) 003408(Wy) 
; ram_030D                              = $030D ; 000051(Wi) 000952(Wx) 000B58(Ri) 000B74(Ri) 000B8D(Ri) 001CFC(Wy) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020B3(Wy) 00292F(Wx) 003361(Wy) 003372(Wy) 0033BE(Wy) 003408(Wy) 0036E3(W)  
; ram_030E                              = $030E ; 000051(Wi) 000941(Wx) 000B52(Ri) 000B74(Ri) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020C5(Wy) 00292F(Wx) 002A8A(Wx) 003361(Wy) 003372(Wy) 0033BE(Wy) 003408(Wy) 
; ram_030F                              = $030F ; 000051(Wi) 000937(Wx) 000952(Wx) 000B58(Ri) 000B74(Ri) 000B8D(Ri) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020A9(Wy) 00292F(Wx) 002A7A(Wx) 002A84(Wx) 002A9A(Wx) 003361(Wy) 003372(Wy) 0033BE(Wy) 003408(Wy) 
; ram_0310                              = $0310 ; 000051(Wi) 000941(Wx) 000B74(Ri) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020AE(Wy) 00292F(Wx) 002A94(Wx) 003361(Wy) 003372(Wy) 0033BE(Wy) 003408(Wy) 
; ram_0311                              = $0311 ; 000051(Wi) 000937(Wx) 000B74(Ri) 000B8D(Ri) 001CFC(Wy) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020B3(Wy) 00292F(Wx) 003361(Wy) 003372(Wy) 0033BE(Wy) 003408(Wy) 
; ram_0312                              = $0312 ; 000051(Wi) 000B52(Ri) 000B74(Ri) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020C5(Wy) 00292F(Wx) 003361(Wy) 003372(Wy) 0033BE(Wy) 003408(Wy) 
; ram_0313                              = $0313 ; 000051(Wi) 000B58(Ri) 000B74(Ri) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020A9(Wy) 00292F(Wx) 002968(Wx) 003361(Wy) 003372(Wy) 0033BE(Wy) 003408(Wy) 
; ram_0314                              = $0314 ; 000051(Wi) 000B74(Ri) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020AE(Wy) 00292F(Wx) 002964(Wx) 003361(Wy) 003372(Wy) 0033BE(Wy) 003408(Wy) 
; ram_0315                              = $0315 ; 000051(Wi) 000B74(Ri) 000B8D(Ri) 001CFC(Wy) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020B3(Wy) 00292F(Wx) 003361(Wy) 003372(Wy) 0033BE(Wy) 003408(Wy) 
; ram_0316                              = $0316 ; 000051(Wi) 000B52(Ri) 000B74(Ri) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020C5(Wy) 003361(Wy) 003372(Wy) 0033BE(Wy) 003408(Wy) 
; ram_0317                              = $0317 ; 000051(Wi) 000B58(Ri) 000B74(Ri) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020A9(Wy) 003361(Wy) 003372(Wy) 0033BE(Wy) 003408(Wy) 
; ram_0318                              = $0318 ; 000051(Wi) 000B74(Ri) 000B8D(Ri) 001D65(Wy) 001D73(Wy) 001D87(Ry) 001DA1(Wy) 0020AE(Wy) 003361(Wy) 003372(Wy) 0033BE(Wy) 003408(Wy) 
; ram_0319                              = $0319 ; 000051(Wi) 000B74(Ri) 000B8D(Ri) 001CFC(Wy) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020B3(Wy) 003361(Wy) 003372(Wy) 0033BE(Wy) 003408(Wy) 
; ram_031A                              = $031A ; 000051(Wi) 000B52(Ri) 000B74(Ri) 000B8D(Ri) 001D65(Wy) 001D73(Wy) 001D87(Ry) 001DA1(Wy) 0020C5(Wy) 003361(Wy) 003372(Wy) 0033BE(Wy) 003408(Wy) 
; ram_031B                              = $031B ; 000051(Wi) 000B58(Ri) 000B74(Ri) 001D65(Wy) 001D87(Ry) 001DA1(Wy) 0020A9(Wy) 003372(Wy) 0033BE(Wy) 0033D8(Wy) 003408(Wy) 
; ram_031C                              = $031C ; 000051(Wi) 000B74(Ri) 000B8D(Ri) 001D73(Wy) 001D87(Ry) 0020AE(Wy) 003372(Wy) 0033BE(Wy) 0033D8(Wy) 0033DB(Wy) 003408(Wy) 
; ram_031D                              = $031D ; 000051(Wi) 000B74(Ri) 000B8D(Ri) 001CFC(Wy) 0020B3(Wy) 003372(Wy) 0033BE(Wy) 0033D8(Wy) 0033DB(Wy) 0033DE(Wy) 003408(Wy) 
; ram_031E                              = $031E ; 000051(Wi) 000B52(Ri) 000B74(Ri) 0020C5(Wy) 003372(Wy) 0033BE(Wy) 0033D8(Wy) 0033DB(Wy) 0033DE(Wy) 003408(Wy) 
; ram_031F                              = $031F ; 000051(Wi) 000B58(Ri) 000B74(Ri) 0020A9(Wy) 003372(Wy) 0033BE(Wy) 0033D8(Wy) 0033DB(Wy) 0033DE(Wy) 003408(Wy) 
; ram_0320                              = $0320 ; 000051(Wi) 000B74(Ri) 0020AE(Wy) 003372(Wy) 0033BE(Wy) 0033D8(Wy) 0033DB(Wy) 0033DE(Wy) 003408(Wy) 
; ram_0321                              = $0321 ; 000051(Wi) 000B74(Ri) 000B8D(Ri) 001CFC(Wy) 0020B3(Wy) 003372(Wy) 0033BE(Wy) 0033D8(Wy) 0033DB(Wy) 0033DE(Wy) 003408(Wy) 
; ram_0322                              = $0322 ; 000051(Wi) 000B52(Ri) 000B74(Ri) 0020C5(Wy) 003372(Wy) 0033DB(Wy) 0033DE(Wy) 003408(Wy) 
; ram_0323                              = $0323 ; 000051(Wi) 000B58(Ri) 000B74(Ri) 0020A9(Wy) 003372(Wy) 0033DE(Wy) 003408(Wy) 
; ram_0324                              = $0324 ; 000051(Wi) 000B74(Ri) 000B8D(Ri) 0020AE(Wy) 003390(W)  
; ram_0325                              = $0325 ; 000051(Wi) 000B8D(Ri) 001CFC(Wy) 0020B3(Wy) 
; ram_0326                              = $0326 ; 000051(Wi) 000B52(Ri) 0020C5(Wy) 
; ram_0327                              = $0327 ; 000051(Wi) 000B58(Ri) 0020A9(Wy) 
; ram_0328                              = $0328 ; 000051(Wi) 000B74(Ri) 0020AE(Wy) 
; ram_0329                              = $0329 ; 000051(Wi) 000B8D(Ri) 001CFC(Wy) 0020B3(Wy) 
; ram_032A                              = $032A ; 000051(Wi) 000B52(Ri) 0020C5(Wy) 
; ram_032B                              = $032B ; 000051(Wi) 000B58(Ri) 0020A9(Wy) 
; ram_032C                              = $032C ; 000051(Wi) 000B74(Ri) 0020AE(Wy) 
; ram_032D                              = $032D ; 000051(Wi) 000B8D(Ri) 0020B3(Wy) 



; free addresses or a part of ram_ppu_buffer
; ram_032E                              = $032E ; 000051(Wi) 
; ram_032F                              = $032F ; 000051(Wi) 
; ram_0330                              = $0330 ; 000051(Wi) 
; ram_0331                              = $0331 ; 000051(Wi) 
; ram_0332                              = $0332 ; 000051(Wi) 
; ram_0333                              = $0333 ; 000051(Wi) 
; ram_0334                              = $0334 ; 000051(Wi) 
; ram_0335                              = $0335 ; 000051(Wi) 
; ram_0336                              = $0336 ; 000051(Wi) 
; ram_0337                              = $0337 ; 000051(Wi) 
; ram_0338                              = $0338 ; 000051(Wi) 
; ram_0339                              = $0339 ; 000051(Wi) 
; ram_033A                              = $033A ; 000051(Wi) 
; ram_033B                              = $033B ; 000051(Wi) 
; ram_033C                              = $033C ; 000051(Wi) 
; ram_033D                              = $033D ; 000051(Wi) 
; ram_033E                              = $033E ; 000051(Wi) 
; ram_033F                              = $033F ; 000051(Wi) 
; ram_0340                              = $0340 ; 000051(Wi) 
; ram_0341                              = $0341 ; 000051(Wi) 
; ram_0342                              = $0342 ; 000051(Wi) 



; 
ram_0343_plr                            = $0343 ; 000051(Wi) 001BD1(Wx) 001C0A(Wx) 0022F1(Ry) 
; ram_0344                              = $0344 ; 000051(Wi) 001BD1(Wx) 001C0A(Wx) 0022F1(Ry) 



; 
ram_0345                                = $0345 ; 000051(Wi) 00333B(W)  0033E8(R)  



; 
ram_0346                                = $0346 ; 000051(Wi) 003321(W)  0033E2(R)  003440(W)  



; 
ram_0347                                = $0347 ; 000051(Wi) 003324(W)  00340F(R)  00343D(W)  



; 
ram_0348_ppu_lo                         = $0348 ; 000051(Wi) 003383(R)  00344F(R)  003455(W)  003472(W)  
ram_0349_ppu_hi                         = $0349 ; 000051(Wi) 00337D(R)  003458(R)  00345D(W)  00346D(W)  



; 
ram_034A                                = $034A ; 000051(Wi) 003329(W)  003425(R)  003446(R)  00344C(W)  



; free address
; ram_034B                              = $034B ; 000051(Wi) 



; 
ram_034C                                = $034C ; 000051(Wi) 0000E7(R)  00010A(W)  000125(W)  



; timer for pause/unpause
ram_034D_pause_timer                    = $034D ; 000051(Wi) 000107(W)  000113(W)  



; free addresses
; ram_034E                              = $034E ; 000051(Wi) 
; ram_034F                              = $034F ; 000051(Wi) 
; ram_0350                              = $0350 ; 000051(Wi) 
; ram_0351                              = $0351 ; 000051(Wi) 



; 
ram_0352_plr                            = $0352 ; 000051(Wi) 00036D(W)  000D13(Rx) 0015DE(Rx) 00165C(Wx) 0016EC(Wx) 
; ram_0353                              = $0353 ; 000051(Wi) 000370(W)  000D13(Rx) 0015DE(Rx) 00165C(Wx) 0016EC(Wx) 



; free addresses
; ram_0354                              = $0354 ; 000051(Wi) 
; ram_0355                              = $0355 ; 000051(Wi) 
; ram_0356                              = $0356 ; 000051(Wi) 
; ram_0357                              = $0357 ; 000051(Wi) 



; 
ram_0358                                = $0358 ; 000051(Wi) 002D2C(Wy) 002D3C(Ry) 
; ram_0359                              = $0359 ; 000051(Wi) 002D2C(Wy) 002D3C(Ry) 002D67(Ry) 002D6D(Wy) 
; ram_035A                              = $035A ; 000051(Wi) 002D2C(Wy) 002D3C(Ry) 
; ram_035B                              = $035B ; 000051(Wi) 002D2C(Wy) 002D3C(Ry) 
; ram_035C                              = $035C ; 000051(Wi) 002D2C(Wy) 002D3C(Ry) 
; ram_035D                              = $035D ; 000051(Wi) 002D2C(Wy) 002D3C(Ry) 002D67(Ry) 002D6D(Wy) 
; ram_035E                              = $035E ; 000051(Wi) 002D2C(Wy) 002D3C(Ry) 
; ram_035F                              = $035F ; 000051(Wi) 002D2C(Wy) 002D3C(Ry) 




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; COUNTERS FOR PLAYERS (start)

; 0360-0364 = 1p
; 0365-0369 = 2p
ram_plr_counters                        = $0360 ; for common links



; thousands of points you get for completing bonus level
ram_plr_counter_stage_bonus             = $0360 ; 000051(Wi) 0001BF(Wx) 002921(Rx) 0029DE(Ry) 0029ED(Rx) 0029F2(Wx) 0035B5(Wy) 



; 
ram_plr_counter_fruits                  = $0361 ; 000051(Wi) 0001BF(Wx) 0013B4(Wx) 001521(R)  0028AC(Ry) 002921(Rx) 0029DE(Ry) 0029ED(Rx) 0029F2(Wx) 



; 
ram_plr_counter_ice                     = $0362 ; 000051(Wi) 0001BF(Wx) 001449(Wx) 002921(Rx) 0029DE(Ry) 0029ED(Rx) 0029F2(Wx) 



; 
ram_plr_counter_birds                   = $0363 ; 000051(Wi) 0001BF(Wx) 001439(Wx) 002921(Rx) 0029DE(Ry) 0029ED(Rx) 0029F2(Wx) 



; 
ram_plr_counter_blocks                  = $0364 ; 000051(Wi) 0001BF(Wx) 001948(Rx) 00194F(Wx) 002921(Rx) 0029DE(Ry) 0029ED(Rx) 0029F2(Wx) 



; same pattern for 2nd player
; ram_0365                              = $0365 ; 000051(Wi) 0001BF(Wx) 002921(Rx) 0029E1(Ry) 0029ED(Rx) 0029F2(Wx) 0035B5(Wy) 
; ram_0366                              = $0366 ; 000051(Wi) 0001BF(Wx) 0013B4(Wx) 001524(R)  0028AC(Ry) 002921(Rx) 0029E1(Ry) 0029ED(Rx) 0029F2(Wx) 
; ram_0367                              = $0367 ; 000051(Wi) 0001BF(Wx) 002921(Rx) 0029E1(Ry) 0029ED(Rx) 
; ram_0368                              = $0368 ; 000051(Wi) 0001BF(Wx) 001439(Wx) 002921(Rx) 0029E1(Ry) 0029ED(Rx) 0029F2(Wx) 
; ram_0369                              = $0369 ; 000051(Wi) 0001BF(Wx) 001948(Rx) 00194F(Wx) 002921(Rx) 0029E1(Ry) 0029ED(Rx) 0029F2(Wx) 



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; COUNTERS FOR PLAYERS (end)



; free addresses
; ram_036A                              = $036A ; 000051(Wi) 
; ram_036B                              = $036B ; 000051(Wi) 
; ram_036C                              = $036C ; 000051(Wi) 
; ram_036D                              = $036D ; 000051(Wi) 
; ram_036E                              = $036E ; 000051(Wi) 
; ram_036F                              = $036F ; 000051(Wi) 
; ram_0370                              = $0370 ; 000051(Wi) 
; ram_0371                              = $0371 ; 000051(Wi) 
; ram_0372                              = $0372 ; 000051(Wi) 
; ram_0373                              = $0373 ; 000051(Wi) 
; ram_0374                              = $0374 ; 000051(Wi) 
; ram_0375                              = $0375 ; 000051(Wi) 



; 00 = 
; 01 = 
ram_0376_flag                           = $0376 ; 000051(Wi) 001821(W)  0021BA(W)  0021F4(R)  002201(R)  002275(R)  



; free addresses
; ram_0377                              = $0377 ; 000051(Wi) 
; ram_0378                              = $0378 ; 000051(Wi) 
; ram_0379                              = $0379 ; 000051(Wi) 



; bzk optimize, useless
ram_037A_useless                        = $037A ; 000051(Wi) 00026F(W)  



; free addresses
; ram_037B                              = $037B ; 000051(Wi) 
; ram_037C                              = $037C ; 000051(Wi) 
; ram_037D                              = $037D ; 000051(Wi) 
; ram_037E                              = $037E ; 000051(Wi) 
; ram_037F                              = $037F ; 000051(Wi) 
; ram_0380                              = $0380 ; 000051(Wi) 



; 0x000214
ram_range_0381_03F7                     = $0381 ; for common links



; free address, but a start of ram_range_0381_03F7
; ram_0381                              = $0381 ; 000051(Wi) 000214(Wx) 



; 
ram_0382_obj                            = $0382 ; 000051(Wi) 000214(Wx) 00145C(Wx) 002BCE(Rx) 
; ram_0383                              = $0383 ; 000051(Wi) 000214(Wx) 00145C(Wx) 002BCE(Rx) 
; ram_0384                              = $0384 ; 000051(Wi) 000214(Wx) 002E76(Wx) 003021(Wx) 00302C(Wx) 00304B(Rx) 0030DF(Wx) 
; ram_0385                              = $0385 ; 000051(Wi) 000214(Wx) 002E76(Wx) 003021(Wx) 00302C(Wx) 00304B(Rx) 0030DF(Wx) 
; ram_0386                              = $0386 ; 000051(Wi) 000214(Wx) 
; ram_0387                              = $0387 ; 000051(Wi) 000214(Wx) 
; ram_0388                              = $0388 ; 000051(Wi) 000214(Wx) 003027(Wx) 0030E4(Rx) 
; ram_0389                              = $0389 ; 000051(Wi) 000214(Wx) 003027(Wx) 0030E4(Rx) 
; ram_038A                              = $038A ; 000051(Wi) 000214(Wx) 
; ram_038B                              = $038B ; 000051(Wi) 000214(Wx) 
; ram_038C                              = $038C ; 000051(Wi) 000214(Wx) 



; free addresses
; ram_038D                              = $038D ; 000051(Wi) 000214(Wx) 
; ram_038E                              = $038E ; 000051(Wi) 000214(Wx) 




ram_038F                                = $038F ; 000051(Wi) 000214(Wx) 002924(Wx) 
; ram_0390                              = $0390 ; 000051(Wi) 000214(Wx) 002924(Wx) 002973(Ry) 
; ram_0391                              = $0391 ; 000051(Wi) 000214(Wx) 002924(Wx) 002973(Ry) 
; ram_0392                              = $0392 ; 000051(Wi) 000214(Wx) 002924(Wx) 002973(Ry) 
; ram_0393                              = $0393 ; 000051(Wi) 000214(Wx) 002924(Wx) 002973(Ry) 
; ram_0394                              = $0394 ; 000051(Wi) 000214(Wx) 002924(Wx) 
; ram_0395                              = $0395 ; 000051(Wi) 000214(Wx) 002924(Wx) 002973(Ry) 
; ram_0396                              = $0396 ; 000051(Wi) 000214(Wx) 002924(Wx) 002973(Ry) 
; ram_0397                              = $0397 ; 000051(Wi) 000214(Wx) 002924(Wx) 002973(Ry) 
; ram_0398                              = $0398 ; 000051(Wi) 000214(Wx) 002924(Wx) 002973(Ry) 



; 
ram_0399                                = $0399 ; 000051(Wi) 000214(Wx) 
; ram_039A                              = $039A ; 000051(Wi) 000214(Wx) 00295E(Ry) 002970(Ry) 00297C(Ry) 002981(Wy) 
; ram_039B                              = $039B ; 000051(Wi) 000214(Wx) 00295E(Ry) 002970(Ry) 00297C(Ry) 002981(Wy) 
; ram_039C                              = $039C ; 000051(Wi) 000214(Wx) 00295E(Ry) 002970(Ry) 00297C(Ry) 002981(Wy) 
; ram_039D                              = $039D ; 000051(Wi) 000214(Wx) 00295E(Ry) 002970(Ry) 00297C(Ry) 002981(Wy) 
; ram_039E                              = $039E ; 000051(Wi) 000214(Wx) 
; ram_039F                              = $039F ; 000051(Wi) 000214(Wx) 00295E(Ry) 002970(Ry) 00297C(Ry) 002981(Wy) 
; ram_03A0                              = $03A0 ; 000051(Wi) 000214(Wx) 00295E(Ry) 002970(Ry) 
; ram_03A1                              = $03A1 ; 000051(Wi) 000214(Wx) 00295E(Ry) 002970(Ry) 00297C(Ry) 002981(Wy) 
; ram_03A2                              = $03A2 ; 000051(Wi) 000214(Wx) 00295E(Ry) 002970(Ry) 00297C(Ry) 002981(Wy) 



; 
ram_03A3                                = $03A3 ; 000051(Wi) 000214(Wx) 002906(R)  002913(R)  002935(R)  002957(R)  002999(R)  0029AD(R)  002A0B(R)  002A11(R)  002A36(R)  002A52(W)  002A6C(R)  



; free addresses
; ram_03A4                              = $03A4 ; 000051(Wi) 000214(Wx) 
; ram_03A5                              = $03A5 ; 000051(Wi) 000214(Wx) 



; bzk optimize, 03AB and 03AC seems useless, see 0x002F80
ram_03A6_obj                            = $03A6 ; 000051(Wi) 000214(Wx) 002F80(Rx) 003844(W)  
; ram_03A7                              = $03A7 ; 000051(Wi) 000214(Wx) 0021C9(W)  002F80(Rx) 
; ram_03A8                              = $03A8 ; 000051(Wi) 000214(Wx) 002F80(Rx) 00300E(Rx) 003031(Wx) 0030C4(Wx) 0030F0(Rx) 
; ram_03A9                              = $03A9 ; 000051(Wi) 000214(Wx) 002F80(Rx) 00300E(Rx) 003031(Wx) 0030C4(Wx) 0030F0(Rx) 
; ram_03AA                              = $03AA ; 000051(Wi) 000214(Wx) 
; ram_03AB                              = $03AB ; 000051(Wi) 000214(Wx) 002F80(Rx) 0030F3(Wx) 
; ram_03AC                              = $03AC ; 000051(Wi) 000214(Wx) 002F80(Rx) 0030F3(Wx) 
; ram_03AD                              = $03AD ; 000051(Wi) 000214(Wx) 
; ram_03AE                              = $03AE ; 000051(Wi) 000214(Wx) 
; ram_03AF                              = $03AF ; 000051(Wi) 000214(Wx) 
; ram_03B0                              = $03B0 ; 000051(Wi) 000214(Wx) 



; 
ram_03B1_obj                            = $03B1 ; 000051(Wi) 000214(Wx) 001415(Wy) 003832(W)  0038BC(R)  0038E3(W)  0038E7(W)  0038EB(R)  003901(W)  
; ram_03B2                              = $03B2 ; 000051(Wi) 000214(Wx) 001415(Wy) 0021BD(W)  002E51(Wx) 002F32(Rx) 002F3E(Wx) 002F47(Wx) 002F77(Wx) 002F9E(Rx) 
; ram_03B3                              = $03B3 ; 000051(Wi) 000214(Wx) 001415(Wy) 002E51(Wx) 002E8F(Wx) 002E97(Rx) 002EAA(Wx) 002F08(Wx) 002F77(Wx) 002F9E(Rx) 0030F0(Rx) 
; ram_03B4                              = $03B4 ; 000051(Wi) 000214(Wx) 001415(Wy) 002E51(Wx) 002E8F(Wx) 002E97(Rx) 002EAA(Wx) 002F08(Wx) 002F77(Wx) 002F9E(Rx) 0030F0(Rx) 
; ram_03B5                              = $03B5 ; 000051(Wi) 000214(Wx) 
; ram_03B6                              = $03B6 ; 000051(Wi) 000214(Wx) 001415(Wy) 002EC2(Rx) 002F77(Wx) 002F9E(Rx) 0030F3(Wx) 003110(Wx) 
; ram_03B7                              = $03B7 ; 000051(Wi) 000214(Wx) 001415(Wy) 002EC2(Rx) 002F77(Wx) 002F9E(Rx) 0030F3(Wx) 003110(Wx) 
; ram_03B8                              = $03B8 ; 000051(Wi) 000214(Wx) 
; ram_03B9                              = $03B9 ; 000051(Wi) 000214(Wx) 001415(Wy) 
; ram_03BA                              = $03BA ; 000051(Wi) 000214(Wx) 001415(Wy) 
; ram_03BB                              = $03BB ; 000051(Wi) 000214(Wx) 



; 
ram_03BC_obj                            = $03BC ; 000051(Wi) 000214(Wx) 00382D(W)  0038F2(W)  0038F5(R)  003914(R)  
; ram_03BD                              = $03BD ; 000051(Wi) 000214(Wx) 0021C5(W)  002F93(Rx) 
; ram_03BE                              = $03BE ; 000051(Wi) 000214(Wx) 002F93(Rx) 0030C9(Wx) 0030F0(Rx) 
; ram_03BF                              = $03BF ; 000051(Wi) 000214(Wx) 002F93(Rx) 0030C9(Wx) 0030F0(Rx) 
; ram_03C0                              = $03C0 ; 000051(Wi) 000214(Wx) 
; ram_03C1                              = $03C1 ; 000051(Wi) 000214(Wx) 002EBC(Wx) 002F93(Rx) 0030F3(Wx) 003113(Wx) 
; ram_03C2                              = $03C2 ; 000051(Wi) 000214(Wx) 002EBC(Wx) 002F93(Rx) 0030F3(Wx) 003113(Wx) 
; ram_03C3                              = $03C3 ; 000051(Wi) 000214(Wx) 
; ram_03C4                              = $03C4 ; 000051(Wi) 000214(Wx) 
; ram_03C5                              = $03C5 ; 000051(Wi) 000214(Wx) 
; ram_03C6                              = $03C6 ; 000051(Wi) 000214(Wx) 



; bzk optimize, 03CC and 03CD seems useless, see 0x002F80
ram_03C7_obj                            = $03C7 ; 000051(Wi) 000214(Wx) 002F84(Rx) 002F87(Wx) 
; ram_03C8                              = $03C8 ; 000051(Wi) 000214(Wx) 0021C0(W)  002F84(Rx) 002F87(Wx) 
; ram_03C9                              = $03C9 ; 000051(Wi) 000214(Wx) 002F84(Rx) 002F87(Wx) 0030F0(Rx) 
; ram_03CA                              = $03CA ; 000051(Wi) 000214(Wx) 002F84(Rx) 002F87(Wx) 0030F0(Rx) 
; ram_03CB                              = $03CB ; 000051(Wi) 000214(Wx) 
; ram_03CC                              = $03CC ; 000051(Wi) 000214(Wx) 002F84(Rx) 002F87(Wx) 0030F3(Wx) 
; ram_03CD                              = $03CD ; 000051(Wi) 000214(Wx) 002F84(Rx) 002F87(Wx) 0030F3(Wx) 
; ram_03CE                              = $03CE ; 000051(Wi) 000214(Wx) 
; ram_03CF                              = $03CF ; 000051(Wi) 000214(Wx) 003158(Wx) 0031B3(Wx) 
; ram_03D0                              = $03D0 ; 000051(Wi) 000214(Wx) 003158(Wx) 0031B3(Wx) 
; ram_03D1                              = $03D1 ; 000051(Wi) 000214(Wx) 003158(Wx) 0031B3(Wx) 



; 
ram_03D2_obj                            = $03D2 ; 000051(Wi) 000214(Wx) 00141A(Wy) 
; ram_03D3                              = $03D3 ; 000051(Wi) 000214(Wx) 00141A(Wy) 0021B7(W)  002272(W)  002F66(Rx) 002F6D(Wx) 002F97(Rx) 002F9A(Wx) 
; ram_03D4                              = $03D4 ; 000051(Wi) 000214(Wx) 00141A(Wy) 002E79(Wx) 002E7C(Rx) 002E87(Rx) 002F0D(Wx) 002F66(Rx) 002F6D(Wx) 002F97(Rx) 002F9A(Wx) 00301E(Wx) 0030B9(Wx) 0030F0(Rx) 
; ram_03D5                              = $03D5 ; 000051(Wi) 000214(Wx) 00141A(Wy) 002E79(Wx) 002E7C(Rx) 002E87(Rx) 002F0D(Wx) 002F66(Rx) 002F6D(Wx) 002F97(Rx) 002F9A(Wx) 00301E(Wx) 0030B9(Wx) 0030F0(Rx) 
; ram_03D6                              = $03D6 ; 000051(Wi) 000214(Wx) 
; ram_03D7                              = $03D7 ; 000051(Wi) 000214(Wx) 00141A(Wy) 002F66(Rx) 002F6D(Wx) 002F97(Rx) 002F9A(Wx) 0030F3(Wx) 
; ram_03D8                              = $03D8 ; 000051(Wi) 000214(Wx) 00141A(Wy) 002F66(Rx) 002F6D(Wx) 002F97(Rx) 002F9A(Wx) 0030F3(Wx) 
; ram_03D9                              = $03D9 ; 000051(Wi) 000214(Wx) 
; ram_03DA                              = $03DA ; 000051(Wi) 000214(Wx) 00141A(Wy) 003166(Wx) 003184(Rx) 0031B8(Wx) 
; ram_03DB                              = $03DB ; 000051(Wi) 000214(Wx) 00141A(Wy) 003166(Wx) 003184(Rx) 0031B8(Wx) 
; ram_03DC                              = $03DC ; 000051(Wi) 000214(Wx) 003166(Wx) 003184(Rx) 0031B8(Wx) 



; 
ram_03DD_obj                            = $03DD ; 000051(Wi) 000214(Wx) 002B5A(Rx) 00387B(W)  
; ram_03DE                              = $03DE ; 000051(Wi) 000214(Wx) 002B5A(Rx) 002E57(Wx) 002F4C(Wx) 
; ram_03DF                              = $03DF ; 000051(Wi) 000214(Wx) 002B5A(Rx) 002E57(Wx) 002EAF(Wx) 
; ram_03E0                              = $03E0 ; 000051(Wi) 000214(Wx) 002B5A(Rx) 002E57(Wx) 002EAF(Wx) 00371F(Wx) 
; ram_03E1                              = $03E1 ; 000051(Wi) 000214(Wx) 002B5A(Rx) 00371F(Wx) 
; ram_03E2                              = $03E2 ; 000051(Wi) 000214(Wx) 002B5A(Rx) 002E57(Wx) 002EC8(Wx) 00371F(Wx) 
; ram_03E3                              = $03E3 ; 000051(Wi) 000214(Wx) 002B5A(Rx) 002E57(Wx) 002EC8(Wx) 00371F(Wx) 
; ram_03E4                              = $03E4 ; 000051(Wi) 000214(Wx) 
; ram_03E5                              = $03E5 ; 000051(Wi) 000214(Wx) 002B5A(Rx) 003190(Wx) 
; ram_03E6                              = $03E6 ; 000051(Wi) 000214(Wx) 002B5A(Rx) 003190(Wx) 
; ram_03E7                              = $03E7 ; 000051(Wi) 000214(Wx) 002B5A(Rx) 003190(Wx) 



; 
ram_03E8_obj                            = $03E8 ; 000051(Wi) 000214(Wx) 002B40(Rx) 002B75(Wx) 00384A(W)  00387E(R)  003883(W)  003887(W)  003891(R)  003896(W)  
; ram_03E9                              = $03E9 ; 000051(Wi) 000214(Wx) 00189C(Wx) 002B40(Rx) 002B75(Wx) 002E23(Rx) 002E5E(Rx) 002E61(Wx) 002ECF(Wx) 002F7C(Wx) 002FD8(Wx) 
; ram_03EA                              = $03EA ; 000051(Wi) 000214(Wx) 002B40(Rx) 002B75(Wx) 002E23(Rx) 002E5E(Rx) 002E61(Wx) 002ECF(Wx) 002F7C(Wx) 
; ram_03EB                              = $03EB ; 000051(Wi) 000214(Wx) 002B40(Rx) 002B75(Wx) 002E23(Rx) 002E5E(Rx) 002E61(Wx) 002ECF(Wx) 002F7C(Wx) 003726(Wx) 003739(Wx) 
; ram_03EC                              = $03EC ; 000051(Wi) 000214(Wx) 002B40(Rx) 002B75(Wx) 002E23(Rx) 003726(Wx) 003739(Wx) 
; ram_03ED                              = $03ED ; 000051(Wi) 000214(Wx) 00189C(Wx) 002B40(Rx) 002B75(Wx) 002E23(Rx) 002E5E(Rx) 002E61(Wx) 002ECF(Wx) 002F7C(Wx) 003726(Wx) 003739(Wx) 
; ram_03EE                              = $03EE ; 000051(Wi) 000214(Wx) 00189C(Wx) 002B40(Rx) 002B75(Wx) 002E23(Rx) 002E5E(Rx) 002E61(Wx) 002ECF(Wx) 002F7C(Wx) 003726(Wx) 003739(Wx) 
; ram_03EF                              = $03EF ; 000051(Wi) 000214(Wx) 002B40(Rx) 002E23(Rx) 
; ram_03F0                              = $03F0 ; 000051(Wi) 000214(Wx) 002B40(Rx) 002B75(Wx) 003132(Wx) 003162(Wx) 0031A6(Rx) 0031AB(Wx) 
; ram_03F1                              = $03F1 ; 000051(Wi) 000214(Wx) 002B40(Rx) 002B75(Wx) 003132(Wx) 003162(Wx) 0031A6(Rx) 0031AB(Wx) 
; ram_03F2                              = $03F2 ; 000051(Wi) 000214(Wx) 002B40(Rx) 002B75(Wx) 003132(Wx) 003162(Wx) 



; free addresses
; ram_03F3                              = $03F3 ; 000051(Wi) 000214(Wx) 
; ram_03F4                              = $03F4 ; 000051(Wi) 000214(Wx) 
; ram_03F5                              = $03F5 ; 000051(Wi) 000214(Wx) 
; ram_03F6                              = $03F6 ; 000051(Wi) 000214(Wx) 
; ram_03F7                              = $03F7 ; 000051(Wi) 000214(Wx) 
; ram_03F8                              = $03F8 ; 000051(Wi) 
; ram_03F9                              = $03F9 ; 000051(Wi) 



; 
ram_03FA                                = $03FA ; 000051(Wi) 0001B1(W)  



; 
ram_03FB                                = $03FB ; 000051(Wi) 0001B4(W)  



; free address
; ram_03FC                              = $03FC ; 000051(Wi) 



; 
ram_03FD                                = $03FD ; 000051(Wi) 



; 
ram_03FE                                = $03FE ; 000051(Wi) 



; free address
; ram_03FF                              = $03FF ; 000051(Wi) 



; also used as a part of data from ppu
ram_0400_data                           = $0400 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B8D(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 
; ram_0401                              = $0401 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_0402                              = $0402 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_0403                              = $0403 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_0404                              = $0404 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B8D(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_0405                              = $0405 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_0406                              = $0406 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_0407                              = $0407 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_0408                              = $0408 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B8D(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_0409                              = $0409 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 
; ram_040A                              = $040A ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_040B                              = $040B ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_040C                              = $040C ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B8D(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_040D                              = $040D ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_040E                              = $040E ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_040F                              = $040F ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_0410                              = $0410 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B8D(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 
; ram_0411                              = $0411 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 
; ram_0412                              = $0412 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 
; ram_0413                              = $0413 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 
; ram_0414                              = $0414 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B8D(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 
; ram_0415                              = $0415 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 
; ram_0416                              = $0416 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 
; ram_0417                              = $0417 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 
; ram_0418                              = $0418 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B8D(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 
; ram_0419                              = $0419 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 
; ram_041A                              = $041A ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001FE9(Wi) 
; ram_041B                              = $041B ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 003540(Wy) 
; ram_041C                              = $041C ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001FE1(Wi) 003540(Wy) 
; ram_041D                              = $041D ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 000D8F(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001FE1(Wi) 003540(Wy) 
; ram_041E                              = $041E ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 000D8F(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001FE9(Wi) 003540(Wy) 
; ram_041F                              = $041F ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001FE1(Wi) 001FE9(Wi) 003540(Wy) 
; ram_0420                              = $0420 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001FE1(Wi) 003540(Wy) 
; ram_0421                              = $0421 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B8D(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001FE1(Wi) 
; ram_0422                              = $0422 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B58(Ri) 000D8F(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001FE1(Wi) 
; ram_0423                              = $0423 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0424                              = $0424 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE9(Wi) 
; ram_0425                              = $0425 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 000D8F(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 
; ram_0426                              = $0426 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0427                              = $0427 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_0428                              = $0428 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_0429                              = $0429 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_042A                              = $042A ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_042B                              = $042B ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 
; ram_042C                              = $042C ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 
; ram_042D                              = $042D ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 
; ram_042E                              = $042E ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 
; ram_042F                              = $042F ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 
; ram_0430                              = $0430 ; 000051(Wi) 000508(Wx) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001EF1(Ri) 
; ram_0431                              = $0431 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 
; ram_0432                              = $0432 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_0433                              = $0433 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_0434                              = $0434 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0435                              = $0435 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B8D(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_0436                              = $0436 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B58(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_0437                              = $0437 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_0438                              = $0438 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0439                              = $0439 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B8D(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 
; ram_043A                              = $043A ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B58(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE9(Wi) 
; ram_043B                              = $043B ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_043C                              = $043C ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_043D                              = $043D ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_043E                              = $043E ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B58(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_043F                              = $043F ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 000D8F(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0440                              = $0440 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0441                              = $0441 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B8D(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0442                              = $0442 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B58(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 
; ram_0443                              = $0443 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 
; ram_0444                              = $0444 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 
; ram_0445                              = $0445 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 
; ram_0446                              = $0446 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 
; ram_0447                              = $0447 ; 000051(Wi) 00050B(Wx) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001EF1(Ri) 
; ram_0448                              = $0448 ; 000051(Wi) 000508(Wx) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_0449                              = $0449 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_044A                              = $044A ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_044B                              = $044B ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_044C                              = $044C ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_044D                              = $044D ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B8D(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_044E                              = $044E ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_044F                              = $044F ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0450                              = $0450 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_0451                              = $0451 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_0452                              = $0452 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_0453                              = $0453 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_0454                              = $0454 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0455                              = $0455 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0456                              = $0456 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_0457                              = $0457 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_0458                              = $0458 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0459                              = $0459 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_045A                              = $045A ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_045B                              = $045B ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_045C                              = $045C ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_045D                              = $045D ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_045E                              = $045E ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_045F                              = $045F ; 000051(Wi) 00050B(Wx) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_0460                              = $0460 ; 000051(Wi) 000508(Wx) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001EF1(Ri) 
; ram_0461                              = $0461 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0462                              = $0462 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0463                              = $0463 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_0464                              = $0464 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0465                              = $0465 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0466                              = $0466 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0467                              = $0467 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0468                              = $0468 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B8D(Ri) 000D89(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0469                              = $0469 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B58(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_046A                              = $046A ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_046B                              = $046B ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_046C                              = $046C ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_046D                              = $046D ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000D8F(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_046E                              = $046E ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_046F                              = $046F ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_0470                              = $0470 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0471                              = $0471 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0472                              = $0472 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 000D89(Ri) 000D8F(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0473                              = $0473 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 000D8F(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0474                              = $0474 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B8D(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0475                              = $0475 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE9(Wi) 
; ram_0476                              = $0476 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B8D(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE9(Wi) 
; ram_0477                              = $0477 ; 000051(Wi) 00050B(Wx) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 000D89(Ri) 001EF1(Ri) 
; ram_0478                              = $0478 ; 000051(Wi) 000508(Wx) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001EF1(Ri) 
; ram_0479                              = $0479 ; 000051(Wi) 000512(Wx) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_047A                              = $047A ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_047B                              = $047B ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_047C                              = $047C ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 000D8F(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_047D                              = $047D ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_047E                              = $047E ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_047F                              = $047F ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0480                              = $0480 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 000D89(Ri) 000D8F(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0481                              = $0481 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0482                              = $0482 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_0483                              = $0483 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0484                              = $0484 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 003540(Wy) 
; ram_0485                              = $0485 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 003540(Wy) 
; ram_0486                              = $0486 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 003540(Wy) 
; ram_0487                              = $0487 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 003540(Wy) 
; ram_0488                              = $0488 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 003540(Wy) 
; ram_0489                              = $0489 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 003540(Wy) 
; ram_048A                              = $048A ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_048B                              = $048B ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_048C                              = $048C ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_048D                              = $048D ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_048E                              = $048E ; 000051(Wi) 000515(Wx) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EF1(Ri) 
; ram_048F                              = $048F ; 000051(Wi) 00050B(Wx) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EF1(Ri) 
; ram_0490                              = $0490 ; 000051(Wi) 000508(Wx) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EF1(Ri) 
; ram_0491                              = $0491 ; 000051(Wi) 000512(Wx) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_0492                              = $0492 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0493                              = $0493 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B8D(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0494                              = $0494 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0495                              = $0495 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_0496                              = $0496 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000D8F(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_0497                              = $0497 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE9(Wi) 
; ram_0498                              = $0498 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_0499                              = $0499 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 000D8F(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_049A                              = $049A ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_049B                              = $049B ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_049C                              = $049C ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_049D                              = $049D ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_049E                              = $049E ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_049F                              = $049F ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE9(Wi) 
; ram_04A0                              = $04A0 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_04A1                              = $04A1 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 000D89(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_04A2                              = $04A2 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_04A3                              = $04A3 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 000D8F(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_04A4                              = $04A4 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 001FE9(Wi) 
; ram_04A5                              = $04A5 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 000D89(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE1(Wi) 
; ram_04A6                              = $04A6 ; 000051(Wi) 000515(Wx) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EF1(Ri) 001FE1(Wi) 
; ram_04A7                              = $04A7 ; 000051(Wi) 00050B(Wx) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001EF1(Ri) 
; ram_04A8                              = $04A8 ; 000051(Wi) 000508(Wx) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001EF1(Ri) 
; ram_04A9                              = $04A9 ; 000051(Wi) 000512(Wx) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 000E63(R)  001EF1(Ri) 
; ram_04AA                              = $04AA ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE9(Wi) 
; ram_04AB                              = $04AB ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE9(Wi) 
; ram_04AC                              = $04AC ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE9(Wi) 
; ram_04AD                              = $04AD ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE9(Wi) 
; ram_04AE                              = $04AE ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 
; ram_04AF                              = $04AF ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B8D(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 
; ram_04B0                              = $04B0 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B58(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 
; ram_04B1                              = $04B1 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE9(Wi) 
; ram_04B2                              = $04B2 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 
; ram_04B3                              = $04B3 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE9(Wi) 
; ram_04B4                              = $04B4 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 000D89(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE9(Wi) 
; ram_04B5                              = $04B5 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE9(Wi) 
; ram_04B6                              = $04B6 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 
; ram_04B7                              = $04B7 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 
; ram_04B8                              = $04B8 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 
; ram_04B9                              = $04B9 ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE9(Wi) 
; ram_04BA                              = $04BA ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 001FE9(Wi) 
; ram_04BB                              = $04BB ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001E5B(Wi) 001EF1(Ri) 
; ram_04BC                              = $04BC ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E28(Ri) 001EF1(Ri) 001FE9(Wi) 
; ram_04BD                              = $04BD ; 000051(Wi) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 001EF1(Ri) 001FE9(Wi) 
; ram_04BE                              = $04BE ; 000051(Wi) 000515(Wx) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001EF1(Ri) 
; ram_04BF                              = $04BF ; 000051(Wi) 00050B(Wx) 000596(Rx) 00059D(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001EF1(Ri) 
; ram_04C0                              = $04C0 ; 000051(Wi) 0004EB(Wy) 00072B(Wi) 000B58(Ri) 000B74(Ri) 
; ram_04C1                              = $04C1 ; 000051(Wi) 0004EB(Wy) 00072B(Wi) 000B74(Ri) 
; ram_04C2                              = $04C2 ; 000051(Wi) 0004EB(Wy) 00072B(Wi) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04C3                              = $04C3 ; 000051(Wi) 0004EB(Wy) 0004F8(Wy) 00072B(Wi) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04C4                              = $04C4 ; 000051(Wi) 0004EB(Wy) 0004F8(Wy) 00072B(Wi) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04C5                              = $04C5 ; 000051(Wi) 0004EB(Wy) 00072B(Wi) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04C6                              = $04C6 ; 000051(Wi) 0004EB(Wy) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04C7                              = $04C7 ; 000051(Wi) 0004EB(Wy) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04C8                              = $04C8 ; 000051(Wi) 0004EB(Wy) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04C9                              = $04C9 ; 000051(Wi) 0004EB(Wy) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04CA                              = $04CA ; 000051(Wi) 0004EB(Wy) 00072B(Wi) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04CB                              = $04CB ; 000051(Wi) 0004EB(Wy) 0004FB(Wy) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04CC                              = $04CC ; 000051(Wi) 0004EB(Wy) 0004FB(Wy) 00072B(Wi) 000B52(Ri) 000B8D(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04CD                              = $04CD ; 000051(Wi) 0004EB(Wy) 00072B(Wi) 000B52(Ri) 000B58(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04CE                              = $04CE ; 000051(Wi) 0004EB(Wy) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04CF                              = $04CF ; 000051(Wi) 0004EB(Wy) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04D0                              = $04D0 ; 000051(Wi) 0004EB(Wy) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04D1                              = $04D1 ; 000051(Wi) 0004EB(Wy) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04D2                              = $04D2 ; 000051(Wi) 0004EB(Wy) 00072B(Wi) 000B58(Ri) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04D3                              = $04D3 ; 000051(Wi) 0004EB(Wy) 0004FE(Wy) 00072B(Wi) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04D4                              = $04D4 ; 000051(Wi) 0004EB(Wy) 0004FE(Wy) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04D5                              = $04D5 ; 000051(Wi) 0004EB(Wy) 00072B(Wi) 000B52(Ri) 000B74(Ri) 001C06(Ri) 001C63(Ri) 001E28(Ri) 
; ram_04D6                              = $04D6 ; 000051(Wi) 0004EB(Wy) 00072B(Wi) 000B58(Ri) 000B74(Ri) 
; ram_04D7                              = $04D7 ; 000051(Wi) 0004EB(Wy) 00072B(Wi) 000B74(Ri) 



; 04D8-04FF is a part of data from ppu
; ram_04D8                              = $04D8 ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04D9                              = $04D9 ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04DA                              = $04DA ; 000051(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 
; ram_04DB                              = $04DB ; 000051(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 
; ram_04DC                              = $04DC ; 000051(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 
; ram_04DD                              = $04DD ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04DE                              = $04DE ; 000051(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 
; ram_04DF                              = $04DF ; 000051(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 
; ram_04E0                              = $04E0 ; 000051(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 
; ram_04E1                              = $04E1 ; 000051(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 
; ram_04E2                              = $04E2 ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04E3                              = $04E3 ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04E4                              = $04E4 ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04E5                              = $04E5 ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04E6                              = $04E6 ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04E7                              = $04E7 ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04E8                              = $04E8 ; 000051(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 
; ram_04E9                              = $04E9 ; 000051(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 
; ram_04EA                              = $04EA ; 000051(Wi) 00072B(Wi) 000B58(Ri) 000B8D(Ri) 
; ram_04EB                              = $04EB ; 000051(Wi) 00072B(Wi) 000B52(Ri) 000B74(Ri) 
; ram_04EC                              = $04EC ; 000051(Wi) 00072B(Wi) 000B58(Ri) 000B74(Ri) 
; ram_04ED                              = $04ED ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04EE                              = $04EE ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04EF                              = $04EF ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04F0                              = $04F0 ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04F1                              = $04F1 ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04F2                              = $04F2 ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04F3                              = $04F3 ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04F4                              = $04F4 ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04F5                              = $04F5 ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04F6                              = $04F6 ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04F7                              = $04F7 ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04F8                              = $04F8 ; 000051(Wi) 00072B(Wi) 000B74(Ri) 000B8D(Ri) 
; ram_04F9                              = $04F9 ; 000051(Wi) 00072B(Wi) 000B52(Ri) 000B8D(Ri) 
; ram_04FA                              = $04FA ; 000051(Wi) 00072B(Wi) 000B58(Ri) 
; ram_04FB                              = $04FB ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04FC                              = $04FC ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04FD                              = $04FD ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04FE                              = $04FE ; 000051(Wi) 00072B(Wi) 000B74(Ri) 
; ram_04FF                              = $04FF ; 000051(Wi) 00072B(Wi) 000B74(Ri) 



; also used as a part of data from ppu
ram_0500_data                           = $0500 ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_0501                              = $0501 ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_0502                              = $0502 ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_0503                              = $0503 ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_0504                              = $0504 ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_0505                              = $0505 ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_0506                              = $0506 ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_0507                              = $0507 ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_0508                              = $0508 ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B8D(Ri) 001EEB(Ri) 
; ram_0509                              = $0509 ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B52(Ri) 001EEB(Ri) 
; ram_050A                              = $050A ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B58(Ri) 001EEB(Ri) 
; ram_050B                              = $050B ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_050C                              = $050C ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_050D                              = $050D ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_050E                              = $050E ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_050F                              = $050F ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_0510                              = $0510 ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_0511                              = $0511 ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_0512                              = $0512 ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_0513                              = $0513 ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B8D(Ri) 001EEB(Ri) 
; ram_0514                              = $0514 ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B52(Ri) 001EEB(Ri) 
; ram_0515                              = $0515 ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B58(Ri) 001EEB(Ri) 
; ram_0516                              = $0516 ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_0517                              = $0517 ; 000051(Wi) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_0518                              = $0518 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C70(Ri) 001E2D(Ri) 
; ram_0519                              = $0519 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B8D(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 
; ram_051A                              = $051A ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001FED(Wi) 
; ram_051B                              = $051B ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_051C                              = $051C ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 
; ram_051D                              = $051D ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 
; ram_051E                              = $051E ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001FED(Wi) 
; ram_051F                              = $051F ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001FED(Wi) 
; ram_0520                              = $0520 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 
; ram_0521                              = $0521 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 
; ram_0522                              = $0522 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 
; ram_0523                              = $0523 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001FED(Wi) 
; ram_0524                              = $0524 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0525                              = $0525 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0526                              = $0526 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0527                              = $0527 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0528                              = $0528 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0529                              = $0529 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_052A                              = $052A ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_052B                              = $052B ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_052C                              = $052C ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_052D                              = $052D ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B8D(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_052E                              = $052E ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_052F                              = $052F ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 
; ram_0530                              = $0530 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_0531                              = $0531 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0532                              = $0532 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0533                              = $0533 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0534                              = $0534 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0535                              = $0535 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0536                              = $0536 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0537                              = $0537 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0538                              = $0538 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0539                              = $0539 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_053A                              = $053A ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B8D(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_053B                              = $053B ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_053C                              = $053C ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_053D                              = $053D ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_053E                              = $053E ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_053F                              = $053F ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0540                              = $0540 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0541                              = $0541 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0542                              = $0542 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0543                              = $0543 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0544                              = $0544 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0545                              = $0545 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0546                              = $0546 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0547                              = $0547 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_0548                              = $0548 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_0549                              = $0549 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_054A                              = $054A ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_054B                              = $054B ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_054C                              = $054C ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_054D                              = $054D ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B52(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_054E                              = $054E ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B58(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_054F                              = $054F ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0550                              = $0550 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0551                              = $0551 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0552                              = $0552 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0553                              = $0553 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0554                              = $0554 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0555                              = $0555 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0556                              = $0556 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0557                              = $0557 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0558                              = $0558 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0559                              = $0559 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_055A                              = $055A ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_055B                              = $055B ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_055C                              = $055C ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_055D                              = $055D ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_055E                              = $055E ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_055F                              = $055F ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_0560                              = $0560 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001EEB(Ri) 
; ram_0561                              = $0561 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0562                              = $0562 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B74(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0563                              = $0563 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 000B8D(Ri) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0564                              = $0564 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0565                              = $0565 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0566                              = $0566 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0567                              = $0567 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0568                              = $0568 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0569                              = $0569 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_056A                              = $056A ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_056B                              = $056B ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_056C                              = $056C ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_056D                              = $056D ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_056E                              = $056E ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_056F                              = $056F ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0570                              = $0570 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0571                              = $0571 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0572                              = $0572 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0573                              = $0573 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0574                              = $0574 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0575                              = $0575 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0576                              = $0576 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0577                              = $0577 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001EEB(Ri) 
; ram_0578                              = $0578 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001EEB(Ri) 
; ram_0579                              = $0579 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001EEB(Ri) 
; ram_057A                              = $057A ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_057B                              = $057B ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_057C                              = $057C ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_057D                              = $057D ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_057E                              = $057E ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_057F                              = $057F ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0580                              = $0580 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0581                              = $0581 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0582                              = $0582 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0583                              = $0583 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0584                              = $0584 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0585                              = $0585 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0586                              = $0586 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0587                              = $0587 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0588                              = $0588 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0589                              = $0589 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_058A                              = $058A ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_058B                              = $058B ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_058C                              = $058C ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_058D                              = $058D ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_058E                              = $058E ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001EEB(Ri) 
; ram_058F                              = $058F ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001EEB(Ri) 
; ram_0590                              = $0590 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001EEB(Ri) 
; ram_0591                              = $0591 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001EEB(Ri) 
; ram_0592                              = $0592 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0593                              = $0593 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0594                              = $0594 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0595                              = $0595 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0596                              = $0596 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_0597                              = $0597 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0598                              = $0598 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_0599                              = $0599 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_059A                              = $059A ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_059B                              = $059B ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_059C                              = $059C ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_059D                              = $059D ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_059E                              = $059E ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_059F                              = $059F ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_05A0                              = $05A0 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_05A1                              = $05A1 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_05A2                              = $05A2 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_05A3                              = $05A3 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_05A4                              = $05A4 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_05A5                              = $05A5 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_05A6                              = $05A6 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001EEB(Ri) 
; ram_05A7                              = $05A7 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001EEB(Ri) 
; ram_05A8                              = $05A8 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001EEB(Ri) 
; ram_05A9                              = $05A9 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001EEB(Ri) 
; ram_05AA                              = $05AA ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_05AB                              = $05AB ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_05AC                              = $05AC ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_05AD                              = $05AD ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_05AE                              = $05AE ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_05AF                              = $05AF ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_05B0                              = $05B0 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_05B1                              = $05B1 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_05B2                              = $05B2 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_05B3                              = $05B3 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_05B4                              = $05B4 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_05B5                              = $05B5 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_05B6                              = $05B6 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_05B7                              = $05B7 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_05B8                              = $05B8 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_05B9                              = $05B9 ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_05BA                              = $05BA ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_05BB                              = $05BB ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001B21(Wi) 001B29(Wi) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 
; ram_05BC                              = $05BC ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001C70(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_05BD                              = $05BD ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 001EEB(Ri) 001FED(Wi) 
; ram_05BE                              = $05BE ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001EEB(Ri) 
; ram_05BF                              = $05BF ; 000051(Wi) 0005A4(Wx) 00060E(Wi) 00072B(Wi) 001EEB(Ri) 
; ram_05C0                              = $05C0 ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 
; ram_05C1                              = $05C1 ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 
; ram_05C2                              = $05C2 ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 
; ram_05C3                              = $05C3 ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 
; ram_05C4                              = $05C4 ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 
; ram_05C5                              = $05C5 ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001E2D(Ri) 
; ram_05C6                              = $05C6 ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001E2D(Ri) 
; ram_05C7                              = $05C7 ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 
; ram_05C8                              = $05C8 ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 
; ram_05C9                              = $05C9 ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 
; ram_05CA                              = $05CA ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 
; ram_05CB                              = $05CB ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 
; ram_05CC                              = $05CC ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 
; ram_05CD                              = $05CD ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001E2D(Ri) 
; ram_05CE                              = $05CE ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001E2D(Ri) 
; ram_05CF                              = $05CF ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 
; ram_05D0                              = $05D0 ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 
; ram_05D1                              = $05D1 ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001B07(Ri) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 
; ram_05D2                              = $05D2 ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001E2D(Ri) 
; ram_05D3                              = $05D3 ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 
; ram_05D4                              = $05D4 ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001C06(Ri) 001C63(Ri) 001E2D(Ri) 
; ram_05D5                              = $05D5 ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 001E2D(Ri) 
; ram_05D6                              = $05D6 ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 
; ram_05D7                              = $05D7 ; 000051(Wi) 0004F0(Wy) 00060E(Wi) 00072B(Wi) 



; free addresses (I doubt 0x00177C is ever used)
; ram_05D8                              = $05D8 ; 000051(Wi) 00072B(Wi) 
; ram_05D9                              = $05D9 ; 000051(Wi) 00072B(Wi) 
; ram_05DA                              = $05DA ; 000051(Wi) 00072B(Wi) 
; ram_05DB                              = $05DB ; 000051(Wi) 00072B(Wi) 
; ram_05DC                              = $05DC ; 000051(Wi) 00072B(Wi) 
; ram_05DD                              = $05DD ; 000051(Wi) 00072B(Wi) 
; ram_05DE                              = $05DE ; 000051(Wi) 00072B(Wi) 
; ram_05DF                              = $05DF ; 000051(Wi) 00072B(Wi) 
; ram_05E0                              = $05E0 ; 000051(Wi) 00072B(Wi) 
; ram_05E1                              = $05E1 ; 000051(Wi) 00072B(Wi) 
; ram_05E2                              = $05E2 ; 000051(Wi) 00072B(Wi) 
; ram_05E3                              = $05E3 ; 000051(Wi) 00072B(Wi) 
; ram_05E4                              = $05E4 ; 000051(Wi) 00072B(Wi) 
; ram_05E5                              = $05E5 ; 000051(Wi) 00072B(Wi) 
; ram_05E6                              = $05E6 ; 000051(Wi) 00072B(Wi) 
; ram_05E7                              = $05E7 ; 000051(Wi) 00072B(Wi) 
; ram_05E8                              = $05E8 ; 000051(Wi) 00072B(Wi) 
; ram_05E9                              = $05E9 ; 000051(Wi) 00072B(Wi) 
; ram_05EA                              = $05EA ; 000051(Wi) 00072B(Wi) 
; ram_05EB                              = $05EB ; 000051(Wi) 00072B(Wi) 
; ram_05EC                              = $05EC ; 000051(Wi) 00072B(Wi) 
; ram_05ED                              = $05ED ; 000051(Wi) 00072B(Wi) 
; ram_05EE                              = $05EE ; 000051(Wi) 00072B(Wi) 
; ram_05EF                              = $05EF ; 000051(Wi) 00072B(Wi) 



; free addresses
; ram_05F0                              = $05F0 ; 000051(Wi) 00072B(Wi) 
; ram_05F1                              = $05F1 ; 000051(Wi) 00072B(Wi) 
; ram_05F2                              = $05F2 ; 000051(Wi) 00072B(Wi) 
; ram_05F3                              = $05F3 ; 000051(Wi) 00072B(Wi) 
; ram_05F4                              = $05F4 ; 000051(Wi) 00072B(Wi) 
; ram_05F5                              = $05F5 ; 000051(Wi) 00072B(Wi) 
; ram_05F6                              = $05F6 ; 000051(Wi) 00072B(Wi) 
; ram_05F7                              = $05F7 ; 000051(Wi) 00072B(Wi) 
; ram_05F8                              = $05F8 ; 000051(Wi) 00072B(Wi) 
; ram_05F9                              = $05F9 ; 000051(Wi) 00072B(Wi) 
; ram_05FA                              = $05FA ; 000051(Wi) 00072B(Wi) 



; 
ram_05FB                                = $05FB ; 000051(Wi) 000309(W)  00072B(Wi) 



; !!!
ram_05FC                                = $05FC ; 000051(Wi) 00072B(Wi) 003631(W)  003636(Rx) 003693(W)  
ram_05FD                                = $05FD ; 000051(Wi) 00072B(Wi) 00362C(W)  003636(Rx) 00369B(W)  
ram_05FE                                = $05FE ; 000051(Wi) 00072B(Wi) 0029B7(R)  003636(Rx) 003659(W)  00371C(R)  



; free address
; ram_05FF                              = $05FF ; 000051(Wi) 00072B(Wi) 



; 
ram_0600_data                           = $0600 ; 000051(Wi) 000B8D(Ri) 002016(Wx) 002053(Wx) 0020F2(Ry) 00216C(Ry) 002175(Ry) 0027E7(Wy) 
; ram_0601                              = $0601 ; 000051(Wi) 000B52(Ri) 002016(Wx) 002053(Wx) 0020F2(Ry) 00216C(Ry) 002175(Ry) 0027E2(Wy) 
; ram_0602                              = $0602 ; 000051(Wi) 000B58(Ri) 002016(Wx) 002053(Wx) 0020F2(Ry) 00216C(Ry) 002175(Ry) 0027DD(Wy) 
; ram_0603                              = $0603 ; 000051(Wi) 000B74(Ri) 002016(Wx) 002053(Wx) 0020F2(Ry) 00216C(Ry) 002175(Ry) 002809(Wy) 00287C(Wx) 
; ram_0604                              = $0604 ; 000051(Wi) 000B74(Ri) 002016(Wx) 002053(Wx) 0020F2(Ry) 00216C(Ry) 002175(Ry) 002809(Wy) 00287C(Wx) 
; ram_0605                              = $0605 ; 000051(Wi) 000B74(Ri) 002016(Wx) 002053(Wx) 0020F2(Ry) 00216C(Ry) 002175(Ry) 002809(Wy) 00287C(Wx) 
; ram_0606                              = $0606 ; 000051(Wi) 000B74(Ri) 002016(Wx) 002053(Wx) 0020F2(Ry) 00216C(Ry) 002175(Ry) 002809(Wy) 00287C(Wx) 
; ram_0607                              = $0607 ; 000051(Wi) 000B74(Ri) 002016(Wx) 002053(Wx) 0020F2(Ry) 00216C(Ry) 002175(Ry) 002809(Wy) 00287C(Wx) 
; ram_0608                              = $0608 ; 000051(Wi) 000B74(Ri) 002016(Wx) 002053(Wx) 0020F2(Ry) 00216C(Ry) 002175(Ry) 002809(Wy) 002818(Wy) 00287C(Wx) 
; ram_0609                              = $0609 ; 000051(Wi) 000B8D(Ri) 002016(Wx) 002053(Wx) 0020F2(Ry) 002175(Ry) 0027E7(Wy) 
; ram_060A                              = $060A ; 000051(Wi) 000B52(Ri) 002016(Wx) 002053(Wx) 0020F2(Ry) 00216C(Ry) 0027E2(Wy) 
; ram_060B                              = $060B ; 000051(Wi) 000B58(Ri) 002016(Wx) 0027DD(Wy) 
; ram_060C                              = $060C ; 000051(Wi) 000B74(Ri) 002809(Wy) 002879(Wx) 
; ram_060D                              = $060D ; 000051(Wi) 000B74(Ri) 002809(Wy) 002879(Wx) 
; ram_060E                              = $060E ; 000051(Wi) 000B74(Ri) 002809(Wy) 002879(Wx) 
; ram_060F                              = $060F ; 000051(Wi) 000B74(Ri) 002809(Wy) 002879(Wx) 
; ram_0610                              = $0610 ; 000051(Wi) 000B74(Ri) 002019(Wx) 002044(Wx) 002106(Ry) 002809(Wy) 002879(Wx) 
; ram_0611                              = $0611 ; 000051(Wi) 000B74(Ri) 002019(Wx) 002044(Wx) 002106(Ry) 002809(Wy) 002818(Wy) 002879(Wx) 
; ram_0612                              = $0612 ; 000051(Wi) 000B8D(Ri) 002019(Wx) 002044(Wx) 002106(Ry) 0027E7(Wy) 
; ram_0613                              = $0613 ; 000051(Wi) 000B52(Ri) 002019(Wx) 002044(Wx) 002106(Ry) 0027E2(Wy) 
; ram_0614                              = $0614 ; 000051(Wi) 000B58(Ri) 002019(Wx) 002044(Wx) 002106(Ry) 0027DD(Wy) 
; ram_0615                              = $0615 ; 000051(Wi) 000B74(Ri) 002019(Wx) 002044(Wx) 002106(Ry) 002809(Wy) 002876(Wx) 
; ram_0616                              = $0616 ; 000051(Wi) 000B74(Ri) 002019(Wx) 002044(Wx) 002106(Ry) 002809(Wy) 002876(Wx) 
; ram_0617                              = $0617 ; 000051(Wi) 000B74(Ri) 002019(Wx) 002044(Wx) 002106(Ry) 002809(Wy) 002876(Wx) 
; ram_0618                              = $0618 ; 000051(Wi) 000B74(Ri) 002019(Wx) 002044(Wx) 002106(Ry) 002809(Wy) 002876(Wx) 
; ram_0619                              = $0619 ; 000051(Wi) 000B74(Ri) 002019(Wx) 002044(Wx) 002106(Ry) 002809(Wy) 002876(Wx) 
; ram_061A                              = $061A ; 000051(Wi) 000B74(Ri) 002019(Wx) 002044(Wx) 002106(Ry) 002809(Wy) 002818(Wy) 002876(Wx) 
; ram_061B                              = $061B ; 000051(Wi) 000B8D(Ri) 002019(Wx) 0027E7(Wy) 
; ram_061C                              = $061C ; 000051(Wi) 000B52(Ri) 0027E2(Wy) 
; ram_061D                              = $061D ; 000051(Wi) 000B58(Ri) 0027DD(Wy) 
; ram_061E                              = $061E ; 000051(Wi) 000B74(Ri) 002809(Wy) 002873(Wx) 
; ram_061F                              = $061F ; 000051(Wi) 000B74(Ri) 002809(Wy) 002873(Wx) 
; ram_0620                              = $0620 ; 000051(Wi) 000B74(Ri) 00201C(Wx) 002061(Wx) 002809(Wy) 00282F(Wx) 002873(Wx) 
; ram_0621                              = $0621 ; 000051(Wi) 000B74(Ri) 00201C(Wx) 002061(Wx) 002809(Wy) 00282F(Wx) 002873(Wx) 
; ram_0622                              = $0622 ; 000051(Wi) 000B74(Ri) 00201C(Wx) 002061(Wx) 002809(Wy) 002873(Wx) 
; ram_0623                              = $0623 ; 000051(Wi) 000B74(Ri) 00201C(Wx) 002061(Wx) 002809(Wy) 002818(Wy) 002873(Wx) 
; ram_0624                              = $0624 ; 000051(Wi) 000B8D(Ri) 00201C(Wx) 002061(Wx) 0027E7(Wy) 
; ram_0625                              = $0625 ; 000051(Wi) 000B52(Ri) 00201C(Wx) 002061(Wx) 0027E2(Wy) 
; ram_0626                              = $0626 ; 000051(Wi) 000B58(Ri) 00201C(Wx) 002061(Wx) 0027DD(Wy) 
; ram_0627                              = $0627 ; 000051(Wi) 000B74(Ri) 00201C(Wx) 002061(Wx) 002809(Wy) 002870(Wx) 
; ram_0628                              = $0628 ; 000051(Wi) 000B74(Ri) 00201C(Wx) 002061(Wx) 002809(Wy) 002870(Wx) 
; ram_0629                              = $0629 ; 000051(Wi) 000B74(Ri) 00201C(Wx) 002061(Wx) 002809(Wy) 002870(Wx) 
; ram_062A                              = $062A ; 000051(Wi) 000B74(Ri) 00201C(Wx) 002061(Wx) 002809(Wy) 002870(Wx) 
; ram_062B                              = $062B ; 000051(Wi) 000B74(Ri) 00201C(Wx) 002809(Wy) 002870(Wx) 
; ram_062C                              = $062C ; 000051(Wi) 000B74(Ri) 002809(Wy) 002818(Wy) 002870(Wx) 
; ram_062D                              = $062D ; 000051(Wi) 000B8D(Ri) 0027E7(Wy) 
; ram_062E                              = $062E ; 000051(Wi) 000B52(Ri) 0027E2(Wy) 
; ram_062F                              = $062F ; 000051(Wi) 000B58(Ri) 0027DD(Wy) 
; ram_0630                              = $0630 ; 000051(Wi) 000B74(Ri) 001D7C(Ry) 002799(Wy) 002809(Wy) 00286D(Wx) 
; ram_0631                              = $0631 ; 000051(Wi) 000B74(Ri) 001A74(Ry) 001D7C(Ry) 00278E(Wy) 002809(Wy) 00286D(Wx) 
; ram_0632                              = $0632 ; 000051(Wi) 000B74(Ri) 001A74(Ry) 001D7C(Ry) 001E7B(Ry) 00278E(Wy) 002809(Wy) 00286D(Wx) 
; ram_0633                              = $0633 ; 000051(Wi) 000B74(Ri) 001A74(Ry) 001D7C(Ry) 001E7B(Ry) 00278E(Wy) 002809(Wy) 00286D(Wx) 
; ram_0634                              = $0634 ; 000051(Wi) 000B74(Ri) 001A74(Ry) 001D7C(Ry) 001E7B(Ry) 00278E(Wy) 002809(Wy) 00286D(Wx) 
; ram_0635                              = $0635 ; 000051(Wi) 000B74(Ri) 001A74(Ry) 001D7C(Ry) 001E7B(Ry) 00278E(Wy) 002809(Wy) 002818(Wy) 00286D(Wx) 
; ram_0636                              = $0636 ; 000051(Wi) 000B8D(Ri) 001A74(Ry) 001D7C(Ry) 001E7B(Ry) 00278E(Wy) 0027E7(Wy) 
; ram_0637                              = $0637 ; 000051(Wi) 000B52(Ri) 001A74(Ry) 001D7C(Ry) 001E7B(Ry) 00278E(Wy) 0027E2(Wy) 
; ram_0638                              = $0638 ; 000051(Wi) 000B58(Ri) 001D7C(Ry) 0027DD(Wy) 
; ram_0639                              = $0639 ; 000051(Wi) 000B74(Ri) 002809(Wy) 002857(Wx) 
; ram_063A                              = $063A ; 000051(Wi) 000B74(Ri) 002809(Wy) 002857(Wx) 
; ram_063B                              = $063B ; 000051(Wi) 000B74(Ri) 002809(Wy) 002857(Wx) 
; ram_063C                              = $063C ; 000051(Wi) 000B74(Ri) 002809(Wy) 002857(Wx) 
; ram_063D                              = $063D ; 000051(Wi) 000B74(Ri) 002809(Wy) 002857(Wx) 
; ram_063E                              = $063E ; 000051(Wi) 000B74(Ri) 001991(R)  001B04(W)  001B1A(W)  002809(Wy) 002818(Wy) 002857(Wx) 
; ram_063F                              = $063F ; 000051(Wi) 00027B(W)  000B8D(Ri) 0019BD(R)  0019CE(W)  0027E7(Wy) 
; ram_0640                              = $0640 ; 000051(Wi) 000B52(Ri) 0019A4(Wy) 0019ED(Rx) 0019F0(Wx) 0027E2(Wy) 
; ram_0641                              = $0641 ; 000051(Wi) 000B58(Ri) 0019A4(Wy) 0019ED(Rx) 0019F0(Wx) 0027DD(Wy) 
; ram_0642                              = $0642 ; 000051(Wi) 000B74(Ri) 0019A4(Wy) 0019ED(Rx) 0019F0(Wx) 002809(Wy) 00285A(Wx) 
; ram_0643                              = $0643 ; 000051(Wi) 000B74(Ri) 0019A4(Wy) 0019ED(Rx) 0019F0(Wx) 002809(Wy) 00285A(Wx) 
; ram_0644                              = $0644 ; 000051(Wi) 000B74(Ri) 0019A4(Wy) 0019ED(Rx) 0019F0(Wx) 002809(Wy) 00285A(Wx) 
; ram_0645                              = $0645 ; 000051(Wi) 000B74(Ri) 002809(Wy) 00285A(Wx) 
; ram_0646                              = $0646 ; 000051(Wi) 000B74(Ri) 002809(Wy) 00285A(Wx) 
; ram_0647                              = $0647 ; 000051(Wi) 000B74(Ri) 002809(Wy) 002818(Wy) 00285A(Wx) 
; ram_0648                              = $0648 ; 000051(Wi) 000B8D(Ri) 0019AC(Wy) 0019F6(Rx) 001A2F(Rx) 001A3F(Rx) 001A44(Wx) 0027E7(Wy) 
; ram_0649                              = $0649 ; 000051(Wi) 000B52(Ri) 0019AC(Wy) 0019F6(Rx) 001A2F(Rx) 001A3F(Rx) 001A44(Wx) 0027E2(Wy) 
; ram_064A                              = $064A ; 000051(Wi) 000B58(Ri) 0019AC(Wy) 0019F6(Rx) 001A2F(Rx) 001A3F(Rx) 001A44(Wx) 0027DD(Wy) 
; ram_064B                              = $064B ; 000051(Wi) 000B74(Ri) 0019AC(Wy) 0019F6(Rx) 001A2F(Rx) 001A3F(Rx) 001A44(Wx) 002809(Wy) 00285D(Wx) 
; ram_064C                              = $064C ; 000051(Wi) 000B74(Ri) 0019AC(Wy) 0019F6(Rx) 001A2F(Rx) 001A3F(Rx) 001A44(Wx) 002809(Wy) 00285D(Wx) 
; ram_064D                              = $064D ; 000051(Wi) 000B74(Ri) 002809(Wy) 00282F(Wx) 00285D(Wx) 
; ram_064E                              = $064E ; 000051(Wi) 000B74(Ri) 002809(Wy) 00282F(Wx) 00285D(Wx) 
; ram_064F                              = $064F ; 000051(Wi) 000B74(Ri) 002809(Wy) 00285D(Wx) 
; ram_0650                              = $0650 ; 000051(Wi) 000B74(Ri) 0019A1(Wy) 0019E9(Rx) 001A36(Rx) 001A3C(Wx) 002809(Wy) 002818(Wy) 00285D(Wx) 
; ram_0651                              = $0651 ; 000051(Wi) 000B8D(Ri) 0019A1(Wy) 0019E9(Rx) 001A36(Rx) 001A3C(Wx) 0027E7(Wy) 
; ram_0652                              = $0652 ; 000051(Wi) 000B52(Ri) 0019A1(Wy) 0019E9(Rx) 001A36(Rx) 001A3C(Wx) 0027E2(Wy) 
; ram_0653                              = $0653 ; 000051(Wi) 000B58(Ri) 0019A1(Wy) 0019E9(Rx) 001A36(Rx) 001A3C(Wx) 0027DD(Wy) 
; ram_0654                              = $0654 ; 000051(Wi) 000B74(Ri) 0019A1(Wy) 0019E9(Rx) 001A36(Rx) 001A3C(Wx) 002809(Wy) 002860(Wx) 
; ram_0655                              = $0655 ; 000051(Wi) 000B74(Ri) 002809(Wy) 002860(Wx) 
; ram_0656                              = $0656 ; 000051(Wi) 000B74(Ri) 002809(Wy) 002860(Wx) 
; ram_0657                              = $0657 ; 000051(Wi) 000B74(Ri) 002809(Wy) 002860(Wx) 
; ram_0658                              = $0658 ; 000051(Wi) 000B74(Ri) 0019B5(Wy) 001A00(Rx) 002809(Wy) 002860(Wx) 
; ram_0659                              = $0659 ; 000051(Wi) 000B74(Ri) 0019B5(Wy) 001A00(Rx) 002809(Wy) 002818(Wy) 002860(Wx) 
; ram_065A                              = $065A ; 000051(Wi) 000B8D(Ri) 0019B5(Wy) 001A00(Rx) 0027E7(Wy) 
; ram_065B                              = $065B ; 000051(Wi) 000B52(Ri) 0019B5(Wy) 001A00(Rx) 0027E2(Wy) 
; ram_065C                              = $065C ; 000051(Wi) 000B58(Ri) 0019B5(Wy) 001A00(Rx) 0027DD(Wy) 
; ram_065D                              = $065D ; 000051(Wi) 000B74(Ri) 002809(Wy) 002863(Wx) 
; ram_065E                              = $065E ; 000051(Wi) 000B74(Ri) 002809(Wy) 002863(Wx) 
; ram_065F                              = $065F ; 000051(Wi) 000B74(Ri) 002809(Wy) 002863(Wx) 
; ram_0660                              = $0660 ; 000051(Wi) 000B74(Ri) 0019A7(Wy) 001A0B(Wx) 001A10(Rx) 002809(Wy) 002863(Wx) 
; ram_0661                              = $0661 ; 000051(Wi) 000B74(Ri) 0019A7(Wy) 001A0B(Wx) 001A10(Rx) 002809(Wy) 002863(Wx) 
; ram_0662                              = $0662 ; 000051(Wi) 000B74(Ri) 0019A7(Wy) 001A0B(Wx) 001A10(Rx) 002809(Wy) 002818(Wy) 002863(Wx) 
; ram_0663                              = $0663 ; 000051(Wi) 000B8D(Ri) 0019A7(Wy) 001A0B(Wx) 001A10(Rx) 0027E7(Wy) 
; ram_0664                              = $0664 ; 000051(Wi) 000B52(Ri) 0019A7(Wy) 001A0B(Wx) 001A10(Rx) 0027E2(Wy) 
; ram_0665                              = $0665 ; 000051(Wi) 000B58(Ri) 0027DD(Wy) 
; ram_0666                              = $0666 ; 000051(Wi) 000B74(Ri) 002809(Wy) 002866(Wx) 
; ram_0667                              = $0667 ; 000051(Wi) 000B74(Ri) 002809(Wy) 002866(Wx) 



; 
ram_0668_data                           = $0668 ; 000051(Wi) 000B74(Ri) 0015EE(Ry) 002809(Wy) 002866(Wx) 003319(Wx) 003418(Wy) 
; ram_0669                              = $0669 ; 000051(Wi) 000B74(Ri) 0015EE(Ry) 002809(Wy) 002866(Wx) 003319(Wx) 003418(Wy) 
; ram_066A                              = $066A ; 000051(Wi) 000B74(Ri) 0015EE(Ry) 002809(Wy) 002866(Wx) 003319(Wx) 003418(Wy) 
; ram_066B                              = $066B ; 000051(Wi) 000B74(Ri) 0015EE(Ry) 002809(Wy) 002866(Wx) 003319(Wx) 003418(Wy) 
; ram_066C                              = $066C ; 000051(Wi) 000B8D(Ri) 0015EE(Ry) 001712(Ry) 0027D8(W)  003319(Wx) 003418(Wy) 
; ram_066D                              = $066D ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 003418(Wy) 
; ram_066E                              = $066E ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 003418(Wy) 
; ram_066F                              = $066F ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 003418(Wy) 
; ram_0670                              = $0670 ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 003418(Wy) 
; ram_0671                              = $0671 ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 003418(Wy) 
; ram_0672                              = $0672 ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 003418(Wy) 
; ram_0673                              = $0673 ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 003418(Wy) 
; ram_0674                              = $0674 ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 003418(Wy) 
; ram_0675                              = $0675 ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 003418(Wy) 
; ram_0676                              = $0676 ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 003418(Wy) 
; ram_0677                              = $0677 ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 003418(Wy) 
; ram_0678                              = $0678 ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 003418(Wy) 
; ram_0679                              = $0679 ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 003418(Wy) 
; ram_067A                              = $067A ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 003418(Wy) 
; ram_067B                              = $067B ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 003418(Wy) 
; ram_067C                              = $067C ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 
; ram_067D                              = $067D ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 
; ram_067E                              = $067E ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 
; ram_067F                              = $067F ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 
; ram_0680                              = $0680 ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 
; ram_0681                              = $0681 ; 000051(Wi) 0015EE(Ry) 001712(Ry) 003319(Wx) 
; ram_0682                              = $0682 ; 000051(Wi) 0015EE(Ry) 001712(Ry) 002364(Rx) 002367(Wx) 0025F5(Wy) 003319(Wx) 
; ram_0683                              = $0683 ; 000051(Wi) 0015EE(Ry) 001712(Ry) 002364(Rx) 002367(Wx) 0025F5(Wy) 003319(Wx) 
; ram_0684                              = $0684 ; 000051(Wi) 0015EE(Ry) 001712(Ry) 002364(Rx) 002367(Wx) 0025F5(Wy) 003319(Wx) 
; ram_0685                              = $0685 ; 000051(Wi) 0015EE(Ry) 001712(Ry) 002364(Rx) 002367(Wx) 0025F5(Wy) 003319(Wx) 



; 
ram_0686_data                           = $0686 ; 000051(Wi) 0015F7(Ry) 003319(Wx) 003422(Wy) 
; ram_0687                              = $0687 ; 000051(Wi) 0015F7(Ry) 003319(Wx) 003422(Wy) 
; ram_0688                              = $0688 ; 000051(Wi) 0015F7(Ry) 003319(Wx) 003422(Wy) 
; ram_0689                              = $0689 ; 000051(Wi) 0015F7(Ry) 003319(Wx) 003422(Wy) 
; ram_068A                              = $068A ; 000051(Wi) 0015F7(Ry) 00171B(Ry) 003319(Wx) 003422(Wy) 
; ram_068B                              = $068B ; 000051(Wi) 0015F7(Ry) 00171B(Ry) 003319(Wx) 003422(Wy) 
; ram_068C                              = $068C ; 000051(Wi) 0015F7(Ry) 00171B(Ry) 003319(Wx) 003422(Wy) 
; ram_068D                              = $068D ; 000051(Wi) 0015F7(Ry) 00171B(Ry) 003319(Wx) 003422(Wy) 
; ram_068E                              = $068E ; 000051(Wi) 0015F7(Ry) 00171B(Ry) 003319(Wx) 003422(Wy) 
; ram_068F                              = $068F ; 000051(Wi) 0015F7(Ry) 00171B(Ry) 003319(Wx) 003422(Wy) 
; ram_0690                              = $0690 ; 000051(Wi) 0015F7(Ry) 00171B(Ry) 003319(Wx) 003422(Wy) 
; ram_0691                              = $0691 ; 000051(Wi) 0015F7(Ry) 00171B(Ry) 003319(Wx) 003422(Wy) 
; ram_0692                              = $0692 ; 000051(Wi) 0015F7(Ry) 00171B(Ry) 003319(Wx) 003422(Wy) 
; ram_0693                              = $0693 ; 000051(Wi) 0015F7(Ry) 00171B(Ry) 003319(Wx) 003422(Wy) 
; ram_0694                              = $0694 ; 000051(Wi) 0015F7(Ry) 00171B(Ry) 003319(Wx) 003422(Wy) 
; ram_0695                              = $0695 ; 000051(Wi) 0015F7(Ry) 00171B(Ry) 003319(Wx) 003422(Wy) 
; ram_0696                              = $0696 ; 000051(Wi) 0015F7(Ry) 00171B(Ry) 003319(Wx) 003422(Wy) 
; ram_0697                              = $0697 ; 000051(Wi) 0015F7(Ry) 00171B(Ry) 003319(Wx) 003422(Wy) 
; ram_0698                              = $0698 ; 000051(Wi) 0015F7(Ry) 00171B(Ry) 003319(Wx) 003422(Wy) 
; ram_0699                              = $0699 ; 000051(Wi) 0015F7(Ry) 003319(Wx) 003422(Wy) 
; ram_069A                              = $069A ; 000051(Wi) 003319(Wx) 
; ram_069B                              = $069B ; 000051(Wi) 003319(Wx) 
; ram_069C                              = $069C ; 000051(Wi) 003319(Wx) 
; ram_069D                              = $069D ; 000051(Wi) 003319(Wx) 
; ram_069E                              = $069E ; 000051(Wi) 003319(Wx) 
; ram_069F                              = $069F ; 000051(Wi) 003319(Wx) 
; ram_06A0                              = $06A0 ; 000051(Wi) 0015F7(Ry) 00171B(Ry) 00236C(Rx) 00236F(Wx) 002602(Wy) 003319(Wx) 
; ram_06A1                              = $06A1 ; 000051(Wi) 0015F7(Ry) 00171B(Ry) 00236C(Rx) 00236F(Wx) 002602(Wy) 003319(Wx) 
; ram_06A2                              = $06A2 ; 000051(Wi) 0015F7(Ry) 00171B(Ry) 00236C(Rx) 00236F(Wx) 002602(Wy) 003319(Wx) 
; ram_06A3                              = $06A3 ; 000051(Wi) 0015F7(Ry) 00171B(Ry) 00236C(Rx) 00236F(Wx) 002602(Wy) 003319(Wx) 



; !!!
ram_06A4                                = $06A4 ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06A5                                = $06A5 ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06A6                                = $06A6 ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06A7                                = $06A7 ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06A8                                = $06A8 ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06A9                                = $06A9 ; 000051(Wi) 000F24(R)  001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06AA                                = $06AA ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06AB                                = $06AB ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06AC                                = $06AC ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06AD                                = $06AD ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06AE                                = $06AE ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06AF                                = $06AF ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06B0                                = $06B0 ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06B1                                = $06B1 ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06B2                                = $06B2 ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06B3                                = $06B3 ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06B4                                = $06B4 ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06B5                                = $06B5 ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06B6                                = $06B6 ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06B7                                = $06B7 ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 003319(Wx) 003428(Wy) 
ram_06B8                                = $06B8 ; 000051(Wi) 003319(Wx) 
ram_06B9                                = $06B9 ; 000051(Wi) 003319(Wx) 
ram_06BA                                = $06BA ; 000051(Wi) 003319(Wx) 
ram_06BB                                = $06BB ; 000051(Wi) 003319(Wx) 
ram_06BC                                = $06BC ; 000051(Wi) 003319(Wx) 
ram_06BD                                = $06BD ; 000051(Wi) 003319(Wx) 
ram_06BE                                = $06BE ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 0025EA(Wy) 003319(Wx) 
ram_06BF                                = $06BF ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 0025EA(Wy) 003319(Wx) 
ram_06C0                                = $06C0 ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 0025EA(Wy) 003319(Wx) 
ram_06C1                                = $06C1 ; 000051(Wi) 001605(Ry) 00160E(Ry) 00163F(Ry) 0025EA(Wy) 003319(Wx) 




ram_06C2_data                           = $06C2 ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06C3                              = $06C3 ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06C4                              = $06C4 ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06C5                              = $06C5 ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06C6                              = $06C6 ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06C7                              = $06C7 ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06C8                              = $06C8 ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06C9                              = $06C9 ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06CA                              = $06CA ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06CB                              = $06CB ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06CC                              = $06CC ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06CD                              = $06CD ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06CE                              = $06CE ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06CF                              = $06CF ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06D0                              = $06D0 ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06D1                              = $06D1 ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06D2                              = $06D2 ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06D3                              = $06D3 ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06D4                              = $06D4 ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06D5                              = $06D5 ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 00342E(Wy) 
; ram_06D6                              = $06D6 ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 
; ram_06D7                              = $06D7 ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 
; ram_06D8                              = $06D8 ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 
; ram_06D9                              = $06D9 ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 
; ram_06DA                              = $06DA ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 
; ram_06DB                              = $06DB ; 000051(Wi) 001706(Ry) 00170D(Ry) 003319(Wx) 
; ram_06DC                              = $06DC ; 000051(Wi) 001706(Ry) 00170D(Ry) 0025F0(Wy) 003319(Wx) 
; ram_06DD                              = $06DD ; 000051(Wi) 001706(Ry) 00170D(Ry) 0025F0(Wy) 003319(Wx) 
; ram_06DE                              = $06DE ; 000051(Wi) 001706(Ry) 00170D(Ry) 0025F0(Wy) 003319(Wx) 
; ram_06DF                              = $06DF ; 000051(Wi) 001706(Ry) 00170D(Ry) 0025F0(Wy) 003319(Wx) 



; 
ram_06E0_bouns_stage_data               = $06E0 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06E1                              = $06E1 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06E2                              = $06E2 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06E3                              = $06E3 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06E4                              = $06E4 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06E5                              = $06E5 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06E6                              = $06E6 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06E7                              = $06E7 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06E8                              = $06E8 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06E9                              = $06E9 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06EA                              = $06EA ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06EB                              = $06EB ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06EC                              = $06EC ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06ED                              = $06ED ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06EE                              = $06EE ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06EF                              = $06EF ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06F0                              = $06F0 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06F1                              = $06F1 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06F2                              = $06F2 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06F3                              = $06F3 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 00343A(Wy) 
; ram_06F4                              = $06F4 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 
; ram_06F5                              = $06F5 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 0022A3(Wx) 
; ram_06F6                              = $06F6 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 0022A3(Wx) 
; ram_06F7                              = $06F7 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 0022A3(Wx) 
; ram_06F8                              = $06F8 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 0022A3(Wx) 
; ram_06F9                              = $06F9 ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 
; ram_06FA                              = $06FA ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 0025DB(Wy) 
; ram_06FB                              = $06FB ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 0025DB(Wy) 
; ram_06FC                              = $06FC ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 0025DB(Wy) 
; ram_06FD                              = $06FD ; 000051(Wi) 0015E5(Ry) 0016F8(Ry) 0025DB(Wy) 



; free addresses
; ram_06FE                              = $06FE ; 000051(Wi) 
; ram_06FF                              = $06FF ; 000051(Wi) 



; for sound engine
ram_0700_se                             = $0700 ; 000051(Wi) 003C5E(W)  003D04(R)  



; for sound engine
ram_0701_se                             = $0701 ; 000051(Wi) 003C50(W)  003C61(W)  003C97(W)  003CAE(R)  



; for sound engine
ram_0702_se                             = $0702 ; 000051(Wi) 003CA9(W)  003CC6(R)  003CCB(W)  



; for sound engine
ram_0703_se                             = $0703 ; 000051(Wi) 003C53(W)  003CD8(W)  003CF3(W)  



; for sound engine
ram_0704_se                             = $0704 ; 000051(Wi) 003C56(W)  003D0E(W)  003D1A(W)  



; bzk optimize, useless address
ram_0705_useless                        = $0705 ; 000051(Wi) 003C4B(W)  



; bzk optimize, useless address
ram_0706_useless                        = $0706 ; 000051(Wi) 003C59(W)  



; free addresses
; ram_0707                              = $0707 ; 000051(Wi) 
; ram_0708                              = $0708 ; 000051(Wi) 



; for sound engine
ram_0709_se                             = $0709 ; 000051(Wi) 003A9C(W)  003AA4(R)  003AAE(W)  



; free addresses
; ram_070A                              = $070A ; 000051(Wi) 
; ram_070B                              = $070B ; 000051(Wi) 
; ram_070C                              = $070C ; 000051(Wi) 
; ram_070D                              = $070D ; 000051(Wi) 



; for sound engine
ram_070E_se                             = $070E ; 000051(Wi) 003B85(W)  003B88(R)  003B93(R)  003BA7(W)  003BCF(W)  003BDB(R)  003BE3(R)  003BEF(W)  003BFB(R)  003C03(R)  



; free addresses
; ram_070F                              = $070F ; 000051(Wi) 
; ram_0710                              = $0710 ; 000051(Wi) 



; for sound engine
ram_0711_se                             = $0711 ; 000051(Wi) 003949(R)  003952(W)  00395C(W)  



; for sound engine
ram_0712_se                             = $0712 ; 000051(Wi) 003A78(W)  003A7B(R)  003A97(W)  003AB1(R)  003AC5(W)  003B00(W)  003B0D(W)  003B19(R)  003B2B(W)  003B3C(R)  



; free addresses
; ram_0713                              = $0713 ; 000051(Wi) 
; ram_0714                              = $0714 ; 000051(Wi) 
; ram_0715                              = $0715 ; 000051(Wi) 
; ram_0716                              = $0716 ; 000051(Wi) 
; ram_0717                              = $0717 ; 000051(Wi) 
; ram_0718                              = $0718 ; 000051(Wi) 
; ram_0719                              = $0719 ; 000051(Wi) 
; ram_071A                              = $071A ; 000051(Wi) 
; ram_071B                              = $071B ; 000051(Wi) 
; ram_071C                              = $071C ; 000051(Wi) 
; ram_071D                              = $071D ; 000051(Wi) 
; ram_071E                              = $071E ; 000051(Wi) 
; ram_071F                              = $071F ; 000051(Wi) 
; ram_0720                              = $0720 ; 000051(Wi) 
; ram_0721                              = $0721 ; 000051(Wi) 
; ram_0722                              = $0722 ; 000051(Wi) 
; ram_0723                              = $0723 ; 000051(Wi) 
; ram_0724                              = $0724 ; 000051(Wi) 
; ram_0725                              = $0725 ; 000051(Wi) 
; ram_0726                              = $0726 ; 000051(Wi) 
; ram_0727                              = $0727 ; 000051(Wi) 
; ram_0728                              = $0728 ; 000051(Wi) 
; ram_0729                              = $0729 ; 000051(Wi) 
; ram_072A                              = $072A ; 000051(Wi) 
; ram_072B                              = $072B ; 000051(Wi) 
; ram_072C                              = $072C ; 000051(Wi) 
; ram_072D                              = $072D ; 000051(Wi) 
; ram_072E                              = $072E ; 000051(Wi) 
; ram_072F                              = $072F ; 000051(Wi) 
; ram_0730                              = $0730 ; 000051(Wi) 
; ram_0731                              = $0731 ; 000051(Wi) 
; ram_0732                              = $0732 ; 000051(Wi) 
; ram_0733                              = $0733 ; 000051(Wi) 
; ram_0734                              = $0734 ; 000051(Wi) 
; ram_0735                              = $0735 ; 000051(Wi) 
; ram_0736                              = $0736 ; 000051(Wi) 
; ram_0737                              = $0737 ; 000051(Wi) 
; ram_0738                              = $0738 ; 000051(Wi) 
; ram_0739                              = $0739 ; 000051(Wi) 
; ram_073A                              = $073A ; 000051(Wi) 
; ram_073B                              = $073B ; 000051(Wi) 
; ram_073C                              = $073C ; 000051(Wi) 
; ram_073D                              = $073D ; 000051(Wi) 
; ram_073E                              = $073E ; 000051(Wi) 
; ram_073F                              = $073F ; 000051(Wi) 
; ram_0740                              = $0740 ; 000051(Wi) 
; ram_0741                              = $0741 ; 000051(Wi) 
; ram_0742                              = $0742 ; 000051(Wi) 
; ram_0743                              = $0743 ; 000051(Wi) 
; ram_0744                              = $0744 ; 000051(Wi) 
; ram_0745                              = $0745 ; 000051(Wi) 
; ram_0746                              = $0746 ; 000051(Wi) 
; ram_0747                              = $0747 ; 000051(Wi) 
; ram_0748                              = $0748 ; 000051(Wi) 
; ram_0749                              = $0749 ; 000051(Wi) 
; ram_074A                              = $074A ; 000051(Wi) 
; ram_074B                              = $074B ; 000051(Wi) 
; ram_074C                              = $074C ; 000051(Wi) 
; ram_074D                              = $074D ; 000051(Wi) 
; ram_074E                              = $074E ; 000051(Wi) 
; ram_074F                              = $074F ; 000051(Wi) 
; ram_0750                              = $0750 ; 000051(Wi) 
; ram_0751                              = $0751 ; 000051(Wi) 
; ram_0752                              = $0752 ; 000051(Wi) 
; ram_0753                              = $0753 ; 000051(Wi) 
; ram_0754                              = $0754 ; 000051(Wi) 
; ram_0755                              = $0755 ; 000051(Wi) 
; ram_0756                              = $0756 ; 000051(Wi) 
; ram_0757                              = $0757 ; 000051(Wi) 
; ram_0758                              = $0758 ; 000051(Wi) 
; ram_0759                              = $0759 ; 000051(Wi) 
; ram_075A                              = $075A ; 000051(Wi) 
; ram_075B                              = $075B ; 000051(Wi) 
; ram_075C                              = $075C ; 000051(Wi) 
; ram_075D                              = $075D ; 000051(Wi) 
; ram_075E                              = $075E ; 000051(Wi) 
; ram_075F                              = $075F ; 000051(Wi) 
; ram_0760                              = $0760 ; 000051(Wi) 
; ram_0761                              = $0761 ; 000051(Wi) 
; ram_0762                              = $0762 ; 000051(Wi) 
; ram_0763                              = $0763 ; 000051(Wi) 
; ram_0764                              = $0764 ; 000051(Wi) 
; ram_0765                              = $0765 ; 000051(Wi) 
; ram_0766                              = $0766 ; 000051(Wi) 
; ram_0767                              = $0767 ; 000051(Wi) 
; ram_0768                              = $0768 ; 000051(Wi) 
; ram_0769                              = $0769 ; 000051(Wi) 
; ram_076A                              = $076A ; 000051(Wi) 
; ram_076B                              = $076B ; 000051(Wi) 
; ram_076C                              = $076C ; 000051(Wi) 
; ram_076D                              = $076D ; 000051(Wi) 
; ram_076E                              = $076E ; 000051(Wi) 
; ram_076F                              = $076F ; 000051(Wi) 
; ram_0770                              = $0770 ; 000051(Wi) 
; ram_0771                              = $0771 ; 000051(Wi) 
; ram_0772                              = $0772 ; 000051(Wi) 
; ram_0773                              = $0773 ; 000051(Wi) 
; ram_0774                              = $0774 ; 000051(Wi) 
; ram_0775                              = $0775 ; 000051(Wi) 
; ram_0776                              = $0776 ; 000051(Wi) 
; ram_0777                              = $0777 ; 000051(Wi) 
; ram_0778                              = $0778 ; 000051(Wi) 
; ram_0779                              = $0779 ; 000051(Wi) 
; ram_077A                              = $077A ; 000051(Wi) 
; ram_077B                              = $077B ; 000051(Wi) 
; ram_077C                              = $077C ; 000051(Wi) 
; ram_077D                              = $077D ; 000051(Wi) 
; ram_077E                              = $077E ; 000051(Wi) 
; ram_077F                              = $077F ; 000051(Wi) 



; both hold 5A if game was already loaded
ram_reset_check                         = $0780 ; 000045(R)  000051(Wi) 00005C(W)  
; ram_0781                              = $0781 ; 00004A(R)  000051(Wi) 00005F(W)  



; 
ram_0782                                = $0782 ; 000051(Wi) 002524(W)  002527(R)  00252D(W)  



; 
ram_0783_plr                            = $0783 ; 000051(Wi) 001628(Wx) 001BCC(Wx) 001C6B(Wx) 0022FC(Ry) 002382(Ry) 
; ram_0784                              = $0784 ; 000051(Wi) 001628(Wx) 001BCC(Wx) 001C6B(Wx) 0022FC(Ry) 002382(Ry) 



; 
ram_0785                                = $0785 ; 000051(Wi) 00058B(W)  002518(W)  002545(W)  



; !!!
ram_0786                                = $0786 ; 000051(Wi) 001A6A(R)  001C11(R)  0021D7(R)  002290(Rx) 00229E(Wx) 0022B3(Rx) 002353(Rx) 00253F(Wx) 002597(Ry) 0025A0(Wy) 0026B7(R)  0026D1(Wx) 002BE3(R)  003085(R)  003092(R)  003236(Ry) 
ram_0787                                = $0787 ; 000051(Wi) 001A6F(R)  001C17(R)  0021DC(R)  002290(Rx) 00229E(Wx) 0022B3(Rx) 002353(Rx) 00253F(Wx) 002597(Ry) 0025A0(Wy) 0026D1(Wx) 002BE8(R)  00308A(R)  003097(R)  003236(Ry) 
ram_0788                                = $0788 ; 000051(Wi) 001C49(Ry) 002290(Rx) 00229E(Wx) 0022C4(Ry) 0022C7(Wy) 002353(Rx) 00253F(Wx) 002597(Ry) 0025A0(Wy) 0026D1(Wx) 00317F(Ry) 
ram_0789                                = $0789 ; 000051(Wi) 001C49(Ry) 002290(Rx) 00229E(Wx) 0022C4(Ry) 0022C7(Wy) 002353(Rx) 00253F(Wx) 002597(Ry) 0025A0(Wy) 0026D1(Wx) 00317F(Ry) 



; !!!
ram_078A                                = $078A ; 000051(Wi) 001C4E(Ry) 0022C4(Ry) 0022C7(Wy) 0026D1(Wx) 
ram_078B                                = $078B ; 000051(Wi) 001C4E(Ry) 0022C4(Ry) 0022C7(Wy) 0026D1(Wx) 
ram_078C                                = $078C ; 000051(Wi) 001C53(Ry) 0022C4(Ry) 0022C7(Wy) 0026D1(Wx) 
ram_078D                                = $078D ; 000051(Wi) 001C53(Ry) 0022C4(Ry) 0022C7(Wy) 0026D1(Wx) 
ram_078E                                = $078E ; 000051(Wi) 001C58(Ry) 0022C4(Ry) 0022C7(Wy) 0026D1(Wx) 
ram_078F                                = $078F ; 000051(Wi) 001C58(Ry) 0022C4(Ry) 0022C7(Wy) 0026D1(Wx) 



; 0x002537
ram_range_0790_07BD                     = $0790 ; for common links



; 
ram_0790_obj                            = $0790 ; 000051(Wi) 00231F(Rx) 002502(Wy) 002537(Wx) 
; ram_0791                              = $0791 ; 000051(Wi) 00231F(Rx) 002502(Wy) 002537(Wx) 
; ram_0792                              = $0792 ; 000051(Wi) 00231F(Rx) 002502(Wy) 002537(Wx) 
; ram_0793                              = $0793 ; 000051(Wi) 00231F(Rx) 002502(Wy) 002537(Wx) 
; ram_0794                              = $0794 ; 000051(Wi) 00231F(Rx) 002502(Wy) 002537(Wx) 
; ram_0795                              = $0795 ; 000051(Wi) 00231F(Rx) 002502(Wy) 002537(Wx) 
; ram_0796                              = $0796 ; 000051(Wi) 00231F(Rx) 002502(Wy) 002537(Wx) 
; ram_0797                              = $0797 ; 000051(Wi) 00231F(Rx) 002537(Wx) 0025BF(Wy) 0026C4(Wx) 
; ram_0798                              = $0798 ; 000051(Wi) 00231F(Rx) 002537(Wx) 0025BF(Wy) 0026C4(Wx) 
; ram_0799                              = $0799 ; 000051(Wi) 00231F(Rx) 002537(Wx) 0025BF(Wy) 
; ram_079A                              = $079A ; 000051(Wi) 00231F(Rx) 002537(Wx) 0025BF(Wy) 



; free addresses
; ram_079B                              = $079B ; 000051(Wi) 002537(Wx) 
; ram_079C                              = $079C ; 000051(Wi) 002537(Wx) 
; ram_079D                              = $079D ; 000051(Wi) 002537(Wx) 
; ram_079E                              = $079E ; 000051(Wi) 002537(Wx) 
; ram_079F                              = $079F ; 000051(Wi) 002537(Wx) 




ram_07A0_obj                            = $07A0 ; 000051(Wi) 002317(Rx) 002508(Wy) 002537(Wx) 
; ram_07A1                              = $07A1 ; 000051(Wi) 002317(Rx) 002508(Wy) 002537(Wx) 
; ram_07A2                              = $07A2 ; 000051(Wi) 002317(Rx) 002508(Wy) 002537(Wx) 
; ram_07A3                              = $07A3 ; 000051(Wi) 002317(Rx) 002508(Wy) 002537(Wx) 
; ram_07A4                              = $07A4 ; 000051(Wi) 002317(Rx) 002508(Wy) 002537(Wx) 
; ram_07A5                              = $07A5 ; 000051(Wi) 002317(Rx) 002508(Wy) 002537(Wx) 
; ram_07A6                              = $07A6 ; 000051(Wi) 002317(Rx) 002508(Wy) 002537(Wx) 
; ram_07A7                              = $07A7 ; 000051(Wi) 002317(Rx) 002537(Wx) 0025BA(Wy) 0026C9(Wx) 
; ram_07A8                              = $07A8 ; 000051(Wi) 002317(Rx) 002537(Wx) 0025BA(Wy) 0026C9(Wx) 
; ram_07A9                              = $07A9 ; 000051(Wi) 002317(Rx) 002537(Wx) 0025BA(Wy) 
; ram_07AA                              = $07AA ; 000051(Wi) 002317(Rx) 002537(Wx) 0025BA(Wy) 



; free addresses
; ram_07AB                              = $07AB ; 000051(Wi) 002537(Wx) 
; ram_07AC                              = $07AC ; 000051(Wi) 002537(Wx) 
; ram_07AD                              = $07AD ; 000051(Wi) 002537(Wx) 
; ram_07AE                              = $07AE ; 000051(Wi) 002537(Wx) 
; ram_07AF                              = $07AF ; 000051(Wi) 002537(Wx) 




ram_07B0_obj                            = $07B0 ; 000051(Wi) 0022F6(Rx) 00232A(Wx) 002537(Wx) 
; ram_07B1                              = $07B1 ; 000051(Wi) 0022F6(Rx) 00232A(Wx) 002537(Wx) 
; ram_07B2                              = $07B2 ; 000051(Wi) 0022F6(Rx) 00232A(Wx) 002537(Wx) 
; ram_07B3                              = $07B3 ; 000051(Wi) 0022F6(Rx) 00232A(Wx) 002537(Wx) 
; ram_07B4                              = $07B4 ; 000051(Wi) 0022F6(Rx) 00232A(Wx) 002537(Wx) 
; ram_07B5                              = $07B5 ; 000051(Wi) 0022F6(Rx) 00232A(Wx) 002537(Wx) 
; ram_07B6                              = $07B6 ; 000051(Wi) 0022F6(Rx) 00232A(Wx) 002537(Wx) 
; ram_07B7                              = $07B7 ; 000051(Wi) 0022C0(Rx) 002308(Rx) 00232A(Wx) 002335(Rx) 00235F(Rx) 002537(Wx) 
; ram_07B8                              = $07B8 ; 000051(Wi) 0022C0(Rx) 002308(Rx) 00232A(Wx) 002335(Rx) 00235F(Rx) 002537(Wx) 
; ram_07B9                              = $07B9 ; 000051(Wi) 002308(Rx) 00232A(Wx) 002335(Rx) 00235F(Rx) 002537(Wx) 
; ram_07BA                              = $07BA ; 000051(Wi) 002308(Rx) 00232A(Wx) 002335(Rx) 00235F(Rx) 002537(Wx) 



; free addresses
; ram_07BB                              = $07BB ; 000051(Wi) 002537(Wx) 
; ram_07BC                              = $07BC ; 000051(Wi) 002537(Wx) 
; ram_07BD                              = $07BD ; 000051(Wi) 002537(Wx) 
; ram_07BE                              = $07BE ; 000051(Wi) 
; ram_07BF                              = $07BF ; 000051(Wi) 



; 
ram_07C0_obj                            = $07C0 ; 000051(Wi) 002313(Rx) 00231A(Wx) 
; ram_07C1                              = $07C1 ; 000051(Wi) 002313(Rx) 00231A(Wx) 
; ram_07C2                              = $07C2 ; 000051(Wi) 002313(Rx) 00231A(Wx) 
; ram_07C3                              = $07C3 ; 000051(Wi) 002313(Rx) 00231A(Wx) 
; ram_07C4                              = $07C4 ; 000051(Wi) 002313(Rx) 00231A(Wx) 
; ram_07C5                              = $07C5 ; 000051(Wi) 002313(Rx) 00231A(Wx) 
; ram_07C6                              = $07C6 ; 000051(Wi) 002313(Rx) 00231A(Wx) 
; ram_07C7                              = $07C7 ; 000051(Wi) 002313(Rx) 00231A(Wx) 
; ram_07C8                              = $07C8 ; 000051(Wi) 002313(Rx) 00231A(Wx) 
; ram_07C9                              = $07C9 ; 000051(Wi) 002313(Rx) 00231A(Wx) 
; ram_07CA                              = $07CA ; 000051(Wi) 002313(Rx) 00231A(Wx) 



; free addresses
; ram_07CB                              = $07CB ; 000051(Wi) 
; ram_07CC                              = $07CC ; 000051(Wi) 
; ram_07CD                              = $07CD ; 000051(Wi) 
; ram_07CE                              = $07CE ; 000051(Wi) 
; ram_07CF                              = $07CF ; 000051(Wi) 




ram_07D0_obj                            = $07D0 ; 000051(Wi) 002322(Rx) 00250F(Wy) 
; ram_07D1                              = $07D1 ; 000051(Wi) 002322(Rx) 00250F(Wy) 
; ram_07D2                              = $07D2 ; 000051(Wi) 002322(Rx) 00250F(Wy) 
; ram_07D3                              = $07D3 ; 000051(Wi) 002322(Rx) 00250F(Wy) 
; ram_07D4                              = $07D4 ; 000051(Wi) 002322(Rx) 00250F(Wy) 
; ram_07D5                              = $07D5 ; 000051(Wi) 002322(Rx) 00250F(Wy) 
; ram_07D6                              = $07D6 ; 000051(Wi) 002322(Rx) 00250F(Wy) 
; ram_07D7                              = $07D7 ; 000051(Wi) 001C2C(Ry) 002322(Rx) 0025AC(Wy) 0026BF(Wx) 
; ram_07D8                              = $07D8 ; 000051(Wi) 001C2C(Ry) 002322(Rx) 0025AC(Wy) 0026BF(Wx) 
; ram_07D9                              = $07D9 ; 000051(Wi) 002322(Rx) 0025AC(Wy) 
; ram_07DA                              = $07DA ; 000051(Wi) 002322(Rx) 0025AC(Wy) 



; free addresses
; ram_07DB                              = $07DB ; 000051(Wi) 
; ram_07DC                              = $07DC ; 000051(Wi) 
; ram_07DD                              = $07DD ; 000051(Wi) 
; ram_07DE                              = $07DE ; 000051(Wi) 
; ram_07DF                              = $07DF ; 000051(Wi) 
; ram_07E0                              = $07E0 ; 000051(Wi) 
; ram_07E1                              = $07E1 ; 000051(Wi) 
; ram_07E2                              = $07E2 ; 000051(Wi) 
; ram_07E3                              = $07E3 ; 000051(Wi) 
; ram_07E4                              = $07E4 ; 000051(Wi) 
; ram_07E5                              = $07E5 ; 000051(Wi) 
; ram_07E6                              = $07E6 ; 000051(Wi) 
; ram_07E7                              = $07E7 ; 000051(Wi) 
; ram_07E8                              = $07E8 ; 000051(Wi) 
; ram_07E9                              = $07E9 ; 000051(Wi) 
; ram_07EA                              = $07EA ; 000051(Wi) 
; ram_07EB                              = $07EB ; 000051(Wi) 



; player score and top score (BCD format)
; 4 for top, 4 for 1p, 4 for 2p
ram_07EC                                = $07EC ; 000051(Wi) 000A71(Ry) 000A9F(Ry) 000AB7(Wy) 000AD6(Ry) 
ram_07ED                                = $07ED ; 000051(Wi) 00093C(Ry) 000A92(Ry) 000AB7(Wy) 
ram_07EE                                = $07EE ; 000051(Wi) 00093C(Ry) 000949(Ry) 000A87(Ry) 000AB7(Wy) 
ram_07EF                                = $07EF ; 000051(Wi) 00093C(Ry) 000949(Ry) 000A7C(Ry) 000AB7(Wy) 
ram_07F0                                = $07F0 ; 000051(Wi) 0003CB(Wx) 0009A5(Rx) 000AB4(Rx) 000AD1(Rx) 
ram_07F1                                = $07F1 ; 000051(Wi) 0003CB(Wx) 00093C(Ry) 000A49(Rx) 000A50(Wx) 000A97(Rx) 000AB4(Rx) 
ram_07F2                                = $07F2 ; 000051(Wi) 0003CB(Wx) 00093C(Ry) 000949(Ry) 000A3F(Rx) 000A46(Wx) 000A8C(Rx) 000AB4(Rx) 
ram_07F3                                = $07F3 ; 000051(Wi) 0003CB(Wx) 00093C(Ry) 000949(Ry) 000A3C(Wx) 000A54(Rx) 000A81(Rx) 000AB4(Rx) 
ram_07F4                                = $07F4 ; 000051(Wi) 0003CB(Wx) 0009A5(Rx) 000AB4(Rx) 000AD1(Rx) 
ram_07F5                                = $07F5 ; 000051(Wi) 0003CB(Wx) 00093C(Ry) 000A49(Rx) 000A50(Wx) 000A97(Rx) 000AB4(Rx) 
ram_07F6                                = $07F6 ; 000051(Wi) 0003CB(Wx) 00093C(Ry) 000949(Ry) 000A3F(Rx) 000A46(Wx) 000A8C(Rx) 000AB4(Rx) 
ram_07F7                                = $07F7 ; 000051(Wi) 0003CB(Wx) 00093C(Ry) 000949(Ry) 000A3C(Wx) 000A54(Rx) 000A81(Rx) 000AB4(Rx) 



; 
ram_07F8                                = $07F8 ; 000051(Wi) 00030E(Wx) 0003CB(Wx) 000982(Rx) 0009D2(Wx) 
ram_07F9                                = $07F9 ; 000051(Wi) 00030E(Wx) 0003CB(Wx) 000A49(Rx) 000A50(Wx) 
ram_07FA                                = $07FA ; 000051(Wi) 00030E(Wx) 000316(W)  0003CB(Wx) 00093C(Ry) 000949(Ry) 0009C1(Rx) 000A3F(Rx) 000A46(Wx) 0036B8(R)  
ram_07FB                                = $07FB ; 000051(Wi) 00030E(Wx) 0003CB(Wx) 00093C(Ry) 000949(Ry) 0009C6(Rx) 0009DA(Rx) 000A3C(Wx) 000A54(Rx) 0036BB(R)  0036C6(R)  
ram_07FC                                = $07FC ; 000051(Wi) 00030E(Wx) 0003CB(Wx) 000982(Rx) 0009D2(Wx) 
ram_07FD                                = $07FD ; 000051(Wi) 00030E(Wx) 0003CB(Wx) 000A49(Rx) 000A50(Wx) 
ram_07FE                                = $07FE ; 000051(Wi) 00030E(Wx) 000319(W)  0003CB(Wx) 00093C(Ry) 000949(Ry) 0009C1(Rx) 000A3F(Rx) 000A46(Wx) 
ram_07FF                                = $07FF ; 000051(Wi) 00030E(Wx) 00093C(Ry) 000949(Ry) 0009C6(Rx) 0009DA(Rx) 000A3C(Wx) 000A54(Rx) 
