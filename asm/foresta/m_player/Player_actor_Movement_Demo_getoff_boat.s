lbl_805082DC:
/* 805082DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805082E0  7C 08 02 A6 */	mflr r0
/* 805082E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805082E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805082EC  7C 7F 1B 78 */	mr r31, r3
/* 805082F0  38 9F 00 DE */	addi r4, r31, 0xde
/* 805082F4  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 805082F8  38 7F 00 28 */	addi r3, r31, 0x28
/* 805082FC  38 BF 00 5C */	addi r5, r31, 0x5c
/* 80508300  38 FF 01 74 */	addi r7, r31, 0x174
/* 80508304  4B E6 A3 BD */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 80508308  7F E3 FB 78 */	mr r3, r31
/* 8050830C  38 80 00 00 */	li r4, 0
/* 80508310  4B FC D7 AD */	bl Player_actor_Movement_Base_Stop
/* 80508314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80508318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050831C  7C 08 03 A6 */	mtlr r0
/* 80508320  38 21 00 10 */	addi r1, r1, 0x10
/* 80508324  4E 80 00 20 */	blr 
