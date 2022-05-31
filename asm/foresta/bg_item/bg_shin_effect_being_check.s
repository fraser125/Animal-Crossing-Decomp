lbl_804BCD18:
/* 804BCD18  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804BCD1C  7C 08 02 A6 */	mflr r0
/* 804BCD20  90 01 00 94 */	stw r0, 0x94(r1)
/* 804BCD24  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804BCD28  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804BCD2C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 804BCD30  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 804BCD34  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 804BCD38  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 804BCD3C  39 61 00 60 */	addi r11, r1, 0x60
/* 804BCD40  4B BD E1 79 */	bl func_8009AEB8
/* 804BCD44  3C C0 80 64 */	lis r6, data_8064608C@ha /* 0x8064608C@ha */
/* 804BCD48  3C A0 80 64 */	lis r5, lit_633@ha /* 0x80646090@ha */
/* 804BCD4C  38 E6 60 8C */	addi r7, r6, data_8064608C@l /* 0x8064608C@l */
/* 804BCD50  7C 7F 1B 78 */	mr r31, r3
/* 804BCD54  C0 07 00 00 */	lfs f0, 0(r7)
/* 804BCD58  3C C0 80 64 */	lis r6, lit_2563@ha /* 0x80646124@ha */
/* 804BCD5C  3F 5F 00 01 */	addis r26, r31, 1
/* 804BCD60  C3 E5 60 90 */	lfs f31, lit_633@l(r5)  /* 0x80646090@l */
/* 804BCD64  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804BCD68  7C 96 23 78 */	mr r22, r4
/* 804BCD6C  C3 A6 61 24 */	lfs f29, lit_2563@l(r6)  /* 0x80646124@l */
/* 804BCD70  3B C1 00 28 */	addi r30, r1, 0x28
/* 804BCD74  3B 20 00 00 */	li r25, 0
/* 804BCD78  3A E0 00 00 */	li r23, 0
/* 804BCD7C  3B A0 00 00 */	li r29, 0
/* 804BCD80  3B 5A 25 58 */	addi r26, r26, 0x2558
/* 804BCD84  48 00 00 C4 */	b lbl_804BCE48
lbl_804BCD88:
/* 804BCD88  88 BA 00 00 */	lbz r5, 0(r26)
/* 804BCD8C  7F C4 F3 78 */	mr r4, r30
/* 804BCD90  88 DA 00 01 */	lbz r6, 1(r26)
/* 804BCD94  38 61 00 20 */	addi r3, r1, 0x20
/* 804BCD98  83 1A 00 0C */	lwz r24, 0xc(r26)
/* 804BCD9C  7C A5 07 74 */	extsb r5, r5
/* 804BCDA0  7C C6 07 74 */	extsb r6, r6
/* 804BCDA4  4B EE 8D D5 */	bl mFI_BkNum2WposXZ
/* 804BCDA8  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804BCDAC  3B 80 00 00 */	li r28, 0
/* 804BCDB0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804BCDB4  EF C1 E8 2A */	fadds f30, f1, f29
/* 804BCDB8  EC 00 E8 2A */	fadds f0, f0, f29
/* 804BCDBC  D3 C1 00 20 */	stfs f30, 0x20(r1)
/* 804BCDC0  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_804BCDC4:
/* 804BCDC4  D3 C1 00 20 */	stfs f30, 0x20(r1)
/* 804BCDC8  3B 60 00 00 */	li r27, 0
lbl_804BCDCC:
/* 804BCDCC  A0 18 00 00 */	lhz r0, 0(r24)
/* 804BCDD0  28 00 00 5C */	cmplwi r0, 0x5c
/* 804BCDD4  40 82 00 1C */	bne lbl_804BCDF0
/* 804BCDD8  7C 19 03 78 */	mr r25, r0
/* 804BCDDC  38 61 00 14 */	addi r3, r1, 0x14
/* 804BCDE0  38 81 00 20 */	addi r4, r1, 0x20
/* 804BCDE4  4B EF E0 D9 */	bl xyz_t_move
/* 804BCDE8  3A E0 00 01 */	li r23, 1
/* 804BCDEC  48 00 00 20 */	b lbl_804BCE0C
lbl_804BCDF0:
/* 804BCDF0  28 00 00 5D */	cmplwi r0, 0x5d
/* 804BCDF4  40 82 00 18 */	bne lbl_804BCE0C
/* 804BCDF8  7C 19 03 78 */	mr r25, r0
/* 804BCDFC  38 61 00 14 */	addi r3, r1, 0x14
/* 804BCE00  38 81 00 20 */	addi r4, r1, 0x20
/* 804BCE04  4B EF E0 B9 */	bl xyz_t_move
/* 804BCE08  3A E0 00 02 */	li r23, 2
lbl_804BCE0C:
/* 804BCE0C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804BCE10  3B 7B 00 01 */	addi r27, r27, 1
/* 804BCE14  2C 1B 00 10 */	cmpwi r27, 0x10
/* 804BCE18  3B 18 00 02 */	addi r24, r24, 2
/* 804BCE1C  EC 00 F8 2A */	fadds f0, f0, f31
/* 804BCE20  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804BCE24  41 80 FF A8 */	blt lbl_804BCDCC
/* 804BCE28  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804BCE2C  3B 9C 00 01 */	addi r28, r28, 1
/* 804BCE30  2C 1C 00 10 */	cmpwi r28, 0x10
/* 804BCE34  EC 00 F8 2A */	fadds f0, f0, f31
/* 804BCE38  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804BCE3C  41 80 FF 88 */	blt lbl_804BCDC4
/* 804BCE40  3B BD 00 01 */	addi r29, r29, 1
/* 804BCE44  3B 5A 00 10 */	addi r26, r26, 0x10
lbl_804BCE48:
/* 804BCE48  7C 1D B0 00 */	cmpw r29, r22
/* 804BCE4C  41 80 FF 3C */	blt lbl_804BCD88
/* 804BCE50  56 E0 04 3F */	clrlwi. r0, r23, 0x10
/* 804BCE54  41 82 00 4C */	beq lbl_804BCEA0
/* 804BCE58  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 804BCE5C  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646094@ha */
/* 804BCE60  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 804BCE64  38 83 60 94 */	addi r4, r3, lit_664@l /* 0x80646094@l */
/* 804BCE68  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804BCE6C  38 61 00 08 */	addi r3, r1, 8
/* 804BCE70  90 C1 00 08 */	stw r6, 8(r1)
/* 804BCE74  C0 24 00 00 */	lfs f1, 0(r4)
/* 804BCE78  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804BCE7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BCE80  4B ED 2B 19 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804BCE84  3C 7F 00 01 */	addis r3, r31, 1
/* 804BCE88  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804BCE8C  7F 24 CB 78 */	mr r4, r25
/* 804BCE90  7E E6 BB 78 */	mr r6, r23
/* 804BCE94  38 A1 00 14 */	addi r5, r1, 0x14
/* 804BCE98  38 63 37 D4 */	addi r3, r3, 0x37d4
/* 804BCE9C  4B FF B5 49 */	bl bIT_actor_shin_effect_entry
lbl_804BCEA0:
/* 804BCEA0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 804BCEA4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 804BCEA8  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 804BCEAC  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 804BCEB0  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 804BCEB4  39 61 00 60 */	addi r11, r1, 0x60
/* 804BCEB8  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 804BCEBC  4B BD E0 49 */	bl func_8009AF04
/* 804BCEC0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804BCEC4  7C 08 03 A6 */	mtlr r0
/* 804BCEC8  38 21 00 90 */	addi r1, r1, 0x90
/* 804BCECC  4E 80 00 20 */	blr 
