lbl_804E9848:
/* 804E9848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E984C  7C 08 02 A6 */	mflr r0
/* 804E9850  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9854  4B FE D2 E1 */	bl Player_actor_Excute_Corect_forStand
/* 804E9858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E985C  7C 08 03 A6 */	mtlr r0
/* 804E9860  38 21 00 10 */	addi r1, r1, 0x10
/* 804E9864  4E 80 00 20 */	blr 
