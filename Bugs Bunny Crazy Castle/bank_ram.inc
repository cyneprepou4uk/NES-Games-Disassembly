; to the right are ROM File addresses of instructios which were using these RAM addresses



; bzk unused
ram_0000                                = $0000 ; 00EC37 
ram_0001                                = $0001 ; 00EC37 
ram_0002                                = $0002 ; 00EC37 
ram_0003                                = $0003 ; 00EC37 
ram_0004                                = $0004 ; 00EC37 
ram_0005                                = $0005 ; 00EC37 
ram_0006                                = $0006 ; 00EC37 
ram_0007                                = $0007 ; 00EC37 



; temp, used in only 1 subroutine
ram_0008                                = $0008 ; 00EC37 00F10E 00F123 
ram_0009                                = $0009 ; 00EC37 00F112 00F120 



; temp, used in only 1 subroutine
ram_000A                                = $000A ; 00EC37 00F1A1 00F1BB 



; 
ram_000B                                = $000B ; 00EC37 00EFA0 00F1B1 00F1B6 00F1B9 



; for prg bankswitch
ram_prg_bank_1                          = $000C ; 00EC37 00F13A 00F140 00F14E 00F15E 



; prg bankswitch stack index
ram_bsw_stack_index                     = $000D ; 00EC37 00EC68 00F16F 00F177 00F185 00F187 



; bzk unused
ram_000E                                = $000E ; 00EC37 
ram_000F                                = $000F ; 00EC37 



; ($indirect)   ($indirect),Y
ram_0010                                = $0010 ; 00EC37 00EEC2 00EED0 00EF8E 00EF9C 00F1A7 00F1F5 00F225 00F287 00F2C7 00F354 00F356 00F366 00F36E 00F372 00F386 00F474 00F47E 00F480 00F485 00F48C 00F48F 00F492 00F53C 00F596 00F59F 
ram_0011                                = $0011 ; 00EC37 00EECB 00EED6 00EF91 00EF99 00F1AC 00F1D7 00F1F7 00F28B 00F2CB 00F35A 00F35C 00F35E 00F374 00F378 00F380 00F384 00F38A 00F46E 00F488 00F495 00F53E 00F598 00F5C2 



; 
ram_0012                                = $0012 ; 00EC37 00EF88 00EF9E 00F1D9 00F1F9 00F27B 00F2CF 00F4AE 00F4B6 00F4B8 00F59A 00F5C4 



; 
ram_0013                                = $0013 ; 00EC37 00F280 00F38E 00F4AA 00F4C1 00F4C3 00F5A7 00F5B4 



; 
ram_0014                                = $0014 ; 00EC37 00F2D1 00F2E7 00F549 00F54E 00F551 00F553 00F558 



; 
ram_0015                                = $0015 ; 00EC37 00F2C9 00F342 00F4A2 00F4CE 00F4D3 00F4E3 00F4EB 00F4EF 00F503 



; 
ram_0016                                = $0016 ; 00EC37 00F2CD 00F33C 00F4A6 00F4D5 00F4D9 00F4DB 00F4F1 00F4F5 00F4FD 00F501 00F507 



; 
ram_0017                                = $0017 ; 00EC37 00F2D5 00F2E3 00F335 00F348 



; see con_0018
ram_0018                                = $0018 ; 00EC37 00EEEA 00EEEC 00EEF5 00EFCD 00EFD8 00EFDC 00EFF8 00F03A 00F03E 00F064 00F068 00F070 00F074 00F0D6 00F0DA 00F0F1 00F0F5 



; bzk unused
ram_0019                                = $0019 ; 00EC37 
ram_001A                                = $001A ; 00EC37 
ram_001B                                = $001B ; 00EC37 



; ($indirect),Y
ram_001C                                = $001C ; 008283 00829B 0082B4 008E0C 008E81 008F5E 008FC4 008FE6 009000 00900B 00902A 0090B1 0090CB 0090ED 0090F8 00910F 0092F9 009304 00931B 00933B 009346 00935D 0093A5 0093B0 0093C6 00941A 00942D 009438 00947E 009491 00C4C4 00C4C6 00C4DB 00C4DD 00C4F0 00C4F2 00C4FF 00C503 00C507 00C6D0 00C6EC 00C6FA 00C712 00C837 00C843 00C845 00C850 00C852 00D34A 00D371 00D5F2 00D603 00D659 00D66A 00D6F7 00D706 00E098 00E17C 00E1EB 00E1F6 00EC37 00ED99 00EDF5 00EDFC 00F244 00F259 00F285 00F2EE 00F2FD 00F302 00F388 00F482 00F49C 00F4A0 00F505 00F50C 00F511 00F519 00F51F 00F524 
ram_001D                                = $001D ; 00828A 00829F 0082BA 008E10 008E85 008F62 008FC8 008FEA 009004 00900F 00902E 0090B5 0090CF 0090F1 0090FC 009113 0092FD 009308 00931F 00933F 00934A 009361 0093A9 0093B4 0093CA 00941E 009431 00943C 009482 009495 00C4CA 00C4CC 00C4E1 00C4E3 00C4F6 00C4F8 00C4FB 00C501 00C505 00C6D7 00C6DF 00C6E3 00C6E6 00C6E9 00C700 00C716 00C833 00C839 00C849 00C84B 00C854 00C858 00D34F 00D376 00E0A3 00E187 00E201 00EC37 00EDE5 00EDF7 00F247 00F256 00F289 00F304 00F308 00F38C 00F470 00F476 00F4A4 00F509 00F513 00F517 00F526 00F52A 00F532 00F536 



; ($indirect),Y
ram_001E                                = $001E ; 00811A 00828F 008439 008480 008E04 008E79 008FBC 008FDE 009022 0090A9 0090E5 00918C 0092A2 0092F1 009333 00939D 009409 009412 009425 009476 009489 00B025 00B0DE 00C431 00C455 00C483 00C489 00C490 00C492 00C49A 00C49F 00C585 00C63C 00C744 00C759 00C7A8 00C7B7 00C80F 00C813 00C816 00C819 00C81C 00C822 00C827 00C82A 00C82D 00C830 00C835 00C83B 00C840 00CE0B 00CE15 00CE4F 00CE5D 00CEF1 00D358 00D35F 00D5E6 00D5F0 00D5F7 00D601 00D627 00D62E 00D64D 00D657 00D65E 00D668 00D68D 00D691 00D695 00D699 00D6A2 00D6AE 00D6C2 00D6CE 00D6EB 00D6F5 00D6FC 00D70C 00D790 00D79D 00DB2E 00EC37 00ED95 00EDED 00EE00 00EE05 00F391 00F396 
ram_001F                                = $001F ; 00811E 008294 00843D 008485 008E08 008E7D 008FC0 008FE2 009026 0090AD 0090E9 009190 0092A6 0092F5 009337 0093A1 00940D 009416 009429 00947A 00948D 00B029 00B0E2 00C423 00C429 00C42C 00C433 00C437 00C459 00C473 00C478 00C47B 00C47E 00C481 00C48B 00C494 00C498 00C4A1 00C4A5 00C589 00C642 00C74C 00C764 00C7AD 00C7BC 00C81F 00C83E 00C847 00CE53 00CE61 00CEF6 00D35D 00D5EB 00D5FC 00D652 00D663 00D68B 00D68F 00D693 00D697 00D6A9 00D6C9 00D6F0 00D701 00D794 00D7A1 00DB33 00EC37 00ED97 00EDE7 00EE07 00EE0B 00F398 00F39C 



; 
ram_0020                                = $0020 ; 00816A 0081CC 0082A8 0082C3 008E1B 008FD3 008FF5 009017 009039 0090C0 0090DA 009104 00911B 00916F 009180 009264 009310 009327 009352 0093CE 009444 00C19F 00C373 00C378 00C37A 00C37C 00C37E 00C463 00C48D 00C4B2 00C4C1 00C4D4 00C4EC 00C516 00C53B 00C735 00C73D 00C794 00C7A1 00CF2D 00D6D0 00D708 00D76E 00D78B 00EC37 00F4AC 00F750 00F784 



; 
ram_0021                                = $0021 ; 00816E 0081D0 0082AA 0082C5 008E1F 008FD7 008FF9 00901B 00903D 0090C4 0090DE 009108 00911F 009176 009184 009268 009314 00932B 009356 0093D2 009448 00C19B 00C382 00C387 00C389 00C38B 00C38D 00C465 00C475 00C4B8 00C4CF 00C518 00C53D 00C73A 00C754 00C799 00C7B2 00CEAE 00CEB3 00CF4C 00D6B0 00D70E 00D775 00D798 00EC37 00F4A8 00F726 00F74C 00F797 



; 
ram_0022                                = $0022 ; 008166 008170 0081D4 0082A4 0082BF 00848D 00848F 008496 008E17 008FCF 008FF1 009013 009035 0090BC 0090D6 009100 009117 009188 00926C 00930C 009323 00934E 0093D6 009440 00C43C 00CEDD 00D32C 00DB3B 00DB3D 00DB44 00EC37 00F54B 00F768 



; 
ram_0023                                = $0023 ; 008475 008479 008487 00C41B 00C425 00C4AB 00C4AF 00CEFC 00CF06 00DB23 00DB27 00DB35 00EC37 



; 
ram_0024                                = $0024 ; 0080FE 008E2F 00904D 00908B 00912F 0091EA 00C015 00C034 00C03B 00C561 00EC37 00EEFC 00EF1C 00EFBC 00F72A 00F733 00F777 00FFA3 



; frame counter, bzk useless
ram_frame_cnt_1                         = $0025 ; 00EC37 00EFE1 



; camera position
ram_cam_pos_X_lo                        = $0026 ; 008419 0091E2 00C597 00CC3A 00EC37 00F114 
ram_cam_pos_X_hi                        = $0027 ; 00841B 0091E4 00C59B 00CC3E 00EC37 00F10C 
ram_cam_pos_Y_lo                        = $0028 ; 00841D 0091E6 00C59F 00CC42 00EC37 00F118 
ram_cam_pos_Y_hi                        = $0029 ; 00841F 0091E8 00C5A3 00CC46 00EC37 00F110 



; bzk unused
ram_002A                                = $002A ; 00EC37 
ram_002B                                = $002B ; 00EC37 
ram_002C                                = $002C ; 00EC37 
ram_002D                                = $002D ; 00EC37 
ram_002E                                = $002E ; 00EC37 
ram_002F                                = $002F ; 00EC37 
ram_0030                                = $0030 ; 00EC37 
ram_0031                                = $0031 ; 00EC37 



; 
ram_0032                                = $0032 ; 00C132 00C13B 00C14B 00C18A 00D749 00EC37 



; 
ram_chr_bank_1                          = $0033 ; 00803B 00810D 008423 00C01C 00C05D 00C101 00EC37 00ED13 
ram_chr_bank_2                          = $0034 ; 00803D 008109 008427 00C020 00C061 00C105 00EC37 00ED18 



; bzk unused
ram_0035                                = $0035 ; 00EC37 
ram_0036                                = $0036 ; 00EC37 



; ($indirect),Y
ram_0037                                = $0037 ; 00EC37 00ED1E 00ED23 00ED70 
ram_0038                                = $0038 ; 00EC37 00ED25 00ED29 00ED73 



; bzk unused
ram_0039                                = $0039 ; 00EC37 



; previous music?
ram_003A                                = $003A ; 00EC37 00F7AC 00F7C9 00F7EA 00F856 00F88F 00F891 



; bzk unused
ram_003B                                = $003B ; 00EC37 
ram_003C                                = $003C ; 00EC37 



; ($indirect),Y
ram_003D                                = $003D ; 00EC37 00EC71 
ram_003E                                = $003E ; 00EC37 00EC75 



; bzk unused
ram_003F                                = $003F ; 00EC37 
ram_0040                                = $0040 ; 00EC37 
ram_0041                                = $0041 ; 00EC37 
ram_0042                                = $0042 ; 00EC37 
ram_0043                                = $0043 ; 00EC37 



; ($indirect),Y     music/sound id is written via 0044
ram_0044                                = $0044 ; 00EC37 00F7BF 00F7CD 00F7EC 00F7FA 00F88D 00FA69 00FA9E 00FAB1 00FB04 00FBD2 00FC0D 00FC3E 
; ($indirect),Y
ram_0045                                = $0045 ; 00EC37 00F800 00FA71 00FA9C 00FAAF 00FB09 00FBD7 00FC14 00FC43 00FCBE 00FCC0 00FCCD 
; ($indirect),Y
ram_0046                                = $0046 ; 00EC37 00F805 00F9D5 00FB6C 00FB96 00FC57 00FC59 00FC6E 00FC9F 
ram_0047                                = $0047 ; 00EC37 00F9DA 00FB71 00FB9B 00FC5B 00FC5F 00FC73 00FCA4 



; 
ram_0048                                = $0048 ; 00EC37 00F9E0 00F9E9 00FA98 00FAFB 00FAFE 00FB4B 00FB51 00FB54 00FB57 00FB60 00FC53 00FC69 00FCD5 00FCF0 00FCF9 00FD00 00FD0E 



; temp, used in only 1 subroutine
ram_0049                                = $0049 ; 00EC37 00FA93 00FAA4 



; copy of music data
ram_004A                                = $004A ; 00EC37 00FB77 00FBA2 00FBDA 



; 
ram_004B                                = $004B ; 00EC37 00FBAC 00FBBE 00FBEF 00FC19 00FC1E 00FC39 00FC84 00FCAD 00FCC2 00FCD1 



; bzk unused
ram_004C                                = $004C ; 00EC37 
ram_004D                                = $004D ; 00EC37 
ram_004E                                = $004E ; 00EC37 
ram_004F                                = $004F ; 00EC37 
ram_0050                                = $0050 ; 00EC37 




; ($indirect)   ($indirect),Y
ram_0051                                = $0051 ; 00EC37 00FE89 00FE97 
ram_0052                                = $0052 ; 00EC37 00FE8C 00FE94 



; 
ram_0053                                = $0053 ; 00EC37 00FD61 00FD73 00FD88 00FD8C 00FD9C 00FDA0 00FDB0 00FDB4 00FDB6 00FE83 00FE99 



; bzk unused
ram_0054                                = $0054 ; 00EC37 



; counter
ram_0055                                = $0055 ; 00EC37 00F748 00F780 00F791 



; 
ram_0056                                = $0056 ; 00EC37 00F74A 00F78F 



; loop counter
ram_0057                                = $0057 ; 00EC37 00F73E 00F793 



; 
ram_0058                                = $0058 ; 00EC37 00F752 00F75A 00F779 00F77E 00F786 



; 
ram_0059                                = $0059 ; 00EC37 00F74E 00F755 00F788 00F78D 



; bzk unused
ram_005A                                = $005A ; 00EC37 
ram_005B                                = $005B ; 00EC37 
ram_005C                                = $005C ; 00EC37 
ram_005D                                = $005D ; 00EC37 
ram_005E                                = $005E ; 00EC37 
ram_005F                                = $005F ; 00EC37 



; 0060-006C? range is used for falling bricks at title screen
ram_0060                                = $0060 ; 00818D 0081B5 008200 00827A 008EA6 008F02 008F2A 008F30 008F3B 00EC37 
ram_0061                                = $0061 ; 0081C0 0081CA 008258 00825E 00826A 008270 00C357 00C485 00C50E 00C5B0 00C626 00C722 00CC49 00EC37 
    ram_stage_scroll                        = $0061 ; also scroll type, 00 = horisontal, 01 = vertical
ram_0062                                = $0062 ; 0081C5 0081CE 00823F 008248 008251 009139 00915D 009162 009164 009168 00917B 0093E3 00B01F 00B092 00C140 00C440 00EC37 00F279 
ram_0063                                = $0063 ; 0081C0 0081CA 008258 00825E 00826A 008270 0093E7 00B021 00B096 00C442 00EC37 00F27E 
ram_0064                                = $0064 ; 0081C5 0081CE 008239 008248 008251 00936B 009379 0093EB 0093F6 0093FB 0093FF 00B01B 00B03A 00B067 00B06F 00B07E 00B082 00B09A 00B0A3 00B0BC 00B0C2 00C448 00EC37 00F2DE 
ram_0065                                = $0065 ; 0081C0 0081CA 008258 00825E 00826A 008270 009371 00937B 009383 0093DF 0093ED 0093F4 009401 009405 00B045 00B064 00B077 00B07C 00B09C 00B0A6 00B0C4 00B0CA 00C448 00EC37 00F2DE 
ram_0066                                = $0066 ; 0081C5 0081CE 008233 008248 008251 00B050 00B079 00B0B2 00B0CC 00B0D2 00C448 00EC37 00F2DE 
ram_0067                                = $0067 ; 00817B 008181 0081AA 0081AC 0081F4 00B05B 00B071 00B0BA 00B0D4 00B0DA 00C448 00EC37 00F2DE 



; your current stage, including bonus stages
ram_stage_id_1                          = $0068 ; 00817F 008198 0081B9 0081F2 008202 008213 008229 008E72 0091FC 009200 009240 009250 009363 00B084 00B08B 00C0E5 00C0E7 00C0FA 00C126 00C146 00C18F 00C6BA 00C6C4 00C6CB 00EC37 00FFB7 
; not sure why game needs that, saving stage id before going to bonus stage
ram_stage_id_2                          = $0069 ; 008281 008299 0082AF 008E74 0091FA 009206 009252 00B086 00B08D 00B0A0 00B0AD 00B0B4 00EC37 00FFA5 00FFAA 00FFB3 



; 
ram_006A                                = $006A ; 008288 00829D 0082B6 00952E 00C283 00C2A3 00C371 00C89A 00C8E1 00C9D1 00C9F9 00CA6C 00CA8F 00CAF4 00CB20 00CB69 00CBBC 00CBE6 00CC09 00CFCC 00D092 00D0D8 00D792 00E0B0 00E147 00E197 00E20F 00E2C1 00E4DA 00E4E3 00E4E8 00E58A 00E5E9 00E61D 00E643 00E72D 00E763 00EC37 
ram_006B                                = $006B ; 0081EE 00821C 008222 008253 008268 009533 00C288 00C2AA 00C375 00C8A1 00C8E6 00C9D8 00CA00 00CA71 00CA94 00CAFB 00CB27 00CB70 00CBC1 00CBEB 00CC0E 00CFD1 00D097 00D0DD 00D796 00E0B5 00E14E 00E19E 00E216 00E2C6 00E4E1 00E4EA 00E4EE 00E58F 00E5F0 00E624 00E648 00E734 00E76A 00EC37 
ram_006C                                = $006C ; 0081DC 0081E3 008206 00821E 009538 00C290 00C2B2 00C380 00C8A9 00C8EE 00C9E0 00CA08 00CA79 00CA9C 00CB03 00CB2F 00CB78 00CBC9 00CBF3 00CC16 00CFD9 00D09F 00D0E2 00D79F 00E0BA 00E156 00E1A3 00E21E 00E2CB 00E4F6 00E594 00E5F5 00E637 00E66B 00E739 00E772 00EC37 
ram_006D                                = $006D ; 009540 00C297 00C2B9 00C384 00C8B0 00C8F5 00C9E7 00CA0F 00CA80 00CAA3 00CB0A 00CB36 00CB7F 00CBD0 00CBFA 00CC1D 00CFE0 00D0A6 00D0E7 00D7A3 00E0BF 00E15D 00E1A8 00E225 00E2D0 00E4FD 00E599 00E5FA 00E63E 00E672 00E73E 00E779 00EC37 
ram_006E                                = $006E ; 00C23E 00C396 00C8D0 00C8DA 00C8FA 00C904 00C92B 00C935 00C9EC 00CA14 00CA85 00CAA8 00CB0F 00CB3B 00CB84 00CBD5 00CBFF 00CC22 00CFF4 00CFFF 00D0AB 00D0EC 00E0C4 00E162 00E1AD 00E22A 00E502 00E5A6 00E5FF 00E64D 00E743 00E77E 00EC37 



; affects palette, music and some other stuff
; 00 = bricks, 01 = pipes, 02 = concrete
ram_stage_type                          = $006F ; 00C35B 00C633 00C727 00D7C4 00EC37 



; 
ram_0070                                = $0070 ; 00C595 00C5A8 00C5E5 00C5F5 00C602 00C60D 00C618 00CC38 00CCA7 00CCC5 00CCD3 00CCE0 00CCEE 00CF1A 00EC37 
ram_0071                                = $0071 ; 008132 008134 008136 00C599 00C5AA 00C5E7 00C5F9 00C609 00C612 00C61D 00CC3C 00CCAE 00CCCC 00CCD7 00CCE7 00CCF0 00CF20 00EC37 
ram_0072                                = $0072 ; 00C59D 00C5AC 00C5BA 00C5C5 00C5D0 00C5DE 00C5EC 00CC40 00CC51 00CC6F 00CC7A 00CC83 00CC90 00CC9E 00CF39 00EC37 
ram_0073                                = $0073 ; 00C5A1 00C5AE 00C5C1 00C5CA 00C5D5 00C5E0 00C5F0 00CC44 00CC58 00CC76 00CC87 00CC97 00CCA0 00CF3F 00EC37 
ram_0074                                = $0074 ; 00CC53 00CC5E 00CCA9 00CCB4 00CF1C 00CF2B 00CF3B 00CF4A 00EC37 
ram_0075                                = $0075 ; 00CC5A 00CCB0 00CF22 00CF41 00EC37 



; 
ram_0076                                = $0076 ; 008E93 008EE1 008EE7 008EEE 008EF5 008EFA 008EFE 008F54 00957A 00B035 00CD96 00CDD0 00CDD5 00CDE0 00CDE5 00CE51 00CEBF 00CF18 00D2B5 00D30E 00EC37 
    ; 0076-0079 (04) password letters
    ram_psw_letter                          = $0076 ; 
ram_0077                                = $0077 ; 008E95 008EE1 008EE7 008EF5 008EFA 008EFE 008F54 00957F 00B040 00CD9B 00CDD7 00CDDB 00CDE7 00CDEC 00CE55 00CEC4 00CF1E 00D2BA 00D313 00EC37 
ram_0078                                = $0078 ; 008E97 008EE1 008EE7 008F54 009584 00B04B 00CDA0 00CDBC 00CDC1 00CE5F 00CEC9 00CF37 00D2BF 00D318 00EC37 
ram_0079                                = $0079 ; 008E99 008EF5 008EFA 008EFE 008F54 00958F 00B056 00CDA5 00CDC3 00CDC7 00CE63 00CECE 00CF3D 00D2C4 00D31D 00EC37 



; frame counter, counts only during actual gameplay
ram_frame_cnt_2                         = $007A ; 00CCF9 00CCFB 00EC37 



; bzk unused
ram_007B                                = $007B ; 00EC37 



; 
ram_lives                               = $007C ; 0093B6 00C042 00C12C 00C12E 00C14F 00C155 00EC37 



; bzk unused
ram_007D                                = $007D ; 00EC37 



; counters
ram_007E                                = $007E ; 0091EC 00926E 009270 009278 00EC37 
ram_007F                                = $007F ; 0091EE 00927A 00927C 009284 009286 00EC37 



; bzk unused
ram_0080                                = $0080 ; 00EC37 



