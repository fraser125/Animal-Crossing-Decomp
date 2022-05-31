lbl_804FB738:
/* 804FB738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FB73C  7C 08 02 A6 */	mflr r0
/* 804FB740  38 80 00 00 */	li r4, 0
/* 804FB744  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FB748  4B FD A3 75 */	bl Player_actor_Movement_Base_Stop
/* 804FB74C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FB750  7C 08 03 A6 */	mtlr r0
/* 804FB754  38 21 00 10 */	addi r1, r1, 0x10
/* 804FB758  4E 80 00 20 */	blr 
