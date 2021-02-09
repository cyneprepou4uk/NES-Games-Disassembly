.INCLUDE "Variables.inc"
.INCLUDE "BeginEndVars.inc"

.SEGMENT "BANK_02_00"


; Imports from RAM code bank 01

.IMPORT Anim_SetSpriteDescriptorAttributes
.IMPORT Anim_SetSpriteDescriptorRedPaletteRow
.IMPORT Anim_WriteItemSprites
.IMPORT Anim_WriteSpecificItemSprites
.IMPORT Anim_WriteSpritePairNotFlashing
.IMPORT BeginUpdateMode
.IMPORT DrawObjectMirrored
.IMPORT DrawObjectNotMirrored
.IMPORT FetchFileAAddressSet
.IMPORT FileBChecksums
.IMPORT FormatDecimalByte
.IMPORT FormatHeartsInTextBuf
.IMPORT Person_Draw
.IMPORT ResetRoomTileObjInfo
.IMPORT SilenceAllSound
.IMPORT UpdateWorldCurtainEffect_Bank2

; Imports from RAM code bank 06

.IMPORT MenuPalettesTransferBuf

; Imports from program bank 07

.IMPORT Anim_FetchObjPosForSpriteDescriptor
.IMPORT AnimateItemObject
.IMPORT EndGameMode
.IMPORT GoToNextMode
.IMPORT HideAllSprites
.IMPORT Link_EndMoveAndDraw
.IMPORT TableJump
.IMPORT TurnOffAllVideo
.IMPORT TurnOffVideoAndClearArtifacts

.EXPORT InitDemo_RunTasks
.EXPORT InitMode1_Full
.EXPORT InitMode13_Full
.EXPORT InitModeEandF_Full
.EXPORT TransferCommonPatterns
.EXPORT UpdateMode0Demo
.EXPORT UpdateMode13WinGame
.EXPORT UpdateMode1Menu
.EXPORT UpdateModeDSave
.EXPORT UpdateModeERegister
.EXPORT UpdateModeFElimination

CommonPatternBlockAddrs:
    .ADDR CommonSpritePatterns
    .ADDR CommonBackgroundPatterns
    .ADDR CommonMiscPatterns

CommonPatternBlockSizes:
    .DBYT $0700
    .DBYT $0700
    .DBYT $00E0

CommonPatternVramAddrs:
    .DBYT $0000
    .DBYT $1000
    .DBYT $1F20

TransferCommonPatterns:
    JSR TurnOffAllVideo
    LDA PpuStatus_2002          ; Clear address latch and scroll.
@LoopBlock:
    LDA PatternBlockIndex
    ASL
    TAX
    ; Put block address in [00:01] and size in [03:02].
    ; Load destination VRAM address and set it.
    ; The size and VRAM address have the high byte first.
    ;
    LDA CommonPatternBlockAddrs, X
    STA $00
    LDA CommonPatternBlockSizes, X
    STA $02
    LDA CommonPatternVramAddrs, X
    STA PpuAddr_2006
    INX
    LDA CommonPatternBlockAddrs, X
    STA $01
    LDA CommonPatternBlockSizes, X
    STA $03
    LDA CommonPatternVramAddrs, X
    JSR TransferPatternBlock_Bank2
    ; Loop until pattern block index = 3.
    ;
    LDA PatternBlockIndex
    CMP #$03
    BNE @LoopBlock
    LDA #$5A                    ; Mark this block copied.
    STA TransferredCommonPatterns
    LDA #$00                    ; Reset pattern block index.
    STA PatternBlockIndex
    RTS

; Params:
; [00:01]: source address
; [03:02]: size
; A: low byte of desination VRAM address
;
TransferPatternBlock_Bank2:
    STA PpuAddr_2006
    LDY #$00
@Loop:
    ; Load and transfer 1 byte to VRAM.
    ;
    LDA ($00), Y
    STA PpuData_2007
    ; Increment the 16-bit source address at [00:01].
    ;
    LDA $00
    CLC
    ADC #$01
    STA $00
    LDA $01
    ADC #$00
    STA $01
    ; Decrement the 16-bit amount remaining in [03:02].
    ;
    LDA $03
    SEC
    SBC #$01
    STA $03
    LDA $02
    SBC #$00
    STA $02
    ; Loop until the amount remaining = 0.
    ;
    LDA $02
    BNE @Loop
    LDA $03
    BNE @Loop
    ; The block is done. Increment the block index.
    ;
    INC PatternBlockIndex
    RTS

CommonSpritePatterns:
.INCBIN "dat/CommonSpritePatterns.dat"

CommonBackgroundPatterns:
.INCBIN "dat/CommonBackgroundPatterns.dat"

CommonMiscPatterns:
.INCBIN "dat/CommonMiscPatterns.dat"

; Unknown block
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF

InitDemo_RunTasks:
    JSR TurnOffAllVideo
    LDA DemoPhase
    BNE InitDemo_Phase1
    LDA DemoSubphase
    JSR TableJump
InitDemo_RunTasks_Phase0_JumpTable:
    .ADDR InitDemoSubphaseClearArtifacts
    .ADDR InitDemoSubphaseTransferTitlePalette
    .ADDR InitDemoSubphasePlayTitleSong

InitDemo_Phase1:
    LDA DemoSubphase
    JSR TableJump
InitDemo_RunTasks_Phase1_JumpTable:
    .ADDR InitDemoSubphaseClearArtifacts
    .ADDR InitDemoSubphaseTransferStoryPalette
    .ADDR InitDemoSubphaseTransferStoryTiles

UpdateMode0Demo:
    LDA GameSubmode
    BNE @HandleSubmodes         ; Only animate if submode = 0 and SkippedDemo = 0
    LDA SkippedDemo
    BNE @HandleSubmodes
    JSR AnimateDemo
    LDA IsUpdatingMode          ; If no longer updating,
    BEQ Exit                    ; then return.
@HandleSubmodes:
    LDA GameSubmode
    JSR TableJump
UpdateMode0Demo_JumpTable:
    .ADDR UpdateMode0Demo_Sub0
    .ADDR UpdateMode0Demo_Sub1
    .ADDR UpdateMode0Demo_Sub2

UpdateMode0Demo_Sub0:
    LDA ButtonsPressed          ; If Start is not pressed,
    AND #$10
    BEQ Exit                    ; then return.
    STA TransferredDemoPatterns ;TODO: Else, store $10 in TransferredDemoPatterns. Why?
    LDA #$00
    STA SongRequest
    JSR SilenceAllSound
    LDA #$5A
    STA SkippedDemo
    INC GameSubmode             ; Go to next submode.
    JSR TurnOffAllVideo
    JSR HideAllSprites
    LDA #$12                    ; Cue transfer record for menu palettes.
    STA TileBufSelector
Exit:
    RTS

UpdateMode0Demo_Sub2:
    ; Copy data from each save file A to save slot info.
    ; Most of the game will deal with save slot info.
    ; Format each inactive file A, to make sure it's clear.
    ;
    JSR TurnOffAllVideo
    LDA #$00
    STA CurSaveSlot
    JSR FetchFileAAddressSet
    LDY #$02
@LoopFormatSlot:
    LDA ($06), Y
    STA IsSaveSlotActive, Y
    BNE @NextFormatSlot
    TYA                         ; Save the slot.
    PHA
    STY CurSaveSlot             ; Switch to this slot's addresses.
    JSR FetchFileAAddressSet
    JSR FormatFileA
    LDA #$00
    STA CurSaveSlot
    ; Fetch the address set for slot 0 again,
    ; so that we can keep referring to its
    ; IsSaveSlotActive address as a table base.
    ;
    ; After this, the slot is still not active, but it will
    ; definitely be clear.
    JSR FetchFileAAddressSet
    PLA
    TAY                         ; Restore the slot.
@NextFormatSlot:
    LDA ($0A), Y                ; Copy death count from file A to save slot info.
    STA DeathCounts, Y
    LDA ($0C), Y                ; Copy quest number from file A to save slot info.
    STA QuestNumbers, Y
    DEY
    BPL @LoopFormatSlot
    LDY #$18                    ; Point to hearts value
    LDX #$00                    ; 0: process hearts value; 1: process heart partial.
@LoopHeart:
    LDA ($00), Y                ; Load the hearts value or heart partial from Items block in file A.
    PHA                         ; Push either value.
    TXA
    LSR
    ; If X is even, then the value is a hearts value.
    ; So, make the hearts equal the heart containers.
    BCS @StoreValue
    ; Pop what we pushed, because we're going to push
    ; a modification.
    PLA
    AND #$F0
    STA $0C
    LSR
    LSR
    LSR
    LSR
    ORA $0C
    PHA                         ; Push the full hearts value.
@StoreValue:
    PLA                         ; Pop whatever we pushed: heart partial or full hearts value
    STA SaveSlotHearts, X       ; Copy to hearts in save slot info.
    ; Point to the next byte in Items block.
    ; hearts value -> hearts partial
    INY
    INX                         ; Increment the index of the value we check.
    ; There are 6 values total:
    ; (hearts value, hearts partial) * 3 slots.
    CPX #$06
    BEQ @CopyNames              ; Once we finish the last value, quit the loop.
    TXA                         ; If X is odd, then go process heart partial instead of hearts value.
    LSR
    BCS @LoopHeart
    ; The 3 files are consecutive in the set.
    ; Point to the hearts value in the next slot.
    TYA
    ADC #$26
    TAY
    JMP @LoopHeart              ; Go process hearts in the next slot.

@CopyNames:
    LDY #$17                    ; Copy the name from file A to save slot info.
@LoopNameByte:
    LDA ($04), Y
    STA Names, Y
    DEY
    BPL @LoopNameByte
    INC GameMode                ; Go to the next game mode (Menu).
    LDA #$00                    ; We're set to initialize the mode.
    STA IsUpdatingMode
    STA GameSubmode
    RTS

AnimateDemo:
    LDA DemoPhase
    BNE AnimateDemo_Phase1
    LDA DemoSubphase
    JSR TableJump
AnimateDemo_Phase0_JumpTable:
    .ADDR AnimateDemoPhase0Subphase0
    .ADDR AnimateDemoPhase0Subphase1

AnimateDemo_Phase1:
    LDA DemoSubphase
    JSR TableJump
AnimateDemo_Phase1_JumpTable:
    .ADDR AnimateDemoPhase1Subphase0
    .ADDR AnimateDemoPhase1Subphase1
    .ADDR AnimateDemoPhase1Subphase2
    .ADDR AnimateDemoPhase1Subphase3
    .ADDR AnimateDemoPhase1Subphase4

InitialTitleSprites:
    .BYTE $77, $CA, $C2, $D0, $77, $CC, $C2, $C8
    .BYTE $77, $CA, $82, $28, $77, $CC, $82, $30
    .BYTE $27, $CA, $42, $D0, $27, $CC, $42, $C8
    .BYTE $27, $CA, $02, $28, $27, $CC, $02, $30
    .BYTE $57, $CE, $02, $74, $57, $D0, $02, $7C
    .BYTE $31, $D2, $02, $57, $4F, $D2, $02, $CC
    .BYTE $67, $D2, $02, $7B, $83, $D2, $02, $50
    .BYTE $31, $D4, $02, $5F, $3F, $D4, $02, $24
    .BYTE $41, $D4, $02, $64, $7B, $D4, $02, $90
    .BYTE $27, $D6, $02, $50, $2B, $D6, $02, $A0
    .BYTE $4F, $D6, $02, $2C, $7B, $D6, $02, $BC
    .BYTE $67, $A0, $03, $60, $67, $A0, $03, $68
    .BYTE $67, $A0, $03, $70, $67, $A0, $03, $78
    .BYTE $67, $A0, $03, $80, $67, $A0, $03, $88

DemoLineAttrs:
; TODO: How long?
    .BYTE $80, $00, $00, $00, $00, $00, $00, $00
    .BYTE $40, $80, $80, $00, $60, $00, $00, $00
    .BYTE $40, $80, $00, $00, $60, $00, $00, $00
    .BYTE $00, $C0, $00, $00, $60, $00, $40, $00
    .BYTE $00, $C0, $00, $00, $20, $00, $40, $00
    .BYTE $00, $C0, $00, $00, $20, $00, $40, $00
    .BYTE $40, $80, $80, $00, $20, $00, $40, $00
    .BYTE $40, $80, $80, $00, $60, $00, $00, $00
    .BYTE $40, $80, $80, $00, $60, $00, $00, $00
    .BYTE $40, $80, $00, $00, $60, $00, $00, $00
    .BYTE $40, $80, $80, $00, $60, $00, $00, $00
    .BYTE $40, $C0, $80, $00, $20, $00, $40, $00
    .BYTE $40, $80, $80, $00, $20, $00, $40, $00
    .BYTE $40, $80, $80, $00, $20, $00, $40, $00
    .BYTE $40, $80, $00, $00, $20, $00, $40, $00
    .BYTE $40, $80, $80, $00, $60, $00, $00, $00
    .BYTE $40, $80, $80, $00, $60, $00, $00, $00
    .BYTE $00, $C0, $00, $00, $60, $00, $00, $00
    .BYTE $40, $00, $C0, $00, $00, $20, $40, $00
    .BYTE $00, $00, $40, $00, $00, $00, $00, $20
    .BYTE $00, $20, $00, $20, $00, $20, $00, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00

; Unknown block
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00
    .BYTE $00, $00, $00

DemoLeftItemIds:
    .BYTE $22, $23, $18, $1F, $15, $01, $03, $1D
    .BYTE $00, $08, $06, $12, $14, $0C, $10, $19
    .BYTE $17, $1B, $30, $31, $32, $33

DemoRightItemIds:
    .BYTE $1A, $21, $0F, $20, $04, $02, $1C, $1E
    .BYTE $0A, $09, $07, $13, $05, $0D, $11, $0B
    .BYTE $16, $1B

DemoItemColumnX1:
    .BYTE $44

DemoItemColumnX2:
    .BYTE $AC

DemoStoryFinalSpriteTiles:
    .BYTE $E0, $E2, $EC, $EE, $F8, $FA, $E4, $E6
    .BYTE $F0, $F2, $FC, $FE, $E8, $EA, $F4, $F6
    .BYTE $DC, $DE, $00, $00, $78, $78, $00, $00

DemoStoryFinalSpriteAttrs:
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00
    .BYTE $00, $00, $00, $00, $00, $40, $00, $00

DemoTextFields:
    .BYTE $00, $E4, $E5, $E4, $E5, $E4, $E5, $E6
    .BYTE $24, $0A, $15, $15, $24, $18, $0F, $24
    .BYTE $1D, $1B, $0E, $0A, $1C, $1E, $1B, $0E
    .BYTE $1C, $24, $E6, $E4, $E5, $E4, $E5, $E4
    .BYTE $E5, $FF, $07, $11, $0E, $0A, $1B, $1D
    .BYTE $24, $24, $24, $24, $24, $0C, $18, $17
    .BYTE $1D, $0A, $12, $17, $0E, $1B, $FF, $14
    .BYTE $11, $0E, $0A, $1B, $1D, $FF, $07, $0F
    .BYTE $0A, $12, $1B, $22, $24, $24, $24, $24
    .BYTE $24, $24, $24, $24, $0C, $15, $18, $0C
    .BYTE $14, $FF, $07, $1B, $1E, $19, $22, $24
    .BYTE $24, $24, $24, $24, $24, $24, $05, $24
    .BYTE $1B, $1E, $19, $12, $0E, $1C, $FF, $07
    .BYTE $1C, $20, $18, $1B, $0D, $24, $24, $24
    .BYTE $24, $24, $24, $24, $24, $20, $11, $12
    .BYTE $1D, $0E, $FF, $14, $1C, $20, $18, $1B
    .BYTE $0D, $FF, $06, $16, $0A, $10, $12, $0C
    .BYTE $0A, $15, $24, $24, $24, $24, $24, $24
    .BYTE $16, $0A, $10, $12, $0C, $0A, $15, $FF
    .BYTE $07, $1C, $20, $18, $1B, $0D, $24, $24
    .BYTE $24, $24, $24, $24, $24, $24, $1C, $11
    .BYTE $12, $0E, $15, $0D, $FF, $05, $0B, $18
    .BYTE $18, $16, $0E, $1B, $0A, $17, $10, $24
    .BYTE $24, $24, $24, $24, $16, $0A, $10, $12
    .BYTE $0C, $0A, $15, $FF, $12, $0B, $18, $18
    .BYTE $16, $0E, $1B, $0A, $17, $10, $FF, $07
    .BYTE $0B, $18, $16, $0B, $24, $24, $24, $24
    .BYTE $24, $24, $24, $24, $24, $24, $0B, $18
    .BYTE $20, $FF, $07, $0A, $1B, $1B, $18, $20
    .BYTE $24, $24, $24, $24, $24, $24, $24, $24
    .BYTE $1C, $12, $15, $1F, $0E, $1B, $FF, $14
    .BYTE $0A, $1B, $1B, $18, $20, $FF, $07, $0B
    .BYTE $15, $1E, $0E, $24, $24, $24, $24, $24
    .BYTE $24, $24, $24, $24, $24, $1B, $0E, $0D
    .BYTE $FF, $06, $0C, $0A, $17, $0D, $15, $0E
    .BYTE $24, $24, $24, $24, $24, $24, $24, $24
    .BYTE $0C, $0A, $17, $0D, $15, $0E, $FF, $07
    .BYTE $0B, $15, $1E, $0E, $24, $24, $24, $24
    .BYTE $24, $24, $24, $24, $24, $24, $1B, $0E
    .BYTE $0D, $FF, $07, $1B, $12, $17, $10, $24
    .BYTE $24, $24, $24, $24, $24, $24, $24, $24
    .BYTE $24, $1B, $12, $17, $10, $FF, $07, $19
    .BYTE $18, $20, $0E, $1B, $24, $24, $24, $24
    .BYTE $24, $24, $24, $1B, $0E, $0C, $18, $1B
    .BYTE $0D, $0E, $1B, $FF, $05, $0B, $1B, $0A
    .BYTE $0C, $0E, $15, $0E, $1D, $FF, $07, $1B
    .BYTE $0A, $0F, $1D, $24, $24, $24, $24, $24
    .BYTE $24, $24, $1C, $1D, $0E, $19, $15, $0A
    .BYTE $0D, $0D, $0E, $1B, $FF, $06, $16, $0A
    .BYTE $10, $12, $0C, $0A, $15, $24, $24, $24
    .BYTE $24, $24, $24, $0B, $18, $18, $14, $24
    .BYTE $18, $0F, $FF, $08, $1B, $18, $0D, $24
    .BYTE $24, $24, $24, $24, $24, $24, $24, $24
    .BYTE $16, $0A, $10, $12, $0C, $FF, $08, $14
    .BYTE $0E, $22, $24, $24, $24, $24, $24, $24
    .BYTE $24, $24, $16, $0A, $10, $12, $0C, $0A
    .BYTE $15, $FF, $15, $14, $0E, $22, $FF, $08
    .BYTE $16, $0A, $19, $24, $24, $24, $24, $24
    .BYTE $24, $24, $24, $0C, $18, $16, $19, $0A
    .BYTE $1C, $1C, $FF, $0C, $1D, $1B, $12, $0F
    .BYTE $18, $1B, $0C, $0E, $FF, $04, $15, $12
    .BYTE $0F, $0E, $24, $19, $18, $1D, $12, $18
    .BYTE $17, $24, $24, $24, $02, $17, $0D, $24
    .BYTE $19, $18, $1D, $12, $18, $17, $FF, $06
    .BYTE $15, $0E, $1D, $1D, $0E, $1B, $24, $24
    .BYTE $24, $24, $24, $24, $24, $24, $0F, $18
    .BYTE $18, $0D, $FF

