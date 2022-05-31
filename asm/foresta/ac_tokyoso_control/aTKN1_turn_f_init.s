lbl_804AB104:
/* 804AB104  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AB108  7C 08 02 A6 */	mflr r0
/* 804AB10C  3C 80 80 64 */	lis r4, data_80645E4C@ha /* 0x80645E4C@ha */
/* 804AB110  38 A0 00 03 */	li r5, 3
/* 804AB114  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AB118  38 C0 00 03 */	li r6, 3
/* 804AB11C  C0 24 5E 4C */	lfs f1, data_80645E4C@l(r4)  /* 0x80645E4C@l */
/* 804AB120  38 80 00 04 */	li r4, 4
/* 804AB124  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 804AB128  38 E0 00 00 */	li r7, 0
/* 804AB12C  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 804AB130  EC 01 00 2A */	fadds f0, f1, f0
/* 804AB134  FC 40 10 1E */	fctiwz f2, f2
/* 804AB138  FC 00 00 1E */	fctiwz f0, f0
/* 804AB13C  D8 41 00 08 */	stfd f2, 8(r1)
/* 804AB140  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804AB144  81 01 00 0C */	lwz r8, 0xc(r1)
/* 804AB148  81 21 00 14 */	lwz r9, 0x14(r1)
/* 804AB14C  4B FF FE 0D */	bl func_804AAF58
/* 804AB150  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AB154  7C 08 03 A6 */	mtlr r0
/* 804AB158  38 21 00 20 */	addi r1, r1, 0x20
/* 804AB15C  4E 80 00 20 */	blr 
