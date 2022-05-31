lbl_804F6308:
/* 804F6308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F630C  7C 08 02 A6 */	mflr r0
/* 804F6310  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F6314  4B FE 02 75 */	bl Player_actor_CulcAnimation_Base2
/* 804F6318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F631C  7C 08 03 A6 */	mtlr r0
/* 804F6320  38 21 00 10 */	addi r1, r1, 0x10
/* 804F6324  4E 80 00 20 */	blr 
