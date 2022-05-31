lbl_80506A0C:
/* 80506A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80506A10  7C 08 02 A6 */	mflr r0
/* 80506A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80506A18  4B FD 01 1D */	bl Player_actor_Excute_Corect_forStand
/* 80506A1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80506A20  7C 08 03 A6 */	mtlr r0
/* 80506A24  38 21 00 10 */	addi r1, r1, 0x10
/* 80506A28  4E 80 00 20 */	blr 
