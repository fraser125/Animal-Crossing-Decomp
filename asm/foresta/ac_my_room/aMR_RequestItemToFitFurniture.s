lbl_804779C8:
/* 804779C8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 804779CC  7C 08 02 A6 */	mflr r0
/* 804779D0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 804779D4  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 804779D8  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 804779DC  39 61 00 90 */	addi r11, r1, 0x90
/* 804779E0  4B C2 34 D1 */	bl func_8009AEB0
/* 804779E4  7C 75 1B 78 */	mr r21, r3
/* 804779E8  7C 96 23 78 */	mr r22, r4
/* 804779EC  39 35 05 00 */	addi r9, r21, 0x500
/* 804779F0  80 03 05 00 */	lwz r0, 0x500(r3)
/* 804779F4  2C 00 FF FF */	cmpwi r0, -1
/* 804779F8  40 82 03 28 */	bne lbl_80477D20
/* 804779FC  3C 60 80 69 */	lis r3, init_data@ha /* 0x80689FA0@ha */
/* 80477A00  39 40 00 00 */	li r10, 0
/* 80477A04  38 C3 9F A0 */	addi r6, r3, init_data@l /* 0x80689FA0@l */
/* 80477A08  38 60 00 00 */	li r3, 0
/* 80477A0C  38 A0 00 04 */	li r5, 4
lbl_80477A10:
/* 80477A10  38 03 00 08 */	addi r0, r3, 8
/* 80477A14  38 E6 FF FC */	addi r7, r6, -4
/* 80477A18  7D 09 02 14 */	add r8, r9, r0
/* 80477A1C  7C A9 03 A6 */	mtctr r5
/* 80477A20  39 08 FF FC */	addi r8, r8, -4
lbl_80477A24:
/* 80477A24  80 87 00 04 */	lwz r4, 4(r7)
/* 80477A28  84 07 00 08 */	lwzu r0, 8(r7)
/* 80477A2C  90 88 00 04 */	stw r4, 4(r8)
/* 80477A30  94 08 00 08 */	stwu r0, 8(r8)
/* 80477A34  42 00 FF F0 */	bdnz lbl_80477A24
/* 80477A38  80 07 00 04 */	lwz r0, 4(r7)
/* 80477A3C  39 4A 00 01 */	addi r10, r10, 1
/* 80477A40  2C 0A 00 04 */	cmpwi r10, 4
/* 80477A44  38 63 00 24 */	addi r3, r3, 0x24
/* 80477A48  90 08 00 04 */	stw r0, 4(r8)
/* 80477A4C  41 80 FF C4 */	blt lbl_80477A10
/* 80477A50  80 16 00 04 */	lwz r0, 4(r22)
/* 80477A54  38 61 00 34 */	addi r3, r1, 0x34
/* 80477A58  38 96 00 08 */	addi r4, r22, 8
/* 80477A5C  90 09 00 00 */	stw r0, 0(r9)
/* 80477A60  A8 16 01 24 */	lha r0, 0x124(r22)
/* 80477A64  B0 09 00 04 */	sth r0, 4(r9)
/* 80477A68  88 B6 00 3E */	lbz r5, 0x3e(r22)
/* 80477A6C  4B FF FE 0D */	bl aMR_PosType2FurniturePoccessUnitNo
/* 80477A70  7C 7D 1B 79 */	or. r29, r3, r3
/* 80477A74  41 82 02 AC */	beq lbl_80477D20
/* 80477A78  A0 76 00 00 */	lhz r3, 0(r22)
/* 80477A7C  4B FF 87 25 */	bl func_804701A0
/* 80477A80  80 B6 00 08 */	lwz r5, 8(r22)
/* 80477A84  3C 80 80 64 */	lis r4, lit_886@ha /* 0x806449F8@ha */
/* 80477A88  80 16 00 0C */	lwz r0, 0xc(r22)
/* 80477A8C  7C 74 1B 78 */	mr r20, r3
/* 80477A90  C0 24 49 F8 */	lfs f1, lit_886@l(r4)  /* 0x806449F8@l */
/* 80477A94  38 61 00 1C */	addi r3, r1, 0x1c
/* 80477A98  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80477A9C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80477AA0  80 16 00 10 */	lwz r0, 0x10(r22)
/* 80477AA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80477AA8  4B F1 7E F1 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 80477AAC  C0 14 00 20 */	lfs f0, 0x20(r20)
/* 80477AB0  38 60 00 01 */	li r3, 1
/* 80477AB4  EF E0 08 2A */	fadds f31, f0, f1
/* 80477AB8  4B FF 89 39 */	bl aMR_GetLayerTopFg
/* 80477ABC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80477AC0  41 82 02 60 */	beq lbl_80477D20
/* 80477AC4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80477AC8  3B E1 00 34 */	addi r31, r1, 0x34
/* 80477ACC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80477AD0  3B 40 00 00 */	li r26, 0
/* 80477AD4  3F 83 00 02 */	addis r28, r3, 2
/* 80477AD8  3A 80 00 00 */	li r20, 0
/* 80477ADC  48 00 02 34 */	b lbl_80477D10
lbl_80477AE0:
/* 80477AE0  7C 7F A0 2E */	lwzx r3, r31, r20
/* 80477AE4  54 60 08 3C */	slwi r0, r3, 1
/* 80477AE8  54 79 07 3E */	clrlwi r25, r3, 0x1c
/* 80477AEC  7F 7E 02 14 */	add r27, r30, r0
/* 80477AF0  54 78 E7 3E */	rlwinm r24, r3, 0x1c, 0x1c, 0x1f
/* 80477AF4  A0 1B 00 00 */	lhz r0, 0(r27)
/* 80477AF8  28 00 00 00 */	cmplwi r0, 0
/* 80477AFC  41 82 02 0C */	beq lbl_80477D08
/* 80477B00  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80477B04  2C 00 00 01 */	cmpwi r0, 1
/* 80477B08  41 82 00 0C */	beq lbl_80477B14
/* 80477B0C  2C 00 00 03 */	cmpwi r0, 3
/* 80477B10  40 82 00 FC */	bne lbl_80477C0C
lbl_80477B14:
/* 80477B14  7F 25 CB 78 */	mr r5, r25
/* 80477B18  7F 06 C3 78 */	mr r6, r24
/* 80477B1C  38 61 00 08 */	addi r3, r1, 8
/* 80477B20  38 81 00 0C */	addi r4, r1, 0xc
/* 80477B24  38 E0 00 01 */	li r7, 1
/* 80477B28  48 00 64 19 */	bl aMR_UnitNum2FtrItemNoFtrID
/* 80477B2C  2C 03 00 00 */	cmpwi r3, 0
/* 80477B30  41 82 01 D8 */	beq lbl_80477D08
/* 80477B34  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80477B38  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80477B3C  80 A3 DF E8 */	lwz r5, data_811CDFE8@l(r3)  /* 0x811CDFE8@l */
/* 80477B40  7F 03 C3 78 */	mr r3, r24
/* 80477B44  1C 00 08 58 */	mulli r0, r0, 0x858
/* 80477B48  C0 36 00 08 */	lfs f1, 8(r22)
/* 80477B4C  C0 16 00 40 */	lfs f0, 0x40(r22)
/* 80477B50  7F 24 CB 78 */	mr r4, r25
/* 80477B54  80 FC 60 BC */	lwz r7, 0x60bc(r28)
/* 80477B58  38 C0 00 00 */	li r6, 0
/* 80477B5C  7E E5 02 14 */	add r23, r5, r0
/* 80477B60  EC 01 00 2A */	fadds f0, f1, f0
/* 80477B64  C0 37 00 08 */	lfs f1, 8(r23)
/* 80477B68  38 A0 00 01 */	li r5, 1
/* 80477B6C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80477B70  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80477B74  C0 36 00 0C */	lfs f1, 0xc(r22)
/* 80477B78  C0 16 00 44 */	lfs f0, 0x44(r22)
/* 80477B7C  C0 57 00 0C */	lfs f2, 0xc(r23)
/* 80477B80  EC 01 00 2A */	fadds f0, f1, f0
/* 80477B84  EC 02 00 28 */	fsubs f0, f2, f0
/* 80477B88  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80477B8C  C0 36 00 10 */	lfs f1, 0x10(r22)
/* 80477B90  C0 16 00 48 */	lfs f0, 0x48(r22)
/* 80477B94  C0 57 00 10 */	lfs f2, 0x10(r23)
/* 80477B98  EC 01 00 2A */	fadds f0, f1, f0
/* 80477B9C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80477BA0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80477BA4  81 87 00 0C */	lwz r12, 0xc(r7)
/* 80477BA8  7D 89 03 A6 */	mtctr r12
/* 80477BAC  4E 80 04 21 */	bctrl 
/* 80477BB0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80477BB4  7E A3 AB 78 */	mr r3, r21
/* 80477BB8  38 81 00 28 */	addi r4, r1, 0x28
/* 80477BBC  38 C0 00 00 */	li r6, 0
/* 80477BC0  38 E0 00 00 */	li r7, 0
/* 80477BC4  4B FF FD 71 */	bl aMR_RegistItemToFitFurniture
/* 80477BC8  80 D7 00 08 */	lwz r6, 8(r23)
/* 80477BCC  7E E3 BB 78 */	mr r3, r23
/* 80477BD0  80 17 00 0C */	lwz r0, 0xc(r23)
/* 80477BD4  38 81 00 10 */	addi r4, r1, 0x10
/* 80477BD8  38 A0 00 00 */	li r5, 0
/* 80477BDC  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80477BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80477BE4  80 17 00 10 */	lwz r0, 0x10(r23)
/* 80477BE8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80477BEC  48 00 41 09 */	bl aMR_SetFurniture2FG
/* 80477BF0  57 00 20 36 */	slwi r0, r24, 4
/* 80477BF4  38 60 00 04 */	li r3, 4
/* 80477BF8  7C 99 02 14 */	add r4, r25, r0
/* 80477BFC  38 A0 00 C8 */	li r5, 0xc8
/* 80477C00  38 C0 00 01 */	li r6, 1
/* 80477C04  4B FF 96 81 */	bl aMR_SetInfoFurnitureTable
/* 80477C08  48 00 01 00 */	b lbl_80477D08
lbl_80477C0C:
/* 80477C0C  80 7C 60 BC */	lwz r3, 0x60bc(r28)
/* 80477C10  3A E0 00 00 */	li r23, 0
/* 80477C14  28 03 00 00 */	cmplwi r3, 0
/* 80477C18  41 82 00 20 */	beq lbl_80477C38
/* 80477C1C  81 83 00 08 */	lwz r12, 8(r3)
/* 80477C20  7F 03 C3 78 */	mr r3, r24
/* 80477C24  7F 24 CB 78 */	mr r4, r25
/* 80477C28  38 A0 00 01 */	li r5, 1
/* 80477C2C  7D 89 03 A6 */	mtctr r12
/* 80477C30  4E 80 04 21 */	bctrl 
/* 80477C34  7C 77 1B 78 */	mr r23, r3
lbl_80477C38:
/* 80477C38  3C 60 43 30 */	lis r3, 0x4330
/* 80477C3C  6F 20 80 00 */	xoris r0, r25, 0x8000
/* 80477C40  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80477C44  3C 80 80 64 */	lis r4, lit_888@ha /* 0x806449FC@ha */
/* 80477C48  C8 64 49 FC */	lfd f3, lit_888@l(r4)  /* 0x806449FC@l */
/* 80477C4C  3C A0 80 64 */	lis r5, lit_885@ha /* 0x806449F4@ha */
/* 80477C50  90 61 00 48 */	stw r3, 0x48(r1)
/* 80477C54  3C 80 80 64 */	lis r4, lit_884@ha /* 0x806449F0@ha */
/* 80477C58  C0 85 49 F4 */	lfs f4, lit_885@l(r5)  /* 0x806449F4@l */
/* 80477C5C  6F 00 80 00 */	xoris r0, r24, 0x8000
/* 80477C60  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80477C64  80 BC 60 BC */	lwz r5, 0x60bc(r28)
/* 80477C68  EC 00 18 28 */	fsubs f0, f0, f3
/* 80477C6C  C0 A4 49 F0 */	lfs f5, lit_884@l(r4)  /* 0x806449F0@l */
/* 80477C70  C0 36 00 08 */	lfs f1, 8(r22)
/* 80477C74  28 05 00 00 */	cmplwi r5, 0
/* 80477C78  90 01 00 54 */	stw r0, 0x54(r1)
/* 80477C7C  EC 44 00 32 */	fmuls f2, f4, f0
/* 80477C80  C0 16 00 40 */	lfs f0, 0x40(r22)
/* 80477C84  90 61 00 50 */	stw r3, 0x50(r1)
/* 80477C88  EC 21 00 2A */	fadds f1, f1, f0
/* 80477C8C  EC 45 10 2A */	fadds f2, f5, f2
/* 80477C90  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80477C94  EC 00 18 28 */	fsubs f0, f0, f3
/* 80477C98  EC 22 08 28 */	fsubs f1, f2, f1
/* 80477C9C  EC 04 00 32 */	fmuls f0, f4, f0
/* 80477CA0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80477CA4  C0 76 00 0C */	lfs f3, 0xc(r22)
/* 80477CA8  EC 45 00 2A */	fadds f2, f5, f0
/* 80477CAC  C0 36 00 44 */	lfs f1, 0x44(r22)
/* 80477CB0  EC 03 08 2A */	fadds f0, f3, f1
/* 80477CB4  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80477CB8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80477CBC  C0 36 00 10 */	lfs f1, 0x10(r22)
/* 80477CC0  C0 16 00 48 */	lfs f0, 0x48(r22)
/* 80477CC4  EC 01 00 2A */	fadds f0, f1, f0
/* 80477CC8  EC 02 00 28 */	fsubs f0, f2, f0
/* 80477CCC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80477CD0  41 82 00 20 */	beq lbl_80477CF0
/* 80477CD4  81 85 00 0C */	lwz r12, 0xc(r5)
/* 80477CD8  7F 03 C3 78 */	mr r3, r24
/* 80477CDC  7F 24 CB 78 */	mr r4, r25
/* 80477CE0  38 A0 00 01 */	li r5, 1
/* 80477CE4  38 C0 00 00 */	li r6, 0
/* 80477CE8  7D 89 03 A6 */	mtctr r12
/* 80477CEC  4E 80 04 21 */	bctrl 
lbl_80477CF0:
/* 80477CF0  7E A3 AB 78 */	mr r3, r21
/* 80477CF4  7F 66 DB 78 */	mr r6, r27
/* 80477CF8  7E E7 BB 78 */	mr r7, r23
/* 80477CFC  38 81 00 28 */	addi r4, r1, 0x28
/* 80477D00  38 A0 FF FF */	li r5, -1
/* 80477D04  4B FF FC 31 */	bl aMR_RegistItemToFitFurniture
lbl_80477D08:
/* 80477D08  3B 5A 00 01 */	addi r26, r26, 1
/* 80477D0C  3A 94 00 04 */	addi r20, r20, 4
lbl_80477D10:
/* 80477D10  7C 1A E8 00 */	cmpw r26, r29
/* 80477D14  41 80 FD CC */	blt lbl_80477AE0
/* 80477D18  38 60 00 01 */	li r3, 1
/* 80477D1C  48 00 00 08 */	b lbl_80477D24
lbl_80477D20:
/* 80477D20  38 60 00 00 */	li r3, 0
lbl_80477D24:
/* 80477D24  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80477D28  39 61 00 90 */	addi r11, r1, 0x90
/* 80477D2C  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80477D30  4B C2 31 CD */	bl func_8009AEFC
/* 80477D34  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80477D38  7C 08 03 A6 */	mtlr r0
/* 80477D3C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80477D40  4E 80 00 20 */	blr 
