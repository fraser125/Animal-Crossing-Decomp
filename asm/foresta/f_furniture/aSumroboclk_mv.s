lbl_8063A838:
/* 8063A838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063A83C  7C 08 02 A6 */	mflr r0
/* 8063A840  38 63 01 34 */	addi r3, r3, 0x134
/* 8063A844  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063A848  4B D3 67 CD */	bl cKF_SkeletonInfo_R_play
/* 8063A84C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063A850  7C 08 03 A6 */	mtlr r0
/* 8063A854  38 21 00 10 */	addi r1, r1, 0x10
/* 8063A858  4E 80 00 20 */	blr 
