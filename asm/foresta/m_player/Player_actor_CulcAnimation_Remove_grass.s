lbl_805034C8:
/* 805034C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805034CC  7C 08 02 A6 */	mflr r0
/* 805034D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805034D4  4B FD 30 B5 */	bl Player_actor_CulcAnimation_Base2
/* 805034D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805034DC  7C 08 03 A6 */	mtlr r0
/* 805034E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805034E4  4E 80 00 20 */	blr 
