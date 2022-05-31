lbl_8047EF00:
/* 8047EF00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047EF04  2C 07 00 01 */	cmpwi r7, 1
/* 8047EF08  81 04 00 00 */	lwz r8, 0(r4)
/* 8047EF0C  80 04 00 04 */	lwz r0, 4(r4)
/* 8047EF10  91 03 00 00 */	stw r8, 0(r3)
/* 8047EF14  90 03 00 04 */	stw r0, 4(r3)
/* 8047EF18  80 04 00 08 */	lwz r0, 8(r4)
/* 8047EF1C  90 03 00 08 */	stw r0, 8(r3)
/* 8047EF20  41 82 00 60 */	beq lbl_8047EF80
/* 8047EF24  40 80 00 10 */	bge lbl_8047EF34
/* 8047EF28  2C 07 00 00 */	cmpwi r7, 0
/* 8047EF2C  40 80 00 10 */	bge lbl_8047EF3C
/* 8047EF30  48 00 00 50 */	b lbl_8047EF80
lbl_8047EF34:
/* 8047EF34  2C 07 00 03 */	cmpwi r7, 3
/* 8047EF38  40 80 00 48 */	bge lbl_8047EF80
lbl_8047EF3C:
/* 8047EF3C  6C A4 80 00 */	xoris r4, r5, 0x8000
/* 8047EF40  3C 00 43 30 */	lis r0, 0x4330
/* 8047EF44  3C A0 80 64 */	lis r5, lit_888@ha /* 0x806449FC@ha */
/* 8047EF48  90 81 00 0C */	stw r4, 0xc(r1)
/* 8047EF4C  38 85 49 FC */	addi r4, r5, lit_888@l /* 0x806449FC@l */
/* 8047EF50  90 01 00 08 */	stw r0, 8(r1)
/* 8047EF54  3C A0 80 64 */	lis r5, lit_885@ha /* 0x806449F4@ha */
/* 8047EF58  C8 24 00 00 */	lfd f1, 0(r4)
/* 8047EF5C  3C 80 80 64 */	lis r4, lit_884@ha /* 0x806449F0@ha */
/* 8047EF60  C8 01 00 08 */	lfd f0, 8(r1)
/* 8047EF64  C0 45 49 F4 */	lfs f2, lit_885@l(r5)  /* 0x806449F4@l */
/* 8047EF68  EC 00 08 28 */	fsubs f0, f0, f1
/* 8047EF6C  C0 24 49 F0 */	lfs f1, lit_884@l(r4)  /* 0x806449F0@l */
/* 8047EF70  EC 02 00 32 */	fmuls f0, f2, f0
/* 8047EF74  EC 01 00 2A */	fadds f0, f1, f0
/* 8047EF78  D0 03 00 00 */	stfs f0, 0(r3)
/* 8047EF7C  48 00 00 44 */	b lbl_8047EFC0
lbl_8047EF80:
/* 8047EF80  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 8047EF84  3C 00 43 30 */	lis r0, 0x4330
/* 8047EF88  3C A0 80 64 */	lis r5, lit_888@ha /* 0x806449FC@ha */
/* 8047EF8C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8047EF90  38 85 49 FC */	addi r4, r5, lit_888@l /* 0x806449FC@l */
/* 8047EF94  90 01 00 08 */	stw r0, 8(r1)
/* 8047EF98  3C A0 80 64 */	lis r5, lit_885@ha /* 0x806449F4@ha */
/* 8047EF9C  C8 24 00 00 */	lfd f1, 0(r4)
/* 8047EFA0  3C 80 80 64 */	lis r4, lit_884@ha /* 0x806449F0@ha */
/* 8047EFA4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8047EFA8  C0 45 49 F4 */	lfs f2, lit_885@l(r5)  /* 0x806449F4@l */
/* 8047EFAC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8047EFB0  C0 24 49 F0 */	lfs f1, lit_884@l(r4)  /* 0x806449F0@l */
/* 8047EFB4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8047EFB8  EC 01 00 2A */	fadds f0, f1, f0
/* 8047EFBC  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8047EFC0:
/* 8047EFC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8047EFC4  4E 80 00 20 */	blr 
