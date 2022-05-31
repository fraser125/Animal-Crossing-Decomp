lbl_803D8D0C:
/* 803D8D0C  2C 03 00 00 */	cmpwi r3, 0
/* 803D8D10  41 80 00 1C */	blt lbl_803D8D2C
/* 803D8D14  2C 03 00 32 */	cmpwi r3, 0x32
/* 803D8D18  40 80 00 14 */	bge lbl_803D8D2C
/* 803D8D1C  3C 80 80 64 */	lis r4, mPlib_Item_DataPointerType@ha /* 0x80642AB4@ha */
/* 803D8D20  38 84 2A B4 */	addi r4, r4, mPlib_Item_DataPointerType@l /* 0x80642AB4@l */
/* 803D8D24  7C 64 18 AE */	lbzx r3, r4, r3
/* 803D8D28  4E 80 00 20 */	blr 
lbl_803D8D2C:
/* 803D8D2C  38 60 00 00 */	li r3, 0
/* 803D8D30  4E 80 00 20 */	blr 
