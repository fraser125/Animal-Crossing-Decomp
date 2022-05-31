lbl_805017D8:
/* 805017D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805017DC  7C 08 02 A6 */	mflr r0
/* 805017E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805017E4  38 81 00 08 */	addi r4, r1, 8
/* 805017E8  4B FD 4D A1 */	bl Player_actor_CulcAnimation_Base2
/* 805017EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805017F0  7C 08 03 A6 */	mtlr r0
/* 805017F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805017F8  4E 80 00 20 */	blr 
