lbl_8040F060:
/* 8040F060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040F064  7C 08 02 A6 */	mflr r0
/* 8040F068  38 63 01 74 */	addi r3, r3, 0x174
/* 8040F06C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040F070  4B F6 1F A5 */	bl cKF_SkeletonInfo_R_play
/* 8040F074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040F078  7C 08 03 A6 */	mtlr r0
/* 8040F07C  38 21 00 10 */	addi r1, r1, 0x10
/* 8040F080  4E 80 00 20 */	blr 
