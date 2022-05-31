lbl_805CD65C:
/* 805CD65C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CD660  1C 64 00 0C */	mulli r3, r4, 0xc
/* 805CD664  80 85 09 DC */	lwz r4, 0x9dc(r5)
/* 805CD668  38 63 00 04 */	addi r3, r3, 4
/* 805CD66C  80 04 00 00 */	lwz r0, 0(r4)
/* 805CD670  7C 60 1A 14 */	add r3, r0, r3
/* 805CD674  4E 80 00 20 */	blr 
