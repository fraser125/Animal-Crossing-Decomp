lbl_805A55F4:
/* 805A55F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A55F8  7C 08 02 A6 */	mflr r0
/* 805A55FC  3C 80 80 6C */	lis r4, lit_500@ha /* 0x806C4238@ha */
/* 805A5600  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A5604  38 84 42 38 */	addi r4, r4, lit_500@l /* 0x806C4238@l */
/* 805A5608  80 A3 00 00 */	lwz r5, 0(r3)
/* 805A560C  80 C3 00 04 */	lwz r6, 4(r3)
/* 805A5610  80 03 00 08 */	lwz r0, 8(r3)
/* 805A5614  38 61 00 08 */	addi r3, r1, 8
/* 805A5618  90 A1 00 08 */	stw r5, 8(r1)
/* 805A561C  38 A0 02 83 */	li r5, 0x283
/* 805A5620  90 C1 00 0C */	stw r6, 0xc(r1)
/* 805A5624  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A5628  4B DE E9 91 */	bl mCoBG_GetWaterHeight_File
/* 805A562C  3C 60 80 65 */	lis r3, lit_570@ha /* 0x8064A460@ha */
/* 805A5630  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A5634  C0 03 A4 60 */	lfs f0, lit_570@l(r3)  /* 0x8064A460@l */
/* 805A5638  EC 21 00 28 */	fsubs f1, f1, f0
/* 805A563C  7C 08 03 A6 */	mtlr r0
/* 805A5640  38 21 00 20 */	addi r1, r1, 0x20
/* 805A5644  4E 80 00 20 */	blr 