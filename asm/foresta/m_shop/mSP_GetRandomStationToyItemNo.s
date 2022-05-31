lbl_803EBD00:
/* 803EBD00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EBD04  7C 08 02 A6 */	mflr r0
/* 803EBD08  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EBD0C  4B C7 0F E9 */	bl fqrand
/* 803EBD10  3C 60 80 64 */	lis r3, lit_1985@ha /* 0x806431DC@ha */
/* 803EBD14  38 80 00 00 */	li r4, 0
/* 803EBD18  C0 03 31 DC */	lfs f0, lit_1985@l(r3)  /* 0x806431DC@l */
/* 803EBD1C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803EBD20  FC 00 00 1E */	fctiwz f0, f0
/* 803EBD24  D8 01 00 08 */	stfd f0, 8(r1)
/* 803EBD28  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803EBD2C  38 63 04 2A */	addi r3, r3, 0x42a
/* 803EBD30  4B FF BA A5 */	bl mRmTp_FtrIdx2FtrItemNo
/* 803EBD34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EBD38  7C 08 03 A6 */	mtlr r0
/* 803EBD3C  38 21 00 10 */	addi r1, r1, 0x10
/* 803EBD40  4E 80 00 20 */	blr 
