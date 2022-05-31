lbl_805D7F60:
/* 805D7F60  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805D7F64  7C 08 02 A6 */	mflr r0
/* 805D7F68  90 01 00 44 */	stw r0, 0x44(r1)
/* 805D7F6C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805D7F70  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805D7F74  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805D7F78  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805D7F7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805D7F80  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805D7F84  FF C0 08 90 */	fmr f30, f1
/* 805D7F88  FF E0 10 90 */	fmr f31, f2
/* 805D7F8C  7C BF 2B 78 */	mr r31, r5
/* 805D7F90  81 83 09 50 */	lwz r12, 0x950(r3)
/* 805D7F94  7C 83 23 78 */	mr r3, r4
/* 805D7F98  7D 89 03 A6 */	mtctr r12
/* 805D7F9C  4E 80 04 21 */	bctrl 
/* 805D7FA0  3C A0 80 65 */	lis r5, lit_525@ha /* 0x8064B204@ha */
/* 805D7FA4  3C 80 80 65 */	lis r4, lit_526@ha /* 0x8064B208@ha */
/* 805D7FA8  C0 25 B2 04 */	lfs f1, lit_525@l(r5)  /* 0x8064B204@l */
/* 805D7FAC  3C 60 80 65 */	lis r3, lit_439@ha /* 0x8064B1D8@ha */
/* 805D7FB0  C0 04 B2 08 */	lfs f0, lit_526@l(r4)  /* 0x8064B208@l */
/* 805D7FB4  38 00 00 01 */	li r0, 1
/* 805D7FB8  C0 63 B1 D8 */	lfs f3, lit_439@l(r3)  /* 0x8064B1D8@l */
/* 805D7FBC  EC 21 F0 2A */	fadds f1, f1, f30
/* 805D7FC0  90 01 00 08 */	stw r0, 8(r1)
/* 805D7FC4  38 00 00 00 */	li r0, 0
/* 805D7FC8  3C 80 80 6D */	lis r4, mEE_str_table@ha /* 0x806CC86C@ha */
/* 805D7FCC  FC 80 18 90 */	fmr f4, f3
/* 805D7FD0  EC 40 F8 28 */	fsubs f2, f0, f31
/* 805D7FD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805D7FD8  38 84 C8 6C */	addi r4, r4, mEE_str_table@l /* 0x806CC86C@l */
/* 805D7FDC  7F E3 FB 78 */	mr r3, r31
/* 805D7FE0  38 A0 00 0B */	li r5, 0xb
/* 805D7FE4  38 C0 00 50 */	li r6, 0x50
/* 805D7FE8  38 E0 00 50 */	li r7, 0x50
/* 805D7FEC  39 00 00 E6 */	li r8, 0xe6
/* 805D7FF0  39 20 00 FF */	li r9, 0xff
/* 805D7FF4  39 40 00 00 */	li r10, 0
/* 805D7FF8  4B DD 80 B1 */	bl mFont_SetLineStrings
/* 805D7FFC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805D8000  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805D8004  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805D8008  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805D800C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805D8010  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805D8014  7C 08 03 A6 */	mtlr r0
/* 805D8018  38 21 00 40 */	addi r1, r1, 0x40
/* 805D801C  4E 80 00 20 */	blr 
