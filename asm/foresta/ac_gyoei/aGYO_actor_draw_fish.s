lbl_805A2830:
/* 805A2830  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805A2834  7C 08 02 A6 */	mflr r0
/* 805A2838  90 01 00 54 */	stw r0, 0x54(r1)
/* 805A283C  39 61 00 50 */	addi r11, r1, 0x50
/* 805A2840  4B AF 86 85 */	bl func_8009AEC4
/* 805A2844  7C 9C 23 78 */	mr r28, r4
/* 805A2848  3C 80 80 6C */	lis r4, data_806C36D8@ha /* 0x806C36D8@ha */
/* 805A284C  80 1C 01 D8 */	lwz r0, 0x1d8(r28)
/* 805A2850  3B E4 36 D8 */	addi r31, r4, data_806C36D8@l /* 0x806C36D8@l */
/* 805A2854  7C 7B 1B 78 */	mr r27, r3
/* 805A2858  C0 5C 00 2C */	lfs f2, 0x2c(r28)
/* 805A285C  54 00 10 3A */	slwi r0, r0, 2
/* 805A2860  38 7F 04 C0 */	addi r3, r31, 0x4c0
/* 805A2864  7C 03 04 2E */	lfsx f0, r3, r0
/* 805A2868  7C BD 2B 78 */	mr r29, r5
/* 805A286C  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 805A2870  38 60 00 00 */	li r3, 0
/* 805A2874  EC 42 00 28 */	fsubs f2, f2, f0
/* 805A2878  C0 7C 00 30 */	lfs f3, 0x30(r28)
/* 805A287C  4B E6 9A 85 */	bl Matrix_translate
/* 805A2880  38 7D 20 4C */	addi r3, r29, 0x204c
/* 805A2884  38 80 00 01 */	li r4, 1
/* 805A2888  4B E6 9A 11 */	bl Matrix_mult
/* 805A288C  80 1C 01 D8 */	lwz r0, 0x1d8(r28)
/* 805A2890  2C 00 00 29 */	cmpwi r0, 0x29
/* 805A2894  40 80 01 58 */	bge lbl_805A29EC
/* 805A2898  A0 1C 02 40 */	lhz r0, 0x240(r28)
/* 805A289C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 805A28A0  41 82 01 4C */	beq lbl_805A29EC
/* 805A28A4  A8 7C 02 3A */	lha r3, 0x23a(r28)
/* 805A28A8  2C 03 00 00 */	cmpwi r3, 0
/* 805A28AC  40 82 00 0C */	bne lbl_805A28B8
/* 805A28B0  38 00 00 00 */	li r0, 0
/* 805A28B4  48 00 00 10 */	b lbl_805A28C4
lbl_805A28B8:
/* 805A28B8  38 03 FF FF */	addi r0, r3, -1
/* 805A28BC  B0 1C 02 3A */	sth r0, 0x23a(r28)
/* 805A28C0  7C 00 07 34 */	extsh r0, r0
lbl_805A28C4:
/* 805A28C4  2C 00 00 00 */	cmpwi r0, 0
/* 805A28C8  41 82 00 3C */	beq lbl_805A2904
/* 805A28CC  80 1C 01 D8 */	lwz r0, 0x1d8(r28)
/* 805A28D0  38 7F 03 AC */	addi r3, r31, 0x3ac
/* 805A28D4  54 00 10 3A */	slwi r0, r0, 2
/* 805A28D8  7C 03 00 2E */	lwzx r0, r3, r0
/* 805A28DC  2C 00 00 01 */	cmpwi r0, 1
/* 805A28E0  40 82 00 14 */	bne lbl_805A28F4
/* 805A28E4  A8 7C 02 36 */	lha r3, 0x236(r28)
/* 805A28E8  38 03 0E 38 */	addi r0, r3, 0xe38
/* 805A28EC  B0 1C 02 36 */	sth r0, 0x236(r28)
/* 805A28F0  48 00 00 BC */	b lbl_805A29AC
lbl_805A28F4:
/* 805A28F4  A8 7C 02 36 */	lha r3, 0x236(r28)
/* 805A28F8  38 03 0A AA */	addi r0, r3, 0xaaa
/* 805A28FC  B0 1C 02 36 */	sth r0, 0x236(r28)
/* 805A2900  48 00 00 AC */	b lbl_805A29AC
lbl_805A2904:
/* 805A2904  A8 7C 02 3C */	lha r3, 0x23c(r28)
/* 805A2908  2C 03 00 00 */	cmpwi r3, 0
/* 805A290C  40 82 00 0C */	bne lbl_805A2918
/* 805A2910  38 00 00 00 */	li r0, 0
/* 805A2914  48 00 00 10 */	b lbl_805A2924
lbl_805A2918:
/* 805A2918  38 03 FF FF */	addi r0, r3, -1
/* 805A291C  B0 1C 02 3C */	sth r0, 0x23c(r28)
/* 805A2920  7C 00 07 34 */	extsh r0, r0
lbl_805A2924:
/* 805A2924  2C 00 00 00 */	cmpwi r0, 0
/* 805A2928  40 82 00 84 */	bne lbl_805A29AC
/* 805A292C  4B AB A3 C9 */	bl fqrand
/* 805A2930  3C 80 80 65 */	lis r4, lit_748@ha /* 0x8064A394@ha */
/* 805A2934  38 7F 03 AC */	addi r3, r31, 0x3ac
/* 805A2938  C0 04 A3 94 */	lfs f0, lit_748@l(r4)  /* 0x8064A394@l */
/* 805A293C  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A2940  FC 00 00 1E */	fctiwz f0, f0
/* 805A2944  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805A2948  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805A294C  B0 1C 02 3C */	sth r0, 0x23c(r28)
/* 805A2950  80 1C 01 D8 */	lwz r0, 0x1d8(r28)
/* 805A2954  54 00 10 3A */	slwi r0, r0, 2
/* 805A2958  7C 03 00 2E */	lwzx r0, r3, r0
/* 805A295C  2C 00 00 01 */	cmpwi r0, 1
/* 805A2960  40 82 00 10 */	bne lbl_805A2970
/* 805A2964  38 00 00 09 */	li r0, 9
/* 805A2968  B0 1C 02 3A */	sth r0, 0x23a(r28)
/* 805A296C  48 00 00 0C */	b lbl_805A2978
lbl_805A2970:
/* 805A2970  38 00 00 0C */	li r0, 0xc
/* 805A2974  B0 1C 02 3A */	sth r0, 0x23a(r28)
lbl_805A2978:
/* 805A2978  4B AB A3 7D */	bl fqrand
/* 805A297C  3C 80 80 65 */	lis r4, lit_749@ha /* 0x8064A398@ha */
/* 805A2980  3C 60 80 65 */	lis r3, lit_750@ha /* 0x8064A39C@ha */
/* 805A2984  C0 44 A3 98 */	lfs f2, lit_749@l(r4)  /* 0x8064A398@l */
/* 805A2988  C0 03 A3 9C */	lfs f0, lit_750@l(r3)  /* 0x8064A39C@l */
/* 805A298C  EC 22 00 72 */	fmuls f1, f2, f1
/* 805A2990  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A2994  40 80 00 10 */	bge lbl_805A29A4
/* 805A2998  38 00 00 00 */	li r0, 0
/* 805A299C  B0 1C 02 36 */	sth r0, 0x236(r28)
/* 805A29A0  48 00 00 0C */	b lbl_805A29AC
lbl_805A29A4:
/* 805A29A4  38 00 80 00 */	li r0, -32768
/* 805A29A8  B0 1C 02 36 */	sth r0, 0x236(r28)
lbl_805A29AC:
/* 805A29AC  A8 7C 02 36 */	lha r3, 0x236(r28)
/* 805A29B0  4B E1 81 41 */	bl sin_s
/* 805A29B4  3C 80 80 65 */	lis r4, lit_752@ha /* 0x8064A3A4@ha */
/* 805A29B8  3C 60 80 65 */	lis r3, lit_751@ha /* 0x8064A3A0@ha */
/* 805A29BC  38 A4 A3 A4 */	addi r5, r4, lit_752@l /* 0x8064A3A4@l */
/* 805A29C0  C0 03 A3 A0 */	lfs f0, lit_751@l(r3)  /* 0x8064A3A0@l */
/* 805A29C4  C0 45 00 00 */	lfs f2, 0(r5)
/* 805A29C8  38 80 00 01 */	li r4, 1
/* 805A29CC  EC 22 00 72 */	fmuls f1, f2, f1
/* 805A29D0  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A29D4  FC 00 00 1E */	fctiwz f0, f0
/* 805A29D8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805A29DC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805A29E0  B0 1C 02 38 */	sth r0, 0x238(r28)
/* 805A29E4  A8 7C 02 38 */	lha r3, 0x238(r28)
/* 805A29E8  4B E6 9C 75 */	bl Matrix_RotateY
lbl_805A29EC:
/* 805A29EC  C0 3C 00 5C */	lfs f1, 0x5c(r28)
/* 805A29F0  38 60 00 01 */	li r3, 1
/* 805A29F4  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 805A29F8  C0 7C 00 64 */	lfs f3, 0x64(r28)
/* 805A29FC  4B E6 99 F1 */	bl Matrix_scale
/* 805A2A00  A0 1C 02 40 */	lhz r0, 0x240(r28)
/* 805A2A04  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 805A2A08  41 82 00 88 */	beq lbl_805A2A90
/* 805A2A0C  A8 1C 02 30 */	lha r0, 0x230(r28)
/* 805A2A10  2C 00 00 00 */	cmpwi r0, 0
/* 805A2A14  41 81 00 7C */	bgt lbl_805A2A90
/* 805A2A18  A8 7C 02 32 */	lha r3, 0x232(r28)
/* 805A2A1C  2C 03 00 00 */	cmpwi r3, 0
/* 805A2A20  40 82 00 0C */	bne lbl_805A2A2C
/* 805A2A24  38 00 00 00 */	li r0, 0
/* 805A2A28  48 00 00 10 */	b lbl_805A2A38
lbl_805A2A2C:
/* 805A2A2C  38 03 FF FF */	addi r0, r3, -1
/* 805A2A30  B0 1C 02 32 */	sth r0, 0x232(r28)
/* 805A2A34  7C 00 07 34 */	extsh r0, r0
lbl_805A2A38:
/* 805A2A38  2C 00 00 00 */	cmpwi r0, 0
/* 805A2A3C  40 82 00 4C */	bne lbl_805A2A88
/* 805A2A40  4B AB A2 B5 */	bl fqrand
/* 805A2A44  3C 60 80 65 */	lis r3, lit_753@ha /* 0x8064A3A8@ha */
/* 805A2A48  C0 03 A3 A8 */	lfs f0, lit_753@l(r3)  /* 0x8064A3A8@l */
/* 805A2A4C  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A2A50  FC 00 00 1E */	fctiwz f0, f0
/* 805A2A54  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805A2A58  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 805A2A5C  38 03 00 01 */	addi r0, r3, 1
/* 805A2A60  B0 1C 02 30 */	sth r0, 0x230(r28)
/* 805A2A64  4B AB A2 C9 */	bl fqrand2
/* 805A2A68  3C 60 80 65 */	lis r3, lit_754@ha /* 0x8064A3AC@ha */
/* 805A2A6C  C0 03 A3 AC */	lfs f0, lit_754@l(r3)  /* 0x8064A3AC@l */
/* 805A2A70  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A2A74  FC 00 00 1E */	fctiwz f0, f0
/* 805A2A78  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805A2A7C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 805A2A80  38 03 00 0F */	addi r0, r3, 0xf
/* 805A2A84  B0 1C 02 32 */	sth r0, 0x232(r28)
lbl_805A2A88:
/* 805A2A88  3B 40 00 00 */	li r26, 0
/* 805A2A8C  48 00 00 10 */	b lbl_805A2A9C
lbl_805A2A90:
/* 805A2A90  7F 83 E3 78 */	mr r3, r28
/* 805A2A94  4B FF FC E9 */	bl func_805A277C
/* 805A2A98  7C 7A 1B 78 */	mr r26, r3
lbl_805A2A9C:
/* 805A2A9C  83 DB 02 D0 */	lwz r30, 0x2d0(r27)
/* 805A2AA0  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 805A2AA4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 805A2AA8  7F 63 DB 78 */	mr r3, r27
/* 805A2AAC  90 1E 00 00 */	stw r0, 0(r30)
/* 805A2AB0  7F D9 F3 78 */	mr r25, r30
/* 805A2AB4  3B DE 00 08 */	addi r30, r30, 8
/* 805A2AB8  4B E6 A9 1D */	bl _Matrix_to_Mtx_new
/* 805A2ABC  6F 44 80 00 */	xoris r4, r26, 0x8000
/* 805A2AC0  3C 00 43 30 */	lis r0, 0x4330
/* 805A2AC4  90 01 00 20 */	stw r0, 0x20(r1)
/* 805A2AC8  3C A0 80 65 */	lis r5, lit_757@ha /* 0x8064A3B4@ha */
/* 805A2ACC  7F C7 F3 78 */	mr r7, r30
/* 805A2AD0  3C 00 DE 00 */	lis r0, 0xde00
/* 805A2AD4  90 81 00 24 */	stw r4, 0x24(r1)
/* 805A2AD8  38 85 A3 B4 */	addi r4, r5, lit_757@l /* 0x8064A3B4@l */
/* 805A2ADC  C8 24 00 00 */	lfd f1, 0(r4)
/* 805A2AE0  3C A0 80 65 */	lis r5, lit_618@ha /* 0x8064A38C@ha */
/* 805A2AE4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805A2AE8  38 DF 02 28 */	addi r6, r31, 0x228
/* 805A2AEC  C0 45 A3 8C */	lfs f2, lit_618@l(r5)  /* 0x8064A38C@l */
/* 805A2AF0  3B DE 00 08 */	addi r30, r30, 8
/* 805A2AF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 805A2AF8  90 79 00 04 */	stw r3, 4(r25)
/* 805A2AFC  7F 83 E3 78 */	mr r3, r28
/* 805A2B00  7F A4 EB 78 */	mr r4, r29
/* 805A2B04  90 07 00 00 */	stw r0, 0(r7)
/* 805A2B08  38 A1 00 08 */	addi r5, r1, 8
/* 805A2B0C  EC 02 00 32 */	fmuls f0, f2, f0
/* 805A2B10  80 1C 01 D8 */	lwz r0, 0x1d8(r28)
/* 805A2B14  54 00 10 3A */	slwi r0, r0, 2
/* 805A2B18  FC 00 00 1E */	fctiwz f0, f0
/* 805A2B1C  7C C6 00 2E */	lwzx r6, r6, r0
/* 805A2B20  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805A2B24  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805A2B28  54 00 10 3A */	slwi r0, r0, 2
/* 805A2B2C  7C 06 00 2E */	lwzx r0, r6, r0
/* 805A2B30  90 07 00 04 */	stw r0, 4(r7)
/* 805A2B34  93 DB 02 D0 */	stw r30, 0x2d0(r27)
/* 805A2B38  80 FF 05 74 */	lwz r7, 0x574(r31)
/* 805A2B3C  80 DF 05 78 */	lwz r6, 0x578(r31)
/* 805A2B40  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 805A2B44  90 E1 00 08 */	stw r7, 8(r1)
/* 805A2B48  90 C1 00 0C */	stw r6, 0xc(r1)
/* 805A2B4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A2B50  4B DD 43 95 */	bl mAc_UnagiActorShadow
/* 805A2B54  39 61 00 50 */	addi r11, r1, 0x50
/* 805A2B58  4B AF 83 B9 */	bl func_8009AF10
/* 805A2B5C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805A2B60  7C 08 03 A6 */	mtlr r0
/* 805A2B64  38 21 00 50 */	addi r1, r1, 0x50
/* 805A2B68  4E 80 00 20 */	blr 
