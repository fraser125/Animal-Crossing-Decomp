lbl_805E1C84:
/* 805E1C84  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E1C88  7C 08 02 A6 */	mflr r0
/* 805E1C8C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E1C90  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805E1C94  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805E1C98  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805E1C9C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805E1CA0  39 61 00 20 */	addi r11, r1, 0x20
/* 805E1CA4  4B AB 92 2D */	bl func_8009AED0
/* 805E1CA8  7C 7D 1B 78 */	mr r29, r3
/* 805E1CAC  3B C0 00 00 */	li r30, 0
/* 805E1CB0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E1CB4  83 E3 09 88 */	lwz r31, 0x988(r3)
/* 805E1CB8  3B 9F 03 FC */	addi r28, r31, 0x3fc
lbl_805E1CBC:
/* 805E1CBC  80 7C 00 00 */	lwz r3, 0(r28)
/* 805E1CC0  2C 03 00 00 */	cmpwi r3, 0
/* 805E1CC4  41 82 00 78 */	beq lbl_805E1D3C
/* 805E1CC8  38 03 FF FF */	addi r0, r3, -1
/* 805E1CCC  90 1C 00 00 */	stw r0, 0(r28)
/* 805E1CD0  80 1C 00 00 */	lwz r0, 0(r28)
/* 805E1CD4  2C 00 00 14 */	cmpwi r0, 0x14
/* 805E1CD8  40 81 00 24 */	ble lbl_805E1CFC
/* 805E1CDC  3C 60 80 65 */	lis r3, lit_770@ha /* 0x8064B40C@ha */
/* 805E1CE0  3C 80 80 65 */	lis r4, lit_771@ha /* 0x8064B410@ha */
/* 805E1CE4  38 A3 B4 0C */	addi r5, r3, lit_770@l /* 0x8064B40C@l */
/* 805E1CE8  C0 44 B4 10 */	lfs f2, lit_771@l(r4)  /* 0x8064B410@l */
/* 805E1CEC  C0 25 00 00 */	lfs f1, 0(r5)
/* 805E1CF0  38 7C 00 10 */	addi r3, r28, 0x10
/* 805E1CF4  4B DD 8F 75 */	bl chase_f
/* 805E1CF8  48 00 00 20 */	b lbl_805E1D18
lbl_805E1CFC:
/* 805E1CFC  3C 60 80 65 */	lis r3, lit_744@ha /* 0x8064B400@ha */
/* 805E1D00  3C 80 80 65 */	lis r4, lit_772@ha /* 0x8064B414@ha */
/* 805E1D04  38 A3 B4 00 */	addi r5, r3, lit_744@l /* 0x8064B400@l */
/* 805E1D08  C0 44 B4 14 */	lfs f2, lit_772@l(r4)  /* 0x8064B414@l */
/* 805E1D0C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805E1D10  38 7C 00 10 */	addi r3, r28, 0x10
/* 805E1D14  4B DD 8F 55 */	bl chase_f
lbl_805E1D18:
/* 805E1D18  3C 60 80 65 */	lis r3, lit_773@ha /* 0x8064B418@ha */
/* 805E1D1C  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 805E1D20  C0 03 B4 18 */	lfs f0, lit_773@l(r3)  /* 0x8064B418@l */
/* 805E1D24  EC 01 00 2A */	fadds f0, f1, f0
/* 805E1D28  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 805E1D2C  C0 3C 00 08 */	lfs f1, 8(r28)
/* 805E1D30  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 805E1D34  EC 01 00 2A */	fadds f0, f1, f0
/* 805E1D38  D0 1C 00 08 */	stfs f0, 8(r28)
lbl_805E1D3C:
/* 805E1D3C  3B DE 00 01 */	addi r30, r30, 1
/* 805E1D40  3B 9C 00 18 */	addi r28, r28, 0x18
/* 805E1D44  2C 1E 00 14 */	cmpwi r30, 0x14
/* 805E1D48  41 80 FF 74 */	blt lbl_805E1CBC
/* 805E1D4C  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 805E1D50  A8 03 00 04 */	lha r0, 4(r3)
/* 805E1D54  2C 00 00 02 */	cmpwi r0, 2
/* 805E1D58  40 82 00 D4 */	bne lbl_805E1E2C
/* 805E1D5C  C3 DF 00 10 */	lfs f30, 0x10(r31)
/* 805E1D60  3C 60 80 65 */	lis r3, lit_744@ha /* 0x8064B400@ha */
/* 805E1D64  38 80 00 14 */	li r4, 0x14
/* 805E1D68  C0 03 B4 00 */	lfs f0, lit_744@l(r3)  /* 0x8064B400@l */
/* 805E1D6C  FC 20 F0 1E */	fctiwz f1, f30
/* 805E1D70  38 00 00 1E */	li r0, 0x1e
/* 805E1D74  D8 21 00 08 */	stfd f1, 8(r1)
/* 805E1D78  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 805E1D7C  7C 65 23 D6 */	divw r3, r5, r4
/* 805E1D80  7C 63 21 D6 */	mullw r3, r3, r4
/* 805E1D84  7C 63 28 50 */	subf r3, r3, r5
/* 805E1D88  1C 63 00 18 */	mulli r3, r3, 0x18
/* 805E1D8C  3B A3 03 FC */	addi r29, r3, 0x3fc
/* 805E1D90  7F BF EA 14 */	add r29, r31, r29
/* 805E1D94  90 1D 00 00 */	stw r0, 0(r29)
/* 805E1D98  1C 05 E6 67 */	mulli r0, r5, -6553
/* 805E1D9C  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 805E1DA0  7C 1C 07 34 */	extsh r28, r0
/* 805E1DA4  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 805E1DA8  4B A7 AF 85 */	bl fqrand2
/* 805E1DAC  3C 80 80 65 */	lis r4, lit_775@ha /* 0x8064B420@ha */
/* 805E1DB0  7F 83 E3 78 */	mr r3, r28
/* 805E1DB4  C0 04 B4 20 */	lfs f0, lit_775@l(r4)  /* 0x8064B420@l */
/* 805E1DB8  EF E0 00 72 */	fmuls f31, f0, f1
/* 805E1DBC  4B DD 8D 35 */	bl sin_s
/* 805E1DC0  3C 60 80 65 */	lis r3, lit_774@ha /* 0x8064B41C@ha */
/* 805E1DC4  C0 03 B4 1C */	lfs f0, lit_774@l(r3)  /* 0x8064B41C@l */
/* 805E1DC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 805E1DCC  EC 00 F8 2A */	fadds f0, f0, f31
/* 805E1DD0  D0 1D 00 04 */	stfs f0, 4(r29)
/* 805E1DD4  4B A7 AF 59 */	bl fqrand2
/* 805E1DD8  3C 80 80 65 */	lis r4, lit_775@ha /* 0x8064B420@ha */
/* 805E1DDC  7F 83 E3 78 */	mr r3, r28
/* 805E1DE0  C0 04 B4 20 */	lfs f0, lit_775@l(r4)  /* 0x8064B420@l */
/* 805E1DE4  EF E0 00 72 */	fmuls f31, f0, f1
/* 805E1DE8  4B DD 8C B5 */	bl cos_s
/* 805E1DEC  3C 60 80 65 */	lis r3, lit_774@ha /* 0x8064B41C@ha */
/* 805E1DF0  C0 03 B4 1C */	lfs f0, lit_774@l(r3)  /* 0x8064B41C@l */
/* 805E1DF4  EC 00 00 72 */	fmuls f0, f0, f1
/* 805E1DF8  EC 00 F8 2A */	fadds f0, f0, f31
/* 805E1DFC  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 805E1E00  4B A7 AF 2D */	bl fqrand2
/* 805E1E04  3C 60 80 65 */	lis r3, lit_776@ha /* 0x8064B424@ha */
/* 805E1E08  3C 80 80 65 */	lis r4, lit_775@ha /* 0x8064B420@ha */
/* 805E1E0C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E1E10  C0 43 B4 24 */	lfs f2, lit_776@l(r3)  /* 0x8064B424@l */
/* 805E1E14  C0 64 B4 20 */	lfs f3, lit_775@l(r4)  /* 0x8064B420@l */
/* 805E1E18  EC 02 00 24 */	fdivs f0, f2, f0
/* 805E1E1C  EC 23 00 72 */	fmuls f1, f3, f1
/* 805E1E20  EC 00 07 B2 */	fmuls f0, f0, f30
/* 805E1E24  EC 00 08 2A */	fadds f0, f0, f1
/* 805E1E28  D0 1D 00 08 */	stfs f0, 8(r29)
lbl_805E1E2C:
/* 805E1E2C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805E1E30  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805E1E34  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805E1E38  39 61 00 20 */	addi r11, r1, 0x20
/* 805E1E3C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805E1E40  4B AB 90 DD */	bl func_8009AF1C
/* 805E1E44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E1E48  7C 08 03 A6 */	mtlr r0
/* 805E1E4C  38 21 00 40 */	addi r1, r1, 0x40
/* 805E1E50  4E 80 00 20 */	blr 