; 
ram_0081                                = $0081 ; 00E410 00E42D 00E461 00EC37 
ram_0082                                = $0082 ; 00E415 00E434 00E466 00EC37 
ram_0083                                = $0083 ; 00E41D 00E43A 00E47D 00EC37 
ram_0084                                = $0084 ; 00E424 00E441 00E482 00EC37 
ram_0085                                = $0085 ; 00E428 00E430 00EC37 
ram_0086                                = $0086 ; 00E42A 00E43D 00EC37 
ram_0087                                = $0087 ; 00E256 00E2F9 00E3D2 00E447 00E472 00EC37 
ram_0088                                = $0088 ; 00E25D 00E2FE 00E3D9 00E44E 00E476 00EC37 
ram_0089                                = $0089 ; 00E265 00E303 00E3DE 00E454 00E48E 00EC37 
ram_008A                                = $008A ; 00E26C 00E308 00E3E3 00E45B 00E492 00EC37 
ram_008B                                = $008B ; 00E270 00E30C 00E3E7 00E44A 00EC37 
ram_008C                                = $008C ; 00E274 00E30E 00E3EB 00E457 00EC37 
ram_008D                                = $008D ; 00E432 00E46F 00EC37 
ram_008E                                = $008E ; 00E438 00E474 00EC37 
ram_008F                                = $008F ; 00E43F 00E48B 00EC37 
ram_0090                                = $0090 ; 00E445 00E490 00EC37 
ram_0091                                = $0091 ; 00E44C 00E464 00EC37 
ram_0092                                = $0092 ; 00E452 00E468 00EC37 
ram_0093                                = $0093 ; 00E459 00E480 00EC37 
ram_0094                                = $0094 ; 00E45F 00E484 00EC37 
ram_0095                                = $0095 ; 0094A5 0094A9 0094C9 009523 00954C 00EC37 
ram_0096                                = $0096 ; 00E6DE 00E702 00E72B 00E761 00E789 00EC37 



; bzk unused
ram_0097                                = $0097 ; 00EC37 



; 
ram_0098                                = $0098 ; 00C49D 00C6F0 00C6F7 00C6FC 00EC37 
ram_0099                                = $0099 ; 00C4A3 00C6F5 00C6FE 00C704 00EC37 



; 
ram_prg_bank_2                          = $009A ; 00C06C 00C575 00C6B8 00C6C2 00EC37 



; 
ram_009B                                = $009B ; 00C6D5 00C710 00EC37 
ram_009C                                = $009C ; 00C6DB 00C714 00EC37 



; 
ram_copy_stage_id                       = $009D ; 00C6C9 00C6DD 00C6F2 00EC37 



; 
ram_009E                                = $009E ; 0094A1 00EA30 00EC37 
ram_009F                                = $009F ; 008E39 008E5C 008E61 008E63 008E67 008E6C 008E9B 009171 00EC37 
ram_00A0                                = $00A0 ; 00944F 00EC37 00F279 
ram_00A1                                = $00A1 ; 009455 00EC37 00F27E 
ram_00A2                                = $00A2 ; 009465 00946C 0094BC 0094C1 009505 00951B 00EC37 00F2DE 
ram_00A3                                = $00A3 ; 009465 00946C 0094BC 0094C1 009505 00951B 00EC37 00F2DE 
ram_00A4                                = $00A4 ; 009465 00946C 0094BC 0094C1 009505 00951B 00EC37 00F2DE 
ram_00A5                                = $00A5 ; 009465 00946C 0094BC 0094C1 009505 00951B 00EC37 00F2DE 
ram_00A6                                = $00A6 ; 009465 00946C 0094BC 0094C1 009505 00951B 00EC37 00F2DE 
ram_00A7                                = $00A7 ; 009465 00946C 0094BC 0094C1 009505 00951B 00EC37 00F2DE 
ram_00A8                                = $00A8 ; 009465 00946C 0094BC 0094C1 00951B 00EC37 00F2DE 
ram_00A9                                = $00A9 ; 009465 00946C 0094BC 0094C1 00951B 00EC37 00F2DE 



; bzk unused
ram_00AA                                = $00AA ; 00EC37 
ram_00AB                                = $00AB ; 00EC37 
ram_00AC                                = $00AC ; 00EC37 
ram_00AD                                = $00AD ; 00EC37 
ram_00AE                                = $00AE ; 00EC37 
ram_00AF                                = $00AF ; 00EC37 



; 
ram_00B0                                = $00B0 ; 009451 00EC37 00F279 
ram_00B1                                = $00B1 ; 009457 00EC37 00F27E 



; 00B2-00B9 (08) 
ram_00B2_unk                            = $00B2 ; 00945B 009462 0094B4 0094B9 009508 009518 00C046 00EC37 00F2DE 
; ram_00B3                              = $00B3 ; 00945B 009462 0094B4 0094B9 0094E4 009508 009518 00C048 00EC37 00F2DE 
; ram_00B4                              = $00B4 ; 00945B 009462 0094B4 0094B9 0094E4 009508 009518 00C04A 00EC37 00F2DE 
; ram_00B5                              = $00B5 ; 00945B 009462 0094B4 0094B9 0094E4 0094EB 0094F1 009508 009518 00C04C 00EC37 00F2DE 
; ram_00B6                              = $00B6 ; 00945B 009462 0094B4 0094B9 0094D1 0094E4 0094EB 0094F1 0094F4 0094FA 009508 009518 00C04E 00EC37 00F2DE 
; ram_00B7                              = $00B7 ; 00945B 009462 0094B4 0094B9 0094D6 0094DB 0094E0 0094E4 0094F4 0094FA 009508 009518 00C050 00EC37 00F2DE 
; ram_00B8                              = $00B8 ; 00945B 009462 0094B4 0094B9 0094E4 009518 00C052 00EC37 00F2DE 
; ram_00B9                              = $00B9 ; 00945B 009462 0094B4 0094B9 0094E4 009518 00C054 00EC37 00F2DE 



; bzk unused
ram_00BA                                = $00BA ; 00EC37 
ram_00BB                                = $00BB ; 00EC37 
ram_00BC                                = $00BC ; 00EC37 
ram_00BD                                = $00BD ; 00EC37 
ram_00BE                                = $00BE ; 00EC37 
ram_00BF                                = $00BF ; 00EC37 



; 00C0-00DF (20) 
ram_pal_buffer_1                        = $00C0 ; 00C648 00C65D 00EC37 00F60F 00F638 
; ram_00C1                              = $00C1 ; 00C648 00EC37 00F60F 00F638 
; ram_00C2                              = $00C2 ; 00C648 00EC37 00F60F 00F638 
; ram_00C3                              = $00C3 ; 00C648 00EC37 00F60F 00F638 
; ram_00C4                              = $00C4 ; 00C648 00EC37 00F60F 00F638 
; ram_00C5                              = $00C5 ; 00C648 00EC37 00F60F 00F638 
; ram_00C6                              = $00C6 ; 00C648 00EC37 00F60F 00F638 
; ram_00C7                              = $00C7 ; 00C648 00EC37 00F60F 00F638 
; ram_00C8                              = $00C8 ; 00C648 00EC37 00F60F 00F638 
; ram_00C9                              = $00C9 ; 00C648 00EC37 00F60F 00F638 
; ram_00CA                              = $00CA ; 00C648 00EC37 00F60F 00F638 
; ram_00CB                              = $00CB ; 00C648 00EC37 00F60F 00F638 
; ram_00CC                              = $00CC ; 00C648 00EC37 00F60F 00F638 
; ram_00CD                              = $00CD ; 00C648 00EC37 00F60F 00F638 
; ram_00CE                              = $00CE ; 00C648 00EC37 00F60F 00F638 
; ram_00CF                              = $00CF ; 00C648 00EC37 00F60F 00F638 
; ram_00D0                              = $00D0 ; 00C655 00C65F 00EC37 00F60F 00F638 
; ram_00D1                              = $00D1 ; 00C655 00EC37 00F60F 00F638 
; ram_00D2                              = $00D2 ; 00C655 00EC37 00F60F 00F638 
; ram_00D3                              = $00D3 ; 00C655 00EC37 00F60F 00F638 
; ram_00D4                              = $00D4 ; 00C655 00C661 00EC37 00F60F 00F638 
; ram_00D5                              = $00D5 ; 00C655 00EC37 00F60F 00F638 
; ram_00D6                              = $00D6 ; 00C655 00EC37 00F60F 00F638 
; ram_00D7                              = $00D7 ; 00C655 00EC37 00F60F 00F638 
; ram_00D8                              = $00D8 ; 00C655 00C663 00EC37 00F60F 00F638 
; ram_00D9                              = $00D9 ; 00C655 00C7F8 00EC37 00F60F 00F638 
; ram_00DA                              = $00DA ; 00C655 00C7FD 00EC37 00F60F 00F638 
; ram_00DB                              = $00DB ; 00C655 00C802 00EC37 00F60F 00F638 
; ram_00DC                              = $00DC ; 00C655 00C665 00EC37 00F60F 00F638 
; ram_00DD                              = $00DD ; 00C655 00EC37 00F60F 00F638 
; ram_00DE                              = $00DE ; 00C655 00EC37 00F60F 00F638 
; ram_00DF                              = $00DF ; 00C655 00EC37 00F60F 00F638 



; bzk unused
ram_00E0                                = $00E0 ; 00EC37 
ram_00E1                                = $00E1 ; 00EC37 
ram_00E2                                = $00E2 ; 00EC37 
ram_00E3                                = $00E3 ; 00EC37 
ram_00E4                                = $00E4 ; 00EC37 
ram_00E5                                = $00E5 ; 00EC37 
ram_00E6                                = $00E6 ; 00EC37 
ram_00E7                                = $00E7 ; 00EC37 
ram_00E8                                = $00E8 ; 00EC37 
ram_00E9                                = $00E9 ; 00EC37 
ram_00EA                                = $00EA ; 00EC37 
ram_00EB                                = $00EB ; 00EC37 
ram_00EC                                = $00EC ; 00EC37 
ram_00ED                                = $00ED ; 00EC37 
ram_00EE                                = $00EE ; 00EC37 
ram_00EF                                = $00EF ; 00EC37 



; 
ram_00F0                                = $00F0 ; 00EC37 00EC8B 00ECDB 00ECDF 00ECF5 00ECF9 00EEDD 00EEE1 00EEE5 00EFB6 00F7B3 00F7B7 00F7D5 00F7D9 00F8E1 00F8E5 00F8FC 



; bzk unused
ram_00F1                                = $00F1 ; 00EC37 
ram_00F2                                = $00F2 ; 00EC37 
ram_00F3                                = $00F3 ; 00EC37 
ram_00F4                                = $00F4 ; 00EC37 



; 00F5-00F6 (02) 
ram_btn_press                           = $00F5 ; 008077 008156 008445 008E41 009058 009096 009141 00922C 009232 00C1AF 00C1C1 00E4A4 00EC37 00EE89 00EE96 00EE9C 00EEA1 00EEA3 00EEBF 00EED2 00EED4 
; ram_00F6                              = $00F6 ; 00EC37 00EE8B 00EE92 00EE9C 00EEA1 00EEA3 00EEC8 00EED8 00EEDA 



; 00F7-00F8 (02) 
ram_btn_hold                            = $00F7 ; 008080 00815F 00844E 008EA0 008EAE 008F0B 00C1CF 00C202 00EC37 00EE9F 00EEA5 
; ram_00F8                              = $00F8 ; 00EC37 00EE9F 00EEA5 



; bzk unused
ram_00F9                                = $00F9 ; 00EC37 



; 
ram_00FA                                = $00FA ; 00EC37 00ED03 00ED0D 00F046 00F212 00F37A 00F4F7 00F52C 



; bzk useless, holds 00
ram_00FB_byte_00                        = $00FB ; 00EC37 00EEAF 



; 
ram_scroll_X                            = $00FC ; 00EC37 00F116 00F12E 00F1DB 
ram_scroll_Y                            = $00FD ; 00EC37 00F11A 00F133 00F1E0 



; 
ram_for_2001                            = $00FE ; 00EC37 00EC8F 00EFD3 00F1D2 00F1FE 00F5EB 00F5F9 00F5FB 
ram_for_2000                            = $00FF ; 00EC37 00EC96 00EE6A 00EE6E 00EE77 00EE7B 00EFAD 00EFB1 00EFE9 00EFED 00F11C 00F126 



; 0100-01FF (100) stack
ram_stack                               = $0100 ; for common links



; bzk unused
ram_0100                                = $0100 ; 00EC3A 
ram_0101                                = $0101 ; 00EC3A 
ram_0102                                = $0102 ; 00EC3A 
ram_0103                                = $0103 ; 00EC3A 
ram_0104                                = $0104 ; 00EC3A 
ram_0105                                = $0105 ; 00EC3A 
ram_0106                                = $0106 ; 00EC3A 
ram_0107                                = $0107 ; 00EC3A 
ram_0108                                = $0108 ; 00EC3A 
ram_0109                                = $0109 ; 00EC3A 
ram_010A                                = $010A ; 00EC3A 
ram_010B                                = $010B ; 00EC3A 
ram_010C                                = $010C ; 00EC3A 
ram_010D                                = $010D ; 00EC3A 
ram_010E                                = $010E ; 00EC3A 
ram_010F                                = $010F ; 00EC3A 



; sound engine ram
ram_0110                                = $0110 ; 00EC3A 00FC66 00FC8E 00FC94 
ram_0111                                = $0111 ; 00EC3A 00FC6B 00FC97 
ram_0112                                = $0112 ; 00EC3A 00FC70 00FC9C 
ram_0113                                = $0113 ; 00EC3A 00FC75 00FCA1 
ram_0114                                = $0114 ; 00EC3A 00FC66 00FC8E 00FC94 00FCCA 
ram_0115                                = $0115 ; 00EC3A 00FC6B 00FC97 
ram_0116                                = $0116 ; 00EC3A 00FC70 00FC9C 
ram_0117                                = $0117 ; 00EC3A 00FC75 00FCA1 
ram_0118                                = $0118 ; 00EC3A 00FC66 00FC8E 00FC94 00FCCA 
ram_0119                                = $0119 ; 00EC3A 00FC6B 00FC97 
ram_011A                                = $011A ; 00EC3A 00FC70 00FC9C 
ram_011B                                = $011B ; 00EC3A 00FC75 00FCA1 
ram_011C                                = $011C ; 00EC3A 
ram_011D                                = $011D ; 00EC3A 
ram_011E                                = $011E ; 00EC3A 
ram_011F                                = $011F ; 00EC3A 
ram_0120                                = $0120 ; 00EC3A 00FC66 00FC8E 00FC94 
ram_0121                                = $0121 ; 00EC3A 00FC6B 00FC97 
ram_0122                                = $0122 ; 00EC3A 00FC70 00FC9C 
ram_0123                                = $0123 ; 00EC3A 00FC75 00FCA1 
ram_0124                                = $0124 ; 00EC3A 00FC66 00FC8E 00FC94 00FCCA 
ram_0125                                = $0125 ; 00EC3A 00FC6B 00FC97 
ram_0126                                = $0126 ; 00EC3A 00FC70 00FC9C 
ram_0127                                = $0127 ; 00EC3A 00FC75 00FCA1 
ram_0128                                = $0128 ; 00EC3A 00FC66 00FC8E 00FC94 00FCCA 
ram_0129                                = $0129 ; 00EC3A 00FC6B 00FC97 
ram_012A                                = $012A ; 00EC3A 00FC70 00FC9C 
ram_012B                                = $012B ; 00EC3A 00FC75 00FCA1 
ram_012C                                = $012C ; 00EC3A 
ram_012D                                = $012D ; 00EC3A 
ram_012E                                = $012E ; 00EC3A 
ram_012F                                = $012F ; 00EC3A 
ram_0130                                = $0130 ; 00EC3A 00FC66 00FC8E 00FC94 
ram_0131                                = $0131 ; 00EC3A 00FC6B 00FC97 
ram_0132                                = $0132 ; 00EC3A 00FC70 00FC9C 
ram_0133                                = $0133 ; 00EC3A 00FC75 00FCA1 
ram_0134                                = $0134 ; 00EC3A 00FC66 00FC8E 00FC94 00FCCA 
ram_0135                                = $0135 ; 00EC3A 00FC6B 00FC97 
ram_0136                                = $0136 ; 00EC3A 00FC70 00FC9C 
ram_0137                                = $0137 ; 00EC3A 00FC75 00FCA1 
ram_0138                                = $0138 ; 00EC3A 00FC66 00FC8E 00FC94 00FCCA 
ram_0139                                = $0139 ; 00EC3A 00FC6B 00FC97 
ram_013A                                = $013A ; 00EC3A 00FC70 00FC9C 
ram_013B                                = $013B ; 00EC3A 00FC75 00FCA1 
ram_013C                                = $013C ; 00EC3A 
ram_013D                                = $013D ; 00EC3A 
ram_013E                                = $013E ; 00EC3A 
ram_013F                                = $013F ; 00EC3A 
ram_0140                                = $0140 ; 00EC3A 00FC66 00FC8E 00FC94 
ram_0141                                = $0141 ; 00EC3A 00FC6B 00FC97 
ram_0142                                = $0142 ; 00EC3A 00FC70 00FC9C 
ram_0143                                = $0143 ; 00EC3A 00FC75 00FCA1 
ram_0144                                = $0144 ; 00EC3A 00FC66 00FC8E 00FC94 
ram_0145                                = $0145 ; 00EC3A 00FC6B 00FC97 
ram_0146                                = $0146 ; 00EC3A 00FC70 00FC9C 
ram_0147                                = $0147 ; 00EC3A 00FC75 00FCA1 
ram_0148                                = $0148 ; 00EC3A 00FC66 00FC8E 00FC94 
ram_0149                                = $0149 ; 00EC3A 00FC6B 00FC97 
ram_014A                                = $014A ; 00EC3A 00FC70 00FC9C 
ram_014B                                = $014B ; 00EC3A 00FC75 00FCA1 
ram_014C                                = $014C ; 00EC3A 
ram_014D                                = $014D ; 00EC3A 
ram_014E                                = $014E ; 00EC3A 
ram_014F                                = $014F ; 00EC3A 



; bzk unused
ram_0150                                = $0150 ; 00EC3A 
ram_0151                                = $0151 ; 00EC3A 
ram_0152                                = $0152 ; 00EC3A 
ram_0153                                = $0153 ; 00EC3A 
ram_0154                                = $0154 ; 00EC3A 
ram_0155                                = $0155 ; 00EC3A 
ram_0156                                = $0156 ; 00EC3A 
ram_0157                                = $0157 ; 00EC3A 
ram_0158                                = $0158 ; 00EC3A 
ram_0159                                = $0159 ; 00EC3A 
ram_015A                                = $015A ; 00EC3A 
ram_015B                                = $015B ; 00EC3A 
ram_015C                                = $015C ; 00EC3A 
ram_015D                                = $015D ; 00EC3A 
ram_015E                                = $015E ; 00EC3A 
ram_015F                                = $015F ; 00EC3A 
ram_0160                                = $0160 ; 00EC3A 
ram_0161                                = $0161 ; 00EC3A 
ram_0162                                = $0162 ; 00EC3A 
ram_0163                                = $0163 ; 00EC3A 
ram_0164                                = $0164 ; 00EC3A 
ram_0165                                = $0165 ; 00EC3A 
ram_0166                                = $0166 ; 00EC3A 
ram_0167                                = $0167 ; 00EC3A 
ram_0168                                = $0168 ; 00EC3A 
ram_0169                                = $0169 ; 00EC3A 
ram_016A                                = $016A ; 00EC3A 
ram_016B                                = $016B ; 00EC3A 
ram_016C                                = $016C ; 00EC3A 
ram_016D                                = $016D ; 00EC3A 
ram_016E                                = $016E ; 00EC3A 
ram_016F                                = $016F ; 00EC3A 
ram_0170                                = $0170 ; 00EC3A 
ram_0171                                = $0171 ; 00EC3A 
ram_0172                                = $0172 ; 00EC3A 
ram_0173                                = $0173 ; 00EC3A 
ram_0174                                = $0174 ; 00EC3A 
ram_0175                                = $0175 ; 00EC3A 
ram_0176                                = $0176 ; 00EC3A 
ram_0177                                = $0177 ; 00EC3A 
ram_0178                                = $0178 ; 00EC3A 
ram_0179                                = $0179 ; 00EC3A 
ram_017A                                = $017A ; 00EC3A 
ram_017B                                = $017B ; 00EC3A 
ram_017C                                = $017C ; 00EC3A 
ram_017D                                = $017D ; 00EC3A 
ram_017E                                = $017E ; 00EC3A 
ram_017F                                = $017F ; 00EC3A 
ram_0180                                = $0180 ; 00EC3A 
ram_0181                                = $0181 ; 00EC3A 
ram_0182                                = $0182 ; 00EC3A 
ram_0183                                = $0183 ; 00EC3A 
ram_0184                                = $0184 ; 00EC3A 
ram_0185                                = $0185 ; 00EC3A 
ram_0186                                = $0186 ; 00EC3A 
ram_0187                                = $0187 ; 00EC3A 
ram_0188                                = $0188 ; 00EC3A 
ram_0189                                = $0189 ; 00EC3A 
ram_018A                                = $018A ; 00EC3A 
ram_018B                                = $018B ; 00EC3A 
ram_018C                                = $018C ; 00EC3A 
ram_018D                                = $018D ; 00EC3A 
ram_018E                                = $018E ; 00EC3A 
ram_018F                                = $018F ; 00EC3A 
ram_0190                                = $0190 ; 00EC3A 
ram_0191                                = $0191 ; 00EC3A 
ram_0192                                = $0192 ; 00EC3A 
ram_0193                                = $0193 ; 00EC3A 
ram_0194                                = $0194 ; 00EC3A 
ram_0195                                = $0195 ; 00EC3A 
ram_0196                                = $0196 ; 00EC3A 
ram_0197                                = $0197 ; 00EC3A 
ram_0198                                = $0198 ; 00EC3A 
ram_0199                                = $0199 ; 00EC3A 
ram_019A                                = $019A ; 00EC3A 
ram_019B                                = $019B ; 00EC3A 
ram_019C                                = $019C ; 00EC3A 
ram_019D                                = $019D ; 00EC3A 
ram_019E                                = $019E ; 00EC3A 
ram_019F                                = $019F ; 00EC3A 
ram_01A0                                = $01A0 ; 00EC3A 
ram_01A1                                = $01A1 ; 00EC3A 
ram_01A2                                = $01A2 ; 00EC3A 
ram_01A3                                = $01A3 ; 00EC3A 
ram_01A4                                = $01A4 ; 00EC3A 
ram_01A5                                = $01A5 ; 00EC3A 
ram_01A6                                = $01A6 ; 00EC3A 
ram_01A7                                = $01A7 ; 00EC3A 
ram_01A8                                = $01A8 ; 00EC3A 
ram_01A9                                = $01A9 ; 00EC3A 
ram_01AA                                = $01AA ; 00EC3A 
ram_01AB                                = $01AB ; 00EC3A 
ram_01AC                                = $01AC ; 00EC3A 
ram_01AD                                = $01AD ; 00EC3A 
ram_01AE                                = $01AE ; 00EC3A 
ram_01AF                                = $01AF ; 00EC3A 
ram_01B0                                = $01B0 ; 00EC3A 
ram_01B1                                = $01B1 ; 00EC3A 
ram_01B2                                = $01B2 ; 00EC3A 
ram_01B3                                = $01B3 ; 00EC3A 
ram_01B4                                = $01B4 ; 00EC3A 
ram_01B5                                = $01B5 ; 00EC3A 
ram_01B6                                = $01B6 ; 00EC3A 
ram_01B7                                = $01B7 ; 00EC3A 
ram_01B8                                = $01B8 ; 00EC3A 
ram_01B9                                = $01B9 ; 00EC3A 
ram_01BA                                = $01BA ; 00EC3A 
ram_01BB                                = $01BB ; 00EC3A 
ram_01BC                                = $01BC ; 00EC3A 
ram_01BD                                = $01BD ; 00EC3A 
ram_01BE                                = $01BE ; 00EC3A 
ram_01BF                                = $01BF ; 00EC3A 
ram_01C0                                = $01C0 ; 00EC3A 
ram_01C1                                = $01C1 ; 00EC3A 
ram_01C2                                = $01C2 ; 00EC3A 
ram_01C3                                = $01C3 ; 00EC3A 
ram_01C4                                = $01C4 ; 00EC3A 
ram_01C5                                = $01C5 ; 00EC3A 
ram_01C6                                = $01C6 ; 00EC3A 
ram_01C7                                = $01C7 ; 00EC3A 
ram_01C8                                = $01C8 ; 00EC3A 
ram_01C9                                = $01C9 ; 00EC3A 
ram_01CA                                = $01CA ; 00EC3A 
ram_01CB                                = $01CB ; 00EC3A 
ram_01CC                                = $01CC ; 00EC3A 
ram_01CD                                = $01CD ; 00EC3A 
ram_01CE                                = $01CE ; 00EC3A 
ram_01CF                                = $01CF ; 00EC3A 
ram_01D0                                = $01D0 ; 00EC3A 
ram_01D1                                = $01D1 ; 00EC3A 
ram_01D2                                = $01D2 ; 00EC3A 
ram_01D3                                = $01D3 ; 00EC3A 
ram_01D4                                = $01D4 ; 00EC3A 
ram_01D5                                = $01D5 ; 00EC3A 
ram_01D6                                = $01D6 ; 00EC3A 
ram_01D7                                = $01D7 ; 00EC3A 
ram_01D8                                = $01D8 ; 00EC3A 
ram_01D9                                = $01D9 ; 00EC3A 
ram_01DA                                = $01DA ; 00EC3A 
ram_01DB                                = $01DB ; 00EC3A 
ram_01DC                                = $01DC ; 00EC3A 
ram_01DD                                = $01DD ; 00EC3A 
ram_01DE                                = $01DE ; 00EC3A 
ram_01DF                                = $01DF ; 00EC3A 



