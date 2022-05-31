lbl_80505058:
/* 80505058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050505C  7C 08 02 A6 */	mflr r0
/* 80505060  90 01 00 14 */	stw r0, 0x14(r1)
/* 80505064  4B FD 15 25 */	bl Player_actor_CulcAnimation_Base2
/* 80505068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050506C  7C 08 03 A6 */	mtlr r0
/* 80505070  38 21 00 10 */	addi r1, r1, 0x10
/* 80505074  4E 80 00 20 */	blr 
