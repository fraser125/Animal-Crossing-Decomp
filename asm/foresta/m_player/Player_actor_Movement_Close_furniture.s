lbl_804EBAB0:
/* 804EBAB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EBAB4  7C 08 02 A6 */	mflr r0
/* 804EBAB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EBABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EBAC0  7C 7F 1B 78 */	mr r31, r3
/* 804EBAC4  38 9F 00 DE */	addi r4, r31, 0xde
/* 804EBAC8  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 804EBACC  38 7F 00 28 */	addi r3, r31, 0x28
/* 804EBAD0  38 BF 00 5C */	addi r5, r31, 0x5c
/* 804EBAD4  38 FF 01 74 */	addi r7, r31, 0x174
/* 804EBAD8  4B E8 6B E9 */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 804EBADC  7F E3 FB 78 */	mr r3, r31
/* 804EBAE0  4B E8 88 35 */	bl Actor_position_moveF
/* 804EBAE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EBAE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EBAEC  7C 08 03 A6 */	mtlr r0
/* 804EBAF0  38 21 00 10 */	addi r1, r1, 0x10
/* 804EBAF4  4E 80 00 20 */	blr 
