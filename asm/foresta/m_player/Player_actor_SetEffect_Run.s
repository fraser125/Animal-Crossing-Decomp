lbl_804E6DB8:
/* 804E6DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E6DBC  7C 08 02 A6 */	mflr r0
/* 804E6DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E6DC4  4B FF F6 FD */	bl Player_actor_SetEffect_Walk
/* 804E6DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E6DCC  7C 08 03 A6 */	mtlr r0
/* 804E6DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E6DD4  4E 80 00 20 */	blr 
