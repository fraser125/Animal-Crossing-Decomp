lbl_804BC930:
/* 804BC930  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 804BC934  7C 08 02 A6 */	mflr r0
/* 804BC938  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 804BC93C  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 804BC940  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 804BC944  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 804BC948  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 804BC94C  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 804BC950  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 804BC954  39 61 00 90 */	addi r11, r1, 0x90
/* 804BC958  4B BD E5 41 */	bl __save_gpr
/* 804BC95C  90 61 00 08 */	stw r3, 8(r1)
/* 804BC960  7C 91 23 78 */	mr r17, r4
/* 804BC964  7C AE 2B 78 */	mr r14, r5
/* 804BC968  7C CF 33 78 */	mr r15, r6
/* 804BC96C  91 01 00 0C */	stw r8, 0xc(r1)
/* 804BC970  7C F0 3B 78 */	mr r16, r7
/* 804BC974  4B F4 F8 61 */	bl Matrix_push
/* 804BC978  8A 4E 00 00 */	lbz r18, 0(r14)
/* 804BC97C  3B 11 00 48 */	addi r24, r17, 0x48
/* 804BC980  8A 6E 00 01 */	lbz r19, 1(r14)
/* 804BC984  3A A0 00 01 */	li r21, 1
/* 804BC988  7E 52 07 74 */	extsb r18, r18
/* 804BC98C  C3 EE 00 04 */	lfs f31, 4(r14)
/* 804BC990  7E 73 07 74 */	extsb r19, r19
/* 804BC994  C3 CE 00 08 */	lfs f30, 8(r14)
/* 804BC998  56 51 20 36 */	slwi r17, r18, 4
/* 804BC99C  56 74 20 36 */	slwi r20, r19, 4
/* 804BC9A0  7E 23 8B 78 */	mr r3, r17
/* 804BC9A4  7E 84 A3 78 */	mr r4, r20
/* 804BC9A8  4B EE 97 05 */	bl mFI_UtNum2BaseHeight
/* 804BC9AC  3C 80 80 64 */	lis r4, lit_845@ha /* 0x806460B4@ha */
/* 804BC9B0  7E 43 93 78 */	mr r3, r18
/* 804BC9B4  38 A4 60 B4 */	addi r5, r4, lit_845@l /* 0x806460B4@l */
/* 804BC9B8  7E 64 9B 78 */	mr r4, r19
/* 804BC9BC  C0 05 00 00 */	lfs f0, 0(r5)
/* 804BC9C0  EF A0 08 2A */	fadds f29, f0, f1
/* 804BC9C4  4B EE 87 F5 */	bl mFI_GetBlockNum
/* 804BC9C8  3C A0 81 16 */	lis r5, g_fdinfo@ha /* 0x81167A58@ha */
/* 804BC9CC  7E 84 A3 78 */	mr r4, r20
/* 804BC9D0  38 C5 7A 58 */	addi r6, r5, g_fdinfo@l /* 0x81167A58@l */
/* 804BC9D4  1C A3 06 14 */	mulli r5, r3, 0x614
/* 804BC9D8  80 C6 00 00 */	lwz r6, 0(r6)
/* 804BC9DC  7E 23 8B 78 */	mr r3, r17
/* 804BC9E0  80 06 00 74 */	lwz r0, 0x74(r6)
/* 804BC9E4  3A 25 04 20 */	addi r17, r5, 0x420
/* 804BC9E8  7E 20 8A 14 */	add r17, r0, r17
/* 804BC9EC  4B EE 9C 05 */	bl mFI_UtNum2UtCol
/* 804BC9F0  7C 60 1B 78 */	mr r0, r3
/* 804BC9F4  7E 43 93 78 */	mr r3, r18
/* 804BC9F8  7C 16 03 78 */	mr r22, r0
/* 804BC9FC  7E 64 9B 78 */	mr r4, r19
/* 804BCA00  4B EE C2 31 */	bl mFI_GetDepositP
/* 804BCA04  3C A0 80 69 */	lis r5, rnd_data_x@ha /* 0x8069564C@ha */
/* 804BCA08  3C 80 80 69 */	lis r4, rnd_data_z@ha /* 0x8069568C@ha */
/* 804BCA0C  82 EE 00 0C */	lwz r23, 0xc(r14)
/* 804BCA10  7C 72 1B 78 */	mr r18, r3
/* 804BCA14  3B 85 56 4C */	addi r28, r5, rnd_data_x@l /* 0x8069564C@l */
/* 804BCA18  39 C4 56 8C */	addi r14, r4, rnd_data_z@l /* 0x8069568C@l */
/* 804BCA1C  3A 80 00 00 */	li r20, 0
/* 804BCA20  3B E0 00 00 */	li r31, 0
lbl_804BCA24:
/* 804BCA24  56 80 17 3A */	rlwinm r0, r20, 2, 0x1c, 0x1d
/* 804BCA28  3A 60 00 00 */	li r19, 0
/* 804BCA2C  7F 7C 02 14 */	add r27, r28, r0
/* 804BCA30  3B C0 00 00 */	li r30, 0
/* 804BCA34  7F 4E 02 14 */	add r26, r14, r0
lbl_804BCA38:
/* 804BCA38  A0 77 00 00 */	lhz r3, 0(r23)
/* 804BCA3C  4B FF AA E5 */	bl bIT_individual_draw_check
/* 804BCA40  2C 03 00 00 */	cmpwi r3, 0
/* 804BCA44  41 82 01 C0 */	beq lbl_804BCC04
/* 804BCA48  A0 77 00 00 */	lhz r3, 0(r23)
/* 804BCA4C  7E C5 B3 78 */	mr r5, r22
/* 804BCA50  7E 06 83 78 */	mr r6, r16
/* 804BCA54  38 81 00 1C */	addi r4, r1, 0x1c
/* 804BCA58  3B 20 00 01 */	li r25, 1
/* 804BCA5C  4B FF ED 31 */	bl fg_no2fg_type
/* 804BCA60  28 12 00 00 */	cmplwi r18, 0
/* 804BCA64  41 82 00 20 */	beq lbl_804BCA84
/* 804BCA68  A0 12 00 00 */	lhz r0, 0(r18)
/* 804BCA6C  7C 00 9E 30 */	sraw r0, r0, r19
/* 804BCA70  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804BCA74  41 82 00 10 */	beq lbl_804BCA84
/* 804BCA78  A8 01 00 1E */	lha r0, 0x1e(r1)
/* 804BCA7C  2C 00 00 79 */	cmpwi r0, 0x79
/* 804BCA80  40 82 00 2C */	bne lbl_804BCAAC
lbl_804BCA84:
/* 804BCA84  A0 77 00 00 */	lhz r3, 0(r23)
/* 804BCA88  28 03 00 00 */	cmplwi r3, 0
/* 804BCA8C  41 82 00 18 */	beq lbl_804BCAA4
/* 804BCA90  7E C5 B3 78 */	mr r5, r22
/* 804BCA94  7E 06 83 78 */	mr r6, r16
/* 804BCA98  38 81 00 1C */	addi r4, r1, 0x1c
/* 804BCA9C  4B FF EC F1 */	bl fg_no2fg_type
/* 804BCAA0  48 00 00 64 */	b lbl_804BCB04
lbl_804BCAA4:
/* 804BCAA4  3B 20 00 00 */	li r25, 0
/* 804BCAA8  48 00 00 5C */	b lbl_804BCB04
lbl_804BCAAC:
/* 804BCAAC  7E C3 B3 78 */	mr r3, r22
/* 804BCAB0  4B ED 37 D9 */	bl mCoBG_GetHoleNumber_ClData
/* 804BCAB4  7C 7D 1B 79 */	or. r29, r3, r3
/* 804BCAB8  41 80 00 48 */	blt lbl_804BCB00
/* 804BCABC  80 90 00 10 */	lwz r4, 0x10(r16)
/* 804BCAC0  7E C3 B3 78 */	mr r3, r22
/* 804BCAC4  88 04 00 00 */	lbz r0, 0(r4)
/* 804BCAC8  98 01 00 1C */	stb r0, 0x1c(r1)
/* 804BCACC  A8 04 00 02 */	lha r0, 2(r4)
/* 804BCAD0  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 804BCAD4  80 04 00 04 */	lwz r0, 4(r4)
/* 804BCAD8  90 01 00 20 */	stw r0, 0x20(r1)
/* 804BCADC  80 04 00 08 */	lwz r0, 8(r4)
/* 804BCAE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BCAE4  4B ED 3A 51 */	bl mCoBG_CheckSandHole_ClData
/* 804BCAE8  2C 03 00 00 */	cmpwi r3, 0
/* 804BCAEC  41 82 00 0C */	beq lbl_804BCAF8
/* 804BCAF0  38 00 00 0E */	li r0, 0xe
/* 804BCAF4  B0 01 00 1E */	sth r0, 0x1e(r1)
lbl_804BCAF8:
/* 804BCAF8  9B A1 00 1C */	stb r29, 0x1c(r1)
/* 804BCAFC  48 00 00 08 */	b lbl_804BCB04
lbl_804BCB00:
/* 804BCB00  3B 20 00 00 */	li r25, 0
lbl_804BCB04:
/* 804BCB04  2C 19 00 00 */	cmpwi r25, 0
/* 804BCB08  41 82 00 FC */	beq lbl_804BCC04
/* 804BCB0C  80 61 00 20 */	lwz r3, 0x20(r1)
/* 804BCB10  80 81 00 24 */	lwz r4, 0x24(r1)
/* 804BCB14  7C 03 F4 2E */	lfsx f0, r3, r30
/* 804BCB18  AB 21 00 1E */	lha r25, 0x1e(r1)
/* 804BCB1C  EC 7F 00 2A */	fadds f3, f31, f0
/* 804BCB20  57 23 18 38 */	slwi r3, r25, 3
/* 804BCB24  38 03 00 04 */	addi r0, r3, 4
/* 804BCB28  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804BCB2C  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 804BCB30  7C 1F 24 2E */	lfsx f0, r31, r4
/* 804BCB34  EC 5E 00 2A */	fadds f2, f30, f0
/* 804BCB38  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 804BCB3C  7C 03 02 2E */	lhzx r0, r3, r0
/* 804BCB40  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804BCB44  41 82 00 20 */	beq lbl_804BCB64
/* 804BCB48  56 60 26 B6 */	rlwinm r0, r19, 4, 0x1a, 0x1b
/* 804BCB4C  7C 3B 04 2E */	lfsx f1, r27, r0
/* 804BCB50  7C 1A 04 2E */	lfsx f0, r26, r0
/* 804BCB54  EC 23 08 2A */	fadds f1, f3, f1
/* 804BCB58  EC 02 00 2A */	fadds f0, f2, f0
/* 804BCB5C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804BCB60  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_804BCB64:
/* 804BCB64  A0 17 00 00 */	lhz r0, 0(r23)
/* 804BCB68  28 00 25 30 */	cmplwi r0, 0x2530
/* 804BCB6C  40 82 00 38 */	bne lbl_804BCBA4
/* 804BCB70  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 804BCB74  3C 60 80 64 */	lis r3, data_8064608C@ha /* 0x8064608C@ha */
/* 804BCB78  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804BCB7C  38 83 60 8C */	addi r4, r3, data_8064608C@l /* 0x8064608C@l */
/* 804BCB80  80 01 00 30 */	lwz r0, 0x30(r1)
/* 804BCB84  38 61 00 10 */	addi r3, r1, 0x10
/* 804BCB88  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804BCB8C  C0 24 00 00 */	lfs f1, 0(r4)
/* 804BCB90  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804BCB94  90 01 00 18 */	stw r0, 0x18(r1)
/* 804BCB98  4B ED 2C 89 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 804BCB9C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804BCBA0  48 00 00 38 */	b lbl_804BCBD8
lbl_804BCBA4:
/* 804BCBA4  88 91 00 00 */	lbz r4, 0(r17)
/* 804BCBA8  3C 00 43 30 */	lis r0, 0x4330
/* 804BCBAC  3C 60 80 64 */	lis r3, lit_1524@ha /* 0x806460DC@ha */
/* 804BCBB0  3C A0 80 64 */	lis r5, lit_1733@ha /* 0x80646100@ha */
/* 804BCBB4  90 81 00 3C */	stw r4, 0x3c(r1)
/* 804BCBB8  C8 23 60 DC */	lfd f1, lit_1524@l(r3)  /* 0x806460DC@l */
/* 804BCBBC  90 01 00 38 */	stw r0, 0x38(r1)
/* 804BCBC0  C0 45 61 00 */	lfs f2, lit_1733@l(r5)  /* 0x80646100@l */
/* 804BCBC4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804BCBC8  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BCBCC  EC 02 00 32 */	fmuls f0, f2, f0
/* 804BCBD0  EC 00 E8 2A */	fadds f0, f0, f29
/* 804BCBD4  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_804BCBD8:
/* 804BCBD8  57 25 08 3C */	slwi r5, r25, 1
/* 804BCBDC  80 61 00 08 */	lwz r3, 8(r1)
/* 804BCBE0  7C 0F 2A 2E */	lhzx r0, r15, r5
/* 804BCBE4  7F 04 C3 78 */	mr r4, r24
/* 804BCBE8  38 E1 00 28 */	addi r7, r1, 0x28
/* 804BCBEC  7E AF 2B 2E */	sthx r21, r15, r5
/* 804BCBF0  7C 15 00 50 */	subf r0, r21, r0
/* 804BCBF4  7C 05 07 34 */	extsh r5, r0
/* 804BCBF8  88 C1 00 1C */	lbz r6, 0x1c(r1)
/* 804BCBFC  7C C6 07 74 */	extsb r6, r6
/* 804BCC00  4B FF FC BD */	bl bg_item_common_outPutData
lbl_804BCC04:
/* 804BCC04  3A 73 00 01 */	addi r19, r19, 1
/* 804BCC08  3A F7 00 02 */	addi r23, r23, 2
/* 804BCC0C  2C 13 00 10 */	cmpwi r19, 0x10
/* 804BCC10  3B 18 00 48 */	addi r24, r24, 0x48
/* 804BCC14  3A B5 00 01 */	addi r21, r21, 1
/* 804BCC18  3A D6 00 04 */	addi r22, r22, 4
/* 804BCC1C  3A 31 00 01 */	addi r17, r17, 1
/* 804BCC20  3B DE 00 04 */	addi r30, r30, 4
/* 804BCC24  41 80 FE 14 */	blt lbl_804BCA38
/* 804BCC28  28 12 00 00 */	cmplwi r18, 0
/* 804BCC2C  41 82 00 08 */	beq lbl_804BCC34
/* 804BCC30  3A 52 00 02 */	addi r18, r18, 2
lbl_804BCC34:
/* 804BCC34  3A 94 00 01 */	addi r20, r20, 1
/* 804BCC38  3B FF 00 04 */	addi r31, r31, 4
/* 804BCC3C  2C 14 00 10 */	cmpwi r20, 0x10
/* 804BCC40  41 80 FD E4 */	blt lbl_804BCA24
/* 804BCC44  4B F4 F5 D1 */	bl Matrix_pull
/* 804BCC48  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 804BCC4C  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 804BCC50  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 804BCC54  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 804BCC58  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 804BCC5C  39 61 00 90 */	addi r11, r1, 0x90
/* 804BCC60  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 804BCC64  4B BD E2 81 */	bl __restore_gpr
/* 804BCC68  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 804BCC6C  7C 08 03 A6 */	mtlr r0
/* 804BCC70  38 21 00 C0 */	addi r1, r1, 0xc0
/* 804BCC74  4E 80 00 20 */	blr 
