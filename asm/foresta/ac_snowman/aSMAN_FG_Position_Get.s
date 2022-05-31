lbl_804A38DC:
/* 804A38DC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 804A38E0  7C 08 02 A6 */	mflr r0
/* 804A38E4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 804A38E8  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 804A38EC  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 804A38F0  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 804A38F4  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 804A38F8  39 61 00 90 */	addi r11, r1, 0x90
/* 804A38FC  4B BF 75 C9 */	bl func_8009AEC4
/* 804A3900  3C 80 80 64 */	lis r4, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A3904  3C A0 80 69 */	lis r5, chk_pos_tbl@ha /* 0x8068E848@ha */
/* 804A3908  3B E4 5C 8C */	addi r31, r4, data_80645C8C@l /* 0x80645C8C@l */
/* 804A390C  7C 7C 1B 78 */	mr r28, r3
/* 804A3910  C3 FF 00 00 */	lfs f31, 0(r31)
/* 804A3914  3B C5 E8 48 */	addi r30, r5, chk_pos_tbl@l /* 0x8068E848@l */
/* 804A3918  3B A0 00 00 */	li r29, 0
/* 804A391C  3B 60 00 00 */	li r27, 0
lbl_804A3920:
/* 804A3920  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 804A3924  7C BE DA 14 */	add r5, r30, r27
/* 804A3928  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 804A392C  38 81 00 50 */	addi r4, r1, 0x50
/* 804A3930  90 61 00 5C */	stw r3, 0x5c(r1)
/* 804A3934  38 60 00 00 */	li r3, 0
/* 804A3938  80 DC 00 2C */	lwz r6, 0x2c(r28)
/* 804A393C  90 01 00 64 */	stw r0, 0x64(r1)
/* 804A3940  C0 61 00 5C */	lfs f3, 0x5c(r1)
/* 804A3944  C0 45 00 00 */	lfs f2, 0(r5)
/* 804A3948  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 804A394C  C0 05 00 04 */	lfs f0, 4(r5)
/* 804A3950  EC 43 10 2A */	fadds f2, f3, f2
/* 804A3954  90 C1 00 60 */	stw r6, 0x60(r1)
/* 804A3958  EC 01 00 2A */	fadds f0, f1, f0
/* 804A395C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804A3960  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 804A3964  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 804A3968  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 804A396C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804A3970  90 A1 00 50 */	stw r5, 0x50(r1)
/* 804A3974  90 C1 00 54 */	stw r6, 0x54(r1)
/* 804A3978  90 01 00 58 */	stw r0, 0x58(r1)
/* 804A397C  4B EE BD 3D */	bl func_8038F6B8
/* 804A3980  80 BC 00 28 */	lwz r5, 0x28(r28)
/* 804A3984  38 81 00 44 */	addi r4, r1, 0x44
/* 804A3988  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 804A398C  38 60 00 00 */	li r3, 0
/* 804A3990  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 804A3994  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804A3998  90 A1 00 44 */	stw r5, 0x44(r1)
/* 804A399C  90 01 00 48 */	stw r0, 0x48(r1)
/* 804A39A0  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 804A39A4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804A39A8  4B EE BD 11 */	bl func_8038F6B8
/* 804A39AC  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 804A39B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 804A39B4  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 804A39B8  4C 41 13 82 */	cror 2, 1, 2
/* 804A39BC  40 82 00 3C */	bne lbl_804A39F8
/* 804A39C0  80 BC 00 28 */	lwz r5, 0x28(r28)
/* 804A39C4  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A39C8  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 804A39CC  38 81 00 38 */	addi r4, r1, 0x38
/* 804A39D0  C0 23 5C 8C */	lfs f1, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A39D4  38 60 00 00 */	li r3, 0
/* 804A39D8  90 A1 00 38 */	stw r5, 0x38(r1)
/* 804A39DC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804A39E0  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 804A39E4  90 01 00 40 */	stw r0, 0x40(r1)
/* 804A39E8  4B EE BC D1 */	bl func_8038F6B8
/* 804A39EC  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 804A39F0  EF C0 08 28 */	fsubs f30, f0, f1
/* 804A39F4  48 00 00 3C */	b lbl_804A3A30
lbl_804A39F8:
/* 804A39F8  80 BC 00 28 */	lwz r5, 0x28(r28)
/* 804A39FC  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A3A00  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 804A3A04  38 81 00 2C */	addi r4, r1, 0x2c
/* 804A3A08  C0 23 5C 8C */	lfs f1, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A3A0C  38 60 00 00 */	li r3, 0
/* 804A3A10  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 804A3A14  90 01 00 30 */	stw r0, 0x30(r1)
/* 804A3A18  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 804A3A1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A3A20  4B EE BC 99 */	bl func_8038F6B8
/* 804A3A24  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 804A3A28  EC 00 08 28 */	fsubs f0, f0, f1
/* 804A3A2C  FF C0 00 50 */	fneg f30, f0
lbl_804A3A30:
/* 804A3A30  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 804A3A34  38 61 00 20 */	addi r3, r1, 0x20
/* 804A3A38  80 81 00 60 */	lwz r4, 0x60(r1)
/* 804A3A3C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804A3A40  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804A3A44  90 81 00 24 */	stw r4, 0x24(r1)
/* 804A3A48  90 01 00 28 */	stw r0, 0x28(r1)
/* 804A3A4C  4B F0 39 E5 */	bl mFI_GetUnitFG
/* 804A3A50  A3 23 00 00 */	lhz r25, 0(r3)
/* 804A3A54  38 61 00 14 */	addi r3, r1, 0x14
/* 804A3A58  80 C1 00 5C */	lwz r6, 0x5c(r1)
/* 804A3A5C  38 80 00 00 */	li r4, 0
/* 804A3A60  80 A1 00 60 */	lwz r5, 0x60(r1)
/* 804A3A64  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804A3A68  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804A3A6C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804A3A70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804A3A74  4B EE 56 39 */	bl mCoBG_Wpos2Attribute
/* 804A3A78  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 804A3A7C  7C 7A 1B 78 */	mr r26, r3
/* 804A3A80  80 81 00 60 */	lwz r4, 0x60(r1)
/* 804A3A84  38 61 00 08 */	addi r3, r1, 8
/* 804A3A88  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804A3A8C  90 A1 00 08 */	stw r5, 8(r1)
/* 804A3A90  90 81 00 0C */	stw r4, 0xc(r1)
/* 804A3A94  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A3A98  4B EE D0 51 */	bl mCoBG_ExistHeightGap_KeepAndNow
/* 804A3A9C  2C 03 00 00 */	cmpwi r3, 0
/* 804A3AA0  40 82 00 54 */	bne lbl_804A3AF4
/* 804A3AA4  28 19 FF FF */	cmplwi r25, 0xffff
/* 804A3AA8  41 82 00 4C */	beq lbl_804A3AF4
/* 804A3AAC  28 19 FF FE */	cmplwi r25, 0xfffe
/* 804A3AB0  41 82 00 44 */	beq lbl_804A3AF4
/* 804A3AB4  28 1A 00 07 */	cmplwi r26, 7
/* 804A3AB8  41 82 00 3C */	beq lbl_804A3AF4
/* 804A3ABC  28 1A 00 17 */	cmplwi r26, 0x17
/* 804A3AC0  41 82 00 34 */	beq lbl_804A3AF4
/* 804A3AC4  3C 60 80 64 */	lis r3, lit_609@ha /* 0x80645CAC@ha */
/* 804A3AC8  C0 03 5C AC */	lfs f0, lit_609@l(r3)  /* 0x80645CAC@l */
/* 804A3ACC  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 804A3AD0  40 80 00 24 */	bge lbl_804A3AF4
/* 804A3AD4  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 804A3AD8  38 60 00 01 */	li r3, 1
/* 804A3ADC  80 81 00 60 */	lwz r4, 0x60(r1)
/* 804A3AE0  90 1C 01 B0 */	stw r0, 0x1b0(r28)
/* 804A3AE4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804A3AE8  90 9C 01 B4 */	stw r4, 0x1b4(r28)
/* 804A3AEC  90 1C 01 B8 */	stw r0, 0x1b8(r28)
/* 804A3AF0  48 00 00 38 */	b lbl_804A3B28
lbl_804A3AF4:
/* 804A3AF4  3B BD 00 01 */	addi r29, r29, 1
/* 804A3AF8  3B 7B 00 08 */	addi r27, r27, 8
/* 804A3AFC  2C 1D 00 09 */	cmpwi r29, 9
/* 804A3B00  41 80 FE 20 */	blt lbl_804A3920
/* 804A3B04  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 804A3B08  38 60 00 00 */	li r3, 0
/* 804A3B0C  38 A4 F0 50 */	addi r5, r4, data_8065F050@l /* 0x8065F050@l */
/* 804A3B10  80 85 00 00 */	lwz r4, 0(r5)
/* 804A3B14  80 05 00 04 */	lwz r0, 4(r5)
/* 804A3B18  90 9C 01 B0 */	stw r4, 0x1b0(r28)
/* 804A3B1C  90 1C 01 B4 */	stw r0, 0x1b4(r28)
/* 804A3B20  80 05 00 08 */	lwz r0, 8(r5)
/* 804A3B24  90 1C 01 B8 */	stw r0, 0x1b8(r28)
lbl_804A3B28:
/* 804A3B28  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 804A3B2C  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 804A3B30  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 804A3B34  39 61 00 90 */	addi r11, r1, 0x90
/* 804A3B38  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 804A3B3C  4B BF 73 D5 */	bl func_8009AF10
/* 804A3B40  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 804A3B44  7C 08 03 A6 */	mtlr r0
/* 804A3B48  38 21 00 B0 */	addi r1, r1, 0xb0
/* 804A3B4C  4E 80 00 20 */	blr 
