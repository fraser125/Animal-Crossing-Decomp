lbl_80557060:
/* 80557060  38 80 00 00 */	li r4, 0
/* 80557064  38 00 00 4F */	li r0, 0x4f
/* 80557068  98 83 08 31 */	stb r4, 0x831(r3)
/* 8055706C  B0 03 09 76 */	sth r0, 0x976(r3)
/* 80557070  B0 03 09 74 */	sth r0, 0x974(r3)
/* 80557074  4E 80 00 20 */	blr 
