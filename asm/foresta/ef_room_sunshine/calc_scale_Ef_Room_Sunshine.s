lbl_804CEFF0:
/* 804CEFF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804CEFF4  7C 08 02 A6 */	mflr r0
/* 804CEFF8  2C 03 00 00 */	cmpwi r3, 0
/* 804CEFFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CF000  40 82 00 54 */	bne lbl_804CF054
/* 804CF004  54 83 70 22 */	slwi r3, r4, 0xe
/* 804CF008  3C 00 43 30 */	lis r0, 0x4330
/* 804CF00C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804CF010  3C 80 80 64 */	lis r4, lit_405@ha /* 0x8064630C@ha */
/* 804CF014  90 61 00 0C */	stw r3, 0xc(r1)
/* 804CF018  3C 60 80 64 */	lis r3, lit_402@ha /* 0x80646300@ha */
/* 804CF01C  C8 44 63 0C */	lfd f2, lit_405@l(r4)  /* 0x8064630C@l */
/* 804CF020  90 01 00 08 */	stw r0, 8(r1)
/* 804CF024  C0 03 63 00 */	lfs f0, lit_402@l(r3)  /* 0x80646300@l */
/* 804CF028  C8 21 00 08 */	lfd f1, 8(r1)
/* 804CF02C  EC 21 10 28 */	fsubs f1, f1, f2
/* 804CF030  EC 01 00 24 */	fdivs f0, f1, f0
/* 804CF034  FC 00 00 1E */	fctiwz f0, f0
/* 804CF038  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804CF03C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804CF040  4B EE BA B1 */	bl sin_s
/* 804CF044  3C 60 80 64 */	lis r3, lit_401@ha /* 0x806462FC@ha */
/* 804CF048  C0 03 62 FC */	lfs f0, lit_401@l(r3)  /* 0x806462FC@l */
/* 804CF04C  EC 20 00 72 */	fmuls f1, f0, f1
/* 804CF050  48 00 00 50 */	b lbl_804CF0A0
lbl_804CF054:
/* 804CF054  54 83 70 22 */	slwi r3, r4, 0xe
/* 804CF058  3C 00 43 30 */	lis r0, 0x4330
/* 804CF05C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804CF060  3C 80 80 64 */	lis r4, lit_405@ha /* 0x8064630C@ha */
/* 804CF064  90 61 00 1C */	stw r3, 0x1c(r1)
/* 804CF068  3C 60 80 64 */	lis r3, lit_403@ha /* 0x80646304@ha */
/* 804CF06C  C8 44 63 0C */	lfd f2, lit_405@l(r4)  /* 0x8064630C@l */
/* 804CF070  90 01 00 18 */	stw r0, 0x18(r1)
/* 804CF074  C0 03 63 04 */	lfs f0, lit_403@l(r3)  /* 0x80646304@l */
/* 804CF078  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 804CF07C  EC 21 10 28 */	fsubs f1, f1, f2
/* 804CF080  EC 01 00 24 */	fdivs f0, f1, f0
/* 804CF084  FC 00 00 1E */	fctiwz f0, f0
/* 804CF088  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804CF08C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 804CF090  4B EE BA 61 */	bl sin_s
/* 804CF094  3C 60 80 64 */	lis r3, lit_401@ha /* 0x806462FC@ha */
/* 804CF098  C0 03 62 FC */	lfs f0, lit_401@l(r3)  /* 0x806462FC@l */
/* 804CF09C  EC 20 00 72 */	fmuls f1, f0, f1
lbl_804CF0A0:
/* 804CF0A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CF0A4  7C 08 03 A6 */	mtlr r0
/* 804CF0A8  38 21 00 30 */	addi r1, r1, 0x30
/* 804CF0AC  4E 80 00 20 */	blr 
