lbl_804FB434:
/* 804FB434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FB438  7C 08 02 A6 */	mflr r0
/* 804FB43C  38 80 00 00 */	li r4, 0
/* 804FB440  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FB444  4B FD A6 79 */	bl Player_actor_Movement_Base_Stop
/* 804FB448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FB44C  7C 08 03 A6 */	mtlr r0
/* 804FB450  38 21 00 10 */	addi r1, r1, 0x10
/* 804FB454  4E 80 00 20 */	blr 
