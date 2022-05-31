lbl_803DEB74:
/* 803DEB74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DEB78  7C 08 02 A6 */	mflr r0
/* 803DEB7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DEB80  4B C7 E1 75 */	bl fqrand
/* 803DEB84  3C 60 80 64 */	lis r3, lit_480@ha /* 0x806430E8@ha */
/* 803DEB88  C0 03 30 E8 */	lfs f0, lit_480@l(r3)  /* 0x806430E8@l */
/* 803DEB8C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803DEB90  FC 00 00 1E */	fctiwz f0, f0
/* 803DEB94  D8 01 00 08 */	stfd f0, 8(r1)
/* 803DEB98  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803DEB9C  38 03 29 02 */	addi r0, r3, 0x2902
/* 803DEBA0  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803DEBA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DEBA8  7C 08 03 A6 */	mtlr r0
/* 803DEBAC  38 21 00 10 */	addi r1, r1, 0x10
/* 803DEBB0  4E 80 00 20 */	blr 
