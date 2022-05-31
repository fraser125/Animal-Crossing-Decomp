lbl_804E08F8:
/* 804E08F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E08FC  7C 08 02 A6 */	mflr r0
/* 804E0900  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E0904  4B EB A5 B5 */	bl mEv_CheckTitleDemo
/* 804E0908  2C 03 00 00 */	cmpwi r3, 0
/* 804E090C  40 81 00 10 */	ble lbl_804E091C
/* 804E0910  4B EF D4 85 */	bl mPlib_Get_controller_data_for_title_demo_p
/* 804E0914  A0 63 00 3C */	lhz r3, 0x3c(r3)
/* 804E0918  48 00 00 18 */	b lbl_804E0930
lbl_804E091C:
/* 804E091C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E0920  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E0924  3C 63 00 02 */	addis r3, r3, 2
/* 804E0928  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804E092C  A0 63 04 A4 */	lhz r3, 0x4a4(r3)
lbl_804E0930:
/* 804E0930  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E0934  7C 08 03 A6 */	mtlr r0
/* 804E0938  38 21 00 10 */	addi r1, r1, 0x10
/* 804E093C  4E 80 00 20 */	blr 
