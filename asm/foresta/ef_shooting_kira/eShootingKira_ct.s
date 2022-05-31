lbl_8061BEA8:
/* 8061BEA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061BEAC  7C 08 02 A6 */	mflr r0
/* 8061BEB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061BEB4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8061BEB8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8061BEBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8061BEC0  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 8061BEC4  A8 03 00 06 */	lha r0, 6(r3)
/* 8061BEC8  80 84 61 38 */	lwz r4, debug_mode@l(r4)  /* 0x81166138@l */
/* 8061BECC  7C 7F 1B 78 */	mr r31, r3
/* 8061BED0  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 8061BED4  3C A0 43 30 */	lis r5, 0x4330
/* 8061BED8  A8 84 19 14 */	lha r4, 0x1914(r4)
/* 8061BEDC  3C E0 80 65 */	lis r7, lit_387@ha /* 0x8064CAC4@ha */
/* 8061BEE0  3D 00 80 65 */	lis r8, data_8064CABC@ha /* 0x8064CABC@ha */
/* 8061BEE4  3C 60 80 6D */	lis r3, scale0@ha /* 0x806D3490@ha */
/* 8061BEE8  38 04 00 2A */	addi r0, r4, 0x2a
/* 8061BEEC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8061BEF0  38 83 34 90 */	addi r4, r3, scale0@l /* 0x806D3490@l */
/* 8061BEF4  C8 27 CA C4 */	lfd f1, lit_387@l(r7)  /* 0x8064CAC4@l */
/* 8061BEF8  B0 1F 00 00 */	sth r0, 0(r31)
/* 8061BEFC  C0 48 CA BC */	lfs f2, data_8064CABC@l(r8)  /* 0x8064CABC@l */
/* 8061BF00  80 64 00 00 */	lwz r3, 0(r4)
/* 8061BF04  80 04 00 04 */	lwz r0, 4(r4)
/* 8061BF08  90 A1 00 08 */	stw r5, 8(r1)
/* 8061BF0C  90 7F 00 34 */	stw r3, 0x34(r31)
/* 8061BF10  C8 01 00 08 */	lfd f0, 8(r1)
/* 8061BF14  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8061BF18  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061BF1C  80 04 00 08 */	lwz r0, 8(r4)
/* 8061BF20  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 8061BF24  EF E2 00 32 */	fmuls f31, f2, f0
/* 8061BF28  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8061BF2C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8061BF30  90 7F 00 28 */	stw r3, 0x28(r31)
/* 8061BF34  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8061BF38  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8061BF3C  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8061BF40  A8 7F 00 08 */	lha r3, 8(r31)
/* 8061BF44  4B D9 EB AD */	bl sin_s
/* 8061BF48  3C 60 80 65 */	lis r3, lit_385@ha /* 0x8064CAC0@ha */
/* 8061BF4C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8061BF50  C0 43 CA C0 */	lfs f2, lit_385@l(r3)  /* 0x8064CAC0@l */
/* 8061BF54  EF E2 07 F2 */	fmuls f31, f2, f31
/* 8061BF58  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8061BF5C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061BF60  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8061BF64  A8 7F 00 08 */	lha r3, 8(r31)
/* 8061BF68  4B D9 EB 35 */	bl cos_s
/* 8061BF6C  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8061BF70  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8061BF74  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061BF78  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8061BF7C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8061BF80  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8061BF84  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 8061BF88  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8061BF8C  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8061BF90  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8061BF94  A8 7F 00 08 */	lha r3, 8(r31)
/* 8061BF98  4B D9 EB 59 */	bl sin_s
/* 8061BF9C  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8061BFA0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8061BFA4  EC 00 08 2A */	fadds f0, f0, f1
/* 8061BFA8  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8061BFAC  A8 7F 00 08 */	lha r3, 8(r31)
/* 8061BFB0  4B D9 EA ED */	bl cos_s
/* 8061BFB4  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8061BFB8  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8061BFBC  EC 00 08 2A */	fadds f0, f0, f1
/* 8061BFC0  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8061BFC4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8061BFC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061BFCC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8061BFD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8061BFD4  7C 08 03 A6 */	mtlr r0
/* 8061BFD8  38 21 00 30 */	addi r1, r1, 0x30
/* 8061BFDC  4E 80 00 20 */	blr 
