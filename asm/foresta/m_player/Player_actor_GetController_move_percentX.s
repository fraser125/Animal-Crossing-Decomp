lbl_804D4A00:
/* 804D4A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4A04  7C 08 02 A6 */	mflr r0
/* 804D4A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4A0C  4B EC 64 AD */	bl mEv_CheckTitleDemo
/* 804D4A10  2C 03 00 00 */	cmpwi r3, 0
/* 804D4A14  40 81 00 10 */	ble lbl_804D4A24
/* 804D4A18  4B F0 93 7D */	bl mPlib_Get_controller_data_for_title_demo_p
/* 804D4A1C  C0 23 00 00 */	lfs f1, 0(r3)
/* 804D4A20  48 00 00 14 */	b lbl_804D4A34
lbl_804D4A24:
/* 804D4A24  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804D4A28  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 804D4A2C  80 63 00 00 */	lwz r3, 0(r3)
/* 804D4A30  C0 23 00 A8 */	lfs f1, 0xa8(r3)
lbl_804D4A34:
/* 804D4A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4A38  7C 08 03 A6 */	mtlr r0
/* 804D4A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4A40  4E 80 00 20 */	blr 
