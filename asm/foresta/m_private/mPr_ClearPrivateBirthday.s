lbl_803E01CC:
/* 803E01CC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 803E01D0  38 00 00 FF */	li r0, 0xff
/* 803E01D4  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0x0000FFFF@l */
/* 803E01D8  B0 83 00 00 */	sth r4, 0(r3)
/* 803E01DC  98 03 00 02 */	stb r0, 2(r3)
/* 803E01E0  98 03 00 03 */	stb r0, 3(r3)
/* 803E01E4  4E 80 00 20 */	blr 
