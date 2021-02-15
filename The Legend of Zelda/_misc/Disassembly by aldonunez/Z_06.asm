.INCLUDE "Variables.inc"

.SEGMENT "BANK_06_00"


; Imports from program bank 07

.IMPORT TableJump

.EXPORT CopyCommonDataToRam
.EXPORT InitMode2_Submodes
.EXPORT UpdateMode2Load_Full

LevelBlockAddrsQ1:
    .ADDR LevelBlockOW
    .ADDR LevelBlockUW1Q1
    .ADDR LevelBlockUW1Q1
    .ADDR LevelBlockUW1Q1
    .ADDR LevelBlockUW1Q1
    .ADDR LevelBlockUW1Q1
    .ADDR LevelBlockUW1Q1
    .ADDR LevelBlockUW2Q1
    .ADDR LevelBlockUW2Q1
    .ADDR LevelBlockUW2Q1

LevelInfoAddrs:
    .ADDR LevelInfoOW
    .ADDR LevelInfoUW1
    .ADDR LevelInfoUW2
    .ADDR LevelInfoUW3
    .ADDR LevelInfoUW4
    .ADDR LevelInfoUW5
    .ADDR LevelInfoUW6
    .ADDR LevelInfoUW7
    .ADDR LevelInfoUW8
    .ADDR LevelInfoUW9

CommonDataBlockAddr_Bank6:
    .ADDR CommonDataBlock_Bank6

LevelBlockAddrsQ2:
    .ADDR LevelBlockOW
    .ADDR LevelBlockUW1Q2
    .ADDR LevelBlockUW1Q2
    .ADDR LevelBlockUW1Q2
    .ADDR LevelBlockUW1Q2
    .ADDR LevelBlockUW1Q2
    .ADDR LevelBlockUW1Q2
    .ADDR LevelBlockUW2Q2
    .ADDR LevelBlockUW2Q2
    .ADDR LevelBlockUW2Q2

InitMode2_Submodes:
    LDA GameSubmode
    JSR TableJump
InitMode2_Submodes_JumpTable:
    .ADDR InitMode2_Sub0
    .ADDR InitMode2_Sub1

InitMode2_Sub0:
    ; Copy level block for level.
    ;
    LDA CurLevel
    ASL
    TAX
    LDY CurSaveSlot
    LDA QuestNumbers, Y
    BNE @SecondQuest
    ; First quest.
    ;
    LDA LevelBlockAddrsQ1, X
    STA $00
    INX
    LDA LevelBlockAddrsQ1, X
    JMP @Copy

@SecondQuest:
    ; Second quest.
    ;
    LDA LevelBlockAddrsQ2, X
    STA $00
    INX
    LDA LevelBlockAddrsQ2, X
@Copy:
    STA $01
    JSR FetchLevelBlockDestInfo
    JSR CopyBlock
    RTS

InitMode2_Sub1:
    ; Copy level info.
    ;
    LDA CurLevel
    ASL
    TAX
    LDA LevelInfoAddrs, X
    STA $00
    INX
    LDA LevelInfoAddrs, X
    STA $01
    JSR FetchLevelInfoDestInfo
    JSR CopyBlock
    LDA #$00
    STA GameSubmode
    INC IsUpdatingMode
    RTS

CopyCommonDataToRam:
    LDX #$00                    ; Get the source address of common data block in ROM.
    LDA CommonDataBlockAddr_Bank6, X
    STA $00
    INX
    LDA CommonDataBlockAddr_Bank6, X
    STA $01
    JSR FetchDestAddrForCommonDataBlock
    JSR CopyBlock
    LDA #$00
    STA GameSubmode
    RTS

; Returns:
; [$02:03]: destination address
; [$04:05]: end address
;
; Destination address $687E.
FetchLevelBlockDestInfo:
    LDA #$7E
    STA $02
    LDA #$68
    STA $03
    LDA #$7D                    ; End address $6B7D.
    STA $04
    LDA #$6B
    STA $05
    RTS

; Returns:
; [$02:03]: destination address
; [$04:05]: end address
;
; Destination address $6B7E.
FetchLevelInfoDestInfo:
    LDA #$7E
    STA $02
    LDA #$6B
    STA $03
    LDA #$7D                    ; End address $6C7D.
    STA $04
    LDA #$6C
    STA $05
    RTS

FetchDestAddrForCommonDataBlock:
    LDA #$F0                    ; 67F0 to 687D (inclusive)
    STA $02
    LDA #$67
    STA $03
    LDA #$7D
    STA $04
    LDA #$68
    STA $05
    RTS

