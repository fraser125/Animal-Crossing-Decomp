lbl_80593154:
/* 80593154  28 03 00 00 */	cmplwi r3, 0
/* 80593158  4D 82 00 20 */	beqlr 
/* 8059315C  38 00 00 01 */	li r0, 1
/* 80593160  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80593164  7C 00 20 30 */	slw r0, r0, r4
/* 80593168  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8059316C  7C A0 03 78 */	or r0, r5, r0
/* 80593170  B0 03 00 00 */	sth r0, 0(r3)
/* 80593174  4E 80 00 20 */	blr 