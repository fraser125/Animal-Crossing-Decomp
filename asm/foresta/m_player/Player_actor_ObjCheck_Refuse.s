lbl_804E4FB0:
/* 804E4FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4FB4  7C 08 02 A6 */	mflr r0
/* 804E4FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4FBC  4B FF 1B 79 */	bl Player_actor_Excute_Corect_forStand
/* 804E4FC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4FC4  7C 08 03 A6 */	mtlr r0
/* 804E4FC8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4FCC  4E 80 00 20 */	blr 
