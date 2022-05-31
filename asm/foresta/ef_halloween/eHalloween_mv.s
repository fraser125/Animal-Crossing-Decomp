lbl_8060D428:
/* 8060D428  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8060D42C  7C 08 02 A6 */	mflr r0
/* 8060D430  90 01 00 34 */	stw r0, 0x34(r1)
/* 8060D434  39 61 00 30 */	addi r11, r1, 0x30
/* 8060D438  4B A8 DA 9D */	bl func_8009AED4
/* 8060D43C  7C 7D 1B 78 */	mr r29, r3
/* 8060D440  7C 9E 23 78 */	mr r30, r4
/* 8060D444  A8 03 00 4C */	lha r0, 0x4c(r3)
/* 8060D448  2C 00 00 04 */	cmpwi r0, 4
/* 8060D44C  40 82 00 F8 */	bne lbl_8060D544
/* 8060D450  4B A4 F8 7D */	bl func_8005CCCC
/* 8060D454  80 BD 00 10 */	lwz r5, 0x10(r29)
/* 8060D458  7C 7F 07 34 */	extsh r31, r3
/* 8060D45C  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 8060D460  7F E3 FB 78 */	mr r3, r31
/* 8060D464  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 8060D468  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8060D46C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8060D470  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8060D474  4B DA D6 7D */	bl sin_s
/* 8060D478  3C 60 80 65 */	lis r3, data_8064C0D4@ha /* 0x8064C0D4@ha */
/* 8060D47C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8060D480  C0 43 C0 D4 */	lfs f2, data_8064C0D4@l(r3)  /* 0x8064C0D4@l */
/* 8060D484  EC 22 00 72 */	fmuls f1, f2, f1
/* 8060D488  EC 00 08 2A */	fadds f0, f0, f1
/* 8060D48C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8060D490  4B A4 F8 65 */	bl fqrand
/* 8060D494  3C 80 80 65 */	lis r4, lit_393@ha /* 0x8064C0DC@ha */
/* 8060D498  3C 60 80 65 */	lis r3, lit_392@ha /* 0x8064C0D8@ha */
/* 8060D49C  C0 64 C0 DC */	lfs f3, lit_393@l(r4)  /* 0x8064C0DC@l */
/* 8060D4A0  C0 43 C0 D8 */	lfs f2, lit_392@l(r3)  /* 0x8064C0D8@l */
/* 8060D4A4  7F E3 FB 78 */	mr r3, r31
/* 8060D4A8  EC 23 00 72 */	fmuls f1, f3, f1
/* 8060D4AC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8060D4B0  EC 22 08 2A */	fadds f1, f2, f1
/* 8060D4B4  EC 00 08 2A */	fadds f0, f0, f1
/* 8060D4B8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8060D4BC  4B DA D5 E1 */	bl cos_s
/* 8060D4C0  3C 80 80 65 */	lis r4, data_8064C0D4@ha /* 0x8064C0D4@ha */
/* 8060D4C4  38 00 00 00 */	li r0, 0
/* 8060D4C8  C0 04 C0 D4 */	lfs f0, data_8064C0D4@l(r4)  /* 0x8064C0D4@l */
/* 8060D4CC  3C 60 80 65 */	lis r3, lit_394@ha /* 0x8064C0E0@ha */
/* 8060D4D0  38 83 C0 E0 */	addi r4, r3, lit_394@l /* 0x8064C0E0@l */
/* 8060D4D4  B0 1D 00 4C */	sth r0, 0x4c(r29)
/* 8060D4D8  EC 20 00 72 */	fmuls f1, f0, f1
/* 8060D4DC  C0 44 00 00 */	lfs f2, 0(r4)
/* 8060D4E0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8060D4E4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060D4E8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8060D4EC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8060D4F0  EC 22 08 2A */	fadds f1, f2, f1
/* 8060D4F4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8060D4F8  3C 63 00 02 */	addis r3, r3, 2
/* 8060D4FC  90 81 00 08 */	stw r4, 8(r1)
/* 8060D500  80 A3 60 9C */	lwz r5, 0x609c(r3)
/* 8060D504  7F E6 FB 78 */	mr r6, r31
/* 8060D508  EC 00 08 2A */	fadds f0, f0, f1
/* 8060D50C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060D510  7F C7 F3 78 */	mr r7, r30
/* 8060D514  38 81 00 08 */	addi r4, r1, 8
/* 8060D518  38 60 00 66 */	li r3, 0x66
/* 8060D51C  39 20 00 00 */	li r9, 0
/* 8060D520  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8060D524  39 40 00 00 */	li r10, 0
/* 8060D528  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8060D52C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8060D530  81 85 00 00 */	lwz r12, 0(r5)
/* 8060D534  88 BD 00 0E */	lbz r5, 0xe(r29)
/* 8060D538  A1 1D 00 0C */	lhz r8, 0xc(r29)
/* 8060D53C  7D 89 03 A6 */	mtctr r12
/* 8060D540  4E 80 04 21 */	bctrl 
lbl_8060D544:
/* 8060D544  A8 7D 00 4C */	lha r3, 0x4c(r29)
/* 8060D548  38 03 00 01 */	addi r0, r3, 1
/* 8060D54C  B0 1D 00 4C */	sth r0, 0x4c(r29)
/* 8060D550  39 61 00 30 */	addi r11, r1, 0x30
/* 8060D554  4B A8 D9 CD */	bl func_8009AF20
/* 8060D558  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8060D55C  7C 08 03 A6 */	mtlr r0
/* 8060D560  38 21 00 30 */	addi r1, r1, 0x30
/* 8060D564  4E 80 00 20 */	blr 
