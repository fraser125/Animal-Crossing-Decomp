lbl_80598E8C:
/* 80598E8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80598E90  7C 08 02 A6 */	mflr r0
/* 80598E94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80598E98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80598E9C  3B E0 00 00 */	li r31, 0
/* 80598EA0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80598EA4  7C 7E 1B 78 */	mr r30, r3
/* 80598EA8  38 61 00 08 */	addi r3, r1, 8
/* 80598EAC  4B E4 33 3D */	bl mPlib_Check_DigScoop
/* 80598EB0  2C 03 00 01 */	cmpwi r3, 1
/* 80598EB4  40 82 00 3C */	bne lbl_80598EF0
/* 80598EB8  C0 61 00 08 */	lfs f3, 8(r1)
/* 80598EBC  3C 60 80 65 */	lis r3, lit_583@ha /* 0x80649EF8@ha */
/* 80598EC0  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80598EC4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80598EC8  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80598ECC  EC 63 00 28 */	fsubs f3, f3, f0
/* 80598ED0  C0 03 9E F8 */	lfs f0, lit_583@l(r3)  /* 0x80649EF8@l */
/* 80598ED4  EC 22 08 28 */	fsubs f1, f2, f1
/* 80598ED8  EC 43 00 F2 */	fmuls f2, f3, f3
/* 80598EDC  EC 21 00 72 */	fmuls f1, f1, f1
/* 80598EE0  EC 22 08 2A */	fadds f1, f2, f1
/* 80598EE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80598EE8  40 80 00 08 */	bge lbl_80598EF0
/* 80598EEC  3B E0 00 01 */	li r31, 1
lbl_80598EF0:
/* 80598EF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80598EF4  7F E3 FB 78 */	mr r3, r31
/* 80598EF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80598EFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80598F00  7C 08 03 A6 */	mtlr r0
/* 80598F04  38 21 00 20 */	addi r1, r1, 0x20
/* 80598F08  4E 80 00 20 */	blr 
