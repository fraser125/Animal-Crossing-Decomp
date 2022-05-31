lbl_804A18B8:
/* 804A18B8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804A18BC  7C 08 02 A6 */	mflr r0
/* 804A18C0  90 01 00 84 */	stw r0, 0x84(r1)
/* 804A18C4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 804A18C8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 804A18CC  39 61 00 70 */	addi r11, r1, 0x70
/* 804A18D0  4B BF 95 F1 */	bl func_8009AEC0
/* 804A18D4  7C 78 1B 78 */	mr r24, r3
/* 804A18D8  7C 83 23 78 */	mr r3, r4
/* 804A18DC  4B F3 7D 65 */	bl get_player_actor_withoutCheck
/* 804A18E0  7C 7F 1B 78 */	mr r31, r3
/* 804A18E4  3C 60 80 64 */	lis r3, lit_696@ha /* 0x80645C4C@ha */
/* 804A18E8  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 804A18EC  38 83 5C 4C */	addi r4, r3, lit_696@l /* 0x80645C4C@l */
/* 804A18F0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804A18F4  38 61 00 20 */	addi r3, r1, 0x20
/* 804A18F8  C3 E4 00 00 */	lfs f31, 0(r4)
/* 804A18FC  38 81 00 24 */	addi r4, r1, 0x24
/* 804A1900  90 A1 00 34 */	stw r5, 0x34(r1)
/* 804A1904  38 A1 00 18 */	addi r5, r1, 0x18
/* 804A1908  38 C1 00 1C */	addi r6, r1, 0x1c
/* 804A190C  38 E1 00 34 */	addi r7, r1, 0x34
/* 804A1910  90 01 00 38 */	stw r0, 0x38(r1)
/* 804A1914  3B 20 00 00 */	li r25, 0
/* 804A1918  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804A191C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804A1920  4B F0 3E A1 */	bl mFI_Wpos2BkandUtNuminBlock
/* 804A1924  2C 03 00 00 */	cmpwi r3, 0
/* 804A1928  41 82 01 E0 */	beq lbl_804A1B08
/* 804A192C  3B C0 FF FF */	li r30, -1
lbl_804A1930:
/* 804A1930  3B A0 FF FF */	li r29, -1
lbl_804A1934:
/* 804A1934  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 804A1938  38 61 00 14 */	addi r3, r1, 0x14
/* 804A193C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804A1940  38 81 00 10 */	addi r4, r1, 0x10
/* 804A1944  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 804A1948  7C E5 EA 14 */	add r7, r5, r29
/* 804A194C  81 01 00 20 */	lwz r8, 0x20(r1)
/* 804A1950  7C 00 F2 14 */	add r0, r0, r30
/* 804A1954  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804A1958  38 A1 00 0C */	addi r5, r1, 0xc
/* 804A195C  38 C1 00 08 */	addi r6, r1, 8
/* 804A1960  91 01 00 10 */	stw r8, 0x10(r1)
/* 804A1964  90 E1 00 08 */	stw r7, 8(r1)
/* 804A1968  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A196C  4B FF FE 51 */	bl aSIGN_actor_BkandUtNum_formal
/* 804A1970  2C 03 00 00 */	cmpwi r3, 0
/* 804A1974  41 82 01 7C */	beq lbl_804A1AF0
/* 804A1978  3B 80 00 00 */	li r28, 0
/* 804A197C  3B 58 01 78 */	addi r26, r24, 0x178
lbl_804A1980:
/* 804A1980  3B 60 00 00 */	li r27, 0
lbl_804A1984:
/* 804A1984  80 1A 00 00 */	lwz r0, 0(r26)
/* 804A1988  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 804A198C  7C 00 28 00 */	cmpw r0, r5
/* 804A1990  40 82 01 44 */	bne lbl_804A1AD4
/* 804A1994  80 1A 00 04 */	lwz r0, 4(r26)
/* 804A1998  80 81 00 10 */	lwz r4, 0x10(r1)
/* 804A199C  7C 00 20 00 */	cmpw r0, r4
/* 804A19A0  40 82 01 34 */	bne lbl_804A1AD4
/* 804A19A4  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 804A19A8  38 00 00 01 */	li r0, 1
/* 804A19AC  80 C1 00 08 */	lwz r6, 8(r1)
/* 804A19B0  54 E3 08 3C */	slwi r3, r7, 1
/* 804A19B4  38 63 00 08 */	addi r3, r3, 8
/* 804A19B8  7C 00 30 30 */	slw r0, r0, r6
/* 804A19BC  7C 7A 1A 2E */	lhzx r3, r26, r3
/* 804A19C0  7C 60 00 39 */	and. r0, r3, r0
/* 804A19C4  41 82 01 10 */	beq lbl_804A1AD4
/* 804A19C8  38 61 00 40 */	addi r3, r1, 0x40
/* 804A19CC  4B F0 43 29 */	bl mFI_BkandUtNum2CenterWpos
/* 804A19D0  80 C1 00 40 */	lwz r6, 0x40(r1)
/* 804A19D4  3C 60 80 64 */	lis r3, lit_484@ha /* 0x80645C34@ha */
/* 804A19D8  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 804A19DC  38 83 5C 34 */	addi r4, r3, lit_484@l /* 0x80645C34@l */
/* 804A19E0  80 01 00 48 */	lwz r0, 0x48(r1)
/* 804A19E4  38 61 00 28 */	addi r3, r1, 0x28
/* 804A19E8  90 C1 00 28 */	stw r6, 0x28(r1)
/* 804A19EC  C0 24 00 00 */	lfs f1, 0(r4)
/* 804A19F0  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 804A19F4  90 01 00 30 */	stw r0, 0x30(r1)
/* 804A19F8  4B EE DF A1 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804A19FC  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 804A1A00  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804A1A04  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 804A1A08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A1A0C  40 81 00 C8 */	ble lbl_804A1AD4
/* 804A1A10  38 61 00 40 */	addi r3, r1, 0x40
/* 804A1A14  38 9F 00 28 */	addi r4, r31, 0x28
/* 804A1A18  4B F1 97 19 */	bl search_position_angleY
/* 804A1A1C  7C 60 07 35 */	extsh. r0, r3
/* 804A1A20  7C 60 07 34 */	extsh r0, r3
/* 804A1A24  7C 80 00 D0 */	neg r4, r0
/* 804A1A28  41 80 00 08 */	blt lbl_804A1A30
/* 804A1A2C  7C 04 03 78 */	mr r4, r0
lbl_804A1A30:
/* 804A1A30  2C 04 20 00 */	cmpwi r4, 0x2000
/* 804A1A34  40 80 00 A0 */	bge lbl_804A1AD4
/* 804A1A38  3C 63 00 01 */	addis r3, r3, 1
/* 804A1A3C  A8 9F 00 DE */	lha r4, 0xde(r31)
/* 804A1A40  38 03 80 00 */	addi r0, r3, -32768
/* 804A1A44  7C 04 00 50 */	subf r0, r4, r0
/* 804A1A48  7C 03 07 35 */	extsh. r3, r0
/* 804A1A4C  7C 03 00 D0 */	neg r0, r3
/* 804A1A50  41 80 00 08 */	blt lbl_804A1A58
/* 804A1A54  7C 60 1B 78 */	mr r0, r3
lbl_804A1A58:
/* 804A1A58  7C 00 07 34 */	extsh r0, r0
/* 804A1A5C  2C 00 30 F2 */	cmpwi r0, 0x30f2
/* 804A1A60  41 81 00 74 */	bgt lbl_804A1AD4
/* 804A1A64  38 7F 00 28 */	addi r3, r31, 0x28
/* 804A1A68  38 81 00 40 */	addi r4, r1, 0x40
/* 804A1A6C  4B F6 74 7D */	bl Math3DLengthSquare
/* 804A1A70  3C 60 80 64 */	lis r3, lit_697@ha /* 0x80645C50@ha */
/* 804A1A74  C0 03 5C 50 */	lfs f0, lit_697@l(r3)  /* 0x80645C50@l */
/* 804A1A78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A1A7C  40 80 00 58 */	bge lbl_804A1AD4
/* 804A1A80  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804A1A84  40 80 00 50 */	bge lbl_804A1AD4
/* 804A1A88  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804A1A8C  FF E0 08 90 */	fmr f31, f1
/* 804A1A90  38 78 03 E0 */	addi r3, r24, 0x3e0
/* 804A1A94  38 81 00 40 */	addi r4, r1, 0x40
/* 804A1A98  D0 18 03 F8 */	stfs f0, 0x3f8(r24)
/* 804A1A9C  3B 20 00 01 */	li r25, 1
/* 804A1AA0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804A1AA4  D0 18 03 FC */	stfs f0, 0x3fc(r24)
/* 804A1AA8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804A1AAC  D0 18 04 00 */	stfs f0, 0x400(r24)
/* 804A1AB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A1AB4  90 18 03 D0 */	stw r0, 0x3d0(r24)
/* 804A1AB8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 804A1ABC  90 18 03 D4 */	stw r0, 0x3d4(r24)
/* 804A1AC0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804A1AC4  90 18 03 D8 */	stw r0, 0x3d8(r24)
/* 804A1AC8  80 01 00 08 */	lwz r0, 8(r1)
/* 804A1ACC  90 18 03 DC */	stw r0, 0x3dc(r24)
/* 804A1AD0  4B F1 93 ED */	bl xyz_t_move
lbl_804A1AD4:
/* 804A1AD4  3B 7B 00 01 */	addi r27, r27, 1
/* 804A1AD8  3B 5A 00 28 */	addi r26, r26, 0x28
/* 804A1ADC  2C 1B 00 02 */	cmpwi r27, 2
/* 804A1AE0  41 80 FE A4 */	blt lbl_804A1984
/* 804A1AE4  3B 9C 00 01 */	addi r28, r28, 1
/* 804A1AE8  2C 1C 00 02 */	cmpwi r28, 2
/* 804A1AEC  41 80 FE 94 */	blt lbl_804A1980
lbl_804A1AF0:
/* 804A1AF0  3B BD 00 01 */	addi r29, r29, 1
/* 804A1AF4  2C 1D 00 02 */	cmpwi r29, 2
/* 804A1AF8  41 80 FE 3C */	blt lbl_804A1934
/* 804A1AFC  3B DE 00 01 */	addi r30, r30, 1
/* 804A1B00  2C 1E 00 01 */	cmpwi r30, 1
/* 804A1B04  41 80 FE 2C */	blt lbl_804A1930
lbl_804A1B08:
/* 804A1B08  7F 23 CB 78 */	mr r3, r25
/* 804A1B0C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 804A1B10  39 61 00 70 */	addi r11, r1, 0x70
/* 804A1B14  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 804A1B18  4B BF 93 F5 */	bl func_8009AF0C
/* 804A1B1C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804A1B20  7C 08 03 A6 */	mtlr r0
/* 804A1B24  38 21 00 80 */	addi r1, r1, 0x80
/* 804A1B28  4E 80 00 20 */	blr 
