lbl_80447990:
/* 80447990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80447994  7C 08 02 A6 */	mflr r0
/* 80447998  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044799C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804479A0  7C 7F 1B 78 */	mr r31, r3
/* 804479A4  4B C1 53 51 */	bl fqrand
/* 804479A8  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 804479AC  3C 60 80 44 */	lis r3, mfish_gupi_normal@ha /* 0x804479DC@ha */
/* 804479B0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804479B4  38 03 79 DC */	addi r0, r3, mfish_gupi_normal@l /* 0x804479DC@l */
/* 804479B8  EC 22 00 72 */	fmuls f1, f2, f1
/* 804479BC  EC 00 08 2A */	fadds f0, f0, f1
/* 804479C0  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 804479C4  90 1F 00 34 */	stw r0, 0x34(r31)
/* 804479C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804479CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804479D0  7C 08 03 A6 */	mtlr r0
/* 804479D4  38 21 00 10 */	addi r1, r1, 0x10
/* 804479D8  4E 80 00 20 */	blr 
