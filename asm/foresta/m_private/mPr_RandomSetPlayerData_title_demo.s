lbl_803E26D8:
/* 803E26D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E26DC  7C 08 02 A6 */	mflr r0
/* 803E26E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E26E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E26E8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E26EC  3C 63 00 02 */	addis r3, r3, 2
/* 803E26F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803E26F4  83 E3 61 3C */	lwz r31, 0x613c(r3)
/* 803E26F8  4B C7 A5 FD */	bl fqrand
/* 803E26FC  3C 60 80 64 */	lis r3, lit_1516@ha /* 0x80643114@ha */
/* 803E2700  C0 03 31 14 */	lfs f0, lit_1516@l(r3)  /* 0x80643114@l */
/* 803E2704  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E2708  FC 00 00 1E */	fctiwz f0, f0
/* 803E270C  D8 01 00 08 */	stfd f0, 8(r1)
/* 803E2710  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803E2714  98 1F 00 14 */	stb r0, 0x14(r31)
/* 803E2718  88 1F 00 14 */	lbz r0, 0x14(r31)
/* 803E271C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803E2720  98 1F 00 14 */	stb r0, 0x14(r31)
/* 803E2724  88 7F 00 14 */	lbz r3, 0x14(r31)
/* 803E2728  4B FF DC F5 */	bl mPr_GetRandomCloth
/* 803E272C  7C 64 1B 78 */	mr r4, r3
/* 803E2730  7F E3 FB 78 */	mr r3, r31
/* 803E2734  4B FF 70 75 */	bl mPlib_change_player_cloth_info_lv2
/* 803E2738  4B FF DB 9D */	bl mPr_GetRandomFace
/* 803E273C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E2740  38 00 00 04 */	li r0, 4
/* 803E2744  98 7F 00 15 */	stb r3, 0x15(r31)
/* 803E2748  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803E274C  38 60 00 00 */	li r3, 0
/* 803E2750  38 C0 00 FF */	li r6, 0xff
/* 803E2754  7C 09 03 A6 */	mtctr r0
lbl_803E2758:
/* 803E2758  7C 85 1A 14 */	add r4, r5, r3
/* 803E275C  38 63 26 B0 */	addi r3, r3, 0x26b0
/* 803E2760  3C 84 00 01 */	addis r4, r4, 1
/* 803E2764  98 C4 9D 17 */	stb r6, -0x62e9(r4)
/* 803E2768  42 00 FF F0 */	bdnz lbl_803E2758
/* 803E276C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E2770  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803E2774  7C 08 03 A6 */	mtlr r0
/* 803E2778  38 21 00 20 */	addi r1, r1, 0x20
/* 803E277C  4E 80 00 20 */	blr 
