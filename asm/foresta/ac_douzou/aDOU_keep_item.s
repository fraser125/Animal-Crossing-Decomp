lbl_805AD948:
/* 805AD948  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805AD94C  7C 08 02 A6 */	mflr r0
/* 805AD950  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AD954  39 61 00 30 */	addi r11, r1, 0x30
/* 805AD958  4B AE D5 7D */	bl func_8009AED4
/* 805AD95C  7C 7D 1B 78 */	mr r29, r3
/* 805AD960  3B C0 00 00 */	li r30, 0
/* 805AD964  3B E0 00 00 */	li r31, 0
lbl_805AD968:
/* 805AD968  7F C3 F3 78 */	mr r3, r30
/* 805AD96C  4B FF FD B5 */	bl func_805AD720
/* 805AD970  2C 03 00 00 */	cmpwi r3, 0
/* 805AD974  41 82 00 60 */	beq lbl_805AD9D4
/* 805AD978  38 61 00 14 */	addi r3, r1, 0x14
/* 805AD97C  38 9D 00 28 */	addi r4, r29, 0x28
/* 805AD980  4B E0 D5 3D */	bl xyz_t_move
/* 805AD984  3C 80 80 6C */	lis r4, xpostbl@ha /* 0x806C4E24@ha */
/* 805AD988  3C 60 80 6C */	lis r3, zpostbl@ha /* 0x806C4E14@ha */
/* 805AD98C  38 A4 4E 24 */	addi r5, r4, xpostbl@l /* 0x806C4E24@l */
/* 805AD990  80 01 00 18 */	lwz r0, 0x18(r1)
/* 805AD994  38 83 4E 14 */	addi r4, r3, zpostbl@l /* 0x806C4E14@l */
/* 805AD998  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 805AD99C  7C 45 FC 2E */	lfsx f2, r5, r31
/* 805AD9A0  38 61 00 08 */	addi r3, r1, 8
/* 805AD9A4  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 805AD9A8  7C 04 FC 2E */	lfsx f0, r4, r31
/* 805AD9AC  EC 43 10 2A */	fadds f2, f3, f2
/* 805AD9B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AD9B4  EC 01 00 2A */	fadds f0, f1, f0
/* 805AD9B8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805AD9BC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805AD9C0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805AD9C4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805AD9C8  90 81 00 08 */	stw r4, 8(r1)
/* 805AD9CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AD9D0  4B FF FE D1 */	bl KeepItem
lbl_805AD9D4:
/* 805AD9D4  3B DE 00 01 */	addi r30, r30, 1
/* 805AD9D8  3B FF 00 04 */	addi r31, r31, 4
/* 805AD9DC  2C 1E 00 04 */	cmpwi r30, 4
/* 805AD9E0  41 80 FF 88 */	blt lbl_805AD968
/* 805AD9E4  39 61 00 30 */	addi r11, r1, 0x30
/* 805AD9E8  4B AE D5 39 */	bl func_8009AF20
/* 805AD9EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805AD9F0  7C 08 03 A6 */	mtlr r0
/* 805AD9F4  38 21 00 30 */	addi r1, r1, 0x30
/* 805AD9F8  4E 80 00 20 */	blr 
