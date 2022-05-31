lbl_805BCA98:
/* 805BCA98  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805BCA9C  7C 08 02 A6 */	mflr r0
/* 805BCAA0  90 01 00 84 */	stw r0, 0x84(r1)
/* 805BCAA4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 805BCAA8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 805BCAAC  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 805BCAB0  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 805BCAB4  39 61 00 60 */	addi r11, r1, 0x60
/* 805BCAB8  4B AD E4 19 */	bl func_8009AED0
/* 805BCABC  7C 9E 23 78 */	mr r30, r4
/* 805BCAC0  FF C0 08 90 */	fmr f30, f1
/* 805BCAC4  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 805BCAC8  FF E0 10 90 */	fmr f31, f2
/* 805BCACC  28 04 50 EE */	cmplwi r4, 0x50ee
/* 805BCAD0  7C 7D 1B 78 */	mr r29, r3
/* 805BCAD4  7C BF 2B 78 */	mr r31, r5
/* 805BCAD8  40 80 00 30 */	bge lbl_805BCB08
/* 805BCADC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BCAE0  3C 9E 00 01 */	addis r4, r30, 1
/* 805BCAE4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BCAE8  38 A0 00 0F */	li r5, 0xf
/* 805BCAEC  3C 63 00 01 */	addis r3, r3, 1
/* 805BCAF0  38 04 90 00 */	addi r0, r4, -28672
/* 805BCAF4  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 805BCAF8  38 63 74 38 */	addi r3, r3, 0x7438
/* 805BCAFC  4B E0 FB E1 */	bl mNpc_SearchAnimalinfo
/* 805BCB00  3B 80 00 28 */	li r28, 0x28
/* 805BCB04  48 00 00 60 */	b lbl_805BCB64
lbl_805BCB08:
/* 805BCB08  28 04 58 00 */	cmplwi r4, 0x5800
/* 805BCB0C  41 80 00 24 */	blt lbl_805BCB30
/* 805BCB10  28 04 58 04 */	cmplwi r4, 0x5804
/* 805BCB14  40 80 00 1C */	bge lbl_805BCB30
/* 805BCB18  38 04 A8 00 */	addi r0, r4, -22528
/* 805BCB1C  3C 60 80 6C */	lis r3, setupInfo_table@ha /* 0x806C6B2C@ha */
/* 805BCB20  54 00 18 38 */	slwi r0, r0, 3
/* 805BCB24  38 63 6B 2C */	addi r3, r3, setupInfo_table@l /* 0x806C6B2C@l */
/* 805BCB28  7F 83 02 AE */	lhax r28, r3, r0
/* 805BCB2C  48 00 00 38 */	b lbl_805BCB64
lbl_805BCB30:
/* 805BCB30  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 805BCB34  28 00 58 09 */	cmplwi r0, 0x5809
/* 805BCB38  41 80 00 14 */	blt lbl_805BCB4C
/* 805BCB3C  28 00 58 0A */	cmplwi r0, 0x580a
/* 805BCB40  40 80 00 0C */	bge lbl_805BCB4C
/* 805BCB44  3B 80 00 3C */	li r28, 0x3c
/* 805BCB48  48 00 00 1C */	b lbl_805BCB64
lbl_805BCB4C:
/* 805BCB4C  57 C4 04 3E */	clrlwi r4, r30, 0x10
/* 805BCB50  3C 60 80 6C */	lis r3, setupInfo_table@ha /* 0x806C6B2C@ha */
/* 805BCB54  38 04 A8 00 */	addi r0, r4, -22528
/* 805BCB58  54 00 18 38 */	slwi r0, r0, 3
/* 805BCB5C  38 63 6B 2C */	addi r3, r3, setupInfo_table@l /* 0x806C6B2C@l */
/* 805BCB60  7F 83 02 AE */	lhax r28, r3, r0
lbl_805BCB64:
/* 805BCB64  D3 C1 00 38 */	stfs f30, 0x38(r1)
/* 805BCB68  3C 60 80 65 */	lis r3, data_8064AB44@ha /* 0x8064AB44@ha */
/* 805BCB6C  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 805BCB70  38 83 AB 44 */	addi r4, r3, data_8064AB44@l /* 0x8064AB44@l */
/* 805BCB74  D3 E1 00 40 */	stfs f31, 0x40(r1)
/* 805BCB78  38 61 00 2C */	addi r3, r1, 0x2c
/* 805BCB7C  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 805BCB80  80 01 00 40 */	lwz r0, 0x40(r1)
/* 805BCB84  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 805BCB88  C0 24 00 00 */	lfs f1, 0(r4)
/* 805BCB8C  90 A1 00 30 */	stw r5, 0x30(r1)
/* 805BCB90  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BCB94  4B DD 2E 05 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 805BCB98  38 00 FF FF */	li r0, -1
/* 805BCB9C  FC 00 08 90 */	fmr f0, f1
/* 805BCBA0  90 01 00 08 */	stw r0, 8(r1)
/* 805BCBA4  FC 20 F0 18 */	frsp f1, f30
/* 805BCBA8  FC 60 F8 18 */	frsp f3, f31
/* 805BCBAC  7F A4 EB 78 */	mr r4, r29
/* 805BCBB0  93 C1 00 0C */	stw r30, 0xc(r1)
/* 805BCBB4  FC 40 00 18 */	frsp f2, f0
/* 805BCBB8  7F 85 E3 78 */	mr r5, r28
/* 805BCBBC  93 E1 00 10 */	stw r31, 0x10(r1)
/* 805BCBC0  38 7D 1D A8 */	addi r3, r29, 0x1da8
/* 805BCBC4  38 C0 00 00 */	li r6, 0
/* 805BCBC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BCBCC  38 E0 00 00 */	li r7, 0
/* 805BCBD0  39 00 00 00 */	li r8, 0
/* 805BCBD4  90 01 00 18 */	stw r0, 0x18(r1)
/* 805BCBD8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805BCBDC  89 3D 00 E4 */	lbz r9, 0xe4(r29)
/* 805BCBE0  89 5D 00 E5 */	lbz r10, 0xe5(r29)
/* 805BCBE4  4B DB 8B 65 */	bl Actor_info_make_actor
/* 805BCBE8  7C 7D 1B 79 */	or. r29, r3, r3
/* 805BCBEC  41 82 00 30 */	beq lbl_805BCC1C
/* 805BCBF0  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 805BCBF4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805BCBF8  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 805BCBFC  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805BCC00  80 01 00 40 */	lwz r0, 0x40(r1)
/* 805BCC04  38 81 00 20 */	addi r4, r1, 0x20
/* 805BCC08  90 A1 00 20 */	stw r5, 0x20(r1)
/* 805BCC0C  38 A0 00 00 */	li r5, 0
/* 805BCC10  90 C1 00 24 */	stw r6, 0x24(r1)
/* 805BCC14  90 01 00 28 */	stw r0, 0x28(r1)
/* 805BCC18  4B DE AC 19 */	bl mFI_SetFG_common
lbl_805BCC1C:
/* 805BCC1C  7F A3 EB 78 */	mr r3, r29
/* 805BCC20  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 805BCC24  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 805BCC28  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 805BCC2C  39 61 00 60 */	addi r11, r1, 0x60
/* 805BCC30  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 805BCC34  4B AD E2 E9 */	bl func_8009AF1C
/* 805BCC38  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805BCC3C  7C 08 03 A6 */	mtlr r0
/* 805BCC40  38 21 00 80 */	addi r1, r1, 0x80
/* 805BCC44  4E 80 00 20 */	blr 
