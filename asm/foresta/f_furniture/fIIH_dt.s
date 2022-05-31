lbl_8062FAE8:
/* 8062FAE8  A8 03 08 2A */	lha r0, 0x82a(r3)
/* 8062FAEC  2C 00 00 00 */	cmpwi r0, 0
/* 8062FAF0  41 82 00 10 */	beq lbl_8062FB00
/* 8062FAF4  38 00 00 01 */	li r0, 1
/* 8062FAF8  98 03 01 2C */	stb r0, 0x12c(r3)
/* 8062FAFC  4E 80 00 20 */	blr 
lbl_8062FB00:
/* 8062FB00  38 00 00 00 */	li r0, 0
/* 8062FB04  98 03 01 2C */	stb r0, 0x12c(r3)
/* 8062FB08  4E 80 00 20 */	blr 
