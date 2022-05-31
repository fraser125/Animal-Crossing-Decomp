lbl_805CD678:
/* 805CD678  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805CD67C  1C 64 19 80 */	mulli r3, r4, 0x1980
/* 805CD680  80 86 09 DC */	lwz r4, 0x9dc(r6)
/* 805CD684  1C 05 02 20 */	mulli r0, r5, 0x220
/* 805CD688  80 84 00 00 */	lwz r4, 0(r4)
/* 805CD68C  7C 63 02 14 */	add r3, r3, r0
/* 805CD690  38 63 00 80 */	addi r3, r3, 0x80
/* 805CD694  7C 64 1A 14 */	add r3, r4, r3
/* 805CD698  4E 80 00 20 */	blr 
