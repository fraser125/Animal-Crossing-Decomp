lbl_8058BAF8:
/* 8058BAF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058BAFC  7C 08 02 A6 */	mflr r0
/* 8058BB00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058BB04  A8 A3 09 A0 */	lha r5, 0x9a0(r3)
/* 8058BB08  2C 05 00 00 */	cmpwi r5, 0
/* 8058BB0C  40 81 00 10 */	ble lbl_8058BB1C
/* 8058BB10  38 05 FF FF */	addi r0, r5, -1
/* 8058BB14  B0 03 09 A0 */	sth r0, 0x9a0(r3)
/* 8058BB18  48 00 00 18 */	b lbl_8058BB30
lbl_8058BB1C:
/* 8058BB1C  A8 A3 09 A2 */	lha r5, 0x9a2(r3)
/* 8058BB20  38 05 00 01 */	addi r0, r5, 1
/* 8058BB24  B0 03 09 A2 */	sth r0, 0x9a2(r3)
/* 8058BB28  7C 05 07 34 */	extsh r5, r0
/* 8058BB2C  48 00 04 75 */	bl aTKN0_setup_think_proc
lbl_8058BB30:
/* 8058BB30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058BB34  7C 08 03 A6 */	mtlr r0
/* 8058BB38  38 21 00 10 */	addi r1, r1, 0x10
/* 8058BB3C  4E 80 00 20 */	blr 
