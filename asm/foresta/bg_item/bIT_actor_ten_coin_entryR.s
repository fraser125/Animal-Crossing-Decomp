lbl_804B78D4:
/* 804B78D4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804B78D8  7C 08 02 A6 */	mflr r0
/* 804B78DC  90 01 00 84 */	stw r0, 0x84(r1)
/* 804B78E0  39 61 00 80 */	addi r11, r1, 0x80
/* 804B78E4  4B BE 35 E1 */	bl func_8009AEC4
/* 804B78E8  7C 9A 23 78 */	mr r26, r4
/* 804B78EC  7C 79 1B 78 */	mr r25, r3
/* 804B78F0  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 804B78F4  7C DB 33 78 */	mr r27, r6
/* 804B78F8  28 00 00 6A */	cmplwi r0, 0x6a
/* 804B78FC  3B 80 00 00 */	li r28, 0
/* 804B7900  3B C0 00 00 */	li r30, 0
/* 804B7904  41 80 00 0C */	blt lbl_804B7910
/* 804B7908  28 00 00 6E */	cmplwi r0, 0x6e
/* 804B790C  40 81 00 10 */	ble lbl_804B791C
lbl_804B7910:
/* 804B7910  57 40 04 3E */	clrlwi r0, r26, 0x10
/* 804B7914  28 00 00 6F */	cmplwi r0, 0x6f
/* 804B7918  40 82 00 08 */	bne lbl_804B7920
lbl_804B791C:
/* 804B791C  3B 80 00 01 */	li r28, 1
lbl_804B7920:
/* 804B7920  80 C5 00 00 */	lwz r6, 0(r5)
/* 804B7924  38 61 00 38 */	addi r3, r1, 0x38
/* 804B7928  80 05 00 04 */	lwz r0, 4(r5)
/* 804B792C  38 81 00 2C */	addi r4, r1, 0x2c
/* 804B7930  3B A0 00 00 */	li r29, 0
/* 804B7934  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 804B7938  90 01 00 30 */	stw r0, 0x30(r1)
/* 804B793C  80 05 00 08 */	lwz r0, 8(r5)
/* 804B7940  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B7944  4B EE DB F9 */	bl mFI_Wpos2UtCenterWpos
/* 804B7948  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 804B794C  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646094@ha */
/* 804B7950  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 804B7954  38 83 60 94 */	addi r4, r3, lit_664@l /* 0x80646094@l */
/* 804B7958  80 01 00 40 */	lwz r0, 0x40(r1)
/* 804B795C  38 61 00 20 */	addi r3, r1, 0x20
/* 804B7960  90 C1 00 20 */	stw r6, 0x20(r1)
/* 804B7964  C0 24 00 00 */	lfs f1, 0(r4)
/* 804B7968  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804B796C  90 01 00 28 */	stw r0, 0x28(r1)
/* 804B7970  4B ED 80 29 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804B7974  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 804B7978  38 61 00 44 */	addi r3, r1, 0x44
/* 804B797C  38 81 00 38 */	addi r4, r1, 0x38
/* 804B7980  4B F0 35 3D */	bl xyz_t_move
/* 804B7984  38 61 00 44 */	addi r3, r1, 0x44
/* 804B7988  38 A1 00 38 */	addi r5, r1, 0x38
/* 804B798C  38 80 00 00 */	li r4, 0
/* 804B7990  4B FF FB CD */	bl mFI_search_unit_around_high
/* 804B7994  38 00 00 05 */	li r0, 5
/* 804B7998  7C 7F 1B 78 */	mr r31, r3
/* 804B799C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 804B79A0  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 804B79A4  7C 09 03 A6 */	mtctr r0
lbl_804B79A8:
/* 804B79A8  A8 79 00 4C */	lha r3, 0x4c(r25)
/* 804B79AC  7C 60 07 35 */	extsh. r0, r3
/* 804B79B0  41 82 00 34 */	beq lbl_804B79E4
/* 804B79B4  C0 19 00 30 */	lfs f0, 0x30(r25)
/* 804B79B8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804B79BC  40 82 00 28 */	bne lbl_804B79E4
/* 804B79C0  C0 19 00 38 */	lfs f0, 0x38(r25)
/* 804B79C4  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 804B79C8  40 82 00 1C */	bne lbl_804B79E4
/* 804B79CC  A8 19 00 52 */	lha r0, 0x52(r25)
/* 804B79D0  2C 00 00 00 */	cmpwi r0, 0
/* 804B79D4  40 81 00 10 */	ble lbl_804B79E4
/* 804B79D8  7F 3D CB 78 */	mr r29, r25
/* 804B79DC  3B C0 00 02 */	li r30, 2
/* 804B79E0  48 00 00 44 */	b lbl_804B7A24
lbl_804B79E4:
/* 804B79E4  2C 1C 00 00 */	cmpwi r28, 0
/* 804B79E8  41 82 00 34 */	beq lbl_804B7A1C
/* 804B79EC  7C 60 07 35 */	extsh. r0, r3
/* 804B79F0  40 82 00 10 */	bne lbl_804B7A00
/* 804B79F4  7F 3D CB 78 */	mr r29, r25
/* 804B79F8  3B C0 00 01 */	li r30, 1
/* 804B79FC  48 00 00 20 */	b lbl_804B7A1C
lbl_804B7A00:
/* 804B7A00  2C 1E 00 00 */	cmpwi r30, 0
/* 804B7A04  40 82 00 18 */	bne lbl_804B7A1C
/* 804B7A08  A0 79 00 44 */	lhz r3, 0x44(r25)
/* 804B7A0C  3C 00 80 00 */	lis r0, 0x8000
/* 804B7A10  7C 03 00 00 */	cmpw r3, r0
/* 804B7A14  40 81 00 08 */	ble lbl_804B7A1C
/* 804B7A18  7F 3D CB 78 */	mr r29, r25
lbl_804B7A1C:
/* 804B7A1C  3B 39 00 58 */	addi r25, r25, 0x58
/* 804B7A20  42 00 FF 88 */	bdnz lbl_804B79A8
lbl_804B7A24:
/* 804B7A24  28 1D 00 00 */	cmplwi r29, 0
/* 804B7A28  41 82 02 80 */	beq lbl_804B7CA8
/* 804B7A2C  38 C0 00 00 */	li r6, 0
/* 804B7A30  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806460AC@ha */
/* 804B7A34  B0 DD 00 44 */	sth r6, 0x44(r29)
/* 804B7A38  38 A0 00 0A */	li r5, 0xa
/* 804B7A3C  3C 00 43 30 */	lis r0, 0x4330
/* 804B7A40  3C 80 80 64 */	lis r4, lit_765@ha /* 0x80646098@ha */
/* 804B7A44  B0 BD 00 4E */	sth r5, 0x4e(r29)
/* 804B7A48  2C 1E 00 02 */	cmpwi r30, 2
/* 804B7A4C  C8 23 60 AC */	lfd f1, lit_770@l(r3)  /* 0x806460AC@l */
/* 804B7A50  A8 7D 00 4E */	lha r3, 0x4e(r29)
/* 804B7A54  90 01 00 50 */	stw r0, 0x50(r1)
/* 804B7A58  38 00 00 01 */	li r0, 1
/* 804B7A5C  C0 44 60 98 */	lfs f2, lit_765@l(r4)  /* 0x80646098@l */
/* 804B7A60  B0 7D 00 50 */	sth r3, 0x50(r29)
/* 804B7A64  B0 DD 00 46 */	sth r6, 0x46(r29)
/* 804B7A68  A8 7D 00 4E */	lha r3, 0x4e(r29)
/* 804B7A6C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804B7A70  90 61 00 54 */	stw r3, 0x54(r1)
/* 804B7A74  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 804B7A78  EC 00 08 28 */	fsubs f0, f0, f1
/* 804B7A7C  EC 02 00 24 */	fdivs f0, f2, f0
/* 804B7A80  FC 00 00 1E */	fctiwz f0, f0
/* 804B7A84  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 804B7A88  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 804B7A8C  B0 7D 00 48 */	sth r3, 0x48(r29)
/* 804B7A90  B3 7D 00 40 */	sth r27, 0x40(r29)
/* 804B7A94  B0 1D 00 4C */	sth r0, 0x4c(r29)
/* 804B7A98  41 82 00 E0 */	beq lbl_804B7B78
/* 804B7A9C  38 7D 00 30 */	addi r3, r29, 0x30
/* 804B7AA0  38 81 00 38 */	addi r4, r1, 0x38
/* 804B7AA4  4B F0 34 19 */	bl xyz_t_move
/* 804B7AA8  3C 60 80 64 */	lis r3, lit_766@ha /* 0x8064609C@ha */
/* 804B7AAC  C0 03 60 9C */	lfs f0, lit_766@l(r3)  /* 0x8064609C@l */
/* 804B7AB0  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 804B7AB4  B3 5D 00 42 */	sth r26, 0x42(r29)
/* 804B7AB8  4B F2 94 F1 */	bl mPr_GetMoneyPower
/* 804B7ABC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804B7AC0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804B7AC4  3C 84 00 02 */	addis r4, r4, 2
/* 804B7AC8  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 804B7ACC  88 04 10 A2 */	lbz r0, 0x10a2(r4)
/* 804B7AD0  2C 00 00 04 */	cmpwi r0, 4
/* 804B7AD4  40 82 00 08 */	bne lbl_804B7ADC
/* 804B7AD8  38 63 FF 9C */	addi r3, r3, -100
lbl_804B7ADC:
/* 804B7ADC  7C 60 07 34 */	extsh r0, r3
/* 804B7AE0  2C 00 00 64 */	cmpwi r0, 0x64
/* 804B7AE4  40 81 00 08 */	ble lbl_804B7AEC
/* 804B7AE8  38 60 00 64 */	li r3, 0x64
lbl_804B7AEC:
/* 804B7AEC  7C 63 07 34 */	extsh r3, r3
/* 804B7AF0  3C 00 43 30 */	lis r0, 0x4330
/* 804B7AF4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804B7AF8  90 01 00 58 */	stw r0, 0x58(r1)
/* 804B7AFC  3C 80 80 64 */	lis r4, lit_770@ha /* 0x806460AC@ha */
/* 804B7B00  3C A0 80 64 */	lis r5, lit_767@ha /* 0x806460A0@ha */
/* 804B7B04  90 61 00 5C */	stw r3, 0x5c(r1)
/* 804B7B08  38 64 60 AC */	addi r3, r4, lit_770@l /* 0x806460AC@l */
/* 804B7B0C  C8 23 00 00 */	lfd f1, 0(r3)
/* 804B7B10  3C 80 80 64 */	lis r4, lit_768@ha /* 0x806460A4@ha */
/* 804B7B14  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 804B7B18  38 00 00 00 */	li r0, 0
/* 804B7B1C  C0 44 60 A4 */	lfs f2, lit_768@l(r4)  /* 0x806460A4@l */
/* 804B7B20  38 81 00 14 */	addi r4, r1, 0x14
/* 804B7B24  EC 00 08 28 */	fsubs f0, f0, f1
/* 804B7B28  C0 25 60 A0 */	lfs f1, lit_767@l(r5)  /* 0x806460A0@l */
/* 804B7B2C  38 60 00 6F */	li r3, 0x6f
/* 804B7B30  38 A0 00 01 */	li r5, 1
/* 804B7B34  EC 02 00 32 */	fmuls f0, f2, f0
/* 804B7B38  EC 01 00 2A */	fadds f0, f1, f0
/* 804B7B3C  FC 00 00 1E */	fctiwz f0, f0
/* 804B7B40  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804B7B44  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 804B7B48  B0 DD 00 52 */	sth r6, 0x52(r29)
/* 804B7B4C  A8 DD 00 52 */	lha r6, 0x52(r29)
/* 804B7B50  B0 DD 00 54 */	sth r6, 0x54(r29)
/* 804B7B54  B0 1D 00 56 */	sth r0, 0x56(r29)
/* 804B7B58  80 E1 00 38 */	lwz r7, 0x38(r1)
/* 804B7B5C  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 804B7B60  80 01 00 40 */	lwz r0, 0x40(r1)
/* 804B7B64  90 E1 00 14 */	stw r7, 0x14(r1)
/* 804B7B68  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804B7B6C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B7B70  4B EE FC C1 */	bl mFI_SetFG_common
/* 804B7B74  48 00 00 10 */	b lbl_804B7B84
lbl_804B7B78:
/* 804B7B78  A8 7D 00 56 */	lha r3, 0x56(r29)
/* 804B7B7C  38 03 00 01 */	addi r0, r3, 1
/* 804B7B80  B0 1D 00 56 */	sth r0, 0x56(r29)
lbl_804B7B84:
/* 804B7B84  2C 1F 00 00 */	cmpwi r31, 0
/* 804B7B88  41 82 01 18 */	beq lbl_804B7CA0
/* 804B7B8C  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 804B7B90  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804B7B94  80 C1 00 48 */	lwz r6, 0x48(r1)
/* 804B7B98  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804B7B9C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 804B7BA0  38 81 00 08 */	addi r4, r1, 8
/* 804B7BA4  90 A1 00 08 */	stw r5, 8(r1)
/* 804B7BA8  38 A0 00 00 */	li r5, 0
/* 804B7BAC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804B7BB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B7BB4  4B EE FC 7D */	bl mFI_SetFG_common
/* 804B7BB8  A8 1D 00 56 */	lha r0, 0x56(r29)
/* 804B7BBC  2C 00 00 06 */	cmpwi r0, 6
/* 804B7BC0  41 82 00 78 */	beq lbl_804B7C38
/* 804B7BC4  40 80 00 74 */	bge lbl_804B7C38
/* 804B7BC8  2C 00 00 03 */	cmpwi r0, 3
/* 804B7BCC  40 80 00 3C */	bge lbl_804B7C08
/* 804B7BD0  2C 00 00 00 */	cmpwi r0, 0
/* 804B7BD4  40 80 00 08 */	bge lbl_804B7BDC
/* 804B7BD8  48 00 00 60 */	b lbl_804B7C38
lbl_804B7BDC:
/* 804B7BDC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B7BE0  38 80 21 03 */	li r4, 0x2103
/* 804B7BE4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804B7BE8  3C 63 00 02 */	addis r3, r3, 2
/* 804B7BEC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804B7BF0  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 804B7BF4  28 00 00 04 */	cmplwi r0, 4
/* 804B7BF8  40 82 00 08 */	bne lbl_804B7C00
/* 804B7BFC  38 80 21 00 */	li r4, 0x2100
lbl_804B7C00:
/* 804B7C00  3B 80 04 26 */	li r28, 0x426
/* 804B7C04  48 00 00 60 */	b lbl_804B7C64
lbl_804B7C08:
/* 804B7C08  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B7C0C  3B 80 04 47 */	li r28, 0x447
/* 804B7C10  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804B7C14  3C 63 00 02 */	addis r3, r3, 2
/* 804B7C18  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804B7C1C  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 804B7C20  20 00 00 04 */	subfic r0, r0, 4
/* 804B7C24  7C 00 00 34 */	cntlzw r0, r0
/* 804B7C28  54 03 D9 7E */	srwi r3, r0, 5
/* 804B7C2C  38 03 21 00 */	addi r0, r3, 0x2100
/* 804B7C30  7C 04 03 78 */	mr r4, r0
/* 804B7C34  48 00 00 30 */	b lbl_804B7C64
lbl_804B7C38:
/* 804B7C38  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B7C3C  3B 80 04 47 */	li r28, 0x447
/* 804B7C40  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804B7C44  3C 63 00 02 */	addis r3, r3, 2
/* 804B7C48  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804B7C4C  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 804B7C50  20 00 00 04 */	subfic r0, r0, 4
/* 804B7C54  7C 00 00 34 */	cntlzw r0, r0
/* 804B7C58  54 03 D9 7E */	srwi r3, r0, 5
/* 804B7C5C  38 03 21 01 */	addi r0, r3, 0x2101
/* 804B7C60  7C 04 03 78 */	mr r4, r0
lbl_804B7C64:
/* 804B7C64  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B7C68  38 A1 00 38 */	addi r5, r1, 0x38
/* 804B7C6C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804B7C70  38 C1 00 44 */	addi r6, r1, 0x44
/* 804B7C74  3C 63 00 02 */	addis r3, r3, 2
/* 804B7C78  38 E0 00 01 */	li r7, 1
/* 804B7C7C  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804B7C80  39 00 00 00 */	li r8, 0
/* 804B7C84  80 63 00 00 */	lwz r3, 0(r3)
/* 804B7C88  3C 63 00 01 */	addis r3, r3, 1
/* 804B7C8C  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804B7C90  48 00 29 31 */	bl bIT_actor_drop_entry
/* 804B7C94  7F 83 E3 78 */	mr r3, r28
/* 804B7C98  38 81 00 38 */	addi r4, r1, 0x38
/* 804B7C9C  48 17 63 0D */	bl sAdo_OngenTrgStart
lbl_804B7CA0:
/* 804B7CA0  38 60 00 01 */	li r3, 1
/* 804B7CA4  48 00 00 08 */	b lbl_804B7CAC
lbl_804B7CA8:
/* 804B7CA8  38 60 00 00 */	li r3, 0
lbl_804B7CAC:
/* 804B7CAC  39 61 00 80 */	addi r11, r1, 0x80
/* 804B7CB0  4B BE 32 61 */	bl func_8009AF10
/* 804B7CB4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804B7CB8  7C 08 03 A6 */	mtlr r0
/* 804B7CBC  38 21 00 80 */	addi r1, r1, 0x80
/* 804B7CC0  4E 80 00 20 */	blr 
