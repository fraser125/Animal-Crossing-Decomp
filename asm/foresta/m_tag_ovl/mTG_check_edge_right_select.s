lbl_805EFC24:
/* 805EFC24  3C A0 80 65 */	lis r5, lit_655@ha /* 0x8064B84C@ha */
/* 805EFC28  3C E0 80 65 */	lis r7, lit_654@ha /* 0x8064B848@ha */
/* 805EFC2C  38 C5 B8 4C */	addi r6, r5, lit_655@l /* 0x8064B84C@l */
/* 805EFC30  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 805EFC34  C0 26 00 00 */	lfs f1, 0(r6)
/* 805EFC38  3C A0 80 65 */	lis r5, lit_663@ha /* 0x8064B850@ha */
/* 805EFC3C  38 C5 B8 50 */	addi r6, r5, lit_663@l /* 0x8064B850@l */
/* 805EFC40  C0 87 B8 48 */	lfs f4, lit_654@l(r7)  /* 0x8064B848@l */
/* 805EFC44  EC 01 00 32 */	fmuls f0, f1, f0
/* 805EFC48  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 805EFC4C  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 805EFC50  3C A0 80 65 */	lis r5, data_8064B814@ha /* 0x8064B814@ha */
/* 805EFC54  C0 26 00 00 */	lfs f1, 0(r6)
/* 805EFC58  38 60 00 00 */	li r3, 0
/* 805EFC5C  EC 84 00 32 */	fmuls f4, f4, f0
/* 805EFC60  C0 05 B8 14 */	lfs f0, data_8064B814@l(r5)  /* 0x8064B814@l */
/* 805EFC64  EC 43 10 2A */	fadds f2, f3, f2
/* 805EFC68  EC 44 10 2A */	fadds f2, f4, f2
/* 805EFC6C  EC 22 08 28 */	fsubs f1, f2, f1
/* 805EFC70  D0 24 00 00 */	stfs f1, 0(r4)
/* 805EFC74  C0 24 00 00 */	lfs f1, 0(r4)
/* 805EFC78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EFC7C  4C 40 13 82 */	cror 2, 0, 2
/* 805EFC80  4C 82 00 20 */	bnelr 
/* 805EFC84  38 60 00 01 */	li r3, 1
/* 805EFC88  4E 80 00 20 */	blr 
