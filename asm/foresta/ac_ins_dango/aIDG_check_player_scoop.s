lbl_805978D4:
/* 805978D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805978D8  7C 08 02 A6 */	mflr r0
/* 805978DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805978E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805978E4  3B E0 00 00 */	li r31, 0
/* 805978E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805978EC  7C 7E 1B 78 */	mr r30, r3
/* 805978F0  38 61 00 08 */	addi r3, r1, 8
/* 805978F4  4B E4 48 F5 */	bl mPlib_Check_DigScoop
/* 805978F8  2C 03 00 01 */	cmpwi r3, 1
/* 805978FC  40 82 00 3C */	bne lbl_80597938
/* 80597900  C0 61 00 08 */	lfs f3, 8(r1)
/* 80597904  3C 60 80 65 */	lis r3, lit_472@ha /* 0x80649E80@ha */
/* 80597908  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8059790C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80597910  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80597914  EC 63 00 28 */	fsubs f3, f3, f0
/* 80597918  C0 03 9E 80 */	lfs f0, lit_472@l(r3)  /* 0x80649E80@l */
/* 8059791C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80597920  EC 43 00 F2 */	fmuls f2, f3, f3
/* 80597924  EC 21 00 72 */	fmuls f1, f1, f1
/* 80597928  EC 22 08 2A */	fadds f1, f2, f1
/* 8059792C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80597930  40 80 00 08 */	bge lbl_80597938
/* 80597934  3B E0 00 01 */	li r31, 1
lbl_80597938:
/* 80597938  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059793C  7F E3 FB 78 */	mr r3, r31
/* 80597940  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80597944  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80597948  7C 08 03 A6 */	mtlr r0
/* 8059794C  38 21 00 20 */	addi r1, r1, 0x20
/* 80597950  4E 80 00 20 */	blr 
