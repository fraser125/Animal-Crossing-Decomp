lbl_803AC570:
/* 803AC570  80 83 00 04 */	lwz r4, 4(r3)
/* 803AC574  38 60 00 00 */	li r3, 0
/* 803AC578  3C 04 B8 BF */	addis r0, r4, 0xb8bf
/* 803AC57C  28 00 46 45 */	cmplwi r0, 0x4645
/* 803AC580  4C 82 00 20 */	bnelr 
/* 803AC584  38 60 00 01 */	li r3, 1
/* 803AC588  4E 80 00 20 */	blr 