DemoLineTextAddrs:
    .BYTE $9A, $92, $BC, $92, $D1, $92, $D8, $92
    .BYTE $EC, $92, $7F, $94, $99, $94, $01, $93
    .BYTE $15, $93, $1C, $93, $32, $93, $47, $93
    .BYTE $5E, $93, $69, $93, $7C, $93, $91, $93
    .BYTE $98, $93, $AB, $93, $C1, $93, $D4, $93
    .BYTE $E8, $93, $FE, $93, $08, $94, $1F, $94
    .BYTE $35, $94, $48, $94, $5C, $94, $61, $94
    .BYTE $75, $94

InitDemoSubphaseClearArtifacts:
    JSR TurnOffVideoAndClearArtifacts
IncSubphase:
    INC DemoSubphase
    RTS

TitlePaletteTransferRecord:
    .BYTE $3F, $00, $20, $36, $0F, $00, $10, $36
    .BYTE $17, $27, $0F, $36, $08, $1A, $28, $36
    .BYTE $30, $3B, $22, $36, $30, $3B, $16, $36
    .BYTE $17, $27, $0F, $36, $08, $1A, $28, $36
    .BYTE $30, $3B, $22, $FF

InitDemoSubphaseTransferTitlePalette:
    LDX #$23                    ; Write a tile buf record for the title palette.
    STX $0300
    STX DynTileBufLen
@CopyTitlePalette:
    LDA TitlePaletteTransferRecord, X
    STA DynTileBuf, X
    DEX
    BPL @CopyTitlePalette
    LDX #$0A                    ; Reset variables used in this phase.
    LDA #$00
    STA DemoLineTextIndex
    STA DemoItemRow
@ClearVars:
    STA TriforceGlowTimer, X
    STA InitializedWaterfallAnimation, X
    STA DemoPhase0Subphase1Cycle, X
    DEX
    BPL @ClearVars
    LDX #$0A                    ; Mark objects 1 to 10 disabled.
@DisableObjects:
    LDA #$FF
    STA ObjState, X
    DEX
    BNE @DisableObjects
    JMP IncSubphase             ; Go advance the DemoSubphase and return.

InitDemoSubphasePlayTitleSong:
    LDA #$80                    ; Request the title song.
    STA SongRequest
    ; Select transfer buffer 8 (offset $10 in table):
    ; title nametables and attributes.
    LDA #$10
    JMP EndInitDemo

StoryPaletteTransferRecord:
    .BYTE $3F, $00, $20, $0F, $30, $30, $30, $0F
    .BYTE $21, $30, $30, $0F, $16, $30, $30, $0F
    .BYTE $29, $1A, $09, $0F, $29, $37, $17, $0F
    .BYTE $02, $22, $30, $0F, $16, $27, $30, $0F
    .BYTE $0B, $1B, $2B, $FF

InitDemoSubphaseTransferStoryPalette:
    LDX #$23                    ; Copy the transfer record for the story palette.
    STX $0300
    STX DynTileBufLen
@CopyStoryPalette:
    LDA StoryPaletteTransferRecord, X
    STA DynTileBuf, X
    DEX
    BPL @CopyStoryPalette
    LDX #$0A                    ; Reset variables used in this phase.
    LDA #$00
@ClearVars:
    STA $0412, X
    STA $041F, X
    STA $0437, X
    STA $0444, X
    DEX
    BPL @ClearVars
    JMP IncSubphase             ; Go to the next subphase and return.

InitDemoSubphaseTransferStoryTiles:
    INC SwitchNameTablesReq
    LDA #$10
    STA CurVScroll
    ; Select transfer buffer 1 (offset 2 in table):
    ; Story nametables and attributes.
    LDA #$02
EndInitDemo:
    STA TileBufSelector
    LDA #$00
    STA DemoSubphase
    INC IsUpdatingMode
    RTS

AnimateDemoPhase0Subphase0:
    ; Animate while we wait about 512 frames.
    ;
    LDA FrameCounter
    AND #$01                    ; The timer is incremented every other frame.
    BEQ @SkipTimer
    INC DemoTimer
    LDA DemoTimer
    BNE @SkipTimer
    JMP IncSubphase             ; Go advance the demo subphase and return.

@SkipTimer:
    JSR AnimateDemoPhase0Subphase0Artifacts
    RTS

AnimateDemoPhase1Subphase0:
    LDA FrameCounter            ; Increase CurVScroll every odd frame.
    AND #$01
    BEQ @CheckVScroll
    INC CurVScroll
    LDA CurVScroll              ; Have we scrolled to the bottom of nametable 2?
    CMP #$F0
    BNE @CheckVScroll
    INC ScrolledScreenCount
    ; The bottom of NT 2 is also the top of NT 0.
    ; So, reset CurVScroll and the base NT.
    LDA #$00
    STA CurVScroll
    INC SwitchNameTablesReq
@CheckVScroll:
    ; Scrolling hasn't ended until we've scrolled to the bottom,
    ; wrapped around, and scrolled 8 more lines.
    LDA CurVScroll
    CMP #$08
    BNE @Exit
    LDA ScrolledScreenCount
    BEQ @Exit
    LDA #$00
    STA ScrolledScreenCount
    INC DemoSubphase
@Exit:
    RTS

AnimateDemoPhase1Subphase1:
    INC DemoTimer
    LDA DemoTimer
    BNE :+
    INC DemoSubphase            ; Go to the next subphase.
:
    LDA #$29
    STA DemoLineTileVramAddrHi
    LDA #$00
    STA DemoLineTileVramAddrLo
    LDA #$2B
    STA DemoLineAttrVramAddrHi
    LDA #$E0
    STA DemoLineAttrVramAddrLo
    RTS

AnimateDemoPhase1Subphase2:
    JSR HideAllSprites
    JSR DisableFallenObjects
    JSR Demo_AnimateObjects
    LDA FrameCounter
    AND #$01
    BEQ @Exit                   ; Every even frame, just return.
    LDX #$0A                    ; Decrement the Y coordinate of every object.
@DecObjYs:
    DEC ObjY, X
    DEX
    BNE @DecObjYs
    INC ScrolledLineCount       ; We scrolled one more line.
    LDA ScrolledLineCount
    BNE :+                      ; Once we've scrolled a whole screen,
    INC ScrolledScreenCount     ; Increment the screen count.
:
    LDA ScrolledScreenCount     ; Have we scrolled 5 screens?
    CMP #$05
    BNE @Scroll                 ; Scroll the nametable.
    LDA ScrolledLineCount       ; Scroll half a screen more.
    CMP #$80
    BNE @Scroll                 ; Scroll the nametable.
    INC DemoSubphase            ; Go to the next subphase.
@Exit:
    RTS

@Scroll:
    INC CurVScroll              ; Update vertical scrolling.
    LDA CurVScroll
    CMP #$F0
    BNE @CheckLine              ; If we reached the bottom of the screen,
    INC SwitchNameTablesReq     ; Switch the base nametable and reset scroll.
    LDA #$00
    STA CurVScroll
@CheckLine:
    LDA ScrolledLineCount       ; 7/8 of the lines,
    AND #$07
    BNE @Exit                   ; just return.
    JSR ProcessDemoLineItems    ; But every 8 lines, we have to check for new text and objects.
    ; Append a request to transfer a line.
    ; It's blank by default. Change it later.
    LDX #$20
    LDA #$FF
    STA DynTileBuf+3, X
    DEX
@ClearLine:
    LDA #$24
    STA DynTileBuf+3, X
    DEX
    BPL @ClearLine
    LDA #$20
    STA DynTileBuf+2
    LDA DemoLineTileVramAddrHi
    STA DynTileBuf
    LDA DemoLineTileVramAddrLo
    STA DynTileBuf+1
    CLC                         ; The next line is 32 bytes farther.
    ADC #$20
    STA DemoLineTileVramAddrLo
    BNE @CheckNTEnd             ; If crossed a page,
    INC DemoLineTileVramAddrHi  ; then increment high address byte,
    JMP @CheckText              ; and do the next task.

@CheckNTEnd:
    ; Check if we reached the end of a nametable.
    ; If we did, then set the address to the top of the other one.
    ; $2BC0 -> $2000
    ; $23C0 -> $2800
    CMP #$C0
    BNE @CheckText
    LDA DemoLineTileVramAddrHi
    CMP #$2B
    BNE @CheckNT0
    LDA #$20
    STA DemoLineTileVramAddrHi
    JMP @ResetVramLo

@CheckNT0:
    CMP #$23
    BNE @CheckText
    LDA #$28
    STA DemoLineTileVramAddrHi
@ResetVramLo:
    LDA #$00
    STA DemoLineTileVramAddrLo
@CheckText:
    ; Check text and NT attributes.
    ;
    LDX DemoLineIndex
    LDA DemoLineAttrs, X
    AND #$80
    BEQ @ProcessAttrs           ; If attribute $80 isn't set, then leave the line blank.
    LDA DemoLineTextIndex
    ASL
    TAX
    LDY #$00
    LDA DemoLineTextAddrs, X    ; Get the address of the current text field.
    STA $00
    LDA DemoLineTextAddrs+1, X
    STA $01
    LDA ($00), Y                ; The first byte of text field is the offset into the line.
    TAX
@CopyLine:
    ; X is an offset into the destination line.
    ; Y is an offset into the source tiles of the current record.
    ;
    ; Get the next source tile.
    INY
    LDA ($00), Y
    CMP #$FF
    BEQ @EndLine                ; When you reach the end marker, quit.
    STA DynTileBuf+3, X         ; Copy to the tile buf.
    INX
    JMP @CopyLine

@EndLine:
    INC DemoLineTextIndex
@ProcessAttrs:
    ; Finished processing attribute $80.
    ;
    JSR ProcessDemoLineAttrs
    INC DemoLineIndex           ; Advance to the next line.
    RTS

ProcessDemoLineAttrs:
    LDX DemoLineIndex
    LDA DemoLineAttrs, X
    AND #$40
    BEQ @Exit                   ; If attribute $40 is missing, then return.
    ; Append a second transfer record.
    ; This one is for nametable attributes.
    LDA DemoLineAttrVramAddrHi
    STA DynTileBuf+35
    LDA DemoLineAttrVramAddrLo
    STA DynTileBuf+36
    LDA #$48                    ; 8 zeroes in VRAM take up 1 byte in record.
    STA DynTileBuf+37
    LDA #$00
    STA DynTileBuf+38
    LDA #$FF
    STA DynTileBuf+39
    INC $0416                   ; TODO: $416?
    LDA DemoLineAttrVramAddrLo  ; The next attributes go 8 bytes farther.
    CLC
    ADC #$08
    STA DemoLineAttrVramAddrLo
    ; Check if we reached the end of nametable attributes.
    ; If we did, then set the address to the top of the other one.
    ; $2C00 -> $23C0
    ; $2400 -> $2BC0
    BNE @Exit
    LDA DemoLineAttrVramAddrHi
    CMP #$23
    BNE @SetNT0
    LDA #$2B
    STA DemoLineAttrVramAddrHi
    JMP @SetVramLo

@SetNT0:
    LDA #$23
    STA DemoLineAttrVramAddrHi
@SetVramLo:
    LDA #$C0
    STA DemoLineAttrVramAddrLo
@Exit:
    RTS

DisableFallenObjects:
    ; For objects 1..10, indexed by X:
    ;
    LDX #$0A
@Loop:
    ; Once an object has fallen off the top of the screen,
    ; disable it.
    LDA ObjY, X
    ; The Y coordinate where we consider an object
    ; completely off the screen is $F0.
    CMP #$F0
    BNE @Next
    LDA #$FF                    ; Set the corresponding state to disabled.
    STA ObjState, X
@Next:
    DEX
    BNE @Loop
    RTS

ProcessDemoLineItems:
    LDY DemoLineIndex
    LDA DemoLineAttrs, Y
    AND #$20                    ; If attribute $20 is present, then instantiate a new object.
    BNE @MakeObject
    RTS

@MakeObject:
    LDX #$0A                    ; Look for the first disabled object.
@FindDisabled:
    LDA ObjState, X
    BNE @SetUpObject
    DEX
    JMP @FindDisabled

@SetUpObject:
    LDY DemoItemRow
    LDA DemoLeftItemIds, Y      ; Allocate an object for the item on the left.
    STA DemoItemIds, X
    LDA #$EF                    ; Start at the bottom of the screen.
    STA ObjY, X
    LDA DemoItemColumnX1
    STA ObjX, X
    LDA #$00
    STA ObjState, X
    LDA DemoItemIds, X
    CMP #$30                    ; Link gets a special item ID.
    BCS @CenterLink             ; Go center the object horizontally, if it is Link.
    DEX                         ; Allocate another object for the item on the right.
    LDA DemoRightItemIds, Y
    STA DemoItemIds, X
    LDA #$EF
    STA ObjY, X
    LDA DemoItemColumnX2
    STA ObjX, X
    LDA #$00
    STA ObjState, X
    LDA DemoLeftItemIds, Y
    CMP #$1B
    BNE @IncRow
    ; Special case: The triforce must be centered.
    ; But it shows up in both column lists.
    ; Two objects were instantiated, but they'll overlap.
    LDA #$78
    STA ObjX, X
    STA ObjX+1, X
    LDA #$00
    STA $0430                   ; TODO: $430?
@IncRow:
    INC DemoItemRow
    RTS

@CenterLink:
    LDA #$68
    STA ObjX, X
    JMP @IncRow

Demo_AnimateObjects:
    ; For each object 1..10, indexed by X:
    ;
    LDX #$0A
@LoopObject:
    LDA ObjState, X
    BNE @NextObject             ; If the object is disabled, then skip it.
    TXA                         ; Save the index.
    PHA
    ; Animate the fairy specially.
    ;
    LDA DemoItemIds, X
    CMP #$23
    BNE @AnimateNormal
    JSR AnimateStationaryFairy
    JMP @PopAndNextObject

@AnimateNormal:
    ; Animate normal items (type < $30).
    ;
    CMP #$30
    BCS @AnimateFinal
    JSR AnimateItemObject
    JMP @PopAndNextObject

@AnimateFinal:
    ; At the end of the list of items are special items for Link
    ; and the sheet of paper.
    ;
    JSR AnimateDemoStoryFinalItems
@PopAndNextObject:
    PLA                         ; Restore the index.
    TAX
@NextObject:
    DEX
    BNE @LoopObject
    RTS

; Unknown block
    .BYTE $A2, $04, $C9, $14, $D0, $02, $A2, $0C
    .BYTE $DE, $50, $02, $AA, $38, $E9, $04, $AA
    .BYTE $10, $F6, $60

