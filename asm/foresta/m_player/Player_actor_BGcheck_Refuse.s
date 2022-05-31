lbl_804E4FD0:
/* 804E4FD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4FD4  7C 08 02 A6 */	mflr r0
/* 804E4FD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4FDC  4B FF 2D 15 */	bl Player_actor_BGcheck_common_type2
/* 804E4FE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4FE4  7C 08 03 A6 */	mtlr r0
/* 804E4FE8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4FEC  4E 80 00 20 */	blr 
