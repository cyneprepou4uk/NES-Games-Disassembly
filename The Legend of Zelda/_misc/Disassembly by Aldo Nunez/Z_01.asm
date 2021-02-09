.INCLUDE "Variables.inc"
.INCLUDE "CommonVars.inc"
.INCLUDE "CaveVars.inc"

.SEGMENT "BANK_01_00"


; Imports from program bank 07

.IMPORT Anim_AdvanceAnimCounterAndSetObjPosForSpriteDescriptor
.IMPORT Anim_FetchObjPosForSpriteDescriptor
.IMPORT Anim_SetObjHFlipForSpriteDescriptor
.IMPORT AnimateItemObject
.IMPORT DestroyMonster
.IMPORT DrawItemInInventory
.IMPORT FindEmptyMonsterSlot
.IMPORT GoToNextModeFromPlay
.IMPORT LevelMasks
.IMPORT Link_EndMoveAndAnimate_Bank1
.IMPORT Link_EndMoveAndDraw_Bank1
.IMPORT MoveObject
.IMPORT ResetObjMetastate
.IMPORT TableJump
.IMPORT TurnOffAllVideo

.EXPORT CheckInitWhirlwindAndBeginUpdate
.EXPORT CheckPassiveTileObjects
.EXPORT CheckPowerTriforceFanfare
.EXPORT CheckTileObjectsBlocking
.EXPORT CopyCommonCodeToRam
.EXPORT InitCave
.EXPORT InitGrumble_Full
.EXPORT InitRupeeStash_Full
.EXPORT InitTrap_Full
.EXPORT InitUnderworldPerson_Full
.EXPORT InitUnderworldPersonLifeOrMoney_Full
.EXPORT SummonWhirlwind
.EXPORT TransferDemoPatterns
.EXPORT UpdateCavePerson
.EXPORT UpdateGrumble_Full
.EXPORT UpdateRupeeStash_Full
.EXPORT UpdateTrap_Full
.EXPORT UpdateUnderworldPerson_Full
.EXPORT UpdateUnderworldPersonLifeOrMoney_Full
.EXPORT UpdateWhirlwind_Full

PersonTextAddrs:
    .BYTE $4C, $80, $77, $80, $A1, $80, $B9, $80
    .BYTE $E3, $80, $05, $81, $2D, $81, $52, $81
    .BYTE $79, $81, $97, $81, $AE, $81, $D2, $81
    .BYTE $F8, $81, $2C, $82, $41, $82, $58, $82
    .BYTE $7D, $82, $94, $82, $B8, $82, $CD, $82
    .BYTE $F5, $82, $0D, $83, $4D, $83, $70, $83
    .BYTE $9C, $83, $C6, $83, $F0, $83, $1C, $84
    .BYTE $3F, $84, $6D, $84, $90, $84, $B8, $84
    .BYTE $E3, $84, $0E, $85, $26, $85, $53, $85
    .BYTE $68, $85, $7E, $85

PersonText:
.INCBIN "dat/PersonText.dat"

OverworldPersonTextSelectors:
    .BYTE $40, $60, $42, $42, $04, $06, $48, $0A
    .BYTE $4C, $0E, $D0, $D2, $D2, $DC, $DC, $DE
    .BYTE $DE, $62, $62, $62

MoneyGameLossAmounts:
    .BYTE $0A, $28

MoneyGamePermutations:
    .BYTE $00, $01, $02, $01, $02, $00, $02, $00
    .BYTE $01, $00, $02, $01, $02, $01, $00, $01
    .BYTE $00, $02

MoneyGamePermutationEndIndexes:
    .BYTE $02, $05, $08, $0B, $0E, $11

InitCave:
    ; The person goes at location ($78, $80).
    ;
    LDA #$78
    LDY #$80
    JSR SetUpCommonCaveObjects
    ; If the cave/person does not remember state (give item, door charge),
    ; then go handle other kinds.
    ;
    LDA ObjType+1
    CMP #$72
    BEQ @TakeType
    CMP #$71
    BEQ @TakeType
    CMP #$7B
    BCS @TakeType
    CMP #$6E
    BCS InitCaveContinue
@TakeType:
    ; Else the cave/person simply does:
    ; - taken:     no person, no text
    ; - not taken: show a person and text
    ;
    ; So, if the item was not taken, then go set up the text.
    ;
    JSR GetRoomFlagUWItemState
    BEQ InitCaveContinue
    ; Otherwise destroy the person object, and let Link continue.
    ;
    LDA #$00
    STA ObjType+1
UnhaltLink:
    LDA #$00
    STA ObjState
    RTS

InitCaveContinue:
    ; Get this cave's index (object type - $6A).
    ;
    LDA ObjType+1
    SEC
    SBC #$6A
    TAY
    ; Get the person text selector by looking up the text selector byte
    ; for this index, and masking it with $3F.
    ;
    LDA OverworldPersonTextSelectors, Y
    PHA                         ; Save the text selector byte before masking.
    AND #$3F
    STA PersonTextSelector
    ; Pop and mask the text selector byte with $C0 to get the
    ; "pay" and "pick up" cave flags and store them in [03].
    ;
    PLA
    AND #$C0
    STA $03
    ; At this point, the Y register still has the cave index.
    ; Multiply it by 3 to get the offset of the first item in a set of 3.
    ;
    LDA #$FD
:
    CLC
    ADC #$03
    DEY
    BPL :-
    TAY
    ; Loop over the wares from 0 to 2.
    ;
    LDX #$00
@CopyCaveBytes:
    ; Copy 3 item ID bytes from the Cave level block info.
    ; Item ID's are in the low 6 bits, cave flags are in the high 2 bits.
    ;
    LDA LevelBlockAttrsE, Y
    STA CaveItemIds, X
    ; Copy the cave flags (high 2 bits) of the three items to [00] to [02].
    ;
    AND #$C0
    STA $00, X
    ; Copy 3 prices from the Cave level block info.
    ;
    LDA LevelBlockAttrsE+60, Y
    STA CavePrices, X
    ; Bottom of the wares copying loop.
    ;
    INY
    INX
    CPX #$03
    BNE @CopyCaveBytes
    ; Get the top 2 bits of text selector byte in [03],
    ; shift them to the bottom, and combine them with [00].
    ;
    LDA $03
    ASL
    ROL
    ROL
    ORA $00
    STA $00
    ; Get the top 2 bits of item descriptor 2, shift them right 4 times,
    ; and combine them with [00].
    ;
    LDA $02
    LSR
    LSR
    LSR
    LSR
    ORA $00
    STA $00
    ; Get the top 2 bits of item descriptor 1, shift them right twice,
    ; and combine them with [00] into CaveFlags.
    ;
    LDA $01
    LSR
    LSR
    ORA $00
    STA CaveFlags
    ; The end result is a byte with 8 cave flags.
    ;
    ; If cave flag "money game" is missing, then go finish up,
    ; instead of choosing random amounts for the money game.
    ;
    AND #$20
    BEQ @ResetTextbox
    ; Determine an index randomly with increasing probability,
    ; from 6 to 1. Start with the following test:
    ;
    ;   If $FF < Random, then go use index 6.
    ;
    LDA #$FF
    LDY #$06
@ChoosePermutation:
    CMP Random+1
    BCC @FoundPermutation
    ; If the test fails, then subtract $2B from the reference number.
    ;
    SEC
    SBC #$2B
    DEY
    BNE @ChoosePermutation
@FoundPermutation:
    ; The index chooses the last offset of a permutation of three indexes.
    ;
    LDX MoneyGamePermutationEndIndexes, Y
    ; Copy the permutation of 3 indexes to [046C] to [046E].
    ;
    LDY #$02
@CopyPermutation:
    LDA MoneyGamePermutations, X
    STA $046C, Y
    DEX
    DEY
    BPL @CopyPermutation
    ; With the first bit of another random number, choose 10 or 40
    ; to put in [046F]. This is a random amount to lose.
    ;
    LDA Random+2
    AND #$01
    TAY
    LDA MoneyGameLossAmounts, Y
    STA $046F
    ; Put 10 in [0470]. This is a fixed amount to lose.
    ;
    LDA #$0A
    STA $0470
    ; With a different bit of the second random number,
    ; choose 20 or 50 to put in [0471]. This is an amount to win.
    ;
    LDY #$14
    LDA Random+2
    AND #$02
    BEQ :+
    LDY #$32
:
    STY $0471
    ; The 3 amounts are now in [046F] to [0471].
    ; Reference these amounts using the permutation of indexes
    ; in [046C] to [046E]; and copy them to [0448] to [044A].
    ;
    LDX #$02
@ArrangeAmounts:
    LDY $046C, X
    LDA $046F, Y
    STA MoneyGameAmounts, X
    DEX
    BPL @ArrangeAmounts
@ResetTextbox:
    ; Reset the current character index.
    ;
    LDA #$00
    STA PersonTextIndex
    ; Point to the front of the first textbox line.
    ;
    LDA TextboxLineAddrsLo+2
    STA PersonTextPtr
    RTS

; Params:
; A: X coordinate
; Y: Y coordinate
;
; Set the person's coordinates, HP, and attributes.
;
SetUpCommonCaveObjects:
    STA ObjX, X
    STY ObjY, X
    LDA #$00
    STA ObjHP, X
    LDA #$81
    STA ObjAttr, X
    ; Halt Link.
    ;
    LDA #$40
    STA ObjState
    ; Set up the two bonfires.
    ;
    LDA #$40
    STA ObjType+2
    STA ObjType+3
    LDA #$48
    STA ObjX+1, X
    LDA #$A8
    STA ObjX+2, X
    STY ObjY+1, X
    STY ObjY+2, X
    RTS

PriceListTemplateTransferBuf:
    .BYTE $22, $C8, $0D, $21, $24, $24, $24, $24
    .BYTE $24, $24, $24, $24, $24, $24, $24, $24
    .BYTE $FF

UpdateCavePerson:
    ; If in state 4, then every other frame skip drawing the person
    ; and items; and go straight to the state code for each kind of cave.
    ;
    LDA ObjState+1
    CMP #$04
    BNE :+
    LDA FrameCounter
    AND #$01
    BNE @UpdateCavePersonDirect
:
    JSR DrawCavePerson
    ; If the cave type is not $74 medicine shop,
    ; or it is but the letter has not been used, then
    ; go draw items and run the state code.
    ;
    LDA ObjType+1
    CMP #$74
    BNE @DrawItems
    LDA InvLetter
    CMP #$02
    BEQ @DrawItems
    ; If the letter is selected, and B is pressed, then go use the letter.
    ;
    LDY SelectedItemSlot
    CPY #$0F
    BNE @Unhalt
    LDA ButtonsPressed
    AND #$40
    BNE @UseLetter
@Unhalt:
    ; If Link is halted, then unhalt him.
    ;
    LDA ObjState
    CMP #$40
    BNE :+
    JSR UnhaltLink
:
    RTS

@UseLetter:
    ; The letter has been used.
    ;
    ; Play the "secret found" tune.
    ;
    LDA #$04
    STA Tune1Request
    ; Set the letter state to used (2).
    ;
    INC InvLetter
    ; Change the selected item slot to the potion's.
    ;
    LDA #$07
    STA SelectedItemSlot
@DrawItems:
    JSR DrawCaveItems
@UpdateCavePersonDirect:
    LDA ObjState+1
    JSR TableJump
UpdateCavePerson_JumpTable:
    .ADDR UpdateCavePersonState_TransferPrices
    .ADDR UpdatePersonState_Textbox
    .ADDR UpdateCavePersonState_TalkOrShopOrDoorCharge
    .ADDR UpdatePersonState_CueTransferBlankPersonWares
    .ADDR UpdatePersonState_DelayThenHide
    .ADDR UpdateCavePersonState_HintOrMoneyGame
    .ADDR UpdatePersonState_CueTransferBlankPersonWares
    .ADDR UpdatePersonState_Textbox
    .ADDR UpdateCavePersonState_DoNothing

DrawCavePerson:
    JSR Anim_FetchObjPosForSpriteDescriptor
    ; If the cave/person type >= $7B, then the visual is a moblin.
    ; So, go draw not mirrored.
    ;
    LDY ObjType+1
    CPY #$7B
    BCS :+
    ; Else the old man, old woman, and shopkeeper are all mirrored.
    ;
    JMP DrawObjectMirrored

:
    JMP DrawObjectNotMirrored

CaveWareXs:
    .BYTE $58, $78, $98

DrawCaveItems:
    ; If the cave flags do not call for showing items, then
    ; go see about showing prices.
    ;
    LDA CaveFlags
    AND #$04                    ; Cave flag: Show items
    BEQ @ShowPriceRupee
    ; Loop over the wares to draw, from 2 to 0, indexed by [0421].
    ;
    LDA #$02
    STA $0421
@LoopWare:
    LDX $0421
    ; Look up and set the X coordinate for the current item.
    ;
    LDA CaveWareXs, X
    STA ObjX+19
    ; Set Y coordinate $98 for the item.
    ;
    LDA #$98
    STA ObjY+19
    ; If the item is nothing ($3F), then loop gain.
    ;
    LDA CaveItemIds, X
    AND #$3F
    CMP #$3F
    BEQ @NextWare
    ; Switch to the room item object slot, and draw it.
    ;
    LDX #$13
    JSR AnimateItemObject
@NextWare:
    ; Bottom of the item drawing loop. Decrement this index until < 0.
    ;
    DEC $0421
    BPL @LoopWare
@ShowPriceRupee:
    ; If the cave flags do not call for showing prices, then return.
    ;
    LDA CaveFlags
    AND #$08                    ; Cave flag: Show prices
    BEQ @Exit
    ; Show a rupee at ($30, $AB).
    ;
    LDA #$30
    STA ObjX+19
    LDA #$AB
    STA ObjY+19
    LDA #$18
    LDX #$13
    JSR AnimateItemObject
@Exit:
    RTS

UpdateCavePersonState_TransferPrices:
    ; If the cave flags do not call for showing prices, then
    ; advance the state and return.
    ;
    LDA CaveFlags
    AND #$08                    ; Cave flag: Show prices
    BEQ IncCaveState
WritePricesTransferBuf:
    JSR CopyPriceListTemplate
    LDA #$21                    ; "X"
; Params:
; A: price character
;
WritePricesToDynamicTransferBuf:
    STA DynTileBuf+3
    ; Reset the index of current price being formatted
    ; and offset of price string.
    ;
    LDX #$00
    STX CaveCurPriceIndex
    STX CaveCurPriceOffset
@LoopPrice:
    ; Get the price of the current item.
    ;
    LDA CavePrices, X
    ; If it's 0, then store a space character in the text field [01], [02], [03].
    ;
    BNE @Format
    LDX #$24
    STX $01
    STX $02
    STX $03
    JMP @Align

@Format:
    JSR FormatDecimalByte
    ; If the cave flags call for negative amounts, then
    ; store a dash in prefix byte [04]. Else store a space ($24).
    ;
    LDX #$24
    LDA CaveFlags
    ASL
    BCC @Align
    LDX #$62                    ; "-"
@Align:
    STX $04
    ; Move the dash closer to the number.
    ;
    LDY CaveCurPriceOffset
    LDA $02
    JSR SwapSpaceAndSign
    STA DynTileBuf+6, Y
    LDA $01
    JSR SwapSpaceAndSign
    STA DynTileBuf+5, Y
    LDA $03
    STA DynTileBuf+7, Y
    ; Add 4 to the base offset for the next string.
    ;
    LDA CaveCurPriceOffset
    CLC
    ADC #$04
    STA CaveCurPriceOffset
    ; Bottom of the price loop. Increment the index of the item until = 3.
    ;
    INC CaveCurPriceIndex
    LDX CaveCurPriceIndex
    CPX #$03
    BNE @LoopPrice
    ; Delay $A frames at the beginning of the next state.
    ;
    LDA #$0A
    STA ObjTimer+1
    ; Go to the next state and return.
    ;
    BNE IncCaveState
; Params:
; A: selector
;
CueTransferBufAndAdvanceState:
    STA TileBufSelector
IncCaveState:
    INC ObjState+1
    RTS

; Params:
; A: a character of the price string
; [04]: prefix character
;
; Returns:
;   If original A is not a space:
;     A:    original character
;     [04]: original prefix character
;   Else:
;     A:    original prefix character
;     [04]: original character
;
SwapSpaceAndSign:
    CMP #$24
    BNE :+
    TAX
    LDA $04
    STX $04
:
    RTS

CopyPriceListTemplate:
    ; Copy $11 bytes of the price list template text to the dynamic transfer buf.
    ;
    LDY #$10
:
    LDA PriceListTemplateTransferBuf, Y
    STA DynTileBuf, Y
    DEY
    BPL :-
    RTS

TextboxCharTransferRecTemplate:
    .BYTE $21, $A4, $01, $24, $FF

TextboxLineAddrsLo:
    .BYTE $C4, $E4, $A4

UpdatePersonState_Textbox:
    JSR Link_EndMoveAndDraw_Bank1
    ; If the person's timer has not expired, then return.
    ;
    LDA ObjTimer+1
    BNE @Exit
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
    LDA TextboxCharTransferRecTemplate, Y
    STA DynTileBuf, Y
    DEY
    BPL :-
@WriteChar:
    ; Replace the low byte of the VRAM address with the one
    ; where the next character should be written.
    ;
    LDA PersonTextPtr
    STA DynTileBuf+1
    ; Increment the low VRAM address for the next character.
    ;
    INC PersonTextPtr
    ; Use the person text selector to look up the address of the
    ; text for the textbox. Store the address in [00:01].
    ;
    LDY PersonTextSelector
    LDA PersonTextAddrs, Y
    STA $00
    INY
    LDA PersonTextAddrs, Y
    STA $01
    ; Load the person text current character index.
    ;
    LDY PersonTextIndex
    ; Increment the index variable to point to the next character
    ; for next time.
    ;
    INC PersonTextIndex
    ; Get the current character.
    ;
    LDA ($00), Y
    ; If the character is $25, then it's a special space. It will still
    ; take up space, but will not take time to show -- meaning that
    ; we'll go look up the next character to transfer.
    ;
    AND #$3F
    CMP #$25
    BEQ @WriteChar
    ; We have a non-space character. Put it in the transfer record.
    ;
    STA DynTileBuf+3
    ; Play the "heart taken/character" sound effect.
    ;
    LDA #$10
    STA Tune0Request
    ; If the high 2 bits of character element = 0, then return.
    ;
    LDA ($00), Y
    AND #$C0
    BEQ @Exit
    ; Determine an index based on the high 2 bits of the character element:
    ;   $80: 0
    ;   $40: 1
    ;   $C0: 2
    ;
    LDY #$02
    CMP #$C0
    BEQ @ChangeLine
    DEY
    CMP #$40
    BEQ @ChangeLine
    DEY
@ChangeLine:
    ; The index chooses the low VRAM address of the start
    ; of another line:
    ;   0: $C4: front of the second line
    ;   1: $E4: front of the third line
    ;   2: $A4: front of the first line
    ;
    ; Look up the low VRAM address and store it.
    ;
    LDA TextboxLineAddrsLo, Y
    STA PersonTextPtr
    ; If index = 2, then we've reached the end of the text,
    ; and low VRAM address is moved to the front of the first line.
    ; So, advance the state of the person object, and unhalt Link.
    ;
    CPY #$02
    BNE @Exit
    INC ObjState+1
    JSR UnhaltLink
@Exit:
    RTS

UpdateCavePersonState_TalkOrShopOrDoorCharge:
    ; If the cave flags call for choosing an item, then
    ; go handle those kinds of caves.
    ;
    LDA CaveFlags
    LSR                         ; Cave flag: Choose/Pick up (1)
    BCS @CheckPickUp
    ; Advance to the end state, where the person is still shown.
    ;
    LDA #$08
    STA ObjState+1
    ; If this is not the "door charge" old man, then return.
    ; The person only talks.
    ;
    LDA ObjType+1
    CMP #$71
    BNE @Exit
    ; Post 20 rupees to subtract.
    ;
    LDA RupeesToSubtract
    CLC
    ADC #$14
    STA RupeesToSubtract
    ; Mark this secret taken.
    ;
    JSR SetRoomFlagUWItemState
@Exit:
    RTS

@CheckPickUp:
    ; This is a cave where the player chooses or touches an item:
    ; - give item
    ; - shop
    ; - hint
    ; - money game
    ;
    ; If rupees are decreasing, then return.
    ;
    LDA RupeesToSubtract
    BNE @Exit
    ; Loop over each item from 2 to 0.
    ;
    LDX #$02
@LoopWare:
    ; If this item is nothing, then loop again.
    ;
    LDA CaveItemIds, X
    AND #$3F                    ; Mask off the cave flags.
    CMP #$3F                    ; No item
    BEQ @NextWare
    ; If Link's X <> item's X, then loop again.
    ;
    LDA ObjX
    CMP CaveWareXs, X
    BNE @NextWare
    ; If the vertical distance between Link and the item < 6, then
    ; go try to take it.
    ;
    LDA ObjY
    SEC
    SBC #$98
    JSR Abs
    CMP #$06
    BCC @PickedUp
@NextWare:
    ; Bottom of the item touch loop.
    ;
    DEX
    BPL @LoopWare
    RTS

@PickedUp:
    ; Store the index of the item chosen.
    ;
    STX CaveChosenIndex
    ; If hint and money game cave flags are missing, then
    ; go take an item given away, or buy it.
    ;
    LDA CaveFlags
    AND #$30                    ; Cave flags: Hint and Money game
    BEQ @PickedUpWare
    ; If have cave flag "money game", then go to state 5 and return.
    ;
    AND #$10
    BEQ @MadeWager
    ; Else have "hint" cave flag.
    ;
    ; If rupees < price, then return.
    ;
    LDA InvRupees
    CMP CavePrices, X
    BCC Exit
    ; Pass the price to pay for the hint.
    ;
    LDA CavePrices, X
    JSR PostDebit
@MadeWager:
    ; Go to state 5. It runs the hint cave and money game.
    ;
    LDA #$05
    STA ObjState+1
    RTS

@PickedUpWare:
    ; This is a shop, or something is being given away.
    ;
    ; If "pay" cave flag is missing, then go try to take the item.
    ;
    LDA CaveFlags
    AND #$02
    BEQ @TryToTake
    ; If rupees < price, then return.
    ;
    LDA InvRupees
    CMP CavePrices, X
    BCC Exit
    ; Pass the price to pay for the item.
    ;
    LDA CavePrices, X
    JSR PostDebit
@TryToTake:
    ; If "heart requirement" cave flag is missing, then
    ; go to take the item without further ado.
    ;
    LDA CaveFlags
    AND #$40
    BEQ @Take
    ; Check heart container requirements.
    ;
    ; 5 is the minimum for cave type $6C (white sword)
    ; $C is the minimum otherwise
    ;
    LDY #$40
    LDA ObjType+1
    CMP #$6C
    BEQ :+
    LDY #$B0
:
    CPY HeartValues
    ; If the minimum of heart containers is met, then
    ; go take the item without further ado.
    ;
    BEQ @Take
    BCC @Take
; Unknown block
    .BYTE $60

