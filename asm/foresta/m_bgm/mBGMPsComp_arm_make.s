lbl_8037C840:
/* 8037C840  3C 80 81 13 */	lis r4, data_811351C0@ha /* 0x811351C0@ha */
/* 8037C844  38 00 00 01 */	li r0, 1
/* 8037C848  38 84 51 C0 */	addi r4, r4, data_811351C0@l /* 0x811351C0@l */
/* 8037C84C  98 04 02 F4 */	stb r0, 0x2f4(r4)
/* 8037C850  98 64 02 F5 */	stb r3, 0x2f5(r4)
/* 8037C854  4E 80 00 20 */	blr 
