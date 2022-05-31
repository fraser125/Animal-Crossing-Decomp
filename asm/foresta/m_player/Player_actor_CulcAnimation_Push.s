lbl_804EA74C:
/* 804EA74C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EA750  7C 08 02 A6 */	mflr r0
/* 804EA754  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EA758  4B FE BE 31 */	bl Player_actor_CulcAnimation_Base2
/* 804EA75C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EA760  7C 08 03 A6 */	mtlr r0
/* 804EA764  38 21 00 10 */	addi r1, r1, 0x10
/* 804EA768  4E 80 00 20 */	blr 
