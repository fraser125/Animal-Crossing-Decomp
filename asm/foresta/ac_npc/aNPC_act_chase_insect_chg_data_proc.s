lbl_80531EA8:
/* 80531EA8  A0 83 08 0C */	lhz r4, 0x80c(r3)
/* 80531EAC  38 00 00 00 */	li r0, 0
/* 80531EB0  98 83 07 FD */	stb r4, 0x7fd(r3)
/* 80531EB4  B0 03 07 FE */	sth r0, 0x7fe(r3)
/* 80531EB8  4E 80 00 20 */	blr 