; used for prg bank id storage
; probably more addresses reserved for this
ram_01E0                                = $01E0 ; 00EC3A 
ram_01E1                                = $01E1 ; 00EC3A 
ram_01E2                                = $01E2 ; 00EC3A 
ram_01E3                                = $01E3 ; 00EC3A 
ram_01E4                                = $01E4 ; 00EC3A 
ram_01E5                                = $01E5 ; 00EC3A 
ram_01E6                                = $01E6 ; 00EC3A 
ram_01E7                                = $01E7 ; 00EC3A 
ram_01E8                                = $01E8 ; 00EC3A 
ram_01E9                                = $01E9 ; 00EC3A 
ram_01EA                                = $01EA ; 00EC3A 
ram_01EB                                = $01EB ; 00EC3A 00F18C 
ram_01EC                                = $01EC ; 00EC3A 00F171 
ram_01ED                                = $01ED ; 00EC3A 00F18C 
ram_01EE                                = $01EE ; 00EC3A 00F171 00F18C 
ram_01EF                                = $01EF ; 00EC3A 00F171 00F18C 
ram_01F0                                = $01F0 ; 00EC3A 00F171 00F18C 
ram_01F1                                = $01F1 ; 00EC3A 00F171 00F18C 
ram_01F2                                = $01F2 ; 00EC3A 00F171 
ram_01F3                                = $01F3 ; 00EC3A 00F171 00F18C 
ram_01F4                                = $01F4 ; 00EC3A 00F171 00F18C 
ram_01F5                                = $01F5 ; 00EC3A 00F171 00F18C 
ram_01F6                                = $01F6 ; 00EC3A 
ram_01F7                                = $01F7 ; 00EC3A 00F171 00F18C 
ram_01F8                                = $01F8 ; 00EC3A 
ram_01F9                                = $01F9 ; 00EC3A 00F171 
ram_01FA                                = $01FA ; 00EC3A 
ram_01FB                                = $01FB ; 00EC3A 
ram_01FC                                = $01FC ; 00EC3A 
ram_01FD                                = $01FD ; 00EC3A 
ram_01FE                                = $01FE ; 00EC3A 
ram_01FF                                = $01FF ; 00EC3A 



; 0200-02FF (100) OAM
ram_spr_Y                               = $0200 ; 00EC3D 00EF02 00F757 
ram_spr_T                               = $0201 ; 00EC3D 00F761 
ram_spr_A                               = $0202 ; 00EC3D 00F76A 
ram_spr_X                               = $0203 ; 00EC3D 00F75C 
; ram_0204                              = $0204 ; 00EC3D 00EF10 00F757 
; ram_0205                              = $0205 ; 00EC3D 00F761 
; ram_0206                              = $0206 ; 00EC3D 00F76A 
; ram_0207                              = $0207 ; 00EC3D 00F75C 
; ram_0208                              = $0208 ; 00EC3D 00EF10 00F757 
; ram_0209                              = $0209 ; 00EC3D 00F761 
; ram_020A                              = $020A ; 00EC3D 00F76A 
; ram_020B                              = $020B ; 00EC3D 00F75C 
; ram_020C                              = $020C ; 00EC3D 00EF10 00F757 
; ram_020D                              = $020D ; 00EC3D 00F761 
; ram_020E                              = $020E ; 00EC3D 00F76A 
; ram_020F                              = $020F ; 00EC3D 00F75C 
; ram_0210                              = $0210 ; 00EC3D 00EF10 00F757 
; ram_0211                              = $0211 ; 00EC3D 00F761 
; ram_0212                              = $0212 ; 00EC3D 00F76A 
; ram_0213                              = $0213 ; 00EC3D 00F75C 
; ram_0214                              = $0214 ; 00EC3D 00EF10 00F757 
; ram_0215                              = $0215 ; 00EC3D 00F761 
; ram_0216                              = $0216 ; 00EC3D 00F76A 
; ram_0217                              = $0217 ; 00EC3D 00F75C 
; ram_0218                              = $0218 ; 00EC3D 00EF10 00F757 
; ram_0219                              = $0219 ; 00EC3D 00F761 
; ram_021A                              = $021A ; 00EC3D 00F76A 
; ram_021B                              = $021B ; 00EC3D 00F75C 
; ram_021C                              = $021C ; 00EC3D 00EF10 00F757 
; ram_021D                              = $021D ; 00EC3D 00F761 
; ram_021E                              = $021E ; 00EC3D 00F76A 
; ram_021F                              = $021F ; 00EC3D 00F75C 
; ram_0220                              = $0220 ; 00EC3D 00EF10 00F757 
; ram_0221                              = $0221 ; 00EC3D 00F761 
; ram_0222                              = $0222 ; 00EC3D 00F76A 
; ram_0223                              = $0223 ; 00EC3D 00F75C 
; ram_0224                              = $0224 ; 00EC3D 00EF10 00F757 
; ram_0225                              = $0225 ; 00EC3D 00F761 
; ram_0226                              = $0226 ; 00EC3D 00F76A 
; ram_0227                              = $0227 ; 00EC3D 00F75C 
; ram_0228                              = $0228 ; 00EC3D 00EF10 00F757 
; ram_0229                              = $0229 ; 00EC3D 00F761 
; ram_022A                              = $022A ; 00EC3D 00F76A 
; ram_022B                              = $022B ; 00EC3D 00F75C 
; ram_022C                              = $022C ; 00EC3D 00EF10 00F757 
; ram_022D                              = $022D ; 00EC3D 00F761 
; ram_022E                              = $022E ; 00EC3D 00F76A 
; ram_022F                              = $022F ; 00EC3D 00F75C 
; ram_0230                              = $0230 ; 00EC3D 00EF10 00F757 
; ram_0231                              = $0231 ; 00EC3D 00F761 
; ram_0232                              = $0232 ; 00EC3D 00F76A 
; ram_0233                              = $0233 ; 00EC3D 00F75C 
; ram_0234                              = $0234 ; 00EC3D 00EF10 00F757 
; ram_0235                              = $0235 ; 00EC3D 00F761 
; ram_0236                              = $0236 ; 00EC3D 00F76A 
; ram_0237                              = $0237 ; 00EC3D 00F75C 
; ram_0238                              = $0238 ; 00EC3D 00EF10 00F757 
; ram_0239                              = $0239 ; 00EC3D 00F761 
; ram_023A                              = $023A ; 00EC3D 00F76A 
; ram_023B                              = $023B ; 00EC3D 00F75C 
; ram_023C                              = $023C ; 00EC3D 00EF10 00F757 
; ram_023D                              = $023D ; 00EC3D 00F761 
; ram_023E                              = $023E ; 00EC3D 00F76A 
; ram_023F                              = $023F ; 00EC3D 00F75C 
; ram_0240                              = $0240 ; 00EC3D 00EF10 00F757 
; ram_0241                              = $0241 ; 00EC3D 00F761 
; ram_0242                              = $0242 ; 00EC3D 00F76A 
; ram_0243                              = $0243 ; 00EC3D 00F75C 
; ram_0244                              = $0244 ; 00EC3D 00EF10 00F757 
; ram_0245                              = $0245 ; 00EC3D 00F761 
; ram_0246                              = $0246 ; 00EC3D 00F76A 
; ram_0247                              = $0247 ; 00EC3D 00F75C 
; ram_0248                              = $0248 ; 00EC3D 00EF10 00F757 
; ram_0249                              = $0249 ; 00EC3D 00F761 
; ram_024A                              = $024A ; 00EC3D 00F76A 
; ram_024B                              = $024B ; 00EC3D 00F75C 
; ram_024C                              = $024C ; 00EC3D 00EF10 00F757 
; ram_024D                              = $024D ; 00EC3D 00F761 
; ram_024E                              = $024E ; 00EC3D 00F76A 
; ram_024F                              = $024F ; 00EC3D 00F75C 
; ram_0250                              = $0250 ; 00EC3D 00EF10 00F757 
; ram_0251                              = $0251 ; 00EC3D 00F761 
; ram_0252                              = $0252 ; 00EC3D 00F76A 
; ram_0253                              = $0253 ; 00EC3D 00F75C 
; ram_0254                              = $0254 ; 00EC3D 00EF10 00F757 
; ram_0255                              = $0255 ; 00EC3D 00F761 
; ram_0256                              = $0256 ; 00EC3D 00F76A 
; ram_0257                              = $0257 ; 00EC3D 00F75C 
; ram_0258                              = $0258 ; 00EC3D 00EF10 00F757 
; ram_0259                              = $0259 ; 00EC3D 00F761 
; ram_025A                              = $025A ; 00EC3D 00F76A 
; ram_025B                              = $025B ; 00EC3D 00F75C 
; ram_025C                              = $025C ; 00EC3D 00EF10 00F757 
; ram_025D                              = $025D ; 00EC3D 00F761 
; ram_025E                              = $025E ; 00EC3D 00F76A 
; ram_025F                              = $025F ; 00EC3D 00F75C 
; ram_0260                              = $0260 ; 00EC3D 00EF10 00F757 
; ram_0261                              = $0261 ; 00EC3D 00F761 
; ram_0262                              = $0262 ; 00EC3D 00F76A 
; ram_0263                              = $0263 ; 00EC3D 00F75C 
; ram_0264                              = $0264 ; 00EC3D 00EF10 00F757 
; ram_0265                              = $0265 ; 00EC3D 00F761 
; ram_0266                              = $0266 ; 00EC3D 00F76A 
; ram_0267                              = $0267 ; 00EC3D 00F75C 
; ram_0268                              = $0268 ; 00EC3D 00EF10 00F757 
; ram_0269                              = $0269 ; 00EC3D 00F761 
; ram_026A                              = $026A ; 00EC3D 00F76A 
; ram_026B                              = $026B ; 00EC3D 00F75C 
; ram_026C                              = $026C ; 00EC3D 00EF10 00F757 
; ram_026D                              = $026D ; 00EC3D 00F761 
; ram_026E                              = $026E ; 00EC3D 00F76A 
; ram_026F                              = $026F ; 00EC3D 00F75C 
; ram_0270                              = $0270 ; 00EC3D 00EF10 00F757 
; ram_0271                              = $0271 ; 00EC3D 00F761 
; ram_0272                              = $0272 ; 00EC3D 00F76A 
; ram_0273                              = $0273 ; 00EC3D 00F75C 
; ram_0274                              = $0274 ; 00EC3D 00EF10 00F757 
; ram_0275                              = $0275 ; 00EC3D 00F761 
; ram_0276                              = $0276 ; 00EC3D 00F76A 
; ram_0277                              = $0277 ; 00EC3D 00F75C 
; ram_0278                              = $0278 ; 00EC3D 00EF10 00F757 
; ram_0279                              = $0279 ; 00EC3D 00F761 
; ram_027A                              = $027A ; 00EC3D 00F76A 
; ram_027B                              = $027B ; 00EC3D 00F75C 
; ram_027C                              = $027C ; 00EC3D 00EF10 00F757 
; ram_027D                              = $027D ; 00EC3D 00F761 
; ram_027E                              = $027E ; 00EC3D 00F76A 
; ram_027F                              = $027F ; 00EC3D 00F75C 
; ram_0280                              = $0280 ; 00EC3D 00EF10 00F757 
; ram_0281                              = $0281 ; 00EC3D 00F761 
; ram_0282                              = $0282 ; 00EC3D 00F76A 
; ram_0283                              = $0283 ; 00EC3D 00F75C 
; ram_0284                              = $0284 ; 00EC3D 00EF10 00F757 
; ram_0285                              = $0285 ; 00EC3D 00F761 
; ram_0286                              = $0286 ; 00EC3D 00F76A 
; ram_0287                              = $0287 ; 00EC3D 00F75C 
; ram_0288                              = $0288 ; 00EC3D 00EF10 00F757 
; ram_0289                              = $0289 ; 00EC3D 00F761 
; ram_028A                              = $028A ; 00EC3D 00F76A 
; ram_028B                              = $028B ; 00EC3D 00F75C 
; ram_028C                              = $028C ; 00EC3D 00EF10 00F757 
; ram_028D                              = $028D ; 00EC3D 00F761 
; ram_028E                              = $028E ; 00EC3D 00F76A 
; ram_028F                              = $028F ; 00EC3D 00F75C 
; ram_0290                              = $0290 ; 00EC3D 00EF10 00F757 
; ram_0291                              = $0291 ; 00EC3D 00F761 
; ram_0292                              = $0292 ; 00EC3D 00F76A 
; ram_0293                              = $0293 ; 00EC3D 00F75C 
; ram_0294                              = $0294 ; 00EC3D 00EF10 00F757 
; ram_0295                              = $0295 ; 00EC3D 00F761 
; ram_0296                              = $0296 ; 00EC3D 00F76A 
; ram_0297                              = $0297 ; 00EC3D 00F75C 
; ram_0298                              = $0298 ; 00EC3D 00EF10 00F757 
; ram_0299                              = $0299 ; 00EC3D 00F761 
; ram_029A                              = $029A ; 00EC3D 00F76A 
; ram_029B                              = $029B ; 00EC3D 00F75C 
; ram_029C                              = $029C ; 00EC3D 00EF10 00F757 
; ram_029D                              = $029D ; 00EC3D 00F761 
; ram_029E                              = $029E ; 00EC3D 00F76A 
; ram_029F                              = $029F ; 00EC3D 00F75C 
; ram_02A0                              = $02A0 ; 00EC3D 00EF10 00F757 
; ram_02A1                              = $02A1 ; 00EC3D 00F761 
; ram_02A2                              = $02A2 ; 00EC3D 00F76A 
; ram_02A3                              = $02A3 ; 00EC3D 00F75C 
; ram_02A4                              = $02A4 ; 00EC3D 00EF10 00F757 
; ram_02A5                              = $02A5 ; 00EC3D 00F761 
; ram_02A6                              = $02A6 ; 00EC3D 00F76A 
; ram_02A7                              = $02A7 ; 00EC3D 00F75C 
; ram_02A8                              = $02A8 ; 00EC3D 00EF10 00F757 
; ram_02A9                              = $02A9 ; 00EC3D 00F761 
; ram_02AA                              = $02AA ; 00EC3D 00F76A 
; ram_02AB                              = $02AB ; 00EC3D 00F75C 
; ram_02AC                              = $02AC ; 00EC3D 00EF10 00F757 
; ram_02AD                              = $02AD ; 00EC3D 00F761 
; ram_02AE                              = $02AE ; 00EC3D 00F76A 
; ram_02AF                              = $02AF ; 00EC3D 00F75C 
; ram_02B0                              = $02B0 ; 00EC3D 00EF10 00F757 
; ram_02B1                              = $02B1 ; 00EC3D 00F761 
; ram_02B2                              = $02B2 ; 00EC3D 00F76A 
; ram_02B3                              = $02B3 ; 00EC3D 00F75C 
; ram_02B4                              = $02B4 ; 00EC3D 00EF10 00F757 
; ram_02B5                              = $02B5 ; 00EC3D 00F761 
; ram_02B6                              = $02B6 ; 00EC3D 00F76A 
; ram_02B7                              = $02B7 ; 00EC3D 00F75C 
; ram_02B8                              = $02B8 ; 00EC3D 00EF10 00F757 
; ram_02B9                              = $02B9 ; 00EC3D 00F761 
; ram_02BA                              = $02BA ; 00EC3D 00F76A 
; ram_02BB                              = $02BB ; 00EC3D 00F75C 
; ram_02BC                              = $02BC ; 00EC3D 00EF10 00F757 
; ram_02BD                              = $02BD ; 00EC3D 00F761 
; ram_02BE                              = $02BE ; 00EC3D 00F76A 
; ram_02BF                              = $02BF ; 00EC3D 00F75C 
; ram_02C0                              = $02C0 ; 00EC3D 00EF10 00F757 
; ram_02C1                              = $02C1 ; 00EC3D 00F761 
; ram_02C2                              = $02C2 ; 00EC3D 00F76A 
; ram_02C3                              = $02C3 ; 00EC3D 00F75C 
; ram_02C4                              = $02C4 ; 00EC3D 00EF10 00F757 
; ram_02C5                              = $02C5 ; 00EC3D 00F761 
; ram_02C6                              = $02C6 ; 00EC3D 00F76A 
; ram_02C7                              = $02C7 ; 00EC3D 00F75C 
; ram_02C8                              = $02C8 ; 00EC3D 00EF10 00F757 
; ram_02C9                              = $02C9 ; 00EC3D 00F761 
; ram_02CA                              = $02CA ; 00EC3D 00F76A 
; ram_02CB                              = $02CB ; 00EC3D 00F75C 
; ram_02CC                              = $02CC ; 00EC3D 00EF10 00F757 
; ram_02CD                              = $02CD ; 00EC3D 00F761 
; ram_02CE                              = $02CE ; 00EC3D 00F76A 
; ram_02CF                              = $02CF ; 00EC3D 00F75C 
; ram_02D0                              = $02D0 ; 00EC3D 00EF10 00F757 
; ram_02D1                              = $02D1 ; 00EC3D 00F761 
; ram_02D2                              = $02D2 ; 00EC3D 00F76A 
; ram_02D3                              = $02D3 ; 00EC3D 00F75C 
; ram_02D4                              = $02D4 ; 00EC3D 00EF10 00F757 
; ram_02D5                              = $02D5 ; 00EC3D 00F761 
; ram_02D6                              = $02D6 ; 00EC3D 00F76A 
; ram_02D7                              = $02D7 ; 00EC3D 00F75C 
; ram_02D8                              = $02D8 ; 00EC3D 00EF10 00F757 
; ram_02D9                              = $02D9 ; 00EC3D 00F761 
; ram_02DA                              = $02DA ; 00EC3D 00F76A 
; ram_02DB                              = $02DB ; 00EC3D 00F75C 
; ram_02DC                              = $02DC ; 00EC3D 00EF10 00F757 
; ram_02DD                              = $02DD ; 00EC3D 00F761 
; ram_02DE                              = $02DE ; 00EC3D 00F76A 
; ram_02DF                              = $02DF ; 00EC3D 00F75C 
; ram_02E0                              = $02E0 ; 00EC3D 00EF10 00F757 
; ram_02E1                              = $02E1 ; 00EC3D 00F761 
; ram_02E2                              = $02E2 ; 00EC3D 00F76A 
; ram_02E3                              = $02E3 ; 00EC3D 00F75C 
; ram_02E4                              = $02E4 ; 00EC3D 00EF10 00F757 
; ram_02E5                              = $02E5 ; 00EC3D 00F761 
; ram_02E6                              = $02E6 ; 00EC3D 00F76A 
; ram_02E7                              = $02E7 ; 00EC3D 00F75C 
; ram_02E8                              = $02E8 ; 00EC3D 00EF10 
; ram_02E9                              = $02E9 ; 00EC3D 
; ram_02EA                              = $02EA ; 00EC3D 
; ram_02EB                              = $02EB ; 00EC3D 
; ram_02EC                              = $02EC ; 00EC3D 00EF10 
; ram_02ED                              = $02ED ; 00EC3D 
; ram_02EE                              = $02EE ; 00EC3D 
; ram_02EF                              = $02EF ; 00EC3D 
; ram_02F0                              = $02F0 ; 00EC3D 00EF10 
; ram_02F1                              = $02F1 ; 00EC3D 
; ram_02F2                              = $02F2 ; 00EC3D 
; ram_02F3                              = $02F3 ; 00EC3D 
; ram_02F4                              = $02F4 ; 00EC3D 00EF10 
; ram_02F5                              = $02F5 ; 00EC3D 
; ram_02F6                              = $02F6 ; 00EC3D 
; ram_02F7                              = $02F7 ; 00EC3D 
; ram_02F8                              = $02F8 ; 00EC3D 00EF10 
; ram_02F9                              = $02F9 ; 00EC3D 
; ram_02FA                              = $02FA ; 00EC3D 
; ram_02FB                              = $02FB ; 00EC3D 
; ram_02FC                              = $02FC ; 00EC3D 00EF10 
; ram_02FD                              = $02FD ; 00EC3D 
; ram_02FE                              = $02FE ; 00EC3D 
; ram_02FF                              = $02FF ; 00EC3D 



; 0300-033F (40) 
ram_ppu_buffer_1                        = $0300 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0301                              = $0301 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0302                              = $0302 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0303                              = $0303 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0304                              = $0304 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0305                              = $0305 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0306                              = $0306 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0307                              = $0307 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0308                              = $0308 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0309                              = $0309 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_030A                              = $030A ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_030B                              = $030B ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_030C                              = $030C ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_030D                              = $030D ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_030E                              = $030E ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_030F                              = $030F ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0310                              = $0310 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0311                              = $0311 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0312                              = $0312 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0313                              = $0313 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0314                              = $0314 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0315                              = $0315 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0316                              = $0316 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0317                              = $0317 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0318                              = $0318 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0319                              = $0319 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_031A                              = $031A ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_031B                              = $031B ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_031C                              = $031C ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_031D                              = $031D ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_031E                              = $031E ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_031F                              = $031F ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0320                              = $0320 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0321                              = $0321 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0322                              = $0322 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0323                              = $0323 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0324                              = $0324 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0325                              = $0325 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0326                              = $0326 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0327                              = $0327 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0328                              = $0328 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0329                              = $0329 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_032A                              = $032A ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_032B                              = $032B ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_032C                              = $032C ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_032D                              = $032D ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_032E                              = $032E ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_032F                              = $032F ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0330                              = $0330 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0331                              = $0331 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0332                              = $0332 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0333                              = $0333 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0334                              = $0334 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0335                              = $0335 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0336                              = $0336 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0337                              = $0337 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0338                              = $0338 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0339                              = $0339 ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_033A                              = $033A ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_033B                              = $033B ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_033C                              = $033C ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_033D                              = $033D ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_033E                              = $033E ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_033F                              = $033F ; 00EC40 00EDF9 00F02F 00F543 00F546 00F55A 00F55D 00F5B8 



; 0300-033F (40) nametable attributes
ram_attr_buffer                         = $0340 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0341                              = $0341 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0342                              = $0342 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0343                              = $0343 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0344                              = $0344 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0345                              = $0345 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0346                              = $0346 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0347                              = $0347 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0348                              = $0348 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0349                              = $0349 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_034A                              = $034A ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_034B                              = $034B ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_034C                              = $034C ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_034D                              = $034D ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_034E                              = $034E ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_034F                              = $034F ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0350                              = $0350 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0351                              = $0351 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0352                              = $0352 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0353                              = $0353 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0354                              = $0354 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0355                              = $0355 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0356                              = $0356 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0357                              = $0357 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0358                              = $0358 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0359                              = $0359 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_035A                              = $035A ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_035B                              = $035B ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_035C                              = $035C ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_035D                              = $035D ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_035E                              = $035E ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_035F                              = $035F ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0360                              = $0360 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0361                              = $0361 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0362                              = $0362 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0363                              = $0363 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0364                              = $0364 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0365                              = $0365 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0366                              = $0366 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0367                              = $0367 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0368                              = $0368 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0369                              = $0369 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_036A                              = $036A ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_036B                              = $036B ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_036C                              = $036C ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_036D                              = $036D ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_036E                              = $036E ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_036F                              = $036F ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0370                              = $0370 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0371                              = $0371 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0372                              = $0372 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0373                              = $0373 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0374                              = $0374 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0375                              = $0375 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0376                              = $0376 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0377                              = $0377 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0378                              = $0378 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_0379                              = $0379 ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_037A                              = $037A ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_037B                              = $037B ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_037C                              = $037C ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_037D                              = $037D ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_037E                              = $037E ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 
; ram_037F                              = $037F ; 00EC40 00F059 00F543 00F546 00F55A 00F55D 00F5B8 



