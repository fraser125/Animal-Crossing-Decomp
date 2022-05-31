lbl_803AA458:
/* 803AA458  3C 60 81 16 */	lis r3, l_reserve_set_shell@ha /* 0x81167CDC@ha */
/* 803AA45C  38 00 00 14 */	li r0, 0x14
/* 803AA460  90 03 7C DC */	stw r0, l_reserve_set_shell@l(r3)  /* 0x81167CDC@l */
/* 803AA464  4E 80 00 20 */	blr 
