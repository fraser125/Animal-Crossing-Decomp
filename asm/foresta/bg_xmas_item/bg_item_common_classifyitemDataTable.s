lbl_804CB840:
/* 804CB840  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 804CB844  7C 08 02 A6 */	mflr r0
/* 804CB848  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 804CB84C  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 804CB850  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 804CB854  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 804CB858  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 804CB85C  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 804CB860  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 804CB864  39 61 00 90 */	addi r11, r1, 0x90
/* 804CB868  4B BC F6 31 */	bl __save_gpr
/* 804CB86C  90 61 00 08 */	stw r3, 8(r1)
/* 804CB870  7C 91 23 78 */	mr r17, r4
/* 804CB874  7C AE 2B 78 */	mr r14, r5
/* 804CB878  7C CF 33 78 */	mr r15, r6
/* 804CB87C  91 01 00 0C */	stw r8, 0xc(r1)
/* 804CB880  7C F0 3B 78 */	mr r16, r7
/* 804CB884  4B F4 09 51 */	bl Matrix_push
/* 804CB888  8A 4E 00 00 */	lbz r18, 0(r14)
/* 804CB88C  3B 11 00 48 */	addi r24, r17, 0x48
/* 804CB890  8A 6E 00 01 */	lbz r19, 1(r14)
/* 804CB894  3A A0 00 01 */	li r21, 1
/* 804CB898  7E 52 07 74 */	extsb r18, r18
/* 804CB89C  C3 EE 00 04 */	lfs f31, 4(r14)
/* 804CB8A0  7E 73 07 74 */	extsb r19, r19
/* 804CB8A4  C3 CE 00 08 */	lfs f30, 8(r14)
/* 804CB8A8  56 51 20 36 */	slwi r17, r18, 4
/* 804CB8AC  56 74 20 36 */	slwi r20, r19, 4
/* 804CB8B0  7E 23 8B 78 */	mr r3, r17
/* 804CB8B4  7E 84 A3 78 */	mr r4, r20
/* 804CB8B8  4B ED A7 F5 */	bl mFI_UtNum2BaseHeight
/* 804CB8BC  3C 80 80 64 */	lis r4, lit_845@ha /* 0x80646204@ha */
/* 804CB8C0  7E 43 93 78 */	mr r3, r18
/* 804CB8C4  38 A4 62 04 */	addi r5, r4, lit_845@l /* 0x80646204@l */
/* 804CB8C8  7E 64 9B 78 */	mr r4, r19
/* 804CB8CC  C0 05 00 00 */	lfs f0, 0(r5)
/* 804CB8D0  EF A0 08 2A */	fadds f29, f0, f1
/* 804CB8D4  4B ED 98 E5 */	bl mFI_GetBlockNum
/* 804CB8D8  3C A0 81 16 */	lis r5, g_fdinfo@ha /* 0x81167A58@ha */
/* 804CB8DC  7E 84 A3 78 */	mr r4, r20
/* 804CB8E0  38 C5 7A 58 */	addi r6, r5, g_fdinfo@l /* 0x81167A58@l */
/* 804CB8E4  1C A3 06 14 */	mulli r5, r3, 0x614
/* 804CB8E8  80 C6 00 00 */	lwz r6, 0(r6)
/* 804CB8EC  7E 23 8B 78 */	mr r3, r17
/* 804CB8F0  80 06 00 74 */	lwz r0, 0x74(r6)
/* 804CB8F4  3A 25 04 20 */	addi r17, r5, 0x420
/* 804CB8F8  7E 20 8A 14 */	add r17, r0, r17
/* 804CB8FC  4B ED AC F5 */	bl mFI_UtNum2UtCol
/* 804CB900  7C 60 1B 78 */	mr r0, r3
/* 804CB904  7E 43 93 78 */	mr r3, r18
/* 804CB908  7C 16 03 78 */	mr r22, r0
/* 804CB90C  7E 64 9B 78 */	mr r4, r19
/* 804CB910  4B ED D3 21 */	bl mFI_GetDepositP
/* 804CB914  3C A0 80 6A */	lis r5, rnd_data_x@ha /* 0x8069B81C@ha */
/* 804CB918  3C 80 80 6A */	lis r4, rnd_data_z@ha /* 0x8069B85C@ha */
/* 804CB91C  82 EE 00 0C */	lwz r23, 0xc(r14)
/* 804CB920  7C 72 1B 78 */	mr r18, r3
/* 804CB924  3B 85 B8 1C */	addi r28, r5, rnd_data_x@l /* 0x8069B81C@l */
/* 804CB928  39 C4 B8 5C */	addi r14, r4, rnd_data_z@l /* 0x8069B85C@l */
/* 804CB92C  3A 80 00 00 */	li r20, 0
/* 804CB930  3B E0 00 00 */	li r31, 0
lbl_804CB934:
/* 804CB934  56 80 17 3A */	rlwinm r0, r20, 2, 0x1c, 0x1d
/* 804CB938  3A 60 00 00 */	li r19, 0
/* 804CB93C  7F 7C 02 14 */	add r27, r28, r0
/* 804CB940  3B C0 00 00 */	li r30, 0
/* 804CB944  7F 4E 02 14 */	add r26, r14, r0
lbl_804CB948:
/* 804CB948  A0 77 00 00 */	lhz r3, 0(r23)
/* 804CB94C  4B FF AA E5 */	bl bIT_individual_draw_check
/* 804CB950  2C 03 00 00 */	cmpwi r3, 0
/* 804CB954  41 82 01 C0 */	beq lbl_804CBB14
/* 804CB958  A0 77 00 00 */	lhz r3, 0(r23)
/* 804CB95C  7E C5 B3 78 */	mr r5, r22
/* 804CB960  7E 06 83 78 */	mr r6, r16
/* 804CB964  38 81 00 1C */	addi r4, r1, 0x1c
/* 804CB968  3B 20 00 01 */	li r25, 1
/* 804CB96C  4B FF ED 31 */	bl fg_no2fg_type
/* 804CB970  28 12 00 00 */	cmplwi r18, 0
/* 804CB974  41 82 00 20 */	beq lbl_804CB994
/* 804CB978  A0 12 00 00 */	lhz r0, 0(r18)
/* 804CB97C  7C 00 9E 30 */	sraw r0, r0, r19
/* 804CB980  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804CB984  41 82 00 10 */	beq lbl_804CB994
/* 804CB988  A8 01 00 1E */	lha r0, 0x1e(r1)
/* 804CB98C  2C 00 00 7B */	cmpwi r0, 0x7b
/* 804CB990  40 82 00 2C */	bne lbl_804CB9BC
lbl_804CB994:
/* 804CB994  A0 77 00 00 */	lhz r3, 0(r23)
/* 804CB998  28 03 00 00 */	cmplwi r3, 0
/* 804CB99C  41 82 00 18 */	beq lbl_804CB9B4
/* 804CB9A0  7E C5 B3 78 */	mr r5, r22
/* 804CB9A4  7E 06 83 78 */	mr r6, r16
/* 804CB9A8  38 81 00 1C */	addi r4, r1, 0x1c
/* 804CB9AC  4B FF EC F1 */	bl fg_no2fg_type
/* 804CB9B0  48 00 00 64 */	b lbl_804CBA14
lbl_804CB9B4:
/* 804CB9B4  3B 20 00 00 */	li r25, 0
/* 804CB9B8  48 00 00 5C */	b lbl_804CBA14
lbl_804CB9BC:
/* 804CB9BC  7E C3 B3 78 */	mr r3, r22
/* 804CB9C0  4B EC 48 C9 */	bl mCoBG_GetHoleNumber_ClData
/* 804CB9C4  7C 7D 1B 79 */	or. r29, r3, r3
/* 804CB9C8  41 80 00 48 */	blt lbl_804CBA10
/* 804CB9CC  80 90 00 10 */	lwz r4, 0x10(r16)
/* 804CB9D0  7E C3 B3 78 */	mr r3, r22
/* 804CB9D4  88 04 00 00 */	lbz r0, 0(r4)
/* 804CB9D8  98 01 00 1C */	stb r0, 0x1c(r1)
/* 804CB9DC  A8 04 00 02 */	lha r0, 2(r4)
/* 804CB9E0  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 804CB9E4  80 04 00 04 */	lwz r0, 4(r4)
/* 804CB9E8  90 01 00 20 */	stw r0, 0x20(r1)
/* 804CB9EC  80 04 00 08 */	lwz r0, 8(r4)
/* 804CB9F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CB9F4  4B EC 4B 41 */	bl mCoBG_CheckSandHole_ClData
/* 804CB9F8  2C 03 00 00 */	cmpwi r3, 0
/* 804CB9FC  41 82 00 0C */	beq lbl_804CBA08
/* 804CBA00  38 00 00 0E */	li r0, 0xe
/* 804CBA04  B0 01 00 1E */	sth r0, 0x1e(r1)
lbl_804CBA08:
/* 804CBA08  9B A1 00 1C */	stb r29, 0x1c(r1)
/* 804CBA0C  48 00 00 08 */	b lbl_804CBA14
lbl_804CBA10:
/* 804CBA10  3B 20 00 00 */	li r25, 0
lbl_804CBA14:
/* 804CBA14  2C 19 00 00 */	cmpwi r25, 0
/* 804CBA18  41 82 00 FC */	beq lbl_804CBB14
/* 804CBA1C  80 61 00 20 */	lwz r3, 0x20(r1)
/* 804CBA20  80 81 00 24 */	lwz r4, 0x24(r1)
/* 804CBA24  7C 03 F4 2E */	lfsx f0, r3, r30
/* 804CBA28  AB 21 00 1E */	lha r25, 0x1e(r1)
/* 804CBA2C  EC 7F 00 2A */	fadds f3, f31, f0
/* 804CBA30  57 23 18 38 */	slwi r3, r25, 3
/* 804CBA34  38 03 00 04 */	addi r0, r3, 4
/* 804CBA38  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804CBA3C  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 804CBA40  7C 1F 24 2E */	lfsx f0, r31, r4
/* 804CBA44  EC 5E 00 2A */	fadds f2, f30, f0
/* 804CBA48  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 804CBA4C  7C 03 02 2E */	lhzx r0, r3, r0
/* 804CBA50  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804CBA54  41 82 00 20 */	beq lbl_804CBA74
/* 804CBA58  56 60 26 B6 */	rlwinm r0, r19, 4, 0x1a, 0x1b
/* 804CBA5C  7C 3B 04 2E */	lfsx f1, r27, r0
/* 804CBA60  7C 1A 04 2E */	lfsx f0, r26, r0
/* 804CBA64  EC 23 08 2A */	fadds f1, f3, f1
/* 804CBA68  EC 02 00 2A */	fadds f0, f2, f0
/* 804CBA6C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804CBA70  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_804CBA74:
/* 804CBA74  A0 17 00 00 */	lhz r0, 0(r23)
/* 804CBA78  28 00 25 30 */	cmplwi r0, 0x2530
/* 804CBA7C  40 82 00 38 */	bne lbl_804CBAB4
/* 804CBA80  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 804CBA84  3C 60 80 64 */	lis r3, data_806461DC@ha /* 0x806461DC@ha */
/* 804CBA88  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804CBA8C  38 83 61 DC */	addi r4, r3, data_806461DC@l /* 0x806461DC@l */
/* 804CBA90  80 01 00 30 */	lwz r0, 0x30(r1)
/* 804CBA94  38 61 00 10 */	addi r3, r1, 0x10
/* 804CBA98  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804CBA9C  C0 24 00 00 */	lfs f1, 0(r4)
/* 804CBAA0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804CBAA4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804CBAA8  4B EC 3D 79 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 804CBAAC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804CBAB0  48 00 00 38 */	b lbl_804CBAE8
lbl_804CBAB4:
/* 804CBAB4  88 91 00 00 */	lbz r4, 0(r17)
/* 804CBAB8  3C 00 43 30 */	lis r0, 0x4330
/* 804CBABC  3C 60 80 64 */	lis r3, lit_1524@ha /* 0x8064622C@ha */
/* 804CBAC0  3C A0 80 64 */	lis r5, lit_1733@ha /* 0x80646250@ha */
/* 804CBAC4  90 81 00 3C */	stw r4, 0x3c(r1)
/* 804CBAC8  C8 23 62 2C */	lfd f1, lit_1524@l(r3)  /* 0x8064622C@l */
/* 804CBACC  90 01 00 38 */	stw r0, 0x38(r1)
/* 804CBAD0  C0 45 62 50 */	lfs f2, lit_1733@l(r5)  /* 0x80646250@l */
/* 804CBAD4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804CBAD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 804CBADC  EC 02 00 32 */	fmuls f0, f2, f0
/* 804CBAE0  EC 00 E8 2A */	fadds f0, f0, f29
/* 804CBAE4  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_804CBAE8:
/* 804CBAE8  57 25 08 3C */	slwi r5, r25, 1
/* 804CBAEC  80 61 00 08 */	lwz r3, 8(r1)
/* 804CBAF0  7C 0F 2A 2E */	lhzx r0, r15, r5
/* 804CBAF4  7F 04 C3 78 */	mr r4, r24
/* 804CBAF8  38 E1 00 28 */	addi r7, r1, 0x28
/* 804CBAFC  7E AF 2B 2E */	sthx r21, r15, r5
/* 804CBB00  7C 15 00 50 */	subf r0, r21, r0
/* 804CBB04  7C 05 07 34 */	extsh r5, r0
/* 804CBB08  88 C1 00 1C */	lbz r6, 0x1c(r1)
/* 804CBB0C  7C C6 07 74 */	extsb r6, r6
/* 804CBB10  4B FF FC BD */	bl bg_item_common_outPutData
lbl_804CBB14:
/* 804CBB14  3A 73 00 01 */	addi r19, r19, 1
/* 804CBB18  3A F7 00 02 */	addi r23, r23, 2
/* 804CBB1C  2C 13 00 10 */	cmpwi r19, 0x10
/* 804CBB20  3B 18 00 48 */	addi r24, r24, 0x48
/* 804CBB24  3A B5 00 01 */	addi r21, r21, 1
/* 804CBB28  3A D6 00 04 */	addi r22, r22, 4
/* 804CBB2C  3A 31 00 01 */	addi r17, r17, 1
/* 804CBB30  3B DE 00 04 */	addi r30, r30, 4
/* 804CBB34  41 80 FE 14 */	blt lbl_804CB948
/* 804CBB38  28 12 00 00 */	cmplwi r18, 0
/* 804CBB3C  41 82 00 08 */	beq lbl_804CBB44
/* 804CBB40  3A 52 00 02 */	addi r18, r18, 2
lbl_804CBB44:
/* 804CBB44  3A 94 00 01 */	addi r20, r20, 1
/* 804CBB48  3B FF 00 04 */	addi r31, r31, 4
/* 804CBB4C  2C 14 00 10 */	cmpwi r20, 0x10
/* 804CBB50  41 80 FD E4 */	blt lbl_804CB934
/* 804CBB54  4B F4 06 C1 */	bl Matrix_pull
/* 804CBB58  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 804CBB5C  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 804CBB60  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 804CBB64  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 804CBB68  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 804CBB6C  39 61 00 90 */	addi r11, r1, 0x90
/* 804CBB70  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 804CBB74  4B BC F3 71 */	bl __restore_gpr
/* 804CBB78  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 804CBB7C  7C 08 03 A6 */	mtlr r0
/* 804CBB80  38 21 00 C0 */	addi r1, r1, 0xc0
/* 804CBB84  4E 80 00 20 */	blr 
