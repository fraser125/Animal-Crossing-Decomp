lbl_803A4C90:
/* 803A4C90  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A4C94  38 60 00 00 */	li r3, 0
/* 803A4C98  80 04 7A 58 */	lwz r0, g_fdinfo@l(r4)  /* 0x81167A58@l */
/* 803A4C9C  28 00 00 00 */	cmplwi r0, 0
/* 803A4CA0  4D 82 00 20 */	beqlr 
/* 803A4CA4  38 60 00 01 */	li r3, 1
/* 803A4CA8  4E 80 00 20 */	blr 
