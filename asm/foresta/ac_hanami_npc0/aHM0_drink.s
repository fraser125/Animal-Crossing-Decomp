lbl_80529BA0:
/* 80529BA0  80 03 01 98 */	lwz r0, 0x198(r3)
/* 80529BA4  2C 00 00 01 */	cmpwi r0, 1
/* 80529BA8  4C 82 00 20 */	bnelr 
/* 80529BAC  38 00 00 FF */	li r0, 0xff
/* 80529BB0  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 80529BB4  4E 80 00 20 */	blr 
