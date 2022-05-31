lbl_804E4CDC:
/* 804E4CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4CE0  7C 08 02 A6 */	mflr r0
/* 804E4CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4CE8  4B FF 0C B9 */	bl Player_actor_Movement_Base_Braking
/* 804E4CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4CF0  7C 08 03 A6 */	mtlr r0
/* 804E4CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4CF8  4E 80 00 20 */	blr 
