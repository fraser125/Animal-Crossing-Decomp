lbl_804F0C74:
/* 804F0C74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F0C78  7C 08 02 A6 */	mflr r0
/* 804F0C7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F0C80  4B FF FF 9D */	bl Player_actor_Movement_Reflect_axe_common
/* 804F0C84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F0C88  7C 08 03 A6 */	mtlr r0
/* 804F0C8C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F0C90  4E 80 00 20 */	blr 
