lbl_804D4B98:
/* 804D4B98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4B9C  7C 08 02 A6 */	mflr r0
/* 804D4BA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4BA4  4B EC 63 15 */	bl mEv_CheckTitleDemo
/* 804D4BA8  2C 03 00 00 */	cmpwi r3, 0
/* 804D4BAC  40 81 00 10 */	ble lbl_804D4BBC
/* 804D4BB0  4B F0 91 E5 */	bl mPlib_Get_controller_data_for_title_demo_p
/* 804D4BB4  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 804D4BB8  48 00 00 14 */	b lbl_804D4BCC
lbl_804D4BBC:
/* 804D4BBC  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804D4BC0  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 804D4BC4  80 63 00 00 */	lwz r3, 0(r3)
/* 804D4BC8  C0 23 00 DC */	lfs f1, 0xdc(r3)
lbl_804D4BCC:
/* 804D4BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4BD0  7C 08 03 A6 */	mtlr r0
/* 804D4BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4BD8  4E 80 00 20 */	blr 
