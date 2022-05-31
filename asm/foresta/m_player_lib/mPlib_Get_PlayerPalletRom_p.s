lbl_803D914C:
/* 803D914C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D9150  7C 08 02 A6 */	mflr r0
/* 803D9154  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D9158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D915C  7C 7F 1B 78 */	mr r31, r3
/* 803D9160  48 00 01 25 */	bl mPlib_Check_PlayerClothInAram
/* 803D9164  2C 03 00 00 */	cmpwi r3, 0
/* 803D9168  41 82 00 18 */	beq lbl_803D9180
/* 803D916C  38 60 00 09 */	li r3, 9
/* 803D9170  4B C2 DA 65 */	bl JW_GetAramAddress
/* 803D9174  57 E0 28 34 */	slwi r0, r31, 5
/* 803D9178  7C 63 02 14 */	add r3, r3, r0
/* 803D917C  48 00 00 3C */	b lbl_803D91B8
lbl_803D9180:
/* 803D9180  34 1F FF 00 */	addic. r0, r31, -256
/* 803D9184  41 80 00 0C */	blt lbl_803D9190
/* 803D9188  2C 00 00 08 */	cmpwi r0, 8
/* 803D918C  41 80 00 08 */	blt lbl_803D9194
lbl_803D9190:
/* 803D9190  38 00 00 00 */	li r0, 0
lbl_803D9194:
/* 803D9194  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D9198  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 803D919C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D91A0  3C 63 00 02 */	addis r3, r3, 2
/* 803D91A4  1C 00 02 20 */	mulli r0, r0, 0x220
/* 803D91A8  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803D91AC  7C 63 02 14 */	add r3, r3, r0
/* 803D91B0  88 63 12 50 */	lbz r3, 0x1250(r3)
/* 803D91B4  4B FF 0A 09 */	bl mNW_PaletteIdx2Palette
lbl_803D91B8:
/* 803D91B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D91BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D91C0  7C 08 03 A6 */	mtlr r0
/* 803D91C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803D91C8  4E 80 00 20 */	blr 
