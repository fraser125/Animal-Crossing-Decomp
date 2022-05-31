lbl_803BAA9C:
/* 803BAA9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BAAA0  7C 08 02 A6 */	mflr r0
/* 803BAAA4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803BAAA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BAAAC  4B CA 26 B1 */	bl coss
/* 803BAAB0  7C 63 07 34 */	extsh r3, r3
/* 803BAAB4  3C 00 43 30 */	lis r0, 0x4330
/* 803BAAB8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803BAABC  90 01 00 08 */	stw r0, 8(r1)
/* 803BAAC0  3C 80 80 64 */	lis r4, lit_401@ha /* 0x8064255C@ha */
/* 803BAAC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BAAC8  90 61 00 0C */	stw r3, 0xc(r1)
/* 803BAACC  3C 60 80 64 */	lis r3, data_80642554@ha /* 0x80642554@ha */
/* 803BAAD0  C8 44 25 5C */	lfd f2, lit_401@l(r4)  /* 0x8064255C@l */
/* 803BAAD4  C8 21 00 08 */	lfd f1, 8(r1)
/* 803BAAD8  C0 03 25 54 */	lfs f0, data_80642554@l(r3)  /* 0x80642554@l */
/* 803BAADC  EC 21 10 28 */	fsubs f1, f1, f2
/* 803BAAE0  EC 20 00 72 */	fmuls f1, f0, f1
/* 803BAAE4  7C 08 03 A6 */	mtlr r0
/* 803BAAE8  38 21 00 10 */	addi r1, r1, 0x10
/* 803BAAEC  4E 80 00 20 */	blr 