AnimateStationaryFairy:
    JSR Anim_FetchObjPosForSpriteDescriptor
    JSR Anim_SetSpriteDescriptorRedPaletteRow
    ; Rely on the fact that 2 represents normal sprite
    ; attributes with palette 6.
    ; Shift the value to make it 4.
    ASL
    AND FrameCounter            ; Every 4 frames, switch between 2 animation frames.
    LSR
    LSR
    STA $0C                     ; Put frame in [$0C].
    LDY #$14
    JMP Anim_WriteItemSprites

AnimateDemoStoryFinalItems:
    ; The demo story ending objects use special item types.
    ; The bottom nibble of the item type is an index into two
    ; tables. Each row has 6 bytes, one for each sprite of the
    ; item type.
    ;
    LDA DemoItemIds, X
    AND #$0F
    ASL
    STA $00
    ASL
    CLC
    ADC $00
    TAY                         ; Y gets offset of each row: (low_nibble & $0F) * 6
    LDA ObjY, X                 ; Put ObjY,ObjX in [$00, $01].
    STA $00
    LDA ObjX, X
    STA $01
    LDA #$05
    STA $02                     ; For 6 sprites, counted by [$02]:
    TYA
    ASL
    ASL
    TAX                         ; X gets the offset to the sprite (index * 4).
@LoopSprite:
    LDA DemoStoryFinalSpriteTiles, Y    ; From this table, get the tile.
    BEQ @SkipSprite             ; If it's zero, skip the sprite.
    STA Sprites+1, X
    LDA $00                     ; Write sprite Y.
    STA Sprites, X              ; From this table, get the attributes.
    LDA DemoStoryFinalSpriteAttrs, Y
    STA Sprites+2, X
    LDA $01                     ; Write sprite X.
    STA Sprites+3, X
    INX                         ; Point to the next sprite.
    INX
    INX
    INX
@SkipSprite:
    LDA $01                     ; Add 8 to X coordinate.
    CLC
    ADC #$08
    STA $01
    INY                         ; Increment the sprite index.
    DEC $02                     ; Decrement count.
    BPL @LoopSprite
    RTS

AnimateDemoPhase1Subphase3:
    INC DemoTimer               ; Delay about 256 frames.
    LDA DemoTimer
    BNE AnimateDemoPhase1End_AnimateObjects
    INC DemoSubphase
    RTS

AnimateDemoPhase1Subphase4:
    INC DemoTimer               ; Delay 56 frames.
    LDA DemoTimer
    CMP #$39
    BNE AnimateDemoPhase1End_AnimateObjects
    LDA #$00                    ; Go to phase 0 again, and initialize it.
    STA IsUpdatingMode
    STA DemoTimer
    STA DemoPhase
    STA DemoSubphase
    RTS

AnimateDemoPhase1End_AnimateObjects:
    JSR HideAllSprites
    JSR Demo_AnimateObjects
    RTS

TriforcePaletteTransferRecord:
    .BYTE $3F, $04, $04, $36, $17, $27, $0F, $FF

TriforceGlowingColors:
    .BYTE $27, $37, $37, $27, $17, $07, $07, $17

AnimateDemoPhase0Subphase0Artifacts:
    ; Set up sprites for the title.
    ; Copy initial sprite data to Sprites area.
    LDY #$70
@CopySprites:
    LDA InitialTitleSprites-1, Y
    STA Sprites-1, Y
    DEY
    BNE @CopySprites
    JSR UpdateWaterfallAnimation
    ; When you reach the end of the glow cycle,
    ; Append a transfer record for the triforce palette.
    ;
    LDA TriforceGlowTimer
    BNE @DecGlowTimer
    LDY #$07
@CopyTriforcePalette:
    LDA TriforcePaletteTransferRecord, Y
    STA DynTileBuf, Y
    DEY
    BPL @CopyTriforcePalette
    ; Patch the palette record with the color
    ; for the current point in the cycle.
    LDY TriforceGlowCycle
    LDA TriforceGlowingColors, Y
    STA DynTileBuf+5
    LDA #$06                    ; Restart the glow timer.
    STA TriforceGlowTimer
    INC TriforceGlowCycle       ; Advance the glow cycle.
    LDA TriforceGlowCycle
    CMP #$08                    ; When the glow cycle finishes,
    BNE @DecGlowTimer
    LDA #$10                    ; delay twice as long for one step of the cycle.
    STA TriforceGlowTimer
    LDA #$00                    ; Restart the glow cycle.
    STA TriforceGlowCycle
@DecGlowTimer:
    DEC TriforceGlowTimer
    RTS

WaterfallWaveTiles:
    .BYTE $B2, $B4, $B6, $B8

WaterfallCrestTiles:
    .BYTE $A2, $A4, $A6, $A8

WaterfallSpriteXs:
    .BYTE $50, $58, $60, $68

WaterfallWaveSpriteOffsets:
    .BYTE $70, $80, $90

; Unknown block
    .BYTE $A0, $B0, $C0, $D0, $E0

UpdateWaterfallAnimation:
    LDA InitializedWaterfallAnimation
    BNE @UpdateSprites
    LDA #$B6                    ; Initialize animation values.
    STA TitleWaveYs+0
    LDA #$C8
    STA TitleWaveYs+1
    LDA #$D8
    STA TitleWaveYs+2
    ; TODO: Are these used?
    ;
    LDA #$C0
    STA $0423
    LDA #$D0
    STA $0424
    LDA #$DD
    STA $0425
    INC InitializedWaterfallAnimation
@UpdateSprites:
    LDX #$02
:
    JSR UpdateSpritesForWaterfallWave
    DEX
    BPL :-
    JSR UpdateSpritesForWaterfallCrest
    RTS

UpdateSpritesForWaterfallWave:
    ; Add 2 to current waterfall wave Y.
    ; But keep it in the range $B2..$E3.
    ;
    INC TitleWaveYs, X
    INC TitleWaveYs, X
    LDA TitleWaveYs, X
    CMP #$E3
    BCC :+
    LDA #$B2
    STA TitleWaveYs, X
:
    STA $05                     ; Keep a copy of the new value in [$05].
    ; Depending on the Y coordinate of the wave,
    ; modify the animation state.
    ;
    ; < $B9, use tile offset 0
    ; < $C2, use tile offset 8
    ; else, use tile offset $10
    TAY
    LDA #$10
    CPY #$C2
    BCS @SetOffset
    LSR
    CPY #$B9
    BCS @SetOffset
    LDA #$00
@SetOffset:
    STA $00
    STX $02                     ; Keep a copy of the wave index in [$02].
    LDY WaterfallWaveSpriteOffsets, X    ; Y gets offset of first sprite in current wave.
    LDX #$03                    ; For each sprite (4) in current wave, indexed by X:
@LoopSprite:
    LDA WaterfallWaveTiles, X   ; Get base tile for current sprite.
    CLC
    ADC $00                     ; Modify the tile according to the current state of the wave.
    STA Sprites+1, Y
    LDA WaterfallSpriteXs, X    ; Set sprite X to each part of wave in a row.
    STA Sprites+3, Y
    LDA $05                     ; Set sprite Y to rolling value.
    STA Sprites, Y
    LDA #$00                    ; Set sprite attributes: normal with palette 4.
    STA Sprites+2, Y
    INY                         ; Advance to the next sprite.
    INY
    INY
    INY
    DEX
    BPL @LoopSprite
    LDX $02                     ; Put the wave index in X again.
    RTS

UpdateSpritesForWaterfallCrest:
    LDX #$03                    ; For each sprite (4) in crest, indexed by X:
    LDY #$F0
@LoopSprite:
    ; Every 16 frames, switch between
    ; the two frames of animation.
    LDA FrameCounter
    AND #$08
    ADC WaterfallCrestTiles, X
    STA Sprites+1, Y
    LDA #$A8                    ; The Y coordinate is fixed in place.
    STA Sprites, Y
    LDA WaterfallSpriteXs, X    ; Set sprite X to each part of crest in a row.
    STA Sprites+3, Y
    LDA #$00                    ; Set sprite attributes: normal with palette 4.
    STA Sprites+2, Y
    INY                         ; Advance to the next sprite.
    INY
    INY
    INY
    DEX
    BPL @LoopSprite
    RTS

DemoPhase0Subphase1Palettes:
    .BYTE $36, $0F, $00, $10, $36, $17, $27, $0F
    .BYTE $36, $08, $1A, $28, $36, $30, $3B, $22
    .BYTE $36, $30, $3B, $16, $36, $17, $27, $0F
    .BYTE $36, $08, $1A, $28, $36, $30, $3B, $22
    .BYTE $39, $0F, $00, $10, $39, $17, $27, $0F
    .BYTE $39, $08, $1A, $28, $39, $30, $3B, $22
    .BYTE $39, $30, $3B, $16, $39, $17, $27, $0F
    .BYTE $39, $08, $1A, $28, $39, $30, $3B, $22
    .BYTE $31, $0F, $00, $10, $31, $17, $27, $0F
    .BYTE $31, $08, $1A, $28, $31, $30, $3B, $22
    .BYTE $31, $30, $3B, $16, $31, $17, $27, $0F
    .BYTE $31, $08, $1A, $28, $31, $30, $3B, $22
    .BYTE $3C, $0F, $00, $10, $3C, $17, $27, $0F
    .BYTE $3C, $08, $1A, $28, $3C, $30, $3B, $22
    .BYTE $3C, $30, $3B, $16, $3C, $17, $27, $0F
    .BYTE $3C, $08, $1A, $28, $3C, $30, $3B, $22
    .BYTE $3B, $0F, $00, $10, $3B, $17, $27, $0F
    .BYTE $3B, $08, $1A, $28, $3B, $10, $3B, $22
    .BYTE $3B, $10, $3B, $16, $3B, $17, $27, $0F
    .BYTE $3B, $08, $1A, $28, $3B, $10, $3B, $22
    .BYTE $2C, $0F, $00, $10, $2C, $17, $27, $0F
    .BYTE $2C, $08, $1A, $28, $2C, $10, $3B, $22
    .BYTE $2C, $10, $3B, $16, $2C, $17, $27, $0F
    .BYTE $2C, $08, $1A, $28, $2C, $10, $3B, $22
    .BYTE $1C, $0F, $00, $10, $1C, $17, $27, $0F
    .BYTE $1C, $08, $1A, $28, $1C, $10, $3B, $22
    .BYTE $1C, $10, $3B, $16, $1C, $17, $27, $0F
    .BYTE $1C, $08, $1A, $28, $1C, $10, $3B, $22
    .BYTE $02, $0F, $00, $10, $02, $06, $27, $0F
    .BYTE $02, $0A, $1A, $18, $02, $10, $2B, $12
    .BYTE $02, $10, $2B, $06, $02, $06, $27, $0F
    .BYTE $02, $0A, $1A, $18, $02, $10, $2B, $12
    .BYTE $0C, $0F, $00, $10, $0C, $03, $16, $0F
    .BYTE $0C, $01, $0A, $08, $0C, $00, $1B, $02
    .BYTE $0C, $00, $1B, $02, $0C, $03, $16, $0F
    .BYTE $0C, $01, $0A, $08, $0C, $00, $1B, $02
    .BYTE $0F, $0F, $0F, $00, $0F, $01, $11, $0F
    .BYTE $0F, $0C, $01, $02, $0F, $00, $01, $0C
    .BYTE $0F, $00, $01, $0C, $0F, $01, $11, $0F
    .BYTE $0F, $0C, $01, $02, $0F, $00, $01, $0C
    .BYTE $0F, $0F, $0F, $00, $0F, $01, $11, $0F
    .BYTE $0F, $0F, $0C, $01, $0F, $01, $0C, $0F
    .BYTE $0F, $01, $0C, $0F, $0F, $01, $11, $0F
    .BYTE $0F, $0F, $0C, $01, $0F, $01, $0C, $0F
    .BYTE $0F, $0F, $0F, $0F, $0F, $0F, $01, $0F
    .BYTE $0F, $0F, $0F, $0C, $0F, $0C, $0F, $0F
    .BYTE $0F, $0C, $0F, $0F, $0F, $0F, $01, $0F
    .BYTE $0F, $0F, $0F, $0C, $0F, $0C, $0F, $0F
    .BYTE $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
    .BYTE $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
    .BYTE $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
    .BYTE $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
    .BYTE $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
    .BYTE $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
    .BYTE $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
    .BYTE $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F

; Unknown block
    .BYTE $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
    .BYTE $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
    .BYTE $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
    .BYTE $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
    .BYTE $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
    .BYTE $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
    .BYTE $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F
    .BYTE $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F

DemoPhase0Subphase1Delays:
    .BYTE $08, $08, $06, $05, $04, $03, $02, $02
    .BYTE $02, $C0, $06, $04, $C0, $03

; Unknown block
    .BYTE $04, $04

AnimateDemoPhase0Subphase1:
    LDA DemoPhase0Subphase1Timer    ; When subphase timer expires,
    BNE @UpdateAnimation        ; go update animation only.
    ; Calculate the address to the palette to transfer.
    ; Addr = DemoPhase0Subphase1Palettes + (DemoPhase0Subphase1Palettes * $20)
    LDA #$00
    STA $01
    LDA DemoPhase0Subphase1Cycle
    ASL
    ASL
    ASL
    ASL
    ROL $01
    ASL
    ROL $01
    ADC #$69
    STA $00
    LDA $01
    ADC #$99
    STA $01
    LDA #$3F                    ; Set up the header of the transfer record.
    STA DynTileBuf
    LDA #$00
    STA DynTileBuf+1
    LDA #$20
    STA DynTileBuf+2
    LDY #$1F                    ; Put an end marker at the end.
    LDA #$FF
    STA DynTileBuf+4, Y
@CopyPalette:
    LDA ($00), Y                ; Copy the chosen palette into the transfer record.
    STA DynTileBuf+3, Y
    DEY
    BPL @CopyPalette
    ; Advance the subphase cycle.
    ;
    INC DemoPhase0Subphase1Cycle
    ; Set the timer to the delay for the current point in the cycle.
    ;
    LDY DemoPhase0Subphase1Cycle
    LDA DemoPhase0Subphase1Delays-1, Y
    STA DemoPhase0Subphase1Timer
    CPY #$0E
    BCC @UpdateAnimation        ; If we reached the end of the cycle,
    ; Advance to the next demo phase.
    ;
    INC DemoPhase
    LDA #$00                    ; Reset the demo subphase.
    STA DemoSubphase
    STA IsUpdatingMode          ; We have to initialize the new demo phase.
@UpdateAnimation:
    DEC DemoPhase0Subphase1Timer
    JSR UpdateWaterfallAnimation
    RTS

; Unknown block
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF

SaveFileBAddressSets:
    .BYTE $98, $68, $10, $69, $80, $68, $90, $6D
    .BYTE $93, $6D, $96, $6D, $99, $6D

SaveFileBAddressSet1:
    .BYTE $C0, $68, $90, $6A, $88, $68, $91, $6D
    .BYTE $94, $6D, $97, $6D, $9A, $6D

SaveFileBAddressSet2:
    .BYTE $E8, $68, $10, $6C, $90, $68, $92, $6D
    .BYTE $95, $6D, $98, $6D, $9B, $6D

; TODO: [C8:C9]
;
; Returns:
; [C0:C1]: items pointer
; [C2:C3]: world flags pointer
; [C4:C5]: name pointer
; [C6:C7]: IsSaveSlotActive pointer
; [C8:C9]:
; [CA:CB]: death count pointer
; [CC:CD]: quest pointer
;
FetchFileBAddressSet:
    LDA #$FF                    ; Calculate the end of the address set for current file.
    LDY CurSaveSlot
@AddE:
    CLC
    ADC #$0E
    DEY
    BPL @AddE
    TAY
    ; Copy the file address set (14 bytes) for the current
    ; save file to [$C0] to make it easier to work with.
    LDX #$0D
@CopyAddresses:
    LDA SaveFileBAddressSets, Y
    STA $C0, X
    DEY
    DEX
    BPL @CopyAddresses
    RTS

ModeFTitleTransferBuf:
    .BYTE $20, $64, $19, $6A, $6A, $6A, $6A, $0E
    .BYTE $15, $12, $16, $12, $17, $0A, $1D, $12
    .BYTE $18, $17, $24, $24, $16, $18, $0D, $0E
    .BYTE $6A, $6A, $6A, $6A, $FF

ModeFTitlePatchRegister:
    .BYTE $1B, $0E, $10, $12, $1C, $1D, $0E, $1B
    .BYTE $24, $22, $18, $1E, $1B, $24, $17, $0A
    .BYTE $16, $0E

ModeFSaveSlotTemplatePatchRegister:
    .BYTE $1B, $0E, $10, $12, $1C, $1D, $0E, $1B
    .BYTE $24, $24, $24

ModeFSaveSlotTemplateTransferBuf:
    .BYTE $20, $CE, $08, $24, $24, $24, $24, $24
    .BYTE $24, $24, $24, $21, $2E, $08, $24, $24
    .BYTE $24, $24, $24, $24, $24, $24, $21, $8E
    .BYTE $08, $24, $24, $24, $24, $24, $24, $24
    .BYTE $24, $21, $EA, $0F, $0E, $15, $12, $16
    .BYTE $12, $17, $0A, $1D, $12, $18, $17, $24
    .BYTE $0E, $17, $0D, $FF