; 
ram_ppu_buf2_cnt                        = $0380 ; 00EC40 00F0A3 00F0B1 00F0B7 00F2D7 00F330 00F339 00F39F 



; 0381-03BF (40) 
ram_ppu_buffer_2                        = $0381 ; 00EC40 00F092 00F33E 
; ram_0382                              = $0382 ; 00EC40 00F099 00F344 
; ram_0383                              = $0383 ; 00EC40 00F0A6 00F34A 
; ram_0384                              = $0384 ; 00EC40 00F0AA 00F2E0 
; ram_0385                              = $0385 ; 00EC40 00F092 00F0AA 00F2E0 00F33E 
; ram_0386                              = $0386 ; 00EC40 00F092 00F099 00F0AA 00F2E0 00F33E 00F344 
; ram_0387                              = $0387 ; 00EC40 00F099 00F0A6 00F0AA 00F2E0 00F344 00F34A 
; ram_0388                              = $0388 ; 00EC40 00F092 00F0A6 00F0AA 00F2E0 00F33E 00F34A 
; ram_0389                              = $0389 ; 00EC40 00F092 00F099 00F0AA 00F2E0 00F33E 00F344 
; ram_038A                              = $038A ; 00EC40 00F099 00F0A6 00F0AA 00F2E0 00F344 00F34A 
; ram_038B                              = $038B ; 00EC40 00F092 00F0A6 00F0AA 00F2E0 00F33E 00F34A 
; ram_038C                              = $038C ; 00EC40 00F092 00F099 00F0AA 00F2E0 00F33E 00F344 
; ram_038D                              = $038D ; 00EC40 00F099 00F0A6 00F0AA 00F2E0 00F344 00F34A 
; ram_038E                              = $038E ; 00EC40 00F092 00F0A6 00F0AA 00F2E0 00F33E 00F34A 
; ram_038F                              = $038F ; 00EC40 00F092 00F099 00F0AA 00F2E0 00F33E 00F344 
; ram_0390                              = $0390 ; 00EC40 00F092 00F099 00F0A6 00F0AA 00F2E0 00F33E 00F344 00F34A 
; ram_0391                              = $0391 ; 00EC40 00F099 00F0A6 00F0AA 00F2E0 00F344 00F34A 
; ram_0392                              = $0392 ; 00EC40 00F0A6 00F0AA 00F2E0 00F34A 
; ram_0393                              = $0393 ; 00EC40 00F0AA 00F2E0 
; ram_0394                              = $0394 ; 00EC40 00F0AA 00F2E0 
; ram_0395                              = $0395 ; 00EC40 00F092 00F0AA 00F2E0 00F33E 
; ram_0396                              = $0396 ; 00EC40 00F092 00F099 00F0AA 00F2E0 00F33E 00F344 
; ram_0397                              = $0397 ; 00EC40 00F092 00F099 00F0A6 00F0AA 00F2E0 00F33E 00F344 00F34A 
; ram_0398                              = $0398 ; 00EC40 00F099 00F0A6 00F0AA 00F2E0 00F344 00F34A 
; ram_0399                              = $0399 ; 00EC40 00F0A6 00F0AA 00F2E0 00F34A 
; ram_039A                              = $039A ; 00EC40 00F092 00F0AA 00F2E0 00F33E 
; ram_039B                              = $039B ; 00EC40 00F092 00F099 00F0AA 00F2E0 00F33E 00F344 
; ram_039C                              = $039C ; 00EC40 00F099 00F0A6 00F0AA 00F2E0 00F344 00F34A 
; ram_039D                              = $039D ; 00EC40 00F092 00F0A6 00F0AA 00F2E0 00F33E 00F34A 
; ram_039E                              = $039E ; 00EC40 00F099 00F0AA 00F2E0 00F344 
; ram_039F                              = $039F ; 00EC40 00F092 00F0A6 00F0AA 00F2E0 00F33E 00F34A 
; ram_03A0                              = $03A0 ; 00EC40 00F092 00F099 00F0AA 00F2E0 00F33E 00F344 
; ram_03A1                              = $03A1 ; 00EC40 00F099 00F0A6 00F0AA 00F2E0 00F344 00F34A 
; ram_03A2                              = $03A2 ; 00EC40 00F092 00F0A6 00F0AA 00F2E0 00F33E 00F34A 
; ram_03A3                              = $03A3 ; 00EC40 00F099 00F0AA 00F2E0 00F344 
; ram_03A4                              = $03A4 ; 00EC40 00F092 00F0A6 00F0AA 00F2E0 00F33E 00F34A 
; ram_03A5                              = $03A5 ; 00EC40 00F099 00F0AA 00F2E0 00F344 
; ram_03A6                              = $03A6 ; 00EC40 00F0A6 00F0AA 00F2E0 00F34A 
; ram_03A7                              = $03A7 ; 00EC40 00F092 00F0AA 00F2E0 00F33E 
; ram_03A8                              = $03A8 ; 00EC40 00F092 00F099 00F0AA 00F2E0 00F33E 00F344 
; ram_03A9                              = $03A9 ; 00EC40 00F092 00F099 00F0A6 00F0AA 00F2E0 00F33E 00F344 00F34A 
; ram_03AA                              = $03AA ; 00EC40 00F099 00F0A6 00F0AA 00F2E0 00F344 00F34A 
; ram_03AB                              = $03AB ; 00EC40 00F092 00F0A6 00F0AA 00F2E0 00F33E 00F34A 
; ram_03AC                              = $03AC ; 00EC40 00F099 00F0AA 00F2E0 00F344 
; ram_03AD                              = $03AD ; 00EC40 00F0A6 00F0AA 00F2E0 00F34A 
; ram_03AE                              = $03AE ; 00EC40 00F092 00F0AA 00F2E0 00F33E 
; ram_03AF                              = $03AF ; 00EC40 00F099 00F0AA 00F2E0 00F344 
; ram_03B0                              = $03B0 ; 00EC40 00F0A6 00F0AA 00F2E0 00F34A 
; ram_03B1                              = $03B1 ; 00EC40 00F0AA 00F2E0 
; ram_03B2                              = $03B2 ; 00EC40 00F0AA 00F2E0 
; ram_03B3                              = $03B3 ; 00EC40 00F0AA 00F2E0 
; ram_03B4                              = $03B4 ; 00EC40 00F0AA 00F2E0 
; ram_03B5                              = $03B5 ; 00EC40 00F0AA 00F2E0 
; ram_03B6                              = $03B6 ; 00EC40 
; ram_03B7                              = $03B7 ; 00EC40 
; ram_03B8                              = $03B8 ; 00EC40 
; ram_03B9                              = $03B9 ; 00EC40 
; ram_03BA                              = $03BA ; 00EC40 
; ram_03BB                              = $03BB ; 00EC40 
; ram_03BC                              = $03BC ; 00EC40 
; ram_03BD                              = $03BD ; 00EC40 
; ram_03BE                              = $03BE ; 00EC40 
; ram_03BF                              = $03BF ; 00EC40 



; bzk unused
ram_03C0                                = $03C0 ; 00EC40 
ram_03C1                                = $03C1 ; 00EC40 
ram_03C2                                = $03C2 ; 00EC40 
ram_03C3                                = $03C3 ; 00EC40 
ram_03C4                                = $03C4 ; 00EC40 
ram_03C5                                = $03C5 ; 00EC40 
ram_03C6                                = $03C6 ; 00EC40 
ram_03C7                                = $03C7 ; 00EC40 
ram_03C8                                = $03C8 ; 00EC40 
ram_03C9                                = $03C9 ; 00EC40 
ram_03CA                                = $03CA ; 00EC40 
ram_03CB                                = $03CB ; 00EC40 
ram_03CC                                = $03CC ; 00EC40 
ram_03CD                                = $03CD ; 00EC40 
ram_03CE                                = $03CE ; 00EC40 
ram_03CF                                = $03CF ; 00EC40 
ram_03D0                                = $03D0 ; 00EC40 
ram_03D1                                = $03D1 ; 00EC40 
ram_03D2                                = $03D2 ; 00EC40 
ram_03D3                                = $03D3 ; 00EC40 
ram_03D4                                = $03D4 ; 00EC40 
ram_03D5                                = $03D5 ; 00EC40 
ram_03D6                                = $03D6 ; 00EC40 
ram_03D7                                = $03D7 ; 00EC40 
ram_03D8                                = $03D8 ; 00EC40 
ram_03D9                                = $03D9 ; 00EC40 
ram_03DA                                = $03DA ; 00EC40 
ram_03DB                                = $03DB ; 00EC40 
ram_03DC                                = $03DC ; 00EC40 
ram_03DD                                = $03DD ; 00EC40 
ram_03DE                                = $03DE ; 00EC40 
ram_03DF                                = $03DF ; 00EC40 
ram_03E0                                = $03E0 ; 00EC40 
ram_03E1                                = $03E1 ; 00EC40 
ram_03E2                                = $03E2 ; 00EC40 
ram_03E3                                = $03E3 ; 00EC40 
ram_03E4                                = $03E4 ; 00EC40 
ram_03E5                                = $03E5 ; 00EC40 
ram_03E6                                = $03E6 ; 00EC40 
ram_03E7                                = $03E7 ; 00EC40 
ram_03E8                                = $03E8 ; 00EC40 
ram_03E9                                = $03E9 ; 00EC40 
ram_03EA                                = $03EA ; 00EC40 
ram_03EB                                = $03EB ; 00EC40 
ram_03EC                                = $03EC ; 00EC40 
ram_03ED                                = $03ED ; 00EC40 
ram_03EE                                = $03EE ; 00EC40 
ram_03EF                                = $03EF ; 00EC40 
ram_03F0                                = $03F0 ; 00EC40 
ram_03F1                                = $03F1 ; 00EC40 
ram_03F2                                = $03F2 ; 00EC40 
ram_03F3                                = $03F3 ; 00EC40 
ram_03F4                                = $03F4 ; 00EC40 
ram_03F5                                = $03F5 ; 00EC40 
ram_03F6                                = $03F6 ; 00EC40 
ram_03F7                                = $03F7 ; 00EC40 
ram_03F8                                = $03F8 ; 00EC40 
ram_03F9                                = $03F9 ; 00EC40 
ram_03FA                                = $03FA ; 00EC40 
ram_03FB                                = $03FB ; 00EC40 
ram_03FC                                = $03FC ; 00EC40 
ram_03FD                                = $03FD ; 00EC40 
ram_03FE                                = $03FE ; 00EC40 
ram_03FF                                = $03FF ; 00EC40 



; 
ram_pal_buffer_2                        = $0400 ; 008057 00EC43 00F0E6 00F613 00F635 00F667 00F680 00FFC3 
; ram_0401                              = $0401 ; 008057 00808C 0080BD 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_0402                              = $0402 ; 008057 008092 0080C3 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_0403                              = $0403 ; 008057 008098 0080C9 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_0404                              = $0404 ; 008057 00EC43 00F0E6 00F613 00F635 00F667 00F680 00FFC3 
; ram_0405                              = $0405 ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_0406                              = $0406 ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_0407                              = $0407 ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_0408                              = $0408 ; 008057 00EC43 00F0E6 00F613 00F635 00F667 00F680 00FFC3 
; ram_0409                              = $0409 ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_040A                              = $040A ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_040B                              = $040B ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_040C                              = $040C ; 008057 00EC43 00F0E6 00F613 00F635 00F667 00F680 00FFC3 
; ram_040D                              = $040D ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_040E                              = $040E ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_040F                              = $040F ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_0410                              = $0410 ; 008057 00EC43 00F0E6 00F613 00F635 00F667 00F680 00FFC3 
; ram_0411                              = $0411 ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_0412                              = $0412 ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_0413                              = $0413 ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_0414                              = $0414 ; 008057 00EC43 00F0E6 00F613 00F635 00F667 00F680 00FFC3 
; ram_0415                              = $0415 ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_0416                              = $0416 ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_0417                              = $0417 ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_0418                              = $0418 ; 008057 00EC43 00F0E6 00F613 00F635 00F667 00F680 00FFC3 
; ram_0419                              = $0419 ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_041A                              = $041A ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_041B                              = $041B ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_041C                              = $041C ; 008057 00EC43 00F0E6 00F613 00F635 00F667 00F680 00FFC3 
; ram_041D                              = $041D ; 008057 00EC43 00F0E6 00F613 00F635 00F667 00F680 00FFC3 
; ram_041E                              = $041E ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 
; ram_041F                              = $041F ; 008057 00EC43 00F0E6 00F613 00F635 00F63F 00F667 00F672 00F678 00F680 00FFC3 



; bzk unused
ram_0420                                = $0420 ; 00EC43 
ram_0421                                = $0421 ; 00EC43 
ram_0422                                = $0422 ; 00EC43 
ram_0423                                = $0423 ; 00EC43 
ram_0424                                = $0424 ; 00EC43 
ram_0425                                = $0425 ; 00EC43 
ram_0426                                = $0426 ; 00EC43 
ram_0427                                = $0427 ; 00EC43 
ram_0428                                = $0428 ; 00EC43 
ram_0429                                = $0429 ; 00EC43 
ram_042A                                = $042A ; 00EC43 
ram_042B                                = $042B ; 00EC43 
ram_042C                                = $042C ; 00EC43 
ram_042D                                = $042D ; 00EC43 
ram_042E                                = $042E ; 00EC43 
ram_042F                                = $042F ; 00EC43 
ram_0430                                = $0430 ; 00EC43 
ram_0431                                = $0431 ; 00EC43 
ram_0432                                = $0432 ; 00EC43 
ram_0433                                = $0433 ; 00EC43 
ram_0434                                = $0434 ; 00EC43 
ram_0435                                = $0435 ; 00EC43 
ram_0436                                = $0436 ; 00EC43 
ram_0437                                = $0437 ; 00EC43 
ram_0438                                = $0438 ; 00EC43 
ram_0439                                = $0439 ; 00EC43 
ram_043A                                = $043A ; 00EC43 
ram_043B                                = $043B ; 00EC43 
ram_043C                                = $043C ; 00EC43 
ram_043D                                = $043D ; 00EC43 
ram_043E                                = $043E ; 00EC43 
ram_043F                                = $043F ; 00EC43 
ram_0440                                = $0440 ; 00EC43 
ram_0441                                = $0441 ; 00EC43 
ram_0442                                = $0442 ; 00EC43 
ram_0443                                = $0443 ; 00EC43 
ram_0444                                = $0444 ; 00EC43 
ram_0445                                = $0445 ; 00EC43 
ram_0446                                = $0446 ; 00EC43 
ram_0447                                = $0447 ; 00EC43 
ram_0448                                = $0448 ; 00EC43 
ram_0449                                = $0449 ; 00EC43 
ram_044A                                = $044A ; 00EC43 
ram_044B                                = $044B ; 00EC43 
ram_044C                                = $044C ; 00EC43 
ram_044D                                = $044D ; 00EC43 
ram_044E                                = $044E ; 00EC43 
ram_044F                                = $044F ; 00EC43 
ram_0450                                = $0450 ; 00EC43 
ram_0451                                = $0451 ; 00EC43 
ram_0452                                = $0452 ; 00EC43 
ram_0453                                = $0453 ; 00EC43 
ram_0454                                = $0454 ; 00EC43 
ram_0455                                = $0455 ; 00EC43 
ram_0456                                = $0456 ; 00EC43 
ram_0457                                = $0457 ; 00EC43 
ram_0458                                = $0458 ; 00EC43 
ram_0459                                = $0459 ; 00EC43 
ram_045A                                = $045A ; 00EC43 
ram_045B                                = $045B ; 00EC43 
ram_045C                                = $045C ; 00EC43 
ram_045D                                = $045D ; 00EC43 
ram_045E                                = $045E ; 00EC43 
ram_045F                                = $045F ; 00EC43 
ram_0460                                = $0460 ; 00EC43 
ram_0461                                = $0461 ; 00EC43 
ram_0462                                = $0462 ; 00EC43 
ram_0463                                = $0463 ; 00EC43 
ram_0464                                = $0464 ; 00EC43 
ram_0465                                = $0465 ; 00EC43 
ram_0466                                = $0466 ; 00EC43 
ram_0467                                = $0467 ; 00EC43 
ram_0468                                = $0468 ; 00EC43 
ram_0469                                = $0469 ; 00EC43 
ram_046A                                = $046A ; 00EC43 
ram_046B                                = $046B ; 00EC43 
ram_046C                                = $046C ; 00EC43 
ram_046D                                = $046D ; 00EC43 
ram_046E                                = $046E ; 00EC43 
ram_046F                                = $046F ; 00EC43 
ram_0470                                = $0470 ; 00EC43 
ram_0471                                = $0471 ; 00EC43 
ram_0472                                = $0472 ; 00EC43 
ram_0473                                = $0473 ; 00EC43 
ram_0474                                = $0474 ; 00EC43 
ram_0475                                = $0475 ; 00EC43 
ram_0476                                = $0476 ; 00EC43 
ram_0477                                = $0477 ; 00EC43 
ram_0478                                = $0478 ; 00EC43 
ram_0479                                = $0479 ; 00EC43 
ram_047A                                = $047A ; 00EC43 
ram_047B                                = $047B ; 00EC43 
ram_047C                                = $047C ; 00EC43 
ram_047D                                = $047D ; 00EC43 
ram_047E                                = $047E ; 00EC43 
ram_047F                                = $047F ; 00EC43 
ram_0480                                = $0480 ; 00EC43 
ram_0481                                = $0481 ; 00EC43 
ram_0482                                = $0482 ; 00EC43 
ram_0483                                = $0483 ; 00EC43 
ram_0484                                = $0484 ; 00EC43 
ram_0485                                = $0485 ; 00EC43 
ram_0486                                = $0486 ; 00EC43 
ram_0487                                = $0487 ; 00EC43 
ram_0488                                = $0488 ; 00EC43 
ram_0489                                = $0489 ; 00EC43 
ram_048A                                = $048A ; 00EC43 
ram_048B                                = $048B ; 00EC43 
ram_048C                                = $048C ; 00EC43 
ram_048D                                = $048D ; 00EC43 
ram_048E                                = $048E ; 00EC43 
ram_048F                                = $048F ; 00EC43 
ram_0490                                = $0490 ; 00EC43 
ram_0491                                = $0491 ; 00EC43 
ram_0492                                = $0492 ; 00EC43 
ram_0493                                = $0493 ; 00EC43 
ram_0494                                = $0494 ; 00EC43 
ram_0495                                = $0495 ; 00EC43 
ram_0496                                = $0496 ; 00EC43 
ram_0497                                = $0497 ; 00EC43 
ram_0498                                = $0498 ; 00EC43 
ram_0499                                = $0499 ; 00EC43 
ram_049A                                = $049A ; 00EC43 
ram_049B                                = $049B ; 00EC43 
ram_049C                                = $049C ; 00EC43 
ram_049D                                = $049D ; 00EC43 
ram_049E                                = $049E ; 00EC43 
ram_049F                                = $049F ; 00EC43 
ram_04A0                                = $04A0 ; 00EC43 
ram_04A1                                = $04A1 ; 00EC43 
ram_04A2                                = $04A2 ; 00EC43 
ram_04A3                                = $04A3 ; 00EC43 
ram_04A4                                = $04A4 ; 00EC43 
ram_04A5                                = $04A5 ; 00EC43 
ram_04A6                                = $04A6 ; 00EC43 
ram_04A7                                = $04A7 ; 00EC43 
ram_04A8                                = $04A8 ; 00EC43 
ram_04A9                                = $04A9 ; 00EC43 
ram_04AA                                = $04AA ; 00EC43 
ram_04AB                                = $04AB ; 00EC43 
ram_04AC                                = $04AC ; 00EC43 
ram_04AD                                = $04AD ; 00EC43 
ram_04AE                                = $04AE ; 00EC43 
ram_04AF                                = $04AF ; 00EC43 
ram_04B0                                = $04B0 ; 00EC43 
ram_04B1                                = $04B1 ; 00EC43 
ram_04B2                                = $04B2 ; 00EC43 
ram_04B3                                = $04B3 ; 00EC43 
ram_04B4                                = $04B4 ; 00EC43 
ram_04B5                                = $04B5 ; 00EC43 
ram_04B6                                = $04B6 ; 00EC43 
ram_04B7                                = $04B7 ; 00EC43 
ram_04B8                                = $04B8 ; 00EC43 
ram_04B9                                = $04B9 ; 00EC43 
ram_04BA                                = $04BA ; 00EC43 
ram_04BB                                = $04BB ; 00EC43 
ram_04BC                                = $04BC ; 00EC43 
ram_04BD                                = $04BD ; 00EC43 
ram_04BE                                = $04BE ; 00EC43 
ram_04BF                                = $04BF ; 00EC43 
ram_04C0                                = $04C0 ; 00EC43 
ram_04C1                                = $04C1 ; 00EC43 
ram_04C2                                = $04C2 ; 00EC43 
ram_04C3                                = $04C3 ; 00EC43 
ram_04C4                                = $04C4 ; 00EC43 
ram_04C5                                = $04C5 ; 00EC43 
ram_04C6                                = $04C6 ; 00EC43 
ram_04C7                                = $04C7 ; 00EC43 
ram_04C8                                = $04C8 ; 00EC43 
ram_04C9                                = $04C9 ; 00EC43 
ram_04CA                                = $04CA ; 00EC43 
ram_04CB                                = $04CB ; 00EC43 
ram_04CC                                = $04CC ; 00EC43 
ram_04CD                                = $04CD ; 00EC43 
ram_04CE                                = $04CE ; 00EC43 
ram_04CF                                = $04CF ; 00EC43 
ram_04D0                                = $04D0 ; 00EC43 
ram_04D1                                = $04D1 ; 00EC43 
ram_04D2                                = $04D2 ; 00EC43 
ram_04D3                                = $04D3 ; 00EC43 
ram_04D4                                = $04D4 ; 00EC43 
ram_04D5                                = $04D5 ; 00EC43 
ram_04D6                                = $04D6 ; 00EC43 
ram_04D7                                = $04D7 ; 00EC43 
ram_04D8                                = $04D8 ; 00EC43 
ram_04D9                                = $04D9 ; 00EC43 
ram_04DA                                = $04DA ; 00EC43 
ram_04DB                                = $04DB ; 00EC43 
ram_04DC                                = $04DC ; 00EC43 
ram_04DD                                = $04DD ; 00EC43 
ram_04DE                                = $04DE ; 00EC43 
ram_04DF                                = $04DF ; 00EC43 
ram_04E0                                = $04E0 ; 00EC43 
ram_04E1                                = $04E1 ; 00EC43 
ram_04E2                                = $04E2 ; 00EC43 
ram_04E3                                = $04E3 ; 00EC43 
ram_04E4                                = $04E4 ; 00EC43 
ram_04E5                                = $04E5 ; 00EC43 
ram_04E6                                = $04E6 ; 00EC43 
ram_04E7                                = $04E7 ; 00EC43 
ram_04E8                                = $04E8 ; 00EC43 
ram_04E9                                = $04E9 ; 00EC43 
ram_04EA                                = $04EA ; 00EC43 
ram_04EB                                = $04EB ; 00EC43 
ram_04EC                                = $04EC ; 00EC43 
ram_04ED                                = $04ED ; 00EC43 
ram_04EE                                = $04EE ; 00EC43 
ram_04EF                                = $04EF ; 00EC43 
ram_04F0                                = $04F0 ; 00EC43 
ram_04F1                                = $04F1 ; 00EC43 
ram_04F2                                = $04F2 ; 00EC43 
ram_04F3                                = $04F3 ; 00EC43 
ram_04F4                                = $04F4 ; 00EC43 
ram_04F5                                = $04F5 ; 00EC43 
ram_04F6                                = $04F6 ; 00EC43 
ram_04F7                                = $04F7 ; 00EC43 
ram_04F8                                = $04F8 ; 00EC43 
ram_04F9                                = $04F9 ; 00EC43 
ram_04FA                                = $04FA ; 00EC43 
ram_04FB                                = $04FB ; 00EC43 
ram_04FC                                = $04FC ; 00EC43 
ram_04FD                                = $04FD ; 00EC43 
ram_04FE                                = $04FE ; 00EC43 
ram_04FF                                = $04FF ; 00EC43 