@Take:
    JSR SetRoomFlagUWItemState
    LDA CaveItemIds, X
    AND #$3F                    ; Mask off the cave flags.
    PHA                         ; Push the item ID
    ; Flag the item taken by setting its ID to $FF.
    ;
    LDA #$FF
    STA CaveItemIds, X
    PLA                         ; Pop the item ID
    JSR TakeItem
    LDA #$1E                    ; Blank textbox lines
    JSR CueTransferBufAndAdvanceState
    ; Set timer to $40 for when we delay in state 4.
    ;
    LDA #$40
    STA ObjTimer+1
ClearPricesCaveFlag:
    ; Remove the "show prices" cave flag to get rid of the generic rupee.
    ;
    LDA CaveFlags
    AND #$F7
    STA CaveFlags
Exit:
    RTS

UpdatePersonState_DelayThenHide:
    LDA ObjTimer+1
    BNE L493A_Exit
    STA ObjType+1
L493A_Exit:
    RTS

HintCaveTextSelectors0:
    .BYTE $14, $14, $16

HintCaveTextSelectors1:
    .BYTE $14, $18, $1A

UpdateCavePersonState_HintOrMoneyGame:
    ; If "hint" cave flag is missing, then go handle the money game.
    ;
    LDA CaveFlags
    AND #$10
    BEQ @HandleMoneyGameOrGiveaway
    ; If cave type = $75, then use 0 for base offset of
    ; the first set of text selectors, else 3 for the second.
    ;
    LDA #$00
    LDY ObjType+1
    CPY #$75
    BEQ :+
    LDA #$03
:
    CLC
    ; Add the base offset and the index of the item chosen
    ; to get the index of a text selector.
    ;
    ADC CaveChosenIndex
    TAY
    ; Look up text selector by the index calculated above.
    ;
    LDA HintCaveTextSelectors0, Y
    STA PersonTextSelector
    ; Point to the front of the first line of the textbox.
    ;
    LDA TextboxLineAddrsLo+2
    STA PersonTextPtr
    ; Reset the character index.
    ;
    LDA #$00
    STA PersonTextIndex
    JSR ClearPricesCaveFlag
    LDA #$1E                    ; Blank textbox lines
    JMP CueTransferBufAndAdvanceState

@HandleMoneyGameOrGiveaway:
    ; If cave type < $7B, then go handle the money game.
    ;
    ; This is a moblin giving away money.
    ;
    LDA ObjType+1
    CMP #$7B
    BCC @HandleMoneyGame
    JSR CopyPriceListTemplate
    ; Write a price list into the dynamic transfer buf,
    ; but with a space instead of "X".
    ;
    LDA #$24
    JSR WritePricesToDynamicTransferBuf
    LDA #$08                    ; "key taken" sound effect
    STA Tune0Request
    JSR SetRoomFlagUWItemState
    ; Go to state 8 to do nothing but show the person.
    ;
    LDA #$08
    STA ObjState+1
    ; Post the middle amount in [0431] to add.
    ;
    LDA CavePrices+1
    JMP PostCredit

@HandleMoneyGame:
    ; Money game
    ;
    ; If rupees < $A, then return.
    ;
    LDA InvRupees
    CMP #$0A
    BCC L493A_Exit
    LDA #$08                    ; "key taken" sound effect
    STA Tune0Request
    ; Copy amounts in [0448][Y] for money game to prices [0430][Y].
    ;
    LDY #$02
:
    LDA MoneyGameAmounts, Y
    STA CavePrices, Y
    DEY
    BPL :-
    JSR WritePricesTransferBuf
    ; Go to state 8 to do nothing but show the person.
    ;
    LDA #$08
    STA ObjState+1
    ; Prepend the sign to each money game amount.
    ;
    LDY #$01
    LDA MoneyGameAmounts+0
    JSR PrependSignToPrice
    LDY #$05
    LDA MoneyGameAmounts+1
    JSR PrependSignToPrice
    LDY #$09
    LDA MoneyGameAmounts+2
    JSR PrependSignToPrice
    ; If the amount chosen = 20 or 50, then add it;
    ; else subtract it.
    ;
    LDX CaveChosenIndex
    LDA MoneyGameAmounts, X
    CMP #$14
    BEQ PostCredit
    CMP #$32
    BNE PostDebit
PostCredit:
    CLC
    ADC RupeesToAdd
    STA RupeesToAdd
    RTS

; Params:
; A: amount
;
; Add the amount paid to the rupees to subtract.
;
PostDebit:
    CLC
    ADC RupeesToSubtract
    STA RupeesToSubtract
    RTS

; Params:
; A: price
; Y: offset from first character after "X"
;
; If the amount is $14 or $32, then use "+", else "-".
;
PrependSignToPrice:
    LDX #$64
    CMP #$14
    BEQ :+
    CMP #$32
    BEQ :+
    LDX #$62
:
    ; Copy the character to the first element after the "X",
    ; offset by the parameter.
    ;
    TXA
    STA DynTileBuf+4, Y
UpdateCavePersonState_DoNothing:
    RTS

UpdatePersonState_CueTransferBlankPersonWares:
    LDA #$2A                    ; Also blanks the third line of text.
    JMP CueTransferBufAndAdvanceState

InitUnderworldPerson_Full:
    ; Point to the front of the first line in VRAM.
    ;
    LDA TextboxLineAddrsLo+2
    STA PersonTextPtr
    LDA CurLevel
    JSR TableJump
InitUnderworldPerson_Full_JumpTable:
    .ADDR InitUnderworldPerson_DoNothing
    .ADDR InitUnderworldPersonA
    .ADDR InitUnderworldPersonA
    .ADDR InitUnderworldPersonB
    .ADDR InitUnderworldPersonB
    .ADDR InitUnderworldPersonA
    .ADDR InitUnderworldPersonB
    .ADDR InitUnderworldPersonA
    .ADDR InitUnderworldPersonB
    .ADDR InitUnderworldPersonC

UnderworldPersonTextSelectorsA:
    .BYTE $28, $26, $2E, $30, $32, $3E, $3E, $34

InitUnderworldPersonA:
    ; The person goes at location ($78, $80).
    ;
    LDA #$78
    LDY #$80
    JSR SetUpCommonCaveObjects
    ; Subtract $4B from the object type to get the old man's index.
    ;
    LDA ObjType, X
    SEC
    SBC #$4B
    TAY
    ; Look up and store the text selector.
    ;
    LDA UnderworldPersonTextSelectorsA, Y
    STA PersonTextSelector
    ; If this is the man that offers more bomb capacity, then
    ; go see if the offer was flagged as already taken.
    ;
    LDA ObjType+1
    CMP #$4F
    BNE L_PlayCharacterSfx
    BEQ UnderworldPerson_DestroyIfTaken
InitUnderworldPersonLifeOrMoney_Full:
    ; The person goes at location ($78, $80).
    ;
    LDA #$78
    LDY #$80
    JSR SetUpCommonCaveObjects
    ; Set text selector for "life or money".
    ;
    LDA #$36
    STA PersonTextSelector
    ; Point to the front of the first line in VRAM.
    ;
    LDA TextboxLineAddrsLo+2
    STA PersonTextPtr
UnderworldPerson_DestroyIfTaken:
    ; Destroy this object if the secret/item was already taken.
    ;
    JSR GetRoomFlagUWItemState
    BEQ L_PlayCharacterSfx
    LDA #$00
    STA ObjState
    JMP DestroyMonster

L_PlayCharacterSfx:
    JMP PlayCharacterSfx

UnderworldPersonTextSelectorsB:
    .BYTE $2A, $38, $3A, $2C, $40, $42, $42, $3C

InitUnderworldPersonB:
    ; The person goes at location ($78, $80).
    ;
    LDA #$78
    LDY #$80
    JSR SetUpCommonCaveObjects
    ; Subtract $4B from the object type to get the old man's index.
    ;
    LDA ObjType, X
    SEC
    SBC #$4B
    TAY
    ; Look up and store the text selector.
    ;
    LDA UnderworldPersonTextSelectorsB, Y
    STA PersonTextSelector
    JMP PlayCharacterSfx

UnderworldPersonTextSelectorsC:
    .BYTE $44, $46, $48, $4A

InitUnderworldPersonC:
    ; The person goes at location ($78, $80).
    ;
    LDA #$78
    LDY #$80
    JSR SetUpCommonCaveObjects
    JSR PlayCharacterSfx
    LDA ObjType, X
    PHA                         ; Save the object type.
    ; Subtract $4B from the object type to get the old man's index.
    ;
    SEC
    SBC #$4B
    TAY
    ; Look up and store the text selector.
    ;
    LDA UnderworldPersonTextSelectorsC, Y
    STA PersonTextSelector
    PLA                         ; Restore the object type.
    ; Return, if this is not the man at the entrance of Level 9,
    ; or Link has not gotten all the triforce pieces.
    ;
    CMP #$4B
    BNE @Exit
    LDA InvTriforce
    CMP #$FF
    BNE @Exit
    ; Otherwise, open the shutters, and destroy this object.
    ;
    LDA #$01
    STA ShutterTrigger
    LSR
    STA ObjState
    JSR DestroyMonster
@Exit:
    RTS

InitGrumble_Full:
    ; Grumble Goriya goes at location ($78, $80).
    ;
    LDA #$78
    LDY #$80
    JSR SetUpCommonCaveObjects
    ; Store text selector $24.
    ;
    LDA #$24
    STA PersonTextSelector
    ; Set the low VRAM address of the first character to transfer
    ; to the front of the first line in NT0. It's at index 2.
    ;
    LDA TextboxLineAddrsLo+2
    STA PersonTextPtr
    ; If Grumble already got the food, then
    ; reset his type and state to get rid of him.
    ;
    JSR GetRoomFlagUWItemState
    BEQ PlayCharacterSfx
    LDA #$00
    STA ObjState
    STA ObjType+1
    RTS

PlayCharacterSfx:
    LDA #$08                    ; "item taken/character" sound effect
    STA Tune1Request
    RTS

UpdateUnderworldPerson_Full:
    ; If level is not one of {3, 4, 6, 8, 9}, then
    ; go handle people that do more than talk.
    ;
    LDA CurLevel
    CMP #$03
    BCC :+
    CMP #$05
    BEQ :+
    CMP #$07
    BNE @DrawAndCheckCollisions
:
    JMP UpdateUnderworldPersonComplex

@DrawAndCheckCollisions:
    ; Else simply draw, check collisions, and show the text.
    ;
    JSR Person_DrawAndCheckCollisions
    LDA ObjState+1
    JSR TableJump
UpdateUnderworldPerson_Full_JumpTable:
    .ADDR UpdatePersonState_ResetCharOffset
    .ADDR UpdatePersonState_Textbox
    .ADDR UpdatePersonState_DoNothing

UpdatePersonState_ResetCharOffset:
    LDA #$00
    STA PersonTextIndex
    INC ObjState+1
UpdatePersonState_DoNothing:
    RTS

Person_CheckCollisions:
    JSR CheckMonsterCollisions
    ; If the person died, then Link hit him. So, start shooting
    ; fireballs, then reset the metastate, so that he's not dead.
    ;
    LDA ObjMetastate+1
    BEQ :+
    STA PersonFireballsEnabled
    LDA #$00
    STA ObjMetastate+1
:
    RTS

UpdateUnderworldPersonComplex:
    ; In state 4, the person is shown every other frame.
    ;
    LDA ObjState+1
    CMP #$04
    BNE :+
    LDA FrameCounter
    AND #$01
    BNE @HandleState
:
    JSR Person_DrawAndCheckCollisions
    ; If this is the "more bombs" man, then show a rupee
    ; at ($78, $98) using room item object slot $13.
    ;
    LDA ObjType+1
    CMP #$4F
    BNE @HandleState
    LDA #$78
    STA ObjX+19
    LDA #$98
    STA ObjY+19
    LDA #$18
    LDX #$13
    JSR AnimateItemObject
@HandleState:
    LDA ObjState+1
    JSR TableJump
UpdateUnderworldPersonComplex_JumpTable:
    .ADDR UpdateUnderworldPersonComplexState_Begin
    .ADDR UpdatePersonState_Textbox
    .ADDR UpdateUnderworldPersonComplexState_SenseLink
    .ADDR UpdatePersonState_CueTransferBlankPersonWares
    .ADDR UpdateUnderworldPersonComplexState_DelayAndQuit

UpdateUnderworldPersonComplexState_Begin:
    ; If this is the "more bombs" man, then show the price of the offer.
    ;
    LDA ObjType+1
    CMP #$4F
    BNE :+
    LDA #$6C                    ; "-100"
    STA TileBufSelector
:
    ; Set a timer of $A frames before showing characters,
    ; and go to state 1.
    ;
    LDA #$0A
    STA ObjTimer+1
    INC ObjState+1
    RTS

UpdateUnderworldPersonComplexState_SenseLink:
    ; If this is not the "more bombs" man, then return.
    ;
    LDA ObjType+1
    CMP #$4F
    BNE @Exit
    ; If Link's X <> $78, then return.
    ;
    LDA ObjX
    CMP #$78
    BNE @Exit
    ; If the distance between Link's Y and the rupee's ($98) < 6,
    ; then go see if Link can pay for it.
    ; Else return.
    ;
    LDA ObjY
    SEC
    SBC #$98
    JSR Abs
    CMP #$06
    BCC @CheckCanPay
@Exit:
    RTS

@CheckCanPay:
    ; If rupee count < 100, then return.
    ;
    LDA #$64
    CMP InvRupees
    BEQ :+
    BCS @Exit
:
    ; Post 100 rupees more to subtract.
    ;
    CLC
    ADC RupeesToSubtract
    STA RupeesToSubtract
    ; Play the "key taken" sound effect.
    ;
    LDA #$08
    STA Tune0Request
    ; Increase max bombs by 4, set the amount on hand to the max.
    ;
    LDA MaxBombs
    CLC
    ADC #$04
    STA MaxBombs
    STA InvBombs
    ; Go mark this offer taken.
    ;
    JMP L_Person_FlagItemTakenAndAdvanceState

UpdateUnderworldPersonComplexState_DelayAndQuit:
    ; If the object timer has expired, then destroy this object.
    ;
    LDA ObjTimer+1
    BNE :+
    STA ObjType+1
:
    RTS

Person_DrawAndCheckCollisions:
    JSR Person_CheckCollisions
    JSR Anim_FetchObjPosForSpriteDescriptor
    JMP DrawObjectMirrored

UpdateUnderworldPersonLifeOrMoney_Full:
    ; In state 4, this person and the items are drawn every other frame.
    ;
    LDA ObjState+1
    CMP #$04
    BNE @Draw
    LDA FrameCounter
    AND #$01
    BNE :+
@Draw:
    JSR Person_DrawAndCheckCollisions
    JSR DrawLifeOrMoneyItems
:
    LDA ObjState+1
    JSR TableJump
UpdateUnderworldPersonLifeOrMoney_Full_JumpTable:
    .ADDR UpdateUnderworldPersonLifeOrMoneyState_0
    .ADDR UpdatePersonState_Textbox
    .ADDR UpdateUnderworldPersonLifeOrMoneyState_2
    .ADDR UpdatePersonState_CueTransferBlankPersonWares
    .ADDR UpdateUnderworldPersonComplexState_DelayAndQuit

LifeOrMoneyItemXs:
    .BYTE $58, $98

LifeOrMoneyItemTypes:
    .BYTE $1A, $18

DrawLifeOrMoneyItems:
    ; Loop over each item to draw, from 1 to 0.
    ;
    LDX #$01
@LoopWare:
    TXA                         ; Save loop index.
    PHA
    ; Look up and set the X coordinate of the item.
    ;
    LDA LifeOrMoneyItemXs, X
    STA ObjX+19
    ; Set Y=$98, and look up the item type.
    ;
    LDA #$98
    STA ObjY+19
    LDA LifeOrMoneyItemTypes, X
    ; Switch to the room item object slot.
    ;
    LDX #$13
    JSR AnimateItemObject
    PLA                         ; Restore loop index.
    TAX
    DEX
    BPL @LoopWare
    RTS

UpdateUnderworldPersonLifeOrMoneyState_0:
    ; Delay in the next state $A frames before showing the first character.
    ;
    LDA #$0A
    STA ObjTimer+1
    LDA #$76                    ; "-1   -50" text selector
    JMP CueTransferBufAndAdvanceState

UpdateUnderworldPersonLifeOrMoneyState_2:
    ; Loop over each item to check, from 1 to 0.
    ;
    LDX #$01
@LoopWare:
    ; If Link's X doesn't match the item's, then go loop again.
    ;
    LDA ObjX
    CMP LifeOrMoneyItemXs, X
    BNE @NextWare
    ; If the vertical distance between the item and Link < 6, then
    ; go handle paying appropriately.
    ;
    LDA ObjY
    SEC
    SBC #$98
    JSR Abs
    CMP #$06
    BCC @Pay
@NextWare:
    DEX
    BPL @LoopWare
@Exit:
    RTS

@Pay:
    ; If the player chose the heart container, go handle it.
    ;
    CPX #$00
    BEQ @PayWithHeartContainer
    ; The player chose the money.
    ; But if he doesn't have enough, then return.
    ;
    LDA #$32
    CMP InvRupees
    BEQ @PayWithMoney
    BCS @Exit
@PayWithMoney:
    ; Post 50 rupees more to subtract, and go flag this offer taken.
    ;
    CLC
    ADC RupeesToSubtract
    STA RupeesToSubtract
    JMP @EndLifeOrMoney

@PayWithHeartContainer:
    ; The player chose the heart container.
    ;
    ; If the number of heart containers < 4, then
    ; - leave the number of heart containers alone
    ; - set HeartPartial to 0, so Link will die with one more hit
    ;
    ; Then go flag this offer taken.
    ;
    LDA HeartValues
    AND #$F0
    CMP #$30
    BCS @Reduce
    STA HeartValues
    LDA #$00
    STA HeartPartial
    JMP @EndLifeOrMoney

@Reduce:
    ; Store (HeartValues - 1 heart container) in [00].
    ;
    LDA HeartValues
    PHA
    AND #$F0
    SEC
    SBC #$10
    STA $00
    ; Get (HeartValues - 1 heart)
    ;
    PLA
    AND #$0F
    SEC
    SBC #$01
    ; If the result is negative, then make the full hearts 0.
    ;
    BPL :+
    LDA #$00
:
    ; Combine the heart containers and full hearts, and store it.
    ;
    ORA $00
    STA HeartValues
@EndLifeOrMoney:
    LDA #$08                    ; "key taken" sound effect
    STA Tune0Request
    LDA #$01
    STA ShutterTrigger
    JMP L_Person_FlagItemTakenAndAdvanceState

UpdateGrumble_Full:
    ; If state <> 3, then go check collisions and draw every frame.
    ;
    LDA ObjState+1
    CMP #$03
    BNE @DrawAndCheckCollisions
    ; In state 3, the person is translucent by drawing
    ; (and checking object collisions) every other frame.
    ;
    LDA FrameCounter
    AND #$01
    BNE :+
@DrawAndCheckCollisions:
    JSR Person_CheckCollisions
    JSR Anim_FetchObjPosForSpriteDescriptor
    JSR DrawObjectNotMirrored
:
    LDA ObjState+1
    JSR TableJump
UpdateGrumble_Full_JumpTable:
    .ADDR UpdatePersonState_Textbox
    .ADDR UpdateGrumble1
    .ADDR UpdatePersonState_CueTransferBlankPersonWares
    .ADDR UpdateGrumble3

UpdateGrumble1:
    ; If there's no food in object slot $F, then return.
    ;
    LDY #$0F
    LDA a:ObjState, Y
    ASL
    BCC InitUnderworldPerson_DoNothing
    ; Else halt Link and play the "secret found" tune.
    ;
    LDA #$40
    STA ObjState
    LDA #$04
    STA Tune1Request
L_Person_FlagItemTakenAndAdvanceState:
    ; Flag the secret/item of this room taken.
    ;
    JSR SetRoomFlagUWItemState
    ; Set object timer $40 for when we get to state 3.
    ;
    LDA #$40
    STA ObjTimer+1
    ; Cue transfer record of the blank textbox lines,
    ; and go to the next state, where a transfer record is cued
    ; to clear cave/person wares.
    ;
    LDA #$1E
    JMP CueTransferBufAndAdvanceState

UpdateGrumble3:
    JSR Link_EndMoveAndAnimate_Bank1
    ; If the timer has not expired, then return.
    ;
    LDA ObjTimer+1
    BNE InitUnderworldPerson_DoNothing
    ; Deactivate the food object in slot $F.
    ;
    LDY #$0F
    STA a:ObjState, Y
    ; Get rid of the food from the inventory.
    ;
    STA InvFood
    ; Make Link idle again, and reset this object's type.
    ;
    STA ObjState
    STA ObjType+1
InitUnderworldPerson_DoNothing:
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
    .BYTE $FF, $FF

CopyCommonCodeToRam:
    LDA #$00                    ; Source address $A500.
    STA $00
    LDA #$A5
    STA $01
    LDA #$90                    ; Destination address $6C90.
    STA $02
    LDA #$6C
    STA $03
    LDY #$00
@Loop:
    LDA ($00), Y                ; Copy 1 byte.
    STA ($02), Y
    ; Increment source address.
    ;
    LDA $00
    CLC
    ADC #$01
    STA $00
    LDA $01
    ADC #$00
    STA $01
    ; Increment destination address.
    ;
    LDA $02
    CLC
    ADC #$01
    STA $02
    LDA $03
    ADC #$00
    STA $03
    CMP #$7F                    ; Once you reach $7F00, you're done.
    BNE @Loop
    LDA $02
    CMP #$00
    BNE @Loop
    RTS

DemoPatternBlockAddrs:
    .ADDR DemoSpritePatterns
    .ADDR DemoBackgroundPatterns

DemoPatternBlockSizes:
    .DBYT $0900
    .DBYT $0820

DemoPatternVramAddrs:
    .DBYT $0700
    .DBYT $1700

TransferDemoPatterns:
    JSR TurnOffAllVideo
    LDA PpuStatus_2002          ; Clear address latch.
@LoopBlock:
    ; Loop over each block.
    ;
    LDA PatternBlockIndex
    ASL
    TAX
    ; Put block address in [00:01] and size in [03:02].
    ; Load destination VRAM address and set it.
    ; The size and VRAM address have the high byte first.
    ;
    LDA DemoPatternBlockAddrs, X
    STA $00
    LDA DemoPatternBlockSizes, X
    STA $02
    LDA DemoPatternVramAddrs, X
    STA PpuAddr_2006
    INX
    LDA DemoPatternBlockAddrs, X
    STA $01
    LDA DemoPatternBlockSizes, X
    STA $03
    LDA DemoPatternVramAddrs, X
    JSR TransferPatternBlock_Bank1
    ; Loop until pattern block index = 2.
    ;
    LDA PatternBlockIndex
    CMP #$02
    BNE @LoopBlock
    LDA #$A5
    STA TransferredDemoPatterns
    LDA #$00
    STA PatternBlockIndex
    RTS

; Params:
; [00:01]: source address
; [03:02]: size
; A: low byte of desination VRAM address
;
TransferPatternBlock_Bank1:
    STA PpuAddr_2006
    LDY #$00
