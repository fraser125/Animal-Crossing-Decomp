lbl_8060E66C:
/* 8060E66C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8060E670  7C 08 02 A6 */	mflr r0
/* 8060E674  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060E678  38 00 00 50 */	li r0, 0x50
/* 8060E67C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8060E680  7C 7F 1B 78 */	mr r31, r3
/* 8060E684  B0 03 00 00 */	sth r0, 0(r3)
/* 8060E688  4B A4 E6 6D */	bl fqrand
/* 8060E68C  3C 60 80 65 */	lis r3, data_8064C1B4@ha /* 0x8064C1B4@ha */
/* 8060E690  C0 03 C1 B4 */	lfs f0, data_8064C1B4@l(r3)  /* 0x8064C1B4@l */
/* 8060E694  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060E698  FC 00 00 1E */	fctiwz f0, f0
/* 8060E69C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8060E6A0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8060E6A4  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 8060E6A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8060E6AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8060E6B0  7C 08 03 A6 */	mtlr r0
/* 8060E6B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8060E6B8  4E 80 00 20 */	blr 
