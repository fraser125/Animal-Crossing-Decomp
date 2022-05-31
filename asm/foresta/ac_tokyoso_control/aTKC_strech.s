lbl_804AADF0:
/* 804AADF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AADF4  7C 08 02 A6 */	mflr r0
/* 804AADF8  38 80 00 08 */	li r4, 8
/* 804AADFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AAE00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AAE04  93 C1 00 08 */	stw r30, 8(r1)
/* 804AAE08  7C 7E 1B 78 */	mr r30, r3
/* 804AAE0C  38 60 00 0F */	li r3, 0xf
/* 804AAE10  4B EF 2F BD */	bl mEv_get_save_area
/* 804AAE14  A0 03 00 02 */	lhz r0, 2(r3)
/* 804AAE18  7C 7F 1B 78 */	mr r31, r3
/* 804AAE1C  54 00 06 75 */	rlwinm. r0, r0, 0, 0x19, 0x1a
/* 804AAE20  40 82 00 3C */	bne lbl_804AAE5C
/* 804AAE24  A8 7E 01 A4 */	lha r3, 0x1a4(r30)
/* 804AAE28  2C 03 00 00 */	cmpwi r3, 0
/* 804AAE2C  40 81 00 10 */	ble lbl_804AAE3C
/* 804AAE30  38 03 FF FF */	addi r0, r3, -1
/* 804AAE34  B0 1E 01 A4 */	sth r0, 0x1a4(r30)
/* 804AAE38  48 00 00 24 */	b lbl_804AAE5C
lbl_804AAE3C:
/* 804AAE3C  38 00 00 78 */	li r0, 0x78
/* 804AAE40  7F C3 F3 78 */	mr r3, r30
/* 804AAE44  B0 1E 01 A4 */	sth r0, 0x1a4(r30)
/* 804AAE48  38 80 00 03 */	li r4, 3
/* 804AAE4C  48 00 00 F1 */	bl aTKC_setupAction
/* 804AAE50  A0 1F 00 02 */	lhz r0, 2(r31)
/* 804AAE54  60 00 03 80 */	ori r0, r0, 0x380
/* 804AAE58  B0 1F 00 02 */	sth r0, 2(r31)
lbl_804AAE5C:
/* 804AAE5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AAE60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AAE64  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AAE68  7C 08 03 A6 */	mtlr r0
/* 804AAE6C  38 21 00 10 */	addi r1, r1, 0x10
/* 804AAE70  4E 80 00 20 */	blr 
