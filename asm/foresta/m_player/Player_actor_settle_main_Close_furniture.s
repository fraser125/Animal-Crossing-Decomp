lbl_804EB98C:
/* 804EB98C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EB990  7C 08 02 A6 */	mflr r0
/* 804EB994  38 63 01 74 */	addi r3, r3, 0x174
/* 804EB998  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EB99C  4B E8 6C 99 */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 804EB9A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EB9A4  7C 08 03 A6 */	mtlr r0
/* 804EB9A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804EB9AC  4E 80 00 20 */	blr 
