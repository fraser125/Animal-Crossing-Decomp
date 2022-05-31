lbl_804ED5A8:
/* 804ED5A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804ED5AC  7C 08 02 A6 */	mflr r0
/* 804ED5B0  38 80 00 00 */	li r4, 0
/* 804ED5B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804ED5B8  4B FE 85 05 */	bl Player_actor_Movement_Base_Stop
/* 804ED5BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804ED5C0  7C 08 03 A6 */	mtlr r0
/* 804ED5C4  38 21 00 10 */	addi r1, r1, 0x10
/* 804ED5C8  4E 80 00 20 */	blr 