; Params:
; [$00:01]: source address
; [$02:03]: destination address
; [$04:05]: end destination address
;
; Also increments submode.
;
CopyBlock:
    LDY #$00
@Loop:
    LDA ($00), Y
    STA ($02), Y
    LDA $02
    CMP $04
    BNE @Next
    LDA $03
    CMP $05
    BNE @Next
    INC GameSubmode
    RTS

@Next:
    LDA $02
    CLC
    ADC #$01
    STA $02
    LDA $03
    ADC #$00
    STA $03
    LDA $00
    CLC
    ADC #$01
    STA $00
    LDA $01
    ADC #$00
    STA $01
    JMP @Loop

UpdateMode2Load_Full:
    ; Make replacements for the second quest.
    ;
    LDY CurSaveSlot
    LDA QuestNumbers, Y
    BEQ @Exit                   ; If not second quest, then return.
    LDA CurLevel
    BEQ @PatchQ2Rooms           ; If OW, then go patch rooms.
    TAX
    ASL
    TAY
    ; Get an address for the current level that points
    ; to an array of replacement bytes for Q2 UW level info.
    ;
    ; This address array doesn't access the OW element (0).
    ; So, it overlaps the last two bytes of LevelInfoUWQ2Replacements9.
    ;
    LDA LevelInfoUWQ2ReplacementAddrs-2, Y
    STA $00
    LDA LevelInfoUWQ2ReplacementAddrs-1, Y
    STA $01
    ; Get the number of replacement bytes for Q2 UW level info.
    ; This address array doesn't access the OW element (0).
    ;
    LDY LevelInfoUWQ2ReplacementSizes-1, X
@ReplaceInfoBytes:
    ; Copy bytes from Q2 replacement array to level info
    ; starting at offset $29 (shortcut position array).
    LDA ($00), Y
    STA LevelInfo_ShortcutOrItemPosArray, Y
    DEY
    BPL @ReplaceInfoBytes
@Exit:
    RTS

@PatchQ2Rooms:
    ; Replace attributes of several rooms in OW in second quest.
    ;
    LDY #$07
@ReplaceRoomBytes:
    LDX LevelBlockAttrsBQ2ReplacementOffsets, Y
    LDA LevelBlockAttrsBQ2ReplacementValues, Y
    STA LevelBlockAttrsB, X
    DEY
    BPL @ReplaceRoomBytes
    LDA #$7B
    STA LevelBlockAttrsD+11
    LDA #$7B
    STA LevelBlockAttrsD+60
    LDA #$5A
    STA LevelBlockAttrsD+116
    LDA #$72
    STA LevelBlockAttrsA+60
    LDA #$72
    STA LevelBlockAttrsA+116
    LDA #$01
    STA LevelBlockAttrsF+60
    LDA #$00
    STA LevelBlockAttrsF+116
    RTS

LevelBlockAttrsBQ2ReplacementOffsets:
    .BYTE $0E, $0F, $22, $34, $3C, $45, $74, $8B

LevelBlockAttrsBQ2ReplacementValues:
    .BYTE $7B, $83, $84, $0F, $0B, $12, $7A, $2F

LevelInfoUWQ2Replacements1:
    .BYTE $C9, $AC, $89, $B7, $00, $E0, $77, $08
    .BYTE $FF, $06, $01, $28, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $07, $00, $00
    .BYTE $00, $00, $00, $00, $00, $FF, $DB, $00
    .BYTE $00, $00, $00, $00, $00, $00, $20, $65
    .BYTE $42, $FF, $20, $85, $02, $FF, $FB, $20
    .BYTE $A5, $02, $FF, $67, $20, $C5, $42, $FF
    .BYTE $FF

LevelInfoUWQ2Replacements2:
    .BYTE $C9, $AC, $89, $87, $05, $00, $75, $20
    .BYTE $FF, $06, $03, $56, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $30, $00, $00
    .BYTE $00, $00, $00, $30, $00, $00, $00, $00
    .BYTE $7F, $03, $00, $00, $00, $00, $20, $67
    .BYTE $01, $FB, $20, $82, $01, $FF, $20, $87
    .BYTE $C3, $FF, $20, $C8, $01, $FF, $FF

