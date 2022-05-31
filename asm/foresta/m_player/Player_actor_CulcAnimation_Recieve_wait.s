lbl_804FB154:
/* 804FB154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FB158  7C 08 02 A6 */	mflr r0
/* 804FB15C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FB160  38 81 00 08 */	addi r4, r1, 8
/* 804FB164  4B FD B4 25 */	bl Player_actor_CulcAnimation_Base2
/* 804FB168  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FB16C  7C 08 03 A6 */	mtlr r0
/* 804FB170  38 21 00 10 */	addi r1, r1, 0x10
/* 804FB174  4E 80 00 20 */	blr 
