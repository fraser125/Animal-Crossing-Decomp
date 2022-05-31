lbl_80501BAC:
/* 80501BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501BB0  7C 08 02 A6 */	mflr r0
/* 80501BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501BB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80501BBC  7C 7F 1B 78 */	mr r31, r3
/* 80501BC0  38 9F 00 DE */	addi r4, r31, 0xde
/* 80501BC4  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 80501BC8  38 7F 00 28 */	addi r3, r31, 0x28
/* 80501BCC  38 BF 00 5C */	addi r5, r31, 0x5c
/* 80501BD0  38 FF 01 74 */	addi r7, r31, 0x174
/* 80501BD4  4B E7 0A ED */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 80501BD8  7F E3 FB 78 */	mr r3, r31
/* 80501BDC  38 80 00 00 */	li r4, 0
/* 80501BE0  4B FD 3E DD */	bl Player_actor_Movement_Base_Stop
/* 80501BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80501BE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80501BEC  7C 08 03 A6 */	mtlr r0
/* 80501BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80501BF4  4E 80 00 20 */	blr 