LevelInfoUWQ2Replacements3:
    .BYTE $C9, $AC, $89, $37, $0D, $C8, $79, $1B
    .BYTE $FF, $06, $02, $09, $0B, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $2B, $00, $00
    .BYTE $00, $00, $00, $00, $7F, $EC, $7F, $00
    .BYTE $00, $00, $00, $00, $00, $00, $20, $64
    .BYTE $03, $FB, $FF, $FB, $20, $84, $03, $FF
    .BYTE $67, $FF, $20, $A4, $43, $FF, $20, $C4
    .BYTE $03, $FF, $24, $FF, $FF

LevelInfoUWQ2Replacements4:
    .BYTE $C9, $AC, $89, $86, $06, $10, $72, $00
    .BYTE $FF, $06, $05, $21, $58, $7A, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $10, $00, $00
    .BYTE $00, $00, $00, $00, $CF, $DB, $F3, $00
    .BYTE $00, $00, $00, $00, $00, $00, $20, $64
    .BYTE $43, $FF, $20, $85, $02, $FB, $FF, $20
    .BYTE $A4, $02, $FF, $67, $20, $C4, $43, $FF
    .BYTE $FF

LevelInfoUWQ2Replacements5:
    .BYTE $C9, $AC, $89, $87, $0A, $B0, $7D, $4F
    .BYTE $FF, $06, $04, $0F, $6A, $7F, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $5F, $00, $00
    .BYTE $00, $00, $00, $00, $FF, $FF, $E7, $7E
    .BYTE $00, $00, $00, $00, $00, $00, $20, $64
    .BYTE $04, $FF, $FF, $FF, $FB, $20, $84, $04
    .BYTE $FF, $FF, $67, $FF, $20, $A4, $04, $FF
    .BYTE $FF, $FB, $FF, $20, $C4, $04, $FF, $FF
    .BYTE $FF, $67, $FF

LevelInfoUWQ2Replacements6:
    .BYTE $49, $79, $89, $56, $04, $00, $74, $16
    .BYTE $FF, $06, $06, $03, $73, $46, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $26, $00, $00
    .BYTE $00, $00, $00, $04, $0C, $7E, $FF, $80
    .BYTE $F0, $00, $00, $00, $00, $00, $20, $65
    .BYTE $03, $FB, $FF, $67, $20, $68, $C2, $FF
    .BYTE $20, $86, $C3, $FF, $20, $85, $83, $FF
    .BYTE $FF, $67, $20, $A3, $02, $FB, $FF, $FF

LevelInfoUWQ2Replacements7:
    .BYTE $C9, $AC, $89, $79, $0C, $C0, $7F, $2D
    .BYTE $7F, $07, $08, $02, $03, $04, $05, $20
    .BYTE $21, $26, $2B, $2C, $FF, $3D, $00, $00
    .BYTE $00, $00, $FE, $FE, $82, $82, $82, $BE
    .BYTE $80, $FF, $00, $00, $00, $00, $20, $62
    .BYTE $C3, $FF, $20, $63, $C3, $FF, $20, $64
    .BYTE $45, $67, $20, $69, $C4, $FF, $20, $87
    .BYTE $C2, $FF, $20, $C2, $46, $67, $FF

LevelInfoUWQ2Replacements8:
    .BYTE $C9, $AC, $89, $57, $0C, $C0, $79, $1B
    .BYTE $7F, $07, $07, $27, $30, $37, $60, $67
    .BYTE $70, $FF, $FF, $FF, $FF, $1C, $00, $00
    .BYTE $00, $00, $01, $01, $7D, $5D, $5D, $41
    .BYTE $7F, $00, $00, $00, $00, $00, $20, $64
    .BYTE $45, $FB, $20, $84, $05, $FF, $FB, $FB
    .BYTE $24, $FF, $20, $A4, $43, $FF, $20, $A8
    .BYTE $01, $FF, $20, $C2, $46, $FB, $20, $C8
    .BYTE $01, $FF, $FF

LevelInfoUWQ2Replacements9:
    .BYTE $C9, $AC, $89, $B6, $04, $00, $74, $07
    .BYTE $7F, $07, $09, $71, $72, $75, $76, $77
    .BYTE $FF, $FF, $FF, $FF, $FF, $17, $00, $00
    .BYTE $00, $00, $CC, $DE, $76, $7F, $7F, $76
    .BYTE $DE, $CC, $00, $00, $00, $00, $20, $62
    .BYTE $48, $FF, $20, $64, $44, $FB, $20, $83
    .BYTE $46, $FB, $20, $84, $44, $FF, $20, $A2
    .BYTE $08, $FF, $FF, $FB, $FF, $FF, $FB, $FF
    .BYTE $FF, $20, $C3, $46, $67, $20, $C5, $42
    .BYTE $FF, $FF

