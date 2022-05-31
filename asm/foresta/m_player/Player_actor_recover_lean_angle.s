lbl_804D70F4:
/* 804D70F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D70F8  7C 08 02 A6 */	mflr r0
/* 804D70FC  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804D7100  3C A0 80 64 */	lis r5, lit_1028@ha /* 0x806469FC@ha */
/* 804D7104  38 C4 69 F4 */	addi r6, r4, lit_1027@l /* 0x806469F4@l */
/* 804D7108  C8 65 69 FC */	lfd f3, lit_1028@l(r5)  /* 0x806469FC@l */
/* 804D710C  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804D7110  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804D7114  C8 86 00 00 */	lfd f4, 0(r6)
/* 804D7118  38 63 00 DC */	addi r3, r3, 0xdc
/* 804D711C  FC 40 28 34 */	frsqrte f2, f5
/* 804D7120  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804D7124  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D7128  38 80 00 00 */	li r4, 0
/* 804D712C  38 A0 07 1C */	li r5, 0x71c
/* 804D7130  38 C0 00 00 */	li r6, 0
/* 804D7134  FC 22 00 B2 */	fmul f1, f2, f2
/* 804D7138  FC 44 00 B2 */	fmul f2, f4, f2
/* 804D713C  FC 25 00 72 */	fmul f1, f5, f1
/* 804D7140  FC 23 08 28 */	fsub f1, f3, f1
/* 804D7144  FC 42 00 72 */	fmul f2, f2, f1
/* 804D7148  FC 22 00 B2 */	fmul f1, f2, f2
/* 804D714C  FC 44 00 B2 */	fmul f2, f4, f2
/* 804D7150  FC 25 00 72 */	fmul f1, f5, f1
/* 804D7154  FC 23 08 28 */	fsub f1, f3, f1
/* 804D7158  FC 42 00 72 */	fmul f2, f2, f1
/* 804D715C  FC 22 00 B2 */	fmul f1, f2, f2
/* 804D7160  FC 44 00 B2 */	fmul f2, f4, f2
/* 804D7164  FC 25 00 72 */	fmul f1, f5, f1
/* 804D7168  FC 23 08 28 */	fsub f1, f3, f1
/* 804D716C  FC 22 00 72 */	fmul f1, f2, f1
/* 804D7170  FC 25 00 72 */	fmul f1, f5, f1
/* 804D7174  FC 20 08 18 */	frsp f1, f1
/* 804D7178  D0 21 00 08 */	stfs f1, 8(r1)
/* 804D717C  C0 21 00 08 */	lfs f1, 8(r1)
/* 804D7180  EC 20 08 28 */	fsubs f1, f0, f1
/* 804D7184  4B EE 41 8D */	bl add_calc_short_angle2
/* 804D7188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D718C  7C 08 03 A6 */	mtlr r0
/* 804D7190  38 21 00 10 */	addi r1, r1, 0x10
/* 804D7194  4E 80 00 20 */	blr 
