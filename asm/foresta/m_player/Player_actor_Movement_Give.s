lbl_804FBE60:
/* 804FBE60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FBE64  7C 08 02 A6 */	mflr r0
/* 804FBE68  38 80 00 00 */	li r4, 0
/* 804FBE6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FBE70  4B FD 9C 4D */	bl Player_actor_Movement_Base_Stop
/* 804FBE74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FBE78  7C 08 03 A6 */	mtlr r0
/* 804FBE7C  38 21 00 10 */	addi r1, r1, 0x10
/* 804FBE80  4E 80 00 20 */	blr 
