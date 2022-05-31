lbl_804B6570:
/* 804B6570  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B6574  7C 08 02 A6 */	mflr r0
/* 804B6578  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B657C  39 61 00 30 */	addi r11, r1, 0x30
/* 804B6580  4B BE 49 55 */	bl func_8009AED4
/* 804B6584  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 804B6588  7C 7D 1B 78 */	mr r29, r3
/* 804B658C  38 67 85 38 */	addi r3, r7, common_data@l /* 0x81138538@l */
/* 804B6590  7C DE 33 78 */	mr r30, r6
/* 804B6594  3C C3 00 02 */	addis r6, r3, 2
/* 804B6598  38 61 00 14 */	addi r3, r1, 0x14
/* 804B659C  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 804B65A0  83 E6 00 00 */	lwz r31, 0(r6)
/* 804B65A4  4B EE EE D9 */	bl mFI_UtNum2CenterWpos
/* 804B65A8  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 804B65AC  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80645FF4@ha */
/* 804B65B0  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 804B65B4  38 83 5F F4 */	addi r4, r3, lit_664@l /* 0x80645FF4@l */
/* 804B65B8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804B65BC  38 61 00 08 */	addi r3, r1, 8
/* 804B65C0  90 C1 00 08 */	stw r6, 8(r1)
/* 804B65C4  C0 24 00 00 */	lfs f1, 0(r4)
/* 804B65C8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804B65CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B65D0  4B ED 93 C9 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804B65D4  38 1D FF EF */	addi r0, r29, -17
/* 804B65D8  3C 7F 00 01 */	addis r3, r31, 1
/* 804B65DC  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 804B65E0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804B65E4  38 04 00 11 */	addi r0, r4, 0x11
/* 804B65E8  7F C7 F3 78 */	mr r7, r30
/* 804B65EC  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 804B65F0  38 C1 00 14 */	addi r6, r1, 0x14
/* 804B65F4  38 80 00 04 */	li r4, 4
/* 804B65F8  38 63 25 DC */	addi r3, r3, 0x25dc
/* 804B65FC  4B FF E8 A1 */	bl bIT_actor_pit_entry
/* 804B6600  38 60 00 00 */	li r3, 0
/* 804B6604  39 61 00 30 */	addi r11, r1, 0x30
/* 804B6608  4B BE 49 19 */	bl func_8009AF20
/* 804B660C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B6610  7C 08 03 A6 */	mtlr r0
/* 804B6614  38 21 00 30 */	addi r1, r1, 0x30
/* 804B6618  4E 80 00 20 */	blr 
