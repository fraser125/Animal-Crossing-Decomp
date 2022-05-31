lbl_8053EA10:
/* 8053EA10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053EA14  7C 08 02 A6 */	mflr r0
/* 8053EA18  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053EA1C  3C 00 43 30 */	lis r0, 0x4330
/* 8053EA20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8053EA24  7C 9F 23 78 */	mr r31, r4
/* 8053EA28  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8053EA2C  7C 7E 1B 78 */	mr r30, r3
/* 8053EA30  38 7F 01 A8 */	addi r3, r31, 0x1a8
/* 8053EA34  A8 C4 07 54 */	lha r6, 0x754(r4)
/* 8053EA38  3C 80 80 65 */	lis r4, lit_811@ha /* 0x80649384@ha */
/* 8053EA3C  38 A4 93 84 */	addi r5, r4, lit_811@l /* 0x80649384@l */
/* 8053EA40  90 01 00 08 */	stw r0, 8(r1)
/* 8053EA44  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 8053EA48  C8 25 00 00 */	lfd f1, 0(r5)
/* 8053EA4C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8053EA50  C8 01 00 08 */	lfd f0, 8(r1)
/* 8053EA54  EC 20 08 28 */	fsubs f1, f0, f1
/* 8053EA58  4B E3 1A 31 */	bl cKF_FrameControl_passCheck_now
/* 8053EA5C  2C 03 00 01 */	cmpwi r3, 1
/* 8053EA60  40 82 00 1C */	bne lbl_8053EA7C
/* 8053EA64  A8 BF 07 56 */	lha r5, 0x756(r31)
/* 8053EA68  7F C3 F3 78 */	mr r3, r30
/* 8053EA6C  7F E4 FB 78 */	mr r4, r31
/* 8053EA70  38 C0 00 00 */	li r6, 0
/* 8053EA74  38 E0 00 00 */	li r7, 0
/* 8053EA78  4B FF FD 79 */	bl func_8053E7F0
lbl_8053EA7C:
/* 8053EA7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053EA80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8053EA84  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8053EA88  7C 08 03 A6 */	mtlr r0
/* 8053EA8C  38 21 00 20 */	addi r1, r1, 0x20
/* 8053EA90  4E 80 00 20 */	blr 
