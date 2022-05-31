lbl_8050275C:
/* 8050275C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80502760  7C 08 02 A6 */	mflr r0
/* 80502764  38 63 01 74 */	addi r3, r3, 0x174
/* 80502768  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050276C  4B E6 FE C9 */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 80502770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80502774  7C 08 03 A6 */	mtlr r0
/* 80502778  38 21 00 10 */	addi r1, r1, 0x10
/* 8050277C  4E 80 00 20 */	blr 
