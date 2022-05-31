lbl_804D4F0C:
/* 804D4F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4F10  7C 08 02 A6 */	mflr r0
/* 804D4F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4F18  4B FF FF 21 */	bl Player_actor_set_viblation_Reflect_scoop_soft
/* 804D4F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4F20  7C 08 03 A6 */	mtlr r0
/* 804D4F24  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4F28  4E 80 00 20 */	blr 
