lbl_80501F64:
/* 80501F64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501F68  7C 08 02 A6 */	mflr r0
/* 80501F6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501F70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80501F74  7C 7F 1B 78 */	mr r31, r3
/* 80501F78  38 9F 00 DE */	addi r4, r31, 0xde
/* 80501F7C  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 80501F80  38 7F 00 28 */	addi r3, r31, 0x28
/* 80501F84  38 BF 00 5C */	addi r5, r31, 0x5c
/* 80501F88  38 FF 01 74 */	addi r7, r31, 0x174
/* 80501F8C  4B E7 07 35 */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 80501F90  7F E3 FB 78 */	mr r3, r31
/* 80501F94  38 80 00 00 */	li r4, 0
/* 80501F98  4B FD 3B 25 */	bl Player_actor_Movement_Base_Stop
/* 80501F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80501FA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80501FA4  7C 08 03 A6 */	mtlr r0
/* 80501FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80501FAC  4E 80 00 20 */	blr 
