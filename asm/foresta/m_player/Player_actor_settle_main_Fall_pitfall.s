lbl_80501F20:
/* 80501F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501F24  7C 08 02 A6 */	mflr r0
/* 80501F28  38 63 01 74 */	addi r3, r3, 0x174
/* 80501F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501F30  4B E7 07 05 */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 80501F34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80501F38  7C 08 03 A6 */	mtlr r0
/* 80501F3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80501F40  4E 80 00 20 */	blr 
