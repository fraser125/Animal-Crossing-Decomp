lbl_8050BDC4:
/* 8050BDC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050BDC8  7C 08 02 A6 */	mflr r0
/* 8050BDCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050BDD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050BDD4  7C 7F 1B 78 */	mr r31, r3
/* 8050BDD8  4B B5 0F 1D */	bl fqrand
/* 8050BDDC  3C 60 80 65 */	lis r3, lit_499@ha /* 0x80648E0C@ha */
/* 8050BDE0  3C 80 80 65 */	lis r4, lit_438@ha /* 0x80648DF8@ha */
/* 8050BDE4  38 A3 8E 0C */	addi r5, r3, lit_499@l /* 0x80648E0C@l */
/* 8050BDE8  C0 44 8D F8 */	lfs f2, lit_438@l(r4)  /* 0x80648DF8@l */
/* 8050BDEC  C0 65 00 00 */	lfs f3, 0(r5)
/* 8050BDF0  3C 60 80 65 */	lis r3, lit_658@ha /* 0x80648E3C@ha */
/* 8050BDF4  38 00 00 00 */	li r0, 0
/* 8050BDF8  C0 03 8E 3C */	lfs f0, lit_658@l(r3)  /* 0x80648E3C@l */
/* 8050BDFC  EC 23 00 72 */	fmuls f1, f3, f1
/* 8050BE00  EC 23 08 2A */	fadds f1, f3, f1
/* 8050BE04  D0 3F 01 80 */	stfs f1, 0x180(r31)
/* 8050BE08  D0 5F 01 84 */	stfs f2, 0x184(r31)
/* 8050BE0C  90 1F 01 88 */	stw r0, 0x188(r31)
/* 8050BE10  D0 5F 01 94 */	stfs f2, 0x194(r31)
/* 8050BE14  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 8050BE18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050BE1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050BE20  7C 08 03 A6 */	mtlr r0
/* 8050BE24  38 21 00 10 */	addi r1, r1, 0x10
/* 8050BE28  4E 80 00 20 */	blr 
