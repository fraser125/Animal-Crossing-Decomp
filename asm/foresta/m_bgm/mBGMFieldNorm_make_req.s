lbl_8037A710:
/* 8037A710  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037A714  38 00 00 01 */	li r0, 1
/* 8037A718  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037A71C  98 03 01 60 */	stb r0, 0x160(r3)
/* 8037A720  4E 80 00 20 */	blr 
