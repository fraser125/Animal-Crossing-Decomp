lbl_804F62C0:
/* 804F62C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F62C4  7C 08 02 A6 */	mflr r0
/* 804F62C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F62CC  4B FE 9D 81 */	bl Player_actor_settle_main_Fly_rod_other_func2
/* 804F62D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F62D4  7C 08 03 A6 */	mtlr r0
/* 804F62D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804F62DC  4E 80 00 20 */	blr 
