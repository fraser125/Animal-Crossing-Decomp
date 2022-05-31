lbl_805D9CE4:
/* 805D9CE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D9CE8  7C 08 02 A6 */	mflr r0
/* 805D9CEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D9CF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D9CF4  93 C1 00 08 */	stw r30, 8(r1)
/* 805D9CF8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805D9CFC  80 03 03 EC */	lwz r0, 0x3ec(r3)
/* 805D9D00  83 E3 09 8C */	lwz r31, 0x98c(r3)
/* 805D9D04  2C 00 00 03 */	cmpwi r0, 3
/* 805D9D08  83 C3 09 90 */	lwz r30, 0x990(r3)
/* 805D9D0C  40 82 00 30 */	bne lbl_805D9D3C
/* 805D9D10  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 805D9D14  38 A0 00 20 */	li r5, 0x20
/* 805D9D18  A8 9F 00 18 */	lha r4, 0x18(r31)
/* 805D9D1C  4B DE 29 09 */	bl func_803BC624
/* 805D9D20  A8 9F 00 22 */	lha r4, 0x22(r31)
/* 805D9D24  7C 60 07 34 */	extsh r0, r3
/* 805D9D28  7C 04 00 00 */	cmpw r4, r0
/* 805D9D2C  40 81 00 08 */	ble lbl_805D9D34
/* 805D9D30  7C 80 23 78 */	mr r0, r4
lbl_805D9D34:
/* 805D9D34  B0 1F 00 1E */	sth r0, 0x1e(r31)
/* 805D9D38  48 00 00 54 */	b lbl_805D9D8C
lbl_805D9D3C:
/* 805D9D3C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 805D9D40  38 A0 00 20 */	li r5, 0x20
/* 805D9D44  A8 9F 00 18 */	lha r4, 0x18(r31)
/* 805D9D48  4B DE 28 DD */	bl func_803BC624
/* 805D9D4C  88 9E 00 37 */	lbz r4, 0x37(r30)
/* 805D9D50  7C 63 07 34 */	extsh r3, r3
/* 805D9D54  A8 BF 00 22 */	lha r5, 0x22(r31)
/* 805D9D58  7C 03 20 00 */	cmpw r3, r4
/* 805D9D5C  7C 80 23 78 */	mr r0, r4
/* 805D9D60  40 81 00 08 */	ble lbl_805D9D68
/* 805D9D64  7C 60 1B 78 */	mr r0, r3
lbl_805D9D68:
/* 805D9D68  7C 00 28 00 */	cmpw r0, r5
/* 805D9D6C  40 81 00 18 */	ble lbl_805D9D84
/* 805D9D70  7C 03 20 00 */	cmpw r3, r4
/* 805D9D74  7C 80 23 78 */	mr r0, r4
/* 805D9D78  40 81 00 10 */	ble lbl_805D9D88
/* 805D9D7C  7C 60 1B 78 */	mr r0, r3
/* 805D9D80  48 00 00 08 */	b lbl_805D9D88
lbl_805D9D84:
/* 805D9D84  7C A0 2B 78 */	mr r0, r5
lbl_805D9D88:
/* 805D9D88  B0 1F 00 1E */	sth r0, 0x1e(r31)
lbl_805D9D8C:
/* 805D9D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D9D90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D9D94  83 C1 00 08 */	lwz r30, 8(r1)
/* 805D9D98  7C 08 03 A6 */	mtlr r0
/* 805D9D9C  38 21 00 10 */	addi r1, r1, 0x10
/* 805D9DA0  4E 80 00 20 */	blr 
