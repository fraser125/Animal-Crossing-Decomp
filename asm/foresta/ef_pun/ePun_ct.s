lbl_8061A5E0:
/* 8061A5E0  A8 85 00 00 */	lha r4, 0(r5)
/* 8061A5E4  38 00 00 18 */	li r0, 0x18
/* 8061A5E8  B0 83 00 4C */	sth r4, 0x4c(r3)
/* 8061A5EC  B0 03 00 00 */	sth r0, 0(r3)
/* 8061A5F0  4E 80 00 20 */	blr 
