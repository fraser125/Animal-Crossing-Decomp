lbl_80603EC4:
/* 80603EC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80603EC8  7C 08 02 A6 */	mflr r0
/* 80603ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80603ED0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80603ED4  7C 7F 1B 78 */	mr r31, r3
/* 80603ED8  C0 23 00 00 */	lfs f1, 0(r3)
/* 80603EDC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80603EE0  EC 01 00 2A */	fadds f0, f1, f0
/* 80603EE4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80603EE8  C0 23 00 04 */	lfs f1, 4(r3)
/* 80603EEC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80603EF0  EC 01 00 2A */	fadds f0, f1, f0
/* 80603EF4  D0 03 00 04 */	stfs f0, 4(r3)
/* 80603EF8  C0 23 00 08 */	lfs f1, 8(r3)
/* 80603EFC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80603F00  EC 01 00 2A */	fadds f0, f1, f0
/* 80603F04  D0 03 00 08 */	stfs f0, 8(r3)
/* 80603F08  A8 83 00 28 */	lha r4, 0x28(r3)
/* 80603F0C  A8 03 00 2A */	lha r0, 0x2a(r3)
/* 80603F10  7C 04 02 14 */	add r0, r4, r0
/* 80603F14  B0 03 00 28 */	sth r0, 0x28(r3)
/* 80603F18  4B FF FF 95 */	bl aWeatherSakura_SetWind2Sakura
/* 80603F1C  7F E3 FB 78 */	mr r3, r31
/* 80603F20  4B FF FE 95 */	bl aWeatherSakura_CheckSakuraScroll
/* 80603F24  A8 7F 00 22 */	lha r3, 0x22(r31)
/* 80603F28  38 03 02 00 */	addi r0, r3, 0x200
/* 80603F2C  B0 1F 00 22 */	sth r0, 0x22(r31)
/* 80603F30  A8 7F 00 24 */	lha r3, 0x24(r31)
/* 80603F34  38 03 08 DC */	addi r0, r3, 0x8dc
/* 80603F38  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 80603F3C  A8 7F 00 26 */	lha r3, 0x26(r31)
/* 80603F40  38 03 04 74 */	addi r0, r3, 0x474
/* 80603F44  B0 1F 00 26 */	sth r0, 0x26(r31)
/* 80603F48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80603F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80603F50  7C 08 03 A6 */	mtlr r0
/* 80603F54  38 21 00 10 */	addi r1, r1, 0x10
/* 80603F58  4E 80 00 20 */	blr 
