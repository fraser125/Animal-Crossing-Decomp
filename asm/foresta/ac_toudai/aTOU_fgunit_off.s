lbl_805BEAD4:
/* 805BEAD4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805BEAD8  7C 08 02 A6 */	mflr r0
/* 805BEADC  90 01 00 44 */	stw r0, 0x44(r1)
/* 805BEAE0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805BEAE4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805BEAE8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805BEAEC  7C 64 1B 78 */	mr r4, r3
/* 805BEAF0  38 61 00 14 */	addi r3, r1, 0x14
/* 805BEAF4  38 84 00 0C */	addi r4, r4, 0xc
/* 805BEAF8  4B DF C3 C5 */	bl xyz_t_move
/* 805BEAFC  3C 80 80 65 */	lis r4, data_8064ABC4@ha /* 0x8064ABC4@ha */
/* 805BEB00  3C 60 80 65 */	lis r3, lit_478@ha /* 0x8064ABC8@ha */
/* 805BEB04  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 805BEB08  3B E0 00 00 */	li r31, 0
/* 805BEB0C  C3 E4 AB C4 */	lfs f31, data_8064ABC4@l(r4)  /* 0x8064ABC4@l */
/* 805BEB10  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 805BEB14  C0 03 AB C8 */	lfs f0, lit_478@l(r3)  /* 0x8064ABC8@l */
/* 805BEB18  EC 42 F8 28 */	fsubs f2, f2, f31
/* 805BEB1C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805BEB20  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805BEB24  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_805BEB28:
/* 805BEB28  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 805BEB2C  38 81 00 08 */	addi r4, r1, 8
/* 805BEB30  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 805BEB34  38 60 00 00 */	li r3, 0
/* 805BEB38  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805BEB3C  38 A0 00 01 */	li r5, 1
/* 805BEB40  90 E1 00 08 */	stw r7, 8(r1)
/* 805BEB44  90 C1 00 0C */	stw r6, 0xc(r1)
/* 805BEB48  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BEB4C  4B DE 8C E5 */	bl mFI_SetFG_common
/* 805BEB50  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805BEB54  3B FF 00 01 */	addi r31, r31, 1
/* 805BEB58  2C 1F 00 02 */	cmpwi r31, 2
/* 805BEB5C  EC 00 F8 2A */	fadds f0, f0, f31
/* 805BEB60  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805BEB64  41 80 FF C4 */	blt lbl_805BEB28
/* 805BEB68  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805BEB6C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805BEB70  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805BEB74  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805BEB78  7C 08 03 A6 */	mtlr r0
/* 805BEB7C  38 21 00 40 */	addi r1, r1, 0x40
/* 805BEB80  4E 80 00 20 */	blr 
