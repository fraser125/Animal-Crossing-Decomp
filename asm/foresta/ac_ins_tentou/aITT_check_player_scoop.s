lbl_8059FBC8:
/* 8059FBC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059FBCC  7C 08 02 A6 */	mflr r0
/* 8059FBD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059FBD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059FBD8  3B E0 00 00 */	li r31, 0
/* 8059FBDC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059FBE0  7C 7E 1B 78 */	mr r30, r3
/* 8059FBE4  38 61 00 08 */	addi r3, r1, 8
/* 8059FBE8  4B E3 C6 01 */	bl mPlib_Check_DigScoop
/* 8059FBEC  2C 03 00 01 */	cmpwi r3, 1
/* 8059FBF0  40 82 00 3C */	bne lbl_8059FC2C
/* 8059FBF4  C0 61 00 08 */	lfs f3, 8(r1)
/* 8059FBF8  3C 60 80 65 */	lis r3, lit_420@ha /* 0x8064A260@ha */
/* 8059FBFC  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8059FC00  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8059FC04  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8059FC08  EC 63 00 28 */	fsubs f3, f3, f0
/* 8059FC0C  C0 03 A2 60 */	lfs f0, lit_420@l(r3)  /* 0x8064A260@l */
/* 8059FC10  EC 22 08 28 */	fsubs f1, f2, f1
/* 8059FC14  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8059FC18  EC 21 00 72 */	fmuls f1, f1, f1
/* 8059FC1C  EC 22 08 2A */	fadds f1, f2, f1
/* 8059FC20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059FC24  40 80 00 08 */	bge lbl_8059FC2C
/* 8059FC28  3B E0 00 01 */	li r31, 1
lbl_8059FC2C:
/* 8059FC2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059FC30  7F E3 FB 78 */	mr r3, r31
/* 8059FC34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059FC38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059FC3C  7C 08 03 A6 */	mtlr r0
/* 8059FC40  38 21 00 20 */	addi r1, r1, 0x20
/* 8059FC44  4E 80 00 20 */	blr 
