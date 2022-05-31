lbl_804E8E8C:
/* 804E8E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E8E90  7C 08 02 A6 */	mflr r0
/* 804E8E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8E98  4B FF FE B5 */	bl Player_actor_setup_main_Wade_common
/* 804E8E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E8EA0  7C 08 03 A6 */	mtlr r0
/* 804E8EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E8EA8  4E 80 00 20 */	blr 
