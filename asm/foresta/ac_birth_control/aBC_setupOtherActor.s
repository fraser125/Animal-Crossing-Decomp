lbl_80414560:
/* 80414560  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80414564  7C 08 02 A6 */	mflr r0
/* 80414568  90 01 00 64 */	stw r0, 0x64(r1)
/* 8041456C  39 61 00 60 */	addi r11, r1, 0x60
/* 80414570  4B C8 69 5D */	bl func_8009AECC
/* 80414574  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80414578  7C 7B 1B 78 */	mr r27, r3
/* 8041457C  81 01 00 3C */	lwz r8, 0x3c(r1)
/* 80414580  3C E0 80 64 */	lis r7, data_80643AA4@ha /* 0x80643AA4@ha */
/* 80414584  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80414588  7C 9C 23 78 */	mr r28, r4
/* 8041458C  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80414590  7C BD 2B 78 */	mr r29, r5
/* 80414594  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80414598  7C DE 33 78 */	mr r30, r6
/* 8041459C  C0 27 3A A4 */	lfs f1, data_80643AA4@l(r7)  /* 0x80643AA4@l */
/* 804145A0  3B E0 00 00 */	li r31, 0
/* 804145A4  90 61 00 2C */	stw r3, 0x2c(r1)
/* 804145A8  38 61 00 2C */	addi r3, r1, 0x2c
/* 804145AC  91 01 00 30 */	stw r8, 0x30(r1)
/* 804145B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804145B4  4B F7 B3 E5 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804145B8  39 20 FF FF */	li r9, -1
/* 804145BC  FC 00 08 90 */	fmr f0, f1
/* 804145C0  91 21 00 08 */	stw r9, 8(r1)
/* 804145C4  7F 80 07 34 */	extsh r0, r28
/* 804145C8  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 804145CC  7F 64 DB 78 */	mr r4, r27
/* 804145D0  93 81 00 0C */	stw r28, 0xc(r1)
/* 804145D4  FC 40 00 18 */	frsp f2, f0
/* 804145D8  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 804145DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804145E0  7F A5 EB 78 */	mr r5, r29
/* 804145E4  38 7B 1D A8 */	addi r3, r27, 0x1da8
/* 804145E8  38 C0 00 00 */	li r6, 0
/* 804145EC  91 21 00 14 */	stw r9, 0x14(r1)
/* 804145F0  38 E0 00 00 */	li r7, 0
/* 804145F4  39 00 00 00 */	li r8, 0
/* 804145F8  91 21 00 18 */	stw r9, 0x18(r1)
/* 804145FC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80414600  89 3B 00 E4 */	lbz r9, 0xe4(r27)
/* 80414604  89 5B 00 E5 */	lbz r10, 0xe5(r27)
/* 80414608  4B F6 11 41 */	bl Actor_info_make_actor
/* 8041460C  28 03 00 00 */	cmplwi r3, 0
/* 80414610  41 82 00 38 */	beq lbl_80414648
/* 80414614  38 00 00 01 */	li r0, 1
/* 80414618  80 E1 00 38 */	lwz r7, 0x38(r1)
/* 8041461C  98 03 00 03 */	stb r0, 3(r3)
/* 80414620  7F C3 F3 78 */	mr r3, r30
/* 80414624  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 80414628  38 81 00 20 */	addi r4, r1, 0x20
/* 8041462C  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80414630  38 A0 00 00 */	li r5, 0
/* 80414634  90 E1 00 20 */	stw r7, 0x20(r1)
/* 80414638  90 C1 00 24 */	stw r6, 0x24(r1)
/* 8041463C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80414640  4B F9 31 F1 */	bl mFI_SetFG_common
/* 80414644  48 00 00 08 */	b lbl_8041464C
lbl_80414648:
/* 80414648  3B E0 00 01 */	li r31, 1
lbl_8041464C:
/* 8041464C  7F E3 FB 78 */	mr r3, r31
/* 80414650  39 61 00 60 */	addi r11, r1, 0x60
/* 80414654  4B C8 68 C5 */	bl func_8009AF18
/* 80414658  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8041465C  7C 08 03 A6 */	mtlr r0
/* 80414660  38 21 00 60 */	addi r1, r1, 0x60
/* 80414664  4E 80 00 20 */	blr 
