lbl_804FB130:
/* 804FB130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FB134  7C 08 02 A6 */	mflr r0
/* 804FB138  38 80 00 00 */	li r4, 0
/* 804FB13C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FB140  4B FD A9 7D */	bl Player_actor_Movement_Base_Stop
/* 804FB144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FB148  7C 08 03 A6 */	mtlr r0
/* 804FB14C  38 21 00 10 */	addi r1, r1, 0x10
/* 804FB150  4E 80 00 20 */	blr 
