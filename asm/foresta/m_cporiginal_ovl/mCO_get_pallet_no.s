lbl_805CD410:
/* 805CD410  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805CD414  1C 64 19 80 */	mulli r3, r4, 0x1980
/* 805CD418  80 86 09 DC */	lwz r4, 0x9dc(r6)
/* 805CD41C  1C 05 02 20 */	mulli r0, r5, 0x220
/* 805CD420  80 84 00 00 */	lwz r4, 0(r4)
/* 805CD424  7C 64 1A 14 */	add r3, r4, r3
/* 805CD428  7C 63 02 14 */	add r3, r3, r0
/* 805CD42C  88 63 00 90 */	lbz r3, 0x90(r3)
/* 805CD430  4E 80 00 20 */	blr 
