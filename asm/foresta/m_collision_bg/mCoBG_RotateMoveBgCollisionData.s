lbl_8038D220:
/* 8038D220  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038D224  7C 08 02 A6 */	mflr r0
/* 8038D228  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038D22C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8038D230  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8038D234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038D238  93 C1 00 08 */	stw r30, 8(r1)
/* 8038D23C  3C 80 80 64 */	lis r4, lit_521@ha /* 0x806419AC@ha */
/* 8038D240  FF E0 08 90 */	fmr f31, f1
/* 8038D244  C0 04 19 AC */	lfs f0, lit_521@l(r4)  /* 0x806419AC@l */
/* 8038D248  7C 7E 1B 78 */	mr r30, r3
/* 8038D24C  3C 60 80 64 */	lis r3, data_806419A4@ha /* 0x806419A4@ha */
/* 8038D250  38 83 19 A4 */	addi r4, r3, data_806419A4@l /* 0x806419A4@l */
/* 8038D254  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8038D258  C0 04 00 00 */	lfs f0, 0(r4)
/* 8038D25C  38 7E 00 20 */	addi r3, r30, 0x20
/* 8038D260  3B FE 00 08 */	addi r31, r30, 8
/* 8038D264  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038D268  4C 41 13 82 */	cror 2, 1, 2
/* 8038D26C  40 82 00 08 */	bne lbl_8038D274
/* 8038D270  48 00 00 08 */	b lbl_8038D278
lbl_8038D274:
/* 8038D274  FC 20 08 50 */	fneg f1, f1
lbl_8038D278:
/* 8038D278  3C 80 80 64 */	lis r4, lit_1620@ha /* 0x80641A48@ha */
/* 8038D27C  C0 04 1A 48 */	lfs f0, lit_1620@l(r4)  /* 0x80641A48@l */
/* 8038D280  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8038D284  4C 41 13 82 */	cror 2, 1, 2
/* 8038D288  40 82 00 24 */	bne lbl_8038D2AC
/* 8038D28C  FC 20 F8 90 */	fmr f1, f31
/* 8038D290  4B FF CF 19 */	bl func_8038A1A8
/* 8038D294  FC 20 F8 90 */	fmr f1, f31
/* 8038D298  7F C3 F3 78 */	mr r3, r30
/* 8038D29C  4B FF CF 0D */	bl func_8038A1A8
/* 8038D2A0  FC 20 F8 90 */	fmr f1, f31
/* 8038D2A4  7F E3 FB 78 */	mr r3, r31
/* 8038D2A8  4B FF CF 01 */	bl func_8038A1A8
lbl_8038D2AC:
/* 8038D2AC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8038D2B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038D2B4  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8038D2B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038D2BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8038D2C0  7C 08 03 A6 */	mtlr r0
/* 8038D2C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8038D2C8  4E 80 00 20 */	blr 
