lbl_80503FFC:
/* 80503FFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80504000  7C 08 02 A6 */	mflr r0
/* 80504004  90 01 00 14 */	stw r0, 0x14(r1)
/* 80504008  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050400C  7C 7F 1B 78 */	mr r31, r3
/* 80504010  38 9F 00 DE */	addi r4, r31, 0xde
/* 80504014  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 80504018  38 7F 00 28 */	addi r3, r31, 0x28
/* 8050401C  38 BF 00 5C */	addi r5, r31, 0x5c
/* 80504020  38 FF 01 74 */	addi r7, r31, 0x174
/* 80504024  4B E6 E6 9D */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 80504028  7F E3 FB 78 */	mr r3, r31
/* 8050402C  38 80 00 00 */	li r4, 0
/* 80504030  4B FD 1A 8D */	bl Player_actor_Movement_Base_Stop
/* 80504034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80504038  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050403C  7C 08 03 A6 */	mtlr r0
/* 80504040  38 21 00 10 */	addi r1, r1, 0x10
/* 80504044  4E 80 00 20 */	blr 
