lbl_805059C8:
/* 805059C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805059CC  7C 08 02 A6 */	mflr r0
/* 805059D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805059D4  4B FD 11 61 */	bl Player_actor_Excute_Corect_forStand
/* 805059D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805059DC  7C 08 03 A6 */	mtlr r0
/* 805059E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805059E4  4E 80 00 20 */	blr 
