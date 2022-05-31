lbl_803E0500:
/* 803E0500  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E0504  7C 08 02 A6 */	mflr r0
/* 803E0508  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E050C  39 61 00 30 */	addi r11, r1, 0x30
/* 803E0510  4B CB A9 BD */	bl func_8009AECC
/* 803E0514  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E0518  7C 7F 1B 78 */	mr r31, r3
/* 803E051C  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803E0520  3B 60 00 00 */	li r27, 0
/* 803E0524  3F A3 00 01 */	addis r29, r3, 1
/* 803E0528  3B 83 00 20 */	addi r28, r3, 0x20
/* 803E052C  3B BD 91 20 */	addi r29, r29, -28384
/* 803E0530  4B FF FD DD */	bl mPr_GetRandomOriginalFace
/* 803E0534  A0 1D 00 0A */	lhz r0, 0xa(r29)
/* 803E0538  7C 7E 1B 78 */	mr r30, r3
/* 803E053C  7F A4 EB 78 */	mr r4, r29
/* 803E0540  38 7F 00 08 */	addi r3, r31, 8
/* 803E0544  B0 1F 00 12 */	sth r0, 0x12(r31)
/* 803E0548  4B FD 33 A9 */	bl mLd_CopyLandName
/* 803E054C  4B C7 C7 A9 */	bl fqrand
/* 803E0550  3C 60 80 64 */	lis r3, lit_615@ha /* 0x806430FC@ha */
/* 803E0554  38 E0 00 00 */	li r7, 0
/* 803E0558  C0 03 30 FC */	lfs f0, lit_615@l(r3)  /* 0x806430FC@l */
/* 803E055C  38 00 00 04 */	li r0, 4
/* 803E0560  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E0564  FC 00 00 1E */	fctiwz f0, f0
/* 803E0568  D8 01 00 08 */	stfd f0, 8(r1)
/* 803E056C  80 C1 00 0C */	lwz r6, 0xc(r1)
lbl_803E0570:
/* 803E0570  54 C5 04 3E */	clrlwi r5, r6, 0x10
/* 803E0574  38 60 00 00 */	li r3, 0
/* 803E0578  7C 09 03 A6 */	mtctr r0
lbl_803E057C:
/* 803E057C  38 83 00 10 */	addi r4, r3, 0x10
/* 803E0580  7C 9C 22 2E */	lhzx r4, r28, r4
/* 803E0584  7C 05 20 40 */	cmplw r5, r4
/* 803E0588  40 82 00 10 */	bne lbl_803E0598
/* 803E058C  3B 60 00 01 */	li r27, 1
/* 803E0590  38 C6 00 01 */	addi r6, r6, 1
/* 803E0594  48 00 00 0C */	b lbl_803E05A0
lbl_803E0598:
/* 803E0598  38 63 24 40 */	addi r3, r3, 0x2440
/* 803E059C  42 00 FF E0 */	bdnz lbl_803E057C
lbl_803E05A0:
/* 803E05A0  2C 1B 00 00 */	cmpwi r27, 0
/* 803E05A4  41 82 00 14 */	beq lbl_803E05B8
/* 803E05A8  38 E7 00 01 */	addi r7, r7, 1
/* 803E05AC  3B 60 00 00 */	li r27, 0
/* 803E05B0  2C 07 00 03 */	cmpwi r7, 3
/* 803E05B4  41 80 FF BC */	blt lbl_803E0570
lbl_803E05B8:
/* 803E05B8  60 C3 F0 00 */	ori r3, r6, 0xf000
/* 803E05BC  38 00 00 01 */	li r0, 1
/* 803E05C0  B0 7F 00 10 */	sth r3, 0x10(r31)
/* 803E05C4  38 60 00 00 */	li r3, 0
/* 803E05C8  98 1F 10 86 */	stb r0, 0x1086(r31)
/* 803E05CC  4B FF FE 51 */	bl mPr_GetRandomCloth
/* 803E05D0  7C 64 1B 78 */	mr r4, r3
/* 803E05D4  7F E3 FB 78 */	mr r3, r31
/* 803E05D8  4B FF 91 D1 */	bl mPlib_change_player_cloth_info_lv2
/* 803E05DC  38 80 00 00 */	li r4, 0
/* 803E05E0  38 60 00 64 */	li r3, 0x64
/* 803E05E4  98 9F 00 14 */	stb r4, 0x14(r31)
/* 803E05E8  38 00 00 08 */	li r0, 8
/* 803E05EC  90 7F 00 90 */	stw r3, 0x90(r31)
/* 803E05F0  9B DF 00 15 */	stb r30, 0x15(r31)
/* 803E05F4  7C 09 03 A6 */	mtctr r0
lbl_803E05F8:
/* 803E05F8  38 04 23 40 */	addi r0, r4, 0x2340
/* 803E05FC  7C 9F 01 AE */	stbx r4, r31, r0
/* 803E0600  38 84 00 01 */	addi r4, r4, 1
/* 803E0604  42 00 FF F4 */	bdnz lbl_803E05F8
/* 803E0608  39 61 00 30 */	addi r11, r1, 0x30
/* 803E060C  4B CB A9 0D */	bl func_8009AF18
/* 803E0610  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E0614  7C 08 03 A6 */	mtlr r0
/* 803E0618  38 21 00 30 */	addi r1, r1, 0x30
/* 803E061C  4E 80 00 20 */	blr 