; *** 0500-05FF (100) player and enemies ***
; 0500-051F (20) player 00
; 0520-053F (20) enemy 01
; 0540-055F (20) enemy 02
; 0560-057F (20) enemy 03
; 0580-059F (20) enemy 04
; 05A0-05BF (20) enemy 05
; 05C0-05DF (20) enemy 07
; 05E0-05FF (20) enemy 07

; see con_obj_state
ram_obj_state                           = $0500 ; 00C0A7 00C1B8 00C1E7 00C21E 00C232 00C267 00C26C 00C2C1 00C2EC 00C2FE 00C305 00C30A 00C316 00C31B 00C330 00C337 00C34C 00C353 00C70A 00C730 00C7D9 00C85D 00C88D 00C8BD 00C910 00C91F 00C924 00C96B 00C970 00C989 00C994 00C99B 00C9A0 00CA3F 00CA46 00CAD9 00CAE0 00CB58 00CB5F 00CB8F 00CB99 00CBA3 00CD08 00CD0D 00CD10 00CE6E 00CE7D 00CEFE 00CFA3 00D024 00D03B 00D1C8 00D220 00D225 00D24B 00D250 00D6B2 00E246 00E353 00E38C 00E3F3 00E49C 00E4CA 00E506 00E53F 00E55D 00E6E0 00E6F0 00EC46 
ram_pos_X_lo_obj                        = $0501 ; 00C1D9 00C1EE 00C252 00C280 00C29D 00C2D4 00C31F 00C325 00C33B 00C341 00C5FC 00C70A 00C746 00C894 00C8B6 00C8C4 00C8DE 00C939 00C93F 00C977 00C9B7 00C9CB 00C9F3 00CA24 00CA55 00CA69 00CA8C 00CAB8 00CAE7 00CAEE 00CB1A 00CB63 00CBB0 00CBB9 00CBE3 00CC06 00CCA3 00CCBF 00CCDA 00CEBC 00CFC1 00CFC9 00D08F 00D0D5 00D18D 00D193 00D287 00D28D 00D299 00D29F 00D2B2 00D30B 00D64A 00D6BF 00E250 00E35F 00E365 00E40D 00E4D7 00E513 00E587 00E5E3 00E617 00E640 00E6E9 00E6F7 00E727 00E75D 00E785 00E78B 00EC46 
ram_pos_X_hi_obj                        = $0502 ; 00C258 00C285 00C2A5 00C2DA 00C328 00C32D 00C344 00C349 00C604 00C70A 00C74E 00C89C 00C8E3 00C942 00C947 00C9D3 00C9FB 00CA6E 00CA91 00CAF6 00CB22 00CB6B 00CBBE 00CBE8 00CC0B 00CCAB 00CCC7 00CCE2 00CEC1 00CFCE 00D094 00D0DA 00D196 00D19B 00D290 00D295 00D2A2 00D2A7 00D2B7 00D310 00D64F 00D6C4 00E258 00E368 00E36D 00E412 00E4DC 00E519 00E58C 00E5EB 00E61F 00E645 00E72F 00E765 00E78E 00E793 00EC46 
ram_pos_Y_lo_obj                        = $0503 ; 00C25E 00C28A 00C2AC 00C2E0 00C5B4 00C70A 00C75E 00C8A3 00C8E8 00C94A 00C95A 00C960 00C97F 00C9C1 00C9DA 00CA02 00CA1B 00CA20 00CA2C 00CA31 00CA34 00CA5F 00CA73 00CA96 00CAAF 00CAB4 00CABD 00CAC3 00CAC6 00CACB 00CACE 00CAFD 00CB29 00CB47 00CB4D 00CB72 00CBC3 00CBED 00CC10 00CC4D 00CC69 00CC8A 00CEC6 00CFD3 00D099 00D0DF 00D101 00D107 00D16A 00D170 00D19E 00D1A4 00D263 00D269 00D275 00D27B 00D2BC 00D315 00D5E3 00D622 00D69C 00E25F 00E417 00E4F0 00E521 00E591 00E5F2 00E631 00E665 00E685 00E68B 00E736 00E76C 00EC46 
ram_pos_Y_hi_obj                        = $0504 ; 00C264 00C292 00C2B4 00C2E6 00C5BC 00C70A 00C768 00C8AB 00C8F0 00C963 00C968 00C9E2 00CA0A 00CA37 00CA3C 00CA7B 00CA9E 00CAD1 00CAD6 00CB05 00CB31 00CB50 00CB55 00CB7A 00CBCB 00CBF5 00CC18 00CC55 00CC71 00CC92 00CECB 00CFDB 00D0A1 00D0E4 00D10A 00D10F 00D173 00D178 00D1A7 00D1AC 00D26C 00D271 00D27E 00D283 00D2C1 00D31A 00D5E8 00D6A4 00E267 00E41F 00E4F8 00E52A 00E596 00E5F7 00E639 00E66D 00E68E 00E693 00E73B 00E774 00EC46 
ram_0505                                = $0505 ; 00C24F 00C2D7 00C70A 00C749 00EC46 
ram_0506                                = $0506 ; 00C255 00C2DD 00C70A 00C751 00EC46 
ram_0507                                = $0507 ; 00C25B 00C2E3 00C70A 00C761 00EC46 
ram_0508                                = $0508 ; 00C261 00C2E9 00C70A 00C76B 00EC46 
ram_0509                                = $0509 ; 00C70A 00C7E6 00CE87 00CEA7 00CEE9 00CFB7 00D342 00E704 00EC46 
ram_050A                                = $050A ; 00C70A 00EC46 
ram_obj_input                           = $050B ; 00C1C7 00C1CC 00C1D3 00C1D6 00C204 00C20E 00C216 00C21B 00C229 00C22C 00C27A 00C30D 00C70A 00C9AF 00CA4D 00CB3F 00CFE5 00CFEC 00D548 00D562 00D573 00D635 00E718 00E71F 00EC46 
ram_animation_id                        = $050C ; 00C70A 00CEA2 00CEB0 00CEB9 00CEF8 00D22A 00D23F 00D25C 00D2FC 00D308 00D378 00EC46 
ram_animation_timer                     = $050D ; 00C70A 00CE84 00CE8C 00CE9F 00D22D 00D242 00D25F 00D2ED 00D2F0 00D2F9 00EC46 
ram_050E                                = $050E ; 00C70A 00D072 00D075 00D084 00D087 00D0BD 00D0CA 00D0CD 00D0FE 00D15B 00D15E 00D17F 00D182 00D1B0 00D1B3 00D1BB 00D1BE 00D1CF 00D1D2 00D1E1 00D1E4 00D1EF 00D1F2 00D203 00D206 00D211 00D214 00D230 00D245 00D259 00E577 00E57A 00E584 00EC46 
ram_050F                                = $050F ; 00C70A 00EC46 
ram_0510                                = $0510 ; 00C70A 00D04F 00D233 00D23A 00D351 00EC46 
; death animation?
ram_0511                                = $0511 ; 00C70A 00D119 00D125 00D131 00D13D 00D149 00D236 00D248 00D254 00D36A 00EC46 
ram_0512                                = $0512 ; 00C1E0 00C1FA 00C1FF 00C207 00C26F 00C276 00C70A 00C908 00C90D 00C917 00C91C 00C9A3 00C9A8 00CC2D 00D029 00D0B3 00D0B8 00D0F4 00D0F9 00D2AB 00D2C9 00D2D5 00D755 00D75A 00E29C 00E2A1 00E562 00E59E 00E5A3 00E606 00E60B 00E654 00E659 00E677 00E67C 00E696 00E69B 00EC46 
ram_0513                                = $0513 ; 00C70A 00EC46 
; some sort of frame counter (enemies only)
ram_0514                                = $0514 ; 00C70A 00EC46 
; invincibility timer
ram_invinc_timer                        = $0515 ; 00C70A 00CD15 00CD1A 00CD1D 00CD24 00CD2E 00D72F 00E295 00EC46 
ram_0516                                = $0516 ; 00C70A 00E5C6 00E5CD 00E6CC 00E754 00E7A1 00EC46 
ram_0517                                = $0517 ; 00C70A 00E5A8 00E5DB 00E60F 00E629 00E65D 00E759 00E7A6 00EC46 
ram_0518                                = $0518 ; 00C0C8 00C70A 00CE78 00CEDF 00EC46 
ram_0519                                = $0519 ; 00C70A 00EC46 
ram_051A                                = $051A ; 00C70A 00EC46 
ram_051B                                = $051B ; 00C70A 00EC46 
ram_051C                                = $051C ; 00C70A 00EC46 
ram_051D                                = $051D ; 00C70A 00EC46 
ram_051E                                = $051E ; 00C70A 00EC46 
ram_051F                                = $051F ; 00C70A 00EC46 
; ram_0520                              = $0520 ; 00C232 00C267 00C26C 00C2C1 00C2EC 00C2FE 00C305 00C30A 00C316 00C31B 00C330 00C337 00C34C 00C353 00C70A 00C730 00C7D9 00C85D 00C88D 00C8BD 00C910 00C91F 00C924 00C96B 00C970 00C989 00C994 00C99B 00C9A0 00CB58 00CB5F 00CB8F 00CB99 00CBA3 00CD44 00CD49 00CD4C 00CD5E 00CD63 00CD66 00CE6E 00CE7D 00CEFE 00CFA3 00D024 00D03B 00D1C8 00D220 00D225 00D24B 00D250 00D58F 00D5A1 00E278 00E312 00E353 00E55D 00E6E0 00E6F0 00EC46 
; ram_0521                              = $0521 ; 00C252 00C280 00C29D 00C2D4 00C31F 00C325 00C33B 00C341 00C70A 00C746 00C894 00C8B6 00C8C4 00C8DE 00C939 00C93F 00C977 00CAE7 00CAEE 00CB1A 00CB63 00CBB0 00CBB9 00CBE3 00CC06 00CEBC 00CFC1 00CFC9 00D0D5 00D18D 00D193 00D287 00D28D 00D299 00D29F 00D2B2 00D30B 00D5AD 00D65B 00E2BE 00E35F 00E365 00E40D 00E587 00E5E3 00E617 00E640 00E6E9 00E6F7 00E727 00E785 00E78B 00EC46 
; ram_0522                              = $0522 ; 00C258 00C285 00C2A5 00C2DA 00C328 00C32D 00C344 00C349 00C70A 00C74E 00C89C 00C8E3 00C942 00C947 00CAF6 00CB22 00CB6B 00CBBE 00CBE8 00CC0B 00CEC1 00CFCE 00D0DA 00D196 00D19B 00D290 00D295 00D2A2 00D2A7 00D2B7 00D310 00D660 00E2C3 00E368 00E36D 00E412 00E58C 00E5EB 00E61F 00E645 00E72F 00E78E 00E793 00EC46 
; ram_0523                              = $0523 ; 00C25E 00C28A 00C2AC 00C2E0 00C70A 00C75E 00C8A3 00C8E8 00C94A 00C951 00C95A 00C960 00C97F 00CAFD 00CB29 00CB47 00CB4D 00CB72 00CBC3 00CBED 00CC10 00CEC6 00CFD3 00D0DF 00D101 00D107 00D19E 00D1A4 00D263 00D269 00D275 00D27B 00D2BC 00D315 00D629 00E2C8 00E37A 00E380 00E417 00E591 00E5F2 00E631 00E665 00E736 00EC46 
; ram_0524                              = $0524 ; 00C264 00C292 00C2B4 00C2E6 00C70A 00C768 00C8AB 00C8F0 00C963 00C968 00CB05 00CB31 00CB50 00CB55 00CB7A 00CBCB 00CBF5 00CC18 00CECB 00CFDB 00D0E4 00D10A 00D10F 00D1A7 00D1AC 00D26C 00D271 00D27E 00D283 00D2C1 00D31A 00E2CD 00E383 00E388 00E41F 00E596 00E5F7 00E639 00E66D 00E73B 00EC46 
; ram_0525                              = $0525 ; 00C24F 00C2D7 00C70A 00C749 00EC46 
; ram_0526                              = $0526 ; 00C255 00C2DD 00C70A 00C751 00EC46 
; ram_0527                              = $0527 ; 00C25B 00C2E3 00C70A 00C761 00EC46 
; ram_0528                              = $0528 ; 00C261 00C2E9 00C70A 00C76B 00EC46 
; ram_0529                              = $0529 ; 00C70A 00C7E6 00CE87 00CEA7 00CEE9 00CFB7 00D342 00E704 00EC46 
; ram_052A                              = $052A ; 00C70A 00EC46 
; ram_052B                              = $052B ; 00C27A 00C30D 00C70A 00CB3F 00CFE5 00CFEC 00D587 00D58C 00D59A 00D59D 00D5D4 00D5D9 00D63C 00D670 00D676 00D682 00D687 00E718 00E71F 00EC46 
; ram_052C                              = $052C ; 00C70A 00CEA2 00CEB0 00CEB9 00CEF8 00D22A 00D23F 00D25C 00D2FC 00D308 00D378 00EC46 
; ram_052D                              = $052D ; 00C70A 00CE84 00CE96 00CE9F 00D22D 00D242 00D25F 00D2ED 00D2F0 00D2F9 00EC46 
; ram_052E                              = $052E ; 00C70A 00D072 00D075 00D0CA 00D0CD 00D0FE 00D15B 00D15E 00D17F 00D182 00D1B0 00D1B3 00D1BB 00D1BE 00D1CF 00D1D2 00D203 00D206 00D211 00D214 00D230 00D245 00D259 00E577 00E57A 00E584 00EC46 
; ram_052F                              = $052F ; 00C70A 00EC46 
; ram_0530                              = $0530 ; 00C70A 00D04F 00D233 00D23A 00D351 00EC46 
; ram_0531                              = $0531 ; 00C70A 00D119 00D125 00D149 00D236 00D248 00D254 00D36A 00EC46 
; ram_0532                              = $0532 ; 00C26F 00C276 00C70A 00C908 00C90D 00C917 00C91C 00C9A3 00C9A8 00D029 00D0F4 00D0F9 00D2AB 00D2C9 00D2D5 00D57F 00D5A6 00D5C5 00D5CA 00D67A 00E562 00E59E 00E5A3 00E606 00E60B 00E654 00E659 00E677 00E67C 00EC46 
; ram_0533                              = $0533 ; 00C70A 00D5BB 00D5BE 00EC46 
; ram_0534                              = $0534 ; 00C2CA 00C2CD 00C70A 00C885 00D047 00D2E6 00EC46 
; ram_0535                              = $0535 ; 00C70A 00EC46 
; ram_0536                              = $0536 ; 00C70A 00E5C6 00E5CD 00E6CC 00E754 00EC46 
; ram_0537                              = $0537 ; 00C70A 00E5A8 00E5DB 00E60F 00E629 00E65D 00E759 00EC46 
; ram_0538                              = $0538 ; 00C70A 00CE78 00CEDF 00EC46 
; ram_0539                              = $0539 ; 00C70A 00EC46 
; ram_053A                              = $053A ; 00C70A 00EC46 
; ram_053B                              = $053B ; 00C70A 00EC46 
; ram_053C                              = $053C ; 00C70A 00EC46 
; ram_053D                              = $053D ; 00C70A 00EC46 
; ram_053E                              = $053E ; 00C70A 00EC46 
; ram_053F                              = $053F ; 00C70A 00EC46 
; ram_0540                              = $0540 ; 00C232 00C267 00C26C 00C2C1 00C2EC 00C2FE 00C305 00C30A 00C316 00C31B 00C330 00C337 00C34C 00C353 00C70A 00C730 00C7D9 00C85D 00C88D 00C8BD 00C910 00C91F 00C924 00C96B 00C970 00C989 00C994 00C99B 00C9A0 00CB58 00CB5F 00CB8F 00CB99 00CBA3 00CD44 00CD49 00CD4C 00CD5E 00CD63 00CD66 00CE6E 00CE7D 00CEFE 00CFA3 00D024 00D03B 00D1C8 00D220 00D225 00D24B 00D250 00D58F 00D5A1 00E278 00E312 00E353 00E55D 00E6E0 00E6F0 00EC46 
; ram_0541                              = $0541 ; 00C252 00C280 00C29D 00C2D4 00C31F 00C325 00C33B 00C341 00C70A 00C746 00C894 00C8B6 00C8C4 00C8DE 00C939 00C93F 00C977 00CAE7 00CAEE 00CB1A 00CB63 00CBB0 00CBB9 00CBE3 00CC06 00CEBC 00CFC1 00CFC9 00D08F 00D0D5 00D18D 00D193 00D287 00D28D 00D299 00D29F 00D2B2 00D30B 00D5AD 00D65B 00E2BE 00E35F 00E365 00E40D 00E587 00E5E3 00E617 00E640 00E6E9 00E6F7 00E727 00E75D 00E785 00E78B 00EC46 
; ram_0542                              = $0542 ; 00C258 00C285 00C2A5 00C2DA 00C328 00C32D 00C344 00C349 00C70A 00C74E 00C89C 00C8E3 00C942 00C947 00CAF6 00CB22 00CB6B 00CBBE 00CBE8 00CC0B 00CEC1 00CFCE 00D094 00D0DA 00D196 00D19B 00D290 00D295 00D2A2 00D2A7 00D2B7 00D310 00D660 00E2C3 00E368 00E36D 00E412 00E58C 00E5EB 00E61F 00E645 00E72F 00E765 00E78E 00E793 00EC46 
; ram_0543                              = $0543 ; 00C25E 00C28A 00C2AC 00C2E0 00C70A 00C75E 00C8A3 00C8E8 00C94A 00C951 00C95A 00C960 00C97F 00CAFD 00CB29 00CB47 00CB4D 00CB72 00CBC3 00CBED 00CC10 00CEC6 00CFD3 00D099 00D0DF 00D101 00D107 00D19E 00D1A4 00D263 00D269 00D275 00D27B 00D2BC 00D315 00D5F4 00E2C8 00E37A 00E380 00E417 00E591 00E5F2 00E631 00E665 00E685 00E68B 00E736 00E76C 00EC46 
; ram_0544                              = $0544 ; 00C264 00C292 00C2B4 00C2E6 00C70A 00C768 00C8AB 00C8F0 00C963 00C968 00CB05 00CB31 00CB50 00CB55 00CB7A 00CBCB 00CBF5 00CC18 00CECB 00CFDB 00D0A1 00D0E4 00D10A 00D10F 00D1A7 00D1AC 00D26C 00D271 00D27E 00D283 00D2C1 00D31A 00D5F9 00E2CD 00E383 00E388 00E41F 00E596 00E5F7 00E639 00E66D 00E68E 00E693 00E73B 00E774 00EC46 
; ram_0545                              = $0545 ; 00C24F 00C2D7 00C70A 00C749 00EC46 
; ram_0546                              = $0546 ; 00C255 00C2DD 00C70A 00C751 00EC46 
; ram_0547                              = $0547 ; 00C25B 00C2E3 00C70A 00C761 00EC46 
; ram_0548                              = $0548 ; 00C261 00C2E9 00C70A 00C76B 00EC46 
; ram_0549                              = $0549 ; 00C70A 00C7E6 00CE87 00CEA7 00CEE9 00CFB7 00D342 00E704 00EC46 
; ram_054A                              = $054A ; 00C70A 00EC46 
; ram_054B                              = $054B ; 00C27A 00C30D 00C70A 00CB3F 00CFE5 00CFEC 00D587 00D58C 00D59A 00D59D 00D607 00D60C 00D613 00D618 00D670 00D676 00D682 00D687 00E718 00E71F 00EC46 
; ram_054C                              = $054C ; 00C70A 00CEA2 00CEB0 00CEB9 00CEF8 00D22A 00D23F 00D25C 00D2FC 00D308 00D378 00EC46 
; ram_054D                              = $054D ; 00C70A 00CE84 00CE96 00CE9F 00D22D 00D242 00D25F 00D2ED 00D2F0 00D2F9 00EC46 
; ram_054E                              = $054E ; 00C70A 00D072 00D075 00D084 00D087 00D0BD 00D0CA 00D0CD 00D0FE 00D15B 00D15E 00D17F 00D182 00D1B0 00D1B3 00D1BB 00D1BE 00D1CF 00D1D2 00D1E1 00D1E4 00D1EF 00D1F2 00D203 00D206 00D211 00D214 00D230 00D245 00D259 00E577 00E57A 00E584 00EC46 
; ram_054F                              = $054F ; 00C70A 00EC46 
; ram_0550                              = $0550 ; 00C70A 00D04F 00D233 00D23A 00D351 00EC46 
; ram_0551                              = $0551 ; 00C70A 00D119 00D125 00D131 00D13D 00D149 00D236 00D248 00D254 00D36A 00EC46 
; ram_0552                              = $0552 ; 00C26F 00C276 00C70A 00C908 00C90D 00C917 00C91C 00C9A3 00C9A8 00D029 00D0B3 00D0B8 00D0F4 00D0F9 00D2AB 00D2C9 00D2D5 00D57F 00D5A6 00D5C5 00D5CA 00D67A 00E562 00E59E 00E5A3 00E606 00E60B 00E654 00E659 00E677 00E67C 00E696 00E69B 00EC46 
; ram_0553                              = $0553 ; 00C70A 00D5BB 00D5BE 00EC46 
; ram_0554                              = $0554 ; 00C2CA 00C2CD 00C70A 00C885 00D047 00D2E6 00EC46 
; ram_0555                              = $0555 ; 00C70A 00EC46 
; ram_0556                              = $0556 ; 00C70A 00E5C6 00E5CD 00E6CC 00E754 00E7A1 00EC46 
; ram_0557                              = $0557 ; 00C70A 00E5A8 00E5DB 00E60F 00E629 00E65D 00E759 00E7A6 00EC46 
; ram_0558                              = $0558 ; 00C70A 00CE78 00CEDF 00EC46 
; ram_0559                              = $0559 ; 00C70A 00EC46 
; ram_055A                              = $055A ; 00C70A 00EC46 
; ram_055B                              = $055B ; 00C70A 00EC46 
; ram_055C                              = $055C ; 00C70A 00EC46 
; ram_055D                              = $055D ; 00C70A 00EC46 
; ram_055E                              = $055E ; 00C70A 00EC46 
; ram_055F                              = $055F ; 00C70A 00EC46 
; ram_0560                              = $0560 ; 00C232 00C267 00C26C 00C2C1 00C2EC 00C2FE 00C305 00C30A 00C316 00C31B 00C330 00C337 00C34C 00C353 00C70A 00C730 00C7D9 00C85D 00C88D 00C8BD 00C910 00C91F 00C924 00C96B 00C970 00C989 00C994 00CB58 00CB5F 00CB8F 00CB99 00CBA3 00CD44 00CD49 00CD4C 00CD5E 00CD63 00CD66 00CE6E 00CE7D 00CEFE 00CFA3 00D024 00D03B 00D1C8 00D220 00D225 00D24B 00D250 00D58F 00D5A1 00E278 00E312 00E353 00E55D 00E6E0 00E6F0 00EC46 
; ram_0561                              = $0561 ; 00C252 00C280 00C29D 00C2D4 00C31F 00C325 00C33B 00C341 00C70A 00C746 00C894 00C8B6 00C8C4 00C8DE 00C939 00C93F 00C977 00CAE7 00CAEE 00CB1A 00CB63 00CBB0 00CBB9 00CBE3 00CC06 00CEBC 00CFC1 00CFC9 00D0D5 00D18D 00D193 00D287 00D28D 00D299 00D29F 00D2B2 00D30B 00D5AD 00E2BE 00E35F 00E365 00E40D 00E587 00E5E3 00E617 00E640 00E6E9 00E6F7 00E727 00E785 00E78B 00EC46 
; ram_0562                              = $0562 ; 00C258 00C285 00C2A5 00C2DA 00C328 00C32D 00C344 00C349 00C70A 00C74E 00C89C 00C8E3 00C942 00C947 00CAF6 00CB22 00CB6B 00CBBE 00CBE8 00CC0B 00CEC1 00CFCE 00D0DA 00D196 00D19B 00D290 00D295 00D2A2 00D2A7 00D2B7 00D310 00E2C3 00E368 00E36D 00E412 00E58C 00E5EB 00E61F 00E645 00E72F 00E78E 00E793 00EC46 
; ram_0563                              = $0563 ; 00C25E 00C28A 00C2AC 00C2E0 00C70A 00C75E 00C8A3 00C8E8 00C94A 00C951 00C95A 00C960 00C97F 00CAFD 00CB29 00CB47 00CB4D 00CB72 00CBC3 00CBED 00CC10 00CEC6 00CFD3 00D0DF 00D101 00D107 00D19E 00D1A4 00D263 00D269 00D275 00D27B 00D2BC 00D315 00E2C8 00E37A 00E380 00E417 00E591 00E5F2 00E631 00E665 00E736 00EC46 
; ram_0564                              = $0564 ; 00C264 00C292 00C2B4 00C2E6 00C70A 00C768 00C8AB 00C8F0 00C963 00C968 00CB05 00CB31 00CB50 00CB55 00CB7A 00CBCB 00CBF5 00CC18 00CECB 00CFDB 00D0E4 00D10A 00D10F 00D1A7 00D1AC 00D26C 00D271 00D27E 00D283 00D2C1 00D31A 00E2CD 00E383 00E388 00E41F 00E596 00E5F7 00E639 00E66D 00E73B 00EC46 
; ram_0565                              = $0565 ; 00C24F 00C2D7 00C70A 00C749 00EC46 
; ram_0566                              = $0566 ; 00C255 00C2DD 00C70A 00C751 00EC46 
; ram_0567                              = $0567 ; 00C25B 00C2E3 00C70A 00C761 00EC46 
; ram_0568                              = $0568 ; 00C261 00C2E9 00C70A 00C76B 00EC46 
; ram_0569                              = $0569 ; 00C70A 00C7E6 00CE87 00CEA7 00CEE9 00CFB7 00D342 00E704 00EC46 
; ram_056A                              = $056A ; 00C70A 00EC46 
; ram_056B                              = $056B ; 00C27A 00C30D 00C70A 00CB3F 00CFE5 00CFEC 00D569 00D587 00D58C 00D59A 00D59D 00D682 00D687 00E718 00E71F 00EC46 
; ram_056C                              = $056C ; 00C70A 00CEA2 00CEB0 00CEB9 00CEF8 00D22A 00D23F 00D25C 00D2FC 00D308 00D378 00EC46 
; ram_056D                              = $056D ; 00C70A 00CE84 00CE96 00CE9F 00D22D 00D242 00D25F 00D2ED 00D2F0 00D2F9 00EC46 
; ram_056E                              = $056E ; 00C70A 00D072 00D075 00D0CA 00D0CD 00D0FE 00D15B 00D15E 00D17F 00D182 00D1B0 00D1B3 00D1BB 00D1BE 00D1CF 00D1D2 00D203 00D206 00D211 00D214 00D230 00D245 00D259 00E577 00E57A 00E584 00EC46 
; ram_056F                              = $056F ; 00C70A 00EC46 
; ram_0570                              = $0570 ; 00C70A 00D04F 00D233 00D23A 00D351 00EC46 
; ram_0571                              = $0571 ; 00C70A 00D119 00D125 00D149 00D236 00D248 00D254 00D36A 00EC46 
; ram_0572                              = $0572 ; 00C26F 00C276 00C70A 00C908 00C90D 00C917 00C91C 00D029 00D0F4 00D0F9 00D2AB 00D2C9 00D2D5 00D57F 00D5A6 00D5C5 00D5CA 00D67A 00E562 00E59E 00E5A3 00E606 00E60B 00E654 00E659 00E677 00E67C 00EC46 
; ram_0573                              = $0573 ; 00C70A 00D5BB 00D5BE 00EC46 
; ram_0574                              = $0574 ; 00C2CA 00C2CD 00C70A 00C885 00D047 00D2E6 00EC46 
; ram_0575                              = $0575 ; 00C70A 00EC46 
; ram_0576                              = $0576 ; 00C70A 00E5C6 00E5CD 00E6CC 00E754 00EC46 
; ram_0577                              = $0577 ; 00C70A 00E5A8 00E5DB 00E60F 00E629 00E65D 00E759 00EC46 
; ram_0578                              = $0578 ; 00C70A 00CE78 00CEDF 00EC46 
; ram_0579                              = $0579 ; 00C70A 00EC46 
; ram_057A                              = $057A ; 00C70A 00EC46 
; ram_057B                              = $057B ; 00C70A 00EC46 
; ram_057C                              = $057C ; 00C70A 00EC46 
; ram_057D                              = $057D ; 00C70A 00EC46 
; ram_057E                              = $057E ; 00C70A 00EC46 
; ram_057F                              = $057F ; 00C70A 00EC46 
; ram_0580                              = $0580 ; 00C232 00C267 00C26C 00C2C1 00C2EC 00C2FE 00C305 00C30A 00C316 00C31B 00C330 00C337 00C34C 00C353 00C70A 00C730 00C7D9 00C85D 00C88D 00C8BD 00C910 00C91F 00C924 00C96B 00C970 00C989 00C994 00C99B 00C9A0 00CB58 00CB5F 00CB8F 00CB99 00CBA3 00CD44 00CD49 00CD4C 00CD5E 00CD63 00CD66 00CE6E 00CE7D 00CEFE 00CFA3 00D024 00D03B 00D1C8 00D220 00D225 00D24B 00D250 00D58F 00D5A1 00E278 00E312 00E353 00E55D 00E6E0 00E6F0 00EC46 
; ram_0581                              = $0581 ; 00C252 00C280 00C29D 00C2D4 00C31F 00C325 00C33B 00C341 00C70A 00C746 00C894 00C8B6 00C8C4 00C8DE 00C939 00C93F 00C977 00CAE7 00CAEE 00CB1A 00CB63 00CBB0 00CBB9 00CBE3 00CC06 00CEBC 00CFC1 00CFC9 00D0D5 00D18D 00D193 00D287 00D28D 00D299 00D29F 00D2B2 00D30B 00D5AD 00E2BE 00E35F 00E365 00E40D 00E587 00E5E3 00E617 00E640 00E6E9 00E6F7 00E727 00E785 00E78B 00EC46 
; ram_0582                              = $0582 ; 00C258 00C285 00C2A5 00C2DA 00C328 00C32D 00C344 00C349 00C70A 00C74E 00C89C 00C8E3 00C942 00C947 00CAF6 00CB22 00CB6B 00CBBE 00CBE8 00CC0B 00CEC1 00CFCE 00D0DA 00D196 00D19B 00D290 00D295 00D2A2 00D2A7 00D2B7 00D310 00E2C3 00E368 00E36D 00E412 00E58C 00E5EB 00E61F 00E645 00E72F 00E78E 00E793 00EC46 
; ram_0583                              = $0583 ; 00C25E 00C28A 00C2AC 00C2E0 00C70A 00C75E 00C8A3 00C8E8 00C94A 00C951 00C95A 00C960 00C97F 00CAFD 00CB29 00CB47 00CB4D 00CB72 00CBC3 00CBED 00CC10 00CEC6 00CFD3 00D0DF 00D101 00D107 00D19E 00D1A4 00D263 00D269 00D275 00D27B 00D2BC 00D315 00E2C8 00E37A 00E380 00E417 00E591 00E5F2 00E631 00E665 00E736 00EC46 
; ram_0584                              = $0584 ; 00C264 00C292 00C2B4 00C2E6 00C70A 00C768 00C8AB 00C8F0 00C963 00C968 00CB05 00CB31 00CB50 00CB55 00CB7A 00CBCB 00CBF5 00CC18 00CECB 00CFDB 00D0E4 00D10A 00D10F 00D1A7 00D1AC 00D26C 00D271 00D27E 00D283 00D2C1 00D31A 00E2CD 00E383 00E388 00E41F 00E596 00E5F7 00E639 00E66D 00E73B 00EC46 
; ram_0585                              = $0585 ; 00C24F 00C2D7 00C70A 00C749 00EC46 
; ram_0586                              = $0586 ; 00C255 00C2DD 00C70A 00C751 00EC46 
; ram_0587                              = $0587 ; 00C25B 00C2E3 00C70A 00C761 00EC46 
; ram_0588                              = $0588 ; 00C261 00C2E9 00C70A 00C76B 00EC46 
; ram_0589                              = $0589 ; 00C70A 00C7E6 00CE87 00CEA7 00CEE9 00CFB7 00D342 00E704 00EC46 
; ram_058A                              = $058A ; 00C70A 00EC46 
; ram_058B                              = $058B ; 00C27A 00C30D 00C70A 00CB3F 00CFE5 00CFEC 00D558 00D587 00D58C 00D59A 00D59D 00D682 00D687 00E718 00E71F 00EC46 
; ram_058C                              = $058C ; 00C70A 00CEA2 00CEB0 00CEB9 00CEF8 00D22A 00D23F 00D25C 00D2FC 00D308 00D378 00EC46 
; ram_058D                              = $058D ; 00C70A 00CE84 00CE96 00CE9F 00D22D 00D242 00D25F 00D2ED 00D2F0 00D2F9 00EC46 
; ram_058E                              = $058E ; 00C70A 00D072 00D075 00D0CA 00D0CD 00D0FE 00D15B 00D15E 00D17F 00D182 00D1B0 00D1B3 00D1BB 00D1BE 00D1CF 00D1D2 00D203 00D206 00D211 00D214 00D230 00D245 00D259 00E577 00E57A 00E584 00EC46 
; ram_058F                              = $058F ; 00C70A 00EC46 
; ram_0590                              = $0590 ; 00C70A 00D04F 00D233 00D23A 00D351 00EC46 
; ram_0591                              = $0591 ; 00C70A 00D119 00D125 00D149 00D236 00D248 00D254 00D36A 00EC46 
; ram_0592                              = $0592 ; 00C26F 00C276 00C70A 00C908 00C90D 00C917 00C91C 00C9A3 00C9A8 00D029 00D0F4 00D0F9 00D2AB 00D2C9 00D2D5 00D57F 00D5A6 00D5C5 00D5CA 00D67A 00E562 00E59E 00E5A3 00E606 00E60B 00E654 00E659 00E677 00E67C 00EC46 
; ram_0593                              = $0593 ; 00C70A 00D5BB 00D5BE 00EC46 
; ram_0594                              = $0594 ; 00C2CA 00C2CD 00C70A 00C885 00D047 00D2E6 00EC46 
; ram_0595                              = $0595 ; 00C70A 00EC46 
; ram_0596                              = $0596 ; 00C70A 00E5C6 00E5CD 00E6CC 00E754 00EC46 
; ram_0597                              = $0597 ; 00C70A 00E5A8 00E5DB 00E60F 00E629 00E65D 00E759 00EC46 
; ram_0598                              = $0598 ; 00C70A 00CE78 00CEDF 00EC46 
; ram_0599                              = $0599 ; 00C70A 00EC46 
; ram_059A                              = $059A ; 00C70A 00EC46 
; ram_059B                              = $059B ; 00C70A 00EC46 
; ram_059C                              = $059C ; 00C70A 00EC46 
; ram_059D                              = $059D ; 00C70A 00EC46 
; ram_059E                              = $059E ; 00C70A 00EC46 
; ram_059F                              = $059F ; 00C70A 00EC46 
; ram_05A0                              = $05A0 ; 00C232 00C267 00C26C 00C2C1 00C2EC 00C2FE 00C305 00C30A 00C316 00C31B 00C330 00C337 00C34C 00C353 00C70A 00C730 00C7D9 00C85D 00C88D 00C8BD 00C910 00C91F 00C924 00C96B 00C970 00C989 00C994 00CB58 00CB5F 00CB8F 00CB99 00CBA3 00CD44 00CD49 00CD4C 00CD5E 00CD63 00CD66 00CE6E 00CE7D 00CEFE 00CFA3 00D024 00D03B 00D1C8 00D24B 00D250 00D58F 00D5A1 00E278 00E312 00E353 00E55D 00E6E0 00E6F0 00EC46 
; ram_05A1                              = $05A1 ; 00C252 00C280 00C29D 00C2D4 00C31F 00C325 00C33B 00C341 00C70A 00C746 00C894 00C8B6 00C8C4 00C8DE 00C939 00C93F 00C977 00CAE7 00CAEE 00CB1A 00CB63 00CBB0 00CBB9 00CBE3 00CC06 00CEBC 00D18D 00D193 00D30B 00D5AD 00D65B 00E2BE 00E35F 00E365 00E40D 00E6E9 00E6F7 00EC46 
; ram_05A2                              = $05A2 ; 00C258 00C285 00C2A5 00C2DA 00C328 00C32D 00C344 00C349 00C70A 00C74E 00C89C 00C8E3 00C942 00C947 00CAF6 00CB22 00CB6B 00CBBE 00CBE8 00CC0B 00CEC1 00D196 00D19B 00D310 00D660 00E2C3 00E368 00E36D 00E412 00EC46 
; ram_05A3                              = $05A3 ; 00C25E 00C28A 00C2AC 00C2E0 00C70A 00C75E 00C8A3 00C8E8 00C94A 00C951 00C95A 00C960 00C97F 00CAFD 00CB29 00CB47 00CB4D 00CB72 00CBC3 00CBED 00CC10 00CEC6 00D19E 00D1A4 00D315 00D629 00E2C8 00E37A 00E380 00E417 00EC46 
; ram_05A4                              = $05A4 ; 00C264 00C292 00C2B4 00C2E6 00C70A 00C768 00C8AB 00C8F0 00C963 00C968 00CB05 00CB31 00CB50 00CB55 00CB7A 00CBCB 00CBF5 00CC18 00CECB 00D1A7 00D1AC 00D31A 00E2CD 00E383 00E388 00E41F 00EC46 
; ram_05A5                              = $05A5 ; 00C24F 00C2D7 00C70A 00C749 00EC46 
; ram_05A6                              = $05A6 ; 00C255 00C2DD 00C70A 00C751 00EC46 
; ram_05A7                              = $05A7 ; 00C25B 00C2E3 00C70A 00C761 00EC46 
; ram_05A8                              = $05A8 ; 00C261 00C2E9 00C70A 00C76B 00EC46 
; ram_05A9                              = $05A9 ; 00C70A 00C7E6 00CE87 00CEA7 00CEE9 00CFB7 00D342 00E704 00EC46 
; ram_05AA                              = $05AA ; 00C70A 00EC46 
; ram_05AB                              = $05AB ; 00C27A 00C30D 00C70A 00CB3F 00D587 00D58C 00D59A 00D59D 00D63C 00D670 00D676 00D682 00D687 00EC46 
; ram_05AC                              = $05AC ; 00C70A 00CEA2 00CEB0 00CEB9 00CEF8 00D23F 00D25C 00D2FC 00D308 00D378 00EC46 
; ram_05AD                              = $05AD ; 00C70A 00CE84 00CE96 00CE9F 00D242 00D25F 00D2ED 00D2F0 00D2F9 00EC46 
; ram_05AE                              = $05AE ; 00C70A 00D15B 00D15E 00D17F 00D182 00D1B0 00D1B3 00D1BB 00D1BE 00D245 00D259 00EC46 
; ram_05AF                              = $05AF ; 00C70A 00EC46 
; ram_05B0                              = $05B0 ; 00C70A 00D04F 00D23A 00D351 00EC46 
; ram_05B1                              = $05B1 ; 00C70A 00D149 00D248 00D254 00D36A 00EC46 
; ram_05B2                              = $05B2 ; 00C26F 00C276 00C70A 00C908 00C90D 00C917 00C91C 00D029 00D2AB 00D57F 00D5A6 00D5C5 00D5CA 00D67A 00E562 00EC46 
; ram_05B3                              = $05B3 ; 00C70A 00D5BB 00D5BE 00EC46 
; ram_05B4                              = $05B4 ; 00C2CA 00C2CD 00C70A 00C885 00D047 00D2E6 00EC46 
; ram_05B5                              = $05B5 ; 00C70A 00EC46 
; ram_05B6                              = $05B6 ; 00C70A 00EC46 
; ram_05B7                              = $05B7 ; 00C70A 00EC46 
; ram_05B8                              = $05B8 ; 00C70A 00CE78 00CEDF 00EC46 
; ram_05B9                              = $05B9 ; 00C70A 00EC46 
; ram_05BA                              = $05BA ; 00C70A 00EC46 
; ram_05BB                              = $05BB ; 00C70A 00EC46 
; ram_05BC                              = $05BC ; 00C70A 00EC46 
; ram_05BD                              = $05BD ; 00C70A 00EC46 
; ram_05BE                              = $05BE ; 00C70A 00EC46 
; ram_05BF                              = $05BF ; 00C70A 00EC46 
; ram_05C0                              = $05C0 ; 00C232 00C267 00C26C 00C2C1 00C2EC 00C2FE 00C305 00C30A 00C316 00C31B 00C330 00C337 00C34C 00C353 00C70A 00C730 00C7D9 00C85D 00C88D 00C8BD 00C910 00C91F 00C924 00C96B 00C970 00C989 00C994 00CB58 00CB5F 00CB8F 00CB99 00CBA3 00CD44 00CD49 00CD4C 00CD5E 00CD63 00CD66 00CE6E 00CE7D 00CEFE 00CFA3 00D024 00D03B 00D24B 00D250 00D58F 00D5A1 00E278 00E312 00E353 00E55D 00E6E0 00E6F0 00EC46 
; ram_05C1                              = $05C1 ; 00C252 00C280 00C29D 00C2D4 00C31F 00C325 00C33B 00C341 00C70A 00C746 00C894 00C8B6 00C8C4 00C8DE 00C939 00C93F 00C977 00CAE7 00CAEE 00CB1A 00CB63 00CBB0 00CBB9 00CBE3 00CC06 00CEBC 00D30B 00D5AD 00E2BE 00E35F 00E365 00E40D 00E6E9 00E6F7 00EC46 
; ram_05C2                              = $05C2 ; 00C258 00C285 00C2A5 00C2DA 00C328 00C32D 00C344 00C349 00C70A 00C74E 00C89C 00C8E3 00C942 00C947 00CAF6 00CB22 00CB6B 00CBBE 00CBE8 00CC0B 00CEC1 00D310 00E2C3 00E368 00E36D 00E412 00EC46 
; ram_05C3                              = $05C3 ; 00C25E 00C28A 00C2AC 00C2E0 00C70A 00C75E 00C8A3 00C8E8 00C94A 00C95A 00C960 00C97F 00CAFD 00CB29 00CB47 00CB4D 00CB72 00CBC3 00CBED 00CC10 00CEC6 00D315 00E2C8 00E37A 00E380 00E417 00EC46 
; ram_05C4                              = $05C4 ; 00C264 00C292 00C2B4 00C2E6 00C70A 00C768 00C8AB 00C8F0 00C963 00C968 00CB05 00CB31 00CB50 00CB55 00CB7A 00CBCB 00CBF5 00CC18 00CECB 00D31A 00E2CD 00E383 00E388 00E41F 00EC46 
; ram_05C5                              = $05C5 ; 00C24F 00C2D7 00C70A 00C749 00EC46 
; ram_05C6                              = $05C6 ; 00C255 00C2DD 00C70A 00C751 00EC46 
; ram_05C7                              = $05C7 ; 00C25B 00C2E3 00C70A 00C761 00EC46 
; ram_05C8                              = $05C8 ; 00C261 00C2E9 00C70A 00C76B 00EC46 
; ram_05C9                              = $05C9 ; 00C70A 00C7E6 00CE87 00CEA7 00CEE9 00CFB7 00D342 00E704 00EC46 
; ram_05CA                              = $05CA ; 00C70A 00EC46 
; ram_05CB                              = $05CB ; 00C27A 00C30D 00C70A 00CB3F 00D578 00D587 00D58C 00D59A 00D59D 00D682 00D687 00EC46 
; ram_05CC                              = $05CC ; 00C70A 00CEA2 00CEB0 00CEB9 00CEF8 00D23F 00D2FC 00D308 00D378 00EC46 
; ram_05CD                              = $05CD ; 00C70A 00CE84 00CE96 00CE9F 00D242 00D2ED 00D2F0 00D2F9 00EC46 
; ram_05CE                              = $05CE ; 00C70A 00D15B 00D15E 00D245 00EC46 
; ram_05CF                              = $05CF ; 00C70A 00EC46 
; ram_05D0                              = $05D0 ; 00C70A 00D04F 00D23A 00D351 00EC46 
; ram_05D1                              = $05D1 ; 00C70A 00D149 00D248 00D36A 00EC46 
; ram_05D2                              = $05D2 ; 00C26F 00C276 00C70A 00C908 00C90D 00C917 00C91C 00D029 00D2AB 00D57F 00D5A6 00D5C5 00D5CA 00D67A 00E562 00EC46 
; ram_05D3                              = $05D3 ; 00C70A 00D5BB 00D5BE 00EC46 
; ram_05D4                              = $05D4 ; 00C2CA 00C2CD 00C70A 00C885 00D047 00D2E6 00EC46 
; ram_05D5                              = $05D5 ; 00C70A 00EC46 
; ram_05D6                              = $05D6 ; 00C70A 00EC46 
; ram_05D7                              = $05D7 ; 00C70A 00EC46 
; ram_05D8                              = $05D8 ; 00C70A 00CE78 00CEDF 00EC46 
; ram_05D9                              = $05D9 ; 00C70A 00EC46 
; ram_05DA                              = $05DA ; 00C70A 00EC46 
; ram_05DB                              = $05DB ; 00C70A 00EC46 
; ram_05DC                              = $05DC ; 00C70A 00EC46 
; ram_05DD                              = $05DD ; 00C70A 00EC46 
; ram_05DE                              = $05DE ; 00C70A 00EC46 
; ram_05DF                              = $05DF ; 00C70A 00EC46 
; ram_05E0                              = $05E0 ; 00C232 00C267 00C26C 00C2C1 00C2EC 00C2FE 00C305 00C30A 00C316 00C31B 00C330 00C337 00C34C 00C353 00C70A 00C730 00C7D9 00C85D 00C88D 00C8BD 00C910 00C91F 00C924 00C96B 00C970 00C989 00C994 00CB58 00CB5F 00CB8F 00CB99 00CBA3 00CD44 00CD49 00CD4C 00CD5E 00CD63 00CD66 00CE6E 00CE7D 00CEFE 00CFA3 00D024 00D03B 00D1C8 00D24B 00D250 00D58F 00D5A1 00E278 00E312 00E353 00E55D 00E6E0 00E6F0 00EC46 
; ram_05E1                              = $05E1 ; 00C252 00C280 00C29D 00C2D4 00C31F 00C325 00C33B 00C341 00C70A 00C746 00C894 00C8B6 00C8C4 00C8DE 00C939 00C93F 00C977 00CAE7 00CAEE 00CB1A 00CB63 00CBB0 00CBB9 00CBE3 00CC06 00CEBC 00D18D 00D193 00D30B 00D5AD 00D65B 00E2BE 00E35F 00E365 00E40D 00E6E9 00E6F7 00EC46 
; ram_05E2                              = $05E2 ; 00C258 00C285 00C2A5 00C2DA 00C328 00C32D 00C344 00C349 00C70A 00C74E 00C89C 00C8E3 00C942 00C947 00CAF6 00CB22 00CB6B 00CBBE 00CBE8 00CC0B 00CEC1 00D196 00D19B 00D310 00D660 00E2C3 00E368 00E36D 00E412 00EC46 
; ram_05E3                              = $05E3 ; 00C25E 00C28A 00C2AC 00C2E0 00C70A 00C75E 00C8A3 00C8E8 00C94A 00C951 00C95A 00C960 00C97F 00CAFD 00CB29 00CB47 00CB4D 00CB72 00CBC3 00CBED 00CC10 00CEC6 00D19E 00D1A4 00D315 00D629 00E2C8 00E37A 00E380 00E417 00EC46 
; ram_05E4                              = $05E4 ; 00C264 00C292 00C2B4 00C2E6 00C70A 00C768 00C8AB 00C8F0 00C963 00C968 00CB05 00CB31 00CB50 00CB55 00CB7A 00CBCB 00CBF5 00CC18 00CECB 00D1A7 00D1AC 00D31A 00E2CD 00E383 00E388 00E41F 00EC46 
; ram_05E5                              = $05E5 ; 00C24F 00C2D7 00C70A 00C749 00EC46 
; ram_05E6                              = $05E6 ; 00C255 00C2DD 00C70A 00C751 00EC46 
; ram_05E7                              = $05E7 ; 00C25B 00C2E3 00C70A 00C761 00EC46 
; ram_05E8                              = $05E8 ; 00C261 00C2E9 00C70A 00C76B 00EC46 
; ram_05E9                              = $05E9 ; 00C70A 00C7E6 00CE87 00CEA7 00CEE9 00CFB7 00D342 00E704 00EC46 
; ram_05EA                              = $05EA ; 00C70A 00EC46 
; ram_05EB                              = $05EB ; 00C27A 00C30D 00C70A 00CB3F 00D587 00D58C 00D59A 00D59D 00D63C 00D670 00D676 00D682 00D687 00EC46 
; ram_05EC                              = $05EC ; 00C70A 00CEA2 00CEB0 00CEB9 00CEF8 00D23F 00D25C 00D2FC 00D308 00D378 00EC46 
; ram_05ED                              = $05ED ; 00C70A 00CE84 00CE96 00CE9F 00D242 00D25F 00D2ED 00D2F0 00D2F9 00EC46 
; ram_05EE                              = $05EE ; 00C70A 00D15B 00D15E 00D17F 00D182 00D1B0 00D1B3 00D1BB 00D1BE 00D245 00D259 00EC46 
; ram_05EF                              = $05EF ; 00C70A 00EC46 
; ram_05F0                              = $05F0 ; 00C70A 00D04F 00D23A 00D351 00EC46 
; ram_05F1                              = $05F1 ; 00C70A 00D149 00D248 00D254 00D36A 00EC46 
; ram_05F2                              = $05F2 ; 00C26F 00C276 00C70A 00C908 00C90D 00C917 00C91C 00D029 00D2AB 00D57F 00D5A6 00D5C5 00D5CA 00D67A 00E562 00EC46 
; ram_05F3                              = $05F3 ; 00C70A 00D5BB 00D5BE 00EC46 
; ram_05F4                              = $05F4 ; 00C2CA 00C2CD 00C70A 00C885 00D047 00D2E6 00EC46 
; ram_05F5                              = $05F5 ; 00C70A 00EC46 
; ram_05F6                              = $05F6 ; 00C70A 00EC46 
; ram_05F7                              = $05F7 ; 00C70A 00EC46 
; ram_05F8                              = $05F8 ; 00C70A 00CE78 00CEDF 00EC46 
; ram_05F9                              = $05F9 ; 00C70A 00EC46 
; ram_05FA                              = $05FA ; 00C70A 00EC46 
; ram_05FB                              = $05FB ; 00C70A 00EC46 
; ram_05FC                              = $05FC ; 00C70A 00EC46 
; ram_05FD                              = $05FD ; 00C70A 00EC46 
; ram_05FE                              = $05FE ; 00C70A 00EC46 
; ram_05FF                              = $05FF ; 00C70A 00EC46 



