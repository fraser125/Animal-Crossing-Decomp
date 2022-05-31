lbl_8051B554:
/* 8051B554  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B558  7C 08 02 A6 */	mflr r0
/* 8051B55C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B560  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051B564  7C 9F 23 78 */	mr r31, r4
/* 8051B568  93 C1 00 08 */	stw r30, 8(r1)
/* 8051B56C  7C 7E 1B 78 */	mr r30, r3
/* 8051B570  4B FF FB E5 */	bl aEBR2_message_ctrl
/* 8051B574  2C 03 00 01 */	cmpwi r3, 1
/* 8051B578  41 82 00 58 */	beq lbl_8051B5D0
/* 8051B57C  7F E3 FB 78 */	mr r3, r31
/* 8051B580  4B EB E0 C1 */	bl get_player_actor_withoutCheck
/* 8051B584  28 03 00 00 */	cmplwi r3, 0
/* 8051B588  41 82 00 48 */	beq lbl_8051B5D0
/* 8051B58C  AB FE 09 A2 */	lha r31, 0x9a2(r30)
/* 8051B590  38 7E 00 DE */	addi r3, r30, 0xde
/* 8051B594  38 A0 08 00 */	li r5, 0x800
/* 8051B598  7F E4 FB 78 */	mr r4, r31
/* 8051B59C  4B E9 F5 A9 */	bl chase_angle
/* 8051B5A0  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8051B5A4  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 8051B5A8  A8 1E 00 DE */	lha r0, 0xde(r30)
/* 8051B5AC  7C 60 F8 51 */	subf. r3, r0, r31
/* 8051B5B0  7C 03 00 D0 */	neg r0, r3
/* 8051B5B4  41 80 00 08 */	blt lbl_8051B5BC
/* 8051B5B8  7C 60 1B 78 */	mr r0, r3
lbl_8051B5BC:
/* 8051B5BC  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8051B5C0  41 81 00 10 */	bgt lbl_8051B5D0
/* 8051B5C4  7F C3 F3 78 */	mr r3, r30
/* 8051B5C8  38 80 00 00 */	li r4, 0
/* 8051B5CC  48 00 05 99 */	bl aEBR2_setupAction
lbl_8051B5D0:
/* 8051B5D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B5D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051B5D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051B5DC  7C 08 03 A6 */	mtlr r0
/* 8051B5E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8051B5E4  4E 80 00 20 */	blr 