@Loop:
    ; Load and transfer one byte to VRAM.
    ;
    LDA ($00), Y
    STA PpuData_2007
    ; Increment the 16-bit address at [00:01].
    ;
    LDA $00
    CLC
    ADC #$01
    STA $00
    LDA $01
    ADC #$00
    STA $01
    ; Decrement the 16-bit amount at [03:02].
    ;
    LDA $03
    SEC
    SBC #$01
    STA $03
    LDA $02
    SBC #$00
    STA $02
    ; Loop again if the amount left <> 0.
    ;
    LDA $02
    BNE @Loop
    LDA $03
    BNE @Loop
    ; This block is done. Increment the block index.
    ;
    INC PatternBlockIndex
    RTS

DemoSpritePatterns:
.INCBIN "dat/DemoSpritePatterns.dat"

DemoBackgroundPatterns:
.INCBIN "dat/DemoBackgroundPatterns.dat"

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
    .BYTE $FF, $FF, $FF, $FF

; Params:
; A: Y coordinate
; X: object index
;
InitWhirlwind:
    STA ObjY
; Params:
; X: object index
;
;
; Set the whirlwind's Y to Link's, X to 0, and type $2E.
;
SetUpWhirlwind:
    LDA ObjY
    STA ObjY, X
    LDA #$00
    STA ObjX, X
    LDA #$2E
    STA ObjType, X
    RTS

WhirlwindPrevRoomIdList:
    .BYTE $36, $3B, $73, $44, $0A, $21, $41, $6C

UpdateWhirlwind_Full:
    ; Get Link's halted state.
    ;
    LDA ObjState
    AND #$40
    TAY
    ; Add 2 to whirlwind X.
    ;
    LDA #$02
    CLC
    ADC ObjX, X
    STA ObjX, X
    ; If Link is not halted or teleporting state = 0, then
    ; go check for collision with Link.
    ;
    CPY #$40
    BNE @CheckCollision
    LDY WhirlwindTeleportingState
    BEQ @CheckCollision
    ; Else Link is halted (state $40) and teleporting state <> 0.
    ;
    ; Set Link's X to whirlwind's.
    ;
    STA ObjX
    ; If teleporting state = 1 or whirlwind's X <> $80, go check
    ; the right screen edge and draw.
    ;
    DEY
    BEQ @CheckRightEdge
    CMP #$80
    BNE @CheckRightEdge
    ; Teleporting state = 2 and whirlwind's X = $80.
    ;
    ; Reset Link's state, teleporting state, and whirlwind object type.
    ;
    ASL
    STA ObjState
    STA WhirlwindTeleportingState
    STA ObjType, X
    ; Update the player position marker, and draw one last time.
    ;
    TXA
    PHA
    JSR UpdatePlayerPositionMarker
    PLA
    TAX
    JMP @Draw

@CheckCollision:
    ; Link is not halted or teleporting state = 0.
    ; Try to pick up Link.
    ;
    ; If the whirlwind does not collide with Link, then go check
    ; for the screen's right edge.
    ;
    JSR CheckLinkCollision
    LDA $06
    BEQ @CheckRightEdge
    ; Collided with Link.
    ;
    ; Make Link face right. Reset shove info and subroom type.
    ;
    LDA #$01
    STA ObjDir
    LSR
    STA ObjShoveDir
    STA ObjShoveDistance
    STA UndergroundExitType
    ; Halt Link (state $40), and hide him.
    ;
    LDA #$40
    STA ObjState
    LDA #$F8
    STA Sprites+72
    STA Sprites+76
    ; Find and set the room that will behave as the previous room
    ; when scrolling right to the room with the level's entrance.
    ;
    LDA TeleportingLevelIndex
    AND #$07
    TAY
    LDA WhirlwindPrevRoomIdList, Y
    STA WhirlwindPrevRoomId
    ; Set teleporting state 1.
    ;
    INC WhirlwindTeleportingState
@CheckRightEdge:
    ; If whirlwind's X < $F0, go draw.
    ;
    LDA ObjX, X
    CMP #$F0
    BCC @Draw
    ; The whirlwind has reached the right edge of the screen.
    ;
    ; Destroy the object.
    ;
    JSR DestroyWhirlwind
    ; If teleporting state <> 0, we picked up Link.
    ; So, go to the next mode.
    ;
    ; Either way, draw one last time.
    ;
    LDA WhirlwindTeleportingState
    BEQ @Draw
    TXA
    PHA
    JSR GoToNextModeFromPlay
    PLA
    TAX
@Draw:
    JMP DrawWhirlwind

DestroyWhirlwind:
    LDA #$00
    STA ObjType, X
    STA ObjShoveDir, X
    STA ObjShoveDistance, X
    STA ObjTimer, X
    STA ObjState, X
    STA ObjInvincibilityTimer, X
    LDA #$FF
    STA ObjUninitialized, X
    LDA #$01
    STA ObjMetastate, X
    RTS

SummonWhirlwind:
    ; If not in mode 5, return.
    ;
    LDA GameMode
    CMP #$05
    BNE L6104_Exit
    ; Advance the teleporting index, and store the mask for its level in [00].
    ;
    JSR AdvanceTeleportingLevelIndex
    LDA TeleportingLevelIndex
    AND #$07                    ; Truncate to wrap the index around.
    TAY
    LDA LevelMasks, Y           ; Note that this is from element 1 instead of 0.
    STA $00
@LoopTriforcePiece:
    ; If there are no triforce pieces, then return.
    ;
    LDA InvTriforce
    BEQ L6104_Exit
    ; If we have gotten this triforce piece, then go try to make a
    ; whirlwind.
    ;
    BIT $00
    BNE @MakeWhirlwind
    ; We have not gotten this piece.
    ; First, advance the teleporting index again.
    ;
    JSR AdvanceTeleportingLevelIndex
    ; If the direction Link is facing is an increasing one, then
    ; rotate the level mask in [00] left to correspond to the higher
    ; level number. Then go test this new mask.
    ;
    LDA ObjDir
    AND #$09
    BEQ @DecreasingDir
    ASL $00
    BCC @LoopTriforcePiece
    ROL $00
    JMP @LoopTriforcePiece

@DecreasingDir:
    ; If instead the direction is a decreasing one, then
    ; rotate right to correspond to the lower level number.
    ; Then go test this new mask.
    ;
    LSR $00
    BCC @LoopTriforcePiece
; Unknown block
    .BYTE $66, $00, $4C, $BC, $A0

@MakeWhirlwind:
    ; If already summoned or in the middle of teleporting, then
    ; return and don't summon another one.
    ;
    LDA SummonedWhirlwind
    ORA WhirlwindTeleportingState
    BNE L6104_Exit
    ; Return if we can't find an empty monster slot.
    ;
    JSR FindEmptyMonsterSlot
    BEQ L6104_Exit
    ; An empty slot was found. Flag that summoned the whirlwind.
    ; Switch to the empty slot, and go set up a whirlwind object.
    ;
    INC SummonedWhirlwind
    TYA
    TAX
    JMP SetUpWhirlwind

AdvanceTeleportingLevelIndex:
    ; If Link is facing an increasing direction (right or down), then
    ; increase the index. Otherwise, decrease it.
    ;
    INC TeleportingLevelIndex
    LDA ObjDir
    AND #$09
    BNE L6104_Exit
    DEC TeleportingLevelIndex
    DEC TeleportingLevelIndex
L6104_Exit:
    RTS

DrawWhirlwind:
    ; Frames last 1 screen frame.
    ;
    LDA #$01
    JSR Anim_AdvanceAnimCounterAndSetObjPosForSpriteDescriptor
    ; The whirlwind flashes by using a palette row based on the
    ; screen frame counter.
    ;
    LDA FrameCounter
    AND #$03
    JSR Anim_SetSpriteDescriptorAttributes
    ; Flip horizontally based on movement frame, which is
    ; switched based on animation counter.
    ;
    JSR Anim_SetObjHFlipForSpriteDescriptor
    LDA #$00                    ; Whirlwind has only 1 animation frame image.
    JMP DrawObjectNotMirrored

TeleportYs:
    .BYTE $8D, $AD, $8D, $8D, $AD, $8D, $AD, $5D

CheckInitWhirlwindAndBeginUpdate:
    LDA WhirlwindTeleportingState
    BEQ :+                      ; If not teleporting, go start updating the mode.
    ; Since we're already teleporting, the source room was
    ; already done. Set up the whirlwind object in destination room.
    ;
    ; Teleporting state 2 drops off Link.
    ;
    INC WhirlwindTeleportingState
    LDA #$40                    ; Halt Link (state $40).
    STA ObjState
    LDX #$09                    ; Whirlwind object goes in slot 9 in destination room.
    LDA TeleportingLevelIndex   ; Get Y coordinate of whirlwind in this destination.
    AND #$07
    TAY
    LDA TeleportYs, Y
    JSR InitWhirlwind
:
    JMP BeginUpdateMode

; Params:
; [0F]: movement direction
;
; Returns:
; [0F]: untouched, or 0
;
;
; Look for a tile object among objects 1 to 12 that can block
; the player's movement.
;
CheckTileObjectsBlocking:
    LDX #$0C
@LoopTileObj:
    LDA ObjType, X
    CMP #$68                    ; Block
    BEQ @Found
    CMP #$62                    ; Rock
    BEQ @Found
    CMP #$65                    ; Gravestone
    BEQ @Found
    CMP #$66                    ; TODO: Armos1?
    BNE @NextTileObj            ; If it doesn't match any, go check the next object.
@Found:
    LDA ObjState, X
    CMP #$01
    BNE @NextTileObj            ; If not active, go check the next object.
    ; If X distance between Link and the object >= $10, skip it.
    ;
    LDA ObjX
    SEC
    SBC ObjX, X
    JSR Abs
    CMP #$10
    BCS @NextTileObj
    ; If Y distance between Link and the object >= $10, skip it.
    ;
    LDA ObjY
    CLC
    ADC #$03                    ; First, adjust Link's position.
    SEC
    SBC ObjY, X
    JSR Abs
    CMP #$10
    BCS @NextTileObj
    ; Link is near the object. Reset movement direction.
    ;
    LDA #$00
    STA $0F
@NextTileObj:
    DEX
    BNE @LoopTileObj
    RTS

CheckPowerTriforceFanfare:
    ; If the fanfare is not active, then return.
    ;
    LDA TriforceFanfareActive
    BEQ @Exit
    ; When Link's timer expires, go finish up the fanfare.
    ;
    LDA ObjTimer
    BEQ @EndFanfare
    ; While Link's timer is counting down, every 4 frames, switch
    ; between the level palette and the white palette.
    ;
    LDY #$18
    ; Redundant check of Link's timer that won't branch.
    ;
    LDA ObjTimer
    BEQ @FillHearts
    AND #$07
    CMP #$04
    BCC :+
    LDY #$78
:
    STY TileBufSelector
    RTS

@FillHearts:
    LDA #$02
    STA World_IsFillingHearts
    INC GameSubmode
    RTS

@EndFanfare:
    ; The fanfare is done.
    ;
    JSR ReplaceAshesPaletteRow
    LDA #$20                    ; Play the song for level 9 again.
    STA SongRequest
    LDA #$01
    STA LastBossDefeated
    LSR
    STA ObjState                ; Make Link idle and not halted.
    STA TriforceFanfareActive   ; Flag the fanfare not active.
@Exit:
    RTS

TakePowerTriforce:
    INC TriforceFanfareActive
    ; Halt Link for $C0 frames.
    ;
    LDA #$C0
    STA ObjTimer
    LDA #$40
    STA ObjState
    RTS

_UnknownPaletteTransferRecord:
    .BYTE $3F, $1C, $04, $0F, $07, $17, $27, $FF

_UnknownColorTriples:
    .BYTE $07, $17, $30, $16, $2C, $3C, $27, $06
    .BYTE $16

; Unknown block
    .BYTE $A0, $02, $D0, $06, $A0, $05, $D0, $02

ReplaceAshesPaletteRow:
    LDY #$08
    TYA
    PHA
    ; Get the dynamic transfer buf length, so we write from were we last wrote.
    ;
    LDX DynTileBufLen
    ; Copy the palette row 7 transfer record to dynamic transfer buf (8 bytes).
    ;
    LDY #$00
@CopyPaletteRecord:
    LDA _UnknownPaletteTransferRecord, Y
    STA DynTileBuf, X
    INX
    INY
    CPY #$08
    BNE @CopyPaletteRecord
    ; Update the dynamic transfer buf length.
    ;
    STX DynTileBufLen
    PLA
    TAY
    ; TODO:
    ; Replace the last 3 color bytes (brown shades) that we just
    ; copied to the dynamic transfer buf with ... (are they colors
    ; for the pile of ashes?)
    ;
    ; Note that here the dynamic transfer buf is being written with
    ; absolute offsets, instead of relative ones used in copying
    ; the base palette row transfer record.
    ;
    LDX #$02
@ReplaceColors:
    LDA _UnknownColorTriples, Y
    STA DynTileBuf+4, X
    DEY
    DEX
    BPL @ReplaceColors
    ; Switch back to the current object slot.
    ;
    LDX CurObjIndex
    RTS

; Unknown block
    .BYTE $20, $93, $FA, $A9, $0B, $4C, $DF, $77
    .BYTE $A5, $BF, $F0, $0E, $20, $14, $73, $D0
    .BYTE $09, $A9, $00, $85, $BF, $A9, $02, $8D
    .BYTE $02, $06, $60

LinkToSquareOffsetsX:
    .BYTE $00, $00, $F0, $10

LinkToSquareOffsetsY:
    .BYTE $FB, $13, $03, $03

; Returns:
; X: 0
;
;
; If grid offset <> 0 or input direction = 0, return.
;
CheckPassiveTileObjects:
    LDA ObjGridOffset
    BNE @ReturnX0
    LDA ObjInputDir
    BEQ @ReturnX0
    ; Compare the collided tile with tiles $BC to $C3.
    ; These are tiles for gravestone and armos squares.
    ;
    LDA #$BB
    STA $02                     ; [02] holds the collided tile.
    LDX #$08
    LDA ObjCollidedTile
@NextTile:
    INC $02
    DEX
    BPL @TestTile
@ReturnX0:
    LDX #$00
    RTS

@TestTile:
    CMP $02
    BNE @NextTile
    ; We'll be computing the location of the square.
    ; Start with Link's location.
    ;
    LDA ObjX
    STA $00                     ; [00] holds X coordinate
    LDA ObjY
    STA $01                     ; [01] holds Y coordinate
    LDA ObjDir
    AND #$0C
    BEQ @CheckHorizontal
    ; Link is facing vertically.
    ;
    ; If Link touched the left side of the square with the right side
    ; of his body, then add 8 to X.
    ;
    ; If Link touched the right side of the square with the left side
    ; of his body, then bitwise AND'ing with $F0 will align X with the square.
    ;
    LDA $02
    AND #$03
    TAY
    LDA $00
    CPY #$02
    BCS :+
    CLC
    ADC #$08
:
    AND #$F0
    STA $00
    JMP @FindSlot

@CheckHorizontal:
    ; Link is facing horizontally.
    ;
    ; If Link touched the top of the square with the bottom
    ; of his body, then add 8 to Y.
    ;
    LDA $02
    LSR
    BCS @FindSlot
    LDA $01
    CLC
    ADC #$08
    STA $01
@FindSlot:
    ; Look for an empty slot to instantiate a monster in.
    ; If none was found, then return.
    ;
    JSR FindEmptyMonsterSlot
    BEQ @ExitX0
    ; When dealing with objects, X usually indicates the slot number
    ; of the object. Set it to the empty slot found.
    ;
    LDX EmptyMonsterSlot
    ; Offset the coordinates we calculated by a square length
    ; in the direction Link is facing.
    ;
    ; Set the new object's location to them.
    ;
    LDA ObjDir
    JSR GetOppositeDir
    LDA $00
    CLC
    ADC LinkToSquareOffsetsX, Y
    STA ObjX, X
    LDA $01
    CLC
    ADC LinkToSquareOffsetsY, Y
    STA ObjY, X
    ; TODO: ?
    ;
    LDA ObjUninitialized, X
    BEQ @ExitX0
    ; Because armos and flying ghini fade into existence over a little time,
    ; see if one is already beginning to appear at that location.
    ; Don't instantiate another one, if there is.
    ;
    LDY #$0B
    STX $03                     ; [03] holds the index of the slot to compare to the empty one.
@FindObjAtLocation:
    CPY $03
    BEQ @NextObjAtLocation      ; Skip the empty slot we found. So go decrement index [03].
    LDA a:ObjX, Y
    CMP ObjX, X
    BNE @NextObjAtLocation      ; If there's no other object at this X, go try another.
    LDA a:ObjY, Y
    CMP ObjY, X
    BNE @NextObjAtLocation      ; If there's no other object at this Y, go try another.
    LDA ObjType, Y
    BNE @ExitX0                 ; If there's truly an object there, return without instantiating an object.
    LDA ObjUninitialized, Y
    BEQ @ExitX0                 ; If there was an initialized object at that location, return.
    BNE @ChooseObjType          ; If there was never an object there, go instantiate one.
@NextObjAtLocation:
    DEY
    BNE @FindObjAtLocation
@ChooseObjType:
    ; Choose the right object type for the tile.
    ;
    ;
    ; Armos
    LDA #$1E
    LDY $02                     ; [02] collided tile
    CPY #$C0
    BCS :+                      ; If tile >= $C0, then instantiate an armos.
    LDA #$22                    ; Flying Ghini
:
    STA ObjType, X
    ; TODO: ?
    ;
    JSR ResetObjMetastate
    LDA #$3F                    ; Fade in for $3F frames.
    STA ObjTimer, X
@ExitX0:
    LDX #$00                    ; Restore player index in X.
    RTS

RupeeStashXs:
    .BYTE $78, $70, $80, $60, $70, $80, $90, $70
    .BYTE $80, $78

RupeeStashYs:
    .BYTE $70, $80, $80, $90, $90, $90, $90, $A0
    .BYTE $A0, $B0

InitRupeeStash_Full:
    ; When initializing, this object makes other objects that
    ; each have the same object attributes and type as this one.
    ;
    LDA ObjAttr, X
    STA $01                     ; [01] holds object attributes
    LDA #$35
    STA $00                     ; [01] holds object type $35 (rupee stash)
    ; Loop over $A rupee stash objects to make
    ; -- each one now representing an individual rupee
    ;
    LDX #$0A
@LoopRupee:
    JSR InitOneSimpleObject
    ; Look up and set the coordinates for one rupee stash/rupee.
    ;
    LDA RupeeStashXs-1, X
    STA ObjX, X
    LDA RupeeStashYs-1, X
    STA ObjY, X
    DEX
    BNE @LoopRupee
    RTS

; Params:
; [00]: object type
; [01]: object attributes
;
InitOneSimpleObject:
    LDA $00
    STA ObjType, X
    LDA #$00
    STA ObjUninitialized, X
    LDA $01
    STA ObjAttr, X
    RTS

TrapXs:
    .BYTE $20, $20, $D0, $D0, $40, $B0

TrapYs:
    .BYTE $5D, $BD, $5D, $BD, $8D, $8D

InitTrap_Full:
    ; Copy this parent/generator object's attributes to [01].
    ;
    LDA ObjAttr, X
    STA $01
    ; Assume we're initializing trap object type $49 that makes 6 traps.
    ;
    LDY #$05
    ; The individual trap objects to make will be of type $49.
    ; Store it in [00].
    ;
    LDA #$49
    STA $00
    ; If the object type we're initializing is not $49 (as in it's $4A),
    ; then we'll make 4 traps.
    ;
    CMP ObjType, X
    BEQ @LoopTrap
    LDY #$03
@LoopTrap:
    ; Loop over each trap to make, from the last index (5 or 3) to 0.
    ;
    TYA
    CLC
    ; Add the loop index to the current object slot, and switch the X register to it.
    ;
    ADC CurObjIndex
    TAX
    ; Look up and set the location for this iteration's individual trap.
    ;
    LDA TrapXs, Y
    STA ObjX, X
    LDA TrapYs, Y
    STA ObjY, X
    JSR InitOneSimpleObject
    DEX
    DEY
    BPL @LoopTrap
    RTS

TrapAllowedDirs:
    .BYTE $05, $09, $06, $0A, $01, $02

UpdateTrap_Full:
    LDA ObjState, X
    BNE @UpdateMovingStates
    ; State 0. Sensing.
    ;
    ; If the absolute vertical distance between Link and the trap >= $E,
    ; then go see if the horizontal distance is shorter.
    ;
    LDA ObjY
    SEC
    SBC ObjY, X
    JSR Abs
    CMP #$0E
    BCS @CheckHorizontal
    ; Determine the horizontal direction toward Link;
    ; and if Link and the trap are at the same X, then we can't move
    ; along this axis. Go see about moving vertically.
    ;
    LDY #$01
    LDA ObjX
    CMP ObjX, X
    BEQ @CheckHorizontal
    BCS :+
    LDY #$02
:
    ; Remember the original X coordinate.
    ;
    LDA ObjX, X
@GoToState1:
    STA ObjMovingLimit, X
    ; Set facing direction to the horizontal one that we determined.
    ;
    TYA
    STA ObjDir, X
    ; If the direction we determined is not allowed for this trap, then
    ; go draw and check collisions.
    ;
    AND TrapAllowedDirs-1, X
    BEQ @DrawAndCheckCollisions
    ; Advance to state 1 with q-speed $70 (1.75 pixels a frame) (fast).
    ;
    INC ObjState, X
    LDA #$70
    STA ObjQSpeedFrac, X
@DrawAndCheckCollisions:
    JMP L_Trap_DrawAndCheckCollisions

@CheckHorizontal:
    ; If the horizontal distance between Link and the trap >= $E,
    ; then this trap definitely wasn't triggered.
    ; Go draw and check collisions.
    ;
    LDA ObjX
    SEC
    SBC ObjX, X
    JSR Abs
    CMP #$0E
    BCS @DrawAndCheckCollisions
    ; Determine the vertical direction toward Link;
    ; and if Link and the trap are at the same Y, then we can't move
    ; along this axis. Go draw and check object collisions.
    ;
    LDY #$04
    LDA ObjY
    CMP ObjY, X
    BEQ @DrawAndCheckCollisions
    BCS :+
    LDY #$08
:
    ; We'll advance to state 1. Go remember the original Y coordinate,
    ; set the vertical direction we determined, and other preparations.
    ;
    LDA ObjY, X
    BNE @GoToState1
@UpdateMovingStates:
    ; State 1 and 2.
    ;
    ; Move in the direction it's facing.
    ;
    LDA ObjDir, X
    STA $0F
    JSR MoveObject
    ; Truncate the grid offset to square length ($10).
    ;
    LDA ObjGridOffset, X
    AND #$0F
    BNE :+
    STA ObjGridOffset, X
:
    ; The trap cannot be harmed. So, only check for collision with Link.
    ;
    JSR CheckLinkCollision
    ; If moving horizontally, then set target coordinate in [00] to $78
    ; and current coordinate to the trap's X.
    ;
    LDY ObjX, X
    LDA #$78
    STA $00
    LDA ObjDir, X
    AND #$0C
    BEQ @Finish
    ; Else moving vertically. Set target coordinate in [00] to $90
    ; and current coordinate to the trap's Y.
    ;
    LDY ObjY, X
    LDA #$90
    STA $00
