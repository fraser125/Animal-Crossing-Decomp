lbl_805E96AC:
/* 805E96AC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E96B0  2C 04 00 00 */	cmpwi r4, 0
/* 805E96B4  80 63 09 D8 */	lwz r3, 0x9d8(r3)
/* 805E96B8  41 80 00 0C */	blt lbl_805E96C4
/* 805E96BC  2C 04 00 08 */	cmpwi r4, 8
/* 805E96C0  41 80 00 0C */	blt lbl_805E96CC
lbl_805E96C4:
/* 805E96C4  38 60 00 00 */	li r3, 0
/* 805E96C8  4E 80 00 20 */	blr 
lbl_805E96CC:
/* 805E96CC  38 00 00 01 */	li r0, 1
/* 805E96D0  A0 63 00 02 */	lhz r3, 2(r3)
/* 805E96D4  7C 00 20 30 */	slw r0, r0, r4
/* 805E96D8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805E96DC  7C 63 00 38 */	and r3, r3, r0
/* 805E96E0  30 03 FF FF */	addic r0, r3, -1
/* 805E96E4  7C 60 19 10 */	subfe r3, r0, r3
/* 805E96E8  4E 80 00 20 */	blr 
