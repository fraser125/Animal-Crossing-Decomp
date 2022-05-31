lbl_804B5994:
/* 804B5994  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804B5998  7C 08 02 A6 */	mflr r0
/* 804B599C  90 01 00 94 */	stw r0, 0x94(r1)
/* 804B59A0  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804B59A4  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804B59A8  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 804B59AC  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 804B59B0  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 804B59B4  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 804B59B8  39 61 00 60 */	addi r11, r1, 0x60
/* 804B59BC  4B BE 54 FD */	bl func_8009AEB8
/* 804B59C0  3C C0 80 64 */	lis r6, data_80645FEC@ha /* 0x80645FEC@ha */
/* 804B59C4  3C A0 80 64 */	lis r5, lit_633@ha /* 0x80645FF0@ha */
/* 804B59C8  38 E6 5F EC */	addi r7, r6, data_80645FEC@l /* 0x80645FEC@l */
/* 804B59CC  7C 7F 1B 78 */	mr r31, r3
/* 804B59D0  C0 07 00 00 */	lfs f0, 0(r7)
/* 804B59D4  3C C0 80 64 */	lis r6, lit_2563@ha /* 0x80646084@ha */
/* 804B59D8  3F 5F 00 01 */	addis r26, r31, 1
/* 804B59DC  C3 E5 5F F0 */	lfs f31, lit_633@l(r5)  /* 0x80645FF0@l */
/* 804B59E0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804B59E4  7C 96 23 78 */	mr r22, r4
/* 804B59E8  C3 A6 60 84 */	lfs f29, lit_2563@l(r6)  /* 0x80646084@l */
/* 804B59EC  3B C1 00 28 */	addi r30, r1, 0x28
/* 804B59F0  3B 20 00 00 */	li r25, 0
/* 804B59F4  3A E0 00 00 */	li r23, 0
/* 804B59F8  3B A0 00 00 */	li r29, 0
/* 804B59FC  3B 5A 25 58 */	addi r26, r26, 0x2558
/* 804B5A00  48 00 00 C4 */	b lbl_804B5AC4
lbl_804B5A04:
/* 804B5A04  88 BA 00 00 */	lbz r5, 0(r26)
/* 804B5A08  7F C4 F3 78 */	mr r4, r30
/* 804B5A0C  88 DA 00 01 */	lbz r6, 1(r26)
/* 804B5A10  38 61 00 20 */	addi r3, r1, 0x20
/* 804B5A14  83 1A 00 0C */	lwz r24, 0xc(r26)
/* 804B5A18  7C A5 07 74 */	extsb r5, r5
/* 804B5A1C  7C C6 07 74 */	extsb r6, r6
/* 804B5A20  4B EF 01 59 */	bl mFI_BkNum2WposXZ
/* 804B5A24  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804B5A28  3B 80 00 00 */	li r28, 0
/* 804B5A2C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804B5A30  EF C1 E8 2A */	fadds f30, f1, f29
/* 804B5A34  EC 00 E8 2A */	fadds f0, f0, f29
/* 804B5A38  D3 C1 00 20 */	stfs f30, 0x20(r1)
/* 804B5A3C  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_804B5A40:
/* 804B5A40  D3 C1 00 20 */	stfs f30, 0x20(r1)
/* 804B5A44  3B 60 00 00 */	li r27, 0
lbl_804B5A48:
/* 804B5A48  A0 18 00 00 */	lhz r0, 0(r24)
/* 804B5A4C  28 00 00 5C */	cmplwi r0, 0x5c
/* 804B5A50  40 82 00 1C */	bne lbl_804B5A6C
/* 804B5A54  7C 19 03 78 */	mr r25, r0
/* 804B5A58  38 61 00 14 */	addi r3, r1, 0x14
/* 804B5A5C  38 81 00 20 */	addi r4, r1, 0x20
/* 804B5A60  4B F0 54 5D */	bl xyz_t_move
/* 804B5A64  3A E0 00 01 */	li r23, 1
/* 804B5A68  48 00 00 20 */	b lbl_804B5A88
lbl_804B5A6C:
/* 804B5A6C  28 00 00 5D */	cmplwi r0, 0x5d
/* 804B5A70  40 82 00 18 */	bne lbl_804B5A88
/* 804B5A74  7C 19 03 78 */	mr r25, r0
/* 804B5A78  38 61 00 14 */	addi r3, r1, 0x14
/* 804B5A7C  38 81 00 20 */	addi r4, r1, 0x20
/* 804B5A80  4B F0 54 3D */	bl xyz_t_move
/* 804B5A84  3A E0 00 02 */	li r23, 2
lbl_804B5A88:
/* 804B5A88  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804B5A8C  3B 7B 00 01 */	addi r27, r27, 1
/* 804B5A90  2C 1B 00 10 */	cmpwi r27, 0x10
/* 804B5A94  3B 18 00 02 */	addi r24, r24, 2
/* 804B5A98  EC 00 F8 2A */	fadds f0, f0, f31
/* 804B5A9C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804B5AA0  41 80 FF A8 */	blt lbl_804B5A48
/* 804B5AA4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804B5AA8  3B 9C 00 01 */	addi r28, r28, 1
/* 804B5AAC  2C 1C 00 10 */	cmpwi r28, 0x10
/* 804B5AB0  EC 00 F8 2A */	fadds f0, f0, f31
/* 804B5AB4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804B5AB8  41 80 FF 88 */	blt lbl_804B5A40
/* 804B5ABC  3B BD 00 01 */	addi r29, r29, 1
/* 804B5AC0  3B 5A 00 10 */	addi r26, r26, 0x10
lbl_804B5AC4:
/* 804B5AC4  7C 1D B0 00 */	cmpw r29, r22
/* 804B5AC8  41 80 FF 3C */	blt lbl_804B5A04
/* 804B5ACC  56 E0 04 3F */	clrlwi. r0, r23, 0x10
/* 804B5AD0  41 82 00 4C */	beq lbl_804B5B1C
/* 804B5AD4  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 804B5AD8  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80645FF4@ha */
/* 804B5ADC  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 804B5AE0  38 83 5F F4 */	addi r4, r3, lit_664@l /* 0x80645FF4@l */
/* 804B5AE4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804B5AE8  38 61 00 08 */	addi r3, r1, 8
/* 804B5AEC  90 C1 00 08 */	stw r6, 8(r1)
/* 804B5AF0  C0 24 00 00 */	lfs f1, 0(r4)
/* 804B5AF4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804B5AF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B5AFC  4B ED 9E 9D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804B5B00  3C 7F 00 01 */	addis r3, r31, 1
/* 804B5B04  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804B5B08  7F 24 CB 78 */	mr r4, r25
/* 804B5B0C  7E E6 BB 78 */	mr r6, r23
/* 804B5B10  38 A1 00 14 */	addi r5, r1, 0x14
/* 804B5B14  38 63 37 D4 */	addi r3, r3, 0x37d4
/* 804B5B18  4B FF B5 49 */	bl bIT_actor_shin_effect_entry
lbl_804B5B1C:
/* 804B5B1C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 804B5B20  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 804B5B24  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 804B5B28  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 804B5B2C  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 804B5B30  39 61 00 60 */	addi r11, r1, 0x60
/* 804B5B34  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 804B5B38  4B BE 53 CD */	bl func_8009AF04
/* 804B5B3C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804B5B40  7C 08 03 A6 */	mtlr r0
/* 804B5B44  38 21 00 90 */	addi r1, r1, 0x90
/* 804B5B48  4E 80 00 20 */	blr 
