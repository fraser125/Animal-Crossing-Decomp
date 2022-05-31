lbl_805F2544:
/* 805F2544  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805F2548  7C 08 02 A6 */	mflr r0
/* 805F254C  90 01 00 54 */	stw r0, 0x54(r1)
/* 805F2550  39 61 00 50 */	addi r11, r1, 0x50
/* 805F2554  4B AA 89 75 */	bl func_8009AEC8
/* 805F2558  3C A0 80 6D */	lis r5, offset_pos_1194@ha /* 0x806D0A60@ha */
/* 805F255C  3C 80 80 65 */	lis r4, data_8064B814@ha /* 0x8064B814@ha */
/* 805F2560  7C 7A 1B 78 */	mr r26, r3
/* 805F2564  3B 80 00 01 */	li r28, 1
/* 805F2568  3B A5 0A 60 */	addi r29, r5, offset_pos_1194@l /* 0x806D0A60@l */
/* 805F256C  3B C4 B8 14 */	addi r30, r4, data_8064B814@l /* 0x8064B814@l */
/* 805F2570  3B 60 00 00 */	li r27, 0
/* 805F2574  3B E0 00 00 */	li r31, 0
lbl_805F2578:
/* 805F2578  7C 9D FA 14 */	add r4, r29, r31
/* 805F257C  C0 7A 00 00 */	lfs f3, 0(r26)
/* 805F2580  C0 44 00 00 */	lfs f2, 0(r4)
/* 805F2584  38 61 00 14 */	addi r3, r1, 0x14
/* 805F2588  C0 3A 00 08 */	lfs f1, 8(r26)
/* 805F258C  C0 04 00 04 */	lfs f0, 4(r4)
/* 805F2590  EC 43 10 2A */	fadds f2, f3, f2
/* 805F2594  80 81 00 24 */	lwz r4, 0x24(r1)
/* 805F2598  EC 01 00 2A */	fadds f0, f1, f0
/* 805F259C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F25A0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 805F25A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805F25A8  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 805F25AC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 805F25B0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 805F25B4  90 81 00 18 */	stw r4, 0x18(r1)
/* 805F25B8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805F25BC  4B D9 D3 DD */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 805F25C0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 805F25C4  38 61 00 08 */	addi r3, r1, 8
/* 805F25C8  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 805F25CC  80 81 00 24 */	lwz r4, 0x24(r1)
/* 805F25D0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 805F25D4  90 A1 00 08 */	stw r5, 8(r1)
/* 805F25D8  90 81 00 0C */	stw r4, 0xc(r1)
/* 805F25DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805F25E0  4B DB 41 2D */	bl mFI_GetUnitCol
/* 805F25E4  4B D9 DC A5 */	bl mCoBG_GetHoleNumber_ClData
/* 805F25E8  2C 03 00 00 */	cmpwi r3, 0
/* 805F25EC  41 81 00 14 */	bgt lbl_805F2600
/* 805F25F0  C0 3A 00 04 */	lfs f1, 4(r26)
/* 805F25F4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 805F25F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F25FC  41 82 00 0C */	beq lbl_805F2608
lbl_805F2600:
/* 805F2600  3B 80 00 00 */	li r28, 0
/* 805F2604  48 00 00 14 */	b lbl_805F2618
lbl_805F2608:
/* 805F2608  3B 7B 00 01 */	addi r27, r27, 1
/* 805F260C  3B FF 00 08 */	addi r31, r31, 8
/* 805F2610  2C 1B 00 08 */	cmpwi r27, 8
/* 805F2614  41 80 FF 64 */	blt lbl_805F2578
lbl_805F2618:
/* 805F2618  7F 83 E3 78 */	mr r3, r28
/* 805F261C  39 61 00 50 */	addi r11, r1, 0x50
/* 805F2620  4B AA 88 F5 */	bl func_8009AF14
/* 805F2624  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805F2628  7C 08 03 A6 */	mtlr r0
/* 805F262C  38 21 00 50 */	addi r1, r1, 0x50
/* 805F2630  4E 80 00 20 */	blr 
