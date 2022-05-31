lbl_804BD8F4:
/* 804BD8F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BD8F8  7C 08 02 A6 */	mflr r0
/* 804BD8FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BD900  39 61 00 30 */	addi r11, r1, 0x30
/* 804BD904  4B BD D5 D1 */	bl func_8009AED4
/* 804BD908  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 804BD90C  7C 7D 1B 78 */	mr r29, r3
/* 804BD910  38 67 85 38 */	addi r3, r7, common_data@l /* 0x81138538@l */
/* 804BD914  7C DE 33 78 */	mr r30, r6
/* 804BD918  3C C3 00 02 */	addis r6, r3, 2
/* 804BD91C  38 61 00 14 */	addi r3, r1, 0x14
/* 804BD920  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 804BD924  83 E6 00 00 */	lwz r31, 0(r6)
/* 804BD928  4B EE 7B 55 */	bl mFI_UtNum2CenterWpos
/* 804BD92C  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 804BD930  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646094@ha */
/* 804BD934  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 804BD938  38 83 60 94 */	addi r4, r3, lit_664@l /* 0x80646094@l */
/* 804BD93C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804BD940  38 61 00 08 */	addi r3, r1, 8
/* 804BD944  90 C1 00 08 */	stw r6, 8(r1)
/* 804BD948  C0 24 00 00 */	lfs f1, 0(r4)
/* 804BD94C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804BD950  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BD954  4B ED 20 45 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804BD958  38 1D FF EF */	addi r0, r29, -17
/* 804BD95C  3C 7F 00 01 */	addis r3, r31, 1
/* 804BD960  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 804BD964  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804BD968  38 04 00 11 */	addi r0, r4, 0x11
/* 804BD96C  7F C7 F3 78 */	mr r7, r30
/* 804BD970  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 804BD974  38 C1 00 14 */	addi r6, r1, 0x14
/* 804BD978  38 80 00 04 */	li r4, 4
/* 804BD97C  38 63 25 DC */	addi r3, r3, 0x25dc
/* 804BD980  4B FF E8 A1 */	bl bIT_actor_pit_entry
/* 804BD984  38 60 00 00 */	li r3, 0
/* 804BD988  39 61 00 30 */	addi r11, r1, 0x30
/* 804BD98C  4B BD D5 95 */	bl func_8009AF20
/* 804BD990  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BD994  7C 08 03 A6 */	mtlr r0
/* 804BD998  38 21 00 30 */	addi r1, r1, 0x30
/* 804BD99C  4E 80 00 20 */	blr 
