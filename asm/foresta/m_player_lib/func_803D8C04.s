lbl_803D8C04:
/* 803D8C04  2C 03 00 00 */	cmpwi r3, 0
/* 803D8C08  41 80 00 24 */	blt lbl_803D8C2C
/* 803D8C0C  2C 03 00 9D */	cmpwi r3, 0x9d
/* 803D8C10  40 80 00 1C */	bge lbl_803D8C2C
/* 803D8C14  3C 80 80 66 */	lis r4, data_8065B8C8@ha /* 0x8065B8C8@ha */
/* 803D8C18  54 60 10 3A */	slwi r0, r3, 2
/* 803D8C1C  38 64 B8 C8 */	addi r3, r4, data_8065B8C8@l /* 0x8065B8C8@l */
/* 803D8C20  7C 63 00 2E */	lwzx r3, r3, r0
/* 803D8C24  28 03 00 00 */	cmplwi r3, 0
/* 803D8C28  4C 82 00 20 */	bnelr 
lbl_803D8C2C:
/* 803D8C2C  38 60 00 00 */	li r3, 0
/* 803D8C30  4E 80 00 20 */	blr 
