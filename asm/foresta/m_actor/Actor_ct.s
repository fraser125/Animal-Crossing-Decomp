lbl_80374458:
/* 80374458  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8037445C  7C 08 02 A6 */	mflr r0
/* 80374460  90 01 00 94 */	stw r0, 0x94(r1)
/* 80374464  39 61 00 90 */	addi r11, r1, 0x90
/* 80374468  4B D2 6A 6D */	bl func_8009AED4
/* 8037446C  A8 03 00 26 */	lha r0, 0x26(r3)
/* 80374470  7C 7D 1B 78 */	mr r29, r3
/* 80374474  7C 9F 23 78 */	mr r31, r4
/* 80374478  1C 60 00 5C */	mulli r3, r0, 0x5c
/* 8037447C  3B DF 01 10 */	addi r30, r31, 0x110
/* 80374480  38 83 00 58 */	addi r4, r3, 0x58
/* 80374484  7C 7E 22 AE */	lhax r3, r30, r4
/* 80374488  38 03 00 01 */	addi r0, r3, 1
/* 8037448C  7C 1E 23 2E */	sthx r0, r30, r4
/* 80374490  88 1D 00 02 */	lbz r0, 2(r29)
/* 80374494  28 00 00 04 */	cmplwi r0, 4
/* 80374498  40 82 00 4C */	bne lbl_803744E4
/* 8037449C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803744A0  38 61 00 08 */	addi r3, r1, 8
/* 803744A4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803744A8  A0 9D 00 06 */	lhz r4, 6(r29)
/* 803744AC  3C A5 00 02 */	addis r5, r5, 2
/* 803744B0  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 803744B4  81 85 00 14 */	lwz r12, 0x14(r5)
/* 803744B8  7D 89 03 A6 */	mtctr r12
/* 803744BC  4E 80 04 21 */	bctrl 
/* 803744C0  A8 81 00 0A */	lha r4, 0xa(r1)
/* 803744C4  7F C3 F3 78 */	mr r3, r30
/* 803744C8  48 07 C2 65 */	bl mSc_bank_regist_check
/* 803744CC  1C 83 00 5C */	mulli r4, r3, 0x5c
/* 803744D0  90 7D 07 18 */	stw r3, 0x718(r29)
/* 803744D4  38 84 00 58 */	addi r4, r4, 0x58
/* 803744D8  7C 7E 22 AE */	lhax r3, r30, r4
/* 803744DC  38 03 00 01 */	addi r0, r3, 1
/* 803744E0  7C 1E 23 2E */	sthx r0, r30, r4
lbl_803744E4:
/* 803744E4  38 00 00 02 */	li r0, 2
/* 803744E8  38 BD 00 24 */	addi r5, r29, 0x24
/* 803744EC  38 9D 00 08 */	addi r4, r29, 8
/* 803744F0  7C 09 03 A6 */	mtctr r0
lbl_803744F4:
/* 803744F4  80 64 00 04 */	lwz r3, 4(r4)
/* 803744F8  84 04 00 08 */	lwzu r0, 8(r4)
/* 803744FC  90 65 00 04 */	stw r3, 4(r5)
/* 80374500  94 05 00 08 */	stwu r0, 8(r5)
/* 80374504  42 00 FF F0 */	bdnz lbl_803744F4
/* 80374508  80 04 00 04 */	lwz r0, 4(r4)
/* 8037450C  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80641204@ha */
/* 80374510  38 83 12 04 */	addi r4, r3, lit_510@l /* 0x80641204@l */
/* 80374514  7F A3 EB 78 */	mr r3, r29
/* 80374518  90 05 00 04 */	stw r0, 4(r5)
/* 8037451C  C0 24 00 00 */	lfs f1, 0(r4)
/* 80374520  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 80374524  90 1D 00 DC */	stw r0, 0xdc(r29)
/* 80374528  A0 1D 00 38 */	lhz r0, 0x38(r29)
/* 8037452C  B0 1D 00 E0 */	sth r0, 0xe0(r29)
/* 80374530  4B FF FC A1 */	bl func_803741D0
/* 80374534  38 7D 00 3C */	addi r3, r29, 0x3c
/* 80374538  38 9D 00 28 */	addi r4, r29, 0x28
/* 8037453C  48 04 69 81 */	bl xyz_t_move
/* 80374540  3C 60 80 64 */	lis r3, lit_511@ha /* 0x80641208@ha */
/* 80374544  3C 80 80 64 */	lis r4, lit_512@ha /* 0x8064120C@ha */
/* 80374548  38 A3 12 08 */	addi r5, r3, lit_511@l /* 0x80641208@l */
/* 8037454C  3C 60 80 64 */	lis r3, lit_513@ha /* 0x80641210@ha */
/* 80374550  C0 05 00 00 */	lfs f0, 0(r5)
/* 80374554  39 44 12 0C */	addi r10, r4, lit_512@l /* 0x8064120C@l */
/* 80374558  39 23 12 10 */	addi r9, r3, lit_513@l /* 0x80641210@l */
/* 8037455C  3C 60 80 64 */	lis r3, lit_514@ha /* 0x80641214@ha */
/* 80374560  D0 1D 00 5C */	stfs f0, 0x5c(r29)
/* 80374564  39 03 12 14 */	addi r8, r3, lit_514@l /* 0x80641214@l */
/* 80374568  3C 80 80 64 */	lis r4, lit_515@ha /* 0x80641218@ha */
/* 8037456C  3C 60 80 64 */	lis r3, lit_516@ha /* 0x8064121C@ha */
/* 80374570  D0 1D 00 60 */	stfs f0, 0x60(r29)
/* 80374574  38 E4 12 18 */	addi r7, r4, lit_515@l /* 0x80641218@l */
/* 80374578  38 C3 12 1C */	addi r6, r3, lit_516@l /* 0x8064121C@l */
/* 8037457C  3C 60 80 64 */	lis r3, lit_517@ha /* 0x80641220@ha */
/* 80374580  D0 1D 00 64 */	stfs f0, 0x64(r29)
/* 80374584  38 A3 12 20 */	addi r5, r3, lit_517@l /* 0x80641220@l */
/* 80374588  C0 2A 00 00 */	lfs f1, 0(r10)
/* 8037458C  3C 60 80 64 */	lis r3, data_806411FC@ha /* 0x806411FC@ha */
/* 80374590  C0 09 00 00 */	lfs f0, 0(r9)
/* 80374594  38 83 11 FC */	addi r4, r3, data_806411FC@l /* 0x806411FC@l */
/* 80374598  D0 3D 00 7C */	stfs f1, 0x7c(r29)
/* 8037459C  38 7D 00 C4 */	addi r3, r29, 0xc4
/* 803745A0  C0 48 00 00 */	lfs f2, 0(r8)
/* 803745A4  D0 1D 00 B8 */	stfs f0, 0xb8(r29)
/* 803745A8  C0 27 00 00 */	lfs f1, 0(r7)
/* 803745AC  D0 5D 01 34 */	stfs f2, 0x134(r29)
/* 803745B0  C0 06 00 00 */	lfs f0, 0(r6)
/* 803745B4  D0 3D 01 38 */	stfs f1, 0x138(r29)
/* 803745B8  C0 25 00 00 */	lfs f1, 0(r5)
/* 803745BC  D0 1D 01 3C */	stfs f0, 0x13c(r29)
/* 803745C0  C0 04 00 00 */	lfs f0, 0(r4)
/* 803745C4  D0 5D 01 40 */	stfs f2, 0x140(r29)
/* 803745C8  D0 3D 01 44 */	stfs f1, 0x144(r29)
/* 803745CC  D0 1D 00 F4 */	stfs f0, 0xf4(r29)
/* 803745D0  D0 1D 00 F8 */	stfs f0, 0xf8(r29)
/* 803745D4  48 02 13 99 */	bl CollisionCheck_Status_ct
/* 803745D8  3C 80 80 64 */	lis r4, lit_510@ha /* 0x80641204@ha */
/* 803745DC  7F A3 EB 78 */	mr r3, r29
/* 803745E0  38 A4 12 04 */	addi r5, r4, lit_510@l /* 0x80641204@l */
/* 803745E4  38 80 00 00 */	li r4, 0
/* 803745E8  C0 25 00 00 */	lfs f1, 0(r5)
/* 803745EC  FC 40 08 90 */	fmr f2, f1
/* 803745F0  FC 60 08 90 */	fmr f3, f1
/* 803745F4  4B FF FD FD */	bl Shape_Info_init
/* 803745F8  7F A3 EB 78 */	mr r3, r29
/* 803745FC  7F E4 FB 78 */	mr r4, r31
/* 80374600  4B FF FD C5 */	bl Actor_data_bank_dma_end_check
/* 80374604  2C 03 00 01 */	cmpwi r3, 1
/* 80374608  40 82 00 20 */	bne lbl_80374628
/* 8037460C  81 9D 01 5C */	lwz r12, 0x15c(r29)
/* 80374610  7F A3 EB 78 */	mr r3, r29
/* 80374614  7F E4 FB 78 */	mr r4, r31
/* 80374618  7D 89 03 A6 */	mtctr r12
/* 8037461C  4E 80 04 21 */	bctrl 
/* 80374620  38 00 00 00 */	li r0, 0
/* 80374624  90 1D 01 5C */	stw r0, 0x15c(r29)
lbl_80374628:
/* 80374628  39 61 00 90 */	addi r11, r1, 0x90
/* 8037462C  4B D2 68 F5 */	bl func_8009AF20
/* 80374630  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80374634  7C 08 03 A6 */	mtlr r0
/* 80374638  38 21 00 90 */	addi r1, r1, 0x90
/* 8037463C  4E 80 00 20 */	blr 
