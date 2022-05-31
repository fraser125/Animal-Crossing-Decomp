lbl_8051A1F4:
/* 8051A1F4  A8 83 00 DE */	lha r4, 0xde(r3)
/* 8051A1F8  A8 03 09 24 */	lha r0, 0x924(r3)
/* 8051A1FC  7C 04 00 00 */	cmpw r4, r0
/* 8051A200  4C 82 00 20 */	bnelr 
/* 8051A204  38 00 00 FF */	li r0, 0xff
/* 8051A208  90 03 09 9C */	stw r0, 0x99c(r3)
/* 8051A20C  4E 80 00 20 */	blr 
