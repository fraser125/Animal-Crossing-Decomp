lbl_8060E94C:
/* 8060E94C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8060E950  7C 08 02 A6 */	mflr r0
/* 8060E954  3C A0 80 65 */	lis r5, data_8064C1D4@ha /* 0x8064C1D4@ha */
/* 8060E958  3C 80 80 65 */	lis r4, lit_385@ha /* 0x8064C1D8@ha */
/* 8060E95C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060E960  38 00 00 50 */	li r0, 0x50
/* 8060E964  C0 25 C1 D4 */	lfs f1, data_8064C1D4@l(r5)  /* 0x8064C1D4@l */
/* 8060E968  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8060E96C  7C 7F 1B 78 */	mr r31, r3
/* 8060E970  C0 04 C1 D8 */	lfs f0, lit_385@l(r4)  /* 0x8064C1D8@l */
/* 8060E974  B0 03 00 00 */	sth r0, 0(r3)
/* 8060E978  38 00 00 00 */	li r0, 0
/* 8060E97C  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 8060E980  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 8060E984  D0 3F 00 3C */	stfs f1, 0x3c(r31)
/* 8060E988  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 8060E98C  B0 1F 00 4E */	sth r0, 0x4e(r31)
/* 8060E990  B0 1F 00 50 */	sth r0, 0x50(r31)
/* 8060E994  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8060E998  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8060E99C  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8060E9A0  4B A4 E3 55 */	bl fqrand
/* 8060E9A4  3C 60 80 65 */	lis r3, lit_386@ha /* 0x8064C1DC@ha */
/* 8060E9A8  C0 03 C1 DC */	lfs f0, lit_386@l(r3)  /* 0x8064C1DC@l */
/* 8060E9AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060E9B0  FC 00 00 1E */	fctiwz f0, f0
/* 8060E9B4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8060E9B8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8060E9BC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8060E9C0  B0 1F 00 52 */	sth r0, 0x52(r31)
/* 8060E9C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8060E9C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8060E9CC  7C 08 03 A6 */	mtlr r0
/* 8060E9D0  38 21 00 20 */	addi r1, r1, 0x20
/* 8060E9D4  4E 80 00 20 */	blr 
