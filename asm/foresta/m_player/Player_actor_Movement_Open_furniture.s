lbl_804EB488:
/* 804EB488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EB48C  7C 08 02 A6 */	mflr r0
/* 804EB490  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EB494  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EB498  7C 7F 1B 78 */	mr r31, r3
/* 804EB49C  38 9F 00 DE */	addi r4, r31, 0xde
/* 804EB4A0  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 804EB4A4  38 7F 00 28 */	addi r3, r31, 0x28
/* 804EB4A8  38 BF 00 5C */	addi r5, r31, 0x5c
/* 804EB4AC  38 FF 01 74 */	addi r7, r31, 0x174
/* 804EB4B0  4B E8 72 11 */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 804EB4B4  7F E3 FB 78 */	mr r3, r31
/* 804EB4B8  38 80 00 01 */	li r4, 1
/* 804EB4BC  4B FE A6 01 */	bl Player_actor_Movement_Base_Stop
/* 804EB4C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EB4C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EB4C8  7C 08 03 A6 */	mtlr r0
/* 804EB4CC  38 21 00 10 */	addi r1, r1, 0x10
/* 804EB4D0  4E 80 00 20 */	blr 
