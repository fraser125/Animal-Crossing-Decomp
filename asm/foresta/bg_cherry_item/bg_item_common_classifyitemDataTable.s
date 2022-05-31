lbl_804B55AC:
/* 804B55AC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 804B55B0  7C 08 02 A6 */	mflr r0
/* 804B55B4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 804B55B8  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 804B55BC  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 804B55C0  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 804B55C4  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 804B55C8  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 804B55CC  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 804B55D0  39 61 00 90 */	addi r11, r1, 0x90
/* 804B55D4  4B BE 58 C5 */	bl __save_gpr
/* 804B55D8  90 61 00 08 */	stw r3, 8(r1)
/* 804B55DC  7C 91 23 78 */	mr r17, r4
/* 804B55E0  7C AE 2B 78 */	mr r14, r5
/* 804B55E4  7C CF 33 78 */	mr r15, r6
/* 804B55E8  91 01 00 0C */	stw r8, 0xc(r1)
/* 804B55EC  7C F0 3B 78 */	mr r16, r7
/* 804B55F0  4B F5 6B E5 */	bl Matrix_push
/* 804B55F4  8A 4E 00 00 */	lbz r18, 0(r14)
/* 804B55F8  3B 11 00 48 */	addi r24, r17, 0x48
/* 804B55FC  8A 6E 00 01 */	lbz r19, 1(r14)
/* 804B5600  3A A0 00 01 */	li r21, 1
/* 804B5604  7E 52 07 74 */	extsb r18, r18
/* 804B5608  C3 EE 00 04 */	lfs f31, 4(r14)
/* 804B560C  7E 73 07 74 */	extsb r19, r19
/* 804B5610  C3 CE 00 08 */	lfs f30, 8(r14)
/* 804B5614  56 51 20 36 */	slwi r17, r18, 4
/* 804B5618  56 74 20 36 */	slwi r20, r19, 4
/* 804B561C  7E 23 8B 78 */	mr r3, r17
/* 804B5620  7E 84 A3 78 */	mr r4, r20
/* 804B5624  4B EF 0A 89 */	bl mFI_UtNum2BaseHeight
/* 804B5628  3C 80 80 64 */	lis r4, lit_845@ha /* 0x80646014@ha */
/* 804B562C  7E 43 93 78 */	mr r3, r18
/* 804B5630  38 A4 60 14 */	addi r5, r4, lit_845@l /* 0x80646014@l */
/* 804B5634  7E 64 9B 78 */	mr r4, r19
/* 804B5638  C0 05 00 00 */	lfs f0, 0(r5)
/* 804B563C  EF A0 08 2A */	fadds f29, f0, f1
/* 804B5640  4B EE FB 79 */	bl mFI_GetBlockNum
/* 804B5644  3C A0 81 16 */	lis r5, g_fdinfo@ha /* 0x81167A58@ha */
/* 804B5648  7E 84 A3 78 */	mr r4, r20
/* 804B564C  38 C5 7A 58 */	addi r6, r5, g_fdinfo@l /* 0x81167A58@l */
/* 804B5650  1C A3 06 14 */	mulli r5, r3, 0x614
/* 804B5654  80 C6 00 00 */	lwz r6, 0(r6)
/* 804B5658  7E 23 8B 78 */	mr r3, r17
/* 804B565C  80 06 00 74 */	lwz r0, 0x74(r6)
/* 804B5660  3A 25 04 20 */	addi r17, r5, 0x420
/* 804B5664  7E 20 8A 14 */	add r17, r0, r17
/* 804B5668  4B EF 0F 89 */	bl mFI_UtNum2UtCol
/* 804B566C  7C 60 1B 78 */	mr r0, r3
/* 804B5670  7E 43 93 78 */	mr r3, r18
/* 804B5674  7C 16 03 78 */	mr r22, r0
/* 804B5678  7E 64 9B 78 */	mr r4, r19
/* 804B567C  4B EF 35 B5 */	bl mFI_GetDepositP
/* 804B5680  3C A0 80 69 */	lis r5, rnd_data_x@ha /* 0x806926EC@ha */
/* 804B5684  3C 80 80 69 */	lis r4, rnd_data_z@ha /* 0x8069272C@ha */
/* 804B5688  82 EE 00 0C */	lwz r23, 0xc(r14)
/* 804B568C  7C 72 1B 78 */	mr r18, r3
/* 804B5690  3B 85 26 EC */	addi r28, r5, rnd_data_x@l /* 0x806926EC@l */
/* 804B5694  39 C4 27 2C */	addi r14, r4, rnd_data_z@l /* 0x8069272C@l */
/* 804B5698  3A 80 00 00 */	li r20, 0
/* 804B569C  3B E0 00 00 */	li r31, 0
lbl_804B56A0:
/* 804B56A0  56 80 17 3A */	rlwinm r0, r20, 2, 0x1c, 0x1d
/* 804B56A4  3A 60 00 00 */	li r19, 0
/* 804B56A8  7F 7C 02 14 */	add r27, r28, r0
/* 804B56AC  3B C0 00 00 */	li r30, 0
/* 804B56B0  7F 4E 02 14 */	add r26, r14, r0
lbl_804B56B4:
/* 804B56B4  A0 77 00 00 */	lhz r3, 0(r23)
/* 804B56B8  4B FF AA E5 */	bl bIT_individual_draw_check
/* 804B56BC  2C 03 00 00 */	cmpwi r3, 0
/* 804B56C0  41 82 01 C0 */	beq lbl_804B5880
/* 804B56C4  A0 77 00 00 */	lhz r3, 0(r23)
/* 804B56C8  7E C5 B3 78 */	mr r5, r22
/* 804B56CC  7E 06 83 78 */	mr r6, r16
/* 804B56D0  38 81 00 1C */	addi r4, r1, 0x1c
/* 804B56D4  3B 20 00 01 */	li r25, 1
/* 804B56D8  4B FF ED 31 */	bl fg_no2fg_type
/* 804B56DC  28 12 00 00 */	cmplwi r18, 0
/* 804B56E0  41 82 00 20 */	beq lbl_804B5700
/* 804B56E4  A0 12 00 00 */	lhz r0, 0(r18)
/* 804B56E8  7C 00 9E 30 */	sraw r0, r0, r19
/* 804B56EC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804B56F0  41 82 00 10 */	beq lbl_804B5700
/* 804B56F4  A8 01 00 1E */	lha r0, 0x1e(r1)
/* 804B56F8  2C 00 00 79 */	cmpwi r0, 0x79
/* 804B56FC  40 82 00 2C */	bne lbl_804B5728
lbl_804B5700:
/* 804B5700  A0 77 00 00 */	lhz r3, 0(r23)
/* 804B5704  28 03 00 00 */	cmplwi r3, 0
/* 804B5708  41 82 00 18 */	beq lbl_804B5720
/* 804B570C  7E C5 B3 78 */	mr r5, r22
/* 804B5710  7E 06 83 78 */	mr r6, r16
/* 804B5714  38 81 00 1C */	addi r4, r1, 0x1c
/* 804B5718  4B FF EC F1 */	bl fg_no2fg_type
/* 804B571C  48 00 00 64 */	b lbl_804B5780
lbl_804B5720:
/* 804B5720  3B 20 00 00 */	li r25, 0
/* 804B5724  48 00 00 5C */	b lbl_804B5780
lbl_804B5728:
/* 804B5728  7E C3 B3 78 */	mr r3, r22
/* 804B572C  4B ED AB 5D */	bl mCoBG_GetHoleNumber_ClData
/* 804B5730  7C 7D 1B 79 */	or. r29, r3, r3
/* 804B5734  41 80 00 48 */	blt lbl_804B577C
/* 804B5738  80 90 00 10 */	lwz r4, 0x10(r16)
/* 804B573C  7E C3 B3 78 */	mr r3, r22
/* 804B5740  88 04 00 00 */	lbz r0, 0(r4)
/* 804B5744  98 01 00 1C */	stb r0, 0x1c(r1)
/* 804B5748  A8 04 00 02 */	lha r0, 2(r4)
/* 804B574C  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 804B5750  80 04 00 04 */	lwz r0, 4(r4)
/* 804B5754  90 01 00 20 */	stw r0, 0x20(r1)
/* 804B5758  80 04 00 08 */	lwz r0, 8(r4)
/* 804B575C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B5760  4B ED AD D5 */	bl mCoBG_CheckSandHole_ClData
/* 804B5764  2C 03 00 00 */	cmpwi r3, 0
/* 804B5768  41 82 00 0C */	beq lbl_804B5774
/* 804B576C  38 00 00 0E */	li r0, 0xe
/* 804B5770  B0 01 00 1E */	sth r0, 0x1e(r1)
lbl_804B5774:
/* 804B5774  9B A1 00 1C */	stb r29, 0x1c(r1)
/* 804B5778  48 00 00 08 */	b lbl_804B5780
lbl_804B577C:
/* 804B577C  3B 20 00 00 */	li r25, 0
lbl_804B5780:
/* 804B5780  2C 19 00 00 */	cmpwi r25, 0
/* 804B5784  41 82 00 FC */	beq lbl_804B5880
/* 804B5788  80 61 00 20 */	lwz r3, 0x20(r1)
/* 804B578C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 804B5790  7C 03 F4 2E */	lfsx f0, r3, r30
/* 804B5794  AB 21 00 1E */	lha r25, 0x1e(r1)
/* 804B5798  EC 7F 00 2A */	fadds f3, f31, f0
/* 804B579C  57 23 18 38 */	slwi r3, r25, 3
/* 804B57A0  38 03 00 04 */	addi r0, r3, 4
/* 804B57A4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804B57A8  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 804B57AC  7C 1F 24 2E */	lfsx f0, r31, r4
/* 804B57B0  EC 5E 00 2A */	fadds f2, f30, f0
/* 804B57B4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 804B57B8  7C 03 02 2E */	lhzx r0, r3, r0
/* 804B57BC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804B57C0  41 82 00 20 */	beq lbl_804B57E0
/* 804B57C4  56 60 26 B6 */	rlwinm r0, r19, 4, 0x1a, 0x1b
/* 804B57C8  7C 3B 04 2E */	lfsx f1, r27, r0
/* 804B57CC  7C 1A 04 2E */	lfsx f0, r26, r0
/* 804B57D0  EC 23 08 2A */	fadds f1, f3, f1
/* 804B57D4  EC 02 00 2A */	fadds f0, f2, f0
/* 804B57D8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804B57DC  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_804B57E0:
/* 804B57E0  A0 17 00 00 */	lhz r0, 0(r23)
/* 804B57E4  28 00 25 30 */	cmplwi r0, 0x2530
/* 804B57E8  40 82 00 38 */	bne lbl_804B5820
/* 804B57EC  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 804B57F0  3C 60 80 64 */	lis r3, data_80645FEC@ha /* 0x80645FEC@ha */
/* 804B57F4  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804B57F8  38 83 5F EC */	addi r4, r3, data_80645FEC@l /* 0x80645FEC@l */
/* 804B57FC  80 01 00 30 */	lwz r0, 0x30(r1)
/* 804B5800  38 61 00 10 */	addi r3, r1, 0x10
/* 804B5804  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804B5808  C0 24 00 00 */	lfs f1, 0(r4)
/* 804B580C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804B5810  90 01 00 18 */	stw r0, 0x18(r1)
/* 804B5814  4B ED A0 0D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 804B5818  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804B581C  48 00 00 38 */	b lbl_804B5854
lbl_804B5820:
/* 804B5820  88 91 00 00 */	lbz r4, 0(r17)
/* 804B5824  3C 00 43 30 */	lis r0, 0x4330
/* 804B5828  3C 60 80 64 */	lis r3, lit_1524@ha /* 0x8064603C@ha */
/* 804B582C  3C A0 80 64 */	lis r5, lit_1733@ha /* 0x80646060@ha */
/* 804B5830  90 81 00 3C */	stw r4, 0x3c(r1)
/* 804B5834  C8 23 60 3C */	lfd f1, lit_1524@l(r3)  /* 0x8064603C@l */
/* 804B5838  90 01 00 38 */	stw r0, 0x38(r1)
/* 804B583C  C0 45 60 60 */	lfs f2, lit_1733@l(r5)  /* 0x80646060@l */
/* 804B5840  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804B5844  EC 00 08 28 */	fsubs f0, f0, f1
/* 804B5848  EC 02 00 32 */	fmuls f0, f2, f0
/* 804B584C  EC 00 E8 2A */	fadds f0, f0, f29
/* 804B5850  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_804B5854:
/* 804B5854  57 25 08 3C */	slwi r5, r25, 1
/* 804B5858  80 61 00 08 */	lwz r3, 8(r1)
/* 804B585C  7C 0F 2A 2E */	lhzx r0, r15, r5
/* 804B5860  7F 04 C3 78 */	mr r4, r24
/* 804B5864  38 E1 00 28 */	addi r7, r1, 0x28
/* 804B5868  7E AF 2B 2E */	sthx r21, r15, r5
/* 804B586C  7C 15 00 50 */	subf r0, r21, r0
/* 804B5870  7C 05 07 34 */	extsh r5, r0
/* 804B5874  88 C1 00 1C */	lbz r6, 0x1c(r1)
/* 804B5878  7C C6 07 74 */	extsb r6, r6
/* 804B587C  4B FF FC BD */	bl bg_item_common_outPutData
lbl_804B5880:
/* 804B5880  3A 73 00 01 */	addi r19, r19, 1
/* 804B5884  3A F7 00 02 */	addi r23, r23, 2
/* 804B5888  2C 13 00 10 */	cmpwi r19, 0x10
/* 804B588C  3B 18 00 48 */	addi r24, r24, 0x48
/* 804B5890  3A B5 00 01 */	addi r21, r21, 1
/* 804B5894  3A D6 00 04 */	addi r22, r22, 4
/* 804B5898  3A 31 00 01 */	addi r17, r17, 1
/* 804B589C  3B DE 00 04 */	addi r30, r30, 4
/* 804B58A0  41 80 FE 14 */	blt lbl_804B56B4
/* 804B58A4  28 12 00 00 */	cmplwi r18, 0
/* 804B58A8  41 82 00 08 */	beq lbl_804B58B0
/* 804B58AC  3A 52 00 02 */	addi r18, r18, 2
lbl_804B58B0:
/* 804B58B0  3A 94 00 01 */	addi r20, r20, 1
/* 804B58B4  3B FF 00 04 */	addi r31, r31, 4
/* 804B58B8  2C 14 00 10 */	cmpwi r20, 0x10
/* 804B58BC  41 80 FD E4 */	blt lbl_804B56A0
/* 804B58C0  4B F5 69 55 */	bl Matrix_pull
/* 804B58C4  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 804B58C8  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 804B58CC  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 804B58D0  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 804B58D4  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 804B58D8  39 61 00 90 */	addi r11, r1, 0x90
/* 804B58DC  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 804B58E0  4B BE 56 05 */	bl __restore_gpr
/* 804B58E4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 804B58E8  7C 08 03 A6 */	mtlr r0
/* 804B58EC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 804B58F0  4E 80 00 20 */	blr 
