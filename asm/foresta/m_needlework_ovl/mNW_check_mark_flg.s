lbl_805E9738:
/* 805E9738  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E973C  2C 04 00 00 */	cmpwi r4, 0
/* 805E9740  80 63 09 D8 */	lwz r3, 0x9d8(r3)
/* 805E9744  41 80 00 0C */	blt lbl_805E9750
/* 805E9748  2C 04 00 08 */	cmpwi r4, 8
/* 805E974C  41 80 00 0C */	blt lbl_805E9758
lbl_805E9750:
/* 805E9750  38 60 00 00 */	li r3, 0
/* 805E9754  4E 80 00 20 */	blr 
lbl_805E9758:
/* 805E9758  38 00 00 01 */	li r0, 1
/* 805E975C  A0 63 00 00 */	lhz r3, 0(r3)
/* 805E9760  7C 00 20 30 */	slw r0, r0, r4
/* 805E9764  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805E9768  7C 63 00 38 */	and r3, r3, r0
/* 805E976C  30 03 FF FF */	addic r0, r3, -1
/* 805E9770  7C 60 19 10 */	subfe r3, r0, r3
/* 805E9774  4E 80 00 20 */	blr 