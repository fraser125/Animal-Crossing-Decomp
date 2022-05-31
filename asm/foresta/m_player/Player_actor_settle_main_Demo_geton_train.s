lbl_804FDB80:
/* 804FDB80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FDB84  7C 08 02 A6 */	mflr r0
/* 804FDB88  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FDB8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FDB90  7C 7F 1B 78 */	mr r31, r3
/* 804FDB94  38 7F 01 74 */	addi r3, r31, 0x174
/* 804FDB98  4B E7 4A 9D */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 804FDB9C  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 804FDBA0  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 804FDBA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FDBA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FDBAC  7C 08 03 A6 */	mtlr r0
/* 804FDBB0  38 21 00 10 */	addi r1, r1, 0x10
/* 804FDBB4  4E 80 00 20 */	blr 
