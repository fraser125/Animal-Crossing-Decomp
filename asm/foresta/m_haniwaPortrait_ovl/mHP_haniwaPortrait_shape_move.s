lbl_805DF9AC:
/* 805DF9AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DF9B0  7C 08 02 A6 */	mflr r0
/* 805DF9B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DF9B8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DF9BC  80 63 09 84 */	lwz r3, 0x984(r3)
/* 805DF9C0  4B D9 16 55 */	bl cKF_SkeletonInfo_R_play
/* 805DF9C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DF9C8  7C 08 03 A6 */	mtlr r0
/* 805DF9CC  38 21 00 10 */	addi r1, r1, 0x10
/* 805DF9D0  4E 80 00 20 */	blr 
