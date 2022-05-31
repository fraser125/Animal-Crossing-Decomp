lbl_8040BF84:
/* 8040BF84  3C 60 80 64 */	lis r3, data_80643724@ha /* 0x80643724@ha */
/* 8040BF88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040BF8C  C0 03 37 24 */	lfs f0, data_80643724@l(r3)  /* 0x80643724@l */
/* 8040BF90  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8040BF94  40 82 00 14 */	bne lbl_8040BFA8
/* 8040BF98  3C 60 80 66 */	lis r3, atntable@ha /* 0x8065F068@ha */
/* 8040BF9C  38 63 F0 68 */	addi r3, r3, atntable@l /* 0x8065F068@l */
/* 8040BFA0  A0 63 08 00 */	lhz r3, 0x800(r3)
/* 8040BFA4  48 00 00 54 */	b lbl_8040BFF8
lbl_8040BFA8:
/* 8040BFA8  EC 01 10 24 */	fdivs f0, f1, f2
/* 8040BFAC  3C 60 80 64 */	lis r3, lit_268@ha /* 0x8064372C@ha */
/* 8040BFB0  C0 23 37 2C */	lfs f1, lit_268@l(r3)  /* 0x8064372C@l */
/* 8040BFB4  3C 80 80 64 */	lis r4, lit_267@ha /* 0x80643728@ha */
/* 8040BFB8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8040BFBC  C0 24 37 28 */	lfs f1, lit_267@l(r4)  /* 0x80643728@l */
/* 8040BFC0  EC 01 00 2A */	fadds f0, f1, f0
/* 8040BFC4  FC 00 00 1E */	fctiwz f0, f0
/* 8040BFC8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8040BFCC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8040BFD0  2C 00 04 00 */	cmpwi r0, 0x400
/* 8040BFD4  40 81 00 14 */	ble lbl_8040BFE8
/* 8040BFD8  3C 60 80 66 */	lis r3, atntable@ha /* 0x8065F068@ha */
/* 8040BFDC  38 63 F0 68 */	addi r3, r3, atntable@l /* 0x8065F068@l */
/* 8040BFE0  A0 63 08 00 */	lhz r3, 0x800(r3)
/* 8040BFE4  48 00 00 14 */	b lbl_8040BFF8
lbl_8040BFE8:
/* 8040BFE8  3C 60 80 66 */	lis r3, atntable@ha /* 0x8065F068@ha */
/* 8040BFEC  54 00 08 3C */	slwi r0, r0, 1
/* 8040BFF0  38 63 F0 68 */	addi r3, r3, atntable@l /* 0x8065F068@l */
/* 8040BFF4  7C 63 02 2E */	lhzx r3, r3, r0
lbl_8040BFF8:
/* 8040BFF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8040BFFC  4E 80 00 20 */	blr 
