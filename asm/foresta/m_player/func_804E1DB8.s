lbl_804E1DB8:
/* 804E1DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1DBC  7C 08 02 A6 */	mflr r0
/* 804E1DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1DC4  4B FF ED DD */	bl Player_actor_Get_umbrella_p
/* 804E1DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1DCC  38 60 00 00 */	li r3, 0
/* 804E1DD0  7C 08 03 A6 */	mtlr r0
/* 804E1DD4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1DD8  4E 80 00 20 */	blr 
