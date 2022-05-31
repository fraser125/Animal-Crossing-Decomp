lbl_804DD45C:
/* 804DD45C  A0 83 12 1C */	lhz r4, 0x121c(r3)
/* 804DD460  38 04 00 01 */	addi r0, r4, 1
/* 804DD464  B0 03 12 1C */	sth r0, 0x121c(r3)
/* 804DD468  4E 80 00 20 */	blr 