LevelInfoUWQ2ReplacementAddrs:
    .ADDR LevelInfoUWQ2Replacements1
    .ADDR LevelInfoUWQ2Replacements2
    .ADDR LevelInfoUWQ2Replacements3
    .ADDR LevelInfoUWQ2Replacements4
    .ADDR LevelInfoUWQ2Replacements5
    .ADDR LevelInfoUWQ2Replacements6
    .ADDR LevelInfoUWQ2Replacements7
    .ADDR LevelInfoUWQ2Replacements8
    .ADDR LevelInfoUWQ2Replacements9

LevelInfoUWQ2ReplacementSizes:
    .BYTE $39, $37, $3D, $39, $43, $40, $3F, $43
    .BYTE $4A

; Unknown block
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF

LevelBlockOW:
.INCBIN "dat/LevelBlockOW.dat"

LevelBlockUW1Q1:
.INCBIN "dat/LevelBlockUW1Q1.dat"

LevelBlockUW2Q1:
.INCBIN "dat/LevelBlockUW2Q1.dat"

LevelBlockUW1Q2:
.INCBIN "dat/LevelBlockUW1Q2.dat"

LevelBlockUW2Q2:
.INCBIN "dat/LevelBlockUW2Q2.dat"

LevelInfoOW:
.INCBIN "dat/LevelInfoOW.dat"

LevelInfoUW1:
.INCBIN "dat/LevelInfoUW1.dat"

LevelInfoUW2:
.INCBIN "dat/LevelInfoUW2.dat"

LevelInfoUW3:
.INCBIN "dat/LevelInfoUW3.dat"

LevelInfoUW4:
.INCBIN "dat/LevelInfoUW4.dat"

LevelInfoUW5:
.INCBIN "dat/LevelInfoUW5.dat"

LevelInfoUW6:
.INCBIN "dat/LevelInfoUW6.dat"

LevelInfoUW7:
.INCBIN "dat/LevelInfoUW7.dat"

LevelInfoUW8:
.INCBIN "dat/LevelInfoUW8.dat"

LevelInfoUW9:
.INCBIN "dat/LevelInfoUW9.dat"

CommonDataBlock_Bank6:

.SEGMENT "BANK_06_DATA"


.EXPORT ColumnDirectoryOW
.EXPORT LevelNumberTransferBuf
.EXPORT LevelPaletteRow7TransferBuf
.EXPORT MenuPalettesTransferBuf
.EXPORT TriforceRow0TransferBuf

MenuPalettesTransferBuf:
    .BYTE $3F, $00, $20, $0F, $30, $00, $12, $0F
    .BYTE $16, $27, $36, $0F, $0C, $1C, $2C, $0F
    .BYTE $12, $1C, $2C, $0F, $29, $27, $07, $0F
    .BYTE $22, $27, $07, $0F, $26, $27, $07, $0F
    .BYTE $15, $27, $30, $FF

LevelPaletteRow7TransferBuf:
    .BYTE $3F, $1C, $04, $0F, $0F, $0F, $0F, $FF

LevelNumberTransferBuf:
    .BYTE $20, $42, $07, $15, $0E, $1F, $0E, $15
    .BYTE $62, $00, $FF

ColumnDirectoryOW:
    .BYTE $D8, $9B, $0D, $9C, $3E, $9C, $80, $9C
    .BYTE $C4, $9C, $F6, $9C, $32, $9D, $6D, $9D
    .BYTE $A8, $9D, $E6, $9D, $27, $9E, $6C, $9E
    .BYTE $A9, $9E, $DF, $9E, $21, $9F, $55, $9F

TriforceRow0TransferBuf:
    .BYTE $2A, $EE, $04, $ED, $E9, $EA, $EE, $FF

TriforceRow1TransferBuf:
    .BYTE $2B, $0D, $06, $ED, $E9, $24, $24, $EA
    .BYTE $EE, $FF

TriforceRow2TransferBuf:
    .BYTE $2B, $2C, $08, $ED, $E9, $24, $24, $24
    .BYTE $24, $EA, $EE, $FF

TriforceRow3TransferBuf:
    .BYTE $2B, $4B, $0A, $ED, $E9, $24, $24, $24
    .BYTE $24, $24, $24, $EA, $EE, $FF

TriforceTextTransferBuf:
    .BYTE $2B, $AC, $08, $1D, $1B, $12, $0F, $18
    .BYTE $1B, $0C, $0E


