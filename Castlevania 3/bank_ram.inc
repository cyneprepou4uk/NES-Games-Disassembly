; to the right are ROM File addresses of instructions which were using these RAM addresses



; https://tcrf.net/Castlevania_III:_Dracula%27s_Curse
; https://castlevaniaspeedruns.com/Cv3/hacking
; http://gmvania.blogspot.com/2012/08/bookmark-this-blog-entry-last-update.html 



; 
ram_0000_temp                           = $0000 ; 000554(W)  00055A(R)  000BB4(W)  000BDC(W)  000BF9(W)  000C07(W)  000C3F(W)  000C50(R)  000C79(W)  000C87(Rx) 000C97(Rx) 0013D9(W)  0013E9(R)  001873(W)  0021B9(W)  002225(W)  002230(R)  002232(W)  002234(R)  00223D(W)  002242(R)  0022B5(W)  0022BF(W)  002355(W)  00235E(R)  00245C(W)  00256F(W)  002576(R)  002579(R)  00275A(W)  002760(R)  002942(W)  002949(R)  002A8D(W)  002A91(R)  002C6D(W)  002C7B(R)  002C91(R)  0036B7(W)  0036BF(W)  0039C7(W)  0039D5(W)  003AD8(W)  003AF1(W)  003B42(W)  003B49(W)  003B4C(W)  003B4F(W)  003B52(W)  003B54(R)  003C75(W)  003CA8(R)  003CC0(W)  003CCE(W)  003CEF(R)  003D3B(W)  003D47(R)  00405D(W)  004064(R)  0040BC(W)  0040F3(W)  00411A(W)  0041A3(W)  0041CA(R)  004274(W)  0042F7(W)  004333(W)  00434F(W)  004372(W)  00437B(W)  004385(R)  0043D1(R)  0043F2(W)  004405(W)  00440F(W)  004446(W)  00462B(W)  004638(R)  004654(R)  004659(W)  0046D6(W)  0046DF(W)  00488F(W)  004899(R)  00489E(W)  00491F(W)  004957(W)  0049A2(W)  0049AA(R)  004F1C(W)  004F1F(W)  004F22(W)  004F25(W)  004F2D(R)  004F2F(W)  004F55(R)  004F57(W)  00519C(W)  0051A3(W)  0051B8(W)  0051BF(W)  0051CF(W)  0051D6(W)  00522F(R)  00524F(R)  005288(R)  005414(W)  0054DE(W)  0055BC(W)  005894(W)  0058B5(R)  0058B9(R)  005A47(W)  005A5C(W)  005AA1(R)  005AA7(W)  005AB0(W)  005AC1(R)  005AD9(W)  005AF8(R)  005B28(W)  005CD2(W)  005CE1(W)  005CEC(R)  005D04(R)  005D48(W)  005E2A(W)  0067B5(W)  0067DB(W)  006A6C(W)  006A74(R)  006AE4(W)  006AEA(R)  006BF6(W)  006BFC(R)  006C3C(W)  006C49(W)  006C91(W)  006D50(W)  006EBE(W)  006F34(W)  006F44(W)  006F5E(R)  0070DF(W)  0070EA(W)  0070FD(W)  007110(W)  007123(W)  00716E(W)  0071AE(W)  0071BC(R)  0071FB(W)  0071FD(R)  007207(W)  0073BB(W)  0073C4(R)  0074C1(R)  0074E0(R)  0074E2(W)  0074F4(W)  007500(W)  007507(R)  00750D(W)  007524(W)  007528(R)  007587(W)  007591(R)  0076AA(W)  0076AC(R)  0076BA(W)  0076DF(W)  0076EA(R)  0076EC(W)  007701(W)  00770E(W)  007713(W)  007715(W)  007717(W)  00771F(R)  007753(W)  00775A(R)  0077AC(W)  0077B2(R)  0077C1(R)  0077DB(W)  007809(W)  007818(R)  00784A(W)  007858(W)  007865(R)  0078A5(W)  0078D7(W)  0078E9(W)  007903(W)  00790A(R)  007952(W)  007956(R)  00796A(R)  007985(W)  007987(R)  008033(W)  00804B(W)  0080AA(W)  0082CE(W)  0082D8(W)  0082DD(R)  0082EF(W)  008301(R)  008307(W)  008312(R)  0084A7(W)  0084C0(R)  008736(W)  008765(R)  008793(W)  00879A(R)  0088D7(W)  0088E1(W)  0088E6(R)  008904(W)  008948(R)  008984(R)  00898C(R)  0089A9(W)  0089B8(R)  0089E7(W)  0089EB(R)  008A41(W)  008A4E(R)  008ABC(W)  008B01(R)  008B12(R)  008B89(W)  008B98(W)  008BA5(R)  008BA9(W)  008BB4(R)  008BC5(W)  008BD7(W)  008BE3(W)  008CA9(W)  008CEF(W)  008D21(R)  008D5C(W)  008D5E(R)  008DCC(W)  008E3F(W)  008EAA(W)  008EAF(R)  009291(W)  009296(R)  0093A0(W)  0093B1(W)  0093C1(W)  0093D2(W)  0093D4(R)  0093DA(R)  0093E8(R)  009437(W)  00943E(R)  009461(W)  009477(W)  00948C(W)  009498(R)  00953B(W)  009541(R)  009563(W)  009574(R)  009593(W)  009599(R)  0095B9(W)  0095C1(R)  0095CE(R)  0095E6(R)  0095EC(W)  009763(W)  009848(W)  009873(W)  0098C0(W)  0098C9(W)  009963(W)  009A00(W)  009A0A(R)  009B03(W)  009B09(R)  009B42(W)  009B4F(R)  009B54(W)  009B67(R)  009B7F(W)  009B8A(R)  009B97(R)  009BA4(W)  009BAC(R)  009BAE(W)  009BBC(R)  009C00(W)  009D7A(W)  009D7F(R)  009E4E(W)  009E51(R)  009F0D(W)  009F12(R)  009FDC(W)  009FDF(R)  00A020(W)  00A023(R)  00AA91(W)  00AC46(W)  00AC55(R)  00AC9D(R)  00ACA7(R)  00ACC5(R)  00ACC7(W)  00ACDC(R)  00ACDE(W)  00AD34(W)  00AD89(R)  00ADFE(W)  00AE0A(R)  00AE0C(W)  00AE1B(R)  00B0B5(W)  00B0C2(R)  00B26A(W)  00B272(W)  00B48F(W)  00B497(R)  00B4A4(W)  00B4B0(R)  00B4DB(W)  00B4DF(R)  00B4E1(W)  00B4FC(R)  00B4FE(W)  00B6DD(W)  00B710(W)  00B7C9(R)  00B7F4(W)  00B8D8(W)  00B8EA(W)  00B98B(R)  00B9C0(W)  00B9CD(R)  00B9EA(W)  00BA38(R)  00BA3A(W)  00BA55(R)  00BA5E(R)  00BA6D(W)  00C062(W)  00C064(R)  00C0B3(W)  00C0BB(R)  00C3FD(W)  00C402(R)  00C4F7(W)  00C50D(R)  00C517(R)  00C82A(W)  00C860(W)  00C87B(R)  00CAF4(W)  00CB14(W)  00CB34(R)  00CB61(W)  00CB75(W)  00CBCB(W)  00CBD6(W)  00CBDC(R)  00CE89(R)  00CEE3(R)  00CF14(R)  00D12A(R)  00D28F(W)  00D2D3(W)  00D2F6(R)  00D307(R)  00D567(W)  00D578(W)  00D584(R)  00D5F1(W)  00D5FA(W)  00D5FE(R)  00D77C(R)  00D7DC(R)  00D807(R)  00D823(R)  00D827(W)  00D82F(R)  00D895(W)  00D8A5(R)  00D995(W)  00D9A2(W)  00DD77(R)  00DF37(W)  00DF41(R)  013229(W)  01322F(R)  013924(W)  013938(R)  013954(R)  013983(R)  013A29(R)  017BEA(W)  017BF9(R)  017C9E(W)  017CBD(R)  017CE0(W)  017CE2(R)  017E10(W)  017E56(R)  017E60(R)  017E92(R)  017EE7(W)  017EF1(W)  01BE55(W)  01BE65(R)  01BEA0(W)  01BEAE(W)  01BEC7(R)  01BECB(W)  01BEDF(R)  01BEE4(W)  01BEF2(R)  01BEF7(W)  01F4D3(W)  01F4D7(R)  023F30(R)  023F73(W)  023F7B(R)  023F82(W)  02409D(W)  0240CB(W)  024118(W)  02413E(W)  0242B1(R)  02437E(R)  02439F(W)  0243AA(W)  0243B0(R)  02446D(R)  02448B(R)  024494(R)  0244A1(W)  024592(W)  024623(W)  02462B(R)  024632(W)  02465F(W)  024666(R)  0248F0(W)  024915(W)  024929(R)  02493D(R)  024943(W)  024949(R)  02494E(R)  024950(W)  024959(W)  025269(W)  0252D4(R)  0252E4(W)  0252FF(R)  02539F(W)  0253A2(R)  0253B6(W)  0253BE(R)  0253D4(W)  0253F1(R)  0253FE(R)  025405(W)  02540B(R)  025416(W)  025426(R)  025428(W)  025494(W)  0254A2(R)  025538(W)  025545(R)  025551(R)  0255A3(W)  0255BF(R)  0255D3(R)  0255E7(R)  0255ED(W)  0255FD(W)  02560E(R)  025632(W)  025643(R)  025667(W)  02566D(R)  0256C3(W)  0256CB(R)  0256D8(R)  02578B(W)  0257B2(W)  0257C9(R)  0257CD(W)  0257CF(R)  025860(W)  025933(W)  025943(R)  025989(W)  025B18(W)  025B2C(R)  025B46(R)  025B8B(R)  025C80(R)  025E65(R)  025E72(W)  025E7E(R)  025F39(W)  025F58(R)  02600E(W)  026014(R)  026040(W)  02609B(W)  026113(W)  02611E(W)  026125(R)  026152(W)  026158(R)  0261C5(W)  0261CE(W)  0261D4(R)  02625C(W)  026265(R)  0262D3(W)  0262E5(R)  026343(R)  02641E(R)  02656D(W)  026576(W)  02657C(R)  026693(W)  026695(R)  02673F(R)  026A43(W)  026A48(R)  026ABB(W)  026AC0(R)  026AC5(W)  026ACC(R)  026AF8(W)  026AFA(R)  026C21(W)  026C2A(W)  026C30(R)  026C83(W)  026D3B(W)  026D46(R)  026D96(R)  027183(R)  0272CA(W)  0272D5(W)  0272E0(W)  0272FF(W)  027311(W)  027365(R)  0273B0(W)  0273B9(W)  0273C0(R)  02744E(W)  027483(W)  027496(R)  0277F5(W)  0277FE(W)  027804(R)  027880(W)  027889(W)  02788F(R)  0278EE(W)  0278F9(R)  0278FF(W)  02790A(R)  027931(W)  027938(R)  027940(R)  027951(W)  027961(R)  027A67(W)  027A70(W)  027A7C(R)  027C9E(W)  027CAC(R)  027D8D(W)  027DC7(R)  027F76(W)  028120(W)  02813B(W)  0281A6(W)  0281B4(W)  0283E4(W)  0283F6(R)  02840A(R)  02851D(W)  028609(W)  02867F(W)  0286A9(W)  0286F2(W)  028750(W)  0287BA(W)  0287F9(W)  028852(W)  0288BA(W)  028913(W)  02894B(R)  0289B9(W)  028A61(W)  028D04(R)  028D34(R)  028DFA(W)  028E15(R)  02901F(W)  029025(W)  02B3CC(W)  02B3D1(R)  02B60F(W)  02B613(R)  02B915(W)  02B91B(R)  02C016(W)  02C02E(R)  02C29B(W)  02C2A1(R)  02C2D0(W)  02C2D5(R)  02C3AC(W)  02C3B8(R)  02C6F6(W)  02C6FC(R)  02C71D(W)  02C9C6(W)  02C9D6(R)  02CAC0(W)  02CB09(W)  02CB5F(R)  02CD9A(W)  02CD9F(R)  02CE05(R)  02CE90(W)  02CF4E(W)  02CF75(R)  02D065(W)  02D06C(R)  02D0DF(W)  02D0E6(R)  02D0FB(R)  02D224(W)  02D239(R)  02D7AF(R)  02D7B1(W)  02D7D8(R)  02D7E2(R)  02D97B(R)  02D9A1(W)  02DA9A(W)  02DAC3(R)  02DC42(W)  02DD94(W)  02DDB9(R)  02DFAF(W)  02DFB4(R)  02E2AF(R)  02E2D9(R)  02E408(W)  02E40F(R)  02E53B(W)  02E541(R)  02F38C(W)  02F3B7(R)  02F3F7(R)  02F447(W)  02F47C(R)  02F4A2(W)  02F4C0(W)  02F4F4(W)  02F5F4(W)  02F5FF(W)  02F602(R)  02F607(W)  02F621(W)  02F634(R)  02F833(W)  02F841(W)  02F856(W)  02F861(W)  02F86A(R)  02F8A1(W)  02F8BC(R)  02F915(W)  02F94B(R)  02F999(R)  02FD47(W)  02FD55(W)  032410(W)  032415(R)  03241A(W)  032426(R)  03243F(W)  03244D(R)  0324C9(W)  0324CD(R)  0326B5(W)  0326C5(R)  032762(W)  0327D6(R)  03281E(W)  0328F6(W)  0328FD(R)  032A4F(W)  032A56(R)  0331D3(W)  0331D9(R)  0332BE(W)  03403E(W)  0340CA(R)  0340D2(R)  034124(R)  03412C(R)  0341B5(W)  034222(R)  03422A(R)  0377B8(W)  0377C0(W)  0377C3(W)  0377CA(R)  03791A(W)  03792C(R)  037A20(W)  037A43(R)  037B01(W)  037B0C(R)  037B24(W)  037B37(R)  037B3C(R)  037B3E(W)  037B41(R)  037BA1(R)  037BD3(W)  037E29(W)  037E2F(R)  037E31(W)  037E3F(R)  038C71(W)  038C75(R)  038C82(W)  038C86(R)  038D52(W)  038D64(R)  038FA9(W)  038FCE(R)  038FE3(W)  039008(R)  039051(W)  039061(R)  0390E7(W)  0390FA(R)  03916E(W)  039181(R)  03AE29(W)  03AE49(W)  03AE95(W)  03AFA2(W)  03AFB6(R)  03B1E9(W)  03B1F3(R)  03B236(W)  03B250(R)  03B27B(W)  03B286(R)  03B291(R)  03B428(W)  03B42F(R)  03B438(R)  03B5ED(W)  03B5F2(R)  03B65F(W)  03B663(R)  03BD89(W)  03BD90(R)  03CE5F(W)  03CE71(R)  03D133(W)  03D137(W)  03D13A(W)  03D13D(W)  03D155(W)  03D159(W)  03D15C(W)  03D15F(W)  03D1D8(W)  03D1E3(R)  03D1E9(W)  03D1F8(R)  03D212(W)  03D225(R)  03D2DF(W)  03D2E6(R)  03D304(W)  03D30D(R)  03D328(R)  03D34E(W)  03D361(R)  03D419(W)  03D41D(R)  03D41F(W)  03D425(R)  03E037(W)  03E03F(Wi) 03E294(R)  03E2A6(Rx) 03E2AB(Rx) 03E2D5(Wx) 03E883(W)  03E898(W)  03E8AA(Rx) 03E8AC(Wx) 03E982(R)  03E984(W)  03EA22(W)  03EA38(R)  03EA3A(W)  03EA54(W)  03EA6F(W)  03EAAC(W)  03EAF1(W)  03EB0C(R)  03EB11(W)  03EB9B(W)  03EBA3(R)  03EC17(W)  03FA68(W)  03FA78(R)  
    ram_0000_t000_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t001_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t002_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t003_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t004_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t005_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t006_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t007_spawners_data             = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t008_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t009_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t00A_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t00B_blk_data                  = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t00C_blk_data_ptr_main         = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t00D_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t00E_nmt_attr_index_data       = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t00F_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t010_pos_XY_data               = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t011_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t012_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t013_pos_X_data                = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t014_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t015_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t016_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t017_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t018_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t019_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t01A_nmt_attr_index_data       = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t01B_nmt_attr_data             = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t01C_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t01D_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t01E_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t01F_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t020_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t021_data_pointer              = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t022_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t023_data                      = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t024_jmp                       = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t025_jmp                       = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t026_jmp                       = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t027_jmp                       = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t028_jmp                       = ram_0000_temp ; 2 addresses 0000-0001
    ram_0000_t029_hearts_cost               = ram_0000_temp ; 
    ram_0000_t02A                           = ram_0000_temp ; 
    ram_0000_t02B                           = ram_0000_temp ; 
    ram_0000_t02C_btns                      = ram_0000_temp ; 4 addresses 0000-0003
    ram_0000_t02D                           = ram_0000_temp ; 
    ram_0000_t02E_cam_pos_hi                = ram_0000_temp ; 
    ram_0000_t02F_nametable_attribute       = ram_0000_temp ; 
    ram_0000_t030_some_obj_flags            = ram_0000_temp ; 
    ram_0000_t031                           = ram_0000_temp ; 
    ram_0000_t032_spd_Y_fr                  = ram_0000_temp ; 
    ram_0000_t033                           = ram_0000_temp ; 
    ram_0000_t034                           = ram_0000_temp ; 
    ram_0000_t035_ppu_addr_hi               = ram_0000_temp ; 
    ram_0000_t036_cam_pos_hi                = ram_0000_temp ; 
    ram_0000_t037_cam_pos_lo                = ram_0000_temp ; 
    ram_0000_t038                           = ram_0000_temp ; 
    ram_0000_t039                           = ram_0000_temp ; 
    ram_0000_t03A                           = ram_0000_temp ; 
    ram_0000_t03B                           = ram_0000_temp ; 
    ram_0000_t03C_spd_X_lo                  = ram_0000_temp ; 
    ram_0000_t03D_spd_X_fr                  = ram_0000_temp ; 
    ram_0000_t03E_spd_X_lo                  = ram_0000_temp ; 
    ram_0000_t03F_spd_Y_fr                  = ram_0000_temp ; 
    ram_0000_t040_copy_obj_facing           = ram_0000_temp ; 
    ram_0000_t041_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t042                           = ram_0000_temp ; 
    ram_0000_t043                           = ram_0000_temp ; 
    ram_0000_t044                           = ram_0000_temp ; 
    ram_0000_t045_table_index               = ram_0000_temp ; 
    ram_0000_t046_add                       = ram_0000_temp ; 4 addresses 0000-0003
    ram_0000_t047                           = ram_0000_temp ; 
    ram_0000_t048_colors_counter            = ram_0000_temp ; 
    ram_0000_t049                           = ram_0000_temp ; 
    ram_0000_t04A                           = ram_0000_temp ; 
    ram_0000_t04B_loop_counter              = ram_0000_temp ; 
    ram_0000_t04C_main_loop_counter         = ram_0000_temp ; 
    ram_0000_t04D                           = ram_0000_temp ; 
    ram_0000_t04E_save_Y                    = ram_0000_temp ; 
    ram_0000_t04F_lo                        = ram_0000_temp ; 
    ram_0000_t050_ppu_addr_lo               = ram_0000_temp ; 
    ram_0000_t051_spr_A_palette             = ram_0000_temp ; 
    ram_0000_t052                           = ram_0000_temp ; 
    ram_0000_t053_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t054_lo                        = ram_0000_temp ; 
    ram_0000_t055                           = ram_0000_temp ; 
    ram_0000_t056_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t057_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t058_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t059_pos_Y_lo                  = ram_0000_temp ; 
    ram_0000_t05A_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t05B_ppu_addr_lo               = ram_0000_temp ; 
    ram_0000_t05C_obj_id_projectile         = ram_0000_temp ; 
    ram_0000_t05D                           = ram_0000_temp ; 
    ram_0000_t05E                           = ram_0000_temp ; 
    ram_0000_t05F                           = ram_0000_temp ; 
    ram_0000_t060                           = ram_0000_temp ; 
    ram_0000_t061                           = ram_0000_temp ; 
    ram_0000_t062                           = ram_0000_temp ; 
    ram_0000_t063                           = ram_0000_temp ; 
    ram_0000_t064                           = ram_0000_temp ; 
    ram_0000_t065                           = ram_0000_temp ; 
    ram_0000_t066                           = ram_0000_temp ; 
    ram_0000_t067                           = ram_0000_temp ; 
    ram_0000_t068                           = ram_0000_temp ; 
    ram_0000_t069                           = ram_0000_temp ; 
    ram_0000_t06A                           = ram_0000_temp ; 
    ram_0000_t06B                           = ram_0000_temp ; 
    ram_0000_t06C_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t06D                           = ram_0000_temp ; 
    ram_0000_t06E_buttons                   = ram_0000_temp ; 
    ram_0000_t06F_ppu_addr_lo               = ram_0000_temp ; 
    ram_0000_t070                           = ram_0000_temp ; 
    ram_0000_t071                           = ram_0000_temp ; 
    ram_0000_t072                           = ram_0000_temp ; 
    ram_0000_t073_lo                        = ram_0000_temp ; 
    ram_0000_t074_lo                        = ram_0000_temp ; 
    ram_0000_t075                           = ram_0000_temp ; 
    ram_0000_t076                           = ram_0000_temp ; 
    ram_0000_t077_ppu_addr_lo               = ram_0000_temp ; 
    ram_0000_t078_ppu_addr_lo               = ram_0000_temp ; 
    ram_0000_t079                           = ram_0000_temp ; 
    ram_0000_t07A                           = ram_0000_temp ; 
    ram_0000_t07B                           = ram_0000_temp ; 
    ram_0000_t07C                           = ram_0000_temp ; 
    ram_0000_t07D                           = ram_0000_temp ; 
    ram_0000_t07E                           = ram_0000_temp ; bzk optimize
    ram_0000_t07F_flag                      = ram_0000_temp ; 
    ram_0000_t080_pos_Y_lo                  = ram_0000_temp ; 
    ram_0000_t081                           = ram_0000_temp ; 
    ram_0000_t082                           = ram_0000_temp ; 
    ram_0000_t083_ppu_addr_lo               = ram_0000_temp ; 
    ram_0000_t084                           = ram_0000_temp ; 
    ram_0000_t085                           = ram_0000_temp ; 
    ram_0000_t086                           = ram_0000_temp ; 
    ram_0000_t087_damage_amount             = ram_0000_temp ; 
    ram_0000_t088_damage_offset             = ram_0000_temp ; 
    ram_0000_t089                           = ram_0000_temp ; 
    ram_0000_t08A_damage_offset             = ram_0000_temp ; 
    ram_0000_t08B_ppu_addr_hi               = ram_0000_temp ; 
    ram_0000_t08C                           = ram_0000_temp ; 
    ram_0000_t08D_object_id                 = ram_0000_temp ; 
    ram_0000_t08E                           = ram_0000_temp ; 
    ram_0000_t08F                           = ram_0000_temp ; 
    ram_0000_t090                           = ram_0000_temp ; 
    ram_0000_t091                           = ram_0000_temp ; 
    ram_0000_t092_tiles_counter             = ram_0000_temp ; 
    ram_0000_t093                           = ram_0000_temp ; 
    ram_0000_t094_scroll_X                  = ram_0000_temp ; 
    ram_0000_t095_base_nametable            = ram_0000_temp ; 
    ram_0000_t096                           = ram_0000_temp ; 
    ram_0000_t097_base_nametable            = ram_0000_temp ; 
    ram_0000_t098_score                     = ram_0000_temp ; 
    ram_0000_t099                           = ram_0000_temp ; 
    ram_0000_t09A                           = ram_0000_temp ; 
    ram_0000_t09B_ppu_addr_hi               = ram_0000_temp ; 
    ram_0000_t09C_ppu_addr_hi               = ram_0000_temp ; 
    ram_0000_t09D_pos_Y_lo                  = ram_0000_temp ; 
    ram_0000_t09E_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t09F                           = ram_0000_temp ; 
    ram_0000_t0A0_obj_facing                = ram_0000_temp ; 
    ram_0000_t0A1                           = ram_0000_temp ; 
    ram_0000_t0A2                           = ram_0000_temp ; 
    ram_0000_t0A3                           = ram_0000_temp ; 
    ram_0000_t0A4                           = ram_0000_temp ; 
    ram_0000_t0A5                           = ram_0000_temp ; 
    ram_0000_t0A6_hash                      = ram_0000_temp ; 
    ram_0000_t0A7                           = ram_0000_temp ; 
    ram_0000_t0A8                           = ram_0000_temp ; 
    ram_0000_t0A9                           = ram_0000_temp ; 
    ram_0000_t0AA                           = ram_0000_temp ; 
    ram_0000_t0AB                           = ram_0000_temp ; 
    ram_0000_t0AC_obj_facing                = ram_0000_temp ; 
    ram_0000_t0AD_hi                        = ram_0000_temp ; 
    ram_0000_t0AE                           = ram_0000_temp ; 
    ram_0000_t0AF                           = ram_0000_temp ; 
    ram_0000_t0B0_object_index              = ram_0000_temp ; 
    ram_0000_t0B1                           = ram_0000_temp ; 
    ram_0000_t0B2_obj_type                  = ram_0000_temp ; 
    ram_0000_t0B3_spd_lo                    = ram_0000_temp ; 
    ram_0000_t0B4_spd_Y_fr                  = ram_0000_temp ; 
    ram_0000_t0B5                           = ram_0000_temp ; 
    ram_0000_t0B6                           = ram_0000_temp ; 
    ram_0000_t0B7_lo_useless                = ram_0000_temp ; bzk optimize
    ram_0000_t0B8_lo_useless                = ram_0000_temp ; bzk optimize
    ram_0000_t0B9_lo_useless                = ram_0000_temp ; bzk optimize
    ram_0000_t0BA_lo_useless                = ram_0000_temp ; bzk optimize
    ram_0000_t0BB_lo_useless                = ram_0000_temp ; bzk optimize
    ram_0000_t0BC                           = ram_0000_temp ; 
    ram_0000_t0BD                           = ram_0000_temp ; 
    ram_0000_t0BE                           = ram_0000_temp ; 
    ram_0000_t0BF                           = ram_0000_temp ; 
    ram_0000_t0C0                           = ram_0000_temp ; 
    ram_0000_t0C1_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t0C2_flag                      = ram_0000_temp ; 
    ram_0000_t0C3                           = ram_0000_temp ; 
    ram_0000_t0C4                           = ram_0000_temp ; 
    ram_0000_t0C5                           = ram_0000_temp ; 
    ram_0000_t0C6                           = ram_0000_temp ; 
    ram_0000_t0C7_spr_A_palette             = ram_0000_temp ; 
    ram_0000_t0C8                           = ram_0000_temp ; 
    ram_0000_t0C9                           = ram_0000_temp ; 
    ram_0000_t0CA                           = ram_0000_temp ; 
    ram_0000_t0CB_spd_X_fr                  = ram_0000_temp ; 
    ram_0000_t0CC                           = ram_0000_temp ; 
    ram_0000_t0CD_obj_flag                  = ram_0000_temp ; 
    ram_0000_t0CE                           = ram_0000_temp ; 
    ram_0000_t0CF                           = ram_0000_temp ; 
    ram_0000_t0D0                           = ram_0000_temp ; 
    ram_0000_t0D1                           = ram_0000_temp ; 
    ram_0000_t0D2_pos_Y_lo                  = ram_0000_temp ; 
    ram_0000_t0D3_pos_Y_lo                  = ram_0000_temp ; 
    ram_0000_t0D4_weapon_upgrade_obj_id     = ram_0000_temp ; 
    ram_0000_t0D5                           = ram_0000_temp ; 
    ram_0000_t0D6                           = ram_0000_temp ; 
    ram_0000_t0D7_pos_Y_lo                  = ram_0000_temp ; 
    ram_0000_t0D8_pos_Y_lo                  = ram_0000_temp ; 
    ram_0000_t0D9_obj_facing                = ram_0000_temp ; 
    ram_0000_t0DA                           = ram_0000_temp ; 
    ram_0000_t0DB                           = ram_0000_temp ; 
    ram_0000_t0DC_loop_counter              = ram_0000_temp ; 
    ram_0000_t0DD_screen_timer_hi           = ram_0000_temp ; 
    ram_0000_t0DE_base_nametable            = ram_0000_temp ; 
    ram_0000_t0DF_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t0E0                           = ram_0000_temp ; 
    ram_0000_t0E1_spd_lo                    = ram_0000_temp ; 
    ram_0000_t0E2_flag                      = ram_0000_temp ; 
    ram_0000_t0E3                           = ram_0000_temp ; 
    ram_0000_t0E4                           = ram_0000_temp ; 
    ram_0000_t0E5                           = ram_0000_temp ; 
    ram_0000_t0E6_spawning_pos_X_lo         = ram_0000_temp ; 
    ram_0000_t0E7_pos_lo                    = ram_0000_temp ; 
    ram_0000_t0E8_spd_X_fr                  = ram_0000_temp ; 
    ram_0000_t0E9_spd_X_fr                  = ram_0000_temp ; 
    ram_0000_t0EA                           = ram_0000_temp ; 
    ram_0000_t0EB_counter                   = ram_0000_temp ; 
    ram_0000_t0EC                           = ram_0000_temp ; 
    ram_0000_t0ED_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t0EE_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t0EF_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t0F0                           = ram_0000_temp ; 
    ram_0000_t0F1_damage                    = ram_0000_temp ; 
    ram_0000_t0F2_pos_Y_lo                  = ram_0000_temp ; 
    ram_0000_t0F3                           = ram_0000_temp ; 
    ram_0000_t0F4                           = ram_0000_temp ; 
    ram_0000_t0F5_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t0F6_save_X                    = ram_0000_temp ; 
    ram_0000_t0F7_counter                   = ram_0000_temp ; 
    ram_0000_t0F8                           = ram_0000_temp ; 
    ram_0000_t0F9                           = ram_0000_temp ; 
    ram_0000_t0FA_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t0FB_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t0FC                           = ram_0000_temp ; 
    ram_0000_t0FD_hitbox_Y                  = ram_0000_temp ; 
    ram_0000_t0FE_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t0FF_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t100                           = ram_0000_temp ; 
    ram_0000_t101                           = ram_0000_temp ; 
    ram_0000_t102_obj_state                 = ram_0000_temp ; 
    ram_0000_t103_pos_lo                    = ram_0000_temp ; 
    ram_0000_t104_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t105_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t106_spd_Y_fr                  = ram_0000_temp ; 
    ram_0000_t107_useless_00                = ram_0000_temp ; bzk optimize
    ram_0000_t108_table_index               = ram_0000_temp ; 
    ram_0000_t109                           = ram_0000_temp ; 
    ram_0000_t10A_X_distance_to_orb         = ram_0000_temp ; 
    ram_0000_t10B                           = ram_0000_temp ; 
    ram_0000_t10C                           = ram_0000_temp ; 
    ram_0000_t10D_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t10E_counter                   = ram_0000_temp ; 
    ram_0000_t10F_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t110_colors_counter            = ram_0000_temp ; 
    ram_0000_t111                           = ram_0000_temp ; 
    ram_0000_t112_multiplicand              = ram_0000_temp ; 
    ram_0000_t113_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t114                           = ram_0000_temp ; 
    ram_0000_t115_obj_facing                = ram_0000_temp ; 
    ram_0000_t116_pos_Y_lo                  = ram_0000_temp ; 
    ram_0000_t117                           = ram_0000_temp ; 
    ram_0000_t118                           = ram_0000_temp ; 
    ram_0000_t119_hi                        = ram_0000_temp ; 
    ram_0000_t11A_lo                        = ram_0000_temp ; 
    ram_0000_t11B_pos_X_lo_distance         = ram_0000_temp ; 
    ram_0000_t11C_pos_Y_lo                  = ram_0000_temp ; 
    ram_0000_t11D_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t11E_pos_X_lo                  = ram_0000_temp ; 
    ram_0000_t11F_pos_X_lo_distance         = ram_0000_temp ; 
    ram_0000_t120                           = ram_0000_temp ; 
    ram_0000_t121                           = ram_0000_temp ; bzk optimize
    ram_0000_t122                           = ram_0000_temp ; 
    ram_0000_t123_object_index              = ram_0000_temp ; 
    ram_0000_t124                           = ram_0000_temp ; 
    ram_0000_t125_lo                        = ram_0000_temp ; 
    ram_0000_t126_lo                        = ram_0000_temp ; 
    ram_0000_t127_pos_Y_lo                  = ram_0000_temp ; 
    ram_0000_t128_useless_01                = ram_0000_temp ; bzk optimize
    ram_0000_t129                           = ram_0000_temp ; 
    ram_0000_t12A_useless                   = ram_0000_temp ; bzk optimize
    ram_0000_t12B_loop_counter              = ram_0000_temp ; 
    ram_0000_t12C_useless                   = ram_0000_temp ; bzk optimize
    ram_0000_t12D_useless                   = ram_0000_temp ; bzk optimize



; 
ram_0001_temp                           = $0001 ; 000C45(W)  000C4D(R)  000C57(W)  000C60(R)  000C87(Rx) 000C97(Rx) 001878(W)  0021BE(W)  002461(W)  00273D(W)  002753(R)  00292C(W)  00293B(R)  0036A0(W)  0036AE(W)  0036CA(W)  00395B(W)  003971(W)  003994(R)  003C77(W)  003C95(R)  003CB5(W)  003DB6(W)  003DBE(R)  0041A7(W)  0041D3(R)  004218(W)  0042FC(W)  004338(W)  004354(W)  0043D3(W)  00441A(W)  004440(R)  004631(W)  00463D(R)  00465B(R)  00465F(W)  004924(W)  00495C(W)  0049A8(W)  0049AF(R)  004EDE(W)  004EE5(W)  004EE8(W)  004EEB(W)  004EEE(W)  004EF6(R)  004F28(W)  004F31(R)  004F35(W)  004F59(R)  004F5D(W)  0054E3(W)  0055C1(W)  00570D(W)  00571B(R)  005729(W)  005A40(W)  005A42(R)  005A55(W)  005A57(R)  005B21(W)  005B23(R)  005D4D(W)  005E2F(W)  0067BA(W)  0067E0(W)  006C1E(W)  006C25(W)  006C28(W)  006C2D(R)  006C96(W)  006D55(W)  006EC3(W)  007179(W)  0071BA(W)  0071C1(R)  0074C6(R)  0074E6(R)  0074E8(W)  0074F8(W)  007505(W)  007536(W)  00753A(R)  00774D(W)  007760(R)  0077B0(W)  0077C6(W)  0077DF(R)  00780D(W)  00780F(R)  007828(R)  007837(W)  00784C(W)  007854(W)  007860(R)  0078DC(W)  0078ED(W)  007926(W)  00792F(R)  008038(W)  008050(W)  0080AF(W)  0082F5(W)  008309(R)  00843D(W)  008993(R)  0089AE(W)  0089B3(R)  008A06(W)  008A0B(R)  008A46(W)  008A52(R)  008AC3(W)  008B50(R)  008B67(W)  008B69(R)  008B85(W)  008B94(W)  008B9E(R)  008BA3(W)  008BAE(R)  008BC1(W)  008BCA(R)  008C63(W)  008C82(R)  008CA7(W)  008CF4(W)  008CFC(R)  008D04(W)  008D2C(R)  008D63(R)  008E44(W)  0093B3(R)  00946A(W)  009473(W)  009491(W)  0094AA(W)  009568(W)  009579(R)  0095B4(W)  0095D3(R)  0095DD(R)  0095E4(W)  0095F3(W)  009608(R)  00984D(W)  009878(W)  0098AB(W)  0098DF(W)  009968(W)  0099C0(R)  0099EC(R)  009A08(W)  009A12(R)  009A14(W)  009B12(W)  009B26(W)  009B2C(W)  009B3A(W)  009B49(R)  009B4D(W)  009B74(R)  009B88(W)  009B93(R)  009B95(W)  009BA6(R)  009C05(W)  009D75(W)  009D86(R)  009D91(R)  009DC0(R)  009E49(W)  009E58(R)  009F08(W)  009F19(R)  009F24(R)  009F53(R)  009FD7(W)  009FE6(R)  00A01B(W)  00A02A(R)  00A704(W)  00A74E(W)  00A79D(W)  00A88A(W)  00A972(W)  00A9DC(W)  00AA60(W)  00AAD9(R)  00AC4B(W)  00ACCC(R)  00ACCE(W)  00ACD3(R)  00ACE2(R)  00ACE4(W)  00ACF5(R)  00AD3A(W)  00AD90(R)  00AE03(W)  00AE10(R)  00AE12(W)  00AE15(R)  00B0AB(W)  00B0C0(R)  00B0C6(W)  00B0CA(R)  00B0D0(W)  00B0D7(R)  00B6E2(W)  00B715(W)  00B7CE(R)  00B7F9(W)  00B8DD(W)  00B8EF(W)  00B990(R)  00B9B9(W)  00B9D6(R)  00B9F1(W)  00BA41(R)  00BA71(W)  00C4F9(W)  00C4FD(R)  00C50F(R)  00CB66(W)  00CF96(W)  00CFA9(W)  00CFB1(W)  00CFB8(R)  00CFBF(W)  00CFC1(R)  00D1E4(W)  00D1EE(R)  00D293(W)  00D2D7(W)  00D310(R)  00D56B(W)  00D57C(W)  00D58D(R)  00D5E8(W)  00D5FC(W)  00D638(R)  00D647(R)  00D7A0(W)  00D7A5(R)  00D7A9(R)  00D89A(W)  00D8AF(R)  00D99A(W)  00D9A7(W)  00DC30(W)  00DC5C(R)  00DFB1(W)  00DFCD(R)  013734(W)  01391B(W)  01393C(R)  013958(R)  013987(R)  013A30(R)  017BF2(W)  017BFE(R)  017CA7(W)  017CE4(R)  017E21(W)  017E3A(R)  017E46(R)  017E7E(R)  01BEAA(W)  01BEB0(R)  01BEBB(W)  01BED7(R)  01BEDD(W)  01BEEE(R)  01BEF0(W)  01BEF5(R)  023E46(W)  023E4B(R)  0240A2(W)  0240D0(W)  02411F(W)  024143(W)  0242B6(R)  024383(R)  024422(R)  0244AA(W)  024597(W)  024677(W)  02526E(W)  02541B(W)  02542A(R)  02542E(W)  0255A8(W)  0255C4(R)  0255D8(R)  0255DE(R)  0255E5(W)  025602(W)  025613(R)  025637(W)  025648(R)  0256BE(W)  0256DD(R)  025790(W)  0257A1(R)  0257A3(W)  0257A7(R)  0257AE(W)  0257BC(W)  0257D3(R)  0257DA(W)  0257E0(R)  025865(W)  02598E(W)  025E77(W)  025EA7(R)  025EC0(R)  025EF3(W)  025F3E(W)  025F5D(R)  026045(W)  0260A0(W)  0272E5(W)  027303(W)  027315(W)  027368(R)  027488(W)  02749B(R)  027CA3(W)  027CB5(R)  028125(W)  028140(W)  0281AB(W)  0281B9(W)  028522(W)  02860D(W)  028754(W)  028875(W)  0288C1(W)  02890E(W)  0289BE(W)  028A4F(W)  028CFE(R)  028D2E(R)  028DFF(W)  028E1A(R)  02C020(W)  02C02A(R)  02C6F4(W)  02C704(R)  02C724(W)  02CAAA(W)  02CB0E(W)  02CB64(R)  02CDE2(R)  02CEAD(W)  02CF53(W)  02CF7A(R)  02D212(W)  02D23E(R)  02D944(W)  02D964(W)  02D980(R)  02DB53(W)  02DB58(R)  02DB65(W)  02DB6A(R)  02DBA7(W)  02DBAE(R)  02DBC7(W)  02DBC9(W)  02DBCB(W)  02DBCD(W)  02DBCF(W)  02DBD6(R)  02DDAD(W)  02DDB5(R)  02E217(W)  02F391(W)  02F3C6(R)  02F413(R)  02F44C(W)  02F48B(R)  02F4A7(W)  02F4C4(W)  02F4FE(W)  02F50C(R)  02F60C(W)  02F61C(W)  02F639(R)  02F83B(W)  02F848(R)  02F84A(W)  02F854(W)  02F8B8(W)  02F8DB(R)  02F8F2(R)  02FA54(R)  02FA5B(R)  02FD4C(W)  02FD5A(W)  032412(W)  03241C(R)  032420(W)  03242E(R)  032541(W)  032558(R)  0326BA(W)  0326CE(R)  032703(W)  032767(W)  0329AA(W)  0329E1(W)  0332C3(W)  034043(W)  03406E(R)  0340BA(R)  034114(R)  034170(R)  0341BA(W)  0341DC(R)  034216(R)  037945(W)  03794E(R)  037E15(W)  037E1B(W)  037E1E(W)  037E21(W)  037E24(W)  037E27(W)  037E36(R)  037E38(W)  037E44(R)  038982(W)  03898A(R)  038994(W)  03899D(R)  0389B7(W)  0389CE(R)  0389DF(R)  0389E4(W)  0389EB(W)  038D58(W)  038D6A(R)  03917B(W)  039188(R)  03AE2B(W)  03AE9A(W)  03B1E3(W)  03B1EE(R)  03E039(W)  03E03F(Wi) 03E044(W)  03E046(R)  03E29A(R)  03E2A6(Rx) 03E2AB(Rx) 03E2E0(Wx) 03E886(W)  03E89B(W)  03E8B0(Wx) 03E987(R)  03E989(W)  03EA27(W)  03EA3F(R)  03EA41(W)  03EA59(W)  03EA74(W)  03EAB1(W)  03EAF6(W)  03EB13(R)  03EB17(W)  03EC1C(W)  
    ram_0001_t000_hearts_ones               = ram_0001_temp ; 
    ram_0001_t001_blk_timer_0xx_ones        = ram_0001_temp ; 
    ram_0001_t002                           = ram_0001_temp ; 
    ram_0001_t003                           = ram_0001_temp ; 
    ram_0001_t004_lives_ones                = ram_0001_temp ; 
    ram_0001_t005                           = ram_0001_temp ; 
    ram_0001_t006_pos_Y_lo                  = ram_0001_temp ; 
    ram_0001_t007_pos_Y_lo                  = ram_0001_temp ; 
    ram_0001_t008_flag                      = ram_0001_temp ; 
    ram_0001_t009_pos_Y_lo                  = ram_0001_temp ; 
    ram_0001_t00A                           = ram_0001_temp ; 
    ram_0001_t00B_pos_Y_lo                  = ram_0001_temp ; 
    ram_0001_t00C_damage                    = ram_0001_temp ; 
    ram_0001_t00D_add_obj_flag              = ram_0001_temp ; 
    ram_0001_t00E                           = ram_0001_temp ; 
    ram_0001_t00F                           = ram_0001_temp ; 
    ram_0001_t010                           = ram_0001_temp ; 
    ram_0001_t011                           = ram_0001_temp ; 
    ram_0001_t012                           = ram_0001_temp ; 
    ram_0001_t013_pos_Y_lo                  = ram_0001_temp ; 
    ram_0001_t014_pos_X_lo                  = ram_0001_temp ; 
    ram_0001_t015_pos_Y_lo                  = ram_0001_temp ; 
    ram_0001_t016_pos_X_lo_projectile       = ram_0001_temp ; 
    ram_0001_t017_pos_Y_lo                  = ram_0001_temp ; 
    ram_0001_t018                           = ram_0001_temp ; 
    ram_0001_t019_pos_Y_lo                  = ram_0001_temp ; 
    ram_0001_t01A                           = ram_0001_temp ; 
    ram_0001_t01B                           = ram_0001_temp ; 
    ram_0001_t01C_ppu_addr_hi               = ram_0001_temp ; 
    ram_0001_t01F                           = ram_0001_temp ; 
    ram_0001_t020                           = ram_0001_temp ; 
    ram_0001_t021                           = ram_0001_temp ; 
    ram_0001_t022                           = ram_0001_temp ; 
    ram_0001_t023                           = ram_0001_temp ; 
    ram_0001_t024                           = ram_0001_temp ; 
    ram_0001_t025                           = ram_0001_temp ; 
    ram_0001_t026                           = ram_0001_temp ; 
    ram_0001_t027                           = ram_0001_temp ; 
    ram_0001_t028                           = ram_0001_temp ; 
    ram_0001_t029_ppu_addr_hi               = ram_0001_temp ; 
    ram_0001_t02A_ppu_addr_hi               = ram_0001_temp ; 
    ram_0001_t02B                           = ram_0001_temp ; 
    ram_0001_t02C                           = ram_0001_temp ; 
    ram_0001_t02D                           = ram_0001_temp ; 
    ram_0001_t02E_ppu_addr_hi               = ram_0001_temp ; 
    ram_0001_t02F_ppu_addr_hi               = ram_0001_temp ; 
    ram_0001_t030                           = ram_0001_temp ; 
    ram_0001_t031                           = ram_0001_temp ; 
    ram_0001_t032_pos_X_lo                  = ram_0001_temp ; 
    ram_0001_t033_ppu_addr_hi               = ram_0001_temp ; 
    ram_0001_t034                           = ram_0001_temp ; 
    ram_0001_t035                           = ram_0001_temp ; 
    ram_0001_t036                           = ram_0001_temp ; 
    ram_0001_t037_pos_X_lo                  = ram_0001_temp ; 
    ram_0001_t038                           = ram_0001_temp ; 
    ram_0001_t039                           = ram_0001_temp ; 
    ram_0001_t03A                           = ram_0001_temp ; 
    ram_0001_t03B                           = ram_0001_temp ; bzk optimize
    ram_0001_t03C_counter                   = ram_0001_temp ; 
    ram_0001_t03D_pos_X_lo_distance         = ram_0001_temp ; 
    ram_0001_t03E_lo                        = ram_0001_temp ; 
    ram_0001_t03F_spd_fr                    = ram_0001_temp ; 
    ram_0001_t040_object_index              = ram_0001_temp ; 
    ram_0001_t041                           = ram_0001_temp ; 
    ram_0001_t042                           = ram_0001_temp ; 
    ram_0001_t043_pos_X_fr                  = ram_0001_temp ; 
    ram_0001_t044_spd_fr                    = ram_0001_temp ; 
    ram_0001_t045_pos_Y_lo                  = ram_0001_temp ; 
    ram_0001_t046                           = ram_0001_temp ; 
    ram_0001_t047_spawning_pos_Y_lo         = ram_0001_temp ; 
    ram_0001_t048                           = ram_0001_temp ; 
    ram_0001_t049_pos_Y_lo                  = ram_0001_temp ; 
    ram_0001_t04A_loop_counter              = ram_0001_temp ; 
    ram_0001_t04B_pos_Y_lo                  = ram_0001_temp ; 
    ram_0001_t04C_counter                   = ram_0001_temp ; 
    ram_0001_t04D_pos_Y_lo                  = ram_0001_temp ; 
    ram_0001_t04E                           = ram_0001_temp ; 
    ram_0001_t04F_result_lo                 = ram_0001_temp ; 
    ram_0001_t050_some_obj_flags            = ram_0001_temp ; 
    ram_0001_t051_lo                        = ram_0001_temp ; 
    ram_0001_t052_hi                        = ram_0001_temp ; 
    ram_0001_t053                           = ram_0001_temp ; 
    ram_0001_t054_pos_X_lo                  = ram_0001_temp ; 
    ram_0001_t055                           = ram_0001_temp ; 
    ram_0001_t056_flag                      = ram_0001_temp ; 
    ram_0001_t057                           = ram_0001_temp ; bzk optimize
    ram_0001_t058                           = ram_0001_temp ; bzk optimize
    ram_0001_t059                           = ram_0001_temp ; bzk optimize
    ram_0001_t05A                           = ram_0001_temp ; 
    ram_0001_t05B_some_obj_flags            = ram_0001_temp ; 
    ram_0001_t05C_pos_X_lo                  = ram_0001_temp ; 
    ram_0001_t05D_pos_Y_lo                  = ram_0001_temp ; 
    ram_0001_t05E_pos_Y_lo                  = ram_0001_temp ; 
    ram_0001_t05F_obj_facing                = ram_0001_temp ; 
    ram_0001_t060_pos_X_lo                  = ram_0001_temp ; 
    ram_0001_t061_pos_Y_lo                  = ram_0001_temp ; 
    ram_0001_t062                           = ram_0001_temp ; 
    ram_0001_t063                           = ram_0001_temp ; 
    ram_0001_t064_obj_id                    = ram_0001_temp ; 
    ram_0001_t065_hi                        = ram_0001_temp ; 
    ram_0001_t066_hi                        = ram_0001_temp ; 
    ram_0001_t067_hi                        = ram_0001_temp ; 
    ram_0001_t068_hi                        = ram_0001_temp ; 
    ram_0001_t069_hi                        = ram_0001_temp ; 
    ram_0001_t06A_hi                        = ram_0001_temp ; 
    ram_0001_t06B_hi                        = ram_0001_temp ; 
    ram_0001_t06C_pos_X_lo                  = ram_0001_temp ; 
    ram_0001_t06D_pos_Y_lo                  = ram_0001_temp ; 
    ram_0001_t06E                           = ram_0001_temp ; 
    ram_0001_t06F_spd_Y_lo                  = ram_0001_temp ; 
    ram_0001_t070_spd_Y_lo                  = ram_0001_temp ; 
    ram_0001_t071_hi                        = ram_0001_temp ; 
    ram_0001_t072_hi                        = ram_0001_temp ; 
    ram_0001_t073_hi                        = ram_0001_temp ; 
    ram_0001_t074_hi                        = ram_0001_temp ; 
    ram_0001_t075_spd_X_lo                  = ram_0001_temp ; 
    ram_0001_t076_spd_X_lo                  = ram_0001_temp ; 
    ram_0001_t077_useless                   = ram_0001_temp ; bzk optimize
    ram_0001_t078_useless                   = ram_0001_temp ; bzk optimize



; 
ram_0002_temp                           = $0002 ; 000C4B(W)  000C59(R)  000C5E(W)  000C64(R)  000C87(Rx) 000C97(Rx) 001860(R)  00187E(W)  0018A5(R)  0022CA(W)  0022CF(W)  002469(W)  002496(W)  003674(W)  00368A(R)  003698(R)  0036E6(W)  003960(W)  00396F(R)  003C93(W)  003C99(R)  003D41(W)  003D55(R)  0043D7(W)  004644(W)  00464B(W)  00492F(W)  004976(W)  004F2A(R)  004F3C(W)  004F41(R)  005262(W)  005264(W)  00540B(W)  00540D(W)  005412(R)  0055CA(W)  006CAC(W)  006CB1(W)  006EDB(W)  006EFB(W)  00773F(W)  00774B(R)  007751(R)  00781A(W)  007820(R)  00782C(W)  00808A(W)  008097(R)  008099(W)  0084B0(W)  008745(W)  00876C(R)  008770(W)  00878B(R)  00878F(W)  008C7B(W)  008D0E(W)  008D12(W)  008D15(W)  008D25(R)  008D27(W)  008D41(R)  008E4D(W)  0091E1(W)  009496(W)  0094A5(R)  009710(W)  009718(W)  00971B(W)  00971E(W)  009CC1(R)  009CDD(R)  009D84(W)  009D99(R)  009D9E(W)  009DA4(R)  009DD9(R)  009DDF(R)  009E0E(R)  009E13(W)  009E56(W)  009E62(R)  009E73(R)  009F17(W)  009F2C(R)  009F31(W)  009F37(R)  009F5E(R)  009F62(W)  009F6C(R)  009F72(R)  009F9B(R)  009FA0(W)  009FE4(W)  009FEE(R)  00A028(W)  00A034(R)  00AAC2(R)  00AAC8(W)  00AACA(R)  00ACB8(W)  00ACD7(W)  00B504(W)  00B508(R)  00B6F2(W)  00B706(W)  00B722(R)  00B7B8(R)  00B81A(W)  00B820(W)  00B823(W)  00B826(W)  00B829(W)  00B82C(W)  00B831(R)  00B91D(W)  00B923(W)  00B926(W)  00B929(W)  00B92C(W)  00B92F(W)  00B936(R)  00B93A(W)  00B941(R)  00BA35(W)  00BA6B(R)  00C7CF(W)  00CAFF(W)  00CB05(W)  00CB0B(R)  00CB71(W)  00D89F(W)  01372F(W)  013A2B(W)  017D15(W)  017D28(R)  017DFE(W)  017E66(R)  024131(W)  024268(W)  02442A(R)  024455(W)  024475(R)  024671(W)  0257B8(W)  0257BE(W)  025E7C(W)  025E8A(R)  025EAF(R)  02720E(W)  02722D(R)  027307(W)  027319(W)  027371(R)  02748D(W)  0274A0(R)  028224(W)  02823B(R)  02823F(W)  028249(R)  02824F(R)  0282F7(W)  028310(R)  028314(W)  02831E(R)  028324(R)  02852D(W)  0286B2(W)  0288DB(W)  028BA1(W)  028E07(W)  028E1F(R)  02905E(W)  02CAB3(W)  02CB13(W)  02CB35(R)  02CDE7(R)  02CE86(W)  02E20E(W)  02F3B9(W)  02F3BE(R)  02F3F9(W)  02F409(R)  02F47E(W)  02F483(R)  02F77C(R)  02F7A6(R)  02F83D(W)  02F84E(R)  02F850(W)  02F852(W)  02F86C(W)  02F871(R)  02F889(W)  02F895(R)  02F8CE(W)  02F8E1(R)  02F8F8(R)  02FD25(W)  02FD32(R)  02FD34(W)  0326C0(W)  0326C2(R)  0326E5(W)  0326E7(W)  032707(W)  034048(W)  0340E3(R)  0340FB(R)  034142(R)  03415A(R)  0341BF(W)  034239(R)  037A63(W)  037A71(R)  037B30(W)  037B43(R)  037B71(W)  037B9B(W)  038988(W)  038996(R)  03899B(W)  0389A1(R)  0389BD(W)  0389D2(R)  0389ED(R)  0389F2(W)  0389FA(W)  03AE1D(W)  03AE39(R)  03AE3F(R)  03AEA1(W)  03CF93(W)  03E03F(Wi) 03E296(R)  03E2D5(Wx) 03E88A(W)  03E89F(W)  03E8AA(Rx) 03E8AC(Wx) 03EB7C(W)  03EB8C(W)  03EBAF(R)  03EBB3(W)  03EC4F(W)  03EC58(R)  03EC62(R)  03EC6C(W)  03EC70(R)  03FB3A(W)  03FB4B(R)  
    ram_0002_t000_data                      = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t001_data                      = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t002_data                      = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t003_data                      = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t004_data                      = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t006_data                      = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t007_data                      = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t008_data                      = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t009_jmp                       = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t00A_jmp                       = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t00B_jmp                       = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t00C_jmp                       = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t00D_jmp                       = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t00E_jmp                       = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t00F_hearts_tens               = ram_0002_temp ; 
    ram_0002_t010_palette_counter           = ram_0002_temp ; 
    ram_0002_t011                           = ram_0002_temp ; 
    ram_0002_t012                           = ram_0002_temp ; 
    ram_0002_t013                           = ram_0002_temp ; 
    ram_0002_t014                           = ram_0002_temp ; bzk optimize, use PHA + PLA instead
    ram_0002_t015                           = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t016_blk_timer_0xx_tens        = ram_0002_temp ; 
    ram_0002_t017                           = ram_0002_temp ; 
    ram_0002_t018_attempts_counter          = ram_0002_temp ; 
    ram_0002_t019_data_pointer              = ram_0002_temp ; 2 addresses 0002-0003
    ram_0002_t01A                           = ram_0002_temp ; 
    ram_0002_t01B_blk_data_index            = ram_0002_temp ; index for ram_0000_t00B_blk_data
    ram_0002_t01C                           = ram_0002_temp ; 
    ram_0002_t01D_data_pointer              = ram_0002_temp ; 
    ram_0002_t01E_lives_tens                = ram_0002_temp ; 
    ram_0002_t01F_pos_X_lo                  = ram_0002_temp ; 
    ram_0002_t020_pos_X_lo                  = ram_0002_temp ; 
    ram_0002_t021_save_Y                    = ram_0002_temp ; 
    ram_0002_t022                           = ram_0002_temp ; 
    ram_0002_t023                           = ram_0002_temp ; 
    ram_0002_t024                           = ram_0002_temp ; 
    ram_0002_t025_pos_Y_lo_projectile       = ram_0002_temp ; 
    ram_0002_t026_ppu_addr_lo               = ram_0002_temp ; 
    ram_0002_t027_ppu_addr_hi               = ram_0002_temp ; 
    ram_0002_t028                           = ram_0002_temp ; 
    ram_0002_t029_mask                      = ram_0002_temp ; 00 or FF
    ram_0002_t02A_objects_counter           = ram_0002_temp ; 
    ram_0002_t02B_compare_distance_X        = ram_0002_temp ; 
    ram_0002_t02C_compare_distance_X        = ram_0002_temp ; 
    ram_0002_t02D                           = ram_0002_temp ; 
    ram_0002_t02E_compare_distance_X        = ram_0002_temp ; 
    ram_0002_t02F                           = ram_0002_temp ; 
    ram_0002_t030                           = ram_0002_temp ; 
    ram_0002_t031                           = ram_0002_temp ; 
    ram_0002_t032                           = ram_0002_temp ; 
    ram_0002_t033                           = ram_0002_temp ; 
    ram_0002_t034_obj_facing                = ram_0002_temp ; 
    ram_0002_t035                           = ram_0002_temp ; 
    ram_0002_t036_flag                      = ram_0002_temp ; 
    ram_0002_t037_loop_counter              = ram_0002_temp ; 
    ram_0002_t038_spawning_ai_script        = ram_0002_temp ; 
    ram_0002_t039_cam_pos_lo                = ram_0002_temp ; 
    ram_0002_t03A_cam_pos_lo                = ram_0002_temp ; 
    ram_0002_t03B                           = ram_0002_temp ; 
    ram_0002_t03C                           = ram_0002_temp ; 
    ram_0002_t03D_animation                 = ram_0002_temp ; 
    ram_0002_t03E                           = ram_0002_temp ; 
    ram_0002_t03F_spd_Y_fr                  = ram_0002_temp ; 
    ram_0002_t040                           = ram_0002_temp ; something to do with Dracula's laser
    ram_0002_t041_compare_distance_X        = ram_0002_temp ; 
    ram_0002_t042_result_hi                 = ram_0002_temp ; 
    ram_0002_t043_lo                        = ram_0002_temp ; 
    ram_0002_t044_pos_X_lo                  = ram_0002_temp ; 
    ram_0002_t045_pos_X_lo                  = ram_0002_temp ; 
    ram_0002_t046                           = ram_0002_temp ; 
    ram_0002_t047_obj_state                 = ram_0002_temp ; 
    ram_0002_t048_flag                      = ram_0002_temp ; 
    ram_0002_t049                           = ram_0002_temp ; 
    ram_0002_t04A_lo                        = ram_0002_temp ; 
    ram_0002_t04B                           = ram_0002_temp ; 
    ram_0002_t04C                           = ram_0002_temp ; 
    ram_0002_t04D_pos_lo                    = ram_0002_temp ; 
    ram_0002_t04E_useless                   = ram_0002_temp ; bzk optimize



; 
ram_0003_temp                           = $0003 ; 000C87(Rx) 000C97(Rx) 00365B(W)  003676(R)  00367F(R)  003688(W)  0036E8(W)  0043D9(W)  00461D(W)  004661(W)  004934(W)  00497B(W)  004F33(R)  0055CF(W)  006EE9(W)  006EF5(R)  0074B3(W)  0074EA(W)  007748(W)  007757(R)  00781E(W)  00782E(W)  00808F(W)  00809B(R)  00809F(W)  0084B5(W)  008740(W)  008761(W)  008768(R)  00876A(W)  00877A(R)  008784(R)  008789(W)  0087A2(R)  008C80(W)  008D18(W)  008D30(R)  008D32(W)  008D49(R)  008E52(W)  0091E6(W)  00967C(W)  0096B0(W)  009D8A(W)  009DA2(W)  009DAD(R)  009DD5(R)  009DE8(R)  009E5C(W)  009E69(R)  009E7A(R)  009F1D(W)  009F35(W)  009F40(R)  009F66(W)  009F68(R)  009F7B(R)  009FA4(W)  009FEA(W)  009FF5(R)  00A02E(W)  00A03B(R)  00AAB5(R)  00B6F7(W)  00B70B(W)  00B727(R)  00B7C0(R)  00B80C(W)  00B816(W)  00B833(R)  00B8A7(R)  00B90F(W)  00B919(W)  00B943(R)  00BA3F(W)  00BA6F(R)  00C17B(W)  00C51E(W)  00C520(R)  00D60E(W)  00DC26(R)  00DC4F(W)  00DC60(R)  00DC6A(W)  00DC75(W)  00DED0(R)  013738(W)  013A32(W)  024135(W)  024679(W)  027492(W)  0274A5(R)  027DB6(W)  027DBD(W)  02822A(W)  028243(W)  028245(R)  0282FD(W)  028318(W)  02831A(R)  028532(W)  0286B6(W)  028B89(R)  028BA5(W)  028D09(R)  028D4A(R)  028E0C(W)  028E24(R)  028E79(R)  02905A(W)  02CB1A(W)  02CB3A(R)  02CDEC(R)  02CEB2(W)  02E213(W)  02F3C8(W)  02F3DF(R)  02F415(W)  02F437(R)  02F48D(W)  02F492(R)  02F79A(R)  02F7B3(R)  02F87E(W)  02F88C(R)  02FD2A(W)  02FD36(R)  02FD3A(W)  032701(W)  0340A8(W)  0340F3(W)  034152(W)  034209(W)  034247(W)  037AFC(R)  037B35(W)  037B47(R)  037B81(W)  037B83(R)  037B99(W)  037DDD(W)  037DE1(R)  037DF7(W)  0389C3(W)  0389D6(R)  0389FC(R)  038A01(W)  03AE1F(W)  03AE33(R)  03AE45(R)  03AEA6(W)  03CF4F(W)  03CF78(W)  03CF7E(W)  03CF85(W)  03CF88(W)  03CF8B(W)  03CF8E(W)  03CF95(R)  03CF99(W)  03E03F(Wi) 03E29C(R)  03E2E0(Wx) 03E87E(W)  03E88F(R)  03E891(W)  03E8A4(W)  03E8B0(Wx) 03EB81(W)  03EB91(W)  
    ram_0003_t000_save_Y                    = ram_0003_temp ; 
    ram_0003_t001_rows                      = ram_0003_temp ; 
    ram_0003_t002_blk_timer_x00_ones            = ram_0003_temp ; 
    ram_0003_t003                           = ram_0003_temp ; 
    ram_0003_t004                           = ram_0003_temp ; 
    ram_0003_t005                           = ram_0003_temp ; 
    ram_0003_t006_last_match_index          = ram_0003_temp ; 
    ram_0003_t007_sprites_counter           = ram_0003_temp ; 
    ram_0003_t008_objects_counter           = ram_0003_temp ; 
    ram_0003_t009_spd_X_lo_projectile       = ram_0003_temp ; 
    ram_0003_t00A_ppu_addr_offset_hi        = ram_0003_temp ; 20 or 28
    ram_0003_t00B                           = ram_0003_temp ; 
    ram_0003_t00C_compare_distance_Y        = ram_0003_temp ; 
    ram_0003_t00D                           = ram_0003_temp ; 
    ram_0003_t00E_compare_distance_Y        = ram_0003_temp ; 
    ram_0003_t00F                           = ram_0003_temp ; 
    ram_0003_t010                           = ram_0003_temp ; 
    ram_0003_t011_ppu_addr_hi               = ram_0003_temp ; 
    ram_0003_t012                           = ram_0003_temp ; 
    ram_0003_t013_some_obj_flags            = ram_0003_temp ; 
    ram_0003_t014                           = ram_0003_temp ; 
    ram_0003_t015_pos_fr                    = ram_0003_temp ; 
    ram_0003_t016_spawning_obj_id           = ram_0003_temp ; 
    ram_0003_t017_cam_pos_hi                = ram_0003_temp ; 
    ram_0003_t018_cam_pos_hi                = ram_0003_temp ; 
    ram_0003_t019_loop_counter              = ram_0003_temp ; 
    ram_0003_t01A_compare_distance_Y        = ram_0003_temp ; 
    ram_0003_t01B_hi                        = ram_0003_temp ; 
    ram_0003_t01C_objects_counter           = ram_0003_temp ; 
    ram_0003_t01D                           = ram_0003_temp ; 
    ram_0003_t01E_hi                        = ram_0003_temp ; 
    ram_0003_t01F                           = ram_0003_temp ; 
    ram_0003_t020_loop_counter              = ram_0003_temp ; 
    ram_0003_t021_sprites_counter           = ram_0003_temp ; 
    ram_0003_t022                           = ram_0003_temp ; 
    ram_0003_t023_spd_Y_lo                  = ram_0003_temp ; 
    ram_0003_t024_useless                   = ram_0003_temp ; bzk optimize



; 
ram_0004_temp                           = $0004 ; 003D53(W)  003D6C(R)  004989(W)  0049B4(R)  0049D4(R)  004DD8(W)  006EB9(W)  006EDD(R)  006EEF(R)  006EF3(R)  0074B9(W)  0074CB(R)  007731(W)  00774F(R)  007755(R)  007880(W)  00871D(W)  008763(R)  008BB2(R)  008BB6(W)  008C71(R)  008CA1(R)  008CA5(W)  008E5A(R)  0091EE(R)  009407(W)  009422(R)  009674(R)  00968A(R)  0096AA(R)  0096AE(W)  0097FB(R)  0097FF(W)  0098B9(R)  0098D9(R)  0098DD(W)  009938(W)  009A29(R)  009A48(R)  009A4C(W)  009A63(R)  009B65(W)  009B72(R)  009B76(W)  009C3B(R)  009DAB(W)  009DE6(W)  009DF5(R)  009E67(W)  009E78(W)  009F3E(W)  009F4A(R)  009F79(W)  009F85(R)  009FF3(W)  00A039(W)  00AA97(W)  00AAC4(R)  00AAC6(W)  00AACF(R)  00ACE7(R)  00ACEB(W)  00AD8E(W)  00AD9C(R)  00AD9E(W)  00ADAC(R)  00B251(W)  00B288(R)  00B4D0(W)  00B50F(R)  00B871(W)  00B879(W)  00C938(W)  00C94A(W)  00C959(W)  00C9A3(R)  00D2EC(W)  00D6E0(W)  00D6F3(R)  00D6FB(W)  00D7C2(W)  00DD70(W)  00DFBE(W)  00DFE2(R)  0139A8(W)  0139B6(R)  01BEA2(R)  0240FF(W)  02525E(W)  025270(R)  025274(W)  025288(R)  02528A(W)  025297(R)  025982(W)  025998(R)  025B33(W)  025C0A(W)  025C76(W)  025E60(W)  025E88(W)  025ECB(R)  025EDC(R)  027D87(W)  027DD6(W)  028042(W)  028B10(W)  028B1D(R)  028C92(W)  028CA4(R)  028CB8(W)  02CDF1(R)  02CEB7(W)  02D7A5(W)  02DC15(W)  02DC36(W)  02DD9D(R)  02DDA6(R)  02F835(W)  02F846(R)  034029(W)  034051(R)  0340AF(R)  0340F7(W)  034109(R)  034156(W)  0341A0(W)  0341CA(R)  03420B(R)  03424B(W)  0378F0(W)  0378F6(W)  0378FD(W)  0378FF(R)  037931(R)  037B75(W)  037B8A(Rx) 0389C9(W)  0389DA(R)  03AE23(W)  03AE2D(W)  03AE37(R)  03AE3D(R)  03AE41(W)  03CB49(W)  03CC2D(R)  03CC49(R)  03CC4E(W)  03CD2C(W)  03CD30(R)  03CEEE(W)  03CF02(R)  03D045(W)  03D048(R)  03D04F(R)  03D055(W)  03D05F(R)  03D061(W)  03D067(R)  03E03F(Wi) 03E2CF(W)  03E2D2(R)  
    ram_0004_t000_data                      = ram_0004_temp ; 2 addresses 0004-0005
    ram_0004_t001_data                      = ram_0004_temp ; 2 addresses 0004-0005
    ram_0004_t002_data                      = ram_0004_temp ; 2 addresses 0004-0005
    ram_0004_t003_columns                   = ram_0004_temp ; 
    ram_0004_t004_btns                      = ram_0004_temp ; 
    ram_0004_t005                           = ram_0004_temp ; 2 addresses 0004-0005
    ram_0004_t006_blk_timer_x00_tens        = ram_0004_temp ; 
    ram_0004_t007_current_oam_offset        = ram_0004_temp ; 
    ram_0004_t008_pos_X_lo                  = ram_0004_temp ; 
    ram_0004_t009_some_obj_flags            = ram_0004_temp ; 
    ram_0004_t00A_spd_X_fr_projectile       = ram_0004_temp ; 
    ram_0004_t00B_match_test_array          = ram_0004_temp ; 4 addresses 0004-0007
    ram_0004_t00C_copy_ppu_addr_hi          = ram_0004_temp ; 
    ram_0004_t00D_lo                        = ram_0004_temp ; 
    ram_0004_t00E_ppu_addr_lo               = ram_0004_temp ; 
    ram_0004_t00F                           = ram_0004_temp ; bzk optimize
    ram_0004_t010                           = ram_0004_temp ; 
    ram_0004_t011                           = ram_0004_temp ; 
    ram_0004_t012_tile                      = ram_0004_temp ; 
    ram_0004_t013_pos_X_lo                  = ram_0004_temp ; 
    ram_0004_t014_ppu_addr_hi               = ram_0004_temp ; 
    ram_0004_t015                           = ram_0004_temp ; 
    ram_0004_t016                           = ram_0004_temp ; 
    ram_0004_t017                           = ram_0004_temp ; 
    ram_0004_t018_loop_counter              = ram_0004_temp ; 
    ram_0004_t019                           = ram_0004_temp ; 
    ram_0004_t01A_swap_speed_flag           = ram_0004_temp ; 
    ram_0004_t01B                           = ram_0004_temp ; 
    ram_0004_t01C_multiplier_lo             = ram_0004_temp ; 
    ram_0004_t01D                           = ram_0004_temp ; 
    ram_0004_t01E_current_oam_offset        = ram_0004_temp ; 
    ram_0004_t01F_lo                        = ram_0004_temp ; 
    ram_0004_t020                           = ram_0004_temp ; 
    ram_0004_t021_table_index               = ram_0004_temp ; 
    ram_0004_t022_loop_counter              = ram_0004_temp ; 
    ram_0004_t023                           = ram_0004_temp ; 
    ram_0004_t024                           = ram_0004_temp ; 
    ram_0004_t025                           = ram_0004_temp ; 
    ram_0004_t026_lo                        = ram_0004_temp ; 
    ram_0004_t027                           = ram_0004_temp ; 
    ram_0004_t028                           = ram_0004_temp ; 
    ram_0004_t029                           = ram_0004_temp ; 
    ram_0004_t02A_pos_X_lo                  = ram_0004_temp ; 
    ram_0004_t02B_pos_X_lo                  = ram_0004_temp ; 
    ram_0004_t02C                           = ram_0004_temp ; 
    ram_0004_t02D_loop_counter              = ram_0004_temp ; 
    ram_0004_t02E_useless                   = ram_0004_temp ; bzk optimize
    ram_0004_t02F_useless                   = ram_0004_temp ; bzk optimize
    ram_0004_t030_useless                   = ram_0004_temp ; bzk optimize
    ram_0004_t031                           = ram_0004_temp ; 



; 
ram_0005_temp                           = $0005 ; 003D5C(W)  003D70(R)  004DDD(W)  0074CD(W)  0074D6(W)  0084C6(R)  0084CA(W)  008637(R)  008BAB(R)  008BB0(W)  008C6C(R)  008C9A(R)  008C9F(W)  008E60(R)  008E64(W)  0091F4(R)  0091F8(W)  00940B(W)  009415(R)  00941E(W)  009670(R)  009685(R)  0096A3(R)  0096A8(W)  0097A8(R)  0097C2(R)  0097C8(W)  0097F4(R)  0097F9(W)  009880(R)  00988A(R)  0098B4(R)  0098D2(R)  0098D7(W)  009934(W)  009A24(R)  009A41(R)  009A46(W)  009A5C(R)  009A73(R)  009B5B(W)  009B5F(W)  009B62(W)  009B6C(R)  009B70(W)  009C37(R)  009C70(R)  009C7A(R)  009DB1(W)  009DB3(R)  009DEC(W)  009DEE(R)  009E6D(W)  009E7E(W)  009F44(W)  009F46(R)  009F7F(W)  009F81(R)  009FF9(W)  00A03F(W)  00A753(R)  00A7A6(R)  00A88F(R)  00A977(R)  00A9E9(R)  00AA69(R)  00AA9C(W)  00ACED(R)  00ACF1(W)  00ACF3(R)  00AD95(W)  00ADA2(R)  00ADA4(W)  00ADA6(R)  00B256(W)  00B4D5(W)  00B518(R)  00B801(W)  00B83C(R)  00B87D(W)  00B8A0(W)  00B8B5(R)  00B8C0(W)  00B904(W)  00D2F1(W)  00D6D3(W)  00D6DC(W)  00D6E7(R)  00D725(R)  00D733(R)  00D7D4(W)  00D809(W)  00DD72(W)  00DD7B(W)  01BEBD(R)  024104(W)  025279(W)  02528F(R)  025291(W)  0252A8(R)  0252B5(R)  02558F(W)  025597(W)  0255B0(R)  0255B6(R)  0255CA(R)  025941(W)  025975(W)  025990(R)  025B38(W)  025C0F(W)  025C7B(W)  025E5B(W)  025E6C(W)  025EC7(R)  025F33(W)  025F56(R)  028047(W)  02CDF6(R)  02CEBC(W)  02D7AA(W)  02DC1A(W)  02DC26(R)  02DC3B(W)  02DC4F(R)  02F837(W)  02F84C(R)  03401C(W)  03402B(R)  03404D(W)  03419A(W)  034243(W)  037B79(W)  037B8A(Rx) 03AE25(W)  03AE2F(W)  03AE31(R)  03AE43(R)  03AE47(W)  03CC3E(W)  03CC47(R)  03CEFE(W)  03CF08(R)  03CFEB(W)  03CFF2(W)  03CFF5(W)  03CFFC(R)  03D03E(W)  03D053(W)  03D06F(R)  03E03F(Wi) 03E2DA(W)  03E2DD(R)  03FC40(W)  03FC62(R)  
    ram_0005_t000                           = ram_0005_temp ; 
    ram_0005_t001_tiles_counter             = ram_0005_temp ; 
    ram_0005_t002_btns                      = ram_0005_temp ; 
    ram_0005_t003                           = ram_0005_temp ; 
    ram_0005_t004_sprites_limit             = ram_0005_temp ; 
    ram_0005_t005_pos_Y_lo                  = ram_0005_temp ; 
    ram_0005_t006_pos_Y_lo                  = ram_0005_temp ; 
    ram_0005_t007_spd_Y_lo_projectile       = ram_0005_temp ; 
    ram_0005_t008                           = ram_0005_temp ; 
    ram_0005_t009_pos_Y_lo                  = ram_0005_temp ; 
    ram_0005_t00A_ppu_addr_lo               = ram_0005_temp ; 
    ram_0005_t00B                           = ram_0005_temp ; 
    ram_0005_t00C_flag                      = ram_0005_temp ; 00 = ???, 01 = ???
    ram_0005_t00D_obj_state                 = ram_0005_temp ; 
    ram_0005_t00E                           = ram_0005_temp ; 
    ram_0005_t00F_speed_data_offset         = ram_0005_temp ; 
    ram_0005_t010_object_index              = ram_0005_temp ; 
    ram_0005_t011_multiplier_hi             = ram_0005_temp ; 
    ram_0005_t012_pos_Y_lo                  = ram_0005_temp ; 
    ram_0005_t013                           = ram_0005_temp ; 
    ram_0005_t014                           = ram_0005_temp ; 
    ram_0005_t015_obj_state                 = ram_0005_temp ; 
    ram_0005_t016_obj_state                 = ram_0005_temp ; 
    ram_0005_t017_data_index                = ram_0005_temp ; 
    ram_0005_t018_data_index                = ram_0005_temp ; 
    ram_0005_t019_useless                   = ram_0005_temp ; bzk optimize
    ram_0005_t01A_useless                   = ram_0005_temp ; bzk optimize
    ram_0005_t01B_useless                   = ram_0005_temp ; bzk optimize
    ram_0005_t01C_data_offset_hi            = ram_0005_temp ; 
    ram_0005_t01D_ppu_addr_hi               = ram_0005_temp ; 
    ram_0005_t01E_hi                        = ram_0005_temp ; 
    ram_0005_t01F_hi                        = ram_0005_temp ; 
    ram_0005_t020_pos_Y_lo                  = ram_0005_temp ; 
    ram_0005_t021_useless                   = ram_0005_temp ; bzk optimize
    ram_0005_t022_useless                   = ram_0005_temp ; bzk optimize
    ram_0005_t023_useless                   = ram_0005_temp ; bzk optimize
    ram_0005_t024_useless                   = ram_0005_temp ; bzk optimize
    ram_0005_t025_useless                   = ram_0005_temp ; bzk optimize
    ram_0005_t026_useless                   = ram_0005_temp ; bzk optimize



; 
ram_0006_temp                           = $0006 ; 000C81(W)  000C93(R)  000C95(W)  000C9B(R)  004DCE(W)  004DF6(R)  004DF8(W)  004E34(R)  004E36(W)  004E5B(R)  004E5D(W)  004ECD(R)  0051E9(W)  0051FD(R)  005202(W)  0052F0(W)  005336(R)  0084CC(R)  0084D0(W)  008671(R)  008D55(W)  008D6D(W)  008E66(R)  008E6A(W)  0091FA(R)  0091FE(W)  009420(W)  009434(W)  009691(W)  009698(W)  0097AF(W)  0097BC(R)  0097C0(W)  0097C6(R)  00A7AA(R)  00A893(R)  00A981(R)  00A9E5(R)  00AAA1(W)  00B198(W)  00B1A8(R)  00B218(R)  00B274(R)  00B2EC(W)  00B2F8(W)  00B37D(R)  00B3F3(R)  00B438(R)  00B6E6(W)  00B7BB(R)  00B7E0(R)  00B7E9(W)  00B850(W)  00B85A(R)  00B85C(W)  00CD1E(W)  00CD34(R)  025E67(W)  025EE9(R)  028035(W)  028BFA(W)  028C01(R)  02CDFB(R)  02CEC1(W)  02F3F0(W)  02F40D(R)  03419E(W)  0341A6(R)  0341C4(W)  037B7D(W)  037B8A(Rx) 0397E2(W)  039854(R)  03A019(W)  03A092(R)  03CB68(W)  03CB93(R)  03CBEC(R)  03CC1A(R)  03CCBB(W)  03CCC5(W)  03CCDF(R)  03CD1D(W)  03CE8B(W)  03CE95(W)  03CEAF(R)  03CEE0(W)  03D244(W)  03D256(W)  03D290(R)  03D2C0(W)  03D516(W)  03D53E(W)  03E03F(Wi) 
    ram_0006_t000_ppu_data                  = ram_0006_temp ; 2 addresses 0006-0007
    ram_0006_t001_data                      = ram_0006_temp ; 2 addresses 0006-0007
    ram_0006_t002                           = ram_0006_temp ; 
    ram_0006_t003_ppu_addr_lo               = ram_0006_temp ; 
    ram_0006_t004_ppu_addr_lo               = ram_0006_temp ; 
    ram_0006_t005                           = ram_0006_temp ; 
    ram_0006_t006                           = ram_0006_temp ; 
    ram_0006_t007                           = ram_0006_temp ; 
    ram_0006_t008_tile                      = ram_0006_temp ; 
    ram_0006_t009_object_index              = ram_0006_temp ; 
    ram_0006_t00A                           = ram_0006_temp ; 
    ram_0006_t00B                           = ram_0006_temp ; 
    ram_0006_t00C_spd_Y_fr_projectile       = ram_0006_temp ; 
    ram_0006_t00D                           = ram_0006_temp ; 
    ram_0006_t00E                           = ram_0006_temp ; 
    ram_0006_t00F                           = ram_0006_temp ; 
    ram_0006_t010                           = ram_0006_temp ; 
    ram_0006_t011                           = ram_0006_temp ; 
    ram_0006_t012_pos_Y_lo                  = ram_0006_temp ; 
    ram_0006_t013_pos_Y_lo                  = ram_0006_temp ; 
    ram_0006_t014                           = ram_0006_temp ; 
    ram_0006_t015_flag                      = ram_0006_temp ; 00 = ???, 01 = ???
    ram_0006_t016                           = ram_0006_temp ; 
    ram_0006_t017                           = ram_0006_temp ; 
    ram_0006_t018                           = ram_0006_temp ; 
    ram_0006_t019                           = ram_0006_temp ; 
    ram_0006_t01A                           = ram_0006_temp ; 



; 
ram_0007_temp                           = $0007 ; 000546(W)  000552(W)  000567(R)  000C7D(W)  000C83(R)  000C85(W)  000C8B(R)  00267A(W)  002681(R)  0027CB(W)  0027D6(R)  0027EA(W)  002808(R)  004DD3(W)  004DFC(R)  004E00(W)  004ED4(R)  0051AA(W)  0051B1(W)  0051E2(R)  005204(R)  005208(W)  00525B(W)  005260(R)  00526C(W)  00526E(R)  005353(W)  005385(W)  0053A6(W)  0053D0(W)  0054D0(W)  0058BE(W)  0058C0(R)  0077F7(W)  0077FC(R)  008C89(W)  008C91(W)  008CE6(W)  008D68(R)  009678(W)  0096FE(R)  009721(W)  009CB5(W)  009CC6(R)  009CD1(W)  009CE2(R)  009D7D(W)  009DA7(R)  009DE2(R)  009E21(R)  009F10(W)  009F3A(R)  009F75(R)  009FA6(R)  00AAA6(W)  00B19A(W)  00B270(R)  00B2F0(W)  00B2F4(W)  00B840(W)  00B845(W)  00B848(W)  00B84B(W)  00B84E(W)  00B861(R)  00B863(W)  00CF7B(W)  00CFCA(W)  00CFFF(R)  00D003(W)  00D018(R)  00D06A(R)  00D114(R)  00D158(R)  00D15E(R)  00D184(R)  00D225(W)  00D22A(R)  00D23E(R)  02803A(W)  02CABC(W)  02CE12(R)  02CE8B(W)  02DB26(W)  02DB2A(R)  02F3EC(W)  02F3FB(R)  02F417(R)  02F9F7(W)  02FA34(R)  02FA71(R)  032882(W)  03288B(R)  034020(W)  034053(R)  0340EF(W)  03414E(W)  0341A4(W)  0341C6(W)  037B66(W)  037B6D(W)  037B8A(Rx) 03CBAA(W)  03CC20(R)  03CC29(W)  03CD9E(W)  03CDCE(W)  03CDDE(W)  03CF2B(W)  03D28E(W)  03D2B3(R)  03E03F(Wi) 
    ram_0007_t000                           = ram_0007_temp ; 
    ram_0007_t001_overflow_flag             = ram_0007_temp ; 
    ram_0007_t002                           = ram_0007_temp ; 
    ram_0007_t003                           = ram_0007_temp ; 
    ram_0007_t004                           = ram_0007_temp ; 
    ram_0007_t005                           = ram_0007_temp ; 
    ram_0007_t006_obj_flags                 = ram_0007_temp ; 
    ram_0007_t007_pos_X_lo                  = ram_0007_temp ; 
    ram_0007_t008                           = ram_0007_temp ; 
    ram_0007_t009                           = ram_0007_temp ; 
    ram_0007_t00A                           = ram_0007_temp ; 
    ram_0007_t00B_ai_script_projectile      = ram_0007_temp ; 
    ram_0007_t00C_ppu_addr_hi               = ram_0007_temp ; 
    ram_0007_t00D_objects_counter           = ram_0007_temp ; 
    ram_0007_t00E                           = ram_0007_temp ; 
    ram_0007_t00F                           = ram_0007_temp ; 
    ram_0007_t010_ppu_addr_hi               = ram_0007_temp ; 
    ram_0007_t011_loop_counter              = ram_0007_temp ; 
    ram_0007_t012                           = ram_0007_temp ; 
    ram_0007_t013                           = ram_0007_temp ; 
    ram_0007_t014_flags                     = ram_0007_temp ; 
    ram_0007_t015_loop_counter              = ram_0007_temp ; 
    ram_0007_t016_loop_counter              = ram_0007_temp ; 
    ram_0007_t017_counter                   = ram_0007_temp ; 
    ram_0007_t018                           = ram_0007_temp ; 
    ram_0007_t019_sprites_counter           = ram_0007_temp ; 
    ram_0007_t01A_data_index                = ram_0007_temp ; 
    ram_0007_t01B_data_index                = ram_0007_temp ; 
    ram_0007_t01C_data_index                = ram_0007_temp ; 
    ram_0007_t01D_data_index                = ram_0007_temp ; 
    ram_0007_t01E                           = ram_0007_temp ; 
    ram_0007_t01F_save_X                    = ram_0007_temp ; 
    ram_0007_t020_useless                   = ram_0007_temp ; bzk optimize
    ram_0007_t021_useless                   = ram_0007_temp ; bzk optimize



; 
ram_0008_temp                           = $0008 ; 00002A(W)  000423(W)  000445(W)  000523(W)  000B4C(W)  000B6F(W)  000CB1(W)  000CC0(W)  000CD7(W)  000CE8(R)  000CF6(R)  000CFB(W)  000D3B(W)  000D46(W)  000D55(W)  000D60(W)  000D6B(W)  000DAD(W)  000E56(W)  001044(W)  002636(W)  0026D7(W)  0027F0(W)  00280D(W)  002889(W)  0028F4(W)  002984(W)  002C40(W)  002C5E(W)  003467(W)  00347B(R)  003486(R)  003691(W)  00374F(W)  0037B2(W)  0037C5(W)  003965(W)  003976(W)  003E06(W)  004DFA(W)  004E0D(R)  004E38(W)  004E5F(W)  0051F0(W)  0051F9(W)  005325(W)  005331(R)  006930(W)  006935(R)  006BE1(W)  006BE7(W)  006BED(W)  006C2F(R)  007841(Wx) 007852(Wx) 007856(Wx) 0078E2(Wx) 0078EB(Wx) 0078EF(Wx) 007931(Rx) 00863E(R)  008657(R)  0086BE(W)  0086D1(W)  0086D7(W)  0087AC(R)  0087C1(R)  0089F1(W)  008BDB(W)  008BE7(W)  008C5A(R)  008C5F(W)  008C76(R)  009410(W)  00942A(R)  009430(W)  009649(R)  009676(W)  0096C2(R)  0096DB(R)  0096DF(W)  0096ED(R)  009712(W)  009728(R)  009793(W)  0097A2(R)  0097CA(R)  0098E9(R)  009955(W)  009973(R)  0099A7(W)  0099AD(W)  0099BA(R)  0099CF(R)  0099D7(W)  0099E6(R)  0099FB(R)  009B81(W)  009C3D(W)  009C4D(R)  009C66(R)  009C6A(W)  009C91(R)  009E2B(W)  009EA9(W)  009EBC(W)  009FB0(W)  00A055(W)  00A755(W)  00A772(R)  00A77C(R)  00A7A8(W)  00A7E8(W)  00AA6B(W)  00AA75(R)  00AB4F(W)  00B43F(W)  00B4A6(R)  00B743(W)  00B747(R)  00B755(W)  00B763(R)  00B769(W)  00B773(R)  00B77D(W)  00B783(W)  00B787(R)  00B795(W)  00B7A0(R)  00B7A6(W)  00B7B0(W)  00B83A(W)  00B87F(W)  00B8B3(W)  00B8C2(W)  00B8FC(W)  00B932(R)  00B9FD(W)  00BA12(W)  00BA45(R)  00BAEF(W)  00BB08(W)  00C127(W)  00C12E(R)  00CD4B(W)  013235(W)  01333C(W)  013382(W)  0139C9(W)  0139CD(W)  0139E7(W)  01F4C9(W)  01F556(W)  01F57A(W)  01F594(W)  01F5BB(R)  01F5D8(R)  01F61D(W)  01F64C(R)  024804(W)  0248CC(R)  0257EB(W)  0257F7(R)  0257F9(W)  0257FB(R)  02584D(W)  025867(R)  025878(W)  02588A(R)  02588E(W)  0259C4(R)  0259C6(W)  0259C8(R)  02717C(W)  027189(R)  028070(W)  028075(R)  0280E8(W)  028104(R)  028615(W)  02861F(R)  02B974(W)  02BA54(W)  02C4AE(W)  02C4BA(R)  02CB1C(W)  02CB25(R)  02CC53(W)  02CC68(R)  02CCB1(W)  02CCE0(R)  02CE17(W)  02CF49(W)  02CF7F(R)  02CF9B(W)  02D11D(R)  02DAB3(W)  02DABE(R)  032271(W)  0324D7(W)  034091(W)  0341F2(W)  038019(W)  0381C1(W)  03827B(W)  038366(W)  03836F(R)  0383F2(R)  038433(W)  038471(R)  0384D0(R)  0384F0(R)  0384F9(R)  038667(W)  03866C(R)  038698(W)  03869D(R)  038DA7(W)  03903E(W)  0390D4(W)  03A4E8(W)  03AFA9(W)  03B0BE(W)  03B1BD(W)  03B1CD(W)  03B1CF(W)  03B1E1(W)  03B1F8(R)  03B41A(W)  03B41E(R)  03B8C6(W)  03B8D9(R)  03BA0E(W)  03BA17(R)  03BA41(R)  03BAB2(R)  03BABE(R)  03BAD5(W)  03BB17(W)  03BD6B(W)  03BDB9(W)  03BEF2(W)  03CA53(W)  03CA5D(R)  03CA7D(R)  03CA82(W)  03CABC(R)  03CAC1(W)  03CAFF(R)  03CDE2(W)  03CE28(R)  03CEF4(R)  03D087(W)  03D337(W)  03D343(R)  03D4B2(W)  03D4F9(W)  03D563(W)  03E03F(Wi) 03E90F(R)  03E91D(R)  03EF91(W)  
    ram_0008_t000_animation_data            = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t001_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t002_blk_scroll_type_data_ptr  = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t003_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t004_weapon_anim_data          = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t005_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t006_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t007_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t008_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t009_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t00A_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t00B_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t00C_damage_data               = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t00D_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t00E_spd_X_data                = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t00F_sprite_data_pointer       = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t010_sprite_data_pointer       = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t011_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t012_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t013_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t014_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t015_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t016_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t017_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t018_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t019_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t01A_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t01B_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t01C_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t01D_palette_data_pointer      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t01E_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t01F_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t020_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t021_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t022_road_fork_data_pointer    = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t023_road_fork_data_pointer    = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t024_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t025_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t026_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t027_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t028_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t029_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t02A_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t02B_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t02C_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t02D_data                      = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t02E_credits_screen_data       = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t02F_jmp                       = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t030_jmp                       = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t031_jmp                       = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t032_jmp                       = ram_0008_temp ; 2 addresses 0008-0009
    ram_0008_t033_useless_data              = ram_0008_temp ; 2 addresses 0008-0009, bzk optimize
    ram_0008_t034                           = ram_0008_temp ; 
    ram_0008_t035_cam_pos_lo                = ram_0008_temp ; 
    ram_0008_t036                           = ram_0008_temp ; 
    ram_0008_t037_cam_pos_lo                = ram_0008_temp ; 
    ram_0008_t038_subweapon_id              = ram_0008_temp ; 
    ram_0008_t039_pos_X_lo                  = ram_0008_temp ; 
    ram_0008_t03A                           = ram_0008_temp ; 
    ram_0008_t03B_spd_X_lo                  = ram_0008_temp ; 
    ram_0008_t03C_pos_X_lo                  = ram_0008_temp ; 
    ram_0008_t03D_pos_Y_lo                  = ram_0008_temp ; 
    ram_0008_t03E                           = ram_0008_temp ; 
    ram_0008_t03F                           = ram_0008_temp ; 
    ram_0008_t040_ppu_addr_hi               = ram_0008_temp ; 
    ram_0008_t041                           = ram_0008_temp ; 
    ram_0008_t042_ppu_addr_offset_lo        = ram_0008_temp ; 
    ram_0008_t043_compare_distance_Y        = ram_0008_temp ; 
    ram_0008_t044_ppu_addr_hi               = ram_0008_temp ; 
    ram_0008_t045_pos_X_lo                  = ram_0008_temp ; 
    ram_0008_t046                           = ram_0008_temp ; 
    ram_0008_t047                           = ram_0008_temp ; 
    ram_0008_t048                           = ram_0008_temp ; 
    ram_0008_t049_final_ppu_addr_lo         = ram_0008_temp ; 
    ram_0008_t04A_object_index              = ram_0008_temp ; 
    ram_0008_t04B                           = ram_0008_temp ; 
    ram_0008_t04C                           = ram_0008_temp ; 
    ram_0008_t04D_table_index               = ram_0008_temp ; 
    ram_0008_t04E                           = ram_0008_temp ; 
    ram_0008_t04F_loop_counter              = ram_0008_temp ; 
    ram_0008_t050                           = ram_0008_temp ; 
    ram_0008_t051_loop_counter              = ram_0008_temp ; 
    ram_0008_t052_loop_counter              = ram_0008_temp ; 
    ram_0008_t053_loop_counter              = ram_0008_temp ; 
    ram_0008_t054_loop_counter              = ram_0008_temp ; 
    ram_0008_t055_ppu_addr_hi               = ram_0008_temp ; 
    ram_0008_t056                           = ram_0008_temp ; 
    ram_0008_t057_loop_counter              = ram_0008_temp ; 
    ram_0008_t058_counter                   = ram_0008_temp ; 
    ram_0008_t059_useless                   = ram_0008_temp ; bzk optimize
    ram_0008_t05A_number                    = ram_0008_temp ; 
    ram_0008_t05B_pos_Y_lo                  = ram_0008_temp ; 
    ram_0008_t05C                           = ram_0008_temp ; 
    ram_0008_t05D_spd_lo_1                  = ram_0008_temp ; 
    ram_0008_t05E                           = ram_0008_temp ; 
    ram_0008_t05F_pos_X_lo                  = ram_0008_temp ; 
    ram_0008_t060                           = ram_0008_temp ; 
    ram_0008_t061_cam_pos_hi                = ram_0008_temp ; 
    ram_0008_t062                           = ram_0008_temp ; 
    ram_0008_t063                           = ram_0008_temp ; 
    ram_0008_t064                           = ram_0008_temp ; 
    ram_0008_t065                           = ram_0008_temp ; 
    ram_0008_t066                           = ram_0008_temp ; 
    ram_0008_t067                           = ram_0008_temp ; 
    ram_0008_t068                           = ram_0008_temp ; 
    ram_0008_t069_ppu_addr_hi               = ram_0008_temp ; 
    ram_0008_t06A_hp                        = ram_0008_temp ; 
    ram_0008_t06B_array                     = ram_0008_temp ; 7 addresses 0008-000E
    ram_0008_t06C_password                  = ram_0008_temp ; 9 addresses 0008-0010
    ram_0008_t06D_flag                      = ram_0008_temp ; 
    ram_0008_t06E_object_index              = ram_0008_temp ; 
    ram_0008_t06F_pos_X_lo                  = ram_0008_temp ; 
    ram_0008_t070                           = ram_0008_temp ; 
    ram_0008_t071                           = ram_0008_temp ; 
    ram_0008_t072_useless                   = ram_0008_temp ; bzk optimize



; 
ram_0009_temp                           = $0009 ; 00002F(W)  000428(W)  000528(W)  000B51(W)  000B74(W)  000CE6(W)  000CFD(W)  000D0D(W)  000D19(W)  000D1D(R)  000DB2(W)  001049(W)  00263B(W)  0026E0(W)  0027F5(W)  002812(W)  00288E(W)  0028FD(W)  002989(W)  002C45(W)  002C63(W)  003696(W)  003754(W)  0037B7(W)  0037CA(W)  00396A(W)  00397B(W)  003E0B(W)  004E04(W)  004E12(R)  005312(W)  00531A(R)  00531F(W)  00532C(R)  007841(Wx) 007852(Wx) 007856(Wx) 0078E2(Wx) 0078EB(Wx) 0078EF(Wx) 007931(Rx) 008678(R)  008691(R)  0089F6(W)  00941A(W)  00942C(R)  00942E(W)  009672(W)  0096B4(R)  0096BC(R)  0096C0(W)  0096C7(W)  0096CA(W)  0096CC(W)  0096CE(W)  0096D0(R)  009726(W)  009730(W)  009798(W)  0097DF(R)  0097E6(R)  0097EF(W)  009809(R)  00980E(W)  009828(R)  00987E(W)  009888(W)  009890(W)  009A1B(W)  009A4E(W)  009A6C(R)  009C25(R)  009C39(W)  009C3F(R)  009C47(R)  009C4B(W)  009C52(W)  009C55(W)  009C57(W)  009C59(W)  009C5B(R)  009C6E(W)  009C80(W)  009E30(W)  009EAE(W)  009EC1(W)  009FB5(W)  00A05A(W)  00A759(W)  00A766(R)  00A76D(R)  00A784(W)  00A786(R)  00A7AC(W)  00A7B6(R)  00A7E6(W)  00A8B9(W)  00A8D3(R)  00A915(W)  00A992(W)  00A9AC(R)  00A9C5(W)  00A9C7(R)  00A9FB(W)  00AA0A(R)  00AA2E(W)  00AA30(R)  00AB54(W)  00B934(W)  00B93C(R)  00C114(W)  00C11E(R)  00C129(R)  00C137(W)  00C139(R)  00CD50(W)  01323A(W)  013341(W)  013387(W)  0135CB(W)  0135D2(R)  0139C5(W)  0139D4(R)  0139EC(W)  01F4CE(W)  01F55B(W)  01F5B0(W)  01F5B9(R)  01F5D6(R)  01F650(W)  02587D(W)  025892(R)  025896(W)  0259BE(R)  0259C0(W)  0259CD(R)  027181(W)  027192(R)  028077(W)  028082(R)  028087(W)  0280E6(W)  0280FD(R)  0280FF(W)  02814F(R)  0281CF(R)  028226(R)  02822F(R)  0282F9(R)  028304(R)  02832D(W)  028A92(W)  028AA0(R)  02B979(W)  02BA59(W)  02C4A9(W)  02C4B3(R)  02CB23(W)  02CB2D(R)  02CCBA(W)  02CCE5(R)  02CF5C(W)  02CF70(R)  02D123(W)  02D12A(R)  02D21B(W)  02D230(R)  02DA9F(W)  02DABA(R)  02DE49(W)  02DE62(R)  02FA01(W)  02FA05(R)  032276(W)  034096(W)  0341F7(W)  0377CF(W)  03791C(R)  037A18(R)  03801E(W)  0381C6(W)  038280(W)  038DAC(W)  039043(W)  0390D9(W)  03A4ED(W)  03AFAE(W)  03B1D1(W)  03B1E5(R)  03B8C1(W)  03B8D4(R)  03BA28(W)  03BA33(W)  03BA80(W)  03BA8D(W)  03BADA(W)  03BB1C(W)  03BD70(W)  03BDBE(W)  03BEF7(W)  03D08C(W)  03D4B7(W)  03D50F(W)  03D561(R)  03E03F(Wi) 03EAF8(R)  03EAFD(W)  03EB02(R)  03EB1D(W)  03EB27(W)  03EF96(W)  
    ram_0009_t000_tiles_counter             = ram_0009_temp ; 
    ram_0009_t001                           = ram_0009_temp ; bzk optimize
    ram_0009_t002_loop_counter              = ram_0009_temp ; 
    ram_0009_t003_ppu_addr_lo               = ram_0009_temp ; 
    ram_0009_t004_some_obj_flags            = ram_0009_temp ; 
    ram_0009_t005_some_obj_flags            = ram_0009_temp ; 
    ram_0009_t006_ppu_addr_lo               = ram_0009_temp ; 
    ram_0009_t007_compare_distance_X        = ram_0009_temp ; 
    ram_0009_t008                           = ram_0009_temp ; 
    ram_0009_t009                           = ram_0009_temp ; 
    ram_0009_t00A_final_ppu_addr_hi         = ram_0009_temp ; 
    ram_0009_t00B_object_index              = ram_0009_temp ; 
    ram_0009_t00C                           = ram_0009_temp ; 
    ram_0009_t00D_pos_X_lo                  = ram_0009_temp ; 
    ram_0009_t00E_table_index               = ram_0009_temp ; 
    ram_0009_t00F_ppu_addr_lo               = ram_0009_temp ; 
    ram_0009_t010                           = ram_0009_temp ; 
    ram_0009_t011                           = ram_0009_temp ; 
    ram_0009_t012_table_index               = ram_0009_temp ; 
    ram_0009_t013_random_00_03              = ram_0009_temp ; 
    ram_0009_t014_obj_id                    = ram_0009_temp ; 
    ram_0009_t015_spd_fr_1                  = ram_0009_temp ; 
    ram_0009_t016_po_Y_hi                   = ram_0009_temp ; 
    ram_0009_t017                           = ram_0009_temp ; 
    ram_0009_t018                           = ram_0009_temp ; 
    ram_0009_t019_pos_X_lo_offset           = ram_0009_temp ; 
    ram_0009_t01A_cam_pos_hi                = ram_0009_temp ; 
    ram_0009_t01B                           = ram_0009_temp ; 
    ram_0009_t01C                           = ram_0009_temp ; 
    ram_0009_t01D                           = ram_0009_temp ; 
    ram_0009_t01E_some_obj_flags            = ram_0009_temp ; 
    ram_0009_t01F                           = ram_0009_temp ; 
    ram_0009_t020                           = ram_0009_temp ; 
    ram_0009_t021_some_obj_flags            = ram_0009_temp ; 
    ram_0009_t022                           = ram_0009_temp ; 
    ram_0009_t023_pos_X_lo_spawner          = ram_0009_temp ; 
    ram_0009_t024                           = ram_0009_temp ; 
    ram_0009_t025_loop_counter              = ram_0009_temp ; 
    ram_0009_t026_save_X                    = ram_0009_temp ; 
    ram_0009_t027                           = ram_0009_temp ; 
    ram_0009_t028                           = ram_0009_temp ; 
    ram_0009_t029                           = ram_0009_temp ; 
    ram_0009_t02A_ppu_addr_lo               = ram_0009_temp ; 
    ram_0009_t02B_useless                   = ram_0009_temp ; bzk optimize



; 
ram_000A_temp                           = $000A ; 00003A(W)  00005C(W)  00042F(W)  000438(W)  000531(W)  00058B(W)  000CC4(W)  000CDB(W)  000CF0(R)  000D13(R)  0026C9(W)  002822(W)  0028E6(W)  002B6A(R)  002C4E(W)  002D76(W)  002D80(W)  002D89(W)  002D93(W)  003AB6(W)  003ACB(W)  003BFD(W)  003D62(W)  003D7B(W)  004EC4(W)  004EF8(W)  004F0D(R)  005223(W)  005307(W)  00530D(R)  005314(R)  00533D(R)  00538E(R)  005393(W)  0053D9(R)  0053DE(W)  007841(Wx) 007852(Wx) 007856(Wx) 0078E2(Wx) 0078EB(Wx) 0078EF(Wx) 007931(Rx) 00874F(W)  008772(R)  0089FB(W)  00979D(W)  00982C(R)  009A30(W)  009A38(W)  009A6A(W)  009A80(W)  009A8B(R)  009A8F(W)  009EC9(W)  00A76B(W)  00A777(R)  00A7C2(W)  00A7D6(R)  00A983(W)  00A9B1(R)  00A9EB(W)  00AA32(R)  00AB5A(W)  00ABAA(W)  00B1C9(W)  00B1D9(W)  00B1E1(R)  00B42C(W)  00B449(R)  00B488(R)  00B4B3(R)  00B94F(W)  00B963(R)  00B9AC(W)  00BA58(R)  00BA5A(W)  01338F(W)  0139F4(W)  013A27(R)  013A3E(W)  01BEC5(W)  01BECD(R)  01F563(W)  01F5AB(W)  01F634(W)  025882(W)  02588C(R)  025890(W)  0259B2(R)  0259B4(W)  0259D2(R)  02807B(W)  028089(R)  02808F(W)  02810A(W)  028154(R)  0281D4(R)  02821F(R)  028254(W)  0282AA(R)  0282D4(R)  0282F2(R)  028329(W)  028332(W)  028865(W)  02886B(R)  028EB2(W)  028EB9(R)  02BA62(W)  02CAB8(W)  02CE0A(R)  02CE2B(W)  02CE9D(W)  02D232(W)  02D243(R)  02FA18(W)  02FA3C(R)  03409D(W)  0341FE(W)  037995(R)  0379B3(R)  037A41(W)  037A48(R)  037A55(W)  038023(W)  038C41(W)  038C4F(R)  038C5E(R)  0395D6(R)  03BA2C(W)  03BA38(W)  03BA84(W)  03BA92(W)  03BB51(W)  03C977(W)  03C99D(W)  03C9CC(W)  03CA1E(W)  03CA68(R)  03CAA5(R)  03D096(W)  03D479(W)  03D4BF(W)  03E03F(Wi) 
    ram_000A_t000_data                      = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t001_data                      = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t002_data                      = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t003_data                      = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t004_data                      = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t005_blk_scroll_type_data      = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t006_data                      = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t007_spd_Y_data                = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t008_spr_data                  = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t009_spr_data                  = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t00A_data                      = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t00B_data                      = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t00C_data                      = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t00D_data                      = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t00E_data                      = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t00F_data                      = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t010_data                      = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t011_data                      = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t012_road_fork_data            = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t013_data                      = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t014_palette_data              = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t015_palette_data              = ram_000A_temp ; 2 addresses 000A-000B
    ram_000A_t016_cam_pos_hi                = ram_000A_temp ; 
    ram_000A_t017_loop_counter              = ram_000A_temp ; 
    ram_000A_t018_fill_tile_1               = ram_000A_temp ; 
    ram_000A_t019                           = ram_000A_temp ; 
    ram_000A_t01A                           = ram_000A_temp ; 
    ram_000A_t01B_pos_X_lo_distance         = ram_000A_temp ; 
    ram_000A_t01C_total_obj_flags           = ram_000A_temp ; 
    ram_000A_t01D_obj_facing_projectile     = ram_000A_temp ; 
    ram_000A_t01E                           = ram_000A_temp ; 
    ram_000A_t01F                           = ram_000A_temp ; 
    ram_000A_t020_lo                        = ram_000A_temp ; 
    ram_000A_t021                           = ram_000A_temp ; 
    ram_000A_t022                           = ram_000A_temp ; 
    ram_000A_t023                           = ram_000A_temp ; 
    ram_000A_t024                           = ram_000A_temp ; 
    ram_000A_t025_lo                        = ram_000A_temp ; 
    ram_000A_t026                           = ram_000A_temp ; 
    ram_000A_t027                           = ram_000A_temp ; 
    ram_000A_t028_spd_Y_fr                  = ram_000A_temp ; 
    ram_000A_t029_spd_lo_2                  = ram_000A_temp ; 
    ram_000A_t02A_pos_lo                    = ram_000A_temp ; 
    ram_000A_t02B                           = ram_000A_temp ; 
    ram_000A_t02C                           = ram_000A_temp ; bzk optimize
    ram_000A_t02D                           = ram_000A_temp ; 
    ram_000A_t02E_max_pos_X_lo_offset       = ram_000A_temp ; 
    ram_000A_t02F_cam_pos_lo                = ram_000A_temp ; 
    ram_000A_t030_pos_Y_lo                  = ram_000A_temp ; 
    ram_000A_t031                           = ram_000A_temp ; 
    ram_000A_t032_loop_counter              = ram_000A_temp ; 
    ram_000A_t033_loop_counter              = ram_000A_temp ; 
    ram_000A_t034_loop_counter              = ram_000A_temp ; 
    ram_000A_t035_loop_counter              = ram_000A_temp ; 
    ram_000A_t036_loop_counter              = ram_000A_temp ; 
    ram_000A_t037                           = ram_000A_temp ; 
    ram_000A_t038_pos_X_hi_spawner          = ram_000A_temp ; 
    ram_000A_t039_spawning_obj_id           = ram_000A_temp ; 
    ram_000A_t03A_lo                        = ram_000A_temp ; 
    ram_000A_t03B_lo                        = ram_000A_temp ; 



; 
ram_000B_temp                           = $000B ; 00003F(W)  000061(W)  000536(W)  000590(W)  000CC8(W)  000CDF(W)  000D07(R)  0026CE(W)  002827(W)  0028EB(W)  002B7A(R)  002C53(W)  003ABB(W)  003AD0(W)  003C02(W)  003D67(W)  003D80(W)  004ED8(W)  004EE0(R)  004F01(W)  004F37(R)  00533F(W)  005355(R)  00537C(R)  005383(W)  0053A8(R)  0053C7(R)  0053CE(W)  0053F7(R)  007841(Wx) 007852(Wx) 007856(Wx) 0078E2(Wx) 0078EB(Wx) 0078EF(Wx) 007931(Rx) 00874A(W)  00877C(R)  0096BA(W)  0096D5(R)  0096D9(W)  0096E8(R)  009951(W)  009A5E(W)  009A71(W)  009A78(R)  009C45(W)  009C60(R)  009C64(W)  009C8C(R)  009ECE(W)  00A7BD(W)  00A7CE(R)  00A891(W)  00A897(R)  00A89E(R)  00A8E5(R)  00A987(W)  00A9B6(R)  00A9E7(W)  00A9F2(R)  00AA24(R)  00B1B8(W)  00B1CB(R)  00B1DB(R)  00B1DF(W)  00B1E9(R)  00B432(W)  00B455(R)  00B491(R)  013394(W)  0139F9(W)  013A2E(R)  013A43(W)  01F568(W)  01F5F2(W)  01F64A(W)  01F658(R)  01F663(W)  01F66B(R)  025887(W)  025894(R)  025898(W)  0259AC(R)  0259AE(W)  0259D7(R)  028115(W)  028198(R)  028E72(W)  028E80(R)  028E8A(R)  028E9F(W)  02BA67(W)  02DCA5(W)  02DCB2(R)  02FA1A(W)  02FA47(R)  02FA4D(R)  02FA80(R)  0340A2(W)  034203(W)  0377BA(W)  037B60(W)  037BC9(R)  038028(W)  038C47(W)  0395E6(R)  03BB56(W)  03C97C(W)  03C9A2(W)  03C9B0(W)  03C9CE(W)  03CA1A(W)  03CA6E(R)  03CAAB(R)  03D09B(W)  03D47E(W)  03D4C4(W)  03E03F(Wi) 
    ram_000B_t000_fill_tile_2               = ram_000B_temp ; 
    ram_000B_t001                           = ram_000B_temp ; 
    ram_000B_t002_flag                      = ram_000B_temp ; 
    ram_000B_t003                           = ram_000B_temp ; 
    ram_000B_t004_hi                        = ram_000B_temp ; 
    ram_000B_t005                           = ram_000B_temp ; 
    ram_000B_t006                           = ram_000B_temp ; 
    ram_000B_t007                           = ram_000B_temp ; 
    ram_000B_t008_animation                 = ram_000B_temp ; 
    ram_000B_t009_spd_Y_lo                  = ram_000B_temp ; 
    ram_000B_t00A_cam_pos_lo                = ram_000B_temp ; 
    ram_000B_t00B_data_index                = ram_000B_temp ; 
    ram_000B_t00C_max_object_index          = ram_000B_temp ; 
    ram_000B_t00D                           = ram_000B_temp ; 
    ram_000B_t00E_ppu_addr_lo               = ram_000B_temp ; 
    ram_000B_t00F_spd_fr_2                  = ram_000B_temp ; 
    ram_000B_t010_pos_fr                    = ram_000B_temp ; 
    ram_000B_t011_useless_80                = ram_000B_temp ; bzk optimize
    ram_000B_t012                           = ram_000B_temp ; 
    ram_000B_t013                           = ram_000B_temp ; 
    ram_000B_t014_ppu_addr_lo               = ram_000B_temp ; 
    ram_000B_t015_useless_hi                = ram_000B_temp ; bzk optimize
    ram_000B_t016_useless_hi                = ram_000B_temp ; bzk optimize
    ram_000B_t017                           = ram_000B_temp ; 
    ram_000B_t018                           = ram_000B_temp ; 
    ram_000B_t019_ppu_addr_lo               = ram_000B_temp ; 
    ram_000B_t01A_hi                        = ram_000B_temp ; 



; 
ram_000C_temp                           = $000C ; 000565(W)  000573(W)  00059F(W)  0005A9(W)  0028C4(W)  0028CE(W)  003AB0(W)  003AC0(R)  003AC5(W)  003B26(R)  003D16(W)  003D1B(W)  003D1E(W)  003D21(W)  003D24(W)  003D27(W)  003D29(R)  003D32(W)  003D3D(R)  003D43(R)  003D96(R)  004EB8(W)  004EBE(R)  004EC8(W)  004ED2(W)  004EDA(R)  004EF0(R)  004EFA(R)  004F03(R)  004F07(W)  004F3A(R)  005217(W)  00521D(R)  005227(W)  0053FC(W)  005404(R)  007841(Wx) 007852(Wx) 007856(Wx) 0078E2(Wx) 0078EB(Wx) 0078EF(Wx) 007931(Rx) 0084E9(W)  0084F2(R)  0084F6(W)  008642(R)  008646(W)  00865B(R)  00865F(W)  0086B6(W)  0086C5(W)  0087BA(R)  008DC6(R)  008EFD(W)  008F06(R)  008F0A(W)  009217(W)  009237(R)  00923B(W)  00A7CC(W)  00A895(W)  00A8BB(R)  00A8EF(R)  00A902(R)  00A979(W)  00A989(R)  00A9BB(R)  00A9F7(W)  00AA05(R)  00AB5D(W)  00AB6C(R)  00AB8C(W)  0139FD(W)  013A14(W)  013A1B(R)  013A1F(W)  013A47(W)  01F587(W)  01F592(W)  01F5B5(R)  01F617(W)  01F644(R)  02806A(W)  028091(W)  028E6E(W)  028E74(R)  028E9B(W)  02F777(R)  02F7A1(R)  02FA32(W)  02FA51(R)  02FA58(R)  02FA5D(W)  037936(R)  037950(W)  037978(R)  03B3AF(W)  03B3D2(R)  03B5D3(W)  03B5FC(R)  03B644(W)  03B670(R)  03BD21(W)  03BEE3(W)  03D081(W)  03D0B9(R)  03E03F(Wi) 
    ram_000C_t000_data                      = ram_000C_temp ; 2 addresses 000C-000D
    ram_000C_t001_data                      = ram_000C_temp ; 2 addresses 000C-000D
    ram_000C_t002_colors_counter            = ram_000C_temp ; 
    ram_000C_t003                           = ram_000C_temp ; 
    ram_000C_t004_colors_counter            = ram_000C_temp ; 
    ram_000C_t005                           = ram_000C_temp ; 
    ram_000C_t006                           = ram_000C_temp ; 
    ram_000C_t007                           = ram_000C_temp ; 
    ram_000C_t008                           = ram_000C_temp ; 
    ram_000C_t009_pos_X_lo                  = ram_000C_temp ; 
    ram_000C_t00A                           = ram_000C_temp ; 
    ram_000C_t00B_colors_counter            = ram_000C_temp ; 
    ram_000C_t00C_loop_counter              = ram_000C_temp ; 
    ram_000C_t00D_init_object_index         = ram_000C_temp ; 
    ram_000C_t00E_pos_X_lo                  = ram_000C_temp ; 
    ram_000C_t00F_pos_X_lo                  = ram_000C_temp ; 
    ram_000C_t010_pos_X_lo                  = ram_000C_temp ; 
    ram_000C_t011_obj_type                  = ram_000C_temp ; 
    ram_000C_t012                           = ram_000C_temp ; 
    ram_000C_t013                           = ram_000C_temp ; 
    ram_000C_t014                           = ram_000C_temp ; 
    ram_000C_t015_blk_id_hi_x2              = ram_000C_temp ; 
    ram_000C_t016_tile                      = ram_000C_temp ; 
    ram_000C_t017                           = ram_000C_temp ; 
    ram_000C_t018_data_index                = ram_000C_temp ; 
    ram_000C_t019_cam_pos_hi                = ram_000C_temp ; 
    ram_000C_t01A_useless                   = ram_000C_temp ; bzk optimize
    ram_000C_t01B                           = ram_000C_temp ; 
    ram_000C_t01C                           = ram_000C_temp ; 
    ram_000C_t01D                           = ram_000C_temp ; 



; 
ram_000D_temp                           = $000D ; 000561(W)  000578(W)  002B88(R)  004E50(W)  004EBA(W)  0051F4(W)  005219(W)  007841(Wx) 007852(Wx) 007856(Wx) 0078E2(Wx) 0078EB(Wx) 0078EF(Wx) 007931(Rx) 0084E4(W)  0084EB(R)  0084F0(W)  00863B(R)  008640(W)  008654(R)  008659(W)  00866B(R)  0086BA(W)  0086C9(W)  0087BC(R)  008DCE(R)  008EF8(W)  008EFF(R)  008F04(W)  009212(W)  009230(R)  009235(W)  00A7C7(W)  00A7E1(R)  00A89C(W)  00A8B7(R)  00A8D5(R)  00A98E(W)  00A9C9(R)  00AB3E(W)  00ABAE(R)  00B1AB(Ry) 00B27A(Ry) 00B2C7(W)  00B2E1(W)  00B37F(Ry) 00B3F7(Ry) 00B43A(Ry) 0139FF(W)  013A24(W)  013A49(W)  01F5B7(W)  01F5C9(R)  01F5D0(W)  01F5DC(R)  01F5F8(W)  01F673(W)  028E66(W)  028E86(R)  028EA3(W)  02F795(R)  02F7AE(R)  037908(R)  037B17(W)  0395F4(R)  03B3B4(W)  03B3CA(R)  03B5D8(W)  03B605(R)  03B649(W)  03B679(R)  03BD26(W)  03BEE8(W)  03D091(W)  03E03F(Wi) 
    ram_000D_t000_palette_counter           = ram_000D_temp ; 
    ram_000D_t001                           = ram_000D_temp ; 
    ram_000D_t002                           = ram_000D_temp ; 
    ram_000D_t003_where_are_stairs          = ram_000D_temp ; relative to player, 00 = to the right, 01 = to the left
    ram_000D_t004                           = ram_000D_temp ; 
    ram_000D_t005_pos_Y_lo                  = ram_000D_temp ; 
    ram_000D_t006_pos_Y_lo                  = ram_000D_temp ; 
    ram_000D_t007_max_same_objects          = ram_000D_temp ; 
    ram_000D_t008_pos_X_lo                  = ram_000D_temp ; 
    ram_000D_t009_pos_Y_lo                  = ram_000D_temp ; 
    ram_000D_t00A_pos_Y_lo                  = ram_000D_temp ; 
    ram_000D_t00B                           = ram_000D_temp ; 
    ram_000D_t00C                           = ram_000D_temp ; 
    ram_000D_t00D                           = ram_000D_temp ; 
    ram_000D_t00E_save_X                    = ram_000D_temp ; 
    ram_000D_t010_cam_pos_lo                = ram_000D_temp ; 
    ram_000D_t011_pair                      = ram_000D_temp ; 2 addresses 000D-000E
    ram_000D_t012                           = ram_000D_temp ; 
    ram_000D_t013_useless                   = ram_000D_temp ; bzk optimize



; 
ram_000E_temp                           = $000E ; 000539(W)  000587(R)  0035F0(W)  0035F5(R)  00366F(W)  0036D0(R)  004E2C(W)  004E3A(R)  0053E6(W)  005422(R)  007841(Wx) 007852(Wx) 007856(Wx) 0078E2(Wx) 0078EB(Wx) 0078EF(Wx) 007931(Rx) 0084DF(W)  00867C(R)  008680(W)  008695(R)  008699(W)  008EF3(W)  00920D(W)  009227(R)  00922B(W)  009662(W)  00A8A5(W)  00B1AB(Ry) 00B27A(Ry) 00B2D5(W)  00B37F(Ry) 00B3F7(Ry) 00B43A(Ry) 00D95C(W)  00D966(W)  00D96C(W)  00D972(W)  00D978(W)  00D97E(W)  00D988(W)  01F59F(R)  01F608(W)  01F628(R)  0280EE(W)  0280F4(R)  0280FA(R)  028E6A(W)  028E7D(W)  028E84(R)  028EA7(W)  028FA3(W)  028FAC(W)  02D98A(R)  02D9AA(W)  02F662(W)  02F66D(R)  03778D(R)  0377D7(W)  0377FE(R)  03780D(W)  037857(R)  0378DB(R)  037A65(R)  037B03(R)  03B3B9(W)  03B3D4(R)  03B5DD(W)  03B60A(R)  03B64E(W)  03B694(R)  03D4C9(W)  03D4F4(W)  03D507(R)  03D509(W)  03D544(R)  03E03F(Wi) 03E63F(W)  03E645(R)  03E65A(R)  03E8AA(Rx) 03E8AC(Wx) 03E9CE(R)  
    ram_000E_t000_data                      = ram_000E_temp ; 2 addresses 000E-000F
    ram_000E_t001_ppu_addr_lo               = ram_000E_temp ; 
    ram_000E_t002_ppu_addr_lo               = ram_000E_temp ; 
    ram_000E_t003_pressed_Up_or_Down        = ram_000E_temp ; 00 = Up, 01 = Down
    ram_000E_t004                           = ram_000E_temp ; 
    ram_000E_t005_subroutine_argument_A     = ram_000E_temp ; not all subroutines use this variable
    ram_000E_t006_save_Y                    = ram_000E_temp ; 
    ram_000E_t007_colors_counter            = ram_000E_temp ; 
    ram_000E_t008_prg_bank_id               = ram_000E_temp ; 
    ram_000E_t009_copy_obj_facing           = ram_000E_temp ; 
    ram_000E_t00A_distance_X                = ram_000E_temp ; 
    ram_000E_t00B                           = ram_000E_temp ; 
    ram_000E_t00C                           = ram_000E_temp ; 
    ram_000E_t00D_some_obj_flags            = ram_000E_temp ; 
    ram_000E_t00E                           = ram_000E_temp ; 
    ram_000E_t00F_data_index                = ram_000E_temp ; 
    ram_000E_t010_lo                        = ram_000E_temp ; 
    ram_000E_t011_same_objects_counter      = ram_000E_temp ; 
    ram_000E_t012_obj_facing                = ram_000E_temp ; 
    ram_000E_t013_obj_facing                = ram_000E_temp ; 
    ram_000E_t014_blk_id_fr_x2              = ram_000E_temp ; 
    ram_000E_t015_pos_X_lo                  = ram_000E_temp ; 
    ram_000E_t016                           = ram_000E_temp ; 
    ram_000E_t017_hi                        = ram_000E_temp ; 
    ram_000E_t018_useless                   = ram_000E_temp ; bzk optimize



; 
ram_000F_temp                           = $000F ; 000035(W)  000056(R)  00366A(W)  0036D5(R)  003AD4(W)  003AEC(R)  003AEF(W)  003BEE(W)  003C0B(R)  003C42(R)  003CB7(R)  003D9A(W)  003DAE(W)  004E31(W)  004E3F(W)  005402(W)  005409(R)  007841(Wx) 007852(Wx) 007856(Wx) 0078E2(Wx) 0078EB(Wx) 0078EF(Wx) 007931(Rx) 007D28(W)  007D31(R)  0084DA(W)  008675(R)  00867A(W)  00868E(R)  008693(W)  0086A5(R)  0087B6(W)  0087D3(R)  008EEE(W)  009208(W)  009220(R)  009225(W)  00A8AA(W)  00B2E3(W)  00B2E5(R)  00B852(W)  00B865(R)  01F5BD(W)  01F5C7(W)  01F5D2(R)  028451(W)  02845A(R)  0289C9(W)  0289D9(R)  0289F7(W)  028F8D(W)  028F92(R)  028FB0(R)  02F9D5(W)  02F9EF(W)  02FA21(R)  02FA43(R)  033224(W)  03323D(R)  033275(R)  03408C(W)  03418B(R)  0377BC(W)  037811(W)  037B6B(R)  037BBE(R)  038C78(W)  038C7C(R)  038CC5(W)  03BD7C(W)  03BD80(R)  03BDC0(R)  03BF00(W)  03BF04(R)  03D4EF(W)  03D54A(R)  03E03F(Wi) 03E8B0(Wx) 03E9D2(R)  03EAC9(W)  
    ram_000F_t000_blk_id_lo_x04             = ram_000F_temp ; 
    ram_000F_t001                           = ram_000F_temp ; 
    ram_000F_t002                           = ram_000F_temp ; 
    ram_000F_t003                           = ram_000F_temp ; 
    ram_000F_t004                           = ram_000F_temp ; 
    ram_000F_t005                           = ram_000F_temp ; 
    ram_000F_t006                           = ram_000F_temp ; 
    ram_000F_t007_flag                      = ram_000F_temp ; 
    ram_000F_t008_hi                        = ram_000F_temp ; 
    ram_000F_t009                           = ram_000F_temp ; 
    ram_000F_t00A                           = ram_000F_temp ; 
    ram_000F_t00B_ppu_addr_hi               = ram_000F_temp ; 
    ram_000F_t00C_ppu_addr_hi               = ram_000F_temp ; 
    ram_000F_t00D_save_X                    = ram_000F_temp ; 
    ram_000F_t00E_save_X                    = ram_000F_temp ; 
    ram_000F_t00F_obj_type                  = ram_000F_temp ; 
    ram_000F_t010                           = ram_000F_temp ; 
    ram_000F_t011_obj_anim_cnt              = ram_000F_temp ; 
    ram_000F_t012                           = ram_000F_temp ; 
    ram_000F_t013_lo                        = ram_000F_temp ; 
    ram_000F_t014                           = ram_000F_temp ; 
    ram_000F_t015_useless                   = ram_000F_temp ; bzk optimize
    ram_000F_t016                           = ram_000F_temp ; 
    ram_000F_t017_flag                      = ram_000F_temp ; 
    ram_000F_t018                           = ram_000F_temp ; 
    ram_000F_t019_useless                   = ram_000F_temp ; bzk optimize



; 
ram_0010_temp                           = $0010 ; 000B9D(W)  00218B(W)  002195(R)  0021A7(W)  0021B2(W)  0021B4(R)  0021CC(W)  0021CE(W)  0021D0(R)  0023A7(W)  0023B8(W)  004DE1(W)  004DE7(W)  004DEA(W)  004DED(W)  004DF0(W)  004DF3(W)  004DFE(R)  0052FA(W)  0053E8(R)  0053F5(W)  005D12(W)  005D2E(R)  0069E1(R)  006D69(W)  006D84(W)  007099(R)  0070BA(R)  00715B(W)  007669(W)  007792(R)  0078E2(Wx) 007931(Rx) 008ABE(W)  008DB2(W)  008EC1(R)  009162(W)  009229(R)  0092AF(W)  0092B4(R)  0092BC(W)  0094B3(W)  0094BD(R)  0094D2(R)  0094D6(R)  0098C2(Ry) 00B6FC(W)  00B719(W)  00B72F(R)  024724(W)  02473F(R)  024778(W)  024785(R)  02478C(R)  0247D7(W)  0247ED(R)  025CD4(W)  025CF7(R)  026B6F(W)  026B7A(W)  026B81(W)  027EA1(W)  027EB8(R)  02906D(W)  02907C(R)  029087(R)  0291CA(W)  0291E4(W)  0291F5(R)  029219(R)  02921D(W)  029238(W)  029249(R)  029270(W)  02B686(W)  02B693(W)  02B69A(R)  02B6C1(R)  02BA02(W)  02BA0D(W)  02C0DF(R)  02CA12(W)  02CA19(R)  02D0EB(W)  02D7A0(W)  02D7B7(R)  02DC0A(W)  02DC0C(R)  02DC2E(W)  02DE69(W)  02E3A8(W)  02E3BA(R)  02F404(W)  02F420(W)  02F45C(W)  02F4AE(W)  02F687(W)  02F74C(R)  02F756(R)  032B20(W)  033078(R)  03307E(W)  033133(W)  03314D(R)  033281(W)  03328D(R)  033293(R)  0332A8(R)  03407D(R)  0340D8(W)  034134(W)  03417F(R)  0341E7(R)  034230(W)  0377D5(R)  039634(W)  039647(R)  03AE51(W)  03AE64(W)  03AF9D(R)  03AFDB(R)  03B3AA(R)  03B511(R)  03B529(R)  03B57F(R)  03B5AB(R)  03B5CE(R)  03B63F(R)  03B67E(R)  03BC93(W)  03BC9B(W)  03BC9F(R)  03BCF5(R)  03BD8B(R)  03BDAA(R)  03CB30(W)  03CC50(W)  03CC68(W)  03CC81(R)  03CC83(W)  03CDFB(W)  03CE4F(R)  03CE51(W)  03D1C5(W)  03D227(W)  03D230(R)  03D237(W)  03D2AC(R)  03D2B1(W)  03E03F(Wi) 03E8AA(Rx) 03E8AC(Wx) 03E966(W)  03E997(R)  03E9D4(W)  03E9F8(W)  03EA30(R)  03EA61(W)  03EAE8(W)  03EB06(R)  03EB0A(W)  03EB15(R)  03EB24(Wx) 03EB45(W)  03FC05(R)  03FC0B(W)  03FC21(R)  03FC26(W)  03FC29(R)  03FC2E(W)  03FC34(R)  03FC58(R)  03FC5E(W)  03FC81(R)  03FCAF(W)  03FCE5(R)  03FD08(W)  03FD15(R)  
    ram_0010_t000_data_blk_data_ptr_sub     = ram_0010_temp ; 2 addresses 0010-0011
    ram_0010_t001_brightness_data           = ram_0010_temp ; 2 addresses 0010-0011
    ram_0010_t002_data                      = ram_0010_temp ; 2 addresses 0010-0011
    ram_0010_t003_data                      = ram_0010_temp ; 2 addresses 0010-0011
    ram_0010_t004                           = ram_0010_temp ; 
    ram_0010_t005_obj_id                    = ram_0010_temp ; 
    ram_0010_t006_flag                      = ram_0010_temp ; 00 = ???, 01 = ???
    ram_0010_t007                           = ram_0010_temp ; 
    ram_0010_t008_object_index              = ram_0010_temp ; 
    ram_0010_t009_ppu_addr_hi               = ram_0010_temp ; 
    ram_0010_t00A                           = ram_0010_temp ; 
    ram_0010_t00B                           = ram_0010_temp ; 
    ram_0010_t00C_pointer_hi                = ram_0010_temp ; 
    ram_0010_t00D_object_index              = ram_0010_temp ; 
    ram_0010_t00E_buttons                   = ram_0010_temp ; 
    ram_0010_t00F_object_index              = ram_0010_temp ; 
    ram_0010_t010_data_pointer              = ram_0010_temp ; 2 addresses 0010-0011
    ram_0010_t011_data_pointer              = ram_0010_temp ; 2 addresses 0010-0011
    ram_0010_t012_useless                   = ram_0010_temp ; bzk optimize
    ram_0010_t013_distance_X                = ram_0010_temp ; 
    ram_0010_t014                           = ram_0010_temp ; 
    ram_0010_t015_buttons                   = ram_0010_temp ; 
    ram_0010_t016_object_index              = ram_0010_temp ; 
    ram_0010_t017_pos_X_lo                  = ram_0010_temp ; 
    ram_0010_t018_pos_X_lo                  = ram_0010_temp ; 
    ram_0010_t019_flag                      = ram_0010_temp ; 00 = ???, 01 = ???
    ram_0010_t01A_hi                        = ram_0010_temp ; 
    ram_0010_t01B                           = ram_0010_temp ; 3 addresses 0010-0012
    ram_0010_t01C_object_index              = ram_0010_temp ; 
    ram_0010_t01D_pos_X_lo                  = ram_0010_temp ; 
    ram_0010_t01E_pos_Y_lo_1                = ram_0010_temp ; 
    ram_0010_t01F_spr_A_flip                = ram_0010_temp ; 
    ram_0010_t020_spr_A_flip                = ram_0010_temp ; 
    ram_0010_t021_spr_A_flip                = ram_0010_temp ; 
    ram_0010_t022                           = ram_0010_temp ; 
    ram_0010_t023_spd_Y_lo                  = ram_0010_temp ; 
    ram_0010_t024_pos_X_lo                  = ram_0010_temp ; 
    ram_0010_t025_useless_01                = ram_0010_temp ; bzk optimize, always 01
    ram_0010_t026                           = ram_0010_temp ; 
    ram_0010_t027                           = ram_0010_temp ; 
    ram_0010_t028                           = ram_0010_temp ; 
    ram_0010_t029_tiles_counter             = ram_0010_temp ; 
    ram_0010_t02A                           = ram_0010_temp ; 
    ram_0010_t02B_obj_id                    = ram_0010_temp ; 
    ram_0010_t02C                           = ram_0010_temp ; 
    ram_0010_t02D                           = ram_0010_temp ; 
    ram_0010_t02E_save_X                    = ram_0010_temp ; 
    ram_0010_t02F_counter                   = ram_0010_temp ; 
    ram_0010_t030                           = ram_0010_temp ; 
    ram_0010_t031                           = ram_0010_temp ; 
    ram_0010_t032_2x2_block                 = ram_0010_temp ; 4 addresses 0010-0013
    ram_0010_t033_useless                   = ram_0010_temp ; bzk optimize
    ram_0010_t034_useless                   = ram_0010_temp ; bzk optimize
    ram_0010_t035_useless                   = ram_0010_temp ; bzk optimize



; 
ram_0011_temp                           = $0011 ; 000BA2(W)  002320(W)  00233C(R)  002387(R)  0052FF(W)  0053EB(R)  0053F2(W)  008AC5(W)  008BC7(R)  008DB7(W)  008ECA(R)  009169(W)  009223(R)  0092B6(W)  0094B1(W)  0094CD(R)  0098C2(Ry) 009C12(R)  009C14(W)  009C2C(R)  009C2E(W)  009C96(R)  00A700(W)  00A74A(W)  00A7A1(W)  00A886(W)  00A8EA(R)  00A96E(W)  00A9E0(W)  00AA64(W)  00AABE(R)  00C2A4(W)  00C2B0(W)  00C2B6(R)  024776(W)  024794(R)  0247D5(W)  0247E8(R)  027EA6(W)  027EBD(R)  02B682(W)  02B68F(W)  02B6A2(R)  02B6C9(R)  02C0D5(R)  02CCBE(W)  02DAFB(W)  02DB07(R)  02F3DA(W)  02F432(W)  02F467(W)  02F4B3(W)  02F693(W)  02F74A(R)  02F78F(W)  03306F(R)  033076(W)  03312E(W)  033152(R)  033297(W)  03329E(R)  0332AC(W)  0332B3(R)  037901(R)  03BCA4(W)  03BCC7(R)  03BD1A(R)  03CB34(W)  03CC54(W)  03CC63(W)  03CC66(W)  03CC6A(R)  03CC6E(W)  03CC87(R)  03CC89(W)  03CDFD(W)  03CE55(R)  03CE57(W)  03D1C9(W)  03D2A1(W)  03D2AA(R)  03E03F(Wi) 03E8B0(Wx) 03E968(W)  03E96C(W)  03E96F(W)  03E972(W)  03E975(W)  03E978(W)  03E97B(W)  03E980(R)  03E995(W)  03E99D(R)  03E9A2(W)  03E9D0(W)  03E9F2(W)  03EA10(R)  03EA12(W)  03EA14(R)  03EA19(W)  03EA29(R)  03EA2D(W)  03EA43(R)  03EA4A(W)  03EA66(W)  03EA9F(R)  03EAA3(W)  03EAB3(R)  03EAB7(W)  03EAC7(W)  03EAD4(R)  03EAD8(W)  03EADC(W)  03EADF(W)  03EAE2(W)  03EAE5(W)  03EAFF(R)  03EB04(W)  03EB0F(R)  03EB24(Wx) 03EB3F(W)  03EB47(R)  03EB4E(W)  03EB5B(R)  03EB5D(W)  03FC15(W)  03FC56(W)  03FC60(R)  03FC74(W)  03FC76(W)  03FC78(W)  03FC7A(W)  03FC7C(W)  03FCA3(W)  03FCC0(R)  03FCCD(R)  03FD06(W)  03FD0A(W)  03FD0C(W)  03FD0E(W)  03FD10(W)  03FD38(R)  
    ram_0011_t000                           = ram_0011_temp ; 
    ram_0011_t001                           = ram_0011_temp ; 
    ram_0011_t002                           = ram_0011_temp ; 
    ram_0011_t003_nmt_attr_data_index       = ram_0011_temp ; index for ram_0000_t01B_nmt_attr_data
    ram_0011_t004                           = ram_0011_temp ; 
    ram_0011_t005                           = ram_0011_temp ; ? возможно стоит сделать 004
    ram_0011_t006_blk_data_index            = ram_0011_temp ; index for ram_0000_t00B_blk_data, bzk optimize
    ram_0011_t007_nametable_attribute       = ram_0011_temp ; 
    ram_0011_t008_nametable_attribute       = ram_0011_temp ; 
    ram_0011_t009                           = ram_0011_temp ; 
    ram_0011_t00A_pointer_lo                = ram_0011_temp ; 
    ram_0011_t00B_distance_Y                = ram_0011_temp ; 
    ram_0011_t00C_data_index                = ram_0011_temp ; 
    ram_0011_t00D_nmt_attr_data_index       = ram_0011_temp ; 
    ram_0011_t00E_obj_id                    = ram_0011_temp ; 
    ram_0011_t00F_pos_Y_lo                  = ram_0011_temp ; 
    ram_0011_t010_lo                        = ram_0011_temp ; 
    ram_0011_t011_pos_X_lo                  = ram_0011_temp ; 
    ram_0011_t012_obj_id                    = ram_0011_temp ; 
    ram_0011_t013_copy_obj_id               = ram_0011_temp ; 
    ram_0011_t014_cam_pos_lo                = ram_0011_temp ; 
    ram_0011_t015_pos_Y_lo_2                = ram_0011_temp ; 
    ram_0011_t016_flag                      = ram_0011_temp ; 
    ram_0011_t017                           = ram_0011_temp ; 
    ram_0011_t018                           = ram_0011_temp ; 
    ram_0011_t019_spd_Y_fr                  = ram_0011_temp ; 
    ram_0011_t01A                           = ram_0011_temp ; 
    ram_0011_t01B_pos_Y_lo                  = ram_0011_temp ; 
    ram_0011_t01C_pos_Y_lo                  = ram_0011_temp ; 
    ram_0011_t01D                           = ram_0011_temp ; 
    ram_0011_t01E_pos_Y_lo                  = ram_0011_temp ; 



; 
ram_0012_temp                           = $0012 ; 000BAC(W)  000BC8(R)  00534E(W)  00536D(R)  0053A1(W)  0053B8(R)  006D9E(W)  006DA8(R)  006DCB(W)  006DD2(R)  008A73(W)  008AB7(W)  008ACE(R)  008B17(R)  008B5E(R)  008B6E(R)  008DC1(W)  008DD5(R)  009160(W)  00924C(R)  0098C2(Ry) 009932(R)  009991(R)  0099A2(W)  00A8D9(W)  00A910(R)  00C26D(W)  00C272(W)  00C2C5(R)  00C2D2(W)  00C2D4(R)  02410D(W)  024137(R)  025681(Ri) 026512(W)  02651F(R)  026534(W)  026538(R)  02B67E(W)  02B68B(W)  02B6AA(R)  02B6D0(R)  02B6D6(R)  03324D(W)  03325D(W)  033273(W)  03327B(R)  03779D(W)  0377C8(R)  0377CC(W)  037876(R)  0378F2(R)  037962(R)  037964(W)  0379A9(R)  0379B9(R)  0379BB(W)  0379C6(W)  0379DC(W)  0379DF(W)  0379E2(W)  0379EB(R)  0379ED(W)  037A04(R)  03AE56(W)  03AE6A(W)  03AFE6(R)  03BCA9(W)  03BD2F(R)  03BD46(R)  03BDE0(R)  03CB52(W)  03CBAF(R)  03CBB7(R)  03CBBF(R)  03CBC7(R)  03CBCF(R)  03CBD7(R)  03CBDF(R)  03CBE7(R)  03CCAC(W)  03CCFD(R)  03CD08(R)  03CD0D(W)  03CE73(W)  03CE7B(R)  03CE80(W)  03CECB(R)  03CED0(W)  03E03F(Wi) 03EB24(Wx) 03FCB7(W)  03FCE2(R)  
    ram_0012_t000_config                    = ram_0012_temp ; 4 addresses 0012-0015
    ram_0012_t001_brightness_change         = ram_0012_temp ; 
    ram_0012_t002                           = ram_0012_temp ; 
    ram_0012_t003                           = ram_0012_temp ; 
    ram_0012_t004_data_index                = ram_0012_temp ; 
    ram_0012_t005                           = ram_0012_temp ; 
    ram_0012_t006_copy_obj_state            = ram_0012_temp ; 
    ram_0012_t007_loop_counter              = ram_0012_temp ; 
    ram_0012_t008                           = ram_0012_temp ; 
    ram_0012_t009_loop_counter              = ram_0012_temp ; 
    ram_0012_t00A                           = ram_0012_temp ; 
    ram_0012_t00B                           = ram_0012_temp ; 
    ram_0012_t00C                           = ram_0012_temp ; 
    ram_0012_t00D                           = ram_0012_temp ; 
    ram_0012_t00E_save_X                    = ram_0012_temp ; 
    ram_0012_t00F_save_X                    = ram_0012_temp ; 
    ram_0012_t010                           = ram_0012_temp ; 
    ram_0012_t011_ppu_addr_lo               = ram_0012_temp ; 
    ram_0012_t012_useless                   = ram_0012_temp ; bzk optimize
    ram_0012_t013_flag                      = ram_0012_temp ; 
    ram_0012_t014_pos_X_lo                  = ram_0012_temp ; 
    ram_0012_t015                           = ram_0012_temp ; 
    ram_0012_t016_useless                   = ram_0012_temp ; bzk optimize



; 
ram_0013_temp                           = $0013 ; 000BBE(W)  000BD7(W)  008ACA(W)  008B5C(W)  008B9A(R)  008BB8(R)  009167(W)  009255(R)  0098C2(Ry) 009936(R)  009994(R)  00999F(W)  024123(W)  0252E2(Ri) 02536E(Ri) 0253D2(Ri) 025435(Ri) 02545E(Ri) 025536(Ri) 02556A(Ri) 0255A1(Ri) 02561A(Ri) 02564F(Ri) 0256B7(Ri) 025794(Ri) 025849(Ri) 025973(Ri) 025BC5(Ri) 025C16(Ri) 025C4C(Ri) 025CB2(Ri) 025CD8(Ri) 025D3E(Ri) 025D48(Ri) 025D57(Ri) 025D66(Ri) 025DCB(Ri) 025DE9(Ri) 025E70(Ri) 025F99(Ri) 02600C(Ri) 026039(Ri) 026094(Ri) 0260FD(Ri) 026516(W)  026518(R)  026532(W)  02F2E0(W)  02F2E7(R)  0377C6(W)  03780B(R)  0379AE(R)  0379C2(R)  0379D3(W)  0379E4(R)  0379E6(W)  0379F1(W)  0379F4(R)  0379FC(R)  03BCAE(W)  03BD52(R)  03BD99(R)  03CCF0(W)  03CCF9(R)  03CCFB(W)  03CD03(R)  03CEC0(W)  03CEC9(R)  03E03F(Wi) 03EB24(Wx) 03FC1F(W)  03FC83(W)  03FC95(W)  03FCAD(W)  03FCB9(R)  03FD17(W)  03FD20(R)  03FD3B(R)  
    ram_0013_t000_palette_counter           = ram_0013_temp ; 
    ram_0013_t001                           = ram_0013_temp ; 
    ram_0013_t002                           = ram_0013_temp ; 
    ram_0013_t003                           = ram_0013_temp ; 
    ram_0013_t004                           = ram_0013_temp ; 
    ram_0013_t005                           = ram_0013_temp ; 
    ram_0013_t006_copy_obj_facing           = ram_0013_temp ; 
    ram_0013_t007                           = ram_0013_temp ; 
    ram_0013_t008_useless                   = ram_0013_temp ; bzk optimize
    ram_0013_t009_ppu_addr_hi               = ram_0013_temp ; 
    ram_0013_t010                           = ram_0013_temp ; 
    ram_0013_t011_pos_Y_lo                  = ram_0013_temp ; 



; 
ram_0014_temp                           = $0014 ; 000BC2(W)  000BD2(W)  00535D(W)  00536B(W)  005377(R)  0053B0(W)  0053B6(W)  0053C2(R)  009940(W)  00994F(R)  00B1E7(W)  00B1F4(R)  00B1F6(W)  00B202(R)  024128(W)  025262(Ri) 02536E(Ri) 02544B(Ri) 025558(Ri) 0255A6(Ri) 025620(Ri) 02562B(Ri) 0257B6(Ri) 025843(Ri) 02596C(Ri) 025B3F(Ri) 025BD9(Ri) 025C5A(Ri) 025CCC(Ri) 025CDE(Ri) 025DF3(Ri) 025E75(Ri) 026011(Ri) 0260BF(Ri) 03322C(W)  033253(R)  033258(W)  0377FC(W)  03780F(R)  03796E(R)  0379C8(R)  037A02(W)  037A07(W)  037A0C(W)  037A0F(W)  037A12(W)  03BCB3(W)  03BD28(R)  03BDA8(R)  03E03F(Wi) 03E94C(R)  03E951(W)  03E95B(R)  03FC64(W)  03FC87(R)  03FD1D(W)  
    ram_0014_t000_colors_counter            = ram_0014_temp ; 
    ram_0014_t001_pos_X_lo                  = ram_0014_temp ; 
    ram_0014_t002                           = ram_0014_temp ; 
    ram_0014_t003                           = ram_0014_temp ; 
    ram_0014_t004_table_index               = ram_0014_temp ; 
    ram_0014_t005                           = ram_0014_temp ; 
    ram_0014_t006                           = ram_0014_temp ; 
    ram_0014_t007_pos_Y_lo                  = ram_0014_temp ; 
    ram_0014_t008_ppu_addr_lo               = ram_0014_temp ; 



; 
ram_0015_temp                           = $0015 ; 000BB6(R)  002065(W)  0029F5(W)  0042F0(W)  004304(W)  00430D(W)  00533B(W)  005395(R)  006FD3(W)  006FE3(R)  00703F(W)  00704F(R)  0072F0(W)  007300(R)  007380(W)  007393(W)  0073A8(W)  0075FC(W)  00760C(R)  007628(W)  00992F(R)  009945(W)  009953(R)  009958(W)  0099D1(W)  0099FD(W)  009C0A(R)  009C0E(W)  009C10(R)  009C1F(R)  009C23(W)  009C2A(R)  00B1ED(W)  00B1FA(R)  00B1FC(W)  00B1FE(R)  00C9AC(W)  00C9B5(W)  02412D(W)  02527D(Ri) 0255AB(Ri) 0255F2(Ri) 025665(Ri) 025B0B(Ri) 025C41(Ri) 025CE9(Ri) 025CEB(W)  025CF2(R)  025E7A(Ri) 02761B(W)  027625(R)  029035(W)  029043(W)  02909C(R)  0290A2(R)  02B15A(W)  02B422(W)  02B492(W)  02B49D(R)  02B4D5(W)  02B50A(W)  02B773(W)  02B780(R)  02B7BC(W)  02B88D(W)  02B89A(R)  02B94C(W)  03322E(W)  033237(R)  033266(W)  033268(R)  037800(W)  037973(R)  0379FA(W)  03BCB8(W)  03BD2D(R)  03E03F(Wi) 03E98E(R)  
    ram_0015_t000_loop_counter              = ram_0015_temp ; 
    ram_0015_t001_copy_index_ppu_buffer     = ram_0015_temp ; a copy of ram_index_ppu_buffer
    ram_0015_t002_copy_index_ppu_buffer     = ram_0015_temp ; a copy of ram_index_ppu_buffer
    ram_0015_t003                           = ram_0015_temp ; 
    ram_0015_t004                           = ram_0015_temp ; = ram_0015_t003 ??? 0x009C1F
    ram_0015_t005                           = ram_0015_temp ; 
    ram_0015_t006_loop_counter              = ram_0015_temp ; 
    ram_0015_t007_animation                 = ram_0015_temp ; 
    ram_0015_t008_pos_X_lo                  = ram_0015_temp ; 
    ram_0015_t009_ppu_addr_hi               = ram_0015_temp ; 
    ram_0015_t00A_useless                   = ram_0015_temp ; bzk optimize
    ram_0015_t00B_loop_counter              = ram_0015_temp ; 
    ram_0015_t00C_tile                      = ram_0015_temp ; 
    ram_0015_t00D_pos_Y_lo                  = ram_0015_temp ; 



; 
ram_0016_temp                           = $0016 ; 005364(R)  005420(R)  005D14(W)  005D20(R)  005D4F(W)  005D76(R)  005DA3(W)  005DB7(R)  006B64(W)  006B69(R)  006E65(W)  008A66(W)  008A6B(R)  0097D7(W)  009802(W)  009C83(W)  009CA2(R)  00C999(W)  00C99E(R)  00C9C6(W)  00C9C8(R)  00CE46(W)  00CE77(R)  00D16B(W)  00D17F(R)  017EC7(W)  017EFA(R)  025CE6(W)  025CF0(R)  027478(W)  027494(R)  027613(W)  027620(R)  027D89(W)  027DEB(R)  029031(W)  029066(R)  0290C7(W)  0290D3(R)  0290DC(W)  029104(W)  02910E(R)  02913D(W)  02913F(R)  029171(W)  02917D(R)  029191(R)  02919E(W)  0291A0(R)  02B619(W)  032446(W)  033228(W)  03324F(R)  037926(R)  03793F(W)  037B45(W)  03BCBD(W)  03BD56(R)  03BD5E(R)  03E03F(Wi) 03EBA7(W)  
    ram_0016_t000_data                      = ram_0016_temp ; 2 addresses 0016-0017
    ram_0016_t001_jmp                       = ram_0016_temp ; 2 addresses 0016-0017
    ram_0016_t002_jmp                       = ram_0016_temp ; 2 addresses 0016-0017
    ram_0016_t003                           = ram_0016_temp ; 
    ram_0016_t004                           = ram_0016_temp ; 
    ram_0016_t005_save_X                    = ram_0016_temp ; 
    ram_0016_t006_save_X                    = ram_0016_temp ; 
    ram_0016_t007_save_X                    = ram_0016_temp ; 
    ram_0016_t008_save_X                    = ram_0016_temp ; 
    ram_0016_t009                           = ram_0016_temp ; 
    ram_0016_t00A_nametable_attribute       = ram_0016_temp ; 
    ram_0016_t00B                           = ram_0016_temp ; 
    ram_0016_t00C_object_index              = ram_0016_temp ; 
    ram_0016_t00C_loop_counter              = ram_0016_temp ; 
    ram_0016_t00D_save_X                    = ram_0016_temp ; 
    ram_0016_t00E_flag                      = ram_0016_temp ; 
    ram_0016_t00F_loop_counter              = ram_0016_temp ; 
    ram_0016_t010_save_X                    = ram_0016_temp ; 
    ram_0016_t011_buffer_index              = ram_0016_temp ; 
    ram_0016_t012_object_index              = ram_0016_temp ; 
    ram_0016_t013_save_X                    = ram_0016_temp ; 
    ram_0016_t014_boss_hp                   = ram_0016_temp ; 
    ram_0016_t015_loop_counter              = ram_0016_temp ; 
    ram_0016_t016_loop_counter              = ram_0016_temp ; 
    ram_0016_t017_loop_counter              = ram_0016_temp ; 



; 
ram_0017_temp                           = $0017 ; 0044E3(W)  0044ED(W)  004506(W)  00484F(W)  004859(W)  004E02(R)  005321(R)  006BDD(W)  006BF1(W)  006C3F(R)  00838E(W)  0083A1(R)  008C4E(W)  008CAF(R)  0097EA(W)  009810(W)  009815(R)  00982A(W)  00983D(R)  00984F(W)  009854(R)  00987A(W)  009898(R)  009905(R)  00B72C(W)  00B7DE(R)  00C2C3(W)  00C2CB(W)  00C2CD(R)  00C5B5(W)  00C5BC(R)  00C5CB(W)  00C5CF(R)  00C730(W)  00C73B(R)  00CD54(W)  00CD7C(R)  00CD95(W)  00CD97(R)  00CF0D(R)  00D0A6(R)  023F6A(W)  023F79(W)  02461A(W)  024629(W)  024650(W)  024653(R)  025B08(W)  025B12(W)  025B6D(R)  025B84(R)  025BF6(W)  0262B4(R)  026339(R)  0263A9(R)  026424(R)  02674F(R)  0267B2(R)  026AA4(W)  026AAB(R)  026F17(W)  026F1C(W)  02747A(R)  0275F3(W)  0275FA(R)  027615(R)  02762D(W)  027631(R)  0276DD(W)  0276E9(R)  0276FD(W)  0279AA(W)  0279B5(R)  0279C4(R)  0279D8(W)  027E47(W)  027E60(R)  027E6E(W)  028CF1(W)  028D1B(R)  028D36(R)  028D54(R)  02904E(W)  02906F(R)  029073(R)  029090(R)  029097(W)  02909A(R)  029116(W)  02911F(W)  02912B(R)  02B61E(W)  03244B(W)  033226(W)  033270(R)  037929(R)  03793C(W)  037B4B(W)  03AE5A(W)  03AE6E(W)  03AE75(W)  03C96C(W)  03C9F5(W)  03CA2E(W)  03CAC3(R)  03E03F(Wi) 03FF2E(W)  03FF30(W)  03FF37(R)  
    ram_0017_t000_ppu_addr_hi               = ram_0017_temp ; 
    ram_0017_t001                           = ram_0017_temp ; 
    ram_0017_t002_flag                      = ram_0017_temp ; 
    ram_0017_t003_save_X                    = ram_0017_temp ; 
    ram_0017_t004_flag                      = ram_0017_temp ; 
    ram_0017_t005                           = ram_0017_temp ; 
    ram_0017_t006_save_X                    = ram_0017_temp ; 
    ram_0017_t007_obj_facing                = ram_0017_temp ; 
    ram_0017_t008                           = ram_0017_temp ; 
    ram_0017_t009_save_X                    = ram_0017_temp ; 
    ram_0017_t00A                           = ram_0017_temp ; 
    ram_0017_t00B                           = ram_0017_temp ; 
    ram_0017_t00C                           = ram_0017_temp ; 
    ram_0017_t00D                           = ram_0017_temp ; 
    ram_0017_t00E                           = ram_0017_temp ; 
    ram_0017_t00F                           = ram_0017_temp ; 
    ram_0017_t010_obj_state                 = ram_0017_temp ; 
    ram_0017_t011_obj_facing                = ram_0017_temp ; 
    ram_0017_t012_save_X                    = ram_0017_temp ; 
    ram_0017_t013                           = ram_0017_temp ; 
    ram_0017_t014_save_X                    = ram_0017_temp ; 
    ram_0017_t015_obj_state                 = ram_0017_temp ; 
    ram_0017_t016_loop_counter              = ram_0017_temp ; 
    ram_0017_t017_save_X                    = ram_0017_temp ; 
    ram_0017_t018_save_X                    = ram_0017_temp ; 
    ram_0017_t019                           = ram_0017_temp ; 
    ram_0017_t01A_buffer_index              = ram_0017_temp ; 
    ram_0017_t01B_object_index              = ram_0017_temp ; 
    ram_0017_t01C                           = ram_0017_temp ; 
    ram_0017_t01D_useless                   = ram_0017_temp ; bzk optimize



; handler at 0x03E38D
; see con_0018
ram_main_script                         = $0018 ; 001466(W)  002A0D(W)  004168(W)  00673C(W)  02B4E2(W)  02B7F7(W)  0321E7(W)  034011(R)  038BBF(W)  03E03F(Wi) 03E38D(R)  03E4BE(W)  03E57D(W)  03E584(W)  



; subscript for ram_main_script
ram_0019_subscript                      = $0019 ; 001477(W)  0025C7(R)  002600(W)  00264C(W)  002664(W)  0026A9(W)  002722(W)  0027B7(W)  00291A(W)  002958(W)  0029B2(W)  0029DC(W)  00416C(W)  00661C(R)  00662B(R)  00666F(W)  006696(W)  0066B3(W)  0066D8(W)  0066E5(W)  006700(W)  00671E(W)  006B77(W)  006F75(R)  006F94(R)  006F9E(W)  006FB1(W)  006FCE(W)  006FED(W)  007001(W)  007014(W)  007017(W)  00706A(W)  0072E3(W)  007308(W)  00733D(W)  007354(W)  00735E(W)  00736F(W)  0073A3(W)  0073B8(W)  0075B2(R)  0075D6(W)  00761D(W)  02B0FA(R)  02B19C(W)  02B1E3(W)  02B22A(W)  02B328(W)  02B3ED(W)  02B482(W)  02B4E6(W)  02B641(R)  02B6FE(W)  02B709(W)  02B715(W)  02B73E(W)  02B74C(W)  02B757(W)  02B794(W)  02B7A0(W)  02B7D4(W)  0321A0(R)  0321C9(W)  0321D3(W)  0321DD(W)  0321EB(W)  038BC3(W)  03E03F(Wi) 03E3B2(R)  03E3C0(W)  03E3D4(W)  03E3F2(W)  03E400(W)  03E42F(W)  03E478(R)  03E47C(W)  03E4A7(W)  03E4B1(W)  03E4C6(R)  03E4FD(W)  03E581(W)  



; frame counter
ram_frm_cnt                             = $001A ; 000F49(R)  000F5E(R)  0011DD(R)  001341(R)  0014CF(R)  001685(R)  0016B3(R)  002227(R)  0027C3(R)  002B00(R)  00383C(R)  00384A(R)  003855(R)  003A69(R)  003B7C(R)  00605E(R)  0063C9(R)  0063D6(R)  007162(R)  0073C9(R)  007710(R)  007728(R)  007CCC(R)  00B4D7(R)  00D7AF(R)  00DFB3(R)  017CA0(R)  017DA1(R)  0286E7(R)  028784(R)  0287A5(R)  0287E4(R)  028867(R)  0289EC(R)  028E56(R)  02C432(R)  02C7AF(R)  02C9BF(R)  02CA0B(R)  02D0A0(R)  02D5E4(R)  02D644(R)  02D64A(R)  02D696(R)  02DA0B(R)  02DCFA(R)  02F58B(R)  03273D(R)  0328F8(R)  032A39(R)  032AD1(R)  038128(R)  038A3B(R)  038A46(R)  038C6D(R)  038D39(R)  038D47(R)  03B56B(R)  03B7EB(R)  03BD13(R)  03D1A3(R)  03E03F(Wi) 03E05C(R)  03E38B(W)  



; 00 = 
; not 00 = another NMI during NMI
ram_001B_nmi_flag                       = $001B ; 03E03F(Wi) 03E070(R)  03E074(W)  03E0C6(W)  



; timer before rendering is enabled
ram_disable_rendering_timer             = $001C ; 001E57(W)  00356C(W)  003573(W)  006642(W)  006F9A(W)  006FCC(W)  0072DB(W)  0075EF(W)  02B162(W)  02B71A(W)  02B81B(W)  02B85F(W)  03D3AA(W)  03D3B7(W)  03E03F(Wi) 03E088(R)  03E08C(W)  03E18F(W)  03E476(W)  03F3E3(W)  03F476(W)  03F48D(W)  03F4A9(W)  03F59F(W)  03F5B3(W)  03F61B(W)  03F62A(W)  03F69D(R)  03F710(W)  03F78A(W)  03F79B(W)  03F88E(W)  03F898(W)  03F8E4(W)  03F8F5(W)  



; index for ram_ppu_buffer
; see con_buf_mode
ram_index_ppu_buffer                    = $001D ; 00055D(R)  00059B(R)  0005B7(R)  000D2E(W)  000F32(R)  002063(R)  0029E5(R)  002D99(W)  002DA1(W)  003608(R)  0036CE(R)  00399D(W)  003CAE(W)  003DE5(W)  0042E2(R)  004344(R)  004619(R)  004665(W)  0046C3(R)  0046E8(W)  00498B(R)  0049D2(W)  004E06(R)  004E8A(W)  004E9C(W)  00530B(R)  0053E3(W)  005D51(R)  005D6F(W)  005DA5(R)  005DB5(W)  006C15(R)  006C52(W)  006C98(R)  006CCE(W)  006EC5(R)  006F08(W)  006FD1(R)  006FE8(W)  00703D(R)  007054(W)  0072EE(R)  007305(W)  007373(W)  00737E(R)  007391(R)  0073A6(R)  0075FA(R)  00760E(W)  007626(R)  008C65(R)  008CAD(W)  008D1A(R)  008D71(W)  00967E(R)  0096A1(W)  0096E1(R)  0096FC(W)  0098AD(R)  0098E3(W)  009A1D(R)  009A52(W)  009A55(R)  009A89(W)  009C85(R)  009CA0(W)  00B372(R)  00B3AB(W)  00B3BC(R)  00B71B(R)  00B7DC(W)  00B803(R)  00B88B(W)  00B8C6(W)  00B906(R)  00B97F(W)  00BA94(R)  00BABE(W)  00DFC7(R)  017EC9(R)  017EDE(W)  025CE4(R)  025D14(R)  025D2A(W)  028F9B(R)  02B14E(R)  02B40B(R)  02B48B(R)  02B49F(W)  02B4C2(R)  02B4F9(R)  02B501(R)  02B512(W)  02B760(R)  02B782(W)  02B7A9(R)  02B884(R)  02B89C(W)  02B943(R)  033230(R)  03326E(W)  03CB54(R)  03CB91(W)  03CBF2(R)  03CBF7(W)  03CBFA(R)  03CC18(W)  03CCDD(W)  03CD2E(R)  03CD44(W)  03CEAD(W)  03CF00(R)  03CF1A(W)  03D240(R)  03D24C(W)  03D252(R)  03D25E(W)  03D262(R)  03D28C(W)  03D2F2(R)  03D313(W)  03D52E(W)  03D542(R)  03D558(W)  03E03F(Wi) 03E8BF(R)  03E8C5(R)  03E8CB(R)  03E8D0(R)  03E8D6(R)  03E8EA(W)  03E8EE(W)  03ED24(R)  03ED2A(W)  03ED74(W)  



; bzk optimize, useless address, always 00
ram_001E_useless_00                     = $001E ; 03E03F(Wi) 03E3B6(W)  03E45A(W)  03F699(R)  



; RNG
ram_random                              = $001F ; 009AFC(R)  009B05(R)  009B0B(W)  00C31B(R)  00D1D5(R)  00D419(R)  00D486(R)  00D791(R)  0135C7(R)  025B14(R)  025FD7(R)  02614B(R)  026154(R)  02615A(W)  026418(R)  0267BE(R)  026AD5(R)  026B08(R)  026B2B(R)  02701C(R)  028740(R)  0289E4(R)  02C430(R)  02C467(R)  02C74F(R)  02D3FF(R)  02D66B(R)  02D677(R)  02D6E4(R)  02D719(R)  02E534(R)  02E53D(R)  02E543(W)  03E03F(Wi) 03E057(W)  03E05A(R)  03E05E(W)  



; index for ram_oam
ram_0020_base_oam_offset                = $0020 ; 034022(R)  034027(W)  03E03F(Wi) 



; 
ram_prg_bank                            = $0021 ; 03E03F(Wi) 03E14F(R)  03E23B(R)  03E24E(R)  03E274(R)  03E2F1(R)  03E2F6(W)  03E6D5(R)  03E726(R)  



; a copy of ram_prg_bank
ram_0022_prg_bank                       = $0022 ; 03E03F(Wi) 03E1B1(R)  03E2F3(W)  03E68F(R)  03EBEB(R)  



; a copy of ram_prg_bank
ram_0023_prg_bank                       = $0023 ; 03E03F(Wi) 03E23D(W)  03E276(W)  03E285(R)  



; sound engine address
; prg bankswitching flag
; 00 = sound engine is not executing yet
; FF = sound engine is in progress
ram_se_prg_bsw_flag                     = $0024 ; 03E03F(Wi) 03E239(W)  03E24A(R)  03E260(W)  03E26C(W)  03E272(W)  03E283(W)  



; a copy of register value
ram_for_5105                            = $0025 ; 002106(W)  002190(W)  00687F(W)  006B0E(W)  006B70(W)  006E9A(W)  006FA5(W)  0075BF(W)  00BA89(W)  02B1EF(W)  02B346(W)  02B6EB(R)  03E03F(Wi) 03E06B(R)  03E0F9(W)  03E678(W)  03F693(R)  03F775(W)  



; 
ram_btn_press                           = $0026 ; 00373F(W)  004686(R)  00469D(R)  006622(R)  006FF3(R)  007159(R)  0071EC(R)  0071F2(R)  007319(R)  007323(R)  0073F1(R)  007543(R)  007560(R)  007614(R)  02B7D7(R)  032207(R)  03220D(R)  032213(R)  032219(R)  03221F(R)  03955D(R)  039678(R)  039780(R)  039934(R)  039CF0(R)  039D53(R)  039F4C(R)  03A24B(R)  03A25B(R)  03A375(R)  03A667(R)  03A890(R)  03E03F(Wi) 03E2AD(Wx) 03E83C(Wx) 03F571(R)  03F7B8(W)  03F878(W)  03F884(W)  03F917(W)  
; ram_0027                              = $0027 ; 03E03F(Wi) 03E2AD(Wx) 03E83C(Wx) 



; 
ram_btn_hold                            = $0028 ; 002B3A(R)  002BCB(R)  002CB8(R)  00373D(W)  0045B6(R)  00460D(R)  007142(R)  007155(R)  026366(R)  02B603(R)  039565(R)  039581(R)  039632(R)  039683(R)  03969F(R)  039786(R)  039946(R)  039982(R)  03999E(R)  0399A4(R)  039CFB(R)  039D5E(R)  039D77(R)  039F52(R)  039F6F(R)  039FB7(R)  03A0FE(R)  03A289(R)  03A2B0(R)  03A2CD(R)  03A2F4(R)  03A2FA(R)  03A385(R)  03A38B(R)  03A3F9(R)  03A66D(R)  03A899(R)  03A939(R)  03A942(R)  03A9EB(R)  03AD40(R)  03E03F(Wi) 03E2B1(Wx) 03E425(R)  03E83C(Wx) 03F7B6(W)  03F876(W)  03F882(W)  03F915(W)  
; ram_0029                              = $0029 ; 03E03F(Wi) 03E2B1(Wx) 03E83C(Wx) 



; handler at 0x03F39C
; see con_002A
ram_002A_script                         = $002A ; 0011CF(W)  0011EA(W)  00124B(W)  00132D(W)  00146B(W)  0016BD(W)  002114(W)  002A11(W)  003590(W)  003AA2(W)  003D93(W)  004171(W)  00417A(W)  0048FF(W)  0131E8(W)  013206(R)  01F534(W)  023F64(W)  0273CB(W)  0286D3(R)  02B7FB(W)  02C141(R)  03814D(R)  038153(W)  038198(W)  0384A0(R)  0384BA(R)  038BD5(R)  038D23(R)  038E95(R)  038F11(R)  039252(R)  039A65(R)  039A71(W)  03B8AB(W)  03D3C6(W)  03E03F(Wi) 03E466(W)  03E4BA(W)  03E83C(Wx) 03F39C(R)  03F403(W)  03F440(W)  03F484(W)  03F4C4(W)  03F4D4(W)  03F4E1(W)  03F4F8(W)  03F581(R)  03F5CB(W)  03F625(W)  03F637(W)  03F6B6(R)  03F6E6(W)  03F705(W)  03F713(R)  03F71A(R)  03F725(W)  03F760(W)  03F778(R)  03F77F(R)  03F785(W)  03F7B1(W)  03F7C9(W)  03F7D8(W)  03F958(W)  03FB76(W)  



; 00 = game is not paused
; 01 = game is paused
ram_pause_flag                          = $002B ; 030A2B(R)  03E03F(Wi) 03E83C(Wx) 03F397(R)  03F6A5(R)  03F6AF(W)  03F6CC(W)  



; 00 = allow pausing
; 01 = forbid pausing
ram_pause_ability_flag                  = $002C ; 00115B(W)  001E20(W)  03E03F(Wi) 03E5E0(W)  03E83C(Wx) 03F56D(R)  03F69B(R)  



; 00 = 
; 01 = 
ram_002D_flag                           = $002D ; 006FF9(R)  006FFF(W)  007062(W)  007258(W)  00731F(R)  03E03F(Wi) 03E83C(Wx) 



; 
ram_002E                                = $002E ; 000F9B(R)  000FD6(W)  007703(R)  00770B(W)  007763(R)  007781(R)  007785(W)  00779B(R)  0077D9(W)  007870(R)  007872(W)  007896(R)  0078F6(R)  00793C(R)  03E03F(Wi) 03E83C(Wx) 



; 00 = 
; 01 = 
ram_002F_flag                           = $002F ; 00412C(W)  02B7EB(W)  03E03F(Wi) 03E83C(Wx) 



; timer before screen changes to another, like title -> demo if you do nothing
ram_screen_timer_lo                     = $0030 ; 0011C9(W)  00137E(W)  00141C(W)  001427(W)  00143C(W)  00144D(W)  001452(W)  0014C6(W)  0014CB(W)  0014E1(W)  0015AB(W)  00167C(W)  001681(W)  0016AA(W)  0016AF(W)  001E7A(W)  001E88(W)  001E9C(W)  001EA3(R)  001ED0(W)  001EE1(W)  001EE7(W)  001EED(W)  001F0C(W)  001F24(W)  001F40(W)  001F84(W)  001F92(W)  001F9E(W)  001FA4(W)  001FB9(W)  001FC1(W)  001FFB(W)  002003(W)  002011(W)  00201D(W)  002023(W)  00202E(W)  0020C7(R)  0020CE(R)  00220A(R)  002210(R)  00221B(R)  0029A9(W)  0029D0(W)  0029D4(R)  0034D9(W)  0034E4(W)  007012(W)  00702D(W)  007037(R)  007346(W)  00734B(W)  007366(W)  007388(W)  0073BD(R)  02B72B(W)  02B741(W)  02B74A(W)  02B74F(W)  02B755(W)  02B789(W)  02B792(W)  02B797(W)  02B7CB(W)  02B86E(W)  02B873(W)  02B879(W)  02B8A3(W)  02B8CD(W)  02B8FB(W)  02B922(W)  02B927(W)  02B931(W)  02B936(W)  03815F(W)  03E03F(Wi) 03E42D(W)  03E434(R)  03E447(W)  03E4AF(W)  03E4B4(W)  03E589(R)  03E58F(R)  03E595(W)  03E59E(W)  03E83C(Wx) 03FA12(W)  03FAA9(W)  03FAB4(W)  03FAC9(W)  
ram_screen_timer_hi                     = $0031 ; 001E10(W)  001E6A(W)  001E98(R)  001EC3(W)  001EC6(W)  001EC8(R)  001F6D(W)  03E03F(Wi) 03E58B(R)  03E593(W)  03E5A0(W)  03E83C(Wx) 



; area/stage/level index
; highest bits of 24-bit 
; x-00
; 00 = Warakiya
; 01 = Clock Tower
; 02 = Forest of Madness
; 03 = Ship of Fools
; 04 = Tower of Terror
; 05 = Causeway
; 06 = Murky Marshes
; 07 = Caves of Alucard
; 08 = Sunken City
; 09 = Catacombs
; 0A = Mountain Range
; 0B = Castle Courtyard
; 0C = Main Hall
; 0D = Castle Tower
; 0E = Final Clock Tower
ram_blk_id_hi                           = $0032 ; 000023(R)  000511(R)  000DA6(R)  000FAB(W)  000FC0(R)  000FC4(R)  0011F0(R)  00122E(R)  0012BD(R)  00131C(R)  0013AC(R)  00171B(R)  002120(W)  0025F1(R)  002996(W)  004048(R)  004058(R)  004126(R)  00412E(R)  00414D(R)  00415C(R)  0041B0(R)  004255(R)  0042B0(R)  0042C0(R)  004541(R)  00455D(R)  004575(R)  00458F(R)  004598(R)  0045A1(R)  00480A(R)  004887(R)  0048B6(R)  004F13(R)  004F4F(R)  005275(R)  005416(R)  005887(R)  008011(R)  0082D0(R)  0082F9(R)  0083BA(R)  008722(R)  00887F(R)  008BEF(R)  008C50(R)  009667(R)  0097D9(R)  009EB5(R)  00A713(R)  00A994(R)  00AA4A(R)  00C533(R)  00C558(R)  00C6AD(R)  00C8D9(R)  00C968(R)  00CA52(R)  013335(R)  01337B(R)  0135CD(R)  0138EA(R)  01F4C2(R)  01F54F(R)  023F39(R)  02407F(R)  0244F5(R)  02457B(R)  0247CB(R)  024813(R)  024843(R)  024852(R)  0248A0(R)  0248F9(R)  0249DF(R)  0261F3(R)  026234(R)  026256(R)  026300(R)  0263C0(R)  0263DE(R)  02668B(R)  0266D5(R)  02802E(R)  02849D(R)  0288A1(R)  0288C8(R)  028922(R)  0289A2(R)  028B8F(R)  028E3D(R)  028F55(R)  02B7E5(W)  02B984(W)  02C123(R)  02C300(R)  02C8F9(R)  02CA81(R)  02CAC7(R)  02D174(R)  02DFDE(R)  02E493(R)  037833(R)  0378CA(R)  037B29(R)  037B73(R)  037BA3(R)  0380E9(R)  03816D(R)  03BC40(R)  03C910(R)  03C915(R)  03D07E(R)  03D0AF(R)  03D4AB(R)  03E03F(Wi) 03E485(R)  03E83C(Wx) 03E9A4(R)  03EA1B(R)  03EA4D(R)  03EAA5(R)  03EAEA(R)  03EB62(R)  03EBBA(R)  03F8FA(R)  



; area/stage/level index
; middle bits of 24-bit
; 0-xx
ram_blk_id_lo                           = $0033 ; 000031(R)  00052A(R)  000DD4(R)  000FA2(W)  000FCA(R)  00120B(R)  001211(R)  001219(R)  001232(R)  00146D(R)  001473(W)  001722(R)  002125(W)  00299B(W)  003588(W)  00413D(R)  004153(R)  008728(R)  008885(R)  009EC3(R)  00AA50(R)  013343(R)  013389(R)  0138F0(R)  01F4D0(R)  01F55D(R)  02456D(R)  024849(R)  024858(R)  0248A6(R)  0249ED(R)  026F0F(R)  026F72(R)  026F9E(R)  02705E(R)  027098(R)  02803C(R)  0284A3(R)  028E47(R)  028F5B(R)  029037(R)  029060(R)  02B7E7(W)  02B98B(W)  02C129(R)  02C306(R)  02C900(R)  02C9C8(R)  02CDB6(R)  02E499(R)  0378D4(R)  037B77(R)  0380EF(R)  03BC4C(R)  03C925(R)  03C94D(R)  03D08E(R)  03D0D0(R)  03D0FA(R)  03D490(W)  03D4B9(R)  03E03F(Wi) 03E83C(Wx) 03EA5B(R)  03F700(W)  03F974(W)  



; area/stage/level index
; lowest bits of 24-bit (fractional)
ram_blk_id_fr                           = $0034 ; 000041(R)  000045(R)  000063(R)  000548(R)  000592(R)  001239(R)  001729(R)  00212A(W)  0029A0(W)  00358C(W)  009ED0(R)  013349(W)  013396(R)  0138F6(R)  01F4DC(R)  01F51B(W)  01F56A(R)  028049(R)  0284A9(R)  02B7E9(W)  02B995(W)  02CDC6(R)  02CDCE(R)  02D8E2(R)  037B7B(R)  0380F5(R)  03C931(R)  03C937(R)  03C941(R)  03C951(R)  03D09D(R)  03D0DC(R)  03D0E4(R)  03D0EE(R)  03D0FE(R)  03D421(R)  03D44B(W)  03D44F(W)  03D458(W)  03D46B(W)  03D49A(W)  03D4C6(R)  03E03F(Wi) 03E83C(Wx) 03EA68(R)  



; 
ram_lives                               = $0035 ; 000C2C(R)  000C34(W)  000E54(R)  0010C9(W)  03897E(R)  038984(R)  0389A3(W)  03E03F(Wi) 03E49B(R)  03E83C(Wx) 



; 
ram_score_0000xx                        = $0036 ; 000BFC(Ry) 000C02(Wy) 000D69(R)  000F95(W)  03E03F(Wi) 03E83C(Wx) 
ram_score_00xx00                        = $0037 ; 000BFC(Ry) 000C02(Wy) 000D5E(R)  000F97(W)  03E03F(Wi) 03E83C(Wx) 
ram_score_xx0000                        = $0038 ; 000BFC(Ry) 000C02(Wy) 000C16(R)  000D53(R)  000F99(W)  03E03F(Wi) 03E83C(Wx) 



; bzk warning, this sometimes is 0039-003A range
ram_0039                                = $0039 ; 000E60(Ry) 00160E(Ry) 0023BF(Ry) 00423A(R)  0131CF(Ry) 02B7EF(Ry) 03E03F(Wi) 03E83C(Wx) 



; id of partner
; see con_player
ram_partner                             = $003A ; 000E60(Ry) 00160E(Ry) 0020F0(R)  0021F4(R)  002299(R)  0023BF(Ry) 002410(R)  00421D(R)  004236(R)  00456F(R)  004784(R)  0047AA(W)  0047E1(W)  0047EB(R)  005AD1(R)  00706F(W)  007719(R)  007778(W)  0131CF(Ry) 01320E(R)  013223(R)  0284E0(R)  02B1BA(R)  03E03F(Wi) 03E83C(Wx) 



; id of current player, swaps ram_partner id or back to 00 (Trevor)
; see con_player
ram_player                              = $003B ; 000E5B(R)  000E74(R)  000EA2(R)  001607(R)  00160B(W)  0023BD(R)  002414(R)  00B052(R)  00B06F(R)  00B31F(R)  00B363(R)  0131CA(R)  013214(R)  01322B(R)  02B7ED(R)  02E17B(R)  02E18F(R)  02E1A2(R)  02E257(R)  02E26E(R)  02E3AA(R)  02E3B3(R)  02E3E2(R)  02E3F8(R)  0324E1(R)  03BA07(R)  03BA15(R)  03BA7B(R)  03E03F(Wi) 03E83C(Wx) 



; 
ram_hp_player                           = $003C ; 000CBE(R)  0010D6(W)  0040FA(R)  00410D(R)  004116(W)  004121(W)  00B349(R)  00B353(W)  038290(R)  03829A(W)  038333(R)  0383A3(R)  0383AE(W)  03840A(W)  03A65F(R)  03E03F(Wi) 03E83C(Wx) 



; 
ram_hp_boss                             = $003D ; 000CD5(R)  0010DA(W)  003583(W)  00C670(W)  00C6D3(W)  00C71C(W)  00CA94(R)  00CC12(R)  00DAF2(W)  024912(W)  024926(R)  02492F(W)  0265B7(R)  0269A2(R)  026A45(R)  026A4E(W)  026CD0(R)  026FA4(R)  026FAC(W)  027003(R)  02706B(R)  0273CD(R)  027597(R)  0275E0(R)  027682(W)  0278B9(R)  0279F0(W)  027A28(R)  027E38(W)  028F16(W)  029056(W)  02906B(W)  0290D1(W)  02910C(W)  02917B(W)  032627(R)  03E03F(Wi) 03E83C(Wx) 



; 
ram_extra_life_score                    = $003E ; 000C18(R)  000C1E(R)  000C28(W)  00109B(W)  03E03F(Wi) 03E83C(Wx) 



; a for ram_irq_handler
ram_next_irq_handler                    = $003F ; 001550(W)  001678(W)  001694(W)  00357D(W)  003A9E(W)  003B77(W)  0043C6(W)  006295(R)  006916(W)  006944(W)  00CC6B(W)  00D393(W)  0131F6(R)  025F88(W)  025F94(W)  03E03F(Wi) 03E120(R)  03E5D1(W)  03E684(W)  03E83C(Wx) 03F94B(W)  



; a copy of 5204 register value
ram_for_5204                            = $0040 ; 0016A0(W)  006948(W)  00BA2F(W)  00BAD8(W)  013202(R)  03E03F(Wi) 03E116(R)  03E5D7(W)  03E67E(W)  03E83C(Wx) 



; for 5203 register
ram_0041_scanline                       = $0041 ; 001698(W)  00BA22(W)  00BA28(R)  00BADC(W)  0131FA(R)  03E03F(Wi) 03E11B(R)  03E5D3(W)  03E83C(Wx) 



; something to do with IRQ
ram_0042                                = $0042 ; 00169C(W)  0035FF(W)  0062A2(W)  00BA2A(W)  00BAE0(W)  00DF3C(W)  0131FE(R)  03E03F(Wi) 03E124(R)  03E5CF(W)  03E83C(Wx) 



; for 5203 register
ram_scanline                            = $0043 ; 006126(W)  006159(R)  006169(R)  00616B(W)  006199(W)  0061A0(R)  0061B9(R)  0061BB(W)  0061CF(R)  00622E(R)  006254(W)  006266(R)  006399(W)  0063AB(R)  0063B0(R)  0063B5(W)  0063D1(R)  0063EA(R)  0063F2(R)  0063F7(W)  03E03F(Wi) 03E83C(Wx) 



; 
ram_0044_temp                           = $0044 ; 005FAB(W)  006076(W)  006079(W)  0060B0(W)  0060B6(R)  03E03F(Wi) 03E140(W)  03E83C(Wx) 
    ram_0044_t000_data                      = ram_0044_temp ; 2 addresses 0044-0045
    ram_0044_t001_irq_handler_jmp           = ram_0044_temp ; 2 addresses 0044-0045
    ram_0044_t002_garbage_loop_cnt          = ram_0044_temp ; 
    ram_0044_t003                           = ram_0044_temp ; 
    ram_0044_t004_garbage_loop_cnt          = ram_0044_temp ; 



; used only in pair with ram_0044_temp
; ram_0045                              = $0045 ; 005FB0(W)  03E03F(Wi) 03E145(W)  03E83C(Wx) 



; 
ram_chr_banks                           = $0046 ; for common links



; 5120
; 5121
; 5122
; 5123
; 5124/5128
;      5129
; 5126/512A
; 5127/512B
; 5125
ram_chr_bank_5120                       = $0046 ; 000017(W)  0021F2(W)  00664B(W)  00685F(W)  0071DC(Wx) 02B17E(W)  03E03F(Wi) 03E362(R)  03E3DF(W)  03E4D9(W)  03E83C(Wx) 
ram_chr_bank_5121                       = $0047 ; 00001C(W)  0021FA(W)  00581B(W)  0059C6(W)  0059E7(W)  00664F(W)  006863(W)  0071DC(Wx) 02B182(W)  03E03F(Wi) 03E367(R)  03E3E2(W)  03E4DC(W)  03E83C(Wx) 
ram_chr_bank_5122                       = $0048 ; 000069(W)  0021FE(W)  00260B(Wy) 00575F(W)  00581F(W)  0059CA(W)  0059EB(W)  006653(W)  0071DC(Wx) 00C581(W)  00C7E0(W)  00C919(W)  026E92(W)  027998(W)  028F2F(W)  02B186(W)  02C2AE(R)  02C2C6(R)  02C2ED(R)  02C3A4(R)  02DAFF(R)  02DCA9(R)  032823(W)  03E03F(Wi) 03E352(R)  03E83C(Wx) 
ram_chr_bank_5123                       = $0049 ; 00006E(W)  002202(W)  00260B(Wy) 0043A5(W)  0056BB(W)  006657(W)  0069BE(W)  0071DC(Wx) 00C585(W)  00C7E4(W)  00C91E(W)  00DDBC(W)  026E96(W)  02799B(W)  027E0E(W)  028F34(W)  02B18A(W)  02C319(R)  02DE8B(R)  032794(W)  0327BC(W)  032827(W)  03E03F(Wi) 03E357(R)  03E83C(Wx) 
ram_chr_bank_5124_5128                  = $004A ; 0010DF(W)  0021E7(W)  00260B(Wy) 0043AC(W)  006201(R)  006506(W)  00653D(W)  006551(W)  00665B(W)  006855(W)  0071DC(Wx) 02B18E(W)  02B360(W)  02B448(W)  03E03F(Wi) 03E36D(R)  03E3E6(W)  03E4E0(W)  03E83C(Wx) 
ram_chr_bank______5129                  = $004B ; 00004A(W)  000400(R)  0021E9(W)  00260B(Wy) 005FC3(W)  00600B(W)  006015(W)  0061FD(R)  00638A(W)  006508(W)  006542(W)  006555(W)  00665F(W)  006857(W)  0071DC(Wx) 00C90F(W)  00DE39(W)  027992(W)  02B192(W)  02B364(W)  02B44C(W)  03E03F(Wi) 03E37D(R)  03E3EA(W)  03E4E4(W)  03E83C(Wx) 
ram_chr_bank_5126_512A                  = $004C ; 00004F(W)  000407(R)  0021EB(W)  00260B(Wy) 00600E(W)  006018(W)  0061FF(R)  00650A(W)  006547(W)  006559(W)  006663(W)  006859(W)  0071DC(Wx) 027995(W)  02B196(W)  02B368(W)  02B44F(W)  02B727(W)  03E03F(Wi) 03E382(R)  03E3ED(W)  03E83C(Wx) 
ram_chr_bank_5127_512B                  = $004D ; 0010E3(W)  0021ED(W)  00260B(Wy) 0043B0(W)  00487C(W)  00620C(R)  00650C(W)  00654C(W)  00655D(W)  006667(W)  00685B(W)  0071DC(Wx) 02B19A(W)  02B36C(W)  02B452(W)  02B84B(W)  03E03F(Wi) 03E375(R)  03E3F0(W)  03E4E8(W)  03E83C(Wx) 
ram_chr_bank_5125_____                  = $004E ; 000054(W)  00638C(W)  03E03F(Wi) 03E35C(R)  03E83C(Wx) 



; free address
; ram_004F                              = $004F ; 03E03F(Wi) 03E83C(Wx) 



; 
ram_0050_temp                           = $0050 ; 03CC7E(R)  03CE4C(R)  03CFF8(R)  03D06A(R)  03D4CF(W)  03E03F(Wi) 03E83C(Wx) 
    ram_0050_t000_data                      = ram_0050_temp ; 2 addresses 0050-0051



; used only in pair with ram_0050_temp
; ram_0051                              = $0051 ; 03CC85(R)  03CE53(R)  03CFFE(R)  03D071(R)  03D4D4(W)  03E03F(Wi) 03E83C(Wx) 



; 2 pairs (0052 + 0054 and 0053 + 0055)
ram_0052                                = $0052 ; 03CB2E(Rx) 03CFFA(Wx) 03D002(Wx) 03D06C(Wy) 03D1C3(Rx) 03D31C(Rx) 03D321(Wx) 03E03F(Wi) 03E83C(Wx) 
ram_0053                                = $0053 ; 03CB32(Rx) 03D000(Wx) 03D006(Wx) 03D073(Wy) 03D1C7(Rx) 03D325(Wx) 03E03F(Wi) 03E83C(Wx) 
; ram_0054                              = $0054 ; 03CB2E(Rx) 03CFFA(Wx) 03D002(Wx) 03D06C(Wy) 03D1C3(Rx) 03D31C(Rx) 03D321(Wx) 03E03F(Wi) 03E83C(Wx) 
; ram_0055                              = $0055 ; 03CB32(Rx) 03D000(Wx) 03D073(Wy) 03D1C7(Rx) 03D325(Wx) 03E03F(Wi) 03E83C(Wx) 



; camera position, can be X or Y, depending on scroll
ram_cam_pos_lo                          = $0056 ; 001702(R)  002ACB(W)  00343F(W)  003862(W)  003B40(R)  003D14(R)  0082E9(R)  0084EE(R)  008759(R)  008787(R)  0088B7(R)  0088BC(R)  008F02(R)  009233(R)  0092B1(R)  00970E(R)  009B40(R)  009B7D(R)  009D82(R)  009E54(R)  009F15(R)  009FE2(R)  00A026(R)  00A7D1(R)  00AB74(R)  00AD2F(R)  00AD6C(R)  00AD7C(R)  00AE92(R)  00B393(R)  00B428(R)  0133B1(W)  01F4BE(R)  01F585(R)  01F615(R)  02406D(R)  0240BE(R)  024565(R)  028012(R)  028025(R)  02806C(R)  0280AA(R)  0280B2(R)  0280BA(R)  0280C2(R)  0280C9(R)  0280CF(R)  0280EA(R)  028222(R)  028272(R)  0282F5(R)  028D76(R)  02B9A4(W)  02CBB2(R)  02CBB7(R)  0377AB(R)  037884(R)  037B55(R)  0380C9(R)  038173(R)  0385A5(R)  0385B6(R)  0385C3(W)  038646(R)  03865B(R)  038669(R)  038682(W)  03869A(R)  0386CD(R)  0386D9(R)  038701(R)  038717(R)  038796(R)  038A23(R)  038A28(R)  038A91(R)  038A96(R)  038C3F(R)  038D4D(R)  039A83(R)  039A91(R)  039B1A(R)  039B1F(R)  039E57(R)  039E5C(R)  03A573(R)  03A578(R)  03C989(R)  03C9B5(R)  03C9BF(R)  03CA51(R)  03CA5F(R)  03CA6C(R)  03CA70(W)  03CA79(W)  03CA8A(R)  03CA92(W)  03CA99(W)  03CAA9(R)  03CAAD(W)  03CAB8(W)  03CAC7(R)  03CB02(R)  03CFBD(R)  03D01E(R)  03D12B(W)  03D131(R)  03D157(R)  03D335(R)  03D340(R)  03D358(R)  03D35D(W)  03D369(W)  03D377(W)  03D37B(R)  03D462(W)  03D498(W)  03E03F(Wi) 03E0A8(R)  03E0E1(R)  03E83C(Wx) 03E959(R)  03E9F0(R)  03EB3D(R)  03F6F9(W)  03F9F2(R)  03FB3E(W)  03FB79(R)  03FB7E(W)  03FB87(R)  03FB8C(W)  03FC7E(R)  03FCBE(R)  03FCCB(R)  03FD12(R)  
ram_cam_pos_hi                          = $0057 ; 0013E5(R)  0016FB(R)  002ACD(W)  003443(W)  00385D(W)  003B46(R)  003D18(R)  006096(R)  0063C5(R)  0082F1(R)  0084F4(R)  008755(R)  00878D(R)  008F08(R)  009239(R)  0092A6(R)  0092B8(R)  009714(R)  009B1A(R)  009B2E(R)  009B85(R)  009D88(R)  009D8F(R)  009DC2(R)  009E5A(R)  009F1B(R)  009F22(R)  009F55(R)  009FE8(R)  00A02C(R)  00A7D8(R)  00AD36(R)  00AD65(R)  00AD73(R)  00AE9A(R)  00B42E(R)  00C97C(R)  0133AD(W)  01F4E3(R)  01F578(R)  01F619(R)  024588(R)  028017(R)  028021(R)  028228(R)  028231(R)  0282FB(R)  028306(R)  02B99C(W)  0377A0(R)  037B62(R)  0380CB(R)  03859C(R)  0385B0(W)  0385C1(W)  03865D(R)  038670(R)  038680(W)  03868A(R)  0386A1(R)  0386CB(R)  0386D3(R)  0386FD(R)  038719(R)  038764(R)  038798(R)  038C43(R)  038D54(R)  039A7D(R)  039A93(R)  03C983(R)  03C9B3(R)  03C9B9(R)  03CA7B(W)  03CA86(R)  03CA9B(W)  03CAB1(R)  03CABA(W)  03CDB8(R)  03D11B(W)  03D129(W)  03D135(R)  03D14B(R)  03D153(R)  03D35F(R)  03D363(W)  03D36B(W)  03D441(R)  03D446(W)  03D45E(W)  03D494(W)  03D49F(R)  03E03F(Wi) 03E0AC(R)  03E0E5(R)  03E83C(Wx) 03E956(R)  03E9F4(R)  03EB41(R)  03F6F5(W)  03FA74(R)  03FB36(R)  03FB49(W)  03FB80(R)  03FB84(W)  03FB8E(R)  03FB92(W)  03FC85(R)  03FD19(R)  



; 
ram_0058                                = $0058 ; 0385C5(W)  0385CA(W)  03CA66(R)  03CA6A(W)  03CA9D(W)  03CAA3(R)  03CAA7(W)  03D12F(W)  03D350(R)  03D356(W)  03D36D(W)  03D379(W)  03D464(W)  03E03F(Wi) 03E83C(Wx) 03FB40(W)  



; 
ram_blk_section                         = $0059 ; for common links



; to keep track of what should be drawing when you move within blk
ram_section_behind                      = $0059 ; 003AD2(R)  008A3E(Ry) 02B667(R)  03CAE9(Ry) 03CAEE(Wy) 03CAF6(Ry) 03CAF9(Wy) 03CB0D(R)  03CB12(W)  03CB25(Ry) 03CB71(Ry) 03CB99(Ry) 03CD97(R)  03CFC6(R)  03CFED(Ry) 03D031(Rx) 03D040(Rx) 03D057(Rx) 03D143(W)  03D167(W)  03D1AF(Ry) 03D1DE(Ry) 03D1FC(Ry) 03D214(Ry) 03D2CA(Ry) 03D2E1(Ry) 03D389(W)  03D38F(W)  03E03F(Wi) 03E83C(Wx) 
ram_section_ahead                       = $005A ; 008A3E(Ry) 02B66C(W)  03CADC(R)  03CAE1(W)  03CAE9(Ry) 03CAEE(Wy) 03CAF6(Ry) 03CAF9(Wy) 03CB25(Ry) 03CB71(Ry) 03CB99(Ry) 03CC5A(R)  03CC8F(R)  03CCA4(R)  03CCB1(R)  03CD21(R)  03CD62(W)  03CD84(W)  03CD99(W)  03CDE7(R)  03CE16(R)  03CE24(R)  03CE30(R)  03CE61(R)  03CEE6(R)  03CEF0(R)  03CF37(W)  03CF5A(Ry) 03CFD0(R)  03CFED(Ry) 03D040(Rx) 03D057(Rx) 03D148(W)  03D16C(W)  03D1AF(Ry) 03D1DE(Ry) 03D1FC(Ry) 03D214(Ry) 03D2CA(Ry) 03D2E1(Ry) 03D38B(W)  03D391(W)  03E03F(Wi) 03E83C(Wx) 03F9C7(W)  03F9C9(W)  



; 
ram_blk_drawing                         = $005B ; for common links



; to keep track of how much has been drawn when you move from one ram_blk_section to another
ram_drawing_behind                      = $005B ; 008A43(Ry) 03CAF1(Ry) 03CB08(R)  03CB16(W)  03CB3A(Ry) 03CB41(Ry) 03CB4B(Ry) 03CB56(Ry) 03CB7F(Ry) 03CFCC(W)  03CFCE(W)  03D029(W)  03D1B8(Ry) 03D1F1(Ry) 03D20E(Ry) 03D22B(Ry) 03D2C6(Ry) 03D308(Ry) 03D317(Wx) 03D395(W)  03E03F(Wi) 03E83C(Wx) 
ram_drawing_ahead                       = $005C ; 008A43(Ry) 03CAD5(R)  03CAE5(W)  03CAF1(Ry) 03CB3A(Ry) 03CB41(Ry) 03CB4B(Ry) 03CB56(Ry) 03CB7F(Ry) 03CDAA(W)  03CDCA(W)  03CDDA(W)  03CE0C(R)  03CE3B(R)  03CE5C(R)  03CE75(R)  03CEE4(R)  03CF12(R)  03CF23(W)  03CF25(R)  03CF53(Ry) 03CFD9(W)  03D02B(W)  03D1B8(Ry) 03D1F1(Ry) 03D20E(Ry) 03D22B(Ry) 03D2C6(Ry) 03D308(Ry) 03D317(Wx) 03D397(W)  03E03F(Wi) 03E83C(Wx) 03F9C1(R)  



; pointer to the beginning of the 4x4 blocks data
ram_tile_blocks_data                    = $005D ; 03CF53(Ry) 03CF91(R)  03D0BE(W)  03E03F(Wi) 03E83C(Wx) 
; ram_005E                              = $005E ; 03CF97(R)  03D0C3(W)  03E03F(Wi) 03E83C(Wx) 



; 
ram_005F_temp                           = $005F ; 03D0C8(W)  03E03F(Wi) 03E83C(Wx) 
    ram_005F_t000_nametable_attr_data       = ram_005F_temp ; 2 addresses 005F-0060



; used only in pair with ram_005F_temp
; ram_0060                              = $0060 ; 03D0CD(W)  03E03F(Wi) 03E83C(Wx) 



; for 2006 register
ram_ppu_address_lo                      = $0061 ; 000CAD(W)  000CBC(W)  000CD3(W)  000D37(W)  000D40(W)  000D42(W)  000D51(W)  000D5A(W)  000D5C(W)  000D65(W)  000D67(W)  000DBA(W)  000DCF(W)  000E52(W)  0013C8(W)  0013D1(R)  0013D3(W)  00140E(W)  002D61(W)  003665(W)  00394B(W)  0039AD(W)  0039DF(R)  0039E1(W)  003C7C(W)  003C85(R)  003C8A(W)  003D12(W)  003D58(R)  003D5A(W)  003D75(W)  003DB2(R)  003DB8(W)  003DBA(R)  003DC5(R)  003DCA(W)  00B3A9(W)  00B3B8(R)  00B3BA(W)  00B3DB(R)  00B447(W)  00B44F(R)  00B451(W)  00B476(R)  00B478(W)  00C97A(W)  00C9B9(W)  00C9BB(R)  027D9F(W)  02B8D4(W)  02B9FD(W)  032252(W)  03227A(W)  03CB6D(W)  03CB77(W)  03CB8A(R)  03CC8D(W)  03CC92(W)  03CE39(W)  03CE3F(R)  03CE44(W)  03D1ED(W)  03D1F5(W)  03D206(R)  03D208(W)  03D239(R)  03D23E(W)  03D264(R)  03D2B5(R)  03D2BA(W)  03D2D3(W)  03D2F4(R)  03D4EA(W)  03D500(R)  03D502(W)  03D59D(W)  03D5B6(W)  03E03F(Wi) 03E83C(Wx) 03E8AA(Rx) 03E8AC(Wx) 03E8DE(R)  03E8F5(W)  03FA58(W)  03FA60(R)  03FA62(W)  03FA89(R)  03FB15(W)  
ram_ppu_address_hi                      = $0062 ; 000CA9(W)  000CB8(W)  000CCF(W)  000D33(W)  000D4D(W)  000DB6(W)  000DCB(W)  000E4E(W)  0013B4(W)  0013C1(W)  0013C4(W)  0013F3(R)  0013F5(W)  00140A(W)  002D5C(W)  003660(W)  003946(W)  0039A8(W)  0039E5(W)  003CA3(W)  003D51(W)  003D6E(W)  003DCC(R)  003DD0(W)  00B37B(W)  00B3A4(W)  00B3A7(W)  00B3C1(R)  00B3C6(W)  00B3E3(R)  00B436(W)  00B442(W)  00B445(W)  00B461(R)  00B463(W)  00C989(W)  027D8F(W)  027D97(W)  027DA1(R)  027DA5(W)  02B8D8(W)  02B9F8(W)  032256(W)  03227E(W)  03CC99(W)  03CE2E(W)  03CE46(R)  03CE4A(W)  03D1FA(W)  03D20C(W)  03D26A(R)  03D2BE(W)  03D2F0(W)  03D2FA(R)  03D4E5(W)  03D599(W)  03D5B2(W)  03E03F(Wi) 03E83C(Wx) 03E8B0(Wx) 03E8E4(R)  03E8F9(W)  03FA44(W)  03FA51(W)  03FA54(W)  03FA82(R)  03FA84(W)  03FB1A(W)  



; index for 4x4 tiles data
ram_0063_block_id                       = $0063 ; 03CC22(R)  03CD3C(R)  03CF0E(R)  03CF82(W)  03D300(R)  03D550(R)  03E03F(Wi) 03E83C(Wx) 



; 
ram_0064_timer                          = $0064 ; 02B665(W)  03CD64(W)  03CD88(W)  03CD95(W)  03CDA2(R)  03CF39(W)  03D3A2(R)  03D3BE(W)  03D4FB(R)  03D504(R)  03D567(W)  03D569(R)  03E03F(Wi) 03E83C(Wx) 03F480(W)  



; movement by X axis
; 00 = camera is moving to the left
; 01 = camera is moving to the right
; 02 = camera is not moving (fixed in one place, like at the end of the blk)
ram_camera_movement_direction           = $0065 ; 0013DB(R)  0093D6(R)  009EEA(R)  009F8F(R)  009FBE(R)  01F51D(W)  0280DE(R)  038709(W)  03871F(W)  03876F(W)  0387A4(W)  038A9F(W)  03C9A7(W)  03C9AC(W)  03CA18(W)  03CA55(R)  03CAD1(R)  03CAE7(R)  03CB23(R)  03CB38(R)  03CB6F(R)  03CD74(R)  03CDAC(R)  03D185(R)  03D18F(R)  03D339(R)  03D385(R)  03E03F(Wi) 03E83C(Wx) 03F9BD(R)  03F9CE(R)  03F9D3(R)  03FA32(R)  03FA5A(R)  03FA6A(R)  03FAD9(R)  



; 
ram_0066                                = $0066 ; 03CACB(R)  03CACF(W)  03CFC1(W)  03D022(W)  03D37F(R)  03D383(W)  03E03F(Wi) 03E83C(Wx) 



; FF = 
; 00 = 
; 01 = 
ram_0067                                = $0067 ; 03D016(W)  03D19C(R)  03D1A0(W)  03D39A(W)  03E03F(Wi) 03E83C(Wx) 



; written at 0x03D0A1
; 00 = horisontal
; 80 = vertical + scroll up
; 81 = vertical + scroll down
; 82 = vertical + auto scroll up
; 83 = vertical + auto scroll down
; 84 = vertical + fast auto scroll up
ram_blk_scroll_type                     = $0068 ; 000D98(R)  000E97(R)  000EC3(R)  002AC9(W)  0086AB(R)  008751(R)  008780(R)  0088A2(R)  009219(R)  009910(R)  00B016(R)  00B09F(R)  00B41D(R)  0131DF(R)  013926(R)  0139A0(R)  01F60A(R)  0283E6(R)  02885A(R)  028A49(R)  02C6DB(R)  02C712(R)  02CBA1(R)  0377D1(R)  038580(R)  038598(R)  0385D3(R)  038652(R)  0386C5(R)  0386F0(R)  03870C(R)  038722(R)  038754(R)  038785(R)  038A12(R)  038A82(R)  038B71(R)  038BEE(R)  039A2D(R)  039A45(R)  039A55(R)  039B08(R)  039E52(R)  03A56E(R)  03B953(R)  03B961(R)  03C96E(R)  03C991(R)  03CFDF(R)  03D07A(R)  03D0A1(W)  03D108(R)  03D121(R)  03D43D(R)  03E03F(Wi) 03E83C(Wx) 03F435(R)  03FC30(R)  03FCEE(R)  



; 
ram_data_stairs                         = $0069 ; 002AD7(W)  01F570(W)  03E03F(Wi) 03E83C(Wx) 
; ram_006A                              = $006A ; 002ADC(W)  01F575(W)  03E03F(Wi) 03E83C(Wx) 



; subscript for ram_002A_script
ram_006B_subscript                      = $006B ; 000B53(R)  000B76(R)  001247(W)  001298(R)  0012E2(W)  001322(W)  001375(W)  001429(W)  00144F(W)  00147A(R)  00149B(R)  0014C8(W)  0014DC(W)  0014FE(W)  001541(W)  00155D(W)  0015F2(W)  00162F(W)  00166D(W)  00167E(W)  0016AC(W)  001DEB(R)  001E59(W)  001E84(W)  001F08(W)  001F8E(W)  001F9A(W)  001FB5(W)  002110(W)  0033FA(R)  00342C(W)  00343A(W)  0034A7(W)  0034F8(W)  00350E(W)  003519(W)  003529(W)  003543(W)  00356E(W)  003A56(R)  003A66(W)  003A88(W)  003B2A(R)  003B79(W)  003B87(W)  003D02(W)  004175(W)  00417E(W)  007004(R)  007029(R)  007064(R)  0131EC(W)  01F538(W)  02B660(W)  02B70F(R)  02B7FE(R)  02B85A(W)  02B870(W)  02B87B(W)  02B8AD(W)  02B8CF(W)  02B8FF(W)  02B924(W)  02B933(W)  02B93A(W)  02B968(W)  0321C4(W)  0321D9(R)  0321E5(W)  0321EE(R)  0321FC(W)  032204(W)  03819C(W)  039A6B(W)  03B8AF(W)  03E03F(Wi) 03E432(R)  03E452(R)  03E45D(W)  03E4FB(W)  03E511(R)  03E576(R)  03E57A(W)  03E83C(Wx) 03F4FC(W)  03F509(W)  03F6E1(W)  03F6F1(W)  03F71E(W)  03F783(W)  03F7DC(W)  03F846(R)  03F871(W)  03F893(W)  03F8AB(W)  03F8DF(W)  03F910(W)  03F94D(W)  03F95B(R)  03F9AA(W)  03F9CC(W)  03F9F8(W)  03F9FB(W)  03FAB6(W)  03FAD6(W)  03FB03(W)  



; 
ram_006C_object_index                   = $006C ; 009D15(R)  009D63(R)  009D6B(W)  009DFE(R)  009E03(W)  009E05(R)  009E37(R)  009E3F(W)  009E82(R)  009E87(W)  009E89(R)  009E93(R)  009F8D(W)  00A04C(W)  00A8F4(R)  00AA86(R)  00AAAD(R)  00AB40(R)  00AE68(R)  00AE88(R)  00AFBD(W)  00B266(R)  00B297(R)  00B32D(R)  00B3AD(R)  00B3F5(R)  00B4CB(R)  00B4EF(R)  00C9CE(R)  00DA27(R)  00DA38(R)  00DACC(R)  00DADE(R)  00DD03(R)  00DDF4(R)  00DE18(R)  00DE2B(R)  00DE46(R)  00DEDD(R)  00DF2D(R)  01373D(R)  0137A9(R)  013864(R)  017C18(R)  017C37(R)  017CE8(R)  017DE4(R)  02455F(R)  0273AB(R)  028501(W)  02850A(R)  0285EE(R)  028618(R)  028626(R)  028633(R)  028653(R)  028684(R)  0286BB(R)  028782(R)  0287FE(R)  028A94(R)  028AA5(R)  028BDD(R)  028BED(R)  028BF4(R)  028C3C(R)  028C4E(R)  028C59(R)  028D5F(R)  028D66(R)  028EBD(R)  028EC9(R)  028ECE(R)  028F1E(R)  0290AA(R)  0290E7(R)  02914C(R)  0291AD(R)  029221(R)  029274(R)  02C16F(R)  02C4C0(R)  02C4D3(R)  02C58B(R)  02C5AA(R)  02C5BD(R)  02C5C2(R)  02C7DD(R)  02C7EC(R)  02C804(R)  02C866(R)  02C886(R)  02C8B4(R)  02C914(R)  02C951(R)  02C95A(R)  02C980(R)  02C99E(R)  02C9B5(R)  02CB4C(R)  02CB5C(R)  02CB9E(R)  02CC20(R)  02CC6D(R)  02CCA7(R)  02CCC8(R)  02CD13(R)  02CD1D(R)  02CD67(R)  02CD6C(R)  02CDA6(R)  02CE19(R)  02CE1C(R)  02CF9F(R)  02D012(R)  02D01E(R)  02D02A(R)  02D032(R)  02D098(R)  02D0ED(R)  02D103(R)  02D18F(R)  02D194(R)  02D1C2(R)  02D1CB(R)  02D207(R)  02D25D(R)  02D27A(R)  02D28A(R)  02D2B2(R)  02D2BE(R)  02D2CC(R)  02D2E6(R)  02D2EB(R)  02D335(R)  02D33E(R)  02D440(R)  02D4ED(R)  02D565(R)  02D56D(R)  02D7ED(R)  02D978(R)  02D9AD(R)  02D9B6(R)  02D9C7(R)  02D9D0(R)  02D9E5(R)  02D9FE(R)  02DA4C(R)  02DB49(R)  02DB90(R)  02DBE0(R)  02DC54(R)  02DE80(R)  02DF47(R)  02DF51(R)  02DF7B(R)  02DF85(R)  02E08C(R)  02E0DB(R)  02E0E3(R)  02E1C2(R)  02E1FC(R)  02E21C(R)  02E24D(R)  02F4B5(R)  02F5D9(R)  02F642(R)  02F746(R)  02FA1C(R)  02FA41(R)  032455(R)  0324EF(R)  032525(R)  032572(R)  03259D(R)  0325D1(R)  03263A(R)  03267E(R)  0326AF(R)  032712(R)  03273B(R)  03276E(R)  03277F(R)  032948(R)  032959(R)  03295D(R)  0329D6(R)  03E03F(Wi) 03E83C(Wx) 03FE03(W)  03FE1E(R)  03FE54(R)  



; handler at 0x03E137
; see con_irq
ram_irq_handler                         = $006D ; 00357F(W)  00602E(W)  006128(W)  006147(W)  006175(W)  00619B(W)  0061CA(W)  0061F3(W)  006256(W)  00627F(W)  0062AC(W)  0062FD(W)  00639B(W)  0063DF(W)  0063F9(W)  006412(W)  00643C(W)  006463(W)  0064D0(W)  0064F1(W)  0065AB(W)  0065DD(W)  0065F0(W)  03E03F(Wi) 03E122(W)  03E137(R)  03E67C(W)  03E83C(Wx) 



; camera speed, can be X or Y, depending on scroll
ram_006E_cam_speed                      = $006E ; 00B0AF(R)  00B0BB(R)  00B146(R)  00B14D(R)  00B152(R)  01391F(R)  01392E(R)  01394A(R)  013979(R)  013993(R)  0139AE(R)  02407D(W)  02809A(R)  0280A4(R)  0283DF(R)  0283EE(R)  028402(R)  028856(R)  02885E(R)  02C6E3(R)  03858B(R)  038593(R)  03B95B(R)  03B969(R)  03B973(R)  03CA61(W)  03CB04(W)  03D345(W)  03E03F(Wi) 03E83C(Wx) 



; a copy of ram_cam_pos_lo
ram_copy_cam_pos_lo                     = $006F ; 00604C(R)  0060BE(R)  0060F0(R)  00618E(R)  0061B2(R)  0061BF(W)  0061C2(W)  0061DC(R)  00623B(R)  03E03F(Wi) 03E0AA(W)  03E0E3(W)  03E83C(Wx) 



; a copy of ram_cam_pos_hi
ram_copy_cam_pos_hi                     = $0070 ; 006038(R)  0060B2(R)  0060F8(R)  0061C8(W)  0061DE(R)  00623D(R)  03E03F(Wi) 03E0AE(W)  03E0E7(W)  03E83C(Wx) 



; the only write is at 0x03D0AD
; values 00-05
ram_0071_blk_config_cam_pos_hi          = $0071 ; 0385A0(R)  0385AE(R)  03868C(R)  0386A4(R)  0386D5(R)  0386FB(R)  038762(R)  039A7F(R)  03C985(R)  03C9BB(R)  03CA84(R)  03CD78(R)  03CDB0(R)  03D0AD(W)  03D119(R)  03D14F(R)  03D16E(R)  03D17D(R)  03D371(R)  03E03F(Wi) 03E83C(Wx) 03FB47(R)  



; read at 0x03E2FC
; 00 = 
; 01 = 
; 02 = 
; 03 = 
ram_0072_chr_banks_config               = $0072 ; 003527(W)  0043C2(W)  02B1AD(W)  03CFAA(W)  03D012(W)  03D5CB(W)  03E03F(Wi) 03E2FC(R)  03E680(W)  03E83C(Wx) 



; a copy of ram_blk_scroll_type
ram_prev_blk_scroll_type                = $0073 ; 0385D7(R)  03D07C(W)  03E03F(Wi) 03E83C(Wx) 



; 00 = 
; 01 = 
ram_0074_flag                           = $0074 ; 001107(W)  001208(W)  0033F5(W)  03BC39(R)  03BC3E(W)  03E03F(Wi) 03E83C(Wx) 03F7A6(R)  03F7AA(W)  



; some kind of flag, with each 4 bits being a separate flag/timer?
ram_0075                                = $0075 ; 001109(W)  00113B(W)  001206(W)  0013D5(R)  003C8C(R)  003D34(R)  006098(R)  0060AC(R)  008CF6(R)  009B1E(R)  009B32(R)  00B457(R)  00C980(R)  02B9A0(W)  0379CA(R)  03CDBE(R)  03CDD0(R)  03D1D0(R)  03D2D7(R)  03E03F(Wi) 03E09E(R)  03E0A6(W)  03E0D7(R)  03E83C(Wx) 03FA64(R)  03FB38(R)  03FB57(R)  03FB59(W)  



; 
ram_0076                                = $0076 ; 02801B(W)  028023(W)  028028(W)  02802B(W)  028080(W)  028101(R)  028106(W)  02810C(R)  028111(R)  0281F0(R)  02844C(R)  03E03F(Wi) 03E83C(Wx) 



; previous
ram_0077_prev_cam_pos_lo                = $0077 ; 028097(W)  0280D1(R)  0280D5(W)  028276(R)  02827A(W)  03E03F(Wi) 03E83C(Wx) 



; 00 = 
; 01 = 
ram_0078_flag                           = $0078 ; 001151(W)  003419(W)  003420(W)  00801C(R)  00C014(R)  00C52A(R)  00CDE7(R)  00D32B(R)  00D52F(R)  00D9E4(R)  024064(R)  024073(W)  024250(R)  02617F(R)  0264D9(R)  026941(R)  026BBF(R)  026EF9(R)  027507(R)  0325C7(R)  038750(R)  03E03F(Wi) 03E83C(Wx) 03F542(R)  03F7FB(R)  03FE0A(R)  



; 2 indexes to data or something
ram_0079                                = $0079 ; 02820D(W)  028214(R)  028264(R)  028268(W)  02826F(W)  028282(R)  028286(W)  0282E7(R)  03E03F(Wi) 03E83C(Wx) 
ram_007A                                = $007A ; 02820F(W)  028257(R)  02825B(W)  02826D(R)  03E03F(Wi) 03E83C(Wx) 



; 
ram_007B                                = $007B ; 03CDEE(R)  03D176(W)  03D1B4(R)  03E03F(Wi) 03E83C(Wx) 



; something to do with irq/scanlines
ram_007C_scanline                       = $007C ; 00155B(W)  006252(R)  006275(W)  03E03F(Wi) 03E83C(Wx) 



; 
ram_007D                                = $007D ; 0016F2(R)  001730(W)  00173C(W)  0017F1(R)  0017FB(R)  00181D(R)  003A92(R)  003CC2(R)  003DF0(R)  005FA2(R)  0060D5(R)  006113(R)  00621D(R)  006363(R)  00638E(R)  0063B7(R)  038555(R)  038BDB(R)  038C0C(R)  038C2E(R)  038D29(R)  038D5A(R)  03AA26(R)  03AA3F(R)  03AB47(R)  03ABC8(R)  03B979(R)  03CF45(R)  03CF5E(R)  03D4DA(R)  03D58E(R)  03E03F(Wi) 03E83C(Wx) 03F44E(R)  03F4B4(R)  03F9A2(R)  03FB5E(R)  



; game time, tens and ones
ram_blk_timer_0xx                       = $007E ; 000D44(R)  004097(R)  013355(W)  0389A6(R)  0389B3(R)  0389B9(R)  0389D4(W)  038A35(R)  03E03F(Wi) 03E83C(Wx) 



; game time, hundreds
ram_blk_timer_x00                       = $007F ; 000D39(R)  004099(R)  013351(W)  0389A8(R)  0389BF(R)  0389C5(R)  0389DC(W)  038A31(R)  03E03F(Wi) 03E83C(Wx) 



; invincibility
ram_invinc_timer                        = $0080 ; 001153(W)  0011C4(W)  027918(R)  02F245(R)  038120(R)  038124(W)  0381B3(R)  038204(W)  03823E(W)  0383BA(R)  038423(R)  038B03(W)  03E03F(Wi) 03E83C(Wx) 



; 
ram_0081                                = $0081 ; 0083FB(R)  00AC9F(R)  02F11F(R)  02F13D(W)  02F15A(W)  02F1CF(W)  02F1F5(W)  02F1F9(R)  02F206(W)  02F22E(R)  02F251(W)  02F906(R)  02F9B5(W)  02FA8B(W)  0380E6(W)  038137(R)  038282(R)  038A78(R)  038A80(W)  03E03F(Wi) 03E83C(Wx) 



; a copy of ram_plr_id, copied at 0x038114
; 00-03 = copy
; 04-07 = copy + 04
; 08 = 0x03A6C6
ram_copy_plr_id                         = $0082 ; 00B19F(R)  00D7C6(R)  02F387(R)  02F3CC(R)  02F424(R)  02F45F(R)  02F667(R)  02F67E(R)  02F782(R)  02F85C(R)  02F875(R)  02F898(R)  02F90C(R)  038114(W)  039179(R)  039217(R)  03926B(R)  0392AB(R)  0392DE(R)  039311(R)  03A6C8(W)  03AE68(R)  03E03F(Wi) 03E83C(Wx) 03FEBC(R)  



; 
ram_0083                                = $0083 ; 03E03F(Wi) 03E83C(Wx) 



; 
ram_hearts                              = $0084 ; 000C41(R)  000C47(R)  000C66(W)  000C69(R)  000C71(W)  000CAF(R)  0010D2(W)  0040D8(R)  0040DC(W)  0040DE(R)  0040E6(R)  0040EC(W)  02E2A0(R)  02E2B5(R)  02E2CA(R)  02E2DF(R)  03A663(R)  03A846(R)  03BAB4(R)  03E03F(Wi) 03E83C(Wx) 



; for player and partner
; handler at 0x03AEF0
ram_subweapon_id                        = $0085 ; 000EA4(Ry) 000EAA(Ry) 00B054(Ry) 00B365(Ry) 02E17D(Wy) 02E259(Ry) 02E3B5(Ry) 02E3FA(Ry) 03BA09(Ry) 03E03F(Wi) 03E83C(Wx) 
; ram_0086                              = $0086 ; 000EA4(Ry) 000EAA(Ry) 004800(W)  00B054(Ry) 00B365(Ry) 02E17D(Wy) 02E36D(R)  02E386(R)  02E3B5(Ry) 02E3FA(Ry) 03BA09(Ry) 03E03F(Wi) 03E83C(Wx) 



; shots multiplyer (II and III) for player and partner
ram_subweapon_multiplier                = $0087 ; 000E76(Ry) 00B071(Ry) 00B321(Wy) 02E191(Wy) 02E270(Wy) 02E3E4(Ry) 03BA25(Ry) 03E03F(Wi) 03E83C(Wx) 
; ram_0088                              = $0088 ; 000E76(Ry) 004802(W)  00B071(Ry) 00B321(Wy) 02E191(Wy) 03BA25(Ry) 03E03F(Wi) 03E83C(Wx) 



; 
ram_0089_scanline                       = $0089 ; 006029(R)  00610E(R)  006124(R)  006189(R)  006197(R)  00628D(R)  0062F8(R)  00635E(R)  006397(R)  006404(R)  006418(R)  006498(R)  0064A1(R)  006588(R)  00659C(R)  03E03F(Wi) 03E126(W)  03E83C(Wx) 



; free address
; ram_008A                              = $008A ; 03E03F(Wi) 03E83C(Wx) 



; 
ram_008B                                = $008B ; 038394(R)  0383D4(R)  038435(R)  0384AA(R)  0384B6(W)  0384C4(R)  0384CC(W)  0384DB(W)  03850B(W)  03874A(R)  038A74(R)  038A7C(W)  038D8F(R)  038E9B(R)  038F17(R)  03919E(R)  039816(R)  03A035(R)  03AAFC(R)  03E03F(Wi) 03E83C(Wx) 



; 
ram_008C_timer                          = $008C ; 02F640(W)  03E03F(Wi) 03E83C(Wx) 03FE9E(R)  03FEA2(W)  



; 00 = 
; 01 = 
ram_008D_flag                           = $008D ; 03D3C2(W)  03E03F(Wi) 03E83C(Wx) 03F43E(W)  03F448(W)  03F48F(R)  03F49E(W)  03F5A1(R)  03F75E(W)  03F78C(R)  03F8DD(W)  03F8E6(R)  



; for player and partner
ram_subweapon_power                     = $008E ; 02E1AA(Wy) 02E298(R)  03BCDB(R)  03E03F(Wi) 03E83C(Wx) 
; ram_008F                              = $008F ; 0047FE(W)  02E1AA(Wy) 02E2C2(R)  03BA7D(Ry) 03E03F(Wi) 03E83C(Wx) 



; +80 = ???
ram_0090                                = $0090 ; 02F26D(W)  02F939(W)  02F93C(R)  02F93E(W)  02F987(W)  02F98A(R)  02F98C(W)  02FA7C(W)  03802A(R)  038087(R)  038254(R)  03873F(R)  038744(R)  038FA5(R)  038FAC(R)  038FDF(R)  038FE6(R)  03904D(R)  039064(R)  039099(R)  0390E3(R)  0390FD(R)  039132(R)  03E03F(Wi) 03E83C(Wx) 



; 
ram_0091_object_index                   = $0091 ; 0083FF(R)  00ACA5(R)  02F260(W)  02F95D(W)  02F9AB(W)  02FA6F(W)  038502(R)  038527(R)  038532(R)  038ECA(R)  038F46(R)  0391E2(R)  039209(R)  039236(R)  039826(R)  039857(R)  03A046(R)  03A095(R)  03AB0B(R)  03E03F(Wi) 03E83C(Wx) 



; bzk optimize, useless address
ram_0092_useless                        = $0092 ; 03E03F(Wi) 03E83C(Wx) 03FDF7(W)  



; 00 = 
; 01 = 
; 02 = 
ram_0093_speed_config                   = $0093 ; 02F1E1(W)  02F8EB(W)  039045(R)  0390DB(R)  039354(R)  03E03F(Wi) 03E83C(Wx) 



; 
ram_0094_object_index                   = $0094 ; 02F8D0(W)  039081(R)  03909D(R)  03911A(R)  039136(R)  039373(R)  03E03F(Wi) 03E83C(Wx) 



; 00/01 index for speed tables
ram_0095_speed_config                   = $0095 ; 02F9AF(W)  038011(R)  039037(R)  0390CD(R)  03E03F(Wi) 03E83C(Wx) 



; 00 = 
; 01 = 
ram_0096_flag                           = $0096 ; 009D29(W)  009D32(W)  009D42(W)  009D4B(W)  009EE6(R)  009FBA(R)  03E03F(Wi) 03E83C(Wx) 



; free address
; ram_0097                              = $0097 ; 03E03F(Wi) 03E83C(Wx) 



; 
ram_0098_temp                           = $0098 ; 02804F(W)  03E03F(Wi) 03E83C(Wx) 
    ram_0098_t000_blk_spawner_data          = ram_0098_temp ; 2 addresses 0098-0099



; used only in pair with ram_0098_temp
; ram_0099                              = $0099 ; 028054(W)  03E03F(Wi) 03E83C(Wx) 



; 
ram_009A_temp                           = $009A ; 009EDB(W)  03E03F(Wi) 03E83C(Wx) 
    ram_009A_t000_data                      = ram_009A_temp ; 2 addresses 009A-009B



; used only in pair with ram_009A_temp
; ram_009B                              = $009B ; 009EE0(W)  03E03F(Wi) 03E83C(Wx) 



; something for Alucard?
ram_009C                                = $009C ; 00B32B(W)  02E18D(W)  02E3CD(R)  02E3D9(W)  02F770(W)  03E03F(Wi) 03E83C(Wx) 



; 00 = 
; 01 = 
ram_009D_flag                           = $009D ; 039EC3(W)  03A0C2(W)  03A0FA(R)  03A104(W)  03E03F(Wi) 03E83C(Wx) 



; 
ram_009E_object_index                   = $009E ; 01BE34(R)  01BE4E(R)  02E3C9(R)  02F2A8(W)  02F2B2(W)  02F2B4(R)  02F2D4(R)  02F305(W)  02F307(R)  02F312(R)  02F495(R)  02F4A9(R)  02F582(R)  02F5F6(R)  03E03F(Wi) 03E83C(Wx) 



; a copy of ram_002A_script
ram_009F_copy_002A_script               = $009F ; 0011CD(R)  03814F(W)  03E03F(Wi) 03E83C(Wx) 



; something to do with drawing?
ram_00A0                                = $00A0 ; 03D18D(W)  03D196(R)  03D1AD(R)  03D1DA(R)  03D1EF(R)  03D229(R)  03D2C4(R)  03D306(R)  03D315(R)  03E03F(Wi) 03E83C(Wx) 



; 
ram_00A1                                = $00A1 ; 03CF51(R)  03D01C(W)  03D18B(R)  03D191(W)  03E03F(Wi) 03E83C(Wx) 



; free address
; ram_00A2                              = $00A2 ; 03E03F(Wi) 03E83C(Wx) 



; frame counter during gameplay?
ram_00A3_frm_cnt                        = $00A3 ; 008A5B(R)  008C3B(R)  00D6C6(R)  03E03F(Wi) 03E83C(Wx) 03FDF3(W)  



; 
ram_00A4_blk_data_index                 = $00A4 ; 001243(W)  001E36(R)  002116(R)  00211A(R)  03E03F(Wi) 03E83C(Wx) 



; 00/01
ram_00A5                                = $00A5 ; 03785B(R)  03787D(R)  037906(R)  037A15(R)  03E03F(Wi) 03E83C(Wx) 03FD43(W)  03FD51(W)  



; a copy of ram_next_irq_handler
ram_00A6_copy_003F_copy_irq_handler     = $00A6 ; 001692(R)  0131F8(W)  03E03F(Wi) 03E83C(Wx) 



; a copy of ram_00A7_copy_0041_scanline
ram_00A7_copy_0041_scanline             = $00A7 ; 001696(R)  0131FC(W)  03E03F(Wi) 03E83C(Wx) 



; a copy of ram_0042
ram_00A8_copy_0042                      = $00A8 ; 00169A(R)  013200(W)  03E03F(Wi) 03E83C(Wx) 



; aa copy of ram_for_5204
ram_00A9_copy_for_5204                  = $00A9 ; 00169E(R)  013204(W)  03E03F(Wi) 03E83C(Wx) 



; a copy of ram_002A_script
ram_00AA_copy_002A_script               = $00AA ; 001501(R)  0016BB(R)  013208(W)  03E03F(Wi) 03E83C(Wx) 



; 00 = not active
; 01 = active
ram_stopwatch_flag                      = $00AB ; 0010E8(W)  024254(R)  02FD09(R)  038A4F(R)  038A59(W)  03BA53(R)  03BA60(W)  03E03F(Wi) 03E83C(Wx) 03F69F(R)  03FE61(R)  



; 
ram_stopwatch_timer                     = $00AC ; 0010EA(W)  024258(R)  02425F(W)  038A53(W)  038A5E(R)  03BA5C(W)  03E03F(Wi) 03E83C(Wx) 



; 
ram_00AD_timer                          = $00AD ; 000F45(R)  000F4F(W)  000F53(R)  001159(W)  02E1C0(W)  0381B5(R)  03E03F(Wi) 03E83C(Wx) 



; timer before hears decrease while Alucard is flying in bat form
ram_00AE_Alucard_bat_timer              = $00AE ; 03A6DA(W)  03A84A(W)  03A850(W)  03E03F(Wi) 03E83C(Wx) 



; 
ram_00AF                                = $00AF ; 02F1AF(R)  02F8FE(R)  02F9B9(W)  038116(R)  03811A(W)  039756(W)  03A0AE(W)  03E03F(Wi) 03E83C(Wx) 



; 00 = 
; 01 = 
ram_00B0_oam_flag                       = $00B0 ; 001155(W)  0060DD(R)  0325C5(W)  034074(R)  0340C0(R)  03411A(R)  034176(R)  03E03F(Wi) 03E83C(Wx) 



; 
ram_00B1_temp                           = $00B1 ; 001830(W)  001838(W)  001883(W)  03BC65(W)  03BC72(W)  03BC8A(R)  03E03F(Wi) 03E83C(Wx) 03ED13(R)  
    ram_00B1_t000_save_X                    = ram_00B1_temp ; 
    ram_00B1_t001_prg_bank                  = ram_00B1_temp ; 



; something to do with spawners and palette?
ram_00B2_counter                        = $00B2 ; 000F1B(R)  000F1F(W)  000F23(R)  001157(W)  028503(R)  02E1FA(W)  03E03F(Wi) 03E83C(Wx) 



; 00 = 
; 01 = 
ram_00B3_flag                           = $00B3 ; 0010EF(W)  008372(W)  00A6FA(R)  03CF41(R)  03E03F(Wi) 03E83C(Wx) 



; todo
ram_00B4                                = $00B4 ; 000B8E(W)  000B94(W)  000BA4(R)  002057(W)  002074(R)  0029AD(W)  0029DF(R)  0042D9(W)  0042DC(R)  00430F(R)  004317(W)  006FDB(R)  007031(R)  007047(R)  00705A(R)  007078(W)  0072E8(R)  0072F8(R)  007378(R)  00739B(R)  0073B0(R)  0075F4(R)  007604(R)  007620(R)  00DDC9(W)  00DDD9(R)  00DE1F(W)  00DE48(R)  00DF0C(W)  00DF1F(R)  00DFB9(R)  00DFC4(W)  00DFDD(W)  02B148(R)  02B405(R)  02B485(R)  02B497(R)  02B4BC(R)  02B4EB(W)  02B4F3(R)  02B671(W)  02B75A(R)  02B77A(R)  02B7A3(R)  02B87E(R)  02B894(R)  02B93D(R)  03E03F(Wi) 03E83C(Wx) 
ram_00B5                                = $00B5 ; 000B86(W)  000B98(W)  00205A(W)  0029B0(W)  0042D5(W)  00707B(W)  02B4EE(W)  02B674(W)  03E03F(Wi) 03E83C(Wx) 
ram_00B6                                = $00B6 ; 03CC70(R)  03CC9B(R)  03CD00(R)  03CD2A(R)  03CD4D(W)  03CD4F(R)  03CD58(R)  03CD60(W)  03CD8D(W)  03E03F(Wi) 03E83C(Wx) 
ram_00B7                                = $00B7 ; 02E1A0(W)  038133(R)  03814B(W)  03E03F(Wi) 03E83C(Wx) 
ram_00B8                                = $00B8 ; 02F1B3(R)  038ECC(W)  038F48(W)  03920B(W)  03E03F(Wi) 03E83C(Wx) 
ram_00B9                                = $00B9 ; 003490(W)  03838B(W)  03945A(W)  0394F4(W)  039550(R)  039554(W)  039841(W)  039EA9(W)  039F0B(W)  03A05A(W)  03A0C4(W)  03A0E8(R)  03A0EC(W)  03E03F(Wi) 03E83C(Wx) 
ram_00BA                                = $00BA ; 00116D(W)  00C033(W)  00DE4E(W)  00DF13(W)  0139BC(R)  0139C7(R)  0269B2(W)  0269B9(W)  0275C0(W)  0275C9(W)  02F3A4(R)  02F469(R)  03251F(W)  0329C7(W)  03E03F(Wi) 03E83C(Wx) 
ram_00BB                                = $00BB ; 00C037(W)  00DE56(W)  013A01(R)  0275BE(W)  032523(W)  0329D4(W)  03E03F(Wi) 03E83C(Wx) 
ram_00BC                                = $00BC ; 00DE52(W)  0139EE(R)  0275CF(W)  03251B(W)  0329CF(W)  03E03F(Wi) 03E83C(Wx) 



; a copy of ram_hp_boss (for dragon snake boss)
ram_copy_hp_boss                        = $00BD ; 0011AC(R)  0011B9(W)  0273CF(W)  02902F(R)  03E03F(Wi) 03E83C(Wx) 



; todo
ram_00BE                                = $00BE ; 0011AF(R)  0011B6(W)  0273C7(W)  02903D(R)  03E03F(Wi) 03E83C(Wx) 
ram_00BF                                = $00BF ; 003593(R)  0035D4(W)  03811C(R)  0383A8(R)  0383B7(W)  038404(R)  038AEE(R)  038B0C(W)  038B27(W)  038B67(R)  038B9C(W)  038BB4(W)  038BD0(R)  038D1B(W)  038D8B(R)  03AE81(R)  03E03F(Wi) 03E83C(Wx) 03F53B(R)  03F5E6(R)  03F7F7(R)  
ram_00C0                                = $00C0 ; 00115D(W)  0035DD(R)  03E03F(Wi) 03E83C(Wx) 
ram_00C1                                = $00C1 ; 001163(W)  00C7D4(W)  00DDB0(W)  023F4A(W)  024538(W)  028F8B(W)  028F94(R)  03E03F(Wi) 03E83C(Wx) 
ram_00C2                                = $00C2 ; 00115F(W)  001507(R)  00DDDF(W)  03E03F(Wi) 03E83C(Wx) 
ram_00C3                                = $00C3 ; 02451C(R)  028F23(W)  03E03F(Wi) 03E83C(Wx) 
ram_00C4                                = $00C4 ; 001165(W)  0131C4(R)  0242B8(Ry) 0242BB(Wy) 024424(Ry) 024427(Wy) 02448D(Ry) 03E03F(Wi) 03E83C(Wx) 
ram_00C5                                = $00C5 ; 001167(W)  0131C6(R)  02448D(Ry) 03E03F(Wi) 03E83C(Wx) 
ram_00C6                                = $00C6 ; 0012D3(W)  001461(R)  03E03F(Wi) 03E83C(Wx) 
ram_00C7                                = $00C7 ; 003D8F(W)  02C152(R)  03E03F(Wi) 03E83C(Wx) 03F4FF(R)  03F503(W)  
ram_00C8                                = $00C8 ; 001161(W)  00831A(W)  038792(R)  03E03F(Wi) 03E83C(Wx) 
ram_00C9                                = $00C9 ; 00350C(W)  003650(R)  0036EC(W)  03E03F(Wi) 03E83C(Wx) 03F70C(W)  
ram_00CA                                = $00CA ; 003535(R)  003597(R)  0035A5(R)  0035FB(W)  0035FD(R)  0270BE(R)  02872F(R)  028752(R)  02C138(R)  02C830(R)  02C8AA(R)  02C8D2(R)  02E0A2(R)  03D5D5(W)  03E03F(Wi) 03E83C(Wx) 
ram_00CB                                = $00CB ; 0035F2(R)  0035F7(W)  03D5D9(W)  03E03F(Wi) 03E83C(Wx) 
ram_00CC                                = $00CC ; 001169(W)  024385(Ry) 024388(Wy) 02446F(Ry) 024472(Wy) 024496(Ry) 03E03F(Wi) 03E83C(Wx) 
ram_00CD                                = $00CD ; 00116B(W)  024385(Ry) 024388(Wy) 02446F(Ry) 024472(Wy) 024496(Ry) 03E03F(Wi) 03E83C(Wx) 



; 5th drop from enemies gives a special drop
ram_drop_counter                        = $00CE ; 02F5AC(W)  02F5AE(R)  02F5B9(W)  03E03F(Wi) 03E83C(Wx) 



; 
ram_00CF                                = $00CF ; 038A76(W)  03974A(R)  03A0A2(R)  03E03F(Wi) 03E83C(Wx) 



; 
ram_00D0_pos_X_lo                       = $00D0 ; 038A9B(W)  03E03F(Wi) 03E83C(Wx) 03FC9C(R)  



; 
ram_00D1_pos_lo                         = $00D1 ; 0272D7(R)  0272E2(R)  027343(W)  03E03F(Wi) 03E83C(Wx) 



; a copy of ram_00D4
ram_00D2                                = $00D2 ; 02F902(R)  039035(W)  0390CB(W)  039352(W)  03E03F(Wi) 03E83C(Wx) 



; 
ram_00D3_pos_Y_lo                       = $00D3 ; 038590(R)  038595(W)  03A3F2(W)  03A51E(R)  03A548(W)  03A557(W)  03E03F(Wi) 03E83C(Wx) 



; 
ram_00D4                                = $00D4 ; 02F9B1(W)  039033(R)  0390C9(R)  039350(R)  03E03F(Wi) 03E83C(Wx) 



; a copy of 2005 register value
ram_00D5_scroll_X                       = $00D5 ; 0060F6(W)  006134(R)  03E03F(Wi) 03E83C(Wx) 



; bzk optimize, useless address
ram_00D6_useless                        = $00D6 ; 0060FC(W)  03E03F(Wi) 03E83C(Wx) 



; 00 = extra life item wasn't picked up yet
; 01 = extra life item was picked up
ram_00D7_extra_life_flag                = $00D7 ; 02E2E8(R)  03E03F(Wi) 03E83C(Wx) 



; free addresses
; ram_00D8                              = $00D8 ; 03E03F(Wi) 03E83C(Wx) 
; ram_00D9                              = $00D9 ; 03E03F(Wi) 03E83C(Wx) 
; ram_00DA                              = $00DA ; 03E03F(Wi) 03E83C(Wx) 
; ram_00DB                              = $00DB ; 03E03F(Wi) 03E83C(Wx) 
; ram_00DC                              = $00DC ; 03E03F(Wi) 03E83C(Wx) 
; ram_00DD                              = $00DD ; 03E03F(Wi) 03E83C(Wx) 
; ram_00DE                              = $00DE ; 03E03F(Wi) 03E83C(Wx) 
; ram_00DF                              = $00DF ; 03E03F(Wi) 03E83C(Wx) 



; sound engine address
ram_00E0_se_temp                        = $00E0 ; 01055C(W)  01057B(W)  010594(R)  010596(W)  0105D6(R)  01062F(R)  0106D9(R)  0106E9(R)  01455C(W)  01457B(W)  014594(R)  014596(W)  0145D6(R)  01462F(R)  01464A(W)  0146D9(R)  0146E9(R)  03055C(W)  03057B(W)  030594(R)  030596(W)  0305D6(R)  0306E9(R)  030AA0(W)  03E03F(Wi) 
    ram_00E0_se_t000_data                   = ram_00E0_se_temp ; 2 addresses 00E0-00E1



; sound engine address
; used only in pair with ram_00E0_se_temp
; ram_00E1                              = $00E1 ; 010558(W)  010580(W)  01059B(R)  01059D(W)  0105DD(R)  010637(R)  0106E0(R)  0106F0(R)  014558(W)  014580(W)  01459B(R)  01459D(W)  0145DD(R)  014637(R)  01464F(W)  0146E0(R)  0146F0(R)  030558(W)  030580(W)  03059B(R)  03059D(W)  0305DD(R)  0306F0(R)  030AA5(W)  03E03F(Wi) 



; sound engine address
ram_00E2_se_temp                        = $00E2 ; 010037(W)  0100FF(W)  010107(W)  010109(R)  01010F(R)  01017E(W)  010199(R)  010239(W)  010271(R)  010282(W)  01029B(R)  0102AF(W)  0102BA(W)  0102FA(W)  010302(W)  0103B7(W)  0103C1(R)  0103D8(W)  010424(W)  0104BF(W)  0104C1(W)  0104CC(W)  010550(W)  01055A(R)  01066E(W)  014037(W)  0140FF(W)  014107(W)  014109(R)  01410F(R)  01417E(W)  014199(R)  014239(W)  014271(R)  014282(W)  01429B(R)  0142AF(W)  0142BA(W)  0142FA(W)  014302(W)  0143B7(W)  0143C1(R)  0143D8(W)  014424(W)  0144BF(W)  0144C1(W)  0144CC(W)  014550(W)  01455A(R)  01466E(W)  030037(W)  030239(W)  030271(R)  030282(W)  03029B(R)  030550(W)  03055A(R)  03066E(W)  030770(W)  0307AC(R)  0308DD(W)  0308F6(R)  030929(W)  030955(R)  030AF8(W)  030B01(R)  030B04(W)  030B0A(R)  030B42(W)  030B6D(W)  030BB9(W)  030BC2(R)  030BDE(R)  030C7D(W)  030C82(R)  030C8C(W)  030D12(W)  030D35(W)  030D45(R)  030D47(W)  030D54(R)  030D5A(R)  030D61(W)  030D7E(R)  030E18(W)  03E03F(Wi) 
    ram_00E2_se_t000_data                   = ram_00E2_se_temp ; 2 addresses 00E2-00E3
    ram_00E2_se_t001_data                   = ram_00E2_se_temp ; 2 addresses 00E2-00E3
    ram_00E2_se_t002_jmp                    = ram_00E2_se_temp ; 2 addresses 00E2-00E3
    ram_00E2_se_t003_jmp                    = ram_00E2_se_temp ; 2 addresses 00E2-00E3
    ram_00E2_se_t004_jmp                    = ram_00E2_se_temp ; 2 addresses 00E2-00E3
    ram_00E2_se_t005_jmp                    = ram_00E2_se_temp ; 2 addresses 00E2-00E3
    ram_00E2_se_t006_jmp                    = ram_00E2_se_temp ; 2 addresses 00E2-00E3
    ram_00E2_se_t007_jmp                    = ram_00E2_se_temp ; 2 addresses 00E2-00E3
    ram_00E2_se_t008_useless_01             = ram_00E2_se_temp ; bzk optimize
    ram_00E2_se_t009                        = ram_00E2_se_temp ; 
    ram_00E2_se_t00A_save_Y                 = ram_00E2_se_temp ; 
    ram_00E2_se_t00B                        = ram_00E2_se_temp ; 
    ram_00E2_se_t00C_loop_counter           = ram_00E2_se_temp ; 
    ram_00E2_se_t00D_loop_counter           = ram_00E2_se_temp ; 
    ram_00E2_se_t00E                        = ram_00E2_se_temp ; 
    ram_00E2_se_t00F                        = ram_00E2_se_temp ; 
    ram_00E2_se_t010                        = ram_00E2_se_temp ; 
    ram_00E2_se_t011_save_X                 = ram_00E2_se_temp ; 
    ram_00E2_se_t012_save_Y                 = ram_00E2_se_temp ; 
    ram_00E2_se_t013_save_Y                 = ram_00E2_se_temp ; 
    ram_00E2_se_t014                        = ram_00E2_se_temp ; 
    ram_00E2_se_t015                        = ram_00E2_se_temp ; 
    ram_00E2_se_t016                        = ram_00E2_se_temp ; 
    ram_00E2_se_t017_useless                = ram_00E2_se_temp ; bzk optimize
    ram_00E2_se_t018                        = ram_00E2_se_temp ; 
    ram_00E2_se_t019                        = ram_00E2_se_temp ; 



; sound engine address
ram_00E3_se_temp                        = $00E3 ; 01003C(W)  0103DD(W)  010429(W)  010673(W)  01403C(W)  0143DD(W)  014429(W)  014673(W)  03003C(W)  030673(W)  0309A6(W)  0309AB(R)  030B47(W)  030B72(W)  030D17(W)  030E1D(W)  03E03F(Wi) 
    ram_00E3_se_t000_save_X                 = ram_00E3_se_temp ; 



; sound engine address
ram_00E4_se_temp                        = $00E4 ; 0100D5(W)  0100D9(R)  01015F(W)  010164(R)  010260(W)  01026D(W)  0102FE(W)  01030A(R)  01030C(W)  0105F9(W)  0105FE(R)  010661(W)  0140D5(W)  0140D9(R)  01415F(W)  014164(R)  014260(W)  01426D(W)  0142FE(W)  01430A(R)  01430C(W)  0145F9(W)  0145FE(R)  014661(W)  030661(W)  030857(W)  030904(R)  030C93(W)  030C9E(R)  03E03F(Wi) 
    ram_00E4_se_t000_save_X                 = ram_00E4_se_temp ; 
    ram_00E4_se_t001                        = ram_00E4_se_temp ; 
    ram_00E4_se_t002                        = ram_00E4_se_temp ; 
    ram_00E4_se_t003                        = ram_00E4_se_temp ; 
    ram_00E4_se_t004_save_Y                 = ram_00E4_se_temp ; 
    ram_00E4_se_t005_loop_counter           = ram_00E4_se_temp ; 
    ram_00E4_se_t006_lo                     = ram_00E4_se_temp ; 
    ram_00E4_se_t007_useless                = ram_00E4_se_temp ; bzk optimize



; sound engine address
ram_00E5_se_temp                        = $00E5 ; 010300(W)  010310(W)  010315(W)  010318(W)  01031B(W)  01031E(W)  010320(R)  014300(W)  014310(W)  014315(W)  014318(W)  01431B(W)  01431E(W)  014320(R)  030859(W)  030906(R)  03E03F(Wi) 
    ram_00E5_se_t000_save_Y                 = ram_00E5_se_temp ; 
    ram_00E5_se_t001_hi                     = ram_00E5_se_temp ; 



; sound engine address
ram_00E6_se_temp                        = $00E6 ; 030894(W)  03E03F(Wi) 
    ram_00E6_se_t000_data                   = ram_00E6_se_temp ; 2 addresses 00E6-00E7



; sound engine address
; used only in pair with ram_00E6_se_temp
; ram_00E7                              = $00E7 ; 03089C(W)  03E03F(Wi) 



; sound engine address
ram_00E8_se_temp                        = $00E8 ; 030862(W)  03E03F(Wi) 
    ram_00E8_se_t000_data                   = ram_00E8_se_temp ; 2 addresses 00E8-00E9



; sound engine address
; used only in pair with ram_00E8_se_temp
; ram_00E9                              = $00E9 ; 030867(W)  03E03F(Wi) 



; sound engine address
; some kind of timer?
ram_00EA_se                             = $00EA ; 030872(W)  0308FD(W)  03E03F(Wi) 



; sound engine address
; temporary address, copied into ram_se_prg_bank
ram_00EB_se_prg_bank                    = $00EB ; 03079B(W)  03086D(W)  0308D8(R)  03E03F(Wi) 



; sound engine address
ram_00EC_se                             = $00EC ; 0100E4(W)  010192(W)  0101A7(W)  0101AE(R)  010220(R)  01024A(R)  010268(R)  010298(R)  01029D(W)  010606(W)  01060F(W)  0140E4(W)  014192(W)  0141A7(W)  0141AE(R)  014220(R)  01424A(R)  014268(R)  014298(R)  01429D(W)  014606(W)  01460F(W)  030220(R)  03024A(R)  030298(R)  03029D(W)  030B58(W)  030CAC(W)  030D68(W)  030D8C(W)  030F25(W)  03E03F(Wi) 



; sound engine address
ram_00ED_se                             = $00ED ; 0100E9(W)  010197(W)  0101A5(W)  0101B3(R)  0101F7(R)  01020E(R)  010245(R)  010263(R)  01060B(W)  01060D(W)  0140E9(W)  014197(W)  0141A5(W)  0141B3(R)  0141F7(R)  01420E(R)  014245(R)  014263(R)  0142A1(W)  01460B(W)  01460D(W)  0301F7(R)  03020E(R)  030245(R)  0302A1(W)  030B5D(W)  030CB1(W)  030D6F(W)  030D71(W)  030D77(W)  030D91(W)  030F1C(W)  03E03F(Wi) 



; sound engine address
ram_00EE_se_channel_index               = $00EE ; 01003E(R)  010079(R)  010125(R)  010180(R)  01019B(R)  0101AC(R)  010222(R)  010236(R)  010366(R)  0103DF(R)  01042B(R)  010675(R)  010687(R)  01403E(R)  014079(R)  014125(R)  014180(R)  01419B(R)  0141AC(R)  014222(R)  014236(R)  014366(R)  0143DF(R)  01442B(R)  014675(R)  014687(R)  03003E(R)  030222(R)  030236(R)  030366(R)  030675(R)  030687(R)  0306A7(R)  0306BB(R)  0306C6(R)  030A4D(W)  030BD2(R)  030D5F(R)  030E1F(R)  030EB0(R)  030F0B(R)  03E03F(Wi) 03E224(R)  



; sound engine address
ram_00EF_se                             = $00EF ; 030824(R)  030847(W)  03085B(R)  030878(R)  030882(R)  0308F8(R)  03090C(W)  03091C(R)  030924(R)  03092B(R)  030957(R)  03E03F(Wi) 



; 
ram_00F0                                = $00F0 ; 007D2E(Ry) 007D33(Wy) 02805B(Wx) 028457(Ry) 03E03F(Wi) 03E875(Wx) 
; ram_00F1                              = $00F1 ; 007D2E(Ry) 007D33(Wy) 02805B(Wx) 028457(Ry) 03E03F(Wi) 03E875(Wx) 
; ram_00F2                              = $00F2 ; 007D2E(Ry) 007D33(Wy) 02805B(Wx) 028457(Ry) 03E03F(Wi) 03E875(Wx) 
; ram_00F3                              = $00F3 ; 007D2E(Ry) 007D33(Wy) 02805B(Wx) 028457(Ry) 03E03F(Wi) 03E875(Wx) 



; 
ram_00F4                                = $00F4 ; 009CFC(Ry) 00B234(Wy) 03E03F(Wi) 03E875(Wx) 
; ram_00F5                              = $00F5 ; 009CFC(Ry) 00B234(Wy) 03E03F(Wi) 03E875(Wx) 
; ram_00F6                              = $00F6 ; 009CFC(Ry) 00B234(Wy) 03E03F(Wi) 03E875(Wx) 
; ram_00F7                              = $00F7 ; 03E03F(Wi) 03E875(Wx) 



; 
ram_copy_btn_press                      = $00F8 ; 03E03F(Wi) 03E2AF(Wx) 03E3CE(R)  03E41F(R)  03E50B(R)  03E56B(R)  03F6A3(R)  03F6C4(R)  
; ram_00F9                              = $00F9 ; 03E03F(Wi) 03E2AF(Wx) 



; 
ram_copy_btn_hold                       = $00FA ; 03E03F(Wi) 03E2A9(Rx) 03E2B3(Wx) 
; ram_00FB                              = $00FB ; 03E03F(Wi) 03E2A9(Rx) 03E2B3(Wx) 



; for 2005 register
ram_scroll_Y                            = $00FC ; 001F3E(W)  001F48(W)  001F4A(R)  001F52(W)  001F59(R)  00276E(R)  002773(W)  0048BF(W)  005198(W)  0068DD(R)  0068F3(R)  006A47(W)  006A56(R)  006A6E(R)  006A91(W)  006AC2(R)  006ACD(W)  006AE6(R)  006AFC(W)  006B35(R)  006B4B(W)  006B59(R)  006BF8(R)  006C20(R)  006E8C(R)  006E95(W)  006F49(R)  006F52(W)  006F5B(W)  02B1AF(W)  02B3B3(W)  02B3B5(R)  02B3BD(W)  02B72F(W)  02B833(W)  03CFBB(W)  03D018(W)  03E03F(Wi) 03E16C(R)  03EBF8(W)  03EC25(W)  
ram_scroll_X                            = $00FD ; 002236(W)  002749(R)  00274E(W)  0048C1(W)  005196(W)  02B1B1(W)  02B731(W)  02B82F(W)  02B90E(W)  03E03F(Wi) 03E167(R)  03EBFA(W)  03EC23(W)  



; a copy of register values
ram_for_2001                            = $00FE ; 03CF9E(W)  03E03F(Wi) 03E086(R)  03E18B(W)  03E1A1(R)  
ram_for_2000                            = $00FF ; 001091(W)  0010F4(W)  001134(W)  001145(W)  00119D(W)  001E0C(W)  002108(R)  00210C(W)  002239(R)  002244(W)  00275C(R)  002762(W)  0027AB(R)  00431C(W)  0044E5(R)  0044EF(R)  0044F3(W)  004508(R)  00450C(W)  004851(R)  00485B(R)  00485F(W)  0051C4(R)  00609C(R)  006449(R)  006881(R)  006885(W)  0069A2(R)  0069A6(W)  0069EC(R)  0069F0(W)  006B79(R)  006B7D(W)  006F54(R)  006F58(W)  00B80E(R)  00B911(R)  02B3BF(R)  02B3C3(W)  02B456(W)  02B464(W)  02B735(W)  02B82B(W)  02B917(R)  02B91D(W)  03CFB7(W)  03E03F(Wi) 03E171(R)  03E184(W)  03E192(R)  03ED3E(R)  03ED76(R)  



; 0100-01FF (100) STACK



; sound engine addresses
ram_0100_se                             = $0100 ; 0102C3(Wx) 010307(Rx) 0142C3(Wx) 014307(Rx) 0308A5(Wx) 030A96(Wx) 030B06(Rx) 030C3E(Rx) 03E03F(Wi) 
; ram_0101                              = $0101 ; 0102C3(Wx) 010307(Rx) 0142C3(Wx) 014307(Rx) 0308A5(Wx) 030A96(Wx) 030B06(Rx) 030C3E(Rx) 03E03F(Wi) 
; ram_0102                              = $0102 ; 0102C3(Wx) 0142C3(Wx) 0308A5(Wx) 030A96(Wx) 03E03F(Wi) 
; ram_0103                              = $0103 ; 0308A5(Wx) 030A96(Wx) 030ED9(Wx) 03E03F(Wi) 
; ram_0104                              = $0104 ; 03E03F(Wi) 
; ram_0105                              = $0105 ; 0102C3(Wx) 0142C3(Wx) 0308A5(Wx) 030A96(Wx) 03E03F(Wi) 
; ram_0106                              = $0106 ; 0308A5(Wx) 030A96(Wx) 030ED9(Wx) 03E03F(Wi) 



; sound engine addresses
ram_0107_se                             = $0107 ; 001127(R)  01065E(Rx) 010665(Wx) 01465E(Rx) 014665(Wx) 0306B6(Rx) 030773(Wx) 03081D(R)  030884(Rx) 0308FA(Wx) 030973(R)  030A52(Rx) 030A73(Rx) 03E03F(Wi) 
; ram_0108                              = $0108 ; 01065E(Rx) 010665(Wx) 01465E(Rx) 014665(Wx) 030773(Wx) 030884(Rx) 0308FA(Wx) 03097F(R)  030A52(Rx) 030A73(Rx) 03E03F(Wi) 
; ram_0109                              = $0109 ; 01065E(Rx) 010665(Wx) 01465E(Rx) 014665(Wx) 030773(Wx) 030884(Rx) 0308FA(Wx) 030A52(Rx) 030A73(Rx) 03E03F(Wi) 
; ram_010A                              = $010A ; 01033A(R)  01433A(R)  03033A(R)  03065E(Rx) 030665(Wx) 03077B(Rx) 030784(Wx) 0307B6(R)  03082B(Rx) 030839(Rx) 030884(Rx) 0308FA(Wx) 03096D(R)  030A52(Rx) 030A73(Rx) 03E03F(Wi) 
; ram_010B                              = $010B ; 010342(R)  014342(R)  030342(R)  03078A(Wx) 030A52(Rx) 03E03F(Wi) 
; ram_010C                              = $010C ; 01065E(Rx) 010665(Wx) 01465E(Rx) 014665(Wx) 03078A(Wx) 030884(Rx) 0308FA(Wx) 0309D5(W)  030A52(Rx) 030A73(Rx) 03E03F(Wi) 
; ram_010D                              = $010D ; 03065E(Rx) 030665(Wx) 03078A(Wx) 03082B(Rx) 030839(Rx) 030884(Rx) 0308FA(Wx) 030A52(Rx) 030A73(Rx) 030AAD(Rx) 03E03F(Wi) 



; sound engine addresses
ram_010E_se                             = $010E ; 0102B3(Rx) 0102B7(Rx) 0102C0(Rx) 010373(Wx) 0103FB(Wx) 0104C5(Rx) 0104C9(Rx) 0104D2(Rx) 0142B3(Rx) 0142B7(Rx) 0142C0(Rx) 014373(Wx) 0143FB(Wx) 0144C5(Rx) 0144C9(Rx) 0144D2(Rx) 030AF5(Rx) 03E03F(Wi) 
; ram_010F                              = $010F ; 0102B3(Rx) 0102B7(Rx) 0102C0(Rx) 010373(Wx) 0103FB(Wx) 0104C5(Rx) 0104C9(Rx) 0104D2(Rx) 0142B3(Rx) 0142B7(Rx) 0142C0(Rx) 014373(Wx) 0143FB(Wx) 0144C5(Rx) 0144C9(Rx) 0144D2(Rx) 030AF5(Rx) 03E03F(Wi) 
; ram_0110                              = $0110 ; 0102B3(Rx) 0102B7(Rx) 0102C0(Rx) 010373(Wx) 0103FB(Wx) 0142B3(Rx) 0142B7(Rx) 0142C0(Rx) 014373(Wx) 03E03F(Wi) 
; ram_0111                              = $0111 ; 030E27(Wx) 030E68(Wx) 030ED6(Rx) 03E03F(Wi) 
; ram_0112                              = $0112 ; 03E03F(Wi) 
; ram_0113                              = $0113 ; 010061(Wx) 0102B3(Rx) 0102B7(Rx) 0102C0(Rx) 014061(Wx) 0142B3(Rx) 0142B7(Rx) 0142C0(Rx) 03E03F(Wi) 
; ram_0114                              = $0114 ; 030E68(Wx) 030ED6(Rx) 03E03F(Wi) 



; sound engine addresses
ram_0115_se                             = $0115 ; 0100A7(Rx) 0100AE(Wx) 010166(Rx) 01016B(Wx) 0101FE(Rx) 010368(Rx) 01036D(Wx) 010523(Rx) 010560(Rx) 010589(Rx) 01058E(Wx) 01059F(Rx) 0105E2(Rx) 0105E7(Wx) 01061F(Rx) 01063C(Rx) 010641(Wx) 0140A7(Rx) 0140AE(Wx) 014166(Rx) 01416B(Wx) 0141FE(Rx) 014368(Rx) 01436D(Wx) 014523(Rx) 014560(Rx) 014589(Rx) 01458E(Wx) 01459F(Rx) 0145E2(Rx) 0145E7(Wx) 0301FE(Rx) 0308F3(Wx) 030996(Rx) 030A80(Rx) 030A8A(Rx) 030AA7(Rx) 030AE0(Rx) 030AE9(Rx) 030B10(Rx) 030B39(Rx) 030C2E(Rx) 030C35(Rx) 030C46(Rx) 030C4B(Wx) 030C68(Rx) 030C6F(Wx) 03E03F(Wi) 
; ram_0116                              = $0116 ; 0100A7(Rx) 0100AE(Wx) 010166(Rx) 01016B(Wx) 0101FE(Rx) 010368(Rx) 01036D(Wx) 010523(Rx) 010560(Rx) 010589(Rx) 01058E(Wx) 01059F(Rx) 0105E2(Rx) 0105E7(Wx) 01061F(Rx) 01063C(Rx) 010641(Wx) 0140A7(Rx) 0140AE(Wx) 014166(Rx) 01416B(Wx) 0141FE(Rx) 014368(Rx) 01436D(Wx) 014523(Rx) 014560(Rx) 014589(Rx) 01458E(Wx) 01459F(Rx) 0145E2(Rx) 0145E7(Wx) 0301FE(Rx) 0308F3(Wx) 030996(Rx) 030A80(Rx) 030A8A(Rx) 030AA7(Rx) 030AE0(Rx) 030AE9(Rx) 030B10(Rx) 030B39(Rx) 030C2E(Rx) 030C35(Rx) 030C46(Rx) 030C4B(Wx) 030C68(Rx) 030C6F(Wx) 03E03F(Wi) 
; ram_0117                              = $0117 ; 010560(Rx) 010589(Rx) 01058E(Wx) 01059F(Rx) 0105E2(Rx) 0105E7(Wx) 01061F(Rx) 01063C(Rx) 010641(Wx) 014560(Rx) 014589(Rx) 01458E(Wx) 01459F(Rx) 0145E2(Rx) 0145E7(Wx) 01461F(Rx) 01463C(Rx) 014641(Wx) 014651(Rx) 014656(Wx) 030368(Rx) 03036D(Wx) 0308F3(Wx) 030A80(Rx) 030A8A(Rx) 030AA7(Rx) 030AE0(Rx) 03E03F(Wi) 
; ram_0118                              = $0118 ; 0301FE(Rx) 030523(Rx) 030560(Rx) 030589(Rx) 03058E(Wx) 03059F(Rx) 0305A8(Rx) 0305AD(Wx) 0305E2(Rx) 0305E7(Wx) 0306A9(Rx) 0306AE(Wx) 0308F3(Wx) 030A80(Rx) 030A8A(Rx) 030AA7(Rx) 030AE0(Rx) 030E2E(Rx) 030E33(Wx) 030E6B(Rx) 030E70(Wx) 030E94(Rx) 030E99(Wx) 030EB6(Rx) 030EBB(Wx) 030F0D(Rx) 03E03F(Wi) 
; ram_0119                              = $0119 ; 03E03F(Wi) 
; ram_011A                              = $011A ; 010560(Rx) 010589(Rx) 01058E(Wx) 01059F(Rx) 0105E2(Rx) 0105E7(Wx) 014560(Rx) 014589(Rx) 01458E(Wx) 01459F(Rx) 0145E2(Rx) 0145E7(Wx) 01461F(Rx) 01463C(Rx) 014641(Wx) 014651(Rx) 014656(Wx) 0308F3(Wx) 030A80(Rx) 030A8A(Rx) 030AA7(Rx) 030AE0(Rx) 03E03F(Wi) 
; ram_011B                              = $011B ; 030560(Rx) 030589(Rx) 03058E(Wx) 03059F(Rx) 0305A8(Rx) 0305AD(Wx) 0305E2(Rx) 0305E7(Wx) 0308F3(Wx) 030A80(Rx) 030AA7(Rx) 030AE0(Rx) 030E6B(Rx) 030E70(Wx) 030F0D(Rx) 03E03F(Wi) 



; sound engine addresses
ram_011C_se                             = $011C ; 01056C(Wx) 01056F(Rx) 010586(Wx) 01456C(Wx) 01456F(Rx) 014586(Wx) 0308A0(Wx) 03E03F(Wi) 
; ram_011D                              = $011D ; 01056C(Wx) 01056F(Rx) 010586(Wx) 01456C(Wx) 01456F(Rx) 014586(Wx) 0308A0(Wx) 03E03F(Wi) 
; ram_011E                              = $011E ; 01056C(Wx) 01056F(Rx) 010586(Wx) 01456C(Wx) 01456F(Rx) 014586(Wx) 0308A0(Wx) 03E03F(Wi) 
; ram_011F                              = $011F ; 03056C(Wx) 03056F(Rx) 030586(Wx) 0308A0(Wx) 03E03F(Wi) 
; ram_0120                              = $0120 ; 03E03F(Wi) 
; ram_0121                              = $0121 ; 01056C(Wx) 01056F(Rx) 010586(Wx) 01456C(Wx) 01456F(Rx) 014586(Wx) 0308A0(Wx) 03E03F(Wi) 
; ram_0122                              = $0122 ; 03056C(Wx) 03056F(Rx) 030586(Wx) 0308A0(Wx) 03E03F(Wi) 



; sound engine addresses
ram_0123_se_data_lo                     = $0123 ; 010537(Wx) 01054D(Wx) 010578(Rx) 0106EB(Wx) 0106FB(Wx) 014537(Wx) 01454D(Wx) 014578(Rx) 0146EB(Wx) 030891(Wx) 030A9D(Rx) 03E03F(Wi) 
; ram_0124                              = $0124 ; 010537(Wx) 01054D(Wx) 010578(Rx) 0106EB(Wx) 0106FB(Wx) 014537(Wx) 01454D(Wx) 014578(Rx) 0146EB(Wx) 030891(Wx) 030A9D(Rx) 03E03F(Wi) 
; ram_0125                              = $0125 ; 010537(Wx) 01054D(Wx) 010578(Rx) 0106EB(Wx) 0106FB(Wx) 014537(Wx) 01454D(Wx) 014578(Rx) 0146EB(Wx) 0146FB(Wx) 0306EB(Wx) 030891(Wx) 030A9D(Rx) 03E03F(Wi) 
; ram_0126                              = $0126 ; 030537(Wx) 03054D(Wx) 030578(Rx) 0306EB(Wx) 030891(Wx) 030A9D(Rx) 03E03F(Wi) 
; ram_0127                              = $0127 ; 03E03F(Wi) 
; ram_0128                              = $0128 ; 010537(Wx) 01054D(Wx) 010578(Rx) 0106DB(Wx) 014537(Wx) 01454D(Wx) 014578(Rx) 0146DB(Wx) 0146FB(Wx) 030891(Wx) 030A9D(Rx) 03E03F(Wi) 
; ram_0129                              = $0129 ; 030537(Wx) 030578(Rx) 0306EB(Wx) 030891(Wx) 030A9D(Rx) 03E03F(Wi) 



; sound engine addresses
ram_012A_se_data_hi                     = $012A ; 01053D(Wx) 010555(Wx) 01057D(Rx) 0106F2(Wx) 010701(Wx) 01453D(Wx) 014555(Wx) 01457D(Rx) 0146F2(Wx) 030899(Wx) 030AA2(Rx) 03E03F(Wi) 
; ram_012B                              = $012B ; 01053D(Wx) 010555(Wx) 01057D(Rx) 0106F2(Wx) 010701(Wx) 01453D(Wx) 014555(Wx) 01457D(Rx) 0146F2(Wx) 030899(Wx) 030AA2(Rx) 03E03F(Wi) 
; ram_012C                              = $012C ; 01053D(Wx) 010555(Wx) 01057D(Rx) 0106F2(Wx) 010701(Wx) 01453D(Wx) 014555(Wx) 01457D(Rx) 0146F2(Wx) 014701(Wx) 0306F2(Wx) 030899(Wx) 030AA2(Rx) 03E03F(Wi) 
; ram_012D                              = $012D ; 03053D(Wx) 030555(Wx) 03057D(Rx) 0306F2(Wx) 030899(Wx) 030AA2(Rx) 03E03F(Wi) 
; ram_012E                              = $012E ; 03E03F(Wi) 
; ram_012F                              = $012F ; 01053D(Wx) 010555(Wx) 01057D(Rx) 0106E2(Wx) 01453D(Wx) 014555(Wx) 01457D(Rx) 0146E2(Wx) 014701(Wx) 030899(Wx) 030AA2(Rx) 03E03F(Wi) 
; ram_0130                              = $0130 ; 03053D(Wx) 03057D(Rx) 0306F2(Wx) 030899(Wx) 030AA2(Rx) 03E03F(Wi) 



; sound engine addresses
ram_0131_se                             = $0131 ; 010534(Rx) 0105D8(Wx) 014534(Rx) 0145D8(Wx) 03E03F(Wi) 
; ram_0132                              = $0132 ; 010534(Rx) 0105D8(Wx) 014534(Rx) 0145D8(Wx) 03E03F(Wi) 
; ram_0133                              = $0133 ; 010534(Rx) 0105D8(Wx) 014534(Rx) 0145D8(Wx) 03E03F(Wi) 
; ram_0134                              = $0134 ; 030534(Rx) 0305D8(Wx) 03E03F(Wi) 
; ram_0135                              = $0135 ; 03E03F(Wi) 
; ram_0136                              = $0136 ; 010534(Rx) 0105D8(Wx) 014534(Rx) 0145D8(Wx) 03E03F(Wi) 
; ram_0137                              = $0137 ; 030534(Rx) 0305D8(Wx) 03E03F(Wi) 



; sound engine addresses
ram_0138_se                             = $0138 ; 01053A(Rx) 0105DF(Wx) 01453A(Rx) 0145DF(Wx) 03E03F(Wi) 
; ram_0139                              = $0139 ; 01053A(Rx) 0105DF(Wx) 01453A(Rx) 0145DF(Wx) 03E03F(Wi) 
; ram_013A                              = $013A ; 01053A(Rx) 0105DF(Wx) 01453A(Rx) 0145DF(Wx) 03E03F(Wi) 
; ram_013B                              = $013B ; 03053A(Rx) 0305DF(Wx) 03E03F(Wi) 
; ram_013C                              = $013C ; 03E03F(Wi) 
; ram_013D                              = $013D ; 01053A(Rx) 0105DF(Wx) 01453A(Rx) 0145DF(Wx) 03E03F(Wi) 
; ram_013E                              = $013E ; 03053A(Rx) 0305DF(Wx) 03E03F(Wi) 



; sound engine addresses
ram_013F_se                             = $013F ; 010631(Wx) 03E03F(Wi) 
; ram_0140                              = $0140 ; 010631(Wx) 03E03F(Wi) 
; ram_0141                              = $0141 ; 010631(Wx) 014631(Wx) 014647(Rx) 03E03F(Wi) 
; ram_0142                              = $0142 ; 03E03F(Wi) 
; ram_0143                              = $0143 ; 03E03F(Wi) 
; ram_0144                              = $0144 ; 014631(Wx) 014647(Rx) 03E03F(Wi) 
; ram_0145                              = $0145 ; 03E03F(Wi) 



; sound engine addresses
ram_0146_se                             = $0146 ; 010639(Wx) 03E03F(Wi) 
; ram_0147                              = $0147 ; 010639(Wx) 03E03F(Wi) 
; ram_0148                              = $0148 ; 010639(Wx) 014639(Wx) 01464C(Rx) 03E03F(Wi) 
; ram_0149                              = $0149 ; 03E03F(Wi) 
; ram_014A                              = $014A ; 03E03F(Wi) 
; ram_014B                              = $014B ; 014639(Wx) 01464C(Rx) 03E03F(Wi) 
; ram_014C                              = $014C ; 03E03F(Wi) 



; sound engine addresses
ram_014D_se                             = $014D ; 0101F9(Rx) 010210(Wx) 0141F9(Rx) 014210(Wx) 0301F9(Rx) 030210(Wx) 0308AE(Wx) 0309B6(Rx) 03E03F(Wi) 
; ram_014E                              = $014E ; 0101F9(Rx) 010210(Wx) 0141F9(Rx) 014210(Wx) 0301F9(Rx) 030210(Wx) 0308AE(Wx) 0309B6(Rx) 03E03F(Wi) 
; ram_014F                              = $014F ; 010210(Wx) 014210(Wx) 0308AE(Wx) 03E03F(Wi) 
; ram_0150                              = $0150 ; 0301F9(Rx) 030210(Wx) 0308AE(Wx) 03E03F(Wi) 
; ram_0151                              = $0151 ; 03E03F(Wi) 
; ram_0152                              = $0152 ; 030798(W)  0309E7(W)  030BB2(R)  03E03F(Wi) 
; ram_0153                              = $0153 ; 030210(Wx) 0308AE(Wx) 03E03F(Wi) 



; sound engine addresses
ram_0154_se                             = $0154 ; 0309A3(Rx) 030BA1(Wx) 030BA4(Rx) 030C1F(Wx) 030C24(Rx) 030CF2(Wx) 030CF9(Rx) 030D00(Rx) 030D06(Wx) 03E03F(Wi) 
; ram_0155                              = $0155 ; 0309A3(Rx) 030BA1(Wx) 030BA4(Rx) 030C1F(Wx) 030C24(Rx) 030CF2(Wx) 030CF9(Rx) 030D00(Rx) 030D06(Wx) 03E03F(Wi) 
; ram_0156                              = $0156 ; 03E03F(Wi) 
; ram_0157                              = $0157 ; 03E03F(Wi) 
; ram_0158                              = $0158 ; 03E03F(Wi) 
; ram_0159                              = $0159 ; 030792(W)  0309CC(R)  0309D8(W)  0309DD(R)  0309E4(W)  03E03F(Wi) 
; ram_015A                              = $015A ; 03E03F(Wi) 



; sound engine addresses
ram_015B_se                             = $015B ; 010099(Rx) 010386(Wx) 010395(Rx) 014099(Rx) 014386(Wx) 014395(Rx) 03E03F(Wi) 
; ram_015C                              = $015C ; 010099(Rx) 010386(Wx) 010395(Rx) 014099(Rx) 014386(Wx) 014395(Rx) 03E03F(Wi) 
; ram_015D                              = $015D ; 0100FC(R)  0103B0(W)  0140FC(R)  0143B0(W)  030AC4(Rx) 03E03F(Wi) 
; ram_015E                              = $015E ; 030EE2(Wx) 030EF0(Rx) 03E03F(Wi) 
; ram_015F                              = $015F ; 03E03F(Wi) 
; ram_0160                              = $0160 ; 0029A4(W)  0048F2(W)  00700A(W)  00734F(W)  030795(W)  0309EA(W)  030A35(R)  03E03F(Wi) 
; ram_0161                              = $0161 ; 030EE2(Wx) 03E03F(Wi) 



; sound engine addresses
ram_0162_se                             = $0162 ; 010207(Rx) 01037F(Wx) 010486(Wx) 014207(Rx) 01437F(Wx) 014486(Wx) 030207(Rx) 030BC4(Rx) 03E03F(Wi) 
; ram_0163                              = $0163 ; 010207(Rx) 01037F(Wx) 010486(Wx) 014207(Rx) 01437F(Wx) 014486(Wx) 030207(Rx) 030BC4(Rx) 03E03F(Wi) 
; ram_0164                              = $0164 ; 03E03F(Wi) 
; ram_0165                              = $0165 ; 030207(Rx) 030E82(Wx) 030EE9(Rx) 030EFD(Rx) 030F2D(Rx) 03E03F(Wi) 
; ram_0166                              = $0166 ; 03E03F(Wi) 
; ram_0167                              = $0167 ; 030963(W)  03099B(R)  030A2D(R)  030A6E(R)  03E03F(Wi) 
; ram_0168                              = $0168 ; 030E7C(Wx) 030EFD(Rx) 03E03F(Wi) 



; sound engine addresses
ram_0169_se                             = $0169 ; 010398(Wx) 0105C8(Wx) 014398(Wx) 0145C8(Wx) 0308BA(Wx) 030BAA(Rx) 03E03F(Wi) 
; ram_016A                              = $016A ; 010398(Wx) 0105C8(Wx) 014398(Wx) 0145C8(Wx) 0308BA(Wx) 030BAA(Rx) 03E03F(Wi) 
; ram_016B                              = $016B ; 0105C8(Wx) 0145C8(Wx) 0308BA(Wx) 03E03F(Wi) 
; ram_016C                              = $016C ; 0308BA(Wx) 030E3B(Wx) 030EF4(Rx) 03E03F(Wi) 
; ram_016D                              = $016D ; 03E03F(Wi) 



; sound engine addresses
ram_016E_se                             = $016E ; 01001B(Rx) 0100B1(Rx) 0100B6(Wx) 0100BC(Rx) 0100C1(Wx) 0100CA(Rx) 0100CF(Wx) 01016E(Rx) 010173(Wx) 0101C4(Rx) 0101E8(Rx) 0102CE(Rx) 0103B9(Rx) 0103BE(Wx) 0103FE(Rx) 010468(Rx) 01046D(Wx) 010474(Rx) 010479(Wx) 0104AA(Rx) 0104AF(Wx) 0104E2(Rx) 0104E7(Wx) 0104EE(Rx) 01401B(Rx) 0140B1(Rx) 0140B6(Wx) 0140BC(Rx) 0140C1(Wx) 0140CA(Rx) 0140CF(Wx) 01416E(Rx) 014173(Wx) 0141C4(Rx) 0141E8(Rx) 0142CE(Rx) 0143B9(Rx) 0143BE(Wx) 0143FE(Rx) 014410(Rx) 014415(Wx) 01444A(Rx) 01444F(Wx) 014468(Rx) 01446D(Wx) 014474(Rx) 014479(Wx) 0144AA(Rx) 0144AF(Wx) 0144E2(Rx) 0144E7(Wx) 0144EE(Rx) 0301E8(Rx) 0308B7(Wx) 030B19(Rx) 030BBB(Rx) 030C5F(Rx) 030C64(Wx) 03E03F(Wi) 
; ram_016F                              = $016F ; 01001B(Rx) 0100B1(Rx) 0100B6(Wx) 0100BC(Rx) 0100C1(Wx) 0100CA(Rx) 0100CF(Wx) 01016E(Rx) 010173(Wx) 0101C4(Rx) 0101E8(Rx) 0102CE(Rx) 0103B9(Rx) 0103BE(Wx) 0103FE(Rx) 010410(Rx) 010415(Wx) 01044A(Rx) 01044F(Wx) 010468(Rx) 01046D(Wx) 010474(Rx) 010479(Wx) 0104AA(Rx) 0104AF(Wx) 0104E2(Rx) 0104E7(Wx) 0104EE(Rx) 01401B(Rx) 0140B1(Rx) 0140B6(Wx) 0140BC(Rx) 0140C1(Wx) 0140CA(Rx) 0140CF(Wx) 01416E(Rx) 014173(Wx) 0141C4(Rx) 0141E8(Rx) 0142CE(Rx) 0143B9(Rx) 0143BE(Wx) 0143FE(Rx) 014410(Rx) 014415(Wx) 01444A(Rx) 01444F(Wx) 014468(Rx) 01446D(Wx) 014474(Rx) 014479(Wx) 0144AA(Rx) 0144AF(Wx) 0144E2(Rx) 0144E7(Wx) 0144EE(Rx) 0301E8(Rx) 0308B7(Wx) 030B19(Rx) 030BBB(Rx) 030C5F(Rx) 030C64(Wx) 03E03F(Wi) 
; ram_0170                              = $0170 ; 01001B(Rx) 010127(Rx) 0103B9(Rx) 0103BE(Wx) 0103FE(Rx) 0105ED(Rx) 0105F2(Wx) 010614(Rx) 010619(Wx) 01401B(Rx) 014127(Rx) 0143B9(Rx) 0143BE(Wx) 0145ED(Rx) 0145F2(Wx) 014614(Rx) 014619(Wx) 0308B7(Wx) 03E03F(Wi) 
; ram_0171                              = $0171 ; 0301E8(Rx) 0308B7(Wx) 03E03F(Wi) 
; ram_0172                              = $0172 ; 03E03F(Wi) 



; sound engine addresses
ram_0173_se                             = $0173 ; 01027F(Rx) 010520(Wx) 01427F(Rx) 014520(Wx) 03027F(Rx) 0308BD(Wx) 03E03F(Wi) 
; ram_0174                              = $0174 ; 01027F(Rx) 010520(Wx) 01427F(Rx) 014520(Wx) 03027F(Rx) 0308BD(Wx) 03E03F(Wi) 
; ram_0175                              = $0175 ; 01027F(Rx) 01427F(Rx) 0308BD(Wx) 03E03F(Wi) 
; ram_0176                              = $0176 ; 03027F(Rx) 030520(Wx) 0306B3(Wx) 0308BD(Wx) 03E03F(Wi) 
; ram_0177                              = $0177 ; 03E03F(Wi) 



; sound engine addresses
ram_0178_se                             = $0178 ; 010228(Wx) 014228(Wx) 030228(Wx) 0309AD(Rx) 03E03F(Wi) 
; ram_0179                              = $0179 ; 010228(Wx) 014228(Wx) 030228(Wx) 0309AD(Rx) 03E03F(Wi) 
; ram_017A                              = $017A ; 010228(Wx) 014228(Wx) 03E03F(Wi) 
; ram_017B                              = $017B ; 03E03F(Wi) 
; ram_017C                              = $017C ; 03E03F(Wi) 



; sound engine addresses
ram_017D_se                             = $017D ; 01019D(Rx) 0103C7(Wx) 01419D(Rx) 0143C7(Wx) 03E03F(Wi) 
; ram_017E                              = $017E ; 01019D(Rx) 0103C7(Wx) 01419D(Rx) 0143C7(Wx) 03E03F(Wi) 
; ram_017F                              = $017F ; 01019D(Rx) 0103C7(Wx) 01419D(Rx) 0143C7(Wx) 03E03F(Wi) 



; sound engine addresses
ram_0180_se                             = $0180 ; 010182(Ry) 01018B(Ry) 010492(Wx) 014182(Ry) 014492(Wx) 0308C8(Wx) 03E03F(Wi) 
; ram_0181                              = $0181 ; 010182(Ry) 01018B(Ry) 010492(Wx) 014182(Ry) 0308C8(Wx) 03E03F(Wi) 
; ram_0182                              = $0182 ; 010182(Ry) 01018B(Ry) 010492(Wx) 014182(Ry) 0308C8(Wx) 03E03F(Wi) 



; sound engine addresses
ram_0183_se                             = $0183 ; 0101B0(Wx) 0141B0(Wx) 030B55(Rx) 030D65(Rx) 030D7A(Rx) 03E03F(Wi) 
; ram_0184                              = $0184 ; 0101B0(Wx) 0141B0(Wx) 030B55(Rx) 030D65(Rx) 030D7A(Rx) 03E03F(Wi) 
; ram_0185                              = $0185 ; 0101B0(Wx) 010603(Rx) 0141B0(Wx) 014603(Rx) 03E03F(Wi) 



; sound engine addresses
ram_0186_se                             = $0186 ; 0101B5(Wx) 0141B5(Wx) 030B5A(Rx) 030D6C(Rx) 030D74(Rx) 030D8E(Rx) 03E03F(Wi) 
; ram_0187                              = $0187 ; 0101B5(Wx) 0141B5(Wx) 030B5A(Rx) 030D6C(Rx) 030D74(Rx) 030D8E(Rx) 03E03F(Wi) 
; ram_0188                              = $0188 ; 0101B5(Wx) 010608(Rx) 0141B5(Wx) 014608(Rx) 03E03F(Wi) 



; sound engine addresses
; +80 = 
; see con_9E25
ram_0189_se                             = $0189 ; 01009F(Rx) 010146(Rx) 01038C(Wx) 01409F(Rx) 014146(Rx) 01438C(Wx) 014447(Wx) 030B65(Rx) 030CBD(Rx) 03E03F(Wi) 
; ram_018A                              = $018A ; 01009F(Rx) 010146(Rx) 01038C(Wx) 010447(Wx) 01409F(Rx) 014146(Rx) 01438C(Wx) 014447(Wx) 030B65(Rx) 030CBD(Rx) 03E03F(Wi) 
; ram_018B                              = $018B ; 03E03F(Wi) 



; sound engine address
ram_018C_se                             = $018C ; 030694(R)  0306C0(R)  030A4F(W)  03E03F(Wi) 



; sound engine address
ram_018D_se                             = $018D ; 0307A6(W)  0309F3(W)  0309F6(R)  030A00(W)  03E03F(Wi) 



; sound engine address
ram_018E_se                             = $018E ; 01052D(W)  0307A3(W)  0309EE(R)  0309F9(R)  03E03F(Wi) 



; sound engine address
; 00 = 
; 01 = 
ram_018F_se_flag                        = $018F ; 0307A0(W)  030A05(W)  030A0C(W)  030A90(R)  03E03F(Wi) 



; bzk optimize, useless address
ram_0190_useless                        = $0190 ; 030EA2(W)  03E03F(Wi) 



; free address
; ram_0191                              = $0191 ; 03E03F(Wi) 



; sound engine address
ram_0192_se                             = $0192 ; 030915(R)  03091E(R)  030926(W)  030A46(W)  03E03F(Wi) 



; sound engine address
ram_0193_se                             = $0193 ; 0100F9(W)  0140F9(W)  030AB6(W)  030ABD(R)  03E03F(Wi) 



; sound engine address
ram_0194_se                             = $0194 ; 010122(W)  014122(W)  030ACD(R)  030AD5(W)  03E03F(Wi) 



; sound engine addresses
; banks 88, 8A, 98
ram_se_prg_bank                         = $0195 ; 0308DA(Wx) 03E03F(Wi) 03E1C5(Rx) 03E1D5(Rx) 03E1E8(Rx) 03E1F6(Rx) 03E204(Rx) 
; ram_0196                              = $0196 ; 0308DA(Wx) 03E03F(Wi) 03E1C5(Rx) 03E1D5(Rx) 03E1E8(Rx) 03E1F6(Rx) 03E204(Rx) 
; ram_0197                              = $0197 ; 0308DA(Wx) 03E03F(Wi) 03E1C5(Rx) 03E1D5(Rx) 
; ram_0198                              = $0198 ; 0308DA(Wx) 03E03F(Wi) 03E1C5(Rx) 03E226(Rx) 
; ram_0199                              = $0199 ; 03E03F(Wi) 
; ram_019A                              = $019A ; 0308DA(Wx) 03E03F(Wi) 03E1C5(Rx) 03E1D5(Rx) 
; ram_019B                              = $019B ; 0308DA(Wx) 03E03F(Wi) 03E1C5(Rx) 03E1D5(Rx) 



; free addresses
; ram_019C                              = $019C ; 03E03F(Wi) 
; ram_019D                              = $019D ; 03E03F(Wi) 
; ram_019E                              = $019E ; 03E03F(Wi) 
; ram_019F                              = $019F ; 03E03F(Wi) 
; ram_01A0                              = $01A0 ; 03E03F(Wi) 
; ram_01A1                              = $01A1 ; 03E03F(Wi) 
; ram_01A2                              = $01A2 ; 03E03F(Wi) 
; ram_01A3                              = $01A3 ; 03E03F(Wi) 
; ram_01A4                              = $01A4 ; 03E03F(Wi) 
; ram_01A5                              = $01A5 ; 03E03F(Wi) 
; ram_01A6                              = $01A6 ; 03E03F(Wi) 
; ram_01A7                              = $01A7 ; 03E03F(Wi) 
; ram_01A8                              = $01A8 ; 03E03F(Wi) 
; ram_01A9                              = $01A9 ; 03E03F(Wi) 
; ram_01AA                              = $01AA ; 03E03F(Wi) 
; ram_01AB                              = $01AB ; 03E03F(Wi) 
; ram_01AC                              = $01AC ; 03E03F(Wi) 
; ram_01AD                              = $01AD ; 03E03F(Wi) 
; ram_01AE                              = $01AE ; 03E03F(Wi) 
; ram_01AF                              = $01AF ; 03E03F(Wi) 
; ram_01B0                              = $01B0 ; 03E03F(Wi) 
; ram_01B1                              = $01B1 ; 03E03F(Wi) 
; ram_01B2                              = $01B2 ; 03E03F(Wi) 
; ram_01B3                              = $01B3 ; 03E03F(Wi) 
; ram_01B4                              = $01B4 ; 03E03F(Wi) 
; ram_01B5                              = $01B5 ; 03E03F(Wi) 
; ram_01B6                              = $01B6 ; 03E03F(Wi) 
; ram_01B7                              = $01B7 ; 03E03F(Wi) 
; ram_01B8                              = $01B8 ; 03E03F(Wi) 
; ram_01B9                              = $01B9 ; 03E03F(Wi) 
; ram_01BA                              = $01BA ; 03E03F(Wi) 
; ram_01BB                              = $01BB ; 03E03F(Wi) 
; ram_01BC                              = $01BC ; 03E03F(Wi) 
; ram_01BD                              = $01BD ; 03E03F(Wi) 
; ram_01BE                              = $01BE ; 03E03F(Wi) 
; ram_01BF                              = $01BF ; 03E03F(Wi) 



; free addresses, but reserved for the actual stack
; highest stack usage logged = 01D1 (movie walkthrough 2)
; ram_01C0                              = $01C0 ; 03E03F(Wi) 
; ram_01C1                              = $01C1 ; 03E03F(Wi) 
; ram_01C2                              = $01C2 ; 03E03F(Wi) 
; ram_01C3                              = $01C3 ; 03E03F(Wi) 
; ram_01C4                              = $01C4 ; 03E03F(Wi) 
; ram_01C5                              = $01C5 ; 03E03F(Wi) 
; ram_01C6                              = $01C6 ; 03E03F(Wi) 
; ram_01C7                              = $01C7 ; 03E03F(Wi) 
; ram_01C8                              = $01C8 ; 03E03F(Wi) 
; ram_01C9                              = $01C9 ; 03E03F(Wi) 
; ram_01CA                              = $01CA ; 03E03F(Wi) 
; ram_01CB                              = $01CB ; 03E03F(Wi) 
; ram_01CC                              = $01CC ; 03E03F(Wi) 
; ram_01CD                              = $01CD ; 03E03F(Wi) 
; ram_01CE                              = $01CE ; 03E03F(Wi) 
; ram_01CF                              = $01CF ; 03E03F(Wi) 
; ram_01D0                              = $01D0 ; 03E03F(Wi) 
; ram_01D1                              = $01D1 ; 03E03F(Wi) 
; ram_01D2                              = $01D2 ; 03E03F(Wi) 
; ram_01D3                              = $01D3 ; 03E03F(Wi) 
; ram_01D4                              = $01D4 ; 03E03F(Wi) 
; ram_01D5                              = $01D5 ; 03E03F(Wi) 
; ram_01D6                              = $01D6 ; 03E03F(Wi) 
; ram_01D7                              = $01D7 ; 03E03F(Wi) 
; ram_01D8                              = $01D8 ; 03E03F(Wi) 
; ram_01D9                              = $01D9 ; 03E03F(Wi) 
; ram_01DA                              = $01DA ; 03E03F(Wi) 
; ram_01DB                              = $01DB ; 03E03F(Wi) 
; ram_01DC                              = $01DC ; 03E03F(Wi) 
; ram_01DD                              = $01DD ; 03E03F(Wi) 
; ram_01DE                              = $01DE ; 03E03F(Wi) 
; ram_01DF                              = $01DF ; 03E03F(Wi) 
; ram_01E0                              = $01E0 ; 03E03F(Wi) 
; ram_01E1                              = $01E1 ; 03E03F(Wi) 
; ram_01E2                              = $01E2 ; 03E03F(Wi) 
; ram_01E3                              = $01E3 ; 03E03F(Wi) 
; ram_01E4                              = $01E4 ; 03E03F(Wi) 
; ram_01E5                              = $01E5 ; 03E03F(Wi) 
; ram_01E6                              = $01E6 ; 03E03F(Wi) 
; ram_01E7                              = $01E7 ; 03E03F(Wi) 
; ram_01E8                              = $01E8 ; 03E03F(Wi) 
; ram_01E9                              = $01E9 ; 03E03F(Wi) 
; ram_01EA                              = $01EA ; 03E03F(Wi) 
; ram_01EB                              = $01EB ; 03E03F(Wi) 
; ram_01EC                              = $01EC ; 03E03F(Wi) 
; ram_01ED                              = $01ED ; 03E03F(Wi) 
; ram_01EE                              = $01EE ; 03E03F(Wi) 
; ram_01EF                              = $01EF ; 03E03F(Wi) 
; ram_01F0                              = $01F0 ; 03E03F(Wi) 
; ram_01F1                              = $01F1 ; 03E03F(Wi) 
; ram_01F2                              = $01F2 ; 03E03F(Wi) 
; ram_01F3                              = $01F3 ; 03E03F(Wi) 
; ram_01F4                              = $01F4 ; 03E03F(Wi) 
; ram_01F5                              = $01F5 ; 03E03F(Wi) 
; ram_01F6                              = $01F6 ; 03E03F(Wi) 
; ram_01F7                              = $01F7 ; 03E03F(Wi) 
; ram_01F8                              = $01F8 ; 03E03F(Wi) 
; ram_01F9                              = $01F9 ; 03E03F(Wi) 
; ram_01FA                              = $01FA ; 03E03F(Wi) 
; ram_01FB                              = $01FB ; 03E03F(Wi) 
; ram_01FC                              = $01FC ; 03E03F(Wi) 
; ram_01FD                              = $01FD ; 03E03F(Wi) 
; ram_01FE                              = $01FE ; 03E03F(Wi) 
; ram_01FF                              = $01FF ; 03E03F(Wi) 



; 0200-02FF (100) OAM sprites
ram_oam                                 = $0200 ; for common links
ram_spr_Y                               = $0200 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 034218(Wx) 03E03F(Wi) 
ram_spr_T                               = $0201 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 03421E(Wx) 03E03F(Wi) 
ram_spr_A                               = $0202 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
ram_spr_X                               = $0203 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0204                              = $0204 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_0205                              = $0205 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_0206                              = $0206 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_0207                              = $0207 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0208                              = $0208 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_0209                              = $0209 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_020A                              = $020A ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_020B                              = $020B ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_020C                              = $020C ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_020D                              = $020D ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_020E                              = $020E ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_020F                              = $020F ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0210                              = $0210 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 034218(Wx) 03E03F(Wi) 
; ram_0211                              = $0211 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03421E(Wx) 03E03F(Wi) 
; ram_0212                              = $0212 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_0213                              = $0213 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0214                              = $0214 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 034218(Wx) 03E03F(Wi) 
; ram_0215                              = $0215 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03421E(Wx) 03E03F(Wi) 
; ram_0216                              = $0216 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_0217                              = $0217 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0218                              = $0218 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 034218(Wx) 03E03F(Wi) 
; ram_0219                              = $0219 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03421E(Wx) 03E03F(Wi) 
; ram_021A                              = $021A ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_021B                              = $021B ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_021C                              = $021C ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 034218(Wx) 03E03F(Wi) 
; ram_021D                              = $021D ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03421E(Wx) 03E03F(Wi) 
; ram_021E                              = $021E ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_021F                              = $021F ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0220                              = $0220 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 034218(Wx) 03E03F(Wi) 
; ram_0221                              = $0221 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03421E(Wx) 03E03F(Wi) 
; ram_0222                              = $0222 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_0223                              = $0223 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0224                              = $0224 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 034218(Wx) 03E03F(Wi) 
; ram_0225                              = $0225 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03421E(Wx) 03E03F(Wi) 
; ram_0226                              = $0226 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_0227                              = $0227 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0228                              = $0228 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 034218(Wx) 03E03F(Wi) 
; ram_0229                              = $0229 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03421E(Wx) 03E03F(Wi) 
; ram_022A                              = $022A ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_022B                              = $022B ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_022C                              = $022C ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 034218(Wx) 03E03F(Wi) 
; ram_022D                              = $022D ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03421E(Wx) 03E03F(Wi) 
; ram_022E                              = $022E ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_022F                              = $022F ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0230                              = $0230 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 034218(Wx) 03E03F(Wi) 
; ram_0231                              = $0231 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03421E(Wx) 03E03F(Wi) 
; ram_0232                              = $0232 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_0233                              = $0233 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0234                              = $0234 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_0235                              = $0235 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_0236                              = $0236 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_0237                              = $0237 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0238                              = $0238 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_0239                              = $0239 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_023A                              = $023A ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_023B                              = $023B ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_023C                              = $023C ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_023D                              = $023D ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_023E                              = $023E ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_023F                              = $023F ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0240                              = $0240 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_0241                              = $0241 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_0242                              = $0242 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_0243                              = $0243 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0244                              = $0244 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_0245                              = $0245 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_0246                              = $0246 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_0247                              = $0247 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0248                              = $0248 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_0249                              = $0249 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_024A                              = $024A ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_024B                              = $024B ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_024C                              = $024C ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_024D                              = $024D ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_024E                              = $024E ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_024F                              = $024F ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0250                              = $0250 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_0251                              = $0251 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_0252                              = $0252 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_0253                              = $0253 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0254                              = $0254 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 034218(Wx) 03E03F(Wi) 
; ram_0255                              = $0255 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03421E(Wx) 03E03F(Wi) 
; ram_0256                              = $0256 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_0257                              = $0257 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0258                              = $0258 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_0259                              = $0259 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_025A                              = $025A ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_025B                              = $025B ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_025C                              = $025C ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_025D                              = $025D ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_025E                              = $025E ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_025F                              = $025F ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0260                              = $0260 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_0261                              = $0261 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_0262                              = $0262 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_0263                              = $0263 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0264                              = $0264 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 034218(Wx) 03E03F(Wi) 
; ram_0265                              = $0265 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03421E(Wx) 03E03F(Wi) 
; ram_0266                              = $0266 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_0267                              = $0267 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0268                              = $0268 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 034218(Wx) 03E03F(Wi) 
; ram_0269                              = $0269 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03421E(Wx) 03E03F(Wi) 
; ram_026A                              = $026A ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_026B                              = $026B ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_026C                              = $026C ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 034218(Wx) 03E03F(Wi) 
; ram_026D                              = $026D ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03421E(Wx) 03E03F(Wi) 
; ram_026E                              = $026E ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_026F                              = $026F ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0270                              = $0270 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_0271                              = $0271 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_0272                              = $0272 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_0273                              = $0273 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0274                              = $0274 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_0275                              = $0275 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_0276                              = $0276 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_0277                              = $0277 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0278                              = $0278 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_0279                              = $0279 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_027A                              = $027A ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_027B                              = $027B ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_027C                              = $027C ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_027D                              = $027D ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_027E                              = $027E ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_027F                              = $027F ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0280                              = $0280 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_0281                              = $0281 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_0282                              = $0282 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_0283                              = $0283 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0284                              = $0284 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_0285                              = $0285 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_0286                              = $0286 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_0287                              = $0287 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0288                              = $0288 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_0289                              = $0289 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_028A                              = $028A ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_028B                              = $028B ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_028C                              = $028C ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_028D                              = $028D ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_028E                              = $028E ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_028F                              = $028F ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0290                              = $0290 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_0291                              = $0291 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_0292                              = $0292 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_0293                              = $0293 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0294                              = $0294 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_0295                              = $0295 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_0296                              = $0296 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_0297                              = $0297 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_0298                              = $0298 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_0299                              = $0299 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_029A                              = $029A ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_029B                              = $029B ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_029C                              = $029C ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_029D                              = $029D ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_029E                              = $029E ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_029F                              = $029F ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_02A0                              = $02A0 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_02A1                              = $02A1 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_02A2                              = $02A2 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_02A3                              = $02A3 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_02A4                              = $02A4 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_02A5                              = $02A5 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_02A6                              = $02A6 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_02A7                              = $02A7 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_02A8                              = $02A8 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_02A9                              = $02A9 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_02AA                              = $02AA ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_02AB                              = $02AB ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_02AC                              = $02AC ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_02AD                              = $02AD ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_02AE                              = $02AE ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_02AF                              = $02AF ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_02B0                              = $02B0 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_02B1                              = $02B1 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_02B2                              = $02B2 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_02B3                              = $02B3 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_02B4                              = $02B4 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_02B5                              = $02B5 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_02B6                              = $02B6 ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_02B7                              = $02B7 ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_02B8                              = $02B8 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_02B9                              = $02B9 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_02BA                              = $02BA ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_02BB                              = $02BB ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_02BC                              = $02BC ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 0341DE(Wx) 03E03F(Wi) 
; ram_02BD                              = $02BD ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 0341E4(Wx) 03E03F(Wi) 
; ram_02BE                              = $02BE ; 0340DA(Wx) 034136(Wx) 034232(Wx) 03E03F(Wi) 
; ram_02BF                              = $02BF ; 0340E7(Wx) 034146(Wx) 03423B(Wx) 03E03F(Wi) 
; ram_02C0                              = $02C0 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 03E03F(Wi) 
; ram_02C1                              = $02C1 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 03E03F(Wi) 
; ram_02C2                              = $02C2 ; 0340DA(Wx) 034136(Wx) 03E03F(Wi) 
; ram_02C3                              = $02C3 ; 0340E7(Wx) 034146(Wx) 03E03F(Wi) 
; ram_02C4                              = $02C4 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 03E03F(Wi) 
; ram_02C5                              = $02C5 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 03E03F(Wi) 
; ram_02C6                              = $02C6 ; 0340DA(Wx) 034136(Wx) 03E03F(Wi) 
; ram_02C7                              = $02C7 ; 0340E7(Wx) 034146(Wx) 03E03F(Wi) 
; ram_02C8                              = $02C8 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 03E03F(Wi) 
; ram_02C9                              = $02C9 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 03E03F(Wi) 
; ram_02CA                              = $02CA ; 0340DA(Wx) 034136(Wx) 03E03F(Wi) 
; ram_02CB                              = $02CB ; 0340E7(Wx) 034146(Wx) 03E03F(Wi) 
; ram_02CC                              = $02CC ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 03E03F(Wi) 
; ram_02CD                              = $02CD ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 03E03F(Wi) 
; ram_02CE                              = $02CE ; 0340DA(Wx) 034136(Wx) 03E03F(Wi) 
; ram_02CF                              = $02CF ; 0340E7(Wx) 034146(Wx) 03E03F(Wi) 
; ram_02D0                              = $02D0 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 03E03F(Wi) 
; ram_02D1                              = $02D1 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 03E03F(Wi) 
; ram_02D2                              = $02D2 ; 0340DA(Wx) 034136(Wx) 03E03F(Wi) 
; ram_02D3                              = $02D3 ; 0340E7(Wx) 034146(Wx) 03E03F(Wi) 
; ram_02D4                              = $02D4 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 03E03F(Wi) 
; ram_02D5                              = $02D5 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 03E03F(Wi) 
; ram_02D6                              = $02D6 ; 0340DA(Wx) 034136(Wx) 03E03F(Wi) 
; ram_02D7                              = $02D7 ; 0340E7(Wx) 034146(Wx) 03E03F(Wi) 
; ram_02D8                              = $02D8 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 03E03F(Wi) 
; ram_02D9                              = $02D9 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 03E03F(Wi) 
; ram_02DA                              = $02DA ; 0340DA(Wx) 034136(Wx) 03E03F(Wi) 
; ram_02DB                              = $02DB ; 0340E7(Wx) 034146(Wx) 03E03F(Wi) 
; ram_02DC                              = $02DC ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 03E03F(Wi) 
; ram_02DD                              = $02DD ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 03E03F(Wi) 
; ram_02DE                              = $02DE ; 0340DA(Wx) 034136(Wx) 03E03F(Wi) 
; ram_02DF                              = $02DF ; 0340E7(Wx) 034146(Wx) 03E03F(Wi) 
; ram_02E0                              = $02E0 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 03E03F(Wi) 
; ram_02E1                              = $02E1 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 03E03F(Wi) 
; ram_02E2                              = $02E2 ; 0340DA(Wx) 034136(Wx) 03E03F(Wi) 
; ram_02E3                              = $02E3 ; 0340E7(Wx) 034146(Wx) 03E03F(Wi) 
; ram_02E4                              = $02E4 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 03E03F(Wi) 
; ram_02E5                              = $02E5 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 03E03F(Wi) 
; ram_02E6                              = $02E6 ; 0340DA(Wx) 034136(Wx) 03E03F(Wi) 
; ram_02E7                              = $02E7 ; 0340E7(Wx) 034146(Wx) 03E03F(Wi) 
; ram_02E8                              = $02E8 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 03E03F(Wi) 
; ram_02E9                              = $02E9 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 03E03F(Wi) 
; ram_02EA                              = $02EA ; 0340DA(Wx) 034136(Wx) 03E03F(Wi) 
; ram_02EB                              = $02EB ; 0340E7(Wx) 034146(Wx) 03E03F(Wi) 
; ram_02EC                              = $02EC ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 03E03F(Wi) 
; ram_02ED                              = $02ED ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 03E03F(Wi) 
; ram_02EE                              = $02EE ; 0340DA(Wx) 034136(Wx) 03E03F(Wi) 
; ram_02EF                              = $02EF ; 0340E7(Wx) 034146(Wx) 03E03F(Wi) 
; ram_02F0                              = $02F0 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 03E03F(Wi) 
; ram_02F1                              = $02F1 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 03E03F(Wi) 
; ram_02F2                              = $02F2 ; 0340DA(Wx) 034136(Wx) 03E03F(Wi) 
; ram_02F3                              = $02F3 ; 0340E7(Wx) 034146(Wx) 03E03F(Wi) 
; ram_02F4                              = $02F4 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 03E03F(Wi) 
; ram_02F5                              = $02F5 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 03E03F(Wi) 
; ram_02F6                              = $02F6 ; 0340DA(Wx) 034136(Wx) 03E03F(Wi) 
; ram_02F7                              = $02F7 ; 0340E7(Wx) 034146(Wx) 03E03F(Wi) 
; ram_02F8                              = $02F8 ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 03E03F(Wi) 
; ram_02F9                              = $02F9 ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 03E03F(Wi) 
; ram_02FA                              = $02FA ; 0340DA(Wx) 034136(Wx) 03E03F(Wi) 
; ram_02FB                              = $02FB ; 0340E7(Wx) 034146(Wx) 03E03F(Wi) 
; ram_02FC                              = $02FC ; 034057(Wx) 034070(Wx) 0340BC(Wx) 034101(Wx) 034116(Wx) 034160(Wx) 034172(Wx) 0341CE(Wx) 03E03F(Wi) 
; ram_02FD                              = $02FD ; 03407A(Wx) 0340C6(Wx) 034120(Wx) 03417C(Wx) 03E03F(Wi) 
; ram_02FE                              = $02FE ; 0340DA(Wx) 034136(Wx) 03E03F(Wi) 
; ram_02FF                              = $02FF ; 0340E7(Wx) 034146(Wx) 03E03F(Wi) 



; 0300-03BF (C0) index is ram_index_ppu_buffer
ram_ppu_buffer                          = $0300 ; 004366(Wx) 004A31(Wx) 005D57(Wx) 005DAC(Wx) 006C5E(Wx) 006CDE(Wx) 006FE5(Wx) 007051(Wx) 007302(Wx) 007610(Wx) 00B9A5(Wx) 03D248(Wx) 03D25A(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03ED26(Wx) 03ED39(Ry) 03ED71(W)  
; ram_0301                              = $0301 ; 004366(Wx) 004A31(Wx) 005D61(Wx) 005DAC(Wx) 006C5E(Wx) 006CD8(Wx) 00B9A5(Wx) 03D266(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED26(Wx) 03ED5A(Ry) 03EDBD(Ry) 
; ram_0302                              = $0302 ; 004366(Wx) 004A31(Wx) 005D61(Wx) 005DAC(Wx) 006C5E(Wx) 006CD8(Wx) 00B9A5(Wx) 03D26C(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03ED26(Wx) 03ED54(Ry) 03EDB7(Ry) 
; ram_0303                              = $0303 ; 000CF2(Wx) 000D09(Wx) 000D21(Wx) 000DC3(Wx) 000F36(Wx) 0013FE(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 003CAA(Wx) 003DDB(Wx) 004366(Wx) 004A31(Wx) 005D61(Wx) 005DAC(Wx) 006C5E(Wx) 006CDE(Wx) 00B7E2(Wx) 00B9A5(Wx) 02B8EB(Wx) 02BA09(Wx) 03225F(Wx) 03228E(Wx) 03CCD4(Wx) 03CCE5(Rx) 03CEA4(Wx) 03CEB5(Rx) 03D272(Wx) 03D296(Rx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E902(Wx) 03E919(Wx) 03ED26(Wx) 03ED81(Ry) 03ED92(Ry) 03EDC5(Ry) 03EF49(Ry) 03FB24(Wx) 
; ram_0304                              = $0304 ; 0005BE(Wx) 000BC4(Rx) 000BCE(Wx) 000CF2(Wx) 000D09(Wx) 000D21(Wx) 0013FE(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 003DE1(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005374(Rx) 005379(Wx) 0053BF(Rx) 0053C4(Wx) 005D61(Wx) 005DAC(Wx) 006C5E(Wx) 006CD8(Wx) 006CDE(Wx) 00B7E6(Wx) 00B9A5(Wx) 02B8EB(Wx) 02BA09(Wx) 03225F(Wx) 03228E(Wx) 03CCD4(Wx) 03CEA4(Wx) 03D279(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E902(Wx) 03E925(Wx) 03ED26(Wx) 03ED39(Ry) 03ED81(Ry) 03ED89(Ry) 03ED96(Ry) 03EDCC(Ry) 03EF4D(Ry) 03FB24(Wx) 
; ram_0305                              = $0305 ; 0005BE(Wx) 000BC4(Rx) 000BCE(Wx) 000CF2(Wx) 000D09(Wx) 000D21(Wx) 0013FE(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005374(Rx) 005379(Wx) 0053BF(Rx) 0053C4(Wx) 005D61(Wx) 005DAC(Wx) 006C5E(Wx) 006CD8(Wx) 006CDE(Wx) 00B7E6(Wx) 00B9A5(Wx) 02B8EB(Wx) 02BA09(Wx) 03225F(Wx) 03228E(Wx) 03CCD4(Wx) 03CCF2(Rx) 03CEA4(Wx) 03CEC2(Rx) 03D280(Wx) 03D2A3(Rx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED81(Ry) 03ED89(Ry) 03EDD3(Ry) 03EF4D(Ry) 03FB24(Wx) 
; ram_0306                              = $0306 ; 0005BE(Wx) 000BC4(Rx) 000BCE(Wx) 000CF2(Wx) 000D09(Wx) 000D21(Wx) 0013FE(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005374(Rx) 005379(Wx) 0053BF(Rx) 0053C4(Wx) 005D61(Wx) 005DAC(Wx) 006C5E(Wx) 006CD8(Wx) 006CDE(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 025CFC(Wx) 02B8EB(Wx) 02BA09(Wx) 03225F(Wx) 03228E(Wx) 0332CC(Wx) 03CB65(Wx) 03CCD4(Wx) 03CEA4(Wx) 03D248(Wx) 03D25A(Wx) 03D287(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E0(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDDA(Ry) 03EF4D(Ry) 03FB24(Wx) 
; ram_0307                              = $0307 ; 000CF2(Wx) 000D09(Wx) 000D21(Wx) 000F39(Wx) 0013FE(Wx) 002D7B(Wx) 002D8F(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005374(Rx) 005379(Wx) 0053BF(Rx) 0053C4(Wx) 005D61(Wx) 005DAC(Wx) 006C5E(Wx) 006CDE(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 025CFC(Wx) 02B8EB(Wx) 02BA09(Wx) 03225F(Wx) 03228E(Wx) 0332CC(Wx) 03CB8C(Wx) 03D266(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDBD(Ry) 03EE0E(Ry) 03EF4D(Ry) 03FB24(Wx) 
; ram_0308                              = $0308 ; 00056E(Wx) 000BC4(Rx) 000BCE(Wx) 000CF2(Wx) 000D09(Wx) 000D21(Wx) 000DD9(Wx) 0013FE(Wx) 002686(Wx) 002D7B(Wx) 002D8F(Wx) 003620(Wx) 003CAA(Wx) 003DDB(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005374(Rx) 005379(Wx) 0053BF(Rx) 0053C4(Wx) 005D61(Wx) 005DAC(Wx) 006C5E(Wx) 006CD8(Wx) 006CDE(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 025CFC(Wx) 02B8EB(Wx) 02BA09(Wx) 03225F(Wx) 03228E(Wx) 0332CC(Wx) 03CB7C(Wx) 03D26C(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03ED92(Ry) 03EDB7(Ry) 03EE08(Ry) 03EF4D(Ry) 03FB24(Wx) 
; ram_0309                              = $0309 ; 00056E(Wx) 000BC4(Rx) 000BCE(Wx) 000CF2(Wx) 000D09(Wx) 000D21(Wx) 00268C(Wx) 002D7B(Wx) 002D8F(Wx) 003626(Wx) 003DE1(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005374(Rx) 005379(Wx) 0053BF(Rx) 0053C4(Wx) 005D61(Wx) 005DAC(Wx) 006C5E(Wx) 006CD8(Wx) 006CDE(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 025CFC(Wx) 02B8EB(Wx) 02BA09(Wx) 03225F(Wx) 03228E(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC33(Rx) 03CCD4(Wx) 03CEA4(Wx) 03D272(Wx) 03D296(Rx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E902(Wx) 03E919(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03ED96(Ry) 03EDC5(Ry) 03EE16(Ry) 03EF49(Ry) 03EF4D(Ry) 
; ram_030A                              = $030A ; 00056E(Wx) 000BC4(Rx) 000BCE(Wx) 000CF2(Wx) 000D09(Wx) 000D21(Wx) 002692(Wx) 002D7B(Wx) 002D8F(Wx) 00362C(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005D61(Wx) 006C5E(Wx) 006CD8(Wx) 006CDE(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 025CFC(Wx) 02B8EB(Wx) 02BA09(Wx) 03225F(Wx) 03228E(Wx) 0332CC(Wx) 03CC05(Wx) 03CCD4(Wx) 03CEA4(Wx) 03D279(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03E902(Wx) 03E925(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED81(Ry) 03ED89(Ry) 03EDCC(Ry) 03EE1D(Ry) 03EF4D(Ry) 
; ram_030B                              = $030B ; 000D2A(Wx) 000F3C(Wx) 0028C9(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005D61(Wx) 006C5E(Wx) 006CDE(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 025CFC(Wx) 02BA09(Wx) 03225F(Wx) 03228E(Wx) 0332CC(Wx) 03CB65(Wx) 03CC0C(Wx) 03CC40(Rx) 03CCD4(Wx) 03CEA4(Wx) 03D248(Wx) 03D25A(Wx) 03D280(Wx) 03D2A3(Rx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDD3(Ry) 03EE24(Ry) 03EF49(Ry) 03EF4D(Ry) 
; ram_030C                              = $030C ; 00056E(Wx) 0005A4(Wx) 000BC4(Rx) 000BCE(Wx) 0028C9(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005D61(Wx) 006C5E(Wx) 006CD8(Wx) 006CDE(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 025CFC(Wx) 02BA09(Wx) 03225F(Wx) 0332CC(Wx) 03CB65(Wx) 03CB8C(Wx) 03CC13(Wx) 03CCD4(Wx) 03CEA4(Wx) 03D248(Wx) 03D25A(Wx) 03D266(Wx) 03D287(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDBD(Ry) 03EDDA(Ry) 03EE0E(Ry) 03EE2B(Ry) 03EF4D(Ry) 
; ram_030D                              = $030D ; 00056E(Wx) 0005A4(Wx) 000BC4(Rx) 000BCE(Wx) 0028C9(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 003DDB(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005374(Rx) 005379(Wx) 005D61(Wx) 006C5E(Wx) 006CD8(Wx) 006CDE(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 025CFC(Wx) 02BA09(Wx) 0332CC(Wx) 03CB7C(Wx) 03CB8C(Wx) 03CBFE(Wx) 03CC33(Rx) 03CD32(Wx) 03CF04(Wx) 03D266(Wx) 03D26C(Wx) 03D2F6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E0(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDBD(Ry) 03EDED(Ry) 03EE08(Ry) 03EE0E(Ry) 03EE32(Ry) 03EF49(Ry) 03EF4D(Ry) 
; ram_030E                              = $030E ; 00056E(Wx) 0005A4(Wx) 000BC4(Rx) 000BCE(Wx) 0028C9(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 003DE1(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005374(Rx) 005379(Wx) 0053BF(Rx) 0053C4(Wx) 005D61(Wx) 006C5E(Wx) 006CD8(Wx) 006CDE(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 025CFC(Wx) 02BA09(Wx) 0332CC(Wx) 03CB7C(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC33(Rx) 03CD38(Wx) 03CF0A(Wx) 03D26C(Wx) 03D272(Wx) 03D296(Rx) 03D2FC(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDC5(Ry) 03EDE7(Ry) 03EE08(Ry) 03EE16(Ry) 03EE39(Ry) 03EF4D(Ry) 
; ram_030F                              = $030F ; 00056E(Wx) 000CF2(Wx) 000D09(Wx) 000D15(Wx) 000D21(Wx) 000F3F(Wx) 0028C9(Wx) 002D7B(Wx) 002D8F(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005374(Rx) 005379(Wx) 0053BF(Rx) 0053C4(Wx) 005D61(Wx) 006C5E(Wx) 006CDE(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 025CFC(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CCE5(Rx) 03CD40(Wx) 03CEA4(Wx) 03CEB5(Rx) 03CF16(Wx) 03D272(Wx) 03D279(Wx) 03D296(Rx) 03D30F(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03E919(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDC5(Ry) 03EDCC(Ry) 03EDF5(Ry) 03EE16(Ry) 03EE1D(Ry) 03EE40(Ry) 03EF4D(Ry) 
; ram_0310                              = $0310 ; 00056E(Wx) 000BC4(Rx) 000BCE(Wx) 000CF2(Wx) 000D09(Wx) 000D15(Wx) 000D21(Wx) 0028C9(Wx) 002D7B(Wx) 002D8F(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005374(Rx) 005379(Wx) 0053BF(Rx) 0053C4(Wx) 005D61(Wx) 006C5E(Wx) 006CD8(Wx) 006CDE(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 025CFC(Wx) 02BA09(Wx) 0332CC(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC40(Rx) 03CCD4(Wx) 03CEA4(Wx) 03D279(Wx) 03D280(Wx) 03D2A3(Rx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03E925(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDCC(Ry) 03EDD3(Ry) 03EE1D(Ry) 03EE24(Ry) 03EE47(Ry) 03EF4D(Ry) 
; ram_0311                              = $0311 ; 00056E(Wx) 000BC4(Rx) 000BCE(Wx) 000CF2(Wx) 000D09(Wx) 000D15(Wx) 000D21(Wx) 0028C9(Wx) 002D7B(Wx) 002D8F(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005374(Rx) 005379(Wx) 0053BF(Rx) 0053C4(Wx) 005D61(Wx) 006C5E(Wx) 006CD8(Wx) 006CDE(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 03228E(Wx) 0332CC(Wx) 03CB65(Wx) 03CBFE(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CCF2(Rx) 03CEA4(Wx) 03CEC2(Rx) 03D248(Wx) 03D25A(Wx) 03D280(Wx) 03D287(Wx) 03D2A3(Rx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDBD(Ry) 03EDD3(Ry) 03EDDA(Ry) 03EE24(Ry) 03EE2B(Ry) 03EE4E(Ry) 03EF4D(Ry) 
; ram_0312                              = $0312 ; 00056E(Wx) 0005A4(Wx) 000BC4(Rx) 000BCE(Wx) 000CF2(Wx) 000D09(Wx) 000D15(Wx) 000D21(Wx) 0028C9(Wx) 002D7B(Wx) 002D8F(Wx) 003DDB(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005374(Rx) 005379(Wx) 0053BF(Rx) 0053C4(Wx) 005D61(Wx) 006C5E(Wx) 006CD8(Wx) 006CDE(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 03228E(Wx) 0332CC(Wx) 03CB65(Wx) 03CB8C(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC13(Wx) 03CC33(Rx) 03CCD4(Wx) 03CEA4(Wx) 03D266(Wx) 03D287(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDBD(Ry) 03EDDA(Ry) 03EE0E(Ry) 03EE2B(Ry) 03EE32(Ry) 03EE55(Ry) 03EF4D(Ry) 
; ram_0313                              = $0313 ; 00056E(Wx) 0005A4(Wx) 000CF2(Wx) 000D09(Wx) 000D15(Wx) 000D21(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 003DE1(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005374(Rx) 005379(Wx) 0053BF(Rx) 0053C4(Wx) 005D6B(Wx) 006C5E(Wx) 006CDE(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 03228E(Wx) 0332CC(Wx) 03CB7C(Wx) 03CB8C(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CCE5(Rx) 03CEA4(Wx) 03CEB5(Rx) 03D266(Wx) 03D26C(Wx) 03D2F6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDBD(Ry) 03EDC5(Ry) 03EDED(Ry) 03EE08(Ry) 03EE0E(Ry) 03EE32(Ry) 03EE39(Ry) 03EE5C(Ry) 03EF4D(Ry) 
; ram_0314                              = $0314 ; 00056E(Wx) 0005A4(Wx) 000CF2(Wx) 000D09(Wx) 000D15(Wx) 000D21(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 004366(Wx) 004A31(Wx) 006C5E(Wx) 006CD8(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 03228E(Wx) 0332CC(Wx) 03CB7C(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CEA4(Wx) 03D26C(Wx) 03D272(Wx) 03D296(Rx) 03D2FC(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDC5(Ry) 03EDCC(Ry) 03EDE7(Ry) 03EE08(Ry) 03EE16(Ry) 03EE39(Ry) 03EE40(Ry) 03EE63(Ry) 03EF4D(Ry) 
; ram_0315                              = $0315 ; 00056E(Wx) 000CF2(Wx) 000D09(Wx) 000D15(Wx) 000D21(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 004366(Wx) 004A31(Wx) 006C5E(Wx) 006CD8(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 02BA09(Wx) 03228E(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CCF2(Rx) 03CEA4(Wx) 03CEC2(Rx) 03D272(Wx) 03D279(Wx) 03D296(Rx) 03D30F(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E902(Wx) 03E919(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03ED92(Ry) 03EDC5(Ry) 03EDCC(Ry) 03EDD3(Ry) 03EDF5(Ry) 03EE16(Ry) 03EE1D(Ry) 03EE40(Ry) 03EE47(Ry) 03EE6A(Ry) 03EF4D(Ry) 
; ram_0316                              = $0316 ; 00056E(Wx) 000CF2(Wx) 000D09(Wx) 000D15(Wx) 000D21(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 004366(Wx) 004A31(Wx) 006C5E(Wx) 006CD8(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 02BA09(Wx) 03228E(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CEA4(Wx) 03D279(Wx) 03D280(Wx) 03D2A3(Rx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03E902(Wx) 03E925(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03ED96(Ry) 03EDCC(Ry) 03EDD3(Ry) 03EDDA(Ry) 03EE1D(Ry) 03EE24(Ry) 03EE47(Ry) 03EE4E(Ry) 03EE71(Ry) 03EF4D(Ry) 
; ram_0317                              = $0317 ; 00056E(Wx) 000D2A(Wx) 002D7B(Wx) 002D8F(Wx) 003999(Wx) 003DDB(Wx) 004366(Wx) 004A31(Wx) 006C5E(Wx) 006CDE(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 03228E(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CEA4(Wx) 03D280(Wx) 03D287(Wx) 03D2A3(Rx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDBD(Ry) 03EDD3(Ry) 03EDDA(Ry) 03EE24(Ry) 03EE2B(Ry) 03EE4E(Ry) 03EE55(Ry) 03EE78(Ry) 03EF49(Ry) 03EF4D(Ry) 
; ram_0318                              = $0318 ; 00056E(Wx) 0005A4(Wx) 000BC4(Rx) 000BCE(Wx) 002D7B(Wx) 002D8F(Wx) 003999(Wx) 003DE1(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005374(Rx) 005379(Wx) 006C5E(Wx) 006CD8(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 03228E(Wx) 0332CC(Wx) 03CB65(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CEA4(Wx) 03D266(Wx) 03D287(Wx) 03D2F6(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDBD(Ry) 03EDDA(Ry) 03EDED(Ry) 03EE2B(Ry) 03EE32(Ry) 03EE55(Ry) 03EE5C(Ry) 03EE7F(Ry) 03EF4D(Ry) 
; ram_0319                              = $0319 ; 00056E(Wx) 0005A4(Wx) 000BC4(Rx) 000BCE(Wx) 002D7B(Wx) 002D8F(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005374(Rx) 005379(Wx) 006C5E(Wx) 006CD8(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 03228E(Wx) 0332CC(Wx) 03CB8C(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CD32(Wx) 03CEA4(Wx) 03CF04(Wx) 03D266(Wx) 03D26C(Wx) 03D2F6(Wx) 03D2FC(Wx) 03D546(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E0(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDBD(Ry) 03EDC5(Ry) 03EDE7(Ry) 03EDED(Ry) 03EE0E(Ry) 03EE32(Ry) 03EE39(Ry) 03EE5C(Ry) 03EE63(Ry) 03EE86(Ry) 03EF4D(Ry) 
; ram_031A                              = $031A ; 00056E(Wx) 0005A4(Wx) 000BC4(Rx) 000BCE(Wx) 002D7B(Wx) 002D8F(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005374(Rx) 005379(Wx) 006C5E(Wx) 006CD8(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 03228E(Wx) 0332CC(Wx) 03CB7C(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CD38(Wx) 03CEA4(Wx) 03CF0A(Wx) 03D26C(Wx) 03D272(Wx) 03D296(Rx) 03D2FC(Wx) 03D30F(Wx) 03D54C(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03ED92(Ry) 03EDB7(Ry) 03EDC5(Ry) 03EDCC(Ry) 03EDE7(Ry) 03EDF5(Ry) 03EE08(Ry) 03EE39(Ry) 03EE40(Ry) 03EE63(Ry) 03EE6A(Ry) 03EE8D(Ry) 03EF4D(Ry) 
; ram_031B                              = $031B ; 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005374(Rx) 005379(Wx) 006C5E(Wx) 006CDE(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CD40(Wx) 03CEA4(Wx) 03CF16(Wx) 03D272(Wx) 03D279(Wx) 03D296(Rx) 03D30F(Wx) 03D554(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03E902(Wx) 03E919(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03ED92(Ry) 03ED96(Ry) 03EDC5(Ry) 03EDCC(Ry) 03EDD3(Ry) 03EDF5(Ry) 03EE16(Ry) 03EE40(Ry) 03EE47(Ry) 03EE6A(Ry) 03EE71(Ry) 03EE94(Ry) 03EF4D(Ry) 
; ram_031C                              = $031C ; 00056E(Wx) 000BC4(Rx) 000BCE(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 003DDB(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005374(Rx) 005379(Wx) 006C5E(Wx) 006CD8(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CEA4(Wx) 03D279(Wx) 03D280(Wx) 03D2A3(Rx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E902(Wx) 03E925(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03ED96(Ry) 03EDCC(Ry) 03EDD3(Ry) 03EDDA(Ry) 03EE1D(Ry) 03EE47(Ry) 03EE4E(Ry) 03EE71(Ry) 03EE78(Ry) 03EE9B(Ry) 03EF4D(Ry) 
; ram_031D                              = $031D ; 00056E(Wx) 000BC4(Rx) 000BCE(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 003DE1(Wx) 004366(Wx) 004A31(Wx) 005366(Wx) 005374(Rx) 005379(Wx) 006C5E(Wx) 006CD8(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CD32(Wx) 03D25A(Wx) 03D280(Wx) 03D287(Wx) 03D2A3(Rx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDBD(Ry) 03EDD3(Ry) 03EDDA(Ry) 03EDED(Ry) 03EE24(Ry) 03EE4E(Ry) 03EE55(Ry) 03EE78(Ry) 03EE7F(Ry) 03EEA2(Ry) 03EF4D(Ry) 
; ram_031E                              = $031E ; 00056E(Wx) 0005A4(Wx) 000BC4(Rx) 000BCE(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 004366(Wx) 004A31(Wx) 006C5E(Wx) 006CD8(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CD38(Wx) 03D266(Wx) 03D287(Wx) 03D2F6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDBD(Ry) 03EDDA(Ry) 03EDE7(Ry) 03EDED(Ry) 03EE2B(Ry) 03EE55(Ry) 03EE5C(Ry) 03EE7F(Ry) 03EE86(Ry) 03EEA9(Ry) 03EF4D(Ry) 
; ram_031F                              = $031F ; 0005A4(Wx) 000CF2(Wx) 0028C9(Wx) 002D7B(Wx) 002D8F(Wx) 004366(Wx) 004A31(Wx) 006C5E(Wx) 006CDE(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 00DFE5(Rx) 00DFEC(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CCE5(Rx) 03CD40(Wx) 03CEA4(Wx) 03CEB5(Rx) 03D266(Wx) 03D26C(Wx) 03D2F6(Wx) 03D2FC(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E0(Wx) 03E902(Wx) 03E919(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03ED92(Ry) 03EDB7(Ry) 03EDBD(Ry) 03EDC5(Ry) 03EDE7(Ry) 03EDED(Ry) 03EDF5(Ry) 03EE32(Ry) 03EE5C(Ry) 03EE63(Ry) 03EE86(Ry) 03EE8D(Ry) 03EEB0(Ry) 03EF4D(Ry) 
; ram_0320                              = $0320 ; 0005A4(Wx) 000BC4(Rx) 000BCE(Wx) 000CF2(Wx) 0028C9(Wx) 002D7B(Wx) 002D8F(Wx) 004366(Wx) 004A31(Wx) 006C5E(Wx) 006CD8(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 00DFE5(Rx) 00DFEC(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CEA4(Wx) 03D26C(Wx) 03D272(Wx) 03D296(Rx) 03D2FC(Wx) 03D30F(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03E925(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03ED92(Ry) 03ED96(Ry) 03EDB7(Ry) 03EDC5(Ry) 03EDCC(Ry) 03EDE7(Ry) 03EDF5(Ry) 03EE39(Ry) 03EE63(Ry) 03EE6A(Ry) 03EE8D(Ry) 03EE94(Ry) 03EEB7(Ry) 03EF4D(Ry) 
; ram_0321                              = $0321 ; 0005A4(Wx) 000BC4(Rx) 000BCE(Wx) 000CF2(Wx) 000D21(Wx) 0028C9(Wx) 002D7B(Wx) 002D8F(Wx) 003DDB(Wx) 004366(Wx) 004A31(Wx) 006C5E(Wx) 006CD8(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 00DFE5(Rx) 00DFEC(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CCF2(Rx) 03CEA4(Wx) 03CEC2(Rx) 03D272(Wx) 03D279(Wx) 03D30F(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03ED96(Ry) 03EDBD(Ry) 03EDC5(Ry) 03EDCC(Ry) 03EDD3(Ry) 03EDF5(Ry) 03EE40(Ry) 03EE6A(Ry) 03EE71(Ry) 03EE94(Ry) 03EE9B(Ry) 03EEBE(Ry) 03EF4D(Ry) 
; ram_0322                              = $0322 ; 0005A4(Wx) 000BC4(Rx) 000BCE(Wx) 000CF2(Wx) 000D21(Wx) 0028C9(Wx) 002D7B(Wx) 002D8F(Wx) 003DE1(Wx) 004366(Wx) 004A31(Wx) 006C5E(Wx) 006CD8(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 00DFE5(Rx) 00DFEC(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CEA4(Wx) 03D248(Wx) 03D25A(Wx) 03D279(Wx) 03D280(Wx) 03D2A3(Rx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDCC(Ry) 03EDD3(Ry) 03EDDA(Ry) 03EE47(Ry) 03EE71(Ry) 03EE78(Ry) 03EE9B(Ry) 03EEA2(Ry) 03EEC5(Ry) 03EF4D(Ry) 
; ram_0323                              = $0323 ; 0005A4(Wx) 000CF2(Wx) 000D21(Wx) 0028C9(Wx) 002D7B(Wx) 002D8F(Wx) 004366(Wx) 004A31(Wx) 006C5E(Wx) 006CDE(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 00DFE5(Rx) 00DFEC(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CCE5(Rx) 03D266(Wx) 03D280(Wx) 03D287(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E0(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDBD(Ry) 03EDC5(Ry) 03EDD3(Ry) 03EDDA(Ry) 03EE4E(Ry) 03EE78(Ry) 03EE7F(Ry) 03EEA2(Ry) 03EEA9(Ry) 03EECC(Ry) 03EF4D(Ry) 
; ram_0324                              = $0324 ; 0005A4(Wx) 000BC4(Rx) 000BCE(Wx) 000CF2(Wx) 000D21(Wx) 0028C9(Wx) 002D7B(Wx) 002D8F(Wx) 004366(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 00DFE5(Rx) 00DFEC(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03D266(Wx) 03D26C(Wx) 03D287(Wx) 03D2F6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03ED92(Ry) 03EDB7(Ry) 03EDBD(Ry) 03EDCC(Ry) 03EDDA(Ry) 03EDED(Ry) 03EE55(Ry) 03EE7F(Ry) 03EE86(Ry) 03EEA9(Ry) 03EEB0(Ry) 03EED3(Ry) 03EF4D(Ry) 
; ram_0325                              = $0325 ; 0005A4(Wx) 000BC4(Rx) 000BCE(Wx) 000CF2(Wx) 000D21(Wx) 0028C9(Wx) 002D7B(Wx) 002D8F(Wx) 004366(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 00DFE5(Rx) 00DFEC(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CCF2(Rx) 03CEA4(Wx) 03D26C(Wx) 03D272(Wx) 03D296(Rx) 03D2F6(Wx) 03D2FC(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03E919(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03ED92(Ry) 03ED96(Ry) 03EDB7(Ry) 03EDC5(Ry) 03EDD3(Ry) 03EDE7(Ry) 03EDED(Ry) 03EE5C(Ry) 03EE86(Ry) 03EE8D(Ry) 03EEB0(Ry) 03EEB7(Ry) 03EEDA(Ry) 03EF4D(Ry) 
; ram_0326                              = $0326 ; 0005A4(Wx) 000BC4(Rx) 000BCE(Wx) 000CF2(Wx) 000D21(Wx) 0028C9(Wx) 002D7B(Wx) 002D8F(Wx) 003DDB(Wx) 004366(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 00DFE5(Rx) 00DFEC(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CEA4(Wx) 03D272(Wx) 03D279(Wx) 03D2FC(Wx) 03D30F(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03E925(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03ED96(Ry) 03EDC5(Ry) 03EDCC(Ry) 03EDDA(Ry) 03EDE7(Ry) 03EDF5(Ry) 03EE63(Ry) 03EE8D(Ry) 03EE94(Ry) 03EEB7(Ry) 03EEBE(Ry) 03EEE1(Ry) 03EF4D(Ry) 
; ram_0327                              = $0327 ; 0005A4(Wx) 000D2A(Wx) 002D7B(Wx) 002D8F(Wx) 003999(Wx) 003DE1(Wx) 004366(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 00DFE5(Rx) 00DFEC(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CEA4(Wx) 03D279(Wx) 03D280(Wx) 03D2A3(Rx) 03D30F(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDBD(Ry) 03EDCC(Ry) 03EDD3(Ry) 03EDF5(Ry) 03EE6A(Ry) 03EE94(Ry) 03EE9B(Ry) 03EEBE(Ry) 03EEC5(Ry) 03EEE8(Ry) 03EF49(Ry) 03EF4D(Ry) 
; ram_0328                              = $0328 ; 0005A4(Wx) 002D7B(Wx) 002D8F(Wx) 003999(Wx) 004366(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 00DFE5(Rx) 00DFEC(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CB65(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CEA4(Wx) 03D248(Wx) 03D25A(Wx) 03D280(Wx) 03D287(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDD3(Ry) 03EDDA(Ry) 03EE71(Ry) 03EE9B(Ry) 03EEA2(Ry) 03EEC5(Ry) 03EECC(Ry) 03EEEF(Ry) 03EF4D(Ry) 
; ram_0329                              = $0329 ; 0005A4(Wx) 002D7B(Wx) 002D8F(Wx) 004366(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 00DFE5(Rx) 00DFEC(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CB8C(Wx) 03CBA2(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CF04(Wx) 03D266(Wx) 03D287(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDBD(Ry) 03EDC5(Ry) 03EDDA(Ry) 03EDED(Ry) 03EE0E(Ry) 03EE78(Ry) 03EEA2(Ry) 03EEA9(Ry) 03EECC(Ry) 03EED3(Ry) 03EF06(Ry) 03EF4D(Ry) 
; ram_032A                              = $032A ; 0005A4(Wx) 002D7B(Wx) 002D8F(Wx) 004366(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 00DFE5(Rx) 00DFEC(Wx) 017ED0(Wx) 017EEC(Wx) 025CFC(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CB7C(Wx) 03CBA7(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CF0A(Wx) 03D266(Wx) 03D26C(Wx) 03D2F6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03ED92(Ry) 03EDB7(Ry) 03EDBD(Ry) 03EDCC(Ry) 03EDE7(Ry) 03EDED(Ry) 03EE08(Ry) 03EE7F(Ry) 03EEA9(Ry) 03EEB0(Ry) 03EED3(Ry) 03EEDA(Ry) 03EF00(Ry) 03EF4D(Ry) 
; ram_032B                              = $032B ; 000CF2(Wx) 002D7B(Wx) 002D8F(Wx) 003DDB(Wx) 004366(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 017ED0(Wx) 025CFC(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC26(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CCE5(Rx) 03CEA4(Wx) 03CEB5(Rx) 03CF16(Wx) 03D26C(Wx) 03D272(Wx) 03D296(Rx) 03D2FC(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E902(Wx) 03E919(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03ED96(Ry) 03EDB7(Ry) 03EDC5(Ry) 03EDD3(Ry) 03EDE7(Ry) 03EDF5(Ry) 03EE16(Ry) 03EE86(Ry) 03EEB0(Ry) 03EEB7(Ry) 03EEDA(Ry) 03EEE1(Ry) 03EF0E(Ry) 03EF4D(Ry) 
; ram_032C                              = $032C ; 0005A4(Wx) 000CF2(Wx) 002D7B(Wx) 002D8F(Wx) 003DE1(Wx) 004366(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC26(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CEA4(Wx) 03D272(Wx) 03D279(Wx) 03D296(Rx) 03D30F(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03E902(Wx) 03E925(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED81(Ry) 03ED89(Ry) 03EDC5(Ry) 03EDCC(Ry) 03EDDA(Ry) 03EDF5(Ry) 03EE1D(Ry) 03EE8D(Ry) 03EEB7(Ry) 03EEBE(Ry) 03EEE1(Ry) 03EEE8(Ry) 03EF15(Ry) 03EF4D(Ry) 
; ram_032D                              = $032D ; 0005A4(Wx) 000CF2(Wx) 002D7B(Wx) 002D8F(Wx) 004366(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC26(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CCF2(Rx) 03CD32(Wx) 03CEA4(Wx) 03CEC2(Rx) 03D279(Wx) 03D280(Wx) 03D2A3(Rx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E0(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDBD(Ry) 03EDCC(Ry) 03EDD3(Ry) 03EDED(Ry) 03EE24(Ry) 03EE94(Ry) 03EEBE(Ry) 03EEC5(Ry) 03EEE8(Ry) 03EEEF(Ry) 03EF1C(Ry) 03EF4D(Ry) 
; ram_032E                              = $032E ; 0005A4(Wx) 000CF2(Wx) 002D7B(Wx) 002D8F(Wx) 004366(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC26(Wx) 03CC40(Rx) 03CCD4(Wx) 03CD38(Wx) 03CEA4(Wx) 03D280(Wx) 03D287(Wx) 03D2A3(Rx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDD3(Ry) 03EDDA(Ry) 03EDE7(Ry) 03EE2B(Ry) 03EE9B(Ry) 03EEC5(Ry) 03EECC(Ry) 03EEEF(Ry) 03EF23(Ry) 03EF4D(Ry) 
; ram_032F                              = $032F ; 0005A4(Wx) 000CF2(Wx) 002D7B(Wx) 002D8F(Wx) 004366(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 00B9A5(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CBA2(Wx) 03CBFE(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC26(Wx) 03CC33(Rx) 03CC40(Rx) 03CD40(Wx) 03CEA4(Wx) 03CEB5(Rx) 03D266(Wx) 03D287(Wx) 03D2F6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDBD(Ry) 03EDC5(Ry) 03EDDA(Ry) 03EDED(Ry) 03EDF5(Ry) 03EE32(Ry) 03EEA2(Ry) 03EECC(Ry) 03EED3(Ry) 03EF06(Ry) 03EF2A(Ry) 03EF4D(Ry) 
; ram_0330                              = $0330 ; 0005A4(Wx) 000BC4(Rx) 000BCE(Wx) 000CF2(Wx) 002D7B(Wx) 002D8F(Wx) 003DDB(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CBA7(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC13(Wx) 03CC26(Wx) 03CC33(Rx) 03CEA4(Wx) 03D266(Wx) 03D26C(Wx) 03D2FC(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDBD(Ry) 03EDCC(Ry) 03EDE7(Ry) 03EE39(Ry) 03EEA9(Ry) 03EED3(Ry) 03EEDA(Ry) 03EF00(Ry) 03EF31(Ry) 03EF4D(Ry) 
; ram_0331                              = $0331 ; 000BC4(Rx) 000BCE(Wx) 000CF2(Wx) 002D7B(Wx) 002D8F(Wx) 003DE1(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC26(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CEA4(Wx) 03CEC2(Rx) 03D26C(Wx) 03D272(Wx) 03D296(Rx) 03D30F(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E902(Wx) 03ED26(Wx) 03ED5A(Ry) 03ED81(Ry) 03EDB7(Ry) 03EDBD(Ry) 03EDC5(Ry) 03EDD3(Ry) 03EDF5(Ry) 03EE40(Ry) 03EEB0(Ry) 03EEDA(Ry) 03EEE1(Ry) 03EF0E(Ry) 03EF38(Ry) 03EF4D(Ry) 
; ram_0332                              = $0332 ; 000BC4(Rx) 000BCE(Wx) 000CF2(Wx) 002D7B(Wx) 002D8F(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 02BA09(Wx) 0332CC(Wx) 03CC05(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC26(Wx) 03CC40(Rx) 03CCD4(Wx) 03CEA4(Wx) 03D272(Wx) 03D279(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDC5(Ry) 03EDCC(Ry) 03EDDA(Ry) 03EE47(Ry) 03EEB7(Ry) 03EEE1(Ry) 03EEE8(Ry) 03EF15(Ry) 03EF3F(Ry) 03EF4D(Ry) 
; ram_0333                              = $0333 ; 000D2A(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC0C(Wx) 03CC13(Wx) 03CC26(Wx) 03CC33(Rx) 03CC40(Rx) 03CCD4(Wx) 03CCE5(Rx) 03CEA4(Wx) 03D279(Wx) 03D280(Wx) 03D2A3(Rx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDBD(Ry) 03EDC5(Ry) 03EDCC(Ry) 03EDD3(Ry) 03EE4E(Ry) 03EEBE(Ry) 03EEE8(Ry) 03EEEF(Ry) 03EF1C(Ry) 03EF4D(Ry) 03FA95(Wx) 
; ram_0334                              = $0334 ; 0005A4(Wx) 000BC4(Rx) 000BCE(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CBA2(Wx) 03CC05(Wx) 03CC13(Wx) 03CC26(Wx) 03CCD4(Wx) 03CEA4(Wx) 03D280(Wx) 03D287(Wx) 03D525(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDCC(Ry) 03EDD3(Ry) 03EDDA(Ry) 03EE55(Ry) 03EEC5(Ry) 03EEEF(Ry) 03EF06(Ry) 03EF23(Ry) 03EF4D(Ry) 03FA95(Wx) 
; ram_0335                              = $0335 ; 0005A4(Wx) 000BC4(Rx) 000BCE(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 003DDB(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CBA2(Wx) 03CBA7(Wx) 03CC0C(Wx) 03CC26(Wx) 03CC40(Rx) 03CCD4(Wx) 03CCF2(Rx) 03CD32(Wx) 03CEA4(Wx) 03CF04(Wx) 03D266(Wx) 03D287(Wx) 03D2F6(Wx) 03D546(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDBD(Ry) 03EDC5(Ry) 03EDD3(Ry) 03EDDA(Ry) 03EDED(Ry) 03EE5C(Ry) 03EECC(Ry) 03EF00(Ry) 03EF06(Ry) 03EF2A(Ry) 03EF4D(Ry) 03FA95(Wx) 
; ram_0336                              = $0336 ; 0005A4(Wx) 000BC4(Rx) 000BCE(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 003DE1(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 028FB3(Wx) 02BA09(Wx) 0332CC(Wx) 03CBA7(Wx) 03CC13(Wx) 03CC26(Wx) 03CCD4(Wx) 03CD38(Wx) 03CEA4(Wx) 03CF0A(Wx) 03D26C(Wx) 03D2F6(Wx) 03D2FC(Wx) 03D54C(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E0(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDCC(Ry) 03EDDA(Ry) 03EDE7(Ry) 03EDED(Ry) 03EE63(Ry) 03EED3(Ry) 03EF00(Ry) 03EF0E(Ry) 03EF31(Ry) 03EF4D(Ry) 03FA95(Wx) 
; ram_0337                              = $0337 ; 002D7B(Wx) 002D8F(Wx) 004A31(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC26(Wx) 03CC33(Rx) 03CD40(Wx) 03CEA4(Wx) 03CF16(Wx) 03D272(Wx) 03D296(Rx) 03D2FC(Wx) 03D30F(Wx) 03D554(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDBD(Ry) 03EDC5(Ry) 03EDD3(Ry) 03EDE7(Ry) 03EDF5(Ry) 03EE6A(Ry) 03EEDA(Ry) 03EF0E(Ry) 03EF15(Ry) 03EF38(Ry) 03EF4D(Ry) 03FA95(Wx) 
; ram_0338                              = $0338 ; 000BC4(Rx) 000BCE(Wx) 002D7B(Wx) 002D8F(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 02BA09(Wx) 0332CC(Wx) 03CC05(Wx) 03CC26(Wx) 03CEA4(Wx) 03D279(Wx) 03D30F(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDCC(Ry) 03EDDA(Ry) 03EDF5(Ry) 03EE71(Ry) 03EEE1(Ry) 03EF15(Ry) 03EF1C(Ry) 03EF3F(Ry) 03EF4D(Ry) 03FA95(Wx) 
; ram_0339                              = $0339 ; 000BC4(Rx) 000BCE(Wx) 002D7B(Wx) 002D8F(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 02BA09(Wx) 0332CC(Wx) 03CC0C(Wx) 03CC26(Wx) 03CC40(Rx) 03CCD4(Wx) 03D280(Wx) 03D2A3(Rx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDBD(Ry) 03EDC5(Ry) 03EDD3(Ry) 03EE78(Ry) 03EEE8(Ry) 03EF1C(Ry) 03EF23(Ry) 03EF4D(Ry) 
; ram_033A                              = $033A ; 000BC4(Rx) 000BCE(Wx) 002D7B(Wx) 002D8F(Wx) 003DDB(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 02BA09(Wx) 0332CC(Wx) 03CC13(Wx) 03CC26(Wx) 03CCD4(Wx) 03D287(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDCC(Ry) 03EDDA(Ry) 03EE7F(Ry) 03EEEF(Ry) 03EF23(Ry) 03EF2A(Ry) 03EF4D(Ry) 
; ram_033B                              = $033B ; 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 003DE1(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 02BA09(Wx) 0332CC(Wx) 03CBA2(Wx) 03CBFE(Wx) 03CC26(Wx) 03CCD4(Wx) 03CCE5(Rx) 03CEA4(Wx) 03CEB5(Rx) 03D266(Wx) 03D2F6(Wx) 03D525(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03EDBD(Ry) 03EDC5(Ry) 03EDD3(Ry) 03EDED(Ry) 03EE86(Ry) 03EF06(Ry) 03EF2A(Ry) 03EF31(Ry) 03EF4D(Ry) 
; ram_033C                              = $033C ; 000BC4(Rx) 000BCE(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 02BA09(Wx) 0332CC(Wx) 03CBA7(Wx) 03CC05(Wx) 03CC26(Wx) 03CCD4(Wx) 03CEA4(Wx) 03D26C(Wx) 03D2FC(Wx) 03D525(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDCC(Ry) 03EDDA(Ry) 03EDE7(Ry) 03EE8D(Ry) 03EF00(Ry) 03EF31(Ry) 03EF38(Ry) 03EF4D(Ry) 
; ram_033D                              = $033D ; 000BC4(Rx) 000BCE(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 02BA09(Wx) 0332CC(Wx) 03CC0C(Wx) 03CC26(Wx) 03CCD4(Wx) 03CCF2(Rx) 03CD32(Wx) 03CEA4(Wx) 03CEC2(Rx) 03D272(Wx) 03D30F(Wx) 03D525(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E0(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDC5(Ry) 03EDD3(Ry) 03EDED(Ry) 03EDF5(Ry) 03EE94(Ry) 03EF0E(Ry) 03EF38(Ry) 03EF3F(Ry) 03EF4D(Ry) 
; ram_033E                              = $033E ; 000BC4(Rx) 000BCE(Wx) 002D7B(Wx) 002D8F(Wx) 0039D0(Wx) 008CB2(Wx) 009703(Wx) 00B7E6(Wx) 02BA09(Wx) 0332CC(Wx) 03CC13(Wx) 03CC26(Wx) 03CCD4(Wx) 03CD38(Wx) 03CEA4(Wx) 03D279(Wx) 03D525(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDCC(Ry) 03EDDA(Ry) 03EDE7(Ry) 03EE9B(Ry) 03EF15(Ry) 03EF3F(Ry) 03EF4D(Ry) 
; ram_033F                              = $033F ; 002D7B(Wx) 002D8F(Wx) 003DDB(Wx) 008CB2(Wx) 009703(Wx) 02BA09(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC26(Wx) 03CD40(Wx) 03D280(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03EDBD(Ry) 03EDD3(Ry) 03EDF5(Ry) 03EEA2(Ry) 03EF1C(Ry) 
; ram_0340                              = $0340 ; 002D7B(Wx) 002D8F(Wx) 003DE1(Wx) 009703(Wx) 02BA09(Wx) 0332CC(Wx) 03CC05(Wx) 03CC26(Wx) 03D287(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDDA(Ry) 03EEA9(Ry) 03EF23(Ry) 
; ram_0341                              = $0341 ; 002D7B(Wx) 002D8F(Wx) 009703(Wx) 02BA09(Wx) 0332CC(Wx) 03CC0C(Wx) 03CC26(Wx) 03CCD4(Wx) 03CEA4(Wx) 03D2F6(Wx) 03D525(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDC5(Ry) 03EDED(Ry) 03EEB0(Ry) 03EF2A(Ry) 
; ram_0342                              = $0342 ; 002D7B(Wx) 002D8F(Wx) 009703(Wx) 02BA09(Wx) 0332CC(Wx) 03CC13(Wx) 03CC26(Wx) 03CCD4(Wx) 03CEA4(Wx) 03D2FC(Wx) 03D525(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03E902(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDCC(Ry) 03EDE7(Ry) 03EEB7(Ry) 03EF31(Ry) 
; ram_0343                              = $0343 ; 002D8F(Wx) 0039D0(Wx) 009703(Wx) 0332CC(Wx) 03CBFE(Wx) 03CC26(Wx) 03CCD4(Wx) 03CEA4(Wx) 03D30F(Wx) 03D525(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDD3(Ry) 03EDF5(Ry) 03EEBE(Ry) 03EF38(Ry) 
; ram_0344                              = $0344 ; 000BC4(Rx) 000BCE(Wx) 0039D0(Wx) 009703(Wx) 0332CC(Wx) 03CC05(Wx) 03CC26(Wx) 03CCD4(Wx) 03CEA4(Wx) 03D525(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED81(Ry) 03ED89(Ry) 03EDDA(Ry) 03EEC5(Ry) 03EF3F(Ry) 
; ram_0345                              = $0345 ; 000BC4(Rx) 000BCE(Wx) 0039D0(Wx) 009703(Wx) 0332CC(Wx) 03CC0C(Wx) 03CF04(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED26(Wx) 03ED39(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDBD(Ry) 03EDED(Ry) 03EECC(Ry) 
; ram_0346                              = $0346 ; 000BC4(Rx) 000BCE(Wx) 0039D0(Wx) 009703(Wx) 0332CC(Wx) 03CC13(Wx) 03CF0A(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDE7(Ry) 03EED3(Ry) 
; ram_0347                              = $0347 ; 003999(Wx) 009703(Wx) 0332CC(Wx) 03CBFE(Wx) 03CCD4(Wx) 03CCE5(Rx) 03CEA4(Wx) 03CEB5(Rx) 03CF16(Wx) 03D525(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED39(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDC5(Ry) 03EDF5(Ry) 03EEDA(Ry) 
; ram_0348                              = $0348 ; 000BC4(Rx) 000BCE(Wx) 003999(Wx) 009703(Wx) 0332CC(Wx) 03CC05(Wx) 03CCD4(Wx) 03CEA4(Wx) 03D525(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDCC(Ry) 03EEE1(Ry) 
; ram_0349                              = $0349 ; 000BC4(Rx) 000BCE(Wx) 009703(Wx) 0332CC(Wx) 03CC0C(Wx) 03CCD4(Wx) 03CCF2(Rx) 03CEA4(Wx) 03CEC2(Rx) 03D525(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED26(Wx) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03EDBD(Ry) 03EDD3(Ry) 03EEE8(Ry) 
; ram_034A                              = $034A ; 000BC4(Rx) 000BCE(Wx) 0332CC(Wx) 03CC13(Wx) 03CCD4(Wx) 03CEA4(Wx) 03D525(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDDA(Ry) 03EEEF(Ry) 
; ram_034B                              = $034B ; 0039D0(Wx) 0332CC(Wx) 03CBA2(Wx) 03CEA4(Wx) 03CEB5(Rx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED26(Wx) 03ED5A(Ry) 03ED81(Ry) 03EDBD(Ry) 03EDC5(Ry) 03EF06(Ry) 
; ram_034C                              = $034C ; 000BC4(Rx) 000BCE(Wx) 0039D0(Wx) 0332CC(Wx) 03CBA7(Wx) 03CEA4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDCC(Ry) 03EF00(Ry) 
; ram_034D                              = $034D ; 000BC4(Rx) 000BCE(Wx) 0039D0(Wx) 0332CC(Wx) 03CC26(Wx) 03CCD4(Wx) 03CEA4(Wx) 03CEC2(Rx) 03D525(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED5A(Ry) 03ED81(Ry) 03EDC5(Ry) 03EDD3(Ry) 03EF0E(Ry) 
; ram_034E                              = $034E ; 000BC4(Rx) 000BCE(Wx) 0039D0(Wx) 0332CC(Wx) 03CC26(Wx) 03CCD4(Wx) 03CEA4(Wx) 03D525(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED81(Ry) 03ED89(Ry) 03EDCC(Ry) 03EDDA(Ry) 03EF15(Ry) 
; ram_034F                              = $034F ; 0332CC(Wx) 03CC26(Wx) 03CCD4(Wx) 03CEA4(Wx) 03D525(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED26(Wx) 03ED39(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDBD(Ry) 03EDD3(Ry) 03EF1C(Ry) 
; ram_0350                              = $0350 ; 000BC4(Rx) 000BCE(Wx) 0332CC(Wx) 03CC26(Wx) 03CCD4(Wx) 03CEA4(Wx) 03D525(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDDA(Ry) 03EF23(Ry) 
; ram_0351                              = $0351 ; 000BC4(Rx) 000BCE(Wx) 0332CC(Wx) 03CC26(Wx) 03CD32(Wx) 03CEA4(Wx) 03CF04(Wx) 03D546(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED26(Wx) 03ED39(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDC5(Ry) 03EDED(Ry) 03EF2A(Ry) 
; ram_0352                              = $0352 ; 000BC4(Rx) 000BCE(Wx) 0332CC(Wx) 03CC26(Wx) 03CD38(Wx) 03CEA4(Wx) 03CF0A(Wx) 03D54C(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDCC(Ry) 03EDE7(Ry) 03EF31(Ry) 
; ram_0353                              = $0353 ; 0332CC(Wx) 03CC26(Wx) 03CD40(Wx) 03CEA4(Wx) 03CF16(Wx) 03D554(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED54(Ry) 03ED81(Ry) 03EDD3(Ry) 03EDF5(Ry) 03EF38(Ry) 
; ram_0354                              = $0354 ; 03CC26(Wx) 03CEA4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03ED26(Wx) 03ED39(Ry) 03ED81(Ry) 03ED89(Ry) 03EDDA(Ry) 03EF3F(Ry) 
; ram_0355                              = $0355 ; 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED26(Wx) 03ED39(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDBD(Ry) 
; ram_0356                              = $0356 ; 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED5A(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 
; ram_0357                              = $0357 ; 003999(Wx) 03CCD4(Wx) 03CCE5(Rx) 03CEA4(Wx) 03CEB5(Rx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E919(Wx) 03ED26(Wx) 03ED54(Ry) 03ED81(Ry) 03EDC5(Ry) 
; ram_0358                              = $0358 ; 003999(Wx) 03CCD4(Wx) 03CEA4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E925(Wx) 03ED26(Wx) 03ED39(Ry) 03ED81(Ry) 03ED89(Ry) 03EDCC(Ry) 
; ram_0359                              = $0359 ; 03CCD4(Wx) 03CCF2(Rx) 03CEA4(Wx) 03CEC2(Rx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED81(Ry) 03EDD3(Ry) 
; ram_035A                              = $035A ; 03CCD4(Wx) 03CEA4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03ED26(Wx) 03ED39(Ry) 03ED81(Ry) 03ED89(Ry) 03EDDA(Ry) 
; ram_035B                              = $035B ; 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED26(Wx) 03ED5A(Ry) 03ED81(Ry) 03EDBD(Ry) 
; ram_035C                              = $035C ; 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 
; ram_035D                              = $035D ; 03CCD4(Wx) 03CEA4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E919(Wx) 03ED26(Wx) 03ED5A(Ry) 03ED81(Ry) 03EDC5(Ry) 
; ram_035E                              = $035E ; 03CCD4(Wx) 03CEA4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E925(Wx) 03ED26(Wx) 03ED54(Ry) 03ED81(Ry) 03EDCC(Ry) 
; ram_035F                              = $035F ; 03CCD4(Wx) 03CEA4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED81(Ry) 03EDD3(Ry) 
; ram_0360                              = $0360 ; 03CCD4(Wx) 03CEA4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03ED26(Wx) 03ED39(Ry) 03ED81(Ry) 03ED89(Ry) 03EDDA(Ry) 
; ram_0361                              = $0361 ; 03CF04(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED26(Wx) 03ED5A(Ry) 03ED81(Ry) 03EDBD(Ry) 03EDED(Ry) 
; ram_0362                              = $0362 ; 03CF0A(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03ED26(Wx) 03ED54(Ry) 03ED81(Ry) 03EDB7(Ry) 03EDE7(Ry) 
; ram_0363                              = $0363 ; 03CCD4(Wx) 03CCE5(Rx) 03CF16(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E919(Wx) 03ED26(Wx) 03ED39(Ry) 03ED81(Ry) 03ED89(Ry) 03EDC5(Ry) 03EDF5(Ry) 
; ram_0364                              = $0364 ; 03CCD4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E925(Wx) 03ED26(Wx) 03ED39(Ry) 03ED5A(Ry) 03ED81(Ry) 03EDCC(Ry) 
; ram_0365                              = $0365 ; 03CCD4(Wx) 03CCF2(Rx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED26(Wx) 03ED54(Ry) 03ED81(Ry) 03EDBD(Ry) 03EDD3(Ry) 
; ram_0366                              = $0366 ; 03CCD4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03ED26(Wx) 03ED39(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 03EDDA(Ry) 
; ram_0367                              = $0367 ; 03CEA4(Wx) 03CEB5(Rx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED26(Wx) 03ED5A(Ry) 03ED81(Ry) 03EDBD(Ry) 03EDC5(Ry) 
; ram_0368                              = $0368 ; 03CEA4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03ED26(Wx) 03ED54(Ry) 03ED81(Ry) 03EDB7(Ry) 03EDCC(Ry) 
; ram_0369                              = $0369 ; 000CF2(Wx) 000D09(Wx) 03CCD4(Wx) 03CEA4(Wx) 03CEC2(Rx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED81(Ry) 03EDC5(Ry) 03EDD3(Ry) 
; ram_036A                              = $036A ; 000CF2(Wx) 000D21(Wx) 03CCD4(Wx) 03CEA4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED39(Ry) 03ED81(Ry) 03ED89(Ry) 03EDCC(Ry) 03EDDA(Ry) 
; ram_036B                              = $036B ; 000CF2(Wx) 000D09(Wx) 000D21(Wx) 03CCD4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED81(Ry) 03EDBD(Ry) 03EDD3(Ry) 
; ram_036C                              = $036C ; 000CF2(Wx) 000D09(Wx) 000D21(Wx) 03CCD4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03ED81(Ry) 03EDB7(Ry) 03EDDA(Ry) 
; ram_036D                              = $036D ; 000CF2(Wx) 000D09(Wx) 000D21(Wx) 03CD32(Wx) 03CEA4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03ED81(Ry) 03EDC5(Ry) 03EDED(Ry) 
; ram_036E                              = $036E ; 000CF2(Wx) 000D09(Wx) 000D21(Wx) 03CD38(Wx) 03CEA4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03ED81(Ry) 03EDCC(Ry) 03EDE7(Ry) 
; ram_036F                              = $036F ; 000CF2(Wx) 000D09(Wx) 000D21(Wx) 03CD40(Wx) 03CEA4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03ED81(Ry) 03EDD3(Ry) 03EDF5(Ry) 
; ram_0370                              = $0370 ; 000CF2(Wx) 000D21(Wx) 03CEA4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED39(Ry) 03ED81(Ry) 03EDDA(Ry) 
; ram_0371                              = $0371 ; 000D2A(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED81(Ry) 03EDBD(Ry) 
; ram_0372                              = $0372 ; 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03ED39(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 
; ram_0373                              = $0373 ; 03CEA4(Wx) 03CEB5(Rx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED5A(Ry) 03ED81(Ry) 03EDC5(Ry) 
; ram_0374                              = $0374 ; 03CEA4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03ED54(Ry) 03ED81(Ry) 03EDCC(Ry) 
; ram_0375                              = $0375 ; 000CF2(Wx) 03CEA4(Wx) 03CEC2(Rx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03ED81(Ry) 03EDD3(Ry) 
; ram_0376                              = $0376 ; 000CF2(Wx) 03CEA4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03ED81(Ry) 03EDDA(Ry) 
; ram_0377                              = $0377 ; 000CF2(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED81(Ry) 03EDBD(Ry) 
; ram_0378                              = $0378 ; 000CF2(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03ED81(Ry) 03EDB7(Ry) 
; ram_0379                              = $0379 ; 000CF2(Wx) 03CEA4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03ED81(Ry) 03EDC5(Ry) 
; ram_037A                              = $037A ; 000CF2(Wx) 03CEA4(Wx) 03D5A6(Wx) 03E03F(Wi) 03E86A(Wx) 03ED81(Ry) 03EDCC(Ry) 
; ram_037B                              = $037B ; 000CF2(Wx) 03CEA4(Wx) 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED81(Ry) 03EDD3(Ry) 
; ram_037C                              = $037C ; 000CF2(Wx) 03CEA4(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03ED39(Ry) 03ED81(Ry) 03ED89(Ry) 03EDDA(Ry) 
; ram_037D                              = $037D ; 000D2A(Wx) 03CF04(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED5A(Ry) 03ED81(Ry) 03EDED(Ry) 
; ram_037E                              = $037E ; 03CF0A(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03ED39(Ry) 03ED54(Ry) 03ED89(Ry) 03EDE7(Ry) 
; ram_037F                              = $037F ; 03CF16(Wx) 03D5BF(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED5A(Ry) 03ED81(Ry) 03EDF5(Ry) 
; ram_0380                              = $0380 ; 03D5BF(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03ED39(Ry) 03ED54(Ry) 03ED81(Ry) 
; ram_0381                              = $0381 ; 03D5BF(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E919(Wx) 03ED81(Ry) 03EDBD(Ry) 
; ram_0382                              = $0382 ; 03D5BF(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03E925(Wx) 03ED81(Ry) 03EDB7(Ry) 
; ram_0383                              = $0383 ; 03CEA4(Wx) 03CEB5(Rx) 03D5BF(Wx) 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED81(Ry) 03EDC5(Ry) 
; ram_0384                              = $0384 ; 03CEA4(Wx) 03D5BF(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03ED39(Ry) 03ED81(Ry) 03ED89(Ry) 03EDCC(Ry) 
; ram_0385                              = $0385 ; 03CEA4(Wx) 03CEC2(Rx) 03D5BF(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED5A(Ry) 03ED81(Ry) 03EDD3(Ry) 
; ram_0386                              = $0386 ; 03CEA4(Wx) 03D5BF(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03ED54(Ry) 03ED81(Ry) 03EDDA(Ry) 
; ram_0387                              = $0387 ; 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03E919(Wx) 03ED26(Wx) 03ED81(Ry) 03EDBD(Ry) 
; ram_0388                              = $0388 ; 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03E925(Wx) 03ED26(Wx) 03ED39(Ry) 03ED81(Ry) 03ED89(Ry) 03EDB7(Ry) 
; ram_0389                              = $0389 ; 03CEA4(Wx) 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED81(Ry) 03EDC5(Ry) 
; ram_038A                              = $038A ; 03CEA4(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03ED39(Ry) 03ED89(Ry) 03EDCC(Ry) 
; ram_038B                              = $038B ; 03CEA4(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED5A(Ry) 03EDD3(Ry) 
; ram_038C                              = $038C ; 03CEA4(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03ED54(Ry) 03EDDA(Ry) 
; ram_038D                              = $038D ; 000DC3(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED81(Ry) 03EDBD(Ry) 
; ram_038E                              = $038E ; 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03ED26(Wx) 03ED81(Ry) 03EDB7(Ry) 
; ram_038F                              = $038F ; 03CEA4(Wx) 03CEB5(Rx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03ED39(Ry) 03ED89(Ry) 03EDC5(Ry) 
; ram_0390                              = $0390 ; 03CEA4(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED5A(Ry) 03EDCC(Ry) 
; ram_0391                              = $0391 ; 03CEA4(Wx) 03CEC2(Rx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03ED54(Ry) 03EDD3(Ry) 
; ram_0392                              = $0392 ; 000DD9(Wx) 03CEA4(Wx) 03E03F(Wi) 03E86A(Wx) 03ED81(Ry) 03EDDA(Ry) 
; ram_0393                              = $0393 ; 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED26(Wx) 03ED81(Ry) 03EDBD(Ry) 
; ram_0394                              = $0394 ; 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03E8E6(Wx) 03ED39(Ry) 03ED89(Ry) 03EDB7(Ry) 
; ram_0395                              = $0395 ; 03CEA4(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED5A(Ry) 03EDC5(Ry) 
; ram_0396                              = $0396 ; 03CEA4(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03ED54(Ry) 03EDCC(Ry) 
; ram_0397                              = $0397 ; 03CEA4(Wx) 03E03F(Wi) 03E86A(Wx) 03E919(Wx) 03ED81(Ry) 03EDD3(Ry) 
; ram_0398                              = $0398 ; 03CEA4(Wx) 03E03F(Wi) 03E86A(Wx) 03E925(Wx) 03ED81(Ry) 03EDDA(Ry) 
; ram_0399                              = $0399 ; 03CF04(Wx) 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED81(Ry) 03EDED(Ry) 
; ram_039A                              = $039A ; 03CF0A(Wx) 03E03F(Wi) 03E86A(Wx) 03E8DA(Wx) 03ED39(Ry) 03ED89(Ry) 03EDE7(Ry) 
; ram_039B                              = $039B ; 03CF16(Wx) 03E03F(Wi) 03E86A(Wx) 03E8E0(Wx) 03ED5A(Ry) 03EDF5(Ry) 
; ram_039C                              = $039C ; 03E03F(Wi) 03E86A(Wx) 03E8E6(Wx) 03ED26(Wx) 03ED39(Ry) 03ED54(Ry) 
; ram_039D                              = $039D ; 03E03F(Wi) 03E86A(Wx) 03E919(Wx) 03ED81(Ry) 
; ram_039E                              = $039E ; 03E03F(Wi) 03E86A(Wx) 03E925(Wx) 03ED81(Ry) 
; ram_039F                              = $039F ; 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED81(Ry) 
; ram_03A0                              = $03A0 ; 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED39(Ry) 03ED89(Ry) 
; ram_03A1                              = $03A1 ; 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED5A(Ry) 
; ram_03A2                              = $03A2 ; 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED54(Ry) 
; ram_03A3                              = $03A3 ; 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED81(Ry) 
; ram_03A4                              = $03A4 ; 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED81(Ry) 
; ram_03A5                              = $03A5 ; 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED81(Ry) 
; ram_03A6                              = $03A6 ; 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED39(Ry) 03ED89(Ry) 
; ram_03A7                              = $03A7 ; 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED5A(Ry) 
; ram_03A8                              = $03A8 ; 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED54(Ry) 
; ram_03A9                              = $03A9 ; 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED81(Ry) 
; ram_03AA                              = $03AA ; 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED81(Ry) 
; ram_03AB                              = $03AB ; 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED81(Ry) 
; ram_03AC                              = $03AC ; 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED39(Ry) 03ED89(Ry) 
; ram_03AD                              = $03AD ; 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED5A(Ry) 
; ram_03AE                              = $03AE ; 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED54(Ry) 
; ram_03AF                              = $03AF ; 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED81(Ry) 
; ram_03B0                              = $03B0 ; 0378E2(Wx) 0378E5(Rx) 037A6E(Wy) 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED81(Ry) 
; ram_03B1                              = $03B1 ; 0378E2(Wx) 0378E5(Rx) 037A6E(Wy) 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED81(Ry) 
; ram_03B2                              = $03B2 ; 0378E2(Wx) 0378E5(Rx) 037A6E(Wy) 03E03F(Wi) 03E86A(Wx) 03ED26(Wx) 03ED39(Ry) 03ED89(Ry) 
; ram_03B3                              = $03B3 ; 0378E2(Wx) 0378E5(Rx) 037A6E(Wy) 03E03F(Wi) 03E86A(Wx) 
; ram_03B4                              = $03B4 ; 0378E2(Wx) 0378E5(Rx) 037A6E(Wy) 03E03F(Wi) 03E86A(Wx) 
; ram_03B5                              = $03B5 ; 0378E2(Wx) 0378E5(Rx) 037A6E(Wy) 03E03F(Wi) 03E86A(Wx) 
; ram_03B6                              = $03B6 ; 0378E2(Wx) 0378E5(Rx) 037A6E(Wy) 03E03F(Wi) 03E86A(Wx) 
; ram_03B7                              = $03B7 ; 0378E2(Wx) 0378E5(Rx) 037A6E(Wy) 03E03F(Wi) 03E86A(Wx) 
; ram_03B8                              = $03B8 ; 0378E2(Wx) 0378E5(Rx) 037A6E(Wy) 03E03F(Wi) 03E86A(Wx) 
; ram_03B9                              = $03B9 ; 0378E2(Wx) 0378E5(Rx) 037A6E(Wy) 03E03F(Wi) 03E86A(Wx) 
; ram_03BA                              = $03BA ; 0378E2(Wx) 0378E5(Rx) 037A6E(Wy) 03E03F(Wi) 03E86A(Wx) 
; ram_03BB                              = $03BB ; 0378E2(Wx) 0378E5(Rx) 037A6E(Wy) 03E03F(Wi) 03E86A(Wx) 
; ram_03BC                              = $03BC ; 0378E2(Wx) 0378E5(Rx) 037A6E(Wy) 03E03F(Wi) 03E86A(Wx) 
; ram_03BD                              = $03BD ; 0378E2(Wx) 0378E5(Rx) 037A6E(Wy) 03E03F(Wi) 03E86A(Wx) 
; ram_03BE                              = $03BE ; 0378E2(Wx) 0378E5(Rx) 037A6E(Wy) 03E03F(Wi) 03E86A(Wx) 
; ram_03BF                              = $03BF ; 0378E2(Wx) 0378E5(Rx) 037A6E(Wy) 03E03F(Wi) 03E86A(Wx) 



; sound engine addresses
ram_03C0_se                             = $03C0 ; 010096(Wx) 010159(Wx) 01015C(Wx) 014096(Wx) 014159(Wx) 01415C(Wx) 030B2E(Wx) 030B33(Wx) 030B89(Wx) 03E03F(Wi) 
; ram_03C1                              = $03C1 ; 010096(Wx) 010159(Wx) 01015C(Wx) 014096(Wx) 014159(Wx) 01415C(Wx) 030B2E(Wx) 030B33(Wx) 030B89(Wx) 03E03F(Wi) 
; ram_03C2                              = $03C2 ; 03E03F(Wi) 



; sound engine addresses
ram_03C3_se                             = $03C3 ; 0100A4(Wx) 010150(Wx) 0140A4(Wx) 014150(Wx) 030B74(Rx) 030B8C(Wx) 030C1A(Wx) 030C72(Rx) 030C77(Wx) 030CC2(Rx) 03E03F(Wi) 
; ram_03C4                              = $03C4 ; 0100A4(Wx) 010150(Wx) 0140A4(Wx) 014150(Wx) 030B74(Rx) 030B8C(Wx) 030C1A(Wx) 030C72(Rx) 030C77(Wx) 030CC2(Rx) 03E03F(Wi) 
; ram_03C5                              = $03C5 ; 03E03F(Wi) 



; sound engine addresses
ram_03C6_se                             = $03C6 ; 010156(Wx) 014156(Wx) 03E03F(Wi) 
; ram_03C7                              = $03C7 ; 010156(Wx) 014156(Wx) 03E03F(Wi) 
; ram_03C8                              = $03C8 ; 03E03F(Wi) 



; sound engine addresses
ram_03C9_se                             = $03C9 ; 010153(Wx) 014153(Wx) 03E03F(Wi) 
; ram_03CA                              = $03CA ; 010153(Wx) 014153(Wx) 03E03F(Wi) 
; ram_03CB                              = $03CB ; 03E03F(Wi) 



; sound engine addresses
ram_03CC_se                             = $03CC ; 0102EF(Wx) 0142EF(Wx) 030C41(Rx) 03E03F(Wi) 
; ram_03CD                              = $03CD ; 0102EF(Wx) 0142EF(Wx) 030C41(Rx) 03E03F(Wi) 
; ram_03CE                              = $03CE ; 03E03F(Wi) 



; sound engine addresses
ram_03CF_se                             = $03CF ; 0102E9(Rx) 0103A0(Wx) 0142E9(Rx) 0143A0(Wx) 03E03F(Wi) 
; ram_03D0                              = $03D0 ; 0102E9(Rx) 0103A0(Wx) 0142E9(Rx) 0143A0(Wx) 03E03F(Wi) 
; ram_03D1                              = $03D1 ; 0143A0(Wx) 03E03F(Wi) 



; sound engine addresses
ram_03D2_se                             = $03D2 ; 0103A9(Wx) 0143A9(Wx) 030CDE(Rx) 030CEC(Rx) 03E03F(Wi) 
; ram_03D3                              = $03D3 ; 0103A9(Wx) 0143A9(Wx) 030CDE(Rx) 030CEC(Rx) 03E03F(Wi) 
; ram_03D4                              = $03D4 ; 0143A9(Wx) 03E03F(Wi) 



; sound engine addresses
ram_03D5_se                             = $03D5 ; 0102F4(Wx) 0142F4(Wx) 030CC7(Wx) 030CE1(Wx) 030CE7(Wx) 030CEF(Wx) 03E03F(Wi) 
; ram_03D6                              = $03D6 ; 0102F4(Wx) 0142F4(Wx) 030CC7(Wx) 030CE1(Wx) 030CE7(Wx) 030CEF(Wx) 03E03F(Wi) 
; ram_03D7                              = $03D7 ; 03E03F(Wi) 



; sound engine addresses
ram_03D8_se                             = $03D8 ; 0100C4(Rx) 010465(Wx) 01047E(Wx) 0140C4(Rx) 014465(Wx) 01447E(Wx) 0308CB(Wx) 030BD9(Rx) 030C4E(Rx) 030C58(Rx) 030CB6(Rx) 03E03F(Wi) 
; ram_03D9                              = $03D9 ; 0100C4(Rx) 010465(Wx) 01047E(Wx) 0140C4(Rx) 014465(Wx) 01447E(Wx) 0308CB(Wx) 030BD9(Rx) 030C4E(Rx) 030C58(Rx) 030CB6(Rx) 03E03F(Wi) 
; ram_03DA                              = $03DA ; 0308CB(Wx) 03E03F(Wi) 



; sound engine addresses
ram_03DB_se                             = $03DB ; 0101CB(Rx) 0102D5(Rx) 0104D5(Wx) 0141CB(Rx) 0142D5(Rx) 0144D5(Wx) 03E03F(Wi) 
; ram_03DC                              = $03DC ; 0101CB(Rx) 0102D5(Rx) 0104D5(Wx) 0141CB(Rx) 0142D5(Rx) 0144D5(Wx) 03E03F(Wi) 
; ram_03DD                              = $03DD ; 03E03F(Wi) 



; sound engine addresses
ram_03DE_se                             = $03DE ; 0101EF(Rx) 0102D8(Wx) 0102DB(Wx) 0141EF(Rx) 0142D8(Wx) 0142DB(Wx) 0301EF(Rx) 0308D0(Wx) 030B20(Wx) 030B25(Wx) 030D2B(Wx) 030DCD(Wx) 03E03F(Wi) 
; ram_03DF                              = $03DF ; 0101EF(Rx) 0102D8(Wx) 0102DB(Wx) 0141EF(Rx) 0142D8(Wx) 0142DB(Wx) 0301EF(Rx) 0308D0(Wx) 030B20(Wx) 030B25(Wx) 030D2B(Wx) 03E03F(Wi) 
; ram_03E0                              = $03E0 ; 0308D0(Wx) 03E03F(Wi) 



; sound engine addresses
ram_03E1_se                             = $03E1 ; 0104DC(Wx) 0144DC(Wx) 030D50(Rx) 03E03F(Wi) 
; ram_03E2                              = $03E2 ; 0104DC(Wx) 0144DC(Wx) 030D50(Rx) 03E03F(Wi) 
; ram_03E3                              = $03E3 ; 03E03F(Wi) 



; free addresses
; ram_03E4                              = $03E4 ; 03E03F(Wi) 
; ram_03E5                              = $03E5 ; 03E03F(Wi) 
; ram_03E6                              = $03E6 ; 03E03F(Wi) 
; ram_03E7                              = $03E7 ; 03E03F(Wi) 
; ram_03E8                              = $03E8 ; 03E03F(Wi) 
; ram_03E9                              = $03E9 ; 03E03F(Wi) 
; ram_03EA                              = $03EA ; 03E03F(Wi) 
; ram_03EB                              = $03EB ; 03E03F(Wi) 
; ram_03EC                              = $03EC ; 03E03F(Wi) 
; ram_03ED                              = $03ED ; 03E03F(Wi) 
; ram_03EE                              = $03EE ; 03E03F(Wi) 
; ram_03EF                              = $03EF ; 03E03F(Wi) 
; ram_03F0                              = $03F0 ; 03E03F(Wi) 
; ram_03F1                              = $03F1 ; 03E03F(Wi) 
; ram_03F2                              = $03F2 ; 03E03F(Wi) 
; ram_03F3                              = $03F3 ; 03E03F(Wi) 
; ram_03F4                              = $03F4 ; 03E03F(Wi) 
; ram_03F5                              = $03F5 ; 03E03F(Wi) 
; ram_03F6                              = $03F6 ; 03E03F(Wi) 
; ram_03F7                              = $03F7 ; 03E03F(Wi) 
; ram_03F8                              = $03F8 ; 03E03F(Wi) 
; ram_03F9                              = $03F9 ; 03E03F(Wi) 
; ram_03FA                              = $03FA ; 03E03F(Wi) 
; ram_03FB                              = $03FB ; 03E03F(Wi) 
; ram_03FC                              = $03FC ; 03E03F(Wi) 
; ram_03FD                              = $03FD ; 03E03F(Wi) 
; ram_03FE                              = $03FE ; 03E03F(Wi) 
; ram_03FF                              = $03FF ; 03E03F(Wi) 



; animation index, which is a base for sprite data
ram_obj_anim_id                         = $0400 ; 000B61(W)  0010FE(W)  001448(W)  001458(W)  0015FB(R)  002269(Wx) 002A86(W)  002B30(W)  002B4A(W)  0034D1(W)  0041ED(R)  006780(W)  006B91(Wx) 006E56(Wx) 006E61(Wx) 006E78(Wx) 00719C(Wx) 007639(Wx) 01326F(W)  013275(W)  01F52F(W)  02B2F5(W)  02B42B(Wx) 02B573(Wx) 0321C1(W)  034031(Rx) 034098(Rx) 0341A8(Rx) 0341F9(Rx) 038247(W)  038AE0(W)  038B38(W)  038BA4(W)  038DB7(R)  0393C3(W)  039445(W)  039471(W)  0394AA(W)  0394E0(W)  03950B(W)  03955A(W)  03957B(W)  0395B6(W)  03963A(Wx) 039845(W)  039ACF(W)  039AE4(W)  039B70(W)  039CE1(W)  039E1D(W)  039E2D(W)  039EA4(W)  039EF7(W)  03A05E(W)  03A0F2(W)  03A1CC(W)  03A26D(W)  03A403(W)  03A4FF(W)  03A633(W)  03A778(W)  03BB61(Wx) 03BD8D(Wy) 03BF09(W)  03E03F(Wi) 03E845(Wx) 03EFA7(Wx) 
    ram_plr_anim_id                         = $0400 ; 
    ram_wpn_anim_id                         = $0400 ; 
; ram_0401                              = $0401 ; 00204D(R)  0020E2(Rx) 002269(Wx) 00242D(Rx) 00289A(Wx) 0037E0(Wx) 003872(Wx) 0038C5(Wx) 005690(Wx) 005792(Wx) 005C95(Wx) 005E4A(Wx) 0066CA(W)  006748(W)  006B91(Wx) 006E56(Wx) 006E61(Wx) 006E78(Wx) 007026(W)  007180(Wx) 007186(Wx) 007639(Wx) 00913D(Wx) 0094FF(Wx) 00AB15(Wx) 00AE79(Wx) 01378B(Wx) 0137B6(Wx) 013971(Wx) 013AD5(Wx) 017C20(Wx) 023F52(Wx) 02474F(Wx) 024877(Wy) 0248D6(Wx) 02543C(Wx) 025C38(Wx) 025C5C(Wx) 025C60(Wx) 025C63(Wx) 025C67(Wx) 025C6A(Wx) 0266A1(Wy) 026995(Wx) 026F49(Wx) 02704B(Wx) 027352(Wx) 027646(Wx) 027BDB(Wx) 027BF9(Wx) 028201(Wx) 028CFB(Wx) 028DBE(Wx) 028E12(Wx) 02B42B(Wx) 02B528(Wx) 02B573(Wx) 02B9C5(Wx) 02C2FD(Wx) 02C33D(Wx) 02C395(Wx) 02C3C7(Wx) 02C5D9(Wx) 02C621(Wx) 02C87A(Wx) 02CBD7(Rx) 02CBE0(Wx) 02CD79(Wx) 02CE4B(Wx) 02D0AB(Wx) 02D0FD(Wy) 02D111(Rx) 02D1F2(Rx) 02D53B(Wx) 02DD10(Wx) 02E0C8(Wx) 02E1AF(Wx) 02F212(Rx) 02F39D(Rx) 02F544(Wx) 02F59F(Wx) 0325C0(Wx) 03274B(W)  032772(Wx) 03282B(Wx) 032A1F(Wx) 032B9F(Wx) 032BB4(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 0341F9(Rx) 0378B2(Wx) 03963A(Wx) 03BB61(Wx) 03BD8D(Wy) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_0402                              = $0402 ; 002050(R)  0020F6(Rx) 002269(Wx) 00240B(Rx) 00242D(Rx) 00289A(Wx) 0037E0(Wx) 003872(Wx) 0038C5(Wx) 0041F0(Wx) 005690(Wx) 005C95(Wx) 005E4A(Wx) 006B91(Wx) 006E56(Wx) 006E61(Wx) 006E78(Wx) 007427(Wx) 007639(Wx) 00913D(Wx) 00929D(Wx) 0094FF(Wx) 00AB15(Wx) 00AE79(Wx) 00DB11(Wx) 00DC8E(Wx) 00DD4F(Wx) 01378B(Wx) 0137B6(Wx) 013971(Wx) 013AD5(Wx) 017C20(Wx) 023F52(Wx) 02474F(Wx) 0248D6(Wx) 025C38(Wx) 025C60(Wx) 025C63(Wx) 025C67(Wx) 025C6A(Wx) 026995(Wx) 026E1A(Wx) 026EB9(Wy) 0270FD(Wx) 02722F(Wx) 027352(Wx) 02754B(Wy) 027585(Wx) 027627(Wy) 027B43(Wx) 027B4F(Wx) 027B6B(Wx) 027BA4(Wx) 027BDB(Wx) 027BE4(Wy) 027BF9(Wx) 028201(Wx) 028DBE(Wx) 028E12(Wx) 02B42B(Wx) 02B573(Wx) 02B6DC(Wx) 02B9C5(Wx) 02C2FD(Wx) 02C33D(Wx) 02C395(Wx) 02C3C7(Wx) 02C5D9(Wx) 02C621(Wx) 02C87A(Wx) 02CBD7(Rx) 02CBE0(Wx) 02CD79(Wx) 02CE4B(Wx) 02D0AB(Wx) 02D0FD(Wy) 02D111(Rx) 02D1F2(Rx) 02D53B(Wx) 02DB09(Wy) 02DCB4(Wx) 02DD10(Wx) 02E0C8(Wx) 02F212(Rx) 02F39D(Rx) 02F544(Wx) 02F59F(Wx) 03269B(Wx) 033309(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 0341F9(Rx) 0378B2(Wx) 03AED7(Wx) 03B402(Wx) 03B446(Wx) 03B669(Wx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_0403                              = $0403 ; 001FAD(W)  001FCB(W)  002009(W)  002096(W)  0020B4(W)  002269(Wx) 002485(Wx) 00289A(Wx) 0037E0(Wx) 003872(Wx) 0038C5(Wx) 00423F(Wx) 005690(Wx) 005792(Wx) 005C95(Wx) 005E4A(Wx) 006B91(Wx) 006E56(Wx) 006E61(Wx) 006E78(Wx) 007427(Wx) 007639(Wx) 00913D(Wx) 00929D(Wx) 0094FF(Wx) 00AE79(Wx) 00C282(Wy) 00C488(Wx) 00DB11(Wx) 00DC8E(Wx) 00DD4F(Wx) 01378B(Wx) 0137B6(Wx) 013971(Wx) 017C20(Wx) 02474F(Wx) 025C38(Wx) 025C5C(Wx) 025C60(Wx) 025C63(Wx) 025C67(Wx) 025C6A(Wx) 0266A1(Wy) 026995(Wx) 026E1A(Wx) 0270FD(Wx) 02722F(Wx) 027352(Wx) 027627(Wy) 027B43(Wx) 027B4F(Wx) 027B6B(Wx) 027BA4(Wx) 027BE4(Wy) 027BF9(Wx) 028201(Wx) 028DBE(Wx) 028E12(Wx) 02B269(W)  02B42B(Wx) 02B573(Wx) 02B6DC(Wx) 02B9C5(Wx) 02C2FD(Wx) 02C33D(Wx) 02C395(Wx) 02C3C7(Wx) 02CBD7(Rx) 02CBE0(Wx) 02CD79(Wx) 02CE4B(Wx) 02D0AB(Wx) 02D0FD(Wy) 02D111(Rx) 02D1F2(Rx) 02DB09(Wy) 02DCB4(Wx) 02DD10(Wx) 02E0C8(Wx) 02F212(Rx) 02F39D(Rx) 02F544(Wx) 02F59F(Wx) 03269B(Wx) 03274E(W)  033033(Wx) 033309(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 0341F9(Rx) 03AED7(Wx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_0404                              = $0404 ; 002099(W)  002269(Wx) 002485(Wx) 00289A(Wx) 0037E0(Wx) 003872(Wx) 0038C5(Wx) 004267(Wx) 005690(Wx) 005C95(Wx) 005E4A(Wx) 006B91(Wx) 006E56(Wx) 006E61(Wx) 006E78(Wx) 007427(Wx) 007639(Wx) 00929D(Wx) 0094FF(Wx) 00AB15(Wx) 00AE79(Wx) 00C282(Wy) 00C488(Wx) 00DB11(Wx) 00DC8E(Wx) 00DD4F(Wx) 01378B(Wx) 013971(Wx) 013AD5(Wx) 017C20(Wx) 02474F(Wx) 0248D6(Wx) 025C38(Wx) 025C5C(Wx) 025C60(Wx) 025C63(Wx) 025C67(Wx) 025C6A(Wx) 0266A1(Wy) 026995(Wx) 026E1A(Wx) 0270FD(Wx) 02722F(Wx) 027352(Wx) 027627(Wy) 027946(Rx) 027B43(Wx) 027B4F(Wx) 027B6B(Wx) 027BA4(Wx) 027BE4(Wy) 027BF9(Wx) 028201(Wx) 028DBE(Wx) 028E12(Wx) 02B6DC(Wx) 02B9C5(Wx) 02C2FD(Wx) 02C33D(Wx) 02C395(Wx) 02C3C7(Wx) 02CB50(Wx) 02CBD7(Rx) 02CBE0(Wx) 02CE4B(Wx) 02D0AB(Wx) 02D0FD(Wy) 02D111(Rx) 02DB09(Wy) 02DCB4(Wx) 02DD10(Wx) 02E0C8(Wx) 02F212(Rx) 02F39D(Rx) 02F544(Wx) 02F59F(Wx) 03269B(Wx) 032751(W)  033033(Wx) 033309(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 0378B2(Wx) 03AED7(Wx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_0405                              = $0405 ; 00209C(W)  002269(Wx) 00236B(R)  002485(Wx) 00289A(Wx) 0037E0(Wx) 003872(Wx) 0038C5(Wx) 005690(Wx) 005792(Wx) 005E4A(Wx) 006B91(Wx) 006E56(Wx) 006E61(Wx) 006E78(Wx) 007427(Wx) 007639(Wx) 007961(Wx) 00929D(Wx) 0094FF(Wx) 00AB15(Wx) 00AE79(Wx) 00C282(Wy) 00C488(Wx) 00DB11(Wx) 00DC8E(Wx) 00DD4F(Wx) 01378B(Wx) 013971(Wx) 017C20(Wx) 017CB0(Wy) 017CF7(Wx) 017DD9(Wx) 02474F(Wx) 025C38(Wx) 025C5C(Wx) 025C60(Wx) 025C63(Wx) 025C67(Wx) 025C6A(Wx) 025EE3(Wy) 0266A1(Wy) 026995(Wx) 026E1A(Wx) 0270FD(Wx) 02722F(Wx) 027352(Wx) 027627(Wy) 027946(Rx) 027B43(Wx) 027B4F(Wx) 027B6B(Wx) 027BA4(Wx) 027BE4(Wy) 027BF9(Wx) 028201(Wx) 028DBE(Wx) 028E12(Wx) 02B6DC(Wx) 02B9C5(Wx) 02C2FD(Wx) 02C33D(Wx) 02C395(Wx) 02C3C7(Wx) 02CB50(Wx) 02CBD7(Rx) 02CBE0(Wx) 02CE4B(Wx) 02D0AB(Wx) 02D0FD(Wy) 02D111(Rx) 02DB09(Wy) 02DCB4(Wx) 02DD10(Wx) 02E0C8(Wx) 02F212(Rx) 02F39D(Rx) 02F544(Wx) 02F59F(Wx) 03269B(Wx) 032754(W)  033309(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 0378B2(Wx) 03BCED(Wx) 03BDC6(Wx) 03BDD8(Wx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_0406                              = $0406 ; 00209F(W)  002269(Wx) 002485(Wx) 00289A(Wx) 005690(Wx) 005792(Wx) 006B91(Wx) 006E56(Wx) 006E61(Wx) 006E78(Wx) 007427(Wx) 007639(Wx) 007961(Wx) 00929D(Wx) 0094FF(Wx) 00AE79(Wx) 00C282(Wy) 00C488(Wx) 01378B(Wx) 017CB0(Wy) 017CF7(Wx) 017DD9(Wx) 02474F(Wx) 0248D6(Wx) 025C38(Wx) 0266A1(Wy) 026995(Wx) 026E1A(Wx) 0270FD(Wx) 02722F(Wx) 027352(Wx) 027627(Wy) 027B43(Wx) 027B4F(Wx) 027B6B(Wx) 027BA4(Wx) 027BE4(Wy) 027BF9(Wx) 028201(Wx) 028DBE(Wx) 028E12(Wx) 02B6DC(Wx) 02B9C5(Wx) 02C2FD(Wx) 02C33D(Wx) 02C395(Wx) 02C3C7(Wx) 02CB50(Wx) 02CE4B(Wx) 02D0FD(Wy) 02DB09(Wy) 02DCB4(Wx) 02DD10(Wx) 02F212(Rx) 02F39D(Rx) 02F59F(Wx) 032757(W)  033309(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_0407                              = $0407 ; 002269(Wx) 00289A(Wx) 005690(Wx) 005792(Wx) 006B91(Wx) 006E56(Wx) 006E61(Wx) 006E78(Wx) 007427(Wx) 007639(Wx) 007961(Wx) 00929D(Wx) 0094FF(Wx) 00AE79(Wx) 00C282(Wy) 00C488(Wx) 01378B(Wx) 017C20(Wx) 017CB0(Wy) 017CF7(Wx) 017DD9(Wx) 023F52(Wx) 02474F(Wx) 0248D6(Wx) 025C38(Wx) 025C5C(Wx) 025C67(Wx) 025C6A(Wx) 0266A1(Wy) 026995(Wx) 026E1A(Wx) 02722F(Wx) 0274CC(Wx) 027627(Wy) 028201(Wx) 028E12(Wx) 02B6DC(Wx) 02B9C5(Wx) 02C33D(Wx) 02C395(Wx) 02C3C7(Wx) 02CE4B(Wx) 02DB09(Wy) 02DCB4(Wx) 02DD10(Wx) 02F212(Rx) 02F39D(Rx) 02F59F(Wx) 033309(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_0408                              = $0408 ; 002269(Wx) 005690(Wx) 005792(Wx) 006B91(Wx) 006E61(Wx) 006E78(Wx) 007639(Wx) 007961(Wx) 00929D(Wx) 0094FF(Wx) 00AE79(Wx) 00C282(Wy) 00DB11(Wx) 00DC8E(Wx) 00DD4F(Wx) 01378B(Wx) 013971(Wx) 013AD5(Wx) 017CB0(Wy) 017CF7(Wx) 017DD9(Wx) 023F52(Wx) 02474F(Wx) 0248D6(Wx) 025C38(Wx) 025C5C(Wx) 025C67(Wx) 025C6A(Wx) 0266A1(Wy) 026995(Wx) 026E1A(Wx) 02722F(Wx) 0274CC(Wx) 028201(Wx) 028D2B(Wx) 028DBE(Wx) 028E12(Wx) 02B6DC(Wx) 02B9C5(Wx) 02C2FD(Wx) 02C33D(Wx) 02C395(Wx) 02C3C7(Wx) 02CE4B(Wx) 02DD10(Wx) 02DE95(Wx) 02E0C8(Wx) 02E1AF(Wx) 02F212(Rx) 02F39D(Rx) 02F59F(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_0409                              = $0409 ; 002269(Wx) 005690(Wx) 005792(Wx) 006B91(Wx) 006E61(Wx) 006E78(Wx) 007639(Wx) 007961(Wx) 00929D(Wx) 0094FF(Wx) 00AB15(Wx) 00AE79(Wx) 01378B(Wx) 0137B6(Wx) 017C20(Wx) 017CB0(Wy) 017CF7(Wx) 017DD9(Wx) 02474F(Wx) 024877(Wy) 025C5C(Wx) 025C67(Wx) 025C6A(Wx) 0266A1(Wy) 026E1A(Wx) 02722F(Wx) 0274CC(Wx) 028201(Wx) 028E12(Wx) 02B6DC(Wx) 02B9C5(Wx) 02C3C7(Wx) 02CCA4(Wx) 02CCCD(Wx) 02CE4B(Wx) 02D994(Wx) 02F212(Rx) 02F39D(Rx) 02F59F(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 0378B2(Wx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_040A                              = $040A ; 002269(Wx) 005690(Wx) 005792(Wx) 006B91(Wx) 006E61(Wx) 006E78(Wx) 007427(Wx) 007639(Wx) 007961(Wx) 00913D(Wx) 00929D(Wx) 0094FF(Wx) 00AE79(Wx) 01378B(Wx) 0137B6(Wx) 013971(Wx) 017C20(Wx) 017CB0(Wy) 017CF7(Wx) 017DD9(Wx) 02474F(Wx) 0248D6(Wx) 025C5C(Wx) 025C67(Wx) 025C6A(Wx) 0266A1(Wy) 026E1A(Wx) 02722F(Wx) 0274CC(Wx) 028201(Wx) 028E12(Wx) 02B6DC(Wx) 02B9C5(Wx) 02C2FD(Wx) 02C33D(Wx) 02C395(Wx) 02C3C7(Wx) 02CCA4(Wx) 02CCCD(Wx) 02CE4B(Wx) 02D994(Wx) 02E0C8(Wx) 02E1AF(Wx) 02F212(Rx) 02F39D(Rx) 02F59F(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_040B                              = $040B ; 002269(Wx) 005690(Wx) 005792(Wx) 006B91(Wx) 006E61(Wx) 006E78(Wx) 007639(Wx) 007961(Wx) 00929D(Wx) 0094FF(Wx) 00AE79(Wx) 01378B(Wx) 0137B6(Wx) 013971(Wx) 017C20(Wx) 017CB0(Wy) 017CF7(Wx) 017DD9(Wx) 02474F(Wx) 025C5C(Wx) 025C67(Wx) 025C6A(Wx) 0266A1(Wy) 02722F(Wx) 0274CC(Wx) 028201(Wx) 028E12(Wx) 02C33D(Wx) 02C395(Wx) 02C3C7(Wx) 02CCA4(Wx) 02CCCD(Wx) 02CE4B(Wx) 02D994(Wx) 02E0C8(Wx) 02F212(Rx) 02F39D(Rx) 02F59F(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_040C                              = $040C ; 002269(Wx) 005690(Wx) 006B91(Wx) 006E61(Wx) 006E78(Wx) 007427(Wx) 007639(Wx) 007961(Wx) 00929D(Wx) 0094FF(Wx) 01378B(Wx) 013971(Wx) 017C20(Wx) 017CB0(Wy) 017CF7(Wx) 017DD9(Wx) 02474F(Wx) 0248D6(Wx) 0266A1(Wy) 02722F(Wx) 0274CC(Wx) 028201(Wx) 028E12(Wx) 02C3C7(Wx) 02CE4B(Wx) 02D994(Wx) 02F212(Rx) 02F39D(Rx) 02F59F(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_040D                              = $040D ; 002269(Wx) 004945(Wx) 006B91(Wx) 006E61(Wx) 006E78(Wx) 007427(Wx) 007639(Wx) 007961(Wx) 00929D(Wx) 0094FF(Wx) 01378B(Wx) 013971(Wx) 028201(Wx) 028E12(Wx) 02C33D(Wx) 02C395(Wx) 02CE4B(Wx) 02E0C8(Wx) 02E1AF(Wx) 02F212(Rx) 02F39D(Rx) 02F59F(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_040E                              = $040E ; 002269(Wx) 004945(Wx) 006B91(Wx) 006E61(Wx) 006E78(Wx) 007639(Wx) 00929D(Wx) 0094FF(Wx) 01378B(Wx) 013971(Wx) 028201(Wx) 028E12(Wx) 02C33D(Wx) 02C395(Wx) 02CE4B(Wx) 02E0C8(Wx) 02E1AF(Wx) 02F212(Rx) 02F39D(Rx) 02F59F(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_040F                              = $040F ; 002269(Wx) 004945(Wx) 006B91(Wx) 006E61(Wx) 006E78(Wx) 007427(Wx) 007639(Wx) 00929D(Wx) 0094FF(Wx) 013971(Wx) 028201(Wx) 02C33D(Wx) 02C395(Wx) 02CE4B(Wx) 02E0C8(Wx) 02E1AF(Wx) 02F212(Rx) 02F59F(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_0410                              = $0410 ; 002269(Wx) 004945(Wx) 0069CA(Wx) 006D8B(Wx) 007639(Wx) 00929D(Wx) 0094FF(Wx) 013971(Wx) 028201(Wx) 0284ED(Wx) 02C33D(Wx) 02C395(Wx) 02CE4B(Wx) 02E0C8(Wx) 02E1AF(Wx) 02F212(Rx) 02F59F(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_0411                              = $0411 ; 002269(Wx) 004945(Wx) 007639(Wx) 028201(Wx) 02C33D(Wx) 02C395(Wx) 02CE4B(Wx) 02E0C8(Wx) 02E1AF(Wx) 02F212(Rx) 02F59F(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_0412                              = $0412 ; 002269(Wx) 004945(Wx) 007639(Wx) 028201(Wx) 02C33D(Wx) 02C395(Wx) 02CE4B(Wx) 02E0C8(Wx) 02E1AF(Wx) 02F212(Rx) 02F59F(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_0413                              = $0413 ; 00138B(Wx) 0015EF(W)  002269(Wx) 003492(W)  004075(W)  007427(Wx) 007639(Wx) 01324E(W)  02F28E(R)  034031(Rx) 034098(Rx) 0341A8(Rx) 0341F9(Rx) 038B00(W)  03942F(W)  039CA2(W)  03BCED(Wx) 03BDC6(Wx) 03BDD8(Wx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 03FA1F(Wx) 03FB0C(Wx) 
; ram_0414                              = $0414 ; 002269(Wx) 003495(W)  004078(W)  007639(Wx) 0284ED(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 03AED7(Wx) 03B402(Wx) 03B446(Wx) 03B669(Wx) 03B6D3(Wx) 03B76E(Wx) 03B88E(Wx) 03B99B(Wx) 03B9B6(Wx) 03B9D7(Wx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_0415                              = $0415 ; 002269(Wx) 003498(W)  00407B(W)  007639(Wx) 0284ED(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 03AED7(Wx) 03B76E(Wx) 03B88E(Wx) 03B99B(Wx) 03B9B6(Wx) 03B9D7(Wx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_0416                              = $0416 ; 002269(Wx) 00349B(W)  00407E(W)  007639(Wx) 0284ED(Wx) 034031(Rx) 034098(Rx) 0341A8(Rx) 03AED7(Wx) 03B88E(Wx) 03B99B(Wx) 03B9B6(Wx) 03B9D7(Wx) 03E03F(Wi) 03E80B(Wx) 03E845(Wx) 03EFA7(Wx) 
; ram_0417                              = $0417 ; 001174(W)  0012B1(W)  002269(Wx) 02F62C(Wx) 02F654(Ry) 034031(Rx) 034098(Rx) 0341A8(Rx) 03E03F(Wi) 03E845(Wx) 03FEA8(W)  
; ram_0418                              = $0418 ; 000EB1(W)  001101(W)  00145B(W)  002269(Wx) 004081(W)  02B131(W)  034031(Rx) 034098(Rx) 0341A8(Rx) 0341F9(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_0419                              = $0419 ; 000E7E(W)  001104(W)  00145E(W)  002269(Wx) 004084(W)  02B134(W)  034031(Rx) 034098(Rx) 0341A8(Rx) 0341F9(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_041A                              = $041A ; 001177(W)  002269(Wx) 004039(W)  009D0D(Wx) 00B046(Wx) 00B0F6(Wx) 00B138(Wx) 00B157(Rx) 00B2A4(Wx) 02B137(W)  034031(Rx) 034098(Rx) 0341A8(Rx) 038D9B(W)  038DDE(W)  03E03F(Wi) 03E845(Wx) 
; ram_041B                              = $041B ; 00117A(W)  002269(Wx) 00403C(W)  009D0D(Wx) 00B046(Wx) 00B0F6(Wx) 00B138(Wx) 00B157(Rx) 00B2A4(Wx) 02B13A(W)  034031(Rx) 034098(Rx) 0341A8(Rx) 03E03F(Wi) 03E845(Wx) 



; !!! 5th-9th addresses also used for pal buffer 0x007950
ram_obj_pos_Y_lo                        = $041C ; 000B57(W)  000B67(W)  001391(R)  0013B9(R)  00150B(R)  00151B(R)  001530(R)  001552(R)  0016EB(R)  002272(Wx) 002816(R)  002AA7(W)  002C7E(R)  002D07(R)  002D0D(W)  002D34(W)  00359D(R)  00382D(R)  003B5F(R)  003CC8(R)  003DF6(R)  00420A(R)  006693(W)  006B9A(Wx) 006E1E(Rx) 006E23(Wx) 006E44(Rx) 006E67(Rx) 0071BE(Wx) 00752D(Wx) 00759F(R)  00763C(Wx) 0088D9(R)  00891B(R)  00B16B(R)  00B1A1(R)  00CF1A(R)  00D2EE(R)  00D7D1(R)  00DCB8(R)  00DD6D(R)  01321A(R)  01321D(W)  013371(R)  013377(W)  0133A7(W)  01F4F2(R)  01F502(R)  01F57C(R)  01F639(R)  023F1B(R)  023F84(R)  024634(R)  025C0C(R)  025C78(R)  025E58(R)  026351(R)  026802(R)  027957(R)  028872(R)  0288A7(R)  0288BC(R)  0289BB(R)  0289DD(R)  028A42(R)  02B57F(Wx) 02C0E9(R)  02C832(R)  02D78E(R)  02D7A7(R)  02D89C(R)  02F3D7(R)  02F42F(R)  02F684(R)  02F78C(R)  02F877(R)  02F89E(R)  02F912(R)  02FA60(R)  032A90(R)  034040(Rx) 0341B7(Rx) 037781(R)  0377F6(R)  037864(R)  037889(R)  0379D5(R)  037B4E(R)  0380D6(R)  03818D(R)  038193(W)  03839A(R)  0383A0(W)  0384E6(R)  0384EB(W)  038523(R)  038529(W)  03852E(R)  038534(W)  03855B(R)  038587(R)  03858D(W)  0385FA(W)  038604(R)  038607(W)  0386F6(R)  038712(R)  038730(R)  038736(W)  038A16(R)  038A1B(W)  038A20(R)  038A2D(W)  038B4E(R)  038B51(W)  038B6E(R)  038BEB(R)  038C14(R)  038C34(R)  038C97(R)  038DCF(R)  0397DF(R)  039859(W)  03985F(R)  039A07(R)  039A26(R)  039A3D(R)  039AF1(R)  039B13(R)  039B28(W)  039B60(R)  039B66(W)  039F1B(R)  039F21(W)  039F27(R)  039F2D(W)  03A016(R)  03A064(R)  03A06A(W)  03A097(W)  03A110(R)  03A1A6(R)  03A228(R)  03A22B(W)  03A324(R)  03A3EC(R)  03A520(W)  03A54B(R)  03A551(W)  03AB72(R)  03AB9A(W)  03ABCD(R)  03AFE3(Ry) 03B097(R)  03B17B(R)  03B3B1(Ry) 03B4DE(R)  03B532(Ry) 03B593(Ry) 03B5D5(Ry) 03B646(Ry) 03B6F9(R)  03B798(R)  03B87B(R)  03BCB5(Ry) 03E03F(Wi) 03E845(Wx) 03E9D9(R)  03FA28(R)  03FA49(R)  03FC99(R)  03FCFA(R)  03FEC1(W)  
    ram_plr_pos_Y_lo                        = $041C ; 
    ram_wpn_pos_Y_lo                        = $041C ; 
; ram_041D                              = $041D ; 002272(Wx) 0023CE(Wx) 0028B5(Wx) 0037F3(Wx) 003829(Rx) 0038A9(Rx) 0038AF(Wx) 0038F6(Wx) 005723(Ry) 005726(Wy) 0057CF(Rx) 0058B2(Rx) 0058BB(Wx) 005D2B(Wy) 005E06(Rx) 005E09(Wx) 006759(W)  006B9A(Wx) 006E1E(Rx) 006E23(Wx) 006E44(Rx) 006E67(Rx) 0071BE(Wx) 00763C(Wx) 0083F1(Rx) 0086A7(Wx) 0087A9(Wy) 008821(Rx) 0088A6(Rx) 0088AD(Wx) 0088DC(Rx) 00891F(Rx) 008A78(Wx) 008AD7(Rx) 008ADD(Wx) 008AE8(Rx) 008AFC(Rx) 008B26(Rx) 008B2C(Wx) 008B37(Rx) 008B4B(Rx) 008B6B(Wx) 008B8B(Rx) 008BBC(Rx) 008C48(Rx) 008DB4(Rx) 008EC7(Rx) 0093A2(Rx) 0094C5(Ry) 0094C8(Wx) 0094E9(Rx) 0094EC(Wx) 0095F9(Rx) 0095FC(Wx) 009786(Rx) 009789(Wx) 0099D9(Rx) 009ABB(Rx) 009AC0(Wx) 009B56(Rx) 009BB0(Rx) 00A7E3(Wx) 00AA07(Wx) 00AAD1(Wx) 00AAF7(Rx) 00AC3E(Rx) 00AC9A(Wx) 00AEAE(Wx) 00C0C6(Rx) 00C131(Rx) 00C134(Wy) 00C188(Wx) 00C209(Rx) 00C20E(Wx) 00C248(Rx) 00C309(Rx) 00C335(Ry) 00C33B(Wy) 00C380(Ry) 00C383(Wx) 00C3C3(Rx) 00C405(Rx) 00C541(Wx) 00C60B(Rx) 00C803(Rx) 00C8A1(Rx) 00C8B4(Rx) 00C8C0(Rx) 00CBD8(Ry) 00CBDE(Wy) 00CC3C(Rx) 00CD64(Wy) 00CE69(Rx) 00CEC2(Rx) 00CF1E(Rx) 00CF8B(Rx) 00CFDA(Rx) 00D08C(Rx) 00D1DF(Rx) 00D1F3(Wx) 00D3B4(Rx) 00D3B9(Wx) 00D619(Rx) 00D8A1(Rx) 00D8A7(Wx) 00D8E5(Rx) 00D909(Rx) 00D90F(Wx) 00DAFB(Wx) 00DBC0(Rx) 00DBCB(Rx) 00DDF6(Rx) 00DE60(Rx) 00DEDF(Ry) 00DF32(Rx) 00DF4E(Rx) 00DF58(Rx) 013872(Rx) 013947(Rx) 01394C(Wx) 013976(Rx) 01397B(Wx) 01398C(Rx) 017BED(Rx) 01BEC0(Rx) 023F1F(Rx) 023F88(Rx) 024638(Rx) 0247A6(Ry) 0247A9(Wx) 0247B8(Ry) 0247C2(Ry) 024868(Wy) 02489D(Wy) 0248E9(Wy) 0249AE(Rx) 0249B4(Wx) 0252A4(Rx) 0252B7(Wx) 025407(Rx) 02540D(Wx) 02555B(Rx) 02555E(Wx) 025705(Rx) 02570A(Wx) 02570E(Rx) 025713(Wx) 0257DC(Rx) 0257E2(Wx) 025DF6(Rx) 025DF9(Wx) 0260B4(Rx) 0260B7(Wx) 0261D9(Ry) 0262AD(Rx) 026356(Rx) 0263E9(Rx) 026581(Ry) 026587(Wx) 026590(Wx) 0265AB(Ry) 026806(Rx) 0269E8(Rx) 0269F7(Wx) 026C35(Ry) 026C6E(Rx) 026C7D(Wx) 0270BB(Rx) 02718E(Ry) 02730E(Rx) 02733D(Rx) 027438(Rx) 027447(Wx) 027517(Wx) 0275A3(Ry) 027636(Rx) 02763C(Wx) 027660(Wx) 027669(Rx) 027ABB(Rx) 027ACA(Wx) 027CB1(Ry) 027E33(Wx) 02862E(Wx) 028D00(Wx) 028E1C(Wx) 029200(Wx) 02B57F(Wx) 02B9D3(Wx) 02C03D(Rx) 02C043(Wx) 02C0D1(Rx) 02C0E5(Rx) 02C135(Rx) 02C233(Rx) 02C236(Wx) 02C566(Rx) 02C5B2(Rx) 02C5B9(Wx) 02C60F(Rx) 02C616(Wx) 02C62B(Rx) 02C632(Wx) 02C689(Rx) 02C6E8(Rx) 02C717(Rx) 02C72E(Rx) 02C743(Rx) 02C85E(Rx) 02C8A5(Rx) 02C8CD(Rx) 02C905(Rx) 02CAB0(Rx) 02CB61(Wx) 02CBA5(Rx) 02CBAA(Wx) 02CBAF(Rx) 02CBBC(Wx) 02CC74(Rx) 02CC8F(Wx) 02CD25(Wx) 02CD36(Wx) 02CD4B(Wx) 02CD5C(Rx) 02CD6F(Rx) 02CD74(Wx) 02CDE9(Wx) 02CE3B(Rx) 02CE80(Rx) 02D20D(Rx) 02D349(Rx) 02D34E(Wx) 02D3F9(Rx) 02D4D9(Rx) 02D532(Rx) 02D59D(Wx) 02D78B(Rx) 02D899(Rx) 02D93F(Rx) 02D95F(Rx) 02DC17(Rx) 02E09F(Rx) 02E4CB(Wx) 02F41D(Rx) 02F68D(Rx) 02F792(Rx) 02F7AB(Rx) 02F88E(Rx) 02F943(Rx) 02F991(Rx) 02FA1E(Rx) 0326B7(Rx) 0327F2(Rx) 0327F8(Wx) 032803(Rx) 032809(Wx) 032A93(Rx) 032B50(Rx) 032B59(Wx) 032B71(Rx) 032B76(Wx) 032B80(Rx) 032B86(Wx) 034040(Rx) 0341B7(Rx) 03786A(Wx) 03788F(Wx) 03AFE3(Ry) 03B0EE(Ry) 03B1D3(Ry) 03B3B1(Ry) 03B532(Ry) 03B593(Ry) 03B5D5(Ry) 03B646(Ry) 03BCB5(Ry) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03E9FD(Rx) 03EB50(Rx) 03FC0F(Rx) 03FC68(Rx) 03FEB6(Rx) 
; ram_041E                              = $041E ; 002272(Wx) 0023CE(Wx) 0028B5(Wx) 0037F3(Wx) 0038A9(Rx) 0038AF(Wx) 0038F6(Wx) 00420D(Wx) 004429(Ry) 0058B2(Rx) 0058BB(Wx) 005E06(Rx) 005E09(Wx) 006B9A(Wx) 006E1E(Rx) 006E23(Wx) 006E44(Rx) 006E67(Rx) 00741A(Wx) 00763C(Wx) 0083F1(Rx) 0086A7(Wx) 0087A9(Wy) 008821(Rx) 008892(Rx) 0088A6(Rx) 0088AD(Wx) 0088B4(Rx) 0088C1(Wx) 0088DC(Rx) 00891F(Rx) 008AD7(Rx) 008ADD(Wx) 008AE8(Rx) 008AFC(Rx) 008B26(Rx) 008B2C(Wx) 008B37(Rx) 008B4B(Rx) 008B6B(Wx) 008B8B(Rx) 008BBC(Rx) 008C48(Rx) 009164(Rx) 009251(Rx) 009267(Rx) 0093A2(Rx) 0094C5(Ry) 0094C8(Wx) 0094E9(Rx) 0094EC(Wx) 0095F9(Rx) 0095FC(Wx) 009786(Rx) 009789(Wx) 00993A(Rx) 0099D9(Rx) 009ABB(Rx) 009AC0(Wx) 009B56(Rx) 009BB0(Rx) 00A7E3(Wx) 00AA07(Wx) 00AAD1(Wx) 00AAF7(Rx) 00AB82(Wx) 00AC36(Rx) 00AC3E(Rx) 00AC9A(Wx) 00AEAE(Wx) 00C0C6(Rx) 00C131(Rx) 00C188(Wx) 00C209(Rx) 00C20E(Wx) 00C248(Rx) 00C309(Rx) 00C380(Ry) 00C405(Rx) 00C5A1(Rx) 00C60B(Rx) 00C803(Rx) 00C8A1(Rx) 00C8B4(Rx) 00C8C0(Rx) 00CCF1(Rx) 00CCF6(Wx) 00CD61(Rx) 00D2B3(Rx) 00D30C(Rx) 00D312(Wx) 00D4D3(Rx) 00D4F3(Rx) 00D50C(Rx) 00D619(Rx) 00D8A1(Rx) 00D8A7(Wx) 00D8E5(Rx) 00D909(Rx) 00D90F(Wx) 00DBCB(Rx) 00DCC3(Wx) 00DD83(Rx) 013872(Rx) 013947(Rx) 01394C(Wx) 013976(Rx) 01397B(Wx) 01398C(Rx) 017BED(Rx) 01BEC0(Rx) 023F1F(Rx) 023F88(Rx) 024638(Rx) 0247A6(Ry) 0247A9(Wx) 0247AE(Ry) 0247B8(Ry) 0247BD(Wx) 0247C7(Wx) 02489D(Wy) 0248AE(Wy) 0252A4(Rx) 0252B7(Wx) 02555B(Rx) 02555E(Wx) 0257DC(Rx) 0257E2(Wx) 025DF6(Rx) 025DF9(Wx) 025F17(Ry) 025F1D(Wy) 025FE9(Wx) 0260B4(Rx) 0260B7(Wx) 0261DC(Wx) 0261E7(Wx) 026490(Rx) 02649F(Wx) 026581(Ry) 0265AB(Ry) 026703(Rx) 026709(Wx) 026806(Rx) 0269E8(Rx) 0269F7(Wx) 026C3B(Wx) 026C6E(Rx) 026C7D(Wx) 026EC2(Wy) 0270BB(Rx) 02718E(Ry) 027194(Wx) 0272DD(Rx) 027438(Rx) 027447(Wx) 0275A9(Wx) 027694(Rx) 027CB7(Wx) 027EBF(Wx) 02862E(Wx) 028E1C(Wx) 029200(Wx) 02925A(Wx) 02B57F(Wx) 02B9D3(Wx) 02C03D(Rx) 02C043(Wx) 02C0D1(Rx) 02C0E5(Rx) 02C233(Rx) 02C236(Wx) 02C566(Rx) 02C5B2(Rx) 02C5B9(Wx) 02C60F(Rx) 02C616(Wx) 02C62B(Rx) 02C632(Wx) 02C652(Rx) 02C689(Rx) 02C6E8(Rx) 02C717(Rx) 02C72E(Rx) 02C743(Rx) 02C85E(Rx) 02C8A5(Rx) 02C8CD(Rx) 02C905(Rx) 02C9A6(Rx) 02C9AB(Wx) 02CAB0(Rx) 02CB61(Wx) 02CBA5(Rx) 02CBAA(Wx) 02CBAF(Rx) 02CBBC(Wx) 02CC74(Rx) 02CC8F(Wx) 02CD25(Wx) 02CD36(Wx) 02CD4B(Wx) 02CD5C(Rx) 02CD6F(Rx) 02CD74(Wx) 02CDE9(Wx) 02CE3B(Rx) 02CE80(Rx) 02D20D(Rx) 02D349(Rx) 02D34E(Wx) 02D3F9(Rx) 02D4D9(Rx) 02D532(Rx) 02D59D(Wx) 02D78B(Rx) 02D899(Rx) 02D93F(Rx) 02D95F(Rx) 02DACB(Wy) 02DC17(Rx) 02DC28(Wx) 02E4CB(Wx) 02F41D(Rx) 02F68D(Rx) 02F792(Rx) 02F7AB(Rx) 02F88E(Rx) 02F8BF(Rx) 02F991(Rx) 0326A4(Wx) 03331E(Wx) 034040(Rx) 0341B7(Rx) 037795(Rx) 03788F(Wx) 03AEBD(Rx) 03AEDD(Wx) 03AFEF(Wx) 03B0EE(Ry) 03B1D3(Ry) 03B3CF(Wx) 03B3FF(Wx) 03B474(Wx) 03B537(Wx) 03B597(Rx) 03B607(Wx) 03B67B(Wx) 03B949(Rx) 03B94F(Wx) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03E9FD(Rx) 03EB50(Rx) 03FC0F(Rx) 03FC68(Rx) 03FEB6(Rx) 
; ram_041F                              = $041F ; 001FEC(Rx) 001FEF(Wx) 002272(Wx) 002491(Wx) 0028B5(Wx) 0037F3(Wx) 0038A9(Rx) 0038AF(Wx) 0038F6(Wx) 00442C(Wx) 0055E0(Wx) 005642(Rx) 005723(Ry) 005726(Wy) 0057CF(Rx) 0058B2(Rx) 0058BB(Wx) 005D2B(Wy) 005E06(Rx) 005E09(Wx) 006B9A(Wx) 006E1E(Rx) 006E23(Wx) 006E44(Rx) 006E67(Rx) 00741A(Wx) 00763C(Wx) 0083F1(Rx) 0086A7(Wx) 0087A9(Wy) 008821(Rx) 0088A6(Rx) 0088AD(Wx) 0088B4(Rx) 0088C1(Wx) 0088DC(Rx) 00891F(Rx) 008AD7(Rx) 008ADD(Wx) 008AE8(Rx) 008AFC(Rx) 008B26(Rx) 008B2C(Wx) 008B37(Rx) 008B4B(Rx) 008B6B(Wx) 008B8B(Rx) 008BBC(Rx) 008C48(Rx) 009164(Rx) 009251(Rx) 009267(Rx) 0093A2(Rx) 0094C5(Ry) 0094C8(Wx) 0094E9(Rx) 0094EC(Wx) 0095F9(Rx) 0095FC(Wx) 009786(Rx) 009789(Wx) 00993A(Rx) 0099D9(Rx) 009ABB(Rx) 009AC0(Wx) 009B56(Rx) 009BB0(Rx) 00A7E3(Wx) 00AA07(Wx) 00AAD1(Wx) 00AB82(Wx) 00AC36(Rx) 00AC3E(Rx) 00AC9A(Wx) 00AEAE(Wx) 00C134(Wy) 00C23D(Ry) 00C243(Wy) 00C299(Ry) 00C29F(Wy) 00C335(Ry) 00C33B(Wy) 00C383(Wx) 00C3C3(Rx) 00C60B(Rx) 00CBD8(Ry) 00CBDE(Wy) 00CC3C(Rx) 00CD64(Wy) 00D4D3(Rx) 00D4F3(Rx) 00D50C(Rx) 00D619(Rx) 00D8E5(Rx) 00D909(Rx) 00D90F(Wx) 00DBCB(Rx) 00DCC3(Wx) 00DD83(Rx) 013872(Rx) 013947(Rx) 01394C(Wx) 013976(Rx) 01397B(Wx) 01398C(Rx) 017BED(Rx) 01BEC0(Rx) 0247A6(Ry) 0247A9(Wx) 0247AE(Ry) 0247BD(Wx) 0247C7(Wx) 0249AE(Rx) 0249B4(Wx) 0252A4(Rx) 0252B7(Wx) 02555B(Rx) 02555E(Wx) 0257DC(Rx) 0257E2(Wx) 025DF6(Rx) 025DF9(Wx) 025F17(Ry) 025F1D(Wy) 025FE9(Wx) 0260B4(Rx) 0260B7(Wx) 0261DC(Wx) 0261E7(Wx) 026490(Rx) 02649F(Wx) 0265B1(Wx) 0269E8(Rx) 0269F7(Wx) 026C6E(Rx) 026C7D(Wx) 026EE6(Rx) 0270BB(Rx) 02718E(Ry) 027194(Wx) 0272DD(Rx) 027438(Rx) 027447(Wx) 027694(Rx) 0276FA(Wy) 027CB7(Wx) 028E1C(Wx) 029200(Wx) 02925A(Wx) 02B241(Rx) 02B247(Wx) 02B57F(Wx) 02B9D3(Wx) 02C03D(Rx) 02C043(Wx) 02C0D1(Rx) 02C0E5(Rx) 02C233(Rx) 02C236(Wx) 02C566(Rx) 02C5B2(Rx) 02C5B9(Wx) 02C689(Rx) 02C6E8(Rx) 02C717(Rx) 02C72E(Rx) 02C743(Rx) 02C905(Rx) 02CAB0(Rx) 02CB61(Wx) 02CBA5(Rx) 02CBAA(Wx) 02CBAF(Rx) 02CBBC(Wx) 02CC74(Rx) 02CC8F(Wx) 02CD25(Wx) 02CD4B(Wx) 02CD5C(Rx) 02CD6F(Rx) 02CD74(Wx) 02CDE9(Wx) 02CE3B(Rx) 02CE80(Rx) 02D20D(Rx) 02D3F9(Rx) 02D532(Rx) 02D78B(Rx) 02D899(Rx) 02D95F(Rx) 02DACB(Wy) 02DC17(Rx) 02DC28(Wx) 02E4CB(Wx) 02F41D(Rx) 02F68D(Rx) 02F792(Rx) 02F7AB(Rx) 02F88E(Rx) 02F8BF(Rx) 02F943(Rx) 02F991(Rx) 0326A4(Wx) 0326D3(Wx) 033019(Wx) 033041(Rx) 0330E9(Rx) 0330F2(Wx) 03331E(Wx) 034040(Rx) 0341B7(Rx) 037795(Rx) 03AEBD(Rx) 03AEDD(Wx) 03B0EE(Ry) 03B1D3(Ry) 03B474(Wx) 03B537(Wx) 03B597(Rx) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03E9FD(Rx) 03EB50(Rx) 03FC0F(Rx) 03FC68(Rx) 03FEB6(Rx) 
; ram_0420                              = $0420 ; 002272(Wx) 002491(Wx) 0028B5(Wx) 0037F3(Wx) 003829(Rx) 0038A9(Rx) 0038AF(Wx) 0038F6(Wx) 0055E0(Wx) 005642(Rx) 0056D7(Wx) 0058B2(Rx) 0058BB(Wx) 0058E4(Wx) 005972(Rx) 00597B(Wx) 005999(Wx) 005D28(Rx) 005E06(Rx) 005E09(Wx) 006B9A(Wx) 006E1E(Rx) 006E23(Wx) 006E44(Rx) 006E67(Rx) 00741A(Wx) 00763C(Wx) 0083F1(Rx) 0086A7(Wx) 0087A9(Wy) 008821(Rx) 008892(Rx) 0088A6(Rx) 0088AD(Wx) 0088B4(Rx) 0088C1(Wx) 0088DC(Rx) 00891F(Rx) 008AD7(Rx) 008ADD(Wx) 008AE8(Rx) 008AFC(Rx) 008B26(Rx) 008B2C(Wx) 008B37(Rx) 008B4B(Rx) 008B6B(Wx) 008B8B(Rx) 008BBC(Rx) 008C48(Rx) 009164(Rx) 009251(Rx) 009267(Rx) 0094C5(Ry) 0094C8(Wx) 0094E9(Rx) 0094EC(Wx) 0095F9(Rx) 0095FC(Wx) 009786(Rx) 009789(Wx) 00993A(Rx) 0099D9(Rx) 009ABB(Rx) 009AC0(Wx) 009B56(Rx) 009BB0(Rx) 00A7E3(Wx) 00AA07(Wx) 00AAD1(Wx) 00AAF7(Rx) 00AB82(Wx) 00AC3E(Rx) 00AC9A(Wx) 00AEAE(Wx) 00C134(Wy) 00C23D(Ry) 00C243(Wy) 00C299(Ry) 00C29F(Wy) 00C335(Ry) 00C33B(Wy) 00C383(Wx) 00C3C3(Rx) 00C60B(Rx) 00CBD8(Ry) 00CBDE(Wy) 00CC3C(Rx) 00CD64(Wy) 00D4F3(Rx) 00D50C(Rx) 00D589(Rx) 00D58F(Wx) 00D692(Rx) 00D697(Wx) 00DBCB(Rx) 00DCC3(Wx) 00DD83(Rx) 013872(Rx) 013947(Rx) 01394C(Wx) 013976(Rx) 01397B(Wx) 01398C(Rx) 017BED(Rx) 01BEC0(Rx) 024638(Rx) 0247A6(Ry) 0247A9(Wx) 0247AE(Ry) 0247BD(Wx) 0249AE(Rx) 0249B4(Wx) 0252A4(Rx) 0252B7(Wx) 02555B(Rx) 02555E(Wx) 0257DC(Rx) 0257E2(Wx) 025DF6(Rx) 025DF9(Wx) 025FE9(Wx) 0260B4(Rx) 0260B7(Wx) 026490(Rx) 02649F(Wx) 0269E8(Rx) 0269F7(Wx) 026C6E(Rx) 026C7D(Wx) 026EE6(Rx) 0270BB(Rx) 02718E(Ry) 027194(Wx) 0272DD(Rx) 027438(Rx) 027447(Wx) 027694(Rx) 0276FA(Wy) 027953(Rx) 027CB7(Wx) 028E1C(Wx) 029200(Wx) 02925A(Wx) 02B9D3(Wx) 02C03D(Rx) 02C043(Wx) 02C0D1(Rx) 02C0E5(Rx) 02C135(Rx) 02C233(Rx) 02C236(Wx) 02C566(Rx) 02C5B2(Rx) 02C5B9(Wx) 02C662(Rx) 02C689(Rx) 02C6E8(Rx) 02C72E(Rx) 02C743(Rx) 02C905(Rx) 02CAB0(Rx) 02CB04(Rx) 02CBA5(Rx) 02CBAA(Wx) 02CDE9(Wx) 02CE3B(Rx) 02CE80(Rx) 02CF50(Rx) 02D78B(Rx) 02D899(Rx) 02D93F(Rx) 02D95F(Rx) 02DACB(Wy) 02DC17(Rx) 02DC28(Wx) 02E09F(Rx) 02E4CB(Wx) 02F41D(Rx) 02F68D(Rx) 02F792(Rx) 02F7AB(Rx) 02F88E(Rx) 02F8BF(Rx) 0326A4(Wx) 0326D3(Wx) 033019(Wx) 033041(Rx) 0330E9(Rx) 0330F2(Wx) 03331E(Wx) 034040(Rx) 037795(Rx) 03788F(Wx) 03AEBD(Rx) 03AEDD(Wx) 03B0EE(Ry) 03B1D3(Ry) 03B474(Wx) 03B537(Wx) 03B597(Rx) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03E9FD(Rx) 03EB50(Rx) 03FC0F(Rx) 03FC68(Rx) 03FEB6(Rx) 
; ram_0421                              = $0421 ; 002272(Wx) 002491(Wx) 0028B5(Wx) 0037F3(Wx) 003829(Rx) 0038A9(Rx) 0038AF(Wx) 0038F6(Wx) 0055E0(Wx) 005642(Rx) 005723(Ry) 005726(Wy) 0057CF(Rx) 005D2B(Wy) 005E06(Rx) 005E09(Wx) 006B9A(Wx) 006E1E(Rx) 006E23(Wx) 006E44(Rx) 006E67(Rx) 0075A2(Wx) 00763C(Wx) 007976(Wx) 0083F1(Rx) 0086A7(Wx) 0087A9(Wy) 008821(Rx) 008892(Rx) 0088A6(Rx) 0088AD(Wx) 0088DC(Rx) 00891F(Rx) 008A78(Wx) 008AD7(Rx) 008ADD(Wx) 008AE8(Rx) 008B26(Rx) 008B2C(Wx) 008B37(Rx) 008B6B(Wx) 008B8B(Rx) 008BBC(Rx) 008C48(Rx) 009164(Rx) 009251(Rx) 009267(Rx) 0094C5(Ry) 0094C8(Wx) 0094E9(Rx) 0094EC(Wx) 0095F9(Rx) 0095FC(Wx) 009786(Rx) 009789(Wx) 0099D9(Rx) 009ABB(Rx) 009AC0(Wx) 009B56(Rx) 009BB0(Rx) 00A7E3(Wx) 00AA07(Wx) 00AAD1(Wx) 00AAF7(Rx) 00AB82(Wx) 00AC36(Rx) 00AC3E(Rx) 00AC9A(Wx) 00AEAE(Wx) 00C134(Wy) 00C23D(Ry) 00C243(Wy) 00C299(Ry) 00C29F(Wy) 00C335(Ry) 00C33B(Wy) 00C383(Wx) 00C3C3(Rx) 00C60B(Rx) 00CBD8(Ry) 00CBDE(Wy) 00CC3C(Rx) 00D4D3(Rx) 00D4F3(Rx) 00D50C(Rx) 00D8E5(Rx) 00D909(Rx) 00D90F(Wx) 00DBCB(Rx) 00DCC3(Wx) 00DD83(Rx) 013872(Rx) 013947(Rx) 01394C(Wx) 013976(Rx) 01397B(Wx) 01398C(Rx) 017BED(Rx) 017CD4(Rx) 017CD7(Wy) 017DC8(Rx) 017E36(Ry) 017E42(Ry) 017E70(Ry) 01BEC0(Rx) 0247A6(Ry) 0247A9(Wx) 0247AE(Ry) 0247BD(Wx) 0247C7(Wx) 0249AE(Rx) 0249B4(Wx) 0252A4(Rx) 0252B7(Wx) 02555B(Rx) 02555E(Wx) 0257DC(Rx) 0257E2(Wx) 025DF6(Rx) 025DF9(Wx) 025F17(Ry) 025F1D(Wy) 025FE9(Wx) 0260B4(Rx) 0260B7(Wx) 026490(Rx) 02649F(Wx) 0269E8(Rx) 0269F7(Wx) 026C6E(Rx) 026C7D(Wx) 026EE6(Rx) 0270BB(Rx) 02718E(Ry) 027194(Wx) 0272DD(Rx) 027438(Rx) 027447(Wx) 027694(Rx) 02774E(Wy) 027953(Rx) 027CB7(Wx) 028E1C(Wx) 029200(Wx) 02B9D3(Wx) 02C03D(Rx) 02C043(Wx) 02C0D1(Rx) 02C0E5(Rx) 02C135(Rx) 02C233(Rx) 02C236(Wx) 02C566(Rx) 02C5B2(Rx) 02C5B9(Wx) 02C662(Rx) 02C689(Rx) 02C6E8(Rx) 02C72E(Rx) 02C743(Rx) 02CAB0(Rx) 02CB04(Rx) 02CBA5(Rx) 02CBAA(Wx) 02CDE9(Wx) 02CE3B(Rx) 02CE80(Rx) 02CF50(Rx) 02D78B(Rx) 02D899(Rx) 02D95F(Rx) 02DACB(Wy) 02DC17(Rx) 02DC28(Wx) 02E09F(Rx) 02E4CB(Wx) 02F68D(Rx) 02F792(Rx) 02F7AB(Rx) 02F88E(Rx) 02F8BF(Rx) 0326A4(Wx) 0326D3(Wx) 03331E(Wx) 034040(Rx) 03788F(Wx) 03B0EE(Ry) 03B1D3(Ry) 03BD38(Wx) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03E9FD(Rx) 03EB50(Rx) 03FC68(Rx) 03FEB6(Rx) 
; ram_0422                              = $0422 ; 002272(Wx) 002491(Wx) 0028B5(Wx) 005723(Ry) 005726(Wy) 0057CF(Rx) 005D2B(Wy) 005E06(Rx) 005E09(Wx) 006B9A(Wx) 006E1E(Rx) 006E23(Wx) 006E44(Rx) 006E67(Rx) 0075A2(Wx) 00763C(Wx) 007976(Wx) 0083F1(Rx) 0086A7(Wx) 0087A9(Wy) 008821(Rx) 008892(Rx) 0088A6(Rx) 0088AD(Wx) 0088DC(Rx) 00891F(Rx) 008DB4(Rx) 008EC7(Rx) 009164(Rx) 009251(Rx) 009267(Rx) 0094C5(Ry) 0094C8(Wx) 0094E9(Rx) 0094EC(Wx) 0095F9(Rx) 0095FC(Wx) 009786(Rx) 009789(Wx) 0099D9(Rx) 009ABB(Rx) 009AC0(Wx) 009B56(Rx) 009BB0(Rx) 00A7E3(Wx) 00AAD1(Wx) 00AB82(Wx) 00AC36(Rx) 00AC3E(Rx) 00AC9A(Wx) 00C134(Wy) 00C23D(Ry) 00C243(Wy) 00C299(Ry) 00C29F(Wy) 00C335(Ry) 00C33B(Wy) 00C383(Wx) 00C3C3(Rx) 00C60B(Rx) 00CBD8(Ry) 00CBDE(Wy) 00CC3C(Rx) 00D4D3(Rx) 00D4F3(Rx) 00D50C(Rx) 00D8A1(Rx) 00D8A7(Wx) 00D8E5(Rx) 00D909(Rx) 00D90F(Wx) 013872(Rx) 013947(Rx) 01394C(Wx) 013976(Rx) 01397B(Wx) 01398C(Rx) 017CD7(Wy) 017DC8(Rx) 017E36(Ry) 017E3C(Wx) 017E42(Ry) 017E48(Wx) 017E70(Ry) 017E74(Rx) 01BEC0(Rx) 0247A6(Ry) 0247A9(Wx) 0247AE(Ry) 0247BD(Wx) 0247C7(Wx) 0249AE(Rx) 0249B4(Wx) 0252A4(Rx) 0252B7(Wx) 02555B(Rx) 02555E(Wx) 0257DC(Rx) 0257E2(Wx) 025F17(Ry) 025F1D(Wy) 025FE9(Wx) 0260B4(Rx) 0260B7(Wx) 026490(Rx) 02649F(Wx) 0269E8(Rx) 0269F7(Wx) 026C6E(Rx) 026C7D(Wx) 0270BB(Rx) 02718E(Ry) 027194(Wx) 0272DD(Rx) 027438(Rx) 027447(Wx) 027694(Rx) 027CB7(Wx) 028E1C(Wx) 029200(Wx) 02B9D3(Wx) 02C03D(Rx) 02C043(Wx) 02C0D1(Rx) 02C0E5(Rx) 02C662(Rx) 02C689(Rx) 02C6E8(Rx) 02C72E(Rx) 02C743(Rx) 02CB04(Rx) 02CBA5(Rx) 02CBAA(Wx) 02CDE9(Wx) 02CE3B(Rx) 02CE80(Rx) 02CF50(Rx) 02D899(Rx) 02DACB(Wy) 02DC17(Rx) 02DC28(Wx) 02E4CB(Wx) 02F68D(Rx) 02F792(Rx) 02F7AB(Rx) 02F88E(Rx) 02F8BF(Rx) 0326D3(Wx) 03331E(Wx) 034040(Rx) 03B1D3(Ry) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03E9FD(Rx) 03EB50(Rx) 03FC0F(Rx) 03FC68(Rx) 03FEB6(Rx) 
; ram_0423                              = $0423 ; 002272(Wx) 0028B5(Wx) 005723(Ry) 005726(Wy) 0057CF(Rx) 005D2B(Wy) 005E06(Rx) 005E09(Wx) 006B9A(Wx) 006E1E(Rx) 006E23(Wx) 006E44(Rx) 006E67(Rx) 0075A2(Wx) 00763C(Wx) 007976(Wx) 0083F1(Rx) 0086A7(Wx) 0087A9(Wy) 008821(Rx) 0088A6(Rx) 0088AD(Wx) 0088DC(Rx) 00891F(Rx) 009164(Rx) 009251(Rx) 009267(Rx) 0094C5(Ry) 0094C8(Wx) 0094E9(Rx) 0094EC(Wx) 0095F9(Rx) 0095FC(Wx) 009786(Rx) 009789(Wx) 0099D9(Rx) 009ABB(Rx) 009AC0(Wx) 009B56(Rx) 009BB0(Rx) 00A7E3(Wx) 00AAD1(Wx) 00AB82(Wx) 00AC36(Rx) 00AC3E(Rx) 00AC9A(Wx) 00C134(Wy) 00C23D(Ry) 00C243(Wy) 00C299(Ry) 00C29F(Wy) 00C383(Wx) 00C3C3(Rx) 00C60B(Rx) 00D4D3(Rx) 00D4F3(Rx) 00D50C(Rx) 013872(Rx) 013947(Rx) 01394C(Wx) 013976(Rx) 01397B(Wx) 01398C(Rx) 017BED(Rx) 017CD7(Wy) 017DC8(Rx) 017E36(Ry) 017E3C(Wx) 017E42(Ry) 017E48(Wx) 017E70(Ry) 017E74(Rx) 01BEC0(Rx) 023F1F(Rx) 023F88(Rx) 0247A6(Ry) 0247A9(Wx) 0247B3(Wx) 0247BD(Wx) 0247C7(Wx) 02489D(Wy) 0249AE(Rx) 0249B4(Wx) 0252A4(Rx) 0252B7(Wx) 0254A9(Wx) 02555B(Rx) 02555E(Wx) 025F17(Ry) 025F1D(Wy) 025FE9(Wx) 0260B4(Rx) 0260B7(Wx) 026490(Rx) 02649F(Wx) 026903(Wx) 0269E8(Rx) 0269F7(Wx) 026C6E(Rx) 026C7D(Wx) 02709E(Rx) 02718E(Ry) 027194(Wx) 027438(Rx) 027447(Wx) 027470(Wy) 0274D9(Rx) 027694(Rx) 027D15(Rx) 027D1C(Wx) 028E1C(Wx) 029200(Wx) 02B9D3(Wx) 02C03D(Rx) 02C043(Wx) 02C0D1(Rx) 02C0E5(Rx) 02C689(Rx) 02C6E8(Rx) 02C72E(Rx) 02C743(Rx) 02CAB0(Rx) 02CBA5(Rx) 02CBAA(Wx) 02CE3B(Rx) 02CF50(Rx) 02D899(Rx) 02DACB(Wy) 02DC28(Wx) 02DC38(Rx) 02F68D(Rx) 02F792(Rx) 02F7AB(Rx) 02F88E(Rx) 02F8BF(Rx) 02FA1E(Rx) 03331E(Wx) 034040(Rx) 03B1D3(Ry) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03EB50(Rx) 03FC68(Rx) 03FEB6(Rx) 
; ram_0424                              = $0424 ; 002272(Wx) 005723(Ry) 005726(Wy) 0057CF(Rx) 005D2B(Wy) 005E06(Rx) 005E09(Wx) 006B9A(Wx) 006E1E(Rx) 006E23(Wx) 006E67(Rx) 00763C(Wx) 007976(Wx) 0083F1(Rx) 0086A7(Wx) 0087A9(Wy) 008821(Rx) 0088A6(Rx) 0088AD(Wx) 00891F(Rx) 009164(Rx) 009251(Rx) 009267(Rx) 0094C5(Ry) 0094C8(Wx) 0094E9(Rx) 0094EC(Wx) 0095F9(Rx) 0095FC(Wx) 009786(Rx) 009789(Wx) 0099D9(Rx) 009ABB(Rx) 009AC0(Wx) 009B56(Rx) 009BB0(Rx) 00A7E3(Wx) 00AAD1(Wx) 00AB82(Wx) 00AC36(Rx) 00AC3E(Rx) 00AC9A(Wx) 00C299(Ry) 00C29F(Wy) 00C335(Ry) 00C33B(Wy) 00C60B(Rx) 00D4F3(Rx) 00D50C(Rx) 00DBCB(Rx) 00DD83(Rx) 00DEE5(Wx) 013872(Rx) 013947(Rx) 01394C(Wx) 013976(Rx) 01397B(Wx) 01398C(Rx) 017CD7(Wy) 017DC8(Rx) 017E36(Ry) 017E3C(Wx) 017E42(Ry) 017E48(Wx) 017E70(Ry) 017E74(Rx) 01BEC0(Rx) 023F1F(Rx) 023F88(Rx) 0247A6(Ry) 0247A9(Wx) 0247B3(Wx) 0247BD(Wx) 02489D(Wy) 0249AE(Rx) 0249B4(Wx) 0252A4(Rx) 0252B7(Wx) 02555B(Rx) 02555E(Wx) 025FE9(Wx) 0260B4(Rx) 0260B7(Wx) 026490(Rx) 02649F(Wx) 026587(Wx) 026590(Wx) 0269E8(Rx) 0269F7(Wx) 026C6E(Rx) 026C7D(Wx) 02709E(Rx) 02718E(Ry) 027194(Wx) 027438(Rx) 027447(Wx) 027470(Wy) 0274D9(Rx) 027D15(Rx) 027D1C(Wx) 028D30(Wx) 028E1C(Wx) 02B9D3(Wx) 02C03D(Rx) 02C043(Wx) 02C0D1(Rx) 02C0E5(Rx) 02C689(Rx) 02C6E8(Rx) 02C72E(Rx) 02C743(Rx) 02CBAF(Rx) 02CBBC(Wx) 02CE3B(Rx) 02CF50(Rx) 02D78B(Rx) 02DAC8(Rx) 02DC51(Wx) 02DE3A(R)  02F68D(Rx) 02F792(Rx) 02F7AB(Rx) 02F88E(Rx) 02F8BF(Rx) 034040(Rx) 03B1D3(Ry) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03EB50(Rx) 03FC0F(Rx) 03FC68(Rx) 03FEB6(Rx) 
; ram_0425                              = $0425 ; 002272(Wx) 005723(Ry) 005726(Wy) 0057CF(Rx) 005D2B(Wy) 005E06(Rx) 005E09(Wx) 006B9A(Wx) 006E1E(Rx) 006E23(Wx) 006E67(Rx) 00763C(Wx) 007976(Wx) 0083F1(Rx) 0086A7(Wx) 0087A9(Wy) 008821(Rx) 0088A6(Rx) 0088AD(Wx) 0088DC(Rx) 00891F(Rx) 009164(Rx) 009251(Rx) 009267(Rx) 0094C5(Ry) 0094C8(Wx) 0094E9(Rx) 0094EC(Wx) 0095F9(Rx) 0095FC(Wx) 009786(Rx) 009789(Wx) 0099D9(Rx) 009ABB(Rx) 009AC0(Wx) 009B56(Rx) 009BB0(Rx) 00A7E3(Wx) 00AAD1(Wx) 00AAF7(Rx) 00AC3E(Rx) 00AC9A(Wx) 00D4F3(Rx) 00D50C(Rx) 013872(Rx) 013947(Rx) 01394C(Wx) 013976(Rx) 01397B(Wx) 01398C(Rx) 017BED(Rx) 017C00(Wx) 017CD7(Wy) 017DC8(Rx) 017E36(Ry) 017E3C(Wx) 017E42(Ry) 017E48(Wx) 017E70(Ry) 017E74(Rx) 01BEC0(Rx) 0247A9(Wx) 0247B3(Wx) 0247BD(Wx) 0248E9(Wy) 0249AE(Rx) 0249B4(Wx) 0252A4(Rx) 0252B7(Wx) 02555B(Rx) 02555E(Wx) 025FE9(Wx) 0260B4(Rx) 0260B7(Wx) 0265B1(Wx) 026C6E(Rx) 026C7D(Wx) 02709E(Rx) 02718E(Ry) 027194(Wx) 027438(Rx) 027447(Wx) 027470(Wy) 0274D9(Rx) 027D15(Rx) 027D1C(Wx) 028E1C(Wx) 02B9D3(Wx) 02C03D(Rx) 02C043(Wx) 02C0D1(Rx) 02C689(Rx) 02C6E8(Rx) 02C72E(Rx) 02C743(Rx) 02CBA5(Rx) 02CBAA(Wx) 02CCDD(Wx) 02CDE9(Wx) 02CE3B(Rx) 02CF7C(Wx) 02D240(Wx) 02D982(Wx) 02DE3F(Wx) 02F68D(Rx) 02F792(Rx) 02F7AB(Rx) 02F88E(Rx) 02F8BF(Rx) 034040(Rx) 03788F(Wx) 03B0EE(Ry) 03B1D3(Ry) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03EB50(Rx) 03FC0F(Rx) 03FC68(Rx) 03FEB6(Rx) 
; ram_0426                              = $0426 ; 002272(Wx) 005723(Ry) 005726(Wy) 0057CF(Rx) 005D2B(Wy) 005E06(Rx) 005E09(Wx) 006B9A(Wx) 006E1E(Rx) 006E23(Wx) 006E67(Rx) 0075A2(Wx) 00763C(Wx) 007976(Wx) 0083F1(Rx) 0086A7(Wx) 009164(Rx) 009251(Rx) 009267(Rx) 0093A2(Rx) 0094C5(Ry) 0094C8(Wx) 0095F9(Rx) 0095FC(Wx) 009B56(Rx) 009BB0(Rx) 00AAD1(Wx) 00AC3E(Rx) 00AC9A(Wx) 00D4D3(Rx) 00D4F3(Rx) 00D50C(Rx) 013872(Rx) 013947(Rx) 01394C(Wx) 013976(Rx) 01397B(Wx) 01398C(Rx) 017BED(Rx) 017C00(Wx) 017CD7(Wy) 017DC8(Rx) 017E36(Ry) 017E3C(Wx) 017E42(Ry) 017E48(Wx) 017E70(Ry) 017E74(Rx) 01BEC0(Rx) 0247A6(Ry) 0247A9(Wx) 0247B3(Wx) 0247C7(Wx) 0252A4(Rx) 0252B7(Wx) 02555B(Rx) 02555E(Wx) 025F17(Ry) 025F1D(Wy) 0260B4(Rx) 0260B7(Wx) 026C6E(Rx) 026C7D(Wx) 02709E(Rx) 02718E(Ry) 027194(Wx) 027438(Rx) 027447(Wx) 027470(Wy) 0274D9(Rx) 027D15(Rx) 027D1C(Wx) 028E1C(Wx) 02B9D3(Wx) 02C03D(Rx) 02C043(Wx) 02C0D1(Rx) 02C0E5(Rx) 02C689(Rx) 02C6E8(Rx) 02C717(Rx) 02C72E(Rx) 02C743(Rx) 02CBA5(Rx) 02CBAA(Wx) 02CBAF(Rx) 02CBBC(Wx) 02CCDD(Wx) 02CDE9(Wx) 02CE3B(Rx) 02CF7C(Wx) 02D240(Wx) 02D78B(Rx) 02D982(Wx) 02F41D(Rx) 02F68D(Rx) 02F792(Rx) 02F7AB(Rx) 02F88E(Rx) 02F8BF(Rx) 02F991(Rx) 034040(Rx) 03B1D3(Ry) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03FC0F(Rx) 03FC68(Rx) 03FEB6(Rx) 
; ram_0427                              = $0427 ; 002272(Wx) 005723(Ry) 005726(Wy) 0057CF(Rx) 005D2B(Wy) 005E06(Rx) 005E09(Wx) 006B9A(Wx) 006E1E(Rx) 006E23(Wx) 006E67(Rx) 00763C(Wx) 007976(Wx) 0083F1(Rx) 0086A7(Wx) 00891F(Rx) 009164(Rx) 009251(Rx) 009267(Rx) 0094C5(Ry) 0094C8(Wx) 0095F9(Rx) 0095FC(Wx) 009786(Rx) 009789(Wx) 009B56(Rx) 009BB0(Rx) 00A7E3(Wx) 00AAD1(Wx) 00AC3E(Rx) 00AC9A(Wx) 013872(Rx) 013947(Rx) 01394C(Wx) 013976(Rx) 01397B(Wx) 01398C(Rx) 017BED(Rx) 017C00(Wx) 017CD7(Wy) 017DC8(Rx) 017E36(Ry) 017E3C(Wx) 017E42(Ry) 017E48(Wx) 017E70(Ry) 017E74(Rx) 01BEC0(Rx) 0247A9(Wx) 0247B3(Wx) 0260B4(Rx) 0260B7(Wx) 02709E(Rx) 02718E(Ry) 027194(Wx) 027438(Rx) 027447(Wx) 027470(Wy) 0274D9(Rx) 027D15(Rx) 027D1C(Wx) 028E1C(Wx) 02C03D(Rx) 02C043(Wx) 02C0D1(Rx) 02C0E5(Rx) 02C689(Rx) 02C6E8(Rx) 02C717(Rx) 02C72E(Rx) 02C743(Rx) 02CBAF(Rx) 02CBBC(Wx) 02CCDD(Wx) 02CDE9(Wx) 02CE3B(Rx) 02CF7C(Wx) 02D240(Wx) 02D982(Wx) 02F41D(Rx) 02F68D(Rx) 02F88E(Rx) 02F8BF(Rx) 034040(Rx) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03FC0F(Rx) 03FC68(Rx) 03FEB6(Rx) 
; ram_0428                              = $0428 ; 002272(Wx) 006B9A(Wx) 006E1E(Rx) 006E23(Wx) 006E67(Rx) 0075A2(Wx) 00763C(Wx) 007976(Wx) 0083F1(Rx) 0086A7(Wx) 009164(Rx) 009251(Rx) 009267(Rx) 0094C5(Ry) 0094C8(Wx) 0095F9(Rx) 0095FC(Wx) 009B56(Rx) 009BB0(Rx) 00AAD1(Wx) 013872(Rx) 013947(Rx) 01394C(Wx) 013976(Rx) 01397B(Wx) 01398C(Rx) 017C00(Wx) 017CD7(Wy) 017DC8(Rx) 017E3C(Wx) 017E48(Wx) 017E74(Rx) 01BEC0(Rx) 0247A6(Ry) 0247A9(Wx) 0260B4(Rx) 0260B7(Wx) 02709E(Rx) 027194(Wx) 027438(Rx) 027447(Wx) 027470(Wy) 0274D9(Rx) 028E1C(Wx) 02C03D(Rx) 02C043(Wx) 02C0D1(Rx) 02C689(Rx) 02C6E8(Rx) 02C717(Rx) 02C72E(Rx) 02C743(Rx) 02CDE9(Wx) 02CE3B(Rx) 02CF7C(Wx) 02D240(Wx) 02D982(Wx) 02F68D(Rx) 02F88E(Rx) 02F8BF(Rx) 034040(Rx) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03FC0F(Rx) 03FC68(Rx) 03FEB6(Rx) 
; ram_0429                              = $0429 ; 002272(Wx) 006B9A(Wx) 006E1E(Rx) 006E23(Wx) 006E67(Rx) 0075A2(Wx) 00763C(Wx) 007976(Wx) 0086A7(Wx) 009164(Rx) 009251(Rx) 009267(Rx) 00AAD1(Wx) 013872(Rx) 013947(Rx) 01394C(Wx) 013976(Rx) 01397B(Wx) 01398C(Rx) 0281E0(Wx) 0282D6(Wx) 028E1C(Wx) 02C03D(Rx) 02C043(Wx) 02C0D1(Rx) 02C0E5(Rx) 02C135(Rx) 02C689(Rx) 02C6E8(Rx) 02CE3B(Rx) 02E09F(Rx) 02F8BF(Rx) 034040(Rx) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03FC0F(Rx) 03FC68(Rx) 
; ram_042A                              = $042A ; 002272(Wx) 006B9A(Wx) 006E1E(Rx) 006E23(Wx) 006E67(Rx) 00763C(Wx) 0086A7(Wx) 009164(Rx) 009251(Rx) 009267(Rx) 00AAD1(Wx) 013872(Rx) 013947(Rx) 01394C(Wx) 013976(Rx) 01397B(Wx) 01398C(Rx) 0281E0(Wx) 0282D6(Wx) 028E1C(Wx) 02C03D(Rx) 02C043(Wx) 02C0D1(Rx) 02C0E5(Rx) 02C135(Rx) 02C689(Rx) 02C6E8(Rx) 02CE3B(Rx) 02E09F(Rx) 02F8BF(Rx) 034040(Rx) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03FC0F(Rx) 03FC68(Rx) 
; ram_042B                              = $042B ; 002272(Wx) 006B9A(Wx) 006E1E(Rx) 006E23(Wx) 006E67(Rx) 0075A2(Wx) 00763C(Wx) 0086A7(Wx) 009164(Rx) 009251(Rx) 009267(Rx) 00AAD1(Wx) 013947(Rx) 01394C(Wx) 013976(Rx) 01397B(Wx) 01398C(Rx) 0281E0(Wx) 0282D6(Wx) 02C03D(Rx) 02C043(Wx) 02C0D1(Rx) 02C0E5(Rx) 02C135(Rx) 02CE3B(Rx) 02E09F(Rx) 02F8BF(Rx) 034040(Rx) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03FC0F(Rx) 03FC68(Rx) 
; ram_042C                              = $042C ; 002272(Wx) 006DBD(Wx) 00763C(Wx) 0086A7(Wx) 009164(Rx) 009251(Rx) 009267(Rx) 00AAD1(Wx) 013947(Rx) 01394C(Wx) 013976(Rx) 01397B(Wx) 01398C(Rx) 0281E0(Wx) 0282D6(Wx) 0284F6(Wx) 02C03D(Rx) 02C043(Wx) 02C0D1(Rx) 02C0E5(Rx) 02C135(Rx) 02CE3B(Rx) 02E09F(Rx) 02F8BF(Rx) 034040(Rx) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03FC0F(Rx) 03FC68(Rx) 
; ram_042D                              = $042D ; 002272(Wx) 00763C(Wx) 013976(Rx) 01397B(Wx) 01398C(Rx) 0281E0(Wx) 0282D6(Wx) 02C03D(Rx) 02C043(Wx) 02C0D1(Rx) 02C0E5(Rx) 02C135(Rx) 02CE3B(Rx) 02E09F(Rx) 034040(Rx) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03FC0F(Rx) 03FC68(Rx) 
; ram_042E                              = $042E ; 002272(Wx) 00763C(Wx) 013976(Rx) 01397B(Wx) 01398C(Rx) 0281E0(Wx) 0282D6(Wx) 02C03D(Rx) 02C043(Wx) 02C0D1(Rx) 02C0E5(Rx) 02C135(Rx) 02CE3B(Rx) 02E09F(Rx) 034040(Rx) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03FC0F(Rx) 03FC68(Rx) 
; ram_042F                              = $042F ; 001398(Wx) 002272(Wx) 0075A2(Wx) 00763C(Wx) 02F461(R)  02F617(R)  034040(Rx) 0341B7(Rx) 03BD38(Wx) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03FA2F(Wx) 
; ram_0430                              = $0430 ; 002272(Wx) 00763C(Wx) 00B276(Rx) 00B51A(Wx) 0284F6(Wx) 02F4B0(Rx) 02F609(Ry) 034040(Rx) 038C9D(Wx) 03AEBD(Rx) 03AEDD(Wx) 03AFEF(Wx) 03B061(Wx) 03B09A(Wx) 03B0F2(Rx) 03B17E(Wx) 03B1D7(Rx) 03B344(Rx) 03B34A(Wx) 03B363(Rx) 03B366(Wx) 03B3CF(Wx) 03B3FF(Wx) 03B474(Wx) 03B4E1(Wx) 03B537(Wx) 03B597(Rx) 03B607(Wx) 03B67B(Wx) 03B6FE(Wx) 03B79B(Wx) 03B81A(Wx) 03B87E(Wx) 03B894(Wx) 03B949(Rx) 03B94F(Wx) 03B96F(Rx) 03B975(Wx) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03FC0F(Rx) 03FC68(Rx) 
; ram_0431                              = $0431 ; 002272(Wx) 00763C(Wx) 00B276(Rx) 00B51A(Wx) 0284F6(Wx) 02F4B0(Rx) 02F609(Ry) 034040(Rx) 038C9D(Wx) 03AEBD(Rx) 03AEDD(Wx) 03AFEF(Wx) 03B064(Wx) 03B09A(Wx) 03B17E(Wx) 03B1D7(Rx) 03B344(Rx) 03B34A(Wx) 03B363(Rx) 03B366(Wx) 03B474(Wx) 03B537(Wx) 03B597(Rx) 03B79B(Wx) 03B81D(Wx) 03B87E(Wx) 03B894(Wx) 03B949(Rx) 03B94F(Wx) 03B96F(Rx) 03B975(Wx) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 03FC68(Rx) 
; ram_0432                              = $0432 ; 002272(Wx) 00763C(Wx) 00B276(Rx) 00B51A(Wx) 0284F6(Wx) 02F4B0(Rx) 02F609(Ry) 034040(Rx) 038C9D(Wx) 03AEBD(Rx) 03AEDD(Wx) 03AFEF(Wx) 03B067(Wx) 03B09A(Wx) 03B17E(Wx) 03B1D7(Rx) 03B344(Rx) 03B34A(Wx) 03B363(Rx) 03B366(Wx) 03B474(Wx) 03B537(Wx) 03B597(Rx) 03B820(Wx) 03B87E(Wx) 03B894(Wx) 03B949(Rx) 03B94F(Wx) 03B96F(Rx) 03B975(Wx) 03E03F(Wi) 03E80E(Wx) 03E845(Wx) 
; ram_0433                              = $0433 ; 002272(Wx) 02F63B(Wx) 034040(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_0434                              = $0434 ; 000D9F(W)  000ECA(W)  002272(Wx) 034040(Rx) 0341B7(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_0435                              = $0435 ; 000DA2(W)  000E9E(W)  002272(Wx) 034040(Rx) 0341B7(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_0436                              = $0436 ; 002272(Wx) 009CC3(Wx) 009CE6(Wx) 00AFC6(Rx) 00B006(Rx) 00B00C(Wx) 00B01A(Rx) 00B13E(Wx) 00B142(Rx) 00B148(Wx) 00B16F(Rx) 00B253(Rx) 00B29F(Wx) 00B2C1(Rx) 00B2CF(Rx) 00B2DE(Rx) 00B3FB(Rx) 00B4D2(Rx) 034040(Rx) 038DD9(W)  03E03F(Wi) 03E845(Wx) 03FC0F(Rx) 
; ram_0437                              = $0437 ; 002272(Wx) 009CE6(Wx) 00AFC6(Rx) 00B006(Rx) 00B00C(Wx) 00B01A(Rx) 00B13E(Wx) 00B16F(Rx) 00B253(Rx) 00B29F(Wx) 00B2C1(Rx) 00B2CF(Rx) 00B2DE(Rx) 00B4D2(Rx) 034040(Rx) 03E03F(Wi) 03E845(Wx) 



; !!! 5th-9th addresses also used for pal buffer 0x007950
ram_obj_pos_X_lo                        = $0438 ; 000B3B(W)  000B7A(W)  00130A(R)  00135A(R)  00135F(W)  00136C(R)  001371(W)  0014E3(R)  001673(W)  0016A5(W)  00226F(Wx) 002A29(R)  002A97(W)  002B18(R)  002B1E(W)  002BE5(R)  002BEB(W)  002BFB(R)  002C18(R)  0034AA(R)  003549(R)  00381B(R)  003B3C(R)  004204(R)  006333(W)  00634A(W)  006351(W)  00668E(W)  006BB2(Wx) 006E3F(Rx) 0071C3(Wx) 00753F(Wx) 007599(R)  00763F(Wx) 0082EC(R)  008933(R)  009463(R)  00B15C(R)  00B1C2(R)  00B1D2(R)  00C1BB(R)  00CB97(R)  00CD04(R)  00D2E9(R)  00D45C(R)  00D5EA(Ry) 00D7BF(R)  00D84F(R)  00D870(R)  00DC14(R)  00DCA7(R)  00DD6A(R)  01339E(W)  0133B3(R)  01F5E7(R)  01F611(R)  023F6C(R)  02461C(R)  025491(R)  025C07(R)  025C73(R)  025E5D(R)  025F20(R)  026CE6(R)  027897(R)  0278D4(R)  0278DF(R)  0278F5(R)  027906(R)  027923(R)  027A60(R)  0286E9(R)  02874D(R)  028786(Rx) 0287A7(R)  0287B7(R)  0287E6(R)  0287F6(R)  02893D(R)  0289CD(R)  0289FB(R)  028A06(R)  028A56(R)  028E2E(R)  02B579(Wx) 02C0C7(R)  02C245(R)  02C42D(R)  02C9DC(R)  02CA0D(R)  02CA1F(R)  02CA9A(R)  02D139(R)  02D146(R)  02D5A0(R)  02D7A2(R)  02DA0D(R)  02DA31(R)  02F267(R)  02F459(R)  02F758(R)  02F8A5(R)  02F91E(R)  02F96C(R)  02FA08(R)  0324AB(R)  032859(R)  034045(Rx) 0341BC(Rx) 0380CF(R)  0385A8(R)  0385AB(W)  0385B9(R)  0385BC(W)  0385F1(R)  0385F4(W)  03860A(R)  038616(W)  03861E(W)  03864B(R)  03864E(W)  038656(R)  038664(R)  038686(W)  038690(R)  038768(R)  03877C(R)  038782(W)  03879C(R)  0387B2(R)  0387C7(W)  0387EC(W)  038C3B(R)  038C8D(R)  038D4F(R)  038DC5(R)  038DEA(R)  039E46(R)  039E4F(R)  039E5E(W)  039E64(W)  03A1E0(R)  03A1EE(R)  03A20E(R)  03A21C(R)  03A3A2(R)  03A3A8(W)  03A3BA(R)  03A3C0(W)  03A517(W)  03A562(R)  03A56B(R)  03AFDD(Ry) 03B091(R)  03B175(R)  03B3AC(Ry) 03B4D8(R)  03B52B(Ry) 03B581(Ry) 03B5D0(Ry) 03B641(Ry) 03B6F2(R)  03B792(R)  03B869(R)  03BCB0(Ry) 03BDAC(Wy) 03E03F(Wi) 03E845(Wx) 03F722(W)  03F9D7(R)  03F9DD(W)  03F9E6(R)  03F9EC(W)  03FADD(R)  03FAE5(R)  03FAEB(W)  03FC91(R)  03FCF4(R)  
    ram_plr_pos_X_lo                        = $0438 ; 
; ram_0439                              = $0439 ; 00226F(Wx) 0023F3(Wx) 0023FE(R)  002439(Wx) 00243C(Rx) 002444(Wx) 002447(Rx) 0028AF(Wx) 0037ED(Wx) 003817(Rx) 003896(Rx) 00389C(Wx) 0038EF(Wx) 005AA4(Rx) 005AE0(Rx) 005B4B(Wx) 005B86(Wx) 005C55(Rx) 005C63(Rx) 005D25(Wy) 005DF3(Rx) 005DF6(Wx) 006753(W)  006BB2(Wx) 006E3F(Rx) 0071C3(Wx) 00763F(Wx) 0083A3(Rx) 0083A9(Wx) 008438(Rx) 00866D(Wx) 0086B1(Wx) 0087A4(Wy) 008889(Rx) 008937(Rx) 0089DB(Rx) 008DAF(Rx) 008EBE(Rx) 0093C3(Rx) 009467(Rx) 0094BF(Ry) 0094C2(Wx) 0094DF(Rx) 0094E2(Wx) 00960B(Rx) 00960E(Wx) 00970A(Rx) 009B3C(Rx) 009B79(Rx) 00A7D3(Wx) 00AA12(Rx) 00AA15(Wx) 00AACC(Wx) 00AC7D(Ry) 00AC80(Wx) 00AD44(Rx) 00AE94(Wx) 00C183(Wx) 00C1BE(Rx) 00C519(Rx) 00C600(Rx) 00C856(Rx) 00CB07(Rx) 00CB9A(Rx) 00CC31(Rx) 00CD5E(Wy) 00CDD5(Rx) 00CE70(Rx) 00CE7B(Rx) 00CEA1(Rx) 00CEE9(Rx) 00CF45(Rx) 00D01E(Rx) 00D02A(Rx) 00D032(Wx) 00D037(Rx) 00D03F(Wx) 00D049(Rx) 00D093(Rx) 00D11D(Rx) 00D340(Rx) 00D366(Wx) 00D45F(Rx) 00D4AE(Rx) 00D5EE(Rx) 00D8B6(Rx) 00D8B9(Wx) 00D8DA(Rx) 00D91E(Rx) 00D921(Wx) 00D929(Rx) 00DAF6(Wx) 00DBB5(Rx) 00DBE5(Rx) 00DC11(Rx) 00DE87(Wx) 00DEE8(Ry) 00DF61(Rx) 0137D2(Rx) 0137FE(Rx) 01380A(Rx) 01392B(Rx) 013930(Wx) 017BE7(Rx) 01BEA5(Rx) 023F70(Rx) 0243AC(Rx) 0243B2(Wx) 02450B(Rx) 024620(Rx) 02478E(Ry) 024791(Wx) 024865(Wy) 02489A(Wy) 0248E4(Wy) 025284(Ry) 025293(Rx) 0253ED(Rx) 0253F3(Wx) 025541(Rx) 025547(Wx) 02554D(Rx) 025553(Wx) 025DEC(Rx) 025DEF(Wx) 0260AA(Rx) 0260AD(Wx) 0261D0(Ry) 026282(Rx) 026290(Wx) 026306(Rx) 0263E2(Rx) 0263FD(Rx) 026578(Ry) 02657E(Wx) 02658D(Wx) 0265A5(Ry) 026768(Rx) 026796(Rx) 0269D6(Rx) 0269E5(Wx) 026C2C(Ry) 026C5C(Rx) 026C6B(Wx) 026CE9(Rx) 026F78(Rx) 026F83(Rx) 027185(Ry) 0272FC(Rx) 027426(Rx) 027435(Wx) 0275AC(Ry) 02776C(Rx) 0277A3(Rx) 0277A9(Wx) 0277B9(Rx) 0277BF(Wx) 0277D2(Wx) 027822(Rx) 027828(Wx) 027838(Rx) 02783E(Wx) 027851(Wx) 02789A(Rx) 027A64(Rx) 027CA8(Ry) 027E2E(Wx) 028612(Rx) 028AA2(Wx) 028D06(Wx) 028E17(Wx) 029125(Rx) 029128(Wx) 029197(Rx) 02919A(Wx) 0291FA(Wx) 02B579(Wx) 02B6C6(Rx) 02B6CB(Wx) 02B9CC(Wx) 02C051(Rx) 02C057(Wx) 02C0C3(Rx) 02C0DB(Rx) 02C229(Rx) 02C22C(Wx) 02C242(Rx) 02C85B(Rx) 02C9C1(Rx) 02C9DF(Wx) 02CA22(Wx) 02CA9D(Rx) 02CAA7(Rx) 02CB66(Wx) 02CCAE(Rx) 02CD0B(Rx) 02CD3D(Rx) 02CD52(Rx) 02CD5F(Rx) 02CDE4(Wx) 02CE30(Rx) 02CE56(Rx) 02CEAA(Rx) 02D0A2(Rx) 02D0E8(Ry) 02D13C(Rx) 02D149(Rx) 02D221(Rx) 02D3F6(Rx) 02D5A3(Wx) 02D99E(Rx) 02D9EC(Rx) 02DA2E(Rx) 02DC12(Rx) 02E4B8(Rx) 02F264(Rx) 02F36D(Rx) 02F377(Rx) 02F401(Rx) 02F61E(Rx) 02F774(Rx) 02F79E(Rx) 02F922(Rx) 02F970(Rx) 02F9FA(Rx) 0324AF(Rx) 0326B2(Rx) 032844(Rx) 03285D(Rx) 032AAF(Wx) 032B43(Wx) 034045(Rx) 0341BC(Rx) 037861(Wx) 037886(Wx) 03AFDD(Ry) 03B0DC(Ry) 03B1BF(Ry) 03B3AC(Ry) 03B52B(Ry) 03B581(Ry) 03B5D0(Ry) 03B641(Ry) 03BCB0(Ry) 03BDAC(Wy) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03E9EC(Rx) 03EB39(Rx) 03FC08(Rx) 03FC49(Rx) 03FC5B(Rx) 
; ram_043A                              = $043A ; 00226F(Wx) 0023F3(Wx) 002439(Wx) 00243C(Rx) 002444(Wx) 002447(Rx) 0028AF(Wx) 0037ED(Wx) 003817(Rx) 003896(Rx) 00389C(Wx) 0038EF(Wx) 004207(Wx) 00442F(Ry) 005AA4(Rx) 005AE0(Rx) 005C55(Rx) 005C63(Rx) 005CD7(Rx) 005DF3(Rx) 005DF6(Wx) 006BB2(Wx) 006E3F(Rx) 007415(Wx) 00763F(Wx) 0083A3(Rx) 0083A9(Wx) 00866D(Wx) 0087A4(Wy) 008889(Rx) 008937(Rx) 0089DB(Rx) 00915D(Rx) 009248(Rx) 0093C3(Rx) 009467(Rx) 0094BF(Ry) 0094C2(Wx) 0094DF(Rx) 0094E2(Wx) 00960B(Rx) 00960E(Wx) 00970A(Rx) 009942(Rx) 0099A4(Rx) 009B3C(Rx) 009B79(Rx) 00A7D3(Wx) 00AA12(Rx) 00AA15(Wx) 00AACC(Wx) 00AB76(Wx) 00AC7D(Ry) 00AC80(Wx) 00AD44(Rx) 00AE94(Wx) 00C183(Wx) 00C1BE(Rx) 00C519(Rx) 00C600(Rx) 00C856(Rx) 00CB07(Rx) 00CB9A(Rx) 00CC50(Rx) 00CD07(Rx) 00CD5B(Rx) 00D2BA(Rx) 00D303(Rx) 00D309(Wx) 00D5EE(Rx) 00D8B6(Rx) 00D8B9(Wx) 00D8DA(Rx) 00D91E(Rx) 00D921(Wx) 00D929(Rx) 00DCB2(Wx) 0137D2(Rx) 0137FE(Rx) 01380A(Rx) 01392B(Rx) 013930(Wx) 017BE7(Rx) 01BEA5(Rx) 023F70(Rx) 024620(Rx) 02478E(Ry) 024791(Wx) 02489A(Wy) 0248B3(Wy) 025293(Rx) 025541(Rx) 025547(Wx) 02554D(Rx) 025553(Wx) 025DEC(Rx) 025DEF(Wx) 025F24(Ry) 025FE4(Wx) 0260AA(Rx) 0260AD(Wx) 0261D6(Wx) 0261E4(Wx) 02647E(Rx) 02648D(Wx) 026578(Ry) 0265A5(Ry) 026768(Rx) 026796(Rx) 0269D6(Rx) 0269E5(Wx) 026C32(Wx) 026C5C(Rx) 026C6B(Wx) 026EBF(Wy) 026F78(Rx) 026F83(Rx) 027185(Ry) 02718B(Wx) 0272D2(Rx) 027426(Rx) 027435(Wx) 0275AF(Wx) 02769F(Rx) 027CAE(Wx) 027EBA(Wx) 028612(Rx) 028786(Rx) 028AA2(Wx) 028E17(Wx) 029125(Rx) 029128(Wx) 029197(Rx) 02919A(Wx) 0291FA(Wx) 029254(Wx) 02B579(Wx) 02B6C6(Rx) 02B6CB(Wx) 02B9CC(Wx) 02C051(Rx) 02C057(Wx) 02C0C3(Rx) 02C0DB(Rx) 02C229(Rx) 02C22C(Wx) 02C242(Rx) 02C85B(Rx) 02C9C1(Rx) 02C9DF(Wx) 02CA22(Wx) 02CA9D(Rx) 02CAA7(Rx) 02CB66(Wx) 02CCAE(Rx) 02CD0B(Rx) 02CD3D(Rx) 02CD52(Rx) 02CD5F(Rx) 02CDE4(Wx) 02CE30(Rx) 02CE56(Rx) 02CEAA(Rx) 02D0A2(Rx) 02D0E8(Ry) 02D13C(Rx) 02D149(Rx) 02D221(Rx) 02D3F6(Rx) 02D5A3(Wx) 02D99E(Rx) 02D9EC(Rx) 02DAAB(Wy) 02DC12(Rx) 02DD9F(Wx) 02DDA8(Wx) 02E4B8(Rx) 02F264(Rx) 02F401(Rx) 02F61E(Rx) 02F774(Rx) 02F79E(Rx) 02F8A9(Rx) 02F970(Rx) 0326A1(Wx) 033324(Wx) 034045(Rx) 0341BC(Rx) 037792(Rx) 037886(Wx) 03AEB2(Rx) 03AEDA(Wx) 03AFE0(Wx) 03B012(Wx) 03B0DC(Ry) 03B1BF(Ry) 03B3E6(Wx) 03B3FC(Wx) 03B471(Wx) 03B52E(Wx) 03B546(Rx) 03B585(Rx) 03B5A7(Wx) 03B5FE(Wx) 03B672(Wx) 03B926(Rx) 03B935(Rx) 03B93B(Wx) 03B965(Rx) 03B96B(Wx) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03E9EC(Rx) 03EB39(Rx) 03FC08(Rx) 03FC49(Rx) 03FC5B(Rx) 
; ram_043B                              = $043B ; 001FDB(Rx) 001FDE(Wx) 001FF2(Rx) 00226F(Wx) 00248B(Wx) 0028AF(Wx) 0037ED(Wx) 003817(Rx) 003896(Rx) 00389C(Wx) 0038EF(Wx) 004435(Wx) 0055F0(Wx) 005AA4(Rx) 005AE0(Rx) 005C55(Rx) 005C63(Rx) 005D25(Wy) 005DF3(Rx) 005DF6(Wx) 006BB2(Wx) 006E3F(Rx) 007415(Wx) 00763F(Wx) 00866D(Wx) 0087A4(Wy) 008937(Rx) 0089DB(Rx) 00915D(Rx) 009248(Rx) 0093C3(Rx) 009467(Rx) 0094BF(Ry) 0094C2(Wx) 0094DF(Rx) 0094E2(Wx) 00960B(Rx) 00960E(Wx) 00970A(Rx) 009942(Rx) 0099A4(Rx) 009B3C(Rx) 009B79(Rx) 00A7D3(Wx) 00AA12(Rx) 00AA15(Wx) 00AACC(Wx) 00AB76(Wx) 00AC7D(Ry) 00AC80(Wx) 00AD44(Rx) 00AE94(Wx) 00C2B2(Ry) 00C2B8(Wy) 00C4A6(Wx) 00C4B1(Wx) 00C600(Rx) 00CC31(Rx) 00CD5E(Wy) 00CDD5(Rx) 00D5EE(Rx) 00D8DA(Rx) 00D91E(Rx) 00D921(Wx) 00D929(Rx) 00DCB2(Wx) 0137D2(Rx) 0137FE(Rx) 01380A(Rx) 01392B(Rx) 013930(Wx) 017BE7(Rx) 01BEA5(Rx) 02478E(Ry) 024791(Wx) 025293(Rx) 025DEC(Rx) 025DEF(Wx) 025F24(Ry) 025FE4(Wx) 0260AA(Rx) 0260AD(Wx) 0261D6(Wx) 0261E4(Wx) 02647E(Rx) 02648D(Wx) 0265A8(Wx) 0269D6(Rx) 0269E5(Wx) 026C5C(Rx) 026C6B(Wx) 026EDB(Rx) 026F78(Rx) 026F83(Rx) 027185(Ry) 02718B(Wx) 0272D2(Rx) 027426(Rx) 027435(Wx) 02769F(Rx) 0278E3(Rx) 027910(Wx) 027927(Rx) 027CAE(Wx) 028612(Rx) 028786(Rx) 028AA2(Wx) 028E17(Wx) 029125(Rx) 029128(Wx) 029197(Rx) 02919A(Wx) 0291FA(Wx) 029254(Wx) 02B24B(Rx) 02B251(Wx) 02B579(Wx) 02B6C6(Rx) 02B6CB(Wx) 02B9CC(Wx) 02C051(Rx) 02C057(Wx) 02C0C3(Rx) 02C0DB(Rx) 02C229(Rx) 02C22C(Wx) 02C242(Rx) 02C9C1(Rx) 02C9DF(Wx) 02CA22(Wx) 02CA9D(Rx) 02CAA7(Rx) 02CB66(Wx) 02CCAE(Rx) 02CD0B(Rx) 02CD52(Rx) 02CD5F(Rx) 02CDE4(Wx) 02CE30(Rx) 02CE56(Rx) 02CEAA(Rx) 02D0A2(Rx) 02D0E8(Ry) 02D13C(Rx) 02D149(Rx) 02D221(Rx) 02D3F6(Rx) 02D99E(Rx) 02D9EC(Rx) 02DAAB(Wy) 02DC12(Rx) 02DD9F(Wx) 02DDA8(Wx) 02E4B8(Rx) 02F264(Rx) 02F401(Rx) 02F61E(Rx) 02F774(Rx) 02F79E(Rx) 02F8A9(Rx) 02F922(Rx) 02F970(Rx) 0326A1(Wx) 0326CA(Wx) 033005(Wx) 0330BA(Rx) 0330CB(Wx) 033143(Rx) 033158(Rx) 033283(Rx) 033324(Wx) 034045(Rx) 0341BC(Rx) 037792(Rx) 03AEB2(Rx) 03AEDA(Wx) 03B0DC(Ry) 03B1BF(Ry) 03B471(Wx) 03B52E(Wx) 03B546(Rx) 03B585(Rx) 03B5A7(Wx) 03B926(Rx) 03B935(Rx) 03B93B(Wx) 03B965(Rx) 03B96B(Wx) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03E9EC(Rx) 03EB39(Rx) 03FC08(Rx) 03FC49(Rx) 03FC5B(Rx) 
; ram_043C                              = $043C ; 00226F(Wx) 00248B(Wx) 0028AF(Wx) 0037ED(Wx) 003817(Rx) 003896(Rx) 00389C(Wx) 0038EF(Wx) 0055F0(Wx) 0056D2(Wx) 0058DF(Wx) 005AA4(Rx) 005AE0(Rx) 005B4B(Wx) 005B86(Wx) 005C55(Rx) 005C63(Rx) 005D22(Rx) 005DF3(Rx) 005DF6(Wx) 006BB2(Wx) 006E3F(Rx) 007415(Wx) 00763F(Wx) 00866D(Wx) 0087A4(Wy) 008889(Rx) 008937(Rx) 0089DB(Rx) 00915D(Rx) 009248(Rx) 0093C3(Rx) 009467(Rx) 0094BF(Ry) 0094C2(Wx) 0094DF(Rx) 0094E2(Wx) 00960B(Rx) 00960E(Wx) 00970A(Rx) 009942(Rx) 0099A4(Rx) 009B3C(Rx) 009B79(Rx) 00A7D3(Wx) 00AA12(Rx) 00AA15(Wx) 00AACC(Wx) 00AB76(Wx) 00AC7D(Ry) 00AC80(Wx) 00AD44(Rx) 00AE94(Wx) 00C2B2(Ry) 00C2B8(Wy) 00C4A6(Wx) 00C4B1(Wx) 00C600(Rx) 00CC31(Rx) 00CD5E(Wy) 00CDD5(Rx) 00D580(Rx) 00D586(Wx) 00D5EA(Ry) 00D74E(Rx) 00D75D(Wx) 00D782(Rx) 00D852(Rx) 00D873(Rx) 00DCB2(Wx) 0137D2(Rx) 0137FE(Rx) 01380A(Rx) 01392B(Rx) 013930(Wx) 017BE7(Rx) 01BEA5(Rx) 0243AC(Rx) 0243B2(Wx) 024620(Rx) 02478E(Ry) 024791(Wx) 025293(Rx) 025541(Rx) 025547(Wx) 025DEC(Rx) 025DEF(Wx) 025FE4(Wx) 0260AA(Rx) 0260AD(Wx) 02647E(Rx) 02648D(Wx) 0269D6(Rx) 0269E5(Wx) 026C5C(Rx) 026C6B(Wx) 026EDB(Rx) 026F78(Rx) 026F83(Rx) 027185(Ry) 02718B(Wx) 0272D2(Rx) 027426(Rx) 027435(Wx) 02769F(Rx) 0278E3(Rx) 027910(Wx) 027927(Rx) 027CAE(Wx) 028AA2(Wx) 028E17(Wx) 029125(Rx) 029128(Wx) 029197(Rx) 02919A(Wx) 0291FA(Wx) 029254(Wx) 02B6C6(Rx) 02B6CB(Wx) 02B9CC(Wx) 02C051(Rx) 02C057(Wx) 02C0C3(Rx) 02C0DB(Rx) 02C229(Rx) 02C22C(Wx) 02C242(Rx) 02CA9D(Rx) 02CAA7(Rx) 02CB0B(Rx) 02CDE4(Wx) 02CE30(Rx) 02CEAA(Rx) 02CF4B(Rx) 02D0A2(Rx) 02D0E8(Ry) 02D13C(Rx) 02D149(Rx) 02D99E(Rx) 02D9EC(Rx) 02DAAB(Wy) 02DC12(Rx) 02DD9F(Wx) 02DDA8(Wx) 02E4B8(Rx) 02F264(Rx) 02F401(Rx) 02F61E(Rx) 02F774(Rx) 02F79E(Rx) 02F8A9(Rx) 0326A1(Wx) 0326CA(Wx) 033005(Wx) 0330BA(Rx) 0330CB(Wx) 033143(Rx) 033158(Rx) 033283(Rx) 033324(Wx) 034045(Rx) 037792(Rx) 037886(Wx) 03AEB2(Rx) 03AEDA(Wx) 03B0DC(Ry) 03B1BF(Ry) 03B471(Wx) 03B52E(Wx) 03B546(Rx) 03B585(Rx) 03B5A7(Wx) 03B926(Rx) 03B935(Rx) 03B93B(Wx) 03B965(Rx) 03B96B(Wx) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03E9EC(Rx) 03EB39(Rx) 03FC08(Rx) 03FC49(Rx) 03FC5B(Rx) 
; ram_043D                              = $043D ; 00226F(Wx) 00248B(Wx) 0028AF(Wx) 0037ED(Wx) 003817(Rx) 003896(Rx) 00389C(Wx) 0038EF(Wx) 0055F0(Wx) 005D25(Wy) 005DF3(Rx) 005DF6(Wx) 006BB2(Wx) 006E3F(Rx) 00759C(Wx) 00763F(Wx) 00797C(Wx) 00866D(Wx) 0087A4(Wy) 008889(Rx) 008937(Rx) 0089DB(Rx) 00915D(Rx) 009248(Rx) 0093C3(Rx) 009467(Rx) 0094BF(Ry) 0094C2(Wx) 0094DF(Rx) 0094E2(Wx) 00960B(Rx) 00960E(Wx) 00970A(Rx) 009B3C(Rx) 009B79(Rx) 00A7D3(Wx) 00AA12(Rx) 00AA15(Wx) 00AACC(Wx) 00AB76(Wx) 00AC7D(Ry) 00AC80(Wx) 00AD44(Rx) 00AE94(Wx) 00C2B2(Ry) 00C2B8(Wy) 00C4A6(Wx) 00C4B1(Wx) 00C600(Rx) 00CC31(Rx) 00D8DA(Rx) 00D91E(Rx) 00D921(Wx) 00D929(Rx) 00DCB2(Wx) 0137D2(Rx) 0137FE(Rx) 01392B(Rx) 013930(Wx) 017BE7(Rx) 017CCE(Rx) 017CD1(Wy) 017DBD(Rx) 017E52(Ry) 017E5C(Ry) 017E84(Ry) 01BEA5(Rx) 02478E(Ry) 024791(Wx) 025293(Rx) 025DEC(Rx) 025DEF(Wx) 025F24(Ry) 025FE4(Wx) 0260AA(Rx) 0260AD(Wx) 02647E(Rx) 02648D(Wx) 0269D6(Rx) 0269E5(Wx) 026C5C(Rx) 026C6B(Wx) 026EDB(Rx) 026F78(Rx) 026F83(Rx) 027185(Ry) 02718B(Wx) 0272D2(Rx) 027426(Rx) 027435(Wx) 02769F(Rx) 0278D7(Wx) 027927(Rx) 027CAE(Wx) 028786(Rx) 028AA2(Wx) 028E17(Wx) 029197(Rx) 02919A(Wx) 0291FA(Wx) 02B6C6(Rx) 02B6CB(Wx) 02B9CC(Wx) 02C051(Rx) 02C057(Wx) 02C0C3(Rx) 02C0DB(Rx) 02C229(Rx) 02C22C(Wx) 02C242(Rx) 02CA9D(Rx) 02CAA7(Rx) 02CB0B(Rx) 02CDE4(Wx) 02CE30(Rx) 02CEAA(Rx) 02CF4B(Rx) 02D0A2(Rx) 02D0E8(Ry) 02D13C(Rx) 02D149(Rx) 02D99E(Rx) 02DAAB(Wy) 02DC12(Rx) 02DD9F(Wx) 02DDA8(Wx) 02E49F(Rx) 02E4B5(Wx) 02E4B8(Rx) 02F264(Rx) 02F61E(Rx) 02F774(Rx) 02F79E(Rx) 02F8A9(Rx) 0326A1(Wx) 0326CA(Wx) 033324(Wx) 034045(Rx) 037886(Wx) 03B0DC(Ry) 03B1BF(Ry) 03BD2A(Wx) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03E9EC(Rx) 03EB39(Rx) 03FC49(Rx) 03FC5B(Rx) 
; ram_043E                              = $043E ; 00226F(Wx) 00248B(Wx) 0028AF(Wx) 005D25(Wy) 005DF3(Rx) 005DF6(Wx) 006BB2(Wx) 006E3F(Rx) 00759C(Wx) 00763F(Wx) 00797C(Wx) 00866D(Wx) 0087A4(Wy) 008889(Rx) 008937(Rx) 0089DB(Rx) 008DAF(Rx) 008EBE(Rx) 00915D(Rx) 009248(Rx) 0093C3(Rx) 009467(Rx) 0094BF(Ry) 0094C2(Wx) 0094DF(Rx) 0094E2(Wx) 00960B(Rx) 00960E(Wx) 00970A(Rx) 009B3C(Rx) 009B79(Rx) 00A7D3(Wx) 00AACC(Wx) 00AB76(Wx) 00AC7D(Ry) 00AC80(Wx) 00C2B2(Ry) 00C2B8(Wy) 00C4A6(Wx) 00C4B1(Wx) 00C600(Rx) 00CC31(Rx) 00D8B6(Rx) 00D8B9(Wx) 00D8DA(Rx) 00D91E(Rx) 00D921(Wx) 00D929(Rx) 0137D2(Rx) 0137FE(Rx) 01392B(Rx) 013930(Wx) 017CD1(Wy) 017DBD(Rx) 017E52(Ry) 017E58(Wx) 017E5C(Ry) 017E62(Wx) 017E84(Ry) 017E88(Rx) 01BEA5(Rx) 02478E(Ry) 024791(Wx) 025293(Rx) 025F24(Ry) 025FE4(Wx) 0260AA(Rx) 0260AD(Wx) 02647E(Rx) 02648D(Wx) 0269D6(Rx) 0269E5(Wx) 026C5C(Rx) 026C6B(Wx) 026F78(Rx) 026F83(Rx) 027185(Ry) 02718B(Wx) 0272D2(Rx) 027426(Rx) 027435(Wx) 02769F(Rx) 027CAE(Wx) 028AA2(Wx) 028E17(Wx) 029197(Rx) 02919A(Wx) 0291FA(Wx) 02B6C6(Rx) 02B6CB(Wx) 02B9CC(Wx) 02C051(Rx) 02C057(Wx) 02C0C3(Rx) 02C0DB(Rx) 02C242(Rx) 02CB0B(Rx) 02CDE4(Wx) 02CE30(Rx) 02CEAA(Rx) 02CF4B(Rx) 02D0E8(Ry) 02DAAB(Wy) 02DC12(Rx) 02DD9F(Wx) 02DDA8(Wx) 02E49F(Rx) 02E4B5(Wx) 02E4B8(Rx) 02F264(Rx) 02F61E(Rx) 02F774(Rx) 02F79E(Rx) 02F8A9(Rx) 0326CA(Wx) 033324(Wx) 034045(Rx) 03B1BF(Ry) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03E9EC(Rx) 03EB39(Rx) 03FC08(Rx) 03FC49(Rx) 03FC5B(Rx) 
; ram_043F                              = $043F ; 00226F(Wx) 0028AF(Wx) 005D25(Wy) 005DF3(Rx) 005DF6(Wx) 006BB2(Wx) 006E3F(Rx) 00759C(Wx) 00763F(Wx) 00797C(Wx) 008438(Rx) 00866D(Wx) 0087A4(Wy) 008889(Rx) 008937(Rx) 0089DB(Rx) 00915D(Rx) 009248(Rx) 0093C3(Rx) 009467(Rx) 0094BF(Ry) 0094C2(Wx) 0094DF(Rx) 0094E2(Wx) 00960B(Rx) 00960E(Wx) 00970A(Rx) 009B3C(Rx) 009B79(Rx) 00A7D3(Wx) 00AACC(Wx) 00AB76(Wx) 00AC7D(Ry) 00AC80(Wx) 00C2B2(Ry) 00C2B8(Wy) 00C4A6(Wx) 00C4B1(Wx) 00C600(Rx) 0137FE(Rx) 01392B(Rx) 013930(Wx) 017BE7(Rx) 017CD1(Wy) 017DBD(Rx) 017E52(Ry) 017E58(Wx) 017E5C(Ry) 017E62(Wx) 017E84(Ry) 017E88(Rx) 01BEA5(Rx) 023F70(Rx) 02478E(Ry) 024791(Wx) 02489A(Wy) 025293(Rx) 0254A4(Wx) 025F24(Ry) 025FE4(Wx) 0260AA(Rx) 0260AD(Wx) 02647E(Rx) 02648D(Wx) 026900(Wx) 0269D6(Rx) 0269E5(Wx) 026C5C(Rx) 026C6B(Wx) 026F83(Rx) 027185(Ry) 02718B(Wx) 027426(Rx) 027435(Wx) 027475(Wy) 02769F(Rx) 028AA2(Wx) 028E17(Wx) 0291FA(Wx) 02B6C6(Rx) 02B6CB(Wx) 02B9CC(Wx) 02C051(Rx) 02C057(Wx) 02C0C3(Rx) 02C0DB(Rx) 02C242(Rx) 02CA9D(Rx) 02CAA7(Rx) 02CE30(Rx) 02CF4B(Rx) 02D9EC(Rx) 02DAAB(Wy) 02DC33(Rx) 02DD9F(Wx) 02DDA8(Wx) 02F264(Rx) 02F61E(Rx) 02F774(Rx) 02F79E(Rx) 02F8A9(Rx) 02F9FA(Rx) 033324(Wx) 034045(Rx) 03B0DC(Ry) 03B1BF(Ry) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03EB39(Rx) 03FC5B(Rx) 
; ram_0440                              = $0440 ; 00226F(Wx) 005D25(Wy) 005DF3(Rx) 005DF6(Wx) 006BAB(Wx) 006E3F(Rx) 00763F(Wx) 00797C(Wx) 00866D(Wx) 0087A4(Wy) 008889(Rx) 008937(Rx) 0089DB(Rx) 00915D(Rx) 009248(Rx) 0093C3(Rx) 009467(Rx) 0094BF(Ry) 0094C2(Wx) 0094DF(Rx) 0094E2(Wx) 00960B(Rx) 00960E(Wx) 00970A(Rx) 009B3C(Rx) 009B79(Rx) 00A7D3(Wx) 00AACC(Wx) 00AB76(Wx) 00AC7D(Ry) 00AC80(Wx) 00C2B2(Ry) 00C2B8(Wy) 00C4A6(Wx) 00C4B1(Wx) 00C600(Rx) 00DEEB(Wx) 01392B(Rx) 013930(Wx) 017CD1(Wy) 017DBD(Rx) 017E52(Ry) 017E58(Wx) 017E5C(Ry) 017E62(Wx) 017E84(Ry) 017E88(Rx) 01BEA5(Rx) 023F70(Rx) 02478E(Ry) 024791(Wx) 02489A(Wy) 025293(Rx) 025FE4(Wx) 0260AA(Rx) 0260AD(Wx) 02647E(Rx) 02648D(Wx) 02657E(Wx) 02658D(Wx) 0269D6(Rx) 0269E5(Wx) 026C5C(Rx) 026C6B(Wx) 026F83(Rx) 027185(Ry) 02718B(Wx) 027426(Rx) 027435(Wx) 027475(Wy) 028D3B(Wx) 028E17(Wx) 02B6C6(Rx) 02B6CB(Wx) 02B9CC(Wx) 02C051(Rx) 02C057(Wx) 02C0C3(Rx) 02C0DB(Rx) 02C242(Rx) 02C9C1(Rx) 02C9DF(Wx) 02CE30(Rx) 02CF4B(Rx) 02D9EC(Rx) 02DAA2(Rx) 02DD9F(Wx) 02DDA8(Wx) 02DE52(R)  02F264(Rx) 02F61E(Rx) 02F774(Rx) 02F79E(Rx) 02F8A9(Rx) 034045(Rx) 03B0DC(Ry) 03B1BF(Ry) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03EB39(Rx) 03FC08(Rx) 03FC5B(Rx) 
; ram_0441                              = $0441 ; 00226F(Wx) 005D25(Wy) 005DF3(Rx) 005DF6(Wx) 006BAB(Wx) 006E3F(Rx) 00763F(Wx) 00797C(Wx) 00866D(Wx) 0087A4(Wy) 008889(Rx) 008937(Rx) 0089DB(Rx) 00915D(Rx) 009248(Rx) 0093C3(Rx) 0094BF(Ry) 0094C2(Wx) 0094DF(Rx) 0094E2(Wx) 00960B(Rx) 00960E(Wx) 00970A(Rx) 009B3C(Rx) 009B79(Rx) 00A7D3(Wx) 00AACC(Wx) 00AC7D(Ry) 00AC80(Wx) 0137FE(Rx) 01392B(Rx) 013930(Wx) 017BE7(Rx) 017BFB(Wx) 017CD1(Wy) 017DBD(Rx) 017E52(Ry) 017E58(Wx) 017E5C(Ry) 017E62(Wx) 017E84(Ry) 017E88(Rx) 01BEA5(Rx) 024791(Wx) 0248E4(Wy) 025293(Rx) 025FE4(Wx) 0260AA(Rx) 0260AD(Wx) 0265A8(Wx) 026C5C(Rx) 026C6B(Wx) 026F83(Rx) 027185(Ry) 02718B(Wx) 027426(Rx) 027435(Wx) 027475(Wy) 028E17(Wx) 02B6C6(Rx) 02B6CB(Wx) 02B9CC(Wx) 02C051(Rx) 02C057(Wx) 02C0C3(Rx) 02C0DB(Rx) 02C242(Rx) 02CCE2(Wx) 02CDE4(Wx) 02CE30(Rx) 02CF77(Wx) 02D23B(Wx) 02D97D(Wx) 02D9EC(Rx) 02DE55(Wx) 02F264(Rx) 02F61E(Rx) 02F774(Rx) 02F79E(Rx) 02F8A9(Rx) 034045(Rx) 037886(Wx) 03B0DC(Ry) 03B1BF(Ry) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03EB39(Rx) 03FC08(Rx) 03FC49(Rx) 03FC5B(Rx) 
; ram_0442                              = $0442 ; 00226F(Wx) 005D25(Wy) 005DF3(Rx) 005DF6(Wx) 006BAB(Wx) 006E3F(Rx) 00759C(Wx) 00763F(Wx) 00797C(Wx) 00866D(Wx) 00915D(Rx) 009248(Rx) 0094BF(Ry) 0094C2(Wx) 00960B(Rx) 00960E(Wx) 00970A(Rx) 009B3C(Rx) 009B79(Rx) 00AACC(Wx) 00AC7D(Ry) 00AC80(Wx) 0137D2(Rx) 0137FE(Rx) 01392B(Rx) 013930(Wx) 017BE7(Rx) 017BFB(Wx) 017CD1(Wy) 017DBD(Rx) 017E52(Ry) 017E58(Wx) 017E5C(Ry) 017E62(Wx) 017E84(Ry) 017E88(Rx) 01BEA5(Rx) 02478E(Ry) 024791(Wx) 025293(Rx) 025F24(Ry) 0260AA(Rx) 0260AD(Wx) 026C5C(Rx) 026C6B(Wx) 026F83(Rx) 027185(Ry) 02718B(Wx) 027426(Rx) 027435(Wx) 027475(Wy) 028E17(Wx) 02B6C6(Rx) 02B6CB(Wx) 02B9CC(Wx) 02C051(Rx) 02C057(Wx) 02C0C3(Rx) 02C0DB(Rx) 02C242(Rx) 02CCE2(Wx) 02CDE4(Wx) 02CE30(Rx) 02CF77(Wx) 02D13C(Rx) 02D149(Rx) 02D23B(Wx) 02D97D(Wx) 02F264(Rx) 02F401(Rx) 02F61E(Rx) 02F774(Rx) 02F79E(Rx) 02F8A9(Rx) 02F970(Rx) 034045(Rx) 03B1BF(Ry) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03FC08(Rx) 03FC49(Rx) 03FC5B(Rx) 
; ram_0443                              = $0443 ; 00226F(Wx) 005D25(Wy) 005DF3(Rx) 005DF6(Wx) 006BAB(Wx) 006E3F(Rx) 00763F(Wx) 00797C(Wx) 00866D(Wx) 008937(Rx) 0089DB(Rx) 00915D(Rx) 009248(Rx) 0093C3(Rx) 009467(Rx) 0094BF(Ry) 0094C2(Wx) 00960B(Rx) 00960E(Wx) 00970A(Rx) 009B3C(Rx) 009B79(Rx) 00A7D3(Wx) 00AACC(Wx) 00AC7D(Ry) 00AC80(Wx) 0137D2(Rx) 0137FE(Rx) 01392B(Rx) 013930(Wx) 017BE7(Rx) 017BFB(Wx) 017CD1(Wy) 017DBD(Rx) 017E52(Ry) 017E58(Wx) 017E5C(Ry) 017E62(Wx) 017E84(Ry) 017E88(Rx) 01BEA5(Rx) 024791(Wx) 0260AA(Rx) 0260AD(Wx) 026F83(Rx) 027185(Ry) 02718B(Wx) 027426(Rx) 027435(Wx) 027475(Wy) 028E17(Wx) 02C051(Rx) 02C057(Wx) 02C0C3(Rx) 02C0DB(Rx) 02C242(Rx) 02CCE2(Wx) 02CDE4(Wx) 02CE30(Rx) 02CF77(Wx) 02D13C(Rx) 02D149(Rx) 02D23B(Wx) 02D97D(Wx) 02F264(Rx) 02F401(Rx) 02F61E(Rx) 02F774(Rx) 02F79E(Rx) 02F8A9(Rx) 034045(Rx) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03FC08(Rx) 03FC49(Rx) 03FC5B(Rx) 
; ram_0444                              = $0444 ; 00226F(Wx) 006BAB(Wx) 006E3F(Rx) 00759C(Wx) 00763F(Wx) 00797C(Wx) 00866D(Wx) 00915D(Rx) 009248(Rx) 0094BF(Ry) 0094C2(Wx) 00960B(Rx) 00960E(Wx) 00970A(Rx) 009B3C(Rx) 009B79(Rx) 00AACC(Wx) 0137FE(Rx) 01392B(Rx) 013930(Wx) 017BFB(Wx) 017CD1(Wy) 017DBD(Rx) 017E58(Wx) 017E62(Wx) 017E88(Rx) 01BEA5(Rx) 02478E(Ry) 024791(Wx) 0260AA(Rx) 0260AD(Wx) 026F83(Rx) 02718B(Wx) 027426(Rx) 027435(Wx) 027475(Wy) 028E17(Wx) 02C051(Rx) 02C057(Wx) 02C0C3(Rx) 02C0DB(Rx) 02C242(Rx) 02CDE4(Wx) 02CE30(Rx) 02CF77(Wx) 02D23B(Wx) 02D97D(Wx) 02F264(Rx) 02F61E(Rx) 02F8A9(Rx) 034045(Rx) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03FC08(Rx) 03FC49(Rx) 03FC5B(Rx) 
; ram_0445                              = $0445 ; 00226F(Wx) 006BAB(Wx) 006E3F(Rx) 00759C(Wx) 00763F(Wx) 00797C(Wx) 00866D(Wx) 00915D(Rx) 009248(Rx) 00AACC(Wx) 0137FE(Rx) 01392B(Rx) 013930(Wx) 0281D1(Wx) 0282CB(Wx) 028E17(Wx) 02C051(Rx) 02C057(Wx) 02C0C3(Rx) 02C0DB(Rx) 02C242(Rx) 02CE30(Rx) 02F61E(Rx) 02F8A9(Rx) 034045(Rx) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03FC08(Rx) 03FC49(Rx) 03FC5B(Rx) 
; ram_0446                              = $0446 ; 00226F(Wx) 006BAB(Wx) 006E3F(Rx) 00763F(Wx) 00866D(Wx) 00915D(Rx) 009248(Rx) 00AACC(Wx) 0137FE(Rx) 01392B(Rx) 013930(Wx) 0281D1(Wx) 0282CB(Wx) 028E17(Wx) 02C051(Rx) 02C057(Wx) 02C0C3(Rx) 02C0DB(Rx) 02C242(Rx) 02CE30(Rx) 02F61E(Rx) 02F8A9(Rx) 034045(Rx) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03FC08(Rx) 03FC49(Rx) 03FC5B(Rx) 
; ram_0447                              = $0447 ; 00226F(Wx) 006BAB(Wx) 006E3F(Rx) 00759C(Wx) 00763F(Wx) 00866D(Wx) 00915D(Rx) 009248(Rx) 00AACC(Wx) 01392B(Rx) 013930(Wx) 0281D1(Wx) 0282CB(Wx) 02C051(Rx) 02C057(Wx) 02C0C3(Rx) 02C0DB(Rx) 02CE30(Rx) 02F61E(Rx) 02F8A9(Rx) 034045(Rx) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03FC08(Rx) 03FC49(Rx) 03FC5B(Rx) 
; ram_0448                              = $0448 ; 00226F(Wx) 006DB7(Wx) 00763F(Wx) 00866D(Wx) 00915D(Rx) 009248(Rx) 00AACC(Wx) 01392B(Rx) 013930(Wx) 0281D1(Wx) 0282CB(Wx) 0284F3(Wx) 02C051(Rx) 02C057(Wx) 02C0C3(Rx) 02C0DB(Rx) 02CE30(Rx) 02F61E(Rx) 02F8A9(Rx) 034045(Rx) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03FC08(Rx) 03FC49(Rx) 03FC5B(Rx) 
; ram_0449                              = $0449 ; 00226F(Wx) 00763F(Wx) 01392B(Rx) 013930(Wx) 0281D1(Wx) 0282CB(Wx) 02C051(Rx) 02C057(Wx) 02C0C3(Rx) 02C0DB(Rx) 02CE30(Rx) 02F61E(Rx) 034045(Rx) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03FC08(Rx) 03FC5B(Rx) 
; ram_044A                              = $044A ; 00226F(Wx) 00763F(Wx) 01392B(Rx) 013930(Wx) 0281D1(Wx) 0282CB(Wx) 02C051(Rx) 02C057(Wx) 02C0C3(Rx) 02C0DB(Rx) 02CE30(Rx) 02F61E(Rx) 034045(Rx) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03FC08(Rx) 03FC49(Rx) 03FC5B(Rx) 
; ram_044B                              = $044B ; 0013A3(Wx) 00226F(Wx) 00759C(Wx) 00763F(Wx) 034045(Rx) 0341BC(Rx) 03BD2A(Wx) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03FA39(Wx) 
; ram_044C                              = $044C ; 00226F(Wx) 00763F(Wx) 00B285(Rx) 00B511(Wx) 0284F3(Wx) 02F370(Ry) 02F37A(Ry) 02F4AB(Rx) 02F604(Ry) 034045(Rx) 038C90(Wx) 03AEB2(Rx) 03AEDA(Wx) 03AEE5(Wx) 03AFE0(Wx) 03B012(Wx) 03B058(Wx) 03B094(Wx) 03B0E0(Rx) 03B178(Wx) 03B1C3(Rx) 03B2FA(Rx) 03B300(Wx) 03B313(Rx) 03B316(Wx) 03B3E6(Wx) 03B3FC(Wx) 03B471(Wx) 03B4DB(Wx) 03B52E(Wx) 03B546(Rx) 03B585(Rx) 03B5A7(Wx) 03B5FE(Wx) 03B672(Wx) 03B6F5(Wx) 03B714(Wx) 03B795(Wx) 03B7E7(Wx) 03B811(Wx) 03B86C(Wx) 03B891(Wx) 03B8BE(Rx) 03B8CB(Wx) 03B926(Rx) 03B935(Rx) 03B93B(Wx) 03B965(Rx) 03B96B(Wx) 03B9FF(Wx) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03FC08(Rx) 03FC5B(Rx) 
; ram_044D                              = $044D ; 00226F(Wx) 00763F(Wx) 00B285(Rx) 00B511(Wx) 0284F3(Wx) 02F37A(Ry) 02F4AB(Rx) 02F604(Ry) 034045(Rx) 038C90(Wx) 03AEB2(Rx) 03AEDA(Wx) 03AEE5(Wx) 03AFE0(Wx) 03B012(Wx) 03B05B(Wx) 03B094(Wx) 03B178(Wx) 03B1C3(Rx) 03B2FA(Rx) 03B300(Wx) 03B313(Rx) 03B316(Wx) 03B471(Wx) 03B52E(Wx) 03B546(Rx) 03B585(Rx) 03B5A7(Wx) 03B795(Wx) 03B7E7(Wx) 03B814(Wx) 03B86C(Wx) 03B891(Wx) 03B8BE(Rx) 03B8CB(Wx) 03B926(Rx) 03B935(Rx) 03B93B(Wx) 03B965(Rx) 03B96B(Wx) 03B9FF(Wx) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 03FC5B(Rx) 
; ram_044E                              = $044E ; 00226F(Wx) 00763F(Wx) 00B285(Rx) 00B511(Wx) 0284F3(Wx) 02F4AB(Rx) 02F604(Ry) 034045(Rx) 038C90(Wx) 03AEB2(Rx) 03AEDA(Wx) 03AEE5(Wx) 03AFE0(Wx) 03B012(Wx) 03B05E(Wx) 03B094(Wx) 03B178(Wx) 03B1C3(Rx) 03B2FA(Rx) 03B300(Wx) 03B313(Rx) 03B316(Wx) 03B471(Wx) 03B52E(Wx) 03B546(Rx) 03B585(Rx) 03B5A7(Wx) 03B817(Wx) 03B86C(Wx) 03B891(Wx) 03B8BE(Rx) 03B8CB(Wx) 03B926(Rx) 03B935(Rx) 03B93B(Wx) 03B965(Rx) 03B96B(Wx) 03B9FF(Wx) 03E03F(Wi) 03E811(Wx) 03E845(Wx) 
; ram_044F                              = $044F ; 00226F(Wx) 02F636(Wx) 034045(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_0450                              = $0450 ; 000EBD(W)  00226F(Wx) 034045(Rx) 0341BC(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_0451                              = $0451 ; 000E92(W)  00226F(Wx) 034045(Rx) 0341BC(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_0452                              = $0452 ; 00226F(Wx) 009CCA(Wx) 009CDF(Wx) 00B021(Rx) 00B0B7(Rx) 00B0BD(Wx) 00B0F9(Rx) 00B104(Rx) 00B13B(Wx) 00B160(Rx) 00B1E4(Rx) 00B24E(Rx) 00B3AF(Rx) 00B404(Rx) 00B424(Rx) 00B4CD(Rx) 034045(Rx) 038DCB(W)  03E03F(Wi) 03E845(Wx) 03FC08(Rx) 
; ram_0453                              = $0453 ; 00226F(Wx) 009CDF(Wx) 00B021(Rx) 00B0B7(Rx) 00B0BD(Wx) 00B0F9(Rx) 00B104(Rx) 00B13B(Wx) 00B160(Rx) 00B1E4(Rx) 00B24E(Rx) 00B424(Rx) 00B4CD(Rx) 034045(Rx) 03E03F(Wi) 03E845(Wx) 



; sprite attributes
ram_obj_spr_A                           = $0454 ; 0011E1(W)  0014D3(W)  0014D9(W)  001689(W)  0016B7(W)  0016C1(W)  002275(Wx) 00678A(W)  0071CF(Wx) 007642(Wx) 03403B(Rx) 0341B2(Rx) 0381EF(W)  038229(W)  03854C(R)  038551(W)  038568(R)  03856D(W)  0393CD(W)  0393ED(W)  03E03F(Wi) 03E845(Wx) 
    ram_plr_spr_A                            = $0454 ; 
; ram_0455                              = $0455 ; 002275(Wx) 0023C8(Wx) 0037E5(Wx) 0038CA(Wx) 00583F(Wx) 00585D(Wx) 005865(Wx) 005A6D(Wx) 005B46(Wx) 005B81(Wx) 005D35(Wy) 0071CF(Wx) 007642(Wx) 007CDD(Rx) 007CE2(Wx) 007CEF(Rx) 007CF4(Wx) 007D00(Rx) 007D09(Wx) 007D18(Wx) 0082C9(Wx) 0087B3(Wy) 0088FE(Wx) 00AE7E(Wx) 00C73F(Wx) 00C8C9(Wx) 023E3A(Wx) 024289(Rx) 02428E(Wx) 02442F(Rx) 024434(Wx) 0247E3(Wx) 0249A6(Wx) 0265F8(Wx) 0269D3(Wx) 026A93(Wx) 026A96(Wy) 02C30C(Rx) 02C311(Wx) 02C32A(Wx) 02CA51(Wx) 02CA5C(Rx) 02CA61(Wx) 02CA6E(Wx) 032830(Wx) 03403B(Rx) 0341B2(Rx) 0378C4(Wx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 03FEF2(Wx) 03FF9C(Wx) 
; ram_0456                              = $0456 ; 002275(Wx) 0023C8(Wx) 0037E5(Wx) 0038CA(Wx) 0057FC(Wx) 005A6D(Wx) 007433(Wx) 007642(Wx) 007CDD(Rx) 007CE2(Wx) 007CEF(Rx) 007CF4(Wx) 0082C9(Wx) 0087B3(Wy) 0088FE(Wx) 00AE7E(Wx) 00C677(Wx) 00C6DA(Wx) 00C8C9(Wx) 00DCA0(Wx) 023E3A(Wx) 024289(Rx) 02428E(Wx) 02442F(Rx) 024434(Wx) 02472D(Wx) 0247E3(Wx) 0265F8(Wx) 0269D3(Wx) 026A93(Wx) 026A96(Wy) 02C32A(Wx) 02CA51(Wx) 02CA5C(Rx) 02CA61(Wx) 02CA6E(Wx) 02DADF(Wy) 03250D(Wx) 033313(Wx) 03403B(Rx) 0341B2(Rx) 0378C4(Wx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 03FEF2(Wx) 03FF9C(Wx) 
; ram_0457                              = $0457 ; 002275(Wx) 002478(Wx) 0037E5(Wx) 0038CA(Wx) 0057FC(Wx) 005A6D(Wx) 005D35(Wy) 007433(Wx) 007642(Wx) 007CDD(Rx) 007CE2(Wx) 007CEF(Rx) 007CF4(Wx) 0082C9(Wx) 0087B3(Wy) 0088FE(Wx) 00AE7E(Wx) 00DCA0(Wx) 023E3A(Wx) 024289(Rx) 02428E(Wx) 02442F(Rx) 024434(Wx) 02472D(Wx) 0247E3(Wx) 0249A6(Wx) 0269D3(Wx) 026A93(Wx) 026A96(Wy) 02C32A(Wx) 02CA51(Wx) 02CA5C(Rx) 02CA61(Wx) 02CA6E(Wx) 02DADF(Wy) 03250D(Wx) 0326E2(Wx) 033313(Wx) 03403B(Rx) 0341B2(Rx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 03FEF2(Wx) 03FF9C(Wx) 
; ram_0458                              = $0458 ; 002275(Wx) 002478(Wx) 0037E5(Wx) 0038CA(Wx) 005A6D(Wx) 005B46(Wx) 005B81(Wx) 007433(Wx) 007642(Wx) 007CDD(Rx) 007CE2(Wx) 007CEF(Rx) 007CF4(Wx) 0082C9(Wx) 0087B3(Wy) 0088FE(Wx) 00AE7E(Wx) 00DCA0(Wx) 023E3A(Wx) 024289(Rx) 02428E(Wx) 02442F(Rx) 024434(Wx) 02472D(Wx) 0247E3(Wx) 0249A6(Wx) 0269D3(Wx) 026A93(Wx) 026A96(Wy) 02C32A(Wx) 02CA51(Wx) 02CA5C(Rx) 02CA61(Wx) 02CA6E(Wx) 02DADF(Wy) 03250D(Wx) 0326E2(Wx) 033313(Wx) 03403B(Rx) 0378C4(Wx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 03FEF2(Wx) 03FF9C(Wx) 
; ram_0459                              = $0459 ; 002275(Wx) 002478(Wx) 0037E5(Wx) 0038CA(Wx) 005D35(Wy) 007433(Wx) 007642(Wx) 007981(Wx) 007CDD(Rx) 007CE2(Wx) 007CEF(Rx) 007CF4(Wx) 0082C9(Wx) 0087B3(Wy) 0088FE(Wx) 00AE7E(Wx) 00DCA0(Wx) 017DAA(Wx) 023E3A(Wx) 024289(Rx) 02428E(Wx) 02442F(Rx) 024434(Wx) 02472D(Wx) 0247E3(Wx) 0249A6(Wx) 0269D3(Wx) 026A93(Wx) 026A96(Wy) 02C32A(Wx) 02CA51(Wx) 02CA5C(Rx) 02CA61(Wx) 02CA6E(Wx) 02DADF(Wy) 0326E2(Wx) 033313(Wx) 03403B(Rx) 0378C4(Wx) 03BCEA(Wx) 03BD17(Wx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 03FEF2(Wx) 03FF9C(Wx) 
; ram_045A                              = $045A ; 002275(Wx) 002478(Wx) 005D35(Wy) 007433(Wx) 007642(Wx) 007981(Wx) 0082C9(Wx) 0087B3(Wy) 0088FE(Wx) 00AE7E(Wx) 017DAA(Wx) 023E3A(Wx) 02472D(Wx) 0247E3(Wx) 0249A6(Wx) 026A96(Wy) 02C30C(Rx) 02C311(Wx) 02C32A(Wx) 02CA51(Wx) 02DADF(Wy) 0326E2(Wx) 033313(Wx) 03403B(Rx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 03FEF2(Wx) 
; ram_045B                              = $045B ; 002275(Wx) 005D35(Wy) 007433(Wx) 007642(Wx) 007981(Wx) 0082C9(Wx) 0087B3(Wy) 0088FE(Wx) 00AE7E(Wx) 017DAA(Wx) 023E3A(Wx) 02472D(Wx) 0247E3(Wx) 0249A6(Wx) 025D40(Wx) 026A96(Wy) 02C32A(Wx) 02CA5C(Rx) 02CA61(Wx) 02CA6E(Wx) 02DADF(Wy) 033313(Wx) 03403B(Rx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 03FEF2(Wx) 03FF9C(Wx) 
; ram_045C                              = $045C ; 002275(Wx) 005D35(Wy) 007642(Wx) 007981(Wx) 0082C9(Wx) 0087B3(Wy) 0088FE(Wx) 00AE7E(Wx) 00DCA0(Wx) 017DAA(Wx) 023E3A(Wx) 02472D(Wx) 0247E3(Wx) 0249A6(Wx) 026A96(Wy) 02C30C(Rx) 02C311(Wx) 02C32A(Wx) 03403B(Rx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 03FEF2(Wx) 
; ram_045D                              = $045D ; 002275(Wx) 005D35(Wy) 007642(Wx) 007981(Wx) 007CDD(Rx) 007CE2(Wx) 007CEF(Rx) 007CF4(Wx) 0082C9(Wx) 0087B3(Wy) 0088FE(Wx) 00AE7E(Wx) 017DAA(Wx) 023E3A(Wx) 0247E3(Wx) 0249A6(Wx) 02CA51(Wx) 03403B(Rx) 0378C4(Wx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 03FEF2(Wx) 03FF9C(Wx) 
; ram_045E                              = $045E ; 002275(Wx) 005D35(Wy) 007433(Wx) 007642(Wx) 007981(Wx) 007CDD(Rx) 007CE2(Wx) 007CEF(Rx) 007CF4(Wx) 0082C9(Wx) 00AE7E(Wx) 017DAA(Wx) 023E3A(Wx) 0247E3(Wx) 02C30C(Rx) 02C311(Wx) 02C32A(Wx) 02CA51(Wx) 03403B(Rx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 03FEF2(Wx) 03FF9C(Wx) 
; ram_045F                              = $045F ; 002275(Wx) 005D35(Wy) 007642(Wx) 007981(Wx) 0082C9(Wx) 0088FE(Wx) 00AE7E(Wx) 017DAA(Wx) 023E3A(Wx) 0247E3(Wx) 02C32A(Wx) 02CA51(Wx) 03403B(Rx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 03FEF2(Wx) 03FF9C(Wx) 
; ram_0460                              = $0460 ; 002275(Wx) 007433(Wx) 007642(Wx) 007981(Wx) 0082C9(Wx) 017DAA(Wx) 023E3A(Wx) 0247E3(Wx) 02CA51(Wx) 03403B(Rx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 03FEF2(Wx) 03FF9C(Wx) 
; ram_0461                              = $0461 ; 002275(Wx) 007433(Wx) 007642(Wx) 007981(Wx) 02C32A(Wx) 02CDD6(Wx) 03403B(Rx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 03FEF2(Wx) 
; ram_0462                              = $0462 ; 002275(Wx) 007642(Wx) 02C32A(Wx) 02CDD6(Wx) 03403B(Rx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 03FEF2(Wx) 
; ram_0463                              = $0463 ; 002275(Wx) 007433(Wx) 007642(Wx) 02C32A(Wx) 02CDD6(Wx) 03403B(Rx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 03FEF2(Wx) 
; ram_0464                              = $0464 ; 002275(Wx) 007642(Wx) 02C32A(Wx) 02CDD6(Wx) 03403B(Rx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 03FEF2(Wx) 
; ram_0465                              = $0465 ; 002275(Wx) 007642(Wx) 02C32A(Wx) 02CDD6(Wx) 03403B(Rx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 03FEF2(Wx) 
; ram_0466                              = $0466 ; 002275(Wx) 007642(Wx) 02C32A(Wx) 02CDD6(Wx) 03403B(Rx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 03FEF2(Wx) 
; ram_0467                              = $0467 ; 00138E(Wx) 002275(Wx) 007433(Wx) 007642(Wx) 03403B(Rx) 0341B2(Rx) 03BCEA(Wx) 03BD17(Wx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 03FA22(Wx) 
; ram_0468                              = $0468 ; 002275(Wx) 007642(Wx) 03403B(Rx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 
; ram_0469                              = $0469 ; 002275(Wx) 007642(Wx) 03403B(Rx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 
; ram_046A                              = $046A ; 002275(Wx) 007642(Wx) 03403B(Rx) 03E03F(Wi) 03E814(Wx) 03E845(Wx) 
; ram_046B                              = $046B ; 002275(Wx) 03403B(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_046C                              = $046C ; 000ED0(W)  002275(Wx) 03403B(Rx) 0341B2(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_046D                              = $046D ; 000E89(W)  002275(Wx) 03403B(Rx) 0341B2(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_046E                              = $046E ; 002275(Wx) 03403B(Rx) 038DE3(W)  03E03F(Wi) 03E845(Wx) 
; ram_046F                              = $046F ; 002275(Wx) 03403B(Rx) 03E03F(Wi) 03E845(Wx) 



; 0x002360 most likely something else
; see con_obj_flag
ram_obj_flags                           = $0470 ; 0011C6(W)  0012DA(W)  0015EA(W)  00162C(W)  002278(Wx) 004210(R)  004215(W)  006319(W)  006BA2(Wx) 006E28(Rx) 006E31(Wx) 007645(Wx) 028179(Rx) 02817E(Wx) 034036(Rx) 0341AD(Rx) 038130(W)  038B05(W)  03E03F(Wi) 03E845(Wx) 03F986(W)  03FB9B(W)  
    ram_plr_flags                           = $0470 ; 
    ram_wpn_flags                           = $0470 ; 
; ram_0471                              = $0471 ; 002278(Wx) 0027D8(Wx) 002801(Wx) 0028A9(Wx) 0037E8(Wx) 0038CD(Wx) 005A8F(Rx) 005C07(Wx) 005C89(Wx) 006BA2(Wx) 006E28(Rx) 006E31(Wx) 007645(Wx) 007CF7(Rx) 007CFC(Wx) 0082BF(Rx) 0082C4(Wx) 008383(Wy) 0083D7(Wx) 00840E(Rx) 00842B(Rx) 0084F8(Rx) 0084FD(Wx) 00864A(Rx) 00864F(Wx) 008663(Rx) 008668(Wx) 0086FE(Rx) 008703(Wx) 00879F(Wy) 00881A(Rx) 008830(Rx) 008835(Wx) 008914(Rx) 00899E(Rx) 0089A3(Wx) 0089D3(Rx) 0089D8(Wx) 008A29(Rx) 008A97(Rx) 008A9E(Rx) 008AA3(Wx) 008AA8(Rx) 008AAD(Wx) 008B78(Rx) 008B7D(Wx) 008E71(Wx) 008E7A(Rx) 008E81(Wx) 009133(Rx) 009138(Wx) 009397(Rx) 0093A8(Rx) 0093B8(Rx) 009449(Rx) 009450(Rx) 009455(Wx) 00945B(Wx) 00949F(Rx) 0094A2(Wy) 009614(Rx) 009626(Rx) 00962B(Wx) 009631(Rx) 009636(Wx) 00963C(Rx) 009B14(Rx) 00A7DE(Wx) 00AABB(Wx) 00AAEE(Rx) 00AAF3(Wx) 00AB3B(Wx) 00AC6F(Ry) 00AC74(Wx) 00AD3D(Rx) 00ADB4(Rx) 00ADB7(Wx) 00ADC2(Rx) 00ADC5(Wx) 00AE6F(Wx) 00AEA2(Rx) 00AEA5(Wx) 00AF74(Rx) 00C01A(Wx) 00C02D(Wx) 00C11B(Wy) 00C14C(Wx) 00C1FB(Wx) 00C332(Wy) 00C3AD(Wx) 00C570(Wx) 00C7F0(Wx) 00C8BD(Wx) 00C933(Wx) 00CA7C(Wx) 00CAE8(Wx) 00CB81(Wx) 00CB8C(Wx) 00CBAC(Wy) 00CD79(Wy) 00CDB4(Wx) 00CDF8(Wx) 00CF3D(Wx) 00D0DE(Rx) 00D0E3(Wx) 00D177(Rx) 00D17C(Wx) 00D275(Wx) 00D347(Rx) 00D34C(Wx) 00D357(Wx) 00D380(Wx) 00D51F(Rx) 00D52C(Wx) 00D8BE(Wx) 00D926(Wx) 00D9E1(Wx) 00DA01(Rx) 00DA06(Wx) 00DA10(Wx) 00DA72(Wx) 00DACE(Rx) 00DAD3(Wx) 00DAE2(Wx) 00DE79(Wx) 013740(Rx) 013747(Rx) 01374E(Rx) 013753(Wx) 01375F(Rx) 013772(Rx) 013788(Wx) 013792(Rx) 013797(Wx) 0137B0(Wx) 0137DD(Rx) 0137E4(Rx) 0137E9(Wx) 0137EF(Rx) 0137F4(Wx) 013906(Rx) 013916(Rx) 013933(Rx) 01393E(Wx) 01394F(Rx) 01395A(Wx) 01397E(Rx) 013989(Wx) 013AE0(Wx) 01BE46(Rx) 01BE4B(Wx) 023E40(Wx) 023F4F(Wx) 0240B3(Rx) 0240B8(Wx) 0240DC(Rx) 0240E1(Wx) 0242A4(Rx) 0242AB(Wx) 024364(Rx) 024369(Wx) 024371(Rx) 024378(Wx) 024437(Rx) 02443E(Wx) 02447A(Rx) 02447F(Wx) 0244E8(Rx) 0245FE(Rx) 024605(Rx) 02460F(Rx) 024614(Wx) 02486D(Wy) 0248D3(Wx) 0249AB(Wx) 02543F(Rx) 025446(Wx) 025C35(Wx) 025D6E(Rx) 025D73(Wx) 025DB3(Rx) 025DB8(Wx) 025DBE(Rx) 025DC3(Wx) 026023(Wx) 02602F(Wx) 02612C(Wx) 02616B(Wx) 026526(Wy) 026648(Wx) 026722(Wx) 02697E(Wx) 026A88(Wy) 026BCD(Wx) 026C0B(Wx) 026C52(Wx) 026C96(Wx) 026F32(Wx) 026F52(Rx) 026F66(Wx) 026F8A(Rx) 026F8F(Wx) 026F98(Wx) 0274B2(Ry) 02752C(Wx) 027650(Wx) 0276B3(Wx) 0279EB(Wx) 027A25(Wx) 027C23(Wx) 027C60(Wx) 027D7B(Wx) 027E29(Wx) 028179(Rx) 02817E(Wx) 0281FE(Wx) 02864B(Rx) 028650(Wx) 028BE5(Rx) 028BEA(Wx) 028D18(Wx) 028DC6(Rx) 028DCB(Wx) 029139(Wx) 029216(Wx) 02C011(Rx) 02C025(Rx) 02C030(Wx) 02C1AE(Rx) 02C1B3(Wx) 02C1BA(Rx) 02C1BF(Wx) 02C1CC(Rx) 02C1D1(Wx) 02C1D8(Rx) 02C1DD(Wx) 02C1E4(Rx) 02C1E9(Wx) 02C1F0(Rx) 02C1F5(Wx) 02C1FF(Rx) 02C204(Wx) 02C208(Rx) 02C20D(Wx) 02C256(Rx) 02C7B5(Rx) 02C7BA(Wx) 02CA8E(Rx) 02CB3C(Wx) 02CCB3(Rx) 02CE02(Wx) 02CE4F(Rx) 02CE6D(Rx) 02D08C(Rx) 02D0BF(Rx) 02D214(Rx) 02D226(Rx) 02D379(Rx) 02D413(Rx) 02D42E(Rx) 02D433(Wx) 02D9A3(Rx) 02DD8F(Rx) 02DDB0(Rx) 02E1ED(Wx) 02E4F5(Wx) 02E4FC(Wx) 02F20B(Rx) 02F23E(Rx) 02F4DF(Rx) 02F599(Wx) 02F709(Rx) 02F710(Rx) 02F715(Wx) 0325F9(Wx) 032614(Rx) 0328D2(Wx) 034036(Rx) 0341AD(Rx) 0378BF(Wx) 03B0D7(Ry) 03B130(Ry) 03B1B1(Ry) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 03FE34(Rx) 03FE65(Rx) 03FE79(Rx) 03FEF5(Wx) 
; ram_0472                              = $0472 ; 002278(Wx) 0027D8(Wx) 002801(Wx) 0028A9(Wx) 0037E8(Wx) 0038CD(Wx) 004201(Wx) 005A8F(Rx) 005BB6(Wx) 005C07(Wx) 005C89(Wx) 006BA2(Wx) 006E28(Rx) 006E31(Wx) 007645(Wx) 007CF7(Rx) 007CFC(Wx) 0082BF(Rx) 0082C4(Wx) 008383(Wy) 0083D7(Wx) 00840E(Rx) 00842B(Rx) 0084F8(Rx) 0084FD(Wx) 00864A(Rx) 00864F(Wx) 008663(Rx) 008668(Wx) 008684(Rx) 008689(Wx) 00869D(Rx) 0086A2(Wx) 0086FE(Rx) 008703(Wx) 00879F(Wy) 00881A(Rx) 008830(Rx) 008835(Wx) 008914(Rx) 00899E(Rx) 0089A3(Wx) 0089D3(Rx) 0089D8(Wx) 008A29(Rx) 008A97(Rx) 008A9E(Rx) 008AA3(Wx) 008AA8(Rx) 008AAD(Wx) 008B78(Rx) 008B7D(Wx) 008E71(Wx) 008E7A(Rx) 008E81(Wx) 009133(Rx) 009138(Wx) 00923F(Wx) 009270(Wx) 009397(Rx) 0093B8(Rx) 009449(Rx) 00945B(Wx) 00949F(Rx) 0094A2(Wy) 009614(Rx) 009626(Rx) 00962B(Wx) 009631(Rx) 009636(Wx) 00963C(Rx) 009B14(Rx) 00A7DE(Wx) 00AABB(Wx) 00AAEE(Rx) 00AAF3(Wx) 00ABA4(Rx) 00ABA7(Wx) 00AC6F(Ry) 00AC74(Wx) 00AD3D(Rx) 00ADB4(Rx) 00ADB7(Wx) 00ADC2(Rx) 00ADC5(Wx) 00AE6F(Wx) 00AEA2(Rx) 00AEA5(Wx) 00AF74(Rx) 00C01A(Wx) 00C14C(Wx) 00C1FB(Wx) 00C570(Wx) 00C71E(Wy) 00C78A(Wx) 00C7F0(Wx) 00C8BD(Wx) 00C933(Wx) 00CA7C(Wx) 00CAE8(Wx) 00CB81(Wx) 00CB8C(Wx) 00D51F(Rx) 00D52C(Wx) 00D8BE(Wx) 00D926(Wx) 00DC47(Wx) 00DCFB(Wx) 00DD1F(Rx) 00DD22(Wx) 00DD2C(Wx) 00DD54(Wx) 00DD8E(Rx) 00DD9B(Wx) 013740(Rx) 013747(Rx) 01374E(Rx) 013753(Wx) 01375F(Rx) 013772(Rx) 013788(Wx) 013792(Rx) 013797(Wx) 0137B0(Wx) 0137DD(Rx) 0137E4(Rx) 0137E9(Wx) 0137EF(Rx) 0137F4(Wx) 013906(Rx) 013916(Rx) 013933(Rx) 01393E(Wx) 01394F(Rx) 01395A(Wx) 01397E(Rx) 013989(Wx) 013AE0(Wx) 01BE46(Rx) 01BE4B(Wx) 023E40(Wx) 023F4F(Wx) 0240B3(Rx) 0240B8(Wx) 0240DC(Rx) 0240E1(Wx) 0242A4(Rx) 0242AB(Wx) 024364(Rx) 024369(Wx) 024371(Rx) 024378(Wx) 024437(Rx) 02443E(Wx) 02447A(Rx) 02447F(Wx) 0248D3(Wx) 025C35(Wx) 025D31(Rx) 025D36(Wx) 025D6E(Rx) 025D73(Wx) 025E52(Wx) 026003(Wx) 026023(Wx) 02602F(Wx) 0261AD(Wx) 026253(Wy) 02637E(Wy) 02647B(Wx) 026648(Wx) 026722(Wx) 02682E(Wx) 026834(Wx) 02684B(Wx) 026862(Wx) 026A88(Wy) 026BCD(Wx) 026C0B(Wx) 026C52(Wx) 026CD7(Wy) 026D33(Wy) 026F32(Wx) 026F8A(Rx) 026F8F(Wx) 027058(Wx) 027542(Wy) 027580(Wx) 027606(Wy) 0279D0(Wy) 027AE9(Wx) 027AF4(Wx) 027C23(Wx) 027C60(Wx) 027E4B(Wy) 027ED9(Wx) 028179(Rx) 02817E(Wx) 0281FE(Wx) 02864B(Rx) 028650(Wx) 028BE5(Rx) 028BEA(Wx) 028DC6(Rx) 028DCB(Wx) 029139(Wx) 029216(Wx) 02925F(Wx) 02C011(Rx) 02C025(Rx) 02C030(Wx) 02C147(Rx) 02C1AE(Rx) 02C1B3(Wx) 02C1BA(Rx) 02C1BF(Wx) 02C1CC(Rx) 02C1D1(Wx) 02C1D8(Rx) 02C1DD(Wx) 02C1E4(Rx) 02C1E9(Wx) 02C1F0(Rx) 02C1F5(Wx) 02C1FF(Rx) 02C204(Wx) 02C208(Rx) 02C20D(Wx) 02C256(Rx) 02C7B5(Rx) 02C7BA(Wx) 02CA8E(Rx) 02CB3C(Wx) 02CCB3(Rx) 02CE02(Wx) 02CE4F(Rx) 02CE6D(Rx) 02D08C(Rx) 02D0BF(Rx) 02D214(Rx) 02D226(Rx) 02D379(Rx) 02D413(Rx) 02D42E(Rx) 02D433(Wx) 02D9A3(Rx) 02DAC0(Wy) 02DD8F(Rx) 02DDB0(Rx) 02DDBC(Wx) 02DDC3(Rx) 02DDC8(Wx) 02DDCC(Rx) 02DDD1(Wx) 02E1ED(Wx) 02E4F5(Wx) 02E4FC(Wx) 02F20B(Rx) 02F23E(Rx) 02F4DF(Rx) 02F599(Wx) 02F709(Rx) 02F710(Rx) 02F715(Wx) 02F735(Rx) 0326A7(Wx) 0328D2(Wx) 03330E(Wx) 034036(Rx) 0341AD(Rx) 0378BF(Wx) 03B0D7(Ry) 03B130(Ry) 03B1B1(Ry) 03BA4E(Wx) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 03FE34(Rx) 03FE65(Rx) 03FE79(Rx) 03FEF5(Wx) 
; ram_0473                              = $0473 ; 002278(Wx) 002342(Rx) 002347(Wx) 002360(W)  00238D(Rx) 002392(Wx) 002473(Wx) 0027D8(Wx) 002801(Wx) 0028A9(Wx) 0037E8(Wx) 0038CD(Wx) 00424F(Wx) 004438(Rx) 00443D(Wx) 0055DB(Wx) 005627(Wx) 005A8F(Rx) 005BB6(Wx) 005C07(Wx) 005C89(Wx) 006BA2(Wx) 006E28(Rx) 006E31(Wx) 007645(Wx) 007CF7(Rx) 007CFC(Wx) 0082BF(Rx) 0082C4(Wx) 008383(Wy) 0083D7(Wx) 0084F8(Rx) 0084FD(Wx) 00864A(Rx) 00864F(Wx) 008663(Rx) 008668(Wx) 008684(Rx) 008689(Wx) 00869D(Rx) 0086A2(Wx) 0086FE(Rx) 008703(Wx) 00879F(Wy) 00881A(Rx) 008830(Rx) 008835(Wx) 008914(Rx) 00899E(Rx) 0089A3(Wx) 0089D3(Rx) 0089D8(Wx) 008A29(Rx) 008A97(Rx) 008A9E(Rx) 008AA3(Wx) 008AA8(Rx) 008AAD(Wx) 008B78(Rx) 008B7D(Wx) 008E71(Wx) 008E7A(Rx) 008E81(Wx) 009133(Rx) 009138(Wx) 00923F(Wx) 009270(Wx) 009397(Rx) 0093B8(Rx) 009449(Rx) 00945B(Wx) 00949F(Rx) 0094A2(Wy) 009614(Rx) 009626(Rx) 00962B(Wx) 009631(Rx) 009636(Wx) 00963C(Rx) 009B14(Rx) 00A7DE(Wx) 00AABB(Wx) 00AAEE(Rx) 00AAF3(Wx) 00AB3B(Wx) 00ABA4(Rx) 00ABA7(Wx) 00AC6F(Ry) 00AC74(Wx) 00AD3D(Rx) 00ADB4(Rx) 00ADB7(Wx) 00ADC2(Rx) 00ADC5(Wx) 00AE6F(Wx) 00AEA2(Rx) 00AEA5(Wx) 00C11B(Wy) 00C230(Wy) 00C27D(Wy) 00C332(Wy) 00C3AD(Wx) 00C493(Wx) 00C570(Wx) 00CBAC(Wy) 00CD79(Wy) 00CDB4(Wx) 00D51F(Rx) 00D52C(Wx) 00D926(Wx) 00DC47(Wx) 00DCFB(Wx) 00DD1F(Rx) 00DD22(Wx) 00DD2C(Wx) 00DD54(Wx) 00DD8E(Rx) 00DD9B(Wx) 013740(Rx) 013747(Rx) 01374E(Rx) 013753(Wx) 01375F(Rx) 013772(Rx) 013788(Wx) 013792(Rx) 013797(Wx) 0137B0(Wx) 0137DD(Rx) 0137E4(Rx) 0137E9(Wx) 0137EF(Rx) 0137F4(Wx) 013906(Rx) 013916(Rx) 013933(Rx) 01393E(Wx) 01394F(Rx) 01395A(Wx) 01397E(Rx) 013989(Wx) 01BE46(Rx) 01BE4B(Wx) 023E40(Wx) 0240DC(Rx) 0240E1(Wx) 0242A4(Rx) 0242AB(Wx) 024437(Rx) 02443E(Wx) 0249AB(Wx) 025C35(Wx) 025D6E(Rx) 025D73(Wx) 025E52(Wx) 026003(Wx) 02612C(Wx) 0261AD(Wx) 026253(Wy) 02637E(Wy) 02647B(Wx) 026526(Wy) 0265E8(Wx) 02682E(Wx) 026834(Wx) 02684B(Wx) 026862(Wx) 026A88(Wy) 026BCD(Wx) 026C0B(Wx) 026C52(Wx) 026D33(Wy) 026F32(Wx) 026F8A(Rx) 026F8F(Wx) 027058(Wx) 027606(Wy) 0276F0(Wy) 0279D0(Wy) 027AE9(Wx) 027AF4(Wx) 027C23(Wx) 027C60(Wx) 027E6B(Wy) 028179(Rx) 02817E(Wx) 0281FE(Wx) 02864B(Rx) 028650(Wx) 028BE5(Rx) 028BEA(Wx) 028DC6(Rx) 028DCB(Wx) 029139(Wx) 029216(Wx) 02925F(Wx) 02C011(Rx) 02C025(Rx) 02C030(Wx) 02C1AE(Rx) 02C1B3(Wx) 02C1BA(Rx) 02C1BF(Wx) 02C1CC(Rx) 02C1D1(Wx) 02C1D8(Rx) 02C1DD(Wx) 02C1E4(Rx) 02C1E9(Wx) 02C1F0(Rx) 02C1F5(Wx) 02C1FF(Rx) 02C204(Wx) 02C208(Rx) 02C20D(Wx) 02C256(Rx) 02C7B5(Rx) 02C7BA(Wx) 02CA8E(Rx) 02CB3C(Wx) 02CCB3(Rx) 02CE02(Wx) 02CE4F(Rx) 02CE6D(Rx) 02D08C(Rx) 02D0BF(Rx) 02D214(Rx) 02D226(Rx) 02D379(Rx) 02D413(Rx) 02D42E(Rx) 02D433(Wx) 02D9A3(Rx) 02DAC0(Wy) 02DD8F(Rx) 02DDB0(Rx) 02DDBC(Wx) 02DDC3(Rx) 02DDC8(Wx) 02DDCC(Rx) 02DDD1(Wx) 02E1ED(Wx) 02E4F5(Wx) 02E4FC(Wx) 02F20B(Rx) 02F23E(Rx) 02F4DF(Rx) 02F599(Wx) 02F709(Rx) 02F710(Rx) 02F715(Wx) 0326A7(Wx) 0328D2(Wx) 03330E(Wx) 034036(Rx) 0341AD(Rx) 03B0D7(Ry) 03B130(Ry) 03B1B1(Ry) 03BA4E(Wx) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 03FE34(Rx) 03FE65(Rx) 03FE79(Rx) 03FEF5(Wx) 
; ram_0474                              = $0474 ; 002278(Wx) 002342(Rx) 002347(Wx) 00238D(Rx) 002392(Wx) 002473(Wx) 0027D8(Wx) 002801(Wx) 0028A9(Wx) 0037E8(Wx) 0038CD(Wx) 004262(Wx) 0055DB(Wx) 005627(Wx) 0056CD(Wx) 005730(Wx) 005737(Wx) 00574F(Wx) 005757(Wx) 005777(Wx) 0058E9(Wx) 005A8F(Rx) 005C07(Wx) 005C89(Wx) 006BA2(Wx) 006E28(Rx) 006E31(Wx) 007645(Wx) 007CF7(Rx) 007CFC(Wx) 0082BF(Rx) 0082C4(Wx) 008383(Wy) 0083D7(Wx) 0084F8(Rx) 0084FD(Wx) 00864A(Rx) 00864F(Wx) 008663(Rx) 008668(Wx) 008684(Rx) 008689(Wx) 00869D(Rx) 0086A2(Wx) 00879F(Wy) 00881A(Rx) 008830(Rx) 008835(Wx) 008914(Rx) 00899E(Rx) 0089A3(Wx) 0089D3(Rx) 0089D8(Wx) 008A29(Rx) 008A97(Rx) 008A9E(Rx) 008AA3(Wx) 008AA8(Rx) 008AAD(Wx) 008B78(Rx) 008B7D(Wx) 008E71(Wx) 008E7A(Rx) 008E81(Wx) 00923F(Wx) 009270(Wx) 0093B8(Rx) 009449(Rx) 009450(Rx) 009455(Wx) 00945B(Wx) 00949F(Rx) 0094A2(Wy) 009614(Rx) 009626(Rx) 00962B(Wx) 009631(Rx) 009636(Wx) 00963C(Rx) 009B14(Rx) 00A7DE(Wx) 00AABB(Wx) 00AAEE(Rx) 00AAF3(Wx) 00ABA4(Rx) 00ABA7(Wx) 00AC6F(Ry) 00AC74(Wx) 00AD3D(Rx) 00ADB4(Rx) 00ADB7(Wx) 00ADC2(Rx) 00ADC5(Wx) 00AE6F(Wx) 00AEA2(Rx) 00AEA5(Wx) 00C11B(Wy) 00C230(Wy) 00C27D(Wy) 00C332(Wy) 00C3AD(Wx) 00C493(Wx) 00C570(Wx) 00CBAC(Wy) 00CD79(Wy) 00CDB4(Wx) 00D51F(Rx) 00D52C(Wx) 00DC47(Wx) 00DCFB(Wx) 00DD1F(Rx) 00DD22(Wx) 00DD2C(Wx) 00DD54(Wx) 00DD8E(Rx) 00DD9B(Wx) 013740(Rx) 013747(Rx) 01374E(Rx) 013753(Wx) 01375F(Rx) 013772(Rx) 013788(Wx) 013792(Rx) 013797(Wx) 0137DD(Rx) 0137E4(Rx) 0137E9(Wx) 0137EF(Rx) 0137F4(Wx) 013906(Rx) 013916(Rx) 013933(Rx) 01393E(Wx) 01394F(Rx) 01395A(Wx) 01397E(Rx) 013989(Wx) 013AE0(Wx) 01BE46(Rx) 01BE4B(Wx) 023E40(Wx) 0240B3(Rx) 0240B8(Wx) 0240DC(Rx) 0240E1(Wx) 0242A4(Rx) 0242AB(Wx) 024364(Rx) 024369(Wx) 024371(Rx) 024378(Wx) 024437(Rx) 02443E(Wx) 02447A(Rx) 02447F(Wx) 0248D3(Wx) 0249AB(Wx) 025C35(Wx) 025D6E(Rx) 025D73(Wx) 025E52(Wx) 026003(Wx) 026023(Wx) 02602F(Wx) 02612C(Wx) 026253(Wy) 02647B(Wx) 02682E(Wx) 026834(Wx) 02684B(Wx) 026862(Wx) 026A88(Wy) 026BCD(Wx) 026C0B(Wx) 026C52(Wx) 026D33(Wy) 026F32(Wx) 026F8A(Rx) 026F8F(Wx) 027058(Wx) 027606(Wy) 0276F0(Wy) 0279D0(Wy) 027AE9(Wx) 027AF4(Wx) 027C23(Wx) 027C60(Wx) 027E6B(Wy) 028179(Rx) 02817E(Wx) 0281FE(Wx) 028BE5(Rx) 028BEA(Wx) 028DC6(Rx) 028DCB(Wx) 029139(Wx) 029216(Wx) 02925F(Wx) 02C011(Rx) 02C025(Rx) 02C030(Wx) 02C147(Rx) 02C1AE(Rx) 02C1B3(Wx) 02C1BA(Rx) 02C1BF(Wx) 02C1CC(Rx) 02C1D1(Wx) 02C1E4(Rx) 02C1E9(Wx) 02C1F0(Rx) 02C1F5(Wx) 02C1FF(Rx) 02C204(Wx) 02C208(Rx) 02C20D(Wx) 02C256(Rx) 02C7B5(Rx) 02C7BA(Wx) 02CA8E(Rx) 02CB15(Rx) 02CE02(Wx) 02CE6D(Rx) 02CF55(Rx) 02D08C(Rx) 02D0BF(Rx) 02D379(Rx) 02D9A3(Rx) 02DAC0(Wy) 02DD8F(Rx) 02DDB0(Rx) 02DDBC(Wx) 02DDC3(Rx) 02DDC8(Wx) 02DDCC(Rx) 02DDD1(Wx) 02E1ED(Wx) 02E4F5(Wx) 02E4FC(Wx) 02F20B(Rx) 02F23E(Rx) 02F4DF(Rx) 02F599(Wx) 02F709(Rx) 02F710(Rx) 02F715(Wx) 0326A7(Wx) 0328D2(Wx) 03330E(Wx) 034036(Rx) 0378BF(Wx) 03B0D7(Ry) 03B130(Ry) 03B1B1(Ry) 03BA4E(Wx) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 03FE34(Rx) 03FE65(Rx) 03FE79(Rx) 03FEF5(Wx) 
; ram_0475                              = $0475 ; 002278(Wx) 002342(Rx) 002347(Wx) 00238D(Rx) 002392(Wx) 002473(Wx) 0027D8(Wx) 002801(Wx) 0028A9(Wx) 0037E8(Wx) 0038CD(Wx) 0055DB(Wx) 005627(Wx) 006BA2(Wx) 006E28(Rx) 006E31(Wx) 007645(Wx) 007CF7(Rx) 007CFC(Wx) 0082BF(Rx) 0082C4(Wx) 008383(Wy) 0083D7(Wx) 0084F8(Rx) 0084FD(Wx) 00864A(Rx) 00864F(Wx) 008663(Rx) 008668(Wx) 008684(Rx) 008689(Wx) 00869D(Rx) 0086A2(Wx) 00879F(Wy) 00881A(Rx) 008830(Rx) 008835(Wx) 008914(Rx) 00899E(Rx) 0089A3(Wx) 0089D3(Rx) 0089D8(Wx) 008A29(Rx) 008A97(Rx) 008A9E(Rx) 008AA3(Wx) 008AA8(Rx) 008AAD(Wx) 008B78(Rx) 008B7D(Wx) 008E71(Wx) 008E7A(Rx) 008E81(Wx) 00923F(Wx) 009270(Wx) 0093B8(Rx) 009449(Rx) 00945B(Wx) 00949F(Rx) 0094A2(Wy) 009614(Rx) 009626(Rx) 00962B(Wx) 009631(Rx) 009636(Wx) 00963C(Rx) 009B14(Rx) 00A7DE(Wx) 00AABB(Wx) 00AAEE(Rx) 00AAF3(Wx) 00ABA4(Rx) 00ABA7(Wx) 00AC6F(Ry) 00AC74(Wx) 00AD3D(Rx) 00ADB4(Rx) 00ADB7(Wx) 00ADC2(Rx) 00ADC5(Wx) 00AE6F(Wx) 00C11B(Wy) 00C230(Wy) 00C27D(Wy) 00C332(Wy) 00C3AD(Wx) 00C493(Wx) 00C570(Wx) 00CBAC(Wy) 00D926(Wx) 00DC47(Wx) 00DCFB(Wx) 00DD1F(Rx) 00DD22(Wx) 00DD2C(Wx) 00DD54(Wx) 00DD8E(Rx) 00DD9B(Wx) 013740(Rx) 013747(Rx) 01374E(Rx) 013753(Wx) 01375F(Rx) 013772(Rx) 013788(Wx) 013792(Rx) 013797(Wx) 0137DD(Rx) 0137E4(Rx) 0137E9(Wx) 0137EF(Rx) 0137F4(Wx) 013906(Rx) 013916(Rx) 013933(Rx) 01393E(Wx) 01394F(Rx) 01395A(Wx) 01397E(Rx) 013989(Wx) 017CDC(Wy) 017D41(Wx) 01BE46(Rx) 01BE4B(Wx) 023E40(Wx) 0240DC(Rx) 0240E1(Wx) 0242A4(Rx) 0242AB(Wx) 024364(Rx) 024369(Wx) 024371(Rx) 024378(Wx) 024437(Rx) 02443E(Wx) 02447A(Rx) 02447F(Wx) 0249AB(Wx) 025C35(Wx) 025D6E(Rx) 025D73(Wx) 025E52(Wx) 025EE6(Wy) 026003(Wx) 026253(Wy) 02647B(Wx) 026A88(Wy) 026BCD(Wx) 026C0B(Wx) 026C52(Wx) 026D33(Wy) 026F32(Wx) 026F8A(Rx) 026F8F(Wx) 027058(Wx) 027606(Wy) 027744(Wy) 0279D0(Wy) 027AE9(Wx) 027AF4(Wx) 027C23(Wx) 027C60(Wx) 028179(Rx) 02817E(Wx) 0281FE(Wx) 028BE5(Rx) 028BEA(Wx) 028DC6(Rx) 028DCB(Wx) 029216(Wx) 02C011(Rx) 02C025(Rx) 02C030(Wx) 02C1AE(Rx) 02C1B3(Wx) 02C1BA(Rx) 02C1BF(Wx) 02C1CC(Rx) 02C1D1(Wx) 02C1E4(Rx) 02C1E9(Wx) 02C1F0(Rx) 02C1F5(Wx) 02C1FF(Rx) 02C204(Wx) 02C208(Rx) 02C20D(Wx) 02C256(Rx) 02C7B5(Rx) 02C7BA(Wx) 02CA8E(Rx) 02CB15(Rx) 02CE02(Wx) 02CE6D(Rx) 02CF55(Rx) 02D08C(Rx) 02D0BF(Rx) 02D9A3(Rx) 02DAC0(Wy) 02DD8F(Rx) 02DDB0(Rx) 02DDBC(Wx) 02DDC3(Rx) 02DDC8(Wx) 02E1ED(Wx) 02E4F5(Wx) 02E4FC(Wx) 02F20B(Rx) 02F23E(Rx) 02F4DF(Rx) 02F599(Wx) 02F709(Rx) 02F710(Rx) 02F715(Wx) 0326A7(Wx) 0328D2(Wx) 03330E(Wx) 034036(Rx) 0378BF(Wx) 03B0D7(Ry) 03B130(Ry) 03B1B1(Ry) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 03FE34(Rx) 03FE65(Rx) 03FE79(Rx) 03FEF5(Wx) 
; ram_0476                              = $0476 ; 002278(Wx) 002342(Rx) 002347(Wx) 00238D(Rx) 002392(Wx) 002473(Wx) 0027D8(Wx) 002801(Wx) 0028A9(Wx) 006BA2(Wx) 006E28(Rx) 006E31(Wx) 007645(Wx) 0082BF(Rx) 0082C4(Wx) 008383(Wy) 0083D7(Wx) 0084F8(Rx) 0084FD(Wx) 00864A(Rx) 00864F(Wx) 008663(Rx) 008668(Wx) 008684(Rx) 008689(Wx) 00869D(Rx) 0086A2(Wx) 00879F(Wy) 00881A(Rx) 008830(Rx) 008835(Wx) 008914(Rx) 00899E(Rx) 0089A3(Wx) 0089D3(Rx) 0089D8(Wx) 008E71(Wx) 008E7A(Rx) 008E81(Wx) 00923F(Wx) 009270(Wx) 0093B8(Rx) 009449(Rx) 009450(Rx) 009455(Wx) 00945B(Wx) 00949F(Rx) 0094A2(Wy) 009614(Rx) 009626(Rx) 00962B(Wx) 009631(Rx) 009636(Wx) 00963C(Rx) 009B14(Rx) 00A7DE(Wx) 00AABB(Wx) 00AAEE(Rx) 00AAF3(Wx) 00ABA4(Rx) 00ABA7(Wx) 00AC6F(Ry) 00AC74(Wx) 00ADB4(Rx) 00ADB7(Wx) 00ADC2(Rx) 00ADC5(Wx) 00AE6F(Wx) 00C11B(Wy) 00C230(Wy) 00C27D(Wy) 00C332(Wy) 00C3AD(Wx) 00C493(Wx) 00C570(Wx) 00CBAC(Wy) 00D8BE(Wx) 00D926(Wx) 013740(Rx) 013747(Rx) 01374E(Rx) 013753(Wx) 01375F(Rx) 013772(Rx) 013788(Wx) 013792(Rx) 013797(Wx) 0137DD(Rx) 0137E4(Rx) 0137E9(Wx) 0137EF(Rx) 0137F4(Wx) 013906(Rx) 013916(Rx) 013933(Rx) 01393E(Wx) 01394F(Rx) 01395A(Wx) 01397E(Rx) 013989(Wx) 017CDC(Wy) 017DEE(Wx) 01BE46(Rx) 01BE4B(Wx) 023E40(Wx) 0240B3(Rx) 0240B8(Wx) 0240DC(Rx) 0240E1(Wx) 024364(Rx) 024369(Wx) 024371(Rx) 024378(Wx) 02447A(Rx) 02447F(Wx) 0248D3(Wx) 0249AB(Wx) 025C35(Wx) 025D6E(Rx) 025D73(Wx) 025E52(Wx) 026003(Wx) 02612C(Wx) 026253(Wy) 02647B(Wx) 026A88(Wy) 026BCD(Wx) 026C0B(Wx) 026C52(Wx) 026D33(Wy) 026F32(Wx) 026F8A(Rx) 026F8F(Wx) 027058(Wx) 027606(Wy) 0279D0(Wy) 027AE9(Wx) 027AF4(Wx) 027C23(Wx) 027C60(Wx) 028179(Rx) 02817E(Wx) 0281FE(Wx) 028BE5(Rx) 028BEA(Wx) 028DC6(Rx) 028DCB(Wx) 029216(Wx) 02C011(Rx) 02C025(Rx) 02C030(Wx) 02C1AE(Rx) 02C1B3(Wx) 02C1BA(Rx) 02C1BF(Wx) 02C1E4(Rx) 02C1E9(Wx) 02C1F0(Rx) 02C1F5(Wx) 02C1FF(Rx) 02C204(Wx) 02C208(Rx) 02C20D(Wx) 02C256(Rx) 02CB15(Rx) 02CE02(Wx) 02CE6D(Rx) 02CF55(Rx) 02DAC0(Wy) 02DD8F(Rx) 02DDB0(Rx) 02DDBC(Wx) 02DDC3(Rx) 02DDC8(Wx) 02E4F5(Wx) 02E4FC(Wx) 02F20B(Rx) 02F23E(Rx) 02F4DF(Rx) 02F599(Wx) 0328D2(Wx) 03330E(Wx) 034036(Rx) 03B130(Ry) 03B1B1(Ry) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 03FE34(Rx) 03FE65(Rx) 03FE79(Rx) 03FEF5(Wx) 
; ram_0477                              = $0477 ; 002278(Wx) 002342(Rx) 002347(Wx) 00238D(Rx) 002392(Wx) 0027D8(Wx) 002801(Wx) 0028A9(Wx) 006BA2(Wx) 006E28(Rx) 006E31(Wx) 007645(Wx) 0082BF(Rx) 0082C4(Wx) 008383(Wy) 0083D7(Wx) 0084F8(Rx) 0084FD(Wx) 00864A(Rx) 00864F(Wx) 008663(Rx) 008668(Wx) 008684(Rx) 008689(Wx) 00869D(Rx) 0086A2(Wx) 00879F(Wy) 00881A(Rx) 008830(Rx) 008835(Wx) 008914(Rx) 00899E(Rx) 0089A3(Wx) 0089D3(Rx) 0089D8(Wx) 008E71(Wx) 008E7A(Rx) 008E81(Wx) 00923F(Wx) 009270(Wx) 0093A8(Rx) 0093B8(Rx) 009449(Rx) 00945B(Wx) 00949F(Rx) 0094A2(Wy) 009614(Rx) 009626(Rx) 00962B(Wx) 009631(Rx) 009636(Wx) 00963C(Rx) 009B14(Rx) 00A7DE(Wx) 00AABB(Wx) 00AAEE(Rx) 00AAF3(Wx) 00ABA4(Rx) 00ABA7(Wx) 00AC6F(Ry) 00AC74(Wx) 00ADB4(Rx) 00ADB7(Wx) 00ADC2(Rx) 00ADC5(Wx) 00AE6F(Wx) 00C11B(Wy) 00C230(Wy) 00C27D(Wy) 00C3AD(Wx) 00C493(Wx) 00C570(Wx) 013740(Rx) 013747(Rx) 01374E(Rx) 013753(Wx) 01375F(Rx) 013772(Rx) 013788(Wx) 013792(Rx) 013797(Wx) 013906(Rx) 013916(Rx) 013933(Rx) 01393E(Wx) 01394F(Rx) 01395A(Wx) 01397E(Rx) 013989(Wx) 017CDC(Wy) 017DEE(Wx) 01BE46(Rx) 01BE4B(Wx) 023E40(Wx) 023F4F(Wx) 0240DC(Rx) 0240E1(Wx) 0248D3(Wx) 0249AB(Wx) 0254D5(Rx) 0254DA(Wx) 025C35(Wx) 025D31(Rx) 025D36(Wx) 025D6E(Rx) 025D73(Wx) 025E52(Wx) 026003(Wx) 02612C(Wx) 026253(Wy) 02647B(Wx) 0268AC(Rx) 0268B1(Wx) 0268C5(Wx) 0268FB(Wx) 026924(Rx) 026929(Wx) 026A88(Wy) 026C52(Wx) 026D33(Wy) 026F32(Wx) 026F8A(Rx) 026F8F(Wx) 027058(Wx) 02746B(Wy) 0274D1(Wx) 027606(Wy) 027B90(Wy) 028179(Rx) 02817E(Wx) 0281FE(Wx) 028BE5(Rx) 028BEA(Wx) 029216(Wx) 02C011(Rx) 02C025(Rx) 02C030(Wx) 02C1AE(Rx) 02C1B3(Wx) 02C1BA(Rx) 02C1BF(Wx) 02C1E4(Rx) 02C1E9(Wx) 02C1F0(Rx) 02C1F5(Wx) 02C1FF(Rx) 02C204(Wx) 02C208(Rx) 02C20D(Wx) 02C256(Rx) 02CA8E(Rx) 02CF55(Rx) 02DAC0(Wy) 02DC3D(Rx) 02DDB0(Rx) 02DDBC(Wx) 02DDC3(Rx) 02DDC8(Wx) 02F20B(Rx) 02F23E(Rx) 02F4DF(Rx) 02F599(Wx) 02F709(Rx) 02F710(Rx) 02F715(Wx) 03330E(Wx) 034036(Rx) 03B0D7(Ry) 03B130(Ry) 03B1B1(Ry) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 03FE34(Rx) 03FE65(Rx) 03FE79(Rx) 03FEF5(Wx) 
; ram_0478                              = $0478 ; 002278(Wx) 002342(Rx) 002347(Wx) 00238D(Rx) 002392(Wx) 006BA2(Wx) 006E28(Rx) 006E31(Wx) 007645(Wx) 0082BF(Rx) 0082C4(Wx) 008383(Wy) 0083D7(Wx) 0084F8(Rx) 0084FD(Wx) 00864A(Rx) 00864F(Wx) 008663(Rx) 008668(Wx) 008684(Rx) 008689(Wx) 00869D(Rx) 0086A2(Wx) 00879F(Wy) 00881A(Rx) 008830(Rx) 008835(Wx) 008914(Rx) 00899E(Rx) 0089A3(Wx) 0089D3(Rx) 0089D8(Wx) 008E71(Wx) 008E7A(Rx) 008E81(Wx) 00923F(Wx) 009270(Wx) 0093B8(Rx) 009449(Rx) 00945B(Wx) 00949F(Rx) 0094A2(Wy) 009614(Rx) 009626(Rx) 00962B(Wx) 009631(Rx) 009636(Wx) 00963C(Rx) 009B14(Rx) 00A7DE(Wx) 00AABB(Wx) 00AAEE(Rx) 00AAF3(Wx) 00ABA4(Rx) 00ABA7(Wx) 00AC6F(Ry) 00AC74(Wx) 00ADB4(Rx) 00ADB7(Wx) 00ADC2(Rx) 00ADC5(Wx) 00AE6F(Wx) 00C27D(Wy) 00C332(Wy) 00C493(Wx) 00C570(Wx) 00DCFB(Wx) 00DD1F(Rx) 00DD22(Wx) 00DD2C(Wx) 00DD54(Wx) 00DD8E(Rx) 00DD9B(Wx) 00DEF0(Wx) 013740(Rx) 013747(Rx) 01374E(Rx) 013753(Wx) 01375F(Rx) 013772(Rx) 013788(Wx) 013792(Rx) 013797(Wx) 013906(Rx) 013916(Rx) 013933(Rx) 01393E(Wx) 01394F(Rx) 01395A(Wx) 01397E(Rx) 013989(Wx) 013AE0(Wx) 017CDC(Wy) 017DEE(Wx) 01BE46(Rx) 01BE4B(Wx) 023E40(Wx) 023F4F(Wx) 0240DC(Rx) 0240E1(Wx) 0248D3(Wx) 0249AB(Wx) 025C35(Wx) 025E52(Wx) 026003(Wx) 02612C(Wx) 026253(Wy) 02647B(Wx) 026526(Wy) 026A88(Wy) 026C52(Wx) 026D33(Wy) 026F32(Wx) 026F8A(Rx) 026F8F(Wx) 027058(Wx) 02746B(Wy) 0274D1(Wx) 027B90(Wy) 028179(Rx) 02817E(Wx) 0281FE(Wx) 028BE5(Rx) 028BEA(Wx) 028D47(Wx) 028DC6(Rx) 028DCB(Wx) 02C011(Rx) 02C025(Rx) 02C030(Wx) 02C1AE(Rx) 02C1B3(Wx) 02C1BA(Rx) 02C1BF(Wx) 02C1FF(Rx) 02C204(Wx) 02C208(Rx) 02C20D(Wx) 02C256(Rx) 02CF55(Rx) 02DA4F(Rx) 02DAAE(Rx) 02DAB5(Rx) 02DDBC(Wx) 02DDC3(Rx) 02DDC8(Wx) 02DE02(R)  02DE42(R)  02DE58(R)  02F20B(Rx) 02F23E(Rx) 02F4DF(Rx) 02F599(Wx) 034036(Rx) 03B0D7(Ry) 03B130(Ry) 03B1B1(Ry) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 03FE34(Rx) 03FE65(Rx) 03FE79(Rx) 03FEF5(Wx) 
; ram_0479                              = $0479 ; 002278(Wx) 002342(Rx) 002347(Wx) 00238D(Rx) 002392(Wx) 0027D8(Wx) 006BA2(Wx) 006E28(Rx) 006E31(Wx) 007645(Wx) 007CF7(Rx) 007CFC(Wx) 0082BF(Rx) 0082C4(Wx) 008383(Wy) 0083D7(Wx) 0084F8(Rx) 0084FD(Wx) 00864A(Rx) 00864F(Wx) 008663(Rx) 008668(Wx) 008684(Rx) 008689(Wx) 00869D(Rx) 0086A2(Wx) 00879F(Wy) 00881A(Rx) 008830(Rx) 008835(Wx) 008914(Rx) 0089D3(Rx) 0089D8(Wx) 008E71(Wx) 008E7A(Rx) 008E81(Wx) 00923F(Wx) 009270(Wx) 0093B8(Rx) 009449(Rx) 009450(Rx) 009455(Wx) 00945B(Wx) 00949F(Rx) 0094A2(Wy) 009614(Rx) 009626(Rx) 00962B(Wx) 009631(Rx) 009636(Wx) 00963C(Rx) 009B14(Rx) 00A7DE(Wx) 00AABB(Wx) 00AAEE(Rx) 00AAF3(Wx) 00AC6F(Ry) 00AC74(Wx) 00ADB4(Rx) 00ADB7(Wx) 013740(Rx) 013747(Rx) 01374E(Rx) 013753(Wx) 01375F(Rx) 013772(Rx) 013788(Wx) 013792(Rx) 013797(Wx) 01379F(Rx) 0137B0(Wx) 013906(Rx) 013916(Rx) 013933(Rx) 01393E(Wx) 01394F(Rx) 01395A(Wx) 01397E(Rx) 013989(Wx) 017C0F(Wx) 017CDC(Wy) 017DEE(Wx) 023E40(Wx) 0240DC(Rx) 0240E1(Wx) 02486D(Wy) 0249AB(Wx) 025E52(Wx) 026003(Wx) 026526(Wy) 0265E8(Wx) 026C52(Wx) 026D33(Wy) 026F32(Wx) 026F8A(Rx) 026F8F(Wx) 027058(Wx) 02746B(Wy) 0274D1(Wx) 027B90(Wy) 028179(Rx) 02817E(Wx) 0281FE(Wx) 028BE5(Rx) 028BEA(Wx) 02C011(Rx) 02C025(Rx) 02C030(Wx) 02C1AE(Rx) 02C1B3(Wx) 02C1BA(Rx) 02C1BF(Wx) 02C1E4(Rx) 02C1E9(Wx) 02C1FF(Rx) 02C204(Wx) 02C208(Rx) 02C20D(Wx) 02CCE7(Wx) 02CE02(Wx) 02CF72(Wx) 02D245(Wx) 02D98C(Wx) 02DE64(Wx) 02F20B(Rx) 02F23E(Rx) 02F4DF(Rx) 02F599(Wx) 02F709(Rx) 02F710(Rx) 02F715(Wx) 034036(Rx) 0378BF(Wx) 03B0D7(Ry) 03B130(Ry) 03B1B1(Ry) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 03FE34(Rx) 03FE65(Rx) 03FE79(Rx) 03FEF5(Wx) 
; ram_047A                              = $047A ; 002278(Wx) 006BA2(Wx) 006E28(Rx) 006E31(Wx) 007645(Wx) 007CF7(Rx) 007CFC(Wx) 0082BF(Rx) 0082C4(Wx) 008383(Wy) 0083D7(Wx) 0084F8(Rx) 0084FD(Wx) 00864A(Rx) 00864F(Wx) 008663(Rx) 008668(Wx) 008E71(Wx) 008E7A(Rx) 008E81(Wx) 009133(Rx) 009138(Wx) 00923F(Wx) 009270(Wx) 009397(Rx) 009449(Rx) 00945B(Wx) 00949F(Rx) 0094A2(Wy) 009614(Rx) 009626(Rx) 00962B(Wx) 009631(Rx) 009636(Wx) 00963C(Rx) 009B14(Rx) 00AABB(Wx) 00AAEE(Rx) 00AAF3(Wx) 00AC6F(Ry) 00AC74(Wx) 00ADB4(Rx) 00ADB7(Wx) 00ADC2(Rx) 00ADC5(Wx) 013740(Rx) 013747(Rx) 01374E(Rx) 013753(Wx) 01375F(Rx) 013772(Rx) 013788(Wx) 013792(Rx) 013797(Wx) 01379F(Rx) 0137B0(Wx) 0137DD(Rx) 0137E4(Rx) 0137E9(Wx) 0137EF(Rx) 0137F4(Wx) 013906(Rx) 013916(Rx) 013933(Rx) 01393E(Wx) 01394F(Rx) 01395A(Wx) 01397E(Rx) 013989(Wx) 017C0F(Wx) 017CDC(Wy) 017DEE(Wx) 01BE46(Rx) 01BE4B(Wx) 023E40(Wx) 0240DC(Rx) 0240E1(Wx) 0248D3(Wx) 02612C(Wx) 026C52(Wx) 026D33(Wy) 026F32(Wx) 026F8A(Rx) 026F8F(Wx) 027058(Wx) 02746B(Wy) 0274D1(Wx) 027B90(Wy) 028179(Rx) 02817E(Wx) 0281FE(Wx) 028BE5(Rx) 028BEA(Wx) 02C011(Rx) 02C025(Rx) 02C030(Wx) 02C1AE(Rx) 02C1B3(Wx) 02C1BA(Rx) 02C1BF(Wx) 02C1E4(Rx) 02C1E9(Wx) 02C1FF(Rx) 02C204(Wx) 02C208(Rx) 02C20D(Wx) 02C256(Rx) 02CCE7(Wx) 02CE02(Wx) 02CF72(Wx) 02D245(Wx) 02D379(Rx) 02D98C(Wx) 02F20B(Rx) 02F23E(Rx) 02F4DF(Rx) 02F599(Wx) 02F709(Rx) 02F710(Rx) 02F715(Wx) 034036(Rx) 03B130(Ry) 03B1B1(Ry) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 03FE34(Rx) 03FE65(Rx) 03FE79(Rx) 03FEF5(Wx) 
; ram_047B                              = $047B ; 002278(Wx) 006BA2(Wx) 006E28(Rx) 006E31(Wx) 007645(Wx) 0082BF(Rx) 0082C4(Wx) 008383(Wy) 0083D7(Wx) 0084F8(Rx) 0084FD(Wx) 00864A(Rx) 00864F(Wx) 008663(Rx) 008668(Wx) 008684(Rx) 008689(Wx) 00869D(Rx) 0086A2(Wx) 008914(Rx) 00899E(Rx) 0089A3(Wx) 0089D3(Rx) 0089D8(Wx) 008E71(Wx) 008E7A(Rx) 008E81(Wx) 00923F(Wx) 009270(Wx) 0093B8(Rx) 009449(Rx) 00945B(Wx) 00949F(Rx) 0094A2(Wy) 009614(Rx) 009626(Rx) 00962B(Wx) 009631(Rx) 009636(Wx) 00963C(Rx) 009B14(Rx) 00A7DE(Wx) 00AABB(Wx) 00AAEE(Rx) 00AAF3(Wx) 00AC6F(Ry) 00AC74(Wx) 00ADB4(Rx) 00ADB7(Wx) 00ADC2(Rx) 00ADC5(Wx) 013740(Rx) 013747(Rx) 01374E(Rx) 013753(Wx) 01375F(Rx) 013772(Rx) 013788(Wx) 013792(Rx) 013797(Wx) 01379F(Rx) 0137B0(Wx) 0137DD(Rx) 0137E4(Rx) 0137E9(Wx) 0137EF(Rx) 0137F4(Wx) 013906(Rx) 013916(Rx) 013933(Rx) 01393E(Wx) 01394F(Rx) 01395A(Wx) 01397E(Rx) 013989(Wx) 017C0F(Wx) 017CDC(Wy) 017DEE(Wx) 01BE46(Rx) 01BE4B(Wx) 023E40(Wx) 0240DC(Rx) 0240E1(Wx) 026F32(Wx) 026F8A(Rx) 026F8F(Wx) 027058(Wx) 02746B(Wy) 0274D1(Wx) 027B90(Wy) 028179(Rx) 02817E(Wx) 0281FE(Wx) 028BE5(Rx) 028BEA(Wx) 02C011(Rx) 02C025(Rx) 02C030(Wx) 02C1AE(Rx) 02C1B3(Wx) 02C1BA(Rx) 02C1BF(Wx) 02C1E4(Rx) 02C1E9(Wx) 02C1FF(Rx) 02C204(Wx) 02C208(Rx) 02C20D(Wx) 02CCE7(Wx) 02CE02(Wx) 02CF72(Wx) 02D245(Wx) 02D379(Rx) 02D98C(Wx) 02F20B(Rx) 02F23E(Rx) 02F4DF(Rx) 02F599(Wx) 02F709(Rx) 02F710(Rx) 02F715(Wx) 034036(Rx) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 03FE34(Rx) 03FE65(Rx) 03FE79(Rx) 03FEF5(Wx) 
; ram_047C                              = $047C ; 002278(Wx) 006BA2(Wx) 006E28(Rx) 006E31(Wx) 007645(Wx) 0082BF(Rx) 0082C4(Wx) 008383(Wy) 0083D7(Wx) 0084F8(Rx) 0084FD(Wx) 00864A(Rx) 00864F(Wx) 008663(Rx) 008668(Wx) 008684(Rx) 008689(Wx) 00869D(Rx) 0086A2(Wx) 008E71(Wx) 008E7A(Rx) 008E81(Wx) 00923F(Wx) 009270(Wx) 009449(Rx) 00945B(Wx) 00949F(Rx) 0094A2(Wy) 009614(Rx) 009626(Rx) 00962B(Wx) 009631(Rx) 009636(Wx) 00963C(Rx) 009B14(Rx) 00AABB(Wx) 00AAEE(Rx) 00AAF3(Wx) 013740(Rx) 013747(Rx) 01374E(Rx) 013753(Wx) 01375F(Rx) 013772(Rx) 013788(Wx) 013792(Rx) 013797(Wx) 013906(Rx) 013916(Rx) 013933(Rx) 01393E(Wx) 01394F(Rx) 01395A(Wx) 01397E(Rx) 013989(Wx) 017C0F(Wx) 017CDC(Wy) 017DEE(Wx) 023E40(Wx) 0240DC(Rx) 0240E1(Wx) 024364(Rx) 024369(Wx) 024371(Rx) 024378(Wx) 02447A(Rx) 02447F(Wx) 0248D3(Wx) 02612C(Wx) 026F32(Wx) 026F8A(Rx) 026F8F(Wx) 027058(Wx) 0271A1(Rx) 0271A4(Wx) 02746B(Wy) 0274D1(Wx) 0281FE(Wx) 02C011(Rx) 02C025(Rx) 02C030(Wx) 02C1AE(Rx) 02C1B3(Wx) 02C1BA(Rx) 02C1BF(Wx) 02C1FF(Rx) 02C204(Wx) 02C208(Rx) 02C20D(Wx) 02CE02(Wx) 02CF72(Wx) 02D245(Wx) 02D98C(Wx) 02F20B(Rx) 02F23E(Rx) 02F4DF(Rx) 02F599(Wx) 02F709(Rx) 02F710(Rx) 02F715(Wx) 034036(Rx) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 03FE34(Rx) 03FE65(Rx) 03FE79(Rx) 03FEF5(Wx) 
; ram_047D                              = $047D ; 002278(Wx) 00494B(Wx) 006BA2(Wx) 006E28(Rx) 006E31(Wx) 007645(Wx) 008684(Rx) 008689(Wx) 00869D(Rx) 0086A2(Wx) 00923F(Wx) 009270(Wx) 00AABB(Wx) 00AAEE(Rx) 00AAF3(Wx) 013740(Rx) 013747(Rx) 01374E(Rx) 013753(Wx) 01375F(Rx) 013772(Rx) 013788(Wx) 013792(Rx) 013797(Wx) 013916(Rx) 013933(Rx) 01393E(Wx) 01394F(Rx) 01395A(Wx) 01397E(Rx) 013989(Wx) 01BE46(Rx) 01BE4B(Wx) 0281DA(Wx) 0281FE(Wx) 0282C0(Wx) 02C011(Rx) 02C025(Rx) 02C030(Wx) 02C1BA(Rx) 02C1BF(Wx) 02C1FF(Rx) 02C204(Wx) 02C208(Rx) 02C20D(Wx) 02F20B(Rx) 02F23E(Rx) 02F4DF(Rx) 02F599(Wx) 034036(Rx) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 03FE34(Rx) 03FE65(Rx) 03FE79(Rx) 03FEF5(Wx) 
; ram_047E                              = $047E ; 002278(Wx) 00494B(Wx) 006BA2(Wx) 006E28(Rx) 006E31(Wx) 007645(Wx) 008684(Rx) 008689(Wx) 00869D(Rx) 0086A2(Wx) 00923F(Wx) 009270(Wx) 00AABB(Wx) 00AAEE(Rx) 00AAF3(Wx) 013740(Rx) 013747(Rx) 01374E(Rx) 013753(Wx) 01375F(Rx) 013772(Rx) 013788(Wx) 013792(Rx) 013797(Wx) 013916(Rx) 013933(Rx) 01393E(Wx) 01394F(Rx) 01395A(Wx) 01397E(Rx) 013989(Wx) 0281DA(Wx) 0281FE(Wx) 0282C0(Wx) 02C011(Rx) 02C025(Rx) 02C030(Wx) 02C1BA(Rx) 02C1BF(Wx) 02C1FF(Rx) 02C204(Wx) 02C208(Rx) 02C20D(Wx) 02F20B(Rx) 02F23E(Rx) 02F4DF(Rx) 02F599(Wx) 034036(Rx) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 03FE34(Rx) 03FE65(Rx) 03FE79(Rx) 03FEF5(Wx) 
; ram_047F                              = $047F ; 002278(Wx) 00494B(Wx) 006BA2(Wx) 006E28(Rx) 006E31(Wx) 007645(Wx) 008684(Rx) 008689(Wx) 00869D(Rx) 0086A2(Wx) 00923F(Wx) 009270(Wx) 00AABB(Wx) 00AAEE(Rx) 00AAF3(Wx) 013740(Rx) 013747(Rx) 01374E(Rx) 013753(Wx) 013792(Rx) 013797(Wx) 013916(Rx) 013933(Rx) 01393E(Wx) 01394F(Rx) 01395A(Wx) 01397E(Rx) 013989(Wx) 0281DA(Wx) 0281FE(Wx) 0282C0(Wx) 02C011(Rx) 02C025(Rx) 02C030(Wx) 02C1BA(Rx) 02C1BF(Wx) 02C1FF(Rx) 02C204(Wx) 02C208(Rx) 02C20D(Wx) 02F20B(Rx) 02F599(Wx) 034036(Rx) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 03FE34(Rx) 03FE65(Rx) 03FE79(Rx) 03FEF5(Wx) 
; ram_0480                              = $0480 ; 002278(Wx) 00494B(Wx) 0069B1(Wx) 006DC2(Wx) 006DD6(Wx) 007645(Wx) 008684(Rx) 008689(Wx) 00869D(Rx) 0086A2(Wx) 00923F(Wx) 009270(Wx) 00AABB(Wx) 00AAEE(Rx) 00AAF3(Wx) 013740(Rx) 013747(Rx) 01374E(Rx) 013753(Wx) 013792(Rx) 013797(Wx) 013916(Rx) 013933(Rx) 01393E(Wx) 01394F(Rx) 01395A(Wx) 01397E(Rx) 013989(Wx) 0281DA(Wx) 0281FE(Wx) 0282C0(Wx) 0284F0(Wx) 02C011(Rx) 02C025(Rx) 02C030(Wx) 02C1BA(Rx) 02C1BF(Wx) 02C1FF(Rx) 02C204(Wx) 02C208(Rx) 02C20D(Wx) 02F20B(Rx) 02F599(Wx) 034036(Rx) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 03FE34(Rx) 03FE65(Rx) 03FE79(Rx) 03FEF5(Wx) 
; ram_0481                              = $0481 ; 002278(Wx) 00494B(Wx) 007645(Wx) 013740(Rx) 013747(Rx) 01374E(Rx) 013753(Wx) 013792(Rx) 013797(Wx) 013916(Rx) 013933(Rx) 01393E(Wx) 01397E(Rx) 013989(Wx) 0281DA(Wx) 0281FE(Wx) 0282C0(Wx) 02C011(Rx) 02C025(Rx) 02C030(Wx) 02C1BA(Rx) 02C1BF(Wx) 02C1FF(Rx) 02C204(Wx) 02C208(Rx) 02C20D(Wx) 02F20B(Rx) 02F599(Wx) 034036(Rx) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 03FE34(Rx) 03FE65(Rx) 03FE79(Rx) 03FEF5(Wx) 
; ram_0482                              = $0482 ; 002278(Wx) 00494B(Wx) 007645(Wx) 013740(Rx) 013747(Rx) 01374E(Rx) 013753(Wx) 013792(Rx) 013797(Wx) 013916(Rx) 013933(Rx) 01393E(Wx) 01397E(Rx) 013989(Wx) 0281DA(Wx) 0281FE(Wx) 0282C0(Wx) 02C011(Rx) 02C025(Rx) 02C030(Wx) 02C1BA(Rx) 02C1BF(Wx) 02C1FF(Rx) 02C204(Wx) 02C208(Rx) 02C20D(Wx) 02F20B(Rx) 02F599(Wx) 034036(Rx) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 03FE34(Rx) 03FE65(Rx) 03FE79(Rx) 03FEF5(Wx) 
; ram_0483                              = $0483 ; 002278(Wx) 007645(Wx) 034036(Rx) 0341AD(Rx) 03BCDF(W)  03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FA25(Wx) 
; ram_0484                              = $0484 ; 002278(Wx) 007645(Wx) 0284F0(Wx) 034036(Rx) 038CBF(Wx) 03AEEA(Wx) 03B8BB(Wx) 03B9A0(Wx) 03B9BB(Wx) 03BA4E(Wx) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 
; ram_0485                              = $0485 ; 002278(Wx) 007645(Wx) 0284F0(Wx) 034036(Rx) 038CBF(Wx) 03AEEA(Wx) 03B8BB(Wx) 03B9A0(Wx) 03B9BB(Wx) 03BA4E(Wx) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 03FC42(Rx) 
; ram_0486                              = $0486 ; 002278(Wx) 007645(Wx) 0284F0(Wx) 034036(Rx) 038CBF(Wx) 03AEEA(Wx) 03B8BB(Wx) 03B9A0(Wx) 03B9BB(Wx) 03BA4E(Wx) 03E03F(Wi) 03E817(Wx) 03E845(Wx) 
; ram_0487                              = $0487 ; 002278(Wx) 02F627(Wx) 034036(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_0488                              = $0488 ; 002278(Wx) 034036(Rx) 0341AD(Rx) 03E03F(Wi) 03E845(Wx) 03FB9E(W)  
; ram_0489                              = $0489 ; 002278(Wx) 034036(Rx) 0341AD(Rx) 03E03F(Wi) 03E845(Wx) 03FBA1(W)  
; ram_048A                              = $048A ; 00117D(W)  002278(Wx) 009CA7(Rx) 009CBE(Wx) 009CDA(Wx) 00AFAF(Rx) 00AFD7(Wx) 00B0A6(Rx) 00B0D2(Rx) 00B0D9(Wx) 00B135(Wx) 00B17E(Rx) 00B2AC(Wx) 034036(Rx) 038DE6(W)  03E03F(Wi) 03E845(Wx) 
; ram_048B                              = $048B ; 001180(W)  002278(Wx) 009CA7(Rx) 009CDA(Wx) 00AFAF(Rx) 00AFD7(Wx) 00B0A6(Rx) 00B0D2(Rx) 00B0D9(Wx) 00B135(Wx) 00B17E(Rx) 00B2AC(Wx) 034036(Rx) 03E03F(Wi) 03E845(Wx) 



; animation type
; see con_obj_type
ram_obj_type                            = $048C ; 000B5C(W)  001627(W)  00226C(Wx) 002A81(W)  0041F3(R)  006785(W)  006B8C(Wx) 006E51(Wx) 006E5C(Wx) 006E7B(Wx) 0071C9(Wx) 007648(Wx) 02B589(Wx) 034089(Rx) 0341EC(Rx) 038ADB(W)  03BCF7(Ry) 03E03F(Wi) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
    ram_plr_type                            = $048C ; 
; ram_048D                              = $048D ; 00226C(Wx) 0023DA(Wx) 00289F(Wx) 0037DB(Wx) 0038C0(Wx) 005693(Wx) 005797(Wx) 005C98(Wx) 005DC4(Wx) 005E0D(Wx) 0066CD(W)  00674D(W)  006B8C(Wx) 006E51(Wx) 006E5C(Wx) 006E7B(Wx) 0071C9(Wx) 007648(Wx) 009502(Wx) 009755(Rx) 00AE74(Wx) 013AD8(Wx) 017C23(Wx) 024752(Wx) 025527(Rx) 025C56(Wx) 0266A4(Wy) 026998(Wx) 026F4E(Wx) 027358(Wx) 02764B(Wx) 027BE0(Wx) 028DC3(Wx) 02B52D(Wx) 02B589(Wx) 02B9BE(Wx) 02C2F7(Wx) 02C337(Wx) 02C388(Wx) 02C3B0(Wx) 02C3C1(Wx) 02C875(Wx) 02DD13(Wx) 02F396(Rx) 02F547(Wx) 03249E(R)  032818(Wx) 034089(Rx) 0341EC(Rx) 03BCF7(Ry) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_048E                              = $048E ; 00226C(Wx) 0023DA(Wx) 00289F(Wx) 0037DB(Wx) 0038C0(Wx) 0041F6(Wx) 005693(Wx) 005C98(Wx) 005E0D(Wx) 006B8C(Wx) 006E51(Wx) 006E5C(Wx) 006E7B(Wx) 00742D(Wx) 007648(Wx) 0092A2(Wx) 009502(Wx) 009755(Rx) 00AE74(Wx) 013AD8(Wx) 017C23(Wx) 024752(Wx) 025527(Rx) 026998(Wx) 026E1D(Wx) 026EBC(Wy) 027051(Wx) 027100(Wx) 027358(Wx) 02760B(Wy) 027BE0(Wx) 027BE9(Wy) 028DC3(Wx) 02B589(Wx) 02B9BE(Wx) 02C2F7(Wx) 02C337(Wx) 02C388(Wx) 02C3B0(Wx) 02C3C1(Wx) 02C875(Wx) 02DAD0(Wy) 02DD13(Wx) 02F396(Rx) 02F547(Wx) 0324A1(Wx) 033304(Wx) 034089(Rx) 0341EC(Rx) 03B3C2(Wx) 03B6BC(Wx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_048F                              = $048F ; 00226C(Wx) 00246E(Wx) 00289F(Wx) 0037DB(Wx) 0038C0(Wx) 004245(Wx) 005693(Wx) 005797(Wx) 005C98(Wx) 005E0D(Wx) 006B8C(Wx) 006E51(Wx) 006E5C(Wx) 006E7B(Wx) 00742D(Wx) 007648(Wx) 0092A2(Wx) 009502(Wx) 009755(Rx) 00AE74(Wx) 00C291(Wy) 017C23(Wx) 024752(Wx) 025527(Rx) 025C56(Wx) 0266A4(Wy) 026998(Wx) 026E1D(Wx) 027051(Wx) 027100(Wx) 027358(Wx) 02760B(Wy) 027BE9(Wy) 028DC3(Wx) 02B589(Wx) 02B9BE(Wx) 02C2F7(Wx) 02C337(Wx) 02C388(Wx) 02C3B0(Wx) 02C3C1(Wx) 02DAD0(Wy) 02DD13(Wx) 02F396(Rx) 02F547(Wx) 0324A1(Wx) 033038(Wx) 033304(Wx) 034089(Rx) 0341EC(Rx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_0490                              = $0490 ; 00226C(Wx) 00246E(Wx) 00289F(Wx) 0037DB(Wx) 0038C0(Wx) 00426A(Wx) 005693(Wx) 005C98(Wx) 005E0D(Wx) 006B8C(Wx) 006E51(Wx) 006E5C(Wx) 006E7B(Wx) 00742D(Wx) 007648(Wx) 0092A2(Wx) 009502(Wx) 009755(Rx) 00AE74(Wx) 00C291(Wy) 013AD8(Wx) 017C23(Wx) 024752(Wx) 025527(Rx) 025C56(Wx) 0266A4(Wy) 026998(Wx) 026E1D(Wx) 027051(Wx) 027100(Wx) 027358(Wx) 02760B(Wy) 027BE9(Wy) 028DC3(Wx) 02B9BE(Wx) 02C2F7(Wx) 02C337(Wx) 02C388(Wx) 02C3B0(Wx) 02C3C1(Wx) 02DAD0(Wy) 02DD13(Wx) 02F396(Rx) 02F547(Wx) 0324A1(Wx) 033038(Wx) 033304(Wx) 034089(Rx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_0491                              = $0491 ; 00226C(Wx) 00246E(Wx) 00289F(Wx) 0037DB(Wx) 0038C0(Wx) 005693(Wx) 005797(Wx) 005E0D(Wx) 006B8C(Wx) 006E51(Wx) 006E5C(Wx) 006E7B(Wx) 00742D(Wx) 007648(Wx) 007967(Wx) 0092A2(Wx) 009502(Wx) 009755(Rx) 00AE74(Wx) 00C291(Wy) 017C23(Wx) 017D08(Wx) 024752(Wx) 025527(Rx) 025C56(Wx) 0266A4(Wy) 026998(Wx) 026E1D(Wx) 027051(Wx) 027100(Wx) 027358(Wx) 02760B(Wy) 027BE9(Wy) 028DC3(Wx) 02B9BE(Wx) 02C2F7(Wx) 02C337(Wx) 02C388(Wx) 02C3B0(Wx) 02C3C1(Wx) 02DAD0(Wy) 02DD13(Wx) 02F396(Rx) 02F547(Wx) 033304(Wx) 034089(Rx) 03BCFA(Wx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_0492                              = $0492 ; 00226C(Wx) 00246E(Wx) 00289F(Wx) 005693(Wx) 005797(Wx) 006B8C(Wx) 006E51(Wx) 006E5C(Wx) 006E7B(Wx) 00742D(Wx) 007648(Wx) 007967(Wx) 0092A2(Wx) 009502(Wx) 009755(Rx) 00AE74(Wx) 00C291(Wy) 017D08(Wx) 024752(Wx) 025527(Rx) 0266A4(Wy) 026998(Wx) 026E1D(Wx) 027051(Wx) 027100(Wx) 027358(Wx) 02760B(Wy) 027BE9(Wy) 028DC3(Wx) 02B9BE(Wx) 02C2F7(Wx) 02C337(Wx) 02C388(Wx) 02C3B0(Wx) 02C3C1(Wx) 02DAD0(Wy) 02DD13(Wx) 02F396(Rx) 033304(Wx) 034089(Rx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_0493                              = $0493 ; 00226C(Wx) 00289F(Wx) 005693(Wx) 005797(Wx) 006B8C(Wx) 006E51(Wx) 006E5C(Wx) 006E7B(Wx) 00742D(Wx) 007648(Wx) 007967(Wx) 0092A2(Wx) 009502(Wx) 009755(Rx) 00AE74(Wx) 00C291(Wy) 017C23(Wx) 017D08(Wx) 024752(Wx) 025527(Rx) 025C56(Wx) 0266A4(Wy) 026998(Wx) 026E1D(Wx) 027051(Wx) 0274C7(Wx) 02760B(Wy) 02B9BE(Wx) 02C337(Wx) 02C388(Wx) 02C3B0(Wx) 02C3C1(Wx) 02DAD0(Wy) 02DD13(Wx) 02F396(Rx) 033304(Wx) 034089(Rx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_0494                              = $0494 ; 00226C(Wx) 005693(Wx) 005797(Wx) 006B8C(Wx) 006E5C(Wx) 006E7B(Wx) 007648(Wx) 007967(Wx) 0092A2(Wx) 009502(Wx) 009755(Rx) 00AE74(Wx) 00C291(Wy) 013AD8(Wx) 017D08(Wx) 024752(Wx) 025527(Rx) 025C56(Wx) 0266A4(Wy) 026998(Wx) 026E1D(Wx) 027051(Wx) 0274C7(Wx) 028DC3(Wx) 02B9BE(Wx) 02C2F7(Wx) 02C337(Wx) 02C388(Wx) 02C3B0(Wx) 02C3C1(Wx) 02DD13(Wx) 02F396(Rx) 034089(Rx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_0495                              = $0495 ; 00226C(Wx) 005693(Wx) 005797(Wx) 006B8C(Wx) 006E5C(Wx) 006E7B(Wx) 007648(Wx) 007967(Wx) 0092A2(Wx) 009502(Wx) 009755(Rx) 00AE74(Wx) 017C23(Wx) 017D08(Wx) 024752(Wx) 025527(Rx) 025C56(Wx) 0266A4(Wy) 026E1D(Wx) 027051(Wx) 0274C7(Wx) 02B9BE(Wx) 02C3C1(Wx) 02CCD2(Wx) 02D997(Wx) 02F396(Rx) 034089(Rx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_0496                              = $0496 ; 00226C(Wx) 005693(Wx) 005797(Wx) 006B8C(Wx) 006E5C(Wx) 006E7B(Wx) 00742D(Wx) 007648(Wx) 007967(Wx) 0092A2(Wx) 009502(Wx) 00AE74(Wx) 017C23(Wx) 017D08(Wx) 024752(Wx) 025527(Rx) 025C56(Wx) 0266A4(Wy) 026E1D(Wx) 027051(Wx) 0274C7(Wx) 02B9BE(Wx) 02C2F7(Wx) 02C337(Wx) 02C388(Wx) 02C3C1(Wx) 02CCD2(Wx) 02D997(Wx) 02F396(Rx) 034089(Rx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_0497                              = $0497 ; 00226C(Wx) 005693(Wx) 005797(Wx) 006B8C(Wx) 006E5C(Wx) 006E7B(Wx) 007648(Wx) 007967(Wx) 0092A2(Wx) 009502(Wx) 009755(Rx) 00AE74(Wx) 017C23(Wx) 017D08(Wx) 024752(Wx) 025C56(Wx) 0266A4(Wy) 027051(Wx) 0274C7(Wx) 02C337(Wx) 02C388(Wx) 02C3C1(Wx) 02CCD2(Wx) 02D997(Wx) 02F396(Rx) 034089(Rx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_0498                              = $0498 ; 00226C(Wx) 005693(Wx) 006B8C(Wx) 006E5C(Wx) 006E7B(Wx) 00742D(Wx) 007648(Wx) 007967(Wx) 0092A2(Wx) 009502(Wx) 017C23(Wx) 017D08(Wx) 024752(Wx) 0266A4(Wy) 027051(Wx) 0274C7(Wx) 02C3C1(Wx) 02D997(Wx) 02F396(Rx) 034089(Rx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_0499                              = $0499 ; 00226C(Wx) 006B8C(Wx) 006E5C(Wx) 006E7B(Wx) 00742D(Wx) 007648(Wx) 007967(Wx) 0092A2(Wx) 009502(Wx) 02C337(Wx) 02C388(Wx) 02F396(Rx) 034089(Rx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_049A                              = $049A ; 00226C(Wx) 006B8C(Wx) 006E5C(Wx) 006E7B(Wx) 007648(Wx) 0092A2(Wx) 009502(Wx) 02C337(Wx) 02C388(Wx) 02F396(Rx) 034089(Rx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_049B                              = $049B ; 00226C(Wx) 006B8C(Wx) 006E5C(Wx) 006E7B(Wx) 00742D(Wx) 007648(Wx) 0092A2(Wx) 009502(Wx) 02C337(Wx) 02C388(Wx) 034089(Rx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_049C                              = $049C ; 00226C(Wx) 0069C5(Wx) 006D8E(Wx) 007648(Wx) 0092A2(Wx) 009502(Wx) 02C337(Wx) 02C388(Wx) 034089(Rx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_049D                              = $049D ; 00226C(Wx) 007648(Wx) 02C337(Wx) 02C388(Wx) 034089(Rx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_049E                              = $049E ; 00226C(Wx) 007648(Wx) 02C337(Wx) 02C388(Wx) 034089(Rx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_049F                              = $049F ; 00226C(Wx) 00742D(Wx) 007648(Wx) 034089(Rx) 0341EC(Rx) 03BCFA(Wx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_04A0                              = $04A0 ; 00226C(Wx) 007648(Wx) 034089(Rx) 03B3C2(Wx) 03B6BC(Wx) 03B6CE(Wx) 03B769(Wx) 03B996(Wx) 03B9B1(Wx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_04A1                              = $04A1 ; 00226C(Wx) 007648(Wx) 034089(Rx) 03B769(Wx) 03B996(Wx) 03B9B1(Wx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_04A2                              = $04A2 ; 00226C(Wx) 007648(Wx) 034089(Rx) 03B996(Wx) 03B9B1(Wx) 03E03F(Wi) 03E81A(Wx) 03E845(Wx) 03EF6C(Wx) 03EF8B(Rx) 
; ram_04A3                              = $04A3 ; 00226C(Wx) 02F631(Wx) 034089(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_04A4                              = $04A4 ; 000EB7(W)  00226C(Wx) 034089(Rx) 0341EC(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_04A5                              = $04A5 ; 000E84(W)  00226C(Wx) 034089(Rx) 0341EC(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_04A6                              = $04A6 ; 00226C(Wx) 009D08(Wx) 00B04C(Wx) 00B2A7(Wx) 034089(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_04A7                              = $04A7 ; 00226C(Wx) 009D08(Wx) 00B04C(Wx) 00B2A7(Wx) 034089(Rx) 03E03F(Wi) 03E845(Wx) 



; 00 = facing right
; 01 = facing left
ram_obj_facing                          = $04A8 ; 0012D0(W)  00130D(R)  00134C(R)  00139B(R)  0013CA(R)  00227B(Wx) 002A36(R)  002AAD(W)  002B77(W)  002BB6(W)  002BF1(W)  002C0E(W)  002CCC(W)  002CE4(W)  0041F9(R)  006689(W)  00764B(Wx) 008A38(R)  00B1BD(R)  013254(R)  0133B9(W)  01F522(W)  02873D(R)  0287AD(R)  0287EC(R)  028974(R)  028A12(R)  02B584(Wx) 02C4F4(R)  02C548(R)  02F451(R)  0340AA(Rx) 03825A(W)  038265(W)  038DC0(R)  0395E3(W)  039618(W)  039656(Wx) 039661(Wx) 0396CC(W)  039708(W)  039769(Rx) 0399C5(W)  0399E7(W)  039BA3(W)  039BB1(W)  039BB6(R)  039D47(R)  039D97(W)  039DCE(W)  039F79(W)  039F99(W)  03A0CB(R)  03A1AF(R)  03A2BF(R)  03A2C4(W)  03A409(W)  03A41D(W)  03A52F(W)  03A88D(W)  03AD3D(W)  03AF9F(Ry) 03B162(R)  03B3B6(Ry) 03B4B6(R)  03B513(Ry) 03B5DA(Ry) 03B64B(Ry) 03B6D6(R)  03B771(R)  03B78C(R)  03BB34(Rx) 03BCAB(Ry) 03BCFD(Ry) 03E03F(Wi) 03E845(Wx) 03FB42(R)  
    ram_plr_facing                          = $04A8 ; 
; ram_04A9                              = $04A9 ; 00227B(Wx) 0023F8(Wx) 0028A4(Wx) 005A8C(Wx) 005ABE(Wx) 005ADD(Wx) 005AE9(Wx) 005B4E(Rx) 005B53(Wx) 005B91(Rx) 005B96(Wx) 005C5E(Wx) 005C6C(Wx) 006743(W)  00764B(Wx) 008508(Wx) 008990(Wx) 008E86(Wx) 008E92(Wx) 008ED9(Wx) 00C1B8(Wx) 00C1C5(Wx) 00C2A6(Rx) 00C3F0(Rx) 00C3F3(Wy) 00CB36(Wx) 00CB94(Wx) 00CBA1(Wx) 00CBB9(Rx) 00CBC3(Rx) 00CBC6(Wy) 00CD6A(Wy) 00CDFD(Wx) 00CF0F(Rx) 00CFB3(Rx) 00CFEF(Rx) 00D025(Rx) 00D0A1(Wx) 00D0A8(Wx) 00D0B0(Rx) 00D1F6(Rx) 00D1FB(Wx) 00D209(Rx) 00D31F(Rx) 00D35C(Wx) 00D441(Rx) 00D4A8(Wx) 00D63A(Wx) 00D6F0(Wy) 00D72D(Wy) 00D8AA(Rx) 00D912(Rx) 00DC0D(Wx) 00DC1A(Wx) 013A16(Rx) 01BE43(Wx) 02464D(Rx) 024655(Wx) 02553C(Rx) 025696(Rx) 025C47(Wx) 025DD0(Rx) 025F40(Rx) 026170(Wx) 0261C7(Ry) 0262C8(Rx) 02630D(Rx) 026312(Wx) 02633B(Rx) 0263AB(Wx) 0263F7(Wx) 026426(Wx) 0264F9(Wx) 02656F(Ry) 02674C(Rx) 02676B(Rx) 0267B4(Rx) 0267F0(Rx) 0267F7(Wx) 02696D(Wx) 026A15(Wx) 026BD2(Wx) 026C23(Ry) 026CFD(Wx) 026F37(Wx) 027035(Wx) 027512(Wx) 0278A1(Wx) 028D1D(Wx) 02B584(Wx) 02B9DA(Wx) 02C24C(Wx) 02C25D(Rx) 02C262(Wx) 02C325(Wx) 02C3EC(Rx) 02C4E2(Rx) 02C4E7(Wx) 02C4F7(Rx) 02C54B(Rx) 02C96E(Rx) 02C973(Wx) 02CA95(Rx) 02CAEF(Wx) 02CB37(Wx) 02CBEC(Rx) 02CC3A(Wx) 02CE0C(Wx) 02CE97(Rx) 02CEA2(Rx) 02D1DA(Rx) 02D209(Rx) 02D389(Rx) 02D38E(Wx) 02D3B8(Rx) 02D464(Rx) 02D6FF(Rx) 02D734(Rx) 02D771(Rx) 02D887(Rx) 02D929(Rx) 02D9EF(Rx) 02DA00(Rx) 02DA05(Wx) 02DA38(Rx) 02F368(Rx) 02F3E9(Rx) 02F7B8(Rx) 0325BB(Wx) 032872(Wx) 032A51(Rx) 032A58(Wx) 032A5B(Rx) 032AF7(Rx) 0340AA(Rx) 0378BA(Wx) 039656(Wx) 039661(Wx) 039769(Rx) 03AF9F(Ry) 03B3B6(Ry) 03B513(Ry) 03B5DA(Ry) 03B64B(Ry) 03BCAB(Ry) 03BCFD(Ry) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04AA                              = $04AA ; 00227B(Wx) 0023F8(Wx) 0028A4(Wx) 0041FC(Wx) 005A8C(Wx) 005ABE(Wx) 005ADD(Wx) 005AE9(Wx) 005C5E(Wx) 005C6C(Wx) 005D06(Wx) 00764B(Wx) 008508(Wx) 008986(Wx) 008990(Wx) 008E86(Wx) 008E92(Wx) 009275(Wx) 009281(Wx) 00C1B8(Wx) 00C1C5(Wx) 00C2A6(Rx) 00C3F0(Rx) 00CB36(Wx) 00CB94(Wx) 00CBB9(Rx) 00CBC3(Rx) 00CCFC(Wx) 00CD0E(Wx) 00CD43(Rx) 00CD67(Rx) 00D29A(Rx) 00D2D9(Rx) 00D63A(Wx) 00D6F0(Wy) 00D72D(Wy) 00D8AA(Rx) 00D912(Rx) 00DC9D(Wx) 013A16(Rx) 01BE43(Wx) 024655(Wx) 02553C(Rx) 025DD3(Wy) 0264F9(Wx) 02656F(Ry) 02674C(Rx) 02676B(Rx) 0267B4(Rx) 0267F0(Rx) 0267F7(Wx) 026A15(Wx) 026BD2(Wx) 026F37(Wx) 027219(Wx) 027CC1(Wx) 027E8D(Wx) 027E9A(Wx) 02B584(Wx) 02B9DA(Wx) 02C24C(Wx) 02C25D(Rx) 02C262(Wx) 02C325(Wx) 02C3EC(Rx) 02C4F7(Rx) 02C54B(Rx) 02C96E(Rx) 02C973(Wx) 02CA95(Rx) 02CAEF(Wx) 02CB37(Wx) 02CBEC(Rx) 02CC3A(Wx) 02CE0C(Wx) 02CE97(Rx) 02CEA2(Rx) 02D1DA(Rx) 02D209(Rx) 02D389(Rx) 02D38E(Wx) 02D3B8(Rx) 02D464(Rx) 02D6FF(Rx) 02D734(Rx) 02D771(Rx) 02D887(Rx) 02D929(Rx) 02D9EF(Rx) 02DA00(Rx) 02DA05(Wx) 02DAC5(Wy) 02DC9F(Wx) 02F3E9(Rx) 02F7B8(Rx) 0340AA(Rx) 0378BA(Wx) 03AFD8(Wx) 03B3D6(Wx) 03B42A(Rx) 03B526(Wx) 03B60F(Wx) 03B699(Wx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04AB                              = $04AB ; 00227B(Wx) 00247D(Wx) 0028A4(Wx) 005A8C(Wx) 005ABE(Wx) 005ADD(Wx) 005AE9(Wx) 005C5E(Wx) 005C6C(Wx) 00764B(Wx) 008508(Wx) 008990(Wx) 008E86(Wx) 008E92(Wx) 009275(Wx) 009281(Wx) 00C2A9(Wy) 00C3F3(Wy) 00C49A(Rx) 00CBC6(Wy) 00CD6A(Wy) 00D63A(Wx) 00D6F0(Wy) 00D912(Rx) 00DC9D(Wx) 013A16(Rx) 01BE43(Wx) 025C47(Wx) 025ED6(Wy) 026A15(Wx) 026BD2(Wx) 026F37(Wx) 027219(Wx) 027CC1(Wx) 02B584(Wx) 02B9DA(Wx) 02C24C(Wx) 02C25D(Rx) 02C262(Wx) 02C325(Wx) 02C3EC(Rx) 02C4E2(Rx) 02C4E7(Wx) 02C4F7(Rx) 02C54B(Rx) 02C96E(Rx) 02C973(Wx) 02CA95(Rx) 02CAEF(Wx) 02CB37(Wx) 02CBEC(Rx) 02CC3A(Wx) 02CE0C(Wx) 02CE97(Rx) 02CEA2(Rx) 02D1DA(Rx) 02D209(Rx) 02D389(Rx) 02D38E(Wx) 02D3B8(Rx) 02D6FF(Rx) 02D771(Rx) 02D887(Rx) 02D9EF(Rx) 02DA00(Rx) 02DA05(Wx) 02DAC5(Wy) 02DC9F(Wx) 02F3E9(Rx) 02F7B8(Rx) 0340AA(Rx) 03B526(Wx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04AC                              = $04AC ; 00227B(Wx) 00247D(Wx) 0028A4(Wx) 005A8C(Wx) 005ABE(Wx) 005ADD(Wx) 005AE9(Wx) 005B4E(Rx) 005B53(Wx) 005B91(Rx) 005B96(Wx) 005C5E(Wx) 005C6C(Wx) 00764B(Wx) 008508(Wx) 008990(Wx) 008E86(Wx) 008E92(Wx) 009275(Wx) 009281(Wx) 00C2A9(Wy) 00C3F3(Wy) 00C49A(Rx) 00CBC6(Wy) 00CD6A(Wy) 00D5D4(Wx) 00D6D5(Rx) 00D6ED(Rx) 00D72A(Rx) 00D7DE(Rx) 00D84C(Wx) 00D85C(Rx) 00D861(Wx) 00D86D(Wx) 00DC9D(Wx) 013A16(Rx) 01BE43(Wx) 02553C(Rx) 025C47(Wx) 025ED6(Wy) 026A15(Wx) 026BD2(Wx) 026F37(Wx) 027219(Wx) 027CC1(Wx) 02B9DA(Wx) 02C24C(Wx) 02C25D(Rx) 02C262(Wx) 02C325(Wx) 02C3EC(Rx) 02C4F7(Rx) 02C96E(Rx) 02C973(Wx) 02CA95(Rx) 02CAEF(Wx) 02CB10(Rx) 02CE0C(Wx) 02CE97(Rx) 02CEA2(Rx) 02D389(Rx) 02D38E(Wx) 02D3B8(Rx) 02D6FF(Rx) 02D734(Rx) 02D771(Rx) 02D887(Rx) 02D9EF(Rx) 02DA00(Rx) 02DA05(Wx) 02DAC5(Wy) 02DC9F(Wx) 02F3E9(Rx) 02F7B8(Rx) 0340AA(Rx) 0378BA(Wx) 03B526(Wx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04AD                              = $04AD ; 00227B(Wx) 00247D(Wx) 0028A4(Wx) 00764B(Wx) 008508(Wx) 008990(Wx) 008E86(Wx) 008E92(Wx) 009275(Wx) 009281(Wx) 00C2A9(Wy) 00C3F3(Wy) 00C49A(Rx) 00CBC6(Wy) 00D6F0(Wy) 00D912(Rx) 00DC9D(Wx) 013A16(Rx) 017D0E(Wx) 01BE43(Wx) 025C47(Wx) 025ED6(Wy) 026A15(Wx) 026BD2(Wx) 026F37(Wx) 027219(Wx) 027CC1(Wx) 02B9DA(Wx) 02C24C(Wx) 02C325(Wx) 02C3EC(Rx) 02C96E(Rx) 02C973(Wx) 02CA95(Rx) 02CAEF(Wx) 02CB10(Rx) 02CE0C(Wx) 02CE97(Rx) 02CEA2(Rx) 02D6C5(Rx) 02D6FF(Rx) 02D734(Rx) 02D771(Rx) 02D887(Rx) 02DAC5(Wy) 02DC9F(Wx) 02F7B8(Rx) 0340AA(Rx) 0378BA(Wx) 03BD00(Wx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04AE                              = $04AE ; 00227B(Wx) 00247D(Wx) 0028A4(Wx) 00764B(Wx) 008508(Wx) 008990(Wx) 008E86(Wx) 008E92(Wx) 008ED9(Wx) 009275(Wx) 009281(Wx) 00C2A9(Wy) 00C3F3(Wy) 00C49A(Rx) 00CBC6(Wy) 00D6F0(Wy) 00D72D(Wy) 00D8AA(Rx) 00D912(Rx) 013A16(Rx) 017D0E(Wx) 01BE43(Wx) 026A15(Wx) 026BD2(Wx) 026F37(Wx) 027219(Wx) 027CC1(Wx) 02B9DA(Wx) 02C24C(Wx) 02C25D(Rx) 02C262(Wx) 02C325(Wx) 02C3EC(Rx) 02C96E(Rx) 02C973(Wx) 02CB10(Rx) 02CE0C(Wx) 02CE97(Rx) 02CEA2(Rx) 02D771(Rx) 02D887(Rx) 02DAC5(Wy) 02DC9F(Wx) 02F7B8(Rx) 0340AA(Rx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04AF                              = $04AF ; 00227B(Wx) 0028A4(Wx) 00764B(Wx) 008508(Wx) 008990(Wx) 008E86(Wx) 008E92(Wx) 009275(Wx) 009281(Wx) 00C2A9(Wy) 00C3F3(Wy) 00C49A(Rx) 013A16(Rx) 017D0E(Wx) 01BE43(Wx) 025496(Rx) 025C47(Wx) 026A15(Wx) 026F37(Wx) 027219(Wx) 02B9DA(Wx) 02C24C(Wx) 02C325(Wx) 02C3EC(Rx) 02CA95(Rx) 02CAEF(Wx) 02D887(Rx) 02D9EF(Rx) 02DAC5(Wy) 02DC9F(Wx) 02F7B8(Rx) 0340AA(Rx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04B0                              = $04B0 ; 00227B(Wx) 00764B(Wx) 008508(Wx) 008990(Wx) 008E86(Wx) 008E92(Wx) 009275(Wx) 009281(Wx) 00C2A9(Wy) 00C49A(Rx) 00DC9D(Wx) 017D0E(Wx) 01BE43(Wx) 025C47(Wx) 026A15(Wx) 026F37(Wx) 027219(Wx) 028D56(Wx) 02B9DA(Wx) 02C24C(Wx) 02C325(Wx) 02C3EC(Rx) 02D734(Rx) 02D771(Rx) 02D9EF(Rx) 02DA00(Rx) 02DA05(Wx) 02DE2E(R)  02F7B8(Rx) 0340AA(Rx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04B1                              = $04B1 ; 00227B(Wx) 00764B(Wx) 008508(Wx) 008E86(Wx) 008E92(Wx) 009275(Wx) 009281(Wx) 017D0E(Wx) 025C47(Wx) 026F37(Wx) 027219(Wx) 02B9DA(Wx) 02C24C(Wx) 02C3EC(Rx) 02CCD7(Wx) 02CE0C(Wx) 02D9EF(Rx) 02DE33(Wx) 02F7B8(Rx) 0340AA(Rx) 0378BA(Wx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04B2                              = $04B2 ; 00227B(Wx) 00764B(Wx) 008508(Wx) 008E86(Wx) 008E92(Wx) 009275(Wx) 009281(Wx) 017D0E(Wx) 01BE43(Wx) 025C47(Wx) 026F37(Wx) 027219(Wx) 02B9DA(Wx) 02C24C(Wx) 02C325(Wx) 02C3EC(Rx) 02CBEC(Rx) 02CCD7(Wx) 02CE0C(Wx) 02D389(Rx) 02D38E(Wx) 02D3B8(Rx) 02D734(Rx) 02D771(Rx) 02F3E9(Rx) 02F7B8(Rx) 0340AA(Rx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04B3                              = $04B3 ; 00227B(Wx) 00764B(Wx) 008508(Wx) 008990(Wx) 008E86(Wx) 008E92(Wx) 009275(Wx) 009281(Wx) 017D0E(Wx) 01BE43(Wx) 025C47(Wx) 026F37(Wx) 027219(Wx) 02C24C(Wx) 02C325(Wx) 02C3EC(Rx) 02CBEC(Rx) 02CCD7(Wx) 02CE0C(Wx) 02D3B8(Rx) 02F3E9(Rx) 02F7B8(Rx) 0340AA(Rx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04B4                              = $04B4 ; 00227B(Wx) 00764B(Wx) 008508(Wx) 008E86(Wx) 008E92(Wx) 009275(Wx) 009281(Wx) 017D0E(Wx) 026F37(Wx) 027219(Wx) 02C24C(Wx) 02C3EC(Rx) 02CE0C(Wx) 0340AA(Rx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04B5                              = $04B5 ; 00227B(Wx) 00764B(Wx) 009275(Wx) 009281(Wx) 01BE43(Wx) 02C24C(Wx) 02C325(Wx) 02C3EC(Rx) 0340AA(Rx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04B6                              = $04B6 ; 00227B(Wx) 00764B(Wx) 009275(Wx) 009281(Wx) 02C24C(Wx) 02C325(Wx) 02C3EC(Rx) 0340AA(Rx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04B7                              = $04B7 ; 00227B(Wx) 00764B(Wx) 009275(Wx) 009281(Wx) 02C325(Wx) 0340AA(Rx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04B8                              = $04B8 ; 00227B(Wx) 00764B(Wx) 009275(Wx) 009281(Wx) 02C325(Wx) 0340AA(Rx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04B9                              = $04B9 ; 00227B(Wx) 00764B(Wx) 02C325(Wx) 0340AA(Rx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04BA                              = $04BA ; 00227B(Wx) 00764B(Wx) 02C325(Wx) 0340AA(Rx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04BB                              = $04BB ; 0013A9(Wx) 00227B(Wx) 00764B(Wx) 0340AA(Rx) 03BD00(Wx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 03FA3F(Wx) 
; ram_04BC                              = $04BC ; 00227B(Wx) 00764B(Wx) 0340AA(Rx) 03AFD8(Wx) 03B172(Wx) 03B3D6(Wx) 03B42A(Rx) 03B4D5(Wx) 03B526(Wx) 03B60F(Wx) 03B699(Wx) 03B6D9(Wx) 03B78F(Wx) 03B866(Wx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04BD                              = $04BD ; 00227B(Wx) 00764B(Wx) 0340AA(Rx) 03AFD8(Wx) 03B172(Wx) 03B526(Wx) 03B78F(Wx) 03B866(Wx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04BE                              = $04BE ; 00227B(Wx) 00764B(Wx) 0340AA(Rx) 03AFD8(Wx) 03B172(Wx) 03B526(Wx) 03B866(Wx) 03E03F(Wi) 03E81D(Wx) 03E845(Wx) 
; ram_04BF                              = $04BF ; 00227B(Wx) 0340AA(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_04C0                              = $04C0 ; 000ED5(W)  00227B(Wx) 0340AA(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_04C1                              = $04C1 ; 000E8D(W)  00227B(Wx) 0340AA(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_04C2                              = $04C2 ; 00227B(Wx) 009D12(Wx) 0340AA(Rx) 03E03F(Wi) 03E845(Wx) 
; ram_04C3                              = $04C3 ; 00227B(Wx) 009D12(Wx) 0340AA(Rx) 03E03F(Wi) 03E845(Wx) 



; fractional
ram_obj_pos_X_fr                        = $04C4 ; 001351(R)  001357(W)  001363(R)  001369(W)  002B0E(R)  002B15(W)  002BDB(R)  002BE2(W)  002D26(W)  038772(R)  038779(W)  039B02(W)  03B872(R)  03E03F(Wi) 03E845(Wx) 
    ram_plr_pos_X_fr                        = $04C4 ; 
; ram_04C5                              = $04C5 ; 00388C(Rx) 003893(Wx) 005DEA(Rx) 005DED(Wx) 00DE7D(Rx) 00DE82(Wx) 02B6BE(Rx) 02B6C3(Wx) 02C048(Rx) 02C04E(Wx) 03E03F(Wi) 03E845(Wx) 03FF00(Wx) 
; ram_04C6                              = $04C6 ; 00388C(Rx) 003893(Wx) 005DEA(Rx) 005DED(Wx) 02B6BE(Rx) 02B6C3(Wx) 02C048(Rx) 02C04E(Wx) 03B92B(Rx) 03B932(Wx) 03E03F(Wi) 03E845(Wx) 03FF00(Wx) 
; ram_04C7                              = $04C7 ; 001FD3(Rx) 001FD6(Wx) 00388C(Rx) 003893(Wx) 005DEA(Rx) 005DED(Wx) 02B6BE(Rx) 02B6C3(Wx) 02C048(Rx) 02C04E(Wx) 03B92B(Rx) 03B932(Wx) 03E03F(Wi) 03E845(Wx) 03FF00(Wx) 
; ram_04C8                              = $04C8 ; 00388C(Rx) 003893(Wx) 005DEA(Rx) 005DED(Wx) 02B6BE(Rx) 02B6C3(Wx) 02C048(Rx) 02C04E(Wx) 03B92B(Rx) 03B932(Wx) 03E03F(Wi) 03E845(Wx) 03FF00(Wx) 
; ram_04C9                              = $04C9 ; 00388C(Rx) 003893(Wx) 005DEA(Rx) 005DED(Wx) 02B6BE(Rx) 02B6C3(Wx) 02C048(Rx) 02C04E(Wx) 03E03F(Wi) 03E845(Wx) 03FF00(Wx) 
; ram_04CA                              = $04CA ; 005DEA(Rx) 005DED(Wx) 02B6BE(Rx) 02B6C3(Wx) 02C048(Rx) 02C04E(Wx) 03E03F(Wi) 03E845(Wx) 03FF00(Wx) 
; ram_04CB                              = $04CB ; 005DEA(Rx) 005DED(Wx) 02B6BE(Rx) 02B6C3(Wx) 02C048(Rx) 02C04E(Wx) 03E03F(Wi) 03E845(Wx) 03FF00(Wx) 
; ram_04CC                              = $04CC ; 005DEA(Rx) 005DED(Wx) 02B6BE(Rx) 02B6C3(Wx) 02C048(Rx) 02C04E(Wx) 03E03F(Wi) 03E845(Wx) 03FF00(Wx) 
; ram_04CD                              = $04CD ; 005DEA(Rx) 005DED(Wx) 02B6BE(Rx) 02B6C3(Wx) 02C048(Rx) 02C04E(Wx) 03E03F(Wi) 03E845(Wx) 03FF00(Wx) 
; ram_04CE                              = $04CE ; 005DEA(Rx) 005DED(Wx) 02B6BE(Rx) 02B6C3(Wx) 02C048(Rx) 02C04E(Wx) 03E03F(Wi) 03E845(Wx) 03FF00(Wx) 
; ram_04CF                              = $04CF ; 005DEA(Rx) 005DED(Wx) 02C048(Rx) 02C04E(Wx) 03E03F(Wi) 03E845(Wx) 03FF00(Wx) 
; ram_04D0                              = $04D0 ; 02C048(Rx) 02C04E(Wx) 03E03F(Wi) 03E845(Wx) 03FF00(Wx) 
; ram_04D1                              = $04D1 ; 02C048(Rx) 02C04E(Wx) 03E03F(Wi) 03E845(Wx) 03FF00(Wx) 
; ram_04D2                              = $04D2 ; 02C048(Rx) 02C04E(Wx) 03E03F(Wi) 03E845(Wx) 03FF00(Wx) 
; ram_04D3                              = $04D3 ; 02C048(Rx) 02C04E(Wx) 03E03F(Wi) 03E845(Wx) 03FF00(Wx) 
; ram_04D4                              = $04D4 ; 02C048(Rx) 02C04E(Wx) 03E03F(Wi) 03E845(Wx) 03FF00(Wx) 
; ram_04D5                              = $04D5 ; 02C048(Rx) 02C04E(Wx) 03E03F(Wi) 03E845(Wx) 03FF00(Wx) 
; ram_04D6                              = $04D6 ; 02C048(Rx) 02C04E(Wx) 03E03F(Wi) 03E845(Wx) 03FF00(Wx) 
; ram_04D7                              = $04D7 ; 03E03F(Wi) 03E845(Wx) 
; ram_04D8                              = $04D8 ; 03B2F1(Rx) 03B2F7(Wx) 03B30A(Rx) 03B30D(Wx) 03B875(Wx) 03B8C3(Rx) 03B8D1(Wx) 03B92B(Rx) 03B932(Wx) 03E03F(Wi) 03E845(Wx) 
; ram_04D9                              = $04D9 ; 03B2F1(Rx) 03B2F7(Wx) 03B30A(Rx) 03B30D(Wx) 03B875(Wx) 03B8C3(Rx) 03B8D1(Wx) 03B92B(Rx) 03B932(Wx) 03E03F(Wi) 03E845(Wx) 
; ram_04DA                              = $04DA ; 03B2F1(Rx) 03B2F7(Wx) 03B30A(Rx) 03B30D(Wx) 03B875(Wx) 03B8C3(Rx) 03B8D1(Wx) 03B92B(Rx) 03B932(Wx) 03E03F(Wi) 03E845(Wx) 



; fractional
ram_obj_pos_Y_fr                        = $04DB ; 002CFD(R)  002D04(W)  002D29(W)  006E15(Rx) 006E1B(Wx) 0384DD(R)  0384E3(W)  038726(R)  03872D(W)  0398DD(Wx) 039B05(W)  03A127(W)  03E03F(Wi) 03E845(Wx) 
    ram_plr_pos_Y_fr                        = $04DB ; 
; ram_04DC                              = $04DC ; 00389F(Rx) 0038A6(Wx) 005DFD(Rx) 005E00(Wx) 006E15(Rx) 006E1B(Wx) 008AF3(Rx) 008AF9(Wx) 008B42(Rx) 008B48(Wx) 02C034(Rx) 02C03A(Wx) 02CC95(Wx) 0398DD(Wx) 03E03F(Wi) 03E845(Wx) 03FF03(Wx) 
; ram_04DD                              = $04DD ; 00389F(Rx) 0038A6(Wx) 005DFD(Rx) 005E00(Wx) 006E15(Rx) 006E1B(Wx) 008AF3(Rx) 008AF9(Wx) 008B42(Rx) 008B48(Wx) 02C034(Rx) 02C03A(Wx) 02CC95(Wx) 03B93F(Rx) 03B946(Wx) 03E03F(Wi) 03E845(Wx) 03FF03(Wx) 
; ram_04DE                              = $04DE ; 001FE4(Rx) 001FE7(Wx) 00389F(Rx) 0038A6(Wx) 005DFD(Rx) 005E00(Wx) 006E15(Rx) 006E1B(Wx) 008AF3(Rx) 008AF9(Wx) 008B42(Rx) 008B48(Wx) 02B238(Rx) 02B23E(Wx) 02C034(Rx) 02C03A(Wx) 02CC95(Wx) 03E03F(Wi) 03E845(Wx) 03FF03(Wx) 
; ram_04DF                              = $04DF ; 00389F(Rx) 0038A6(Wx) 005DFD(Rx) 005E00(Wx) 006E15(Rx) 006E1B(Wx) 008AF3(Rx) 008AF9(Wx) 008B42(Rx) 008B48(Wx) 02C034(Rx) 02C03A(Wx) 03E03F(Wi) 03E845(Wx) 03FF03(Wx) 
; ram_04E0                              = $04E0 ; 00389F(Rx) 0038A6(Wx) 005DFD(Rx) 005E00(Wx) 006E15(Rx) 006E1B(Wx) 02C034(Rx) 02C03A(Wx) 03E03F(Wi) 03E845(Wx) 03FF03(Wx) 
; ram_04E1                              = $04E1 ; 005DFD(Rx) 005E00(Wx) 006E15(Rx) 006E1B(Wx) 02C034(Rx) 02C03A(Wx) 03E03F(Wi) 03E845(Wx) 03FF03(Wx) 
; ram_04E2                              = $04E2 ; 005DFD(Rx) 005E00(Wx) 006E15(Rx) 006E1B(Wx) 02C034(Rx) 02C03A(Wx) 03E03F(Wi) 03E845(Wx) 03FF03(Wx) 
; ram_04E3                              = $04E3 ; 005DFD(Rx) 005E00(Wx) 006E15(Rx) 006E1B(Wx) 02C034(Rx) 02C03A(Wx) 03E03F(Wi) 03E845(Wx) 03FF03(Wx) 
; ram_04E4                              = $04E4 ; 005DFD(Rx) 005E00(Wx) 006E15(Rx) 006E1B(Wx) 02C034(Rx) 02C03A(Wx) 03E03F(Wi) 03E845(Wx) 03FF03(Wx) 
; ram_04E5                              = $04E5 ; 005DFD(Rx) 005E00(Wx) 006E15(Rx) 006E1B(Wx) 02C034(Rx) 02C03A(Wx) 03E03F(Wi) 03E845(Wx) 03FF03(Wx) 
; ram_04E6                              = $04E6 ; 005DFD(Rx) 005E00(Wx) 006E15(Rx) 006E1B(Wx) 02C034(Rx) 02C03A(Wx) 03E03F(Wi) 03E845(Wx) 03FF03(Wx) 
; ram_04E7                              = $04E7 ; 006E15(Rx) 006E1B(Wx) 02C034(Rx) 02C03A(Wx) 03E03F(Wi) 03E845(Wx) 03FF03(Wx) 
; ram_04E8                              = $04E8 ; 006E15(Rx) 006E1B(Wx) 02C034(Rx) 02C03A(Wx) 03E03F(Wi) 03E845(Wx) 03FF03(Wx) 
; ram_04E9                              = $04E9 ; 006E15(Rx) 006E1B(Wx) 02C034(Rx) 02C03A(Wx) 03E03F(Wi) 03E845(Wx) 03FF03(Wx) 
; ram_04EA                              = $04EA ; 006E15(Rx) 006E1B(Wx) 02C034(Rx) 02C03A(Wx) 03E03F(Wi) 03E845(Wx) 03FF03(Wx) 
; ram_04EB                              = $04EB ; 02C034(Rx) 02C03A(Wx) 03E03F(Wi) 03E845(Wx) 03FF03(Wx) 
; ram_04EC                              = $04EC ; 02C034(Rx) 02C03A(Wx) 03E03F(Wi) 03E845(Wx) 03FF03(Wx) 
; ram_04ED                              = $04ED ; 02C034(Rx) 02C03A(Wx) 03E03F(Wi) 03E845(Wx) 03FF03(Wx) 
; ram_04EE                              = $04EE ; 03E03F(Wi) 03E845(Wx) 
; ram_04EF                              = $04EF ; 03B33B(Rx) 03B341(Wx) 03B35A(Rx) 03B35D(Wx) 03B93F(Rx) 03B946(Wx) 03E03F(Wi) 03E845(Wx) 
; ram_04F0                              = $04F0 ; 03B33B(Rx) 03B341(Wx) 03B35A(Rx) 03B35D(Wx) 03B93F(Rx) 03B946(Wx) 03E03F(Wi) 03E845(Wx) 
; ram_04F1                              = $04F1 ; 03B33B(Rx) 03B341(Wx) 03B35A(Rx) 03B35D(Wx) 03B93F(Rx) 03B946(Wx) 03E03F(Wi) 03E845(Wx) 



; 
ram_obj_spd_X_lo                        = $04F2 ; 002A3E(W)  002AB3(W)  002B1B(R)  002B99(W)  002BBB(W)  002BE8(R)  002C24(W)  03803A(R)  03803F(W)  03804F(R)  038054(W)  038096(R)  03809B(W)  0380AE(R)  0380B3(W)  03826C(W)  03835F(R)  03873A(R)  038758(R)  03877F(R)  038E8D(W)  038F67(W)  038F73(R)  038FD9(W)  039016(W)  03905B(W)  039086(W)  0390A4(W)  0390BD(W)  0390F4(W)  03911F(W)  03913D(W)  039158(W)  039163(R)  039241(W)  03924C(W)  039273(W)  039280(W)  03928D(W)  0392B3(W)  0392C0(W)  0392E6(W)  0392F3(W)  039319(W)  039329(W)  039361(W)  039378(W)  039605(W)  03961D(W)  039668(Wx) 03973E(W)  039772(Wx) 0397B1(R)  039BC5(W)  039E04(W)  039EC0(W)  039F7E(W)  039F9E(W)  039FD1(R)  03A010(W)  03A0DA(W)  03A432(W)  03A70D(W)  03A87A(R)  03A882(R)  03A8A1(R)  03A8B0(R)  03A8B5(W)  03A8BF(W)  03A8D1(R)  03A8D6(W)  03A8EF(R)  03A8F4(W)  03A916(R)  03A91B(W)  03A923(R)  03A936(W)  03AA1C(R)  03AC21(R)  03ACB6(W)  03AD01(W)  03AD2A(R)  03AD32(R)  03AD48(R)  03AD78(R)  03AD7D(W)  03D35A(R)  03E03F(Wi) 03E845(Wx) 
    ram_plr_spd_X_lo                        = $04F2 ; 
    ram_wpn_spd_X_lo                        = $04F2 ; 
; ram_04F3                              = $04F3 ; 003899(Rx) 0038D3(Wx) 0057B4(Wx) 005807(Wx) 00580A(Wx) 00589B(Wx) 005A82(Wx) 005AB4(Wx) 005AC9(Wx) 005C32(Wx) 005C43(Wx) 005DF0(Rx) 008A8B(Wx) 008EC3(Wx) 009576(Wx) 009746(Wx) 00AC1D(Wx) 00ADE3(Rx) 00ADE9(Wx) 00ADED(Rx) 00AED3(Rx) 00AED6(Wx) 00AEEA(Wx) 00AF38(Rx) 00AF41(Rx) 00C4CD(Wy) 00C873(Wx) 00C881(Wx) 00D606(Wx) 00D63F(Wx) 00D64D(Wx) 00DB89(Wx) 00DBE8(Rx) 00DBF8(Rx) 00DBFB(Wx) 00DC01(Rx) 00DC07(Rx) 023EEE(Wx) 0255C1(Wx) 025610(Wx) 025645(Wx) 0259CA(Wx) 025E9B(Wy) 02632B(Rx) 026332(Wx) 027095(Wx) 02712D(R)  02713B(R)  0271D5(Ry) 027404(Wy) 027A4B(Wx) 027A74(Wx) 027C34(Wx) 029205(Wx) 02C01A(Rx) 02C054(Rx) 02C066(Rx) 02C069(Wx) 02C088(Rx) 02C08B(Wx) 02C0AA(Rx) 02C0AD(Wx) 02C3E3(Wx) 02C530(Wx) 02CBF3(Wx) 02CDEE(Wx) 02D1DF(Rx) 02D1EA(Rx) 02D2D5(Rx) 02D2F2(Rx) 02D2F9(Wx) 02D39E(Wx) 02D3C2(Rx) 02D3CC(Rx) 02D45B(Wx) 02D707(Wx) 02D73C(Wx) 02D88E(Wx) 02D904(Wx) 02DEC3(Wx) 02E021(Wx) 032877(Rx) 0328AC(Wx) 038EDF(Rx) 038F5B(Rx) 03921D(Rx) 03923E(Rx) 039668(Wx) 039772(Wx) 03E03F(Wi) 03E845(Wx) 03FEDA(Wx) 
; ram_04F4                              = $04F4 ; 003899(Rx) 0038D3(Wx) 005807(Wx) 00580A(Wx) 00589B(Wx) 005A82(Wx) 005AB4(Wx) 005AC9(Wx) 005C32(Wx) 005C43(Wx) 005CE9(Wx) 005CF2(Wx) 005DF0(Rx) 008A8B(Wx) 00924E(Wx) 009576(Wx) 009746(Wx) 00AB99(Wx) 00AC1D(Wx) 00ADE3(Rx) 00ADE9(Wx) 00ADED(Rx) 00AED3(Rx) 00AED6(Wx) 00AEEA(Wx) 00AF38(Rx) 00AF41(Rx) 00C873(Wx) 00C881(Wx) 00D606(Wx) 00D63F(Wx) 00D64D(Wx) 023EEE(Wx) 0255C1(Wx) 025610(Wx) 025645(Wx) 0259CA(Wx) 025E9B(Wy) 025F5F(Wy) 025FEE(Wx) 027095(Wx) 02711F(Rx) 02713E(Wx) 0271C0(Wx) 0271D5(Ry) 027404(Wy) 027C34(Wx) 029205(Wx) 029264(Wx) 02C01A(Rx) 02C054(Rx) 02C066(Rx) 02C069(Wx) 02C088(Rx) 02C08B(Wx) 02C0AA(Rx) 02C0AD(Wx) 02C3E3(Wx) 02C530(Wx) 02CBF3(Wx) 02CDEE(Wx) 02D1DF(Rx) 02D1EA(Rx) 02D2D5(Rx) 02D2F2(Rx) 02D2F9(Wx) 02D39E(Wx) 02D3C2(Rx) 02D3CC(Rx) 02D45B(Wx) 02D707(Wx) 02D73C(Wx) 02D88E(Wx) 02D904(Wx) 02DAE2(Wy) 02DEC3(Wx) 02E021(Wx) 038EDF(Rx) 038F5B(Rx) 039083(Rx) 03909F(Rx) 03911C(Rx) 03921D(Rx) 03923E(Rx) 039375(Rx) 03AFC7(Wx) 03B412(Wx) 03B43A(Wx) 03B51B(Wx) 03B55F(Rx) 03B562(Wx) 03B61B(Wx) 03B6A5(Wx) 03B938(Rx) 03E03F(Wi) 03E845(Wx) 03FEDA(Wx) 
; ram_04F5                              = $04F5 ; 003899(Rx) 0038D3(Wx) 0055F8(Wx) 0057B4(Wx) 005807(Wx) 00580A(Wx) 00589B(Wx) 005A82(Wx) 005AB4(Wx) 005AC9(Wx) 005C32(Wx) 005C43(Wx) 005DF0(Rx) 008A8B(Wx) 00924E(Wx) 009576(Wx) 009746(Wx) 00AB99(Wx) 00AC1D(Wx) 00ADE3(Rx) 00ADE9(Wx) 00ADED(Rx) 00AED3(Rx) 00AED6(Wx) 00AEEA(Wx) 00AF38(Rx) 00AF41(Rx) 00C4CD(Wy) 00D606(Wx) 00D63F(Wx) 00D64D(Wx) 0255C1(Wx) 025610(Wx) 0259CA(Wx) 025E9B(Wy) 025F5F(Wy) 025FEE(Wx) 027095(Wx) 02711F(Rx) 02713E(Wx) 0271C0(Wx) 0271D5(Ry) 027404(Wy) 027C34(Wx) 029205(Wx) 029264(Wx) 02B213(Wx) 02B21D(Wx) 02B24E(Rx) 02B25E(Rx) 02B263(Wx) 02C01A(Rx) 02C054(Rx) 02C066(Rx) 02C069(Wx) 02C088(Rx) 02C08B(Wx) 02C0AA(Rx) 02C0AD(Wx) 02C3E3(Wx) 02C530(Wx) 02CBF3(Wx) 02CDEE(Wx) 02D1DF(Rx) 02D1EA(Rx) 02D2D5(Rx) 02D39E(Wx) 02D3C2(Rx) 02D3CC(Rx) 02D707(Wx) 02D88E(Wx) 02DAE2(Wy) 02DEC3(Wx) 02E021(Wx) 033028(Wx) 03304D(Wx) 03305C(Wx) 0330DF(Wx) 033179(Rx) 0331A5(Rx) 0331C0(Rx) 0331C5(Wx) 0331CF(Wx) 0331DE(Rx) 0331E3(Wx) 0331E7(Rx) 0331F9(Wx) 033205(Rx) 033215(Wx) 038EDF(Rx) 038F5B(Rx) 039083(Rx) 03909F(Rx) 03921D(Rx) 03923E(Rx) 039375(Rx) 03B51B(Wx) 03B55F(Rx) 03B562(Wx) 03B938(Rx) 03E03F(Wi) 03E845(Wx) 03FEDA(Wx) 
; ram_04F6                              = $04F6 ; 003899(Rx) 0038D3(Wx) 0055F8(Wx) 005807(Wx) 00580A(Wx) 00589B(Wx) 005957(Wx) 005A82(Wx) 005AB4(Wx) 005AC9(Wx) 005C32(Wx) 005C43(Wx) 005DF0(Rx) 008A8B(Wx) 00924E(Wx) 009576(Wx) 009746(Wx) 00AB99(Wx) 00AC1D(Wx) 00ADE3(Rx) 00ADE9(Wx) 00ADED(Rx) 00AED3(Rx) 00AED6(Wx) 00AEEA(Wx) 00AF38(Rx) 00AF41(Rx) 00C4CD(Wy) 0255C1(Wx) 025610(Wx) 0259CA(Wx) 025E9B(Wy) 025FEE(Wx) 027095(Wx) 02711F(Rx) 02713E(Wx) 0271C0(Wx) 0271D5(Ry) 027C34(Wx) 029205(Wx) 029264(Wx) 02C01A(Rx) 02C054(Rx) 02C066(Rx) 02C069(Wx) 02C088(Rx) 02C08B(Wx) 02C0AA(Rx) 02C0AD(Wx) 02C3E3(Wx) 02C530(Wx) 02CDEE(Wx) 02D2D5(Rx) 02D39E(Wx) 02D3C2(Rx) 02D3CC(Rx) 02D707(Wx) 02D73C(Wx) 02D88E(Wx) 02DAE2(Wy) 02DEC3(Wx) 02E021(Wx) 033028(Wx) 03304D(Wx) 03305C(Wx) 0330DF(Wx) 033179(Rx) 0331A5(Rx) 0331C0(Rx) 0331C5(Wx) 0331CF(Wx) 0331DE(Rx) 0331E3(Wx) 0331E7(Rx) 0331F9(Wx) 033205(Rx) 033215(Wx) 038EDF(Rx) 038F5B(Rx) 039083(Rx) 03909F(Rx) 03911C(Rx) 039138(Rx) 03921D(Rx) 03923E(Rx) 039375(Rx) 03B51B(Wx) 03B55F(Rx) 03B562(Wx) 03B938(Rx) 03E03F(Wi) 03E845(Wx) 03FEDA(Wx) 
; ram_04F7                              = $04F7 ; 003899(Rx) 0038D3(Wx) 0055F8(Wx) 0057B4(Wx) 005DF0(Rx) 008A8B(Wx) 00924E(Wx) 009576(Wx) 009746(Wx) 00AB99(Wx) 00AC1D(Wx) 00AEEA(Wx) 00C4CD(Wy) 017D25(Wx) 0255C1(Wx) 025610(Wx) 0259CA(Wx) 025E9B(Wy) 025F5F(Wy) 025FEE(Wx) 027095(Wx) 02711F(Rx) 02713E(Wx) 0271C0(Wx) 0271D5(Ry) 027C34(Wx) 029205(Wx) 02C01A(Rx) 02C054(Rx) 02C066(Rx) 02C069(Wx) 02C088(Rx) 02C08B(Wx) 02C0AA(Rx) 02C0AD(Wx) 02C3E3(Wx) 02C530(Wx) 02CDEE(Wx) 02D39E(Wx) 02D3C2(Rx) 02D6CD(Wx) 02D707(Wx) 02D73C(Wx) 02D88E(Wx) 02DAE2(Wy) 02DEC3(Wx) 02E021(Wx) 038EDF(Rx) 038F5B(Rx) 039083(Rx) 03909F(Rx) 03911C(Rx) 039138(Rx) 03921D(Rx) 03923E(Rx) 039375(Rx) 03E03F(Wi) 03E845(Wx) 03FEDA(Wx) 
; ram_04F8                              = $04F8 ; 0057B4(Wx) 005DF0(Rx) 008EC3(Wx) 00924E(Wx) 009576(Wx) 009746(Wx) 00AB99(Wx) 00C4CD(Wy) 017D25(Wx) 0255C1(Wx) 025610(Wx) 0259CA(Wx) 025E9B(Wy) 025F5F(Wy) 025FEE(Wx) 027095(Wx) 02711F(Rx) 02713E(Wx) 0271C0(Wx) 0271D5(Ry) 027C34(Wx) 029205(Wx) 02C01A(Rx) 02C054(Rx) 02C066(Rx) 02C069(Wx) 02C088(Rx) 02C08B(Wx) 02C0AA(Rx) 02C0AD(Wx) 02C3E3(Wx) 02CDEE(Wx) 02D88E(Wx) 02DAE2(Wy) 02DEC3(Wx) 02E021(Wx) 038EDF(Rx) 038F5B(Rx) 039083(Rx) 03909F(Rx) 03911C(Rx) 039138(Rx) 03921D(Rx) 03923E(Rx) 039375(Rx) 03E03F(Wi) 03E845(Wx) 03FEDA(Wx) 
; ram_04F9                              = $04F9 ; 0057B4(Wx) 005DF0(Rx) 00924E(Wx) 009576(Wx) 009746(Wx) 00AB99(Wx) 00C4CD(Wy) 017D25(Wx) 023EEE(Wx) 025610(Wx) 0259CA(Wx) 025E9B(Wy) 025F5F(Wy) 025FEE(Wx) 027095(Wx) 02711F(Rx) 02713E(Wx) 0271C0(Wx) 0271D5(Ry) 02749D(Wy) 029205(Wx) 02C01A(Rx) 02C054(Rx) 02C066(Rx) 02C069(Wx) 02C088(Rx) 02C08B(Wx) 02C0AA(Rx) 02C0AD(Wx) 02C3E3(Wx) 02D88E(Wx) 02DAE2(Wy) 02E021(Wx) 038EDF(Rx) 038F5B(Rx) 039083(Rx) 03909F(Rx) 03911C(Rx) 039138(Rx) 03921D(Rx) 03923E(Rx) 039375(Rx) 03E03F(Wi) 03E845(Wx) 03FEDA(Wx) 
; ram_04FA                              = $04FA ; 0057B4(Wx) 005DF0(Rx) 00924E(Wx) 009576(Wx) 009746(Wx) 00AB99(Wx) 00C4CD(Wy) 017D25(Wx) 023EEE(Wx) 025610(Wx) 0259CA(Wx) 025E9B(Wy) 025FEE(Wx) 027095(Wx) 02711F(Rx) 02713E(Wx) 0271C0(Wx) 0271D5(Ry) 02749D(Wy) 02C01A(Rx) 02C054(Rx) 02C066(Rx) 02C069(Wx) 02C088(Rx) 02C08B(Wx) 02C0AA(Rx) 02C0AD(Wx) 02C3E3(Wx) 02D73C(Wx) 02DA77(Wx) 02E021(Wx) 038EDF(Rx) 038F5B(Rx) 039083(Rx) 03909F(Rx) 03911C(Rx) 039138(Rx) 03921D(Rx) 03923E(Rx) 039375(Rx) 03E03F(Wi) 03E845(Wx) 03FEDA(Wx) 
; ram_04FB                              = $04FB ; 0057B4(Wx) 005DF0(Rx) 00924E(Wx) 009576(Wx) 009746(Wx) 017D25(Wx) 025610(Wx) 0259CA(Wx) 025E9B(Wy) 025FEE(Wx) 027095(Wx) 02711F(Rx) 02713E(Wx) 0271C0(Wx) 0271D5(Ry) 02749D(Wy) 02C01A(Rx) 02C054(Rx) 02C066(Rx) 02C069(Wx) 02C3E3(Wx) 02CDEE(Wx) 02CF84(Wx) 02D5EC(Wx) 02D7C8(Wx) 038EDF(Rx) 038F5B(Rx) 039083(Rx) 03911C(Rx) 039138(Rx) 03921D(Rx) 03923E(Rx) 039375(Rx) 03E03F(Wi) 03E845(Wx) 03FEDA(Wx) 
; ram_04FC                              = $04FC ; 0057B4(Wx) 005DF0(Rx) 00924E(Wx) 009576(Wx) 017D25(Wx) 025610(Wx) 0259CA(Wx) 025E9B(Wy) 025F5F(Wy) 027095(Wx) 02711F(Rx) 02713E(Wx) 0271C0(Wx) 0271D5(Ry) 02749D(Wy) 02C01A(Rx) 02C054(Rx) 02C066(Rx) 02C069(Wx) 02C088(Rx) 02C08B(Wx) 02C0AA(Rx) 02C0AD(Wx) 02C3E3(Wx) 02CBF3(Wx) 02CDEE(Wx) 02CF84(Wx) 02D2D5(Rx) 02D39E(Wx) 02D3C2(Rx) 02D5EC(Wx) 02D73C(Wx) 02D7C8(Wx) 02E021(Wx) 038EDF(Rx) 038F5B(Rx) 03911C(Rx) 039138(Rx) 03E03F(Wi) 03E845(Wx) 03FEDA(Wx) 
; ram_04FD                              = $04FD ; 0057B4(Wx) 005DF0(Rx) 00924E(Wx) 009576(Wx) 009746(Wx) 017D25(Wx) 025610(Wx) 025E9B(Wy) 027095(Wx) 02711F(Rx) 02713E(Wx) 0271C0(Wx) 0271D5(Ry) 02749D(Wy) 02C01A(Rx) 02C054(Rx) 02C066(Rx) 02C069(Wx) 02C088(Rx) 02C08B(Wx) 02C0AA(Rx) 02C0AD(Wx) 02C3E3(Wx) 02CBF3(Wx) 02CDEE(Wx) 02CF84(Wx) 02D2D5(Rx) 02D39E(Wx) 02D3C2(Rx) 02D5EC(Wx) 02D7C8(Wx) 02E021(Wx) 038F5B(Rx) 039083(Rx) 03909F(Rx) 03911C(Rx) 039138(Rx) 03921D(Rx) 03923E(Rx) 039375(Rx) 03E03F(Wi) 03E845(Wx) 03FEDA(Wx) 
; ram_04FE                              = $04FE ; 00924E(Wx) 009576(Wx) 017D25(Wx) 025610(Wx) 025E9B(Wy) 027095(Wx) 02711F(Rx) 02713E(Wx) 0271C0(Wx) 02749D(Wy) 02C01A(Rx) 02C054(Rx) 02C066(Rx) 02C069(Wx) 02C3E3(Wx) 02CDEE(Wx) 02CF84(Wx) 02D5EC(Wx) 02D7C8(Wx) 038EDF(Rx) 039083(Rx) 03911C(Rx) 039375(Rx) 03E03F(Wi) 03E845(Wx) 03FEDA(Wx) 
; ram_04FF                              = $04FF ; 00924E(Wx) 02C01A(Rx) 02C054(Rx) 02C066(Rx) 02C069(Wx) 02C088(Rx) 02C08B(Wx) 02C0AA(Rx) 02C0AD(Wx) 02C3E3(Wx) 02E021(Wx) 03E03F(Wi) 03E845(Wx) 03FEDA(Wx) 
; ram_0500                              = $0500 ; 00924E(Wx) 02C01A(Rx) 02C054(Rx) 02C066(Rx) 02C069(Wx) 02C088(Rx) 02C08B(Wx) 02C0AA(Rx) 02C0AD(Wx) 02C3E3(Wx) 02E021(Wx) 03911C(Rx) 039375(Rx) 03E03F(Wi) 03E848(Wx) 03FEDA(Wx) 
; ram_0501                              = $0501 ; 00924E(Wx) 02C01A(Rx) 02C054(Rx) 02C088(Rx) 02C08B(Wx) 02C0AA(Rx) 02C0AD(Wx) 02E021(Wx) 039083(Rx) 03911C(Rx) 039138(Rx) 039375(Rx) 03E03F(Wi) 03E848(Wx) 03FEDA(Wx) 
; ram_0502                              = $0502 ; 00924E(Wx) 02C01A(Rx) 02C054(Rx) 02C088(Rx) 02C08B(Wx) 02C0AA(Rx) 02C0AD(Wx) 02E021(Wx) 039083(Rx) 03911C(Rx) 039375(Rx) 03E03F(Wi) 03E848(Wx) 03FEDA(Wx) 
; ram_0503                              = $0503 ; 02C01A(Rx) 02C054(Rx) 02C088(Rx) 02C08B(Wx) 02C0AA(Rx) 02C0AD(Wx) 02E021(Wx) 03E03F(Wi) 03E848(Wx) 03FEDA(Wx) 
; ram_0504                              = $0504 ; 02C01A(Rx) 02C054(Rx) 02C088(Rx) 02C08B(Wx) 02C0AA(Rx) 02C0AD(Wx) 02E021(Wx) 03E03F(Wi) 03E848(Wx) 03FEDA(Wx) 
; ram_0505                              = $0505 ; 0014EB(W)  0015B9(R)  0015BF(W)  00163F(R)  001645(W)  0016C9(W)  00631C(R)  00632A(R)  006341(R)  03E03F(Wi) 03E848(Wx) 
; ram_0506                              = $0506 ; 00B520(Wx) 02F5F8(Ry) 038CA3(Wx) 03AFC7(Wx) 03B1FA(Wx) 03B238(Rx) 03B252(Wx) 03B274(Rx) 03B2C3(Rx) 03B412(Wx) 03B43A(Wx) 03B4BE(Wx) 03B51B(Wx) 03B55F(Rx) 03B562(Wx) 03B61B(Wx) 03B6A5(Wx) 03B6E1(Wx) 03B779(Wx) 03B84F(Wx) 03B8E9(Rx) 03B8EC(Wx) 03B91F(Rx) 03B938(Rx) 03E03F(Wi) 03E848(Wx) 
; ram_0507                              = $0507 ; 00B520(Wx) 02F5F8(Ry) 038CA3(Wx) 03AFC7(Wx) 03B1FA(Wx) 03B238(Rx) 03B252(Wx) 03B274(Rx) 03B2C3(Rx) 03B51B(Wx) 03B55F(Rx) 03B562(Wx) 03B779(Wx) 03B84F(Wx) 03B8E9(Rx) 03B8EC(Wx) 03B91F(Rx) 03B938(Rx) 03E03F(Wi) 03E848(Wx) 
; ram_0508                              = $0508 ; 00B520(Wx) 02F5F8(Ry) 038CA3(Wx) 03AFC7(Wx) 03B1FA(Wx) 03B238(Rx) 03B252(Wx) 03B274(Rx) 03B2C3(Rx) 03B51B(Wx) 03B55F(Rx) 03B562(Wx) 03B84F(Wx) 03B8E9(Rx) 03B8EC(Wx) 03B91F(Rx) 03B938(Rx) 03E03F(Wi) 03E848(Wx) 



; fractional
ram_obj_spd_X_fr                        = $0509 ; 002A44(W)  002AB9(W)  002B12(R)  002B96(W)  002BBE(W)  002BDF(R)  002C21(W)  038031(R)  038037(W)  038046(R)  03804C(W)  03808C(R)  038093(W)  0380A4(R)  0380AB(W)  03826F(W)  03875D(R)  038776(R)  038E8A(W)  038F6B(W)  038F76(R)  038FD4(W)  039011(W)  039056(W)  039091(W)  0390AF(W)  0390BA(W)  0390EF(W)  03912A(W)  039148(W)  039155(W)  03923B(W)  039249(W)  039278(W)  039285(W)  039292(W)  0392B8(W)  0392C5(W)  0392EB(W)  0392F8(W)  03931E(W)  039326(W)  03935E(W)  039383(W)  039602(W)  039620(W)  03966C(Wx) 03973B(W)  039776(Wx) 039BCB(W)  039E01(W)  039EBD(W)  039F83(W)  039FA3(W)  03A013(W)  03A0DD(W)  03A435(W)  03A710(W)  03A87D(R)  03A8A6(R)  03A8AD(W)  03A8C2(W)  03A8C7(R)  03A8CE(W)  03A8E5(R)  03A8EC(W)  03A901(R)  03A906(W)  03A90C(R)  03A913(W)  03A92B(R)  03A930(W)  03AA21(R)  03ACBC(W)  03AD04(W)  03AD2D(R)  03AD6E(R)  03AD75(W)  03D353(R)  03E03F(Wi) 03E848(Wx) 
    ram_plr_spd_X_fr                        = $0509 ; 
    ram_wpn_spd_X_fr                        = $0509 ; 
; ram_050A                              = $050A ; 003890(Rx) 0038DA(Wx) 0057AE(Wx) 005898(Wx) 005A87(Wx) 005AB9(Wx) 005ACC(Wx) 005C37(Wx) 005C48(Wx) 005DE7(Rx) 008A8E(Wx) 008ED1(Wx) 00957B(Wx) 00974C(Wx) 00AC1A(Wx) 00AC85(Wx) 00ADDA(Rx) 00ADE0(Wx) 00AECB(Rx) 00AECE(Wx) 00AEE4(Wx) 00AF2F(Rx) 00C4D0(Wy) 00C878(Wx) 00C886(Wx) 00D609(Wx) 00D644(Wx) 00D652(Wx) 00DB83(Wx) 00DBF0(Rx) 00DBF3(Wx) 023EF1(Wx) 0255C6(Wx) 025615(Wx) 02564A(Wx) 0259CF(Wx) 025E9E(Wy) 026320(Rx) 026328(Wx) 027092(Wx) 027130(R)  027144(R)  0271DB(Ry) 027407(Wy) 027A50(Wx) 027A79(Wx) 027C2E(Wx) 029208(Wx) 02C04B(Rx) 02C05E(Rx) 02C061(Wx) 02C080(Rx) 02C083(Wx) 02C0A2(Rx) 02C0A5(Wx) 02C3E9(Wx) 02C534(Wx) 02CDF3(Wx) 02D303(Wx) 02D3A4(Wx) 02D461(Wx) 02D70D(Wx) 02D742(Wx) 02D894(Wx) 02D90A(Wx) 02DEC9(Wx) 02E026(Wx) 0328B0(Wx) 038ED8(Rx) 038F54(Rx) 039238(Rx) 03966C(Wx) 039776(Wx) 03E03F(Wi) 03E848(Wx) 03FEDD(Wx) 
; ram_050B                              = $050B ; 003890(Rx) 0038DA(Wx) 005898(Wx) 005A87(Wx) 005AB9(Wx) 005ACC(Wx) 005C37(Wx) 005C48(Wx) 005CF7(Wx) 005DE7(Rx) 008A8E(Wx) 00925C(Wx) 00957B(Wx) 00974C(Wx) 00AB96(Wx) 00AC1A(Wx) 00AC85(Wx) 00ADDA(Rx) 00ADE0(Wx) 00AECB(Rx) 00AECE(Wx) 00AEE4(Wx) 00AF2F(Rx) 00C878(Wx) 00C886(Wx) 00D609(Wx) 00D644(Wx) 00D652(Wx) 023EF1(Wx) 0255C6(Wx) 025615(Wx) 02564A(Wx) 0259CF(Wx) 025E9E(Wy) 025F5A(Wy) 025FF1(Wx) 027092(Wx) 027122(Rx) 027147(Wx) 0271C6(Wx) 0271DB(Ry) 027407(Wy) 027C2E(Wx) 029208(Wx) 029267(Wx) 02C04B(Rx) 02C05E(Rx) 02C061(Wx) 02C080(Rx) 02C083(Wx) 02C0A2(Rx) 02C0A5(Wx) 02C3E9(Wx) 02C534(Wx) 02CDF3(Wx) 02D303(Wx) 02D3A4(Wx) 02D461(Wx) 02D70D(Wx) 02D742(Wx) 02D894(Wx) 02D90A(Wx) 02DAE5(Wy) 02DEC9(Wx) 02E026(Wx) 038ED8(Rx) 038F54(Rx) 039238(Rx) 03AFC1(Wx) 03B408(Wx) 03B521(Wx) 03B557(Rx) 03B55A(Wx) 03B621(Wx) 03B6AB(Wx) 03B92F(Rx) 03E03F(Wi) 03E848(Wx) 03FEDD(Wx) 
; ram_050C                              = $050C ; 003890(Rx) 0038DA(Wx) 0055FB(Wx) 0057AE(Wx) 005898(Wx) 005A87(Wx) 005AB9(Wx) 005ACC(Wx) 005C37(Wx) 005C48(Wx) 005DE7(Rx) 008A8E(Wx) 00925C(Wx) 00957B(Wx) 00974C(Wx) 00AB96(Wx) 00AC1A(Wx) 00AC85(Wx) 00ADDA(Rx) 00ADE0(Wx) 00AECB(Rx) 00AECE(Wx) 00AEE4(Wx) 00AF2F(Rx) 00C4D0(Wy) 00D609(Wx) 00D644(Wx) 00D652(Wx) 0255C6(Wx) 025615(Wx) 0259CF(Wx) 025E9E(Wy) 025F5A(Wy) 025FF1(Wx) 027092(Wx) 027122(Rx) 027147(Wx) 0271C6(Wx) 0271DB(Ry) 027407(Wy) 027C2E(Wx) 029208(Wx) 029267(Wx) 02C04B(Rx) 02C05E(Rx) 02C061(Wx) 02C080(Rx) 02C083(Wx) 02C0A2(Rx) 02C0A5(Wx) 02C3E9(Wx) 02C534(Wx) 02CDF3(Wx) 02D3A4(Wx) 02D70D(Wx) 02D894(Wx) 02DAE5(Wy) 02DEC9(Wx) 02E026(Wx) 03302B(Wx) 033048(Wx) 033057(Wx) 0330E2(Wx) 03317C(Rx) 0331A8(Rx) 0331BA(Rx) 0331BD(Wx) 0331CC(Wx) 0331D5(Rx) 0331DB(Wx) 0331F0(Rx) 0331FE(Wx) 03320C(Rx) 03321A(Wx) 038ED8(Rx) 038F54(Rx) 039238(Rx) 03B521(Wx) 03B557(Rx) 03B55A(Wx) 03B92F(Rx) 03E03F(Wi) 03E848(Wx) 03FEDD(Wx) 
; ram_050D                              = $050D ; 003890(Rx) 0038DA(Wx) 0055FB(Wx) 005898(Wx) 00595A(Wx) 005A87(Wx) 005AB9(Wx) 005ACC(Wx) 005C37(Wx) 005C48(Wx) 005DE7(Rx) 008A8E(Wx) 00925C(Wx) 00957B(Wx) 00974C(Wx) 00AB96(Wx) 00AC1A(Wx) 00AC85(Wx) 00ADDA(Rx) 00ADE0(Wx) 00AECB(Rx) 00AECE(Wx) 00AEE4(Wx) 00AF2F(Rx) 00C4D0(Wy) 0255C6(Wx) 025615(Wx) 0259CF(Wx) 025E9E(Wy) 025FF1(Wx) 027092(Wx) 027122(Rx) 027147(Wx) 0271C6(Wx) 0271DB(Ry) 027C2E(Wx) 029208(Wx) 029267(Wx) 02C04B(Rx) 02C05E(Rx) 02C061(Wx) 02C080(Rx) 02C083(Wx) 02C0A2(Rx) 02C0A5(Wx) 02C3E9(Wx) 02C534(Wx) 02CDF3(Wx) 02D3A4(Wx) 02D70D(Wx) 02D742(Wx) 02D894(Wx) 02DAE5(Wy) 02DEC9(Wx) 02E026(Wx) 03302B(Wx) 033048(Wx) 033057(Wx) 0330E2(Wx) 03317C(Rx) 0331A8(Rx) 0331BA(Rx) 0331BD(Wx) 0331CC(Wx) 0331D5(Rx) 0331DB(Wx) 0331F0(Rx) 0331FE(Wx) 03320C(Rx) 03321A(Wx) 038ED8(Rx) 038F54(Rx) 039238(Rx) 03B521(Wx) 03B557(Rx) 03B55A(Wx) 03B92F(Rx) 03E03F(Wi) 03E848(Wx) 03FEDD(Wx) 
; ram_050E                              = $050E ; 003890(Rx) 0038DA(Wx) 0055FB(Wx) 0057AE(Wx) 005DE7(Rx) 008A8E(Wx) 00925C(Wx) 00957B(Wx) 00974C(Wx) 00AB96(Wx) 00AC1A(Wx) 00AC85(Wx) 00AEE4(Wx) 00C4D0(Wy) 017D1F(Wx) 0255C6(Wx) 025615(Wx) 0259CF(Wx) 025E9E(Wy) 025F5A(Wy) 025FF1(Wx) 027092(Wx) 027122(Rx) 027147(Wx) 0271C6(Wx) 0271DB(Ry) 027C2E(Wx) 029208(Wx) 02C04B(Rx) 02C05E(Rx) 02C061(Wx) 02C080(Rx) 02C083(Wx) 02C0A2(Rx) 02C0A5(Wx) 02C3E9(Wx) 02C534(Wx) 02CDF3(Wx) 02D3A4(Wx) 02D6D3(Wx) 02D70D(Wx) 02D742(Wx) 02D894(Wx) 02DAE5(Wy) 02DEC9(Wx) 02E026(Wx) 038ED8(Rx) 038F54(Rx) 039238(Rx) 03E03F(Wi) 03E848(Wx) 03FEDD(Wx) 
; ram_050F                              = $050F ; 0057AE(Wx) 005DE7(Rx) 008ED1(Wx) 00925C(Wx) 00957B(Wx) 00974C(Wx) 00AB96(Wx) 00AC85(Wx) 00C4D0(Wy) 017D1F(Wx) 0255C6(Wx) 025615(Wx) 0259CF(Wx) 025E9E(Wy) 025F5A(Wy) 025FF1(Wx) 027092(Wx) 027122(Rx) 027147(Wx) 0271C6(Wx) 0271DB(Ry) 027C2E(Wx) 029208(Wx) 02C04B(Rx) 02C05E(Rx) 02C061(Wx) 02C080(Rx) 02C083(Wx) 02C0A2(Rx) 02C0A5(Wx) 02C3E9(Wx) 02CDF3(Wx) 02D894(Wx) 02DAE5(Wy) 02DEC9(Wx) 02E026(Wx) 038ED8(Rx) 038F54(Rx) 039238(Rx) 03E03F(Wi) 03E848(Wx) 03FEDD(Wx) 
; ram_0510                              = $0510 ; 0057AE(Wx) 005DE7(Rx) 00925C(Wx) 00957B(Wx) 00974C(Wx) 00AB96(Wx) 00AC85(Wx) 00C4D0(Wy) 017D1F(Wx) 023EF1(Wx) 025615(Wx) 0259CF(Wx) 025E9E(Wy) 025F5A(Wy) 025FF1(Wx) 027092(Wx) 027122(Rx) 027147(Wx) 0271C6(Wx) 0271DB(Ry) 027498(Wy) 029208(Wx) 02C04B(Rx) 02C05E(Rx) 02C061(Wx) 02C080(Rx) 02C083(Wx) 02C0A2(Rx) 02C0A5(Wx) 02C3E9(Wx) 02D894(Wx) 02DAE5(Wy) 02E026(Wx) 038ED8(Rx) 038F54(Rx) 039238(Rx) 03E03F(Wi) 03E848(Wx) 03FEDD(Wx) 
; ram_0511                              = $0511 ; 0057AE(Wx) 005DE7(Rx) 00925C(Wx) 00957B(Wx) 00974C(Wx) 00AB96(Wx) 00AC85(Wx) 00C4D0(Wy) 017D1F(Wx) 023EF1(Wx) 025615(Wx) 0259CF(Wx) 025E9E(Wy) 025FF1(Wx) 027092(Wx) 027122(Rx) 027147(Wx) 0271C6(Wx) 0271DB(Ry) 027498(Wy) 02C04B(Rx) 02C05E(Rx) 02C061(Wx) 02C080(Rx) 02C083(Wx) 02C0A2(Rx) 02C0A5(Wx) 02C3E9(Wx) 02D742(Wx) 02E026(Wx) 038ED8(Rx) 038F54(Rx) 039238(Rx) 03E03F(Wi) 03E848(Wx) 03FEDD(Wx) 
; ram_0512                              = $0512 ; 0057AE(Wx) 005DE7(Rx) 00925C(Wx) 00957B(Wx) 00974C(Wx) 00AC85(Wx) 017D1F(Wx) 025615(Wx) 0259CF(Wx) 025E9E(Wy) 025FF1(Wx) 027092(Wx) 027122(Rx) 027147(Wx) 0271C6(Wx) 0271DB(Ry) 027498(Wy) 02C04B(Rx) 02C05E(Rx) 02C061(Wx) 02C3E9(Wx) 02CDF3(Wx) 02CF8A(Wx) 02D646(Wx) 02D7D5(Wx) 038ED8(Rx) 038F54(Rx) 039238(Rx) 03E03F(Wi) 03E848(Wx) 03FEDD(Wx) 
; ram_0513                              = $0513 ; 0057AE(Wx) 005DE7(Rx) 00925C(Wx) 00957B(Wx) 00AC85(Wx) 017D1F(Wx) 025615(Wx) 0259CF(Wx) 025E9E(Wy) 025F5A(Wy) 027092(Wx) 027122(Rx) 027147(Wx) 0271C6(Wx) 0271DB(Ry) 027498(Wy) 02C04B(Rx) 02C05E(Rx) 02C061(Wx) 02C080(Rx) 02C083(Wx) 02C0A2(Rx) 02C0A5(Wx) 02C3E9(Wx) 02CDF3(Wx) 02CF8A(Wx) 02D3A4(Wx) 02D646(Wx) 02D742(Wx) 02D7D5(Wx) 02E026(Wx) 038ED8(Rx) 038F54(Rx) 03E03F(Wi) 03E848(Wx) 03FEDD(Wx) 
; ram_0514                              = $0514 ; 0057AE(Wx) 005DE7(Rx) 00925C(Wx) 00957B(Wx) 00974C(Wx) 00AC85(Wx) 017D1F(Wx) 025615(Wx) 025E9E(Wy) 027092(Wx) 027122(Rx) 027147(Wx) 0271C6(Wx) 0271DB(Ry) 027498(Wy) 02C04B(Rx) 02C05E(Rx) 02C061(Wx) 02C080(Rx) 02C083(Wx) 02C0A2(Rx) 02C0A5(Wx) 02C3E9(Wx) 02CDF3(Wx) 02CF8A(Wx) 02D3A4(Wx) 02D646(Wx) 02D7D5(Wx) 02E026(Wx) 038F54(Rx) 039238(Rx) 03E03F(Wi) 03E848(Wx) 03FEDD(Wx) 
; ram_0515                              = $0515 ; 00925C(Wx) 00957B(Wx) 017D1F(Wx) 025615(Wx) 025E9E(Wy) 027092(Wx) 027122(Rx) 027147(Wx) 0271C6(Wx) 027498(Wy) 02C04B(Rx) 02C05E(Rx) 02C061(Wx) 02C3E9(Wx) 02CDF3(Wx) 02CF8A(Wx) 02D646(Wx) 02D7D5(Wx) 038ED8(Rx) 03E03F(Wi) 03E848(Wx) 03FEDD(Wx) 
; ram_0516                              = $0516 ; 00925C(Wx) 02C04B(Rx) 02C05E(Rx) 02C061(Wx) 02C080(Rx) 02C083(Wx) 02C0A2(Rx) 02C0A5(Wx) 02C3E9(Wx) 02E026(Wx) 03E03F(Wi) 03E848(Wx) 03FEDD(Wx) 
; ram_0517                              = $0517 ; 00925C(Wx) 02C04B(Rx) 02C05E(Rx) 02C061(Wx) 02C080(Rx) 02C083(Wx) 02C0A2(Rx) 02C0A5(Wx) 02C3E9(Wx) 02E026(Wx) 03E03F(Wi) 03E848(Wx) 03FEDD(Wx) 
; ram_0518                              = $0518 ; 00925C(Wx) 02C04B(Rx) 02C080(Rx) 02C083(Wx) 02C0A2(Rx) 02C0A5(Wx) 02E026(Wx) 03E03F(Wi) 03E848(Wx) 03FEDD(Wx) 
; ram_0519                              = $0519 ; 00925C(Wx) 02C04B(Rx) 02C080(Rx) 02C083(Wx) 02C0A2(Rx) 02C0A5(Wx) 02E026(Wx) 03E03F(Wi) 03E848(Wx) 03FEDD(Wx) 
; ram_051A                              = $051A ; 02C04B(Rx) 02C080(Rx) 02C083(Wx) 02C0A2(Rx) 02C0A5(Wx) 02E026(Wx) 03E03F(Wi) 03E848(Wx) 03FEDD(Wx) 
; ram_051B                              = $051B ; 02C04B(Rx) 02C080(Rx) 02C083(Wx) 02C0A2(Rx) 02C0A5(Wx) 02E026(Wx) 03E03F(Wi) 03E848(Wx) 03FEDD(Wx) 
; ram_051C                              = $051C ; 0014EE(W)  0015AF(R)  0015B6(W)  001635(R)  00163C(W)  0016CC(W)  03E03F(Wi) 03E848(Wx) 
; ram_051D                              = $051D ; 00B526(Wx) 038CA9(Wx) 03AFC1(Wx) 03B15A(Wx) 03B293(Rx) 03B29C(Rx) 03B2AC(Rx) 03B2B5(Rx) 03B408(Wx) 03B4C4(Wx) 03B521(Wx) 03B557(Rx) 03B55A(Wx) 03B621(Wx) 03B6AB(Wx) 03B6E7(Wx) 03B77F(Wx) 03B855(Wx) 03B8E1(Rx) 03B8E4(Wx) 03B916(Rx) 03B92F(Rx) 03E03F(Wi) 03E848(Wx) 
; ram_051E                              = $051E ; 00B526(Wx) 038CA9(Wx) 03AFC1(Wx) 03B15A(Wx) 03B293(Rx) 03B29C(Rx) 03B2AC(Rx) 03B2B5(Rx) 03B521(Wx) 03B557(Rx) 03B55A(Wx) 03B77F(Wx) 03B855(Wx) 03B8E1(Rx) 03B8E4(Wx) 03B916(Rx) 03B92F(Rx) 03E03F(Wi) 03E848(Wx) 
; ram_051F                              = $051F ; 00B526(Wx) 038CA9(Wx) 03AFC1(Wx) 03B15A(Wx) 03B293(Rx) 03B29C(Rx) 03B2AC(Rx) 03B2B5(Rx) 03B521(Wx) 03B557(Rx) 03B55A(Wx) 03B855(Wx) 03B8E1(Rx) 03B8E4(Wx) 03B916(Rx) 03B92F(Rx) 03E03F(Wi) 03E848(Wx) 



; 
ram_obj_spd_Y_lo                        = $0520 ; 001119(W)  002C29(W)  002D0A(R)  038064(R)  038069(W)  03807D(R)  038083(W)  0380C0(R)  0380C5(W)  03824C(W)  0385DD(R)  0386E6(R)  038733(R)  038ACE(W)  038D0C(R)  038FB8(W)  038FC8(W)  038FF2(W)  039002(W)  03907B(W)  03908C(W)  0390AA(W)  0390C3(W)  039114(W)  039125(W)  039143(W)  03915E(W)  03932F(W)  039367(W)  03937E(W)  0398AB(R)  0398B0(W)  0398C1(W)  0398EF(Wx) 0398F8(Wx) 039913(Wx) 039955(R)  039A40(R)  039B2B(R)  039BD1(W)  03A139(W)  03A158(W)  03A18F(W)  03A272(W)  03A311(W)  03A33D(W)  03A70A(W)  03A788(W)  03A948(R)  03A957(R)  03A95C(W)  03A966(W)  03A979(R)  03A97E(W)  03A985(W)  03A997(R)  03A99C(W)  03A9A4(R)  03A9BB(W)  03A9D1(R)  03A9D6(W)  03AB3D(R)  03ABA7(W)  03AC54(R)  03ACC5(W)  03AD0B(W)  03ADE9(R)  03ADEE(W)  03C979(R)  03D10C(R)  03D114(R)  03D42A(R)  03E03F(Wi) 03E848(Wx) 
    ram_plr_spd_Y_lo                        = $0520 ; 
; ram_0521                              = $0521 ; 003889(Wx) 0038AC(Rx) 0038E1(Wx) 0057A8(Wx) 0057C4(Rx) 0057C9(Wx) 005804(Wx) 0058A7(Rx) 0058AC(Wx) 005E03(Rx) 008A91(Wx) 008ECC(Wx) 009588(Wx) 00959E(Rx) 0095A3(Wx) 0095A6(Rx) 0095BE(Rx) 0095D0(Wx) 009749(Wx) 00AB06(Rx) 00AB0B(Wx) 00AC0C(Wx) 00AE48(Rx) 00AE4E(Wx) 00AE52(Rx) 00AF01(Rx) 00AF04(Wx) 00AF18(Wx) 00AF5C(Rx) 00AF65(Rx) 00C190(Wx) 00C2FE(Wx) 00C4D3(Wy) 00C81A(Wx) 00C88B(Wx) 00C8D1(Wx) 00D0F5(Wx) 00D62F(Wx) 00DA8A(Rx) 00DA8F(Wx) 00DBA7(Wx) 00DBCE(Rx) 00DBDE(Rx) 00DBE1(Wx) 00DF68(Rx) 0255D5(Wx) 025622(Wx) 02565C(Wx) 025672(Rx) 025677(Wx) 02567A(Rx) 0256C8(Rx) 0256DA(Wx) 0256F8(Wx) 0259D4(Wx) 025EA1(Wy) 027133(R)  02714D(R)  0271E1(Ry) 027324(Rx) 02740A(Wy) 027AB8(Wx) 02920B(Wx) 02C040(Rx) 02C078(Rx) 02C07B(Wx) 02C098(Rx) 02C09B(Wx) 02C0BC(Rx) 02C0BF(Wx) 02C528(Wx) 02C592(Rx) 02C5C4(Rx) 02C5D2(Rx) 02C5FE(Rx) 02C67D(Wx) 02C701(Rx) 02C706(Wx) 02C75B(Wx) 02C7E4(Wx) 02C817(Wx) 02C858(Wx) 02C882(Wx) 02C8B7(Rx) 02C8EE(Rx) 02C964(Wx) 02CC45(Wx) 02CDF8(Wx) 02D1A7(Wx) 02D2FE(Wx) 02D318(Rx) 02D323(Wx) 02D479(Wx) 02D4AB(Rx) 02D4FA(Wx) 02D518(Wx) 02D5AA(Wx) 02D5CA(Rx) 02D5D3(Wx) 02D6ED(Wx) 02D722(Wx) 02D8A5(Wx) 02D8F2(Wx) 02D9BD(Wx) 02DECF(Wx) 02E053(Rx) 02E05C(Wx) 02E0F2(Wx) 0328B4(Wx) 0398EF(Wx) 0398F8(Wx) 039913(Wx) 03E03F(Wi) 03E848(Wx) 03FEE0(Wx) 
; ram_0522                              = $0522 ; 003889(Wx) 0038AC(Rx) 0038E1(Wx) 005804(Wx) 0058A7(Rx) 0058AC(Wx) 005CFA(Wx) 005E03(Rx) 008A91(Wx) 009257(Wx) 009588(Wx) 00959E(Rx) 0095A3(Wx) 0095A6(Rx) 0095BE(Rx) 0095D0(Wx) 009749(Wx) 00AB06(Rx) 00AB0B(Wx) 00AC0C(Wx) 00AE48(Rx) 00AE4E(Wx) 00AE52(Rx) 00AF01(Rx) 00AF04(Wx) 00AF18(Wx) 00AF5C(Rx) 00AF65(Rx) 00C190(Wx) 00C2FE(Wx) 00C5AD(Wx) 00C5E3(Wx) 00C81A(Wx) 00C88B(Wx) 00C8D1(Wx) 00D62F(Wx) 00DBCE(Rx) 00DBDE(Rx) 00DBE1(Wx) 0255D5(Wx) 025622(Wx) 02565C(Wx) 025672(Rx) 025677(Wx) 02567A(Rx) 0256AE(Wx) 0256C8(Rx) 0256DA(Wx) 0259D4(Wx) 025C21(Rx) 025C24(Wx) 025EA1(Wy) 027125(Rx) 027150(Wx) 0271CC(Wx) 0271E1(Ry) 02740A(Wy) 02920B(Wx) 02926A(Wx) 02C040(Rx) 02C078(Rx) 02C07B(Wx) 02C098(Rx) 02C09B(Wx) 02C0BC(Rx) 02C0BF(Wx) 02C528(Wx) 02C592(Rx) 02C5C4(Rx) 02C5D2(Rx) 02C5FE(Rx) 02C67D(Wx) 02C701(Rx) 02C706(Wx) 02C75B(Wx) 02C7E4(Wx) 02C817(Wx) 02C858(Wx) 02C882(Wx) 02C8B7(Rx) 02C8EE(Rx) 02C964(Wx) 02CC45(Wx) 02CDF8(Wx) 02D2FE(Wx) 02D318(Rx) 02D323(Wx) 02D479(Wx) 02D4AB(Rx) 02D4FA(Wx) 02D518(Wx) 02D574(Rx) 02D5AA(Wx) 02D5CA(Rx) 02D5D3(Wx) 02D6ED(Wx) 02D722(Wx) 02D8A5(Wx) 02D8F2(Wx) 02D9BD(Wx) 02DAE8(Wy) 02DECF(Wx) 02E053(Rx) 02E05C(Wx) 02E0F2(Wx) 039089(Rx) 0390A7(Rx) 039122(Rx) 03937B(Rx) 03AFD3(Wx) 03B4F0(Rx) 03B4F5(Wx) 03B627(Wx) 03B6B1(Wx) 03B94C(Rx) 03E03F(Wi) 03E848(Wx) 03FEE0(Wx) 
; ram_0523                              = $0523 ; 003889(Wx) 0038AC(Rx) 0038E1(Wx) 0055FE(Wx) 005637(Rx) 00563C(Wx) 0057A8(Wx) 0057C4(Rx) 0057C9(Wx) 005804(Wx) 0058A7(Rx) 0058AC(Wx) 005E03(Rx) 008A91(Wx) 009257(Wx) 009588(Wx) 00959E(Rx) 0095A3(Wx) 0095A6(Rx) 0095BE(Rx) 0095D0(Wx) 009749(Wx) 00AC0C(Wx) 00AE48(Rx) 00AE4E(Wx) 00AE52(Rx) 00AF01(Rx) 00AF04(Wx) 00AF18(Wx) 00AF5C(Rx) 00AF65(Rx) 00C4D3(Wy) 00D62F(Wx) 00DBCE(Rx) 00DBDE(Rx) 00DBE1(Wx) 025622(Wx) 025672(Rx) 025677(Wx) 02567A(Rx) 0256C8(Rx) 0256DA(Wx) 0259D4(Wx) 025EA1(Wy) 027125(Rx) 027150(Wx) 0271CC(Wx) 0271E1(Ry) 02740A(Wy) 02920B(Wx) 02926A(Wx) 02B210(Wx) 02B244(Rx) 02C040(Rx) 02C078(Rx) 02C07B(Wx) 02C098(Rx) 02C09B(Wx) 02C0BC(Rx) 02C0BF(Wx) 02C528(Wx) 02C592(Rx) 02C5C4(Rx) 02C67D(Wx) 02C701(Rx) 02C706(Wx) 02C75B(Wx) 02C7E4(Wx) 02C817(Wx) 02C8EE(Rx) 02CC45(Wx) 02CDF8(Wx) 02D518(Wx) 02D5AA(Wx) 02D5CA(Rx) 02D5D3(Wx) 02D6ED(Wx) 02D8A5(Wx) 02DAE8(Wy) 02DECF(Wx) 02E053(Rx) 02E05C(Wx) 02E0F2(Wx) 033023(Wx) 0330AD(Wx) 0330DC(Wx) 033138(Wx) 03314F(Wx) 039089(Rx) 03937B(Rx) 03E03F(Wi) 03E848(Wx) 03FEE0(Wx) 
; ram_0524                              = $0524 ; 003889(Wx) 0038AC(Rx) 0038E1(Wx) 0055FE(Wx) 005637(Rx) 00563C(Wx) 005804(Wx) 0058A7(Rx) 0058AC(Wx) 005951(Wx) 005967(Rx) 00596C(Wx) 005E03(Rx) 008A91(Wx) 009257(Wx) 009588(Wx) 00959E(Rx) 0095A3(Wx) 0095A6(Rx) 0095BE(Rx) 0095D0(Wx) 009749(Wx) 00AB06(Rx) 00AB0B(Wx) 00AC0C(Wx) 00AE48(Rx) 00AE4E(Wx) 00AE52(Rx) 00AF01(Rx) 00AF04(Wx) 00AF18(Wx) 00AF5C(Rx) 00AF65(Rx) 00C4D3(Wy) 00DBCE(Rx) 00DBDE(Rx) 00DBE1(Wx) 0255D5(Wx) 025622(Wx) 025672(Rx) 025677(Wx) 02567A(Rx) 0256C8(Rx) 0256DA(Wx) 0259D4(Wx) 025EA1(Wy) 027125(Rx) 027150(Wx) 0271CC(Wx) 0271E1(Ry) 02920B(Wx) 02926A(Wx) 02C040(Rx) 02C098(Rx) 02C09B(Wx) 02C0BC(Rx) 02C0BF(Wx) 02C528(Wx) 02C592(Rx) 02C67D(Wx) 02C6C2(Wx) 02C701(Rx) 02C706(Wx) 02C75B(Wx) 02C78B(Wx) 02C7E4(Wx) 02C817(Wx) 02C8EE(Rx) 02CDF8(Wx) 02D269(Wx) 02D6ED(Wx) 02D722(Wx) 02D8A5(Wx) 02DAE8(Wy) 02DECF(Wx) 02E053(Rx) 02E05C(Wx) 02E0F2(Wx) 033023(Wx) 0330AD(Wx) 0330DC(Wx) 033138(Wx) 03314F(Wx) 039089(Rx) 039122(Rx) 039140(Rx) 03937B(Rx) 03E03F(Wi) 03E848(Wx) 03FEE0(Wx) 
; ram_0525                              = $0525 ; 003889(Wx) 0038AC(Rx) 0038E1(Wx) 0055FE(Wx) 005637(Rx) 00563C(Wx) 0057A8(Wx) 0057C4(Rx) 0057C9(Wx) 005E03(Rx) 008A91(Wx) 009257(Wx) 009588(Wx) 00959E(Rx) 0095A3(Wx) 0095A6(Rx) 0095BE(Rx) 0095D0(Wx) 009749(Wx) 00AB06(Rx) 00AB0B(Wx) 00AE48(Rx) 00AE4E(Wx) 00AE52(Rx) 00AF01(Rx) 00AF04(Wx) 00AF18(Wx) 00AF5C(Rx) 00AF65(Rx) 00C4D3(Wy) 00DBCE(Rx) 00DBDE(Rx) 00DBE1(Wx) 017D37(Wx) 025622(Wx) 025672(Rx) 025677(Wx) 02567A(Rx) 0256C8(Rx) 0256DA(Wx) 0259D4(Wx) 025EA1(Wy) 027125(Rx) 027150(Wx) 0271CC(Wx) 0271E1(Ry) 02920B(Wx) 02C040(Rx) 02C098(Rx) 02C09B(Wx) 02C0BC(Rx) 02C0BF(Wx) 02C528(Wx) 02C592(Rx) 02C67D(Wx) 02C6C2(Wx) 02C701(Rx) 02C706(Wx) 02C75B(Wx) 02C78B(Wx) 02C7E4(Wx) 02C817(Wx) 02C8EE(Rx) 02CDF8(Wx) 02D6ED(Wx) 02D722(Wx) 02D8A5(Wx) 02DAE8(Wy) 02DECF(Wx) 02E053(Rx) 02E05C(Wx) 02E0F2(Wx) 039089(Rx) 0390A7(Rx) 039122(Rx) 039140(Rx) 03937B(Rx) 03E03F(Wi) 03E848(Wx) 03FEE0(Wx) 
; ram_0526                              = $0526 ; 0057A8(Wx) 0057C4(Rx) 0057C9(Wx) 005E03(Rx) 008ECC(Wx) 009257(Wx) 009588(Wx) 00959E(Rx) 0095A3(Wx) 0095A6(Rx) 0095BE(Rx) 0095D0(Wx) 009749(Wx) 00AF01(Rx) 00AF04(Wx) 00AF18(Wx) 00C4D3(Wy) 017D37(Wx) 025622(Wx) 025672(Rx) 025677(Wx) 02567A(Rx) 0256C8(Rx) 0256DA(Wx) 0259D4(Wx) 025EA1(Wy) 027125(Rx) 027150(Wx) 0271CC(Wx) 0271E1(Ry) 02920B(Wx) 02C040(Rx) 02C098(Rx) 02C09B(Wx) 02C0BC(Rx) 02C0BF(Wx) 02C67D(Wx) 02C6C2(Wx) 02C701(Rx) 02C706(Wx) 02C75B(Wx) 02CDF8(Wx) 02D8A5(Wx) 02DAE8(Wy) 02DECF(Wx) 02E053(Rx) 02E05C(Wx) 02E0F2(Wx) 039089(Rx) 039122(Rx) 039140(Rx) 03937B(Rx) 03E03F(Wi) 03E848(Wx) 03FEE0(Wx) 
; ram_0527                              = $0527 ; 0057A8(Wx) 0057C4(Rx) 0057C9(Wx) 005E03(Rx) 009257(Wx) 009588(Wx) 00959E(Rx) 0095A3(Wx) 0095A6(Rx) 0095BE(Rx) 0095D0(Wx) 009749(Wx) 00AF01(Rx) 00AF04(Wx) 00AF18(Wx) 00C4D3(Wy) 017D37(Wx) 025622(Wx) 025672(Rx) 025677(Wx) 02567A(Rx) 0256C8(Rx) 0256DA(Wx) 0259D4(Wx) 025EA1(Wy) 027125(Rx) 027150(Wx) 0271CC(Wx) 0271E1(Ry) 0274A7(Wy) 02920B(Wx) 02C040(Rx) 02C098(Rx) 02C09B(Wx) 02C67D(Wx) 02C701(Rx) 02C706(Wx) 02C75B(Wx) 02D8A5(Wx) 02DAE8(Wy) 02E053(Rx) 02E05C(Wx) 02E0F2(Wx) 039089(Rx) 039122(Rx) 039140(Rx) 03937B(Rx) 03E03F(Wi) 03E848(Wx) 03FEE0(Wx) 
; ram_0528                              = $0528 ; 0057A8(Wx) 0057C4(Rx) 0057C9(Wx) 005E03(Rx) 009257(Wx) 009588(Wx) 00959E(Rx) 0095A3(Wx) 0095A6(Rx) 0095BE(Rx) 0095D0(Wx) 009749(Wx) 00AF01(Rx) 00AF04(Wx) 00AF18(Wx) 00C4D3(Wy) 00DBCE(Rx) 00DBDE(Rx) 00DBE1(Wx) 017D37(Wx) 025622(Wx) 025672(Rx) 025677(Wx) 02567A(Rx) 0256C8(Rx) 0256DA(Wx) 0259D4(Wx) 025EA1(Wy) 027125(Rx) 027150(Wx) 0271CC(Wx) 0271E1(Ry) 0274A7(Wy) 02C040(Rx) 02C098(Rx) 02C09B(Wx) 02C0BC(Rx) 02C0BF(Wx) 02C67D(Wx) 02C701(Rx) 02C706(Wx) 02C75B(Wx) 02C817(Wx) 02C8EE(Rx) 02D722(Wx) 02D9BD(Wx) 02E053(Rx) 02E05C(Wx) 02E0F2(Wx) 039089(Rx) 039122(Rx) 039140(Rx) 03937B(Rx) 03E03F(Wi) 03E848(Wx) 03FEE0(Wx) 
; ram_0529                              = $0529 ; 0057A8(Wx) 0057C4(Rx) 0057C9(Wx) 005E03(Rx) 009257(Wx) 009588(Wx) 00959E(Rx) 0095A3(Wx) 0095A6(Rx) 0095BE(Rx) 0095D0(Wx) 009749(Wx) 00AB06(Rx) 00AB0B(Wx) 00AF18(Wx) 017D37(Wx) 025622(Wx) 025672(Rx) 025677(Wx) 02567A(Rx) 0256C8(Rx) 0256DA(Wx) 0259D4(Wx) 025EA1(Wy) 027125(Rx) 027150(Wx) 0271CC(Wx) 0271E1(Ry) 0274A7(Wy) 02C040(Rx) 02C078(Rx) 02C07B(Wx) 02C098(Rx) 02C09B(Wx) 02C67D(Wx) 02C701(Rx) 02C706(Wx) 02C75B(Wx) 02CDF8(Wx) 02CF8F(Wx) 02D5F8(Wx) 02D7C2(Wx) 02D9BD(Wx) 039089(Rx) 039122(Rx) 039140(Rx) 03937B(Rx) 03E03F(Wi) 03E848(Wx) 03FEE0(Wx) 
; ram_052A                              = $052A ; 0057A8(Wx) 0057C4(Rx) 0057C9(Wx) 005E03(Rx) 009257(Wx) 009588(Wx) 00959E(Rx) 0095A3(Wx) 0095A6(Rx) 0095BE(Rx) 0095D0(Wx) 00AF18(Wx) 017D37(Wx) 025622(Wx) 025672(Rx) 025677(Wx) 02567A(Rx) 0256C8(Rx) 0256DA(Wx) 0259D4(Wx) 025EA1(Wy) 027125(Rx) 027150(Wx) 0271CC(Wx) 0271E1(Ry) 0274A7(Wy) 02C040(Rx) 02C078(Rx) 02C07B(Wx) 02C098(Rx) 02C09B(Wx) 02C0BC(Rx) 02C0BF(Wx) 02C67D(Wx) 02C701(Rx) 02C706(Wx) 02C75B(Wx) 02CDF8(Wx) 02CF8F(Wx) 02D269(Wx) 02D5F8(Wx) 02D722(Wx) 02D7C2(Wx) 02E053(Rx) 02E0F2(Wx) 039122(Rx) 039140(Rx) 03E03F(Wi) 03E848(Wx) 03FEE0(Wx) 
; ram_052B                              = $052B ; 0057A8(Wx) 0057C4(Rx) 0057C9(Wx) 005E03(Rx) 009257(Wx) 009588(Wx) 00959E(Rx) 0095A3(Wx) 0095A6(Rx) 0095BE(Rx) 0095D0(Wx) 009749(Wx) 00AF18(Wx) 017D37(Wx) 025622(Wx) 025672(Rx) 025677(Wx) 02567A(Rx) 0256C8(Rx) 0256DA(Wx) 025EA1(Wy) 027125(Rx) 027150(Wx) 0271CC(Wx) 0271E1(Ry) 0274A7(Wy) 02C040(Rx) 02C078(Rx) 02C07B(Wx) 02C098(Rx) 02C09B(Wx) 02C67D(Wx) 02C701(Rx) 02C706(Wx) 02C75B(Wx) 02CDF8(Wx) 02CF8F(Wx) 02D269(Wx) 02D5F8(Wx) 02D7C2(Wx) 02E053(Rx) 02E0F2(Wx) 039089(Rx) 039122(Rx) 039140(Rx) 03937B(Rx) 03E03F(Wi) 03E848(Wx) 03FEE0(Wx) 
; ram_052C                              = $052C ; 009257(Wx) 009588(Wx) 00959E(Rx) 0095A3(Wx) 0095A6(Rx) 0095BE(Rx) 0095D0(Wx) 017D37(Wx) 025622(Wx) 025672(Rx) 025677(Wx) 02567A(Rx) 0256C8(Rx) 0256DA(Wx) 025EA1(Wy) 027125(Rx) 027150(Wx) 0271CC(Wx) 0274A7(Wy) 02C040(Rx) 02C078(Rx) 02C07B(Wx) 02C098(Rx) 02C09B(Wx) 02C67D(Wx) 02C701(Rx) 02C706(Wx) 02C75B(Wx) 02CDF8(Wx) 02CF8F(Wx) 02D5F8(Wx) 02D7C2(Wx) 039089(Rx) 039122(Rx) 03937B(Rx) 03E03F(Wi) 03E848(Wx) 03FEE0(Wx) 
; ram_052D                              = $052D ; 009257(Wx) 02C040(Rx) 02C098(Rx) 02C09B(Wx) 02C67D(Wx) 02C701(Rx) 02C706(Wx) 02E053(Rx) 02E05C(Wx) 02E0F2(Wx) 03E03F(Wi) 03E848(Wx) 03FEE0(Wx) 
; ram_052E                              = $052E ; 009257(Wx) 02C040(Rx) 02C098(Rx) 02C09B(Wx) 02C67D(Wx) 02C701(Rx) 02C706(Wx) 02E053(Rx) 02E05C(Wx) 02E0F2(Wx) 039122(Rx) 03937B(Rx) 03E03F(Wi) 03E848(Wx) 03FEE0(Wx) 
; ram_052F                              = $052F ; 009257(Wx) 02C040(Rx) 02C098(Rx) 02C09B(Wx) 02E053(Rx) 02E05C(Wx) 02E0F2(Wx) 039089(Rx) 039122(Rx) 039140(Rx) 03937B(Rx) 03E03F(Wi) 03E848(Wx) 03FEE0(Wx) 
; ram_0530                              = $0530 ; 009257(Wx) 02C040(Rx) 02C098(Rx) 02C09B(Wx) 02E053(Rx) 02E05C(Wx) 02E0F2(Wx) 039089(Rx) 039122(Rx) 03937B(Rx) 03E03F(Wi) 03E848(Wx) 03FEE0(Wx) 
; ram_0531                              = $0531 ; 02C040(Rx) 02C098(Rx) 02C09B(Wx) 02E053(Rx) 02E05C(Wx) 02E0F2(Wx) 03E03F(Wi) 03E848(Wx) 03FEE0(Wx) 
; ram_0532                              = $0532 ; 02C040(Rx) 02C098(Rx) 02C09B(Wx) 02E053(Rx) 02E05C(Wx) 02E0F2(Wx) 03E03F(Wi) 03E848(Wx) 03FEE0(Wx) 
; ram_0533                              = $0533 ; 03E03F(Wi) 03E848(Wx) 
; ram_0534                              = $0534 ; 00B52C(Wx) 038CAF(Wx) 03AFD3(Wx) 03B1F0(Wx) 03B212(Wx) 03B21A(Rx) 03B269(Wx) 03B271(Wx) 03B4CA(Wx) 03B4F0(Rx) 03B4F5(Wx) 03B627(Wx) 03B6B1(Wx) 03B6EF(Wx) 03B784(Wx) 03B7B4(Rx) 03B7B9(Wx) 03B85B(Wx) 03B94C(Rx) 03B9EC(Rx) 03B9F1(Wx) 03E03F(Wi) 03E848(Wx) 
; ram_0535                              = $0535 ; 00B52C(Wx) 038CAF(Wx) 03AFD3(Wx) 03B1F0(Wx) 03B212(Wx) 03B21A(Rx) 03B269(Wx) 03B271(Wx) 03B784(Wx) 03B7B4(Rx) 03B7B9(Wx) 03B85B(Wx) 03B94C(Rx) 03B9EC(Rx) 03B9F1(Wx) 03E03F(Wi) 03E848(Wx) 
; ram_0536                              = $0536 ; 00B52C(Wx) 038CAF(Wx) 03AFD3(Wx) 03B1F0(Wx) 03B212(Wx) 03B21A(Rx) 03B269(Wx) 03B271(Wx) 03B85B(Wx) 03B94C(Rx) 03B9EC(Rx) 03B9F1(Wx) 03E03F(Wi) 03E848(Wx) 



; fractional
ram_obj_spd_Y_fr                        = $0537 ; 00111C(W)  002C2C(W)  002D01(R)  03805B(R)  038061(W)  038073(R)  03807A(W)  0380B6(R)  0380BD(W)  038251(W)  0386EB(R)  03872A(R)  038AD1(W)  038FB3(W)  038FC3(W)  038FED(W)  038FFD(W)  03906A(W)  039076(W)  039094(W)  0390B2(W)  0390C0(W)  039106(W)  03910F(W)  03912D(W)  03914B(W)  03915B(W)  03932C(W)  039364(W)  039386(W)  0398A2(R)  0398A8(W)  0398C6(W)  0398DA(Wx) 039BD7(W)  03A124(W)  03A277(W)  03A316(W)  03A707(W)  03A78D(W)  03A94D(R)  03A954(W)  03A969(W)  03A96F(R)  03A976(W)  03A988(W)  03A98D(R)  03A994(W)  03A9B0(R)  03A9B5(W)  03A9C7(R)  03A9CE(W)  03A9E3(R)  03A9E8(W)  03AB42(R)  03ABA4(W)  03ACCB(W)  03AD0E(W)  03ADE0(R)  03ADE6(W)  03C974(R)  03D10F(R)  03E03F(Wi) 03E848(Wx) 
    ram_plr_spd_Y_fr                        = $0537 ; 
; ram_0538                              = $0538 ; 003881(Rx) 003884(Wx) 0038A3(Rx) 0038E8(Wx) 0057A2(Wx) 0057BB(Rx) 0057C1(Wx) 005801(Wx) 00589E(Rx) 0058A4(Wx) 005DFA(Rx) 008A94(Wx) 008ED4(Wx) 009582(Wx) 009595(Rx) 00959B(Wx) 0095D5(Wx) 00974F(Wx) 00AAFE(Rx) 00AB03(Wx) 00AC09(Wx) 00AE3F(Rx) 00AE45(Wx) 00AEF9(Rx) 00AEFC(Wx) 00AF12(Wx) 00AF53(Rx) 00C4D6(Wy) 00C81F(Wx) 00C88E(Wx) 00D0F8(Wx) 00D634(Wx) 00DA82(Rx) 00DA87(Wx) 00DBA1(Wx) 00DBD6(Rx) 00DBD9(Wx) 0255DA(Wx) 02561C(Wx) 025656(Wx) 025669(Rx) 02566F(Wx) 0256DF(Wx) 0256FB(Wx) 0259D9(Wx) 025EA4(Wy) 027136(R)  027156(R)  0271E7(Ry) 02740D(Wy) 027AB2(Wx) 02920E(Wx) 02C037(Rx) 02C070(Rx) 02C073(Wx) 02C090(Rx) 02C093(Wx) 02C0B4(Rx) 02C0B7(Wx) 02C52C(Wx) 02C683(Wx) 02C6F8(Rx) 02C6FE(Wx) 02C761(Wx) 02C852(Wx) 02CC4B(Wx) 02CDFD(Wx) 02D306(Wx) 02D328(Wx) 02D47F(Wx) 02D5B0(Wx) 02D5D8(Wx) 02D6F3(Wx) 02D728(Wx) 02D8AB(Wx) 02D8F8(Wx) 02DED5(Wx) 02E061(Wx) 02E0F8(Wx) 0328B8(Wx) 0398DA(Wx) 03E03F(Wi) 03E848(Wx) 03FEE3(Wx) 
; ram_0539                              = $0539 ; 003881(Rx) 003884(Wx) 0038A3(Rx) 0038E8(Wx) 005801(Wx) 00589E(Rx) 0058A4(Wx) 005CFD(Wx) 005DFA(Rx) 008A94(Wx) 00925F(Wx) 009582(Wx) 009595(Rx) 00959B(Wx) 0095D5(Wx) 00974F(Wx) 00AAFE(Rx) 00AB03(Wx) 00AC09(Wx) 00AE3F(Rx) 00AE45(Wx) 00AEF9(Rx) 00AEFC(Wx) 00AF12(Wx) 00AF53(Rx) 00C5B0(Wx) 00C81F(Wx) 00C88E(Wx) 00D634(Wx) 00DBD6(Rx) 00DBD9(Wx) 0255DA(Wx) 02561C(Wx) 025656(Wx) 025669(Rx) 02566F(Wx) 0256B1(Wx) 0256DF(Wx) 0259D9(Wx) 025C19(Rx) 025C1C(Wx) 025EA4(Wy) 027128(Rx) 027159(Wx) 0271D2(Wx) 0271E7(Ry) 02740D(Wy) 02920E(Wx) 02926D(Wx) 02C037(Rx) 02C070(Rx) 02C073(Wx) 02C090(Rx) 02C093(Wx) 02C0B4(Rx) 02C0B7(Wx) 02C52C(Wx) 02C683(Wx) 02C6F8(Rx) 02C6FE(Wx) 02C761(Wx) 02C852(Wx) 02CC4B(Wx) 02CDFD(Wx) 02D306(Wx) 02D328(Wx) 02D47F(Wx) 02D5B0(Wx) 02D5D8(Wx) 02D6F3(Wx) 02D728(Wx) 02D8AB(Wx) 02D8F8(Wx) 02DAEB(Wy) 02DED5(Wx) 02E061(Wx) 02E0F8(Wx) 03AFCD(Wx) 03B4E7(Rx) 03B4ED(Wx) 03B62D(Wx) 03B6B7(Wx) 03B943(Rx) 03E03F(Wi) 03E848(Wx) 03FEE3(Wx) 
; ram_053A                              = $053A ; 003881(Rx) 003884(Wx) 0038A3(Rx) 0038E8(Wx) 005601(Wx) 00562E(Rx) 005634(Wx) 0057A2(Wx) 0057BB(Rx) 0057C1(Wx) 005801(Wx) 00589E(Rx) 0058A4(Wx) 005DFA(Rx) 008A94(Wx) 00925F(Wx) 009582(Wx) 009595(Rx) 00959B(Wx) 0095D5(Wx) 00974F(Wx) 00AC09(Wx) 00AE3F(Rx) 00AE45(Wx) 00AEF9(Rx) 00AEFC(Wx) 00AF12(Wx) 00AF53(Rx) 00C4D6(Wy) 00D634(Wx) 00DBD6(Rx) 00DBD9(Wx) 02561C(Wx) 025669(Rx) 02566F(Wx) 0256DF(Wx) 0259D9(Wx) 025EA4(Wy) 027128(Rx) 027159(Wx) 0271D2(Wx) 0271E7(Ry) 02740D(Wy) 02920E(Wx) 02926D(Wx) 02B218(Wx) 02B23B(Rx) 02C037(Rx) 02C070(Rx) 02C073(Wx) 02C090(Rx) 02C093(Wx) 02C0B4(Rx) 02C0B7(Wx) 02C52C(Wx) 02C683(Wx) 02C6F8(Rx) 02C6FE(Wx) 02C761(Wx) 02CC4B(Wx) 02CDFD(Wx) 02D5B0(Wx) 02D5D8(Wx) 02D6F3(Wx) 02D8AB(Wx) 02DAEB(Wy) 02DED5(Wx) 02E061(Wx) 02E0F8(Wx) 03301E(Wx) 0330B0(Wx) 0330D7(Wx) 03313B(Wx) 033154(Wx) 03E03F(Wi) 03E848(Wx) 03FEE3(Wx) 
; ram_053B                              = $053B ; 003881(Rx) 003884(Wx) 0038A3(Rx) 0038E8(Wx) 005601(Wx) 00562E(Rx) 005634(Wx) 005801(Wx) 00589E(Rx) 0058A4(Wx) 005954(Wx) 00595E(Rx) 005964(Wx) 005DFA(Rx) 008A94(Wx) 00925F(Wx) 009582(Wx) 009595(Rx) 00959B(Wx) 0095D5(Wx) 00974F(Wx) 00AAFE(Rx) 00AB03(Wx) 00AC09(Wx) 00AE3F(Rx) 00AE45(Wx) 00AEF9(Rx) 00AEFC(Wx) 00AF12(Wx) 00AF53(Rx) 00C4D6(Wy) 00DBD6(Rx) 00DBD9(Wx) 0255DA(Wx) 02561C(Wx) 025669(Rx) 02566F(Wx) 0256DF(Wx) 0259D9(Wx) 025EA4(Wy) 027128(Rx) 027159(Wx) 0271D2(Wx) 0271E7(Ry) 02920E(Wx) 02926D(Wx) 02C037(Rx) 02C090(Rx) 02C093(Wx) 02C0B4(Rx) 02C0B7(Wx) 02C52C(Wx) 02C683(Wx) 02C6C8(Wx) 02C6F8(Rx) 02C6FE(Wx) 02C761(Wx) 02C791(Wx) 02CDFD(Wx) 02D6F3(Wx) 02D728(Wx) 02D8AB(Wx) 02DAEB(Wy) 02DED5(Wx) 02E061(Wx) 02E0F8(Wx) 03301E(Wx) 0330B0(Wx) 0330D7(Wx) 03313B(Wx) 033154(Wx) 03E03F(Wi) 03E848(Wx) 03FEE3(Wx) 
; ram_053C                              = $053C ; 003881(Rx) 003884(Wx) 0038A3(Rx) 0038E8(Wx) 005601(Wx) 00562E(Rx) 005634(Wx) 0057A2(Wx) 0057BB(Rx) 0057C1(Wx) 005DFA(Rx) 008A94(Wx) 00925F(Wx) 009582(Wx) 009595(Rx) 00959B(Wx) 0095D5(Wx) 00974F(Wx) 00AAFE(Rx) 00AB03(Wx) 00AE3F(Rx) 00AE45(Wx) 00AEF9(Rx) 00AEFC(Wx) 00AF12(Wx) 00AF53(Rx) 00C4D6(Wy) 00DBD6(Rx) 00DBD9(Wx) 017D31(Wx) 02561C(Wx) 025669(Rx) 02566F(Wx) 0256DF(Wx) 0259D9(Wx) 025EA4(Wy) 027128(Rx) 027159(Wx) 0271D2(Wx) 0271E7(Ry) 02920E(Wx) 02C037(Rx) 02C090(Rx) 02C093(Wx) 02C0B4(Rx) 02C0B7(Wx) 02C52C(Wx) 02C683(Wx) 02C6C8(Wx) 02C6F8(Rx) 02C6FE(Wx) 02C761(Wx) 02C791(Wx) 02CDFD(Wx) 02D6F3(Wx) 02D728(Wx) 02D8AB(Wx) 02DAEB(Wy) 02DED5(Wx) 02E061(Wx) 02E0F8(Wx) 03E03F(Wi) 03E848(Wx) 03FEE3(Wx) 
; ram_053D                              = $053D ; 0057A2(Wx) 0057BB(Rx) 0057C1(Wx) 005DFA(Rx) 008ED4(Wx) 00925F(Wx) 009582(Wx) 009595(Rx) 00959B(Wx) 0095D5(Wx) 00974F(Wx) 00AEF9(Rx) 00AEFC(Wx) 00AF12(Wx) 00C4D6(Wy) 017D31(Wx) 02561C(Wx) 025669(Rx) 02566F(Wx) 0256DF(Wx) 0259D9(Wx) 025EA4(Wy) 027128(Rx) 027159(Wx) 0271D2(Wx) 0271E7(Ry) 02920E(Wx) 02C037(Rx) 02C090(Rx) 02C093(Wx) 02C0B4(Rx) 02C0B7(Wx) 02C683(Wx) 02C6C8(Wx) 02C6F8(Rx) 02C6FE(Wx) 02C761(Wx) 02CDFD(Wx) 02D8AB(Wx) 02DAEB(Wy) 02DED5(Wx) 02E061(Wx) 02E0F8(Wx) 03E03F(Wi) 03E848(Wx) 03FEE3(Wx) 
; ram_053E                              = $053E ; 0057A2(Wx) 0057BB(Rx) 0057C1(Wx) 005DFA(Rx) 00925F(Wx) 009582(Wx) 009595(Rx) 00959B(Wx) 0095D5(Wx) 00974F(Wx) 00AEF9(Rx) 00AEFC(Wx) 00AF12(Wx) 00C4D6(Wy) 017D31(Wx) 02561C(Wx) 025669(Rx) 02566F(Wx) 0256DF(Wx) 0259D9(Wx) 025EA4(Wy) 027128(Rx) 027159(Wx) 0271D2(Wx) 0271E7(Ry) 0274A2(Wy) 02920E(Wx) 02C037(Rx) 02C090(Rx) 02C093(Wx) 02C683(Wx) 02C6F8(Rx) 02C6FE(Wx) 02C761(Wx) 02D8AB(Wx) 02DAEB(Wy) 02E061(Wx) 02E0F8(Wx) 03E03F(Wi) 03E848(Wx) 03FEE3(Wx) 
; ram_053F                              = $053F ; 0057A2(Wx) 0057BB(Rx) 0057C1(Wx) 005DFA(Rx) 00925F(Wx) 009582(Wx) 009595(Rx) 00959B(Wx) 0095D5(Wx) 00974F(Wx) 00AEF9(Rx) 00AEFC(Wx) 00AF12(Wx) 00C4D6(Wy) 00DBD6(Rx) 00DBD9(Wx) 017D31(Wx) 02561C(Wx) 025669(Rx) 02566F(Wx) 0256DF(Wx) 0259D9(Wx) 025EA4(Wy) 027128(Rx) 027159(Wx) 0271D2(Wx) 0271E7(Ry) 0274A2(Wy) 02C037(Rx) 02C090(Rx) 02C093(Wx) 02C0B4(Rx) 02C0B7(Wx) 02C683(Wx) 02C6F8(Rx) 02C6FE(Wx) 02C761(Wx) 02D728(Wx) 02E061(Wx) 02E0F8(Wx) 03E03F(Wi) 03E848(Wx) 03FEE3(Wx) 
; ram_0540                              = $0540 ; 0057A2(Wx) 0057BB(Rx) 0057C1(Wx) 005DFA(Rx) 00925F(Wx) 009582(Wx) 009595(Rx) 00959B(Wx) 0095D5(Wx) 00974F(Wx) 00AAFE(Rx) 00AB03(Wx) 00AF12(Wx) 017D31(Wx) 02561C(Wx) 025669(Rx) 02566F(Wx) 0256DF(Wx) 0259D9(Wx) 025EA4(Wy) 027128(Rx) 027159(Wx) 0271D2(Wx) 0271E7(Ry) 0274A2(Wy) 02C037(Rx) 02C070(Rx) 02C073(Wx) 02C090(Rx) 02C093(Wx) 02C683(Wx) 02C6F8(Rx) 02C6FE(Wx) 02C761(Wx) 02CDFD(Wx) 02CF95(Wx) 02D5F2(Wx) 02D5FE(Wx) 02D7CF(Wx) 03E03F(Wi) 03E848(Wx) 03FEE3(Wx) 
; ram_0541                              = $0541 ; 0057A2(Wx) 0057BB(Rx) 0057C1(Wx) 005DFA(Rx) 00925F(Wx) 009582(Wx) 009595(Rx) 00959B(Wx) 0095D5(Wx) 00AF12(Wx) 017D31(Wx) 02561C(Wx) 025669(Rx) 02566F(Wx) 0256DF(Wx) 0259D9(Wx) 025EA4(Wy) 027128(Rx) 027159(Wx) 0271D2(Wx) 0271E7(Ry) 0274A2(Wy) 02C037(Rx) 02C070(Rx) 02C073(Wx) 02C090(Rx) 02C093(Wx) 02C0B4(Rx) 02C0B7(Wx) 02C683(Wx) 02C6F8(Rx) 02C6FE(Wx) 02C761(Wx) 02CDFD(Wx) 02CF95(Wx) 02D5F2(Wx) 02D5FE(Wx) 02D728(Wx) 02D7CF(Wx) 02E0F8(Wx) 03E03F(Wi) 03E848(Wx) 03FEE3(Wx) 
; ram_0542                              = $0542 ; 0057A2(Wx) 0057BB(Rx) 0057C1(Wx) 005DFA(Rx) 00925F(Wx) 009582(Wx) 009595(Rx) 00959B(Wx) 0095D5(Wx) 00974F(Wx) 00AF12(Wx) 017D31(Wx) 02561C(Wx) 025669(Rx) 02566F(Wx) 0256DF(Wx) 025EA4(Wy) 027128(Rx) 027159(Wx) 0271D2(Wx) 0271E7(Ry) 0274A2(Wy) 02C037(Rx) 02C070(Rx) 02C073(Wx) 02C090(Rx) 02C093(Wx) 02C683(Wx) 02C6F8(Rx) 02C6FE(Wx) 02C761(Wx) 02CDFD(Wx) 02CF95(Wx) 02D5F2(Wx) 02D5FE(Wx) 02D7CF(Wx) 02E0F8(Wx) 03E03F(Wi) 03E848(Wx) 03FEE3(Wx) 
; ram_0543                              = $0543 ; 00925F(Wx) 009582(Wx) 009595(Rx) 00959B(Wx) 0095D5(Wx) 017D31(Wx) 02561C(Wx) 025669(Rx) 02566F(Wx) 0256DF(Wx) 025EA4(Wy) 027128(Rx) 027159(Wx) 0271D2(Wx) 0274A2(Wy) 02C037(Rx) 02C070(Rx) 02C073(Wx) 02C090(Rx) 02C093(Wx) 02C683(Wx) 02C6F8(Rx) 02C6FE(Wx) 02C761(Wx) 02CDFD(Wx) 02CF95(Wx) 02D5F2(Wx) 02D5FE(Wx) 02D7CF(Wx) 03E03F(Wi) 03E848(Wx) 03FEE3(Wx) 
; ram_0544                              = $0544 ; 00925F(Wx) 02C037(Rx) 02C090(Rx) 02C093(Wx) 02C683(Wx) 02C6F8(Rx) 02C6FE(Wx) 02E061(Wx) 02E0F8(Wx) 03E03F(Wi) 03E848(Wx) 03FEE3(Wx) 
; ram_0545                              = $0545 ; 00925F(Wx) 02C037(Rx) 02C090(Rx) 02C093(Wx) 02C683(Wx) 02C6F8(Rx) 02C6FE(Wx) 02E061(Wx) 02E0F8(Wx) 03E03F(Wi) 03E848(Wx) 03FEE3(Wx) 
; ram_0546                              = $0546 ; 00925F(Wx) 02C037(Rx) 02C090(Rx) 02C093(Wx) 02E061(Wx) 02E0F8(Wx) 03E03F(Wi) 03E848(Wx) 03FEE3(Wx) 
; ram_0547                              = $0547 ; 00925F(Wx) 02C037(Rx) 02C090(Rx) 02C093(Wx) 02E061(Wx) 02E0F8(Wx) 03E03F(Wi) 03E848(Wx) 03FEE3(Wx) 
; ram_0548                              = $0548 ; 02C037(Rx) 02C090(Rx) 02C093(Wx) 02E061(Wx) 02E0F8(Wx) 03E03F(Wi) 03E848(Wx) 03FEE3(Wx) 
; ram_0549                              = $0549 ; 02C037(Rx) 02C090(Rx) 02C093(Wx) 02E061(Wx) 02E0F8(Wx) 03E03F(Wi) 03E848(Wx) 03FEE3(Wx) 
; ram_054A                              = $054A ; 03E03F(Wi) 03E848(Wx) 
; ram_054B                              = $054B ; 00B532(Wx) 038CB5(Wx) 03AFCD(Wx) 03B1F5(Wx) 03B224(Rx) 03B4D0(Wx) 03B4E7(Rx) 03B4ED(Wx) 03B62D(Wx) 03B6B7(Wx) 03B6EC(Wx) 03B789(Wx) 03B7AB(Rx) 03B7B1(Wx) 03B861(Wx) 03B943(Rx) 03B9E3(Rx) 03B9E9(Wx) 03E03F(Wi) 03E848(Wx) 
; ram_054C                              = $054C ; 00B532(Wx) 038CB5(Wx) 03AFCD(Wx) 03B1F5(Wx) 03B224(Rx) 03B789(Wx) 03B7AB(Rx) 03B7B1(Wx) 03B861(Wx) 03B943(Rx) 03B9E3(Rx) 03B9E9(Wx) 03E03F(Wi) 03E848(Wx) 
; ram_054D                              = $054D ; 00B532(Wx) 038CB5(Wx) 03AFCD(Wx) 03B1F5(Wx) 03B224(Rx) 03B861(Wx) 03B943(Rx) 03B9E3(Rx) 03B9E9(Wx) 03E03F(Wi) 03E848(Wx) 



; 
ram_obj_id                              = $054E ; 000011(R)  0005CB(R)  0011A8(R)  0011BC(W)  0013B6(R)  001611(W)  001623(R)  002A7B(R)  002A9D(R)  002C6F(R)  00345A(R)  0041D7(R)  0041E5(R)  004223(R)  004231(R)  00441F(R)  0047E6(R)  0047ED(W)  005C9F(R)  006B87(Wx) 006D46(Rx) 006E75(Wx) 00764E(Wx) 00B358(R)  01336A(R)  02B7F2(W)  02B9B1(W)  02E155(R)  02E163(R)  02E288(R)  02E32B(R)  02E339(R)  02E347(R)  02E355(R)  02E368(R)  02E381(R)  02E3DB(R)  02E3FF(Ry) 02F769(R)  03268B(R)  0327D0(R)  0328E9(R)  037777(R)  038109(R)  038111(R)  038186(R)  0381B9(R)  0381E1(R)  03821B(R)  038273(R)  03832C(R)  03838D(R)  038510(R)  0385FD(R)  0387CA(R)  038AA1(R)  038AD5(R)  038B41(R)  038D9F(R)  03951B(R)  039587(R)  0396B4(R)  0397A0(R)  03993A(R)  039988(R)  039AC0(R)  039B0C(R)  039B59(R)  03BB0B(Rx) 03BCA1(Ry) 03BEDB(R)  03E03F(Wi) 03E848(Wx) 03FA46(R)  
    ram_plr_id                              = $054E ; 
    ram_wpn_id                              = $054E ; 
; ram_054F                              = $054F ; 003555(Rx) 003729(Wx) 0037F9(Wx) 00380C(Rx) 004061(Rx) 0041AB(Rx) 0041BF(Wx) 004376(Rx) 004526(Rx) 004795(Rx) 0047A4(Rx) 0047C8(Rx) 0047DB(Rx) 0054D4(Rx) 005681(Wx) 00588C(Rx) 005A63(Rx) 005B56(Rx) 005B77(Rx) 005C0F(Rx) 005C77(Rx) 005C92(Wx) 005D30(Wy) 006B87(Wx) 006D46(Rx) 006E75(Wx) 00764E(Wx) 007CD2(Rx) 008022(Rx) 009155(Ry) 0094CF(Wx) 0094F4(Wx) 00A8DD(Wx) 00AA56(R)  00AADB(Wx) 00AB12(Wx) 00AB1F(Wx) 00AB31(Wx) 00AC4F(Wx) 00C501(Rx) 00C61C(Ry) 00C714(Wx) 00DB04(Rx) 0135D8(Wx) 01369F(Rx) 0136AD(Wx) 013721(Rx) 013766(Rx) 01377C(Rx) 013785(Wx) 0137B9(Wx) 0137F7(Rx) 013867(Rx) 01387D(Rx) 0138FD(Rx) 013961(Rx) 01396E(Wx) 013997(Rx) 0139C2(Rx) 013A09(Rx) 013AB7(Rx) 013AD0(Wx) 017BD6(Rx) 017BE4(Wx) 01BE75(Wx) 023E31(Rx) 023F4C(Wx) 024014(Rx) 02403F(Rx) 02404B(Rx) 02405E(Rx) 024091(Rx) 0240C3(Rx) 0240E4(Rx) 02414D(Rx) 024262(Rx) 024291(Rx) 0242CC(Rx) 02438E(Rx) 0243D5(Rx) 024447(Rx) 0244CF(Rx) 024550(Rx) 024646(Rx) 02474C(Wx) 0247EA(Wx) 0247F7(Rx) 0248D0(Wx) 02523B(Ry) 0252E9(Ry) 025311(Ry) 025381(Ry) 02568D(Rx) 0256FE(Rx) 026117(Ry) 0263D5(Rx) 02669B(Wy) 026992(Wx) 026AEE(Ry) 026B4F(Ry) 026B73(Ry) 026B8D(Wx) 026DDE(Ry) 026E5D(Ry) 026EA8(Ry) 026FD9(Wx) 0272CD(R)  02734F(Wx) 0273B4(Ry) 0273D4(Ry) 027BC3(Ry) 0281FB(Wx) 028395(Rx) 0284B0(Rx) 028702(Ry) 028710(Ry) 02876F(Ry) 028C49(Rx) 028D0B(Wx) 028E26(Wx) 028E76(Rx) 028EB6(Rx) 028F39(Rx) 028F42(Rx) 028F88(Rx) 0291ED(Wx) 029344(Rx) 02B6B2(Rx) 02B9E0(Wx) 02C26A(Rx) 02C32D(Rx) 02C38C(Rx) 02C59E(Rx) 02C88B(Wx) 02CB44(Wx) 02CB6C(Rx) 02CE07(Wx) 02CE48(Wx) 02D0E1(Ry) 02D100(Wy) 02DD02(Wx) 02DDD7(Rx) 02E07A(Rx) 02E0CB(Wx) 02E10D(Rx) 02E172(Rx) 02E1A5(Rx) 02E1B2(Wx) 02E1CC(Rx) 02E1E0(Wx) 02E205(Rx) 02E241(Rx) 02E269(Rx) 02E276(Wx) 02E2B1(Wx) 02E3BC(Wx) 02E3F0(Wx) 02E3FF(Ry) 02E40C(Ry) 02F12A(Rx) 02F194(Rx) 02F217(Rx) 02F234(Rx) 02F253(Rx) 02F26F(Rx) 02F34A(Rx) 02F393(Rx) 02F3B1(Rx) 02F475(Rx) 02F4D4(Rx) 02F51C(Rx) 02F550(Rx) 02F568(Rx) 02F5BE(Rx) 02F5E1(Rx) 02F647(Rx) 02F65C(Rx) 02F673(Rx) 02F689(Rx) 02F6F6(Rx) 02F863(Rx) 02F880(Rx) 032595(Wx) 0325A5(Wx) 032775(Wx) 032989(Wx) 0329DE(Wx) 037895(Rx) 0378A6(Wx) 038ECE(Rx) 038F4A(Rx) 03920D(Rx) 03B0C2(Ry) 03B124(Ry) 03B1AC(Ry) 03BB0B(Rx) 03BCA1(Ry) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 03FDFB(Rx) 03FE20(Rx) 03FE41(Rx) 03FE56(Rx) 03FE74(Rx) 03FECB(Rx) 03FF1C(Rx) 
; ram_0550                              = $0550 ; 0037F9(Wx) 00380C(Rx) 004061(Rx) 0041AB(Rx) 0041EA(Wx) 004376(Rx) 004526(Rx) 004795(Rx) 0047C8(Rx) 0054D4(Rx) 005681(Wx) 00588C(Rx) 005A63(Rx) 005C0F(Rx) 005C77(Rx) 005C92(Wx) 005CBF(Rx) 006B87(Wx) 006D46(Rx) 006E75(Wx) 00764E(Wx) 007CD2(Rx) 008022(Rx) 009155(Ry) 0094CF(Wx) 0094F4(Wx) 00A8DD(Wx) 00AADB(Wx) 00AB12(Wx) 00AB1F(Wx) 00AB64(Wx) 00AC4F(Wx) 00C501(Rx) 00C61C(Ry) 00C6CE(Wx) 00CAAE(Wx) 00CCA7(Wx) 00DB04(Rx) 00DB0E(Wx) 00DC6E(Ry) 00DC89(Wx) 00DD66(Wx) 00DD96(Wx) 0135D8(Wx) 01369F(Rx) 0136AD(Wx) 013721(Rx) 013766(Rx) 01377C(Rx) 013785(Wx) 0137B9(Wx) 0137F7(Rx) 013867(Rx) 01387D(Rx) 0138FD(Rx) 013961(Rx) 01396E(Wx) 013997(Rx) 0139C2(Rx) 013A09(Rx) 013AB7(Rx) 013AD0(Wx) 017BD6(Rx) 017BE4(Wx) 01BE75(Wx) 023E31(Rx) 023F4C(Wx) 024014(Rx) 02403F(Rx) 02404B(Rx) 02405E(Rx) 024091(Rx) 0240C3(Rx) 0240E4(Rx) 02414D(Rx) 024262(Rx) 024291(Rx) 0242CC(Rx) 02438E(Rx) 0243D5(Rx) 024447(Rx) 0244CF(Rx) 024550(Rx) 024646(Rx) 024732(Wx) 02474C(Wx) 0247EA(Wx) 0247F7(Rx) 0248D0(Wx) 02523B(Ry) 0252E9(Ry) 025311(Ry) 025381(Ry) 02539A(Ry) 026117(Ry) 026700(Wx) 026992(Wx) 026AEE(Ry) 026B4F(Ry) 026B73(Ry) 026B8D(Wx) 026DDE(Ry) 026E17(Wx) 026E5D(Ry) 026EA8(Ry) 026EB3(Wy) 027074(Rx) 0270FA(Wx) 02734F(Wx) 027380(Ry) 0273B4(Ry) 0273D4(Ry) 027BC3(Ry) 0281FB(Wx) 028395(Rx) 0284B0(Rx) 028702(Ry) 028710(Ry) 02876F(Ry) 028C49(Rx) 028E26(Wx) 028E76(Rx) 028EB6(Rx) 028F42(Rx) 028F88(Rx) 0291ED(Wx) 029241(Wx) 029344(Rx) 02B6B2(Rx) 02B6DF(Wx) 02B9E0(Wx) 02C26A(Rx) 02C32D(Rx) 02C38C(Rx) 02C59E(Rx) 02C88B(Wx) 02CB44(Wx) 02CB6C(Rx) 02CE07(Wx) 02CE48(Wx) 02D0E1(Ry) 02D100(Wy) 02DADA(Wy) 02DD02(Wx) 02DDD7(Rx) 02E07A(Rx) 02E0CB(Wx) 02E10D(Rx) 02E1CC(Rx) 02E1E0(Wx) 02E205(Rx) 02E241(Rx) 02E3BC(Wx) 02E40C(Ry) 02F12A(Rx) 02F194(Rx) 02F217(Rx) 02F234(Rx) 02F253(Rx) 02F26F(Rx) 02F34A(Rx) 02F393(Rx) 02F3B1(Rx) 02F475(Rx) 02F4D4(Rx) 02F51C(Rx) 02F550(Rx) 02F568(Rx) 02F5BE(Rx) 02F5E1(Rx) 02F647(Rx) 02F65C(Rx) 02F673(Rx) 02F689(Rx) 02F6F6(Rx) 02F863(Rx) 02F880(Rx) 032485(Wx) 03248D(Rx) 0324A6(Wx) 0324F9(Rx) 032512(Wx) 032545(Rx) 03255D(Rx) 032565(Wx) 03269E(Wx) 03294F(Rx) 0332FF(Wx) 037895(Rx) 0378A6(Wx) 038ECE(Rx) 038F4A(Rx) 03920D(Rx) 03AE5C(Rx) 03AE8D(Rx) 03AECB(Rx) 03AED4(Wx) 03AF6D(Rx) 03B0C2(Ry) 03B124(Ry) 03B1AC(Ry) 03B3F9(Wx) 03B47E(Rx) 03BA2E(Rx) 03BA43(Wx) 03BA88(Rx) 03BAA5(Wx) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 03FDFB(Rx) 03FE20(Rx) 03FE41(Rx) 03FE56(Rx) 03FE74(Rx) 03FECB(Rx) 03FF1C(Rx) 
; ram_0551                              = $0551 ; 0037F9(Wx) 00380C(Rx) 004061(Rx) 0041AB(Rx) 00424A(Wx) 004376(Rx) 004526(Rx) 004795(Rx) 0047C8(Rx) 004896(Wx) 0054D4(Rx) 005681(Wx) 00588C(Rx) 005A63(Rx) 005C0F(Rx) 005C77(Rx) 005C92(Wx) 005D30(Wy) 006B87(Wx) 006D46(Rx) 006E75(Wx) 00764E(Wx) 007CD2(Rx) 008022(Rx) 009155(Ry) 0094CF(Wx) 0094F4(Wx) 00A8DD(Wx) 00AADB(Wx) 00AAE1(Rx) 00AB1F(Wx) 00AB31(Wx) 00AB64(Wx) 00AC4F(Wx) 00C501(Rx) 00C61C(Ry) 00DB04(Rx) 00DB0E(Wx) 00DC6E(Ry) 00DC89(Wx) 00DD66(Wx) 00DD96(Wx) 0135D8(Wx) 01369F(Rx) 0136AD(Wx) 013721(Rx) 013766(Rx) 01377C(Rx) 013785(Wx) 0137B9(Wx) 0137F7(Rx) 013867(Rx) 01387D(Rx) 0138FD(Rx) 013961(Rx) 01396E(Wx) 013997(Rx) 0139C2(Rx) 013A09(Rx) 013AB7(Rx) 017BD6(Rx) 017BE4(Wx) 01BE75(Wx) 023E31(Rx) 024014(Rx) 02403F(Rx) 02404B(Rx) 02405E(Rx) 024091(Rx) 0240C3(Rx) 0240E4(Rx) 02414D(Rx) 024262(Rx) 024291(Rx) 0242CC(Rx) 0243D5(Rx) 024447(Rx) 0244CF(Rx) 024550(Rx) 024732(Wx) 02474C(Wx) 0247EA(Wx) 0247F7(Rx) 02523B(Ry) 0252E9(Ry) 025311(Ry) 026117(Ry) 02669B(Wy) 026992(Wx) 026AEE(Ry) 026B4F(Ry) 026B73(Ry) 026B8D(Wx) 026DDE(Ry) 026E17(Wx) 026E5D(Ry) 026EA8(Ry) 027074(Rx) 0270FA(Wx) 02734F(Wx) 027380(Ry) 0273B4(Ry) 0273D4(Ry) 027BC3(Ry) 0281FB(Wx) 028395(Rx) 0284B0(Rx) 028710(Ry) 028C49(Rx) 028E26(Wx) 028E76(Rx) 028EB6(Rx) 0291ED(Wx) 029241(Wx) 029344(Rx) 02B6B2(Rx) 02B6DF(Wx) 02B9E0(Wx) 02C26A(Rx) 02C32D(Rx) 02C38C(Rx) 02C59E(Rx) 02CB44(Wx) 02CB6C(Rx) 02CE07(Wx) 02CE48(Wx) 02D0E1(Ry) 02D100(Wy) 02DADA(Wy) 02DD02(Wx) 02DDD7(Rx) 02E07A(Rx) 02E0CB(Wx) 02E10D(Rx) 02E1CC(Rx) 02E1E0(Wx) 02E205(Rx) 02E241(Rx) 02E3BC(Wx) 02E40C(Ry) 02F12A(Rx) 02F194(Rx) 02F217(Rx) 02F234(Rx) 02F253(Rx) 02F26F(Rx) 02F34A(Rx) 02F393(Rx) 02F3B1(Rx) 02F475(Rx) 02F4D4(Rx) 02F51C(Rx) 02F550(Rx) 02F568(Rx) 02F5BE(Rx) 02F5E1(Rx) 02F647(Rx) 02F65C(Rx) 02F673(Rx) 02F689(Rx) 02F6F6(Rx) 02F863(Rx) 02F880(Rx) 032485(Wx) 03248D(Rx) 0324A6(Wx) 0324F9(Rx) 032512(Wx) 032545(Rx) 03269E(Wx) 03294F(Rx) 0332FF(Wx) 037895(Rx) 038ECE(Rx) 038F4A(Rx) 03920D(Rx) 03AB0D(Rx) 03AE5C(Rx) 03AE8D(Rx) 03AECB(Rx) 03AED4(Wx) 03AF6D(Rx) 03B0C2(Ry) 03B124(Ry) 03B1AC(Ry) 03B47E(Rx) 03BA2E(Rx) 03BA43(Wx) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 03FDFB(Rx) 03FE20(Rx) 03FE41(Rx) 03FE56(Rx) 03FE74(Rx) 03FECB(Rx) 03FF1C(Rx) 
; ram_0552                              = $0552 ; 0034B6(Rx) 003729(Wx) 0037F9(Wx) 00380C(Rx) 004061(Rx) 0041AB(Rx) 00425D(Wx) 004376(Rx) 004795(Rx) 0047C8(Rx) 0047DB(Rx) 004896(Wx) 0054D4(Rx) 005681(Wx) 005772(Wx) 00588C(Rx) 005A63(Rx) 005B56(Rx) 005B77(Rx) 005C0F(Rx) 005C77(Rx) 005C92(Wx) 006B87(Wx) 006D46(Rx) 006E75(Wx) 00764E(Wx) 007CD2(Rx) 008022(Rx) 0094CF(Wx) 0094F4(Wx) 00AADB(Wx) 00AAE1(Rx) 00AB12(Wx) 00AB1F(Wx) 00AB64(Wx) 00AC4F(Wx) 00C501(Rx) 00C61C(Ry) 00C626(Wx) 00C633(Wx) 00DB04(Rx) 00DB0E(Wx) 00DC6E(Ry) 00DC89(Wx) 00DD66(Wx) 00DD96(Wx) 0135D8(Wx) 01369F(Rx) 0136AD(Wx) 013721(Rx) 013766(Rx) 01377C(Rx) 013785(Wx) 0137F7(Rx) 013867(Rx) 01387D(Rx) 0138FD(Rx) 013961(Rx) 01396E(Wx) 013997(Rx) 0139C2(Rx) 013A09(Rx) 013AB7(Rx) 013AD0(Wx) 017BD6(Rx) 017BE4(Wx) 01BE75(Wx) 023E31(Rx) 024014(Rx) 02403F(Rx) 02404B(Rx) 02405E(Rx) 024091(Rx) 0240C3(Rx) 0240E4(Rx) 02414D(Rx) 024262(Rx) 024291(Rx) 0242CC(Rx) 02438E(Rx) 0243D5(Rx) 024447(Rx) 0244CF(Rx) 024550(Rx) 024646(Rx) 024732(Wx) 02474C(Wx) 0247EA(Wx) 0247F7(Rx) 0248D0(Wx) 02523B(Ry) 0252E9(Ry) 025311(Ry) 026117(Ry) 02669B(Wy) 026992(Wx) 026AEE(Ry) 026B4F(Ry) 026B73(Ry) 026B8D(Wx) 026DDE(Ry) 026E17(Wx) 026E5D(Ry) 026EA8(Ry) 027074(Rx) 0270FA(Wx) 02734F(Wx) 027380(Ry) 0273B4(Ry) 0273D4(Ry) 027BC3(Ry) 0281FB(Wx) 0283B2(Rx) 0284B0(Rx) 028710(Ry) 028E26(Wx) 028E76(Rx) 028EB6(Rx) 028F42(Rx) 028F88(Rx) 0291ED(Wx) 029241(Wx) 029344(Rx) 02B6B2(Rx) 02B6DF(Wx) 02B9E0(Wx) 02C26A(Rx) 02C32D(Rx) 02C38C(Rx) 02C59E(Rx) 02CE07(Wx) 02CE48(Wx) 02D0E1(Ry) 02D100(Wy) 02DADA(Wy) 02DD02(Wx) 02DDD7(Rx) 02E07A(Rx) 02E0CB(Wx) 02E10D(Rx) 02E1CC(Rx) 02E1E0(Wx) 02E205(Rx) 02E241(Rx) 02E3BC(Wx) 02E3F0(Wx) 02E40C(Ry) 02F12A(Rx) 02F194(Rx) 02F217(Rx) 02F234(Rx) 02F253(Rx) 02F26F(Rx) 02F34A(Rx) 02F393(Rx) 02F3B1(Rx) 02F475(Rx) 02F4D4(Rx) 02F51C(Rx) 02F550(Rx) 02F568(Rx) 02F5BE(Rx) 02F5E1(Rx) 02F647(Rx) 02F65C(Rx) 02F673(Rx) 02F689(Rx) 02F6F6(Rx) 02F863(Rx) 02F880(Rx) 032485(Wx) 03248D(Rx) 0324A6(Wx) 0324F9(Rx) 032512(Wx) 032545(Rx) 03269E(Wx) 03294F(Rx) 0332FF(Wx) 037895(Rx) 0378A6(Wx) 038ECE(Rx) 038F4A(Rx) 03920D(Rx) 03AE5C(Rx) 03AE8D(Rx) 03AECB(Rx) 03AED4(Wx) 03AF6D(Rx) 03B0C2(Ry) 03B124(Ry) 03B1AC(Ry) 03B47E(Rx) 03BA2E(Rx) 03BA43(Wx) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 03FDFB(Rx) 03FE20(Rx) 03FE41(Rx) 03FE56(Rx) 03FE74(Rx) 03FECB(Rx) 03FF1C(Rx) 
; ram_0553                              = $0553 ; 0034B6(Rx) 0037F9(Wx) 00380C(Rx) 004061(Rx) 004376(Rx) 004795(Rx) 0047C8(Rx) 004896(Wx) 0054D4(Rx) 005681(Wx) 005D30(Wy) 006B87(Wx) 006D46(Rx) 006E75(Wx) 00764E(Wx) 007CD2(Rx) 008022(Rx) 0094CF(Wx) 0094F4(Wx) 00AADB(Wx) 00AAE1(Rx) 00AB12(Wx) 00AB1F(Wx) 00AB64(Wx) 00AC4F(Wx) 00C501(Rx) 00C61C(Ry) 00DB04(Rx) 00DB0E(Wx) 00DC6E(Ry) 00DC89(Wx) 00DD66(Wx) 00DD96(Wx) 01369F(Rx) 0136AD(Wx) 013721(Rx) 013766(Rx) 01377C(Rx) 013785(Wx) 0137F7(Rx) 013867(Rx) 01387D(Rx) 0138FD(Rx) 013961(Rx) 01396E(Wx) 013997(Rx) 0139C2(Rx) 013A09(Rx) 013AB7(Rx) 017BD6(Rx) 017BE4(Wx) 017CB5(Wy) 017DD6(Wx) 01BE75(Wx) 023E31(Rx) 024014(Rx) 02404B(Rx) 02405E(Rx) 024091(Rx) 0240C3(Rx) 0240E4(Rx) 02414D(Rx) 024262(Rx) 024291(Rx) 0242CC(Rx) 02438E(Rx) 0243D5(Rx) 024447(Rx) 0244CF(Rx) 024550(Rx) 024732(Wx) 02474C(Wx) 0247EA(Wx) 0247F7(Rx) 02523B(Ry) 0252E9(Ry) 026117(Ry) 02669B(Wy) 026992(Wx) 026B4F(Ry) 026B73(Ry) 026B8D(Wx) 026DDE(Ry) 026E17(Wx) 026E5D(Ry) 026EA8(Ry) 027074(Rx) 0270FA(Wx) 02734F(Wx) 027380(Ry) 0273B4(Ry) 0273D4(Ry) 027BC3(Ry) 0281FB(Wx) 0283B2(Rx) 0284B0(Rx) 028710(Ry) 028E26(Wx) 028E76(Rx) 028EB6(Rx) 0291ED(Wx) 029344(Rx) 02B6B2(Rx) 02B6DF(Wx) 02B9E0(Wx) 02C26A(Rx) 02C32D(Rx) 02C38C(Rx) 02C59E(Rx) 02CE07(Wx) 02CE48(Wx) 02D0E1(Ry) 02D100(Wy) 02DADA(Wy) 02DD02(Wx) 02DDD7(Rx) 02E07A(Rx) 02E0CB(Wx) 02E10D(Rx) 02E1CC(Rx) 02E1E0(Wx) 02E205(Rx) 02E241(Rx) 02E3BC(Wx) 02E40C(Ry) 02F12A(Rx) 02F194(Rx) 02F217(Rx) 02F234(Rx) 02F253(Rx) 02F26F(Rx) 02F34A(Rx) 02F393(Rx) 02F3B1(Rx) 02F475(Rx) 02F4D4(Rx) 02F51C(Rx) 02F550(Rx) 02F568(Rx) 02F5E1(Rx) 02F647(Rx) 02F65C(Rx) 02F673(Rx) 02F689(Rx) 02F6F6(Rx) 02F863(Rx) 02F880(Rx) 03269E(Wx) 03293A(Wx) 03299A(Wx) 0329AC(Rx) 0329B4(Wx) 0332FF(Wx) 037895(Rx) 0378A6(Wx) 038ECE(Rx) 038F4A(Rx) 03920D(Rx) 03B0C2(Ry) 03B124(Ry) 03B1AC(Ry) 03BCE2(Wx) 03BD08(Rx) 03BDAF(Rx) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 03FDFB(Rx) 03FE20(Rx) 03FE41(Rx) 03FE56(Rx) 03FE74(Rx) 03FECB(Rx) 03FF1C(Rx) 
; ram_0554                              = $0554 ; 004061(Rx) 004376(Rx) 004795(Rx) 0047C8(Rx) 0054D4(Rx) 005681(Wx) 005D30(Wy) 006B87(Wx) 006D46(Rx) 006E75(Wx) 00764E(Wx) 008022(Rx) 0094CF(Wx) 0094F4(Wx) 00AADB(Wx) 00AAE1(Rx) 00AB64(Wx) 00AC4F(Wx) 00C501(Rx) 00C61C(Ry) 00C626(Wx) 00C633(Wx) 00DB04(Rx) 00DC6E(Ry) 01369F(Rx) 0136AD(Wx) 013721(Rx) 013766(Rx) 01377C(Rx) 013785(Wx) 0137F7(Rx) 013867(Rx) 01387D(Rx) 0138FD(Rx) 013961(Rx) 013997(Rx) 0139C2(Rx) 013A09(Rx) 013AB7(Rx) 017CB5(Wy) 017DD6(Wx) 017DDD(Rx) 01BE75(Wx) 023E31(Rx) 024014(Rx) 02404B(Rx) 02405E(Rx) 024091(Rx) 0240C3(Rx) 0240E4(Rx) 02414D(Rx) 024262(Rx) 02438E(Rx) 024447(Rx) 0244CF(Rx) 024550(Rx) 024732(Wx) 02474C(Wx) 0247EA(Wx) 0247F7(Rx) 0248D0(Wx) 02523B(Ry) 0252E9(Ry) 026117(Ry) 02669B(Wy) 026992(Wx) 026B4F(Ry) 026B73(Ry) 026B8D(Wx) 026DDE(Ry) 026E17(Wx) 026E5D(Ry) 026EA8(Ry) 027074(Rx) 0270FA(Wx) 02734F(Wx) 027380(Ry) 0273B4(Ry) 0273D4(Ry) 027BC3(Ry) 0281FB(Wx) 0283B2(Rx) 0284B0(Rx) 028710(Ry) 028E26(Wx) 028E76(Rx) 028EB6(Rx) 028F42(Rx) 0291ED(Wx) 029344(Rx) 02B6B2(Rx) 02B6DF(Wx) 02B9E0(Wx) 02C26A(Rx) 02C32D(Rx) 02C38C(Rx) 02CE07(Wx) 02CE48(Wx) 02D0E1(Ry) 02D100(Wy) 02DADA(Wy) 02DD02(Wx) 02DDD7(Rx) 02E07A(Rx) 02E10D(Rx) 02E1CC(Rx) 02E205(Rx) 02E241(Rx) 02E3BC(Wx) 02E40C(Ry) 02F194(Rx) 02F217(Rx) 02F234(Rx) 02F253(Rx) 02F26F(Rx) 02F34A(Rx) 02F393(Rx) 02F3B1(Rx) 02F475(Rx) 02F4D4(Rx) 02F550(Rx) 02F568(Rx) 02F5E1(Rx) 02F647(Rx) 02F65C(Rx) 02F689(Rx) 02F863(Rx) 02F880(Rx) 0332FF(Wx) 037895(Rx) 038ECE(Rx) 038F4A(Rx) 03920D(Rx) 03B0C2(Ry) 03B124(Ry) 03B1AC(Ry) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 03FDFB(Rx) 03FE20(Rx) 03FE41(Rx) 03FE56(Rx) 03FE74(Rx) 03FECB(Rx) 03FF1C(Rx) 
; ram_0555                              = $0555 ; 004061(Rx) 004376(Rx) 004795(Rx) 0047C8(Rx) 0054D4(Rx) 005681(Wx) 005D30(Wy) 006B87(Wx) 006D46(Rx) 006E75(Wx) 00764E(Wx) 008022(Rx) 0094CF(Wx) 0094F4(Wx) 00AADB(Wx) 00AAE1(Rx) 00AB64(Wx) 00AC4F(Wx) 00C501(Rx) 00C61C(Ry) 00C626(Wx) 00C633(Wx) 00DB04(Rx) 00DC6E(Ry) 0135D8(Wx) 01369F(Rx) 0136AD(Wx) 013721(Rx) 013766(Rx) 01377C(Rx) 013785(Wx) 0137F7(Rx) 013867(Rx) 01387D(Rx) 0138FD(Rx) 013961(Rx) 013997(Rx) 0139C2(Rx) 013A09(Rx) 013AB7(Rx) 017BD6(Rx) 017BE4(Wx) 017CB5(Wy) 017DD6(Wx) 017DDD(Rx) 023E31(Rx) 023F4C(Wx) 024014(Rx) 02403F(Rx) 02404B(Rx) 02405E(Rx) 024091(Rx) 0240C3(Rx) 0240E4(Rx) 02414D(Rx) 024262(Rx) 024447(Rx) 0244CF(Rx) 024550(Rx) 024732(Wx) 02474C(Wx) 0247EA(Wx) 0247F7(Rx) 0248D0(Wx) 02523B(Ry) 0252E9(Ry) 02539A(Ry) 026117(Ry) 02669B(Wy) 026992(Wx) 026B4F(Ry) 026B73(Ry) 026B8D(Wx) 026DDE(Ry) 026E17(Wx) 026E5D(Ry) 026EA8(Ry) 027380(Ry) 0273B4(Ry) 0273D4(Ry) 027BC3(Ry) 0281FB(Wx) 0283A4(Rx) 0284B0(Rx) 028E26(Wx) 028E76(Rx) 028EB6(Rx) 0291D3(Wx) 029344(Rx) 02B6B2(Rx) 02B6DF(Wx) 02B9E0(Wx) 02C32D(Rx) 02C38C(Rx) 02CE48(Wx) 02DADA(Wy) 02DD02(Wx) 02DDD7(Rx) 02E07A(Rx) 02E10D(Rx) 02E1CC(Rx) 02E205(Rx) 02E241(Rx) 02E3BC(Wx) 02E40C(Ry) 02F12A(Rx) 02F194(Rx) 02F217(Rx) 02F234(Rx) 02F253(Rx) 02F26F(Rx) 02F34A(Rx) 02F393(Rx) 02F3B1(Rx) 02F475(Rx) 02F4D4(Rx) 02F51C(Rx) 02F550(Rx) 02F568(Rx) 02F5BE(Rx) 02F5E1(Rx) 02F647(Rx) 02F65C(Rx) 02F673(Rx) 02F689(Rx) 02F6F6(Rx) 02F863(Rx) 02F880(Rx) 0332FF(Wx) 037895(Rx) 038ECE(Rx) 038F4A(Rx) 03920D(Rx) 03B0C2(Ry) 03B124(Ry) 03B1AC(Ry) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 03FDFB(Rx) 03FE20(Rx) 03FE41(Rx) 03FE56(Rx) 03FE74(Rx) 03FECB(Rx) 03FF1C(Rx) 
; ram_0556                              = $0556 ; 004061(Rx) 004376(Rx) 004795(Rx) 0047C8(Rx) 0054D4(Rx) 005681(Wx) 005D30(Wy) 006B87(Wx) 006D46(Rx) 006E75(Wx) 00764E(Wx) 008022(Rx) 0094CF(Wx) 0094F4(Wx) 00AADB(Wx) 00AAE1(Rx) 00AB64(Wx) 00AC4F(Wx) 00C501(Rx) 00C61C(Ry) 00DB04(Rx) 00DB0E(Wx) 00DC6E(Ry) 00DC89(Wx) 00DD66(Wx) 00DD96(Wx) 01369F(Rx) 0136AD(Wx) 013721(Rx) 013766(Rx) 01377C(Rx) 013785(Wx) 013867(Rx) 01387D(Rx) 0138FD(Rx) 013961(Rx) 01396E(Wx) 013997(Rx) 0139C2(Rx) 013AB7(Rx) 013AD0(Wx) 017CB5(Wy) 017DD6(Wx) 017DDD(Rx) 023E31(Rx) 023F4C(Wx) 024014(Rx) 02403F(Rx) 02404B(Rx) 02405E(Rx) 024091(Rx) 0240C3(Rx) 0240E4(Rx) 02414D(Rx) 024262(Rx) 024447(Rx) 0244CF(Rx) 024550(Rx) 024732(Wx) 02474C(Wx) 0247EA(Wx) 0247F7(Rx) 0248D0(Wx) 02523B(Ry) 0252E9(Ry) 026117(Ry) 02669B(Wy) 026992(Wx) 026B4F(Ry) 026B73(Ry) 026B8D(Wx) 026DDE(Ry) 026E17(Wx) 026E5D(Ry) 026EA8(Ry) 027380(Ry) 0273B4(Ry) 0273D4(Ry) 027BC3(Ry) 0281FB(Wx) 0283A4(Rx) 0284B0(Rx) 028702(Ry) 028D4C(Wx) 028E26(Wx) 028E76(Rx) 028EB6(Rx) 029344(Rx) 02B6B2(Rx) 02B6DF(Wx) 02B9E0(Wx) 02C32D(Rx) 02C38C(Rx) 02CE48(Wx) 02DD02(Wx) 02DDD7(Rx) 02E07A(Rx) 02E0CB(Wx) 02E10D(Rx) 02E1A5(Rx) 02E1B2(Wx) 02E1CC(Rx) 02E205(Rx) 02E241(Rx) 02E2B1(Wx) 02E3F0(Wx) 02E40C(Ry) 02F194(Rx) 02F217(Rx) 02F234(Rx) 02F253(Rx) 02F26F(Rx) 02F34A(Rx) 02F393(Rx) 02F3B1(Rx) 02F475(Rx) 02F4D4(Rx) 02F51C(Rx) 02F550(Rx) 02F568(Rx) 02F5E1(Rx) 02F647(Rx) 02F65C(Rx) 02F689(Rx) 02F863(Rx) 02F880(Rx) 037895(Rx) 038ECE(Rx) 038F4A(Rx) 03920D(Rx) 03B0C2(Ry) 03B124(Ry) 03B1AC(Ry) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 03FDFB(Rx) 03FE20(Rx) 03FE41(Rx) 03FE56(Rx) 03FE74(Rx) 03FECB(Rx) 03FF1C(Rx) 
; ram_0557                              = $0557 ; 004061(Rx) 004376(Rx) 004795(Rx) 0047C8(Rx) 0054D4(Rx) 005681(Wx) 005D30(Wy) 006B87(Wx) 006D46(Rx) 006E75(Wx) 00764E(Wx) 007CD2(Rx) 008022(Rx) 0094CF(Wx) 0094F4(Wx) 00AADB(Wx) 00AAE1(Rx) 00AB12(Wx) 00AC4F(Wx) 00C501(Rx) 00C61C(Ry) 00DB04(Rx) 00DC6E(Ry) 01369F(Rx) 0136AD(Wx) 013721(Rx) 013766(Rx) 01377C(Rx) 013785(Wx) 0137B9(Wx) 0137F7(Rx) 013867(Rx) 01387D(Rx) 0138FD(Rx) 013961(Rx) 013997(Rx) 0139C2(Rx) 013AB7(Rx) 017BD6(Rx) 017BE4(Wx) 017C05(Wx) 017C31(Wx) 017C78(Rx) 017CB5(Wy) 017DD6(Wx) 017DDD(Rx) 023E31(Rx) 024014(Rx) 02404B(Rx) 02405E(Rx) 024091(Rx) 0240C3(Rx) 0240E4(Rx) 02414D(Rx) 024262(Rx) 024447(Rx) 0244CF(Rx) 024550(Rx) 02474C(Wx) 0247EA(Wx) 0247F7(Rx) 02523B(Ry) 0252E9(Ry) 026117(Ry) 02669B(Wy) 026B4F(Ry) 026B73(Ry) 026DDE(Ry) 026E17(Wx) 026E5D(Ry) 026EA8(Ry) 027380(Ry) 0273B4(Ry) 0273D4(Ry) 027BC3(Ry) 0281FB(Wx) 0284B0(Rx) 028E26(Wx) 028EB6(Rx) 029344(Rx) 02B6B2(Rx) 02B6DF(Wx) 02B9E0(Wx) 02C0F5(Rx) 02CC14(Wx) 02CC65(Wx) 02CC9E(Wx) 02CE07(Wx) 02CE48(Wx) 02CF68(Wx) 02D24F(Wx) 02D987(Wx) 02DE2B(Wx) 02E1CC(Rx) 02E40C(Ry) 02F194(Rx) 02F217(Rx) 02F234(Rx) 02F253(Rx) 02F26F(Rx) 02F34A(Rx) 02F393(Rx) 02F3B1(Rx) 02F475(Rx) 02F4D4(Rx) 02F550(Rx) 02F568(Rx) 02F5D3(Wx) 02F647(Rx) 02F65C(Rx) 02F673(Rx) 02F689(Rx) 02F6F6(Rx) 02F863(Rx) 02F880(Rx) 037895(Rx) 0378A6(Wx) 038ECE(Rx) 038F4A(Rx) 03920D(Rx) 03B0C2(Ry) 03B124(Ry) 03B1AC(Ry) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 03FDFB(Rx) 03FE20(Rx) 03FE41(Rx) 03FE56(Rx) 03FE74(Rx) 03FECB(Rx) 03FF1C(Rx) 
; ram_0558                              = $0558 ; 004061(Rx) 004376(Rx) 004795(Rx) 0047C8(Rx) 0054D4(Rx) 005681(Wx) 005D30(Wy) 006B87(Wx) 006D46(Rx) 006E75(Wx) 00764E(Wx) 007CD2(Rx) 008022(Rx) 009155(Ry) 0094CF(Wx) 0094F4(Wx) 00A8DD(Wx) 00AADB(Wx) 00AAE1(Rx) 00AC4F(Wx) 00C501(Rx) 00C61C(Ry) 00DB04(Rx) 00DC6E(Ry) 01369F(Rx) 0136AD(Wx) 013721(Rx) 013766(Rx) 01377C(Rx) 013785(Wx) 0137B9(Wx) 0137F7(Rx) 013867(Rx) 01387D(Rx) 0138FD(Rx) 013961(Rx) 01396E(Wx) 013997(Rx) 0139C2(Rx) 013AB7(Rx) 017BD6(Rx) 017BE4(Wx) 017C05(Wx) 017C78(Rx) 017CB5(Wy) 017DD6(Wx) 017DDD(Rx) 01BE75(Wx) 023E31(Rx) 024014(Rx) 02404B(Rx) 02405E(Rx) 024091(Rx) 0240C3(Rx) 0240E4(Rx) 02414D(Rx) 024262(Rx) 024447(Rx) 0244CF(Rx) 024550(Rx) 02474C(Wx) 0247EA(Wx) 0247F7(Rx) 0248D0(Wx) 02523B(Ry) 0252E9(Ry) 026117(Ry) 02669B(Wy) 026B4F(Ry) 026B73(Ry) 026DDE(Ry) 026E17(Wx) 026E5D(Ry) 026EA8(Ry) 027380(Ry) 0273B4(Ry) 0273D4(Ry) 027BC3(Ry) 0281FB(Wx) 0283C0(Rx) 0284B0(Rx) 028E26(Wx) 028EB6(Rx) 029344(Rx) 02B6B2(Rx) 02B6DF(Wx) 02B9E0(Wx) 02C0F5(Rx) 02C26A(Rx) 02C32D(Rx) 02C38C(Rx) 02CC14(Wx) 02CC65(Wx) 02CC9E(Wx) 02CE07(Wx) 02CE48(Wx) 02CF68(Wx) 02D24F(Wx) 02D987(Wx) 02E07A(Rx) 02E0CB(Wx) 02E10D(Rx) 02E1A5(Rx) 02E1B2(Wx) 02E1CC(Rx) 02E205(Rx) 02E241(Rx) 02E269(Rx) 02E2B1(Wx) 02E3BC(Wx) 02E3F0(Wx) 02E40C(Ry) 02F194(Rx) 02F217(Rx) 02F234(Rx) 02F253(Rx) 02F26F(Rx) 02F34A(Rx) 02F393(Rx) 02F3B1(Rx) 02F475(Rx) 02F4D4(Rx) 02F51C(Rx) 02F550(Rx) 02F568(Rx) 02F5D3(Wx) 02F5E1(Rx) 02F647(Rx) 02F65C(Rx) 02F673(Rx) 02F689(Rx) 02F6F6(Rx) 02F863(Rx) 02F880(Rx) 038ECE(Rx) 038F4A(Rx) 03B0C2(Ry) 03B124(Ry) 03B1AC(Ry) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 03FDFB(Rx) 03FE20(Rx) 03FE41(Rx) 03FE56(Rx) 03FE74(Rx) 03FECB(Rx) 03FF1C(Rx) 
; ram_0559                              = $0559 ; 004061(Rx) 004376(Rx) 004795(Rx) 0047C8(Rx) 0054D4(Rx) 005681(Wx) 005D30(Wy) 006B87(Wx) 006D46(Rx) 006E75(Wx) 00764E(Wx) 008022(Rx) 0094CF(Wx) 0094F4(Wx) 00AADB(Wx) 00AAE1(Rx) 00AC4F(Wx) 00C501(Rx) 00C61C(Ry) 00DB04(Rx) 00DC6E(Ry) 0135D8(Wx) 01369F(Rx) 0136AD(Wx) 013721(Rx) 013766(Rx) 01377C(Rx) 013785(Wx) 0137B9(Wx) 0137F7(Rx) 013867(Rx) 01387D(Rx) 0138FD(Rx) 013961(Rx) 01396E(Wx) 013997(Rx) 0139C2(Rx) 013AB7(Rx) 017BD6(Rx) 017BE4(Wx) 017C05(Wx) 017C78(Rx) 017CB5(Wy) 017DD6(Wx) 017DDD(Rx) 01BE75(Wx) 023E31(Rx) 024014(Rx) 02404B(Rx) 02405E(Rx) 024091(Rx) 0240C3(Rx) 0240E4(Rx) 02414D(Rx) 024262(Rx) 024447(Rx) 0244CF(Rx) 024550(Rx) 02474C(Wx) 0247EA(Wx) 0247F7(Rx) 02523B(Ry) 0252E9(Ry) 026117(Ry) 02669B(Wy) 026B4F(Ry) 026B73(Ry) 026DDE(Ry) 026E5D(Ry) 026EA8(Ry) 0271AD(Ry) 027380(Ry) 0273B4(Ry) 0273D4(Ry) 027BC3(Ry) 0281FB(Wx) 0283C0(Rx) 0284B0(Rx) 028E26(Wx) 028EB6(Rx) 029344(Rx) 02B6B2(Rx) 02C0F5(Rx) 02C26A(Rx) 02C32D(Rx) 02C38C(Rx) 02CC14(Wx) 02CC65(Wx) 02CC9E(Wx) 02CE07(Wx) 02CE48(Wx) 02CF68(Wx) 02D24F(Wx) 02D987(Wx) 02E07A(Rx) 02E0CB(Wx) 02E10D(Rx) 02E172(Rx) 02E1CC(Rx) 02E205(Rx) 02E241(Rx) 02E3BC(Wx) 02E40C(Ry) 02F194(Rx) 02F217(Rx) 02F234(Rx) 02F253(Rx) 02F26F(Rx) 02F34A(Rx) 02F393(Rx) 02F3B1(Rx) 02F475(Rx) 02F4D4(Rx) 02F51C(Rx) 02F550(Rx) 02F568(Rx) 02F5BE(Rx) 02F5E1(Rx) 02F647(Rx) 02F65C(Rx) 02F673(Rx) 02F689(Rx) 02F6F6(Rx) 02F863(Rx) 02F880(Rx) 038F4A(Rx) 03920D(Rx) 03B0C2(Ry) 03B124(Ry) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 03FDFB(Rx) 03FE20(Rx) 03FE41(Rx) 03FE56(Rx) 03FE74(Rx) 03FECB(Rx) 03FF1C(Rx) 
; ram_055A                              = $055A ; 004061(Rx) 004376(Rx) 004795(Rx) 0047C8(Rx) 005681(Wx) 006B87(Wx) 006D46(Rx) 006E75(Wx) 00764E(Wx) 008022(Rx) 0094CF(Wx) 0094F4(Wx) 00AADB(Wx) 00AAE1(Rx) 00C501(Rx) 00C61C(Ry) 00DB04(Rx) 00DC6E(Ry) 01369F(Rx) 0136AD(Wx) 013721(Rx) 013766(Rx) 01377C(Rx) 013785(Wx) 0137F7(Rx) 013867(Rx) 01387D(Rx) 0138FD(Rx) 013961(Rx) 01396E(Wx) 013997(Rx) 0139C2(Rx) 013AB7(Rx) 017C05(Wx) 017C78(Rx) 017CB5(Wy) 017DD6(Wx) 017DDD(Rx) 023E31(Rx) 024014(Rx) 02404B(Rx) 02405E(Rx) 024091(Rx) 0240C3(Rx) 0240E4(Rx) 02414D(Rx) 024262(Rx) 02438E(Rx) 024447(Rx) 0244CF(Rx) 024550(Rx) 02474C(Wx) 0247EA(Wx) 0247F7(Rx) 0248D0(Wx) 02523B(Ry) 0252E9(Ry) 026117(Ry) 02669B(Wy) 026B4F(Ry) 026B73(Ry) 026DDE(Ry) 026E5D(Ry) 026EA8(Ry) 027380(Ry) 0273B4(Ry) 0273D4(Ry) 027BC3(Ry) 0281FB(Wx) 0283C0(Rx) 0284B0(Rx) 028E26(Wx) 028EB6(Rx) 029344(Rx) 02B6B2(Rx) 02C0F5(Rx) 02CE07(Wx) 02CE48(Wx) 02CF68(Wx) 02D24F(Wx) 02D987(Wx) 02E1CC(Rx) 02E40C(Ry) 02F194(Rx) 02F217(Rx) 02F234(Rx) 02F253(Rx) 02F26F(Rx) 02F34A(Rx) 02F393(Rx) 02F3B1(Rx) 02F475(Rx) 02F4D4(Rx) 02F550(Rx) 02F568(Rx) 02F647(Rx) 02F65C(Rx) 02F673(Rx) 02F689(Rx) 02F6F6(Rx) 02F863(Rx) 02F880(Rx) 038ECE(Rx) 03B0C2(Ry) 03B124(Ry) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 03FDFB(Rx) 03FE20(Rx) 03FE41(Rx) 03FE56(Rx) 03FE74(Rx) 03FECB(Rx) 03FF1C(Rx) 
; ram_055B                              = $055B ; 004948(Wx) 006B87(Wx) 006D46(Rx) 006E75(Wx) 00764E(Wx) 008022(Rx) 0094F4(Wx) 00AADB(Wx) 00AAE1(Rx) 00C61C(Ry) 00DB04(Rx) 00DC6E(Ry) 0135D8(Wx) 01369F(Rx) 0136AD(Wx) 013721(Rx) 013766(Rx) 01377C(Rx) 013785(Wx) 0137F7(Rx) 013867(Rx) 013961(Rx) 01396E(Wx) 013997(Rx) 017DDD(Rx) 027380(Ry) 0273D4(Ry) 0281C2(Wx) 0281E3(Rx) 0281FB(Wx) 0282C5(Wx) 0282D9(Rx) 02835F(Rx) 0284B0(Rx) 028E26(Wx) 028E76(Rx) 029344(Rx) 02B6B2(Rx) 02C26A(Rx) 02C32D(Rx) 02C38C(Rx) 02CE48(Wx) 02E07A(Rx) 02E0CB(Wx) 02E10D(Rx) 02E172(Rx) 02E1A5(Rx) 02E1B2(Wx) 02E205(Rx) 02E241(Rx) 02E269(Rx) 02E2B1(Wx) 02E309(Rx) 02E30C(Wx) 02E378(Wx) 02E3BC(Wx) 02E3F0(Wx) 02E40C(Ry) 02F217(Rx) 02F234(Rx) 02F26F(Rx) 02F34A(Rx) 02F393(Rx) 02F3B1(Rx) 02F475(Rx) 02F4D4(Rx) 02F550(Rx) 02F568(Rx) 02F5BE(Rx) 02F5E1(Rx) 02F647(Rx) 02F6F6(Rx) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 03FDFB(Rx) 03FE20(Rx) 03FE41(Rx) 03FE56(Rx) 03FE74(Rx) 03FF1C(Rx) 
; ram_055C                              = $055C ; 004948(Wx) 006B87(Wx) 006D46(Rx) 006E75(Wx) 00764E(Wx) 008022(Rx) 0094F4(Wx) 00AADB(Wx) 00AAE1(Rx) 00DB04(Rx) 00DC6E(Ry) 01369F(Rx) 0136AD(Wx) 013721(Rx) 013766(Rx) 01377C(Rx) 013785(Wx) 0137F7(Rx) 013867(Rx) 013961(Rx) 01396E(Wx) 013997(Rx) 0281C2(Wx) 0281E3(Rx) 0281FB(Wx) 0282C5(Wx) 0282D9(Rx) 02835F(Rx) 0284B0(Rx) 028E26(Wx) 028E76(Rx) 029344(Rx) 02B6B2(Rx) 02C26A(Rx) 02C32D(Rx) 02C38C(Rx) 02CE48(Wx) 02E07A(Rx) 02E0CB(Wx) 02E10D(Rx) 02E172(Rx) 02E1A5(Rx) 02E1B2(Wx) 02E205(Rx) 02E241(Rx) 02E269(Rx) 02E2B1(Wx) 02E2DB(Wx) 02E309(Rx) 02E30C(Wx) 02E3BC(Wx) 02E3F0(Wx) 02E40C(Ry) 02F217(Rx) 02F234(Rx) 02F26F(Rx) 02F34A(Rx) 02F393(Rx) 02F3B1(Rx) 02F475(Rx) 02F4D4(Rx) 02F550(Rx) 02F568(Rx) 02F5E1(Rx) 02F647(Rx) 02F6F6(Rx) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 03FDFB(Rx) 03FE20(Rx) 03FE41(Rx) 03FE56(Rx) 03FE74(Rx) 03FF1C(Rx) 
; ram_055D                              = $055D ; 004948(Wx) 006B87(Wx) 006D46(Rx) 006E75(Wx) 00764E(Wx) 008022(Rx) 0094F4(Wx) 00AADB(Wx) 00AAE1(Rx) 00DB04(Rx) 00DC6E(Ry) 013867(Rx) 013961(Rx) 01396E(Wx) 013997(Rx) 0281C2(Wx) 0281E3(Rx) 0281FB(Wx) 0282C5(Wx) 0282D9(Rx) 02835F(Rx) 0284B0(Rx) 028E76(Rx) 02B6B2(Rx) 02C32D(Rx) 02C38C(Rx) 02CE48(Wx) 02E07A(Rx) 02E0CB(Wx) 02E10D(Rx) 02E172(Rx) 02E1A5(Rx) 02E1B2(Wx) 02E205(Rx) 02E241(Rx) 02E2B1(Wx) 02E2DB(Wx) 02E309(Rx) 02E30C(Wx) 02E378(Wx) 02E3BC(Wx) 02E40C(Ry) 02F217(Rx) 02F234(Rx) 02F26F(Rx) 02F34A(Rx) 02F475(Rx) 02F4D4(Rx) 02F5E1(Rx) 02F647(Rx) 02F6F6(Rx) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 03FDFB(Rx) 03FE20(Rx) 03FE41(Rx) 03FE56(Rx) 03FE74(Rx) 
; ram_055E                              = $055E ; 004948(Wx) 0069AC(Wx) 006D46(Rx) 006D88(Wx) 00764E(Wx) 008022(Rx) 0094F4(Wx) 00AADB(Wx) 00AAE1(Rx) 00DB04(Rx) 00DC6E(Ry) 013867(Rx) 013961(Rx) 01396E(Wx) 013997(Rx) 0281C2(Wx) 0281E3(Rx) 0281FB(Wx) 0282C5(Wx) 0282D9(Rx) 02835F(Rx) 0284B0(Rx) 0284EA(Wx) 028E76(Rx) 02B6B2(Rx) 02C32D(Rx) 02C38C(Rx) 02CE48(Wx) 02E07A(Rx) 02E0CB(Wx) 02E10D(Rx) 02E172(Rx) 02E1A5(Rx) 02E1B2(Wx) 02E205(Rx) 02E241(Rx) 02E269(Rx) 02E2B1(Wx) 02E309(Rx) 02E30C(Wx) 02E378(Wx) 02E3BC(Wx) 02E3F0(Wx) 02E40C(Ry) 02F217(Rx) 02F234(Rx) 02F26F(Rx) 02F34A(Rx) 02F475(Rx) 02F4D4(Rx) 02F5E1(Rx) 02F647(Rx) 02F6F6(Rx) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 03FDFB(Rx) 03FE20(Rx) 03FE41(Rx) 03FE56(Rx) 03FE74(Rx) 
; ram_055F                              = $055F ; 004948(Wx) 006D46(Rx) 00764E(Wx) 008022(Rx) 00DB04(Rx) 00DC6E(Ry) 013867(Rx) 013997(Rx) 0281C2(Wx) 0281E3(Rx) 0281FB(Wx) 0282C5(Wx) 0282D9(Rx) 02835F(Rx) 0284B0(Rx) 028E76(Rx) 02B6B2(Rx) 02C32D(Rx) 02C38C(Rx) 02CE48(Wx) 02E07A(Rx) 02E0CB(Wx) 02E10D(Rx) 02E172(Rx) 02E1A5(Rx) 02E1B2(Wx) 02E205(Rx) 02E241(Rx) 02E269(Rx) 02E2B1(Wx) 02E309(Rx) 02E30C(Wx) 02E378(Wx) 02E3BC(Wx) 02E3F0(Wx) 02E40C(Ry) 02F217(Rx) 02F26F(Rx) 02F34A(Rx) 02F475(Rx) 02F4D4(Rx) 02F5E1(Rx) 02F647(Rx) 02F6F6(Rx) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 03FDFB(Rx) 03FE20(Rx) 03FE41(Rx) 03FE56(Rx) 03FE74(Rx) 
; ram_0560                              = $0560 ; 004948(Wx) 00764E(Wx) 008022(Rx) 00DB04(Rx) 00DC6E(Ry) 013867(Rx) 013997(Rx) 0281C2(Wx) 0281E3(Rx) 0281FB(Wx) 0282C5(Wx) 0282D9(Rx) 02835F(Rx) 0284B0(Rx) 028E76(Rx) 02B6B2(Rx) 02C32D(Rx) 02C38C(Rx) 02CE48(Wx) 02E07A(Rx) 02E0CB(Wx) 02E10D(Rx) 02E172(Rx) 02E1A5(Rx) 02E1B2(Wx) 02E205(Rx) 02E241(Rx) 02E269(Rx) 02E2B1(Wx) 02E309(Rx) 02E30C(Wx) 02E3BC(Wx) 02E3F0(Wx) 02E40C(Ry) 02F217(Rx) 02F26F(Rx) 02F34A(Rx) 02F475(Rx) 02F4D4(Rx) 02F5E1(Rx) 02F647(Rx) 02F6F6(Rx) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 03FDFB(Rx) 03FE20(Rx) 03FE41(Rx) 03FE56(Rx) 03FE74(Rx) 
; ram_0561                              = $0561 ; 00764E(Wx) 00B1BA(R)  00DB04(Rx) 00DC6E(Ry) 02B6B2(Rx) 02F441(R)  03BCE2(Wx) 03BD08(Rx) 03BDAF(Rx) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 
; ram_0562                              = $0562 ; 00349E(W)  00764E(Wx) 00B25A(Rx) 00B4E5(Rx) 00B4F4(Wx) 00DB04(Rx) 00DC6E(Ry) 01BE36(Ry) 0254F0(Ry) 0284EA(Wx) 02B6B2(Rx) 02F2B6(Ry) 02F2F2(Ry) 02F330(Ry) 02F497(Ry) 038CBA(Wx) 03AE70(Rx) 03AE8D(Rx) 03AECB(Rx) 03AED4(Wx) 03AF6D(Rx) 03B070(Rx) 03B3F9(Wx) 03B47E(Rx) 03B7FA(Rx) 03B88B(Wx) 03B9DA(Wx) 03BA2E(Rx) 03BA43(Wx) 03BA6C(R)  03BA88(Rx) 03BAA5(Wx) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 
; ram_0563                              = $0563 ; 0034A1(W)  00764E(Wx) 00B25A(Rx) 00B4E5(Rx) 00B4F4(Wx) 00DB04(Rx) 00DC6E(Ry) 01BE36(Ry) 0254F0(Ry) 0284EA(Wx) 02B6B2(Rx) 02F2B6(Ry) 02F2F2(Ry) 02F330(Ry) 02F497(Ry) 038CBA(Wx) 03AE70(Rx) 03AE8D(Rx) 03AECB(Rx) 03AED4(Wx) 03AF6D(Rx) 03B073(Wx) 03B47E(Rx) 03B7FD(Wx) 03B88B(Wx) 03B9DA(Wx) 03BA2E(Rx) 03BA43(Wx) 03BA6F(R)  03BA88(Rx) 03BAA5(Wx) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 
; ram_0564                              = $0564 ; 0034A4(W)  00764E(Wx) 00B25A(Rx) 00B4E5(Rx) 00B4F4(Wx) 00DB04(Rx) 00DC6E(Ry) 01BE36(Ry) 0254F0(Ry) 0284EA(Wx) 02B6B2(Rx) 02F2B6(Ry) 02F2F2(Ry) 02F330(Ry) 02F497(Ry) 038CBA(Wx) 03AE70(Rx) 03AE8D(Rx) 03AECB(Rx) 03AED4(Wx) 03AF6D(Rx) 03B076(Wx) 03B47E(Rx) 03B800(Wx) 03B88B(Wx) 03B9DA(Wx) 03BA2E(Rx) 03BA43(Wx) 03BA72(R)  03BA88(Rx) 03BAA5(Wx) 03E03F(Wi) 03E820(Wx) 03E848(Wx) 



; 
ram_obj_stun_timer                      = $0565 ; 00110B(W)  001147(R)  00114C(W)  0011D1(R)  0011D6(W)  001203(W)  0016E0(R)  002955(W)  00295E(R)  002975(R)  002A15(R)  002A49(W)  002A56(R)  002AE3(W)  002AE6(W)  002B33(W)  002B36(W)  002B9E(W)  002BC3(W)  002BD5(W)  002CA9(W)  002D39(W)  002D3F(W)  002D48(W)  003452(R)  0035A9(R)  0035CF(W)  0037FE(R)  003D85(R)  003D8A(W)  008906(R)  00894E(R)  00895B(R)  008968(R)  0131D4(R)  01323C(R)  013243(W)  01F50D(R)  01F525(R)  01F52A(W)  02F820(R)  0380FE(R)  038155(R)  03815A(W)  038177(R)  0381A9(W)  0381CE(R)  0381F2(R)  038208(W)  03822C(R)  038242(W)  038359(W)  038381(R)  0383B2(W)  038547(R)  0385CC(R)  0387D1(R)  038A6C(R)  038AB5(R)  038AE3(W)  038AE6(W)  038BC5(R)  038BCA(W)  038D1F(W)  03938B(R)  0393F2(W)  03941A(W)  039440(W)  03944D(R)  03945E(W)  03946C(W)  039483(R)  03948C(W)  039492(R)  0394A5(W)  0394B6(W)  0394BA(W)  0394DB(W)  0394E7(R)  0394F8(W)  039506(W)  039517(W)  0395AB(W)  0395B1(W)  03960A(W)  039625(W)  03962F(W)  039690(W)  03975A(W)  039833(R)  03984D(W)  0398CF(R)  03994E(W)  039973(W)  039A75(W)  039B6B(W)  039B9A(W)  039BE7(W)  039C0C(R)  039C4B(R)  039CBA(R)  039CC3(W)  039CC9(R)  039CDC(W)  039D03(W)  039D07(R)  039D68(W)  039E11(W)  039E42(W)  039ECC(W)  039ED3(R)  039EF2(W)  039EFE(R)  039F0F(W)  039F37(W)  03A06F(W)  03A09F(W)  03A0E1(R)  03A1D1(W)  03A1D7(W)  03A1FC(W)  03A247(W)  03A263(W)  03A448(W)  03A47E(W)  03A49A(W)  03A4AB(W)  03A5BE(R)  03A617(R)  03A620(W)  03A62E(W)  03A67C(R)  03A68E(R)  03A69D(W)  03A6A3(W)  03A6BE(R)  03A6DC(W)  03A6DF(W)  03A713(W)  03A716(W)  03A740(W)  03A743(W)  03A797(W)  03A862(W)  03AA15(R)  03AA63(W)  03AB36(R)  03ABAC(W)  03AC9F(W)  03ACA2(W)  03AD13(W)  03ADFC(R)  03B5BA(R)  03B684(R)  03B8A1(R)  03B8A6(W)  03BAE5(Rx) 03BB27(Rx) 03BCA6(Ry) 03E03F(Wi) 03E848(Wx) 03F53D(R)  03F5E3(R)  03F7BD(R)  03F7F4(R)  03F942(R)  
    ram_plr_state                           = $0565 ; see con_plr_state, see con_path_sel
    ram_0565_wpn                            = $0565 ; 
; ram_0566                              = $0566 ; 007C9D(Rx) 007CC1(Rx) 007CC8(Wx) 00845F(Ry) 00848F(Rx) 00849E(Wx) 0084BA(Ry) 00850B(Rx) 008526(Rx) 008B23(Wx) 008DFB(Rx) 008E1A(Wx) 008E54(Rx) 008E89(Rx) 00956A(Rx) 00A781(Wx) 00A9B8(Wx) 00AA7F(Wx) 00AB36(Wx) 00AC26(Rx) 00AC69(Ry) 00AC6C(Wx) 00C5C3(Wy) 00CB31(Wx) 00CB3D(Wx) 00CBB6(Wy) 00CBC0(Wy) 00CD82(Wy) 00CE02(Wx) 00CEC9(Rx) 00CF84(Rx) 00CF9A(Rx) 00CFD3(Rx) 00D05D(Wx) 00D09C(Wx) 00D0AD(Wx) 00D0B7(Wx) 00D0E6(Rx) 00D18A(Rx) 00D200(Rx) 00D214(Wx) 00D325(Wx) 00D361(Wx) 00D49A(Rx) 00D49F(Wx) 00D6EA(Wy) 00D727(Wy) 00D884(Rx) 00D8C1(Rx) 00D9CE(Rx) 00D9FD(Wx) 00DA1B(Wx) 00DA3A(Rx) 00DA6D(Wx) 00DA9E(Wx) 00DAAC(Wx) 00DAFE(Wx) 00DB71(Wx) 00DDCB(Wx) 00DE07(Wx) 00DE1A(Wx) 00DE3B(Wx) 00DE5D(Wx) 00DF04(Wx) 0252D9(Wx) 0253A9(Ry) 0253D6(Rx) 0253DD(Rx) 0253F7(Rx) 025587(Rx) 025594(Rx) 025604(Rx) 025639(Rx) 025852(Rx) 02597A(Rx) 025B55(Rx) 025B69(Rx) 025B71(Wx) 025B80(Rx) 025B9B(Rx) 025BAB(Rx) 025BB9(Rx) 025DD6(Rx) 0260FF(Wx) 026175(Wx) 026315(Rx) 02631D(Wx) 0263B1(Wx) 0263F2(Wx) 02642C(Wx) 0264FE(Wx) 0267E1(Wx) 0267FE(Wx) 026972(Wx) 026A0C(Rx) 026BD5(Wx) 026CF4(Wx) 026F3C(Wx) 02702C(Rx) 027038(Rx) 027042(Rx) 02715F(R)  027450(Ry) 027779(Wx) 02778A(Wx) 02779E(Rx) 0277F7(Rx) 02781D(Rx) 027882(Rx) 02F524(Rx) 02F52A(Wx) 02F718(Rx) 02F71D(Wx) 02F9D7(Rx) 02F9E8(Rx) 02F9F4(Rx) 02FA73(Rx) 032584(Rx) 03258F(Wx) 0325A0(Wx) 0325B3(Wx) 0325D3(Rx) 0325E2(Wx) 0325EE(Rx) 0325F3(Wx) 032607(Rx) 03260C(Wx) 032637(Wx) 03263C(Rx) 032680(Rx) 032725(Wx) 03272E(Wx) 032789(Wx) 0327A3(Wx) 0327B6(Wx) 0327C6(Wx) 0327D8(Wx) 0328D6(Rx) 032929(Wx) 03298C(Rx) 032992(Wx) 0329D9(Wx) 0329FD(Wx) 032A19(Wx) 032A6D(Wx) 032A81(Wx) 032AA2(Wx) 032AB9(Wx) 032AD9(Wx) 032AF3(Wx) 032B27(Wx) 032B8B(Wx) 032B9A(Wx) 032BAF(Wx) 03BAE5(Rx) 03BB27(Rx) 03BCA6(Ry) 03E03F(Wi) 03E848(Wx) 03FEFD(Wx) 03FF27(Rx) 03FF32(Rx) 03FF39(Wx) 03FF9F(Rx) 03FFA6(Wx) 
; ram_0567                              = $0567 ; 007C9D(Rx) 007CC1(Rx) 007CC8(Wx) 008462(Wx) 00850B(Rx) 008526(Rx) 008B23(Wx) 008DFB(Rx) 008E1A(Wx) 008E54(Rx) 008E89(Rx) 008E9A(Rx) 009194(Wx) 0091A2(Rx) 0091AB(Wx) 0091B9(Wx) 0091E8(Rx) 009278(Rx) 009284(Rx) 00956A(Rx) 00A781(Wx) 00A8FF(Wx) 00A9B8(Wx) 00AA7F(Wx) 00AB69(Wx) 00AC26(Rx) 00AC69(Ry) 00AC6C(Wx) 00C5D6(Wx) 00CB31(Wx) 00CB3D(Wx) 00CD01(Wx) 00CD13(Wx) 00CD7F(Rx) 00D297(Wx) 00D2A1(Wx) 00D2F8(Wx) 00D6EA(Wy) 00D727(Wy) 00D884(Rx) 00D8C1(Rx) 00DC4C(Wx) 00DCE6(Wx) 00DD0D(Rx) 00DD2F(Wx) 00DD42(Wx) 00DD57(Wx) 02473A(Wx) 0252D9(Wx) 0253A9(Ry) 0253AC(Wx) 025594(Rx) 025604(Rx) 025639(Rx) 025852(Rx) 02597A(Rx) 025B71(Wx) 025B9B(Rx) 025BAB(Rx) 025BB9(Rx) 025C8F(Rx) 025CA2(Wx) 025CA5(Wx) 025CA8(Rx) 025CAD(Wx) 025DD9(Wy) 0260FF(Wx) 0264FE(Wx) 0267E1(Wx) 0267FE(Wx) 026A0C(Rx) 026BD5(Wx) 026F3C(Wx) 027162(Wx) 027168(Rx) 027210(Rx) 02721C(Rx) 027226(Rx) 027450(Ry) 027460(Wx) 027622(Wy) 02F524(Rx) 02F52A(Wx) 02F718(Rx) 02F71D(Wx) 02F8D2(Rx) 032553(Rx) 03AE9C(Rx) 03AEAB(Rx) 03AF67(Wx) 03AF6A(Wx) 03B477(Wx) 03B47A(Wx) 03B565(Wx) 03B568(Wx) 03BA48(Wx) 03BAAA(Wx) 03E03F(Wi) 03E848(Wx) 03FEFD(Wx) 03FF27(Rx) 03FF32(Rx) 03FF39(Wx) 03FF9F(Rx) 03FFA6(Wx) 
; ram_0568                              = $0568 ; 007C9D(Rx) 007CC1(Rx) 007CC8(Wx) 008462(Wx) 00850B(Rx) 008526(Rx) 008B23(Wx) 008DFB(Rx) 008E1A(Wx) 008E54(Rx) 008E89(Rx) 008E9A(Rx) 009194(Wx) 0091A2(Rx) 0091AB(Wx) 0091B9(Wx) 0091E8(Rx) 009278(Rx) 009284(Rx) 00956A(Rx) 00A781(Wx) 00A8FF(Wx) 00A9B8(Wx) 00AA7F(Wx) 00AB36(Wx) 00AB69(Wx) 00AC26(Rx) 00AC69(Ry) 00AC6C(Wx) 00C5C3(Wy) 00CBB6(Wy) 00CBC0(Wy) 00CD82(Wy) 00D6EA(Wy) 00DC4C(Wx) 00DCE6(Wx) 00DD0D(Rx) 00DD2F(Wx) 00DD42(Wx) 00DD57(Wx) 02473A(Wx) 0252D9(Wx) 0253B8(Rx) 0253C0(Wx) 025594(Rx) 025604(Rx) 025852(Rx) 02597A(Rx) 025B71(Wx) 025B9B(Rx) 025BAB(Rx) 025BB9(Rx) 025C8F(Rx) 025C99(Wx) 025C9C(Wx) 025CA2(Wx) 025CA5(Wx) 025CA8(Rx) 025CAD(Wx) 025ECD(Wy) 026A0C(Rx) 026BD5(Wx) 026F3C(Wx) 027162(Wx) 027168(Rx) 027210(Rx) 02721C(Rx) 027226(Rx) 027450(Ry) 027460(Wx) 027622(Wy) 02F524(Rx) 02F52A(Wx) 02F718(Rx) 02F71D(Wx) 02F8D2(Rx) 03AE9C(Rx) 03AEAB(Rx) 03AF67(Wx) 03AF6A(Wx) 03B477(Wx) 03B47A(Wx) 03B565(Wx) 03B568(Wx) 03BA48(Wx) 03E03F(Wi) 03E848(Wx) 03FEFD(Wx) 03FF27(Rx) 03FF32(Rx) 03FF39(Wx) 03FF9F(Rx) 03FFA6(Wx) 
; ram_0569                              = $0569 ; 007C9D(Rx) 007CC1(Rx) 007CC8(Wx) 008462(Wx) 00850B(Rx) 008526(Rx) 008B23(Wx) 008DFB(Rx) 008E1A(Wx) 008E54(Rx) 008E89(Rx) 008E9A(Rx) 009194(Wx) 0091A2(Rx) 0091AB(Wx) 0091B9(Wx) 0091E8(Rx) 009278(Rx) 009284(Rx) 00956A(Rx) 00A781(Wx) 00A8FF(Wx) 00A9B8(Wx) 00AB69(Wx) 00AC26(Rx) 00AC69(Ry) 00AC6C(Wx) 00C5C3(Wy) 00CBB6(Wy) 00CBC0(Wy) 00CD82(Wy) 00D5C4(Wx) 00D859(Wx) 00D867(Wx) 00DC4C(Wx) 00DCE6(Wx) 00DD0D(Rx) 00DD2F(Wx) 00DD42(Wx) 00DD57(Wx) 02473A(Wx) 0252D9(Wx) 0253B8(Rx) 0253C0(Wx) 025594(Rx) 025604(Rx) 025852(Rx) 02597A(Rx) 025B71(Wx) 025B9B(Rx) 025BAB(Rx) 025BB9(Rx) 025C8F(Rx) 025C99(Wx) 025C9C(Wx) 025CA2(Wx) 025CA5(Wx) 025CA8(Rx) 025CAD(Wx) 025D7A(Rx) 025D82(Wx) 025ECD(Wy) 0260FF(Wx) 026A0C(Rx) 026BD5(Wx) 026F3C(Wx) 027162(Wx) 027168(Rx) 027210(Rx) 02721C(Rx) 027226(Rx) 027450(Ry) 027460(Wx) 027622(Wy) 02F524(Rx) 02F52A(Wx) 02F718(Rx) 02F71D(Wx) 02F8D2(Rx) 03AE9C(Rx) 03AEAB(Rx) 03AF67(Wx) 03AF6A(Wx) 03B477(Wx) 03B47A(Wx) 03B565(Wx) 03B568(Wx) 03BA48(Wx) 03E03F(Wi) 03E848(Wx) 03FEFD(Wx) 03FF27(Rx) 03FF32(Rx) 03FF39(Wx) 03FF9F(Rx) 03FFA6(Wx) 
; ram_056A                              = $056A ; 007C9D(Rx) 007CC1(Rx) 007CC8(Wx) 008462(Wx) 00850B(Rx) 008526(Rx) 008B23(Wx) 008DFB(Rx) 008E1A(Wx) 008E54(Rx) 008E89(Rx) 008E9A(Rx) 009194(Wx) 0091A2(Rx) 0091AB(Wx) 0091B9(Wx) 0091E8(Rx) 009278(Rx) 009284(Rx) 00956A(Rx) 00A781(Wx) 00A8FF(Wx) 00A9B8(Wx) 00AB69(Wx) 00AC26(Rx) 00AC69(Ry) 00AC6C(Wx) 00C5C3(Wy) 00CBB6(Wy) 00D6EA(Wy) 00DC4C(Wx) 00DCE6(Wx) 00DD0D(Rx) 00DD2F(Wx) 00DD42(Wx) 00DD57(Wx) 017CC6(Rx) 017CCB(Wy) 017CEE(Rx) 017D11(Rx) 02473A(Wx) 0252D9(Wx) 0253B8(Rx) 0253C0(Wx) 025594(Rx) 025604(Rx) 025852(Rx) 02597A(Rx) 025B71(Wx) 025B9B(Rx) 025BAB(Rx) 025BB9(Rx) 025C8F(Rx) 025CA2(Wx) 025CA5(Wx) 025CA8(Rx) 025CAD(Wx) 025ECD(Wy) 025EEB(Wy) 026A0C(Rx) 026BD5(Wx) 026F3C(Wx) 027162(Wx) 027168(Rx) 027210(Rx) 02721C(Rx) 027226(Rx) 027450(Ry) 027460(Wx) 027622(Wy) 02F524(Rx) 02F52A(Wx) 02F718(Rx) 02F71D(Wx) 02F8D2(Rx) 03293F(Wx) 03BCBF(Rx) 03BD03(Wx) 03E03F(Wi) 03E848(Wx) 03FEFD(Wx) 03FF27(Rx) 03FF32(Rx) 03FF39(Wx) 03FF9F(Rx) 03FFA6(Wx) 
; ram_056B                              = $056B ; 008462(Wx) 00850B(Rx) 008526(Rx) 008DFB(Rx) 008E1A(Wx) 008E54(Rx) 008E89(Rx) 009194(Wx) 0091A2(Rx) 0091AB(Wx) 0091B9(Wx) 0091E8(Rx) 009278(Rx) 009284(Rx) 00956A(Rx) 00A781(Wx) 00A8FF(Wx) 00A9B8(Wx) 00AB69(Wx) 00AC26(Rx) 00AC69(Ry) 00AC6C(Wx) 00C5C3(Wy) 00CBB6(Wy) 00CBC0(Wy) 00D6EA(Wy) 00D727(Wy) 00D884(Rx) 00D8C1(Rx) 017CCB(Wy) 017CEE(Rx) 017D11(Rx) 017DFA(Rx) 017E2B(Rx) 017E4B(Rx) 02473A(Wx) 0252D9(Wx) 0253B8(Rx) 0253C0(Wx) 025594(Rx) 025604(Rx) 025852(Rx) 02597A(Rx) 025B71(Wx) 025B9B(Rx) 025BB9(Rx) 025C8F(Rx) 025CA2(Wx) 025CA5(Wx) 025CA8(Rx) 025CAD(Wx) 026A0C(Rx) 026BD5(Wx) 026F3C(Wx) 027162(Wx) 027168(Rx) 027210(Rx) 02721C(Rx) 027226(Rx) 027450(Ry) 027460(Wx) 027622(Wy) 02F524(Rx) 02F52A(Wx) 02F8D2(Rx) 03E03F(Wi) 03E848(Wx) 03FEFD(Wx) 03FF27(Rx) 03FF32(Rx) 03FF39(Wx) 
; ram_056C                              = $056C ; 007C9D(Rx) 00845F(Ry) 00848F(Rx) 00849E(Wx) 0084BA(Ry) 00850B(Rx) 008526(Rx) 008DFB(Rx) 008E1A(Wx) 008E54(Rx) 008E89(Rx) 008E9A(Rx) 009194(Wx) 0091A2(Rx) 0091AB(Wx) 0091B9(Wx) 0091E8(Rx) 009278(Rx) 009284(Rx) 00956A(Rx) 00A781(Wx) 00A8FF(Wx) 00A9B8(Wx) 00AB69(Wx) 00AC26(Rx) 00AC69(Ry) 00AC6C(Wx) 00C5C3(Wy) 017CCB(Wy) 017CEE(Rx) 017D11(Rx) 017DFA(Rx) 017E2B(Rx) 017E4B(Rx) 02473A(Wx) 0252D9(Wx) 0253AC(Wx) 0253B8(Rx) 0253C0(Wx) 025604(Rx) 025852(Rx) 02597A(Rx) 025B71(Wx) 025B9B(Rx) 025BAB(Rx) 025BB9(Rx) 025C8F(Rx) 025CA2(Wx) 025CA5(Wx) 025CA8(Rx) 025CAD(Wx) 026A0C(Rx) 026F3C(Wx) 027162(Wx) 027168(Rx) 027210(Rx) 02721C(Rx) 027226(Rx) 027450(Ry) 027460(Wx) 027622(Wy) 02F524(Rx) 02F52A(Wx) 02F718(Rx) 02F71D(Wx) 02F8D2(Rx) 02F9D7(Rx) 02F9E8(Rx) 02F9F4(Rx) 02FA73(Rx) 03E03F(Wi) 03E848(Wx) 03FEFD(Wx) 03FF27(Rx) 03FF32(Rx) 03FF39(Wx) 03FF9F(Rx) 03FFA6(Wx) 
; ram_056D                              = $056D ; 008462(Wx) 00850B(Rx) 008526(Rx) 008DFB(Rx) 008E1A(Wx) 008E54(Rx) 008E89(Rx) 008E9A(Rx) 009194(Wx) 0091A2(Rx) 0091AB(Wx) 0091B9(Wx) 0091E8(Rx) 009278(Rx) 009284(Rx) 00956A(Rx) 00A781(Wx) 00A8FF(Wx) 00A9B8(Wx) 00AB69(Wx) 00AC26(Rx) 00AC69(Ry) 00AC6C(Wx) 00C5C3(Wy) 00DCE6(Wx) 00DD0D(Rx) 00DD2F(Wx) 00DD42(Wx) 00DD57(Wx) 00DEFA(Wx) 017CCB(Wy) 017CEE(Rx) 017D11(Rx) 017DFA(Rx) 017E2B(Rx) 017E4B(Rx) 02473A(Wx) 0252D9(Wx) 0253B8(Rx) 0253C0(Wx) 025604(Rx) 025852(Rx) 02597A(Rx) 025B71(Wx) 025B9B(Rx) 025BAB(Rx) 025BB9(Rx) 025C8F(Rx) 025CA2(Wx) 025CA5(Wx) 025CA8(Rx) 025CAD(Wx) 026A0C(Rx) 026F3C(Wx) 027162(Wx) 027168(Rx) 027210(Rx) 02721C(Rx) 027226(Rx) 027450(Ry) 027460(Wx) 02F524(Rx) 02F52A(Wx) 02F8D2(Rx) 03E03F(Wi) 03E848(Wx) 03FEFD(Wx) 03FF27(Rx) 03FF32(Rx) 03FF39(Wx) 
; ram_056E                              = $056E ; 007C9D(Rx) 007CC1(Rx) 007CC8(Wx) 008462(Wx) 00850B(Rx) 008526(Rx) 008DFB(Rx) 008E1A(Wx) 008E54(Rx) 008E89(Rx) 008E9A(Rx) 009194(Wx) 0091A2(Rx) 0091AB(Wx) 0091B9(Wx) 0091E8(Rx) 009278(Rx) 009284(Rx) 00956A(Rx) 00A781(Wx) 00A8FF(Wx) 00A9B8(Wx) 00AC26(Rx) 00AC69(Ry) 00AC6C(Wx) 017CCB(Wy) 017CEE(Rx) 017D11(Rx) 017DFA(Rx) 017E2B(Rx) 017E4B(Rx) 0252D9(Wx) 0253B8(Rx) 0253C0(Wx) 025604(Rx) 025852(Rx) 026F3C(Wx) 027162(Wx) 027168(Rx) 027210(Rx) 02721C(Rx) 027226(Rx) 027450(Ry) 027460(Wx) 02F718(Rx) 02F71D(Wx) 02F8D2(Rx) 03E03F(Wi) 03E848(Wx) 03FEFD(Wx) 03FF27(Rx) 03FF9F(Rx) 03FFA6(Wx) 
; ram_056F                              = $056F ; 007C9D(Rx) 007CC1(Rx) 007CC8(Wx) 008462(Wx) 00850B(Rx) 008526(Rx) 008DFB(Rx) 008E1A(Wx) 008E54(Rx) 008E89(Rx) 008E9A(Rx) 0091A2(Rx) 0091AB(Wx) 0091B9(Wx) 0091E8(Rx) 009278(Rx) 009284(Rx) 00956A(Rx) 00A781(Wx) 00A8FF(Wx) 00A9B8(Wx) 00AC26(Rx) 00AC69(Ry) 00AC6C(Wx) 017CCB(Wy) 017CEE(Rx) 017D11(Rx) 017DFA(Rx) 017E2B(Rx) 017E4B(Rx) 0252D9(Wx) 0253B8(Rx) 0253C0(Wx) 025604(Rx) 025852(Rx) 026F3C(Wx) 027162(Wx) 027168(Rx) 027210(Rx) 02721C(Rx) 027450(Ry) 027460(Wx) 02F524(Rx) 02F52A(Wx) 02F718(Rx) 02F71D(Wx) 02F8D2(Rx) 03E03F(Wi) 03E848(Wx) 03FEFD(Wx) 03FF27(Rx) 03FF32(Rx) 03FF39(Wx) 03FF9F(Rx) 03FFA6(Wx) 
; ram_0570                              = $0570 ; 007C9D(Rx) 008462(Wx) 00850B(Rx) 008526(Rx) 008DFB(Rx) 008E1A(Wx) 008E54(Rx) 008E89(Rx) 008E9A(Rx) 009194(Wx) 0091A2(Rx) 0091AB(Wx) 0091B9(Wx) 0091E8(Rx) 009278(Rx) 009284(Rx) 00956A(Rx) 00A781(Wx) 00A8FF(Wx) 00A9B8(Wx) 00AC26(Rx) 00AC69(Ry) 00AC6C(Wx) 017CCB(Wy) 017CEE(Rx) 017D11(Rx) 017DFA(Rx) 017E2B(Rx) 017E4B(Rx) 025604(Rx) 026F3C(Wx) 027162(Wx) 027168(Rx) 027210(Rx) 02721C(Rx) 027450(Ry) 027460(Wx) 02F524(Rx) 02F52A(Wx) 02F718(Rx) 02F71D(Wx) 02F8D2(Rx) 03B1AC(Ry) 03E03F(Wi) 03E848(Wx) 03FEFD(Wx) 03FF27(Rx) 03FF32(Rx) 03FF39(Wx) 03FF9F(Rx) 03FFA6(Wx) 
; ram_0571                              = $0571 ; 007C9D(Rx) 008462(Wx) 00850B(Rx) 008526(Rx) 008DFB(Rx) 008E1A(Wx) 008E54(Rx) 008E89(Rx) 008E9A(Rx) 009194(Wx) 0091B9(Wx) 0091E8(Rx) 009278(Rx) 009284(Rx) 00956A(Rx) 00A781(Wx) 00A8FF(Wx) 00A9B8(Wx) 017CCB(Wy) 017CEE(Rx) 017D11(Rx) 017DFA(Rx) 017E2B(Rx) 017E4B(Rx) 025604(Rx) 026F3C(Wx) 027162(Wx) 027168(Rx) 027210(Rx) 02721C(Rx) 027460(Wx) 02F718(Rx) 02F71D(Wx) 02F8D2(Rx) 03E03F(Wi) 03E848(Wx) 03FEFD(Wx) 03FF27(Rx) 03FF9F(Rx) 03FFA6(Wx) 
; ram_0572                              = $0572 ; 009194(Wx) 0091B9(Wx) 0091E8(Rx) 009278(Rx) 009284(Rx) 00A8FF(Wx) 03E03F(Wi) 03E848(Wx) 03FEFD(Wx) 03FF27(Rx) 
; ram_0573                              = $0573 ; 009194(Wx) 0091B9(Wx) 0091E8(Rx) 009278(Rx) 009284(Rx) 00A8FF(Wx) 02F8D2(Rx) 03E03F(Wi) 03E848(Wx) 03FEFD(Wx) 03FF27(Rx) 
; ram_0574                              = $0574 ; 009194(Wx) 0091B9(Wx) 0091E8(Rx) 009278(Rx) 009284(Rx) 00A8FF(Wx) 02F8D2(Rx) 03E03F(Wi) 03E848(Wx) 03FEFD(Wx) 
; ram_0575                              = $0575 ; 009194(Wx) 0091B9(Wx) 0091E8(Rx) 009278(Rx) 009284(Rx) 00A8FF(Wx) 02F8D2(Rx) 03E03F(Wi) 03E848(Wx) 03FEFD(Wx) 
; ram_0576                              = $0576 ; 03E03F(Wi) 03E848(Wx) 03FEFD(Wx) 
; ram_0577                              = $0577 ; 03E03F(Wi) 03E848(Wx) 03FEFD(Wx) 
; ram_0578                              = $0578 ; 039424(W)  03BCBF(Rx) 03BD03(Wx) 03E03F(Wi) 03E848(Wx) 
; ram_0579                              = $0579 ; 00B4F9(Wx) 038CC2(Wx) 03AE9C(Rx) 03AEAB(Rx) 03AF67(Wx) 03AF6A(Wx) 03B06A(Wx) 03B06D(Wx) 03B079(Rx) 03B10F(Wx) 03B112(Wx) 03B1FD(Wx) 03B200(Wx) 03B209(Wx) 03B20C(Wx) 03B263(Wx) 03B477(Wx) 03B47A(Wx) 03B565(Wx) 03B568(Wx) 03B7D9(Wx) 03B7DC(Wx) 03B823(Wx) 03B826(Wx) 03B829(Rx) 03B9A8(Wx) 03B9AB(Wx) 03B9C3(Wx) 03B9C6(Wx) 03B9CA(Wx) 03B9CD(Wx) 03BA48(Wx) 03BAAA(Wx) 03E03F(Wi) 03E848(Wx) 
; ram_057A                              = $057A ; 00B4F9(Wx) 038CC2(Wx) 03AE9C(Rx) 03AEAB(Rx) 03AF67(Wx) 03AF6A(Wx) 03B07C(Wx) 03B10F(Wx) 03B112(Wx) 03B1FD(Wx) 03B200(Wx) 03B209(Wx) 03B20C(Wx) 03B263(Wx) 03B477(Wx) 03B47A(Wx) 03B565(Wx) 03B568(Wx) 03B7D9(Wx) 03B7DC(Wx) 03B82C(Wx) 03B9A8(Wx) 03B9AB(Wx) 03B9C3(Wx) 03B9C6(Wx) 03B9CA(Wx) 03B9CD(Wx) 03BA48(Wx) 03BAAA(Wx) 03E03F(Wi) 03E848(Wx) 
; ram_057B                              = $057B ; 00B4F9(Wx) 038CC2(Wx) 03AE9C(Rx) 03AEAB(Rx) 03AF67(Wx) 03AF6A(Wx) 03B07F(Wx) 03B10F(Wx) 03B112(Wx) 03B1FD(Wx) 03B200(Wx) 03B209(Wx) 03B20C(Wx) 03B263(Wx) 03B477(Wx) 03B47A(Wx) 03B565(Wx) 03B568(Wx) 03B82F(Wx) 03B9A8(Wx) 03B9AB(Wx) 03B9C3(Wx) 03B9C6(Wx) 03B9CA(Wx) 03B9CD(Wx) 03BA48(Wx) 03BAAA(Wx) 03E03F(Wi) 03E848(Wx) 



; animation timer
ram_obj_anim_timer                      = $057C ; 002BAC(W)  002D18(R)  002D1D(W)  00718F(Wx) 007192(Rx) 038B09(W)  038B12(R)  038B2A(W)  038B3E(W)  0394C4(W)  039AB7(R)  039ABC(W)  039AD5(W)  039AEA(W)  039BDC(W)  03A205(W)  03A242(W)  03A44D(W)  03A451(W)  03A46B(W)  03A483(W)  03A487(W)  03A49F(W)  03A4A3(W)  03A4DC(W)  03A526(W)  03A6F3(R)  03A757(R)  03BB04(Wx) 03BB67(Wx) 03E03F(Wi) 03E848(Wx) 03EF63(W)  03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
    ram_plr_anim_timer                      = $057C ; 
; ram_057D                              = $057D ; 0023DF(Wx) 005DD9(Rx) 005E19(Wx) 005E1D(Rx) 005E44(Wx) 005E50(Wx) 005E5A(Wx) 02D1F9(Rx) 03252E(Wx) 03BB04(Wx) 03BB67(Wx) 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_057E                              = $057E ; 0023DF(Wx) 005E19(Wx) 005E1D(Rx) 005E44(Wx) 005E50(Wx) 005E5A(Wx) 02D1F9(Rx) 03B3C7(Wx) 03B40B(Wx) 03B440(Wx) 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_057F                              = $057F ; 002480(Wx) 005E19(Wx) 005E1D(Rx) 005E44(Wx) 005E50(Wx) 005E5A(Wx) 005E61(Wx) 02D1F9(Rx) 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_0580                              = $0580 ; 002480(Wx) 005E19(Wx) 005E1D(Rx) 005E44(Wx) 005E50(Wx) 005E5A(Wx) 005E61(Wx) 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_0581                              = $0581 ; 002480(Wx) 005E19(Wx) 005E1D(Rx) 005E44(Wx) 005E50(Wx) 005E61(Wx) 03BCF2(Wx) 03BD72(Wx) 03BD95(Wx) 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_0582                              = $0582 ; 002480(Wx) 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_0583                              = $0583 ; 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_0584                              = $0584 ; 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_0585                              = $0585 ; 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_0586                              = $0586 ; 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_0587                              = $0587 ; 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_0588                              = $0588 ; 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_0589                              = $0589 ; 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_058A                              = $058A ; 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_058B                              = $058B ; 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_058C                              = $058C ; 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_058D                              = $058D ; 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_058E                              = $058E ; 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_058F                              = $058F ; 001438(Wx) 03BCF2(Wx) 03BD72(Wx) 03BD95(Wx) 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 03FAC5(Wx) 03FAFB(Rx) 
; ram_0590                              = $0590 ; 03B3C7(Wx) 03B40B(Wx) 03B440(Wx) 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_0591                              = $0591 ; 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 
; ram_0592                              = $0592 ; 03E03F(Wi) 03E848(Wx) 03EF7A(Wx) 03EF85(Wx) 03EFAD(Wx) 



; a counter to index a set of indexes for ram_obj_anim_id
ram_obj_anim_cnt                        = $0593 ; 002BA8(W)  038AFD(W)  038B30(R)  038B46(R)  038B54(W)  0394BF(W)  039AC7(R)  039AD8(W)  039ADC(R)  039AED(W)  039BBF(W)  039E3D(W)  03A201(W)  03A23E(W)  03A467(W)  03A4EF(R)  03A4F5(R)  03A532(W)  03A6EE(R)  03A752(R)  03BB58(Rx) 03BB6A(Wx) 03BB6D(Wx) 03E03F(Wi) 03E848(Wx) 03EF5F(W)  03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
    ram_plr_anim_cnt                        = $0593 ; 
    ram_wpn_anim_cnt                        = $0593 ; 
; ram_0594                              = $0594 ; 0023E4(Wx) 005DCD(Wx) 005DD4(Rx) 005E16(Wx) 005E31(Rx) 005E4D(Wx) 005E57(Wx) 02F4BA(Rx) 032529(Wx) 03BB58(Rx) 03BB6A(Wx) 03BB6D(Wx) 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_0595                              = $0595 ; 0023E4(Wx) 005E16(Wx) 005E31(Rx) 005E4D(Wx) 005E57(Wx) 02F4BA(Rx) 03B3BD(Wx) 03B417(Rx) 03B449(Wx) 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_0596                              = $0596 ; 005E16(Wx) 005E31(Rx) 005E4D(Wx) 005E57(Wx) 005E66(Wx) 02F4BA(Rx) 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_0597                              = $0597 ; 005E16(Wx) 005E31(Rx) 005E4D(Wx) 005E57(Wx) 005E66(Wx) 02F4BA(Rx) 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_0598                              = $0598 ; 005E16(Wx) 005E31(Rx) 005E4D(Wx) 005E66(Wx) 02F4BA(Rx) 03BCE7(Wx) 03BD79(Rx) 03BDCF(Wx) 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_0599                              = $0599 ; 02F4BA(Rx) 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_059A                              = $059A ; 02F4BA(Rx) 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_059B                              = $059B ; 02F4BA(Rx) 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_059C                              = $059C ; 02F4BA(Rx) 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_059D                              = $059D ; 02F4BA(Rx) 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_059E                              = $059E ; 02F4BA(Rx) 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_059F                              = $059F ; 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_05A0                              = $05A0 ; 02F4BA(Rx) 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_05A1                              = $05A1 ; 02F4BA(Rx) 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_05A2                              = $05A2 ; 02F4BA(Rx) 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_05A3                              = $05A3 ; 02F4BA(Rx) 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_05A4                              = $05A4 ; 02F4BA(Rx) 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_05A5                              = $05A5 ; 02F4BA(Rx) 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_05A6                              = $05A6 ; 001431(Rx) 03BCE7(Wx) 03BD79(Rx) 03BDCF(Wx) 03BEF9(R)  03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 03FABE(Rx) 03FAF6(Rx) 
; ram_05A7                              = $05A7 ; 03B3BD(Wx) 03B417(Rx) 03B449(Wx) 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_05A8                              = $05A8 ; 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 
; ram_05A9                              = $05A9 ; 03E03F(Wi) 03E848(Wx) 03EF75(Wx) 03EFA4(Rx) 03EFB1(Wx) 03EFB4(Wx) 03EFB7(Rx) 03EFC0(Wx) 



; 
ram_05AA_obj                            = $05AA ; 00227E(Wx) 002BA3(W)  03A303(W)  03A321(W)  03A782(W)  03BAF2(R)  03E03F(Wi) 03E848(Wx) 03EF5A(W)  03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
    ram_05AA_plr                            = $05AA ; 
; ram_05AB                              = $05AB ; 00227E(Wx) 0023D4(Wx) 005696(Wx) 005C9B(Wx) 005DC8(Wx) 005E11(Wx) 005E22(Rx) 009505(Wx) 009758(Rx) 00AE81(Wx) 00DAA9(Wx) 02552A(Rx) 027355(Wx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05AC                              = $05AC ; 00227E(Wx) 0023D4(Wx) 005696(Wx) 005C9B(Wx) 005E11(Wx) 005E22(Rx) 009505(Wx) 009758(Rx) 00AE81(Wx) 02552A(Rx) 027355(Wx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05AD                              = $05AD ; 00227E(Wx) 005696(Wx) 005C9B(Wx) 005E11(Wx) 005E22(Rx) 009505(Wx) 009758(Rx) 00AE81(Wx) 02552A(Rx) 027355(Wx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05AE                              = $05AE ; 00227E(Wx) 002383(Wx) 005696(Wx) 005C9B(Wx) 005E11(Wx) 005E22(Rx) 009505(Wx) 009758(Rx) 00AE81(Wx) 02552A(Rx) 027355(Wx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05AF                              = $05AF ; 00227E(Wx) 002383(Wx) 005696(Wx) 005E11(Wx) 005E22(Rx) 009505(Wx) 009758(Rx) 00AE81(Wx) 02552A(Rx) 027355(Wx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05B0                              = $05B0 ; 00227E(Wx) 005696(Wx) 009505(Wx) 009758(Rx) 00AE81(Wx) 02552A(Rx) 027355(Wx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05B1                              = $05B1 ; 00227E(Wx) 005696(Wx) 009505(Wx) 009758(Rx) 00AE81(Wx) 02552A(Rx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05B2                              = $05B2 ; 00227E(Wx) 005696(Wx) 009505(Wx) 009758(Rx) 00AE81(Wx) 02552A(Rx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05B3                              = $05B3 ; 00227E(Wx) 005696(Wx) 009505(Wx) 009758(Rx) 00AE81(Wx) 02552A(Rx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05B4                              = $05B4 ; 00227E(Wx) 005696(Wx) 009505(Wx) 00AE81(Wx) 02552A(Rx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05B5                              = $05B5 ; 00227E(Wx) 005696(Wx) 009505(Wx) 009758(Rx) 00AE81(Wx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05B6                              = $05B6 ; 00227E(Wx) 005696(Wx) 009505(Wx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05B7                              = $05B7 ; 00227E(Wx) 009505(Wx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05B8                              = $05B8 ; 00227E(Wx) 009505(Wx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05B9                              = $05B9 ; 00227E(Wx) 009505(Wx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05BA                              = $05BA ; 00227E(Wx) 009505(Wx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05BB                              = $05BB ; 00227E(Wx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05BC                              = $05BC ; 00227E(Wx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05BD                              = $05BD ; 00227E(Wx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05BE                              = $05BE ; 00227E(Wx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05BF                              = $05BF ; 00227E(Wx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 
; ram_05C0                              = $05C0 ; 00227E(Wx) 03E03F(Wi) 03E848(Wx) 03EF70(Wx) 03EF98(Rx) 03EF9D(Rx) 



; ai handler (lo for ram_obj_ai_script)
; see con_ai_subscr
; что-то другое в 0x03B957 0x03B90D ?
    ; довольно много предположительной левой хуйни
ram_obj_ai_subscript                    = $05C1 ; 00227E(Wx) 002B55(W)  002B63(W)  002CAD(R)  0393E7(W)  0393F9(R)  0395C1(W)  0395CF(W)  03963F(Wx) 039766(Wx) 0397E7(R)  0398B7(W)  0398CB(W)  0398E3(Rx) 039900(Wx) 039977(R)  039E35(W)  039EAD(W)  03A01E(R)  03A0B2(W)  03A0F5(R)  03A12D(R)  03A15D(W)  03A1DD(W)  03A1EB(W)  03A20B(W)  03A219(W)  03A284(R)  03A3E6(W)  03A457(R)  03A503(R)  03A52C(R)  03A55A(R)  03A6D7(W)  03A6E3(R)  03A6E8(W)  03A73D(W)  03A747(R)  03A74C(W)  03A792(W)  03ACA7(W)  03ACDF(W)  03AD1F(W)  03E03F(Wi) 03E848(Wx) 
    ram_05C1_plr                            = $05C1 ; something to do with stairs? 00/01
    ram_05C1_wpn                            = $05C1 ; 
; ram_05C2                              = $05C2 ; 00227E(Wx) 00669A(W)  0066B5(R)  0066D3(W)  0066DA(R)  008091(Rx) 0083EA(Rx) 0083F8(Wx) 008843(Rx) 008856(Rx) 008860(Rx) 008878(Rx) 00889C(Wx) 0089C4(Rx) 009445(Wx) 00947A(Wx) 009552(Wx) 00958B(Wx) 009ACB(Wx) 009AE3(Wx) 009AE6(Rx) 009AF8(Wx) 00C0BF(Rx) 00C0CD(Wx) 00C0D3(Rx) 00C3BC(Rx) 00C3CA(Wx) 00C4E1(Rx) 00CA8D(Rx) 00CD74(Wy) 00D0CB(Rx) 00D281(Wx) 00D37B(Wx) 01361F(Rx) 0137B3(Wx) 013ADB(Wx) 017C1D(Wx) 01BE80(Wx) 023EF4(Rx) 023F07(Wx) 023F13(Rx) 024106(Rx) 02466D(Wx) 0248C0(Wy) 0249D8(Rx) 0252DC(Wx) 025301(Wy) 025375(Wx) 0253CD(Wx) 025430(Wx) 025451(Wx) 025467(Wx) 025531(Wx) 025565(Wx) 025575(Wx) 025583(Wx) 025599(Wx) 025625(Wx) 02565F(Wx) 0256F3(Wx) 02571C(Wx) 02584F(Wx) 025977(Wx) 025B74(Wx) 025BC8(Rx) 025BCB(Wx) 025C2F(Wx) 025C3C(Wx) 025D5A(Rx) 025D5D(Wx) 025D76(Wx) 025F62(Wx) 025F8F(Wx) 026007(Wx) 026033(Wx) 0260BA(Wx) 02612F(Wx) 026188(Rx) 026197(Wx) 0261BC(Ry) 02655C(Ry) 02695B(Rx) 02698C(Wx) 026B5D(Wy) 026B66(Rx) 026BC3(Rx) 026C06(Wx) 026DEC(Wy) 026E6B(Wy) 026F61(Wx) 0270B3(Rx) 0270CB(Rx) 0272F4(R)  02735E(Wx) 027401(Wy) 02755B(Rx) 0276CF(Rx) 027727(Rx) 02777C(Wx) 0277D5(Wx) 0277D8(Rx) 0277E1(Wx) 027854(Wx) 027857(Rx) 027860(Wx) 027C44(Rx) 027C54(Wx) 027C63(Rx) 029211(Wx) 02C174(Wx) 02C1AB(Wx) 02C1B7(Wx) 02C1C3(Wx) 02C1C9(Wx) 02C1D5(Wx) 02C1E1(Wx) 02C1ED(Wx) 02C1FC(Wx) 02C220(Wx) 02C239(Wx) 02C23D(Wx) 02C250(Wx) 02C266(Wx) 02C294(Wx) 02C2B8(Wx) 02C383(Wx) 02C3D3(Wx) 02C458(Wx) 02C48E(Wx) 02C4A1(Wx) 02C538(Wx) 02C5AF(Wx) 02C5EE(Wx) 02C619(Wx) 02C61C(Wx) 02C672(Wx) 02C6D7(Wx) 02C729(Wx) 02C7CC(Wx) 02C7E9(Wx) 02C809(Wx) 02C80D(Wx) 02C821(Wx) 02C8AE(Wx) 02C8C3(Wx) 02C93F(Wx) 02C95C(Wx) 02C987(Wx) 02C98A(Wx) 02CA08(Wx) 02CA39(Wx) 02CA4A(Wx) 02CA71(Wx) 02CAF3(Wx) 02CB9B(Wx) 02CBC0(Wx) 02CBD2(Wx) 02CC83(Wx) 02CD28(Wx) 02CD82(Wx) 02CD90(Wx) 02CDA8(Wx) 02CE61(Wx) 02CE6A(Wx) 02CFF7(Wx) 02D0AE(Wx) 02D131(Wx) 02D19E(Wx) 02D1B1(Wx) 02D29E(Wx) 02D2A1(Wx) 02D2A4(Wx) 02D2E2(Wx) 02D2ED(Wx) 02D343(Wx) 02D368(Wx) 02D3DD(Wx) 02D3E5(Wx) 02D3E9(Wx) 02D445(Wx) 02D4C4(Wx) 02D4F2(Wx) 02D50F(Wx) 02D51B(Wx) 02D52E(Wx) 02D545(Wx) 02D55A(Wx) 02D5B3(Wx) 02D5C1(Wx) 02D6D7(Wx) 02D8CA(Wx) 02D8D0(Wx) 02D914(Wx) 02D920(Wx) 02D923(Wx) 02D956(Wx) 02D9C0(Wx) 02DA42(Wx) 02DB41(Wx) 02DD0D(Wx) 02DF53(Wx) 02DF87(Wx) 02DFFA(Wx) 02E069(Wx) 02E06C(Wx) 02E096(Wx) 02E0BD(Wx) 02E0DF(Wx) 02E0FB(Wx) 02E1EA(Wx) 02E280(Wx) 02E477(Wx) 02E47D(Wx) 02E4EF(Wx) 02E503(Wx) 02E50E(Wx) 02E51F(Wx) 02E52D(Rx) 02E530(Wx) 02F541(Wx) 02F59C(Wx) 02F5A8(Wx) 02FD2C(Rx) 032B4B(Rx) 03963F(Wx) 039766(Wx) 0398E3(Rx) 039900(Wx) 03E03F(Wi) 03E848(Wx) 03FF06(Wx) 
; ram_05C3                              = $05C3 ; 00227E(Wx) 008091(Rx) 0083EA(Rx) 0083F8(Wx) 008843(Rx) 008856(Rx) 008860(Rx) 008878(Rx) 00889C(Wx) 0089C4(Rx) 009445(Wx) 00947A(Wx) 009552(Wx) 00958B(Wx) 009ACB(Wx) 009AE3(Wx) 009AE6(Rx) 009AF8(Wx) 00C0BF(Rx) 00C0CD(Wx) 00C0D3(Rx) 00CA8D(Rx) 00CAB9(Wx) 00CC88(Rx) 00CCA2(Wx) 00CCD8(Rx) 00CCE6(Wx) 00CD3C(Rx) 00D4EC(Rx) 00D508(Wx) 01361F(Rx) 0137B3(Wx) 013ADB(Wx) 017C1D(Wx) 01BE80(Wx) 023EF4(Rx) 023F07(Wx) 023F13(Rx) 024106(Rx) 02466D(Wx) 024717(Wx) 0248C0(Wy) 0249D8(Rx) 0252DC(Wx) 025301(Wy) 025375(Wx) 025379(Wx) 025467(Wx) 025531(Wx) 025565(Wx) 025575(Wx) 025583(Wx) 025599(Wx) 025625(Wx) 02565F(Wx) 0256A9(Wx) 02571C(Wx) 02584F(Wx) 025977(Wx) 025B74(Wx) 025BC8(Rx) 025BCB(Wx) 025C2F(Wx) 025C3C(Wx) 025D5A(Rx) 025D5D(Wx) 025D76(Wx) 025DE1(Wy) 025F8F(Wx) 025FF4(Wx) 026007(Wx) 026033(Wx) 0260BA(Wx) 02655C(Ry) 0266DB(Rx) 0266FB(Wx) 02698C(Wx) 026B5D(Wy) 026B66(Rx) 026BC3(Rx) 026C06(Wx) 026DEC(Wy) 026E6B(Wy) 0270B3(Rx) 027141(Wx) 0271BD(Rx) 0271D8(Wx) 02735E(Wx) 027401(Wy) 027610(Wy) 027C44(Rx) 027C54(Wx) 027C63(Rx) 027EB5(Wx) 029211(Wx) 02C174(Wx) 02C1AB(Wx) 02C1B7(Wx) 02C1C3(Wx) 02C1C9(Wx) 02C1D5(Wx) 02C1E1(Wx) 02C1ED(Wx) 02C1FC(Wx) 02C220(Wx) 02C239(Wx) 02C23D(Wx) 02C250(Wx) 02C266(Wx) 02C294(Wx) 02C2B8(Wx) 02C383(Wx) 02C3D3(Wx) 02C458(Wx) 02C48E(Wx) 02C4A1(Wx) 02C538(Wx) 02C5AF(Wx) 02C5F4(Wx) 02C619(Wx) 02C61C(Wx) 02C672(Wx) 02C6D7(Wx) 02C729(Wx) 02C7CC(Wx) 02C7E9(Wx) 02C809(Wx) 02C80D(Wx) 02C821(Wx) 02C8C3(Wx) 02C93F(Wx) 02C95C(Wx) 02C987(Wx) 02C98A(Wx) 02C9B1(Wx) 02CA08(Wx) 02CA39(Wx) 02CA4A(Wx) 02CA71(Wx) 02CAF3(Wx) 02CB9B(Wx) 02CBC0(Wx) 02CBD2(Wx) 02CC83(Wx) 02CD28(Wx) 02CD82(Wx) 02CD90(Wx) 02CDA8(Wx) 02CE61(Wx) 02CE6A(Wx) 02CFF7(Wx) 02D0AE(Wx) 02D131(Wx) 02D19E(Wx) 02D29E(Wx) 02D2A1(Wx) 02D2A4(Wx) 02D2E2(Wx) 02D2ED(Wx) 02D343(Wx) 02D368(Wx) 02D3DD(Wx) 02D3E5(Wx) 02D3E9(Wx) 02D445(Wx) 02D4C4(Wx) 02D4F2(Wx) 02D50F(Wx) 02D51B(Wx) 02D52E(Wx) 02D545(Wx) 02D55A(Wx) 02D5B3(Wx) 02D5C1(Wx) 02D6D7(Wx) 02D8CA(Wx) 02D914(Wx) 02D920(Wx) 02D923(Wx) 02D956(Wx) 02D9C0(Wx) 02DAEE(Wy) 02DB41(Wx) 02DD0D(Wx) 02DF53(Wx) 02DF87(Wx) 02DFFA(Wx) 02E069(Wx) 02E06C(Wx) 02E096(Wx) 02E0BD(Wx) 02E0FB(Wx) 02E1EA(Wx) 02E477(Wx) 02E47D(Wx) 02E4EF(Wx) 02E503(Wx) 02E50E(Wx) 02E51F(Wx) 02E52D(Rx) 02E530(Wx) 02F541(Wx) 02F59C(Wx) 02F5A8(Wx) 02FD2C(Rx) 03AF87(Wx) 03AFF4(Wx) 03AFFF(Wx) 03B3A0(Wx) 03B484(Wx) 03B504(Wx) 03B5C9(Wx) 03B63A(Wx) 03E03F(Wi) 03E848(Wx) 03FF06(Wx) 
; ram_05C4                              = $05C4 ; 00227E(Wx) 008091(Rx) 0083EA(Rx) 0083F8(Wx) 008843(Rx) 008856(Rx) 008860(Rx) 008878(Rx) 00889C(Wx) 0089C4(Rx) 009445(Wx) 00947A(Wx) 009552(Wx) 00958B(Wx) 009ACB(Wx) 009AE3(Wx) 009AE6(Rx) 009AF8(Wx) 00C296(Wy) 00C3BC(Rx) 00C3CA(Wx) 00C4E1(Rx) 00CD74(Wy) 00D4EC(Rx) 00D508(Wx) 01361F(Rx) 0137B3(Wx) 017C1D(Wx) 01BE80(Wx) 024106(Rx) 02466D(Wx) 024717(Wx) 0249D8(Rx) 0252DC(Wx) 025301(Wy) 025375(Wx) 025379(Wx) 025531(Wx) 025565(Wx) 025575(Wx) 025583(Wx) 025599(Wx) 025625(Wx) 02571C(Wx) 02584F(Wx) 025977(Wx) 025B74(Wx) 025BC8(Rx) 025BCB(Wx) 025C2F(Wx) 025C3C(Wx) 025D5A(Rx) 025D5D(Wx) 025D76(Wx) 025FF4(Wx) 026007(Wx) 0260BA(Wx) 02612F(Wx) 02698C(Wx) 026B5D(Wy) 026B66(Rx) 026BC3(Rx) 026C06(Wx) 026DEC(Wy) 026E6B(Wy) 0270B3(Rx) 027141(Wx) 0271BD(Rx) 0271D8(Wx) 02735E(Wx) 027401(Wy) 027610(Wy) 02791C(Rx) 027C44(Rx) 027C54(Wx) 027C63(Rx) 027E5A(Wy) 029211(Wx) 02C1AB(Wx) 02C1B7(Wx) 02C1C3(Wx) 02C1C9(Wx) 02C1D5(Wx) 02C1E1(Wx) 02C1ED(Wx) 02C1FC(Wx) 02C220(Wx) 02C239(Wx) 02C23D(Wx) 02C250(Wx) 02C266(Wx) 02C294(Wx) 02C2B8(Wx) 02C383(Wx) 02C3D3(Wx) 02C458(Wx) 02C48E(Wx) 02C4A1(Wx) 02C538(Wx) 02C5AF(Wx) 02C672(Wx) 02C6D7(Wx) 02C729(Wx) 02C7CC(Wx) 02C7E9(Wx) 02C80D(Wx) 02C8C3(Wx) 02C987(Wx) 02C98A(Wx) 02CA08(Wx) 02CA39(Wx) 02CA4A(Wx) 02CA71(Wx) 02CAF3(Wx) 02CB9B(Wx) 02CBC0(Wx) 02CBD2(Wx) 02CC83(Wx) 02CD28(Wx) 02CD82(Wx) 02CD90(Wx) 02CDA8(Wx) 02CE6A(Wx) 02CFF7(Wx) 02D0AE(Wx) 02D131(Wx) 02D19E(Wx) 02D29E(Wx) 02D2A1(Wx) 02D2A4(Wx) 02D2E2(Wx) 02D368(Wx) 02D3DD(Wx) 02D3E5(Wx) 02D3E9(Wx) 02D445(Wx) 02D50F(Wx) 02D51B(Wx) 02D52E(Wx) 02D55A(Wx) 02D5B3(Wx) 02D5C1(Wx) 02D6D7(Wx) 02D8CA(Wx) 02D956(Wx) 02DAEE(Wy) 02DB41(Wx) 02DD0D(Wx) 02DF53(Wx) 02DF87(Wx) 02DFFA(Wx) 02E069(Wx) 02E06C(Wx) 02E096(Wx) 02E0BD(Wx) 02E0FB(Wx) 02E1EA(Wx) 02E477(Wx) 02E47D(Wx) 02E4EF(Wx) 02E503(Wx) 02E50E(Wx) 02E51F(Wx) 02E52D(Rx) 02E530(Wx) 02F541(Wx) 02F59C(Wx) 02F5A8(Wx) 02FD2C(Rx) 03B484(Wx) 03B504(Wx) 03E03F(Wi) 03E848(Wx) 03FF06(Wx) 
; ram_05C5                              = $05C5 ; 00227E(Wx) 008091(Rx) 0083EA(Rx) 0083F8(Wx) 008843(Rx) 008856(Rx) 008860(Rx) 008878(Rx) 00889C(Wx) 0089C4(Rx) 009445(Wx) 00947A(Wx) 009552(Wx) 00958B(Wx) 009ACB(Wx) 009AE3(Wx) 009AE6(Rx) 009AF8(Wx) 00C296(Wy) 00C3BC(Rx) 00C3CA(Wx) 00C4E1(Rx) 00CD74(Wy) 00D4EC(Rx) 00D508(Wx) 00D54E(Rx) 00D5B5(Wx) 01361F(Rx) 013ADB(Wx) 017C1D(Wx) 01BE80(Wx) 024106(Rx) 02466D(Wx) 0249D8(Rx) 0252DC(Wx) 025301(Wy) 025375(Wx) 025379(Wx) 025531(Wx) 025565(Wx) 025575(Wx) 025583(Wx) 025599(Wx) 025625(Wx) 02571C(Wx) 02584F(Wx) 025977(Wx) 025B74(Wx) 025BC8(Rx) 025BCB(Wx) 025C2F(Wx) 025C3C(Wx) 025D5A(Rx) 025D5D(Wx) 025D76(Wx) 025FF4(Wx) 026007(Wx) 026033(Wx) 0260BA(Wx) 02612F(Wx) 02698C(Wx) 026B5D(Wy) 026B66(Rx) 026BC3(Rx) 026C06(Wx) 026DEC(Wy) 026E6B(Wy) 027141(Wx) 0271BD(Rx) 0271D8(Wx) 02735E(Wx) 027610(Wy) 02791C(Rx) 027C44(Rx) 027C54(Wx) 027C63(Rx) 027E5A(Wy) 029211(Wx) 02C1AB(Wx) 02C1B7(Wx) 02C1C3(Wx) 02C1C9(Wx) 02C1E1(Wx) 02C1ED(Wx) 02C1FC(Wx) 02C220(Wx) 02C239(Wx) 02C23D(Wx) 02C250(Wx) 02C266(Wx) 02C294(Wx) 02C2B8(Wx) 02C383(Wx) 02C3D3(Wx) 02C458(Wx) 02C48E(Wx) 02C4A1(Wx) 02C538(Wx) 02C5AF(Wx) 02C65A(Wx) 02C672(Wx) 02C6D7(Wx) 02C729(Wx) 02C79B(Wx) 02C7CC(Wx) 02C7E9(Wx) 02C809(Wx) 02C80D(Wx) 02C93F(Wx) 02CA39(Wx) 02CA4A(Wx) 02CA71(Wx) 02CAF3(Wx) 02CB58(Wx) 02CBC0(Wx) 02CBD2(Wx) 02CDA8(Wx) 02CE6A(Wx) 02CF44(Wx) 02CFF7(Wx) 02D0AE(Wx) 02D131(Wx) 02D19E(Wx) 02D26C(Wx) 02D29E(Wx) 02D2A1(Wx) 02D2A4(Wx) 02D368(Wx) 02D3DD(Wx) 02D3E5(Wx) 02D50F(Wx) 02D6D7(Wx) 02D956(Wx) 02DAEE(Wy) 02DB41(Wx) 02DD0D(Wx) 02DF53(Wx) 02DF87(Wx) 02DFFA(Wx) 02E069(Wx) 02E06C(Wx) 02E096(Wx) 02E0BD(Wx) 02E0FB(Wx) 02E1EA(Wx) 02E477(Wx) 02E47D(Wx) 02E4EF(Wx) 02E503(Wx) 02E50E(Wx) 02E51F(Wx) 02E52D(Rx) 02E530(Wx) 02F541(Wx) 02F59C(Wx) 02F5A8(Wx) 02FD2C(Rx) 03B484(Wx) 03B504(Wx) 03E03F(Wi) 03E848(Wx) 03FF06(Wx) 
; ram_05C6                              = $05C6 ; 008091(Rx) 0083EA(Rx) 0083F8(Wx) 008843(Rx) 008856(Rx) 008860(Rx) 008878(Rx) 00889C(Wx) 0089C4(Rx) 009445(Wx) 00947A(Wx) 009552(Wx) 00958B(Wx) 009ACB(Wx) 009AE3(Wx) 009AE6(Rx) 009AF8(Wx) 00C296(Wy) 00C3BC(Rx) 00C3CA(Wx) 00C4E1(Rx) 00D4EC(Rx) 00D508(Wx) 01361F(Rx) 017C1D(Wx) 017C85(Rx) 017CBA(Wy) 017CEA(Wx) 017D49(Wx) 01BE80(Wx) 024106(Rx) 02466D(Wx) 024717(Wx) 0249D8(Rx) 0252DC(Wx) 025301(Wy) 025375(Wx) 025379(Wx) 025531(Wx) 025565(Wx) 025575(Wx) 025583(Wx) 025599(Wx) 025625(Wx) 02571C(Wx) 02584F(Wx) 025977(Wx) 025B74(Wx) 025BC8(Rx) 025BCB(Wx) 025C2F(Wx) 025C3C(Wx) 025D5A(Rx) 025D5D(Wx) 025D76(Wx) 025EE0(Wy) 025FF4(Wx) 026007(Wx) 0260BA(Wx) 02698C(Wx) 026B66(Rx) 026BC3(Rx) 026C06(Wx) 026DEC(Wy) 026E6B(Wy) 027141(Wx) 0271BD(Rx) 0271D8(Wx) 02735E(Wx) 027610(Wy) 02791C(Rx) 027C44(Rx) 027C54(Wx) 027C63(Rx) 029211(Wx) 02C1AB(Wx) 02C1B7(Wx) 02C1C3(Wx) 02C1C9(Wx) 02C1E1(Wx) 02C1ED(Wx) 02C1FC(Wx) 02C220(Wx) 02C239(Wx) 02C23D(Wx) 02C250(Wx) 02C294(Wx) 02C2B8(Wx) 02C383(Wx) 02C3D3(Wx) 02C458(Wx) 02C48E(Wx) 02C4A1(Wx) 02C538(Wx) 02C5AF(Wx) 02C65A(Wx) 02C672(Wx) 02C6D7(Wx) 02C729(Wx) 02C79B(Wx) 02C7CC(Wx) 02C7E9(Wx) 02C80D(Wx) 02CA39(Wx) 02CA4A(Wx) 02CA71(Wx) 02CAF3(Wx) 02CB58(Wx) 02CBC0(Wx) 02CBD2(Wx) 02CDA8(Wx) 02CE6A(Wx) 02CF44(Wx) 02CFF7(Wx) 02D0AE(Wx) 02D131(Wx) 02D19E(Wx) 02D50F(Wx) 02D6D7(Wx) 02D956(Wx) 02DAEE(Wy) 02DB41(Wx) 02DD0D(Wx) 02DF53(Wx) 02DF87(Wx) 02DFFA(Wx) 02E069(Wx) 02E06C(Wx) 02E096(Wx) 02E0BD(Wx) 02E0FB(Wx) 02E1EA(Wx) 02E477(Wx) 02E47D(Wx) 02E4EF(Wx) 02E503(Wx) 02E50E(Wx) 02E51F(Wx) 02E52D(Rx) 02E530(Wx) 02F541(Wx) 02F59C(Wx) 02FD2C(Rx) 03E03F(Wi) 03E848(Wx) 03FF06(Wx) 
; ram_05C7                              = $05C7 ; 008091(Rx) 0083EA(Rx) 0083F8(Wx) 008843(Rx) 008856(Rx) 008860(Rx) 008878(Rx) 00889C(Wx) 0089C4(Rx) 009445(Wx) 00947A(Wx) 009552(Wx) 00958B(Wx) 009ACB(Wx) 009AE3(Wx) 009AE6(Rx) 009AF8(Wx) 00C296(Wy) 00C3BC(Rx) 00C3CA(Wx) 00C4E1(Rx) 00D4EC(Rx) 00D508(Wx) 01361F(Rx) 017C85(Rx) 017CBA(Wy) 017CEA(Wx) 017D49(Wx) 01BE80(Wx) 024106(Rx) 02466D(Wx) 024717(Wx) 0249D8(Rx) 0252DC(Wx) 025301(Wy) 025375(Wx) 025379(Wx) 025531(Wx) 025565(Wx) 025575(Wx) 025583(Wx) 025599(Wx) 025625(Wx) 02571C(Wx) 02584F(Wx) 025977(Wx) 025B74(Wx) 025BC8(Rx) 025BCB(Wx) 025C2F(Wx) 025D76(Wx) 025FF4(Wx) 026007(Wx) 0260BA(Wx) 02612F(Wx) 02698C(Wx) 026B66(Rx) 026BC3(Rx) 026C06(Wx) 026DEC(Wy) 026E6B(Wy) 027141(Wx) 0271BD(Rx) 0271D8(Wx) 02735E(Wx) 027610(Wy) 027C44(Rx) 027C54(Wx) 027C63(Rx) 029211(Wx) 02C1AB(Wx) 02C1B7(Wx) 02C1C3(Wx) 02C1E1(Wx) 02C1ED(Wx) 02C1FC(Wx) 02C220(Wx) 02C23D(Wx) 02C250(Wx) 02C294(Wx) 02C2B8(Wx) 02C383(Wx) 02C3D3(Wx) 02C458(Wx) 02C4A1(Wx) 02C65A(Wx) 02C672(Wx) 02C6D7(Wx) 02C729(Wx) 02CA4A(Wx) 02CB58(Wx) 02CDA8(Wx) 02CE6A(Wx) 02CF44(Wx) 02CFF7(Wx) 02D19E(Wx) 02DAEE(Wy) 02DB41(Wx) 02DD0D(Wx) 02DF53(Wx) 02DF87(Wx) 02DFFA(Wx) 02E069(Wx) 02E06C(Wx) 02E096(Wx) 02E0BD(Wx) 02E0DF(Wx) 02E0FB(Wx) 02E477(Wx) 02E47D(Wx) 02E4EF(Wx) 02E503(Wx) 02E50E(Wx) 02E51F(Wx) 02E52D(Rx) 02E530(Wx) 02F59C(Wx) 02FD2C(Rx) 03E03F(Wi) 03E848(Wx) 03FF06(Wx) 
; ram_05C8                              = $05C8 ; 008091(Rx) 0083EA(Rx) 0083F8(Wx) 008843(Rx) 008856(Rx) 008878(Rx) 00889C(Wx) 0089C4(Rx) 009445(Wx) 00947A(Wx) 009552(Wx) 00958B(Wx) 009ACB(Wx) 009AE3(Wx) 009AE6(Rx) 009AF8(Wx) 00C296(Wy) 00C3BC(Rx) 00C3CA(Wx) 00D4EC(Rx) 00D508(Wx) 01361F(Rx) 017C1D(Wx) 017C85(Rx) 017CBA(Wy) 017CEA(Wx) 017D49(Wx) 023EF4(Rx) 023F07(Wx) 023F13(Rx) 024106(Rx) 02466D(Wx) 024717(Wx) 0248C0(Wy) 0249D8(Rx) 0252DC(Wx) 025301(Wy) 025375(Wx) 025379(Wx) 025483(Wx) 0254D2(Wx) 025531(Wx) 025565(Wx) 025575(Wx) 025583(Wx) 025625(Wx) 02571C(Wx) 02584F(Wx) 025977(Wx) 025B74(Wx) 025BC8(Rx) 025BCB(Wx) 025C2F(Wx) 025C3C(Wx) 025D5A(Rx) 025D5D(Wx) 025D76(Wx) 025FF4(Wx) 026007(Wx) 0260BA(Wx) 02612F(Wx) 026657(R)  0268E1(Rx) 02698C(Wx) 026B5D(Wy) 026B66(Rx) 026DEC(Wy) 026E6B(Wy) 027141(Wx) 0271BD(Rx) 0271D8(Wx) 027610(Wy) 027B8B(Wy) 027D00(Rx) 027D1F(Wx) 029211(Wx) 02C1B7(Wx) 02C1E1(Wx) 02C1ED(Wx) 02C1FC(Wx) 02C220(Wx) 02C250(Wx) 02C294(Wx) 02C2B8(Wx) 02C383(Wx) 02C3D3(Wx) 02C458(Wx) 02C4A1(Wx) 02C672(Wx) 02C729(Wx) 02CA39(Wx) 02CA71(Wx) 02CF44(Wx) 02DAEE(Wy) 02DB41(Wx) 02DD0D(Wx) 02DFFA(Wx) 02E096(Wx) 02E0BD(Wx) 02E0FB(Wx) 02F59C(Wx) 02FD2C(Rx) 03E03F(Wi) 03E848(Wx) 03FF06(Wx) 
; ram_05C9                              = $05C9 ; 008091(Rx) 0083EA(Rx) 0083F8(Wx) 008843(Rx) 008856(Rx) 008878(Rx) 00889C(Wx) 0089C4(Rx) 009445(Wx) 00947A(Wx) 009552(Wx) 00958B(Wx) 009ACB(Wx) 009AE3(Wx) 009AE6(Rx) 009AF8(Wx) 00C296(Wy) 00C4E1(Rx) 00D4EC(Rx) 00D508(Wx) 013ADB(Wx) 017C85(Rx) 017CBA(Wy) 017CEA(Wx) 017D49(Wx) 023EF4(Rx) 023F07(Wx) 023F13(Rx) 024106(Rx) 02466D(Wx) 0248C0(Wy) 0249D8(Rx) 0252DC(Wx) 025301(Wy) 025375(Wx) 025379(Wx) 025531(Wx) 025565(Wx) 025575(Wx) 025583(Wx) 025625(Wx) 02571C(Wx) 02584F(Wx) 025977(Wx) 025B74(Wx) 025BC8(Rx) 025BCB(Wx) 025C2F(Wx) 025C3C(Wx) 025D76(Wx) 025FF4(Wx) 026007(Wx) 0260BA(Wx) 02612F(Wx) 02698C(Wx) 026B5D(Wy) 026B66(Rx) 026DEC(Wy) 026E6B(Wy) 027141(Wx) 0271BD(Rx) 0271D8(Wx) 027B8B(Wy) 027D00(Rx) 027D1F(Wx) 02C174(Wx) 02C1AB(Wx) 02C1B7(Wx) 02C1FC(Wx) 02C220(Wx) 02C23D(Wx) 02C294(Wx) 02C2B8(Wx) 02C383(Wx) 02C3D3(Wx) 02C458(Wx) 02C4A1(Wx) 02C672(Wx) 02C729(Wx) 02C80D(Wx) 02CF44(Wx) 02CFF7(Wx) 02D19E(Wx) 02D6D7(Wx) 02D9C0(Wx) 02DB12(Wx) 02DD0D(Wx) 02DFFA(Wx) 02E096(Wx) 02E0BD(Wx) 02E0FB(Wx) 02F59C(Wx) 02FD2C(Rx) 03E03F(Wi) 03E848(Wx) 03FF06(Wx) 
; ram_05CA                              = $05CA ; 008091(Rx) 0083EA(Rx) 0083F8(Wx) 008843(Rx) 008856(Rx) 008878(Rx) 00889C(Wx) 009445(Wx) 00947A(Wx) 009552(Wx) 00958B(Wx) 009AE3(Wx) 009AE6(Rx) 009AF8(Wx) 00D4EC(Rx) 00D508(Wx) 01361F(Rx) 0137B3(Wx) 017C1D(Wx) 017C85(Rx) 017CBA(Wy) 017CEA(Wx) 017D49(Wx) 024106(Rx) 02466D(Wx) 0249D8(Rx) 0252DC(Wx) 025301(Wy) 025375(Wx) 025379(Wx) 025531(Wx) 025565(Wx) 025583(Wx) 025625(Wx) 02571C(Wx) 02584F(Wx) 025C3C(Wx) 025D76(Wx) 025FF4(Wx) 026007(Wx) 0260BA(Wx) 026DEC(Wy) 026E6B(Wy) 027141(Wx) 0271BD(Rx) 0271D8(Wx) 027B8B(Wy) 027D00(Rx) 027D1F(Wx) 02C1FC(Wx) 02C294(Wx) 02C3D3(Wx) 02C458(Wx) 02C672(Wx) 02C729(Wx) 02CA4A(Wx) 02CC1C(Wx) 02CC60(Wx) 02D24A(Wx) 02D607(Wx) 02D799(Wx) 02D991(Wx) 02D9C0(Wx) 02F59C(Wx) 02FD2C(Rx) 03E03F(Wi) 03E848(Wx) 03FF06(Wx) 
; ram_05CB                              = $05CB ; 008091(Rx) 0083EA(Rx) 0083F8(Wx) 009445(Wx) 00947A(Wx) 009552(Wx) 00958B(Wx) 00D4EC(Rx) 00D508(Wx) 01361F(Rx) 0137B3(Wx) 017C1D(Wx) 017C85(Rx) 017CBA(Wy) 017CEA(Wx) 017D49(Wx) 01BE80(Wx) 024106(Rx) 02466D(Wx) 024717(Wx) 0249D8(Rx) 0252DC(Wx) 025301(Wy) 025375(Wx) 025379(Wx) 025531(Wx) 025565(Wx) 025583(Wx) 025625(Wx) 02571C(Wx) 02584F(Wx) 025C3C(Wx) 025D76(Wx) 026007(Wx) 0260BA(Wx) 02612F(Wx) 026DEC(Wy) 026E6B(Wy) 027141(Wx) 0271BD(Rx) 0271D8(Wx) 027B8B(Wy) 027D00(Rx) 027D1F(Wx) 02C174(Wx) 02C1AB(Wx) 02C1B7(Wx) 02C1FC(Wx) 02C220(Wx) 02C294(Wx) 02C2B8(Wx) 02C383(Wx) 02C3D3(Wx) 02C458(Wx) 02C4A1(Wx) 02C672(Wx) 02C729(Wx) 02CA4A(Wx) 02CC1C(Wx) 02CC60(Wx) 02D24A(Wx) 02D26C(Wx) 02D29E(Wx) 02D2A1(Wx) 02D2A4(Wx) 02D368(Wx) 02D607(Wx) 02D6D7(Wx) 02D799(Wx) 02D991(Wx) 02DFFA(Wx) 02E069(Wx) 02E06C(Wx) 02E096(Wx) 02E0BD(Wx) 02E0FB(Wx) 02F59C(Wx) 02FD2C(Rx) 03E03F(Wi) 03E848(Wx) 03FF06(Wx) 
; ram_05CC                              = $05CC ; 008091(Rx) 0083EA(Rx) 0083F8(Wx) 0089C4(Rx) 009445(Wx) 00947A(Wx) 009552(Wx) 00958B(Wx) 009ACB(Wx) 009AE3(Wx) 009AE6(Rx) 009AF8(Wx) 01361F(Rx) 0137B3(Wx) 017C1D(Wx) 017C85(Rx) 017CBA(Wy) 017CEA(Wx) 017D49(Wx) 01BE80(Wx) 024106(Rx) 02466D(Wx) 0249D8(Rx) 025565(Wx) 025625(Wx) 02571C(Wx) 025C3C(Wx) 025D76(Wx) 0260BA(Wx) 027141(Wx) 0271BD(Rx) 0271D8(Wx) 027B8B(Wy) 027D00(Rx) 027D1F(Wx) 02C174(Wx) 02C1FC(Wx) 02C220(Wx) 02C294(Wx) 02C2B8(Wx) 02C383(Wx) 02C3D3(Wx) 02C458(Wx) 02C672(Wx) 02C729(Wx) 02CA4A(Wx) 02CC1C(Wx) 02CC60(Wx) 02D24A(Wx) 02D26C(Wx) 02D29E(Wx) 02D2A1(Wx) 02D2A4(Wx) 02D368(Wx) 02D607(Wx) 02D799(Wx) 02D991(Wx) 02DFFA(Wx) 02E069(Wx) 02E06C(Wx) 02E096(Wx) 02E0BD(Wx) 02E0FB(Wx) 02F59C(Wx) 02FD2C(Rx) 03E03F(Wi) 03E848(Wx) 03FF06(Wx) 
; ram_05CD                              = $05CD ; 008091(Rx) 0083EA(Rx) 0083F8(Wx) 009445(Wx) 00947A(Wx) 009552(Wx) 00958B(Wx) 01361F(Rx) 017C1D(Wx) 017C85(Rx) 017CBA(Wy) 017CEA(Wx) 017D49(Wx) 024106(Rx) 02466D(Wx) 0249D8(Rx) 025565(Wx) 025625(Wx) 02571C(Wx) 025D76(Wx) 0260BA(Wx) 02612F(Wx) 027141(Wx) 0271BD(Rx) 0271D8(Wx) 02C1FC(Wx) 02C294(Wx) 02C2B8(Wx) 02C3D3(Wx) 02C458(Wx) 02C672(Wx) 02C729(Wx) 02CA4A(Wx) 02D24A(Wx) 02D607(Wx) 02D799(Wx) 02D991(Wx) 02F59C(Wx) 02FD2C(Rx) 03E03F(Wi) 03E848(Wx) 03FF06(Wx) 
; ram_05CE                              = $05CE ; 01361F(Rx) 02C1FC(Wx) 02C211(Wx) 02C294(Wx) 02C383(Wx) 02C3D3(Wx) 02C458(Wx) 02C672(Wx) 02CDB3(Wx) 02DFFA(Wx) 02E069(Wx) 02E06C(Wx) 02E096(Wx) 02E0BD(Wx) 02E0DF(Wx) 02E0FB(Wx) 02F59C(Wx) 02FD2C(Rx) 03E03F(Wi) 03E848(Wx) 03FF06(Wx) 
; ram_05CF                              = $05CF ; 01361F(Rx) 02C1FC(Wx) 02C211(Wx) 02C294(Wx) 02C383(Wx) 02C3D3(Wx) 02C458(Wx) 02C672(Wx) 02CDB3(Wx) 02DFFA(Wx) 02E069(Wx) 02E06C(Wx) 02E096(Wx) 02E0BD(Wx) 02E0DF(Wx) 02E0FB(Wx) 02F59C(Wx) 02FD2C(Rx) 03E03F(Wi) 03E848(Wx) 03FF06(Wx) 
; ram_05D0                              = $05D0 ; 01361F(Rx) 02C1FC(Wx) 02C211(Wx) 02C294(Wx) 02C383(Wx) 02C458(Wx) 02CDB3(Wx) 02DFFA(Wx) 02E069(Wx) 02E06C(Wx) 02E096(Wx) 02E0BD(Wx) 02E0DF(Wx) 02E0FB(Wx) 02F59C(Wx) 02FD2C(Rx) 03E03F(Wi) 03E848(Wx) 03FF06(Wx) 
; ram_05D1                              = $05D1 ; 01361F(Rx) 02C1FC(Wx) 02C211(Wx) 02C294(Wx) 02C383(Wx) 02C458(Wx) 02CDB3(Wx) 02DFFA(Wx) 02E069(Wx) 02E06C(Wx) 02E096(Wx) 02E0BD(Wx) 02E0FB(Wx) 02F59C(Wx) 02FD2C(Rx) 03E03F(Wi) 03E848(Wx) 03FF06(Wx) 
; ram_05D2                              = $05D2 ; 01361F(Rx) 02C1FC(Wx) 02C211(Wx) 02C294(Wx) 02C383(Wx) 02C458(Wx) 02CDB3(Wx) 02DFFA(Wx) 02E069(Wx) 02E06C(Wx) 02E096(Wx) 02E0BD(Wx) 02E0FB(Wx) 02F59C(Wx) 02FD2C(Rx) 03E03F(Wi) 03E848(Wx) 03FF06(Wx) 
; ram_05D3                              = $05D3 ; 01361F(Rx) 02C1FC(Wx) 02C211(Wx) 02C294(Wx) 02C383(Wx) 02C458(Wx) 02CDB3(Wx) 02DFFA(Wx) 02E069(Wx) 02E06C(Wx) 02E096(Wx) 02E0BD(Wx) 02E0DF(Wx) 02E0FB(Wx) 02F59C(Wx) 02FD2C(Rx) 03E03F(Wi) 03E848(Wx) 03FF06(Wx) 
; ram_05D4                              = $05D4 ; 0014E6(W)  001670(R)  0016A2(R)  0016CF(W)  006326(R)  00633D(R)  00634E(R)  0381A4(W)  0381F5(W)  03822F(W)  03833E(R)  038356(R)  038B24(W)  038BA9(W)  038BB7(W)  0393C6(W)  03E03F(Wi) 03E848(Wx) 03FA8B(W)  03FB12(R)  
; ram_05D5                              = $05D5 ; 03AF87(Wx) 03AFF4(Wx) 03AFFF(Wx) 03B083(Wx) 03B0B3(Wx) 03B146(Wx) 03B155(Wx) 03B18D(Wx) 03B25E(Wx) 03B3A0(Wx) 03B484(Wx) 03B4A5(Wx) 03B504(Wx) 03B5C9(Wx) 03B63A(Wx) 03B6C2(Wx) 03B762(Wx) 03B7CF(Wx) 03B7E0(Wx) 03B833(Wx) 03B883(Wx) 03B8B4(Wx) 03B9A5(Wx) 03B9C0(Wx) 03B9D0(Wx) 03E03F(Wi) 03E848(Wx) 
; ram_05D6                              = $05D6 ; 03AF87(Wx) 03AFF4(Wx) 03AFFF(Wx) 03B050(Wx) 03B083(Wx) 03B0B3(Wx) 03B146(Wx) 03B155(Wx) 03B18D(Wx) 03B25E(Wx) 03B484(Wx) 03B504(Wx) 03B762(Wx) 03B7CF(Wx) 03B7E0(Wx) 03B809(Wx) 03B833(Wx) 03B883(Wx) 03B8B4(Wx) 03B9A5(Wx) 03B9C0(Wx) 03B9D0(Wx) 03E03F(Wi) 03E848(Wx) 
; ram_05D7                              = $05D7 ; 03AF87(Wx) 03AFF4(Wx) 03AFFF(Wx) 03B053(Wx) 03B083(Wx) 03B0B3(Wx) 03B146(Wx) 03B155(Wx) 03B18D(Wx) 03B25E(Wx) 03B484(Wx) 03B504(Wx) 03B80C(Wx) 03B833(Wx) 03B883(Wx) 03B8B4(Wx) 03B9A5(Wx) 03B9C0(Wx) 03B9D0(Wx) 03E03F(Wi) 03E848(Wx) 



; can also be a timer, see 0x02E507 and 0x02E512
ram_obj_drop_id                         = $05D8 ; 0393E2(W)  039644(Wx) 039761(Wx) 03982E(R)  0398E0(Rx) 0398F2(Wx) 0398FB(Wx) 03990B(Wx) 039E3A(W)  039EB2(W)  03A04E(R)  03A0B7(W)  03A12A(R)  03A146(R)  03A152(W)  03A160(W)  03A17A(R)  03A184(W)  03A198(W)  03A1C7(W)  03A1F4(W)  03A222(W)  03A268(W)  03A27B(R)  03A470(W)  03A508(R)  03A511(R)  03A57A(W)  03AA5E(W)  03AB9F(W)  03ACAA(R)  03ACF8(R)  03AE0C(R)  03E03F(Wi) 03E848(Wx) 
    ram_05D8_plr                            = $05D8 ; 
    ram_05D8_wpn                            = $05D8 ; 
; ram_05D9                              = $05D9 ; 00386B(Rx) 00387B(Wx) 0038BB(Wx) 007CB1(Wx) 007CB7(Wx) 007CBE(Wx) 007CE5(Rx) 007CEA(Wx) 007D0C(Rx) 007D11(Wx) 008472(Rx) 008477(Wx) 0086DF(Rx) 0086F8(Wx) 0086FB(Wx) 008A82(Wx) 008AD2(Rx) 008AE2(Wx) 008AE5(Wx) 008AEE(Rx) 008B0F(Wx) 008B1B(Rx) 008B31(Wx) 008B34(Wx) 008B3D(Rx) 008B64(Wx) 008DEA(Rx) 008E2C(Wx) 008E32(Wx) 009519(Wx) 00951F(Rx) 009527(Wx) 009531(Wx) 009741(Wx) 00AA21(Wx) 00C020(Wx) 00C07E(Rx) 00C09A(Wx) 00C09D(Wx) 00C14F(Rx) 00C1D2(Wx) 00C216(Wx) 00C262(Rx) 00C267(Wx) 00C2DF(Wx) 00C2F1(Rx) 00C305(Wx) 00C326(Wx) 00C90A(Wx) 00C92C(Wx) 00C943(Wx) 00C952(Wx) 00C990(Wx) 00CDEB(Rx) 00CDF2(Wx) 00CE0E(Wx) 00D372(Wx) 00D935(Wx) 00DEA8(Wx) 00DEAB(Rx) 024757(Wx) 02544D(Wx) 02556C(Wx) 0255AD(Wx) 025717(Wx) 025845(Wx) 02593B(Wx) 02596E(Wx) 025F8A(Rx) 025F9D(Rx) 025FAC(Rx) 025FB8(Wx) 02601C(Wx) 026026(Rx) 0260C1(Wx) 02610B(Wx) 0264DD(Rx) 0264E4(Wx) 02650A(Wx) 02694A(Wx) 026968(Wx) 026986(Wx) 026C00(Wx) 026F5B(Wx) 0273F7(Wy) 027799(Rx) 02780D(Wx) 027818(Rx) 029189(Wx) 02E48A(Wx) 02E4DF(Wx) 02E4E4(Rx) 02E50B(Wx) 02E512(Wx) 039644(Wx) 039761(Wx) 0398E0(Rx) 0398F2(Wx) 0398FB(Wx) 03990B(Wx) 03E03F(Wi) 03E848(Wx) 03FF09(Wx) 
; ram_05DA                              = $05DA ; 00386B(Rx) 00387B(Wx) 0038BB(Wx) 007CB1(Wx) 007CB7(Wx) 007CBE(Wx) 007CE5(Rx) 007CEA(Wx) 0086DF(Rx) 0086F8(Wx) 0086FB(Wx) 008AD2(Rx) 008AE2(Wx) 008AE5(Wx) 008AEE(Rx) 008B0F(Wx) 008B1B(Rx) 008B31(Wx) 008B34(Wx) 008B3D(Rx) 008B64(Wx) 008DEA(Rx) 008E2C(Wx) 008E32(Wx) 009519(Wx) 00951F(Rx) 009527(Wx) 009531(Wx) 009741(Wx) 00AA21(Wx) 00C07E(Rx) 00C09A(Wx) 00C09D(Wx) 00C14F(Rx) 00C1D2(Wx) 00C216(Wx) 00C262(Rx) 00C267(Wx) 00C2DF(Wx) 00C2F1(Rx) 00C305(Wx) 00C326(Wx) 00C58F(Wx) 00C598(Rx) 00C59D(Wx) 00C780(Wx) 00C78D(Wx) 00C7A4(Wx) 00C90A(Wx) 00C92C(Wx) 00C943(Wx) 00C952(Wx) 00C990(Wx) 00D935(Wx) 024757(Wx) 02556C(Wx) 0255AD(Wx) 025717(Wx) 025845(Wx) 02596E(Wx) 025CB4(Wx) 025CCE(Wx) 025F8A(Rx) 025F9D(Rx) 025FB8(Wx) 025FFE(Wx) 02601C(Wx) 026026(Rx) 0260C1(Wx) 02610B(Wx) 026C00(Wx) 02714A(Wx) 0271C3(Rx) 0271DE(Wx) 0273F7(Wy) 0279B2(Wy) 027CA5(Rx) 029189(Wx) 02C156(Wx) 02E48A(Wx) 02E4DF(Wx) 02E4E4(Rx) 02E50B(Wx) 02E512(Wx) 03AF8C(Rx) 03AFB0(Rx) 03BA9F(Wx) 03E03F(Wi) 03E848(Wx) 03FF09(Wx) 
; ram_05DB                              = $05DB ; 00386B(Rx) 00387B(Wx) 0038BB(Wx) 007CB1(Wx) 007CB7(Wx) 007CBE(Wx) 007CE5(Rx) 007CEA(Wx) 0086DF(Rx) 0086F8(Wx) 0086FB(Wx) 008AD2(Rx) 008AE2(Wx) 008AE5(Wx) 008AEE(Rx) 008B0F(Wx) 008B1B(Rx) 008B31(Wx) 008B34(Wx) 008B3D(Rx) 008B64(Wx) 008DEA(Rx) 008E2C(Wx) 008E32(Wx) 009519(Wx) 00951F(Rx) 009527(Wx) 009531(Wx) 009741(Wx) 00AA21(Wx) 00C28C(Wy) 00C44F(Wx) 00C471(Wx) 00C47B(Wx) 00D935(Wx) 024757(Wx) 02556C(Wx) 0255AD(Wx) 025717(Wx) 025845(Wx) 02596E(Wx) 025CB4(Wx) 025CCE(Wx) 025FFE(Wx) 0260C1(Wx) 02610B(Wx) 026C00(Wx) 02714A(Wx) 0271C3(Rx) 0271DE(Wx) 0273F7(Wy) 0279B2(Wy) 027CA5(Rx) 029189(Wx) 02E48A(Wx) 02E4DF(Wx) 02E4E4(Rx) 02E50B(Wx) 02E512(Wx) 03E03F(Wi) 03E848(Wx) 03FF09(Wx) 
; ram_05DC                              = $05DC ; 00386B(Rx) 00387B(Wx) 0038BB(Wx) 0056C8(Wx) 0056E7(Rx) 0056F4(Wx) 005708(Wx) 00573C(Wx) 005745(Rx) 00574A(Wx) 0058F6(Rx) 0058FB(Wx) 005911(Rx) 005916(Wx) 005929(Rx) 00592E(Wx) 005944(Rx) 005949(Wx) 00598C(Rx) 005991(Wx) 0059A6(Rx) 0059AB(Wx) 0059D5(Wx) 007CB1(Wx) 007CB7(Wx) 007CBE(Wx) 007CE5(Rx) 007CEA(Wx) 008AD2(Rx) 008AE2(Wx) 008AE5(Wx) 008AEE(Rx) 008B0F(Wx) 008B1B(Rx) 008B31(Wx) 008B34(Wx) 008B3D(Rx) 008B64(Wx) 008DEA(Rx) 008E2C(Wx) 008E32(Wx) 009519(Wx) 00951F(Rx) 009527(Wx) 009531(Wx) 009741(Wx) 00AA21(Wx) 00C28C(Wy) 00C44F(Wx) 00C471(Wx) 00C47B(Wx) 024757(Wx) 02556C(Wx) 0255AD(Wx) 025717(Wx) 025845(Wx) 02596E(Wx) 025CB4(Wx) 025CCE(Wx) 025FFE(Wx) 02601C(Wx) 026026(Rx) 0260C1(Wx) 02610B(Wx) 026C00(Wx) 02714A(Wx) 0271C3(Rx) 0271DE(Wx) 0279B2(Wy) 027CA5(Rx) 029189(Wx) 02C156(Wx) 02E48A(Wx) 02E4DF(Wx) 02E4E4(Rx) 02E50B(Wx) 02E512(Wx) 03E03F(Wi) 03E848(Wx) 03FF09(Wx) 
; ram_05DD                              = $05DD ; 00386B(Rx) 00387B(Wx) 0038BB(Wx) 007CB1(Wx) 007CB7(Wx) 007CBE(Wx) 007CE5(Rx) 007CEA(Wx) 008A82(Wx) 008AD2(Rx) 008AE2(Wx) 008AE5(Wx) 008B0F(Wx) 008B1B(Rx) 008B31(Wx) 008B34(Wx) 008DEA(Rx) 008E2C(Wx) 008E32(Wx) 009519(Wx) 00951F(Rx) 009527(Wx) 009531(Wx) 009741(Wx) 00AA21(Wx) 00C28C(Wy) 00C44F(Wx) 00C471(Wx) 00C47B(Wx) 00D935(Wx) 024757(Wx) 02556C(Wx) 0255AD(Wx) 025717(Wx) 025845(Wx) 02596E(Wx) 025CB4(Wx) 025FFE(Wx) 0260C1(Wx) 02610B(Wx) 026C00(Wx) 02714A(Wx) 0271C3(Rx) 0271DE(Wx) 0279B2(Wy) 027CA5(Rx) 029189(Wx) 02E48A(Wx) 02E4DF(Wx) 02E4E4(Rx) 02E50B(Wx) 02E512(Wx) 03E03F(Wi) 03E848(Wx) 03FF09(Wx) 
; ram_05DE                              = $05DE ; 008DEA(Rx) 008E2C(Wx) 008E32(Wx) 009519(Wx) 00951F(Rx) 009527(Wx) 009531(Wx) 009741(Wx) 00C28C(Wy) 00C44F(Wx) 00C471(Wx) 00C47B(Wx) 00D935(Wx) 024757(Wx) 02556C(Wx) 0255AD(Wx) 025717(Wx) 025845(Wx) 02596E(Wx) 025CB4(Wx) 025CCE(Wx) 025FFE(Wx) 0260C1(Wx) 02610B(Wx) 026C00(Wx) 02714A(Wx) 0271C3(Rx) 0271DE(Wx) 0279B2(Wy) 027CA5(Rx) 029189(Wx) 02E48A(Wx) 02E4DF(Wx) 02E4E4(Rx) 02E50B(Wx) 02E512(Wx) 03E03F(Wi) 03E848(Wx) 03FF09(Wx) 
; ram_05DF                              = $05DF ; 007CB1(Wx) 007CB7(Wx) 008472(Rx) 008477(Wx) 008DEA(Rx) 008E2C(Wx) 008E32(Wx) 009519(Wx) 00951F(Rx) 009527(Wx) 009531(Wx) 009741(Wx) 00C28C(Wy) 00C44F(Wx) 00C471(Wx) 00C47B(Wx) 024757(Wx) 0254DF(Wx) 02556C(Wx) 025717(Wx) 025845(Wx) 02596E(Wx) 025CB4(Wx) 025CCE(Wx) 025FFE(Wx) 0260C1(Wx) 02610B(Wx) 0268B6(Wx) 0268D8(Rx) 0268DD(Wx) 0268F6(Wx) 026932(Rx) 026938(Wx) 02714A(Wx) 0271C3(Rx) 0271DE(Wx) 03E03F(Wi) 03E848(Wx) 03FF09(Wx) 
; ram_05E0                              = $05E0 ; 008DEA(Rx) 008E2C(Wx) 008E32(Wx) 009519(Wx) 00951F(Rx) 009527(Wx) 009531(Wx) 009741(Wx) 00C28C(Wy) 00C44F(Wx) 00C471(Wx) 00C47B(Wx) 024757(Wx) 02556C(Wx) 025717(Wx) 025845(Wx) 02596E(Wx) 025CB4(Wx) 025CCE(Wx) 025FFE(Wx) 0260C1(Wx) 02610B(Wx) 02714A(Wx) 0271C3(Rx) 0271DE(Wx) 03E03F(Wi) 03E848(Wx) 03FF09(Wx) 
; ram_05E1                              = $05E1 ; 007CB1(Wx) 007CB7(Wx) 007CBE(Wx) 007CE5(Rx) 007CEA(Wx) 008DEA(Rx) 008E2C(Wx) 008E32(Wx) 009519(Wx) 00951F(Rx) 009527(Wx) 009531(Wx) 009741(Wx) 024757(Wx) 02556C(Wx) 025717(Wx) 025845(Wx) 025FFE(Wx) 0260C1(Wx) 02610B(Wx) 02714A(Wx) 0271C3(Rx) 0271DE(Wx) 03E03F(Wi) 03E848(Wx) 03FF09(Wx) 
; ram_05E2                              = $05E2 ; 007CB1(Wx) 007CB7(Wx) 007CBE(Wx) 007CE5(Rx) 007CEA(Wx) 008DEA(Rx) 008E2C(Wx) 008E32(Wx) 009519(Wx) 00951F(Rx) 009527(Wx) 009531(Wx) 024757(Wx) 02556C(Wx) 025717(Wx) 025845(Wx) 0260C1(Wx) 02610B(Wx) 02714A(Wx) 0271C3(Rx) 0271DE(Wx) 03E03F(Wi) 03E848(Wx) 03FF09(Wx) 
; ram_05E3                              = $05E3 ; 007CB1(Wx) 007CB7(Wx) 008DEA(Rx) 008E2C(Wx) 008E32(Wx) 009519(Wx) 00951F(Rx) 009527(Wx) 009531(Wx) 009741(Wx) 024757(Wx) 02556C(Wx) 025717(Wx) 0260C1(Wx) 02610B(Wx) 02714A(Wx) 0271C3(Rx) 0271DE(Wx) 03E03F(Wi) 03E848(Wx) 03FF09(Wx) 
; ram_05E4                              = $05E4 ; 007CB1(Wx) 007CB7(Wx) 008DEA(Rx) 008E2C(Wx) 008E32(Wx) 009519(Wx) 00951F(Rx) 009527(Wx) 009531(Wx) 024757(Wx) 02556C(Wx) 025717(Wx) 0260C1(Wx) 02610B(Wx) 02714A(Wx) 0271C3(Rx) 0271DE(Wx) 03E03F(Wi) 03E848(Wx) 03FF09(Wx) 
; ram_05E5                              = $05E5 ; 0281C8(Wx) 0282D1(Wx) 02E2F7(Rx) 03E03F(Wi) 03E848(Wx) 03FF09(Wx) 
; ram_05E6                              = $05E6 ; 0281C8(Wx) 0282D1(Wx) 02E2F7(Rx) 03E03F(Wi) 03E848(Wx) 03FF09(Wx) 
; ram_05E7                              = $05E7 ; 0281C8(Wx) 0282D1(Wx) 02E2F7(Rx) 03E03F(Wi) 03E848(Wx) 03FF09(Wx) 
; ram_05E8                              = $05E8 ; 006D6B(Rx) 006D70(Wx) 006DE1(Wx) 0281C8(Wx) 0282D1(Wx) 02E2F7(Rx) 03E03F(Wi) 03E848(Wx) 03FF09(Wx) 
; ram_05E9                              = $05E9 ; 0281C8(Wx) 0282D1(Wx) 02E2F7(Rx) 03E03F(Wi) 03E848(Wx) 03FF09(Wx) 
; ram_05EA                              = $05EA ; 0281C8(Wx) 0282D1(Wx) 02E2F7(Rx) 03E03F(Wi) 03E848(Wx) 03FF09(Wx) 
; ram_05EB                              = $05EB ; 0014F6(W)  0015B3(R)  001639(R)  001652(W)  0016D2(W)  0381AE(W)  0381FA(W)  038234(W)  038351(W)  0393D0(R)  0393DD(W)  03E03F(Wi) 03E848(Wx) 03FA86(W)  03FB17(R)  
; ram_05EC                              = $05EC ; 03AF8C(Rx) 03AFB0(Rx) 03B0CE(Wx) 03B101(Wx) 03B10A(Rx) 03B11C(Wx) 03B135(R)  03B1A0(Wx) 03B1A5(Rx) 03B878(Wx) 03B8CE(Rx) 03B8DB(Wx) 03B912(Rx) 03B919(Wx) 03BA9F(Wx) 03E03F(Wi) 03E848(Wx) 
; ram_05ED                              = $05ED ; 03AF8C(Rx) 03AFB0(Rx) 03B0CE(Wx) 03B10A(Rx) 03B11C(Wx) 03B13A(R)  03B1A0(Wx) 03B1A5(Rx) 03B878(Wx) 03B8CE(Rx) 03B8DB(Wx) 03B912(Rx) 03B919(Wx) 03BA9F(Wx) 03E03F(Wi) 03E848(Wx) 
; ram_05EE                              = $05EE ; 03AF8C(Rx) 03AFB0(Rx) 03B0CE(Wx) 03B10A(Rx) 03B11C(Wx) 03B13F(R)  03B1A0(Wx) 03B1A5(Rx) 03B878(Wx) 03B8CE(Rx) 03B8DB(Wx) 03B912(Rx) 03B919(Wx) 03BA9F(Wx) 03E03F(Wi) 03E848(Wx) 



; ai handler
; see con_ai_script
ram_obj_ai_script                       = $05EF ; 002B74(W)  002CCF(R)  002CE7(R)  013259(R)  0385E6(R)  03860D(R)  0395E0(W)  0399C8(R)  0399EA(R)  039BA0(R)  039BAC(R)  039EB7(W)  03A0BC(W)  03A13D(R)  03A143(W)  03A165(W)  03A171(R)  03A177(W)  03BB39(Rx) 03BB42(Rx) 03BCBA(Ry) 03E03F(Wi) 03E848(Wx) 
    ram_05EF_plr                            = $05EF ; 
    ram_05EF_wpn                            = $05EF ; 
; ram_05F0                              = $05F0 ; 008080(Rx) 00833B(Rx) 008362(Rx) 0083DA(Rx) 0087AE(Wy) 008838(Rx) 00890C(Rx) 0089BD(Rx) 009439(Rx) 009440(Wx) 0094A7(Wy) 0094F9(Wx) 00954D(Wx) 009AC8(Wx) 009ADD(Rx) 009AF2(Wx) 00A8E2(Wx) 00AAD6(Wx) 00AC57(Ry) 00AC5A(Wx) 00AD6E(Rx) 00AF32(Rx) 00AF35(Wx) 00AF56(Rx) 00AF59(Wx) 00C0A1(Rx) 00C3A2(Rx) 00C4DA(Rx) 00C835(Wx) 00C86B(Wx) 00C895(Wx) 00CBB1(Wy) 00CD6F(Wy) 00D319(Rx) 00D378(Wx) 00D519(Rx) 01361C(Rx) 0136A8(Wx) 01378E(Wx) 013ACB(Wx) 01BE7B(Wx) 023E52(Rx) 023E55(Wx) 023F0A(Rx) 024056(Rx) 0240F5(Rx) 024661(Rx) 024668(Wx) 02475A(Wx) 024833(Wx) 024872(Wy) 024895(Wy) 0248C6(Wx) 02499B(Rx) 0249C3(Rx) 025240(Ry) 0252EE(Rx) 025316(Ry) 025369(Rx) 025370(Wx) 025462(Wx) 025572(Wx) 025579(Rx) 02557E(Wx) 025C2A(Wx) 026194(Wx) 0261B3(Ry) 0264D3(Rx) 026553(Ry) 02659C(Ry) 0265D8(Ry) 02669E(Wy) 026989(Wx) 026A32(Rx) 026A37(Wx) 026B58(Wy) 026B92(Wx) 026C03(Wx) 026D38(Wx) 026D60(Wx) 026DE7(Wy) 026E66(Wy) 026F08(Rx) 026F5E(Wx) 026FB4(Rx) 027015(Rx) 0270AA(Rx) 0270C2(Rx) 0272EB(R)  02735B(Wx) 0273FC(Wy) 02752F(Rx) 02756E(Wx) 027641(Wx) 0276C0(Rx) 02770C(Wx) 027718(Rx) 02775C(Wx) 027A30(Rx) 028204(Wx) 028D10(Wx) 028E21(Wx) 02918E(Wx) 0291F2(Wx) 02C11F(Wx) 02C15F(Rx) 02C979(Rx) 02C9E2(Rx) 02CB49(Wx) 02CE14(Wx) 02D151(Rx) 02D16D(Rx) 02D1AA(Rx) 02D9D9(Rx) 02DD08(Wx) 02E0CE(Wx) 02E1B5(Wx) 02E1E5(Wx) 02E27B(Wx) 02F4E6(Rx) 02F5E7(Wx) 02FD12(Rx) 0325B0(Wx) 03BCBA(Ry) 03E03F(Wi) 03E848(Wx) 03FF0C(Wx) 
; ram_05F1                              = $05F1 ; 008080(Rx) 00833B(Rx) 008362(Rx) 0083DA(Rx) 0087AE(Wy) 008838(Rx) 00890C(Rx) 0089BD(Rx) 009439(Rx) 009440(Wx) 0094A7(Wy) 0094F9(Wx) 00954D(Wx) 009AC8(Wx) 009ADD(Rx) 009AF2(Wx) 00A8E2(Wx) 00AAD6(Wx) 00AB70(Wx) 00AC57(Ry) 00AC5A(Wx) 00AD6E(Rx) 00AD7E(Rx) 00AF32(Rx) 00AF35(Wx) 00AF56(Rx) 00AF59(Wx) 00C0A1(Rx) 00C835(Wx) 00C86B(Wx) 00C895(Wx) 00CAB6(Wx) 00CC9F(Wx) 00D519(Rx) 00DC98(Wx) 00DCEB(Wx) 01361C(Rx) 0136A8(Wx) 01378E(Wx) 013ACB(Wx) 01BE7B(Wx) 023E52(Rx) 023E55(Wx) 023F0A(Rx) 024056(Rx) 0240F5(Rx) 024661(Rx) 024668(Wx) 02475A(Wx) 024833(Wx) 024895(Wy) 0248C6(Wx) 0249C3(Rx) 025240(Ry) 0252EE(Rx) 025316(Ry) 025369(Rx) 025370(Wx) 025391(Ry) 025462(Wx) 025572(Wx) 025579(Rx) 02557E(Wx) 025C2A(Wx) 02624E(Wy) 0264D3(Rx) 026553(Ry) 02659C(Ry) 0265D8(Ry) 0266F8(Wx) 026820(Wx) 026989(Wx) 026A32(Rx) 026A37(Wx) 026B58(Wy) 026B92(Wx) 026C03(Wx) 026DE7(Wy) 026E23(Wx) 026E66(Wy) 026EB6(Wy) 0270AA(Rx) 0270C2(Rx) 0270F1(Rx) 02735B(Wx) 0273FC(Wy) 02753D(Wy) 027601(Wy) 0279C1(Wy) 027AF7(Rx) 027EB0(Wx) 028204(Wx) 028E21(Wx) 02918E(Wx) 0291F2(Wx) 029246(Wx) 02C11F(Wx) 02C15F(Rx) 02C979(Rx) 02C9E2(Rx) 02CB49(Wx) 02CE14(Wx) 02D151(Rx) 02D16D(Rx) 02D9D9(Rx) 02DAD5(Wy) 02DD08(Wx) 02E0CE(Wx) 02E1E5(Wx) 02F4E6(Rx) 02F5E7(Wx) 02FD12(Rx) 033318(Wx) 03E03F(Wi) 03E848(Wx) 03FF0C(Wx) 
; ram_05F2                              = $05F2 ; 008080(Rx) 008362(Rx) 0083DA(Rx) 0087AE(Wy) 008838(Rx) 00890C(Rx) 0089BD(Rx) 009439(Rx) 009440(Wx) 0094A7(Wy) 0094F9(Wx) 00954D(Wx) 009AC8(Wx) 009ADD(Rx) 009AF2(Wx) 00A8E2(Wx) 00AAD6(Wx) 00AB70(Wx) 00AC57(Ry) 00AC5A(Wx) 00AD6E(Rx) 00AD7E(Rx) 00AF32(Rx) 00AF35(Wx) 00AF56(Rx) 00AF59(Wx) 00C287(Wy) 00C3A2(Rx) 00C4DA(Rx) 00CBB1(Wy) 00CD6F(Wy) 00D519(Rx) 00DC98(Wx) 00DCEB(Wx) 01361C(Rx) 0136A8(Wx) 01378E(Wx) 01BE7B(Wx) 023E52(Rx) 023E55(Wx) 024056(Rx) 0240F5(Rx) 024661(Rx) 024668(Wx) 02475A(Wx) 02499B(Rx) 0249C3(Rx) 025240(Ry) 025369(Rx) 025370(Wx) 025391(Ry) 025572(Wx) 025579(Rx) 02557E(Wx) 025C2A(Wx) 02624E(Wy) 0264D3(Rx) 02669E(Wy) 026820(Wx) 026989(Wx) 026A32(Rx) 026A37(Wx) 026B58(Wy) 026B92(Wx) 026C03(Wx) 026DE7(Wy) 026E23(Wx) 026E66(Wy) 0270AA(Rx) 0270C2(Rx) 0270F1(Rx) 02735B(Wx) 0273FC(Wy) 027601(Wy) 0276F5(Wy) 0278C8(Rx) 0279C1(Wy) 027AF7(Rx) 027E55(Wy) 028204(Wx) 028E21(Wx) 02918E(Wx) 0291F2(Wx) 029246(Wx) 02C11F(Wx) 02C15F(Rx) 02C979(Rx) 02C9E2(Rx) 02CB49(Wx) 02CE14(Wx) 02D151(Rx) 02D16D(Rx) 02D9D9(Rx) 02DAD5(Wy) 02DD08(Wx) 02E0CE(Wx) 02E1E5(Wx) 02F4E6(Rx) 02F5E7(Wx) 02FD12(Rx) 033318(Wx) 03E03F(Wi) 03E848(Wx) 03FF0C(Wx) 
; ram_05F3                              = $05F3 ; 008080(Rx) 008362(Rx) 0083DA(Rx) 0087AE(Wy) 008838(Rx) 00890C(Rx) 0089BD(Rx) 009439(Rx) 009440(Wx) 0094A7(Wy) 0094F9(Wx) 00954D(Wx) 009AC8(Wx) 009ADD(Rx) 009AF2(Wx) 00AAD6(Wx) 00AB70(Wx) 00AC57(Ry) 00AC5A(Wx) 00AD6E(Rx) 00AD7E(Rx) 00AF32(Rx) 00AF35(Wx) 00AF56(Rx) 00AF59(Wx) 00C287(Wy) 00C3A2(Rx) 00C4DA(Rx) 00CBB1(Wy) 00CD6F(Wy) 00D519(Rx) 00D5B2(Wx) 00DC98(Wx) 00DCEB(Wx) 01361C(Rx) 0136A8(Wx) 01378E(Wx) 013ACB(Wx) 01BE7B(Wx) 023E52(Rx) 023E55(Wx) 024056(Rx) 0240F5(Rx) 024661(Rx) 024668(Wx) 02475A(Wx) 024833(Wx) 0248C6(Wx) 02499B(Rx) 0249C3(Rx) 025240(Ry) 0252EE(Rx) 025316(Ry) 025369(Rx) 025370(Wx) 025391(Ry) 025572(Wx) 025579(Rx) 02557E(Wx) 025C2A(Wx) 02624E(Wy) 0264D3(Rx) 02669E(Wy) 026820(Wx) 026989(Wx) 026A32(Rx) 026A37(Wx) 026B58(Wy) 026B92(Wx) 026C03(Wx) 026DE7(Wy) 026E23(Wx) 026E66(Wy) 0270AA(Rx) 0270C2(Rx) 0270F1(Rx) 02735B(Wx) 027601(Wy) 0276F5(Wy) 0278C8(Rx) 0279C1(Wy) 027AF7(Rx) 027E55(Wy) 028204(Wx) 028E21(Wx) 02918E(Wx) 0291F2(Wx) 029246(Wx) 02C11F(Wx) 02C15F(Rx) 02CE14(Wx) 02D151(Rx) 02D16D(Rx) 02D9D9(Rx) 02DAD5(Wy) 02DD08(Wx) 02E0CE(Wx) 02E1E5(Wx) 02F4E6(Rx) 02F5E7(Wx) 02FD12(Rx) 033318(Wx) 03E03F(Wi) 03E848(Wx) 03FF0C(Wx) 
; ram_05F4                              = $05F4 ; 008080(Rx) 008362(Rx) 0083DA(Rx) 0087AE(Wy) 008838(Rx) 00890C(Rx) 0089BD(Rx) 009439(Rx) 009440(Wx) 0094A7(Wy) 0094F9(Wx) 00954D(Wx) 009AC8(Wx) 009ADD(Rx) 009AF2(Wx) 00AAD6(Wx) 00AB70(Wx) 00AC57(Ry) 00AC5A(Wx) 00AD6E(Rx) 00AD7E(Rx) 00AF56(Rx) 00AF59(Wx) 00C287(Wy) 00C3A2(Rx) 00C4DA(Rx) 00CBB1(Wy) 00D519(Rx) 00DC98(Wx) 00DCEB(Wx) 01361C(Rx) 0136A8(Wx) 01378E(Wx) 017CAB(Wy) 01BE7B(Wx) 023E52(Rx) 023E55(Wx) 024056(Rx) 0240F5(Rx) 024661(Rx) 024668(Wx) 02475A(Wx) 02499B(Rx) 0249C3(Rx) 025240(Ry) 025369(Rx) 025370(Wx) 025391(Ry) 025572(Wx) 025579(Rx) 02557E(Wx) 025C2A(Wx) 025EF0(Wy) 02624E(Wy) 0264D3(Rx) 02669E(Wy) 026989(Wx) 026A32(Rx) 026A37(Wx) 026B92(Wx) 026C03(Wx) 026DE7(Wy) 026E23(Wx) 026E66(Wy) 0270AA(Rx) 0270C2(Rx) 0270F1(Rx) 02735B(Wx) 027601(Wy) 027749(Wy) 0278C8(Rx) 0279C1(Wy) 027AF7(Rx) 028204(Wx) 028E21(Wx) 02918E(Wx) 0291F2(Wx) 02C11F(Wx) 02C15F(Rx) 02CE14(Wx) 02D151(Rx) 02D16D(Rx) 02D6C2(Wx) 02DAD5(Wy) 02DD08(Wx) 02E0CE(Wx) 02E1E5(Wx) 02F4E6(Rx) 02F5E7(Wx) 02FD12(Rx) 033318(Wx) 03E03F(Wi) 03E848(Wx) 03FF0C(Wx) 
; ram_05F5                              = $05F5 ; 008080(Rx) 008362(Rx) 0083DA(Rx) 0087AE(Wy) 008838(Rx) 00890C(Rx) 0089BD(Rx) 009439(Rx) 009440(Wx) 0094A7(Wy) 0094F9(Wx) 00954D(Wx) 009AC8(Wx) 009ADD(Rx) 009AF2(Wx) 00AAD6(Wx) 00AB70(Wx) 00AC57(Ry) 00AC5A(Wx) 00AD6E(Rx) 00AD7E(Rx) 00C287(Wy) 00C3A2(Rx) 00C4DA(Rx) 00CBB1(Wy) 00D519(Rx) 01361C(Rx) 0136A8(Wx) 01378E(Wx) 017CAB(Wy) 01BE7B(Wx) 023E52(Rx) 023E55(Wx) 024056(Rx) 0240F5(Rx) 024661(Rx) 024668(Wx) 02475A(Wx) 0248C6(Wx) 02499B(Rx) 0249C3(Rx) 025240(Ry) 0252EE(Rx) 025369(Rx) 025370(Wx) 025391(Ry) 025572(Wx) 025579(Rx) 02557E(Wx) 025C2A(Wx) 02624E(Wy) 0264D3(Rx) 02669E(Wy) 026989(Wx) 026A32(Rx) 026A37(Wx) 026B92(Wx) 026C03(Wx) 026DE7(Wy) 026E23(Wx) 026E66(Wy) 0270AA(Rx) 0270C2(Rx) 0270F1(Rx) 02735B(Wx) 027601(Wy) 0279C1(Wy) 027AF7(Rx) 028204(Wx) 028E21(Wx) 02918E(Wx) 0291F2(Wx) 02C11F(Wx) 02C15F(Rx) 02CE14(Wx) 02D151(Rx) 02D16D(Rx) 02DAD5(Wy) 02DD08(Wx) 02F4E6(Rx) 02F5E7(Wx) 02FD12(Rx) 033318(Wx) 03E03F(Wi) 03E848(Wx) 03FF0C(Wx) 
; ram_05F6                              = $05F6 ; 008080(Rx) 008362(Rx) 0083DA(Rx) 0087AE(Wy) 008838(Rx) 00890C(Rx) 0089BD(Rx) 009439(Rx) 009440(Wx) 0094A7(Wy) 0094F9(Wx) 00954D(Wx) 009AC8(Wx) 009ADD(Rx) 009AF2(Wx) 00AAD6(Wx) 00AB70(Wx) 00AC57(Ry) 00AC5A(Wx) 00AD6E(Rx) 00AD7E(Rx) 00C287(Wy) 00C3A2(Rx) 00D519(Rx) 01361C(Rx) 0136A8(Wx) 01378E(Wx) 017CAB(Wy) 023E52(Rx) 023E55(Wx) 023F0A(Rx) 024056(Rx) 0240F5(Rx) 024661(Rx) 024668(Wx) 02475A(Wx) 024895(Wy) 0248C6(Wx) 02499B(Rx) 0249C3(Rx) 025240(Ry) 0252EE(Rx) 025369(Rx) 025370(Wx) 025391(Ry) 0254E4(Wx) 025572(Wx) 025579(Rx) 02557E(Wx) 025C2A(Wx) 02624E(Wy) 0264D3(Rx) 026650(R)  02669E(Wy) 026909(Rx) 026989(Wx) 026A32(Rx) 026A37(Wx) 026B58(Wy) 026B92(Wx) 026DE7(Wy) 026E23(Wx) 026E66(Wy) 0274B9(Rx) 027601(Wy) 027B86(Wy) 028204(Wx) 028E21(Wx) 0291D8(Wx) 02C11F(Wx) 02D9D9(Rx) 02DAD5(Wy) 02DD08(Wx) 02F4E6(Rx) 02F5E7(Wx) 02FD12(Rx) 033318(Wx) 03E03F(Wi) 03E848(Wx) 03FF0C(Wx) 
; ram_05F7                              = $05F7 ; 008080(Rx) 008362(Rx) 0083DA(Rx) 0087AE(Wy) 008838(Rx) 00890C(Rx) 0089BD(Rx) 009439(Rx) 009440(Wx) 0094A7(Wy) 0094F9(Wx) 00954D(Wx) 009AC8(Wx) 009ADD(Rx) 009AF2(Wx) 00AAD6(Wx) 00AB70(Wx) 00AC57(Ry) 00AC5A(Wx) 00AD6E(Rx) 00AD7E(Rx) 00C287(Wy) 00C4DA(Rx) 00D519(Rx) 00DC98(Wx) 00DCEB(Wx) 0136A8(Wx) 01378E(Wx) 013ACB(Wx) 017CAB(Wy) 023E52(Rx) 023E55(Wx) 023F0A(Rx) 024056(Rx) 0240F5(Rx) 024661(Rx) 024668(Wx) 02475A(Wx) 024895(Wy) 0248C6(Wx) 02499B(Rx) 0249C3(Rx) 025240(Ry) 0252EE(Rx) 025369(Rx) 025370(Wx) 025572(Wx) 025579(Rx) 02557E(Wx) 025C2A(Wx) 02624E(Wy) 0264D3(Rx) 02669E(Wy) 026989(Wx) 026A32(Rx) 026A37(Wx) 026B58(Wy) 026B92(Wx) 026DE7(Wy) 026E23(Wx) 026E66(Wy) 0274B9(Rx) 027B86(Wy) 028204(Wx) 028D51(Wx) 028E21(Wx) 02C11F(Wx) 02C9E2(Rx) 02D151(Rx) 02D16D(Rx) 02D9D9(Rx) 02DD08(Wx) 02E0CE(Wx) 02E1B5(Wx) 02F4E6(Rx) 02F5E7(Wx) 02FD12(Rx) 03E03F(Wi) 03E848(Wx) 03FF0C(Wx) 
; ram_05F8                              = $05F8 ; 008080(Rx) 008362(Rx) 0083DA(Rx) 0087AE(Wy) 008838(Rx) 00890C(Rx) 009439(Rx) 009440(Wx) 0094A7(Wy) 0094F9(Wx) 00954D(Wx) 009ADD(Rx) 009AF2(Wx) 00AAD6(Wx) 00AC57(Ry) 00AC5A(Wx) 00AD6E(Rx) 00AD7E(Rx) 00D519(Rx) 01361C(Rx) 0136A8(Wx) 01378E(Wx) 017C0A(Wx) 017C34(Wx) 017CAB(Wy) 023E52(Rx) 023E55(Wx) 024056(Rx) 0240F5(Rx) 024661(Rx) 024668(Wx) 02475A(Wx) 024872(Wy) 02499B(Rx) 0249C3(Rx) 025240(Ry) 025369(Rx) 025370(Wx) 0264D3(Rx) 02669E(Wy) 026DE7(Wy) 026E23(Wx) 026E66(Wy) 0274B9(Rx) 027B86(Wy) 028204(Wx) 028E21(Wx) 02C11F(Wx) 02CC19(Wx) 02CC5B(Wx) 02CCA1(Wx) 02CE14(Wx) 02CF6D(Wx) 02D254(Wx) 02D950(Wx) 02D972(Wx) 02D9D9(Rx) 02DE26(Wx) 02F4E6(Rx) 02F5D6(Wx) 02FD12(Rx) 03E03F(Wi) 03E848(Wx) 03FF0C(Wx) 
; ram_05F9                              = $05F9 ; 008080(Rx) 008362(Rx) 0083DA(Rx) 009439(Rx) 009440(Wx) 0094A7(Wy) 0094F9(Wx) 00954D(Wx) 00A8E2(Wx) 00AAD6(Wx) 00AC57(Ry) 00AC5A(Wx) 00AD6E(Rx) 00AD7E(Rx) 00D519(Rx) 01361C(Rx) 0136A8(Wx) 01378E(Wx) 017C0A(Wx) 017CAB(Wy) 01BE7B(Wx) 023E52(Rx) 023E55(Wx) 024056(Rx) 0240F5(Rx) 024661(Rx) 024668(Wx) 02475A(Wx) 0248C6(Wx) 0249C3(Rx) 025240(Ry) 0252EE(Rx) 025369(Rx) 025370(Wx) 0264D3(Rx) 02669E(Wy) 026DE7(Wy) 026E23(Wx) 026E66(Wy) 0274B9(Rx) 027B86(Wy) 028204(Wx) 028E21(Wx) 02C11F(Wx) 02CC19(Wx) 02CC5B(Wx) 02CCA1(Wx) 02CE14(Wx) 02CF6D(Wx) 02D254(Wx) 02D950(Wx) 02D972(Wx) 02E0CE(Wx) 02E1B5(Wx) 02F4E6(Rx) 02F5D6(Wx) 02F5E7(Wx) 02FD12(Rx) 03E03F(Wi) 03E848(Wx) 03FF0C(Wx) 
; ram_05FA                              = $05FA ; 008080(Rx) 008362(Rx) 0083DA(Rx) 00890C(Rx) 0089BD(Rx) 009439(Rx) 009440(Wx) 0094A7(Wy) 0094F9(Wx) 00954D(Wx) 009AC8(Wx) 009ADD(Rx) 009AF2(Wx) 00AAD6(Wx) 00AC57(Ry) 00AC5A(Wx) 00AD6E(Rx) 01361C(Rx) 0136A8(Wx) 01378E(Wx) 017C0A(Wx) 017CAB(Wy) 01BE7B(Wx) 023E52(Rx) 023E55(Wx) 024056(Rx) 0240F5(Rx) 024661(Rx) 024668(Wx) 02475A(Wx) 0249C3(Rx) 02669E(Wy) 0274B9(Rx) 027B86(Wy) 028204(Wx) 028E21(Wx) 02C11F(Wx) 02CC19(Wx) 02CC5B(Wx) 02CCA1(Wx) 02CE14(Wx) 02CF6D(Wx) 02D254(Wx) 02D950(Wx) 02D972(Wx) 02E0CE(Wx) 02F4E6(Rx) 02F5E7(Wx) 02FD12(Rx) 03E03F(Wi) 03E848(Wx) 03FF0C(Wx) 
; ram_05FB                              = $05FB ; 008080(Rx) 008362(Rx) 0083DA(Rx) 009439(Rx) 009440(Wx) 0094A7(Wy) 0094F9(Wx) 00954D(Wx) 00AAD6(Wx) 01361C(Rx) 0136A8(Wx) 01378E(Wx) 017C0A(Wx) 017CAB(Wy) 023E52(Rx) 023E55(Wx) 024056(Rx) 0240F5(Rx) 024661(Rx) 024668(Wx) 02475A(Wx) 0248C6(Wx) 0249C3(Rx) 02669E(Wy) 0274B9(Rx) 028204(Wx) 028E21(Wx) 02C11F(Wx) 02CE14(Wx) 02CF6D(Wx) 02D254(Wx) 02D950(Wx) 02D972(Wx) 02F4E6(Rx) 02FD12(Rx) 03E03F(Wi) 03E848(Wx) 03FF0C(Wx) 
; ram_05FC                              = $05FC ; 0094F9(Wx) 00AAD6(Wx) 01361C(Rx) 0136A8(Wx) 01378E(Wx) 0281ED(Wx) 028204(Wx) 0282E3(Wx) 028E21(Wx) 02C11F(Wx) 02E0CE(Wx) 02E1B5(Wx) 02E312(Wx) 02F4E6(Rx) 02F5E7(Wx) 02FD12(Rx) 03E03F(Wi) 03E848(Wx) 03FF0C(Wx) 
; ram_05FD                              = $05FD ; 0094F9(Wx) 00AAD6(Wx) 01361C(Rx) 0136A8(Wx) 01378E(Wx) 0281ED(Wx) 028204(Wx) 0282E3(Wx) 028E21(Wx) 02C11F(Wx) 02E0CE(Wx) 02E1B5(Wx) 02E312(Wx) 02F4E6(Rx) 02F5E7(Wx) 02FD12(Rx) 03E03F(Wi) 03E848(Wx) 03FF0C(Wx) 
; ram_05FE                              = $05FE ; 0094F9(Wx) 00AAD6(Wx) 01361C(Rx) 0281ED(Wx) 028204(Wx) 0282E3(Wx) 02C11F(Wx) 02E0CE(Wx) 02E1B5(Wx) 02E312(Wx) 02F5E7(Wx) 02FD12(Rx) 03E03F(Wi) 03E848(Wx) 03FF0C(Wx) 
; ram_05FF                              = $05FF ; 0094F9(Wx) 00AAD6(Wx) 01361C(Rx) 0281ED(Wx) 028204(Wx) 0282E3(Wx) 02C11F(Wx) 02E0CE(Wx) 02E1B5(Wx) 02E312(Wx) 02F5E7(Wx) 02FD12(Rx) 03E03F(Wi) 03E848(Wx) 03FF0C(Wx) 
; ram_0600                              = $0600 ; 01361C(Rx) 0281ED(Wx) 028204(Wx) 0282E3(Wx) 02C11F(Wx) 02E0CE(Wx) 02E1B5(Wx) 02E312(Wx) 02F5E7(Wx) 02FD12(Rx) 03E03F(Wi) 03E858(Wx) 03FF0C(Wx) 
; ram_0601                              = $0601 ; 01361C(Rx) 0281ED(Wx) 028204(Wx) 0282E3(Wx) 02C11F(Wx) 02E0CE(Wx) 02E1B5(Wx) 02E312(Wx) 02F5E7(Wx) 02FD12(Rx) 03E03F(Wi) 03E858(Wx) 03FF0C(Wx) 
; ram_0602                              = $0602 ; 0014F1(W)  0015BC(R)  001642(R)  001657(W)  0016D5(W)  0381FF(W)  038239(W)  03834C(R)  03E03F(Wi) 03E858(Wx) 
; ram_0603                              = $0603 ; 03B16D(Wx) 03B278(Rx) 03B298(Rx) 03B2A4(Wx) 03B2B1(Rx) 03B2BE(Wx) 03B2C6(Wx) 03B2CB(Rx) 03B2DD(Rx) 03B2E5(Rx) 03B31A(Rx) 03B329(Rx) 03B335(Rx) 03B351(Rx) 03B86F(Wx) 03B8C8(Rx) 03B8D6(Wx) 03B90D(Rx) 03B91C(Rx) 03B922(Wx) 03B957(Rx) 03B95D(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_0604                              = $0604 ; 03B16D(Wx) 03B278(Rx) 03B298(Rx) 03B2A4(Wx) 03B2B1(Rx) 03B2BE(Wx) 03B2C6(Wx) 03B2CB(Rx) 03B2DD(Rx) 03B2E5(Rx) 03B31A(Rx) 03B329(Rx) 03B335(Rx) 03B351(Rx) 03B86F(Wx) 03B8C8(Rx) 03B8D6(Wx) 03B90D(Rx) 03B91C(Rx) 03B922(Wx) 03B957(Rx) 03B95D(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_0605                              = $0605 ; 03B16D(Wx) 03B278(Rx) 03B298(Rx) 03B2A4(Wx) 03B2B1(Rx) 03B2BE(Wx) 03B2C6(Wx) 03B2CB(Rx) 03B2DD(Rx) 03B2E5(Rx) 03B31A(Rx) 03B329(Rx) 03B335(Rx) 03B351(Rx) 03B86F(Wx) 03B8C8(Rx) 03B8D6(Wx) 03B90D(Rx) 03B91C(Rx) 03B922(Wx) 03B957(Rx) 03B95D(Wx) 03E03F(Wi) 03E858(Wx) 



; lots of stuff in this address
ram_obj_config                          = $0606 ; 002B85(W)  0395F1(W)  039EBA(W)  03A0BF(W)  03A10D(W)  03A140(R)  03A174(R)  03E03F(Wi) 03E858(Wx) 
    ram_plr_config                          = $0606 ; 
    ram_wpn_config                          = $0606 ; 
; ram_0607                              = $0607 ; 0041C4(Wx) 0043F6(Rx) 004413(Rx) 00452B(Rx) 00479A(Rx) 0047A1(Wx) 0047CD(Rx) 0047D8(Wx) 005684(Wx) 00571D(Wy) 00579A(Rx) 005A3A(Rx) 005A4F(Rx) 005AEC(Rx) 005B1B(Rx) 005B3A(Rx) 005B69(Rx) 005C3A(Rx) 005C4E(Rx) 0082E4(Rx) 008321(Wx) 008327(Rx) 008388(Wy) 0083CB(Wx) 008433(Rx) 008457(Rx) 00846A(Rx) 0084A1(Rx) 0086E9(Wx) 0086EC(Rx) 0086F1(Wx) 00871F(Rx) 0088E3(Rx) 0088F2(Rx) 00897F(Rx) 008A30(Rx) 008A48(Rx) 008A6D(Rx) 008AB0(Rx) 008C3F(Rx) 008CDF(Rx) 008DAA(Rx) 008E46(Rx) 008E95(Rx) 00A723(Wx) 00A76F(Wx) 00A8E7(Wx) 00A9AE(Wx) 00AA26(Wx) 00AA7C(Wx) 00AC5D(Ry) 00AC60(Wx) 00AD67(Rx) 00AD77(Rx) 00AD8B(Rx) 00ADFB(Rx) 00AF3B(Rx) 00AF3E(Wx) 00AF5F(Rx) 00AF62(Wx) 00C03C(Rx) 00C140(Rx) 00C198(Wx) 00C211(Wx) 00C2DA(Wx) 00C2F6(Wx) 00C318(Wx) 00C3EA(Wy) 00C512(Rx) 00C573(Rx) 00C5C8(Wy) 00C688(Wx) 00C6E0(Rx) 00C6F4(Wx) 00C7D9(Rx) 00C7FA(Wx) 00C80F(Wx) 00C838(Wx) 00C900(Rx) 00C923(Wx) 00C960(Wx) 00C993(Wx) 00CAEB(Rx) 00CAF6(Rx) 00CB1A(Rx) 00CB24(Rx) 00CB29(Wx) 00CB57(Rx) 00CE82(Rx) 00CE8F(Rx) 00CE94(Wx) 00CEDC(Rx) 00D053(Rx) 00D058(Wx) 00D073(Rx) 00D07A(Rx) 00D082(Wx) 00D130(Rx) 00D135(Wx) 00D13B(Rx) 00D140(Wx) 00D1D9(Rx) 00D1DC(Wx) 00D40F(Rx) 00D416(Wx) 00D437(Wx) 00D53A(Rx) 00D610(Rx) 00D61E(Rx) 00D6F8(Wy) 00D92F(Rx) 0139AB(Rx) 0139B0(Wx) 013A38(Rx) 02471B(Rx) 024741(Wx) 02475D(Wx) 025EAC(Wy) 0260A2(Rx) 0264AB(Ry) 0264B7(Wy) 026507(Wx) 0265FB(Rx) 0266A7(Wy) 0269BB(Rx) 026A3C(Rx) 026A50(Rx) 026A7D(Wx) 026A80(Rx) 026A83(Wy) 026AB3(Rx) 026AC7(Rx) 026B0E(Rx) 026B44(Rx) 026CBB(Rx) 026CE3(Wx) 026D14(Rx) 026D6B(Wx) 026DD2(Wx) 026E27(Rx) 026E41(Wx) 026E47(Wx) 026EFD(Rx) 026F3F(Rx) 02750D(Wx) 027521(Wx) 027525(Rx) 027574(Wx) 02758B(Ry) 027633(Wx) 027664(Rx) 0276BB(Rx) 027702(Wx) 027752(Wx) 02778D(Wx) 0277EF(Wx) 02786F(Wx) 027973(Rx) 027C26(Rx) 027C6A(Rx) 027E24(Wx) 027E77(Rx) 029075(Wx) 029110(Wx) 029183(Wx) 02C455(Wx) 02C45C(Wx) 02C501(Wx) 02C517(Wx) 02C555(Wx) 02C57C(Rx) 02C5CC(Rx) 02C5F8(Rx) 02C68E(Wx) 02C6EC(Rx) 02C71A(Rx) 02C746(Wx) 02C7C2(Rx) 02C7F8(Wx) 02C806(Rx) 02C81D(Wx) 02C8DC(Rx) 02C982(Wx) 02C992(Wx) 02CA46(Wx) 02CA55(Wx) 02CA75(Wx) 02CA8B(Wx) 02CBCE(Wx) 02CC50(Wx) 02CC7B(Wx) 02CD01(Wx) 02CD04(Rx) 02CD15(Wx) 02CD1F(Rx) 02CD8D(Wx) 02D196(Wx) 02D1CD(Wx) 02D1D4(Wx) 02D310(Wx) 02D3EE(Wx) 02D41A(Wx) 02D42B(Wx) 02D4C1(Wx) 02D4CD(Wx) 02D673(Wx) 02D67F(Wx) 02D68B(Wx) 02D69E(Wx) 02D6A8(Wx) 02D6FC(Wx) 02D731(Wx) 02D8BB(Wx) 02D8FE(Wx) 02D9E7(Wx) 02DA16(Wx) 02DB2C(Wx) 02DBE7(Rx) 02DBF1(Rx) 02DBF8(Wx) 02DBFD(Rx) 02DC04(Wx) 02DC1C(Rx) 02DEA3(Wx) 02DFA2(Rx) 02E007(Wx) 02E010(Wx) 02E02B(Wx) 02E093(Wx) 02E0B3(Wx) 02F116(Rx) 02F917(Rx) 02F9E0(Rx) 0325E8(Wx) 032611(Wx) 032722(Wx) 032729(Wx) 032783(Wx) 03278D(Wx) 0327A0(Wx) 0327AD(Wx) 0327C3(Wx) 0327DD(Wx) 032903(Wx) 032A22(Rx) 032A27(Wx) 032AB4(Wx) 032AC7(Wx) 03E03F(Wi) 03E858(Wx) 03FF0F(Wx) 
; ram_0608                              = $0608 ; 0041E2(Wx) 0043F6(Rx) 004413(Rx) 00452B(Rx) 00479A(Rx) 0047CD(Rx) 0047F3(Wx) 005684(Wx) 005A3A(Rx) 005A4F(Rx) 005AEC(Rx) 005B1B(Rx) 005B3A(Rx) 005B69(Rx) 005C3A(Rx) 005C4E(Rx) 005CA4(Rx) 005CAC(Rx) 0082E4(Rx) 008321(Wx) 008327(Rx) 008388(Wy) 0083CB(Wx) 008433(Rx) 008457(Rx) 00846A(Rx) 0084A1(Rx) 0086E9(Wx) 0086EC(Rx) 0086F1(Wx) 00871F(Rx) 0088E3(Rx) 0088F2(Rx) 00897F(Rx) 008A30(Rx) 008A48(Rx) 008AB0(Rx) 008C3F(Rx) 008DAA(Rx) 008E46(Rx) 008E95(Rx) 009170(Rx) 00919A(Rx) 0091D7(Rx) 009200(Rx) 009262(Rx) 009ACF(Rx) 009AD7(Wx) 00A723(Wx) 00A76F(Wx) 00A8E7(Wx) 00A904(Wx) 00A9AE(Wx) 00AA26(Wx) 00AA7C(Wx) 00AB7C(Wx) 00AB9F(Rx) 00AC5D(Ry) 00AC60(Wx) 00AD67(Rx) 00AD77(Rx) 00AD8B(Rx) 00ADFB(Rx) 00AF3B(Rx) 00AF3E(Wx) 00AF5F(Rx) 00AF62(Wx) 00C03C(Rx) 00C140(Rx) 00C198(Wx) 00C211(Wx) 00C2DA(Wx) 00C2F6(Wx) 00C318(Wx) 00C512(Rx) 00C573(Rx) 00C58A(Wx) 00C5A8(Wx) 00C63F(Rx) 00C653(Wx) 00C688(Wx) 00C68F(Rx) 00C6A3(Wx) 00C72A(Wy) 00C76E(Rx) 00C7A8(Wx) 00C7D9(Rx) 00C7FA(Wx) 00C80F(Wx) 00C838(Wx) 00C900(Rx) 00C923(Wx) 00C960(Wx) 00C993(Wx) 00CAEB(Rx) 00CAF6(Rx) 00CB1A(Rx) 00CB24(Rx) 00CB29(Wx) 00CB57(Rx) 00CD16(Rx) 00CD29(Wx) 00CD2C(Rx) 00CD31(Wx) 00D288(Rx) 00D2CC(Rx) 00D315(Wx) 00D53A(Rx) 00D610(Rx) 00D61E(Rx) 00D6F8(Wy) 00D92F(Rx) 0139AB(Rx) 0139B0(Wx) 013A38(Rx) 02475D(Wx) 025DDE(Wy) 025EAC(Wy) 0260A2(Rx) 026243(Wy) 0264A8(Rx) 0265FB(Rx) 0266EF(Wx) 0269BB(Rx) 026A3C(Rx) 026A50(Rx) 026A7D(Wx) 026A80(Rx) 026A83(Wy) 026AB3(Rx) 026AC7(Rx) 026B0E(Rx) 026B44(Rx) 026C1C(Rx) 026CDB(Wy) 026D2E(Wy) 026DD2(Wx) 026E20(Wx) 026EFD(Rx) 026F3F(Rx) 027064(Rx) 027082(Rx) 0270DB(Wx) 027198(Rx) 027205(Rx) 027387(Ry) 0273F1(Wy) 027453(Rx) 02745A(Rx) 027546(Wy) 027574(Wx) 027588(Rx) 0275A0(Rx) 0275FC(Wy) 027664(Rx) 027973(Rx) 0279B7(Wy) 027BA8(Rx) 027C26(Rx) 027C6A(Rx) 027C96(Rx) 027CBB(Rx) 027E44(Wy) 027E77(Rx) 029075(Wx) 029110(Wx) 029183(Wx) 02C455(Wx) 02C45C(Wx) 02C501(Wx) 02C517(Wx) 02C555(Wx) 02C57C(Rx) 02C5CC(Rx) 02C5F8(Rx) 02C68E(Wx) 02C6EC(Rx) 02C71A(Rx) 02C746(Wx) 02C7C2(Rx) 02C7F8(Wx) 02C806(Rx) 02C81D(Wx) 02C8DC(Rx) 02C982(Wx) 02C992(Wx) 02C9AE(Rx) 02CA46(Wx) 02CA55(Wx) 02CA75(Wx) 02CA8B(Wx) 02CBCE(Wx) 02CC50(Wx) 02CC7B(Wx) 02CD01(Wx) 02CD04(Rx) 02CD15(Wx) 02CD1F(Rx) 02CD8D(Wx) 02D196(Wx) 02D1CD(Wx) 02D1D4(Wx) 02D310(Wx) 02D3EE(Wx) 02D41A(Wx) 02D42B(Wx) 02D4C1(Wx) 02D4CD(Wx) 02D673(Wx) 02D67F(Wx) 02D68B(Wx) 02D69E(Wx) 02D6A8(Wx) 02D6FC(Wx) 02D731(Wx) 02D8BB(Wx) 02D8FE(Wx) 02D9E7(Wx) 02DA16(Wx) 02DB2C(Wx) 02DBE7(Rx) 02DBF1(Rx) 02DBF8(Wx) 02DBFD(Rx) 02DC04(Wx) 02DC1C(Rx) 02DC99(Rx) 02DD27(Ry) 02DEA3(Wx) 02DFA2(Rx) 02E007(Wx) 02E010(Wx) 02E02B(Wx) 02E093(Wx) 02E0B3(Wx) 02F116(Rx) 02F145(Rx) 02F917(Rx) 02F9E0(Rx) 03AF73(Wx) 03E03F(Wi) 03E858(Wx) 03FF0F(Wx) 
; ram_0609                              = $0609 ; 00422E(Wx) 0043F6(Rx) 004413(Rx) 00452B(Rx) 0047CD(Rx) 0047F3(Wx) 00489B(Wx) 0055E3(Rx) 00560E(Rx) 005684(Wx) 00571D(Wy) 00579A(Rx) 005A3A(Rx) 005A4F(Rx) 005AEC(Rx) 005B1B(Rx) 005B3A(Rx) 005B69(Rx) 005C3A(Rx) 005C4E(Rx) 005CA4(Rx) 005CAC(Rx) 008327(Rx) 008388(Wy) 008433(Rx) 008457(Rx) 00846A(Rx) 0084A1(Rx) 0086E9(Wx) 0086EC(Rx) 0086F1(Wx) 00871F(Rx) 0088E3(Rx) 0088F2(Rx) 00897F(Rx) 008A30(Rx) 008A48(Rx) 008AB0(Rx) 008C3F(Rx) 008DAA(Rx) 008E46(Rx) 008E95(Rx) 009170(Rx) 00919A(Rx) 0091D7(Rx) 009200(Rx) 009262(Rx) 009ACF(Rx) 009AD7(Wx) 00A76F(Wx) 00A8E7(Wx) 00A904(Wx) 00A9AE(Wx) 00AA26(Wx) 00AA7C(Wx) 00AB7C(Wx) 00AB9F(Rx) 00AC5D(Ry) 00AC60(Wx) 00AD67(Rx) 00AD77(Rx) 00AD8B(Rx) 00ADFB(Rx) 00AF3B(Rx) 00AF3E(Wx) 00AF5F(Rx) 00AF62(Wx) 00C03C(Rx) 00C2CF(Wy) 00C3EA(Wy) 00C426(Rx) 00C44B(Wx) 00C46D(Wx) 00C476(Rx) 00C573(Rx) 00C5C8(Wy) 00D53A(Rx) 00D610(Rx) 00D61E(Rx) 00D6F8(Wy) 00D92F(Rx) 0139AB(Rx) 0139B0(Wx) 013A38(Rx) 02475D(Wx) 025EAC(Wy) 0260A2(Rx) 026243(Wy) 0264A8(Rx) 0266A7(Wy) 0269BB(Rx) 026A3C(Rx) 026A50(Rx) 026A7D(Wx) 026A80(Rx) 026A83(Wy) 026AB3(Rx) 026AC7(Rx) 026B44(Rx) 026D2E(Wy) 026DD2(Wx) 026E20(Wx) 026EFD(Rx) 026F3F(Rx) 027064(Rx) 027082(Rx) 0270DB(Wx) 027198(Rx) 027205(Rx) 027387(Ry) 0273A1(Wy) 0273F1(Wy) 027453(Rx) 02745A(Rx) 0275FC(Wy) 027664(Rx) 0276E6(Wy) 0278CF(Rx) 027933(Rx) 027973(Rx) 0279B7(Wy) 027BA8(Rx) 027C26(Rx) 027C6A(Rx) 027C96(Rx) 027CBB(Rx) 029075(Wx) 029110(Wx) 029183(Wx) 02C455(Wx) 02C45C(Wx) 02C501(Wx) 02C517(Wx) 02C555(Wx) 02C57C(Rx) 02C68E(Wx) 02C6EC(Rx) 02C71A(Rx) 02C746(Wx) 02C7C2(Rx) 02C7F8(Wx) 02C81D(Wx) 02C8DC(Rx) 02C982(Wx) 02CA46(Wx) 02CA55(Wx) 02CA75(Wx) 02CA8B(Wx) 02CBCE(Wx) 02CC50(Wx) 02CC7B(Wx) 02CD01(Wx) 02CD04(Rx) 02CD15(Wx) 02CD1F(Rx) 02CD8D(Wx) 02D196(Wx) 02D1CD(Wx) 02D1D4(Wx) 02D3EE(Wx) 02D41A(Wx) 02D42B(Wx) 02D673(Wx) 02D67F(Wx) 02D68B(Wx) 02D69E(Wx) 02D6A8(Wx) 02D6FC(Wx) 02D8BB(Wx) 02D9E7(Wx) 02DA16(Wx) 02DB2C(Wx) 02DBE7(Rx) 02DBF1(Rx) 02DBF8(Wx) 02DBFD(Rx) 02DC04(Wx) 02DC1C(Rx) 02DC99(Rx) 02DD27(Ry) 02DEA3(Wx) 02DFA2(Rx) 02E007(Wx) 02E010(Wx) 02E02B(Wx) 02E093(Wx) 02E0B3(Wx) 02F116(Rx) 02F917(Rx) 02F9E0(Rx) 032FEF(Rx) 03302E(Wx) 03305F(Wx) 0330CE(Wx) 0330E5(Wx) 033105(Wx) 03314A(Wx) 033170(Wx) 03319C(Wx) 03AF73(Wx) 03E03F(Wi) 03E858(Wx) 03FF0F(Wx) 
; ram_060A                              = $060A ; 00426D(Wx) 004413(Rx) 0047CD(Rx) 0047D8(Wx) 00489B(Wx) 0055E3(Rx) 00560E(Rx) 005684(Wx) 0059D1(Wx) 005A3A(Rx) 005A4F(Rx) 005AEC(Rx) 005B1B(Rx) 005B3A(Rx) 005B69(Rx) 005C3A(Rx) 005C4E(Rx) 008327(Rx) 008388(Wy) 008433(Rx) 008457(Rx) 00846A(Rx) 0084A1(Rx) 0088E3(Rx) 0088F2(Rx) 00897F(Rx) 008A30(Rx) 008A48(Rx) 008AB0(Rx) 008C3F(Rx) 008DAA(Rx) 008E46(Rx) 008E95(Rx) 009170(Rx) 00919A(Rx) 0091D7(Rx) 009200(Rx) 009262(Rx) 009ACF(Rx) 009AD7(Wx) 00A76F(Wx) 00A904(Wx) 00A9AE(Wx) 00AA26(Wx) 00AB7C(Wx) 00AB9F(Rx) 00AC5D(Ry) 00AC60(Wx) 00AD67(Rx) 00AD77(Rx) 00AD8B(Rx) 00ADFB(Rx) 00AF3B(Rx) 00AF3E(Wx) 00AF5F(Rx) 00AF62(Wx) 00C03C(Rx) 00C2CF(Wy) 00C3EA(Wy) 00C426(Rx) 00C44B(Wx) 00C46D(Wx) 00C476(Rx) 00C573(Rx) 00C5C8(Wy) 00D53A(Rx) 00D5BA(Wx) 00D718(Rx) 00D74B(Wx) 00D7B7(Wx) 013A38(Rx) 02475D(Wx) 025EAC(Wy) 0260A2(Rx) 026243(Wy) 0264A8(Rx) 0266A7(Wy) 0269BB(Rx) 026A3C(Rx) 026A50(Rx) 026A7D(Wx) 026A80(Rx) 026A83(Wy) 026AB3(Rx) 026AC7(Rx) 026B0E(Rx) 026B44(Rx) 026D2E(Wy) 026DD2(Wx) 026E20(Wx) 026EFD(Rx) 026F3F(Rx) 027064(Rx) 027082(Rx) 0270DB(Wx) 027198(Rx) 027205(Rx) 027387(Ry) 0273A1(Wy) 027453(Rx) 02745A(Rx) 0275FC(Wy) 027664(Rx) 0276E6(Wy) 0278CF(Rx) 027933(Rx) 027973(Rx) 0279B7(Wy) 027BA8(Rx) 027C26(Rx) 027C6A(Rx) 027C96(Rx) 027CBB(Rx) 029075(Wx) 029110(Wx) 029183(Wx) 02C455(Wx) 02C45C(Wx) 02C496(Wx) 02C49C(Rx) 02C501(Wx) 02C517(Wx) 02C57C(Rx) 02C665(Wx) 02C68E(Wx) 02C6E0(Rx) 02C6E5(Wx) 02C6EC(Rx) 02C746(Wx) 02C798(Wx) 02C7A3(Wx) 02C7C2(Rx) 02C7F8(Wx) 02C806(Rx) 02C81D(Wx) 02C8DC(Rx) 02CA46(Wx) 02CA55(Wx) 02CA75(Wx) 02CA8B(Wx) 02CB55(Wx) 02CBCE(Wx) 02D196(Wx) 02D673(Wx) 02D67F(Wx) 02D68B(Wx) 02D69E(Wx) 02D6A8(Wx) 02D6FC(Wx) 02D731(Wx) 02D9E7(Wx) 02DA16(Wx) 02DB2C(Wx) 02DBE7(Rx) 02DBF1(Rx) 02DBF8(Wx) 02DBFD(Rx) 02DC04(Wx) 02DC1C(Rx) 02DC99(Rx) 02DD27(Ry) 02DEA3(Wx) 02DFA2(Rx) 02E007(Wx) 02E010(Wx) 02E02B(Wx) 02E093(Wx) 02E0B3(Wx) 02F116(Rx) 02F9E0(Rx) 032FEF(Rx) 03302E(Wx) 03305F(Wx) 0330CE(Wx) 0330E5(Wx) 033105(Wx) 03314A(Wx) 033170(Wx) 03319C(Wx) 03AF73(Wx) 03E03F(Wi) 03E858(Wx) 03FF0F(Wx) 
; ram_060B                              = $060B ; 004413(Rx) 00489B(Wx) 0055E3(Rx) 00560E(Rx) 005684(Wx) 00571D(Wy) 00579A(Rx) 008327(Rx) 008388(Wy) 008433(Rx) 008457(Rx) 00846A(Rx) 0084A1(Rx) 0088E3(Rx) 0088F2(Rx) 00897F(Rx) 008A30(Rx) 008A48(Rx) 008A6D(Rx) 008AB0(Rx) 008C3F(Rx) 008CDF(Rx) 008DAA(Rx) 008E46(Rx) 008E95(Rx) 009170(Rx) 00919A(Rx) 0091D7(Rx) 009200(Rx) 009262(Rx) 009ACF(Rx) 009AD7(Wx) 00A76F(Wx) 00A904(Wx) 00A9AE(Wx) 00AA26(Wx) 00AB7C(Wx) 00AB9F(Rx) 00AC5D(Ry) 00AC60(Wx) 00AD67(Rx) 00AD77(Rx) 00ADFB(Rx) 00AF5F(Rx) 00AF62(Wx) 00C03C(Rx) 00C2CF(Wy) 00C3EA(Wy) 00C426(Rx) 00C44B(Wx) 00C46D(Wx) 00C476(Rx) 00C573(Rx) 00C5C8(Wy) 00D6F8(Wy) 00D92F(Rx) 013A38(Rx) 017CBF(Wy) 017D3A(Rx) 017DAD(Rx) 02475D(Wx) 025EAC(Wy) 0260A2(Rx) 026243(Wy) 0264A8(Rx) 0266A7(Wy) 0269BB(Rx) 026A3C(Rx) 026A50(Rx) 026A7D(Wx) 026A80(Rx) 026A83(Wy) 026AB3(Rx) 026AC7(Rx) 026B44(Rx) 026D2E(Wy) 026DD2(Wx) 026E20(Wx) 026EFD(Rx) 026F3F(Rx) 027064(Rx) 027082(Rx) 0270DB(Wx) 027198(Rx) 027205(Rx) 027387(Ry) 0273A1(Wy) 027453(Rx) 02745A(Rx) 0275FC(Wy) 027664(Rx) 02773A(Wy) 0278CF(Rx) 027933(Rx) 027973(Rx) 0279B7(Wy) 027BA8(Rx) 027C26(Rx) 027C6A(Rx) 027C96(Rx) 027CBB(Rx) 029075(Wx) 029183(Wx) 02C455(Wx) 02C45C(Wx) 02C496(Wx) 02C49C(Rx) 02C517(Wx) 02C57C(Rx) 02C665(Wx) 02C68E(Wx) 02C6E0(Rx) 02C6E5(Wx) 02C6EC(Rx) 02C746(Wx) 02C798(Wx) 02C7A3(Wx) 02C7C2(Rx) 02C7F8(Wx) 02C81D(Wx) 02C8DC(Rx) 02CA46(Wx) 02CA55(Wx) 02CA75(Wx) 02CA8B(Wx) 02CB55(Wx) 02CBCE(Wx) 02D196(Wx) 02D673(Wx) 02D67F(Wx) 02D68B(Wx) 02D69E(Wx) 02D6A8(Wx) 02D6FC(Wx) 02D731(Wx) 02DB2C(Wx) 02DBE7(Rx) 02DBF1(Rx) 02DBF8(Wx) 02DBFD(Rx) 02DC04(Wx) 02DC1C(Rx) 02DC99(Rx) 02DD27(Ry) 02DEA3(Wx) 02DFA2(Rx) 02E007(Wx) 02E010(Wx) 02E02B(Wx) 02E093(Wx) 02E0B3(Wx) 02F116(Rx) 02F9E0(Rx) 03E03F(Wi) 03E858(Wx) 03FF0F(Wx) 
; ram_060C                              = $060C ; 004413(Rx) 005684(Wx) 00571D(Wy) 00579A(Rx) 008327(Rx) 008388(Wy) 008433(Rx) 008457(Rx) 00846A(Rx) 0084A1(Rx) 0088E3(Rx) 0088F2(Rx) 00897F(Rx) 008DAA(Rx) 008E46(Rx) 008E95(Rx) 009170(Rx) 00919A(Rx) 0091D7(Rx) 009200(Rx) 009262(Rx) 00A76F(Wx) 00A904(Wx) 00A9AE(Wx) 00AB7C(Wx) 00AB9F(Rx) 00AC5D(Ry) 00AC60(Wx) 00AD67(Rx) 00AD77(Rx) 00C03C(Rx) 00C2CF(Wy) 00C3EA(Wy) 00C426(Rx) 00C44B(Wx) 00C46D(Wx) 00C476(Rx) 00C573(Rx) 00C5C8(Wy) 00D6F8(Wy) 00D92F(Rx) 013A38(Rx) 017CBF(Wy) 017D3A(Rx) 017DAD(Rx) 017DE7(Wx) 017E07(Rx) 017E18(Rx) 02475D(Wx) 025EAC(Wy) 0260A2(Rx) 026243(Wy) 0264A8(Rx) 0266A7(Wy) 0269BB(Rx) 026A3C(Rx) 026A50(Rx) 026A83(Wy) 026AB3(Rx) 026AC7(Rx) 026B44(Rx) 026D2E(Wy) 026DD2(Wx) 026E20(Wx) 026EFD(Rx) 026F3F(Rx) 027064(Rx) 027082(Rx) 0270DB(Wx) 027198(Rx) 027205(Rx) 027387(Ry) 0273A1(Wy) 027453(Rx) 02745A(Rx) 0275FC(Wy) 027664(Rx) 027973(Rx) 0279B7(Wy) 027BA8(Rx) 027C26(Rx) 027C6A(Rx) 027C96(Rx) 027CBB(Rx) 029075(Wx) 029183(Wx) 02C455(Wx) 02C45C(Wx) 02C496(Wx) 02C49C(Rx) 02C665(Wx) 02C68E(Wx) 02C6E0(Rx) 02C6E5(Wx) 02C6EC(Rx) 02C746(Wx) 02CB55(Wx) 02D196(Wx) 02D673(Wx) 02D68B(Wx) 02D69E(Wx) 02DB2C(Wx) 02DBE7(Rx) 02DBF1(Rx) 02DBF8(Wx) 02DBFD(Rx) 02DC04(Wx) 02DC1C(Rx) 02DC99(Rx) 02DD27(Ry) 02DEA3(Wx) 02DFA2(Rx) 02E007(Wx) 02E010(Wx) 02E02B(Wx) 02E093(Wx) 02E0B3(Wx) 02F116(Rx) 02F9E0(Rx) 03E03F(Wi) 03E858(Wx) 03FF0F(Wx) 
; ram_060D                              = $060D ; 004413(Rx) 005684(Wx) 00571D(Wy) 00579A(Rx) 008327(Rx) 008388(Wy) 008433(Rx) 008457(Rx) 00846A(Rx) 0084A1(Rx) 0088E3(Rx) 0088F2(Rx) 00897F(Rx) 008DAA(Rx) 008E46(Rx) 008E95(Rx) 009170(Rx) 00919A(Rx) 0091D7(Rx) 009200(Rx) 009262(Rx) 009ACF(Rx) 009AD7(Wx) 00A76F(Wx) 00A904(Wx) 00A9AE(Wx) 00AB7C(Wx) 00AB9F(Rx) 00AC5D(Ry) 00AC60(Wx) 00AD67(Rx) 00AD77(Rx) 00C03C(Rx) 00C2CF(Wy) 00C3EA(Wy) 00C426(Rx) 00C44B(Wx) 00C46D(Wx) 00C476(Rx) 00C573(Rx) 00C5C8(Wy) 013A38(Rx) 017CBF(Wy) 017D3A(Rx) 017DAD(Rx) 017DE7(Wx) 017E07(Rx) 017E18(Rx) 02475D(Wx) 025EAC(Wy) 0260A2(Rx) 026243(Wy) 0264A8(Rx) 0266A7(Wy) 0269BB(Rx) 026A3C(Rx) 026A50(Rx) 026A83(Wy) 026AB3(Rx) 026AC7(Rx) 026B44(Rx) 026D2E(Wy) 026DD2(Wx) 026E20(Wx) 026EFD(Rx) 026F3F(Rx) 027064(Rx) 027082(Rx) 027198(Rx) 027205(Rx) 027387(Ry) 0273A1(Wy) 027453(Rx) 02745A(Rx) 0274AB(Wy) 0274AF(Rx) 0275FC(Wy) 027664(Rx) 029075(Wx) 02C455(Wx) 02C45C(Wx) 02C68E(Wx) 02C6EC(Rx) 02C746(Wx) 02CA46(Wx) 02CA55(Wx) 02CA75(Wx) 02CA8B(Wx) 02D9E7(Wx) 02DB2C(Wx) 02DBE7(Rx) 02DBF1(Rx) 02DBF8(Wx) 02DBFD(Rx) 02DC04(Wx) 02DC99(Rx) 02DD27(Ry) 02E007(Wx) 02E010(Wx) 02E02B(Wx) 02E093(Wx) 02E0B3(Wx) 02F116(Rx) 02F9E0(Rx) 03E03F(Wi) 03E858(Wx) 03FF0F(Wx) 
; ram_060E                              = $060E ; 004413(Rx) 005684(Wx) 00571D(Wy) 00579A(Rx) 008327(Rx) 008388(Wy) 008433(Rx) 008457(Rx) 00846A(Rx) 0084A1(Rx) 00897F(Rx) 008DAA(Rx) 008E46(Rx) 008E95(Rx) 009170(Rx) 00919A(Rx) 0091D7(Rx) 009200(Rx) 009262(Rx) 00A76F(Wx) 00A904(Wx) 00A9AE(Wx) 00AB7C(Wx) 00AB9F(Rx) 00AC5D(Ry) 00AC60(Wx) 00AD67(Rx) 00AD77(Rx) 00C2CF(Wy) 00C426(Rx) 00C44B(Wx) 00C46D(Wx) 00C476(Rx) 00C573(Rx) 00C5C8(Wy) 013A38(Rx) 017CBF(Wy) 017D3A(Rx) 017DAD(Rx) 017DE7(Wx) 017E07(Rx) 017E18(Rx) 02475D(Wx) 025EAC(Wy) 0260A2(Rx) 026243(Wy) 0264A8(Rx) 0266A7(Wy) 0269BB(Rx) 026A3C(Rx) 026A50(Rx) 026A83(Wy) 026AB3(Rx) 026AC7(Rx) 026B44(Rx) 026D2E(Wy) 026DD2(Wx) 026E20(Wx) 026EFD(Rx) 026F3F(Rx) 027064(Rx) 027082(Rx) 027198(Rx) 027205(Rx) 027387(Ry) 0273A1(Wy) 027453(Rx) 02745A(Rx) 0274AB(Wy) 0274AF(Rx) 029075(Wx) 02C455(Wx) 02C45C(Wx) 02C68E(Wx) 02C6EC(Rx) 02C746(Wx) 02C81D(Wx) 02C8DC(Rx) 02D196(Wx) 02D673(Wx) 02D68B(Wx) 02D69E(Wx) 02D6A8(Wx) 02D731(Wx) 02D9E7(Wx) 02DA16(Wx) 02DA7C(Wx) 02DA88(Wx) 02DB2C(Wx) 02DBE7(Rx) 02DBF1(Rx) 02DBF8(Wx) 02DBFD(Rx) 02DC04(Wx) 02DD27(Ry) 02E007(Wx) 02E010(Wx) 02E02B(Wx) 02E093(Wx) 02E0B3(Wx) 02F116(Rx) 02F9E0(Rx) 03E03F(Wi) 03E858(Wx) 03FF0F(Wx) 
; ram_060F                              = $060F ; 004413(Rx) 005684(Wx) 00571D(Wy) 00579A(Rx) 008327(Rx) 008388(Wy) 008433(Rx) 008457(Rx) 00846A(Rx) 0084A1(Rx) 0088E3(Rx) 0088F2(Rx) 008DAA(Rx) 008E46(Rx) 008E95(Rx) 009170(Rx) 00919A(Rx) 0091D7(Rx) 009200(Rx) 009262(Rx) 00A76F(Wx) 00A904(Wx) 00A9AE(Wx) 00AC5D(Ry) 00AC60(Wx) 00AD67(Rx) 00AD77(Rx) 013A38(Rx) 017CBF(Wy) 017D3A(Rx) 017DAD(Rx) 017DE7(Wx) 017E07(Rx) 017E18(Rx) 02475D(Wx) 025EAC(Wy) 0260A2(Rx) 0266A7(Wy) 026D2E(Wy) 026DD2(Wx) 026E20(Wx) 026EFD(Rx) 026F3F(Rx) 027064(Rx) 027082(Rx) 027198(Rx) 027205(Rx) 027387(Ry) 0273A1(Wy) 027453(Rx) 02745A(Rx) 0274AB(Wy) 0274AF(Rx) 029075(Wx) 02C455(Wx) 02C45C(Wx) 02C68E(Wx) 02C6EC(Rx) 02C746(Wx) 02CC6A(Wx) 02CCAA(Rx) 02D604(Wx) 02D638(Rx) 02D9E7(Wx) 02F116(Rx) 02F9E0(Rx) 03E03F(Wi) 03E858(Wx) 03FF0F(Wx) 
; ram_0610                              = $0610 ; 004413(Rx) 005684(Wx) 00571D(Wy) 00579A(Rx) 008327(Rx) 008388(Wy) 008433(Rx) 008457(Rx) 00846A(Rx) 0084A1(Rx) 008DAA(Rx) 008E46(Rx) 008E95(Rx) 009170(Rx) 00919A(Rx) 0091D7(Rx) 009200(Rx) 009262(Rx) 00A76F(Wx) 00A8E7(Wx) 00A904(Wx) 00A9AE(Wx) 00AC5D(Ry) 00AC60(Wx) 00AD67(Rx) 00AD77(Rx) 0139AB(Rx) 0139B0(Wx) 017CBF(Wy) 017D3A(Rx) 017DAD(Rx) 017DE7(Wx) 017E07(Rx) 017E18(Rx) 02475D(Wx) 025EAC(Wy) 0260A2(Rx) 0266A7(Wy) 026D2E(Wy) 026DD2(Wx) 026E20(Wx) 026EFD(Rx) 026F3F(Rx) 027064(Rx) 027082(Rx) 027198(Rx) 027205(Rx) 027387(Ry) 0273A1(Wy) 027453(Rx) 02745A(Rx) 0274AB(Wy) 0274AF(Rx) 029075(Wx) 02C455(Wx) 02C45C(Wx) 02C68E(Wx) 02C6EC(Rx) 02C71A(Rx) 02C746(Wx) 02CC6A(Wx) 02CCAA(Rx) 02D604(Wx) 02D638(Rx) 02D673(Wx) 02D68B(Wx) 02D69E(Wx) 02D6A8(Wx) 02D731(Wx) 02E007(Wx) 02E010(Wx) 02E02B(Wx) 02E093(Wx) 02E0B3(Wx) 02F116(Rx) 02F917(Rx) 02F9E0(Rx) 03E03F(Wi) 03E858(Wx) 03FF0F(Wx) 
; ram_0611                              = $0611 ; 004413(Rx) 005684(Wx) 00571D(Wy) 00579A(Rx) 008327(Rx) 008388(Wy) 008433(Rx) 008457(Rx) 00846A(Rx) 0084A1(Rx) 00897F(Rx) 008DAA(Rx) 008E46(Rx) 008E95(Rx) 009170(Rx) 00919A(Rx) 0091D7(Rx) 009200(Rx) 009262(Rx) 00A76F(Wx) 00A904(Wx) 00A9AE(Wx) 00AC5D(Ry) 00AC60(Wx) 00AD67(Rx) 00AD77(Rx) 0139AB(Rx) 0139B0(Wx) 017CBF(Wy) 017D3A(Rx) 017DAD(Rx) 017DE7(Wx) 017E07(Rx) 017E18(Rx) 02475D(Wx) 025EAC(Wy) 0260A2(Rx) 0266A7(Wy) 026EFD(Rx) 026F3F(Rx) 027064(Rx) 027082(Rx) 027198(Rx) 027205(Rx) 027387(Ry) 0273A1(Wy) 027453(Rx) 02745A(Rx) 0274AB(Wy) 0274AF(Rx) 029075(Wx) 02C455(Wx) 02C45C(Wx) 02C68E(Wx) 02C6EC(Rx) 02C71A(Rx) 02C746(Wx) 02CC6A(Wx) 02CCAA(Rx) 02D604(Wx) 02D638(Rx) 02E007(Wx) 02E010(Wx) 02E02B(Wx) 02E093(Wx) 02E0B3(Wx) 02F116(Rx) 02F9E0(Rx) 03E03F(Wi) 03E858(Wx) 03FF0F(Wx) 
; ram_0612                              = $0612 ; 005684(Wx) 008327(Rx) 008388(Wy) 008433(Rx) 008457(Rx) 00846A(Rx) 0084A1(Rx) 008DAA(Rx) 008E46(Rx) 008E95(Rx) 009170(Rx) 00919A(Rx) 0091D7(Rx) 009200(Rx) 009262(Rx) 00A76F(Wx) 00A904(Wx) 00A9AE(Wx) 0139AB(Rx) 0139B0(Wx) 017CBF(Wy) 017D3A(Rx) 017DAD(Rx) 017DE7(Wx) 017E07(Rx) 017E18(Rx) 02475D(Wx) 025EAC(Wy) 0260A2(Rx) 0266A7(Wy) 026EFD(Rx) 026F3F(Rx) 027064(Rx) 027082(Rx) 027198(Rx) 027205(Rx) 027387(Ry) 0273A1(Wy) 027453(Rx) 02745A(Rx) 0274AB(Wy) 0274AF(Rx) 029075(Wx) 02C455(Wx) 02C45C(Wx) 02C68E(Wx) 02C6EC(Rx) 02C71A(Rx) 02C746(Wx) 02D604(Wx) 02D638(Rx) 02F116(Rx) 02F9E0(Rx) 03E03F(Wi) 03E858(Wx) 03FF0F(Wx) 
; ram_0613                              = $0613 ; 009170(Rx) 00919A(Rx) 0091D7(Rx) 009200(Rx) 009262(Rx) 00A904(Wx) 02C455(Wx) 02C45C(Wx) 02C68E(Wx) 02C6EC(Rx) 02E007(Wx) 02E010(Wx) 02E02B(Wx) 02E093(Wx) 02E0B3(Wx) 03E03F(Wi) 03E858(Wx) 03FF0F(Wx) 
; ram_0614                              = $0614 ; 009170(Rx) 00919A(Rx) 0091D7(Rx) 009200(Rx) 009262(Rx) 00A904(Wx) 02C455(Wx) 02C45C(Wx) 02C68E(Wx) 02C6EC(Rx) 02E007(Wx) 02E010(Wx) 02E02B(Wx) 02E093(Wx) 02E0B3(Wx) 03E03F(Wi) 03E858(Wx) 03FF0F(Wx) 
; ram_0615                              = $0615 ; 009170(Rx) 00919A(Rx) 0091D7(Rx) 009200(Rx) 009262(Rx) 00A904(Wx) 02C455(Wx) 02C45C(Wx) 02E007(Wx) 02E010(Wx) 02E02B(Wx) 02E093(Wx) 02E0B3(Wx) 03E03F(Wi) 03E858(Wx) 03FF0F(Wx) 
; ram_0616                              = $0616 ; 009170(Rx) 00919A(Rx) 0091D7(Rx) 009200(Rx) 009262(Rx) 00A904(Wx) 02C455(Wx) 02C45C(Wx) 02E007(Wx) 02E010(Wx) 02E02B(Wx) 02E093(Wx) 02E0B3(Wx) 03E03F(Wi) 03E858(Wx) 03FF0F(Wx) 
; ram_0617                              = $0617 ; 02C455(Wx) 02C45C(Wx) 02E007(Wx) 02E010(Wx) 02E02B(Wx) 02E093(Wx) 02E0B3(Wx) 03E03F(Wi) 03E858(Wx) 03FF0F(Wx) 
; ram_0618                              = $0618 ; 02C455(Wx) 02C45C(Wx) 02E007(Wx) 02E010(Wx) 02E02B(Wx) 02E093(Wx) 02E0B3(Wx) 03E03F(Wi) 03E858(Wx) 03FF0F(Wx) 
; ram_0619                              = $0619 ; 001536(W)  001558(W)  0016D8(W)  00626E(R)  00629B(R)  03E03F(Wi) 03E858(Wx) 
; ram_061A                              = $061A ; 01BE50(Ry) 01BE57(Ry) 01BE67(Wy) 02F2D6(Ry) 02F2E2(Ry) 03AF73(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_061B                              = $061B ; 01BE50(Ry) 01BE57(Ry) 01BE67(Wy) 02F2D6(Ry) 02F2E2(Ry) 03AF73(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_061C                              = $061C ; 01BE50(Ry) 01BE57(Ry) 01BE67(Wy) 02F2D6(Ry) 02F2E2(Ry) 03AF73(Wx) 03E03F(Wi) 03E858(Wx) 



; a copy of ram_plr_state ? 0x008901
; is it obj config lo, while 0606 is hi?
; can be object index, see 0x017C2A
ram_061D_obj                            = $061D ; 002B7C(W)  002C99(R)  002C9E(W)  002D10(R)  002D15(W)  0395E8(W)  039963(R)  039968(W)  039AAF(R)  039AB4(W)  039BE2(W)  039EC7(W)  03A0C8(W)  03A108(W)  03A149(R)  03A17D(R)  03E03F(Wi) 03E858(Wx) 
    ram_061D_plr                            = $061D ; 
    ram_061D_wpn_damage                     = $061D ; +40 = weapon is able to hit stuff (damage?)
; ram_061E                              = $061E ; 005687(Wx) 005718(Wy) 00578B(Rx) 0057B7(Wx) 00580D(Wx) 005829(Wx) 00583A(Wx) 005842(Rx) 005847(Rx) 005883(Wx) 0059FC(Wx) 005A03(Wx) 005A5E(Rx) 005A7C(Wx) 005C0C(Wx) 005C6F(Rx) 005C74(Wx) 0082E1(Rx) 00831E(Wx) 008324(Rx) 00832C(Wx) 00832F(Rx) 00838B(Wy) 0083C6(Wx) 008446(Wx) 00844D(Ry) 0084D2(Rx) 0086CE(Rx) 008738(Rx) 008901(Rx) 008909(Wx) 008A7D(Wx) 008AC7(Rx) 008B05(Rx) 008B0A(Wx) 008B20(Rx) 008B54(Rx) 008B59(Wx) 008DF8(Rx) 008E02(Rx) 008E07(Wx) 008E10(Rx) 008E15(Wx) 009140(Rx) 00A728(Wx) 00A774(Wx) 00A8EC(Wx) 00A9B3(Wx) 00AA2B(Wx) 00AA77(Wx) 00AD92(Rx) 00AE00(Rx) 00AE2B(Rx) 00AF49(Rx) 00AF4C(Wx) 00AF6D(Rx) 00AF70(Wx) 00C079(Rx) 00C08F(Rx) 00C095(Wx) 00C0E7(Rx) 00C111(Rx) 00C120(Wy) 00C19D(Wx) 00C221(Wx) 00C224(Rx) 00C233(Rx) 00C34B(Rx) 00C351(Wx) 00C362(Rx) 00C376(Rx) 00C391(Ry) 00C3F7(Rx) 00C52E(Rx) 00C544(Wx) 00C5BE(Wy) 00C68B(Wx) 00C6ED(Rx) 00C6FE(Wx) 00C7EB(Wx) 00C80C(Wx) 00C82C(Rx) 00C844(Rx) 00C866(Wx) 00CB68(Rx) 00CBCD(Rx) 00CBE2(Wx) 00CBE5(Rx) 00CBEA(Wx) 00CED0(Rx) 00CED5(Wx) 00CEF4(Rx) 00CEF9(Wx) 00CF01(Rx) 00CF06(Wx) 00CF2C(Rx) 00CF31(Wx) 00D455(Rx) 00D46C(Wx) 00D480(Wx) 00D655(Rx) 00D65A(Wx) 00D92C(Wx) 00DAE7(Wx) 00DE8A(Wx) 00DE8D(Rx) 01379B(Rx) 0139B3(Rx) 0139B8(Wx) 024760(Wx) 025935(R)  026381(Rx) 026386(Wx) 02639A(Rx) 0263A1(Rx) 0263A6(Wx) 026521(Wy) 02653A(Wx) 0266AA(Wy) 0269C8(Rx) 0269FA(Rx) 026A03(Wx) 026A6F(Wx) 026A8D(Wx) 026A90(Wy) 026D65(Wx) 026D8E(R)  026D93(Wx) 026FC6(Rx) 0271F0(R)  027374(Rx) 02737B(Wx) 0273C4(R)  0273EA(Wy) 027577(Wx) 027707(Wx) 027713(Rx) 027757(Wx) 027760(Wx) 027767(Rx) 02776F(Wx) 027785(Rx) 0277CF(Rx) 02784E(Rx) 027863(Rx) 02788B(Rx) 027891(Wx) 0279E3(Wx) 027AAC(Wx) 027BFD(Rx) 027C0E(Wx) 027F1D(Rx) 027F2C(Wx) 027F59(Wx) 0290A4(Wx) 02C4DB(Rx) 02C4FC(Wx) 02C5E9(Wx) 02C66F(Wx) 02C6D2(Wx) 02C70C(Wx) 02C721(Rx) 02C740(Wx) 02CA40(Wx) 02CA67(Wx) 02CA7A(Wx) 02CB81(Wx) 02CB85(Rx) 02CB98(Wx) 02CC22(Wx) 02CC55(Rx) 02CC98(Rx) 02D02C(Wx) 02D073(Wx) 02D296(Wx) 02D2CE(Wx) 02D373(Wx) 02D3F3(Wx) 02D41F(Rx) 02D424(Wx) 02D65E(Wx) 02D710(Rx) 02D77E(Rx) 02D795(Wx) 02D90D(Wx) 02DB2F(Wx) 02DBE3(Rx) 02DD2A(Wx) 02DEA9(Wx) 02DEBC(Rx) 02DF98(Wx) 02DF9F(Rx) 02E001(Wx) 02E015(Rx) 02E01A(Wx) 02E02E(Rx) 02F5CC(Rx) 03E03F(Wi) 03E858(Wx) 03FF12(Wx) 
; ram_061F                              = $061F ; 005687(Wx) 00580D(Wx) 005A5E(Rx) 005A7C(Wx) 005C0C(Wx) 005C6F(Rx) 005C74(Wx) 005CB4(Rx) 005CBC(Wx) 005D0B(Wx) 0082E1(Rx) 00831E(Wx) 008324(Rx) 00832C(Wx) 00832F(Rx) 00838B(Wy) 0083C6(Wx) 0084D2(Rx) 0086CE(Rx) 008738(Rx) 008901(Rx) 008909(Wx) 008AC7(Rx) 008B05(Rx) 008B0A(Wx) 008B20(Rx) 008B54(Rx) 008B59(Wx) 008DF8(Rx) 008E02(Rx) 008E07(Wx) 008E10(Rx) 008E15(Wx) 009140(Rx) 009152(Rx) 00A728(Wx) 00A774(Wx) 00A8EC(Wx) 00A912(Wx) 00A9B3(Wx) 00AA2B(Wx) 00AA77(Wx) 00AD92(Rx) 00AE00(Rx) 00AE2B(Rx) 00AF49(Rx) 00AF4C(Wx) 00AF6D(Rx) 00AF70(Wx) 00C079(Rx) 00C08F(Rx) 00C095(Wx) 00C0E7(Rx) 00C111(Rx) 00C19D(Wx) 00C221(Wx) 00C224(Rx) 00C233(Rx) 00C34B(Rx) 00C351(Wx) 00C391(Ry) 00C3F7(Rx) 00C5D1(Wx) 00C64C(Rx) 00C662(Wx) 00C68B(Wx) 00C69C(Rx) 00C6B8(Wx) 00C773(Rx) 00C77B(Wx) 00C792(Rx) 00C798(Wx) 00C79B(Rx) 00C7EB(Wx) 00C80C(Wx) 00C82C(Rx) 00C844(Rx) 00C866(Wx) 00CB68(Rx) 00CBCD(Rx) 00CBE2(Wx) 00CBE5(Rx) 00CBEA(Wx) 00D655(Rx) 00D65A(Wx) 00D92C(Wx) 01379B(Rx) 0139B3(Rx) 0139B8(Wx) 017C2A(Rx) 024760(Wx) 025C94(Rx) 025CBA(Wx) 025CBD(Rx) 025CC2(Wx) 0261B0(Rx) 026379(Wy) 02653A(Wx) 0266F2(Wx) 0269C8(Rx) 0269FA(Rx) 026A03(Wx) 026A6F(Wx) 026A8D(Wx) 026A90(Wy) 026D93(Wx) 0271B8(Rx) 0271F6(Wx) 0271FF(Wx) 027577(Wx) 0279CB(Wy) 027BB8(Wx) 027BFD(Rx) 027C0E(Wx) 027ED4(Wx) 02C4DB(Rx) 02C4FC(Wx) 02C66F(Wx) 02C6D2(Wx) 02C70C(Wx) 02C721(Rx) 02C740(Wx) 02CA40(Wx) 02CA67(Wx) 02CA7A(Wx) 02CB81(Wx) 02CB85(Rx) 02CB98(Wx) 02CC22(Wx) 02CC55(Rx) 02CC98(Rx) 02D02C(Wx) 02D073(Wx) 02D296(Wx) 02D2CE(Wx) 02D373(Wx) 02D3F3(Wx) 02D41F(Rx) 02D424(Wx) 02D65E(Wx) 02D710(Rx) 02D77E(Rx) 02D795(Wx) 02D90D(Wx) 02DB2F(Wx) 02DBE3(Rx) 02DD2A(Wx) 02DEA9(Wx) 02DEBC(Rx) 02DF98(Wx) 02DF9F(Rx) 02E001(Wx) 02E015(Rx) 02E01A(Wx) 02E02E(Rx) 02F5CC(Rx) 02F73F(Rx) 03AFFA(Rx) 03B53D(Rx) 03B704(Rx) 03BA4B(Wx) 03BAAD(Wx) 03E03F(Wi) 03E858(Wx) 03FF12(Wx) 
; ram_0620                              = $0620 ; 0055D4(Rx) 0055F3(Wx) 005622(Wx) 00564E(Wx) 00565F(Wx) 00566B(Wx) 005671(Wx) 005687(Wx) 005718(Wy) 00578B(Rx) 0057B7(Wx) 00580D(Wx) 005A5E(Rx) 005A7C(Wx) 005C0C(Wx) 005C6F(Rx) 005C74(Wx) 008324(Rx) 00838B(Wy) 0084D2(Rx) 0086CE(Rx) 008738(Rx) 008901(Rx) 008909(Wx) 008AC7(Rx) 008B05(Rx) 008B0A(Wx) 008B20(Rx) 008B54(Rx) 008B59(Wx) 008DF8(Rx) 008E02(Rx) 008E07(Wx) 008E10(Rx) 008E15(Wx) 009140(Rx) 009152(Rx) 00A774(Wx) 00A8EC(Wx) 00A912(Wx) 00A9B3(Wx) 00AA2B(Wx) 00AA77(Wx) 00AD92(Rx) 00AE00(Rx) 00AE2B(Rx) 00AF49(Rx) 00AF4C(Wx) 00AF6D(Rx) 00AF70(Wx) 00C120(Wy) 00C236(Wy) 00C362(Rx) 00C376(Rx) 00C45E(Wx) 00C468(Wx) 00C5BE(Wy) 00D655(Rx) 00D65A(Wx) 00D92C(Wx) 01379B(Rx) 0139B3(Rx) 0139B8(Wx) 024760(Wx) 025C94(Rx) 025CBA(Wx) 025CBD(Rx) 025CC2(Wx) 0261B0(Rx) 026379(Wy) 026521(Wy) 0266AA(Wy) 0269C8(Rx) 0269FA(Rx) 026A03(Wx) 026A6F(Wx) 026A8D(Wx) 026A90(Wy) 026D93(Wx) 0271B8(Rx) 0271F6(Wx) 0271FF(Wx) 0276EB(Wy) 0278F0(Rx) 027901(Rx) 0279CB(Wy) 027BB8(Wx) 027BFD(Rx) 027C0E(Wx) 02C4DB(Rx) 02C4FC(Wx) 02C66F(Wx) 02C6D2(Wx) 02C70C(Wx) 02C721(Rx) 02C740(Wx) 02CA40(Wx) 02CA67(Wx) 02CA7A(Wx) 02CB81(Wx) 02CB85(Rx) 02CB98(Wx) 02CC22(Wx) 02CC55(Rx) 02CC98(Rx) 02D02C(Wx) 02D073(Wx) 02D296(Wx) 02D2CE(Wx) 02D373(Wx) 02D3F3(Wx) 02D41F(Rx) 02D424(Wx) 02D65E(Wx) 02D710(Rx) 02D77E(Rx) 02D795(Wx) 02DB2F(Wx) 02DBE3(Rx) 02DD2A(Wx) 02DEA9(Wx) 02DEBC(Rx) 02DF98(Wx) 02DF9F(Rx) 02E001(Wx) 02E015(Rx) 02E01A(Wx) 02E02E(Rx) 02F5CC(Rx) 033065(Wx) 033108(Wx) 03313E(Rx) 033161(Rx) 033181(Wx) 033184(Rx) 033189(Wx) 03318D(Rx) 0331AD(Wx) 0331B0(Rx) 0331B5(Wx) 03B53D(Rx) 03BA4B(Wx) 03E03F(Wi) 03E858(Wx) 03FF12(Wx) 
; ram_0621                              = $0621 ; 004270(Wx) 0055D4(Rx) 0055F3(Wx) 005622(Wx) 00564E(Wx) 00565F(Wx) 00566B(Wx) 005671(Wx) 005687(Wx) 0056AA(Rx) 0056DA(Wx) 005703(Wx) 00575A(Wx) 00580D(Wx) 0058D2(Rx) 0058DA(Wx) 005901(Wx) 00591C(Wx) 005937(Wx) 00597E(Wx) 00599C(Wx) 0059BE(Wx) 005A5E(Rx) 005A7C(Wx) 005C0C(Wx) 005C6F(Rx) 005C74(Wx) 008324(Rx) 00838B(Wy) 0084D2(Rx) 008901(Rx) 008909(Wx) 008AC7(Rx) 008B05(Rx) 008B0A(Wx) 008B20(Rx) 008B54(Rx) 008B59(Wx) 008DF8(Rx) 008E02(Rx) 008E07(Wx) 008E10(Rx) 008E15(Wx) 009152(Rx) 00A774(Wx) 00A912(Wx) 00A9B3(Wx) 00AA2B(Wx) 00AD92(Rx) 00AE00(Rx) 00AE2B(Rx) 00AF49(Rx) 00AF4C(Wx) 00AF6D(Rx) 00AF70(Wx) 00C120(Wy) 00C236(Wy) 00C362(Rx) 00C376(Rx) 00C45E(Wx) 00C468(Wx) 00C5BE(Wy) 00D56F(Rx) 00D597(Wx) 00D59A(Rx) 00D5BF(Wx) 00D5CA(Wx) 00D6CC(Rx) 00D706(Wx) 00D715(Wx) 024760(Wx) 025C94(Rx) 025CBA(Wx) 025CBD(Rx) 025CC2(Wx) 0266AA(Wy) 0269C8(Rx) 0269FA(Rx) 026A03(Wx) 026A6F(Wx) 026A8D(Wx) 026A90(Wy) 026D93(Wx) 0271B8(Rx) 0271F6(Wx) 0271FF(Wx) 0276EB(Wy) 0278F0(Rx) 027901(Rx) 0279CB(Wy) 027BB8(Wx) 027BFD(Rx) 027C0E(Wx) 02C4DB(Rx) 02C4FC(Wx) 02C66F(Wx) 02C6B4(Wx) 02C6CE(Wx) 02C6D2(Wx) 02C70C(Wx) 02C740(Wx) 02CA40(Wx) 02CA67(Wx) 02CA7A(Wx) 02D02C(Wx) 02D073(Wx) 02D296(Wx) 02D2CE(Wx) 02D373(Wx) 02D65E(Wx) 02D710(Rx) 02D77E(Rx) 02D795(Wx) 02DB2F(Wx) 02DBE3(Rx) 02DD2A(Wx) 02DEA9(Wx) 02DEBC(Rx) 02DF98(Wx) 02DF9F(Rx) 02E001(Wx) 02E015(Rx) 02E01A(Wx) 02E02E(Rx) 033065(Wx) 033108(Wx) 03313E(Rx) 033161(Rx) 033181(Wx) 033184(Rx) 033189(Wx) 03318D(Rx) 0331AD(Wx) 0331B0(Rx) 0331B5(Wx) 03B53D(Rx) 03BA4B(Wx) 03E03F(Wi) 03E858(Wx) 03FF12(Wx) 
; ram_0622                              = $0622 ; 0055D4(Rx) 0055F3(Wx) 005622(Wx) 00564E(Wx) 00565F(Wx) 00566B(Wx) 005671(Wx) 005687(Wx) 005718(Wy) 00578B(Rx) 0057B7(Wx) 008324(Rx) 00838B(Wy) 0084D2(Rx) 008901(Rx) 008909(Wx) 008A7D(Wx) 008AC7(Rx) 008B05(Rx) 008B0A(Wx) 008B20(Rx) 008B54(Rx) 008B59(Wx) 008DF8(Rx) 008E02(Rx) 008E07(Wx) 008E10(Rx) 008E15(Wx) 009152(Rx) 00A774(Wx) 00A912(Wx) 00A9B3(Wx) 00AA2B(Wx) 00AE00(Rx) 00AE2B(Rx) 00AF6D(Rx) 00AF70(Wx) 00C120(Wy) 00C236(Wy) 00C362(Rx) 00C376(Rx) 00C45E(Wx) 00C468(Wx) 00C5BE(Wy) 00D92C(Wx) 017CC3(Wy) 024760(Wx) 025C94(Rx) 0266AA(Wy) 0269C8(Rx) 0269FA(Rx) 026A03(Wx) 026A6F(Wx) 026A8D(Wx) 026A90(Wy) 026D93(Wx) 0271B8(Rx) 0271F6(Wx) 0271FF(Wx) 02773F(Wy) 0279CB(Wy) 027BB8(Wx) 027BFD(Rx) 027C0E(Wx) 02C66F(Wx) 02C6B4(Wx) 02C6CE(Wx) 02C6D2(Wx) 02C740(Wx) 02CA40(Wx) 02CA67(Wx) 02CA7A(Wx) 02D02C(Wx) 02D073(Wx) 02D65E(Wx) 02D710(Rx) 02D77E(Rx) 02D795(Wx) 02DB2F(Wx) 02DBE3(Rx) 02DD2A(Wx) 02DEA9(Wx) 02DEBC(Rx) 02DF98(Wx) 02DF9F(Rx) 02E001(Wx) 02E015(Rx) 02E01A(Wx) 02E02E(Rx) 0329B7(Rx) 03BDCC(Wx) 03BDDB(Wx) 03E03F(Wi) 03E858(Wx) 03FF12(Wx) 
; ram_0623                              = $0623 ; 005687(Wx) 005718(Wy) 00578B(Rx) 0057B7(Wx) 008324(Rx) 00838B(Wy) 0084D2(Rx) 008901(Rx) 008909(Wx) 008DF8(Rx) 008E02(Rx) 008E07(Wx) 008E10(Rx) 008E15(Wx) 009152(Rx) 00A774(Wx) 00A912(Wx) 00A9B3(Wx) 00C120(Wy) 00C236(Wy) 00C362(Rx) 00C376(Rx) 00C45E(Wx) 00C468(Wx) 00C5BE(Wy) 00D92C(Wx) 017CC3(Wy) 017E28(Rx) 017E6D(Rx) 017E81(Rx) 024760(Wx) 025C94(Rx) 025CBA(Wx) 025CBD(Rx) 025CC2(Wx) 0266AA(Wy) 0269C8(Rx) 0269FA(Rx) 026A90(Wy) 026D93(Wx) 0271B8(Rx) 0271F6(Wx) 0271FF(Wx) 0279CB(Wy) 027BB8(Wx) 027BFD(Rx) 027C0E(Wx) 02C66F(Wx) 02C6B4(Wx) 02C6CE(Wx) 02C6D2(Wx) 02C70C(Wx) 02C740(Wx) 02D65E(Wx) 02D77E(Rx) 02DB2F(Wx) 02DBE3(Rx) 02DD2A(Wx) 02DEA9(Wx) 02DEBC(Rx) 02DF98(Wx) 02DF9F(Rx) 02E001(Wx) 02E015(Rx) 02E01A(Wx) 02E02E(Rx) 03E03F(Wi) 03E858(Wx) 03FF12(Wx) 
; ram_0624                              = $0624 ; 005687(Wx) 005718(Wy) 00578B(Rx) 0057B7(Wx) 008324(Rx) 00838B(Wy) 008446(Wx) 00844D(Ry) 0084D2(Rx) 008901(Rx) 008909(Wx) 008DF8(Rx) 008E02(Rx) 008E07(Wx) 008E10(Rx) 008E15(Wx) 009152(Rx) 00A774(Wx) 00A912(Wx) 00A9B3(Wx) 00C120(Wy) 00C236(Wy) 00C362(Rx) 00C376(Rx) 00C45E(Wx) 00C468(Wx) 00C5BE(Wy) 017CC3(Wy) 017DF3(Wx) 017E28(Rx) 017E6D(Rx) 017E81(Rx) 024760(Wx) 025C94(Rx) 025CBA(Wx) 025CBD(Rx) 025CC2(Wx) 0266AA(Wy) 0269C8(Rx) 0269FA(Rx) 026A90(Wy) 026D93(Wx) 0271B8(Rx) 0271F6(Wx) 0271FF(Wx) 02C70C(Wx) 02C740(Wx) 02CA40(Wx) 02CA67(Wx) 02CA7A(Wx) 02DB2F(Wx) 02DBE3(Rx) 02DD2A(Wx) 02E001(Wx) 02E015(Rx) 02E01A(Wx) 02E02E(Rx) 03E03F(Wi) 03E858(Wx) 03FF12(Wx) 
; ram_0625                              = $0625 ; 005687(Wx) 005718(Wy) 00578B(Rx) 0057B7(Wx) 008324(Rx) 00838B(Wy) 0084D2(Rx) 008901(Rx) 008909(Wx) 008DF8(Rx) 008E02(Rx) 008E07(Wx) 008E10(Rx) 008E15(Wx) 009152(Rx) 00A774(Wx) 00A912(Wx) 00A9B3(Wx) 00C45E(Wx) 00C468(Wx) 00C5BE(Wy) 017CC3(Wy) 017DF3(Wx) 017E28(Rx) 017E6D(Rx) 017E81(Rx) 024760(Wx) 025C94(Rx) 025CBA(Wx) 025CBD(Rx) 025CC2(Wx) 026521(Wy) 0266AA(Wy) 0269C8(Rx) 0269FA(Rx) 026A90(Wy) 026D93(Wx) 0271B8(Rx) 0271F6(Wx) 0271FF(Wx) 02C70C(Wx) 02C740(Wx) 02D65E(Wx) 02D710(Rx) 02D77E(Rx) 02D795(Wx) 02DA5E(Wx) 02DA8D(Rx) 02DAA8(Rx) 02DB0C(Wx) 02DB2F(Wx) 02DBE3(Rx) 02DD40(Wx) 02E001(Wx) 02E015(Rx) 02E01A(Wx) 02E02E(Rx) 03E03F(Wi) 03E858(Wx) 03FF12(Wx) 
; ram_0626                              = $0626 ; 005687(Wx) 005718(Wy) 00578B(Rx) 0057B7(Wx) 008324(Rx) 00838B(Wy) 0084D2(Rx) 008901(Rx) 008909(Wx) 008DF8(Rx) 008E02(Rx) 008E07(Wx) 008E10(Rx) 008E15(Wx) 009152(Rx) 00A774(Wx) 00A912(Wx) 00A9B3(Wx) 017CC3(Wy) 017DF3(Wx) 017E28(Rx) 017E6D(Rx) 017E81(Rx) 024760(Wx) 026521(Wy) 0266AA(Wy) 026D93(Wx) 0271B8(Rx) 0271F6(Wx) 0271FF(Wx) 02C740(Wx) 02D5E0(Wx) 02D633(Wx) 03E03F(Wi) 03E858(Wx) 03FF12(Wx) 
; ram_0627                              = $0627 ; 005687(Wx) 005718(Wy) 00578B(Rx) 0057B7(Wx) 008324(Rx) 00838B(Wy) 0084D2(Rx) 008DF8(Rx) 008E02(Rx) 008E07(Wx) 008E10(Rx) 008E15(Wx) 009140(Rx) 009152(Rx) 00A774(Wx) 00A8EC(Wx) 00A912(Wx) 00A9B3(Wx) 0139B3(Rx) 0139B8(Wx) 017CC3(Wy) 017DF3(Wx) 017E28(Rx) 017E6D(Rx) 017E81(Rx) 024760(Wx) 0266AA(Wy) 026D93(Wx) 0271B8(Rx) 0271F6(Wx) 0271FF(Wx) 02C70C(Wx) 02C721(Rx) 02C740(Wx) 02D296(Wx) 02D373(Wx) 02D5E0(Wx) 02D633(Wx) 02D65E(Wx) 02D710(Rx) 02D77E(Rx) 02D795(Wx) 02E001(Wx) 02E015(Rx) 02E01A(Wx) 02E02E(Rx) 03E03F(Wi) 03E858(Wx) 03FF12(Wx) 
; ram_0628                              = $0628 ; 005687(Wx) 005718(Wy) 00578B(Rx) 0057B7(Wx) 008324(Rx) 00838B(Wy) 0084D2(Rx) 008901(Rx) 008909(Wx) 008DF8(Rx) 008E02(Rx) 008E07(Wx) 008E10(Rx) 008E15(Wx) 009152(Rx) 00A774(Wx) 00A912(Wx) 00A9B3(Wx) 0139B3(Rx) 0139B8(Wx) 017CC3(Wy) 017DF3(Wx) 017E28(Rx) 017E6D(Rx) 017E81(Rx) 024760(Wx) 0266AA(Wy) 0271B8(Rx) 0271F6(Wx) 0271FF(Wx) 02C70C(Wx) 02C721(Rx) 02C740(Wx) 02D296(Wx) 02D373(Wx) 02D5E0(Wx) 02D633(Wx) 02E001(Wx) 02E015(Rx) 02E01A(Wx) 02E02E(Rx) 03E03F(Wi) 03E858(Wx) 03FF12(Wx) 
; ram_0629                              = $0629 ; 005687(Wx) 008324(Rx) 00838B(Wy) 0084D2(Rx) 008DF8(Rx) 008E02(Rx) 008E07(Wx) 008E10(Rx) 008E15(Wx) 009152(Rx) 00A774(Wx) 00A912(Wx) 00A9B3(Wx) 0139B3(Rx) 0139B8(Wx) 017CC3(Wy) 017DF3(Wx) 017E28(Rx) 017E6D(Rx) 017E81(Rx) 024760(Wx) 0266AA(Wy) 0271B8(Rx) 0271F6(Wx) 0271FF(Wx) 02C70C(Wx) 02C721(Rx) 02C740(Wx) 02D5E0(Wx) 02D633(Wx) 03E03F(Wi) 03E858(Wx) 03FF12(Wx) 
; ram_062A                              = $062A ; 009152(Rx) 00A912(Wx) 02E001(Wx) 02E015(Rx) 02E01A(Wx) 02E02E(Rx) 03E03F(Wi) 03E858(Wx) 03FF12(Wx) 
; ram_062B                              = $062B ; 009152(Rx) 00A912(Wx) 02E001(Wx) 02E015(Rx) 02E01A(Wx) 02E02E(Rx) 03E03F(Wi) 03E858(Wx) 03FF12(Wx) 
; ram_062C                              = $062C ; 009152(Rx) 00A912(Wx) 02E001(Wx) 02E015(Rx) 02E01A(Wx) 02E02E(Rx) 03E03F(Wi) 03E858(Wx) 03FF12(Wx) 
; ram_062D                              = $062D ; 009152(Rx) 00A912(Wx) 02E001(Wx) 02E015(Rx) 02E01A(Wx) 02E02E(Rx) 03E03F(Wi) 03E858(Wx) 03FF12(Wx) 
; ram_062E                              = $062E ; 02E001(Wx) 02E015(Rx) 02E01A(Wx) 02E02E(Rx) 03E03F(Wi) 03E858(Wx) 03FF12(Wx) 
; ram_062F                              = $062F ; 02E001(Wx) 02E015(Rx) 02E01A(Wx) 02E02E(Rx) 03E03F(Wi) 03E858(Wx) 03FF12(Wx) 
; ram_0630                              = $0630 ; 0014FB(W)  0016DB(W)  006272(R)  006277(R)  00627C(W)  00629F(R)  0062A4(R)  0062A9(W)  006321(R)  00B18D(R)  013251(W)  02F289(R)  02F2A0(R)  03BDCC(Wx) 03BDDB(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_0631                              = $0631 ; 00B294(Wx) 02F364(Wy) 03AFFA(Rx) 03B09F(Wx) 03B1B6(Rx) 03B53D(Rx) 03B704(Rx) 03B9DE(Rx) 03BA4B(Wx) 03BAAD(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_0632                              = $0632 ; 02F364(Wy) 03AFFA(Rx) 03B09F(Wx) 03B1B6(Rx) 03B53D(Rx) 03B9DE(Rx) 03BA4B(Wx) 03BAAD(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_0633                              = $0633 ; 00B294(Wx) 02F364(Wy) 03AFFA(Rx) 03B09F(Wx) 03B1B6(Rx) 03B53D(Rx) 03B9DE(Rx) 03BA4B(Wx) 03BAAD(Wx) 03E03F(Wi) 03E858(Wx) 



; 
; this range doesn't have an address for a player, but refers
; via the last address of the previous range as if it has
; bzk I suggest to put an unused player address at the beginning of this range
ram_obj_0634                            = $0634 - $01 ; a separate link to look less ugly in the code
; ram_0634                              = $0634 ; 00568A(Wx) 00844A(Rx) 0084B7(Rx) 008A56(Rx) 008A63(Wx) 008A88(Wx) 008DBE(Rx) 008DDD(Rx) 008E35(Rx) 008EE6(Rx) 009116(Rx) 009AE9(Wx) 009AF5(Rx) 00A779(Wx) 00A8F1(Wx) 00A9BD(Wx) 00AE1D(Rx) 00AEB4(Wx) 00C124(Wy) 00C15C(Rx) 00C1A0(Wx) 00C1A3(Rx) 00C1A8(Wx) 00C1FE(Rx) 00C37C(Rx) 00CB52(Rx) 00CB7C(Wx) 00CB85(Wx) 00D062(Wx) 00D218(Wx) 00D375(Wx) 00D3E8(Wx) 00D43A(Rx) 00D471(Wx) 024763(Wx) 02541D(Rx) 025422(Rx) 025B1A(Rx) 025B24(Rx) 025B29(Wx) 025B4C(Wx) 025B4F(Rx) 025B92(Wx) 025B95(Rx) 025BCE(Rx) 025BD3(Wx) 025BF8(Rx) 025BFF(Rx) 025C04(Wx) 026191(Wx) 0262FC(Wx) 02636C(Rx) 02638B(Wx) 02652A(Wy) 026550(Rx) 026568(Rx) 0266AD(Wy) 026791(Rx) 0267A3(Wx) 0267AF(Wx) 026B28(Wx) 02757A(Wx) 02777F(Rx) 0277E4(Rx) 027872(Wx) 027875(Rx) 02787A(Wx) 0279DE(Wx) 027AA6(Wx) 027BED(Rx) 027C00(Rx) 027C05(Wx) 027C08(Rx) 028B1F(Wx) 028CA6(Wx) 02C550(Wx) 02C73D(Wx) 02C74A(Wx) 02C767(Wx) 02CAEC(Rx) 02D04C(Rx) 02D053(Rx) 02D067(Rx) 02D06E(Wx) 02D0B1(Rx) 02D0B6(Wx) 02D0D2(Rx) 02D0D9(Rx) 02D106(Rx) 02D10B(Wx) 02D125(Rx) 02D12C(Wx) 02D407(Wx) 02D436(Rx) 02D43B(Wx) 02D500(Rx) 02D509(Wx) 02D567(Wx) 02D656(Wx) 02D6B3(Wx) 02D6B6(Rx) 02DB4E(Rx) 02DB5A(Wx) 02DB60(Rx) 02DB6C(Wx) 02DB95(Rx) 02DBA9(Rx) 02DBB0(Wx) 02DBB3(Rx) 02DBD1(Rx) 02DBD8(Wx) 02DE9D(Rx) 02DEAF(Wx) 02DEB6(Rx) 02E51C(Wx) 02E523(Wx) 0324C2(Rx) 032592(Rx) 03268E(Rx) 032743(Wx) 0327E0(Rx) 0327EB(Rx) 0327FC(Wx) 03280C(Rx) 032811(Rx) 0328F0(Rx) 03292C(Rx) 032968(Rx) 032986(Rx) 032A3F(Rx) 032B79(Rx) 03E03F(Wi) 03E858(Wx) 03FF15(Wx) 
; ram_0635                              = $0635 ; 00568A(Wx) 00844A(Rx) 00845C(Rx) 0084B7(Rx) 008A88(Wx) 008DDD(Rx) 008E35(Rx) 008EE6(Rx) 009116(Rx) 009189(Rx) 00918F(Wx) 0091AE(Rx) 0091B4(Wx) 009AE9(Wx) 009AF5(Rx) 00A779(Wx) 00A8F1(Wx) 00A90D(Wx) 00A9BD(Wx) 00AE1D(Rx) 00AEB4(Wx) 00C15C(Rx) 00C1A0(Wx) 00C1A3(Rx) 00C1A8(Wx) 00C1FE(Rx) 00CB52(Rx) 00CB7C(Wx) 00CB85(Wx) 024763(Wx) 025B1A(Rx) 025B24(Rx) 025B29(Wx) 025B92(Wx) 025B95(Rx) 025BCE(Rx) 025BD3(Wx) 025BF8(Rx) 025BFF(Rx) 025C04(Wx) 025C6E(Rx) 025C89(Wx) 025CC7(Wx) 0266F5(Wx) 026791(Rx) 0267A3(Wx) 0267AF(Wx) 02683F(Rx) 026846(Wx) 026857(Wx) 02685B(Rx) 02687B(Wx) 026B28(Wx) 027153(Wx) 0271C9(Rx) 0271E4(Wx) 02757A(Wx) 0279C6(Wy) 027B62(Wx) 027B75(Wx) 027B7C(Wx) 027B97(Wx) 027BB2(Wx) 027BED(Rx) 027C00(Rx) 027C05(Wx) 027C08(Rx) 027ECF(Wx) 028B1F(Wx) 028CA6(Wx) 02C550(Wx) 02C73D(Wx) 02C74A(Wx) 02C767(Wx) 02CAEC(Rx) 02D04C(Rx) 02D053(Rx) 02D067(Rx) 02D06E(Wx) 02D0B1(Rx) 02D0B6(Wx) 02D0D2(Rx) 02D0D9(Rx) 02D106(Rx) 02D10B(Wx) 02D125(Rx) 02D12C(Wx) 02D407(Wx) 02D436(Rx) 02D43B(Wx) 02D500(Rx) 02D509(Wx) 02D567(Wx) 02D656(Wx) 02D6B3(Wx) 02D6B6(Rx) 02DB4E(Rx) 02DB5A(Wx) 02DB60(Rx) 02DB6C(Wx) 02DB95(Rx) 02DBA9(Rx) 02DBB0(Wx) 02DBB3(Rx) 02DBD1(Rx) 02DBD8(Wx) 02DE9D(Rx) 02DEAF(Wx) 02DEB6(Rx) 02E51C(Wx) 02E523(Wx) 032482(Rx) 0324FC(Wx) 032560(Wx) 03E03F(Wi) 03E858(Wx) 03FF15(Wx) 
; ram_0636                              = $0636 ; 0055E7(Rx) 005674(Wx) 005677(Rx) 00568A(Wx) 00844A(Rx) 00845C(Rx) 0084B7(Rx) 008A88(Wx) 008DDD(Rx) 008E35(Rx) 008EE6(Rx) 009116(Rx) 009189(Rx) 00918F(Wx) 0091AE(Rx) 0091B4(Wx) 009AE9(Wx) 009AF5(Rx) 00A779(Wx) 00A8F1(Wx) 00A90D(Wx) 00A9BD(Wx) 00AE1D(Rx) 00AEB4(Wx) 00C124(Wy) 00C23A(Wy) 00C2BB(Wy) 00C37C(Rx) 00C4A0(Rx) 00C4AB(Rx) 024763(Wx) 025B1A(Rx) 025B24(Rx) 025B29(Wx) 025B92(Wx) 025B95(Rx) 025BCE(Rx) 025BD3(Wx) 025BF8(Rx) 025BFF(Rx) 025C04(Wx) 025C6E(Rx) 025C89(Wx) 025CC7(Wx) 025D4A(Wx) 025D50(Wx) 02652A(Wy) 026599(Rx) 0265C1(Rx) 0266AD(Wy) 02683F(Rx) 026846(Wx) 026857(Wx) 02685B(Rx) 02687B(Wx) 026B28(Wx) 027153(Wx) 0271C9(Rx) 0271E4(Wx) 0279C6(Wy) 027B62(Wx) 027B75(Wx) 027B7C(Wx) 027B97(Wx) 027BB2(Wx) 027BED(Rx) 027C00(Rx) 027C05(Wx) 027C08(Rx) 027E66(Wy) 028B1F(Wx) 028CA6(Wx) 02C550(Wx) 02C73D(Wx) 02C74A(Wx) 02C767(Wx) 02CAEC(Rx) 02D04C(Rx) 02D053(Rx) 02D0B1(Rx) 02D0B6(Wx) 02D0D2(Rx) 02D0D9(Rx) 02D106(Rx) 02D10B(Wx) 02D125(Rx) 02D12C(Wx) 02D407(Wx) 02D436(Rx) 02D43B(Wx) 02D500(Rx) 02D509(Wx) 02D567(Wx) 02D656(Wx) 02D6B3(Wx) 02D6B6(Rx) 02DB4E(Rx) 02DB5A(Wx) 02DB60(Rx) 02DB6C(Wx) 02DB95(Rx) 02DBA9(Rx) 02DBB0(Wx) 02DBB3(Rx) 02DBD1(Rx) 02DBD8(Wx) 02DE9D(Rx) 02DEAF(Wx) 02DEB6(Rx) 02E51C(Wx) 02E523(Wx) 032482(Rx) 0324FC(Wx) 032FFF(Rx) 0330B3(Rx) 03310B(Wx) 03310E(Rx) 033113(Wx) 033124(Rx) 033221(Rx) 03E03F(Wi) 03E858(Wx) 03FF15(Wx) 
; ram_0637                              = $0637 ; 0055E7(Rx) 005674(Wx) 005677(Rx) 00568A(Wx) 0056C2(Wx) 0056EC(Rx) 0056F7(Wx) 00844A(Rx) 00845C(Rx) 0084B7(Rx) 008A88(Wx) 008DDD(Rx) 008E35(Rx) 008EE6(Rx) 009189(Rx) 00918F(Wx) 0091AE(Rx) 0091B4(Wx) 009AE9(Wx) 009AF5(Rx) 00A779(Wx) 00A90D(Wx) 00A9BD(Wx) 00AE1D(Rx) 00AEB4(Wx) 00C124(Wy) 00C23A(Wy) 00C2BB(Wy) 00C37C(Rx) 00C4A0(Rx) 00C4AB(Rx) 00D555(Rx) 00D55C(Wx) 00D562(Wx) 024763(Wx) 025B1A(Rx) 025B24(Rx) 025B29(Wx) 025B92(Wx) 025B95(Rx) 025BCE(Rx) 025BD3(Wx) 025BF8(Rx) 025BFF(Rx) 025C04(Wx) 025C6E(Rx) 025C89(Wx) 025CC7(Wx) 025D4A(Wx) 025D50(Wx) 0266AD(Wy) 02683F(Rx) 026846(Wx) 026857(Wx) 02685B(Rx) 02687B(Wx) 026B28(Wx) 027153(Wx) 0271C9(Rx) 0271E4(Wx) 0279C6(Wy) 027B62(Wx) 027B75(Wx) 027B7C(Wx) 027B97(Wx) 027BB2(Wx) 027BED(Rx) 027C00(Rx) 027C05(Wx) 027C08(Rx) 027E66(Wy) 028B1F(Wx) 028CA6(Wx) 02C65F(Wx) 02C6B9(Wx) 02C6BC(Rx) 02C73D(Wx) 02C74A(Wx) 02C767(Wx) 02CAEC(Rx) 02D04C(Rx) 02D053(Rx) 02D067(Rx) 02D06E(Wx) 02D0B1(Rx) 02D0B6(Wx) 02D0D2(Rx) 02D0D9(Rx) 02D106(Rx) 02D10B(Wx) 02D125(Rx) 02D12C(Wx) 02D500(Rx) 02D656(Wx) 02D6B3(Wx) 02D6B6(Rx) 02DB4E(Rx) 02DB5A(Wx) 02DB60(Rx) 02DB6C(Wx) 02DB95(Rx) 02DBA9(Rx) 02DBB0(Wx) 02DBB3(Rx) 02DBD1(Rx) 02DBD8(Wx) 02DE9D(Rx) 02DEAF(Wx) 02DEB6(Rx) 02E51C(Wx) 02E523(Wx) 032482(Rx) 0324FC(Wx) 032FFF(Rx) 0330B3(Rx) 03310B(Wx) 03310E(Rx) 033113(Wx) 033124(Rx) 033221(Rx) 03E03F(Wi) 03E858(Wx) 03FF15(Wx) 
; ram_0638                              = $0638 ; 0055E7(Rx) 005674(Wx) 005677(Rx) 00568A(Wx) 00844A(Rx) 00845C(Rx) 0084B7(Rx) 008A56(Rx) 008A63(Wx) 008A88(Wx) 008DDD(Rx) 008E35(Rx) 008EE6(Rx) 009189(Rx) 00918F(Wx) 0091AE(Rx) 0091B4(Wx) 009AE9(Wx) 009AF5(Rx) 00A779(Wx) 00A90D(Wx) 00A9BD(Wx) 00AE1D(Rx) 00AEB4(Wx) 00C124(Wy) 00C23A(Wy) 00C2BB(Wy) 00C37C(Rx) 00C4A0(Rx) 00C4AB(Rx) 024763(Wx) 025B1A(Rx) 025B24(Rx) 025B29(Wx) 025B92(Wx) 025B95(Rx) 025BCE(Rx) 025BD3(Wx) 025BF8(Rx) 025BFF(Rx) 025C04(Wx) 025C6E(Rx) 025C89(Wx) 025D4A(Wx) 025D50(Wx) 0266AD(Wy) 026B28(Wx) 027153(Wx) 0271C9(Rx) 0271E4(Wx) 0279C6(Wy) 027B62(Wx) 027B75(Wx) 027B7C(Wx) 027B97(Wx) 027BB2(Wx) 027BED(Rx) 027C00(Rx) 027C05(Wx) 027C08(Rx) 028B1F(Wx) 028CA6(Wx) 02C65F(Wx) 02C6B9(Wx) 02C6BC(Rx) 02C73D(Wx) 02C74A(Wx) 02C767(Wx) 02CAEC(Rx) 02D04C(Rx) 02D053(Rx) 02D067(Rx) 02D06E(Wx) 02D0B1(Rx) 02D0B6(Wx) 02D0D2(Rx) 02D0D9(Rx) 02D106(Rx) 02D10B(Wx) 02D125(Rx) 02D12C(Wx) 02D500(Rx) 02D656(Wx) 02D6B3(Wx) 02D6B6(Rx) 02DB4E(Rx) 02DB5A(Wx) 02DB60(Rx) 02DB6C(Wx) 02DB95(Rx) 02DBA9(Rx) 02DBB0(Wx) 02DBB3(Rx) 02DBD1(Rx) 02DBD8(Wx) 02DE9D(Rx) 02DEAF(Wx) 02DEB6(Rx) 02E51C(Wx) 02E523(Wx) 032997(Rx) 0329AF(Wx) 0329BC(Rx) 0329C9(Rx) 03E03F(Wi) 03E858(Wx) 03FF15(Wx) 
; ram_0639                              = $0639 ; 00568A(Wx) 00844A(Rx) 00845C(Rx) 0084B7(Rx) 008DBE(Rx) 008DDD(Rx) 008E35(Rx) 008EE6(Rx) 009189(Rx) 00918F(Wx) 0091AE(Rx) 0091B4(Wx) 009AE9(Wx) 009AF5(Rx) 00A779(Wx) 00A90D(Wx) 00A9BD(Wx) 00C124(Wy) 00C23A(Wy) 00C2BB(Wy) 00C37C(Rx) 00C4A0(Rx) 00C4AB(Rx) 024763(Wx) 025B1A(Rx) 025B24(Rx) 025B29(Wx) 025B92(Wx) 025B95(Rx) 025BCE(Rx) 025BD3(Wx) 025BF8(Rx) 025BFF(Rx) 025C04(Wx) 025C6E(Rx) 025C89(Wx) 025CC7(Wx) 0266AD(Wy) 026B28(Wx) 027153(Wx) 0271C9(Rx) 0271E4(Wx) 0279C6(Wy) 027B62(Wx) 027B75(Wx) 027B7C(Wx) 027B97(Wx) 027BB2(Wx) 027BED(Rx) 027C00(Rx) 027C05(Wx) 027C08(Rx) 028B1F(Wx) 02C65F(Wx) 02C6B9(Wx) 02C6BC(Rx) 02C73D(Wx) 02C74A(Wx) 02C767(Wx) 02D656(Wx) 02DB4E(Rx) 02DB5A(Wx) 02DB60(Rx) 02DB6C(Wx) 02DB95(Rx) 02DBA9(Rx) 02DBB0(Wx) 02DBB3(Rx) 02DBD1(Rx) 02DBD8(Wx) 02DE9D(Rx) 02DEAF(Wx) 02DEB6(Rx) 02E51C(Wx) 02E523(Wx) 03E03F(Wi) 03E858(Wx) 03FF15(Wx) 
; ram_063A                              = $063A ; 00568A(Wx) 00844A(Rx) 0084B7(Rx) 008DDD(Rx) 008E35(Rx) 008EE6(Rx) 009189(Rx) 00918F(Wx) 0091AE(Rx) 0091B4(Wx) 009AE9(Wx) 009AF5(Rx) 00A779(Wx) 00A90D(Wx) 00A9BD(Wx) 00C124(Wy) 00C23A(Wy) 00C2BB(Wy) 00C37C(Rx) 00C4A0(Rx) 00C4AB(Rx) 024763(Wx) 025B1A(Rx) 025B24(Rx) 025B29(Wx) 025B92(Wx) 025B95(Rx) 025BCE(Rx) 025BD3(Wx) 025C6E(Rx) 025C89(Wx) 025CC7(Wx) 025D4A(Wx) 025D50(Wx) 0266AD(Wy) 026B28(Wx) 027153(Wx) 0271C9(Rx) 0271E4(Wx) 028CA6(Wx) 02C73D(Wx) 02C74A(Wx) 02C767(Wx) 02CAEC(Rx) 02DB4E(Rx) 02DB5A(Wx) 02DB60(Rx) 02DB6C(Wx) 02DB95(Rx) 02DBA9(Rx) 02DBB0(Wx) 02DBB3(Rx) 02DBD1(Rx) 02DBD8(Wx) 03E03F(Wi) 03E858(Wx) 03FF15(Wx) 
; ram_063B                              = $063B ; 00568A(Wx) 00844A(Rx) 00845C(Rx) 0084B7(Rx) 008DDD(Rx) 008E35(Rx) 008EE6(Rx) 009189(Rx) 00918F(Wx) 0091AE(Rx) 0091B4(Wx) 009AE9(Wx) 009AF5(Rx) 00A779(Wx) 00A90D(Wx) 00A9BD(Wx) 00C2BB(Wy) 00C4A0(Rx) 00C4AB(Rx) 024763(Wx) 025B1A(Rx) 025B24(Rx) 025B29(Wx) 025B92(Wx) 025B95(Rx) 025BCE(Rx) 025BD3(Wx) 025BF8(Rx) 025BFF(Rx) 025C04(Wx) 025C6E(Rx) 025C89(Wx) 025CC7(Wx) 02652A(Wy) 026550(Rx) 026568(Rx) 0266AD(Wy) 026B28(Wx) 027153(Wx) 0271C9(Rx) 0271E4(Wx) 028D6B(Wy) 02C73D(Wx) 02C74A(Wx) 02C767(Wx) 02D656(Wx) 02D6B3(Wx) 02D6B6(Rx) 02DA56(Rx) 02DB4E(Rx) 02DB5A(Wx) 02DB60(Rx) 02DB6C(Wx) 02DB95(Rx) 02DBA9(Rx) 02DBB0(Wx) 02DBB3(Rx) 02DBD1(Rx) 02DBD8(Wx) 03E03F(Wi) 03E858(Wx) 03FF15(Wx) 
; ram_063C                              = $063C ; 00568A(Wx) 00844A(Rx) 00845C(Rx) 0084B7(Rx) 008DDD(Rx) 008E35(Rx) 008EE6(Rx) 009189(Rx) 00918F(Wx) 0091AE(Rx) 0091B4(Wx) 009AE9(Wx) 009AF5(Rx) 00A779(Wx) 00A90D(Wx) 00A9BD(Wx) 024763(Wx) 02652A(Wy) 026599(Rx) 0265C1(Rx) 0266AD(Wy) 027153(Wx) 0271C9(Rx) 0271E4(Wx) 02C73D(Wx) 02C74A(Wx) 02C767(Wx) 03E03F(Wi) 03E858(Wx) 03FF15(Wx) 
; ram_063D                              = $063D ; 00568A(Wx) 00844A(Rx) 00845C(Rx) 0084B7(Rx) 008DDD(Rx) 008E35(Rx) 008EE6(Rx) 009116(Rx) 0091AE(Rx) 0091B4(Wx) 00A779(Wx) 00A8F1(Wx) 00A90D(Wx) 00A9BD(Wx) 024763(Wx) 0266AD(Wy) 027153(Wx) 0271C9(Rx) 0271E4(Wx) 02C73D(Wx) 02C74A(Wx) 02C767(Wx) 02D656(Wx) 02D6B3(Wx) 02D6B6(Rx) 03E03F(Wi) 03E858(Wx) 03FF15(Wx) 
; ram_063E                              = $063E ; 00568A(Wx) 00844A(Rx) 00845C(Rx) 0084B7(Rx) 008DDD(Rx) 008E35(Rx) 008EE6(Rx) 009189(Rx) 00918F(Wx) 0091AE(Rx) 0091B4(Wx) 009AE9(Wx) 009AF5(Rx) 00A779(Wx) 00A90D(Wx) 00A9BD(Wx) 024763(Wx) 0266AD(Wy) 027153(Wx) 0271C9(Rx) 0271E4(Wx) 02C73D(Wx) 02C74A(Wx) 02C767(Wx) 03E03F(Wi) 03E858(Wx) 03FF15(Wx) 
; ram_063F                              = $063F ; 00568A(Wx) 00844A(Rx) 00845C(Rx) 0084B7(Rx) 008DDD(Rx) 008E35(Rx) 008EE6(Rx) 009189(Rx) 00918F(Wx) 0091AE(Rx) 0091B4(Wx) 00A779(Wx) 00A90D(Wx) 00A9BD(Wx) 024763(Wx) 0266AD(Wy) 027153(Wx) 0271C9(Rx) 0271E4(Wx) 02C73D(Wx) 02C74A(Wx) 02C767(Wx) 03E03F(Wi) 03E858(Wx) 03FF15(Wx) 
; ram_0640                              = $0640 ; 009189(Rx) 00918F(Wx) 0091AE(Rx) 0091B4(Wx) 00A90D(Wx) 03E03F(Wi) 03E858(Wx) 03FF15(Wx) 
; ram_0641                              = $0641 ; 009189(Rx) 00918F(Wx) 0091AE(Rx) 0091B4(Wx) 00A90D(Wx) 03E03F(Wi) 03E858(Wx) 03FF15(Wx) 
; ram_0642                              = $0642 ; 009189(Rx) 00918F(Wx) 0091AE(Rx) 0091B4(Wx) 00A90D(Wx) 03E03F(Wi) 03E858(Wx) 03FF15(Wx) 
; ram_0643                              = $0643 ; 009189(Rx) 00918F(Wx) 0091AE(Rx) 0091B4(Wx) 00A90D(Wx) 03E03F(Wi) 03E858(Wx) 03FF15(Wx) 
; ram_0644                              = $0644 ; 03E03F(Wi) 03E858(Wx) 03FF15(Wx) 
; ram_0645                              = $0645 ; 03E03F(Wi) 03E858(Wx) 03FF15(Wx) 



; 
; this range doesn't have an address for a player, but refers
; via the last address of the previous range as if it has
; bzk I suggest to put an unused player address at the beginning of this range
ram_obj_0646                            = $0646 - $01 ; a separate link to look less ugly in the code
; ram_0646                              = $0646 ; 00568D(Wx) 00846F(Rx) 00847F(Rx) 008C4B(Wx) 008D06(Rx) 008DEF(Rx) 008DF5(Wx) 00911F(Rx) 00912D(Wx) 009130(Wx) 009AE0(Wx) 009AEF(Rx) 00A9C2(Wx) 00AC2F(Rx) 00AC63(Ry) 00AC66(Wx) 00AC90(Rx) 00AE23(Rx) 00AEBA(Wx) 00AEC3(Rx) 00AEDA(Rx) 00AEF1(Rx) 00AF08(Rx) 00C05C(Rx) 00C06E(Rx) 00C085(Rx) 00C0AD(Rx) 00C0B8(Rx) 00C0DA(Rx) 00C102(Rx) 00C160(Rx) 00C1AB(Rx) 00C202(Rx) 00C31D(Rx) 00C346(Rx) 00C35D(Rx) 00C386(Rx) 00C3E2(Rx) 00C3E5(Wy) 00C8AB(Wx) 00CAD6(Rx) 00CAE0(Wx) 00CAE3(Wx) 00CE1E(Wx) 00D0DB(Wx) 00D10B(Wx) 00D9E8(Wx) 00D9EB(Wx) 00D9FA(Wx) 00DA09(Wx) 00DA13(Wx) 00DA60(Wx) 00DA6A(Wx) 00DA97(Wx) 00DAA3(Wx) 00DAB1(Wx) 00DAD6(Wx) 00DE04(Wx) 00DE22(Rx) 00DE2D(Wx) 00DE30(Rx) 00DE97(Wx) 00DE9A(Rx) 00DEA3(Wx) 01384E(Rx) 024766(Wx) 025454(Rx) 025797(Rx) 02579A(Wx) 0257C2(Rx) 0257E6(Rx) 0257ED(Rx) 0266B0(Wy) 0267B9(Rx) 0267C2(Wx) 0267C5(Wx) 027689(Wx) 027774(Wx) 0277AE(Rx) 0277C4(Rx) 0277EA(Rx) 027800(Rx) 027808(Wx) 02782D(Rx) 027843(Rx) 027868(Rx) 027985(Rx) 0279E6(Wx) 027A53(Rx) 027A82(Wx) 027A85(Rx) 027A8A(Wx) 027A92(Rx) 027A9A(Wx) 028BEF(Wx) 028EBF(Rx) 0290D5(Wx) 0290D8(Wx) 02C735(Wx) 02C754(Rx) 02D4E4(Rx) 02E490(Wx) 02E4EA(Wx) 02FA86(Wx) 03E03F(Wi) 03E858(Wx) 03FF18(Wx) 
; ram_0647                              = $0647 ; 00568D(Wx) 008C4B(Wx) 008DEF(Rx) 008DF5(Wx) 009130(Wx) 009AE0(Wx) 009AEF(Rx) 00A908(Wx) 00A9C2(Wx) 00AB88(Wx) 00AC2F(Rx) 00AC63(Ry) 00AC66(Wx) 00AC90(Rx) 00AE23(Rx) 00AEBA(Wx) 00AEC3(Rx) 00AEDA(Rx) 00AEF1(Rx) 00AF08(Rx) 00C05C(Rx) 00C06E(Rx) 00C085(Rx) 00C0AD(Rx) 00C0B8(Rx) 00C0DA(Rx) 00C102(Rx) 00C160(Rx) 00C1AB(Rx) 00C202(Rx) 00C31D(Rx) 00C346(Rx) 00C3E2(Rx) 00C8AB(Wx) 00CAC1(Wx) 00CAD6(Rx) 00CAE0(Wx) 00CAE3(Wx) 00DC42(Wx) 00DCF7(Wx) 00DD25(Wx) 00DD38(Wx) 00DD3F(Wx) 00DD48(Wx) 00DD5B(Wx) 00DD5E(Wx) 01384E(Rx) 024766(Wx) 025797(Rx) 02579A(Wx) 0257C2(Rx) 0257E6(Rx) 0257ED(Rx) 025C84(Wx) 025C8C(Rx) 0267B9(Rx) 0267C2(Wx) 0267C5(Wx) 026838(Rx) 02684E(Rx) 026853(Wx) 026865(Wx) 026868(Rx) 026875(Wx) 02715C(Wx) 0271CF(Rx) 0271EA(Wx) 027AD7(Wx) 027B47(Rx) 027B52(Wx) 027B6E(Wx) 027B93(Wx) 027B9E(Wx) 028BEF(Wx) 028EBF(Rx) 0290D5(Wx) 0290D8(Wx) 02924E(Wx) 02C735(Wx) 02C754(Rx) 02D4E4(Rx) 02E490(Wx) 02E4EA(Wx) 032474(Rx) 0324F2(Wx) 032518(Rx) 03255A(Wx) 03E03F(Wi) 03E858(Wx) 03FF18(Wx) 
; ram_0648                              = $0648 ; 005613(Wx) 00561A(Wx) 00561D(Rx) 00568D(Wx) 008C4B(Wx) 008DEF(Rx) 008DF5(Wx) 00911F(Rx) 00912D(Wx) 009130(Wx) 009AE0(Wx) 009AEF(Rx) 00A908(Wx) 00A9C2(Wx) 00AB88(Wx) 00AC2F(Rx) 00AC63(Ry) 00AC66(Wx) 00AC90(Rx) 00AE23(Rx) 00AEBA(Wx) 00AEC3(Rx) 00AEDA(Rx) 00AEF1(Rx) 00AF08(Rx) 00C35D(Rx) 00C386(Rx) 00C3E5(Wy) 00DC42(Wx) 00DCF7(Wx) 00DD25(Wx) 00DD38(Wx) 00DD3F(Wx) 00DD48(Wx) 00DD5B(Wx) 00DD5E(Wx) 01384E(Rx) 024766(Wx) 025797(Rx) 02579A(Wx) 0257C2(Rx) 0257E6(Rx) 0257ED(Rx) 025C84(Wx) 025C8C(Rx) 0266B0(Wy) 026838(Rx) 02684E(Rx) 026853(Wx) 026865(Wx) 026868(Rx) 026875(Wx) 02715C(Wx) 0271CF(Rx) 0271EA(Wx) 027AD7(Wx) 027B47(Rx) 027B52(Wx) 027B6E(Wx) 027B93(Wx) 027B9E(Wx) 027E5D(Wy) 028BEF(Wx) 02924E(Wx) 02C735(Wx) 02C754(Rx) 02E490(Wx) 02E4EA(Wx) 032474(Rx) 0324F2(Wx) 032518(Rx) 032FFC(Wx) 03300A(Wx) 033050(Rx) 033062(Rx) 033086(Rx) 03309D(Rx) 03E03F(Wi) 03E858(Wx) 03FF18(Wx) 
; ram_0649                              = $0649 ; 005613(Wx) 00561A(Wx) 00561D(Rx) 00568D(Wx) 0056C5(Wx) 008C4B(Wx) 008DEF(Rx) 008DF5(Wx) 009AE0(Wx) 009AEF(Rx) 00A908(Wx) 00A9C2(Wx) 00AB88(Wx) 00AC2F(Rx) 00AC63(Ry) 00AC66(Wx) 00AC90(Rx) 00AE23(Rx) 00AEBA(Wx) 00AEC3(Rx) 00AEDA(Rx) 00AEF1(Rx) 00AF08(Rx) 00C35D(Rx) 00C386(Rx) 00C3E5(Wy) 00DC42(Wx) 00DCF7(Wx) 00DD25(Wx) 00DD38(Wx) 00DD3F(Wx) 00DD48(Wx) 00DD5B(Wx) 00DD5E(Wx) 01384E(Rx) 024766(Wx) 025797(Rx) 02579A(Wx) 0257C2(Rx) 0257E6(Rx) 0257ED(Rx) 025C84(Wx) 025C8C(Rx) 0266B0(Wy) 026838(Rx) 02684E(Rx) 026853(Wx) 026865(Wx) 026868(Rx) 026875(Wx) 02715C(Wx) 0271CF(Rx) 0271EA(Wx) 027AD7(Wx) 027B47(Rx) 027B52(Wx) 027B6E(Wx) 027B93(Wx) 027B9E(Wx) 027E5D(Wy) 028BEF(Wx) 02924E(Wx) 02C735(Wx) 02C754(Rx) 02E490(Wx) 02E4EA(Wx) 032474(Rx) 0324F2(Wx) 032518(Rx) 032FFC(Wx) 03300A(Wx) 033050(Rx) 033062(Rx) 033086(Rx) 03309D(Rx) 03E03F(Wi) 03E858(Wx) 03FF18(Wx) 
; ram_064A                              = $064A ; 005613(Wx) 00561A(Wx) 00561D(Rx) 00568D(Wx) 008C4B(Wx) 008D06(Rx) 008DEF(Rx) 008DF5(Wx) 009AE0(Wx) 009AEF(Rx) 00A908(Wx) 00A9C2(Wx) 00AB88(Wx) 00AC2F(Rx) 00AC63(Ry) 00AC66(Wx) 00AC90(Rx) 00AE23(Rx) 00AEBA(Wx) 00AEC3(Rx) 00AEDA(Rx) 00AEF1(Rx) 00AF08(Rx) 00C35D(Rx) 00C386(Rx) 00C3E5(Wy) 00DC42(Wx) 00DCF7(Wx) 00DD25(Wx) 00DD38(Wx) 00DD3F(Wx) 00DD48(Wx) 00DD5B(Wx) 00DD5E(Wx) 01384E(Rx) 024766(Wx) 025797(Rx) 02579A(Wx) 0257C2(Rx) 0257E6(Rx) 0257ED(Rx) 025C84(Wx) 025C8C(Rx) 0266B0(Wy) 02715C(Wx) 0271CF(Rx) 0271EA(Wx) 027AD7(Wx) 027B47(Rx) 027B52(Wx) 027B6E(Wx) 027B93(Wx) 027B9E(Wx) 028BEF(Wx) 02C735(Wx) 02C754(Rx) 02E490(Wx) 02E4EA(Wx) 032474(Rx) 032935(Wx) 03E03F(Wi) 03E858(Wx) 03FF18(Wx) 
; ram_064B                              = $064B ; 00568D(Wx) 008DEF(Rx) 008DF5(Wx) 009AE0(Wx) 009AEF(Rx) 00A908(Wx) 00A9C2(Wx) 00AB88(Wx) 00AC2F(Rx) 00AC63(Ry) 00AC66(Wx) 00AC90(Rx) 00AEF1(Rx) 00AF08(Rx) 00C35D(Rx) 00C386(Rx) 00C3E5(Wy) 01384E(Rx) 024766(Wx) 025797(Rx) 02579A(Wx) 0257C2(Rx) 0257E6(Rx) 0257ED(Rx) 025C84(Wx) 025C8C(Rx) 0266B0(Wy) 02715C(Wx) 0271CF(Rx) 0271EA(Wx) 027AD7(Wx) 027B47(Rx) 027B52(Wx) 027B6E(Wx) 027B93(Wx) 027B9E(Wx) 028BEF(Wx) 02C735(Wx) 02C754(Rx) 02E490(Wx) 02E4EA(Wx) 03E03F(Wi) 03E858(Wx) 03FF18(Wx) 
; ram_064C                              = $064C ; 00568D(Wx) 00846F(Rx) 00847F(Rx) 008DEF(Rx) 008DF5(Wx) 009AE0(Wx) 009AEF(Rx) 00A908(Wx) 00A9C2(Wx) 00AB88(Wx) 00AC2F(Rx) 00AC63(Ry) 00AC66(Wx) 00AC90(Rx) 00AEF1(Rx) 00AF08(Rx) 00C35D(Rx) 00C386(Rx) 00C3E5(Wy) 024766(Wx) 025C84(Wx) 025C8C(Rx) 0266B0(Wy) 0268BB(Wx) 0268CD(Wx) 0268D2(Rx) 0268F1(Wx) 02692D(Rx) 02693D(Wx) 02715C(Wx) 0271CF(Rx) 0271EA(Wx) 028BEF(Wx) 02C735(Wx) 02C754(Rx) 02FA86(Wx) 03E03F(Wi) 03E858(Wx) 03FF18(Wx) 
; ram_064D                              = $064D ; 00568D(Wx) 008DEF(Rx) 008DF5(Wx) 009AE0(Wx) 009AEF(Rx) 00A908(Wx) 00A9C2(Wx) 00AB88(Wx) 00AC2F(Rx) 00AC63(Ry) 00AC66(Wx) 00AC90(Rx) 00AEF1(Rx) 00AF08(Rx) 00DCF7(Wx) 00DD25(Wx) 00DD38(Wx) 00DD3F(Wx) 00DD48(Wx) 00DD5B(Wx) 00DD5E(Wx) 00DEF5(Wx) 024766(Wx) 025C84(Wx) 025C8C(Rx) 0266B0(Wy) 02715C(Wx) 0271CF(Rx) 0271EA(Wx) 028BEF(Wx) 028D61(Wx) 02C735(Wx) 02C754(Rx) 03E03F(Wi) 03E858(Wx) 03FF18(Wx) 
; ram_064E                              = $064E ; 00568D(Wx) 008DEF(Rx) 008DF5(Wx) 009AE0(Wx) 009AEF(Rx) 00A908(Wx) 00A9C2(Wx) 00AC2F(Rx) 00AC63(Ry) 00AC66(Wx) 00AC90(Rx) 00AEF1(Rx) 00AF08(Rx) 024766(Wx) 0266B0(Wy) 02715C(Wx) 0271CF(Rx) 0271EA(Wx) 028BEF(Wx) 02C735(Wx) 02C754(Rx) 03E03F(Wi) 03E858(Wx) 03FF18(Wx) 
; ram_064F                              = $064F ; 00568D(Wx) 008DEF(Rx) 008DF5(Wx) 009130(Wx) 00A908(Wx) 00A9C2(Wx) 00AC2F(Rx) 00AC63(Ry) 00AC66(Wx) 00AC90(Rx) 00AEF1(Rx) 00AF08(Rx) 01384E(Rx) 024766(Wx) 0266B0(Wy) 02715C(Wx) 0271CF(Rx) 0271EA(Wx) 028BEF(Wx) 02C735(Wx) 02C754(Rx) 03E03F(Wi) 03E858(Wx) 03FF18(Wx) 
; ram_0650                              = $0650 ; 00568D(Wx) 008DEF(Rx) 008DF5(Wx) 009AE0(Wx) 009AEF(Rx) 00A908(Wx) 00A9C2(Wx) 00AC2F(Rx) 00AC63(Ry) 00AC66(Wx) 00AC90(Rx) 00AEF1(Rx) 00AF08(Rx) 01384E(Rx) 024766(Wx) 0266B0(Wy) 02715C(Wx) 0271CF(Rx) 0271EA(Wx) 028BEF(Wx) 02C735(Wx) 02C754(Rx) 03E03F(Wi) 03E858(Wx) 03FF18(Wx) 
; ram_0651                              = $0651 ; 00568D(Wx) 008DEF(Rx) 008DF5(Wx) 00A908(Wx) 00A9C2(Wx) 024766(Wx) 0266B0(Wy) 02715C(Wx) 0271CF(Rx) 0271EA(Wx) 02C735(Wx) 02C754(Rx) 03E03F(Wi) 03E858(Wx) 03FF18(Wx) 
; ram_0652                              = $0652 ; 007D22(Rx) 00A908(Wx) 0281F2(Wx) 03E03F(Wi) 03E858(Wx) 03FF18(Wx) 
; ram_0653                              = $0653 ; 007D22(Rx) 00A908(Wx) 0281F2(Wx) 03E03F(Wi) 03E858(Wx) 03FF18(Wx) 
; ram_0654                              = $0654 ; 007D22(Rx) 00A908(Wx) 0281F2(Wx) 03E03F(Wi) 03E858(Wx) 03FF18(Wx) 
; ram_0655                              = $0655 ; 007D22(Rx) 00A908(Wx) 0281F2(Wx) 03E03F(Wi) 03E858(Wx) 03FF18(Wx) 
; ram_0656                              = $0656 ; 007D22(Rx) 0281F2(Wx) 03E03F(Wi) 03E858(Wx) 03FF18(Wx) 
; ram_0657                              = $0657 ; 007D22(Rx) 0281F2(Wx) 03E03F(Wi) 03E858(Wx) 03FF18(Wx) 



; !!! 0x027A13
; this range doesn't have an address for a player, but refers
; via the last address of the previous range as if it has
; bzk I suggest to put an unused player address at the beginning of this range
ram_obj_0658                            = $0658 - $01 ; a separate link to look less ugly in the code
; ram_0658                              = $0658 ; 0082B7(Wx) 008467(Wx) 00882D(Wx) 008869(Wx) 0088C9(Wx) 0088D2(Wx) 0088EC(Wx) 0089CD(Wx) 008DA7(Wx) 008DBB(Wx) 009508(Wx) 00ADBC(Wx) 00ADCA(Wx) 00CA6B(Wx) 00CDC0(Wx) 00CE2B(Wx) 00D397(Wx) 00D8FC(Wx) 00D954(Wx) 00DA5A(Wx) 00DDB4(Wx) 00DE5A(Wx) 0137AD(Wx) 017C26(Wx) 023EEB(Wx) 0240A9(Wx) 024769(Wx) 024830(Wx) 02487C(Wy) 0248C9(Wx) 025C32(Wx) 026161(Wx) 0261FD(Wx) 02622B(Wx) 02625E(Rx) 0263C6(Wx) 02654A(Wx) 026565(Wx) 02667E(Wx) 026CAB(Wx) 026D81(Wx) 02708F(Wx) 0275B2(Ry) 0276B8(Wx) 027793(Wx) 02798D(Wx) 027C1E(Wx) 027C41(Wx) 027F61(Wx) 0283D1(Wx) 028BB1(Wx) 028DB6(Wx) 028DE8(Wx) 02D03D(Rx) 02D042(Wx) 02DFEF(Wx) 02F15F(Rx) 02F166(Rx) 02F24E(Rx) 02F361(Rx) 02F37F(Rx) 02F54A(Wx) 02F596(Wx) 0325AD(Wx) 0327E6(Wx) 0378B7(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_0659                              = $0659 ; 0082B7(Wx) 008467(Wx) 00882D(Wx) 008869(Wx) 0088C9(Wx) 0088D2(Wx) 0088EC(Wx) 0089CD(Wx) 008DA7(Wx) 00916D(Wx) 009508(Wx) 00ADBC(Wx) 00ADCA(Wx) 00CA6B(Wx) 00CCB5(Wx) 00D8FC(Wx) 00D954(Wx) 00DC93(Wx) 00DCF2(Wx) 0137AD(Wx) 017C26(Wx) 023EEB(Wx) 0240A9(Wx) 024769(Wx) 024830(Wx) 0248C9(Wx) 025C32(Wx) 0261A8(Wx) 0261FD(Wx) 0264A5(Wx) 0264CF(Wx) 02667E(Wx) 026D81(Wx) 02708F(Wx) 0270EE(Wx) 0275B5(Wx) 027A13(Wx) 027C1E(Wx) 027C41(Wx) 027E7E(Wx) 0283D1(Wx) 028BB1(Wx) 028DB6(Wx) 02D03D(Rx) 02D042(Wx) 02DAF8(Wy) 02DFEF(Wx) 02F14A(Rx) 02F166(Rx) 02F24E(Rx) 02F361(Rx) 02F54A(Wx) 02F596(Wx) 0324F6(Wx) 03256D(Wx) 0378B7(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_065A                              = $065A ; 0082B7(Wx) 008467(Wx) 00882D(Wx) 008869(Wx) 0088C9(Wx) 0088D2(Wx) 0088EC(Wx) 0089CD(Wx) 008DA7(Wx) 00916D(Wx) 009508(Wx) 00ADBC(Wx) 00ADCA(Wx) 00CDC0(Wx) 00D8FC(Wx) 00D954(Wx) 00DC93(Wx) 00DCF2(Wx) 0137AD(Wx) 017C26(Wx) 0240A9(Wx) 024769(Wx) 025C32(Wx) 0261A8(Wx) 0261FD(Wx) 0264A5(Wx) 0264CF(Wx) 026D81(Wx) 02708F(Wx) 0270EE(Wx) 0278C2(Wx) 027A16(Wx) 027C1E(Wx) 027C41(Wx) 0283D1(Wx) 028DB6(Wx) 02D03D(Rx) 02D042(Wx) 02DAF8(Wy) 02DFEF(Wx) 02F166(Rx) 02F24E(Rx) 02F361(Rx) 02F54A(Wx) 02F596(Wx) 0324F6(Wx) 032FF7(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_065B                              = $065B ; 0082B7(Wx) 008467(Wx) 00882D(Wx) 008869(Wx) 0088C9(Wx) 0088D2(Wx) 0088EC(Wx) 0089CD(Wx) 008DA7(Wx) 00916D(Wx) 009508(Wx) 00ADBC(Wx) 00ADCA(Wx) 00CDC0(Wx) 00D678(Wx) 00D954(Wx) 00DC93(Wx) 00DCF2(Wx) 017C26(Wx) 0240A9(Wx) 024769(Wx) 024830(Wx) 0248C9(Wx) 025C32(Wx) 0261FD(Wx) 0264A5(Wx) 0264CF(Wx) 026D81(Wx) 02708F(Wx) 0270EE(Wx) 0278C2(Wx) 027A19(Wx) 027C1E(Wx) 027C41(Wx) 0283D1(Wx) 028DB6(Wx) 02D03D(Rx) 02D042(Wx) 02DAF8(Wy) 02DFEF(Wx) 02F166(Rx) 02F24E(Rx) 02F361(Rx) 02F54A(Wx) 02F596(Wx) 0324F6(Wx) 032FF7(Wx) 0378B7(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_065C                              = $065C ; 0082B7(Wx) 008467(Wx) 00882D(Wx) 008869(Wx) 0088C9(Wx) 0088D2(Wx) 0088EC(Wx) 0089CD(Wx) 008DA7(Wx) 00916D(Wx) 009508(Wx) 00ADBC(Wx) 00ADCA(Wx) 00D8FC(Wx) 00D954(Wx) 00DC93(Wx) 00DCF2(Wx) 017C26(Wx) 017D46(Wx) 0240A9(Wx) 024769(Wx) 025C32(Wx) 0261FD(Wx) 0264A5(Wx) 0264CF(Wx) 026D81(Wx) 02708F(Wx) 0270EE(Wx) 0278C2(Wx) 027A1C(Wx) 027C1E(Wx) 027C41(Wx) 0283D1(Wx) 028DB6(Wx) 02D03D(Rx) 02D042(Wx) 02DAF8(Wy) 02DFEF(Wx) 02F15F(Rx) 02F166(Rx) 02F24E(Rx) 02F361(Rx) 02F54A(Wx) 02F596(Wx) 032942(Wx) 0329C2(Wx) 0378B7(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_065D                              = $065D ; 0082B7(Wx) 008467(Wx) 00882D(Wx) 008869(Wx) 0088C9(Wx) 0088D2(Wx) 0088EC(Wx) 0089CD(Wx) 008DA7(Wx) 008DBB(Wx) 00916D(Wx) 009508(Wx) 00ADBC(Wx) 00ADCA(Wx) 00D8FC(Wx) 00D954(Wx) 017D46(Wx) 0240A9(Wx) 024769(Wx) 0248C9(Wx) 025C32(Wx) 0261FD(Wx) 0264A5(Wx) 0264CF(Wx) 026D81(Wx) 02708F(Wx) 0270EE(Wx) 027A1F(Wx) 027C1E(Wx) 027C41(Wx) 0283D1(Wx) 028DB6(Wx) 02DAF8(Wy) 02DFEF(Wx) 02F166(Rx) 02F24E(Rx) 02F361(Rx) 02F596(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_065E                              = $065E ; 0082B7(Wx) 008467(Wx) 00882D(Wx) 008869(Wx) 0088C9(Wx) 0088D2(Wx) 0088EC(Wx) 0089CD(Wx) 008DA7(Wx) 00916D(Wx) 009508(Wx) 00ADBC(Wx) 00ADCA(Wx) 00D954(Wx) 017C26(Wx) 017D46(Wx) 023EEB(Wx) 0240A9(Wx) 024769(Wx) 0248C9(Wx) 025C32(Wx) 0261FD(Wx) 0264A5(Wx) 0264CF(Wx) 026D81(Wx) 02708F(Wx) 027CD7(Wx) 0283D1(Wx) 02DAF8(Wy) 02DFEF(Wx) 02F166(Rx) 02F24E(Rx) 02F361(Rx) 02F596(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_065F                              = $065F ; 0082B7(Wx) 008467(Wx) 00882D(Wx) 008869(Wx) 0088C9(Wx) 0089CD(Wx) 008DA7(Wx) 00916D(Wx) 009508(Wx) 00ADBC(Wx) 00ADCA(Wx) 00D954(Wx) 00DC93(Wx) 00DCF2(Wx) 017D46(Wx) 023EEB(Wx) 0240A9(Wx) 024769(Wx) 0248C9(Wx) 025C32(Wx) 0261FD(Wx) 0264A5(Wx) 0264CF(Wx) 02654A(Wx) 026565(Wx) 026D81(Wx) 02708F(Wx) 027CD7(Wx) 0283D1(Wx) 028DE8(Wx) 02DFEF(Wx) 02F166(Rx) 02F24E(Rx) 02F361(Rx) 02F596(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_0660                              = $0660 ; 0082B7(Wx) 008467(Wx) 00882D(Wx) 008869(Wx) 0088D2(Wx) 0088EC(Wx) 008DA7(Wx) 00916D(Wx) 009508(Wx) 00ADBC(Wx) 00D954(Wx) 0137AD(Wx) 017C26(Wx) 017D46(Wx) 0240A9(Wx) 024769(Wx) 02487C(Wy) 0261FD(Wx) 026D81(Wx) 02708F(Wx) 027CD7(Wx) 0283D1(Wx) 02D99A(Wx) 02DFEF(Wx) 02F166(Rx) 02F24E(Rx) 02F361(Rx) 02F596(Wx) 0378B7(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_0661                              = $0661 ; 0082B7(Wx) 008467(Wx) 008DA7(Wx) 00916D(Wx) 009508(Wx) 00ADBC(Wx) 00ADCA(Wx) 00D954(Wx) 0137AD(Wx) 017C26(Wx) 017D46(Wx) 0240A9(Wx) 024769(Wx) 0248C9(Wx) 0261FD(Wx) 026D81(Wx) 02708F(Wx) 027CD7(Wx) 0283D1(Wx) 02D99A(Wx) 02DFEF(Wx) 02F24E(Rx) 02F361(Rx) 02F596(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_0662                              = $0662 ; 0082B7(Wx) 008467(Wx) 0088C9(Wx) 0089CD(Wx) 008DA7(Wx) 00916D(Wx) 009508(Wx) 00ADBC(Wx) 00ADCA(Wx) 0137AD(Wx) 017C26(Wx) 017D46(Wx) 0240A9(Wx) 024769(Wx) 0261FD(Wx) 02708F(Wx) 027CD7(Wx) 0283D1(Wx) 02D99A(Wx) 02DFEF(Wx) 02F166(Rx) 02F24E(Rx) 02F361(Rx) 02F596(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_0663                              = $0663 ; 0082B7(Wx) 008467(Wx) 008DA7(Wx) 00916D(Wx) 009508(Wx) 017C26(Wx) 017D46(Wx) 0240A9(Wx) 024769(Wx) 0248C9(Wx) 0261FD(Wx) 02708F(Wx) 0283D1(Wx) 02D99A(Wx) 02DFEF(Wx) 02F24E(Rx) 02F361(Rx) 02F596(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_0664                              = $0664 ; 00916D(Wx) 009508(Wx) 02C218(Wx) 02DFEF(Wx) 02F361(Rx) 02F596(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_0665                              = $0665 ; 00916D(Wx) 009508(Wx) 02C218(Wx) 02DFEF(Wx) 02F361(Rx) 02F596(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_0666                              = $0666 ; 00916D(Wx) 009508(Wx) 02C218(Wx) 02F361(Rx) 02F596(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_0667                              = $0667 ; 00916D(Wx) 009508(Wx) 02C218(Wx) 02F361(Rx) 02F596(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_0668                              = $0668 ; 02C218(Wx) 02F361(Rx) 02F596(Wx) 03E03F(Wi) 03E858(Wx) 
; ram_0669                              = $0669 ; 02C218(Wx) 02F361(Rx) 02F596(Wx) 03E03F(Wi) 03E858(Wx) 



; !!! 0x02F337 ссылается на левую херню, предположительно на хп
; something to do with damage?
; this range doesn't have an address for a player, but refers
; via the last address of the previous range as if it has.
; bzk I suggest to put an unused player address at the beginning of this range
ram_obj_066A                            = $066A - $01 ; a separate link to look less ugly in the code
; ram_066A                              = $066A ; 0082BC(Wx) 00950B(Wx) 00C0F5(Wx) 00CA68(Wx) 00CC19(Rx) 00CDC3(Rx) 00CE2E(Wx) 00CE43(Rx) 00CE5B(Wx) 00D39A(Wx) 00D3CA(Rx) 00D404(Wx) 00DB1F(Rx) 00DB2F(Rx) 00DB3F(Rx) 00DB48(Wx) 024241(Rx) 024248(Wx) 024271(Rx) 02427D(Rx) 0242C0(Wx) 024443(Wx) 024463(Rx) 024484(Wx) 02476C(Wx) 0248F2(Rx) 024917(Rx) 024932(Rx) 026238(Rx) 02626D(Rx) 02627F(Wx) 02654D(Wx) 0265CF(Ry) 026725(Rx) 026A18(Rx) 026A2C(Wx) 026C80(Rx) 026C85(Rx) 026C9B(Wx) 026FF4(Rx) 0273E1(Wy) 02798A(Wx) 027BCC(Wy) 027C1B(Wx) 027C3E(Wx) 027F52(Rx) 027F5E(Wx) 0283D4(Wx) 02F1D3(Wx) 02F2E9(Wx) 02F31C(Rx) 02F321(Rx) 02F326(Wx) 02F33F(Rx) 02F346(Wx) 02F4F1(Rx) 02F500(Rx) 02F505(Wx) 032604(Wx) 03262B(Rx) 03E03F(Wi) 03E858(Wx) 03FEF8(Wx) 
; ram_066B                              = $066B ; 0082BC(Wx) 0091BC(Rx) 00950B(Wx) 00C0F5(Wx) 00CA68(Wx) 00DCEF(Wx) 00DD06(Rx) 024241(Rx) 024248(Wx) 024271(Rx) 02427D(Rx) 0242C0(Wx) 024443(Wx) 024463(Rx) 024484(Wx) 02476C(Wx) 0248F2(Rx) 024917(Rx) 024932(Rx) 0261A5(Wx) 02645E(Rx) 0265CF(Ry) 026725(Rx) 026A18(Rx) 026A2C(Wx) 026C46(Wx) 026C80(Rx) 026C85(Rx) 026C9B(Wx) 026D29(Wy) 02707C(Wx) 027104(Rx) 027112(Wx) 027390(Wy) 0273E1(Wy) 02759D(Wx) 027B0B(Rx) 027B35(Wx) 027BBC(Rx) 027BCC(Wy) 027C1B(Wx) 027C3E(Wx) 0283D4(Wx) 02F1D3(Wx) 02F2E9(Wx) 02F31C(Rx) 02F321(Rx) 02F326(Wx) 02F33F(Rx) 02F346(Wx) 02F4F1(Rx) 02F500(Rx) 02F505(Wx) 03247F(Wx) 03E03F(Wi) 03E858(Wx) 03FEF8(Wx) 
; ram_066C                              = $066C ; 0082BC(Wx) 0091BC(Rx) 00950B(Wx) 00CC19(Rx) 00CDC3(Rx) 00DCEF(Wx) 00DD06(Rx) 024241(Rx) 024248(Wx) 024271(Rx) 02427D(Rx) 0242C0(Wx) 024443(Wx) 024463(Rx) 024484(Wx) 02476C(Wx) 0248F2(Rx) 024917(Rx) 024932(Rx) 0261A5(Wx) 02645E(Rx) 0265CC(Wx) 0265E3(Wx) 026A18(Rx) 026A2C(Wx) 026C80(Rx) 026C85(Rx) 026C9B(Wx) 026D29(Wy) 026ECE(Rx) 02707C(Wx) 027104(Rx) 027112(Wx) 027390(Wy) 0273E1(Wy) 027B0B(Rx) 027B35(Wx) 027BBC(Rx) 027BCC(Wy) 027C1B(Wx) 027C3E(Wx) 0283D4(Wx) 02F1D3(Wx) 02F2E9(Wx) 02F31C(Rx) 02F321(Rx) 02F326(Wx) 02F4F1(Rx) 02F500(Rx) 02F505(Wx) 03247F(Wx) 032FEC(Wx) 03E03F(Wi) 03E858(Wx) 03FEF8(Wx) 
; ram_066D                              = $066D ; 0082BC(Wx) 0091BC(Rx) 00950B(Wx) 00CC19(Rx) 00CDC3(Rx) 00D675(Wx) 00DCEF(Wx) 00DD06(Rx) 024241(Rx) 024248(Wx) 024271(Rx) 02427D(Rx) 0242C0(Wx) 024443(Wx) 024463(Rx) 024484(Wx) 02476C(Wx) 0248F2(Rx) 024917(Rx) 024932(Rx) 02645E(Rx) 026A18(Rx) 026A2C(Wx) 026C80(Rx) 026C85(Rx) 026C9B(Wx) 026D29(Wy) 026ECE(Rx) 02707C(Wx) 027104(Rx) 027112(Wx) 027390(Wy) 027B0B(Rx) 027B35(Wx) 027BBC(Rx) 027BCC(Wy) 027C1B(Wx) 027C3E(Wx) 0283D4(Wx) 02F1D3(Wx) 02F2E9(Wx) 02F31C(Rx) 02F321(Rx) 02F326(Wx) 02F33F(Rx) 02F346(Wx) 02F4F1(Rx) 02F500(Rx) 02F505(Wx) 03247F(Wx) 032FEC(Wx) 03E03F(Wi) 03E858(Wx) 03FEF8(Wx) 
; ram_066E                              = $066E ; 0082BC(Wx) 0091BC(Rx) 00950B(Wx) 00CC19(Rx) 00DCEF(Wx) 00DD06(Rx) 024241(Rx) 024248(Wx) 024271(Rx) 02427D(Rx) 0242C0(Wx) 024443(Wx) 024463(Rx) 024484(Wx) 02476C(Wx) 024917(Rx) 024932(Rx) 02645E(Rx) 026A18(Rx) 026A2C(Wx) 026C80(Rx) 026C85(Rx) 026C9B(Wx) 026D29(Wy) 026ECE(Rx) 02707C(Wx) 027104(Rx) 027112(Wx) 027390(Wy) 027B0B(Rx) 027B35(Wx) 027BBC(Rx) 027BCC(Wy) 027C1B(Wx) 027C3E(Wx) 0283D4(Wx) 02F1D3(Wx) 02F2E9(Wx) 02F31C(Rx) 02F321(Rx) 02F326(Wx) 02F4F1(Rx) 02F500(Rx) 02F505(Wx) 03E03F(Wi) 03E858(Wx) 03FEF8(Wx) 
; ram_066F                              = $066F ; 0082BC(Wx) 0091BC(Rx) 00950B(Wx) 00CC19(Rx) 024241(Rx) 024248(Wx) 024271(Rx) 024463(Rx) 024484(Wx) 02476C(Wx) 024917(Rx) 024932(Rx) 02645E(Rx) 026A18(Rx) 026A2C(Wx) 026C80(Rx) 026C85(Rx) 026C9B(Wx) 026D29(Wy) 02707C(Wx) 027104(Rx) 027112(Wx) 027390(Wy) 027B0B(Rx) 027B35(Wx) 027BBC(Rx) 027BCC(Wy) 027C1B(Wx) 027C3E(Wx) 0283D4(Wx) 02F1D3(Wx) 02F2E9(Wx) 02F31C(Rx) 02F321(Rx) 02F326(Wx) 02F4F1(Rx) 02F500(Rx) 02F505(Wx) 03E03F(Wi) 03E858(Wx) 03FEF8(Wx) 
; ram_0670                              = $0670 ; 0082BC(Wx) 0091BC(Rx) 00950B(Wx) 024241(Rx) 024248(Wx) 024271(Rx) 024463(Rx) 024484(Wx) 02476C(Wx) 02645E(Rx) 026A18(Rx) 026A2C(Wx) 026C80(Rx) 026C85(Rx) 026C9B(Wx) 026D29(Wy) 027104(Rx) 027112(Wx) 027390(Wy) 0283D4(Wx) 02F1D3(Wx) 02F2E9(Wx) 02F31C(Rx) 02F321(Rx) 02F326(Wx) 02F4F1(Rx) 02F500(Rx) 02F505(Wx) 03E03F(Wi) 03E858(Wx) 03FEF8(Wx) 
; ram_0671                              = $0671 ; 0082BC(Wx) 0091BC(Rx) 00950B(Wx) 00DCEF(Wx) 00DD06(Rx) 024271(Rx) 024463(Rx) 024484(Wx) 02476C(Wx) 02645E(Rx) 02654D(Wx) 026A18(Rx) 026A2C(Wx) 026C80(Rx) 026C85(Rx) 026C9B(Wx) 026D29(Wy) 027104(Rx) 027112(Wx) 027390(Wy) 0283D4(Wx) 02F1D3(Wx) 02F2E9(Wx) 02F31C(Rx) 02F321(Rx) 02F326(Wx) 02F4F1(Rx) 02F500(Rx) 02F505(Wx) 03E03F(Wi) 03E858(Wx) 03FEF8(Wx) 
; ram_0672                              = $0672 ; 0082BC(Wx) 0091BC(Rx) 00950B(Wx) 024271(Rx) 024463(Rx) 024484(Wx) 02476C(Wx) 0248F2(Rx) 024932(Rx) 0265CC(Wx) 0265E3(Wx) 026C80(Rx) 026C85(Rx) 026C9B(Wx) 026D29(Wy) 027104(Rx) 027112(Wx) 027390(Wy) 0283D4(Wx) 02F1D3(Wx) 02F2E9(Wx) 02F31C(Rx) 02F321(Rx) 02F326(Wx) 02F4F1(Rx) 02F500(Rx) 02F505(Wx) 03E03F(Wi) 03E858(Wx) 03FEF8(Wx) 
; ram_0673                              = $0673 ; 0082BC(Wx) 0091BC(Rx) 00950B(Wx) 024271(Rx) 024463(Rx) 024484(Wx) 02476C(Wx) 026C80(Rx) 026C85(Rx) 026C9B(Wx) 026D29(Wy) 027104(Rx) 027112(Wx) 027390(Wy) 0283D4(Wx) 02F1D3(Wx) 02F2E9(Wx) 02F31C(Rx) 02F326(Wx) 02F4F1(Rx) 02F500(Rx) 02F505(Wx) 03E03F(Wi) 03E858(Wx) 03FEF8(Wx) 
; ram_0674                              = $0674 ; 0082BC(Wx) 0091BC(Rx) 00950B(Wx) 024271(Rx) 024463(Rx) 024484(Wx) 02476C(Wx) 027104(Rx) 027112(Wx) 027390(Wy) 0283D4(Wx) 02F1D3(Wx) 02F2E9(Wx) 02F31C(Rx) 02F326(Wx) 02F4F1(Rx) 02F500(Rx) 02F505(Wx) 03E03F(Wi) 03E858(Wx) 03FEF8(Wx) 
; ram_0675                              = $0675 ; 0082BC(Wx) 0091BC(Rx) 00950B(Wx) 024271(Rx) 024463(Rx) 024484(Wx) 02476C(Wx) 027104(Rx) 027390(Wy) 0283D4(Wx) 02F1D3(Wx) 02F2E9(Wx) 02F31C(Rx) 02F326(Wx) 02F4F1(Rx) 02F500(Rx) 02F505(Wx) 03E03F(Wi) 03E858(Wx) 03FEF8(Wx) 
; ram_0676                              = $0676 ; 0091BC(Rx) 00950B(Wx) 02F2E9(Wx) 02F31C(Rx) 02F321(Rx) 02F326(Wx) 02F4F1(Rx) 02F500(Rx) 02F505(Wx) 03E03F(Wi) 03E858(Wx) 03FEF8(Wx) 
; ram_0677                              = $0677 ; 0091BC(Rx) 00950B(Wx) 02F2E9(Wx) 02F31C(Rx) 02F321(Rx) 02F326(Wx) 02F4F1(Rx) 02F500(Rx) 02F505(Wx) 03E03F(Wi) 03E858(Wx) 03FEF8(Wx) 
; ram_0678                              = $0678 ; 0091BC(Rx) 00950B(Wx) 02F2E9(Wx) 02F31C(Rx) 02F321(Rx) 02F326(Wx) 03E03F(Wi) 03E858(Wx) 03FEF8(Wx) 
; ram_0679                              = $0679 ; 0091BC(Rx) 00950B(Wx) 02F2E9(Wx) 02F31C(Rx) 02F321(Rx) 02F326(Wx) 03E03F(Wi) 03E858(Wx) 03FEF8(Wx) 
; ram_067A                              = $067A ; 02F2E9(Wx) 02F31C(Rx) 02F326(Wx) 03E03F(Wi) 03E858(Wx) 03FEF8(Wx) 
; ram_067B                              = $067B ; 02F2E9(Wx) 02F31C(Rx) 02F321(Rx) 02F326(Wx) 03E03F(Wi) 03E858(Wx) 03FEF8(Wx) 



; 
; this range doesn't have an address for a player, but refers
; via the last address of the previous range as if it has.
; bzk I suggest to put an unused player address at the beginning of this range
ram_obj_hp                              = $067C - $01 ; a separate link to look less ugly in the code
; ram_067C                              = $067C ; 00950E(Wx) 00C0F8(Rx) 00C725(Wx) 00CA61(Rx) 00DAEF(Wx) 013AA8(Wx) 02476F(Wx) 02480B(Rx) 024945(Rx) 024952(Rx) 02495F(Wx) 02652F(Wy) 0265C7(Wy) 026C41(Wy) 026FAE(Wx) 027553(Wx) 027684(Wx) 0279F2(Wx) 027E3A(Wx) 028BAC(Wx) 029068(Wx) 02935B(Wx) 02DF8D(Wx) 02F509(Rx) 02F50E(Wx) 03E03F(Wi) 03E858(Wx) 03FEEC(Wx) 
; ram_067D                              = $067D ; 00950E(Wx) 00C0F8(Rx) 00C672(Wx) 00C6D5(Wx) 00C722(Wy) 00CA61(Rx) 013AA8(Wx) 02476F(Wx) 02480B(Rx) 024945(Rx) 024952(Rx) 02495F(Wx) 0265C7(Wy) 026C3E(Rx) 026CD2(Wy) 027550(Wy) 0279D5(Wy) 027B21(Rx) 027B2B(Rx) 027B38(Rx) 028BAC(Wx) 029068(Wx) 02935B(Wx) 02DAF3(Wy) 02DF8D(Wx) 02F337(Ry) 02F33C(Wy) 02F509(Rx) 02F50E(Wx) 03E03F(Wi) 03E858(Wx) 03FEEC(Wx) 
; ram_067E                              = $067E ; 00950E(Wx) 02476F(Wx) 024945(Rx) 024952(Rx) 02495F(Wx) 02652F(Wy) 0265B9(Wx) 0265C4(Rx) 0279D5(Wy) 027B21(Rx) 027B2B(Rx) 027B38(Rx) 029068(Wx) 02935B(Wx) 02DAF3(Wy) 02DF8D(Wx) 02F337(Ry) 02F33C(Wy) 02F509(Rx) 02F50E(Wx) 03E03F(Wi) 03E858(Wx) 03FEEC(Wx) 
; ram_067F                              = $067F ; 00950E(Wx) 013AA8(Wx) 02476F(Wx) 02480B(Rx) 024945(Rx) 024952(Rx) 02495F(Wx) 0279D5(Wy) 027B21(Rx) 027B2B(Rx) 027B38(Rx) 029068(Wx) 02935B(Wx) 02DAF3(Wy) 02DF8D(Wx) 02F337(Ry) 02F33C(Wy) 02F509(Rx) 02F50E(Wx) 03E03F(Wi) 03E858(Wx) 03FEEC(Wx) 
; ram_0680                              = $0680 ; 00950E(Wx) 02476F(Wx) 024945(Rx) 024952(Rx) 02495F(Wx) 0279D5(Wy) 027B21(Rx) 027B2B(Rx) 027B38(Rx) 029068(Wx) 02935B(Wx) 02DAF3(Wy) 02DF8D(Wx) 02F509(Rx) 02F50E(Wx) 03E03F(Wi) 03E858(Wx) 03FEEC(Wx) 
; ram_0681                              = $0681 ; 00950E(Wx) 02476F(Wx) 024945(Rx) 024952(Rx) 02495F(Wx) 0279D5(Wy) 027B21(Rx) 027B2B(Rx) 027B38(Rx) 029068(Wx) 02935B(Wx) 02DAF3(Wy) 02DF8D(Wx) 02F509(Rx) 02F50E(Wx) 03E03F(Wi) 03E858(Wx) 03FEEC(Wx) 
; ram_0682                              = $0682 ; 00950E(Wx) 02476F(Wx) 02935B(Wx) 02DAF3(Wy) 02F509(Rx) 02F50E(Wx) 03E03F(Wi) 03E858(Wx) 03FEEC(Wx) 
; ram_0683                              = $0683 ; 00950E(Wx) 013AA8(Wx) 02476F(Wx) 02652F(Wy) 02935B(Wx) 02F509(Rx) 02F50E(Wx) 03E03F(Wi) 03E858(Wx) 03FEEC(Wx) 
; ram_0684                              = $0684 ; 00950E(Wx) 02476F(Wx) 024945(Rx) 024952(Rx) 02495F(Wx) 02652F(Wy) 0265B9(Wx) 0265C4(Rx) 02935B(Wx) 02F509(Rx) 02F50E(Wx) 03E03F(Wi) 03E858(Wx) 03FEEC(Wx) 
; ram_0685                              = $0685 ; 00950E(Wx) 02476F(Wx) 02935B(Wx) 02F509(Rx) 02F50E(Wx) 03E03F(Wi) 03E858(Wx) 03FEEC(Wx) 
; ram_0686                              = $0686 ; 00950E(Wx) 02476F(Wx) 02935B(Wx) 02F509(Rx) 02F50E(Wx) 03E03F(Wi) 03E858(Wx) 03FEEC(Wx) 
; ram_0687                              = $0687 ; 00950E(Wx) 02476F(Wx) 02935B(Wx) 02F509(Rx) 02F50E(Wx) 03E03F(Wi) 03E858(Wx) 03FEEC(Wx) 
; ram_0688                              = $0688 ; 00950E(Wx) 02935B(Wx) 02F509(Rx) 02F50E(Wx) 03E03F(Wi) 03E858(Wx) 03FEEC(Wx) 
; ram_0689                              = $0689 ; 00950E(Wx) 02935B(Wx) 02F509(Rx) 02F50E(Wx) 03E03F(Wi) 03E858(Wx) 03FEEC(Wx) 
; ram_068A                              = $068A ; 00950E(Wx) 03E03F(Wi) 03E858(Wx) 03FEEC(Wx) 
; ram_068B                              = $068B ; 00950E(Wx) 03E03F(Wi) 03E858(Wx) 03FEEC(Wx) 
; ram_068C                              = $068C ; 03E03F(Wi) 03E858(Wx) 03FEEC(Wx) 
; ram_068D                              = $068D ; 03E03F(Wi) 03E858(Wx) 03FEEC(Wx) 



; 
; this range doesn't have an address for a player, but refers
; via the last address of the previous range as if it has.
; bzk I suggest to put an unused player address at the beginning of this range
ram_obj_068E                            = $068E - $01 ; a separate link to look less ugly in the code
; ram_068E                              = $068E ; 009511(Wx) 00D3E3(Wx) 024772(Wx) 026246(Rx) 026A08(Wx) 026A74(Wx) 026A99(Rx) 026A9E(Wx) 026AA1(Wy) 027393(Rx) 027BD2(Wy) 02F282(Rx) 02F298(Rx) 02F29D(Wx) 02F2D1(Wx) 02F317(Rx) 03BC7C(Rx) 03BC82(Wx) 03E03F(Wi) 03E858(Wx) 03FEEF(Wx) 
; ram_068F                              = $068F ; 009511(Wx) 024772(Wx) 026249(Wy) 026A08(Wx) 026A74(Wx) 026A99(Rx) 026A9E(Wx) 026AA1(Wy) 027396(Wy) 027BCF(Rx) 027BD2(Wy) 02F282(Rx) 02F298(Rx) 02F29D(Wx) 02F2D1(Wx) 02F317(Rx) 03BC7C(Rx) 03BC82(Wx) 03E03F(Wi) 03E858(Wx) 03FEEF(Wx) 
; ram_0690                              = $0690 ; 009511(Wx) 024772(Wx) 026249(Wy) 026A08(Wx) 026A74(Wx) 026A99(Rx) 026A9E(Wx) 026AA1(Wy) 027396(Wy) 027BCF(Rx) 027BD2(Wy) 02F282(Rx) 02F298(Rx) 02F29D(Wx) 02F2D1(Wx) 02F317(Rx) 03BC7C(Rx) 03BC82(Wx) 03E03F(Wi) 03E858(Wx) 03FEEF(Wx) 
; ram_0691                              = $0691 ; 009511(Wx) 024772(Wx) 026249(Wy) 026A08(Wx) 026A74(Wx) 026A99(Rx) 026A9E(Wx) 026AA1(Wy) 027396(Wy) 027BCF(Rx) 027BD2(Wy) 02F282(Rx) 02F298(Rx) 02F29D(Wx) 02F2D1(Wx) 02F317(Rx) 03BC7C(Rx) 03BC82(Wx) 03E03F(Wi) 03E858(Wx) 03FEEF(Wx) 
; ram_0692                              = $0692 ; 009511(Wx) 024772(Wx) 026249(Wy) 026A08(Wx) 026A74(Wx) 026A99(Rx) 026A9E(Wx) 026AA1(Wy) 027396(Wy) 027BCF(Rx) 027BD2(Wy) 02F282(Rx) 02F298(Rx) 02F29D(Wx) 02F2D1(Wx) 02F317(Rx) 03BC7C(Rx) 03BC82(Wx) 03E03F(Wi) 03E858(Wx) 03FEEF(Wx) 
; ram_0693                              = $0693 ; 009511(Wx) 024772(Wx) 026249(Wy) 026AA1(Wy) 027396(Wy) 027BCF(Rx) 027BD2(Wy) 02F282(Rx) 02F298(Rx) 02F29D(Wx) 02F2D1(Wx) 02F317(Rx) 03BC7C(Rx) 03BC82(Wx) 03E03F(Wi) 03E858(Wx) 03FEEF(Wx) 
; ram_0694                              = $0694 ; 009511(Wx) 024772(Wx) 026249(Wy) 026AA1(Wy) 027396(Wy) 02F282(Rx) 02F298(Rx) 02F29D(Wx) 02F2D1(Wx) 02F317(Rx) 03BC7C(Rx) 03BC82(Wx) 03E03F(Wi) 03E858(Wx) 03FEEF(Wx) 
; ram_0695                              = $0695 ; 009511(Wx) 024772(Wx) 026249(Wy) 026AA1(Wy) 027396(Wy) 02F282(Rx) 02F298(Rx) 02F29D(Wx) 02F2D1(Wx) 02F317(Rx) 03BC7C(Rx) 03BC82(Wx) 03E03F(Wi) 03E858(Wx) 03FEEF(Wx) 
; ram_0696                              = $0696 ; 009511(Wx) 024772(Wx) 027396(Wy) 02F282(Rx) 02F298(Rx) 02F29D(Wx) 02F2D1(Wx) 02F317(Rx) 03BC7C(Rx) 03BC82(Wx) 03E03F(Wi) 03E858(Wx) 03FEEF(Wx) 
; ram_0697                              = $0697 ; 009511(Wx) 024772(Wx) 027396(Wy) 02F282(Rx) 02F298(Rx) 02F29D(Wx) 02F2D1(Wx) 02F317(Rx) 03BC7C(Rx) 03BC82(Wx) 03E03F(Wi) 03E858(Wx) 03FEEF(Wx) 
; ram_0698                              = $0698 ; 009511(Wx) 024772(Wx) 027396(Wy) 02F282(Rx) 02F298(Rx) 02F29D(Wx) 02F2D1(Wx) 02F317(Rx) 03BC7C(Rx) 03BC82(Wx) 03E03F(Wi) 03E858(Wx) 03FEEF(Wx) 
; ram_0699                              = $0699 ; 009511(Wx) 024772(Wx) 027396(Wy) 02F282(Rx) 02F298(Rx) 02F29D(Wx) 02F2D1(Wx) 02F317(Rx) 03BC7C(Rx) 03BC82(Wx) 03E03F(Wi) 03E858(Wx) 03FEEF(Wx) 
; ram_069A                              = $069A ; 009511(Wx) 02F282(Rx) 02F298(Rx) 02F29D(Wx) 02F2D1(Wx) 02F317(Rx) 03BC7C(Rx) 03BC82(Wx) 03E03F(Wi) 03E858(Wx) 03FEEF(Wx) 
; ram_069B                              = $069B ; 009511(Wx) 02F282(Rx) 02F298(Rx) 02F29D(Wx) 02F2D1(Wx) 02F317(Rx) 03BC7C(Rx) 03BC82(Wx) 03E03F(Wi) 03E858(Wx) 03FEEF(Wx) 
; ram_069C                              = $069C ; 009511(Wx) 02F282(Rx) 02F298(Rx) 02F29D(Wx) 02F2D1(Wx) 02F317(Rx) 03BC7C(Rx) 03BC82(Wx) 03E03F(Wi) 03E858(Wx) 03FEEF(Wx) 
; ram_069D                              = $069D ; 009511(Wx) 02F282(Rx) 02F298(Rx) 02F29D(Wx) 02F2D1(Wx) 02F317(Rx) 03BC7C(Rx) 03BC82(Wx) 03E03F(Wi) 03E858(Wx) 03FEEF(Wx) 
; ram_069E                              = $069E ; 02F282(Rx) 02F298(Rx) 02F29D(Wx) 02F2D1(Wx) 02F317(Rx) 03BC7C(Rx) 03BC82(Wx) 03E03F(Wi) 03E858(Wx) 03FEEF(Wx) 
; ram_069F                              = $069F ; 02F282(Rx) 02F298(Rx) 02F29D(Wx) 02F2D1(Wx) 02F317(Rx) 03BC7C(Rx) 03BC82(Wx) 03E03F(Wi) 03E858(Wx) 03FEEF(Wx) 



; sound engine addresses
ram_06A0_se                             = $06A0 ; 0102E6(Wx) 0142E6(Wx) 030DA0(Wx) 030DC2(Rx) 03E03F(Wi) 
; ram_06A1                              = $06A1 ; 0102E6(Wx) 0142E6(Wx) 030DA0(Wx) 030DC2(Rx) 03E03F(Wi) 
; ram_06A2                              = $06A2 ; 03E03F(Wi) 



; sound engine addresses
; see con_9E7B
ram_06A3_se                             = $06A3 ; 0104A7(Wx) 0144A7(Wx) 030D0A(Rx) 03E03F(Wi) 
; ram_06A4                              = $06A4 ; 0104A7(Wx) 0144A7(Wx) 030D0A(Rx) 03E03F(Wi) 
; ram_06A5                              = $06A5 ; 03E03F(Wi) 



; sound engine addresses
ram_06A6_se                             = $06A6 ; 0102E0(Wx) 0142E0(Wx) 030D19(Rx) 030D2E(Wx) 030D9A(Wx) 030D9D(Rx) 030DC5(Wx) 03E03F(Wi) 
; ram_06A7                              = $06A7 ; 0102E0(Wx) 0142E0(Wx) 030D19(Rx) 030D2E(Wx) 030D9A(Wx) 030D9D(Rx) 030DC5(Wx) 03E03F(Wi) 
; ram_06A8                              = $06A8 ; 03E03F(Wi) 



; sound engine addresses
ram_06A9_se                             = $06A9 ; 0102E3(Wx) 0142E3(Wx) 030DA7(Wx) 030DAC(Rx) 03E03F(Wi) 
; ram_06AA                              = $06AA ; 0102E3(Wx) 0142E3(Wx) 030DA7(Wx) 030DAC(Rx) 03E03F(Wi) 
; ram_06AB                              = $06AB ; 03E03F(Wi) 



; sound engine addresses
ram_06AC_se                             = $06AC ; 0101BC(Rx) 01024F(Rx) 010256(Rx) 01025B(Wx) 01050A(Wx) 010518(Wx) 0141BC(Rx) 01424F(Rx) 014256(Rx) 01425B(Wx) 01450A(Wx) 014518(Wx) 03024F(Rx) 0308D5(Wx) 030AF0(Rx) 030AFA(Rx) 030C87(Rx) 030C8E(Rx) 03E03F(Wi) 
; ram_06AD                              = $06AD ; 0101BC(Rx) 01024F(Rx) 010256(Rx) 01025B(Wx) 01050A(Wx) 010518(Wx) 0141BC(Rx) 01424F(Rx) 014256(Rx) 01425B(Wx) 01450A(Wx) 014518(Wx) 03024F(Rx) 0308D5(Wx) 030AF0(Rx) 030AFA(Rx) 030C87(Rx) 030C8E(Rx) 03E03F(Wi) 
; ram_06AE                              = $06AE ; 0308D5(Wx) 03E03F(Wi) 



; sound engine addresses
ram_06AF_se                             = $06AF ; 01023B(Rx) 010273(Wx) 010276(Rx) 01027B(Wx) 01050F(Wx) 01423B(Rx) 014273(Wx) 014276(Rx) 01427B(Wx) 01450F(Wx) 03023B(Rx) 030273(Wx) 030276(Rx) 03027B(Wx) 030C95(Rx) 03E03F(Wi) 
; ram_06B0                              = $06B0 ; 01023B(Rx) 010273(Wx) 010276(Rx) 01027B(Wx) 01050F(Wx) 01423B(Rx) 014273(Wx) 014276(Rx) 01427B(Wx) 01450F(Wx) 03023B(Rx) 030273(Wx) 030276(Rx) 03027B(Wx) 030C95(Rx) 03E03F(Wi) 
; ram_06B1                              = $06B1 ; 03E03F(Wi) 



; sound engine addresses
ram_06B2_se                             = $06B2 ; 01014D(Wx) 01414D(Wx) 030B96(Rx) 030CCF(Wx) 030CD2(Rx) 03E03F(Wi) 
; ram_06B3                              = $06B3 ; 01014D(Wx) 01414D(Wx) 030B96(Rx) 030CCF(Wx) 030CD2(Rx) 03E03F(Wi) 
; ram_06B4                              = $06B4 ; 03E03F(Wi) 



; sound engine addresses
ram_06B5_se                             = $06B5 ; 01024C(Wy) 01424C(Wy) 03024C(Wy) 030CA9(Ry) 03E03F(Wi) 
; ram_06B6                              = $06B6 ; 01024C(Wy) 01026A(Wy) 01424C(Wy) 01426A(Wy) 03024C(Wy) 030CA9(Ry) 03E03F(Wi) 
; ram_06B7                              = $06B7 ; 01024C(Wy) 01026A(Wy) 01424C(Wy) 01426A(Wy) 03024C(Wy) 030CA9(Ry) 03E03F(Wi) 
; ram_06B8                              = $06B8 ; 01024C(Wy) 01026A(Wy) 01424C(Wy) 01426A(Wy) 03024C(Wy) 030CA9(Ry) 03E03F(Wi) 
; ram_06B9                              = $06B9 ; 01024C(Wy) 01424C(Wy) 03024C(Wy) 030CA9(Ry) 03E03F(Wi) 
; ram_06BA                              = $06BA ; 01024C(Wy) 01026A(Wy) 01424C(Wy) 01426A(Wy) 03024C(Wy) 030CA9(Ry) 03E03F(Wi) 
; ram_06BB                              = $06BB ; 01024C(Wy) 01026A(Wy) 01424C(Wy) 01426A(Wy) 03024C(Wy) 030CA9(Ry) 03E03F(Wi) 
; ram_06BC                              = $06BC ; 01024C(Wy) 01026A(Wy) 01424C(Wy) 01426A(Wy) 03024C(Wy) 030CA9(Ry) 03E03F(Wi) 
; ram_06BD                              = $06BD ; 03E03F(Wi) 



; free address
; ram_06BE                              = $06BE ; 03E03F(Wi) 



; sound engine addresses
ram_06BF_se                             = $06BF ; 010247(Wy) 014247(Wy) 030247(Wy) 030CAE(Ry) 03E03F(Wi) 
; ram_06C0                              = $06C0 ; 010247(Wy) 010265(Wy) 014247(Wy) 014265(Wy) 030247(Wy) 030CAE(Ry) 03E03F(Wi) 
; ram_06C1                              = $06C1 ; 010247(Wy) 010265(Wy) 014247(Wy) 014265(Wy) 030247(Wy) 030CAE(Ry) 03E03F(Wi) 
; ram_06C2                              = $06C2 ; 010247(Wy) 010265(Wy) 014247(Wy) 014265(Wy) 030247(Wy) 030CAE(Ry) 03E03F(Wi) 
; ram_06C3                              = $06C3 ; 010247(Wy) 014247(Wy) 030247(Wy) 030CAE(Ry) 03E03F(Wi) 
; ram_06C4                              = $06C4 ; 010247(Wy) 010265(Wy) 014247(Wy) 014265(Wy) 030247(Wy) 030CAE(Ry) 03E03F(Wi) 
; ram_06C5                              = $06C5 ; 010247(Wy) 010265(Wy) 014247(Wy) 014265(Wy) 030247(Wy) 030CAE(Ry) 03E03F(Wi) 
; ram_06C6                              = $06C6 ; 010247(Wy) 010265(Wy) 014247(Wy) 014265(Wy) 030247(Wy) 030CAE(Ry) 03E03F(Wi) 
; ram_06C7                              = $06C7 ; 03E03F(Wi) 



; sound engine address
ram_06C8_se                             = $06C8 ; 0307A9(W)  030912(W)  030A0F(R)  030A14(W)  030A17(R)  030A28(W)  03E03F(Wi) 



; sound engine address
; 00 = 
; 01 = 
ram_06C9_se_flag                        = $06C9 ; 0010EC(W)  03079D(W)  03099E(R)  030A7B(R)  038A5B(W)  03BA62(W)  03E03F(Wi) 



; free addresses
; ram_06CA                              = $06CA ; 03E03F(Wi) 
; ram_06CB                              = $06CB ; 03E03F(Wi) 
; ram_06CC                              = $06CC ; 03E03F(Wi) 
; ram_06CD                              = $06CD ; 03E03F(Wi) 
; ram_06CE                              = $06CE ; 03E03F(Wi) 
; ram_06CF                              = $06CF ; 03E03F(Wi) 
; ram_06D0                              = $06D0 ; 03E03F(Wi) 
; ram_06D1                              = $06D1 ; 03E03F(Wi) 
; ram_06D2                              = $06D2 ; 03E03F(Wi) 
; ram_06D3                              = $06D3 ; 03E03F(Wi) 
; ram_06D4                              = $06D4 ; 03E03F(Wi) 
; ram_06D5                              = $06D5 ; 03E03F(Wi) 
; ram_06D6                              = $06D6 ; 03E03F(Wi) 
; ram_06D7                              = $06D7 ; 03E03F(Wi) 



; todo есть ссылка на 06D8, возможно начало массива
; еще ссылка на 06DF
ram_06D8                                = $06D8 ; 03E03F(Wi) 
ram_06D9                                = $06D9 ; 03E03F(Wi) 
ram_06DA                                = $06DA ; 03E03F(Wi) 
ram_06DB                                = $06DB ; 03E03F(Wi) 
ram_06DC                                = $06DC ; 03E03F(Wi) 
ram_06DD                                = $06DD ; 03E03F(Wi) 
ram_06DE                                = $06DE ; 03E03F(Wi) 
ram_06DF                                = $06DF ; 03E03F(Wi) 



; 06E0-076F (90) 
ram_06E0_level_data                     = $06E0 ; 001192(Wx) 03CC4B(Wy) 03CD05(Wy) 03CE7D(Wy) 03D234(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06E1                              = $06E1 ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06E2                              = $06E2 ; 001192(Wx) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06E3                              = $06E3 ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06E4                              = $06E4 ; 001192(Wx) 003B05(Wy) 003CF4(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06E5                              = $06E5 ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06E6                              = $06E6 ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099E0(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06E7                              = $06E7 ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06E8                              = $06E8 ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 0099E0(Ry) 00B4C3(Ry) 00B4C8(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06E9                              = $06E9 ; 001192(Wx) 003AFB(Wy) 003CF4(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099F1(Ry) 00B4C3(Ry) 00B4C8(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06EA                              = $06EA ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06EB                              = $06EB ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099F1(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06EC                              = $06EC ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 03CC4B(Wy) 03CD05(Wy) 03CE7D(Wy) 03D234(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06ED                              = $06ED ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06EE                              = $06EE ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099E0(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06EF                              = $06EF ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099F1(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06F0                              = $06F0 ; 001192(Wx) 003B05(Wy) 003CF4(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 0099B4(Ry) 0099E0(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06F1                              = $06F1 ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099F1(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06F2                              = $06F2 ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 0099E0(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06F3                              = $06F3 ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099F1(Ry) 00B4C3(Ry) 00B4C8(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06F4                              = $06F4 ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099E0(Ry) 00B4C3(Ry) 00B4C8(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06F5                              = $06F5 ; 001192(Wx) 003AFB(Wy) 003CF4(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099F1(Ry) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06F6                              = $06F6 ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099E0(Ry) 033299(Ry) 0332A0(Wy) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06F7                              = $06F7 ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099F1(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06F8                              = $06F8 ; 001192(Wx) 009979(Ry) 009980(Wy) 0099C5(Ry) 03CC4B(Wy) 03CD05(Wy) 03CE7D(Wy) 03D234(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06F9                              = $06F9 ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06FA                              = $06FA ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 0099E0(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06FB                              = $06FB ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099F1(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06FC                              = $06FC ; 001192(Wx) 003B05(Wy) 003CF4(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099E0(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06FD                              = $06FD ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099F1(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06FE                              = $06FE ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099E0(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_06FF                              = $06FF ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099F1(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E862(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0700                              = $0700 ; 001192(Wx) 009979(Ry) 009980(Wy) 0099B4(Ry) 0099E0(Ry) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0701                              = $0701 ; 001192(Wx) 003AFB(Wy) 003CF4(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099F1(Ry) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0702                              = $0702 ; 001192(Wx) 003B0F(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 0099E0(Ry) 03328F(Wy) 033299(Ry) 0332A0(Wy) 0332AE(Ry) 0332B5(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0703                              = $0703 ; 001192(Wx) 003B12(Wy) 003CF4(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099F1(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0704                              = $0704 ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 03CC4B(Wy) 03CD05(Wy) 03CE7D(Wy) 03D234(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0705                              = $0705 ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0706                              = $0706 ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099E0(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0707                              = $0707 ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099F1(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0708                              = $0708 ; 001192(Wx) 003B05(Wy) 003CF4(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099E0(Ry) 00B4B9(Ry) 00B4BE(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0709                              = $0709 ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099F1(Ry) 00B4B9(Ry) 00B4BE(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_070A                              = $070A ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099E0(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_070B                              = $070B ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099F1(Ry) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_070C                              = $070C ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099E0(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_070D                              = $070D ; 001192(Wx) 003AFB(Wy) 003CF4(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099F1(Ry) 00B4B9(Ry) 00B4BE(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_070E                              = $070E ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 00B4B9(Ry) 00B4BE(Wy) 03328F(Wy) 033299(Ry) 0332A0(Wy) 0332AE(Ry) 0332B5(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_070F                              = $070F ; 001192(Wx) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099F1(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0710                              = $0710 ; 001192(Wx) 009979(Ry) 009980(Wy) 0099B4(Ry) 03CC4B(Wy) 03CD05(Wy) 03CE7D(Wy) 03D234(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0711                              = $0711 ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0712                              = $0712 ; 001192(Wx) 0099E0(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0713                              = $0713 ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 00B4C3(Ry) 00B4C8(Wy) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0714                              = $0714 ; 001192(Wx) 003B05(Wy) 003CF4(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099E0(Ry) 00B4C3(Ry) 00B4C8(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0715                              = $0715 ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099F1(Ry) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0716                              = $0716 ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099E0(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0717                              = $0717 ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099F1(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0718                              = $0718 ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099E0(Ry) 00B4B9(Ry) 00B4BE(Wy) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0719                              = $0719 ; 001192(Wx) 003AFB(Wy) 003CF4(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099F1(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_071A                              = $071A ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 0099E0(Ry) 03328F(Wy) 033299(Ry) 0332A0(Wy) 0332AE(Ry) 0332B5(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_071B                              = $071B ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099F1(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_071C                              = $071C ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CE7D(Wy) 03D234(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_071D                              = $071D ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_071E                              = $071E ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099E0(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_071F                              = $071F ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0720                              = $0720 ; 001192(Wx) 003B0F(Wy) 003CF4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099E0(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0721                              = $0721 ; 001192(Wx) 003B12(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099F1(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0722                              = $0722 ; 001192(Wx) 003B0F(Wy) 003CF4(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099E0(Ry) 00B4B9(Ry) 00B4BE(Wy) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0723                              = $0723 ; 001192(Wx) 003B12(Wy) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099F1(Ry) 00B4B9(Ry) 00B4BE(Wy) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0724                              = $0724 ; 001192(Wx) 003B0F(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099E0(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0725                              = $0725 ; 001192(Wx) 003B12(Wy) 003CF4(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099F1(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0726                              = $0726 ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099E0(Ry) 03328F(Wy) 0332AE(Ry) 0332B5(Wy) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0727                              = $0727 ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099F1(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0728                              = $0728 ; 001192(Wx) 009979(Ry) 009980(Wy) 0099C5(Ry) 03CC4B(Wy) 03CD05(Wy) 03CE7D(Wy) 03D234(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0729                              = $0729 ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_072A                              = $072A ; 001192(Wx) 0099E0(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_072B                              = $072B ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_072C                              = $072C ; 001192(Wx) 003B05(Wy) 003CF4(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099E0(Ry) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_072D                              = $072D ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099F1(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_072E                              = $072E ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099E0(Ry) 00B4B9(Ry) 00B4BE(Wy) 00B4C3(Ry) 00B4C8(Wy) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_072F                              = $072F ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099F1(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0730                              = $0730 ; 001192(Wx) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099E0(Ry) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0731                              = $0731 ; 001192(Wx) 003AFB(Wy) 003CF4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099F1(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0732                              = $0732 ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 0099E0(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0733                              = $0733 ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099F1(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0734                              = $0734 ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CE7D(Wy) 03D234(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0735                              = $0735 ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0736                              = $0736 ; 001192(Wx) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099E0(Ry) 00B4B9(Ry) 00B4BE(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0737                              = $0737 ; 001192(Wx) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099F1(Ry) 00B40B(Ry) 00B417(Wy) 00B4B9(Ry) 00B4BE(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0738                              = $0738 ; 001192(Wx) 003B05(Wy) 003CF4(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099E0(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0739                              = $0739 ; 001192(Wx) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099F1(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_073A                              = $073A ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099E0(Ry) 00B4B9(Ry) 00B4BE(Wy) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_073B                              = $073B ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099F1(Ry) 00B4B9(Ry) 00B4BE(Wy) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_073C                              = $073C ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099E0(Ry) 00B4B9(Ry) 00B4BE(Wy) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_073D                              = $073D ; 001192(Wx) 003AFB(Wy) 003CF4(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099F1(Ry) 00B4B9(Ry) 00B4BE(Wy) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_073E                              = $073E ; 001192(Wx) 0098FA(Ry) 0098FF(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099E0(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_073F                              = $073F ; 001192(Wx) 0098FA(Ry) 0098FF(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 0099F1(Ry) 00B40B(Ry) 00B417(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0740                              = $0740 ; 001192(Wx) 03CC4B(Wy) 03CD05(Wy) 03CE7D(Wy) 03D234(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0741                              = $0741 ; 001192(Wx) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0742                              = $0742 ; 001192(Wx) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0743                              = $0743 ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0744                              = $0744 ; 001192(Wx) 003B05(Wy) 003CF4(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0745                              = $0745 ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0746                              = $0746 ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 0098EF(Ry) 0098F4(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0747                              = $0747 ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 009986(Ry) 00998D(Wy) 0099B4(Ry) 0099F1(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0748                              = $0748 ; 001192(Wx) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0749                              = $0749 ; 001192(Wx) 003AFB(Wy) 003CF4(Wy) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_074A                              = $074A ; 001192(Wx) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_074B                              = $074B ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_074C                              = $074C ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 03CC4B(Wy) 03CD05(Wy) 03CE7D(Wy) 03D234(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_074D                              = $074D ; 001192(Wx) 0099C5(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_074E                              = $074E ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099C5(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_074F                              = $074F ; 001192(Wx) 009986(Ry) 00998D(Wy) 0099C5(Ry) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0750                              = $0750 ; 001192(Wx) 003B05(Wy) 003CF4(Wy) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0751                              = $0751 ; 001192(Wx) 009986(Ry) 00998D(Wy) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0752                              = $0752 ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 0098EF(Ry) 0098F4(Wy) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0753                              = $0753 ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099F1(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0754                              = $0754 ; 001192(Wx) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 00B4B9(Ry) 00B4BE(Wy) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0755                              = $0755 ; 001192(Wx) 003AFB(Wy) 003CF4(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0756                              = $0756 ; 001192(Wx) 003B0F(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0757                              = $0757 ; 001192(Wx) 003B12(Wy) 003CF4(Wy) 009986(Ry) 00998D(Wy) 03CC4B(Wy) 03CD05(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0758                              = $0758 ; 001192(Wx) 03CE7D(Wy) 03D234(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0759                              = $0759 ; 001192(Wx) 0099C5(Ry) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_075A                              = $075A ; 001192(Wx) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_075B                              = $075B ; 001192(Wx) 0099C5(Ry) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_075C                              = $075C ; 001192(Wx) 003B05(Wy) 003CF4(Wy) 0099C5(Ry) 0099E0(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_075D                              = $075D ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 0099C5(Ry) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_075E                              = $075E ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 0099C5(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_075F                              = $075F ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 0099C5(Ry) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0760                              = $0760 ; 001192(Wx) 0099E0(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0761                              = $0761 ; 001192(Wx) 003AFB(Wy) 003CF4(Wy) 009979(Ry) 009980(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0762                              = $0762 ; 001192(Wx) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0763                              = $0763 ; 001192(Wx) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0764                              = $0764 ; 001192(Wx) 03CE7D(Wy) 03D234(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0765                              = $0765 ; 001192(Wx) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0766                              = $0766 ; 001192(Wx) 00B4B9(Ry) 00B4BE(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0767                              = $0767 ; 001192(Wx) 00B4B9(Ry) 00B4BE(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0768                              = $0768 ; 001192(Wx) 003B05(Wy) 003CF4(Wy) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_0769                              = $0769 ; 001192(Wx) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_076A                              = $076A ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 0099E0(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_076B                              = $076B ; 001192(Wx) 00964F(Ry) 009654(Wy) 00965A(Ry) 00965F(Wy) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_076C                              = $076C ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 0098FA(Ry) 0098FF(Wy) 0099E0(Ry) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_076D                              = $076D ; 001192(Wx) 003AFB(Wy) 003CF4(Wy) 0098EF(Ry) 0098F4(Wy) 009979(Ry) 009980(Wy) 009986(Ry) 00998D(Wy) 0099F1(Ry) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_076E                              = $076E ; 001192(Wx) 0098EF(Ry) 0098F4(Wy) 03791E(Ry) 037A1A(Ry) 037A22(Ry) 037A45(Wy) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 
; ram_076F                              = $076F ; 001192(Wx) 0099F1(Ry) 03CECD(Wy) 03D2AE(Wy) 03E03F(Wi) 03E84F(Wx) 03FD45(Ry) 03FD53(Ry) 



; 
ram_0770                                = $0770 ; 000434(Wx) 03D3CD(Ry) 03E03F(Wi) 03E84F(Wx) 
; ram_0771                              = $0771 ; 000434(Wx) 03D3CD(Ry) 03E03F(Wi) 03E84F(Wx) 
; ram_0772                              = $0772 ; 000434(Wx) 03D3CD(Ry) 03E03F(Wi) 03E84F(Wx) 
; ram_0773                              = $0773 ; 000434(Wx) 03D3CD(Ry) 03E03F(Wi) 03E84F(Wx) 
; ram_0774                              = $0774 ; 000434(Wx) 03D3CD(Ry) 03E03F(Wi) 03E84F(Wx) 
; ram_0775                              = $0775 ; 000434(Wx) 03D3CD(Ry) 03E03F(Wi) 03E84F(Wx) 
; ram_0776                              = $0776 ; 000434(Wx) 03D3CD(Ry) 03E03F(Wi) 03E84F(Wx) 
; ram_0777                              = $0777 ; 000434(Wx) 03D3CD(Ry) 03E03F(Wi) 03E84F(Wx) 



; 
ram_0778                                = $0778 ; 000434(Wx) 03D3DE(Ry) 03E03F(Wi) 03E84F(Wx) 
; ram_0779                              = $0779 ; 000434(Wx) 03D3DE(Ry) 03E03F(Wi) 03E84F(Wx) 
; ram_077A                              = $077A ; 000434(Wx) 03D3DE(Ry) 03E03F(Wi) 03E84F(Wx) 
; ram_077B                              = $077B ; 000434(Wx) 03D3DE(Ry) 03E03F(Wi) 03E84F(Wx) 
; ram_077C                              = $077C ; 000434(Wx) 03D3DE(Ry) 03E03F(Wi) 03E84F(Wx) 
; ram_077D                              = $077D ; 000434(Wx) 03D3DE(Ry) 03E03F(Wi) 03E84F(Wx) 
; ram_077E                              = $077E ; 000434(Wx) 03D3DE(Ry) 03E03F(Wi) 03E84F(Wx) 
; ram_077F                              = $077F ; 000434(Wx) 03D3DE(Ry) 03E03F(Wi) 03E84F(Wx) 



; up to 07C2?
ram_0780                                = $0780 ; 001186(Wx) 0025FD(W)  002624(R)  00262E(R)  0026C1(R)  0026EF(R)  0026F5(R)  002780(R)  002795(R)  0027E5(R)  002881(R)  0028DE(R)  00290C(R)  00297C(R)  0029E8(R)  0029FD(R)  002A24(R)  002A89(R)  002ACF(R)  002C38(R)  002C56(R)  003736(W)  003741(W)  003763(W)  005FB9(R)  005FC5(W)  0060ED(R)  00611B(W)  00615E(W)  006161(W)  00637A(R)  006384(W)  00683C(Wx) 006889(W)  006A13(W)  006B3B(W)  006E7F(R)  006F36(R)  00709F(R)  0070B7(W)  0070C1(R)  0070CF(R)  0070D2(W)  0070EE(R)  0070FA(W)  007101(R)  00710D(W)  0071B0(R)  00720C(R)  0073FD(R)  007492(R)  007530(R)  007570(R)  007579(R)  007689(Wx) 0321C6(W)  032229(W)  03222C(R)  032237(W)  03223E(W)  032247(R)  032269(R)  03E03F(Wi) 03E84F(Wx) 03F46B(W)  
ram_0781                                = $0781 ; 001186(Wx) 00265D(W)  00266D(R)  0026A0(W)  0026A6(W)  0026D0(R)  0026E5(W)  0027B4(W)  0028ED(R)  002902(W)  00372D(W)  003747(R)  005F9D(W)  005FB6(W)  00636B(W)  00636E(R)  006377(W)  00683C(Wx) 00688E(W)  006A18(W)  006B40(W)  006E89(R)  006F46(R)  006F63(R)  007092(R)  007114(R)  007120(W)  007127(R)  007133(W)  0071A4(R)  0071F8(R)  0073F7(R)  00748F(R)  00751E(R)  00756B(R)  007574(R)  007689(Wx) 02B4DD(W)  02B6F0(R)  02B6F8(W)  02BA46(R)  03E03F(Wi) 03E84F(Wx) 03F46F(W)  



; up to 07C1?
ram_0782                                = $0782 ; 001186(Wx) 001815(Wy) 001EF3(W)  001F17(W)  002090(W)  002661(W)  002667(W)  002698(W)  002917(W)  002938(R)  00293D(W)  003732(W)  003756(R)  003766(W)  003B56(W)  006409(R)  00658F(Rx) 00683C(Wx) 006E83(R)  006E86(W)  006F3A(R)  006F3D(W)  007400(W)  007484(R)  007689(Wx) 0093FD(Wy) 009D57(Wy) 009E97(Wx) 009FCB(Rx) 009FFF(Wx) 00A00B(Rx) 00A045(Wx) 00B130(Wy) 02B1C2(W)  02B26C(R)  02B32B(R)  02B348(R)  02B376(R)  02B3A0(R)  02B3C6(R)  02B3EF(R)  02B55A(R)  032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 
    ram_copy_partner_0782                   = $0782 ; a copy of ram_partner
ram_0783                                = $0783 ; 001186(Wx) 001815(Wy) 001EF8(W)  001F12(W)  001F1F(W)  002088(W)  0026FC(W)  002743(R)  00373A(R)  00375D(W)  003B67(W)  006414(R)  00658F(Rx) 00683C(Wx) 00689D(W)  006A42(W)  006A69(R)  006A76(W)  006A8C(W)  006AC8(W)  006AE1(R)  006AEC(W)  006AF7(W)  006BF3(R)  006BFE(W)  0073FA(W)  007481(R)  007689(Wx) 0093FD(Wy) 009D57(Wy) 009E97(Wx) 009FCB(Rx) 009FFF(Wx) 00A00B(Rx) 00A045(Wx) 00AD28(Wy) 00B130(Wy) 00DF43(W)  027456(Wy) 02745D(Ry) 02B1E7(W)  02B272(W)  02B27C(R)  02B2B7(W)  02B2CD(W)  03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_0784                                = $0784 ; 001186(Wx) 001815(Wy) 001EFD(W)  001F0F(W)  002702(W)  002736(R)  00274B(R)  002912(W)  002925(R)  002932(R)  0034F2(W)  00391E(W)  003937(W)  003B59(W)  003B92(R)  003BBB(W)  003C04(Rx) 003CD0(Rx) 003CD8(Rx) 00641D(R)  00658F(Rx) 00683C(Wx) 0068A0(W)  006B1A(W)  006B45(W)  006C03(R)  006C5A(W)  007170(R)  007210(R)  007231(R)  00723B(W)  00724A(R)  007252(W)  00725B(R)  007265(W)  0072B5(R)  007689(Wx) 0093FD(Wy) 009D57(Wy) 009E97(Wx) 009FCB(Rx) 009FFF(Wx) 00A00B(Rx) 00A045(Wx) 00B130(Wy) 00DF48(W)  027456(Wy) 02745D(Ry) 02B222(W)  02B254(W)  02B25B(W)  032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_0785                                = $0785 ; 001186(Wx) 001815(Wy) 002708(W)  002768(R)  0034EB(W)  00392B(W)  00392E(R)  00393E(R)  003950(R)  003987(R)  0039A0(R)  0039B2(R)  003B6A(W)  003BA9(R)  003BB1(W)  003BB6(W)  003BF2(Rx) 003C7E(Rx) 003CB9(Rx) 0060F3(Ry) 00658F(Rx) 00683C(Wx) 0068A3(W)  006B1D(W)  006B48(W)  006C06(R)  006C12(W)  006C54(W)  007168(R)  007689(Wx) 0093FD(Wy) 009D57(Wy) 009E97(Wx) 009FCB(Rx) 009FFF(Wx) 00A00B(Rx) 00A045(Wx) 00AD28(Wy) 00B130(Wy) 00DDEC(W)  00DF70(R)  00DF73(W)  00DF92(R)  00DF97(W)  027456(Wy) 02745D(Ry) 02B34E(W)  02B358(W)  02B390(R)  02B39D(W)  03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_0786                                = $0786 ; 001186(Wx) 001815(Wy) 00270E(W)  002770(R)  0034EE(W)  003610(R)  003615(R)  00362F(W)  00363A(W)  003B5C(W)  003BC3(R)  003BEA(W)  003C04(Rx) 003CD0(Rx) 003CD8(Rx) 0064BD(R)  00658F(Rx) 00683C(Wx) 0069CF(W)  0074A8(R)  007553(R)  00755D(W)  007584(R)  007596(R)  007689(Wx) 0093FD(Wy) 009D57(Wy) 009E97(Wx) 009FCB(Rx) 009FFF(Wx) 00A00B(Rx) 00A045(Wx) 00B9C2(R)  00B9DC(W)  00B9F3(R)  00BA08(R)  00DDF1(W)  00DF78(W)  00DF7B(R)  00DF9C(W)  00DF9F(R)  027456(Wy) 02745D(Ry) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_0787                                = $0787 ; 001186(Wx) 001815(Wy) 002714(W)  002775(W)  002A4E(W)  002AC4(W)  002B29(W)  0034F5(W)  003602(W)  003634(W)  003B6D(W)  003BDA(R)  003BE2(W)  003BE6(W)  003BF2(Rx) 003C7E(Rx) 003CB9(Rx) 0060F3(Ry) 00658F(Rx) 00683C(Wx) 0069D5(W)  006F6C(R)  006F71(W)  00749D(R)  007556(W)  007689(Wx) 0093FD(Wy) 009D57(Wy) 009E97(Wx) 009FCB(Rx) 009FFF(Wx) 00A00B(Rx) 00A045(Wx) 00B130(Wy) 00B9BB(R)  00B9EC(R)  00DE01(W)  00DF64(W)  027456(Wy) 02745D(Ry) 02B503(W)  02B50F(R)  03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_0788                                = $0788 ; 001186(Wx) 001815(Wy) 002719(W)  00273F(R)  002746(W)  003A63(W)  003A70(R)  003A7E(W)  003A81(R)  003B72(W)  003B82(W)  00658F(Rx) 00683C(Wx) 0069D8(W)  006F66(R)  006F69(W)  007689(Wx) 007725(W)  00773A(R)  007741(R)  007766(R)  00776E(R)  00777A(R)  007787(R)  007867(W)  007877(R)  00788F(R)  0078A0(R)  0078D4(R)  0093FD(Wy) 009D57(Wy) 009E97(Wx) 009FCB(Rx) 009FFF(Wx) 00A00B(Rx) 00A045(Wx) 00B9B3(R)  00B9E4(R)  027456(Wy) 02745D(Ry) 02B370(W)  02B3A3(W)  02B3A6(R)  02B3B0(W)  032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_0789                                = $0789 ; 001186(Wx) 001815(Wy) 00271C(W)  00271F(W)  002750(R)  002755(W)  002764(R)  00276B(W)  003DEA(R)  003DFE(W)  0060F3(Ry) 00640C(W)  006436(R)  006456(R)  0064A3(W)  0064D8(R)  00658F(Rx) 006592(Wx) 00683C(Wx) 007689(Wx) 007736(W)  007862(W)  007885(R)  0078D9(R)  0093FD(Wy) 009D57(Wy) 009E97(Wx) 009FCB(Rx) 009FFF(Wx) 00A00B(Rx) 027456(Wy) 02745D(Ry) 02B13F(W)  02B4DA(R)  02B60B(W)  03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_078A                                = $078A ; 001186(Wx) 001815(Wy) 0027A8(W)  00292F(R)  002935(W)  00294E(R)  005FF8(R)  00641A(W)  006421(R)  00642D(R)  00645D(R)  0064AF(W)  0064CB(R)  006592(Wx) 006598(R)  00659E(W)  0065A5(R)  0065B0(R)  00683C(Wx) 00765D(W)  007689(Wx) 0076FE(R)  00778F(W)  0093FD(Wy) 009D57(Wy) 009E97(Wx) 009FCB(Rx) 009FFF(Wx) 00A00B(Rx) 00A045(Wx) 00BAE4(W)  027456(Wy) 02745D(Ry) 02B209(W)  02B230(W)  02B37C(W)  02B388(W)  02B3F5(W)  02B3FD(W)  032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_078B                                = $078B ; 001186(Wx) 001815(Wy) 0027AF(W)  002944(R)  00294B(W)  006003(R)  0060F3(Ry) 006424(W)  006453(R)  0064A9(W)  0064EC(R)  006592(Wx) 0065A1(R)  0065A8(W)  0065E2(R)  00683C(Wx) 007331(R)  007689(Wx) 0077E8(R)  0077EB(W)  0093FD(Wy) 009D57(Wy) 009E97(Wx) 00A00B(Rx) 00BAE9(W)  027456(Wy) 02745D(Ry) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 



; sometimes 2006 lo
ram_078C                                = $078C ; 001186(Wx) 001815(Wy) 0027A3(W)  005FEC(R)  006592(Wx) 0065C9(R)  00683C(Wx) 0073DD(R)  0073E7(W)  007405(W)  007689(Wx) 0093FD(Wy) 009D57(Wy) 009E97(Wx) 00A00B(Rx) 00B9E1(W)  00BA1F(R)  027456(Wy) 02745D(Ry) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 



; sometimes 2006 hi
ram_078D                                = $078D ; 001186(Wx) 001815(Wy) 00279D(W)  005FEF(R)  0060F3(Ry) 006592(Wx) 0065C3(R)  00683C(Wx) 0073CF(R)  0073D9(W)  007550(W)  007689(Wx) 0093FD(Wy) 009D57(Wy) 009E97(Wx) 00BA05(W)  00BA24(R)  027456(Wy) 02745D(Ry) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 



; 
ram_078E_scroll_X                       = $078E ; 001186(Wx) 001815(Wy) 00649D(R)  006592(Wx) 0065CF(R)  00683C(Wx) 007689(Wx) 0093FD(Wy) 009D57(Wy) 009E97(Wx) 00BA1C(W)  032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 



; todo
ram_078F                                = $078F ; 001186(Wx) 001815(Wy) 0060F3(Ry) 0064AC(R)  006592(Wx) 00683C(Wx) 00691A(W)  00694C(W)  007689(Wx) 0076A1(R)  0076A7(R)  0077C3(W)  007800(R)  007806(R)  007914(W)  00791B(R)  00A00B(Rx) 00B9FF(W)  00BA50(Wy) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_0790                                = $0790 ; 001186(Wx) 001815(Wy) 00188D(R)  0018BA(R)  0018BF(W)  0018D5(R)  0018E4(R)  0018E9(W)  00298B(R)  002990(R)  002ABF(W)  002C47(R)  002D31(W)  0064A6(R)  006592(Wx) 00683C(Wx) 007593(Wy) 007696(Wy) 0076B4(Ry) 0077BA(Ry) 0077CA(Ry) 007811(Ry) 0093DE(Rx) 0093EC(Rx) 0093F4(Rx) 00A8F6(Wx) 00AAAF(Wx) 00AC77(Ry) 00AC7A(Wx) 00ACBA(Rx) 00AE6A(Wx) 00BA16(W)  00BA50(Wy) 02B331(W)  032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_0791                                = $0791 ; 001186(Wx) 001815(Wy) 001893(R)  0018C2(R)  0018C7(W)  0018CE(R)  0018DC(R)  0018E1(W)  0018EC(R)  0027CF(Ry) 00282D(Wy) 0060F3(Ry) 00683C(Wx) 00684B(W)  007593(Wy) 007696(Wy) 0076B4(Ry) 007811(Ry) 0093DE(Rx) 0093EC(Rx) 0093F4(Rx) 00A8F6(Wx) 00AAAF(Wx) 00AC77(Ry) 00AC7A(Wx) 00ACBA(Rx) 00AD25(Rx) 00AD2B(Wx) 00AE6A(Wx) 00B9B0(W)  00BA2C(R)  00BA4B(W)  024284(Wx) 0242C5(Rx) 02436C(Wx) 024396(Rx) 0243A1(Rx) 02442C(Wx) 024477(Wx) 02B336(W)  03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_0792                                = $0792 ; 001186(Wx) 001815(Wy) 0027CF(Ry) 00282D(Wy) 0064C0(W)  0064DE(R)  0064F6(R)  00683C(Wx) 007593(Wy) 007696(Wy) 007811(Ry) 0093DE(Rx) 0093EC(Rx) 0093F4(Rx) 00A8F6(Wx) 00AAAF(Wx) 00AC77(Ry) 00AC7A(Wx) 00ACBA(Rx) 00AE6A(Wx) 024284(Wx) 0242C5(Rx) 02436C(Wx) 024396(Rx) 02442C(Wx) 024477(Wx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_0793                                = $0793 ; 001186(Wx) 001815(Wy) 0027CF(Ry) 00282D(Wy) 0060F3(Ry) 0064B2(R)  00683C(Wx) 006850(W)  0069D2(W)  007696(Wy) 0076B4(Ry) 007811(Ry) 0093DE(Rx) 0093EC(Rx) 0093F4(Rx) 00AAAF(Wx) 00AC77(Ry) 00AC7A(Wx) 00ACBA(Rx) 00AD25(Rx) 00AD2B(Wx) 00AE6A(Wx) 024284(Wx) 0242C5(Rx) 02442C(Wx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_0794                                = $0794 ; 001186(Wx) 001815(Wy) 0027CF(Ry) 00282D(Wy) 00683C(Wx) 007696(Wy) 007811(Ry) 0093DE(Rx) 0093EC(Rx) 0093F4(Rx) 00AAAF(Wx) 00AC77(Ry) 00AC7A(Wx) 00AD25(Rx) 00AD2B(Wx) 00AE6A(Wx) 00BB01(Rx) 00BB0A(Wx) 024284(Wx) 0242C5(Rx) 02436C(Wx) 024396(Rx) 0243A1(Rx) 02442C(Wx) 024477(Wx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_0795                                = $0795 ; 001186(Wx) 001815(Wy) 0060F3(Ry) 00683C(Wx) 007593(Wy) 007696(Wy) 0076B4(Ry) 007811(Ry) 0093DE(Rx) 0093F4(Rx) 00AAAF(Wx) 00AC77(Ry) 00AC7A(Wx) 00AE6A(Wx) 00BAD0(Wy) 00BB01(Rx) 00BB0A(Wx) 024284(Wx) 0242C5(Rx) 02436C(Wx) 024396(Rx) 02442C(Wx) 024477(Wx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_0796                                = $0796 ; 001186(Wx) 001815(Wy) 00683C(Wx) 007696(Wy) 0077BA(Ry) 007811(Ry) 0093DE(Rx) 0093EC(Rx) 0093F4(Rx) 00AAAF(Wx) 00AC77(Ry) 00AC7A(Wx) 00AE6A(Wx) 00BAD0(Wy) 00BB01(Rx) 00BB0A(Wx) 02436C(Wx) 024396(Rx) 024477(Wx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_0797                                = $0797 ; 001186(Wx) 001815(Wy) 0060F3(Ry) 00683C(Wx) 007593(Wy) 007696(Wy) 0076B4(Ry) 007811(Ry) 0093DE(Rx) 0093EC(Rx) 0093F4(Rx) 00AAAF(Wx) 00AC77(Ry) 00AC7A(Wx) 00AE6A(Wx) 00BAD0(Wy) 00BB01(Rx) 00BB0A(Wx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_0798                                = $0798 ; 001186(Wx) 001815(Wy) 00683C(Wx) 007593(Wy) 007696(Wy) 0076B4(Ry) 007811(Ry) 0093DE(Rx) 0093F4(Rx) 00AAAF(Wx) 00AC77(Ry) 00AC7A(Wx) 00BAD0(Wy) 00BB01(Rx) 00BB0A(Wx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_0799                                = $0799 ; 001186(Wx) 001815(Wy) 0060F3(Ry) 00683C(Wx) 007696(Wy) 007811(Ry) 0093DE(Rx) 0093EC(Rx) 0093F4(Rx) 00A8F6(Wx) 00AAAF(Wx) 00AC77(Ry) 00AC7A(Wx) 00BAD0(Wy) 00BB01(Rx) 00BB0A(Wx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_079A                                = $079A ; 001186(Wx) 001815(Wy) 00683C(Wx) 007593(Wy) 007696(Wy) 0076B4(Ry) 007811(Ry) 0093DE(Rx) 0093F4(Rx) 00AAAF(Wx) 00AC77(Ry) 00AC7A(Wx) 00BAD0(Wy) 00BB01(Rx) 00BB0A(Wx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_079B                                = $079B ; 001186(Wx) 001815(Wy) 0060F3(Ry) 00683C(Wx) 007696(Wy) 007811(Ry) 00AAAF(Wx) 00BAD0(Wy) 00BB01(Rx) 00BB0A(Wx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_079C                                = $079C ; 001186(Wx) 001815(Wy) 00683C(Wx) 007696(Wy) 007811(Ry) 00BAD0(Wy) 00BB01(Rx) 00BB0A(Wx) 02436C(Wx) 024396(Rx) 024477(Wx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_079D                                = $079D ; 001186(Wx) 001815(Wy) 0060F3(Ry) 00683C(Wx) 007696(Wy) 0077BA(Ry) 007811(Ry) 00BAD0(Wy) 00BB14(Wx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_079E                                = $079E ; 001186(Wx) 001815(Wy) 00683C(Wx) 007593(Wy) 007696(Wy) 0076B4(Ry) 007811(Ry) 00BAD0(Wy) 00BAF8(Rx) 00BAFB(Wx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_079F                                = $079F ; 001186(Wx) 001815(Wy) 0060F3(Ry) 00683C(Wx) 007696(Wy) 0076B4(Ry) 007811(Ry) 00BAD0(Wy) 00BAF8(Rx) 00BAFB(Wx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_07A0                                = $07A0 ; 001186(Wx) 001815(Wy) 0022D5(W)  00683C(Wx) 0076B7(Wx) 007943(W)  007958(Ry) 00796C(Ry) 00BAD0(Wy) 00BAF8(Rx) 00BAFB(Wx) 02B8B6(R)  02B958(W)  02B95B(R)  02B96C(R)  02BA5B(R)  032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
    ram_pal_buffer                          = $07A0 ; palette buffer, up to 07C2 (end token FF)
    ram_psw_buffer                          = $07A0 ; password buffer, up to 07A9?
ram_07A1                                = $07A1 ; 001186(Wx) 001815(Wy) 0022DA(W)  0060F3(Ry) 00683C(Wx) 0076B7(Wx) 00783E(Rx) 007933(Wx) 007958(Ry) 00796C(Ry) 0093EF(Ry) 0093F7(Wy) 009D36(W)  009D4F(W)  009E00(W)  009E84(W)  009EF8(R)  009F98(W)  009FC6(R)  00A002(W)  00AD5D(W)  00B10B(Ry) 00B113(Ry) 00B12A(Wy) 00BAD0(Wy) 00BAF8(Rx) 00BAFB(Wx) 02B677(R)  02B9AA(W)  03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07A2                                = $07A2 ; 001186(Wx) 001815(Wy) 0022BA(Wx) 00683C(Wx) 0076B7(Wx) 00783E(Rx) 007933(Wx) 007958(Ry) 00796C(Ry) 0093E1(Ry) 0093F7(Wy) 009D39(W)  009D52(W)  009D65(W)  009E39(W)  009EF2(R)  009F93(W)  00A008(R)  00A048(W)  00AD56(W)  00B125(Ry) 00B12A(Wy) 00BAD0(Wy) 00BAF8(Rx) 00BAFB(Wx) 02B696(R)  02B69C(W)  02B8C2(W)  032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07A3                                = $07A3 ; 001186(Wx) 001815(Wy) 0022BA(Wx) 0060F3(Ry) 00683C(Wx) 0076B7(Wx) 00783E(Rx) 007933(Wx) 007958(Ry) 00796C(Ry) 00BAD0(Wy) 00BAF8(Rx) 00BAFB(Wx) 02B69F(R)  02B6A4(W)  02B8C5(W)  02B90B(R)  03242B(Ry) 032430(Wy) 03C9D0(W)  03C9D3(R)  03C9DC(W)  03C9E6(W)  03C9F7(R)  03CA0A(W)  03CA21(W)  03CA2B(W)  03CA30(R)  03CFA2(W)  03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
    ram_unk_07A3_scroll_X                   = $07A3 ; 
ram_07A4                                = $07A4 ; 001186(Wx) 001815(Wy) 0022BA(Wx) 00683C(Wx) 0076B7(Wx) 00783E(Rx) 007933(Wx) 007958(Ry) 00796C(Ry) 00BAD0(Wy) 00BAF8(Rx) 00BAFB(Wx) 02B6A7(R)  02B6AC(W)  02B8C8(W)  02B910(R)  032422(Ry) 032428(Wy) 03C9C5(R)  03C9DF(W)  03CA28(W)  03CFA5(W)  03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
    ram_unk_07A4                            = $07A4 ; scroll X hi?
ram_07A5                                = $07A5 ; 001186(Wx) 001815(Wy) 0022BA(Wx) 0060F3(Ry) 0076B7(Wx) 00783E(Rx) 007933(Wx) 007958(Ry) 00796C(Ry) 009CEC(Wx) 00B03A(Rx) 00B06A(Wx) 00B2FE(Rx) 00BAD0(Wy) 00BAF8(Rx) 00BAFB(Wx) 02B8AA(W)  02BA69(R)  02BA77(W)  03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07A6                                = $07A6 ; 001186(Wx) 001815(Wy) 0022BA(Wx) 0076B7(Wx) 00783E(Rx) 007933(Wx) 007958(Ry) 00796C(Ry) 009CEC(Wx) 00B03A(Rx) 00B06A(Wx) 00B2FE(Rx) 00BAD0(Wy) 00BAF8(Rx) 00BAFB(Wx) 02B79D(W)  02B955(W)  02B9E8(R)  02B9ED(R)  02BA14(W)  032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07A7                                = $07A7 ; 001186(Wx) 001815(Wy) 0022BA(Wx) 0060F3(Ry) 0076B7(Wx) 00783E(Rx) 007933(Wx) 007958(Ry) 00796C(Ry) 009D03(Wx) 00AFBF(Rx) 00AFE2(Wx) 00B029(Wx) 00B0DD(Rx) 00B0F1(Wx) 00B185(Rx) 00B237(Wx) 00B2B1(Wx) 00BAD0(Wy) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07A8                                = $07A8 ; 001186(Wx) 001815(Wy) 0022BA(Wx) 0076B7(Wx) 00783E(Rx) 007933(Wx) 007958(Ry) 00796C(Ry) 009D03(Wx) 00AFBF(Rx) 00AFE2(Wx) 00B029(Wx) 00B0DD(Rx) 00B0F1(Wx) 00B185(Rx) 00B237(Wx) 00B2B1(Wx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07A9                                = $07A9 ; 001186(Wx) 001815(Wy) 0022BA(Wx) 0060F3(Ry) 007933(Wx) 009D17(Wx) 00B110(Rx) 00B11A(Rx) 00B122(Rx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07AA                                = $07AA ; 001186(Wx) 001815(Wy) 0022BA(Wx) 009D17(Wx) 00B110(Rx) 00B122(Rx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07AB                                = $07AB ; 001186(Wx) 001815(Wy) 0022BA(Wx) 0060F3(Ry) 00AFFC(Rx) 00B003(Wx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07AC                                = $07AC ; 001186(Wx) 001815(Wy) 0022BA(Wx) 00AFFC(Rx) 00B003(Wx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07AD                                = $07AD ; 001186(Wx) 001815(Wy) 0022BA(Wx) 0060F3(Ry) 00AFDC(Wx) 00AFF6(Rx) 00AFF9(Wx) 00B009(Rx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07AE                                = $07AE ; 001186(Wx) 001815(Wy) 0022BA(Wx) 00AFDC(Wx) 00AFF6(Rx) 00AFF9(Wx) 00B009(Rx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07AF                                = $07AF ; 001186(Wx) 001815(Wy) 0022BA(Wx) 0060F3(Ry) 00AFDF(Wx) 00AFEE(Rx) 00AFF1(Wx) 00B000(Rx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07B0                                = $07B0 ; 001186(Wx) 001815(Wy) 0022BA(Wx) 007148(R)  007152(W)  00AFDF(Wx) 00AFEE(Rx) 00AFF1(Wx) 00B000(Rx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07B1                                = $07B1 ; 001186(Wx) 001815(Wy) 0022BA(Wx) 0060F3(Ry) 009CF2(Wx) 00B0E2(Rx) 00B211(Rx) 00B2B5(Rx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07B2                                = $07B2 ; 001186(Wx) 001815(Wy) 0022BA(Wx) 009CF2(Wx) 00B0E2(Rx) 00B211(Rx) 00B2B5(Rx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07B3                                = $07B3 ; 001186(Wx) 001815(Wy) 0022BA(Wx) 009D1C(Wx) 00B0E7(Rx) 00B21C(Wx) 00B225(Rx) 00B2BC(Rx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07B4                                = $07B4 ; 001186(Wx) 001815(Wy) 0022BA(Wx) 009D1C(Wx) 00B0E7(Rx) 00B2BC(Rx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07B5                                = $07B5 ; 001186(Wx) 001815(Wy) 0022BA(Wx) 009D1F(Wx) 00B0EA(Rx) 00B222(Wx) 00B228(Rx) 00B2CA(Rx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07B6                                = $07B6 ; 001186(Wx) 001815(Wy) 0022BA(Wx) 009D1F(Wx) 00B0EA(Rx) 00B2CA(Rx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07B7                                = $07B7 ; 001186(Wx) 001815(Wy) 0022BA(Wx) 009CF8(Wx) 00B22F(Rx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07B8                                = $07B8 ; 001186(Wx) 001815(Wy) 0022BA(Wx) 009CF8(Wx) 00B22F(Rx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07B9                                = $07B9 ; 001186(Wx) 001815(Wy) 0022BA(Wx) 00AFC9(Wx) 00B29C(Rx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07BA                                = $07BA ; 001186(Wx) 001815(Wy) 0022BA(Wx) 00AFC9(Wx) 00B29C(Rx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07BB                                = $07BB ; 001186(Wx) 001815(Wy) 0022BA(Wx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07BC                                = $07BC ; 001186(Wx) 001815(Wy) 0022BA(Wx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07BD                                = $07BD ; 001186(Wx) 001815(Wy) 0022BA(Wx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07BE                                = $07BE ; 001186(Wx) 001815(Wy) 0022BA(Wx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07BF                                = $07BF ; 001186(Wx) 001815(Wy) 0022BA(Wx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07C0                                = $07C0 ; 001186(Wx) 001815(Wy) 0022BA(Wx) 032422(Ry) 032428(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
ram_07C1                                = $07C1 ; 001186(Wx) 001815(Wy) 002282(W)  0022BA(Wx) 03242B(Ry) 032430(Wy) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 



; written at 0x028146 and 0x028294 
; handler at 0x028515
; see con_sp_en
ram_spawner_script                      = $07C2 ; 001186(Wx) 0022DF(W)  013854(Rx) 028146(Wx) 028294(Wx) 02836D(Rx) 02837C(Wx) 028418(Wx) 0284FC(Rx) 028515(Rx) 028E01(Rx) 028EAC(Rx) 03E03F(Wi) 03E84F(Wx) 03ED18(Ri) 
; ram_07C3                              = $07C3 ; 013854(Rx) 028146(Wx) 028294(Wx) 02836D(Rx) 02837C(Wx) 028418(Wx) 0284FC(Rx) 028515(Rx) 028E01(Rx) 028EAC(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07C4                              = $07C4 ; 013854(Rx) 028146(Wx) 028294(Wx) 02836D(Rx) 02837C(Wx) 028418(Wx) 0284FC(Rx) 028515(Rx) 028E01(Rx) 028EAC(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07C5                              = $07C5 ; 013854(Rx) 028146(Wx) 028294(Wx) 02836D(Rx) 02837C(Wx) 028418(Wx) 0284FC(Rx) 028515(Rx) 028E01(Rx) 028EAC(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07C6                              = $07C6 ; 013854(Rx) 028146(Wx) 028294(Wx) 02836D(Rx) 02837C(Wx) 028418(Wx) 0284FC(Rx) 028515(Rx) 028E01(Rx) 028EAC(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07C7                              = $07C7 ; 013854(Rx) 02451E(Ry) 028146(Wx) 02837C(Wx) 0284FC(Rx) 028515(Rx) 028E01(Rx) 028EAC(Rx) 03E03F(Wi) 03E84F(Wx) 



; .... xxxx = subscript
; xxxx .... = ???
ram_spawner_subscript                   = $07C8 ; 013861(Wx) 028171(Rx) 028185(Wx) 0282B4(Wx) 028524(Rx) 0285F0(Wx) 028709(Wx) 02871A(Wx) 028725(Wx) 028823(Wx) 02883E(Wx) 028A6B(Wx) 028AFB(Wx) 028BFC(Rx) 028C03(Wx) 028C41(Wx) 028C50(Wx) 028C63(Wx) 028C6C(Rx) 028C71(Wx) 028F20(Wx) 0290E9(Wx) 029276(Wx) 02D4EA(Wx) 03E03F(Wi) 03E84F(Wx) 
; ram_07C9                              = $07C9 ; 013861(Wx) 028171(Rx) 028185(Wx) 0282B4(Wx) 028524(Rx) 0285F0(Wx) 02863D(Wx) 02871A(Wx) 028725(Wx) 028823(Wx) 02883E(Wx) 028A6B(Wx) 028AFB(Wx) 028BE1(Wx) 028BFC(Rx) 028C03(Wx) 028C41(Wx) 028C50(Wx) 028C63(Wx) 028C6C(Rx) 028C71(Wx) 028F20(Wx) 0291AF(Wx) 029223(Wx) 03E03F(Wi) 03E84F(Wx) 
; ram_07CA                              = $07CA ; 013861(Wx) 028171(Rx) 028185(Wx) 0282B4(Wx) 028524(Rx) 0285F0(Wx) 028709(Wx) 02871A(Wx) 028725(Wx) 028823(Wx) 02883E(Wx) 028A6B(Wx) 028AFB(Wx) 028BFC(Rx) 028C03(Wx) 028C41(Wx) 028C50(Wx) 028C63(Wx) 028C6C(Rx) 028C71(Wx) 028F20(Wx) 0290AC(Wx) 02914E(Wx) 02D4EA(Wx) 03E03F(Wi) 03E84F(Wx) 
; ram_07CB                              = $07CB ; 013861(Wx) 028171(Rx) 028185(Wx) 0282B4(Wx) 028524(Rx) 0285F0(Wx) 02863D(Wx) 028709(Wx) 02871A(Wx) 028725(Wx) 028823(Wx) 02883E(Wx) 028A6B(Wx) 028BFC(Rx) 028C03(Wx) 028C41(Wx) 028C50(Wx) 028C63(Wx) 028C6C(Rx) 028C71(Wx) 028F20(Wx) 029223(Wx) 02D4EA(Wx) 03E03F(Wi) 03E84F(Wx) 
; ram_07CC                              = $07CC ; 013861(Wx) 028171(Rx) 028185(Wx) 0282B4(Wx) 028524(Rx) 0285F0(Wx) 028709(Wx) 02871A(Wx) 028725(Wx) 028BFC(Rx) 028C03(Wx) 028C41(Wx) 028C50(Wx) 028C63(Wx) 028C6C(Rx) 028C71(Wx) 029223(Wx) 03E03F(Wi) 03E84F(Wx) 
; ram_07CD                              = $07CD ; 013861(Wx) 024533(Wy) 028171(Rx) 028185(Wx) 028524(Rx) 0285F0(Wx) 02863D(Wx) 028709(Wx) 02871A(Wx) 028725(Wx) 02883E(Wx) 028A6B(Wx) 028AFB(Wx) 028BFC(Rx) 028C03(Wx) 028C41(Wx) 028C50(Wx) 028C63(Wx) 028C6C(Rx) 028C71(Wx) 028F20(Wx) 0290AC(Wx) 029223(Wx) 02D4EA(Wx) 03E03F(Wi) 03E84F(Wx) 



; 
ram_spawner_delay                       = $07CE ; 02816C(Wx) 0282A7(Wx) 028635(Wx) 02866C(Wx) 028688(Wx) 028717(Wx) 02871E(Wx) 02878F(Wx) 028797(Wx) 0287D6(Wx) 028809(Wx) 028834(Wx) 028882(Wx) 0288EF(Wx) 028991(Wx) 028A34(Wx) 028A64(Wx) 028AAE(Wx) 028ACD(Wx) 028AE4(Wx) 028C55(Wx) 028C5C(Wx) 028C8F(Rx) 028CB5(Rx) 028E5C(Wx) 03E03F(Wi) 03E84F(Wx) 
; ram_07CF                              = $07CF ; 02816C(Wx) 0282A7(Wx) 028635(Wx) 028657(Wx) 02865B(Wx) 028696(Wx) 0286BF(Wx) 028717(Wx) 02871E(Wx) 0287D6(Wx) 028809(Wx) 028834(Wx) 028882(Wx) 028962(Wx) 028969(Wx) 028991(Wx) 028A1D(Wx) 028A34(Wx) 028A64(Wx) 028AAE(Wx) 028ACD(Wx) 028AE4(Wx) 028C55(Wx) 028C5C(Wx) 028C8F(Rx) 028CB5(Rx) 028E5C(Wx) 03E03F(Wi) 03E84F(Wx) 
; ram_07D0                              = $07D0 ; 02816C(Wx) 0282A7(Wx) 028635(Wx) 02866C(Wx) 028688(Wx) 028696(Wx) 0286BF(Wx) 028717(Wx) 02871E(Wx) 02878F(Wx) 028797(Wx) 0287D6(Wx) 028809(Wx) 028834(Wx) 028882(Wx) 0288EF(Wx) 028962(Wx) 028969(Wx) 028991(Wx) 028A1D(Wx) 028A34(Wx) 028A64(Wx) 028AAE(Wx) 028ACD(Wx) 028AE4(Wx) 028C55(Wx) 028C5C(Wx) 028C8F(Rx) 028CB5(Rx) 028E5C(Wx) 03E03F(Wi) 03E84F(Wx) 
; ram_07D1                              = $07D1 ; 02816C(Wx) 0282A7(Wx) 028635(Wx) 028657(Wx) 02865B(Wx) 028717(Wx) 02871E(Wx) 02878F(Wx) 028797(Wx) 0287D6(Wx) 028809(Wx) 028834(Wx) 028882(Wx) 028991(Wx) 028A64(Wx) 028AAE(Wx) 028ACD(Wx) 028AE4(Wx) 028C55(Wx) 028C5C(Wx) 028C8F(Rx) 028CB5(Rx) 028E5C(Wx) 03E03F(Wi) 03E84F(Wx) 
; ram_07D2                              = $07D2 ; 02816C(Wx) 0282A7(Wx) 0285F6(Wx) 028635(Wx) 02866C(Wx) 028688(Wx) 028717(Wx) 02871E(Wx) 0287D6(Wx) 028809(Wx) 0288EF(Wx) 028991(Wx) 028ACD(Wx) 028AE4(Wx) 028C55(Wx) 028C5C(Wx) 028C8F(Rx) 028CB5(Rx) 028E5C(Wx) 03E03F(Wi) 03E84F(Wx) 
; ram_07D3                              = $07D3 ; 02816C(Wx) 028635(Wx) 028657(Wx) 02865B(Wx) 028717(Wx) 02871E(Wx) 02878F(Wx) 028797(Wx) 0287D6(Wx) 028809(Wx) 028882(Wx) 028991(Wx) 028A64(Wx) 028AAE(Wx) 028ACD(Wx) 028AE4(Wx) 028C55(Wx) 028C5C(Wx) 028C8F(Rx) 028E5C(Wx) 03E03F(Wi) 03E84F(Wx) 



; 
ram_spawner_pos_Y_lo                    = $07D4 ; 028160(Wx) 0282AC(Wx) 0283FF(Rx) 028404(Wx) 028DFC(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07D5                              = $07D5 ; 028160(Wx) 0282AC(Wx) 0283FF(Rx) 028404(Wx) 028DFC(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07D6                              = $07D6 ; 028160(Wx) 0282AC(Wx) 0283FF(Rx) 028404(Wx) 028DFC(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07D7                              = $07D7 ; 028160(Wx) 0282AC(Wx) 0283FF(Rx) 028404(Wx) 028DFC(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07D8                              = $07D8 ; 028160(Wx) 0282AC(Wx) 0283FF(Rx) 028404(Wx) 028DFC(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07D9                              = $07D9 ; 028160(Wx) 028DFC(Rx) 03E03F(Wi) 03E84F(Wx) 



; 
ram_spawner_pos_X_lo                    = $07DA ; 028151(Wx) 02829A(Wx) 0283EB(Rx) 0283F0(Wx) 028A9D(Rx) 028DF7(Rx) 028E2B(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07DB                              = $07DB ; 028151(Wx) 02829A(Wx) 0283EB(Rx) 0283F0(Wx) 028A9D(Rx) 028DF7(Rx) 028E2B(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07DC                              = $07DC ; 028151(Wx) 02829A(Wx) 0283EB(Rx) 0283F0(Wx) 028A9D(Rx) 028DF7(Rx) 028E2B(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07DD                              = $07DD ; 028151(Wx) 02829A(Wx) 0283EB(Rx) 0283F0(Wx) 028A9D(Rx) 028DF7(Rx) 028E2B(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07DE                              = $07DE ; 028151(Wx) 02829A(Wx) 0283EB(Rx) 0283F0(Wx) 028DF7(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07DF                              = $07DF ; 028151(Wx) 0283EB(Rx) 0283F0(Wx) 028A9D(Rx) 028DF7(Rx) 028E2B(Rx) 03E03F(Wi) 03E84F(Wx) 



; pos X hi?
ram_07E0_spawner_cfg                    = $07E0 ; 02815A(Wx) 0282B1(Wx) 0283F3(Rx) 0283FA(Wx) 028407(Rx) 02840E(Wx) 028411(Rx) 0286D9(Rx) 028A73(Rx) 028AC5(Rx) 028AD5(Rx) 028B05(Rx) 028B2C(Rx) 028B42(Rx) 028B77(Rx) 028BC1(Rx) 028C12(Rx) 028C28(Rx) 028C67(Rx) 028C94(Rx) 028CCB(Rx) 028D7A(Rx) 028D83(Rx) 028D8B(Rx) 028D93(Rx) 028D9B(Rx) 028DDB(Rx) 029012(Rx) 0290B9(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07E1                              = $07E1 ; 02815A(Wx) 0282B1(Wx) 0283F3(Rx) 0283FA(Wx) 028407(Rx) 02840E(Wx) 028411(Rx) 0286D9(Rx) 028A73(Rx) 028AC5(Rx) 028AD5(Rx) 028B05(Rx) 028B2C(Rx) 028B42(Rx) 028B77(Rx) 028BC1(Rx) 028C12(Rx) 028C28(Rx) 028C67(Rx) 028C94(Rx) 028CCB(Rx) 028CE9(Rx) 028D7A(Rx) 028D83(Rx) 028D8B(Rx) 028D9B(Rx) 028DA9(Rx) 028DDB(Rx) 028EED(Rx) 028F04(Rx) 029012(Rx) 029163(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07E2                              = $07E2 ; 02815A(Wx) 0282B1(Wx) 0283F3(Rx) 0283FA(Wx) 028407(Rx) 02840E(Wx) 028411(Rx) 0286D9(Rx) 028A73(Rx) 028AC5(Rx) 028AD5(Rx) 028B05(Rx) 028B2C(Rx) 028B42(Rx) 028B77(Rx) 028BC1(Rx) 028C12(Rx) 028C28(Rx) 028C67(Rx) 028C94(Rx) 028CCB(Rx) 028D83(Rx) 028D8B(Rx) 028D9B(Rx) 028DA9(Rx) 028EED(Rx) 028F04(Rx) 029012(Rx) 0290F6(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07E3                              = $07E3 ; 02815A(Wx) 0282B1(Wx) 0283F3(Rx) 0283FA(Wx) 028407(Rx) 02840E(Wx) 028411(Rx) 0286D9(Rx) 028A73(Rx) 028AC5(Rx) 028AD5(Rx) 028B05(Rx) 028B2C(Rx) 028B42(Rx) 028B77(Rx) 028BC1(Rx) 028C12(Rx) 028C28(Rx) 028C67(Rx) 028C94(Rx) 028CCB(Rx) 028D7A(Rx) 028D83(Rx) 028D8B(Rx) 028D93(Rx) 028D9B(Rx) 028DA9(Rx) 028DDB(Rx) 028EED(Rx) 028F04(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07E4                              = $07E4 ; 02815A(Wx) 0282B1(Wx) 0283F3(Rx) 0283FA(Wx) 028407(Rx) 02840E(Wx) 028411(Rx) 0286D9(Rx) 028AC5(Rx) 028AD5(Rx) 028B05(Rx) 028B2C(Rx) 028B42(Rx) 028B63(Rx) 028B77(Rx) 028BC1(Rx) 028C12(Rx) 028C28(Rx) 028C67(Rx) 028C94(Rx) 028CCB(Rx) 028D7A(Rx) 028D83(Rx) 028D8B(Rx) 028D9B(Rx) 028DA9(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07E5                              = $07E5 ; 02815A(Wx) 0283F3(Rx) 0283FA(Wx) 0286D9(Rx) 028A73(Rx) 028AC5(Rx) 028AD5(Rx) 028B05(Rx) 028B42(Rx) 028B77(Rx) 028BC1(Rx) 028C12(Rx) 028C28(Rx) 028C67(Rx) 028C94(Rx) 028CCB(Rx) 028CE9(Rx) 028D7A(Rx) 028D83(Rx) 028D8B(Rx) 028D93(Rx) 028D9B(Rx) 028EED(Rx) 028F04(Rx) 029012(Rx) 03E03F(Wi) 03E84F(Wx) 



; pos Y hi?
ram_07E6_spawner_cfg                    = $07E6 ; 028166(Wx) 0282A1(Wx) 0286FB(Wx) 0286FF(Rx) 02870D(Rx) 02876C(Rx) 0288E6(Wx) 028A81(Wx) 028A97(Rx) 028AA7(Wx) 028B0D(Rx) 028C3E(Wx) 028C45(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07E7                              = $07E7 ; 028166(Wx) 0282A1(Wx) 0286FB(Wx) 02870D(Rx) 02876C(Rx) 028A81(Wx) 028A97(Rx) 028AA7(Wx) 028B0D(Rx) 028C3E(Wx) 028C45(Rx) 028CEE(Rx) 028D68(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07E8                              = $07E8 ; 028166(Wx) 0282A1(Wx) 0286FB(Wx) 0286FF(Rx) 02870D(Rx) 02876C(Rx) 0288E6(Wx) 028A81(Wx) 028A97(Rx) 028AA7(Wx) 028B0D(Rx) 028C3E(Wx) 028C45(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07E9                              = $07E9 ; 028166(Wx) 0282A1(Wx) 0286FB(Wx) 0286FF(Rx) 02870D(Rx) 02876C(Rx) 028A81(Wx) 028A97(Rx) 028AA7(Wx) 028B0D(Rx) 028C3E(Wx) 028C45(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07EA                              = $07EA ; 028166(Wx) 0282A1(Wx) 02861A(Wx) 028628(Rx) 0286FB(Wx) 0286FF(Rx) 02870D(Rx) 02876C(Rx) 0288E6(Wx) 0288FC(Rx) 028905(Wx) 028908(Rx) 028915(Wx) 028B0D(Rx) 028C3E(Wx) 028C45(Rx) 03E03F(Wi) 03E84F(Wx) 
; ram_07EB                              = $07EB ; 028166(Wx) 0286FB(Wx) 0286FF(Rx) 02870D(Rx) 02876C(Rx) 0288FC(Rx) 028908(Rx) 028915(Wx) 028A81(Wx) 028A97(Rx) 028AA7(Wx) 028B0D(Rx) 028C3E(Wx) 028C45(Rx) 028CEE(Rx) 028D68(Rx) 03E03F(Wi) 03E84F(Wx) 



; something to do with dragon boss?
ram_07EC                                = $07EC ; 001331(W)  001E13(Wx) 002322(W)  00232E(R)  002350(R)  002357(R)  00428F(W)  0042E8(R)  0043BD(W)  004462(W)  004903(W)  0054C8(R)  0067D3(R)  0067E5(R)  0068AB(W)  00694F(W)  006E34(R)  008DD9(Wy) 008DE0(Ry) 00A8AE(W)  00A97E(Wy) 00D544(W)  00D5AC(W)  00D5E3(R)  00DA94(W)  00DABB(W)  00DB1A(R)  00DB4D(R)  00DB60(R)  00DB65(W)  00DB6A(R)  00DC1E(R)  00DD9F(R)  00DDA8(R)  00DDAB(W)  00DE68(W)  00DF17(W)  023F5F(W)  024819(R)  0248FF(R)  02521C(R)  025225(R)  02522C(W)  025238(R)  025281(R)  0252BA(R)  0252E6(R)  025324(W)  025363(R)  02537C(R)  0253A6(R)  02664B(R)  026823(R)  0268A2(R)  0268C0(W)  0268E4(W)  0268EE(W)  0269C0(W)  026A57(R)  026A5E(W)  026BF2(W)  026CDE(W)  026D0F(R)  026D9B(R)  026DDB(R)  026E05(R)  026E10(R)  026E35(W)  0274FF(R)  0275C2(R)  0275CB(R)  0275D1(R)  027678(W)  027C7F(W)  027CDA(R)  0288FC(Rx) 028905(Wx) 028908(Rx) 028915(Wx) 02907E(Ry) 029081(Wy) 02908D(Wy) 02928E(W)  02DB1A(W)  02DD35(R)  02DD43(W)  02DD49(W)  0328EC(W)  03AE53(R)  03E03F(Wi) 03E3BD(W)  03E84F(Wx) 03F648(R)  03F650(R)  
ram_07ED                                = $07ED ; 001339(W)  001E13(Wx) 001E3B(W)  001E61(R)  001ED5(R)  001F35(R)  002325(R)  0023E9(R)  002432(R)  004044(W)  004052(W)  004070(W)  0040B6(W)  00427B(W)  004289(W)  0042B7(W)  00431E(W)  004389(W)  00439F(W)  0043BA(W)  004409(W)  00444A(W)  004467(W)  0044C2(W)  004518(W)  004549(W)  004588(R)  0045D0(W)  004606(W)  004676(W)  00467A(W)  00467D(R)  004682(W)  004691(R)  004697(W)  0046A4(W)  0046BA(R)  004701(R)  00471A(W)  00471E(R)  00472F(W)  004747(R)  00474A(W)  004759(W)  004775(W)  00478F(W)  0047B7(R)  0047BA(W)  0047C3(W)  004815(W)  004820(W)  00482D(W)  00486C(W)  0048A2(W)  0048D3(W)  0048EC(W)  004906(W)  004926(R)  005765(W)  005876(W)  0059B1(W)  005A29(W)  00606A(R)  006893(W)  0068BA(W)  00691F(W)  006966(W)  0069FE(W)  006B12(W)  006E9D(R)  006EA5(W)  006EA8(R)  0082DA(R)  008369(R)  00837D(W)  008DD9(Wy) 008DE0(Ry) 00A710(W)  00A71B(W)  00A8B1(W)  00A97E(Wy) 00C08C(Wy) 00C1B5(Wy) 00C356(Wy) 00C36A(Ry) 00CE11(W)  00D085(R)  00D232(W)  00D23B(W)  00D547(R)  00D5AF(W)  00D624(R)  00D627(W)  00D9F5(W)  00DA2F(W)  00DB7A(R)  00DB8C(R)  00DB96(R)  023F59(Wy) 025231(W)  025251(W)  0252C4(W)  0253AF(W)  0253B3(R)  0253BB(W)  025FA6(W)  025FB5(W)  026DF6(W)  026E38(W)  0275E7(R)  027653(W)  027C16(W)  027C72(R)  027C75(W)  027D7E(R)  027D91(R)  027DD0(W)  027DDA(R)  027E21(W)  02907E(Ry) 029081(Wy) 02908D(Wy) 029288(Wy) 02DA59(W)  02DA71(R)  02DA94(R)  02DB20(R)  02DC46(R)  02DD2F(R)  02DE4C(R)  032AED(W)  032AFC(W)  032B1A(R)  03E03F(Wi) 03E84F(Wx) 03F655(R)  
ram_07EE                                = $07EE ; 001E13(Wx) 001E46(W)  001F29(R)  001F54(R)  00208B(R)  002182(R)  002288(R)  004909(W)  006898(W)  0068BF(W)  006903(W)  006924(W)  00696B(W)  006A03(W)  006B17(W)  006EA0(R)  008DE0(Ry) 00A8B4(W)  00A97E(Wy) 00BA8C(R)  00BA9F(R)  00BAC0(W)  00BAC3(R)  00C092(Wy) 00C1B2(Wy) 00C34E(Wy) 00C365(Ry) 00C54F(R)  00C55E(R)  00C8E3(R)  00C911(R)  00C972(R)  00CA44(R)  00CAA9(W)  00CC8F(W)  00DA20(W)  00DC28(R)  00DC62(R)  00DE6D(W)  023F59(Wy) 02530B(W)  02535E(W)  02538B(R)  0266E2(W)  0269C3(W)  026A29(W)  026AFE(R)  026B15(W)  026BEE(W)  026D5B(W)  026D87(R)  026DA0(R)  026DA7(W)  026DF9(W)  026E00(R)  026E3B(W)  0275EE(W)  02762A(W)  027673(R)  0276AB(W)  027C89(W)  027DAA(R)  027DCD(W)  027DE3(W)  027DF3(R)  027DF9(R)  027E03(W)  027E1E(W)  027EF0(R)  027EF6(R)  027EFE(W)  027F4A(W)  02907E(Ry) 029081(Wy) 02908D(Wy) 029288(Wy) 02DA69(W)  02DDF9(R)  02DDFE(W)  02DE15(W)  02DE7D(W)  0325F6(R)  032617(W)  03E03F(Wi) 03E84F(Wx) 03F67F(R)  
ram_07EF                                = $07EF ; 001E13(Wx) 001E75(W)  001EAD(R)  001EB3(W)  001EB6(R)  0042C5(W)  00436D(W)  00438E(W)  004454(W)  00445D(R)  004546(W)  004568(W)  0045C7(W)  0046A9(W)  0046FE(W)  004708(W)  004725(R)  004734(W)  004740(W)  004755(W)  004761(W)  004771(W)  00477A(W)  00478C(W)  0047BE(R)  004807(W)  004812(W)  004842(W)  004884(W)  0048D8(W)  00490C(W)  0055C3(R)  0056B6(W)  00587B(W)  0059B6(W)  005A2E(W)  005AFE(W)  005B8B(W)  005D0E(W)  0068E7(W)  00695A(R)  00696E(W)  006977(W)  0069B6(W)  006A06(W)  006A09(R)  006A36(W)  006A39(R)  006A95(W)  006ABF(W)  006EB2(R)  008DD9(Wy) 008DE0(Ry) 00A97E(Wy) 00B6E8(R)  00B70D(R)  00B7CB(W)  00B7FB(R)  00B81C(R)  00B867(R)  00B88E(R)  00B89A(R)  00B8FE(R)  00B91F(R)  00B95C(R)  00B981(R)  00C08C(Wy) 00C1B5(Wy) 00C356(Wy) 00C36A(Ry) 00C637(R)  00C67A(W)  00DC2D(R)  00DC35(R)  00DC51(W)  00DC54(R)  00DC59(W)  023F59(Wy) 026BF6(W)  026C11(R)  026C8C(R)  026C9E(R)  026CC7(W)  026D56(W)  026DD8(W)  026E0C(W)  026E3E(W)  027C8C(W)  027DE8(W)  027DEE(W)  027E08(W)  027EEB(W)  027F03(W)  027F4F(W)  02907E(Ry) 029081(Wy) 02908D(Wy) 029288(Wy) 02DA6E(W)  02DE09(R)  02DE18(W)  02DE78(W)  0325FE(W)  032A34(R)  032A73(W)  03E03F(Wi) 03E84F(Wx) 
ram_07F0                                = $07F0 ; 001E13(Wx) 0042BC(W)  004382(R)  004391(W)  0044C7(W)  004520(W)  0046AC(W)  00473A(W)  004766(W)  00477D(W)  004832(W)  004874(W)  00490F(W)  004D98(R)  004D9D(W)  004DA0(R)  004DBD(W)  004DC1(W)  004E9E(R)  004EA3(W)  00576A(W)  005811(R)  005824(W)  005868(W)  00587E(W)  0058C2(W)  0059B9(W)  0059DD(R)  0059F0(W)  005A08(W)  005A19(W)  005A25(W)  005A31(W)  005B30(R)  005B41(W)  005B70(R)  005B8E(W)  005BA1(W)  005BAB(R)  005BBE(R)  005BC9(R)  005BD4(R)  005BDF(R)  005BEA(R)  005BF6(W)  005BFD(R)  005C02(W)  00697A(W)  0069B9(W)  006A26(R)  006A4C(W)  006A98(W)  006AAF(R)  006AD2(W)  006D74(R)  006DD9(R)  006DE4(W)  008DD9(Wy) 008DE0(Ry) 00A97E(Wy) 00B6EB(R)  00B712(R)  00B7D2(W)  00C092(Wy) 00C1B2(Wy) 00C34E(Wy) 00C365(Ry) 00DAB6(W)  00DDC1(W)  00DDF9(W)  00DE0C(W)  00DE63(W)  00DF4B(R)  00DF5B(W)  023F59(Wy) 026BFB(W)  026D48(W)  026D70(W)  026E4C(W)  027E1B(W)  027F07(R)  02907E(Ry) 029081(Wy) 02908D(Wy) 029288(Wy) 03311E(W)  037DFF(R)  037E06(W)  037E0E(R)  037E56(R)  03E03F(Wi) 03E84F(Wx) 
ram_07F1                                = $07F1 ; 001E13(Wx) 001E40(W)  001E6C(R)  001F60(R)  001F7B(R)  0021D6(R)  002315(R)  002379(R)  002454(R)  004323(W)  0043FE(W)  00441C(R)  004426(R)  0044CF(W)  00451D(W)  0045CD(W)  00461F(R)  004667(W)  00466A(R)  004673(W)  00483F(W)  004871(W)  004912(W)  00497D(R)  00499C(R)  004A20(W)  004A2A(W)  004DE3(R)  004E82(W)  004E8C(R)  004EAB(W)  00697D(W)  006A9B(W)  00B703(R)  00B7BD(W)  00B8DF(R)  00B8E7(R)  00B98D(W)  00C041(R)  00C066(R)  00C074(R)  00C0E0(R)  00C0E3(W)  00C108(R)  00C10B(W)  00C38C(R)  00C742(W)  00CA98(R)  00CAB3(W)  00CACF(W)  00DAC4(R)  00DDC4(W)  00DE13(R)  023F59(Wy) 025235(W)  0252BF(R)  0252CB(W)  027E18(W)  027E90(R)  027EC2(W)  027EC5(R)  027ECA(W)  02907E(Ry) 029081(Wy) 02908D(Wy) 029288(Wy) 037E0B(W)  037E17(R)  037E5C(W)  037E5F(R)  037E69(W)  03E03F(Wi) 03E84F(Wx) 
ram_07F2                                = $07F2 ; 001E13(Wx) 00203E(W)  002041(R)  004326(W)  0044CC(W)  004551(W)  0045D5(W)  004601(R)  00460A(W)  004615(W)  0046B4(W)  0046F4(R)  0046F9(W)  00470B(R)  00483C(W)  004877(W)  0048F7(W)  004915(W)  00495E(R)  004992(R)  004A25(W)  004E17(R)  004E44(W)  004E4B(W)  004E55(R)  004E62(W)  004E7F(W)  004EA8(W)  006980(W)  006A9E(W)  00B708(R)  00B7C4(W)  00B8E2(R)  00B8EC(R)  00B994(W)  023F59(Wy) 029288(Wy) 03E03F(Wi) 03E84F(Wx) 
ram_07F3                                = $07F3 ; 001334(W)  001E13(Wx) 001E5D(W)  001EDC(R)  001EE9(W)  001F30(R)  001F44(W)  001FBC(R)  001FC5(W)  002018(R)  002025(W)  004041(W)  004092(W)  0040A5(W)  0040A9(W)  0040B3(W)  0040BE(R)  0040C5(W)  0040CD(W)  0040D3(R)  004108(R)  00428C(W)  004396(W)  00439A(W)  00444F(W)  00446A(W)  0044D2(W)  0044D6(R)  0044F5(R)  00450E(W)  004514(W)  00454E(W)  0045A7(R)  0045B3(W)  0045BE(W)  0045C1(W)  0045CA(W)  0046AF(W)  00472A(R)  004737(W)  00474E(R)  00475E(W)  00476A(R)  004780(W)  004837(W)  004846(R)  004861(R)  0048A7(W)  0048AB(R)  0048C3(R)  0048CF(W)  004918(W)  004DB2(W)  004DB8(W)  004DC6(R)  0052EA(R)  0052F2(R)  005301(R)  005AF2(R)  005AF5(W)  005B9B(W)  005C24(W)  006983(W)  00B733(R)  00B760(W)  00B766(R)  00B76B(R)  00B770(W)  00B79D(W)  00B7A3(R)  00C023(R)  00C028(W)  00C051(W)  00C62B(W)  00C67D(R)  00C682(W)  00C6C1(R)  00C6C6(W)  00C707(R)  00C70C(W)  00C7C4(R)  00C7C9(W)  00CAC4(R)  00CAC9(W)  00CC62(R)  00CC92(R)  00CC97(W)  00CCAE(R)  00CDB7(R)  00CE14(R)  00CE19(W)  00CE22(R)  00D26C(W)  00D2AC(R)  00D383(R)  00D388(W)  00D38C(R)  00D5A2(R)  00D5A7(W)  00D69F(R)  00D6AB(R)  00DA18(W)  00DAEA(W)  00DB57(R)  00DB76(W)  00DF25(W)  023F59(Wy) 024036(R)  02408A(R)  0240AC(R)  0240D5(R)  024806(R)  02482B(W)  024839(R)  024881(W)  024890(W)  026138(W)  02619A(R)  02619F(W)  026208(R)  026463(R)  026540(R)  026594(R)  026675(R)  0266E5(R)  0266EA(W)  026712(R)  026813(R)  026892(R)  026BAF(W)  026CA3(R)  026CB6(R)  026E9E(W)  026F69(R)  026F6E(W)  026FDE(W)  026FE7(R)  027115(R)  027563(R)  027568(W)  02767D(W)  02797B(R)  027A09(R)  027A0E(W)  027A2D(W)  027ACE(R)  027AEC(R)  027C84(W)  027CC8(R)  027D6F(R)  027E15(W)  027E81(R)  027EDC(R)  027EE5(R)  027F15(W)  027F43(R)  028F0B(W)  029049(W)  0290C0(W)  0290FD(W)  02916A(W)  029288(Wy) 0325CD(W)  03275C(W)  033116(R)  03E03F(Wi) 03E84F(Wx) 



; free addresses
; ram_07F4                              = $07F4 ; 03E03F(Wi) 03E84F(Wx) 
; ram_07F5                              = $07F5 ; 03E03F(Wi) 03E84F(Wx) 



; 00 = 1st quest
; 01 = 2nd quest
ram_quest                               = $07F6 ; 000517(R)  0035E1(R)  004143(R)  007722(R)  00776B(W)  00C157(R)  00D94D(R)  0261EE(R)  0264C8(R)  02812A(R)  0286AB(R)  028802(R)  0288D4(R)  028B84(R)  028E38(R)  02B7E0(W)  02BA41(R)  02C43B(R)  02C463(R)  02C9CF(R)  02D883(R)  02DFD9(R)  03E03F(Wi) 



; free address
; ram_07F7                              = $07F7 ; 03E03F(Wi) 



; 
ram_name                                = $07F8 ; 00104D(Ry) 007226(Wx) 007244(Wy) 0072A2(Ry) 0076E2(Rx) 02B8DF(Ry) 03E03F(Wi) 
; ram_07F9                              = $07F9 ; 00104D(Ry) 007226(Wx) 007244(Wy) 0072A2(Ry) 0076E2(Rx) 02B8DF(Ry) 03E03F(Wi) 
; ram_07FA                              = $07FA ; 00104D(Ry) 007226(Wx) 0072A2(Ry) 0076E2(Rx) 02B8DF(Ry) 03E03F(Wi) 
; ram_07FB                              = $07FB ; 00104D(Ry) 007226(Wx) 007244(Wy) 0072A2(Ry) 0076E2(Rx) 02B8DF(Ry) 03E03F(Wi) 
; ram_07FC                              = $07FC ; 00104D(Ry) 007226(Wx) 0072A2(Ry) 0076E2(Rx) 02B8DF(Ry) 03E03F(Wi) 
; ram_07FD                              = $07FD ; 00104D(Ry) 007226(Wx) 0072A2(Ry) 0076E2(Rx) 02B8DF(Ry) 03E03F(Wi) 
; ram_07FE                              = $07FE ; 00104D(Ry) 007226(Wx) 007244(Wy) 0072A2(Ry) 0076E2(Rx) 02B8DF(Ry) 03E03F(Wi) 
; ram_07FF                              = $07FF ; 00104D(Ry) 007226(Wx) 007244(Wy) 0072A2(Ry) 0076E2(Rx) 02B8DF(Ry) 03E03F(Wi) 



