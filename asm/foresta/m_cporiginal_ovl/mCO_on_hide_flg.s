lbl_805CD2DC:
/* 805CD2DC  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805CD2E0  38 00 00 01 */	li r0, 1
/* 805CD2E4  7C 00 28 30 */	slw r0, r0, r5
/* 805CD2E8  54 83 08 3C */	slwi r3, r4, 1
/* 805CD2EC  80 86 09 DC */	lwz r4, 0x9dc(r6)
/* 805CD2F0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805CD2F4  7C 84 1A 14 */	add r4, r4, r3
/* 805CD2F8  A0 64 00 16 */	lhz r3, 0x16(r4)
/* 805CD2FC  7C 60 03 78 */	or r0, r3, r0
/* 805CD300  B0 04 00 16 */	sth r0, 0x16(r4)
/* 805CD304  4E 80 00 20 */	blr 
