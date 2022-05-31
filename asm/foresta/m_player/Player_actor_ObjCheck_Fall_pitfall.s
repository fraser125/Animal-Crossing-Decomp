lbl_80501FD0:
/* 80501FD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501FD4  7C 08 02 A6 */	mflr r0
/* 80501FD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501FDC  4B FD 4B 59 */	bl Player_actor_Excute_Corect_forStand
/* 80501FE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80501FE4  7C 08 03 A6 */	mtlr r0
/* 80501FE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80501FEC  4E 80 00 20 */	blr 
