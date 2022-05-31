lbl_8059CBA8:
/* 8059CBA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059CBAC  7C 08 02 A6 */	mflr r0
/* 8059CBB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059CBB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059CBB8  3B E0 00 00 */	li r31, 0
/* 8059CBBC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059CBC0  7C 7E 1B 78 */	mr r30, r3
/* 8059CBC4  38 61 00 08 */	addi r3, r1, 8
/* 8059CBC8  4B E3 F6 21 */	bl mPlib_Check_DigScoop
/* 8059CBCC  2C 03 00 01 */	cmpwi r3, 1
/* 8059CBD0  40 82 00 3C */	bne lbl_8059CC0C
/* 8059CBD4  C0 61 00 08 */	lfs f3, 8(r1)
/* 8059CBD8  3C 60 80 65 */	lis r3, lit_445@ha /* 0x8064A114@ha */
/* 8059CBDC  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8059CBE0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8059CBE4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8059CBE8  EC 63 00 28 */	fsubs f3, f3, f0
/* 8059CBEC  C0 03 A1 14 */	lfs f0, lit_445@l(r3)  /* 0x8064A114@l */
/* 8059CBF0  EC 22 08 28 */	fsubs f1, f2, f1
/* 8059CBF4  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8059CBF8  EC 21 00 72 */	fmuls f1, f1, f1
/* 8059CBFC  EC 22 08 2A */	fadds f1, f2, f1
/* 8059CC00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059CC04  40 80 00 08 */	bge lbl_8059CC0C
/* 8059CC08  3B E0 00 01 */	li r31, 1
lbl_8059CC0C:
/* 8059CC0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059CC10  7F E3 FB 78 */	mr r3, r31
/* 8059CC14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059CC18  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059CC1C  7C 08 03 A6 */	mtlr r0
/* 8059CC20  38 21 00 20 */	addi r1, r1, 0x20
/* 8059CC24  4E 80 00 20 */	blr 
