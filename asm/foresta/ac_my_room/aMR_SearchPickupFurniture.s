lbl_8047AD48:
/* 8047AD48  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8047AD4C  7C 08 02 A6 */	mflr r0
/* 8047AD50  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8047AD54  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8047AD58  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8047AD5C  39 61 00 90 */	addi r11, r1, 0x90
/* 8047AD60  4B C2 01 59 */	bl func_8009AEB8
/* 8047AD64  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8047AD68  7C 77 1B 78 */	mr r23, r3
/* 8047AD6C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8047AD70  38 60 00 01 */	li r3, 1
/* 8047AD74  3C A4 00 02 */	addis r5, r4, 2
/* 8047AD78  80 85 60 8C */	lwz r4, 0x608c(r5)
/* 8047AD7C  8A C5 60 03 */	lbz r22, 0x6003(r5)
/* 8047AD80  83 04 00 00 */	lwz r24, 0(r4)
/* 8047AD84  4B FF 56 6D */	bl aMR_GetLayerTopFg
/* 8047AD88  7C 7B 1B 78 */	mr r27, r3
/* 8047AD8C  38 60 00 00 */	li r3, 0
/* 8047AD90  4B FF 56 61 */	bl aMR_GetLayerTopFg
/* 8047AD94  7C 7C 1B 78 */	mr r28, r3
/* 8047AD98  7E E3 BB 78 */	mr r3, r23
/* 8047AD9C  4B F5 E8 A5 */	bl get_player_actor_withoutCheck
/* 8047ADA0  38 63 00 28 */	addi r3, r3, 0x28
/* 8047ADA4  4B F1 6A 51 */	bl mCoBG_CheckUtFlat
/* 8047ADA8  2C 03 00 00 */	cmpwi r3, 0
/* 8047ADAC  40 82 00 0C */	bne lbl_8047ADB8
/* 8047ADB0  38 60 00 00 */	li r3, 0
/* 8047ADB4  48 00 04 80 */	b lbl_8047B234
lbl_8047ADB8:
/* 8047ADB8  80 18 03 6C */	lwz r0, 0x36c(r24)
/* 8047ADBC  2C 00 00 01 */	cmpwi r0, 1
/* 8047ADC0  41 82 00 30 */	beq lbl_8047ADF0
/* 8047ADC4  7F 03 C3 78 */	mr r3, r24
/* 8047ADC8  38 80 00 01 */	li r4, 1
/* 8047ADCC  4B FF D4 A5 */	bl aMR_CheckReserveFlag
/* 8047ADD0  2C 03 00 01 */	cmpwi r3, 1
/* 8047ADD4  41 82 00 1C */	beq lbl_8047ADF0
/* 8047ADD8  80 18 04 84 */	lwz r0, 0x484(r24)
/* 8047ADDC  2C 00 00 01 */	cmpwi r0, 1
/* 8047ADE0  41 82 00 10 */	beq lbl_8047ADF0
/* 8047ADE4  88 18 04 6C */	lbz r0, 0x46c(r24)
/* 8047ADE8  2C 00 00 01 */	cmpwi r0, 1
/* 8047ADEC  40 82 00 0C */	bne lbl_8047ADF8
lbl_8047ADF0:
/* 8047ADF0  38 60 00 00 */	li r3, 0
/* 8047ADF4  48 00 04 40 */	b lbl_8047B234
lbl_8047ADF8:
/* 8047ADF8  38 00 FF FF */	li r0, -1
/* 8047ADFC  7E C3 B3 78 */	mr r3, r22
/* 8047AE00  90 18 03 70 */	stw r0, 0x370(r24)
/* 8047AE04  7F 04 C3 78 */	mr r4, r24
/* 8047AE08  4B FF 7D D5 */	bl aMR_CheckRoomOwner
/* 8047AE0C  2C 03 00 00 */	cmpwi r3, 0
/* 8047AE10  41 82 04 20 */	beq lbl_8047B230
/* 8047AE14  7E E3 BB 78 */	mr r3, r23
/* 8047AE18  4B F5 E8 29 */	bl get_player_actor_withoutCheck
/* 8047AE1C  7C 7D 1B 78 */	mr r29, r3
/* 8047AE20  38 61 00 24 */	addi r3, r1, 0x24
/* 8047AE24  AA FD 00 DE */	lha r23, 0xde(r29)
/* 8047AE28  38 81 00 20 */	addi r4, r1, 0x20
/* 8047AE2C  80 FD 00 28 */	lwz r7, 0x28(r29)
/* 8047AE30  38 A1 00 34 */	addi r5, r1, 0x34
/* 8047AE34  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 8047AE38  38 C0 00 00 */	li r6, 0
/* 8047AE3C  90 E1 00 34 */	stw r7, 0x34(r1)
/* 8047AE40  90 01 00 38 */	stw r0, 0x38(r1)
/* 8047AE44  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 8047AE48  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8047AE4C  4B FF 62 05 */	bl aMR_Wpos2PlaceNumber
/* 8047AE50  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8047AE54  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047AE58  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8047AE5C  3B C4 DF E8 */	addi r30, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047AE60  54 00 20 36 */	slwi r0, r0, 4
/* 8047AE64  3A C0 00 00 */	li r22, 0
/* 8047AE68  7C 03 02 14 */	add r0, r3, r0
/* 8047AE6C  54 1F 08 3C */	slwi r31, r0, 1
lbl_8047AE70:
/* 8047AE70  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8047AE74  7E E5 BB 78 */	mr r5, r23
/* 8047AE78  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8047AE7C  7E C6 B3 78 */	mr r6, r22
/* 8047AE80  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8047AE84  38 61 00 1C */	addi r3, r1, 0x1c
/* 8047AE88  38 81 00 18 */	addi r4, r1, 0x18
/* 8047AE8C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8047AE90  4B FF D0 D5 */	bl aMR_GetPlayerLookAtUnit
/* 8047AE94  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8047AE98  38 61 00 40 */	addi r3, r1, 0x40
/* 8047AE9C  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8047AEA0  54 A0 20 36 */	slwi r0, r5, 4
/* 8047AEA4  7F 24 02 14 */	add r25, r4, r0
/* 8047AEA8  4B F2 A5 D5 */	bl mFI_UtNum2CenterWpos
/* 8047AEAC  C0 7D 00 28 */	lfs f3, 0x28(r29)
/* 8047AEB0  38 61 00 0E */	addi r3, r1, 0xe
/* 8047AEB4  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8047AEB8  38 81 00 14 */	addi r4, r1, 0x14
/* 8047AEBC  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 8047AEC0  38 E0 00 01 */	li r7, 1
/* 8047AEC4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8047AEC8  EC 43 10 28 */	fsubs f2, f3, f2
/* 8047AECC  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8047AED0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8047AED4  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 8047AED8  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8047AEDC  EC 00 00 32 */	fmuls f0, f0, f0
/* 8047AEE0  EF E1 00 2A */	fadds f31, f1, f0
/* 8047AEE4  48 00 30 5D */	bl aMR_UnitNum2FtrItemNoFtrID
/* 8047AEE8  2C 03 00 00 */	cmpwi r3, 0
/* 8047AEEC  41 82 00 8C */	beq lbl_8047AF78
/* 8047AEF0  3C 60 80 64 */	lis r3, lit_5020@ha /* 0x80644AD4@ha */
/* 8047AEF4  C0 03 4A D4 */	lfs f0, lit_5020@l(r3)  /* 0x80644AD4@l */
/* 8047AEF8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8047AEFC  4C 40 13 82 */	cror 2, 0, 2
/* 8047AF00  40 82 00 78 */	bne lbl_8047AF78
/* 8047AF04  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8047AF08  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047AF0C  80 7E 00 04 */	lwz r3, 4(r30)
/* 8047AF10  38 C4 DF E8 */	addi r6, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047AF14  1C 85 08 58 */	mulli r4, r5, 0x858
/* 8047AF18  80 C6 00 00 */	lwz r6, 0(r6)
/* 8047AF1C  7C 03 28 AE */	lbzx r0, r3, r5
/* 8047AF20  28 00 00 01 */	cmplwi r0, 1
/* 8047AF24  7C 66 22 14 */	add r3, r6, r4
/* 8047AF28  40 82 00 50 */	bne lbl_8047AF78
/* 8047AF2C  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8047AF30  2C 00 00 0E */	cmpwi r0, 0xe
/* 8047AF34  41 82 00 3C */	beq lbl_8047AF70
/* 8047AF38  2C 00 00 0C */	cmpwi r0, 0xc
/* 8047AF3C  41 82 00 34 */	beq lbl_8047AF70
/* 8047AF40  2C 00 00 0D */	cmpwi r0, 0xd
/* 8047AF44  41 82 00 2C */	beq lbl_8047AF70
/* 8047AF48  2C 00 00 0F */	cmpwi r0, 0xf
/* 8047AF4C  41 82 00 24 */	beq lbl_8047AF70
/* 8047AF50  A0 C1 00 0E */	lhz r6, 0xe(r1)
/* 8047AF54  7F 04 C3 78 */	mr r4, r24
/* 8047AF58  38 61 00 0A */	addi r3, r1, 0xa
/* 8047AF5C  4B FF FB D1 */	bl aMR_JudgePickUpCommon
/* 8047AF60  2C 03 00 00 */	cmpwi r3, 0
/* 8047AF64  41 82 00 0C */	beq lbl_8047AF70
/* 8047AF68  A0 61 00 0A */	lhz r3, 0xa(r1)
/* 8047AF6C  48 00 02 C8 */	b lbl_8047B234
lbl_8047AF70:
/* 8047AF70  38 60 00 00 */	li r3, 0
/* 8047AF74  48 00 02 C0 */	b lbl_8047B234
lbl_8047AF78:
/* 8047AF78  57 39 08 3C */	slwi r25, r25, 1
/* 8047AF7C  7F 5B CA 2E */	lhzx r26, r27, r25
/* 8047AF80  57 40 A7 3E */	rlwinm r0, r26, 0x14, 0x1c, 0x1f
/* 8047AF84  2C 00 00 02 */	cmpwi r0, 2
/* 8047AF88  40 82 00 C8 */	bne lbl_8047B050
/* 8047AF8C  3C 60 80 64 */	lis r3, lit_5020@ha /* 0x80644AD4@ha */
/* 8047AF90  C0 03 4A D4 */	lfs f0, lit_5020@l(r3)  /* 0x80644AD4@l */
/* 8047AF94  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8047AF98  4C 40 13 82 */	cror 2, 0, 2
/* 8047AF9C  40 82 00 B4 */	bne lbl_8047B050
/* 8047AFA0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8047AFA4  3C 00 43 30 */	lis r0, 0x4330
/* 8047AFA8  3C 80 80 64 */	lis r4, lit_888@ha /* 0x806449FC@ha */
/* 8047AFAC  3C A0 80 64 */	lis r5, lit_885@ha /* 0x806449F4@ha */
/* 8047AFB0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8047AFB4  C8 44 49 FC */	lfd f2, lit_888@l(r4)  /* 0x806449FC@l */
/* 8047AFB8  90 61 00 54 */	stw r3, 0x54(r1)
/* 8047AFBC  38 C5 49 F4 */	addi r6, r5, lit_885@l /* 0x806449F4@l */
/* 8047AFC0  3C E0 80 64 */	lis r7, lit_884@ha /* 0x806449F0@ha */
/* 8047AFC4  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 8047AFC8  90 01 00 50 */	stw r0, 0x50(r1)
/* 8047AFCC  38 A3 49 F8 */	addi r5, r3, lit_886@l /* 0x806449F8@l */
/* 8047AFD0  C0 66 00 00 */	lfs f3, 0(r6)
/* 8047AFD4  38 81 00 28 */	addi r4, r1, 0x28
/* 8047AFD8  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8047AFDC  38 60 00 00 */	li r3, 0
/* 8047AFE0  C0 87 49 F0 */	lfs f4, lit_884@l(r7)  /* 0x806449F0@l */
/* 8047AFE4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8047AFE8  C0 25 00 00 */	lfs f1, 0(r5)
/* 8047AFEC  90 01 00 58 */	stw r0, 0x58(r1)
/* 8047AFF0  EC 03 00 32 */	fmuls f0, f3, f0
/* 8047AFF4  EC 04 00 2A */	fadds f0, f4, f0
/* 8047AFF8  D0 18 03 74 */	stfs f0, 0x374(r24)
/* 8047AFFC  D0 38 03 78 */	stfs f1, 0x378(r24)
/* 8047B000  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8047B004  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8047B008  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8047B00C  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8047B010  EC 00 10 28 */	fsubs f0, f0, f2
/* 8047B014  EC 03 00 32 */	fmuls f0, f3, f0
/* 8047B018  EC 04 00 2A */	fadds f0, f4, f0
/* 8047B01C  D0 18 03 7C */	stfs f0, 0x37c(r24)
/* 8047B020  80 B8 03 74 */	lwz r5, 0x374(r24)
/* 8047B024  80 18 03 78 */	lwz r0, 0x378(r24)
/* 8047B028  90 A1 00 28 */	stw r5, 0x28(r1)
/* 8047B02C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8047B030  80 18 03 7C */	lwz r0, 0x37c(r24)
/* 8047B034  90 01 00 30 */	stw r0, 0x30(r1)
/* 8047B038  4B F1 46 81 */	bl func_8038F6B8
/* 8047B03C  D0 38 03 78 */	stfs f1, 0x378(r24)
/* 8047B040  38 00 00 01 */	li r0, 1
/* 8047B044  7F 43 D3 78 */	mr r3, r26
/* 8047B048  B0 18 03 84 */	sth r0, 0x384(r24)
/* 8047B04C  48 00 01 E8 */	b lbl_8047B234
lbl_8047B050:
/* 8047B050  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8047B054  38 61 00 0C */	addi r3, r1, 0xc
/* 8047B058  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 8047B05C  38 81 00 10 */	addi r4, r1, 0x10
/* 8047B060  38 E0 00 00 */	li r7, 0
/* 8047B064  48 00 2E DD */	bl aMR_UnitNum2FtrItemNoFtrID
/* 8047B068  2C 03 00 00 */	cmpwi r3, 0
/* 8047B06C  41 82 00 F8 */	beq lbl_8047B164
/* 8047B070  3C 60 80 64 */	lis r3, lit_5021@ha /* 0x80644AD8@ha */
/* 8047B074  C0 03 4A D8 */	lfs f0, lit_5021@l(r3)  /* 0x80644AD8@l */
/* 8047B078  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8047B07C  4C 40 13 82 */	cror 2, 0, 2
/* 8047B080  40 82 00 E4 */	bne lbl_8047B164
/* 8047B084  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8047B088  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047B08C  80 7E 00 04 */	lwz r3, 4(r30)
/* 8047B090  38 A4 DF E8 */	addi r5, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047B094  1C 80 08 58 */	mulli r4, r0, 0x858
/* 8047B098  80 A5 00 00 */	lwz r5, 0(r5)
/* 8047B09C  7C 03 00 AE */	lbzx r0, r3, r0
/* 8047B0A0  28 00 00 01 */	cmplwi r0, 1
/* 8047B0A4  7F 45 22 14 */	add r26, r5, r4
/* 8047B0A8  40 82 00 BC */	bne lbl_8047B164
/* 8047B0AC  A8 1A 00 3C */	lha r0, 0x3c(r26)
/* 8047B0B0  2C 00 00 0E */	cmpwi r0, 0xe
/* 8047B0B4  41 82 00 B0 */	beq lbl_8047B164
/* 8047B0B8  2C 00 00 0C */	cmpwi r0, 0xc
/* 8047B0BC  41 82 00 A8 */	beq lbl_8047B164
/* 8047B0C0  2C 00 00 0D */	cmpwi r0, 0xd
/* 8047B0C4  41 82 00 A0 */	beq lbl_8047B164
/* 8047B0C8  2C 00 00 0F */	cmpwi r0, 0xf
/* 8047B0CC  41 82 00 98 */	beq lbl_8047B164
/* 8047B0D0  38 60 00 00 */	li r3, 0
/* 8047B0D4  4B FF 60 11 */	bl aMR_GetLayerPlaceTable
/* 8047B0D8  7C 76 1B 78 */	mr r22, r3
/* 8047B0DC  7F 43 D3 78 */	mr r3, r26
/* 8047B0E0  4B FF 50 FD */	bl aMR_GetItemCountInFurniture
/* 8047B0E4  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8047B0E8  38 E0 00 01 */	li r7, 1
/* 8047B0EC  38 60 00 10 */	li r3, 0x10
/* 8047B0F0  38 00 00 0E */	li r0, 0xe
lbl_8047B0F4:
/* 8047B0F4  38 C0 00 01 */	li r6, 1
/* 8047B0F8  7C 09 03 A6 */	mtctr r0
lbl_8047B0FC:
/* 8047B0FC  7D 06 1A 14 */	add r8, r6, r3
/* 8047B100  7C 96 40 AE */	lbzx r4, r22, r8
/* 8047B104  7C 05 20 00 */	cmpw r5, r4
/* 8047B108  40 82 00 1C */	bne lbl_8047B124
/* 8047B10C  55 04 08 3C */	slwi r4, r8, 1
/* 8047B110  7C 9B 22 2E */	lhzx r4, r27, r4
/* 8047B114  28 04 00 00 */	cmplwi r4, 0
/* 8047B118  41 82 00 0C */	beq lbl_8047B124
/* 8047B11C  38 60 00 00 */	li r3, 0
/* 8047B120  48 00 01 14 */	b lbl_8047B234
lbl_8047B124:
/* 8047B124  38 C6 00 01 */	addi r6, r6, 1
/* 8047B128  42 00 FF D4 */	bdnz lbl_8047B0FC
/* 8047B12C  38 E7 00 01 */	addi r7, r7, 1
/* 8047B130  38 63 00 10 */	addi r3, r3, 0x10
/* 8047B134  2C 07 00 0F */	cmpwi r7, 0xf
/* 8047B138  41 80 FF BC */	blt lbl_8047B0F4
/* 8047B13C  A0 C1 00 0C */	lhz r6, 0xc(r1)
/* 8047B140  7F 04 C3 78 */	mr r4, r24
/* 8047B144  38 61 00 08 */	addi r3, r1, 8
/* 8047B148  4B FF F9 E5 */	bl aMR_JudgePickUpCommon
/* 8047B14C  2C 03 00 00 */	cmpwi r3, 0
/* 8047B150  41 82 00 0C */	beq lbl_8047B15C
/* 8047B154  A0 61 00 08 */	lhz r3, 8(r1)
/* 8047B158  48 00 00 DC */	b lbl_8047B234
lbl_8047B15C:
/* 8047B15C  38 60 00 00 */	li r3, 0
/* 8047B160  48 00 00 D4 */	b lbl_8047B234
lbl_8047B164:
/* 8047B164  2C 16 00 00 */	cmpwi r22, 0
/* 8047B168  40 82 00 A4 */	bne lbl_8047B20C
/* 8047B16C  7C 1C FA 2E */	lhzx r0, r28, r31
/* 8047B170  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 8047B174  2C 00 00 02 */	cmpwi r0, 2
/* 8047B178  40 82 00 0C */	bne lbl_8047B184
/* 8047B17C  38 60 00 00 */	li r3, 0
/* 8047B180  48 00 00 B4 */	b lbl_8047B234
lbl_8047B184:
/* 8047B184  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8047B188  38 61 00 0C */	addi r3, r1, 0xc
/* 8047B18C  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 8047B190  38 81 00 10 */	addi r4, r1, 0x10
/* 8047B194  38 E0 00 00 */	li r7, 0
/* 8047B198  48 00 2D A9 */	bl aMR_UnitNum2FtrItemNoFtrID
/* 8047B19C  2C 03 00 00 */	cmpwi r3, 0
/* 8047B1A0  41 82 00 6C */	beq lbl_8047B20C
/* 8047B1A4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8047B1A8  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047B1AC  80 7E 00 04 */	lwz r3, 4(r30)
/* 8047B1B0  38 A4 DF E8 */	addi r5, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047B1B4  1C 80 08 58 */	mulli r4, r0, 0x858
/* 8047B1B8  80 A5 00 00 */	lwz r5, 0(r5)
/* 8047B1BC  7C 03 00 AE */	lbzx r0, r3, r0
/* 8047B1C0  28 00 00 01 */	cmplwi r0, 1
/* 8047B1C4  7C 85 22 14 */	add r4, r5, r4
/* 8047B1C8  40 82 00 44 */	bne lbl_8047B20C
/* 8047B1CC  A8 04 00 3C */	lha r0, 0x3c(r4)
/* 8047B1D0  2C 00 00 0E */	cmpwi r0, 0xe
/* 8047B1D4  41 82 00 38 */	beq lbl_8047B20C
/* 8047B1D8  2C 00 00 0C */	cmpwi r0, 0xc
/* 8047B1DC  41 82 00 30 */	beq lbl_8047B20C
/* 8047B1E0  2C 00 00 0D */	cmpwi r0, 0xd
/* 8047B1E4  41 82 00 28 */	beq lbl_8047B20C
/* 8047B1E8  2C 00 00 0F */	cmpwi r0, 0xf
/* 8047B1EC  41 82 00 20 */	beq lbl_8047B20C
/* 8047B1F0  38 78 03 74 */	addi r3, r24, 0x374
/* 8047B1F4  4B FF CE 31 */	bl aMR_GetFtrShapeCenter
/* 8047B1F8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8047B1FC  7F 04 C3 78 */	mr r4, r24
/* 8047B200  4B FF F8 B9 */	bl aMR_PreparePickingUpFurniture
/* 8047B204  A0 61 00 0C */	lhz r3, 0xc(r1)
/* 8047B208  48 00 00 2C */	b lbl_8047B234
lbl_8047B20C:
/* 8047B20C  7C 1C CA 2E */	lhzx r0, r28, r25
/* 8047B210  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 8047B214  2C 00 00 02 */	cmpwi r0, 2
/* 8047B218  40 82 00 0C */	bne lbl_8047B224
/* 8047B21C  38 60 00 00 */	li r3, 0
/* 8047B220  48 00 00 14 */	b lbl_8047B234
lbl_8047B224:
/* 8047B224  3A D6 00 01 */	addi r22, r22, 1
/* 8047B228  2C 16 00 03 */	cmpwi r22, 3
/* 8047B22C  41 80 FC 44 */	blt lbl_8047AE70
lbl_8047B230:
/* 8047B230  38 60 00 00 */	li r3, 0
lbl_8047B234:
/* 8047B234  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 8047B238  39 61 00 90 */	addi r11, r1, 0x90
/* 8047B23C  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8047B240  4B C1 FC C5 */	bl func_8009AF04
/* 8047B244  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8047B248  7C 08 03 A6 */	mtlr r0
/* 8047B24C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8047B250  4E 80 00 20 */	blr 
