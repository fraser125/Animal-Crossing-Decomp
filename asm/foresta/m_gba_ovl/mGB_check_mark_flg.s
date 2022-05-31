lbl_805DC334:
/* 805DC334  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DC338  2C 04 00 00 */	cmpwi r4, 0
/* 805DC33C  80 63 09 E4 */	lwz r3, 0x9e4(r3)
/* 805DC340  41 80 00 0C */	blt lbl_805DC34C
/* 805DC344  2C 04 00 08 */	cmpwi r4, 8
/* 805DC348  41 80 00 0C */	blt lbl_805DC354
lbl_805DC34C:
/* 805DC34C  38 60 00 00 */	li r3, 0
/* 805DC350  4E 80 00 20 */	blr 
lbl_805DC354:
/* 805DC354  38 00 00 01 */	li r0, 1
/* 805DC358  A0 63 00 00 */	lhz r3, 0(r3)
/* 805DC35C  7C 00 20 30 */	slw r0, r0, r4
/* 805DC360  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805DC364  7C 63 00 38 */	and r3, r3, r0
/* 805DC368  30 03 FF FF */	addic r0, r3, -1
/* 805DC36C  7C 60 19 10 */	subfe r3, r0, r3
/* 805DC370  4E 80 00 20 */	blr 
