lbl_803EDDDC:
/* 803EDDDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EDDE0  7C 08 02 A6 */	mflr r0
/* 803EDDE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EDDE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803EDDEC  7C 7F 1B 78 */	mr r31, r3
/* 803EDDF0  4B C6 EF 05 */	bl fqrand
/* 803EDDF4  3C 60 80 64 */	lis r3, data_806431F4@ha /* 0x806431F4@ha */
/* 803EDDF8  C0 03 31 F4 */	lfs f0, data_806431F4@l(r3)  /* 0x806431F4@l */
/* 803EDDFC  EC 00 00 72 */	fmuls f0, f0, f1
/* 803EDE00  FC 00 00 1E */	fctiwz f0, f0
/* 803EDE04  D8 01 00 08 */	stfd f0, 8(r1)
/* 803EDE08  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803EDE0C  60 00 28 00 */	ori r0, r0, 0x2800
/* 803EDE10  B0 1F 00 00 */	sth r0, 0(r31)
/* 803EDE14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EDE18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803EDE1C  7C 08 03 A6 */	mtlr r0
/* 803EDE20  38 21 00 20 */	addi r1, r1, 0x20
/* 803EDE24  4E 80 00 20 */	blr 
