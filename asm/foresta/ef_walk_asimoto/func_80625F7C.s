lbl_80625F7C:
/* 80625F7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80625F80  7C 08 02 A6 */	mflr r0
/* 80625F84  7C A5 07 34 */	extsh r5, r5
/* 80625F88  3C C0 80 65 */	lis r6, lit_378@ha /* 0x8064D00C@ha */
/* 80625F8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80625F90  3C 00 43 30 */	lis r0, 0x4330
/* 80625F94  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80625F98  3C E0 80 65 */	lis r7, data_8064CFFC@ha /* 0x8064CFFC@ha */
/* 80625F9C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80625FA0  7C 9F 23 78 */	mr r31, r4
/* 80625FA4  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80625FA8  38 A6 D0 0C */	addi r5, r6, lit_378@l /* 0x8064D00C@l */
/* 80625FAC  C8 25 00 00 */	lfd f1, 0(r5)
/* 80625FB0  3C C0 80 65 */	lis r6, lit_375@ha /* 0x8064D008@ha */
/* 80625FB4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80625FB8  7C 7E 1B 78 */	mr r30, r3
/* 80625FBC  C0 46 D0 08 */	lfs f2, lit_375@l(r6)  /* 0x8064D008@l */
/* 80625FC0  38 61 00 08 */	addi r3, r1, 8
/* 80625FC4  84 A7 CF FC */	lwzu r5, data_8064CFFC@l(r7)  /* 0x8064CFFC@l */
/* 80625FC8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80625FCC  80 87 00 04 */	lwz r4, 4(r7)
/* 80625FD0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80625FD4  80 07 00 08 */	lwz r0, 8(r7)
/* 80625FD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80625FDC  90 A1 00 08 */	stw r5, 8(r1)
/* 80625FE0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80625FE4  EC 22 00 32 */	fmuls f1, f2, f0
/* 80625FE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80625FEC  4B DE 5D C1 */	bl sMath_RotateY
/* 80625FF0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80625FF4  C0 01 00 08 */	lfs f0, 8(r1)
/* 80625FF8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80625FFC  EC 42 00 2A */	fadds f2, f2, f0
/* 80626000  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80626004  D0 5F 00 00 */	stfs f2, 0(r31)
/* 80626008  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8062600C  EC 22 08 2A */	fadds f1, f2, f1
/* 80626010  D0 3F 00 04 */	stfs f1, 4(r31)
/* 80626014  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80626018  EC 01 00 2A */	fadds f0, f1, f0
/* 8062601C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80626020  80 7F 00 00 */	lwz r3, 0(r31)
/* 80626024  80 1F 00 04 */	lwz r0, 4(r31)
/* 80626028  90 7E 00 00 */	stw r3, 0(r30)
/* 8062602C  90 1E 00 04 */	stw r0, 4(r30)
/* 80626030  80 1F 00 08 */	lwz r0, 8(r31)
/* 80626034  90 1E 00 08 */	stw r0, 8(r30)
/* 80626038  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8062603C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80626040  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80626044  7C 08 03 A6 */	mtlr r0
/* 80626048  38 21 00 30 */	addi r1, r1, 0x30
/* 8062604C  4E 80 00 20 */	blr 
