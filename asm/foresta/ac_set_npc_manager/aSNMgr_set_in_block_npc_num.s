lbl_80497554:
/* 80497554  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80497558  7C 08 02 A6 */	mflr r0
/* 8049755C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80497560  39 61 00 30 */	addi r11, r1, 0x30
/* 80497564  4B C0 39 6D */	bl func_8009AED0
/* 80497568  7C 9D 23 78 */	mr r29, r4
/* 8049756C  7C 7C 1B 78 */	mr r28, r3
/* 80497570  7C BF 2B 78 */	mr r31, r5
/* 80497574  38 80 00 38 */	li r4, 0x38
/* 80497578  4B BC 5A F1 */	bl bzero
/* 8049757C  3B C0 00 00 */	li r30, 0
/* 80497580  57 FF 04 3E */	clrlwi r31, r31, 0x10
lbl_80497584:
/* 80497584  7F E0 F6 30 */	sraw r0, r31, r30
/* 80497588  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8049758C  2C 00 00 01 */	cmpwi r0, 1
/* 80497590  40 82 00 4C */	bne lbl_804975DC
/* 80497594  80 DD 00 10 */	lwz r6, 0x10(r29)
/* 80497598  38 61 00 0C */	addi r3, r1, 0xc
/* 8049759C  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 804975A0  38 81 00 08 */	addi r4, r1, 8
/* 804975A4  38 A1 00 10 */	addi r5, r1, 0x10
/* 804975A8  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804975AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804975B0  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 804975B4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804975B8  4B F0 E1 A9 */	bl mFI_Wpos2BlockNum
/* 804975BC  2C 03 00 01 */	cmpwi r3, 1
/* 804975C0  40 82 00 1C */	bne lbl_804975DC
/* 804975C4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804975C8  80 81 00 08 */	lwz r4, 8(r1)
/* 804975CC  4B F0 DB ED */	bl mFI_GetBlockNum
/* 804975D0  7C 9C 18 AE */	lbzx r4, r28, r3
/* 804975D4  38 04 00 01 */	addi r0, r4, 1
/* 804975D8  7C 1C 19 AE */	stbx r0, r28, r3
lbl_804975DC:
/* 804975DC  3B DE 00 01 */	addi r30, r30, 1
/* 804975E0  3B BD 00 38 */	addi r29, r29, 0x38
/* 804975E4  2C 1E 00 0F */	cmpwi r30, 0xf
/* 804975E8  41 80 FF 9C */	blt lbl_80497584
/* 804975EC  39 61 00 30 */	addi r11, r1, 0x30
/* 804975F0  4B C0 39 2D */	bl func_8009AF1C
/* 804975F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804975F8  7C 08 03 A6 */	mtlr r0
/* 804975FC  38 21 00 30 */	addi r1, r1, 0x30
/* 80497600  4E 80 00 20 */	blr 
