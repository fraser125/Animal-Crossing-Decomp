lbl_805CF940:
/* 805CF940  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805CF944  7C 08 02 A6 */	mflr r0
/* 805CF948  90 01 00 34 */	stw r0, 0x34(r1)
/* 805CF94C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 805CF950  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 805CF954  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805CF958  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805CF95C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CF960  7C 9E 23 78 */	mr r30, r4
/* 805CF964  83 E5 09 E8 */	lwz r31, 0x9e8(r5)
/* 805CF968  4B FF FE F9 */	bl mDI_control_diary_read
/* 805CF96C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 805CF970  88 1F 00 05 */	lbz r0, 5(r31)
/* 805CF974  38 83 00 02 */	addi r4, r3, 2
/* 805CF978  7C 00 20 51 */	subf. r0, r0, r4
/* 805CF97C  40 80 00 18 */	bge lbl_805CF994
/* 805CF980  3C 60 80 65 */	lis r3, lit_615@ha /* 0x8064B0B0@ha */
/* 805CF984  C0 03 B0 B0 */	lfs f0, lit_615@l(r3)  /* 0x8064B0B0@l */
/* 805CF988  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 805CF98C  98 9F 00 05 */	stb r4, 5(r31)
/* 805CF990  48 00 00 1C */	b lbl_805CF9AC
lbl_805CF994:
/* 805CF994  2C 00 00 00 */	cmpwi r0, 0
/* 805CF998  40 81 00 14 */	ble lbl_805CF9AC
/* 805CF99C  3C 60 80 65 */	lis r3, lit_615@ha /* 0x8064B0B0@ha */
/* 805CF9A0  C0 03 B0 B0 */	lfs f0, lit_615@l(r3)  /* 0x8064B0B0@l */
/* 805CF9A4  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 805CF9A8  98 9F 00 05 */	stb r4, 5(r31)
lbl_805CF9AC:
/* 805CF9AC  88 BF 00 05 */	lbz r5, 5(r31)
/* 805CF9B0  3C 00 43 30 */	lis r0, 0x4330
/* 805CF9B4  3C 80 80 65 */	lis r4, lit_626@ha /* 0x8064B0DC@ha */
/* 805CF9B8  90 01 00 08 */	stw r0, 8(r1)
/* 805CF9BC  38 A5 FF FE */	addi r5, r5, -2
/* 805CF9C0  C8 44 B0 DC */	lfd f2, lit_626@l(r4)  /* 0x8064B0DC@l */
/* 805CF9C4  54 A0 20 36 */	slwi r0, r5, 4
/* 805CF9C8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 805CF9CC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805CF9D0  3C 60 80 65 */	lis r3, lit_616@ha /* 0x8064B0B4@ha */
/* 805CF9D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805CF9D8  C8 01 00 08 */	lfd f0, 8(r1)
/* 805CF9DC  EF E0 10 28 */	fsubs f31, f0, f2
/* 805CF9E0  C0 03 B0 B4 */	lfs f0, lit_616@l(r3)  /* 0x8064B0B4@l */
/* 805CF9E4  EC 3F 08 28 */	fsubs f1, f31, f1
/* 805CF9E8  FC 20 0A 10 */	fabs f1, f1
/* 805CF9EC  FC 20 08 18 */	frsp f1, f1
/* 805CF9F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CF9F4  40 81 01 28 */	ble lbl_805CFB1C
/* 805CF9F8  A8 1F 00 32 */	lha r0, 0x32(r31)
/* 805CF9FC  2C 00 00 05 */	cmpwi r0, 5
/* 805CFA00  41 82 00 0C */	beq lbl_805CFA0C
/* 805CFA04  2C 00 00 06 */	cmpwi r0, 6
/* 805CFA08  40 82 00 14 */	bne lbl_805CFA1C
lbl_805CFA0C:
/* 805CFA0C  3C 60 80 65 */	lis r3, lit_617@ha /* 0x8064B0B8@ha */
/* 805CFA10  C0 03 B0 B8 */	lfs f0, lit_617@l(r3)  /* 0x8064B0B8@l */
/* 805CFA14  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 805CFA18  48 00 00 BC */	b lbl_805CFAD4
lbl_805CFA1C:
/* 805CFA1C  A8 7F 00 30 */	lha r3, 0x30(r31)
/* 805CFA20  2C 03 00 02 */	cmpwi r3, 2
/* 805CFA24  40 82 00 14 */	bne lbl_805CFA38
/* 805CFA28  3C 60 80 65 */	lis r3, lit_618@ha /* 0x8064B0BC@ha */
/* 805CFA2C  C0 03 B0 BC */	lfs f0, lit_618@l(r3)  /* 0x8064B0BC@l */
/* 805CFA30  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 805CFA34  48 00 00 A0 */	b lbl_805CFAD4
lbl_805CFA38:
/* 805CFA38  2C 03 00 03 */	cmpwi r3, 3
/* 805CFA3C  40 82 00 14 */	bne lbl_805CFA50
/* 805CFA40  3C 60 80 65 */	lis r3, lit_617@ha /* 0x8064B0B8@ha */
/* 805CFA44  C0 03 B0 B8 */	lfs f0, lit_617@l(r3)  /* 0x8064B0B8@l */
/* 805CFA48  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 805CFA4C  48 00 00 88 */	b lbl_805CFAD4
lbl_805CFA50:
/* 805CFA50  7C 00 07 35 */	extsh. r0, r0
/* 805CFA54  41 82 00 80 */	beq lbl_805CFAD4
/* 805CFA58  3C 60 80 65 */	lis r3, lit_619@ha /* 0x8064B0C0@ha */
/* 805CFA5C  C0 03 B0 C0 */	lfs f0, lit_619@l(r3)  /* 0x8064B0C0@l */
/* 805CFA60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CFA64  40 81 00 34 */	ble lbl_805CFA98
/* 805CFA68  3C 80 80 65 */	lis r4, lit_620@ha /* 0x8064B0C4@ha */
/* 805CFA6C  3C 60 80 65 */	lis r3, lit_621@ha /* 0x8064B0C8@ha */
/* 805CFA70  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 805CFA74  C0 24 B0 C4 */	lfs f1, lit_620@l(r4)  /* 0x8064B0C4@l */
/* 805CFA78  C0 03 B0 C8 */	lfs f0, lit_621@l(r3)  /* 0x8064B0C8@l */
/* 805CFA7C  EC 22 00 72 */	fmuls f1, f2, f1
/* 805CFA80  D0 3E 00 24 */	stfs f1, 0x24(r30)
/* 805CFA84  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805CFA88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CFA8C  40 81 00 48 */	ble lbl_805CFAD4
/* 805CFA90  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 805CFA94  48 00 00 40 */	b lbl_805CFAD4
lbl_805CFA98:
/* 805CFA98  3C 60 80 65 */	lis r3, lit_622@ha /* 0x8064B0CC@ha */
/* 805CFA9C  C0 03 B0 CC */	lfs f0, lit_622@l(r3)  /* 0x8064B0CC@l */
/* 805CFAA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CFAA4  40 80 00 30 */	bge lbl_805CFAD4
/* 805CFAA8  3C 80 80 65 */	lis r4, data_8064B0AC@ha /* 0x8064B0AC@ha */
/* 805CFAAC  3C 60 80 65 */	lis r3, lit_615@ha /* 0x8064B0B0@ha */
/* 805CFAB0  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 805CFAB4  C0 24 B0 AC */	lfs f1, data_8064B0AC@l(r4)  /* 0x8064B0AC@l */
/* 805CFAB8  C0 03 B0 B0 */	lfs f0, lit_615@l(r3)  /* 0x8064B0B0@l */
/* 805CFABC  EC 22 00 72 */	fmuls f1, f2, f1
/* 805CFAC0  D0 3E 00 24 */	stfs f1, 0x24(r30)
/* 805CFAC4  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 805CFAC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CFACC  40 80 00 08 */	bge lbl_805CFAD4
/* 805CFAD0  D0 1E 00 24 */	stfs f0, 0x24(r30)
lbl_805CFAD4:
/* 805CFAD4  FC 20 F8 90 */	fmr f1, f31
/* 805CFAD8  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 805CFADC  38 7E 00 1C */	addi r3, r30, 0x1c
/* 805CFAE0  4B DE B1 89 */	bl chase_f
/* 805CFAE4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805CFAE8  3C 60 80 65 */	lis r3, lit_623@ha /* 0x8064B0D0@ha */
/* 805CFAEC  EC 3F 00 28 */	fsubs f1, f31, f0
/* 805CFAF0  C0 03 B0 D0 */	lfs f0, lit_623@l(r3)  /* 0x8064B0D0@l */
/* 805CFAF4  FC 20 0A 10 */	fabs f1, f1
/* 805CFAF8  FC 20 08 18 */	frsp f1, f1
/* 805CFAFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CFB00  4C 40 13 82 */	cror 2, 0, 2
/* 805CFB04  40 82 00 34 */	bne lbl_805CFB38
/* 805CFB08  D3 FE 00 1C */	stfs f31, 0x1c(r30)
/* 805CFB0C  38 00 00 00 */	li r0, 0
/* 805CFB10  B0 1F 00 32 */	sth r0, 0x32(r31)
/* 805CFB14  B0 1F 00 30 */	sth r0, 0x30(r31)
/* 805CFB18  48 00 00 20 */	b lbl_805CFB38
lbl_805CFB1C:
/* 805CFB1C  3C 60 80 65 */	lis r3, lit_624@ha /* 0x8064B0D4@ha */
/* 805CFB20  D3 FE 00 1C */	stfs f31, 0x1c(r30)
/* 805CFB24  C0 03 B0 D4 */	lfs f0, lit_624@l(r3)  /* 0x8064B0D4@l */
/* 805CFB28  38 00 00 00 */	li r0, 0
/* 805CFB2C  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 805CFB30  B0 1F 00 32 */	sth r0, 0x32(r31)
/* 805CFB34  B0 1F 00 30 */	sth r0, 0x30(r31)
lbl_805CFB38:
/* 805CFB38  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 805CFB3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805CFB40  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 805CFB44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805CFB48  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805CFB4C  7C 08 03 A6 */	mtlr r0
/* 805CFB50  38 21 00 30 */	addi r1, r1, 0x30
/* 805CFB54  4E 80 00 20 */	blr 
