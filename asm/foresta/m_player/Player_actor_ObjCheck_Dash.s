lbl_804E7620:
/* 804E7620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E7624  7C 08 02 A6 */	mflr r0
/* 804E7628  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E762C  4B FE F5 09 */	bl Player_actor_Excute_Corect_forStand
/* 804E7630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E7634  7C 08 03 A6 */	mtlr r0
/* 804E7638  38 21 00 10 */	addi r1, r1, 0x10
/* 804E763C  4E 80 00 20 */	blr 
