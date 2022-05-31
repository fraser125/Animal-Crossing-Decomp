lbl_804F2C8C:
/* 804F2C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F2C90  7C 08 02 A6 */	mflr r0
/* 804F2C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F2C98  4B FF FE C1 */	bl Player_actor_SetEffect_Swing_net
/* 804F2C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F2CA0  7C 08 03 A6 */	mtlr r0
/* 804F2CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 804F2CA8  4E 80 00 20 */	blr 
