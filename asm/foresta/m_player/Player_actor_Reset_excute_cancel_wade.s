lbl_804DD46C:
/* 804DD46C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DD470  7C 08 02 A6 */	mflr r0
/* 804DD474  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DD478  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DD47C  7C 7F 1B 78 */	mr r31, r3
/* 804DD480  80 03 12 14 */	lwz r0, 0x1214(r3)
/* 804DD484  2C 00 00 00 */	cmpwi r0, 0
/* 804DD488  41 82 00 48 */	beq lbl_804DD4D0
/* 804DD48C  4B EF CA B5 */	bl mPlib_Get_unable_wade
/* 804DD490  2C 03 00 00 */	cmpwi r3, 0
/* 804DD494  41 82 00 34 */	beq lbl_804DD4C8
/* 804DD498  A0 7F 12 10 */	lhz r3, 0x1210(r31)
/* 804DD49C  A0 1F 12 1C */	lhz r0, 0x121c(r31)
/* 804DD4A0  7C 83 00 51 */	subf. r4, r3, r0
/* 804DD4A4  40 80 00 10 */	bge lbl_804DD4B4
/* 804DD4A8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804DD4AC  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804DD4B0  7C 84 00 50 */	subf r4, r4, r0
lbl_804DD4B4:
/* 804DD4B4  2C 04 00 00 */	cmpwi r4, 0
/* 804DD4B8  40 81 00 18 */	ble lbl_804DD4D0
/* 804DD4BC  38 00 00 00 */	li r0, 0
/* 804DD4C0  90 1F 12 14 */	stw r0, 0x1214(r31)
/* 804DD4C4  48 00 00 0C */	b lbl_804DD4D0
lbl_804DD4C8:
/* 804DD4C8  38 00 00 00 */	li r0, 0
/* 804DD4CC  90 1F 12 14 */	stw r0, 0x1214(r31)
lbl_804DD4D0:
/* 804DD4D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DD4D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DD4D8  7C 08 03 A6 */	mtlr r0
/* 804DD4DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804DD4E0  4E 80 00 20 */	blr 
