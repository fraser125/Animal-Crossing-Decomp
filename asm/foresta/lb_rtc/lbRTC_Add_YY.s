lbl_80406CB0:
/* 80406CB0  A0 A3 00 06 */	lhz r5, 6(r3)
/* 80406CB4  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 80406CB8  7C 05 02 14 */	add r0, r5, r0
/* 80406CBC  B0 03 00 06 */	sth r0, 6(r3)
/* 80406CC0  4E 80 00 20 */	blr 
