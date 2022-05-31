lbl_805DC2F4:
/* 805DC2F4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DC2F8  2C 04 00 00 */	cmpwi r4, 0
/* 805DC2FC  80 63 09 E4 */	lwz r3, 0x9e4(r3)
/* 805DC300  41 80 00 0C */	blt lbl_805DC30C
/* 805DC304  2C 04 00 08 */	cmpwi r4, 8
/* 805DC308  41 80 00 0C */	blt lbl_805DC314
lbl_805DC30C:
/* 805DC30C  38 60 00 00 */	li r3, 0
/* 805DC310  4E 80 00 20 */	blr 
lbl_805DC314:
/* 805DC314  38 00 00 01 */	li r0, 1
/* 805DC318  A0 63 00 02 */	lhz r3, 2(r3)
/* 805DC31C  7C 00 20 30 */	slw r0, r0, r4
/* 805DC320  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805DC324  7C 63 00 38 */	and r3, r3, r0
/* 805DC328  30 03 FF FF */	addic r0, r3, -1
/* 805DC32C  7C 60 19 10 */	subfe r3, r0, r3
/* 805DC330  4E 80 00 20 */	blr 
