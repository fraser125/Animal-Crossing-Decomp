lbl_804C4810:
/* 804C4810  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804C4814  7C 08 02 A6 */	mflr r0
/* 804C4818  90 01 00 94 */	stw r0, 0x94(r1)
/* 804C481C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804C4820  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804C4824  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 804C4828  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 804C482C  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 804C4830  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 804C4834  39 61 00 60 */	addi r11, r1, 0x60
/* 804C4838  4B BD 66 81 */	bl func_8009AEB8
/* 804C483C  3C C0 80 64 */	lis r6, data_8064613C@ha /* 0x8064613C@ha */
/* 804C4840  3C A0 80 64 */	lis r5, lit_633@ha /* 0x80646140@ha */
/* 804C4844  38 E6 61 3C */	addi r7, r6, data_8064613C@l /* 0x8064613C@l */
/* 804C4848  7C 7F 1B 78 */	mr r31, r3
/* 804C484C  C0 07 00 00 */	lfs f0, 0(r7)
/* 804C4850  3C C0 80 64 */	lis r6, lit_2563@ha /* 0x806461D4@ha */
/* 804C4854  3F 5F 00 01 */	addis r26, r31, 1
/* 804C4858  C3 E5 61 40 */	lfs f31, lit_633@l(r5)  /* 0x80646140@l */
/* 804C485C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804C4860  7C 96 23 78 */	mr r22, r4
/* 804C4864  C3 A6 61 D4 */	lfs f29, lit_2563@l(r6)  /* 0x806461D4@l */
/* 804C4868  3B C1 00 28 */	addi r30, r1, 0x28
/* 804C486C  3B 20 00 00 */	li r25, 0
/* 804C4870  3A E0 00 00 */	li r23, 0
/* 804C4874  3B A0 00 00 */	li r29, 0
/* 804C4878  3B 5A 25 58 */	addi r26, r26, 0x2558
/* 804C487C  48 00 00 C4 */	b lbl_804C4940
lbl_804C4880:
/* 804C4880  88 BA 00 00 */	lbz r5, 0(r26)
/* 804C4884  7F C4 F3 78 */	mr r4, r30
/* 804C4888  88 DA 00 01 */	lbz r6, 1(r26)
/* 804C488C  38 61 00 20 */	addi r3, r1, 0x20
/* 804C4890  83 1A 00 0C */	lwz r24, 0xc(r26)
/* 804C4894  7C A5 07 74 */	extsb r5, r5
/* 804C4898  7C C6 07 74 */	extsb r6, r6
/* 804C489C  4B EE 12 DD */	bl mFI_BkNum2WposXZ
/* 804C48A0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804C48A4  3B 80 00 00 */	li r28, 0
/* 804C48A8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804C48AC  EF C1 E8 2A */	fadds f30, f1, f29
/* 804C48B0  EC 00 E8 2A */	fadds f0, f0, f29
/* 804C48B4  D3 C1 00 20 */	stfs f30, 0x20(r1)
/* 804C48B8  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_804C48BC:
/* 804C48BC  D3 C1 00 20 */	stfs f30, 0x20(r1)
/* 804C48C0  3B 60 00 00 */	li r27, 0
lbl_804C48C4:
/* 804C48C4  A0 18 00 00 */	lhz r0, 0(r24)
/* 804C48C8  28 00 00 5C */	cmplwi r0, 0x5c
/* 804C48CC  40 82 00 1C */	bne lbl_804C48E8
/* 804C48D0  7C 19 03 78 */	mr r25, r0
/* 804C48D4  38 61 00 14 */	addi r3, r1, 0x14
/* 804C48D8  38 81 00 20 */	addi r4, r1, 0x20
/* 804C48DC  4B EF 65 E1 */	bl xyz_t_move
/* 804C48E0  3A E0 00 01 */	li r23, 1
/* 804C48E4  48 00 00 20 */	b lbl_804C4904
lbl_804C48E8:
/* 804C48E8  28 00 00 5D */	cmplwi r0, 0x5d
/* 804C48EC  40 82 00 18 */	bne lbl_804C4904
/* 804C48F0  7C 19 03 78 */	mr r25, r0
/* 804C48F4  38 61 00 14 */	addi r3, r1, 0x14
/* 804C48F8  38 81 00 20 */	addi r4, r1, 0x20
/* 804C48FC  4B EF 65 C1 */	bl xyz_t_move
/* 804C4900  3A E0 00 02 */	li r23, 2
lbl_804C4904:
/* 804C4904  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804C4908  3B 7B 00 01 */	addi r27, r27, 1
/* 804C490C  2C 1B 00 10 */	cmpwi r27, 0x10
/* 804C4910  3B 18 00 02 */	addi r24, r24, 2
/* 804C4914  EC 00 F8 2A */	fadds f0, f0, f31
/* 804C4918  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804C491C  41 80 FF A8 */	blt lbl_804C48C4
/* 804C4920  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804C4924  3B 9C 00 01 */	addi r28, r28, 1
/* 804C4928  2C 1C 00 10 */	cmpwi r28, 0x10
/* 804C492C  EC 00 F8 2A */	fadds f0, f0, f31
/* 804C4930  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804C4934  41 80 FF 88 */	blt lbl_804C48BC
/* 804C4938  3B BD 00 01 */	addi r29, r29, 1
/* 804C493C  3B 5A 00 10 */	addi r26, r26, 0x10
lbl_804C4940:
/* 804C4940  7C 1D B0 00 */	cmpw r29, r22
/* 804C4944  41 80 FF 3C */	blt lbl_804C4880
/* 804C4948  56 E0 04 3F */	clrlwi. r0, r23, 0x10
/* 804C494C  41 82 00 4C */	beq lbl_804C4998
/* 804C4950  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 804C4954  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646144@ha */
/* 804C4958  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 804C495C  38 83 61 44 */	addi r4, r3, lit_664@l /* 0x80646144@l */
/* 804C4960  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804C4964  38 61 00 08 */	addi r3, r1, 8
/* 804C4968  90 C1 00 08 */	stw r6, 8(r1)
/* 804C496C  C0 24 00 00 */	lfs f1, 0(r4)
/* 804C4970  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804C4974  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C4978  4B EC B0 21 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804C497C  3C 7F 00 01 */	addis r3, r31, 1
/* 804C4980  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804C4984  7F 24 CB 78 */	mr r4, r25
/* 804C4988  7E E6 BB 78 */	mr r6, r23
/* 804C498C  38 A1 00 14 */	addi r5, r1, 0x14
/* 804C4990  38 63 37 D4 */	addi r3, r3, 0x37d4
/* 804C4994  4B FF B5 49 */	bl bIT_actor_shin_effect_entry
lbl_804C4998:
/* 804C4998  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 804C499C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 804C49A0  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 804C49A4  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 804C49A8  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 804C49AC  39 61 00 60 */	addi r11, r1, 0x60
/* 804C49B0  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 804C49B4  4B BD 65 51 */	bl func_8009AF04
/* 804C49B8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804C49BC  7C 08 03 A6 */	mtlr r0
/* 804C49C0  38 21 00 90 */	addi r1, r1, 0x90
/* 804C49C4  4E 80 00 20 */	blr 
