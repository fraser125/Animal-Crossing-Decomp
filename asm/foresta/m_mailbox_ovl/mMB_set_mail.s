lbl_805E599C:
/* 805E599C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805E59A0  7C 08 02 A6 */	mflr r0
/* 805E59A4  90 01 00 74 */	stw r0, 0x74(r1)
/* 805E59A8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805E59AC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805E59B0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805E59B4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805E59B8  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 805E59BC  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 805E59C0  39 61 00 40 */	addi r11, r1, 0x40
/* 805E59C4  4B AB 54 FD */	bl func_8009AEC0
/* 805E59C8  7C 79 1B 78 */	mr r25, r3
/* 805E59CC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805E59D0  80 B9 00 2C */	lwz r5, 0x2c(r25)
/* 805E59D4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805E59D8  3C 63 00 02 */	addis r3, r3, 2
/* 805E59DC  FF A0 08 90 */	fmr f29, f1
/* 805E59E0  83 A5 09 88 */	lwz r29, 0x988(r5)
/* 805E59E4  FF C0 10 90 */	fmr f30, f2
/* 805E59E8  80 63 61 40 */	lwz r3, 0x6140(r3)
/* 805E59EC  7C 9A 23 78 */	mr r26, r4
/* 805E59F0  A8 1D 03 F8 */	lha r0, 0x3f8(r29)
/* 805E59F4  80 85 09 7C */	lwz r4, 0x97c(r5)
/* 805E59F8  3B C3 1A 30 */	addi r30, r3, 0x1a30
/* 805E59FC  2C 00 00 00 */	cmpwi r0, 0
/* 805E5A00  83 85 09 98 */	lwz r28, 0x998(r5)
/* 805E5A04  38 64 00 08 */	addi r3, r4, 8
/* 805E5A08  40 81 00 4C */	ble lbl_805E5A54
/* 805E5A0C  80 03 00 38 */	lwz r0, 0x38(r3)
/* 805E5A10  2C 00 00 05 */	cmpwi r0, 5
/* 805E5A14  41 82 00 10 */	beq lbl_805E5A24
/* 805E5A18  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 805E5A1C  2C 00 00 01 */	cmpwi r0, 1
/* 805E5A20  40 82 00 34 */	bne lbl_805E5A54
lbl_805E5A24:
/* 805E5A24  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 805E5A28  2C 00 00 01 */	cmpwi r0, 1
/* 805E5A2C  40 82 00 0C */	bne lbl_805E5A38
/* 805E5A30  A0 1C 00 08 */	lhz r0, 8(r28)
/* 805E5A34  48 00 00 24 */	b lbl_805E5A58
lbl_805E5A38:
/* 805E5A38  81 84 02 EC */	lwz r12, 0x2ec(r4)
/* 805E5A3C  7D 89 03 A6 */	mtctr r12
/* 805E5A40  4E 80 04 21 */	bctrl 
/* 805E5A44  38 00 00 01 */	li r0, 1
/* 805E5A48  7C 00 18 30 */	slw r0, r0, r3
/* 805E5A4C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805E5A50  48 00 00 08 */	b lbl_805E5A58
lbl_805E5A54:
/* 805E5A54  38 00 00 00 */	li r0, 0
lbl_805E5A58:
/* 805E5A58  80 BA 02 D0 */	lwz r5, 0x2d0(r26)
/* 805E5A5C  3C 60 80 AA */	lis r3, inv_item_mode@ha /* 0x80AA5910@ha */
/* 805E5A60  3C 80 DE 00 */	lis r4, 0xde00
/* 805E5A64  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 805E5A68  7C A6 2B 78 */	mr r6, r5
/* 805E5A6C  38 03 59 10 */	addi r0, r3, inv_item_mode@l /* 0x80AA5910@l */
/* 805E5A70  90 85 00 00 */	stw r4, 0(r5)
/* 805E5A74  38 A5 00 08 */	addi r5, r5, 8
/* 805E5A78  3B 60 00 00 */	li r27, 0
/* 805E5A7C  90 06 00 04 */	stw r0, 4(r6)
/* 805E5A80  90 BA 02 D0 */	stw r5, 0x2d0(r26)
lbl_805E5A84:
/* 805E5A84  7F C3 F3 78 */	mr r3, r30
/* 805E5A88  4B DD 6D 19 */	bl mMl_check_not_used_mail
/* 805E5A8C  2C 03 00 01 */	cmpwi r3, 1
/* 805E5A90  41 82 00 D0 */	beq lbl_805E5B60
/* 805E5A94  38 00 00 01 */	li r0, 1
/* 805E5A98  7C 06 D8 30 */	slw r6, r0, r27
/* 805E5A9C  7F E0 30 39 */	and. r0, r31, r6
/* 805E5AA0  41 82 00 38 */	beq lbl_805E5AD8
/* 805E5AA4  A8 9D 03 F8 */	lha r4, 0x3f8(r29)
/* 805E5AA8  3C 00 43 30 */	lis r0, 0x4330
/* 805E5AAC  3C A0 80 65 */	lis r5, lit_566@ha /* 0x8064B534@ha */
/* 805E5AB0  3C 60 80 65 */	lis r3, lit_564@ha /* 0x8064B530@ha */
/* 805E5AB4  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 805E5AB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805E5ABC  C8 45 B5 34 */	lfd f2, lit_566@l(r5)  /* 0x8064B534@l */
/* 805E5AC0  90 81 00 14 */	stw r4, 0x14(r1)
/* 805E5AC4  C0 03 B5 30 */	lfs f0, lit_564@l(r3)  /* 0x8064B530@l */
/* 805E5AC8  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 805E5ACC  EC 21 10 28 */	fsubs f1, f1, f2
/* 805E5AD0  EF E1 00 24 */	fdivs f31, f1, f0
/* 805E5AD4  48 00 00 0C */	b lbl_805E5AE0
lbl_805E5AD8:
/* 805E5AD8  3C 60 80 65 */	lis r3, lit_500@ha /* 0x8064B51C@ha */
/* 805E5ADC  C3 E3 B5 1C */	lfs f31, lit_500@l(r3)  /* 0x8064B51C@l */
lbl_805E5AE0:
/* 805E5AE0  A0 1C 00 08 */	lhz r0, 8(r28)
/* 805E5AE4  7C 00 30 39 */	and. r0, r0, r6
/* 805E5AE8  41 82 00 18 */	beq lbl_805E5B00
/* 805E5AEC  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 805E5AF0  2C 00 00 00 */	cmpwi r0, 0
/* 805E5AF4  40 82 00 0C */	bne lbl_805E5B00
/* 805E5AF8  3B 00 00 01 */	li r24, 1
/* 805E5AFC  48 00 00 08 */	b lbl_805E5B04
lbl_805E5B00:
/* 805E5B00  3B 00 00 00 */	li r24, 0
lbl_805E5B04:
/* 805E5B04  80 B9 00 2C */	lwz r5, 0x2c(r25)
/* 805E5B08  7F 23 CB 78 */	mr r3, r25
/* 805E5B0C  7F 66 DB 78 */	mr r6, r27
/* 805E5B10  38 81 00 08 */	addi r4, r1, 8
/* 805E5B14  80 E5 09 7C */	lwz r7, 0x97c(r5)
/* 805E5B18  38 A0 00 05 */	li r5, 5
/* 805E5B1C  81 87 02 D8 */	lwz r12, 0x2d8(r7)
/* 805E5B20  7D 89 03 A6 */	mtctr r12
/* 805E5B24  4E 80 04 21 */	bctrl 
/* 805E5B28  80 B9 00 2C */	lwz r5, 0x2c(r25)
/* 805E5B2C  FC 60 F8 90 */	fmr f3, f31
/* 805E5B30  C0 21 00 08 */	lfs f1, 8(r1)
/* 805E5B34  7F 43 D3 78 */	mr r3, r26
/* 805E5B38  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805E5B3C  7F C4 F3 78 */	mr r4, r30
/* 805E5B40  81 85 09 60 */	lwz r12, 0x960(r5)
/* 805E5B44  EC 3D 08 2A */	fadds f1, f29, f1
/* 805E5B48  7F 07 C3 78 */	mr r7, r24
/* 805E5B4C  EC 5E 00 2A */	fadds f2, f30, f0
/* 805E5B50  38 A0 00 01 */	li r5, 1
/* 805E5B54  38 C0 00 00 */	li r6, 0
/* 805E5B58  7D 89 03 A6 */	mtctr r12
/* 805E5B5C  4E 80 04 21 */	bctrl 
lbl_805E5B60:
/* 805E5B60  3B 7B 00 01 */	addi r27, r27, 1
/* 805E5B64  3B DE 01 2A */	addi r30, r30, 0x12a
/* 805E5B68  2C 1B 00 0A */	cmpwi r27, 0xa
/* 805E5B6C  41 80 FF 18 */	blt lbl_805E5A84
/* 805E5B70  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805E5B74  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805E5B78  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805E5B7C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805E5B80  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 805E5B84  39 61 00 40 */	addi r11, r1, 0x40
/* 805E5B88  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 805E5B8C  4B AB 53 81 */	bl func_8009AF0C
/* 805E5B90  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805E5B94  7C 08 03 A6 */	mtlr r0
/* 805E5B98  38 21 00 70 */	addi r1, r1, 0x70
/* 805E5B9C  4E 80 00 20 */	blr 
