lbl_8050153C:
/* 8050153C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501540  7C 08 02 A6 */	mflr r0
/* 80501544  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050154C  7C 7F 1B 78 */	mr r31, r3
/* 80501550  38 7F 01 74 */	addi r3, r31, 0x174
/* 80501554  4B E7 10 E1 */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 80501558  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8050155C  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 80501560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80501564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80501568  7C 08 03 A6 */	mtlr r0
/* 8050156C  38 21 00 10 */	addi r1, r1, 0x10
/* 80501570  4E 80 00 20 */	blr 