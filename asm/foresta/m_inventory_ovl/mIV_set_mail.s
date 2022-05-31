lbl_805E3ED4:
/* 805E3ED4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805E3ED8  7C 08 02 A6 */	mflr r0
/* 805E3EDC  90 01 00 74 */	stw r0, 0x74(r1)
/* 805E3EE0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805E3EE4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805E3EE8  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805E3EEC  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805E3EF0  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 805E3EF4  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 805E3EF8  39 61 00 40 */	addi r11, r1, 0x40
/* 805E3EFC  4B AB 6F C1 */	bl func_8009AEBC
/* 805E3F00  7C 78 1B 78 */	mr r24, r3
/* 805E3F04  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805E3F08  80 D8 00 2C */	lwz r6, 0x2c(r24)
/* 805E3F0C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805E3F10  3C 63 00 02 */	addis r3, r3, 2
/* 805E3F14  FF A0 08 90 */	fmr f29, f1
/* 805E3F18  83 A6 09 88 */	lwz r29, 0x988(r6)
/* 805E3F1C  FF C0 10 90 */	fmr f30, f2
/* 805E3F20  80 C6 09 7C */	lwz r6, 0x97c(r6)
/* 805E3F24  7C 9A 23 78 */	mr r26, r4
/* 805E3F28  A8 1D 03 F8 */	lha r0, 0x3f8(r29)
/* 805E3F2C  80 83 61 3C */	lwz r4, 0x613c(r3)
/* 805E3F30  7C B9 2B 78 */	mr r25, r5
/* 805E3F34  2C 00 00 00 */	cmpwi r0, 0
/* 805E3F38  38 66 00 08 */	addi r3, r6, 8
/* 805E3F3C  3B 84 04 E0 */	addi r28, r4, 0x4e0
/* 805E3F40  38 A0 00 00 */	li r5, 0
/* 805E3F44  40 81 00 50 */	ble lbl_805E3F94
/* 805E3F48  80 03 00 38 */	lwz r0, 0x38(r3)
/* 805E3F4C  2C 00 00 01 */	cmpwi r0, 1
/* 805E3F50  41 82 00 10 */	beq lbl_805E3F60
/* 805E3F54  A8 1D 05 E4 */	lha r0, 0x5e4(r29)
/* 805E3F58  2C 00 00 01 */	cmpwi r0, 1
/* 805E3F5C  40 82 00 38 */	bne lbl_805E3F94
lbl_805E3F60:
/* 805E3F60  A8 1D 05 E4 */	lha r0, 0x5e4(r29)
/* 805E3F64  2C 00 00 01 */	cmpwi r0, 1
/* 805E3F68  40 82 00 0C */	bne lbl_805E3F74
/* 805E3F6C  A0 BD 05 E2 */	lhz r5, 0x5e2(r29)
/* 805E3F70  48 00 00 24 */	b lbl_805E3F94
lbl_805E3F74:
/* 805E3F74  7C 00 07 35 */	extsh. r0, r0
/* 805E3F78  40 82 00 1C */	bne lbl_805E3F94
/* 805E3F7C  81 86 02 EC */	lwz r12, 0x2ec(r6)
/* 805E3F80  7D 89 03 A6 */	mtctr r12
/* 805E3F84  4E 80 04 21 */	bctrl 
/* 805E3F88  38 00 00 01 */	li r0, 1
/* 805E3F8C  7C 00 18 30 */	slw r0, r0, r3
/* 805E3F90  54 05 04 3E */	clrlwi r5, r0, 0x10
lbl_805E3F94:
/* 805E3F94  80 D9 02 D0 */	lwz r6, 0x2d0(r25)
/* 805E3F98  3C 60 80 AA */	lis r3, inv_item_mode@ha /* 0x80AA5910@ha */
/* 805E3F9C  3C 80 DE 00 */	lis r4, 0xde00
/* 805E3FA0  7C C7 33 78 */	mr r7, r6
/* 805E3FA4  38 03 59 10 */	addi r0, r3, inv_item_mode@l /* 0x80AA5910@l */
/* 805E3FA8  90 86 00 00 */	stw r4, 0(r6)
/* 805E3FAC  38 C6 00 08 */	addi r6, r6, 8
/* 805E3FB0  90 07 00 04 */	stw r0, 4(r7)
/* 805E3FB4  90 D9 02 D0 */	stw r6, 0x2d0(r25)
/* 805E3FB8  80 1A 00 38 */	lwz r0, 0x38(r26)
/* 805E3FBC  2C 00 00 0E */	cmpwi r0, 0xe
/* 805E3FC0  40 82 00 10 */	bne lbl_805E3FD0
/* 805E3FC4  3C 60 80 65 */	lis r3, lit_1674@ha /* 0x8064B4B8@ha */
/* 805E3FC8  C0 03 B4 B8 */	lfs f0, lit_1674@l(r3)  /* 0x8064B4B8@l */
/* 805E3FCC  EF BD 00 28 */	fsubs f29, f29, f0
lbl_805E3FD0:
/* 805E3FD0  80 1A 00 14 */	lwz r0, 0x14(r26)
/* 805E3FD4  3B 40 00 01 */	li r26, 1
/* 805E3FD8  2C 00 00 17 */	cmpwi r0, 0x17
/* 805E3FDC  40 82 00 08 */	bne lbl_805E3FE4
/* 805E3FE0  3B 40 00 00 */	li r26, 0
lbl_805E3FE4:
/* 805E3FE4  3B 60 00 00 */	li r27, 0
/* 805E3FE8  54 BF 04 3E */	clrlwi r31, r5, 0x10
lbl_805E3FEC:
/* 805E3FEC  38 00 00 01 */	li r0, 1
/* 805E3FF0  A0 7D 05 E8 */	lhz r3, 0x5e8(r29)
/* 805E3FF4  7C 1E D8 30 */	slw r30, r0, r27
/* 805E3FF8  7C 60 F0 39 */	and. r0, r3, r30
/* 805E3FFC  40 82 00 F0 */	bne lbl_805E40EC
/* 805E4000  7F 83 E3 78 */	mr r3, r28
/* 805E4004  4B DD 87 9D */	bl mMl_check_not_used_mail
/* 805E4008  2C 03 00 01 */	cmpwi r3, 1
/* 805E400C  41 82 00 E0 */	beq lbl_805E40EC
/* 805E4010  7F E0 F0 39 */	and. r0, r31, r30
/* 805E4014  41 82 00 38 */	beq lbl_805E404C
/* 805E4018  A8 7D 03 F8 */	lha r3, 0x3f8(r29)
/* 805E401C  3C 00 43 30 */	lis r0, 0x4330
/* 805E4020  3C 80 80 65 */	lis r4, lit_746@ha /* 0x8064B404@ha */
/* 805E4024  3C A0 80 65 */	lis r5, lit_1675@ha /* 0x8064B4BC@ha */
/* 805E4028  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 805E402C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805E4030  C8 24 B4 04 */	lfd f1, lit_746@l(r4)  /* 0x8064B404@l */
/* 805E4034  90 61 00 14 */	stw r3, 0x14(r1)
/* 805E4038  C0 45 B4 BC */	lfs f2, lit_1675@l(r5)  /* 0x8064B4BC@l */
/* 805E403C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805E4040  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E4044  EF E2 00 32 */	fmuls f31, f2, f0
/* 805E4048  48 00 00 0C */	b lbl_805E4054
lbl_805E404C:
/* 805E404C  3C 60 80 65 */	lis r3, lit_741@ha /* 0x8064B3F4@ha */
/* 805E4050  C3 E3 B3 F4 */	lfs f31, lit_741@l(r3)  /* 0x8064B3F4@l */
lbl_805E4054:
/* 805E4054  A0 1D 05 E2 */	lhz r0, 0x5e2(r29)
/* 805E4058  7C 00 F0 39 */	and. r0, r0, r30
/* 805E405C  41 82 00 18 */	beq lbl_805E4074
/* 805E4060  A8 1D 05 E4 */	lha r0, 0x5e4(r29)
/* 805E4064  2C 00 00 00 */	cmpwi r0, 0
/* 805E4068  40 82 00 0C */	bne lbl_805E4074
/* 805E406C  3A E0 00 01 */	li r23, 1
/* 805E4070  48 00 00 08 */	b lbl_805E4078
lbl_805E4074:
/* 805E4074  3A E0 00 00 */	li r23, 0
lbl_805E4078:
/* 805E4078  80 B8 00 2C */	lwz r5, 0x2c(r24)
/* 805E407C  7F 03 C3 78 */	mr r3, r24
/* 805E4080  7F 66 DB 78 */	mr r6, r27
/* 805E4084  38 81 00 08 */	addi r4, r1, 8
/* 805E4088  80 E5 09 7C */	lwz r7, 0x97c(r5)
/* 805E408C  38 A0 00 01 */	li r5, 1
/* 805E4090  81 87 02 D8 */	lwz r12, 0x2d8(r7)
/* 805E4094  7D 89 03 A6 */	mtctr r12
/* 805E4098  4E 80 04 21 */	bctrl 
/* 805E409C  C0 21 00 08 */	lfs f1, 8(r1)
/* 805E40A0  FC 60 F8 90 */	fmr f3, f31
/* 805E40A4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805E40A8  2C 1A 00 00 */	cmpwi r26, 0
/* 805E40AC  EC 3D 08 2A */	fadds f1, f29, f1
/* 805E40B0  7F 23 CB 78 */	mr r3, r25
/* 805E40B4  EC 5E 00 2A */	fadds f2, f30, f0
/* 805E40B8  7F 84 E3 78 */	mr r4, r28
/* 805E40BC  38 A0 00 00 */	li r5, 0
/* 805E40C0  41 82 00 14 */	beq lbl_805E40D4
/* 805E40C4  A0 1D 03 BE */	lhz r0, 0x3be(r29)
/* 805E40C8  7C 00 F0 39 */	and. r0, r0, r30
/* 805E40CC  41 82 00 08 */	beq lbl_805E40D4
/* 805E40D0  38 A0 00 01 */	li r5, 1
lbl_805E40D4:
/* 805E40D4  81 18 00 2C */	lwz r8, 0x2c(r24)
/* 805E40D8  7E E7 BB 78 */	mr r7, r23
/* 805E40DC  38 C0 00 00 */	li r6, 0
/* 805E40E0  81 88 09 60 */	lwz r12, 0x960(r8)
/* 805E40E4  7D 89 03 A6 */	mtctr r12
/* 805E40E8  4E 80 04 21 */	bctrl 
lbl_805E40EC:
/* 805E40EC  3B 7B 00 01 */	addi r27, r27, 1
/* 805E40F0  3B 9C 01 2A */	addi r28, r28, 0x12a
/* 805E40F4  2C 1B 00 0A */	cmpwi r27, 0xa
/* 805E40F8  41 80 FE F4 */	blt lbl_805E3FEC
/* 805E40FC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805E4100  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805E4104  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805E4108  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805E410C  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 805E4110  39 61 00 40 */	addi r11, r1, 0x40
/* 805E4114  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 805E4118  4B AB 6D F1 */	bl func_8009AF08
/* 805E411C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805E4120  7C 08 03 A6 */	mtlr r0
/* 805E4124  38 21 00 70 */	addi r1, r1, 0x70
/* 805E4128  4E 80 00 20 */	blr 
