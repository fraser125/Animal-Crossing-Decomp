lbl_8050040C:
/* 8050040C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80500410  7C 08 02 A6 */	mflr r0
/* 80500414  90 01 00 14 */	stw r0, 0x14(r1)
/* 80500418  4B FD 61 71 */	bl Player_actor_CulcAnimation_Base2
/* 8050041C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80500420  7C 08 03 A6 */	mtlr r0
/* 80500424  38 21 00 10 */	addi r1, r1, 0x10
/* 80500428  4E 80 00 20 */	blr 
