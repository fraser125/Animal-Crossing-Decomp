lbl_803D8C88:
/* 803D8C88  2C 03 00 00 */	cmpwi r3, 0
/* 803D8C8C  41 80 00 20 */	blt lbl_803D8CAC
/* 803D8C90  2C 03 00 32 */	cmpwi r3, 0x32
/* 803D8C94  40 80 00 18 */	bge lbl_803D8CAC
/* 803D8C98  3C 80 80 66 */	lis r4, mPlib_Item_DataPointer@ha /* 0x8065BB3C@ha */
/* 803D8C9C  54 60 10 3A */	slwi r0, r3, 2
/* 803D8CA0  38 64 BB 3C */	addi r3, r4, mPlib_Item_DataPointer@l /* 0x8065BB3C@l */
/* 803D8CA4  7C 63 00 2E */	lwzx r3, r3, r0
/* 803D8CA8  4E 80 00 20 */	blr 
lbl_803D8CAC:
/* 803D8CAC  38 60 00 00 */	li r3, 0
/* 803D8CB0  4E 80 00 20 */	blr 