@Finish:
    ; If in state 2, then go finish handling it.
    ;
    LDA ObjState, X
    AND #$01
    BEQ @FinishState2
    ; Finish handling state 1.
    ;
    ; Get the distance between the current coordinate and the target.
    ;
    TYA
    SEC
    SBC $00
    JSR Abs
    ; If distance >= 5, go draw.
    ;
    CMP #$05
    BCS @Draw
    ; Else reverse direction, and advace to state 2
    ; with q-speed $20 (0.5 pixels a frame) (slow).
    ;
    LDA ObjDir, X
    JSR GetOppositeDir
    STA ObjDir, X
    LDA #$20
    STA ObjQSpeedFrac, X
    INC ObjState, X
@Draw:
    JMP L_Trap_DrawAndCheckCollisions

@FinishState2:
    ; Finish handling state 2.
    ;
    ; If the current coordinate = original coordinate, then go to state 0.
    ;
    TYA
    CMP ObjMovingLimit, X
    BNE L_Trap_DrawAndCheckCollisions
    LDA #$00
    STA ObjState, X
L_Trap_DrawAndCheckCollisions:
    JMP Person_DrawAndCheckCollisions_Common

UpdateRupeeStash_Full:
    TXA                         ; Save the current object slot.
    PHA
    ; If Link is not close enough (< 9 pixels in both axes), then
    ; go draw.
    ;
    LDA ObjY
    SEC
    SBC ObjY, X
    JSR Abs
    CMP #$09
    BCS @DrawRupee
    LDA ObjX
    SEC
    SBC ObjX, X
    JSR Abs
    CMP #$09
    BCS @DrawRupee
    ; Else Link is close enough. Add 1 rupee, and destroy this object.
    ;
    JSR TakeOneRupee
    JSR DestroyMonster
    ; Once you've taken one, it counts as taking them all
    ; once you leave the room.
    ;
    LDA #$00
    STA RoomObjCount
    JMP @ExitRestoreX

@DrawRupee:
    ; Draw a rupee.
    ;
    JSR Anim_FetchObjPosForSpriteDescriptor
    LDX #$16                    ; Rupee item slot
    LDY #$16                    ; Rupee item slot
    JSR DrawItemInInventory
@ExitRestoreX:
    PLA                         ; Restore the current object slot.
    TAX
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
    .BYTE $FF, $FF, $FF, $FF, $FF

CommonCodeBlock_Bank1:

.SEGMENT "BANK_01_CODE"


; Imports from program bank 02

.IMPORT SwitchBank_Local2

; Imports from program bank 04

.IMPORT Gohma_HandleWeaponCollision

; Imports from program bank 05

.IMPORT CopyColumnToTileBuf
.IMPORT InitMode_EnterRoom
.IMPORT ResetInvObjState
.IMPORT SetMMC1Control_Local5
.IMPORT SwitchBank_Local5

; Imports from RAM code bank 06

.IMPORT MenuPalettesTransferBuf

; Imports from program bank 07

.IMPORT Anim_FetchObjPosForSpriteDescriptor
.IMPORT AnimateObjectWalking
.IMPORT EndGameMode
.IMPORT GetRoomFlags
.IMPORT HandleShotBlocked
.IMPORT LevelMasks
.IMPORT Link_EndMoveAndAnimate
.IMPORT MoveObject
.IMPORT PatchAndCueLevelPalettesTransferAndAdvanceSubmode
.IMPORT ResetMovingDir
.IMPORT RunCrossRoomTasksAndBeginUpdateMode_PlayModesNoCellar
.IMPORT SaveSlotToPaletteRowOffset
.IMPORT SetShoveInfoWith0
.IMPORT UpdateDeadDummy

.EXPORT _CalcDiagonalSpeedIndex
.EXPORT Abs
.EXPORT Add1ToInt16At0
.EXPORT Add1ToInt16At2
.EXPORT Add1ToInt16At4
.EXPORT AddQSpeedToPositionFraction
.EXPORT AddToInt16At0
.EXPORT AddToInt16At2
.EXPORT AddToInt16At4
.EXPORT Anim_EndWriteSprite
.EXPORT Anim_SetSpriteDescriptorAttributes
.EXPORT Anim_SetSpriteDescriptorRedPaletteRow
.EXPORT Anim_WriteItemSprites
.EXPORT Anim_WriteLevelPaletteSprite
.EXPORT Anim_WriteSpecificItemSprites
.EXPORT Anim_WriteSpecificSprite
.EXPORT Anim_WriteSprite
.EXPORT Anim_WriteSpritePairNotFlashing
.EXPORT Anim_WriteStaticItemSpritesWithAttributes
.EXPORT AnimateAndDrawObjectWalking
.EXPORT AnimateWorldFading
.EXPORT BeginShove
.EXPORT BeginUpdateMode
.EXPORT BoundByRoom
.EXPORT BoundByRoomWithA
.EXPORT BoundDirectionHorizontally
.EXPORT BoundDirectionVertically
.EXPORT CheckLinkCollision
.EXPORT CheckLinkCollisionPreinit
.EXPORT CheckMazes
.EXPORT CheckMonsterArrowOrRodCollision
.EXPORT CheckMonsterBombOrFireCollision
.EXPORT CheckMonsterCollisions
.EXPORT CheckMonsterSwordCollision
.EXPORT CheckMonsterSwordShotOrMagicShotCollision
.EXPORT CheckPersonBlocking
.EXPORT CompareHeartsToContainers
.EXPORT CycleCurSpriteIndex
.EXPORT DealDamage
.EXPORT DestroyObject_WRAM
.EXPORT DoObjectsCollide
.EXPORT DrawObjectMirrored
.EXPORT DrawObjectNotMirrored
.EXPORT DrawObjectWithAnim
.EXPORT DrawObjectWithAnimAndSpecificSprites
.EXPORT DrawObjectWithType
.EXPORT FetchFileAAddressSet
.EXPORT FileBChecksums
.EXPORT FormatDecimalByte
.EXPORT FormatHeartsInTextBuf
.EXPORT FormatStatusBarText
.EXPORT GetDirectionsAndDistancesToTarget
.EXPORT GetObjectMiddle
.EXPORT GetOppositeDir
.EXPORT GetRoomFlagUWItemState
.EXPORT GetShortcutOrItemXY
.EXPORT GetShortcutOrItemXYForRoom
.EXPORT HideObjectSprites
.EXPORT InitModeB_EnterCave_Bank5
.EXPORT ItemIdToDescriptor
.EXPORT ItemIdToSlot
.EXPORT ItemSlotToPaletteOffsetsOrValues
.EXPORT Link_BeHarmed
.EXPORT MapScreenPosToPpuAddr
.EXPORT MoveShot
.EXPORT Negate
.EXPORT Person_Draw
.EXPORT PlaceWeapon
.EXPORT PlaceWeaponForPlayerState
.EXPORT PlaceWeaponForPlayerStateAndAnim
.EXPORT PlaceWeaponForPlayerStateAndAnimAndWeaponState
.EXPORT PlayBoomerangSfx
.EXPORT PlayEffect
.EXPORT PlaySample
.EXPORT ResetCurSpriteIndex
.EXPORT ResetRoomTileObjInfo
.EXPORT ResetShoveInfoAndInvincibilityTimer
.EXPORT ReverseDirections
.EXPORT SetBoomerangSpeed
.EXPORT ShowLinkSpritesBehindHorizontalDoors
.EXPORT SilenceAllSound
.EXPORT SpriteOffsets
.EXPORT SpriteRelativeExtents
.EXPORT Sub1FromInt16At4
.EXPORT SubQSpeedFromPositionFraction
.EXPORT TryTakeItem
.EXPORT TryTakeRoomItem
.EXPORT UpdateBombFlashEffect
.EXPORT UpdatePlayerPositionMarker
.EXPORT UpdatePositionMarker
.EXPORT UpdateWorldCurtainEffect
.EXPORT UpdateWorldCurtainEffect_Bank2
.EXPORT WieldBomb
.EXPORT WieldCandle
.EXPORT World_ChangeRupees
.EXPORT WriteBlankPrioritySprites

; Returns:
; A: 0
;
BeginUpdateMode:
    LDA #$00
    STA GameSubmode
    INC IsUpdatingMode
L6506_Exit:
    RTS

StatusBarTransferBufTemplate:
    .BYTE $20, $B6, $08, $24, $24, $24, $24, $24
    .BYTE $24, $24, $24, $20, $D6, $08, $24, $24
    .BYTE $24, $24, $24, $24, $24, $24, $20, $6C
    .BYTE $03, $21, $00, $24, $20, $AC, $03, $21
    .BYTE $00, $24, $20, $CC, $03, $21, $00, $24
    .BYTE $FF

World_ChangeRupees:
    LDA TileBufSelector
    BNE L6506_Exit              ; If a static transfer buf is already chosen, then return.
    LDA DynTileBuf
    BPL L6506_Exit              ; If the dynamic transfer buf is already used, then return.
    ; Reset RupeesToAdd or RupeesToSubtract as appropriate,
    ; if reached 0 or max.
    ;
    ; Index of RupeesToSubtract item slot.
    ;
    LDY #$27
    LDA InvRupees
    BEQ @ResetSlot
    LDY #$26                    ; Index of RupeesToAdd item slot.
    CMP #$FF
    BNE :+                      ; If 0 < rupees < $FF, don't reset anything.
@ResetSlot:
    LDA #$00                    ; Reset the slot we chose.
    STA Items, Y
:
    LDA FrameCounter
    LSR
    BCS L6506_Exit              ; Every two frames, return.
    LDA RupeesToAdd
    BEQ @CheckSubtract          ; If RupeesToAdd <> 0,
    DEC RupeesToAdd             ; then add one rupee.
    INC InvRupees
    ; Play "heart taken" tune, probably because it's more
    ; pleasing for a continuous process than "rupee taken".
    LDA #$10
    STA Tune0Request
@CheckSubtract:
    LDA RupeesToSubtract
    BEQ FormatStatusBarText     ; If RupeesToSubtract = 0, then skip it, and go format header text.
    DEC RupeesToSubtract
    DEC InvRupees               ; Subtract one rupee.
    LDA #$10                    ; Play the tune for this.
    STA Tune0Request
FormatStatusBarText:
    LDY #$28                    ; Copy transfer buf template for status bar text to dynamic buf.
:
    LDA StatusBarTransferBufTemplate, Y
    STA DynTileBuf, Y
    DEY
    BPL :-
    LDY #$03
    LDA HeartValues
    STA $0E
    LDA HeartPartial
    STA $0F
    JSR FormatHeartsInTextBuf
    LDX #$02
    LDA InvRupees
    LDY #$1B
    JSR FormatDecimalCountByteInTextBuf
    LDY #$21                    ; Key count goes at offset $21.
    LDA InvMagicKey
    BEQ @FormatKeyCount         ; If don't have the magic key, then go format key count.
    STY $00
    LDA #$21                    ; Put an "X" in [$01].
    STA $01
    LDA #$0A                    ; Put an "A" in formatting buffer.
    JSR FormatCharDoublet
    LDX #$08                    ; TODO: ?
    JSR CopyTripletToTextBuf
    JMP @FormatBombCount        ; Have the magic key. Skip formatting key count.

@FormatKeyCount:
    LDX #$08
    LDA InvKeys
    JSR FormatDecimalCountByteInTextBuf
@FormatBombCount:
    LDX #$0E
    LDA InvBombs
    LDY #$27
    JMP FormatDecimalCountByteInTextBuf

; Params:
; A: value
; Y: offset of first character in buffer.
FormatDecimalCountByteInTextBuf:
    STY $00
    JSR FormatDecimalCountByte
; Params:
; [$00]: offset to first character in buffer
;
CopyTripletToTextBuf:
    LDY #$02
    LDX $00
:
    LDA $0001, Y
    STA DynTileBuf, X
    DEX
    DEY
    BPL :-
    RTS

; Formats a byte:
; 123 -> "123"
;  23 -> "X23"
;   3 -> "X3 "
;
; Params:
; A: value
;
; Returns:
; [$01]: First character
; [$02]: Second character
; [$03]: Third character
;
FormatDecimalCountByte:
    JSR FormatDecimalByte
    CPY #$24
    BNE :+
    LDY #$21
:
    STY $01
    CMP #$24
    BNE :+
    LDA $03
; Params:
; A: character
;
; Returns:
; [$02]: character
; [$03]: space
;
FormatCharDoublet:
    STA $02
    LDA #$24
    STA $03
:
    RTS

PlaySample:
    LDY #$01
    BNE :+
PlayEffect:
    LDY #$03
:
    ORA SongRequest, Y
    STA SongRequest, Y
    RTS

InitModeB_EnterCave_Bank5:
    ; Save the submode.
    ;
    LDA GameSubmode
    PHA
    JSR InitMode_EnterRoom
    JSR ResetInvObjState
    ; Put Link at the cave entrance ($70, $DD), and facing up.
    ;
    LDA #$70
    STA ObjX
    LDA #$DD
    STA ObjY
    LDA #$08
FileBChecksums:
    STA ObjDir
    JSR Link_EndMoveAndAnimate
    JSR RunCrossRoomTasksAndBeginUpdateMode_PlayModesNoCellar
    ; Restore the submode.
    ;
    PLA
    STA GameSubmode
    ; Still initializing. A routine called here changed it.
    ;
    LDA #$00
    STA IsUpdatingMode
    INC GameSubmode
    ; Get Link ready to move automatically this number of pixels.
    ;
    LDA #$30
    STA ObjGridOffset
    ; When coming out of the cave eventually, this has to be set.
    ;
    LDA #$01
    STA UndergroundExitType
    RTS

; Returns:
; A: 0
;
ResetRoomTileObjInfo:
    LDA #$00
    STA RoomTileObjType
    STA RoomTileObjX
    STA RoomTileObjY
    RTS

ReverseDirections:
    .BYTE $08, $04, $02, $01

SaveFileAAddressSets:
    .BYTE $1A, $60, $92, $60, $02, $60, $12, $65
    .BYTE $15, $65, $18, $65, $1B, $65

SaveFileAAddressSet1:
    .BYTE $42, $60, $12, $62, $0A, $60, $13, $65
    .BYTE $16, $65, $19, $65, $1C, $65

SaveFileAAddressSet2:
    .BYTE $6A, $60, $92, $63, $12, $60, $14, $65
    .BYTE $17, $65, $1A, $65, $1D, $65

; TODO: [08:09]
;
; Returns:
; [00:01]: items pointer
; [02:03]: world flags pointer
; [04:05]: name pointer
; [06:07]: IsSaveSlotActive pointer
; [08:09]:
; [0A:0B]: death count pointer
; [0C:0D]: quest pointer
; [0E:0F]: profile/save-slot world flags pointer
;
FetchFileAAddressSet:
    LDA #$FF                    ; Calculate the end of the address set for current file.
    LDY CurSaveSlot
:
    CLC
    ADC #$0E
    DEY
    BPL :-
    TAY
    ; Copy the save file address set (14 bytes) for the current
    ; save file to [$00] to make it easier to work with.
    LDX #$0D
:
    LDA SaveFileAAddressSets, Y
    STA $00, X
    DEY
    DEX
    BPL :-
    ; Put the address of the profile's whole
    ; WorldFlags block in [$0E:0F].
    LDA #$7F
    STA $0E
    LDA #$06
    STA $0F
    RTS

; Params:
; Y: 2
;
PlayBoomerangSfx:
    LDA ObjTimer+19
    BNE :+
    TYA
    JSR PlayEffect
    LDA #$0A
    STA ObjTimer+19
:
    RTS

HideObjectSprites:
    ; Hide all sprites $18 and on.
    ; Cycle the starting sprite index.
    LDX #$60
    LDA #$F8
:
    STA Sprites, X
    INX
    INX
    INX
    INX
    CPX #$00
    BNE :-
    LDA FirstSpriteIndex
    JSR CycleSpriteIndexInA
    STA FirstSpriteIndex
    RTS

CycleCurSpriteIndex:
    LDA RollingSpriteIndex      ; From 0 to $27.
CycleSpriteIndexInA:
    CLC
    ADC #$01
    CMP #$28
    BNE :+
ResetCurSpriteIndex:
    LDA #$00
:
    STA RollingSpriteIndex
:
    RTS

; Params:
; [0F]: movement direction
;
; Returns:
; [0F]: untouched, or 0
;
CheckPersonBlocking:
    LDA ObjY
    CMP #$8E
    BCS :-                      ; Return if Y coordinate >= $8E.
    LDA $0F
    AND #$08
    BEQ :-                      ; If not moving up, then return.
    JMP ResetMovingDir

; Formats a decimal byte. Spaces are used for missing digits.
;
; Params:
; A: value
;
; Returns:
; Y: First character
; A: Second character
; [$01]: First character
; [$02]: Second character
; [$03]: Third character
;
FormatDecimalByte:
    JSR DivideBy10
    STA $03
    TYA
    JSR DivideBy10
    CPY #$00
    BNE @WriteHighChars
    LDY #$24
    CMP #$00
    BNE @WriteHighChars
    TYA
@WriteHighChars:
    STA $02
    STY $01
:
    RTS

; Params:
; A: value
;
; Returns:
; Y: result
; A: remainder
;
DivideBy10:
    LDY #$00
@Loop:
    CMP #$0A
    BCC :-
    SBC #$0A
    INY
    BNE @Loop
FormatHeartsInTextBuf:
    ; [$0E]: hearts value
    ; [$0F]: heart partial
    ; Y: The offset of first character in buffer
    ;
    ; The end of the bottom row is $12 bytes after the
    ; start of the top row. We're writing to two transfer
    ; records. We write the top row in the first transfer
    ; record wherever the caller chooses. The second
    ; transfer record has to begin with the heart tiles.
    ; So, 7 (offset to end of first row) + 3 (size of transfer
    ; header) + 8 (length of bottom row) = 18 ($12).
    ;
    ; Store the starting offset in [$0D].
    STY $0D
    LDA $0E
    PHA
    AND #$0F                    ; Put ($F - hearts) in [$00].
    STA $00
    LDA #$0F
    SEC
    SBC $00
    STA $00
    PLA
    LSR                         ; Put ($F - heart containers) in [$01].
    LSR
    LSR
    LSR
    STA $01
    LDA #$0F
    SEC
    SBC $01
    STA $01
    ; At this point,
    ; [$00] = $F - hearts
    ; [$01] = $F - heart containers
    ; [$0D] = Y parameter (starting offset in tile buf)
    ;
    ; Also, Y is still set to the value passed in.
    ;
    LDX #$00
    TYA
    CLC
    ADC #$07
    STA $0B                     ; Set [$0B] to offset of last heart in top row.
    ; Y keeps track of index of heart in row.
    ; Start at the end of the first row.
    LDY #$07
@LoopHeartSlot:
    ; For X in 0..$10 (all hearts spots):
    ;
    CPY #$FF
    BNE @FinishedFirstRow       ; If finished first row,
    LDA $0D
    CLC
    ADC #$12
    STA $0B                     ; Set [$0B] to offset of last heart in bottom row.
    LDY #$12
@FinishedFirstRow:
    ; If there are no hearts,
    ; or still processing missing heart containers;
    LDA $0E
    BEQ @EmitSpace
    CPX $01
    BCS @CheckOccupiedSlot
@EmitSpace:
    LDA #$24                    ; Use a blank tile.
    BNE @EmitChar               ; Go emit it.
@CheckOccupiedSlot:
    CPX $00
    BEQ @CheckPartial           ; At the boundary heart, go check the partial heart.
    BCC @EmitEmptyHeart         ; If no longer processing missing hearts,
@EmitFullHeart:
    LDA #$F2                    ; Use a full heart tile.
    BNE @EmitChar               ; Go emit it.
@CheckPartial:
    LDA $0F
    BEQ @EmitEmptyHeart         ; If partial heart is 0, go emit an empty heart tile.
    CMP #$80
    BCS @EmitFullHeart          ; If partial heart at least half full, go emit a full heart tile.
    LDA #$00
    STA $0529                   ; TODO: else, clear [$0529]
    LDA #$65                    ; and use a half heart tile.
    BNE @EmitChar
@EmitEmptyHeart:
    LDA #$66                    ; Use an empty heart tile.
@EmitChar:
    STY $0C
    LDY $0B                     ; Emit chosen tile to buf.
    STA DynTileBuf, Y
    DEC $0B
    LDY $0C
    DEY
    INX
    CPX #$10
    BNE @LoopHeartSlot
    RTS

SilenceAllSound:
    LDA #$80
    STA Tune0Request
    STA EffectRequest
    ASL
    STA Tune0
    STA Tune1
    RTS

SpriteRelativeExtents:
    .BYTE $08, $00

ShowLinkSpritesBehindHorizontalDoors:
    LDY #$0A
    LDX #$00
    LDA ObjX, X
    STA $00
    LDX #$01
@LoopSprite:
    LDA $00
    CLC
    ADC SpriteRelativeExtents, X
    CMP #$E9
    BCS @AddPriority
    CMP #$10
    BCS @NextSprite
@AddPriority:
    LDA Sprites+64, Y
    ORA #$20
    STA Sprites+64, Y
@NextSprite:
    INY
    INY
    INY
    INY
    CPY #$00
    BNE :+
    LDY #$20                    ; TODO: Is this ever run?
:
    DEX
    BPL @LoopSprite
    RTS

; Params:
; X: object index
; [0F]: direction
;
; Returns:
; Y: direction of boundary that was crossed
; [0F]: original direction, or 0 if boundary was crossed
;
;
; Checking left direction.
BoundDirectionHorizontally:
    LDY #$02
    LDA ObjX, X
    STA $00                     ; [00] holds X coordinate
    CPX #$00
    BEQ @Left
    ; If object slot >= $D (items and weapons) or object type = $5C (boomerang),
    ; then add $B to X coordinate.
    ;
    CPX #$0D
    BCS :+
    LDA ObjType, X
    CMP #$5C
    BNE @Left
:
    LDA $00
    CLC
    ADC #$0B
    STA $00
@Left:
    ; Check left boundary.
    ; If X coordinate crosses (<) left bound, go reset the direction.
    ;
    LDA $00
    CMP RoomBoundLeft
    BCC BoundDirectionReturn
    ; If object is not the player and (slot >= $D or type = $5C),
    ; then subtract $17 from X coordinate in order to check the
    ; right bound.
    ;
    CPX #$00
    BEQ @Right                  ; If object is the player, skip this.
    CPX #$0D
    BCS :+
    LDA ObjType, X
    CMP #$5C
    BNE @Right                  ; If not boomerang type, skip this.
:
    LDA $00
    SEC
    SBC #$17
    STA $00
@Right:
    ; Check right boundary.
    ; If X coordinate is within (<) right bound, return and leave direction alone.
    ;
    LDY #$01
    LDA $00
    CMP RoomBoundRight
    BCC L6825_Exit
BoundDirectionReturn:
    ; If the reference direction in Y register is 0, then
    ; return and leave direction alone.
    ; Else reset the target direction.
    ;
    TYA
    AND $0F
    BEQ L6825_Exit
    JMP ResetMovingDir

; Params:
; X: object index
; [0F]: direction
;
; Returns:
; Y: direction of boundary that was crossed
; [0F]: original direction, or 0 if boundary was crossed
;
;
; Checking up direction.
BoundDirectionVertically:
    LDY #$08
    LDA ObjY, X
    STA $00                     ; [00] holds Y coordinate
    CPX #$00
    BEQ @Up
    ; If object slot >= $D (items and weapons) or object type = $5C (boomerang),
    ; then add $F to X coordinate.
    ;
    CPX #$0D
    BCS :+
    LDA ObjType, X
    CMP #$5C
    BNE @Up
