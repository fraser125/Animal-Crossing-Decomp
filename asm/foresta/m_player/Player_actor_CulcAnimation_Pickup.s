lbl_804ED5CC:
/* 804ED5CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ED5D0  7C 08 02 A6 */	mflr r0
/* 804ED5D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ED5D8  4B FE 8F B1 */	bl Player_actor_CulcAnimation_Base2
/* 804ED5DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ED5E0  7C 08 03 A6 */	mtlr r0
/* 804ED5E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804ED5E8  4E 80 00 20 */	blr 
