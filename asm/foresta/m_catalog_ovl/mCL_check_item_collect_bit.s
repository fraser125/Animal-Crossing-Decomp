lbl_805CBD1C:
/* 805CBD1C  7C 80 2E 70 */	srawi r0, r4, 5
/* 805CBD20  54 84 06 FE */	clrlwi r4, r4, 0x1b
/* 805CBD24  54 00 10 3A */	slwi r0, r0, 2
/* 805CBD28  38 A0 00 01 */	li r5, 1
/* 805CBD2C  7C 03 00 2E */	lwzx r0, r3, r0
/* 805CBD30  7C A3 20 30 */	slw r3, r5, r4
/* 805CBD34  7C 63 00 38 */	and r3, r3, r0
/* 805CBD38  30 03 FF FF */	addic r0, r3, -1
/* 805CBD3C  7C 60 19 10 */	subfe r3, r0, r3
/* 805CBD40  4E 80 00 20 */	blr 
