lbl_804E57E0:
/* 804E57E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E57E4  7C 08 02 A6 */	mflr r0
/* 804E57E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E57EC  4B FF 13 49 */	bl Player_actor_Excute_Corect_forStand
/* 804E57F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E57F4  7C 08 03 A6 */	mtlr r0
/* 804E57F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E57FC  4E 80 00 20 */	blr 
