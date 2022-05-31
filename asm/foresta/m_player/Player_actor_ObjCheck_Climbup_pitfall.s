lbl_8050283C:
/* 8050283C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80502840  7C 08 02 A6 */	mflr r0
/* 80502844  90 01 00 14 */	stw r0, 0x14(r1)
/* 80502848  4B FD 42 ED */	bl Player_actor_Excute_Corect_forStand
/* 8050284C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80502850  7C 08 03 A6 */	mtlr r0
/* 80502854  38 21 00 10 */	addi r1, r1, 0x10
/* 80502858  4E 80 00 20 */	blr 
