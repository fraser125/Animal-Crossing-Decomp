lbl_804E5A88:
/* 804E5A88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5A8C  7C 08 02 A6 */	mflr r0
/* 804E5A90  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5A94  4B FE FF 0D */	bl Player_actor_Movement_Base_Braking
/* 804E5A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E5A9C  7C 08 03 A6 */	mtlr r0
/* 804E5AA0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5AA4  4E 80 00 20 */	blr 
