lbl_80501C9C:
/* 80501C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501CA0  7C 08 02 A6 */	mflr r0
/* 80501CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501CA8  4B FD 4E 8D */	bl Player_actor_Excute_Corect_forStand
/* 80501CAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80501CB0  7C 08 03 A6 */	mtlr r0
/* 80501CB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80501CB8  4E 80 00 20 */	blr 
