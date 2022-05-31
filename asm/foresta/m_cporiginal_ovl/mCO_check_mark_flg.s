lbl_805CD258:
/* 805CD258  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CD25C  2C 04 00 00 */	cmpwi r4, 0
/* 805CD260  38 60 00 00 */	li r3, 0
/* 805CD264  80 A5 09 DC */	lwz r5, 0x9dc(r5)
/* 805CD268  4D 80 00 20 */	bltlr 
/* 805CD26C  2C 04 00 0C */	cmpwi r4, 0xc
/* 805CD270  4C 80 00 20 */	bgelr 
/* 805CD274  38 00 00 01 */	li r0, 1
/* 805CD278  A0 A5 00 14 */	lhz r5, 0x14(r5)
/* 805CD27C  7C 00 20 30 */	slw r0, r0, r4
/* 805CD280  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805CD284  7C A0 00 39 */	and. r0, r5, r0
/* 805CD288  4D 82 00 20 */	beqlr 
/* 805CD28C  38 60 00 01 */	li r3, 1
/* 805CD290  4E 80 00 20 */	blr 
