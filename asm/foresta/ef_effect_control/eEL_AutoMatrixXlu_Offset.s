lbl_804CE268:
/* 804CE268  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CE26C  7C 08 02 A6 */	mflr r0
/* 804CE270  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CE274  39 61 00 40 */	addi r11, r1, 0x40
/* 804CE278  4B BC CC 55 */	bl func_8009AECC
/* 804CE27C  7C 7D 1B 78 */	mr r29, r3
/* 804CE280  7C 9B 23 78 */	mr r27, r4
/* 804CE284  83 E3 00 00 */	lwz r31, 0(r3)
/* 804CE288  7C BE 2B 78 */	mr r30, r5
/* 804CE28C  7C DC 33 78 */	mr r28, r6
/* 804CE290  7F E3 FB 78 */	mr r3, r31
/* 804CE294  4B F1 6E C5 */	bl _texture_z_light_fog_prim_xlu
/* 804CE298  C0 3B 00 00 */	lfs f1, 0(r27)
/* 804CE29C  38 60 00 00 */	li r3, 0
/* 804CE2A0  C0 5B 00 04 */	lfs f2, 4(r27)
/* 804CE2A4  C0 7B 00 08 */	lfs f3, 8(r27)
/* 804CE2A8  4B F3 E0 59 */	bl Matrix_translate
/* 804CE2AC  38 7D 20 4C */	addi r3, r29, 0x204c
/* 804CE2B0  38 80 00 01 */	li r4, 1
/* 804CE2B4  4B F3 DF E5 */	bl Matrix_mult
/* 804CE2B8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804CE2BC  3C A0 43 30 */	lis r5, 0x4330
/* 804CE2C0  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 804CE2C4  3C 60 80 64 */	lis r3, lit_479@ha /* 0x8064629C@ha */
/* 804CE2C8  81 04 00 00 */	lwz r8, 0(r4)
/* 804CE2CC  38 E3 62 9C */	addi r7, r3, lit_479@l /* 0x8064629C@l */
/* 804CE2D0  90 A1 00 08 */	stw r5, 8(r1)
/* 804CE2D4  38 60 00 01 */	li r3, 1
/* 804CE2D8  A8 C8 19 04 */	lha r6, 0x1904(r8)
/* 804CE2DC  A8 88 19 06 */	lha r4, 0x1906(r8)
/* 804CE2E0  A8 08 19 08 */	lha r0, 0x1908(r8)
/* 804CE2E4  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 804CE2E8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 804CE2EC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804CE2F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CE2F4  C8 A7 00 00 */	lfd f5, 0(r7)
/* 804CE2F8  C8 01 00 08 */	lfd f0, 8(r1)
/* 804CE2FC  90 81 00 14 */	stw r4, 0x14(r1)
/* 804CE300  EC 20 28 28 */	fsubs f1, f0, f5
/* 804CE304  C0 5C 00 00 */	lfs f2, 0(r28)
/* 804CE308  90 A1 00 10 */	stw r5, 0x10(r1)
/* 804CE30C  C0 9C 00 04 */	lfs f4, 4(r28)
/* 804CE310  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804CE314  EC 22 08 2A */	fadds f1, f2, f1
/* 804CE318  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804CE31C  EC 40 28 28 */	fsubs f2, f0, f5
/* 804CE320  C0 7C 00 08 */	lfs f3, 8(r28)
/* 804CE324  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804CE328  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804CE32C  EC 44 10 2A */	fadds f2, f4, f2
/* 804CE330  EC 00 28 28 */	fsubs f0, f0, f5
/* 804CE334  EC 63 00 2A */	fadds f3, f3, f0
/* 804CE338  4B F3 DF C9 */	bl Matrix_translate
/* 804CE33C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 804CE340  3C 00 43 30 */	lis r0, 0x4330
/* 804CE344  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 804CE348  3C A0 80 64 */	lis r5, lit_506@ha /* 0x806462A8@ha */
/* 804CE34C  80 84 00 00 */	lwz r4, 0(r4)
/* 804CE350  3C 60 80 64 */	lis r3, lit_479@ha /* 0x8064629C@ha */
/* 804CE354  C8 23 62 9C */	lfd f1, lit_479@l(r3)  /* 0x8064629C@l */
/* 804CE358  3C C0 80 64 */	lis r6, lit_505@ha /* 0x806462A4@ha */
/* 804CE35C  A8 84 19 0A */	lha r4, 0x190a(r4)
/* 804CE360  38 60 00 01 */	li r3, 1
/* 804CE364  90 01 00 20 */	stw r0, 0x20(r1)
/* 804CE368  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804CE36C  C0 85 62 A8 */	lfs f4, lit_506@l(r5)  /* 0x806462A8@l */
/* 804CE370  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CE374  C0 A6 62 A4 */	lfs f5, lit_505@l(r6)  /* 0x806462A4@l */
/* 804CE378  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804CE37C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 804CE380  EC 60 08 28 */	fsubs f3, f0, f1
/* 804CE384  C0 3E 00 00 */	lfs f1, 0(r30)
/* 804CE388  C0 1E 00 08 */	lfs f0, 8(r30)
/* 804CE38C  EC 64 00 F2 */	fmuls f3, f4, f3
/* 804CE390  EC 65 18 2A */	fadds f3, f5, f3
/* 804CE394  EC 21 00 F2 */	fmuls f1, f1, f3
/* 804CE398  EC 42 00 F2 */	fmuls f2, f2, f3
/* 804CE39C  EC 60 00 F2 */	fmuls f3, f0, f3
/* 804CE3A0  4B F3 E0 4D */	bl Matrix_scale
/* 804CE3A4  83 DF 02 E0 */	lwz r30, 0x2e0(r31)
/* 804CE3A8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804CE3AC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804CE3B0  38 7E 00 08 */	addi r3, r30, 8
/* 804CE3B4  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 804CE3B8  90 1E 00 00 */	stw r0, 0(r30)
/* 804CE3BC  80 7D 00 00 */	lwz r3, 0(r29)
/* 804CE3C0  4B F3 F0 15 */	bl _Matrix_to_Mtx_new
/* 804CE3C4  90 7E 00 04 */	stw r3, 4(r30)
/* 804CE3C8  39 61 00 40 */	addi r11, r1, 0x40
/* 804CE3CC  4B BC CB 4D */	bl func_8009AF18
/* 804CE3D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804CE3D4  7C 08 03 A6 */	mtlr r0
/* 804CE3D8  38 21 00 40 */	addi r1, r1, 0x40
/* 804CE3DC  4E 80 00 20 */	blr 
