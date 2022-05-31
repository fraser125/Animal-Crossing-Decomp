lbl_804ED288:
/* 804ED288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ED28C  7C 08 02 A6 */	mflr r0
/* 804ED290  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ED294  4B FE 98 A1 */	bl Player_actor_Excute_Corect_forStand
/* 804ED298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ED29C  7C 08 03 A6 */	mtlr r0
/* 804ED2A0  38 21 00 10 */	addi r1, r1, 0x10
/* 804ED2A4  4E 80 00 20 */	blr 
