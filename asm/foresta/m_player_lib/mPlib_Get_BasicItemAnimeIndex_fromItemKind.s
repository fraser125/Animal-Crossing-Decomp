lbl_803D8CE0:
/* 803D8CE0  2C 03 00 00 */	cmpwi r3, 0
/* 803D8CE4  41 80 00 20 */	blt lbl_803D8D04
/* 803D8CE8  2C 03 00 50 */	cmpwi r3, 0x50
/* 803D8CEC  40 80 00 18 */	bge lbl_803D8D04
/* 803D8CF0  3C 80 80 64 */	lis r4, data_483@ha /* 0x80642A64@ha */
/* 803D8CF4  38 84 2A 64 */	addi r4, r4, data_483@l /* 0x80642A64@l */
/* 803D8CF8  7C 64 18 AE */	lbzx r3, r4, r3
/* 803D8CFC  7C 63 07 74 */	extsb r3, r3
/* 803D8D00  4E 80 00 20 */	blr 
lbl_803D8D04:
/* 803D8D04  38 60 FF FF */	li r3, -1
/* 803D8D08  4E 80 00 20 */	blr 
