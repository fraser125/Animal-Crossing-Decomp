lbl_803A4CAC:
/* 803A4CAC  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A4CB0  38 60 00 00 */	li r3, 0
/* 803A4CB4  38 84 7A 58 */	addi r4, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A4CB8  80 84 00 00 */	lwz r4, 0(r4)
/* 803A4CBC  28 04 00 00 */	cmplwi r4, 0
/* 803A4CC0  4D 82 00 20 */	beqlr 
/* 803A4CC4  80 64 00 74 */	lwz r3, 0x74(r4)
/* 803A4CC8  4E 80 00 20 */	blr 
