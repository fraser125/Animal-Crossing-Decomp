lbl_805CD2A8:
/* 805CD2A8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805CD2AC  38 00 00 01 */	li r0, 1
/* 805CD2B0  7C 00 28 30 */	slw r0, r0, r5
/* 805CD2B4  54 84 08 3C */	slwi r4, r4, 1
/* 805CD2B8  80 A3 09 DC */	lwz r5, 0x9dc(r3)
/* 805CD2BC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805CD2C0  38 60 00 00 */	li r3, 0
/* 805CD2C4  7C 85 22 14 */	add r4, r5, r4
/* 805CD2C8  A0 84 00 16 */	lhz r4, 0x16(r4)
/* 805CD2CC  7C 80 00 39 */	and. r0, r4, r0
/* 805CD2D0  4D 82 00 20 */	beqlr 
/* 805CD2D4  38 60 00 01 */	li r3, 1
/* 805CD2D8  4E 80 00 20 */	blr 
