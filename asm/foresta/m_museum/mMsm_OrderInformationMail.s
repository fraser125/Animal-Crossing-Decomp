lbl_803C61A8:
/* 803C61A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C61AC  7C 08 02 A6 */	mflr r0
/* 803C61B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C61B4  39 61 00 20 */	addi r11, r1, 0x20
/* 803C61B8  4B CD 4D 1D */	bl func_8009AED4
/* 803C61BC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C61C0  3B A0 00 00 */	li r29, 0
/* 803C61C4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803C61C8  3B E0 00 01 */	li r31, 1
/* 803C61CC  3B C3 00 20 */	addi r30, r3, 0x20
lbl_803C61D0:
/* 803C61D0  7F C3 F3 78 */	mr r3, r30
/* 803C61D4  48 01 9E 71 */	bl mPr_NullCheckPersonalID
/* 803C61D8  2C 03 00 00 */	cmpwi r3, 0
/* 803C61DC  40 82 00 20 */	bne lbl_803C61FC
/* 803C61E0  7F C3 F3 78 */	mr r3, r30
/* 803C61E4  48 01 AE 95 */	bl mPr_CheckMuseumAddress
/* 803C61E8  2C 03 00 00 */	cmpwi r3, 0
/* 803C61EC  40 82 00 10 */	bne lbl_803C61FC
/* 803C61F0  88 1E 00 18 */	lbz r0, 0x18(r30)
/* 803C61F4  53 E0 2E B4 */	rlwimi r0, r31, 5, 0x1a, 0x1a
/* 803C61F8  98 1E 00 18 */	stb r0, 0x18(r30)
lbl_803C61FC:
/* 803C61FC  3B BD 00 01 */	addi r29, r29, 1
/* 803C6200  3B DE 24 40 */	addi r30, r30, 0x2440
/* 803C6204  2C 1D 00 04 */	cmpwi r29, 4
/* 803C6208  41 80 FF C8 */	blt lbl_803C61D0
/* 803C620C  39 61 00 20 */	addi r11, r1, 0x20
/* 803C6210  4B CD 4D 11 */	bl func_8009AF20
/* 803C6214  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C6218  7C 08 03 A6 */	mtlr r0
/* 803C621C  38 21 00 20 */	addi r1, r1, 0x20
/* 803C6220  4E 80 00 20 */	blr 
