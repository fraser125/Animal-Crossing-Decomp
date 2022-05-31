lbl_8055E2D8:
/* 8055E2D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055E2DC  7C 08 02 A6 */	mflr r0
/* 8055E2E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055E2E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8055E2E8  4B B3 CB ED */	bl func_8009AED4
/* 8055E2EC  7C 7D 1B 78 */	mr r29, r3
/* 8055E2F0  7C 9E 23 78 */	mr r30, r4
/* 8055E2F4  4B FF DB 31 */	bl aNSC_message_ctrl
/* 8055E2F8  2C 03 00 01 */	cmpwi r3, 1
/* 8055E2FC  41 82 00 5C */	beq lbl_8055E358
/* 8055E300  7F C3 F3 78 */	mr r3, r30
/* 8055E304  4B E7 B3 3D */	bl get_player_actor_withoutCheck
/* 8055E308  28 03 00 00 */	cmplwi r3, 0
/* 8055E30C  41 82 00 4C */	beq lbl_8055E358
/* 8055E310  AB FD 09 A6 */	lha r31, 0x9a6(r29)
/* 8055E314  38 7D 00 DE */	addi r3, r29, 0xde
/* 8055E318  38 A0 08 00 */	li r5, 0x800
/* 8055E31C  7F E4 FB 78 */	mr r4, r31
/* 8055E320  4B E5 C8 25 */	bl chase_angle
/* 8055E324  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 8055E328  B0 1D 00 36 */	sth r0, 0x36(r29)
/* 8055E32C  A8 1D 00 DE */	lha r0, 0xde(r29)
/* 8055E330  7C 60 F8 51 */	subf. r3, r0, r31
/* 8055E334  7C 03 00 D0 */	neg r0, r3
/* 8055E338  41 80 00 08 */	blt lbl_8055E340
/* 8055E33C  7C 60 1B 78 */	mr r0, r3
lbl_8055E340:
/* 8055E340  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8055E344  41 81 00 14 */	bgt lbl_8055E358
/* 8055E348  7F A3 EB 78 */	mr r3, r29
/* 8055E34C  7F C4 F3 78 */	mr r4, r30
/* 8055E350  38 A0 00 3D */	li r5, 0x3d
/* 8055E354  48 00 0A 7D */	bl aNSC_setupAction
lbl_8055E358:
/* 8055E358  39 61 00 20 */	addi r11, r1, 0x20
/* 8055E35C  4B B3 CB C5 */	bl func_8009AF20
/* 8055E360  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055E364  7C 08 03 A6 */	mtlr r0
/* 8055E368  38 21 00 20 */	addi r1, r1, 0x20
/* 8055E36C  4E 80 00 20 */	blr 
