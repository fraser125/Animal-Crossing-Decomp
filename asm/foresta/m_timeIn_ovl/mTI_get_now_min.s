lbl_805FF378:
/* 805FF378  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805FF37C  80 83 09 A0 */	lwz r4, 0x9a0(r3)
/* 805FF380  A0 64 00 00 */	lhz r3, 0(r4)
/* 805FF384  28 03 00 0C */	cmplwi r3, 0xc
/* 805FF388  41 80 00 18 */	blt lbl_805FF3A0
/* 805FF38C  38 03 FF F4 */	addi r0, r3, -12
/* 805FF390  A0 64 00 02 */	lhz r3, 2(r4)
/* 805FF394  1C 00 00 3C */	mulli r0, r0, 0x3c
/* 805FF398  7C 63 02 14 */	add r3, r3, r0
/* 805FF39C  4E 80 00 20 */	blr 
lbl_805FF3A0:
/* 805FF3A0  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 805FF3A4  A0 64 00 02 */	lhz r3, 2(r4)
/* 805FF3A8  7C 63 02 14 */	add r3, r3, r0
/* 805FF3AC  4E 80 00 20 */	blr 
