lbl_80376BD0:
/* 80376BD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80376BD4  7C 08 02 A6 */	mflr r0
/* 80376BD8  3C 80 80 64 */	lis r4, data_8064123C@ha /* 0x8064123C@ha */
/* 80376BDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80376BE0  C0 24 12 3C */	lfs f1, data_8064123C@l(r4)  /* 0x8064123C@l */
/* 80376BE4  80 C3 00 00 */	lwz r6, 0(r3)
/* 80376BE8  80 A3 00 04 */	lwz r5, 4(r3)
/* 80376BEC  80 03 00 08 */	lwz r0, 8(r3)
/* 80376BF0  38 61 00 08 */	addi r3, r1, 8
/* 80376BF4  90 C1 00 08 */	stw r6, 8(r1)
/* 80376BF8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80376BFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80376C00  48 01 8D 99 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 80376C04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80376C08  7C 08 03 A6 */	mtlr r0
/* 80376C0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80376C10  4E 80 00 20 */	blr 
