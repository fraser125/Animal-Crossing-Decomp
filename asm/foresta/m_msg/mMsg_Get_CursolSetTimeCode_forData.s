lbl_803C0224:
/* 803C0224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C0228  7C 03 20 AE */	lbzx r0, r3, r4
/* 803C022C  28 00 00 7F */	cmplwi r0, 0x7f
/* 803C0230  40 82 00 48 */	bne lbl_803C0278
/* 803C0234  7C 63 22 14 */	add r3, r3, r4
/* 803C0238  88 03 00 01 */	lbz r0, 1(r3)
/* 803C023C  28 00 00 03 */	cmplwi r0, 3
/* 803C0240  40 82 00 38 */	bne lbl_803C0278
/* 803C0244  88 63 00 02 */	lbz r3, 2(r3)
/* 803C0248  3C 00 43 30 */	lis r0, 0x4330
/* 803C024C  3C 80 80 64 */	lis r4, lit_449@ha /* 0x8064260C@ha */
/* 803C0250  3C A0 80 64 */	lis r5, lit_724@ha /* 0x80642614@ha */
/* 803C0254  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803C0258  90 01 00 08 */	stw r0, 8(r1)
/* 803C025C  C8 24 26 0C */	lfd f1, lit_449@l(r4)  /* 0x8064260C@l */
/* 803C0260  90 61 00 0C */	stw r3, 0xc(r1)
/* 803C0264  C0 45 26 14 */	lfs f2, lit_724@l(r5)  /* 0x80642614@l */
/* 803C0268  C8 01 00 08 */	lfd f0, 8(r1)
/* 803C026C  EC 00 08 28 */	fsubs f0, f0, f1
/* 803C0270  EC 22 00 32 */	fmuls f1, f2, f0
/* 803C0274  48 00 00 0C */	b lbl_803C0280
lbl_803C0278:
/* 803C0278  3C 60 80 64 */	lis r3, lit_725@ha /* 0x80642618@ha */
/* 803C027C  C0 23 26 18 */	lfs f1, lit_725@l(r3)  /* 0x80642618@l */
lbl_803C0280:
/* 803C0280  38 21 00 10 */	addi r1, r1, 0x10
/* 803C0284  4E 80 00 20 */	blr 