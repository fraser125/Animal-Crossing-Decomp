lbl_80480E0C:
/* 80480E0C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80480E10  7C 08 02 A6 */	mflr r0
/* 80480E14  90 01 00 64 */	stw r0, 0x64(r1)
/* 80480E18  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80480E1C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80480E20  39 61 00 50 */	addi r11, r1, 0x50
/* 80480E24  4B C1 A0 A1 */	bl func_8009AEC4
/* 80480E28  7C DD 33 78 */	mr r29, r6
/* 80480E2C  7C 7A 1B 78 */	mr r26, r3
/* 80480E30  7C 9B 23 78 */	mr r27, r4
/* 80480E34  7C BC 2B 78 */	mr r28, r5
/* 80480E38  7F A3 EB 78 */	mr r3, r29
/* 80480E3C  4B EF DC 75 */	bl getCamera2AngleY
/* 80480E40  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80480E44  80 1B 00 00 */	lwz r0, 0(r27)
/* 80480E48  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 80480E4C  7C 65 07 34 */	extsh r5, r3
/* 80480E50  80 84 00 00 */	lwz r4, 0(r4)
/* 80480E54  2C 00 00 01 */	cmpwi r0, 1
/* 80480E58  A8 7C 00 DE */	lha r3, 0xde(r28)
/* 80480E5C  A8 84 00 B4 */	lha r4, 0xb4(r4)
/* 80480E60  3C 04 00 01 */	addis r0, r4, 1
/* 80480E64  7C 80 2A 14 */	add r4, r0, r5
/* 80480E68  38 04 C0 00 */	addi r0, r4, -16384
/* 80480E6C  7C 00 07 34 */	extsh r0, r0
/* 80480E70  7C 03 00 50 */	subf r0, r3, r0
/* 80480E74  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 80480E78  40 82 01 68 */	bne lbl_80480FE0
/* 80480E7C  3C 80 80 64 */	lis r4, lit_4430@ha /* 0x80644AAC@ha */
/* 80480E80  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80480E84  38 A4 4A AC */	addi r5, r4, lit_4430@l /* 0x80644AAC@l */
/* 80480E88  3C 00 43 30 */	lis r0, 0x4330
/* 80480E8C  80 C5 00 00 */	lwz r6, 0(r5)
/* 80480E90  3C 80 80 64 */	lis r4, lit_888@ha /* 0x806449FC@ha */
/* 80480E94  80 A5 00 04 */	lwz r5, 4(r5)
/* 80480E98  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80480E9C  3C 60 80 64 */	lis r3, lit_3091@ha /* 0x80644A24@ha */
/* 80480EA0  C8 24 49 FC */	lfd f1, lit_888@l(r4)  /* 0x806449FC@l */
/* 80480EA4  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80480EA8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80480EAC  38 84 DF E8 */	addi r4, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80480EB0  C0 43 4A 24 */	lfs f2, lit_3091@l(r3)  /* 0x80644A24@l */
/* 80480EB4  38 61 00 08 */	addi r3, r1, 8
/* 80480EB8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80480EBC  90 C1 00 08 */	stw r6, 8(r1)
/* 80480EC0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80480EC4  80 84 00 00 */	lwz r4, 0(r4)
/* 80480EC8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80480ECC  80 1B 00 04 */	lwz r0, 4(r27)
/* 80480ED0  EC 22 00 32 */	fmuls f1, f2, f0
/* 80480ED4  1C 00 08 58 */	mulli r0, r0, 0x858
/* 80480ED8  7F C4 02 14 */	add r30, r4, r0
/* 80480EDC  4B FF 75 35 */	bl aMR_RotateY
/* 80480EE0  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 80480EE4  38 81 00 08 */	addi r4, r1, 8
/* 80480EE8  38 A0 00 01 */	li r5, 1
/* 80480EEC  4B F0 9B 25 */	bl mCoBG_Get2VectorAngleF
/* 80480EF0  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 80480EF4  C0 03 49 F8 */	lfs f0, lit_886@l(r3)  /* 0x806449F8@l */
/* 80480EF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80480EFC  4C 41 13 82 */	cror 2, 1, 2
/* 80480F00  40 82 00 1C */	bne lbl_80480F1C
/* 80480F04  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 80480F08  38 81 00 08 */	addi r4, r1, 8
/* 80480F0C  38 A0 00 01 */	li r5, 1
/* 80480F10  4B F0 9B 01 */	bl mCoBG_Get2VectorAngleF
/* 80480F14  FF E0 08 90 */	fmr f31, f1
/* 80480F18  48 00 00 18 */	b lbl_80480F30
lbl_80480F1C:
/* 80480F1C  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 80480F20  38 81 00 08 */	addi r4, r1, 8
/* 80480F24  38 A0 00 01 */	li r5, 1
/* 80480F28  4B F0 9A E9 */	bl mCoBG_Get2VectorAngleF
/* 80480F2C  FF E0 08 50 */	fneg f31, f1
lbl_80480F30:
/* 80480F30  A8 1E 00 3C */	lha r0, 0x3c(r30)
/* 80480F34  2C 00 00 0E */	cmpwi r0, 0xe
/* 80480F38  41 82 00 9C */	beq lbl_80480FD4
/* 80480F3C  2C 00 00 0C */	cmpwi r0, 0xc
/* 80480F40  41 82 00 94 */	beq lbl_80480FD4
/* 80480F44  2C 00 00 0D */	cmpwi r0, 0xd
/* 80480F48  41 82 00 8C */	beq lbl_80480FD4
/* 80480F4C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80480F50  41 82 00 84 */	beq lbl_80480FD4
/* 80480F54  A8 1A 01 74 */	lha r0, 0x174(r26)
/* 80480F58  2C 00 00 00 */	cmpwi r0, 0
/* 80480F5C  40 82 00 78 */	bne lbl_80480FD4
/* 80480F60  4B FF 77 2D */	bl aMR_3DStickNuetral
/* 80480F64  2C 03 00 00 */	cmpwi r3, 0
/* 80480F68  40 82 00 6C */	bne lbl_80480FD4
/* 80480F6C  2C 1F 18 E3 */	cmpwi r31, 0x18e3
/* 80480F70  40 80 00 64 */	bge lbl_80480FD4
/* 80480F74  3C 60 80 64 */	lis r3, lit_4475@ha /* 0x80644AC0@ha */
/* 80480F78  C0 03 4A C0 */	lfs f0, lit_4475@l(r3)  /* 0x80644AC0@l */
/* 80480F7C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80480F80  40 80 00 54 */	bge lbl_80480FD4
/* 80480F84  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 80480F88  3C 60 80 64 */	lis r3, lit_1210@ha /* 0x80644A10@ha */
/* 80480F8C  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 80480F90  C0 03 4A 10 */	lfs f0, lit_1210@l(r3)  /* 0x80644A10@l */
/* 80480F94  80 84 00 00 */	lwz r4, 0(r4)
/* 80480F98  C0 24 00 B0 */	lfs f1, 0xb0(r4)
/* 80480F9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80480FA0  40 81 00 34 */	ble lbl_80480FD4
/* 80480FA4  7F 63 DB 78 */	mr r3, r27
/* 80480FA8  7F 84 E3 78 */	mr r4, r28
/* 80480FAC  4B FF FB A9 */	bl aMR_CheckBedUnderfoot
/* 80480FB0  2C 03 00 00 */	cmpwi r3, 0
/* 80480FB4  40 82 00 14 */	bne lbl_80480FC8
/* 80480FB8  A8 7A 03 56 */	lha r3, 0x356(r26)
/* 80480FBC  38 03 00 01 */	addi r0, r3, 1
/* 80480FC0  B0 1A 03 56 */	sth r0, 0x356(r26)
/* 80480FC4  48 00 00 24 */	b lbl_80480FE8
lbl_80480FC8:
/* 80480FC8  38 00 00 00 */	li r0, 0
/* 80480FCC  B0 1A 03 56 */	sth r0, 0x356(r26)
/* 80480FD0  48 00 00 18 */	b lbl_80480FE8
lbl_80480FD4:
/* 80480FD4  38 00 00 00 */	li r0, 0
/* 80480FD8  B0 1A 03 56 */	sth r0, 0x356(r26)
/* 80480FDC  48 00 00 0C */	b lbl_80480FE8
lbl_80480FE0:
/* 80480FE0  38 00 00 00 */	li r0, 0
/* 80480FE4  B0 1A 03 56 */	sth r0, 0x356(r26)
lbl_80480FE8:
/* 80480FE8  A8 1A 03 56 */	lha r0, 0x356(r26)
/* 80480FEC  2C 00 00 0E */	cmpwi r0, 0xe
/* 80480FF0  40 81 01 4C */	ble lbl_8048113C
/* 80480FF4  A8 1A 01 74 */	lha r0, 0x174(r26)
/* 80480FF8  2C 00 00 00 */	cmpwi r0, 0
/* 80480FFC  40 82 01 40 */	bne lbl_8048113C
/* 80481000  80 1B 00 00 */	lwz r0, 0(r27)
/* 80481004  2C 00 00 01 */	cmpwi r0, 1
/* 80481008  40 82 01 34 */	bne lbl_8048113C
/* 8048100C  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 80481010  2C 00 00 02 */	cmpwi r0, 2
/* 80481014  40 82 01 28 */	bne lbl_8048113C
/* 80481018  80 BB 00 04 */	lwz r5, 4(r27)
/* 8048101C  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80481020  84 83 DF E8 */	lwzu r4, data_811CDFE8@l(r3)  /* 0x811CDFE8@l */
/* 80481024  1C 05 08 58 */	mulli r0, r5, 0x858
/* 80481028  80 63 00 04 */	lwz r3, 4(r3)
/* 8048102C  7F E4 02 14 */	add r31, r4, r0
/* 80481030  7F 23 28 AE */	lbzx r25, r3, r5
/* 80481034  A3 DF 00 00 */	lhz r30, 0(r31)
/* 80481038  7F C3 F3 78 */	mr r3, r30
/* 8048103C  4B FE F1 65 */	bl func_804701A0
/* 80481040  28 03 00 00 */	cmplwi r3, 0
/* 80481044  41 82 00 F8 */	beq lbl_8048113C
/* 80481048  28 19 00 00 */	cmplwi r25, 0
/* 8048104C  41 82 00 F0 */	beq lbl_8048113C
/* 80481050  88 63 00 2C */	lbz r3, 0x2c(r3)
/* 80481054  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 80481058  40 82 00 0C */	bne lbl_80481064
/* 8048105C  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 80481060  41 82 00 DC */	beq lbl_8048113C
lbl_80481064:
/* 80481064  80 1B 00 28 */	lwz r0, 0x28(r27)
/* 80481068  2C 00 00 02 */	cmpwi r0, 2
/* 8048106C  41 82 00 0C */	beq lbl_80481078
/* 80481070  2C 00 00 00 */	cmpwi r0, 0
/* 80481074  40 82 00 C8 */	bne lbl_8048113C
lbl_80481078:
/* 80481078  3C 60 80 64 */	lis r3, lit_4460@ha /* 0x80644AB4@ha */
/* 8048107C  7F 67 DB 78 */	mr r7, r27
/* 80481080  38 C3 4A B4 */	addi r6, r3, lit_4460@l /* 0x80644AB4@l */
/* 80481084  38 61 00 1C */	addi r3, r1, 0x1c
/* 80481088  81 06 00 00 */	lwz r8, 0(r6)
/* 8048108C  38 81 00 10 */	addi r4, r1, 0x10
/* 80481090  81 26 00 04 */	lwz r9, 4(r6)
/* 80481094  38 BB 00 18 */	addi r5, r27, 0x18
/* 80481098  80 06 00 08 */	lwz r0, 8(r6)
/* 8048109C  38 DB 00 20 */	addi r6, r27, 0x20
/* 804810A0  91 01 00 1C */	stw r8, 0x1c(r1)
/* 804810A4  39 00 00 00 */	li r8, 0
/* 804810A8  91 21 00 20 */	stw r9, 0x20(r1)
/* 804810AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804810B0  81 3C 00 28 */	lwz r9, 0x28(r28)
/* 804810B4  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 804810B8  91 21 00 10 */	stw r9, 0x10(r1)
/* 804810BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804810C0  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 804810C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804810C8  4B FF 7F FD */	bl aMR_SetNicePos
/* 804810CC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 804810D0  80 01 00 20 */	lwz r0, 0x20(r1)
/* 804810D4  90 7A 02 DC */	stw r3, 0x2dc(r26)
/* 804810D8  90 1A 02 E0 */	stw r0, 0x2e0(r26)
/* 804810DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804810E0  90 1A 02 E4 */	stw r0, 0x2e4(r26)
/* 804810E4  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 804810E8  4B FF 71 E5 */	bl aMR_GetPlayerDirect
/* 804810EC  4B FF DC 55 */	bl aMR_ConvertDirectLevel
/* 804810F0  7C 60 1B 78 */	mr r0, r3
/* 804810F4  7F E3 FB 78 */	mr r3, r31
/* 804810F8  7C 19 03 78 */	mr r25, r0
/* 804810FC  4B FF F2 C9 */	bl aMR_GetBedHeadDirect
/* 80481100  B0 7A 04 06 */	sth r3, 0x406(r26)
/* 80481104  80 1B 00 04 */	lwz r0, 4(r27)
/* 80481108  B0 1A 04 08 */	sth r0, 0x408(r26)
/* 8048110C  A8 7A 04 06 */	lha r3, 0x406(r26)
/* 80481110  4B FF DC 31 */	bl aMR_ConvertDirectLevel
/* 80481114  2C 19 FF FF */	cmpwi r25, -1
/* 80481118  7C 66 1B 78 */	mr r6, r3
/* 8048111C  41 82 00 20 */	beq lbl_8048113C
/* 80481120  2C 06 FF FF */	cmpwi r6, -1
/* 80481124  41 82 00 18 */	beq lbl_8048113C
/* 80481128  7F A3 EB 78 */	mr r3, r29
/* 8048112C  7F 24 CB 78 */	mr r4, r25
/* 80481130  7F C7 F3 78 */	mr r7, r30
/* 80481134  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80481138  4B F5 94 69 */	bl mPlib_request_main_lie_bed_type1
lbl_8048113C:
/* 8048113C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80481140  39 61 00 50 */	addi r11, r1, 0x50
/* 80481144  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80481148  4B C1 9D C9 */	bl func_8009AF10
/* 8048114C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80481150  7C 08 03 A6 */	mtlr r0
/* 80481154  38 21 00 60 */	addi r1, r1, 0x60
/* 80481158  4E 80 00 20 */	blr 
