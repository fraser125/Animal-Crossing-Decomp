lbl_804C67E4:
/* 804C67E4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804C67E8  7C 08 02 A6 */	mflr r0
/* 804C67EC  90 01 00 84 */	stw r0, 0x84(r1)
/* 804C67F0  39 61 00 80 */	addi r11, r1, 0x80
/* 804C67F4  4B BD 46 D1 */	bl func_8009AEC4
/* 804C67F8  7C 9A 23 78 */	mr r26, r4
/* 804C67FC  7C 79 1B 78 */	mr r25, r3
/* 804C6800  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 804C6804  7C DB 33 78 */	mr r27, r6
/* 804C6808  28 00 00 6A */	cmplwi r0, 0x6a
/* 804C680C  3B 80 00 00 */	li r28, 0
/* 804C6810  3B C0 00 00 */	li r30, 0
/* 804C6814  41 80 00 0C */	blt lbl_804C6820
/* 804C6818  28 00 00 6E */	cmplwi r0, 0x6e
/* 804C681C  40 81 00 10 */	ble lbl_804C682C
lbl_804C6820:
/* 804C6820  57 40 04 3E */	clrlwi r0, r26, 0x10
/* 804C6824  28 00 00 6F */	cmplwi r0, 0x6f
/* 804C6828  40 82 00 08 */	bne lbl_804C6830
lbl_804C682C:
/* 804C682C  3B 80 00 01 */	li r28, 1
lbl_804C6830:
/* 804C6830  80 C5 00 00 */	lwz r6, 0(r5)
/* 804C6834  38 61 00 38 */	addi r3, r1, 0x38
/* 804C6838  80 05 00 04 */	lwz r0, 4(r5)
/* 804C683C  38 81 00 2C */	addi r4, r1, 0x2c
/* 804C6840  3B A0 00 00 */	li r29, 0
/* 804C6844  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 804C6848  90 01 00 30 */	stw r0, 0x30(r1)
/* 804C684C  80 05 00 08 */	lwz r0, 8(r5)
/* 804C6850  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C6854  4B ED EC E9 */	bl mFI_Wpos2UtCenterWpos
/* 804C6858  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 804C685C  3C 60 80 64 */	lis r3, lit_664@ha /* 0x806461E4@ha */
/* 804C6860  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 804C6864  38 83 61 E4 */	addi r4, r3, lit_664@l /* 0x806461E4@l */
/* 804C6868  80 01 00 40 */	lwz r0, 0x40(r1)
/* 804C686C  38 61 00 20 */	addi r3, r1, 0x20
/* 804C6870  90 C1 00 20 */	stw r6, 0x20(r1)
/* 804C6874  C0 24 00 00 */	lfs f1, 0(r4)
/* 804C6878  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804C687C  90 01 00 28 */	stw r0, 0x28(r1)
/* 804C6880  4B EC 91 19 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804C6884  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 804C6888  38 61 00 44 */	addi r3, r1, 0x44
/* 804C688C  38 81 00 38 */	addi r4, r1, 0x38
/* 804C6890  4B EF 46 2D */	bl xyz_t_move
/* 804C6894  38 61 00 44 */	addi r3, r1, 0x44
/* 804C6898  38 A1 00 38 */	addi r5, r1, 0x38
/* 804C689C  38 80 00 00 */	li r4, 0
/* 804C68A0  4B FF FB CD */	bl mFI_search_unit_around_high
/* 804C68A4  38 00 00 05 */	li r0, 5
/* 804C68A8  7C 7F 1B 78 */	mr r31, r3
/* 804C68AC  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 804C68B0  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 804C68B4  7C 09 03 A6 */	mtctr r0
lbl_804C68B8:
/* 804C68B8  A8 79 00 4C */	lha r3, 0x4c(r25)
/* 804C68BC  7C 60 07 35 */	extsh. r0, r3
/* 804C68C0  41 82 00 34 */	beq lbl_804C68F4
/* 804C68C4  C0 19 00 30 */	lfs f0, 0x30(r25)
/* 804C68C8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804C68CC  40 82 00 28 */	bne lbl_804C68F4
/* 804C68D0  C0 19 00 38 */	lfs f0, 0x38(r25)
/* 804C68D4  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 804C68D8  40 82 00 1C */	bne lbl_804C68F4
/* 804C68DC  A8 19 00 52 */	lha r0, 0x52(r25)
/* 804C68E0  2C 00 00 00 */	cmpwi r0, 0
/* 804C68E4  40 81 00 10 */	ble lbl_804C68F4
/* 804C68E8  7F 3D CB 78 */	mr r29, r25
/* 804C68EC  3B C0 00 02 */	li r30, 2
/* 804C68F0  48 00 00 44 */	b lbl_804C6934
lbl_804C68F4:
/* 804C68F4  2C 1C 00 00 */	cmpwi r28, 0
/* 804C68F8  41 82 00 34 */	beq lbl_804C692C
/* 804C68FC  7C 60 07 35 */	extsh. r0, r3
/* 804C6900  40 82 00 10 */	bne lbl_804C6910
/* 804C6904  7F 3D CB 78 */	mr r29, r25
/* 804C6908  3B C0 00 01 */	li r30, 1
/* 804C690C  48 00 00 20 */	b lbl_804C692C
lbl_804C6910:
/* 804C6910  2C 1E 00 00 */	cmpwi r30, 0
/* 804C6914  40 82 00 18 */	bne lbl_804C692C
/* 804C6918  A0 79 00 44 */	lhz r3, 0x44(r25)
/* 804C691C  3C 00 80 00 */	lis r0, 0x8000
/* 804C6920  7C 03 00 00 */	cmpw r3, r0
/* 804C6924  40 81 00 08 */	ble lbl_804C692C
/* 804C6928  7F 3D CB 78 */	mr r29, r25
lbl_804C692C:
/* 804C692C  3B 39 00 58 */	addi r25, r25, 0x58
/* 804C6930  42 00 FF 88 */	bdnz lbl_804C68B8
lbl_804C6934:
/* 804C6934  28 1D 00 00 */	cmplwi r29, 0
/* 804C6938  41 82 02 80 */	beq lbl_804C6BB8
/* 804C693C  38 C0 00 00 */	li r6, 0
/* 804C6940  3C 60 80 64 */	lis r3, lit_770@ha /* 0x806461FC@ha */
/* 804C6944  B0 DD 00 44 */	sth r6, 0x44(r29)
/* 804C6948  38 A0 00 0A */	li r5, 0xa
/* 804C694C  3C 00 43 30 */	lis r0, 0x4330
/* 804C6950  3C 80 80 64 */	lis r4, lit_765@ha /* 0x806461E8@ha */
/* 804C6954  B0 BD 00 4E */	sth r5, 0x4e(r29)
/* 804C6958  2C 1E 00 02 */	cmpwi r30, 2
/* 804C695C  C8 23 61 FC */	lfd f1, lit_770@l(r3)  /* 0x806461FC@l */
/* 804C6960  A8 7D 00 4E */	lha r3, 0x4e(r29)
/* 804C6964  90 01 00 50 */	stw r0, 0x50(r1)
/* 804C6968  38 00 00 01 */	li r0, 1
/* 804C696C  C0 44 61 E8 */	lfs f2, lit_765@l(r4)  /* 0x806461E8@l */
/* 804C6970  B0 7D 00 50 */	sth r3, 0x50(r29)
/* 804C6974  B0 DD 00 46 */	sth r6, 0x46(r29)
/* 804C6978  A8 7D 00 4E */	lha r3, 0x4e(r29)
/* 804C697C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804C6980  90 61 00 54 */	stw r3, 0x54(r1)
/* 804C6984  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 804C6988  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C698C  EC 02 00 24 */	fdivs f0, f2, f0
/* 804C6990  FC 00 00 1E */	fctiwz f0, f0
/* 804C6994  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 804C6998  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 804C699C  B0 7D 00 48 */	sth r3, 0x48(r29)
/* 804C69A0  B3 7D 00 40 */	sth r27, 0x40(r29)
/* 804C69A4  B0 1D 00 4C */	sth r0, 0x4c(r29)
/* 804C69A8  41 82 00 E0 */	beq lbl_804C6A88
/* 804C69AC  38 7D 00 30 */	addi r3, r29, 0x30
/* 804C69B0  38 81 00 38 */	addi r4, r1, 0x38
/* 804C69B4  4B EF 45 09 */	bl xyz_t_move
/* 804C69B8  3C 60 80 64 */	lis r3, lit_766@ha /* 0x806461EC@ha */
/* 804C69BC  C0 03 61 EC */	lfs f0, lit_766@l(r3)  /* 0x806461EC@l */
/* 804C69C0  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 804C69C4  B3 5D 00 42 */	sth r26, 0x42(r29)
/* 804C69C8  4B F1 A5 E1 */	bl mPr_GetMoneyPower
/* 804C69CC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804C69D0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804C69D4  3C 84 00 02 */	addis r4, r4, 2
/* 804C69D8  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 804C69DC  88 04 10 A2 */	lbz r0, 0x10a2(r4)
/* 804C69E0  2C 00 00 04 */	cmpwi r0, 4
/* 804C69E4  40 82 00 08 */	bne lbl_804C69EC
/* 804C69E8  38 63 FF 9C */	addi r3, r3, -100
lbl_804C69EC:
/* 804C69EC  7C 60 07 34 */	extsh r0, r3
/* 804C69F0  2C 00 00 64 */	cmpwi r0, 0x64
/* 804C69F4  40 81 00 08 */	ble lbl_804C69FC
/* 804C69F8  38 60 00 64 */	li r3, 0x64
lbl_804C69FC:
/* 804C69FC  7C 63 07 34 */	extsh r3, r3
/* 804C6A00  3C 00 43 30 */	lis r0, 0x4330
/* 804C6A04  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804C6A08  90 01 00 58 */	stw r0, 0x58(r1)
/* 804C6A0C  3C 80 80 64 */	lis r4, lit_770@ha /* 0x806461FC@ha */
/* 804C6A10  3C A0 80 64 */	lis r5, lit_767@ha /* 0x806461F0@ha */
/* 804C6A14  90 61 00 5C */	stw r3, 0x5c(r1)
/* 804C6A18  38 64 61 FC */	addi r3, r4, lit_770@l /* 0x806461FC@l */
/* 804C6A1C  C8 23 00 00 */	lfd f1, 0(r3)
/* 804C6A20  3C 80 80 64 */	lis r4, lit_768@ha /* 0x806461F4@ha */
/* 804C6A24  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 804C6A28  38 00 00 00 */	li r0, 0
/* 804C6A2C  C0 44 61 F4 */	lfs f2, lit_768@l(r4)  /* 0x806461F4@l */
/* 804C6A30  38 81 00 14 */	addi r4, r1, 0x14
/* 804C6A34  EC 00 08 28 */	fsubs f0, f0, f1
/* 804C6A38  C0 25 61 F0 */	lfs f1, lit_767@l(r5)  /* 0x806461F0@l */
/* 804C6A3C  38 60 00 6F */	li r3, 0x6f
/* 804C6A40  38 A0 00 01 */	li r5, 1
/* 804C6A44  EC 02 00 32 */	fmuls f0, f2, f0
/* 804C6A48  EC 01 00 2A */	fadds f0, f1, f0
/* 804C6A4C  FC 00 00 1E */	fctiwz f0, f0
/* 804C6A50  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804C6A54  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 804C6A58  B0 DD 00 52 */	sth r6, 0x52(r29)
/* 804C6A5C  A8 DD 00 52 */	lha r6, 0x52(r29)
/* 804C6A60  B0 DD 00 54 */	sth r6, 0x54(r29)
/* 804C6A64  B0 1D 00 56 */	sth r0, 0x56(r29)
/* 804C6A68  80 E1 00 38 */	lwz r7, 0x38(r1)
/* 804C6A6C  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 804C6A70  80 01 00 40 */	lwz r0, 0x40(r1)
/* 804C6A74  90 E1 00 14 */	stw r7, 0x14(r1)
/* 804C6A78  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804C6A7C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C6A80  4B EE 0D B1 */	bl mFI_SetFG_common
/* 804C6A84  48 00 00 10 */	b lbl_804C6A94
lbl_804C6A88:
/* 804C6A88  A8 7D 00 56 */	lha r3, 0x56(r29)
/* 804C6A8C  38 03 00 01 */	addi r0, r3, 1
/* 804C6A90  B0 1D 00 56 */	sth r0, 0x56(r29)
lbl_804C6A94:
/* 804C6A94  2C 1F 00 00 */	cmpwi r31, 0
/* 804C6A98  41 82 01 18 */	beq lbl_804C6BB0
/* 804C6A9C  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 804C6AA0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804C6AA4  80 C1 00 48 */	lwz r6, 0x48(r1)
/* 804C6AA8  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804C6AAC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 804C6AB0  38 81 00 08 */	addi r4, r1, 8
/* 804C6AB4  90 A1 00 08 */	stw r5, 8(r1)
/* 804C6AB8  38 A0 00 00 */	li r5, 0
/* 804C6ABC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804C6AC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C6AC4  4B EE 0D 6D */	bl mFI_SetFG_common
/* 804C6AC8  A8 1D 00 56 */	lha r0, 0x56(r29)
/* 804C6ACC  2C 00 00 06 */	cmpwi r0, 6
/* 804C6AD0  41 82 00 78 */	beq lbl_804C6B48
/* 804C6AD4  40 80 00 74 */	bge lbl_804C6B48
/* 804C6AD8  2C 00 00 03 */	cmpwi r0, 3
/* 804C6ADC  40 80 00 3C */	bge lbl_804C6B18
/* 804C6AE0  2C 00 00 00 */	cmpwi r0, 0
/* 804C6AE4  40 80 00 08 */	bge lbl_804C6AEC
/* 804C6AE8  48 00 00 60 */	b lbl_804C6B48
lbl_804C6AEC:
/* 804C6AEC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C6AF0  38 80 21 03 */	li r4, 0x2103
/* 804C6AF4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C6AF8  3C 63 00 02 */	addis r3, r3, 2
/* 804C6AFC  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804C6B00  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 804C6B04  28 00 00 04 */	cmplwi r0, 4
/* 804C6B08  40 82 00 08 */	bne lbl_804C6B10
/* 804C6B0C  38 80 21 00 */	li r4, 0x2100
lbl_804C6B10:
/* 804C6B10  3B 80 04 26 */	li r28, 0x426
/* 804C6B14  48 00 00 60 */	b lbl_804C6B74
lbl_804C6B18:
/* 804C6B18  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C6B1C  3B 80 04 47 */	li r28, 0x447
/* 804C6B20  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C6B24  3C 63 00 02 */	addis r3, r3, 2
/* 804C6B28  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804C6B2C  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 804C6B30  20 00 00 04 */	subfic r0, r0, 4
/* 804C6B34  7C 00 00 34 */	cntlzw r0, r0
/* 804C6B38  54 03 D9 7E */	srwi r3, r0, 5
/* 804C6B3C  38 03 21 00 */	addi r0, r3, 0x2100
/* 804C6B40  7C 04 03 78 */	mr r4, r0
/* 804C6B44  48 00 00 30 */	b lbl_804C6B74
lbl_804C6B48:
/* 804C6B48  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C6B4C  3B 80 04 47 */	li r28, 0x447
/* 804C6B50  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C6B54  3C 63 00 02 */	addis r3, r3, 2
/* 804C6B58  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804C6B5C  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 804C6B60  20 00 00 04 */	subfic r0, r0, 4
/* 804C6B64  7C 00 00 34 */	cntlzw r0, r0
/* 804C6B68  54 03 D9 7E */	srwi r3, r0, 5
/* 804C6B6C  38 03 21 01 */	addi r0, r3, 0x2101
/* 804C6B70  7C 04 03 78 */	mr r4, r0
lbl_804C6B74:
/* 804C6B74  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C6B78  38 A1 00 38 */	addi r5, r1, 0x38
/* 804C6B7C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C6B80  38 C1 00 44 */	addi r6, r1, 0x44
/* 804C6B84  3C 63 00 02 */	addis r3, r3, 2
/* 804C6B88  38 E0 00 01 */	li r7, 1
/* 804C6B8C  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804C6B90  39 00 00 00 */	li r8, 0
/* 804C6B94  80 63 00 00 */	lwz r3, 0(r3)
/* 804C6B98  3C 63 00 01 */	addis r3, r3, 1
/* 804C6B9C  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804C6BA0  48 00 29 31 */	bl bIT_actor_drop_entry
/* 804C6BA4  7F 83 E3 78 */	mr r3, r28
/* 804C6BA8  38 81 00 38 */	addi r4, r1, 0x38
/* 804C6BAC  48 16 73 FD */	bl sAdo_OngenTrgStart
lbl_804C6BB0:
/* 804C6BB0  38 60 00 01 */	li r3, 1
/* 804C6BB4  48 00 00 08 */	b lbl_804C6BBC
lbl_804C6BB8:
/* 804C6BB8  38 60 00 00 */	li r3, 0
lbl_804C6BBC:
/* 804C6BBC  39 61 00 80 */	addi r11, r1, 0x80
/* 804C6BC0  4B BD 43 51 */	bl func_8009AF10
/* 804C6BC4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804C6BC8  7C 08 03 A6 */	mtlr r0
/* 804C6BCC  38 21 00 80 */	addi r1, r1, 0x80
/* 804C6BD0  4E 80 00 20 */	blr 
