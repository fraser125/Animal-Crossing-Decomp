lbl_803A4C80:
/* 803A4C80  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A4C84  38 00 00 00 */	li r0, 0
/* 803A4C88  90 03 7A 58 */	stw r0, g_fdinfo@l(r3)  /* 0x81167A58@l */
/* 803A4C8C  4E 80 00 20 */	blr 
