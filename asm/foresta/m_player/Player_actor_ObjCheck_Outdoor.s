lbl_804E9AA0:
/* 804E9AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E9AA4  7C 08 02 A6 */	mflr r0
/* 804E9AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9AAC  4B FE D1 1D */	bl Player_actor_Excute_Corect_forOutdoor
/* 804E9AB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E9AB4  7C 08 03 A6 */	mtlr r0
/* 804E9AB8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E9ABC  4E 80 00 20 */	blr 
