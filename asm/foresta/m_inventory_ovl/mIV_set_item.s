lbl_805E3B88:
/* 805E3B88  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805E3B8C  7C 08 02 A6 */	mflr r0
/* 805E3B90  90 01 00 84 */	stw r0, 0x84(r1)
/* 805E3B94  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 805E3B98  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 805E3B9C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 805E3BA0  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 805E3BA4  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 805E3BA8  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 805E3BAC  39 61 00 50 */	addi r11, r1, 0x50
/* 805E3BB0  4B AB 73 01 */	bl func_8009AEB0
/* 805E3BB4  7C 75 1B 78 */	mr r21, r3
/* 805E3BB8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805E3BBC  80 D5 00 2C */	lwz r6, 0x2c(r21)
/* 805E3BC0  7C B6 2B 78 */	mr r22, r5
/* 805E3BC4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805E3BC8  80 A5 02 D0 */	lwz r5, 0x2d0(r5)
/* 805E3BCC  3F 83 00 02 */	addis r28, r3, 2
/* 805E3BD0  83 66 09 88 */	lwz r27, 0x988(r6)
/* 805E3BD4  80 9C 61 3C */	lwz r4, 0x613c(r28)
/* 805E3BD8  7C A7 2B 78 */	mr r7, r5
/* 805E3BDC  3C 60 80 AA */	lis r3, inv_item_mode@ha /* 0x80AA5910@ha */
/* 805E3BE0  83 A6 09 7C */	lwz r29, 0x97c(r6)
/* 805E3BE4  3C 00 DE 00 */	lis r0, 0xde00
/* 805E3BE8  38 A5 00 08 */	addi r5, r5, 8
/* 805E3BEC  90 07 00 00 */	stw r0, 0(r7)
/* 805E3BF0  38 03 59 10 */	addi r0, r3, inv_item_mode@l /* 0x80AA5910@l */
/* 805E3BF4  FF C0 08 90 */	fmr f30, f1
/* 805E3BF8  3B 44 00 68 */	addi r26, r4, 0x68
/* 805E3BFC  90 07 00 04 */	stw r0, 4(r7)
/* 805E3C00  FF E0 10 90 */	fmr f31, f2
/* 805E3C04  3B 3B 03 E3 */	addi r25, r27, 0x3e3
/* 805E3C08  3B 00 00 00 */	li r24, 0
/* 805E3C0C  90 B6 02 D0 */	stw r5, 0x2d0(r22)
/* 805E3C10  3A 80 00 00 */	li r20, 0
/* 805E3C14  88 1B 05 EB */	lbz r0, 0x5eb(r27)
/* 805E3C18  7C 00 00 34 */	cntlzw r0, r0
/* 805E3C1C  54 1E D9 7E */	srwi r30, r0, 5
lbl_805E3C20:
/* 805E3C20  A0 1A 00 00 */	lhz r0, 0(r26)
/* 805E3C24  28 00 00 00 */	cmplwi r0, 0
/* 805E3C28  41 82 02 64 */	beq lbl_805E3E8C
/* 805E3C2C  80 B5 00 2C */	lwz r5, 0x2c(r21)
/* 805E3C30  7E A3 AB 78 */	mr r3, r21
/* 805E3C34  7F 06 C3 78 */	mr r6, r24
/* 805E3C38  38 81 00 08 */	addi r4, r1, 8
/* 805E3C3C  80 E5 09 7C */	lwz r7, 0x97c(r5)
/* 805E3C40  38 A0 00 00 */	li r5, 0
/* 805E3C44  81 87 02 D8 */	lwz r12, 0x2d8(r7)
/* 805E3C48  7D 89 03 A6 */	mtctr r12
/* 805E3C4C  4E 80 04 21 */	bctrl 
/* 805E3C50  80 1D 00 40 */	lwz r0, 0x40(r29)
/* 805E3C54  2C 00 00 00 */	cmpwi r0, 0
/* 805E3C58  40 82 01 20 */	bne lbl_805E3D78
/* 805E3C5C  88 79 00 00 */	lbz r3, 0(r25)
/* 805E3C60  2C 03 00 01 */	cmpwi r3, 1
/* 805E3C64  41 82 00 50 */	beq lbl_805E3CB4
/* 805E3C68  40 80 00 10 */	bge lbl_805E3C78
/* 805E3C6C  2C 03 00 00 */	cmpwi r3, 0
/* 805E3C70  40 80 00 34 */	bge lbl_805E3CA4
/* 805E3C74  48 00 00 84 */	b lbl_805E3CF8
lbl_805E3C78:
/* 805E3C78  2C 03 00 05 */	cmpwi r3, 5
/* 805E3C7C  41 82 00 08 */	beq lbl_805E3C84
/* 805E3C80  48 00 00 78 */	b lbl_805E3CF8
lbl_805E3C84:
/* 805E3C84  A8 9B 03 F8 */	lha r4, 0x3f8(r27)
/* 805E3C88  3C 60 80 65 */	lis r3, lit_741@ha /* 0x8064B3F4@ha */
/* 805E3C8C  C3 A3 B3 F4 */	lfs f29, lit_741@l(r3)  /* 0x8064B3F4@l */
/* 805E3C90  20 04 00 00 */	subfic r0, r4, 0
/* 805E3C94  7C 60 01 10 */	subfe r3, r0, r0
/* 805E3C98  20 04 00 30 */	subfic r0, r4, 0x30
/* 805E3C9C  7C 17 18 38 */	and r23, r0, r3
/* 805E3CA0  48 00 00 A8 */	b lbl_805E3D48
lbl_805E3CA4:
/* 805E3CA4  3C 60 80 65 */	lis r3, lit_741@ha /* 0x8064B3F4@ha */
/* 805E3CA8  3A E0 00 00 */	li r23, 0
/* 805E3CAC  C3 A3 B3 F4 */	lfs f29, lit_741@l(r3)  /* 0x8064B3F4@l */
/* 805E3CB0  48 00 00 98 */	b lbl_805E3D48
lbl_805E3CB4:
/* 805E3CB4  A8 DB 03 F8 */	lha r6, 0x3f8(r27)
/* 805E3CB8  3C 00 43 30 */	lis r0, 0x4330
/* 805E3CBC  3C 80 80 65 */	lis r4, lit_746@ha /* 0x8064B404@ha */
/* 805E3CC0  3C A0 80 65 */	lis r5, lit_1606@ha /* 0x8064B4B4@ha */
/* 805E3CC4  6C C3 80 00 */	xoris r3, r6, 0x8000
/* 805E3CC8  22 E6 00 46 */	subfic r23, r6, 0x46
/* 805E3CCC  90 61 00 14 */	stw r3, 0x14(r1)
/* 805E3CD0  2C 17 00 06 */	cmpwi r23, 6
/* 805E3CD4  C8 24 B4 04 */	lfd f1, lit_746@l(r4)  /* 0x8064B404@l */
/* 805E3CD8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805E3CDC  C0 45 B4 B4 */	lfs f2, lit_1606@l(r5)  /* 0x8064B4B4@l */
/* 805E3CE0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805E3CE4  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E3CE8  EF A2 00 32 */	fmuls f29, f2, f0
/* 805E3CEC  41 80 00 5C */	blt lbl_805E3D48
/* 805E3CF0  3A E0 00 05 */	li r23, 5
/* 805E3CF4  48 00 00 54 */	b lbl_805E3D48
lbl_805E3CF8:
/* 805E3CF8  38 03 FF FE */	addi r0, r3, -2
/* 805E3CFC  A8 7B 03 F8 */	lha r3, 0x3f8(r27)
/* 805E3D00  1C A0 00 0E */	mulli r5, r0, 0xe
/* 805E3D04  3A E0 00 00 */	li r23, 0
/* 805E3D08  3C 00 43 30 */	lis r0, 0x4330
/* 805E3D0C  38 83 FF F2 */	addi r4, r3, -14
/* 805E3D10  90 01 00 10 */	stw r0, 0x10(r1)
/* 805E3D14  7C 05 20 50 */	subf r0, r5, r4
/* 805E3D18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805E3D1C  3C 60 80 65 */	lis r3, lit_746@ha /* 0x8064B404@ha */
/* 805E3D20  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E3D24  3C 80 80 65 */	lis r4, lit_1606@ha /* 0x8064B4B4@ha */
/* 805E3D28  C8 23 B4 04 */	lfd f1, lit_746@l(r3)  /* 0x8064B404@l */
/* 805E3D2C  3C A0 80 65 */	lis r5, lit_741@ha /* 0x8064B3F4@ha */
/* 805E3D30  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805E3D34  C0 44 B4 B4 */	lfs f2, lit_1606@l(r4)  /* 0x8064B4B4@l */
/* 805E3D38  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E3D3C  C0 25 B3 F4 */	lfs f1, lit_741@l(r5)  /* 0x8064B3F4@l */
/* 805E3D40  EC 02 00 32 */	fmuls f0, f2, f0
/* 805E3D44  EF A1 00 28 */	fsubs f29, f1, f0
lbl_805E3D48:
/* 805E3D48  3C 60 80 65 */	lis r3, lit_741@ha /* 0x8064B3F4@ha */
/* 805E3D4C  C0 03 B3 F4 */	lfs f0, lit_741@l(r3)  /* 0x8064B3F4@l */
/* 805E3D50  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 805E3D54  40 81 00 0C */	ble lbl_805E3D60
/* 805E3D58  FF A0 00 90 */	fmr f29, f0
/* 805E3D5C  48 00 00 28 */	b lbl_805E3D84
lbl_805E3D60:
/* 805E3D60  3C 60 80 65 */	lis r3, lit_744@ha /* 0x8064B400@ha */
/* 805E3D64  C0 03 B4 00 */	lfs f0, lit_744@l(r3)  /* 0x8064B400@l */
/* 805E3D68  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 805E3D6C  40 80 00 18 */	bge lbl_805E3D84
/* 805E3D70  FF A0 00 90 */	fmr f29, f0
/* 805E3D74  48 00 00 10 */	b lbl_805E3D84
lbl_805E3D78:
/* 805E3D78  3C 60 80 65 */	lis r3, lit_741@ha /* 0x8064B3F4@ha */
/* 805E3D7C  3A E0 00 00 */	li r23, 0
/* 805E3D80  C3 A3 B3 F4 */	lfs f29, lit_741@l(r3)  /* 0x8064B3F4@l */
lbl_805E3D84:
/* 805E3D84  88 19 00 00 */	lbz r0, 0(r25)
/* 805E3D88  28 00 00 05 */	cmplwi r0, 5
/* 805E3D8C  40 82 00 84 */	bne lbl_805E3E10
/* 805E3D90  6E E3 80 00 */	xoris r3, r23, 0x8000
/* 805E3D94  3C 00 43 30 */	lis r0, 0x4330
/* 805E3D98  3C 80 80 65 */	lis r4, lit_746@ha /* 0x8064B404@ha */
/* 805E3D9C  90 61 00 14 */	stw r3, 0x14(r1)
/* 805E3DA0  38 64 B4 04 */	addi r3, r4, lit_746@l /* 0x8064B404@l */
/* 805E3DA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805E3DA8  3C 80 80 65 */	lis r4, lit_744@ha /* 0x8064B400@ha */
/* 805E3DAC  C8 23 00 00 */	lfd f1, 0(r3)
/* 805E3DB0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805E3DB4  C0 44 B4 00 */	lfs f2, lit_744@l(r4)  /* 0x8064B400@l */
/* 805E3DB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E3DBC  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 805E3DC0  41 82 00 50 */	beq lbl_805E3E10
/* 805E3DC4  80 75 00 2C */	lwz r3, 0x2c(r21)
/* 805E3DC8  38 00 00 01 */	li r0, 1
/* 805E3DCC  C0 21 00 08 */	lfs f1, 8(r1)
/* 805E3DD0  FC 60 E8 90 */	fmr f3, f29
/* 805E3DD4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805E3DD8  7C 00 C0 30 */	slw r0, r0, r24
/* 805E3DDC  A0 9B 03 BC */	lhz r4, 0x3bc(r27)
/* 805E3DE0  EC 3E 08 2A */	fadds f1, f30, f1
/* 805E3DE4  81 83 09 5C */	lwz r12, 0x95c(r3)
/* 805E3DE8  EC 5F 00 2A */	fadds f2, f31, f0
/* 805E3DEC  7E C3 B3 78 */	mr r3, r22
/* 805E3DF0  7C 86 00 38 */	and r6, r4, r0
/* 805E3DF4  A0 9A 00 00 */	lhz r4, 0(r26)
/* 805E3DF8  38 A0 00 00 */	li r5, 0
/* 805E3DFC  38 E0 00 00 */	li r7, 0
/* 805E3E00  39 00 00 00 */	li r8, 0
/* 805E3E04  39 20 00 00 */	li r9, 0
/* 805E3E08  7D 89 03 A6 */	mtctr r12
/* 805E3E0C  4E 80 04 21 */	bctrl 
lbl_805E3E10:
/* 805E3E10  2C 1E 00 00 */	cmpwi r30, 0
/* 805E3E14  3B E0 00 00 */	li r31, 0
/* 805E3E18  41 82 00 1C */	beq lbl_805E3E34
/* 805E3E1C  38 60 00 01 */	li r3, 1
/* 805E3E20  A0 9B 03 BC */	lhz r4, 0x3bc(r27)
/* 805E3E24  7C 60 C0 30 */	slw r0, r3, r24
/* 805E3E28  7C 80 00 39 */	and. r0, r4, r0
/* 805E3E2C  41 82 00 08 */	beq lbl_805E3E34
/* 805E3E30  7C 7F 1B 78 */	mr r31, r3
lbl_805E3E34:
/* 805E3E34  7F 63 DB 78 */	mr r3, r27
/* 805E3E38  7F 04 C3 78 */	mr r4, r24
/* 805E3E3C  4B FF FD 31 */	bl mIV_is_mark_check
/* 805E3E40  80 BC 61 3C */	lwz r5, 0x613c(r28)
/* 805E3E44  7C 69 1B 78 */	mr r9, r3
/* 805E3E48  80 95 00 2C */	lwz r4, 0x2c(r21)
/* 805E3E4C  FC 60 E8 90 */	fmr f3, f29
/* 805E3E50  80 05 00 88 */	lwz r0, 0x88(r5)
/* 805E3E54  7E C3 B3 78 */	mr r3, r22
/* 805E3E58  C0 21 00 08 */	lfs f1, 8(r1)
/* 805E3E5C  7F E6 FB 78 */	mr r6, r31
/* 805E3E60  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805E3E64  81 84 09 5C */	lwz r12, 0x95c(r4)
/* 805E3E68  7C 00 A4 30 */	srw r0, r0, r20
/* 805E3E6C  EC 3E 08 2A */	fadds f1, f30, f1
/* 805E3E70  54 05 07 FE */	clrlwi r5, r0, 0x1f
/* 805E3E74  EC 5F 00 2A */	fadds f2, f31, f0
/* 805E3E78  7E E7 BB 78 */	mr r7, r23
/* 805E3E7C  A0 9A 00 00 */	lhz r4, 0(r26)
/* 805E3E80  39 00 00 00 */	li r8, 0
/* 805E3E84  7D 89 03 A6 */	mtctr r12
/* 805E3E88  4E 80 04 21 */	bctrl 
lbl_805E3E8C:
/* 805E3E8C  3B 18 00 01 */	addi r24, r24, 1
/* 805E3E90  3B 5A 00 02 */	addi r26, r26, 2
/* 805E3E94  2C 18 00 0F */	cmpwi r24, 0xf
/* 805E3E98  3B 39 00 01 */	addi r25, r25, 1
/* 805E3E9C  3A 94 00 02 */	addi r20, r20, 2
/* 805E3EA0  41 80 FD 80 */	blt lbl_805E3C20
/* 805E3EA4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 805E3EA8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 805E3EAC  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 805E3EB0  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 805E3EB4  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 805E3EB8  39 61 00 50 */	addi r11, r1, 0x50
/* 805E3EBC  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 805E3EC0  4B AB 70 3D */	bl func_8009AEFC
/* 805E3EC4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805E3EC8  7C 08 03 A6 */	mtlr r0
/* 805E3ECC  38 21 00 80 */	addi r1, r1, 0x80
/* 805E3ED0  4E 80 00 20 */	blr 
