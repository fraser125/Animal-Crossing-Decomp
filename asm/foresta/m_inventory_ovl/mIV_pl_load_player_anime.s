lbl_805E18BC:
/* 805E18BC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E18C0  7C 08 02 A6 */	mflr r0
/* 805E18C4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E18C8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805E18CC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805E18D0  39 61 00 30 */	addi r11, r1, 0x30
/* 805E18D4  4B AB 95 F1 */	bl func_8009AEC4
/* 805E18D8  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805E18DC  FF E0 08 90 */	fmr f31, f1
/* 805E18E0  3B 20 00 28 */	li r25, 0x28
/* 805E18E4  AB 5F 00 04 */	lha r26, 4(r31)
/* 805E18E8  83 DF 09 88 */	lwz r30, 0x988(r31)
/* 805E18EC  AB BF 00 06 */	lha r29, 6(r31)
/* 805E18F0  7F 43 D3 78 */	mr r3, r26
/* 805E18F4  4B FF F9 BD */	bl func_805E12B0
/* 805E18F8  7F 43 D3 78 */	mr r3, r26
/* 805E18FC  4B FF FF 85 */	bl mIV_Get_pl_main_anime
/* 805E1900  2C 1D 00 28 */	cmpwi r29, 0x28
/* 805E1904  7C 7C 1B 78 */	mr r28, r3
/* 805E1908  41 82 00 20 */	beq lbl_805E1928
/* 805E190C  2C 1A 00 03 */	cmpwi r26, 3
/* 805E1910  40 82 00 0C */	bne lbl_805E191C
/* 805E1914  3B 20 00 01 */	li r25, 1
/* 805E1918  48 00 00 10 */	b lbl_805E1928
lbl_805E191C:
/* 805E191C  2C 1A 00 00 */	cmpwi r26, 0
/* 805E1920  40 82 00 08 */	bne lbl_805E1928
/* 805E1924  7F B9 EB 78 */	mr r25, r29
lbl_805E1928:
/* 805E1928  2C 19 00 28 */	cmpwi r25, 0x28
/* 805E192C  41 82 00 1C */	beq lbl_805E1948
/* 805E1930  7F 23 07 34 */	extsh r3, r25
/* 805E1934  4B FF FE 99 */	bl mIV_Get_player_com_part_table_index
/* 805E1938  7C 64 1B 78 */	mr r4, r3
/* 805E193C  38 7F 00 12 */	addi r3, r31, 0x12
/* 805E1940  4B DF 7D E5 */	bl mPlib_DMA_player_Part_Table
/* 805E1944  48 00 00 10 */	b lbl_805E1954
lbl_805E1948:
/* 805E1948  38 7F 00 12 */	addi r3, r31, 0x12
/* 805E194C  38 80 00 00 */	li r4, 0
/* 805E1950  4B DF 7D D5 */	bl mPlib_DMA_player_Part_Table
lbl_805E1954:
/* 805E1954  2C 1A 00 02 */	cmpwi r26, 2
/* 805E1958  7F 40 00 34 */	cntlzw r0, r26
/* 805E195C  54 1B D9 7E */	srwi r27, r0, 5
/* 805E1960  40 82 00 30 */	bne lbl_805E1990
/* 805E1964  3C 60 80 65 */	lis r3, lit_741@ha /* 0x8064B3F4@ha */
/* 805E1968  FC 60 F8 90 */	fmr f3, f31
/* 805E196C  38 83 B3 F4 */	addi r4, r3, lit_741@l /* 0x8064B3F4@l */
/* 805E1970  7F C3 F3 78 */	mr r3, r30
/* 805E1974  C0 24 00 00 */	lfs f1, 0(r4)
/* 805E1978  7F 84 E3 78 */	mr r4, r28
/* 805E197C  7F 66 DB 78 */	mr r6, r27
/* 805E1980  FC 40 08 90 */	fmr f2, f1
/* 805E1984  38 A0 00 00 */	li r5, 0
/* 805E1988  4B D8 FF 0D */	bl cKF_SkeletonInfo_R_init_standard_setframeandspeedandmorphandmode
/* 805E198C  48 00 00 2C */	b lbl_805E19B8
lbl_805E1990:
/* 805E1990  3C 80 80 65 */	lis r4, lit_741@ha /* 0x8064B3F4@ha */
/* 805E1994  3C 60 80 65 */	lis r3, lit_742@ha /* 0x8064B3F8@ha */
/* 805E1998  C0 24 B3 F4 */	lfs f1, lit_741@l(r4)  /* 0x8064B3F4@l */
/* 805E199C  FC 60 F8 90 */	fmr f3, f31
/* 805E19A0  C0 43 B3 F8 */	lfs f2, lit_742@l(r3)  /* 0x8064B3F8@l */
/* 805E19A4  7F C3 F3 78 */	mr r3, r30
/* 805E19A8  7F 84 E3 78 */	mr r4, r28
/* 805E19AC  7F 66 DB 78 */	mr r6, r27
/* 805E19B0  38 A0 00 00 */	li r5, 0
/* 805E19B4  4B D8 FE E1 */	bl cKF_SkeletonInfo_R_init_standard_setframeandspeedandmorphandmode
lbl_805E19B8:
/* 805E19B8  2C 19 00 28 */	cmpwi r25, 0x28
/* 805E19BC  41 82 00 18 */	beq lbl_805E19D4
/* 805E19C0  7F 23 07 34 */	extsh r3, r25
/* 805E19C4  4B FF FD C1 */	bl mIV_Get_player_com_animation_index
/* 805E19C8  7F 23 07 34 */	extsh r3, r25
/* 805E19CC  4B FF FD DD */	bl mIV_Get_pl_com_anime
/* 805E19D0  7C 7C 1B 78 */	mr r28, r3
lbl_805E19D4:
/* 805E19D4  2C 1A 00 02 */	cmpwi r26, 2
/* 805E19D8  40 82 00 2C */	bne lbl_805E1A04
/* 805E19DC  3C 60 80 65 */	lis r3, lit_741@ha /* 0x8064B3F4@ha */
/* 805E19E0  FC 60 F8 90 */	fmr f3, f31
/* 805E19E4  C0 23 B3 F4 */	lfs f1, lit_741@l(r3)  /* 0x8064B3F4@l */
/* 805E19E8  7F 84 E3 78 */	mr r4, r28
/* 805E19EC  7F 66 DB 78 */	mr r6, r27
/* 805E19F0  38 7E 00 70 */	addi r3, r30, 0x70
/* 805E19F4  FC 40 08 90 */	fmr f2, f1
/* 805E19F8  38 A0 00 00 */	li r5, 0
/* 805E19FC  4B D8 FE 99 */	bl cKF_SkeletonInfo_R_init_standard_setframeandspeedandmorphandmode
/* 805E1A00  48 00 00 2C */	b lbl_805E1A2C
lbl_805E1A04:
/* 805E1A04  3C 80 80 65 */	lis r4, lit_741@ha /* 0x8064B3F4@ha */
/* 805E1A08  3C 60 80 65 */	lis r3, lit_742@ha /* 0x8064B3F8@ha */
/* 805E1A0C  C0 24 B3 F4 */	lfs f1, lit_741@l(r4)  /* 0x8064B3F4@l */
/* 805E1A10  FC 60 F8 90 */	fmr f3, f31
/* 805E1A14  C0 43 B3 F8 */	lfs f2, lit_742@l(r3)  /* 0x8064B3F8@l */
/* 805E1A18  7F 84 E3 78 */	mr r4, r28
/* 805E1A1C  7F 66 DB 78 */	mr r6, r27
/* 805E1A20  38 7E 00 70 */	addi r3, r30, 0x70
/* 805E1A24  38 A0 00 00 */	li r5, 0
/* 805E1A28  4B D8 FE 6D */	bl cKF_SkeletonInfo_R_init_standard_setframeandspeedandmorphandmode
lbl_805E1A2C:
/* 805E1A2C  7F C3 F3 78 */	mr r3, r30
/* 805E1A30  38 9E 00 70 */	addi r4, r30, 0x70
/* 805E1A34  38 BF 00 12 */	addi r5, r31, 0x12
/* 805E1A38  4B D9 05 C9 */	bl cKF_SkeletonInfo_R_combine_play
/* 805E1A3C  A8 1F 00 0C */	lha r0, 0xc(r31)
/* 805E1A40  2C 1D 00 02 */	cmpwi r29, 2
/* 805E1A44  68 00 00 01 */	xori r0, r0, 1
/* 805E1A48  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 805E1A4C  A8 9F 00 0C */	lha r4, 0xc(r31)
/* 805E1A50  40 82 00 50 */	bne lbl_805E1AA0
/* 805E1A54  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805E1A58  38 00 00 00 */	li r0, 0
/* 805E1A5C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805E1A60  3C 63 00 02 */	addis r3, r3, 2
/* 805E1A64  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805E1A68  A0 A3 04 A4 */	lhz r5, 0x4a4(r3)
/* 805E1A6C  28 05 22 04 */	cmplwi r5, 0x2204
/* 805E1A70  41 80 00 10 */	blt lbl_805E1A80
/* 805E1A74  28 05 22 2B */	cmplwi r5, 0x222b
/* 805E1A78  41 81 00 08 */	bgt lbl_805E1A80
/* 805E1A7C  38 00 00 01 */	li r0, 1
lbl_805E1A80:
/* 805E1A80  20 60 00 00 */	subfic r3, r0, 0
/* 805E1A84  54 80 08 3C */	slwi r0, r4, 1
/* 805E1A88  7C 83 19 10 */	subfe r4, r3, r3
/* 805E1A8C  38 65 DD FC */	addi r3, r5, -8708
/* 805E1A90  7C 64 20 38 */	and r4, r3, r4
/* 805E1A94  7C 7F 02 14 */	add r3, r31, r0
/* 805E1A98  B0 83 00 0E */	sth r4, 0xe(r3)
/* 805E1A9C  48 00 01 28 */	b lbl_805E1BC4
lbl_805E1AA0:
/* 805E1AA0  2C 1D 00 28 */	cmpwi r29, 0x28
/* 805E1AA4  41 82 01 20 */	beq lbl_805E1BC4
/* 805E1AA8  7F A3 EB 78 */	mr r3, r29
/* 805E1AAC  4B FF FC 19 */	bl mIV_Get_player_item_shape_index
/* 805E1AB0  7F A3 EB 78 */	mr r3, r29
/* 805E1AB4  4B FF FC 69 */	bl mIV_Get_pl_item_skeleton
/* 805E1AB8  28 03 00 00 */	cmplwi r3, 0
/* 805E1ABC  41 82 01 08 */	beq lbl_805E1BC4
/* 805E1AC0  7C 64 1B 78 */	mr r4, r3
/* 805E1AC4  38 7E 02 24 */	addi r3, r30, 0x224
/* 805E1AC8  38 DE 02 94 */	addi r6, r30, 0x294
/* 805E1ACC  38 FE 02 C4 */	addi r7, r30, 0x2c4
/* 805E1AD0  38 A0 00 00 */	li r5, 0
/* 805E1AD4  4B D8 EF C1 */	bl cKF_SkeletonInfo_R_ct
/* 805E1AD8  7F A3 EB 78 */	mr r3, r29
/* 805E1ADC  4B FF FD 19 */	bl mIV_Get_player_item_anime_index
/* 805E1AE0  7F A3 EB 78 */	mr r3, r29
/* 805E1AE4  4B FF FD 61 */	bl mIV_Get_pl_item_anime
/* 805E1AE8  2C 1D 00 11 */	cmpwi r29, 0x11
/* 805E1AEC  41 80 00 70 */	blt lbl_805E1B5C
/* 805E1AF0  2C 1D 00 18 */	cmpwi r29, 0x18
/* 805E1AF4  41 81 00 68 */	bgt lbl_805E1B5C
/* 805E1AF8  A8 83 00 12 */	lha r4, 0x12(r3)
/* 805E1AFC  3C 00 43 30 */	lis r0, 0x4330
/* 805E1B00  3C E0 80 65 */	lis r7, lit_741@ha /* 0x8064B3F4@ha */
/* 805E1B04  3C C0 80 65 */	lis r6, lit_746@ha /* 0x8064B404@ha */
/* 805E1B08  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 805E1B0C  C0 27 B3 F4 */	lfs f1, lit_741@l(r7)  /* 0x8064B3F4@l */
/* 805E1B10  90 81 00 0C */	stw r4, 0xc(r1)
/* 805E1B14  3C A0 80 65 */	lis r5, lit_743@ha /* 0x8064B3FC@ha */
/* 805E1B18  C8 46 B4 04 */	lfd f2, lit_746@l(r6)  /* 0x8064B404@l */
/* 805E1B1C  38 C5 B3 FC */	addi r6, r5, lit_743@l /* 0x8064B3FC@l */
/* 805E1B20  90 01 00 08 */	stw r0, 8(r1)
/* 805E1B24  3C 80 80 65 */	lis r4, lit_744@ha /* 0x8064B400@ha */
/* 805E1B28  38 A4 B4 00 */	addi r5, r4, lit_744@l /* 0x8064B400@l */
/* 805E1B2C  C0 86 00 00 */	lfs f4, 0(r6)
/* 805E1B30  C8 01 00 08 */	lfd f0, 8(r1)
/* 805E1B34  FC 60 08 90 */	fmr f3, f1
/* 805E1B38  C0 A5 00 00 */	lfs f5, 0(r5)
/* 805E1B3C  7C 65 1B 78 */	mr r5, r3
/* 805E1B40  EC 40 10 28 */	fsubs f2, f0, f2
/* 805E1B44  80 9E 02 3C */	lwz r4, 0x23c(r30)
/* 805E1B48  38 7E 02 24 */	addi r3, r30, 0x224
/* 805E1B4C  38 C0 00 01 */	li r6, 1
/* 805E1B50  38 E0 00 00 */	li r7, 0
/* 805E1B54  4B D8 F1 81 */	bl cKF_SkeletonInfo_R_init
/* 805E1B58  48 00 00 64 */	b lbl_805E1BBC
lbl_805E1B5C:
/* 805E1B5C  A8 83 00 12 */	lha r4, 0x12(r3)
/* 805E1B60  3C 00 43 30 */	lis r0, 0x4330
/* 805E1B64  3C E0 80 65 */	lis r7, lit_741@ha /* 0x8064B3F4@ha */
/* 805E1B68  3C C0 80 65 */	lis r6, lit_746@ha /* 0x8064B404@ha */
/* 805E1B6C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 805E1B70  C0 27 B3 F4 */	lfs f1, lit_741@l(r7)  /* 0x8064B3F4@l */
/* 805E1B74  90 81 00 0C */	stw r4, 0xc(r1)
/* 805E1B78  3C A0 80 65 */	lis r5, lit_742@ha /* 0x8064B3F8@ha */
/* 805E1B7C  C8 46 B4 04 */	lfd f2, lit_746@l(r6)  /* 0x8064B404@l */
/* 805E1B80  38 C5 B3 F8 */	addi r6, r5, lit_742@l /* 0x8064B3F8@l */
/* 805E1B84  90 01 00 08 */	stw r0, 8(r1)
/* 805E1B88  3C 80 80 65 */	lis r4, lit_744@ha /* 0x8064B400@ha */
/* 805E1B8C  38 A4 B4 00 */	addi r5, r4, lit_744@l /* 0x8064B400@l */
/* 805E1B90  C0 86 00 00 */	lfs f4, 0(r6)
/* 805E1B94  C8 01 00 08 */	lfd f0, 8(r1)
/* 805E1B98  FC 60 08 90 */	fmr f3, f1
/* 805E1B9C  C0 A5 00 00 */	lfs f5, 0(r5)
/* 805E1BA0  7C 65 1B 78 */	mr r5, r3
/* 805E1BA4  EC 40 10 28 */	fsubs f2, f0, f2
/* 805E1BA8  80 9E 02 3C */	lwz r4, 0x23c(r30)
/* 805E1BAC  38 7E 02 24 */	addi r3, r30, 0x224
/* 805E1BB0  38 C0 00 01 */	li r6, 1
/* 805E1BB4  38 E0 00 00 */	li r7, 0
/* 805E1BB8  4B D8 F1 1D */	bl cKF_SkeletonInfo_R_init
lbl_805E1BBC:
/* 805E1BBC  38 7E 02 24 */	addi r3, r30, 0x224
/* 805E1BC0  4B D8 F4 55 */	bl cKF_SkeletonInfo_R_play
lbl_805E1BC4:
/* 805E1BC4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805E1BC8  39 61 00 30 */	addi r11, r1, 0x30
/* 805E1BCC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805E1BD0  4B AB 93 41 */	bl func_8009AF10
/* 805E1BD4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E1BD8  7C 08 03 A6 */	mtlr r0
/* 805E1BDC  38 21 00 40 */	addi r1, r1, 0x40
/* 805E1BE0  4E 80 00 20 */	blr 
