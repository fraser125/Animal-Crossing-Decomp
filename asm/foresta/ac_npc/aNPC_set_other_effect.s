lbl_80530A34:
/* 80530A34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80530A38  7C 08 02 A6 */	mflr r0
/* 80530A3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80530A40  3C 00 43 30 */	lis r0, 0x4330
/* 80530A44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80530A48  7C 9F 23 78 */	mr r31, r4
/* 80530A4C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80530A50  7C 7E 1B 78 */	mr r30, r3
/* 80530A54  38 7F 01 A8 */	addi r3, r31, 0x1a8
/* 80530A58  A8 C4 07 54 */	lha r6, 0x754(r4)
/* 80530A5C  3C 80 80 65 */	lis r4, lit_818@ha /* 0x80649284@ha */
/* 80530A60  38 A4 92 84 */	addi r5, r4, lit_818@l /* 0x80649284@l */
/* 80530A64  90 01 00 08 */	stw r0, 8(r1)
/* 80530A68  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 80530A6C  C8 25 00 00 */	lfd f1, 0(r5)
/* 80530A70  90 81 00 0C */	stw r4, 0xc(r1)
/* 80530A74  C8 01 00 08 */	lfd f0, 8(r1)
/* 80530A78  EC 20 08 28 */	fsubs f1, f0, f1
/* 80530A7C  4B E3 FA 0D */	bl cKF_FrameControl_passCheck_now
/* 80530A80  2C 03 00 01 */	cmpwi r3, 1
/* 80530A84  40 82 00 1C */	bne lbl_80530AA0
/* 80530A88  A8 BF 07 56 */	lha r5, 0x756(r31)
/* 80530A8C  7F C3 F3 78 */	mr r3, r30
/* 80530A90  7F E4 FB 78 */	mr r4, r31
/* 80530A94  38 C0 00 00 */	li r6, 0
/* 80530A98  38 E0 00 00 */	li r7, 0
/* 80530A9C  4B FF FD 79 */	bl func_80530814
lbl_80530AA0:
/* 80530AA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80530AA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80530AA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80530AAC  7C 08 03 A6 */	mtlr r0
/* 80530AB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80530AB4  4E 80 00 20 */	blr 
