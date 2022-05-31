lbl_804D4A44:
/* 804D4A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4A48  7C 08 02 A6 */	mflr r0
/* 804D4A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4A50  4B EC 64 69 */	bl mEv_CheckTitleDemo
/* 804D4A54  2C 03 00 00 */	cmpwi r3, 0
/* 804D4A58  40 81 00 10 */	ble lbl_804D4A68
/* 804D4A5C  4B F0 93 39 */	bl mPlib_Get_controller_data_for_title_demo_p
/* 804D4A60  C0 23 00 04 */	lfs f1, 4(r3)
/* 804D4A64  48 00 00 14 */	b lbl_804D4A78
lbl_804D4A68:
/* 804D4A68  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804D4A6C  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 804D4A70  80 63 00 00 */	lwz r3, 0(r3)
/* 804D4A74  C0 23 00 AC */	lfs f1, 0xac(r3)
lbl_804D4A78:
/* 804D4A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4A7C  7C 08 03 A6 */	mtlr r0
/* 804D4A80  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4A84  4E 80 00 20 */	blr 
