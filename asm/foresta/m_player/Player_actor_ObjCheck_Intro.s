lbl_804E4CFC:
/* 804E4CFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4D00  7C 08 02 A6 */	mflr r0
/* 804E4D04  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4D08  4B FF 1E 2D */	bl Player_actor_Excute_Corect_forStand
/* 804E4D0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4D10  7C 08 03 A6 */	mtlr r0
/* 804E4D14  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4D18  4E 80 00 20 */	blr 
