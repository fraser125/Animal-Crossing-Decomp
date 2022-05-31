lbl_804ADD80:
/* 804ADD80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804ADD84  7C 08 02 A6 */	mflr r0
/* 804ADD88  7C 64 1B 78 */	mr r4, r3
/* 804ADD8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804ADD90  38 61 00 08 */	addi r3, r1, 8
/* 804ADD94  80 04 00 98 */	lwz r0, 0x98(r4)
/* 804ADD98  54 04 AE BE */	rlwinm r4, r0, 0x15, 0x1a, 0x1f
/* 804ADD9C  4B EE 65 99 */	bl mCoBG_GetWaterFlow
/* 804ADDA0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804ADDA4  C0 41 00 08 */	lfs f2, 8(r1)
/* 804ADDA8  4B F5 E2 59 */	bl atans_table
/* 804ADDAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804ADDB0  7C 08 03 A6 */	mtlr r0
/* 804ADDB4  38 21 00 20 */	addi r1, r1, 0x20
/* 804ADDB8  4E 80 00 20 */	blr 