ModeEandFSlotCursorYs:
    .BYTE $2F, $47, $5F, $77

ModeE_CharMap:
    .BYTE $0A, $0B, $0C, $0D, $0E, $0F, $10, $11
    .BYTE $12, $13, $14, $15, $16, $17, $18, $19
    .BYTE $1A, $1B, $1C, $1D, $1E, $1F, $20, $21
    .BYTE $22, $23, $62, $63, $28, $29, $2A, $2B
    .BYTE $2C, $00, $01, $02, $03, $04, $05, $06
    .BYTE $07, $08, $09, $24

SlotToInitialNameCharTransferHeaders:
    .BYTE $20, $CE, $01, $21, $2E, $01, $21, $8E
    .BYTE $01

DeletedSlotBlankNameTransferBuf:
    .BYTE $20, $CE, $48, $24, $FF, $21, $2E, $48
    .BYTE $24, $FF, $21, $8E, $48, $24, $FF

ModeEandFCursorSprites:
    .BYTE $F3, $03, $43, $F8, $25, $23, $70, $F8
    .BYTE $25, $23, $30

ModeE_CharBoardYOffsetsAndBounds:
    .BYTE $10, $C7, $87, $F0, $77, $B7

SlotToBlankNameTransferBufEndOffset:
    .BYTE $04, $09, $0E

SlotToNameOffset:
    .BYTE $00, $08, $10

SlotToInitialNameCharTransferHeaderEndOffsets:
    .BYTE $02, $05, $08

InitModeEandF_Full:
    LDA #$00
    STA CurSaveSlot
    JSR ModeE_ResetVariables
    JSR TurnOffAllVideo
    LDA GameSubmode
    BNE @CheckSub1              ; Go handle submodes 1 and up.
    ; Submode 0:
    ;
    JSR TurnOffVideoAndClearArtifacts
@FormatSlotsB:
    ; Format all file B's.
    ;
    JSR FetchFileBAddressSet
    JSR FormatFileB
    INC CurSaveSlot
    LDA CurSaveSlot
    CMP #$03
    BNE @FormatSlotsB
    LDA #$00                    ; Reset CurSaveSlot.
    STA CurSaveSlot
    LDX #$1C                    ; Copy the title tiles to the dynamic transfer buf.
@CopyTiles:
    LDA ModeFTitleTransferBuf, X
    STA DynTileBuf, X
    DEX
    BPL @CopyTiles
    LDA GameMode
    CMP #$0E
    BNE @SetBufLen              ; If in mode E, overwrite "ELIMINATION MODE" with "REGISTER YOUR NAME".
    LDY #$00
@OverwriteTitle:
    LDA ModeFTitlePatchRegister, Y
    STA DynTileBuf+7, Y
    INY
    CPY #$12
    BNE @OverwriteTitle
@SetBufLen:
    LDA #$1D                    ; Record the length of the transfer buf.
@SetTransferBufLenAndIncSubmode:
    STA DynTileBufLen
    INC GameSubmode
    RTS

@CheckSub1:
    CMP #$01
    BNE @CheckSub2
    ; Submode 1:
    ;
    ; Copy ModeFSaveSlotTemplateTransferBuf to dynamic transfer buf.
    LDX #$33
@CopySlotTemplates:
    LDA ModeFSaveSlotTemplateTransferBuf, X
    STA DynTileBuf, X
    DEX
    BPL @CopySlotTemplates
    LDX #$00                    ; Overwrite payload of a dynamic transfer record with a name.
    LDY #$00
@OverwriteName:
    LDA Names, Y                ; The names are all arranged one after another.
    STA DynTileBuf+3, X
    INX
    INY
    TYA
    AND #$07
    BNE @OverwriteName          ; If copied the whole name,
    INX                         ; Skip the header for the next transfer record.
    INX
    INX
    CPX #$21
    BNE @OverwriteName          ; If there are more names to write, go write the next one.
    LDA GameMode
    CMP #$0E
    BNE @SkipOverwriteEndOption ; If in mode E, overwrite "ELIMINATION" with "REGISTER".
    LDY #$00
@OverwriteEndOption:
    LDA ModeFSaveSlotTemplatePatchRegister, Y
    STA DynTileBuf+3, X
    INX
    INY
    CPY #$0B
    BNE @OverwriteEndOption
@SkipOverwriteEndOption:
    LDA #$34
    BNE @SetTransferBufLenAndIncSubmode    ; Go record the length of the transfer buf, and advance the submode.
@CheckSub2:
    CMP #$02
    BNE @CheckSub3              ; Go handle submode 3 and 4.
    ; Submode 2:
    ;
    ; Cue a transfer of ModeFCharBoardTransferBuf.
    LDA #$16
@SelectMenuBuf:
    STA TileBufSelector
    INC GameSubmode
    RTS

@CheckSub3:
    ; Submode 3:
    ;
    CMP #$03
    BNE @Sub4                   ; Go handle submode 4.
    LDA #$15                    ; In mode $E, use $15 for cursor color.
    LDY GameMode
    CPY #$0F
    BNE :+
    LDA #$30                    ; In mode $F, use $30 for cursor color.
:
    ; Replace byte 1 of row 3 of sprite palette in transfer buf
    ; TileBufSelector=$12.
    STA MenuPalettesTransferBuf+32
    LDA #$12
    BNE @SelectMenuBuf          ; Go cue transfer of menu palettes and advance submode.
@Sub4:
    ; Submode 4:
    ;
    LDA GameMode
    CMP #$0F
    BEQ @FoundInactiveSlot      ; If in mode E,
    LDX #$03                    ; Then look for the first slot that's inactive.
    LDY #$FF
    STY CurSaveSlot
@FindInactiveSlot:
    INY
    INC CurSaveSlot
    LDA IsSaveSlotActive, Y
    BEQ @FoundInactiveSlot      ; Found one. Quit the loop.
    DEX
    BPL @FindInactiveSlot       ; Loop again. If not found, then CurSaveSlot will be 3 (out of bounds).
@FoundInactiveSlot:
    JSR ModeEandF_SetUpCursorSprites
    LDA CurSaveSlot
    CMP #$03
    BNE :+                      ; If we're at the "end" option, then hide the char-board cursor.
    LDA #$F8
    STA Sprites+8
:
    LDA #$50                    ; The X of Link objects is $50.
    STA $00
    LDA #$30                    ; The base Y of Link objects is $30.
    STA $01
    INC IsUpdatingMode
    JMP Mode1_WriteLinkSprites

ZeldaString:
    .BYTE $23, $0E, $15, $0D, $0A

UpdateModeERegister:
    LDA ButtonsPressed          ; If didn't press Start,
    AND #$10
    BEQ @GoIdle
    LDA CurSaveSlot             ; or didn't select "End" option,
    CMP #$03
    BEQ @ChoseEnd
@GoIdle:
    JMP @Idle                   ; then go handle idle time.

@ChoseEnd:
    ; Pressed Start over "End" option.
    ;
    ; Silence tune channel 1.
    LDA #$00
    STA Tune1
    STA $0425                   ; Reset SaveFileNameIndex.
    STA $0423                   ; Reset SaveSlotNameIndex.
    STA CurSaveSlot             ; Reset CurSaveSlot.
    TAX                         ; X holds the current slot number
@LoopSaveSlot:
    LDY CurSaveSlot
    LDA #$FF                    ; Mark save file B committed.
    STA IsSaveFileBCommitted, Y
    TYA
    ASL
    TAY
    LDA #$00                    ; Reset FileBReadyToSave [$0426].
    STA $0426
    STA FileBChecksums, Y       ; Reset checksum for current save file B.
    INY
    STA FileBChecksums, Y
    TXA                         ; Save current save slot number.
    PHA
    JSR FetchFileBAddressSet
    PLA                         ; Restore save slot number.
    TAX
@CopyName:
    LDY $0423                   ; Copy next character from save slot info to file B.
    LDA Names, Y
    LDY $0425                   ; SaveFileNameIndex
    STA ($C4), Y
    CMP #$24
    BEQ @NextChar               ; If we copied a space, then go advance offsets and check things.
    LDA IsSaveSlotActive, X
    BNE @NextChar               ; If the save slot is active, then go advance offsets and check things.
    ; The save slot is not active.
    ;
    ; Initialize file B hearts value to 3 heart containers and 2 hearts.
    LDY #$18
    LDA #$22
    STA ($C0), Y
    INY                         ; Initialize file B heart partial to full.
    LDA #$FF
    STA ($C0), Y
    LDY #$25                    ; Initialize file B's max bombs to 8.
    LDA #$08
    STA ($C0), Y
    TXA                         ; Save the current save slot number.
    PHA
    ASL                         ; Multiply it by 8 to get offset to current name in save slot info.
    ASL
    ASL
    TAY
    LDX #$00                    ; Compare the name to "ZELDA".
@CompareToZelda:
    LDA Names, Y
    CMP ZeldaString, X
    BNE @FlagBReady             ; If there's any mismatch, then skip the rest.
    INY
    INX
    CPX #$05
    BCC @CompareToZelda         ; Go check the next character until the end of "ZELDA".
    PLA                         ; Pop and push the slot number, so we can get it into X.
    PHA
    TAX
    LDY #$00                    ; Set second quest in file B.
    LDA #$01
    STA ($CC), Y
@FlagBReady:
    PLA                         ; Restore save slot number.
    TAX
    LDA #$01                    ; Set FileBReadyToSave [$0426].
    STA $0426
    LDY #$00                    ; Set IsSaveSlotActive in file B.
    STA ($C6), Y
@NextChar:
    INC $0423                   ; Point to the next char in save slot info name.
    INC $0425                   ; Point to the next char in save file B name.
    LDA $0425
    CMP #$08
    BNE @CopyName               ; If we haven't copied 8 characters from save slot info name, then go copy the next one.
    INX                         ; Make X refer to the next slot.
    LDA #$00                    ; Reset the offset to the next save file B char.
    STA $0425                   ; SaveFileNameIndex
    LDA $0426
    BEQ :+                      ; If FileBReadyToSave [$0426] is set, then calculate and store the file B checksum, and mark file B uncommitted.
    JSR CalculateAndStoreFileBChecksumUncommitted
:
    INC CurSaveSlot             ; Advance the slot number.
    LDA CurSaveSlot
    CMP #$03
    BEQ :+                      ; If haven't processed 3 slots,
    JMP @LoopSaveSlot           ; then go process the next one.

:
    LDA #$00                    ; Reset FileBReadyToSave [$0426].
    STA $0426
    STA CurSaveSlot             ; Reset CurSaveSlot.
    JSR ModeE_ResetVariables
    LDA #$01                    ; Make sure we stay updating.
    STA IsUpdatingMode
    JMP UpdateModeDSave_Sub2    ; Go to mode 0 submode 1.

@Idle:
    ; Handle idle time in mode $E.
    ;
    LDA CurSaveSlot
    CMP #$03
    BEQ :+                      ; If a slot is chosen,
    JSR ModeE_HandleDirections  ; then we can check the direction buttons.
:
    JSR UpdateModeEandF_Idle
    JSR ModeEandF_WriteNameCursorSpritePosition
    JSR ModeEandF_WriteCharBoardCursorSpritePosition
    JMP ModeE_HandleAOrB

UpdateModeFElimination:
    LDA ButtonsPressed
    CMP #$10
    BEQ :+                      ; If Start wasn't pressed,
    JMP UpdateModeEandF_Idle    ; Then go handle other buttons and idle time.

:
    ; Start was pressed.
    ;
    LDA CurSaveSlot
    CMP #$03
    BNE DeleteSlot              ; If a slot was chosen, then go delete it.
    LDA #$0E                    ; "End" was chosen. So, go to mode $E.
    STA GameMode
    LDA #$00
    STA IsUpdatingMode
    STA GameSubmode
ModeE_ResetVariables:
    ; Assumes that zero is passed in A.
    ;
    STA CharBoardIndex
    STA InitializedNameField
    STA NameCharOffset
    RTS

DeleteSlot:
    LDA #$08
    STA SampleRequest           ; TODO: ?
    LDY CurSaveSlot
    LDX SlotToBlankNameTransferBufEndOffset, Y
    ; Copy the appropriate transfer buf of a blank name for
    ; current slot to dynamic transfer buf.
    LDY #$04
@CopyBlankBuf:
    LDA DeletedSlotBlankNameTransferBuf, X
    STA DynTileBuf, Y
    DEX
    DEY
    BPL @CopyBlankBuf
    JSR FetchFileAAddressSet
    JSR FormatFileA
    JSR FetchProfileNameAddress
    LDY #$07                    ; Clear the name in save slot info.
@ClearName:
    LDA #$24
    STA ($0C), Y
    DEY
    BPL @ClearName
    RTS

ModeE_HandleDirections:
    LDA ButtonsDown
    AND #$0F                    ; Filter and keep direction buttons.
    BNE ModeE_HandleDirectionButton    ; If no button is down, then reset repeat state.
ResetButtonRepeatState:
    STA StillHoldingButton
    STA SubsequentButtonRepeat
    STA ButtonRepeatTimer
    RTS

ModeE_HandleDirectionButton:
    TAY
    LDA StillHoldingButton
    BNE @CheckSameButton        ; If we weren't holding a button last frame,
    STY HeldButton              ; Store current buttons down.
    INC StillHoldingButton      ; Now we definitely are holding a button.
@CheckSameButton:
    LDA ButtonsDown
    AND #$0F
    CMP HeldButton
    BEQ @CheckRepeat            ; If it's not the same button as before,
    LDA #$00                    ; then reset repeat state.
    JSR ResetButtonRepeatState
@CheckRepeat:
    LDA ButtonRepeatTimer
    BEQ @ChooseRepeatDelay      ; Once the repeat timer reaches zero, handle the direction button again.
    DEC ButtonRepeatTimer       ; Otherwise, only count down the timer.
    RTS

@ChooseRepeatDelay:
    ; If this is the first button press, then wait $10 frames
    ; to repeat; otherwise wait 8 frames.
    LDY #$08
    LDA SubsequentButtonRepeat
    BNE :+
    LDY #$10
:
    STY ButtonRepeatTimer
    LDA ButtonsDown
    AND #$0F
    CMP #$01
    BNE @Left
    ; Pressed Right.
    ;
    ; Increase CharBoardIndex [$041F] to put cursor at character to the right.
    ;
    INC CharBoardIndex
    LDA ObjX+1                  ; Move the char board cursor right one spot.
    CLC
    ADC #$10
    STA ObjX+1
    CMP #$E0
    BNE :+                      ; If still on the board, then go finish.
    LDA #$30                    ; Otherwise, move the cursor to the left end.
    STA ObjX+1
    LDX #$00                    ; Cycle down.
    JSR CycleCharBoardCursorY
    LDA ModeE_WrappedAroundBoardY
    BEQ :+                      ; If wrapped around to the top,
    LDA #$00                    ; then reset CharBoardIndex.
    STA CharBoardIndex
:
    JMP @FinishInput            ; Go finish.

@Left:
    CMP #$02
    BNE @Down
    ; Pressed Left.
    ;
    ; Decrease CharBoardIndex [$041F] to put cursor at character to the left.
    ;
    DEC CharBoardIndex
    LDA ObjX+1                  ; Move the char board cursor left one spot.
    SEC
    SBC #$10
    STA ObjX+1
    CMP #$20
    BNE :+                      ; If still on the board, then go finish.
    LDA #$D0                    ; Otherwise, move the cursor to the right end.
    STA ObjX+1
    LDX #$03                    ; Cycle up.
    JSR CycleCharBoardCursorY
    LDA ModeE_WrappedAroundBoardY
    BEQ :+                      ; If wrapped around to the bottom,
    LDA #$2B                    ; then set CharBoardIndex to the last index.
    STA CharBoardIndex
:
    JMP @FinishInput            ; Go finish.

@Down:
    CMP #$04
    BNE @Up
    ; Pressed Down.
    ;
    ; Increase CharBoardIndex [$041F] by $B (one row down).
    ;
    LDA CharBoardIndex
    CLC
    ADC #$0B
    STA CharBoardIndex
    LDX #$00                    ; Cycle down.
    JSR CycleCharBoardCursorY
    LDA ModeE_WrappedAroundBoardY
    BEQ @Finish                 ; If didn't wrap around, then go finish.
    LDA CharBoardIndex          ; Wrapped around. So, move to top row.
    SEC
    SBC #$2C
    STA CharBoardIndex
@Finish:
    JMP @FinishInput            ; Go finish.

@Up:
    CMP #$08
    BNE @Exit                   ; If no single direction was pressed, then return.
    ; Pressed Up.
    ;
    ; Decrease CharBoardIndex [$041F] by $B (one row up).
    ;
    LDA CharBoardIndex
    SEC
    SBC #$0B
    STA CharBoardIndex
    LDX #$03                    ; Cycle up.
    JSR CycleCharBoardCursorY
    LDA ModeE_WrappedAroundBoardY
    BEQ @FinishInput            ; If didn't wrap around, then go finish.
    LDA CharBoardIndex          ; Wrapped around. So, move to bottom row.
    CLC
    ADC #$2C
    STA CharBoardIndex
