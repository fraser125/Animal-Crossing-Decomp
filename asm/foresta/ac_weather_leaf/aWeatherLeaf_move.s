lbl_8060458C:
/* 8060458C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80604590  7C 08 02 A6 */	mflr r0
/* 80604594  90 01 00 14 */	stw r0, 0x14(r1)
/* 80604598  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060459C  7C 7F 1B 78 */	mr r31, r3
/* 806045A0  C0 23 00 00 */	lfs f1, 0(r3)
/* 806045A4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806045A8  EC 01 00 2A */	fadds f0, f1, f0
/* 806045AC  D0 03 00 00 */	stfs f0, 0(r3)
/* 806045B0  C0 23 00 04 */	lfs f1, 4(r3)
/* 806045B4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 806045B8  EC 01 00 2A */	fadds f0, f1, f0
/* 806045BC  D0 03 00 04 */	stfs f0, 4(r3)
/* 806045C0  C0 23 00 08 */	lfs f1, 8(r3)
/* 806045C4  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 806045C8  EC 01 00 2A */	fadds f0, f1, f0
/* 806045CC  D0 03 00 08 */	stfs f0, 8(r3)
/* 806045D0  A8 83 00 28 */	lha r4, 0x28(r3)
/* 806045D4  A8 03 00 2A */	lha r0, 0x2a(r3)
/* 806045D8  7C 04 02 14 */	add r0, r4, r0
/* 806045DC  B0 03 00 28 */	sth r0, 0x28(r3)
/* 806045E0  4B FF FF 95 */	bl aWeatherLeaf_SetWind2Leaf
/* 806045E4  7F E3 FB 78 */	mr r3, r31
/* 806045E8  4B FF FE 95 */	bl aWeatherLeaf_CheckLeafScroll
/* 806045EC  A8 7F 00 24 */	lha r3, 0x24(r31)
/* 806045F0  38 03 08 DC */	addi r0, r3, 0x8dc
/* 806045F4  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 806045F8  A8 7F 00 26 */	lha r3, 0x26(r31)
/* 806045FC  38 03 04 74 */	addi r0, r3, 0x474
/* 80604600  B0 1F 00 26 */	sth r0, 0x26(r31)
/* 80604604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80604608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060460C  7C 08 03 A6 */	mtlr r0
/* 80604610  38 21 00 10 */	addi r1, r1, 0x10
/* 80604614  4E 80 00 20 */	blr 
