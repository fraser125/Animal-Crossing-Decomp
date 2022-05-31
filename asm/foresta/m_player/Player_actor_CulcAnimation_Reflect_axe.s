lbl_804F0C94:
/* 804F0C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F0C98  7C 08 02 A6 */	mflr r0
/* 804F0C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F0CA0  4B FE 58 E9 */	bl Player_actor_CulcAnimation_Base2
/* 804F0CA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F0CA8  7C 08 03 A6 */	mtlr r0
/* 804F0CAC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F0CB0  4E 80 00 20 */	blr 