@FinishInput:
    LDA #$01
    STA SubsequentButtonRepeat
    STA Tune1Request            ; Request "selection changed" tune (same as rupee taken).
@Exit:
    RTS

; Params:
; X: 0 for down, 3 for up.
;
; Returns:
; ModeE_WrappedAroundBoardY [$042A]=1 if wrapped arounnd.
;
; Assume we don't wrap around.
CycleCharBoardCursorY:
    LDY #$00
    LDA ObjY+1                  ; Move the char board cursor Y one spot in given direction.
    CLC
    ADC ModeE_CharBoardYOffsetsAndBounds, X    ; TODO: Add $10 or -$10 ($F0), depending on X passed in (0 or 3).
    STA ObjY+1
    INX                         ; Look at boundaries.
    CMP ModeE_CharBoardYOffsetsAndBounds, X
    BNE @ReturnValue            ; If we didn't reach the boundary, then return Y=0.
    INX                         ; Set cursor Y to wrapped around position.
    LDA ModeE_CharBoardYOffsetsAndBounds, X
    STA ObjY+1
    INY                         ; Return ModeE_WrappedAroundBoardY [$042A]=1.
@ReturnValue:
    STY ModeE_WrappedAroundBoardY
LA10A_Exit:
    RTS

ModeE_HandleAOrB:
    LDA InitializedNameField
    ; If InitializedNameField [$0420] is set, then skip initializing
    ; the name field.
    BNE @CheckAB
    LDY CurSaveSlot
    CPY #$03
    BEQ LA10A_Exit              ; If at the "End" option, then return.
    ; Set NameCharOffset [$0421] to the offset of first char
    ; in the current slot's name.
    LDA SlotToNameOffset, Y
    STA NameCharOffset
    ; Get the offset of the end of the initial name character
    ; transfer record header for the current slot.
    LDX SlotToInitialNameCharTransferHeaderEndOffsets, Y
    LDY #$02                    ; Each transfer record header is 3 bytes.
@CopyHeaderTemplate:
    LDA SlotToInitialNameCharTransferHeaders, X
    STA NameInputCharBuf, Y     ; Copy a byte of transfer header for current slot to [$0422][Y].
    DEX
    DEY
    BPL @CopyHeaderTemplate
    INC InitializedNameField    ; Set InitializedNameField [$0420] to mark the name field initialized.
@CheckAB:
    ; At this point:
    ; - NameCharOffset [$0421] holds the offset of the first character in the save slot info name for the current slot.
    ;   - This will be changed as the player inputs characters.
    ; - [$0422] to [$0424] hold a transfer record header. The VRAM address points to the beginning of the appropriate name field in the nametable.
    ;   - This will be changed as the player inputs characters.
    ; - InitializedNameField [$0420] is set to 1.
    ;
    LDA ButtonsPressed
    AND #$C0
    BEQ @Exit                   ; If neither A nor B was pressed, then go finish.
    ; A or B was pressed.
    ;
    CMP #$80
    BNE @MoveCursor             ; If B was pressed, then go move the name cursor only.
    ; A was pressed.
    ;
    ; Request to play the character click tune (same as bomb set).
    LDY #$20
    STY Tune0Request
    LDY #$02                    ; Copy our char transfer record header (in [$0422-0424]) to dynamic transfer buf.
@CopyHeader:
    LDA NameInputCharBuf, Y
    STA DynTileBuf, Y
    DEY
    BPL @CopyHeader
    STY DynTileBuf+4            ; Write the end marker to dynamic transfer buf.
    LDX NameCharOffset
    LDY CharBoardIndex          ; CharBoardIndex in [$041F] will index into character map.
    LDA ModeE_CharMap, Y        ; Get the character that's highlighted.
    STA DynTileBuf+3            ; Write the chosen character to dynamic transfer buf.
    STA Names, X                ; Set the character in the name.
@MoveCursor:
    LDA ObjX                    ; Move name cursor right 8 pixels.
    CLC
    ADC #$08
    STA ObjX
    INC NameCharOffset          ; Increment NameCharOffset [$0421].
    INC NameInputCharBuf+1      ; Increment the low VRAM address where next char will go.
    ; If VRAM address still points inside the name field,
    ; then go finish.
    ;
    ; The idea is that each name field in nametable begins at
    ; an address ending in $E. For example, slot 0 has a name
    ; at VRAM addresses $20CE to $20D5.
    ;
    ; Once the $E becomes a 6, we've gone past the end of
    ; the name field.
    ;
    ; Keep in mind that [0423] is the second byte of the transfer
    ; record header.
    ;
    LDA NameInputCharBuf+1
    AND #$0F
    CMP #$06
    BNE @Exit
    ; The VRAM address now points outside the name field.
    ; So, wrap around to the beginning of the name field.
    ;
    ; For example, $20D6 -> $20CE.
    ;
    LDA NameInputCharBuf+1
    SEC
    SBC #$08
    STA NameInputCharBuf+1
    ; It also means that we went past the end of the save slot
    ; info name. Set the offset to the beginning of the name.
    LDY CurSaveSlot
    LDA SlotToNameOffset, Y
    STA NameCharOffset
    ; If the name cursor has gone past the end of the field,
    ; then wrap around.
    LDA ObjX
    CMP #$B0
    BNE @Exit
    LDA #$70
    STA ObjX
@Exit:
    JMP ModeE_SetNameCursorSpriteX    ; Go set the name cursor sprite X.

ModeEandF_SetUpCursorSprites:
    ; Copy almost 3 sprite records ($B bytes) to byte 1 of
    ; Sprites block. Only sprite 0 byte 0 is missing.
    ; These are the cursor sprites.
    LDY #$0A
