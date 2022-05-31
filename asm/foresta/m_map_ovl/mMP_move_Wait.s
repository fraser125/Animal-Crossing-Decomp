lbl_805E6850:
/* 805E6850  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E6854  7C 08 02 A6 */	mflr r0
/* 805E6858  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E685C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 805E6860  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 805E6864  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E6868  93 C1 00 08 */	stw r30, 8(r1)
/* 805E686C  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 805E6870  3C C0 80 65 */	lis r6, lit_668@ha /* 0x8064B54C@ha */
/* 805E6874  3C A0 80 65 */	lis r5, lit_669@ha /* 0x8064B550@ha */
/* 805E6878  3C 60 80 65 */	lis r3, lit_670@ha /* 0x8064B554@ha */
/* 805E687C  83 E7 09 B4 */	lwz r31, 0x9b4(r7)
/* 805E6880  38 E6 B5 4C */	addi r7, r6, lit_668@l /* 0x8064B54C@l */
/* 805E6884  38 C5 B5 50 */	addi r6, r5, lit_669@l /* 0x8064B550@l */
/* 805E6888  38 A3 B5 54 */	addi r5, r3, lit_670@l /* 0x8064B554@l */
/* 805E688C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 805E6890  7C 9E 23 78 */	mr r30, r4
/* 805E6894  C0 47 00 00 */	lfs f2, 0(r7)
/* 805E6898  38 7F 00 04 */	addi r3, r31, 4
/* 805E689C  C0 66 00 00 */	lfs f3, 0(r6)
/* 805E68A0  C0 85 00 00 */	lfs f4, 0(r5)
/* 805E68A4  4B DD 49 0D */	bl add_calc
/* 805E68A8  3C A0 80 65 */	lis r5, lit_668@ha /* 0x8064B54C@ha */
/* 805E68AC  3C 80 80 65 */	lis r4, lit_669@ha /* 0x8064B550@ha */
/* 805E68B0  3C 60 80 65 */	lis r3, lit_670@ha /* 0x8064B554@ha */
/* 805E68B4  FF E0 08 90 */	fmr f31, f1
/* 805E68B8  38 C5 B5 4C */	addi r6, r5, lit_668@l /* 0x8064B54C@l */
/* 805E68BC  38 A4 B5 50 */	addi r5, r4, lit_669@l /* 0x8064B550@l */
/* 805E68C0  38 83 B5 54 */	addi r4, r3, lit_670@l /* 0x8064B554@l */
/* 805E68C4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 805E68C8  C0 46 00 00 */	lfs f2, 0(r6)
/* 805E68CC  C0 65 00 00 */	lfs f3, 0(r5)
/* 805E68D0  38 7F 00 08 */	addi r3, r31, 8
/* 805E68D4  C0 84 00 00 */	lfs f4, 0(r4)
/* 805E68D8  4B DD 48 D9 */	bl add_calc
/* 805E68DC  FC 00 FA 10 */	fabs f0, f31
/* 805E68E0  3C 60 80 65 */	lis r3, lit_671@ha /* 0x8064B558@ha */
/* 805E68E4  C0 43 B5 58 */	lfs f2, lit_671@l(r3)  /* 0x8064B558@l */
/* 805E68E8  FC 00 00 18 */	frsp f0, f0
/* 805E68EC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 805E68F0  40 80 00 1C */	bge lbl_805E690C
/* 805E68F4  FC 00 0A 10 */	fabs f0, f1
/* 805E68F8  FC 00 00 18 */	frsp f0, f0
/* 805E68FC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 805E6900  40 80 00 0C */	bge lbl_805E690C
/* 805E6904  38 00 00 01 */	li r0, 1
/* 805E6908  90 1E 00 04 */	stw r0, 4(r30)
lbl_805E690C:
/* 805E690C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 805E6910  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E6914  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 805E6918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E691C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E6920  7C 08 03 A6 */	mtlr r0
/* 805E6924  38 21 00 20 */	addi r1, r1, 0x20
/* 805E6928  4E 80 00 20 */	blr 
