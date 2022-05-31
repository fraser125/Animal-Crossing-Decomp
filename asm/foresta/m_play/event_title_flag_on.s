lbl_80629CFC:
/* 80629CFC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80629D00  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80629D04  3C 63 00 03 */	addis r3, r3, 3
/* 80629D08  88 03 85 C6 */	lbz r0, -0x7a3a(r3)
/* 80629D0C  28 00 00 00 */	cmplwi r0, 0
/* 80629D10  4D 82 00 20 */	beqlr 
/* 80629D14  38 00 00 01 */	li r0, 1
/* 80629D18  B0 03 88 82 */	sth r0, -0x777e(r3)
/* 80629D1C  4E 80 00 20 */	blr 
