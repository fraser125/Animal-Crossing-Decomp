lbl_805AFF00:
/* 805AFF00  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805AFF04  7C 08 02 A6 */	mflr r0
/* 805AFF08  90 01 00 54 */	stw r0, 0x54(r1)
/* 805AFF0C  39 61 00 50 */	addi r11, r1, 0x50
/* 805AFF10  4B AE AF C5 */	bl func_8009AED4
/* 805AFF14  88 04 20 D3 */	lbz r0, 0x20d3(r4)
/* 805AFF18  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805AFF1C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805AFF20  7C 7E 1B 78 */	mr r30, r3
/* 805AFF24  28 00 00 00 */	cmplwi r0, 0
/* 805AFF28  3F E5 00 03 */	addis r31, r5, 3
/* 805AFF2C  40 82 01 00 */	bne lbl_805B002C
/* 805AFF30  A0 9E 00 06 */	lhz r4, 6(r30)
/* 805AFF34  3C 65 00 01 */	addis r3, r5, 1
/* 805AFF38  38 A0 00 0F */	li r5, 0xf
/* 805AFF3C  3C 84 00 01 */	addis r4, r4, 1
/* 805AFF40  38 63 74 38 */	addi r3, r3, 0x7438
/* 805AFF44  38 04 90 00 */	addi r0, r4, -28672
/* 805AFF48  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 805AFF4C  7F A4 EB 78 */	mr r4, r29
/* 805AFF50  4B E1 C7 8D */	bl mNpc_SearchAnimalinfo
/* 805AFF54  2C 03 FF FF */	cmpwi r3, -1
/* 805AFF58  40 82 00 0C */	bne lbl_805AFF64
/* 805AFF5C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805AFF60  3B A3 FF FF */	addi r29, r3, 0xFFFF /* 0x0000FFFF@l */
lbl_805AFF64:
/* 805AFF64  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AFF68  3C 80 80 65 */	lis r4, lit_583@ha /* 0x8064A79C@ha */
/* 805AFF6C  38 E3 85 38 */	addi r7, r3, common_data@l /* 0x81138538@l */
/* 805AFF70  3C 60 80 65 */	lis r3, data_8064A78C@ha /* 0x8064A78C@ha */
/* 805AFF74  3C C7 00 02 */	addis r6, r7, 2
/* 805AFF78  38 A4 A7 9C */	addi r5, r4, lit_583@l /* 0x8064A79C@l */
/* 805AFF7C  B3 A6 65 1C */	sth r29, 0x651c(r6)
/* 805AFF80  38 83 A7 8C */	addi r4, r3, data_8064A78C@l /* 0x8064A78C@l */
/* 805AFF84  80 67 00 14 */	lwz r3, 0x14(r7)
/* 805AFF88  38 C0 00 00 */	li r6, 0
/* 805AFF8C  38 00 00 02 */	li r0, 2
/* 805AFF90  C0 45 00 00 */	lfs f2, 0(r5)
/* 805AFF94  90 7F 85 44 */	stw r3, -0x7abc(r31)
/* 805AFF98  38 61 00 08 */	addi r3, r1, 8
/* 805AFF9C  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 805AFFA0  98 DF 85 48 */	stb r6, -0x7ab8(r31)
/* 805AFFA4  C0 24 00 00 */	lfs f1, 0(r4)
/* 805AFFA8  98 DF 85 49 */	stb r6, -0x7ab7(r31)
/* 805AFFAC  B0 1F 85 4A */	sth r0, -0x7ab6(r31)
/* 805AFFB0  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805AFFB4  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 805AFFB8  EC 02 00 2A */	fadds f0, f2, f0
/* 805AFFBC  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 805AFFC0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805AFFC4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805AFFC8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805AFFCC  90 81 00 08 */	stw r4, 8(r1)
/* 805AFFD0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805AFFD4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AFFD8  4B DD F9 C1 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 805AFFDC  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 805AFFE0  FC 40 08 18 */	frsp f2, f1
/* 805AFFE4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805AFFE8  38 00 00 01 */	li r0, 1
/* 805AFFEC  FC 60 18 1E */	fctiwz f3, f3
/* 805AFFF0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805AFFF4  FC 20 10 1E */	fctiwz f1, f2
/* 805AFFF8  FC 00 00 1E */	fctiwz f0, f0
/* 805AFFFC  D8 61 00 20 */	stfd f3, 0x20(r1)
/* 805B0000  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 805B0004  80 61 00 24 */	lwz r3, 0x24(r1)
/* 805B0008  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805B000C  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 805B0010  B0 7F 85 4C */	sth r3, -0x7ab4(r31)
/* 805B0014  80 61 00 34 */	lwz r3, 0x34(r1)
/* 805B0018  B0 9F 85 4E */	sth r4, -0x7ab2(r31)
/* 805B001C  B0 7F 85 50 */	sth r3, -0x7ab0(r31)
/* 805B0020  A0 7E 00 06 */	lhz r3, 6(r30)
/* 805B0024  B0 7F 85 52 */	sth r3, -0x7aae(r31)
/* 805B0028  98 1F 85 54 */	stb r0, -0x7aac(r31)
lbl_805B002C:
/* 805B002C  39 61 00 50 */	addi r11, r1, 0x50
/* 805B0030  4B AE AE F1 */	bl func_8009AF20
/* 805B0034  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805B0038  7C 08 03 A6 */	mtlr r0
/* 805B003C  38 21 00 50 */	addi r1, r1, 0x50
/* 805B0040  4E 80 00 20 */	blr 
