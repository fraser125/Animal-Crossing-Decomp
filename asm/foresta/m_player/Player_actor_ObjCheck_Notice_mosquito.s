lbl_80505D40:
/* 80505D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80505D44  7C 08 02 A6 */	mflr r0
/* 80505D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80505D4C  4B FD 0D E9 */	bl Player_actor_Excute_Corect_forStand
/* 80505D50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80505D54  7C 08 03 A6 */	mtlr r0
/* 80505D58  38 21 00 10 */	addi r1, r1, 0x10
/* 80505D5C  4E 80 00 20 */	blr 
