lbl_80415994:
/* 80415994  38 80 00 00 */	li r4, 0
/* 80415998  38 00 00 BE */	li r0, 0xbe
/* 8041599C  98 83 01 BA */	stb r4, 0x1ba(r3)
/* 804159A0  B0 03 01 B8 */	sth r0, 0x1b8(r3)
/* 804159A4  4E 80 00 20 */	blr 
