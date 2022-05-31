lbl_8061E934:
/* 8061E934  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061E938  7C 08 02 A6 */	mflr r0
/* 8061E93C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061E940  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8061E944  7C 7F 1B 78 */	mr r31, r3
/* 8061E948  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8061E94C  7C 65 1B 78 */	mr r5, r3
/* 8061E950  38 9F 00 28 */	addi r4, r31, 0x28
/* 8061E954  4B D9 C5 F1 */	bl xyz_t_add
/* 8061E958  38 7F 00 10 */	addi r3, r31, 0x10
/* 8061E95C  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8061E960  7C 65 1B 78 */	mr r5, r3
/* 8061E964  4B D9 C5 E1 */	bl xyz_t_add
/* 8061E968  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 8061E96C  3C 00 43 30 */	lis r0, 0x4330
/* 8061E970  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 8061E974  3C A0 80 65 */	lis r5, lit_383@ha /* 0x8064CC08@ha */
/* 8061E978  80 84 00 00 */	lwz r4, 0(r4)
/* 8061E97C  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064CC14@ha */
/* 8061E980  3C C0 80 65 */	lis r6, lit_400@ha /* 0x8064CC1C@ha */
/* 8061E984  90 01 00 08 */	stw r0, 8(r1)
/* 8061E988  A8 84 1B 86 */	lha r4, 0x1b86(r4)
/* 8061E98C  C8 23 CC 14 */	lfd f1, lit_387@l(r3)  /* 0x8064CC14@l */
/* 8061E990  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8061E994  C0 45 CC 08 */	lfs f2, lit_383@l(r5)  /* 0x8064CC08@l */
/* 8061E998  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061E99C  C0 66 CC 1C */	lfs f3, lit_400@l(r6)  /* 0x8064CC1C@l */
/* 8061E9A0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8061E9A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061E9A8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8061E9AC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8061E9B0  EC 03 00 2A */	fadds f0, f3, f0
/* 8061E9B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8061E9B8  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8061E9BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061E9C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8061E9C4  7C 08 03 A6 */	mtlr r0
/* 8061E9C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8061E9CC  4E 80 00 20 */	blr 
