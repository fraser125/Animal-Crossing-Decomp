lbl_804D49C4:
/* 804D49C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D49C8  7C 08 02 A6 */	mflr r0
/* 804D49CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D49D0  4B EC 64 E9 */	bl mEv_CheckTitleDemo
/* 804D49D4  2C 03 00 00 */	cmpwi r3, 0
/* 804D49D8  40 81 00 14 */	ble lbl_804D49EC
/* 804D49DC  4B F0 93 B9 */	bl mPlib_Get_controller_data_for_title_demo_p
/* 804D49E0  88 63 00 3B */	lbz r3, 0x3b(r3)
/* 804D49E4  7C 63 07 74 */	extsb r3, r3
/* 804D49E8  48 00 00 08 */	b lbl_804D49F0
lbl_804D49EC:
/* 804D49EC  4B F0 9D 11 */	bl mPlib_CheckButtonOnly_forDush
lbl_804D49F0:
/* 804D49F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D49F4  7C 08 03 A6 */	mtlr r0
/* 804D49F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D49FC  4E 80 00 20 */	blr 