:
    LDA $00
    CLC
    ADC #$0F
    STA $00
@Up:
    ; Check up boundary.
    ; If Y coordinate crosses (<) up bound, go reset the direction.
    ;
    LDA $00
    CMP RoomBoundUp
    BCC BoundDirectionReturn
    ; If object is not the player and (slot >= $D or type = $5C),
    ; then subtract $21 from Y coordinate in order to check the
    ; down bound.
    ;
    CPX #$00
    BEQ @Down                   ; If object is the player, skip this.
    CPX #$0D
    BCS :+
    LDA ObjType, X
    CMP #$5C
    BNE @Down                   ; If not boomerang type, skip this.
:
    LDA $00
    SEC
    SBC #$21
    STA $00
@Down:
    ; Check down boundary.
    ; If Y coordinate is within (<) down bound, return and leave direction alone.
    ;
    LDY #$04
    LDA $00
    CMP RoomBoundDown
    BCS BoundDirectionReturn    ; If Y coordinate crosses (>=) right boundary, go reset target direction.
L6825_Exit:
    RTS

; Params:
; A: direction
; X: object index
;
; Returns:
; A: original direction, or 0 if boundary was crossed
; Y: direction of boundary that was crossed
; Z: 1 if boundary was crossed
; [0F]: original direction, or 0 if boundary was crossed
;
BoundByRoomWithA:
    STA $0F
; Params:
; X: object index
; [0F]: direction
;
; Returns:
; A: original direction, or 0 if boundary was crossed
; Y: direction of boundary that was crossed
; Z: 1 if boundary was crossed
; [0F]: original direction, or 0 if boundary was crossed
;
BoundByRoom:
    JSR BoundDirectionHorizontally
    JSR BoundDirectionVertically
    LDA $0F
    RTS

; Params:
; [010E]: PositiveGridCellSize
; [010F]: NegativeGridCellSize
;
; Returns:
; C: 1 if fractional position reached a whole pixel
;
AddQSpeedToPositionFraction:
    LDA ObjPosFrac, X
    CLC
    ADC ObjQSpeedFrac, X
    STA ObjPosFrac, X
    PHP                         ; Save carry flag.
    ; Don't let positions go past the limits
    ; If we're at a limit, then clear carry.
    LDA ObjGridOffset, X
    CMP PositiveGridCellSize
    BEQ @ClearCarry
    CMP NegativeGridCellSize
    BNE :+
@ClearCarry:
    PLP                         ; Replace saved (pushed) carry flag with 0.
    CLC
    PHP
:
    PLP                         ; Restore carry flag to use in addition below.
    PHP                         ; But save it again in order to return it at the end.
    ; Add only carry to the grid offset.
    ; Carry represents whether the fractional position reached
    ; a whole pixel (C=1).
    LDA ObjGridOffset, X
    ADC #$00
    STA ObjGridOffset, X
    PLP                         ; Return carry flag from speed addition, or 0 if we reached a limit.
    RTS

; Params:
; [010E]: PositiveGridCellSize
; [010F]: NegativeGridCellSize
;
; Returns:
; C: 0 if fractional position reached a whole pixel
;
SubQSpeedFromPositionFraction:
    LDA ObjPosFrac, X
    SEC
    SBC ObjQSpeedFrac, X
    STA ObjPosFrac, X
    PHP                         ; Save carry flag.
    ; Don't let positions go past the limits
    ; If we're at a limit, then set carry.
    LDA ObjGridOffset, X
    CMP PositiveGridCellSize
    BEQ @SetCarry
    CMP NegativeGridCellSize
    BNE :+
@SetCarry:
    PLP                         ; Replace saved (pushed) carry flag with 1.
    SEC
    PHP
:
    PLP                         ; Restore carry flag to use in addition below.
    PHP                         ; But save it again in order to return it at the end.
    ; Subtract only carry from the grid offset.
    ; Carry represents whether the fractional position reached
    ; a whole pixel (C=0).
    LDA ObjGridOffset, X
    SBC #$00
    STA ObjGridOffset, X
    PLP                         ; Return carry flag from speed subtraction, or 1 if we reached a limit.
    RTS

OppositeDirs:
    .BYTE $04, $08, $01, $02

; Params:
; A: direction
;
; Returns:
; A: opposite direction
; Y: a reverse direction index
;
; The reverse direction index returned has this mapping:
; In Dir: 1 2 4 8
;         -------
; Index:  3 2 1 0
;
GetOppositeDir:
    LDY #$03
@Loop:
    LSR
    BCS :+
    DEY
    BPL @Loop
:
    LDA OppositeDirs, Y
    RTS

; Params:
; A: value
;
; Returns:
; A: absolute value
;
Abs:
    BPL :+
; Params:
; A: value
;
; Returns:
; A: result
;
Negate:
    EOR #$FF
    CLC
    ADC #$01
:
    RTS

; Params:
; A: direction
; X: object index
; [0E]: 0 to change grid offset, else leave it as is
;
; Returns:
; [0E]: $80 if blocked
; [0F]: moving direction, or 0 if boundary was crossed
;
;
; If a boundary was crossed, go set [0E] to $80 instead of moving.
;
MoveShot:
    JSR BoundByRoomWithA
    BEQ @ReturnBlocked
    ; Move the object as if grid offset were 0.
    ;
    LDA ObjGridOffset, X
    PHA
    LDA #$00
    STA ObjGridOffset, X
    JSR MoveObject
    PLA
    ; If [0E] is set, keep the original value in grid offset,
    ; or else add the new amount to it.
    ;
    ; TODO:
    ; But I'm not clear about where [0E] was last set.
    ; At least with a player's shot, [0E] was last written in
    ; 77E7 DrawObjectWithAnim to draw Link. It was set to
    ; animation index 0. But is that always the case?
    ;
    LDY $0E
    BNE :+
    CLC
    ADC ObjGridOffset, X
:
    STA ObjGridOffset, X
    RTS

@ReturnBlocked:
    LDA #$80
    STA $0E
    RTS

; Params:
; A: object index of target
; X: object index of origin
; [00]: 0
;
; Returns:
; [00]: the number of axes where the distance <= 8
; [03]: distance X
; [04]: distance Y
; [0A]: vertical direction from origin to target
; [0B]: horizontal direction from origin to target
;
;
; Handle the horizontal.
;
GetDirectionsAndDistancesToTarget:
    PHA
    TAY
    LDA #$02
    STA $0A
    LDA a:ObjX, Y
    LDY ObjX, X
    JSR GetOneDirectionAndDistanceToTarget
    STA $03
    LDA $0A
    STA $0B
    ; Handle the vertical.
    ;
    PLA
    TAY
    LDA #$08
    STA $0A
    LDA a:ObjY, Y
    LDY ObjY, X
    JSR GetOneDirectionAndDistanceToTarget
    STA $04
    RTS

; Params:
; Y: middle speed index (4)
; [03]: horizontal distance
; [04]: vertical distance
; [0A]: vertical direction
; [0B]: horizontal direction
;
; Returns:
; Y: speed index (0 to 8) for the angle
;
;
; TODO: call it speed index or angle?
; Store the middle speed index in [00]. It will be changed to the
; right speed index to use incrementally.
; Lower speed indexes yield faster X speeds and lower Y speeds.
; Higher speed indexes yield faster Y speeds and lower X speeds.
;
_CalcDiagonalSpeedIndex:
    STY $00
    ; Assuming horizontal distance >= vertical distance, the
    ; index offset in [01] is negative (-1) to go towards the X axis.
    ;
    LDA #$FF
    STA $01
    ; TODO:
    ; If horizontal distance [03] < vertical distance [04], swap [03] and [04],
    ; and store positive speed index 1 in [01] to go towards the Y axis.
    ;
    ; The point is to put the greater value in [03] and the lesser one in [04],
    ; and use a speed index offset (1 or -1) that will point us in the direction
    ; of the farther distance faster.
    ;
    LDA $03
    CMP $04
    BCS @Swap
    PHA
    LDA $04
    STA $03
    PLA
    STA $04
    LDA #$01
    STA $01
@Swap:
    ; TODO: call it speed index or angle?
    ; If the difference in distances is within 8 pixels,
    ; return the speed index (angle) we have.
    ;
    LDA $03
    SEC
    SBC $04
    CMP #$08
    BCC @Return
@Turn:
    ; TODO: call it speed index or angle?
    ; Otherwise, go to the next speed index (angle).
    ;
    LDA $00
    CLC
    ADC $01
    STA $00
    ; TODO: call it speed index or angle?
    ; If a speed index (angle) limit (0 or 8), we've gone all the way to an axis
    ; (0, 90, 180, 270 degrees). So return this speed index (angle).
    ;
    BEQ @Return
    CMP #$08
    BEQ @Return
    ; Subtract the lesser distance from the greater distance.
    ; If they still haven't crossed, then we can turn more.
    ;
    LDA $03
    SEC
    SBC $04
    STA $03
    CMP $04
    BCS @Turn
@Return:
    ; TODO: call it speed index or angle?
    ; Return the speed index (angle) we found.
    ;
    LDY $00
    RTS

; Params:
; A: q-speed fraction
;
SetBoomerangSpeed:
    STA ObjQSpeedFrac, X
    ; If in major state $50, use this speed as is.
    ;
    LDA ObjState, X
    AND #$F0
    CMP #$40
    BNE @Exit
    ; Else, in major state $40, go at half the speed.
    ;
    LSR ObjQSpeedFrac, X
    ; Once we've traveled the target amount of time, set state $50 to go faster.
    ; In major state $40, ObjMovingLimit is a timer to change the state to $50.
    ;
    DEC ObjMovingLimit, X
    BNE @Exit
    LDA #$50
    STA ObjState, X
@Exit:
    RTS

; Params:
; A: target coordinate
; Y: origin coordinate
; [00]: a value
; [0A]: the decreasing direction on the coordinates' axis (2 or 8)
;
; Returns:
; A: the distance from origin to target
; [00]: the original value + 1, if < 8 pixels between origin and target
; [0A]: the direction from origin to target
;
;
; If the origin coordinate already >= target coordinate, then
; the direction in [0A] is already correct. Otherwise, shift it right
; to flip it.
;
; After this, [02] will >= [01].
;
GetOneDirectionAndDistanceToTarget:
    STA $01
    STY $02
    CPY $01
    BCS @Subtract
    STA $02
    STY $01
    LSR $0A
@Subtract:
    ; If the difference between the coordinates < 9, increment [00].
    ;
    LDA $02
    SEC
    SBC $01
    CMP #$09
    BCS :+
    INC $00
:
    RTS

WieldBomb:
    ; If there are no bombs in inventory, return.
    ;
    LDA InvBombs
    BEQ :-
    ; Look in slot $10. If it's empty or there's a fire
    ; (state = 0, or major state <> $10), then
    ; go activate a bomb.
    ;
    LDX #$10
    LDA ObjState, X
    BEQ @FoundSlot
    AND #$F0
    CMP #$10
    BNE @FoundSlot
    ; Else look at slot $11.
    ; If there's a bomb there (major state = $10), then return.
    ;
    INX
    LDA ObjState, X
    BEQ @FoundSlot
    AND #$F0
    CMP #$10
    BEQ L69AB_Exit
@FoundSlot:
    ; We found a slot that's empty or has a fire. It could be $10 or $11.
    ; If the other slot has a bomb that's not yet detonating (state < $13),
    ; then return.
    ;
    TXA
    EOR #$01
    TAY
    LDA a:ObjState, Y
    BEQ @Activate
    CMP #$13
    BCC L69AB_Exit
@Activate:
    ; We're using a bomb. Decrement the count.
    ;
    DEC InvBombs
    ; Play the "set a bomb" tune.
    ;
    LDA #$20
    STA Tune0Request
    ; Reset the object timer.
    ;
    LDA #$00
    STA ObjTimer, X
    ; Start in state $11.
    ;
    LDA #$11
; Params:
; A: initial state
; X: object index
;
PlaceWeaponForPlayerStateAndAnimAndWeaponState:
    STA ObjState, X
PlaceWeaponForPlayerStateAndAnim:
    ; Set player's animation counter to 1, so that it will roll over
    ; as soon as possible, causing movement frame to become 0 (legs apart),
    ; which is how we want to end item-use animations.
    ;
    ; Set player's state to $10 (wielding sword/item).
    ;
    LDA #$01
    STA ObjAnimCounter
PlaceWeaponForPlayerState:
    LDA #$10
    STA ObjState
; Places the weapon $10 pixels away from the player in the
; player's direction.
;
; Params:
; A: $10 for right and down
; X: object index
;
;
; Set the offset choices to:
;  $10 for right and down in [01]
; -$10 for left and up in [02]
;
PlaceWeapon:
    LDY #$F0
    STA $01
    STY $02
    ; Set object's direction to the player's.
    ;
    LDA ObjDir
    STA ObjDir, X
    ; Set object's X to player's X + offset for direction.
    ;
    JSR ChooseOffsetForDirectionH
    ADC ObjX
    STA ObjX, X
    ; Set object's Y to player's Y + offset for direction.
    ;
    LDA ObjDir
    LSR                         ; Shift player's direction, so that it behaves like a horizontal if it's vertical.
    LSR
    JSR ChooseOffsetForDirectionH
    ADC ObjY
    STA ObjY, X
L69AB_Exit:
    RTS

; Params:
; A: direction
; [01]: value for right
; [02]: value for left
;
; Returns:
; A: chosen value, or 0 if not horizontal
; C: 0
;
;
; Set default value 0 in default address 0.
;
ChooseOffsetForDirectionH:
    LDY #$00
    STY $00
    AND #$03
    BEQ @GetValue               ; If vertical, go choose slot 0 (value 0).
    INY                         ; Direction is horizontal. Increment index to 1.
    AND #$01
    BNE @GetValue               ; If direction is right, go choose slot 1.
    INY                         ; Direction is left. Increment index to 2.
@GetValue:
    LDA $0000, Y                ; Load the offset for the calculated index.
    CLC                         ; Clear carry in preparation for adding offset to another value.
L69BE_Exit:
    RTS

; Returns:
; X: last object slot tested, regardless of whether it's empty
;
; Fails if no empty slot was found, or the blue candle was already used.
;
;
; Look in slots $10 and $11. If none are empty, return.
; Otherwise, X will have the empty slot found.
;
; Note that it's possible that we fail to find an empty slot,
; but the caller might find slot X occupied by a fire made earlier.
;
WieldCandle:
    LDX #$10
    LDA ObjState, X
    BEQ @NotInUse
    INX
    LDA ObjState, X
    BNE L69BE_Exit
@NotInUse:
    ; If we have the blue candle and it was used, then return.
    ;
    LDA InvCandle
    CMP #$01
    BNE :+
    LDA UsedCandle
    BNE L69BE_Exit
:
    ; Set the candle used.
    ;
    LDA #$01
    STA UsedCandle
    ; Reset the new fire object's movement info.
    ; Set quarter speed (q-speed) to $20 (half a pixel a frame).
    ;
    LDA #$00
    STA ObjGridOffset, X
    STA ObjPosFrac, X
    LDA #$20
    STA ObjQSpeedFrac, X
    ; Activate the fire object. Initial state = $21 (moving fire).
    ;
    LDA #$21
    STA ObjState, X
    LDA #$04                    ; Flame sound effect
    JSR PlayEffect
    ; Each animation frame lasts 4 frames.
    ;
    LDA #$04
    STA ObjAnimCounter, X
    JSR PlaceWeaponForPlayerState
    RTS

; Returns:
; A: X coordinate of shortcut (OW) or item (UW)
; Y: Y coordinate of shortcut (OW) or item (UW)
;
GetShortcutOrItemXY:
    LDY RoomId
; Params:
; Y: room ID
;
; Returns:
; A: X coordinate of shortcut (OW) or item (UW)
; Y: Y coordinate of shortcut (OW) or item (UW)
;
GetShortcutOrItemXYForRoom:
    LDA LevelBlockAttrsF, Y
    AND #$30                    ; Isolate shortcut or item position index.
    LSR
    LSR
    LSR
    LSR
    TAY
    LDA LevelInfo_ShortcutOrItemPosArray, Y    ; Get one of the 4 positions.
    PHA                         ; Save position.
    AND #$0F
    ASL
    ASL
    ASL
    ASL
    TAY
    PLA                         ; Restore position.
    AND #$F0
    RTS

; Params:
; A: 0
; X: object index
;
DestroyObject_WRAM:
    STA ObjShoveDir, X
    STA ObjShoveDistance, X
    STA ObjTimer, X
    STA ObjState, X
    STA ObjInvincibilityTimer, X
    LDA #$FF
    STA ObjUninitialized, X
    LDA #$01
    STA ObjMetastate, X
    RTS

UpdateBombFlashEffect:
    ; If state <> $13, return.
    ;
    LDA ObjState, X
    CMP #$13
    BNE @Exit
    ; The effect involves turning grayscale rendering on and off
    ; in PPUMASK.
    ;
    ; Start by setting A register to the PPU mask shifted right to
    ; throw away the grayscale bit.
    ;
    LDA CurPpuMask_2001
    LSR
    ; Then, based on the timer value, shift in a 1 or 0 in the low bit.
    ;
    LDY ObjTimer, X
    ; At times $16 and $11, rotate carry=1 to the low bit.
    ; Carry will have been set, because of the comparison (CPY).
    ;
    CPY #$16
    BEQ :+
    CPY #$11
    BNE @Clear
:
    ROL
    JMP @SetMask

@Clear:
    ; At times $12 and $D, shift left to make the low bit 0.
    ;
    CPY #$12
    BEQ :+
    CPY #$0D
    BNE @Exit
:
    ASL
@SetMask:
    ; Only at times $16, $11, $12, $D do we commit the mask
    ; we calculated.
    ;
    STA CurPpuMask_2001
@Exit:
    RTS

UpdatePlayerPositionMarker:
    LDA GameMode                ; Return if mode 9 or whirlwind teleporting.
    CMP #$09
    BEQ L6AAF_Exit
    LDX WhirlwindTeleportingState
    BNE L6AAF_Exit
    LDA RoomId
    LDX #$00
; Params:
; A: room ID
;
;
; Push the room ID.
UpdatePositionMarker:
    PHA
    AND #$70                    ; Sanitize the row of the room ID.
    LSR                         ; The rows in status bar map are 4 pixels tall.
    LSR
    ADC #$17                    ; Add $17 pixels to Y coordinate.
    STA Sprites+84, X           ; Place the position marker vertically.
    LDA #$11                    ; Map X at $11 in OW.
    LDY CurLevel
    BEQ :+
    LDA #$12                    ; Map X at $12 in UW.
:
    STA $00                     ; Store the appropriate status bar map left coordinate in [$00].
    PLA                         ; Pop the room ID.
    AND #$0F                    ; Isolate the column of the room ID.
    CPY #$00
    BEQ :+
    ASL                         ; In UW, columns in status bar map are 8 pixels wide.
:
    ASL                         ; In OW, they are 4 pixels wide.
    ASL
    ADC $00                     ; Add the status bar map left coordinate.
    ADC LevelInfo_StatusBarMapXOffset    ; Add a horizontal offset from level info to center the map.
    STA Sprites+87, X           ; Place the position marker horizontally.
    LDA #$3E
    STA Sprites+85, X           ; Use the position marker tile.
    LDA #$00
    CPX #$00
    BEQ @SetAttr                ; If we're updating the triforce marker,
    LDA #$03                    ; Set up a default "inactive" palette (attribute), which means "not gotten".
    PHA
    LDY CurLevel
    CPY #$09
    BEQ :+                      ; If you're in level 9, use the "active" palette only.
    LDA InvTriforce
    AND LevelMasks-1, Y
    BNE @PopSetAttr             ; If player hasn't gotten the piece,
:
    LDA FrameCounter
    AND #$1F
    CMP #$10
    BCS @PopSetAttr             ; then every 16 frames,
    PLA
    LDA #$02                    ; switch between two palettes.
    PHA
@PopSetAttr:
    PLA
@SetAttr:
    STA Sprites+86, X
L6AAF_Exit:
    RTS

UpdateWorldCurtainEffect_Bank2:
    JSR UpdateWorldCurtainEffect
    LDA #$02
    JMP SwitchBank_Local2

; Params:
; [$7C]/ObjX[$C]: column index that will be decreased + 1
; [$7D]/ObjX[$D]: column index that will be increased + 1
;
; Switches to bank 5.
;
UpdateWorldCurtainEffect:
    LDA ObjTimer
    BNE @Exit                   ; Delay until ObjTimer[0] expires.
    LDA #$01                    ; Start with column index in [$7D] ObjX[$D].
    STA $0A
@LoopColumn:
    LDX $0A
    LDA ObjX+12, X              ; Get current column index.
    STA CurColumn               ; Set CurColumn for column copying routine to use.
    LDA #$05
    JSR SwitchBank_Local5
    LDA #$0E                    ; Set vertical nametable mirroring.
    JSR SetMMC1Control_Local5
    JSR CopyColumnToTileBuf
    DEC $0A                     ; Now reference the column with index in [$7C] ObjX[$C].
    BPL @LoopColumn             ; If we copied both columns, then quit.
    LDA #$FF                    ; Invalidate CurColumn
    STA CurColumn
    LDA #$05                    ; Set a delay of 4 frames (5-1) in ObjTimer[0].
    STA ObjTimer
    DEC ObjX+12                 ; Change the column indexes.
    INC ObjX+13
@Exit:
    RTS

; Params:
; [$00:01]: a 16-bit value to increment
;
; Returns:
; [$00:01]: sum
; A: low byte of sum
;
Add1ToInt16At0:
    LDA #$01
; Params:
; A: value 1
; [$00:01]: value 2
;
; Returns:
; [$00:01]: sum
; A: low byte of sum
;
AddToInt16At0:
    CLC
    ADC $00
    STA $00
    BCC :+
    INC $01
:
    RTS

; Params:
; [$02:03]: a 16-bit value to increment
;
Add1ToInt16At2:
    LDA #$01
; Params:
; A: value 1
; [$02:03]: value 2
;
; Returns:
; [$02:03]: sum
;
AddToInt16At2:
    CLC
    ADC $02
    STA $02
    BCC :+
    INC $03
:
    RTS

; Params:
; [$04:05]: a 16-bit value to increment
Add1ToInt16At4:
    LDA #$01
; Params:
; A: value 1
; [$04:05]: value 2
;
; Returns:
; [$04:05]: sum
;
AddToInt16At4:
    CLC
    ADC $04
    STA $04
    BCC :+
    INC $05
:
    RTS

; Params:
; [$04:05]: a 16-bit value to decrease
;
Sub1FromInt16At4:
    LDA $04
    SEC
    SBC #$01
    STA $04
    BCS :+
    DEC $05
:
    RTS

ItemIdToSlot:
    .BYTE $01, $00, $00, $00, $06, $05, $04, $04
    .BYTE $02, $02, $03, $0D, $09, $0C, $1B, $1C
    .BYTE $08, $0A, $0B, $0B, $0E, $0F, $10, $11
    .BYTE $16, $17, $18, $1A, $1F, $1D, $1E, $07
    .BYTE $07, $15, $19, $14

