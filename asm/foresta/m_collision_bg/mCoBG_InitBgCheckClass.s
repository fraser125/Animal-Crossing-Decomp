lbl_8038982C:
/* 8038982C  3C A0 80 64 */	lis r5, data_806419A4@ha /* 0x806419A4@ha */
/* 80389830  38 80 00 B6 */	li r4, 0xb6
/* 80389834  C0 05 19 A4 */	lfs f0, data_806419A4@l(r5)  /* 0x806419A4@l */
/* 80389838  38 00 00 02 */	li r0, 2
/* 8038983C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80389840  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80389844  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80389848  B0 83 00 24 */	sth r4, 0x24(r3)
/* 8038984C  B0 83 00 28 */	sth r4, 0x28(r3)
/* 80389850  B0 03 00 26 */	sth r0, 0x26(r3)
/* 80389854  B0 03 00 2A */	sth r0, 0x2a(r3)
/* 80389858  4E 80 00 20 */	blr 