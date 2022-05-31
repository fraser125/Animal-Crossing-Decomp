lbl_803A4D4C:
/* 803A4D4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A4D50  7C 08 02 A6 */	mflr r0
/* 803A4D54  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A4D58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A4D5C  3B E0 00 00 */	li r31, 0
/* 803A4D60  4B FF FF 31 */	bl mFI_CheckFieldData
/* 803A4D64  2C 03 00 01 */	cmpwi r3, 1
/* 803A4D68  40 82 00 10 */	bne lbl_803A4D78
/* 803A4D6C  4B FF FF 61 */	bl mFI_GetFieldId
/* 803A4D70  4B FF FF A5 */	bl mFI_CheckShopFieldName
/* 803A4D74  7C 7F 1B 78 */	mr r31, r3
lbl_803A4D78:
/* 803A4D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A4D7C  7F E3 FB 78 */	mr r3, r31
/* 803A4D80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A4D84  7C 08 03 A6 */	mtlr r0
/* 803A4D88  38 21 00 10 */	addi r1, r1, 0x10
/* 803A4D8C  4E 80 00 20 */	blr 
