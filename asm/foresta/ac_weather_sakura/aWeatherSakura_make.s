lbl_80603A90:
/* 80603A90  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80603A94  7C 08 02 A6 */	mflr r0
/* 80603A98  90 01 00 74 */	stw r0, 0x74(r1)
/* 80603A9C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80603AA0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80603AA4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80603AA8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80603AAC  39 61 00 50 */	addi r11, r1, 0x50
/* 80603AB0  4B A9 74 21 */	bl func_8009AED0
/* 80603AB4  7C 7C 1B 78 */	mr r28, r3
/* 80603AB8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80603ABC  80 03 01 8C */	lwz r0, 0x18c(r3)
/* 80603AC0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80603AC4  3F E5 00 02 */	addis r31, r5, 2
/* 80603AC8  3C A0 80 65 */	lis r5, lit_391@ha /* 0x8064BAA8@ha */
/* 80603ACC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80603AD0  38 C5 BA A8 */	addi r6, r5, lit_391@l /* 0x8064BAA8@l */
/* 80603AD4  80 BF 60 84 */	lwz r5, 0x6084(r31)
/* 80603AD8  7C 9D 23 78 */	mr r29, r4
/* 80603ADC  C0 26 00 00 */	lfs f1, 0(r6)
/* 80603AE0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80603AE4  80 83 01 88 */	lwz r4, 0x188(r3)
/* 80603AE8  80 03 01 90 */	lwz r0, 0x190(r3)
/* 80603AEC  EF E1 00 2A */	fadds f31, f1, f0
/* 80603AF0  81 85 00 08 */	lwz r12, 8(r5)
/* 80603AF4  90 81 00 20 */	stw r4, 0x20(r1)
/* 80603AF8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80603AFC  7D 89 03 A6 */	mtctr r12
/* 80603B00  4E 80 04 21 */	bctrl 
/* 80603B04  3C 80 80 65 */	lis r4, data_8064BA9C@ha /* 0x8064BA9C@ha */
/* 80603B08  7C 60 1B 78 */	mr r0, r3
/* 80603B0C  38 E4 BA 9C */	addi r7, r4, data_8064BA9C@l /* 0x8064BA9C@l */
/* 80603B10  7F 83 E3 78 */	mr r3, r28
/* 80603B14  80 C7 00 00 */	lwz r6, 0(r7)
/* 80603B18  7C 1E 03 78 */	mr r30, r0
/* 80603B1C  80 A7 00 04 */	lwz r5, 4(r7)
/* 80603B20  7F A4 EB 78 */	mr r4, r29
/* 80603B24  80 07 00 08 */	lwz r0, 8(r7)
/* 80603B28  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80603B2C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80603B30  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80603B34  4B FF FF 29 */	bl func_80603A5C
/* 80603B38  2C 03 00 00 */	cmpwi r3, 0
/* 80603B3C  41 82 01 0C */	beq lbl_80603C48
/* 80603B40  4B A5 91 B5 */	bl fqrand
/* 80603B44  3C 80 80 65 */	lis r4, lit_393@ha /* 0x8064BAB0@ha */
/* 80603B48  3C 60 80 65 */	lis r3, lit_392@ha /* 0x8064BAAC@ha */
/* 80603B4C  C0 44 BA B0 */	lfs f2, lit_393@l(r4)  /* 0x8064BAB0@l */
/* 80603B50  2C 1E FF FF */	cmpwi r30, -1
/* 80603B54  C0 03 BA AC */	lfs f0, lit_392@l(r3)  /* 0x8064BAAC@l */
/* 80603B58  EC 22 00 72 */	fmuls f1, f2, f1
/* 80603B5C  EC 00 08 2A */	fadds f0, f0, f1
/* 80603B60  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80603B64  41 82 00 E4 */	beq lbl_80603C48
/* 80603B68  4B A5 91 8D */	bl fqrand
/* 80603B6C  3C 80 80 65 */	lis r4, lit_395@ha /* 0x8064BAB8@ha */
/* 80603B70  3C 60 80 65 */	lis r3, lit_394@ha /* 0x8064BAB4@ha */
/* 80603B74  C0 44 BA B8 */	lfs f2, lit_395@l(r4)  /* 0x8064BAB8@l */
/* 80603B78  C0 03 BA B4 */	lfs f0, lit_394@l(r3)  /* 0x8064BAB4@l */
/* 80603B7C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80603B80  EF C0 08 2A */	fadds f30, f0, f1
/* 80603B84  4B A5 91 71 */	bl fqrand
/* 80603B88  3C 60 80 65 */	lis r3, lit_397@ha /* 0x8064BAC0@ha */
/* 80603B8C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80603B90  38 A3 BA C0 */	addi r5, r3, lit_397@l /* 0x8064BAC0@l */
/* 80603B94  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80603B98  C0 05 00 00 */	lfs f0, 0(r5)
/* 80603B9C  3C 80 80 65 */	lis r4, lit_396@ha /* 0x8064BABC@ha */
/* 80603BA0  90 61 00 08 */	stw r3, 8(r1)
/* 80603BA4  7F 87 E3 78 */	mr r7, r28
/* 80603BA8  EC 20 00 72 */	fmuls f1, f0, f1
/* 80603BAC  C0 04 BA BC */	lfs f0, lit_396@l(r4)  /* 0x8064BABC@l */
/* 80603BB0  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80603BB4  7F C8 F3 78 */	mr r8, r30
/* 80603BB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80603BBC  38 A1 00 08 */	addi r5, r1, 8
/* 80603BC0  EC 40 08 2A */	fadds f2, f0, f1
/* 80603BC4  C0 21 00 08 */	lfs f1, 8(r1)
/* 80603BC8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80603BCC  38 C1 00 14 */	addi r6, r1, 0x14
/* 80603BD0  EC 21 F0 2A */	fadds f1, f1, f30
/* 80603BD4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80603BD8  EC 00 10 2A */	fadds f0, f0, f2
/* 80603BDC  81 3F 60 84 */	lwz r9, 0x6084(r31)
/* 80603BE0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80603BE4  38 60 00 03 */	li r3, 3
/* 80603BE8  38 80 01 18 */	li r4, 0x118
/* 80603BEC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80603BF0  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80603BF4  81 89 00 10 */	lwz r12, 0x10(r9)
/* 80603BF8  7D 89 03 A6 */	mtctr r12
/* 80603BFC  4E 80 04 21 */	bctrl 
/* 80603C00  7C 7C 1B 79 */	or. r28, r3, r3
/* 80603C04  41 82 00 44 */	beq lbl_80603C48
/* 80603C08  7F A4 EB 78 */	mr r4, r29
/* 80603C0C  48 00 00 65 */	bl aWeatherSakura_ct
/* 80603C10  38 00 00 00 */	li r0, 0
/* 80603C14  B0 1C 00 28 */	sth r0, 0x28(r28)
/* 80603C18  4B A5 90 DD */	bl fqrand
/* 80603C1C  3C 80 80 65 */	lis r4, lit_399@ha /* 0x8064BAC8@ha */
/* 80603C20  3C 60 80 65 */	lis r3, lit_398@ha /* 0x8064BAC4@ha */
/* 80603C24  C0 44 BA C8 */	lfs f2, lit_399@l(r4)  /* 0x8064BAC8@l */
/* 80603C28  C0 03 BA C4 */	lfs f0, lit_398@l(r3)  /* 0x8064BAC4@l */
/* 80603C2C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80603C30  EC 00 08 2A */	fadds f0, f0, f1
/* 80603C34  FC 00 00 1E */	fctiwz f0, f0
/* 80603C38  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80603C3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80603C40  B0 1C 00 2A */	sth r0, 0x2a(r28)
/* 80603C44  D3 FC 00 18 */	stfs f31, 0x18(r28)
lbl_80603C48:
/* 80603C48  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80603C4C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80603C50  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80603C54  39 61 00 50 */	addi r11, r1, 0x50
/* 80603C58  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80603C5C  4B A9 72 C1 */	bl func_8009AF1C
/* 80603C60  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80603C64  7C 08 03 A6 */	mtlr r0
/* 80603C68  38 21 00 70 */	addi r1, r1, 0x70
/* 80603C6C  4E 80 00 20 */	blr 
