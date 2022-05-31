lbl_805062BC:
/* 805062BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805062C0  7C 08 02 A6 */	mflr r0
/* 805062C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805062C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805062CC  7C 7F 1B 78 */	mr r31, r3
/* 805062D0  38 9F 00 DE */	addi r4, r31, 0xde
/* 805062D4  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 805062D8  38 7F 00 28 */	addi r3, r31, 0x28
/* 805062DC  38 BF 00 5C */	addi r5, r31, 0x5c
/* 805062E0  38 FF 01 74 */	addi r7, r31, 0x174
/* 805062E4  4B E6 C3 DD */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 805062E8  7F E3 FB 78 */	mr r3, r31
/* 805062EC  38 80 00 00 */	li r4, 0
/* 805062F0  4B FC F7 CD */	bl Player_actor_Movement_Base_Stop
/* 805062F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805062F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805062FC  7C 08 03 A6 */	mtlr r0
/* 80506300  38 21 00 10 */	addi r1, r1, 0x10
/* 80506304  4E 80 00 20 */	blr 