.SEGMENT "BANK_06_DLIST"


.EXPORT TransferCurTileBuf

TransferBufAddrs:
    .ADDR DynTileBuf
    .ADDR StoryTileAttrTransferBuf
    .ADDR Mode8TextTileBuffer
    .ADDR LevelPaletteRow7TransferBuf
    .ADDR AquamentusPaletteRow7TransferBuf
    .ADDR OrangeBossPaletteRow7TransferBuf
    .ADDR LevelNumberTransferBuf
    .ADDR StatusBarStaticsTransferBuf
    .ADDR GameTitleTransferBuf
    .ADDR MenuPalettesTransferBuf
    .ADDR Mode1TileTransferBuf
    .ADDR ModeFCharsTransferBuf
    .ADDR LevelInfo_PalettesTransferBuf
    .ADDR DynTileBuf
    .ADDR DynTileBuf
    .ADDR BlankTextBoxLines
    .ADDR GhostPaletteRow7TransferBuf
    .ADDR GreenBgPaletteRow7TransferBuf
    .ADDR BrownBgPaletteRow7TransferBuf
    .ADDR CellarAttrsTransferBuf
    .ADDR DynTileBuf
    .ADDR BlankPersonWares
    .ADDR Mode11DeadLinkPalette
    .ADDR LevelNumberTransferBuf
    .ADDR InventoryTextTransferBuf
    .ADDR SubmenuBoxesTopsTransferBuf
    .ADDR SubmenuBoxesSidesTransferBuf
    .ADDR GanonPaletteRow7TransferBuf
    .ADDR SelectedItemBoxBottomTransferBuf
    .ADDR UseBButtonTextTransferBuf
    .ADDR InventoryBoxBottomTransferBuf
    .ADDR CaveBgPaletteRowsTransferBuf
    .ADDR SubmenuMapRemainderTransferBuf
    .ADDR SheetMapBottomEdgeTransferBuf
    .ADDR LevelInfo_StatusBarMapTransferBuf
    .ADDR GameOverTransferBuf
    .ADDR SubmenuAttrs1TransferBuf
    .ADDR SubmenuAttrs2TransferBuf
    .ADDR BlankBottomRowNT2TransferBuf
    .ADDR BlankRowTransferBuf
    .ADDR SubmenuTriforceApexTransferBuf
    .ADDR TriforceRow0TransferBuf
    .ADDR TriforceRow1TransferBuf
    .ADDR TriforceRow2TransferBuf
    .ADDR TriforceRow3TransferBuf
    .ADDR SubmenuTriforceBottomTransferBuf
    .ADDR TriforceTextTransferBuf
    .ADDR Mode11BackgroundPaletteBottomHalfTransferBuf
    .ADDR Mode11PlayAreaAttrsTopHalfTransferBuf
    .ADDR Mode11PlayAreaAttrsBottomHalfTransferBuf
    .ADDR DynTileBuf
    .ADDR DynTileBuf
    .ADDR DynTileBuf
    .ADDR EndingPaletteTransferBuf
    .ADDR BombCapacityPriceTextTransferBuf
    .ADDR DynTileBuf
    .ADDR DynTileBuf
    .ADDR DynTileBuf
    .ADDR DynTileBuf
    .ADDR LifeOrMoneyCostTextTransferBuf
    .ADDR WhitePaletteBottomHalfTransferBuf
    .ADDR RedArmosPaletteRow7TransferBuf
    .ADDR GleeokPaletteRow7TransferBuf
    .ADDR DynTileBuf

TransferCurTileBuf:
    LDX TileBufSelector
    LDA TransferBufAddrs, X
    STA $00
    LDA TransferBufAddrs+1, X
    STA $01
    JSR TransferTileBuf
    LDA #$3F                    ; TODO: Why put $3F in [$0300]? Is it the maximum size of dynamic transfer buf?
    STA $0300
    LDX #$00
    STX TileBufSelector
    STX SwitchNameTablesReq
    STX DynTileBufLen
    DEX
    STX DynTileBuf              ; Empty the tile buffer.
    RTS

ContinueTransferTileBuf:
    ;
    ;
    ; Save VRAM address high byte.
    PHA
    STA PpuAddr_2006
    INY
    LDA ($00), Y                ; Read low byte of VRAM address.
    STA PpuAddr_2006
    INY
    LDA ($00), Y                ; Read count and attribute byte.
    ASL
    PHA
    LDA CurPpuControl_2000
    ORA #$04
    BCS :+                      ; If high bit is set, then auto-increment VRAM address by 32.
    AND #$FB
