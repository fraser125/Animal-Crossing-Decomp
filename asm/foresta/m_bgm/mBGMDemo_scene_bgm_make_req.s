lbl_80378C94:
/* 80378C94  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 80378C98  38 00 00 01 */	li r0, 1
/* 80378C9C  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 80378CA0  98 03 00 10 */	stb r0, 0x10(r3)
/* 80378CA4  4E 80 00 20 */	blr 