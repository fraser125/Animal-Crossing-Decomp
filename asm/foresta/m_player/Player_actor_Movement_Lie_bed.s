lbl_804EC32C:
/* 804EC32C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EC330  7C 08 02 A6 */	mflr r0
/* 804EC334  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EC338  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EC33C  7C 7F 1B 78 */	mr r31, r3
/* 804EC340  38 9F 00 DE */	addi r4, r31, 0xde
/* 804EC344  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 804EC348  38 7F 00 28 */	addi r3, r31, 0x28
/* 804EC34C  38 BF 00 5C */	addi r5, r31, 0x5c
/* 804EC350  38 FF 01 74 */	addi r7, r31, 0x174
/* 804EC354  4B E8 63 6D */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 804EC358  7F E3 FB 78 */	mr r3, r31
/* 804EC35C  38 80 00 00 */	li r4, 0
/* 804EC360  4B FE 97 5D */	bl Player_actor_Movement_Base_Stop
/* 804EC364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EC368  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EC36C  7C 08 03 A6 */	mtlr r0
/* 804EC370  38 21 00 10 */	addi r1, r1, 0x10
/* 804EC374  4E 80 00 20 */	blr 
