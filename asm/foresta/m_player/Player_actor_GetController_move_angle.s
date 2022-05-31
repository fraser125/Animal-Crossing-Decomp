lbl_804D4ACC:
/* 804D4ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4AD0  7C 08 02 A6 */	mflr r0
/* 804D4AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4AD8  4B EC 63 E1 */	bl mEv_CheckTitleDemo
/* 804D4ADC  2C 03 00 00 */	cmpwi r3, 0
/* 804D4AE0  40 81 00 10 */	ble lbl_804D4AF0
/* 804D4AE4  4B F0 92 B1 */	bl mPlib_Get_controller_data_for_title_demo_p
/* 804D4AE8  A8 63 00 0C */	lha r3, 0xc(r3)
/* 804D4AEC  48 00 00 14 */	b lbl_804D4B00
lbl_804D4AF0:
/* 804D4AF0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804D4AF4  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 804D4AF8  80 63 00 00 */	lwz r3, 0(r3)
/* 804D4AFC  A8 63 00 B4 */	lha r3, 0xb4(r3)
lbl_804D4B00:
/* 804D4B00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4B04  7C 08 03 A6 */	mtlr r0
/* 804D4B08  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4B0C  4E 80 00 20 */	blr 
