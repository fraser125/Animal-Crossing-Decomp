lbl_8046FE5C:
/* 8046FE5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046FE60  7C 08 02 A6 */	mflr r0
/* 8046FE64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046FE68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046FE6C  7C 7F 1B 78 */	mr r31, r3
/* 8046FE70  4B F3 5F 5D */	bl mFI_GetNowPlayerHouseFloorNo
/* 8046FE74  2C 03 00 02 */	cmpwi r3, 2
/* 8046FE78  40 82 00 0C */	bne lbl_8046FE84
/* 8046FE7C  38 60 00 00 */	li r3, 0
/* 8046FE80  48 00 00 74 */	b lbl_8046FEF4
lbl_8046FE84:
/* 8046FE84  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8046FE88  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8046FE8C  3C 63 00 02 */	addis r3, r3, 2
/* 8046FE90  80 63 60 A8 */	lwz r3, 0x60a8(r3)
/* 8046FE94  28 03 00 00 */	cmplwi r3, 0
/* 8046FE98  41 82 00 58 */	beq lbl_8046FEF0
/* 8046FE9C  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 8046FEA0  28 04 26 00 */	cmplwi r4, 0x2600
/* 8046FEA4  41 80 00 4C */	blt lbl_8046FEF0
/* 8046FEA8  28 04 26 47 */	cmplwi r4, 0x2647
/* 8046FEAC  40 80 00 44 */	bge lbl_8046FEF0
/* 8046FEB0  80 C3 00 00 */	lwz r6, 0(r3)
/* 8046FEB4  28 06 00 00 */	cmplwi r6, 0
/* 8046FEB8  41 82 00 38 */	beq lbl_8046FEF0
/* 8046FEBC  80 06 01 E4 */	lwz r0, 0x1e4(r6)
/* 8046FEC0  2C 00 00 00 */	cmpwi r0, 0
/* 8046FEC4  40 82 00 2C */	bne lbl_8046FEF0
/* 8046FEC8  A8 A6 01 74 */	lha r5, 0x174(r6)
/* 8046FECC  38 60 00 01 */	li r3, 1
/* 8046FED0  38 84 DA 00 */	addi r4, r4, -9728
/* 8046FED4  38 00 00 00 */	li r0, 0
/* 8046FED8  90 66 01 E4 */	stw r3, 0x1e4(r6)
/* 8046FEDC  38 65 26 00 */	addi r3, r5, 0x2600
/* 8046FEE0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8046FEE4  90 86 01 E8 */	stw r4, 0x1e8(r6)
/* 8046FEE8  90 06 01 EC */	stw r0, 0x1ec(r6)
/* 8046FEEC  48 00 00 08 */	b lbl_8046FEF4
lbl_8046FEF0:
/* 8046FEF0  38 60 00 00 */	li r3, 0
lbl_8046FEF4:
/* 8046FEF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046FEF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046FEFC  7C 08 03 A6 */	mtlr r0
/* 8046FF00  38 21 00 10 */	addi r1, r1, 0x10
/* 8046FF04  4E 80 00 20 */	blr 
