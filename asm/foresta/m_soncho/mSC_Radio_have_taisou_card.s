lbl_803EC7F4:
/* 803EC7F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EC7F8  7C 08 02 A6 */	mflr r0
/* 803EC7FC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EC800  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EC804  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EC808  3C 63 00 02 */	addis r3, r3, 2
/* 803EC80C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EC810  3B E0 00 00 */	li r31, 0
/* 803EC814  93 C1 00 08 */	stw r30, 8(r1)
/* 803EC818  83 C3 61 3C */	lwz r30, 0x613c(r3)
lbl_803EC81C:
/* 803EC81C  38 1F 25 23 */	addi r0, r31, 0x2523
/* 803EC820  7F C3 F3 78 */	mr r3, r30
/* 803EC824  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 803EC828  38 A0 00 00 */	li r5, 0
/* 803EC82C  4B FF 41 A1 */	bl mPr_GetPossessionItemSumWithCond
/* 803EC830  2C 03 00 00 */	cmpwi r3, 0
/* 803EC834  40 81 00 10 */	ble lbl_803EC844
/* 803EC838  38 1F 25 23 */	addi r0, r31, 0x2523
/* 803EC83C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803EC840  48 00 00 14 */	b lbl_803EC854
lbl_803EC844:
/* 803EC844  3B FF 00 01 */	addi r31, r31, 1
/* 803EC848  2C 1F 00 0D */	cmpwi r31, 0xd
/* 803EC84C  41 80 FF D0 */	blt lbl_803EC81C
/* 803EC850  38 60 25 23 */	li r3, 0x2523
lbl_803EC854:
/* 803EC854  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EC858  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EC85C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803EC860  7C 08 03 A6 */	mtlr r0
/* 803EC864  38 21 00 10 */	addi r1, r1, 0x10
/* 803EC868  4E 80 00 20 */	blr 
