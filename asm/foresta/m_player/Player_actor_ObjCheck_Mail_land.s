lbl_805017FC:
/* 805017FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501800  7C 08 02 A6 */	mflr r0
/* 80501804  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501808  4B FD 53 2D */	bl Player_actor_Excute_Corect_forStand
/* 8050180C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80501810  7C 08 03 A6 */	mtlr r0
/* 80501814  38 21 00 10 */	addi r1, r1, 0x10
/* 80501818  4E 80 00 20 */	blr 