ItemIdToDescriptor:
    ; Each byte describes an item. The high nibble is the type.
    ; The low nibble is the value. Its meaning depends on the type.
    ;
    ; 0x - individuals
    ; * unique: value is boolean: you have it or you don't; also value indicates palette row sprite attribute.
    ; * bit mask: value doesn't matter.
    ;
    ; 1x - amounts
    ; Value is an amount to add.
    ;
    ; 2x - grades
    ; Value is a grade and palette row. Picking up an item with a lower grade won't change the inventory.
    ;
    ; 3x - error?
    ; Produces an item value of $FF.
    ;
    .BYTE $14, $21, $22, $23, $01, $01, $21, $22
    .BYTE $21, $22, $01, $01, $01, $01, $01, $15
    .BYTE $01, $01, $21, $22, $01, $01, $01, $01
    .BYTE $11, $11, $10, $01, $01, $01, $01, $11
    .BYTE $22, $01, $10, $12

ItemSlotToPaletteOffsetsOrValues:
    ; Maps an item slot to a value used in calculating the
    ; sprite palette row attribute.
    ;
    ; For most items, the value is the sprite palette row attribute
    ; itself.
    ;
    ; Some items will use the value as an amount to add to the
    ; item value in the slot.
    ;
    .BYTE $FF, $01, $FF, $00, $00, $02, $02, $00
    .BYTE $01, $00, $02, $00, $00, $02, $02, $01
    .BYTE $02, $02, $02, $02, $02, $02, $02, $02
    .BYTE $02, $02, $02, $02, $01, $00, $01, $00

SetRoomFlagUWItemState:
    JSR GetRoomFlags
    ORA #$10
    STA ($00), Y
    RTS

; Returns:
; A: $10 if item was taken, else 0
;
GetRoomFlagUWItemState:
    LDA LevelInfo_WorldFlagsAddr
    STA $08
    LDA LevelInfo_WorldFlagsAddr+1
    STA $09
    LDY RoomId
    LDA ($08), Y
    AND #$10
:
    RTS

LinkColors_CommonCode:
    .BYTE $29, $32, $16

TryTakeRoomItem:
    ; If Link is halted, then return.
    ;
    LDA ObjState
    AND #$C0
    CMP #$40
    BEQ :-
    ; If player took the room item, then return.
    ;
    JSR GetRoomFlagUWItemState
    BNE :-
    ; Switch to room item object slot $13.
    ;
    LDX #$13
    ; If room item object wasn't activated, then return.
    ;
    LDA ObjState, X
    BMI :-
    ; Pass RoomItemId, also known as [98][$13] and ObjDir[$13],
    ; to try to take the item.
    ;
    LDA ObjRoomItemId, X
    STA $04                     ; [04] holds the item type.
; Params:
; X: object index
; [04]: item type
;
;
; If the lifetime timer of the item >= $F0, then return;
; so that the player can't pick it up right away.
;
; [03A8][X] is used to count down the life of the item.
TryTakeItem:
    LDA Item_ObjItemLifetime, X
    CMP #$F0
    BCS L6C28_Exit
    ; If Y distance between Link and the item >= 9, return.
    ;
    LDA ObjY
    CLC
    ADC #$03
    SEC
    SBC ObjY, X
    JSR Abs
    CMP #$09
    BCS L6C28_Exit
    ; If X distance between Link and the item >= 9, return.
    ;
    LDA ObjX
    SEC
    SBC ObjX, X
    JSR Abs
    CMP #$09
    BCS L6C28_Exit
    ; In case this is the room item, set state to $FF to deactivate it.
    ;
    LDA #$FF
    STA ObjState, X
    STA ObjY, X
    ; If it is the room item that is taken, then
    ; mark it taken in room flags.
    ;
    CPX #$13
    BNE :+
    JSR SetRoomFlagUWItemState
:
    LDA $04                     ; Get the item type.
; Params:
; A: item ID
;
; By default, we'll play the "item taken" tune.
;
TakeItem:
    LDX #$08
    STX Tune1Request
    ; Unless it's the Triforce of Power; in which case
    ; play the "item appears" tune.
    ;
    CMP #$0E
    BNE :+
    LDX #$02
    STX Tune1Request
:
    ; If we're in a cave or cellar, then
    ; prepare to lift the item.
    ;
    LDX GameMode
    CPX #$05
    BEQ @SkipLift
    LDX #$80                    ; Lift for $80 frames.
    STX ItemLiftTimer
    LDX #$08                    ; Play the "item" song.
    STX SongRequest
    STA ItemTypeToLift          ; Set the item type for lifting.
@SkipLift:
    ; Look up the item slot and sprite attributes by the item type.
    ;
    TAX
    LDA ItemIdToSlot, X
    TAY
    LDA ItemIdToDescriptor, X
    ; [0A] holds the item value from the low nibble of descriptor.
    ;
    PHA
    AND #$0F
    STA $0A
    PLA
    ; Check the high nibble which specifies the item's class.
    ;
    ; A: item class
    ; X: item type
    ; Y: item slot
    ;
    AND #$F0
    BNE CheckClass1             ; Go check classes 1 and 2.
    ; Class 0. We have an item of a type that's unique or complex.
    ;
    ; First, check the exceptions. If the item is a map, compass, or triforce; then go handle them.
    ;
    ;
    ; Map item slot
    CPY #$11
    BEQ TakeClass0Complex
    CPY #$10                    ; Compass item slot
    BEQ TakeClass0Complex
    CPY #$1A                    ; Triforce pieces item slot
    BEQ TakeClass0Complex
    CPY #$1B                    ; Triforce of Power item slot
    BEQ TakeClass0Complex
    ; Finally, this is a simple item. Put the item value in the item slot.
    ;
    LDA $0A
SetItemValue:
    STA Items, Y
L6C28_Exit:
    RTS

Take5Rupees:
    ; For 5 Rupees, perform the action for 1 rupee 5 times.
    ;
    LDY #$04
:
    JSR TakeOneRupee
    DEY
    BPL :-
    RTS

CheckClass1:
    ; A: item class
    ; X: item type
    ; Y: item slot
    ;
    CMP #$10
    BNE @CheckClass2            ; Go check class 2 items.
    ; Class 1. We have a type of item with an amount.
    ; Item value is the amount to add.
    ;
    ;
    ; Heart container item slot
    CPY #$18
    BEQ @TakeHeartContainer
    CPY #$1C                    ; 5 Rupees item slot
    BEQ Take5Rupees
    CPY #$16                    ; Rupee item slot
    BEQ @TakeRupee
    CPY #$19                    ; Heart item slot
    BEQ TakeHearts
    ; For key item slot, play the tune here.
    ; Add to the amount below.
    ;
    CPY #$17
    BNE :+
    JSR PlayKeyTakenTune
:
    ; For fairy item slot, go handle it where hearts are increased.
    ;
    CPY #$14
    BEQ TakeHeartsNoSound
    ; Keys and other items.
    ; Add item value and value in item slot.
    ;
    LDA $0A
    CLC
    ADC Items, Y
    BCC :+                      ; If the sum overflowed,
@SetItemValueFF:
    LDA #$FF                    ; then cap it at $FF.
:
    ; For potion item slot, cap it at 2.
    ;
    CPY #$07
    BNE :+
    CMP #$03
    BCC :+
    LDA #$02
:
    ; For bomb item slot, cap it at MaxBombs.
    ;
    CPY #$01
    BNE :+
    CMP MaxBombs
    BCC :+
    LDA MaxBombs
:
    JMP SetItemValue            ; Go set the item value and return.

@TakeHeartContainer:
    ; For heart containers, cap at $10.
    ; Add a heart container and a heart.
    ;
    LDA Items, Y
    CMP #$F0
    BCS L6C28_Exit              ; If we already have max hearts, return.
    ADC #$11
    JMP SetItemValue            ; Go set the item value and return.

@TakeRupee:
    JMP TakeOneRupee

@CheckClass2:
    ; Make sure this is an item of a type ordered by grade.
    ; Then go handle it.
    ;
    CMP #$20
    BNE @SetItemValueFF         ; If the class is $30, go set item value to $FF.
    BEQ HandleClass2
TakeClass0Complex:
    ; We're taking a class 0 complex item found in UW.
    ;
    ; A: item class
    ; X: item type
    ; Y: item slot
    ;
    LDA CurLevel
    BEQ @Exit                   ; If in OW, return.
    CPY #$1B                    ; Triforce of Power item slot
    BEQ L_TakePowerTriforce
    CPY #$11                    ; Map item slot
    BNE :+                      ; If it's the map item slot,
    LDX #$01                    ; then signal the main loop to draw the status bar map.
    STX StatusBarMapTrigger
:
    ; Choose the right slot for the level. (map/map9, compass/compass9)
    ;
    SEC
    SBC #$01                    ; Subtract one from level number to base it on 0.
    CMP #$08
    BCC :+                      ; If the result >= 8, we're in level 9,
    INY                         ; So add 2 to the item slot to use the one for level 9.
    INY
:
    AND #$07                    ; Make sure the level index is in the range 0 to 8.
    TAX
    ; Combine the mask for this level with the mask in the item slot.
    ;
    LDA Items, Y
    ORA LevelMasks, X
    STA Items, Y
    ; If the item taken was a triforce piece, then go to mode $12.
    ;
    CPY #$1A
    BNE @Exit                   ; If it's not a triforce piece, then return.
    JSR EndGameMode
    LDA #$12
    STA GameMode
@Exit:
    RTS

; Params:
; [0A]: item value/amount
;
TakeHearts:
    JSR PlayKeyTakenTune
TakeHeartsNoSound:
    LDA $0A                     ; Move item value in [0A] to [01].
    STA $01                     ; [01] holds the number of hearts to add minus 1.
@CompareHearts:
    ; For that many hearts, add them one by one.
    ;
    JSR CompareHeartsToContainers
    BNE @AddWholeHeart          ; If there's room to add a whole heart, go add it.
    ; If partial heart is not full, then fill it and return.
    ;
    LDX HeartPartial
    INX
    BNE @FillHeartPartial
    RTS

@AddWholeHeart:
    ; Add a whole heart.
    ;
    INC HeartValues
    DEC $01
    BPL @CompareHearts          ; If there are more hearts to add, go compare them to heart containers again.
    RTS

@FillHeartPartial:
    LDA #$FF
    STA HeartPartial
    RTS

; Returns:
; Z: 1 if hearts = containers
;
CompareHeartsToContainers:
    LDA HeartValues
    PHA
    AND #$0F
    STA $00
    PLA
    LSR
    LSR
    LSR
    LSR
    CMP $00
    RTS

L_TakePowerTriforce:
    LDA #$01
    JSR SwitchBank_Local5
    JMP TakePowerTriforce

HandleClass2:
    ; Class 2. We have a type of item that is ordered by grade.
    ; Item value is the grade.
    ;
    ; A: item class
    ; X: item type
    ; Y: item slot
    ; [0A]: item value
    ;
    LDA $0A
    CMP Items, Y
    BCC L6D1B_Exit              ; If we have a higher grade of this kind of item, return.
    STA Items, Y                ; Set the new item grade.
    CPY #$0B                    ; Ring item slot
    BNE L6D1B_Exit              ; If the item is not a ring, return.
    ; We took a ring. Change Link's color.
    ;
    LDX CurSaveSlot
    LDY InvRing                 ; Get ring in inventory.
    LDA LinkColors_CommonCode, Y    ; Get the color for this ring value.
    LDY SaveSlotToPaletteRowOffset, X    ; Get the offset of row 4, 5, or 6, depending on save slot.
    STA MenuPalettesTransferBuf+20, Y    ; Patch the color into the menu palette.
    JMP PatchAndCueLevelPalettesTransferAndAdvanceSubmode    ; Then patch the color into the level's palette.

TakeOneRupee:
    LDA #$01                    ; Play "rupee taken" tune.
    STA Tune1Request
    INC RupeesToAdd
L6D1B_Exit:
    RTS

PlayKeyTakenTune:
    LDA #$00                    ; Stop playing tune 2.
    STA Tune1Request
    LDA #$08                    ; Play "key taken" tune.
    STA Tune0Request
    RTS

; Params:
; [$051C]: cycle number
;
; Returns:
; Z: 1 if done updating
;
; ObjTimer[12] is the world fade timer. Every 10 frames,
; we step to the next half palette. There are 4 steps to fading.
;
AnimateWorldFading:
    LDA ObjTimer+12
    BNE @Exit                   ; If the timer hasn't expired, then only delay (return).
    LDA FadeCycle
    BPL :+                      ; If the cycle number is negative, then this is a reverse fade.
    EOR #$83
:
    STA $00                     ; Map cycle value with hex digits XY to offset (X0 + Y*8).
    ASL
    ASL
    ASL
    CLC
    ADC $00
    AND #$FC
    TAY
    ; Start writing in dynamic transfer buf from the next position
    ; available. X holds this offset.
    LDX DynTileBufLen
    LDA #$3F                    ; Write PPU address $3F08, bottom half of background palette.
    STA DynTileBuf, X
    INX
    LDA #$08
    STA DynTileBuf, X
    INX                         ; %A holds 8. Write that as the length of the record.
    STA DynTileBuf, X
    ; Copy 8 bytes of half palette into transfer buf.
    ;
    STA $00
    INX
@CopyPalette:
    LDA LevelInfo_PaletteCycles, Y
    STA DynTileBuf, X
    INY
    INX
    DEC $00
    BNE @CopyPalette
    LDA #$FF                    ; Write the end marker.
    STA DynTileBuf, X
    STX DynTileBufLen           ; Store the new position into the dynamic transfer buf as the length.
    INC FadeCycle
    LDA FadeCycle
    AND #$0F
    CMP #$04
    BEQ @ReturnDone
    LDA #$0A                    ; Update every 10 frames.
    STA ObjTimer+12
@Exit:
    RTS

@ReturnDone:
    LDA #$00
    RTS

BlankPrioritySpriteTemplates:
    .BYTE $3D, $1C, $20, $00, $DD, $1C, $20, $00

WriteBlankPrioritySprites:
    ; TODO: Why are their Y coordinates $3D and $DD?
    ; Those values are the highest and lowest that Link can normally take.
    ;
    ; Repeat two sprites in the first $10 records. They have
    ; transparent tile $1C, priority 1 (behind BG), and X=0.
    ; The first of the pair has Y=$3D, and the second one has Y=$DD.
    ;
    LDY #$00
    LDX #$00
:
    LDA BlankPrioritySpriteTemplates, X
    STA Sprites, Y
    INX
    TXA
    AND #$07
    TAX
    INY
    CPY #$40
    BNE :-
    RTS

ForestMazeDirs:
    .BYTE $08, $02, $04, $02

MountainMazeDirs:
    .BYTE $08, $08, $08, $08

; Params:
; Y: room ID
;
CheckMazes:
    LDX MazeStep
    LDA ObjDir
    LDY RoomId
    CPY #$61
    BNE @CheckMountainMaze      ; If not in forest maze, go check mountain maze.
    CMP ForestMazeDirs, X
    BNE @Mismatch               ; If direction doesn't match current step, go handle it.
    ; The direction matches the step.
    ;
    CPX #$03
    BEQ @PlaySecretTune         ; If the last step matches, go let the player pass.
@AdvanceMaze:
    ; Haven't passed the last step. So increment the step,
    ; but repeat this room.
    INC MazeStep
@SetNextRoom:
    STY NextRoomId
@Exit:
    RTS

@ResetMazeStep:
    LDA #$00
    STA MazeStep
    RTS

@Mismatch:
    CMP #$01
    BEQ @Exit                   ; If going right in the forest, allow exit.
@Reset:
    JSR @ResetMazeStep          ; Else you have to start over.
    BEQ @SetNextRoom            ; Go set the next room to the current one, and return.
@CheckMountainMaze:
    CPY #$1B
    BNE @ResetMazeStep          ; If not in the mountain maze either, go reset the maze step and leave room alone.
    CMP MountainMazeDirs, X
    BEQ @Match                  ; If the direction matches the current step, go see if it's the last one.
    CMP #$02
    BNE @Reset                  ; If not going left in the mountain, go start over.
    RTS                         ; Else allow exit.

@Match:
    CPX #$03
    BNE @AdvanceMaze            ; If this isn't the last step, then go advance the step, but repeat the room.
@PlaySecretTune:
    ; Play secret tune, and let the player leave the maze.
    ;
    LDA #$04
    STA Tune1Request
    RTS

; Params:
; [02]: Y
; [03]: X
;
; Returns:
; [00]: high byte of PPU address
; [01]: low byte of PPU address
;
;
; Turn the 16-bit value 08YY into the PPU address
; ($2000 + (YY * 4)) by multiplying it by 4.
;
; Each row of tiles is 32 tiles (and bytes) long, and 8 pixels tall.
; This is why the Y coordinate is multiplied by 4 (= 32 / 8).
;
MapScreenPosToPpuAddr:
    LDA #$08
    STA $00
    LDA $02
    ASL
    ROL $00
    ASL
    ROL $00
    AND #$E0
    STA $01
    ; Now divide X coordinate by 8, because each tile is 8 pixels wide.
    ;
    LDA $03
    LSR
    LSR
    LSR
    ; Combine the low address of the row with the column to get
    ; the final low byte of PPU address.
    ;
    ORA $01
    STA $01
    RTS

Unknown_758A:
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF

ObjAnimations:
    .BYTE $00, $08, $0B, $0F, $13, $17, $5C, $60
    .BYTE $1B, $1B, $21, $21, $64, $6A, $27, $29
    .BYTE $2B, $35, $3F, $70, $74, $76, $76, $78
    .BYTE $7A, $7E, $80, $49, $82, $84, $86, $4B
    .BYTE $4F, $4F, $51, $51, $88, $8C, $90, $90
    .BYTE $92, $94, $96, $98, $99, $99, $99, $53
    .BYTE $54, $9A, $9B, $9B, $A5, $A5, $AB, $AB
    .BYTE $AC, $AE, $AE, $AF, $AF, $B2, $B8, $B8
    .BYTE $08, $08, $C6, $C6, $C6, $C6, $C6, $C6
    .BYTE $C8, $C8, $C9, $C9, $CA, $CA, $CA, $CA
    .BYTE $CA, $CA, $CA, $CA, $09, $09, $0A, $0A
    .BYTE $0B, $0B, $0B, $0B, $0B, $0B, $CB, $55
    .BYTE $55, $55, $55, $55, $55, $55, $56, $57
    .BYTE $57, $CB, $CC, $58, $58, $58, $58, $58
    .BYTE $58, $58, $58, $58, $59, $59, $59, $59
    .BYTE $5A, $5A, $5A, $5A, $5B, $5B, $5B

ObjAnimFrameHeap:
    .BYTE $00, $04, $08, $0C, $10, $10, $14, $18
    .BYTE $5C, $9E, $44, $CE, $D2, $D6, $DA, $CE
    .BYTE $D2, $D6, $DA, $F0, $F4, $F8, $FC, $F0
    .BYTE $F4, $F8, $FC, $B4, $B0, $B0, $B8, $B2
    .BYTE $B2, $B4, $B0, $B0, $B8, $B2, $B2, $CA
    .BYTE $CC, $CA, $CC, $BC, $BE, $C0, $C0, $C2
    .BYTE $C4, $C0, $C0, $BC, $BE, $BC, $BE, $C0
    .BYTE $C0, $C2, $C4, $C0, $C0, $BC, $BE, $BC
    .BYTE $BE, $EC, $EE, $EC, $EE, $EC, $EE, $BC
    .BYTE $BE, $C6, $C8, $A0, $A8, $A4, $AC, $90
    .BYTE $E8, $E4, $E0, $94, $F3, $C9, $BD, $C1
    .BYTE $98, $9A, $9C, $F8, $B8, $BC, $B0, $B4
    .BYTE $B8, $BC, $B0, $B4, $B8, $AC, $B4, $BC
    .BYTE $B0, $B4, $B8, $AC, $B4, $BC, $B0, $B4
    .BYTE $AC, $AE, $B0, $B2, $A8, $AA, $92, $94
    .BYTE $A0, $A2, $A6, $A4, $A2, $A4, $D8, $DA
    .BYTE $00, $00, $9A, $9C, $9A, $9C, $9A, $9C
    .BYTE $B4, $B8, $BC, $BE, $B4, $B8, $BC, $BE
    .BYTE $FC, $FE, $AC, $9C, $A0, $A4, $A0, $A4
    .BYTE $A8, $8E, $A4, $DC, $E0, $E4, $E8, $EC
    .BYTE $F0, $F4, $F8, $FA, $FE, $F4, $F6, $FE
    .BYTE $FC, $F0, $F8, $B0, $F6, $F0, $D4, $FC
    .BYTE $FE, $F8, $E8, $EA, $E0, $E4, $EC, $EC
    .BYTE $D0, $D4, $D8, $DC, $E0, $E4, $C0, $C8
    .BYTE $C4, $CC, $E8, $EA, $72, $74, $DE, $EE
    .BYTE $F8, $96, $98, $B1

ObjAnimAttrHeap:
    .BYTE $00, $00, $00, $00, $00, $00, $00, $00
    .BYTE $02, $00, $00, $01, $01, $01, $01, $02
    .BYTE $02, $02, $02, $03, $03, $03, $03, $02
    .BYTE $02, $02, $02, $02, $82, $02, $02, $82
    .BYTE $02, $01, $81, $01, $01, $81, $01, $01
    .BYTE $01, $02, $02, $02, $02, $01, $01, $01
    .BYTE $01, $01, $01, $02, $02, $02, $02, $02
    .BYTE $02, $02, $02, $02, $02, $02, $02, $03
    .BYTE $03, $03, $03, $03, $03, $03, $03, $03
    .BYTE $03, $02, $02, $02, $02, $02, $02, $02
    .BYTE $02, $01, $01, $01, $02, $03, $03, $03
    .BYTE $02, $02, $00, $02, $01, $01, $01, $01
    .BYTE $02, $02, $02, $02, $02, $02, $02, $02
    .BYTE $02, $02, $01, $01, $01, $01, $01, $01
    .BYTE $01, $01, $01, $01, $03, $03, $03, $03
    .BYTE $00, $00, $02, $02, $02, $02, $03, $03
    .BYTE $03, $03, $01, $01, $02, $02, $03, $03
    .BYTE $01, $01, $01, $01, $02, $02, $02, $02
    .BYTE $01, $01, $01, $01, $02, $02, $02, $02
    .BYTE $02, $02, $01, $03, $03, $03, $03, $03
    .BYTE $03, $03, $03, $03, $03, $01, $01, $01
    .BYTE $01, $01, $01, $02, $00, $00, $03, $01
    .BYTE $01, $01, $01, $01, $01, $01, $01, $01
    .BYTE $03, $03, $03, $03, $03, $03, $03, $03
    .BYTE $03, $03, $03, $03, $03, $03, $02, $02
    .BYTE $01, $01, $02, $03

SpriteOffsets:
    .BYTE $60, $BC, $64, $B8, $68, $B4, $6C, $B0
    .BYTE $70, $CC, $74, $C8, $78, $C4, $7C, $C0
    .BYTE $80, $DC, $84, $D8, $88, $D4, $8C, $D0
    .BYTE $90, $EC, $94, $E8, $98, $E4, $9C, $E0
    .BYTE $A0, $FC, $A4, $F8, $A8, $F4, $AC, $F0
    .BYTE $60

AnimateAndDrawObjectWalking:
    JSR AnimateObjectWalking
    TYA
    JMP DrawObjectNotMirrored

