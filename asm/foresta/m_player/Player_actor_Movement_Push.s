lbl_804EA76C:
/* 804EA76C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EA770  7C 08 02 A6 */	mflr r0
/* 804EA774  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EA778  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EA77C  7C 7F 1B 78 */	mr r31, r3
/* 804EA780  38 9F 00 DE */	addi r4, r31, 0xde
/* 804EA784  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 804EA788  38 7F 00 28 */	addi r3, r31, 0x28
/* 804EA78C  38 BF 00 5C */	addi r5, r31, 0x5c
/* 804EA790  38 FF 01 74 */	addi r7, r31, 0x174
/* 804EA794  4B E8 7F 2D */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 804EA798  7F E3 FB 78 */	mr r3, r31
/* 804EA79C  4B E8 9B 79 */	bl Actor_position_moveF
/* 804EA7A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EA7A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EA7A8  7C 08 03 A6 */	mtlr r0
/* 804EA7AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804EA7B0  4E 80 00 20 */	blr 
