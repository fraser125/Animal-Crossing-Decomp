lbl_803F3450:
/* 803F3450  3C 60 81 17 */	lis r3, l_renew_is@ha /* 0x8117154C@ha */
/* 803F3454  38 00 00 FF */	li r0, 0xff
/* 803F3458  98 03 15 4C */	stb r0, l_renew_is@l(r3)  /* 0x8117154C@l */
/* 803F345C  4E 80 00 20 */	blr 