; Params:
; A: frame image
; X: object index
; [00]: object X
; [01]: object Y
;
;
; Set [0C] mirrored.
DrawObjectMirrored:
    LDY #$01
    BNE :+
; Params:
; A: frame image
; X: object index
; [00]: object X
; [01]: object Y
; [0F]: flip horizontally
;
DrawObjectNotMirrored:
    LDY #$00
:
    STY $0C                     ; Set [0C] not mirrored.
    ; Set animation index = object type + 1.
    ;
    LDY ObjType, X
; Params:
; A: frame
; X: object index/cycle sprite index
; Y: object type
; [00]: object X
; [01]: object Y
; [0C]: mirrored
; [0F]: flip horizontally
;
; Note:
; If the object is not mirrored, then it's horizontally flippable.
;
; The animation index of most objects is (object type + 1),
; to make up for the fact that Link uses two animation indexes.
;
DrawObjectWithType:
    INY
; Params:
; A: frame
; X: object index/cycle sprite index
; Y: animation index
; [00]: object X
; [01]: object Y
; [0C]: mirrored
; [0F]: flip horizontally
;
; Note:
; If the object is not mirrored, then it's horizontally flippable.
; But Link uses [0F] for flipping without checking [0C].
;
;
; [0D] holds frame.
DrawObjectWithAnim:
    STA $0D
    STY $0E                     ; [0E] holds animation index.
    STX $08                     ; [08] holds object index/cycle sprite index
    ; Set the left and right sprite record offsets for CurSpriteIndex.
    ;
    LDY RollingSpriteIndex
    LDA SpriteOffsets, Y
    STA LeftSpriteOffset
    LDA SpriteOffsets+1, Y
    ; But if it's Link, then hardcode them to sprites $12 and $13.
    ;
    CPX #$00
    BNE DrawObjectWithAnimAndSpecificSprites
    LDA #$48                    ; Link's left sprite record offset
    STA LeftSpriteOffset
    LDA #$4C                    ; Link's right sprite record offset
DrawObjectWithAnimAndSpecificSprites:
    STA RightSpriteOffset
    LDY $0E
    LDA #$01                    ; This object has 2 sides.
    STA $07
    LDA #$08                    ; The right side is 8 pixels away from the left.
    STA $0A
    LDA ObjAnimations, Y
    CLC
    ADC $0D                     ; Add frame number.
    TAY
    LDA ObjAnimFrameHeap, Y     ; Look up the tile.
    STA $02                     ; Set the left tile.
    CLC
    ADC #$02
    STA $03                     ; The right tile is two tiles over.
    ; If object is Link, or object index/slot >= $D (weapons, room item),
    ; then go set attributes and write sprites.
    ;
    CPX #$00
    BEQ @UseTableAttr
    CPX #$0D
    BCS @UseTableAttr
    ; If the object has a "half-width draw" attribute, then
    ; go draw half-width.
    ;
    LDA ObjAttr, X
    AND #$02                    ; "Half-width draw" object attribute
    BNE @DrawHalfWidth
    ; If the object has the "Ignore sprite attribute table" attribute,
    ; then don't look up sprite attributes.
    ;
    LDA ObjAttr, X
    AND #$08                    ; "Ignore sprite attribute table" object attribute
    BNE :+
@UseTableAttr:
    LDA ObjAnimAttrHeap, Y      ; Look up the sprite attribute.
    JSR Anim_SetSpriteDescriptorAttributes
:
    ; If it's Link, write the sprites. He's never mirrored.
    ;
    CPX #$00
    BEQ Anim_WriteHorizontallyFlippableSpritePair
    ; For other objects, the caller controls mirroring and flipping.
    ;
    ; If mirrored [0C], then draw it mirrored.
    ; Else draw it horizontally flippable, controlled by [0F].
    ;
    LDY $0C
    BEQ Anim_WriteHorizontallyFlippableSpritePair
    JMP Anim_WriteMirroredSpritePair

@DrawHalfWidth:
    DEC $07                     ; Mark the object narrow (half-width).
    JMP Anim_WriteSpritePair

; Params:
; [00]: Object X
; [01]: Object Y
; [02]: Left tile
; [03]: Right tile
; [04]: Left attributes
; [05]: Right attributes
; [07]: Has two sides
; [08]: Cycle sprite index
; [0A]: X separation
; [0F]: Flip horizontally
; [0343]: LeftSpriteOffset
; [0344]: RightSpriteOffset
;
; If [0F] = 0, write the sprite pair with no further processing.
;
Anim_WriteHorizontallyFlippableSpritePair:
    LDA $0F
    BEQ Anim_WriteSpritePair
    ; Otherwise, reverse the two sides.
    ;
    LDA $02
    PHA
    LDA $03
    STA $02
    PLA
    STA $03
    ; Set the horizontal flip sprite attributes.
    ;
    LDA $04
    EOR #$40
    STA $04
    LDA $05
    EOR #$40
    STA $05
; Params:
; [00]: Object X
; [01]: Object Y
; [02]: Left tile
; [03]: Right tile
; [04]: Left attributes
; [05]: Right attributes
; [07]: Has two sides
; [08]: Cycle sprite index
; [0A]: X separation
; [0343]: LeftSpriteOffset
; [0344]: RightSpriteOffset
;
; If not currently invincible, then leave the attributes alone.
;
Anim_WriteSpritePair:
    LDY ObjInvincibilityTimer, X
    BEQ Anim_WriteSpritePairNotFlashing
    ; For both left and right sprites, indexed by Y register:
    ;
    LDY #$01
:
    LDA $0004, Y                ; Toss out the palette bits of the sprite attributes.
    AND #$FC
    STA $0004, Y
    LDA ObjInvincibilityTimer, X    ; Patch the bottom 2 bits of the invincibility timer.
    AND #$03
    ORA $0004, Y
    STA $0004, Y                ; This gives us the flashing effect.
    DEY
    BPL :-
Anim_WriteSpritePairNotFlashing:
    LDX LeftSpriteOffset        ; Access the first sprite.
    LDY #$00
@LoopSprite:
    LDA $0002, Y                ; Write the sprite tile.
    STA Sprites+1, X
    LDA $01                     ; Write the sprite Y.
    STA Sprites, X
    LDA $00                     ; Write the sprite X.
    STA Sprites+3, X
    CLC                         ; Separate the second sprite appropriately from the first.
    ADC $0A
    STA $00
    LDA $0004, Y                ; Write the sprite attributes.
    STA Sprites+2, X
    LDX RightSpriteOffset       ; Now point to the other sprite.
    LDA $08                     ; Cycle the current sprite index, if needed.
    BEQ :+
    JSR CycleCurSpriteIndex
:
    INY                         ; Increase the index to access the second sprite's properties.
    DEC $07
    BPL @LoopSprite             ; If there is a right sprite, then go process it.
    LDX $08                     ; Put the object index in X again.
    RTS

Anim_ItemFrameOffsets:
; Maps an item slot to the offset of its first frame in ItemFrameTiles heap.
    .BYTE $00, $03, $07, $0A, $0B, $0C, $0D, $0E
    .BYTE $0F, $11, $12, $13, $14, $15, $16, $17
    .BYTE $18, $17, $18, $17, $19, $1B, $1C, $1D
    .BYTE $1E, $1F, $20, $21, $1C, $22, $22, $26
    .BYTE $27, $28, $29, $2B, $2E

Anim_ItemFrameTiles:
    .BYTE $20, $82, $3C, $34, $70, $72, $74, $28
    .BYTE $86, $3C, $2A, $26, $24, $22, $40, $4A
    .BYTE $8A, $6C, $42, $46, $76, $2C, $4E, $4C
    .BYTE $6A, $50, $52, $66, $32, $2E, $68, $F3
    .BYTE $6E, $F2, $36, $38, $3A, $3C, $56, $48
    .BYTE $78, $20, $82, $7A, $7C, $30, $64, $62

Anim_WriteStaticItemSpritesWithAttributes:
    ; A: sprite attributes
    ; X: cycle sprite index / object index
    ; Y: item slot
    ; [00]: X
    ; [01]: Y
    ;
    JSR Anim_SetSpriteDescriptorAttributes
    LDA #$00
    STA $0F                     ; Reset horizontal flipping.
    STA $0C                     ; Reset frame.
; Params:
; X: cycle sprite index / object index
; Y: item slot
; [00]: X
; [01]: Y
; [04]: left sprite attributes
; [05]: right sprite attributes
; [0C]: frame image
; [0F]: flip horizontally
;
; Returns:
; [52]: ProcessedNarrowObj
;
;
; Save the item slot passed in Y.
Anim_WriteItemSprites:
    TYA
    PHA
    LDA #$00
    STA ProcessedNarrowObj
    LDY RollingSpriteIndex      ; Determine the left and right sprite offsets for current sprite index.
    LDA SpriteOffsets, Y
    STA LeftSpriteOffset
    LDA SpriteOffsets+1, Y
    STA RightSpriteOffset
    PLA                         ; Restore the item slot passed in.
    TAY
; Params:
; X: cycle sprite index / object index
; Y: item slot
; [00]: X
; [01]: Y
; [04]: left sprite attributes
; [05]: right sprite attributes
; [0C]: frame
; [0F]: flip horizontally
; [0343]: LeftSpriteOffset
; [0344]: RightSpriteOffset
;
; Returns:
; [52]: ProcessedNarrowObj
;
;
; Store the object index in [08].
Anim_WriteSpecificItemSprites:
    STX $08
    LDA #$01                    ; Assume the object has two sides.
    STA $07
    LDA #$08                    ; Both sides are usually separated by 8 pixels.
    STA $0A
    LDA Anim_ItemFrameOffsets, Y
    CLC
    ADC $0C                     ; Get the frame.
    TAY
    LDA Anim_ItemFrameTiles, Y
    STA $02                     ; [02] gets the tile we just looked up.
    CLC
    ADC #$02                    ; The second tile must be two tiles farther in CHR.
    STA $03                     ; Put it in [03].
    ; If left tile is $F3 or in [$20, $62),
    ; then this is a narrow / half-width object.
    LDA $02
    CMP #$F3
    BEQ @Narrow
    CMP #$20
    BCC @Wide
    CMP #$62
    BCS @Wide
@Narrow:
    LDA LeftAlignHalfWidthObj
    BNE :+                      ; If not left-aligning a half-width object,
    LDA $00                     ; Then add 4 to X to center it.
    CLC
    ADC #$04
    STA $00
:
    INC ProcessedNarrowObj      ; Record that this is a half-width object.
    LDA #$00                    ; And mark it as such.
    STA $07
    JMP Anim_WriteSpritePair    ; Finished. Go write sprites.

@Wide:
    CMP #$6C
    BCC @_Slim                  ; If tile < $6C, go mark this a slim object.
    CMP #$7C
    BCC Anim_WriteMirroredSpritePair
    JMP Anim_WriteHorizontallyFlippableSpritePair    ; Tile >= $7C. Can flip horizontally.

@_Slim:
    LDA #$07
    STA $0A                     ; Both sides of slim objects overlap one pixel.
; Params:
; X: cycle sprite index / object index
; [00]: X
; [01]: Y
; [02]: left tile
; [03]: right tile
; [04]: left sprite attributes
; [05]: right sprite attributes
; [0343]: LeftSpriteOffset
; [0344]: RightSpriteOffset
;
;
; All wide items that we process have mirrored sides.
Anim_WriteMirroredSpritePair:
    LDA $02
    STA $03                     ; Make the right side the same as the left.
    LDA $05                     ; Flip the right side horizontally.
    EOR #$40
    STA $05
    JMP Anim_WriteSpritePair

; Returns:
; A: 2
; [04]: left sprite attributes
; [05]: right sprite attributes
;
Anim_SetSpriteDescriptorRedPaletteRow:
    LDA #$02
; Params:
; A: sprite attributes for both sides
;
; Returns:
; [04]: left side sprite attributes
; [05]: right side sprite attributes
;
; Doesn't change A.
;
Anim_SetSpriteDescriptorAttributes:
    STA $04
    STA $05
    RTS

; Params:
; A: tile number
; X: object index
;
Anim_WriteLevelPaletteSprite:
    LDY #$03
    STY $03
; Params:
; A: tile number
; X: object index
; [03]: sprite attributes
;
Anim_WriteSprite:
    PHA
    LDA ObjInvincibilityTimer, X
    BEQ :+
    LDA FrameCounter
    AND #$03
    STA $03
:
    LDY RollingSpriteIndex
    LDA SpriteOffsets, Y
    TAY
    PLA
; Params:
; A: tile number
; X: object index
; Y: sprite record offset
; [03]: sprite attributes
;
Anim_WriteSpecificSprite:
    STA Sprites+1, Y
    LDA ObjX, X
    STA Sprites+3, Y
    LDA ObjY, X
; Params:
; A: Y coordinate
; Y: sprite record offset
; [03]: sprite attributes
;
Anim_EndWriteSprite:
    STA Sprites, Y
    LDA $03
    STA Sprites+2, Y
    JMP CycleCurSpriteIndex

Person_DrawAndCheckCollisions_Common:
    JSR CheckMonsterCollisions
    ; If the person is flagged dead, then
    ; enable fireballs from the two flames, and reset the metastate.
    ;
    LDA ObjMetastate+1
    BEQ Person_Draw
    STA PersonFireballsEnabled
    LDA #$00
    STA ObjMetastate+1
Person_Draw:
    ; Either way, draw the object.
    ;
    JSR Anim_FetchObjPosForSpriteDescriptor
    JMP DrawObjectMirrored

; Params:
; X: object index
;
; Note:
; This routine might modify the facing direction.
;
CheckMonsterCollisions:
    JSR GetObjectMiddle
    ; If the object is invincible, skip checking collisions with Link's weapons.
    ; But go check for a collision with Link.
    ;
    LDA ObjAttr, X
    AND #$20                    ; Invincible
    BNE @CheckLink
    ; If temporarily invincible, return.
    ;
    LDA ObjInvincibilityTimer, X
    BNE @Exit
    ; Check for collisions with each weapon.
    ;
    LDY #$0F
    JSR CheckMonsterBoomerangOrFoodCollision
    LDY #$0E
    JSR CheckMonsterSwordShotOrMagicShotCollision
    LDY #$10
    JSR CheckMonsterBombOrFireCollision
    LDY #$11
    JSR CheckMonsterBombOrFireCollision
    LDY #$0D
    JSR CheckMonsterSwordCollision
    LDY #$12
    JSR CheckMonsterArrowOrRodCollision
@CheckLink:
    JSR CheckLinkCollision
    ; If the monster is not dying, then go see about monsters
    ; that capture Link.
    ;
    LDA ObjType, X
    LDY ObjMetastate, X
    BEQ @CheckCaptors
    ; This monster is dying.
    ;
    ; If it's a goriya that threw a boomerang, then destroy the boomerang.
    ;
    CMP #$05
    BEQ :+
    CMP #$06                    ; Red Goriya
    BNE @Exit
:
    LDA ObjState, X
    BPL @Exit
    LDY ObjRefId, X             ; Get the object slot of this goriya's boomerang.
    LDA #$00
    STA ObjType, Y
@Exit:
    RTS

@CheckCaptors:
    ; If the monster is a wallmaster or like-like and there's a hit
    ; (using [0C] flag), then set the monster's capture flag.
    ;
    ; Wallmaster object type
    CMP #$27
    BEQ :+
    CMP #$17                    ; LikeLike object type
    BNE @Exit2
:
    LDA $0C
    BEQ @Exit2
    INC ObjCaptureTimer, X
@Exit2:
    RTS

; Params:
; X: object index
;
; Returns:
; [02]: center X
; [03]: center Y
;
;
; Start with offset 8 for X and Y in [02] and [03].
;
GetObjectMiddle:
    LDA #$08
    STA $02
    STA $03
    ; If object attribute $40 is set, make X offset 4.
    ;
    LDA ObjAttr, X
    AND #$40                    ; Half width (for collision detection)
    BEQ :+
    LSR $02                     ; Cut the X offset [02] in half.
:
    ; Add object's X coordinate to [02].
    ;
    LDA ObjX, X
    CLC
    ADC $02
    STA $02
    ; Add object's Y coordinate to [03].
    ;
    LDA ObjY, X
    CLC
    ADC $03
    STA $03
ObjTypeToDamagePoints:
    .BYTE $60, $02, $01, $80, $80, $01, $80, $80
    .BYTE $80, $80, $80, $01, $02, $80, $80, $01
    .BYTE $80, $80, $01, $01, $80, $80, $02, $01
    .BYTE $02, $00, $80, $80, $80, $80, $01, $80
    .BYTE $80, $01, $01, $02, $01, $02, $02, $80
    .BYTE $80, $80, $80, $00, $00, $00, $00, $00
    .BYTE $02, $01, $01, $02, $02, $00, $00, $00
    .BYTE $02, $02, $02, $02, $01, $01, $04, $80
    .BYTE $80, $80, $01, $01, $01, $01, $01, $02
    .BYTE $02, $01, $01, $00, $00, $00, $00, $00
    .BYTE $00, $00, $00, $80, $80, $80, $01, $02
    .BYTE $02, $04, $04, $80, $01

; Params:
; X: monster object index
;
; Returns:
; [00]: 0 for Link slot
; [06]: 1 if objects collide
; [09]: 0 for Link damage type (none)
; [0C]: 1 if objects collide
; [034B]: ShotCollidesWithLink
;
; TODO:
; Returns:
; Y: 0
;
CheckLinkCollision:
    JSR GetObjectMiddle
    ; Reset variables to return.
    ;
    LDA #$00
    STA ShotCollidesWithLink
    STA $06
    STA $09
    STA $0C
    LDY #$00
    STY $00
    ; If Link is invincible, or we have the magic clock,
    ; or Link is stunned, or the monster is stunned;
    ; then return no collision.
    ;
    LDA ObjInvincibilityTimer
    ORA InvClock
    ORA ObjStunTimer
    ORA ObjStunTimer, X
    BNE L73A9_Exit
CheckLinkCollisionPreinit:
    ; If Link is halted or paralyzed, then return no collision.
    ;
    LDA ObjState
    CMP #$40
    BEQ L73A9_Exit
    LDA LinkParalyzed
    BNE L73A9_Exit
    ; If the object is a monster's shot/projectile, and it's not in a
    ; state that it can do damage; then return no collision.
    ;
    LDA ObjType, X
    CMP #$53
    BCC :+
    LDA ObjState, X
    AND #$F0
    CMP #$10
    BNE L73A9_Exit
:
    ; Store Link's midpoint coordinates in [04] and [05].
    ;
    LDA ObjX
    CLC
    ADC #$08
    STA $04
    LDA ObjY
    CLC
    ADC #$08
    STA $05
    ; If both objects are 9 pixels apart or more, then return no collision.
    ;
    LDA #$09
    JSR DoObjectsCollide
    BEQ L73A9_Exit
    ; They collide. Now find out how they collide.
    ;
    ; If it's a regular monster, go harm Link.
    ;
    LDA ObjType, X
    CMP #$53
    BCC HarmLink
    ; Here, the attacker is a monster's shot/projectile.
    ; Flag this kind of collision.
    ;
    INC ShotCollidesWithLink
    ; If object type = Fireball2 ($56) or $5A, or Link is not idle;
    ; then go harm Link.
    ;
    CMP #$56
    BEQ HarmLink
    CMP #$5A
    BEQ HarmLink
    LDA ObjState
    AND #$F0
    BNE HarmLink
    ; If Link and the shot are not facing opposite directions,
    ; then go harm Link.
    ;
    ; Note the bitwise AND in the test. It picks out one direction
    ; component of a monster that can move diagonally.
    ;
    LDA ObjDir
    ORA ObjDir, X
    AND #$0C
    CMP #$0C
    BEQ @FacingOpposite
    LDA ObjDir
    ORA ObjDir, X
    AND #$03
    CMP #$03
    BNE HarmLink
@FacingOpposite:
    ; Link and the shot are facing opposite directions.
    ; Link can parry certain weapons/shots.
    ;
    ; For flying rock, $54, arrow, and boomerang, this means
    ; no harmful collision; but it still counts as a shot collision.
    ; So, go treat this as a parry.
    ;
    LDA ObjType, X
    CMP #$55
    BCC @Parry
    CMP #$5B
    BCS @Parry
    ; If the magic shield is missing, then the rest of the shots do damage.
    ; So, go harm Link.
    ;
    LDA InvMagicShield
    BEQ HarmLink
@Parry:
    ; Else Link parries.
    ;
    ; Play the "parry" tune, and cancel the collision (reset [06]).
    ;
    LDA #$01
    STA Tune0Request
    LDA #$00
    STA $06
L73A9_Exit:
    RTS

HarmLink:
    JSR BeginShove
    ; Flag collision with [0C], even though [06] was already set.
    ;
    INC $0C
    ; Unpack the damage points for the monster's type.
    ; The low nibble is the high byte.
    ; (Damage points byte AND $F0) is the low byte.
    ;
    LDY ObjType, X
    LDA ObjTypeToDamagePoints, Y
    PHA
    AND #$0F
    STA $0D
    PLA
    AND #$F0
    STA $0E
; Params:
; X: object index of the attacker
; [0D]: damage points high byte
; [0E]: damage points low byte
;
;
; If object type is not whirlwind, then make the "hurt" sound effect.
;
Link_BeHarmed:
    LDY ObjType, X
    CPY #$2E
    BEQ :+
    LDA #$08
    JSR PlaySample
:
    ; For every level of ring (1 or 2), divide the 16-bit damage amount in [0E:0D] by 2.
    ;
    LDY InvRing
    BEQ @ResetHelp
:
    LSR $0D
    ROR $0E
    DEY
    BNE :-
@ResetHelp:
    ; Reset values used in special item drops.
    ;
    LDA #$00
    STA WorldKillCount
    STA HelpDropCount
    STA HelpDropValue
    ; If heart partial >= low damage points byte, then simply
    ; subtract the damage byte from heart partial.
    ; Else go borrow from full hearts.
    ;
    LDA HeartPartial
    CMP $0E
    BCC @BorrowHeart
    SEC
    SBC $0E
    STA HeartPartial
    ; If full hearts >= high damage points byte, then simply
    ; subtract the damage byte from full hearts.
    ; Else go handle Link dying.
    ;
    LDA HeartValues
    AND #$0F
    CMP $0D
    BCC @HandleDied
    LDA HeartValues
    SEC
    SBC $0D
    STA HeartValues
    RTS

@BorrowHeart:
    ; This isn't a simple case of borrowing. For example, supposing:
    ;   full heart=4 partial heart=$70
    ; The straightforward way to subtract $80 would yield $3F0.
    ; But the method here yields $3EF, because partial heart is
    ; considered full when = $FF instead of $100.
    ;
    LDA $0E
    SEC
    SBC HeartPartial
    STA $0E
    LDA HeartValues
    AND #$0F
    BEQ @HandleDied             ; If we can't borrow from full hearts, then Link died.
    DEC HeartValues
    LDA #$FF
    STA HeartPartial
    BNE @ResetHelp
@HandleDied:
    ; Link died.
    ;
    ; Set full hearts, partial heart, and Link's object state to 0.
    ; Make Link face down.
    ; Go to mode $11.
    ;
    LDA HeartValues
    AND #$F0
    STA HeartValues
    JSR EndGameMode
    STA HeartPartial
    STA ObjState
    LDA #$11
    STA GameMode
    LDA #$04
    STA ObjDir