; 0600-060E (08) even addresses, 00 if carrot was picked up, otherwise value * 08
ram_pos_X_carrot                        = $0600 ; 00C0AC 00C77C 00CE3D 00D76B 00D77B 00D7A5 00EC49 
; 0601-060F (08) odd addresses, 00 if carrot was picked up, otherwise value * 08
ram_pos_Y_carrot                        = $0601 ; 00C77C 00CE57 00D772 00D77E 00EC49 
; ram_0602                              = $0602 ; 00C0AF 00C77C 00CE3D 00D76B 00D77B 00D7A8 00EC49 
; ram_0603                              = $0603 ; 00C77C 00CE57 00D772 00D77E 00EC49 
; ram_0604                              = $0604 ; 00C0B2 00C77C 00CE3D 00D76B 00D77B 00D7AB 00EC49 
; ram_0605                              = $0605 ; 00C77C 00CE57 00D772 00D77E 00EC49 
; ram_0606                              = $0606 ; 00C0B5 00C77C 00CE3D 00D76B 00D77B 00D7AE 00EC49 
; ram_0607                              = $0607 ; 00C77C 00CE57 00D772 00D77E 00EC49 
; ram_0608                              = $0608 ; 00C0B8 00C77C 00CE3D 00D76B 00D77B 00D7B1 00EC49 
; ram_0609                              = $0609 ; 00C77C 00CE57 00D772 00D77E 00EC49 
; ram_060A                              = $060A ; 00C0BB 00C77C 00CE3D 00D76B 00D77B 00D7B4 00EC49 
; ram_060B                              = $060B ; 00C77C 00CE57 00D772 00D77E 00EC49 
; ram_060C                              = $060C ; 00C0BE 00C77C 00CE3D 00D76B 00D77B 00D7B7 00EC49 
; ram_060D                              = $060D ; 00C77C 00CE57 00D772 00D77E 00EC49 
; ram_060E                              = $060E ; 00C0C1 00C77C 00CE3D 00D76B 00D77B 00D7BA 00EC49 
; ram_060F                              = $060F ; 00C77C 00CE57 00D772 00D77E 00EC49 



