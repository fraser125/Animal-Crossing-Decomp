lbl_804FE0D8:
/* 804FE0D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FE0DC  7C 08 02 A6 */	mflr r0
/* 804FE0E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FE0E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FE0E8  7C 7F 1B 78 */	mr r31, r3
/* 804FE0EC  38 9F 00 DE */	addi r4, r31, 0xde
/* 804FE0F0  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 804FE0F4  38 7F 00 28 */	addi r3, r31, 0x28
/* 804FE0F8  38 BF 00 5C */	addi r5, r31, 0x5c
/* 804FE0FC  38 FF 01 74 */	addi r7, r31, 0x174
/* 804FE100  4B E7 45 C1 */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 804FE104  7F E3 FB 78 */	mr r3, r31
/* 804FE108  38 80 00 00 */	li r4, 0
/* 804FE10C  4B FD 79 B1 */	bl Player_actor_Movement_Base_Stop
/* 804FE110  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FE114  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FE118  7C 08 03 A6 */	mtlr r0
/* 804FE11C  38 21 00 10 */	addi r1, r1, 0x10
/* 804FE120  4E 80 00 20 */	blr 
