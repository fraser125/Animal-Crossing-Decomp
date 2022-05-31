lbl_803DBB14:
/* 803DBB14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DBB18  7C 08 02 A6 */	mflr r0
/* 803DBB1C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DBB20  38 80 00 00 */	li r4, 0
/* 803DBB24  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DBB28  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DBB2C  3C 63 00 02 */	addis r3, r3, 2
/* 803DBB30  38 A0 00 00 */	li r5, 0
/* 803DBB34  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 803DBB38  48 00 4C 39 */	bl mPr_GetPossessionItemIdxWithCond
/* 803DBB3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DBB40  7C 08 03 A6 */	mtlr r0
/* 803DBB44  38 21 00 10 */	addi r1, r1, 0x10
/* 803DBB48  4E 80 00 20 */	blr 
