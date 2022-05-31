lbl_804D7008:
/* 804D7008  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D700C  7C 08 02 A6 */	mflr r0
/* 804D7010  3C 80 80 64 */	lis r4, lit_1415@ha /* 0x80646A38@ha */
/* 804D7014  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D7018  38 A4 6A 38 */	addi r5, r4, lit_1415@l /* 0x80646A38@l */
/* 804D701C  C0 05 00 00 */	lfs f0, 0(r5)
/* 804D7020  3C 80 80 64 */	lis r4, lit_1416@ha /* 0x80646A3C@ha */
/* 804D7024  C0 23 01 80 */	lfs f1, 0x180(r3)
/* 804D7028  EC 41 00 72 */	fmuls f2, f1, f1
/* 804D702C  C0 24 6A 3C */	lfs f1, lit_1416@l(r4)  /* 0x80646A3C@l */
/* 804D7030  EC 02 00 24 */	fdivs f0, f2, f0
/* 804D7034  EC 40 00 32 */	fmuls f2, f0, f0
/* 804D7038  EC 02 00 B2 */	fmuls f0, f2, f2
/* 804D703C  EC 02 00 32 */	fmuls f0, f2, f0
/* 804D7040  EC 01 00 32 */	fmuls f0, f1, f0
/* 804D7044  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804D7048  40 81 00 08 */	ble lbl_804D7050
/* 804D704C  FC 00 08 90 */	fmr f0, f1
lbl_804D7050:
/* 804D7050  3C A0 80 64 */	lis r5, lit_1027@ha /* 0x806469F4@ha */
/* 804D7054  FC 00 00 1E */	fctiwz f0, f0
/* 804D7058  38 C5 69 F4 */	addi r6, r5, lit_1027@l /* 0x806469F4@l */
/* 804D705C  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 804D7060  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804D7064  38 A4 69 FC */	addi r5, r4, lit_1028@l /* 0x806469FC@l */
/* 804D7068  C8 86 00 00 */	lfd f4, 0(r6)
/* 804D706C  FC 40 28 34 */	frsqrte f2, f5
/* 804D7070  C8 65 00 00 */	lfd f3, 0(r5)
/* 804D7074  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804D7078  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804D707C  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804D7080  38 63 00 DC */	addi r3, r3, 0xdc
/* 804D7084  FC 22 00 B2 */	fmul f1, f2, f2
/* 804D7088  80 81 00 14 */	lwz r4, 0x14(r1)
/* 804D708C  38 A0 07 1C */	li r5, 0x71c
/* 804D7090  38 C0 00 00 */	li r6, 0
/* 804D7094  FC 44 00 B2 */	fmul f2, f4, f2
/* 804D7098  FC 25 00 72 */	fmul f1, f5, f1
/* 804D709C  FC 23 08 28 */	fsub f1, f3, f1
/* 804D70A0  FC 42 00 72 */	fmul f2, f2, f1
/* 804D70A4  FC 22 00 B2 */	fmul f1, f2, f2
/* 804D70A8  FC 44 00 B2 */	fmul f2, f4, f2
/* 804D70AC  FC 25 00 72 */	fmul f1, f5, f1
/* 804D70B0  FC 23 08 28 */	fsub f1, f3, f1
/* 804D70B4  FC 42 00 72 */	fmul f2, f2, f1
/* 804D70B8  FC 22 00 B2 */	fmul f1, f2, f2
/* 804D70BC  FC 44 00 B2 */	fmul f2, f4, f2
/* 804D70C0  FC 25 00 72 */	fmul f1, f5, f1
/* 804D70C4  FC 23 08 28 */	fsub f1, f3, f1
/* 804D70C8  FC 22 00 72 */	fmul f1, f2, f1
/* 804D70CC  FC 25 00 72 */	fmul f1, f5, f1
/* 804D70D0  FC 20 08 18 */	frsp f1, f1
/* 804D70D4  D0 21 00 08 */	stfs f1, 8(r1)
/* 804D70D8  C0 21 00 08 */	lfs f1, 8(r1)
/* 804D70DC  EC 20 08 28 */	fsubs f1, f0, f1
/* 804D70E0  4B EE 42 31 */	bl add_calc_short_angle2
/* 804D70E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D70E8  7C 08 03 A6 */	mtlr r0
/* 804D70EC  38 21 00 20 */	addi r1, r1, 0x20
/* 804D70F0  4E 80 00 20 */	blr 
