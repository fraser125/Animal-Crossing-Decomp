lbl_805EF280:
/* 805EF280  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EF284  7C 08 02 A6 */	mflr r0
/* 805EF288  3C 60 80 6D */	lis r3, move_data@ha /* 0x806CF804@ha */
/* 805EF28C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EF290  38 63 F8 04 */	addi r3, r3, move_data@l /* 0x806CF804@l */
/* 805EF294  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805EF298  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805EF29C  7C 9E 23 78 */	mr r30, r4
/* 805EF2A0  A8 A4 00 34 */	lha r5, 0x34(r4)
/* 805EF2A4  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 805EF2A8  54 A4 26 F6 */	rlwinm r4, r5, 4, 0x1b, 0x1b
/* 805EF2AC  7C A0 16 70 */	srawi r0, r5, 2
/* 805EF2B0  7C A3 22 14 */	add r5, r3, r4
/* 805EF2B4  41 82 00 10 */	beq lbl_805EF2C4
/* 805EF2B8  3C 60 80 65 */	lis r3, lit_513@ha /* 0x8064B7B0@ha */
/* 805EF2BC  C0 83 B7 B0 */	lfs f4, lit_513@l(r3)  /* 0x8064B7B0@l */
/* 805EF2C0  48 00 00 0C */	b lbl_805EF2CC
lbl_805EF2C4:
/* 805EF2C4  3C 60 80 65 */	lis r3, lit_507@ha /* 0x8064B798@ha */
/* 805EF2C8  C0 83 B7 98 */	lfs f4, lit_507@l(r3)  /* 0x8064B798@l */
lbl_805EF2CC:
/* 805EF2CC  C0 45 00 04 */	lfs f2, 4(r5)
/* 805EF2D0  54 1F 10 3A */	slwi r31, r0, 2
/* 805EF2D4  C0 25 00 08 */	lfs f1, 8(r5)
/* 805EF2D8  7C 9E FA 14 */	add r4, r30, r31
/* 805EF2DC  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 805EF2E0  EC 42 01 32 */	fmuls f2, f2, f4
/* 805EF2E4  EC 61 01 32 */	fmuls f3, f1, f4
/* 805EF2E8  C0 25 00 00 */	lfs f1, 0(r5)
/* 805EF2EC  EC 80 01 32 */	fmuls f4, f0, f4
/* 805EF2F0  38 64 00 18 */	addi r3, r4, 0x18
/* 805EF2F4  38 84 00 20 */	addi r4, r4, 0x20
/* 805EF2F8  38 BE 00 36 */	addi r5, r30, 0x36
/* 805EF2FC  4B FF FE AD */	bl mSM_move_menu
/* 805EF300  2C 03 00 01 */	cmpwi r3, 1
/* 805EF304  40 82 00 0C */	bne lbl_805EF310
/* 805EF308  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805EF30C  90 1E 00 04 */	stw r0, 4(r30)
lbl_805EF310:
/* 805EF310  7C 9E FA 14 */	add r4, r30, r31
/* 805EF314  3C 00 43 30 */	lis r0, 0x4330
/* 805EF318  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 805EF31C  3C 60 80 65 */	lis r3, lit_458@ha /* 0x8064B78C@ha */
/* 805EF320  90 01 00 10 */	stw r0, 0x10(r1)
/* 805EF324  FC 00 00 1E */	fctiwz f0, f0
/* 805EF328  C8 23 B7 8C */	lfd f1, lit_458@l(r3)  /* 0x8064B78C@l */
/* 805EF32C  D8 01 00 08 */	stfd f0, 8(r1)
/* 805EF330  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805EF334  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805EF338  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EF33C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805EF340  EC 00 08 28 */	fsubs f0, f0, f1
/* 805EF344  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 805EF348  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EF34C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805EF350  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805EF354  7C 08 03 A6 */	mtlr r0
/* 805EF358  38 21 00 20 */	addi r1, r1, 0x20
/* 805EF35C  4E 80 00 20 */	blr 
