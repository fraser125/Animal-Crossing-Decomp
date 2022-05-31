lbl_804B7D88:
/* 804B7D88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804B7D8C  7C 08 02 A6 */	mflr r0
/* 804B7D90  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B7D94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804B7D98  3B E0 00 00 */	li r31, 0
/* 804B7D9C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804B7DA0  7C 9E 23 78 */	mr r30, r4
lbl_804B7DA4:
/* 804B7DA4  A8 7E 00 4C */	lha r3, 0x4c(r30)
/* 804B7DA8  7C 60 07 35 */	extsh. r0, r3
/* 804B7DAC  41 82 00 DC */	beq lbl_804B7E88
/* 804B7DB0  2C 03 00 01 */	cmpwi r3, 1
/* 804B7DB4  40 82 00 70 */	bne lbl_804B7E24
/* 804B7DB8  A8 7E 00 4E */	lha r3, 0x4e(r30)
/* 804B7DBC  38 03 FF FF */	addi r0, r3, -1
/* 804B7DC0  B0 1E 00 4E */	sth r0, 0x4e(r30)
/* 804B7DC4  A8 1E 00 4E */	lha r0, 0x4e(r30)
/* 804B7DC8  2C 00 00 00 */	cmpwi r0, 0
/* 804B7DCC  40 80 00 0C */	bge lbl_804B7DD8
/* 804B7DD0  38 00 00 00 */	li r0, 0
/* 804B7DD4  B0 1E 00 4E */	sth r0, 0x4e(r30)
lbl_804B7DD8:
/* 804B7DD8  A8 7E 00 46 */	lha r3, 0x46(r30)
/* 804B7DDC  38 80 FF FF */	li r4, -1
/* 804B7DE0  A8 1E 00 48 */	lha r0, 0x48(r30)
/* 804B7DE4  2C 03 00 00 */	cmpwi r3, 0
/* 804B7DE8  7C 03 02 14 */	add r0, r3, r0
/* 804B7DEC  B0 1E 00 46 */	sth r0, 0x46(r30)
/* 804B7DF0  41 80 00 08 */	blt lbl_804B7DF8
/* 804B7DF4  38 80 00 01 */	li r4, 1
lbl_804B7DF8:
/* 804B7DF8  A8 1E 00 46 */	lha r0, 0x46(r30)
/* 804B7DFC  38 60 FF FF */	li r3, -1
/* 804B7E00  2C 00 00 00 */	cmpwi r0, 0
/* 804B7E04  41 80 00 08 */	blt lbl_804B7E0C
/* 804B7E08  38 60 00 01 */	li r3, 1
lbl_804B7E0C:
/* 804B7E0C  7C 03 20 00 */	cmpw r3, r4
/* 804B7E10  41 82 00 14 */	beq lbl_804B7E24
/* 804B7E14  38 60 00 00 */	li r3, 0
/* 804B7E18  38 00 00 02 */	li r0, 2
/* 804B7E1C  B0 7E 00 46 */	sth r3, 0x46(r30)
/* 804B7E20  B0 1E 00 4C */	sth r0, 0x4c(r30)
lbl_804B7E24:
/* 804B7E24  A8 7E 00 52 */	lha r3, 0x52(r30)
/* 804B7E28  2C 03 00 00 */	cmpwi r3, 0
/* 804B7E2C  40 81 00 0C */	ble lbl_804B7E38
/* 804B7E30  38 03 FF FF */	addi r0, r3, -1
/* 804B7E34  B0 1E 00 52 */	sth r0, 0x52(r30)
lbl_804B7E38:
/* 804B7E38  A8 1E 00 52 */	lha r0, 0x52(r30)
/* 804B7E3C  2C 00 00 00 */	cmpwi r0, 0
/* 804B7E40  41 81 00 48 */	bgt lbl_804B7E88
/* 804B7E44  A8 1E 00 4C */	lha r0, 0x4c(r30)
/* 804B7E48  2C 00 00 02 */	cmpwi r0, 2
/* 804B7E4C  40 82 00 3C */	bne lbl_804B7E88
/* 804B7E50  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 804B7E54  38 81 00 08 */	addi r4, r1, 8
/* 804B7E58  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 804B7E5C  38 A0 00 01 */	li r5, 1
/* 804B7E60  90 61 00 08 */	stw r3, 8(r1)
/* 804B7E64  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B7E68  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 804B7E6C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B7E70  A0 7E 00 42 */	lhz r3, 0x42(r30)
/* 804B7E74  38 03 FF F9 */	addi r0, r3, -7
/* 804B7E78  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 804B7E7C  4B EE F9 B5 */	bl mFI_SetFG_common
/* 804B7E80  38 00 00 00 */	li r0, 0
/* 804B7E84  B0 1E 00 4C */	sth r0, 0x4c(r30)
lbl_804B7E88:
/* 804B7E88  3B FF 00 01 */	addi r31, r31, 1
/* 804B7E8C  3B DE 00 58 */	addi r30, r30, 0x58
/* 804B7E90  2C 1F 00 05 */	cmpwi r31, 5
/* 804B7E94  41 80 FF 10 */	blt lbl_804B7DA4
/* 804B7E98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B7E9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804B7EA0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804B7EA4  7C 08 03 A6 */	mtlr r0
/* 804B7EA8  38 21 00 20 */	addi r1, r1, 0x20
/* 804B7EAC  4E 80 00 20 */	blr 
