lbl_804E7FD0:
/* 804E7FD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E7FD4  7C 08 02 A6 */	mflr r0
/* 804E7FD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E7FDC  4B FE EB 59 */	bl Player_actor_Excute_Corect_forStand
/* 804E7FE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E7FE4  7C 08 03 A6 */	mtlr r0
/* 804E7FE8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E7FEC  4E 80 00 20 */	blr 