:
    STA PpuControl_2000
    STA CurPpuControl_2000
    PLA
    ASL
    PHP
    BCC :+                      ; If bit 6 is set, then repeat one tile.
    ORA #$02
    INY                         ; increment Y index to point to first byte of text.
:
    PLP
    ; If the count was 0 (bottom 6 bits),
    ; then make it 64.
    CLC
    BNE :+
    SEC
:
    ROR
    LSR
    ; We pulled the flags out, and we're left with a count in A.
    ; Move it to X.
    TAX
@Loop:
    BCS :+                      ; If the original bit 6 is clear,
    INY                         ; then increment Y index (not repeating).
:
    LDA ($00), Y
    STA PpuData_2007
    DEX
    BNE @Loop
    PLA                         ; Restore VRAM address high byte.
    ; If we wrote to $3Fxx, then set PPUADDR to $3F00, then $0000.
    ;
    CMP #$3F
    BNE @AdvanceSource
    STA PpuAddr_2006
    STX PpuAddr_2006
    STX PpuAddr_2006
    STX PpuAddr_2006
@AdvanceSource:
    ; Advance the source address to one after the last byte read.
    ;
    SEC
    TYA
    ADC $00
    STA $00
    LDA #$00
    ADC $01
    STA $01
TransferTileBuf:
    LDX PpuStatus_2002
    LDY #$00
    LDA ($00), Y                ; Read high byte of VRAM address.
    BPL ContinueTransferTileBuf ; End when we read a negative VRAM address.
    RTS

Mode1TileTransferBuf:
    .BYTE $23, $C0, $7F, $00, $23, $D4, $03, $40
    .BYTE $50, $50, $23, $DC, $03, $44, $55, $55
    .BYTE $23, $E4, $03, $44, $55, $55, $20, $A8
    .BYTE $0F, $62, $24, $1C, $24, $0E, $24, $15
    .BYTE $24, $0E, $24, $0C, $24, $1D, $24, $62
    .BYTE $21, $03, $01, $69, $21, $04, $58, $6A
    .BYTE $21, $1C, $01, $6B, $21, $23, $D0, $6C
    .BYTE $21, $3C, $D0, $6C, $23, $23, $01, $6E
    .BYTE $23, $24, $58, $6A, $23, $3C, $01, $6D
    .BYTE $21, $0A, $06, $24, $17, $0A, $16, $0E
    .BYTE $24, $21, $13, $06, $24, $15, $12, $0F
    .BYTE $0E, $24, $22, $A6, $12, $1B, $0E, $10
    .BYTE $12, $1C, $1D, $0E, $1B, $24, $22, $18
    .BYTE $1E, $1B, $24, $17, $0A, $16, $0E, $22
    .BYTE $E6, $10, $0E, $15, $12, $16, $12, $17
    .BYTE $0A, $1D, $12, $18, $17, $24, $16, $18
    .BYTE $0D, $0E, $FF

ModeFCharsTransferBuf:
    .BYTE $22, $05, $01, $69, $22, $06, $55, $6A
    .BYTE $22, $1B, $01, $6B, $22, $25, $C7, $6C
    .BYTE $22, $3B, $C7, $6C, $23, $05, $01, $6E
    .BYTE $23, $06, $55, $6A, $23, $1B, $01, $6D
    .BYTE $22, $26, $15, $0A, $24, $0B, $24, $0C
    .BYTE $24, $0D, $24, $0E, $24, $0F, $24, $10
    .BYTE $24, $11, $24, $12, $24, $13, $24, $14
    .BYTE $22, $66, $15, $15, $24, $16, $24, $17
    .BYTE $24, $18, $24, $19, $24, $1A, $24, $1B
    .BYTE $24, $1C, $24, $1D, $24, $1E, $24, $1F
    .BYTE $22, $A6, $15, $20, $24, $21, $24, $22
    .BYTE $24, $23, $24, $62, $24, $63, $24, $28
    .BYTE $24, $29, $24, $2A, $24, $2B, $24, $2C
    .BYTE $22, $E6, $13, $00, $24, $01, $24, $02
    .BYTE $24, $03, $24, $04, $24, $05, $24, $06
    .BYTE $24, $07, $24, $08, $24, $09, $FF

GanonPaletteRow7TransferBuf:
    .BYTE $3F, $1C, $04, $0F, $16, $2C, $3C, $FF

