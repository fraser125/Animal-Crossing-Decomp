lbl_803F33F0:
/* 803F33F0  3C 60 81 17 */	lis r3, l_renew_is@ha /* 0x8117154C@ha */
/* 803F33F4  38 00 00 00 */	li r0, 0
/* 803F33F8  98 03 15 4C */	stb r0, l_renew_is@l(r3)  /* 0x8117154C@l */
/* 803F33FC  4E 80 00 20 */	blr 
