lbl_803FAAF0:
/* 803FAAF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FAAF4  7C 08 02 A6 */	mflr r0
/* 803FAAF8  2C 03 00 00 */	cmpwi r3, 0
/* 803FAAFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FAB00  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803FAB04  3B E0 00 00 */	li r31, 0
/* 803FAB08  41 82 00 0C */	beq lbl_803FAB14
/* 803FAB0C  2C 03 00 01 */	cmpwi r3, 1
/* 803FAB10  40 82 00 20 */	bne lbl_803FAB30
lbl_803FAB14:
/* 803FAB14  3C 80 80 66 */	lis r4, l_mCD_land_file_name@ha /* 0x8065E688@ha */
/* 803FAB18  38 A1 00 08 */	addi r5, r1, 8
/* 803FAB1C  38 84 E6 88 */	addi r4, r4, l_mCD_land_file_name@l /* 0x8065E688@l */
/* 803FAB20  4B C9 69 85 */	bl CARDOpen
/* 803FAB24  2C 03 00 00 */	cmpwi r3, 0
/* 803FAB28  40 82 00 08 */	bne lbl_803FAB30
/* 803FAB2C  3B E0 00 01 */	li r31, 1
lbl_803FAB30:
/* 803FAB30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FAB34  7F E3 FB 78 */	mr r3, r31
/* 803FAB38  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803FAB3C  7C 08 03 A6 */	mtlr r0
/* 803FAB40  38 21 00 30 */	addi r1, r1, 0x30
/* 803FAB44  4E 80 00 20 */	blr 
