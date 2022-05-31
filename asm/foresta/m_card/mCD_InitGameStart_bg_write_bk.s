lbl_803FFCA4:
/* 803FFCA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FFCA8  7C 08 02 A6 */	mflr r0
/* 803FFCAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FFCB0  39 61 00 20 */	addi r11, r1, 0x20
/* 803FFCB4  4B C9 B2 1D */	bl func_8009AED0
/* 803FFCB8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803FFCBC  7C 7C 1B 78 */	mr r28, r3
/* 803FFCC0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 803FFCC4  7C 9D 23 78 */	mr r29, r4
/* 803FFCC8  3C 85 00 02 */	addis r4, r5, 2
/* 803FFCCC  83 C4 61 3C */	lwz r30, 0x613c(r4)
/* 803FFCD0  4B FF C6 21 */	bl mCD_write_common
/* 803FFCD4  80 1C 00 04 */	lwz r0, 4(r28)
/* 803FFCD8  7C 7F 1B 78 */	mr r31, r3
/* 803FFCDC  2C 00 00 01 */	cmpwi r0, 1
/* 803FFCE0  40 82 00 50 */	bne lbl_803FFD30
/* 803FFCE4  2C 1F 00 00 */	cmpwi r31, 0
/* 803FFCE8  41 82 00 9C */	beq lbl_803FFD84
/* 803FFCEC  80 1C 00 00 */	lwz r0, 0(r28)
/* 803FFCF0  7C 00 00 F8 */	nor r0, r0, r0
/* 803FFCF4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803FFCF8  90 1C 00 00 */	stw r0, 0(r28)
/* 803FFCFC  80 1C 00 00 */	lwz r0, 0(r28)
/* 803FFD00  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 803FFD04  1C 60 00 94 */	mulli r3, r0, 0x94
/* 803FFD08  38 03 00 CC */	addi r0, r3, 0xcc
/* 803FFD0C  7C 9C 01 2E */	stwx r4, r28, r0
/* 803FFD10  80 1C 01 84 */	lwz r0, 0x184(r28)
/* 803FFD14  2C 00 FF FF */	cmpwi r0, -1
/* 803FFD18  41 82 00 6C */	beq lbl_803FFD84
/* 803FFD1C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FFD20  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FFD24  3C 63 00 03 */	addis r3, r3, 3
/* 803FFD28  B0 03 85 96 */	sth r0, -0x7a6a(r3)
/* 803FFD2C  48 00 00 58 */	b lbl_803FFD84
lbl_803FFD30:
/* 803FFD30  2C 1F 00 01 */	cmpwi r31, 1
/* 803FFD34  40 82 00 50 */	bne lbl_803FFD84
/* 803FFD38  80 9D 00 00 */	lwz r4, 0(r29)
/* 803FFD3C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803FFD40  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803FFD44  38 04 00 01 */	addi r0, r4, 1
/* 803FFD48  90 1D 00 00 */	stw r0, 0(r29)
/* 803FFD4C  3C 63 00 03 */	addis r3, r3, 3
/* 803FFD50  88 03 85 C0 */	lbz r0, -0x7a40(r3)
/* 803FFD54  2C 00 00 01 */	cmpwi r0, 1
/* 803FFD58  40 82 00 2C */	bne lbl_803FFD84
/* 803FFD5C  28 1E 00 00 */	cmplwi r30, 0
/* 803FFD60  41 82 00 24 */	beq lbl_803FFD84
/* 803FFD64  7F C3 F3 78 */	mr r3, r30
/* 803FFD68  4B FE 02 DD */	bl mPr_NullCheckPersonalID
/* 803FFD6C  2C 03 00 00 */	cmpwi r3, 0
/* 803FFD70  40 82 00 14 */	bne lbl_803FFD84
/* 803FFD74  38 60 00 01 */	li r3, 1
/* 803FFD78  38 00 00 00 */	li r0, 0
/* 803FFD7C  98 7E 10 86 */	stb r3, 0x1086(r30)
/* 803FFD80  B0 1E 04 A4 */	sth r0, 0x4a4(r30)
lbl_803FFD84:
/* 803FFD84  7F E3 FB 78 */	mr r3, r31
/* 803FFD88  39 61 00 20 */	addi r11, r1, 0x20
/* 803FFD8C  4B C9 B1 91 */	bl func_8009AF1C
/* 803FFD90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FFD94  7C 08 03 A6 */	mtlr r0
/* 803FFD98  38 21 00 20 */	addi r1, r1, 0x20
/* 803FFD9C  4E 80 00 20 */	blr 
