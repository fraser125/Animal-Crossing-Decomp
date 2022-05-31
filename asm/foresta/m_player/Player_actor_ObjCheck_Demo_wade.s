lbl_804FE734:
/* 804FE734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FE738  7C 08 02 A6 */	mflr r0
/* 804FE73C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FE740  4B FD 83 F5 */	bl Player_actor_Excute_Corect_forStand
/* 804FE744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FE748  7C 08 03 A6 */	mtlr r0
/* 804FE74C  38 21 00 10 */	addi r1, r1, 0x10
/* 804FE750  4E 80 00 20 */	blr 
