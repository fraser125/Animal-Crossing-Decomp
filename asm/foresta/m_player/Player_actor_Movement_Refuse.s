lbl_804E4F6C:
/* 804E4F6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4F70  7C 08 02 A6 */	mflr r0
/* 804E4F74  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4F78  4B FF 0A 29 */	bl Player_actor_Movement_Base_Braking
/* 804E4F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4F80  7C 08 03 A6 */	mtlr r0
/* 804E4F84  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4F88  4E 80 00 20 */	blr 
