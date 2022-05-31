lbl_805027A0:
/* 805027A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805027A4  7C 08 02 A6 */	mflr r0
/* 805027A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805027AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805027B0  7C 7F 1B 78 */	mr r31, r3
/* 805027B4  38 9F 00 DE */	addi r4, r31, 0xde
/* 805027B8  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 805027BC  38 7F 00 28 */	addi r3, r31, 0x28
/* 805027C0  38 BF 00 5C */	addi r5, r31, 0x5c
/* 805027C4  38 FF 01 74 */	addi r7, r31, 0x174
/* 805027C8  4B E6 FE F9 */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 805027CC  7F E3 FB 78 */	mr r3, r31
/* 805027D0  38 80 00 00 */	li r4, 0
/* 805027D4  4B FD 32 E9 */	bl Player_actor_Movement_Base_Stop
/* 805027D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805027DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805027E0  7C 08 03 A6 */	mtlr r0
/* 805027E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805027E8  4E 80 00 20 */	blr 
