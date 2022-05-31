lbl_804E57C0:
/* 804E57C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E57C4  7C 08 02 A6 */	mflr r0
/* 804E57C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E57CC  4B FF 01 D5 */	bl Player_actor_Movement_Base_Braking
/* 804E57D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E57D4  7C 08 03 A6 */	mtlr r0
/* 804E57D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E57DC  4E 80 00 20 */	blr 
