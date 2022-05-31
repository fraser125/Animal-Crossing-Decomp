lbl_8050688C:
/* 8050688C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80506890  7C 08 02 A6 */	mflr r0
/* 80506894  90 01 00 14 */	stw r0, 0x14(r1)
/* 80506898  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050689C  7C 7F 1B 78 */	mr r31, r3
/* 805068A0  38 7F 01 74 */	addi r3, r31, 0x174
/* 805068A4  4B E6 BD 91 */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 805068A8  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 805068AC  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 805068B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805068B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805068B8  7C 08 03 A6 */	mtlr r0
/* 805068BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805068C0  4E 80 00 20 */	blr 
