lbl_804255A8:
/* 804255A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804255AC  7C 08 02 A6 */	mflr r0
/* 804255B0  7C 64 1B 78 */	mr r4, r3
/* 804255B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804255B8  38 61 00 08 */	addi r3, r1, 8
/* 804255BC  80 04 00 98 */	lwz r0, 0x98(r4)
/* 804255C0  54 04 AE BE */	rlwinm r4, r0, 0x15, 0x1a, 0x1f
/* 804255C4  4B F6 ED 71 */	bl mCoBG_GetWaterFlow
/* 804255C8  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804255CC  C0 41 00 08 */	lfs f2, 8(r1)
/* 804255D0  4B FE 6A 31 */	bl atans_table
/* 804255D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804255D8  7C 08 03 A6 */	mtlr r0
/* 804255DC  38 21 00 20 */	addi r1, r1, 0x20
/* 804255E0  4E 80 00 20 */	blr 
