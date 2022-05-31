lbl_80631BCC:
/* 80631BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80631BD0  7C 08 02 A6 */	mflr r0
/* 80631BD4  38 63 01 34 */	addi r3, r3, 0x134
/* 80631BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80631BDC  4B D3 F4 39 */	bl cKF_SkeletonInfo_R_play
/* 80631BE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80631BE4  7C 08 03 A6 */	mtlr r0
/* 80631BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80631BEC  4E 80 00 20 */	blr 