; *** 0610-062F (20) items lying on the stage ***
; 0610-0617 (08) item 00
; 0618-061F (08) item 01
; 0620-0627 (08) item 02
; 0628-062F (08) item 03

; see con_item_state
ram_item_state                          = $0610 ; 00C789 00C7C3 00CD7D 00CDAE 00CDB5 00CDC9 00CDF1 00CE0D 00D6D8 00D6E1 00D732 00D737 00D74B 00D750 00E04F 00E058 00E07B 00E081 00E08B 00E0EE 00E0F5 00E125 00E137 00E167 00E16E 00E1C2 00E1C7 00E239 00E23E 00E2D9 00E2E2 00E350 00E396 00E3F8 00E3FF 00E4AD 00E53C 00E544 00E547 00EC49 
ram_pos_X_lo_item                       = $0611 ; 00C7AA 00CD93 00D6E8 00E095 00E09D 00E0AD 00E0D5 00E0DB 00E0E6 00E0EB 00E144 00E179 00E181 00E191 00E209 00E2F6 00E3CC 00E516 00EC49 
ram_pos_X_hi_item                       = $0612 ; 00C7AF 00CD98 00D6ED 00E0A0 00E0A7 00E0B2 00E0DE 00E0E3 00E149 00E184 00E18B 00E199 00E211 00E2FB 00E3D4 00E51E 00EC49 
ram_pos_Y_lo_item                       = $0613 ; 00C7B9 00CD9D 00D6F9 00E0B7 00E150 00E1A0 00E1CF 00E1D5 00E1E1 00E1E8 00E1F3 00E1FB 00E218 00E300 00E3DB 00E527 00EC49 
ram_pos_Y_hi_item                       = $0614 ; 00C7BE 00CDA2 00D6FE 00E0BC 00E158 00E1A5 00E1D8 00E1DD 00E1FE 00E205 00E220 00E305 00E3E0 00E52F 00EC49 
; see con_item_id
ram_item_id                             = $0615 ; 00C79E 00CDA7 00CE07 00D712 00E0C8 00E0FE 00E10F 00E12F 00E1B4 00E232 00E323 00E39F 00E4B6 00EC49 
ram_item_move_timer                     = $0616 ; 00C78C 00E0FA 00E106 00E10C 00E116 00E120 00E173 00E404 00E534 00EC49 
ram_item_destr_timer                    = $0617 ; 00C78F 00CDF8 00E06C 00E072 00E1CC 00E537 00EC49 
; ram_0618                              = $0618 ; 00C789 00C7C3 00CD7D 00CDAE 00CDB5 00CDC9 00CDF1 00CE0D 00D6D8 00D6E1 00D732 00D737 00E04F 00E058 00E07B 00E081 00E08B 00E0EE 00E0F5 00E125 00E137 00E167 00E16E 00E1C2 00E1C7 00E239 00E23E 00E2D9 00E2E2 00E350 00E396 00E3F8 00E3FF 00E4AD 00E53C 00E544 00E547 00EC49 
; ram_0619                              = $0619 ; 00C7AA 00CD93 00D6E8 00E095 00E09D 00E0AD 00E0D5 00E0DB 00E0E6 00E0EB 00E144 00E179 00E181 00E191 00E209 00E2F6 00E3CC 00E516 00EC49 
; ram_061A                              = $061A ; 00C7AF 00CD98 00D6ED 00E0A0 00E0A7 00E0B2 00E0DE 00E0E3 00E149 00E184 00E18B 00E199 00E211 00E2FB 00E3D4 00E51E 00EC49 
; ram_061B                              = $061B ; 00C7B9 00CD9D 00D6F9 00E0B7 00E150 00E1A0 00E1CF 00E1D5 00E1E1 00E1E8 00E1F3 00E1FB 00E218 00E300 00E3DB 00E527 00EC49 
; ram_061C                              = $061C ; 00C7BE 00CDA2 00D6FE 00E0BC 00E158 00E1A5 00E1D8 00E1DD 00E1FE 00E205 00E220 00E305 00E3E0 00E52F 00EC49 
; ram_061D                              = $061D ; 00C79E 00CDA7 00CE07 00D712 00E0C8 00E0FE 00E10F 00E12F 00E1B4 00E232 00E323 00E39F 00E4B6 00EC49 
; ram_061E                              = $061E ; 00C78C 00E0FA 00E106 00E10C 00E116 00E120 00E173 00E404 00E534 00EC49 
; ram_061F                              = $061F ; 00C78F 00CDF8 00E06C 00E072 00E1CC 00E537 00EC49 
; ram_0620                              = $0620 ; 00C789 00C7C3 00CD7D 00CDAE 00CDB5 00CDC9 00CDF1 00CE0D 00D6D8 00D6E1 00D732 00D737 00E04F 00E058 00E07B 00E081 00E08B 00E0EE 00E0F5 00E125 00E137 00E167 00E16E 00E1C2 00E1C7 00E239 00E23E 00E2D9 00E2E2 00E350 00E396 00E3F8 00E3FF 00E4AD 00E53C 00E544 00E547 00EC49 
; ram_0621                              = $0621 ; 00C7AA 00CD93 00D6E8 00E095 00E09D 00E0AD 00E0D5 00E0DB 00E0E6 00E0EB 00E144 00E179 00E181 00E191 00E209 00E2F6 00E3CC 00E516 00EC49 
; ram_0622                              = $0622 ; 00C7AF 00CD98 00D6ED 00E0A0 00E0A7 00E0B2 00E0DE 00E0E3 00E149 00E184 00E18B 00E199 00E211 00E2FB 00E3D4 00E51E 00EC49 
; ram_0623                              = $0623 ; 00C7B9 00CD9D 00D6F9 00E0B7 00E150 00E1A0 00E1CF 00E1D5 00E1E1 00E1F3 00E1FB 00E218 00E300 00E3DB 00E527 00EC49 
; ram_0624                              = $0624 ; 00C7BE 00CDA2 00D6FE 00E0BC 00E158 00E1A5 00E1D8 00E1DD 00E1FE 00E205 00E220 00E305 00E3E0 00E52F 00EC49 
; ram_0625                              = $0625 ; 00C79E 00CDA7 00CE07 00D712 00E0C8 00E0FE 00E10F 00E12F 00E1B4 00E232 00E323 00E39F 00E4B6 00EC49 
; ram_0626                              = $0626 ; 00C78C 00E0FA 00E106 00E10C 00E116 00E120 00E173 00E404 00E534 00EC49 
; ram_0627                              = $0627 ; 00C78F 00CDF8 00E06C 00E072 00E1CC 00E537 00EC49 
; ram_0628                              = $0628 ; 00C789 00C7C3 00CD7D 00CDAE 00CDB5 00CDC9 00CDF1 00CE0D 00D6D8 00D6E1 00D732 00D737 00E04F 00E058 00E081 00E08B 00E2D9 00E2E2 00E350 00E396 00E4AD 00E53C 00E544 00E547 00EC49 
; ram_0629                              = $0629 ; 00C7AA 00CD93 00D6E8 00E095 00E09D 00E0AD 00E179 00E181 00E191 00E2F6 00E3CC 00E516 00EC49 
; ram_062A                              = $062A ; 00C7AF 00CD98 00D6ED 00E0A0 00E0A7 00E0B2 00E184 00E18B 00E199 00E2FB 00E3D4 00E51E 00EC49 
; ram_062B                              = $062B ; 00C7B9 00CD9D 00D6F9 00E0B7 00E1A0 00E300 00E3DB 00E527 00EC49 
; ram_062C                              = $062C ; 00C7BE 00CDA2 00D6FE 00E0BC 00E1A5 00E305 00E3E0 00E52F 00EC49 
; ram_062D                              = $062D ; 00C79E 00CDA7 00CE07 00D712 00E0FE 00E12F 00E323 00E39F 00E4B6 00EC49 
; ram_062E                              = $062E ; 00C78C 00E534 00EC49 
; ram_062F                              = $062F ; 00C78F 00E537 00EC49 



; *** 0630-064F (20) messages with points flying up ***
; 0630-0637 (08) message 00
; 0638-063F (08) message 01
; 0640-0647 (08) message 02
; 0648-064F (08) message 03

; +80 = does exist
ram_msg_state                           = $0630 ; 00952B 009556 009574 00EC49 
ram_pos_X_lo_msg                        = $0631 ; 009530 009577 00EC49 
ram_pos_X_hi_msg                        = $0632 ; 009535 00957C 00EC49 
ram_pos_Y_lo_msg                        = $0633 ; 00953D 009581 009589 00EC49 
ram_pos_Y_hi_msg                        = $0634 ; 009544 00958C 009593 00EC49 
ram_msg_timer                           = $0635 ; 009549 009568 00956B 00EC49 
; 00 = 100, 01 = 500, 02 = 1000, 03 = 1up
ram_msg_id                              = $0636 ; 00954E 009599 00EC49 
; unused
ram_0637                                = $0637 ; 00EC49 
; ram_0638                              = $0638 ; 00952B 009556 009574 00EC49 
; ram_0639                              = $0639 ; 009530 009577 00EC49 
; ram_063A                              = $063A ; 009535 00957C 00EC49 
; ram_063B                              = $063B ; 00953D 009581 009589 00EC49 
; ram_063C                              = $063C ; 009544 00958C 009593 00EC49 
; ram_063D                              = $063D ; 009549 009568 00956B 00EC49 
; ram_063E                              = $063E ; 00954E 009599 00EC49 
; ram_063F                              = $063F ; 00EC49 
; ram_0640                              = $0640 ; 00952B 009556 009574 00EC49 
; ram_0641                              = $0641 ; 009530 009577 00EC49 
; ram_0642                              = $0642 ; 009535 00957C 00EC49 
; ram_0643                              = $0643 ; 00953D 009581 009589 00EC49 
; ram_0644                              = $0644 ; 009544 00958C 009593 00EC49 
; ram_0645                              = $0645 ; 009549 009568 00956B 00EC49 
; ram_0646                              = $0646 ; 00954E 009599 00EC49 
; ram_0647                              = $0647 ; 00EC49 
; ram_0648                              = $0648 ; 00952B 009556 009574 00EC49 
; ram_0649                              = $0649 ; 009530 009577 00EC49 
; ram_064A                              = $064A ; 009535 00957C 00EC49 
; ram_064B                              = $064B ; 00953D 009581 009589 00EC49 
; ram_064C                              = $064C ; 009544 00958C 009593 00EC49 
; ram_064D                              = $064D ; 009549 009568 00956B 00EC49 
; ram_064E                              = $064E ; 00954E 009599 00EC49 
; ram_064F                              = $064F ; 00EC49 



; bzk unused
ram_0650                                = $0650 ; 00EC49 
ram_0651                                = $0651 ; 00EC49 
ram_0652                                = $0652 ; 00EC49 
ram_0653                                = $0653 ; 00EC49 
ram_0654                                = $0654 ; 00EC49 
ram_0655                                = $0655 ; 00EC49 
ram_0656                                = $0656 ; 00EC49 
ram_0657                                = $0657 ; 00EC49 
ram_0658                                = $0658 ; 00EC49 
ram_0659                                = $0659 ; 00EC49 
ram_065A                                = $065A ; 00EC49 
ram_065B                                = $065B ; 00EC49 
ram_065C                                = $065C ; 00EC49 
ram_065D                                = $065D ; 00EC49 
ram_065E                                = $065E ; 00EC49 
ram_065F                                = $065F ; 00EC49 
ram_0660                                = $0660 ; 00EC49 
ram_0661                                = $0661 ; 00EC49 
ram_0662                                = $0662 ; 00EC49 
ram_0663                                = $0663 ; 00EC49 
ram_0664                                = $0664 ; 00EC49 
ram_0665                                = $0665 ; 00EC49 
ram_0666                                = $0666 ; 00EC49 
ram_0667                                = $0667 ; 00EC49 
ram_0668                                = $0668 ; 00EC49 
ram_0669                                = $0669 ; 00EC49 
ram_066A                                = $066A ; 00EC49 
ram_066B                                = $066B ; 00EC49 
ram_066C                                = $066C ; 00EC49 
ram_066D                                = $066D ; 00EC49 
ram_066E                                = $066E ; 00EC49 
ram_066F                                = $066F ; 00EC49 
ram_0670                                = $0670 ; 00EC49 
ram_0671                                = $0671 ; 00EC49 
ram_0672                                = $0672 ; 00EC49 
ram_0673                                = $0673 ; 00EC49 
ram_0674                                = $0674 ; 00EC49 
ram_0675                                = $0675 ; 00EC49 
ram_0676                                = $0676 ; 00EC49 
ram_0677                                = $0677 ; 00EC49 
ram_0678                                = $0678 ; 00EC49 
ram_0679                                = $0679 ; 00EC49 
ram_067A                                = $067A ; 00EC49 
ram_067B                                = $067B ; 00EC49 
ram_067C                                = $067C ; 00EC49 
ram_067D                                = $067D ; 00EC49 
ram_067E                                = $067E ; 00EC49 
ram_067F                                = $067F ; 00EC49 
ram_0680                                = $0680 ; 00EC49 
ram_0681                                = $0681 ; 00EC49 
ram_0682                                = $0682 ; 00EC49 
ram_0683                                = $0683 ; 00EC49 
ram_0684                                = $0684 ; 00EC49 
ram_0685                                = $0685 ; 00EC49 
ram_0686                                = $0686 ; 00EC49 
ram_0687                                = $0687 ; 00EC49 
ram_0688                                = $0688 ; 00EC49 
ram_0689                                = $0689 ; 00EC49 
ram_068A                                = $068A ; 00EC49 
ram_068B                                = $068B ; 00EC49 
ram_068C                                = $068C ; 00EC49 
ram_068D                                = $068D ; 00EC49 
ram_068E                                = $068E ; 00EC49 
ram_068F                                = $068F ; 00EC49 
ram_0690                                = $0690 ; 00EC49 
ram_0691                                = $0691 ; 00EC49 
ram_0692                                = $0692 ; 00EC49 
ram_0693                                = $0693 ; 00EC49 
ram_0694                                = $0694 ; 00EC49 
ram_0695                                = $0695 ; 00EC49 
ram_0696                                = $0696 ; 00EC49 
ram_0697                                = $0697 ; 00EC49 
ram_0698                                = $0698 ; 00EC49 
ram_0699                                = $0699 ; 00EC49 
ram_069A                                = $069A ; 00EC49 
ram_069B                                = $069B ; 00EC49 
ram_069C                                = $069C ; 00EC49 
ram_069D                                = $069D ; 00EC49 
ram_069E                                = $069E ; 00EC49 
ram_069F                                = $069F ; 00EC49 
ram_06A0                                = $06A0 ; 00EC49 
ram_06A1                                = $06A1 ; 00EC49 
ram_06A2                                = $06A2 ; 00EC49 
ram_06A3                                = $06A3 ; 00EC49 
ram_06A4                                = $06A4 ; 00EC49 
ram_06A5                                = $06A5 ; 00EC49 
ram_06A6                                = $06A6 ; 00EC49 
ram_06A7                                = $06A7 ; 00EC49 
ram_06A8                                = $06A8 ; 00EC49 
ram_06A9                                = $06A9 ; 00EC49 
ram_06AA                                = $06AA ; 00EC49 
ram_06AB                                = $06AB ; 00EC49 
ram_06AC                                = $06AC ; 00EC49 
ram_06AD                                = $06AD ; 00EC49 
ram_06AE                                = $06AE ; 00EC49 
ram_06AF                                = $06AF ; 00EC49 
ram_06B0                                = $06B0 ; 00EC49 
ram_06B1                                = $06B1 ; 00EC49 
ram_06B2                                = $06B2 ; 00EC49 
ram_06B3                                = $06B3 ; 00EC49 
ram_06B4                                = $06B4 ; 00EC49 
ram_06B5                                = $06B5 ; 00EC49 
ram_06B6                                = $06B6 ; 00EC49 
ram_06B7                                = $06B7 ; 00EC49 
ram_06B8                                = $06B8 ; 00EC49 
ram_06B9                                = $06B9 ; 00EC49 
ram_06BA                                = $06BA ; 00EC49 
ram_06BB                                = $06BB ; 00EC49 
ram_06BC                                = $06BC ; 00EC49 
ram_06BD                                = $06BD ; 00EC49 
ram_06BE                                = $06BE ; 00EC49 
ram_06BF                                = $06BF ; 00EC49 
ram_06C0                                = $06C0 ; 00EC49 
ram_06C1                                = $06C1 ; 00EC49 
ram_06C2                                = $06C2 ; 00EC49 
ram_06C3                                = $06C3 ; 00EC49 
ram_06C4                                = $06C4 ; 00EC49 
ram_06C5                                = $06C5 ; 00EC49 
ram_06C6                                = $06C6 ; 00EC49 
ram_06C7                                = $06C7 ; 00EC49 
ram_06C8                                = $06C8 ; 00EC49 
ram_06C9                                = $06C9 ; 00EC49 
ram_06CA                                = $06CA ; 00EC49 
ram_06CB                                = $06CB ; 00EC49 
ram_06CC                                = $06CC ; 00EC49 
ram_06CD                                = $06CD ; 00EC49 
ram_06CE                                = $06CE ; 00EC49 
ram_06CF                                = $06CF ; 00EC49 
ram_06D0                                = $06D0 ; 00EC49 
ram_06D1                                = $06D1 ; 00EC49 
ram_06D2                                = $06D2 ; 00EC49 
ram_06D3                                = $06D3 ; 00EC49 
ram_06D4                                = $06D4 ; 00EC49 
ram_06D5                                = $06D5 ; 00EC49 
ram_06D6                                = $06D6 ; 00EC49 
ram_06D7                                = $06D7 ; 00EC49 
ram_06D8                                = $06D8 ; 00EC49 
ram_06D9                                = $06D9 ; 00EC49 
ram_06DA                                = $06DA ; 00EC49 
ram_06DB                                = $06DB ; 00EC49 
ram_06DC                                = $06DC ; 00EC49 
ram_06DD                                = $06DD ; 00EC49 
ram_06DE                                = $06DE ; 00EC49 
ram_06DF                                = $06DF ; 00EC49 
ram_06E0                                = $06E0 ; 00EC49 
ram_06E1                                = $06E1 ; 00EC49 
ram_06E2                                = $06E2 ; 00EC49 
ram_06E3                                = $06E3 ; 00EC49 
ram_06E4                                = $06E4 ; 00EC49 
ram_06E5                                = $06E5 ; 00EC49 
ram_06E6                                = $06E6 ; 00EC49 
ram_06E7                                = $06E7 ; 00EC49 
ram_06E8                                = $06E8 ; 00EC49 
ram_06E9                                = $06E9 ; 00EC49 
ram_06EA                                = $06EA ; 00EC49 
ram_06EB                                = $06EB ; 00EC49 
ram_06EC                                = $06EC ; 00EC49 
ram_06ED                                = $06ED ; 00EC49 
ram_06EE                                = $06EE ; 00EC49 
ram_06EF                                = $06EF ; 00EC49 
ram_06F0                                = $06F0 ; 00EC49 
ram_06F1                                = $06F1 ; 00EC49 
ram_06F2                                = $06F2 ; 00EC49 
ram_06F3                                = $06F3 ; 00EC49 
ram_06F4                                = $06F4 ; 00EC49 
ram_06F5                                = $06F5 ; 00EC49 
ram_06F6                                = $06F6 ; 00EC49 
ram_06F7                                = $06F7 ; 00EC49 
ram_06F8                                = $06F8 ; 00EC49 
ram_06F9                                = $06F9 ; 00EC49 
ram_06FA                                = $06FA ; 00EC49 
ram_06FB                                = $06FB ; 00EC49 
ram_06FC                                = $06FC ; 00EC49 
ram_06FD                                = $06FD ; 00EC49 



