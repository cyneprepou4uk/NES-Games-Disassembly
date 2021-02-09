.INCLUDE "Variables.inc"
.INCLUDE "CommonVars.inc"
.INCLUDE "ObjVars.inc"

.SEGMENT "BANK_04_00"


; Imports from RAM code bank 01

.IMPORT _CalcDiagonalSpeedIndex
.IMPORT Abs
.IMPORT Anim_EndWriteSprite
.IMPORT Anim_SetSpriteDescriptorAttributes
.IMPORT Anim_SetSpriteDescriptorRedPaletteRow
.IMPORT Anim_WriteItemSprites
.IMPORT Anim_WriteLevelPaletteSprite
.IMPORT Anim_WriteSpecificSprite
.IMPORT Anim_WriteSprite
.IMPORT Anim_WriteStaticItemSpritesWithAttributes
.IMPORT AnimateWorldFading
.IMPORT BoundByRoom
.IMPORT BoundByRoomWithA
.IMPORT BoundDirectionHorizontally
.IMPORT BoundDirectionVertically
.IMPORT CheckLinkCollision
.IMPORT CheckLinkCollisionPreinit
.IMPORT CheckMonsterArrowOrRodCollision
.IMPORT CheckMonsterBombOrFireCollision
.IMPORT CheckMonsterCollisions
.IMPORT CheckMonsterSwordCollision
.IMPORT CheckMonsterSwordShotOrMagicShotCollision
.IMPORT CycleCurSpriteIndex
.IMPORT DealDamage
.IMPORT DoObjectsCollide
.IMPORT DrawObjectMirrored
.IMPORT DrawObjectNotMirrored
.IMPORT DrawObjectWithAnimAndSpecificSprites
.IMPORT GetDirectionsAndDistancesToTarget
.IMPORT GetObjectMiddle
.IMPORT GetOppositeDir
.IMPORT GetRoomFlagUWItemState
.IMPORT GetShortcutOrItemXYForRoom
.IMPORT Negate
.IMPORT Person_Draw
.IMPORT PlaySample
.IMPORT ResetShoveInfoAndInvincibilityTimer
.IMPORT ShowLinkSpritesBehindHorizontalDoors
.IMPORT SpriteOffsets
.IMPORT SpriteRelativeExtents
.IMPORT TryTakeItem
.IMPORT WriteBlankPrioritySprites

; Imports from program bank 07

.IMPORT _FaceUnblockedDir
.IMPORT Anim_AdvanceAnimCounterAndSetObjPosForSpriteDescriptor
.IMPORT Anim_FetchObjPosForSpriteDescriptor
.IMPORT Anim_SetObjHFlipForSpriteDescriptor
.IMPORT AnimateItemObject
.IMPORT AnimateObjectWalking
.IMPORT ChangeTileObjTiles
.IMPORT DestroyMonster
.IMPORT DrawArrow
.IMPORT DrawSwordShotOrMagicShot
.IMPORT FillTileMap
.IMPORT FindEmptyMonsterSlot
.IMPORT GetCollidableTile
.IMPORT GetCollidableTileStill
.IMPORT GetCollidingTileMoving
.IMPORT GetRoomFlags
.IMPORT GetUniqueRoomId
.IMPORT GoToNextModeFromPlay
.IMPORT LevelMasks
.IMPORT Link_EndMoveAndAnimate_Bank4
.IMPORT Link_EndMoveAndDraw_Bank4
.IMPORT MarkRoomVisited
.IMPORT MoveObject
.IMPORT Obj_Shove
.IMPORT ResetObjMetastate
.IMPORT ResetObjMetastateAndTimer
.IMPORT ResetObjState
.IMPORT ResetShoveInfo
.IMPORT ReverseObjDir
.IMPORT SetShoveInfoWith0
.IMPORT SetTypeAndClearObject
.IMPORT TableJump
.IMPORT UpdateArrowOrBoomerang
.IMPORT UpdateDeadDummy
.IMPORT Walker_Move

.EXPORT _InitMonsterShot_Unknown54
.EXPORT CheckZora
.EXPORT DestroyCountedMonsterShot
.EXPORT ExtractHitPointValue
.EXPORT Gohma_HandleWeaponCollision
.EXPORT InitAquamentus
.EXPORT InitArmosOrFlyingGhini
.EXPORT InitBlueKeese
.EXPORT InitBoulder
.EXPORT InitBoulderSet
.EXPORT InitBubble
.EXPORT InitDarknut
.EXPORT InitDigdogger1
.EXPORT InitDigdogger2
.EXPORT InitDodongo
.EXPORT InitFastOctorock
.EXPORT InitGanon
.EXPORT InitGel
.EXPORT InitGleeok
.EXPORT InitGleeokHead
.EXPORT InitGohma
.EXPORT InitLamnola
.EXPORT InitLeever
.EXPORT InitManhandla
.EXPORT InitMoldorm
.EXPORT InitMonsterShot
.EXPORT InitPatra
.EXPORT InitPeahat
.EXPORT InitPondFairy
.EXPORT InitRedOrBlackKeese
.EXPORT InitRope
.EXPORT InitSlowOctorockOrGhini
.EXPORT InitTektite
.EXPORT InitWalker
.EXPORT InitZelda
.EXPORT RevealAndFlagSecretStairsObj
.EXPORT SetUpDroppedItem
.EXPORT UpdateAquamentus
.EXPORT UpdateArmos
.EXPORT UpdateBlock
.EXPORT UpdateBlueLeever
.EXPORT UpdateBlueWizzrobe
.EXPORT UpdateBoulderSet
.EXPORT UpdateBubble
.EXPORT UpdateCandle
.EXPORT UpdateDarknut
.EXPORT UpdateDigdogger
.EXPORT UpdateDock
.EXPORT UpdateDodongo
.EXPORT UpdateFireball
.EXPORT UpdateFlyingGhini
.EXPORT UpdateGanon
.EXPORT UpdateGel
.EXPORT UpdateGhini
.EXPORT UpdateGibdo
.EXPORT UpdateGleeok
.EXPORT UpdateGleeokHead
.EXPORT UpdateGohma
.EXPORT UpdateGoriya
.EXPORT UpdateGuardFire
.EXPORT UpdateItem
.EXPORT UpdateKeese
.EXPORT UpdateLamnola
.EXPORT UpdateLikeLike
.EXPORT UpdateLynel
.EXPORT UpdateManhandla
.EXPORT UpdateMoblin
.EXPORT UpdateMoldorm
.EXPORT UpdateMonsterArrow
.EXPORT UpdateMonsterShot
.EXPORT UpdateOctorock
.EXPORT UpdatePatra
.EXPORT UpdatePatraChild
.EXPORT UpdatePeahat
.EXPORT UpdatePolsVoice
.EXPORT UpdatePondFairy
.EXPORT UpdateRedLeever
.EXPORT UpdateRedWizzrobe
.EXPORT UpdateRockOrGravestone
.EXPORT UpdateRockWall
.EXPORT UpdateRope
.EXPORT UpdateStalfos
.EXPORT UpdateStandingFire
.EXPORT UpdateStatues
.EXPORT UpdateTektiteOrBoulder
.EXPORT UpdateTree
.EXPORT UpdateVire
.EXPORT UpdateWallmaster
.EXPORT UpdateZelda
.EXPORT UpdateZol
.EXPORT UpdateZora

PlayBossHitCryIfNeeded:
    LDA ObjInvincibilityTimer, X
    CMP #$10
    BNE :+
    LDA #$02
    STA SampleRequest
:
    RTS

PlayBossDeathCryIfNeeded:
    LDA ObjMetastate, X
    BEQ :-
    JMP PlayBossDeathCry

InitMonsterShot:
    LDA #$C0                    ; QSpeed $C0 (3 pixels a frame)
    BNE :+
_InitMonsterShot_Unknown54:
    LDA #$E0                    ; QSpeed $E0 (3.5 pixels a frame)
:
    STA ObjQSpeedFrac, X
    JMP ResetObjMetastate

; Unknown block
    .BYTE $A9, $80, $95, $28

InitWalker:
    ; If the facing direction was already set, then return.
    ;
    LDA ObjDir, X
    BNE @Exit
    ; Calculate horizontal distance and direction away from chase target.
    ; Store the distance in [00].
    ;
    LDY #$02
    LDA ChaseTargetX
    SEC
    SBC ObjX, X
    BCS :+
    DEY
:
    STA $00
    ; If chase target is to the right of the object, then
    ; store left (2) in [01], else right (1).
    ;
    ; Also, make this the object's facing direction, even though
    ; it will be clobbered shortly.
    ;
    STY $01
    STY ObjDir, X
    ; Calculate vertical distance and direction toward the chase target.
    ; Make this vertical direction the facing direction.
    ;
    LDY #$04
    LDA ChaseTargetY
    SEC
    SBC ObjY, X
    BCS :+
    LDY #$08
:
    STY ObjDir, X
    ; If vertical difference >= horizontal difference, then
    ; set the facing direction to the horizontal direction in [01].
    ;
    ; Note that an unsigned comparison is used, even though
    ; the values can be considered signed.
    ;
    CMP $00
    BCC @Exit
    LDA $01
    STA ObjDir, X
@Exit:
    RTS

UpdateStandingFire:
    JSR CheckLinkCollision
    LDA #$02                    ; Normal sprites and palette row 6 (red)
    JSR Anim_SetSpriteDescriptorAttributes
    LDA #$08                    ; Up
    STA ObjDir, X
    JSR AnimateObjectWalking
    ; If type <> $40, then never use horizontal mirroring. Dead code?
    ;
    LDA ObjType, X
    CMP #$40
    BEQ :+
; Unknown block
    .BYTE $A9, $00, $85, $0F

:
    LDA #$00                    ; Frame image 0
    JMP DrawObjectNotMirrored

; Params:
; A: turn rate
;
; Set the turn rate. If being shoved, then shove and return.
;
UpdateCommonWanderer:
    STA ObjTurnRate, X
    LDA ObjShoveDir, X
    BEQ :+
    JMP Obj_Shove

:
    ; If we have the magic clock or the monster is stunned, then return.
    ;
    LDA InvClock
    ORA ObjStunTimer, X
    BNE Exit
    JMP Wanderer_TargetPlayer

; Unknown block
    .BYTE $A9, $70, $BC, $4F, $03, $C0, $05, $F0
    .BYTE $02, $A9, $A0, $9D, $1F, $04, $B5, $AC
    .BYTE $30, $0F

Wanderer_TargetPlayer:
    ; If turn timer <> 0, then decrement it.
    ;
    LDA ObjTurnTimer, X
    BEQ :+
    DEC ObjTurnTimer, X
:
    JSR Walker_Move
    LDA ObjShoveDir, X
    BEQ :+
Exit:
    RTS

:
    ; If speed = 0, or the object is between squares;
    ; then go set input direction to facing direction.
    ;
    LDA ObjQSpeedFrac, X
    BEQ @SetInputDir
    LDA ObjGridOffset, X
    AND #$0F
    BNE @SetInputDir
    ; Set truncated grid offset.
    ;
    STA ObjGridOffset, X
    ; If turn rate < a random value, or Link's state = $FF;
    ; then go turn if turn timer has expired.
    ;
    LDA ObjTurnRate, X
    CMP Random+1, X
    BCC @TurnIfTime
    LDA ObjState
    CMP #$FF
    BEQ @TurnIfTime
    ; Get the absolute horizontal distance between
    ; the monster and the chase target.
    ;
    LDA ChaseTargetX
    SEC
    SBC ObjX, X
    BPL :+
    EOR #$FF
    CLC
    ADC #$01
:
    ; If distance >= 9, then go check the vertical distance.
    ;
    CMP #$09
    BCS @CheckVerticalDistance
@TurnVertically:
    ; Choose a vertical direction toward the chase target.
    ; Then go face in this direction, and flag to shoot.
    ;
    LDY #$08
    LDA ChaseTargetY
    CMP ObjY, X
    BCC @SetDirTowardTarget
    LDY #$04
    BNE @SetDirTowardTarget
@CheckVerticalDistance:
    ; Get the absolute vertical distance between
    ; the monster and the chase target.
    ;
    LDA ChaseTargetY
    SEC
    SBC ObjY, X
    BPL :+
    EOR #$FF
    CLC
    ADC #$01
:
    ; If distance >= 9, then go turn if turn timer has expired.
    ;
    CMP #$09
    BCS @TurnIfTime
@TurnHorizontally:
    ; Choose a horizontal direction toward the chase target.
    ;
    LDY #$01
    LDA ChaseTargetX
    CMP ObjX, X
    BCS @SetDirTowardTarget
    INY
@SetDirTowardTarget:
    ; Set the monster's facing direction to the chosen direction
    ; toward the chase target.
    ;
    STY ObjDir, X
    ; Set turn timer to a random value.
    ;
    LDA Random, X
    STA ObjTurnTimer, X
    ; Set "wants to shoot" flag to 1.
    ;
    LDA #$01
    STA ObjWantsToShoot, X
    ; Go set input direction to facing direction.
    ;
    JMP L_Walker_SetInputDirAndTryShootingBoomerang

@TurnIfTime:
    ; Reset "wants to shoot" flag.
    ;
    LDA #$00
    STA ObjWantsToShoot, X
    ; If turn timer <> 0, then go set input direction to facing direction.
    ;
    LDA ObjTurnTimer, X
    BNE @SetInputDir
    ; Turn toward the chase target in a direction perpendicular to
    ; facing direction.
    ;
    ; If facing vertically, then go choose a horizontal direction
    ; toward the chase target.
    ;
    ; Else go choose a vertical direction toward the chase target.
    ;
    LDA ObjDir, X
    AND #$0C
    BNE @TurnHorizontally
    BEQ @TurnVertically
@SetInputDir:
    JMP L_Walker_SetInputDirAndTryShootingBoomerang

UpdateGoriya:
    LDA ObjType+1, X
    ; If not an armos and high bit of state is set, then return.
    ; This means the monster is delaying after shooting.
    ;
    CMP #$1E
    BEQ :+
    LDA ObjState, X
    BMI @Exit
:
    JSR Walker_Move
    ; If not being shoved, then go handle other activities.
    ;
    LDA ObjShoveDir, X
    BEQ @AfterMove
@Exit:
    RTS

@AfterMove:
    ; If speed = 0 or is between squares, then go try shooting.
    ;
    LDA ObjQSpeedFrac, X
    BEQ L_Walker_SetInputDirAndTryShootingBoomerang
    LDA ObjGridOffset, X
    AND #$0F
    BNE L_Walker_SetInputDirAndTryShootingBoomerang
    ; Store the truncated grid offset.
    ;
    STA ObjGridOffset, X
    ; TODO: Which object gets in this state, and when?
    ; If state = $FF, go try shooting.
    ;
    LDA ObjState
    CMP #$FF
    BEQ L_Walker_SetInputDirAndTryShootingBoomerang
    ; Store in [00] the absolute vertical distance between
    ; the chase target and the walker.
    ;
    ; Store in [02] the vertical direction from the walker to
    ; the chase target.
    ;
    LDA #$04
    STA $02
    LDA ChaseTargetY
    LDY ObjY, X
    CMP ObjY, X
    BCS :+
    LDA ObjY, X
    LDY ChaseTargetY
    ASL $02
:
    STY $0E
    SEC
    SBC $0E
    STA $00
    ; Store in [01] the absolute horizontal distance between
    ; the chase target and the walker.
    ;
    ; Store in [03] the horizontal direction from the walker to
    ; the chase target.
    ;
    LDA #$01
    STA $03
    LDA ChaseTargetX
    LDY ObjX, X
    CMP ObjX, X
    BCS :+
    LDA ObjX, X
    LDY ChaseTargetX
    ASL $03
:
    STY $0E
    SEC
    SBC $0E
    STA $01
    ; Whichever distance is longer determines which combination
    ; of distance and direction will be used.
    ;
    ; If the vertical distance is longer, then use index 0.
    ; Else use index 1 for horizontal distance and direction.
    ;
    LDY #$00
    LDA $00
    CMP $01
    BCS :+
    INY
:
    ; Reset the "wants to shoot" flag.
    ;
    LDA #$00
    STA ObjWantsToShoot, X
    ; If the distance chosen < $51, then
    ; set the "wants to shoot" flag to 1,
    ; and face in the chosen direction.
    ;
    LDA $0000, Y
    CMP #$51
    BCS L_Walker_SetInputDirAndTryShootingBoomerang
    INC ObjWantsToShoot, X
    LDA $0002, Y
    STA ObjDir, X
L_Walker_SetInputDirAndTryShootingBoomerang:
    ; Set the input direction to the facing direction.
    ;
    LDA ObjDir, X
    STA ObjInputDir, X
    ; Goriya will throw a boomerang (object type $5C).
    ;
    LDA #$5C
    ; If the monster is a blue goriya, go check the timer.
    ;
    LDY ObjType, X
    CPY #$05
    BEQ @CheckTimerToShoot
    ; If it's not a red goriya either, then return.
    ;
    CPY #$06
    BNE @Exit
    ; If a random value <> $23 nor $77, then return.
    ;
    LDA Random, X
    CMP #$23
    BEQ @CheckTimerToShootBoomerang
    CMP #$77
    BNE @Exit
@CheckTimerToShootBoomerang:
    ; Goriya will throw a boomerang (object type $5C).
    ;
    LDA #$5C
@CheckTimerToShoot:
    ; If object timer <> 0, return.
    ;
    LDY ObjTimer, X
    BNE @Exit
    ; Store in [00] the type of projectile the monster will throw.
    ;
    STA $00
    ; If we have the magic clock, or the monster is stunned, then return.
    ;
    LDA InvClock
    ORA ObjStunTimer, X
    BNE @Exit
    ; Try to shoot. Return, if it failed.
    ;
    LDA $00
    JSR _ShootIfWanted
    BCC @Exit
    ; Set monster's state to $80 for delaying after shooting.
    ;
    LDA #$80
    STA ObjState, X
    ; Reset the "wants to shoot" flag.
    ;
    LDA #$00
    STA ObjWantsToShoot, X
    ; Have the shot keep track of the monster.
    ;
    TXA
    STA ObjRefId, Y
    ; Have the monster keep track of the shot.
    ;
    TYA
    STA ObjRefId, X
    ; Set the shot's state to $10, which is the flying state for them.
    ;
    LDA #$10
    STA a:ObjState, Y
    ; Fly at q-speed $A0 (2.5 pixels a frame).
    ;
    LDA #$A0
    STA ObjQSpeedFrac, Y
    ; For boomerangs, move up to $51 pixels (horizontally or vertically).
    ;
    LDA #$51
    STA ObjMovingLimit, Y
    ; Make it autonomous (ready to update on its own).
    ;
    LDA #$00
    STA ObjMetastate, Y
    ; The first animation frame lasts 3 screen frames.
    ;
    LDA #$03
    STA ObjAnimCounter, Y
    ; Have the monster wait a random amount of time, up to $3F frames.
    ;
    LDA Random, X
    AND #$3F
    STA ObjTimer, X
@Exit:
    RTS

BlockPushDirections:
    .BYTE $08, $04, $02, $01

UpdateBlock:
    LDA ObjState, X
    AND #$03
    JSR TableJump
UpdateBlock_JumpTable:
    .ADDR UpdateBlock0Idle
    .ADDR UpdateBlock1Moving
    .ADDR UpdateBlock2Done

UpdateBlock0Idle:
    ; If there are monsters in the room, go reset the push timer and return.
    ;
    LDA RoomAllDead
    BEQ ResetPushTimer
    ; If Link's X is aligned with the block's, then get the difference
    ; between Link's (Y + 3) and the block's Y.
    ; Then go test the difference.
    ;
    LDA ObjX
    CMP ObjX, X
    BNE @CheckAlignedY
    LDY #$00
    LDA ObjY
    CLC
    ADC #$03
    SEC
    SBC ObjY, X
    JMP @TestDifference

@CheckAlignedY:
    ; If Link's (Y + 3) is not aligned with the block's Y, then
    ; go reset the push timer.
    ;
    LDA ObjY
    CLC
    ADC #$03
    CMP ObjY, X
    BNE ResetPushTimer
    ; Link's (Y + 3) is aligned with the block's Y.
    ; Get the difference in X.
    ;
    LDY #$02
    LDA ObjX
    SEC
    SBC ObjX, X
@TestDifference:
    ; If the difference in coordinates is negative, then Link is
    ; up or left of the block.
    ;
    ; In that case, increase Y register to index the correct opposite
    ; direction below. Also, negate the difference, so we test
    ; positive values.
    ;
    BPL :+
    INY
    JSR Negate
:
    ; If the distance >= $11, then go reset the push timer and return.
    ;
    CMP #$11
    BCS ResetPushTimer
    ; At this point, Link is aligned with the block.
    ;
    ; If the input direction is not the required direction based on
    ; Link's placement; then go reset the push timer and return.
    ;
    LDA ObjInputDir
    CMP BlockPushDirections, Y
    BNE ResetPushTimer
    ; Link is truly pushing the block.
    ;
    ; Increase the push timer.
    ;
    INC ObjPushTimer, X
    ; If the push timer still < $10, return.
    ;
    LDY ObjPushTimer, X
    CPY #$10
    BCC L10262_Exit
    ; Link has pushed enough.
    ; Set the block's direction to Link's, set state 1,
    ; and change tiles at the source to a floor tile.
    ;
    STA ObjDir, X
    INC ObjState, X
    INC ReturnToBank4           ; Switch back to bank 4 when returning from the call below.
    LDA #$74                    ; Floor tile tile
    JSR ChangeTileObjTiles
DrawBlock:
    JSR Anim_FetchObjPosForSpriteDescriptor
    DEC $01                     ; Decrement sprite Y, to draw at the object's true Y.
    LDA #$00                    ; Frame image 0
    JMP DrawObjectNotMirrored

ResetPushTimer:
    ; Reset the push timer.
    ;
    LDA #$00
    STA ObjPushTimer, X
L10262_Exit:
    RTS

UpdateBlock1Moving:
    ; Move in the block's direction, and draw.
    ;
    LDA ObjDir, X
    STA $0F
    JSR MoveObject
    JSR DrawBlock
    ; If the block has not moved $10 pixels, then return.
    ;
    LDA ObjGridOffset, X
    CMP #$10
    BEQ :+
    CMP #$F0
    BNE UpdateBlock2Done
:
    ; The block has moved enough.
    ; Play the "secret revealed" tune.
    ; Change the tiles at the destination to the block tile.
    ; Set state 2, and increment BlockPushComplete.
    ;
    LDA #$04
    STA Tune1Request
    INC ReturnToBank4           ; Switch back to bank 4 when returning from the call below.
    LDA #$B0
    JSR ChangeTileObjTiles
    INC ObjState, X
    INC BlockPushComplete
UpdateBlock2Done:
    RTS

HideSpritesOverLink:
    LDA #$F8
    STA Sprites+64
    STA Sprites+68
    RTS

DrawObjectNotMirroredOverLink:
    LDY #$00                    ; Not mirrored
    BEQ :+
; Params:
; A: frame image
;
; Mirrored
DrawObjectMirroredOverLink:
    LDY #$01
:
    STY $0C                     ; [0C] holds mirrored flag
    ; The animation index is (object type + 1) to account for Link
    ; having two animation indexes.
    ;
    LDY ObjType, X
    INY
    STA $0D                     ; [0D] holds frame image
    STY $0E                     ; [0E] holds animation index
    STX $08                     ; [08] holds object index
    LDA #$40                    ; Sprite $10: left sprite under Link
    STA LeftSpriteOffset
    LDA #$44                    ; Sprite $11: right sprite under Link
    JMP DrawObjectWithAnimAndSpecificSprites

; Params:
; A: object type
; X: shooter's object index
;
;
; [00] holds the object type.
ShootFireball:
    STA $00
    ; Return, if there's no empty slot.
    ;
    JSR FindEmptyMonsterSlot
    BEQ :+
    TXA                         ; Save the shooter's object index.
    PHA
    TYA                         ; Switch to and save the new object's slot.
    TAX
    LDA $00
    JSR SetTypeAndClearObject
    TXA                         ; Restore the new object's slot.
    TAY
    PLA                         ; Restore the shooter's object index.
    TAX
    ; Set the new object's location to the shooter's.
    ; Offset the new object's X right 4 pixels.
    ;
    LDA ObjX, X
    CLC
    ADC #$04
    STA a:ObjX, Y
    LDA ObjY, X
    STA a:ObjY, Y
:
    RTS

ShotBounceWidths:
    .BYTE $01, $FF

ShotBounceHeights:
    .BYTE $FE, $02, $FF, $FF

UpdateMonsterShot:
    ; Set moving direction to facing direction.
    ;
    LDA ObjDir, X
    STA $0F
    ; If major state <> 1, go bounce.
    ;
    LDA ObjState, X
    AND #$F0
    CMP #$10
    BNE BounceShot
    ; If object type < $55 (like flying rock $53), then
    ; check for tile collision in addition to other checks.
    ;
    LDA ObjType, X
    CMP #$55
    BCS @CheckBoundary
    ; Additionally, if the flying rock is held back by a timer, then
    ; only check for collision with Link.
    ;
    LDA ObjTimer, X
    BNE @CheckLinkCollision
    ; If the flying rock hit a tile or room boundary, then go destroy it.
    ;
    JSR GetCollidingTileMoving
    CMP ObjectFirstUnwalkableTile
    BCS DestroyMonsterShot
@CheckBoundary:
    ; No shots can cross the room boundary.
    ;
    JSR BoundByRoom
    BEQ DestroyMonsterShot
    ; Move the object, and check for a collision with Link.
    ; Go destroy the shot object, if there was a harmful collision.
    ;
    JSR MoveObject
@CheckLinkCollision:
    JSR CheckShotLinkCollision
    LDA $06                     ; Not zero, if collided.
    BNE DestroyMonsterShot
L_DrawShot:
    ; If object type = arrow ($5B), then draw an arrow, and return.
    ;
    LDA ObjType, X
    CMP #$5B
    BNE :+
    JMP DrawArrow

:
    ; If object type = sword shot or magic shot, then go draw, and return.
    ;
    CMP #$57
    BCC @DrawOthers
    CMP #$5A
    BCS @DrawOthers
    JMP DrawSwordShotOrMagicShot

@DrawOthers:
    ; Prepare to draw other shot types.
    ;
    JSR Anim_FetchObjPosForSpriteDescriptor
    STA $0D                     ; [0D] holds frame image 0
    ; Assume object type >= $55. Prepare sprite attributes that
    ; make the shot flash.
    ;
    LDA FrameCounter
    AND #$03
    ; If object type < $55 (flying rock is $53), then
    ; add 4 to X coordinate, and use sprite attributes 0.
    ;
    LDY ObjType, X
    CPY #$55
    BCS @Draw
    LDY #$03
:
    INC $00
    DEY
    BPL :-
    LDA #$00
@Draw:
    JSR Anim_SetSpriteDescriptorAttributes
    LDA $0D                     ; [0D] frame image
    JMP DrawObjectNotMirrored

DestroyMonsterShot:
    ; Destroy fireballs directly. These are not kept track of.
    ;
    LDA ObjType, X
    CMP #$55
    BEQ :+
    CMP #$56
    BEQ :+
DestroyCountedMonsterShot:
    DEC ActiveMonsterShots
:
    JMP DestroyMonster

BounceShot:
    ; Get the reverse direction index for the bounce direction.
    ;
    LDA Shot_ObjBounceDir, X
    JSR GetOppositeDir
    ; Modify the coordinates according to the displacements for
    ; the bounce direction.
    ;
    LDA ObjY, X
    CLC
    ADC ShotBounceHeights, Y
    STA ObjY, X
    LDA ObjX, X
    CLC
    ADC ShotBounceWidths, Y
    STA ObjX, X
    ; Add 2 to the bounce distance.
    ; The absolute value of one of the displacements is 2.
    ;
    LDA Shot_ObjBounceDist, X
    CLC
    ADC #$02
    STA Shot_ObjBounceDist, X
    ; Go destroy the shot, if the bounce counter has reached the limit.
    ; Otherwise, go draw.
    ;
    CMP #$20
    BCS DestroyMonsterShot
    BCC L_DrawShot
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
; Reset bounce distance.
;
CheckShotLinkCollision:
    LDA #$00
    STA Shot_ObjBounceDist, X
    JSR CheckLinkCollision
    LDA ShotCollidesWithLink
    BEQ :+
    ; If the shot hits Link, then start to bounce off of Link's shield.
    ; Set the bounce direction to Link's facing direction.
    ; Set state $30 to bounce.
    ;
    LDA ObjDir
    STA Shot_ObjBounceDir, X
    LDA #$30
    STA ObjState, X
:
    RTS

FireballQSpeedsX:
    .BYTE $70, $68, $60, $58, $50, $3C, $26, $10

FireballQSpeedsY:
    .BYTE $00, $10, $26, $3C, $50, $58, $60, $68
    .BYTE $70

UpdateFireball:
    LDA ObjState, X
    BNE @State1
    ; State 0.
    ;
    ; Reset horizontal and vertical position fractions.
    ;
    STA Fireball_ObjPosFracX, X
    STA Fireball_ObjPosFracY, X
    ; Link is the target. So, register A has 0 -- his object slot.
    ;
    JSR GetDirectionsAndDistancesToTarget
    ; Remember the horizontal and vertical directions toward target.
    ;
    LDA $0B
    STA Fireball_ObjDirToTargetX, X
    LDA $0A
    STA Fireball_ObjDirToTargetY, X
    ; Set the facing direction to the combination of the two.
    ;
    ORA $0B
    STA ObjDir, X
    LDY #$04
    JSR _CalcDiagonalSpeedIndex
    ; Look up and set the horizontal and vertical q-speeds.
    ;
    LDA FireballQSpeedsX, Y
    STA Fireball_ObjQSpeedX, X
    LDA FireballQSpeedsY, Y
    STA Fireball_ObjQSpeedY, X
    ; Set state to $10: monster shot active.
    ; Set object timer to $10, so it's seen but delays a little before moving.
    ;
    LDA #$10
    STA ObjState, X
    STA ObjTimer, X
    RTS

@State1:
    ; State 1.
    ;
    ; Fireballs are delayed and visible for a few frames before moving.
    ; If timer <> 0, go draw.
    ;
    LDA ObjTimer, X
    BNE @CheckCollisionAndDraw
    ; If the room boundary blocks the fireball, then destroy it.
    ;
    LDA ObjDir, X
    JSR BoundByRoomWithA
    BNE @Move
@DestroyMonster:
    JMP DestroyMonster

@Move:
    ; A movement routine is used that works along one axis.
    ; So, load its parameters, and call it for each axis individually.
    ;
    ; First, load the horizontal direction into [0F].
    ;
    LDA Fireball_ObjDirToTargetX, X
    STA $0F
    ; Load the horizontal q-speed and position fraction,
    ; move, then save the position fraction.
    ;
    LDA Fireball_ObjQSpeedX, X
    LDY Fireball_ObjPosFracX, X
    JSR Fireball_MoveOneAxis
    STA Fireball_ObjPosFracX, X
    ; Second, load the vertical direction into [0F].
    ;
    LDA Fireball_ObjDirToTargetY, X
    STA $0F
    ; Load the vertical q-speed and position fraction,
    ; move, then save the position fraction.
    ;
    LDA Fireball_ObjQSpeedY, X
    LDY Fireball_ObjPosFracY, X
    JSR Fireball_MoveOneAxis
    STA Fireball_ObjPosFracY, X
@CheckCollisionAndDraw:
    ; Check for collision with Link. If hit, then go destroy the fireball.
    ;
    JSR CheckShotLinkCollision
    LDA ShotCollidesWithLink
    BNE @DestroyMonster
    JMP L_DrawShot

; Params:
; A: q-speed
; Y: position fraction
; [0F]: movement direction
;
; Returns:
; A: position fraction
;
; Load the q-speed and position fraction from the parameters.
;
Fireball_MoveOneAxis:
    STA ObjQSpeedFrac, X
    TYA
    STA ObjPosFrac, X
    JSR MoveObject
    ; Return the updated position fraction.
    ;
    LDA ObjPosFrac, X
    RTS

InitBubble:
    LDA #$40                    ; QSpeed $40 (1 pixel a frame)
    STA ObjQSpeedFrac, X
    JMP InitWalker

InitBlueKeese:
    ; Choose one of eight random directions.
    ;
    LDA Random, X
    AND #$07
    TAY
    LDA Directions8, Y
    STA ObjDir, X
    JSR ResetFlyerState
    LDA #$C0
    STA FlyingMaxSpeedFrac
    LDA #$1F
    STA Flyer_ObjSpeed, X
    RTS

InitRedOrBlackKeese:
    JSR InitBlueKeese
    ; Red and black keeses are like blue ones, but faster.
    ;
    LDA #$7F
    STA Flyer_ObjSpeed, X
    RTS

UpdateBubble:
    LDA #$40                    ; Turn rate $40
    JSR UpdateCommonWanderer
    LDA ObjType, X
    ; If the bubble is not type $2B that temporarily blocks the sword;
    ; then subtract $2B from the type to get 1 or 2, which
    ; represent the blue and red palette rows in sprite attributes.
    ;
    CMP #$2B
    BEQ @Flash
    SEC
    SBC #$2B
    JMP @Animate

@Flash:
    ; Else make it flash by cycling all the palette rows.
    ;
    LDA FrameCounter
    AND #$03
@Animate:
    JSR Anim_SetSpriteDescriptorAttributes
    ; Animation counter 1 to switch animation frames every screen frame.
    ;
    LDA #$01
    JSR AnimateAndDrawCommonObject
    JSR CheckLinkCollision
    ; If no collision, then return.
    ;
    LDA $06
    BEQ @Exit
    ; If not type $2B (flashing), then go block or unblock the sword
    ; depending on the bubble type.
    ;
    LDA ObjType, X
    CMP #$2B
    BNE @BlockOrUnblock
    ; Else the flashing bubble blocks the sword temporarily.
    ; Set a long timer to $10 ($A0 frames) for this purpose.
    ;
    LDA #$10
    STA SwordBlockedLongTimer
@Exit:
    RTS

@BlockOrUnblock:
    ; Subtract $2C from the type to get the value for blocking: 0 or 1
    ;
    SEC
    SBC #$2C
    STA SwordBlocked
    RTS

; Params:
; A: new value for animation counter
; X: object index
;
AnimateAndDrawCommonObject:
    JSR Anim_AdvanceAnimCounterAndSetObjPosForSpriteDescriptor
    JSR Anim_SetObjHFlipForSpriteDescriptor
    LDA #$00
    JMP DrawObjectNotMirrored

UpdateKeese:
    ; If the magic clock is missing and Link is not lifting an item,
    ; then fly.
    ;
    LDA InvClock
    ORA ItemLiftTimer
    BNE :+
    JSR ControlKeeseFlight
    JSR MoveFlyer
:
    JSR Anim_FetchObjPosForSpriteDescriptor
    ; Like peahats, keeses animate as fast as they move.
    ; But keese beat their wings at half the rate.
    ;
    LDA Flyer_ObjDistTraveled, X
    AND #$02
    LSR
    JSR DrawObjectMirrored
    JSR CheckMonsterCollisions
    JMP ResetShoveInfo

ControlKeeseFlight:
    LDA Flyer_ObjFlyingState, X
    JSR TableJump
ControlKeeseFlight_JumpTable:
    .ADDR Flyer_SpeedUp
    .ADDR Flyer_KeeseDecideState
    .ADDR Flyer_Chase
    .ADDR Flyer_Wander
    .ADDR Flyer_SlowDown
    .ADDR Flyer_Delay

Flyer_KeeseDecideState:
    ; Go to the next state randomly:
    ; Random >= $A0: 2
    ; Random >= $20: 3
    ; Else:          4
    ;
    ; Set up 6 turns.
    ;
    LDY #$02
    LDA Random+1, X
    CMP #$A0
    BCS Flyer_SetStateAndTurns  ; If >= $A0, go to state 2.
    INY
    CMP #$20
    BCS Flyer_SetStateAndTurns  ; If >= $20, go to state 3.
    INY                         ; Else go to state 4.
Flyer_SetStateAndTurns:
    TYA
    STA Flyer_ObjFlyingState, X
    LDA #$06                    ; Set 6 turns for the next state.
    STA Flyer_ObjTurns, X
    RTS

UpdateZol:
    JSR UpdateZolState
    JSR Zol_CheckCollisions
    JSR Anim_FetchObjPosForSpriteDescriptor
    ; Every 8 screen frames, switch between frame image 0 and 1.
    ;
    LDY #$00
    LDA FrameCounter
    AND #$08
    BNE :+
    INY
:
    TYA
    JMP DrawObjectMirrored

UpdateZolState:
    LDA ObjState, X
    JSR TableJump
UpdateZolState_JumpTable:
    .ADDR UpdateZolState0_Wander
    .ADDR UpdateZolState1_Shove
    .ADDR UpdateZolState2_Split

UpdateZolState0_Wander:
    LDA #$18                    ; QSpeed $18 (0.375 pixels a frame)
    JMP UpdateNormalZolOrGel

UpdateZolState1_Shove:
    ; Move straight and fast until blocked. Then go to state 2.
    ;
    JSR Gel_MoveSplitting
    BCC :+
    INC ObjState, X
:
    RTS

UpdateZolState2_Split:
    ; We'll create two gels, but destroy the zol. So, increase
    ; the object count by 1 only.
    ;
    INC RoomObjCount
    JSR DestroyMonster
    JSR CreateChildGel
    ; If the zol's direction is vertical, then set the first child gel's
    ; direction to left, else up.
    ;
    LDA ObjDir, X
    CMP #$04
    LDA #$02
    BCS :+
    LDA #$08
:
    STA a:ObjDir, Y
    PHA                         ; Save the direction of the first gel.
    JSR CreateChildGel
    PLA                         ; Restore the direction of the first gel.
    ; Set the second child gel's direction to the opposite of the first one's.
    ;
    LSR
    STA a:ObjDir, Y
    RTS

CreateChildGel:
    LDA #$14                    ; Child Gel object type
    ; Use the shooting operation to create the gel object.
    ;
    STA $00
    JSR ShootLimited
    ; Shots start in state $10. But Child Gel needs to start in state 0.
    ;
    LDA #$00
    STA a:ObjState, Y
    ; Give the child the same grid offset as the parent.
    ;
    LDA ObjGridOffset, X
    STA ObjGridOffset, Y
    RTS

Zol_CheckCollisions:
    ; If not in state 0, then return.
    ;
    LDA ObjState, X
    BNE @Exit
    ; Check collisions.
    ;
    ; If killed, or got hit but didn't get hurt (invincibility timer = 0),
    ; then return.
    ;
    JSR Gel_CheckCollisions
    LDA ObjMetastate, X
    BNE @Exit
    LDA ObjInvincibilityTimer, X
    BEQ @Exit
    ; If vertically aligned with the square grid, then
    ; use a horizontal direction mask (3).
    ;
    ; Keep in mind that most objects are aligned vertically when
    ; the low nibble of their Y is $D.
    ;
    LDY #$00
    LDA ObjY, X
    AND #$0F
    CMP #$0D
    BNE :+
    LDY #$03
:
    STY $00
    ; If horizontally aligned with the square grid, then
    ; use a vertical direction mask ($C).
    ;
    LDY #$00
    LDA ObjX, X
    AND #$0F
    BNE :+
    LDY #$0C
:
    TYA
    ; Combine the two masks. At most one will be 0.
    ;
    ORA $00
    ; The point is to see if the zol is facing in a way that's aligned
    ; with the grid.
    ;
    ; If so, then go to state 1 to do a "big shove".
    ; Else go to state 2, to immediately split in two.
    ;
    ; Examples:
    ; It would be aligned, if moving left along a tile as usual.
    ; It would *not* be aligned, if while moving left, it was hit downward.
    ; - The collision check routines would have made the zol
    ;   face in the direction of the weapon.
    ; - See CheckMonsterWeaponCollision.
    ;
    AND ObjDir
    BNE :+
    INC ObjState, X
:
    INC ObjState, X
@Exit:
    RTS

InitGel:
    LDA #$02                    ; Gels that aren't split from a Zol begin in state 2.
    STA ObjState, X
    JMP InitWalker

UpdateGel:
    JSR Gel_Move
    JSR Gel_CheckCollisions
    ; Gels are narrow. So, temporarily shift the X coordinate
    ; 4 pixels to the right.
    ;
    LDA ObjX, X
    PHA                         ; Save the original X coordinate.
    CLC
    ADC #$04
    STA ObjX, X
    JSR Anim_FetchObjPosForSpriteDescriptor
    ; Every two screen frames, switch between frame image 0 and 1.
    ;
    LDY #$00
    LDA FrameCounter
    AND #$02
    BNE :+
    INY
:
    ; Set sprite attributes 3: normal sprite, palette row "level".
    ;
    LDA #$03
    JSR Anim_SetSpriteDescriptorAttributes
    TYA                         ; Pass the frame image in A register.
    JSR DrawObjectNotMirrored
    PLA                         ; Restore the original X coordinate.
    STA ObjX, X
    RTS

Gel_Move:
    ; Go handle state 0 or 2 as appropriate.
    ;
    LDY ObjState, X
    BEQ @State0
    DEY
    BNE @State2
    ; State 1.
    ;
    ; If the timer has not expired, then move.
    ;
    LDA ObjTimer, X
    BEQ @Move
    JSR Gel_MoveSplitting
    ; If not blocked while moving, then return.
    ;
    BCC @Exit
@Move:
    ; Blocked or timer expired.
    ;
    ; Set X coordinate to ((X + 8) AND $F0).
    ;
    LDA ObjX, X
    CLC
    ADC #$08
    AND #$F0
    STA ObjX, X
    ; Set Y coordinate to (((Y + 8) AND $F0) OR $D).
    ;
    LDA ObjY, X
    ADC #$08
    AND #$F0
    ORA #$0D
    STA ObjY, X
    ; Reset the grid offset, and go to state 2.
    ;
    LDA #$00
    STA ObjGridOffset, X
    INC ObjState, X
@Exit:
    RTS

@State0:
    ; State 0.
    ;
    ; Immediately go to state 1 with QSpeed $20 (half a pixel a frame),
    ; and 5 frame timer.
    ;
    LDA #$20
    STA ObjQSpeedFrac, X
    LDA #$05
    STA ObjTimer, X
    INC ObjState, X
    RTS

@State2:
    ; State 2.
    ;
    ; Set QSpeed $40 (1 pixel a frame).
    ;
    LDA #$40
; Params:
; A: qspeed
;
UpdateNormalZolOrGel:
    STA ObjQSpeedFrac, X
    ; If object timer >= 5, then return.
    ;
    LDA ObjTimer, X
    CMP #$05
    BCS @Exit
    LDA #$20                    ; Turn rate $20
    STA ObjTurnRate, X
    JSR Wanderer_TargetPlayer
    ; If the monster is between squares, or timer <> 0; then return.
    ;
    LDA ObjGridOffset, X
    ORA ObjTimer, X
    BNE @Exit
    ; Choose a random index (0 to 3) to look up an amount of time.
    ;
    LDA Random, X
    AND #$03
    TAY
    ; If the monster is Zol, then go use this index as is.
    ;
    LDA ObjType, X
    CMP #$13
    BEQ @SetDelay
    ; Else it's a gel. Add 4 to the index to look in the set of times
    ; for Gel.
    ;
    INY
    INY
    INY
    INY
@SetDelay:
    ; Set a delay at a tile edge for the next time to move.
    ;
    LDA ZolGelDelays, Y
    STA ObjTimer, X
@Exit:
    RTS

ZolGelDelays:
    .BYTE $18, $28, $38, $48, $08, $18, $28, $38

; TODO:
; Or call this BigShove like in Loz?
;
; Returns:
; C: 1 if blocked
;
; Set the speed to maximum.
;
Gel_MoveSplitting:
    LDA #$FF
    STA ObjQSpeedFrac, X
    ; Set moving direction to facing direction.
    ;
    LDA ObjDir, X
    STA $0F
    ; If at a tile boundary, then check for a tile collision.
    ;
    LDA ObjGridOffset, X
    BNE @CheckRoomBoundary
    JSR GetCollidingTileMoving
    ; If blocked by a tile, then return C=1.
    ;
    CMP ObjectFirstUnwalkableTile
    BCS @Exit
@CheckRoomBoundary:
    ; If blocked by the room boundary, then return C=1.
    ;
    JSR BoundByRoom
    SEC
    BEQ @Exit
    ; Move.
    ;
    JSR MoveObject
    ; Mask the grid offset with $F (to a square length),
    ; and return C=0.
    ;
    LDA ObjGridOffset, X
    AND #$0F
    CLC
    BNE @Exit
    STA ObjGridOffset, X
@Exit:
    RTS

Gel_CheckCollisions:
    ; TODO:
    ; CheckMonsterCollisions calls GetObjectMiddle which
    ; overwrites [02] and [03]. So, I don't know why these are set here.
    ;
    LDA ObjX, X
    STA $02
    LDA ObjY, X
    STA $03
    JMP CheckMonsterCollisions

StatueRoomLayouts:
    .BYTE $24, $23

StatueFireballCounts:
    .BYTE $03, $01, $01

StatueFireballStartTimes:
    .BYTE $50, $80, $F0, $60

StatuePatternToBasePositionIndex:
    .BYTE $00, $04, $06

StatueXs:
    ; A list of coordinates divided into sets for each pattern.
    ;
    .BYTE $24, $C8, $24, $C8, $64, $88, $48, $A8

StatueYs:
    ; A list of coordinates divided into sets for each pattern.
    ;
    .BYTE $C0, $BC, $64, $5C, $94, $8C, $82, $86

UpdateStatues:
    ; If person fireballs are enabled (from the two fires), then
    ; go make fireballs with pattern 2.
    ;
    LDY #$02
    LDA PersonFireballsEnabled
    BNE @Shoot
    ; Else if the room layout has two or four statues that shoot fireballs,
    ; then go shoot fireballs with the corresponding pattern in Y register:
    ; - layout $23: pattern 1: 2 statues
    ; - layout $24: pattern 0: 4 statues
    ;
    JSR GetUniqueRoomId
    LDY #$01
:
    CMP StatueRoomLayouts, Y
    BEQ @Shoot
    DEY
    BPL :-
    RTS

@Shoot:
    ; Look for an empty monster slot.
    ; If none is found, return.
    ;
    ; Later, for each fireball, we'll call a routine to make the fireball
    ; object. This routine takes a shooter object, and instantiates
    ; a fireball object at the shooter's location.
    ;
    ; The object slot we set up here will behave as the shooter.
    ; For each fireball index, this object slot will have its coordinates
    ; changed.
    ;
    ; Note that this means that:
    ; 1. The first fireball made will be its own shooter.
    ;    Practically, there's nothing special about this.
    ; 2. If there is more than one fireball made in a frame,
    ;    then two of them will come from the same statue.
    ;
    ;
    ; Save the fireball pattern.
    TYA
    PHA
    JSR FindEmptyMonsterSlot
    CMP #$01
    PLA                         ; Restore the fireball pattern.
    BCS @Exit
    ; If we found a slot, but it < 6, return.
    ;
    CPY #$06
    BCC @Exit
    ; Store the object slot in [0A].
    ; Store fireball pattern in [0B].
    ;
    STY $0A
    STA $0B
    ; Look for the number of fireballs to make (minus 1) by pattern number.
    ;
    TAY
    LDX StatueFireballCounts, Y
@LoopFireball:
    ; For each fireball to make, indexed by X, (1 or 3 down to 0):
    ;
    ; Decrement the fireball timer at this index.
    ;
    LDY Statue_ObjFireballTimer, X
    DEY
    TYA
    STA Statue_ObjFireballTimer, X
    ; If it was not 0, then this fireball index has to keep waiting
    ; to make a fireball. Go loop again.
    ;
    INY
    BNE @NextLoopFireball
    ; If the random value for this fireball index >= $F0, go loop again.
    ; This fireball index will wait another $100 frames.
    ;
    LDA Random, X
    CMP #$F0
    BCS @NextLoopFireball
    ; Else choose one of four start times for the fireball based on
    ; the random value.
    ;
    AND #$03
    TAY
    LDA StatueFireballStartTimes, Y
    STA Statue_ObjFireballTimer, X
    ; The coordinate lists are divided into sets for each pattern.
    ;
    ; Look up the index of the base of the set for the pattern in use.
    ; Add it to the fireball index in X register to get the index of
    ; the coordinate we want within each coordinate list.
    ;
    ;
    ; Pattern
    LDY $0B
    TXA
    CLC
    ADC StatuePatternToBasePositionIndex, Y
    TAY
    TXA                         ; Save the fireball index.
    PHA
    ; Get Link's coordinates into [00] and [01].
    ;
    LDX #$00
    JSR Anim_FetchObjPosForSpriteDescriptor
    ; Switch to the new fireball's object slot.
    ;
    LDX $0A
    ; Look up and set the X coordinate for the fireball object.
    ; Also store it in [02].
    ;
    LDA StatueXs, Y
    STA $02
    STA ObjX, X
    ; Look up and set the Y coordinate for the fireball object.
    ; Also store it in [03].
    ;
    LDA StatueYs, Y
    STA $03
    STA ObjY, X
    ; Set mask value 3 in [04].
    ;
    LDA #$03
    STA $04
    ; Loop to compare each of Link's coordinates to the fireball's.
    ; Each time the distance < $18, the mask in [04] is shifted right.
    ;
    LDY #$01
@LoopAxis:
    LDA $0000, Y
    SEC
    SBC $0002, Y
    CMP #$18
    BPL :+
    CMP #$E8
    BMI :+
    LSR $04
:
    DEY
    BPL @LoopAxis
    ; If [04] <> 0, then its value is 1 or 3, meaning that it was shifted
    ; 0 or 1 time, instead of 2.
    ;
    ; This, in turn, means that the distance between Link and the
    ; fireball was >= $18 in at least one axis.
    ;
    ; So, we're OK to finish making the fireball.
    ;
    LDA $04
    BEQ :+
    LDA #$55
    JSR ShootFireball
:
    PLA                         ; Restore the fireball index.
    TAX
@NextLoopFireball:
    ; Bottom of the loop.
    ; Loop while fireball index >= 0.
    ;
    DEX
    BPL @LoopFireball
@Exit:
    RTS

; Unknown block
    .BYTE $FF, $FF, $FF

CheckZora:
    ; If the zora attribute of this room is off, return.
    ;
    LDY RoomId
    LDA LevelBlockAttrsA, Y
    AND #$08                    ; Zora attribute
    BEQ @Exit
    ; If zora is active, return.
    ;
    LDA ZoraActive
    BNE @Exit
    ; Look for an empty monster slot. If none is found, return.
    ;
    JSR FindEmptyMonsterSlot
    BEQ @Exit
    ; Loop $D times looking for a water tile to put a zora on.
    ; Indexed by [0D].
    ;
    LDA #$0D
    STA $0D
    ; Switch to the new object slot.
    ;
    LDX EmptyMonsterSlot
@LoopTileCandidate:
    ; Turn the random value at this index into a $10 pixel aligned X coordinate.
    ; If it = 0 or $F0, go loop again.
    ;
    LDY $0D
    LDA a:Random, Y
    AND #$F0
    STA ObjX, X
    BEQ @NextLoopTileCandidate
    CMP #$F0
    BEQ @NextLoopTileCandidate
    ; Turn the random value into a $10 pixel aligned Y coordinate.
    ; If it < $50 or >= $E0, go loop again.
    ;
    LDA a:Random, Y
    ASL
    ASL
    ASL
    ASL
    CMP #$50
    BCC @NextLoopTileCandidate
    CMP #$E0
    BCS @NextLoopTileCandidate
    ; Turn it into a normal object Y coordinate by OR'ing it with $D.
    ;
    ORA #$0D
    STA ObjY, X
    ; Get the tile at that location.
    ; If it's not a water tile, then go loop again.
    ;
    JSR GetCollidableTileStill
    CMP #$8D
    BCC @NextLoopTileCandidate
    CMP #$99
    BCS @NextLoopTileCandidate
    ; Flag the zora active, and set up the object.
    ;
    INC ZoraActive
    LDA #$11                    ; Zora object type
    JMP SetTypeAndClearObject

@NextLoopTileCandidate:
    ; Bottom of the loop. Keep going until loop index [0D] = 0.
    ;
    DEC $0D
    BNE @LoopTileCandidate
@Exit:
    RTS

TektiteStartingDirs:
    .BYTE $01, $02, $05, $0A

InitBoulderSet:
    ; Reset active boulder count.
    ;
    LDA #$00
    STA ActiveBoulders
InitBoulder:
    JSR ResetObjMetastateAndTimer
InitTektite:
    ; Set a random starting direction.
    ;
    LDA Random+1, X
    AND #$03
    TAY
    LDA TektiteStartingDirs, Y
    STA ObjDir, X
    ; Multiply the direction value by 4 to set the object timer.
    ;
    ASL
    ASL
    STA ObjTimer, X
    RTS

InitLeever:
    ; Set red leever long timer to 5, for use in determining when
    ; to burst out of the ground.
    ;
    LDA #$05
    STA RedLeeverLongTimer
    JSR ResetObjMetastateAndTimer
InitSlowOctorockOrGhini:
    ; Assign QSpeed $20 (0.5 pixels a frame).
    ;
    LDA #$20
    BNE :+
InitFastOctorock:
    ; Assign QSpeed $30 (0.75 pixels a frame).
    ;
    LDA #$30
:
    STA ObjQSpeedFrac, X
    ; Octorock spawn clouds last longer than other monsters.
    ; Set object timer to ((object slot + 1) * $10).
    ;
    INX
    TXA
    DEX
    ASL
    ASL
    ASL
    ASL
    STA ObjTimer, X
    JSR ResetObjState
    STA ObjAnimFrame, X         ; Reset movement frame.
    LDA #$06
    STA ObjAnimCounter, X
    JMP InitWalker

InitPeahat:
    ; Peahats do not use a spawn cloud. Also, go up at first.
    ;
    JSR ResetObjMetastateAndTimer
    LDA #$08
    STA ObjDir, X
EndInitFlyer:
    JSR ResetFlyerState
    LDA #$A0
    STA FlyingMaxSpeedFrac
    LDA #$1F
    STA Flyer_ObjSpeed, X
    RTS

InitPondFairy:
    ; Play "item taken" sound effect.
    ;
    LDA #$08
    STA Tune1Request
    ; The fairy goes at location ($78, $7D).
    ;
    LDA #$78
    STA ObjX, X
    LDA #$7D
    STA ObjY, X
L10797_Exit:
    RTS

UpdateZora:
    ; If we have the magic clock, then return.
    ;
    LDA InvClock
    BNE L10797_Exit
    JSR UpdateBurrower
    ; If zora died in the call above, then it happened while in
    ; states 2, 3, or 4. In the code below, the state won't be 0.
    ; So, it won't flag the zora inactive. This is why the zora does
    ; not come back after killing it.
    ;
    ; If state <> 3 or timer <> $FD,
    ; then go see if the object needs to be destroyed.
    ;
    LDA ObjState, X
    CMP #$03
    BNE @DestroyWhenDone
    LDA ObjTimer, X
    CMP #$FD
    BNE @DestroyWhenDone
    ; Shoot a fireball; and set the timer so that it expires faster.
    ;
    LDA #$55
    JSR ShootFireball
    LDA #$20
    STA ObjTimer, X
@DestroyWhenDone:
    ; If state = 0, then destroy zora object.
    ; Also flag it inactive, so that the object update loop will try
    ; to make another one.
    ;
    LDA ObjState, X
    BNE L10797_Exit
    DEC ZoraActive
    JMP DestroyMonster

UpdateMoblin:
    ; Set turn rate to $A0.
    ;
    LDA #$A0
    STA ObjTurnRate, X
    JSR Wanderer_TargetPlayer
    LDY #$5B                    ; Arrow object type
    JMP :+

UpdateLynel:
    JSR UpdateGoriya
    LDY #$57                    ; Sword shot object type
:
    LDA #$20                    ; QSpeed $20 (.5 pixels a frame)
; Params:
; A: q-speed of the monster
; Y: shot object type
;
; [01] holds the q-speed of the monster
_TryShooting:
    STA $01
    ; If the monster is not a blue walking OW monster, and shoot timer = 0,
    ;
    LDA ObjType, X
    CMP #$03                    ; Blue moblin
    BEQ @TryShootingNow
    CMP #$01                    ; Blue lynel
    BEQ @TryShootingNow
    CMP #$09                    ; Blue slow octorock
    BEQ @TryShootingNow
    CMP #$0A                    ; Blue fast octorock
    BEQ @TryShootingNow
    LDA ObjShootTimer, X
    BNE @TryShootingNow
    ; and a random value < $F8, then return.
    ;
    LDA Random, X
    CMP #$F8
    BCC @Exit
@TryShootingNow:
    ; Summary
    ;
    ; if temporarily invincible then
    ;   shoot timer := 0
    ; elif shoot timer > 0 then
    ;   decrement shoot timer
    ; elif wants to shoot then
    ;   shoot timer := $30
    ;
    ; qspeed := [01]
    ;
    ; if shoot timer <> 0 then
    ;   if shoot timer = $10 and no clock and not stunned then
    ;     shoot
    ;     if succeeded then
    ;       shoot timer := 0
    ;       qspeed := 0
    ;   else
    ;     qspeed := 0
    ;
    ; Push a 0 q-speed, in case the monster is in shooting time.
    LDA $01
    STY $00                     ; Store shot object type in [00] to pass to shooting routine.
    PHA
    LDY #$00
    ; If not temporarily invincible,
    ;
    LDA ObjInvincibilityTimer, X
    BNE @SetShootTimer
    ; then Y := shoot timer - 1
    ;
    LDY ObjShootTimer, X
    DEY
    ; If Y register < 0, then shoot timer is 0.
    ; So, if "wants to shoot" flag is set, then set shoot timer to $30.
    ; Else go set a non-zero speed and return.
    ;
    BPL @SetShootTimer
    LDA ObjWantsToShoot, X
    BEQ @SetSpeed
    LDY #$30
@SetShootTimer:
    ; shoot timer := Y
    ;
    TYA
    STA ObjShootTimer, X
    ; If new shoot timer = 0, go set a non-zero speed.
    ;
    BEQ @SetSpeed
    ; shoot timer <> 0
    ; If shoot timer <> $10, then go set a zero speed.
    ;
    CPY #$10
    BNE @ZeroSpeed
    ; If we have the magic clock, or the monster is stunned, then
    ; go set a zero speed.
    ;
    LDA InvClock
    ORA ObjStunTimer, X
    BNE @ZeroSpeed
    ; Shoot.
    ;
    LDA $00
    JSR _ShootIfWanted2
    ; If it failed, go set a non-zero speed.
    ;
    BCC @SetSpeed
    ; It succeeded, so reset "wants to shoot" flag and the speed.
    ;
    LDA #$00
    STA ObjWantsToShoot, X
@ZeroSpeed:
    PLA                         ; Replace the speed that was pushed with 0.
    LDA #$00
    PHA
@SetSpeed:
    ; Set the speed to whatever was determined: 0 or the value passed in [01].
    ;
    PLA
    STA ObjQSpeedFrac, X
@Exit:
    RTS

; Params:
; A: shot object type
; X: shooter object index
;
; Returns:
; C: 1 if succeeded
; Y: shot slot
;
_ShootIfWanted2:
    JSR _ShootIfWanted
    ; TODO:
    ; If succeeded, then set object timer to $80, and decrement [0437][X].
    ;
    ; TODO:
    ; What are object timer and [0437] used for?
    ;
    BCC L1083E_Exit
    LDA #$80
    STA ObjTimer, X
    DEC $0437, X
L1083E_Exit:
    RTS

UpdateMonsterArrow:
    ; Set q-speed $80 (2 pixels a frame).
    ;
    LDA #$80
    STA ObjQSpeedFrac, X
    ; If the timer has not expired, then go draw,
    ; and see if the shooter's still alive.
    ;
    LDA ObjTimer, X
    BNE @CheckShooter
    ; If the arrow is sparking, then go update the base arrow.
    ;
    LDA a:ObjState, X
    AND #$F0
    CMP #$20
    BEQ @UpdateBase
    ; If the arrow is not flying, then
    ; go handle it bouncing off of Link's shield.
    ;
    CMP #$10
    BNE @CheckBounce
    ; TODO: But is this necessary?
    ; Set the moving direction in [0F].
    ; Then go update the base arrow.
    ;
    LDA ObjDir, X
    STA $0F
    JMP @UpdateBase

@CheckShooter:
    ; If the shooter is gone, then reset the arrow's object timer;
    ; so that it flies right away.
    ;
    LDY ObjRefId, X
; Unknown block
    .BYTE $B9, $4F, $03, $D0, $02, $95, $28, $4C
    .BYTE $7B, $F5

@UpdateBase:
    JSR UpdateArrowOrBoomerang
    ; If the arrow is no longer flying, then
    ; go handle it sparking or bouncing.
    ;
    LDA a:ObjState, X
    AND #$F0
    CMP #$10
    BNE @CheckBounce
    JSR CheckShotLinkCollision
    ; If [06] = 0, then there was no collision with Link that harmed him
    ; Either there was no collision at all, or it bounced off of the shield.
    ; So, return.
    ;
    LDA $06
    BEQ L1083E_Exit
    ; Else there was a collision with Link that harmed him.
    ; So, destroy the arrow.
    ;
    JMP DestroyCountedMonsterShot

@CheckBounce:
    CMP #$30
    BNE L1083E_Exit
    JMP BounceShot

UpdateBoulderSet:
    ; If the object timer has not expired, then return.
    ;
    LDA ObjTimer, X
    BNE @Exit
    ; If the maximum number (3) of boulders are active, then
    ; go set the timer to wait a random amount of time.
    ;
    LDA ActiveBoulders
    CMP #$03
    BEQ @RandomizeTimer
    ; If no empty monster slot is found, then return.
    ;
    JSR FindEmptyMonsterSlot
    BEQ @Exit
    ; Set the boulder monster type, and increase the number
    ; of active boulders.
    ;
    LDX EmptyMonsterSlot
    INC ActiveBoulders
    LDA #$20
    JSR SetTypeAndClearObject
    ; Give the boulder a random X coordinate in the same half
    ; of the screen as the chase target.
    ;
    LDA Random+1, X
    LDY ChaseTargetX
    CPY #$80                    ; If chase target X < $80, mask Random with $7F.
    BCS @RightHalf
    AND #$7F
    JMP @SetX

@RightHalf:
    ORA #$80                    ; Else make it >= $80.
@SetX:
    STA ObjX, X
    ; Start at the top edge of the screen ($40).
    ;
    LDA #$40
    STA ObjY, X
    ; Set the boulder set's timer to ((Random + 8) AND $1F).
    ;
    LDX CurObjIndex
    LDA #$08
    CLC
    ADC Random+1, X
    AND #$1F
    STA ObjTimer, X
    RTS

@RandomizeTimer:
    ; Randomize the object timer.
    ;
    LDA ObjTimer, X
    CLC
    ADC Random+1, X
    STA ObjTimer, X
@Exit:
    RTS

JumperYOffsets:
    .BYTE $00, $00, $00, $00, $00, $20, $20, $00
    .BYTE $00, $E0, $E0

JumperYAccelerations:
    ; Logically, this array would be 33 bytes: 3 sets of 11 bytes,
    ; 1 byte for each 8-way direction
    ;
    ; But because Boulder does not need the upward accelerations,
    ; the elements for those are used for the starting speeds
    ; at 04:88F2.
    ;
    .BYTE $00, $40, $40, $00, $00, $40, $40, $00
    .BYTE $00, $30, $30, $00, $80, $80, $00, $00
    .BYTE $80, $80, $00, $00, $50, $50, $60, $60
    .BYTE $60, $60, $60, $60, $60

JumperStartSpeedsHi:
    .BYTE $FD, $FC, $FE

JumperYAccelerationBaseOffsets:
    .BYTE $00, $0B, $16

UpdateTektiteOrBoulder:
    ; If the monster is shoved, then keep shoving it.
    ;
    LDA ObjShoveDir, X
    BEQ @CheckStunned
; Unknown block
    .BYTE $4C, $B8, $EE

@DrawAndCheckCollisions:
    JMP Jumper_AnimateAndCheckCollisions

@CheckStunned:
    ; If we have the magic clock, or the monster is stunned; 
    ; then go animate, draw, and check collisions.
    ;
    LDA InvClock
    ORA ObjStunTimer, X
    BNE @DrawAndCheckCollisions
    ; If state <> 0, go update the jump.
    ;
    LDA ObjState, X
    BNE @State1
    ; State 0. On the ground.
    ;
    ; If timer <> 0, then go animate, draw, and check collisions.
    ;
    LDA ObjTimer, X
    BNE @Animate
    ; State = 0 and object timer expired. Time to jump.
    ;
    ; First, turn 1 step toward the chase target.
    ;
    JSR TurnTowardsPlayer8
    ; If the facing direction has no horizontal component, then
    ; find the horizontal direction toward the chase target.
    ;
    ; Then combine it with the facing direction.
    ;
    LDA ObjDir, X
    AND #$03
    BNE @SetStateJump
    LDY #$02
    LDA ChaseTargetX
    CMP ObjX, X
    BCC :+
    DEY
:
    TYA
    ORA ObjDir, X
    STA ObjDir, X
@SetStateJump:
    ; Set state 1 to jump.
    ;
    INC ObjState, X
@SetUpJump:
    ; If reversal count >= 2, then
    ; 1. invert the horizontal component of facing direction,
    ;    to face away from the chase target
    ; 2. reset the reversal count to 0.
    ;
    ; This prevents a jumper from getting stuck in a corner.
    ;
    ; For example, if a tektite's direction is down and right,
    ; and jumps into the top right corner of the room:
    ; 1. The right room boundary is hit. So the direction is
    ;    automatically reversed to up and left.
    ; 2. The next frame, the top room boundary is hit.
    ;    The direction is reversed to down and right.
    ;
    ; As you can see, an endless loop has been made.
    ;
    LDA Jumper_ObjReversalCount, X
    CMP #$02
    BCC @FinishSetUpJump
    LDA ObjDir, X
    EOR #$03
    STA ObjDir, X
    LDA #$00
    STA Jumper_ObjReversalCount, X
@FinishSetUpJump:
    ; If the object is a boulder, then make sure its facing direction
    ; has a down vertical component.
    ;
    JSR Jumper_PointBoulderDownward
    ; For the given direction, get the Y offset of the destination
    ; of the jump.
    ;
    ; Add it to the object's Y, and store this destination Y.
    ;
    LDY ObjDir, X
    LDA ObjY, X
    CLC
    ADC JumperYOffsets, Y
    STA Jumper_ObjTargetY, X
    ; Set the starting speed, depending on the object type.
    ;
    JSR Jumper_GetKind
    LDA JumperStartSpeedsHi, Y
    STA Jumper_ObjSpeedWholeY, X
    ; Reset the vertical speed low byte.
    ; Then go animate, draw, and check collisions.
    ;
    JSR Jumper_ResetVSpeedFrac
@Animate:
    JMP Jumper_AnimateAndCheckCollisions

@State1:
    ; State 1. Jumping.
    ;
    ; Keep the object inside the bounds of the room.
    ;
    JSR BoundFlyer
    ; If the object was blocked at the room boundary, then
    ; increase boundary reversal count, and go set up another jump.
    ;
    LDA $0F
    BNE :+
    INC Jumper_ObjReversalCount, X
    JMP @SetUpJump

:
    JSR Jumper_PointBoulderDownward
    ; This step in the jump succeeded. So, reset the reversal count.
    ;
    LDA #$00
    STA Jumper_ObjReversalCount, X
    ; Get the base offset for the kind of jumper the object is.
    ;
    JSR Jumper_GetKind
    LDA JumperYAccelerationBaseOffsets, Y
    ; Get the acceleration by indexing with (base offset + direction).
    ;
    ; Note that the set of accelerations of Boulder (the third set)
    ; does not have $B elements like the tektites' sets.
    ;
    ; Boulder does not need the upward accelerations.
    ; So, the elements for those are used for the starting speeds
    ; at 04:88F2.
    ;
    CLC
    ADC ObjDir, X
    TAY
    LDA JumperYAccelerations, Y
    LDY #$02                    ; Max speed 2 pixels going down
    JSR Jumper_MoveY
    ; If the facing direction has a left component, then
    ; subtract 1 from the object's X.
    ;
    ; Else add 1.
    ;
    LDY #$FF
    LDA ObjDir, X
    AND #$02
    BNE :+
    LDY #$01
:
    TYA
    CLC
    ADC ObjX, X
    STA ObjX, X
    ; If going up (negative v-speed high byte), then
    ; go animate, draw, and check collisions.
    ;
    LDA Jumper_ObjSpeedWholeY, X
    BMI Jumper_AnimateAndCheckCollisions
    ; Going down. We have to consider the target Y.
    ;
    ; If the absolute vertical distance to the target position >= 3,
    ; then go animate, draw, and check collisions.
    ;
    LDA ObjY, X
    SEC
    SBC Jumper_ObjTargetY, X
    JSR Abs
    CMP #$03
    BCS Jumper_AnimateAndCheckCollisions
    ; Distance < 3. Go to state 0.
    ;
    ; If the object is a boulder, then go reset timer, animate, draw.
    ;
    JSR ResetObjState
    LDY ObjType, X
    CPY #$20
    BEQ @SetTimerAndAnimate
    ; Else calculate a timer value.
    ;
    ; t := (Random + $10)
    ; if t < $20 then
    ;   t := t - $40
    ;
    LDA #$10
    CLC
    ADC Random+1, X
    CMP #$20
    BCS :+
    SEC
    SBC #$40
:
    ; If the object is a blue tektite, then go use this t.
    ;
    LDY ObjType, X
    CPY #$0D
    BEQ @SetTimerAndAnimate
    ; t := t AND $7F
    ;
    AND #$7F
    ; If Random < $A0, then go use this t.
    ;
    LDY Random+1, X
    CPY #$A0
    BCC @SetTimerAndAnimate
    ; t := t AND $F
    ;
    AND #$0F
@SetTimerAndAnimate:
    STA ObjTimer, X
Jumper_AnimateAndCheckCollisions:
    JSR Anim_FetchObjPosForSpriteDescriptor
    ; TODO: [0D] ?
    ; [0D] doesn't seem to be used.
    ;
    STA $0D
    ; If the monster is a boulder, then go animate, draw, check collision.
    ;
    LDA ObjType, X
    CMP #$20
    BEQ @DrawBoulder
    ; Draw a tektite.
    ;
    ; If state = 1, then go draw frame image 1, and check collisions.
    ;
    LDA ObjState, X
    BNE @DrawTektite
    ; If object timer < $21, go draw frame image 0, and check collisions.
    ;
    LDY ObjTimer, X
    CPY #$21
    BCC @DrawTektite
    ; Else cycle the animation counter, draw, and check collisions.
    ;
    ; The movement frame determines the frame image.
    ;
    LDA #$10
    JSR Anim_AdvanceAnimCounterAndSetObjPosForSpriteDescriptor
    LDA ObjAnimFrame, X
@DrawTektite:
    JMP DrawObjectMirroredAndCheckCollisions

@DrawBoulder:
    ; Draw a boulder.
    ;
    LDA #$06
    JSR Anim_AdvanceAnimCounterAndSetObjPosForSpriteDescriptor
    LDA ObjAnimFrame, X         ; TODO: The movement frame determines the frame image.
    JSR DrawObjectNotMirroredAndCheckLinkCollision
    ; If the boulder's Y < $F0, return.
    ;
    LDA ObjY, X
    CMP #$F0
    BCC L10A10_Exit
    ; Else the boulder is close enough to the bottom of the screen
    ; to destroy it.
    ;
    DEC ActiveBoulders
    JMP DestroyMonster

; Returns:
; Y: 0: blue tektite
;    1: red tektite
;    2: boulder
;
Jumper_GetKind:
    LDA ObjType, X
    SEC
    SBC #$0D
    TAY
    CPY #$02
    BCC L10A10_Exit
    LDY #$02
L10A10_Exit:
    RTS

Jumper_PointBoulderDownward:
    LDA ObjType, X
    CMP #$20
    BNE @Exit
    LDA ObjDir, X
    AND #$03
    ORA #$04
    STA ObjDir, X
@Exit:
    RTS

; Params:
; A: acceleration
; Y: max speed high byte
;
; [00] holds the acceleration
Jumper_MoveY:
    STA $00
    STY $02                     ; [02] holds the max speed high byte
    ; Add the high speed byte to the Y coordinate.
    ;
    LDA Jumper_ObjSpeedWholeY, X
    ADC ObjY, X
    STA ObjY, X
    ; Add the acceleration to the speed fraction (low byte).
    ;
    LDA Jumper_ObjSpeedFracY, X
    CLC
    ADC $00                     ; [00] acceleration
    STA Jumper_ObjSpeedFracY, X
    ; Carry over to the high speed byte.
    ;
    LDA Jumper_ObjSpeedWholeY, X
    ADC #$00
    STA Jumper_ObjSpeedWholeY, X
    ; *Signed comparison*:
    ; If the high speed byte < high max speed byte, then return.
    ;
    ; Note that this is not a general purpose signed comparison,
    ; which would be more complicated. But it works because
    ; the deviation from 0 of both values is small.
    ;
    CMP $02
    BMI L10A52_Exit
    ; Limit the speed to the max speed.
    ;
    LDA Jumper_ObjSpeedFracY, X
    CMP #$80
    BCC L10A52_Exit
    LDA $02
    STA Jumper_ObjSpeedWholeY, X
Jumper_ResetVSpeedFrac:
    LDA #$00
    STA Jumper_ObjSpeedFracY, X
L10A52_Exit:
    RTS

BlueLeeverStateQSpeeds:
    .BYTE $08, $0A, $10, $20, $10, $0A

BlueLeeverStateTimes:
    .BYTE $80, $20, $0F, $FF, $10, $60

BlueLeeverStateAnimTimes:
    .BYTE $10, $0B, $01, $05, $01, $0B

UpdateBlueLeever:
    LDA #$A0                    ; Turn rate $A0
    STA ObjTurnRate, X
    JSR Wanderer_TargetPlayer
UpdateBurrower:
    ; If object timer <> 0, then go animate, draw, and check for collisions.
    ;
    LDA ObjTimer, X
    BNE @Animate
    ; If not zora or state <> 1, go cycle the state.
    ;
    LDA ObjType, X
    CMP #$11
    BNE @CycleState
    LDY ObjState, X
    DEY
    BNE @CycleState
    ; Else is zora and state = 1.
    ;
    ; If zora's Y >= Link's Y, then set zora's frame image to
    ; 3 (back), else 2 (front).
    ;
    ; The frame image number is being assigned to ObjDir.
    ;
    LDY #$03
    LDA ObjY, X
    CMP ObjY
    BCS :+
    DEY
:
    STY ObjDir, X
@CycleState:
    ; Cycle the state between 0 and 5.
    ;
    LDA ObjState, X
    CLC
    ADC #$01
    CMP #$06
    BCC :+
    LDA #$00
:
    STA ObjState, X
    ; Look up and set the speed and timer for the current state.
    ;
    TAY
    LDA BlueLeeverStateQSpeeds, Y
    STA ObjQSpeedFrac, X
    LDA BlueLeeverStateTimes, Y
    STA ObjTimer, X
@Animate:
    ; Advance the animation counter; possibly setting a new
    ; value according to the new state.
    ;
    LDY ObjState, X
    LDA BlueLeeverStateAnimTimes, Y
; Params:
; A: new value for animation counter, in case it rolls over
; X: object index
;
; Note:
; Advances the animation counter first.
;
Burrower_AnimateDrawAndCheckCollisions:
    JSR Anim_AdvanceAnimCounterAndSetObjPosForSpriteDescriptor
    ; If state = 0, return.
    ;
    LDA ObjState, X
    BEQ @Exit
    ; If is zora, and state >= 2 and < 5, then use frame image 2 or 3
    ; (front or back), which was stored in ObjDir above.
    ;
    LDY ObjType, X
    CPY #$11
    BNE @CalcFrameImage
    LDY ObjState, X
    CPY #$02
    BCC @CalcFrameImage
    CPY #$05
    BCS @CalcFrameImage
    LDA ObjDir, X
    BNE @Draw
@CalcFrameImage:
    ; Or else if is zora in state 1 or 5, then use one of
    ; the mound frame images:
    ;
    ; frame image := ((state - 1) * 2) + movement frame
    ;
    ; This yields 0/1 or 8/9, depending on the state.
    ;
    ; This formula is used for states 1 to 5 of non-zora burrowers.
    ;
    SEC
    SBC #$01
    ASL
    CLC
    ADC ObjAnimFrame, X
@Draw:
    JSR DrawObjectMirrored
    ; If not zora and state <> 3, 
    ; or zora and state <> 2, 3, 4;
    ; then return.
    ;
    LDA ObjType, X
    CMP #$11
    BNE @NoState3Collisions
    LDA ObjState, X
    CMP #$02
    BEQ @CheckCollisions
    CMP #$04
    BEQ @CheckCollisions
@NoState3Collisions:
    LDA ObjState, X
    CMP #$03
    BNE @Exit
@CheckCollisions:
    JSR CheckMonsterCollisions
    ; If not dying, then return.
    ;
    LDA ObjMetastate, X
    BEQ @Exit
    ; If monster is a red leever, then decrement the red leever count.
    ;
    LDA ObjType, X
    CMP #$10
    BNE @Exit
    DEC ActiveRedLeeverCount
@Exit:
    RTS

RedLeeverStateQSpeeds:
    .BYTE $00, $00, $00, $20, $00, $00

RedLeeverStateTimes:
    .BYTE $00, $10, $08, $FF, $08, $10

RedLeeverStateAnimTimes:
    .BYTE $10, $08, $08, $05, $08, $08

UpdateRedLeever:
    LDA ObjState, X
    BEQ :+
    JMP @CheckOtherStates

:
    ; State 0.
    ;
    ; In state we determine whether to burst out of the ground.
    ; If the long timer has not expired, then return.
    ;
    LDA RedLeeverLongTimer
    BNE @Exit
    ; Only allow two red leevers at a time.
    ;
    LDA ActiveRedLeeverCount
    CMP #$02
    BCS @Exit
    ; Face in the same direction as Link.
    ;
    LDA ObjDir
    STA ObjDir, X
    ; Randomly (>= $C0) face the opposite direction -- toward Link.
    ;
    LDA Random+1, X
    CMP #$C0
    BCC :+
    JSR ReverseObjDir
:
    ; If facing horizontally, go place the leever to the left or right of Link.
    ;
    LDA ObjDir, X
    AND #$0C
    BEQ @PlaceHorizontally
    ; Begin with the leever's X set to Link's X.
    ;
    LDA ObjX
    STA ObjX, X
    ; If facing down, then use Y offset $28.
    ; Else store Y offset -$28 in [00].
    ;
    LDY #$28
    LDA ObjDir, X
    AND #$08
    BEQ :+
    LDY #$D8
:
    STY $00
    ; Add Link's Y and the vertical offset.
    ;
    LDA ObjY
    CLC
    ADC $00
    ; Sanitize the Y coordinate:
    ; (Y AND $F0) OR $D
    ;
    AND #$F0
    ORA #$0D
    STA ObjY, X
    ; If Y coordinate >= $5D (top of the third square row), then
    ; go see if the tile is valid to come out of.
    ;
    ; Else it's too close to the top edge of the screen. So, return.
    ;
    CMP #$5D
    BCS @CheckSafeToSpawn
@Exit:
    RTS

@PlaceHorizontally:
    ; Begin with the leever's Y set to Link's Y.
    ;
    LDA ObjY
    STA ObjY, X
    ; If Y coordinate < $5D (top of the third square row), then
    ; it's too close to the top edge of the screen. So, return.
    ;
    CMP #$5D
    BCC @Exit
    ; If facing right, then use X offset $28.
    ; Else store X offset -$28 in [00].
    ;
    LDY #$28
    LDA ObjDir, X
    AND #$02
    BEQ :+
    LDY #$D8
:
    STY $00
    ; [01] holds Link's X coordinate.
    ;
    LDA ObjX
    STA $01
    ; Add Link's X and the horizontal offset.
    ;
    CLC
    ADC $00
    ; AND the result with $F8, so it's aligned with a tile horizontally.
    ;
    AND #$F8
    ; Assign that result to the leever's X coordinate and [02].
    ;
    STA ObjX, X
    STA $02
    ; If the leever's X [02] >= Link's X [01], then swap [02] and [01].
    ;
    CMP $01
    BCC @Subtract
    PHA
    LDA $01
    STA $02
    PLA
    STA $01
@Subtract:
    ; The point is to get the absolute distance between the two.
    ;
    LDA $01
    SEC
    SBC $02
    ; If the absolute distance >= $30, then return.
    ; It means that the leever's X coordinate wrapped around
    ; the left or right edge of the screen.
    ;
    CMP #$30
    BCS @Exit
@CheckSafeToSpawn:
    ; The leever can't come out of an unwalkable tile. So, return.
    ;
    JSR GetCollidableTileStill
    CMP ObjectFirstUnwalkableTile
    BCS @Exit
    INC ActiveRedLeeverCount
    ; Set animation counter to 1, so that it will roll over this frame
    ; and pick up whatever the new value is for state 1.
    ;
    LDA #$01
    STA ObjAnimCounter, X
    ; Set the long timer to 2, meaning 20 frames.
    ;
    ASL
    STA RedLeeverLongTimer
    JSR RedLeever_CycleStateDrawAndCheckCollisions
    ; The leever has to face Link in order to move toward him.
    ;
    JSR ReverseObjDir
@CheckOtherStates:
    ; If not in state 3, go check the object timer in order to draw and such.
    ;
    LDA ObjState, X
    CMP #$03
    BNE @AnimateIfTime
    ; State 3.
    ;
    ; If being shoved, go shove, animate, and draw the leever.
    ;
    LDA ObjShoveDir, X
    BEQ @CheckStunned
    JSR Obj_Shove
    JMP RedLeever_AnimateAndCheckCollisions

@CheckStunned:
    ; If we have the magic clock or the leever is stunned, then
    ; go animate, draw, and check for collisions.
    ;
    LDA InvClock
    ORA ObjStunTimer, X
    BNE RedLeever_AnimateAndCheckCollisions
    ; If the leever is blocked by a tile or the room boundary,
    ; then go to the next state, in addition to animating, drawing,
    ; and checking for collisions.
    ;
    LDA ObjDir, X
    STA $0F
    JSR GetCollidingTileMoving
    CMP ObjectFirstUnwalkableTile
    BCS RedLeever_CycleStateDrawAndCheckCollisions
    JSR BoundByRoom
    BEQ RedLeever_CycleStateDrawAndCheckCollisions
    ; Move.
    ;
    JSR MoveObject
    ; Truncate the grid offset.
    ;
    LDA ObjGridOffset, X
    AND #$0F
    BNE :+
    STA ObjGridOffset, X
:
    ; Set timer to $FF.
    ;
    LDA #$FF
    STA ObjTimer, X
@AnimateIfTime:
    ; If object timer has not expired, then
    ; go animate, draw, and check for collisions.
    ;
    LDA ObjTimer, X
    BNE RedLeever_AnimateAndCheckCollisions
RedLeever_CycleStateDrawAndCheckCollisions:
    ; Cycle the state between 0 and 5.
    ;
    ; If a cycle was completed (wrapped around to 0),
    ; then decrease the active red leever count.
    ;
    LDA ObjState, X
    CLC
    ADC #$01
    CMP #$06
    BCC :+
    DEC ActiveRedLeeverCount
    LDA #$00
:
    STA ObjState, X
    ; Look up and set the speed, timer, and animation counter
    ; for the current state.
    ;
    TAY
    LDA RedLeeverStateQSpeeds, Y
    STA ObjQSpeedFrac, X
    LDA RedLeeverStateTimes, Y
    STA ObjTimer, X
RedLeever_AnimateAndCheckCollisions:
    LDY ObjState, X
    LDA RedLeeverStateAnimTimes, Y
    JMP Burrower_AnimateDrawAndCheckCollisions

; Unknown block
    .BYTE $60

UpdateOctorock:
    ; If the monster is a fast octorock, use turn rate $A0.
    ; Else use turn rate $70.
    ;
    LDA #$A0
    LDY ObjType, X
    CPY #$09                    ; Blue octorock (fast and slow)
    BCS :+
    LDA #$70
:
    STA ObjTurnRate, X
    JSR Wanderer_TargetPlayer
    ; If the octorock is slow, then use q-speed $20.
    ; Else double it.
    ;
    LDA #$20
    LDY ObjType, X
    CPY #$07
    BEQ @Shoot
    CPY #$09
    BEQ @Shoot
    ASL
@Shoot:
    ; Shoot a flying rock (object type $53).
    ;
    LDY #$53
    JSR _TryShooting
    JSR Anim_FetchObjPosForSpriteDescriptor
    ; If facing down, then use frame image offset 2.
    ;
    LDA ObjDir, X
    TAY
    AND #$0C
    BEQ @CheckHorizontal
    LDA #$02
    CPY #$08
    BNE @SaveOffset
    ; Else facing up. Use frame image offset 1.
    ;
    LDA #$01
    BNE @SaveOffset
@CheckHorizontal:
    ; If facing right, then set horizontal flipping, and use frame image offset 0.
    ;
    CPY #$01
    BNE :+
    INC $0F
:
    ; Else facing left. Use frame image offset 0, but no horizontal flipping.
    ;
    LDA #$00
@SaveOffset:
    PHA                         ; Save frame image offset for the direction.
    ; Decrement the animation counter, and roll over if needed.
    ;
    DEC ObjAnimCounter, X
    BNE @CalcFinalOffset
    LDA #$06
    STA ObjAnimCounter, X
    ; There are actually 6 frame images divided into 2 sets.
    ; Each set depicts one animation frame. In each set there are
    ; 3 frame images: 1 for each direction (left, up, down).
    ;
    ; The movement frame will keep track of the base offset of
    ; the current set for the current animation frame: 0 or 3.
    ;
    ; So, XOR the movement frame with 3.
    ;
    LSR
    EOR ObjAnimFrame, X
    STA ObjAnimFrame, X
@CalcFinalOffset:
    ; Add the base offset and the directional offset, and save the result.
    ;
    PLA
    CLC
    ADC ObjAnimFrame, X
    PHA
    ; If facing vertically, go draw mirrored.
    ;
    LDA ObjDir, X
    AND #$0C
    BNE @DrawMirrored
    ; Else draw not mirrored.
    ;
    PLA
    JSR DrawObjectNotMirrored
    JMP CheckMonsterCollisions

@DrawMirrored:
    PLA                         ; Restore the frame image.
; Params:
; A: frame image
; X: object index
; [00]: object X
; [01]: object Y
;
DrawObjectMirroredAndCheckCollisions:
    JSR DrawObjectMirrored
    JMP CheckMonsterCollisions

UpdateGhini:
    LDA #$FF                    ; Pass in turn rate $FF to turn as often as possible.
    JSR UpdateCommonWanderer
    JSR DrawGhiniAndCheckCollisions
    JSR CheckMonsterCollisions
    ; If the monster is still alive, then return.
    ;
    LDA ObjMetastate, X
    BEQ @Exit
    ; For each object slot from $B to 1:
    ; If the object is a flying ghini ($22),
    ; then kill it by setting metastate to $11.
    ;
    LDY #$0B
@LoopObject:
    LDA ObjType, Y
    CMP #$22
    BNE :+
    LDA #$11
    STA ObjMetastate, Y
:
    DEY
    BNE @LoopObject
@Exit:
    RTS

DrawGhiniAndCheckCollisions:
    JSR Anim_FetchObjPosForSpriteDescriptor
    STA $0D                     ; Reset [0D]: frame image number. "Back" frame for up.
    ; If the direction has an "up" component, then keep the
    ; frame image 0, and go figure out horizontal flipping.
    ;
    LDA ObjDir, X
    AND #$08
    BNE @CheckHorizontalFlip
    ; Else make the frame image 1 for the "down" frame.
    ; Note that this is the frame image to use, even if there's no
    ; down component in the direction.
    ;
    INC $0D
    ; If right is a component of the direction, then go set horizontal
    ; flipping. Else leave horizontal flipping = 0.
    ;
    LDA ObjDir, X
    AND #$01
    BEQ @DrawAndCheckCollisions
    BNE @SetHorizontalFlip
@CheckHorizontalFlip:
    ; Set horizontal flipping if right is a direction component.
    ; This essentially the same test as above, but for when we jump
    ; from the "up" test.
    ;
    LDA ObjDir, X
    AND #$02
    BEQ @DrawAndCheckCollisions
@SetHorizontalFlip:
    INC $0F
@DrawAndCheckCollisions:
    LDA $0D
; Params:
; A: frame image
; X: object index
; [00]: object X
; [01]: object Y
; [0F]: flip horizontally
;
; Returns:
; [00]: 0 for Link slot
; [06]: 1 if objects collide
; [09]: 0 for Link damage type (none)
; [0C]: 1 if objects collide
; [034B]: ShotCollidesWithLink
;
DrawObjectNotMirroredAndCheckLinkCollision:
    JSR DrawObjectNotMirrored
    JMP CheckLinkCollision

SecretArmosRoomIds:
    .BYTE $24, $0B, $1C, $22, $34, $3D, $4E

SecretArmosXs:
    .BYTE $E0, $B0, $B0, $30, $40, $90, $A0

InitArmosOrFlyingGhini:
    ; In UpdateObject, this object was flagged "initialized".
    ; But if it's still fading in (timer > 0), then flag it "uninitialized".
    ;
    LDA ObjTimer, X
    STA ObjUninitialized, X
    ; If it's still fading in, then go finish some initialization needed
    ; for fading in.
    ;
    BNE @FinishInit
    ; Once the object timer reaches 0; if the object is flying ghini,
    ; go finish initializing it.
    ;
    LDA ObjType, X
    CMP #$22                    ; Flying Ghini
    BEQ @FinishInit
    ; Else we have an armos.
    ;
    ; Store stairs tile $70 in [00] for use later.
    ;
    LDA #$70
    STA $00
    ; Look for the current room ID in an array of room ID's that
    ; have armos secrets.
    ;
    LDY #$06
@LoopArmosRoom:
    LDA RoomId
    ; If this element does not match the current room ID, go loop again.
    ;
    CMP SecretArmosRoomIds, Y
    BNE @NextLoopArmosRoom
    ; The secret (usually stairs) is under one of the armoses.
    ;
    ; If the armos's X coordinate does not match the one needed
    ; for the current room in the list, then go loop again.
    ;
    LDA ObjX, X
    CMP SecretArmosXs, Y
    BNE @NextLoopArmosRoom
    ; If the armos's Y coordinate <> $80, go loop again.
    ;
    LDA ObjY, X
    CMP #$80
    BNE @NextLoopArmosRoom
    ; If the loop index <> 0, go use the stairs tile to patch the floor.
    ;
    CPY #$00
    BNE @UseChosenTile
    ; The room ID at index 0 is $24. Instead of stairs, this room
    ; has the power bracelet.
    ;
    ; Set up the room item with the armos's coordinates.
    ;
    STA ObjY+19
    LDA ObjX, X
    STA ObjX+19
    ; This resets the room item's state, which activates it.
    ;
    STY ObjState+19
    ; Set the room item ID.
    ;
    LDA #$14
    STA RoomItemId
    ; If the bracelet has not been taken, then play the "secret found" tune.
    ;
    ; Either way, quit the loop, and replace the tile with a floor tile.
    ;
    ; Note that, if the item was already taken, then the room item
    ; object will stay activated. But in E6EA (MoveAndDrawRoomItem),
    ; it will be ignored, because that routine checks whether
    ; the item was taken.
    ;
    JSR GetRoomFlagUWItemState
    BNE @UseFloorTile
    JSR PlaySecretFoundTune
    BNE @UseFloorTile
@NextLoopArmosRoom:
    ; Bottom of the loop.
    ;
    DEY
    BPL @LoopArmosRoom
@UseFloorTile:
    ; Not found, or found the power bracelet.
    ; Use a floor tile $26 to replace the armos.
    ;
    LDA #$26
    STA $00
@UseChosenTile:
    LDA $00
    ; If the replacement tile is a stairs tile, then play the "secret found" tune.
    ;
    PHA
    CMP #$70
    BNE :+
    JSR PlaySecretFoundTune
:
    ; Replace the tile where the armos was.
    ;
    INC ReturnToBank4
    PLA
    JSR ChangeTileObjTiles
    ; Because the armos object is aligned to the square grid
    ; (because it was made from a square),
    ; set its grid offset to 3 to compensate.
    ;
    ; Most objects are aligned to the grid vertically when the
    ; low nibble is $D.
    ;
    LDA #$03
    STA ObjGridOffset, X
    ; Set a speed (q-speed fraction) randomly:
    ; $20 if random value < $80
    ; $60 otherwise
    ;
    LDA #$20
    LDY Random+1, X
    CPY #$80
    BCC :+
    LDA #$60
:
    STA ObjQSpeedFrac, X
@FinishInit:
    ; Facing and input directions down.
    ;
    LDA #$04
    STA ObjInputDir, X
    STA ObjDir, X
    ; Every other frame, return without drawing.
    ;
    LDA ObjTimer, X
    LSR
    BCS :+
    ; Finish initializing based on type.
    ;
    LDA ObjType, X
    CMP #$22                    ; Flying Ghini
    BEQ L_EndInitFlyingGhini
    JSR DrawArmosAndCheckCollisions
:
    RTS

L_EndInitFlyingGhini:
    JSR DrawGhiniAndCheckCollisions
    ; If we're finally leaving the object flagged "initialized",
    ; then reset metastate and initialize this as a flyer.
    ;
    LDA ObjUninitialized, X
    BNE :-
    JSR ResetObjMetastateAndTimer
    JMP EndInitFlyer

UpdateArmos:
    JSR UpdateGoriya
    ; If it's still shoved, then don't animate. Only go draw.
    ;
    LDA ObjShoveDir, X
    BNE DrawArmosAndCheckCollisions
    ; Animate.
    ;
    ; Decrement the animation counter. But if it hasn't reached 0,
    ; then only go draw.
    ;
    DEC ObjAnimCounter, X
    BNE DrawArmosAndCheckCollisions
    ; Armos animation frames last 6 screen frames.
    ;
    LDA #$06
    STA ObjAnimCounter, X
    ; Armos doesn't simply flip horizontally to animate. That would
    ; change the position of the shield. To keep fixed it in place,
    ; there are separate frame images for each animation frame.
    ;
    ; Frame images 0 and 1 depict the first animation frame, facing front and back.
    ; Frame images 2 and 3 depict the second animation frame, facing front and back.
    ;
    ; Here flip between the two sets by XOR'ing with 2.
    ; Then choose the direction at the point of drawing below.
    ;
    LDA ObjAnimFrame, X
    EOR #$02
    STA ObjAnimFrame, X
DrawArmosAndCheckCollisions:
    JSR Anim_FetchObjPosForSpriteDescriptor
    LDY ObjDir, X
    ; If facing up, then use the second frame image in the set ("back").
    ; Else use the second.
    ;
    CPY #$08
    BNE :+
    LDA #$01
:
    CLC
    ADC ObjAnimFrame, X
    JSR DrawObjectNotMirrored
    ; If the armos is still fading in, then go for check collision with Link,
    ; but not with weapons.
    ;
    LDA ObjTimer, X
    BNE @CheckLinkCollision
    ; Else check for all collisions.
    ;
    JSR CheckMonsterCollisions
    ; TODO: Why?
    ; If the armos has died, then set object type to $5D.
    ;
    LDA ObjMetastate, X
    BEQ :+
    LDA #$5D
    STA ObjType, X
:
    RTS

@CheckLinkCollision:
    JMP CheckLinkCollision

UpdatePondFairy:
    JSR DrawFairy
    ; If not in state 0, then go handle states 1 to 3.
    ;
    LDA ObjState+1
    BNE PondFairy_HandleOtherStates
    ; State 0.
    ;
    ; If Link is not at the edge of the pond (Y=$AD), then return.
    ;
    LDA ObjY
    CMP #$AD
    BNE @Exit
    ; If Link's X < $70 or >= $81, then return.
    ;
    LDA ObjX
    CMP #$70
    BCC @Exit
    CMP #$81
    BCS @Exit
    ; Link is at the edge of the pond. Advance to state 1,
    ; halt Link, and start filling hearts.
    ;
    INC ObjState+1
    LDA #$40
    STA ObjState
    STA World_IsFillingHearts
@Exit:
    RTS

PondFairy_HandleOtherStates:
    CMP #$01
    BNE @CheckState2
    ; State 1. Flying and filling hearts.
    ;
    ; If still filling hearts, then go draw Link and hearts.
    ;
    LDA World_IsFillingHearts
    BNE @DrawLinkAndHearts
    ; If not filling hearts anymore, then go to state 2,
    ; and set Link's object timer to $50, to keep showing hearts
    ; a little while after we finish filling hearts.
    ;
    INC ObjState+1
    LDA #$50
    STA ObjTimer+1
@CheckState2:
    ; If state <> 2 (so, it's 3), then return.
    ;
    ; Note that the first time here is when we fall thru from 8DBC.
    ; In this case, A has $50 -- the value that Link's object timer
    ; was set to, and we'll return.
    ;
    CMP #$02
    BNE @Exit
    ; State = 2.
    ;
    ; If Link's timer <> 0, then go draw Link and hearts.
    ;
    LDA ObjTimer+1
    BNE @DrawLinkAndHearts
    ; Else go to state 3, and unhalt Link.
    ;
    INC ObjState+1
    LDA #$00
    STA ObjState
@DrawLinkAndHearts:
    ; TODO: but why, since Link is halted?
    ;
    ; Reset the input direction, so that Link doesn't animate
    ; when drawing him.
    LDY #$00
    STY ObjInputDir
    ; Save and reset Link's state.
    ;
    ; TODO: but why, since Link is halted?
    ;
    LDA ObjState
    PHA
    STY ObjState
    JSR Link_EndMoveAndAnimate_Bank4
    ; Restore Link's state.
    ;
    PLA
    STA ObjState
    JSR PondFairy_MoveHearts
    ; Restore the object slot.
    ;
    LDX CurObjIndex
@Exit:
    RTS

PondHeartStartAngles:
    .BYTE $14, $10, $0C, $08, $04, $00, $1C

PondFairy_MoveHearts:
    ; Loop over each heart from object slot 2 to 9.
    ;
    ; Even though they are not standalone objects, their info
    ; is stored in those object slots.
    ;
    LDX #$02
@LoopHeart:
    ; If the current heart's state <> 0, then go move it.
    ; Else we have to wait for it to come out at the right time.
    ;
    LDA ObjState, X
    BNE @MoveHeart
    ; The current heart's state = 0.
    ;
    ; If object slot = 2, then go make it appear. This is the first
    ; heart to show up.
    ;
    CPX #$02
    BEQ @SetUpHeart
    ; Object slot <> 2. If the state of the heart in slot 2 = 0, then
    ; go start over.
    ;
    ; TODO:
    ; Is it possible to jump from here? This looks like an infinite loop.
    ;
    LDA ObjState+2
    BEQ @LoopHeart
    ; Look up the starting angle of this heart with the index
    ; (object slot - 3). If the first heart has not reached this angle,
    ; then loop again.
    ;
    TXA
    SEC
    SBC #$03
    TAY
    LDA ObjAngleWhole+2
    CMP PondHeartStartAngles, Y
    BNE @NextLoopHeart
@SetUpHeart:
    ; Set up this heart. Set its state to 1.
    ;
    INC ObjState, X
    ; TODO: ?
    ;
    LDA #$80
    STA ObjDir, X
    ; Starting angle $18 (N).
    ;
    LDA #$18
    STA ObjAngleWhole, X
    ; This heart is right above the fairy. Set its X the same as the fairy's.
    ;
    LDA ObjX+1
    STA ObjX, X
    ; This heart is right above the fairy. Set its Y $1C pixels above the fairy.
    ;
    LDA ObjY+1
    SEC
    SBC #$1C
    STA ObjY, X
@MoveHeart:
    ; Decrease the angle by $00.60.
    ;
    LDA #$00
    STA $0B
    LDA #$60
    JSR DecreaseObjectAngle
    ; Rotate the heart's location by the change in angle.
    ; Use 6 for the number of bits of sine/cosine to use
    ; for a large ring.
    ;
    LDA #$06
    TAY
    JSR RotateObjectLocation
    STA ObjY, X
    TXA                         ; Save the loop index.
    PHA
    JSR Anim_SetSpriteDescriptorRedPaletteRow
    JSR Anim_FetchObjPosForSpriteDescriptor
    ; The variable for the currently updating object slot has to be
    ; set to the heart's object slot for this drawing routine to work.
    ;
    LDX CurObjIndex
    JSR DrawObjectNotMirrored
    PLA                         ; Restore the loop index.
    TAX
@NextLoopHeart:
    ; Bottom of the loop.
    ; Increase the object slot.
    ;
    INX
    CPX #$0A
    BNE @LoopHeart
    RTS

RockPushDirections:
; Also used for the gravestone.
    .BYTE $08, $04

UpdateRockOrGravestone:
    LDA ObjState, X
    BNE @State1
    ; State 0.
    ;
    ; If this is not a gravestone (but it's a rock), and there is no
    ; bracelet, then return.
    ;
    LDA ObjType, X
    CMP #$65
    BEQ @CheckQuest
    LDA InvBracelet
    BEQ @Exit
@CheckQuest:
    ; If there is a mismatch between the current quest and the quest
    ; needed for the secret in this room, then return.
    ;
    JSR IsQuestSecretMismatch
    BCS @Exit
    ; The gravestone and rocks can only be pushed vertically.
    ; Return, if X's don't match.
    ;
    LDA ObjX
    CMP ObjX, X
    BNE @Exit
    ; If the difference between Link's (Y + 3) and the block's Y
    ; is positive; then go use it along with a flag that indicates that
    ; Link is "down" from the object.
    ;
    LDY #$00
    LDA ObjY
    CLC
    ADC #$03
    SEC
    SBC ObjY, X
    BPL @CheckDistance
    ; Else negate it, and indicate Link is "up" from the object.
    ;
    INY
    EOR #$FF
    CLC
    ADC #$01
@CheckDistance:
    ; If the distance >= $11, return.
    ;
    CMP #$11
    BCS @Exit
    ; If the input direction has no vertical component, then return.
    ;
    LDA ObjInputDir
    AND #$0C
    BEQ @Exit
    ; If this vertical input direction does not match the one needed
    ; to push the rock or gravestone, then return.
    ;
    CMP RockPushDirections, Y
    BNE @Exit
    ; Set it to the object's direction. Go to the next state.
    ;
    STA ObjDir, X
    INC ObjState, X
    ; Store current room ID.
    ;
    LDA RoomId
    STA TileObjRoomId, X
    ; Change from a gravestone tile to the gray floor tile.
    ; The gravestone object will be drawn above it.
    ;
    INC ReturnToBank4
    LDA #$26                    ; Gray floor tile
    JSR ChangeTileObjTiles
@Exit:
    RTS

@State1:
    ; State 1.
    ;
    ; Move in the object's direction.
    ;
    LDA ObjDir, X
    STA $0F
    JSR MoveObject
    ; Draw the sprites one pixel above the object's location.
    ;
    JSR Anim_FetchObjPosForSpriteDescriptor
    DEC $01
    JSR DrawObjectNotMirrored
    ; If the object's grid offset (distance moved) <> $10 nor -$10,
    ; then return.
    ;
    LDA ObjGridOffset, X
    CMP #$10
    BEQ :+
    CMP #$F0
    BNE @Exit
:
    ; Flag the room visited.
    ;
    LDA RoomId
    PHA
    LDA TileObjRoomId, X
    STA RoomId
    JSR MarkRoomVisited
    PLA
    STA RoomId
    ; If object is a rock ($62), go use a rock tile ($C8).
    ;
    LDA #$C8
    LDY ObjType, X
    CPY #$62
    BEQ @ReplaceTiles
    ; If the object is a gravestone ($65), go use a gravestone tile ($BC).
    ;
    LDA #$BC
    CPY #$65
    BEQ @ReplaceTiles
    ; Else use an armos tile ($C0). Dead code?
    ;
; Unknown block
    .BYTE $A9, $C0

@ReplaceTiles:
    ; Change the tiles at the end location.
    ;
    INC ReturnToBank4
    JSR ChangeTileObjTiles
    ; Store the stairs tile in [00] for use in revealing the secret.
    ;
    LDA #$70
    STA $00
    ; Get the position of the stairs in this room, and set it for the object.
    ;
    LDY TileObjRoomId, X
    JSR GetShortcutOrItemXYForRoom
    STA ObjX, X
    STY ObjY, X
    LDA $00
; Params:
; A: the first tile of tile object
; X: object index
;
RevealSecretTileObj:
    INC ReturnToBank4
    JSR ChangeTileObjTiles
    JSR DestroyMonster_Bank4
    JMP PlaySecretFoundTune

UpdateRockWall:
    ; If the secret in this room does not apply to the current quest,
    ; then return.
    ;
    JSR IsQuestSecretMismatch
    BCS @Exit
    ; If there is no detonating bomb (state $13) in slots $10 and $11,
    ; then return.
    ;
    LDY #$10
    LDA a:ObjState, Y
    CMP #$13
    BEQ @FoundBomb
    INY                         ; Point to slot $11.
    LDA a:ObjState, Y
    CMP #$13
    BNE @Exit
@FoundBomb:
    ; Store the bomb's object slot in [00].
    ;
    STY $00
    ; If the tile object and weapon collide, then reveal the secret.
    ;
    JSR CheckTileObjWeaponCollision
    BEQ @Exit
    LDA #$24                    ; Black tile
    JSR RevealAndFlagSecretTileObj
@Exit:
    RTS

UpdateTree:
    ; If the secret in this room does not apply to the current quest,
    ; then return.
    ;
    JSR IsQuestSecretMismatch
    BCS L10F3E_Exit
    ; If there is no standing fire (state $22) in slots $10 and $11,
    ; then return.
    ;
    LDY #$10
    LDA a:ObjState, Y
    CMP #$22
    BEQ @FoundFire
    INY
    LDA a:ObjState, Y
    CMP #$22
    BNE L10F3E_Exit
@FoundFire:
    ; Store the fire's object slot in [00].
    ;
    STY $00
    ; If the standing fire's timer >= 2, return.
    ;
    LDA a:ObjTimer, Y
    CMP #$02
    BCS L10F3E_Exit
    ; If the tile object and weapon collide, then reveal the secret.
    ;
    JSR CheckTileObjWeaponCollision
    BEQ L10F3E_Exit
; Params:
; X: object index of the tile object
;
;
; First tile of stairs
RevealAndFlagSecretStairsObj:
    LDA #$70
; Params:
; A: the first tile of tile object
; X: object index
;
RevealAndFlagSecretTileObj:
    JSR RevealSecretTileObj
    ; Flag the secret found in this room.
    ;
    JSR GetRoomFlags
    ORA #$80                    ; Secret found/taken
    STA ($00), Y
L10F3E_Exit:
    RTS

; Params:
; X: object index
; Y: weapon object index
; [00]: weapon object index
;
; Returns:
; A: 1 if objects collide
;
; Put the midpoint coordinate of the weapon in [04] and [05].
;
CheckTileObjWeaponCollision:
    LDA a:ObjX, Y
    CLC
    ADC #$08
    STA $04
    LDA a:ObjY, Y
    CLC
    ADC #$08
    STA $05
    ; Put the tile object's midpoint coordinates in [02] and [03].
    ;
    JSR GetObjectMiddle
    LDA #$10                    ; 10 pixel collision threshold
    JMP DoObjectsCollide

SecretQuestNumbers:
    .BYTE $00, $00, $01

; Returns:
; C: 1 if there is a mismatch between current quest
;    and quest number for the secret in the room
;
;
; The quest secret is in the high two bits.
;
IsQuestSecretMismatch:
    LDA LevelBlockAttrsByteF
    LSR
    LSR
    LSR
    LSR
    LSR
    LSR
    ; If it's 0, then return C=0.
    ;
    BEQ @ReturnFalse
    ; Look up a quest number (0 or 1) indexed by quest secret (0 or 1).
    ;
    TAY
    LDA SecretQuestNumbers, Y
    ; If the save slot's quest number matches the room's
    ; secret quest number, then return C=0.
    ;
    LDY CurSaveSlot
    CMP QuestNumbers, Y
    BEQ @ReturnFalse
    ; Else return C=1. There is a mismatch in quest numbers.
    ;
    SEC
    RTS

@ReturnFalse:
    CLC
    RTS

RaftDirections:
    .BYTE $04, $08

UpdateDock:
    ; If missing the raft, then return.
    ;
    LDA InvRaft
    BEQ @Exit
    LDA ObjState, X
    BNE @HandleOtherStates
    ; State 0
    ;
    ; Choose an X coordinate for the dock:
    ; $80 in room $55
    ; $60 in the other room ($3F)
    ;
    LDA #$80
    LDY RoomId
    CPY #$55
    BEQ :+
    LDA #$60
:
    ; If the player is not aligned with the dock, return.
    ;
    CMP ObjX
    BNE @Exit
    ; Set the dock object's X.
    ;
    STA ObjX, X
    ; Determine whether Link is coming or going.
    ; If Y = $3D, then he's at the top edge of the screen. Use state 1.
    ;
    LDY #$01
    LDA ObjY
    CMP #$3D
    BEQ @SetState
    ; But if Y = $7D, then he's at the dock. Use state 2.
    ; Otherwise, return.
    ;
    INY
    CMP #$7D
    BNE @Exit
@SetState:
    STY ObjState, X
    ; Show the raft beneath Link: 6 pixels down.
    ;
    CLC
    ADC #$06
    STA ObjY, X
    ; Play the "secret found" tune, and halt Link.
    ;
    JSR PlaySecretFoundTune
    LDA #$40
    STA ObjState
    ; Set Link's direction based on the raft's state.
    ;
    LDA RaftDirections-1, Y
    STA ObjDir
@Exit:
    RTS

@HandleOtherStates:
    ; Is state = 1?
    ;
    LDY ObjState, X
    DEY
    BEQ @State1
    ; State 2. Up
    ;
    DEC ObjY, X
    DEC ObjY
    ; If Link's Y = $3D, then leave the room.
    ; Else go draw.
    ;
    LDA ObjY
    CMP #$3D
    BNE @Draw
    TXA
    PHA
    JSR GoToNextModeFromPlay
    PLA
    TAX
    JMP @ResetLinkAndRaftStateAndDraw

@State1:
    ; State 1. Down
    ;
    INC ObjY, X
    INC ObjY
    ; If Link's Y <> $7F, go draw.
    ; Note that Y is below $7D, which would trigger going up.
    ;
    LDA ObjY
    CMP #$7F
    BNE @Draw
    ; Link's grid offset at $7F must be 2 ($7F - $7D).
    ;
    LDA #$02
    STA ObjGridOffset
@ResetLinkAndRaftStateAndDraw:
    LDA #$00
    STA ObjState
    STA ObjState, X
@Draw:
    TXA                         ; Save raft object slot.
    PHA
    JSR Link_EndMoveAndAnimate_Bank4
    PLA                         ; Restore raft object slot.
    TAX
    ; TODO: Why animate the raft?
    ;
    JSR AnimateObjectWalking
    LDA #$00                    ; Normal sprites, palette row 4 (Link).
    LDY #$09                    ; Raft item slot
    JMP Anim_WriteStaticItemSpritesWithAttributes

UpdateFlyingGhini:
    ; If we have the magic clock, then don't move.
    ;
    LDA InvClock
    BNE :+
    JSR ControlFlyingGhiniFlight
    JSR MoveFlyer
:
    JSR Anim_FetchObjPosForSpriteDescriptor
    ; Get the low bit of the flying distance traveled.
    ; But this doesn't seem to be used.
    ; The following call clobbers the A register.
    ;
    LDA Flyer_ObjDistTraveled, X
    AND #$01
    JMP DrawGhiniAndCheckCollisions

ControlFlyingGhiniFlight:
    LDA Flyer_ObjFlyingState, X
    JSR TableJump
ControlFlyingGhiniFlight_JumpTable:
    .ADDR Flyer_SpeedUp
    .ADDR Flyer_GhiniDecideState
    .ADDR Flyer_Chase
    .ADDR Flyer_Wander
    .ADDR Flyer_SlowDown
    .ADDR Flyer_Delay

Flyer_GhiniDecideState:
    ; Go to the next state randomly:
    ; Random >= $A0: 2
    ; Random >= $08: 3
    ; Else:          4
    ;
    ; Set up 6 turns.
    ;
    LDY #$02
    LDA Random, X
    CMP #$A0
    BCS :+                      ; If >= $A0, go to state 2.
    INY
    CMP #$08
    BCS :+                      ; If >= 8, go to state 3.
    INY                         ; Else go to state 4.
:
    JMP Flyer_SetFlyingStateAnd6Turns    ; Go set the state we determined.

UpdatePeahat:
    ; If the object is being shoved, then shove it and go draw
    ; and check for collisions.
    ;
    LDA ObjShoveDir, X
    BEQ :+
    JSR Obj_Shove
@L_DrawAndCheckCollisions:
    JMP @DrawAndCheckCollisions

:
    ; If we have the clock or the object is stunned, go draw
    ; and check for collisions.
    ;
    LDA InvClock
    ORA ObjStunTimer, X
    BNE @L_DrawAndCheckCollisions
    ; Else move around.
    ;
    JSR ControlPeahatFlight
    JSR MoveFlyer
@DrawAndCheckCollisions:
    JSR Anim_FetchObjPosForSpriteDescriptor
    ; Take low bit of the flying distance traveled as the frame image.
    ; So, the faster it moves, the faster it animates.
    ;
    LDA Flyer_ObjDistTraveled, X
    AND #$01
    JSR DrawObjectMirrored
    ; In flying state 5, check for all collisions (so it can get hurt).
    ; In all other states, only check for collisions with Link.
    ;
    LDA Flyer_ObjFlyingState, X
    CMP #$05
    BEQ :+
    JMP CheckLinkCollision

:
    JMP CheckMonsterCollisions

ControlPeahatFlight:
    LDA Flyer_ObjFlyingState, X
    JSR TableJump
ControlPeahatFlight_JumpTable:
    .ADDR Flyer_SpeedUp
    .ADDR Flyer_PeahatDecideState
    .ADDR Flyer_Chase
    .ADDR Flyer_Wander
    .ADDR Flyer_SlowDown
    .ADDR Flyer_Delay

Flyer_PeahatDecideState:
    ; Go to the next state randomly:
    ; Random >= $B0: 2
    ; Random >= $20: 3
    ; Else:          4
    ;
    ; Set up 6 turns.
    ;
    LDY #$02
    LDA Random, X
    CMP #$B0
    BCS Flyer_SetFlyingStateAnd6Turns    ; If >= $B0, go to state 2.
    INY
    CMP #$20
    BCS Flyer_SetFlyingStateAnd6Turns    ; If >= $20, go to state 3.
    INY                         ; Else go to state 4.
Flyer_SetFlyingStateAnd6Turns:
    TYA
    STA Flyer_ObjFlyingState, X
    LDA #$06                    ; Set 6 turns for the next state.
    STA Flyer_ObjTurns, X
    RTS

PlaySecretFoundTune:
    LDA #$04
    STA Tune1Request
    RTS

; Unknown block
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF

WallmasterDirsAndAttrsLeft:
    .BYTE $01, $01, $08, $08, $08, $02, $02, $02
    .BYTE $C1, $C1, $C4, $C4, $C4, $C2, $C2, $C2

WallmasterDirsAndAttrsRight:
    .BYTE $42, $42, $48, $48, $48, $41, $41, $41
    .BYTE $82, $82, $84, $84, $84, $81, $81, $81

WallmasterDirsAndAttrsTop:
    .BYTE $C4, $C4, $C2, $C2, $C2, $C8, $C8, $C8
    .BYTE $84, $84, $81, $81, $81, $88, $88, $88

WallmasterDirsAndAttrsBottom:
    .BYTE $48, $48, $42, $42, $42, $44, $44, $44
    .BYTE $08, $08, $01, $01, $01, $04, $04, $04

WallmasterInitialXs:
    .BYTE $00, $F0

WallmasterInitialYs:
    .BYTE $3D, $DD

UpdateWallmaster:
    LDA ObjState, X
    BEQ :+
    JMP L_Wallmaster_State1

:
    ; State 0.
    ;
    ; If Link's object timer is active, then return.
    ;
    LDA ObjTimer+1
    BNE @Exit
    ; If Link is halted, then return.
    ;
    LDA ObjState
    CMP #$40
    BNE @State0
@Exit:
    RTS

@State0:
    ; State 0. Idle/Waiting inside wall
    ;
    ; If  (Link's X < $29 or >= $C8)
    ; and (Link's Y < $6D or >= $B5),
    ; then return.
    ;
    LDA ObjX
    CMP #$29
    BCC :+
    CMP #$C8
    BCC @CheckLeftAndRight
:
    LDA ObjY
    CMP #$6D
    BCC @Exit
    CMP #$B5
    BCS @Exit
@CheckLeftAndRight:
    ; Check whether Wallmaster should come out of the left or right wall.
    ;
    ; If Link's X <> $20 nor $D0, then go check the top and bottom walls.
    ;
    LDA ObjX
    CMP #$20
    BEQ :+
    CMP #$D0
    BNE @CheckTopAndBottom
:
    ; Store Link's X as the major coordinate in [01],
    ; and Link's Y as the minor coordinate [00].
    ;
    LDA ObjY
    STA $00
    LDA ObjX
    STA $01
    ; Pass "up" as decreasing direction along wall in [02].
    ;
    LDA #$08
    STA $02
    LDY #$20                    ; Link's minimum major coordinate (X at left wall)
    LDA #$00                    ; Offset 0 for first horizontal wall element in instruction block
    JSR Wallmaster_CalcStartPosition
    ; Set Y coordinate to initial minor value returned.
    ;
    LDA $04
    STA ObjY, X
    ; Look up and set X coordinate according to the index returned.
    ;
    LDA WallmasterInitialXs, Y
    JMP @SetUpToEmerge

@CheckTopAndBottom:
    ; Check whether Wallmaster should come out of the top or bottom wall.
    ;
    ; If Link's Y <> $5D nor $BD, then return.
    ;
    LDA ObjY
    CMP #$5D
    BEQ :+
    CMP #$BD
    BNE @Exit
:
    ; Store Link's Y as the major coordinate in [01],
    ; and Link's X as the minor coordinate [00].
    ;
    LDA ObjX
    STA $00
    LDA ObjY
    STA $01
    ; Pass "left" as decreasing direction along wall in [02].
    ;
    LDA #$02
    STA $02
    LDY #$5D                    ; Link's minimum major coordinate (Y at top wall)
    LDA #$20                    ; Offset $20 for first vertical wall element in instruction block
    JSR Wallmaster_CalcStartPosition
    ; Look up and set Y coordinate according to the index returned.
    ;
    LDA WallmasterInitialYs, Y
    STA ObjY, X
    ; Set X coordinate to initial minor value returned.
    ;
    LDA $04
@SetUpToEmerge:
    STA ObjX, X
    ; Look up and set the facing direction for the first step.
    ;
    LDY Wallmaster_ObjStep, X
    LDA WallmasterDirsAndAttrsLeft, Y
    AND #$0F
    STA ObjDir, X
    ; TODO: why object 1 timer?
    ;
    ; Set object slot 1's timer to $60, this monster's QSpeed to $18,
    ; and animation counter to 8.
    ;
    LDA #$60
    STA ObjTimer+1
    LDA #$18
    STA ObjQSpeedFrac, X
    LDA #$08
    STA ObjAnimCounter, X
    ; Reset grid offset, tiles crossed, and movement frame.
    ;
    LDA #$00
    STA ObjGridOffset, X
    STA Wallmaster_ObjTilesCrossed, X
    STA ObjAnimFrame, X
    ; Start Wallmaster state 1.
    ;
    INC ObjState, X
    RTS

L_Wallmaster_State1:
    ; If the monster has been shoved, then shove it and go draw.
    ;
    LDA ObjShoveDir, X
    BEQ @CheckStunned
    JSR Obj_Shove
@DrawAndCheckCollisions:
    JMP @Wallmaster_DrawAndCheckCollisions

@CheckStunned:
    ; If we have the magic clock or the monster is stunned, then
    ; go draw and check collisions.
    ;
    LDA InvClock
    ORA ObjStunTimer, X
    BNE @DrawAndCheckCollisions
    LDA ObjDir, X
    STA $0F                     ; [0F] moving direction
    JSR MoveObject
    ; If grid offset <> $10 nor $F0 (so not square aligned), then
    ; go draw and check collisions.
    ;
    LDA ObjGridOffset, X
    CMP #$10
    BEQ :+
    CMP #$F0
    BNE @Wallmaster_DrawAndCheckCollisions
:
    ; Truncate grid offset.
    ;
    LDA #$00
    STA ObjGridOffset, X
    ; Advance the step.
    ;
    INC Wallmaster_ObjStep, X
    ; Set facing direction to the one for this new step.
    ;
    LDY Wallmaster_ObjStep, X
    LDA WallmasterDirsAndAttrsLeft, Y
    AND #$0F
    STA ObjDir, X
    ; Increase the count of tiles crossed.
    ;
    INC Wallmaster_ObjTilesCrossed, X
    ; If the monster has crossed less than 7 tiles, then
    ; go draw and check collisions.
    ;
    LDA Wallmaster_ObjTilesCrossed, X
    CMP #$07
    BCC @Wallmaster_DrawAndCheckCollisions
    ; It has reached the end of a trip.
    ;
    ; If Wallmaster did not capture Link, then go set state to 0 and return.
    ;
    LDA ObjCaptureTimer, X
    BEQ @SetState
    ; At the end of a trip where Link was captured:
    ; 1. hide the special sprites used by Wallmaster
    ; 2. go to mode 3 "unfurl" to go the level's entrance
    ; 3. reset Link's state, so he's idle
    ;
    JSR HideSpritesOverLink
    LDA #$03
    STA GameMode
    LDA #$00
    STA ObjState
    STA IsUpdatingMode
    STA GameSubmode
@SetState:
    STA ObjState, X
    RTS

@Wallmaster_DrawAndCheckCollisions:
    ; If Link was captured, then go draw Link and Wallmaster specially.
    ;
    LDA ObjCaptureTimer, X
    BNE @DrawWithCapturedLink
    JSR CheckMonsterCollisions
    ; If after checking object collisions, Link was captured, then
    ; halt Link and keep him from being shoved.
    ;
    LDA ObjCaptureTimer, X
    BEQ :+
    LDA #$40
    STA ObjState
    LDA #$00
    STA ObjShoveDir
:
    ; Remember the index of the first sprite that will be used to draw,
    ; because the drawing routine will cycle the sprites.
    ;
    LDA RollingSpriteIndex
    PHA                         ; Save the sprite index
    JSR Wallmaster_PrepareToDraw
    LDA ObjAnimFrame, X
    JSR DrawObjectNotMirrored
    PLA                         ; Restore the sprite index
    ; Store the offset of the left sprite record in [00],
    ; and the right one in [01].
    ;
    TAY
    LDA SpriteOffsets, Y
    STA $00
    LDA SpriteOffsets+1, Y
@PatchSprites:
    STA $01
    JSR Wallmaster_PutSpritesBehindBgIfNeeded
    ; The default image is the hand open.
    ; If animation frame = 0, then return.
    ;
    LDX CurObjIndex
    LDA ObjAnimFrame, X
    BEQ @Exit
    ; Animation frame 1 uses Wallmaster frame image 1, which
    ; uses tiles $9C/$9D on the left and $9E/$9F on the right.
    ; The right side is correctly the right side of a closed hand.
    ; But the left side is Keese. So, we have to patch the left
    ; side to use the common left side of the hand -- $AC/$AD.
    ;
    ; Keep in mind that left and right sprites might be flipped.
    ;
    LDY $00
    LDA Sprites+1, Y
    CMP #$9C
    BEQ :+
    LDY $01
:
    LDA #$AC
    STA Sprites+1, Y
@Exit:
    RTS

@DrawWithCapturedLink:
    ; Draw Wallmaster with captured Link.
    ;
    ; First, put Link right where the monster is.
    ;
    LDA ObjX, X
    STA ObjX
    LDA ObjY, X
    STA ObjY
    JSR Link_EndMoveAndAnimate_Bank4
    JSR ShowLinkSpritesBehindHorizontalDoors
    LDX CurObjIndex
    JSR Wallmaster_PrepareToDraw
    ; Force animation frame 1: hand closed.
    ;
    LDA #$01
    STA ObjAnimFrame, X
    JSR DrawObjectNotMirroredOverLink
    ; Store the offsets of the sprites to show over Link
    ; ($10 and $11) in [00] and [01] for use in patching the right sprite.
    ;
    LDA #$40
    STA $00
    LDA #$44
    ; Go patch up the sprites.
    ;
    JMP @PatchSprites

Wallmaster_PrepareToDraw:
    LDA #$08                    ; 8 screen frames an animation frame
    JSR Anim_AdvanceAnimCounterAndSetObjPosForSpriteDescriptor
    ; For the current step, look up the sprite flipping attributes.
    ;
    LDY Wallmaster_ObjStep, X
    LDA WallmasterDirsAndAttrsLeft, Y
    AND #$F0
    ORA #$01                    ; Combine them with palette row 5 (blue)
    JSR Anim_SetSpriteDescriptorAttributes
    ; If the sprite attributes for this step have horizontal flipping ($40),
    ; then mask it off, and turn on horizontal flipping with [0F].
    ;
    AND #$40
    BEQ :+
    LDA $04
    AND #$8F
    JSR Anim_SetSpriteDescriptorAttributes
    INC $0F
:
    RTS

; Params:
; A: offset of first instruction for left wall (0)
;    or top wall ($20)
; Y: Link's minimum major coordinate
; [00]: Link's coordinate along minor axis
; [01]: Link's coordinate along major axis
; [02]: a decreasing direction along the wall (left or up)
;
; Returns:
; Y: index of initial major coordinate of Wallmaster
; [04]: initial minor coordinate of Wallmaster
;
; Store the initial offset for this axis.
;
Wallmaster_CalcStartPosition:
    STA Wallmaster_ObjStep, X
    STY $03                     ; [03] holds the Link's minimum major coordinate.
    ; If Link is still (input dir = 0), then use distance $24, else $32.
    ;
    LDA #$24
    LDY ObjInputDir
    BEQ :+
    LDA #$32
:
    ; If Link is facing in the direction passed in (which decreases), then:
    ; 1. negate the distance
    ; 2. add 8 to the instruction offset to access
    ;    the opposite direction for the same wall
    ;
    LDY ObjDir
    CPY $02                     ; [02] reference decreasing direction
    BNE :+
    PHA
    LDA Wallmaster_ObjStep, X
    CLC
    ADC #$08
    STA Wallmaster_ObjStep, X
    PLA
    EOR #$FF
    CLC
    ADC #$01
:
    ; Add the distance and Link's minor coordinate to calculate
    ; Wallmaster's initial minor coordinate to store in [04].
    ; In general, the monster will be put in front of Link.
    ;
    CLC
    ADC $00                     ; [00] Link's minor coordinate
    STA $04                     ; [04] Wallmaster's initial minor coordinate
    ; By default, will return index 0 to choose the minimum value
    ; for Wallmaster's initial major coordinate. This will be returned,
    ; if Link is at the wall with a smaller major coordinate.
    ;
    LDY #$00
    ; If Link's major coordinate <> the minimum major coordinate, then
    ; he's on the farther wall. Add $10 to the instruction offset 
    ; to access the block for the other direction along the same axis,
    ; and increment the index for the Wallmaster's initial major coordinate.
    ;
    LDA $01
    CMP $03                     ; [03] Link's minimum major coordinate
    BEQ :+
    LDA Wallmaster_ObjStep, X
    CLC
    ADC #$10
    STA Wallmaster_ObjStep, X
    INY
:
    RTS

Wallmaster_PutSpritesBehindBgIfNeeded:
    LDY $00
    JSR Wallmaster_PutSpriteBehindBgIfNeeded
    LDY $01
Wallmaster_PutSpriteBehindBgIfNeeded:
    ; Loop twice, from 1 to 0, in order to check the left and right
    ; extents of the sprite (X and X+8).
    ;
    LDX #$01
@LoopExtent:
    ; If sprite X + extent >= $E9 or < $18, then
    ; add priority attribute to show this sprite behind the background.
    ;
    LDA Sprites+3, Y
    CLC
    ADC SpriteRelativeExtents, X
    CMP #$E9
    BCS @AddPriorityBit
    CMP #$18
    BCS :+
@AddPriorityBit:
    LDA Sprites+2, Y
    ORA #$20
    STA Sprites+2, Y
:
    DEX
    BPL @LoopExtent
    RTS

InitRope:
    ; Rope has $10 HP in quest 1, $40 HP in quest 2.
    ;
    LDA #$10
    STA ObjHP, X
    LDY CurSaveSlot
    LDA QuestNumbers, Y
    BEQ :+
    LDA #$40
    STA ObjHP, X
:
    JMP InitWalker

UpdateRope:
    ; Set the input direction to the facing direction.
    ;
    LDA ObjDir, X
    STA ObjInputDir, X
    PHA                         ; Save the original facing direction
    ; If we have the clock, or the monster is stunned, then don't move.
    ;
    LDA InvClock
    ORA ObjStunTimer, X
    BNE @CheckSpeed
    JSR Walker_Move
    ; Truncate the grid offset at $10.
    ;
    LDA ObjGridOffset, X
    AND #$0F
    BNE :+
    STA ObjGridOffset, X
:
    ; If not rushing (qspeed <> $60) and timer = 0, then
    ; set timer to a random value up to $3F, and turn to face
    ; an unblocked direction.
    ;
    LDA ObjQSpeedFrac, X
    CMP #$60
    BEQ @CheckSpeed
    LDA ObjTimer, X
    BNE @CheckSpeed
    LDA Random, X
    AND #$3F
    STA ObjTimer, X
    JSR _FaceUnblockedDir
@CheckSpeed:
    PLA                         ; Pop the original facing direction
    ; If the facing direction has changed, then set qspeed to $20 (slow).
    ;
    CMP ObjDir, X
    BEQ :+
    LDA #$20
    STA ObjQSpeedFrac, X
:
    ; If qspeed <> $20 or grid offset <> 0, then go draw.
    ;
    LDA ObjQSpeedFrac, X
    CMP #$20
    BNE @Animate
    LDA ObjGridOffset, X
    BNE @Animate
    ; If the absolute horizontal distance between Link and the monster >= 8,
    ; then go see if the vertical distance is smaller.
    ;
    LDA ObjX
    SEC
    SBC ObjX, X
    JSR Abs
    CMP #$08
    BCS @CheckVertical
    ; Face up.
    ;
    LDA #$08
    STA ObjDir, X
    ; But, if Link is down from the monster, then face down.
    ;
    LDA ObjY
    CMP ObjY, X
    BCC @Rush
@FlipDir:
    LSR ObjDir, X
@Rush:
    ; Make the rope rush (qspeed $60).
    ;
    LDA #$60
    STA ObjQSpeedFrac, X
@Animate:
    LDA #$0A                    ; Animation counter $A
    JSR Anim_AdvanceAnimCounterAndSetObjPosForSpriteDescriptor
    ; If facing left, then flip horizontally.
    ;
    LDA ObjDir, X
    AND #$02
    LSR
    STA $0F                     ; [0F] horizontal flipping
    LDA #$02                    ; Red sprite palette
    JSR Anim_SetSpriteDescriptorAttributes
    ; In the second quest, ropes always flash.
    ; So, set sprite attributes to all the cycled palette rows.
    ;
    LDY CurSaveSlot
    LDA QuestNumbers, Y
    BEQ @Draw
    LDA FrameCounter
    AND #$03
    JSR Anim_SetSpriteDescriptorAttributes
@Draw:
    ; The frame image is based on the movement frame.
    ;
    LDA ObjAnimFrame, X
    JSR DrawObjectNotMirrored
    JMP CheckMonsterCollisions

@CheckVertical:
    ; If the absolute vertical distance between Link and the monster >= 8,
    ; then go draw.
    ;
    LDA ObjY
    SEC
    SBC ObjY, X
    JSR Abs
    CMP #$08
    BCS @Animate
    ; Face left.
    ;
    LDA #$02
    STA ObjDir, X
    ; But, if Link is right of the monster, then face right.
    ; Either way, go increase speed and draw.
    ;
    LDA ObjX
    CMP ObjX, X
    BCS @FlipDir
    BCC @Rush
UpdateStalfos:
    LDA #$80                    ; Turn rate $80
    JSR UpdateCommonWanderer
    JSR CheckMonsterCollisions
    LDA #$08                    ; Animation counter 8
    JSR AnimateAndDrawCommonObject
    LDA #$20                    ; QSpeed $20
    STA $01                     ; [01] holds qspeed $20
    ; If in the first quest, return. Stalfos can't shoot in this quest.
    ;
    LDY CurSaveSlot
    LDA QuestNumbers, Y
    BEQ @Exit
    ; Second quest.
    ;
    ; If shoot timer = 0 and Random < $F8, then return.
    ;
    LDA ObjShootTimer, X
    BNE @PrepareToShoot
    LDA Random, X
    CMP #$F8
    BCC @Exit
@PrepareToShoot:
    LDA $01                     ; Save the qspeed.
    PHA
    ; If temporarily invincible, then go reset shoot timer.
    ;
    LDY #$00
    LDA ObjInvincibilityTimer, X
    BNE @SetShootTimer
    ; If shoot timer >= 1, then decrement and go set shoot timer.
    ;
    LDY ObjShootTimer, X
    DEY
    BPL @SetShootTimer
    ; If stalfos does not want to shoot, then go set the qspeed.
    ;
    LDA ObjWantsToShoot, X
    BEQ @SetSpeed
    ; Else not temporarily invincible, and shoot timer = 0,
    ; and wants to shoot.
    ;
    ; Set shoot timer to $30.
    ;
    LDY #$30
@SetShootTimer:
    TYA
    STA ObjShootTimer, X
    ; If shoot timer = 0, then we're not shooting.
    ; Go set the qspeed.
    ;
    BEQ @SetSpeed
    ; If shoot timer <> $10, or we have the magic clock, or stunned;
    ; then go reset qspeed.
    ;
    CPY #$10
    BNE @ZeroSpeed
    LDA InvClock
    ORA ObjStunTimer, X
    BNE @ZeroSpeed
    ; Try to shoot a sword shot.
    ;
    LDA #$57
    STA $00
    JSR _ShootIfWanted
    ; If failed, then go set the qspeed.
    ;
    BCC @CheckResult
    ; TODO:
    ; Else set timer to $80, and decrement [0437][X].
    ;
    LDA #$80
    STA ObjTimer, X
    DEC $0437, X
@CheckResult:
    ; We jump here if shooting failed. Jump again to set the qspeed.
    ;
    BCC @SetSpeed
    ; Shooting succeeded.
    ; Reset "wants to shoot" flag and the speed.
    ;
    LDA #$00
    STA ObjWantsToShoot, X
@ZeroSpeed:
    PLA                         ; Replace qspeed on the stack with 0.
    LDA #$00
    PHA
@SetSpeed:
    PLA                         ; Pop and set the qspeed (0 or the speed for stalfos).
    STA ObjQSpeedFrac, X
@Exit:
    RTS

InitMoldorm:
    ; Loop to make 10 moldrom segments, from 9 to 0, indexed by Y register.
    ; Object slots $A to 1 will be used.
    ;
    LDY #$09
:
    ; Start at position ($80, $70).
    ;
    LDA #$80
    STA a:ObjX+1, Y
    LDA #$70
    STA a:ObjY+1, Y
    ; Start with no direction, no deferred bounce direction,
    ; and ready to update.
    ;
    LDA #$00
    STA a:ObjDir+1, Y
    STA Moldorm_ObjBounceDir+1, Y
    STA ObjMetastate+1, Y
    STA ObjUninitialized+1, Y
    ; Copy object attributes from the first monster slot.
    ;
    LDA ObjAttr+1
    STA ObjAttr+1, Y
    ; Copy HP from the first monster slot.
    ;
    LDA ObjHP+1
    STA ObjHP+1, Y
    ; Start with flying speed $80, and in flying state 2.
    ;
    LDA #$80
    STA Flyer_ObjSpeed+1, Y
    LDA #$02
    STA Flyer_ObjFlyingState+1, Y
    LDA #$41                    ; All segments are considered Moldorm.
    STA ObjType+1, Y
    ; Bottom of the loop.
    ;
    DEY
    BPL :-
    ; Choose a random 8-way direction for the head segments
    ; in slots 4 and 9.
    ;
    LDA Random+5
    AND #$07
    TAY
    LDA Directions8, Y
    STA ObjDir+5
    STA Moldorm_ObjOldDir+5     ; Also store the current direction as the old direction.
    LDA Random+10
    AND #$07
    TAY
    LDA Directions8, Y
    STA ObjDir+10
    STA Moldorm_ObjOldDir+10    ; Also store the current direction as the old direction.
    ; Set minimum number of turns 1 for flying states.
    ;
    ; By setting this, the first time that a flight control routine
    ; (Flyer_Chase, Flyer_Wander) is called and returns;
    ; that flying state will immediately end, and object timer
    ; will be left 0: ready for moldorm to decide a flying state
    ; randomly and set timer to $10.
    ;
    LDA #$01
    STA Flyer_ObjTurns+5
    STA Flyer_ObjTurns+10
    LDA #$80                    ; The maximum speed for Moldorm is $80.
    STA FlyingMaxSpeedFrac
    LDA #$08                    ; TODO: Why 8 instead of 10?
    STA RoomObjCount
    RTS

InitAquamentus:
    ; Aquamentus is invincible to boomerang and fire.
    ;
    LDA #$E2
    STA ObjInvincibilityMask, X
    ; TODO: ?
    ;
    LDA #$10
    STA SampleRequest
    ; The monster goes at ($B0, $80).
    ;
    LDA #$B0
    STA ObjX, X
    LDA #$80
    STA ObjY, X
    RTS

InitDigdogger1:
    ; TODO: ?
    ;
    LDA #$40
    STA SampleRequest
    ; Set a random 8-way direction.
    ;
    LDA Random, X
    AND #$07
    TAY
    LDA Directions8, Y
    STA ObjDir, X
    ; Set low speed byte to $3F.
    ; This assumes that the high byte is 0 from when the room
    ; was reset; or will bet set during digdogger split-up.
    ;
    LDA #$3F
    STA Digdogger_ObjSpeedFrac, X
    ; Set low target speed byte to $80.
    ; This assumes that the high byte is 0 from when the room
    ; was reset; or will bet set during digdogger split-up.
    ;
    LDA #$80
    STA Digdogger_ObjTargetSpeedFrac, X
    ; Set child count of 3.
    ;
    LDA #$03
    STA ChildDigdoggerCount
    RTS

InitDigdogger2:
    JSR InitDigdogger1
    ; TODO:
    ; Change object type to $38 (Digdogger1).
    ;
    ; Probably to simplify a test.
    ;
    LDA #$38
    STA ObjType, X
    ; Set child count of 1.
    ;
    LDA #$01
    STA ChildDigdoggerCount
    RTS

InitDodongo:
    ; TODO: ?
    ;
    LDA #$20
    STA SampleRequest
    ; Randomly face left or right.
    ;
    LDY #$01
    LDA Random, X
    CMP #$80
    BCC :+
    INY
:
    STY ObjDir, X
    RTS

UpdateMoldorm:
    ; If facing direction = 0, return.
    ;
    LDA ObjDir, X
    BEQ @Exit
    ; If the magic clock is missing, then move around (using the flying mechanism).
    ;
    LDA InvClock
    BNE :+
    JSR ControlMoldormFlight
    JSR MoveFlyer
:
    ; Draw with sprite attributes: normal, red palette row
    ;
    LDA #$02
    STA $03
    LDA #$44                    ; Fireball tile
    JSR Anim_WriteSprite
    ; Check collisions, but never let them interfere with movement.
    ;
    LDA ObjDir, X
    PHA                         ; Save the direction
    LDA ObjTimer, X
    PHA                         ; Save the timer
    JSR CheckMonsterCollisions
    PLA                         ; Restore the timer
    STA ObjTimer, X
    PLA                         ; Restore the direction
    STA ObjDir, X
    ; If this segment is still alive, then return.
    ;
    LDA ObjMetastate, X
    BEQ @Exit
    ; This segment is dead. We'll swap the tail segment with this
    ; dead segment. This way, moldorm heads are always rooted
    ; in slots 5 and $A; and the segments are continguous.
    ;
    ; Start by setting the HP for this dead segment's slot to $20.
    ;
    ; Note that this is not a true swap, because the tail's HP
    ; might be less than $20.
    ;
    LDA #$20
    STA ObjHP, X
    JSR CheckBossHitReaction
    ; Look for the tail segment, starting from the low end
    ; of the chain that this dead segment belongs to.
    ;
    LDY #$FF
    CPX #$06
    BCC :+
    LDY #$04
:
    INY
    LDA ObjType+1, Y
    CMP #$41
    BNE :-
    ; I don't know why the object timer of the tail segment that will
    ; be made dead is set to $11. By setting its object type to $5D
    ; below, its metastate will become $10 -- dying/dead. From
    ; there, the object timer is set to 6.
    ;
    LDA #$11
    STA a:ObjTimer+1, Y
    ; Copy the invincibility timer, X, and Y from the original dead
    ; segment to the tail segment.
    ;
    LDA ObjInvincibilityTimer, X
    STA ObjInvincibilityTimer+1, Y
    LDA ObjX, X
    STA a:ObjX+1, Y
    LDA ObjY, X
    STA a:ObjY+1, Y
    ; If the tail segment found is also a head, then
    ; the last segment has died. Return.
    ;
    CPY #$04
    BEQ @Exit
    CPY #$09
    BEQ @Exit
    ; Else finish swapping the segments.
    ; Set the tail segment's type to the dead dummy object.
    ;
    LDA #$5D
    STA ObjType+1, Y
    ; Reset the metastate of the current segment, so that it comes
    ; back to life.
    ;
    JSR ResetObjMetastate
@Exit:
    RTS

ControlMoldormFlight:
    LDA Flyer_ObjFlyingState, X
    JSR TableJump
ControlMoldormFlight_JumpTable:
    .ADDR Moldorm_Chase
    .ADDR Moldorm_Chase
    .ADDR Moldorm_Chase
    .ADDR Moldorm_Wander

Moldorm_Chase:
    ; If the segment is not a head (slot 5 or $A), then return.
    ; Only the head controls the movement direction.
    ;
    CPX #$05
    BEQ :+
    CPX #$0A
    BNE L1156B_Exit
:
    ; Chase while flying, as usual.
    ;
    JSR Flyer_Chase
    ; If timer has not expired, then
    ; go see if it's time to propagate direction changes down the chain.
    ;
    LDA ObjTimer, X
    BNE Moldorm_PropagateDirs
Moldorm_ChangeFlyingState:
    ; Timer = 0. Choose a new flying state, and arm the timer.
    ;
    JSR Flyer_MoldormDecideState
    LDA #$10                    ; $10 screen frames
    STA ObjTimer, X
    ; If the next lower slot's direction <> 0, then
    ; go propagate direction changes down the chain.
    ;
    ; But you had to have propagated directions once for the
    ; next lower direction to be set. How does it happen?
    ;
    ; Within a flyer state, the flying routines turn the flyer
    ; and set the object timer to $10 several times. After any of
    ; those times will the test succeed.
    ;
    ; When a flying state ends, timer will be 0, triggering the code
    ; in this block to set the timer to $10, and try to propagate
    ; directions.
    ;
    ; But this is also the case the first time here.
    ;
    ; So, I believe that the point of this test is to delay moving
    ; the lower (not head) segments when starting out.
    ;
    LDA ObjDir-1, X
    BNE Moldorm_PropagateDirs
    RTS

Moldorm_Wander:
    ; If the segment is not a head (slot 5 or $A), then return.
    ; Only the head controls the movement direction.
    ;
    CPX #$05
    BEQ :+
    CPX #$0A
    BNE L1156B_Exit
:
    ; Turn randomly while flying, as usual.
    ;
    JSR Flyer_Wander
    ; After every turn, the common flyer routines set timer to $10.
    ; This can be used as a signal for moldorm to propagate
    ; direction changes down the chain.
    ;
    ; Between each turn, timer <> $10.
    ;
    ; At the end of the delay after the last turn, timer = 0.
    ; This is a signal that that flying state ended, and a new one
    ; must be chosen. Also, because a flying interval ended ($10 frames),
    ; we can propagate direction changes again; and start
    ; a new flying interval by setting timer to $10. This will make
    ; the next flying state delay that amount of time before turning
    ; the first time.
    ;
    ; Here and now, if timer has expired, then go decide a new flying state,
    ; arm the timer again, and shift directions down the chain.
    ;
    LDA ObjTimer, X
    BEQ Moldorm_ChangeFlyingState
Moldorm_PropagateDirs:
    ; If timer <> $10 (rearmed in this frame), then return.
    ;
    LDA ObjTimer, X
    CMP #$10
    BNE L1156B_Exit
    ; Timer = $10.
    ;
    ; If deferred bounce direction <> 0, then
    ; assign it to facing direction, and reset deferred bounce direction.
    ;
    LDA Moldorm_ObjBounceDir, X
    BEQ @SkipBounce
    STA ObjDir, X
    LDA #$00
    STA Moldorm_ObjBounceDir, X
@SkipBounce:
    ; Will loop 4 times, indexed by [00], once for each segment.
    ;
    LDA #$04
    STA $00
    ; Starting from the last slot of this moldorm chain (0 or 5):
    ;
    LDY #$00
    CPX #$05
    BEQ @Loop
    LDY #$05
@Loop:
    ; Copy old direction from a higher slot to the lower one;
    ; and to the lower one's facing direction.
    ;
    LDA Moldorm_ObjOldDir+2, Y
    STA Moldorm_ObjOldDir+1, Y
    STA a:ObjDir+1, Y
    ; Bottom of the loop.
    ; Increment segment index.
    ; Decrement loop counter.
    ;
    INY
    DEC $00
    BNE @Loop
    ; Copy current direction to old direction.
    ;
    LDA ObjDir, X
    STA Moldorm_ObjOldDir, X
L1156B_Exit:
    RTS

Flyer_MoldormDecideState:
    ; TODO:
    ; Why not call it Moldorm_DecideFlyingState? Same for others.
    ;
    ; If Random >= $40, go to flying state 2, else 3.
    ;
    ; Set up 8 turns.
    ;
    LDY #$02
    LDA Random, X
    CMP #$40
    BCS :+
    INY
:
    TYA
    STA Flyer_ObjFlyingState, X
    LDA #$08                    ; Set 8 turns for the next flying state.
    STA Flyer_ObjTurns, X
    RTS

DigdoggerCornerOffsetsX:
    .BYTE $00, $10, $00, $F0

DigdoggerCornerOffsetsY:
    .BYTE $00, $10, $F0, $10

; Params:
; Y: flute state
;
; If flute state = 2, go switch between big and little appearance.
;
L_Digdogger_AfterFlute:
    DEY
    BNE @SplitUp
    ; Flute state = 1.
    ;
    ; If this is a child digdogger, then go turn and move as usual.
    ;
    LDA Digdogger_ObjIsChild, X
    BNE L_Digdogger_Turn
    ; Set object timer to $40, and increase flute state to 2.
    ; Then go check collisions as a big digdogger.
    ;
    LDA #$40
    STA ObjTimer, X
    INC UsedFlute
    JMP CheckBigDigdoggerCollisions

@SplitUp:
    ; If the timer = 0, then skip the block below, and go split up.
    ;
    LDA ObjTimer, X
    BEQ @MakeChildren
    ; Every 8 frames, switch between behaving as a big and little digdogger.
    ;
    ; TODO:
    ; But is this possible, given the following?
    ; a. all object timers run concurrently
    ; b. all object updates are paused until the flute timer expires
    ; c. the flute timer lasts longer
    ;
; Unknown block
    .BYTE $29, $07, $D0, $0A, $BD, $6B, $04, $49
    .BYTE $01, $9D, $6B, $04, $F0, $76, $4C, $58
    .BYTE $96

@MakeChildren:
    ; Decrement flute state to 1.
    ;
    DEC UsedFlute
    ; Loop to make a number of child digdoggers.
    ;
    LDA ChildDigdoggerCount
    STA $00                     ; [00] is the loop counter
    STA RoomObjCount            ; Replace the object count with the number of children.
    TXA                         ; Save the current object index in X register.
    PHA
@LoopMakeChild:
    ; Initialize a child digdogger (type $18) in the next object slot.
    ;
    INX
    JSR InitDigdogger1
    LDA #$18
    STA ObjType, X
    ; Start with a target speed of $0100.
    ; The low byte is still 0 from when room data was reset.
    ;
    INC Digdogger_ObjTargetSpeedWhole, X
    ; Flag this a child digdogger.
    ;
    LDA #$01
    STA Digdogger_ObjIsChild, X
    ; The speed will increase.
    ;
    LDA #$00
    STA Digdogger_ObjSpeedFlag, X
    ; Copy the parent's coordinates to the child.
    ;
    LDA ObjX+1
    STA ObjX, X
    LDA ObjY+1
    STA ObjY, X
    ; Bottom of the loop.
    ; Decrement [00] until 0.
    ;
    DEC $00
    BNE @LoopMakeChild
    PLA                         ; Restore the current object index in X register.
    TAX
    JSR PlayBossDeathCry
    ; Destroy the big digdogger by resetting the object type.
    ;
    LDA #$00
    STA ObjType, X
    ; Don't let the digdogger disappear until the next frame when
    ; the children can draw themselves. Go draw the big digdogger
    ; as a little one.
    ;
    ; This will work, even though the object type was reset. No
    ; other object data has not been touched. Also, the code block
    ; we'll jump to temporarily sets the object type.
    ;
    JMP L_Digdogger_DrawAsLittle

L_Digdogger_TurnTowardLink:
    JSR TurnTowardsPlayer8
    JMP L_Digdogger_Move

UpdateDigdogger:
    ; If we have the magic clock, or the monster is stunned,
    ; then go check room boundaries and object collisions, and draw.
    ;
    LDA InvClock
    ORA ObjStunTimer, X
    BNE L_Digdogger_DrawAndCheckCollisions
    ; If the flute was used, then go start splitting up,
    ; or handling a child digdogger.
    ;
    LDY UsedFlute
    BNE L_Digdogger_AfterFlute
L_Digdogger_Turn:
    JSR Digdogger_ChangeSpeed
    ; If the object timer has expired, then set it to $10,
    ; and randomly choose to turn toward Link or randomly.
    ;
    LDA ObjTimer, X
    BNE L_Digdogger_Move
    LDA #$10
    STA ObjTimer, X
    LDA Random, X
    CMP #$80
    BCS L_Digdogger_TurnTowardLink
    JSR TurnRandomlyDir8
L_Digdogger_Move:
    JSR Digdogger_Move
L_Digdogger_DrawAndCheckCollisions:
    ; If this is a child, then finish updating this little digdogger.
    ;
    LDA Digdogger_ObjIsChild, X
    BEQ CheckBigDigdoggerCollisions
    JSR BoundFlyer
    JSR CheckMonsterCollisions
    JMP Digdogger_Draw

CheckBigDigdoggerCollisions:
    ; Save the original coordinates.
    ;
    LDA ObjX, X
    PHA
    LDA ObjY, X
    PHA
    ; Reset the index of the current part.
    ;
    LDA #$00
    STA Digdogger_ObjCurPart, X
@LoopCornerCollision:
    ; Digdogger is big, but room boundary checks and
    ; object collision checks assume a 16x16 monster or smaller.
    ; Therefore, we have to check these things four times,
    ; in different corners of the boss.
    ;
    ; Loop 4 times, from 0 to 3.
    ;
    LDY Digdogger_ObjCurPart, X
    ; Change the coordinates to one corner.
    ;
    LDA ObjX, X
    CLC
    ADC DigdoggerCornerOffsetsX, Y
    STA ObjX, X
    LDA ObjY, X
    CLC
    ADC DigdoggerCornerOffsetsY, Y
    STA ObjY, X
    ; Check the room boundary and object collisions in this temporary location.
    ;
    JSR BoundFlyer
    JSR CheckMonsterCollisions
    ; Increase the loop index, and loop again until it = 4.
    ;
    INC Digdogger_ObjCurPart, X
    LDA Digdogger_ObjCurPart, X
    CMP #$04
    BCC @LoopCornerCollision
    ; Restore the original coordinates.
    ;
    PLA
    STA ObjY, X
    PLA
    STA ObjX, X
    JSR Digdogger_Draw
L_Digdogger_DrawAsLittle:
    ; Save the original coordinates.
    ;
    LDA ObjX, X
    PHA
    LDA ObjY, X
    PHA
    ; Add 8 to Y and X.
    ;
    CLC
    ADC #$08
    STA ObjY, X
    LDA ObjX, X
    CLC
    ADC #$08
    STA ObjX, X
    ; Save the child flag and object type.
    ;
    LDA Digdogger_ObjIsChild, X
    PHA
    LDA ObjType, X
    PHA
    ; Change object type to $18 (Little Digdogger),
    ; and child flag to 1, in order to draw as a little digdogger.
    ;
    LDA #$18
    STA ObjType, X
    LDA #$01
    STA Digdogger_ObjIsChild, X
    JSR Digdogger_Draw
    ; Restore the child flag and object type.
    ;
    PLA
    STA ObjType, X
    PLA
    STA Digdogger_ObjIsChild, X
    ; Restore the original coordinates.
    ;
    PLA
    STA ObjY, X
    PLA
    STA ObjX, X
    RTS

Digdogger_ChangeSpeed:
    LDA Digdogger_ObjSpeedFlag, X
    JSR TableJump
Digdogger_ChangeSpeed_JumpTable:
    .ADDR Digdogger_SpeedUp
    .ADDR Digdogger_SlowDown

Digdogger_SpeedUp:
    ; Add 1 to 16-bit speed.
    ;
    INC Digdogger_ObjSpeedFrac, X
    BNE :+
    INC Digdogger_ObjSpeedWhole, X
:
    ; If the 16-bit speed has not reached the 16-bit target speed, then return.
    ;
    LDA Digdogger_ObjSpeedFrac, X
    CMP Digdogger_ObjTargetSpeedFrac, X
    BNE L116EA_Exit
    LDA Digdogger_ObjSpeedWhole, X
    CMP Digdogger_ObjTargetSpeedWhole, X
    BNE L116EA_Exit
    ; Set speed flag to 1 meaning decelerate.
    ;
    INC Digdogger_ObjSpeedFlag, X
    ; Go set target speed to $0040 (or $0140 if this is a child).
    ;
    LDA #$40
    JMP SetTargetSpeed

Digdogger_SlowDown:
    ; Subtract 1 from 16-bit speed.
    ;
    DEC Digdogger_ObjSpeedFrac, X
    LDA Digdogger_ObjSpeedFrac, X
    CMP #$FF
    BNE :+
; Unknown block
    .BYTE $DE, $2C, $04

:
    ; If the 16-bit speed has not reached the 16-bit target speed, then return.
    ;
    LDA Digdogger_ObjSpeedFrac, X
    CMP Digdogger_ObjTargetSpeedFrac, X
    BNE L116EA_Exit
    LDA Digdogger_ObjSpeedWhole, X
    CMP Digdogger_ObjTargetSpeedWhole, X
    BNE L116EA_Exit
    ; Set speed flag to 0 meaning accelerate.
    ;
    DEC Digdogger_ObjSpeedFlag, X
    ; Set target speed to $0080.
    ;
    LDA #$80
SetTargetSpeed:
    STA Digdogger_ObjTargetSpeedFrac, X
    LDA #$00
    STA Digdogger_ObjTargetSpeedWhole, X
    ; But if this is a child, then make the target speed $0180.
    ;
    LDA Digdogger_ObjIsChild, X
    BEQ L116EA_Exit
    INC Digdogger_ObjTargetSpeedWhole, X
L116EA_Exit:
    RTS

Digdogger_Move:
    ; This calculation is the same one used in Manhandla to
    ; manifest the fractional speed over several frames.
    ;
    ; To summarize, the formula is:
    ;
    ;   (SA=speed accumulator, SH=speed high, SL=speed low)
    ;
    ;   SA := SA + (SL AND $E0)
    ;   [03] := SH + carry
    ;
    ; See 04:A28E Manhandla_Move.
    ;
    LDA Digdogger_ObjSpeedFrac, X
    AND #$E0
    CLC                         ; Add the low speed byte to speed accumulator.
    ADC $0412, X
    STA $0412, X
    ; Assign (high speed byte + carry) to [03].
    ;
    LDA Digdogger_ObjSpeedWhole, X
    ADC #$00
    STA $03
    ; Change coordinates by the speed amount/offset in [03]
    ; according to the direction.
    ;
    ; Start with a mask of $A1 in [02]:
    ; - low nibble represents the right direction
    ; - high nibble is used to set or clear carry as we go along
    ;
    LDA #$A1
    STA $02
    ; If direction has a right component (1), then add offset to X coordinate.
    ;
    LDA ObjDir, X
    BIT $02
    BEQ @Left
    LDA ObjX, X
    CLC
    ADC $03
    STA ObjX, X
@Left:
    ; If direction has a left component (2), then subtract offset from X coordinate.
    ;
    LDA ObjDir, X
    ASL $02                     ; Bit 7 of mask $A1 sets Carry now.
    BIT $02
    BEQ @Down
    LDA ObjX, X
    SBC $03
    STA ObjX, X
@Down:
    ; If direction has a down component (4), then add offset to Y coordinate.
    ;
    LDA ObjDir, X
    ASL $02                     ; Bit 6 of mask $A1 clears Carry now.
    BIT $02
    BEQ @Up
    LDA ObjY, X
    ADC $03
    STA ObjY, X
@Up:
    ; If direction has an up component (8), then subtract offset from Y coordinate.
    ;
    LDA ObjDir, X
    ASL $02                     ; Bit 5 of mask $A1 sets Carry now.
    BIT $02
    BEQ @End
    LDA ObjY, X
    SBC $03
    STA ObjY, X
@End:
    JMP Anim_FetchObjPosForSpriteDescriptor

DigdoggerSpriteOffsetsX:
    .BYTE $00, $10, $00, $10

DigdoggerSpriteOffsetsY:
    .BYTE $00, $00, $10, $10

DigdoggerSpriteAttrs:
    .BYTE $03, $03, $83, $83

Digdogger_Draw:
    LDA #$06                    ; 6 animation frames a screen frame
    JSR Anim_AdvanceAnimCounterAndSetObjPosForSpriteDescriptor
    ; If this is a child digdogger, then go draw it.
    ;
    LDA Digdogger_ObjIsChild, X
    BNE @DrawLittle
    ; For each part of the big digdogger, from 0 to 3,
    ; indexed by Y register:
    ;
    LDY #$00
@LoopPart:
    ; Store in [00] the X coordinate offset for the current corner.
    ;
    LDA ObjX, X
    CLC
    ADC DigdoggerSpriteOffsetsX, Y
    STA $00
    ; Store in [01] the Y coordinate offset for the current corner.
    ;
    LDA ObjY, X
    CLC
    ADC DigdoggerSpriteOffsetsY, Y
    STA $01
    ; Load and set the sprite attributes for this part.
    ; Vertical flipping is set appropriately here.
    ;
    LDA DigdoggerSpriteAttrs, Y
    JSR Anim_SetSpriteDescriptorAttributes
    TYA                         ; Save the loop index.
    PHA
    ; Parts at odd indexes are flipped horizontally.
    ;
    AND #$01
    STA $0F
    LDA #$00                    ; There's only 1 frame image.
    JSR DrawObjectNotMirrored
    PLA                         ; Restore the loop index.
    TAY
    ; Bottom of the loop.
    ; Increment Y register until = 4.
    ;
    INY
    CPY #$04
    BNE @LoopPart
    RTS

@DrawLittle:
    ; A little digdogger is easy to draw.
    ;
    JSR Anim_SetSpriteDescriptorLevelPaletteRow
    LDA ObjAnimFrame, X
    JMP DrawObjectMirrored

UpdateAquamentus:
    LDA InvClock
    BNE :+
    JSR Aquamentus_Move
    JSR Aquamentus_Shoot
:
    JSR Aquamentus_Draw
    JSR CheckMonsterCollisions
    JSR PlayBossHitCryIfNeeded
CheckBossHitReaction:
    JSR PlayBossDeathCryIfNeeded
    JMP ResetShoveInfo

AquamentusSpeeds:
    .BYTE $01, $FF

Aquamentus_Move:
    ; The monster uses grid offset to mean distance remaining.
    ; If there's more distance to cover, then go move.
    ;
    LDA ObjGridOffset, X
    BNE @Move
    ; Set a random distance to move of 7 or $F pixels.
    ;
    LDA Random, X
    PHA
    AND #$0F
    ORA #$07
    STA ObjGridOffset, X
    PLA
    ; Randomly head left or right.
    ;
    AND #$01
    TAY
    INY
    STY ObjDir, X
    RTS

@Move:
    ; 7 of 8 screen frames return without moving.
    ;
    LDA FrameCounter
    AND #$07
    BNE @Exit
    ; If the boss crossed the left limit, then
    ; put it back at the left limit ($88), and face right.
    ;
    LDA ObjX, X
    CMP #$88
    BCS @CheckRightLimit
    LDA #$88
    STA ObjX, X
    LDA #$01
    STA ObjDir, X
    BNE @SetRemainingDistance
@CheckRightLimit:
    ; If the boss crossed the right limit, then
    ; put it back at the right limit ($C7), and face left.
    ;
    CMP #$C8
    BCC @ApplySpeed
    LDA #$C7
    STA ObjX, X
    LDA #$02
    STA ObjDir, X
@SetRemainingDistance:
    ; Set the distance remaining to 7 pixels.
    ;
    LDA #$07
    STA ObjGridOffset, X
@ApplySpeed:
    ; Use (direction - 1) to index the speeds.
    ; This yields 0 for right, 1 for left.
    ;
    LDY ObjDir, X
    DEY
    ; Add the speed to the X coordinate.
    ;
    LDA ObjX, X
    CLC
    ADC AquamentusSpeeds, Y
    STA ObjX, X
    ; Decrement the distance remaining.
    ;
    DEC ObjGridOffset, X
@Exit:
    RTS

Aquamentus_Shoot:
    ; If the object timer <> 0, then
    ; go modify fireballs that might still be flying.
    ;
    LDA ObjTimer, X
    BNE @SpreadOutFireballs
    ; The boss's object timer has expired. Time to shoot fireballs.
    ;
    ; Set the timer to a random time, at least $70 frames.
    ;
    LDA Random, X
    ORA #$70
    STA ObjTimer, X
    ; Shoot the middle fireball. Its vertical displacement is 0.
    ;
    JSR ShootFireball55
    LDA #$00
    STA Aquamentus_ObjFireballOffset, Y
    ; Shoot the lower fireball. Its vertical displacement is 1.
    ;
    JSR ShootFireball55
    LDA #$01
    STA Aquamentus_ObjFireballOffset, Y
    ; Shoot the upper fireball. Its vertical displacement is -1.
    ;
    JSR ShootFireball55
    LDA #$FF
    STA Aquamentus_ObjFireballOffset, Y
    RTS

@SpreadOutFireballs:
    ; Make the fireballs spread out.
    ;
    ; For each object slot from $B to 1:
    ;
    LDX #$0B
@LoopObject:
    ; If type <> $55, loop again.
    ;
    LDA ObjType, X
    CMP #$55
    BNE @NextLoopObject
    ; Every other screen frame, loop again.
    ;
    LDA FrameCounter
    LSR
    BCS @NextLoopObject
    ; Add the displacement for this fireball to its Y coordinate.
    ;
    LDA ObjY, X
    CLC
    ADC Aquamentus_ObjFireballOffset, X
    STA ObjY, X
@NextLoopObject:
    ; Bottom of the loop.
    ;
    DEX
    BPL @LoopObject
    ; Restore the boss's slot number.
    ;
    LDX CurObjIndex
    RTS

; Params:
; X: object index
;
ShootFireball55:
    LDA #$55
    JMP ShootFireball

AquamentusTiles:
    .BYTE $CC, $C4, $C8, $C2, $C6, $CA, $CC, $C4
    .BYTE $C8, $CE, $D0, $D2

AquamentusSpriteOffsetsY:
    .BYTE $00, $00, $00, $10, $10, $10

AquamentusSpriteOffsetsX:
    .BYTE $00, $08, $10, $00, $08, $10

Aquamentus_Draw:
    ; Every $10 screen frames, switch animation frames.
    ; Each frame has 6 tiles (representing the top of 6 sprites).
    ; The last tile of frame 0 is at index 5.
    ; The last tile of frame 1 is at index $B.
    ;
    LDY #$05
    LDA FrameCounter
    AND #$10
    BNE :+
    LDY #$0B
:
    STY $0A                     ; [0A] holds the current tile index in frame tile list.
    ; For each sprite, from 5 to 0, indexed by [0B]:
    ;
    LDA #$05
    STA $0B
@LoopSprite:
    LDY $0B                     ; Get current loop index from [0B].
    ; Add the current sprite's offset to the boss's X coordinate.
    ; Store it in [00].
    ;
    LDA ObjX, X
    CLC
    ADC AquamentusSpriteOffsetsX, Y
    STA $00
    ; Add the current sprite's offset to the boss's Y coordinate.
    ; Store it in [01].
    ;
    LDA ObjY, X
    CLC
    ADC AquamentusSpriteOffsetsY, Y
    STA $01
    ; Calculate sprite attributes:
    ; [03] := (invincibility timer AND 3) XOR 3
    ;
    ; If the boss is temporarily invincible, then
    ; this makes it flash by cycling all the palette rows.
    ;
    ; Otherwise invincibility timer = 0. So [03] becomes 3:
    ; the attribute value for a normal sprite with palette row 7 (level).
    ;
    LDA ObjInvincibilityTimer, X
    AND #$03
    EOR #$03
    STA $03
    LDY $0A
    ; Look up the tile for this sprite.
    ; If it's not the first one (face), then go write the sprite record.
    ;
    LDA AquamentusTiles, Y
    CMP AquamentusTiles
    BNE @WriteSprite
    ; Else it's the first one (the face tile).
    ; For timer >= $20, use it as is ($CC). Otherwise, use tile $C0.
    ;
    ; $CC/CD shows the closed mouth face.
    ; $C0/C1 shows the open mouth face.
    ;
    LDY ObjTimer, X
    CPY #$20
    BCS @WriteSprite
    LDA #$C0                    ; Open mouth tile
@WriteSprite:
    JSR WriteBossSprite
    ; Bottom of the loop.
    ; Decrement tile index and loop index.
    ;
    DEC $0A
    DEC $0B
    BPL @LoopSprite
    RTS

; Params:
; A: tile
; [00]: X
; [01]: Y
; [03]: sprite attributes
;
; Save the tile
WriteBossSprite:
    PHA
    LDY RollingSpriteIndex
    LDA SpriteOffsets, Y
    TAY
    PLA                         ; Restore the tile
    STA Sprites+1, Y
    LDA $00
    STA Sprites+3, Y
    LDA $01
    JMP Anim_EndWriteSprite

UpdateDodongo:
    JSR UpdateDodongoState
    JSR Dodongo_CheckCollisions
    JSR Dodongo_CheckBombHit
    JMP Dodongo_Draw

; Unknown block
    .BYTE $10, $F0, $10, $FF, $F0

DodongoBloatedWaitTimes:
    .BYTE $20, $40, $40

UpdateDodongoState:
    LDA ObjState, X
    JSR TableJump
UpdateDodongoState_JumpTable:
    .ADDR UpdateDodongoState0_Move
    .ADDR UpdateDodongoState1_Bloated
    .ADDR UpdateDodongoState2_Stunned

UpdateDodongoState0_Move:
    ; If facing left, then push X offset 0 on the stack.
    ; Else push X offset -$10, and add $10 to X coordinate.
    ;
    ; We would like to use one set of coordinates only.
    ; But movement would break down, if we did; because
    ; Dodongo is so long.
    ;
    ; So, when not facing left, we temporarily shift the
    ; X coordinate to be closer to the other side of the monster.
    ;
    LDY #$00
    LDA ObjDir, X
    AND #$0D
    BEQ @Move
    LDA ObjX, X
    CLC
    ADC #$10
    STA ObjX, X
    LDY #$F0
@Move:
    TYA
    PHA
    LDA #$20                    ; Turn rate $20
    STA ObjTurnRate, X
    JSR Wanderer_TargetPlayer
    ; Pop the offset and add it to the X coordinate.
    ;
    ; This brings the X coordinate back to the unique value
    ; that represents the position.
    ;
    PLA
    CLC
    ADC ObjX, X
    STA ObjX, X
    ; If X coordinate < $20, then face right.
    ;
    CMP #$20
    BCS :+
    LDA #$01
    STA ObjDir, X
:
    RTS

UpdateDodongoState2_Stunned:
    ; Take action depending on the value of stun timer:
    ; 0:     set stun timer to $20 
    ; 1:     go back to state 0
    ; other: return
    ;
    LDY a:ObjStunTimer, X
    DEY
    BEQ UpdateDodongoState1_Bloated_Sub_End
    BPL :+
    LDA #$20
    STA a:ObjStunTimer, X
:
    RTS

UpdateDodongoState1_Bloated:
    LDA Dodongo_ObjBloatedSubstate, X
    JSR TableJump
UpdateDodongoState1_Bloated_JumpTable:
    .ADDR UpdateDodongoState1_Bloated_Sub_Wait
    .ADDR UpdateDodongoState1_Bloated_Sub_Wait
    .ADDR UpdateDodongoState1_Bloated_Sub_Wait
    .ADDR UpdateDodongoState1_Bloated_Sub_Die
    .ADDR UpdateDodongoState1_Bloated_Sub_End

UpdateDodongoState1_Bloated_Sub_Wait:
    ; Bloated timer =>
    ; 0:     fall thru to set a new timer and check bomb hits
    ; 1:     go advance the substate
    ; other: go decrement Bloated timer
    ;
    LDY Dodongo_ObjBloatedTimer, X
    DEY
    BEQ @AdvanceSubstate
    BPL L_Dodongo_DecrementBloatedTimer
    ; Set the bloated timer according to the substate.
    ;
    LDY Dodongo_ObjBloatedSubstate, X
    LDA DodongoBloatedWaitTimes, Y
    STA Dodongo_ObjBloatedTimer, X
    ; If substate <> 0, go decrement bloated timer.
    ;
    CPY #$00
    BNE L_Dodongo_DecrementBloatedTimer
    ; Deactivate the bomb in the first bomb slot ($10).
    ;
    LDY #$10
    LDA #$00
    STA a:ObjState, Y
    ; Increment the number of bomb hits.
    ;
    LDA Dodongo_ObjBombHits, X
    CLC
    ADC #$01
    STA Dodongo_ObjBombHits, X
    JMP L_Dodongo_DecrementBloatedTimer

@AdvanceSubstate:
    ; Advance the substate.
    ;
    INC Dodongo_ObjBloatedSubstate, X
    ; If new bloated substate < 2, then go decrement the bloated timer.
    ;
    LDA Dodongo_ObjBloatedSubstate, X
    CMP #$02
    BCC L_Dodongo_DecrementBloatedTimer
    ; New bloated substate >= 2.
    ;
    ; If bomb hits < 2, then set bloated substate 4,
    ; which will transition to state 0 (moving).
    ;
    ; Note that if the bomb hits >= 2, then:
    ; - If new substate = 2, then substate 2 will wait,
    ;   and then transition to substate 3.
    ; - If new substate = 3, then the next frame the monster will die.
    ;
    LDY Dodongo_ObjBombHits, X
    CPY #$02
    BCS L_Dodongo_DecrementBloatedTimer
    LDA #$04
    STA Dodongo_ObjBloatedSubstate, X
L_Dodongo_DecrementBloatedTimer:
    ; Either way, decrement the bloated timer.
    ;
    DEC Dodongo_ObjBloatedTimer, X
    RTS

UpdateDodongoState1_Bloated_Sub_Die:
    JSR UpdateDeadDummy
    JSR PlayBossDeathCry
UpdateDodongoState1_Bloated_Sub_End:
    JSR ResetObjState           ; Go to state 0.
    STA Dodongo_ObjBloatedSubstate, X    ; Reset bloated substate.
    RTS

Dodongo_CheckCollisions:
    ; Check for collisions using a regular monster size.
    ;
    JSR Dodongo_CheckCollisionsStandardSize
    ; If harmed, then go die.
    ;
    LDA ObjInvincibilityTimer, X
    BNE @Die
    ; If facing vertically, then return.
    ;
    LDA ObjDir, X
    CMP #$04
    BCS L11989_Exit
    ; Save the X coordinate.
    ; Then add $10 to check the right-hand side.
    ;
    LDA ObjX, X
    PHA
    CLC
    ADC #$10
    STA ObjX, X
    JSR Dodongo_CheckCollisionsStandardSize
    ; Restore the X coordinate.
    ;
    PLA
    STA ObjX, X
    ; If not harmed, then return.
    ;
    LDA ObjInvincibilityTimer, X
    BEQ L11989_Exit
@Die:
    JSR UpdateDodongoState1_Bloated_Sub_Die
    ; Drop a bomb from this fight.
    ;
    LDA #$0A
    STA HelpDropCount
    STA HelpDropValue
L11989_Exit:
    RTS

Dodongo_CheckCollisionsStandardSize:
    LDA #$FF
    STA ObjInvincibilityMask, X
    JSR CheckMonsterCollisions
    ; If state <> 2 (stunned), then return.
    ;
    LDA ObjState, X
    CMP #$02
    BNE L11989_Exit
    ; Take out the bit for the sword in the invincibility mask.
    ; Check for collision with Link's sword.
    ;
    LDA #$FE
    STA ObjInvincibilityMask, X
    JSR GetObjectMiddle
    LDY #$0D
    JMP CheckMonsterSwordCollision

DodongoMouthNegativeLimits0:
    .BYTE $F0, $00, $F8, $FF, $F8

DodongoMouthPositiveLimits0:
    .BYTE $00, $10, $08, $FF, $08

DodongoMouthNegativeLimits1:
    .BYTE $FC, $FC, $F0, $FF, $00

DodongoMouthPositiveLimits1:
    .BYTE $04, $04, $00, $FF, $10

Dodongo_CheckBombHit:
    ; If state <> 0 (not moving), then return.
    ;
    LDA ObjState, X
    BNE @Exit
    ; If facing vertically, then store (X + 8) in [00].
    ; Else store (X + $10).
    ;
    LDA ObjX, X
    CLC
    ADC #$08
    LDY ObjDir, X
    CPY #$04
    BCS :+
    ADC #$08
:
    STA $00
    ; Store (Y + 8) in [01].
    ;
    LDA ObjY, X
    ADC #$08
    STA $01
    ; Only check the first bomb slot ($10).
    ;
    ; Store the bomb's (X + 8) in [02].
    ;
    LDY #$10
    LDA a:ObjX, Y
    ADC #$08
    STA $02
    ; Store the bomb's (Y + 8) in [03].
    ;
    LDA a:ObjY, Y
    ADC #$08
    STA $03
    ; But, if there's no bomb, then return.
    ;
    LDA a:ObjState, Y
    BEQ @Exit
    ; If the bomb has not exploded (state $12), then
    ; go see if Dodongo will eat it.
    ;
    CMP #$12
    BEQ Dodongo_TryEatBomb
    ; If the object in the slot is actually a fire, then return.
    ;
    CMP #$20
    BCS @Exit
    ; The bomb already blew up.
    ; If the dust cloud is in range of the monster,
    ; then set stunned state (2).
    ;
    LDY #$00
    JSR Dodongo_IsBombInRange
    BNE @Exit
    LDA #$02
    STA ObjState, X
@Exit:
    RTS

Dodongo_TryEatBomb:
    ; Try to eat the bomb.
    ;
    ; If the bomb is not in range of the monster, then return.
    ;
    ; This is a coarse test, to see if the bomb is over any part of the monster.
    ;
    LDY #$01
    JSR Dodongo_IsBombInRange
    BNE @Exit
    ; Will loop from 1 to 0, indexed by [00].
    ;
    LDA #$01
    STA $00
    ; Shift facing direction right 1 to make an index. Value 3 is unused.
    ;
    LDA ObjDir, X
    LSR
    TAY
    ; Now we have to see if it's near the mouth. But the mouth
    ; position depends on the orientation of the monster.
    ;
    ; Start with the horizontal distance.
    ;
    LDA $04
@LoopLimit:
    ; Look up the limits for the given direction.
    ;
    ; If the distance from the bomb < negative limit,
    ; or >= positive limit, then return.
    ;
    ; Note that these are simple signed comparisons that work,
    ; because the operands are in a small range.
    ;
    CMP DodongoMouthNegativeLimits0, Y
    BMI @Exit
    CMP DodongoMouthPositiveLimits0, Y
    BPL @Exit
    ; Add $A to the index to look into the second set for vertical limits.
    ;
    TYA
    CLC
    ADC #$0A
    TAY
    ; Bottom of the loop.
    ;
    ; Load the vertical distance for the next iteration.
    ; Decrement loop counter.
    ;
    LDA $05
    DEC $00
    BPL @LoopLimit
    ; If we get here, then the bomb was within range of the mouth.
    ; Go to state 1 (bloated).
    ;
    INC ObjState, X
    ; Deactivate the bomb, and reset the bloated substate.
    ;
    LDY #$10
    LDA #$00
    STA a:ObjState, Y
    STA Dodongo_ObjBloatedSubstate, X
@Exit:
    RTS

DodongoBombPositiveLimits:
    .BYTE $0C, $11

DodongoBombNegativeLimits:
    .BYTE $F4, $F0

; Params:
; Y: limit index (0 for dust cloud, 1 for the bomb)
; [00]: monster hotspot X
; [01]: monster hotspot Y
; [02]: bomb hotspot X
; [03]: bomb hotspot Y
;
; Returns:
; A: 0 if the bomb is in range of the monster
; Z: 1 if the bomb is in range of the monster
; [04]: horizontal distance
; [05]: vertical distance
;
; Store the positive limit in [06], and the negative one in [07].
;
Dodongo_IsBombInRange:
    LDA DodongoBombPositiveLimits, Y
    STA $06
    LDA DodongoBombNegativeLimits, Y
    STA $07
    ; Set [08] to 3. It will be shifted right once for each axis that
    ; the bomb is near enough the monster.
    ;
    LDA #$03
    STA $08
    ; For each coordinate (Y/X), from 1 to 0, indexed by Y register:
    ;
    LDY #$01
@LoopAxis:
    ; Subtract the bomb's coordinate from the boss's,
    ; The loop index determines the coordinate.
    ;
    LDA $0000, Y
    SEC
    SBC $0002, Y
    ; If the distance >= positive offset, or < negative offset;
    ; then loop again.
    ;
    CMP $06
    BPL @NextLoopAxis
    CMP $07                     ; [07] negative offset
    BMI @NextLoopAxis
    ; The distance is close enough in this axis.
    ;
    ; Store the distance in this axis in [05] or [04],
    ; depending on the loop index.
    ;
    STA $0004, Y
    ; Shift [08] right, because we're in range in this axis.
    ;
    LSR $08
@NextLoopAxis:
    DEY
    BPL @LoopAxis
    ; If close enough in both axes, then [08] will be 0.
    ;
    LDA $08
    RTS

DodongoFrameImages:
    ; Two sets of frame image numbers: 1 set for each animation frame.
    ; Each set contains 5 frame image numbers, indexed by direction.
    ;
    ; But these are not typical direction indexes. Instead a
    ; 5-way index is used.
    ; A direction shifted right once becomes a 5-way index.
    ; The fourth element is unused.
    ;
    .BYTE $00, $01, $06, $FF, $08, $02, $03, $06
    .BYTE $FF, $08

DodongoFrameHFlips:
    .BYTE $00, $40, $00, $FF, $00, $00, $40, $40
    .BYTE $FF, $40

DodongoFrameImagesBloated:
    .BYTE $04, $05, $07, $FF, $09, $04, $05, $07
    .BYTE $FF, $09

DodongoFrameHFlipsBloated:
    .BYTE $00, $40, $00, $FF, $00, $00, $40, $00
    .BYTE $FF, $00

Dodongo_Draw:
    JSR Anim_SetSpriteDescriptorLevelPaletteRow
    ; Make a 5-way direction index out of the facing direction
    ; by shifting right once, and store it in [00].
    ;
    LDA ObjDir, X
    LSR
    STA $00
    ; If state = 0, go handle animating the two frames of this state.
    ;
    LDY ObjState, X
    BEQ @DrawWalkingFast
    ; If state > 1, then the monster is stunned (state 2).
    ; So, go switch frames every $20 screen frames.
    ;
    LDA #$20
    DEY
    BNE @DrawWalking
    ; State = 1. Bloated.
    ;
    ; In substate 0, go animate as usual for walking.
    ;
    LDY Dodongo_ObjBloatedSubstate, X
    BEQ @DrawWalkingFast
    ; If in bloated substates 2 or 3 (last wait or die), then
    ; go fade the boss; so that some frames are not drawn.
    ;
    CPY #$02
    BEQ @DrawFaded
    CPY #$03
    BEQ @DrawFaded
    ; State 1, substate 1
    ;
    ; Add $14 to the frame image index to index into the bloated
    ; frame images and H-flips.
    ;
    LDA $00
    CLC
    ADC #$14
    TAY
    JMP @PrepareToDraw

@DrawFaded:
    ; In bloated substates 2 and 3:
    ; Every two screen frames, don't draw for two frames. Return.
    ;
    LDA FrameCounter
    AND #$02
    BEQ L11B00_Exit
    LDY $00
    JMP @PrepareToDraw

@DrawWalkingFast:
    ; Every 8 screen frames, switch between 2 animation frames.
    ;
    LDA #$08
@DrawWalking:
    LDY $00
    AND FrameCounter
    BEQ @PrepareToDraw
    ; For animation frame 1, add 5 to the index in Y register,
    ; in order to index into the second set of frame image numbers.
    ;
    TYA
    CLC
    ADC #$05
    TAY
@PrepareToDraw:
    ; Start preparing sprites.
    ;
    JSR Anim_FetchObjPosForSpriteDescriptor
    TYA                         ; Save the frame image index (not frame image number).
    PHA
    ; Get the horizontal flipping and frame image number for this frame image.
    ;
    LDA DodongoFrameHFlips, Y
    STA $0F                     ; [0F] horizontal flipping
    LDA DodongoFrameImages, Y
    ; Frame image numbers 7 and 9 are vertical bloated frame images.
    ; They are drawn mirrored.
    ;
    CMP #$07
    BEQ :+
    CMP #$09
    BNE @DrawLeftSide
:
    JSR DrawObjectMirrored
    JMP @DrawRightSide

@DrawLeftSide:
    ; No other frame images are mirrored.
    ;
    JSR DrawObjectNotMirrored
@DrawRightSide:
    PLA                         ; Restore the frame image index
    TAY
    ; If facing vertically, then return. There's no other side to draw.
    ;
    LDA ObjDir, X
    AND #$03
    BEQ L11B00_Exit
    ; Else draw the right side.
    ;
    ; Keep the Y coordinate in [01].
    ; But, store (X + $10) in [00].
    ;
    LDA ObjX, X
    CLC
    ADC #$10
    STA $00
    JSR Anim_SetSpriteDescriptorLevelPaletteRow
    ; XOR'ing the low bit swaps the left and right frame numbers.
    ;
    ; So, if we had animation frame 1, direction left:
    ; - 5-way direction index = 1 (2 >> 1)
    ; - frame image index = 6 (1 + 5)
    ;   (dodongo/walk/right/right half/anim frame 1)
    ; - frame number = 3 (look up element 6 in frame image array)
    ; - horizontal flip = true (loop up element 6 in H-flip array)
    ;
    ; So, 3 would have been the frame number used above for
    ; the left side.
    ;
    ; Here, the frame number is 2 (3 XOR 1), meaning
    ; (dodongo/walk/right/left half/anim frame 1). The horizontal
    ; flipping flag is unchanged. So, this left half frame is shown correctly
    ; on the right.
    ;
    LDA DodongoFrameImages, Y
    EOR #$01
    JMP DrawObjectNotMirrored

; Returns:
; A: 3
; [04]: left sprite attributes
; [05]: right sprite attributes
;
Anim_SetSpriteDescriptorLevelPaletteRow:
    LDA #$03
    JSR Anim_SetSpriteDescriptorAttributes
L11B00_Exit:
    RTS

; Unknown block
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF

InitDarknut:
    LDA #$F6                    ; Invincible to everything but sword and bomb.
    STA ObjInvincibilityMask, X
    ; If the darknut is red, then move at q-speed $20 (0.5 pixels a frame).
    ;
    LDA #$20
    LDY ObjType, X
    CPY #$0B
    BEQ :+
    ; Else move a blue darknut at q-speed $28 (0.625 pixels a frame).
    ;
    LDA #$28
:
    STA ObjQSpeedFrac, X
    JMP InitWalker

UpdateGibdo:
    LDA #$80                    ; Turn rate $80
    JSR UpdateCommonWanderer
    JSR CheckMonsterCollisions
    LDA #$08                    ; 8 screen frames an animation frame
    JSR Anim_AdvanceAnimCounterAndSetObjPosForSpriteDescriptor
    JSR Anim_SetObjHFlipForSpriteDescriptor
    LDA #$00                    ; Frame image 0
    JMP DrawObjectNotMirrored

UpdateDarknut:
    LDA #$80                    ; Turn rate $80
    JSR UpdateCommonWanderer
    JSR CheckMonsterCollisions
    ; Darknuts are never stunned.
    ;
    LDA #$00
    STA ObjStunTimer, X
    LDA #$08                    ; 8 screen frames an animation frame
    JSR Anim_AdvanceAnimCounterAndSetObjPosForSpriteDescriptor
    ; If facing left, then enable horizontal flipping.
    ;
    LDA ObjDir, X
    CMP #$02
    BNE :+
    INC $0F
:
    ; Shift right 2, yielding: 2 up, 1 down, 0 horizontal
    ; This is the base frame image.
    ;
    LSR
    LSR
    ; If movement frame = 1, add 3 to frame image to access
    ; the second animation frame's images.
    ;
    LDY ObjAnimFrame, X
    BEQ :+
    CLC
    ADC #$03
    ; Also if movement frame = 1, and facing up, then flip horizontally.
    ;
    ; Down has two frame images, but up only has one. By flipping
    ; horizontally, you get two frame images.
    ;
    LDY ObjDir, X
    CPY #$08
    BNE :+
    INC $0F
:
    JSR DrawObjectNotMirrored
    RTS

PolsVoiceWalkSpeedsX:
    .BYTE $01, $FF, $00, $00, $01, $FF, $00, $00
    .BYTE $01, $FF

PolsVoiceWalkSpeedsY:
    .BYTE $00, $00, $00, $01, $01, $01, $00, $FF
    .BYTE $FF, $FF

PolsVoiceInitialJumpSpeeds:
    .BYTE $FD, $FD, $FF, $FF, $FF, $FF, $FF, $FC

PolsVoiceDestinationYOffsets:
    .BYTE $00, $00, $20, $20, $20, $20, $20, $E0

PolsVoiceDirections:
    .BYTE $01, $02, $04, $08

UpdatePolsVoice:
    CPX #$01
    BNE :+
:
    ; If we have the magic clock, or is stunned, then
    ; go draw and check collisions.
    ;
    LDA InvClock
    ORA ObjStunTimer, X
    BNE @DrawAndCheckCollisions
    ; Every odd screen frame, go straight to drawing
    ; and checking collisions.
    ;
    LDA FrameCounter
    LSR
    BCS L_PolsVoice_DrawAndCheckCollisions
    ; Otherwise move horizontally.
    ;
    JSR PolsVoice_MoveX
    ; If state <> 0, then the monster is jumping.
    ; Go handle vertical movement.
    ;
    LDA ObjState, X
    BEQ @State0
    JSR UpdatePolsVoiceState1_Jumping
    JMP @CheckWalkability

@State0:
    ; State 0. Walking.
    ;
    ; If grid offset = 0, then no more distance to cover.
    ; So, go change to state 1 -- jumping.
    ;
    LDA ObjRemDistance, X
    BEQ @SetState1
    ; Decrement grid offset / distance remaining.
    ;
    DEC ObjRemDistance, X
    ; Move vertically.
    ; Add the Y offset for the current direction to the Y coordinate.
    ;
    LDA ObjY, X
    CLC
    ADC PolsVoiceWalkSpeedsY, Y
    STA ObjY, X
@CheckWalkability:
    ; If the square the monster is over is walkable, then
    ; go draw and check object collisions.
    ;
    JSR PolsVoice_IsSquareWalkable
    BCC @DrawAndCheckCollisions
    ; If the unwalkable tile is a block, or >= $F4 (water, screen edge bricks),
    ; then go change to state 1.
    ;
    LDA PolsVoice_ObjLastTile, X
    AND #$FC
    CMP #$B0
    BEQ @SetState1
    CMP #$F4
    BCS @SetState1
    ; Else blocked by something else.
    ;
    ; If facing horizontally, then go flip the direction, move, and draw.
    ;
    LDA ObjDir, X
    AND #$03
    BNE @FlipHorizontally
    ; Else facing vertically. Flip the direction.
    ; Go draw.
    ;
    LDA ObjDir, X
    EOR #$0C
    STA ObjDir, X
    JMP L_PolsVoice_DrawAndCheckCollisions

@FlipHorizontally:
    ; Facing horizontally. Flip the direction.
    ; Move two pixels, and go draw.
    ;
    EOR #$03
    STA ObjDir, X
    JSR PolsVoice_MoveX
    JSR PolsVoice_MoveX
@DrawAndCheckCollisions:
    JMP L_PolsVoice_DrawAndCheckCollisions

@SetState1:
    ; If already in state 1, then go draw and check collisions.
    ;
    LDA ObjState, X
    BNE L_PolsVoice_DrawAndCheckCollisions
    ; Go to state 1.
    ;
    INC ObjState, X
    ; Subtract 1 from facing direction to make an index.
    ;
    LDY ObjDir, X
    DEY
    ; If Y coordinate < $78, make the index 3 for down.
    ;
    LDA ObjY, X
    CMP #$78
    BCS :+
    LDY #$03
:
    ; If Y coordinate >= $A8, make the index 7 for up.
    ;
    CMP #$A8
    BCC :+
    LDY #$07
:
    ; Set the vertical speed for the beginning of the jump.
    ;
    LDA PolsVoiceInitialJumpSpeeds, Y
    STA PolsVoice_ObjSpeedWhole, X
    ; Look up the Y offset for the current direction.
    ; Add it to object Y to set the destination Y of the jump.
    ;
    LDA ObjY, X
    CLC
    ADC PolsVoiceDestinationYOffsets, Y
    STA PolsVoice_ObjTargetY, X
    ; Turn the index into a direction again by adding 1.
    ; Store the facing direction.
    ;
    INY
    STY ObjDir, X
L_PolsVoice_DrawAndCheckCollisions:
    LDA #$08                    ; Animation counter 8
    JSR Anim_AdvanceAnimCounterAndSetObjPosForSpriteDescriptor
    LDA ObjAnimFrame, X
    JSR DrawObjectMirrored
    ; Pols Voice is invincible to everything but the sword,
    ; during normal collision detection.
    ;
    ; The arrow is a special case.
    ;
    LDA #$FE
    STA ObjInvincibilityMask, X
    JSR CheckMonsterCollisions
    RTS

UpdatePolsVoiceState1_Jumping:
    ; Add acceleration $38 to low speed byte (vertical).
    ;
    LDA PolsVoice_ObjSpeedFrac, X
    CLC
    ADC #$38
    STA PolsVoice_ObjSpeedFrac, X
    ; Add Carry to high speed byte (vertical).
    ;
    LDA PolsVoice_ObjSpeedWhole, X
    ADC #$00
    STA PolsVoice_ObjSpeedWhole, X
    ; Add high speed byte to Y coordinate.
    ;
    CLC
    ADC ObjY, X
    STA ObjY, X
    ; If the speed is still negative, then return.
    ;
    LDA PolsVoice_ObjSpeedWhole, X
    BMI @Exit
    ; If Y coordinate still < target Y, then return.
    ;
    LDA ObjY, X
    CMP PolsVoice_ObjTargetY, X
    BCC @Exit
    ; Else reached the destination. Go to state 0.
    ;
    LDA #$00
    STA ObjState, X
    ; Reset 16-bit vertical speed.
    ;
    STA PolsVoice_ObjSpeedFrac, X
    STA PolsVoice_ObjSpeedWhole, X
    ; Choose a random direction to face in.
    ;
    LDA Random, X
    AND #$03
    TAY
    LDA PolsVoiceDirections, Y
    STA ObjDir, X
    ; Randomly set distance-to-move to $30 or $70.
    ;
    LDA Random, X
    AND #$40
    ADC #$30
    STA ObjRemDistance, X
    ; Align the monster with a square horizontally.
    ;
    ; If in the left half of a square, align with that square.
    ; If in the right half, align with the next square.
    ;
    LDA ObjX, X
    CLC
    ADC #$08
    AND #$F0
    STA ObjX, X
    ; Align the monster with a square vertically.
    ;
    ; If in the top half of a square, align with that square.
    ; If in the bottom half, align with the next square.
    ;
    LDA ObjY, X
    CLC
    ADC #$08
    AND #$F0
    ; Make sure the lower nibble of Y is $D as usual.
    ;
    SEC
    SBC #$03
    STA ObjY, X
@Exit:
    RTS

; Returns:
; C: 0 if walkable
; [041F][X]: tile
;
PolsVoice_IsSquareWalkable:
    JSR PolsVoice_GetCollidingTile
    ; If there's an unwalkable tile at the usual hotspot, then return.
    ;
    BCS @Exit
    ; Save the original object X, and temporarily add $E to it.
    ;
    LDA ObjX, X
    PHA
    CLC
    ADC #$0E
    STA ObjX, X
    ; Save the original Y, and temporarily add 6 to it.
    ;
    LDA ObjY, X
    PHA
    CLC
    ADC #$06
    STA ObjY, X
    ; Check again at relative hotspot ($E, $E).
    ;
    JSR PolsVoice_GetCollidingTile
    ; Restore the original coordinates.
    ;
    PLA
    STA ObjY, X
    PLA
    STA ObjX, X
@Exit:
    RTS

; Returns:
; C: 0 if walkable
; [041F][X]: tile
;
; Use offset 0 from the hotspot.
;
; TODO: But where is [0F] set?
;
PolsVoice_GetCollidingTile:
    LDY #$00
    JSR GetCollidableTile
    LDA ObjCollidedTile, X
    ; Return C=0 if walkable.
    ;
    CMP ObjectFirstUnwalkableTile
    ; Remember the tile that the monster is over.
    ;
    STA PolsVoice_ObjLastTile, X
    RTS

; Returns:
; Y: facing direction - 1 (so, 0 to 7)
;
; Add the X offset for the current direction to the X coordinate.
;
PolsVoice_MoveX:
    LDY ObjDir, X
    DEY
    LDA ObjX, X
    CLC
    ADC PolsVoiceWalkSpeedsX, Y
    STA ObjX, X
    RTS

UpdateLikeLike:
    ; If the monster captured Link, then go handle it.
    ;
    LDA ObjCaptureTimer, X
    BNE @HandleCaptured
    LDA #$80                    ; Turn rate $80
    JSR UpdateCommonWanderer
    ; Like-like has a 4 animation frame cycle unlike most monsters
    ; which have 2.
    ;
    DEC ObjAnimCounter, X
    BNE @Draw
    LDA #$08
    STA ObjAnimCounter, X
    LDY ObjAnimFrame, X
    INY
    TYA
    AND #$03
    STA ObjAnimFrame, X
@Draw:
    ; Draw.
    ;
    JSR Anim_FetchObjPosForSpriteDescriptor
    LDA ObjAnimFrame, X
    JSR DrawObjectMirrored
    ; Check collisions. If Link was not captured, then return.
    ;
    JSR CheckMonsterCollisions
    LDA ObjCaptureTimer, X
    BEQ @Exit
    ; The monster captured Link.
    ; Put the monster at the same location as him.
    ;
    LDA ObjX
    STA ObjX, X
    LDA ObjY
    STA ObjY, X
    ; Reset Link's timer, metastate, and shove info.
    ;
    LDA #$00
    STA ObjTimer
    STA ObjMetastate
    STA ObjShoveDir
    STA ObjShoveDistance
    ; Restart the monster's movement frame cycle: frame 0, counter 4
    ;
    STA ObjAnimFrame, X
    LDA #$04
    STA ObjAnimCounter, X
    ; Now Link can't move.
    ;
    INC LinkParalyzed
@Exit:
    RTS

@HandleCaptured:
    ; Animate up to frame 3. Then stay there.
    ;
    LDA #$02
    CMP ObjAnimFrame, X
    BCC @IncCaptureTime
    DEC ObjAnimCounter, X
    BNE @IncCaptureTime
    ASL
    STA ObjAnimCounter, X
    INC ObjAnimFrame, X
@IncCaptureTime:
    ; Increment capture time.
    ;
    INC ObjCaptureTimer, X
    ; Once capture time >= $60 screen frames, remove the magic shield.
    ;
    LDA ObjCaptureTimer, X
    CMP #$60
    BCC @DrawAfterCapture
    LDA #$00
    STA InvMagicShield
    ; Set a value above $60 over and over.
    ;
    LDA #$C0
    STA ObjCaptureTimer, X
@DrawAfterCapture:
    ; In this state, we have to draw Like-like over Link.
    ; So, don't use the usual sprite writing code that cycles sprites.
    ;
    JSR Anim_FetchObjPosForSpriteDescriptor
    LDA ObjAnimFrame, X
    JSR DrawObjectMirroredOverLink
    ; Check object collisions.
    ; If this monster hasn't died, then return.
    ;
    JSR CheckMonsterCollisions
    LDA ObjMetastate, X
    BEQ @Exit
    ; But once it has died, then let Link move again.
    ;
    LDA #$00
    STA LinkParalyzed
    JMP HideSpritesOverLink

UpdateVire:
    JSR UpdateVireState
    ; If state >= 2, then go split up into 2 keeses.
    ;
    LDA ObjState, X
    CMP #$02
    BCS @SplitUp
    JSR CheckVireCollisions
    JMP DrawVire

@SplitUp:
    ; As with Zol, we'll destroy one monster, and make two.
    ; So, increase object count by 1.
    ;
    INC RoomObjCount
    JSR DestroyMonster
    ; Two times, look for an empty monster slot.
    ; If one is found, then use the "shoot" operation to create a red keese.
    ;
    LDY #$01
@LoopMakeKeese:
    TYA                         ; Save loop counter.
    PHA
    JSR FindEmptyMonsterSlot
    BEQ @NextLoopMakeKeese
    LDA #$1C                    ; Red Keese object type
    STA $00
    JSR Shoot
@NextLoopMakeKeese:
    PLA                         ; Restore loop counter.
    TAY
    DEY
    BPL @LoopMakeKeese
    RTS

UpdateVireState:
    LDA ObjState, X
    JSR TableJump
UpdateVireState_JumpTable:
    .ADDR UpdateVireState0
    .ADDR UpdateZolState1_Shove

VireJumpOffsets:
    .BYTE $00, $FD, $FE, $FF, $FF, $00, $FF, $00
    .BYTE $00, $01, $00, $01, $01, $02, $03, $00

UpdateVireState0:
    LDA #$80                    ; Turn rate $80
    JSR UpdateCommonWanderer
    ; If we have the clock, or monster is stunned; then return.
    ;
    LDA InvClock
    ORA ObjStunTimer, X
    BNE @Exit
    ; If going vertically, then return.
    ;
    LDA ObjDir, X
    AND #$03
    BEQ @Exit
    ; Get the absolute value of the grid offset (0 to $F);
    ; so it becomes an index into the jump offset array.
    ;
    LDA ObjGridOffset, X
    JSR Abs
    TAY
    ; Add the vertical offset; so that as the vire moves left or right,
    ; it jumps.
    ;
    LDA ObjY, X
    CLC
    ADC VireJumpOffsets, Y
    STA ObjY, X
@Exit:
    RTS

CheckVireCollisions:
    ; If state <> 0, then the vire's going to split up.
    ; So, no need to check collisions. Return.
    ;
    LDA ObjState, X
    BNE @Exit
    JSR CheckMonsterCollisions
    ; If it was killed, then return.
    ;
    LDA ObjMetastate, X
    BNE @Exit
    ; If temporarily invincible, then it was harmed.
    ; Advance the state to split up.
    ;
    LDA ObjInvincibilityTimer, X
    BEQ @Exit
    INC ObjState, X
@Exit:
    RTS

DrawVire:
    LDA #$0A                    ; Animation counter $A
    JSR Anim_AdvanceAnimCounterAndSetObjPosForSpriteDescriptor
    ; The movement frame is the fram image number, unless facing up.
    ; In this case, add 2 to the frame image.
    ;
    LDA ObjDir, X
    AND #$08
    LSR
    LSR
    CLC
    ADC ObjAnimFrame, X
    JMP DrawObjectMirrored

UpdateBlueWizzrobe:
    ; Description:
    ; Blue Wizzrobe has two states: walking and teleporting.
    ; When walking, the object timer is set. When teleporting,
    ; the teleporting distance remaining is set.
    ;
    ; If we have the magic clock, then only go draw and check collisions.
    ;
    LDA InvClock
    BNE L_Wizzrobe_DrawAndCheckCollisions
    JSR BlueWizzrobe_WalkOrTeleport
    JSR BlueWizzrobe_TryShooting
Wizzrobe_DrawAndCheckCollisionsIntermittently:
    ; If the teleporting distance remaining is even, then draw
    ; and check collisions, else return.
    ;
    ; This means that when 0, the monster is walking.
    ; So, draw and check collisions every frame.
    ;
    ; When not 0, the monster is teleporting, and must be drawn
    ; translucently -- every other frame.
    ;
    LDA ObjRemDistance, X
    LSR
    BCS L11E17_Exit
L_Wizzrobe_DrawAndCheckCollisions:
    JMP Wizzrobe_DrawAndCheckCollisions

BlueWizzrobe_WalkOrTeleport:
    ; If timer has not expired, then go walk.
    ;
    LDA ObjTimer, X
    BNE @Walk
    ; Timer = 0. Only teleporting now.
    ;
    ; If there is still distance to go while translucent, then
    ; decrement the distance remaining, and move.
    ;
    LDA ObjRemDistance, X
    BEQ @WalkAgain
    DEC ObjRemDistance, X
    JMP BlueWizzrobe_MoveAndCheckTile

@WalkAgain:
    ; Distance remaining = 0. Still teleporting.
    ;
    JSR BlueWizzrobe_AlignWithNearestSquareAndRandomizeTimer
    JMP BlueWizzrobe_TurnTowardLink

@Walk:
    ; Timer:
    ;   >= $10: Turn if needed and move every other frame
    ;   > 1:    Do nothing
    ;   = 1:    Choose a place to teleport to.
    ;
    ; Notice that walking is slower than teleporting; and there is
    ; a pause of $10 frames at the end.
    ;
    CMP #$10
    BCS GoEveryOtherFrame
    CMP #$01
    BNE L11E17_Exit
    JSR BlueWizzrobe_ChooseTeleportTarget
L11E17_Exit:
    RTS

GoEveryOtherFrame:
    ; Every other frame, advance the turn counter, turn if needed,
    ; and move.
    ;
    LDA FrameCounter
    LSR
    BCS L_BlueWizzrobe_TurnTowardLinkIfNeeded
BlueWizzrobe_TurnSometimesAndMoveAndCheckTile:
    JSR BlueWizzrobe_AdvanceCounterAndTurnTowardLinkIfNeeded
BlueWizzrobe_MoveAndCheckTile:
    JSR BlueWizzrobe_Move
    JSR Wizzrobe_GetCollidableTile
    ; If walkable, then return.
    ;
    BCC @Exit
    ; Go handle a wall, if the tile is not a block nor water.
    ;
    LDA Wizzrobe_ObjLastTile, X
    AND #$FC
    CMP #$B0
    BEQ @HitBlockOrWater
    CMP #$F4
    BCC @HitWall
@HitBlockOrWater:
    ; If the monster was already teleporting, then return,
    ; so that it moves again next frame.
    ;
    LDA ObjRemDistance, X
    BNE L11E17_Exit
    ; Else go start teleporting thru this obstacle.
    ;
    JMP BeginTeleporting

@HitWall:
    ; The monster hit a wall.
    ; If facing direction has a vertical component, then flip it.
    ;
    LDY ObjDir, X
    TYA
    AND #$0C
    BEQ @CheckHorizontal
    TYA
    EOR #$0C
    STA ObjDir, X
    TAY
@CheckHorizontal:
    ; If facing direction has a horizontal component, then flip it.
    ;
    TYA
    AND #$03
    BEQ @Move
    TYA
    EOR #$03
    STA ObjDir, X
@Move:
    JMP BlueWizzrobe_Move

@Exit:
    RTS

BlueWizzrobe_AdvanceCounterAndTurnTowardLinkIfNeeded:
    ; Description:
    ; Increment the turn counter. Then turn toward Link
    ; when the turn counter is a multiple of $40.
    ;
    ; Increment the turn counter.
    ;
    INC BlueWizzrobe_ObjTurnCounter, X
L_BlueWizzrobe_TurnTowardLinkIfNeeded:
    ; Description:
    ; When the counter is a multiple of $40, switch between facing
    ; toward Link horizontally or vertically. All other times, return.
    ;
    LDA BlueWizzrobe_ObjTurnCounter, X
    AND #$3F
    BNE L11EAF_Exit
BlueWizzrobe_TurnTowardLink:
    ; If the multiple of $40 is even, then turn horizontally,
    ; else vertically.
    ;
    LDA BlueWizzrobe_ObjTurnCounter, X
    AND #$40
    BNE @TurnVertically
    ; If the monster's X >= Link's X, then choose left, else right.
    ;
    LDA #$02
    LDY ObjX, X
    CPY ObjX
    BCS :+
    LSR
:
    JMP @SetDir

@TurnVertically:
    ; If the monster's Y >= Link's Y, then choose up, else down.
    ;
    LDA #$08
    LDY ObjY, X
    CPY ObjY
    BCS @SetDir
    LSR
@SetDir:
    ; If the direction chosen = facing direction, then return.
    ;
    CMP ObjDir, X
    BEQ L11EAF_Exit
    ; Else face toward Link.
    ;
    STA ObjDir, X
    JMP BlueWizzrobe_AlignWithNearestSquare

BlueWizzrobeTeleportOffsetsX:
    .BYTE $00, $01, $FF, $00, $00, $01, $FF, $00
    .BYTE $00, $01, $FF

BlueWizzrobeTeleportOffsetsY:
    .BYTE $00, $00, $00, $00, $01, $01, $01, $00
    .BYTE $FF, $FF, $FF

BlueWizzrobe_Move:
    ; TODO:
    ; Consider calling this function something like MoveSimple8.
    ; Also, consider deleting the references to BlueWizzrobe in
    ; teleport offsets above.
    ;
    ; Index the offsets using the direction value directly.
    ;
    LDY ObjDir, X
    LDA ObjX, X
    CLC
    ADC BlueWizzrobeTeleportOffsetsX, Y
    STA ObjX, X
    LDA ObjY, X
    CLC
    ADC BlueWizzrobeTeleportOffsetsY, Y
    STA ObjY, X
L11EAF_Exit:
    RTS

BlueWizzrobeTeleportMaxOffsetsX:
    .BYTE $E0, $20, $E0, $20

BlueWizzrobeTeleportMaxOffsetsY:
    .BYTE $E0, $E0, $20, $20

BlueWizzrobeTeleportDirs:
    .BYTE $0A, $09, $06, $05

BlueWizzrobe_ChooseTeleportTarget:
    ; Choose a random value between 0 and 3 that will be used
    ; to test and set a direction to move in.
    ;
    LDA Random, X
    AND #$03
    TAY
    ; The random value implies a random direction.
    ; Save the original X coordinate; and add to it the offset for
    ; the random direction.
    ;
    LDA ObjX, X
    PHA
    CLC
    ADC BlueWizzrobeTeleportMaxOffsetsX, Y
    STA ObjX, X
    ; Save the original Y coordinate; and add to it the offset for
    ; the random direction.
    ;
    LDA ObjY, X
    PHA
    CLC
    ADC BlueWizzrobeTeleportMaxOffsetsY, Y
    STA ObjY, X
    TYA                         ; Save the random index.
    PHA
    ; Test the walkability in the random direction chosen.
    ;
    LDA BlueWizzrobeTeleportDirs, Y
    TAY
    JSR Wizzrobe_GetCollidableTileForDir
    PLA                         ; Restore the random index.
    TAY
    PLA                         ; Restore the original Y.
    STA ObjY, X
    PLA                         ; Restore the original X.
    STA ObjX, X
    ; If not walkable, then all we can do is align with the nearest square.
    ;
    BCS BlueWizzrobe_AlignWithNearestSquareAndRandomizeTimer
    ; Set the random diagonal direction.
    ;
    LDA BlueWizzrobeTeleportDirs, Y
    STA ObjDir, X
BeginTeleporting:
    ; Will move $20 pixels horizontally and vertically.
    ;
    LDA #$20
    STA ObjRemDistance, X
    ; Flip bit 6 of turn counter; so that we change the axis to turn toward.
    ;
    LDA BlueWizzrobe_ObjTurnCounter, X
    EOR #$40
    STA BlueWizzrobe_ObjTurnCounter, X
    ; Reset the timer to note that the monster is teleporting.
    ; Align with the nearest square.
    ;
    LDA #$00
    BEQ :+
BlueWizzrobe_AlignWithNearestSquareAndRandomizeTimer:
    ; Set a random timer >= $70.
    ;
    LDA Random, X
    ORA #$70
:
    STA ObjTimer, X
BlueWizzrobe_AlignWithNearestSquare:
    ; If in the left half of a square, jump to the left edge.
    ; Else jump to the next square.
    ;
    LDA ObjX, X
    CLC
    ADC #$08
    AND #$F0
    STA ObjX, X
    ; If in the top half of a square, jump to the top edge.
    ; Else jump to the next square.
    ;
    LDA ObjY, X
    CLC
    ADC #$08
; Params:
; A: Y coordinate, square ($10) aligned
;
RedWizzrobe_AlignAndSetY:
    AND #$F0
    SEC
    SBC #$03
    STA ObjY, X
    RTS

WizzrobeCollisionOffsetsX:
    .BYTE $0F, $00, $00, $04, $08, $00, $00, $04
    .BYTE $08, $00

WizzrobeCollisionOffsetsY:
    .BYTE $04, $04, $00, $08, $08, $08, $00, $F8
    .BYTE $00, $00

; Params:
; X: object index
;
; Returns:
; C: 0 if walkable
;
Wizzrobe_GetCollidableTile:
    LDY ObjDir, X
; Params:
; X: object index
; Y: 8-way direction
;
; Returns:
; C: 0 if walkable
;
; Subtract 1 from direction to make an 8-way direction index.
;
Wizzrobe_GetCollidableTileForDir:
    DEY
    ; Look up and add the collision offset to the monster's X coordinate.
    ;
    LDA ObjX, X
    PHA                         ; Save the original X.
    CLC
    ADC WizzrobeCollisionOffsetsX, Y
    STA ObjX, X
    ; Look up and add the collision offset to the monster's Y coordinate.
    ;
    LDA ObjY, X
    PHA                         ; Save the original Y.
    CLC
    ADC WizzrobeCollisionOffsetsY, Y
    STA ObjY, X
    JSR Wizzrobe_GetBaseCollidableTile
    PLA                         ; Restore the original Y.
    STA ObjY, X
    PLA                         ; Restore the original X.
    STA ObjX, X
    RTS

; Params:
; X: object index
;
; Returns:
; C: 0 if walkable
;
Wizzrobe_GetBaseCollidableTile:
    JSR GetCollidableTileStill
    LDA ObjCollidedTile, X
    ; Return C=0 if walkable.
    ;
    CMP ObjectFirstUnwalkableTile
    ; Store the last collided tile.
    ;
    STA Wizzrobe_ObjLastTile, X
    RTS

BlueWizzrobe_TryShooting:
    ; Once every $20 frames, and when not fading, we'll try to shoot.
    ; Otherwise, return.
    ;
    LDA ObjRemDistance, X
    BNE L11F7E_Exit
    LDA FrameCounter
    AND #$1F
    BNE L11F7E_Exit
    ; If Link and the monster are not within the same square row,
    ; then go see about the same square column.
    ;
    LDA ObjY, X
    AND #$F0
    STA $00
    LDA ObjY
    AND #$F0
    CMP $00
    BNE BlueWizzrobe_CheckSquareColumn
    ; If the monster is to the right of Link, then choose left.
    ; Else choose right.
    ;
    LDA #$02
    LDY ObjX, X
    CPY ObjX
    BCS :+
    LSR
:
    ; If the direction chosen = the monster's facing direction,
    ; then go shoot.
    ;
    CMP ObjDir, X
    BEQ ShootMagicShot58
L11F7E_Exit:
    RTS

BlueWizzrobe_CheckSquareColumn:
    ; If Link and the monster are not within the same square column,
    ; then return.
    ;
    LDA ObjX, X
    AND #$F0
    STA $00
    LDA ObjX
    CMP $00
    BNE L11F7E_Exit
    ; If the monster is down from Link, then choose up.
    ; Else choose down.
    ;
    LDA #$08
    LDY ObjY, X
    CPY ObjY
    BCS :+
    LSR
:
    ; If the direction chosen <> the monster's facing direction,
    ; then return.
    ;
    CMP ObjDir, X
    BNE L11F7E_Exit
ShootMagicShot58:
    LDA #$58
; Params:
; A: shot object type
;
ShootMagicShot:
    STA $00
    ; If we have the magic clock, then return.
    ;
    LDA InvClock
    BNE L11F7E_Exit
    ; Else play the magic sound, shoot, and return.
    ;
    LDA #$04
    STA Tune0Request
    JMP ShootLimited

UpdateRedWizzrobe:
    ; If we have the magic clock, then go check collisions and draw.
    ;
    LDA InvClock
    BEQ :+
    JMP Wizzrobe_DrawAndCheckCollisions

:
    ; Else increase animation counter and decrease state every frame.
    ;
    INC RedWizzrobe_ObjAnimCounter, X
    DEC ObjState, X
    ; Shift the state right 6 times to get the index (0 to 3) of a state routine.
    ;
    LDA ObjState, X
    LSR
    LSR
    LSR
    LSR
    LSR
    LSR
    JSR TableJump
UpdateRedWizzrobe_JumpTable:
    .ADDR UpdateRedWizzrobe_0
    .ADDR UpdateRedWizzrobe_1
    .ADDR UpdateRedWizzrobe_2
    .ADDR UpdateRedWizzrobe_3

RedWizzrobeOffsetsX:
    .BYTE $00, $00, $E0, $20, $00, $00, $C0, $40
    .BYTE $00, $00, $D0, $30, $00, $00, $B0, $50

RedWizzrobeOffsetsY:
    .BYTE $E0, $20, $00, $00, $C0, $40, $00, $00
    .BYTE $D0, $30, $00, $00, $B0, $50, $00, $00

RedWizzrobeDirections:
    .BYTE $04, $08, $01, $02

UpdateRedWizzrobe_1:
    ; Handle state group 1 ($40 to $7F).
    ;
    ; If state = $7F, make it $4F.
    ; $7F is the first frame of state group ($40 to $7F).
    ; By doing this, we skip $30 frames.
    ;
    LDA ObjState, X
    CMP #$7F
    BNE :+
    LDA #$4F
    STA ObjState, X
:
    ; Increment the fade counter. Depending on the low bit,
    ; the monster will be drawn every other frame.
    ;
    INC RedWizzrobe_ObjFadeCounter, X
    JMP Wizzrobe_DrawAndCheckCollisionsIntermittently

UpdateRedWizzrobe_3:
    ; Handle state group 3 ($C0 to $FF).
    ;
    ; If state <> $FF, go fade as in state group 1.
    ;
    LDY ObjState, X
    INY
    BNE UpdateRedWizzrobe_1
    ; State $FF.
    ;
    ; Face in a random direction.
    ;
    LDA Random, X
    PHA                         ; Save the random value.
    AND #$03
    TAY
    LDA RedWizzrobeDirections, Y
    STA ObjDir, X
    PLA                         ; Restore the random value.
    ; Use a random value from 0 to $F to index into an array of offsets.
    ;
    AND #$0F
    TAY
    LDA ObjX
    ; Add the X offset and Link's X to set the monster's position.
    ;
    ADC RedWizzrobeOffsetsX, Y
    AND #$F0                    ; Align with a square.
    STA ObjX, X
    ; Add the Y offset and Link's Y to set the monster's position.
    ;
    LDA ObjY
    CLC
    ADC #$03                    ; Add 3 to help with the alignment calculation below.
    ADC RedWizzrobeOffsetsY, Y
    JSR RedWizzrobe_AlignAndSetY
    ; If Y coordinate >= $5D and < $C4, then the monster
    ; is not in a wall. So, check tile collision.
    ;
    CMP #$5D
    BCC :+
    CMP #$C4
    BCS :+
    JSR Wizzrobe_GetCollidableTile
    ; If walkable, then return.
    ; Else increase state to 0, in order to check again next frame.
    ;
    BCC UpdateRedWizzrobe_0
:
    INC ObjState, X
UpdateRedWizzrobe_0:
    RTS

UpdateRedWizzrobe_2:
    ; Handle state group 2 ($80 to $BF).
    ;
    ; If state = $B0, then shoot a magic shot $59.
    ;
    LDA ObjState, X
    CMP #$B0
    BNE Wizzrobe_DrawAndCheckCollisions
    LDA #$59
    JSR ShootMagicShot
Wizzrobe_DrawAndCheckCollisions:
    ; Invincible to everything but sword and bomb.
    ;
    LDA #$F6
    STA ObjInvincibilityMask, X
    JSR GetObjectMiddle
    ; If invincibility timer = 0, then check collisions with weapons.
    ;
    LDA ObjInvincibilityTimer, X
    BNE :+
    LDY #$0E
    JSR CheckMonsterSwordShotOrMagicShotCollision
    LDY #$10
    JSR CheckMonsterBombOrFireCollision
    LDY #$11
    JSR CheckMonsterBombOrFireCollision
    LDY #$0D
    JSR CheckMonsterSwordCollision
:
    ; In this state, the monster can always harm Link,
    ; even if it can't be harmed.
    ;
    JSR CheckLinkCollision
    ; Every 4 frames switch between two frame images.
    ;
    LDA RedWizzrobe_ObjAnimCounter, X
    LSR
    LSR
    AND #$01
    PHA                         ; Save the frame image number.
    JSR Anim_FetchObjPosForSpriteDescriptor
    ; If facing up, then go add 2 to frame image number, and draw mirrored.
    ;
    LDA ObjDir, X
    AND #$08
    BNE :+
    ; If facing left, then flip horizontally.
    ;
    LDA ObjDir, X
    LSR
    AND #$01
    STA $0F
    PLA                         ; Restore the frame image number.
    JMP DrawObjectNotMirrored

:
    PLA
    CLC
    ADC #$02                    ; Up facing frame image numbers are 2 and 3.
    JMP DrawObjectMirrored

GleeokSegmentYs:
    .BYTE $6F, $74, $79, $7E, $83, $88

InitGleeok:
    ; TODO: ?
    ;
    LDA #$10
    STA SampleRequest
    ; Loop 6 times to initialize each segment of 4 necks.
    ;
    LDX #$05
:
    ; Set the X of the current segment of each neck to $7C.
    ;
    LDA #$7C
    STA Gleeok_NeckXs0, X
    STA Gleeok_NeckXs1, X
    STA Gleeok_NeckXs2, X
    STA Gleeok_NeckXs3, X
    STA ObjX+1, X               ; I don't think this one is needed.
    ; Look up and set the Y of the current segment of each neck.
    ;
    LDA GleeokSegmentYs, X
    STA Gleeok_NeckYs0, X
    STA Gleeok_NeckYs1, X
    STA Gleeok_NeckYs2, X
    STA Gleeok_NeckYs3, X
    STA ObjY+1, X               ; I don't think this one is needed.
    ; Set HP of each neck to $A0.
    ;
    ; Because there's only one HP value for each neck,
    ; it's stored right in the object slot -- unlike coordinates.
    ;
    ; Also, note that even though these aren't independent objects
    ; in the object slots -- because object type = 0 -- the values in
    ; these object slots will be useful during collision detection.
    ;
    LDA #$A0
    STA ObjHP+1, X
    ; Reset metastate and unintialized flag, so that this neck is ready to go.
    ;
    LDA #$00
    STA ObjMetastate+1, X
    STA ObjUninitialized+2, X   ; TODO: Is this a mistake? (+2)
    ; Invincible to everything but the sword.
    ;
    LDA #$FE
    STA ObjInvincibilityMask+1, X
    ; Bottom of the loop.
    ;
    DEX
    BPL :-
    ; Set speed flags to $FF (non-0/decelerate):
    ; * neck 0 X
    ; * neck 1 Y
    ; * neck 2 X
    ; * neck 3 Y
    ;
    ; Leave the other other speed flags 0 (accelerate).
    ;
    STX Gleook_HeadInfo0+GLEEOK_SPEEDX
    STX Gleook_HeadInfo1+GLEEOK_SPEEDY
    STX Gleook_HeadInfo2+GLEEOK_SPEEDX
    STX Gleook_HeadInfo3+GLEEOK_SPEEDY
    ; Set the V-direction counter of all necks to 3.
    ;
    LDA #$03
    STA Gleook_HeadInfo0+GLEEOK_DIRCOUNTERV
    STA Gleook_HeadInfo1+GLEEOK_DIRCOUNTERV
    STA Gleook_HeadInfo2+GLEEOK_DIRCOUNTERV
    STA Gleook_HeadInfo3+GLEEOK_DIRCOUNTERV
    ; Set the H-direction counter of all necks to 6.
    ;
    ASL
    STA Gleook_HeadInfo0+GLEEOK_DIRCOUNTERH
    STA Gleook_HeadInfo1+GLEEOK_DIRCOUNTERH
    STA Gleook_HeadInfo2+GLEEOK_DIRCOUNTERH
    STA Gleook_HeadInfo3+GLEEOK_DIRCOUNTERH
    ; Set neck 1 head delay timer to 12.
    ;
    ASL
    STA Gleook_HeadInfo1+GLEEOK_DELAY
    ; Set neck 2 head delay timer to 24.
    ;
    ASL
    STA Gleook_HeadInfo2+GLEEOK_DELAY
    ; Set neck 3 head delay timer to 36.
    ;
    ADC Gleook_HeadInfo1+GLEEOK_DELAY
    STA Gleook_HeadInfo3+GLEEOK_DELAY
    ; Leave neck 0 head delay timer as 0.
    ;
    RTS

ManhandlaBaseFrameImagesAndAttrs:
    .BYTE $00, $80, $02, $42, $04

ManhandlaSegmentOffsetsX:
    .BYTE $00, $00

ManhandlaSegmentOffsetsY:
    .BYTE $F0, $10, $00, $00, $00

InitManhandla:
    ; TODO: ?
    ;
    LDA #$40
    STA SampleRequest
    ; Choose a random 8-way direction.
    ;
    LDA Random, X
    AND #$07
    TAY
    LDA Directions8, Y
    STA ObjDir, X
    ; For 5 segments, from 4 to 0, indexed by Y register:
    ; Object slots 5 to 1 are accessed.
    ;
    LDY #$04
:
    ; Copy the direction from the base segment.
    ;
    LDA ObjDir+1
    STA a:ObjDir+1, Y
    ; All segments are considered Manhandla.
    ;
    LDA #$3C
    STA ObjType+1, Y
    ; Set the segment invincible to fire and boomerang.
    ;
    LDA #$E2
    STA ObjInvincibilityMask+1, Y
    ; Look up and store the base frame image and sprite attributes byte.
    ;
    ; While updating, the low bit will be flipped on and off
    ; for each animation frame.
    ;
    LDA ManhandlaBaseFrameImagesAndAttrs, Y
    STA Manhandla_ObjFrame+1, Y
    ; All segments start out autonomous, and can update immediately.
    ;
    LDA #$00
    STA ObjMetastate+1, Y
    STA ObjUninitialized+1, Y
    ; Copy object attributes and HP from the base segment.
    ;
    LDA ObjAttr+1
    STA ObjAttr+1, Y
    LDA ObjHP+1
    STA ObjHP+1, Y
    ; Look up the offset of this segment. Add it to the position of
    ; the base segment.
    ;
    ; The position of the base segment in slot 5 is calculated first.
    ; Its base position is the spawn position.
    ;
    LDA ObjX+5
    CLC
    ADC ManhandlaSegmentOffsetsX, Y
    STA a:ObjX+1, Y
    LDA ObjY+5
    CLC
    ADC ManhandlaSegmentOffsetsY, Y
    STA a:ObjY+1, Y
    ; Set low speed byte $80.
    ;
    LDA #$80
    STA Manhandla_ObjSpeedFrac+1, Y
    DEY
    BPL :-
    RTS

InitGohma:
    ; TODO: ?
    ;
    LDA #$20
    STA SampleRequest
    ; Invincible to everything but arrows.
    ;
    LDA #$FB
    STA ObjInvincibilityMask, X
    ; Set shoot timer to 1, so that Gohma doesn't shoot right away.
    ;
    INC Gohma_ObjShootTimer, X
    ; Start at location ($80, $70).
    ;
    LDA #$80
    STA ObjX, X
    LDA #$70
    STA ObjY, X
    JMP ResetObjMetastateAndTimer

InitGleeokHead:
    JSR InitBlueKeese
    ; Set flying speed $BF and maximum $E0.
    ;
    LDA #$E0
    STA FlyingMaxSpeedFrac
    LDA #$BF
    STA Flyer_ObjSpeed, X
    RTS

UpdateManhandla:
    ; If this segment is not the base, then skip turning and speeding up.
    ;
    CPX #$05
    BNE @MoveBase
    ; If no segment just died, then skip increasing the speed.
    ;
    LDA Manhandla_SegmentJustDied
    BEQ @BounceIfNeeded
    ; For each segment from 4 to 0, indexed by Y register:
    ;
    LDY #$04
@LoopSegment:
    ; Add $80 to the low speed byte of this segment.
    ;
    LDA Manhandla_ObjSpeedFrac+1, Y
    CLC
    ADC #$80
    STA Manhandla_ObjSpeedFrac+1, Y
    ; Carry to the high speed byte of this segment.
    ;
    LDA Manhandla_ObjSpeedWhole+1, Y
    ADC #$00
    STA Manhandla_ObjSpeedWhole+1, Y
    DEY
    BPL @LoopSegment
    ; Reset the "a segment just died" flag.
    ;
    LDA #$00
    STA Manhandla_SegmentJustDied
@BounceIfNeeded:
    ; If there's a bounce direction, then assign it to the facing
    ; direction of all segments.
    ;
    LDA Manhandla_BounceDir
    BEQ @TurnIfNeeded
    JSR Manhandla_SetAllSegmentsDirection
@TurnIfNeeded:
    ; If object timer = 0, then
    ; 1. set timer to $10
    ; 2. randomly choose to turn toward Link or turn randomly
    ; 3. assign the base's direction to all segments and bounce direction
    ;
    LDA ObjTimer, X
    BNE @MoveBase
    LDA #$10
    STA ObjTimer, X
    LDA Random, X
    CMP #$80
    BCS @TurnTowardLink
    JSR TurnRandomlyDir8
@CopyDirToHands:
    LDA ObjDir+5
    STA Manhandla_BounceDir
    JSR Manhandla_SetAllSegmentsDirection
@MoveBase:
    ; If this segment is the base, then remember the
    ; facing direction before moving.
    ;
    ; This is a continuation of the code above,
    ; which is also only for the base.
    ;
    CPX #$05
    BNE :+
    LDA ObjDir, X
    STA $0384
:
    JSR Manhandla_Move
    JSR Manhandla_CheckCollisions
    ; If the direction changed after moving, then
    ; copy it to the bounce direction.
    ;
    LDA ObjDir, X
    CMP $0384
    BEQ :+
    STA Manhandla_BounceDir
:
    ; Store in [00] the animation frame that you get from the frame accumulator:
    ; frame := ((accumulator AND $10) >> 4
    ;
    LDA Manhandla_ObjFrameAccum, X
    AND #$10
    LSR
    LSR
    LSR
    LSR
    STA $00
    ; Copy the animation frame bit into the "frame image and
    ; sprite attributes" byte.
    ;
    LDA Manhandla_ObjFrame, X
    AND #$FE
    ORA $00
    STA Manhandla_ObjFrame, X
    ; If this segment is the base, then go draw.
    ;
    CPX #$05
    BEQ @Draw
    ; If the old and new "frame image and sprite attributes" variables
    ; are the same, then go draw.
    ;
    ; The previous frame value begins with value 0, because all
    ; room data was reset on entry.
    ;
    LDA Manhandla_ObjFrame, X
    CMP Manhandla_ObjPrevFrame, X
    BEQ @Draw
    ; Copy the new value to the old variable, so that they're the same.
    ;
    STA Manhandla_ObjPrevFrame, X
    ; If animation frame = 1, then go draw.
    ;
    ; The low bit of "frame image and sprite attributes" byte
    ; represents the animation frame.
    ;
    LSR
    BCS @Draw
    ; If the random value for the next slot up < $E0,
    ; or there's an object in slot 7; then go draw.
    ;
    ; The second condition keeps the number of fireballs <= 4.
    ;
    LDA Random+1, X
    CMP #$E0
    BCC @Draw
    LDA ObjType+7
    BNE @Draw
    LDA #$56                    ; TODO: Fireball object type $56
    JSR ShootFireball
@Draw:
    JMP Manhandla_Draw

@TurnTowardLink:
    JSR TurnTowardsPlayer8
    JMP @CopyDirToHands

Manhandla_CheckCollisions:
    ; Check collisions, but never let them interfere with movement.
    ;
    LDA ObjDir, X
    PHA                         ; Save the direction
    LDA ObjTimer, X
    PHA                         ; Save the timer
    JSR CheckMonsterCollisions
    PLA                         ; Restore the timer
    STA ObjTimer, X
    PLA                         ; Restore the direction
    STA ObjDir, X
    ; Don't let the base segment be temporarily invincible.
    ;
    CPX #$05
    BNE :+
    LDA #$00
    STA ObjInvincibilityTimer, X
:
    JSR PlayBossHitCryIfNeeded
    ; If still alive, then return.
    ;
    LDA ObjMetastate, X
    BEQ @Exit
    JSR ResetShoveInfo
    ; Don't let the base die on its own.
    ; If this is the base, then reset metastate, and return.
    ;
    ; The base only dies once the last hand dies.
    ;
    CPX #$05
    BNE @CountHands
    STA ObjMetastate, X
    JMP @Exit

@CountHands:
    ; At this point, we have a hand that just died.
    ;
    ; For each hand, from 3 to 0, indexed by 0:
    ;
    LDY #$03
    ; Count how many are allocated.
    ; This includes the current dead one, and the other living ones.
    ; Store the count in [00].
    ;
    LDA #$00
    STA $00
@LoopHand:
    LDA ObjType+1, Y
    CMP #$3C
    BNE :+
    INC $00
:
    DEY
    BPL @LoopHand
    ; Decrease by 1, to account for the current dead one.
    ;
    DEC $00
    ; If the count >= 0 (signed comparison), then
    ; go change this hand object to the dead dummy.
    ;
    BMI :+
    BNE @MakeDeadDummy
:
    ; The last hand died. So, kill the base.
    ;
    ; Change the base segment's object type to the dead dummy.
    ; Immediately set metastate to $10, instead of waiting for
    ; the dead dummy object's update routine to do it.
    ; Also set its timer to $10.
    ;
    JSR PlayBossDeathCry
    LDA #$5D
    STA ObjType+5
    LDA #$10
    STA ObjMetastate+5
    STA ObjTimer+5
@FlagHandDied:
    ; Set the "segment just died" flag.
    ;
    INC Manhandla_SegmentJustDied
@Exit:
    RTS

@MakeDeadDummy:
    LDA #$5D                    ; Dead dummy object type
    STA ObjType, X
    JMP @FlagHandDied

; Params:
; A: direction
;
Manhandla_SetAllSegmentsDirection:
    LDY #$04
:
    STA a:ObjDir+1, Y
    DEY
    BPL :-
    RTS

Manhandla_Move:
    ; Implement a way of manifesting the fractional part of the speed
    ; in the movement.
    ;
    ; Let's say the 16-bit speed is $0140. If we only took the high
    ; byte to add to the coordinates, then the effective speed would
    ; be 1 pixel a frame instead of 1.25.
    ;
    ; By keeping a speed accumulator, we can turn speed $0140
    ; into 1.25 pixels a frame over four frames, using this calculation:
    ;
    ;   (SA=speed accumulator, SH=speed high, SL=speed low)
    ;
    ;   SA := SA + (SL AND $E0)
    ;   [03] := SH + carry
    ;
    ; AND'ing the low speed byte with $E0 isn't strictly needed.
    ;
    LDA Manhandla_ObjSpeedFrac, X
    AND #$E0
    CLC                         ; Add the low speed byte to speed accumulator.
    ADC Manhandla_ObjSpeedAccum, X
    STA Manhandla_ObjSpeedAccum, X
    ; Assign (high speed byte + carry) to [03].
    ;
    LDA Manhandla_ObjSpeedWhole, X
    ADC #$00
    STA $03
    ; Change coordinates by the speed amount/offset in [03]
    ; according to the direction.
    ;
    ; Start with a mask of $A1 in [02]:
    ; - low nibble represents the right direction
    ; - high nibble is used to set or clear carry as we go along
    ;
    LDA #$A1
    STA $02
    ; If direction has a right component (1), then add offset to X coordinate.
    ;
    LDA ObjDir, X
    BIT $02
    BEQ @Left
    LDA ObjX, X
    CLC
    ADC $03
    STA ObjX, X
@Left:
    ; If direction has a left component (2), then subtract offset from X coordinate.
    ;
    LDA ObjDir, X
    ASL $02                     ; Bit 7 of mask $A1 sets Carry now.
    BIT $02
    BEQ @Down
    LDA ObjX, X
    SBC $03
    STA ObjX, X
@Down:
    ; If direction has a down component (4), then add offset to Y coordinate.
    ;
    LDA ObjDir, X
    ASL $02                     ; Bit 6 of mask $A1 clears Carry now.
    BIT $02
    BEQ @Up
    LDA ObjY, X
    ADC $03
    STA ObjY, X
@Up:
    ; If direction has an up component (8), then subtract offset from Y coordinate.
    ;
    LDA ObjDir, X
    ASL $02                     ; Bit 5 of mask $A1 sets Carry now.
    BIT $02
    BEQ @IncFrameAccum
    LDA ObjY, X
    SBC $03
    STA ObjY, X
@IncFrameAccum:
    ; To the frame accumulator, add:
    ; - a random value between 0 and 3
    ; - [03] the effective high speed byte calculated for this screen frame
    ;
    LDA Random+1, X
    AND #$03
    CLC
    ADC $03
    ADC Manhandla_ObjFrameAccum, X
    STA Manhandla_ObjFrameAccum, X
    JSR BoundFlyer
    ; TODO:
    ; I don't see why this is needed.
    ;
    JMP Anim_FetchObjPosForSpriteDescriptor

Manhandla_Draw:
    JSR Anim_FetchObjPosForSpriteDescriptor
    ; Push the "frame image and sprite attributes" value.
    ;
    LDA Manhandla_ObjFrame, X
    PHA
    ; Bit 7 is the sprite attribute for vertical flipping, and can be
    ; passed along as is.
    ;
    AND #$80
    ORA #$01                    ; Use blue palette row.
    JSR Anim_SetSpriteDescriptorAttributes
    PLA                         ; Get the "frame image and sprite attributes" value again.
    PHA
    ; If bit 6 is set, then enable horizontal flipping in [0F].
    ;
    AND #$40
    BEQ :+
    INC $0F
:
    PLA                         ; Pop the "frame image and sprite attributes" value.
    ; If the low nibble = 2 or 3, then go draw not mirrored.
    ; These are the 2 frame images of the horizontal hands.
    ;
    ; Else draw the base and vertical hands mirrored.
    ;
    AND #$0F
    CMP #$02
    BEQ :+
    CMP #$03
    BEQ :+
    JMP DrawObjectMirrored

:
    JMP DrawObjectNotMirrored

UpdateGohma:
    ; If flagged not to continue straight, then choose a random facing direction.
    ;
    LDA Gohma_ObjGoStraight, X
    BNE @Move
    ; If Random:
    ;   >= $B0: right
    ;   >= $60: left
    ;   Else:   down
    ;
    LDA #$01
    LDY Random, X
    CPY #$B0
    BCS @ChangeDir
    ASL
    CPY #$60
    BCS @ChangeDir
    ASL
@ChangeDir:
    STA ObjDir, X
    ; Now we can go straight without changing direction for some time.
    ;
    INC Gohma_ObjGoStraight, X
    ; Go animate the eye.
    ;
    JMP @AnimateEye

@Move:
    ; Add $80 to the movement accumulator.
    ;
    LDA Gohma_ObjMoveAccum, X
    CLC
    ADC #$80
    STA Gohma_ObjMoveAccum, X
    ; If movement accumulator didn't overflow, then go animate the eye.
    ;
    BCC @AnimateEye
    ; Increase the distance traveled, and move 1.
    ;
    INC Gohma_ObjDistTraveled, X
    ; Set a direction mask in [02], starting with right (1).
    ;
    LDA #$01
    STA $02
    ; If Gohma's facing direction has a right component, then add 1 to X.
    ;
    LDA ObjDir, X
    BIT $02
    BEQ :+
    INC ObjX, X
:
    ; If Gohma's facing direction has a left component, then subtract 1 from X.
    ;
    ASL $02
    BIT $02
    BEQ :+
    DEC ObjX, X
:
    ; If Gohma's facing direction has a down component, then add 1 to Y.
    ;
    ASL $02
    BIT $02
    BEQ :+
    INC ObjY, X
:
    ; If Gohma's facing direction has an up component, then subtract 1 from Y.
    ;
    ASL $02
    BIT $02
    BEQ :+
    DEC ObjY, X
:
    ; If Gohma has not traveled $20 pixels, then go animate the eye.
    ;
    LDA Gohma_ObjDistTraveled, X
    CMP #$20
    BNE @AnimateEye
    ; Gohma has traveled $20 pixels. Reset the distance traveled.
    ; Reverse the facing direction, and increase the number of sprints.
    ;
    LDA #$00
    STA Gohma_ObjDistTraveled, X
    JSR ReverseObjDir8
    LDA Gohma_ObjSprints, X
    INC Gohma_ObjSprints, X
    ; If the previous number of sprints was odd, then flag that Gohma
    ; should randomly change direction.
    ;
    LSR
    BCC @AnimateEye
    LDA #$00
    STA Gohma_ObjGoStraight, X
@AnimateEye:
    ; Animate the eye.
    ;
    ; First, if the counter for when to open the eye next = 0, then
    ; set it to a random value at least $C0; and set the timer for
    ; keeping the eye open to $80.
    ;
    ; Note that $C0 is not a number of frames, because it's changed
    ; every other frame.
    ;
    LDA Gohma_ObjNextOpenEyeCounter, X
    BNE @DecNextOpenEyeCounter
    LDA #$80
    STA Gohma_ObjEyeOpenTimer, X
    LDA #$C0
    ORA Random, X
    STA Gohma_ObjNextOpenEyeCounter, X
@DecNextOpenEyeCounter:
    ; Decrement the next-open-eye counter.
    ;
    LDA FrameCounter
    LSR
    BCC :+
    DEC Gohma_ObjNextOpenEyeCounter, X
:
    ; If open eye timer = 0, then the eye is closed.
    ; Go animate it differently.
    ;
    LDA Gohma_ObjEyeOpenTimer, X
    BEQ @AnimateClosedEye
    ; Else decrement the open eye timer.
    ;
    DEC Gohma_ObjEyeOpenTimer, X
    ; If open eye timer >= $70 and < $10, then the eye is fully open.
    ; So, set its frame image to 2. Else use 3 for a half open eye.
    ;
    LDY #$02
    CMP #$70
    BCS :+
    CMP #$10
    BCC :+
    INY
:
    TYA
@SetEyeStateAndShoot:
    STA Gohma_ObjEyeState, X
@ShootAnimateCollide:
    ; Decrement the shoot timer.
    ;
    DEC Gohma_ObjShootTimer, X
    ; If it became 0, then set it to $41, and shoot fireball $56.
    ;
    BNE @AnimateAndCheckCollisions
    LDA #$41
    STA Gohma_ObjShootTimer, X
    LDA #$56
    JSR ShootFireball
@AnimateAndCheckCollisions:
    ; Pass the frame image for the eye.
    ;
    LDA Gohma_ObjEyeState, X
    JSR Gohma_AnimateAndDraw
    JMP Gohma_CheckCollisions

@AnimateClosedEye:
    ; Here the eye is closed. So animate it this way.
    ; Increment the animation counter, and if <> 8, then
    ; go shoot, draw, and check collisions.
    ;
    INC Gohma_ObjEyeAnimCounter, X
    LDA Gohma_ObjEyeAnimCounter, X
    CMP #$08
    BNE @ShootAnimateCollide
    ; Roll over the eye animation counter to 0.
    ; Clear bit 1 and invert bit 0 to switch between frame images 0 and 1.
    ;
    LDA #$00
    STA Gohma_ObjEyeAnimCounter, X
    LDA Gohma_ObjEyeState, X
    AND #$01
    EOR #$01
    ; Go set eye state/frame image, shoot, draw, and check collisions
    ;
    JMP @SetEyeStateAndShoot

GohmaLegOffsetsX:
    .BYTE $F0, $10

; Params:
; A: eye frame image
;
; Draw the eye with the frame image passed in.
;
Gohma_AnimateAndDraw:
    PHA
    JSR Anim_FetchObjPosForSpriteDescriptor
    JSR Gohma_SetSpriteAttributes
    PLA
    JSR DrawObjectMirrored
    LDA #$10
    JSR Anim_AdvanceAnimCounterAndSetObjPosForSpriteDescriptor
    ; Draw the right legs.
    ;
    LDY #$01
    JSR Gohma_DrawLegsOneSide
    ; Draw the left legs.
    ;
    LDY #$00
; Params:
; Y: side: 0 for left, 1 for right
;
; Add the horizontal offset for the current side to Gohma's X to
; store the sprite's X in [00].
;
Gohma_DrawLegsOneSide:
    LDA ObjX, X
    CLC
    ADC GohmaLegOffsetsX, Y
    STA $00
    ; The object's Y is the sprite's.
    ;
    LDA ObjY, X
    STA $01
    JSR Gohma_SetSpriteAttributes
    ; There are only two frame images for legs: left and right.
    ; There are two animation frames. They are animated as follows:
    ;
    ; Frame 0:
    ; ((leg index + frame number) AND 1) = 0 or 1
    ; horizontal flipping = frame number = 0
    ; 
    ; Frame 1:
    ; ((leg index + frame number) AND 1) = 1 or 0
    ; horizontal flipping = frame number = 1
    ;
    JSR Anim_SetObjHFlipForSpriteDescriptor
    TYA
    CLC
    ADC ObjAnimFrame, X
    AND #$01                    ; There are only two images.
    CLC
    ADC #$04                    ; Leg frame images start at 4.
    JMP DrawObjectNotMirrored

; Returns:
; [04]: left side sprite attributes
; [05]: right side sprite attributes
;
Gohma_SetSpriteAttributes:
    LDA ObjType, X
    SEC
    SBC #$32
    JMP Anim_SetSpriteDescriptorAttributes

Gohma_CheckCollisions:
    ; Save the boss's X coordinate.
    ;
    LDA ObjX, X
    PHA
    ; Subtract $10 from the X coordinate, so we start checking collisions
    ; on the left side.
    ;
    SEC
    SBC #$10
    STA ObjX, X
    ; Check object collisions in 5 parts, 8 pixels apart,
    ; from left to right, indexed by [0F].
    ;
    LDA #$05
    STA $0F                     ; Loop counter
@LoopSprite:
    JSR CheckMonsterCollisions
    ; Add 8 to the X coordinate for the next part.
    ;
    LDA ObjX, X
    CLC
    ADC #$08
    STA ObjX, X
    DEC $0F                     ; Loop counter
    BNE @LoopSprite
    ; Restore the boss's X coordinate.
    ;
    PLA
    STA ObjX, X
    RTS

Gohma_HandleWeaponCollision:
    ; TODO:
    ; If hit by an arrow, then set the arrow to spark
    ;
    CPY #$12
    BNE @CheckHitEye
    LDA #$28
    STA a:ObjState, Y
    LDA #$04
    STA ObjAnimCounter, Y
@CheckHitEye:
    ; If it did not hit part 3 nor 4, then go play the parry sound effect.
    ;
    LDA $0F
    CMP #$03
    BEQ @CheckEyeOpen
    CMP #$04
    BNE @PlayParryTune
@CheckEyeOpen:
    ; If the state of the eye is not 3, then go parry.
    ;
    LDA Gohma_ObjEyeState, X
    CMP #$03
    BNE @PlayParryTune
    ; If the direction of the arrow is not up, then go parry.
    ;
    LDA a:ObjDir, Y
    CMP #$08
    BNE @PlayParryTune
    ; TODO:
    ;
    LDA #$02
    STA SampleRequest
    ; Deal damage and cry out.
    ;
    JSR DealDamage
    JSR PlayBossDeathCryIfNeeded
@PlayParryTune:
    LDA #$01
    STA Tune0Request
    RTS

UpdateGleeokHead:
    JSR ControlGleeokHeadFlight
    JSR MoveFlyer
    ; If the low bit of the distance traveled is clear,
    ; and Random < $20,
    ; and there's no object (fireball) in slot $B,
    ; then shoot a fireball $56.
    ;
    LDA Flyer_ObjDistTraveled, X
    AND #$01
    BNE :+
    LDA Random+1, X
    CMP #$20
    BCS :+
    LDA ObjType+11
    BNE :+
    LDA #$56
    JSR ShootFireball
:
    LDA #$01                    ; Switch animation frames every screen frame.
    JSR Anim_AdvanceAnimCounterAndSetObjPosForSpriteDescriptor
    LDA ObjAnimFrame, X
    JSR DrawObjectMirrored
    JSR CheckMonsterCollisions
    ; Reset object state, shove info, and invincibility timer,
    ; because this monster can't get hurt nor die.
    ;
    JSR ResetObjMetastate
    JSR SetShoveInfoWith0
    STA ObjInvincibilityTimer, X
    RTS

ControlGleeokHeadFlight:
    LDA Flyer_ObjFlyingState, X
    JSR TableJump
ControlGleeokHeadFlight_JumpTable:
    .ADDR Flyer_SpeedUp
    .ADDR Flyer_GleeokHeadDecideState
    .ADDR Flyer_Chase
    .ADDR Flyer_Wander

Flyer_GleeokHeadDecideState:
    ; Go to the next flying state randomly:
    ; Random < $D0: 2
    ; Else:         3
    ;
    ; Set up 6 turns.
    ;
    LDY #$02
    LDA Random+1, X
    CMP #$D0
    BCC :+
    INY
:
    JMP Flyer_SetStateAndTurns

GleeokNeckXAddrsLo:
    .BYTE $38, $52, $6C, $95

GleeokNeckXAddrsHi:
    .BYTE $04, $04, $04, $03

GleeokNeckYAddrsLo:
    .BYTE $45, $5F, $79, $BD

GleeokNeckYAddrsHi:
    .BYTE $04, $04, $04, $03

GleeokNeckMiscAddrsLo:
    .BYTE $20, $2D, $81, $A9

GleeokNeckMiscAddrsHi:
    .BYTE $04, $04, $03, $03

UpdateGleeok:
    JSR Gleeok_DrawBody
    ; Calculate the index of the last neck of this kind of gleeok.
    ; Subtract $42 (Gleeok1) from ObjType[1].
    ;
    LDA ObjType+1
    SEC
    SBC #$42
    ; For each neck, counting down:
    ;
    STA GleeokCurNeck
@LoopNeck:
    ; If the bit for this neck is in the dead neck mask,
    ; then go loop again.
    ;
    LDY GleeokCurNeck
    LDA LevelMasks, Y
    BIT GleeokDeadNeckMask
    BEQ :+
    JMP @NextLoopNeck

:
    ; Get the addresses of this neck's segment data arrays.
    ;
    JSR Gleeok_FetchNeckAddrs
@LoadNeckBytes:
    ; Load neck data.
    ;
    ; For each segment from 5 to 0, indexed by Y register:
    ; - load coordinates into object slots 6 to 1
    ; - load miscellany into an array at [0413]
    ;
    LDA ($00), Y
    STA a:ObjX+1, Y
    LDA ($02), Y
    STA a:ObjY+1, Y
    LDA ($04), Y
    STA Gleeok_ObjHeadInfo, Y
    DEY
    BPL @LoadNeckBytes
    ; Each screen frame, one neck is chosen to move and try to shoot.
    ;
    LDA FrameCounter
    AND #$03
    STA $00
    CPX $00
    BNE @DrawAndCheckCollisions
    JSR Gleeok_MoveNeck
    JSR Gleeok_MoveHead
    ; The head is in object slot 5. Set it for when we want to shoot,
    ; so that it looks like the fireball came from the head.
    ;
    LDX #$05
    ; If Random < $20, and there's no object (fireball) in slot $B,
    ; then shoot fireball $56.
    ;
    LDA Random, X
    CMP #$20
    BCS @DrawAndCheckCollisions
    LDA ObjType+11
    BNE @DrawAndCheckCollisions
    LDA #$56
    JSR ShootFireball
@DrawAndCheckCollisions:
    ; This is run for all necks.
    ;
    JSR Gleeok_DrawHeadAndCheckCollisions
    ; Store the neck data.
    ;
    JSR Gleeok_FetchNeckAddrs
@SaveNeckBytes:
    LDA a:ObjX+1, Y
    STA ($00), Y
    LDA a:ObjY+1, Y
    STA ($02), Y
    LDA Gleeok_ObjHeadInfo, Y
    STA ($04), Y
    DEY
    BPL @SaveNeckBytes
@NextLoopNeck:
    ; Bottom of the neck loop.
    ; Decrement the neck index until it < 0.
    ;
    DEC GleeokCurNeck
    BPL @LoopNeck
    RTS

; Returns:
; X: neck index
; Y: 5 -- the last segment index
; [00:01]: address of segment X array
; [02:03]: address of segment Y array
; [04:05]: address of segment miscellaneous array
;
Gleeok_FetchNeckAddrs:
    LDX GleeokCurNeck
    LDA GleeokNeckXAddrsLo, X
    STA $00
    LDA GleeokNeckXAddrsHi, X
    STA $01
    LDA GleeokNeckYAddrsLo, X
    STA $02
    LDA GleeokNeckYAddrsHi, X
    STA $03
    LDA GleeokNeckMiscAddrsLo, X
    STA $04
    LDA GleeokNeckMiscAddrsHi, X
    STA $05
    LDY #$05                    ; Start loading data from segment 5.
    RTS

L_Gleeok_UDiv4:
    LSR
    LSR
    JMP L_Gleeok_StoreRefSegDistance

Gleeok_MoveNeck:
    ; Get the H-distance from the head to the base.
    ;
    LDA ObjX+5
    SEC
    SBC ObjX+1
    ; If the difference is positive, then go divide by 4 unsigned.
    ;
    BPL L_Gleeok_UDiv4
    ; Else divide by 4 signed.
    ;
    JSR Negate
    LSR
    LSR
    JSR Negate
L_Gleeok_StoreRefSegDistance:
    ; Store the signed reference segment distance.
    ;
    STA GleeokSignedRefSegmentDistance
    ; Get the absolute horizontal reference segment distance.
    ; This is the first tier of reference distances.
    ;
    ; Pass the value here to calculate and store the
    ; second and third tier horizontal distances.
    ;
    JSR Abs
    LDX #$00                    ; 0 for horizontal distances.
    JSR Gleeok_CalcSegmentLimits
    ; Get the absolute V-distance from the head to the base,
    ; and divide it be 4.
    ;
    LDA ObjY+5
    SEC
    SBC ObjY+1
    JSR Abs
    LSR
    LSR
    ; Calculate and store the second and third tier vertical distances.
    ;
    INX
    JSR Gleeok_CalcSegmentLimits
    ; Keep segments within the third tier distance of each other.
    ; Any segment that is too far from the previous one is moved
    ; 2 pixels toward it.
    ;
    ; Loop over the 4 segments above the base, from 0 to 3,
    ; accessing slots 2 to 5.
    ;
    LDX #$00
@KeepSegsNearNeighbors:
    ; Get the absolute H-distance between the current segment
    ; and the previous one.
    ;
    LDA ObjX+1, X
    SEC
    SBC ObjX+2, X
    JSR Abs
    ; If H-distance < third tier H-distance, then this distance is OK.
    ; Go look at the vertical distance.
    ;
    CMP GleeokTertiarySegmentLimits
    BCC @CheckDistanceV
    ; Otherwise, generally, bring this segment closer to
    ; the previous one by 2 pixels.
    ;
    LDA ObjX+2, X
    TAY
    INY
    INY
    CMP ObjX+1, X
    BCC :+
    DEY
    DEY
    DEY
    DEY
:
    STY ObjX+2, X
@CheckDistanceV:
    ; Get the absolute V-distance between the current segment
    ; and the previous one.
    ;
    LDA ObjY+1, X
    SEC
    SBC ObjY+2, X
    JSR Abs
    ; If V-distance < third tier V-distance, then this distance is OK.
    ; Go loop again.
    ;
    CMP GleeokTertiarySegmentLimits+1
    BCC @NextKeepSegsNearNeighbors
    ; Otherwise, generally, bring this segment closer to
    ; the previous one by 2 pixels.
    ;
    LDA ObjY+2, X
    TAY
    INY
    INY
    CMP ObjY+1, X
    BCC :+
    DEY
    DEY
    DEY
    DEY
:
    STY ObjY+2, X
@NextKeepSegsNearNeighbors:
    ; Bottom of the loop keeping segments from getting too far apart.
    ;
    INX
    CPX #$04
    BNE @KeepSegsNearNeighbors
    ; Stretch or contract depending on the distance of one segment to the next.
    ;
    LDX #$00
:
    JSR Gleeok_StretchNeck
    INX
    CPX #$03
    BCC :-
    ; TODO:
    ;
    ; [04D8] is the quarter horizontal distance from the head to the base.
    ; It represents the reference distance from each segment to the base.
    ; Multiples of it are used to mark the reference point of each segment.
    ; Move every segment one pixel closer to its reference point.
    ;
    ; Loop over each middle segment, from 2 to 0 in X register.
    ; Access object slots 4 to 2.
    ;
    LDX #$02
@KeepSegsNearRefPoint:
    ; Calculate the reference X coordinate:
    ;   base X + ([04D8] * (loop index + 1))
    ;
    TXA
    TAY
    LDA ObjX+1
:
    CLC
    ADC GleeokSignedRefSegmentDistance
    DEY
    BPL :-
    ; If current segment X < reference X, add 1 to it.
    ; Else subtract 1.
    ;
    LDY ObjX+2, X
    INY
    CMP ObjX+2, X
    BCS @NextKeepSegsNearRefPoint
    DEY
    DEY
@NextKeepSegsNearRefPoint:
    ; Store the new segment X, and loop again.
    ;
    STY ObjX+2, X
    DEX
    BPL @KeepSegsNearRefPoint
    ; Keep the segments in slots 4 and 3 between their neighbors vertically.
    ; So if they're not, then move them 1 pixel toward that goal.
    ;
    LDX #$01
@KeepSegsBetweenNeighbors:
    LDA ObjY+3, X
    CMP ObjY+2, X
    BCS :+
    CMP ObjY+4, X
    BCS @NextKeepSegsBetweenNeighbors
    INC ObjY+3, X
    JMP @NextKeepSegsBetweenNeighbors

:
    CMP ObjY+2, X
    BCC @NextKeepSegsBetweenNeighbors
    CMP ObjY+4, X
    BCC @NextKeepSegsBetweenNeighbors
    DEC ObjY+3, X
@NextKeepSegsBetweenNeighbors:
    DEX
    BPL @KeepSegsBetweenNeighbors
    RTS

; Params:
; A: primary reference segment distance
; X: 0 for horizontal, 1 for vertical
;
; Store primary distance, capped at 4.
;
Gleeok_CalcSegmentLimits:
    CMP #$04
    BCC :+
    LDA #$04
:
    STA GleeokPrimarySegmentLimits, X
    ; Add 4 and store secondary distance, capped at 8.
    ;
    CLC
    ADC #$04
    CMP #$08
    BCC :+
    LDA #$08
:
    STA GleeokSecondarySegmentLimits, X
    ; Add 4 and store tertiary distance, capped at $B.
    ;
    CLC
    ADC #$04
    CMP #$0B
    BCC :+
    LDA #$0B
:
    STA GleeokTertiarySegmentLimits, X
    RTS

; Params:
; X: segment index (0 to 2, corresponding to slots 2 to 4)
;
; Choose the index of a routine that will move the segment
; based on which boundaries are crossed.
;
; 0 will be used, if X and Y are within primary distances of
; the next segment.
;
Gleeok_StretchNeck:
    LDY #$00
    ; If the absolute H-distance >= primary reference segment distance,
    ; then increment the routine index.
    ;
    LDA ObjX+3, X
    SEC
    SBC ObjX+3, X               ; TODO: seems to be a mistake. shout probably be ObjX+2,X
    JSR Abs
    CMP GleeokPrimarySegmentLimits
    BCC :+
    INY
:
    ; If the absolute H-distance >= secondary reference segment distance,
    ; then increment the routine index.
    ;
    CMP GleeokSecondarySegmentLimits
    BCC :+
; Unknown block
    .BYTE $C8

:
    ; If the absolute V-distance >= primary reference segment distance,
    ; then add 3 to the routine index.
    ;
    LDA ObjY+3, X
    SEC
    SBC ObjY+2, X
    JSR Abs
    CMP GleeokPrimarySegmentLimits+1
    BCC :+
    INY
    INY
    INY
:
    ; If the absolute V-distance >= secondary reference segment distance,
    ; then add 3 to the routine index.
    ;
    CMP GleeokSecondarySegmentLimits+1
    BCC :+
    INY
    INY
    INY
:
    TYA
    JSR TableJump
Gleeok_StretchNeck_JumpTable:
    .ADDR Gleeok_ExpandSegment
    .ADDR Gleeok_IgnoreSegment
    .ADDR Gleeok_ContractSegmentX
    .ADDR Gleeok_IgnoreSegment
    .ADDR Gleeok_IgnoreSegment
    .ADDR Gleeok_ContractSegmentX
    .ADDR Gleeok_ContractSegmentY
    .ADDR Gleeok_ContractSegmentY
    .ADDR Gleeok_ContractSegment

Gleeok_ExpandSegment:
    ; Randomly, 50% of the time, go move away from the next segment horizontally.
    ;
    LDA Random
    BPL L_Gleeok_ExpandHorizontally
    ; Else move away vertically.
    ;
    LDA ObjY+2, X
    TAY
    INY
    INY
    CMP ObjY+3, X
    BEQ L_Gleeok_DecSegmentY
    BCS L_Gleeok_SetSegmentY
L_Gleeok_DecSegmentY:
    DEY
    DEY
    DEY
    DEY
L_Gleeok_SetSegmentY:
    STY ObjY+2, X
Gleeok_IgnoreSegment:
    RTS

Gleeok_ContractSegmentY:
    ; Move toward the next segment vertically.
    ;
    LDA ObjY+2, X
    TAY
    INY
    INY
    CMP ObjY+3, X
    BEQ L_Gleeok_SetSegmentY
    BCC L_Gleeok_SetSegmentY
    BCS L_Gleeok_DecSegmentY
L_Gleeok_ExpandHorizontally:
    ; Move away from the next segment horizontally.
    ;
    LDA ObjX+2, X
    TAY
    INY
    INY
    CMP ObjX+3, X
    BCS L_Gleeok_SetSegmentX
    BCC L_Gleeok_DecSegmentX
Gleeok_ContractSegmentX:
    ; Move toward the next segment horizontally.
    ;
; Unknown block
    .BYTE $B5, $72, $A8, $C8, $C8, $D5, $73, $90
    .BYTE $04

L_Gleeok_DecSegmentX:
    DEY
    DEY
    DEY
    DEY
L_Gleeok_SetSegmentX:
    STY ObjX+2, X
    RTS

Gleeok_ContractSegment:
    ; Randomly, 50% of the time, go move toward the next segment horizontally.
    ; Else go move vertically.
    ;
; Unknown block
    .BYTE $A5, $18, $10, $EC, $30, $D2

; Description:
; This block applies to heads and the bottom segment of a neck.
; These are drawn with sprites that come first in order, so that
; they are drawn above all other sprites, including Link.
;
; Params:
; A: tile number
;
; Normal sprite with level palette row
Gleeok_WriteHeadOrBaseSpriteAndCheckCollisions:
    LDY #$03
    STY $03                     ; [03] holds sprite attributes
    PHA                         ; Save the tile number.
    ; To calculate the base offset of the sprite record:
    ; offset := neck index * 8
    ;
    ; This ends up pointing to one of the first 8 eight sprites,
    ; at an even index.
    ;
    LDA GleeokCurNeck
    ASL
    ASL
    ASL
    ; But if the segment is not a head (not at object slot 5), then
    ; add $20. This moves the offset to the second set of 8 sprites.
    ;
    CPX #$05
    BEQ :+
    CLC
    ADC #$20
:
    TAY
    PLA                         ; Restore the tile number.
    JSR Anim_WriteSpecificSprite
    JMP Gleeok_CheckCollisions

Gleeok_DrawHeadAndCheckCollisions:
    LDX #$05                    ; Head object slot
Gleeok_DrawSegmentAndCheckCollisions:
    LDA #$DA                    ; Neck segment tile
    CPX #$05
    BNE :+
    LDA #$DC                    ; Head tile
:
    CPX #$05
    BEQ Gleeok_WriteHeadOrBaseSpriteAndCheckCollisions
    CPX #$01
    BEQ Gleeok_WriteHeadOrBaseSpriteAndCheckCollisions
    ; The segment is not a head nor bottom. So, we can use a
    ; standard routine to draw. It uses one of the rolling sprites
    ; that is drawn under Link and the heads.
    ;
    JSR Anim_WriteLevelPaletteSprite
Gleeok_CheckCollisions:
    ; If this segment is not the head nor the bottom of the neck,
    ; then loop again to process the next segment.
    ;
    ; This kind of segment is only drawn, and is not checked
    ; for object collisions.
    ;
    CPX #$05
    BEQ :+
    CPX #$01
    BEQ :+
    JMP @NextLoopSegment

:
    JSR CheckMonsterCollisions
    ; If this segment was harmed, then set the writhing counter,
    ; and the animation counter to its lower value.
    ;
    LDA a:ObjShoveDir, X
    BEQ :+
    LDA #$06
    STA GleeokAnimationTimer
    STA Gleeok_WrithingCounter
:
    JSR ResetShoveInfo
    ; If this is the bottom segment, then go reset metastate and loop again.
    ; Gleeok can writhe when it's hit here, but it can't die.
    ;
    CPX #$01
    BEQ @ResetMetastate
    JSR PlayBossHitCryIfNeeded
    ; If this neck has not died, then go loop again.
    ;
    LDA ObjMetastate, X
    BEQ @NextLoopSegment
    ; This neck died. So, prepare to make a flying head.
    ;
    LDA #$60
    STA ObjHP, X                ; TODO: I don't see why this is needed, since it won't go in this obj slot.
    TXA                         ; Save the segment object slot in X.
    PHA
    ; If the segment is not a head, then skip making a flying head.
    ;
    ; TODO:
    ; But how can we get here in this case, since earlier branches
    ; would have been taken to skip all this for all other segments?
    ;
    CPX #$05
    BNE @DestroyNeck
    ; The flying head will go in slot (neck index + 7).
    ; Switch the X register to it.
    ;
    LDA GleeokCurNeck
    CLC
    ADC #$07
    TAX
    ; Flag it uninitialized, so that it will be initialized next frame.
    ;
    LDA #$FF
    STA ObjUninitialized, X
    ; Copy the original head's coordinates to it.
    ;
    LDA ObjX+5
    STA ObjX, X
    LDA ObjY+5
    STA ObjY, X
    ; Set object type $46 (flying head).
    ;
    LDA #$46
    STA ObjType, X
@DestroyNeck:
    PLA                         ; Restore the segment object slot in X.
    TAX
    ; Hide the original head's sprite, and the base segment's sprite.
    ;
    LDA GleeokCurNeck
    ASL
    ASL
    ASL
    TAY
    LDA #$F8
    STA Sprites, Y
    STA Sprites+32, Y
    ; Add the bit for this neck to the dead neck mask.
    ; Copy it to [00].
    ;
    LDY GleeokCurNeck
    LDA LevelMasks, Y
    ORA GleeokDeadNeckMask
    STA GleeokDeadNeckMask
    STA $00
    ; Loop over the four bits in the copy of the dead neck mask.
    ; Count them up, and store the amount in [00].
    ;
    LDA #$00
    LDY #$04
:
    LSR $00
    ADC #$00
    DEY
    BNE :-
    STA $00
    ; Compare the number of dead necks to the original number
    ; (object type - $41).
    ;
    LDA ObjType+1
    SEC
    SBC #$41
    CMP $00
    ; If they're equal, then go handle the whole boss dying.
    ;
    BEQ @BossDied
    ; Else reset object metastate of the segment, and return.
    ;
    JMP ResetObjMetastate

@ResetMetastate:
    JSR ResetObjMetastate
@NextLoopSegment:
    ; Bottom of the segment loop.
    ; Decrement segment object slot.
    ;
    ; If >= 1, then go draw the next segment and check collisions.
    ; Else return.
    ;
    DEX
    CPX #$01
    BCC L127FA_Exit
    JMP Gleeok_DrawSegmentAndCheckCollisions

@BossDied:
    ; The whole gleeok died, because the last neck died.
    ;
    ; First, hide the first $10 sprites: the attached heads.
    ;
    JSR WriteBlankPrioritySprites
    JSR PlayBossDeathCry
    ; We want a death spark. So, set the metastate of the first
    ; monster slot to $11.
    ;
    LDA #$11
    STA ObjMetastate+1
    ; Reset the object type of slots 2 to $A.
    ;
    ; Beware a left over fireball in slot $B!
    ;
    LDY #$01
@DestroyFireballs:
    LDA #$00
    STA ObjType+1, Y
    INY
    CPY #$0A
    BCC @DestroyFireballs
    RTS

Gleeok_MoveHead:
    ; Don't do anything until the head's initial timer expires.
    ;
    LDA Gleeok_ObjHeadDelay
    BNE Gleeok_DecHeadTimer
    ; Add 1 or -1 to X as needed.
    ;
    LDA ObjX+5
    LDY Gleeok_ObjHeadSpeedX
    JSR Gleeok_ChangeCoordinateBySpeedFlag
    STA ObjX+5
    ; Add 1 or -1 to Y as needed.
    ;
    LDA ObjY+5
    LDY Gleeok_ObjHeadSpeedY
    JSR Gleeok_ChangeCoordinateBySpeedFlag
    STA ObjY+5
    ; Increment the counter to change directions.
    ; If it's still < 4, then return.
    ;
    INC Gleeok_ObjHeadDirChangeCounter
    LDA Gleeok_ObjHeadDirChangeCounter
    CMP #$04
    BCC L127FA_Exit
    ; The counter reached 4. So, reset it.
    ; Then check the individual direction counters.
    ;
    LDA #$00
    STA Gleeok_ObjHeadDirChangeCounter
    ; Increment the horizontal direction counter.
    ; If >= $C, then reset the counter, and flip direction.
    ;
    INC Gleeok_ObjHeadDirCounterH
    LDA Gleeok_ObjHeadDirCounterH
    CMP #$0C
    BCC @CheckVertical
    LDA #$00
    STA Gleeok_ObjHeadDirCounterH
    LDA Gleeok_ObjHeadSpeedX
    EOR #$FF
    STA Gleeok_ObjHeadSpeedX
@CheckVertical:
    ; Increment the vertical direction counter.
    ; If >= 6, then reset the counter, and flip direction.
    ;
    INC Gleeok_ObjHeadDirCounterV
    LDA Gleeok_ObjHeadDirCounterV
    CMP #$06
    BCC L127FA_Exit
    LDA #$00
    STA Gleeok_ObjHeadDirCounterV
    LDA Gleeok_ObjHeadSpeedY
    EOR #$FF
    STA Gleeok_ObjHeadSpeedY
L127FA_Exit:
    RTS

Gleeok_DecHeadTimer:
    DEC Gleeok_ObjHeadDelay
    RTS

; Params:
; A: a value to change
; Y: 0 => increment, 1 => decrement
;
; Returns:
; A: original value +/- 1
;
Gleeok_ChangeCoordinateBySpeedFlag:
    BNE @Subtract
    CLC
    ADC #$01
    RTS

@Subtract:
    SEC
    SBC #$01
    RTS

GleeokBodyTiles0:
    .BYTE $C0, $C4, $C8, $C2, $C6, $CA

GleeokBodyTiles1:
    .BYTE $CC, $C4, $CE, $C2, $C6, $D0

GleeokBodyTiles2:
    .BYTE $D2, $D6, $D8, $D4, $C6, $D0

GleeokBodyBaseTileOffsets:
    .BYTE $06, $00, $06, $0C

L_Gleeok_DecAnimTimerAndDraw:
    ; Decrement animation timer, and go draw.
    ;
    DEC GleeokAnimationTimer
    JMP L_Gleeok_WriteSprites

Gleeok_DrawBody:
    ; The animation timer controls when the animation frame changes.
    ; If it has not expired, then go decrement it and draw.
    ;
    LDA GleeokAnimationTimer
    BNE L_Gleeok_DecAnimTimerAndDraw
    ; The animation timer has expired. There are two choices for arming it.
    ;
    ; When writhing after a hit, Gleeok animates faster.
    ; So, when the writhing counter <> 0, set a shorter time (6).
    ; Otherwise, set a longer time ($10).
    ;
    LDA #$10
    LDY Gleeok_WrithingCounter
    BEQ :+
    DEC Gleeok_WrithingCounter
    LDA #$06
:
    STA GleeokAnimationTimer
    ; Cycle the animation frame from 0 to 3.
    ;
    LDA GleeokBodyAnimationFrame
    CLC
    ADC #$01
    AND #$03
    STA GleeokBodyAnimationFrame
L_Gleeok_WriteSprites:
    ; For each row, from 0 to 1, indexed by [06]:
    ;
    LDA #$00
    STA $06
    ; Get the base tile offset for the current animation frame.
    ;
    LDY GleeokBodyAnimationFrame
    LDX GleeokBodyBaseTileOffsets, Y
@LoopDrawRow:
    ; For each column from 0 to 2, indexed by [07]:
    ;
    LDA #$00
    STA $07
@LoopDrawColumn:
    ; Point to the next rolling sprite record.
    ;
    LDY RollingSpriteIndex
    LDA SpriteOffsets, Y
    TAY
    ; Set sprite's Y to ($57 + row * $10).
    ;
    LDA $06
    ASL
    ASL
    ASL
    ASL
    ADC #$57
    STA Sprites, Y
    ; Look up and set the tile for this spot.
    ;
    LDA GleeokBodyTiles0, X
    STA Sprites+1, Y
    ; If temporarily invincible, then set sprite attributes to
    ; cycled palette rows.
    ;
    ; Else use level palette row 7.
    ;
    LDA ObjInvincibilityTimer+5
    BNE :+
    LDA #$03
:
    AND #$03
    STA Sprites+2, Y
    ; Set sprite's X to ($74 + column * 8).
    ;
    LDA $07
    ASL
    ASL
    ASL
    ADC #$74
    STA Sprites+3, Y
    ; Increment the index for fetching tiles.
    ;
    INX
    JSR CycleCurSpriteIndex
    ; Bottom of the column loop.
    ; Increment the column until it = 3.
    ;
    INC $07
    LDA $07
    CMP #$03
    BCC @LoopDrawColumn
    ; Bottom of the row loop.
    ; Increment the row until it = 2.
    ;
    INC $06
    LDA $06
    CMP #$02
    BCC @LoopDrawRow
    RTS

; Unknown block
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
    .BYTE $FF, $FF, $FF

GuardFireXs:
    .BYTE $78, $60, $70, $80, $90

GuardFireYs:
    .BYTE $88, $B5, $9D, $9D, $B5

InitZelda:
    ; Make Zelda and 4 flames that guard her, in object slots 5 to 1.
    ;
    LDX #$05
:
    ; Look up and set the location of each object.
    ;
    LDA GuardFireXs-1, X
    STA ObjX, X
    LDA GuardFireYs-1, X
    STA ObjY, X
    LDA #$3F                    ; Guard fire object type
    STA ObjType, X
    DEX
    BNE :-
    ; Replace the type of the object in slot 1 with $37: Zelda.
    ;
    LDA #$37
    STA ObjType+1
    RTS

InitLamnola:
    ; Make $A segments.
    ;
    LDY #$09
:
    ; Starting location is ($40, $8D) and direction is 0.
    ;
    LDA #$40
    STA a:ObjX+1, Y
    LDA #$8D
    STA a:ObjY+1, Y
    LDA #$00
    STA a:ObjDir+1, Y
    ; Each segment is flagged initialized and ready to update.
    ;
    STA ObjMetastate+1, Y
    STA ObjUninitialized+1, Y
    ; This Lamnola that's making additional segments is in slot 1.
    ; Copy its object attributes, HP, and type to the others.
    ;
    LDA ObjAttr+1
    STA ObjAttr+1, Y
    LDA ObjHP+1
    STA ObjHP+1, Y
    LDA ObjType+1
    STA ObjType+1, Y
    DEY
    BPL :-
    ; TODO:
    ; Only the heads in slots 5 and $A have a direction and [0380][X] set.
    ;
    LDA #$08
    STA ObjDir+5
    STA $0385
    STA ObjDir+10
    STA $038A
    ; Remember the object type, and set speed to (object type - $39):
    ; 1 or 2.
    ;
    LDA ObjType+1
    STA Lamnola_Type
    SEC
    SBC #$39
    STA Lamnola_Speed
    ; TODO:
    ; Do the heads not count?
    ;
    LDA #$08
    STA RoomObjCount
    RTS

InitPatra:
    ; Invincible to everything but sword.
    ;
    LDA #$FE
    STA ObjInvincibilityMask, X
    ; Start at location ($80, $70) and facing up.
    ;
    LDA #$80
    STA ObjX, X
    LDA #$70
    STA ObjY, X
    LDA #$08
    STA ObjDir, X
    ; Set flying speed $1F, and maximum $40.
    ;
    LDA #$1F
    STA Flyer_ObjSpeed, X
    LDA #$40
    STA FlyingMaxSpeedFrac
    ; TODO: set [0601] to $40
    ;
    STA SampleRequest
    ; Set object timer to $FF. When it runs out, the maneuver will be switched.
    ;
    LDA #$FF
    STA ObjTimer+1, X
    ; Patra type $47 goes with Patra Child type $25.
    ; Patra type $48 goes with Patra Child type $26.
    ;
    LDA #$25
    LDY ObjType+1
    CPY #$47
    BEQ :+
    LDA #$26
:
    ; Loop over object slots 2 to 9, making patra children.
    ;
    LDY #$02
    STA $00                     ; [00] holds the patra child type.
:
    LDA $00
    STA ObjType, Y
    LDA #$FE                    ; Patra children are also only weak to the sword.
    STA ObjInvincibilityMask, Y
    INY
    CPY #$0A
    BNE :-
    RTS

InitGanon:
    LDA #$FA                    ; Invincible to everything but sword and arrow.
    STA ObjInvincibilityMask, X
    ; Halt Link.
    ;
    LDA #$40
    STA ObjState
    ; Set Link's timer to $40 for scene phase 0.
    ;
    STA ObjTimer
    ; TODO: ?
    ;
    LDA #$02
    STA SampleRequest
    LDA #$10
    JSR PlaySample
    JMP ResetObjMetastateAndTimer

UpdateZelda:
    JSR Person_Draw
    LDA ObjState, X
    BNE UpdateZelda_State1
    ; State 0.
    ;
    ; If Link's X < $70 or >= $81, or Link's Y <> $95, then return.
    ;
    LDA ObjX
    CMP #$70
    BCC L129B7_Exit
    CMP #$81
    BCS L129B7_Exit
    LDA ObjY
    CMP #$95
    BNE L129B7_Exit
    ; Else Link is near enough to Zelda.
    ; Go to state 1, and halt Link.
    ;
    INC ObjState, X
    LDA #$40
    STA ObjState
    ; Put Link at location ($88, $88) and facing left.
    ;
    LDA #$88
    STA ObjX
    STA ObjY
    LDA #$02
    STA ObjDir
    ; Play the Zelda fanfare.
    ;
    LDA #$06
    STA SongRequest
    ; Set a delay of $80 frames at the beginning of the next state.
    ;
    LDA #$80
    STA ObjTimer, X
L129B7_Exit:
    RTS

UpdateZelda_State1:
    ; State 1.
    ;
    ; Draw Link, then return if the object timer <> 0.
    ;
    JSR Link_EndMoveAndDraw_Bank4
    LDA ObjTimer, X
    BNE L129B7_Exit
    ; Go to mode $13.
    ;
    STA IsUpdatingMode
    STA GameSubmode
    STA ObjState
    LDA #$13
    STA GameMode
    ; Mode $13 will start with a curtain furling effect.
    ; Set up the decreasing column ($20), and the increasing column (1).
    ; Prepare the background by filling the tile map with blank tile $24.
    ;
    LDA #$20
    STA ObjX+12
    LDA #$01
    STA ObjX+13
    LDA #$24
    STA $0A                     ; [0A] tile to fill with
    JMP FillTileMap

UpdateGuardFire:
    LDA #$06                    ; Animation counter 6
    JSR AnimateAndDrawCommonObject
    JSR CheckMonsterCollisions
    ; If the object has not been killed, then return.
    ; Else change the object type to dead dummy.
    ;
    LDA ObjMetastate, X
    BEQ L129EA_Exit
SetDeadDummyObjType:
    LDA #$5D
    STA ObjType, X
L129EA_Exit:
    RTS

UpdateLamnola:
    ; If the direction of this segment is not set, then it has not started
    ; moving yet. So, return.
    ;
    LDA ObjDir, X
    BEQ L129EA_Exit
    ; If we have the magic clock, then go draw and check collisions.
    ;
    LDA InvClock
    BNE @DrawAndCheckCollisions
    JSR Lamnola_Move
    ; If the current segment is a head, then update the direction it's facing.
    ;
    CPX #$05
    BEQ :+
    CPX #$0A
    BNE @DrawAndCheckCollisions
:
    JSR Lamnola_UpdateHead
@DrawAndCheckCollisions:
    LDA ObjX, X
    PHA                         ; Save the X coordinate.
    ; Each segment is a full 16x16 object. But, it's drawn as a narrow,
    ; half-width object. So, center it by temporarily adding 4 to X.
    ;
    CLC
    ADC #$04
    STA ObjX, X
    ; The speed is 1 or 2. By swapping them, you get sprite attributes
    ; to store in [03].
    ;
    LDA Lamnola_Speed
    EOR #$03
    STA $03
    ; If the segment is a head, then use tile $9E, else $A0.
    ;
    LDA #$9E
    CPX #$05
    BEQ @Draw
    CPX #$0A
    BEQ @Draw
    LDA #$A0
@Draw:
    JSR Anim_WriteSprite
    PLA                         ; Restore the X coordinate.
    STA ObjX, X
    LDA ObjDir, X               ; Save the facing direction.
    PHA
    JSR CheckMonsterCollisions
    PLA                         ; Restore the facing direction.
    STA ObjDir, X
    ; If still alive, then return.
    ;
    LDA ObjMetastate, X
    BEQ L129EA_Exit
    ; Otherwise, the segment is dead.
    ;
    JSR ResetShoveInfo
    ; Set the current segment's HP to the initial value in anticipation
    ; of bringing this segment back to life.
    ;
    LDA #$20
    STA ObjHP, X
    ; Find the tail of the lamnola that the current segment belongs to.
    ;
    ; From the lowest slot, look for one that has the original lamnola
    ; object type.
    ;
    ; The goal is to swap the current dead segment with the tail segment.
    ;
    LDY #$FF
    CPX #$06
    BCC @FindTail
    LDY #$04
@FindTail:
    INY
    LDA ObjType+1, Y
    CMP Lamnola_Type
    BNE @FindTail
    ; Set the timer for the dead dummy object that will replace the tail.
    ;
    LDA #$11
    STA a:ObjTimer+1, Y
    ; Copy the current dead segment's invincibility timer, X, and Y
    ; to the tail segment.
    ;
    LDA ObjInvincibilityTimer, X
    STA ObjInvincibilityTimer+1, Y
    LDA ObjX, X
    STA a:ObjX+1, Y
    LDA ObjY, X
    STA a:ObjY+1, Y
    ; If the tail segment found is a head, then the whole lamnola died.
    ; So, return and leave it dead.
    ;
    CPY #$04
    BEQ L129EA_Exit
    CPY #$09
    BEQ L129EA_Exit
    ; Change the tail segment to the dead dummy object, and
    ; bring the current segment back to life.
    ;
    LDA #$5D
    STA ObjType+1, Y
    JMP ResetObjMetastate

L12A6F_Exit:
    RTS

Lamnola_UpdateHead:
    ; If X coordinate is not a multiple of 8, then return.
    ;
    LDA ObjX, X
    AND #$07
    BNE L12A6F_Exit
    ; If (Y + 3) is not a multiple of 8, then return.
    ; We had to account for the usual offset of 3.
    ;
    LDA ObjY, X
    CLC
    ADC #$03
    AND #$07
    BNE L12A6F_Exit
    ; Will loop 4 times, propagating directions down the chain,
    ; by pulling from the bottom.
    ;
    LDA #$04
    STA $00
    ; Choose the tail index of the lamnola that the current segment belongs to.
    ;
    LDY #$00
    CPX #$05
    BEQ @PropagateDirs
    LDY #$05
@PropagateDirs:
    ; Loop over every segment under the head, starting from the tail.
    ; Copy the next segment's direction to the current one in this loop.
    ;
    LDA a:ObjDir+2, Y
    STA a:ObjDir+1, Y
    INY
    DEC $00
    BNE @PropagateDirs
    ; If this head segment is not aligned with a square, then return.
    ;
    LDA ObjX, X
    AND #$0F
    BNE @Exit
    ; If (Y + 3) is not a multiple of $10, then return.
    ; We had to account for the usual offset of 3.
    ;
    LDA ObjY, X
    CLC
    ADC #$03
    AND #$0F
    BNE @Exit
    ; Store the opposite of the facing direction in [00].
    ;
    LDA ObjDir, X
    LSR
    AND #$05
    STA $00
    LDA ObjDir, X
    ASL
    AND #$0A
    ORA $00
    ; Make a mask of the inverted bits of the opposite direction.
    ;
    EOR #$0F
    STA LamnolaViableDirMask
    ; There's a 50% chance of going to try to turn toward Link.
    ;
    LDA Random, X
    CMP #$80
    BCC @TurnTowardLink
    ; Otherwise, we randomly choose a perpendicular direction.
    ; Load the monster's facing direction.
    ;
    LDA ObjDir, X
    ; Load the next random number into Y register.
    ;
    LDY Random+1, X
    ; Based on it, there's a 50% chance of skipping the loop,
    ; to keep moving straight.
    ;
    CPY #$80
    BCS @SetDirAndCheckTiles
@LoopFindPerpendicular:
    ; Loop to rotate the direction bit over the mask.
    ; The goal is to calculate a direction perpendicular to the monster's
    ; facing direction.
    ;
    ; Shift right the copy of the direction.
    ; If the direction bit rolled off the low end, then roll it onto the high end.
    ;
    LSR
    BCC :+
    LDA #$08
:
    ; If the current direction bit is masked off, then we've reached
    ; the opposite direction. Loop again.
    ;
    BIT LamnolaViableDirMask
    BEQ @LoopFindPerpendicular
    ; If Y register >= $40, then break out of the loop.
    ; So, 75% of the time, if horizontal, then turn up, else left.
    ;
    CPY #$40
    BCS @SetDirAndCheckTiles
    ; Set Y register to $40 in order to break out of the loop next time;
    ; and loop again now.
    ; So, 25% of the time, if horizontal, then turn down, else right.
    ;
    LDY #$40
    BCC @LoopFindPerpendicular
@SetDirAndCheckTiles:
    ; Change the facing direction to the direction found.
    ;
    STA ObjDir, X
    ; Set moving direction [0F] for boundary and tile checks.
    ;
    STA $0F
    JSR BoundByRoom
    ; If not blocked by the room boundary, then go check tile collision.
    ;
    LDA $0F
    BNE @CheckTileCollision
@FindNonOpposite:
    ; Else it was blocked. So, load the facing direction in preparation
    ; for looking for any non-opposite direction that is not blocked.
    ;
    LDA ObjDir, X
@LoopFindNonOpposite:
    ; Shift right the copy of the direction.
    ; If the direction bit rolled off the low end, then roll it onto the high end.
    ;
    LSR
    BCC :+
    LDA #$08
:
    ; If the current direction bit is not masked off, then go check the
    ; room boundary in this direction.
    ; Else we've reached the opposite direction. Loop again.
    ;
    BIT LamnolaViableDirMask
    BNE @SetDirAndCheckTiles
    BEQ @LoopFindNonOpposite
@CheckTileCollision:
    ; We found a direction that was not blocked by the room boundary.
    ; Check tile collision. If blocked by a tile, then go look for another direction.
    ;
    JSR GetCollidingTileMoving
    CMP ObjectFirstUnwalkableTile
    BCS @FindNonOpposite
@Exit:
    ; TODO: confirm this
    ;
    ; If there were a room that had lamnolas, and they could get
    ; surrounded on 3 sides, then the loop above would get stuck in
    ; an infinite loop.
    ;
    ; But, the only room with that configuration has those blocks
    ; blocked off with a push block, which can only be pushed after
    ; all monsters are killed.
    ;
    RTS

@TurnTowardLink:
    ; Find the horizontal direction toward Link and store it in [02].
    ;
    LDA #$01
    STA $02
    LDA ObjX
    SEC
    SBC ObjX, X
    BCS :+
    ASL $02
:
    ; Find the vertical direction toward Link and store it in [03].
    ;
    LDA #$04
    STA $03
    LDA ObjY
    SEC
    SBC ObjY, X
    BCS :+
    ASL $03
:
    ; If the horizontal direction toward Link is not allowed, then
    ; go check the vertical direction.
    ;
    LDA $02
    BIT LamnolaViableDirMask
    BEQ @SetVertical
    ; If the horizontal direction toward Link is the same direction
    ; that Link is facing, then go test it for tile and room boundary collision.
    ;
    BIT ObjDir
    BNE :+
@SetVertical:
    ; Load the vertical direction toward Link in order to test it for
    ; room boundary and tile collision.
    ;
    LDA $03
:
    ; Go test this direction for collisions with tiles or the room boundary.
    ;
    JMP @SetDirAndCheckTiles

Lamnola_Move:
    ; This code is similar to 04:96EB Digdogger_Move.
    ;
    ; Change coordinates by the appropriate speed according to the direction.
    ;
    ; Start with a mask of $A1 in [02]:
    ; - low nibble represents the right direction
    ; - high nibble is used to set or clear carry as we go along
    ;
    LDA #$A1
    STA $02
    ; If direction has a right component (1), then add offset to X coordinate.
    ;
    LDA ObjDir, X
    BIT $02
    BEQ @Left
    LDA ObjX, X
    CLC
    ADC Lamnola_Speed
    STA ObjX, X
@Left:
    ; If direction has a left component (2), then subtract offset from X coordinate.
    ;
    LDA ObjDir, X
    ASL $02                     ; Bit 7 of mask $A1 sets Carry now.
    BIT $02
    BEQ @Down
    LDA ObjX, X
    SBC Lamnola_Speed
    STA ObjX, X
@Down:
    ; If direction has a down component (4), then add offset to Y coordinate.
    ;
    LDA ObjDir, X
    ASL $02                     ; Bit 6 of mask $A1 clears Carry now.
    BIT $02
    BEQ @Up
    LDA ObjY, X
    ADC Lamnola_Speed
    STA ObjY, X
@Up:
    ; If direction has an up component (8), then subtract offset from Y coordinate.
    ;
    LDA ObjDir, X
    ASL $02                     ; Bit 5 of mask $A1 sets Carry now.
    BIT $02
    BEQ @Exit
    LDA ObjY, X
    SBC Lamnola_Speed
    STA ObjY, X
@Exit:
    RTS

PatraManeuverTime:
    ; TODO:
    ; Was this intended to be an array of two elements?
    ;
    .BYTE $FF

; Unknown block
    .BYTE $50

UpdatePatra:
    JSR ControlPatraFlight
    ; Reset flying distance traveled, so that we know what offset to
    ; apply to the children.
    ;
    LDA #$00
    STA Flyer_ObjOffsetX, X
    STA Flyer_ObjOffsetY, X
    JSR MoveFlyer
    LDA #$02                    ; 2 animation frames a screen frame
    JSR AnimateAndDrawCommonObject
    ; Loop over the object slots of the 8 children.
    ; If any are found, then go check for collision with Link only.
    ;
    LDY #$08
@LoopChildren:
    LDA ObjType+1, Y
    CMP #$25                    ; Patra Child 1 object type
    BEQ @CheckLinkCollision
    CMP #$26                    ; Patra Child 2 object type
    BEQ @CheckLinkCollision
    DEY
    BNE @LoopChildren
    ; If there are no children, then Link can harm Patra.
    ;
    JSR CheckMonsterCollisions
    JSR PlayBossHitCryIfNeeded
    JSR PlayBossDeathCryIfNeeded
    JMP @TryChangeManeuver

@CheckLinkCollision:
    ; Else there are child patras left.
    ; Link cannot harm Patra, but it can harm Link.
    ;
    JSR CheckLinkCollision
@TryChangeManeuver:
    ; If timer = 0 and the angle of patra child in slot 3 = 0, then
    ; flip the maneuver index.
    ;
    LDA ObjTimer+1, X
    ORA ObjAngleWhole+3
    BNE @Exit
    LDA Patra_ObjManeuverIndex, X
    EOR #$01
    STA Patra_ObjManeuverIndex, X
    TYA
    ; TODO:
    ; for this to make sense, Y must be 0 or 1. But where is is set?
    ;
    LDA PatraManeuverTime, Y
    STA ObjTimer+1, X
@Exit:
    RTS

ControlPatraFlight:
    LDA Flyer_ObjFlyingState, X
    JSR TableJump
ControlPatraFlight_JumpTable:
    .ADDR Flyer_SpeedUp
    .ADDR Flyer_PatraDecideState
    .ADDR Flyer_Chase
    .ADDR Flyer_Wander

Flyer_PatraDecideState:
    ; Go to the next state randomly:
    ; Random >= $40: 2
    ; Else:          3
    ;
    ; Set up 8 turns.
    ;
    LDY #$02
    LDA Random, X
    CMP #$40
    BCS :+
    INY
:
    TYA
    STA Flyer_ObjFlyingState, X
    LDA #$08
    STA Flyer_ObjTurns, X
    RTS

PatraChildStartAngles:
    .BYTE $14, $10, $0C, $08, $04, $00, $1C

PatraChild1RotationCosineBits:
    .BYTE $06

PatraChild2RotationBits:
    .BYTE $05

PatraChild1RotationSineBits:
    .BYTE $06, $06

UpdatePatraChild:
    ; If state = 1, then go orbit.
    ;
    LDA ObjState, X
    BNE PatraChild_State1
    ; State = 0.
    ;
    ; If the current object slot is 2, then go initialize the patra child.
    ; This is the only patra child shown in the first fame.
    ;
    CPX #$02
    BEQ @Ready
    ; The patra child in slot 2 is the last one to be updated.
    ; So all other patra children will see slot 2's state = 0, and return.
    ;
    ; This means that in the first frame, slot 2 is the only one to be
    ; shown.
    ;
    LDA ObjState+2
    BEQ @Exit
    ; In subsequent frames, patra children in slots >= 3 will reach
    ; here to wait to be shown at the top position (N) one at a time.
    ;
    TXA
    ; Subtract 3 from the object slot to get the angle where the
    ; patra child in object slot 2 should be for the current one to appear.
    ;
    SEC
    SBC #$03
    TAY
    ; If the patra child in slot 2 has not reached the required angle,
    ; then return.
    ;
    LDA ObjAngleWhole+2
    CMP PatraChildStartAngles, Y
    BNE @Exit
@Ready:
    ; Once the patra child in the last slot (9) reaches here, advance
    ; the patra parent's state.
    ;
    CPX #$09
    BNE :+
    INC ObjState+1
:
    ; Go to state 1 to orbit.
    ;
    INC ObjState, X
    ; TODO: ?
    ;
    LDA #$80
    STA ObjDir, X
    ; Set angle $18 (N).
    ;
    LDA #$18
    STA ObjAngleWhole, X
    ; This location is right above Patra.
    ; Set X coordinate to Patra's.
    ;
    LDA ObjX+1
    STA ObjX, X
    ; If patra child type = $25, then the radius of its orbit is $2C.
    ; Else use radius $18. Store the chosen value in [00].
    ;
    LDA #$2C
    LDY ObjType, X
    CPY #$25
    BEQ :+
    LDA #$18
:
    STA $00
    ; This location is right above Patra.
    ; Set Y coordinate to (Patra's Y - [00]).
    ;
    LDA ObjY+1
    SEC
    SBC $00
    STA ObjY, X
@Exit:
    RTS

PatraChild_State1:
    ; Add Patra's distance traveled since the last frame to this child's coordinates.
    ;
    LDA ObjX, X
    CLC
    ADC Flyer_ObjOffsetX+1
    STA ObjX, X
    LDA ObjY, X
    CLC
    ADC Flyer_ObjOffsetY+1
    STA ObjY, X
    ; Reset [0B]. The high byte of the amount to subtract is 0.
    ;
    LDA #$00
    STA $0B
    ; If the monster is type $25 Patra Child1, then decrease the
    ; monster's angle by $70, else by $60 to go slower.
    ;
    LDA #$70
    LDY ObjType, X
    CPY #$25
    BEQ :+
    LDA #$60
:
    JSR DecreaseObjectAngle
    ; Load Patra's maneuver index.
    ; It determines which counts of bits are looked up below.
    ;
    LDY Patra_ObjManeuverIndex+1
    ; If the monster is Patra Child 1 ($25), then look up two separate
    ; counts of bits to use for Y and X increment calculations in rotation.
    ; This leads to a large circle (6,6) and a wobbling ring (5,6).
    ;
    LDA ObjType, X
    CMP #$25
    BNE @UsePatraChild2Bits
    LDA PatraChild1RotationCosineBits, Y
    PHA
    LDA PatraChild1RotationSineBits, Y
    TAY
    PLA
    JMP @Rotate

@UsePatraChild2Bits:
    ; Else it's Patra Child 2 ($26). Look up one value that will be used
    ; for both Y and X increment calculations in rotation. This leads to
    ; a small circle (5) and a large circle (6).
    ;
    LDA PatraChild2RotationBits, Y
    TAY
@Rotate:
    JSR RotateObjectLocation
    STA ObjY, X
    JSR PatraChild_Draw
    ; If Patra's state still = 0, then the last patra child has not
    ; shown up yet. In this case don't check collisions yet, only return.
    ;
    LDA ObjState+1
    BEQ @Exit
    JSR CheckMonsterCollisions
    ; If the monster died, then change to the dead dummy object.
    ;
    LDA ObjMetastate, X
    BEQ @Exit
    JSR SetDeadDummyObjType
@Exit:
    RTS

PatraChild_Draw:
    JSR Anim_SetSpriteDescriptorRedPaletteRow
    ; 2 was returned from the routine above in A.
    ; Pass it as the animation counter value to the routine below.
    ;
    JSR Anim_AdvanceAnimCounterAndSetObjPosForSpriteDescriptor
    LDA ObjAnimFrame, X
    JMP DrawObjectNotMirrored

UpdateGanon:
    LDA Ganon_ScenePhase
    JSR TableJump
UpdateGanon_JumpTable:
    .ADDR Ganon_ScenePhase0
    .ADDR Ganon_ScenePhase1
    .ADDR Ganon_ScenePhase2

Ganon_ScenePhase0:
    ; Description:
    ; Lift up the Triforce of Courage while the room is dark.
    ;
    ; Lift the Triforce of Courage -- represented with a triforce piece.
    ;
    LDA #$1B
    STA ItemTypeToLift
    ; If Link's timer has not expired, then go do nothing until the last frame.
    ;
    LDA ObjTimer
    ; TODO: Unnamed label is too far
    ;
    BNE :+
    ; Once the timer expires, it's time to brighten the room.
    ;
    ; Save the current object slot.
    TXA
    PHA
    JSR UpdateCandle
    PLA                         ; Restore the current object slot.
    TAX
    ; Turn off the room brightening flag, because we're controlling it
    ; here instead of in the Mode 5 object update loop.
    ;
    LDA #$00
    STA BrighteningRoom
    ; On the first frame of the fade-to-light cycle, play the
    ; Triforce/Ganon song.
    ;
    LDA FadeCycle
    CMP #$C0
    BNE @CheckFadeCycle
    LDA #$02
    STA SongRequest
@CheckFadeCycle:
    ; If the fade cycle has not ended, then go draw Ganon.
    ;
    LDA FadeCycle
    AND #$0F
    CMP #$04
    BNE Ganon_DrawBodyFrame0
    ; Set Link's timer to $C0 for the next scene phase.
    ;
    LDA #$C0
    STA ObjTimer
    ; Set scene phase 1, and go draw Ganon.
    ;
    INC Ganon_ScenePhase
    BNE Ganon_DrawBodyFrame0
:
    ; TODO: Find out the sample. Add it to comment below, and to label.
    ;
    ; If timer = 1, then
    ;
    CMP #$01
    BNE :+
    LDA #$02
    STA SampleRequest
:
    RTS

Ganon_ScenePhase1:
    ; Description:
    ; Lift up the Triforce of Courage while the room is light.
    ;
    ; Lift the Triforce of Courage -- represented with a triforce piece.
    ;
    LDA #$1B
    STA ItemTypeToLift
    ; If Link's timer hasn't expired, then go draw Ganon.
    ;
    LDA ObjTimer
    BNE Ganon_DrawBodyFrame0
    ; Once the timer expires:
    ; 1. unhalt Link
    ; 2. clear the item to lift
    ; 3. play level 9 song
    ; 4. go to scene phase 2: fighting / not holding triforce
    ;
    STA ObjState
    STA ItemTypeToLift
    LDA #$20
    STA SongRequest
    INC Ganon_ScenePhase
Ganon_DrawBodyFrame0:
    ; When holding the Triforce of Courage, only draw Ganon
    ; with animation frame 0.
    ;
    LDA #$00
    STA Ganon_ObjAnimationFrame, X
    JMP Ganon_DrawBody

Ganon_ScenePhase2:
    ; Description:
    ; Fighting Ganon.
    ;
    ; If Ganon is dying, go handle it.
    ;
    LDA Ganon_ObjPhase, X
    BNE Ganon_Dying
    JSR Ganon_CheckCollisions
    JSR PlayBossHitCryIfNeeded
    ; Go handle the brown state specially.
    ;
    LDA ObjState, X
    BNE Ganon_UpdateBrownState
    ; State = 0: Blue
    ;
    ; If timer = 0, then go move around and shoot.
    ;
    LDA ObjTimer, X
    BEQ Ganon_MoveAndShoot
    ; If timer > 1, then Ganon is blue and visible. Only draw.
    ; Collisions were checked already.
    ;
    ; Else timer = 1. Fall thru and randomize Ganon's location,
    ; in anticipation of moving around when timer becomes 0 next frame.
    ;
    CMP #$01
    BNE L_Ganon_DrawBody
Ganon_RandomizeLocation:
    ; Description:
    ; Put Ganon at Y=$A0, and a random X of $30 or $B0.
    ;
    LDA #$A0
    STA ObjY, X
    LDA FrameCounter
    AND #$01
    TAY
    LDA GanonStartXs, Y
    STA ObjX, X
    RTS

Ganon_MoveAndShoot:
    ; Change the animation frame every screen frame; so that
    ; when Ganon is hit, he appears in a random pose.
    ;
    INC Ganon_ObjAnimationFrame, X
    ; The animation cycle has 6 frames.
    ;
    LDA Ganon_ObjAnimationFrame, X
    CMP #$06
    BNE @Move
    LDA #$00
    STA Ganon_ObjAnimationFrame, X
@Move:
    ; Move like a blue wizzrobe teleporting.
    ;
    LDA #$01
    STA ObjRemDistance, X
    JSR BlueWizzrobe_TurnSometimesAndMoveAndCheckTile
    ; Shoot every $40 frames.
    ;
    LDA FrameCounter
    AND #$3F
    BNE @Exit
    LDA #$56                    ; Fireball
    JSR ShootFireball
@Exit:
    RTS

GanonStartXs:
    .BYTE $30, $B0

Ganon_UpdateBrownState:
    ; Every other frame decrement the state.
    ; But every frame draw Ganon either translucent or opaque.
    ;
    LDA FrameCounter
    LSR
    BCC @Draw
    DEC ObjState, X
    ; If the state becomes 0, then Ganon is blue again.
    ; Go switch his palette row to reflect it.
    ;
    BNE @Draw
    JSR Ganon_RandomizeLocation
    JMP Ganon_AppendPaletteRowTransferRecord_Blue

@Draw:
    ; When state >= $30, draw Ganon opaque.
    ; When state goes below, draw him translucent.
    ;
    LDA ObjState, X
    CMP #$30
    BCS L_Ganon_DrawBody
    LDA FrameCounter
    LSR
    BCC :+
L_Ganon_DrawBody:
    JSR Ganon_DrawBody
:
    RTS

Ganon_Dying:
    ; Ganon is dying.
    ; Increment Ganon phase every frame.
    ;
    INC Ganon_ObjPhase, X
    ; If it just went from $FF to 0, then keep it at $FF.
    ;
    LDA Ganon_ObjPhase, X
    BNE :+
    LDA #$FF
    STA Ganon_ObjPhase, X
:
    ; If Ganon phase < $50, then go draw only.
    ;
    CMP #$50
    BCC L_Ganon_DrawBody
    ; If > $50, then go handle ashes only.
    ;
    BNE @HandleAshes
    ; Otherwise Ganon phase = $50.
    ; Set up the burst and ashes.
    ;
    JSR Ganon_AppendPaletteRowTransferRecord_Triforce
    ; Ganon is now a pile of ashes at offset (7, 8) from where he was.
    ;
    LDA ObjX, X
    ADC #$07
    STA ObjX, X
    LDA ObjY, X
    ADC #$08
    STA ObjY, X
    JSR Ganon_SetUpBurstRays
    JSR PlayBossDeathCry
    LDA #$02                    ; Ganon/Triforce song
    STA SongRequest
@HandleAshes:
    JSR Ganon_DrawAshes
    ; Keep drawing the burst artifacts while Ganon phase < $A0.
    ;
    LDA Ganon_ObjPhase, X
    CMP #$A0
    BCC Ganon_DrawBurst
    ; If > $A0, then there's nothing left to do, except return.
    ;
    BNE @Exit
    ; Otherwise Ganon phase = $A0.
    ; Activate the room item (triforce of power).
    ;
    JSR Ganon_ActivateRoomItem
    ; Put it at Ganon's ashes' location.
    ;
    LDA ObjX, X
    STA ObjX+19
    LDA ObjY, X
    STA ObjY+19
    ; Increase the room kill count.
    ;
    INC ObjType
@Exit:
    RTS

GanonBurstDirs:
    .BYTE $01, $02, $04, $05, $06, $08, $09, $0A

GanonBurstSpriteAttrs:
    .BYTE $00, $00, $40, $00, $80, $C0, $80, $00
    .BYTE $40, $00

GanonBurstTiles:
    .BYTE $00, $00, $EE, $EE, $E8, $30, $30, $E8
    .BYTE $30, $30

Ganon_SetUpBurstRays:
    ; Loop over 8 burst rays, from 7 to 0, indexed by Y register.
    ; Access object slots 9 to 2.
    ;
    LDY #$07
@LoopRay:
    ; Start each piece at offset (4, 4) from Ganon's location.
    ;
    LDA ObjX, X
    CLC
    ADC #$04
    STA a:ObjX+2, Y
    LDA ObjY, X
    ADC #$04
    STA a:ObjY+2, Y
    ; Set the direction.
    ;
    LDA GanonBurstDirs, Y
    STA a:ObjDir+2, Y
    DEY
    BPL @LoopRay
    RTS

; Params:
; [00]: X
; [01]: Y
;
; Save the coordinates.
;
Ganon_DrawCloud:
    LDA $00
    PHA
    LDA $01
    PHA
    ; If cloud distance < 6, then use frame image $C (medium).
    ; Else use frame image $D (low).
    ;
    LDA #$0C
    LDY Ganon_ObjCloudDist, X
    CPY #$06
    BCS :+
    LDA #$0D                    ; Low density cloud frame image (tile $74)
:
    LDY #$00                    ; No horizontal flipping.
    STY $0F
    JSR DrawObjectMirrored
    ; Restore the coordinates.
    ;
    PLA
    STA $01
    PLA
    STA $00
    RTS

Ganon_DrawBurst:
    ; If cloud distance <> 0, then decrement it once every 8 frames.
    ;
    LDA Ganon_ObjCloudDist, X
    BEQ @DrawClouds
    LDA FrameCounter
    AND #$07
    BNE @DrawClouds
    DEC Ganon_ObjCloudDist, X
@DrawClouds:
    ; Draw the four clouds at diagonal corners.
    ;
    JSR Ganon_GetCurCloudLeft
    JSR Ganon_GetCurCloudTop
    JSR Ganon_DrawCloud
    JSR Ganon_GetCurCloudRight
    JSR Ganon_DrawCloud
    JSR Ganon_GetCurCloudLeft
    JSR Ganon_GetCurCloudBottom
    JSR Ganon_DrawCloud
    JSR Ganon_GetCurCloudRight
    JSR Ganon_DrawCloud
    ; Draw the top and bottom clouds.
    ;
    LDA ObjX, X
    STA $00
    JSR Ganon_GetCurCloudTop
    JSR Ganon_DrawCloud
    JSR Ganon_GetCurCloudBottom
    JSR Ganon_DrawCloud
    ; Draw the left and right clouds.
    ;
    JSR Ganon_GetCurCloudLeft
    LDA ObjY, X
    STA $01
    JSR Ganon_DrawCloud
    JSR Ganon_GetCurCloudRight
    JSR Ganon_DrawCloud
    ; Save the object index.
    ;
    LDA CurObjIndex
    PHA
    ; Loop over the 8 burst rays in slots 2 to 9, to move and draw them.
    ;
    LDX #$02
@LoopRay:
    STX CurObjIndex
    ; If object slot < 5 or = 7, then move every frame.
    ; Else move 3 out of every 4 frames.
    ;
    ; This makes pieces spread out in somewhat of a circle,
    ; by making the pieces at cardinal directions move at
    ; full speed while the diagonal ones move a little slower.
    ;
    CPX #$05
    BCC @Move
    CPX #$07
    BEQ @Move
    LDA FrameCounter
    AND #$03
    BEQ :+
@Move:
    JSR BlueWizzrobe_Move
:
    JSR Anim_FetchObjPosForSpriteDescriptor
    ; The frame counter will make the sprite flash.
    ; The array has the horizontal and vertical flipping attributes.
    ; Combine them into [03].
    ;
    LDA FrameCounter
    AND #$03
    ORA GanonBurstSpriteAttrs, X
    STA $03
    LDA GanonBurstTiles, X
    JSR Anim_WriteSprite
    ; Bottom of the loop.
    ; Increment object slot while <= 9.
    ;
    INX
    CPX #$0A
    BCC @LoopRay
    ; Restore the object index.
    ;
    PLA
    STA CurObjIndex
    RTS

; Returns:
; [00]: X coordinate
;
Ganon_GetCurCloudLeft:
    LDA ObjX, X
    SEC
    SBC Ganon_ObjCloudDist, X
    STA $00
    RTS

; Returns:
; [00]: X coordinate
;
Ganon_GetCurCloudRight:
    LDA ObjX, X
    CLC
    ADC Ganon_ObjCloudDist, X
    STA $00
    RTS

; Returns:
; [01]: Y coordinate
;
Ganon_GetCurCloudTop:
    LDA ObjY, X
    SEC
    SBC Ganon_ObjCloudDist, X
    STA $01
    RTS

; Returns:
; [01]: Y coordinate
;
Ganon_GetCurCloudBottom:
    LDA ObjY, X
    CLC
    ADC Ganon_ObjCloudDist, X
    STA $01
    RTS

GanonFrameImages:
    .BYTE $06, $08, $07, $09, $00, $00, $01, $01
    .BYTE $02, $02, $03, $03, $04, $00, $05, $01
    .BYTE $04, $04, $05, $05, $00, $04, $01, $05

GanonSpriteOffsetsX:
    .BYTE $00, $10, $00, $10

GanonSpriteOffsetsY:
    .BYTE $00, $00, $10, $10

GanonSpriteHFlips:
    .BYTE $00, $01, $00, $01

Ganon_DrawBody:
    ; Loop over four 16x16 images that make up Ganon.
    ; There are 6 animation frames.
    ;
    LDY #$03
@LoopCorner:
    ; Add an offset to Ganon's X, and store the result in [00] -- the sprite's X.
    ;
    LDA ObjX, X
    CLC
    ADC GanonSpriteOffsetsX, Y
    STA $00
    ; Add an offset to Ganon's Y, and store the result in [01] -- the sprite's Y.
    ;
    LDA ObjY, X
    CLC
    ADC GanonSpriteOffsetsY, Y
    STA $01
    ; Each part has a horizontal flipping flag.
    ;
    LDA GanonSpriteHFlips, Y
    STA $0F
    ; Save and copy the loop index (the current part) to [07].
    ;
    TYA
    PHA
    STA $07
    ; Multiply the animation frame by 4, because of the 4 parts
    ; that make it up.
    ;
    LDA Ganon_ObjAnimationFrame, X
    ASL
    ASL
    ; Add [07] -- the index of the current part.
    ;
    ; Now you have an index into the frame image table, for the
    ; current image part of the current animation frame.
    ;
    ADC $07
    TAY
    LDA GanonFrameImages, Y
    JSR DrawObjectNotMirrored
    PLA                         ; Restore the loop index.
    ; Bottom of the part loop.
    ;
    TAY
    DEY
    BPL @LoopCorner
    RTS

Ganon_CheckCollisions:
    ; Calculate Ganon's midpoint at offset ($10, $10) from his coordinates.
    ; Store in [02] and [03].
    ;
    LDA ObjX, X
    CLC
    ADC #$10
    STA $02
    LDA ObjY, X
    CLC
    ADC #$10
    STA $03
    ; Check for a collision with Link.
    ;
    ; We can't call CheckLinkCollision, because we need to
    ; customize Ganon's midpoint.
    ;
    ; So, we've calculated the midpoint hotspot. Now, skip collision
    ; detection, if Link is invincible. Initialize variables that will
    ; be returned from the partial collision check routine. Then
    ; call it.
    ;
    LDA ObjInvincibilityTimer
    BNE @SkipLinkCollision
    STA $06
    STA $09
    STA $0C
    LDY #$00
    STY $00
    JSR CheckLinkCollisionPreinit
@SkipLinkCollision:
    ; If Ganon is not in state 0, then he's red.
    ; Go check collision with an arrow.
    ;
    LDA ObjState, X
    BNE @CheckArrowCollision
    ; If timer <> 0, then Ganon is visible.
    ; He can't be harmed like this. So, return.
    ;
    LDA ObjTimer, X
    BNE @Exit
    LDY #$0D                    ; Sword slot
    JSR CheckMonsterSwordCollision
    ; TODO: is red the right description of this color and state?
    ;
    ; If Ganon has died, according to the usual collision check rules
    ; (HP = 0), then:
    ; 1. Restore HP to the initial value $F0
    ; 2. Set state to $FF to note that Ganon is vulnerable to silver arrows
    ; 3. Change palette row 7 to make Ganon red
    ;
    LDA ObjMetastate, X
    BEQ @CheckHarmed
    LDA #$F0
    STA ObjHP, X
    DEC ObjState, X
    JSR Ganon_AppendPaletteRowTransferRecord_Brown
@CheckHarmed:
    ; If Ganon was harmed, then play the sound effect
    ; and set timer to $40, so that he's visible for $40 frames.
    ;
    LDA ObjInvincibilityTimer, X
    BEQ @UndoDeath
    JSR PlayBossHitCryIfNeeded
    LDA #$40
    STA ObjTimer, X
@UndoDeath:
    ; Reset metastate, because Ganon cannot die this way.
    ;
    JSR ResetObjMetastate
    ; Reset shove info and invincibility timer, because Ganon
    ; doesn't react at all as a usual monster.
    ;
    JSR ResetShoveInfoAndInvincibilityTimer
@Exit:
    RTS

@CheckArrowCollision:
    ; If the silver arrow is not in the inventory, then return.
    ;
    LDA InvArrow
    CMP #$02
    BNE @Exit
    ; Reset the collision return value [06].
    ;
    LDA #$00
    STA $06
    ; If there's no arrow in flight, then return.
    ;
    LDY #$12
    LDA a:ObjState, Y
    CMP #$10
    BNE @Exit
    ; Check for collision with an arrow; and return if no collision.
    ;
    JSR CheckMonsterArrowOrRodCollision
    LDA $06                     ; [06] collision result
    BEQ @Exit
    ; Set the Ganon phase to "dying".
    ;
    INC Ganon_ObjPhase, X
    ; Now his body does flash.
    ;
    LDA #$28
    STA ObjInvincibilityTimer, X
    ; Set initial cloud distance 8.
    ;
    LDA #$08
    STA Ganon_ObjCloudDist, X
    RTS

GanonColorTransferRecord:
    .BYTE $3F, $1C, $04, $0F, $07, $17, $27, $FF

GanonColorSets:
    .BYTE $07, $17, $30, $16, $2C, $3C, $27, $06
    .BYTE $16

Ganon_AppendPaletteRowTransferRecord_Brown:
    LDY #$02                    ; Brown and white colors at AF64.
    BNE :+
Ganon_AppendPaletteRowTransferRecord_Blue:
    LDY #$05                    ; Red and blue colors at AF67.
    BNE :+
Ganon_AppendPaletteRowTransferRecord_Triforce:
    LDY #$08                    ; Yellow and red colors at AF6A.
:
    TYA                         ; Save the end index of the colors.
    PHA
    ; Get the length, to append to the dynamic transfer buf.
    ;
    LDX DynTileBufLen
    ; Copy the 8 bytes of the palette row transfer record template.
    ;
    LDY #$00
@CopyBytes:
    LDA GanonColorTransferRecord, Y
    STA DynTileBuf, X
    INX
    INY
    CPY #$08
    BNE @CopyBytes
    STX DynTileBufLen
    PLA                         ; Restore the end index of the colors.
    TAY
    ; Overwrite the last 3 colors in the record, with the ones
    ; ending at the index passed in.
    ;
    LDX #$02
@OverwriteColors:
    LDA GanonColorSets, Y
    STA DynTileBuf+4, X
    DEY
    DEX
    BPL @OverwriteColors
    LDX CurObjIndex
    RTS

Ganon_DrawAshes:
    JSR Anim_FetchObjPosForSpriteDescriptor
    LDA #$0B
    JMP DrawObjectNotMirrored

Ganon_ActivateRoomItem:
    ; If the room item was already active or taken, then return.
    ;
    LDA ObjState+19
    BEQ @Exit
    JSR GetRoomFlagUWItemState
    BNE @Exit
    ; Activate the room item, by setting its state to 0.
    ;
    LDA #$00
    STA ObjState+19
    ; Play "item appears" tune.
    ;
    LDA #$02
    STA Tune1Request
@Exit:
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
    .BYTE $FF, $FF, $FF, $FF, $FF, $FF

; Params:
; A: hit point doublet (byte)
; [00]: object type
;
; Returns:
; A: hit points for object type
;
ExtractHitPointValue:
    PHA
    ; Even object types only have to mask off the bottom nibble.
    ;
    LDA $00
    LSR
    BCS @OddType
    PLA
    AND #$F0
    RTS

@OddType:
    PLA
    ; Odd object types have to multiply by 16.
    ;
    ASL
    ASL
    ASL
    ASL
    RTS

PlayBossDeathCry:
    LDA #$02
    STA SampleRequest
    LDA #$80
    STA EffectRequest
    RTS

NoDropMonsterTypes:
    ; Types of objects that do not drop items.
    ;
    .BYTE $5D, $14, $15, $1B, $1C, $1D, $17

DropItemMonsterTypes0:
    .BYTE $07, $08, $0E, $04, $0F, $23

DropItemMonsterTypes1:
    .BYTE $21, $22, $0D, $10, $13, $28, $2A, $27
    .BYTE $16

DropItemMonsterTypes2:
    .BYTE $09, $0A, $03, $01, $12, $06, $0B, $24
    .BYTE $30

DropItemSetBaseOffsets:
    ; Multiples of $A to index the base of each row of items in DropItemTable.
    ;
    .BYTE $00, $0A, $14, $1E

DropItemRates:
    ; Top drop an item, a random value must be less than the
    ; element for the monster group.
    ;
    .BYTE $50, $98, $68, $68

DropItemTable:
    ; ID's for items dropped by monsters.
    ; WorldKillCycle addresses the column.
    ;
    ; Monsters are arranged in groups that determine the row.
    ; There are four rows.
    ;
    .BYTE $22, $18, $22, $18, $23, $18, $22, $22
    .BYTE $18, $18, $0F, $18, $22, $18, $0F, $22
    .BYTE $21, $18, $18, $18, $22, $00, $18, $21
    .BYTE $18, $22, $00, $18, $00, $22, $22, $22
    .BYTE $23, $18, $22, $23, $22, $22, $22, $18

SetUpDroppedItem:
    ; Reset [01] which holds the row number of the drop item table.
    ;
    LDA #$00
    STA $01
    ; Compare dead object's type to array of 7 that don't drop items.
    ; If found, go destroy the monster.
    ;
    LDA Item_ObjMonsterType, X
    LDY #$06
@FindNoDropType:
    CMP NoDropMonsterTypes, Y
    BEQ @DestroyMonster         ; If found, go destroy the monster.
    DEY
    BPL @FindNoDropType
    ; Look for object type in array of 6. These use drop item table row 0.
    ;
    LDY #$05
@FindDrop0Type:
    CMP DropItemMonsterTypes0, Y
    BEQ @Found                  ; If found, use row 0.
    DEY
    BPL @FindDrop0Type
    ; Increment row number in [01] to 1.
    ;
    INC $01
    ; Look for object type in array of 9. These use drop item table row 1.
    ;
    LDY #$08
@FindDrop1Type:
    CMP DropItemMonsterTypes1, Y
    BEQ @Found                  ; If found, use row 1.
    DEY
    BPL @FindDrop1Type
    ; Increment row number in [01] to 2.
    ;
    INC $01
    ; Look for object type in array of 9. These use drop item table row 2.
    ;
    LDY #$08
@FindDrop2Type:
    CMP DropItemMonsterTypes2, Y
    BEQ @Found                  ; If found, use row 2.
    DEY
    BPL @FindDrop2Type
    ; Increment [01]. The rest use row 3.
    ;
    INC $01
@Found:
    ; If object slot = 1 and object is stalfos or gibdos, then
    ; go destroy the mosnter, because it might already be carrying
    ; a room item.
    ;
    CPX #$01
    BNE @LookUpItem
    CMP #$2A
    BEQ @DestroyMonster
    CMP #$30
    BEQ @DestroyMonster
@LookUpItem:
    ; Look up the base offset of the row in the drop item table.
    ; Add it and WorldKillCycle to look up the dropped item for
    ; this object type and store it in [00].
    ;
    LDY $01
    LDA DropItemSetBaseOffsets, Y
    CLC
    ADC WorldKillCycle
    TAY
    LDA DropItemTable, Y
    STA $00                     ; [00] Dropped item ID
    ; TODO: Is this really what [0627] represents?
    ; If the global kill count = $10, set the dropped item to a fairy.
    ;
    LDA #$23
    LDY WorldKillCount
    CPY #$10
    BEQ @SetHelpItem
    ; If help drop counter < $A, then use the dropped item ID as is.
    ; But there is a random chance that the item drop will be canceled.
    ;
    LDA HelpDropCount
    CMP #$0A
    BCC @RandomlyCancel
    ; Otherwise, the item will be guaranteed to be made.
    ; [51] HelpDropValue determines which kind:
    ; - 0:     5 rupees
    ; - other: bomb
    ;
    LDA #$0F
    LDY HelpDropValue
    BEQ @SetHelpItem
    LDA #$00                    ; Bomb
@SetHelpItem:
    STA $00                     ; [00] Item ID
    ; The player has been helped with a dropped item. Reset the
    ; help drop variables.
    ;
    LDA #$00
    STA HelpDropCount
    STA HelpDropValue
    BEQ @Commit
@RandomlyCancel:
    ; If the random value >= drop item rate for the monster's group,
    ; then go destroy the monster.
    ;
    LDY $01
    LDA Random, X
    CMP DropItemRates, Y
    BCS @DestroyMonster
@Commit:
    ; Set ObjItemLifetime to $FF.
    ;
    LDA #$FF
    STA Item_ObjItemLifetime, X
    ; Set ObjItemId.
    ;
    LDA $00
    STA Item_ObjItemId, X
    ; If the item is a fairy, we have to finish setting it up.
    ;
    CMP #$23
    BNE :+
    JMP SetUpFairyObject

:
    RTS

@DestroyMonster:
    JMP DestroyMonster_Bank4

ItemTakerObjSlots:
    .BYTE $00, $0F, $0D, $12

UpdateItem:
    ; Every other frame, decrement the item lifetime.
    ;
    LDA FrameCounter
    LSR
    BCC :+
    DEC Item_ObjItemLifetime, X
:
    ; If lifetime reached 0, go destroy the object.
    ;
    LDA Item_ObjItemLifetime, X
    BEQ DestroyMonster_Bank4
    ; Draw the item. Fairies are animated separately.
    ;
    LDA Item_ObjItemId, X
    CMP #$23
    BEQ @AnimateFairy
    JSR AnimateItemObject
    JMP :+

@AnimateFairy:
    JSR UpdateFairyObject
:
    ; If the player is halted, then return.
    ;
    LDA ObjState
    AND #$C0
    CMP #$40
    BEQ @Exit
    ; In addition to Link, there are 3 objects that can pick up items: 
    ; * arrow
    ; * sword
    ; * boomerang
    ;
    ; For each weapon that's active, substitute it's location for
    ; Link's and try taking the item. Have Link himself check last.
    ;
    LDA #$04
    STA $0D                     ; [0D] holds index into array of item slots that can take an item.
@LoopItemTaker:
    ; Save Link's location.
    ;
    LDA ObjX
    PHA
    LDA ObjY
    PHA
    ; Set Link's location to this object's.
    ;
    LDY $0D
    LDX ItemTakerObjSlots-1, Y
    LDA ObjX, X
    STA ObjX
    LDA ObjY, X
    STA ObjY
    CPX #$00
    BEQ @TryToTake              ; If Link is checking directly, go try to take the item.
    ; If the object whose place Link is taking is not active, then
    ; don't try to take the item.
    ;
    LDA ObjState, X
    BEQ @SkipTaking
    BMI @SkipTaking
@TryToTake:
    ; Try to take the item.
    ;
    LDX CurObjIndex
    LDA Item_ObjItemId, X
    STA $04
    JSR TryTakeItem
@SkipTaking:
    ; Restore Link's location.
    ;
    PLA
    STA ObjY
    PLA
    STA ObjX
    LDX CurObjIndex             ; Reload object index in X.
    ; If item object's item type is invalid, then the item was taken.
    ; So, go destroy this object.
    ;
    LDA Item_ObjItemId, X
    CMP #$FF
    BEQ DestroyMonster_Bank4
    DEC $0D                     ; Decrease the index [0D].
    BNE @LoopItemTaker          ; If there are more object slots to check from, go try the next one.
@Exit:
    RTS

; Params:
; X: object index
;
DestroyMonster_Bank4:
    LDA #$00
    STA ObjType, X
    JSR SetShoveInfoWith0
    STA ObjTimer, X
    STA ObjState, X
    STA ObjInvincibilityTimer, X
    LDA #$FF
    STA ObjUninitialized, X
    LDA #$01
    STA ObjMetastate, X
    RTS

; Params:
; A: shot object type
; X: shooter object index
;
; Returns:
; C: 1 if succeeded
; Y: shot slot
;
; Description:
; The shot starts in state $10.
;
_ShootIfWanted:
    STA $00
    ; If the monster does not want to shoot, then return C=0.
    ;
    LDA ObjWantsToShoot, X
    BEQ ReturnDidNotShoot
; Params:
; [00]: shot object type
;
; Returns:
; C: 1 if succeeded
; Y: shot slot
;
; Description:
; The shot starts in state $10.
;
; If no slot is found, return C=0.
;
ShootLimited:
    JSR FindEmptyMonsterSlot
    BEQ ReturnDidNotShoot
    ; If the object type to shoot is a true shot (projectile),
    ; and we're at the limit of active shots (4), then return C=0.
    ;
    LDA $00
    CMP #$53
    BCC Shoot
    LDA ActiveMonsterShots
    CMP #$04
    BCS ReturnDidNotShoot
    ; Else increase the number of active shots.
    ;
    INC ActiveMonsterShots
; Params:
; [00]: shot object type
; [59]: EmptyMonsterSlot
;
; Returns:
; C: 1 if succeeded
; Y: shot slot
;
; Description:
; The shot starts in state $10.
;
Shoot:
    LDX EmptyMonsterSlot
    LDA $00
    JSR SetTypeAndClearObject
    ; Set state to $10 and reset timer, so that the shot moves right away.
    ;
    LDY EmptyMonsterSlot
    LDX CurObjIndex
    LDA #$10
    STA a:ObjState, Y
    LDA #$00
    STA a:ObjTimer, Y
    ; Set the shot's direction and coordinates the same as the thrower's.
    ;
    LDA ObjDir, X
    STA a:ObjDir, Y
    LDA ObjX, X
    STA a:ObjX, Y
    LDA ObjY, X
    STA a:ObjY, Y
    ; Return C=1.
    ;
    SEC
    RTS

ReturnDidNotShoot:
    ; Return C=0.
    ;
    CLC
    RTS

UpdateCandle:
    LDA CandleState
    JSR TableJump
UpdateCandle_JumpTable:
    .ADDR UpdateCandle_Begin
    .ADDR UpdateCandle_Brightening
    .ADDR UpdateCandle_Done

UpdateCandle_Begin:
    LDY RoomId
    JSR IsDarkRoom_Bank4
    BEQ UpdateCandle_Done       ; If it's not a dark room, return.
    LDA #$C0                    ; Start a fade-to-light cycle (reverse of $40).
    STA FadeCycle
    INC BrighteningRoom
L_Candle_IncState:
    INC CandleState
UpdateCandle_Done:
    RTS

L_Candle_StopBrightening:
    ; Stop brightening the room, and go set the candle state to done.
    ;
    LDA #$00
    STA BrighteningRoom
    BEQ L_Candle_IncState
UpdateCandle_Brightening:
    ; Animating a brightening cycle.
    ;
    JSR AnimateWorldFading
    BEQ L_Candle_StopBrightening    ; If done fading, go stop brightening the room.
    RTS

; Params:
; Y: room ID
;
; Returns:
; A: $80 if dark, else 0
;
IsDarkRoom_Bank4:
    LDA CurLevel
    BEQ :+
    LDA LevelBlockAttrsE, Y
    AND #$80
:
    RTS

SetUpFairyObject:
    ; Play "fairy appears" tune. It's also "object taken".
    ;
    LDA #$08
    STA Tune1Request
    JSR ResetFlyerState
    ; Face up at first.
    ;
    LDA #$08
    STA ObjDir, X
    ; Set flying speed fraction to $7F.
    ;
    LDA #$7F
    STA Flyer_ObjSpeed, X
    ; Set maximum speed fraction to $A0.
    ;
    LDA #$A0
    STA FlyingMaxSpeedFrac
    RTS

ResetFlyerState:
    LDA #$00
    STA Flyer_ObjSpeedFrac, X
    STA Flyer_ObjTurns, X
    STA Flyer_ObjDistTraveled, X
    STA Flyer_ObjFlyingState, X
    STA ObjInvincibilityTimer, X
    RTS

; Params:
; X: object index
;
UpdateFairyObject:
    JSR ControlFairyFlight
    JSR MoveFlyer
DrawFairy:
    JSR Anim_FetchObjPosForSpriteDescriptor
    JSR Anim_SetSpriteDescriptorRedPaletteRow
    ; Every 4 frames, switch between the two sprite frames.
    ;
    ASL
    AND FrameCounter
    LSR
    LSR
    STA $0C
    LDY #$14
    JMP Anim_WriteItemSprites

ControlFairyFlight:
    LDA Flyer_ObjFlyingState, X
    JSR TableJump
ControlFairyFlight_JumpTable:
    .ADDR Flyer_SpeedUp
    .ADDR Flyer_FairyDecideState
    .ADDR Flyer_DoNothing
    .ADDR Flyer_Wander

Flyer_FairyDecideState:
    ; Set up 6 turns, and go to state 3.
    ;
    LDA #$03
    STA Flyer_ObjFlyingState, X
    LDA #$06
    STA Flyer_ObjTurns, X
Flyer_DoNothing:
    RTS

Directions8:
    .BYTE $08, $09, $01, $05, $04, $06, $02, $0A

Flyer_Delay:
    ; Delay until ObjTimer[X] expires. Then go to flying state 0.
    ;
    LDA ObjTimer, X
    BNE :+
    LDA #$00
    STA Flyer_ObjFlyingState, X
:
    RTS

Flyer_SlowDown:
    ; Decrease speed each frame.
    ; When it goes below a threshold ($20), go to flying state 5.
    ;
    DEC Flyer_ObjSpeed, X
    JMP :+

Flyer_SpeedUp:
    ; Increase speed each frame.
    ; When it reaches a threshold, go to flying state 1.
    ;
    INC Flyer_ObjSpeed, X
:
    LDA Flyer_ObjSpeed, X
    AND #$E0
    BNE Flyer_CompareMaxSpeed
    ; (whole_speed & $E0) = 0
    ; Set a random timer between $40 and $7F.
    ;
    LDA Random, X
    AND #$3F
    ORA #$40
    STA ObjTimer, X
    ; Go to flying state 5.
    ;
    LDA #$05
Flyer_SetFlyingState:
    STA Flyer_ObjFlyingState, X
:
    RTS

Flyer_CompareMaxSpeed:
    CMP FlyingMaxSpeedFrac
    BCC :-                      ; If (whole_speed & $E0) < threshold, return.
    LDA #$01                    ; Else go to flying state 1, and return.
    JMP Flyer_SetFlyingState

MoveFlyer:
    ; Add (flying speed AND $E0) to flying position fraction.
    ;
    LDA Flyer_ObjSpeed, X
    AND #$E0
    CLC
    ADC Flyer_ObjSpeedFrac, X
    STA Flyer_ObjSpeedFrac, X
    BCC @Exit                   ; If the fraction isn't whole yet, then return.
    ; Because this object can move in 8 directions,
    ; test the object's direction with each cardinal direction,
    ; to modify the coordinates accordingly.
    ;
    ; Test right.
    ;
    LDA #$01
    STA $02
    LDA ObjDir, X
    BIT $02
    BEQ @Left                   ; Right is not a component? Go check next direction.
    INC ObjX, X
    INC Flyer_ObjOffsetX, X
@Left:
    ; Test left.
    ;
    ASL $02
    BIT $02
    BEQ @Down                   ; Left is not a component? Go check next direction.
    DEC ObjX, X
    DEC Flyer_ObjOffsetX, X
@Down:
    ; Test down.
    ;
    ASL $02
    BIT $02
    BEQ @Up                     ; Down is not a component? Go check next direction.
    INC ObjY, X
    INC Flyer_ObjOffsetY, X
@Up:
    ; Test up.
    ;
    ASL $02
    BIT $02
    BEQ @End                    ; Up is not a component? Go finish up.
    DEC ObjY, X
    DEC Flyer_ObjOffsetY, X
@End:
    ; Increase the distance traveled; and keep the object within
    ; the bounds of the room.
    ;
    INC Flyer_ObjDistTraveled, X
    JSR BoundFlyer
@Exit:
    RTS

; Returns:
; A: original facing or the opposite
; [0F]: 0 if blocked
;
BoundFlyer:
    LDA ObjDir, X
    STA $0F
    JSR BoundDirectionHorizontally
    ; Check vertical boundaries, if object is not a boulder.
    ;
    LDA ObjType, X
    CMP #$20
    BEQ :+
    JSR BoundDirectionVertically
:
    ; If movement wasn't restricted, then return.
    ;
    LDA $0F
    BNE L132F8_Exit
ReverseObjDir8:
    ; Get the opposite direction of the one the object is facing.
    ;
    JSR GetObjDir8Index
    TYA
    CLC
    ADC #$04
    AND #$07
    TAY
    ; If the object type = $41 (moldorm), then go see if we need
    ; to set the deferred bounce direction.
    ;
    LDA ObjType, X
    CMP #$41
    BEQ DeferBounce
    ; Apply the new direction.
    ;
    LDA Directions8, Y
    STA ObjDir, X
L132F8_Exit:
    RTS

DeferBounce:
    ; If the object is segment 5 or $A of moldorm (a head), then
    ; assign the new direction to the deferred bounce direction.
    ;
    CPX #$05
    BEQ :+
    CPX #$0A
    BNE L13307_Exit
:
    LDA Directions8, Y
    STA Moldorm_ObjBounceDir, X
L13307_Exit:
    RTS

Flyer_Chase:
    ; Description:
    ; Turn towards the player a number of times.
    ; Then go to state 1. After each turn delay $10 frames.
    ;
    ;
    ; Delay until timer = 0.
    ;
    LDA ObjTimer, X
    BNE L13307_Exit             ; If timer is not expired, then return.
    ; Decrease the turn counter.
    ; Once there are no more turns, go to flying state 1.
    ;
    DEC Flyer_ObjTurns, X
    BNE SetDelayAndTurn
SetFlyingState1:
    LDA #$01
    JMP Flyer_SetFlyingState

SetDelayAndTurn:
    ; Set a delay of $10 frames.
    ;
    LDA #$10
    STA ObjTimer, X
TurnTowardsPlayer8:
    ; Build a direction in [00] towards the player.
    ;
    ; First, calculate a horizontal component:
    ;
    ; If   observed player X = object X, [00] := 0 (none)
    ; elif observed player X > object X, [00] := 1 (right)
    ; else                               [00] := 2 (left)
    ;
    LDY #$00
    STY $00
    INY
    LDA ChaseTargetX
    CMP ObjX, X
    BEQ @CalcVertical
    BCS :+
    INY
:
    STY $00
@CalcVertical:
    ; Second, calculate a vertical component.
    ; Combine it with the horizontal component:
    ;
    ; Y := 4 (down)
    ; if observed player Y <> object Y then
    ;   if observed player Y < object Y then
    ;     Y := Y << 1   -- makes it 8 (up)
    ;   [00] := [00] | Y
    ;
    LDY #$01
    LDA ChaseTargetY
    CMP ObjY, X
    BEQ @SkipVertical
    BCS :+
    INY
:
    TYA
    ASL
    ASL
    ORA $00
    STA $00
@SkipVertical:
    ; Get the index of the object's direction.
    ;
    JSR GetObjDir8Index
    ; Check 3 directions turning left:
    ; 1. right from object direction
    ; 2. object direction
    ; 3. left from object direction
    ;
    ; If the target direction matches any of these, then
    ; leave the object's direction alone.
    ;
    LDA #$03
    STA $01                     ; [01] holds the count of directions to check
    INY                         ; Turn right.
@LoopLeft:
    TYA
    AND #$07                    ; Modulo 8 to roll over the index as needed.
    TAY
    LDA Directions8, Y
    CMP $00
    BEQ L1336F_Exit             ; Return if it matches.
    DEY                         ; Turn left.
    DEC $01
    BNE @LoopLeft
    ; Check 3 directions turning right:
    ; 1. left of object direction
    ; 2. object direction
    ; 3. right of object direction
    ;
    ; If any direction component of the target direction matches
    ; these, then see if we should turn to this direction.
    ;
    LDA #$03
    STA $01
    INY                         ; This brings the index to one turn left of the object's direction.
LoopRight:
    TYA
    AND #$07                    ; Modulo 8 to roll over the index as needed.
    TAY
    LDA Directions8, Y
    BIT $00
    BNE TestDir
NextLoopRight:
    INY                         ; Turn right.
    DEC $01
    BNE LoopRight
    ; We didn't find a direction to switch to.
    ; So turn left once; to one turn right of object direction.
    ;
    DEY
SetDir8ForIndex:
    ; Apply the new direction.
    ;
    LDA Directions8, Y
    STA ObjDir, X
L1336F_Exit:
    RTS

TestDir:
    ; If (test direction OR target direction) < 7, then allow this turn.
    ; Else go try the next test direction.
    ;
    ; For 3/5 of the arrangements of angles between Link and
    ; objects; this test yields a turn towards Link. The rest of
    ; the time, the object will keep going in its original direction
    ; or turn away from Link.
    ;
    ORA $00
    CMP #$07
    BCS NextLoopRight
    BCC SetDir8ForIndex
Flyer_Wander:
    ; Description:
    ; Delay and turn randomly a number of times.
    ; The go to state 1. After each turn, delay $10 frames.
    ;
    ;
    ; Delay until timer = 0.
    ;
    LDA ObjTimer, X
    BNE L133AC_Exit
    ; Decrease the turn counter.
    ; Once there are no more turns, go to flying state 1.
    ;
    DEC Flyer_ObjTurns, X
    BNE :+
    JMP SetFlyingState1

:
    ; Set a delay of $10 frames.
    ;
    LDA #$10
    STA ObjTimer, X
TurnRandomlyDir8:
    ; Turn according to a random value:
    ; >= $A0: don't turn
    ; >= $50: turn right
    ; Else:   turn left
    ;
    JSR GetObjDir8Index
    LDA Random+1, X
    CMP #$A0
    BCS @SetDir
    INY
    CMP #$50
    BCS @SetDir
    DEY
    DEY
@SetDir:
    TYA
    AND #$07
    TAY
    JMP SetDir8ForIndex         ; Go set object direction for 8-way index.

; Returns:
; Y: index of 8-way direction of flyer object
;
GetObjDir8Index:
    LDY #$07
:
    LDA ObjDir, X
    CMP Directions8, Y
    BEQ L133AC_Exit
    DEY
    BPL :-
; If not found, then use index 0.
; Unknown block
    .BYTE $C8

L133AC_Exit:
    RTS

PatraSines:
    .BYTE $00, $18, $30, $47, $5A, $6A, $76, $7D
    .BYTE $80, $7D, $76, $6A, $5A, $47, $30, $18

; Params:
; A: high bits of cosine to use in calculating Y increment
; Y: high bits of sine to use in calculating X increment
; X: object index
;
; Returns:
; A: new Y coordinate of object
;
; [06] holds the number of high bits of cosine to use
RotateObjectLocation:
    STA $06
    STY $05                     ; [05] holds the number of high bits of sine to use
    ; First, rotate the X coordinate.
    ;
    ; Look up the sine for the current angle, and store it in [00].
    ;
    LDA ObjAngleWhole, X
    AND #$0F
    TAY
    LDA PatraSines, Y
    STA $00
    ; Mutliply q-speed by [00].
    ;
    ; Q-speed has the default value $20 set when entering the room.
    ;
    LDA ObjQSpeedFrac, X
    LDY $05
    JSR ShiftMultiply
    ; The absolute X increment for the current angle is now in [02:03].
    ;
    ; If angle >= $10, then the monster is in the top half of circle going left.
    ;
    LDA ObjAngleWhole, X
    AND #$18                    ; TODO: Why AND with $18?
    CMP #$10
    BCC @AddToX
    ; Subtract the product's fraction from the X coordinate fraction.
    ;
    LDA $0412, X
    SEC
    SBC $02
    STA $0412, X
    ; And subtract the product's whole part from the X coordinate with carry.
    ;
    LDA ObjX, X
    SBC $03
    JMP @SetXRotateY

@AddToX:
    ; Else angle < $10. So, the monster is in the bottom half of circle going right.
    ; Add the product's fraction to the X coordinate fraction.
    ;
    LDA $0412, X
    CLC
    ADC $02
    STA $0412, X
    ; And add the product's whole part to the X coordinate with carry.
    ;
    LDA ObjX, X
    ADC $03
@SetXRotateY:
    STA ObjX, X
    ; Now rotate the Y coordinate.
    ;
    ; Look up the cosine for the current angle, and store it in [00].
    ; The cosine corresponds to the sine offset by a quarter circle (8).
    ;
    LDA ObjAngleWhole, X
    CLC
    ADC #$08
    AND #$0F
    TAY
    LDA PatraSines, Y
    STA $00
    ; Multiply q-speed by [00].
    ;
    LDA ObjQSpeedFrac, X
    LDY $06
    JSR ShiftMultiply
    ; The absolute Y increment for the current angle is now in [02:03].
    ;
    ; If (angle - 8) >= $10, then the monster is in the right half of circle going up.
    ;
    LDA ObjAngleWhole, X
    SEC
    SBC #$08
    AND #$18
    CMP #$10
    BCC @AddToY
    ; Subtract the product's fraction from the Y coordinate fraction.
    ;
    LDA $041F, X
    SEC
    SBC $02
    STA $041F, X
    ; And subtract the product's whole part from the Y coordinate.
    ;
    LDA ObjY, X
    SBC $03
    RTS

@AddToY:
    ; Else (angle - 8) < $10. So, the monster is in the left half of circle going down.
    ; Add the product's fraction to the Y coordinate fraction.
    ;
    LDA $041F, X
    CLC
    ADC $02
    STA $041F, X
    ; And add the product's whole part to the Y coordinate with carry.
    ;
    LDA ObjY, X
    ADC $03
    RTS

; Params:
; A: multiplicand
; Y: number of high bits of [00] to use
; [00]: multiplier (high Y bits are used)
;
; Returns:
; [02:03]: product
;
ShiftMultiply:
    STA $01
    LDA #$00
    STA $02
    STA $03
@Loop:
    ASL $02
    ROL $03
    ASL $00
    BCC @Next
    LDA $02
    CLC
    ADC $01
    STA $02
    BCC @Next
; Unknown block
    .BYTE $E6, $03

@Next:
    DEY
    BNE @Loop
    RTS

; Params:
; A: low amount byte
; X: object index
; [0B]: high amount byte
;
; Subtract the low amount byte from low angle byte.
;
DecreaseObjectAngle:
    STA $0A
    LDA ObjAngleFrac, X
    SEC
    SBC $0A
    STA ObjAngleFrac, X
    ; Subtract the high amount byte from high angle byte with borrow.
    ;
    LDA ObjAngleWhole, X
    SBC $0B
    ; Cap the high byte at $1F.
    ;
    AND #$1F
    STA ObjAngleWhole, X
    RTS


.SEGMENT "BANK_04_ISR"



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


.SEGMENT "BANK_04_VEC"



; Unknown block
    .BYTE $84, $E4, $50, $BF, $F0, $BF

