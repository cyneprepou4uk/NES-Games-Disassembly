.INCLUDE "Variables.inc"

.SEGMENT "BANK_03_00"


; Imports from program bank 07

.IMPORT TurnOffAllVideo

.EXPORT TransferLevelPatternBlocks

LevelPatternBlockSrcAddrs:
    .ADDR PatternBlockUWSP127
    .ADDR PatternBlockUWSP127
    .ADDR PatternBlockUWSP127
    .ADDR PatternBlockUWSP358
    .ADDR PatternBlockUWSP469
    .ADDR PatternBlockUWSP358
    .ADDR PatternBlockUWSP469
    .ADDR PatternBlockUWSP127
    .ADDR PatternBlockUWSP358
    .ADDR PatternBlockUWSP469

BossPatternBlockSrcAddrs:
    .ADDR PatternBlockUWSPBoss1257
    .ADDR PatternBlockUWSPBoss1257
    .ADDR PatternBlockUWSPBoss1257
    .ADDR PatternBlockUWSPBoss3468
    .ADDR PatternBlockUWSPBoss3468
    .ADDR PatternBlockUWSPBoss1257
    .ADDR PatternBlockUWSPBoss3468
    .ADDR PatternBlockUWSPBoss1257
    .ADDR PatternBlockUWSPBoss3468
    .ADDR PatternBlockUWSPBoss9

PatternBlockSrcAddrsUW:
    .ADDR PatternBlockUWBG
    .ADDR PatternBlockUWSP

PatternBlockSrcAddrsOW:
    .ADDR PatternBlockOWBG
    .ADDR PatternBlockOWSP

PatternBlockPpuAddrs:
    .DBYT $1700
    .DBYT $08E0

PatternBlockPpuAddrsExtra:
    .DBYT $09E0
    .DBYT $0C00

PatternBlockSizesOW:
    .DBYT $0820
    .DBYT $0720

PatternBlockSizesUW:
    .DBYT $0820
    .DBYT $0100
    .DBYT $0220
    .DBYT $0400

TransferLevelPatternBlocks:
    JSR TurnOffAllVideo
    LDA PpuStatus_2002
    JSR ResetPatternBlockIndex
    LDA CurLevel
    BNE TransferLevelPatternBlocksUW    ; Go handle UW levels.
@LoopBlockOW:
    JSR FetchPatternBlockInfoOW
    JSR TransferPatternBlock_Bank3
    LDA PatternBlockIndex
    CMP #$02                    ; There are two blocks.
    BNE @LoopBlockOW            ; If we haven't transferred the second, then go do so.
ResetPatternBlockIndex:
    LDA #$00
    STA PatternBlockIndex
    RTS

TransferLevelPatternBlocksUW:
    JSR FetchPatternBlockAddrUW
    JSR FetchPatternBlockSizeUW
    LDA PatternBlockIndex
    CMP #$02
    BNE TransferLevelPatternBlocksUW    ; If at block index 1, then go transfer the second block.
    ; At this point, we've transferred two common blocks
    ; (BG and sprites). Now UW, transfer bosses and other
    ; specialized sprite patterns.
    ;
    JSR FetchPatternBlockAddrUWSpecial
    JSR FetchPatternBlockSizeUW
    JSR FetchPatternBlockUWBoss
    JSR FetchPatternBlockSizeUW
    JMP ResetPatternBlockIndex

FetchPatternBlockAddrUW:
    LDA PatternBlockIndex
    ASL
    TAX
    LDA PatternBlockSrcAddrsUW, X
    STA $00
    INX
    LDA PatternBlockSrcAddrsUW, X
    STA $01
    RTS

; Returns:
; [$00:01]: source address
; [$03:02]: size
;
FetchPatternBlockInfoOW:
    LDA PatternBlockIndex
    ASL
    TAX
    LDA PatternBlockSrcAddrsOW, X
    STA $00
    LDA PatternBlockSizesOW, X
    STA $02
    INX
    LDA PatternBlockSrcAddrsOW, X
    STA $01
    LDA PatternBlockSizesOW, X
    STA $03
    RTS

FetchPatternBlockAddrUWSpecial:
    LDA CurLevel
    ASL
    TAX
    LDA LevelPatternBlockSrcAddrs, X
    STA $00
    INX
    LDA LevelPatternBlockSrcAddrs, X
    STA $01
    RTS

FetchPatternBlockUWBoss:
    LDA CurLevel
    ASL
    TAX
    LDA BossPatternBlockSrcAddrs, X
    STA $00
    INX
    LDA BossPatternBlockSrcAddrs, X
    STA $01
    RTS

FetchPatternBlockSizeUW:
    LDA PatternBlockIndex
    ASL
    TAX
    LDA PatternBlockSizesUW, X
    STA $02
    INX
    LDA PatternBlockSizesUW, X
    STA $03
; Params:
; [$00:01]: source address
; [$03:02]: size
;
; Look up and transfer destination PPU address by PatternBlockIndex.
;
TransferPatternBlock_Bank3:
    LDA PatternBlockIndex
    ASL
    TAX
    LDA PatternBlockPpuAddrs, X
    STA PpuAddr_2006
    INX
    LDA PatternBlockPpuAddrs, X
    STA PpuAddr_2006
    LDY #$00                    ; Start copying.
@LoopCopy:
    LDA ($00), Y                ; Transfer 1 byte from source pattern block in ROM to PPU.
    STA PpuData_2007
    ; Increment source address.
    ;
    LDA $00
    CLC
    ADC #$01
    STA $00
    LDA $01
    ADC #$00
    STA $01
    ; Decrement count.
    ;
    LDA $03
    SEC
    SBC #$01
    STA $03
    LDA $02
    SBC #$00
    STA $02
    ; If count is not zero, go copy more.
    ;
    LDA $02
    BNE @LoopCopy
    LDA $03
    BNE @LoopCopy
    INC PatternBlockIndex       ; Mark this block finished, and we're ready for the next one.
    RTS

PatternBlockUWBG:
.INCBIN "dat/PatternBlockUWBG.dat"

PatternBlockOWBG:
.INCBIN "dat/PatternBlockOWBG.dat"

PatternBlockOWSP:
.INCBIN "dat/PatternBlockOWSP.dat"

PatternBlockUWSP358:
.INCBIN "dat/PatternBlockUWSP358.dat"

PatternBlockUWSP469:
.INCBIN "dat/PatternBlockUWSP469.dat"

PatternBlockUWSP:
.INCBIN "dat/PatternBlockUWSP.dat"

PatternBlockUWSP127:
.INCBIN "dat/PatternBlockUWSP127.dat"

PatternBlockUWSPBoss1257:
.INCBIN "dat/PatternBlockUWSPBoss1257.dat"

PatternBlockUWSPBoss3468:
.INCBIN "dat/PatternBlockUWSPBoss3468.dat"

PatternBlockUWSPBoss9:
.INCBIN "dat/PatternBlockUWSPBoss9.dat"


.SEGMENT "BANK_03_ISR"



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


.SEGMENT "BANK_03_VEC"



; Unknown block
    .BYTE $84, $E4, $50, $BF, $F0, $BF

