lbl_806311DC:
/* 806311DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806311E0  7C 08 02 A6 */	mflr r0
/* 806311E4  38 63 01 34 */	addi r3, r3, 0x134
/* 806311E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806311EC  4B D3 FE 29 */	bl cKF_SkeletonInfo_R_play
/* 806311F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806311F4  7C 08 03 A6 */	mtlr r0
/* 806311F8  38 21 00 10 */	addi r1, r1, 0x10
/* 806311FC  4E 80 00 20 */	blr 
