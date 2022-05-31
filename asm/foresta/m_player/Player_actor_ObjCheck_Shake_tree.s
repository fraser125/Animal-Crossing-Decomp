lbl_8050116C:
/* 8050116C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501170  7C 08 02 A6 */	mflr r0
/* 80501174  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501178  4B FD 59 BD */	bl Player_actor_Excute_Corect_forStand
/* 8050117C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80501180  7C 08 03 A6 */	mtlr r0
/* 80501184  38 21 00 10 */	addi r1, r1, 0x10
/* 80501188  4E 80 00 20 */	blr 
