lbl_804E54D8:
/* 804E54D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E54DC  7C 08 02 A6 */	mflr r0
/* 804E54E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E54E4  4B FF 04 BD */	bl Player_actor_Movement_Base_Braking
/* 804E54E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E54EC  7C 08 03 A6 */	mtlr r0
/* 804E54F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E54F4  4E 80 00 20 */	blr 
