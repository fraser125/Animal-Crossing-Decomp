lbl_8050091C:
/* 8050091C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80500920  7C 08 02 A6 */	mflr r0
/* 80500924  90 01 00 14 */	stw r0, 0x14(r1)
/* 80500928  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050092C  7C 7F 1B 78 */	mr r31, r3
/* 80500930  38 9F 00 DE */	addi r4, r31, 0xde
/* 80500934  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 80500938  38 7F 00 28 */	addi r3, r31, 0x28
/* 8050093C  38 BF 00 5C */	addi r5, r31, 0x5c
/* 80500940  38 FF 01 74 */	addi r7, r31, 0x174
/* 80500944  4B E7 1D 7D */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 80500948  7F E3 FB 78 */	mr r3, r31
/* 8050094C  38 80 00 00 */	li r4, 0
/* 80500950  4B FD 51 6D */	bl Player_actor_Movement_Base_Stop
/* 80500954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80500958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050095C  7C 08 03 A6 */	mtlr r0
/* 80500960  38 21 00 10 */	addi r1, r1, 0x10
/* 80500964  4E 80 00 20 */	blr 
