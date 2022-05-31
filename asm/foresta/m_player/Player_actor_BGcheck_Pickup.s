lbl_804ED60C:
/* 804ED60C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ED610  7C 08 02 A6 */	mflr r0
/* 804ED614  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ED618  4B FE A6 81 */	bl Player_actor_BGcheck_common_type1
/* 804ED61C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ED620  7C 08 03 A6 */	mtlr r0
/* 804ED624  38 21 00 10 */	addi r1, r1, 0x10
/* 804ED628  4E 80 00 20 */	blr 
