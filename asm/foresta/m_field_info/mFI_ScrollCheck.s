lbl_803A5A98:
/* 803A5A98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A5A9C  7C 08 02 A6 */	mflr r0
/* 803A5AA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A5AA4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803A5AA8  7C 9F 23 78 */	mr r31, r4
/* 803A5AAC  38 81 00 08 */	addi r4, r1, 8
/* 803A5AB0  80 A3 00 00 */	lwz r5, 0(r3)
/* 803A5AB4  80 C3 00 04 */	lwz r6, 4(r3)
/* 803A5AB8  80 03 00 08 */	lwz r0, 8(r3)
/* 803A5ABC  38 61 00 0C */	addi r3, r1, 0xc
/* 803A5AC0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 803A5AC4  38 A1 00 10 */	addi r5, r1, 0x10
/* 803A5AC8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803A5ACC  90 01 00 18 */	stw r0, 0x18(r1)
/* 803A5AD0  4B FF FC 91 */	bl mFI_Wpos2BlockNum
/* 803A5AD4  2C 03 00 00 */	cmpwi r3, 0
/* 803A5AD8  40 82 00 0C */	bne lbl_803A5AE4
/* 803A5ADC  38 60 00 00 */	li r3, 0
/* 803A5AE0  48 00 00 84 */	b lbl_803A5B64
lbl_803A5AE4:
/* 803A5AE4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803A5AE8  2C 00 00 03 */	cmpwi r0, 3
/* 803A5AEC  41 82 00 44 */	beq lbl_803A5B30
/* 803A5AF0  40 80 00 14 */	bge lbl_803A5B04
/* 803A5AF4  2C 00 00 01 */	cmpwi r0, 1
/* 803A5AF8  41 82 00 18 */	beq lbl_803A5B10
/* 803A5AFC  40 80 00 24 */	bge lbl_803A5B20
/* 803A5B00  48 00 00 50 */	b lbl_803A5B50
lbl_803A5B04:
/* 803A5B04  2C 00 00 05 */	cmpwi r0, 5
/* 803A5B08  40 80 00 48 */	bge lbl_803A5B50
/* 803A5B0C  48 00 00 34 */	b lbl_803A5B40
lbl_803A5B10:
/* 803A5B10  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A5B14  38 03 00 01 */	addi r0, r3, 1
/* 803A5B18  90 01 00 0C */	stw r0, 0xc(r1)
/* 803A5B1C  48 00 00 3C */	b lbl_803A5B58
lbl_803A5B20:
/* 803A5B20  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A5B24  38 03 FF FF */	addi r0, r3, -1
/* 803A5B28  90 01 00 0C */	stw r0, 0xc(r1)
/* 803A5B2C  48 00 00 2C */	b lbl_803A5B58
lbl_803A5B30:
/* 803A5B30  80 61 00 08 */	lwz r3, 8(r1)
/* 803A5B34  38 03 FF FF */	addi r0, r3, -1
/* 803A5B38  90 01 00 08 */	stw r0, 8(r1)
/* 803A5B3C  48 00 00 1C */	b lbl_803A5B58
lbl_803A5B40:
/* 803A5B40  80 61 00 08 */	lwz r3, 8(r1)
/* 803A5B44  38 03 00 01 */	addi r0, r3, 1
/* 803A5B48  90 01 00 08 */	stw r0, 8(r1)
/* 803A5B4C  48 00 00 0C */	b lbl_803A5B58
lbl_803A5B50:
/* 803A5B50  38 60 00 00 */	li r3, 0
/* 803A5B54  48 00 00 10 */	b lbl_803A5B64
lbl_803A5B58:
/* 803A5B58  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A5B5C  80 81 00 08 */	lwz r4, 8(r1)
/* 803A5B60  4B FF F6 A9 */	bl mFI_BlockCheck
lbl_803A5B64:
/* 803A5B64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A5B68  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803A5B6C  7C 08 03 A6 */	mtlr r0
/* 803A5B70  38 21 00 30 */	addi r1, r1, 0x30
/* 803A5B74  4E 80 00 20 */	blr 
