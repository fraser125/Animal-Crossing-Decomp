lbl_804F56F8:
/* 804F56F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F56FC  7C 08 02 A6 */	mflr r0
/* 804F5700  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5704  4B FE 25 95 */	bl Player_actor_BGcheck_common_type1
/* 804F5708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F570C  7C 08 03 A6 */	mtlr r0
/* 804F5710  38 21 00 10 */	addi r1, r1, 0x10
/* 804F5714  4E 80 00 20 */	blr 
