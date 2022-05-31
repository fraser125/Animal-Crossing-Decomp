lbl_8050042C:
/* 8050042C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80500430  7C 08 02 A6 */	mflr r0
/* 80500434  90 01 00 14 */	stw r0, 0x14(r1)
/* 80500438  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050043C  7C 7F 1B 78 */	mr r31, r3
/* 80500440  38 9F 00 DE */	addi r4, r31, 0xde
/* 80500444  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 80500448  38 7F 00 28 */	addi r3, r31, 0x28
/* 8050044C  38 BF 00 5C */	addi r5, r31, 0x5c
/* 80500450  38 FF 01 74 */	addi r7, r31, 0x174
/* 80500454  4B E7 22 6D */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 80500458  7F E3 FB 78 */	mr r3, r31
/* 8050045C  38 80 00 00 */	li r4, 0
/* 80500460  4B FD 56 5D */	bl Player_actor_Movement_Base_Stop
/* 80500464  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80500468  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050046C  7C 08 03 A6 */	mtlr r0
/* 80500470  38 21 00 10 */	addi r1, r1, 0x10
/* 80500474  4E 80 00 20 */	blr 
