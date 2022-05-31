lbl_804F27C0:
/* 804F27C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F27C4  7C 08 02 A6 */	mflr r0
/* 804F27C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F27CC  4B FE 43 69 */	bl Player_actor_Excute_Corect_forStand
/* 804F27D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F27D4  7C 08 03 A6 */	mtlr r0
/* 804F27D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804F27DC  4E 80 00 20 */	blr 
