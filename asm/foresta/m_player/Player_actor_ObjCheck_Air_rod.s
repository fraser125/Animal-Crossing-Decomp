lbl_804F56D8:
/* 804F56D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F56DC  7C 08 02 A6 */	mflr r0
/* 804F56E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F56E4  4B FE 14 51 */	bl Player_actor_Excute_Corect_forStand
/* 804F56E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F56EC  7C 08 03 A6 */	mtlr r0
/* 804F56F0  38 21 00 10 */	addi r1, r1, 0x10
/* 804F56F4  4E 80 00 20 */	blr 
