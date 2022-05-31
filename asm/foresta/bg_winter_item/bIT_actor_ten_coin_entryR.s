lbl_804BF3CC:
/* 804BF3CC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804BF3D0  7C 08 02 A6 */	mflr r0
/* 804BF3D4  90 01 00 84 */	stw r0, 0x84(r1)
/* 804BF3D8  39 61 00 80 */	addi r11, r1, 0x80
/* 804BF3DC  4B BD BA E9 */	bl func_8009AEC4
/* 804BF3E0  7C 9A 23 78 */	mr r26, r4
/* 804BF3E4  7C 79 1B 78 */	mr r25, r3
/* 804BF3E8  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 804BF3EC  7C DB 33 78 */	mr r27, r6
/* 804BF3F0  28 00 00 6A */	cmplwi r0, 0x6a
/* 804BF3F4  3B 80 00 00 */	li r28, 0
/* 804BF3F8  3B C0 00 00 */	li r30, 0
/* 804BF3FC  41 80 00 0C */	blt lbl_804BF408
/* 804BF400  28 00 00 6E */	cmplwi r0, 0x6e
/* 804BF404  40 81 00 10 */	ble lbl_804BF414
lbl_804BF408:
/* 804BF408  57 40 04 3E */	clrlwi r0, r26, 0x10
/* 804BF40C  28 00 00 6F */	cmplwi r0, 0x6f
/* 804BF410  40 82 00 08 */	bne lbl_804BF418
lbl_804BF414:
/* 804BF414  3B 80 00 01 */	li r28, 1
lbl_804BF418:
/* 804BF418  80 C5 00 00 */	lwz r6, 0(r5)
/* 804BF41C  38 61 00 38 */	addi r3, r1, 0x38
/* 804BF420  80 05 00 04 */	lwz r0, 4(r5)
/* 804BF424  38 81 00 2C */	addi r4, r1, 0x2c
/* 804BF428  3B A0 00 00 */	li r29, 0
/* 804BF42C  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 804BF430  90 01 00 30 */	stw r0, 0x30(r1)
/* 804BF434  80 05 00 08 */	lwz r0, 8(r5)
/* 804BF438  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BF43C  4B EE 61 01 */	bl mFI_Wpos2UtCenterWpos
/* 804BF440  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 804BF444  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646144@ha */
/* 804BF448  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 804BF44C  38 83 61 44 */	addi r4, r3, lit_664@l /* 0x80646144@l */
/* 804BF450  80 01 00 40 */	lwz r0, 0x40(r1)
/* 804BF454  38 61 00 20 */	addi r3, r1, 0x20
/* 804BF458  90 C1 00 20 */	stw r6, 0x20(r1)
/* 804BF45C  C0 24 00 00 */	lfs f1, 0(r4)
/* 804BF460  90 A1 00 24 */	stw r5, 0x24(r1)
/* 804BF464  90 01 00 28 */	stw r0, 0x28(r1)
/* 804BF468  4B ED 05 31 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804BF46C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 804BF470  38 61 00 44 */	addi r3, r1, 0x44
/* 804BF474  38 81 00 38 */	addi r4, r1, 0x38
/* 804BF478  4B EF BA 45 */	bl xyz_t_move
/* 804BF47C  38 61 00 44 */	addi r3, r1, 0x44
/* 804BF480  38 A1 00 38 */	addi r5, r1, 0x38
/* 804BF484  38 80 00 00 */	li r4, 0
/* 804BF488  4B FF FB CD */	bl mFI_search_unit_around_high
/* 804BF48C  38 00 00 05 */	li r0, 5
/* 804BF490  7C 7F 1B 78 */	mr r31, r3
/* 804BF494  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 804BF498  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 804BF49C  7C 09 03 A6 */	mtctr r0
lbl_804BF4A0:
/* 804BF4A0  A8 79 00 4C */	lha r3, 0x4c(r25)
/* 804BF4A4  7C 60 07 35 */	extsh. r0, r3
/* 804BF4A8  41 82 00 34 */	beq lbl_804BF4DC
/* 804BF4AC  C0 19 00 30 */	lfs f0, 0x30(r25)
/* 804BF4B0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804BF4B4  40 82 00 28 */	bne lbl_804BF4DC
/* 804BF4B8  C0 19 00 38 */	lfs f0, 0x38(r25)
/* 804BF4BC  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 804BF4C0  40 82 00 1C */	bne lbl_804BF4DC
/* 804BF4C4  A8 19 00 52 */	lha r0, 0x52(r25)
/* 804BF4C8  2C 00 00 00 */	cmpwi r0, 0
/* 804BF4CC  40 81 00 10 */	ble lbl_804BF4DC
/* 804BF4D0  7F 3D CB 78 */	mr r29, r25
/* 804BF4D4  3B C0 00 02 */	li r30, 2
/* 804BF4D8  48 00 00 44 */	b lbl_804BF51C
lbl_804BF4DC:
/* 804BF4DC  2C 1C 00 00 */	cmpwi r28, 0
/* 804BF4E0  41 82 00 34 */	beq lbl_804BF514
/* 804BF4E4  7C 60 07 35 */	extsh. r0, r3
/* 804BF4E8  40 82 00 10 */	bne lbl_804BF4F8
/* 804BF4EC  7F 3D CB 78 */	mr r29, r25
/* 804BF4F0  3B C0 00 01 */	li r30, 1
/* 804BF4F4  48 00 00 20 */	b lbl_804BF514
lbl_804BF4F8:
/* 804BF4F8  2C 1E 00 00 */	cmpwi r30, 0
/* 804BF4FC  40 82 00 18 */	bne lbl_804BF514
/* 804BF500  A0 79 00 44 */	lhz r3, 0x44(r25)
/* 804BF504  3C 00 80 00 */	lis r0, 0x8000
/* 804BF508  7C 03 00 00 */	cmpw r3, r0
/* 804BF50C  40 81 00 08 */	ble lbl_804BF514
/* 804BF510  7F 3D CB 78 */	mr r29, r25
lbl_804BF514:
/* 804BF514  3B 39 00 58 */	addi r25, r25, 0x58
/* 804BF518  42 00 FF 88 */	bdnz lbl_804BF4A0
lbl_804BF51C:
/* 804BF51C  28 1D 00 00 */	cmplwi r29, 0
/* 804BF520  41 82 02 80 */	beq lbl_804BF7A0
/* 804BF524  38 C0 00 00 */	li r6, 0
/* 804BF528  3C 60 80 64 */	lis r3, lit_770@ha /* 0x8064615C@ha */
/* 804BF52C  B0 DD 00 44 */	sth r6, 0x44(r29)
/* 804BF530  38 A0 00 0A */	li r5, 0xa
/* 804BF534  3C 00 43 30 */	lis r0, 0x4330
/* 804BF538  3C 80 80 64 */	lis r4, lit_765@ha /* 0x80646148@ha */
/* 804BF53C  B0 BD 00 4E */	sth r5, 0x4e(r29)
/* 804BF540  2C 1E 00 02 */	cmpwi r30, 2
/* 804BF544  C8 23 61 5C */	lfd f1, lit_770@l(r3)  /* 0x8064615C@l */
/* 804BF548  A8 7D 00 4E */	lha r3, 0x4e(r29)
/* 804BF54C  90 01 00 50 */	stw r0, 0x50(r1)
/* 804BF550  38 00 00 01 */	li r0, 1
/* 804BF554  C0 44 61 48 */	lfs f2, lit_765@l(r4)  /* 0x80646148@l */
/* 804BF558  B0 7D 00 50 */	sth r3, 0x50(r29)
/* 804BF55C  B0 DD 00 46 */	sth r6, 0x46(r29)
/* 804BF560  A8 7D 00 4E */	lha r3, 0x4e(r29)
/* 804BF564  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804BF568  90 61 00 54 */	stw r3, 0x54(r1)
/* 804BF56C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 804BF570  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BF574  EC 02 00 24 */	fdivs f0, f2, f0
/* 804BF578  FC 00 00 1E */	fctiwz f0, f0
/* 804BF57C  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 804BF580  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 804BF584  B0 7D 00 48 */	sth r3, 0x48(r29)
/* 804BF588  B3 7D 00 40 */	sth r27, 0x40(r29)
/* 804BF58C  B0 1D 00 4C */	sth r0, 0x4c(r29)
/* 804BF590  41 82 00 E0 */	beq lbl_804BF670
/* 804BF594  38 7D 00 30 */	addi r3, r29, 0x30
/* 804BF598  38 81 00 38 */	addi r4, r1, 0x38
/* 804BF59C  4B EF B9 21 */	bl xyz_t_move
/* 804BF5A0  3C 60 80 64 */	lis r3, lit_766@ha /* 0x8064614C@ha */
/* 804BF5A4  C0 03 61 4C */	lfs f0, lit_766@l(r3)  /* 0x8064614C@l */
/* 804BF5A8  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 804BF5AC  B3 5D 00 42 */	sth r26, 0x42(r29)
/* 804BF5B0  4B F2 19 F9 */	bl mPr_GetMoneyPower
/* 804BF5B4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804BF5B8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804BF5BC  3C 84 00 02 */	addis r4, r4, 2
/* 804BF5C0  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 804BF5C4  88 04 10 A2 */	lbz r0, 0x10a2(r4)
/* 804BF5C8  2C 00 00 04 */	cmpwi r0, 4
/* 804BF5CC  40 82 00 08 */	bne lbl_804BF5D4
/* 804BF5D0  38 63 FF 9C */	addi r3, r3, -100
lbl_804BF5D4:
/* 804BF5D4  7C 60 07 34 */	extsh r0, r3
/* 804BF5D8  2C 00 00 64 */	cmpwi r0, 0x64
/* 804BF5DC  40 81 00 08 */	ble lbl_804BF5E4
/* 804BF5E0  38 60 00 64 */	li r3, 0x64
lbl_804BF5E4:
/* 804BF5E4  7C 63 07 34 */	extsh r3, r3
/* 804BF5E8  3C 00 43 30 */	lis r0, 0x4330
/* 804BF5EC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804BF5F0  90 01 00 58 */	stw r0, 0x58(r1)
/* 804BF5F4  3C 80 80 64 */	lis r4, lit_770@ha /* 0x8064615C@ha */
/* 804BF5F8  3C A0 80 64 */	lis r5, lit_767@ha /* 0x80646150@ha */
/* 804BF5FC  90 61 00 5C */	stw r3, 0x5c(r1)
/* 804BF600  38 64 61 5C */	addi r3, r4, lit_770@l /* 0x8064615C@l */
/* 804BF604  C8 23 00 00 */	lfd f1, 0(r3)
/* 804BF608  3C 80 80 64 */	lis r4, lit_768@ha /* 0x80646154@ha */
/* 804BF60C  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 804BF610  38 00 00 00 */	li r0, 0
/* 804BF614  C0 44 61 54 */	lfs f2, lit_768@l(r4)  /* 0x80646154@l */
/* 804BF618  38 81 00 14 */	addi r4, r1, 0x14
/* 804BF61C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BF620  C0 25 61 50 */	lfs f1, lit_767@l(r5)  /* 0x80646150@l */
/* 804BF624  38 60 00 6F */	li r3, 0x6f
/* 804BF628  38 A0 00 01 */	li r5, 1
/* 804BF62C  EC 02 00 32 */	fmuls f0, f2, f0
/* 804BF630  EC 01 00 2A */	fadds f0, f1, f0
/* 804BF634  FC 00 00 1E */	fctiwz f0, f0
/* 804BF638  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804BF63C  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 804BF640  B0 DD 00 52 */	sth r6, 0x52(r29)
/* 804BF644  A8 DD 00 52 */	lha r6, 0x52(r29)
/* 804BF648  B0 DD 00 54 */	sth r6, 0x54(r29)
/* 804BF64C  B0 1D 00 56 */	sth r0, 0x56(r29)
/* 804BF650  80 E1 00 38 */	lwz r7, 0x38(r1)
/* 804BF654  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 804BF658  80 01 00 40 */	lwz r0, 0x40(r1)
/* 804BF65C  90 E1 00 14 */	stw r7, 0x14(r1)
/* 804BF660  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804BF664  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804BF668  4B EE 81 C9 */	bl mFI_SetFG_common
/* 804BF66C  48 00 00 10 */	b lbl_804BF67C
lbl_804BF670:
/* 804BF670  A8 7D 00 56 */	lha r3, 0x56(r29)
/* 804BF674  38 03 00 01 */	addi r0, r3, 1
/* 804BF678  B0 1D 00 56 */	sth r0, 0x56(r29)
lbl_804BF67C:
/* 804BF67C  2C 1F 00 00 */	cmpwi r31, 0
/* 804BF680  41 82 01 18 */	beq lbl_804BF798
/* 804BF684  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 804BF688  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804BF68C  80 C1 00 48 */	lwz r6, 0x48(r1)
/* 804BF690  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804BF694  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 804BF698  38 81 00 08 */	addi r4, r1, 8
/* 804BF69C  90 A1 00 08 */	stw r5, 8(r1)
/* 804BF6A0  38 A0 00 00 */	li r5, 0
/* 804BF6A4  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804BF6A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BF6AC  4B EE 81 85 */	bl mFI_SetFG_common
/* 804BF6B0  A8 1D 00 56 */	lha r0, 0x56(r29)
/* 804BF6B4  2C 00 00 06 */	cmpwi r0, 6
/* 804BF6B8  41 82 00 78 */	beq lbl_804BF730
/* 804BF6BC  40 80 00 74 */	bge lbl_804BF730
/* 804BF6C0  2C 00 00 03 */	cmpwi r0, 3
/* 804BF6C4  40 80 00 3C */	bge lbl_804BF700
/* 804BF6C8  2C 00 00 00 */	cmpwi r0, 0
/* 804BF6CC  40 80 00 08 */	bge lbl_804BF6D4
/* 804BF6D0  48 00 00 60 */	b lbl_804BF730
lbl_804BF6D4:
/* 804BF6D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804BF6D8  38 80 21 03 */	li r4, 0x2103
/* 804BF6DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804BF6E0  3C 63 00 02 */	addis r3, r3, 2
/* 804BF6E4  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804BF6E8  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 804BF6EC  28 00 00 04 */	cmplwi r0, 4
/* 804BF6F0  40 82 00 08 */	bne lbl_804BF6F8
/* 804BF6F4  38 80 21 00 */	li r4, 0x2100
lbl_804BF6F8:
/* 804BF6F8  3B 80 04 26 */	li r28, 0x426
/* 804BF6FC  48 00 00 60 */	b lbl_804BF75C
lbl_804BF700:
/* 804BF700  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804BF704  3B 80 04 47 */	li r28, 0x447
/* 804BF708  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804BF70C  3C 63 00 02 */	addis r3, r3, 2
/* 804BF710  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804BF714  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 804BF718  20 00 00 04 */	subfic r0, r0, 4
/* 804BF71C  7C 00 00 34 */	cntlzw r0, r0
/* 804BF720  54 03 D9 7E */	srwi r3, r0, 5
/* 804BF724  38 03 21 00 */	addi r0, r3, 0x2100
/* 804BF728  7C 04 03 78 */	mr r4, r0
/* 804BF72C  48 00 00 30 */	b lbl_804BF75C
lbl_804BF730:
/* 804BF730  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804BF734  3B 80 04 47 */	li r28, 0x447
/* 804BF738  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804BF73C  3C 63 00 02 */	addis r3, r3, 2
/* 804BF740  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804BF744  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 804BF748  20 00 00 04 */	subfic r0, r0, 4
/* 804BF74C  7C 00 00 34 */	cntlzw r0, r0
/* 804BF750  54 03 D9 7E */	srwi r3, r0, 5
/* 804BF754  38 03 21 01 */	addi r0, r3, 0x2101
/* 804BF758  7C 04 03 78 */	mr r4, r0
lbl_804BF75C:
/* 804BF75C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804BF760  38 A1 00 38 */	addi r5, r1, 0x38
/* 804BF764  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804BF768  38 C1 00 44 */	addi r6, r1, 0x44
/* 804BF76C  3C 63 00 02 */	addis r3, r3, 2
/* 804BF770  38 E0 00 01 */	li r7, 1
/* 804BF774  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804BF778  39 00 00 00 */	li r8, 0
/* 804BF77C  80 63 00 00 */	lwz r3, 0(r3)
/* 804BF780  3C 63 00 01 */	addis r3, r3, 1
/* 804BF784  38 63 25 CC */	addi r3, r3, 0x25cc
/* 804BF788  48 00 29 31 */	bl bIT_actor_drop_entry
/* 804BF78C  7F 83 E3 78 */	mr r3, r28
/* 804BF790  38 81 00 38 */	addi r4, r1, 0x38
/* 804BF794  48 16 E8 15 */	bl sAdo_OngenTrgStart
lbl_804BF798:
/* 804BF798  38 60 00 01 */	li r3, 1
/* 804BF79C  48 00 00 08 */	b lbl_804BF7A4
lbl_804BF7A0:
/* 804BF7A0  38 60 00 00 */	li r3, 0
lbl_804BF7A4:
/* 804BF7A4  39 61 00 80 */	addi r11, r1, 0x80
/* 804BF7A8  4B BD B7 69 */	bl func_8009AF10
/* 804BF7AC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804BF7B0  7C 08 03 A6 */	mtlr r0
/* 804BF7B4  38 21 00 80 */	addi r1, r1, 0x80
/* 804BF7B8  4E 80 00 20 */	blr 
