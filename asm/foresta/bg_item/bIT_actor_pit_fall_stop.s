lbl_804BD828:
/* 804BD828  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804BD82C  7C 08 02 A6 */	mflr r0
/* 804BD830  90 01 00 44 */	stw r0, 0x44(r1)
/* 804BD834  39 61 00 40 */	addi r11, r1, 0x40
/* 804BD838  4B BD D6 9D */	bl func_8009AED4
/* 804BD83C  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 804BD840  38 03 FF E7 */	addi r0, r3, -25
/* 804BD844  38 67 85 38 */	addi r3, r7, common_data@l /* 0x81138538@l */
/* 804BD848  7C DE 33 78 */	mr r30, r6
/* 804BD84C  3C 63 00 02 */	addis r3, r3, 2
/* 804BD850  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 804BD854  80 C3 60 80 */	lwz r6, 0x6080(r3)
/* 804BD858  38 61 00 20 */	addi r3, r1, 0x20
/* 804BD85C  83 E6 00 00 */	lwz r31, 0(r6)
/* 804BD860  4B EE 7C 1D */	bl mFI_UtNum2CenterWpos
/* 804BD864  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 804BD868  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646094@ha */
/* 804BD86C  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 804BD870  38 83 60 94 */	addi r4, r3, lit_664@l /* 0x80646094@l */
/* 804BD874  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804BD878  38 61 00 14 */	addi r3, r1, 0x14
/* 804BD87C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804BD880  C0 24 00 00 */	lfs f1, 0(r4)
/* 804BD884  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804BD888  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804BD88C  4B ED 21 0D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804BD890  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804BD894  7F A3 EB 78 */	mr r3, r29
/* 804BD898  80 E1 00 20 */	lwz r7, 0x20(r1)
/* 804BD89C  38 81 00 08 */	addi r4, r1, 8
/* 804BD8A0  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 804BD8A4  38 A0 00 00 */	li r5, 0
/* 804BD8A8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804BD8AC  90 E1 00 08 */	stw r7, 8(r1)
/* 804BD8B0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804BD8B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BD8B8  4B EE 9F 79 */	bl mFI_SetFG_common
/* 804BD8BC  3C 7F 00 01 */	addis r3, r31, 1
/* 804BD8C0  7F C7 F3 78 */	mr r7, r30
/* 804BD8C4  38 C1 00 20 */	addi r6, r1, 0x20
/* 804BD8C8  38 80 00 03 */	li r4, 3
/* 804BD8CC  38 A0 00 11 */	li r5, 0x11
/* 804BD8D0  38 63 25 DC */	addi r3, r3, 0x25dc
/* 804BD8D4  4B FF FE 11 */	bl bIT_actor_pit_entry_del
/* 804BD8D8  38 60 00 00 */	li r3, 0
/* 804BD8DC  39 61 00 40 */	addi r11, r1, 0x40
/* 804BD8E0  4B BD D6 41 */	bl func_8009AF20
/* 804BD8E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804BD8E8  7C 08 03 A6 */	mtlr r0
/* 804BD8EC  38 21 00 40 */	addi r1, r1, 0x40
/* 804BD8F0  4E 80 00 20 */	blr 
