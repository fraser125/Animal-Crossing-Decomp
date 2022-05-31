lbl_8040D18C:
/* 8040D18C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8040D190  3C A0 80 64 */	lis r5, lit_492@ha /* 0x80643744@ha */
/* 8040D194  C0 05 37 44 */	lfs f0, lit_492@l(r5)  /* 0x80643744@l */
/* 8040D198  C0 23 00 00 */	lfs f1, 0(r3)
/* 8040D19C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040D1A0  FC 20 08 1E */	fctiwz f1, f1
/* 8040D1A4  D8 21 00 08 */	stfd f1, 8(r1)
/* 8040D1A8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8040D1AC  7C A0 86 70 */	srawi r0, r5, 0x10
/* 8040D1B0  B0 04 00 00 */	sth r0, 0(r4)
/* 8040D1B4  B0 A4 00 20 */	sth r5, 0x20(r4)
/* 8040D1B8  C0 23 00 04 */	lfs f1, 4(r3)
/* 8040D1BC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040D1C0  FC 20 08 1E */	fctiwz f1, f1
/* 8040D1C4  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 8040D1C8  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8040D1CC  7C A0 86 70 */	srawi r0, r5, 0x10
/* 8040D1D0  B0 04 00 02 */	sth r0, 2(r4)
/* 8040D1D4  B0 A4 00 22 */	sth r5, 0x22(r4)
/* 8040D1D8  C0 23 00 08 */	lfs f1, 8(r3)
/* 8040D1DC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040D1E0  FC 20 08 1E */	fctiwz f1, f1
/* 8040D1E4  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 8040D1E8  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8040D1EC  7C A0 86 70 */	srawi r0, r5, 0x10
/* 8040D1F0  B0 04 00 04 */	sth r0, 4(r4)
/* 8040D1F4  B0 A4 00 24 */	sth r5, 0x24(r4)
/* 8040D1F8  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8040D1FC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040D200  FC 20 08 1E */	fctiwz f1, f1
/* 8040D204  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 8040D208  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8040D20C  7C A0 86 70 */	srawi r0, r5, 0x10
/* 8040D210  B0 04 00 06 */	sth r0, 6(r4)
/* 8040D214  B0 A4 00 26 */	sth r5, 0x26(r4)
/* 8040D218  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8040D21C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040D220  FC 20 08 1E */	fctiwz f1, f1
/* 8040D224  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8040D228  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 8040D22C  7C A0 86 70 */	srawi r0, r5, 0x10
/* 8040D230  B0 04 00 08 */	sth r0, 8(r4)
/* 8040D234  B0 A4 00 28 */	sth r5, 0x28(r4)
/* 8040D238  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8040D23C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040D240  FC 20 08 1E */	fctiwz f1, f1
/* 8040D244  D8 21 00 30 */	stfd f1, 0x30(r1)
/* 8040D248  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 8040D24C  7C A0 86 70 */	srawi r0, r5, 0x10
/* 8040D250  B0 04 00 0A */	sth r0, 0xa(r4)
/* 8040D254  B0 A4 00 2A */	sth r5, 0x2a(r4)
/* 8040D258  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8040D25C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040D260  FC 20 08 1E */	fctiwz f1, f1
/* 8040D264  D8 21 00 38 */	stfd f1, 0x38(r1)
/* 8040D268  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 8040D26C  7C A0 86 70 */	srawi r0, r5, 0x10
/* 8040D270  B0 04 00 0C */	sth r0, 0xc(r4)
/* 8040D274  B0 A4 00 2C */	sth r5, 0x2c(r4)
/* 8040D278  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8040D27C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040D280  FC 20 08 1E */	fctiwz f1, f1
/* 8040D284  D8 21 00 40 */	stfd f1, 0x40(r1)
/* 8040D288  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 8040D28C  7C A0 86 70 */	srawi r0, r5, 0x10
/* 8040D290  B0 04 00 0E */	sth r0, 0xe(r4)
/* 8040D294  B0 A4 00 2E */	sth r5, 0x2e(r4)
/* 8040D298  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 8040D29C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040D2A0  FC 20 08 1E */	fctiwz f1, f1
/* 8040D2A4  D8 21 00 48 */	stfd f1, 0x48(r1)
/* 8040D2A8  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 8040D2AC  7C A0 86 70 */	srawi r0, r5, 0x10
/* 8040D2B0  B0 04 00 10 */	sth r0, 0x10(r4)
/* 8040D2B4  B0 A4 00 30 */	sth r5, 0x30(r4)
/* 8040D2B8  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 8040D2BC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040D2C0  FC 20 08 1E */	fctiwz f1, f1
/* 8040D2C4  D8 21 00 50 */	stfd f1, 0x50(r1)
/* 8040D2C8  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 8040D2CC  7C A0 86 70 */	srawi r0, r5, 0x10
/* 8040D2D0  B0 04 00 12 */	sth r0, 0x12(r4)
/* 8040D2D4  B0 A4 00 32 */	sth r5, 0x32(r4)
/* 8040D2D8  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 8040D2DC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040D2E0  FC 20 08 1E */	fctiwz f1, f1
/* 8040D2E4  D8 21 00 58 */	stfd f1, 0x58(r1)
/* 8040D2E8  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 8040D2EC  7C A0 86 70 */	srawi r0, r5, 0x10
/* 8040D2F0  B0 04 00 14 */	sth r0, 0x14(r4)
/* 8040D2F4  B0 A4 00 34 */	sth r5, 0x34(r4)
/* 8040D2F8  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8040D2FC  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040D300  FC 20 08 1E */	fctiwz f1, f1
/* 8040D304  D8 21 00 60 */	stfd f1, 0x60(r1)
/* 8040D308  80 A1 00 64 */	lwz r5, 0x64(r1)
/* 8040D30C  7C A0 86 70 */	srawi r0, r5, 0x10
/* 8040D310  B0 04 00 16 */	sth r0, 0x16(r4)
/* 8040D314  B0 A4 00 36 */	sth r5, 0x36(r4)
/* 8040D318  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8040D31C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040D320  FC 20 08 1E */	fctiwz f1, f1
/* 8040D324  D8 21 00 68 */	stfd f1, 0x68(r1)
/* 8040D328  80 A1 00 6C */	lwz r5, 0x6c(r1)
/* 8040D32C  7C A0 86 70 */	srawi r0, r5, 0x10
/* 8040D330  B0 04 00 18 */	sth r0, 0x18(r4)
/* 8040D334  B0 A4 00 38 */	sth r5, 0x38(r4)
/* 8040D338  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 8040D33C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040D340  FC 20 08 1E */	fctiwz f1, f1
/* 8040D344  D8 21 00 70 */	stfd f1, 0x70(r1)
/* 8040D348  80 A1 00 74 */	lwz r5, 0x74(r1)
/* 8040D34C  7C A0 86 70 */	srawi r0, r5, 0x10
/* 8040D350  B0 04 00 1A */	sth r0, 0x1a(r4)
/* 8040D354  B0 A4 00 3A */	sth r5, 0x3a(r4)
/* 8040D358  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 8040D35C  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040D360  FC 20 08 1E */	fctiwz f1, f1
/* 8040D364  D8 21 00 78 */	stfd f1, 0x78(r1)
/* 8040D368  80 A1 00 7C */	lwz r5, 0x7c(r1)
/* 8040D36C  7C A0 86 70 */	srawi r0, r5, 0x10
/* 8040D370  B0 04 00 1C */	sth r0, 0x1c(r4)
/* 8040D374  B0 A4 00 3C */	sth r5, 0x3c(r4)
/* 8040D378  C0 23 00 3C */	lfs f1, 0x3c(r3)
/* 8040D37C  7C 83 23 78 */	mr r3, r4
/* 8040D380  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040D384  FC 00 00 1E */	fctiwz f0, f0
/* 8040D388  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 8040D38C  80 A1 00 84 */	lwz r5, 0x84(r1)
/* 8040D390  7C A0 86 70 */	srawi r0, r5, 0x10
/* 8040D394  B0 04 00 1E */	sth r0, 0x1e(r4)
/* 8040D398  B0 A4 00 3E */	sth r5, 0x3e(r4)
/* 8040D39C  38 21 00 90 */	addi r1, r1, 0x90
/* 8040D3A0  4E 80 00 20 */	blr 
