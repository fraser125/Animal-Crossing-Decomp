lbl_80500078:
/* 80500078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050007C  7C 08 02 A6 */	mflr r0
/* 80500080  90 01 00 14 */	stw r0, 0x14(r1)
/* 80500084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80500088  7C 7F 1B 78 */	mr r31, r3
/* 8050008C  38 9F 00 DE */	addi r4, r31, 0xde
/* 80500090  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 80500094  38 7F 00 28 */	addi r3, r31, 0x28
/* 80500098  38 BF 00 5C */	addi r5, r31, 0x5c
/* 8050009C  38 FF 01 74 */	addi r7, r31, 0x174
/* 805000A0  4B E7 26 21 */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 805000A4  7F E3 FB 78 */	mr r3, r31
/* 805000A8  38 80 00 00 */	li r4, 0
/* 805000AC  4B FD 5A 11 */	bl Player_actor_Movement_Base_Stop
/* 805000B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805000B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805000B8  7C 08 03 A6 */	mtlr r0
/* 805000BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805000C0  4E 80 00 20 */	blr 
