lbl_805FEA68:
/* 805FEA68  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805FEA6C  7C 08 02 A6 */	mflr r0
/* 805FEA70  90 01 00 54 */	stw r0, 0x54(r1)
/* 805FEA74  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805FEA78  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805FEA7C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805FEA80  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805FEA84  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 805FEA88  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 805FEA8C  39 61 00 20 */	addi r11, r1, 0x20
/* 805FEA90  4B A9 C4 45 */	bl func_8009AED4
/* 805FEA94  7C DE 33 78 */	mr r30, r6
/* 805FEA98  3C C0 80 65 */	lis r6, lit_5367@ha /* 0x8064B904@ha */
/* 805FEA9C  C3 FE 00 44 */	lfs f31, 0x44(r30)
/* 805FEAA0  3C E0 80 6D */	lis r7, data_806CF828@ha /* 0x806CF828@ha */
/* 805FEAA4  7C 9D 23 78 */	mr r29, r4
/* 805FEAA8  C0 06 B9 04 */	lfs f0, lit_5367@l(r6)  /* 0x8064B904@l */
/* 805FEAAC  FC 60 FA 10 */	fabs f3, f31
/* 805FEAB0  38 87 F8 28 */	addi r4, r7, data_806CF828@l /* 0x806CF828@l */
/* 805FEAB4  FC 60 18 18 */	frsp f3, f3
/* 805FEAB8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805FEABC  41 80 01 10 */	blt lbl_805FEBCC
/* 805FEAC0  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FEAC4  2C 00 00 0F */	cmpwi r0, 0xf
/* 805FEAC8  40 82 00 10 */	bne lbl_805FEAD8
/* 805FEACC  3B E4 19 AC */	addi r31, r4, 0x19ac
/* 805FEAD0  3B FF 00 04 */	addi r31, r31, 4
/* 805FEAD4  48 00 00 40 */	b lbl_805FEB14
lbl_805FEAD8:
/* 805FEAD8  2C 00 00 15 */	cmpwi r0, 0x15
/* 805FEADC  40 82 00 18 */	bne lbl_805FEAF4
/* 805FEAE0  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 805FEAE4  3B E4 19 B4 */	addi r31, r4, 0x19b4
/* 805FEAE8  54 00 10 3A */	slwi r0, r0, 2
/* 805FEAEC  7F FF 02 14 */	add r31, r31, r0
/* 805FEAF0  48 00 00 24 */	b lbl_805FEB14
lbl_805FEAF4:
/* 805FEAF4  2C 00 00 0A */	cmpwi r0, 0xa
/* 805FEAF8  40 82 00 18 */	bne lbl_805FEB10
/* 805FEAFC  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 805FEB00  3B E4 19 D4 */	addi r31, r4, 0x19d4
/* 805FEB04  54 00 10 3A */	slwi r0, r0, 2
/* 805FEB08  7F FF 02 14 */	add r31, r31, r0
/* 805FEB0C  48 00 00 08 */	b lbl_805FEB14
lbl_805FEB10:
/* 805FEB10  3B E4 19 AC */	addi r31, r4, 0x19ac
lbl_805FEB14:
/* 805FEB14  C0 BE 00 24 */	lfs f5, 0x24(r30)
/* 805FEB18  3C C0 80 65 */	lis r6, lit_5368@ha /* 0x8064B908@ha */
/* 805FEB1C  C0 9E 00 2C */	lfs f4, 0x2c(r30)
/* 805FEB20  3C 80 80 65 */	lis r4, lit_1072@ha /* 0x8064B8A4@ha */
/* 805FEB24  C0 7E 00 28 */	lfs f3, 0x28(r30)
/* 805FEB28  38 E6 B9 08 */	addi r7, r6, lit_5368@l /* 0x8064B908@l */
/* 805FEB2C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 805FEB30  EC 85 20 2A */	fadds f4, f5, f4
/* 805FEB34  C0 BE 00 0C */	lfs f5, 0xc(r30)
/* 805FEB38  38 C4 B8 A4 */	addi r6, r4, lit_1072@l /* 0x8064B8A4@l */
/* 805FEB3C  EC 03 00 2A */	fadds f0, f3, f0
/* 805FEB40  C0 7E 00 10 */	lfs f3, 0x10(r30)
/* 805FEB44  EC A5 08 2A */	fadds f5, f5, f1
/* 805FEB48  EC 9F 01 32 */	fmuls f4, f31, f4
/* 805FEB4C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805FEB50  EC 23 10 2A */	fadds f1, f3, f2
/* 805FEB54  EC 1F 00 32 */	fmuls f0, f31, f0
/* 805FEB58  C0 C7 00 00 */	lfs f6, 0(r7)
/* 805FEB5C  EC 65 20 2A */	fadds f3, f5, f4
/* 805FEB60  C0 46 00 00 */	lfs f2, 0(r6)
/* 805FEB64  7C A3 2B 78 */	mr r3, r5
/* 805FEB68  EC 01 00 2A */	fadds f0, f1, f0
/* 805FEB6C  81 84 09 50 */	lwz r12, 0x950(r4)
/* 805FEB70  EF C6 18 2A */	fadds f30, f6, f3
/* 805FEB74  EF A2 00 28 */	fsubs f29, f2, f0
/* 805FEB78  7D 89 03 A6 */	mtctr r12
/* 805FEB7C  4E 80 04 21 */	bctrl 
/* 805FEB80  3C 60 80 65 */	lis r3, lit_874@ha /* 0x8064B868@ha */
/* 805FEB84  38 00 00 01 */	li r0, 1
/* 805FEB88  C0 03 B8 68 */	lfs f0, lit_874@l(r3)  /* 0x8064B868@l */
/* 805FEB8C  FC 20 F0 90 */	fmr f1, f30
/* 805FEB90  90 01 00 08 */	stw r0, 8(r1)
/* 805FEB94  38 00 00 00 */	li r0, 0
/* 805FEB98  EC 60 07 F2 */	fmuls f3, f0, f31
/* 805FEB9C  7F A3 EB 78 */	mr r3, r29
/* 805FEBA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FEBA4  FC 40 E8 90 */	fmr f2, f29
/* 805FEBA8  38 9E 00 48 */	addi r4, r30, 0x48
/* 805FEBAC  FC 80 18 90 */	fmr f4, f3
/* 805FEBB0  88 DF 00 00 */	lbz r6, 0(r31)
/* 805FEBB4  38 A0 00 10 */	li r5, 0x10
/* 805FEBB8  88 FF 00 01 */	lbz r7, 1(r31)
/* 805FEBBC  89 1F 00 02 */	lbz r8, 2(r31)
/* 805FEBC0  39 20 00 FF */	li r9, 0xff
/* 805FEBC4  39 40 00 00 */	li r10, 0
/* 805FEBC8  4B DB 14 E1 */	bl mFont_SetLineStrings
lbl_805FEBCC:
/* 805FEBCC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805FEBD0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805FEBD4  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805FEBD8  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805FEBDC  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 805FEBE0  39 61 00 20 */	addi r11, r1, 0x20
/* 805FEBE4  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 805FEBE8  4B A9 C3 39 */	bl func_8009AF20
/* 805FEBEC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805FEBF0  7C 08 03 A6 */	mtlr r0
/* 805FEBF4  38 21 00 50 */	addi r1, r1, 0x50
/* 805FEBF8  4E 80 00 20 */	blr 
