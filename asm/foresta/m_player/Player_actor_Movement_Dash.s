lbl_804E7600:
/* 804E7600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E7604  7C 08 02 A6 */	mflr r0
/* 804E7608  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E760C  4B FF F8 41 */	bl Player_actor_Movement_Run
/* 804E7610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E7614  7C 08 03 A6 */	mtlr r0
/* 804E7618  38 21 00 10 */	addi r1, r1, 0x10
/* 804E761C  4E 80 00 20 */	blr 
