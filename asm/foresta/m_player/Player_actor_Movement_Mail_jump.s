lbl_80501598:
/* 80501598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050159C  7C 08 02 A6 */	mflr r0
/* 805015A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805015A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805015A8  7C 7F 1B 78 */	mr r31, r3
/* 805015AC  38 9F 00 DE */	addi r4, r31, 0xde
/* 805015B0  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 805015B4  38 7F 00 28 */	addi r3, r31, 0x28
/* 805015B8  38 BF 00 5C */	addi r5, r31, 0x5c
/* 805015BC  38 FF 01 74 */	addi r7, r31, 0x174
/* 805015C0  4B E7 11 01 */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 805015C4  7F E3 FB 78 */	mr r3, r31
/* 805015C8  38 80 00 00 */	li r4, 0
/* 805015CC  4B FD 44 F1 */	bl Player_actor_Movement_Base_Stop
/* 805015D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805015D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805015D8  7C 08 03 A6 */	mtlr r0
/* 805015DC  38 21 00 10 */	addi r1, r1, 0x10
/* 805015E0  4E 80 00 20 */	blr 
