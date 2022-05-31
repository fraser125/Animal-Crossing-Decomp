lbl_803C6AE0:
/* 803C6AE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C6AE4  7C 08 02 A6 */	mflr r0
/* 803C6AE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C6AEC  39 61 00 20 */	addi r11, r1, 0x20
/* 803C6AF0  4B CD 43 E1 */	bl func_8009AED0
/* 803C6AF4  7C 7C 1B 79 */	or. r28, r3, r3
/* 803C6AF8  7C 9D 23 78 */	mr r29, r4
/* 803C6AFC  3B E0 00 00 */	li r31, 0
/* 803C6B00  41 82 00 48 */	beq lbl_803C6B48
/* 803C6B04  28 1D 00 00 */	cmplwi r29, 0
/* 803C6B08  41 82 00 40 */	beq lbl_803C6B48
/* 803C6B0C  3B C0 00 00 */	li r30, 0
lbl_803C6B10:
/* 803C6B10  A0 1C 00 00 */	lhz r0, 0(r28)
/* 803C6B14  28 00 00 00 */	cmplwi r0, 0
/* 803C6B18  40 82 00 1C */	bne lbl_803C6B34
/* 803C6B1C  88 1D 00 03 */	lbz r0, 3(r29)
/* 803C6B20  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 803C6B24  4B FC 98 F5 */	bl mCoBG_CheckHole_OrgAttr
/* 803C6B28  2C 03 00 00 */	cmpwi r3, 0
/* 803C6B2C  41 82 00 08 */	beq lbl_803C6B34
/* 803C6B30  3B FF 00 01 */	addi r31, r31, 1
lbl_803C6B34:
/* 803C6B34  3B DE 00 01 */	addi r30, r30, 1
/* 803C6B38  3B BD 00 04 */	addi r29, r29, 4
/* 803C6B3C  2C 1E 01 00 */	cmpwi r30, 0x100
/* 803C6B40  3B 9C 00 02 */	addi r28, r28, 2
/* 803C6B44  41 80 FF CC */	blt lbl_803C6B10
lbl_803C6B48:
/* 803C6B48  7F E3 FB 78 */	mr r3, r31
/* 803C6B4C  39 61 00 20 */	addi r11, r1, 0x20
/* 803C6B50  4B CD 43 CD */	bl func_8009AF1C
/* 803C6B54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C6B58  7C 08 03 A6 */	mtlr r0
/* 803C6B5C  38 21 00 20 */	addi r1, r1, 0x20
/* 803C6B60  4E 80 00 20 */	blr 
