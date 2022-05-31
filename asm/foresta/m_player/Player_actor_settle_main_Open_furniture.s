lbl_804EB350:
/* 804EB350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EB354  7C 08 02 A6 */	mflr r0
/* 804EB358  38 63 01 74 */	addi r3, r3, 0x174
/* 804EB35C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EB360  4B E8 72 D5 */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 804EB364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EB368  7C 08 03 A6 */	mtlr r0
/* 804EB36C  38 21 00 10 */	addi r1, r1, 0x10
/* 804EB370  4E 80 00 20 */	blr 
