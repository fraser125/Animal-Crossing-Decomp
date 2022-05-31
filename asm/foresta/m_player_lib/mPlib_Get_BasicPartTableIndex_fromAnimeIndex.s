lbl_803D8C5C:
/* 803D8C5C  2C 03 00 00 */	cmpwi r3, 0
/* 803D8C60  41 80 00 20 */	blt lbl_803D8C80
/* 803D8C64  2C 03 00 9D */	cmpwi r3, 0x9d
/* 803D8C68  40 80 00 18 */	bge lbl_803D8C80
/* 803D8C6C  3C 80 80 64 */	lis r4, data_459@ha /* 0x80642974@ha */
/* 803D8C70  38 84 29 74 */	addi r4, r4, data_459@l /* 0x80642974@l */
/* 803D8C74  7C 64 18 AE */	lbzx r3, r4, r3
/* 803D8C78  7C 63 07 74 */	extsb r3, r3
/* 803D8C7C  4E 80 00 20 */	blr 
lbl_803D8C80:
/* 803D8C80  38 60 FF FF */	li r3, -1
/* 803D8C84  4E 80 00 20 */	blr 