@CopySprites:
    LDA ModeEandFCursorSprites, Y
    STA Sprites+1, Y
    DEY
    BPL @CopySprites
    LDY CurSaveSlot             ; Set the Y of the slot cursor sprite (#0) according to current save slot.
    LDA ModeEandFSlotCursorYs, Y
    STA ObjY
    STA Sprites
    LDA GameMode
    CMP #$0F
    ; There's more work in mode $E.
    ; The name cursor position is held in ObjX/ObjY[0].
    ; The char-board cursor position is held in ObjX/ObjY[1].
    BEQ @Exit
    LDA #$F3                    ; Use a heart tile for the slot cursor sprite (#0).
    STA Sprites+1
    ; Because the visible part of the cursor block sprite is
    ; in the bottom, move the name cursor's sprite 8 pixels
    ; above its ObjY.
    LDA ObjY
    SEC
    SBC #$08
    STA Sprites+4
    LDA #$70                    ; The base name cursor X is $70.
    STA ObjX
    LDA #$87                    ; The base char-board cursor Y is $87.
    STA ObjY+1
    LDA #$30                    ; The base char-board cursor X is $30.
    STA ObjX+1
@Exit:
    RTS

ModeEandF_WriteNameCursorSpritePosition:
    LDA ObjY
    CMP #$77                    ; If name cursor Y corresponds to a save slot,
    BNE @WriteCursorY           ; then go write the appropriate Y to name cursor sprite.
    LDA #$F8                    ; else hide name cursor.
    STA Sprites+4
    RTS

@WriteCursorY:
    LDA ObjY
    JSR ModifyFlashingCursorY   ; This returns the adjusted coordinate or $F8 to hide it.
    STY Sprites+4               ; Set name cursor sprite Y.
ModeE_SetNameCursorSpriteX:
    LDA ObjX
    STA Sprites+7               ; Set name cursor sprite X.
    RTS

ModeEandF_WriteCharBoardCursorSpritePosition:
    LDA ObjY
    CMP #$77                    ; If name cursor Y corresponds to a save slot,
    BNE @WriteCursorCoords      ; then go write the appropriate Y to char-board sprite.
    LDA #$F8                    ; else hide char-board sprite.
    STA Sprites+8
    RTS

@WriteCursorCoords:
    LDA ObjY+1
    JSR ModifyFlashingCursorY
    STY Sprites+8               ; Set char-board cursor sprite Y.
    LDA ObjX+1
    STA Sprites+11              ; Set char-board cursor sprite X.
    RTS

; Params:
; A: cursor Y
;
; Returns:
; Y: adjusted cursor Y, or $F8 to hide it
;
; Description:
; Adjust the Y coordinate to account for the visible part of
; block cursor being in the bottom half of sprite.
; Also, make the cursor flash.
;
ModifyFlashingCursorY:
    SEC
    SBC #$08
    TAY
    LDA FrameCounter            ; Every 8 frames, put the Y off screen.
    AND #$08
    BNE :+
    LDY #$F8
:
    RTS

UpdateModeEandF_Idle:
    LDA ButtonsPressed
    AND #$20
    BEQ @Exit                   ; If Select was not pressed, then return.
@ChangeSelection:
    LDA #$01                    ; Request to play the selection tune (same as rupee taken).
    STA Tune1Request
    INC CurSaveSlot             ; Choose the next slot.
    LDY CurSaveSlot
    CPY #$04
    BNE :+                      ; If went out of bounds, then wrap around.
    LDY #$00
    STY CurSaveSlot
:
    LDA ModeEandFSlotCursorYs, Y    ; Set sprite Y for new selection.
    STA Sprites
    LDA GameMode
    CMP #$0F
    BEQ @Exit                   ; If in mode $F, then return.
    LDA ObjY                    ; Move name cursor down $18 pixels.
    CLC
    ADC #$18
    STA ObjY
    CMP #$8F                    ; If we're past the "End" option,
    BNE :+
    LDA #$2F                    ; then wrap around.
    STA ObjY
:
    STA Sprites                 ; It seems that this should be Sprites+4.
    LDA #$70                    ; Name cursor X is $70.
    STA Sprites+7
    STA ObjX
    LDA #$00                    ; Reset InitializedNameField and NameCharOffset.
    STA InitializedNameField
    STA NameCharOffset
    LDY CurSaveSlot
    CPY #$03
    BEQ @Exit                   ; If selection is "End" option, then return.
    LDA IsSaveSlotActive, Y
    BNE @ChangeSelection        ; If the slot is not active, then cycle again.
@Exit:
    RTS

Mode1SlotLineTransferBuf:
    .BYTE $21, $09, $11, $24, $24, $24, $24, $24
    .BYTE $24, $24, $24, $62, $00, $00, $00, $00
    .BYTE $00, $00, $00, $00, $21, $32, $08, $00
    .BYTE $00, $00, $00, $00, $00, $00, $00, $FF

Mode1DeathCountsTransferBuf:
    .BYTE $21, $89, $03, $24, $24, $01, $21, $E9
    .BYTE $03, $24, $24, $01, $22, $49, $03, $24
    .BYTE $24, $01, $FF

LinkColors:
    .BYTE $29, $32, $16

InitMode1_Full:
    JSR TurnOffAllVideo
    LDA GameSubmode
    JSR TableJump
InitMode1_Full_JumpTable:
    .ADDR UpdateMode0Demo_Sub1
    .ADDR InitMode1_Sub1
    .ADDR InitMode1_Sub2
    .ADDR InitMode1_FillAndTransferSlotTiles
    .ADDR InitMode1_FillAndTransferSlotTiles
    .ADDR InitMode1_FillAndTransferSlotTiles
    .ADDR InitMode1_Sub6

UpdateMode0Demo_Sub1:
    ; For each save slot:
    ;   If file B is uncommitted and valid, then
    ;     Copy file B to file A (also marks file B committed)
    ;   If file A's static markers are wrong or file is invalid, then
    ;     Format file A
    ;
    ; TODO: This is also mode 1 submode 0 init.
    ;
    JSR TurnOffAllVideo
    LDA #$00                    ; Reset CurSaveSlot.
    STA CurSaveSlot             ; For every save file B (3):
@LoopSlot:
    LDY CurSaveSlot
    LDA IsSaveFileBCommitted, Y
    BNE @CheckFileA
    JSR FetchFileBAddressSet
    JSR CalculateFileBChecksum
    LDA CurSaveSlot
    ASL
    TAY
    LDA FileBChecksums, Y       ; Does the checksum match?
    CMP $CE
    BNE @CheckFileA
    INY
    LDA FileBChecksums, Y
    CMP $CF
    BNE @CheckFileA             ; If not, then go check save file A.
    JSR CopyFileBToFileA
    JMP @NextSlot               ; Go process the next slot.

@CheckFileA:
    ; Calculate the checksum of the save file.
    ; It's only a sum.
    JSR FetchFileAAddressSet
    JSR CalculateFileAChecksum
    LDY CurSaveSlot
    LDA SaveFileOpenMarkers, Y  ; Are the static markers intact?
    CMP #$5A
    BNE @FormatA
    LDA SaveFileCloseMarkers, Y
    CMP #$A5
    BNE @FormatA                ; If not, then go format the file.
    LDA CurSaveSlot
    ASL
    TAY
    LDA FileAChecksums, Y       ; Does the checksum match?
    CMP $0E
    BNE @FormatA
    INY
    LDA FileAChecksums, Y
    CMP $0F
    BEQ @NextSlot               ; If not, then format the file.
@FormatA:
    JSR FetchFileAAddressSet
    JSR FormatFileA
@NextSlot:
    INC CurSaveSlot             ; Advance to the next save slot.
    LDA CurSaveSlot
    CMP #$03
    BNE @LoopSlot
    INC GameSubmode             ; After checking every file, go to the next submode.
    RTS

; Returns:
; [0F:0E]: checksum
;
CalculateFileAChecksum:
    LDA #$00                    ; Reset the sum.
    STA $0E
    STA $0F
    LDY #$07                    ; Sum the name (8 bytes).
@SumName:
    LDA ($04), Y
    JSR AddATo0F0E
    DEY
    BPL @SumName
    LDY #$27                    ; Add the Items block ($28 bytes) to [$0F:0E].
@SumItems:
    LDA ($00), Y
    JSR AddATo0F0E
    DEY
    BPL @SumItems
    LDA #$80                    ; Will count $180 with [01:00].
    STA $01
    LDA #$01
    STA $00
    LDY #$00                    ; Add World Flags ($180 bytes) to [$0F:0E].
@SumWorldFlags:
    LDA ($02), Y
    JSR AddATo0F0E
    INC $02
    BNE :+
    INC $03
:
    DEC $01
    BNE @SumWorldFlags
    DEC $00
    LDA $00
    BPL @SumWorldFlags
    LDA ($06), Y                ; IsSaveSlotActive
    JSR AddATo0F0E
    LDA ($08), Y                ; TODO: Add byte at [[$08:09]] to [$0F:0E].
    JSR AddATo0F0E
    LDA ($0A), Y                ; DeathCount
    JSR AddATo0F0E
    LDA ($0C), Y                ; QuestNumber
AddATo0F0E:
    CLC
    ADC $0F
    STA $0F
    LDA $0E
    ADC #$00
    STA $0E
    RTS

FormatFileA:
    LDY #$07
    LDA #$24                    ; Make the name 8 spaces.
@ClearName:
    STA ($04), Y
    DEY
    BPL @ClearName
    LDY #$27                    ; Reset the file's Items block.
    LDA #$00
@ClearItems:
    STA ($00), Y
    DEY
    BPL @ClearItems
    LDA #$80                    ; Will count $180 with [01:00].
    STA $01
    LDA #$01
    STA $00
    LDY #$00                    ; Reset World Flags ($180 bytes) at [$02:03].
@ClearWorldFlags:
    LDA #$00
    STA ($02), Y
    INC $02
    BNE :+
    INC $03
:
    DEC $01
    BNE @ClearWorldFlags
    DEC $00
    LDA $00
    BPL @ClearWorldFlags
    LDA #$00
    STA ($06), Y                ; Reset the file's IsSaveSlotActive.
    STA ($08), Y                ; TODO: Reset byte at [[$08:09]].
    STA ($0A), Y                ; Reset the file's DeathCount.
    STA ($0C), Y                ; Reset the file's QuestNumber.
    JSR FetchFileAAddressSet
    JSR CalculateFileAChecksum
    LDY CurSaveSlot
    ; Be proactive and reset these values in save slot info.
    ;
    LDA #$00
    STA IsSaveSlotActive, Y
    STA QuestNumbers, Y
    STA DeathCounts, Y
    ; Since file A is in a good state, we don't care about file B.
    ; Treat it as committed.
    LDA #$FF
    STA IsSaveFileBCommitted, Y
    LDA #$5A                    ; Store the static markers in the save file.
    STA SaveFileOpenMarkers, Y
    LDA #$A5
    STA SaveFileCloseMarkers, Y
    TYA                         ; Store the checksum in the save file.
    ASL
    TAY
    LDA $0E
    STA FileAChecksums, Y
    INY
    LDA $0F
    STA FileAChecksums, Y
    RTS

CalculateAndStoreFileBChecksumUncommitted:
    JSR CalculateFileBChecksum
    LDY CurSaveSlot
    LDA #$00                    ; Now file B is valid, but uncommitted.
    STA IsSaveFileBCommitted, Y
    TYA
    ASL
    TAY
    LDA $CE
    STA FileBChecksums, Y
    INY
    LDA $CF
    STA FileBChecksums, Y
    RTS

; Returns:
; [CF:CE]: checksum
;
CalculateFileBChecksum:
    LDA #$00                    ; Reset the sum.
    STA $CE
    STA $CF
    LDY #$07                    ; Sum the name (8 bytes).
@SumName:
    LDA ($C4), Y
    JSR AddAToCFCE
    DEY
    BPL @SumName
    LDY #$27                    ; Sum the $28 bytes of the file's Items block with [$CF:CE].
@SumItems:
    LDA ($C0), Y
    JSR AddAToCFCE
    DEY
    BPL @SumItems
    LDA #$80                    ; Will count $180 with [C1:C0].
    STA $C1
    LDA #$01
    STA $C0
    LDY #$00                    ; Add World Flags ($180 bytes) to [CF:CE].
@SumWorldFlags:
    LDA ($C2), Y
    JSR AddAToCFCE
    INC $C2
    BNE :+
    INC $C3
:
    DEC $C1
    BNE @SumWorldFlags
    DEC $C0
    LDA $C0
    BPL @SumWorldFlags
    LDA ($C6), Y                ; Add IsSaveSlotActive byte to [$CF:CE].
    JSR AddAToCFCE
    LDA ($C8), Y                ; Add DeathCount byte to [$CF:CE].
    JSR AddAToCFCE
    LDA ($CA), Y                ; TODO: Add byte at [[$CA:CB]] to [$CF:CE].
    JSR AddAToCFCE
    LDA ($CC), Y                ; Add byte QuestNumber to [$CF:CE].
AddAToCFCE:
    CLC
    ADC $CF
    STA $CF
    LDA $CE
    ADC #$00
    STA $CE
    RTS

FormatFileB:
    LDY #$07                    ; Clear the name (to all spaces).
    LDA #$24
@ClearName:
    STA ($C4), Y
    DEY
    BPL @ClearName
    LDY #$27                    ; Clear $28 bytes of the Items block in file.
    LDA #$00
@ClearItems:
    STA ($C0), Y
    DEY
    BPL @ClearItems
    LDA #$80                    ; Will count $180 with [C1:C0].
    STA $C1
    LDA #$01
    STA $C0
    LDY #$00                    ; Clear $180 bytes of World flags.
@ClearWorldFlags:
    LDA #$00
    STA ($C2), Y
    INC $C2
    BNE :+
    INC $C3
:
    DEC $C1
    BNE @ClearWorldFlags
    DEC $C0
    LDA $C0
    BPL @ClearWorldFlags
    LDA #$00                    ; Clear individual bytes.
    STA ($C6), Y                ; IsSaveSlotActive
    STA ($C8), Y                ; TODO: ?
    STA ($CA), Y                ; DeathCount
    STA ($CC), Y                ; QuestNumber
    JSR FetchFileBAddressSet
    JSR CalculateFileBChecksum  ; Leave the checksum at [$CF:CE].
    LDA #$FF
    LDY CurSaveSlot
    STA IsSaveFileBCommitted, Y ; Mark this file B committed.
    RTS

InitMode1_Sub1:
    ; Reset CurSaveSlot. Doing this is useful for the
    ; work done here, and for the sequence of submodes
    ; that generate and transfer save slot graphics.
    LDA #$00
    STA CurSaveSlot
    JSR FetchFileAAddressSet
    LDY #$0B                    ; The ring is at this offset in Items block.
    LDX #$00                    ; The offset to the byte we want to change in a palette.
@LoopSlot:
    TYA                         ; Save ring offset in Items block of current slot.
    PHA
    LDA ($00), Y                ; Get the ring inventory value.
    TAY
    LDA LinkColors, Y           ; Get the color for that ring level.
    ; Put the color in the byte 2 of row for current slot in
    ; sprite palette that will be transferred.
    STA MenuPalettesTransferBuf+20, X
    PLA                         ; Restore ring offset.
    CLC
    ADC #$28                    ; Point to the ring in the next save slot.
    TAY
    TXA
    CLC
    ADC #$04                    ; Point one row down in palette.
    TAX
    CPX #$0C
    BCC @LoopSlot               ; 3 times.
    JSR ResetRoomTileObjInfo    ; TODO: ?
    LDA #$12                    ; Cue transfer of menu palettes.
    STA TileBufSelector
    INC GameSubmode
    JSR TurnOffVideoAndClearArtifacts
    LDY #$04
    LDA #$00
    STA $0529                   ; TODO: $529?
:
    STA RoomHistory, Y
    DEY
    BPL :-
    RTS

InitMode1_Sub2:
    LDA #$14
    STA TileBufSelector
    INC GameSubmode
    RTS

InitMode1_FillAndTransferSlotTiles:
    ; Copy the mode 1 line transfer buf template to
    ; dynamic transfer buf.
    LDY #$1F
@CopySlotLineTemplate:
    LDA Mode1SlotLineTransferBuf, Y
    STA DynTileBuf, Y
    DEY
    BPL @CopySlotLineTemplate
    LDY CurSaveSlot             ; The first time, this is reset in a previous submode.
@OffsetSlotLineAddr:
    LDA DynTileBuf+1            ; Add ($60 * CurSaveSlot) to the PPU address of each record in the buffer.
    CLC
    ADC #$60
    STA DynTileBuf+1
    LDA DynTileBuf+21
    CLC
    ADC #$60
    STA DynTileBuf+21
    LDA DynTileBuf
    ADC #$00
    STA DynTileBuf
    STA DynTileBuf+20
    DEY
    BPL @OffsetSlotLineAddr
    ; Copy name of current slot to beginning of payload
    ; of first record in dynamic transfer buf.
    LDA CurSaveSlot
    ASL
    ASL
    ASL
    TAX
    LDY #$03
@CopyName:
    LDA Names, X
    STA DynTileBuf, Y
    INX
    INY
    CPY #$0B
    BNE @CopyName
    ; Copy heart values from current save slot info
    ; to [$0E:0F] for formatting.
    LDA CurSaveSlot
    ASL
    TAY
    LDA SaveSlotHearts, Y
    STA $0E
    INY
    LDA SaveSlotHearts, Y
    STA $0F
    LDY #$0C
    JSR FormatHeartsInTextBuf
    INC CurSaveSlot             ; Next time, process the next slot.
    INC GameSubmode
    RTS

InitMode1_Sub6:
    ; Copy the mode 1 death counts transfer buf template to
    ; dynamic transfer buf.
    LDY #$12
@CopyTemplate:
    LDA Mode1DeathCountsTransferBuf, Y
    STA DynTileBuf, Y
    DEY
    BPL @CopyTemplate
    LDA #$00
    STA $0A                     ; The save slot.
    LDA #$03
    STA $0B                     ; The offset where the string will be written in dynamic transfer record.
@LoopSlot:
    LDY $0A
    LDA DeathCounts, Y
    JSR FormatDecimalByte
    LDX $0B
    LDA $01
    STA DynTileBuf, X           ; Emit the first character.
    LDA $02
    STA DynTileBuf+1, X         ; Emit the second character.
    LDA $03
    BNE @EmitChar               ; If the third character isn't '0', then go emit it.
    ; If the first or second characters weren't spaces,
    ; then go ahead and emit the '0'.
    LDA $01
    CMP #$24
    BNE @Emit0
    LDA $02
    CMP #$24
    BNE @Emit0
    LDY $0A
    LDA IsSaveSlotActive, Y
    BNE @Emit0                  ; If this slot isn't active,
    LDA #$24
    BNE @EmitChar               ; Go emit a space.
@Emit0:
    LDA #$00                    ; Else, emit a '0'.
@EmitChar:
    STA DynTileBuf+2, X
    TXA                         ; Advance the offset by 6,
    CLC                         ; to the starting position in the next transfer record.
    ADC #$06
    STA $0B
    INC $0A                     ; Increment the save slot.
    LDA $0A
    CMP #$03
    BNE @LoopSlot               ; Go process the next slot, if not done.
    LDY #$FF                    ; Find the first save slot that's active.
    STY CurSaveSlot
    STY CaveSourceRoomId        ; Use room ID $FF, so that mode 3 "Unfurl" will put the player in the room at StartRoomId.
@FindActiveSlot:
    INY
    INC CurSaveSlot
    LDA IsSaveSlotActive, Y
    BEQ @FindActiveSlot
    LDA #$00
    STA GameSubmode
    INC IsUpdatingMode          ; Start updating.
    RTS

Mode1CursorSpriteTriplet:
    .BYTE $F3, $03, $28

Mode1CursorSpriteYs:
    .BYTE $5C, $74, $8C, $A8, $B8

UpdateMode1Menu:
    LDA GameSubmode
    JSR TableJump
UpdateMode1Menu_JumpTable:
    .ADDR UpdateMode1Menu_Sub0
    .ADDR UpdateMode1Menu_Sub1

UpdateMode1Menu_Sub0:
    LDA ButtonsPressed
    AND #$10
    BNE @Exit                   ; If Start was pressed, the go to the next submode.
    LDA ButtonsPressed
    AND #$20
    BEQ :+                      ; If Select was pressed,
@ChangeSelection:
    LDA #$01                    ; Request to play the selection change SFX (same as rupee taken).
    STA Tune1Request
    INC CurSaveSlot             ; Select the next slot or option.
    LDA CurSaveSlot
    CMP #$05
    BNE :+                      ; If the index is out of bounds,
    LDA #$00                    ; then wrap around to zero.
    STA CurSaveSlot
:
    LDY CurSaveSlot
    ; Since CurSaveSlot is used to index menu choices, which
    ; includes register and eliminate in addition to save slots;
    ; the IsSaveSlotActive array includes elements at the end
    ; for these options.
    LDA IsSaveSlotActive, Y
    BEQ @ChangeSelection        ; If option or save slot isn't active, then go advance the index.
    LDY #$02                    ; Write the tile, attributes, and X for the sprite record.
@WriteCursorSprite:
    LDA Mode1CursorSpriteTriplet, Y
    STA Sprites+1, Y
    DEY
    BPL @WriteCursorSprite
    LDY CurSaveSlot
    LDA Mode1CursorSpriteYs, Y
    STA Sprites                 ; Set the sprite Y for current option.
    LDA #$58                    ; The base Y of Link sprites is $58.
    STA $01
    LDA #$30                    ; The X coordinate of Link sprites is $30.
    STA $00
    JMP Mode1_WriteLinkSprites

@Exit:
    INC GameSubmode
    RTS

UpdateMode1Menu_Sub1:
    LDA #$00
    STA Tune1
    LDA #$00
    STA CurLevel                ; Begin in OW.
    STA SelectedItemSlot        ; Reset item index.
    JSR TurnOffAllVideo
    LDA CurSaveSlot
    CMP #$03
    BCC @ChoseSlot              ; If not a save slot,
    LDA CurSaveSlot             ; Go to the mode for each option (register, eliminate).
    CLC
    ADC #$0B
    STA GameMode
    JMP EndGameMode

@ChoseSlot:
    ; The player chose a save slot.
    ;
    JSR TurnOffAllVideo
    JSR FetchFileAAddressSet
    LDY #$27                    ; Copy Items block from file A to profile.
@CopyItems:
    LDA ($00), Y
    STA Items, Y
    DEY
    BPL @CopyItems
    LDA #$00
    STA SwordBlocked
    STA ObjState                ; Reset player state.
    STA InvClock                ; Reset clock item.
    ; Copy WorldFlags block from file A to profile.
    ;
    TAY
@CopyWorldFlags:
    LDA ($02), Y
    STA ($0E), Y
    INC $02
    BNE :+
    INC $03
:
    INC $0E
    BNE :+
    INC $0F
:
    LDA $0E
    CMP #$FF
    BNE @CopyWorldFlags
    LDA $0F
    CMP #$07
    BNE @CopyWorldFlags         ; If not done (destination address < $07FF), then copy more.
    JMP GoToNextMode

Mode1_WriteLinkSprites:
    LDA #$08                    ; Put the left tile of Link in [$02].
    STA $02
    LDA #$0A                    ; Put the right tile of Link in [$03].
    STA $03
    ; [$04] is used as an index and sprite attributes.
    ; It takes on values 0 to 2.
    ; As an index, it represents a save slot.
    ; As attributes, these values represent palettes 4 to 6.
    LDA #$00
    JSR Anim_SetSpriteDescriptorAttributes
    ; We want to start with sprite 4 (offset $10).
    ; Begin with 8, so that the loop will add 8 and
    ; put us at the offset we want.
    LDA #$08
    STA LeftSpriteOffset
@LoopSlot:
    LDA LeftSpriteOffset
    CLC
    ADC #$08                    ; Each Link is two sprites (8 bytes).
    STA LeftSpriteOffset
    CLC
    ADC #$04                    ; The right side is the next sprite.
    STA RightSpriteOffset
    LDA #$01                    ; This object has two sides (sprites).
    STA $07
    LDA #$08                    ; The two sides are 8 pixels apart.
    STA $0A
    LDA $00                     ; Save the X coordinate.
    PHA
    JSR Anim_WriteSpritePairNotFlashing    ; We didn't set [$08]. But we don't care if CurSpriteIndex is cycled.
    TAX
    PLA                         ; Restore the X coordinate.
    STA $00
    LDY $04                     ; Use [$04] as a save slot number.
    LDA QuestNumbers, Y
    BEQ @NextSlot               ; If in first quest, then skip the second quest marker.
    LDY LeftSpriteOffset
    LDA $01                     ; Put the sword 3 pixels below Link.
    SEC
    SBC #$03
    STA Sprites+128, Y          ; Use sprites $20 to $23 for the swords.
    LDA #$20                    ; Use sword tiles.
    STA Sprites+129, Y
    LDA #$03                    ; Use palette 7.
    STA Sprites+130, Y
    LDA $00                     ; Put the sword $C pixels to the right of Link.
    CLC
    ADC #$0C
    STA Sprites+131, Y
@NextSlot:
    LDA $01                     ; Move Y down for the next slot.
    CLC
    ADC #$18
    STA $01
    INC $04                     ; Look at the next slot, and use the next palette.
    INC $05
    LDA $04
    CMP #$03
    BNE @LoopSlot               ; If we're not done, then look at the next slot.
    RTS

SaveSlotHeartsAddrsLo:
    .LOBYTES SaveSlotHearts+0
    .LOBYTES SaveSlotHearts+2
    .LOBYTES SaveSlotHearts+4

SaveSlotHeartsAddrsHi:
    .HIBYTES SaveSlotHearts+0
    .HIBYTES SaveSlotHearts+2
    .HIBYTES SaveSlotHearts+4

ProfileNameAddrsLo:
    .LOBYTES Names+0
    .LOBYTES Names+8
    .LOBYTES Names+16

ProfileNameAddrsHi:
    .HIBYTES Names+0
    .HIBYTES Names+8
    .HIBYTES Names+16

UpdateModeDSave:
    LDA GameSubmode
    JSR TableJump
UpdateModeDSave_JumpTable:
    .ADDR UpdateModeDSave_Sub0
    .ADDR UpdateModeDSave_Sub1
    .ADDR UpdateModeDSave_Sub2

UpdateModeDSave_Sub0:
    ; Initialize file B, and copy profile to it.
    ; Calculate and store file B checksum.
    ; Mark file B uncommitted.
    ;
    JSR FetchFileBAddressSet
    JSR FormatFileB
    JSR FetchFileBAddressSet
    JSR FetchFileAAddressSet    ; TODO: I think this is called only for $067F put in [$0E:0F].
    LDY #$27                    ; Copy Items block ($28 bytes) from profile to file B.
@CopyItems:
    LDA Items, Y
    STA ($C0), Y
    DEY
    BPL @CopyItems
    LDY CurSaveSlot
    LDA DeathCounts, Y          ; Copy death count from profile to file B.
    LDY #$00
    STA ($CA), Y
    LDA #$01                    ; We're saving, so make sure the current slot is active.
    STA ($C6), Y
    LDY CurSaveSlot
    STA IsSaveSlotActive, Y     ; Also set the slot active in the save slot info.
    LDA QuestNumbers, Y         ; Copy quest number from profile to file B.
    LDY #$00
    STA ($CC), Y
    JSR FetchProfileNameAddress
    LDY #$07                    ; Copy name from save slot info to file B.
@CopyName:
    LDA ($0C), Y
    STA ($C4), Y
    DEY
    BPL @CopyName
    LDA HeartValues             ; Put in [$0A] a full hearts value for the profile's heart containers.
    AND #$F0
    PHA
    LSR
    LSR
    LSR
    LSR
    STA $0A
    PLA
    ORA $0A
    STA HeartValues
    LDA #$FF                    ; Completely fill the hearts.
    STA HeartPartial
    JSR StoreSaveSlotHearts
    LDY #$00                    ; Copy World Flags ($180 bytes) from profile to file B.
@CopyWorldFlags:
    LDA ($0E), Y
    STA ($C2), Y
    INC $C2
    BNE :+
    INC $C3
:
    INC $0E
    BNE :+
    INC $0F
:
    LDA $0E
    CMP #$FF
    BNE @CopyWorldFlags
    LDA $0F
    CMP #$07
    BNE @CopyWorldFlags
    JSR FetchFileBAddressSet
    JSR CalculateAndStoreFileBChecksumUncommitted
    INC GameSubmode             ; Go to the next submode.
    RTS

UpdateModeDSave_Sub1:
    LDY CurSaveSlot
    LDA IsSaveFileBCommitted, Y
    BNE @IncSubmode
    JSR FetchFileBAddressSet
    JSR CalculateFileBChecksum
    LDA CurSaveSlot
    ASL
    TAY
    LDA FileBChecksums, Y
    CMP $CE
    BNE @DiscardFileB
    INY
    LDA FileBChecksums, Y
    CMP $CF
    BNE @DiscardFileB
    JSR CopyFileBToFileA        ; The checksum matches, so commit and copy file B to A.
@IncSubmode:
    INC GameSubmode
    RTS

@DiscardFileB:
    ; Discard file B, because it couldn't be validated.
    ;
    LDY CurSaveSlot
    LDA #$FF
    STA IsSaveFileBCommitted, Y
    INC GameSubmode
    RTS

CopyFileBToFileA:
    LDY CurSaveSlot
    LDA #$00                    ; Reset the save file markers.
    STA SaveFileOpenMarkers, Y
    STA SaveFileCloseMarkers, Y
    TYA                         ; Reset the checksum.
    ASL
    TAY
    LDA #$00
    STA FileAChecksums, Y
    INY
    STA FileAChecksums, Y
    JSR FetchFileBAddressSet
    JSR FetchFileAAddressSet    ; TODO: This puts $067F in [$0E:0F].
    LDY #$27                    ; Copy Items block ($28 bytes) from file B to file A.
@CopyItems:
    LDA ($C0), Y
    STA ($00), Y
    DEY
    BPL @CopyItems
    LDY #$00                    ; Copy these individual bytes from file B to file A.
    LDA ($C6), Y                ; IsSaveSlotActive
    STA ($06), Y
    LDA ($C8), Y                ; TODO: ?
    STA ($08), Y
    LDA ($CA), Y                ; DeathCount
    STA ($0A), Y
    LDA ($CC), Y                ; QuestNumber
    STA ($0C), Y
    LDA ($06), Y                ; Push IsSaveSlotActive from file A to help copy it to save slot info.
    PHA
    LDA ($0A), Y                ; Push death count from file A to help copy it to save slot info.
    PHA
    LDA ($0C), Y                ; Push quest number from file A to help copy it to save slot info.
    PHA
    LDY CurSaveSlot
    PLA                         ; Finish copying quest number from file A to save slot info.
    STA QuestNumbers, Y
    PLA                         ; Finish copying death count from file A to save slot info.
    STA DeathCounts, Y
    PLA                         ; Finish copying IsSaveSlotActive  from file A to save slot info.
    STA IsSaveSlotActive, Y
    LDY #$07                    ; Copy the name from file B to file A.
@CopyName:
    LDA ($C4), Y
    STA ($04), Y
    DEY
    BPL @CopyName
    ; Copy World Flags ($180 bytes) file B to file A.
    ; It counts up from what's in [$0E:0F] ($067F) to $07FF.
    LDY #$00
@CopyWorldFlags:
    LDA ($C2), Y
    STA ($02), Y
    INC $02
    BNE :+
    INC $03
:
    INC $C2
    BNE :+
    INC $C3
:
    INC $0E
    BNE :+
    INC $0F
:
    LDA $0E
    CMP #$FF
    BNE @CopyWorldFlags
    LDA $0F
    CMP #$07
    BNE @CopyWorldFlags
    LDY CurSaveSlot
    LDA #$5A                    ; Write the save file markers.
    STA SaveFileOpenMarkers, Y
    LDA #$A5
    STA SaveFileCloseMarkers, Y
    TYA                         ; Copy the checksum from file B to file A.
    ASL
    TAY
    LDA FileBChecksums, Y
    STA FileAChecksums, Y
    INY
    LDA FileBChecksums, Y
    STA FileAChecksums, Y
    LDY CurSaveSlot
    LDA #$FF                    ; File B has been committed.
    STA IsSaveFileBCommitted, Y
    RTS

UpdateModeDSave_Sub2:
    LDA #$00                    ; Go to mode 0 submode 1. Keep it updating.
    STA GameMode
    LDA #$01
    STA GameSubmode
    RTS

; Returns:
; [0C:0D]: save slot name pointer
;
FetchProfileNameAddress:
    LDY CurSaveSlot
    LDA ProfileNameAddrsLo, Y
    STA $0C
    LDA ProfileNameAddrsHi, Y
    STA $0D
    RTS

StoreSaveSlotHearts:
    LDY CurSaveSlot
    LDA SaveSlotHeartsAddrsLo, Y
    STA $0C
    LDA SaveSlotHeartsAddrsHi, Y
    STA $0D
    LDY #$01                    ; TODO: Copy HeartsValue and HeartsPartial to set B.
@CopyHearts:
    LDA HeartValues, Y
    STA ($0C), Y
    DEY
    BPL @CopyHearts
    RTS

; Unknown block
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

InitMode13_Full:
    LDA GameSubmode
    JSR TableJump
InitMode13_Full_JumpTable:
    .ADDR InitMode13_Sub0
    .ADDR InitMode13_Sub1
    .ADDR InitMode13_Sub2
    .ADDR InitMode13_Sub3
    .ADDR InitMode13_Sub4

InitMode13_Sub0:
    JSR UpdateEndGameCurtainEffect
    LDA GameSubmode
    BEQ LA958_Exit
    JSR HideAllSprites
    JSR Link_EndMoveAndDraw
    LDX #$01                    ; Zelda is in object slot 1.
    JMP Person_Draw

UpdateEndGameCurtainEffect:
    LDA ObjTimer
    BNE @Exit
    LDA Song
    BNE @Exit
    JSR UpdateWorldCurtainEffect_Bank2
    ; When the right curtain edge reaches the middle (< $11),
    ; go to the next submode.
    ;
    LDA ObjX+12
    CMP #$11
    BCS @Exit
    ; TODO: Why set the timer?
    ;
    LDA #$80
    STA ObjTimer
    INC GameSubmode
@Exit:
    RTS

PlayAreaAttr0TransferBuf:
    .BYTE $23, $D8, $68, $00, $FF

InitMode13_Sub1:
    LDY #$04
:
    LDA PlayAreaAttr0TransferBuf, Y
    STA DynTileBuf, Y
    DEY
    BPL :-
    ; Point to the front of the first textbox line,
    ; and reset the current character index.
    ;
    LDA #$A4
    STA TextboxCharPtr
    LDA #$00
    STA TextboxCharIndex
    STA ObjState+1
    INC GameSubmode
LA958_Exit:
    RTS

ThanksText:
    .BYTE $1D, $11, $0A, $17, $14, $1C, $24, $15
    .BYTE $12, $17, $14, $28, $22, $18, $1E, $2A
    .BYTE $1B, $8E, $64, $1D, $11, $0E, $24, $11
    .BYTE $0E, $1B, $18, $24, $18, $0F, $24, $11
    .BYTE $22, $1B, $1E, $15, $0E, $EC

InitMode13_Sub2:
    JSR UpdateZeldaTextbox
    LDA ObjState+1
    BEQ :+
    ; Set a delay of $50 frames in the next submode.
    ;
    LDA #$50
    STA ObjTimer+1
    INC GameSubmode
:
    RTS

ThanksTextboxCharTransferRecTemplate:
    .BYTE $21, $A4, $01, $24, $FF

ThanksTextboxLineAddrsLo:
    .BYTE $C4, $E4, $A4

; Returns:
; ObjState[1]: 0 if still updating
;
UpdateZeldaTextbox:
    JSR Link_EndMoveAndDraw
    ; If Zelda's timer has not expired, then return.
    ;
    LDA ObjTimer+1
    BNE LA9F4_Exit
    ; Set the timer to wait 6 frames after the next character about
    ; to be shown.
    ;
    LDA #$06
    STA ObjTimer+1
    ; Copy the 5 bytes of the textbox character transfer record template
    ; to the dynamic transfer buf.
    ;
    LDY #$04
:
    LDA ThanksTextboxCharTransferRecTemplate, Y
    STA DynTileBuf, Y
    DEY
    BPL :-
:
    ; Replace the low byte of the VRAM address with the one
    ; where the next character should be written.
    ;
    LDA TextboxCharPtr
    STA DynTileBuf+1
    ; Increment the low VRAM address for the next character.
    ;
    INC TextboxCharPtr
    LDA #$59
    STA $00
    LDA #$A9
    STA $01
    ; Load the person text current character index.
    ;
    LDY TextboxCharIndex
    ; Increment the index variable to point to the next character
    ; for the next time.
    ;
    INC TextboxCharIndex
    ; Get the current character.
    ;
    LDA ($00), Y
    ; If the character is $25, then it's a special space. It will still
    ; take up space, but will not take time to show -- meaning that
    ; we'll go look up the next character to transfer.
    ;
    AND #$3F
    CMP #$25
    BEQ :-
    ; We have a non-space character. Put it in the transfer record.
    ;
    STA DynTileBuf+3
    ; Play the "heart taken/character" tune.
    ;
    LDA #$10
    STA Tune0Request
    ; If the high 2 bits of character element = 0, then return.
    ;
    LDA ($00), Y
    AND #$C0
    BEQ LA9F4_Exit
    ; Determine an index based on the high 2 bits of the character element:
    ;   $80: 0
    ;   $40: 1
    ;   $C0: 2
    ;
    LDY #$02
    CMP #$C0
    BEQ :+
    DEY
    CMP #$40
    BEQ :+
    DEY
:
    ; The index chooses the low VRAM address of the start
    ; of another line:
    ;   0: $C4: front of the second line
    ;   1: $E4: front of the third line
    ;   2: $A4: front of the first line
    ;
    LDA ThanksTextboxLineAddrsLo, Y
    STA TextboxCharPtr
    ; If index = 2, then we've reached the end of the text,
    ; and low VRAM address is moved to the front of the first line.
    ; So, advance the state of the person object, and unhalt Link.
    ;
    CPY #$02
    BNE LA9F4_Exit
    INC ObjState+1
    LDA #$00
    STA ObjState
LA9F4_Exit:
    RTS

InitMode13_Sub3:
    LDA ObjTimer+1
    BNE LA9F4_Exit
    JSR SilenceAllSound
    INC GameSubmode
    RTS

InitMode13_Sub4:
    LDA #$08
    STA CreditsTileOffset
    JSR BeginUpdateMode
    STA PeaceCharDelayCounter
    STA PeaceCharIndex
    JMP HideAllSprites

UpdateMode13WinGame:
    LDA GameSubmode
    JSR TableJump
UpdateMode13WinGame_JumpTable:
    .ADDR UpdateMode13WinGame_Sub0_Flash
    .ADDR UpdateMode13WinGame_Sub1
    .ADDR UpdateMode13WinGame_Sub1
    .ADDR UpdateMode13WinGame_Sub3
    .ADDR UpdateMode13WinGame_Sub4

EndingFlashColors:
    .BYTE $0F, $12, $16, $2A

UpdateMode13WinGame_Sub0_Flash:
    JSR HideAllSprites
    INC ItemLiftTimer
    LDA ItemLiftTimer
    CMP #$C0
    BEQ @AdvanceSubmode
    JSR DrawLinkZeldaTriforces
@ChangePalette:
    LDX ItemLiftTimer
    ; Don't flash until $40 frames have passed.
    ;
    CPX #$40
    BCC @Exit
    ; Copy the level palette transfer buf.
    ;
    LDY #$23
:
    LDA LevelInfo_PalettesTransferBuf, Y
    STA DynTileBuf, Y
    DEY
    BPL :-
    ; Use (timer MOD 4) as an index to look up a color.
    ;
    TXA
    AND #$03
    TAX
    ; Change element 0 of palette 4 in buffer to change
    ; the background color.
    ;
    LDA EndingFlashColors, X
    STA DynTileBuf+19
@Exit:
    RTS

@AdvanceSubmode:
    ; Play the ending song.
    ;
    LDA #$10
    STA SongRequest
    ; Wait $40 frames at the beginning of the next mode
    ; before showing text.
    ;
    LDA #$40
    STA ObjTimer
    ; Set a long timer of $40 ($280 frames) for the whole duration
    ; of the next submode.
    ;
    LDA #$40
    STA EndingFlashLongTimer
    INC GameSubmode
    JMP @ChangePalette

DrawLinkZeldaTriforces:
    ; The triforce over Link goes in the room object slot $13.
    ; Set its location $10 pixels above Link.
    ;
    LDA ObjX
    STA ObjX+19
    LDA ObjY
    SEC
    SBC #$10
    STA ObjY+19
    ; Draw Link.
    ;
    LDX #$00
    JSR Anim_FetchObjPosForSpriteDescriptor
    JSR Anim_SetSpriteDescriptorAttributes
    STA $0C
    LDA #$48
    STA LeftSpriteOffset
    LDA #$4C
    STA RightSpriteOffset
    LDY #$21
    JSR Anim_WriteSpecificItemSprites
    ; Draw triforce over Link.
    ;
    LDA #$1B
    LDX #$13
    JSR AnimateItemObject
    LDX #$01
    JSR Anim_FetchObjPosForSpriteDescriptor
    ; Draw Zelda.
    ;
    TXA
    JSR DrawObjectMirrored
    ; The triforce over Zelda goes in slot 2.
    ; Set its location $10 pixels above her.
    ;
    LDA ObjX+1
    STA ObjX+2
    LDA ObjY+1
    SEC
    SBC #$10
    STA ObjY+2
    ; Draw triforce over Zelda.
    ;
    LDX #$02
    LDA #$1B
    JSR AnimateItemObject
    RTS

UpdateMode13WinGame_Sub1:
    LDA EndingFlashLongTimer
    BEQ @AdvanceSubmode
    JSR HideAllSprites
    ; Characters stop emitting when the long timer is $10.
    ; So, keep showing Link and Zelda until it reaches 4.
    ; Then hide them and wait until it reaches 0.
    ;
    LDA EndingFlashLongTimer
    CMP #$04
    BCC @Exit
    JSR DrawLinkZeldaTriforces
    ; Once in submode 2, only delay, instead of emitting characters.
    ;
    LDA GameSubmode
    CMP #$01
    BNE @Exit
    ; There is a delay before showing text.
    ;
    LDA ObjTimer
    BNE @Exit
    JSR UpdatePeaceTextbox
@Exit:
    RTS

@AdvanceSubmode:
    ; Transfer the ending palette, and go to the next submode.
    ;
    LDA #$6A
    STA TileBufSelector
    INC GameSubmode
    RTS

PeaceTextboxCharTransferRecTemplate:
    .BYTE $22, $A4, $01, $24, $FF

PeaceTextboxCharAddrsLo:
    .BYTE $AC, $AD, $AE, $AF, $B0, $B1, $B2, $B3
    .BYTE $E4, $E5, $E6, $E7, $E8, $E9, $EA, $EB
    .BYTE $EC, $ED, $EE, $EF, $F0, $F1, $F2, $F3
    .BYTE $F4, $F5, $F6, $F7, $F8, $F9, $FA, $FB
    .BYTE $46, $47, $48, $49, $4A, $4B, $4C, $4D
    .BYTE $4E, $4F, $50, $51, $52, $53, $54, $55
    .BYTE $56, $57, $58, $59

PeaceText:
    .BYTE $0F, $12, $17, $0A, $15, $15, $22, $28
    .BYTE $19, $0E, $0A, $0C, $0E, $24, $1B, $0E
    .BYTE $1D, $1E, $1B, $17, $1C, $24, $1D, $18
    .BYTE $24, $11, $22, $1B, $1E, $15, $0E, $2C
    .BYTE $1D, $11, $12, $1C, $24, $0E, $17, $0D
    .BYTE $1C, $24, $1D, $11, $0E, $24, $1C, $1D
    .BYTE $18, $1B, $22, $2C, $FF

UpdatePeaceTextbox:
    ; Only emit a character once every 8 frames --
    ; when (counter [0412] MOD 8) = 4.
    ;
    INC PeaceCharDelayCounter
    LDA PeaceCharDelayCounter
    AND #$07
    CMP #$04
    BNE @Exit
    ; Copy the 5 bytes of the textbox character transfer record template
    ; to the dynamic transfer buf.
    ;
    LDY #$04
:
    LDA PeaceTextboxCharTransferRecTemplate, Y
    STA DynTileBuf, Y
    DEY
    BPL :-
    ; Load a character from the string and copy it to
    ; the transfer record until we read character $FF.
    ;
    LDY PeaceCharIndex
    LDA PeaceText, Y
    CMP #$FF
    BEQ @AdvanceSubmode
    STA DynTileBuf+3
    ; A regular space takes as much time to emit as any character.
    ; But it makes no sound.
    ;
    CMP #$24
    BEQ :+
    LDA #$10                    ; "Heart taken/character" tune
    STA Tune0Request
:
    ; Point to the next character in the string.
    ;
    INC PeaceCharIndex
    ; Replace the low byte of the VRAM address with the one
    ; where the next character should be written.
    ;
    LDA PeaceTextboxCharAddrsLo, Y
    STA DynTileBuf+1
    ; Once the low VRAM address rolls over,
    ; increment the high address.
    ;
    CMP #$A0
    BCS @Exit
    LDA #$23
    STA DynTileBuf
@Exit:
    RTS

@AdvanceSubmode:
    INC GameSubmode
LAB7E_Exit:
    RTS

UpdateMode13WinGame_Sub4:
    JSR HideAllSprites
    ; Put the triforce in object slot 2 at location ($78, $88).
    ;
    LDX #$02
    LDA #$78
    STA ObjX, X
    LDA #$88
    STA ObjY, X
    LDA #$0E                    ; Triforce item ID
    JSR AnimateItemObject
    ; Reuse object slot 2 for the ash pile.
    ;
    LDX #$02
    LDA #$3E                    ; Ganon object type
    STA ObjType, X
    JSR DrawAshPile
    ; Don't let the player skip ahead for a little while.
    ;
    LDA ObjTimer
    BNE LAB7E_Exit
    ; If Start hasn't been pressed, then return.
    ;
    LDA ButtonsPressed
    AND #$10
    BEQ LAB7E_Exit
    ; Start was pressed. We'll transition to mode $D to save.
    ;
    JSR EndGameMode
    LDA #$0D
    STA GameMode
    JSR TurnOffAllVideo
    JSR TurnOffVideoAndClearArtifacts
    JSR SilenceAllSound
    JMP SwitchProfileToSecondQuest

DrawAshPile:
    JSR Anim_FetchObjPosForSpriteDescriptor
    LDA #$0B                    ; Ganon-ashes frame image
    JMP DrawObjectNotMirrored

CreditsLastScreenList:
    .BYTE $02, $03

CreditsLastVscrollList:
    .BYTE $78, $00

UpdateMode13WinGame_Sub3:
    ; After scrolling 8 pixels, draw another tile row.
    ;
    LDA CreditsTileOffset
    CMP #$08
    BMI :+
    LDA CreditsTileOffset
    SBC #$08
    STA CreditsTileOffset
    JSR DrawCredits
:
    ; Add $80 to the scroll speed fraction.
    ;
    LDA VScrollAddrHi
    CLC
    ADC #$80
    STA VScrollAddrHi
    ; Carry over to the tile offset and current V-scroll.
    ;
    BCC :+
    INC CreditsTileOffset
:
    LDA CurVScroll
    ADC #$00
    STA CurVScroll
    ; If we've reached the bottom of a nametable, then
    ; roll over current V-scroll to 0, and increase number of
    ; screens scrolled.
    ;
    CMP #$F0
    LDA #$00
    BCC :+
    STA CurVScroll
    INC a:VScrollAddrLo
:
    ; Roll the carry from the comparison above into bit 0.
    ; So, if reached the bottom of a nametable, switch nametables.
    ;
    ROL
    STA SwitchNameTablesReq
    ; Put the quest number in Y register.
    ;
    LDY #$00
    LDX CurSaveSlot
    LDA QuestNumbers, X
    BEQ :+
    INY
:
    ; If we're not showing the last screen, then return.
    ;
    LDA a:VScrollAddrLo
    CMP CreditsLastScreenList, Y
    BCC @Exit
    ; If we haven't scrolled the last amount in the last screen,
    ; then return.
    ;
    LDA CurVScroll
    CMP CreditsLastVscrollList, Y
    BCC @Exit
    ; But if we have, then go to the next submode, and set a timer
    ; to wait $40 frames in the next submode.
    ;
    INC GameSubmode
    LDA #$40
    STA ObjTimer
@Exit:
    RTS

CreditLineVramAddrsHi:
    .BYTE $28, $29, $2A, $2B, $20, $21, $22, $23
    .BYTE $28, $29, $2A, $2B

CreditsPagesTextMasks:
    .BYTE $46, $10, $90, $84, $24, $30, $01, $48
    .BYTE $03, $25, $05, $40

CreditsTextAddrsLo:
    .BYTE $5C, $65, $70, $88, $A0, $B8, $C8, $E0
    .BYTE $F8, $06, $14, $1B, $33, $4D, $59, $72
    .BYTE $82, $92, $A1, $B6, $C9, $D1, $EA

CreditsTextAddrsHi:
    .BYTE $AC, $AC, $AC, $AC, $AC, $AC, $AC, $AC
    .BYTE $AC, $AD, $AD, $AD, $AD, $AD, $AD, $AD
    .BYTE $AD, $AD, $AD, $AD, $AD, $AD, $AD

CreditsTextLines:
    .BYTE $07, $0D, $24, $1C, $1D, $0A, $0F, $0F
    .BYTE $24, $09, $05, $0E, $21, $0E, $0C, $1E
    .BYTE $1D, $12, $1F, $0E, $16, $05, $19, $1B
    .BYTE $18, $0D, $1E, $0C, $0E, $1B, $63, $63
    .BYTE $63, $24, $11, $63, $22, $0A, $16, $0A
    .BYTE $1E, $0C, $11, $12, $16, $05, $19, $1B
    .BYTE $18, $0D, $1E, $0C, $0E, $1B, $63, $63
    .BYTE $63, $63, $24, $1C, $63, $16, $12, $22
    .BYTE $0A, $11, $18, $17, $16, $05, $0D, $12
    .BYTE $1B, $0E, $0C, $1D, $18, $1B, $63, $63
    .BYTE $63, $63, $24, $1C, $63, $16, $12, $22
    .BYTE $0A, $11, $18, $17, $0E, $0D, $63, $63
    .BYTE $63, $63, $63, $63, $24, $1D, $0E, $17
    .BYTE $24, $1D, $0E, $17, $16, $05, $0D, $0E
    .BYTE $1C, $12, $10, $17, $0E, $1B, $63, $63
    .BYTE $63, $63, $63, $63, $24, $1D, $0E, $17
    .BYTE $24, $1D, $0E, $17, $16, $05, $19, $1B
    .BYTE $18, $10, $1B, $0A, $16, $16, $0E, $1B
    .BYTE $63, $63, $24, $1D, $63, $17, $0A, $14
    .BYTE $0A, $23, $18, $18, $0C, $0F, $63, $63
    .BYTE $63, $63, $63, $24, $22, $0A, $0C, $11
    .BYTE $0A, $17, $0C, $0F, $63, $63, $63, $24
    .BYTE $16, $0A, $1B, $1E, $16, $0A, $1B, $1E
    .BYTE $05, $05, $1C, $18, $1E, $17, $0D, $16
    .BYTE $05, $0C, $18, $16, $19, $18, $1C, $0E
    .BYTE $1B, $63, $63, $63, $63, $63, $63, $24
    .BYTE $14, $18, $17, $0C, $11, $0A, $17, $18
    .BYTE $04, $0A, $17, $18, $1D, $11, $0E, $1B
    .BYTE $24, $1A, $1E, $0E, $1C, $1D, $24, $20
    .BYTE $12, $15, $15, $24, $1C, $1D, $0A, $1B
    .BYTE $1D, $0A, $0B, $0F, $1B, $18, $16, $24
    .BYTE $11, $0E, $1B, $0E, $2C, $17, $05, $19
    .BYTE $1B, $0E, $1C, $1C, $24, $1D, $11, $0E
    .BYTE $24, $1C, $1D, $0A, $1B, $1D, $24, $0B
    .BYTE $1E, $1D, $1D, $18, $17, $2C, $0E, $09
    .BYTE $FC, $01, $09, $08, $06, $24, $17, $12
    .BYTE $17, $1D, $0E, $17, $0D, $18, $0E, $09
    .BYTE $22, $18, $1E, $24, $0A, $1B, $0E, $24
    .BYTE $10, $1B, $0E, $0A, $1D, $63, $0D, $09
    .BYTE $24, $24, $24, $24, $24, $24, $24, $24
    .BYTE $24, $62, $24, $24, $24, $13, $06, $22
    .BYTE $18, $1E, $24, $11, $0A, $1F, $0E, $24
    .BYTE $0A, $17, $24, $0A, $16, $0A, $23, $12
    .BYTE $17, $10, $11, $08, $20, $12, $1C, $0D
    .BYTE $18, $16, $24, $0A, $17, $0D, $24, $19
    .BYTE $18, $20, $0E, $1B, $63, $06, $0D, $0E
    .BYTE $17, $0D, $24, $18, $0F, $17, $04, $2D
    .BYTE $1D, $11, $0E, $24, $15, $0E, $10, $0E
    .BYTE $17, $0D, $24, $18, $0F, $24, $23, $0E
    .BYTE $15, $0D, $0A, $24, $01, $2D, $0E, $09
    .BYTE $FC, $01, $09, $08, $06, $24, $17, $12
    .BYTE $17, $1D, $0E, $17, $0D, $18

CreditsAttrs:
    .BYTE $00, $AA, $FF, $FF, $55, $AA, $AA, $FF

    .BYTE $FF, $FF, $55, $00, $00, $00, $00, $00
    .BYTE $00, $00, $50, $00, $00, $00, $AA, $00

; Unknown block
    .BYTE $00

DrawCredits:
    ; Make a transfer record of a full row of blank tiles.
    ;
    LDY #$1F
    LDA #$24
:
    STA DynTileBuf+3, Y
    DEY
    BPL :-
    ; No wall tiles go in row 0.
    ;
    LDA CreditsRow
    BEQ @TerminateRecords
    ; Rows 1 and $2E get horizontal wall tiles.
    ; Rows 2 to $2D get side walls.
    ;
    CMP #$01
    BEQ @WriteHorizontalWalls
    CMP #$2E
    BCC @WriteSideWalls
    BNE @TerminateRecords
@WriteHorizontalWalls:
    LDY #$19
    LDA #$FA                    ; Wall bricks tile
:
    STA DynTileBuf+6, Y
    DEY
    BPL :-
@WriteSideWalls:
    LDA #$FA                    ; Wall bricks tile
    STA DynTileBuf+6
    STA DynTileBuf+31
@TerminateRecords:
    ; Put the buffer's end marker -- whether we transfer tiles and
    ; attributes or only tiles.
    ;
    LDA #$FF
    STA DynTileBuf+35           ; The end of the first record: tiles
    STA DynTileBuf+46           ; The end of the second record: NT attributes
    ; Specify that we're transferring $20 bytes/tiles.
    ;
    LDA #$20
    STA DynTileBuf+2
    ; Write the high byte of the current VRAM page.
    ;
    LDX CreditsVramPage
    LDA CreditLineVramAddrsHi, X
    STA DynTileBuf
    ; The line number will be used to shift the task mask below.
    ;
    LDA CreditsVramLine
    TAY
    ; Multiply the VRAM line number by $20 to get the low VRAM address.
    ;
    ASL
    ASL
    ASL
    ASL
    ASL
    STA DynTileBuf+1
    ; Get the mask for the current VRAM page.
    ;
    LDA CreditsPagesTextMasks, X
:
    ; Shift left as many times as the current VRAM line number,
    ; to get the bit that indicates whether this line has text.
    ;
    ASL
    DEY
    BPL :-
    BCC @IncVramLine
    ; The mask inidcates that it should have text.
    ; But if line index >= $17, then it doesn't.
    ;
    LDY CreditsLineIndex
    CPY #$17
    BCS @IncVramLine
    ; In the first quest, don't consider line numbers >= $10.
    ;
    LDX CurSaveSlot
    LDA QuestNumbers, X
    BNE :+
    CPY #$10
    BCS @IncLine
:
    LDX CurSaveSlot
    LDA QuestNumbers, X
    ; In the second quest, skip lines $C to $F.
    ;
    BEQ :+
    CPY #$0C
    BCC :+
    CPY #$10
    BCC @IncLine
:
    LDA CreditsTextAddrsLo, Y
    STA $00
    LDA CreditsTextAddrsHi, Y
    STA $01
    ; First read the length of the string.
    ;
    LDY #$00
    LDA ($00), Y
    STA $02                     ; The length of the string
    ; Second, read the offset where the first character goes
    ; in the line.
    ;
    INY
    LDA ($00), Y
    TAX
    ; Loop over each character in the rest of the credits source record.
    ;
    INY
:
    LDA ($00), Y
    STA DynTileBuf+3, X
    INY                         ; Increment the source pointer.
    INX                         ; Increment the destination pointer.
    DEC $02                     ; Decrement the count remaining.
    BNE :-
    ; If line index <> $11, go increment.
    ;
    LDY CreditsLineIndex
    CPY #$0C
    BCC @IncLine
    CPY #$11
    BNE @IncLine
    ; Line index = $11, prepare to read the player's name.
    ;
    LDA CurSaveSlot
    ASL
    ASL
    ASL
    TAY
    ; Copy the player's name at offset 9 in string to transfer.
    ;
    LDX #$00
:
    LDA Names, Y
    STA DynTileBuf+12, X
    INY
    INX
    CPX #$08
    BCC :-
    ; Format the death count for the current save slot.
    ;
    LDY a:CurSaveSlot
    LDA DeathCounts, Y
    JSR FormatDecimalByte
    ; Copy the decimal death count at offset 19 in string to transfer.
    ;
    LDX #$02
:
    LDA $01, X
    STA DynTileBuf+22, X
    DEX
    BPL :-
    LDY CreditsLineIndex
@IncLine:
    INC CreditsLineIndex
@IncVramLine:
    INC CreditsVramLine
    ; In each VRAM page there are 8 lines, except in ones where
    ; (page MOD 4) = 3. This means $23xx and $2Bxx.
    ; These pages have 6 lines.
    ;
    LDA CreditsVramPage
    AND #$03
    CMP #$03
    LDA #$08
    BCC :+
    LDA #$06
:
    ; If the VRAM line number has not just been incremented to
    ; the reference line number count, then go write NT attributes.
    ;
    CMP CreditsVramLine
    BNE @WriteAttributes
    ; Else roll over the VRAM line to 0.
    ;
    LDA #$00
    STA CreditsVramLine
    ; Increment the VRAM page number.
    ;
    LDY CreditsVramPage
    INY
    ; If it has reached $C, then roll it over to 0.
    ;
    CPY #$0C
    BCC :+
    TAY
:
    STY CreditsVramPage
@WriteAttributes:
    ; Every 4 rows, we have to transfer NT attributes.
    ; So, when (counter MOD 4) <> 0, skip filling an attribute record.
    ;
    LDA CreditsRow
    LSR
    BCS @IncRow
    LSR
    BCS @IncRow
    ; Attributes for the left and right blocks are 0.
    ;
    LDX #$00
    STX DynTileBuf+38
    STX DynTileBuf+45
    ; The row was already divided by 4. So now it refers to an
    ; NT attribute block row. Look up the attribute byte to use
    ; for almost every block in this NT attribute block row.
    ;
    TAY
    LDA CreditsAttrs, Y
    ; Fill a record with this byte, so the whole NT attribute block
    ; row is changed.
    ;
    LDY #$05
:
    STA DynTileBuf+39, Y
    DEY
    BPL :-
    ; If tiles are being written to NT 1 (>= $2800), then
    ; write the high byte of NT 1's attribute space (>= $2BC0).
    ; Else write the high byte of NT 0's attribute space (>= $23C0).
    ;
    LDY #$23
    LDA DynTileBuf
    AND #$08
    BEQ :+
    LDY #$2B
:
    STY DynTileBuf+35
    ; Every attribute block row is at an offset (tile row * 2).
    ;
    LDA CreditsRow
    AND #$1F
    ASL
    ; Add the offset to the low byte of attribute space base
    ; ($23C0 or $2BC0); and write it to the record.
    ;
    ADC #$C0
    STA DynTileBuf+36
    LDA #$08                    ; 8 bytes in the attribute row record.
    STA DynTileBuf+37
@IncRow:
    ; Add 1 to the row.
    ;
    LDY CreditsRow
    INY
    ; Skip the last two rows in each cycle.
    ; When (row MOD $20) gets to $1E, add 2.
    ;
    ; Again, this is because there are
    ; 240 pixels vertically instead of 256.
    ;
    TYA
    AND #$1F
    CMP #$1E
    BCC :+
    INY
    INY
:
    STY CreditsRow
    RTS

WorldFlagBlockAddrs:
    .BYTE $7F, $06, $FF, $06, $7F, $07

SwitchProfileToSecondQuest:
    ; Clear $80 bytes of each block of world flags.
    ;
    LDX #$04
@ClearBlock:
    LDA WorldFlagBlockAddrs, X
    STA $00
    LDA WorldFlagBlockAddrs+1, X
    STA $01
    LDY #$7F
    LDA #$00
:
    STA ($00), Y
    DEY
    BPL :-
    DEX
    DEX
    BPL @ClearBlock
    ; Clear $28 byte block of items.
    ;
    LDY #$27
:
    STA Items, Y
    DEY
    BPL :-
    ; Set 3 full hearts and heart containers.
    ;
    LDA #$22
    STA HeartValues
    DEC HeartPartial
    LDA #$08
    STA MaxBombs
    LDY CurSaveSlot
    LDA #$01
    STA QuestNumbers, Y
    RTS


.SEGMENT "BANK_02_ISR"


.EXPORT SwitchBank_Local2

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
    .BYTE $8D, $00, $80, $60

SwitchBank_Local2:
    STA $E000
    LSR
    STA $E000
    LSR
    STA $E000
    LSR
    STA $E000
    LSR
    STA $E000
    RTS


.SEGMENT "BANK_02_VEC"



; Unknown block
    .BYTE $84, $E4, $50, $BF, $F0, $BF

