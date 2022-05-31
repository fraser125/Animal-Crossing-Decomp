lbl_803788CC:
/* 803788CC  3C 60 81 13 */	lis r3, mBI_make_proc@ha /* 0x811351B8@ha */
/* 803788D0  38 00 00 00 */	li r0, 0
/* 803788D4  90 03 51 B8 */	stw r0, mBI_make_proc@l(r3)  /* 0x811351B8@l */
/* 803788D8  4E 80 00 20 */	blr 
