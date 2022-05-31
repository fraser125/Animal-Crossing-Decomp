lbl_8052F284:
/* 8052F284  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8052F288  7C 08 02 A6 */	mflr r0
/* 8052F28C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8052F290  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8052F294  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8052F298  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8052F29C  7C 64 1B 78 */	mr r4, r3
/* 8052F2A0  38 61 00 14 */	addi r3, r1, 0x14
/* 8052F2A4  4B E8 BC 19 */	bl xyz_t_move
/* 8052F2A8  3C 60 80 65 */	lis r3, lit_1583@ha /* 0x806492B4@ha */
/* 8052F2AC  3B E0 00 00 */	li r31, 0
/* 8052F2B0  C3 E3 92 B4 */	lfs f31, lit_1583@l(r3)  /* 0x806492B4@l */
lbl_8052F2B4:
/* 8052F2B4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8052F2B8  38 61 00 08 */	addi r3, r1, 8
/* 8052F2BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052F2C0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8052F2C4  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8052F2C8  90 01 00 08 */	stw r0, 8(r1)
/* 8052F2CC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8052F2D0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8052F2D4  90 81 00 0C */	stw r4, 0xc(r1)
/* 8052F2D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8052F2DC  4B E7 81 55 */	bl mFI_GetUnitFG
/* 8052F2E0  28 03 00 00 */	cmplwi r3, 0
/* 8052F2E4  41 82 00 38 */	beq lbl_8052F31C
/* 8052F2E8  A0 03 00 00 */	lhz r0, 0(r3)
/* 8052F2EC  28 00 F0 05 */	cmplwi r0, 0xf005
/* 8052F2F0  41 80 00 0C */	blt lbl_8052F2FC
/* 8052F2F4  28 00 F0 F3 */	cmplwi r0, 0xf0f3
/* 8052F2F8  41 80 00 30 */	blt lbl_8052F328
lbl_8052F2FC:
/* 8052F2FC  28 00 50 00 */	cmplwi r0, 0x5000
/* 8052F300  41 80 00 0C */	blt lbl_8052F30C
/* 8052F304  28 00 50 EE */	cmplwi r0, 0x50ee
/* 8052F308  41 80 00 20 */	blt lbl_8052F328
lbl_8052F30C:
/* 8052F30C  28 00 58 51 */	cmplwi r0, 0x5851
/* 8052F310  41 82 00 18 */	beq lbl_8052F328
/* 8052F314  28 00 F1 24 */	cmplwi r0, 0xf124
/* 8052F318  41 82 00 10 */	beq lbl_8052F328
lbl_8052F31C:
/* 8052F31C  3B FF 00 01 */	addi r31, r31, 1
/* 8052F320  2C 1F 00 02 */	cmpwi r31, 2
/* 8052F324  41 80 FF 90 */	blt lbl_8052F2B4
lbl_8052F328:
/* 8052F328  3C 60 80 6A */	lis r3, ret_code@ha /* 0x806A20A8@ha */
/* 8052F32C  38 63 20 A8 */	addi r3, r3, ret_code@l /* 0x806A20A8@l */
/* 8052F330  7C 63 F8 AE */	lbzx r3, r3, r31
/* 8052F334  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8052F338  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052F33C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8052F340  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8052F344  7C 08 03 A6 */	mtlr r0
/* 8052F348  38 21 00 40 */	addi r1, r1, 0x40
/* 8052F34C  4E 80 00 20 */	blr 
