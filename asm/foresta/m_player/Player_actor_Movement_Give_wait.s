lbl_804FC19C:
/* 804FC19C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FC1A0  7C 08 02 A6 */	mflr r0
/* 804FC1A4  38 80 00 00 */	li r4, 0
/* 804FC1A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FC1AC  4B FD 99 11 */	bl Player_actor_Movement_Base_Stop
/* 804FC1B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FC1B4  7C 08 03 A6 */	mtlr r0
/* 804FC1B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804FC1BC  4E 80 00 20 */	blr 
