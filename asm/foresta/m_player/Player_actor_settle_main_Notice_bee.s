lbl_80502FA0:
/* 80502FA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80502FA4  7C 08 02 A6 */	mflr r0
/* 80502FA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80502FAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80502FB0  7C 7F 1B 78 */	mr r31, r3
/* 80502FB4  38 7F 01 74 */	addi r3, r31, 0x174
/* 80502FB8  4B E6 F6 7D */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 80502FBC  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 80502FC0  38 60 00 44 */	li r3, 0x44
/* 80502FC4  38 80 01 68 */	li r4, 0x168
/* 80502FC8  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 80502FCC  4B E7 93 59 */	bl mBGMPsComp_delete_ps_demo
/* 80502FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80502FD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80502FD8  7C 08 03 A6 */	mtlr r0
/* 80502FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80502FE0  4E 80 00 20 */	blr 
