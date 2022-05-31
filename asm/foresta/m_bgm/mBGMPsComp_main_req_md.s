lbl_8037ACCC:
/* 8037ACCC  88 03 01 7B */	lbz r0, 0x17b(r3)
/* 8037ACD0  28 00 00 00 */	cmplwi r0, 0
/* 8037ACD4  4D 82 00 20 */	beqlr 
/* 8037ACD8  38 00 00 01 */	li r0, 1
/* 8037ACDC  98 03 01 78 */	stb r0, 0x178(r3)
/* 8037ACE0  4E 80 00 20 */	blr 
