lbl_8060C350:
/* 8060C350  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8060C354  7C 08 02 A6 */	mflr r0
/* 8060C358  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060C35C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8060C360  7C 7F 1B 78 */	mr r31, r3
/* 8060C364  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8060C368  7C 65 1B 78 */	mr r5, r3
/* 8060C36C  38 9F 00 28 */	addi r4, r31, 0x28
/* 8060C370  4B DA EB D5 */	bl xyz_t_add
/* 8060C374  38 7F 00 10 */	addi r3, r31, 0x10
/* 8060C378  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8060C37C  7C 65 1B 78 */	mr r5, r3
/* 8060C380  4B DA EB C5 */	bl xyz_t_add
/* 8060C384  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8060C388  3C 00 43 30 */	lis r0, 0x4330
/* 8060C38C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8060C390  3C A0 80 65 */	lis r5, lit_383@ha /* 0x8064BFF8@ha */
/* 8060C394  80 84 00 00 */	lwz r4, 0(r4)
/* 8060C398  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064C004@ha */
/* 8060C39C  3C C0 80 65 */	lis r6, lit_400@ha /* 0x8064C00C@ha */
/* 8060C3A0  90 01 00 08 */	stw r0, 8(r1)
/* 8060C3A4  A8 84 1B 86 */	lha r4, 0x1b86(r4)
/* 8060C3A8  C8 23 C0 04 */	lfd f1, lit_387@l(r3)  /* 0x8064C004@l */
/* 8060C3AC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8060C3B0  C0 45 BF F8 */	lfs f2, lit_383@l(r5)  /* 0x8064BFF8@l */
/* 8060C3B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060C3B8  C0 66 C0 0C */	lfs f3, lit_400@l(r6)  /* 0x8064C00C@l */
/* 8060C3BC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8060C3C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8060C3C4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8060C3C8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8060C3CC  EC 03 00 2A */	fadds f0, f3, f0
/* 8060C3D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8060C3D4  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8060C3D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8060C3DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8060C3E0  7C 08 03 A6 */	mtlr r0
/* 8060C3E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8060C3E8  4E 80 00 20 */	blr 
