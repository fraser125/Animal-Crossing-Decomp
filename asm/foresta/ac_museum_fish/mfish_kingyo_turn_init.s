lbl_8044AC84:
/* 8044AC84  A8 83 06 2C */	lha r4, 0x62c(r3)
/* 8044AC88  A8 03 06 0E */	lha r0, 0x60e(r3)
/* 8044AC8C  7C 04 00 50 */	subf r0, r4, r0
/* 8044AC90  7C 00 07 35 */	extsh. r0, r0
/* 8044AC94  40 81 00 10 */	ble lbl_8044ACA4
/* 8044AC98  38 04 51 C7 */	addi r0, r4, 0x51c7
/* 8044AC9C  B0 03 06 14 */	sth r0, 0x614(r3)
/* 8044ACA0  48 00 00 0C */	b lbl_8044ACAC
lbl_8044ACA4:
/* 8044ACA4  38 04 AE 39 */	addi r0, r4, -20935
/* 8044ACA8  B0 03 06 14 */	sth r0, 0x614(r3)
lbl_8044ACAC:
/* 8044ACAC  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8044ACB0  3C 80 80 45 */	lis r4, mfish_kingyo_turn@ha /* 0x8044ACCC@ha */
/* 8044ACB4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8044ACB8  38 04 AC CC */	addi r0, r4, mfish_kingyo_turn@l /* 0x8044ACCC@l */
/* 8044ACBC  EC 01 00 2A */	fadds f0, f1, f0
/* 8044ACC0  D0 03 05 F0 */	stfs f0, 0x5f0(r3)
/* 8044ACC4  90 03 00 34 */	stw r0, 0x34(r3)
/* 8044ACC8  4E 80 00 20 */	blr 
