lbl_803BAC68:
/* 803BAC68  3C 80 80 64 */	lis r4, lit_450@ha /* 0x80642564@ha */
/* 803BAC6C  C0 04 25 64 */	lfs f0, lit_450@l(r4)  /* 0x80642564@l */
/* 803BAC70  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 803BAC74  41 82 00 4C */	beq lbl_803BACC0
/* 803BAC78  C0 03 00 00 */	lfs f0, 0(r3)
/* 803BAC7C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803BAC80  40 81 00 08 */	ble lbl_803BAC88
/* 803BAC84  FC 40 10 50 */	fneg f2, f2
lbl_803BAC88:
/* 803BAC88  C0 03 00 00 */	lfs f0, 0(r3)
/* 803BAC8C  3C 80 80 64 */	lis r4, lit_450@ha /* 0x80642564@ha */
/* 803BAC90  EC 60 10 2A */	fadds f3, f0, f2
/* 803BAC94  C0 04 25 64 */	lfs f0, lit_450@l(r4)  /* 0x80642564@l */
/* 803BAC98  D0 63 00 00 */	stfs f3, 0(r3)
/* 803BAC9C  C0 63 00 00 */	lfs f3, 0(r3)
/* 803BACA0  EC 63 08 28 */	fsubs f3, f3, f1
/* 803BACA4  EC 42 00 F2 */	fmuls f2, f2, f3
/* 803BACA8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 803BACAC  4C 41 13 82 */	cror 2, 1, 2
/* 803BACB0  40 82 00 24 */	bne lbl_803BACD4
/* 803BACB4  D0 23 00 00 */	stfs f1, 0(r3)
/* 803BACB8  38 60 00 01 */	li r3, 1
/* 803BACBC  4E 80 00 20 */	blr 
lbl_803BACC0:
/* 803BACC0  C0 03 00 00 */	lfs f0, 0(r3)
/* 803BACC4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 803BACC8  40 82 00 0C */	bne lbl_803BACD4
/* 803BACCC  38 60 00 01 */	li r3, 1
/* 803BACD0  4E 80 00 20 */	blr 
lbl_803BACD4:
/* 803BACD4  38 60 00 00 */	li r3, 0
/* 803BACD8  4E 80 00 20 */	blr 
