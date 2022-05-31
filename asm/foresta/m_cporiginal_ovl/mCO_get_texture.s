lbl_805CD368:
/* 805CD368  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805CD36C  1C 64 19 80 */	mulli r3, r4, 0x1980
/* 805CD370  80 86 09 DC */	lwz r4, 0x9dc(r6)
/* 805CD374  1C 05 02 20 */	mulli r0, r5, 0x220
/* 805CD378  80 84 00 00 */	lwz r4, 0(r4)
/* 805CD37C  7C 63 02 14 */	add r3, r3, r0
/* 805CD380  38 63 00 A0 */	addi r3, r3, 0xa0
/* 805CD384  7C 64 1A 14 */	add r3, r4, r3
/* 805CD388  4E 80 00 20 */	blr 
