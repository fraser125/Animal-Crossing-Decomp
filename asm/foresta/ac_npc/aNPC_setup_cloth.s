lbl_8052C828:
/* 8052C828  80 63 01 7C */	lwz r3, 0x17c(r3)
/* 8052C82C  28 03 00 00 */	cmplwi r3, 0
/* 8052C830  4D 82 00 20 */	beqlr 
/* 8052C834  B0 83 08 E4 */	sth r4, 0x8e4(r3)
/* 8052C838  98 A3 08 EB */	stb r5, 0x8eb(r3)
/* 8052C83C  4E 80 00 20 */	blr 
