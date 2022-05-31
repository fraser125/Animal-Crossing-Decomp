lbl_806371C8:
/* 806371C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806371CC  7C 08 02 A6 */	mflr r0
/* 806371D0  38 63 01 34 */	addi r3, r3, 0x134
/* 806371D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806371D8  4B D3 9E 3D */	bl cKF_SkeletonInfo_R_play
/* 806371DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806371E0  7C 08 03 A6 */	mtlr r0
/* 806371E4  38 21 00 10 */	addi r1, r1, 0x10
/* 806371E8  4E 80 00 20 */	blr 
