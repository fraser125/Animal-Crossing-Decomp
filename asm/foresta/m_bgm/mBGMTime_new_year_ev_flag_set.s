lbl_80379338:
/* 80379338  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037933C  38 00 00 01 */	li r0, 1
/* 80379340  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 80379344  98 03 00 2C */	stb r0, 0x2c(r3)
/* 80379348  4E 80 00 20 */	blr 