; ram_06FE                              = $06FE ; 00EC49 00F174 00F189 

; used as some sort of stack for bankswitching
; starts here + several addresses up, probably 2-3 max, the rest is unused
ram_06FF                                = $06FF ; 00EC49 00F174 00F189 



; sound engine ram
ram_0700                                = $0700 ; 00C0D1 00EC4C 00F7A4 00F7DC 00F85B 00F94D 00F99B 00F9A2 00F9AB 00F9B0 00FBC5 00FD15 00FD1A 00FD68 00FDC4 00FDCF 
ram_0701                                = $0701 ; 00EC4C 00F7A4 00F860 00F877 00FB69 00FB98 
ram_0702                                = $0702 ; 00EC4C 00F7A4 00F866 00F87A 00FB6E 00FB9F 00FBC8 
ram_0703                                = $0703 ; 00EC4C 00F7A4 00FB4D 00FBB5 
ram_0704                                = $0704 ; 00EC4C 00F7A4 00FB48 00FBBB 
ram_0705                                = $0705 ; 00EC4C 00F7A4 00F874 00FB34 00FB3B 00FB5A 00FB5D 
ram_0706                                = $0706 ; 00EC4C 00F7A4 00F86F 00FB3E 00FB44 00FB62 00FB65 
ram_0707                                = $0707 ; 00EC4C 00F7A4 00F834 00FB38 
ram_0708                                = $0708 ; 00EC4C 00F7A4 00F86C 00FB41 
ram_0709                                = $0709 ; 00EC4C 00F7A4 00F979 00F9C9 00FC07 
ram_070A                                = $070A ; 00EC4C 00F7A4 00F9D2 00FC0F 
ram_070B                                = $070B ; 00EC4C 00F7A4 00F9D7 00FC16 
ram_070C                                = $070C ; 00EC4C 00F7A4 00F998 00F9A8 00F9B8 
ram_070D                                = $070D ; 00EC4C 00F7A4 00F990 00F9BD 00F9CF 
ram_070E                                = $070E ; 00EC4C 00F7A4 00F993 00F9C4 00F9CC 
ram_070F                                = $070F ; 00EC4C 00F7A4 00F842 00FC61 00FC7C 00FC86 00FCAA 00FCC4 
ram_0710                                = $0710 ; 00EC4C 00F7A4 00F9E2 00F9EB 00FBF5 00FDC9 
ram_0711                                = $0711 ; 00EC4C 00F7A4 00FBFB 00FDD6 
ram_0712                                = $0712 ; 00EC4C 00F7A4 00F976 00FDDC 
ram_0713                                = $0713 ; 00EC4C 00F7A4 00F962 00F967 00F96D 00F970 00FC01 00FDE2 
ram_0714                                = $0714 ; 00EC4C 00F7A4 
ram_0715                                = $0715 ; 00EC4C 00F7A4 
ram_0716                                = $0716 ; 00EC4C 00F7A4 
ram_0717                                = $0717 ; 00EC4C 00F7A4 
ram_0718                                = $0718 ; 00C0D4 00EC4C 00F7A4 00F7DF 00F85B 00F94D 00F99B 00F9A2 00F9AB 00F9B0 00FBC5 00FD15 00FD1A 00FD44 00FD49 00FD7F 00FDFB 00FE06 
ram_0719                                = $0719 ; 00EC4C 00F7A4 00F860 00F877 00FB69 00FB98 
ram_071A                                = $071A ; 00EC4C 00F7A4 00F866 00F87A 00FB6E 00FB9F 00FBC8 
ram_071B                                = $071B ; 00EC4C 00F7A4 00FB4D 00FBB5 
ram_071C                                = $071C ; 00EC4C 00F7A4 00FB48 00FBBB 
ram_071D                                = $071D ; 00EC4C 00F7A4 00F874 00FB34 00FB3B 00FB5A 00FB5D 
ram_071E                                = $071E ; 00EC4C 00F7A4 00F86F 00FB3E 00FB44 00FB62 00FB65 
ram_071F                                = $071F ; 00EC4C 00F7A4 00F837 00FB38 
ram_0720                                = $0720 ; 00EC4C 00F7A4 00F86C 00FB41 
ram_0721                                = $0721 ; 00EC4C 00F7A4 00F979 00F9C9 00FC07 
ram_0722                                = $0722 ; 00EC4C 00F7A4 00F9D2 00FC0F 
ram_0723                                = $0723 ; 00EC4C 00F7A4 00F9D7 00FC16 
ram_0724                                = $0724 ; 00EC4C 00F7A4 00F998 00F9A8 00F9B8 
ram_0725                                = $0725 ; 00EC4C 00F7A4 00F990 00F9BD 00F9CF 
ram_0726                                = $0726 ; 00EC4C 00F7A4 00F993 00F9C4 00F9CC 
ram_0727                                = $0727 ; 00EC4C 00F7A4 00F847 00FC61 00FC7C 00FC86 00FCAA 00FCC4 
ram_0728                                = $0728 ; 00EC4C 00F7A4 00F9E2 00F9EB 00FBF5 00FE00 
ram_0729                                = $0729 ; 00EC4C 00F7A4 00FBFB 00FE0D 
ram_072A                                = $072A ; 00EC4C 00F7A4 00F976 00FE13 
ram_072B                                = $072B ; 00EC4C 00F7A4 00F962 00F967 00F96D 00F970 00FC01 00FE19 
ram_072C                                = $072C ; 00EC4C 00F7A4 
ram_072D                                = $072D ; 00EC4C 00F7A4 
ram_072E                                = $072E ; 00EC4C 00F7A4 
ram_072F                                = $072F ; 00EC4C 00F7A4 
ram_0730                                = $0730 ; 00C0D7 00EC4C 00F7A4 00F7E2 00F85B 00F881 00F9AB 00F9B0 00F9EF 00FA88 00FA8F 00FBC5 00FD15 00FD1A 00FD93 00FE2B 00FE36 
ram_0731                                = $0731 ; 00EC4C 00F7A4 00F860 00F877 00FB69 00FB98 
ram_0732                                = $0732 ; 00EC4C 00F7A4 00F866 00F87A 00FB6E 00FB9F 00FBC8 
ram_0733                                = $0733 ; 00EC4C 00F7A4 00FB4D 00FBB5 
ram_0734                                = $0734 ; 00EC4C 00F7A4 00FB48 00FBBB 
ram_0735                                = $0735 ; 00EC4C 00F7A4 00F874 00FA66 00FB34 00FB3B 00FB5A 00FB5D 
ram_0736                                = $0736 ; 00EC4C 00F7A4 00F86F 00FA6E 00FB3E 00FB44 00FB62 00FB65 
ram_0737                                = $0737 ; 00EC4C 00F7A4 00F83A 00FA95 00FAC2 00FB38 
ram_0738                                = $0738 ; 00EC4C 00F7A4 00F86C 00FACB 00FB41 
ram_0739                                = $0739 ; 00EC4C 00F7A4 
ram_073A                                = $073A ; 00EC4C 00F7A4 
ram_073B                                = $073B ; 00EC4C 00F7A4 
ram_073C                                = $073C ; 00EC4C 00F7A4 00F9A8 00FA57 00FAB9 00FAD8 
ram_073D                                = $073D ; 00EC4C 00F7A4 00FA5A 00FC36 
ram_073E                                = $073E ; 00EC4C 00F7A4 
ram_073F                                = $073F ; 00EC4C 00F7A4 00F84C 00FC61 00FC7C 00FC86 00FCAA 00FCC4 
ram_0740                                = $0740 ; 00EC4C 00F7A4 00FA7D 00FAD5 00FC24 00FE30 
ram_0741                                = $0741 ; 00EC4C 00F7A4 00FE3D 
ram_0742                                = $0742 ; 00EC4C 00F7A4 00FA1B 00FE43 
ram_0743                                = $0743 ; 00EC4C 00F7A4 00FA04 00FA09 00FA12 00FA15 00FA85 00FC2A 00FE49 
ram_0744                                = $0744 ; 00EC4C 00F7A4 00FA0F 00FA80 
ram_0745                                = $0745 ; 00EC4C 00F7A4 00FA1E 00FC30 
ram_0746                                = $0746 ; 00EC4C 00F7A4 00FA6B 00FA73 00FABF 00FAC5 
ram_0747                                = $0747 ; 00EC4C 00F7A4 00FAC8 00FACE 
ram_0748                                = $0748 ; 00C0DA 00EC4C 00F7A4 00F7E5 00F85B 00F881 00FADC 00FB1C 00FB23 00FB2B 00FB30 00FBC5 00FD15 00FD1A 00FDA7 00FE5B 00FE66 
ram_0749                                = $0749 ; 00EC4C 00F7A4 00F860 00F877 00FB69 00FB98 
ram_074A                                = $074A ; 00EC4C 00F7A4 00F866 00F87A 00FB6E 00FB9F 00FBC8 
ram_074B                                = $074B ; 00EC4C 00F7A4 00FB4D 00FBB5 
ram_074C                                = $074C ; 00EC4C 00F7A4 00FB48 00FBBB 
ram_074D                                = $074D ; 00EC4C 00F7A4 00F874 00FB34 00FB3B 00FB5A 00FB5D 
ram_074E                                = $074E ; 00EC4C 00F7A4 00F86F 00FB3E 00FB44 00FB62 00FB65 
ram_074F                                = $074F ; 00EC4C 00F7A4 00F83D 00FB38 
ram_0750                                = $0750 ; 00EC4C 00F7A4 00F86C 00FB41 
ram_0751                                = $0751 ; 00EC4C 00F7A4 
ram_0752                                = $0752 ; 00EC4C 00F7A4 00FB01 00FC40 
ram_0753                                = $0753 ; 00EC4C 00F7A4 00FB06 00FC45 
ram_0754                                = $0754 ; 00EC4C 00F7A4 
ram_0755                                = $0755 ; 00EC4C 00F7A4 
ram_0756                                = $0756 ; 00EC4C 00F7A4 
ram_0757                                = $0757 ; 00EC4C 00F7A4 00F851 00FC61 00FC7C 00FC86 00FCAA 
ram_0758                                = $0758 ; 00EC4C 00F7A4 00FB0D 00FE60 
ram_0759                                = $0759 ; 00EC4C 00F7A4 00FE6D 
ram_075A                                = $075A ; 00EC4C 00F7A4 00FB13 00FE73 
ram_075B                                = $075B ; 00EC4C 00F7A4 00FB19 00FE79 
ram_075C                                = $075C ; 00EC4C 00F7A4 
ram_075D                                = $075D ; 00EC4C 00F7A4 
ram_075E                                = $075E ; 00EC4C 00F7A4 
ram_075F                                = $075F ; 00EC4C 00F7A4 
ram_0760                                = $0760 ; 00EC4C 00F7A4 00F94D 00FD63 00FDBD 
ram_0761                                = $0761 ; 00EC4C 00F7A4 
ram_0762                                = $0762 ; 00EC4C 00F7A4 
ram_0763                                = $0763 ; 00EC4C 00F7A4 
ram_0764                                = $0764 ; 00EC4C 00F7A4 
ram_0765                                = $0765 ; 00EC4C 00F7A4 
ram_0766                                = $0766 ; 00EC4C 00F7A4 
ram_0767                                = $0767 ; 00EC4C 00F7A4 
ram_0768                                = $0768 ; 00EC4C 00F7A4 
ram_0769                                = $0769 ; 00EC4C 00F7A4 
ram_076A                                = $076A ; 00EC4C 00F7A4 
ram_076B                                = $076B ; 00EC4C 00F7A4 
ram_076C                                = $076C ; 00EC4C 00F7A4 00F9B8 
ram_076D                                = $076D ; 00EC4C 00F7A4 
ram_076E                                = $076E ; 00EC4C 00F7A4 
ram_076F                                = $076F ; 00EC4C 00F7A4 
ram_0770                                = $0770 ; 00EC4C 00F7A4 
ram_0771                                = $0771 ; 00EC4C 00F7A4 
ram_0772                                = $0772 ; 00EC4C 00F7A4 
ram_0773                                = $0773 ; 00EC4C 00F7A4 
ram_0774                                = $0774 ; 00EC4C 00F7A4 
ram_0775                                = $0775 ; 00EC4C 00F7A4 
ram_0776                                = $0776 ; 00EC4C 00F7A4 
ram_0777                                = $0777 ; 00EC4C 00F7A4 
ram_0778                                = $0778 ; 00EC4C 00F7A4 00F94D 00FD3C 00FD41 00FD7A 00FDF4 
ram_0779                                = $0779 ; 00EC4C 00F7A4 
ram_077A                                = $077A ; 00EC4C 00F7A4 
ram_077B                                = $077B ; 00EC4C 00F7A4 
ram_077C                                = $077C ; 00EC4C 00F7A4 
ram_077D                                = $077D ; 00EC4C 00F7A4 
ram_077E                                = $077E ; 00EC4C 00F7A4 
ram_077F                                = $077F ; 00EC4C 00F7A4 
ram_0780                                = $0780 ; 00EC4C 00F7A4 
ram_0781                                = $0781 ; 00EC4C 00F7A4 
ram_0782                                = $0782 ; 00EC4C 00F7A4 
ram_0783                                = $0783 ; 00EC4C 00F7A4 
ram_0784                                = $0784 ; 00EC4C 00F7A4 00F9B8 
ram_0785                                = $0785 ; 00EC4C 00F7A4 
ram_0786                                = $0786 ; 00EC4C 00F7A4 
ram_0787                                = $0787 ; 00EC4C 00F7A4 
ram_0788                                = $0788 ; 00EC4C 00F7A4 
ram_0789                                = $0789 ; 00EC4C 00F7A4 
ram_078A                                = $078A ; 00EC4C 00F7A4 
ram_078B                                = $078B ; 00EC4C 00F7A4 
ram_078C                                = $078C ; 00EC4C 00F7A4 
ram_078D                                = $078D ; 00EC4C 00F7A4 
ram_078E                                = $078E ; 00EC4C 00F7A4 
ram_078F                                = $078F ; 00EC4C 00F7A4 
ram_0790                                = $0790 ; 00EC4C 00F7A4 00F9EF 00FD8E 00FE24 
ram_0791                                = $0791 ; 00EC4C 00F7A4 
ram_0792                                = $0792 ; 00EC4C 00F7A4 
ram_0793                                = $0793 ; 00EC4C 00F7A4 
ram_0794                                = $0794 ; 00EC4C 00F7A4 
ram_0795                                = $0795 ; 00EC4C 00F7A4 
ram_0796                                = $0796 ; 00EC4C 00F7A4 
ram_0797                                = $0797 ; 00EC4C 00F7A4 
ram_0798                                = $0798 ; 00EC4C 00F7A4 
ram_0799                                = $0799 ; 00EC4C 00F7A4 
ram_079A                                = $079A ; 00EC4C 00F7A4 
ram_079B                                = $079B ; 00EC4C 00F7A4 
ram_079C                                = $079C ; 00EC4C 00F7A4 00FAB9 
ram_079D                                = $079D ; 00EC4C 00F7A4 
ram_079E                                = $079E ; 00EC4C 00F7A4 
ram_079F                                = $079F ; 00EC4C 00F7A4 
ram_07A0                                = $07A0 ; 00EC4C 00F7A4 
ram_07A1                                = $07A1 ; 00EC4C 00F7A4 
ram_07A2                                = $07A2 ; 00EC4C 00F7A4 
ram_07A3                                = $07A3 ; 00EC4C 00F7A4 
ram_07A4                                = $07A4 ; 00EC4C 00F7A4 
ram_07A5                                = $07A5 ; 00EC4C 00F7A4 
ram_07A6                                = $07A6 ; 00EC4C 00F7A4 
ram_07A7                                = $07A7 ; 00EC4C 00F7A4 
ram_07A8                                = $07A8 ; 00EC4C 00F7A4 00F85B 00F94D 00F99B 00F9A2 00F9AB 00F9B0 00FBC5 00FD15 00FD1A 00FD75 00FDED 00FE06 
ram_07A9                                = $07A9 ; 00EC4C 00F7A4 00F860 00F877 00FB69 00FB98 
ram_07AA                                = $07AA ; 00EC4C 00F7A4 00F866 00F87A 00FB6E 00FB9F 00FBC8 
ram_07AB                                = $07AB ; 00EC4C 00F7A4 00FB4D 00FBB5 
ram_07AC                                = $07AC ; 00EC4C 00F7A4 00FB48 00FBBB 
ram_07AD                                = $07AD ; 00EC4C 00F7A4 00F874 00FB34 00FB3B 00FB5A 00FB5D 
ram_07AE                                = $07AE ; 00EC4C 00F7A4 00F86F 00FB3E 00FB44 00FB62 00FB65 
ram_07AF                                = $07AF ; 00EC4C 00F7A4 00F8D0 00FB38 
ram_07B0                                = $07B0 ; 00EC4C 00F7A4 00F86C 00FB41 
ram_07B1                                = $07B1 ; 00EC4C 00F7A4 00F979 00F9C9 00FC07 
ram_07B2                                = $07B2 ; 00EC4C 00F7A4 00F9D2 00FC0F 
ram_07B3                                = $07B3 ; 00EC4C 00F7A4 00F9D7 00FC16 
ram_07B4                                = $07B4 ; 00EC4C 00F7A4 00F998 00F9A8 00F9B8 
ram_07B5                                = $07B5 ; 00EC4C 00F7A4 00F990 00F9BD 00F9CF 
ram_07B6                                = $07B6 ; 00EC4C 00F7A4 00F993 00F9C4 00F9CC 
ram_07B7                                = $07B7 ; 00EC4C 00F7A4 00F8D8 
ram_07B8                                = $07B8 ; 00EC4C 00F7A4 00F9E2 00F9EB 00FBF5 00FE00 
ram_07B9                                = $07B9 ; 00EC4C 00F7A4 00FBFB 00FE0D 
ram_07BA                                = $07BA ; 00EC4C 00F7A4 00F976 00FE13 
ram_07BB                                = $07BB ; 00EC4C 00F7A4 00F962 00F967 00F96D 00F970 00FC01 00FE19 
ram_07BC                                = $07BC ; 00EC4C 00F7A4 
ram_07BD                                = $07BD ; 00EC4C 00F7A4 
ram_07BE                                = $07BE ; 00EC4C 00F7A4 
ram_07BF                                = $07BF ; 00EC4C 00F7A4 
ram_07C0                                = $07C0 ; 00EC4C 00F7A4 00F85B 00F881 00FADC 00FDA2 00FE54 
ram_07C1                                = $07C1 ; 00EC4C 00F7A4 00F860 00F877 
ram_07C2                                = $07C2 ; 00EC4C 00F7A4 00F866 00F87A 
ram_07C3                                = $07C3 ; 00EC4C 00F7A4 
ram_07C4                                = $07C4 ; 00EC4C 00F7A4 
ram_07C5                                = $07C5 ; 00EC4C 00F7A4 00F874 
ram_07C6                                = $07C6 ; 00EC4C 00F7A4 00F86F 
ram_07C7                                = $07C7 ; 00EC4C 00F7A4 00F8D3 
ram_07C8                                = $07C8 ; 00EC4C 00F7A4 00F86C 
ram_07C9                                = $07C9 ; 00EC4C 00F7A4 
ram_07CA                                = $07CA ; 00EC4C 00F7A4 
ram_07CB                                = $07CB ; 00EC4C 00F7A4 
ram_07CC                                = $07CC ; 00EC4C 00F7A4 
ram_07CD                                = $07CD ; 00EC4C 00F7A4 
ram_07CE                                = $07CE ; 00EC4C 00F7A4 
ram_07CF                                = $07CF ; 00EC4C 00F7A4 00F8DD 
ram_07D0                                = $07D0 ; 00EC4C 00F7A4 
ram_07D1                                = $07D1 ; 00EC4C 00F7A4 
ram_07D2                                = $07D2 ; 00EC4C 00F7A4 
ram_07D3                                = $07D3 ; 00EC4C 00F7A4 
ram_07D4                                = $07D4 ; 00EC4C 00F7A4 
ram_07D5                                = $07D5 ; 00EC4C 00F7A4 
ram_07D6                                = $07D6 ; 00EC4C 00F7A4 
ram_07D7                                = $07D7 ; 00EC4C 00F7A4 



; bzk unused
ram_07D8                                = $07D8 ; 00EC4C 
ram_07D9                                = $07D9 ; 00EC4C 
ram_07DA                                = $07DA ; 00EC4C 
ram_07DB                                = $07DB ; 00EC4C 
ram_07DC                                = $07DC ; 00EC4C 
ram_07DD                                = $07DD ; 00EC4C 
ram_07DE                                = $07DE ; 00EC4C 
ram_07DF                                = $07DF ; 00EC4C 
ram_07E0                                = $07E0 ; 00EC4C 
ram_07E1                                = $07E1 ; 00EC4C 
ram_07E2                                = $07E2 ; 00EC4C 
ram_07E3                                = $07E3 ; 00EC4C 
ram_07E4                                = $07E4 ; 00EC4C 
ram_07E5                                = $07E5 ; 00EC4C 
ram_07E6                                = $07E6 ; 00EC4C 
ram_07E7                                = $07E7 ; 00EC4C 
ram_07E8                                = $07E8 ; 00EC4C 
ram_07E9                                = $07E9 ; 00EC4C 
ram_07EA                                = $07EA ; 00EC4C 
ram_07EB                                = $07EB ; 00EC4C 
ram_07EC                                = $07EC ; 00EC4C 
ram_07ED                                = $07ED ; 00EC4C 
ram_07EE                                = $07EE ; 00EC4C 
ram_07EF                                = $07EF ; 00EC4C 
ram_07F0                                = $07F0 ; 00EC4C 
ram_07F1                                = $07F1 ; 00EC4C 
ram_07F2                                = $07F2 ; 00EC4C 
ram_07F3                                = $07F3 ; 00EC4C 
ram_07F4                                = $07F4 ; 00EC4C 
ram_07F5                                = $07F5 ; 00EC4C 
ram_07F6                                = $07F6 ; 00EC4C 
ram_07F7                                = $07F7 ; 00EC4C 
ram_07F8                                = $07F8 ; 00EC4C 
ram_07F9                                = $07F9 ; 00EC4C 
ram_07FA                                = $07FA ; 00EC4C 
ram_07FB                                = $07FB ; 00EC4C 
ram_07FC                                = $07FC ; 00EC4C 
ram_07FD                                = $07FD ; 00EC4C 
ram_07FE                                = $07FE ; 00EC4C 
ram_07FF                                = $07FF ; 00EC4C 
