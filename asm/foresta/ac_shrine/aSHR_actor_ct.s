lbl_805BA438:
/* 805BA438  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BA43C  7C 08 02 A6 */	mflr r0
/* 805BA440  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BA444  39 61 00 20 */	addi r11, r1, 0x20
/* 805BA448  4B AE 0A 8D */	bl func_8009AED4
/* 805BA44C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805BA450  7C 7F 1B 78 */	mr r31, r3
/* 805BA454  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 805BA458  7C 9D 23 78 */	mr r29, r4
/* 805BA45C  3C 63 00 02 */	addis r3, r3, 2
/* 805BA460  80 03 61 10 */	lwz r0, 0x6110(r3)
/* 805BA464  90 1F 02 D8 */	stw r0, 0x2d8(r31)
/* 805BA468  80 1F 02 D8 */	lwz r0, 0x2d8(r31)
/* 805BA46C  20 00 00 03 */	subfic r0, r0, 3
/* 805BA470  7C 00 00 34 */	cntlzw r0, r0
/* 805BA474  54 1E D9 7E */	srwi r30, r0, 5
/* 805BA478  48 00 01 29 */	bl aSHR_init_clip_area
/* 805BA47C  3C 60 81 20 */	lis r3, data_811FA1F8@ha /* 0x811FA1F8@ha */
/* 805BA480  38 63 A1 F8 */	addi r3, r3, data_811FA1F8@l /* 0x811FA1F8@l */
/* 805BA484  48 00 03 F1 */	bl aSHR_Present_ct
/* 805BA488  7F E3 FB 78 */	mr r3, r31
/* 805BA48C  38 80 00 01 */	li r4, 1
/* 805BA490  48 00 01 7D */	bl func_805BA60C
/* 805BA494  38 60 00 01 */	li r3, 1
/* 805BA498  38 80 00 01 */	li r4, 1
/* 805BA49C  4B DE 36 65 */	bl mEv_check_status
/* 805BA4A0  90 7F 02 C0 */	stw r3, 0x2c0(r31)
/* 805BA4A4  7F C3 F3 78 */	mr r3, r30
/* 805BA4A8  4B FF FF 49 */	bl func_805BA3F0
/* 805BA4AC  90 7F 02 BC */	stw r3, 0x2bc(r31)
/* 805BA4B0  3C 60 80 65 */	lis r3, data_8064AAE4@ha /* 0x8064AAE4@ha */
/* 805BA4B4  38 83 AA E4 */	addi r4, r3, data_8064AAE4@l /* 0x8064AAE4@l */
/* 805BA4B8  38 A0 00 00 */	li r5, 0
/* 805BA4BC  C0 44 00 00 */	lfs f2, 0(r4)
/* 805BA4C0  3C 60 80 65 */	lis r3, lit_479@ha /* 0x8064AAE8@ha */
/* 805BA4C4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805BA4C8  38 83 AA E8 */	addi r4, r3, lit_479@l /* 0x8064AAE8@l */
/* 805BA4CC  C0 24 00 00 */	lfs f1, 0(r4)
/* 805BA4D0  3C 60 80 65 */	lis r3, lit_480@ha /* 0x8064AAEC@ha */
/* 805BA4D4  EC 42 00 2A */	fadds f2, f2, f0
/* 805BA4D8  C0 03 AA EC */	lfs f0, lit_480@l(r3)  /* 0x8064AAEC@l */
/* 805BA4DC  7F E3 FB 78 */	mr r3, r31
/* 805BA4E0  7F A4 EB 78 */	mr r4, r29
/* 805BA4E4  D0 5F 00 28 */	stfs f2, 0x28(r31)
/* 805BA4E8  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 805BA4EC  EC 22 08 28 */	fsubs f1, f2, f1
/* 805BA4F0  D0 3F 00 30 */	stfs f1, 0x30(r31)
/* 805BA4F4  D0 1F 01 44 */	stfs f0, 0x144(r31)
/* 805BA4F8  48 00 0B D9 */	bl aSHR_setup_action
/* 805BA4FC  3C 80 80 65 */	lis r4, lit_481@ha /* 0x8064AAF0@ha */
/* 805BA500  3C 60 80 65 */	lis r3, lit_482@ha /* 0x8064AAF4@ha */
/* 805BA504  C0 24 AA F0 */	lfs f1, lit_481@l(r4)  /* 0x8064AAF0@l */
/* 805BA508  C0 03 AA F4 */	lfs f0, lit_482@l(r3)  /* 0x8064AAF4@l */
/* 805BA50C  D0 3F 01 40 */	stfs f1, 0x140(r31)
/* 805BA510  D0 1F 01 38 */	stfs f0, 0x138(r31)
/* 805BA514  48 00 03 2D */	bl aSHR_ctrl_light
/* 805BA518  2C 03 00 00 */	cmpwi r3, 0
/* 805BA51C  41 82 00 10 */	beq lbl_805BA52C
/* 805BA520  3C 60 80 65 */	lis r3, lit_483@ha /* 0x8064AAF8@ha */
/* 805BA524  C0 03 AA F8 */	lfs f0, lit_483@l(r3)  /* 0x8064AAF8@l */
/* 805BA528  48 00 00 0C */	b lbl_805BA534
lbl_805BA52C:
/* 805BA52C  3C 60 80 65 */	lis r3, lit_484@ha /* 0x8064AAFC@ha */
/* 805BA530  C0 03 AA FC */	lfs f0, lit_484@l(r3)  /* 0x8064AAFC@l */
lbl_805BA534:
/* 805BA534  D0 1F 02 C8 */	stfs f0, 0x2c8(r31)
/* 805BA538  39 61 00 20 */	addi r11, r1, 0x20
/* 805BA53C  4B AE 09 E5 */	bl func_8009AF20
/* 805BA540  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BA544  7C 08 03 A6 */	mtlr r0
/* 805BA548  38 21 00 20 */	addi r1, r1, 0x20
/* 805BA54C  4E 80 00 20 */	blr 
