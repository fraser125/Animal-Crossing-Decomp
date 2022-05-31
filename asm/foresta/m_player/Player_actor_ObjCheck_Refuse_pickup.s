lbl_804E5248:
/* 804E5248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E524C  7C 08 02 A6 */	mflr r0
/* 804E5250  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5254  4B FF 18 E1 */	bl Player_actor_Excute_Corect_forStand
/* 804E5258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E525C  7C 08 03 A6 */	mtlr r0
/* 804E5260  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5264  4E 80 00 20 */	blr 
