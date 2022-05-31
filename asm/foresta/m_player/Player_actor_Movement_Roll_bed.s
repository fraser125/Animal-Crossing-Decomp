lbl_804ECAE0:
/* 804ECAE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ECAE4  7C 08 02 A6 */	mflr r0
/* 804ECAE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ECAEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804ECAF0  7C 7F 1B 78 */	mr r31, r3
/* 804ECAF4  38 9F 00 DE */	addi r4, r31, 0xde
/* 804ECAF8  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 804ECAFC  38 7F 00 28 */	addi r3, r31, 0x28
/* 804ECB00  38 BF 00 5C */	addi r5, r31, 0x5c
/* 804ECB04  38 FF 01 74 */	addi r7, r31, 0x174
/* 804ECB08  4B E8 5B B9 */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 804ECB0C  7F E3 FB 78 */	mr r3, r31
/* 804ECB10  38 80 00 00 */	li r4, 0
/* 804ECB14  4B FE 8F A9 */	bl Player_actor_Movement_Base_Stop
/* 804ECB18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ECB1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804ECB20  7C 08 03 A6 */	mtlr r0
/* 804ECB24  38 21 00 10 */	addi r1, r1, 0x10
/* 804ECB28  4E 80 00 20 */	blr 
