lbl_805D8CE8:
/* 805D8CE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D8CEC  7C 08 02 A6 */	mflr r0
/* 805D8CF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D8CF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D8CF8  7C 7F 1B 78 */	mr r31, r3
/* 805D8CFC  A8 83 00 1A */	lha r4, 0x1a(r3)
/* 805D8D00  2C 04 00 01 */	cmpwi r4, 1
/* 805D8D04  40 81 00 60 */	ble lbl_805D8D64
/* 805D8D08  A8 7F 00 24 */	lha r3, 0x24(r31)
/* 805D8D0C  38 04 FF FF */	addi r0, r4, -1
/* 805D8D10  7C 03 00 00 */	cmpw r3, r0
/* 805D8D14  40 80 00 50 */	bge lbl_805D8D64
/* 805D8D18  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 805D8D1C  A8 1F 00 16 */	lha r0, 0x16(r31)
/* 805D8D20  7C 63 00 AE */	lbzx r3, r3, r0
/* 805D8D24  28 03 00 CD */	cmplwi r3, 0xcd
/* 805D8D28  41 82 00 3C */	beq lbl_805D8D64
/* 805D8D2C  38 80 00 01 */	li r4, 1
/* 805D8D30  4B DD 69 6D */	bl mFont_GetCodeWidth
/* 805D8D34  A8 9F 00 26 */	lha r4, 0x26(r31)
/* 805D8D38  7C 63 07 34 */	extsh r3, r3
/* 805D8D3C  A8 1F 00 1C */	lha r0, 0x1c(r31)
/* 805D8D40  7C 64 1A 14 */	add r3, r4, r3
/* 805D8D44  7C 03 00 00 */	cmpw r3, r0
/* 805D8D48  40 81 00 1C */	ble lbl_805D8D64
/* 805D8D4C  38 00 00 00 */	li r0, 0
/* 805D8D50  B0 1F 00 22 */	sth r0, 0x22(r31)
/* 805D8D54  B0 1F 00 26 */	sth r0, 0x26(r31)
/* 805D8D58  A8 7F 00 24 */	lha r3, 0x24(r31)
/* 805D8D5C  38 03 00 01 */	addi r0, r3, 1
/* 805D8D60  B0 1F 00 24 */	sth r0, 0x24(r31)
lbl_805D8D64:
/* 805D8D64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D8D68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D8D6C  7C 08 03 A6 */	mtlr r0
/* 805D8D70  38 21 00 10 */	addi r1, r1, 0x10
/* 805D8D74  4E 80 00 20 */	blr 