EndingPaletteTransferBuf:
    .BYTE $3F, $08, $08, $0F, $22, $10, $00, $0F
    .BYTE $2A, $10, $00, $3F, $1C, $04, $0F, $27
    .BYTE $06, $16, $FF

BlankTextBoxLines:
    .BYTE $21, $A4, $58, $24, $21, $C4, $58, $24
    .BYTE $FF

BlankPersonWares:
    .BYTE $21, $E4, $58, $24, $22, $C8, $4D, $24
    .BYTE $FF

SubmenuTriforceApexTransferBuf:
    .BYTE $2A, $CF, $02, $ED, $EE, $FF

SubmenuTriforceBottomTransferBuf:
    .BYTE $2B, $6A, $0C, $EB, $EF, $F1, $F1, $F1
    .BYTE $F1, $F1, $F1, $F1, $F1, $F0, $EC, $FF

GhostPaletteRow7TransferBuf:
    .BYTE $3F, $1C, $04, $0F, $30, $00, $12, $FF

GreenBgPaletteRow7TransferBuf:
    .BYTE $3F, $1C, $04, $0F, $1A, $37, $12, $FF

BrownBgPaletteRow7TransferBuf:
    .BYTE $3F, $1C, $04, $0F, $17, $37, $12, $FF

CaveBgPaletteRowsTransferBuf:
    .BYTE $3F, $08, $08, $0F, $30, $00, $12, $0F
    .BYTE $07, $0F, $17, $FF

CellarAttrsTransferBuf:
    .BYTE $23, $D0, $60, $AA, $23, $F0, $50, $AA
    .BYTE $FF

WhitePaletteBottomHalfTransferBuf:
    .BYTE $3F, $08, $08, $0F, $30, $30, $30, $0F
    .BYTE $30, $30, $30, $FF

RedArmosPaletteRow7TransferBuf:
    .BYTE $3F, $1C, $04, $0F, $0F, $1C, $16, $FF

GleeokPaletteRow7TransferBuf:
    .BYTE $3F, $1C, $04, $0F, $2A, $1A, $0C, $FF

AquamentusPaletteRow7TransferBuf:
    .BYTE $3F, $1C, $04, $0F, $0A, $29, $30, $FF

OrangeBossPaletteRow7TransferBuf:
    .BYTE $3F, $1C, $04, $0F, $17, $27, $30, $FF

BombCapacityPriceTextTransferBuf:
    .BYTE $22, $CD, $04, $62, $01, $00, $00, $FF

LifeOrMoneyCostTextTransferBuf:
    .BYTE $22, $CB, $0A, $62, $01, $24, $24, $24
    .BYTE $24, $24, $62, $05, $00, $FF

Mode8TextTileBuffer:
    .BYTE $23, $C0, $7F, $00, $21, $4A, $08, $0C
    .BYTE $18, $17, $1D, $12, $17, $1E, $0E, $21
    .BYTE $AA, $04, $1C, $0A, $1F, $0E, $22, $0A
    .BYTE $05, $1B, $0E, $1D, $1B, $22, $FF

StatusBarStaticsTransferBuf:
    .BYTE $23, $C2, $0E, $40, $00, $00, $44, $55
    .BYTE $55, $00, $00, $04, $00, $00, $44, $55
    .BYTE $55, $20, $6F, $0E, $69, $0B, $6B, $69
    .BYTE $0A, $6B, $24, $24, $62, $15, $12, $0F
    .BYTE $0E, $62, $20, $CF, $06, $6E, $6A, $6D
    .BYTE $6E, $6A, $6D, $20, $8F, $C2, $6C, $20
    .BYTE $91, $C2, $6C, $20, $92, $C2, $6C, $20
    .BYTE $94, $C2, $6C, $20, $6B, $84, $F7, $24
    .BYTE $F9, $61, $FF

InventoryTextTransferBuf:
    .BYTE $29, $84, $09, $12, $17, $1F, $0E, $17
    .BYTE $1D, $18, $1B, $22, $FF

SubmenuBoxesTopsTransferBuf:
    .BYTE $29, $C7, $04, $69, $6A, $6A, $6B, $29
    .BYTE $CF, $01, $69, $29, $D0, $4B, $6A, $29
    .BYTE $DB, $01, $6B, $FF

SubmenuBoxesSidesTransferBuf:
    .BYTE $29, $E7, $C2, $6C, $29, $EA, $C2, $6C
    .BYTE $29, $EF, $C4, $6C, $29, $FB, $C4, $6C
    .BYTE $FF

