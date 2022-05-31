lbl_803BB08C:
/* 803BB08C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BB090  3C A0 80 64 */	lis r5, lit_450@ha /* 0x80642564@ha */
/* 803BB094  C0 64 00 00 */	lfs f3, 0(r4)
/* 803BB098  C0 03 00 00 */	lfs f0, 0(r3)
/* 803BB09C  C0 44 00 08 */	lfs f2, 8(r4)
/* 803BB0A0  C0 23 00 08 */	lfs f1, 8(r3)
/* 803BB0A4  EC 63 00 28 */	fsubs f3, f3, f0
/* 803BB0A8  C0 05 25 64 */	lfs f0, lit_450@l(r5)  /* 0x80642564@l */
/* 803BB0AC  EC 22 08 28 */	fsubs f1, f2, f1
/* 803BB0B0  EC 43 00 F2 */	fmuls f2, f3, f3
/* 803BB0B4  EC 21 00 72 */	fmuls f1, f1, f1
/* 803BB0B8  EC 22 08 2A */	fadds f1, f2, f1
/* 803BB0BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803BB0C0  40 81 00 68 */	ble lbl_803BB128
/* 803BB0C4  FC 40 08 34 */	frsqrte f2, f1
/* 803BB0C8  3C 60 80 64 */	lis r3, lit_544@ha /* 0x8064256C@ha */
/* 803BB0CC  38 83 25 6C */	addi r4, r3, lit_544@l /* 0x8064256C@l */
/* 803BB0D0  3C 60 80 64 */	lis r3, lit_545@ha /* 0x80642574@ha */
/* 803BB0D4  C8 84 00 00 */	lfd f4, 0(r4)
/* 803BB0D8  FC 02 00 B2 */	fmul f0, f2, f2
/* 803BB0DC  C8 63 25 74 */	lfd f3, lit_545@l(r3)  /* 0x80642574@l */
/* 803BB0E0  FC 44 00 B2 */	fmul f2, f4, f2
/* 803BB0E4  FC 01 00 32 */	fmul f0, f1, f0
/* 803BB0E8  FC 03 00 28 */	fsub f0, f3, f0
/* 803BB0EC  FC 42 00 32 */	fmul f2, f2, f0
/* 803BB0F0  FC 02 00 B2 */	fmul f0, f2, f2
/* 803BB0F4  FC 44 00 B2 */	fmul f2, f4, f2
/* 803BB0F8  FC 01 00 32 */	fmul f0, f1, f0
/* 803BB0FC  FC 03 00 28 */	fsub f0, f3, f0
/* 803BB100  FC 42 00 32 */	fmul f2, f2, f0
/* 803BB104  FC 02 00 B2 */	fmul f0, f2, f2
/* 803BB108  FC 44 00 B2 */	fmul f2, f4, f2
/* 803BB10C  FC 01 00 32 */	fmul f0, f1, f0
/* 803BB110  FC 03 00 28 */	fsub f0, f3, f0
/* 803BB114  FC 02 00 32 */	fmul f0, f2, f0
/* 803BB118  FC 01 00 32 */	fmul f0, f1, f0
/* 803BB11C  FC 00 00 18 */	frsp f0, f0
/* 803BB120  D0 01 00 08 */	stfs f0, 8(r1)
/* 803BB124  C0 21 00 08 */	lfs f1, 8(r1)
lbl_803BB128:
/* 803BB128  38 21 00 10 */	addi r1, r1, 0x10
/* 803BB12C  4E 80 00 20 */	blr 
