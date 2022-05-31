lbl_8038ABFC:
/* 8038ABFC  C0 46 00 00 */	lfs f2, 0(r6)
/* 8038AC00  3C A0 80 64 */	lis r5, data_806419A4@ha /* 0x806419A4@ha */
/* 8038AC04  C0 04 00 00 */	lfs f0, 0(r4)
/* 8038AC08  C0 A6 00 04 */	lfs f5, 4(r6)
/* 8038AC0C  C0 24 00 04 */	lfs f1, 4(r4)
/* 8038AC10  EC 82 00 32 */	fmuls f4, f2, f0
/* 8038AC14  C0 07 00 00 */	lfs f0, 0(r7)
/* 8038AC18  EC 65 00 72 */	fmuls f3, f5, f1
/* 8038AC1C  C0 27 00 04 */	lfs f1, 4(r7)
/* 8038AC20  EC 42 00 32 */	fmuls f2, f2, f0
/* 8038AC24  C0 05 19 A4 */	lfs f0, data_806419A4@l(r5)  /* 0x806419A4@l */
/* 8038AC28  EC 25 00 72 */	fmuls f1, f5, f1
/* 8038AC2C  EC 64 18 2A */	fadds f3, f4, f3
/* 8038AC30  EC 22 08 2A */	fadds f1, f2, f1
/* 8038AC34  FC 40 18 50 */	fneg f2, f3
/* 8038AC38  EC 22 08 2A */	fadds f1, f2, f1
/* 8038AC3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038AC40  4C 41 13 82 */	cror 2, 1, 2
/* 8038AC44  40 82 00 0C */	bne lbl_8038AC50
/* 8038AC48  FC 00 08 90 */	fmr f0, f1
/* 8038AC4C  48 00 00 08 */	b lbl_8038AC54
lbl_8038AC50:
/* 8038AC50  FC 00 08 50 */	fneg f0, f1
lbl_8038AC54:
/* 8038AC54  D0 03 00 00 */	stfs f0, 0(r3)
/* 8038AC58  38 60 00 01 */	li r3, 1
/* 8038AC5C  4E 80 00 20 */	blr 
