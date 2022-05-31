lbl_8045B2FC:
/* 8045B2FC  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045B300  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8045B304  B0 03 00 8C */	sth r0, 0x8c(r3)
/* 8045B308  4E 80 00 20 */	blr 
