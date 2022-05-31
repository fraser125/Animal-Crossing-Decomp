lbl_803D8CB4:
/* 803D8CB4  2C 03 00 00 */	cmpwi r3, 0
/* 803D8CB8  41 80 00 20 */	blt lbl_803D8CD8
/* 803D8CBC  2C 03 00 50 */	cmpwi r3, 0x50
/* 803D8CC0  40 80 00 18 */	bge lbl_803D8CD8
/* 803D8CC4  3C 80 80 64 */	lis r4, data_475@ha /* 0x80642A14@ha */
/* 803D8CC8  38 84 2A 14 */	addi r4, r4, data_475@l /* 0x80642A14@l */
/* 803D8CCC  7C 64 18 AE */	lbzx r3, r4, r3
/* 803D8CD0  7C 63 07 74 */	extsb r3, r3
/* 803D8CD4  4E 80 00 20 */	blr 
lbl_803D8CD8:
/* 803D8CD8  38 60 FF FF */	li r3, -1
/* 803D8CDC  4E 80 00 20 */	blr 
