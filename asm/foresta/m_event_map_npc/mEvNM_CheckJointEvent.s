lbl_8039FFE0:
/* 8039FFE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039FFE4  7C 08 02 A6 */	mflr r0
/* 8039FFE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039FFEC  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8039FFF0  2C 00 00 0E */	cmpwi r0, 0xe
/* 8039FFF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8039FFF8  3B E0 00 00 */	li r31, 0
/* 8039FFFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803A0000  7C 7E 1B 78 */	mr r30, r3
/* 803A0004  40 82 00 8C */	bne lbl_803A0090
/* 803A0008  38 61 00 0C */	addi r3, r1, 0xc
/* 803A000C  38 81 00 08 */	addi r4, r1, 8
/* 803A0010  4B FF FF 41 */	bl mEvMN_GetNpcIdxListJointEvent
/* 803A0014  2C 03 00 01 */	cmpwi r3, 1
/* 803A0018  40 82 00 78 */	bne lbl_803A0090
/* 803A001C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803A0020  28 00 00 00 */	cmplwi r0, 0
/* 803A0024  41 82 00 6C */	beq lbl_803A0090
/* 803A0028  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A002C  7F C4 F3 78 */	mr r4, r30
/* 803A0030  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A0034  38 A0 00 0F */	li r5, 0xf
/* 803A0038  3C 63 00 01 */	addis r3, r3, 1
/* 803A003C  38 63 74 38 */	addi r3, r3, 0x7438
/* 803A0040  48 02 C6 9D */	bl mNpc_SearchAnimalinfo
/* 803A0044  2C 03 FF FF */	cmpwi r3, -1
/* 803A0048  41 82 00 48 */	beq lbl_803A0090
/* 803A004C  80 01 00 08 */	lwz r0, 8(r1)
/* 803A0050  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 803A0054  7C 09 03 A6 */	mtctr r0
/* 803A0058  2C 00 00 00 */	cmpwi r0, 0
/* 803A005C  40 81 00 34 */	ble lbl_803A0090
lbl_803A0060:
/* 803A0060  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A0064  88 03 00 00 */	lbz r0, 0(r3)
/* 803A0068  28 00 00 FF */	cmplwi r0, 0xff
/* 803A006C  41 82 00 14 */	beq lbl_803A0080
/* 803A0070  7C 00 20 40 */	cmplw r0, r4
/* 803A0074  40 82 00 0C */	bne lbl_803A0080
/* 803A0078  3B E0 00 01 */	li r31, 1
/* 803A007C  48 00 00 14 */	b lbl_803A0090
lbl_803A0080:
/* 803A0080  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A0084  38 03 00 01 */	addi r0, r3, 1
/* 803A0088  90 01 00 0C */	stw r0, 0xc(r1)
/* 803A008C  42 00 FF D4 */	bdnz lbl_803A0060
lbl_803A0090:
/* 803A0090  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A0094  7F E3 FB 78 */	mr r3, r31
/* 803A0098  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A009C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803A00A0  7C 08 03 A6 */	mtlr r0
/* 803A00A4  38 21 00 20 */	addi r1, r1, 0x20
/* 803A00A8  4E 80 00 20 */	blr 
