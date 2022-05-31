lbl_8059A5E4:
/* 8059A5E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059A5E8  7C 08 02 A6 */	mflr r0
/* 8059A5EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059A5F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059A5F4  7C 7F 1B 78 */	mr r31, r3
/* 8059A5F8  80 03 02 3C */	lwz r0, 0x23c(r3)
/* 8059A5FC  2C 00 00 00 */	cmpwi r0, 0
/* 8059A600  40 82 00 40 */	bne lbl_8059A640
/* 8059A604  4B AC 26 F1 */	bl fqrand
/* 8059A608  3C 60 80 65 */	lis r3, lit_606@ha /* 0x80649F94@ha */
/* 8059A60C  3C 80 80 65 */	lis r4, lit_490@ha /* 0x80649F68@ha */
/* 8059A610  38 A3 9F 94 */	addi r5, r3, lit_606@l /* 0x80649F94@l */
/* 8059A614  C0 44 9F 68 */	lfs f2, lit_490@l(r4)  /* 0x80649F68@l */
/* 8059A618  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059A61C  3C 60 80 65 */	lis r3, lit_427@ha /* 0x80649F50@ha */
/* 8059A620  EC 20 00 72 */	fmuls f1, f0, f1
/* 8059A624  C0 03 9F 50 */	lfs f0, lit_427@l(r3)  /* 0x80649F50@l */
/* 8059A628  EC 22 08 2A */	fadds f1, f2, f1
/* 8059A62C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059A630  FC 00 00 1E */	fctiwz f0, f0
/* 8059A634  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059A638  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8059A63C  90 1F 02 3C */	stw r0, 0x23c(r31)
lbl_8059A640:
/* 8059A640  3C 80 80 65 */	lis r4, lit_607@ha /* 0x80649F98@ha */
/* 8059A644  3C 60 80 65 */	lis r3, lit_608@ha /* 0x80649F9C@ha */
/* 8059A648  C0 24 9F 98 */	lfs f1, lit_607@l(r4)  /* 0x80649F98@l */
/* 8059A64C  C0 03 9F 9C */	lfs f0, lit_608@l(r3)  /* 0x80649F9C@l */
/* 8059A650  D0 3F 01 EC */	stfs f1, 0x1ec(r31)
/* 8059A654  D0 1F 01 E8 */	stfs f0, 0x1e8(r31)
/* 8059A658  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059A65C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059A660  7C 08 03 A6 */	mtlr r0
/* 8059A664  38 21 00 20 */	addi r1, r1, 0x20
/* 8059A668  4E 80 00 20 */	blr 
