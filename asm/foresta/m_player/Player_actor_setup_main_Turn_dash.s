lbl_804E8698:
/* 804E8698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E869C  7C 08 02 A6 */	mflr r0
/* 804E86A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E86A4  4B FF FE F5 */	bl Player_actor_setup_main_Turn_dash_common
/* 804E86A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E86AC  7C 08 03 A6 */	mtlr r0
/* 804E86B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E86B4  4E 80 00 20 */	blr 
