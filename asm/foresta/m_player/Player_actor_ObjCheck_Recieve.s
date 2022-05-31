lbl_804FB780:
/* 804FB780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FB784  7C 08 02 A6 */	mflr r0
/* 804FB788  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FB78C  4B FD B3 A9 */	bl Player_actor_Excute_Corect_forStand
/* 804FB790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FB794  7C 08 03 A6 */	mtlr r0
/* 804FB798  38 21 00 10 */	addi r1, r1, 0x10
/* 804FB79C  4E 80 00 20 */	blr 
