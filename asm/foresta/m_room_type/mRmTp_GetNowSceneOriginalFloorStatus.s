lbl_803E76D8:
/* 803E76D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E76DC  7C 08 02 A6 */	mflr r0
/* 803E76E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E76E4  4B FF FF 25 */	bl mRmTp_GetNowSceneFloorBitInfoP
/* 803E76E8  28 03 00 00 */	cmplwi r3, 0
/* 803E76EC  41 82 00 10 */	beq lbl_803E76FC
/* 803E76F0  88 03 00 00 */	lbz r0, 0(r3)
/* 803E76F4  54 03 D7 FE */	rlwinm r3, r0, 0x1a, 0x1f, 0x1f
/* 803E76F8  48 00 00 08 */	b lbl_803E7700
lbl_803E76FC:
/* 803E76FC  38 60 00 00 */	li r3, 0
lbl_803E7700:
/* 803E7700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E7704  7C 08 03 A6 */	mtlr r0
/* 803E7708  38 21 00 10 */	addi r1, r1, 0x10
/* 803E770C  4E 80 00 20 */	blr 
