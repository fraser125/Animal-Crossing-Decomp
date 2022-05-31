lbl_803BB7E4:
/* 803BB7E4  3C C0 80 64 */	lis r6, lit_966@ha /* 0x8064257C@ha */
/* 803BB7E8  7C 05 20 00 */	cmpw r5, r4
/* 803BB7EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BB7F0  C0 26 25 7C */	lfs f1, lit_966@l(r6)  /* 0x8064257C@l */
/* 803BB7F4  40 80 00 10 */	bge lbl_803BB804
/* 803BB7F8  3C 60 80 64 */	lis r3, lit_450@ha /* 0x80642564@ha */
/* 803BB7FC  C0 23 25 64 */	lfs f1, lit_450@l(r3)  /* 0x80642564@l */
/* 803BB800  48 00 00 70 */	b lbl_803BB870
lbl_803BB804:
/* 803BB804  7C 05 18 00 */	cmpw r5, r3
/* 803BB808  40 80 00 68 */	bge lbl_803BB870
/* 803BB80C  7C 04 18 50 */	subf r0, r4, r3
/* 803BB810  3C C0 43 30 */	lis r6, 0x4330
/* 803BB814  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803BB818  3C 60 80 64 */	lis r3, lit_401@ha /* 0x8064255C@ha */
/* 803BB81C  90 01 00 0C */	stw r0, 0xc(r1)
/* 803BB820  38 E3 25 5C */	addi r7, r3, lit_401@l /* 0x8064255C@l */
/* 803BB824  3C 60 80 64 */	lis r3, lit_450@ha /* 0x80642564@ha */
/* 803BB828  C8 67 00 00 */	lfd f3, 0(r7)
/* 803BB82C  90 C1 00 08 */	stw r6, 8(r1)
/* 803BB830  C0 03 25 64 */	lfs f0, lit_450@l(r3)  /* 0x80642564@l */
/* 803BB834  C8 41 00 08 */	lfd f2, 8(r1)
/* 803BB838  EC 42 18 28 */	fsubs f2, f2, f3
/* 803BB83C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 803BB840  41 82 00 30 */	beq lbl_803BB870
/* 803BB844  7C 04 28 50 */	subf r0, r4, r5
/* 803BB848  90 C1 00 08 */	stw r6, 8(r1)
/* 803BB84C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 803BB850  FC 00 08 90 */	fmr f0, f1
/* 803BB854  90 01 00 0C */	stw r0, 0xc(r1)
/* 803BB858  C8 21 00 08 */	lfd f1, 8(r1)
/* 803BB85C  EC 21 18 28 */	fsubs f1, f1, f3
/* 803BB860  EC 21 10 24 */	fdivs f1, f1, f2
/* 803BB864  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803BB868  40 81 00 08 */	ble lbl_803BB870
/* 803BB86C  FC 20 00 90 */	fmr f1, f0
lbl_803BB870:
/* 803BB870  38 21 00 10 */	addi r1, r1, 0x10
/* 803BB874  4E 80 00 20 */	blr 
