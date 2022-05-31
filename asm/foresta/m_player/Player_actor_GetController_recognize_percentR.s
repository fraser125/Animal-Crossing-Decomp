lbl_804D4B54:
/* 804D4B54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4B58  7C 08 02 A6 */	mflr r0
/* 804D4B5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4B60  4B EC 63 59 */	bl mEv_CheckTitleDemo
/* 804D4B64  2C 03 00 00 */	cmpwi r3, 0
/* 804D4B68  40 81 00 10 */	ble lbl_804D4B78
/* 804D4B6C  4B F0 92 29 */	bl mPlib_Get_controller_data_for_title_demo_p
/* 804D4B70  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 804D4B74  48 00 00 14 */	b lbl_804D4B88
lbl_804D4B78:
/* 804D4B78  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804D4B7C  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 804D4B80  80 63 00 00 */	lwz r3, 0(r3)
/* 804D4B84  C0 23 00 D0 */	lfs f1, 0xd0(r3)
lbl_804D4B88:
/* 804D4B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4B8C  7C 08 03 A6 */	mtlr r0
/* 804D4B90  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4B94  4E 80 00 20 */	blr 
