lbl_803DEB2C:
/* 803DEB2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DEB30  7C 08 02 A6 */	mflr r0
/* 803DEB34  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DEB38  4B C7 E1 BD */	bl fqrand
/* 803DEB3C  3C 80 80 64 */	lis r4, lit_474@ha /* 0x806430E4@ha */
/* 803DEB40  3C 60 80 66 */	lis r3, category_table@ha /* 0x8065BDC0@ha */
/* 803DEB44  C0 04 30 E4 */	lfs f0, lit_474@l(r4)  /* 0x806430E4@l */
/* 803DEB48  38 63 BD C0 */	addi r3, r3, category_table@l /* 0x8065BDC0@l */
/* 803DEB4C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803DEB50  FC 00 00 1E */	fctiwz f0, f0
/* 803DEB54  D8 01 00 08 */	stfd f0, 8(r1)
/* 803DEB58  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803DEB5C  54 00 08 3C */	slwi r0, r0, 1
/* 803DEB60  7C 63 02 2E */	lhzx r3, r3, r0
/* 803DEB64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DEB68  7C 08 03 A6 */	mtlr r0
/* 803DEB6C  38 21 00 10 */	addi r1, r1, 0x10
/* 803DEB70  4E 80 00 20 */	blr 
