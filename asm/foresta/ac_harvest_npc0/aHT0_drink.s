lbl_80591518:
/* 80591518  80 03 01 98 */	lwz r0, 0x198(r3)
/* 8059151C  2C 00 00 01 */	cmpwi r0, 1
/* 80591520  4C 82 00 20 */	bnelr 
/* 80591524  38 00 00 FF */	li r0, 0xff
/* 80591528  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 8059152C  4E 80 00 20 */	blr 
