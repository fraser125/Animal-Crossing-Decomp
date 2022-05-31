lbl_80591D1C:
/* 80591D1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591D20  7C 08 02 A6 */	mflr r0
/* 80591D24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80591D28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80591D2C  7C 7F 1B 78 */	mr r31, r3
/* 80591D30  4B FF FF 61 */	bl aHT1_GetDefaultAngle
/* 80591D34  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 80591D38  7C 63 07 34 */	extsh r3, r3
/* 80591D3C  7C 00 18 00 */	cmpw r0, r3
/* 80591D40  40 82 00 14 */	bne lbl_80591D54
/* 80591D44  38 60 00 00 */	li r3, 0
/* 80591D48  38 00 00 FF */	li r0, 0xff
/* 80591D4C  90 7F 09 98 */	stw r3, 0x998(r31)
/* 80591D50  98 1F 07 F6 */	stb r0, 0x7f6(r31)
lbl_80591D54:
/* 80591D54  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 80591D58  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 80591D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591D60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80591D64  7C 08 03 A6 */	mtlr r0
/* 80591D68  38 21 00 10 */	addi r1, r1, 0x10
/* 80591D6C  4E 80 00 20 */	blr 
