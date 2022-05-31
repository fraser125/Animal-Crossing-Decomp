lbl_803C2D88:
/* 803C2D88  80 A3 04 60 */	lwz r5, 0x460(r3)
/* 803C2D8C  38 00 00 02 */	li r0, 2
/* 803C2D90  38 C0 00 01 */	li r6, 1
/* 803C2D94  38 80 FF FF */	li r4, -1
/* 803C2D98  90 03 04 34 */	stw r0, 0x434(r3)
/* 803C2D9C  38 00 00 04 */	li r0, 4
/* 803C2DA0  2C 05 00 01 */	cmpwi r5, 1
/* 803C2DA4  90 C3 04 38 */	stw r6, 0x438(r3)
/* 803C2DA8  90 83 04 2C */	stw r4, 0x42c(r3)
/* 803C2DAC  90 03 04 30 */	stw r0, 0x430(r3)
/* 803C2DB0  80 03 04 0C */	lwz r0, 0x40c(r3)
/* 803C2DB4  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 803C2DB8  90 03 04 0C */	stw r0, 0x40c(r3)
/* 803C2DBC  4D 82 00 20 */	beqlr 
/* 803C2DC0  3C A0 80 64 */	lis r5, lit_725@ha /* 0x80642618@ha */
/* 803C2DC4  38 80 00 00 */	li r4, 0
/* 803C2DC8  C0 05 26 18 */	lfs f0, lit_725@l(r5)  /* 0x80642618@l */
/* 803C2DCC  D0 03 04 18 */	stfs f0, 0x418(r3)
/* 803C2DD0  98 83 02 CF */	stb r4, 0x2cf(r3)
/* 803C2DD4  A0 03 03 EC */	lhz r0, 0x3ec(r3)
/* 803C2DD8  28 00 00 00 */	cmplwi r0, 0
/* 803C2DDC  40 82 00 0C */	bne lbl_803C2DE8
/* 803C2DE0  90 C3 00 34 */	stw r6, 0x34(r3)
/* 803C2DE4  48 00 00 08 */	b lbl_803C2DEC
lbl_803C2DE8:
/* 803C2DE8  90 83 00 34 */	stw r4, 0x34(r3)
lbl_803C2DEC:
/* 803C2DEC  38 00 00 00 */	li r0, 0
/* 803C2DF0  90 03 04 3C */	stw r0, 0x43c(r3)
/* 803C2DF4  4E 80 00 20 */	blr 
