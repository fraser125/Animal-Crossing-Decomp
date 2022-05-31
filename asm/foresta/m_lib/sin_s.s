lbl_803BAAF0:
/* 803BAAF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BAAF4  7C 08 02 A6 */	mflr r0
/* 803BAAF8  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803BAAFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BAB00  4B CA 3D 61 */	bl sins
/* 803BAB04  7C 63 07 34 */	extsh r3, r3
/* 803BAB08  3C 00 43 30 */	lis r0, 0x4330
/* 803BAB0C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803BAB10  90 01 00 08 */	stw r0, 8(r1)
/* 803BAB14  3C 80 80 64 */	lis r4, lit_401@ha /* 0x8064255C@ha */
/* 803BAB18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BAB1C  90 61 00 0C */	stw r3, 0xc(r1)
/* 803BAB20  3C 60 80 64 */	lis r3, data_80642554@ha /* 0x80642554@ha */
/* 803BAB24  C8 44 25 5C */	lfd f2, lit_401@l(r4)  /* 0x8064255C@l */
/* 803BAB28  C8 21 00 08 */	lfd f1, 8(r1)
/* 803BAB2C  C0 03 25 54 */	lfs f0, data_80642554@l(r3)  /* 0x80642554@l */
/* 803BAB30  EC 21 10 28 */	fsubs f1, f1, f2
/* 803BAB34  EC 20 00 72 */	fmuls f1, f0, f1
/* 803BAB38  7C 08 03 A6 */	mtlr r0
/* 803BAB3C  38 21 00 10 */	addi r1, r1, 0x10
/* 803BAB40  4E 80 00 20 */	blr 
