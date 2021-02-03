; file was downloaded from https://ru.wikipedia.org/wiki/Battle_City
; direct link http://griever.magicteam.net/files/BC_Source_Official.rar



;                               Griever's Stuff
;                           -=#Battle City Source#=-
;Исходный код игры для NES Battle City собирается ассемблером ASM6 (A 6502 assembler by loopy (loopy at mm.st))
;К сожалению, во избежание нарушения авторских прав, я не могу вложить в архив двоичные файлы CHR-ROM'а или уже собранного ;файла-образа (однако, вы всегда сможете достать последний из сети и вырезать из него последний 8KiB CHR банк)

; ═══════════════════════════════════════════════════════════════════════════

; Segment type:	Regular
		;.segment RAM
enum 0
Temp:		.BYTE 0	; (uninited)	; DATA XREF: SetUp_LevelVARs+6Fw
					; SetUp_LevelVARs+74r
					; Draw_RespawnPic:+w
					; Draw_RespawnPic+18r
					; Draw_Player_Lives+50w
					; Draw_Player_Lives+54r
					; Get_Random_A+11r
					; CoordTo_PPUaddress+2w
					; CoordTo_PPUaddress+6w
					; CoordTo_PPUaddress+9w
					; CoordTo_PPUaddress+Cw
					; CoordTo_PPUaddress+10r
					; TSA_Pal_Ops+33w TSA_Pal_Ops+39r
					; Read_Joypads:--w Read_Joypads+15w
					; Read_Joypads+1Er Read_Joypads+22r
					; Temp_Coord_shl+2w Temp_Coord_shl+Aw
					; Temp_Coord_shl+Cw Temp_Coord_shl+14w
					; Check_Objectr Draw_Destroyed_Brickr
					; NT_Buffer_Process_XOR+6r ROM:D75Cr
					; NT_Buffer_Process_OR+6r
					; Draw_TSABlock+1w Draw_TSABlock+Ar
					; Num_To_NumStringw
					; Num_To_NumString+7r
					; Num_To_NumString+Fr
					; ByteTo_Num_Stringw
					; ByteTo_Num_String+7r	Ice_Move+2Dw
					; Ice_Move+56r	Ice_Move+5Cr
					; Ice_Move:+++r Set_SprIndex+7w
					; Set_SprIndex+13r
					; Rise_TankStatus_Bitw
					; Rise_TankStatus_Bit+6r
					; Multiply_Bonus_Coordw
					; Multiply_Bonus_Coord+4r
					; BulletToBullet_Impact_Handle+1Dw
					; BulletToBullet_Impact_Handle+23r
					; Load_Level:Beginw Load_Level:-w
byte_1:		.BYTE 0	; (uninited)
CHR_Byte:	.BYTE 0	; (uninited)
Mask_CHR_Byte:	.BYTE 0	; (uninited)
TSA_Pal:	.BYTE 0	; (uninited)
PPU_Addr_Ptr:	.BYTE 0	; (uninited)
Joypad1_Buttons:.BYTE 0	; (uninited)	; DATA XREF: ROM:Skip_Status_Handler
					; ROM:loc_C13Er ROM:C185r ROM:C1AAr
					; FreezePlayer_OnHQDestroy+8w
					; Demo_AI+6Bw Move_Tankr
					; Move_Tank+2Dr Title_Screen_Loop:++r
					; Title_Screen_Loop:+++r
					; Read_Joypads+1Ar Read_Joypads+24w
					; Detect_Motionr Ice_Move:++++r
Joypad2_Buttons:.BYTE 0	; (uninited)
Joypad1_Differ:	.BYTE 0	; (uninited)	; DATA XREF: ROM:C102r	ROM:loc_C120r
					; ROM:Construct_StartCheckr ROM:C179r
					; ROM:C17Fr ROM:Check_Br ROM:C20Cr
					; FreezePlayer_OnHQDestroy+Cw
					; BonusLevel_ButtonCheck+3r
					; Draw_Brick_GameOver+4Er Demo_AI+6Dw
					; Demo_AI+75r Demo_AI+79w
					; Move_Tank+19r Move_Tank+1Fr
					; ROM:C789r ROM:loc_C792r
					; ROM:loc_C79Br Scroll_TitleScrn+Br
					; Title_Screen_Loop+38r
					; Title_Screen_Loop:Start_Checkr
					; Read_Joypads+20w Make_Player_Shot+Er
Joypad2_Differ:	.BYTE 0	; (uninited)
;1 = A
;2 = B
;4 = SELECT
;8 = START
;10 = UP
;20 = DOWN
;40 = LEFT
;80 = RIGHT
;
Seconds_Counter:.BYTE 0	; (uninited)
Frame_Counter:	.BYTE 0	; (uninited)
ScrBuffer_Pos:	.BYTE 0	; (uninited)
SprBuffer_Position:.BYTE 0 ; (uninited)
Gap:		.BYTE 0	; (uninited)
Random_Lo:	.BYTE 0	; (uninited)
Random_Hi:	.BYTE 0	; (uninited)
LowPtr_Byte:	.BYTE 0	; (uninited)	; DATA XREF: Show_Secret_Msg+22w
					; Show_Secret_Msg+34w
					; Show_Secret_Msg+46w
					; Show_Secret_Msg+58w
					; Show_Secret_Msg+6Aw
					; Show_Secret_Msg+7Cw
					; Show_Secret_Msg+8Ew
					; Show_Secret_Msg+A0w
					; Show_Secret_Msg+B2w ROM:C765w
					; ROM:C77Cw Draw_Player_Lives+10w
					; Draw_Player_Lives+30w Draw_IP+6w
					; Draw_IP+1Fw Draw_LevelFlag+9w
					; Draw_LevelFlag+18w ReinforceToRAM+9w
					; Draw_EmptyTile+9w
					; Title_Screen_Loop+9Fw
					; Title_Screen_Loop+A6r
					; DraW_Normal_HQ+6w DraW_Normal_HQ+15w
					; DraW_Normal_HQ+24w
					; DraW_Normal_HQ+33w Draw_Naked_HQ+6w
					; Draw_Naked_HQ+15w Draw_ArmourHQ+6w
					; Draw_ArmourHQ+15w Draw_ArmourHQ+24w
					; Draw_ArmourHQ+33w
					; Draw_Destroyed_HQ+6w
					; Draw_Destroyed_HQ+15w
					; Copy_AttribToScrnBuff+8w
					; Copy_AttribToScrnBuff+15r
					; FillScr_Single_Row+7w
					; FillScr_Single_Row+14r
					; FillScr_Single_Row+20r
					; Draw_Pts_Screen+190w
					; Draw_Pts_Screen+19Fw
					; Draw_Pts_Screen+1EBw
					; Draw_Pts_Screen+1FAw
					; Draw_Pts_Screen_Template+30w
					; Draw_Pts_Screen_Template+4Bw
					; Draw_Pts_Screen_Template+6Ew
					; Draw_Pts_Screen_Template+89w
					; Draw_Pts_Screen_Template+98w
					; Draw_Pts_Screen_Template+A7w
					; Draw_Pts_Screen_Template+B6w
					; Draw_Pts_Screen_Template+CCw
					; Draw_Pts_Screen_Template+E7w
					; Draw_Pts_Screen_Template+F6w
					; Draw_Pts_Screen_Template+105w
					; Draw_Pts_Screen_Template+114w
					; Draw_Pts_Screen_Template+126w
					; Draw_Pts_Screen_Template+135w
					; Draw_Pts_Screen_Template+144w
					; Draw_Pts_Screen_Template+153w
					; Draw_Pts_Screen_Template+169w
					; Draw_Pts_Screen_Template+178w
					; Draw_Pts_Screen_Template+187w
					; Draw_Pts_Screen_Template+196w
					; Draw_Pts_Screen_Template+1A8w
					; Draw_Pts_Screen_Template+1B7w
					; Draw_TitleScreen+40w
					; Draw_TitleScreen+5Bw
					; Draw_TitleScreen+7Aw
					; Draw_TitleScreen+9Cw
					; Draw_TitleScreen+ABw
					; Draw_TitleScreen+BAw
					; Draw_TitleScreen+CCw
					; Draw_TitleScreen+DBw
					; Draw_TitleScreen+EDw
					; String_to_Screen_Buffer:-r
					; Save_Str_To_ScrBuffer:-r
					; CoordsToRAMPos+5w Check_Object+4r
					; Draw_Destroyed_Brick+4r
					; NT_Buffer_Process_XORr
					; NT_Buffer_Process_XOR+Ar
					; NT_Buffer_Process_XOR+Cw
					; NT_Buffer_Process_ORr
					; NT_Buffer_Process_OR+8r
					; NT_Buffer_Process_OR+Aw
					; Save_to_VRAM+8r Save_to_VRAM+Dr
					; Draw_Tilew Draw_Tile+Fr
					; Draw_Tile+15r Inc_Ptr_on_A+1r
					; Inc_Ptr_on_A+3w
					; Store_NT_Buffer_InVRAM+2w
					; Draw_GrayFrame+26w
					; Draw_GrayFrame+2Dw Draw_Char+Bw
					; Draw_Char+21r
					; PtrToNonzeroStrElem+1Aw
					; SaveSprTo_SprBuffer+10r
					; Status_Core+Bw ...
HighPtr_Byte:	.BYTE 0	; (uninited)	; DATA XREF: Show_Secret_Msg+1Ew
					; Show_Secret_Msg+30w
					; Show_Secret_Msg+42w
					; Show_Secret_Msg+54w
					; Show_Secret_Msg+66w
					; Show_Secret_Msg+78w
					; Show_Secret_Msg+8Aw
					; Show_Secret_Msg+9Cw
					; Show_Secret_Msg+AEw ROM:C761w
					; ROM:C778w Draw_Player_Lives+Cw
					; Draw_Player_Lives+2Cw Draw_IP+2w
					; Draw_IP+1Bw Draw_LevelFlag+5w
					; Draw_LevelFlag+14w ReinforceToRAM+5w
					; Draw_EmptyTile+5w
					; Title_Screen_Loop+A4w
					; DraW_Normal_HQ+2w DraW_Normal_HQ+11w
					; DraW_Normal_HQ+20w
					; DraW_Normal_HQ+2Fw Draw_Naked_HQ+2w
					; Draw_Naked_HQ+11w Draw_ArmourHQ+2w
					; Draw_ArmourHQ+11w Draw_ArmourHQ+20w
					; Draw_ArmourHQ+2Fw
					; Draw_Destroyed_HQ+2w
					; Draw_Destroyed_HQ+11w
					; Copy_AttribToScrnBuff+4w
					; Copy_AttribToScrnBuff+Fr
					; FillScr_Single_Row+5w
					; FillScr_Single_Row+Br
					; Draw_Pts_Screen+18Cw
					; Draw_Pts_Screen+19Bw
					; Draw_Pts_Screen+1E7w
					; Draw_Pts_Screen+1F6w
					; Draw_Pts_Screen_Template+2Cw
					; Draw_Pts_Screen_Template+47w
					; Draw_Pts_Screen_Template+6Aw
					; Draw_Pts_Screen_Template+85w
					; Draw_Pts_Screen_Template+94w
					; Draw_Pts_Screen_Template+A3w
					; Draw_Pts_Screen_Template+B2w
					; Draw_Pts_Screen_Template+C8w
					; Draw_Pts_Screen_Template+E3w
					; Draw_Pts_Screen_Template+F2w
					; Draw_Pts_Screen_Template+101w
					; Draw_Pts_Screen_Template+110w
					; Draw_Pts_Screen_Template+122w
					; Draw_Pts_Screen_Template+131w
					; Draw_Pts_Screen_Template+140w
					; Draw_Pts_Screen_Template+14Fw
					; Draw_Pts_Screen_Template+165w
					; Draw_Pts_Screen_Template+174w
					; Draw_Pts_Screen_Template+183w
					; Draw_Pts_Screen_Template+192w
					; Draw_Pts_Screen_Template+1A4w
					; Draw_Pts_Screen_Template+1B3w
					; Draw_TitleScreen+3Cw
					; Draw_TitleScreen+57w
					; Draw_TitleScreen+76w
					; Draw_TitleScreen+98w
					; Draw_TitleScreen+A7w
					; Draw_TitleScreen+B6w
					; Draw_TitleScreen+C8w
					; Draw_TitleScreen+D7w
					; Draw_TitleScreen+E9w
					; CoordsToRAMPos+3w Save_to_VRAMr
					; Draw_Tile+6r	Inc_Ptr_on_A+7w
					; Store_NT_Buffer_InVRAM+7w
					; Store_NT_Buffer_InVRAM+11r
					; Draw_GrayFrame+24w Draw_Char+Fw
					; Draw_Char:+r	PtrToNonzeroStrElem+18w
					; Status_Core+10w
					; SingleTankStatus_Handle+10w
					; BulletStatus_Handle+10w
					; Draw_BulletGFX+10w Ice_Detect+23r
					; HideHiBit_Under_Tank+18w
					; HQ_Handle+57w Bonus_Handle+64w
					; Load_Level+14w Load_Level+2Er
LowStrPtr_Byte:	.BYTE 0	; (uninited)	; DATA XREF: Load_DemoLevel+3Cw
					; Load_DemoLevel+4Fw
					; Draw_Record_HiScore+1Ew
					; Draw_Brick_GameOver+1Ew
					; Draw_Brick_GameOver+31w
					; Draw_TitleScreen+18w
					; Draw_TitleScreen+2Bw
					; String_to_Screen_Buffer+13w
					; String_to_Screen_Buffer+21w
					; Draw_BrickStr:New_Charr
					; Draw_RecordDigit+22w	Load_Level+2Cw
					; Load_Level+47r Load_Level:++r
HighStrPtr_Byte:.BYTE 0	; (uninited)
HiScore_1P_String:.BYTE	0,0,0,0,0,0,0,0	; (uninited) ; DATA XREF: Null_both_HiScoreo
					; Reset_ScreenStuff+21o
					; Update_HiScore:loc_D981r
					; Update_HiScore:loc_D993r
					; Add_Score+Er	Add_Score:++w
					; Draw_Pts_Screen:+++o
					; Draw_Pts_Screen+172o
					; Draw_Pts_Screen_Template+77o
HiScore_2P_String:.BYTE	0,0,0,0,0,0,0,0	; (uninited) ; DATA XREF: Null_both_HiScore+5o
					; Reset_ScreenStuff+26o
					; Update_HiScore:loc_D9A0r
					; Update_HiScore:loc_D9B2r
					; Draw_Pts_Screen+C9o
					; Draw_Pts_Screen+1CDo
					; Draw_Pts_Screen_Template+D5o
;В формате строки Scr_Buffer: на конце $FF
;

Temp_1PPts_String:.BYTE	0,0,0,0,0,0,0,0	; (uninited) ; DATA XREF: Draw_Pts_Screen+2Co
					; Draw_Pts_Screen+98o
					; Строка при подсчете очков за текущий вид танка
Temp_2PPts_String:.BYTE	0,0,0,0,0,0,0,0	; (uninited) ; DATA XREF: Draw_Pts_Screen+31o
					; Draw_Pts_Screen+D7o
Num_String:	.BYTE 0,0,0,0,0,0,0,0 ;	(uninited) ; DATA XREF:	Add_Score:-r
					; Num_To_NumString+2o
					; ByteTo_Num_String+2o
					; Draw_StageNumString+53o
					; Draw_Pts_Screen+B3o
					; Draw_Pts_Screen+F2o
					; Draw_Pts_Screen+12Ao
					; Draw_Pts_Screen+13Fo
					; Draw_Pts_Screen+17Eo
					; Draw_Pts_Screen+1D9o
					; Draw_Pts_Screen_Template+59o
;Числовая строка. Используется для вывода на экран чисел в формате строки (на конце $FF): номера уровней, жизни	и т.п.
;Число хранится	в Little Endian	формате
;
HiScore_String:	.BYTE 0,0,0,0,0,0,0,0 ;	(uninited) ; DATA XREF:	Reset_ScreenStuff+30o
					; Draw_RecordDigit+Co
					; Update_HiScore+6r Update_HiScore+18w
					; Update_HiScore+25r
					; Update_HiScore+37w
					; Draw_Pts_Screen_Template+39o
;В формате строки Scr_Buffer: на конце $FF
;
HQArmour_Timer:	.BYTE 0	; (uninited)	; Таймер брони вокруг штаба
Level_Mode:	.BYTE 0	; (uninited)
;0 = обычный режим
;1 = усложнённый режим - выставляется, если уровни
;начинают проходиться по 2-му кругу (после 35-го).
;(если по третьему, то режим снова становится обычным (выставляется в ноль))
;2 = режим демо	уровня - надпись
;Game Over не отображается, не обрабатывается
;положение 1 или 2 игрока - в демо уровне их
;всегда	два, не	прибавляются очки.
;Нет мигания от	Friendly Fire


Spr_X:		.BYTE 0	; (uninited)
Spr_Y:		.BYTE 0	; (uninited)
Tank_Num:	.BYTE 0	; (uninited)	; Номер	танка игрока, при обработке взятия бонуса
Joy_Counter:	.BYTE 0	; (uninited)
Construction_Flag:.BYTE	0 ; (uninited)	; Выставляется,	если зашли в Construction
;Если <>0, то:
;-Демо-ролик не	будет показываться
;-Данные уровня	загружаться не будут (только танки и голый штаб)
;А в Construction вообще ничего	не будет загружаться
;Может использоваться как счетчик (при выводе секретного сообщения)

EnterGame_Flag:	.BYTE 0	; (uninited)	; Если 0, то можно выбрать уровень
;Если <>0, то после предыдущего	сразу начинается следующий уровень
;
BkgPal_Number:	.BYTE 0	; (uninited)
;0= PaletteFrame2
;1= LevelPalette
;2= PaletteFrame1
;3= TitleScrPalette
;4= LevelSelPalette
;5= PaletteMisc1
;6= PaletteMisc2
;Если больше $80,то палитры не перезагружаются при NMI
		.BYTE 0	; (uninited)
Scroll_Byte:	.BYTE 0	; (uninited)
PPU_REG1_Stts:	.BYTE 0	; (uninited)
Player1_Lives:	.BYTE 0	; (uninited)	; DATA XREF: ROM:Check_GameOverr
					; Init_Level_VARs+12w
					; SetUp_LevelVARs+10r
					; LevelEnd_Check+8r
					; Draw_Player_Lives+3Br
					; Draw_Pts_Screen+164r	Add_Life+10w
					; ROM:DE0Dw
					; ROM:Check1pLives_Explode_Handler
					; ROM:Bonus_Lifew
Player2_Lives:	.BYTE 0	; (uninited)
Spr_TileIndex:	.BYTE 0	; (uninited)
Temp_X:		.BYTE 0	; (uninited)
Temp_Y:		.BYTE 0	; (uninited)
Block_X:	.BYTE 0	; (uninited)
Block_Y:	.BYTE 0	; (uninited)
byte_58:	.BYTE 0	; (uninited)
byte_59:	.BYTE 0	; (uninited)
Counter:	.BYTE 0	; (uninited)
Counter2:	.BYTE 0	; (uninited)
TSA_BlockNumber:.BYTE 0	; (uninited)
;16 возможных TSA блоков.Три последних TSA блока пустые	(по счёту $0D-$0F)

BrickChar_X:	.BYTE 0	; (uninited)
BrickChar_Y:	.BYTE 0	; (uninited)
String_Position:.BYTE 0	; (uninited)
Char_Index_Base:.BYTE 0	; (uninited)	; DATA XREF: ROM:C75Dw	ROM:C787w
					; Draw_Player_Lives+8w
					; Draw_Player_Lives+63w
					; Draw_LevelFlag+23w
					; Draw_LevelFlag+38w
					; Draw_StageNumString+4Cw
					; Draw_StageNumString+61w
					; Draw_Pts_Screen+21Aw
					; Draw_Pts_Screen_Template+15w
					; Draw_TitleScreen+38w
					; Draw_TitleScreen+91w
					; Reset_ScreenStuff+2w
					; Save_Str_To_ScrBuffer+18r
					; Draw_BrickStr+12r
					; Draw_RecordDigit+Aw
					; Draw_RecordDigit+29w
		.BYTE 0	; (uninited)
BonusPts_TimeCounter:.BYTE 0 ; (uninited)
;Таймер	отображения очков после	взятия (0 = отображение	очков закончено)

Iterative_Byte:	.BYTE 0	; (uninited)	; Байт,	заполняющий большие массивы данных
AI_X_DifferFlag:.BYTE 0	; (uninited)
AI_Y_DifferFlag:.BYTE 0	; (uninited)
;1 - координаты	танка и	цели равны - цель достигнута
;0 - координата	танка больше координаты	цели
;2 - координата	танка меньше координаты	цели

AddLife_Flag:	.BYTE 0,0 ; (uninited)	;  <>0 - игрок получал дополнительную жизнь
;Жизнь может быть получена только один раз за игру, если игрок заработал 200 000 очков

HQ_Status:	.BYTE 0	; (uninited)	; 80=штаб цел, если ноль то уничтожен
HQExplode_SprBase:.BYTE	0 ; (uninited)	; DATA XREF: Add_ExplodeSprBase+1r
					; ROM:E330w ROM:E338w
EnemyRespawn_PlaceIndex:.BYTE 0	; (uninited)
;(0..2)	- три возможных	места следующего респауна
;лево-центр-право
;
byte_6B:	.BYTE 0	; (uninited)
TanksOnScreen:	.BYTE 0	; (uninited)	; Максимальное количество всех танков на экране
Pause_Flag:	.BYTE 0	; (uninited)	; <>0, значит режим паузы
Spr_Attrib:	.BYTE 0	; (uninited)
;vhp00000  Attributes:
;v = Vertical Flip   (1=Flip)
;h = Horizontal	Flip (1=Flip)
;p = Background	Priority
;0 = In	front
;1 = Behind
;
Player_Blink_Timer:.BYTE 0,0 ; (uninited) ; DATA XREF: ROM:C0DFw
					; SetUp_LevelVARs+32w
					; Title_Screen_Loop+1Aw Ice_Move+16r
					; Ice_Move+1Aw	ROM:OperTank_Playerr
					; Make_Respawn+14w
					; BulletToTank_Impact_Handle:CheckBlink_TankImpactr
					; BulletToTank_Impact_Handle+1A0w
					; Таймер мигания friendly fire
AI_X_Aim:	.BYTE 0	; (uninited)	; DATA XREF: Demo_AI+10w Demo_AI+26w
					; Demo_AI+3Cw Demo_AI+52w ROM:DD80w
					; ROM:DD8Bw ROM:DD96w	Load_AI_Statusr
AI_Y_Aim:	.BYTE 0	; (uninited)	; DATA XREF: Demo_AI+14w Demo_AI+2Aw
					; Demo_AI+40w Demo_AI+56w ROM:DD84w
					; ROM:DD8Fw ROM:DD9Aw
					; Load_AI_Status+Dr
;Координаты, к которым стремятся игроки	во время демо-уровня

Enmy_KlledBy1P_Count:.BYTE 0,0,0,0 ; (uninited)	; DATA XREF: Null_KilledEnms_Count:-w
					; Draw_Pts_Screen+8r
					; Draw_Pts_Screen+50r
					; Draw_Pts_Screen+5Cw
					; BulletToTank_Impact_Handle+102w
Enmy_KlledBy2P_Count:.BYTE 0,0,0,0 ; (uninited)	; DATA XREF: Draw_Pts_Screen+15r
					; Draw_Pts_Screen+6Er
					; Draw_Pts_Screen+7Aw
					; BulletToTank_Impact_Handle:ScndPlayerKll_Tank_Impactw
					; Draw_Pts_Screen+18r
					; Draw_Pts_Screen:End_Draw_Pts_Screeno
;количество врагов, убитых каждым игроком (4 возможных типа)
;
byte_7B:	.BYTE 0	; (uninited)
EndCount_Flag:	.BYTE 0	; (uninited)	; Если 0, завершить подсчет очков для текущего врага
TotalEnmy_KilledBy1P:.BYTE 0 ; (uninited)
TotalEnmy_KilledBy2P:.BYTE 0 ; (uninited)
Enemy_Reinforce_Count:.BYTE 0 ;	(uninited) ; Количество	врагов в запасе
Enemy_Counter:	.BYTE 0	; (uninited)	; Количество врагов на экране и	в запасе
BkgOccurence_Flag:.BYTE	0 ; (uninited)	; DATA XREF: ROM:C0D5w	ROM:C108r
					; ROM:C10Cw ROM:C126r	ROM:C12Aw
					; Move_Tank+Aw
Respawn_Timer:	.BYTE 0	; (uninited)	; Время	до следующего респауна
CursorPos:	.BYTE 0	; (uninited)
Respawn_Delay:	.BYTE 0	; (uninited)	; Задержка между респаунами врагов
Level_Number:	.BYTE 0	; (uninited)
;FF=бонус уровень
;
Bonus_X:	.BYTE 0	; (uninited)
Bonus_Y:	.BYTE 0	; (uninited)
Bonus_Number:	.BYTE 0	; (uninited)	; Определяет тип бонуса
Invisible_Timer:.BYTE 0	; (uninited)	; DATA XREF: SetUp_LevelVARs+36w
					; Invisible_Timer_Handle+6r
					; Invisible_Timer_Handle+10w
					; Load_New_Tank+Bw
					; BulletToTank_Impact_Handle+47r
					; BulletToTank_Impact_Handle+188r
					; ROM:E9F2w
					; Силовое поле вокруг игрока после рождения
byte_8A:	.BYTE 0	; (uninited)
Enemy_Count:	.BYTE 0,0,0,0 ;	(uninited) ; DATA XREF:	Load_New_Tank+15r
					; Load_New_Tank+22w
					; Load_Enemy_Count+14w
;Счётчики типов	врагов на уровне (4 возможных типа)

Enemy_TypeNumber:.BYTE 0 ; (uninited)
;Текущий тип врага (из 4-х возможных на	уровне). Кончается
;первый	тип, начинает респауниться второй.



;Далее идут атрибуты танков (координаты, статус	и тип).	Каждый атрибут - массив	байт, имеющий следующую	структуру:
;1 байт	   - атрибут первого игрока
;2 байт	   - атрибут второго игрока
;3-8 байты - атрибуты танков врагов в порядке, обратном	их появлению на	экране,	т.е. 8 - атрибут первого появившегося
;танка и т.п. 6	врагов появляется только в случае двух игроков

Tank_X:		.BYTE 0,0,0,0,0,0,0,0 ;	(uninited) ; DATA XREF:	ROM:C0C3w
					; Draw_TSA_On_Tank+4r Move_Tank+3Br
					; Move_Tank+3Dw Check_BorderReachr
					; Check_BorderReach+8w
					; Check_BorderReach:+r
					; Check_BorderReach+12w
					; Title_Screen_Loop+9w	Ice_Move+60r
					; Ice_Move+67w	ROM:DC80r ROM:DCB8r
					; ROM:DD08w ROM:CheckTile_Check_Objr
					; ROM:Aim_FirstPlayerr
					; Load_AI_Status+3r ROM:DED6r
					; ROM:DF1Ar ROM:DF26r	ROM:DF39r
					; Set_SprIndex+19r ROM:DFFBr
					; ROM:E027r Make_Shot+1Dr
					; Ice_Detect+14r Ice_Detect+4Br
					; Invisible_Timer_Handle+18r
					; Make_Respawn+Bw Make_Respawn+29w
					; Make_Respawn+4Cr
					; BulletToTank_Impact_Handle+24r
					; BulletToTank_Impact_Handle+A2r
					; BulletToTank_Impact_Handle+165r
					; Bonus_Handle+16r ROM:Aim_ScndPlayerr
					; Demo_AI+24r Demo_AI+50r Demo_AI+3Ar
Tank_Y:		.BYTE 0,0,0,0,0,0,0,0 ;	(uninited) ; DATA XREF:	ROM:C0C7w
					; Demo_AI+6Fr Draw_TSA_On_Tank+6r
					; Move_Tank+47r Move_Tank+49w
					; Check_BorderReach:++r
					; Check_BorderReach+1Cw
					; Check_BorderReach:+++r
					; Check_BorderReach+26w
					; CurPos_To_PixelCoord+9w Ice_Move+69r
					; Ice_Move+70w	ROM:DC86r ROM:DCA8r
					; ROM:DD0Cw ROM:DD36r	ROM:DD82r
					; Load_AI_Status+10r ROM:DED4r
					; ROM:DF18r ROM:Draw_PlayerKillr
					; ROM:DF37r Set_SprIndex+17r
					; ROM:DFF9r ROM:E025r	Make_Shot+28r
					; Ice_Detect+Er Ice_Detect:loc_E1DDr
					; Invisible_Timer_Handle+16r
					; Make_Respawn+10w Make_Respawn+2Ew
					; Make_Respawn+4Ar
					; BulletToTank_Impact_Handle+35r
					; BulletToTank_Impact_Handle+B3r
					; BulletToTank_Impact_Handle+176r
					; Bonus_Handle+26r ROM:DD8Dr
					; Demo_AI+28r Demo_AI+54r Demo_AI+3Er
Tank_Status:	.BYTE 0,0,0,0,0,0,0,0 ;	(uninited) ; DATA XREF:	ROM:C0CBw
					; Title_Screen_Loop+10w
					; Detect_Motion+6r Respawn_Handle+11r
					; Ice_Move:-r Ice_Move+38r
					; Ice_Move+3Aw	Ice_Move:++r
					; Ice_Move+76w	Motion_Handle+2Cr
					; Status_Corer
					; ROM:LoadStts_Misc_Status_Handler
					; ROM:DC70w ROM:DC76o	ROM:Check_Objr
					; ROM:DD25r ROM:DD27w
					; ROM:Change_Direction_Check_Objr
					; ROM:DD45w ROM:DD56r
					; ROM:Sbc_Get_RandomStatusr ROM:DD65o
					; ROM:DD67w ROM:DD9Fw
					; ROM:Explode_Handlew ROM:DDECr
					; ROM:DDF2r
					; ROM:SaveStts_Explode_Handlew
					; ROM:Skip_Explode_Handlew
					; ROM:Set_Respawnw ROM:DE57r
					; ROM:DE61w ROM:Load_Tankw ROM:DE66r
					; Get_RandomDirection+19w
					; Get_RandomDirection:loc_DE8Er
					; SingleTankStatus_Handler ROM:DED1r
					; Set_SprIndex+9r ROM:DFEBr
					; ROM:Respawnr	Make_Shot:+r
					; Make_Player_Shot+6r
					; Make_Enemy_Shot:loc_E169r
					; Ice_Detect+6r
					; HideHiBit_Under_Tank+6r
					; Make_Respawn+48w Load_New_Tank+3w
					; Null_Status:-w
					; Rise_TankStatus_Bit+2r
					; Rise_TankStatus_Bit+8w
					; BulletToTank_Impact_Handle+6r
					; BulletToTank_Impact_Handle+55w
					; BulletToTank_Impact_Handle+78r
					; BulletToTank_Impact_Handle+E8w
					; BulletToTank_Impact_Handle+139r
					; Bonus_Handle+Er ROM:EA22r ROM:EA2Dw
					; Demo_AI:NoBonusr Demo_AI:++r
					; Demo_AI:+r
;Статусы танков:
;
;Формат	байта:
;Четыре	старших	бита образуют индекс команды, который в	дальшейшем грузится из TankStts_JumpTable
;(16 возможных команд):
;0   - танка нет
;1-7 - 8 кадров	анимации взрыва	(если нужно взорвать танк в Status вписывают $73)
;8-D - обычный танк, при этом обрабатываются атрибуты направления (2 младших бита):
;	биты 0,1 - образуют атрибут направления:
;	0 - вверх
;	1 - влево
;	2 - вниз
;	3 - вправо
;E-F - Респаун,	при этом:
;	биты 1,2 - образуют номер кадра	анимации респауна (младший бит не используется): всего 4 кадра


Tank_Type:	.BYTE 0,0,0,0,0,0,0,0 ;	(uninited) ; DATA XREF:	ROM:C0CFw
					; Title_Screen_Loop+16w
					; Motion_Handle:+r ROM:DF01r
					; ROM:DF05r ROM:DFBAr	ROM:DFD2r
					; ROM:DFF0r Make_Shot+30r
					; Make_Player_Shot+14r	Make_Respawn+2w
					; Make_Respawn+40w Load_New_Tank:++r
					; Load_New_Tank:End_Load_New_Tankw
					; BulletToTank_Impact_Handle+61w
					; BulletToTank_Impact_Handle+C5r
					; BulletToTank_Impact_Handle+CEr
					; BulletToTank_Impact_Handle+D4w
					; BulletToTank_Impact_Handle:Skip_BonusHandle_TankImpactr
					; BulletToTank_Impact_Handle+DCw
					; BulletToTank_Impact_Handle+EFr
					; ROM:EA14w ROM:EA32w
;Типы танков:
;
;На одном уровне может встретиться 4 типа танков,
;однако	всего типов танков 8.
;
;Формат	байта:
;Биты:
;0,1 - уровень брони
;2   - флаг бонусного танка
;3,4 - не используются
;5,6,7 - тип танка (возможно 8 типов)


Track_Pos:	.BYTE 0	; (uninited)	; DATA XREF: ROM:C0D3w
					; Title_Screen_Loop+18w
					; Title_Screen_Loop+2Fr
					; Title_Screen_Loop+33w ROM:DC62r
					; ROM:DC66w ROM:TrackHandle_CheckObjr
					; ROM:DD2Dw ROM:DFF5r
					; Load_New_Tank+4Ew
;Расположение гусеничного трака	(если меняется,	то танк	едет)
;Возможно 2 положения =	0 или 4	(каждый	танк 4 тайла (16х16))
byte_B1:	.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
byte_B3:	.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
byte_B5:	.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)

;Далее следуют массивы,	относящиеся к свойствам	пуль (10 возможных на экране):
;первые	два элемента соответствуют игрокам, далее 6 элементов
;для врагов и оставшиеся два элемента -	для дополнительной пули
;каждого из игроков (в случае, если игрок является 2-м бонусным	танком)
Bullet_X:	.BYTE 0,0,0,0,0,0,0,0,0,0 ; (uninited) ; DATA XREF: Change_BulletCoord+5r
					; Change_BulletCoord+7w Make_Shot+1Fw
					; ROM:E102r ROM:E117r
					; Make_Player_Shot+28r
					; Bullet_Fly_Handle+40r
					; Bullet_Fly_Handle+51r
					; Bullet_Fly_Handle+63r
					; Bullet_Fly_Handle+7Ar
					; BulletToTank_Impact_Handle+20r
					; BulletToTank_Impact_Handle:Load_X_TankImpactr
					; BulletToTank_Impact_Handle+161r
					; BulletToBullet_Impact_Handle+30r
					; BulletToBullet_Impact_Handle+34r
					; Make_Player_Shot+2Aw
Bullet_Y:	.BYTE 0,0,0,0,0,0,0,0,0,0 ; (uninited) ; DATA XREF: Change_BulletCoord+Er
					; Change_BulletCoord+10w Make_Shot+2Aw
					; ROM:E100r ROM:E115r
					; Make_Player_Shot+2Cr
					; Bullet_Fly_Handle+3Er
					; Bullet_Fly_Handle+4Ar
					; Bullet_Fly_Handle+5Dr
					; Bullet_Fly_Handle+70r
					; BulletToTank_Impact_Handle+31r
					; BulletToTank_Impact_Handle+AFr
					; BulletToTank_Impact_Handle+172r
					; BulletToBullet_Impact_Handle+41r
					; BulletToBullet_Impact_Handle+45r
					; Make_Player_Shot+2Ew
Bullet_Status:	.BYTE 0,0,0,0,0,0,0,0,0,0 ; (uninited) ; DATA XREF: BulletStatus_Handler
					; ROM:Bullet_Mover ROM:Make_Ricochetw
					; ROM:E078r ROM:E07Er
					; ROM:Skip_Animate_Ricochetw
					; Make_Shotr Make_Shot+14w
					; Draw_BulletGFXr ROM:Draw_Bulletr
					; ROM:Update_Ricochetr
					; Make_Player_Shot+1Cr
					; Make_Player_Shot+24r
					; Make_Player_Shot+36w
					; Hide_All_Bullets:-w
					; Bullet_Fly_Handle+6r
					; Bullet_Fly_Handle:+r
					; BulletToObject_Impact_Handle+27w
					; BulletToObject_Impact_Handle+36w
					; BulletToTank_Impact_Handle+17r
					; BulletToTank_Impact_Handle+44w
					; BulletToTank_Impact_Handle+4Dw
					; BulletToTank_Impact_Handle+92r
					; BulletToTank_Impact_Handle+C2w
					; BulletToTank_Impact_Handle+150r
					; BulletToTank_Impact_Handle+185w
					; BulletToTank_Impact_Handle+18Ew
					; BulletToBullet_Impact_Handle+Cr
					; BulletToBullet_Impact_Handle+27r
					; BulletToBullet_Impact_Handle+54w
					; BulletToBullet_Impact_Handle+56w
					; Make_Player_Shot+20r
					; Make_Player_Shot+26w
;Статус	пули. Формат:
;2 младших бита	(№0,1):
; счётчик фреймов на один кадр (до 3)
;Бит№4,5:
; счётчик кадров анимации рикошета (до 3)
;Бит№6
; выставлен = пуля в полете, при этом обрабатываются атрибуты направления (два младших бита):
;     0	= вверх
;     1	= влево
;     2	= вниз
;     3	= вправо

Bullet_Property:.BYTE 0,0,0,0,0,0,0,0,0,0 ; (uninited) ; DATA XREF: ROM:E059r
					; Make_Shot+2Ew Make_Shot+44w
					; Make_Shot+49w Make_Player_Shot+30r
					; Bullet_Fly_Handle+Er
					; BulletToObject_Impact_Handle+3Er
					; Make_Player_Shot+32w
;Свойство пули.	Формат:			; Скорость и бронебойность
;Бит 0:	выставлен = скорость пули в 2 раза выше
;    1:	выставлен = пуля бронебойная


NTAddr_Coord_Lo:.BYTE 0,0,0,0,0,0,0,0 ;	(uninited) ; DATA XREF:	Ice_Detect+21w
					; HideHiBit_Under_Tank+Er
NTAddr_Coord_Hi:.BYTE 0,0,0,0,0,0,0,0 ;	(uninited) ; DATA XREF:	Ice_Detect+27w
					; Ice_Detect+51r Ice_Detect+55w
					; Ice_Detect+62r Ice_Detect+66w
					; HideHiBit_Under_Tank+12r
					; HideHiBit_Under_Tank+1Fr
					; HideHiBit_Under_Tank:+r
;Координаты танков переведенные	в адреса Name Table (младший и старший байты):
;Старший байт хранит только два	младших	байта реального	старшего адреса	NT
;2 первых байта: 1 и 2 игрок
;6 последующих байт - враги

Low_Ptr_byte2:	.BYTE 0	; (uninited)	; DATA XREF: Sound_Stop+Cw
					; Sound_Stop+17w Sound_Stop+1Dr
					; Sound_Stop+21w Play_Sound+1Dw
					; Play_Sound+2Cr Play_Sound+50w
					; Play_Sound+5Br Play_Sound+66r
					; Play_Sound+6Aw Play_Sound+99w
					; Play_Sound+B1r Play_Sound+B5w
					; Play_Sound+C6r Play_Sound+CBw
					; Play_Sound+D5w Play_Sound+DFw
					; Play_Sound+E6w Play_Sound+EDw
					; Play_Sound+F4w Play_Sound+F8r
					; Play_Sound+103w Play_Sound+11Bw
					; Play_Sound+13Fr Play_Sound+145w
					; Play_Sound+14Aw Play_Sound+14Er
					; Play_Sound+157w Play_Sound+15Br
					; Play_Sound+15Ew Play_Sound+195w
					; Play_Sound+199r Play_Sound+19Ew
					; ROM:EC28r ROM:EC2Ew	ROM:EC3Ar
					; ROM:EC40w ROM:EC4Cr	ROM:EC4Eo
					; ROM:EC52w ROM:EC5Cw	ROM:EC66w
					; ROM:EC70w ROM:EC9Br	ROM:ECA0w
					; ROM:ECAAw sub_ECBE+4r sub_ECBE+Ew
High_Ptr_byte2:	.BYTE 0	; (uninited)	; DATA XREF: Sound_Stop+10w
					; Sound_Stop+25w Play_Sound+21w
					; Play_Sound+6Ew Play_Sound+9Dw
					; Play_Sound+B9w
Low_SndPtr:	.BYTE 0	; (uninited)	; DATA XREF: Load_Snd_Ptr+7w
					; sub_ECBE+7r
High_SndPtr:	.BYTE 0	; (uninited)
Sound_Number:	.BYTE 0	; (uninited)
byte_F5:	.BYTE 0	; (uninited)
byte_F6:	.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
byte_F8:	.BYTE 0	; (uninited)
byte_F9:	.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
byte_FD:	.BYTE 0	; (uninited)
byte_FE:	.BYTE 0	; (uninited)
byte_FF:	.BYTE 0	; (uninited)
EnemyFreeze_Timer:.BYTE	0 ; (uninited)
Player_Type:	.BYTE 0,0 ; (uninited)	; DATA XREF: Init_Level_VARs+2w
					; Load_New_Tank+Dr
					; BulletToTank_Impact_Handle+5Ew
					; ROM:Bonus_Starr ROM:EA11w
;(8 видов). 0=простой (Формат см. Tank_Type) ; Вид танка игрока

Player_Ice_Status:.BYTE	0,0 ; (uninited) ; DATA	XREF: Ice_Move:+++++r
					; Ice_Move:loc_DBB4r Ice_Move+4Aw
					; ROM:DC56r ROM:DC5Fw	Ice_Detect+37r
					; Ice_Detect+3Aw Ice_Detect:+r
					; Ice_Detect+45w
;Старший бит - флаг наличия под	танком льда
;5 младших бит - таймер	скольжения по льду (0=не скользит)

GameOverStr_X:	.BYTE 0	; (uninited)
GameOverStr_Y:	.BYTE 0	; (uninited)
GameOverScroll_Type:.BYTE 0 ; (uninited) ; Определяет вид перемещения надписи(0..3)
GameOverStr_Timer:.BYTE	0 ; (uninited)
byte_109:	.BYTE 0	; (uninited)	; DATA XREF: ROM:C755r	ROM:C76Er
					; ROM:C78Fw ROM:C798w	ROM:C7A1r
					; ROM:C7A7w
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
StaffString_RAM:.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
					; DATA XREF: StaffStr_Store+5w
					; StaffStr_Check:-r
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
byte_17F:	.BYTE 0	; (uninited)
Screen_Buffer:	.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
					; DATA XREF: Draw_StageNumString+Fw
					; Draw_StageNumString+14w
					; Draw_StageNumString+1Aw
					; Draw_StageNumString+20w
					; Draw_StageNumString+26w
					; Draw_StageNumString+2Cw
					; Draw_StageNumString+32w
					; Draw_StageNumString+38w
					; Draw_StageNumString+3Ew
					; Draw_StageNumString+44w
					; DraW_Normal_HQ+40w
					; DraW_Normal_HQ+46w
					; DraW_Normal_HQ+4Fw
					; DraW_Normal_HQ+5Bw
					; DraW_Normal_HQ+61w Draw_Naked_HQ+22w
					; Draw_Naked_HQ+28w Draw_Naked_HQ+34w
					; Draw_Naked_HQ+3Aw Draw_ArmourHQ+40w
					; Draw_ArmourHQ+46w Draw_ArmourHQ+4Fw
					; Draw_ArmourHQ+5Dw Draw_ArmourHQ+63w
					; Copy_AttribToScrnBuff+11w
					; Copy_AttribToScrnBuff+17w
					; Copy_AttribToScrnBuff+1Fw
					; Copy_AttribToScrnBuff+25w
					; FillScr_Single_Row+10w
					; FillScr_Single_Row+16w
					; FillScr_Single_Row:+w
					; FillScr_Single_Row+2Dw
					; AttribToScrBuffer+7w
					; AttribToScrBuffer+Fw
					; AttribToScrBuffer+16w
					; AttribToScrBuffer+1Cw
					; String_to_Screen_Buffer+Aw
					; String_to_Screen_Buffer+Fw
					; String_to_Screen_Buffer+19w
					; Save_Str_To_ScrBuffer+8w
					; Save_Str_To_ScrBuffer+Dw
					; Save_Str_To_ScrBuffer:+w
					; Draw_Tile+Bw	Draw_Tile+11w
					; Draw_Tile+17w Draw_Tile+1Dw
					; Update_Screen+4w Update_Screen+Cr
					; Update_Screen+13r Update_Screen:--r
					; Update_Screen+22r
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
;Буффер	строковых данных, в дальнейшем выводимый на экран:
;Буффер	размером 128 байт, однако он активно используется в игре,
;т.к. выводится	на экран каждое	NMI.
;Перед строкой стоит адрес в PPU (hi/lo), куда будет записана строка
;Конец вывода строки обозначается байтом $FF

SprBuffer:	.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
					; DATA XREF: SaveSprTo_SprBuffer+20w
					; Spr_Invisible+12w
					; SaveSprTo_SprBuffer+25w
					; SaveSprTo_SprBuffer+2Aw
					; SaveSprTo_SprBuffer+2Fw
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
;      +-----------+-----------+-----+------------+
;      | Sprite	#0 | Sprite #1 | ... | Sprite #63 |
;      +-+------+--+-----------+-----+------------+
;	 |	|
;	 +------+----------+--------------------------------------+
;	 + Byte	| Bits	   | Description			  |
;	 +------+----------+--------------------------------------+
;	 |  0	| YYYYYYYY | Y Coordinate - 1. Consider	the coor- |
;	 |	|	   | dinate the	upper-left corner of the  |
;	 |	|	   | sprite itself.			  |
;	 |  1	| IIIIIIII | Tile Index	#			  |
;	 |  2	| vhp000cc | Attributes				  |
;	 |	|	   |   v = Vertical Flip   (1=Flip)	  |
;	 |	|	   |   h = Horizontal Flip (1=Flip)	  |
;	 |	|	   |   p = Background Priority		  |
;	 |	|	   |	     0 = In front		  |
;	 |	|	   |	     1 = Behind			  |
;	 |	|	   |   c = Upper two (2) bits of colour	  |
;	 |  3	| XXXXXXXX | X Coordinate (upper-left corner)	  |
;	 +------+----------+--------------------------------------+

;Далее идет массив проигрывания	звуков (28 штук): чтобы	воспроизвести
;определенный звук, игра записывает $01	в одну из ячеек. Если воспроизводимый
;звук использует несколько каналов, то каждому каналу отводится	своя ячейка
;(обозначено индексами после названия звука)

Snd_Pause:	.BYTE 0	; (uninited)	; DATA XREF: ROM:C218w	Sound_Stop+19w
					; Play_Sound+25r Play_Sound+A1r
					; Play_Sound+AAw Play_Sound+190w
Snd_Battle1:	.BYTE 0	; (uninited)
Snd_Battle2:	.BYTE 0	; (uninited)
Snd_Battle3:	.BYTE 0	; (uninited)
Snd_Ancillary_Life1:.BYTE 0 ; (uninited)
Snd_Ancillary_Life2:.BYTE 0 ; (uninited)
Snd_BonusTaken:	.BYTE 0	; (uninited)
Snd_PlayerExplode:.BYTE	0 ; (uninited)
Snd_Unknown1:	.BYTE 0	; (uninited)
Snd_BonusAppears:.BYTE 0 ; (uninited)
Snd_EnemyExplode:.BYTE 0 ; (uninited)
Sns_HQExplode:	.BYTE 0	; (uninited)
Snd_Brick_Ricochet:.BYTE 0 ; (uninited)
Snd_ArmorRicochetWall:.BYTE 0 ;	(uninited)
Snd_ArmorRicochetTank:.BYTE 0 ;	(uninited)
Snd_Shoot:	.BYTE 0	; (uninited)
Snd_Ice:	.BYTE 0	; (uninited)
Snd_Move:	.BYTE 0	; (uninited)
Snd_Engine:	.BYTE 0	; (uninited)
Snd_PtsCount1:	.BYTE 0	; (uninited)
Snd_PtsCount2:	.BYTE 0	; (uninited)
Snd_RecordPts1:	.BYTE 0	; (uninited)
Snd_RecordPts2:	.BYTE 0	; (uninited)
Snd_RecordPts3:	.BYTE 0	; (uninited)
Snd_GameOver1:	.BYTE 0	; (uninited)
Snd_GameOver2:	.BYTE 0	; (uninited)
Snd_GameOver3:	.BYTE 0	; (uninited)
Snd_BonusPts:	.BYTE 0	; (uninited)
byte_31C:	.BYTE 0	; (uninited)
byte_31D:	.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
		.BYTE 0	; (uninited)
NT_Buffer:	.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
					; DATA XREF: Null_NT_Buffer:-w
					; Draw_GrayFrame:Fill_NTBufferw
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
		.BYTE 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 ;	(uninited)
; end of 'RAM'

Enum $2000
; ═══════════════════════════════════════════════════════════════════════════

; Segment type:	Regular
		;.segment PPU_Registers
PPU_CTRL_REG1:	.BYTE 0	; (uninited)	; PPU Control Register #1 (W)
PPU_CTRL_REG2:	.BYTE 0	; (uninited)	; PPU Control Register #2 (W)
PPU_STATUS:	.BYTE 0	; (uninited)	; PPU Status Register (R)
PPU_SPR_ADDR:	.BYTE 0	; (uninited)	; SPR-RAM Address Register (W)
PPU_SPR_DATA:	.BYTE 0	; (uninited)	; SPR-RAM I/O Register (W)
PPU_SCROLL_REG:	.BYTE 0	; (uninited)	; VRAM Address Register	#1 (W2)
PPU_ADDRESS:	.BYTE 0	; (uninited)	; VRAM Address Register	#2 (W2)
PPU_DATA:	.BYTE 0	; (uninited)	; VRAM I/O Register (RW)
; end of 'PPU_Registers'

Ende

Enum $4000
; ═══════════════════════════════════════════════════════════════════════════

; Segment type:	Regular
		;.segment Misc_Registers
SND_SQUARE1_REG:.BYTE 0	; (uninited)	; DATA XREF: Play_Sound+5Dw
					; Play_Sound+89w
					; pAPU Pulse #1	Control	Register (W)
pAPU_Pulse1_Ramp_Control_Reg:.BYTE 0 ; (uninited) ; pAPU Pulse #1 Ramp Control Register	(W)
pAPU_Pulse1__FT__Reg:.BYTE 0 ; (uninited) ; pAPU Pulse #1 Fine Tune (FT) Register (W)
pAPU_Pulse1__CT__Reg:.BYTE 0 ; (uninited) ; pAPU Pulse #1 Coarse Tune (CT) Register (W)
SND_SQUARE2_REG:.BYTE 0	; (uninited)	; pAPU Pulse #2	Control	Register (W)
pAPU_Pulse2_Ramp_Control_Reg:.BYTE 0 ; (uninited) ; pAPU Pulse #2 Ramp Control Register	(W)
pAPU_Pulse2__FT__Reg:.BYTE 0 ; (uninited) ; pAPU Pulse #2 Fine Tune Register (W)
pAPU_Pulse2__CT__Reg:.BYTE 0 ; (uninited) ; pAPU Pulse #2 Coarse Tune Register (W)
SND_TRIANGLE_REG:.BYTE 0 ; (uninited)	; pAPU Triangle	Control	Register #1 (W)
pAPU_Triangle_Control_Reg2:.BYTE 0 ; (uninited)	; pAPU Triangle	Control	Register #2 (?)
pAPU_Triangle_Frequency_Reg1:.BYTE 0 ; (uninited) ; pAPU Triangle Frequency Register #1	(W)
pAPU_Triangle_Frequency_Reg2:.BYTE 0 ; (uninited) ; pAPU Triangle Frequency Register #2	(W)
SND_NOISE_REG:	.BYTE 0	; (uninited)	; pAPU Noise Control Register #1 (W)
Unused:		.BYTE 0	; (uninited)	; Unused (???)
pAPU_Noise_Frequency_Reg1:.BYTE	0 ; (uninited) ; pAPU Noise Frequency Register #1 (W)
pAPU_Noise_Frequency_Reg2:.BYTE	0 ; (uninited) ; pAPU Noise Frequency Register #2 (W)
SND_DELTA_REG:	.BYTE 0	; (uninited)	; pAPU Delta Modulation	Control	Register (W)
pAPU_Delta_Modulation_DA_Reg:.BYTE 0 ; (uninited) ; pAPU Delta Modulation D/A Register (W)
pAPU_Delta_Modulation_Address_Reg:.BYTE	0 ; (uninited) ; pAPU Delta Modulation Address Register	(W)
pAPU_Delta_Modulation_Data_Length_Reg:.BYTE 0 ;	(uninited) ; pAPU Delta	Modulation Data	Length Register	(W)
SPR_DMA:	.BYTE 0	; (uninited)	; Sprite DMA Register (W)
SND_MASTERCTRL_REG:.BYTE 0 ; (uninited)	; DATA XREF: Sound_Stop+2w
					; pAPU Sound/Vertical Clock Signal Register (R)
JOYPAD_PORT1:	.BYTE 0	; (uninited)	; DATA XREF: Read_Joypads+2w
					; Read_Joypads+7w Read_Joypads:-r
					; Joypad #1 (RW)
JOYPAD_PORT2:	.BYTE 0	; (uninited)	; DATA XREF: Sound_Stop+7w
; end of 'Misc_Registers'               ; Joypad #2/SOFTCLK (RW)

Ende
; File Name   :	C:\Hack Projects\Battle City\Assemble\Battle City (J).nes
; Format      :	Binary File
; Base Address:	0000h Range: C000h - 10000h Loaded length: 4000h
$=$C000
; ═══════════════════════════════════════════════════════════════════════════

; Segment type:	Pure code
		;.segment ROM
		.BYTE 'COPYRIGHT 1981 1985 NAMCO LTD.',$D,$A
		.BYTE 'ALL RIGHTS RESERVED           ',$D,$A
StaffString:	.BYTE 'RYOUITI OOKUBO  TAKEFUMI HYOUDOUJUNKO OZAWA     '
					; DATA XREF: StaffStr_Store:-r
					; StaffStr_Check+5r
; ───────────────────────────────────────────────────────────────────────────

RESET:					; DATA XREF: ROM:FFFCo	ROM:FFFEo
		SEI
		LDA	#00010000b
		STA	PPU_CTRL_REG1	; Бэкграунду второй знакогенератор
		CLD
		LDX	#2

Wait:					; CODE XREF: ROM:C07Cj	ROM:C084j
		LDA	PPU_STATUS	; PPU Status Register (R)
		BPL	Wait
		LDA	#00000110b
		STA	PPU_CTRL_REG2	; PPU Control Register #2 (W)
		DEX
		BNE	Wait
		LDX	#$7F ; ''      ; Вершина стека
		TXS
		JSR	Reset_ScreenStuff
		LDA	#0
		STA	Scroll_Byte
		STA	PPU_REG1_Stts
		JSR	Set_PPU

BEGIN:					; CODE XREF: ROM:Skip_RecordShowj
		JSR	Draw_TitleScreen
		LDA	#0
		STA	Construction_Flag ; Пока в Construction	не заходили
; START	OF FUNCTION CHUNK FOR BonusLevel_ButtonCheck

New_Scroll:				; CODE XREF: BonusLevel_ButtonCheck-372j
		JSR	Null_Upper_NT
		JSR	Scroll_TitleScrn ; Убираем из верхней (0(1)) тайловой карты уровень и
					; скроллим на титульник	в нижней (2(3))тайловой	карте.

Title_Loaded:				; CODE XREF: ROM:C156j
					; BonusLevel_ButtonCheck+2Bj
					; Scroll_TitleScrn+1Aj
		JSR	Title_Screen_Loop
		JSR	Load_DemoLevel
		JSR	BonusLevel_ButtonCheck ; Рекурсия.
		JMP	New_Scroll	; После	окончания бонус	уровня,	заново скроллируем титульник.
; END OF FUNCTION CHUNK	FOR BonusLevel_ButtonCheck
; ───────────────────────────────────────────────────────────────────────────

Construction:				; CODE XREF: ROM:CA82j
		LDA	Construction_Flag ; Выставляется, если зашли в Construction
		BNE	Skip_LoadFrame	; Если уже заходили в Construction, рамка уже отрисована
		JSR	Screen_Off
		JSR	Make_GrayFrame
		JSR	Store_NT_Buffer_InVRAM ; Сбрасывает на экран содержимое	NT_Buffer
		JSR	Set_PPU

Skip_LoadFrame:				; CODE XREF: ROM:C0B0j
		JSR	Null_Status
		LDA	#$10
		STA	Tank_X
		LDA	#$18
		STA	Tank_Y		; Начальная позиция танка на экране
		LDA	#$84 ; 'Д'
		STA	Tank_Status	; Дулом	вверх
		LDA	#0
		STA	Tank_Type
		STA	Spr_Attrib
		STA	Track_Pos
		STA	BkgOccurence_Flag
		STA	byte_7B
		STA	TSA_BlockNumber
		STA	Scroll_Byte
		STA	PPU_REG1_Stts
		STA	Player_Blink_Timer ; Таймер мигания friendly fire
		STA	Player_Blink_Timer+1 ; Таймер мигания friendly fire
		LDA	Construction_Flag ; Выставляется, если зашли в Construction
		BNE	Construction_Loop
		JSR	DraW_Normal_HQ	; Если уже заходили в Construction, штаб уже отрисован

Construction_Loop:			; CODE XREF: ROM:C0E5j	ROM:C14Dj
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		JSR	Move_Tank	; Двигает танк в зависимости от	нажатых	кнопок
		JSR	Check_BorderReach ; Не дает танку выйти	за границы серой рамки
		LDA	Frame_Counter
		AND	#$10
		BEQ	Skip_Status_Handle
		JSR	TanksStatus_Handle ; Обрабатывает статусы всех 8-ми танков

Skip_Status_Handle:			; CODE XREF: ROM:C0F7j
		LDA	Joypad1_Buttons
		AND	#$F0 ; 'Ё'
		BNE	loc_C13E
		LDA	Joypad1_Differ
		AND	#1
		BEQ	loc_C120
		LDA	BkgOccurence_Flag
		BNE	loc_C111
		INC	BkgOccurence_Flag
		JMP	Construct_Draw_TSA
; ───────────────────────────────────────────────────────────────────────────

loc_C111:				; CODE XREF: ROM:C10Aj
		INC	TSA_BlockNumber
		LDA	TSA_BlockNumber
		CMP	#$E
		BNE	Construct_Draw_TSA
		LDA	#0
		STA	TSA_BlockNumber
		JMP	Construct_Draw_TSA
; ───────────────────────────────────────────────────────────────────────────

loc_C120:				; CODE XREF: ROM:C106j
		LDA	Joypad1_Differ
		AND	#2
		BEQ	loc_C13E
		LDA	BkgOccurence_Flag
		BNE	loc_C12F
		INC	BkgOccurence_Flag
		JMP	Construct_Draw_TSA
; ───────────────────────────────────────────────────────────────────────────

loc_C12F:				; CODE XREF: ROM:C128j
		DEC	TSA_BlockNumber
		LDA	TSA_BlockNumber
		CMP	#$FF
		BNE	Construct_Draw_TSA
		LDA	#$D		; $D - первый пустой блок
		STA	TSA_BlockNumber
		JMP	Construct_Draw_TSA
; ───────────────────────────────────────────────────────────────────────────

loc_C13E:				; CODE XREF: ROM:C100j	ROM:C124j
		LDA	Joypad1_Buttons
		AND	#3		; При нажатии А	или В рисуется блок под	танком
		BEQ	Construct_StartCheck

Construct_Draw_TSA:			; CODE XREF: ROM:C10Ej	ROM:C117j
					; ROM:C11Dj ROM:C12Cj	ROM:C135j
					; ROM:C13Bj
		JSR	Draw_TSA_On_Tank ; Рисует TSA блок под танком

Construct_StartCheck:			; CODE XREF: ROM:C142j
		LDA	Joypad1_Differ
		AND	#8
		BNE	End_Construction ; Если	нажато старт, выходим
		JMP	Construction_Loop
; ───────────────────────────────────────────────────────────────────────────

End_Construction:			; CODE XREF: ROM:C14Bj
		LDA	#$20 ; ' '
		STA	Spr_Attrib
		INC	Construction_Flag ; Помечаем, что зашли	в Construction
		JMP	Title_Loaded
; ───────────────────────────────────────────────────────────────────────────

Start_StageSelScrn:			; CODE XREF: ROM:C280j	ROM:CA7Bj
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		JSR	Sound_Stop	; Останавливаем	звук, включаем каналы и	т.п. (аналогично Load в	NSF формате)
		LDA	#$1C
		STA	PPU_Addr_Ptr	; Запись будет в верхнюю NT
		LDA	#0
		STA	Scroll_Byte
		STA	PPU_REG1_Stts
		STA	Pause_Flag
		LDA	#4
		STA	BkgPal_Number
		JSR	FillNT_with_Grey ; создаёт эффект сходящихся вертикальных створок

StageSelect_Loop:			; CODE XREF: ROM:C19Bj	ROM:C1A1j
					; ROM:C1AEj ROM:C1B4j	ROM:C1BCj
					; ROM:C1C2j
		JSR	Draw_StageNumString
		LDA	EnterGame_Flag	; Если 0, то можно выбрать уровень
		BNE	Start_Level	; После	предыдущего уровня сразу загружается следующий
		LDA	Joypad1_Differ
		AND	#8		; Проверка на старт
		BNE	Start_Level
		LDA	Joypad1_Differ
		AND	#1		; Проверка на А
		BNE	Inc_LevelNum	; Увеличиваем номер уровня при нажатии А
		LDA	Joypad1_Buttons
		AND	#1
		BEQ	Check_B
		LDA	Frame_Counter
		AND	#7
		BNE	Check_B

Inc_LevelNum:				; CODE XREF: ROM:C183j
		LDA	#0		; Увеличиваем номер уровня при нажатии А
		STA	Frame_Counter
		INC	Level_Number
		LDA	Level_Number
		CMP	#$24 ; '$'
		BNE	StageSelect_Loop
		LDA	#$23 ; '#'
		STA	Level_Number	; if LvlNum>=35	then LvlNum:=35
		JMP	StageSelect_Loop
; ───────────────────────────────────────────────────────────────────────────

Check_B:				; CODE XREF: ROM:C189j	ROM:C18Fj
		LDA	Joypad1_Differ
		AND	#2		; Проверка на В
		BNE	Dec_LevelNum
		LDA	Joypad1_Buttons
		AND	#2
		BEQ	StageSelect_Loop
		LDA	Frame_Counter
		AND	#7
		BNE	StageSelect_Loop

Dec_LevelNum:				; CODE XREF: ROM:C1A8j
		LDA	#0
		STA	Frame_Counter
		DEC	Level_Number
		BNE	StageSelect_Loop
		LDA	#1
		STA	Level_Number	; If LvlNum <=1	then LvlNum:=1
		JMP	StageSelect_Loop
; ───────────────────────────────────────────────────────────────────────────

Start_Level:				; CODE XREF: ROM:C177j	ROM:C17Dj
		LDA	#1
		STA	Snd_Battle1
		STA	Snd_Battle2
		STA	Snd_Battle3	; Проигрываем мелодию боя
		LDA	Construction_Flag ; Выставляется, если зашли в Construction
		BNE	Skip_Lvl_Load	; Если побывали	в Construction,	то
					; данные уровня	загружаться не будут (они уже в	NT_Buffer)
					; (только танки	и штаб)
		JSR	Make_GrayFrame
		LDA	Level_Number
		JSR	Load_Level
		JSR	DraW_Normal_HQ	; Рисует штаб с	кирпичами
		JMP	+
; ───────────────────────────────────────────────────────────────────────────

Skip_Lvl_Load:				; CODE XREF: ROM:C1D2j
		JSR	Draw_Naked_HQ	; Даже если штаб был зарисован в Construction, он будет	поверх

+:					; CODE XREF: ROM:C1DFj
		LDA	#0
		STA	ScrBuffer_Pos
		JSR	Copy_AttribToScrnBuff
		JSR	FillNT_with_Black ; Создаёт эффект расходящихся	вертикальных створок
		LDA	#0
		STA	BkgPal_Number
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		JSR	SetUp_LevelVARs

Battle_Engine:				; CODE XREF: ROM:C221j
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		LDA	Pause_Flag
		BNE	Skip_Battle_Loop ; В режиме паузы не нужно обрабатывать	танки, жизни и т.п.
		JSR	Battle_Loop	; Основные операции с танками и	пулями

Skip_Battle_Loop:			; CODE XREF: ROM:C1FEj
		JSR	Bonus_Draw	; Рисует или пустоту или бонус или очки	за бонус
		JSR	Draw_All_BulletGFX ; Рисует все	пули
		JSR	TanksStatus_Handle ; Обрабатывает статусы всех 8-ми танков
		LDA	Joypad1_Differ
		AND	#8		; Проверка на нажатие старт
		BEQ	Skip_Pause_Switch
		LDA	#1
		EOR	Pause_Flag
		STA	Pause_Flag	; Переключаем флаг паузы на противоположный
		STA	Snd_Pause

Skip_Pause_Switch:			; CODE XREF: ROM:C210j
		JSR	Draw_Pause	; Рисует мигающую надпись, в случае если выставлена пауза
		JSR	LevelEnd_Check	; if ExitLevel then A=1
		BEQ	Battle_Engine
		LDA	#0
		STA	Seconds_Counter
		STA	Frame_Counter	; Останавливаем	таймеры
		STA	Snd_Move
		STA	Snd_Engine	; Останавливаем	звуки
		LDA	GameOverStr_Timer
		BEQ	AfterDeath_BattleRun
		LDA	#$FE ; '■'
		STA	Seconds_Counter

AfterDeath_BattleRun:			; CODE XREF: ROM:C232j	ROM:C251j
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		JSR	FreezePlayer_OnHQDestroy ; Лишает игрока подвижности, если штаб	разрушен
		JSR	Battle_Loop	; Основные операции с танками и	пулями
		JSR	Bonus_Draw	; Рисует или пустоту или бонус или очки	за бонус
		JSR	TanksStatus_Handle ; Обрабатывает статусы всех 8-ми танков
		JSR	Draw_All_BulletGFX ; Рисует все	пули
		JSR	Swap_Pal_Colors	; Периодическое	мигание	- эффект воды на 01 палитре
		LDA	Seconds_Counter
		CMP	#2		; 2 Секунды держится неподвижная надпись GameOver c замороженным игроком
		BNE	AfterDeath_BattleRun
		JSR	Sound_Stop	; Останавливаем	звук, включаем каналы и	т.п. (аналогично Load в	NSF формате)
		JSR	Draw_Pts_Screen
		INC	Level_Number
		LDA	Level_Number
		CMP	#71
		BNE	Ckeck_FirstFinish
		LDA	#1
		STA	Level_Number
		LDA	#0
		STA	Level_Mode	; Если уровни пошли по третьему	кругу, то возвращаем режим на нормальный

Ckeck_FirstFinish:			; CODE XREF: ROM:C25Fj
		LDA	Level_Number
		CMP	#36
		BNE	Check_GameOver
		LDA	#1
		STA	Level_Mode	; Если уровни пошли по 2-му кругу, то делаем сложный режим

Check_GameOver:				; CODE XREF: ROM:C26Dj
		LDA	Player1_Lives
		CLC
		ADC	Player2_Lives
		BEQ	Make_GameOver	; Если жизней ни у кого	не осталось, геймовер
		LDA	HQ_Status	; 80=штаб цел, если ноль то уничтожен
		CMP	#$80 ; 'А'
		BNE	Make_GameOver	; Если штаб разрушен, геймовер
		JMP	Start_StageSelScrn ; Если мы вышли из уровня победителями, то переходим	к следующему уровню
; ───────────────────────────────────────────────────────────────────────────

Make_GameOver:				; CODE XREF: ROM:C278j	ROM:C27Ej
		JSR	Draw_Brick_GameOver ; Рисует большую кирпичную надпись GameOver
		JSR	Update_HiScore	; На выходе A =	$FF, значит есть рекорд
		TYA
		BEQ	Skip_RecordShow
		JSR	Draw_Record_HiScore ; Рисует большую кирпичную надпись с рекордом
		JSR	Clear_NT	; Очищаем верхнюю карту	тайлов (титульник будет	в нижней)

Skip_RecordShow:			; CODE XREF: ROM:C28Aj
		JMP	BEGIN

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Clear_NT:				; CODE XREF: ROM:C28Fp
		JSR	Screen_Off
		JSR	Null_NT_Buffer
		JSR	Store_NT_Buffer_InVRAM ; Сбрасывает на экран содержимое	NT_Buffer
		JSR	Set_PPU
		RTS
; End of function Clear_NT


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Лишает игрока	подвижности, если штаб разрушен

FreezePlayer_OnHQDestroy:		; CODE XREF: ROM:C23Bp
		LDA	HQ_Status	; 80=штаб цел, если ноль то уничтожен
		CMP	#$80 ; 'А'
		BEQ	+
		LDA	#0
		STA	Joypad1_Buttons
		STA	Joypad2_Buttons
		STA	Joypad1_Differ
		STA	Joypad2_Differ

+:					; CODE XREF: FreezePlayer_OnHQDestroy+4j
		RTS
; End of function FreezePlayer_OnHQDestroy


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Null_both_HiScore:			; CODE XREF: ROM:CA78p
		LDX	#HiScore_1P_String
		JSR	Null_8Bytes_String
		LDX	#HiScore_2P_String
		JSR	Null_8Bytes_String
; End of function Null_both_HiScore


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Init_Level_VARs:			; CODE XREF: Load_DemoLevel+8p
		LDA	#0
		STA	Player_Type	; Вид танка игрока
		STA	Player_Type+1	; Вид танка игрока
		LDA	#0
		STA	AddLife_Flag	;  <>0 - игрок получал дополнительную жизнь
		STA	AddLife_Flag+1	;  <>0 - игрок получал дополнительную жизнь
		STA	EnterGame_Flag	; Если 0, то можно выбрать уровень
		LDA	#3		; Начальное количество жизней
		STA	Player1_Lives
		STA	Player2_Lives
		STA	EnemyRespawn_PlaceIndex
		LDA	CursorPos
		BNE	+
		LDA	#0		; Если 2 игрока	нет, обнуляем его жизни
		STA	Player2_Lives

+:					; CODE XREF: Init_Level_VARs+1Aj
		LDA	#1
		STA	Level_Number
		LDA	#0		; Game Over будет отображаться
		STA	Level_Mode
		RTS
; End of function Init_Level_VARs


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Основные операции с танками и	пулями

Battle_Loop:				; CODE XREF: ROM:C200p	ROM:C23Ep
					; BonusLevel_ButtonCheck+Cp
		JSR	Ice_Detect	; Обрабатывает игрока, если тот	на льду
		JSR	Ice_Move	; Выполняет скольжение,	если танк двигается на льду
		JSR	Motion_Handle	; Замораживает врагов, если нужно (обработка движения)
		JSR	HideHiBit_Under_Tank
		JSR	AllBulletsStatus_Handle	; Обрабатывает статусы всех пуль
		JSR	HQ_Handle	; Обрабатывает статус и	броню штаба
		JSR	Invisible_Timer_Handle ; Рисует	силовое	поле, если нужно
		JSR	Make_Player_Shot ; Делает выстрел игрока, если нажата кнопка
		JSR	Make_Enemy_Shot	; Производит выстрел, используя	случайные числа
		JSR	Respawn_Handle
		JSR	Bullet_Fly_Handle ; Обрабатывает полет пули (столкновение и т.п.)
		JSR	BulletToBullet_Impact_Handle ; Обрабатывает столкновение двух пуль, если оно есть
		JSR	BulletToTank_Impact_Handle ; Обрабатывает столкновение пули с танком
		JSR	Bonus_Handle	; Обрабатывает взятие бонуса, если таковое есть
		JSR	GameOver_Str_Move_Handle ; Выводит надпись Game	Over если нужно
		JSR	Play_Snd_Move	; Играет и гасит звук движения когда нужно
		JSR	Draw_Player_Lives ; Рисует IP/IIP и число жизней в правом углу
		JSR	Swap_Pal_Colors	; Периодическое	мигание	- эффект воды на 01 палитре
		RTS
; End of function Battle_Loop


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Периодическое	мигание	- эффект воды на 01 палитре

Swap_Pal_Colors:			; CODE XREF: ROM:C24Ap	Battle_Loop+33p
		LDA	Frame_Counter
		AND	#$3F ; '?'
		BEQ	switch
		CMP	#$20 ; ' '
		BNE	exit
		LDA	#1
		STA	BkgPal_Number
		RTS
; ───────────────────────────────────────────────────────────────────────────

switch:					; CODE XREF: Swap_Pal_Colors+4j
		LDA	#2
		STA	BkgPal_Number

exit:					; CODE XREF: Swap_Pal_Colors+8j
		RTS
; End of function Swap_Pal_Colors


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


SetUp_LevelVARs:			; CODE XREF: ROM:C1F6p
					; Load_DemoLevel+5Ap
		JSR	Hide_All_Bullets ; Уводим с экраны все пули
		JSR	Null_Status
		LDA	#$F0 ; 'Ё'
		STA	GameOverStr_Y	; Уводим за экран надпись
		LDA	#0
		STA	GameOverStr_Timer
		LDA	Player1_Lives	; Если жизней нет,
					; больше не респаунимся
		BEQ	+
		LDX	#0
		JSR	Make_Respawn

+:					; CODE XREF: SetUp_LevelVARs+12j
		LDA	Player2_Lives
		BEQ	Set_VARs
		LDX	#1
		JSR	Make_Respawn

Set_VARs:				; CODE XREF: SetUp_LevelVARs+1Bj
		LDA	#20
;20 врагов в каждом уровне
		STA	Enemy_Reinforce_Count ;	Количество врагов в запасе
		STA	Enemy_Counter	; Количество врагов на экране и	в запасе
		LDA	#0
		STA	Enemy_TypeNumber
		STA	Seconds_Counter
		STA	Construction_Flag ; Выставляется, если зашли в Construction
		STA	HQArmour_Timer	; Таймер брони вокруг штаба
		STA	Player_Blink_Timer ; Таймер мигания friendly fire
		STA	Player_Blink_Timer+1 ; Таймер мигания friendly fire
		STA	Invisible_Timer	; Силовое поле вокруг игрока после рождения
		STA	byte_8A
		STA	Respawn_Timer	; Время	до следующего респауна
		STA	Bonus_X
		STA	EnemyFreeze_Timer
		STA	EnemyRespawn_PlaceIndex	; Начинаем респауниться	слева
		JSR	Null_KilledEnms_Count ;	Обнуляет массив	счётчиков убитых врагов
		JSR	Draw_Reinforcemets
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		JSR	Draw_IP
		JSR	Draw_LevelFlag
		JSR	Load_Enemy_Count
		LDA	#$80 ; 'А'
		STA	HQ_Status	; 80=штаб цел, если ноль то уничтожен
		LDA	#1
		STA	Snd_Engine
		STA	EnterGame_Flag	; Если 0, то можно выбрать уровень
		LDA	Level_Mode
		CMP	#1
		BNE	++
		LDA	#35
		JMP	Respawn_Delay_Calc
; ───────────────────────────────────────────────────────────────────────────

++:					; CODE XREF: SetUp_LevelVARs+64j
		LDA	Level_Number

Respawn_Delay_Calc:			; CODE XREF: SetUp_LevelVARs+68j
		ASL	A
		ASL	A
		STA	Temp
		LDA	#190
		SEC
		SBC	Temp
		STA	Respawn_Delay	; Задержка между респаунами врагов
		LDA	CursorPos
		BEQ	+++
		LDA	Respawn_Delay	; Задержка между респаунами врагов
		SEC
		SBC	#20
		STA	Respawn_Delay	; Задержка между респаунами во фреймах может быть вычислена по формуле:
					; 190 -	(№уровня)*4 - (количество_игроков - 1)*20

+++:					; CODE XREF: SetUp_LevelVARs+7Aj
		RTS
; End of function SetUp_LevelVARs


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Load_DemoLevel:				; CODE XREF: BonusLevel_ButtonCheck-378p
		LDA	#1
		STA	Pause_Flag
		LDA	#0
		STA	BkgPal_Number
		JSR	Init_Level_VARs
		LDA	#3
		STA	Player2_Lives	; Вне зависимости от выбора игрока,
					; появится второй танк.
		LDA	#0
		STA	Scroll_Byte	; Таким	образом	на экране будет	содержимое 0(1)
					; тайловой карты. Во 2(3) всегда находится титульник,
					; что позволяет	не загружать его каждый	раз, когда
					; нужно	вернуться (в этом случае очищаются 0(1)
					; тайловые карты и происходит скролл на	2(3), который
					; также	заметен	глазу игрока)
		STA	PPU_REG1_Stts
		STA	Seconds_Counter
		STA	Frame_Counter
		JSR	Make_GrayFrame
		LDA	#$FF
		STA	Level_Number
		JSR	Load_Level
		LDA	#30
		STA	Level_Number	; В правом углу	во время бонус уровня указан
					; именно 30-й номер уровня, хотя по
					; содержимому это и не он
		LDA	#2
		STA	Level_Mode
		JSR	Screen_Off
		LDX	#$1A
		STX	Block_X
		LDY	#$46 ; 'F'
		STY	Block_Y
		LDA	#>aBattle	; "BATTLE\xFF"
		STA	HighStrPtr_Byte
		LDA	#<aBattle	; "BATTLE\xFF"
		STA	LowStrPtr_Byte	; Загрузка указателя для "Кирпичного" слова 'BATTLE'
					;
		JSR	Draw_BrickStr
		LDX	#$3C ; '<'
		STX	Block_X
		LDY	#$78 ; 'x'
		STY	Block_Y		;
					;
		LDA	#>aCity		; "CITY\xFF"
		STA	HighStrPtr_Byte
		LDA	#<aCity		; "CITY\xFF"
		STA	LowStrPtr_Byte	; Загрузка указателя для "Кирпичного" слова 'CITY'
					;
		JSR	Draw_BrickStr
		JSR	Store_NT_Buffer_InVRAM ; Сбрасывает на экран содержимое	NT_Buffer
		JSR	Set_PPU
		JSR	SetUp_LevelVARs
		JSR	DraW_Normal_HQ	; Рисует штаб с	кирпичами
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		LDA	#5
		STA	TanksOnScreen	; Максимальное количество всех танков на экране
		RTS
; End of function Load_DemoLevel


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


BonusLevel_ButtonCheck:			; CODE XREF: BonusLevel_ButtonCheck-375p
					; BonusLevel_ButtonCheck+1Bj

; FUNCTION CHUNK AT C09C SIZE 00000012 BYTES

		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		LDA	Joypad1_Differ
		AND	#1100b		; проверка на select(4)	или start(8)
					; во время скроллинга титульника или
					; бонус	уровня.
		BNE	Button_Pressed

DemoLevel_Loop:				; Управление танками игроков во	время демо уровня
		JSR	Demo_AI
		JSR	Battle_Loop	; Основные операции с танками и	пулями
		JSR	Bonus_Draw	; Рисует или пустоту или бонус или очки	за бонус
		JSR	TanksStatus_Handle ; Обрабатывает статусы всех 8-ми танков
		JSR	Draw_All_BulletGFX ; Рисует все	пули
		JSR	LevelEnd_Check	; if ExitLevel then A=1
		BEQ	BonusLevel_ButtonCheck

End_Demo:
		LDA	#0
		STA	ScrBuffer_Pos
		RTS
; ───────────────────────────────────────────────────────────────────────────

Button_Pressed:				; CODE XREF: BonusLevel_ButtonCheck+7j
		PLA
		PLA			; Убираем из стека точку возврата
					; (по RTS всё равно выходить не	будем),
					; но процедура в конце вызывает	себя
					; рекурсивно - и стек стал бы
					; неограниченно	заполняться
		LDA	#0
		STA	ScrBuffer_Pos
		JSR	Null_Upper_NT
		JMP	Title_Loaded
; End of function BonusLevel_ButtonCheck


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует большую кирпичную надпись с рекордом

Draw_Record_HiScore:			; CODE XREF: ROM:C28Cp
		JSR	Screen_Off
		LDA	#$1C
		STA	PPU_Addr_Ptr
		LDA	#0
		STA	Scroll_Byte
		STA	PPU_REG1_Stts
		JSR	Null_NT_Buffer
		LDX	#$10
		STX	Block_X
		LDY	#$32 ; '2'
		STY	Block_Y
		LDA	#>aHiscore	; Выводится в виде кирпичной надписи, если рекорд
		STA	HighStrPtr_Byte
		LDA	#<aHiscore	; Выводится в виде кирпичной надписи, если рекорд
		STA	LowStrPtr_Byte
		JSR	Draw_BrickStr
		JSR	Draw_RecordDigit ; Выводит на экран цифру рекорда
		JSR	Store_NT_Buffer_InVRAM ; Сбрасывает на экран содержимое	NT_Buffer
		JSR	Set_PPU
		LDA	#0
		STA	Seconds_Counter
		LDA	#1
		STA	Snd_RecordPts1
		STA	Snd_RecordPts2
		STA	Snd_RecordPts3

-:					; CODE XREF: Draw_Record_HiScore+4Aj
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		LDA	Frame_Counter
		AND	#3
		CLC
		ADC	#5
		STA	BkgPal_Number	; Мигание надписи
		LDA	Snd_RecordPts1
		BNE	-		; Ждём,	пока не	закончит играть	мелодия	рекорда
		LDA	#0
		STA	BkgPal_Number
		RTS
; End of function Draw_Record_HiScore


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Show_Secret_Msg:			; CODE XREF: Title_Screen_Loop+8Fp
		JSR	Screen_Off
		LDA	#$1C
		STA	PPU_Addr_Ptr
		LDA	#0
		STA	Scroll_Byte
		STA	PPU_REG1_Stts
		JSR	Null_NT_Buffer
		JSR	Store_NT_Buffer_InVRAM ; Сбрасывает на экран содержимое	NT_Buffer
		JSR	Set_PPU
		JSR	Wait_1Second
		JSR	Wait_1Second	; Секретное сообщение:
					; "THIS	PROGRAM	WAS
					;  WRITTEN BY
					;  OPEN-REACH
					;  WHO LOVES NORIKO"
					;  .....
					; после	чего падает зелёная капля
		LDA	#>aThisProgramWas ; Secret Message
		STA	HighPtr_Byte
		LDA	#<aThisProgramWas ; Secret Message
		STA	LowPtr_Byte
		LDX	#8		; в X и	Y соответствующие координаты надписи
		LDY	#8
		JSR	String_to_Screen_Buffer
		JSR	Wait_1Second
		LDA	#>aWrittenBy	; Secret Message
		STA	HighPtr_Byte
		LDA	#<aWrittenBy	; Secret Message
		STA	LowPtr_Byte
		LDX	#8
		LDY	#$A
		JSR	String_to_Screen_Buffer
		JSR	Wait_1Second
		LDA	#>aOpenkreach	; Secret Message
		STA	HighPtr_Byte
		LDA	#<aOpenkreach	; Secret Message
		STA	LowPtr_Byte
		LDX	#8
		LDY	#$C
		JSR	String_to_Screen_Buffer
		JSR	Wait_1Second
		LDA	#>aWhoLovesNoriko ; Secret Message
		STA	HighPtr_Byte
		LDA	#<aWhoLovesNoriko ; Secret Message
		STA	LowPtr_Byte
		LDX	#8
		LDY	#$E
		JSR	String_to_Screen_Buffer
		JSR	Wait_1Second
		LDA	#>aDot		; Secret Message (.)
		STA	HighPtr_Byte
		LDA	#<aDot		; Secret Message (.)
		STA	LowPtr_Byte
		LDX	#8
		LDY	#$10
		JSR	String_to_Screen_Buffer
		JSR	Wait_1Second
		LDA	#>aDot		; Secret Message (.)
		STA	HighPtr_Byte
		LDA	#<aDot		; Secret Message (.)
		STA	LowPtr_Byte
		LDX	#9
		LDY	#$10
		JSR	String_to_Screen_Buffer
		JSR	Wait_1Second
		LDA	#>aDot		; Secret Message (.)
		STA	HighPtr_Byte
		LDA	#<aDot		; Secret Message (.)
		STA	LowPtr_Byte
		LDX	#$A
		LDY	#$10
		JSR	String_to_Screen_Buffer
		JSR	Wait_1Second
		LDA	#>aDot		; Secret Message (.)
		STA	HighPtr_Byte
		LDA	#<aDot		; Secret Message (.)
		STA	LowPtr_Byte
		LDX	#$B
		LDY	#$10
		JSR	String_to_Screen_Buffer
		JSR	Wait_1Second
		LDA	#>aDot		; Secret Message (.)
		STA	HighPtr_Byte
		LDA	#<aDot		; Secret Message (.)
		STA	LowPtr_Byte
		LDX	#$C
		LDY	#$10
		JSR	String_to_Screen_Buffer
		JSR	Draw_Drop	; Рисует падающую зеленую каплю
		JSR	Screen_Off
		JSR	Make_GrayFrame
		JSR	Store_NT_Buffer_InVRAM ; Сбрасывает на экран содержимое	NT_Buffer
		JSR	Set_PPU
		RTS
; End of function Show_Secret_Msg


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Wait_1Second:				; CODE XREF: Show_Secret_Msg+16p
					; Show_Secret_Msg+19p
					; Show_Secret_Msg+2Bp
					; Show_Secret_Msg+3Dp
					; Show_Secret_Msg+4Fp
					; Show_Secret_Msg+61p
					; Show_Secret_Msg+73p
					; Show_Secret_Msg+85p
					; Show_Secret_Msg+97p
					; Show_Secret_Msg+A9p
		LDA	#0
		STA	Frame_Counter

loc_C56B:				; CODE XREF: Wait_1Second+Bj
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		LDA	Frame_Counter
		AND	#$3F ; '?'
		BNE	loc_C56B
		RTS
; End of function Wait_1Second


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует падающую зеленую каплю

Draw_Drop:				; CODE XREF: Show_Secret_Msg+BBp
		LDA	#$78 ; 'x'
		STA	Block_X
		LDA	#$1E		; Начальные координаты капли
		STA	Block_Y
		LDA	#0
		STA	Counter

-:					; CODE XREF: Draw_Drop+1Ej
		JSR	Draw_RespawnPic
		JSR	Draw_RespawnPic
		JSR	Draw_RespawnPic
		JSR	Draw_RespawnPic	; 4 фрейма держится каждый кадр	анимации
		INC	Counter
		LDA	Counter
		CMP	#7		; Выводит 8 разных кардов анимации респауна
		BNE	-

--:					; CODE XREF: Draw_Drop+38j
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		INC	Block_Y		; Опускаемся на	пиксель	ниже
		LDA	#$9D ; 'Э'      ; Начало графики капли в Pattern Table
		STA	Spr_TileIndex
		LDA	#1
		STA	TSA_Pal
		LDX	Block_X
		LDY	Block_Y
		JSR	Draw_WholeSpr	; Cбрасывает в спрайтовый буффер спрайт	16х16. (в Х, Y - координаты)
		LDA	Block_Y
		CMP	#$F8 ; '°'      ; Если капля дошла до низа экрана, выходим
		BNE	--
		RTS
; End of function Draw_Drop


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Draw_RespawnPic:			; CODE XREF: Draw_Drop:-p Draw_Drop+Fp
					; Draw_Drop+12p Draw_Drop+15p
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		LDA	#3
		STA	TSA_Pal
		LDA	#3
		SEC
		SBC	Counter
		BPL	+
		EOR	#$FF
		CLC
		ADC	#1

+:					; CODE XREF: Draw_RespawnPic+Cj
		STA	Temp
		LDA	#3
		SEC
		SBC	Temp
		ASL	A
		ASL	A
		CLC
		ADC	#$A1 ; 'б'      ; начало в Pattern Table графики респауна
		STA	Spr_TileIndex
		LDX	Block_X
		LDY	Block_Y
		JSR	Draw_WholeSpr	; Cбрасывает в спрайтовый буффер спрайт	16х16. (в Х, Y - координаты)
		RTS
; End of function Draw_RespawnPic


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует большую кирпичную надпись GameOver

Draw_Brick_GameOver:			; CODE XREF: ROM:Make_GameOverp
		JSR	Screen_Off
		LDA	#$1C
		STA	PPU_Addr_Ptr
		LDA	#0
		STA	Scroll_Byte
		STA	PPU_REG1_Stts
		JSR	Null_NT_Buffer
		LDX	#$3C ; '<'
		STX	Block_X
		LDY	#$46
		STY	Block_Y
		LDA	#>aGame		; Выводится в виде кирпичной надписи на	весь экран
		STA	HighStrPtr_Byte
		LDA	#<aGame		; Выводится в виде кирпичной надписи на	весь экран
		STA	LowStrPtr_Byte
		JSR	Draw_BrickStr
		LDX	#$3C ; '<'
		STX	Block_X
		LDY	#$78 ; 'x'
		STY	Block_Y
		LDA	#>aOver		; "OVER\xFF"
		STA	HighStrPtr_Byte
		LDA	#<aOver		; "OVER\xFF"
		STA	LowStrPtr_Byte
		JSR	Draw_BrickStr
		JSR	Store_NT_Buffer_InVRAM ; Сбрасывает на экран содержимое	NT_Buffer
		JSR	Set_PPU
		LDA	#0
		STA	Seconds_Counter
		LDA	#1
		STA	Snd_GameOver1
		STA	Snd_GameOver2
		STA	Snd_GameOver3

Next_Frame:				; CODE XREF: Draw_Brick_GameOver+57j
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		LDA	Joypad1_Differ
		AND	#$C
		BNE	End_Draw_Brick_GameOver	; Если нажато Select или Start,	выходим
		LDA	Snd_GameOver1
		BNE	Next_Frame	; Если мелодия закончила играть, выходим

End_Draw_Brick_GameOver:		; CODE XREF: Draw_Brick_GameOver+52j
		JSR	Screen_Off
		JSR	Null_NT_Buffer
		JSR	Store_NT_Buffer_InVRAM ; Сбрасывает на экран содержимое	NT_Buffer
		JSR	Set_PPU
		JSR	Sound_Stop	; Останавливаем	звук, включаем каналы и	т.п. (аналогично Load в	NSF формате)
		RTS
; End of function Draw_Brick_GameOver


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Управление танками игроков во	время демо уровня

Demo_AI:				; CODE XREF: BonusLevel_ButtonCheck:DemoLevel_Loopp
		LDA	#1
		STA	Counter		; Обрабатываем двух игроков

-:					; CODE XREF: Demo_AI+7Dj
		LDX	Counter
		LDA	Bonus_X
		BEQ	NoBonus		; Bonus_X=0 - бонус выведен за экран
		LDA	BonusPts_TimeCounter
		BNE	NoBonus		; Если таймер !=0, бонус взят
					; и отображаются очки за него
					; Если бонус на	экране,	в первую очередь забираем его

Take_Bonus:
		LDA	Bonus_X
		STA	AI_X_Aim
		LDA	Bonus_Y
		STA	AI_Y_Aim
		JSR	Load_AI_Status
		JMP	Load_Direction_DemoAI ;	4 направления
; ───────────────────────────────────────────────────────────────────────────

NoBonus:				; CODE XREF: Demo_AI+8j Demo_AI+Cj
		LDA	Tank_Status+2,X	; Либо бонуса нет,
					; либо он уже взят
					; Далее	производятся проверки танков врагов на жизнеспособность,
					; и если они живы, происходит перенацеливание на них
		BPL	+		; Если <$80, враг умирает
		CMP	#$E0 ; 'р'
		BCS	+		; A>$E0	(если больше,
					; враг зарождается)
		LDA	Tank_X+2,X
		STA	AI_X_Aim
		LDA	Tank_Y+2,X
		STA	AI_Y_Aim
		JSR	Load_AI_Status
		JMP	Load_Direction_DemoAI ;	4 направления
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: Demo_AI+1Ej Demo_AI+22j
		LDA	Tank_Status+4,X
		BPL	++		; Если <$80, враг умирает
		CMP	#$E0 ; 'р'
		BCS	++		; A>$E0	(если больше,
					; враг зарождается)
		LDA	Tank_X+4,X
		STA	AI_X_Aim
		LDA	Tank_Y+4,X
		STA	AI_Y_Aim
		JSR	Load_AI_Status
		JMP	Load_Direction_DemoAI ;	4 направления
; ───────────────────────────────────────────────────────────────────────────

++:					; CODE XREF: Demo_AI+34j Demo_AI+38j
		LDA	Tank_Status+3,X
		BPL	EnemiesNotActing ; Если	<$80, враг умирает
		CMP	#$E0 ; 'р'
		BCS	EnemiesNotActing ; A>$E0 (если больше,
					; враг зарождается)
		LDA	Tank_X+3,X
		STA	AI_X_Aim
		LDA	Tank_Y+3,X
		STA	AI_Y_Aim
		JSR	Load_AI_Status
		JMP	Load_Direction_DemoAI ;	4 направления
; ───────────────────────────────────────────────────────────────────────────

EnemiesNotActing:			; CODE XREF: Demo_AI+4Aj Demo_AI+4Ej
		LDA	#0		; Если танков нет, ничего не делаем
		JMP	SaveButton_DemoAI
; ───────────────────────────────────────────────────────────────────────────

Load_Direction_DemoAI:			; CODE XREF: Demo_AI+19j Demo_AI+2Fj
					; Demo_AI+45j Demo_AI+5Bj
		AND	#3		; 4 направления
		TAY
		LDA	Tank_Direction,Y ; Направление танков в	демо-уровне (в формате порта джойстика)

SaveButton_DemoAI:			; CODE XREF: Demo_AI+60j
		LDX	Counter
		STA	Joypad1_Buttons,X
		STA	Joypad1_Differ,X
		LDA	Tank_Y,X
		CMP	#$C8 ; '╚'
		BCC	Next_Demo_AI
		LDA	Joypad1_Differ,X
		AND	#$F0 ; 'Ё'
		STA	Joypad1_Differ,X

Next_Demo_AI:				; CODE XREF: Demo_AI+73j
		DEC	Counter
		BPL	-
		RTS
; End of function Demo_AI

; ───────────────────────────────────────────────────────────────────────────
Tank_Direction:	.BYTE $13,$43,$23,$83	; DATA XREF: Demo_AI+66r
					; Направление танков в демо-уровне (в формате порта джойстика)

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует TSA блок под танком

Draw_TSA_On_Tank:			; CODE XREF: ROM:Construct_Draw_TSAp
		LDA	TSA_BlockNumber
		AND	#$F
		LDX	Tank_X
		LDY	Tank_Y
		JSR	Draw_TSABlock
		RTS
; End of function Draw_TSA_On_Tank


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Двигает танк в зависимости от	нажатых	кнопок

Move_Tank:				; CODE XREF: ROM:C0EDp
		LDA	Joypad1_Buttons
		AND	#$F0 ; 'Ё'      ; Проверка на нажатые клавиши управления
		BEQ	ArrowNotPressed
		INC	byte_7B
		LDA	#0
		STA	BkgOccurence_Flag
		JMP	+
; ───────────────────────────────────────────────────────────────────────────

ArrowNotPressed:			; CODE XREF: Move_Tank+4j
		LDA	#0
		STA	byte_7B

+:					; CODE XREF: Move_Tank+Cj
		LDA	byte_7B
		CMP	#$14
		BEQ	loc_C6FB
		LDA	Joypad1_Differ
		AND	#$F0 ; 'Ё'      ; Если кнопки направления не
					; нажаты, танк не двигаем
		BEQ	End_Move_Tank
		LDA	Joypad1_Differ
		JSR	Button_To_DirectionIndex ; $FF = кнопки	управления не нажаты
		BMI	End_Move_Tank	; Перестраховка, на случаай, если
					; кнопки управления не нажаты
		JMP	loc_C704
; ───────────────────────────────────────────────────────────────────────────

loc_C6FB:				; CODE XREF: Move_Tank+17j
		LDA	#$F
		STA	byte_7B
		LDA	Joypad1_Buttons
		JSR	Button_To_DirectionIndex ; $FF = кнопки	управления не нажаты

loc_C704:				; CODE XREF: Move_Tank+26j
		TAY
		LDA	Coord_X_Increment,Y
		ASL	A
		ASL	A
		ASL	A
		ASL	A		; Перемещаем танк на 16	пикселей
					; (каждый TSA блок 16х16)
		CLC
		ADC	Tank_X
		STA	Tank_X
		LDA	Coord_Y_Increment,Y
		ASL	A
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	Tank_Y
		STA	Tank_Y

End_Move_Tank:				; CODE XREF: Move_Tank+1Dj
					; Move_Tank+24j
		RTS
; End of function Move_Tank


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Обнуляет массив счётчиков убитых врагов

Null_KilledEnms_Count:			; CODE XREF: SetUp_LevelVARs+43p
		LDX	#7
;4 типа	врагов и 2 игрока = массив из 8	байт
		LDA	#0

-:					; CODE XREF: Null_KilledEnms_Count+7j
		STA	Enmy_KlledBy1P_Count,X
		DEX
		BPL	-
		RTS
; End of function Null_KilledEnms_Count


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; if ExitLevel then A=1

LevelEnd_Check:				; CODE XREF: ROM:C21Ep
					; BonusLevel_ButtonCheck+18p
		LDA	HQ_Status	; 80=штаб цел, если ноль то уничтожен
		BEQ	Init_GameOverStr ; Процедура проверяет статусы:	штаба, жизней игроков,
					; количества оставшихся	врагов и если нужно выйти из
					; уровня, на выходе в А	выдаёт 1, если нужно продолжать
					; процедуру уровня, то 0
		LDA	Enemy_Counter	; Если врагов нет, выходим
		BEQ	ExitLevel
		LDA	Player1_Lives
		CLC
		ADC	Player2_Lives	; Если жизней у	всех игроков нет, выходим
		BNE	PlayLevel

Init_GameOverStr:			; CODE XREF: LevelEnd_Check+2j
		LDA	#$70 ; 'p'
		STA	GameOverStr_X
		LDA	#$F0 ; 'Ё'
		STA	GameOverStr_Y
		LDA	#0
		STA	GameOverScroll_Type ; Определяет вид перемещения надписи(0..3)
		LDA	#$11
		STA	GameOverStr_Timer
		LDA	#0		; обнуляем счетчик, чтобы корректно
					; обработать таймер надписи Game Over
		STA	Frame_Counter

ExitLevel:				; CODE XREF: LevelEnd_Check+6j
		LDA	#1
		RTS
; ───────────────────────────────────────────────────────────────────────────

PlayLevel:				; CODE XREF: LevelEnd_Check+Dj
		LDA	#0
		RTS
; End of function LevelEnd_Check

; ───────────────────────────────────────────────────────────────────────────
		LDA	byte_109	; Не использовался
		JSR	Num_To_NumString ; Переводит число из А	в строку NumString
		LDA	#$30 ; '0'
		STA	Char_Index_Base
		LDA	#0
		STA	HighPtr_Byte
		LDA	#$39 ; '9'
		STA	LowPtr_Byte
		LDX	#9
		LDY	#2
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер
		LDX	byte_109
		LDA	0,X
		JSR	Num_To_NumString ; Переводит число из А	в строку NumString
		LDA	#0
		STA	HighPtr_Byte
		LDA	#$39 ; '9'
		STA	LowPtr_Byte
		LDX	#$D
		LDY	#2
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер
		LDA	#0
		STA	Char_Index_Base
		LDA	Joypad1_Differ
		AND	#4
		BEQ	loc_C792
		INC	byte_109

loc_C792:				; CODE XREF: ROM:C78Dj
		LDA	Joypad1_Differ
		AND	#2
		BEQ	loc_C79B
		DEC	byte_109

loc_C79B:				; CODE XREF: ROM:C796j
		LDA	Joypad1_Differ
		AND	#1
		BEQ	locret_C7AA
		LDA	byte_109
		CLC
		ADC	#$10
		STA	byte_109

locret_C7AA:				; CODE XREF: ROM:C79Fj
		RTS

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Scroll_TitleScrn:			; CODE XREF: BonusLevel_ButtonCheck-37Ep
		LDA	#0
		STA	Scroll_Byte
		STA	PPU_REG1_Stts

-:					; CODE XREF: Scroll_TitleScrn+15j
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		INC	Scroll_Byte
		LDA	Joypad1_Differ
		AND	#1100b		; Проверка на Select или Start
		BNE	+		; То же	самое, что RTS (?)
		LDA	Scroll_Byte
		CMP	#$F0 ; 'Ё'
		BNE	-
		RTS
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: Scroll_TitleScrn+Fj
		PLA			; То же	самое, что RTS (?)
		PLA
		JMP	Title_Loaded
; End of function Scroll_TitleScrn


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует IP/IIP	и число	жизней в правом	углу

Draw_Player_Lives:			; CODE XREF: Battle_Loop+30p
		LDA	#1
		STA	Counter		; По умолчанию отрисовываем жизни обоих	игроков
		STA	byte_6B
		LDA	#$6E ; 'n'
		STA	Char_Index_Base	; c $6E	в VRAM начинаются цифры
		LDA	#>PlayerLives_Icon ; Значок жизней игрока
		STA	HighPtr_Byte
		LDA	#<PlayerLives_Icon ; Значок жизней игрока
		STA	LowPtr_Byte
		LDX	#$1D
		LDY	#$12		; Координаты надписи
		JSR	String_to_Screen_Buffer
		LDA	Level_Mode
		CMP	#2
		BEQ	Draw_2P_Lives	; Рисуем значок	жизней второго игрока
		LDA	CursorPos	; Если выбран один игрок, то
					; не рисуем жизни 2 игрока.
		BNE	Draw_2P_Lives	; Рисуем значок	жизней второго игрока
		LDA	#0
		STA	Counter		; Жизни	второго	игрока уже
					; рисовать не будем
		JMP	Draw_1P_Lives
; ───────────────────────────────────────────────────────────────────────────

Draw_2P_Lives:				; CODE XREF: Draw_Player_Lives+1Dj
					; Draw_Player_Lives+21j
		LDA	#>PlayerLives_Icon ; Рисуем значок жизней второго игрока
		STA	HighPtr_Byte
		LDA	#<PlayerLives_Icon ; Значок жизней игрока
		STA	LowPtr_Byte
		LDX	#$1D
		LDY	#$15
		JSR	String_to_Screen_Buffer

Draw_1P_Lives:				; CODE XREF: Draw_Player_Lives+27j
					; Draw_Player_Lives+5Fj
		LDX	Counter
		LDA	Player1_Lives,X
		SEC
		SBC	#1
		BPL	Draw_LivesDigit
		LDA	#0		; Если жизни отрицательные, рисуем ноль

Draw_LivesDigit:			; CODE XREF: Draw_Player_Lives+40j
		JSR	ByteTo_Num_String
		LDY	#$36 ; '6'
		LDX	#$19
		JSR	PtrToNonzeroStrElem ; Будем читать из числовой строки
		LDA	Counter
		STA	Temp
		ASL	A
		CLC
		ADC	Temp
		CLC
		ADC	#$12		; Y координата жизней на экране
		TAY
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер
		DEC	Counter
		BPL	Draw_1P_Lives
		LDA	#0
		STA	Char_Index_Base
		STA	byte_6B
		RTS
; End of function Draw_Player_Lives


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Draw_IP:				; CODE XREF: SetUp_LevelVARs+4Cp
		LDA	#>I_p		; надпись IP прямо над жизнями игроков
		STA	HighPtr_Byte
		LDA	#<I_p		; надпись IP прямо над жизнями игроков
		STA	LowPtr_Byte
		LDX	#$1D
		LDY	#$11
		JSR	String_to_Screen_Buffer
		LDA	Level_Mode
		CMP	#2
		BEQ	Draw_IIP	; Если бонус уровень, то игроков всегда	два
		LDA	CursorPos
		BEQ	+

Draw_IIP:				; CODE XREF: Draw_IP+13j
		LDA	#>II_p		; надпись IIP прямо над	жизнями	игроков
		STA	HighPtr_Byte
		LDA	#<II_p		; надпись IIP прямо над	жизнями	игроков
		STA	LowPtr_Byte
		LDX	#$1D
		LDY	#$14
		JSR	String_to_Screen_Buffer

+:					; CODE XREF: Draw_IP+17j
		RTS
; End of function Draw_IP


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Draw_LevelFlag:				; CODE XREF: SetUp_LevelVARs+4Fp
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		LDA	#>LevelFlag_Upper_Icons	; Флажок над номером уровня в правой части экрана
		STA	HighPtr_Byte
		LDA	#<LevelFlag_Upper_Icons	; Флажок над номером уровня в правой части экрана
		STA	LowPtr_Byte
		LDX	#$1D
		LDY	#$17
		JSR	String_to_Screen_Buffer
		LDA	#>LevelFlag_Lower_Icons
		STA	HighPtr_Byte
		LDA	#<LevelFlag_Lower_Icons
		STA	LowPtr_Byte
		LDX	#$1D
		LDY	#$18
		JSR	String_to_Screen_Buffer
		LDA	#$6E ; 'n'
		STA	Char_Index_Base	; C $6E	начинаются цифры жизней	в Pattern Table
		LDA	Level_Number
		JSR	ByteTo_Num_String
		LDY	#$36 ; '6'
		LDX	#$19
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDY	#$19
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер
		LDA	#0
		STA	Char_Index_Base
		RTS
; End of function Draw_LevelFlag


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


PointAt_RightScrnColumn:		; CODE XREF: ReinforceToRAMp
					; Draw_EmptyTilep
		PHA
		AND	#1
		CLC
		ADC	#29		; 29 тайлов от начала строки экрана до начала правого информационного столбца
		TAX
		PLA
		LSR	A		; делим	на 2 (в	строке информационного столбца всегда два тайла)
		CLC
		ADC	#3		; информационный столбец отстоит от верхней границы экрана на 3	тайла
		TAY
;X и Y теперь координаты в тайлах куда будет
;записана очередная иконка информационного столбца
		RTS
; End of function PointAt_RightScrnColumn


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


ReinforceToRAM:				; CODE XREF: Draw_Reinforcemets+6p
		JSR	PointAt_RightScrnColumn
		LDA	#>Reinforcement_Icons ;	Составляют лист	оставшихся врагов
		STA	HighPtr_Byte
		LDA	#<Reinforcement_Icons ;	Составляют лист	оставшихся врагов
		STA	LowPtr_Byte
		JSR	String_to_Screen_Buffer
		RTS
; End of function ReinforceToRAM


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует пустой	тайл в колонке запасов врагов, когда они выходят

Draw_EmptyTile:				; CODE XREF: Respawn_Handle+20p
		JSR	PointAt_RightScrnColumn
		LDA	#>Empty_Tile	; Подменяет значок врага, когда	тот рождается
		STA	HighPtr_Byte
		LDA	#<Empty_Tile	; Подменяет значок врага, когда	тот рождается
		STA	LowPtr_Byte
		JSR	String_to_Screen_Buffer
		RTS
; End of function Draw_EmptyTile


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Draw_Reinforcemets:			; CODE XREF: SetUp_LevelVARs+46p
		LDA	#18
		STA	Counter		; В листе запасов врагов будет 20 иконок врагов,
					; здесь	цикл с постусловием, поэтому 18

-:					; CODE XREF: Draw_Reinforcemets+Dj
		LDA	Counter
		JSR	ReinforceToRAM
		DEC	Counter
		DEC	Counter		; По две иконки	в линии, поэтому уменьшаем 2 раза
		BPL	-
		RTS
; End of function Draw_Reinforcemets


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Не дает танку	выйти за границы серой рамки

Check_BorderReach:			; CODE XREF: ROM:C0F0p
		LDA	Tank_X
		CMP	#$D8 ; '╪'
		BCC	+
		LDA	#$D8 ; '╪'
		STA	Tank_X		; Если правее рамки, присваиваем танку
					; крайнюю правую координату

+:					; CODE XREF: Check_BorderReach+4j
		LDA	Tank_X
		CMP	#$18
		BCS	++
		LDA	#$18
		STA	Tank_X		; Если левее рамки, присваиваем	танку
					; крайнюю левую	координату

++:					; CODE XREF: Check_BorderReach+Ej
		LDA	Tank_Y
		CMP	#$D8 ; '╪'
		BCC	+++
		LDA	#$D8 ; '╪'
		STA	Tank_Y		; Если выше рамки, присваиваем танку
					; крайнюю верхнюю координату

+++:					; CODE XREF: Check_BorderReach+18j
		LDA	Tank_Y
		CMP	#$18
		BCS	End_Check_BorderReach
		LDA	#$18
		STA	Tank_Y		; Если ниже рамки, присваиваем танку
					; крайнюю нижнюю координату

End_Check_BorderReach:			; CODE XREF: Check_BorderReach+22j
		RTS
; End of function Check_BorderReach


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует мигающую надпись, в случае если выставлена пауза

Draw_Pause:				; CODE XREF: ROM:Skip_Pause_Switchp
		LDA	Pause_Flag
		BEQ	End_Draw_Pause	; Если пауза не	выставлена, выходим
		LDA	Frame_Counter
		AND	#$10		; Создаёт мигание надписи раз в	16 фреймов
		BEQ	End_Draw_Pause
;Топорный способ вывода	надписи	"PAUSE"	на экран
		LDA	#3
		STA	TSA_Pal		; Пауза	использует спрайтовую палитру 3
		LDA	#0
		STA	Spr_Attrib	; Надпись поверх форна
		LDX	#$64 ; 'd'      ; Координата Х буквы
		LDY	#$80 ; 'А'      ; Координата Y буквы
		LDA	#$17		; P
		STA	Spr_TileIndex
		JSR	SaveSprTo_SprBuffer ; Сбрасывает в спрайтовый буффер один спрайт 8х16
		LDX	#$6C ; 'l'
		LDY	#$80 ; 'А'
		LDA	#$19		; A
		STA	Spr_TileIndex
		JSR	SaveSprTo_SprBuffer ; Сбрасывает в спрайтовый буффер один спрайт 8х16
		LDX	#$74 ; 't'
		LDY	#$80 ; 'А'
		LDA	#$1B		; U
		STA	Spr_TileIndex
		JSR	SaveSprTo_SprBuffer ; Сбрасывает в спрайтовый буффер один спрайт 8х16
		LDX	#$7C ; '|'
		LDY	#$80 ; 'А'
		LDA	#$1D		; S
		STA	Spr_TileIndex
		JSR	SaveSprTo_SprBuffer ; Сбрасывает в спрайтовый буффер один спрайт 8х16
		LDX	#$84 ; 'Д'
		LDY	#$80 ; 'А'
		LDA	#$1F		; E
		STA	Spr_TileIndex
		JSR	SaveSprTo_SprBuffer ; Сбрасывает в спрайтовый буффер один спрайт 8х16
		LDA	#$20 ; ' '
		STA	Spr_Attrib

End_Draw_Pause:				; CODE XREF: Draw_Pause+2j
					; Draw_Pause+8j
		RTS
; End of function Draw_Pause


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует надпись Game Over, когда она остановилась

Draw_Fixed_GameOver:			; CODE XREF: GameOver_Str_Move_Handle:Stopped_Motionp
		LDA	#3
		STA	TSA_Pal
		LDA	#0
		STA	Spr_Attrib
		LDX	GameOverStr_X
		LDY	GameOverStr_Y
		LDA	#$79 ; 'y'      ; Начало первого спрайта 16х16 надписи Game Over
		STA	Spr_TileIndex
		JSR	Draw_WholeSpr	; Рисуем левую половинку надписи
		LDA	GameOverStr_X
		CLC
		ADC	#$10		; Смещаемся на два тайла вправо	(16 пикселей)
		TAX
		LDY	GameOverStr_Y
		LDA	#$7D ; '}'      ; Начало графики второй половинки надписи в Pattern Table
		STA	Spr_TileIndex
		JSR	Draw_WholeSpr	; Рисуем вторую	половину
		LDA	#$20 ; ' '
		STA	Spr_Attrib
		RTS
; End of function Draw_Fixed_GameOver


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Выводит надпись Game Over если нужно

GameOver_Str_Move_Handle:		; CODE XREF: Battle_Loop+2Ap
		LDA	GameOverStr_Timer
		BEQ	End_GameOver_Str_Move ;	Если надписи нет, выходим
		LDA	Level_Mode
		CMP	#2		; На бонус уровне надпись Game Over не отображается
		BEQ	End_GameOver_Str_Move
		LDA	Frame_Counter
		AND	#$F		; Счётчик уменьшается
					; каждые 16 фреймов
		BNE	Check_Motion
		DEC	GameOverStr_Timer
		BNE	Check_Motion

Hide_String:				; Если время кончилось,
		LDA	#$F0 ; 'Ё'      ; прячем надпись
		STA	GameOverStr_Y

Check_Motion:				; CODE XREF: GameOver_Str_Move_Handle+Fj
					; GameOver_Str_Move_Handle+14j
		LDA	GameOverStr_Timer
		CMP	#10		; за 10	циклов до исчезновения
					; надпись останавливается
		BCC	Stopped_Motion
		LDA	GameOverScroll_Type ; Определяет вид перемещения надписи(0..3)
		TAY
		LDA	Coord_X_Increment,Y
		CLC
		ADC	GameOverStr_X
		STA	GameOverStr_X
		LDA	Coord_Y_Increment,Y
		CLC
		ADC	GameOverStr_Y
		STA	GameOverStr_Y

Stopped_Motion:				; CODE XREF: GameOver_Str_Move_Handle+20j
		JSR	Draw_Fixed_GameOver ; Рисует надпись Game Over,	когда она остановилась

End_GameOver_Str_Move:			; CODE XREF: GameOver_Str_Move_Handle+3j
					; GameOver_Str_Move_Handle+9j
		RTS
; End of function GameOver_Str_Move_Handle


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Make_GrayFrame:				; CODE XREF: ROM:C0B5p	ROM:C1D4p
					; Load_DemoLevel+19p
					; Show_Secret_Msg+C1p
		LDA	#2
		STA	Block_X
		STA	Block_Y		; Рамочка шириной 2 тайла по вертикали и горизонтали
					; (потом к ней прибавляется правый информационный столбец)
					; На самом деле, сначала весь экран заполняется	серым, потом
					; в нем	отрисовывается черный квадрат игрового поля
		LDA	#$1A
		STA	Counter		; $19 -	ширина и высота	игрового поля (в процедуре от $1A отнимается единица)
					; Counter - будет играть роль высоты
					; Counter2 - ширины
		STA	Counter2
		JSR	Draw_GrayFrame
		RTS
; End of function Make_GrayFrame


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Title_Screen_Loop:			; CODE XREF: BonusLevel_ButtonCheck:Title_Loadedp
		LDA	#3
		STA	BkgPal_Number	; По RTS - загрузка демо-ролика
					; выходы по JMP	на разные команды
		JSR	Null_Status
		LDA	#$48 ; 'H'      ; X на титульнике изменяться не будет
		STA	Tank_X
		JSR	CurPos_To_PixelCoord
		LDA	#$83
		STA	Tank_Status	; Танк направлен дулом вправо
		LDA	#0
		STA	Seconds_Counter	; Обнуление таймера
		STA	Tank_Type
		STA	Track_Pos
		STA	Player_Blink_Timer ; Таймер мигания friendly fire
		STA	Player_Blink_Timer+1 ; Таймер мигания friendly fire
		STA	Scroll_Byte
		STA	Joy_Counter
		LDA	#2
		STA	PPU_REG1_Stts

-:					; CODE XREF: Title_Screen_Loop+81j
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		LDA	Frame_Counter
		AND	#3
		BNE	+		; Каждые 3 фрейма смещаем гусеницу
		LDA	Track_Pos
		EOR	#4
		STA	Track_Pos

+:					; CODE XREF: Title_Screen_Loop+2Dj
		JSR	TanksStatus_Handle ; Обрабатывает статусы всех 8-ми танков
		LDA	Joypad1_Differ
		AND	#4		; проверка на select
		BEQ	++
		INC	CursorPos
		LDA	#0
		STA	Seconds_Counter

++:					; CODE XREF: Title_Screen_Loop+3Cj
		LDA	Joypad1_Buttons
		AND	#$20 ; ' '
		BEQ	+++
		LDA	Joypad2_Differ
		AND	#1
		BEQ	+++
		LDA	#$10
		CLC
		ADC	Joy_Counter
		STA	Joy_Counter

+++:					; CODE XREF: Title_Screen_Loop+48j
					; Title_Screen_Loop+4Ej
		LDA	Joypad1_Buttons
		AND	#$80 ; 'А'
		BEQ	Check_Max_CurPos
		LDA	Joypad2_Differ
		AND	#2
		BEQ	Check_Max_CurPos
		DEC	Joy_Counter

Check_Max_CurPos:			; CODE XREF: Title_Screen_Loop+5Bj
					; Title_Screen_Loop+61j
		LDA	CursorPos
		CMP	#3
		BCC	Plus
		LDA	#0
		STA	CursorPos

Plus:					; CODE XREF: Title_Screen_Loop+69j
		JSR	CurPos_To_PixelCoord
		LDA	Seconds_Counter
		CMP	#10		; Проверка на время начала Демо-ролика(10 секунд)
		BNE	Start_Check
		LDA	Construction_Flag ; Если были в	Construction, не показываем демо-уровень
		BNE	Start_Check
		RTS			; Загружаем Демо-ролик
; ───────────────────────────────────────────────────────────────────────────

Start_Check:				; CODE XREF: Title_Screen_Loop+76j
					; Title_Screen_Loop+7Aj
		LDA	Joypad1_Differ
		AND	#8		; проверка на старт
		BEQ	-
		LDA	Construction_Flag ; Выставляется, если зашли в Construction
		CMP	#7
		BNE	Start_Pressed
		LDA	Joy_Counter
		CMP	#$74 ; 't'      ; CaH4e3 писал:
					; 1. На	титуле выбрать "CONSTRUCTION", войти и выйти (нажимая START, START) в этот режим и обратно 7 раз.
					; 2. Зажать на первом джойстике	DOWN и нажать на втором	джойстике кнопку A 8 раз.
					; 3. Зажать на первом джойстике	RIGHT и	нажать на втором джойстике кнопку B 12 раз.
					; 4. Снова нажать START.
		BNE	Start_Pressed
		JSR	Show_Secret_Msg

Start_Pressed:				; CODE XREF: Title_Screen_Loop+87j
					; Title_Screen_Loop+8Dj
		LDA	#0
		STA	BkgPal_Number
		PLA
		PLA			; чтобы	не переполнить стек при	рекурсии
		LDA	CursorPos	; В зависимости	от позиции курсора выполняем команды
		ASL	A		; х2 (указатели	двухбайтовые)
		TAY
		LDA	Title_JumpTable,Y
		STA	LowPtr_Byte
		LDA	Title_JumpTable+1,Y
		STA	HighPtr_Byte
		JMP	(LowPtr_Byte)
; End of function Title_Screen_Loop

; ───────────────────────────────────────────────────────────────────────────
;Загружается командами сверху
Title_JumpTable:.WORD Selected_1player	; DATA XREF: Title_Screen_Loop+9Cr
					; Title_Screen_Loop+A1r
					; Если игрок 1,	то на экране может быть	4 врага
		.WORD Selected_2players	; Если игроков двое, то	на экране может	быть 6 врагов
		.WORD Selected_Construction
; ───────────────────────────────────────────────────────────────────────────

Selected_1player:			; DATA XREF: ROM:Title_JumpTableo
		LDA	#5		; Если игрок 1,	то на экране может быть	4 врага
		JMP	accept
; ───────────────────────────────────────────────────────────────────────────

Selected_2players:			; DATA XREF: ROM:CA6Bo
		LDA	#7		; Если игроков двое, то	на экране может	быть 6 врагов

accept:					; CODE XREF: ROM:CA71j
		STA	TanksOnScreen	; Максимальное количество всех танков на экране
		JSR	Null_both_HiScore
		JMP	Start_StageSelScrn
; ───────────────────────────────────────────────────────────────────────────

Selected_Construction:			; DATA XREF: ROM:CA6Do
		LDA	#7
		STA	TanksOnScreen	; ? к чему бы это - на экране только игрок...
		JMP	Construction

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


CurPos_To_PixelCoord:			; CODE XREF: Title_Screen_Loop+Bp
					; Title_Screen_Loop:Plusp
		LDA	CursorPos
		ASL	A
		ASL	A
		ASL	A
		ASL	A		; Умножаем на 16 (между	пунктами меню 2	тайла по 8 пикселей)
		CLC
		ADC	#$8B ; 'Л'      ; От верхней границы экрана до первого пункта меню по вертикали $88 пикселей
		STA	Tank_Y
		RTS
; End of function CurPos_To_PixelCoord


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Draw_StageNumString:			; CODE XREF: ROM:StageSelect_Loopp
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		LDX	#$C		; Координаты в тайлах размещения строки	на экране
		LDY	#$E
		JSR	CoordTo_PPUaddress
		LDX	ScrBuffer_Pos
		CLC
		ADC	#$1C
		STA	Screen_Buffer,X	; Старший байт адреса в	PPU
		INX
		TYA
		STA	Screen_Buffer,X	; Младший байт
		INX
;Варварский способ написания строки 'STAGE XX':
		LDA	#$23 ; '#'      ; S
		STA	Screen_Buffer,X
		INX
		LDA	#$24 ; '$'      ; T
		STA	Screen_Buffer,X
		INX
		LDA	#$25 ; '%'      ; A
		STA	Screen_Buffer,X
		INX
		LDA	#$26 ; '&'      ; G
		STA	Screen_Buffer,X
		INX
		LDA	#$27 ; '''      ; E
		STA	Screen_Buffer,X
		INX
		LDA	#$11		; _
		STA	Screen_Buffer,X
		INX
		LDA	#$11		; _
		STA	Screen_Buffer,X
		INX
		LDA	#$FF		; Конец	строки
		STA	Screen_Buffer,X
		INX
		STX	ScrBuffer_Pos
		LDA	#$6E ; 'n'      ; С $6E в Pattern Table начинается графика цифр
		STA	Char_Index_Base
		LDA	Level_Number
		JSR	ByteTo_Num_String
		LDY	#Num_String+1
		LDX	#$E		; Координата Х выводимой цифры
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDY	#$E		; Координата Y выводимой цифры
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер
		LDA	#0
		STA	Char_Index_Base
		RTS
; End of function Draw_StageNumString


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует штаб с	кирпичами

DraW_Normal_HQ:				; CODE XREF: ROM:C0E7p	ROM:C1DCp
					; Load_DemoLevel+5Dp
					; HQ_Handle:Normal_HQ_Handlep
		LDA	#>Normal_HQ_TSA
		STA	HighPtr_Byte
		LDA	#<Normal_HQ_TSA
		STA	LowPtr_Byte
		LDX	#$C
		LDY	#$18
		JSR	String_to_Screen_Buffer
		LDA	#>NormalLine2
		STA	HighPtr_Byte
		LDA	#<NormalLine2
		STA	LowPtr_Byte
		LDX	#$C
		LDY	#$19
		JSR	String_to_Screen_Buffer
		LDA	#>NormalLine3
		STA	HighPtr_Byte
		LDA	#<NormalLine3
		STA	LowPtr_Byte
		LDX	#$C
		LDY	#$1A
		JSR	String_to_Screen_Buffer
		LDA	#>Normalline4
		STA	HighPtr_Byte
		LDA	#<Normalline4
		STA	LowPtr_Byte
		LDX	#$C
		LDY	#$1B
		JSR	String_to_Screen_Buffer	; Выводим штаб через Строковый Буффер
		LDX	ScrBuffer_Pos
		LDA	#$23 ; '#'
		STA	Screen_Buffer,X
		INX
		LDA	#$F3 ; 'є'
		STA	Screen_Buffer,X	; Запись в память PPU $23F3 (атрибуты штаба)
		INX
		LDA	#0
		STA	NT_Buffer+$3F3
		STA	Screen_Buffer,X
		INX
		LDA	NT_Buffer+$3F4
		AND	#$CC ; '╠'
		STA	NT_Buffer+$3F4
		STA	Screen_Buffer,X	; Выставляем атрибуты штаба
		INX
		LDA	#$FF
		STA	Screen_Buffer,X	; Конец	строки
		INX
		STX	ScrBuffer_Pos
		RTS
; End of function DraW_Normal_HQ


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Draw_Naked_HQ:				; CODE XREF: ROM:Skip_Lvl_Loadp
		LDA	#>Naked_HQ_TSA_FirstLine
		STA	HighPtr_Byte
		LDA	#<Naked_HQ_TSA_FirstLine
		STA	LowPtr_Byte
		LDX	#$E
		LDY	#$1A		; Координаты верхней линии голого штаба
		JSR	String_to_Screen_Buffer
		LDA	#>Naked_HQ_TSA_SecndLine
		STA	HighPtr_Byte
		LDA	#<Naked_HQ_TSA_SecndLine
		STA	LowPtr_Byte
		LDX	#$E
		LDY	#$1B		; Координаты нижней линии голого штаба
		JSR	String_to_Screen_Buffer

		LDX	ScrBuffer_Pos
		LDA	#$23 ; '#'
		STA	Screen_Buffer,X
		INX
		LDA	#$F3 ; 'є'
		STA	Screen_Buffer,X	; Запись следующего стринга будет в адрес PPU $23F3
					; (атрибут верхней карты тайлов)
		INX
		LDA	NT_Buffer+$3F3
		AND	#111111b
		STA	NT_Buffer+$3F3	; Штаб использует нулевую палитру, поэтому старшие
					; три бита обнуляют, хотя достаточно обнулить и	два
					; (адрес байта атрибута	вписан в операнды жестко,
					; но для отладки сойдёт)
		STA	Screen_Buffer,X
		INX
		LDA	#$FF
		STA	Screen_Buffer,X	; Конец	строки
		INX
		STX	ScrBuffer_Pos
		RTS
; End of function Draw_Naked_HQ


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует штаб с	броней

Draw_ArmourHQ:				; CODE XREF: HQ_Handle+20p ROM:E9FFp
		LDA	#>Armour_HQ_TSA_Line1
		STA	HighPtr_Byte
		LDA	#<Armour_HQ_TSA_Line1
		STA	LowPtr_Byte
		LDX	#$C
		LDY	#$18
		JSR	String_to_Screen_Buffer
		LDA	#>Armour_HQ_TSA_Line2
		STA	HighPtr_Byte
		LDA	#<Armour_HQ_TSA_Line2
		STA	LowPtr_Byte
		LDX	#$C
		LDY	#$19
		JSR	String_to_Screen_Buffer
		LDA	#>Armour_HQ_TSA_Line3
		STA	HighPtr_Byte
		LDA	#<Armour_HQ_TSA_Line3
		STA	LowPtr_Byte
		LDX	#$C
		LDY	#$1A
		JSR	String_to_Screen_Buffer
		LDA	#>Armour_HQ_TSA_Line4
		STA	HighPtr_Byte
		LDA	#<Armour_HQ_TSA_Line4
		STA	LowPtr_Byte
		LDX	#$C
		LDY	#$1B
		JSR	String_to_Screen_Buffer
		LDX	ScrBuffer_Pos	; Выводим бронированый штаб через строковый буффер
		LDA	#$23 ; '#'
		STA	Screen_Buffer,X
		INX
		LDA	#$F3 ; 'є'
		STA	Screen_Buffer,X	; Будем	писать в область атрибутов ($23F3)
		INX
		LDA	#$3F ; '?'
		STA	NT_Buffer+$3F3
		STA	Screen_Buffer,X
		INX
		LDA	NT_Buffer+$3F4
		AND	#$CC ; '╠'
		ORA	#$33 ; '3'
		STA	NT_Buffer+$3F4
		STA	Screen_Buffer,X
		INX
		LDA	#$FF
		STA	Screen_Buffer,X	; Конец	строки атрибутов
		INX
		STX	ScrBuffer_Pos
		RTS
; End of function Draw_ArmourHQ


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует разрушенный штаб

Draw_Destroyed_HQ:			; CODE XREF: BulletToObject_Impact_Handle+20p
		LDA	#>DestroyedHQ_TSA_Line1
		STA	HighPtr_Byte
		LDA	#<DestroyedHQ_TSA_Line1
		STA	LowPtr_Byte
		LDX	#$E
		LDY	#$1A
		JSR	String_to_Screen_Buffer
		LDA	#>DestroyedHQ_TSA_Line2
		STA	HighPtr_Byte
		LDA	#<DestroyedHQ_TSA_Line2
		STA	LowPtr_Byte
		LDX	#$E
		LDY	#$1B
		JSR	String_to_Screen_Buffer
		RTS
; End of function Draw_Destroyed_HQ


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Copy_AttribToScrnBuff:			; CODE XREF: ROM:C1E9p
		LDY	#0
;Процедура копирует атрибуты из	NTBuffer в ScreenBuffer, переводя в соответствующий фромат
		LDA	#$23 ; '#'
		STA	HighPtr_Byte
		LDA	#$C0 ; '└'
		STA	LowPtr_Byte	; Запись будет вестись в область атрибутов верхней NT

-:					; CODE XREF: Copy_AttribToScrnBuff+32j
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		LDX	ScrBuffer_Pos
		LDA	HighPtr_Byte
		STA	Screen_Buffer,X
		INX
		LDA	LowPtr_Byte
		STA	Screen_Buffer,X	; Сначала сохраняем в буффер строк адрес PPU,
					; куда будет вестить запись
		INX
		LDA	NT_Buffer+$3C0,Y
		INY
		STA	Screen_Buffer,X
		INX
		LDA	#$FF
		STA	Screen_Buffer,X	; Сохраняем каждый байт	атрибута в виде	строки
					; в спрайтовый буффер
		INX
		STX	ScrBuffer_Pos
		LDA	#1
		JSR	Inc_Ptr_on_A
		CPY	#$40 ; '@'      ; Количество байт в таблице атрибутов
		BNE	-
		RTS
; End of function Copy_AttribToScrnBuff


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Заполняет один ряд тайлов Iterative_Byte'ом

FillScr_Single_Row:			; CODE XREF: FillNT_with_Grey+Dp
					; FillNT_with_Grey+16p
					; FillNT_with_Black+Dp
					; FillNT_with_Black+16p
		LDX	#0
		JSR	CoordTo_PPUaddress
		STA	HighPtr_Byte
		STY	LowPtr_Byte
		LDX	ScrBuffer_Pos
		LDA	HighPtr_Byte
		CLC
		ADC	#$1C
		STA	Screen_Buffer,X
		INX
		LDA	LowPtr_Byte
		STA	Screen_Buffer,X
		INX
		LDY	#0

-:					; CODE XREF: FillScr_Single_Row+29j
		LDA	Iterative_Byte	; Байт,	заполняющий большие массивы данных
		BNE	+
		LDA	(LowPtr_Byte),Y

+:					; CODE XREF: FillScr_Single_Row+1Ej
		STA	Screen_Buffer,X
		INX
		INY
		CPY	#$20 ; ' '
		BNE	-
		LDA	#$FF
		STA	Screen_Buffer,X
		INX
		STX	ScrBuffer_Pos
		RTS
; End of function FillScr_Single_Row


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; создаёт эффект сходящихся вертикальных створок

FillNT_with_Grey:			; CODE XREF: ROM:C16Fp
		LDA	#$11
		STA	Iterative_Byte	; Пустой серый тайл
		LDA	#0
		STA	Block_Y		; Начинаем заполнять экран с начала

-:					; CODE XREF: FillNT_with_Grey+1Fj
		JSR	NMI_Wait	; Задержка до отрисовки	экрана:	благодаря ей, игрок
					; успевает увидеть процесс заполнения экрана.
		LDY	Block_Y
		JSR	FillScr_Single_Row ; Заполняет один ряд	тайлов Iterative_Byte'ом
		LDA	#$1D		; Экран	240 пикселей (или $1E тайлов) в	высоту
		SEC
		SBC	Block_Y		; Заполняем экран по одному ряду тайлов	сверху и снизу,
					; создавая эффект сходящихся вертикальных створок
		TAY
		JSR	FillScr_Single_Row ; Заполняет один ряд	тайлов Iterative_Byte'ом
		INC	Block_Y
		LDA	Block_Y
		CMP	#$10		; $10 проходов заполняют $20 рядов тайлов
					; или $400 байт	(т.е. и	атрибуты тайловых карт тоже)
		BNE	-		; Задержка до отрисовки	экрана:	благодаря ей, игрок
					; успевает увидеть процесс заполнения экрана.
		RTS
; End of function FillNT_with_Grey


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Создаёт эффект расходящихся вертикальных створок

FillNT_with_Black:			; CODE XREF: ROM:C1ECp
		LDA	#0
		STA	Iterative_Byte	; Пустой чёрный	тайл
		LDA	#$F
		STA	Block_Y		; Начинаем заполнять экран с середины (от надписи 'STAGE XX')

-:					; CODE XREF: FillNT_with_Black+1Fj
		JSR	NMI_Wait	; Задержка до отрисовки	экрана:	благодаря ей, игрок
					; успевает увидеть процесс заполнения экрана.
		LDY	Block_Y
		JSR	FillScr_Single_Row ; Заполняет один ряд	тайлов Iterative_Byte'ом
		LDA	#$1D		; Экран	240 пикселей (или $1E тайлов) в	высоту
		SEC
		SBC	Block_Y		; Заполняем экран по одному ряду тайлов	сверху и снизу,
					; создавая эффект расходящихся вертикальных створок
		TAY
		JSR	FillScr_Single_Row ; Заполняет один ряд	тайлов Iterative_Byte'ом
		DEC	Block_Y
		LDA	Block_Y
		CMP	#$FF		; Доходим до конца экрана
		BNE	-		; Задержка до отрисовки	экрана:	благодаря ей, игрок
					; успевает увидеть процесс заполнения экрана.
		RTS
; End of function FillNT_with_Black


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Draw_Pts_Screen:			; CODE XREF: ROM:C256p
		JSR	Draw_Pts_Screen_Template ; Рисует общий	для всех уровней экран очков
		LDX	#$1E
		JSR	DrawTankColumn_XTimes ;	Рисует колонку из 4-х вражеских	танков X раз (задержка в Х фреймов)
		LDA	Enmy_KlledBy1P_Count
		CLC
		ADC	Enmy_KlledBy1P_Count+1
		CLC
		ADC	Enmy_KlledBy1P_Count+2
		CLC
		ADC	Enmy_KlledBy1P_Count+3
		STA	TotalEnmy_KilledBy1P
		LDA	Enmy_KlledBy2P_Count
		CLC
		ADC	Enmy_KlledBy2P_Count+1
		CLC
		ADC	Enmy_KlledBy2P_Count+2
		CLC
		ADC	Enmy_KlledBy2P_Count+3
		STA	TotalEnmy_KilledBy2P ; Вычисляем общее количество очков
		LDA	#0
		STA	Counter

DrawPtsScrn_NxtTank:			; CODE XREF: Draw_Pts_Screen+11Dj
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		JSR	Draw_Tank_Column ; Рисует колонку из 4-х вражеских танков
		LDX	#Temp_1PPts_String ; Строка при	подсчете очков за текущий вид танка
		JSR	Null_8Bytes_String
		LDX	#Temp_2PPts_String
		JSR	Null_8Bytes_String
		LDA	#0
		STA	BrickChar_X
		STA	BrickChar_Y

DrawPtsScrn_NxtCount:			; CODE XREF: Draw_Pts_Screen+10Dj
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		JSR	Draw_Tank_Column ; Рисует колонку из 4-х вражеских танков
		LDA	#0
		STA	EndCount_Flag	; Если 0, завершить подсчет очков для текущего врага
		LDX	Counter
		LDA	TankKill_Pts,X	; Количество очков за каждый тип убитого врага
		JSR	Num_To_NumString ; Переводит число из А	в строку NumString
		LDX	Counter
		LDA	Enmy_KlledBy1P_Count,X
		BEQ	++
		LDA	#1
		STA	Snd_PtsCount1
		STA	Snd_PtsCount2
		DEC	Enmy_KlledBy1P_Count,X
		INC	BrickChar_X
		LDX	#2
		JSR	Add_Score	; Прибавляет число из NumString	к очкам	игрока №Х
		LDA	#1
		STA	EndCount_Flag	; Если 0, завершить подсчет очков для текущего врага
		JSR	Add_Life	; Прибавляет одну жизнь, если игрок заработал 200К очков

++:					; CODE XREF: Draw_Pts_Screen+52j
		LDX	Counter
		LDA	Enmy_KlledBy2P_Count,X
		BEQ	+++
		LDA	#1
		STA	Snd_PtsCount1
		STA	Snd_PtsCount2
		DEC	Enmy_KlledBy2P_Count,X
		INC	BrickChar_Y
		LDX	#3
		JSR	Add_Score	; Прибавляет число из NumString	к очкам	игрока №Х
		LDA	#1
		STA	EndCount_Flag	; Если 0, завершить подсчет очков для текущего врага
		JSR	Add_Life	; Прибавляет одну жизнь, если игрок заработал 200К очков

+++:					; CODE XREF: Draw_Pts_Screen+70j
		LDY	#HiScore_1P_String+1
		LDX	#5
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDY	#9
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер
		LDX	#1
		LDY	#Temp_1PPts_String+1 ; Строка при подсчете очков за текущий вид	танка
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDA	Counter
		ASL	A
		CLC
		ADC	Counter
		CLC
		ADC	#$C
		TAY
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер
		LDX	Counter
		LDA	BrickChar_X
		JSR	ByteTo_Num_String
		LDX	#8
		LDY	#Num_String+1
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDA	Counter
		ASL	A
		CLC
		ADC	Counter
		CLC
		ADC	#$C
		TAY
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер
		LDA	CursorPos
		BEQ	+		; Если игрок один, очки	не выводим
		LDY	#HiScore_2P_String+1
		LDX	#$17
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDY	#9
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер
		LDX	#$13
		LDY	#Temp_2PPts_String+1
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDA	Counter
		ASL	A
		CLC
		ADC	Counter
		CLC
		ADC	#$C
		TAY
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер
		LDX	Counter
		LDA	BrickChar_Y
		JSR	ByteTo_Num_String
		LDX	#$E
		LDY	#Num_String+1
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDA	Counter
		ASL	A
		CLC
		ADC	Counter
		CLC
		ADC	#$C
		TAY
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер

+:					; CODE XREF: Draw_Pts_Screen+C7j
		LDX	#8
		JSR	DrawTankColumn_XTimes ;	Рисует колонку из 4-х вражеских	танков X раз (задержка в Х фреймов)

loc_CDDD:				; Если 0, завершить подсчет очков для текущего врага
		LDA	EndCount_Flag
		BEQ	++++
		JMP	DrawPtsScrn_NxtCount
; ───────────────────────────────────────────────────────────────────────────

++++:					; CODE XREF: Draw_Pts_Screen+10Bj
		INC	Counter
		LDA	Counter
		CMP	#4		; 4 типа танков
		BEQ	loc_CDF4
		LDX	#$14
		JSR	DrawTankColumn_XTimes ;	Рисует колонку из 4-х вражеских	танков X раз (задержка в Х фреймов)
		JMP	DrawPtsScrn_NxtTank
; ───────────────────────────────────────────────────────────────────────────

loc_CDF4:				; CODE XREF: Draw_Pts_Screen+116j
		LDX	#$1E
		JSR	DrawTankColumn_XTimes ;	Рисует колонку из 4-х вражеских	танков X раз (задержка в Х фреймов)
		LDA	TotalEnmy_KilledBy1P
		JSR	ByteTo_Num_String
		LDY	#Num_String+1
		LDX	#8
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDY	#$17
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер
		LDA	CursorPos
		BEQ	+++++
		LDA	TotalEnmy_KilledBy2P
		JSR	ByteTo_Num_String
		LDY	#Num_String+1
		LDX	#$E
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDY	#$17
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер

+++++:					; CODE XREF: Draw_Pts_Screen+138j
		LDX	#$F
		JSR	DrawTankColumn_XTimes ;	Рисует колонку из 4-х вражеских	танков X раз (задержка в Х фреймов)
		LDA	CursorPos
		BNE	DrawPtsScrn_CheckHQ
		JMP	End_Draw_Pts_Screen
; ───────────────────────────────────────────────────────────────────────────

DrawPtsScrn_CheckHQ:			; CODE XREF: Draw_Pts_Screen+152j
		LDA	HQ_Status	; 80=штаб цел, если ноль то уничтожен
		BNE	DrawPtsScrn_CheckNum
		JMP	End_Draw_Pts_Screen
; ───────────────────────────────────────────────────────────────────────────

DrawPtsScrn_CheckNum:			; CODE XREF: Draw_Pts_Screen+159j
		LDA	TotalEnmy_KilledBy2P
		CMP	TotalEnmy_KilledBy1P
		BCS	DrawPtsScrn_CheckLives
		LDA	Player1_Lives
		BEQ	DrawPtsScrn_CheckLives
		LDA	#0		; Рисуем под IP	слово BONUS! 1000PTS
					; Если количество очков	1 игрока больше, и
					; он остался жив
		JSR	Num_To_NumString ; Переводит число из А	в строку NumString
		LDX	#0
		JSR	Add_Score	; Прибавляет число из NumString	к очкам	игрока №Х
		LDY	#HiScore_1P_String+1
		LDX	#5
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDY	#9
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер
		LDY	#Num_String+1
		LDX	#1
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDY	#$1A
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер
		LDA	#>aBonus	; "BONUS\x15\xFF"
		STA	HighPtr_Byte
		LDA	#<aBonus	; "BONUS\x15\xFF"
		STA	LowPtr_Byte
		LDX	#3
		LDY	#$19
		JSR	String_to_Screen_Buffer
		LDA	#>aPts		; "PTS\xFF"
		STA	HighPtr_Byte
		LDA	#<aPts		; "PTS\xFF"
		STA	LowPtr_Byte
		LDX	#8
		LDY	#$1A
		JSR	String_to_Screen_Buffer
		LDA	#1
		STA	Snd_BonusPts
		STA	byte_31C
		STA	byte_31D
		JSR	Add_Life	; Прибавляет одну жизнь, если игрок заработал 200К очков
		JMP	End_Draw_Pts_Screen
; ───────────────────────────────────────────────────────────────────────────

DrawPtsScrn_CheckLives:			; CODE XREF: Draw_Pts_Screen+162j
					; Draw_Pts_Screen+166j
		LDA	TotalEnmy_KilledBy1P
		CMP	TotalEnmy_KilledBy2P
		BCS	End_Draw_Pts_Screen
		LDA	Player2_Lives
		BEQ	End_Draw_Pts_Screen
		LDA	#0		; Рисуем под IIP слово BONUS! 1000PTS
					; Если количество очков	2 игрока больше, и
					; он остался жив
		JSR	Num_To_NumString ; Переводит число из А	в строку NumString
		LDX	#1
		JSR	Add_Score	; Прибавляет число из NumString	к очкам	игрока №Х
		LDY	#HiScore_2P_String+1
		LDX	#$17
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDY	#9
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер
		LDY	#Num_String+1
		LDX	#$14
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDY	#$1A
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер
		LDA	#>aBonus	; "BONUS\x15\xFF"
		STA	HighPtr_Byte
		LDA	#<aBonus	; "BONUS\x15\xFF"
		STA	LowPtr_Byte
		LDX	#$16
		LDY	#$19
		JSR	String_to_Screen_Buffer
		LDA	#>aPts		; "PTS\xFF"
		STA	HighPtr_Byte
		LDA	#<aPts		; "PTS\xFF"
		STA	LowPtr_Byte
		LDX	#$1B
		LDY	#$1A
		JSR	String_to_Screen_Buffer
		LDA	#1
		STA	Snd_BonusPts	; Играем музыку	бонуса
		STA	byte_31C
		STA	byte_31D
		JSR	Add_Life	; Прибавляет одну жизнь, если игрок заработал 200К очков

End_Draw_Pts_Screen:			; CODE XREF: Draw_Pts_Screen+154j
					; Draw_Pts_Screen+15Bj
					; Draw_Pts_Screen+1B6j
					; Draw_Pts_Screen+1BDj
					; Draw_Pts_Screen+1C1j
		LDX	#Enmy_KlledBy2P_Count+1
		JSR	DrawTankColumn_XTimes ;	Рисует колонку из 4-х вражеских	танков X раз (задержка в Х фреймов)
		LDA	#0		; Начало загрузки экрана выбора	уровня
		STA	PPU_REG1_Stts
		STA	Char_Index_Base
		STA	byte_6B
		LDA	#0
		STA	BkgPal_Number
		RTS
; End of function Draw_Pts_Screen


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует общий для всех	уровней	экран очков

Draw_Pts_Screen_Template:		; CODE XREF: Draw_Pts_Screenp
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		LDA	#1
		STA	byte_6B
		LDA	#$24 ; '$'
		STA	PPU_Addr_Ptr
		LDA	#0
		STA	Scroll_Byte
		LDA	#10b
		STA	PPU_REG1_Stts
		LDA	#$30 ; '0'
		STA	Char_Index_Base	; Начало графики цифр
		LDA	#3
		STA	BkgPal_Number
		JSR	Screen_Off
		JSR	Null_NT_Buffer
		JSR	Fill_Attrib_Table ; Сохраняет определенные атрибуты в NT_Buffer
		JSR	Store_NT_Buffer_InVRAM ; Сбрасывает на экран содержимое	NT_Buffer
		JSR	Set_PPU
		LDA	#>aHikscore	; k=тире
		STA	HighPtr_Byte
		LDA	#<aHikscore	; k=тире
		STA	LowPtr_Byte
		LDX	#8
		LDY	#3
		JSR	String_to_Screen_Buffer
		LDY	#HiScore_String+1
		LDX	#$12
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDY	#3
		JSR	Save_Str_To_ScrBuffer ;	Выводим	Hi-score
		LDA	#>aStage	; "STAGE\xFF"
		STA	HighPtr_Byte
		LDA	#<aStage	; "STAGE\xFF"
		STA	LowPtr_Byte
		LDX	#$C
		LDY	#5
		JSR	String_to_Screen_Buffer
		LDA	Level_Number
		JSR	ByteTo_Num_String
		LDY	#Num_String+1
		LDX	#$E
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDY	#5
		JSR	Save_Str_To_ScrBuffer ;	Рисуем номер уровня
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		LDA	#>aKplayer	; 'I-PLAYER'
		STA	HighPtr_Byte
		LDA	#<aKplayer	; 'I-PLAYER'
		STA	LowPtr_Byte
		LDX	#3
		LDY	#7
		JSR	String_to_Screen_Buffer
		LDY	#HiScore_1P_String+1
		LDX	#5
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDY	#9
		JSR	Save_Str_To_ScrBuffer ;	Рисуем очки первого игрока
		LDA	#>Arrow_Left
		STA	HighPtr_Byte
		LDA	#<Arrow_Left
		STA	LowPtr_Byte
		LDX	#$E
		LDY	#$C
		JSR	String_to_Screen_Buffer	; Рисуем стрелку влево 4 раза
		LDA	#>Arrow_Left
		STA	HighPtr_Byte
		LDA	#<Arrow_Left
		STA	LowPtr_Byte
		LDX	#$E
		LDY	#$F
		JSR	String_to_Screen_Buffer
		LDA	#>Arrow_Left
		STA	HighPtr_Byte
		LDA	#<Arrow_Left
		STA	LowPtr_Byte
		LDX	#$E
		LDY	#$12
		JSR	String_to_Screen_Buffer
		LDA	#>Arrow_Left
		STA	HighPtr_Byte
		LDA	#<Arrow_Left
		STA	LowPtr_Byte
		LDX	#$E
		LDY	#$15
		JSR	String_to_Screen_Buffer
		LDA	CursorPos
		BEQ	Skip_ScndPlayerDraw ; Если игрок один, стрелку вправо и	II-Player не рисуем
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		LDA	#>a_kplayer	; 'II-PLAYER'
		STA	HighPtr_Byte
		LDA	#<a_kplayer	; 'II-PLAYER'
		STA	LowPtr_Byte
		LDX	#$15
		LDY	#7
		JSR	String_to_Screen_Buffer
		LDY	#HiScore_2P_String+1
		LDX	#$17
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDY	#9
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер
		LDA	#>Arrow_Right	; Используются при подсчёте очков
		STA	HighPtr_Byte
		LDA	#<Arrow_Right	; Используются при подсчёте очков
		STA	LowPtr_Byte
		LDX	#$11
		LDY	#$C
		JSR	String_to_Screen_Buffer
		LDA	#>Arrow_Right	; Используются при подсчёте очков
		STA	HighPtr_Byte
		LDA	#<Arrow_Right	; Используются при подсчёте очков
		STA	LowPtr_Byte
		LDX	#$11
		LDY	#$F
		JSR	String_to_Screen_Buffer
		LDA	#>Arrow_Right	; Используются при подсчёте очков
		STA	HighPtr_Byte
		LDA	#<Arrow_Right	; Используются при подсчёте очков
		STA	LowPtr_Byte
		LDX	#$11
		LDY	#$12
		JSR	String_to_Screen_Buffer
		LDA	#>Arrow_Right	; Используются при подсчёте очков
		STA	HighPtr_Byte
		LDA	#<Arrow_Right	; Используются при подсчёте очков
		STA	LowPtr_Byte
		LDX	#$11
		LDY	#$15
		JSR	String_to_Screen_Buffer

Skip_ScndPlayerDraw:			; CODE XREF: Draw_Pts_Screen_Template+C1j
		JSR	NMI_Wait	; Рисуем PTS перед выводом очков за каждый вид танка
		LDA	#>aPts		; "PTS\xFF"
		STA	HighPtr_Byte
		LDA	#<aPts		; "PTS\xFF"
		STA	LowPtr_Byte
		LDX	#8
		LDY	#$C
		JSR	String_to_Screen_Buffer
		LDA	#>aPts		; "PTS\xFF"
		STA	HighPtr_Byte
		LDA	#<aPts		; "PTS\xFF"
		STA	LowPtr_Byte
		LDX	#8
		LDY	#$F
		JSR	String_to_Screen_Buffer
		LDA	#>aPts		; "PTS\xFF"
		STA	HighPtr_Byte
		LDA	#<aPts		; "PTS\xFF"
		STA	LowPtr_Byte
		LDX	#8
		LDY	#$12
		JSR	String_to_Screen_Buffer
		LDA	#>aPts		; "PTS\xFF"
		STA	HighPtr_Byte
		LDA	#<aPts		; "PTS\xFF"
		STA	LowPtr_Byte
		LDX	#8
		LDY	#$15
		JSR	String_to_Screen_Buffer
		LDA	CursorPos
		BEQ	Skip_ScndPlayerPtsDraw ; Если игрок один, PTS не рисуем
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		LDA	#>aPts		; "PTS\xFF"
		STA	HighPtr_Byte
		LDA	#<aPts		; "PTS\xFF"
		STA	LowPtr_Byte
		LDX	#$1A
		LDY	#$C
		JSR	String_to_Screen_Buffer
		LDA	#>aPts		; "PTS\xFF"
		STA	HighPtr_Byte
		LDA	#<aPts		; "PTS\xFF"
		STA	LowPtr_Byte
		LDX	#$1A
		LDY	#$F
		JSR	String_to_Screen_Buffer
		LDA	#>aPts		; "PTS\xFF"
		STA	HighPtr_Byte
		LDA	#<aPts		; "PTS\xFF"
		STA	LowPtr_Byte
		LDX	#$1A
		LDY	#$12
		JSR	String_to_Screen_Buffer
		LDA	#>aPts		; "PTS\xFF"
		STA	HighPtr_Byte
		LDA	#<aPts		; "PTS\xFF"
		STA	LowPtr_Byte
		LDX	#$1A
		LDY	#$15
		JSR	String_to_Screen_Buffer

Skip_ScndPlayerPtsDraw:			; CODE XREF: Draw_Pts_Screen_Template+15Ej
		JSR	NMI_Wait	; Рисуем Total и линию
		LDA	#>aLine		; Полоска над 'TOTAL' при подсчёте очков
		STA	HighPtr_Byte
		LDA	#<aLine		; Полоска над 'TOTAL' при подсчёте очков
		STA	LowPtr_Byte
		LDX	#$C
		LDY	#$16
		JSR	String_to_Screen_Buffer
		LDA	#>aTotal	; "TOTAL\xFF"
		STA	HighPtr_Byte
		LDA	#<aTotal	; "TOTAL\xFF"
		STA	LowPtr_Byte
		LDX	#6
		LDY	#$17
		JSR	String_to_Screen_Buffer
		RTS
; End of function Draw_Pts_Screen_Template


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует колонку из 4-х	вражеских танков

Draw_Tank_Column:			; CODE XREF: Draw_Pts_Screen+29p
					; Draw_Pts_Screen+3Fp
					; DrawTankColumn_XTimes+5p
		LDA	#2
		STA	TSA_Pal		; Танки	будут на спрайтовой палитре 2
		LDY	#$64 ; 'd'      ; Будет меняться только Y и вид танка (начальный индекс тайла в Pattern Table)
		LDA	#$80 ; 'А'      ; 1 вид танка врага
		JSR	Draw_Spr_InColumn ; Рисует 16х16 спрайт	с фиксированной	координатой Х
		LDY	#$7C ; '|'
		LDA	#$A0 ; 'а'      ; 2 вид танка врага
		JSR	Draw_Spr_InColumn ; Рисует 16х16 спрайт	с фиксированной	координатой Х
		LDY	#$94 ; 'Ф'
		LDA	#$C0 ; '└'      ; 3 вид танка врага
		JSR	Draw_Spr_InColumn ; Рисует 16х16 спрайт	с фиксированной	координатой Х
		LDY	#$AC ; 'м'
		LDA	#$E0 ; 'р'      ; 4 вид танка врага
		JSR	Draw_Spr_InColumn ; Рисует 16х16 спрайт	с фиксированной	координатой Х
		RTS
; End of function Draw_Tank_Column


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Сохраняет определенные атрибуты в NT_Buffer

Fill_Attrib_Table:			; CODE XREF: Draw_Pts_Screen_Template+21p
		LDA	#$50 ; 'P'
		STA	NT_Buffer+$3C0
		STA	NT_Buffer+$3C1
		STA	NT_Buffer+$3C2
		STA	NT_Buffer+$3C3
		STA	NT_Buffer+$3C8
		STA	NT_Buffer+$3C9
		STA	NT_Buffer+$3CA
		STA	NT_Buffer+$3CD
		STA	NT_Buffer+$3CE
		STA	NT_Buffer+$3CF
		LDA	#$A0
		STA	NT_Buffer+$3C4
		STA	NT_Buffer+$3C5
		STA	NT_Buffer+$3C6
		STA	NT_Buffer+$3C7
		LDA	#$A
		STA	NT_Buffer+$3D0
		STA	NT_Buffer+$3D1
		STA	NT_Buffer+$3D2
		STA	NT_Buffer+$3D5
		STA	NT_Buffer+$3D6
		STA	NT_Buffer+$3D7
		LDA	#5
		STA	NT_Buffer+$3F0
		STA	NT_Buffer+$3F1
		STA	NT_Buffer+$3F2
		STA	NT_Buffer+$3F5
		STA	NT_Buffer+$3F6
		STA	NT_Buffer+$3F7
		RTS
; End of function Fill_Attrib_Table


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует 16х16 спрайт с	фиксированной координатой Х

Draw_Spr_InColumn:			; CODE XREF: Draw_Tank_Column+8p
					; Draw_Tank_Column+Fp
					; Draw_Tank_Column+16p
					; Draw_Tank_Column+1Dp
		STA	Spr_TileIndex
		LDX	#$81
		JSR	Draw_WholeSpr	; Cбрасывает в спрайтовый буффер спрайт	16х16. (в Х, Y - координаты)
		RTS
; End of function Draw_Spr_InColumn


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Прибавляет одну жизнь, если игрок заработал 200К очков

Add_Life:				; CODE XREF: Draw_Pts_Screen+69p
					; Draw_Pts_Screen+87p
					; Draw_Pts_Screen+1B3p
					; Draw_Pts_Screen+20Ep
					; BulletToTank_Impact_Handle+11Bp
					; Bonus_Handle+4Ep
		LDA	HQ_Status	; 80=штаб цел, если ноль то уничтожен
		CMP	#$80
		BNE	End_Add_Life	; Если штаб разрушен, не проверяем очки
		LDA	AddLife_Flag	;  <>0 - игрок получал дополнительную жизнь
		BNE	+
		LDA	HiScore_1P_String+2
		CMP	#2
		BCC	+
		INC	Player1_Lives
		INC	AddLife_Flag	;  <>0 - игрок получал дополнительную жизнь
		JMP	Play_SndAncillaryLife
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: Add_Life+8j Add_Life+Ej
		LDA	CursorPos
		BEQ	End_Add_Life	; Если игрок один, не проверяем	очки второго
		LDA	AddLife_Flag+1	;  <>0 - игрок получал дополнительную жизнь
		BNE	End_Add_Life
		LDA	HiScore_2P_String+2
		CMP	#2
		BCC	End_Add_Life
		INC	Player2_Lives
		INC	AddLife_Flag+1	;  <>0 - игрок получал дополнительную жизнь

Play_SndAncillaryLife:			; CODE XREF: Add_Life+14j
		LDA	#1
		STA	Snd_Ancillary_Life1 ; Проигрываем звук
		STA	Snd_Ancillary_Life2

End_Add_Life:				; CODE XREF: Add_Life+4j Add_Life+19j
					; Add_Life+1Dj	Add_Life+23j
		RTS
; End of function Add_Life


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Null_Upper_NT:				; CODE XREF: BonusLevel_ButtonCheck:New_Scrollp
					; BonusLevel_ButtonCheck+28p
		JSR	Screen_Off
		LDA	#3
		STA	BkgPal_Number
		LDA	#$1C
		STA	PPU_Addr_Ptr
		JSR	Null_NT_Buffer
		JSR	Store_NT_Buffer_InVRAM ; Сбрасывает на экран содержимое	NT_Buffer
		JSR	Set_PPU
		RTS
; End of function Null_Upper_NT


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Draw_TitleScreen:			; CODE XREF: ROM:BEGINp
		JSR	Screen_Off
		LDA	#$24 ; '$'
		STA	PPU_Addr_Ptr
		JSR	Null_NT_Buffer
		LDX	#$1A
		STX	Block_X
		LDY	#$2E ; '.'
		STY	Block_Y
		LDA	#>aBattle	; Загрузка указателя на	string 'BATTLE'
		STA	HighStrPtr_Byte
		LDA	#<aBattle	; "BATTLE\xFF"
		STA	LowStrPtr_Byte
		JSR	Draw_BrickStr
		LDX	#$3C ; '<'
		STX	Block_X
		LDY	#$56 ; 'V'
		STY	Block_Y
		LDA	#>aCity:	; Загрузка указателя на	string 'CITY'
		STA	HighStrPtr_Byte
		LDA	#<aCity:	; "CITY\xFF"
		STA	LowStrPtr_Byte
		JSR	Draw_BrickStr
		JSR	Store_NT_Buffer_InVRAM ; Сбрасывает на экран содержимое	NT_Buffer
		JSR	Set_PPU
		LDA	#$30		; Цифры	в знакогенераторе начинаются по	адресу $30 (не ASCII)
		STA	Char_Index_Base
		LDA	#>aK		; Загрузка указателя на	string 'I-'
		STA	HighPtr_Byte
		LDA	#<aK		; Для экрана подсчёта очков: 'I-'
		STA	LowPtr_Byte
		LDX	#2		; Координата X будущей надписи
		LDY	#3		; Координата Y будущей надписи
		JSR	String_to_Screen_Buffer
		LDY	#$16
		LDX	#4
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDY	#3
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер
		LDA	#>aHik		; Загрузка указателя на	string 'HI-'
		STA	HighPtr_Byte
		LDA	#<aHik		; HI-
		STA	LowPtr_Byte
		LDX	#$B
		LDY	#3
		JSR	String_to_Screen_Buffer
		LDY	#$3E ; '>'
		LDX	#$E
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDY	#3
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер
		LDA	CursorPos
		BEQ	+
		LDA	#>a_k		; Если курсор на момент	RESET не был на	позиции	1 player,
					; значит нужно отрисовать данные об очках второго игрока.
					; (интересно, что это справедливо даже для construction)
		STA	HighPtr_Byte
		LDA	#<a_k		; Для экрана подсчёта очков: 'II-'
		STA	LowPtr_Byte
		LDX	#$15
		LDY	#3
		JSR	String_to_Screen_Buffer
		LDY	#$1E
		LDX	#$17
		JSR	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
		LDY	#3
		JSR	Save_Str_To_ScrBuffer ;	Сохраняет строку в строковый буффер

+:					; CODE XREF: Draw_TitleScreen+72j
		LDA	#0
		STA	Char_Index_Base
		JSR	NMI_Wait	; Рисуем нижнюю	часть титульника:
					;
		LDA	#>a1Player	; "1 PLAYER\xFF"
		STA	HighPtr_Byte
		LDA	#<a1Player	; "1 PLAYER\xFF"
		STA	LowPtr_Byte
		LDX	#$B
		LDY	#$11
		JSR	String_to_Screen_Buffer
		LDA	#>a2Players	; "2 PLAYERS\xFF"
		STA	HighPtr_Byte
		LDA	#<a2Players	; "2 PLAYERS\xFF"
		STA	LowPtr_Byte
		LDX	#$B
		LDY	#$13
		JSR	String_to_Screen_Buffer
		LDA	#>aConstruction	; "CONSTRUCTION\xFF"
		STA	HighPtr_Byte
		LDA	#<aConstruction	; "CONSTRUCTION\xFF"
		STA	LowPtr_Byte
		LDX	#$B
		LDY	#$15
		JSR	String_to_Screen_Buffer
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		LDA	#>aNAMCOT	; Часть	тайловой карты для надписи NAMCOT
		STA	HighPtr_Byte
		LDA	#<aNAMCOT	; Часть	тайловой карты для надписи NAMCOT
		STA	LowPtr_Byte
		LDX	#$B
		LDY	#$17
		JSR	String_to_Screen_Buffer
		LDA	#>Copyrights	; Кстати, в начале РОМа	первая цифра не	1980 а 1981
		STA	HighPtr_Byte
		LDA	#<Copyrights	; Кстати, в начале РОМа	первая цифра не	1980 а 1981
		STA	LowPtr_Byte
		LDX	#4
		LDY	#$19
		JSR	String_to_Screen_Buffer
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		LDA	#>aAllRightsReserved ; "ALL RIGHTS RESERVED\xFF"
		STA	HighPtr_Byte
		LDA	#<aAllRightsReserved ; "ALL RIGHTS RESERVED\xFF"
		STA	LowPtr_Byte
		LDX	#6
		LDY	#$1B
		JSR	String_to_Screen_Buffer
		RTS
; End of function Draw_TitleScreen


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует колонку из 4-х	вражеских танков X раз (задержка в Х фреймов)

DrawTankColumn_XTimes:			; CODE XREF: Draw_Pts_Screen+5p
					; Draw_Pts_Screen+106p
					; Draw_Pts_Screen+11Ap
					; Draw_Pts_Screen+122p
					; Draw_Pts_Screen+14Dp
					; Draw_Pts_Screen+213p
					; DrawTankColumn_XTimes+Bj
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		TXA
		PHA
		JSR	Draw_Tank_Column ; Рисует колонку из 4-х вражеских танков
		PLA
		TAX
		DEX
		BNE	DrawTankColumn_XTimes ;	Рисует колонку из 4-х вражеских	танков X раз (задержка в Х фреймов)
		RTS
; End of function DrawTankColumn_XTimes

; ───────────────────────────────────────────────────────────────────────────
;Далее следуют все строки и всё, что выводится стрингами:
;
;
aWrittenBy:	.BYTE 'WRITTEN BY',$FF  ; DATA XREF: Show_Secret_Msg+2Et
					; Show_Secret_Msg+32t
					; Secret Message
aNAMCOT:	.BYTE '`abcdefgh',$FF   ; DATA XREF: Draw_TitleScreen+C6t
					; Draw_TitleScreen+CAt
					; Часть	тайловой карты для надписи NAMCOT
aBattle:	.BYTE 'BATTLE',$FF      ; DATA XREF: Load_DemoLevel+36t
					; Load_DemoLevel+3At
					; Draw_TitleScreen+12t
					; Draw_TitleScreen+16t
aCity:		.BYTE 'CITY',$FF        ; DATA XREF: Load_DemoLevel+49t
					; Load_DemoLevel+4Dt
					; Draw_TitleScreen+25t
					; Draw_TitleScreen+29t
aK:		.BYTE $5E,$6B,$FF	; DATA XREF: Draw_TitleScreen+3At
					; Draw_TitleScreen+3Et
					; Для экрана подсчёта очков: 'I-'
a_k:		.BYTE $5F,$6B,$FF	; DATA XREF: Draw_TitleScreen+74t
					; Draw_TitleScreen+78t
					; Для экрана подсчёта очков: 'II-'
I_p:		.BYTE $58,$13,$FF	; DATA XREF: Draw_IPt Draw_IP+4t
					; надпись IP прямо над жизнями игроков
II_p:		.BYTE $5A,$13,$FF	; DATA XREF: Draw_IP:Draw_IIPt
					; Draw_IP+1Dt
					; надпись IIP прямо над	жизнями	игроков
aHik:		.BYTE 'HIk',$FF         ; DATA XREF: Draw_TitleScreen+55t
					; Draw_TitleScreen+59t
					; HI-
aHiscore:	.BYTE 'HISCORE',$FF     ; DATA XREF: Draw_Record_HiScore+18t
					; Draw_Record_HiScore+1Ct
					; Выводится в виде кирпичной надписи, если рекорд
aHikscore:	.BYTE 'HIkSCORE',$FF    ; DATA XREF: Draw_Pts_Screen_Template+2At
					; Draw_Pts_Screen_Template+2Et
					; k=тире
a1Player:	.BYTE '1 PLAYER',$FF    ; DATA XREF: Draw_TitleScreen+96t
					; Draw_TitleScreen+9At
a2Players:	.BYTE '2 PLAYERS',$FF   ; DATA XREF: Draw_TitleScreen+A5t
					; Draw_TitleScreen+A9t
aKplayer:	.BYTE '^kPLAYER',$FF    ; DATA XREF: Draw_Pts_Screen_Template+68t
					; Draw_Pts_Screen_Template+6Ct
					; 'I-PLAYER'
a_kplayer:	.BYTE '_kPLAYER',$FF    ; DATA XREF: Draw_Pts_Screen_Template+C6t
					; Draw_Pts_Screen_Template+CAt
					; 'II-PLAYER'
aConstruction:	.BYTE 'CONSTRUCTION',$FF ; DATA XREF: Draw_TitleScreen+B4t
					; Draw_TitleScreen+B8t
Copyrights:	.BYTE '@ 1980 1985 NAMCO LTDi',$FF ; DATA XREF: Draw_TitleScreen+D5t
					; Draw_TitleScreen+D9t
					; Кстати, в начале РОМа	первая цифра не	1980 а 1981
aThisProgramWas:.BYTE 'THIS PROGRAM WAS',$FF ; DATA XREF: Show_Secret_Msg+1Ct
					; Show_Secret_Msg+20t
					; Secret Message
aAllRightsReserved:.BYTE 'ALL RIGHTS RESERVED',$FF ; DATA XREF: Draw_TitleScreen+E7t
					; Draw_TitleScreen+EBt
aOpenkreach:	.BYTE 'OPENkREACH',$FF  ; DATA XREF: Show_Secret_Msg+40t
					; Show_Secret_Msg+44t
					; Secret Message
aDot:		.BYTE $69,$FF		; DATA XREF: Show_Secret_Msg+64t
					; Show_Secret_Msg+68t
					; Show_Secret_Msg+76t
					; Show_Secret_Msg+7At
					; Show_Secret_Msg+88t
					; Show_Secret_Msg+8Ct
					; Show_Secret_Msg+9At
					; Show_Secret_Msg+9Et
					; Show_Secret_Msg+ACt
					; Show_Secret_Msg+B0t
					; Secret Message (.)
PlayerLives_Icon:.BYTE $14,$FF		; DATA XREF: Draw_Player_Lives+At
					; Draw_Player_Lives+Et
					; Draw_Player_Lives:Draw_2P_Livest
					; Draw_Player_Lives+2Et
					; Значок жизней	игрока
aGame:		.BYTE 'GAME',$FF        ; DATA XREF: Draw_Brick_GameOver+18t
					; Draw_Brick_GameOver+1Ct
					; Выводится в виде кирпичной надписи на	весь экран
aOver:		.BYTE 'OVER',$FF        ; DATA XREF: Draw_Brick_GameOver+2Bt
					; Draw_Brick_GameOver+2Ft
aWhoLovesNoriko:.BYTE 'WHO LOVES NORIKO',$FF ; DATA XREF: Show_Secret_Msg+52t
					; Show_Secret_Msg+56t
					; Secret Message
aPts:		.BYTE 'PTS',$FF         ; DATA XREF: Draw_Pts_Screen+199t
					; Draw_Pts_Screen+19Dt
					; Draw_Pts_Screen+1F4t
					; Draw_Pts_Screen+1F8t
					; Draw_Pts_Screen_Template+120t
					; Draw_Pts_Screen_Template+124t
					; Draw_Pts_Screen_Template+12Ft
					; Draw_Pts_Screen_Template+133t
					; Draw_Pts_Screen_Template+13Et
					; Draw_Pts_Screen_Template+142t
					; Draw_Pts_Screen_Template+14Dt
					; Draw_Pts_Screen_Template+151t
					; Draw_Pts_Screen_Template+163t
					; Draw_Pts_Screen_Template+167t
					; Draw_Pts_Screen_Template+172t
					; Draw_Pts_Screen_Template+176t
					; Draw_Pts_Screen_Template+181t
					; Draw_Pts_Screen_Template+185t
					; Draw_Pts_Screen_Template+190t
					; Draw_Pts_Screen_Template+194t
Reinforcement_Icons:.BYTE $6A,$6A,$FF	; DATA XREF: ReinforceToRAM+3t
					; ReinforceToRAM+7t
					; Составляют лист оставшихся врагов
LevelFlag_Upper_Icons:.BYTE $6C,$FC,$FF	; DATA XREF: Draw_LevelFlag+3t
					; Draw_LevelFlag+7t
					; Флажок над номером уровня в правой части экрана
LevelFlag_Lower_Icons:.BYTE $6D,$FD,$FF	; DATA XREF: Draw_LevelFlag+12t
					; Draw_LevelFlag+16t
Empty_Tile:	.BYTE $11,$FF		; DATA XREF: Draw_EmptyTile+3t
					; Draw_EmptyTile+7t
					; Подменяет значок врага, когда	тот рождается

;Штаб отрисовывается стрингами
Normal_HQ_TSA:	.BYTE	0,  0,	0,  0,	0,  0,$FF
NormalLine2:	.BYTE	0, $F, $F, $F, $F,  0,$FF ; DATA XREF: DraW_Normal_HQ+Ft
					; DraW_Normal_HQ+13t
NormalLine3:	.BYTE	0, $F,$C8,$CA, $F,  0,$FF ; DATA XREF: DraW_Normal_HQ+1Et
					; DraW_Normal_HQ+22t
Normalline4:	.BYTE	0, $F,$C9,$CB, $F,  0,$FF ; DATA XREF: DraW_Normal_HQ+2Dt
					; DraW_Normal_HQ+31t
Armour_HQ_TSA_Line1:.BYTE   0,	0,  0,	0,  0,	0,$FF ;	DATA XREF: Draw_ArmourHQt
					; Draw_ArmourHQ+4t
Armour_HQ_TSA_Line2:.BYTE   0,$10,$10,$10,$10,	0,$FF ;	DATA XREF: Draw_ArmourHQ+Ft
					; Draw_ArmourHQ+13t
Armour_HQ_TSA_Line3:.BYTE   0,$10,$C8,$CA,$10,	0,$FF ;	DATA XREF: Draw_ArmourHQ+1Et
					; Draw_ArmourHQ+22t
Armour_HQ_TSA_Line4:.BYTE   0,$10,$C9,$CB,$10,	0,$FF ;	DATA XREF: Draw_ArmourHQ+2Dt
					; Draw_ArmourHQ+31t

Naked_HQ_TSA_FirstLine:.BYTE $C8,$CA,$FF ; DATA	XREF: Draw_Naked_HQt
					; Draw_Naked_HQ+4t
Naked_HQ_TSA_SecndLine:.BYTE $C9,$CB,$FF ; DATA	XREF: Draw_Naked_HQ+Ft
					; Draw_Naked_HQ+13t
DestroyedHQ_TSA_Line1:.BYTE $CC,$CE,$FF	; DATA XREF: Draw_Destroyed_HQt
					; Draw_Destroyed_HQ+4t
					; Draw_Destroyed_HQ+Ft
DestroyedHQ_TSA_Line2:.BYTE $CD,$CF,$FF	; DATA XREF: Draw_Destroyed_HQ+Ft
					; Draw_Destroyed_HQ+13t
Arrow_Left:	.BYTE $5B,$FF		; DATA XREF: Draw_Pts_Screen_Template+83t
					; Draw_Pts_Screen_Template+87t
					; Draw_Pts_Screen_Template+92t
					; Draw_Pts_Screen_Template+96t
					; Draw_Pts_Screen_Template+A1t
					; Draw_Pts_Screen_Template+A5t
					; Draw_Pts_Screen_Template+B0t
					; Draw_Pts_Screen_Template+B4t
Arrow_Right:	.BYTE $5D,$FF		; DATA XREF: Draw_Pts_Screen_Template+E1t
					; Draw_Pts_Screen_Template+E5t
					; Draw_Pts_Screen_Template+F0t
					; Draw_Pts_Screen_Template+F4t
					; Draw_Pts_Screen_Template+FFt
					; Draw_Pts_Screen_Template+103t
					; Draw_Pts_Screen_Template+10Et
					; Draw_Pts_Screen_Template+112t
					; Используются при подсчёте очков
aTotal:		.BYTE 'TOTAL',$FF       ; DATA XREF: Draw_Pts_Screen_Template+1B1t
					; Draw_Pts_Screen_Template+1B5t
aLine:		.BYTE $5C,$5C,$5C,$5C,$5C,$5C,$5C,$5C,$FF
					; DATA XREF: Draw_Pts_Screen_Template+1A2t
					; Draw_Pts_Screen_Template+1A6t
					; Полоска над 'TOTAL' при подсчёте очков
aBonus:		.BYTE 'BONUS',$15,$FF   ; DATA XREF: Draw_Pts_Screen+18At
					; Draw_Pts_Screen+18Et
					; Draw_Pts_Screen+1E5t
					; Draw_Pts_Screen+1E9t
					; Draw_Pts_Screen+1F4t
aStage:		.BYTE 'STAGE',$FF       ; DATA XREF: Draw_Pts_Screen_Template+45t
					; Draw_Pts_Screen_Template+49t
TankKill_Pts:	.BYTE $10, $20,	$30, $40 ; DATA	XREF: Draw_Pts_Screen+48r
					; Количество очков за каждый тип убитого врага
;Величины приращений координат надписи GameOver	и танка	в Construction:
;по 4 байта на X u Y - дают возможность	производить
;скроллинг в любом направлении
;В случае танка, это четыре возможных направления движения:
;вверх,	влево, вниз, вправо
;(Отрицательные	числа приведут к скроллингу в обратном направлении)
;Такие же массивы расположены по адресам $E46C,	$EA49
Coord_X_Increment:.BYTE	0, $FF,	0, 1	; DATA XREF: Move_Tank+33r
					; GameOver_Str_Move_Handle+26r
Coord_Y_Increment:.BYTE	$FF, 0,	1, 0	; DATA XREF: Move_Tank+3Fr
					; GameOver_Str_Move_Handle+30r
;
;Заглушка до круглого числа:
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF
; ───────────────────────────────────────────────────────────────────────────

NMI:					; DATA XREF: ROM:FFFAo
		PHA
		TXA
		PHA
		TYA
		PHA
		PHP			; Стандартное начало NMI
		LDA	#0
		STA	PPU_SPR_ADDR	; Инициализация	для записи в нулевой адрес SPR OAM
		LDA	#2
		STA	SPR_DMA		; Спрайтовый буффер будет по адресу $200
		LDA	PPU_STATUS	; Reset	VBlank Occurance
		JSR	Update_Screen	; Сборос из Screen_Buffer в память PPU
		LDA	BkgPal_Number
		BMI	Skip_PalLoad
		JSR	Load_Bkg_Pal

Skip_PalLoad:				; CODE XREF: ROM:D418j
		LDA	PPU_REG1_Stts
		ORA	#10110000b	; Типичная для BC конфигурация PPU (Спрайты всегда 8х16	(ширина	х высота))
		STA	PPU_CTRL_REG1	; PPU Control Register #1 (W)
		LDA	#0		; Обработка скроллинга
		STA	PPU_SCROLL_REG	; VRAM Address Register	#1 (W2)
		LDA	Scroll_Byte
		STA	PPU_SCROLL_REG	; VRAM Address Register	#1 (W2)
		LDA	#00011110b	; Включаем бэкграунд и спрайты
		STA	PPU_CTRL_REG2	; PPU Control Register #2 (W)
		JSR	Read_Joypads
		JSR	Spr_Invisible	; Вывод	Y координат спрайтов в $F0
		JSR	Play_Sound	; аналогично Play в NSF	формате
		INC	Frame_Counter
		LDA	Frame_Counter
		AND	#63		; В одной секунде 64 фрейма?
		BNE	End_Interrupt
		INC	Seconds_Counter

End_Interrupt:				; CODE XREF: ROM:D442j
		PLP
		PLA
		TAY
		PLA
		TAX
		PLA
		RTI

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; ГПСЧ,	в А случайное число

Get_Random_A:				; CODE XREF: ROM:DC8Cp	ROM:DD17p
					; ROM:Get_RandomStatusp ROM:DD4Fp
					; Load_AI_Status:Load_AIStatus_GetRandomp
					; Get_RandomDirection+12p
					; Make_Enemy_Shot+Fp
					; Bonus_Appear_Handle:-p
					; Bonus_Appear_Handle+Fp
					; Bonus_Appear_Handle+28p
		TXA
;ГПСЧ не основан на законах распределения,
;поэтому выдает	неслучайные числа. Использует два
;байта:	Random_Hi зависит в том	числе от таймера секунд,
;Random_Lo - основной байт
		PHA			; Сохраняем Х
		LDA	Random_Lo
		ASL	A
		ASL	A
		ASL	A
		SEC
		SBC	Random_Lo
		CLC
		ADC	Seconds_Counter
		INC	Random_Hi
		LDX	Random_Hi
		ADC	Temp,X		; Выбирается случайная ячейка из Zero Page
					; с произвольным значением для большей "случайности"
		STA	Random_Lo
		PLA
		TAX			; Вытаскиваем Х
		LDA	Random_Lo
		RTS
; End of function Get_Random_A


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Set_PPU:				; CODE XREF: ROM:C092p	ROM:C0BBp
					; Clear_NT+9p Load_DemoLevel+57p
					; Draw_Record_HiScore+29p
					; Show_Secret_Msg+13p
					; Show_Secret_Msg+C7p
					; Draw_Brick_GameOver+39p
					; Draw_Brick_GameOver+62p
					; Draw_Pts_Screen_Template+27p
					; Null_Upper_NT+11p
					; Draw_TitleScreen+33p
		JSR	VBlank_Wait
		LDA	#10110000b
		STA	PPU_CTRL_REG1	; Фоновый знакогенератор - второй;
					; спрайты 8х16;
					; выполнять NMI	при VBlank'е
		RTS
; End of function Set_PPU


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Screen_Off:				; CODE XREF: ROM:C0B2p	Clear_NTp
					; Load_DemoLevel+2Bp
					; Draw_Record_HiScorep
					; Show_Secret_Msgp Show_Secret_Msg+BEp
					; Draw_Brick_GameOverp
					; Draw_Brick_GameOver:End_Draw_Brick_GameOverp
					; Draw_Pts_Screen_Template+1Bp
					; Null_Upper_NTp Draw_TitleScreenp
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		LDA	#00010000b
		STA	PPU_CTRL_REG1	; Для бэкграунда назначен второй знакогенератор,
					; а для	спрайтов - первый
					;
		LDA	#00000110b
		STA	PPU_CTRL_REG2	; Фон и	спрайты	отключены
		RTS
; End of function Screen_Off


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Null_NT_Buffer:				; CODE XREF: Clear_NT+3p
					; Draw_Record_HiScore+Dp
					; Show_Secret_Msg+Dp
					; Draw_Brick_GameOver+Dp
					; Draw_Brick_GameOver+5Cp
					; Draw_Pts_Screen_Template+1Ep
					; Null_Upper_NT+Bp Draw_TitleScreen+7p
					; Reset_ScreenStuff+1Bp
		LDA	#0
		TAX

-:					; CODE XREF: Null_NT_Buffer+10j
		STA	NT_Buffer,X
		STA	NT_Buffer+$100,X
		STA	NT_Buffer+$200,X
		STA	NT_Buffer+$300,X
		INX
		BNE	-
		RTS
; End of function Null_NT_Buffer


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Reset_ScreenStuff:			; CODE XREF: ROM:C089p
		LDA	#0
		STA	Char_Index_Base
		STA	byte_6B
		STA	ScrBuffer_Pos
		STA	SprBuffer_Position
		STA	Pause_Flag
		LDA	#$FF
		STA	BkgPal_Number
		JSR	Load_Pals
		LDA	#4		; Спрайтовый Буффер заполняем через 4 байта
		STA	Gap
		LDA	#$20 ; ' '
		STA	Spr_Attrib
		JSR	Null_NT_Buffer
		JSR	Spr_Invisible	; Уводим все спрайты за	экран
		LDX	#HiScore_1P_String
		JSR	Null_8Bytes_String
		LDX	#HiScore_2P_String
		JSR	Null_8Bytes_String
		JSR	StaffStr_Check	; 0=в RAM нет строки StaffString
					; 1=в RAM есть строка StaffString
		BNE	HotBoot		; Очистка обеих	тайловых карт
		LDX	#HiScore_String
		JSR	Null_8Bytes_String
		LDA	#2
		STA	HiScore_String+2 ; Записываем в	HiScore	число 20000
		LDA	#0
		STA	CursorPos	; Устанавливаем	курсор на надпись '1 player'

HotBoot:				; CODE XREF: Reset_ScreenStuff+2Ej
		LDA	#$1C		; Очистка обеих	тайловых карт
		STA	PPU_Addr_Ptr	; 1c+04=20 (запись в $2000 VRAM)[NT#1]
		JSR	Store_NT_Buffer_InVRAM ; Сбрасывает на экран содержимое	NT_Buffer
		LDA	#$24 ; '$'
		STA	PPU_Addr_Ptr	; 24+4=28 (в 2800)[NT#2]
		JSR	Store_NT_Buffer_InVRAM ; Сбрасывает на экран содержимое	NT_Buffer
		JSR	StaffStr_Store	; Запоминаем, что игра была уже	включена
					; (на случай перезагрузки RESET'ом)
		JSR	Sound_Stop	; Останавливаем	звук, включаем каналы и	т.п. (аналогично Load в	NSF формате)
		RTS
; End of function Reset_ScreenStuff


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Запоминаем, что игра была уже	включена
; (на случай перезагрузки RESET'ом)

StaffStr_Store:				; CODE XREF: Reset_ScreenStuff+4Bp
		LDX	#$F

-:					; CODE XREF: StaffStr_Store+9j
		LDA	StaffString,X	; "RYOUITI OOKUBO  TAKEFUMI HYOUDOUJUNKO O"...
		STA	StaffString_RAM,X
		DEX
		BPL	-
		RTS
; End of function StaffStr_Store


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Если этой строки нет в RAM, то игра стартует первый раз
; (включена кнопкой POWER)

StaffStr_Check:				; CODE XREF: Reset_ScreenStuff+2Bp
		LDX	#$F

-:					; CODE XREF: StaffStr_Check+Bj
		LDA	StaffString_RAM,X
		CMP	StaffString,X	; "RYOUITI OOKUBO  TAKEFUMI HYOUDOUJUNKO O"...
		BNE	ColdBoot
		DEX
		BPL	-
		LDA	#1
		RTS
; ───────────────────────────────────────────────────────────────────────────

ColdBoot:				; CODE XREF: StaffStr_Check+8j
		LDA	#0
		RTS
; End of function StaffStr_Check


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Load_Pals:				; CODE XREF: Reset_ScreenStuff+10p
		JSR	VBlank_Wait
		JSR	Spr_Pal_Load
		LDA	#0		; Номер	16цветной FrameПалитры
		JSR	Load_Bkg_Pal
		RTS
; End of function Load_Pals


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Load_Bkg_Pal:				; CODE XREF: ROM:D41Ap	Load_Pals+8p
		ASL	A
		ASL	A
		ASL	A
		ASL	A		; A*10
		TAX
		LDY	#$10
		LDA	#$3F ; '?'      ; Подготовка к записи 16 цветной палитры в область Background палитр
		STA	PPU_ADDRESS	; VRAM Address Register	#2 (W2)
		LDA	#0
		STA	PPU_ADDRESS	; VRAM Address Register	#2 (W2)

-:					; CODE XREF: Load_Bkg_Pal+19j
		LDA	PaletteFrame2,X
		STA	PPU_DATA	; VRAM I/O Register (RW)
		INX
		DEY
		BNE	-
		LDA	#$FF
		STA	BkgPal_Number
		LDA	#$3F ; '?'
		STA	PPU_ADDRESS	; VRAM Address Register	#2 (W2)
		LDA	#0
		STA	PPU_ADDRESS	; VRAM Address Register	#2 (W2)
		STA	PPU_ADDRESS	; VRAM Address Register	#2 (W2)
		STA	PPU_ADDRESS	; Обнуление адреса PPU?
		RTS
; End of function Load_Bkg_Pal


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Spr_Pal_Load:				; CODE XREF: Load_Pals+3p
		LDX	#0
		LDY	#$10
		LDA	#$3F ; '?'      ; Подготовка к записи 16 цветов в область спрайтовых палитр
		STA	PPU_ADDRESS	; VRAM Address Register	#2 (W2)
		STY	PPU_ADDRESS	; VRAM Address Register	#2 (W2)

-:					; CODE XREF: Spr_Pal_Load+14j
		LDA	SpritePalette,X
		STA	PPU_DATA	; VRAM I/O Register (RW)
		INX
		DEY
		BNE	-
		RTS
; End of function Spr_Pal_Load

; ───────────────────────────────────────────────────────────────────────────
;Палитры:
SpritePalette:	.BYTE  $F,$18,$27,$38, $F, $A,$1B,$3B, $F, $C,$10,$20, $F,  4,$16,$20
					; DATA XREF: Spr_Pal_Load:-r
PaletteFrame2:	.BYTE  $F,$17,	6,  0, $F,$3C,$10,$12, $F,$29,	9, $B, $F,  0,$10,$20
					; DATA XREF: Load_Bkg_Pal:-r
LevelPalette:	.BYTE  $F,$17,	6,  0, $F,$3C,$12,$12, $F,$29,	9, $B, $F,  0,$10,$20
PaletteFrame1:	.BYTE  $F,$17,	6,  0, $F,$12,$3C,$12, $F,$29,	9, $B, $F,  0,$10,$20
TitleScrPalette:.BYTE  $F,$16,$16,$30, $F,$3C,$10,$16, $F,$29,	9,$27, $F,  0,$10,$20
LevelSelPalette:.BYTE  $F,$17,	6,  0, $F,$3C,$10,  0, $F,$29,	9,  0, $F,  0,$10,  0
		.BYTE  $F, $F,	6,  0, $F,$3C,$10,  0, $F,$29,	9,  0, $F,  0,$10,  0
PaletteMisc1:	.BYTE  $F,$12,	6,  0, $F,$3C,$10,  0, $F,$29,	9,  0, $F,  0,$10,  0
		.BYTE  $F,  0,	6,  0, $F,$3C,$10,  0, $F,$29,	9,  0, $F,  0,$10,  0
PaletteMisc2:	.BYTE  $F,$30,	6,  0, $F,$3C,$10,  0, $F,$29,	9,  0, $F,  0,$10,  0

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


VBlank_Wait:				; CODE XREF: Set_PPUp Load_Palsp -+3j
-:					; PPU Status Register (R)
		LDA	PPU_STATUS
		BPL	-
		RTS
; End of function VBlank_Wait


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


CoordTo_PPUaddress:			; CODE XREF: Draw_StageNumString+7p
					; FillScr_Single_Row+2p
					; String_to_Screen_Bufferp
					; Save_Str_To_ScrBufferp
					; CoordsToRAMPosp Draw_GrayFrame+21p
		LDA	#0
		STA	Temp		; Экран	шириной	$20 тайлов. Старший байт адреса	в NT увеличится	на 1, если
					; от начала экрана будет $100 тайлов или 8 строк тайлов(Y=8).
					; Таким	образом, старший байт может быть вычислен по формуле: (Y div 8)	или (Y shr 3)
					; Затем	в старшем байте	выставляется бит №2 (старший байт теперь не меньше 4):
					; в дальнейшем,	к старшему байту будет прибавлено $1c, так что в итоге не должен
					; получиться адрес меньше $2000	(1-я NT).
					; Младший байт в этом случае, может быть вычислен по формуле: (X + Y*($20)) или	(X + (Y	shl 5)).
					; Или, другими словами,	три младших бита Y должны перейти в три	старших	бита X,
					; что и	реализовано в этой процедуре.
					; __________________________________________
					; На входе Х и Y: координаты тайла на экране
					; На выходе A: (старший	байт - $1c)
					;	    Y:	младший	байт
		TYA
		LSR	A
		ROR	Temp
		LSR	A
		ROR	Temp
		LSR	A		; Y div	8
		ROR	Temp
		PHA
		TXA
		ORA	Temp		; (X + (Y shl 5))
		TAY
		PLA
		ORA	#4		; выставляем второй бит
		RTS
; End of function CoordTo_PPUaddress


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Копируем атрибуты из NT_Buffer на экран

AttribToScrBuffer:			; CODE XREF: Draw_TSABlock+13p
		JSR	TSA_Pal_Ops
		LDX	ScrBuffer_Pos
		LDA	#$23 ; '#'
		STA	Screen_Buffer,X
		INX
		TYA
		CLC
		ADC	#$C0 ; '└'
		STA	Screen_Buffer,X	; В PPU	будем писать в атрибуты
		INX
		LDA	NT_Buffer+$3C0,Y
		STA	Screen_Buffer,X
		INX
		LDA	#$FF
		STA	Screen_Buffer,X	; Конец	строки
		INX
		STX	ScrBuffer_Pos
		RTS
; End of function AttribToScrBuffer


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


TSA_Pal_Ops:				; CODE XREF: AttribToScrBufferp
		LDA	TSA_Pal
		JSR	OR_Pal		; A := (A * 4) OR TSA_Pal
		JSR	OR_Pal		; A := (A * 4) OR TSA_Pal
		JSR	OR_Pal		; A := (A * 4) OR TSA_Pal
		STA	CHR_Byte
		TYA
		AND	#2
		BNE	+
		TXA
		AND	#2
		BEQ	++
		LDA	#$F3 ; 'є'
		JMP	End_TSA_Pal_Ops
; ───────────────────────────────────────────────────────────────────────────

++:					; CODE XREF: TSA_Pal_Ops+15j
		LDA	#$FC ; '№'
		JMP	End_TSA_Pal_Ops
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: TSA_Pal_Ops+10j
		TXA
		AND	#2
		BEQ	+++
		LDA	#$3F ; '?'
		JMP	End_TSA_Pal_Ops
; ───────────────────────────────────────────────────────────────────────────

+++:					; CODE XREF: TSA_Pal_Ops+24j
		LDA	#$CF ; '╧'

End_TSA_Pal_Ops:			; CODE XREF: TSA_Pal_Ops+19j
					; TSA_Pal_Ops+1Ej TSA_Pal_Ops+28j
		STA	byte_1
		TYA
		ASL	A
		AND	#$F8 ; '°'
		STA	Temp
		TXA
		LSR	A
		LSR	A
		CLC
		ADC	Temp
		TAY
		LDA	byte_1
		EOR	#$FF
		AND	CHR_Byte
		STA	CHR_Byte
		LDA	NT_Buffer+$3C0,Y ; Пишем в атрибуты
		AND	byte_1
		ORA	CHR_Byte
		STA	NT_Buffer+$3C0,Y
		RTS
; End of function TSA_Pal_Ops


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; A := (A * 4) OR TSA_Pal

OR_Pal:					; CODE XREF: TSA_Pal_Ops+2p
					; TSA_Pal_Ops+5p TSA_Pal_Ops+8p
		ASL	A
		ASL	A
		ORA	TSA_Pal
		RTS
; End of function OR_Pal


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Read_Joypads:				; CODE XREF: ROM:D433p
		LDX	#1
		STX	JOYPAD_PORT1	; Joypad #1 (RW)
		LDY	#0
		STY	JOYPAD_PORT1	; Строб

--:					; CODE XREF: Read_Joypads+27j
		STY	Temp
		LDY	#8		; 8 кнопок

-:					; CODE XREF: Read_Joypads+18j
		LDA	JOYPAD_PORT1,X	; Сначала опрашиваем второй джойстик, потом первый
		AND	#3
		CMP	#1
		ROR	Temp
		DEY
		BNE	-		; Сначала опрашиваем второй джойстик, потом первый
		LDA	Joypad1_Buttons,X
		EOR	#$FF
		AND	Temp
		STA	Joypad1_Differ,X
		LDA	Temp
		STA	Joypad1_Buttons,X
		DEX
		BPL	--
		RTS			; 1 = A
; End of function Read_Joypads		; 2 = B
					; 4 = SELECT
					; 8 = START
					; 10 = UP
					; 20 = DOWN
					; 40 = LEFT
					; 80 = RIGHT

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


String_to_Screen_Buffer:		; CODE XREF: Show_Secret_Msg+28p
					; Show_Secret_Msg+3Ap
					; Show_Secret_Msg+4Cp
					; Show_Secret_Msg+5Ep
					; Show_Secret_Msg+70p
					; Show_Secret_Msg+82p
					; Show_Secret_Msg+94p
					; Show_Secret_Msg+A6p
					; Show_Secret_Msg+B8p
					; Draw_Player_Lives+16p
					; Draw_Player_Lives+36p Draw_IP+Cp
					; Draw_IP+25p Draw_LevelFlag+Fp
					; Draw_LevelFlag+1Ep ReinforceToRAM+Bp
					; Draw_EmptyTile+Bp DraW_Normal_HQ+Cp
					; DraW_Normal_HQ+1Bp
					; DraW_Normal_HQ+2Ap
					; DraW_Normal_HQ+39p Draw_Naked_HQ+Cp
					; Draw_Naked_HQ+1Bp Draw_ArmourHQ+Cp
					; Draw_ArmourHQ+1Bp Draw_ArmourHQ+2Ap
					; Draw_ArmourHQ+39p
					; Draw_Destroyed_HQ+Cp
					; Draw_Destroyed_HQ+1Bp
					; Draw_Pts_Screen+196p
					; Draw_Pts_Screen+1A5p
					; Draw_Pts_Screen+1F1p
					; Draw_Pts_Screen+200p
					; Draw_Pts_Screen_Template+36p
					; Draw_Pts_Screen_Template+51p
					; Draw_Pts_Screen_Template+74p
					; Draw_Pts_Screen_Template+8Fp
					; Draw_Pts_Screen_Template+9Ep
					; Draw_Pts_Screen_Template+ADp
					; Draw_Pts_Screen_Template+BCp
					; Draw_Pts_Screen_Template+D2p
					; Draw_Pts_Screen_Template+EDp
					; Draw_Pts_Screen_Template+FCp
					; Draw_Pts_Screen_Template+10Bp
					; Draw_Pts_Screen_Template+11Ap
					; Draw_Pts_Screen_Template+12Cp
					; Draw_Pts_Screen_Template+13Bp
					; Draw_Pts_Screen_Template+14Ap
					; Draw_Pts_Screen_Template+159p
					; Draw_Pts_Screen_Template+16Fp
					; Draw_Pts_Screen_Template+17Ep
					; Draw_Pts_Screen_Template+18Dp
					; Draw_Pts_Screen_Template+19Cp
					; Draw_Pts_Screen_Template+1AEp
					; Draw_Pts_Screen_Template+1BDp
					; Draw_TitleScreen+46p
					; Draw_TitleScreen+61p
					; Draw_TitleScreen+80p
					; Draw_TitleScreen+A2p
					; Draw_TitleScreen+B1p
					; Draw_TitleScreen+C0p
					; Draw_TitleScreen+D2p
					; Draw_TitleScreen+E1p
					; Draw_TitleScreen+F3p
		JSR	CoordTo_PPUaddress
		STA	HighStrPtr_Byte
		CLC
		ADC	PPU_Addr_Ptr
		LDX	ScrBuffer_Pos
		STA	Screen_Buffer,X
		INX
		TYA
		STA	Screen_Buffer,X	; Сначала сохраняем адрес PPU, куда будет вписана эта строка
		INX
		STA	LowStrPtr_Byte
		LDY	#0

-:					; CODE XREF: String_to_Screen_Buffer+24j
		LDA	(LowPtr_Byte),Y	; Загружаем нужный стринг из РОМа
		STA	Screen_Buffer,X
		INX
		CMP	#$FF
		BEQ	+
		STA	(LowStrPtr_Byte),Y
		INY
		JMP	-		; Загружаем нужный стринг из РОМа
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: String_to_Screen_Buffer+1Fj
		STX	ScrBuffer_Pos
		RTS
; End of function String_to_Screen_Buffer


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Сохраняет строку в строковый буффер

Save_Str_To_ScrBuffer:			; CODE XREF: ROM:C76Bp	ROM:C782p
					; Draw_Player_Lives+5Ap
					; Draw_LevelFlag+33p
					; Draw_StageNumString+5Cp
					; Draw_Pts_Screen+93p
					; Draw_Pts_Screen+A7p
					; Draw_Pts_Screen+C2p
					; Draw_Pts_Screen+D2p
					; Draw_Pts_Screen+E6p
					; Draw_Pts_Screen+101p
					; Draw_Pts_Screen+133p
					; Draw_Pts_Screen+148p
					; Draw_Pts_Screen+17Bp
					; Draw_Pts_Screen+187p
					; Draw_Pts_Screen+1D6p
					; Draw_Pts_Screen+1E2p
					; Draw_Pts_Screen_Template+42p
					; Draw_Pts_Screen_Template+62p
					; Draw_Pts_Screen_Template+80p
					; Draw_Pts_Screen_Template+DEp
					; Draw_TitleScreen+52p
					; Draw_TitleScreen+6Dp
					; Draw_TitleScreen+8Cp
		JSR	CoordTo_PPUaddress
		CLC
		ADC	PPU_Addr_Ptr
		LDX	ScrBuffer_Pos
		STA	Screen_Buffer,X
		INX
		TYA
		STA	Screen_Buffer,X	; Сначала сохраняем в буффер адрес PPU (hi/lo)
		INX
		LDY	#0

-:					; CODE XREF: Save_Str_To_ScrBuffer+23j
		LDA	(LowPtr_Byte),Y
		BMI	+
		CLC
		ADC	Char_Index_Base

+:					; CODE XREF: Save_Str_To_ScrBuffer+15j
		STA	Screen_Buffer,X
		INX
		CMP	#$FF		; Сбрасываем в буффер, пока не появится	конец строки: $FF
		BEQ	++		; Сохраним позицию в буффере и выйдем
		INY
		JMP	-
; ───────────────────────────────────────────────────────────────────────────

++:					; CODE XREF: Save_Str_To_ScrBuffer+20j
		STX	ScrBuffer_Pos	; Сохраним позицию в буффере и выйдем
		RTS
; End of function Save_Str_To_ScrBuffer


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; В Х и	Y на выходе координаты в тайлах

GetCoord_InTiles:			; CODE XREF: Get_SprCoord_InTiles+4p
					; SaveSprTo_SprBuffer+Dp ROM:DCD2p
					; ROM:DCF7p Ice_Detect+1Ap
					; GetSprCoord_InTiles+4p
		JSR	XnY_div_8	; Делим	на 8 Y и X
; End of function GetCoord_InTiles


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


CoordsToRAMPos:				; CODE XREF: Draw_TSABlock+20p
		JSR	CoordTo_PPUaddress
		STA	HighPtr_Byte
		STY	LowPtr_Byte
		LDY	#0
		RTS
; End of function CoordsToRAMPos


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Делим	на 8 Y и X

XnY_div_8:				; CODE XREF: GetCoord_InTilesp
					; Draw_TSABlock+3p
		TYA
;Обычно	из координат в пикселях
;переводят в координаты	в тайлах
		LSR	A
		LSR	A
		LSR	A
		TAY
		TXA
		LSR	A
		LSR	A
		LSR	A
		TAX
		RTS
; End of function XnY_div_8


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Переводит SPR_XY в тайлы

Get_SprCoord_InTiles:			; CODE XREF: Draw_Char+44p
		STX	Spr_X
		STY	Spr_Y
		JSR	GetCoord_InTiles ; В Х и Y на выходе координаты	в тайлах
; End of function Get_SprCoord_InTiles


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Преобразует Temp в зависимости от Spr_Coord

Temp_Coord_shl:				; CODE XREF: BulletToObject_Impact_Handlep
		LDA	#1
		STA	Temp
		LDA	Spr_Y
		AND	#4
		BEQ	+
		ASL	Temp
		ASL	Temp

+:					; CODE XREF: Temp_Coord_shl+8j
		LDA	Spr_X
		AND	#4
		BEQ	++
		ASL	Temp

++:					; CODE XREF: Temp_Coord_shl+12j
		RTS
; End of function Temp_Coord_shl


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Возвращает ноль, если	нулевой	тайл

Check_Object:				; CODE XREF: BulletToObject_Impact_Handle+3p
		LDA	Temp
		ORA	#$F0 ; 'Ё'
		AND	(LowPtr_Byte),Y
		RTS
; End of function Check_Object


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует правильный вырыв в кирпичной стене

Draw_Destroyed_Brick:			; CODE XREF: BulletToObject_Impact_Handle:BulletToObject_Return1p
		LDA	Temp
		EOR	#$FF
		AND	(LowPtr_Byte),Y
		JSR	Draw_Tile
		RTS
; End of function Draw_Destroyed_Brick


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


NT_Buffer_Process_XOR:			; CODE XREF: Draw_Char:Empty_Pixelp
		LDA	(LowPtr_Byte),Y
		AND	#11110000b
		BNE	+
		LDA	Temp
		EOR	#$FF
		AND	(LowPtr_Byte),Y
		STA	(LowPtr_Byte),Y

+:					; CODE XREF: NT_Buffer_Process_XOR+4j
		RTS
; End of function NT_Buffer_Process_XOR

; ───────────────────────────────────────────────────────────────────────────
		LDA	Temp		; Это не испольняется никогда
		ORA	($11),Y
		JSR	Draw_Tile
		RTS

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


NT_Buffer_Process_OR:			; CODE XREF: Draw_Char+4Dp
		LDA	(LowPtr_Byte),Y
		AND	#11110000b
		BNE	+
		LDA	Temp
		ORA	(LowPtr_Byte),Y
		STA	(LowPtr_Byte),Y

+:					; CODE XREF: NT_Buffer_Process_OR+4j
		RTS
; End of function NT_Buffer_Process_OR


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Save_to_VRAM:				; CODE XREF: Store_NT_Buffer_InVRAM:-p
		LDA	HighPtr_Byte
		CLC
		ADC	PPU_Addr_Ptr
		STA	PPU_ADDRESS	; VRAM Address Register	#2 (W2)
		LDA	LowPtr_Byte
		STA	PPU_ADDRESS	; VRAM Address Register	#2 (W2)
		LDA	(LowPtr_Byte),Y	; Таким	образом, массив	RAM'a выводится в Name Table,
					; в это	время всё пространство оперативной памяти
					; $400-$7FFзаполнено только тайловой картой надписи 'Battle City',
					; составленной из кирпичей
		STA	PPU_DATA	; используется при выводе титульника
		RTS
; End of function Save_to_VRAM


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Draw_Tile:				; CODE XREF: Draw_Destroyed_Brick+6p
					; ROM:D760p Draw_TSABlock+2Bp
					; Draw_TSABlock+37p Draw_TSABlock+43p
					; Draw_TSABlock+4Fp
					; BulletToObject_Impact_Handle+46p
		STA	(LowPtr_Byte),Y
		STX	Spr_X
		LDX	ScrBuffer_Pos
		LDA	HighPtr_Byte
		CLC
		ADC	#$1C
		STA	Screen_Buffer,X
		INX
		LDA	LowPtr_Byte
		STA	Screen_Buffer,X
		INX
		LDA	(LowPtr_Byte),Y
		STA	Screen_Buffer,X
		INX
		LDA	#$FF
		STA	Screen_Buffer,X
		INX
		STX	ScrBuffer_Pos
		LDX	Spr_X
		RTS
; End of function Draw_Tile


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Inc_Ptr_on_A:				; CODE XREF: Copy_AttribToScrnBuff+2Dp
					; Store_NT_Buffer_InVRAM+Ep
					; Draw_GrayFrame+38p Draw_TSABlock+30p
					; Draw_TSABlock+3Cp Draw_TSABlock+48p
					; Draw_Char+16p Load_Level+20p
		CLC
		ADC	LowPtr_Byte
		STA	LowPtr_Byte
		BCC	+
		INC	HighPtr_Byte

+:					; CODE XREF: Inc_Ptr_on_A+5j
		RTS
; End of function Inc_Ptr_on_A


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Сбрасывает на	экран содержимое NT_Buffer

Store_NT_Buffer_InVRAM:			; CODE XREF: ROM:C0B8p	Clear_NT+6p
					; Load_DemoLevel+54p
					; Draw_Record_HiScore+26p
					; Show_Secret_Msg+10p
					; Show_Secret_Msg+C4p
					; Draw_Brick_GameOver+36p
					; Draw_Brick_GameOver+5Fp
					; Draw_Pts_Screen_Template+24p
					; Null_Upper_NT+Ep
					; Draw_TitleScreen+30p
					; Reset_ScreenStuff+41p
					; Reset_ScreenStuff+48p
		LDA	#0
		STA	LowPtr_Byte
		TAY
		LDA	#4		; Область тайловой карты в RAM начинается с $400
		STA	HighPtr_Byte

-:					; CODE XREF: Store_NT_Buffer_InVRAM+15j
		JSR	Save_to_VRAM
		LDA	#1
		JSR	Inc_Ptr_on_A
		LDA	HighPtr_Byte
		CMP	#8		; Не зашли ли мы за пределы области $400-$7FF?
		BNE	-
		RTS
; End of function Store_NT_Buffer_InVRAM


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Draw_GrayFrame:				; CODE XREF: Make_GrayFrame+Cp
		LDX	#0
		LDA	#$11		; $11 -	серый тайл в Pattern Table (рамка серого цвета)

Fill_NTBuffer:				; CODE XREF: Draw_GrayFrame+11j
		STA	NT_Buffer,X
		STA	NT_Buffer+$100,X
		STA	NT_Buffer+$200,X
		STA	NT_Buffer+$300,X
		INX
		BNE	Fill_NTBuffer
		LDA	#0		; Весь экран использует	0-ю палитру.
		LDX	#$C0		; Последние $40	байт Name Table	отданы под атрибуты

Fill_NTAttribBuffer:			; CODE XREF: Draw_GrayFrame+1Bj
		STA	NT_Buffer+$300,X
		INX
		BNE	Fill_NTAttribBuffer
		LDX	Block_X
		LDY	Block_Y
		JSR	CoordTo_PPUaddress
		STA	HighPtr_Byte
		STY	LowPtr_Byte	; Начинаем рисовать черное игровое поле	от границы рамки, а не экрана.

Draw_BlackRow:				; CODE XREF: Draw_GrayFrame+3Bj
		LDY	Counter2
		DEY

--:					; CODE XREF: Draw_GrayFrame+30j
		LDA	#0		; Черный пустой	тайл игрового поля
		STA	(LowPtr_Byte),Y
		DEY			; Заполняем поле черным	тайлом справа налево
		BPL	--		; Черный пустой	тайл игрового поля
		DEC	Counter
		BEQ	+
		LDA	#$20 ; ' '      ; Переходим к следующему ряду тайлов
		JSR	Inc_Ptr_on_A
		JMP	Draw_BlackRow
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: Draw_GrayFrame+34j
		RTS
; End of function Draw_GrayFrame


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Draw_TSABlock:				; CODE XREF: Draw_TSA_On_Tank+8p
					; Make_Respawn+51p Load_Level+58p
		PHA
		STA	Temp
		JSR	XnY_div_8	; Делим	на 8 Y и X
		STX	Spr_X
		STY	Spr_Y
		LDY	Temp
		LDA	TSABlock_PalNumber,Y
		STA	TSA_Pal
		LDY	Spr_Y
		JSR	AttribToScrBuffer ; Копируем атрибуты из NT_Buffer на экран
		LDA	Spr_Y
		AND	#$FE
		TAY
		LDA	Spr_X
		AND	#$FE ; '■'
		TAX
		JSR	CoordsToRAMPos
		PLA
		ASL	A
		ASL	A		; Умножаем на 4	(на количество тайлов в	одном блоке)
		TAX
		LDA	TSA_data_start,X
		INX
		JSR	Draw_Tile
		LDA	#1		; Переходим на тайл правее
		JSR	Inc_Ptr_on_A
		LDA	TSA_data_start,X
		INX
		JSR	Draw_Tile
		LDA	#$1F		; Одна строка Name Table размером в $20	тайлов
					; т.е. переходим на строку ниже	и на тайл левее
		JSR	Inc_Ptr_on_A
		LDA	TSA_data_start,X
		INX
		JSR	Draw_Tile
		LDA	#1		; Переходим на тайл правее
		JSR	Inc_Ptr_on_A
		LDA	TSA_data_start,X
		INX
		JSR	Draw_Tile
		RTS
; End of function Draw_TSABlock


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Draw_Char:				; CODE XREF: Draw_BrickStr+14p
		STX	BrickChar_X
		TAX
		TYA
		CLC
		ADC	#$20 ; ' '
		STA	BrickChar_Y
		LDA	#0
		STA	LowPtr_Byte	; Очистка младшего байта указателя
		LDA	#$10
		STA	HighPtr_Byte	; Установка старшего байта, чтобы
					; дальнейшее чтение производилось
					; из второго знакогенератора (который
					; установлен для бэкграунда)

Add_10:					; CODE XREF: Draw_Char+19j
		DEX			; Умножение ASCII кода буквы на	$10
		BMI	+
		LDA	#$10
		JSR	Inc_Ptr_on_A
		JMP	Add_10		; после	завершения этой	процедурки
					; условным переходом в Ptr_Byte	будет
					; код буквы в ASCII*$10+$1000;
					; Например, для	A=$41: $1410
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: Draw_Char+12j
		LDA	HighPtr_Byte
		STA	PPU_ADDRESS	; VRAM Address Register	#2 (W2)
		LDA	LowPtr_Byte
		STA	PPU_ADDRESS	; Установка указателя на чтение
					; из области второго знакогенератора
					;
		LDA	PPU_DATA	; Первое чтение	из PPU "нелегально"
		LDA	#8
		STA	Counter

Read_CHRByte:				; CODE XREF: Draw_Char+33j
		LDA	PPU_DATA	; VRAM I/O Register (RW)
		PHA
		DEC	Counter
		BNE	Read_CHRByte	; Читаем восемь	байт из	области
					; Pattern Table, что соответствует сбросу
					; в стек графики отдельной буквы в
					; формате 1bpp
					;
					;
		LDA	#8
		STA	Counter		; 8 раз	будем тащить из	стека графику

NextByte:				; CODE XREF: Draw_Char+71j
		PLA
		STA	CHR_Byte
		LDA	#$80 ; 'А'
		STA	Mask_CHR_Byte

Next_Bit:				; CODE XREF: Draw_Char+5Fj
		LDX	BrickChar_X	; сначала в $005D всегда $1A
		LDY	BrickChar_Y	; сначала в $005e всегда $2e+$20=$4E
		JSR	Get_SprCoord_InTiles ; Переводит SPR_XY	в тайлы
		LDA	CHR_Byte
		AND	Mask_CHR_Byte
		BEQ	Empty_Pixel	; Этот пиксель чёрный
		JSR	NT_Buffer_Process_OR
		JMP	++
; ───────────────────────────────────────────────────────────────────────────

Empty_Pixel:				; CODE XREF: Draw_Char+4Bj
		JSR	NT_Buffer_Process_XOR ;	Этот пиксель чёрный

++:					; CODE XREF: Draw_Char+50j
		LDA	BrickChar_X
		CLC
		ADC	#4
		STA	BrickChar_X
		LSR	Mask_CHR_Byte	; переходим к следующему биту
		BCC	Next_Bit	; сначала в $005D всегда $1A
		LDA	BrickChar_X
		SEC
		SBC	#$20 ; ' '
		STA	BrickChar_X
		LDA	BrickChar_Y
		SEC
		SBC	#4
		STA	BrickChar_Y
		DEC	Counter
		BNE	NextByte
		RTS
; End of function Draw_Char


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Draw_BrickStr:				; CODE XREF: Load_DemoLevel+3Ep
					; Load_DemoLevel+51p
					; Draw_Record_HiScore+20p
					; Draw_Brick_GameOver+20p
					; Draw_Brick_GameOver+33p
					; Draw_TitleScreen+1Ap
					; Draw_TitleScreen+2Dp
					; Draw_RecordDigit+24p
		LDY	#0
		STY	String_Position

New_Char:				; CODE XREF: Draw_BrickStr+20j
		LDA	(LowStrPtr_Byte),Y ; Стринги загружаются
		CMP	#$FF
		BEQ	EOS
		INY
		STY	String_Position
		LDX	Block_X
		LDY	Block_Y
		CLC
		ADC	Char_Index_Base
		JSR	Draw_Char
		LDA	Block_X
		CLC
		ADC	#$20 ; ' '
		STA	Block_X
		LDY	String_Position
		JMP	New_Char	; Стринги загружаются
; ───────────────────────────────────────────────────────────────────────────

EOS:					; CODE XREF: Draw_BrickStr+8j
		RTS
; End of function Draw_BrickStr


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Ожидает немаскируемого прерывания

NMI_Wait:				; CODE XREF: ROM:Construction_Loopp
					; ROM:Start_StageSelScrnp ROM:C1F3p
					; ROM:Battle_Enginep
					; ROM:AfterDeath_BattleRunp
					; SetUp_LevelVARs+49p
					; Load_DemoLevel+60p
					; BonusLevel_ButtonCheckp
					; Draw_Record_HiScore:-p
					; Wait_1Second:loc_C56Bp Draw_Drop:--p
					; Draw_RespawnPicp
					; Draw_Brick_GameOver:Next_Framep
					; Scroll_TitleScrn:-p Draw_LevelFlagp
					; Title_Screen_Loop:-p
					; Draw_StageNumStringp
					; Copy_AttribToScrnBuff:-p
					; FillNT_with_Grey:-p
					; FillNT_with_Black:-p
					; Draw_Pts_Screen:DrawPtsScrn_NxtTankp
					; Draw_Pts_Screen:DrawPtsScrn_NxtCountp
					; Draw_Pts_Screen_Templatep
					; Draw_Pts_Screen_Template+65p
					; Draw_Pts_Screen_Template+C3p
					; Draw_Pts_Screen_Template:Skip_ScndPlayerDrawp
					; Draw_Pts_Screen_Template+160p
					; Draw_Pts_Screen_Template:Skip_ScndPlayerPtsDrawp
					; Draw_TitleScreen+93p
					; Draw_TitleScreen+C3p
					; Draw_TitleScreen+E4p
					; DrawTankColumn_XTimesp Screen_Offp
					; Load_Level:--p
		LDA	Frame_Counter

-:					; CODE XREF: NMI_Wait+4j
		CMP	Frame_Counter
		BEQ	-
		RTS
; End of function NMI_Wait


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Сборос из Screen_Buffer в память PPU

Update_Screen:				; CODE XREF: ROM:D413p
		LDX	ScrBuffer_Pos
		LDA	#0
		STA	Screen_Buffer,X
		TAX

-:					; CODE XREF: Update_Screen+27j
		CPX	ScrBuffer_Pos	; Достигнут ли конец строкового	буффера?
		BEQ	Update_Screen_End
		LDA	Screen_Buffer,X
		INX
		STA	PPU_ADDRESS	; VRAM Address Register	#2 (W2)
		LDA	Screen_Buffer,X
		INX
		STA	PPU_ADDRESS	; В начале каждой строки в Screen_Buffer стоят
					; hi/lo	адреса,	куда будет вестись запись

--:					; CODE XREF: Update_Screen+2Fj
		LDA	Screen_Buffer,X
		INX
		CMP	#$FF		; Проверка на конец строки
		BNE	++		; Непосредственно запись в память PPU
		LDA	Screen_Buffer,X
		CMP	#$FF
		BNE	-		; Достигнут ли конец строкового	буффера?
		LDA	$17F,X

++:					; CODE XREF: Update_Screen+20j
		STA	PPU_DATA	; Непосредственно запись в память PPU
		JMP	--
; ───────────────────────────────────────────────────────────────────────────

Update_Screen_End:			; CODE XREF: Update_Screen+Aj
		LDA	#0
		STA	ScrBuffer_Pos
		RTS
; End of function Update_Screen


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Установка указателя на ненулевой элемент строки

PtrToNonzeroStrElem:			; CODE XREF: Draw_Player_Lives+4Bp
					; Draw_LevelFlag+2Ep
					; Draw_StageNumString+57p
					; Draw_Pts_Screen+8Ep
					; Draw_Pts_Screen+9Ap
					; Draw_Pts_Screen+B5p
					; Draw_Pts_Screen+CDp
					; Draw_Pts_Screen+D9p
					; Draw_Pts_Screen+F4p
					; Draw_Pts_Screen+12Ep
					; Draw_Pts_Screen+143p
					; Draw_Pts_Screen+176p
					; Draw_Pts_Screen+182p
					; Draw_Pts_Screen+1D1p
					; Draw_Pts_Screen+1DDp
					; Draw_Pts_Screen_Template+3Dp
					; Draw_Pts_Screen_Template+5Dp
					; Draw_Pts_Screen_Template+7Bp
					; Draw_Pts_Screen_Template+D9p
					; Draw_TitleScreen+4Dp
					; Draw_TitleScreen+68p
					; Draw_TitleScreen+87p
					; PtrToNonzeroStrElem+7j
		LDA	0,Y
		BNE	+
		INY
		INX
		JMP	PtrToNonzeroStrElem ; Установка	указателя на ненулевой элемент строки
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: PtrToNonzeroStrElem+3j
		CMP	#$FF
		BNE	+++
		LDA	byte_6B
		BNE	++
		DEX
		DEY

++:					; CODE XREF: PtrToNonzeroStrElem+10j
		DEX
		DEY

+++:					; CODE XREF: PtrToNonzeroStrElem+Cj
		LDA	#0
		STA	HighPtr_Byte	; Строки располагаются в пределах нулевой
					; страницы RAM - старший байт всегда равен 0
		STY	LowPtr_Byte	; Теперь указатель адресует первый ненулевой элемент строки
		RTS
; End of function PtrToNonzeroStrElem


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Выводит на экран цифру рекорда

Draw_RecordDigit:			; CODE XREF: Draw_Record_HiScore+23p
		LDA	#$10
		STA	Block_X
		LDA	#$64 ; 'd'
		STA	Block_Y
		LDA	#$30 ; '0'      ; Начало графики цифр
		STA	Char_Index_Base
		LDY	#HiScore_String

-:					; CODE XREF: Draw_RecordDigit+1Bj
		LDA	0,Y
		BNE	+
		INY
		LDA	Block_X
		CLC
		ADC	#$20 ; ' '      ; $20 тайлов в одной строке
		STA	Block_X
		JMP	-
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: Draw_RecordDigit+11j
		LDA	#0
		STA	HighStrPtr_Byte
		STY	LowStrPtr_Byte
		JSR	Draw_BrickStr
		LDA	#0
		STA	Char_Index_Base
		RTS
; End of function Draw_RecordDigit


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; На выходе A =	$FF, значит есть рекорд

Update_HiScore:				; CODE XREF: ROM:C286p
		LDX	#0
		LDY	#0

loc_D981:				; CODE XREF: Update_HiScore+Fj
		LDA	HiScore_1P_String,X
		CMP	HiScore_String,X
		BNE	loc_D98F
		INX
		CPX	#7
		BEQ	loc_D99E
		JMP	loc_D981
; ───────────────────────────────────────────────────────────────────────────

loc_D98F:				; CODE XREF: Update_HiScore+8j
		BMI	loc_D99E
		LDX	#0		; не выполнилось

loc_D993:				; CODE XREF: Update_HiScore+1Dj
		LDA	HiScore_1P_String,X
		STA	HiScore_String,X
		INX
		CPX	#7
		BNE	loc_D993
		LDY	#1

loc_D99E:				; CODE XREF: Update_HiScore+Dj
					; Update_HiScore:loc_D98Fj
		LDX	#0

loc_D9A0:				; CODE XREF: Update_HiScore+2Ej
		LDA	HiScore_2P_String,X
		CMP	HiScore_String,X
		BNE	loc_D9AE
		INX
		CPX	#7
		BEQ	locret_D9BD
		JMP	loc_D9A0
; ───────────────────────────────────────────────────────────────────────────

loc_D9AE:				; CODE XREF: Update_HiScore+27j
		BMI	locret_D9BD
		LDX	#0		; Не выполнилось

loc_D9B2:				; CODE XREF: Update_HiScore+3Cj
		LDA	HiScore_2P_String,X
		STA	HiScore_String,X
		INX
		CPX	#7
		BNE	loc_D9B2
		LDY	#$FF

locret_D9BD:				; CODE XREF: Update_HiScore+2Cj
					; Update_HiScore:loc_D9AEj
		RTS
; End of function Update_HiScore


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Прибавляет число из NumString	к очкам	игрока №Х

Add_Score:				; CODE XREF: Draw_Pts_Screen+62p
					; Draw_Pts_Screen+80p
					; Draw_Pts_Screen+16Fp
					; Draw_Pts_Screen+1CAp
					; BulletToTank_Impact_Handle+118p
					; Bonus_Handle+4Bp
		TXA
		ASL	A
		ASL	A
		ASL	A		; Умножаем на $10
		CLC
		ADC	#6
		TAX
		LDY	#6
		CLC

-:					; CODE XREF: Add_Score+20j
		LDA	Num_String,Y
		ADC	HiScore_1P_String,X
		CMP	#$A		; Если > 10, то	переходим в следующий разряд
		BMI	+
		SEC
		SBC	#$A
		SEC
		JMP	++
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: Add_Score+12j
		CLC

++:					; CODE XREF: Add_Score+18j
		STA	HiScore_1P_String,X
		DEX
		DEY
		BPL	-
		RTS
; End of function Add_Score


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Переводит число из А в строку	NumString

Num_To_NumString:			; CODE XREF: ROM:C758p	ROM:C773p
					; Draw_Pts_Screen+4Bp
					; Draw_Pts_Screen+16Ap
					; Draw_Pts_Screen+1C5p
					; BulletToTank_Impact_Handle+112p
					; Bonus_Handle+46p
		STA	Temp
		LDX	#Num_String
		JSR	Null_8Bytes_String
		LDA	Temp
		BEQ	+		; Если передается 0, выставляем	1000 очков
		AND	#$F
		STA	Num_String+5
		LDA	Temp
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		STA	Num_String+4
		RTS
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: Num_To_NumString+9j
		LDA	#1		; Если передается 0, выставляем	1000 очков
		STA	Num_String+3	; Переходим в следующий	разряд
		RTS
; End of function Num_To_NumString


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Null_8Bytes_String:			; CODE XREF: Null_both_HiScore+2p
					; Null_both_HiScore+7p
					; Draw_Pts_Screen+2Ep
					; Draw_Pts_Screen+33p
					; Reset_ScreenStuff+23p
					; Reset_ScreenStuff+28p
					; Reset_ScreenStuff+32p
					; Num_To_NumString+4p
					; ByteTo_Num_String+4p
		LDA	#0
		STA	0,X
		STA	1,X
		STA	2,X
		STA	3,X
		STA	4,X
		STA	5,X
		STA	6,X
		LDA	#$FF
		STA	7,X
		RTS
; End of function Null_8Bytes_String


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


ByteTo_Num_String:			; CODE XREF: Draw_Player_Lives:Draw_LivesDigitp
					; Draw_LevelFlag+27p
					; Draw_StageNumString+50p
					; Draw_Pts_Screen+AEp
					; Draw_Pts_Screen+EDp
					; Draw_Pts_Screen+127p
					; Draw_Pts_Screen+13Cp
					; Draw_Pts_Screen_Template+56p
		STA	Temp
		LDX	#Num_String
		JSR	Null_8Bytes_String
		LDA	Temp

Check_Max:				; CODE XREF: ByteTo_Num_String+12j
		CMP	#10		; Числа	хранятся в десятичной системе -	один знак 0-9.
					; Если число >=	10, то появляется второй знак.
		BCC	loc_DA28
		SEC
		SBC	#10
		INC	Num_String+5
		JMP	Check_Max	; Числа	хранятся в десятичной системе -	один знак 0-9.
					; Если число >=	10, то появляется второй знак.
; ───────────────────────────────────────────────────────────────────────────

loc_DA28:				; CODE XREF: ByteTo_Num_String+Bj
		STA	Num_String+6
		RTS
; End of function ByteTo_Num_String


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Сбрасывает в спрайтовый буффер один спрайт 8х16

SaveSprTo_SprBuffer:			; CODE XREF: Draw_Pause+1Ap
					; Draw_Pause+25p Draw_Pause+30p
					; Draw_Pause+3Bp Draw_Pause+46p
					; Indexed_SaveSpr+Bp Draw_WholeSpr+9p
					; Draw_WholeSpr+14p
		TXA
; В X и	Y координаты выводимого	спрайта
		STA	Spr_X
		CLC
		ADC	#3
		TAX
		TYA
		SEC
		SBC	#8
		STA	Spr_Y
		JSR	GetCoord_InTiles ; Переводим из	координат в пикселях в координаты в тайлах
		LDA	(LowPtr_Byte),Y
		CMP	#$22 ; '"'      ; Проверка на пересечение спрайта танка с лесом: $22 в Pattern Table - тайл леса
					; в атрибуте спрайта в этом случае бит p = Background Priority
					; должен быть выставлен	в 1
		BNE	Skip_Attrib
		LDA	TSA_Pal
		ORA	Spr_Attrib
		STA	TSA_Pal		; Добавляем к палитрам еще и атрибуты

Skip_Attrib:				; CODE XREF: SaveSprTo_SprBuffer+14j
		LDX	SprBuffer_Position
		LDA	Spr_Y
		STA	SprBuffer,X
		LDA	Spr_TileIndex
		STA	SprBuffer+1,X
		LDA	TSA_Pal
		STA	SprBuffer+2,X
		LDA	Spr_X
		STA	SprBuffer+3,X
		TXA
		CLC
		ADC	Gap		; Переходим к следующему спрайту
		STA	SprBuffer_Position
		RTS
; End of function SaveSprTo_SprBuffer


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Сбрасывает в SprBuffer спрайт	8х16 со	смещением в А

Indexed_SaveSpr:			; CODE XREF: ROM:E10Ep
		ASL	A
		CLC
		ADC	Spr_TileIndex
		STA	Spr_TileIndex
		TXA
		SEC
		SBC	#5
		TAX
		JSR	SaveSprTo_SprBuffer ; Сбрасывает в спрайтовый буффер один спрайт 8х16
		RTS
; End of function Indexed_SaveSpr


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Spr_TileIndex	+ (A * 8)

Spr_TileIndex_Add:			; CODE XREF: ROM:DFFFp
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	Spr_TileIndex
		STA	Spr_TileIndex
; End of function Spr_TileIndex_Add


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Cбрасывает в спрайтовый буффер спрайт	16х16. (в Х, Y - координаты)

Draw_WholeSpr:				; CODE XREF: Draw_Drop+31p
					; Draw_RespawnPic+25p
					; Draw_Fixed_GameOver+12p
					; Draw_Fixed_GameOver+23p
					; Draw_Spr_InColumn+4p
					; Draw_Bullet_Ricochet+17p ROM:DF1Dp
					; ROM:DF5Bp ROM:DF6Dp	ROM:DF7Fp
					; ROM:DF91p ROM:E02Ap	Bonus_Draw+39p
					; Invisible_Timer_Handle+25p
					; Add_ExplodeSprBase-4p
		STX	Temp_X
		STY	Temp_Y
		TXA
		SEC
		SBC	#8		; Cмещаемся на тайл влево
		TAX
		JSR	SaveSprTo_SprBuffer ; Сбрасывает в спрайтовый буффер один спрайт 8х16
		INC	Spr_TileIndex
		INC	Spr_TileIndex	; В Pattern Table тайлы	спрайтов хранятся в Raw	Interleaved
					; формате:
					;
					;		     13
					;		     24
					;
					; Это обусловлено тем, что PPU работает	в режиме тайлов,
					; размерностью 8х16. В РОМе между соседними тайлами в линии лежит еще один
					; тайл - поэтому увеличиваем индекс на 2
		LDX	Temp_X		; Восстанавливаем Х - переходим	на тайл	правее
		LDY	Temp_Y
		JSR	SaveSprTo_SprBuffer ; Сбрасывает в спрайтовый буффер один спрайт 8х16
		RTS
; End of function Draw_WholeSpr


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Вывод	Y координат спрайтов в $F0

Spr_Invisible:				; CODE XREF: ROM:D436p
					; Reset_ScreenStuff+1Ep
		LDX	SprBuffer_Position
		LDA	Gap
		EOR	#$FF
		CLC
		ADC	#1		; Gap := -Gap
		STA	Gap

-:					; CODE XREF: Spr_Invisible+17j
		TXA
		CLC
		ADC	Gap		; заполнять начинаем с конца
		TAX
		LDA	#$F0 ; 'Ё'
		STA	SprBuffer,X
		CPX	#4
		BNE	-
		STX	SprBuffer_Position
		RTS
; End of function Spr_Invisible


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Если >0 возвращает $1. <0 возвращает $FF

Relation_To_Byte:			; CODE XREF: Load_AI_Status+5p
					; Load_AI_Status+12p
		BEQ	End_RelationToByte
		BCS	+
		LDA	#$FF
		JMP	End_RelationToByte
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: Relation_To_Byte+2j
		LDA	#1

End_RelationToByte:			; CODE XREF: Relation_To_Bytej
					; Relation_To_Byte+6j
		RTS
; End of function Relation_To_Byte

; ───────────────────────────────────────────────────────────────────────────
TSABlock_PalNumber:.BYTE 0, 0, 0, 0, 0,	3, 3, 3, 3, 3, 1, 2, 3,	0, 0, 0
					; DATA XREF: Draw_TSABlock+Cr
;Палитры на каждый TSA блок (всего 16)
;00 - цвет кирпичей
;01 - цвет воды
;02 - цвет леса
;03 - цвет брони
;
TSA_data_start:	.BYTE	0, $F,	0, $F	; DATA XREF: Draw_TSABlock+27r
					; Draw_TSABlock+33r Draw_TSABlock+3Fr
					; Draw_TSABlock+4Br
		.BYTE	0,  0, $F, $F
		.BYTE  $F,  0, $F,  0
		.BYTE  $F, $F,	0,  0
		.BYTE  $F, $F, $F, $F
		.BYTE $20,$10,$20,$10
		.BYTE $20,$20,$10,$10
		.BYTE $10,$20,$10,$20
		.BYTE $10,$10,$20,$20
		.BYTE $10,$10,$10,$10
		.BYTE $12,$12,$12,$12
		.BYTE $22,$22,$22,$22
		.BYTE $21,$21,$21,$21
		.BYTE	0,  0,	0,  0
		.BYTE	0,  0,	0,  0
		.BYTE	0,  0,	0,  0
;Содержит индексы тайлов на каждый TSA блок.
;Например, блок	льда (по счёту $0C) cодержит все 4
;тайла с индексами $21 (тайл с таким индексом в
;Pattern Table - это тайл льда)
;
;Номерация следующая:
;1 2
;3 4
;
;16 возможных TSA блоков.Три последних TSA блока пустые	(по счёту $0D-$0F)


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Играет и гасит звук движения когда нужно

Play_Snd_Move:				; CODE XREF: Battle_Loop+2Dp
		LDA	Snd_Move
		BEQ	No_MoveSound	; Первый игрок
		LDX	#0		; Первый игрок
		JSR	Detect_Motion	; Если танк должен двигаться, 1
		BNE	End_Play_Snd_Move
		LDX	#1		; Второй игрок
		JSR	Detect_Motion	; Если танк должен двигаться, 1
		BNE	End_Play_Snd_Move
		LDA	#0
		STA	Snd_Move	; Гасим	звук движения
		RTS
; ───────────────────────────────────────────────────────────────────────────

No_MoveSound:				; CODE XREF: Play_Snd_Move+3j
		LDX	#0		; Первый игрок
		JSR	Detect_Motion	; Если танк должен двигаться, 1
		BNE	+
		LDX	#1		; Второй игрок
		JSR	Detect_Motion	; Если танк должен двигаться, 1
		BEQ	End_Play_Snd_Move

+:					; CODE XREF: Play_Snd_Move+1Ej
		LDA	#1
		STA	Snd_Move	; Играем звук движения

End_Play_Snd_Move:			; CODE XREF: Play_Snd_Move+Aj
					; Play_Snd_Move+11j Play_Snd_Move+25j
		RTS
; End of function Play_Snd_Move


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Если танк должен двигаться, 1

Detect_Motion:				; CODE XREF: Play_Snd_Move+7p
					; Play_Snd_Move+Ep Play_Snd_Move+1Bp
					; Play_Snd_Move+22p
		LDA	Joypad1_Buttons,X
		AND	#$F0 ; 'Ё'
		BEQ	End_Detect_Motion ; Если клавиши управления не нажаты, возвращаем ноль
		LDA	Tank_Status,X
		BEQ	End_Detect_Motion ; Если танка нет, возвращаем ноль
		LDA	#1
		RTS
; ───────────────────────────────────────────────────────────────────────────

End_Detect_Motion:			; CODE XREF: Detect_Motion+4j
					; Detect_Motion+8j
		LDA	#0
		RTS
; End of function Detect_Motion


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Respawn_Handle:				; CODE XREF: Battle_Loop+1Bp
		LDA	Respawn_Timer	; Время	до следующего респауна
		BEQ	+		; Если время следующего	респауна не пришло, выходим
		DEC	Respawn_Timer	; Время	до следующего респауна
		RTS
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: Respawn_Handle+2j
		LDA	Enemy_Reinforce_Count ;	Количество врагов в запасе
		BEQ	End_Respawn_Handle ; Если врагов в запасе не осталось, выходим
		LDA	TanksOnScreen	; Максимальное количество всех танков на экране
		STA	Counter

-:					; CODE XREF: Respawn_Handle+2Aj
		LDX	Counter
		LDA	Tank_Status,X
		BNE	++		; Рисуем респауны тем танкам, которых уже нет на экране
		LDA	Respawn_Delay	; Задержка между респаунами врагов
		STA	Respawn_Timer	; Восстанавливаем таймер
		JSR	Make_Respawn
		DEC	Enemy_Reinforce_Count ;	Количество врагов в запасе
		LDA	Enemy_Reinforce_Count ;	Количество врагов в запасе
		JSR	Draw_EmptyTile	; Рисует пустой	тайл в колонке запасов врагов, когда они выходят
		RTS
; ───────────────────────────────────────────────────────────────────────────

++:					; CODE XREF: Respawn_Handle+13j
		DEC	Counter
		LDA	Counter
		CMP	#1		; Не обрабатываем обоих	игроков
		BNE	-

End_Respawn_Handle:			; CODE XREF: Respawn_Handle+9j
		RTS
; End of function Respawn_Handle


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Выполняет скольжение,	если танк двигается на льду

Ice_Move:				; CODE XREF: Battle_Loop+3p
		LDA	Frame_Counter
		AND	#1
		BNE	+		; Обрабатываем только игроков
		LDA	Frame_Counter
		AND	#3
		BNE	End_Ice_Move	; Логика, не производящая обработку на каждом 4-м фрейме:
					; т.е. если номер фрейма 2, 4, 10, 14, 18

+:					; CODE XREF: Ice_Move+4j
		LDX	#1		; Обрабатываем только игроков

-:					; CODE XREF: Ice_Move+79j
		LDA	Tank_Status,X
		BPL	++++++		; Если танк взорван, переходим к следующему
		CMP	#$E0 ; 'р'
		BCS	++++++		; Если танк зарождается, переходим к следующему
		LDA	Player_Blink_Timer,X ; Таймер мигания friendly fire
		BEQ	+++++
		DEC	Player_Blink_Timer,X ; Таймер мигания friendly fire
		JMP	Usual_Tank
; ───────────────────────────────────────────────────────────────────────────

+++++:					; CODE XREF: Ice_Move+18j
		LDA	Player_Ice_Status,X
		BPL	++++		; Либо танк не на льду,	либо
					; он закончил катиться
		AND	#$10
		BNE	Usual_Tank

++++:					; CODE XREF: Ice_Move+22j
		LDA	Joypad1_Buttons,X ; Либо танк не на льду, либо
					; он закончил катиться
		JSR	Button_To_DirectionIndex ; $FF = кнопки	управления не нажаты
		STA	Temp
		BPL	loc_DBB4

Usual_Tank:				; CODE XREF: Ice_Move+1Cj Ice_Move+26j
		LDA	#$80 ; 'А'
		JSR	Rise_TankStatus_Bit ; Tank_Status OR А
		LDA	#8
		ORA	Tank_Status,X
		STA	Tank_Status,X
		JMP	++++++		; Переходим к следующему танку
; ───────────────────────────────────────────────────────────────────────────

loc_DBB4:				; CODE XREF: Ice_Move+2Fj
		LDA	Player_Ice_Status,X
		BPL	++
		AND	#$1F
		BNE	++		; Если таймер скольжения не
					; кончился, не восстанавливаем его
		LDA	#$9C		; $1c фреймов будет скользить танк
		STA	Player_Ice_Status,X
		LDA	#1
		STA	Snd_Ice		; Проигрываем звук скольжения

++:					; CODE XREF: Ice_Move+42j Ice_Move+46j
		LDA	Tank_Status,X
		AND	#3
		CMP	Temp
		BEQ	+++
		EOR	#2
		CMP	Temp
		BEQ	+++
		LDA	Tank_X,X
		CLC
		ADC	#4
		AND	#$F8 ; '°'
		STA	Tank_X,X
		LDA	Tank_Y,X
		CLC
		ADC	#4
		AND	#$F8 ; '°'
		STA	Tank_Y,X

+++:					; CODE XREF: Ice_Move+58j Ice_Move+5Ej
		LDA	Temp
		ORA	#$A0
		STA	Tank_Status,X

++++++:					; CODE XREF: Ice_Move+10j Ice_Move+14j
					; Ice_Move+3Cj
		DEX			; Переходим к следующему танку
		BPL	-

End_Ice_Move:				; CODE XREF: Ice_Move+Aj
					; DATA XREF: ROM:HQExplode_JumpTableo
					; ROM:TankStatus_JumpTableo
					; ROM:TankDraw_JumpTableo
					; ROM:Bullet_Status_JumpTableo
					; ROM:BulletGFX_JumpTableo
		RTS			; возвращаемся по RTS
; End of function Ice_Move


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Замораживает врагов, если нужно (обработка движения)

Motion_Handle:				; CODE XREF: Battle_Loop+6p
		LDA	#7
		STA	Counter		; Всего	возможно 8 танков
		LDA	EnemyFreeze_Timer
		BEQ	Skip_TimerOps
		LDA	Frame_Counter
		AND	#63		; Каждую секунду уменьшаем таймер заморозки
		BNE	Skip_TimerOps
		DEC	EnemyFreeze_Timer

Skip_TimerOps:				; CODE XREF: Motion_Handle+7j
					; Motion_Handle+Dj Motion_Handle+49j
		LDX	Counter
		CPX	#2
		BCS	Enemy		; Если > 2, то это враг
		LDA	Frame_Counter
		AND	#1
		BNE	JumpToStatusHandle
		LDA	Frame_Counter
		AND	#3
		BNE	Motion_Handle_Next ; Обрабатываем статусы в
					; определенные фреймы
		JMP	JumpToStatusHandle
; ───────────────────────────────────────────────────────────────────────────

Enemy:					; CODE XREF: Motion_Handle+16j
		LDA	EnemyFreeze_Timer
		BEQ	+
		LDA	Tank_Status,X
		BPL	+
		CMP	#$E0 ; 'р'
		BCC	Motion_Handle_Next

+:					; CODE XREF: Motion_Handle+2Aj
					; Motion_Handle+2Ej
		LDA	Tank_Type,X
		AND	#$F0 ; 'Ё'
		CMP	#$A0		; У БТР	(враг №2) статус обрабатывается	в 2
					; раза чаще, поэтому он	быстрее	ездит
		BEQ	JumpToStatusHandle
		LDA	Counter
		EOR	Frame_Counter
		AND	#1
		BEQ	Motion_Handle_Next

JumpToStatusHandle:			; CODE XREF: Motion_Handle+1Cj
					; Motion_Handle+24j Motion_Handle+3Aj
		JSR	Status_Core	; Выполняет команды jumptable в	зависимости от статуса

Motion_Handle_Next:			; CODE XREF: Motion_Handle+22j
					; Motion_Handle+32j Motion_Handle+42j
		DEC	Counter
		BPL	Skip_TimerOps
		RTS
; End of function Motion_Handle


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Выполняет команды jumptable в	зависимости от статуса

Status_Core:				; CODE XREF: Motion_Handle:JumpToStatusHandlep
		LDA	Tank_Status,X
		LSR	A
		LSR	A
		LSR	A
		AND	#11111110b
		TAY
		LDA	TankStatus_JumpTable,Y
		STA	LowPtr_Byte
		LDA	TankStatus_JumpTable+1,Y
		STA	HighPtr_Byte
		JMP	(LowPtr_Byte)
; End of function Status_Core

; ───────────────────────────────────────────────────────────────────────────

Misc_Status_Handle:			; DATA XREF: ROM:E4A8o
		CPX	#2		; Обрабатывает статусы льда, позицию трека и т.п.
		BCS	LoadStts_Misc_Status_Handle
		LDA	Player_Ice_Status,X
		BPL	LoadStts_Misc_Status_Handle
		AND	#$7F ; ''
		BEQ	LoadStts_Misc_Status_Handle
		DEC	Player_Ice_Status,X
		LDA	Track_Pos,X
		EOR	#4
		STA	Track_Pos,X
		JMP	Check_Obj
; ───────────────────────────────────────────────────────────────────────────

LoadStts_Misc_Status_Handle:		; CODE XREF: ROM:DC54j	ROM:DC59j
					; ROM:DC5Dj
		LDA	Tank_Status,X
		SEC
		SBC	#4
		STA	Tank_Status,X
		AND	#$C
		BNE	End_Misc_Status_Handle
		LDA	#Tank_Status
		JSR	Rise_TankStatus_Bit ; Tank_Status OR А

End_Misc_Status_Handle:			; CODE XREF: ROM:DC74j
		RTS
; ───────────────────────────────────────────────────────────────────────────

Check_TileReach:			; DATA XREF: ROM:E4ACo
		CPX	#2		; Проверяет у врага, достиг ли он конца	тайла
		BCC	Check_Obj
		LDA	Tank_X,X
		AND	#7
		BNE	Check_Obj
		LDA	Tank_Y,X
		AND	#7
		BNE	Check_Obj
		JSR	Get_Random_A	; ГПСЧ,	в А случайное число
		AND	#$F
		BNE	Check_Obj
		JSR	Get_RandomDirection ; Получает случайное направление и сохраняет в статус
		RTS
; ───────────────────────────────────────────────────────────────────────────

Check_Obj:				; CODE XREF: ROM:DC68j	ROM:DC7Ej
					; ROM:DC84j ROM:DC8Aj	ROM:DC91j
		LDA	Tank_Status,X
		AND	#3
		TAY
		LDA	Bullet_Coord_Y_Increment_1,Y
		ASL	A
		ASL	A
		ASL	A
		STA	byte_59
		LDA	Bullet_Coord_Y_Increment_1,Y
		CLC
		ADC	Tank_Y,X
		STA	Block_Y
		LDA	Bullet_Coord_X_Increment_1,Y
		ASL	A
		ASL	A
		ASL	A
		STA	byte_58
		LDA	Bullet_Coord_X_Increment_1,Y
		CLC
		ADC	Tank_X,X
		STA	Block_X
		CLC
		ADC	byte_58
		CLC
		ADC	byte_59
		JSR	Compare_Block_X	; Сравнивает А и BlockX	и если больше, вычитает	1
		TAX
		LDA	Block_Y
		CLC
		ADC	byte_58
		CLC
		ADC	byte_59
		JSR	Compare_Block_Y	; Сравнивает А и BlockY	и если больше, вычитает	1
		TAY
		JSR	GetCoord_InTiles ; В Х и Y на выходе координаты	в тайлах
		LDA	(LowPtr_Byte),Y
		BMI	GetRnd_CheckObj
		BEQ	CheckX_Check_Obj
		CMP	#$20 ; ' '
		BCC	GetRnd_CheckObj

CheckX_Check_Obj:			; CODE XREF: ROM:DCD9j
		LDA	Block_X
		CLC
		ADC	byte_58
		SEC
		SBC	byte_59
		JSR	Compare_Block_X	; Сравнивает А и BlockX	и если больше, вычитает	1
		TAX
		LDA	Block_Y
		CLC
		ADC	byte_59
		SEC
		SBC	byte_58
		JSR	Compare_Block_Y	; Сравнивает А и BlockY	и если больше, вычитает	1
		TAY
		JSR	GetCoord_InTiles ; В Х и Y на выходе координаты	в тайлах
		LDA	(LowPtr_Byte),Y
		BMI	GetRnd_CheckObj
		BEQ	SaveCoord_Check_Obj
		CMP	#$20 ; ' '
		BCC	GetRnd_CheckObj

SaveCoord_Check_Obj:			; CODE XREF: ROM:DCFEj
		LDX	Counter
		LDA	Block_X
		STA	Tank_X,X
		LDA	Block_Y
		STA	Tank_Y,X
		JMP	TrackHandle_CheckObj
; ───────────────────────────────────────────────────────────────────────────

GetRnd_CheckObj:			; CODE XREF: ROM:DCD7j	ROM:DCDDj
					; ROM:DCFCj ROM:DD02j
		LDX	Counter
		CPX	#2
		BCC	TrackHandle_CheckObj
		JSR	Get_Random_A	; ГПСЧ,	в А случайное число
		AND	#3
		BEQ	CheckTile_Check_Obj
		LDA	#$80 ; 'А'
		JSR	Rise_TankStatus_Bit ; Tank_Status OR А
		LDA	#8
		ORA	Tank_Status,X
		STA	Tank_Status,X

TrackHandle_CheckObj:			; CODE XREF: ROM:DD0Ej	ROM:DD15j
		LDA	Track_Pos,X
		EOR	#4
		STA	Track_Pos,X
		RTS
; ───────────────────────────────────────────────────────────────────────────

CheckTile_Check_Obj:			; CODE XREF: ROM:DD1Cj
		LDA	Tank_X,X
		AND	#7
		BNE	Change_Direction_Check_Obj
		LDA	Tank_Y,X
		AND	#7
		BNE	Change_Direction_Check_Obj
		LDA	#$90 ; 'Р'
		JSR	Rise_TankStatus_Bit ; Tank_Status OR А

Change_Direction_Check_Obj:		; CODE XREF: ROM:DD34j	ROM:DD3Aj
		LDA	Tank_Status,X
		EOR	#2
		STA	Tank_Status,X
		RTS
; ───────────────────────────────────────────────────────────────────────────

Get_RandomStatus:			; DATA XREF: ROM:E4AAo
		JSR	Get_Random_A	; В основном, получает случайный статус
		AND	#1
		BEQ	End_Get_RandomStatus
		JSR	Get_Random_A	; ГПСЧ,	в А случайное число
		AND	#1
		BEQ	Sbc_Get_RandomStatus
		LDA	Tank_Status,X
		CLC
		ADC	#1		; Меняем направление на	большее
		JMP	Save_Get_RandomStatus ;	Выделяем направление и сохраняем его в статус
; ───────────────────────────────────────────────────────────────────────────

Sbc_Get_RandomStatus:			; CODE XREF: ROM:DD54j
		LDA	Tank_Status,X
		SEC
		SBC	#1		; Меняем направление на	меньшее

Save_Get_RandomStatus:			; CODE XREF: ROM:DD5Bj
		AND	#3		; Выделяем направление и сохраняем его в статус
		ORA	#Tank_Status
		STA	Tank_Status,X
		RTS
; ───────────────────────────────────────────────────────────────────────────

End_Get_RandomStatus:			; CODE XREF: ROM:DD4Dj
		JSR	Get_RandomDirection ; Получает случайное направление и сохраняет в статус
		RTS

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Сравнивает А и BlockX	и если больше, вычитает	1

Compare_Block_X:			; CODE XREF: ROM:DCC2p	ROM:DCE7p
		CMP	Block_X
		BCC	+
		SEC
		SBC	#1

+:					; CODE XREF: Compare_Block_X+2j
		RTS
; End of function Compare_Block_X


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Сравнивает А и BlockY	и если больше, вычитает	1

Compare_Block_Y:			; CODE XREF: ROM:DCCEp	ROM:DCF3p
		CMP	Block_Y
		BCC	+
		SEC
		SBC	#1

+:					; CODE XREF: Compare_Block_Y+2j
		RTS
; End of function Compare_Block_Y

; ───────────────────────────────────────────────────────────────────────────

Aim_FirstPlayer:			; DATA XREF: ROM:E4B2o
		LDA	Tank_X		; Устанавливает	в качестве цели	врага второго игрока
		STA	AI_X_Aim
		LDA	Tank_Y
		STA	AI_Y_Aim
		JMP	Save_AI_ToStatus
; ───────────────────────────────────────────────────────────────────────────

Aim_ScndPlayer:				; DATA XREF: ROM:E4B0o
		LDA	Tank_X+1	; Устанавливает	в качестве цели	врага первого игрока
		STA	AI_X_Aim
		LDA	Tank_Y+1
		STA	AI_Y_Aim
		JMP	Save_AI_ToStatus
; ───────────────────────────────────────────────────────────────────────────

Aim_HQ:					; DATA XREF: ROM:E4AEo
		LDA	#$78 ; 'x'      ; Устанавливает в качестве целевой координаты штаб
		STA	AI_X_Aim
		LDA	#$D8 ; '╪'
		STA	AI_Y_Aim

Save_AI_ToStatus:			; CODE XREF: ROM:DD86j	ROM:DD91j
		JSR	Load_AI_Status
		STA	Tank_Status,X
		RTS

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Load_AI_Status:				; CODE XREF: Demo_AI+16p Demo_AI+2Cp
					; Demo_AI+42p Demo_AI+58p
					; ROM:Save_AI_ToStatusp
		LDA	AI_X_Aim
;Загружает статус из таблицы в зависимости от расстояния до цели
		SEC
		SBC	Tank_X,X
		JSR	Relation_To_Byte ; Если	>0 возвращает $1. <0 возвращает	$FF
		CLC
		ADC	#1
		STA	AI_X_DifferFlag
		LDA	AI_Y_Aim
		SEC
		SBC	Tank_Y,X
		JSR	Relation_To_Byte ; Если	>0 возвращает $1. <0 возвращает	$FF
		CLC
		ADC	#1
		STA	AI_Y_DifferFlag
		ASL	A
		CLC
		ADC	AI_Y_DifferFlag
		CLC
		ADC	AI_X_DifferFlag
		STA	AI_X_DifferFlag	; X = Y*3 + X
		CPX	#2
		BCS	Load_AIStatus_GetRandom	; Если это враг, получаем его команду из первой
					; или второй части в зависимости от ГПСЧ
		TXA			; У игрока загружать из	первой или из второй части
					; зависит только от времени
		ASL	A
		EOR	Seconds_Counter
		AND	#2
		BEQ	loc_DDE4
		JMP	LoadSecondPart
; ───────────────────────────────────────────────────────────────────────────

Load_AIStatus_GetRandom:		; CODE XREF: Load_AI_Status+25j
		JSR	Get_Random_A	; ГПСЧ,	в А случайное число
		AND	#1
		BEQ	loc_DDE4

LoadSecondPart:				; CODE XREF: Load_AI_Status+2Fj
		LDA	#9
		CLC
		ADC	AI_X_DifferFlag	; Переходим во вторую часть таблицы
		TAY
		JMP	End_Load_AIStatus
; ───────────────────────────────────────────────────────────────────────────

loc_DDE4:				; CODE XREF: Load_AI_Status+2Dj
					; Load_AI_Status+37j
		LDY	AI_X_DifferFlag

End_Load_AIStatus:			; CODE XREF: Load_AI_Status+3Fj
		LDA	AI_Status,Y
		RTS
; End of function Load_AI_Status

; ───────────────────────────────────────────────────────────────────────────

Explode_Handle:				; DATA XREF: ROM:E49Ao	ROM:E49Co
					; ROM:E49Eo ROM:E4A0o	ROM:E4A2o
					; ROM:E4A4o ROM:E4A6o
		DEC	Tank_Status,X	; Обрабатывает взрыв танка (уменьшает число жизней, GameOver...)
		LDA	Tank_Status,X
		AND	#$F
		BNE	End_Explode_Handle
		LDA	Tank_Status,X
		SEC
		SBC	#$10
		BEQ	Skip_Explode_Handle
		CMP	#$10
		BNE	SkipRiseBit_Explode_Handle
		ORA	#6
		JMP	SaveStts_Explode_Handle
; ───────────────────────────────────────────────────────────────────────────

SkipRiseBit_Explode_Handle:		; CODE XREF: ROM:DDFBj
		ORA	#3

SaveStts_Explode_Handle:		; CODE XREF: ROM:DDFFj
		STA	Tank_Status,X
		RTS
; ───────────────────────────────────────────────────────────────────────────

Skip_Explode_Handle:			; CODE XREF: ROM:DDF7j
		STA	Tank_Status,X
		CPX	#2
		BCS	Dec_Enemy_Explode_Handle
		DEC	Player1_Lives,X
		BEQ	CheckHQ_Explode_Handle
		JSR	Make_Respawn
		RTS
; ───────────────────────────────────────────────────────────────────────────

Dec_Enemy_Explode_Handle:		; CODE XREF: ROM:DE0Bj
		DEC	Enemy_Counter	; Количество врагов на экране и	в запасе
		RTS
; ───────────────────────────────────────────────────────────────────────────

CheckHQ_Explode_Handle:			; CODE XREF: ROM:DE0Fj
		LDA	HQ_Status	; 80=штаб цел, если ноль то уничтожен
		CMP	#$80 ; 'А'      ; Штаб цел? $80=цел
		BNE	End_Explode_Handle ; нет
		CPX	#1		; да
		BEQ	Check1pLives_Explode_Handle
		LDA	Player2_Lives
		BEQ	End_Explode_Handle
		LDA	#3		; Если первого игрока уже нет, а у второго остались жизни,
					; Game Over вылезает слева направо
		STA	GameOverScroll_Type ; Определяет вид перемещения надписи(0..3)
		LDA	#$20 ; ' '
		STA	GameOverStr_X
		JSR	Init_GameOver_Properties
		RTS
; ───────────────────────────────────────────────────────────────────────────

Check1pLives_Explode_Handle:		; CODE XREF: ROM:DE20j
		LDA	Player1_Lives
		BEQ	End_Explode_Handle
		LDA	#1		; Если второго игрока нет, а у первого игрока остались жизни,
					; Game Over вылезает справа налево
		STA	GameOverScroll_Type ; Определяет вид перемещения надписи(0..3)
		LDA	#$C0 ; '└'
		STA	GameOverStr_X
		JSR	Init_GameOver_Properties

End_Explode_Handle:			; CODE XREF: ROM:DDF0j	ROM:DE1Cj
					; ROM:DE24j ROM:DE36j
		RTS

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Init_GameOver_Properties:		; CODE XREF: ROM:DE30p	ROM:DE42p
		LDA	#$D
		STA	GameOverStr_Timer ; Инициализируем таймер
		LDA	#$D8 ; '╪'      ; Начинаем выдвигаться снизу
		STA	GameOverStr_Y
		LDA	#0
		STA	Frame_Counter
		RTS
; End of function Init_GameOver_Properties

; ───────────────────────────────────────────────────────────────────────────

Set_Respawn:				; DATA XREF: ROM:E4B6o
		INC	Tank_Status,X	; Устанавливает	в статусе Респаун
		LDA	Tank_Status,X
		AND	#$F
		CMP	#$E
		BNE	End_Set_Respawn
		LDA	#$E0 ; 'р'
		STA	Tank_Status,X

End_Set_Respawn:			; CODE XREF: ROM:DE5Dj
		RTS
; ───────────────────────────────────────────────────────────────────────────

Load_Tank:				; DATA XREF: ROM:E4B4o
		INC	Tank_Status,X	; Загружает нужный тип нового танка, если нужно
		LDA	Tank_Status,X
		AND	#$F
		CMP	#$E
		BNE	End_Load_Tank
		JSR	Load_New_Tank	; Загружает нужный тип нового танка

End_Load_Tank:				; CODE XREF: ROM:DE6Cj
		RTS

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Получает случайное направление и сохраняет в статус

Get_RandomDirection:			; CODE XREF: ROM:DC93p
					; ROM:End_Get_RandomStatusp
		LDA	Respawn_Delay	; Задержка между респаунами врагов
		LSR	A
		LSR	A
		CMP	Seconds_Counter
		BCS	loc_DE7F
		LDA	#$B0 ; '░'
		JMP	loc_DEA2
; ───────────────────────────────────────────────────────────────────────────

loc_DE7F:				; CODE XREF: Get_RandomDirection+6j
		LSR	A
		CMP	Seconds_Counter
		BCC	loc_DE8E
		JSR	Get_Random_A	; ГПСЧ,	в А случайное число
		AND	#3
		ORA	#$A0 ; 'а'      ; Получаем случайное направление и
					; устанавливаем	рабочий	танк
		STA	Tank_Status,X
		RTS
; ───────────────────────────────────────────────────────────────────────────

loc_DE8E:				; CODE XREF: Get_RandomDirection+10j
		LDA	Tank_Status
		BEQ	loc_DE9B
		TXA
		AND	#1
		BEQ	loc_DEA0
		LDA	Tank_Status+1
		BEQ	loc_DEA0

loc_DE9B:				; CODE XREF: Get_RandomDirection+1Ej
		LDA	#$C0 ; '└'
		JMP	loc_DEA2
; ───────────────────────────────────────────────────────────────────────────

loc_DEA0:				; CODE XREF: Get_RandomDirection+23j
					; Get_RandomDirection+27j
		LDA	#$D0 ; '╨'

loc_DEA2:				; CODE XREF: Get_RandomDirection+Aj
					; Get_RandomDirection+2Bj
		JSR	Rise_TankStatus_Bit ; Tank_Status OR А
		RTS
; End of function Get_RandomDirection


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Обрабатывает статусы всех 8-ми танков

TanksStatus_Handle:			; CODE XREF: ROM:C0F9p	ROM:C209p
					; ROM:C244p BonusLevel_ButtonCheck+12p
					; Title_Screen_Loop:+p
		LDA	#0
		STA	Counter

-:					; CODE XREF: TanksStatus_Handle+Fj
		LDX	Counter
		JSR	SingleTankStatus_Handle	; Обрабатывает статус одного танка
		INC	Counter
		LDA	Counter
		CMP	#8		; Всего	на экране может	быть 8 танков
		BNE	-
		RTS
; End of function TanksStatus_Handle


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Обрабатывает статус одного танка

SingleTankStatus_Handle:		; CODE XREF: TanksStatus_Handle+6p
		LDA	Tank_Status,X
		LSR	A
		LSR	A
		LSR	A		; Убираем три младших бита (направление	движения танка)
		AND	#$FE ; '■'      ;  и обнуляем четвертый, чтобы выровнять на 2
					; для дальшейшей адресации в таблице указателей	команд.
					; Таким	образом	4 оставшихся используемых бита статусного байта
					; дают нам 16 возможных	команд
		TAY
		LDA	TankDraw_JumpTable,Y
		STA	LowPtr_Byte
		LDA	TankDraw_JumpTable+1,Y
		STA	HighPtr_Byte
		JMP	(LowPtr_Byte)
; End of function SingleTankStatus_Handle

; ───────────────────────────────────────────────────────────────────────────

Draw_Small_Explode2:			; DATA XREF: ROM:E4C2o	ROM:E4C4o
					; ROM:E4C6o
		LDA	#0		; Сбрасывает в Spr_Buffer 16х16	спрайт взрыва
		STA	Spr_Attrib
		LDA	Tank_Status,X
		PHA
		LDY	Tank_Y,X
		LDA	Tank_X,X
		TAX
		PLA
		JSR	Draw_Bullet_Ricochet ; Сбрасывает в спрайтовый буффер 16х16 спрайт рикошета
		LDA	#$20 ; ' '
		STA	Spr_Attrib
		RTS

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Сбрасывает в спрайтовый буффер 16х16 спрайт рикошета

Draw_Bullet_Ricochet:			; CODE XREF: ROM:DEDAp	ROM:E11Ep
		LSR	A
;В А = Bullet_Status + $40
		LSR	A
		LSR	A
		LSR	A
		SEC
		SBC	#7
		EOR	#$FF
		CLC
		ADC	#1
		ASL	A
		ASL	A		; Получаем смещение на нужный тайл рикошета

Draw_Ricochet:				; CODE XREF: ROM:DF2Bp	ROM:DF3Ep
		CLC			; Непосредственно рисует взрыв 16х16
		ADC	#$F1 ; 'ё'      ; Начало графики рикошета
		STA	Spr_TileIndex
		LDA	#3
		STA	TSA_Pal
		JSR	Draw_WholeSpr	; Cбрасывает в спрайтовый буффер спрайт	16х16. (в Х, Y - координаты)
		RTS
; End of function Draw_Bullet_Ricochet

; ───────────────────────────────────────────────────────────────────────────

Draw_Kill_Points:			; DATA XREF: ROM:E4BAo
		LDA	#0		; Рисует очки на месте взрыва врага
		STA	Spr_Attrib
		LDA	Tank_Type,X
		BEQ	Draw_PlayerKill	; За убийство игрока, очки не рисуют
		LDA	Tank_Type,X
		LSR	A
		LSR	A
		LSR	A
		AND	#$FC ; '№'
		SEC
		SBC	#$10
		CLC			; Определяем количество	очков в
					; зависимости от типа убитого врага
		ADC	#$B9 ; '╣'      ; Начало графики очков
		STA	Spr_TileIndex
		LDA	#3
		STA	TSA_Pal
		LDY	Tank_Y,X
		LDA	Tank_X,X
		TAX
		JSR	Draw_WholeSpr	; Cбрасывает в спрайтовый буффер спрайт	16х16. (в Х, Y - координаты)
		JMP	Draw_Kill_Points_Skip
; ───────────────────────────────────────────────────────────────────────────

Draw_PlayerKill:			; CODE XREF: ROM:DF03j
		LDA	Tank_Y,X
		TAY
		LDA	Tank_X,X
		TAX
		LDA	#0
		JSR	Draw_Ricochet	; Рисуем самый первый тип взрыва

Draw_Kill_Points_Skip:			; CODE XREF: ROM:DF20j
		LDA	#$20 ; ' '
		STA	Spr_Attrib
		RTS
; ───────────────────────────────────────────────────────────────────────────

Draw_Small_Explode1:			; DATA XREF: ROM:E4BCo
		LDA	#0		; Взрыв	16х16
		STA	Spr_Attrib
		LDY	Tank_Y,X
		LDA	Tank_X,X
		TAX
		LDA	#8
		JSR	Draw_Ricochet	; Непосредственно рисует взрыв 16х16
		LDA	#$20 ; ' '
		STA	Spr_Attrib	; Танк за фоном	(случай, когда спрайт пересекается с лесом)
		RTS
; ───────────────────────────────────────────────────────────────────────────

Draw_Big_Explode:			; DATA XREF: ROM:E4BEo	ROM:E4C0o
		LDA	#3		; Сбрасывает в Spr_Buffer большой взрыв
		STA	TSA_Pal
		LDA	#0
		STA	Spr_Attrib
		JSR	Set_SprIndex
		TXA
		SEC
		SBC	#8
		TAX
		TYA
		SEC
		SBC	#8
		TAY
		JSR	Draw_WholeSpr	; Cбрасывает в спрайтовый буффер спрайт	16х16. (в Х, Y - координаты)
		LDA	#1
		JSR	Set_SprIndex
		TXA
		CLC
		ADC	#8
		TAX
		TYA
		SEC
		SBC	#8
		TAY
		JSR	Draw_WholeSpr	; Cбрасывает в спрайтовый буффер спрайт	16х16. (в Х, Y - координаты)
		LDA	#2
		JSR	Set_SprIndex
		TXA
		SEC
		SBC	#8
		TAX
		TYA
		CLC
		ADC	#8
		TAY
		JSR	Draw_WholeSpr	; Cбрасывает в спрайтовый буффер спрайт	16х16. (в Х, Y - координаты)
		LDA	#3
		JSR	Set_SprIndex
		TXA
		CLC
		ADC	#8
		TAX
		TYA
		CLC
		ADC	#8
		TAY
		JSR	Draw_WholeSpr	; Cбрасывает в спрайтовый буффер спрайт	16х16. (в Х, Y - координаты)
		LDA	#$20 ; ' '
		STA	Spr_Attrib
		RTS

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Set_SprIndex:				; CODE XREF: ROM:DF4Ep	ROM:DF60p
					; ROM:DF72p ROM:DF84p
		LDX	Counter
		ASL	A
		ASL	A
		CLC
		ADC	#$D1 ; '╤'
		STA	Temp
		LDA	Tank_Status,X
		AND	#$F0 ; 'Ё'
		SEC
		SBC	#$30 ; '0'
		EOR	#$10
		CLC
		ADC	Temp
		STA	Spr_TileIndex
		LDY	Tank_Y,X
		LDA	Tank_X,X
		TAX
		RTS
; End of function Set_SprIndex

; ───────────────────────────────────────────────────────────────────────────

OperatingTank:				; DATA XREF: ROM:E4C8o	ROM:E4CAo
					; ROM:E4CCo ROM:E4CEo	ROM:E4D0o
					; ROM:E4D2o
		CPX	#2		; Непосредственно устанавливает	в Spr_Tile_Index нужный	танк
		BCC	OperTank_Player
		LDA	Tank_Type,X	; Танк вражеский
		AND	#4		; Выделяем флаг	бонуса
		BEQ	OperTank_NotBonus
		LDA	Frame_Counter
		LSR	A
		LSR	A
		LSR	A
		AND	#1
		CLC
		ADC	#2
		JMP	OperTank_Draw	; Обеспечивает смену палитры для бонусного танка
; ───────────────────────────────────────────────────────────────────────────

OperTank_NotBonus:			; CODE XREF: ROM:DFBEj
		LDA	Frame_Counter
		ASL	A
		ASL	A
		CLC
		ADC	Tank_Type,X
		AND	#7
		TAY			; Вычисляет палитру для	текущего танка
		LDA	TankType_Pal,Y	; 8 типов танков используют соответствующие спрайтовые палитры
		JMP	OperTank_Draw
; ───────────────────────────────────────────────────────────────────────────

OperTank_Player:			; CODE XREF: ROM:DFB8j
		LDA	Player_Blink_Timer,X ; Таймер мигания friendly fire
		BEQ	OperTank_Skip
		LDA	Frame_Counter
		AND	#8		; Мигание 4 раза в секунду
		BEQ	OperTank_Skip
		RTS
; ───────────────────────────────────────────────────────────────────────────

OperTank_Skip:				; CODE XREF: ROM:DFDFj	ROM:DFE5j
		TXA

OperTank_Draw:				; CODE XREF: ROM:DFCAj	ROM:DFDAj
		STA	TSA_Pal
		LDA	Tank_Status,X
		AND	#3
		PHA
		LDA	Tank_Type,X
		AND	#$F0 ; 'Ё'
		CLC
		ADC	Track_Pos,X
		STA	Spr_TileIndex
		LDY	Tank_Y,X
		LDA	Tank_X,X
		TAX
		PLA
		JSR	Spr_TileIndex_Add ; Spr_TileIndex + (A * 8)
		RTS
; ───────────────────────────────────────────────────────────────────────────
TankType_Pal:	.BYTE 2, 0, 0, 1, 2, 1,	2, 2 ; DATA XREF: ROM:DFD7r
					; 8 типов танков используют соответствующие спрайтовые палитры
; ───────────────────────────────────────────────────────────────────────────

Respawn:				; DATA XREF: ROM:E4D4o	ROM:E4D6o
		LDA	Tank_Status,X
		AND	#$F
		SEC
		SBC	#7
		BPL	loc_E019
		EOR	#$FF
		CLC
		ADC	#1

loc_E019:				; CODE XREF: ROM:E012j
		ASL	A
		AND	#$FC ; '№'
		CLC
		ADC	#$A1 ; 'б'      ; C $A0 в Pattern Table начинается графика респауна
		STA	Spr_TileIndex
		LDA	#3
		STA	TSA_Pal		; Респаун будет	на 03 палитре
		LDY	Tank_Y,X
		LDA	Tank_X,X
		TAX
		JSR	Draw_WholeSpr	; Cбрасывает в спрайтовый буффер спрайт	16х16. (в Х, Y - координаты)
		RTS

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Обрабатывает статусы всех пуль

AllBulletsStatus_Handle:		; CODE XREF: Battle_Loop+Cp
		LDA	#9
		STA	Counter		; Обрабатываем 10 пуль (8 + 2дополнительных)

-:					; CODE XREF: AllBulletsStatus_Handle+Bj
		LDX	Counter
		JSR	BulletStatus_Handle ; Изменяет статусы пули под	её состояние
		DEC	Counter
		BPL	-
		RTS
; End of function AllBulletsStatus_Handle


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Изменяет статусы пули	под её состояние

BulletStatus_Handle:			; CODE XREF: AllBulletsStatus_Handle+6p
		LDA	Bullet_Status,X
		LSR	A
		LSR	A
		LSR	A
		AND	#$FE ; '■'      ; убираем три младших бита и обнуляем четвертый
		TAY
		LDA	Bullet_Status_JumpTable,Y
		STA	LowPtr_Byte
		LDA	Bullet_Status_JumpTable+1,Y
		STA	HighPtr_Byte
		JMP	(LowPtr_Byte)
; End of function BulletStatus_Handle

; ───────────────────────────────────────────────────────────────────────────

Bullet_Move:				; DATA XREF: ROM:E4E0o
		LDA	Bullet_Status,X	; Двигает пулю в соответствии с	Bullet_Status
		AND	#3		; Выделяем направление
		TAY
		JSR	Change_BulletCoord ; Изменяет координату пули в	соответствии с направлением
		LDA	Bullet_Property,X ; Скорость и бронебойность
		AND	#1
		BEQ	End_Bullet_Move	; Если выставлен флаг, меняем координату два раза
		JSR	Change_BulletCoord ; Изменяет координату пули в	соответствии с направлением

End_Bullet_Move:			; CODE XREF: ROM:E05Dj
		RTS

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Изменяет координату пули в соответствии с направлением

Change_BulletCoord:			; CODE XREF: ROM:E056p	ROM:E05Fp
		LDA	Bullet_Coord_X_Increment_1,Y
;в Y номер направления
		ASL	A
		CLC
		ADC	Bullet_X,X
		STA	Bullet_X,X
		LDA	Bullet_Coord_Y_Increment_1,Y
		ASL	A
		CLC
		ADC	Bullet_Y,X
		STA	Bullet_Y,X
		RTS
; End of function Change_BulletCoord

; ───────────────────────────────────────────────────────────────────────────

Make_Ricochet:				; DATA XREF: ROM:E4DAo	ROM:E4DCo
					; ROM:E4DEo
		DEC	Bullet_Status,X	; Меняет статус	пули под анимацию рикошета
		LDA	Bullet_Status,X	; Уменьшаем счетчик фреймов одного кадра
		AND	#$F
		BNE	End_Animate_Ricochet ; Если текущий кадр еще не	надо обновлять,	выходим
		LDA	Bullet_Status,X
		AND	#$F0 ; 'Ё'
		SEC
		SBC	#$10		; Переходим к следующему кадру рикошета
		BEQ	Skip_Animate_Ricochet
		ORA	#3		; 3 фрейма будет держаться новый кадр

Skip_Animate_Ricochet:			; CODE XREF: ROM:E085j
		STA	Bullet_Status,X

End_Animate_Ricochet:			; CODE XREF: ROM:E07Cj
		RTS

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Выпускает пулю (меняет её статус и свойства)

Make_Shot:				; CODE XREF: Make_Player_Shot:+p
					; Make_Enemy_Shot+16p
		LDA	Bullet_Status,X
		BNE	End_Make_Shot	; Если пуля уже	выпущена, выходим
		CPX	#2
		BCS	+		; Выстрелы врагов не звучат
		LDA	#1
		STA	Snd_Shoot

+:					; CODE XREF: Make_Shot+6j
		LDA	Tank_Status,X
		AND	#3
		TAY
		ORA	#$40 ; '@'
		STA	Bullet_Status,X	; Выставляем в статусе пули направление
					; танка	и статус полета
		LDA	Bullet_Coord_X_Increment_1,Y
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	Tank_X,X
		STA	Bullet_X,X
		LDA	Bullet_Coord_Y_Increment_1,Y
		ASL	A
		ASL	A
		ASL	A
		CLC
		ADC	Tank_Y,X
		STA	Bullet_Y,X	; Пуля рисуется	вне танка
		LDA	#0
		STA	Bullet_Property,X ; Скорость и бронебойность
		LDA	Tank_Type,X
		AND	#$F0 ; 'Ё'
		BEQ	End_Make_Shot	; Если танк простой, выходим сразу
		CMP	#$C0 ; '└'
		BEQ	QuickBullet_End_Make_Shot ; 6-й	тип танка (враг) быстро	стреляет
		CMP	#$60 ; '`'
		BEQ	++
		AND	#$80 ; 'А'      ; Если танк игрока бонусный,
					; у него быстрые пули
		BNE	End_Make_Shot

QuickBullet_End_Make_Shot:		; CODE XREF: Make_Shot+38j
		LDA	#1
		STA	Bullet_Property,X ; Скорость и бронебойность
		RTS
; ───────────────────────────────────────────────────────────────────────────

++:					; CODE XREF: Make_Shot+3Cj
		LDA	#3
		STA	Bullet_Property,X ; Если игрок стал танком последнего типа,
					; у него быстрые бронебойные пули

End_Make_Shot:				; CODE XREF: Make_Shot+2j
					; Make_Shot+34j Make_Shot+40j
		RTS
; End of function Make_Shot


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует все пули

Draw_All_BulletGFX:			; CODE XREF: ROM:C206p	ROM:C247p
					; BonusLevel_ButtonCheck+15p
		LDA	#9
		STA	Counter		; 10 пуль

-:					; CODE XREF: Draw_All_BulletGFX+Bj
		LDX	Counter
		JSR	Draw_BulletGFX	; Рисует пулю в	зависимости от статуса
		DEC	Counter
		BPL	-
		RTS
; End of function Draw_All_BulletGFX


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует пулю в	зависимости от статуса

Draw_BulletGFX:				; CODE XREF: Draw_All_BulletGFX+6p
		LDA	Bullet_Status,X
		LSR	A
		LSR	A
		LSR	A
		AND	#$FE ; '■'
		TAY
		LDA	BulletGFX_JumpTable,Y
		STA	LowPtr_Byte
		LDA	BulletGFX_JumpTable+1,Y
		STA	HighPtr_Byte
		JMP	(LowPtr_Byte)
; End of function Draw_BulletGFX

; ───────────────────────────────────────────────────────────────────────────

Draw_Bullet:				; DATA XREF: ROM:E4EAo
		LDA	Bullet_Status,X	; Сбрасывает в буффер спрайт пули
		AND	#3
		PHA			; Выделяем направление
		LDY	Bullet_Y,X
		LDA	Bullet_X,X
		TAX
		LDA	#2
		STA	TSA_Pal
		LDA	#$B1 ; '▒'      ; Начало графики пули
		STA	Spr_TileIndex
		PLA
		JSR	Indexed_SaveSpr	; Сбрасывает в SprBuffer спрайт	8х16 со	смещением в А
		RTS
; ───────────────────────────────────────────────────────────────────────────

Update_Ricochet:			; DATA XREF: ROM:E4E4o	ROM:E4E6o
					; ROM:E4E8o
		LDA	Bullet_Status,X	; Рисует рикошет в нужном месте
		PHA
		LDY	Bullet_Y,X
		LDA	Bullet_X,X
		TAX
		PLA
		CLC
		ADC	#$40 ; '@'
		JSR	Draw_Bullet_Ricochet ; Сбрасывает в спрайтовый буффер 16х16 спрайт рикошета
		RTS

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Делает выстрел игрока, если нажата кнопка

Make_Player_Shot:			; CODE XREF: Battle_Loop+15p
		LDA	#1
;Учитывает свойство бонусного танка
;стрелять двумя	пулями подряд
		STA	Counter		; Обрабатываем только игроков

-:					; CODE XREF: Make_Player_Shot+3Dj
		LDX	Counter
		LDA	Tank_Status,X
		BPL	Next_Jump_Make_Shot ; Если танк	взорван, не обрабатываем его
		CMP	#$E0 ; 'р'
		BCS	Next_Jump_Make_Shot ; Если танк	респаунится, не	обрабатываем его
		LDA	Joypad1_Differ,X
		AND	#11b
		BEQ	Next_Jump_Make_Shot ; Если не нажата кнопка огня, не обрабатываем игрока
		LDA	Tank_Type,X
		AND	#$C0 ; '└'
		CMP	#$40 ; '@'
		BNE	+		; Если танк игрока не второй бонусный,
					; делаем простой выстрел
		LDA	Bullet_Status,X
		BEQ	+		; Если пули на экране нет,
					; делаем простой выстрел
		LDA	Bullet_Status+8,X
		BNE	Next_Jump_Make_Shot ; Если дополнительная пуля уже выпущена,
					; еще одну не выпускаем
		LDA	Bullet_Status,X
		STA	Bullet_Status+8,X
		LDA	Bullet_X,X
		STA	Bullet_X+8,X
		LDA	Bullet_Y,X
		STA	Bullet_Y+8,X
		LDA	Bullet_Property,X ; Скорость и бронебойность
		STA	Bullet_Property+8,X ; Копируем все свойства пули в
					; ячейку для дополнительной пули
		LDA	#0
		STA	Bullet_Status,X

+:					; CODE XREF: Make_Player_Shot+1Aj
					; Make_Player_Shot+1Ej
		JSR	Make_Shot	; Выпускает пулю (меняет её статус и свойства)

Next_Jump_Make_Shot:			; CODE XREF: Make_Player_Shot+8j
					; Make_Player_Shot+Cj
					; Make_Player_Shot+12j
					; Make_Player_Shot+22j
		DEC	Counter
		BPL	-
		RTS
; End of function Make_Player_Shot


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Производит выстрел, используя	случайные числа

Make_Enemy_Shot:			; CODE XREF: Battle_Loop+18p
		LDA	EnemyFreeze_Timer
		BNE	End_Make_Enemy_Shot
		LDX	#7		; Начинаем с первого вражеского	танка

loc_E169:				; CODE XREF: Make_Enemy_Shot+1Cj
		LDA	Tank_Status,X
		BPL	Next_Make_Enemy_Shot
		CMP	#$E0 ; 'р'      ; Если танк взорван или респаунится,
					; не обрабатываем его
		BCS	Next_Make_Enemy_Shot
		JSR	Get_Random_A	; ГПСЧ,	в А случайное число
		AND	#$1F
		BNE	Next_Make_Enemy_Shot
		JSR	Make_Shot	; Выпускает пулю (меняет её статус и свойства)

Next_Make_Enemy_Shot:			; CODE XREF: Make_Enemy_Shot+9j
					; Make_Enemy_Shot+Dj
					; Make_Enemy_Shot+14j
		DEX
		CPX	#1		; Игроков не обрабатываем
		BNE	loc_E169

End_Make_Enemy_Shot:			; CODE XREF: Make_Enemy_Shot+3j
		RTS
; End of function Make_Enemy_Shot


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Обрабатывает игрока, если тот	на льду

Ice_Detect:				; CODE XREF: Battle_Loopp
		LDA	#7
		STA	Counter		; Будет	обработано 8 танков

-:					; CODE XREF: Ice_Detect+6Fj
		LDX	Counter
		LDA	Tank_Status,X	; Если танк взорван, не	обрабатываем его
		BPL	Next_Tank
		CMP	#$E0 ; 'р'
		BCS	Next_Tank	; Если танк зарождается, не обрабатываем его
		LDA	Tank_Y,X
		SEC
		SBC	#8
		TAY
		LDA	Tank_X,X
		SEC
		SBC	#8
		TAX
		JSR	GetCoord_InTiles ; В Х и Y на выходе координаты	в тайлах
		LDX	Counter
		LDA	LowPtr_Byte
		STA	NTAddr_Coord_Lo,X
		LDA	HighPtr_Byte
		AND	#3
		STA	NTAddr_Coord_Hi,X
		LDY	#$21 ; '!'
		CPX	#2
		BCS	++		; Если это враг, ледовые свойства не обрабатываем
		LDA	(LowPtr_Byte),Y
		CMP	#$21 ; '!'      ; Проверка на лёд под танком (чтение из NT_Buffer)
		BNE	+
		LDA	#$80 ; 'А'
		ORA	Player_Ice_Status,X
		STA	Player_Ice_Status,X ; Выставляем флаг льда
		JMP	++
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: Ice_Detect+33j
		LDA	Player_Ice_Status,X
		AND	#$7F ; ''
		STA	Player_Ice_Status,X ; Убираем флаг льда

++:					; CODE XREF: Ice_Detect+2Dj
					; Ice_Detect+3Dj
		JSR	Rise_Nt_HighBit	; Выcтавляет старший бит у индекса тайла в NT_Buffer
		LDA	Tank_X,X
		AND	#7
		BNE	loc_E1DD
		LDA	NTAddr_Coord_Hi,X
		ORA	#$80 ; 'А'      ; Каждый тайл переключается старший бит
		STA	NTAddr_Coord_Hi,X
		LDY	#$20 ; ' '
		JSR	Rise_Nt_HighBit	; Выcтавляет старший бит у индекса тайла в NT_Buffer

loc_E1DD:				; CODE XREF: Ice_Detect+4Fj
		LDA	Tank_Y,X
		AND	#7
		BNE	Next_Tank
		LDA	NTAddr_Coord_Hi,X
		ORA	#$40 ; '@'
		STA	NTAddr_Coord_Hi,X
		LDY	#1
		JSR	Rise_Nt_HighBit	; Выcтавляет старший бит у индекса тайла в NT_Buffer

Next_Tank:				; CODE XREF: Ice_Detect+8j
					; Ice_Detect+Cj Ice_Detect+60j
		DEC	Counter
		BPL	-
		RTS
; End of function Ice_Detect


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Выcтавляет старший бит у индекса тайла в NT_Buffer

Rise_Nt_HighBit:			; CODE XREF: Ice_Detect:++p
					; Ice_Detect+59p Ice_Detect+6Ap
		LDA	(LowPtr_Byte),Y
		ORA	#$80 ; 'А'
		STA	(LowPtr_Byte),Y
		RTS
; End of function Rise_Nt_HighBit


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


HideHiBit_Under_Tank:			; CODE XREF: Battle_Loop+9p
		LDA	#7
		STA	Counter		; Обрабатывается 8 танков

-:					; CODE XREF: HideHiBit_Under_Tank+37j
		LDX	Counter
		LDA	Tank_Status,X
		BPL	++
		CMP	#$E0 ; 'р'
		BCS	++		; Если танк взорван или	респаунится,
					; переходим к следующему
		LDA	NTAddr_Coord_Lo,X
		STA	LowPtr_Byte
		LDA	NTAddr_Coord_Hi,X
		AND	#3
		ORA	#4
		STA	HighPtr_Byte
		LDY	#$21 ; '!'
		JSR	HideHiBit_InBuffer ; Убирает старший бит из (LowPtrByte)
		LDA	NTAddr_Coord_Hi,X
		AND	#$80 ; 'А'
		BEQ	+
		LDY	#$20 ; ' '
		JSR	HideHiBit_InBuffer ; Убирает старший бит из (LowPtrByte)

+:					; CODE XREF: HideHiBit_Under_Tank+23j
		LDA	NTAddr_Coord_Hi,X
		AND	#$40 ; '@'
		BEQ	++
		LDY	#1
		JSR	HideHiBit_InBuffer ; Убирает старший бит из (LowPtrByte)

++:					; CODE XREF: HideHiBit_Under_Tank+8j
					; HideHiBit_Under_Tank+Cj
					; HideHiBit_Under_Tank+2Ej
		DEC	Counter
		BPL	-
		RTS
; End of function HideHiBit_Under_Tank


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Убирает старший бит из (LowPtrByte)

HideHiBit_InBuffer:			; CODE XREF: HideHiBit_Under_Tank+1Cp
					; HideHiBit_Under_Tank+27p
					; HideHiBit_Under_Tank+32p
		LDA	(LowPtr_Byte),Y
		AND	#$7F ; ''
		STA	(LowPtr_Byte),Y
		RTS
; End of function HideHiBit_InBuffer


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует или пустоту или бонус или очки	за бонус

Bonus_Draw:				; CODE XREF: ROM:Skip_Battle_Loopp
					; ROM:C241p BonusLevel_ButtonCheck+Fp
		LDA	Bonus_X
		BEQ	End_Bonus_Draw	; Если бонуса нет, выходим
					;
					; В процедуре: если бонус не взят (показан
					; бонус) счетчик времени обнулён, если
					; бонус	взят (показываются очки), счетчик
					; снижается с $32 до нуля
		LDA	BonusPts_TimeCounter
		BEQ	Bonus_NotTaken	; бонус	пока не	взят
		DEC	BonusPts_TimeCounter ; Бонус взят и появились
					; очки за него
		BNE	NotZeroCounter
		LDA	#0
		STA	Bonus_X		; Убираем очки за
					; бонус	с экрана
		JMP	End_Bonus_Draw
; ───────────────────────────────────────────────────────────────────────────

NotZeroCounter:				; CODE XREF: Bonus_Draw+Aj
		LDA	#2
		STA	TSA_Pal		; Очки используют палитру спрайтов 2
		LDA	#$3B ; ';'      ; Тайлы очков за бонус
					; (500)	равен $3A
		STA	Spr_TileIndex
		JMP	Draw_Bonus
; ───────────────────────────────────────────────────────────────────────────

Bonus_NotTaken:				; CODE XREF: Bonus_Draw+6j
		LDA	Frame_Counter	; бонус	пока не	взят
		AND	#8
		BEQ	End_Bonus_Draw
		LDA	#2
		STA	TSA_Pal		; Бонус	использует палитру спрайтов 2
		LDA	Bonus_Number	; Определяет тип бонуса
		ASL	A
		ASL	A		; Умножаем на 4	(бонус из 4 тайлов)
		CLC
		ADC	#$81 ; 'Б'      ; первый индекс тайла бонуса равен $80
		STA	Spr_TileIndex

Draw_Bonus:				; CODE XREF: Bonus_Draw+1Bj
		LDX	Bonus_X
		LDY	Bonus_Y
		LDA	#0
		STA	Spr_Attrib
		JSR	Draw_WholeSpr	; Cбрасывает в спрайтовый буффер спрайт	16х16. (в Х, Y - координаты)
		LDA	#$20 ; ' '
		STA	Spr_Attrib

End_Bonus_Draw:				; CODE XREF: Bonus_Draw+2j
					; Bonus_Draw+10j Bonus_Draw+22j
		RTS
; End of function Bonus_Draw


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует силовое поле, если нужно

Invisible_Timer_Handle:			; CODE XREF: Battle_Loop+12p
		LDA	#1
		STA	Counter		; Обрабатываем только игроков

-:					; CODE XREF: Invisible_Timer_Handle+2Aj
		LDX	Counter
		LDA	Invisible_Timer,X ; Силовое поле вокруг	игрока после рождения
		BEQ	Next_Invisible_Timer_Handle ; Если у танка нет поля, не	обрабатываем
		LDA	Frame_Counter
		AND	#63
		BNE	+		; Каждую секунду уменьшаем таймер
		DEC	Invisible_Timer,X ; Силовое поле вокруг	игрока после рождения

+:					; CODE XREF: Invisible_Timer_Handle+Ej
		LDA	#2
		STA	TSA_Pal
		LDY	Tank_Y,X
		LDA	Tank_X,X
		TAX
		LDA	Frame_Counter
		AND	#2
		ASL	A		; Каждые 2 фрейма меняем кадр поля
					; (преобразует номер фрейма в первый индекс
					; 16х16	тайла силового поля)
		CLC
		ADC	#$29 ; ')'      ; Начальный индекс тайла графики силового поля
		STA	Spr_TileIndex
		JSR	Draw_WholeSpr	; Cбрасывает в спрайтовый буффер спрайт	16х16. (в Х, Y - координаты)

Next_Invisible_Timer_Handle:		; CODE XREF: Invisible_Timer_Handle+8j
		DEC	Counter
		BPL	-
		RTS
; End of function Invisible_Timer_Handle


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Обрабатывает статус и	броню штаба

HQ_Handle:				; CODE XREF: Battle_Loop+Fp
		LDA	HQArmour_Timer	; Таймер брони вокруг штаба
		BEQ	HQ_Explode_Handle
		LDA	Frame_Counter
		AND	#$F
		BNE	HQ_Explode_Handle ; Обрабатываем 4 раза	в секунду
		LDA	Frame_Counter
		AND	#63
		BNE	Skip_DecHQTimer	; Каждую секунду уменьшаем
					; таймер брони штаба
		DEC	HQArmour_Timer	; Таймер брони вокруг штаба
		BEQ	Normal_HQ_Handle ; Если	таймер кончился, рисуем	простой	штаб

Skip_DecHQTimer:			; CODE XREF: HQ_Handle+Ej
		LDA	HQArmour_Timer	; Таймер брони вокруг штаба
		CMP	#4
		BCS	HQ_Explode_Handle ; За 4 секунды до истечения таймера брони штаба,
					; броня	начинает мигать
		LDA	Frame_Counter
		AND	#$10		; Мигание с частотой в 16 фреймов
					; (4 раза в секунду)
		BEQ	Normal_HQ_Handle
		JSR	Draw_ArmourHQ	; Рисует штаб с	броней
		JMP	HQ_Explode_Handle
; ───────────────────────────────────────────────────────────────────────────

Normal_HQ_Handle:			; CODE XREF: HQ_Handle+12j
					; HQ_Handle+1Ej
		JSR	DraW_Normal_HQ	; Рисует штаб с	кирпичами

HQ_Explode_Handle:			; CODE XREF: HQ_Handle+2j HQ_Handle+8j
					; HQ_Handle+18j HQ_Handle+23j
		LDA	HQ_Status	; 80=штаб цел, если ноль то уничтожен
		BEQ	End_HQ_Handle	; Если штаба уже нет, не обрабатываем его взрыв
		BMI	End_HQ_Handle	; Если штаб цел, не обрабатываем его взрыв
		LDA	#3
		STA	TSA_Pal
		DEC	HQ_Status	; 80=штаб цел, если ноль то уничтожен
		LDA	HQ_Status	; 80=штаб цел, если ноль то уничтожен
		LSR	A
		LSR	A		; 4 фрейма держится каждый кадр	анимации взрыва
		SEC
		SBC	#5
		BPL	+
		EOR	#$FF
		CLC
		ADC	#1

+:					; CODE XREF: HQ_Handle+3Cj
		SEC
		SBC	#5
		BPL	++		; Указатели двухбайтовые
		EOR	#$FF
		CLC
		ADC	#1		; Кадры	анимации увеличиваются до 5, а затем снижаются

++:					; CODE XREF: HQ_Handle+46j
		ASL	A		; Указатели двухбайтовые
		TAY
		LDA	HQExplode_JumpTable,Y
		STA	LowPtr_Byte
		LDA	HQExplode_JumpTable+1,Y
		STA	HighPtr_Byte
		JMP	(LowPtr_Byte)
; ───────────────────────────────────────────────────────────────────────────

End_HQ_Handle:				; CODE XREF: HQ_Handle+2Bj
					; HQ_Handle+2Dj
		RTS
; End of function HQ_Handle

; ───────────────────────────────────────────────────────────────────────────
;Таблица выводов спрайтов взрыва штаба (всего пять кадров анимации)
HQExplode_JumpTable:.WORD End_Ice_Move	; DATA XREF: HQ_Handle+4Fr
					; HQ_Handle+54r
					; возвращаемся по RTS
		.WORD FirstExplode_Pic	; Первый кадр 16х16 взрыва
		.WORD SecondExplode_Pic	; Второй кадр 16х16 взрыва
		.WORD ThirdExplode_Pic	; Третий кадр 16х16 взрыва
		.WORD FourthExplode_Pic	; Взрыв	32х32 поменьше
		.WORD FifthExplode_Pic	; Самый	большой	32х32 взрыв
; ───────────────────────────────────────────────────────────────────────────

FirstExplode_Pic:			; DATA XREF: ROM:E308o
		LDA	#$F1 ; 'ё'      ; Первый кадр 16х16 взрыва
		JMP	Draw_HQSmallExplode
; ───────────────────────────────────────────────────────────────────────────

SecondExplode_Pic:			; DATA XREF: ROM:E30Ao
		LDA	#$F5 ; 'ї'      ; Второй кадр 16х16 взрыва
		JMP	Draw_HQSmallExplode
; ───────────────────────────────────────────────────────────────────────────

ThirdExplode_Pic:			; DATA XREF: ROM:E30Co
		LDA	#$F9 ; '∙'      ; Третий кадр 16х16 взрыва

Draw_HQSmallExplode:			; CODE XREF: ROM:E314j	ROM:E319j
		LDX	#$78 ; 'x'
		LDY	#$D8 ; '╪'      ; Координаты места взрыва штаба
; START	OF FUNCTION CHUNK FOR Add_ExplodeSprBase

Draw_SmallExplode:			; CODE XREF: Add_ExplodeSprBase+3j
		STA	Spr_TileIndex
		JSR	Draw_WholeSpr	; Cбрасывает в спрайтовый буффер спрайт	16х16. (в Х, Y - координаты)
		RTS
; END OF FUNCTION CHUNK	FOR Add_ExplodeSprBase

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Add_ExplodeSprBase:			; CODE XREF: Draw_BigExplode+6p
					; Draw_BigExplode+Fp
					; Draw_BigExplode+18p
					; Draw_BigExplode+21p

; FUNCTION CHUNK AT E322 SIZE 00000006 BYTES

		CLC
		ADC	HQExplode_SprBase
		JMP	Draw_SmallExplode
; End of function Add_ExplodeSprBase

; ───────────────────────────────────────────────────────────────────────────

FourthExplode_Pic:			; DATA XREF: ROM:E30Eo
		LDA	#0		; Взрыв	32х32 поменьше
		STA	HQExplode_SprBase
		JSR	Draw_BigExplode	; Рисует 32х32 спрайт взрыва
		RTS
; ───────────────────────────────────────────────────────────────────────────

FifthExplode_Pic:			; DATA XREF: ROM:E310o
		LDA	#$10		; Самый	большой	32х32 взрыв
		STA	HQExplode_SprBase
		JSR	Draw_BigExplode	; Рисует 32х32 спрайт взрыва
		RTS

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Рисует 32х32 спрайт взрыва

Draw_BigExplode:			; CODE XREF: ROM:E332p	ROM:E33Ap
		LDX	#$70 ; 'p'
		LDY	#$D0 ; '╨'
		LDA	#$D1 ; '╤'
		JSR	Add_ExplodeSprBase
		LDX	#$80 ; 'А'
		LDY	#$D0 ; '╨'
		LDA	#$D5 ; '╒'
		JSR	Add_ExplodeSprBase
		LDX	#$70 ; 'p'
		LDY	#$E0 ; 'р'
		LDA	#$D9 ; '┘'
		JSR	Add_ExplodeSprBase
		LDX	#$80 ; 'А'
		LDY	#$E0 ; 'р'
		LDA	#$DD ; '▌'
		JSR	Add_ExplodeSprBase
		RTS
; End of function Draw_BigExplode


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Make_Respawn:				; CODE XREF: SetUp_LevelVARs+16p
					; SetUp_LevelVARs+1Fp
					; Respawn_Handle+19p ROM:DE11p
		LDA	#0
;Изначально танк игрока	обычный
		STA	Tank_Type,X	; x = 0..1 - рассматривается тип игрока
					;    x = 2..5 -	рассматриваются	вражеские типы
		CPX	#2
		BCS	Enemy_Operations ; Если	>= 2, то это враг
		LDA	X_Player_Respawn,X
		STA	Tank_X,X
		LDA	Y_Player_Respawn,X
		STA	Tank_Y,X
		LDA	#0		; Игрок	не должен мигать
					; во время респауна
		STA	Player_Blink_Timer,X ; Таймер мигания friendly fire
		JMP	++		; Танк будет зарождаться
; ───────────────────────────────────────────────────────────────────────────

Enemy_Operations:			; CODE XREF: Make_Respawn+6j
		INC	EnemyRespawn_PlaceIndex
		LDY	EnemyRespawn_PlaceIndex
		CPY	#3		; 3 возможных места респауна
		BNE	+
		LDA	#0
		STA	EnemyRespawn_PlaceIndex
		TAY

+:					; CODE XREF: Make_Respawn+1Fj
		LDA	X_Enemy_Respawn,Y
		STA	Tank_X,X
		LDA	Y_Enemy_Respawn,Y
		STA	Tank_Y,X
		LDA	Enemy_Reinforce_Count ;	Количество врагов в запасе
		CMP	#3		; Бонусный танк	появится, когда	в запасе
					; останется: 17, 10 или	3 вражеских танка.
		BEQ	Make_BonusEnemy
		CMP	#10
		BEQ	Make_BonusEnemy
		CMP	#17
		BNE	++		; Танк будет зарождаться

Make_BonusEnemy:			; CODE XREF: Make_Respawn+34j
					; Make_Respawn+38j
		LDA	#4
		STA	Tank_Type,X	; Делаем врага бонусным
					; (ORA $80 будет потом)
		LDA	#0
		STA	Bonus_X		; Убираем бонус, т.к. 2-х
					; бонусов на экране быть не может

++:					; CODE XREF: Make_Respawn+16j
					; Make_Respawn+3Cj
		LDA	#$F0		; Танк будет зарождаться
		STA	Tank_Status,X
		LDY	Tank_Y,X
		LDA	Tank_X,X
		TAX
		LDA	#$F
		JSR	Draw_TSABlock	; Отрисовываем под танком будет	пустое место. На
					; случай, если уровень был создан из-под
					; Construction и на месте респауна игроков
					; или врагов есть какие-то блоки.
		RTS
; End of function Make_Respawn


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Загружает нужный тип нового танка

Load_New_Tank:				; CODE XREF: ROM:DE6Ep
		LDA	Respawn_Status,X
		STA	Tank_Status,X
		CPX	#2
		BCS	Load_NewEnemy	; Враг
		LDA	#3
		STA	Invisible_Timer,X ; Силовое поле вокруг	игрока после рождения
		LDA	Player_Type,X	; Вид танка игрока
		JMP	++
; ───────────────────────────────────────────────────────────────────────────

Load_NewEnemy:				; CODE XREF: Load_New_Tank+7j
					; Load_New_Tank+1Cj
		LDY	Enemy_TypeNumber ; Враг
		LDA	Enemy_Count,Y
		BNE	+
		INC	Enemy_TypeNumber
		JMP	Load_NewEnemy	; Если текущий тип (один из 4 на уровень) кончился,
					; начинаем респаунить следующий	тип.
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: Load_New_Tank+18j
		SEC
		SBC	#1
		STA	Enemy_Count,Y
		LDA	Level_Mode
		BEQ	+++		; Если уровни пошли по 2-му кругу, набор врагов
					; всегда из 35 уровня
		LDA	#35
		JMP	++++
; ───────────────────────────────────────────────────────────────────────────

+++:					; CODE XREF: Load_New_Tank+27j
		LDA	Level_Number

++++:					; CODE XREF: Load_New_Tank+2Bj
		SEC
		SBC	#1
		ASL	A
		ASL	A		; На уровне 4 типа врагов
		CLC
		ADC	Enemy_TypeNumber
		TAY			; Вычисляем набор врагов в зависимости от номера уровня
		LDA	EnemyType_ROMArray,Y
		CMP	#$E0
		BNE	++		; Если враг последнего типа,
					; у него самая мощная броня
		ORA	#3

++:					; CODE XREF: Load_New_Tank+10j
					; Load_New_Tank+3Ej
		ORA	Tank_Type,X
		CMP	#$E7
		BNE	End_Load_New_Tank
		LDA	#$E4

End_Load_New_Tank:			; CODE XREF: Load_New_Tank+46j
		STA	Tank_Type,X
		LDA	#0
		STA	Track_Pos,X
		RTS
; End of function Load_New_Tank


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Уводим с экраны все пули

Hide_All_Bullets:			; CODE XREF: SetUp_LevelVARsp
		LDX	#9
		LDA	#0

-:					; CODE XREF: Hide_All_Bullets+7j
		STA	Bullet_Status,X
		DEX
		BPL	-
		RTS
; End of function Hide_All_Bullets


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Null_Status:				; CODE XREF: ROM:Skip_LoadFramep
					; SetUp_LevelVARs+3p
					; Title_Screen_Loop+4p
		LDA	#0
		LDX	#7

-:					; CODE XREF: Null_Status+Aj
		STA	Tank_Status,X
		STA	$103,X
		DEX
		BPL	-
		RTS
; End of function Null_Status


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Tank_Status OR А

Rise_TankStatus_Bit:			; CODE XREF: Ice_Move+33p ROM:DC78p
					; ROM:DD20p ROM:DD3Ep
					; Get_RandomDirection:loc_DEA2p
		STA	Temp
		LDA	Tank_Status,X
		AND	#$F
		ORA	Temp
		STA	Tank_Status,X
		RTS
; End of function Rise_TankStatus_Bit


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Load_Enemy_Count:			; CODE XREF: SetUp_LevelVARs+52p
		LDA	Level_Mode
		BEQ	+
		LDA	#35		; В бонус-уровне всегда	внутренности 35-го
		JMP	++
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: Load_Enemy_Count+2j
		LDA	Level_Number

++:					; CODE XREF: Load_Enemy_Count+6j
		SEC
		SBC	#1
		ASL	A
		ASL	A		; Умножаем на 4	(количество типов врагов в уровне)
		TAY
		LDA	Enemy_Amount_ROMArray,Y
		STA	Enemy_Count
		LDA	Enemy_Amount_ROMArray+1,Y
		STA	Enemy_Count+1
		LDA	Enemy_Amount_ROMArray+2,Y
		STA	Enemy_Count+2
		LDA	Enemy_Amount_ROMArray+3,Y
		STA	Enemy_Count+3
		RTS
; End of function Load_Enemy_Count


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; $FF =	кнопки управления не нажаты

Button_To_DirectionIndex:		; CODE XREF: Move_Tank+21p
					; Move_Tank+2Fp Ice_Move+2Ap
		ASL	A
;Переводит А в число в соответствии с 3	старшими битами	(3,1,2,0,FF)
;используется для получения индекса направления	перемещения танка
;в зависимости от нажатых кнопок управления на джойстике
;Если клавиши управления не нажаты, возвращает $FF
		BCC	+
		LDA	#3		; Вправо
		RTS
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: Button_To_DirectionIndex+1j
		ASL	A
		BCC	++
		LDA	#1		; Влево
		RTS
; ───────────────────────────────────────────────────────────────────────────

++:					; CODE XREF: Button_To_DirectionIndex+7j
		ASL	A
		BCC	+++
		LDA	#2		; Вниз
		RTS
; ───────────────────────────────────────────────────────────────────────────

+++:					; CODE XREF: Button_To_DirectionIndex+Dj
		ASL	A
		BCC	++++		; Клавиши направления не нажаты
		LDA	#0		; Вверх
		RTS
; ───────────────────────────────────────────────────────────────────────────

++++:					; CODE XREF: Button_To_DirectionIndex+13j
		LDA	#$FF		; Клавиши направления не нажаты
		RTS
; End of function Button_To_DirectionIndex

; ───────────────────────────────────────────────────────────────────────────
;Загружается $DCAC,$E063,$E0A2 (такой же массив	по адресу $D3D5)
Bullet_Coord_X_Increment_1:.BYTE 0, $FF, 0, 1 ;	DATA XREF: ROM:DCACr ROM:DCB4r
					; Change_BulletCoordr Make_Shot+16r
;Загружается $DC9C,$E06C,$E0AD
Bullet_Coord_Y_Increment_1:.BYTE $FF, 0, 1, 0 ;	DATA XREF: ROM:DC9Cr ROM:DCA4r
					; Change_BulletCoord+9r Make_Shot+21r
X_Enemy_Respawn:.BYTE $18, $78,	$D8	; DATA XREF: Make_Respawn:+r
;X координата соответственно левого, среднего и	правого	респауна врага
Y_Enemy_Respawn:.BYTE $18, $18,	$18	; DATA XREF: Make_Respawn+2Br
;Y координата соответственно левого, среднего и	правого	респауна врага
X_Player_Respawn:.BYTE $58, $98		; DATA XREF: Make_Respawn+8r
;X координата  респауна	соответственно первого и второго игрока
Y_Player_Respawn:.BYTE $D8, $D8		; DATA XREF: Make_Respawn+Dr
;Y координата респауна соответственно первого и	второго	игрока

Respawn_Status:	.BYTE $A0, $A0,	$A2, $A2, $A2, $A2, $A2, $A2 ; DATA XREF: Load_New_Tankr
;Статусы игроков и врагов при респауне (игроки начинают	дулом вверх, враги - вниз)

AI_Status:	.BYTE $A0,$A0,$A0,$A1,$A0,$A3,$A2,$A2,$A2
					; DATA XREF: Load_AI_Status:End_Load_AIStatusr
		.BYTE $A1,$A0,$A3,$A1,$A0,$A3,$A1,$A2,$A3

TankStatus_JumpTable:.WORD End_Ice_Move	; DATA XREF: Status_Core+8r
					; Status_Core+Dr
					; возвращаемся по RTS
		.WORD Explode_Handle	; Обрабатывает взрыв танка (уменьшает число жизней, GameOver...)
		.WORD Explode_Handle	; Обрабатывает взрыв танка (уменьшает число жизней, GameOver...)
		.WORD Explode_Handle	; Обрабатывает взрыв танка (уменьшает число жизней, GameOver...)
		.WORD Explode_Handle	; Обрабатывает взрыв танка (уменьшает число жизней, GameOver...)
		.WORD Explode_Handle	; Обрабатывает взрыв танка (уменьшает число жизней, GameOver...)
		.WORD Explode_Handle	; Обрабатывает взрыв танка (уменьшает число жизней, GameOver...)
		.WORD Explode_Handle	; Обрабатывает взрыв танка (уменьшает число жизней, GameOver...)
		.WORD Misc_Status_Handle ; Обрабатывает	статусы	льда, позицию трека и т.п.
		.WORD Get_RandomStatus	; В основном, получает случайный статус
		.WORD Check_TileReach	; Проверяет у врага, достиг ли он конца	тайла
		.WORD Aim_HQ		; Устанавливает	в качестве целевой координаты штаб
		.WORD Aim_ScndPlayer	; Устанавливает	в качестве цели	врага первого игрока
		.WORD Aim_FirstPlayer	; Устанавливает	в качестве цели	врага второго игрока
		.WORD Load_Tank		; Загружает нужный тип нового танка, если нужно
		.WORD Set_Respawn	; Устанавливает	в статусе Респаун

TankDraw_JumpTable:.WORD End_Ice_Move	; DATA XREF: SingleTankStatus_Handle+8r
					; SingleTankStatus_Handle+Dr
					; возвращаемся по RTS
		.WORD Draw_Kill_Points	; Рисует очки на месте взрыва врага
		.WORD Draw_Small_Explode1 ; Взрыв 16х16
		.WORD Draw_Big_Explode	; Сбрасывает в Spr_Buffer большой взрыв
		.WORD Draw_Big_Explode	; Сбрасывает в Spr_Buffer большой взрыв
		.WORD Draw_Small_Explode2 ; Сбрасывает в Spr_Buffer 16х16 спрайт взрыва
		.WORD Draw_Small_Explode2 ; Сбрасывает в Spr_Buffer 16х16 спрайт взрыва
		.WORD Draw_Small_Explode2 ; Сбрасывает в Spr_Buffer 16х16 спрайт взрыва
		.WORD OperatingTank	; Непосредственно устанавливает	в Spr_Tile_Index нужный	танк
		.WORD OperatingTank	; Непосредственно устанавливает	в Spr_Tile_Index нужный	танк
		.WORD OperatingTank	; Непосредственно устанавливает	в Spr_Tile_Index нужный	танк
		.WORD OperatingTank	; Непосредственно устанавливает	в Spr_Tile_Index нужный	танк
		.WORD OperatingTank	; Непосредственно устанавливает	в Spr_Tile_Index нужный	танк
		.WORD OperatingTank	; Непосредственно устанавливает	в Spr_Tile_Index нужный	танк
		.WORD Respawn
		.WORD Respawn
Bullet_Status_JumpTable:.WORD End_Ice_Move ; DATA XREF:	BulletStatus_Handle+8r
					; BulletStatus_Handle+Dr
					; возвращаемся по RTS
		.WORD Make_Ricochet	; Меняет статус	пули под анимацию рикошета
		.WORD Make_Ricochet	; Меняет статус	пули под анимацию рикошета
		.WORD Make_Ricochet	; Будет	три кадра рикошета
		.WORD Bullet_Move	; Двигает пулю в соответствии с	Bullet_Status
BulletGFX_JumpTable:.WORD End_Ice_Move	; DATA XREF: Draw_BulletGFX+8r
					; Draw_BulletGFX+Dr
					; возвращаемся по RTS
		.WORD Update_Ricochet	; Рисует рикошет в нужном месте
		.WORD Update_Ricochet	; Рисует рикошет в нужном месте
		.WORD Update_Ricochet	; Рисует рикошет в нужном месте
		.WORD Draw_Bullet	; Сбрасывает в буффер спрайт пули
;Типы врагов (4	типа на	одном уровне и всего 8 типов) по уровням
;Формат	байта:
;Биты:
;0,1 - уровень брони
;2   - флаг бонусного танка
;3,4 - не используются
;5,6,7 - тип танка (возможно 8 типов)
;
EnemyType_ROMArray:.BYTE $80, $A0, $C0,	$E0 ; DATA XREF: Load_New_Tank+39r
		.BYTE $E0, $A0,	$C0, $80 ; 2
		.BYTE $80, $A0,	$C0, $E0 ; 3
		.BYTE $C0, $A0,	$80, $E0 ; 4
		.BYTE $C0, $E0,	$80, $A0 ; 5
		.BYTE $C0, $A0,	$80, $E0 ; 6
		.BYTE $80, $A0,	$C0, $80 ; 7
		.BYTE $C0, $E0,	$A0, $80 ; 8
		.BYTE $80, $A0,	$C0, $E0 ; 9
		.BYTE $80, $A0,	$C0, $E0 ; 10
		.BYTE $A0, $E0,	$C0, $A0 ; 11
		.BYTE $C0, $A0,	$80, $E0 ; 12
		.BYTE $C0, $A0,	$80, $E0 ; 13
		.BYTE $C0, $A0,	$80, $E0 ; 14
		.BYTE $80, $C0,	$A0, $E0 ; 15
		.BYTE $80, $C0,	$A0, $E0 ; 16
		.BYTE $E0, $A0,	$C0, $80 ; 17
		.BYTE $E0, $80,	$C0, $A0 ; 18
		.BYTE $A0, $E0,	$80, $C0 ; 19
		.BYTE $A0, $80,	$C0, $E0 ; 20
		.BYTE $C0, $A0,	$80, $E0 ; 21
		.BYTE $A0, $80,	$C0, $E0 ; 22
		.BYTE $E0, $80,	$C0, $A0 ; 23
		.BYTE $C0, $E0,	$A0, $80 ; 24
		.BYTE $C0, $A0,	$80, $E0 ; 25
		.BYTE $A0, $E0,	$80, $C0 ; 26
		.BYTE $C0, $E0,	$A0, $80 ; 27
		.BYTE $A0, $E0,	$80, $C0 ; 28
		.BYTE $C0, $A0,	$80, $E0 ; 29
		.BYTE $80, $A0,	$C0, $E0 ; 30
		.BYTE $C0, $A0,	$E0, $C0 ; 31
		.BYTE $E0, $80,	$C0, $A0 ; 32
		.BYTE $A0, $E0,	$C0, $A0 ; 33
		.BYTE $C0, $A0,	$80, $E0 ; 34
		.BYTE $C0, $A0,	$80, $E0 ; 35 и	Демо-уровень
;
;Количество врагов (4 типа и не	более 20) по уровням:
Enemy_Amount_ROMArray:.BYTE $12, 2, 0, 0 ; DATA	XREF: Load_Enemy_Count+11r
					; Load_Enemy_Count+16r
					; Load_Enemy_Count+1Br
					; Load_Enemy_Count+20r
		.BYTE 2, 4, 0, $E	; 2
		.BYTE $E, 4, 0,	2	; 3
		.BYTE $A, 5, 2,	3	; 4
		.BYTE 5, 2, 8, 5	; 5
		.BYTE 7, 2, 9, 2	; 6
		.BYTE 3, 4, 6, 7	; 7
		.BYTE 7, 2, 4, 7	; 8
		.BYTE 6, 4, 7, 3	; 9
		.BYTE $C, 2, 4,	2	; 10
		.BYTE 5, 6, 4, 5	; 11
		.BYTE 8, 6, 0, 6	; 12
		.BYTE 8, 8, 0, 4	; 13
		.BYTE $A, 4, 0,	6	; 14
		.BYTE 2, 0, $A,	8	; 15
		.BYTE $10, 0, 2, 2	; 16
		.BYTE 2, 2, 8, 8	; 17
		.BYTE 4, 2, 6, 8	; 18
		.BYTE 4, 8, 4, 4	; 19
		.BYTE 8, 2, 2, 8	; 20
		.BYTE 8, 2, 6, 4	; 21
		.BYTE 8, 6, 2, 4	; 22
		.BYTE 6, 0, 4, $A	; 23
		.BYTE 4, 2, 4, $A	; 24
		.BYTE 2, 8, 0, $A	; 25
		.BYTE 6, 6, 4, 4	; 26
		.BYTE 2, 8, 8, 2	; 27
		.BYTE 2, 1, $F,	2	; 28
		.BYTE $A, 4, 0,	6	; 29
		.BYTE 4, 8, 4, 4	; 30
		.BYTE 3, 8, 6, 3	; 31
		.BYTE 8, 6, 2, 4	; 32
		.BYTE 4, 8, 4, 4	; 33
		.BYTE 4, $A, 0,	6	; 34
		.BYTE 4, 6, 0, $A	; 35 и Демо-уровень

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Обрабатывает полет пули (столкновение	и т.п.)

Bullet_Fly_Handle:			; CODE XREF: Battle_Loop+1Ep
		LDA	#9
		STA	Counter		; Обрабатываем 10 пуль

-:					; CODE XREF: Bullet_Fly_Handle+8Bj
		LDX	Counter
		LDA	Bullet_Status,X
		AND	#$F0 ; 'Ё'
		CMP	#$40 ; '@'
		BNE	Next_Bullet_Fly_Handle ; Если пуля не летит, переходим к следующей
		LDA	Bullet_Property,X ; Скорость и бронебойность
		BNE	+
		TXA
		EOR	Frame_Counter
		AND	#1		; Медленные пули обрабатываем через фрейм
		BEQ	Next_Bullet_Fly_Handle

+:					; CODE XREF: Bullet_Fly_Handle+10j
		LDA	Bullet_Status,X
		AND	#3
		TAY
		LDA	Bullet_Coord_X_Increment_2,Y
		BPL	++
		EOR	#$FF
		CLC
		ADC	#1

++:					; CODE XREF: Bullet_Fly_Handle+21j
		STA	Temp_X
		ASL	A
		ASL	A
		STA	AI_X_DifferFlag
		LDA	Bullet_Coord_Y_Increment_2,Y
		BPL	+++
		EOR	#$FF
		CLC
		ADC	#1

+++:					; CODE XREF: Bullet_Fly_Handle+31j
		STA	Temp_Y
		ASL	A
		ASL	A
		STA	AI_Y_DifferFlag
		LDY	Bullet_Y,X
		LDA	Bullet_X,X
		TAX
		JSR	GetSprCoord_InTiles ; Переводит	Spr_coord в тайлы
		BEQ	GetCoord_Bullet_Fly_Handle
		LDX	Counter
		LDA	Bullet_Y,X
		CLC
		ADC	AI_X_DifferFlag
		STA	Spr_Y
		LDA	Bullet_X,X
		CLC
		ADC	AI_Y_DifferFlag
		STA	Spr_X
		JSR	BulletToObject_Impact_Handle ; Обрабатывает столкновение пули с	объектом

GetCoord_Bullet_Fly_Handle:		; CODE XREF: Bullet_Fly_Handle+46j
		LDX	Counter
		LDA	Bullet_Y,X
		SEC
		SBC	Temp_X
		TAY
		LDA	Bullet_X,X
		SEC
		SBC	Temp_Y
		TAX
		JSR	GetSprCoord_InTiles ; Переводит	Spr_coord в тайлы
		BEQ	Next_Bullet_Fly_Handle
		LDX	Counter
		LDA	Bullet_Y,X
		SEC
		SBC	AI_X_DifferFlag
		SEC
		SBC	Temp_X
		STA	Spr_Y
		LDA	Bullet_X,X
		SEC
		SBC	AI_Y_DifferFlag
		SEC
		SBC	Temp_Y
		STA	Spr_X
		JSR	BulletToObject_Impact_Handle ; Обрабатывает столкновение пули с	объектом

Next_Bullet_Fly_Handle:			; CODE XREF: Bullet_Fly_Handle+Cj
					; Bullet_Fly_Handle+17j
					; Bullet_Fly_Handle+6Cj
		DEC	Counter
		BMI	End_Bullet_Fly_Handle
		JMP	-
; ───────────────────────────────────────────────────────────────────────────

End_Bullet_Fly_Handle:			; CODE XREF: Bullet_Fly_Handle+89j
		RTS
; End of function Bullet_Fly_Handle


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Переводит Spr_coord в	тайлы

GetSprCoord_InTiles:			; CODE XREF: Bullet_Fly_Handle+43p
					; Bullet_Fly_Handle+69p
		STX	Spr_X
		STY	Spr_Y
		JSR	GetCoord_InTiles ; В Х и Y на выходе координаты	в тайлах
; End of function GetSprCoord_InTiles


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Обрабатывает столкновение пули с объектом

BulletToObject_Impact_Handle:		; CODE XREF: Bullet_Fly_Handle+58p
					; Bullet_Fly_Handle+84p
		JSR	Temp_Coord_shl	; Преобразует Temp в зависимости от Spr_Coord
		JSR	Check_Object	; Возвращает ноль, если	нулевой	тайл
		BEQ	BulletToObject_Return0 ; Если перед пулей пустота, выходим с 0
		LDA	(LowPtr_Byte),Y
		AND	#$FC ; '№'
		CMP	#$C8 ; '╚'      ; Сравниваем с индексом тайла штаба
		BNE	+
		LDA	HQ_Status	; 80=штаб цел, если ноль то уничтожен
		BEQ	+		; Если 0, взрываем штаб
		LDA	#$27 ; '''      ; Взрываем штаб
		STA	HQ_Status	; Начальный кадр анимации взрыва
					; (7 кадров по 4 фрейма)
		LDA	#1
		STA	Sns_HQExplode
		STA	Snd_PlayerExplode
		JSR	Draw_Destroyed_HQ ; Рисует разрушенный штаб
		LDX	Counter
		LDA	#$33 ; '3'      ; Делаем рикошет на пулю
		STA	Bullet_Status,X
		JMP	BulletToObject_Return0
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: BulletToObject_Impact_Handle+Ej
					; BulletToObject_Impact_Handle+12j
		LDA	(LowPtr_Byte),Y
		CMP	#$12		; Если >$12 (вода, лес,	лёд и т.п.), пули
					; проходят насквозь (завершаем обработку)
		BCS	BulletToObject_Return0
		LDX	Counter
		LDA	#$33 ; '3'
		STA	Bullet_Status,X	; 3 кадра анимации рикошета,
					; которые держатся по 3	фрейма
		LDA	(LowPtr_Byte),Y
		CMP	#$11		; Граница экрана
		BEQ	Armored_Wall
		LDA	Bullet_Property,X ; Скорость и бронебойность
		AND	#2
		BEQ	++		; Если бронебойная, разрушаем объект
		LDA	#0
		JSR	Draw_Tile	; Рисуем вместо	кирпича
					; пустой тайл
		LDA	#1
		STA	Snd_Brick_Ricochet
		JMP	BulletToObject_Return0
; ───────────────────────────────────────────────────────────────────────────

++:					; CODE XREF: BulletToObject_Impact_Handle+42j
		LDA	(LowPtr_Byte),Y
		CMP	#$10		; Тайл брони
		BEQ	Armored_Wall
		CPX	#2		; Столкновение с кирпичной стеной
		BCS	BulletToObject_Return1 ; Звучит	только попадание игроков
		LDA	#1
		STA	Snd_Brick_Ricochet

BulletToObject_Return1:			; CODE XREF: BulletToObject_Impact_Handle+59j
		JSR	Draw_Destroyed_Brick ; Рисует правильный вырыв в кирпичной стене
		LDA	#1
		RTS
; ───────────────────────────────────────────────────────────────────────────

Armored_Wall:				; CODE XREF: BulletToObject_Impact_Handle+3Cj
					; BulletToObject_Impact_Handle+55j
		CPX	#2
		BCS	BulletToObject_Return0 ; Звучать только	рикошеты игроков
		LDA	#1
		STA	Snd_ArmorRicochetWall

BulletToObject_Return0:			; CODE XREF: BulletToObject_Impact_Handle+6j
					; BulletToObject_Impact_Handle+29j
					; BulletToObject_Impact_Handle+30j
					; BulletToObject_Impact_Handle+4Ej
					; BulletToObject_Impact_Handle+68j
		LDA	#0
		RTS
; End of function BulletToObject_Impact_Handle


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Обрабатывает столкновение пули с танком

BulletToTank_Impact_Handle:		; CODE XREF: Battle_Loop+24p
		LDA	#1
		STA	Counter		; Сначала обрабатываем только игроков
					; (враг	попадает в игрока)

-:					; CODE XREF: BulletToTank_Impact_Handle+70j
		LDX	Counter
		LDA	Tank_Status,X
		BPL	Jump_Next_Player_Tank_Impact ; Если танк взрывается,
					; переходим к следующему
		CMP	#$E0 ; 'р'
		BCC	+		; Если танк не респаунится,
					; переходим к следующему

Jump_Next_Player_Tank_Impact:		; CODE XREF: BulletToTank_Impact_Handle+8j
		JMP	Next_Player_Tank_Impact
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: BulletToTank_Impact_Handle+Cj
		LDA	#7
		STA	Counter2	; 8 возможных пуль у врага

--:					; CODE XREF: BulletToTank_Impact_Handle+6Cj
		LDY	Counter2
		LDA	Bullet_Status,Y
		AND	#$F0 ; 'Ё'
		CMP	#$40 ; '@'
		BNE	Next_Bullet_Tank_Impact
		LDA	Bullet_X,Y
		SEC
		SBC	Tank_X,X
		BPL	CheckMinX_TankImpact
		EOR	#$FF
		CLC
		ADC	#1		; Вычисляем расстояние между танком и пулей по Х

CheckMinX_TankImpact:			; CODE XREF: BulletToTank_Impact_Handle+26j
		CMP	#$A
		BCS	Next_Bullet_Tank_Impact
		LDA	Bullet_Y,Y
		SEC
		SBC	Tank_Y,X
		BPL	CheckMinY_TankImpact
		EOR	#$FF
		CLC
		ADC	#1		; Вычисляем расстояние по Y

CheckMinY_TankImpact:			; CODE XREF: BulletToTank_Impact_Handle+37j
		CMP	#$A
		BCS	Next_Bullet_Tank_Impact
		LDA	#$33 ; '3'
		STA	Bullet_Status,Y	; Устанавливаем	статус в рикошет
		LDA	Invisible_Timer,X ; Силовое поле вокруг	игрока после рождения
		BEQ	Explode_Player_Tank_Impact
		LDA	#0
		STA	Bullet_Status,Y	; Убираем пулю
		JMP	Next_Bullet_Tank_Impact
; ───────────────────────────────────────────────────────────────────────────

Explode_Player_Tank_Impact:		; CODE XREF: BulletToTank_Impact_Handle+49j
		LDA	#$73 ; 's'
		STA	Tank_Status,X
		LDA	#1
		STA	Snd_PlayerExplode
		LDA	#0
		STA	Player_Type,X	; Вид танка игрока
		STA	Tank_Type,X
		JMP	Next_Player_Tank_Impact
; ───────────────────────────────────────────────────────────────────────────

Next_Bullet_Tank_Impact:		; CODE XREF: BulletToTank_Impact_Handle+1Ej
					; BulletToTank_Impact_Handle+2Fj
					; BulletToTank_Impact_Handle+40j
					; BulletToTank_Impact_Handle+50j
		DEC	Counter2
		LDA	Counter2
		CMP	#1		; Переходим к следующей	пуле
		BNE	--

Next_Player_Tank_Impact:		; CODE XREF: BulletToTank_Impact_Handle:Jump_Next_Player_Tank_Impactj
					; BulletToTank_Impact_Handle+63j
		DEC	Counter
		BPL	-
		LDA	#7
		STA	Counter		; После	обработки попадания в игрока,
					; начинаем обрабатывать	врагов
					; (игрок попадает во врага)

---:					; CODE XREF: BulletToTank_Impact_Handle+130j
		LDX	Counter
		LDA	Tank_Status,X
		BPL	JumpNext_Enemy_Tank_Impact
		CMP	#$E0 ; 'р'      ; Если танк взорван или респаунится, переходим к следующему
		BCC	++

JumpNext_Enemy_Tank_Impact:		; CODE XREF: BulletToTank_Impact_Handle+7Aj
		JMP	Next_Enemy_Tank_Impact
; ───────────────────────────────────────────────────────────────────────────

++:					; CODE XREF: BulletToTank_Impact_Handle+7Ej
		LDA	#9
		STA	Counter2	; 10 пуль

----:					; CODE XREF: BulletToTank_Impact_Handle+125j
		LDA	Counter2
		AND	#6
		BEQ	+++
		JMP	Next_Bullet2_Tank_Impact
; ───────────────────────────────────────────────────────────────────────────

+++:					; CODE XREF: BulletToTank_Impact_Handle+8Bj
		LDY	Counter2
		LDA	Bullet_Status,Y
		AND	#$F0 ; 'Ё'
		CMP	#$40 ; '@'
		BEQ	Load_X_TankImpact
		JMP	Next_Bullet2_Tank_Impact
; ───────────────────────────────────────────────────────────────────────────

Load_X_TankImpact:			; CODE XREF: BulletToTank_Impact_Handle+99j
		LDA	Bullet_X,Y
		SEC
		SBC	Tank_X,X
		BPL	CheckMinX2_TankImpact
		EOR	#$FF
		CLC
		ADC	#1

CheckMinX2_TankImpact:			; CODE XREF: BulletToTank_Impact_Handle+A4j
		CMP	#$A
		BCS	Next_Bullet2_Tank_Impact
		LDA	Bullet_Y,Y
		SEC
		SBC	Tank_Y,X
		BPL	CheckMinY2_TankImpact
		EOR	#$FF
		CLC
		ADC	#1		; Вычисляем расстояние между танком и
					; пулей	по обеим осям

CheckMinY2_TankImpact:			; CODE XREF: BulletToTank_Impact_Handle+B5j
		CMP	#$A
		BCS	Next_Bullet2_Tank_Impact
		LDA	#$33 ; '3'      ; Делаем рикошет
		STA	Bullet_Status,Y
		LDA	Tank_Type,X
		AND	#4
		BEQ	Skip_BonusHandle_TankImpact ; Если танк	был бонусным, выводим бонус
		JSR	Bonus_Appear_Handle ; Выводит случайный	бонус на экран
		LDA	Tank_Type,X
		CMP	#$E4 ; 'ф'
		BNE	Skip_BonusHandle_TankImpact
		DEC	Tank_Type,X	; Если танк бронирован,	при
					; попадании пули уменьшаем броню

Skip_BonusHandle_TankImpact:		; CODE XREF: BulletToTank_Impact_Handle+C9j
					; BulletToTank_Impact_Handle+D2j
		LDA	Tank_Type,X
		AND	#3
		BEQ	Explode_Enemy_Tank_Impact
		DEC	Tank_Type,X
		LDA	#1
		STA	Snd_ArmorRicochetTank ;	Танк бронирован
		JMP	Next_Bullet2_Tank_Impact
; ───────────────────────────────────────────────────────────────────────────

Explode_Enemy_Tank_Impact:		; CODE XREF: BulletToTank_Impact_Handle+DAj
		LDA	#$73 ; 's'
		STA	Tank_Status,X	; Подрываем танк
		LDA	#1
		STA	Snd_EnemyExplode
		LDA	Tank_Type,X
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		LSR	A
		SEC
		SBC	#4
		TAX
		LDA	Counter2
		AND	#1
		STA	Spr_X
		BNE	ScndPlayerKll_Tank_Impact
		INC	Enmy_KlledBy1P_Count,X
		JMP	Score_TankImpact
; ───────────────────────────────────────────────────────────────────────────

ScndPlayerKll_Tank_Impact:		; CODE XREF: BulletToTank_Impact_Handle+100j
		INC	Enmy_KlledBy2P_Count,X

Score_TankImpact:			; CODE XREF: BulletToTank_Impact_Handle+104j
		LDA	Level_Mode
		CMP	#2
		BEQ	Next_Enemy_Tank_Impact ; Во время демо-уровня, очки не прибавляются
		LDA	EnemyKill_Score,X ; Очки*10 за убийство	каждого	из 4 видов врагов
		JSR	Num_To_NumString ; Переводит число из А	в строку NumString
		LDA	Spr_X
		TAX
		JSR	Add_Score	; Прибавляет число из NumString	к очкам	игрока №Х
		JSR	Add_Life	; После	фрага, начисляем очки
		JMP	Next_Enemy_Tank_Impact
; ───────────────────────────────────────────────────────────────────────────

Next_Bullet2_Tank_Impact:		; CODE XREF: BulletToTank_Impact_Handle+8Dj
					; BulletToTank_Impact_Handle+9Bj
					; BulletToTank_Impact_Handle+ADj
					; BulletToTank_Impact_Handle+BEj
					; BulletToTank_Impact_Handle+E3j
		DEC	Counter2
		BMI	Next_Enemy_Tank_Impact
		JMP	----
; ───────────────────────────────────────────────────────────────────────────

Next_Enemy_Tank_Impact:			; CODE XREF: BulletToTank_Impact_Handle:JumpNext_Enemy_Tank_Impactj
					; BulletToTank_Impact_Handle+10Dj
					; BulletToTank_Impact_Handle+11Ej
					; BulletToTank_Impact_Handle+123j
		DEC	Counter
		LDA	Counter
		CMP	#1
		BEQ	++++
		JMP	---
; ───────────────────────────────────────────────────────────────────────────

++++:					; CODE XREF: BulletToTank_Impact_Handle+12Ej
		LDA	#1
		STA	Counter		; На этот раз рассматриваем попадание игроком в	игрока

-----:					; CODE XREF: BulletToTank_Impact_Handle+1ABj
		LDX	Counter
		LDA	Tank_Status,X
		BPL	Jump_Next_Player2_Tank_Impact
		CMP	#$E0 ; 'р'      ; Если игрок респаунится, или взорван, переходим к другому
		BCC	+++++

Jump_Next_Player2_Tank_Impact:		; CODE XREF: BulletToTank_Impact_Handle+13Bj
		JMP	Next_Player2_Tank_Impact
; ───────────────────────────────────────────────────────────────────────────

+++++:					; CODE XREF: BulletToTank_Impact_Handle+13Fj
		LDA	#9
		STA	Counter2	; 10 пуль

------:					; CODE XREF: BulletToTank_Impact_Handle+1A7j
		LDA	Counter2
		AND	#6
		BNE	Next_Bullet3_Tank_Impact
		LDY	Counter2
		LDA	Bullet_Status,Y
		AND	#$F0 ; 'Ё'
		CMP	#$40 ; '@'
		BNE	Next_Bullet3_Tank_Impact
		LDA	Counter
		EOR	Counter2
		AND	#1
		BEQ	Next_Bullet3_Tank_Impact
		LDA	Bullet_X,Y
		SEC
		SBC	Tank_X,X
		BPL	CheckMinX3_TankImpact
		EOR	#$FF
		CLC
		ADC	#1

CheckMinX3_TankImpact:			; CODE XREF: BulletToTank_Impact_Handle+167j
		CMP	#$A
		BCS	Next_Bullet3_Tank_Impact
		LDA	Bullet_Y,Y
		SEC
		SBC	Tank_Y,X
		BPL	CheckMinY3_TankImpact ;	Вычисляем расстояния по	обеим осям между танком	и пулей
		EOR	#$FF
		CLC
		ADC	#1

CheckMinY3_TankImpact:			; CODE XREF: BulletToTank_Impact_Handle+178j
		CMP	#$A		; Вычисляем расстояния по обеим	осям между танком и пулей
		BCS	Next_Bullet3_Tank_Impact
		LDA	#$33 ; '3'
		STA	Bullet_Status,Y	; Делаем рикошет
		LDA	Invisible_Timer,X ; Силовое поле вокруг	игрока после рождения
		BEQ	CheckBlink_TankImpact
		LDA	#0
		STA	Bullet_Status,Y	; Убираем пулю
		JMP	Next_Bullet3_Tank_Impact
; ───────────────────────────────────────────────────────────────────────────

CheckBlink_TankImpact:			; CODE XREF: BulletToTank_Impact_Handle+18Aj
		LDA	Player_Blink_Timer,X ; Таймер мигания friendly fire
		BNE	Next_Bullet3_Tank_Impact
		LDA	Level_Mode
		CMP	#2
		BEQ	Next_Bullet3_Tank_Impact ; На демо уровне Friendly Fire	нет
		LDA	#$C8 ; '╚'
		STA	Player_Blink_Timer,X ; Обновляем таймер
		JMP	Next_Player2_Tank_Impact
; ───────────────────────────────────────────────────────────────────────────

Next_Bullet3_Tank_Impact:		; CODE XREF: BulletToTank_Impact_Handle+14Cj
					; BulletToTank_Impact_Handle+157j
					; BulletToTank_Impact_Handle+15Fj
					; BulletToTank_Impact_Handle+170j
					; BulletToTank_Impact_Handle+181j
					; BulletToTank_Impact_Handle+191j
					; BulletToTank_Impact_Handle+196j
					; BulletToTank_Impact_Handle+19Cj
		DEC	Counter2
		BPL	------

Next_Player2_Tank_Impact:		; CODE XREF: BulletToTank_Impact_Handle:Jump_Next_Player2_Tank_Impactj
					; BulletToTank_Impact_Handle+1A2j
		DEC	Counter
		BPL	-----
		RTS
; End of function BulletToTank_Impact_Handle

; ───────────────────────────────────────────────────────────────────────────
EnemyKill_Score:.BYTE $10, $20,	$30, $40 ; DATA	XREF: BulletToTank_Impact_Handle+10Fr
					; Очки*10 за убийство каждого из 4 видов врагов

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Выводит случайный бонус на экран

Bonus_Appear_Handle:			; CODE XREF: BulletToTank_Impact_Handle+CBp
		LDA	#1
		STA	Snd_BonusAppears ; Играем музыку появления бонуса

-:					; CODE XREF: Bonus_Appear_Handle+26j
		JSR	Get_Random_A	; ГПСЧ,	в А случайное число
		AND	#3		; 3 возможных координаты Х появления
		JSR	Multiply_Bonus_Coord ; A := ((A	* 6) + 6) * 8
		STA	Bonus_X
		JSR	Get_Random_A	; ГПСЧ,	в А случайное число
		AND	#3		; 3 возможных координаты Y появления
		JSR	Multiply_Bonus_Coord ; A := ((A	* 6) + 6) * 8
		STA	Bonus_Y		; Бонус	появляется в случайном месте
		LDA	#$FF
		STA	Bonus_Number	; Определяет тип бонуса
		LDA	#0
		STA	BonusPts_TimeCounter
		JSR	Bonus_Handle	; Обрабатывает взятие бонуса, если таковое есть
		LDA	BonusPts_TimeCounter
		BNE	-
		JSR	Get_Random_A	; ГПСЧ,	в А случайное число
		AND	#7		; 8 видов бонусов
		TAY
		LDA	BonusNumber_ROM_Array,Y	; Номера бонусов (идут по порядку)
		STA	Bonus_Number	; Определяет тип бонуса
		LDA	#0
		STA	BonusPts_TimeCounter ; Бонус пока не взят
		LDX	Counter
		LDY	Counter2
		RTS
; End of function Bonus_Appear_Handle

; ───────────────────────────────────────────────────────────────────────────
;Индексы апгрейдов. 6 и	7 были предусмотрены, но затем заменены
;на 4 и	3, поэтому эти апгрейды	появляются чаще.
BonusNumber_ROM_Array:.BYTE 0, 1, 2, 3,	4, 5, 4, 3 ; DATA XREF:	Bonus_Appear_Handle+2Er
					; Номера бонусов (идут по порядку)

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; A := ((A * 6)	+ 6) * 8

Multiply_Bonus_Coord:			; CODE XREF: Bonus_Appear_Handle+Ap
					; Bonus_Appear_Handle+14p
		STA	Temp
		ASL	A
		CLC
		ADC	Temp
		ASL	A
		CLC
		ADC	#6
		ASL	A
		ASL	A
		ASL	A
		RTS
; End of function Multiply_Bonus_Coord


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Обрабатывает столкновение двух пуль, если оно	есть

BulletToBullet_Impact_Handle:		; CODE XREF: Battle_Loop+21p
		LDA	#9
		STA	Counter		; 10 пуль

-:					; CODE XREF: BulletToBullet_Impact_Handle+5Fj
		LDA	Counter
		AND	#6
		BNE	Next_Bullet_Bulllet_Impact
		LDX	Counter
		LDA	Bullet_Status,X
		AND	#$F0 ; 'Ё'
		CMP	#$40 ; '@'
		BNE	Next_Bullet_Bulllet_Impact ; Если пуля не летит,
					; обрабатываем следующую
		LDA	#9
		STA	Counter2	; 10 пуль

--:					; CODE XREF: BulletToBullet_Impact_Handle+5Bj
		LDA	Counter2
		TAY
		AND	#7
		STA	Temp
		LDA	Counter
		AND	#7
		CMP	Temp
		BEQ	Next_Bullet2_Bulllet_Impact ; Саму с собой пулю	на столкновение
					; не проверяем
		LDA	Bullet_Status,Y
		AND	#$F0 ; 'Ё'
		CMP	#$40 ; '@'
		BNE	Next_Bullet2_Bulllet_Impact ; Если пуля	не летит,
					; переходим к следующей
		LDA	Bullet_X,Y
		SEC
		SBC	Bullet_X,X
		BPL	CheckMinX_BulletImpact ; Определяем расстояние по Х
					; между	2-мя пулями
		EOR	#$FF
		CLC
		ADC	#1

CheckMinX_BulletImpact:			; CODE XREF: BulletToBullet_Impact_Handle+36j
		CMP	#6
		BCS	Next_Bullet2_Bulllet_Impact ; Если >6, Переходим к следующей
		LDA	Bullet_Y,Y
		SEC
		SBC	Bullet_Y,X
		BPL	CheckMinY_BulletImpact ; Если <	6 , то проверяем расстояние по Y
					; между	двумя пулями
		EOR	#$FF
		CLC
		ADC	#1

CheckMinY_BulletImpact:			; CODE XREF: BulletToBullet_Impact_Handle+47j
		CMP	#6
		BCS	Next_Bullet2_Bulllet_Impact ; Если >6, то переходим к следующей
		LDA	#0
		STA	Bullet_Status,X
		STA	Bullet_Status,Y	; Уничтожаем обе пули

Next_Bullet2_Bulllet_Impact:		; CODE XREF: BulletToBullet_Impact_Handle+25j
					; BulletToBullet_Impact_Handle+2Ej
					; BulletToBullet_Impact_Handle+3Fj
					; BulletToBullet_Impact_Handle+50j
		DEC	Counter2
		BPL	--

Next_Bullet_Bulllet_Impact:		; CODE XREF: BulletToBullet_Impact_Handle+8j
					; BulletToBullet_Impact_Handle+12j
		DEC	Counter
		BPL	-
		RTS
; End of function BulletToBullet_Impact_Handle


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Обрабатывает взятие бонуса, если таковое есть

Bonus_Handle:				; CODE XREF: Battle_Loop+27p
					; Bonus_Appear_Handle+21p
		LDA	Bonus_X
		BEQ	End_Bonus_Handle
		LDA	BonusPts_TimeCounter
		BNE	End_Bonus_Handle
		LDA	#1		; Начинаем со второго игрока
		STA	Tank_Num	; Номер	танка игрока, при обработке взятия бонуса

-:					; CODE XREF: Bonus_Handle+6Dj
		LDX	Tank_Num	; Номер	танка игрока, при обработке взятия бонуса
		LDA	Tank_Status,X
		BPL	+		; Переходим к следующему танку
		CMP	#$E0 ; 'р'
		BCS	+		; Если танк взорван или	респаунится,
					; не рассматриваем его
		LDA	Tank_X,X
		SEC
		SBC	Bonus_X
		BPL	+++
		EOR	#$FF
		CLC
		ADC	#1		; Вычисление расстояния	от
					; танка	до бонуса по Х

+++:					; CODE XREF: Bonus_Handle+1Bj
		CMP	#$C
		BCS	+		; Переходим к следующему танку
		LDA	Tank_Y,X
		SEC
		SBC	Bonus_Y
		BPL	++
		EOR	#$FF
		CLC
		ADC	#1		; Вычисление расстояния	от
					; танка	до бонуса по Y

++:					; CODE XREF: Bonus_Handle+2Bj
		CMP	#$C
		BCS	+		; Переходим к следующему танку
		LDA	#$32 ; '2'      ; время отображения очков за бонус (фреймы)
		STA	BonusPts_TimeCounter
		LDA	Bonus_Number	; Определяет тип бонуса
		BMI	End_Bonus_Handle
		LDA	Level_Mode
		CMP	#2		; В режиме демо	уровня очки не прибавляются
		BEQ	Bonus_Command	; Производит действия бонуса
		LDA	#$50 ; 'P'      ; 500 очков дается за бонус
		JSR	Num_To_NumString ; Переводит число из А	в строку NumString
		LDX	Tank_Num	; Номер	танка игрока, при обработке взятия бонуса
		JSR	Add_Score	; Прибавляет число из NumString	к очкам	игрока №Х
		JSR	Add_Life	; Прибавляет одну жизнь, если игрок заработал 200К очков
		LDX	Tank_Num	; Номер	танка игрока, при обработке взятия бонуса
		LDA	#1
		STA	Snd_BonusTaken	; Проигрываем мелодию за взятие	бонуса

Bonus_Command:				; CODE XREF: Bonus_Handle+42j
		LDA	Bonus_Number	; Производит действия бонуса
		ASL	A		; Указатель двухбайтовый
		TAY
		LDA	Bonus_JumpTable,Y
		STA	LowPtr_Byte
		LDA	Bonus_JumpTable+1,Y
		STA	HighPtr_Byte
		PLA
		PLA
		JMP	(LowPtr_Byte)
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: Bonus_Handle+10j
					; Bonus_Handle+14j Bonus_Handle+24j
					; Bonus_Handle+34j
		DEC	Tank_Num	; Переходим к следующему танку
		BPL	-

End_Bonus_Handle:			; CODE XREF: Bonus_Handle+2j
					; Bonus_Handle+6j Bonus_Handle+3Cj
		RTS
; End of function Bonus_Handle

; ───────────────────────────────────────────────────────────────────────────
Bonus_JumpTable:.WORD Bonus_Helmet	; DATA XREF: Bonus_Handle+5Cr
					; Bonus_Handle+61r
					; Создает поле вокруг танка
		.WORD Bonus_Watch	; Останавливает	всех врагов
		.WORD Bonus_Shovel	; Строит броню вокруг штаба
		.WORD Bonus_Star	; Переводит игрока в следующий вид
		.WORD Bonus_Grenade	; Взрывает всех	врагов
		.WORD Bonus_Life	; Имеет	вид танка. Прибавляет одну жизнь
		.WORD Bonus_Pistol	; Не используется и ничего не делает, однако имеет свою	иконку бонуса
; ───────────────────────────────────────────────────────────────────────────

Bonus_Helmet:				; DATA XREF: ROM:Bonus_JumpTableo
		LDA	#10		; Создает поле вокруг танка
		STA	Invisible_Timer,X ; Силовое поле вокруг	игрока после рождения
		RTS
; ───────────────────────────────────────────────────────────────────────────

Bonus_Watch:				; DATA XREF: ROM:E9E4o
		LDA	#10		; Останавливает	всех врагов
		STA	EnemyFreeze_Timer
		RTS
; ───────────────────────────────────────────────────────────────────────────

Bonus_Shovel:				; DATA XREF: ROM:E9E6o
		LDA	HQ_Status	; Строит броню вокруг штаба
		BPL	End_Bonus_Shovel
		JSR	Draw_ArmourHQ	; Рисует штаб с	броней
		LDA	#20
		STA	HQArmour_Timer	; Таймер брони вокруг штаба

End_Bonus_Shovel:			; CODE XREF: ROM:E9FDj
		RTS
; ───────────────────────────────────────────────────────────────────────────

Bonus_Star:				; DATA XREF: ROM:E9E8o
		LDA	Player_Type,X	; Переводит игрока в следующий вид
		CMP	#$60 ; '`'
		BEQ	End_Bonus_Star	; Если достигнут максимальный вид, выходим
		CLC
		ADC	#$20 ; ' '      ; Делаем танк следующим видом
		STA	Player_Type,X	; Вид танка игрока
		STA	Tank_Type,X

End_Bonus_Star:				; CODE XREF: ROM:EA0Cj
		RTS
; ───────────────────────────────────────────────────────────────────────────

Bonus_Grenade:				; DATA XREF: ROM:E9EAo
		LDA	#7		; Взрывает всех	врагов
		STA	Counter		; Начинаем с последнего	врага
		LDA	#1
		STA	Snd_EnemyExplode

Bonus_Grenade_Loop:			; CODE XREF: ROM:EA3Bj
		LDY	Counter
		LDA	Tank_Status,Y
		BPL	Explode_Next
		CMP	#$E0 ; 'р'
		BCS	Explode_Next	; Если враг взрывается или респаунится,	не взрываем его
		LDA	#$73 ; 's'      ; Взрываем танк
		STA	Tank_Status,Y
		LDA	#0
		STA	Tank_Type,Y

Explode_Next:				; CODE XREF: ROM:EA25j	ROM:EA29j
		DEC	Counter
		LDA	Counter
		CMP	#1		; Игроков не взрываем
		BNE	Bonus_Grenade_Loop
		RTS
; ───────────────────────────────────────────────────────────────────────────

Bonus_Life:				; DATA XREF: ROM:E9ECo
		INC	Player1_Lives,X	; Имеет	вид танка. Прибавляет одну жизнь
		LDA	#1
		STA	Snd_Ancillary_Life1
		STA	Snd_Ancillary_Life2 ; Проигрываем звук через оба канала

Bonus_Pistol:				; DATA XREF: ROM:E9EEo
		RTS			; Не используется и ничего не делает, однако имеет свою	иконку бонуса
; ───────────────────────────────────────────────────────────────────────────
;Данные, связанные с отрисовкой	пули
;Загружается $E622 (такой же массив по адресу $D3D5)
Bullet_Coord_X_Increment_2:.BYTE 0, $FF, 0, 1 ;	DATA XREF: Bullet_Fly_Handle+1Er
;Загружается $E632
Bullet_Coord_Y_Increment_2:.BYTE $FF, 0, 1, 0 ;	DATA XREF: Bullet_Fly_Handle+2Er

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; Останавливаем	звук, включаем каналы и	т.п. (аналогично Load в	NSF формате)

Sound_Stop:				; CODE XREF: ROM:C15Cp	ROM:C253p
					; Draw_Brick_GameOver+65p
					; Reset_ScreenStuff+4Ep
		LDA	#00001111b
		STA	SND_MASTERCTRL_REG ; Включаем аудиоканалы 0,1,2,3
		LDA	#11000000b
		STA	JOYPAD_PORT2	; Включение Vertical Clock Signal (внешнего) и выключение внутреннего
		LDA	#$1C		;
					; Заполнение нулями области 300-31С (каждый байт)
					; и 31С-3FC (через 8 байт)
		STA	Low_Ptr_byte2
		LDA	#3		; Будем	читать из RAM звуков ($300)
		STA	High_Ptr_byte2
		LDX	#0
		LDY	#0

-:					; CODE XREF: Sound_Stop+2Aj
		TYA
		STA	(Low_Ptr_byte2),Y
		STA	Snd_Pause,X
		CLC
		LDA	Low_Ptr_byte2
		ADC	#8
		STA	Low_Ptr_byte2
		BCC	+
		INC	High_Ptr_byte2

+:					; CODE XREF: Sound_Stop+23j
		INX
		CPX	#$1C
		BNE	-
		RTS
; End of function Sound_Stop


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████

; аналогично Play в NSF	формате

Play_Sound:				; CODE XREF: ROM:D439p
		LDA	Pause_Flag
		BNE	loc_EA88
		LDA	#$1C
		STA	byte_F5
		BPL	loc_EA8C

loc_EA88:				; CODE XREF: Play_Sound+2j
		LDA	#1
		STA	byte_F5

loc_EA8C:				; CODE XREF: Play_Sound+8j
		LDA	#0
		LDX	#3

loc_EA90:				; CODE XREF: Play_Sound+15j
		STA	$F9,X
		DEX
		BPL	loc_EA90
		LDA	#0
		STA	Sound_Number
		LDA	#$1C
		STA	Low_Ptr_byte2
		LDA	#3
		STA	High_Ptr_byte2

loc_EAA1:				; CODE XREF: Play_Sound+76j
		LDX	Sound_Number
		LDA	Snd_Pause,X
		BEQ	loc_EAE3
		LDY	#0
		LDA	(Low_Ptr_byte2),Y
		BEQ	loc_EAE3
		CMP	#5
		BCC	loc_EABD
		SEC
		SBC	#5
		TAX
		LDA	#1
		STA	$F9,X
		JMP	loc_EAE3
; ───────────────────────────────────────────────────────────────────────────

loc_EABD:				; CODE XREF: Play_Sound+32j
		TAX
		DEX
		LDA	$F9,X
		BNE	loc_EAE3
		LDA	#1
		STA	$F9,X
		TXA
		TAY
		CLC
		ADC	#5
		LDY	#0
		STA	(Low_Ptr_byte2),Y
		TXA
		ASL	A
		ASL	A
		TAX
		LDA	#4
		STA	byte_FD

loc_EAD8:				; CODE XREF: Play_Sound+63j
		INY
		LDA	(Low_Ptr_byte2),Y
		STA	SND_SQUARE1_REG,X ; pAPU Pulse #1 Control Register (W)
		INX
		DEC	byte_FD
		BNE	loc_EAD8

loc_EAE3:				; CODE XREF: Play_Sound+28j
					; Play_Sound+2Ej Play_Sound+3Cj
					; Play_Sound+43j
		CLC
		LDA	Low_Ptr_byte2
		ADC	#8
		STA	Low_Ptr_byte2
		BCC	loc_EAEE
		INC	High_Ptr_byte2

loc_EAEE:				; CODE XREF: Play_Sound+6Cj
		INC	Sound_Number
		LDA	Sound_Number
		CMP	byte_F5
		BCC	loc_EAA1
		LDX	#0

loc_EAF8:				; CODE XREF: Play_Sound+91j
		STX	byte_FD
		LDA	$F9,X
		BNE	loc_EB0A
		TXA
		ASL	A
		ASL	A
		TAX
		ASL	A
		AND	#$10
		EOR	#$10
		STA	SND_SQUARE1_REG,X ; pAPU Pulse #1 Control Register (W)

loc_EB0A:				; CODE XREF: Play_Sound+7Ej
		LDX	byte_FD
		INX
		CPX	#4
		BCC	loc_EAF8
		LDY	#0
		STY	Sound_Number
		LDA	#$1C
		STA	Low_Ptr_byte2
		LDA	#3
		STA	High_Ptr_byte2

loc_EB1D:				; CODE XREF: Play_Sound+C1j
		LDX	Sound_Number
		LDA	Snd_Pause,X
		BEQ	loc_EB2E
		CMP	#1
		BNE	loc_EB42
		INC	Snd_Pause,X
		JMP	loc_EB4F
; ───────────────────────────────────────────────────────────────────────────

loc_EB2E:				; CODE XREF: Play_Sound+A4j
					; Play_Sound+CFj Play_Sound+160j
					; Play_Sound+1A0j
		CLC
		LDA	Low_Ptr_byte2
		ADC	#8
		STA	Low_Ptr_byte2
		BCC	loc_EB39
		INC	High_Ptr_byte2

loc_EB39:				; CODE XREF: Play_Sound+B7j
		INC	Sound_Number
		LDA	Sound_Number
		CMP	byte_F5
		BCC	loc_EB1D
		RTS
; ───────────────────────────────────────────────────────────────────────────

loc_EB42:				; CODE XREF: Play_Sound+A8j
		LDY	#7
		LDA	(Low_Ptr_byte2),Y
		SEC
		SBC	#1
		STA	(Low_Ptr_byte2),Y
		BEQ	loc_EB85
		BNE	loc_EB2E

loc_EB4F:				; CODE XREF: Play_Sound+ADj
		LDA	#0
		LDY	#5
		STA	(Low_Ptr_byte2),Y
		JSR	Load_Snd_Ptr
		JSR	sub_ECBE
		LDY	#0
		STA	(Low_Ptr_byte2),Y
		JSR	sub_ECBE
		LDY	#1
		STA	(Low_Ptr_byte2),Y
		JSR	sub_ECBE
		LDY	#2
		STA	(Low_Ptr_byte2),Y
		JSR	sub_ECBE
		LDY	#4
		STA	(Low_Ptr_byte2),Y
		LDY	#0
		LDA	(Low_Ptr_byte2),Y
		CMP	#4
		BNE	loc_EB88
		JSR	sub_ECBE
		LDY	#3
		STA	(Low_Ptr_byte2),Y
		BPL	loc_EB88

loc_EB85:				; CODE XREF: Play_Sound+CDj
		JSR	Load_Snd_Ptr

loc_EB88:				; CODE XREF: Play_Sound+FCj
					; Play_Sound+105j Play_Sound+11Dj
					; ROM:EC30j ROM:EC42j	ROM:EC54j
					; ROM:EC5Ej ROM:EC68j	ROM:EC72j
					; ROM:EC7Ej ROM:ECA2j	ROM:ECACj
		JSR	sub_ECBE
		CMP	#$E8 ; 'ш'
		BCS	loc_EBE1
		CMP	#$60 ; '`'
		BEQ	loc_EBD7
		BCC	loc_EB9E
		SBC	#$60 ; '`'
		LDY	#6
		STA	(Low_Ptr_byte2),Y
		JMP	loc_EB88
; ───────────────────────────────────────────────────────────────────────────

loc_EB9E:				; CODE XREF: Play_Sound+115j
		PHA
		AND	#$F8 ; '°'
		LSR	A
		LSR	A
		TAX
		LDA	Snd_Beep,X	; Похоже на
					; звуковые данные(отвечают за отдельные	звуки?)
		STA	byte_FD
		LDA	Snd_Beep+1,X	; Похоже на
					; звуковые данные(отвечают за отдельные	звуки?)
		STA	byte_FE
		PLA
		AND	#7
		BEQ	loc_EBBB
		TAX

loc_EBB4:				; CODE XREF: Play_Sound+13Bj
		LSR	byte_FD
		ROR	byte_FE
		DEX
		BNE	loc_EBB4

loc_EBBB:				; CODE XREF: Play_Sound+133j
		LDY	#4
		LDA	(Low_Ptr_byte2),Y
		AND	#$F8 ; '°'
		ORA	byte_FD
		STA	(Low_Ptr_byte2),Y
		LDA	byte_FE
		DEY
		STA	(Low_Ptr_byte2),Y
		LDY	#0
		LDA	(Low_Ptr_byte2),Y
		CMP	#5
		BCC	loc_EBD7
		SEC
		SBC	#4
		STA	(Low_Ptr_byte2),Y

loc_EBD7:				; CODE XREF: Play_Sound+113j
					; Play_Sound+152j
		LDY	#6
		LDA	(Low_Ptr_byte2),Y
		INY
		STA	(Low_Ptr_byte2),Y
		JMP	loc_EB2E
; ───────────────────────────────────────────────────────────────────────────

loc_EBE1:				; CODE XREF: Play_Sound+10Fj
		SBC	#$E8 ; 'ш'
		JSR	sub_ECD0
; ───────────────────────────────────────────────────────────────────────────
;Указатели?
Sound_Com_JumpTable:.WORD Sound_Com1	; Указатели на косвенный прыжок	в подпрограммы ниже
					; (при взрыве врага $ECD9)
		.WORD Sound_Com2	; Не выполнилось
		.WORD Sound_Com3
		.WORD Sound_Com4	; Не выполнилось
		.WORD Sound_Com5
		.WORD Sound_Com6
		.WORD Sound_Com7
		.WORD Sound_Com8
		.WORD Sound_Com9
		.WORD Sound_Com10
		.WORD Sound_Com11
		.WORD Sound_Com12
		.WORD Sound_Com12
		.WORD Sound_Com12
		.WORD Sound_Com12
		.WORD Sound_Com12
		.WORD Sound_Com12
		.WORD Sound_Com13
; ───────────────────────────────────────────────────────────────────────────

Sound_Com1:				; DATA XREF: Play_Sound:Sound_Com_JumpTableo
		LDX	Sound_Number
		LDA	#0
		STA	Snd_Pause,X
		LDY	#0
		STA	(Low_Ptr_byte2),Y
		LDY	#5
		LDA	(Low_Ptr_byte2),Y
		SEC
		SBC	#1
		STA	(Low_Ptr_byte2),Y
		JMP	loc_EB2E
; End of function Play_Sound

; ───────────────────────────────────────────────────────────────────────────

Sound_Com2:				; DATA XREF: Play_Sound+16Ao
		JSR	sub_ECBE	; Не выполнилось
		STA	byte_FD
		LDY	#1
		LDA	(Low_Ptr_byte2),Y
		AND	#$3F ; '?'
		ORA	byte_FD
		STA	(Low_Ptr_byte2),Y
		JMP	loc_EB88
; ───────────────────────────────────────────────────────────────────────────

Sound_Com3:				; DATA XREF: Play_Sound+16Co
		JSR	sub_ECBE
		STA	byte_FD
		LDY	#1
		LDA	(Low_Ptr_byte2),Y
		AND	#$C0 ; '└'
		ORA	byte_FD
		STA	(Low_Ptr_byte2),Y
		JMP	loc_EB88
; ───────────────────────────────────────────────────────────────────────────

Sound_Com4:				; DATA XREF: Play_Sound+16Eo
		JSR	sub_ECBE	; Не выполнилось
		STA	byte_FD
		LDY	#1
		LDA	(Low_Ptr_byte2),Y
		AND	#Low_Ptr_byte2
		ORA	byte_FD
		STA	(Low_Ptr_byte2),Y
		JMP	loc_EB88
; ───────────────────────────────────────────────────────────────────────────

Sound_Com5:				; DATA XREF: Play_Sound+170o
		JSR	sub_ECBE
		LDY	#2
		STA	(Low_Ptr_byte2),Y
		JMP	loc_EB88
; ───────────────────────────────────────────────────────────────────────────

Sound_Com6:				; DATA XREF: Play_Sound+172o
		JSR	sub_ECBE
		LDY	#4
		STA	(Low_Ptr_byte2),Y
		JMP	loc_EB88
; ───────────────────────────────────────────────────────────────────────────

Sound_Com7:				; DATA XREF: Play_Sound+174o
		JSR	sub_ECBE
		LDY	#1
		STA	(Low_Ptr_byte2),Y
		JMP	loc_EB88
; ───────────────────────────────────────────────────────────────────────────

Sound_Com8:				; DATA XREF: Play_Sound+176o
		LDA	#0
		LDX	#2

loc_EC79:				; CODE XREF: ROM:EC7Cj
		STA	$F6,X
		DEX
		BPL	loc_EC79
		JMP	loc_EB88
; ───────────────────────────────────────────────────────────────────────────

Sound_Com9:				; DATA XREF: Play_Sound+178o
		LDX	#0
		BEQ	loc_EC8A

Sound_Com10:				; DATA XREF: Play_Sound+17Ao
		LDX	#1
; ───────────────────────────────────────────────────────────────────────────
		.BYTE $2C ; ,
; ───────────────────────────────────────────────────────────────────────────

Sound_Com11:				; DATA XREF: Play_Sound+17Co
		LDX	#2

loc_EC8A:				; CODE XREF: ROM:EC83j
		JSR	sub_ECBE
		INC	$F6,X
		CMP	$F6,X
		BNE	Sound_Com13
		LDA	#0
		STA	$F6,X
		BEQ	Sound_Com12

Sound_Com12:				; DATA XREF: Play_Sound+17Eo
					; Play_Sound+180o Play_Sound+182o
					; Play_Sound+184o Play_Sound+186o
					; Play_Sound+188o
		LDY	#5
		LDA	(Low_Ptr_byte2),Y
		CLC
		ADC	#1
		STA	(Low_Ptr_byte2),Y
		JMP	loc_EB88
; ───────────────────────────────────────────────────────────────────────────

Sound_Com13:				; CODE XREF: ROM:EC91j
					; DATA XREF: Play_Sound+18Ao
		JSR	sub_ECBE
		LDY	#5
		STA	(Low_Ptr_byte2),Y
		JMP	loc_EB88

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Load_Snd_Ptr:				; CODE XREF: Play_Sound+D7p
					; Play_Sound:loc_EB85p
		LDA	Sound_Number
		ASL	A		; Т.к. указатель двухбайтовый
		TAX
		LDA	Sound_PtrTbl,X
		STA	Low_SndPtr
		LDA	Sound_PtrTbl+1,X
		STA	High_SndPtr
		RTS
; End of function Load_Snd_Ptr


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


sub_ECBE:				; CODE XREF: Play_Sound+DAp
					; Play_Sound+E1p Play_Sound+E8p
					; Play_Sound+EFp Play_Sound+FEp
					; Play_Sound:loc_EB88p	ROM:Sound_Com2p
					; ROM:Sound_Com3p ROM:Sound_Com4p
					; ROM:Sound_Com5p ROM:Sound_Com6p
					; ROM:Sound_Com7p ROM:loc_EC8Ap
					; ROM:Sound_Com13p
		LDA	Sound_Number
		LDY	#5
		LDA	(Low_Ptr_byte2),Y
		TAY
		LDA	(Low_SndPtr),Y
		PHA
		INY
		TYA
		LDY	#5
		STA	(Low_Ptr_byte2),Y
		PLA
		RTS
; End of function sub_ECBE


; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


sub_ECD0:				; CODE XREF: Play_Sound+165p
		ASL	A
		TAY
		INY
		PLA
		STA	byte_FD
		PLA
		STA	byte_FE
		LDA	($FD),Y
		TAX
		INY
		LDA	($FD),Y
		STA	byte_FE
		STX	byte_FD
		JMP	(byte_FD)
; End of function sub_ECD0

; ───────────────────────────────────────────────────────────────────────────
; Звук?
;Загружается $EBA4
Snd_Beep:	.BYTE 7, $F2, 7, $80, 7, $14, 6, $AE, 6, $43, 5, $F4, 5
					; DATA XREF: Play_Sound+126r
					; Play_Sound+12Br
		.BYTE $9E, 5, $4E, 5, 2, 4, $BA, 4, $76, 4, $36	; Похоже на
					; звуковые данные(отвечают за отдельные	звуки?)

;Указатели на звуковые данные (28 звуков)
Sound_PtrTbl:	.WORD Sound_Pause	; DATA XREF: Load_Snd_Ptr+4r
					; Load_Snd_Ptr+9r
		.WORD Sound_Battle1
		.WORD Sound_Battle2
		.WORD sound_Battle3
		.WORD sound_Ancillary_Life1
		.WORD sound_Ancillary_Life2
		.WORD sound_BonusTaken
		.WORD sound_PlayerExplode
		.WORD sound_Unknown1
		.WORD sound_BonusAppears
		.WORD sound_EnemyExplode
		.WORD sound_HQExplode
		.WORD sound_BrickRicochet
		.WORD sound_ArmorRicochetWall
		.WORD sound_ArmorRicochetTank
		.WORD sound_Shoot
		.WORD sound_Ice
		.WORD sound_Move
		.WORD sound_Engine
		.WORD sound_PtsCount1
		.WORD sound_PtsCount2
		.WORD sound_RecordPts1
		.WORD sound_RecordPts2
		.WORD sound_RecordPts3
		.WORD sound_GameOver1
		.WORD sound_GameOver2
		.WORD sound_GameOver3
		.WORD sound_BonusPts

;Звуковые данные:
;$E8 - конец звука
;Если звук зациклен (move, engine), байта конца	нет
Sound_Battle1:	.BYTE	1,$81,$7F,$40,$EF,$68,$1B,$2B,$33,$F0,	2,  6,$33,$43,$53,$F0
					; DATA XREF: ROM:ED00o
		.BYTE	2, $C,$43,$53,	4,$F0,	2,$12,$5B, $C,$1C,$F0,	2,$18,$78,$1C
		.BYTE $68,$1C,$1C,$1C,$78,$1C,$E8
Sound_Battle2:	.BYTE 3,$10,$7F,8,$78,$1A,$68,$1A,$F1,3,7,$78,$32,$68,$32,$F1
					; DATA XREF: ROM:ED02o
		.BYTE 3,$E,$78,$42,$68,$42,$F1,3,$15,$5A,$F1,3,$19,$B,$F1,3
		.BYTE $1D,$78,$52,$68,$52,$F1,3,$24,$78,$52,$E8
sound_Battle3:	.BYTE	2,$81,$7F,$40,$78,$51,$68,$51,$F2,  3,	7,$78, $A,$68, $A,$F2
					; DATA XREF: ROM:ED04o
		.BYTE	3, $E,$78,$1A,$68,$1A,$F2,  3,$15,$32,$F2,  3,$19,$42,$F2,  3
		.BYTE $1D,$78,$3A,$68,$3A,$F2,	3,$24,$78,$3A,$E8
sound_PlayerExplode:.BYTE   4,$1F,$7F,$30, $A,$62,$49,$49,$EA,$1E,$49,$49,$EA,$1D,$49,$49
					; DATA XREF: ROM:ED0Co
		.BYTE $EA,$1C,$49,$49,$EA,$1B,$49,$49,$EA,$1A,$49,$EA,$19,$49,$EA,$18
		.BYTE $49,$E8
sound_Unknown1:	.BYTE	2,$1F,$7F,$30,$62,  0,	1,  0,$EA,$1E,	1,  0,$EA,$1D,	1,  0
					; DATA XREF: ROM:ED0Eo
		.BYTE	1,  0,$EA,$1C,	1,$EA,$1B,  0,$EA,$1A,	1,$EA,$19,  0,$E8
sound_HQExplode:.BYTE	2,$20,$7F,$30,$63,$1A,$12,$51,$31,$19,$11,$50,$30,$18,$E8
					; DATA XREF: ROM:ED14o
sound_EnemyExplode:.BYTE   4,$1F,$7F,$40, $A,$62,$51,$EA,$1E,$51,$EA,  8,$6A,$51,$E8
					; DATA XREF: ROM:ED12o
sound_Shoot:	.BYTE	1,$8F,$82,$10,$6F,$2C,$E8 ; DATA XREF: ROM:ED1Co
sound_BonusTaken:.BYTE	 2,$80,$7F,$40,$63,$52,$1B,$3B,$53,$4A,$13,$33,$4B,$1B,$3B,$53
					; DATA XREF: ROM:ED0Ao
		.BYTE $1C,$3C,$E8
Sound_Pause:	.BYTE	2,$82,$7F,$40,$64,$1B,$2B,$3B,$1C,$2C,$3C,$6C,$53,$E8
					; DATA XREF: ROM:Sound_PtrTblo
sound_BonusPts:	.BYTE	2,$82,$7F,$40,$63,$53,$1B,$1C,$3B,$3C,$53,$6A,$54,$E8
					; DATA XREF: ROM:ED34o
sound_BonusAppears:.BYTE   2,$60,$7F,$40,$64,$52,$3A,$52,  3,$52,  3,$13,$1B,$E8
					; DATA XREF: ROM:ED10o
sound_ArmorRicochetWall:.BYTE	2,$D5,$7F,  0,$62,$1C,$1D,$E8 ;	DATA XREF: ROM:ED18o
sound_BrickRicochet:.BYTE   3,	7,$7F,	8,$61,$3A,$13,$22,$E8 ;	DATA XREF: ROM:ED16o
sound_ArmorRicochetTank:.BYTE	2,$40,$7F,  0,$61,$3D,$62,$45,$EA,$10,$28,$E8
					; DATA XREF: ROM:ED1Ao
sound_PtsCount1:.BYTE	2,$80,$7F,$18,$61,$39,$E8 ; DATA XREF: ROM:ED24o
sound_PtsCount2:.BYTE	4,  0,$7F,$28, $A,$61,$28,$E8 ;	DATA XREF: ROM:ED26o
sound_Engine:	.BYTE	2,$8C,$94,$40,$61,$10,$64,$18,$F9,  5 ;	DATA XREF: ROM:ED22o
sound_Move:	.BYTE	2,$80,$94,$48,$62,$40,$48,$F9,	5 ; DATA XREF: ROM:ED20o
sound_Ice:	.BYTE	1,$1F,$7F,$28,$61,$22,$42,$5A,$1B,$E8 ;	DATA XREF: ROM:ED1Eo
sound_Ancillary_Life1:.BYTE   1,$A0,$7F,$40,$66,$1C,$3C,$1C,$53,$1C,$3C,  5,$72,$54,$E8
					; DATA XREF: ROM:ED06o
sound_Ancillary_Life2:.BYTE   2,$90,$7F,$40,$62,$38,$66,$EA,$20,$3B,$53,$3B,$1B,$3B,$53,$1C
					; DATA XREF: ROM:ED08o
		.BYTE $6A,$14,$E8
sound_RecordPts1:.BYTE	 1,$B8,$7F,$40,$EF,$65,	$C,$53,$F0, $C,	 5, $C,$53,$F0,	$C, $B
					; DATA XREF: ROM:ED28o
		.BYTE $34,$24,$F0,  8,$10,$EA,$30,$B0,$50,$EA,$20,$9C,$54,$E8
sound_RecordPts2:.BYTE	 2,$B8,$7F,$40,$65,$43,$33,$F1,	$C,  4,$43,$33,$F1, $C,	$A,$14
					; DATA XREF: ROM:ED2Ao
		.BYTE $4B,$F1,	8, $F,$EA,$3A,$30,$50,	9,$29,$31,$51, $A,$2A,$32,$52
		.BYTE  $B,$2B,$33,$53, $C,$2C,$9C,$EA,$20,$2C,$E8
sound_RecordPts3:.BYTE	 3,  0,$7F,  8,$A1,  1,	 1,$EE,$15,$6A,	$B, $B,	$B,$EE,$22,$6F
					; DATA XREF: ROM:ED2Co
		.BYTE $33,$65,$43,$7E,$EE,$33,$53,$6A,$EE,$15,$43,$33,$53,$6F,$EE,$22
		.BYTE $13,$65,$23,$7E,$EE,$33,$33,$6A,$EE,$15,$23,$13,$4A,$9C,$EE,$FF
		.BYTE $32,$E8
sound_GameOver1:.BYTE	1,$42,$7F,$40,$66,$1B, $B,$78,$1B,$68,$52,$42,$32,$1A,$1A,$1A
					; DATA XREF: ROM:ED2Eo
		.BYTE $78,$1A,$E8
sound_GameOver2:.BYTE	2,$82,$7F,$40,$66,$52,$52,$78,$52,$68,$32,$2A,$12,$1A,$1A,$1A
					; DATA XREF: ROM:ED30o
		.BYTE $78,$1A,$E8
sound_GameOver3:.BYTE	3,$10,$7F,  8,$66,$3B,$33,$78,$3B,$68,$1B, $B,$52,$52,$52,$52
					; DATA XREF: ROM:ED32o
		.BYTE $78,$52,$E8
;Заглушка до круглого числа:
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF

; ███████████████ S U B	R O U T	I N E ███████████████████████████████████████


Load_Level:				; CODE XREF: ROM:C1D9p
					; Load_DemoLevel+20p
		CMP	#$FF
		BNE	Normal_Level
		LDA	#$24 ; '$'      ; Демо-уровень
		JMP	Begin
; ───────────────────────────────────────────────────────────────────────────

Normal_Level:				; CODE XREF: Load_Level+2j
		CMP	#$24 ; '$'
		BCC	Begin		; Проверка на максимальный уровень
		SEC
		SBC	#$23 ; '#'      ; Возвращаемся к первому уровню

Begin:					; CODE XREF: Load_Level+6j
					; Load_Level+Bj
		STA	Temp
		LDA	#>Level_Data
		STA	HighPtr_Byte
		LDA	#<Level_Data	; Старший и младший байты указателя
					; на начало блока уровней
		STA	LowPtr_Byte

-:					; CODE XREF: Load_Level+23j
		DEC	Temp
		BEQ	+
		LDA	#$5B ; '['      ; 5b-размер данных одного уровня
		JSR	Inc_Ptr_on_A
		JMP	-
; ───────────────────────────────────────────────────────────────────────────

+:					; CODE XREF: Load_Level+1Cj
		LDA	#0
		STA	Counter
		LDA	LowPtr_Byte
		STA	LowStrPtr_Byte
		LDA	HighPtr_Byte
		STA	HighStrPtr_Byte
		LDA	#$10
		STA	Block_Y

--:					; CODE XREF: Load_Level+77j
		JSR	NMI_Wait	; Ожидает немаскируемого прерывания
		LDA	#$10
		STA	Block_X

---:					; CODE XREF: Load_Level+6Aj
		LDA	Counter
		LSR	A
		TAY
		LDA	Counter
		AND	#1
		BEQ	++
		LDA	(LowStrPtr_Byte),Y
		AND	#$F
		JMP	+++
; ───────────────────────────────────────────────────────────────────────────

++:					; CODE XREF: Load_Level+45j
		LDA	(LowStrPtr_Byte),Y
		LSR	A
		LSR	A
		LSR	A
		LSR	A

+++:					; CODE XREF: Load_Level+4Bj
		LDX	Block_X
		LDY	Block_Y
		JSR	Draw_TSABlock
		LDA	#0
		STA	ScrBuffer_Pos
		INC	Counter
		LDA	Block_X
		CLC
		ADC	#$10
		STA	Block_X
		CMP	#$E0 ; 'р'
		BNE	---
		INC	Counter
		LDA	Block_Y
		CLC
		ADC	#$10
		STA	Block_Y
		CMP	#$E0 ; 'р'
		BNE	--
		RTS
; End of function Load_Level

; ───────────────────────────────────────────────────────────────────────────
;Данные	уровней.
;Level 1:
Level_Data:	.BYTE $DD, $DD,	$DD, $DD, $DD, $DD, $DD, $D4, $D4, $D4
					; DATA XREF: Load_Level+12t
					; Load_Level+16t
		.BYTE $D4, $D4,	$D4, $DD, $D4, $D4, $D4, $D4, $D4, $D4
		.BYTE $DD, $D4,	$D4, $D4, $94, $D4, $D4, $DD, $D4, $D4
		.BYTE $D3, $D3,	$D4, $D4, $DD, $D3, $D3, $D1, $D1, $D3
		.BYTE $D3, $DD,	$1D, $11, $D3, $D3, $D1, $1D, $1D, $8D
		.BYTE $33, $D1,	$D1, $D3, $3D, $8D, $D1, $D1, $D4, $44
		.BYTE $D1, $D1,	$DD, $D4, $D4, $D4, $D4, $D4, $D4, $DD
		.BYTE $D4, $D4,	$D3, $D3, $D4, $D4, $DD, $D4, $D4, $DD
		.BYTE $DD, $D4,	$D4, $DD, $DD, $DD, $DD, $DD, $DD, $DD
		.BYTE $DD
;Level 2:
		.BYTE $DD, $D9,	$DD, $D9, $DD, $DD, $DD, $D4, $D9, $DD
		.BYTE $D4, $D4,	$D4, $DD, $D4, $DD, $DD, $44, $D4, $94
		.BYTE $DD, $DD,	$D4, $DD, $DD, $D9, $DD, $DD, $BD, $D4
		.BYTE $DD, $9D,	$D4, $B4, $9D, $BB, $DD, $D4, $DD, $9D
		.BYTE $BD, $DD,	$D4, $44, $BB, $B9, $DD, $B4, $DD, $DD
		.BYTE $D9, $B4,	$D4, $D4, $D4, $DD, $94, $D9, $D4, $D4
		.BYTE $DD, $D4,	$DD, $D4, $D4, $D4, $44, $D4, $94, $DD
		.BYTE $D4, $D4,	$D4, $44, $DD, $DD, $DD, $D4, $DD, $DD
		.BYTE $DD, $D4,	$D4, $DD, $D4, $D4, $DD, $DD, $D4, $44
		.BYTE $DD
;Level 3:
		.BYTE $DD, $DD,	$4D, $DD, $4D, $DD, $DD, $DB, $BB, $4D
		.BYTE $DD, $DD,	$66, $6D, $4B, $BB, $DD, $DD, $DD, $DD
		.BYTE $DD, $BB,	$BB, $DD, $D4, $D4, $44, $2D, $BB, $BB
		.BYTE $44, $43,	$D4, $D0, $DD, $BB, $BB, $DD, $4D, $DD
		.BYTE $D0, $DD,	$DB, $DD, $DD, $99, $9D, $DB, $DD, $D1
		.BYTE $D1, $DD,	$DD, $DB, $BB, $BD, $42, 4, $20, $33, $3B
		.BYTE $BB, $BD,	$DD, $DD, $D4, $D1, $1B, $BB, $BD, $4D
		.BYTE $D7, $DD,	$D3, $3B, $BB, $DD, $44, $D7, $DD, $DD
		.BYTE $DB, $BB,	$DD, $94, $4D, $DD, $DD, $D4, $DD, $DD
;Level 4:
		.BYTE $DB, $BD,	$DD, $DD, $DD, $DB, $DD, $BB, $DD, $14
		.BYTE $41, $1D,	$DD, $BD, $BD, $D0, $44, $44, $44, $1D
		.BYTE $8D, $8D,	$D4, $44, $44, $44, $42, $DD, $DD, 3, $DD
		.BYTE $D3, $44,	$D2, $DD, $AD, $D, $7D,	$7D, $42, $DD
		.BYTE $DD, $DD,	$4D, $11, $DD, $42, $DA, $AD, $DD, $44
		.BYTE $44, $44,	$44, $DD, $DD, $D0, $44, $44, $44, $44
		.BYTE $2D, $DD,	$D3, $34, $44, $44, $43, $3D, $DD, $D4
		.BYTE $41, $34,	$43, $14, $4D, $BD, $BD, $33, $DD, $DD
		.BYTE $33, $DB,	$BD, $9B, $DD, $DD, $DD, $DD, $BB, $9D
;Level 5:
		.BYTE $DD, $DD,	$44, $4D, $DD, $DD, $DD, $6D, $1D, $4D
		.BYTE $DD, $88,	$9D, $DD, $9D, $4D, $DD, $4D, $DD, $DD
		.BYTE $DD, $4D,	$44, $4D, $44, $DA, $AD, $AD, $3D, $DD
		.BYTE $3D, $DD,	$DA, $DD, $DD, $DD, $1D, $AA, $DA, $AA
		.BYTE $D4, $4D,	$44, $DD, $A4, $D4, $2D, $DD, $DD, $DD
		.BYTE $DD, $AD,	$DD, $DD, $57, $DD, $AA, $AD, $AD, $9D
		.BYTE $4D, $5D,	$DD, $DD, $D1, $1D, $DD, $DD, $54, $4D
		.BYTE $DD, $DD,	$43, $33, $41, $DD, $DD, $44, $3D, $DD
		.BYTE $DD, $D3,	$4D, $DD, $3D, $DD, $DD, $DD, $DD, $DD
		.BYTE $DD
;Level 6:
		.BYTE $DD, $DD,	$D0, $D2, $BB, $DD, $DD, $D2, $5D, $2D
		.BYTE $DD, $B, $20, $BD, $D2, $5D, $2D,	$4D, $B, $20, $BD
		.BYTE $D4, $DD,	$4D, $9D, $4B, $D4, $BD, $DD, $D0, $8D
		.BYTE $4D, $37,	$DB, $BD, $44, $2D, $DB, $4B, $DD, 4, $4D
		.BYTE $DD, $DD,	$B, $BB, $2D, $DD, $DD,	$94, $4D, $3B
		.BYTE $BB, $30,	$44, $9D, $88, $8D, $1D, $BD, $1D, $88
		.BYTE $8D, $D4,	$DD, $4D, $DD, $4D, $DD, $DD, $D4, $2D
		.BYTE $D3, $D3,	$DD, 4,	$BD, $DD, $3D, $DD, $DD, $DD, $BB
		.BYTE $BD, $DD,	$1D, $DD, $DD, $DD, $1B, $BD
;Level 7:
		.BYTE $DD, $DD,	$DD, $D8, $8D, $DD, $DD, $DD, $98, $88
		.BYTE $DD, $DD,	$9D, $DD, $DD, $9D, $DD, $BD, $89, $9D
		.BYTE $DD, $D9,	$DD, $DB, $9D, $DD, $9D, $DD, $DD, $DD
		.BYTE $B9, $9D,	$DD, $89, $DD, $D9, $DB, $99, $9D, $9D
		.BYTE $DD, $DD,	$D5, $D9, $9D, $DD, $99, $DD, $DD, $7D
		.BYTE $DD, $9D,	$99, $9D, $D5, $DD, $D5, $9D, $DD, $99
		.BYTE $BD, $D9,	$DD, $D9, $DD, $DD, $9B, $DD, $99, $DD
		.BYTE $D8, $89,	$DD, $BD, $D9, $DD, $DD, $DD, $DD, $DD
		.BYTE $DD, $D8,	$D6, $9D, $66, $DD, $DD, $DD, $DD, $DD
		.BYTE $DD
;Level 8:
		.BYTE $DD, $4D,	$D4, $D1, $D4, $DD, $DD, $B4, $44, $D4
		.BYTE $D6, $D4,	$2D, $DD, $BB, $BD, $D3, $D4, $D3, $D0
		.BYTE $2D, $BA,	$AA, $AA, $AA, $AA, $AD, $AD, $D4, $DD
		.BYTE $DD, $11,	$DD, $DD, $DD, $DD, $4D, $D0, $44, $34
		.BYTE $38, $8D,	$44, $D4, $D0, $44, $B4, $66, $4D, $DD
		.BYTE $D9, $D6,	$DB, $BB, $BD, $DD, $AA, $DA, $AA, $AA
		.BYTE $DA, $AA,	$AD, $BB, $D0, $DD, $11, $DD, $DD, $DD
		.BYTE $BB, $4D,	$2D, $D0, $D6, $14, $DD, $B6, $4D, $2D
		.BYTE $DD, $D3,	$D4, $DD, $DD, $DD, $DD, $DD, $D1, $D3
		.BYTE $DD
;Level 9:
		.BYTE $DD, $D4,	$DD, $DD, $D6, $BD, $DD, $4D, $DD, $DD
		.BYTE $6B, $59,	$7D, $4D, $DD, $D6, $B5, $97, $D8, $BD
		.BYTE $DD, $DD,	$59, $7D, $8B, $DD, $DD, $DD, $DD, $D8
		.BYTE $BD, $DD,	$DD, $DD, $DD, $DD, $DB, $6B, $DB, $6B
		.BYTE $DD, $DD,	$94, $D5, $97, $D5, $97, $D4, $9D, $DD
		.BYTE $DB, $8B,	$DB, $8B, $DD, $DD, $DD, $DD, $6D, $DD
		.BYTE $6D, $DD,	$DD, $4D, $D5, $97, $D5, $97, $DD, $4D
		.BYTE $4D, $DB,	$8B, $DB, $8B, $DD, $4D, $DD, $1D, $DD
		.BYTE $DD, $DD,	$1D, $DD, $DD, $44, $DD, $DD, $D4, $4D
		.BYTE $DD
;Level 10:
		.BYTE $DD, $DD,	$DD, $DD, $DD, $DD, $DD, $D0, $34, $DD
		.BYTE $DD, $DD,	$43, $2D, 3, $DD, $4D, $BB, $D4, $DD, $D
		.BYTE $4D, $DD,	$4B, $BB, $B4, $DD, $D,	$4D, $D0, $4B
		.BYTE $99, $B4,	$2D, $4D, 1, $14, $AA, $AA, $AA, $44, $4D
		.BYTE $D4, $44,	$99, $49, $94, $44, $2D, $DD, $44, $9D
		.BYTE $4D, $94,	$42, $DD, $DD, $44, $44, $44, $44, $42
		.BYTE $DD, $4B,	$33, $39, $93, $33, $3B, $4D, $4B, $BB
		.BYTE $BB, $BB,	$BB, $BB, $4D, $DD, $BB, $B1, $11, $BB
		.BYTE $BB, $DD,	$DD, $D2, $D4, $D4, $DD, $2D, $DD
;Level 11:
		.BYTE $DD, $DD,	$D9, $D4, $D4, $4D, $DD, $D0, $44, $44
		.BYTE $D4, $DD,	$DD, $DD, $DD, $D2, $D4, $D4, $4D, $BB
		.BYTE $BD, $D0,	$DD, $DD, $D9, $DB, $BB, $BD, $D0, $D4
		.BYTE $44, $94,	$4B, $B3, $9D, $D3, $33, $9D, $D4, $DB
		.BYTE $BD, $D, 4, $44, $D9, $BB, $BB, $BD, $DD,	$DD, $D9
		.BYTE $DD, $BB,	$BB, $B4, $DD, $94, $DB, $BB, $B9, $BB
		.BYTE $B4, $DD,	4, $BB,	$BB, $BD, $DD, $D4, $2D, $D4, $BB
		.BYTE $DD, $DD,	$84, $44, $DD, $DD, $BB, $DD, $DD, $D4
		.BYTE $D0, $DD,	$D1, $BB, $DD, $DD, $DD, $DD, $DD
;Level 12:
		.BYTE $DD, $DD,	$DD, $44, $44, $DD, $DD, $D4, $44, $1D
		.BYTE $1D, $D4,	$DD, $DD, $DD, $DD, $4D, $3D, $DD, $D4
		.BYTE $4D, $DA,	$AA, $AA, $D4, $2D, $D4, $8D, $DD, $66
		.BYTE $6A, $D4,	$D9, $74, $DD, $4D, $44, $4A, $AA, $DA
		.BYTE $44, $DD,	$DD, $DD, $9A, $DD, $DA, $8D, $DD, $AA
		.BYTE $AD, $AA,	$44, $DA, $DD, $DD, $DD, $DD, $D4, $88
		.BYTE $DA, $AA,	$DD, $44, $4D, $DD, $DD, $DD, $DD, $DD
		.BYTE $DD, $4D,	$88, $DD, $D4, $4D, $D,	$4D, $DD, $DD
		.BYTE $DD, $D4,	$DD, $4D, $DD, $DD, $DD, $DD, $DD, $DD
		.BYTE $DD
;Level 13:
		.BYTE $DD, $DD,	$1D, $DD, $1D, $DD, $DD, $D4, $44, $4D
		.BYTE $DD, $44,	$44, $DD, $D4, $DD, $DD, $4D, $DD, $D9
		.BYTE $DD, $D9,	$D4, $3D, $DD, $34, $D4, $4D, $D4, $D2
		.BYTE $B6, $96,	$B0, $D9, $4D, $D3, $DD, $BB, $BB, $BD
		.BYTE $D8, $4D,	$46, $DD, $BB, $BB, $BD, $D1, $4D, $49
		.BYTE $D2, $B8,	$98, $B0, $D4, $DD, $44, $D4, $1D, $DD
		.BYTE $14, $D9,	$DD, $49, $DD, $DD, $4D, $DD, $D4, $DD
		.BYTE $44, $44,	$4D, $DD, $44, $49, $9D, $44, $DD, $3D
		.BYTE $DD, $3D,	$D4, $DD, $44, $DD, $DD, $DD, $DD, $DD
		.BYTE $DD
;Level 14:
		.BYTE $DD, $DD,	$DD, $DD, $DD, $DD, $DD, $BB, $DD, $14
		.BYTE $44, $1D,	$DB, $BD, $BD, $D0, $44, $44, $42, $DD
		.BYTE $BD, $DD,	$D4, $4B, $4B, $44, $DD, $DD, $DD, $D4
		.BYTE $BB, $4B,	$B4, $DD, $DD, $BD, $D4, $44, $44, $44
		.BYTE $DD, $BD,	$BB, $DD, $4B, $4B, $4D, $DB, $BD, $AA
		.BYTE $AD, $44,	$44, $4D, $AA, $AD, $DD, $DD, 0, 0, $D
		.BYTE $DD, $DD,	$DD, $DD, $22, $22, $2D, $DD, $DD, $55
		.BYTE $5D, $DD,	$DD, $DD, $77, $7D, $22, $2D, $DD, $DD
		.BYTE $DD, 0, $D, $77, $75, $DD, $DD, $D7, $55,	$5D
;Level 15:
		.BYTE $DD, $DD,	$44, $DD, $4D, $DD, $DD, $DB, $B4, $4D
		.BYTE $DD, $4D,	$DD, $DD, $BB, $BB, $BB, $BB, $44, $DD
		.BYTE $DD, $B8,	$4B, $44, $4B, $BB, $B4, $9D, $BB, $4B
		.BYTE $BB, $8B,	$B4, $74, $DD, $DB, $B4, $6B, $BB, $B4
		.BYTE $D4, $DD,	$D4, $44, $44, $BB, $44, $2B, $BD, $58
		.BYTE $44, $DD,	$D4, $3D, $DD, $BD, $D4, $D4, $D6, $13
		.BYTE $BB, $42,	$BD, $D4, $DD, 4, $3B, $B4, $DD, $BD, $D4
		.BYTE $42, 3, $BB, $1B,	$4B, $BD, $DD, $4D, $BD, $DD, $4B
		.BYTE $3B, $DD,	$DD, $3D, $BD, $DD, $DB, $BB, $DD
;Level 16:
		.BYTE $DD, $DD,	$DD, $DD, $DD, $DD, $DD, $DD, $9B, $9D
		.BYTE $DD, $DD,	$DD, $DD, $DD, $DB, $DB, $6D, $DD, $DD
		.BYTE $DD, $DB,	$DD, $DD, $B1, $DD, $DD, $DD, $DB, $BD
		.BYTE $DB, $DB,	$6D, $DD, $DD, $DB, $DB, $DB, $DD, $B1
		.BYTE $DD, $DD,	$DB, $DD, $BD, $DD, $BB, $6D, $DD, $DD
		.BYTE $BD, $DD,	$DB, $BB, $B1, $DD, $DD, $DB, $DD, $BD
		.BYTE $BB, $BB,	$DD, $4D, $DD, $DD, $BD, $DB, $BB, $9D
		.BYTE $44, $DD,	$DD, $DB, $DB, $BB, $BD, $94, $4D, $DD
		.BYTE $DD, $BD,	$BB, $BD, $99, $44, $DD, $DD, $BD, $DB
		.BYTE $BD
;Level 17:
		.BYTE $DD, $DD,	$1D, $DD, $DD, $1D, $DD, $D4, $D4, $4D
		.BYTE $DC, $CC,	$44, $DD, $D4, $DD, $4D, $9C, $CC, $CC
		.BYTE $DD, $CC,	$C7, $4D, $D4, $CC, $CC, $DD, $CC, $CC
		.BYTE $CC, $44,	2, $DD,	$DD, $DD, $5C, $CC, $C4, 2, $D8
		.BYTE $8D, $44,	$44, $CC, $CC, $CC, $C4, $4D, $DD, $D4
		.BYTE $4C, $CC,	$C7, $DD, $DD, $D4, $44, $DC, $CC, $44
		.BYTE $D4, $DD,	$CC, $C4, $CD, $DD, $D4, $D4, $DD, $CC
		.BYTE $CC, $C8,	$D8, $DD, $14, $DD, $4C, $CC, $CD, $DD
		.BYTE $D4, $DD,	$DD, $44, $7D, $DD, $DD, $D4, $D4, $DD
;Level 18:
		.BYTE $DD, $DD,	$DD, $DD, $99, $9B, $DD, $D4, $DD, $DD
		.BYTE $DD, $9D,	$D9, $DD, $4B, $4D, $DD, $44, $44, $D9
		.BYTE $DD, $D4,	$B4, $DD, $4D, $B4, $99, $DD, $DD, $4D
		.BYTE $B9, $4B,	$D4, $DD, $DD, $DD, $DD, $9D, $49, $44
		.BYTE $DD, $DD,	$DD, $44, $94, $D9, $DD, $DD, $DD, $DD
		.BYTE $4D, $B4,	$9B, $DD, $DD, $DD, $99, $9B, $D4, $DD
		.BYTE $44, $DD,	$DD, $9D, $44, $44, $DD, $49, $9D, $DD
		.BYTE $9D, $D9,	$DD, $DD, $D9, $44, $DD, $B9, $99, $DD
		.BYTE $DD, $DD,	$49, $9D, $DD, $DD, $DD, $DD, $DD, $D9
		.BYTE $9D
;Level 19:
		.BYTE $D4, $D4,	$D4, $D4, $D4, $D4, $DD, $D4, $D4, $D4
		.BYTE $D4, $D4,	$D4, $DD, $D8, $D8, $D8, $D8, $D8, $D8
		.BYTE $DD, $1D,	$1D, $4D, $DD, $4D, $1D, $1D, $4D, $43
		.BYTE $4D, $4D,	$43, $4D, $4D, $8D, $8D, $9D, $8D, $9D
		.BYTE $8D, $8D,	$BB, $DD, $4D, $BD, $4D, $DB, $BD, $BB
		.BYTE $BB, $43,	$B3, $4B, $BB, $BD, $BB, $BB, $BB, $BB
		.BYTE $BB, $BB,	$BD, $1D, $1D, $4B, $BB, $4D, $1D, $1D
		.BYTE $D4, $D4,	$DD, $BD, $D4, $D4, $DD, $D4, $D4, $DD
		.BYTE $DD, $D4,	$D4, $DD, $D3, $D3, $DD, $DD, $D3, $D3
		.BYTE $DD
;Level 20:
		.BYTE $DD, $DA,	$D4, $DD, $4D, $4D, $DD, $DD, $DD, $DD
		.BYTE $DD, $4D,	$9D, $DD, $DD, $DA, $D1, $9D, $4D, $4D
		.BYTE $DD, $8D,	$4A, $D9, $D1, $3D, $4D, $DD, $DD, $4A
		.BYTE $DD, $D4,	$DD, $DD, $DD, $4D, $4A, $AD, $AA, $AA
		.BYTE $DD, $4D,	$DD, $D1, $DD, $DB, $DA, $D8, $8D, $44
		.BYTE 4, $D9, $BB, $BA,	$D1, $1D, $3D, $D, $D4,	$BB, $BA
		.BYTE $D4, $DD,	$D6, $DD, $D4, $DB, $DA, $DB, $DD, $D4
		.BYTE $D6, $D3,	$33, $DD, $BB, $BD, $D4, $D4, $DD, $DD
		.BYTE $DA, $BB,	$BD, $DD, $DD, $DD, $DD, $DA, $DB, $DD
;Level 21:
		.BYTE $DD, $D1,	$11, $DD, $1D, $DD, $DD, $D1, $44, $44
		.BYTE $44, $44,	$DD, $DD, $DB, $BB, $BB, $BB, $B4, $4D
		.BYTE $DD, $BB,	$DD, $DD, $DD, $BB, $44, $DD, $BD, $9D
		.BYTE $D9, $DD,	$DB, $BB, $DD, $BD, $9D, $D9, $DD, $DB
		.BYTE $BB, $DD,	$BD, $DB, $DD, $DD, $BB, $44, $2D, $BB
		.BYTE $BB, $BB,	$BB, $B4, $44, $2D, $4B, $B4, $4B, $BB
		.BYTE $44, $44,	$DD, $D4, $44, $44, $44, $44, $4D, $9D
		.BYTE $9D, $49,	$44, $44, $44, $2D, $9D, $D9, $43, $94
		.BYTE $44, $44,	$99, $9D, $DD, $DD, $DD, $DD, $DD, $DD
		.BYTE $DD
;Level 22:
		.BYTE $DD, $DD,	$DB, $DD, $DD, $DD, $DD, $DD, $DD, $B9
		.BYTE $BD, $DD,	$DD, $DD, $DD, $BD, $DB, $DD, $BB, $DD
		.BYTE $DD, $DB,	$4B, $DD, $DB, $44, $BD, $DD, $DD, $B4
		.BYTE $BD, $DD,	$BB, $DD, $BD, $BD, $DB, $DD, $BD, $DD
		.BYTE $DB, $9D,	$4B, $DD, $DB, $9B, $DD, $BD, $BD, $94
		.BYTE $BD, $DD,	$BD, $DB, $9B, $DD, $4B, $DD, $BD, $DD
		.BYTE $BD, $BD,	$DD, $BD, $DB, $4B, $DB, $4B, $DD, $DD
		.BYTE $DD, $DB,	$4B, $DD, $BD, $DB, $DD, $DB, $DD, $BD
		.BYTE $DD, $DD,	$B9, $BD, $B9, $BD, $DD, $DD, $DB, $4B
		.BYTE $DD
;Level 23:
		.BYTE $DD, $DD,	$DD, $DD, $DD, $DD, $DD, $DD, $DD, $D9
		.BYTE $9D, $DD,	$DD, $DD, $DD, $DD, $DD, $9D, $DD, $DD
		.BYTE $DD, $D9,	$9B, $B4, $94, $BB, $99, $DD, $DD, $D9
		.BYTE $BB, $9B,	$B9, $DD, $DD, $BD, $DD, $9B, $BB, $9D
		.BYTE $DD, $BD,	$9B, $DD, $DB, $BB, $DD, $DB, $9D, $BD
		.BYTE $DD, $68,	$B8, $6D, $DD, $BD, $DD, $DD, $9D, $6D
		.BYTE $9D, $DD,	$DD, $DD, $D9, $DD, $9D, $D9, $DD, $DD
		.BYTE $DD, $DD,	$DD, $DD, $DD, $DD, $DD, $DD, $DD, $DD
		.BYTE $DD, $DD,	$DD, $DD, $DD, $9D, $DD, $DD, $DD, $9D
		.BYTE $DD
;Level 24:
		.BYTE $DD, $9D,	$48, $DD, $DD, $D, $DD,	$DD, $4D, $4B
		.BYTE $D3, $44,	$4D, $DD, $DB, $BD, $4B, 2, $DD, $D9, $9D
		.BYTE $BB, $BB,	$BB, $44, $4D, 4, $DD, $DD, $BB, $11, $84
		.BYTE $D0, $43,	$D, $48, $D1, $33, $DD,	$D4, $3D, $D, $D
		.BYTE $14, $CC,	$CC, $CC, $CC, $CD, $D,	$3D, $CC, $CC
		.BYTE $CC, $CC,	$CD, $DD, $9D, $CC, $CC, $CC, $CC, $CD
		.BYTE $4D, $4D,	$CC, $CC, $CC, $CC, $CD, $D, $4D, $CC
		.BYTE $CC, $CC,	$CC, $CD, $D, $4D, $DD,	$DD, $CC, $CC
		.BYTE $CD, $DD,	$3D, $DD, $DD, $DC, $CC, $CD
;Level 25:
		.BYTE $DD, $D9,	$D4, $D4, $D4, $D9, $DD, $D4, $D4, $DD
		.BYTE $DD, $D9,	$DD, $DD, $D4, $D4, $DD, $9D, $D9, $D9
		.BYTE $9D, $D4,	$DD, $D4, $D9, $4D, $DD, $9D, $DD, $DD
		.BYTE $44, $D4,	$4D, $9D, $DD, $DD, $9D, $4D, $D4, $4D
		.BYTE $44, $DD,	$9D, $9D, $D4, $D9, $DD, $94, $DD, $DD
		.BYTE $44, $D4,	$DD, $D4, $9D, $DD, $D9, $44, $D4, $4D
		.BYTE $44, $DD,	$4D, $D4, $DD, $D4, $9D, $DD, $D4, $4D
		.BYTE $DD, $D4,	$D4, $49, $D9, $DD, $4D, $4D, $44, $DD
		.BYTE $DD, $D4,	$9D, $DD, $4D, $4D, $DD, $DD, $D4, $44
		.BYTE $DD
;Level 26:
		.BYTE $DD, $AA,	$DD, $DD, $DD, $DD, $DD, $6D, $DA, $BD
		.BYTE $2D, $DD,	$DD, $DD, $B6, $DD, $DD, $7D, $2D, $AA
		.BYTE $DD, $BB,	$D8, $10, $DD, $7B, $AD, $DD, $BB, $BD
		.BYTE $D9, $10,	$DD, $DD, $6D, $BB, $86, $D0, $D9, $1D
		.BYTE $D6, $BD,	$B8, $DD, $39, $D0, $D8, $DB, $BD, $DD
		.BYTE $DD, $D2,	$39, $DD, $BB, $BD, $DD, $AB, $5D, $D2
		.BYTE $36, $8B,	$BD, $DA, $AD, $D, $5D,	$DD, $DD, $BD
		.BYTE $DD, $DD,	$DD, $D, $BA, $DD, $8D,	$9D, $DD, $DD
		.BYTE $DD, $DA,	$AD, $DD, $99, $DD, $DD, $DD, $DD, $DD
		.BYTE $9D
;Level 27:
		.BYTE $DD, $DD,	$9D, $DD, $DD, $DD, $DD, $99, $DD, $9D
		.BYTE $D9, $9D,	$DD, $DD, $D9, $DD, $9D, $DD, $9D, $99
		.BYTE $BD, $D9,	$DD, $99, $9D, $BD, $9D, $DD, $D4, $DD
		.BYTE $DD, $9D,	$99, $9D, $DD, $B9, $9D, $94, $94, $4D
		.BYTE $DD, $DD,	$DD, $9B, $9B, $DD, $4D, $D9, $9D, $DD
		.BYTE $9D, $DB,	$DD, $9D, $D9, $DD, $DD, $4D, $D9, $DD
		.BYTE $99, $49,	$DD, $B9, $99, $BB, $49, $9D, $49, $DD
		.BYTE $DD, $D4,	$DD, $DD, $BB, $D4, $DD, $DD, $D9, $DD
		.BYTE $DD, $DB,	$D4, $DD, $DD, $D9, $DD, $DD, $D9, $D4
		.BYTE $DD
;Level 28:
		.BYTE $DD, $DD,	$DD, $DD, $DD, $57, $DD, $DD, $DD, $DD
		.BYTE $6D, $DD,	$9D, $DD, $DD, $DD, $D1, $B1, $D4, $2D
		.BYTE $DD, $DD,	$DD, $6B, $BB, $64, $2D, $DD, $DD, $D1
		.BYTE $BB, $CB,	$B4, $2D, $DD, $DD, $6B, $BC, $CC, $BB
		.BYTE $2D, $DD,	$D1, $BB, $CC, $CC, $CB, $B1, $DD, $6B
		.BYTE $BC, $CC,	$CC, $CC, $BB, $6D, $BB, $CC, $CC, $CC
		.BYTE $CC, $CB,	$BD, $DB, $CC, $CC, $CC, $CC, $CB, $DD
		.BYTE $DB, $CC,	$CC, $CC, $CC, $CB, $DD, $DB, $CC, $CD
		.BYTE $DD, $CC,	$CB, $DD, $DB, $CC, $DD, $DD, $DC, $CB
		.BYTE $DD
;Level 29:
		.BYTE $DD, $DD,	$DD, $DD, $DD, $4D, $DD, $D4, $AA, $D9
		.BYTE $D4, $DD,	$DD, $DD, $DD, $AA, $4B, $BB, $AA, $D9
		.BYTE $DD, $DD,	$DD, $DB, $BB, $AA, $4D, $DD, $D9, $DD
		.BYTE $AA, $DB,	$DD, $DD, $DD, $BB, $4D, $AA, $9D, $DD
		.BYTE $D4, $DD,	$BB, $BD, $DD, $DD, $D9, $DD, $9D, $D4
		.BYTE $AA, $D4,	$DD, $DD, $DD, $DD, $9D, $AA, $BB, $AA
		.BYTE $BB, $D4,	$DD, $DD, $DD, $BD, $AA, $BB, $AA, $DD
		.BYTE $DD, $D9,	$BD, $DD, $BB, $AA, $DD, $DD, $4D, $4D
		.BYTE $DD, $DD,	$DD, $DD, $4D, $DD, $DD, $DD, $D4, $9D
		.BYTE $DD
;Level 30:
		.BYTE $DD, $DD,	$DD, $DD, $DD, $DD, $DD, $DD, $DD, $D1
		.BYTE $1D, $DD,	$6D, $DD, $D6, $6D, $1B, $B6, $D1, $B1
		.BYTE $DD, $1B,	$B1, $BB, $BB, $1B, $BB, $1D, $BB, $BB
		.BYTE $BB, $BB,	$BB, $BB, $BD, $9B, $AB, $BB, $BB, $AB
		.BYTE $BB, $BD,	$BB, $AA, $AB, $BB, $AA, $AB, $9D, $BB
		.BYTE $BB, $AB,	$9B, $BB, $AB, $BD, $BB, $BB, $BB, $BB
		.BYTE $BB, $BB,	$BD, $BB, $BB, $B3, $3B, $BB, $BB, $8D
		.BYTE $8B, $BB,	$3D, $D3, $BB, $B8, $DD, $D8, $33, $DD
		.BYTE $DD, $33,	$3D, $DD, $DD, $DD, $DD, $DD, $DD, $DD
		.BYTE $DD
;Level 31:
		.BYTE $DD, $DA,	$DD, $DD, $AD, $DD, $DD, $AA, $DA, $DA
		.BYTE $AA, $AD,	$AA, $AD, $BB, $4D, $D4, $DD, $AD, $AB
		.BYTE $AD, $BA,	$AA, $AD, $9D, $D4, $BB, $BD, $BB, $DA
		.BYTE $DD, $AD,	$AA, $AA, $BD, $AA, $DA, $DA, $AD, $DA
		.BYTE $DD, $DD,	$DD, $4B, $4D, $4B, $DA, $DD, $AD, $DA
		.BYTE $AB, $AA,	$AA, $DB, $4D, $AD, $4D, $D4, $DD, $AD
		.BYTE $BB, $AD,	$AD, $AA, $DA, $AD, $A4, $AA, $AD, $DD
		.BYTE $DD, $4D,	$BB, $DD, $BA, $DD, $AD, $DA, $AA, $BD
		.BYTE $DD, $DA,	$DA, $AD, $DA, $DD, $DD, $DD, $DD, $DD
		.BYTE $DD
;Level 32:
		.BYTE $CC, $CC,	$CC, $CC, $CC, $CC, $CD, $CC, $CC, $CC
		.BYTE $CC, $CC,	$CC, $CD, $CC, $C4, $CC, $CC, $C4, $CC
		.BYTE $CD, $C4,	$D4, $D4, $C4, $D4, $D4, $CD, $C3, $34
		.BYTE $DD, $DD,	$D4, $33, $CD, $CC, $C4, $14, $94, $14
		.BYTE $CC, $CD,	$9C, $CC, $D8, $D8, $DC, $CC, $9D, $CC
		.BYTE $CC, $D1,	$D1, $DC, $CC, $CD, $CC, $CC, $D4, $D4
		.BYTE $DC, $CC,	$CD, $CC, $C4, $DD, $1D, $D4, $CC, $CD
		.BYTE $C4, $C4,	$D8, $88, $D4, $C4, $CD, $D4, $14, $DD
		.BYTE $DD, $D4,	$14, $DD, $D3, $DD, $DD, $DD, $DD, $D3
		.BYTE $DD
;Level 33:
		.BYTE $DD, $DD,	$9D, $DD, $D9, $DD, $DD, $D9, $DD, $D9
		.BYTE $DD, $9B,	$BD, $DD, $DD, $9D, $DD, $D9, $B6, $7D
		.BYTE $DD, $DD,	$D9, $DB, $BB, $BB, $D5, $DD, $D7, $DD
		.BYTE $9B, $B9,	$BD, $D9, $DD, $D8, $7B, $D9, $BB, $9D
		.BYTE $D5, $DD,	$DD, $BB, $BB, $BD, $D9, $DD, $DD, $D6
		.BYTE $7B, $D9,	$BD, $DD, $9D, $DD, $DB, $BB, $9D, $9D
		.BYTE $6D, $D9,	$DD, $BB, $B9, $DD, $DD, $5D, $DD, $DD
		.BYTE $DD, $9D,	$DD, $DD, $DD, $D5, $9D, $DD, $DD, $DD
		.BYTE $DD, $D6,	$7D, $DD, $7D, $6D, $DD, $DD, $DD, $DD
		.BYTE $DD
;Level 34:
		.BYTE $DD, $DD,	$20, $DD, $DD, $DD, $DD, $22, $20, $D2
		.BYTE $DD, $22,	$DD, $DD, $22, $24, $4D, $DD, $24, $2D
		.BYTE $DD, 0, $D4, $2D,	$D0, $24, $4D, $DD, $D2, $D4, 2
		.BYTE $D2, $44,	$4D, $DD, $D2, $D, $D4,	$24, 0,	$4D, $DD
		.BYTE $D2, $DD,	4, $42,	$D2, $4D, $DD, $D0, $DD, $24, $42
		.BYTE $D2, $4D,	$DD, $D0, $33, $D4, $44, $D2, $23, $4D
		.BYTE $D0, $DD,	2, $40,	$22, $20, $D, $DD, $2D,	$40, $24
		.BYTE $4D, $D0,	$DD, $DD, $20, $2D, $DD, $42, $D2, $DD
		.BYTE $DD, $20,	$DD, $DD, $D4, $4D, $DD
;Level 35:
		.BYTE $DD, $DD,	$DD, $DD, $DD, $DD, $DD, $DD, $DD, $4D
		.BYTE $4D, $DD,	$DD, $DD, $BD, $DB, $4B, $4B, $DD, $BD
		.BYTE $DD, $4B,	$B4, $44, $44, $BB, $4B, $DD, $44, $44
		.BYTE $94, $94,	$44, $4B, $DD, $AA, $A4, $44, $44, $AA
		.BYTE $AB, $DD,	$A4, $44, $44, $44, $44, $AA, $BD, $44
		.BYTE $4A, $44,	$4A, $44, $4B, $BD, $44, $AA, $A4, $AA
		.BYTE $A4, $4A,	$AD, $BA, $AB, $BB, $BB, $AA, $BA, $BD
		.BYTE $DB, $BD,	$DD, $DD, $BB, $DB, $DD, $DD, $DD, $DD
		.BYTE $DD, $DD,	$DD, $DD, $DD, $DD, $DD, $DD, $DD, $DD
		.BYTE $DD
;Demo Level:
		.BYTE $DD, $DD,	$DD, $DD, $DD, $DD, $DD, $6D, $DD, $DD
		.BYTE $6D, $DD,	$DD, $6D, $DD, $DD, $DD, $DD, $DD, $DD
		.BYTE $DD, $DD,	$DD, $DD, $DD, $DD, $DD, $DD, $DD, $DD
		.BYTE $DD, $DD,	$DD, $DD, $DD, $DD, $DD, $DD, $DD, $DD
		.BYTE $DD, $DD,	$DD, $DD, $DD, $DD, $DD, $DD, $DD, $DD
		.BYTE $DD, $DD,	$DD, $DD, $DD, $DD, $DD, $DD, $DD, $DD
		.BYTE $DD, $DD,	$DD, $BD, $DD, $DD, $DD, $DD, $DD, $BD
		.BYTE $BB, $DD,	$DD, $DD, $DD, $DB, $BD, $9B, $BD, $DD
		.BYTE $DD, $DD,	$BB, $9D, $99, $BB, $DD, $DD, $DB, $B9
		.BYTE $9D
;Заглушка, чтобы нижеследующая ASCII
;графика была выровняна	по строке:
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
;Иероглифы в ASCII графике (не используются):
a________________:.BYTE	'................'
a___@_______@@@@_:.BYTE	'...@.......@@@@.'
a@@@@@@@___@__@__:.BYTE	'@@@@@@@...@..@..'
a___@_____@__@___:.BYTE	'...@.....@..@...'
a__@_@______@_@__:.BYTE	'..@.@......@.@..'
a@@___@@__@@___@@:.BYTE	'@@...@@..@@...@@'
a_________________0:.BYTE '................'
a_____@_@@@@@@@__:.BYTE	'.....@.@@@@@@@..'
a____@__@_____@__:.BYTE	'....@..@.....@..'
a___@___@@@@@@@__:.BYTE	'...@...@@@@@@@..'
a__@_@_____@_____:.BYTE	'..@.@.....@.....'
a_@__@_@@@@@@@@@_:.BYTE	'.@..@.@@@@@@@@@.'
a____@___@_@_@___:.BYTE	'....@...@.@.@...'
a____@__@__@__@__:.BYTE	'....@..@..@..@..'
a____@_@___@___@_:.BYTE	'....@.@...@...@.'
a_________________1:.BYTE '................'
a____@___________:.BYTE	'....@...........'
a@@@@@@@@_@@@@@@@:.BYTE	'@@@@@@@@.@@@@@@@'
a@______@_@__@__@:.BYTE	'@......@.@..@..@'
a_@@@@@@__@__@__@:.BYTE	'.@@@@@@..@..@..@'
a____@____@@@@@@@:.BYTE	'....@....@@@@@@@'
a_@@@@@@__@__@__@_0:.BYTE '.@@@@@@..@..@..@'
a____@____@__@__@:.BYTE	'....@....@..@..@'
a__@@@____@@@@@@@:.BYTE	'..@@@....@@@@@@@'
a_________________2:.BYTE '................'
a___@_________@__:.BYTE	'...@.........@..'
a___@____@____@__:.BYTE	'...@....@....@..'
a___@____@____@___0:.BYTE '...@....@....@..'
a___@____@____@___1:.BYTE '...@....@....@..'
a___@____@____@___2:.BYTE '...@....@....@..'
a__@_____@____@__:.BYTE	'..@.....@....@..'
a_@_________@@@__:.BYTE	'.@.........@@@..'
;Заглушка до конца PRG банка:
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
		.BYTE $FF, $FF,	$FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
;Векторы прерываний:
		.WORD NMI		; Non-Maskable Interrupt Vector
		.WORD RESET		; RESET	Interrupt Vector
		.WORD RESET		; IRQ/BRK Interrupt Vector
; end of 'ROM'


		.END
