lbl_804D58F8:
/* 804D58F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D58FC  7C 08 02 A6 */	mflr r0
/* 804D5900  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5904  80 A3 0D 08 */	lwz r5, 0xd08(r3)
/* 804D5908  4B FF FF 55 */	bl Player_actor_setup_main_Base2
/* 804D590C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5910  7C 08 03 A6 */	mtlr r0
/* 804D5914  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5918  4E 80 00 20 */	blr 
