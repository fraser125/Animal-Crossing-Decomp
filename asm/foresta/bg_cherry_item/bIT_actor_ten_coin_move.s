lbl_804B0A04:
/* 804B0A04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804B0A08  7C 08 02 A6 */	mflr r0
/* 804B0A0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B0A10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804B0A14  3B E0 00 00 */	li r31, 0
/* 804B0A18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804B0A1C  7C 9E 23 78 */	mr r30, r4
lbl_804B0A20:
/* 804B0A20  A8 7E 00 4C */	lha r3, 0x4c(r30)
/* 804B0A24  7C 60 07 35 */	extsh. r0, r3
/* 804B0A28  41 82 00 DC */	beq lbl_804B0B04
/* 804B0A2C  2C 03 00 01 */	cmpwi r3, 1
/* 804B0A30  40 82 00 70 */	bne lbl_804B0AA0
/* 804B0A34  A8 7E 00 4E */	lha r3, 0x4e(r30)
/* 804B0A38  38 03 FF FF */	addi r0, r3, -1
/* 804B0A3C  B0 1E 00 4E */	sth r0, 0x4e(r30)
/* 804B0A40  A8 1E 00 4E */	lha r0, 0x4e(r30)
/* 804B0A44  2C 00 00 00 */	cmpwi r0, 0
/* 804B0A48  40 80 00 0C */	bge lbl_804B0A54
/* 804B0A4C  38 00 00 00 */	li r0, 0
/* 804B0A50  B0 1E 00 4E */	sth r0, 0x4e(r30)
lbl_804B0A54:
/* 804B0A54  A8 7E 00 46 */	lha r3, 0x46(r30)
/* 804B0A58  38 80 FF FF */	li r4, -1
/* 804B0A5C  A8 1E 00 48 */	lha r0, 0x48(r30)
/* 804B0A60  2C 03 00 00 */	cmpwi r3, 0
/* 804B0A64  7C 03 02 14 */	add r0, r3, r0
/* 804B0A68  B0 1E 00 46 */	sth r0, 0x46(r30)
/* 804B0A6C  41 80 00 08 */	blt lbl_804B0A74
/* 804B0A70  38 80 00 01 */	li r4, 1
lbl_804B0A74:
/* 804B0A74  A8 1E 00 46 */	lha r0, 0x46(r30)
/* 804B0A78  38 60 FF FF */	li r3, -1
/* 804B0A7C  2C 00 00 00 */	cmpwi r0, 0
/* 804B0A80  41 80 00 08 */	blt lbl_804B0A88
/* 804B0A84  38 60 00 01 */	li r3, 1
lbl_804B0A88:
/* 804B0A88  7C 03 20 00 */	cmpw r3, r4
/* 804B0A8C  41 82 00 14 */	beq lbl_804B0AA0
/* 804B0A90  38 60 00 00 */	li r3, 0
/* 804B0A94  38 00 00 02 */	li r0, 2
/* 804B0A98  B0 7E 00 46 */	sth r3, 0x46(r30)
/* 804B0A9C  B0 1E 00 4C */	sth r0, 0x4c(r30)
lbl_804B0AA0:
/* 804B0AA0  A8 7E 00 52 */	lha r3, 0x52(r30)
/* 804B0AA4  2C 03 00 00 */	cmpwi r3, 0
/* 804B0AA8  40 81 00 0C */	ble lbl_804B0AB4
/* 804B0AAC  38 03 FF FF */	addi r0, r3, -1
/* 804B0AB0  B0 1E 00 52 */	sth r0, 0x52(r30)
lbl_804B0AB4:
/* 804B0AB4  A8 1E 00 52 */	lha r0, 0x52(r30)
/* 804B0AB8  2C 00 00 00 */	cmpwi r0, 0
/* 804B0ABC  41 81 00 48 */	bgt lbl_804B0B04
/* 804B0AC0  A8 1E 00 4C */	lha r0, 0x4c(r30)
/* 804B0AC4  2C 00 00 02 */	cmpwi r0, 2
/* 804B0AC8  40 82 00 3C */	bne lbl_804B0B04
/* 804B0ACC  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 804B0AD0  38 81 00 08 */	addi r4, r1, 8
/* 804B0AD4  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 804B0AD8  38 A0 00 01 */	li r5, 1
/* 804B0ADC  90 61 00 08 */	stw r3, 8(r1)
/* 804B0AE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B0AE4  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 804B0AE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B0AEC  A0 7E 00 42 */	lhz r3, 0x42(r30)
/* 804B0AF0  38 03 FF F9 */	addi r0, r3, -7
/* 804B0AF4  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 804B0AF8  4B EF 6D 39 */	bl mFI_SetFG_common
/* 804B0AFC  38 00 00 00 */	li r0, 0
/* 804B0B00  B0 1E 00 4C */	sth r0, 0x4c(r30)
lbl_804B0B04:
/* 804B0B04  3B FF 00 01 */	addi r31, r31, 1
/* 804B0B08  3B DE 00 58 */	addi r30, r30, 0x58
/* 804B0B0C  2C 1F 00 05 */	cmpwi r31, 5
/* 804B0B10  41 80 FF 10 */	blt lbl_804B0A20
/* 804B0B14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B0B18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804B0B1C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804B0B20  7C 08 03 A6 */	mtlr r0
/* 804B0B24  38 21 00 20 */	addi r1, r1, 0x20
/* 804B0B28  4E 80 00 20 */	blr 