:
    RTS

; Params:
; X: monster slot
; Y: weapon slot
; [02]: monster mid X
; [03]: monster mid Y
;
; Returns:
; [00]: weapon slot
;
; If the weapon slot holds food (high bit of state is set), then return.
;
CheckMonsterBoomerangOrFoodCollision:
    LDA a:ObjState, Y
    ASL
    BCS :-
    STY $00                     ; [00] holds the weapon slot
    ; Set boomerang damage type (2) in [09].
    ;
    LDA #$02
    STA $09
    ; Set collision threshold $A in both axes.
    ;
    LDA #$0A
    STA $0D
    STA $0E
    ; The boomerang's middle X is 4 pixels to the right. Store in [04].
    ;
    LDA a:ObjX, Y
    CLC
    ADC #$04
    STA $04
    ; The boomerang's middle Y is 8 pixels down. Store in [05].
    ;
    LDA a:ObjY, Y
    CLC
    ADC #$08
; Params:
; A: weapon object mid Y
; X: monster object slot
; Y: weapon object slot
; [00]: weapon object slot
; [02]: monster object mid X
; [03]: monster object mid Y
; [04]: weapon object mid X
; [07]: damage points
; [09]: damage type
; [0D]: horizontal threshold
; [0E]: vertical threshold
;
; Returns:
; [06]: 1 if objects collide
;
CheckMonsterWeaponCollision:
    STA $05
    ; Reset [06] for no collision.
    ;
    LDA #$00
    STA $06
    ; If the weapon's not active (state = 0), then return.
    ;
    LDY $00
    LDA a:ObjState, Y
    BEQ L74D8_Exit
    ; If the objects do not collide, then return.
    ;
    JSR DoObjectsCollideWithThresholds
    BEQ L74D8_Exit
    ; If the weapon is a boomerang ...
    ;
    CPY #$0F
    BNE HandleMonsterWeaponCollision
    ; ... and the monster is invincible to it,
    ; then play the parry sound.
    ;
    LDA ObjInvincibilityMask, X
    AND $09
    BEQ :+
    JSR PlayParryTune
:
    ; Set the boomerang state to return fast to the thrower.
    ;
    LDA #$50
    STA a:ObjState, Y
    ; If the monster is invincible to the boomerang, then return.
    ;
    LDA ObjInvincibilityMask, X
    AND $09
    BNE L74D8_Exit
    ; Still the boomerang.
    ; Reset [07] damage points, and set the monster's stun timer to $10 ($A0 frames).
    ;
    LDA #$00
    STA $07
    LDA #$10
    STA ObjStunTimer, X
HandleMonsterWeaponCollision:
    ; If the monster is invincible to this damage type, then
    ; go play parry sound if needed, and return.
    ;
    LDA ObjInvincibilityMask, X
    AND $09
    BNE L_PlayParrySoundForDamageType
    ; If the monster is Blue Gohma or Red Gohma, then
    ; let it handle the collision.
    ;
    LDA ObjType, X
    CMP #$33
    BEQ :+
    CMP #$34
    BNE @CheckZolVire
:
    JMP Gohma_HandleWeaponCollision

@CheckZolVire:
    ; If the monster is Zol or Vire, then
    ;   If not hit by the boomerang, then
    ;     Set monster's direction to the weapon's
    ;   Go deal damage
    ;
    CMP #$13
    BEQ :+
    CMP #$12
    BNE @CheckDarknut
:
    CPY #$0F
    BEQ DealDamage
    LDA a:ObjDir, Y
    STA ObjDir, X
    JMP DealDamage

@CheckDarknut:
    ; If the monster is a red or blue darknut, and it and the weapon
    ; are facing opposite directions, then only play the parry sound.
    ;
    CMP #$0B
    BEQ :+
    CMP #$0C
    BNE DealDamage
:
    LDA a:ObjDir, Y
    ORA ObjDir, X
    CMP #$0C
    BEQ L_PlayParrySoundForDamageType
    CMP #$03
    BEQ L_PlayParrySoundForDamageType
DealDamage:
    ; Play the "harmed" sound.
    ;
    LDA #$02
    STA Tune0Request
    ; Subtract the damage points from HP; if damage points >= HP,
    ; then go handle the monster dying.
    ;
    LDA ObjHP, X
    CMP $07                     ; [07] damage points
    BCC HandleMonsterDied
    SEC
    SBC $07                     ; [07] damage points
    STA ObjHP, X
    BEQ HandleMonsterDied
L74D8_Exit:
    RTS

L_PlayParrySoundForDamageType:
    ; Play the parry sound for all but fire and bomb damage types.
    ;
    LDA $09
    CMP #$20                    ; Fire damage type
    BEQ L74D8_Exit
    CMP #$08                    ; Bomb damage type
    BEQ L74D8_Exit
    JMP PlayParryTune

HandleMonsterDied:
    ; Handle the monster dying.
    ;
    INC WorldKillCount
    ; Increase the help drop counter, if not at max ($A).
    ;
    LDA HelpDropCount
    CMP #$0A
    BCS @SetDyingMetastate
    INC HelpDropCount
    ; If the help drop counter has reached the max, and damage type = bomb (8);
    ; then set [51] HelpDropValue in order to drop a bomb next time.
    ;
    LDA HelpDropCount
    CMP #$0A
    BNE @SetDyingMetastate
    LDA $09
    CMP #$08
    BNE @SetDyingMetastate
    INC HelpDropValue
@SetDyingMetastate:
    ; Set the dying metastate, and reset some object info.
    ;
    JSR UpdateDeadDummy
    LDA #$00
    STA ObjStunTimer, X
; Params:
; A: 0
;
ResetShoveInfoAndInvincibilityTimer:
    JSR SetShoveInfoWith0
    STA ObjInvincibilityTimer, X
    RTS

; Params:
; X: monster slot
; Y: weapon slot
; [02]: monster mid X
; [03]: monster mid Y
;
; Returns:
; [00]: weapon slot
;
; [00] holds the weapon slot
CheckMonsterSwordShotOrMagicShotCollision:
    STY $00
    ; Set magic shot damage type ($10) in [09].
    ;
    LDA #$10
    STA $09
    ; If the shot is a sword shot that's spreading out, then return.
    ;
    LDA a:ObjState, Y
    LSR
    BCS @Exit
    ; Set horizontal collision threshold $C.
    ;
    LDA #$0C
    STA $0D
    ; If the weapon is a magic shot, go use $20 damage points.
    ;
    LDA a:ObjState, Y
    LDY #$20
    ASL
    BCS @CheckCollision
    ; The weapon is a sword shot.
    ;
    ; First, change the damage type to sword (1).
    ;
    LDA #$01
    STA $09
    ; Determine the damage points for the kind of sword.
    ; - wood sword:   $10
    ; - white sword:  $20
    ; - master sword: $40
    ;
    LDY #$40
    LDA Items
    CMP #$03
    BEQ @CheckCollision
    LDY #$20
    CMP #$02
    BEQ @CheckCollision
    LDY #$10
@CheckCollision:
    TYA
    JSR CheckMonsterShotCollision
    ; If no collision, then return.
    ;
    LDA $06
    BEQ @Exit
    ; Else handle blocking the shot.
    ;
    TXA
    PHA
    LDX #$0E                    ; Shot object slot
    JSR HandleShotBlocked
    PLA
    TAX
@Exit:
    RTS

; Params:
; X: monster slot
; Y: weapon slot
; [02]: monster mid X
; [03]: monster mid Y
;
; Returns:
; [00]: weapon slot
;
; [00] holds the weapon slot
CheckMonsterBombOrFireCollision:
    STY $00
    ; Set up parameters for a fire.
    ;
    LDA #$20
    STA $09                     ; [09] holds fire damage type
    LDA #$10
    STA $07                     ; [07] holds $10 damage points
    LDA #$0E
    STA $0D                     ; [0D] holds collision threshold $E
    ; If the weapon is a fire, then go set the hotspot/midpoint.
    ; But if the bomb is not detonating, then return.
    ;
    LDA a:ObjState, Y
    CMP #$20
    BCS @SetHotspot
    CMP #$13
    BNE L7595_Exit
    ; Else set up parameters for a bomb.
    ;
    LDA #$08
    STA $09                     ; [09] holds bomb damage type
    LDA #$40
    STA $07                     ; [07] holds $40 damage points
    LDA #$18
    STA $0D                     ; [0D] holds collision threshold $18
@SetHotspot:
    ; The weapon's midpoint/hotspot is at (X + 8, Y + 8).
    ; Pass it in [04] and [05].
    ;
    LDA a:ObjX, Y
    CLC
    ADC #$08
    STA $04
    LDA a:ObjY, Y
    CLC
    ADC #$08
    STA $05
    LDA $0D                     ; Pass collision threshold in A.
    ; If the objects do not collide, then return.
    ;
    JSR DoObjectsCollide
    BEQ L7595_Exit
    JSR HandleMonsterWeaponCollision
    ; If the monster is weak to the damage type, then shove it.
    ;
    LDA ObjInvincibilityMask, X
    AND $09
    BNE L7595_Exit
    JSR BeginShove
L7595_Exit:
    RTS

SwordDamagePoints:
    .BYTE $10, $20, $40

; Params:
; X: monster slot
; Y: weapon slot
; [02]: monster mid X
; [03]: monster mid Y
;
; Returns:
; [00]: weapon slot
; [06]: 1 if objects collide
;
; [00] holds the weapon slot
CheckMonsterSwordCollision:
    STY $00
    ;Set sword damage type (1) in [09].
    ;
    LDA #$01
    STA $09
    ; If the sword is not fully extended, then return.
    ;
    LDA a:ObjState, Y
    CMP #$02
    BNE L7595_Exit
    ; Look up and set the damage points for the sword type.
    ;
    LDY Items
    LDA SwordDamagePoints-1, Y
; Params:
; A: damage points
; X: monster slot
; Y: weapon slot
; [02]: monster mid X
; [03]: monster mid Y
; [09]: damage type
;
; Returns:
; [06]: 1 if objects collide
;
; [07] damage points
CheckMonsterStabbingCollision:
    STA $07
    ; If Link's direction is vertical, then set collision thresholds accordingly:
    ; [0D] := $C
    ; [0E] := $10
    ;
    LDA ObjDir
    AND #$0C
    BEQ @Horizontal
    LDA #$0C
    STA $0D
    LDA #$10
    JMP :+

@Horizontal:
    ; Else switch it:
    ; [0D] := $10
    ; [0E] := $C
    ;
    LDA #$10
    STA $0D
    LDA #$0C
:
    STA $0E
    JSR CheckMonsterSlenderWeaponCollision2
    ; If no collision, then return.
    ;
    LDA $06
    BEQ L7595_Exit
    JMP ParryOrShove

; Params:
; X: monster slot
; Y: weapon slot
; [02]: monster mid X
; [03]: monster mid Y
;
; Returns:
; [00]: weapon slot
; [06]: 1 if objects collide
;
; [00] holds the weapon slot
CheckMonsterArrowOrRodCollision:
    STY $00
    LDA a:ObjState, Y
    ; If the weapon is a rod, then
    ; go check a stabbing collision using rod parameters.
    ;
    CMP #$30
    BCC :+
    LDA #$01
    STA $09                     ; [09] holds sword damage type
    LDA #$20                    ; Pass $20 damage points.
    BNE CheckMonsterStabbingCollision
:
    ; We have an arrow. If it's no longer flying, then return.
    ;
    CMP #$20
    BCS L763A_Exit
    ; Set up arrow parameters.
    ;
    LDA #$04
    STA $09                     ; [09] holds arrow damage type
    ; Use $20 damage points for wooden arrows, and $40 for silver ones.
    ;
    LDA #$20
    LDY InvArrow
    CPY #$01
    BEQ :+
    ASL
:
    LDY #$0B
    STY $0D                     ; [0D] holds collision threshold $B
; Params:
; A: damage points
; X: monster object slot
; [00]: weapon object slot
; [02]: monster object mid X
; [03]: monster object mid Y
; [09]: damage type
; [0D]: horizontal threshold
;
; Returns:
; [06]: 1 if objects collide
;
CheckMonsterShotCollision:
    JSR CheckMonsterSlenderWeaponCollision
    ; If no collision, return.
    ;
    LDA $06
    BEQ L763A_Exit
    ; $12 is the arrow and rod slot. But this routine will only
    ; be called if it's an arrow.
    ;
    ; If the weapon is an arrow and the monster is Pol's Voice;
    ; then set HP to 0, and deal damage, even if the collision
    ; checking routine above dealt some. This way it dies for sure.
    ;
    CPY #$12
    BNE ParryOrShove
    LDA ObjType, X
    CMP #$16                    ; Pol's Voice
    BNE :+
    LDA #$00
    STA ObjHP, X
    JMP DealDamage

:
    ; If the weapon is an arrow, set its state to spark ($20).
    ;
    LDA #$20
    STA a:ObjState, Y
    LDA #$03
    STA ObjAnimCounter, Y
ParryOrShove:
    ; For any weapon type:
    ;
    ; If the monster is a darknut and both are facing opposite directions,
    ; then go parry.
    ;
    LDA ObjType, X
    CMP #$0B                    ; Red Darknut
    BEQ :+
    CMP #$0C                    ; Blue Darknut
    BNE :++
:
    LDA a:ObjDir, Y
    ORA ObjDir, X
    CMP #$0C
    BEQ PlayParryTune
    CMP #$03
    BEQ PlayParryTune
:
    ; Else shove the monster.
    ;
    JMP BeginShove

PlayParryTune:
    LDA #$01
    STA Tune0Request
L763A_Exit:
    RTS

; Params:
; A: damage points
; X: monster object slot
; [00]: weapon object slot
; [02]: monster object mid X
; [03]: monster object mid Y
; [09]: damage type
; [0D]: horizontal threshold
;
; Returns:
; [06]: 1 if objects collide
; [07]: damage points
; [0E]: vertical threshold
;
CheckMonsterSlenderWeaponCollision:
    STA $07
    LDA $0D
    STA $0E
; Params:
; X: monster object slot
; [00]: weapon object slot
; [02]: monster object mid X
; [03]: monster object mid Y
; [07]: damage points
; [09]: damage type
; [0D]: horizontal threshold
; [0E]: vertical threshold
;
; Returns:
; [06]: 1 if objects collide
;
CheckMonsterSlenderWeaponCollision2:
    LDY $00
    ; If Link is facing vertically, then:
    ; [04] := (weapon X + 6)
    ; A    := (weapon Y + 8)
    ;
    ; TODO: Shouldn't it be based on the weapon's direction?
    ;
    LDA ObjDir
    AND #$0C
    BEQ @CheckHorizontal
    LDA a:ObjX, Y
    CLC
    ADC #$06
    STA $04
    LDA a:ObjY, Y
    CLC
    ADC #$08
    JMP :+

@CheckHorizontal:
    ; Else Link is facing horizontally.
    ; [04] := (weapon X + 8)
    ; A    := (weapon Y + 6)
    ;
    ; TODO: Shouldn't it be based on the weapon's direction?
    ;
    LDA a:ObjX, Y
    CLC
    ADC #$08
    STA $04
    LDA a:ObjY, Y
    CLC
    ADC #$06
:
    ; The A register will be copied to [05] and used here.
    ;
    JMP CheckMonsterWeaponCollision

; Params:
; A: collision distance threshold (objects collide if nearer in X and Y)
; [00]: weapon object slot (unused)
; [02]: object 1 mid X
; [03]: object 1 mid Y
; [04]: object 2 mid X
; [05]: object 2 mid Y
;
; Returns:
; A: 1 if objects collide
; Y: weapon object slot
; Z: 0 if objects collide
; [06]: 1 if objects collide
; [0A]: horizontal distance
; [0B]: vertical distance
;
;
; Use the same threshold value horizontally and vertically.
; Copy it to [0D] for horizontal threshold, and [0E] for vertical one.
;
DoObjectsCollide:
    STA $0D
    STA $0E
; Params:
; [00]: weapon or Link object slot (unused)
; [02]: object 1 mid X
; [03]: object 1 mid Y
; [04]: object 2 mid X
; [05]: object 2 mid Y
; [0D]: horizontal threshold
; [0E]: vertical threshold
;
; Returns:
; A: 1 if objects collide
; Y: weapon or Link object slot (copied from [00])
; Z: 0 if objects collide
; [06]: 1 if objects collide
; [0A]: horizontal distance
; [0B]: vertical distance
;
;
; Reset [06] to indicate no collision by default.
;
DoObjectsCollideWithThresholds:
    LDA #$00
    STA $06
    LDY $00
    ; Store in [0A] the horizontal distance between the two objects.
    ;
    LDA $02
    SEC
    SBC $04
    JSR Abs
    STA $0A
    ; If distance >= horizontal threshold in [0D], return 0.
    ;
    CMP $0D
    BCS @ReturnValue
    ; Store in [0B] the vertical distance between the two objects.
    ;
    LDA $03
    SEC
    SBC $05
    JSR Abs
    STA $0B
    ; If distance >= vertical threshold in [0E], return 0.
    ;
    CMP $0E
    BCS @ReturnValue
    ; If we get here, then the objects are close enough in both axes.
    ; Return 1.
    ;
    INC $06
@ReturnValue:
    LDA $06
    RTS

; Params:
; X: caller's object index, a monster
;    the attacker, if monster attacks Link
;    else defender, if weapon attacks monster
; [00]: 0 if monster attacks Link (defender),
;       else weapon slot (attacker)
; [09]: damage type,
;       only if a monster is defending
; TODO:
; [0B]: direction
;
; Only monsters (and fire) call this routine.
;
; When monsters attack Link, they set [00] to 0 for Link's slot.
;
; On the other hand, if a weapon attacks a monster,
; the monster sets [00] to the weapon's slot.
;
;
; If a weapon attacks a monster, and the weapon's damage
; type matches the monster's invincibility mask;
; then return without shoving.
;
; If a monster attacks Link, then damage type will be 0.
;
BeginShove:
    LDY $00
    CPX #$0D
    BCS :+
    LDA ObjInvincibilityMask, X
    AND $09
    BNE @Exit
:
    ; [08], [04], and [05] are used in determining the direction to push Link,
    ; if he is defending. The goal is to push Link away from the monster.
    ;
    ; If instead a monster is defending, then all this calculation
    ; won't matter, because the shove direction will be set to the
    ; weapon's direction.
    ;
    ; As such, calculate a direction from the monster to the defender,
    ; assuming it's Link.
    ;
    ; Start with an assumption that the direction is vertical:
    ; Store 8 (up) in [08], monster Y in [04], and other Y in [05].
    ;
    LDA #$08
    STA $08
    LDA ObjY, X
    STA $04
    LDA a:ObjY, Y
    STA $05
    ; If the defender is Link and his grid offset <> 0 then
    ; use his usual object direction variable to determine
    ; which axis to check.
    ;
    CPY #$00
    BNE :+
    LDA ObjGridOffset
    BEQ :+
    LDA ObjDir
    AND #$03
    BNE @CheckHorizontal
    BEQ @CheckVertical
:
    ; For monsters defending, or Link with grid offset = 0,
    ; check direction in [0B].
    ;
    ; For monsters defending, this won't matter. For Link with grid
    ; offset = 0, I believe the result will be arbitrary.
    ;
    ; TODO:
    ; Is [0B] always set if Link's grid offset = 0?
    ; It doesn't seem to be if candle fire attacks him.
    ;
    LDA $0B
    CMP #$04
    BCS @CheckVertical
@CheckHorizontal:
    ; If the direction checked is left or right,
    ; set [08] to 2 (left), monster X in [04] and other X in [05].
    ;
    LDA #$02
    STA $08
    LDA ObjX, X
    STA $04
    LDA a:ObjX, Y
    STA $05
@CheckVertical:
    ; If the monster is down or right of the other object,
    ; then use the opposite direction already in [08].
    ; Else shift [08] right to turn it into the opposite
    ; direction up or down.
    ;
    ; Again assuming Link is the defender; after this, [08] points
    ; Link away from the monster.
    ;
    LDA $04
    CMP $05
    BCS :+
    LSR $08
:
    ; If a monster is the defender, go handle it separately.
    ;
    CPY #$00
    BNE @MonsterDefender
    ; Link is the defender.
    ;
    ; If Link is invincible, return without shoving.
    ;
    LDA ObjInvincibilityTimer
    BNE @Exit
    ; Store the shove direction we determined.
    ;
    ; Turn on the high bit to indicate that the next time we try to
    ; move by shoving, it will be the first time for this shove action.
    ;
    LDA $08
    ORA #$80
    STA ObjShoveDir
    ; Mark Link invincible $18 frames, and should move $20 pixels.
    ;
    LDA #$18
    STA ObjInvincibilityTimer
    LDA #$20
    STA ObjShoveDistance
    ; If Link was shoved by one of his own weapons, then
    ; nothing else to do. Return.
    ;
    CPX #$0D
    BCS @Exit
    ; Link was shoved by a monster.
    ;
    ; If the monster's object attribute "reverse after hit Link" is set,
    ; then return.
    ;
    LDA ObjAttr, X
    AND #$80
    BNE @Exit
    ; If the attacker is a vire, then return.
    ;
    LDA ObjType, X
    CMP #$12
    BEQ @Exit
    ; Turn the attacker in the opposite direction.
    ;
    LDA ObjDir, X
    JSR GetOppositeDir
    STA ObjDir, X
@Exit:
    RTS

@MonsterDefender:
    ; A monster is the defender. A weapon is the attacker.
    ;
    ; Set the shove direction to the weapon's direction,
    ; instead of the direction passed in [0B].
    ;
    LDA a:ObjDir, Y
    STA $08
    ; TODO:
    ; If the monster's attribute "reverse after hit Link" is set, then
    ; combine the shove direction with $40.
    ;
    LDA ObjAttr, X
    AND #$80
    BEQ :+
    LDA $08
    ORA #$40
    STA $08
:
    ; If the monster is invincible, then return without shoving.
    ;
    LDA ObjInvincibilityTimer, X
    BNE @Exit2
    ; If the monster is not a Gohma, then go store the shove direction.
    ;
    LDA ObjType, X
    CMP #$33
    BEQ @Gohma
    CMP #$34
    BNE @SetShoveDir
@Gohma:
    ; This a Gohma, but if the current part [0F] is not an eye part (3 or 4),
    ; then return, so that the hit doesn't register.
    ;
    LDA $0F
    CMP #$03
    BEQ :+
    CMP #$04
    BNE @Exit2
:
    ; If Gohma's eye state/frame image <> 3, then return.
    ;
    LDA $046B, X
    CMP #$03
    BNE @Exit2
@SetShoveDir:
    ; Store the shove direction for the monster.
    ;
    ; Turn on the high bit to indicate that the next time we try to
    ; move by shoving, it will be the first time for this shove action.
    ;
    LDA $08
    ORA #$80
    STA ObjShoveDir, X
    ; Mark the monster invincible $10 frames, and should move $40 pixels.
    ;
    LDA #$40
    STA ObjShoveDistance, X
    LDA #$10
    STA ObjInvincibilityTimer, X
@Exit2:
    RTS

Unknown_7EE1:
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF


.SEGMENT "BANK_01_ISR"



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

SwitchBank_Local1:
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


.SEGMENT "BANK_01_VEC"



; Unknown block
    .BYTE $84, $E4, $50, $BF, $F0, $BF

