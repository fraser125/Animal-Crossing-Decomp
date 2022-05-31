lbl_804F5D14:
/* 804F5D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5D18  7C 08 02 A6 */	mflr r0
/* 804F5D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5D20  4B FE A3 09 */	bl Player_actor_settle_main_Collect_rod_other_func2
/* 804F5D24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5D28  7C 08 03 A6 */	mtlr r0
/* 804F5D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F5D30  4E 80 00 20 */	blr 
