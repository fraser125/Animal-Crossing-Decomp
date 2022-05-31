lbl_80506E0C:
/* 80506E0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80506E10  7C 08 02 A6 */	mflr r0
/* 80506E14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80506E18  4B FC FD 1D */	bl Player_actor_Excute_Corect_forStand
/* 80506E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80506E20  7C 08 03 A6 */	mtlr r0
/* 80506E24  38 21 00 10 */	addi r1, r1, 0x10
/* 80506E28  4E 80 00 20 */	blr 
