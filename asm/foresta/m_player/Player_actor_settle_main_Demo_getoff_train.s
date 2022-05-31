lbl_804FE02C:
/* 804FE02C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FE030  7C 08 02 A6 */	mflr r0
/* 804FE034  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FE038  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FE03C  7C 7F 1B 78 */	mr r31, r3
/* 804FE040  38 7F 01 74 */	addi r3, r31, 0x174
/* 804FE044  4B E7 45 F1 */	bl cKF_SkeletonInfo_R_AnimationMove_dt
/* 804FE048  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 804FE04C  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 804FE050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FE054  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FE058  7C 08 03 A6 */	mtlr r0
/* 804FE05C  38 21 00 10 */	addi r1, r1, 0x10
/* 804FE060  4E 80 00 20 */	blr 
