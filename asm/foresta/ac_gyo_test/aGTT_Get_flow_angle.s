lbl_805A3738:
/* 805A3738  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A373C  7C 08 02 A6 */	mflr r0
/* 805A3740  7C 64 1B 78 */	mr r4, r3
/* 805A3744  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A3748  38 61 00 08 */	addi r3, r1, 8
/* 805A374C  80 04 00 98 */	lwz r0, 0x98(r4)
/* 805A3750  54 04 AE BE */	rlwinm r4, r0, 0x15, 0x1a, 0x1f
/* 805A3754  4B DF 0B E1 */	bl mCoBG_GetWaterFlow
/* 805A3758  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 805A375C  C0 41 00 08 */	lfs f2, 8(r1)
/* 805A3760  4B E6 88 A1 */	bl atans_table
/* 805A3764  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A3768  7C 08 03 A6 */	mtlr r0
/* 805A376C  38 21 00 20 */	addi r1, r1, 0x20
/* 805A3770  4E 80 00 20 */	blr 
