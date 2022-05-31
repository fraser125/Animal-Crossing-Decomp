lbl_80599D4C:
/* 80599D4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80599D50  7C 08 02 A6 */	mflr r0
/* 80599D54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80599D58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80599D5C  3B E0 00 00 */	li r31, 0
/* 80599D60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80599D64  7C 7E 1B 78 */	mr r30, r3
/* 80599D68  38 61 00 08 */	addi r3, r1, 8
/* 80599D6C  4B E4 24 7D */	bl mPlib_Check_DigScoop
/* 80599D70  2C 03 00 01 */	cmpwi r3, 1
/* 80599D74  40 82 00 3C */	bne lbl_80599DB0
/* 80599D78  C0 61 00 08 */	lfs f3, 8(r1)
/* 80599D7C  3C 60 80 65 */	lis r3, lit_467@ha /* 0x80649F60@ha */
/* 80599D80  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80599D84  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80599D88  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80599D8C  EC 63 00 28 */	fsubs f3, f3, f0
/* 80599D90  C0 03 9F 60 */	lfs f0, lit_467@l(r3)  /* 0x80649F60@l */
/* 80599D94  EC 22 08 28 */	fsubs f1, f2, f1
/* 80599D98  EC 43 00 F2 */	fmuls f2, f3, f3
/* 80599D9C  EC 21 00 72 */	fmuls f1, f1, f1
/* 80599DA0  EC 22 08 2A */	fadds f1, f2, f1
/* 80599DA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80599DA8  40 80 00 08 */	bge lbl_80599DB0
/* 80599DAC  3B E0 00 01 */	li r31, 1
lbl_80599DB0:
/* 80599DB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80599DB4  7F E3 FB 78 */	mr r3, r31
/* 80599DB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80599DBC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80599DC0  7C 08 03 A6 */	mtlr r0
/* 80599DC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80599DC8  4E 80 00 20 */	blr 
