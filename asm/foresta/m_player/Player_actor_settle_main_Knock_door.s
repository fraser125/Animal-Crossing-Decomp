lbl_80503FA4:
/* 80503FA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80503FA8  7C 08 02 A6 */	mflr r0
/* 80503FAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80503FB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80503FB4  7C 7F 1B 78 */	mr r31, r3
/* 80503FB8  38 7F 01 74 */	addi r3, r31, 0x174
/* 80503FBC  4B E6 E6 79 */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 80503FC0  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 80503FC4  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 80503FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80503FCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80503FD0  7C 08 03 A6 */	mtlr r0
/* 80503FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80503FD8  4E 80 00 20 */	blr 
