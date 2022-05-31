lbl_804FBA8C:
/* 804FBA8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FBA90  7C 08 02 A6 */	mflr r0
/* 804FBA94  38 80 00 00 */	li r4, 0
/* 804FBA98  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FBA9C  4B FD A0 21 */	bl Player_actor_Movement_Base_Stop
/* 804FBAA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FBAA4  7C 08 03 A6 */	mtlr r0
/* 804FBAA8  38 21 00 10 */	addi r1, r1, 0x10
/* 804FBAAC  4E 80 00 20 */	blr 
