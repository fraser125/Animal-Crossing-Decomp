lbl_8054A2C8:
/* 8054A2C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054A2CC  7C 08 02 A6 */	mflr r0
/* 8054A2D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054A2D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8054A2D8  4B B5 0B FD */	bl func_8009AED4
/* 8054A2DC  7C 7D 1B 78 */	mr r29, r3
/* 8054A2E0  7C 9E 23 78 */	mr r30, r4
/* 8054A2E4  4B FF CD 99 */	bl aNSC_message_ctrl
/* 8054A2E8  2C 03 00 01 */	cmpwi r3, 1
/* 8054A2EC  41 82 00 5C */	beq lbl_8054A348
/* 8054A2F0  7F C3 F3 78 */	mr r3, r30
/* 8054A2F4  4B E8 F3 4D */	bl get_player_actor_withoutCheck
/* 8054A2F8  28 03 00 00 */	cmplwi r3, 0
/* 8054A2FC  41 82 00 4C */	beq lbl_8054A348
/* 8054A300  AB FD 09 A6 */	lha r31, 0x9a6(r29)
/* 8054A304  38 7D 00 DE */	addi r3, r29, 0xde
/* 8054A308  38 A0 08 00 */	li r5, 0x800
/* 8054A30C  7F E4 FB 78 */	mr r4, r31
/* 8054A310  4B E7 08 35 */	bl chase_angle
/* 8054A314  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 8054A318  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 8054A31C  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 8054A320  7C 60 F8 51 */	subf. r3, r0, r31
/* 8054A324  7C 03 00 D0 */	neg r0, r3
/* 8054A328  41 80 00 08 */	blt lbl_8054A330
/* 8054A32C  7C 60 1B 78 */	mr r0, r3
lbl_8054A330:
/* 8054A330  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8054A334  41 81 00 14 */	bgt lbl_8054A348
/* 8054A338  7F A3 EB 78 */	mr r3, r29
/* 8054A33C  7F C4 F3 78 */	mr r4, r30
/* 8054A340  38 A0 00 3D */	li r5, 0x3d
/* 8054A344  48 00 0B D9 */	bl aNSC_setupAction
lbl_8054A348:
/* 8054A348  39 61 00 20 */	addi r11, r1, 0x20
/* 8054A34C  4B B5 0B D5 */	bl func_8009AF20
/* 8054A350  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054A354  7C 08 03 A6 */	mtlr r0
/* 8054A358  38 21 00 20 */	addi r1, r1, 0x20
/* 8054A35C  4E 80 00 20 */	blr 
