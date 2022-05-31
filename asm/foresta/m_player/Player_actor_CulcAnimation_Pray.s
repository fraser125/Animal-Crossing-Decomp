lbl_805008FC:
/* 805008FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80500900  7C 08 02 A6 */	mflr r0
/* 80500904  90 01 00 14 */	stw r0, 0x14(r1)
/* 80500908  4B FD 5C 81 */	bl Player_actor_CulcAnimation_Base2
/* 8050090C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80500910  7C 08 03 A6 */	mtlr r0
/* 80500914  38 21 00 10 */	addi r1, r1, 0x10
/* 80500918  4E 80 00 20 */	blr 
