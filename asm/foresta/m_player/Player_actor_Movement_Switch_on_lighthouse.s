lbl_805069C0:
/* 805069C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805069C4  7C 08 02 A6 */	mflr r0
/* 805069C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805069CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805069D0  7C 7F 1B 78 */	mr r31, r3
/* 805069D4  38 9F 00 DE */	addi r4, r31, 0xde
/* 805069D8  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 805069DC  38 7F 00 28 */	addi r3, r31, 0x28
/* 805069E0  38 BF 00 5C */	addi r5, r31, 0x5c
/* 805069E4  38 FF 01 74 */	addi r7, r31, 0x174
/* 805069E8  4B E6 BC D9 */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 805069EC  7F E3 FB 78 */	mr r3, r31
/* 805069F0  38 80 00 00 */	li r4, 0
/* 805069F4  4B FC F0 C9 */	bl Player_actor_Movement_Base_Stop
/* 805069F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805069FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80506A00  7C 08 03 A6 */	mtlr r0
/* 80506A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80506A08  4E 80 00 20 */	blr 
