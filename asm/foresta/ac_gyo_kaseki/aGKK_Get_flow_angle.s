lbl_805A558C:
/* 805A558C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A5590  7C 08 02 A6 */	mflr r0
/* 805A5594  7C 64 1B 78 */	mr r4, r3
/* 805A5598  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A559C  38 61 00 08 */	addi r3, r1, 8
/* 805A55A0  80 04 00 98 */	lwz r0, 0x98(r4)
/* 805A55A4  54 04 AE BE */	rlwinm r4, r0, 0x15, 0x1a, 0x1f
/* 805A55A8  4B DE ED 8D */	bl mCoBG_GetWaterFlow
/* 805A55AC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 805A55B0  C0 41 00 08 */	lfs f2, 8(r1)
/* 805A55B4  4B E6 6A 4D */	bl atans_table
/* 805A55B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A55BC  7C 08 03 A6 */	mtlr r0
/* 805A55C0  38 21 00 20 */	addi r1, r1, 0x20
/* 805A55C4  4E 80 00 20 */	blr 