SelectedItemBoxBottomTransferBuf:
    .BYTE $2A, $27, $04, $6E, $6A, $6A, $6D, $FF

UseBButtonTextTransferBuf:
    .BYTE $2A, $42, $0C, $1E, $1C, $0E, $24, $0B
    .BYTE $24, $0B, $1E, $1D, $1D, $18, $17, $FF

InventoryBoxBottomTransferBuf:
    .BYTE $2A, $64, $08, $0F, $18, $1B, $24, $1D
    .BYTE $11, $12, $1C, $2A, $6F, $01, $6E, $2A
    .BYTE $70, $4B, $6A, $2A, $7B, $01, $6D, $FF

SubmenuMapRemainderTransferBuf:
    .BYTE $2B, $43, $07, $0C, $18, $16, $19, $0A
    .BYTE $1C, $1C, $2A, $A5, $03, $16, $0A, $19
    .BYTE $2A, $8C, $10, $F5, $F5, $FD, $F5, $F5
    .BYTE $FD, $F5, $F5, $FD, $F5, $F5, $F5, $FD
    .BYTE $F5, $F5, $F5, $FF

SheetMapBottomEdgeTransferBuf:
    .BYTE $2B, $AC, $10, $F5, $FE, $F5, $F5, $F5
    .BYTE $FE, $F5, $F5, $F5, $F5, $FE, $F5, $F5
    .BYTE $F5, $FE, $F5, $FF

SubmenuAttrs1TransferBuf:
    .BYTE $2B, $D9, $43, $05, $2B, $DC, $4B, $00
    .BYTE $FF

SubmenuAttrs2TransferBuf:
    .BYTE $2B, $E9, $56, $55, $FF

BlankBottomRowNT2TransferBuf:
    .BYTE $2B, $A0, $60, $24, $FF

BlankRowTransferBuf:
    .BYTE $28, $E0, $60, $24, $FF

Mode11DeadLinkPalette:
    .BYTE $3F, $10, $04, $0F, $10, $30, $00, $FF

GameOverTransferBuf:
    .BYTE $23, $E3, $03, $0F, $0F, $CF, $22, $4C
    .BYTE $0A, $10, $0A, $16, $0E, $24, $18, $1F
    .BYTE $0E, $1B, $24, $22, $6C, $4A, $24, $FF

Mode11BackgroundPaletteBottomHalfTransferBuf:
    .BYTE $3F, $08, $08, $0F, $17, $16, $26, $0F
    .BYTE $17, $16, $26, $FF

Mode11PlayAreaAttrsTopHalfTransferBuf:
    .BYTE $23, $D0, $58, $FF, $FF

Mode11PlayAreaAttrsBottomHalfTransferBuf:
    .BYTE $23, $E8, $58, $FF, $FF

StoryTileAttrTransferBuf:
.INCBIN "dat/StoryTileAttrTransferBuf.dat"

GameTitleTransferBuf:
.INCBIN "dat/GameTitleTransferBuf.dat"


.SEGMENT "BANK_06_ISR"



; Unknown block
    .BYTE $78, $D8, $A9, $00, $8D, $00, $20, $A2
    .BYTE $FF, $9A, $AD, $02, $20, $29, $80, $F0
    .BYTE $F9, $AD, $02, $20, $29, $80, $F0, $F9
    .BYTE $09, $FF, $8D, $00, $80, $8D, $00, $A0
    .BYTE $8D, $00, $C0, $8D, $00, $E0, $A9, $0F
    .BYTE $20, $98, $BF, $A9, $00, $8D, $00, $A0
    .BYTE $4A, $8D, $00, $A0, $4A, $8D, $00, $A0
    .BYTE $4A, $8D, $00, $A0, $4A, $8D, $00, $A0
    .BYTE $A9, $07, $20, $AC, $BF, $4C, $40, $E4
    .BYTE $8D, $00, $80, $4A, $8D, $00, $80, $4A
    .BYTE $8D, $00, $80, $4A, $8D, $00, $80, $4A
    .BYTE $8D, $00, $80, $60, $8D, $00, $E0, $4A
    .BYTE $8D, $00, $E0, $4A, $8D, $00, $E0, $4A
    .BYTE $8D, $00, $E0, $4A, $8D, $00, $E0, $60


.SEGMENT "BANK_06_VEC"



; Unknown block
    .BYTE $84, $E4, $50, $BF, $F0, $BF

