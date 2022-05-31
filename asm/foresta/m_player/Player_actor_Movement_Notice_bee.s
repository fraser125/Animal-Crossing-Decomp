lbl_80503004:
/* 80503004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80503008  7C 08 02 A6 */	mflr r0
/* 8050300C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80503010  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80503014  7C 7F 1B 78 */	mr r31, r3
/* 80503018  38 9F 00 DE */	addi r4, r31, 0xde
/* 8050301C  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 80503020  38 7F 00 28 */	addi r3, r31, 0x28
/* 80503024  38 BF 00 5C */	addi r5, r31, 0x5c
/* 80503028  38 FF 01 74 */	addi r7, r31, 0x174
/* 8050302C  4B E6 F6 95 */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 80503030  7F E3 FB 78 */	mr r3, r31
/* 80503034  38 80 00 00 */	li r4, 0
/* 80503038  4B FD 2A 85 */	bl Player_actor_Movement_Base_Stop
/* 8050303C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80503040  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80503044  7C 08 03 A6 */	mtlr r0
/* 80503048  38 21 00 10 */	addi r1, r1, 0x10
/* 8050304C  4E 80 00 20 */	blr 
