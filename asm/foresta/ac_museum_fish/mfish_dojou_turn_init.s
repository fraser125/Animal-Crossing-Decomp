lbl_8044CA94:
/* 8044CA94  A8 83 06 2C */	lha r4, 0x62c(r3)
/* 8044CA98  A8 03 06 0E */	lha r0, 0x60e(r3)
/* 8044CA9C  7C 04 00 50 */	subf r0, r4, r0
/* 8044CAA0  7C 00 07 35 */	extsh. r0, r0
/* 8044CAA4  40 81 00 10 */	ble lbl_8044CAB4
/* 8044CAA8  38 04 51 C7 */	addi r0, r4, 0x51c7
/* 8044CAAC  B0 03 06 14 */	sth r0, 0x614(r3)
/* 8044CAB0  48 00 00 0C */	b lbl_8044CABC
lbl_8044CAB4:
/* 8044CAB4  38 04 AE 39 */	addi r0, r4, -20935
/* 8044CAB8  B0 03 06 14 */	sth r0, 0x614(r3)
lbl_8044CABC:
/* 8044CABC  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8044CAC0  3C 80 80 45 */	lis r4, mfish_dojou_turn@ha /* 0x8044CADC@ha */
/* 8044CAC4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8044CAC8  38 04 CA DC */	addi r0, r4, mfish_dojou_turn@l /* 0x8044CADC@l */
/* 8044CACC  EC 01 00 2A */	fadds f0, f1, f0
/* 8044CAD0  D0 03 05 F0 */	stfs f0, 0x5f0(r3)
/* 8044CAD4  90 03 00 34 */	stw r0, 0x34(r3)
/* 8044CAD8  4E 80 00 20 */	blr 
