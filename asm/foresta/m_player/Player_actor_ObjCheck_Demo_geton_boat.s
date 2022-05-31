lbl_80506308:
/* 80506308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050630C  7C 08 02 A6 */	mflr r0
/* 80506310  90 01 00 14 */	stw r0, 0x14(r1)
/* 80506314  4B FD 08 21 */	bl Player_actor_Excute_Corect_forStand
/* 80506318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050631C  7C 08 03 A6 */	mtlr r0
/* 80506320  38 21 00 10 */	addi r1, r1, 0x10
/* 80506324  4E 80 00 20 */	blr 
