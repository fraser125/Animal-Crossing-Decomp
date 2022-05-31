lbl_80634EB4:
/* 80634EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80634EB8  7C 08 02 A6 */	mflr r0
/* 80634EBC  38 63 01 34 */	addi r3, r3, 0x134
/* 80634EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80634EC4  4B D3 C1 51 */	bl cKF_SkeletonInfo_R_play
/* 80634EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80634ECC  7C 08 03 A6 */	mtlr r0
/* 80634ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80634ED4  4E 80 00 20 */	blr 
