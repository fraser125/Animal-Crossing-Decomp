lbl_805812F0:
/* 805812F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805812F4  7C 08 02 A6 */	mflr r0
/* 805812F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805812FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80581300  3B E0 00 00 */	li r31, 0
/* 80581304  93 C1 00 08 */	stw r30, 8(r1)
/* 80581308  7C 7E 1B 78 */	mr r30, r3
/* 8058130C  88 03 00 05 */	lbz r0, 5(r3)
/* 80581310  28 00 00 01 */	cmplwi r0, 1
/* 80581314  40 82 00 2C */	bne lbl_80581340
/* 80581318  4B E3 D7 ED */	bl mMpswd_check_npc_code
/* 8058131C  2C 03 00 01 */	cmpwi r3, 1
/* 80581320  40 82 00 20 */	bne lbl_80581340
/* 80581324  7F C3 F3 78 */	mr r3, r30
/* 80581328  4B E3 D8 19 */	bl mMpswd_check_name
/* 8058132C  2C 03 00 01 */	cmpwi r3, 1
/* 80581330  40 82 00 0C */	bne lbl_8058133C
/* 80581334  3B E0 00 02 */	li r31, 2
/* 80581338  48 00 00 08 */	b lbl_80581340
lbl_8058133C:
/* 8058133C  3B E0 00 08 */	li r31, 8
lbl_80581340:
/* 80581340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80581344  7F E3 FB 78 */	mr r3, r31
/* 80581348  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058134C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80581350  7C 08 03 A6 */	mtlr r0
/* 80581354  38 21 00 10 */	addi r1, r1, 0x10
/* 80581358  4E 80 00 20 */	blr 