lbl_804F34C4:
/* 804F34C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F34C8  7C 08 02 A6 */	mflr r0
/* 804F34CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F34D0  4B FE 36 65 */	bl Player_actor_Excute_Corect_forStand
/* 804F34D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F34D8  7C 08 03 A6 */	mtlr r0
/* 804F34DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F34E0  4E 80 00 20 */	blr 
