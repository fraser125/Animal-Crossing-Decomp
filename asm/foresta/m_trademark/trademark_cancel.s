lbl_8062BAB4:
/* 8062BAB4  3C 83 00 02 */	addis r4, r3, 2
/* 8062BAB8  88 04 5A 68 */	lbz r0, 0x5a68(r4)
/* 8062BABC  28 00 00 00 */	cmplwi r0, 0
/* 8062BAC0  4C 82 00 20 */	bnelr 
/* 8062BAC4  88 04 5A 66 */	lbz r0, 0x5a66(r4)
/* 8062BAC8  28 00 00 04 */	cmplwi r0, 4
/* 8062BACC  4C 82 00 20 */	bnelr 
/* 8062BAD0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062BAD4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8062BAD8  3C 63 00 03 */	addis r3, r3, 3
/* 8062BADC  88 03 88 A0 */	lbz r0, -0x7760(r3)
/* 8062BAE0  28 00 00 00 */	cmplwi r0, 0
/* 8062BAE4  4D 82 00 20 */	beqlr 
/* 8062BAE8  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8062BAEC  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 8062BAF0  80 63 00 00 */	lwz r3, 0(r3)
/* 8062BAF4  A0 03 00 20 */	lhz r0, 0x20(r3)
/* 8062BAF8  54 00 04 E6 */	rlwinm r0, r0, 0, 0x13, 0x13
/* 8062BAFC  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8062BB00  4C 82 00 20 */	bnelr 
/* 8062BB04  38 00 00 01 */	li r0, 1
/* 8062BB08  98 04 5A 68 */	stb r0, 0x5a68(r4)
/* 8062BB0C  4E 80 00 20 */	blr 
