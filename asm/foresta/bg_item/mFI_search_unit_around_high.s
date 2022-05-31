lbl_804B755C:
/* 804B755C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804B7560  7C 08 02 A6 */	mflr r0
/* 804B7564  90 01 00 64 */	stw r0, 0x64(r1)
/* 804B7568  39 61 00 60 */	addi r11, r1, 0x60
/* 804B756C  4B BE 39 51 */	bl func_8009AEBC
/* 804B7570  3C C0 80 69 */	lis r6, BI_chk_pos@ha /* 0x806956CC@ha */
/* 804B7574  7C 7A 1B 78 */	mr r26, r3
/* 804B7578  7C 9B 23 78 */	mr r27, r4
/* 804B757C  7C BC 2B 78 */	mr r28, r5
/* 804B7580  3B E6 56 CC */	addi r31, r6, BI_chk_pos@l /* 0x806956CC@l */
/* 804B7584  3B C0 00 09 */	li r30, 9
/* 804B7588  3B 20 00 48 */	li r25, 0x48
/* 804B758C  3B A0 00 00 */	li r29, 0
/* 804B7590  48 00 01 00 */	b lbl_804B7690
lbl_804B7594:
/* 804B7594  3B 39 FF F8 */	addi r25, r25, -8
/* 804B7598  C0 5A 00 00 */	lfs f2, 0(r26)
/* 804B759C  7C 7F CA 14 */	add r3, r31, r25
/* 804B75A0  80 01 00 30 */	lwz r0, 0x30(r1)
/* 804B75A4  C0 23 00 00 */	lfs f1, 0(r3)
/* 804B75A8  3B DE FF FF */	addi r30, r30, -1
/* 804B75AC  C0 03 00 04 */	lfs f0, 4(r3)
/* 804B75B0  38 61 00 20 */	addi r3, r1, 0x20
/* 804B75B4  EC 22 08 2A */	fadds f1, f2, f1
/* 804B75B8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804B75BC  C0 3A 00 08 */	lfs f1, 8(r26)
/* 804B75C0  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 804B75C4  EC 01 00 2A */	fadds f0, f1, f0
/* 804B75C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B75CC  90 81 00 20 */	stw r4, 0x20(r1)
/* 804B75D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804B75D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B75D8  90 01 00 28 */	stw r0, 0x28(r1)
/* 804B75DC  4B EE FE 55 */	bl mFI_GetUnitFG
/* 804B75E0  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804B75E4  7C 77 1B 78 */	mr r23, r3
/* 804B75E8  80 81 00 30 */	lwz r4, 0x30(r1)
/* 804B75EC  38 61 00 14 */	addi r3, r1, 0x14
/* 804B75F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B75F4  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804B75F8  C0 38 00 00 */	lfs f1, 0(r24)
/* 804B75FC  90 81 00 18 */	stw r4, 0x18(r1)
/* 804B7600  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B7604  4B ED 83 95 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804B7608  28 17 00 00 */	cmplwi r23, 0
/* 804B760C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 804B7610  41 82 00 88 */	beq lbl_804B7698
/* 804B7614  A0 77 00 00 */	lhz r3, 0(r23)
/* 804B7618  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 804B761C  7C 03 00 40 */	cmplw r3, r0
/* 804B7620  40 82 00 78 */	bne lbl_804B7698
/* 804B7624  3C 60 80 64 */	lis r3, lit_633@ha /* 0x80646090@ha */
/* 804B7628  FC 60 08 18 */	frsp f3, f1
/* 804B762C  C0 5C 00 04 */	lfs f2, 4(r28)
/* 804B7630  C0 23 60 90 */	lfs f1, lit_633@l(r3)  /* 0x80646090@l */
/* 804B7634  EC 01 10 2A */	fadds f0, f1, f2
/* 804B7638  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804B763C  4C 40 13 82 */	cror 2, 0, 2
/* 804B7640  40 82 00 58 */	bne lbl_804B7698
/* 804B7644  EC 02 08 28 */	fsubs f0, f2, f1
/* 804B7648  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804B764C  4C 41 13 82 */	cror 2, 1, 2
/* 804B7650  40 82 00 48 */	bne lbl_804B7698
/* 804B7654  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 804B7658  38 61 00 08 */	addi r3, r1, 8
/* 804B765C  80 81 00 30 */	lwz r4, 0x30(r1)
/* 804B7660  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B7664  90 A1 00 08 */	stw r5, 8(r1)
/* 804B7668  90 81 00 0C */	stw r4, 0xc(r1)
/* 804B766C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B7670  4B ED 88 69 */	bl mCoBG_CheckPlace
/* 804B7674  2C 03 00 00 */	cmpwi r3, 0
/* 804B7678  41 82 00 20 */	beq lbl_804B7698
/* 804B767C  7F 43 D3 78 */	mr r3, r26
/* 804B7680  38 81 00 2C */	addi r4, r1, 0x2c
/* 804B7684  4B F0 38 39 */	bl xyz_t_move
/* 804B7688  3B A0 00 01 */	li r29, 1
/* 804B768C  48 00 00 14 */	b lbl_804B76A0
lbl_804B7690:
/* 804B7690  3C 60 80 64 */	lis r3, data_8064608C@ha /* 0x8064608C@ha */
/* 804B7694  3B 03 60 8C */	addi r24, r3, data_8064608C@l /* 0x8064608C@l */
lbl_804B7698:
/* 804B7698  2C 1E 00 00 */	cmpwi r30, 0
/* 804B769C  40 82 FE F8 */	bne lbl_804B7594
lbl_804B76A0:
/* 804B76A0  7F A3 EB 78 */	mr r3, r29
/* 804B76A4  39 61 00 60 */	addi r11, r1, 0x60
/* 804B76A8  4B BE 38 61 */	bl func_8009AF08
/* 804B76AC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804B76B0  7C 08 03 A6 */	mtlr r0
/* 804B76B4  38 21 00 60 */	addi r1, r1, 0x60
/* 804B76B8  4E 80 00 20 */	blr 
