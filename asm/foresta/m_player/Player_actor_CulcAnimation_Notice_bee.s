lbl_80502FE4:
/* 80502FE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80502FE8  7C 08 02 A6 */	mflr r0
/* 80502FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80502FF0  4B FD 35 99 */	bl Player_actor_CulcAnimation_Base2
/* 80502FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80502FF8  7C 08 03 A6 */	mtlr r0
/* 80502FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80503000  4E 80 00 20 */	blr 
