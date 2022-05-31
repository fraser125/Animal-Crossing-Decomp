lbl_804D4A88:
/* 804D4A88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4A8C  7C 08 02 A6 */	mflr r0
/* 804D4A90  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4A94  4B EC 64 25 */	bl mEv_CheckTitleDemo
/* 804D4A98  2C 03 00 00 */	cmpwi r3, 0
/* 804D4A9C  40 81 00 10 */	ble lbl_804D4AAC
/* 804D4AA0  4B F0 92 F5 */	bl mPlib_Get_controller_data_for_title_demo_p
/* 804D4AA4  C0 23 00 08 */	lfs f1, 8(r3)
/* 804D4AA8  48 00 00 14 */	b lbl_804D4ABC
lbl_804D4AAC:
/* 804D4AAC  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804D4AB0  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 804D4AB4  80 63 00 00 */	lwz r3, 0(r3)
/* 804D4AB8  C0 23 00 B0 */	lfs f1, 0xb0(r3)
lbl_804D4ABC:
/* 804D4ABC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4AC0  7C 08 03 A6 */	mtlr r0
/* 804D4AC4  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4AC8  4E 80 00 20 */	blr 
