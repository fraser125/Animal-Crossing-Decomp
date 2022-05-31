lbl_804D4B10:
/* 804D4B10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4B14  7C 08 02 A6 */	mflr r0
/* 804D4B18  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4B1C  4B EC 63 9D */	bl mEv_CheckTitleDemo
/* 804D4B20  2C 03 00 00 */	cmpwi r3, 0
/* 804D4B24  40 81 00 10 */	ble lbl_804D4B34
/* 804D4B28  4B F0 92 6D */	bl mPlib_Get_controller_data_for_title_demo_p
/* 804D4B2C  A8 63 00 1C */	lha r3, 0x1c(r3)
/* 804D4B30  48 00 00 14 */	b lbl_804D4B44
lbl_804D4B34:
/* 804D4B34  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804D4B38  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 804D4B3C  80 63 00 00 */	lwz r3, 0(r3)
/* 804D4B40  A8 63 00 C4 */	lha r3, 0xc4(r3)
lbl_804D4B44:
/* 804D4B44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4B48  7C 08 03 A6 */	mtlr r0
/* 804D4B4C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4B50  4E 80 00 20 */	blr 
