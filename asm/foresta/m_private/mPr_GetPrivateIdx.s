lbl_803E06A8:
/* 803E06A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E06AC  7C 08 02 A6 */	mflr r0
/* 803E06B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E06B4  39 61 00 20 */	addi r11, r1, 0x20
/* 803E06B8  4B CB A8 19 */	bl func_8009AED0
/* 803E06BC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E06C0  7C 7C 1B 78 */	mr r28, r3
/* 803E06C4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E06C8  3B C0 FF FF */	li r30, -1
/* 803E06CC  3B E4 00 20 */	addi r31, r4, 0x20
/* 803E06D0  4B FF F9 75 */	bl mPr_NullCheckPersonalID
/* 803E06D4  2C 03 00 00 */	cmpwi r3, 0
/* 803E06D8  40 82 00 34 */	bne lbl_803E070C
/* 803E06DC  3B A0 00 00 */	li r29, 0
lbl_803E06E0:
/* 803E06E0  7F 83 E3 78 */	mr r3, r28
/* 803E06E4  7F E4 FB 78 */	mr r4, r31
/* 803E06E8  4B FF FA 5D */	bl mPr_CheckCmpPersonalID
/* 803E06EC  2C 03 00 01 */	cmpwi r3, 1
/* 803E06F0  40 82 00 0C */	bne lbl_803E06FC
/* 803E06F4  7F BE EB 78 */	mr r30, r29
/* 803E06F8  48 00 00 14 */	b lbl_803E070C
lbl_803E06FC:
/* 803E06FC  3B BD 00 01 */	addi r29, r29, 1
/* 803E0700  3B FF 24 40 */	addi r31, r31, 0x2440
/* 803E0704  2C 1D 00 04 */	cmpwi r29, 4
/* 803E0708  41 80 FF D8 */	blt lbl_803E06E0
lbl_803E070C:
/* 803E070C  7F C3 F3 78 */	mr r3, r30
/* 803E0710  39 61 00 20 */	addi r11, r1, 0x20
/* 803E0714  4B CB A8 09 */	bl func_8009AF1C
/* 803E0718  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E071C  7C 08 03 A6 */	mtlr r0
/* 803E0720  38 21 00 20 */	addi r1, r1, 0x20
/* 803E0724  4E 80 00 20 */	blr 
