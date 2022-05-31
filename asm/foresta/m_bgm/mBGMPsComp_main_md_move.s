lbl_8037ACE4:
/* 8037ACE4  88 03 01 7A */	lbz r0, 0x17a(r3)
/* 8037ACE8  28 00 00 00 */	cmplwi r0, 0
/* 8037ACEC  41 82 00 10 */	beq lbl_8037ACFC
/* 8037ACF0  38 00 00 00 */	li r0, 0
/* 8037ACF4  98 03 01 7B */	stb r0, 0x17b(r3)
/* 8037ACF8  98 03 01 7A */	stb r0, 0x17a(r3)
lbl_8037ACFC:
/* 8037ACFC  88 03 01 79 */	lbz r0, 0x179(r3)
/* 8037AD00  28 00 00 00 */	cmplwi r0, 0
/* 8037AD04  4D 82 00 20 */	beqlr 
/* 8037AD08  38 80 00 01 */	li r4, 1
/* 8037AD0C  38 00 00 00 */	li r0, 0
/* 8037AD10  98 83 01 7B */	stb r4, 0x17b(r3)
/* 8037AD14  98 03 01 79 */	stb r0, 0x179(r3)
/* 8037AD18  4E 80 00 20 */	blr 
