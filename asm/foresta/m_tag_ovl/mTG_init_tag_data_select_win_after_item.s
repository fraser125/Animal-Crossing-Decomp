lbl_805F189C:
/* 805F189C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805F18A0  7C 08 02 A6 */	mflr r0
/* 805F18A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 805F18A8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805F18AC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805F18B0  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 805F18B4  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 805F18B8  39 61 00 30 */	addi r11, r1, 0x30
/* 805F18BC  4B AA 96 15 */	bl func_8009AED0
/* 805F18C0  7C A0 2B 78 */	mr r0, r5
/* 805F18C4  7C 9D 23 78 */	mr r29, r4
/* 805F18C8  7C 7C 1B 78 */	mr r28, r3
/* 805F18CC  38 A1 00 0C */	addi r5, r1, 0xc
/* 805F18D0  7C 04 03 78 */	mr r4, r0
/* 805F18D4  38 C1 00 08 */	addi r6, r1, 8
/* 805F18D8  4B FF E4 BD */	bl mTG_get_col_width_and_line_select
/* 805F18DC  3C 60 80 65 */	lis r3, lit_874@ha /* 0x8064B868@ha */
/* 805F18E0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805F18E4  C0 43 B8 68 */	lfs f2, lit_874@l(r3)  /* 0x8064B868@l */
/* 805F18E8  7F 83 E3 78 */	mr r3, r28
/* 805F18EC  C0 01 00 08 */	lfs f0, 8(r1)
/* 805F18F0  38 80 00 02 */	li r4, 2
/* 805F18F4  EC 22 00 72 */	fmuls f1, f2, f1
/* 805F18F8  EC 42 00 32 */	fmuls f2, f2, f0
/* 805F18FC  4B FF E1 01 */	bl mTG_set_tag_win_scale_p
/* 805F1900  3C 60 80 65 */	lis r3, data_8064B814@ha /* 0x8064B814@ha */
/* 805F1904  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 805F1908  C0 03 B8 14 */	lfs f0, data_8064B814@l(r3)  /* 0x8064B814@l */
/* 805F190C  3B E0 00 00 */	li r31, 0
/* 805F1910  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F1914  40 80 00 08 */	bge lbl_805F191C
/* 805F1918  3B E0 00 01 */	li r31, 1
lbl_805F191C:
/* 805F191C  88 1D 00 02 */	lbz r0, 2(r29)
/* 805F1920  28 00 00 00 */	cmplwi r0, 0
/* 805F1924  41 82 00 28 */	beq lbl_805F194C
/* 805F1928  3C 60 80 65 */	lis r3, lit_1068@ha /* 0x8064B894@ha */
/* 805F192C  3C 80 80 65 */	lis r4, lit_1069@ha /* 0x8064B898@ha */
/* 805F1930  38 A3 B8 94 */	addi r5, r3, lit_1068@l /* 0x8064B894@l */
/* 805F1934  C3 C4 B8 98 */	lfs f30, lit_1069@l(r4)  /* 0x8064B898@l */
/* 805F1938  3C 60 80 6D */	lis r3, tag_add_item_data@ha /* 0x806D09E0@ha */
/* 805F193C  C3 E5 00 00 */	lfs f31, 0(r5)
/* 805F1940  38 63 09 E0 */	addi r3, r3, tag_add_item_data@l /* 0x806D09E0@l */
/* 805F1944  3B C3 00 40 */	addi r30, r3, 0x40
/* 805F1948  48 00 00 24 */	b lbl_805F196C
lbl_805F194C:
/* 805F194C  3C 60 80 65 */	lis r3, lit_677@ha /* 0x8064B858@ha */
/* 805F1950  3C 80 80 65 */	lis r4, lit_628@ha /* 0x8064B830@ha */
/* 805F1954  38 A3 B8 58 */	addi r5, r3, lit_677@l /* 0x8064B858@l */
/* 805F1958  C3 C4 B8 30 */	lfs f30, lit_628@l(r4)  /* 0x8064B830@l */
/* 805F195C  3C 60 80 6D */	lis r3, tag_add_item_data@ha /* 0x806D09E0@ha */
/* 805F1960  C3 E5 00 00 */	lfs f31, 0(r5)
/* 805F1964  38 03 09 E0 */	addi r0, r3, tag_add_item_data@l /* 0x806D09E0@l */
/* 805F1968  7C 1E 03 78 */	mr r30, r0
lbl_805F196C:
/* 805F196C  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 805F1970  3C 60 80 65 */	lis r3, lit_654@ha /* 0x8064B848@ha */
/* 805F1974  38 83 B8 48 */	addi r4, r3, lit_654@l /* 0x8064B848@l */
/* 805F1978  3C 60 80 65 */	lis r3, lit_677@ha /* 0x8064B858@ha */
/* 805F197C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 805F1980  C0 C4 00 00 */	lfs f6, 0(r4)
/* 805F1984  38 A3 B8 58 */	addi r5, r3, lit_677@l /* 0x8064B858@l */
/* 805F1988  3C 60 80 65 */	lis r3, lit_655@ha /* 0x8064B84C@ha */
/* 805F198C  38 83 B8 4C */	addi r4, r3, lit_655@l /* 0x8064B84C@l */
/* 805F1990  C0 7D 00 28 */	lfs f3, 0x28(r29)
/* 805F1994  EC 46 00 32 */	fmuls f2, f6, f0
/* 805F1998  C0 9E 00 04 */	lfs f4, 4(r30)
/* 805F199C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805F19A0  7F 83 E3 78 */	mr r3, r28
/* 805F19A4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 805F19A8  EC 63 10 28 */	fsubs f3, f3, f2
/* 805F19AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F19B0  C0 BC 00 10 */	lfs f5, 0x10(r28)
/* 805F19B4  C0 45 00 00 */	lfs f2, 0(r5)
/* 805F19B8  EC 64 18 2A */	fadds f3, f4, f3
/* 805F19BC  C0 24 00 00 */	lfs f1, 0(r4)
/* 805F19C0  EC 03 00 2A */	fadds f0, f3, f0
/* 805F19C4  EC 05 00 2A */	fadds f0, f5, f0
/* 805F19C8  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 805F19CC  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 805F19D0  C0 9C 00 08 */	lfs f4, 8(r28)
/* 805F19D4  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 805F19D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 805F19DC  C0 BE 00 24 */	lfs f5, 0x24(r30)
/* 805F19E0  EC 44 00 F2 */	fmuls f2, f4, f3
/* 805F19E4  EC 06 00 32 */	fmuls f0, f6, f0
/* 805F19E8  EC 45 10 2A */	fadds f2, f5, f2
/* 805F19EC  EC 02 00 28 */	fsubs f0, f2, f0
/* 805F19F0  D0 1C 00 28 */	stfs f0, 0x28(r28)
/* 805F19F4  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 805F19F8  C0 5D 00 24 */	lfs f2, 0x24(r29)
/* 805F19FC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 805F1A00  C0 7C 00 0C */	lfs f3, 0xc(r28)
/* 805F1A04  EC 06 00 32 */	fmuls f0, f6, f0
/* 805F1A08  EC 02 00 28 */	fsubs f0, f2, f0
/* 805F1A0C  EC 03 00 2A */	fadds f0, f3, f0
/* 805F1A10  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 805F1A14  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 805F1A18  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F1A1C  EC 06 00 32 */	fmuls f0, f6, f0
/* 805F1A20  D0 1C 00 24 */	stfs f0, 0x24(r28)
/* 805F1A24  4B FF E2 69 */	bl mTG_check_edge_foot_select
/* 805F1A28  2C 03 00 00 */	cmpwi r3, 0
/* 805F1A2C  41 82 00 40 */	beq lbl_805F1A6C
/* 805F1A30  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 805F1A34  2C 00 00 00 */	cmpwi r0, 0
/* 805F1A38  40 82 00 34 */	bne lbl_805F1A6C
/* 805F1A3C  80 1D 00 40 */	lwz r0, 0x40(r29)
/* 805F1A40  2C 00 00 01 */	cmpwi r0, 1
/* 805F1A44  40 82 00 28 */	bne lbl_805F1A6C
/* 805F1A48  88 1C 00 00 */	lbz r0, 0(r28)
/* 805F1A4C  3C 80 80 6D */	lis r4, mTG_label_table@ha /* 0x806D056C@ha */
/* 805F1A50  38 84 05 6C */	addi r4, r4, mTG_label_table@l /* 0x806D056C@l */
/* 805F1A54  54 00 18 38 */	slwi r0, r0, 3
/* 805F1A58  7C 84 02 14 */	add r4, r4, r0
/* 805F1A5C  80 04 00 04 */	lwz r0, 4(r4)
/* 805F1A60  2C 00 00 02 */	cmpwi r0, 2
/* 805F1A64  40 82 00 08 */	bne lbl_805F1A6C
/* 805F1A68  38 60 00 00 */	li r3, 0
lbl_805F1A6C:
/* 805F1A6C  2C 03 00 00 */	cmpwi r3, 0
/* 805F1A70  41 82 01 84 */	beq lbl_805F1BF4
/* 805F1A74  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805F1A78  7F 83 E3 78 */	mr r3, r28
/* 805F1A7C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805F1A80  38 81 00 10 */	addi r4, r1, 0x10
/* 805F1A84  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F1A88  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F1A8C  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 805F1A90  EC 02 00 2A */	fadds f0, f2, f0
/* 805F1A94  EC 01 00 2A */	fadds f0, f1, f0
/* 805F1A98  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 805F1A9C  C0 3C 00 04 */	lfs f1, 4(r28)
/* 805F1AA0  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 805F1AA4  C0 5E 00 20 */	lfs f2, 0x20(r30)
/* 805F1AA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F1AAC  C0 3C 00 24 */	lfs f1, 0x24(r28)
/* 805F1AB0  EC 02 00 2A */	fadds f0, f2, f0
/* 805F1AB4  EC 01 00 2A */	fadds f0, f1, f0
/* 805F1AB8  D0 1C 00 24 */	stfs f0, 0x24(r28)
/* 805F1ABC  4B FF E1 35 */	bl mTG_calc_right_edge_select
/* 805F1AC0  3C 60 80 65 */	lis r3, lit_1070@ha /* 0x8064B89C@ha */
/* 805F1AC4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 805F1AC8  C0 03 B8 9C */	lfs f0, lit_1070@l(r3)  /* 0x8064B89C@l */
/* 805F1ACC  38 00 00 00 */	li r0, 0
/* 805F1AD0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805F1AD4  4C 41 13 82 */	cror 2, 1, 2
/* 805F1AD8  40 82 00 24 */	bne lbl_805F1AFC
/* 805F1ADC  3C 60 80 65 */	lis r3, lit_1071@ha /* 0x8064B8A0@ha */
/* 805F1AE0  C0 03 B8 A0 */	lfs f0, lit_1071@l(r3)  /* 0x8064B8A0@l */
/* 805F1AE4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805F1AE8  4C 41 13 82 */	cror 2, 1, 2
/* 805F1AEC  40 82 00 0C */	bne lbl_805F1AF8
/* 805F1AF0  38 00 00 02 */	li r0, 2
/* 805F1AF4  48 00 00 08 */	b lbl_805F1AFC
lbl_805F1AF8:
/* 805F1AF8  38 00 00 01 */	li r0, 1
lbl_805F1AFC:
/* 805F1AFC  2C 00 00 02 */	cmpwi r0, 2
/* 805F1B00  41 82 00 0C */	beq lbl_805F1B0C
/* 805F1B04  2C 1F 00 00 */	cmpwi r31, 0
/* 805F1B08  41 82 00 C8 */	beq lbl_805F1BD0
lbl_805F1B0C:
/* 805F1B0C  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 805F1B10  3C 60 80 65 */	lis r3, lit_654@ha /* 0x8064B848@ha */
/* 805F1B14  38 83 B8 48 */	addi r4, r3, lit_654@l /* 0x8064B848@l */
/* 805F1B18  C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 805F1B1C  EC 40 07 F2 */	fmuls f2, f0, f31
/* 805F1B20  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 805F1B24  3C 60 80 65 */	lis r3, lit_655@ha /* 0x8064B84C@ha */
/* 805F1B28  C0 E4 00 00 */	lfs f7, 0(r4)
/* 805F1B2C  EC 83 00 2A */	fadds f4, f3, f0
/* 805F1B30  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805F1B34  EC 67 00 B2 */	fmuls f3, f7, f2
/* 805F1B38  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805F1B3C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F1B40  38 A3 B8 4C */	addi r5, r3, lit_655@l /* 0x8064B84C@l */
/* 805F1B44  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F1B48  3C 60 80 65 */	lis r3, lit_670@ha /* 0x8064B854@ha */
/* 805F1B4C  EC 64 18 2A */	fadds f3, f4, f3
/* 805F1B50  38 83 B8 54 */	addi r4, r3, lit_670@l /* 0x8064B854@l */
/* 805F1B54  EC 42 00 2A */	fadds f2, f2, f0
/* 805F1B58  3C 60 80 65 */	lis r3, data_8064B814@ha /* 0x8064B814@ha */
/* 805F1B5C  C0 C5 00 00 */	lfs f6, 0(r5)
/* 805F1B60  C0 24 00 00 */	lfs f1, 0(r4)
/* 805F1B64  EC 43 10 28 */	fsubs f2, f3, f2
/* 805F1B68  C0 03 B8 14 */	lfs f0, data_8064B814@l(r3)  /* 0x8064B814@l */
/* 805F1B6C  D0 5C 00 0C */	stfs f2, 0xc(r28)
/* 805F1B70  C0 5C 00 14 */	lfs f2, 0x14(r28)
/* 805F1B74  C0 7C 00 04 */	lfs f3, 4(r28)
/* 805F1B78  EC A6 00 B2 */	fmuls f5, f6, f2
/* 805F1B7C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805F1B80  C0 9E 00 20 */	lfs f4, 0x20(r30)
/* 805F1B84  EC 43 00 B2 */	fmuls f2, f3, f2
/* 805F1B88  EC 67 01 72 */	fmuls f3, f7, f5
/* 805F1B8C  EC 44 10 2A */	fadds f2, f4, f2
/* 805F1B90  FC 60 18 50 */	fneg f3, f3
/* 805F1B94  EC 43 10 28 */	fsubs f2, f3, f2
/* 805F1B98  D0 5C 00 24 */	stfs f2, 0x24(r28)
/* 805F1B9C  C0 5C 00 14 */	lfs f2, 0x14(r28)
/* 805F1BA0  C0 7C 00 0C */	lfs f3, 0xc(r28)
/* 805F1BA4  EC 46 00 B2 */	fmuls f2, f6, f2
/* 805F1BA8  C0 9C 00 24 */	lfs f4, 0x24(r28)
/* 805F1BAC  EC 63 20 2A */	fadds f3, f3, f4
/* 805F1BB0  EC 47 00 B2 */	fmuls f2, f7, f2
/* 805F1BB4  EC 43 10 28 */	fsubs f2, f3, f2
/* 805F1BB8  EC 22 08 28 */	fsubs f1, f2, f1
/* 805F1BBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F1BC0  40 80 02 60 */	bge lbl_805F1E20
/* 805F1BC4  EC 04 08 28 */	fsubs f0, f4, f1
/* 805F1BC8  D0 1C 00 24 */	stfs f0, 0x24(r28)
/* 805F1BCC  48 00 02 54 */	b lbl_805F1E20
lbl_805F1BD0:
/* 805F1BD0  2C 00 00 01 */	cmpwi r0, 1
/* 805F1BD4  40 82 02 4C */	bne lbl_805F1E20
/* 805F1BD8  3C 60 80 65 */	lis r3, lit_1070@ha /* 0x8064B89C@ha */
/* 805F1BDC  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 805F1BE0  C0 03 B8 9C */	lfs f0, lit_1070@l(r3)  /* 0x8064B89C@l */
/* 805F1BE4  EC 02 00 28 */	fsubs f0, f2, f0
/* 805F1BE8  EC 01 00 28 */	fsubs f0, f1, f0
/* 805F1BEC  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 805F1BF0  48 00 02 30 */	b lbl_805F1E20
lbl_805F1BF4:
/* 805F1BF4  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 805F1BF8  3C 60 80 65 */	lis r3, lit_654@ha /* 0x8064B848@ha */
/* 805F1BFC  38 83 B8 48 */	addi r4, r3, lit_654@l /* 0x8064B848@l */
/* 805F1C00  C0 5D 00 10 */	lfs f2, 0x10(r29)
/* 805F1C04  EC 00 07 B2 */	fmuls f0, f0, f30
/* 805F1C08  C0 C4 00 00 */	lfs f6, 0(r4)
/* 805F1C0C  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 805F1C10  3C 60 80 65 */	lis r3, lit_677@ha /* 0x8064B858@ha */
/* 805F1C14  38 83 B8 58 */	addi r4, r3, lit_677@l /* 0x8064B858@l */
/* 805F1C18  C0 9D 00 08 */	lfs f4, 8(r29)
/* 805F1C1C  EC 22 08 2A */	fadds f1, f2, f1
/* 805F1C20  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 805F1C24  EC 06 00 32 */	fmuls f0, f6, f0
/* 805F1C28  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 805F1C2C  EC 64 00 F2 */	fmuls f3, f4, f3
/* 805F1C30  C0 A4 00 00 */	lfs f5, 0(r4)
/* 805F1C34  EC 21 00 2A */	fadds f1, f1, f0
/* 805F1C38  3C 60 80 65 */	lis r3, lit_1072@ha /* 0x8064B8A4@ha */
/* 805F1C3C  C0 03 B8 A4 */	lfs f0, lit_1072@l(r3)  /* 0x8064B8A4@l */
/* 805F1C40  EC 22 08 2A */	fadds f1, f2, f1
/* 805F1C44  EC 23 08 2A */	fadds f1, f3, f1
/* 805F1C48  D0 3C 00 10 */	stfs f1, 0x10(r28)
/* 805F1C4C  C0 7C 00 18 */	lfs f3, 0x18(r28)
/* 805F1C50  C0 5C 00 08 */	lfs f2, 8(r28)
/* 805F1C54  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 805F1C58  EC 85 00 F2 */	fmuls f4, f5, f3
/* 805F1C5C  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 805F1C60  EC 22 00 72 */	fmuls f1, f2, f1
/* 805F1C64  EC 46 01 32 */	fmuls f2, f6, f4
/* 805F1C68  EC 23 08 2A */	fadds f1, f3, f1
/* 805F1C6C  EC 22 08 2A */	fadds f1, f2, f1
/* 805F1C70  D0 3C 00 28 */	stfs f1, 0x28(r28)
/* 805F1C74  C0 3C 00 18 */	lfs f1, 0x18(r28)
/* 805F1C78  C0 5C 00 10 */	lfs f2, 0x10(r28)
/* 805F1C7C  EC 65 00 72 */	fmuls f3, f5, f1
/* 805F1C80  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 805F1C84  EC 22 08 2A */	fadds f1, f2, f1
/* 805F1C88  EC 66 00 F2 */	fmuls f3, f6, f3
/* 805F1C8C  EC 23 08 2A */	fadds f1, f3, f1
/* 805F1C90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F1C94  40 81 00 10 */	ble lbl_805F1CA4
/* 805F1C98  EC 01 00 28 */	fsubs f0, f1, f0
/* 805F1C9C  EC 02 00 28 */	fsubs f0, f2, f0
/* 805F1CA0  D0 1C 00 10 */	stfs f0, 0x10(r28)
lbl_805F1CA4:
/* 805F1CA4  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805F1CA8  7F 83 E3 78 */	mr r3, r28
/* 805F1CAC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 805F1CB0  38 81 00 10 */	addi r4, r1, 0x10
/* 805F1CB4  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 805F1CB8  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F1CBC  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 805F1CC0  EC 02 00 2A */	fadds f0, f2, f0
/* 805F1CC4  EC 01 00 2A */	fadds f0, f1, f0
/* 805F1CC8  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 805F1CCC  C0 3C 00 04 */	lfs f1, 4(r28)
/* 805F1CD0  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 805F1CD4  C0 5E 00 30 */	lfs f2, 0x30(r30)
/* 805F1CD8  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F1CDC  C0 3C 00 24 */	lfs f1, 0x24(r28)
/* 805F1CE0  EC 02 00 2A */	fadds f0, f2, f0
/* 805F1CE4  EC 01 00 2A */	fadds f0, f1, f0
/* 805F1CE8  D0 1C 00 24 */	stfs f0, 0x24(r28)
/* 805F1CEC  4B FF DF 05 */	bl mTG_calc_right_edge_select
/* 805F1CF0  3C 60 80 65 */	lis r3, lit_1070@ha /* 0x8064B89C@ha */
/* 805F1CF4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 805F1CF8  C0 03 B8 9C */	lfs f0, lit_1070@l(r3)  /* 0x8064B89C@l */
/* 805F1CFC  38 00 00 00 */	li r0, 0
/* 805F1D00  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805F1D04  4C 41 13 82 */	cror 2, 1, 2
/* 805F1D08  40 82 00 24 */	bne lbl_805F1D2C
/* 805F1D0C  3C 60 80 65 */	lis r3, lit_1071@ha /* 0x8064B8A0@ha */
/* 805F1D10  C0 03 B8 A0 */	lfs f0, lit_1071@l(r3)  /* 0x8064B8A0@l */
/* 805F1D14  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805F1D18  4C 41 13 82 */	cror 2, 1, 2
/* 805F1D1C  40 82 00 0C */	bne lbl_805F1D28
/* 805F1D20  38 00 00 02 */	li r0, 2
/* 805F1D24  48 00 00 08 */	b lbl_805F1D2C
lbl_805F1D28:
/* 805F1D28  38 00 00 01 */	li r0, 1
lbl_805F1D2C:
/* 805F1D2C  2C 00 00 02 */	cmpwi r0, 2
/* 805F1D30  41 82 00 0C */	beq lbl_805F1D3C
/* 805F1D34  2C 1F 00 00 */	cmpwi r31, 0
/* 805F1D38  41 82 00 C8 */	beq lbl_805F1E00
lbl_805F1D3C:
/* 805F1D3C  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 805F1D40  3C 60 80 65 */	lis r3, lit_654@ha /* 0x8064B848@ha */
/* 805F1D44  38 83 B8 48 */	addi r4, r3, lit_654@l /* 0x8064B848@l */
/* 805F1D48  C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 805F1D4C  EC 40 07 F2 */	fmuls f2, f0, f31
/* 805F1D50  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 805F1D54  3C 60 80 65 */	lis r3, lit_655@ha /* 0x8064B84C@ha */
/* 805F1D58  C0 E4 00 00 */	lfs f7, 0(r4)
/* 805F1D5C  EC 83 00 2A */	fadds f4, f3, f0
/* 805F1D60  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805F1D64  EC 67 00 B2 */	fmuls f3, f7, f2
/* 805F1D68  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 805F1D6C  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 805F1D70  38 A3 B8 4C */	addi r5, r3, lit_655@l /* 0x8064B84C@l */
/* 805F1D74  EC 01 00 32 */	fmuls f0, f1, f0
/* 805F1D78  3C 60 80 65 */	lis r3, lit_670@ha /* 0x8064B854@ha */
/* 805F1D7C  EC 64 18 2A */	fadds f3, f4, f3
/* 805F1D80  38 83 B8 54 */	addi r4, r3, lit_670@l /* 0x8064B854@l */
/* 805F1D84  EC 42 00 2A */	fadds f2, f2, f0
/* 805F1D88  3C 60 80 65 */	lis r3, data_8064B814@ha /* 0x8064B814@ha */
/* 805F1D8C  C0 C5 00 00 */	lfs f6, 0(r5)
/* 805F1D90  C0 24 00 00 */	lfs f1, 0(r4)
/* 805F1D94  EC 43 10 28 */	fsubs f2, f3, f2
/* 805F1D98  C0 03 B8 14 */	lfs f0, data_8064B814@l(r3)  /* 0x8064B814@l */
/* 805F1D9C  D0 5C 00 0C */	stfs f2, 0xc(r28)
/* 805F1DA0  C0 5C 00 14 */	lfs f2, 0x14(r28)
/* 805F1DA4  C0 7C 00 04 */	lfs f3, 4(r28)
/* 805F1DA8  EC A6 00 B2 */	fmuls f5, f6, f2
/* 805F1DAC  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 805F1DB0  C0 9E 00 30 */	lfs f4, 0x30(r30)
/* 805F1DB4  EC 43 00 B2 */	fmuls f2, f3, f2
/* 805F1DB8  EC 67 01 72 */	fmuls f3, f7, f5
/* 805F1DBC  EC 44 10 2A */	fadds f2, f4, f2
/* 805F1DC0  FC 60 18 50 */	fneg f3, f3
/* 805F1DC4  EC 43 10 28 */	fsubs f2, f3, f2
/* 805F1DC8  D0 5C 00 24 */	stfs f2, 0x24(r28)
/* 805F1DCC  C0 5C 00 14 */	lfs f2, 0x14(r28)
/* 805F1DD0  C0 7C 00 0C */	lfs f3, 0xc(r28)
/* 805F1DD4  EC 46 00 B2 */	fmuls f2, f6, f2
/* 805F1DD8  C0 9C 00 24 */	lfs f4, 0x24(r28)
/* 805F1DDC  EC 63 20 2A */	fadds f3, f3, f4
/* 805F1DE0  EC 47 00 B2 */	fmuls f2, f7, f2
/* 805F1DE4  EC 43 10 28 */	fsubs f2, f3, f2
/* 805F1DE8  EC 22 08 28 */	fsubs f1, f2, f1
/* 805F1DEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F1DF0  40 80 00 30 */	bge lbl_805F1E20
/* 805F1DF4  EC 04 08 28 */	fsubs f0, f4, f1
/* 805F1DF8  D0 1C 00 24 */	stfs f0, 0x24(r28)
/* 805F1DFC  48 00 00 24 */	b lbl_805F1E20
lbl_805F1E00:
/* 805F1E00  2C 00 00 01 */	cmpwi r0, 1
/* 805F1E04  40 82 00 1C */	bne lbl_805F1E20
/* 805F1E08  3C 60 80 65 */	lis r3, lit_1070@ha /* 0x8064B89C@ha */
/* 805F1E0C  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 805F1E10  C0 03 B8 9C */	lfs f0, lit_1070@l(r3)  /* 0x8064B89C@l */
/* 805F1E14  EC 02 00 28 */	fsubs f0, f2, f0
/* 805F1E18  EC 01 00 28 */	fsubs f0, f1, f0
/* 805F1E1C  D0 1C 00 0C */	stfs f0, 0xc(r28)
lbl_805F1E20:
/* 805F1E20  38 00 00 00 */	li r0, 0
/* 805F1E24  98 1C 00 01 */	stb r0, 1(r28)
/* 805F1E28  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 805F1E2C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 805F1E30  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 805F1E34  39 61 00 30 */	addi r11, r1, 0x30
/* 805F1E38  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 805F1E3C  4B AA 90 E1 */	bl func_8009AF1C
/* 805F1E40  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805F1E44  7C 08 03 A6 */	mtlr r0
/* 805F1E48  38 21 00 50 */	addi r1, r1, 0x50
/* 805F1E4C  4E 80 00 20 */	blr 
