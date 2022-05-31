lbl_80397460:
/* 80397460  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80397464  7C 08 02 A6 */	mflr r0
/* 80397468  90 01 00 54 */	stw r0, 0x54(r1)
/* 8039746C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80397470  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80397474  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80397478  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8039747C  39 61 00 30 */	addi r11, r1, 0x30
/* 80397480  4B D0 3A 51 */	bl func_8009AED0
/* 80397484  7C 7E 1B 78 */	mr r30, r3
/* 80397488  4B CC A4 9D */	bl JC_JFWSystem_getSystemConsole
/* 8039748C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80397490  41 82 02 A0 */	beq lbl_80397730
/* 80397494  A0 1E 00 0C */	lhz r0, 0xc(r30)
/* 80397498  64 00 FF FF */	oris r0, r0, 0xffff
/* 8039749C  60 00 DF FF */	ori r0, r0, 0xdfff
/* 803974A0  2C 00 FF FF */	cmpwi r0, -1
/* 803974A4  40 82 00 24 */	bne lbl_803974C8
/* 803974A8  A0 1E 00 00 */	lhz r0, 0(r30)
/* 803974AC  54 00 04 E3 */	rlwinm. r0, r0, 0, 0x13, 0x11
/* 803974B0  40 82 00 18 */	bne lbl_803974C8
/* 803974B4  4B CC 9F 85 */	bl JC_JUTConsole_isVisible
/* 803974B8  7C 60 00 34 */	cntlzw r0, r3
/* 803974BC  7F E3 FB 78 */	mr r3, r31
/* 803974C0  54 04 D9 7E */	srwi r4, r0, 5
/* 803974C4  4B CC 9F 65 */	bl JC_JUTConsole_setVisible
lbl_803974C8:
/* 803974C8  7F E3 FB 78 */	mr r3, r31
/* 803974CC  4B CC 9F 6D */	bl JC_JUTConsole_isVisible
/* 803974D0  2C 03 00 00 */	cmpwi r3, 0
/* 803974D4  41 82 02 5C */	beq lbl_80397730
/* 803974D8  88 7E 00 14 */	lbz r3, 0x14(r30)
/* 803974DC  3C 80 43 30 */	lis r4, 0x4330
/* 803974E0  88 1E 00 15 */	lbz r0, 0x15(r30)
/* 803974E4  3C A0 80 64 */	lis r5, lit_512@ha /* 0x80641CB4@ha */
/* 803974E8  7C 67 07 74 */	extsb r7, r3
/* 803974EC  3C 60 80 64 */	lis r3, data_80641CA4@ha /* 0x80641CA4@ha */
/* 803974F0  38 C5 1C B4 */	addi r6, r5, lit_512@l /* 0x80641CB4@l */
/* 803974F4  7C 00 07 74 */	extsb r0, r0
/* 803974F8  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 803974FC  90 81 00 08 */	stw r4, 8(r1)
/* 80397500  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80397504  C8 66 00 00 */	lfd f3, 0(r6)
/* 80397508  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8039750C  C0 23 1C A4 */	lfs f1, data_80641CA4@l(r3)  /* 0x80641CA4@l */
/* 80397510  C8 01 00 08 */	lfd f0, 8(r1)
/* 80397514  90 01 00 14 */	stw r0, 0x14(r1)
/* 80397518  EC 40 18 28 */	fsubs f2, f0, f3
/* 8039751C  A0 1E 00 0C */	lhz r0, 0xc(r30)
/* 80397520  90 81 00 10 */	stw r4, 0x10(r1)
/* 80397524  64 00 FF FF */	oris r0, r0, 0xffff
/* 80397528  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8039752C  EF E2 08 24 */	fdivs f31, f2, f1
/* 80397530  60 00 BF FF */	ori r0, r0, 0xbfff
/* 80397534  2C 00 FF FF */	cmpwi r0, -1
/* 80397538  EC 00 18 28 */	fsubs f0, f0, f3
/* 8039753C  EF C0 08 24 */	fdivs f30, f0, f1
/* 80397540  40 82 00 0C */	bne lbl_8039754C
/* 80397544  7F E3 FB 78 */	mr r3, r31
/* 80397548  4B CC 9F 15 */	bl JC_JUTConsole_clear
lbl_8039754C:
/* 8039754C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 80397550  64 00 FF FF */	oris r0, r0, 0xffff
/* 80397554  60 00 FF DF */	ori r0, r0, 0xffdf
/* 80397558  2C 00 FF FF */	cmpwi r0, -1
/* 8039755C  40 82 01 A0 */	bne lbl_803976FC
/* 80397560  3C 80 81 16 */	lis r4, console_scroll@ha /* 0x81166F10@ha */
/* 80397564  C4 24 6F 10 */	lfsu f1, console_scroll@l(r4)  /* 0x81166F10@l */
/* 80397568  3C 60 80 64 */	lis r3, lit_508@ha /* 0x80641CA8@ha */
/* 8039756C  EC 21 F0 28 */	fsubs f1, f1, f30
/* 80397570  C0 03 1C A8 */	lfs f0, lit_508@l(r3)  /* 0x80641CA8@l */
/* 80397574  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80397578  D0 24 00 00 */	stfs f1, 0(r4)
/* 8039757C  40 81 00 14 */	ble lbl_80397590
/* 80397580  FC 00 08 1E */	fctiwz f0, f1
/* 80397584  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80397588  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8039758C  48 00 00 30 */	b lbl_803975BC
lbl_80397590:
/* 80397590  3C 60 80 64 */	lis r3, lit_509@ha /* 0x80641CAC@ha */
/* 80397594  C0 03 1C AC */	lfs f0, lit_509@l(r3)  /* 0x80641CAC@l */
/* 80397598  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8039759C  40 80 00 1C */	bge lbl_803975B8
/* 803975A0  FC 00 08 50 */	fneg f0, f1
/* 803975A4  FC 00 00 1E */	fctiwz f0, f0
/* 803975A8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803975AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803975B0  7C 80 00 D0 */	neg r4, r0
/* 803975B4  48 00 00 08 */	b lbl_803975BC
lbl_803975B8:
/* 803975B8  38 80 00 00 */	li r4, 0
lbl_803975BC:
/* 803975BC  2C 04 00 00 */	cmpwi r4, 0
/* 803975C0  41 82 00 40 */	beq lbl_80397600
/* 803975C4  6C 83 80 00 */	xoris r3, r4, 0x8000
/* 803975C8  3C 00 43 30 */	lis r0, 0x4330
/* 803975CC  3C A0 80 64 */	lis r5, lit_512@ha /* 0x80641CB4@ha */
/* 803975D0  90 61 00 14 */	stw r3, 0x14(r1)
/* 803975D4  38 65 1C B4 */	addi r3, r5, lit_512@l /* 0x80641CB4@l */
/* 803975D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 803975DC  3C A0 81 16 */	lis r5, console_scroll@ha /* 0x81166F10@ha */
/* 803975E0  C8 23 00 00 */	lfd f1, 0(r3)
/* 803975E4  7F E3 FB 78 */	mr r3, r31
/* 803975E8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803975EC  C4 45 6F 10 */	lfsu f2, console_scroll@l(r5)  /* 0x81166F10@l */
/* 803975F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 803975F4  EC 02 00 28 */	fsubs f0, f2, f0
/* 803975F8  D0 05 00 00 */	stfs f0, 0(r5)
/* 803975FC  4B CC 9E 81 */	bl JC_JUTConsole_scroll
lbl_80397600:
/* 80397600  3C 80 81 16 */	lis r4, console_offset_x@ha /* 0x81166F14@ha */
/* 80397604  C4 24 6F 14 */	lfsu f1, console_offset_x@l(r4)  /* 0x81166F14@l */
/* 80397608  3C 60 80 64 */	lis r3, lit_508@ha /* 0x80641CA8@ha */
/* 8039760C  EC 21 F8 28 */	fsubs f1, f1, f31
/* 80397610  C0 03 1C A8 */	lfs f0, lit_508@l(r3)  /* 0x80641CA8@l */
/* 80397614  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80397618  D0 24 00 00 */	stfs f1, 0(r4)
/* 8039761C  40 81 00 14 */	ble lbl_80397630
/* 80397620  FC 00 08 1E */	fctiwz f0, f1
/* 80397624  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80397628  83 81 00 14 */	lwz r28, 0x14(r1)
/* 8039762C  48 00 00 30 */	b lbl_8039765C
lbl_80397630:
/* 80397630  3C 60 80 64 */	lis r3, lit_509@ha /* 0x80641CAC@ha */
/* 80397634  C0 03 1C AC */	lfs f0, lit_509@l(r3)  /* 0x80641CAC@l */
/* 80397638  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8039763C  40 80 00 1C */	bge lbl_80397658
/* 80397640  FC 00 08 50 */	fneg f0, f1
/* 80397644  FC 00 00 1E */	fctiwz f0, f0
/* 80397648  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8039764C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80397650  7F 80 00 D0 */	neg r28, r0
/* 80397654  48 00 00 08 */	b lbl_8039765C
lbl_80397658:
/* 80397658  3B 80 00 00 */	li r28, 0
lbl_8039765C:
/* 8039765C  2C 1C 00 00 */	cmpwi r28, 0
/* 80397660  41 82 00 54 */	beq lbl_803976B4
/* 80397664  6F 83 80 00 */	xoris r3, r28, 0x8000
/* 80397668  3C 00 43 30 */	lis r0, 0x4330
/* 8039766C  3C 80 80 64 */	lis r4, lit_512@ha /* 0x80641CB4@ha */
/* 80397670  90 61 00 14 */	stw r3, 0x14(r1)
/* 80397674  38 64 1C B4 */	addi r3, r4, lit_512@l /* 0x80641CB4@l */
/* 80397678  90 01 00 10 */	stw r0, 0x10(r1)
/* 8039767C  3C 80 81 16 */	lis r4, console_offset_x@ha /* 0x81166F14@ha */
/* 80397680  C8 23 00 00 */	lfd f1, 0(r3)
/* 80397684  7F E3 FB 78 */	mr r3, r31
/* 80397688  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8039768C  C4 44 6F 14 */	lfsu f2, console_offset_x@l(r4)  /* 0x81166F14@l */
/* 80397690  EC 00 08 28 */	fsubs f0, f0, f1
/* 80397694  EC 02 00 28 */	fsubs f0, f2, f0
/* 80397698  D0 04 00 00 */	stfs f0, 0(r4)
/* 8039769C  4B CC 9D B9 */	bl JC_JUTConsole_getPositionX
/* 803976A0  7C 60 1B 78 */	mr r0, r3
/* 803976A4  7F E3 FB 78 */	mr r3, r31
/* 803976A8  7C 9C 02 14 */	add r4, r28, r0
/* 803976AC  38 A0 00 2A */	li r5, 0x2a
/* 803976B0  4B CC 9D 99 */	bl JC_JUTConsole_setPosition
lbl_803976B4:
/* 803976B4  7F E3 FB 78 */	mr r3, r31
/* 803976B8  4B CC 9D 69 */	bl JC_JUTConsole_getOutput
/* 803976BC  7C 7C 1B 78 */	mr r28, r3
/* 803976C0  7F E3 FB 78 */	mr r3, r31
/* 803976C4  4B CC 9D 91 */	bl JC_JUTConsole_getPositionX
/* 803976C8  7C 7D 1B 78 */	mr r29, r3
/* 803976CC  7F E3 FB 78 */	mr r3, r31
/* 803976D0  4B CC 9E 39 */	bl JC_JUTConsole_getLineOffset
/* 803976D4  3C 80 80 65 */	lis r4, lit_510@ha /* 0x80651324@ha */
/* 803976D8  7C 67 1B 78 */	mr r7, r3
/* 803976DC  38 C4 13 24 */	addi r6, r4, lit_510@l /* 0x80651324@l */
/* 803976E0  7F A8 EB 78 */	mr r8, r29
/* 803976E4  7F 89 E3 78 */	mr r9, r28
/* 803976E8  38 60 00 1E */	li r3, 0x1e
/* 803976EC  38 80 01 B8 */	li r4, 0x1b8
/* 803976F0  38 A0 00 01 */	li r5, 1
/* 803976F4  4C C6 31 82 */	crclr 6
/* 803976F8  4B CC 96 ED */	bl JW_JUTReport
lbl_803976FC:
/* 803976FC  A0 1E 00 0C */	lhz r0, 0xc(r30)
/* 80397700  64 00 FF FF */	oris r0, r0, 0xffff
/* 80397704  60 00 FF EF */	ori r0, r0, 0xffef
/* 80397708  2C 00 FF FF */	cmpwi r0, -1
/* 8039770C  40 82 00 1C */	bne lbl_80397728
/* 80397710  7F E3 FB 78 */	mr r3, r31
/* 80397714  38 80 FF FF */	li r4, -1
/* 80397718  4B CC 9E 11 */	bl JC_JUTConsole_dumpToTerminal
/* 8039771C  7F E3 FB 78 */	mr r3, r31
/* 80397720  38 80 00 03 */	li r4, 3
/* 80397724  4B CC 9C F5 */	bl JC_JUTConsole_setOutput
lbl_80397728:
/* 80397728  38 60 00 01 */	li r3, 1
/* 8039772C  48 00 00 08 */	b lbl_80397734
lbl_80397730:
/* 80397730  38 60 00 00 */	li r3, 0
lbl_80397734:
/* 80397734  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80397738  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8039773C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80397740  39 61 00 30 */	addi r11, r1, 0x30
/* 80397744  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80397748  4B D0 37 D5 */	bl func_8009AF1C
/* 8039774C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80397750  7C 08 03 A6 */	mtlr r0
/* 80397754  38 21 00 50 */	addi r1, r1, 0x50
/* 80397758  4E 80 00 20 */	blr 
